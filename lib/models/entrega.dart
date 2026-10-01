class Entrega {
  final int codigoDaEntrega;
  final double pedido;

  Entrega(this.codigoDaEntrega, this.pedido);

  @override
  String toString() {
    return "Entrega{codigoDaEntrega: $codigoDaEntrega, pedido: $pedido}";
  }
}
