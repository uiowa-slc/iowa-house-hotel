<?php

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextField;
class RoomPage extends Page {

	private static $db = array(
	// Rates
		'StudentRate' => 'Varchar',
		'FacultyRate' => 'Varchar',
		'GeneralRate' => 'Varchar',
	);

	private static $has_one = array(
		// 'ThumbnailImage'  => 'Image',
		'SlideshowImage1' => Image::class,
		'SlideshowImage2' => Image::class,
		'SlideshowImage3' => Image::class,
		'SlideshowImage4' => Image::class
   );

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
