<?php include_once 'project/layouts/app/mainheader.php'?>

<div class="container">
    <h2 class="allc">Все коктейли</h2>

    <table>
        <thead>
        <th>Название</th>
        <th>Алкоголь</th>
        <th>Кол-во</th>
        <th>Сок</th>
        <th>Кол-во</th>
        <th>Сироп</th>
        <th>Кол-во</th>
        <th>Дополнительно</th>
        <th>Кол-во</th>
        <th>Оценка</th>
        </thead>
        <tbody>
        <?php foreach ($list as $cockteil):?>
        <tr>
            <td><?=$cockteil['name']?></td>
            <td><?=$cockteil['alco']?></td>
            <td><?=$cockteil['quantity_alco']?></td>
            <td><?=$cockteil['juice']?></td>
            <td><?=$cockteil['quantity_juice']?></td>
            <td><?=$cockteil['sirop']?></td>
            <td><?=$cockteil['quantity_sirop']?></td>
            <td><?=$cockteil['additionally']?></td>
            <td><?=$cockteil['quantity_add']?></td>
            <td><?=$cockteil['grade']?></td>
        </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>


