<?php
namespace Album2\Form;
use Zend\Form\Form;
class Album2Form extends Form
{
	public function __construct($name = null)
	{
		// we want to ignore the name passed
		parent::__construct('album2');
		$this->setAttribute('method', 'post');
		    $this->add(array(
        		'name' => 'code',
        		'attributes' => array(
        				'type'  => 'text',
        		),
        		'options' => array(
        				'label' => 'Code:',
        		),
        ));
        ///////////////////
        $this->add(array(
        		'name' => 'alaki',
        		'attributes' => array(
        				'type'  => 'text',
        		),
        		'options' => array(
        				'label' => 'ALAKI:',
        		),
        ));
        /////////////////////
        $this->add(array(
        		'name' => 'submit',
        		'attributes' => array(
        				'type'  => 'submit',
        				'value' => 'submit',
        		),
        		'options' => array(
        				'label' => 'submit',
        		),
        ));
        ////////////////////
	}
}