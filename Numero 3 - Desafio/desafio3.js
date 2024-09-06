const faturamentoJson = require("fs");

//Desafio 3 - Calculo de Faturamento
faturamentoJson.readFile("dados.json", "utf8", (err, data) => {
  if (err) {
    console.error("Erro ao ler o arquivo:", err);
    return;
  }

  const faturamentos = JSON.parse(data);

  let menorValor = Infinity;
  let maiorValor = -Infinity;
  let soma = 0;
  let diasComFaturamento = 0;

  faturamentos.forEach((faturamento) => {
    const valor = faturamento.valor;
    if (valor > 0) {
      if (valor < menorValor) menorValor = valor;
      if (valor > maiorValor) maiorValor = valor;
      soma += valor;
      diasComFaturamento++;
    }
  });

  const mediaMensal = soma / diasComFaturamento;
  const diasAcimaDaMedia = faturamentos.filter(
    (faturamento) => faturamento.valor > mediaMensal
  ).length;

  console.log(`Menor valor de faturamento: ${menorValor}`);
  console.log(`Maior valor de faturamento: ${maiorValor}`);
  console.log(
    `Número de dias com faturamento acima da média: ${diasAcimaDaMedia}`
  );
});
