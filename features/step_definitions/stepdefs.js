const assert = require('assert');
const { Given, When, Then } = require('cucumber');

function generated() {
  return 'geradas';
}

function notExist() {
  return 'Não existe registo para o período selecionado.';
}

function failedConection() {
  return 'Falha de conexão repita a operação.';
}

Given('uma guia gerada', function () {
  this.guia = 'gerada';
});

When('selecionado um período de tempo', function () {
  this.actualAnswer = generated(this.guia);
});

Then('visualizo todas as guias {string}', function (expectedAnswer) {
  assert.equal(this.actualAnswer, expectedAnswer);
});

Then('não existir guias para o período', function () {
  this.actualAnswer = notExist(this.guia);
});

When('houver alguma falha de comunicação com a base de dados', function () {
  this.actualAnswer = failedConection(this.guia);
});

Then('visualizo a mensagem {string}', function (expectedAnswer) {
  assert.equal(this.actualAnswer, expectedAnswer);
});