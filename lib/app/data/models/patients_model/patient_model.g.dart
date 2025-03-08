// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatientAdapter extends TypeAdapter<Patient> {
  @override
  final int typeId = 0;

  @override
  Patient read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Patient(
      name: fields[0] as String,
      nationalId: fields[1] as String,
      birthDate: fields[2] as DateTime,
      mobileNumber: fields[3] as String?,
      landlineNumber: fields[4] as String?,
      address: fields[5] as String?,
      companionName: fields[6] as String?,
      companionNationalId: fields[7] as String?,
      companionMobile: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Patient obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.nationalId)
      ..writeByte(2)
      ..write(obj.birthDate)
      ..writeByte(3)
      ..write(obj.mobileNumber)
      ..writeByte(4)
      ..write(obj.landlineNumber)
      ..writeByte(5)
      ..write(obj.address)
      ..writeByte(6)
      ..write(obj.companionName)
      ..writeByte(7)
      ..write(obj.companionNationalId)
      ..writeByte(8)
      ..write(obj.companionMobile);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatientAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
