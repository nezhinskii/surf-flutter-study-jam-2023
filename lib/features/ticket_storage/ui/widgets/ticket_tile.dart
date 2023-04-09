import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_strings.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_text_styles.dart';

class TicketTile extends StatelessWidget {
  const TicketTile({Key? key, required this.ticket}) : super(key: key);

  final Ticket ticket;

  Icon iconByType(TicketType type){
    final IconData iconData;
    switch (type){
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
    return Row(
      children: [
        iconByType(ticket.type),
        const SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ticket.title, style: AppTextStyles.title,),
              const Divider(color: AppColors.additional, thickness: 3),
              Text(
                AppStrings.waitingForDownload, 
                style: AppTextStyles.title.copyWith(color: AppColors.additional)
              ),
            ],
          ),
        ),
        const SizedBox(width: 20,),
        const Icon(Icons.cloud_download_outlined, color: AppColors.main,),
      ],
    );
  }
}
