import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/common_widgets/app_text_button.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/bottom_sheet.dart';
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
          listener: (context, state) {
            state.whenOrNull(
              loaded: (tickets) {

              },
            );
          },
          builder: (context, state) {
            return state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(color: AppColors.main,),
                ),
                loaded: (tickets) {
                  return tickets.isEmpty ?
                    const Center(
                        child: Text(AppStrings.noTickets, style: AppTextStyles.strong,)
                    ) : ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(tickets[index].title);
                    },
                    itemCount: tickets.length,
                  );
                },
            );
          },
        ),
        floatingActionButton: AppTextButton(
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
