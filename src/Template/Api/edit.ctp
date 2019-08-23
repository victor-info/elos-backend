<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Api $api
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $api->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $api->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Api'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="api form large-9 medium-8 columns content">
    <?= $this->Form->create($api) ?>
    <fieldset>
        <legend><?= __('Edit Api') ?></legend>
        <?php
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
