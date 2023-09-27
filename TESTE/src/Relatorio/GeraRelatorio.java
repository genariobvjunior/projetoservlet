package Relatorio;

import java.io.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.*;
import javax.servlet.http.*;

import SEG.conexao.JdbcConnectionPool;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRCsvExporter;
import net.sf.jasperreports.engine.export.JRHtmlExporter;
import net.sf.jasperreports.engine.export.JRHtmlExporterParameter;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.export.JRRtfExporter;
import net.sf.jasperreports.engine.export.JRTextExporter;
import net.sf.jasperreports.engine.export.JRXlsExporter;
import net.sf.jasperreports.engine.export.JRXmlExporter;
import net.sf.jasperreports.engine.util.JRLoader;


public class GeraRelatorio extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
    	JdbcConnectionPool connectionPool = null;
    	
    	String modelo;
        Map parametros = new HashMap();
        byte[] output = null;
        String tipo = null;
        tipo = (String) request.getParameter("tipo");      // Envia o tipo do relatorio(pdf/html/xls...)
        modelo = (String) request.getAttribute("modelo");   // Nome do Template Jasper
        parametros = (Map) request.getAttribute("parametros");  // Parâmetros da query

        Connection connection = null;
        
        try {
        	connectionPool = new JdbcConnectionPool();
            
        	connection = connectionPool.getConnection();
            
            if (tipo == null) {
                tipo = "pdf";
            }

                      JasperReport jReport = (JasperReport) JRLoader.loadObjectFromLocation(modelo);

            JasperPrint jPrint
                    = JasperFillManager.fillReport(
                            (JasperReport) JRLoader.loadObjectFromLocation(modelo), parametros, connection);

            JRExporter exporter = null;
            response.setContentType("iso-8859-1");

            if (tipo.equals("pdf")) {
                response.setContentType("application/pdf");
                exporter = new JRPdfExporter();               
            }
            if (tipo.equals("html")) {
                response.setContentType("text/html");
                exporter = new JRHtmlExporter();
            }
            if (tipo.equals("cvs")) {
                response.setContentType("text/plain");
                exporter = new JRCsvExporter();
            }
            if (tipo.equals("xls")) {
                response.setContentType("application/octet-stream");
                exporter = new JRXlsExporter();
            }
            if (tipo.equals("xml")) {
                response.setContentType("text/plain");
                exporter = new JRXmlExporter();
            }
            if (tipo.equals("doc")) {
                response.setContentType("application/msword");
                exporter = new JRRtfExporter();
            }
            if (tipo.equals("txt")) {
                response.setContentType("text/plain");
                exporter = new JRTextExporter();
            }

            Map imagesMap = new HashMap();
            request.getSession().setAttribute("IMAGES_MAP", imagesMap);
            exporter.setParameter(JRHtmlExporterParameter.IMAGES_MAP, imagesMap);
            exporter.setParameter(JRHtmlExporterParameter.IMAGES_URI, "img/");

            output = exportReportToBytes(jPrint, exporter);

            request.setAttribute("relbytes", output);

            response.addHeader("Content-Disposition", "inline; filename="
                    + new File(modelo).getName().replace(".jasper", ".pdf"));

            response.setContentLength(output.length);
            ServletOutputStream ouputStream;
            ouputStream = response.getOutputStream();
            ouputStream.write(output);
            ouputStream.flush();
            ouputStream.close();
        } catch (Exception e) {
           throw  new ServletException(e);
        } 
        finally{
            try {
            	if (connection != null) {
    				connectionPool.releaseConnection(connection);
    			}
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        doPost(request, response);               // Processa a requisição...
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>

    private byte[] exportReportToBytes(JasperPrint jasperPrint, JRExporter exporter) throws JRException {
        byte[] output;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();

        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, baos);

        exporter.exportReport();

        output = baos.toByteArray();

        return output;
    }

}
