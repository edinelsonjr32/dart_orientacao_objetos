import 'dart:ffi';

import 'package:bank/bank.dart' as bank;

void main() {
  
  Conta contaMatheus = Conta('Edinelson', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);
  print("O saldo da conta da ${contaRoberta.titular} é: R\$:${contaRoberta.saldo}");
  contaRoberta.saldo = 333.09;
  print("O saldo da conta da ${contaRoberta.titular} é: R\$:${contaRoberta.saldo}");
}

class Conta {
  String titular;
  double saldo ;
  Conta(this.titular, this.saldo);
}
