
import 'package:bank/conta.dart';

void main() {
  Conta contaMatheus = Conta('Edinelson', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);
  print(
      "O saldo da conta da ${contaRoberta._titular} é: R\$:${contaRoberta._saldo}");
  contaRoberta._saldo = 333.09;
  print(
      "O saldo da conta da ${contaRoberta._titular} é: R\$:${contaRoberta._saldo}");

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas) {
    print("Titular: ${conta._titular}, saldo ${conta._saldo}");
  }

  contaRoberta.deposito(1500);

  print("Titular: ${contaRoberta._titular}, saldo ${contaRoberta._saldo}");

  contaRoberta.enviar(contaMatheus, 400);

  print("Titular: ${contaRoberta._titular}, saldo ${contaRoberta._saldo}");
  print("Titular: ${contaMatheus._titular}, saldo ${contaMatheus._saldo}");
}

