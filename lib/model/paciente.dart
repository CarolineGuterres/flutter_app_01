class Paciente{

    int _id; //undeline transforma variável em privado
    String _nome;
    String _email;
    String _cartao;

    Paciente(this._id, this._nome, this._email, this._cartao,); //método construtor 
    
    int get id{
        return this._id;
    }

    String get nome{
        return this._nome;
    }

    String get email{
        return this._email;
    }

    String get cartao{
        return this._cartao;
    }

}