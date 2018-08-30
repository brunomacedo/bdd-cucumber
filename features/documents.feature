Feature: Gerenciar documentos
  Como secretaria quero visualizar de forma categorizada as guias de Tratamento odontológicos (GTO). Para que eu consiga visualizar com clareza quantas guias foram geradas, enviadas, pagas e glosadas.

  Scenario: documentos existentes
    Given uma guia gerada
    When selecionado um período de tempo
    Then visualizo todas as guias "geradas"

  Scenario: documentos inexistentes
    Given uma guia gerada
    When selecionado um período de tempo
    And não existir guias para o período
    Then visualizo a mensagem "Não existe registo para o período selecionado."

  Scenario: falha na conexão
    Given uma guia gerada
    When selecionado um período de tempo
    And houver alguma falha de comunicação com a base de dados
    Then visualizo a mensagem "Falha de conexão repita a operação."