const dados = require('./listaPessoa.json');

function maiorAltura(){
  let maior_altura = dados[1].altura;
  for(var i=0; i<dados.length; i++){
    if(dados[i].altura > maior_altura){
      maior_altura = dados[i].altura;
    }
  }
  return maior_altura;
}

function menorAltura(){
  let menor_altura = dados[1].altura;
  for(var i=0; i<dados.length; i++){
    if(dados[i].altura < menor_altura){
      menor_altura = dados[i].altura
    }
  }
  return menor_altura;
}

function mediaAlturaMulheres(){
  let somaAltura = 0;
  for(var i = 0; i<dados.length; i++){
    somaAltura += parseInt(dados[i].altura);
  }
  let media_altura_mulheres = somaAltura / dados.length;
  return media_altura_mulheres; 
}

function qtdHomens(){
  let contaHomens = 0;
  for(var i=0; i<dados.length; i++){
    if(dados[i].sexo == "M"){
      contaHomens++;
    }
  }
  return contaHomens;
}

console.log("Maior altura: ", maiorAltura());
console.log("Menor altura: ", menorAltura());
console.log("Media altura mulheres: ", mediaAlturaMulheres())
console.log("Quantidade de homens: ", qtdHomens())

