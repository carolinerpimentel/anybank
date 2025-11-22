class Conta{
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor){ 
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor){

    if(valor < _saldo){
      _saldo -= valor;

      imprimeSaldo();

    } else {
      print("Saldo insuficiente!");
    }
  }

  void imprimeSaldo(){
    print("");
    print("O valor do saldo de $titular é R\$${_saldo.toStringAsFixed(2)}");
  }
}

class ContaCorrente extends Conta{

  ContaCorrente(super.titular, super._saldo);
}

class ContaPoupanca extends Conta{

  ContaPoupanca(super.titular, super._saldo);
}