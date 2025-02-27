import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/repositories/tickets_hive.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/floating_button.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/bottom_sheet.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/snack_bar.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/ticket/ticket_downloading_cubit/ticket_downloading_cubit.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/ticket/ticket_tile.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_strings.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_text_styles.dart';
import 'package:surf_flutter_study_jam_2023/utils/delete_scroll_glow.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoOverscrollIndicator(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.pageBackground,
          title: const Text(
            AppStrings.ticketStorage, style: AppTextStyles.header,
          ),
        ),
        backgroundColor: AppColors.pageBackground,
        body: BlocConsumer<TicketStorageBloc, TicketStorageState>(
          listenWhen: (previous, current) =>
            previous is TicketStorageLoaded && current is TicketStorageLoaded,
          listener: (context, state) {
            state.whenOrNull(
              loaded: (tickets, errorMessage) {
                if (errorMessage == null){
                  showSnackBar(
                    context: context,
                    message: AppStrings.addingSuccess,
                    color: AppColors.main
                  );
                } else{
                  showSnackBar(
                    context: context,
                    message: errorMessage,
                    color: Colors.red
                  );
                }
              },
            );
          },
          builder: (context, state) {
            return state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(color: AppColors.main,),
                ),
                loaded: (tickets, errorMessage) {
                  return tickets.isEmpty ?
                    const Center(
                        child: Text(AppStrings.noTickets, style: AppTextStyles.strong,)
                    ) : ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: BlocProvider(
                          create: (context) => TicketDownloadingCubit(
                            context.read<TicketsHive>(),
                            context.read<Dio>(),
                            tickets[index],
                            index
                          ),
                          child: const TicketTile(),
                        ),
                      );
                    },
                    itemCount: tickets.length,
                  );
                },
            );
          },
        ),
        floatingActionButton: FloatingButton(
          title: AppStrings.add,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25))
              ),
              builder: (context) {
                return const AddingTicketBottomSheet();
              },
            );
          },
        ),
      ),
    );
  }
}
