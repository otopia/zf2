<?php


namespace Album2\Model;
class Album2
{
	public $code;
	public $alaki;
	
function exchangeArray($data)
{
	$this->code = (isset($data['code'])) ?	$data['code'] : null;
	$this->alaki = (isset($data['alaki'])) ?	$data['alaki'] : null;
}
}