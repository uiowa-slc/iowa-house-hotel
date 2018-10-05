<?php

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
class RoomHolder extends Page {

	private static $db = array(
	'Content2' => 'HTMLText'

	);

	private static $has_one = array(

	);

    private static $default_child = "RoomPage";

    private static $allowed_children = array(
        'RoomPage'
    );

	public function getCMSFields(){
		$fields = parent::getCMSFields();


		$fields->removeByName("Metadata");

		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Content Below the Rooms List'));

		return $fields;

	}


}
