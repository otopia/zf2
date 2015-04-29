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

class IndexController extends AbstractActionController
{
    public function indexAction()
    {
        $form = new RegisterForm();
                $viewModel  = new ViewModel(array('form' =>  
                $form)); 
      
                return $viewModel; 
   
    }
}
