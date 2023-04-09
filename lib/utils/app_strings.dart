import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/models/ticket.dart';

abstract class AppStrings{
  static const ticketStorage = "Хранение билетов";
  static const add = "Добавить";
  static const enterUrl = "Введите Url";
  static const enterUrlError = "Введите корректный Url";
  static const noTickets = "Здесь пока ничего нет";
  static const addingSuccess = "Билет успешно добавлен";
  static const waitingForDownload = "Ожидает начала загрузки";
  static const downloadingEnded = "Файл загружен";
  static String downloadProgress(double current, double total){
    return "Загружено ${current.toStringAsFixed(1)} из ${total.toStringAsFixed(1)}";
  }
  static String ticketType(TicketType ticketType) {
    switch (ticketType) {
      case TicketType.train:
        return "Поезд";
      case TicketType.plane:
        return "Самолет";
    }
  }

  static const ticketsBox = "tickets";
}