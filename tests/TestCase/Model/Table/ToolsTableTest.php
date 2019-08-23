<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ToolsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ToolsTable Test Case
 */
class ToolsTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\ToolsTable
     */
    public $Tools;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.Tools',
        'app.Users',
        'app.Tags'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('Tools') ? [] : ['className' => ToolsTable::class];
        $this->Tools = TableRegistry::getTableLocator()->get('Tools', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Tools);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
