const assert = require('assert');
const { Given, When, Then } = require('cucumber');

Given('uma guia gerada', () => {
  return true;
});
When('selecionado um período de tempo', () => {
  return true;
});
Then(`visualizo todas as guias com o status gerada`, () => {
  return true;
});
Then(`visualizo todas as guias com o status enviada`, () => {
  return true;
});
Then(`visualizo todas as guias com o status paga`, () => {
  return true;
});
Then(`visualizo todas as guias com o status glosada`, () => {
  return true;
});

// Casos
Then('não existir guias para o período', () => {
  this.actualAnswer = 'Não existe registo para o período selecionado.';
});

Then('visualizo a mensagem {string}', (expectedAnswer) => {
  assert.equal(this.actualAnswer, expectedAnswer);
});

When('não houver falha na conexão', function () {
  return true;
});

When('houver alguma falha de comunicação com a base de dados', () => {
  this.actualAnswer = 'Falha de conexão, repita a operação.';
});
