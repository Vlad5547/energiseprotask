import 'package:bloc/bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:in_app_review/in_app_review.dart';
import 'buttons_event.dart';
import 'buttons_state.dart';

class ButtonsBloc extends Bloc<ButtonsEvent, ButtonsState> {
  ButtonsBloc() : super(ButtonsInitial()) {
    on<RateAppRequested>(_onRateAppRequested);
    on<ShareAppRequested>(_onShareAppRequested);
    on<ContactUsRequested>(_onContactUsRequested);
  }

  Future<void> _onRateAppRequested(
      RateAppRequested event, Emitter<ButtonsState> emit) async {
    final InAppReview inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
      emit(RateAppSuccess());
    } else {
      emit(ButtonsFailure('In-app review not available'));
    }
  }

  void _onShareAppRequested(
      ShareAppRequested event, Emitter<ButtonsState> emit) {
    Share.share('Check out this amazing app!');
    emit(ShareAppSuccess());
  }

  Future<void> _onContactUsRequested(
      ContactUsRequested event, Emitter<ButtonsState> emit) async {
    const url = 'https://energise.notion.site/Flutter-f86d340cadb34e9cb1ef092df4e566b7';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      emit(ContactUsSuccess());
    } else {
      emit(ButtonsFailure('Could not launch $url'));
    }
  }
}