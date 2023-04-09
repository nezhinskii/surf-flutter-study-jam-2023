import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_page.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:  (_) => TicketStorageBloc()..add(const TicketStorageEvent.fetch()),
      child: MaterialApp(
        theme: ThemeData(
            textSelectionTheme: const TextSelectionThemeData(
                selectionColor: AppColors.lightBackground,
                selectionHandleColor: AppColors.main
            )
        ),
        home: const TicketStoragePage(),
      ),
    );
  }
}
