import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/tickets_repository.dart';

part 'ticket_downloading_state.dart';
part 'ticket_downloading_cubit.freezed.dart';

class TicketDownloadingCubit extends Cubit<TicketDownloadingState> {
  TicketDownloadingCubit(this._ticketsRepository, this.dio, Ticket ticket, int index)
      : super(TicketDownloadingState.notStarted(ticket, index));

  final TicketsRepository _ticketsRepository;
  final Dio dio;

  double _bytesToMegabytes(int bytes){
    return bytes / 1024 / 1024;
  }

  void startDownloading() async {
    final newTicket = state.ticket.copyWith(DownloadStatus.inProgress);
    final index = state.index;
    _ticketsRepository.update(state.index, newTicket);
    await dio.download(state.ticket.url, state.ticket.localPath,
      onReceiveProgress: (count, total) {
        emit(TicketDownloadingState.inProgress(
            _ticketsRepository.getAt(index)!,
            index,
            _bytesToMegabytes(count),
            _bytesToMegabytes(total)
          )
        );
      },
    );
    _ticketsRepository.update(state.index, _ticketsRepository.getAt(index)!.copyWith(DownloadStatus.ended));
    emit(TicketDownloadingState.ended(_ticketsRepository.getAt(index)!, index));
  }
}
