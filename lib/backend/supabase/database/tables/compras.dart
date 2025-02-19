import '../database.dart';

class ComprasTable extends SupabaseTable<ComprasRow> {
  @override
  String get tableName => 'compras';

  @override
  ComprasRow createRow(Map<String, dynamic> data) => ComprasRow(data);
}

class ComprasRow extends SupabaseDataRow {
  ComprasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComprasTable();

  int get compraId => getField<int>('compra_id')!;
  set compraId(int value) => setField<int>('compra_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get produtoId => getField<int>('produto_id');
  set produtoId(int? value) => setField<int>('produto_id', value);

  String? get precoId => getField<String>('preco_id');
  set precoId(String? value) => setField<String>('preco_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
