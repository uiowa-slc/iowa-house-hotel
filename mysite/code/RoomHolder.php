<?php
class RoomHolder extends Page {

	private static $db = array(
	'Content2' => 'HTMLText'
	
	);

	private static $has_one = array(

	);
	
	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");
		
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('Content2', 'Content Below the Rooms List'));
	
		

		return $fields;

	}
	// private static $allowed_children = array(
	// 	'MeetingRoomPage'
	// );


}
class RoomHolder_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);

	public function init() {
		parent::init();

	}

}
