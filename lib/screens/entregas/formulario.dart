import 'package:flutter/material.dart';
import '../../components/editor.dart';
import '../../components/moeda_input_formatter.dart';
import '../../models/entrega.dart';

class FormularioEntrega extends StatefulWidget {
  const FormularioEntrega({super.key});

  @override
  State<StatefulWidget> createState() {
    return FormularioEntregaState();
  }
}

class FormularioEntregaState extends State<FormularioEntrega> {
  final TextEditingController _controladorCampoCodigo =
      TextEditingController();
  final TextEditingController _controladorCampoPedido = TextEditingController();

  static const _tituloAppBar = 'Nova Entrega';
  static const _rotuloCampoPedido = 'Valor do Pedido';
  static const _dicaCampoPedido = '0,00';

  static const _rotuloCampoCodigo = 'Código da Entrega';
  static const _dicaCampoCodigo = '0000';
  static const _textoBotaoConfirmar = 'Confirmar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _tituloAppBar,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoCodigo,
              rotulo: _rotuloCampoCodigo,
              dica: _dicaCampoCodigo,
              icone: Icons.delivery_dining,
            ),

            Editor(
              controlador: _controladorCampoPedido,
              rotulo: _rotuloCampoPedido,
              dica: _dicaCampoPedido,
              icone: Icons.attach_money,
              formatters: [MoedaInputFormatter()],
            ),

            ElevatedButton(
              onPressed: () {
                debugPrint("Clicou aqui...");
                _criaEntrega(
                  context,
                  _controladorCampoCodigo,
                  _controladorCampoPedido,
                );
              },
              child: const Text(_textoBotaoConfirmar),
            ),
          ],
        ),
      ),
    );
  }
}

void _criaEntrega(
  BuildContext context,
  TextEditingController controladorCampoCodigo,
  TextEditingController controladorCampoPedido,
) {
  final int? codigoDaEntrega = int.tryParse(controladorCampoCodigo.text);
  final double? pedido = double.tryParse(
    controladorCampoPedido.text.replaceAll(',', '.'),
  );

  if (codigoDaEntrega != null && pedido != null) {
    final entregaCriada = Entrega(codigoDaEntrega, pedido);

    debugPrint('$entregaCriada');

    if (!context.mounted) return;

    Navigator.pop(context, entregaCriada);
  }
}
