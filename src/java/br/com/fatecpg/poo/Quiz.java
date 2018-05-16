package br.com.fatecpg.poo;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author AnaBertini
 */
public class Quiz {

    private Date dataRealizacao;
    private Usuario user;
    private static ArrayList<Questao> questoes = new ArrayList<Questao>() {
        {
            add(new Questao("pergunta1", "resposta", new String[]{"resposta", "alt2", "alt3", "alt4"}));
            add(new Questao("pergunta2", "resposta", new String[]{"resposta", "alt2", "alt3", "alt4"}));
            add(new Questao("pergunta3", "resposta", new String[]{"resposta", "alt2", "alt3", "alt4"}));
            add(new Questao("pergunta4", "resposta", new String[]{"resposta", "alt2", "alt3", "alt4"}));
            add(new Questao("pergunta5", "resposta", new String[]{"resposta", "alt2", "alt3", "alt4"}));
        }
    };
    private double pontuacao;

    public Quiz(Date dataRealizacao, Usuario user) {
        this.dataRealizacao = dataRealizacao;
        this.user = user;
    }

    public ArrayList<Questao> getQuestoes() {
        return questoes;
    }

    public Date getDataRealizacao() {
        return dataRealizacao;
    }

    public Usuario getUser() {
        return user;
    }

    public double getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(double pontuacao) {
        this.pontuacao = pontuacao;
    }

}
