import 'package:flutter_app_01/model/paciente.dart';

class PacienteDAO{
    static final List<Paciente> _pacientes = []; 
   // List<Paciente> _p = List<int>.empty(growable: true); // []
 
    static adicionar(Paciente p){
        _pacientes.add(p);
    }

    static get listarPacientes{
        return _pacientes;
    }

}