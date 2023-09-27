/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package utilitarios;

/**
 *
 * @author genario.junior
 */
import java.util.ArrayList;
import java.util.Iterator;

public class TamanhoDataValidador {

    private String DATAINICIAL;
    private String DATAFINAL;
    private ArrayList<String> listaErro;

    public TamanhoDataValidador() {
    }

    public TamanhoDataValidador(String DATAINICIAL, String DATAFINAL) {
        this.listaErro = new ArrayList<String>();
        this.setDtInicial(DATAINICIAL);
        this.setDtFinal(DATAFINAL);

        validaCamposObrigatorios();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("");
        try {
            Iterator it = this.listaErro.iterator();
            while (it.hasNext()) {
                sb.append(it.next().toString());
                sb.append("<br>");
            }
        } catch (Exception e) {
        }
        return sb.toString();
    }

    public ArrayList getListaErro() {
        return listaErro;
    }

    public void setDtInicial(String DATAINICIAL) {
        this.DATAINICIAL = DATAINICIAL;
    }

    public String getDtInicial() {
        return DATAINICIAL;
    }

    public void setDtFinal(String DATAFINAL) {
        this.DATAFINAL = DATAFINAL;
    }

    public String getDtFinal() {
        return DATAFINAL;
    }

    /**
     *  isValid verifica se ocorreu algum erro.
     */
    public boolean isValid() {
        if (this.toString().length() <= 0) {
            return true;
        } else {
            return false;
        }
    }

    public void validaCamposObrigatorios() {
        if (this.getDtInicial().length() < 10) {
            listaErro.add("Data Inicial - Campo Inválido");
        }
        if (this.getDtFinal().length() < 10) {
            listaErro.add("Data Final - Campo Inválido");
        }
    }
}
