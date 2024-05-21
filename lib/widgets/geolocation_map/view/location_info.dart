import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../bloc/location_bloc.dart';


class LocationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        if (state is LocationInitial) {
          context.read<LocationBloc>().add(LocationRequested());
          return Center(child: Text(''));
        } else if (state is LocationLoadInProgress) {
          return Center(child: CircularProgressIndicator());
        } else if (state is LocationLoadSuccess) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).country(state.location.country)),
                Text(S.of(context).regionName(state.location.regionName)),
                Text(S.of(context).city(state.location.city)),
                Text(S.of(context).lat(state.location.lat)),
                Text(S.of(context).lon(state.location.lon)),
                Text(S.of(context).timezone(state.location.timezone)),
              ],
            ),
          );
        } else {
          return Center(child: Text(S.of(context).failedToLoadLocation));
        }
      },
    );
  }
}