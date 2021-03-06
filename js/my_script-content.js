$(".categorias").hide();

/*

// --------------------- PREENCHE CATEGORIAS --------------------- 
$(".categoria-resumo").each(function() {
    
    var categoria_atual = $(this).find("h2").text();
    
    $(".resumo-"+categoria_atual).find(".sub_categoria-resumo").each(function() {

        var sub_categoria_atual = $(this).find(".nome_sub_categoria").attr("name");
        
        $(".content-"+sub_categoria_atual).each(function(){    
            var valor       = $(this).find(".valor").attr("value");
            var descricao   = $(this).find(".descricao").text();
            //alert("sub-categoria: " + $(this).attr("class") + " valor: " + valor + " descrição: " + descricao);
            $(".sub_resumo-"+sub_categoria_atual).find("table.content").append(
                "<tr><td class='descricao'>" + descricao + "</td><td class='valor'>" + valor + "</td></tr>"
            );     
        })
    })
})

// --- CALCULA SUB CATEGORIA --- 

$(".sub_categoria-resumo").each(function() {
    
    var total_sub_categoria = 0;
    
    $(this).find(".valor").each(function(){     
        var valor = $(this).text();
        total_sub_categoria = parseFloat(valor) + total_sub_categoria;
    })
    
    if(total_sub_categoria != 0){$(this).find(".valor-total-sub_categoria").text(total_sub_categoria);}
    
})


// --- CALCULA CATEGORIA --- 
$(".categoria-resumo").each(function() {
    
    var total_categoria = 0
    
    $(this).find(".valor-total-sub_categoria").each(function() {    
        var valor = $(this).text();
        
        if(valor != 0){total_categoria = parseFloat(valor) + total_categoria;}
    })
    
    if(total_categoria != 0){$(this).find(".valor-total-categoria").text(total_categoria);}
})

*/

// --------------------- VIEW ------------------- 
for(var sh=1;sh<=6;sh++){
    var altura = 0;
    $(".semana_mes-"+sh).each(function() {
        var altura_nova = $(this).closest(".dia").height();

        if(altura_nova > altura){
            altura = altura_nova;
        }
        
    });
    $(".semana_mes-"+sh).closest(".dia").css("height",altura+"px");
}

// ----- Novas Categorias / SubCategorias
var mostra_categorias = function(){
    $(".categorias").slideDown(600);
    $(".mostra-categoria").addClass("view");
    $(".mostra-categoria").hide();
    $(".oculta-categoria").show();
};

var oculta_categorias = function(){
    $(".categorias").slideUp(600);
    $(".mostra-categoria").removeClass("view");
    $(".mostra-categoria").show();
    $(".oculta-categoria").hide();
};

// ---------------------- SALDO DIA -----------------
var saldo_anterior = $(".saldo-anterior").attr("value");
var dia = $(".saldo-dia").find("input").attr("value");
var saldo_dia = 0;

$(".dia").each(function() {
    
    var dia_for = $(this).find("table").attr("name");

    if(parseInt(dia_for) <= parseInt(dia)){
    
        $(this).find(".valor").each(function(){     
            var valor = $(this).attr("value"); 
            saldo_dia = parseFloat(valor) + parseFloat(saldo_dia);
        })
    }
})

saldo_dia = parseFloat(saldo_dia) + parseFloat(saldo_anterior);

if(parseInt(saldo_dia) < 0){
    $(".saldo-dia").find("span").addClass("negativo");
    $(".saldo-dia").find("span").removeClass("positivo");
}
else{
    $(".saldo-dia").find("span").addClass("positivo");
    $(".saldo-dia").find("span").removeClass("negativo");
}

$(".saldo-dia").find("span").text(formatarReal(saldo_dia));

var atualiza_saldo_dia = function(){
	
    var saldo_dia = 0;
    var dia = $(this).val();
    
    $(".dia").each(function() {
    
        var dia_for = $(this).find("table").attr("name");
        
        if(parseInt(dia_for) <= parseInt(dia)){
            
            $(this).find(".valor").each(function(){     
                var valor = $(this).attr("value"); 
                saldo_dia = parseFloat(valor) + parseFloat(saldo_dia);
            })
        }
    })
    
    saldo_dia = parseFloat(saldo_dia) + parseFloat(saldo_anterior);
    
    if(parseInt(saldo_dia) < 0){
        $(".saldo-dia").find("span").addClass("negativo");
        $(".saldo-dia").find("span").removeClass("positivo");
    }
    else{
        $(".saldo-dia").find("span").addClass("positivo");
        $(".saldo-dia").find("span").removeClass("negativo");
    }
    
    $(".saldo-dia").find("span").text(formatarReal(saldo_dia));
    
}

// ------------------------- MODAL TRANSACAO -------------------
var base_url = $(".base_url").attr("href");
$(".adiciona-categoria").hide();
$(".adiciona-sub_categoria").hide();

var adiciona_transacao = function(){
    var dia = $(this).closest("table").attr("name");
    var total_salario  = $(".resumo-Salário").find(".valor-total-categoria").text();
    
    $(".modal-adiciona").find(".dia-add").attr("value",dia);
    $(".modal-adiciona").find(".total_salario").attr("value",total_salario);
};

var AlteraCategoria = function(){
    
    var categoria_selecionada = $(this).val();
    
    if(categoria_selecionada == "nova-categoria"){
        /*$(".adiciona-categoria").slideDown();
        
        var nova_categoria = $(".adiciona-categoria").find("input").val();
    
        if(nova_categoria != ""){
            $("select.categoria-sub").append("<option value='categoria-nova'>"+nova_categoria+"</option>");
        }

        if(valor == "nova-sub_categoria"){$(".adiciona-sub_categoria").slideDown();}*/
    }
    else{
        $(".option_SubCategoria").each(function() {
    
            var id_categoria = $(this).attr("name");

            if(id_categoria != categoria_selecionada){
                $(this).hide();
            }
            else{
                $(this).show();
            }
        })
    }
    
};

// -------------------------------- PREENCHE MODAL - EDICAO TRANSACAO -----------------------------
var edita_transacao = function(){
    
    var id              = $(this).find(".id").text();
    var type            = $(this).find(".type").text();
    var dia             = $(this).find(".dia-atual").text();
    var categoria       = $(this).find(".categoria").text();
    var categoria_id    = $(this).find(".categoria").attr("value");
    var sub_categoria   = $(this).find(".sub_categoria").text();
    var sub_categoria_id= $(this).find(".sub_categoria").attr("value");
    var descricao       = $(this).find(".descricao").attr("value");
    var valor           = $(this).find(".valor").text();
    var totalParcelas   = $(this).find(".p_total-atual").text();
    
    var ano = $(".modal-edita").find(".ano-edit").attr("value");
    var mes = $(".modal-edita").find(".mes-edit").attr("value");
    
    $(".modal-edita").find(".id-edit").attr("value",id);
    $(".modal-edita").find(".dia-edit").attr("value",dia);
    $(".modal-edita").find(".categoria-atual").val(categoria_id).change();
    $(".modal-edita").find(".sub_categoria-atual").val(sub_categoria_id).change();
    $(".modal-edita").find(".descricao-atual").attr("value",descricao);
    $(".modal-edita").find(".valor-atual").attr("value",valor);
    $(".modal-edita").find(".p-total-atual").attr("value",totalParcelas);
    $(".modal-edita").find(".link-delete").attr("href",base_url+"adm_crud/transacao_delete/"+ano+"/"+mes+"/"+id);
    $(".modal-edita").find(".link-update").attr("action",base_url+"adm_crud/transacao_update/"+ano+"/"+mes+"/"+id);
    
	$('.p-total-atual').attr("disabled", true);
    $('.p-total-atual').css("background-color", "#cccccc"); 
};

// -------------------------------- PREENCHE MODAL - EDICAO TRANSACAO -----------------------------
var edita_fatura = function(){
    var id              = $(this).find(".id").text();
    var type            = $(this).find(".type").text();
    var categoria       = $(this).find(".categoria").text();
    var categoria_id    = $(this).find(".categoria").attr("value");
    var sub_categoria   = $(this).find(".sub_categoria").text();
    var sub_categoria_id= $(this).find(".sub_categoria").attr("value");
    var descricao       = $(this).find(".descricao").attr("value");
    var valor           = $(this).find(".valor").attr("value");
    
    var ano = $(".modal-cartao-edit").find(".ano").attr("value");
    var mes = $(".modal-cartao-edit").find(".mes").attr("value");

    $(".modal-cartao-edit").find(".categoria-atual").attr("value",categoria_id);
    $(".modal-cartao-edit").find(".categoria-atual").text(categoria);
    $(".modal-cartao-edit").find(".sub_categoria-atual").attr("value",sub_categoria_id);
    $(".modal-cartao-edit").find(".sub_categoria-atual").text(sub_categoria);
    $(".modal-cartao-edit").find(".descricao").attr("value",descricao);
    $(".modal-cartao-edit").find(".valor").attr("value",valor);
    $(".modal-cartao-edit").find(".link-delete").attr("href",base_url+"adm_crud/cartao_delete/"+ano+"/"+mes+"/"+id);
    $(".modal-cartao-edit").find(".link-update").attr("action",base_url+"adm_crud/cartao_update/"+ano+"/"+mes+"/"+id);
    
};

// -------------- FORMATACAO REAL ----------------------
function formatarReal(mixed) {

    var int = parseInt(mixed.toFixed(2).toString().replace(/[^\d]+/g, ''));
    var tmp = int + '';
    tmp = tmp.replace(/([0-9]{2})$/g, ",$1");
    if (tmp.length > 6)
        tmp = tmp.replace(/([0-9]{3}),([0-9]{2}$)/g, ".$1,$2");
    
    if(parseFloat(mixed) < 0){
        tmp = "- "+tmp;    
    }
    
    return tmp;
}

// -------------- EVENTOS ----------------------
$(".content-day").on("click",edita_transacao);
$(".modal-adiciona").find("select").on("change",AlteraCategoria);
$(".mostra-categoria").on("click",mostra_categorias);
$(".oculta-categoria").on("click",oculta_categorias);
$("tr.data-day").on("click",adiciona_transacao);
$(".dia_change").on("change",atualiza_saldo_dia);
$(".content-fatura").on("click",edita_fatura);