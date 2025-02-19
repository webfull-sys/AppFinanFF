import '../database.dart';

class ViewDetalhesComprasTable extends SupabaseTable<ViewDetalhesComprasRow> {
  @override
  String get tableName => 'view-detalhes-compras';

  @override
  ViewDetalhesComprasRow createRow(Map<String, dynamic> data) =>
      ViewDetalhesComprasRow(data);
}

class ViewDetalhesComprasRow extends SupabaseDataRow {
  ViewDetalhesComprasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewDetalhesComprasTable();

  int? get compraId => getField<int>('compra_id');
  set compraId(int? value) => setField<int>('compra_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get produtoId => getField<int>('produto_id');
  set produtoId(int? value) => setField<int>('produto_id', value);

  String? get precoId => getField<String>('preco_id');
  set precoId(String? value) => setField<String>('preco_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get imgProduto => getField<String>('imgProduto');
  set imgProduto(String? value) => setField<String>('imgProduto', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
