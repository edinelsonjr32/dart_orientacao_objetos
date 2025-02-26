class Conta {
  String _titular;
  double _saldo;
  Conta(this._titular, this._saldo);

  void deposito(double valor) {
    this._saldo += valor;
    print("Novo saldo do(a) ${this._titular} é: ${this._saldo}");
  }

  void enviar(Conta conta, double valor) {
    if (this._saldo >= valor) {
      this._saldo -= valor;
      conta._saldo += valor;
      print("Novo saldo do(a) ${this._titular} é: ${this._saldo}");
    }
  }
}
