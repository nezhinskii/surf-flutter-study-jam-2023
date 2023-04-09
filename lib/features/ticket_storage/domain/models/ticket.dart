import 'package:hive/hive.dart';

part 'ticket.g.dart';

@HiveType(typeId: 2)
enum DownloadStatus {
  @HiveField(0)
  notStarted,
  @HiveField(1)
  inProgress,
  @HiveField(2)
  paused,
  @HiveField(3)
  ended,
}

@HiveType(typeId: 1)
enum TicketType {
  @HiveField(0)
  train,
  @HiveField(1)
  plane,
}

@HiveType(typeId: 0)
class Ticket {
  @HiveField(0)
  String title;
  @HiveField(1)
  String url;
  @HiveField(2)
  TicketType type;
  @HiveField(3)
  String localPath;
  @HiveField(4)
  DownloadStatus downloadStatus;

  Ticket({
    required this.title,
    required this.url,
    required this.type,
    required this.downloadStatus,
    required this.localPath,
    });

  Ticket copyWith(DownloadStatus newDownloadStatus){
    return Ticket(
      title: title,
      url: url,
      type: type,
      downloadStatus: newDownloadStatus,
      localPath: localPath
    );
  }
}