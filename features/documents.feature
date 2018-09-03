# language: pt
Funcionalidade: Gerenciar documentos
  Como secretaria quero visualizar de forma categorizada as guias de Tratamento odontológicos (GTO). Para que eu consiga visualizar com clareza quantas guias foram geradas, enviadas, pagas e glosadas.

  Contexto:
    Dado uma guia gerada

  Esquema do Cenario: documentos existentes
    Quando selecionado um período de tempo
    Entao visualizo todas as guias com o status <status>

    Exemplos:
      | gtoId | customerName | status   |
      | 1     | Maria        | gerada   |
      | 2     | João         | enviada  |
      | 3     | José         | glosada  |

  Cenario: documentos inexistentes
    Quando selecionado um período de tempo
    E não existir guias para o período
    Mas não houver falha na conexão
    Entao visualizo a mensagem "Não existe registo para o período selecionado."

  Cenario: falha na conexão
    Quando selecionado um período de tempo
    E houver alguma falha de comunicação com a base de dados
    Entao visualizo a mensagem "Falha de conexão, repita a operação."
