abstract class Conta {
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
      print("Foi enviado ${valor} de ${this._titular} para ${conta._titular}");
    }
  }

  void imprimirSaldo() {
    print('O saldo do ${this._titular} é: ${this._saldo}');
  }

  void receberSaldo(double valor) {
    this._saldo += valor;
  }

  void imprimirTitular() {
    print('A conta é do(a) ${this._titular}');
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super._saldo, super._titular);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}

class ContaCorrente extends Conta {
  double emprestimo = 300;
  ContaCorrente(super._titular, super._saldo);

  @override
  void enviar(Conta conta, double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimirSaldo();
    }
  }
}

mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor) {
    return valor * taxa;
  }
}

class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa(super._titular, super._saldo);

  @override
  void enviar(Conta conta, double valor) {
    // TODO: implement enviar
    if (_saldo >= valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      imprimirSaldo();
    }
  }

  @override
  void deposito(double valor) {
    _saldo += valor - valorTaxado(valor);
    imprimirSaldo();
  }
}


class ContaInvestimento extends Conta with Imposto{
  ContaInvestimento(super._titular, super._saldo);

  @override
  void enviar(Conta conta, double valor) {
    if (_saldo >= valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      imprimirSaldo();
    }
  }

  @override
  void deposito(double valor) {
    _saldo += valor - valorTaxado(valor);
    imprimirSaldo();
  }
}