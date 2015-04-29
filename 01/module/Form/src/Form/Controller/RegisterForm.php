<?php
// filename : module/Users/src/Users/Form/RegisterForm.php
namespace Form\Controller;
use Zend\Form\Form;
class RegisterForm extends Form
{
    public function __construct($name = null)
    {
        parent::__construct('Register');
        $this->setAttribute('method', 'post');
        $this->setAttribute('enctype','multipart/form- 
        data');
    
        $this->add(array(
        		'name' => 'name',
        		'attributes' => array(
        				'type'  => 'text',
        		),
        		'options' => array(
        				'label' => 'Full Name',
        		),
        ));
        $this->add(array(
        		'name' => 'submit',
        		'attributes' => array(
        				'type'  => 'button',
        				'value' => 'submit',
        		),
        		'options' => array(
        				'label' => 'submit',
        		),
        ));
        
    }
}
?>