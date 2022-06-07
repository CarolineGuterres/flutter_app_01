class Paciente{

    int _id; //urdeline transforma variável em privado
    String _nome;
    String _email;
    String _cartaoSus;
   // int _idade;
    String _senha;

    Paciente(this._id, this._nome, this._email, this._cartaoSus, this._senha); //método construtor 
    
    int get id{
        return this._id;
    }

    String get nome{
        return this._nome;
    }

    String get email{
        return this._email;
    }

    String get cartaoSus{
        return this._cartaoSus;
    }

    /*int get _idade{
        return this._idade;
    }*/

    String get senha{
        return this._senha;
    }
}