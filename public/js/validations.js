validationBtn = function (event){

    var r = confirm("Deseja realmente solicitar esse equipamento?")
    if(r==true){
        return true
    }
    return false
}
loanBtn = function(event){
    var r = confirm("Deseja realmente realizar o emprestimo desse equipamento?")
    if(r==true){
        return true
    }
    return false
}

returnBtn = function(event){
    var r = confirm("Deseja realmente realizar a devolução desse equipamento?")
    if(r==true){
        return true
    }
    return false
}

