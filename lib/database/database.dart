import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class Obras extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get numeroRelatorio => text()();

  DateTimeColumn get dataRelatorio => dateTime()();

  TextColumn get diaDaSemana => text()();

  TextColumn get obra => text()();

  TextColumn get endereco => text().nullable()();

  TextColumn get cliente => text().nullable()();

  TextColumn get telefone => text().nullable()();

  TextColumn get condicaoManha => text().nullable()();

  TextColumn get tempoManha => text().nullable()();

  TextColumn get condicaoTarde => text().nullable()();

  TextColumn get tempoTarde => text().nullable()();

  DateTimeColumn get createdAt =>
      dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt =>
      dateTime().withDefault(currentDateAndTime)();
}

@DriftDatabase(tables: [Obras])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'diarioobra_db'));

  @override
  int get schemaVersion => 1;
}