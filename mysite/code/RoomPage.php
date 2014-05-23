<?php
class RoomPage extends Page {

	private static $db = array(
	// Rates
		'StudentRate' => 'Varchar',
		'FacultyRate' => 'Varchar',
		'GeneralRate' => 'Varchar',
	);

	private static $has_one = array(
		// 'ThumbnailImage'  => 'Image',
		'SlideshowImage1' => 'Image',
		'SlideshowImage2' => 'Image',
		'SlideshowImage3' => 'Image',
		'SlideshowImage4' => 'Image'
   );

	private static $has_many = array (
		'SlideShowImages' => 'Image'
	)

	public function getCMSFields(){
		$fields = parent::getCMSFields();

		$fields->removeByName("Metadata");

		// $fields->addFieldToTab('Root.Images', new UploadField('ThumbnailImage', 'Thumbnail Image (120 x 85)', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Images', new UploadField('SlideshowImage1', 'Slideshow Image 1', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Images', new UploadField('SlideshowImage2', 'Slideshow Image 2', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Images', new UploadField('SlideshowImage3', 'Slideshow Image 3', null, null, null, $this->ClassName));
		$fields->addFieldToTab('Root.Images', new UploadField('SlideshowImage4', 'Slideshow Image 4', null, null, null, $this->ClassName));

		// Rates
		$fields->addFieldToTab('Root.Rates', new TextField('StudentRate','Student Rate'));
		$fields->addFieldToTab('Root.Rates', new TextField('FacultyRate','Faculty Rate'));
		$fields->addFieldToTab('Root.Rates', new TextField('GeneralRate','General Rate'));

		

		return $fields;

	}
	
}
class RoomPage_Controller extends Page_Controller {

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
