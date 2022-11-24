const formulario = document.querySelector("#indicacoes");

formulario.onsubmit = evento => {
    //receber o valor do campo nome
    var nome = document.querySelector("#nome").value;

    //verificar campo vazio
    if(nome === ""){
        evento.preventDefault();
        document.getElementById("msgAlerta").innerHTML = "<p style = 'color: #f00' >Erro: necessário preencher o campo nome do filme!</p>";
        return;
    }

    //receber o valor do campo data
    var data = document.querySelector("#data").value;

    //verificar campo vazio
    if(data === ""){
        evento.preventDefault();
        document.getElementById("msgAlerta").innerHTML = "<p style = 'color: #f00' >Erro: necessário informar data de lançamento do filme!</p>";
        return;
    }

    //receber a selecao campo genero
    var genero = document.querySelector("#genero").value;

    //verificar campo vazio
    if(genero === ""){
        evento.preventDefault();
        document.getElementById("msgAlerta").innerHTML = "<p style = 'color: #f00' >Erro: necessário selecionar gênero do filme!</p>";
        return;
    }
   
}