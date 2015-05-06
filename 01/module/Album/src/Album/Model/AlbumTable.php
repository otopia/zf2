<?php
namespace Album\Model;
use Zend\Db\Adapter\Adapter;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
class AlbumTable
{
protected $tableGateway;
public function __construct(TableGateway $tableGateway)
{
	$this->tableGateway = $tableGateway;
}
public function saveAlbum(Album $album)
{
	$data = array(
			'id' => $album->id,
			'name'  => $album->name,
			'code'  => $album->code,
	);
	$id = (int)$album->id;
	if ($id == 0) {
		$this->tableGateway->insert($data);
	
	} else {
		
		//	if ($this->getUser($id)) {
			$this->tableGateway->update($data, array('id' => $id));
	//	} else {
		//	throw new \Exception('User ID does not exist');
	//	}
	}
}
}
