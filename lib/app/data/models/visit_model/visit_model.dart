import 'package:hive/hive.dart';

part 'visit_model.g.dart';

@HiveType(typeId: 1)
class Visit {
  @HiveField(0)
  String patientId;

  @HiveField(1)
  DateTime visitDate;

  @HiveField(2)
  String complaint;

  @HiveField(3)
  String medicalHistory;

  @HiveField(4)
  List<String> previousDiseases;

  @HiveField(5)
  List<DrugHistory> drugHistory;

  @HiveField(6)
  List<String> socialHistory;

  @HiveField(7)
  List<String> allergies;

  @HiveField(8)
  List<String> familyDiseases;

  @HiveField(9)
  VitalSigns vitals;

  @HiveField(10)
  String diagnosis;

  @HiveField(11)
  List<Medication> prescribedMedications;

  Visit({
    required this.patientId,
    required this.visitDate,
    required this.complaint,
    required this.medicalHistory,
    required this.previousDiseases,
    required this.drugHistory,
    required this.socialHistory,
    required this.allergies,
    required this.familyDiseases,
    required this.vitals,
    required this.diagnosis,
    required this.prescribedMedications,
  });
}

@HiveType(typeId: 2)
class DrugHistory {
  @HiveField(0)
  String name;

  @HiveField(1)
  String dosage;

  @HiveField(2)
  int quantity;

  @HiveField(3)
  DateTime startDate;

  DrugHistory({
    required this.name,
    required this.dosage,
    required this.quantity,
    required this.startDate,
  });
}

@HiveType(typeId: 3)
class VitalSigns {
  @HiveField(0)
  double bloodPressure;

  @HiveField(1)
  double oxygenLevel;

  @HiveField(2)
  int pulse;

  @HiveField(3)
  double temperature;

  VitalSigns({
    required this.bloodPressure,
    required this.oxygenLevel,
    required this.pulse,
    required this.temperature,
  });
}

@HiveType(typeId: 4)
class Medication {
  @HiveField(0)
  String name;

  @HiveField(1)
  String dosage;

  @HiveField(2)
  String timing;

  @HiveField(3)
  int duration;

  @HiveField(4)
  String foodRelation;

  @HiveField(5)
  int pillCount;

  Medication({
    required this.name,
    required this.dosage,
    required this.timing,
    required this.duration,
    required this.foodRelation,
    required this.pillCount,
  });
}
