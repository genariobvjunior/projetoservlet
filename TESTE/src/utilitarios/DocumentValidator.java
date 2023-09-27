package utilitarios;

import java.util.InputMismatchException;

public class DocumentValidator {
    
    public static boolean validarCNPJ(String cnpj) {
        // Remove caracteres especiais da string
        cnpj = cnpj.replaceAll("[^0-9]+", "");
        
        // Verifica se o CNPJ possui 14 dígitos
        if (cnpj.length() != 14)
            return false;
        
        // Verifica se todos os dígitos são iguais
        if (cnpj.matches("(\\d)\\1*"))
            return false;
        
        try {
            // Calcula o primeiro dígito verificador
            int soma = 0;
            int peso = 2;
            for (int i = 11; i >= 0; i--) {
                int num = Character.getNumericValue(cnpj.charAt(i));
                soma += num * peso;
                peso++;
                if (peso > 9)
                    peso = 2;
            }
            int resto = soma % 11;
            int digito1 = resto < 2 ? 0 : 11 - resto;
            
            // Calcula o segundo dígito verificador
            soma = 0;
            peso = 2;
            for (int i = 12; i >= 0; i--) {
                int num = Character.getNumericValue(cnpj.charAt(i));
                soma += num * peso;
                peso++;
                if (peso > 9)
                    peso = 2;
            }
            resto = soma % 11;
            int digito2 = resto < 2 ? 0 : 11 - resto;
            
            // Verifica se os dígitos calculados são iguais aos dígitos informados
            if (digito1 == Character.getNumericValue(cnpj.charAt(12)) &&
                digito2 == Character.getNumericValue(cnpj.charAt(13)))
                return true;
            
        } catch (InputMismatchException e) {
            return false;
        }
        
        return false;
    }
    
    public static boolean validarCPF(String cpf) {
        // Remove caracteres especiais da string
        cpf = cpf.replaceAll("[^0-9]+", "");
        
        // Verifica se o CPF possui 11 dígitos
        if (cpf.length() != 11)
            return false;
        
        // Verifica se todos os dígitos são iguais
        if (cpf.matches("(\\d)\\1*"))
            return false;
        
        try {
            // Calcula o primeiro dígito verificador
            int soma = 0;
            int peso = 10;
            for (int i = 0; i < 9; i++) {
                int num = Character.getNumericValue(cpf.charAt(i));
                soma += num * peso;
                peso--;
            }
            int resto = soma % 11;
            int digito1 = resto < 2 ? 0 : 11 - resto;
            
            // Calcula o segundo dígito verificador
            soma = 0;
            peso = 11;
            for (int i = 0; i < 10; i++) {
                int num = Character.getNumericValue(cpf.charAt(i));
                soma += num * peso;
                peso--;
            }
            resto = soma % 11;
            int digito2 = resto < 2 ? 0 : 11 - resto;
            
            // Verifica se os dígitos calculados são iguais aos dígitos informados
            if (digito1 == Character
            		.getNumericValue(cpf.charAt(9)) &&
            		digito2 == Character.getNumericValue(cpf.charAt(10)))
            		return true;
        } catch (InputMismatchException e) {
            return false;
        }
        
        return false;
    }
    
    public static String formatarCNPJ(String cnpj) {
        // Remove caracteres especiais da string
        cnpj = cnpj.replaceAll("[^0-9]+", "");
        
        // Insere a máscara no CNPJ (99.999.999/9999-99)
        cnpj = cnpj.replaceFirst("(\\d{2})(\\d{3})(\\d{3})(\\d{4})(\\d{2})", "$1.$2.$3/$4-$5");
        
        return cnpj;
    }

    public static String formatarCPF(String cpf) {
        // Remove caracteres especiais da string
        cpf = cpf.replaceAll("[^0-9]+", "");
        
        // Insere a máscara no CPF (999.999.999-99)
        cpf = cpf.replaceFirst("(\\d{3})(\\d{3})(\\d{3})(\\d{2})", "$1.$2.$3-$4");
        
        return cpf;
    }
    
//    public static void main(String[] args) {
//        String cnpj = "48.691.104/0001-16";
//        String cpf = "789.661.594-00";
//        
//        if (DocumentValidator.validarCNPJ(cnpj)) {
//            System.out.println("CNPJ válido");
//        } else {
//            System.out.println("CNPJ inválido");
//        }
//        
//        if (DocumentValidator.validarCPF(cpf)) {
//            System.out.println("CPF válido");
//        } else {
//            System.out.println("CPF inválido");
//        }
//        
//        String cnpjFormatado = DocumentValidator.formatarCNPJ(cnpj);
//        String cpfFormatado = DocumentValidator.formatarCPF(cpf);
//        
//        System.out.println("CNPJ formatado: " + cnpjFormatado);
//        System.out.println("CPF formatado: " + cpfFormatado);
//    }
    
}    
    
    