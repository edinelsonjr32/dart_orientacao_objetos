import 'dart:ffi';

import 'package:bank/bank.dart' as bank;

void main() {
  Conta contaMatheus = Conta('Edinelson', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);
  print(
      "O saldo da conta da ${contaRoberta.titular} é: R\$:${contaRoberta.saldo}");
  contaRoberta.saldo = 333.09;
  print(
      "O saldo da conta da ${contaRoberta.titular} é: R\$:${contaRoberta.saldo}");

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas){
    print("Titular: ${conta.titular}, saldo ${conta.saldo}");
  }

  contaRoberta.deposito(1500);

  print("Titular: ${contaRoberta.titular}, saldo ${contaRoberta.saldo}");

  contaRoberta.enviar(contaMatheus, 400);

  print("Titular: ${contaRoberta.titular}, saldo ${contaRoberta.saldo}");
  print("Titular: ${contaMatheus.titular}, saldo ${contaMatheus.saldo}");

}

class Conta {
  String titular;
  double saldo;
  Conta(this.titular, this.saldo);

  void deposito(double valor){
    this.saldo += valor;
    print("Novo saldo do(a) ${this.titular} é: ${this.saldo}");
  }

  void enviar(Conta conta, double valor){
    this.saldo -= valor;
    conta.saldo += valor;
    print("Novo saldo do(a) ${this.titular} é: ${this.saldo}");
  }
}
