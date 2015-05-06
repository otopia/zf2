<?php


namespace Album\Model;
class Album
{
	public $id;
	public $name;
	public $code;

function exchangeArray($data)
{
	$this->id = (isset($data['id'])) ?	$data['id'] : null;
	$this->name = (isset($data['name'])) ?	$data['name'] : null;
	$this->code = (isset($data['code'])) ?	$data['code'] : null;

}
}