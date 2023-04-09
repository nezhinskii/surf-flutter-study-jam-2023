import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/url_input.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_colors.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_strings.dart';
import 'package:surf_flutter_study_jam_2023/utils/app_text_styles.dart';

class AddingTicketBottomSheet extends StatefulWidget {
  const AddingTicketBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddingTicketBottomSheet> createState() => _AddingTicketBottomSheetState();
}

class _AddingTicketBottomSheetState extends State<AddingTicketBottomSheet> {

  late final _controller = TextEditingController();
  bool _hasError = false;
  TicketType ticketType = TicketType.values[0];

  final urlRegExp = RegExp(r'http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\(\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+');

  void validate(String str){
    if (!urlRegExp.hasMatch(str) || !str.endsWith('.pdf')){
      _hasError = false;
    } else {
      _hasError = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 5,),
          Container(
            height: 5,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(3)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: UrlInput(controller: _controller, hasError: _hasError,)
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio(
                    activeColor: AppColors.main,
                    value: TicketType.values[index],
                    groupValue: ticketType,
                    onChanged:(value) {
                      if (value != null){
                        setState(() {
                          ticketType = value;
                        });
                      }
                    },
                  ),
                  Text(AppStrings.ticketType(TicketType.values[index]))
                ],
              );
            },
            itemCount: TicketType.values.length,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(AppColors.main),
                shape:MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              onPressed: (){
                setState(() {
                  validate(_controller.value.text);
                });
                if (!_hasError){
                  context.read<TicketStorageBloc>().add(
                      TicketStorageEvent.add(_controller.value.text, ticketType)
                  );
                  Navigator.of(context).pop();
                }
              },
              child: const Text(AppStrings.add, style: AppTextStyles.white,)
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
