<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/Album2 for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Album2\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Album2\Form\Album2Form;
use Album2\Model\Album2;
use Album2\Model\Album2Table;
class IndexController extends AbstractActionController
{
	protected $album2Table;
	public function indexAction()
    {
        return array();
    }
    public function addAction()
    {
    	$form = new Album2Form();
    	$form->get('submit')->setValue('Insert');
    
    
    	$request = $this->getRequest();
    	if ($request->isPost()) {
    		$album2 = new Album2();
    		//$form->setInputFilter($album->getInputFilter());
    		$form->setData($request->getPost());
    		if ($form->isValid()) {
    			$album2->exchangeArray($form->getData());
    			
    			$this->getAlbumTable()->saveAlbum2($album2);
    			return $this->redirect()->toRoute('album2');
    		}
    	}
    	return array('form' => $form);
    }
    public function getAlbumTable()
    {
    	if (!$this->album2Table) {
    		$sm = $this->getServiceLocator();
    		$this->album2Table = $sm->get('Album2\Model\Album2Table');
    	}
    	return $this->album2Table;
    }


}
