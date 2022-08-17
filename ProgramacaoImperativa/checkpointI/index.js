const readlineSync = require('readline-sync');


const queimou = "Sua comida queimou!!!";
const insuficiente = "Tempo insuficiente";
const explosion = "kabumm";
const sucess = "Prato pronto, bom apetite!!!";
const faill = "Prato inexistente";

console.log(`
  1 - Pipoca
  2 - Macarrão
  3 - Carne 
  4 - Feijão
  5 - Brigadeiro 
`);



function tempoF(tempoPadrao, tempoPersonalizado){
  if(tempoPersonalizado > (2 * tempoPadrao ) && tempoPersonalizado < (3*tempoPadrao)){
    console.log(queimou);
  }else if (tempoPersonalizado < tempoPadrao){
    console.log(insuficiente);
  }else if (tempoPersonalizado >= (3*tempoPadrao)){
    console.log(explosion);
  }else{
    console.log(sucess);
  }
}

function vazio(tempo){
  if (tempo == '' || tempo == null){
    return true;
  }else{
    return false;
  }
}

function microondas(opcao, tempo){
  
  if((opcao == '01' || opcao == '1')){
    if(vazio(tempo)){
      tempoF(10,10);
    }else{
      tempoF(10,tempo);
    }
  }else if(opcao == '02' || opcao == '2'){
    if(vazio(tempo)){
      tempoF(8,8);
    }else{
      tempoF(8,tempo);
    }
  }else if(opcao == '03' || opcao == '3'){
    if(vazio(tempo)){
      tempoF(15,15);
    }else{
      tempoF(15,tempo);
    }
  }else if(opcao == '04' || opcao == '4'){
    if(vazio(tempo)){
      tempoF(12,12);
    }else{
      tempoF(12,tempo);
    }
  }else if(opcao == '05' || opcao == '5'){
    if(vazio(tempo)){
      tempoF(8,8);
    }else{
      tempoF(8,tempo);
    }
  }else{
    console.log(faill);
  }
  
}

let opcao = readlineSync.question("Escolha uma opcao: ");
let tempo = readlineSync.questionInt("Tempo: "); // Enter = Padrão


microondas(opcao, tempo);