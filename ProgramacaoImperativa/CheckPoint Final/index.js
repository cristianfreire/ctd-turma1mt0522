





const curso = {

  // Crie uma função construtora Aluno que tenha como atributos: nome (string), 
  // quantidade de faltas (number) e notas (array de números). 
  aluno:[],
  adicionaAluno(nome, qtdFaltas, notas){

    const novoAluno = {
      nome,
      qtdFaltas,
      notas,
      // Na função construtora crie o método calcularMedia que retorna 
      // a média de suas notas. Também terá um método chamado faltas, 
      // que simplesmente aumenta o número de faltas em 1. 
      // Crie alguns alunos para testar a sua função construtora. 
      calcularMedia(){
        let soma = 0;
        for(let i=0; i<notas.length; i++){
          soma += notas[i];
        }
        return (soma/this.notas.length);
      }
    }

    this.aluno.push(novoAluno);
  },


  // crie o objeto literal curso que tem como atributos: nome do curso (string), 
  // nota de aprovação (number), faltas máximas (number) e uma lista de estudantes 
  // (um array composto pelos alunos criados no passo 2).
  estudantes:[],
  adicionaAlunoCurso(nomeCurso, notaAprovacao, faltaMaxima, listaEstudantes ){
    const novoEstudante = {
      nomeCurso,
      notaAprovacao,
      faltaMaxima,
      listaEstudantes,

      // Crie um método para o objeto curso que receba um aluno (como parâmetro) 
      // e retorne true se ele aprovou no curso ou false em caso de reprovação.
      aprovado(){
        if(listaEstudantes.calcularMedia() >= notaAprovacao && listaEstudantes.qtdFaltas < faltaMaxima ){
          return true;
        }else{
          if(listaEstudantes.qtdFaltas == faltaMaxima && notaAprovacao < listaEstudantes.calcularMedia()+(listaEstudantes.calcularMedia()*0.1) ){
            return true;

          }else{
            return false;

          }
        }
      }
      
    }

    this.estudantes.push(novoEstudante);
  },


  // Crie um método para o objeto curso que percorra a lista de estudantes e retorne um array de booleanos
  // com os resultados se os alunos aprovaram ou não. 
  aprovados:[], 
  verificaAprovados(){
    for(let i = 0; i < this.estudantes.length; i++){
      this.aprovados.push(this.estudantes[i].aprovado());
    }
    return this.aprovados;
  }




}







curso.adicionaAluno('Aluno1', 3, [10, 10, 10]);
curso.adicionaAluno('Aluno2', 2, [9, 6, 10]);
curso.adicionaAluno('Aluno3', 1, [0, 5, 7]);
curso.adicionaAluno('Aluno4', 5, [6, 1, 10]);

curso.adicionaAlunoCurso("Curso1", 7, 4, curso.aluno[0]);
curso.adicionaAlunoCurso("Curso2", 6, 7, curso.aluno[1]);
curso.adicionaAlunoCurso("Curso3", 4, 4, curso.aluno[2]);
curso.adicionaAlunoCurso("Curso4", 10, 7, curso.aluno[3]);

console.log("Média da nota: " + curso.aluno[0].calcularMedia());
console.log("Aprovado: "+ curso.estudantes[0].aprovado());
console.log("Array de Aprovados: " + curso.verificaAprovados());


