<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/Havij for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Havij\Controller;

use Zend\Mvc\Controller\AbstractActionController;
use Zend\Db\Sql\Select;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\Sql\Sql;
use Zend\Db\Adapter\Adapter;
use Album2\Model\Album2Table;
use Zend\Db\TableGateway\TableGateway;
use Album2\Model\Album2;
use Album\Model;
use Album\Model\AlbumTable;
use Album\Model\Album;
class IndexController extends AbstractActionController
{
    public function indexAction()
    {
        return array();
    }
    public function addAction()
    {
    	
    
    	//$sql=new Sql();
    	//$sql->insert();
    	$adapter=new Adapter(array(
    			'driver' => 'Mysqli',
    			'database' => 'test',
    			'username' => 'root',
    			'password' => ''
    	));
    	//$adapter->query("SELECT * FROM 'album'", array(5));
    	$sql = new Sql($adapter);
    	$table=new Album();
    	//$table->exchangeArray($data)
    	//$sql->//$adapter->query($sql)
    	$select=$sql->select();
    	
    	//$insert->into("")
    	//new Select();
    	$select->from('album');
    	$statement = $sql->prepareStatementForSqlObject($select);
    	$results = $statement->execute();
    	//$sql=new Sql($adapter);
    	//$sql->insert()
    	//$sql->insert('') 
    	$code=$results->getFieldCount();
    	
    	return array('haha'=>$code);
    	//$select->from('album')
    	//->columns(array('album.*', 'a_name' => 'artist.name'))
    	//->join('artist', 'album.artist_id' = 'artist.id');
    	
    }


}