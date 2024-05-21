import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../language/bloc/language_bloc.dart';
import '../../ticker.dart';
import '../timer.dart';


class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(ticker: const Ticker()),
      child: const TimerView(),
    );
  }
}

class TimerView extends StatelessWidget {
  const TimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'de') {
                context.read<LanguageBloc>().add(LanguageChanged(Locale('de')));
              } else if (value == 'en') {
                context.read<LanguageBloc>().add(LanguageChanged(Locale('en')));
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'de',
                child: Text('Deutsch'),
              ),
              PopupMenuItem(
                value: 'en',
                child: Text('English'),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100),
                child: Center(child: TimerText()),
              ),
              Actions(),
            ],
          ),
        ],
      ),
    );
  }
}

class TimerText extends StatefulWidget {
  const TimerText({Key? key}) : super(key: key);

  @override
  _TimerTextState createState() => _TimerTextState();
}

class _TimerTextState extends State<TimerText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        if (state is TimerRunInProgress) {
          _controller.repeat(reverse: true);
        } else {
          _controller.stop();
          _controller.value = 1.0;
        }

        final duration = state is TimerRunInProgress
            ? state.duration
            : context.select((TimerBloc bloc) => bloc.state.duration);
        final String hoursStr = (duration / 3600).floor().toString().padLeft(2, '0');
        final String minutesStr = ((duration / 60) % 60).floor().toString().padLeft(2, '0');
        final String secondsStr = (duration % 60).toString().padLeft(2, '0');

        return ScaleTransition(
          scale: _animation,
          child: Text(
            '$hoursStr:$minutesStr:$secondsStr',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
        );
      },
    );
  }
}


class Actions extends StatefulWidget {
  const Actions({super.key});

  @override
  State<Actions> createState() => _ActionsState();
}

class _ActionsState extends State<Actions> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        if (state is TimerInitial || state is TimerRunPause) {
          _controller.repeat(reverse: true);
        } else {
          _controller.stop();
          _controller.value = 1.0;
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _animation,
              child: FloatingActionButton(
                child: Icon(
                  switch (state) {
                    TimerInitial() => Icons.play_arrow,
                    TimerRunInProgress() => Icons.pause,
                    TimerRunPause() => Icons.play_arrow,
                    TimerRunComplete() => Icons.replay,
                  },
                ),
                onPressed: () {
                  if (state is TimerInitial) {
                    context.read<TimerBloc>().add(TimerStarted(duration: 0));
                  } else if (state is TimerRunInProgress) {
                    context.read<TimerBloc>().add(const TimerPaused());
                  } else if (state is TimerRunPause) {
                    context.read<TimerBloc>().add(const TimerResumed());
                  } else if (state is TimerRunComplete) {
                    context.read<TimerBloc>().add(const TimerReset());
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            if (state is! TimerInitial && state is! TimerRunComplete)
              FloatingActionButton(
                child: const Icon(Icons.replay),
                onPressed: () {
                  context.read<TimerBloc>().add(const TimerReset());
                },
              ),
          ],
        );
      },
    );
  }
}


class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade500,
            ],
          ),
        ),
      ),
    );
  }
}