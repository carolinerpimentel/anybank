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
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);
    
  @override
  void enviar(double valor) {
    
    if(valor <= (_saldo + emprestimo)){
      _saldo -= valor;
      imprimeSaldo();
    } else {
        print("");
        print("Saldo insuficiente!");
        imprimeSaldo();
    }
  } 
}

class ContaPoupanca extends Conta{
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento(){

    _saldo += _saldo * rendimento;
  }
}