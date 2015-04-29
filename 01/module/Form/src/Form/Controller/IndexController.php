<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/Form for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Form\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Form\Controller\RegisterForm;
use Form\Model;

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
        $form = new RegisterForm();
                $viewModel  = new ViewModel(array('form' => $form)); 
      
                return $viewModel; 
   
    }
    public function confirmAction()
    {
    	$viewModel  = new ViewModel();
    	return $viewModel;
    }
    protected function createUser(array $data)
    {
    	$sm = $this->getServiceLocator();
    	$dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
    	$resultSetPrototype = new \Zend\Db\ResultSet\ResultSet();
     	$resultSetPrototype->setArrayObjectPrototype(new \Form\Model\User);
    	$tableGateway = new \Zend\Db\TableGateway\TableGateway('user',$dbAdapter, null, $resultSetPrototype);
    	$user = new User();
    	$user->exchangeArray($data);
    	$userTable = new UserTable($tableGateway);
    	$userTable->saveUser($user);
    	return true;
    }
    public function processAction()
    {
    //	$this->processAction()
    	if ($this->request->isPost()) {
    	
    		return $this->redirect()->toRoute(NULL ,
    				array( 'controller' => 'Index',
    						'action' =>  'confirm'
    				));
    	}
   // 	$post = $this->request->getPost();
  //  	$form = new RegisterForm();
    //	$inputFilter = new RegisterFilter();
    //	$form->setInputFilter($inputFilter);
   // 	$form->setData($post);
  //  	if (!$form->isValid()) {
   // 		$model = new ViewModel(array(
   // 				'error' => true,
   // 				'form'  => $form,
    //		));
    //		$model->setTemplate('users/register/index');
   // 		return $model;
   // 		}
   // 		return $this->redirect()->toRoute(NULL , array(
   // 				'controller' => 'register',
   // 				'action' =>  'confirm'
   // 		));
    	}
    
}
