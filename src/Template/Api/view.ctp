<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Api $api
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Api'), ['action' => 'edit', $api->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Api'), ['action' => 'delete', $api->id], ['confirm' => __('Are you sure you want to delete # {0}?', $api->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Api'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Api'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="api view large-9 medium-8 columns content">
    <h3><?= h($api->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($api->id) ?></td>
        </tr>
    </table>
</div>
