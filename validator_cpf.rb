require 'validates_cpf_cnpj'

print 'Digite seu CPF: '
cpf = gets.chomp

def cpf_valido?(cpf)
    cpf = cpf.gsub(/\D/, '')
        return false unless cpf.length == 11
        return false if cpf.chars.uniq.length == 1
            soma = 0
                10.downto(2) do |i|
            soma += cpf[10 - i].to_i * i
end
    resto = soma % 11
        digito1 = (resto < 2) ? 0 : 11 - resto
        return false if cpf[9].to_i != digito1
            soma = 0
                11.downto(2) do |i|
            soma += cpf[11 - i].to_i * i
end
    resto = soma % 11
        digito2 = (resto < 2) ? 0 : 11 - resto
        return false if cpf[10].to_i != digito2
    true
end

  if cpf_valido?(cpf)
    puts "O CPF #{cpf} é válido."
  else
    puts "O CPF #{cpf} é inválido."
  end