<?php
namespace Album2\Model;
use Zend\Db\Adapter\Adapter;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
class Album2Table
{
protected $tableGateway;
public function __construct(TableGateway $tableGateway)
{
	$this->tableGateway = $tableGateway;
}
public function saveAlbum2(Album2 $album2)
{
	$data = array(
			'code' => $album2->code,
			'alaki'  => $album2->alaki,
			
	);
	$code = (int)$album->code;
	if ($id == 0) {
		$this->tableGateway->insert($data);
	
	} else {
		
		//	if ($this->getUser($id)) {
			$this->tableGateway->update($data, array('code' => $code));
	//	} else {
		//	throw new \Exception('User ID does not exist');
	//	}
	}
}
}
