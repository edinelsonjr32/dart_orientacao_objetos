import 'package:bank/conta.dart';

void main() {
  Conta contaMatheus = Conta('Edinelson', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);
  contaRoberta.imprimirSaldo();
  contaRoberta.receberSaldo(333.09);
  contaRoberta.imprimirSaldo();

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas) {
    conta.imprimirSaldo();
  }

  contaRoberta.deposito(1500);

  contaRoberta.imprimirSaldo();

  contaRoberta.enviar(contaMatheus, 400);
  contaRoberta.imprimirSaldo();
  contaMatheus.imprimirSaldo();

  ContaCorrente contaChris = ContaCorrente("Chris", 4000);
  ContaPoupanca contaDenize = ContaPoupanca("Denize", 4000);

  contaChris.imprimirSaldo();
  contaChris.receberSaldo(100);

  contaDenize.imprimirSaldo();
  contaDenize.enviar(contaRoberta, 2000);
  contaDenize.imprimirSaldo();
  contaChris.enviar(contaRoberta, 4000);
  contaDenize.calculaRendimento();
  contaDenize.imprimirSaldo();
}
