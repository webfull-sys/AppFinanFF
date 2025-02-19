import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lista_produtos_widget.dart' show ListaProdutosWidget;
import 'package:flutter/material.dart';

class ListaProdutosModel extends FlutterFlowModel<ListaProdutosWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Criar Chekout)] action in IconButton widget.
  ApiCallResponse? apiResultCreateCheckout;
  // Stores action output result for [Backend Call - Insert Row] action in IconButton widget.
  ComprasRow? backendResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
