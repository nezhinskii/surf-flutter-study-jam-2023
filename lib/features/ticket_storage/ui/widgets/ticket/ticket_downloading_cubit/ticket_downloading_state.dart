part of 'ticket_downloading_cubit.dart';

@freezed
class TicketDownloadingState with _$TicketDownloadingState {
  const factory TicketDownloadingState.notStarted(Ticket ticket, int index) = _NotStarted;
  const factory TicketDownloadingState.inProgress(Ticket ticket, int index, double current, double total) = _InProgress;
  const factory TicketDownloadingState.ended(Ticket ticket, int index) = _Ended;
}
