<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\ApiTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\ApiTable Test Case
 */
class ApiTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\ApiTable
     */
    public $Api;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.Api'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('Api') ? [] : ['className' => ApiTable::class];
        $this->Api = TableRegistry::getTableLocator()->get('Api', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->Api);

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
}
