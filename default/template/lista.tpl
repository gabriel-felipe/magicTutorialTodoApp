<?php echo $header ?>
<div class='central lista'>
<table>
    <thead>
        <tr class='highlight'>
        <td>Tarefa</td>
        <td>Excluir</td>
        </tr>

    </thead>
    <tbody>
        <?php foreach ($tarefas as $tarefa): ?>
            <tr data-tarefa-id="<?php echo $tarefa['task_id'] ?>">
               <td><?php echo $tarefa['titulo'] ?></td> 
               <td><button class="button-excluir" data-tarefa-id="<?php echo $tarefa['task_id'] ?>">Excluir</button></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<div class="error"></div>

<input type='text' placeholder='tarefa' id='add-tarefa' /><button class='button-add'>Adicionar</button>
<script>
    $(".error").hide();
    $(".error").click(function(){
        $(this).hide();
    });
    ajaxInsere = new majax;
    ajaxInsere.onSuccess = function(msg,data){
        $("#add-tarefa").val("");
        $("tbody").append("<tr data-tarefa-id=\""+data['id']+"\"><td>"+data.titulo+"</td><td><button class=\"button-excluir\" >Excluir</button>");
        $(".error").hide();
    }
    ajaxInsere.onFail    = function(msg,data){
        $(".error").html(msg);
        $(".error").fadeIn();
    }
    $(".button-add").click(function(){
        var titulo = $("#add-tarefa").val();
        ajaxInsere.post("common/tarefas/add",false,{"titulo":titulo});
    });
    $("#add-tarefa").keydown(function(e){
        if(e.which == '13'){
            $(".button-add").click();
        }
    })

    ajaxDelete = new majax;
    
    $("table").on("click",".button-excluir",function(){
        tid = $(this).parent().parent().data("tarefa-id");
        var obj = $(this).parent().parent();
        ajaxDelete.onSuccess = function(msg,data){
            obj.remove();
        }
        if(ajaxDelete.post("common/tarefas/destroy",false,{"tid":tid})){
            $(this).parent().parent().remove();
        }
    });
</script>
</div>
