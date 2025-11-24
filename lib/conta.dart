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
  double emprestimo;

  ContaCorrente(super.titular, super._saldo, this.emprestimo){
    emprestimo = 300;
  }
}

class ContaPoupanca extends Conta{

  ContaPoupanca(super.titular, super._saldo);
}