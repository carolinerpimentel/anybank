import 'package:anybank/conta.dart';

void main() {

Conta contaMatheus = Conta("Matheus", 1000);
Conta contaRoberta = Conta("Roberta", 2000);

List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

print("");

for(Conta conta in contas){
    print("Nome: ${conta.titular}, Saldo: R\$${conta.saldo.toStringAsFixed(2)}");
}

contaRoberta.saldo = 5000;

print("");
print("Novo saldo de ${contaRoberta.titular}: R\$${contaRoberta.saldo.toStringAsFixed(2)}");
print("");

contaMatheus.receber(500);
contaRoberta.receber(3000);

print("Novo saldo de ${contaRoberta.titular}: R\$${contaRoberta.saldo.toStringAsFixed(2)}");
print("Novo saldo de ${contaMatheus.titular}: R\$${contaMatheus.saldo.toStringAsFixed(2)}");
print("");

}

