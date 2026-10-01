import 'package:flutter/material.dart';
import '../../models/entrega.dart';
import 'formulario.dart';
import 'package:intl/intl.dart';

class ListaEntregas extends StatefulWidget {
  ListaEntregas({super.key});

  final List<Entrega> _entregas = [
    Entrega(1001, 25.90),
    Entrega(1002, 47.50),
  ];

  @override
  State<StatefulWidget> createState() {
    return ListaEntregasState();
  }
}

class ListaEntregasState extends State<ListaEntregas> {
  static const _tituloAppBar = "Entregas";

  void _atualiza(Entrega? entregaRecebida) {
    if (entregaRecebida != null) {
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          widget._entregas.add(entregaRecebida);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_tituloAppBar)),
      body: ListView.builder(
        itemCount: widget._entregas.length,
        itemBuilder: (context, indice) {
          final entrega = widget._entregas[indice];
          return ItemEntrega(entrega);
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Botão + pressionado");
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioEntrega();
              },
            ),
          ).then((entregaRecebida) => _atualiza(entregaRecebida));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ItemEntrega extends StatelessWidget {
  final Entrega _entrega;

  const ItemEntrega(this._entrega, {super.key});

  @override
  Widget build(BuildContext context) {
    NumberFormat formato = NumberFormat.simpleCurrency(locale: "pt_BR");
    return Card(
      child: ListTile(
        leading: Icon(Icons.delivery_dining),
        title: Text(formato.format(_entrega.pedido).toString()),
        subtitle: Text(_entrega.codigoDaEntrega.toString()),
      ),
    );
  }
}
