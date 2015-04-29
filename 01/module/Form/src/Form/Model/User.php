<?php

namespace Form\Model;
class User
{
	public $id;
	public $name;
	public $code;
}
function exchangeArray($data)
{
	$this->name = (isset($data['name'])) ?	$data['name'] : null;
	$this->code = (isset($data['code'])) ?	$data['code'] : null;

}