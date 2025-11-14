class Conta{
  String titular;
  double _saldo;

  Conta(this.titular, this.saldo);

  void receber(double valor){
  saldo += valor;
  }

  void enviar(double valor){
  saldo -= valor;
  }
}