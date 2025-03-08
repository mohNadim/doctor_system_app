import 'package:hive/hive.dart';

part 'patient_model.g.dart';

@HiveType(typeId: 0)
class Patient {
  @HiveField(0)
  String name;

  @HiveField(1)
  String nationalId;

  @HiveField(2)
  DateTime birthDate;

  @HiveField(3)
  String? mobileNumber;

  @HiveField(4)
  String? landlineNumber;

  @HiveField(5)
  String? address;

  @HiveField(6)
  String? companionName;

  @HiveField(7)
  String? companionNationalId;

  @HiveField(8)
  String? companionMobile;

  Patient({
    required this.name,
    required this.nationalId,
    required this.birthDate,
    this.mobileNumber,
    this.landlineNumber,
    this.address,
    this.companionName,
    this.companionNationalId,
    this.companionMobile,
  });

  int get age => DateTime.now().year - birthDate.year;
}
