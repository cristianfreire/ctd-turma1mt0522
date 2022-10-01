const dados = require('./listaPessoa.json');


let contador = 0;
let media = dados.reduce(function(somaIdade, elemento){
  if(elemento.avaliacao == 3){
    contador = contador + 1;
    return somaIdade + elemento.idade;
  }else{
    return somaIdade;
  }
}, 0)

let contadorRegular = 0;
let contaRegular = dados.filter((elemento) => {
  if(elemento.avaliacao == 1){
    contadorRegular +=1;
    return elemento;
  }
 
})

let contadorPessoasBom = 0;
let qtdPessoasBom = dados.reduce((teste, elemento) => {
  if(elemento.avaliacao == 2){
    contadorPessoasBom = contadorPessoasBom + 1;
    return teste + elemento.avaliacao ;
  }else{
    return teste;
  }
})



console.log("Média das idades com nota 3: ", (media/contador));
console.log("Quantidade de votos regular: ", contadorRegular);
console.log("Porcentagem das pessoas que votaram bom: ",dados.length/(contadorPessoasBom*100)+"%");