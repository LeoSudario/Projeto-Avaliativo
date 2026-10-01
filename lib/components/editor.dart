import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controlador;
  final String? rotulo;
  final String? dica;
  final IconData? icone;
  final List<TextInputFormatter>? formatters;

  const Editor({super.key, this.controlador, this.rotulo, this.dica, this.icone, this.formatters});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: formatters,
      ),
    );
  }
}
