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
</div>
