part of 'ticket_storage_bloc.dart';

@freezed
class TicketStorageEvent with _$TicketStorageEvent {
  const factory TicketStorageEvent.add(String url, TicketType type) = _add;
  const factory TicketStorageEvent.fetch() = _fetch;
}
