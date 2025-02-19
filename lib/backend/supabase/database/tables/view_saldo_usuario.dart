import '../database.dart';

class ViewSaldoUsuarioTable extends SupabaseTable<ViewSaldoUsuarioRow> {
  @override
  String get tableName => 'view_saldo_usuario';

  @override
  ViewSaldoUsuarioRow createRow(Map<String, dynamic> data) =>
      ViewSaldoUsuarioRow(data);
}

class ViewSaldoUsuarioRow extends SupabaseDataRow {
  ViewSaldoUsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSaldoUsuarioTable();

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  double? get totalEntrada => getField<double>('total_entrada');
  set totalEntrada(double? value) => setField<double>('total_entrada', value);

  double? get totalSaida => getField<double>('total_saida');
  set totalSaida(double? value) => setField<double>('total_saida', value);

  double? get saldoFinal => getField<double>('saldo_final');
  set saldoFinal(double? value) => setField<double>('saldo_final', value);
}
