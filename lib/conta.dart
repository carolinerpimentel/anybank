class Conta{
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor){ 
    _saldo += valor;
  }

  void enviar(double valor){

    if(valor >= _saldo){
      _saldo -= valor;
    } else {
      print("Saldo insuficiente!");
    }
  }
}