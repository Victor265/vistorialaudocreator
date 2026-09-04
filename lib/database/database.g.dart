// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ObrasTable extends Obras with TableInfo<$ObrasTable, Obra> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ObrasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _numeroRelatorioMeta = const VerificationMeta(
    'numeroRelatorio',
  );
  @override
  late final GeneratedColumn<String> numeroRelatorio = GeneratedColumn<String>(
    'numero_relatorio',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataRelatorioMeta = const VerificationMeta(
    'dataRelatorio',
  );
  @override
  late final GeneratedColumn<DateTime> dataRelatorio =
      GeneratedColumn<DateTime>(
        'data_relatorio',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _diaDaSemanaMeta = const VerificationMeta(
    'diaDaSemana',
  );
  @override
  late final GeneratedColumn<String> diaDaSemana = GeneratedColumn<String>(
    'dia_da_semana',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _obraMeta = const VerificationMeta('obra');
  @override
  late final GeneratedColumn<String> obra = GeneratedColumn<String>(
    'obra',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _enderecoMeta = const VerificationMeta(
    'endereco',
  );
  @override
  late final GeneratedColumn<String> endereco = GeneratedColumn<String>(
    'endereco',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _clienteMeta = const VerificationMeta(
    'cliente',
  );
  @override
  late final GeneratedColumn<String> cliente = GeneratedColumn<String>(
    'cliente',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _telefoneMeta = const VerificationMeta(
    'telefone',
  );
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
    'telefone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _condicaoManhaMeta = const VerificationMeta(
    'condicaoManha',
  );
  @override
  late final GeneratedColumn<String> condicaoManha = GeneratedColumn<String>(
    'condicao_manha',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tempoManhaMeta = const VerificationMeta(
    'tempoManha',
  );
  @override
  late final GeneratedColumn<String> tempoManha = GeneratedColumn<String>(
    'tempo_manha',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _condicaoTardeMeta = const VerificationMeta(
    'condicaoTarde',
  );
  @override
  late final GeneratedColumn<String> condicaoTarde = GeneratedColumn<String>(
    'condicao_tarde',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tempoTardeMeta = const VerificationMeta(
    'tempoTarde',
  );
  @override
  late final GeneratedColumn<String> tempoTarde = GeneratedColumn<String>(
    'tempo_tarde',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    numeroRelatorio,
    dataRelatorio,
    diaDaSemana,
    obra,
    endereco,
    cliente,
    telefone,
    condicaoManha,
    tempoManha,
    condicaoTarde,
    tempoTarde,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'obras';
  @override
  VerificationContext validateIntegrity(
    Insertable<Obra> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('numero_relatorio')) {
      context.handle(
        _numeroRelatorioMeta,
        numeroRelatorio.isAcceptableOrUnknown(
          data['numero_relatorio']!,
          _numeroRelatorioMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_numeroRelatorioMeta);
    }
    if (data.containsKey('data_relatorio')) {
      context.handle(
        _dataRelatorioMeta,
        dataRelatorio.isAcceptableOrUnknown(
          data['data_relatorio']!,
          _dataRelatorioMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dataRelatorioMeta);
    }
    if (data.containsKey('dia_da_semana')) {
      context.handle(
        _diaDaSemanaMeta,
        diaDaSemana.isAcceptableOrUnknown(
          data['dia_da_semana']!,
          _diaDaSemanaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_diaDaSemanaMeta);
    }
    if (data.containsKey('obra')) {
      context.handle(
        _obraMeta,
        obra.isAcceptableOrUnknown(data['obra']!, _obraMeta),
      );
    } else if (isInserting) {
      context.missing(_obraMeta);
    }
    if (data.containsKey('endereco')) {
      context.handle(
        _enderecoMeta,
        endereco.isAcceptableOrUnknown(data['endereco']!, _enderecoMeta),
      );
    }
    if (data.containsKey('cliente')) {
      context.handle(
        _clienteMeta,
        cliente.isAcceptableOrUnknown(data['cliente']!, _clienteMeta),
      );
    }
    if (data.containsKey('telefone')) {
      context.handle(
        _telefoneMeta,
        telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta),
      );
    }
    if (data.containsKey('condicao_manha')) {
      context.handle(
        _condicaoManhaMeta,
        condicaoManha.isAcceptableOrUnknown(
          data['condicao_manha']!,
          _condicaoManhaMeta,
        ),
      );
    }
    if (data.containsKey('tempo_manha')) {
      context.handle(
        _tempoManhaMeta,
        tempoManha.isAcceptableOrUnknown(data['tempo_manha']!, _tempoManhaMeta),
      );
    }
    if (data.containsKey('condicao_tarde')) {
      context.handle(
        _condicaoTardeMeta,
        condicaoTarde.isAcceptableOrUnknown(
          data['condicao_tarde']!,
          _condicaoTardeMeta,
        ),
      );
    }
    if (data.containsKey('tempo_tarde')) {
      context.handle(
        _tempoTardeMeta,
        tempoTarde.isAcceptableOrUnknown(data['tempo_tarde']!, _tempoTardeMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Obra map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Obra(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      numeroRelatorio: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}numero_relatorio'],
      )!,
      dataRelatorio: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}data_relatorio'],
      )!,
      diaDaSemana: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}dia_da_semana'],
      )!,
      obra: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}obra'],
      )!,
      endereco: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}endereco'],
      ),
      cliente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cliente'],
      ),
      telefone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}telefone'],
      ),
      condicaoManha: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}condicao_manha'],
      ),
      tempoManha: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tempo_manha'],
      ),
      condicaoTarde: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}condicao_tarde'],
      ),
      tempoTarde: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tempo_tarde'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $ObrasTable createAlias(String alias) {
    return $ObrasTable(attachedDatabase, alias);
  }
}

class Obra extends DataClass implements Insertable<Obra> {
  final int id;
  final String numeroRelatorio;
  final DateTime dataRelatorio;
  final String diaDaSemana;
  final String obra;
  final String? endereco;
  final String? cliente;
  final String? telefone;
  final String? condicaoManha;
  final String? tempoManha;
  final String? condicaoTarde;
  final String? tempoTarde;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Obra({
    required this.id,
    required this.numeroRelatorio,
    required this.dataRelatorio,
    required this.diaDaSemana,
    required this.obra,
    this.endereco,
    this.cliente,
    this.telefone,
    this.condicaoManha,
    this.tempoManha,
    this.condicaoTarde,
    this.tempoTarde,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['numero_relatorio'] = Variable<String>(numeroRelatorio);
    map['data_relatorio'] = Variable<DateTime>(dataRelatorio);
    map['dia_da_semana'] = Variable<String>(diaDaSemana);
    map['obra'] = Variable<String>(obra);
    if (!nullToAbsent || endereco != null) {
      map['endereco'] = Variable<String>(endereco);
    }
    if (!nullToAbsent || cliente != null) {
      map['cliente'] = Variable<String>(cliente);
    }
    if (!nullToAbsent || telefone != null) {
      map['telefone'] = Variable<String>(telefone);
    }
    if (!nullToAbsent || condicaoManha != null) {
      map['condicao_manha'] = Variable<String>(condicaoManha);
    }
    if (!nullToAbsent || tempoManha != null) {
      map['tempo_manha'] = Variable<String>(tempoManha);
    }
    if (!nullToAbsent || condicaoTarde != null) {
      map['condicao_tarde'] = Variable<String>(condicaoTarde);
    }
    if (!nullToAbsent || tempoTarde != null) {
      map['tempo_tarde'] = Variable<String>(tempoTarde);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ObrasCompanion toCompanion(bool nullToAbsent) {
    return ObrasCompanion(
      id: Value(id),
      numeroRelatorio: Value(numeroRelatorio),
      dataRelatorio: Value(dataRelatorio),
      diaDaSemana: Value(diaDaSemana),
      obra: Value(obra),
      endereco: endereco == null && nullToAbsent
          ? const Value.absent()
          : Value(endereco),
      cliente: cliente == null && nullToAbsent
          ? const Value.absent()
          : Value(cliente),
      telefone: telefone == null && nullToAbsent
          ? const Value.absent()
          : Value(telefone),
      condicaoManha: condicaoManha == null && nullToAbsent
          ? const Value.absent()
          : Value(condicaoManha),
      tempoManha: tempoManha == null && nullToAbsent
          ? const Value.absent()
          : Value(tempoManha),
      condicaoTarde: condicaoTarde == null && nullToAbsent
          ? const Value.absent()
          : Value(condicaoTarde),
      tempoTarde: tempoTarde == null && nullToAbsent
          ? const Value.absent()
          : Value(tempoTarde),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Obra.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Obra(
      id: serializer.fromJson<int>(json['id']),
      numeroRelatorio: serializer.fromJson<String>(json['numeroRelatorio']),
      dataRelatorio: serializer.fromJson<DateTime>(json['dataRelatorio']),
      diaDaSemana: serializer.fromJson<String>(json['diaDaSemana']),
      obra: serializer.fromJson<String>(json['obra']),
      endereco: serializer.fromJson<String?>(json['endereco']),
      cliente: serializer.fromJson<String?>(json['cliente']),
      telefone: serializer.fromJson<String?>(json['telefone']),
      condicaoManha: serializer.fromJson<String?>(json['condicaoManha']),
      tempoManha: serializer.fromJson<String?>(json['tempoManha']),
      condicaoTarde: serializer.fromJson<String?>(json['condicaoTarde']),
      tempoTarde: serializer.fromJson<String?>(json['tempoTarde']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'numeroRelatorio': serializer.toJson<String>(numeroRelatorio),
      'dataRelatorio': serializer.toJson<DateTime>(dataRelatorio),
      'diaDaSemana': serializer.toJson<String>(diaDaSemana),
      'obra': serializer.toJson<String>(obra),
      'endereco': serializer.toJson<String?>(endereco),
      'cliente': serializer.toJson<String?>(cliente),
      'telefone': serializer.toJson<String?>(telefone),
      'condicaoManha': serializer.toJson<String?>(condicaoManha),
      'tempoManha': serializer.toJson<String?>(tempoManha),
      'condicaoTarde': serializer.toJson<String?>(condicaoTarde),
      'tempoTarde': serializer.toJson<String?>(tempoTarde),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Obra copyWith({
    int? id,
    String? numeroRelatorio,
    DateTime? dataRelatorio,
    String? diaDaSemana,
    String? obra,
    Value<String?> endereco = const Value.absent(),
    Value<String?> cliente = const Value.absent(),
    Value<String?> telefone = const Value.absent(),
    Value<String?> condicaoManha = const Value.absent(),
    Value<String?> tempoManha = const Value.absent(),
    Value<String?> condicaoTarde = const Value.absent(),
    Value<String?> tempoTarde = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Obra(
    id: id ?? this.id,
    numeroRelatorio: numeroRelatorio ?? this.numeroRelatorio,
    dataRelatorio: dataRelatorio ?? this.dataRelatorio,
    diaDaSemana: diaDaSemana ?? this.diaDaSemana,
    obra: obra ?? this.obra,
    endereco: endereco.present ? endereco.value : this.endereco,
    cliente: cliente.present ? cliente.value : this.cliente,
    telefone: telefone.present ? telefone.value : this.telefone,
    condicaoManha: condicaoManha.present
        ? condicaoManha.value
        : this.condicaoManha,
    tempoManha: tempoManha.present ? tempoManha.value : this.tempoManha,
    condicaoTarde: condicaoTarde.present
        ? condicaoTarde.value
        : this.condicaoTarde,
    tempoTarde: tempoTarde.present ? tempoTarde.value : this.tempoTarde,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Obra copyWithCompanion(ObrasCompanion data) {
    return Obra(
      id: data.id.present ? data.id.value : this.id,
      numeroRelatorio: data.numeroRelatorio.present
          ? data.numeroRelatorio.value
          : this.numeroRelatorio,
      dataRelatorio: data.dataRelatorio.present
          ? data.dataRelatorio.value
          : this.dataRelatorio,
      diaDaSemana: data.diaDaSemana.present
          ? data.diaDaSemana.value
          : this.diaDaSemana,
      obra: data.obra.present ? data.obra.value : this.obra,
      endereco: data.endereco.present ? data.endereco.value : this.endereco,
      cliente: data.cliente.present ? data.cliente.value : this.cliente,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      condicaoManha: data.condicaoManha.present
          ? data.condicaoManha.value
          : this.condicaoManha,
      tempoManha: data.tempoManha.present
          ? data.tempoManha.value
          : this.tempoManha,
      condicaoTarde: data.condicaoTarde.present
          ? data.condicaoTarde.value
          : this.condicaoTarde,
      tempoTarde: data.tempoTarde.present
          ? data.tempoTarde.value
          : this.tempoTarde,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Obra(')
          ..write('id: $id, ')
          ..write('numeroRelatorio: $numeroRelatorio, ')
          ..write('dataRelatorio: $dataRelatorio, ')
          ..write('diaDaSemana: $diaDaSemana, ')
          ..write('obra: $obra, ')
          ..write('endereco: $endereco, ')
          ..write('cliente: $cliente, ')
          ..write('telefone: $telefone, ')
          ..write('condicaoManha: $condicaoManha, ')
          ..write('tempoManha: $tempoManha, ')
          ..write('condicaoTarde: $condicaoTarde, ')
          ..write('tempoTarde: $tempoTarde, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    numeroRelatorio,
    dataRelatorio,
    diaDaSemana,
    obra,
    endereco,
    cliente,
    telefone,
    condicaoManha,
    tempoManha,
    condicaoTarde,
    tempoTarde,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Obra &&
          other.id == this.id &&
          other.numeroRelatorio == this.numeroRelatorio &&
          other.dataRelatorio == this.dataRelatorio &&
          other.diaDaSemana == this.diaDaSemana &&
          other.obra == this.obra &&
          other.endereco == this.endereco &&
          other.cliente == this.cliente &&
          other.telefone == this.telefone &&
          other.condicaoManha == this.condicaoManha &&
          other.tempoManha == this.tempoManha &&
          other.condicaoTarde == this.condicaoTarde &&
          other.tempoTarde == this.tempoTarde &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ObrasCompanion extends UpdateCompanion<Obra> {
  final Value<int> id;
  final Value<String> numeroRelatorio;
  final Value<DateTime> dataRelatorio;
  final Value<String> diaDaSemana;
  final Value<String> obra;
  final Value<String?> endereco;
  final Value<String?> cliente;
  final Value<String?> telefone;
  final Value<String?> condicaoManha;
  final Value<String?> tempoManha;
  final Value<String?> condicaoTarde;
  final Value<String?> tempoTarde;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const ObrasCompanion({
    this.id = const Value.absent(),
    this.numeroRelatorio = const Value.absent(),
    this.dataRelatorio = const Value.absent(),
    this.diaDaSemana = const Value.absent(),
    this.obra = const Value.absent(),
    this.endereco = const Value.absent(),
    this.cliente = const Value.absent(),
    this.telefone = const Value.absent(),
    this.condicaoManha = const Value.absent(),
    this.tempoManha = const Value.absent(),
    this.condicaoTarde = const Value.absent(),
    this.tempoTarde = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ObrasCompanion.insert({
    this.id = const Value.absent(),
    required String numeroRelatorio,
    required DateTime dataRelatorio,
    required String diaDaSemana,
    required String obra,
    this.endereco = const Value.absent(),
    this.cliente = const Value.absent(),
    this.telefone = const Value.absent(),
    this.condicaoManha = const Value.absent(),
    this.tempoManha = const Value.absent(),
    this.condicaoTarde = const Value.absent(),
    this.tempoTarde = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : numeroRelatorio = Value(numeroRelatorio),
       dataRelatorio = Value(dataRelatorio),
       diaDaSemana = Value(diaDaSemana),
       obra = Value(obra);
  static Insertable<Obra> custom({
    Expression<int>? id,
    Expression<String>? numeroRelatorio,
    Expression<DateTime>? dataRelatorio,
    Expression<String>? diaDaSemana,
    Expression<String>? obra,
    Expression<String>? endereco,
    Expression<String>? cliente,
    Expression<String>? telefone,
    Expression<String>? condicaoManha,
    Expression<String>? tempoManha,
    Expression<String>? condicaoTarde,
    Expression<String>? tempoTarde,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (numeroRelatorio != null) 'numero_relatorio': numeroRelatorio,
      if (dataRelatorio != null) 'data_relatorio': dataRelatorio,
      if (diaDaSemana != null) 'dia_da_semana': diaDaSemana,
      if (obra != null) 'obra': obra,
      if (endereco != null) 'endereco': endereco,
      if (cliente != null) 'cliente': cliente,
      if (telefone != null) 'telefone': telefone,
      if (condicaoManha != null) 'condicao_manha': condicaoManha,
      if (tempoManha != null) 'tempo_manha': tempoManha,
      if (condicaoTarde != null) 'condicao_tarde': condicaoTarde,
      if (tempoTarde != null) 'tempo_tarde': tempoTarde,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ObrasCompanion copyWith({
    Value<int>? id,
    Value<String>? numeroRelatorio,
    Value<DateTime>? dataRelatorio,
    Value<String>? diaDaSemana,
    Value<String>? obra,
    Value<String?>? endereco,
    Value<String?>? cliente,
    Value<String?>? telefone,
    Value<String?>? condicaoManha,
    Value<String?>? tempoManha,
    Value<String?>? condicaoTarde,
    Value<String?>? tempoTarde,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
  }) {
    return ObrasCompanion(
      id: id ?? this.id,
      numeroRelatorio: numeroRelatorio ?? this.numeroRelatorio,
      dataRelatorio: dataRelatorio ?? this.dataRelatorio,
      diaDaSemana: diaDaSemana ?? this.diaDaSemana,
      obra: obra ?? this.obra,
      endereco: endereco ?? this.endereco,
      cliente: cliente ?? this.cliente,
      telefone: telefone ?? this.telefone,
      condicaoManha: condicaoManha ?? this.condicaoManha,
      tempoManha: tempoManha ?? this.tempoManha,
      condicaoTarde: condicaoTarde ?? this.condicaoTarde,
      tempoTarde: tempoTarde ?? this.tempoTarde,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (numeroRelatorio.present) {
      map['numero_relatorio'] = Variable<String>(numeroRelatorio.value);
    }
    if (dataRelatorio.present) {
      map['data_relatorio'] = Variable<DateTime>(dataRelatorio.value);
    }
    if (diaDaSemana.present) {
      map['dia_da_semana'] = Variable<String>(diaDaSemana.value);
    }
    if (obra.present) {
      map['obra'] = Variable<String>(obra.value);
    }
    if (endereco.present) {
      map['endereco'] = Variable<String>(endereco.value);
    }
    if (cliente.present) {
      map['cliente'] = Variable<String>(cliente.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (condicaoManha.present) {
      map['condicao_manha'] = Variable<String>(condicaoManha.value);
    }
    if (tempoManha.present) {
      map['tempo_manha'] = Variable<String>(tempoManha.value);
    }
    if (condicaoTarde.present) {
      map['condicao_tarde'] = Variable<String>(condicaoTarde.value);
    }
    if (tempoTarde.present) {
      map['tempo_tarde'] = Variable<String>(tempoTarde.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ObrasCompanion(')
          ..write('id: $id, ')
          ..write('numeroRelatorio: $numeroRelatorio, ')
          ..write('dataRelatorio: $dataRelatorio, ')
          ..write('diaDaSemana: $diaDaSemana, ')
          ..write('obra: $obra, ')
          ..write('endereco: $endereco, ')
          ..write('cliente: $cliente, ')
          ..write('telefone: $telefone, ')
          ..write('condicaoManha: $condicaoManha, ')
          ..write('tempoManha: $tempoManha, ')
          ..write('condicaoTarde: $condicaoTarde, ')
          ..write('tempoTarde: $tempoTarde, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ObrasTable obras = $ObrasTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [obras];
}

typedef $$ObrasTableCreateCompanionBuilder = ObrasCompanion Function({
  Value<int> id,
  required String numeroRelatorio,
  required DateTime dataRelatorio,
  required String diaDaSemana,
  required String obra,
  Value<String?> endereco,
  Value<String?> cliente,
  Value<String?> telefone,
  Value<String?> condicaoManha,
  Value<String?> tempoManha,
  Value<String?> condicaoTarde,
  Value<String?> tempoTarde,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});
typedef $$ObrasTableUpdateCompanionBuilder = ObrasCompanion Function({
  Value<int> id,
  Value<String> numeroRelatorio,
  Value<DateTime> dataRelatorio,
  Value<String> diaDaSemana,
  Value<String> obra,
  Value<String?> endereco,
  Value<String?> cliente,
  Value<String?> telefone,
  Value<String?> condicaoManha,
  Value<String?> tempoManha,
  Value<String?> condicaoTarde,
  Value<String?> tempoTarde,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

class $$ObrasTableFilterComposer extends Composer<_$AppDatabase, $ObrasTable> {
  $$ObrasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get numeroRelatorio => $composableBuilder(
    column: $table.numeroRelatorio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dataRelatorio => $composableBuilder(
    column: $table.dataRelatorio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get diaDaSemana => $composableBuilder(
    column: $table.diaDaSemana,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get obra => $composableBuilder(
    column: $table.obra,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get endereco => $composableBuilder(
    column: $table.endereco,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cliente => $composableBuilder(
    column: $table.cliente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get condicaoManha => $composableBuilder(
    column: $table.condicaoManha,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tempoManha => $composableBuilder(
    column: $table.tempoManha,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get condicaoTarde => $composableBuilder(
    column: $table.condicaoTarde,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tempoTarde => $composableBuilder(
    column: $table.tempoTarde,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ObrasTableOrderingComposer
    extends Composer<_$AppDatabase, $ObrasTable> {
  $$ObrasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get numeroRelatorio => $composableBuilder(
    column: $table.numeroRelatorio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dataRelatorio => $composableBuilder(
    column: $table.dataRelatorio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get diaDaSemana => $composableBuilder(
    column: $table.diaDaSemana,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get obra => $composableBuilder(
    column: $table.obra,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get endereco => $composableBuilder(
    column: $table.endereco,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cliente => $composableBuilder(
    column: $table.cliente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get telefone => $composableBuilder(
    column: $table.telefone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get condicaoManha => $composableBuilder(
    column: $table.condicaoManha,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tempoManha => $composableBuilder(
    column: $table.tempoManha,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get condicaoTarde => $composableBuilder(
    column: $table.condicaoTarde,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tempoTarde => $composableBuilder(
    column: $table.tempoTarde,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ObrasTableAnnotationComposer
    extends Composer<_$AppDatabase, $ObrasTable> {
  $$ObrasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get numeroRelatorio => $composableBuilder(
    column: $table.numeroRelatorio,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get dataRelatorio => $composableBuilder(
    column: $table.dataRelatorio,
    builder: (column) => column,
  );

  GeneratedColumn<String> get diaDaSemana => $composableBuilder(
    column: $table.diaDaSemana,
    builder: (column) => column,
  );

  GeneratedColumn<String> get obra =>
      $composableBuilder(column: $table.obra, builder: (column) => column);

  GeneratedColumn<String> get endereco =>
      $composableBuilder(column: $table.endereco, builder: (column) => column);

  GeneratedColumn<String> get cliente =>
      $composableBuilder(column: $table.cliente, builder: (column) => column);

  GeneratedColumn<String> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get condicaoManha => $composableBuilder(
    column: $table.condicaoManha,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tempoManha => $composableBuilder(
    column: $table.tempoManha,
    builder: (column) => column,
  );

  GeneratedColumn<String> get condicaoTarde => $composableBuilder(
    column: $table.condicaoTarde,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tempoTarde => $composableBuilder(
    column: $table.tempoTarde,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ObrasTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ObrasTable,
          Obra,
          $$ObrasTableFilterComposer,
          $$ObrasTableOrderingComposer,
          $$ObrasTableAnnotationComposer,
          $$ObrasTableCreateCompanionBuilder,
          $$ObrasTableUpdateCompanionBuilder,
          (Obra, BaseReferences<_$AppDatabase, $ObrasTable, Obra>),
          Obra,
          PrefetchHooks Function()
        > {
  $$ObrasTableTableManager(_$AppDatabase db, $ObrasTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ObrasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ObrasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ObrasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> numeroRelatorio = const Value.absent(),
                Value<DateTime> dataRelatorio = const Value.absent(),
                Value<String> diaDaSemana = const Value.absent(),
                Value<String> obra = const Value.absent(),
                Value<String?> endereco = const Value.absent(),
                Value<String?> cliente = const Value.absent(),
                Value<String?> telefone = const Value.absent(),
                Value<String?> condicaoManha = const Value.absent(),
                Value<String?> tempoManha = const Value.absent(),
                Value<String?> condicaoTarde = const Value.absent(),
                Value<String?> tempoTarde = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => ObrasCompanion(
                id: id,
                numeroRelatorio: numeroRelatorio,
                dataRelatorio: dataRelatorio,
                diaDaSemana: diaDaSemana,
                obra: obra,
                endereco: endereco,
                cliente: cliente,
                telefone: telefone,
                condicaoManha: condicaoManha,
                tempoManha: tempoManha,
                condicaoTarde: condicaoTarde,
                tempoTarde: tempoTarde,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String numeroRelatorio,
                required DateTime dataRelatorio,
                required String diaDaSemana,
                required String obra,
                Value<String?> endereco = const Value.absent(),
                Value<String?> cliente = const Value.absent(),
                Value<String?> telefone = const Value.absent(),
                Value<String?> condicaoManha = const Value.absent(),
                Value<String?> tempoManha = const Value.absent(),
                Value<String?> condicaoTarde = const Value.absent(),
                Value<String?> tempoTarde = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => ObrasCompanion.insert(
                id: id,
                numeroRelatorio: numeroRelatorio,
                dataRelatorio: dataRelatorio,
                diaDaSemana: diaDaSemana,
                obra: obra,
                endereco: endereco,
                cliente: cliente,
                telefone: telefone,
                condicaoManha: condicaoManha,
                tempoManha: tempoManha,
                condicaoTarde: condicaoTarde,
                tempoTarde: tempoTarde,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ObrasTable, Obra>(table),
                  BaseReferences<_$AppDatabase, $ObrasTable, Obra>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ObrasTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ObrasTable,
      Obra,
      $$ObrasTableFilterComposer,
      $$ObrasTableOrderingComposer,
      $$ObrasTableAnnotationComposer,
      $$ObrasTableCreateCompanionBuilder,
      $$ObrasTableUpdateCompanionBuilder,
      (Obra, BaseReferences<_$AppDatabase, $ObrasTable, Obra>),
      Obra,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ObrasTableTableManager get obras =>
      $$ObrasTableTableManager(_db, _db.obras);
}
