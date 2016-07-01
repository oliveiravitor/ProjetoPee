/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package timeopenprocess;

import java.io.IOException;

/**
 *
 * @author oliveira <your.name at your.org>
 */
public class TimeOpenProcess {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        long start = System.currentTimeMillis();
        Process p;

        try {
//executar rotina de backup 
            p = Runtime.getRuntime().exec("libreoffice --writer /home/kazakh/Documentos/Teste1.docx");
            p.waitFor(); // espera pelo processo terminar // ....

            long finish = System.currentTimeMillis() - start;
// calculando o tempo gasto para ordenação 
            double total = (double) finish / 1000;
            System.out.println("tempo para Abrir em : " + total);
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

}
