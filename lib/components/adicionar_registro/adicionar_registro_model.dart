import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'adicionar_registro_widget.dart' show AdicionarRegistroWidget;
import 'package:flutter/material.dart';

class AdicionarRegistroModel extends FlutterFlowModel<AdicionarRegistroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for addDesc widget.
  FocusNode? addDescFocusNode;
  TextEditingController? addDescTextController;
  String? Function(BuildContext, String?)? addDescTextControllerValidator;
  String? _addDescTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for addValor widget.
  FocusNode? addValorFocusNode;
  TextEditingController? addValorTextController;
  String? Function(BuildContext, String?)? addValorTextControllerValidator;
  String? _addValorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for addCategoria widget.
  String? addCategoriaValue;
  FormFieldController<String>? addCategoriaValueController;
  // State field(s) for addTipo widget.
  String? addTipoValue;
  FormFieldController<String>? addTipoValueController;

  @override
  void initState(BuildContext context) {
    addDescTextControllerValidator = _addDescTextControllerValidator;
    addValorTextControllerValidator = _addValorTextControllerValidator;
  }

  @override
  void dispose() {
    addDescFocusNode?.dispose();
    addDescTextController?.dispose();

    addValorFocusNode?.dispose();
    addValorTextController?.dispose();
  }
}
