part of 'ticket_storage_bloc.dart';

@freezed
class TicketStorageState with _$TicketStorageState {
  const factory TicketStorageState.loading() = _Loading;
  const factory TicketStorageState.loaded({
    required List<Ticket> tickets,
    String? errorMessage}) = TicketStorageLoaded;
}
