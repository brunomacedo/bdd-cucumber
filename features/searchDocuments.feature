# language: pt
Funcionalidade: Busca amigável de documentos
  Como secretária de um consultório odontológico
  Eu quero encontrar uma GTO por número (ID) ou nome de pacientes
  Para que eu consiga visualizar as informações da GTO

  Contexto:
    Dado uma guia existente

  Cenário: Busca por número
    Quando um número é enviado
    Então retorna o registro com os dados da guia

  Cenário: Busca por nome
    Quando um nome é enviado
    Então retorna o registro com os dados da guia

  # Cenário: Guia não existente
  #   Quando envio o número de pesquisa
  #   Então envia mensagem "Registro não existe!"