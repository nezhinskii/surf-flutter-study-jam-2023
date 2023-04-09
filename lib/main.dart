import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/repositories/tickets_hive.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_page.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_strings.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Ticket>(TicketAdapter());
  Hive.registerAdapter<TicketType>(TicketTypeAdapter());
  Hive.registerAdapter<DownloadStatus>(DownloadStatusAdapter());
  await Hive.openBox<Ticket>(AppStrings.ticketsBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<TicketsHive>(
          create: (_) => TicketsHive(Hive.box<Ticket>(AppStrings.ticketsBox)),
        ),
        RepositoryProvider<Dio>(
          create: (_) => Dio(),
        ),
      ],
      child: BlocProvider(
        create:  (context) =>
          TicketStorageBloc(context.read<TicketsHive>())..add(const TicketStorageEvent.fetch()),
        child: MaterialApp(
          theme: ThemeData(
            textSelectionTheme: const TextSelectionThemeData(
              selectionColor: AppColors.lightBackground,
              selectionHandleColor: AppColors.main
            )
          ),
          home: const TicketStoragePage(),
        ),
      ),
    );
  }
}
