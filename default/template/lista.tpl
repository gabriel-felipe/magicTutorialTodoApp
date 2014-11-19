<?php echo $header ?>
<div class='central lista'>
<table>
    <thead>
        <tr class='highlight'>
        <td>Tarefa</td>
        <td>Excluir</td>
        </tr>

    </thead>
    <tbody class='lista-tarefas'>
        <tr data-id="id" class='tarefa'>
           <td>Título da Tarefa</td> 
           <td><button class="button-excluir" data-id="id">Excluir</button></td>
        </tr>
        <tr data-id="id" class='tarefa'>
           <td>Título da Tarefa</td> 
           <td><button class="button-excluir" data-id="id">Excluir</button></td>
        </tr>
        <tr data-id="id" class='tarefa'>
           <td>Título da Tarefa</td> 
           <td><button class="button-excluir" data-id="id">Excluir</button></td>
        </tr>
    </tbody>
</table>
<div class="error" style="display:none;"></div>
<form action="" id="tarefaForm">
    <input type='text' placeholder='tarefa' name='titulo' id='add-tarefa' /><button class='button-add'>Adicionar</button>
    <input type="hidden" name="task_id" value="">
</form>
</div>