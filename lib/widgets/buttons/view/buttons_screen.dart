import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../bloc/buttons_bloc.dart';
import '../bloc/buttons_event.dart';
import '../bloc/buttons_state.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonsBloc(),
      child: BlocConsumer<ButtonsBloc, ButtonsState>(
        listener: (context, state) {
          if (state is ButtonsFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          } else if (state is RateAppSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(S.of(context).thanksForRatingOurApp)),
            );
          } else if (state is ShareAppSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(S.of(context).thanksForSharingOurApp)),
            );
          } else if (state is ContactUsSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(S.of(context).thanksForContactingUs)),
            );
          }
        },
        builder: (context, state) {
          return ListView(
            children: [
              ListTile(
                title: Text(S.of(context).rateApp),
                trailing: Icon(Icons.star),
                onTap: () {
                  BlocProvider.of<ButtonsBloc>(context).add(RateAppRequested());
                },
              ),
              ListTile(
                title: Text(S.of(context).shareApp),
                trailing: Icon(Icons.share),
                onTap: () {
                  BlocProvider.of<ButtonsBloc>(context)
                      .add(ShareAppRequested());
                },
              ),
              ListTile(
                title: Text(S.of(context).contactUs),
                trailing: Icon(Icons.contact_mail),
                onTap: () {
                  BlocProvider.of<ButtonsBloc>(context)
                      .add(ContactUsRequested());
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
