import 'package:flutter_app_01/model/paciente.dart';

class PacienteDAO{
    static final List<Paciente> _pacientes = []; 

    static const String _nomeTabela = 'paciente';
    static const String _col_id = 'id';
    static const String _col_nome = 'nome';
    static const String _col_email = 'email';
    static const String _col_cartao = 'cartao';

    /*static const String sqlTabelaPaciente = 'CREATE TABELA $_nomeTabela'('
    '$_col_id INTEGER PRIMARY KEY, '
    '$_col_nome TEXT , '
    '$_col_email TEXT , '
    '$_col_cartao TEXT,'
    ';)*/

  
   static adicionar(Paciente p){
        _pacientes.add(p);
       /* final Database db = await getDatabase();
        await db.insert(_nomeTabela, p.toMap();)*/
    }

    static get listarPacientes{
        return _pacientes;
    }

}