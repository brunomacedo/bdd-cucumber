const assert = require('assert');
const { Given, When, Then } = require('cucumber');

Given('uma guia existente', () => {
  return true;
});

// Scenario: Busca por número
When('um número é enviado', () => {
  return true;
});

// Scenario: Busca por nome
When('um nome é enviado', () => {
  return true;
});

Then('retorna o registro com os dados da guia', () => {
  return true;
});
