function podeSubir(altura, acompanhada){
  if(altura >= 1.40 && altura < 2){
    console.log("Acesso autorizado");
  }else if(altura < 1.40 && altura > 1.20 && acompanhada == 'sim'){
    return ;
  }else if(altura < 1.40 && altura > 1.20 && acompanhada == 'nao'){
    console.log("Acesso autorizado somente com acompanhante")
  }else{
    console.log("Acesso negado.")
  }

}
console.log(podeSubir(1.20, 'sim'));