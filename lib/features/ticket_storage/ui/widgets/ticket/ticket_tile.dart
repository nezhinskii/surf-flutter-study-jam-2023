import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/ticket/ticket_downloading_cubit/ticket_downloading_cubit.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_strings.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_text_styles.dart';

class TicketTile extends StatelessWidget {
  const TicketTile({Key? key}) : super(key: key);

  Icon iconByType(TicketType type) {
    final IconData iconData;
    switch (type) {
      case TicketType.train:
        iconData = Icons.train_outlined;
        break;
      case TicketType.plane:
        iconData = Icons.airplane_ticket_outlined;
        break;
    }
    return Icon(iconData, color: AppColors.additional,);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketDownloadingCubit, TicketDownloadingState>(
      builder: (context, state) {
        return Row(
          children: [
            iconByType(state.ticket.type),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(state.ticket.title, style: AppTextStyles.title,),
                  state.when(
                    notStarted: (_, __) => const Divider(color: AppColors.lightBackground, thickness: 3),
                    inProgress: (_, __, current, total) =>
                      LinearProgressIndicator(
                        value: current/total,
                        minHeight: 3,
                        valueColor: const AlwaysStoppedAnimation<Color>(AppColors.main),
                        backgroundColor: AppColors.lightBackground,
                      ),
                    ended: (_, __) => const Divider(color: AppColors.main, thickness: 3),
                  ),
                  Text(
                    state.when(
                      notStarted: (_, __) => AppStrings.waitingForDownload,
                      inProgress: (_, __, current, total) => AppStrings.downloadProgress(current, total),
                      ended: (_, __) => AppStrings.downloadingEnded,
                    ),
                    style: AppTextStyles.title.copyWith(color: AppColors.additional)
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20,),
            state.when(
              notStarted: (_, __) => InkWell(
                onTap: () {
                  context.read<TicketDownloadingCubit>().startDownloading();
                },
                child: const Icon(Icons.cloud_download_outlined, color: AppColors.main,)
              ),
              inProgress: (_, __, ___, ____) => const Icon(Icons.downloading_outlined, color: AppColors.main,),
              ended: (_, __) => const Icon(Icons.cloud_download, color: AppColors.main,)
            ),
          ],
        );
      },
    );
  }
}
