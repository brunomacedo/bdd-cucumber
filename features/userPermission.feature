# language: pt
Funcionalidade: Permissões de acesso
  Como administrador do sistema
  Eu quero controlar quem tem acesso as funcionalidades
  Para que eu consiga ter o controle de acesso de outros usuários

  Contexto:
    Dado credenciais do usuário
    Quando verifica as permissões

  Cenário: Usuário tem acesso a tela de permissões
    Então exibe a tela de permissão

  Cenário: Usuário não tem acesso a tela de permissões
    Então exibe a mensagem "Acesso não permitido."
