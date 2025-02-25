// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VisitAdapter extends TypeAdapter<Visit> {
  @override
  final int typeId = 1;

  @override
  Visit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Visit(
      patientId: fields[0] as String,
      visitDate: fields[1] as DateTime,
      complaint: fields[2] as String,
      medicalHistory: fields[3] as String,
      previousDiseases: (fields[4] as List).cast<String>(),
      drugHistory: (fields[5] as List).cast<DrugHistory>(),
      socialHistory: (fields[6] as List).cast<String>(),
      allergies: (fields[7] as List).cast<String>(),
      familyDiseases: (fields[8] as List).cast<String>(),
      vitals: fields[9] as VitalSigns,
      diagnosis: fields[10] as String,
      prescribedMedications: (fields[11] as List).cast<Medication>(),
    );
  }

  @override
  void write(BinaryWriter writer, Visit obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.patientId)
      ..writeByte(1)
      ..write(obj.visitDate)
      ..writeByte(2)
      ..write(obj.complaint)
      ..writeByte(3)
      ..write(obj.medicalHistory)
      ..writeByte(4)
      ..write(obj.previousDiseases)
      ..writeByte(5)
      ..write(obj.drugHistory)
      ..writeByte(6)
      ..write(obj.socialHistory)
      ..writeByte(7)
      ..write(obj.allergies)
      ..writeByte(8)
      ..write(obj.familyDiseases)
      ..writeByte(9)
      ..write(obj.vitals)
      ..writeByte(10)
      ..write(obj.diagnosis)
      ..writeByte(11)
      ..write(obj.prescribedMedications);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VisitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DrugHistoryAdapter extends TypeAdapter<DrugHistory> {
  @override
  final int typeId = 2;

  @override
  DrugHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DrugHistory(
      name: fields[0] as String,
      dosage: fields[1] as String,
      quantity: fields[2] as int,
      startDate: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, DrugHistory obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.dosage)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.startDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrugHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VitalSignsAdapter extends TypeAdapter<VitalSigns> {
  @override
  final int typeId = 3;

  @override
  VitalSigns read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VitalSigns(
      bloodPressure: fields[0] as double,
      oxygenLevel: fields[1] as double,
      pulse: fields[2] as int,
      temperature: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, VitalSigns obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.bloodPressure)
      ..writeByte(1)
      ..write(obj.oxygenLevel)
      ..writeByte(2)
      ..write(obj.pulse)
      ..writeByte(3)
      ..write(obj.temperature);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VitalSignsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MedicationAdapter extends TypeAdapter<Medication> {
  @override
  final int typeId = 4;

  @override
  Medication read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Medication(
      name: fields[0] as String,
      dosage: fields[1] as String,
      timing: fields[2] as String,
      duration: fields[3] as int,
      foodRelation: fields[4] as String,
      pillCount: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Medication obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.dosage)
      ..writeByte(2)
      ..write(obj.timing)
      ..writeByte(3)
      ..write(obj.duration)
      ..writeByte(4)
      ..write(obj.foodRelation)
      ..writeByte(5)
      ..write(obj.pillCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedicationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
