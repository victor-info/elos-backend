<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Tools Controller
 *
 * @property \App\Model\Table\ToolsTable $Tools
 *
 * @method \App\Model\Entity\Tool[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class ToolsController extends AppController
{

    public function initialize()
    {
        parent::initialize();
        $this->Auth->allow(['add', 'token', 'view']);
    }
    
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Users']
        ];
        $tools = $this->paginate($this->Tools);

        $this->set(compact('tools'));
    }

    /**
     * View method
     *
     * @param string|null $id Tool id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $tools = $this->Tools->find();

        echo json_encode($tools);

        // $this->set('tool', $tool);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $tool = $this->Tools->newEntity();
        // var_dump($this->request->getData());
        if($this->request->data){
            $tool = $this->Tools->patchEntity($tool, $this->request->data);
            if ($this->Tools->save($tool)) {
                echo json_encode('1');
            }else{
                echo json_encode('0');
            }
        }else{
            echo json_encode('die');
        }
    }

    /**
     * Edit method
     *
     * @param string|null $id Tool id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $tool = $this->Tools->get($id, [
            'contain' => ['Tags']
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $tool = $this->Tools->patchEntity($tool, $this->request->getData());
            if ($this->Tools->save($tool)) {
                $this->Flash->success(__('The tool has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The tool could not be saved. Please, try again.'));
        }
        $users = $this->Tools->Users->find('list', ['limit' => 200]);
        $tags = $this->Tools->Tags->find('list', ['limit' => 200]);
        $this->set(compact('tool', 'users', 'tags'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Tool id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $tool = $this->Tools->get($id);
        if ($this->Tools->delete($tool)) {
            $this->Flash->success(__('The tool has been deleted.'));
        } else {
            $this->Flash->error(__('The tool could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
