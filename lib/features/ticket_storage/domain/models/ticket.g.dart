// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicketAdapter extends TypeAdapter<Ticket> {
  @override
  final int typeId = 0;

  @override
  Ticket read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ticket(
      title: fields[0] as String,
      url: fields[1] as String,
      type: fields[2] as TicketType,
      downloadStatus: fields[4] as DownloadStatus,
      localPath: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Ticket obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.type)
      ..writeByte(3)
      ..write(obj.localPath)
      ..writeByte(4)
      ..write(obj.downloadStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DownloadStatusAdapter extends TypeAdapter<DownloadStatus> {
  @override
  final int typeId = 2;

  @override
  DownloadStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DownloadStatus.notStarted;
      case 1:
        return DownloadStatus.inProgress;
      case 2:
        return DownloadStatus.paused;
      case 3:
        return DownloadStatus.ended;
      default:
        return DownloadStatus.notStarted;
    }
  }

  @override
  void write(BinaryWriter writer, DownloadStatus obj) {
    switch (obj) {
      case DownloadStatus.notStarted:
        writer.writeByte(0);
        break;
      case DownloadStatus.inProgress:
        writer.writeByte(1);
        break;
      case DownloadStatus.paused:
        writer.writeByte(2);
        break;
      case DownloadStatus.ended:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DownloadStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TicketTypeAdapter extends TypeAdapter<TicketType> {
  @override
  final int typeId = 1;

  @override
  TicketType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TicketType.train;
      case 1:
        return TicketType.plane;
      default:
        return TicketType.train;
    }
  }

  @override
  void write(BinaryWriter writer, TicketType obj) {
    switch (obj) {
      case TicketType.train:
        writer.writeByte(0);
        break;
      case TicketType.plane:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
