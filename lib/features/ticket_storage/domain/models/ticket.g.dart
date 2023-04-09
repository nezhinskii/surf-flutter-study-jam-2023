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
    );
  }

  @override
  void write(BinaryWriter writer, Ticket obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.type);
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
