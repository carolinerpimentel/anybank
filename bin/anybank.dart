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

receber(contaMatheus, 500);
receber(contaRoberta, 3000);

print("Novo saldo de ${contaRoberta.titular}: R\$${contaRoberta.saldo.toStringAsFixed(2)}");
print("Novo saldo de ${contaMatheus.titular}: R\$${contaMatheus.saldo.toStringAsFixed(2)}");
print("");

}

void receber(Conta conta, double valor){
  conta.saldo += valor;
}

void enviar(Conta conta, double valor){
  conta.saldo -= valor;
}

class Conta{
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

}