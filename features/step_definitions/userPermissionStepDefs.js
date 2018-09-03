const assert = require('assert');
const { Given, When, Then } = require('cucumber');

Given('credenciais do usuário', () => {
  return true;
});

When('verifica as permissões', () => {
  return true;
});

Then('exibe a tela de permissão', () => {
  return true;
});

Then('exibe a mensagem {string}', (expectedAnswer) => {
  assert.equal('Acesso não permitido.', expectedAnswer);
});
