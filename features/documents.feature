# language: pt
Funcionalidade: Gerenciar documentos
  Como secretaria de um consultório odontológico
  Eu quero listar de forma categorizada todas as guias de tratamento (GTO)
  Para que eu consiga visualizar com clareza quantas guias foram geradas, enviadas, pagas e glosadas

  Contexto:
    Dado uma guia gerada

  Esquema do Cenario: documentos existentes
    Quando selecionado um período de tempo
    Mas não houver falha na conexão
    Então visualizo todas as guias com o status "<status>"

    Exemplos:
      | gtoId | customerName | status   |
      | 1     | Maria        | gerada   |
      | 2     | João         | enviada  |
      | 3     | Sandra       | paga     |
      | 4     | José         | glosada  |

  Cenario: documentos inexistentes
    Quando selecionado um período de tempo
    E não existir guias para o período
    Mas não houver falha na conexão
    Então visualizo a mensagem "Não existe registo para o período selecionado."

  Cenario: falha na conexão
    Quando selecionado um período de tempo
    E houver alguma falha de comunicação com a base de dados
    Então visualizo a mensagem "Falha de conexão, repita a operação."
