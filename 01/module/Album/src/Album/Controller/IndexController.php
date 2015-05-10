<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/Album for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Album\Controller;
use Module;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\ViewModel;
use Album\Model\Album; // <-- Add this import
use Album\Model;
use Album\Form\AlbumForm; // <-- Add this import
use Zend\Filter\Null;
use Album\Model\AlbumTable;

class IndexController extends AbstractActionController
{
	protected $albumTable;
	public function indexAction()
    {
        return array();
    }
   public function addAction()
    {
   	$form = new AlbumForm();
	$form->get('submit')->setValue('Insert');
	

	$request = $this->getRequest();
	if ($request->isPost()) {
		$album = new Album();
	//$form->setInputFilter($album->getInputFilter());
	$form->setData($request->getPost());
	if ($form->isValid()) {
	$album->exchangeArray($form->getData());
	$this->getAlbumTable()->saveAlbum($album);
//	$albumTable=new AlbumTable($tableGateway);
	//$this->Sa
	//$albumTable->saveAlbum($album);
	//$this->getServiceLocator()->
	//$bb=$this->getAlbumTable()->saveAlbum($album);
	//$bb=$this->getAlbumTable();
//$bb->saveAlbum($album);
// Redirect to list of albums
	return $this->redirect()->toRoute('album');
}
}
	return array('form' => $form);
    }
    public function getAlbumTable()
    {
    	if (!$this->albumTable) {
     	$sm = $this->getServiceLocator();
     	$this->albumTable = $sm->get('Album\Model\AlbumTable');
     	}
     return $this->albumTable;
     }

  
}
