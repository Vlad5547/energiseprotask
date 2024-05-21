import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../generated/l10n.dart';
import '../bloc/location_bloc.dart';
import '../repositories/location_repository.dart';
import '../services/location_service.dart';
import 'location_info.dart';
import 'location_map.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(LocationService(LocationRepository())),
      child: BlocConsumer<LocationBloc, LocationState>(
        listener: (context, state) {
          print('Location state changed: $state');
        },
        builder: (context, state) {
          print('Location state build: $state');
          final locationState = context.watch<LocationBloc>().state;
          final bool isLoading = locationState is LocationLoadInProgress;
          final bool isFailure = locationState is LocationLoadFailure;
          final bool isSuccess = locationState is LocationLoadSuccess;

          return RefreshIndicator(
            onRefresh: () async {
              // Add your refresh logic here
              context.read<LocationBloc>().add(LocationRequested());
            },
            child: ListView(
              children: [
                if (isLoading)
                  Center(child: CircularProgressIndicator())
                else if (isFailure)
                  Center(child: Text(S.of(context).failedToLoadLocation))
                else if (isSuccess)
                  Container(
                    height: 300, // You can adjust this height as needed
                    child: LocationMap(
                      lat: (locationState as LocationLoadSuccess).location.lat,
                      lon: (locationState as LocationLoadSuccess).location.lon,
                    ),
                  ),
                Container(
                  height: 300, // You can adjust this height as needed
                  child: LocationInfo(),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Get location button pressed');
                      context.read<LocationBloc>().add(LocationRequested());
                    },
                    child: Text(S.of(context).reload),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
