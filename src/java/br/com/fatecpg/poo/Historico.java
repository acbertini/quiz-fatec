package br.com.fatecpg.poo;

import java.util.HashMap;

/**
 *
 * @author AnaBertini
 */
public class Historico {
    private static HashMap<Usuario, Quiz> historico;
    
    public void addHistorico(Usuario user, Quiz quiz){
        historico = new HashMap<>();
        historico.put(user, quiz);
    }

//    public String nomeUsuario(String nome){
//        historico.keySet(nome);
//    }
}
