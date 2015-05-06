<?php
namespace Album\Form;
use Zend\Form\Form;
class AlbumForm extends Form
{
	public function __construct($name = null)
	{
		// we want to ignore the name passed
		parent::__construct('album');
		$this->setAttribute('method', 'post');
		    $this->add(array(
        		'name' => 'name',
        		'attributes' => array(
        				'type'  => 'text',
        		),
        		'options' => array(
        				'label' => 'Name:',
        		),
        ));
        ///////////////////
        $this->add(array(
        		'name' => 'code',
        		'attributes' => array(
        				'type'  => 'text',
        		),
        		'options' => array(
        				'label' => 'Code:',
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