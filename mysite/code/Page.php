<?php

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TextareaField;
class Page extends SiteTree {

    private static $db = array(
        'PageSpecificHTML' => 'HTMLText'
    );

    private static $has_one = array(
    );


    private static $many_many = array (
    );

    private static $many_many_extraFields=array(
      );

    private static $plural_name = "Pages";

    private static $defaults = array (
        'PageSpecificHTML' => '<!-- Sojern Tag v6_js, Pixel Version: 1 -->
            <script>
              (function () {
                /* Please fill the following values. */
                var params = {
                   hd1: "", /* Check In Date. Format yyyy-mm-dd. Ex: 2015-02-14 */
                   hd2: "", /* Check Out Date. Format yyyy-mm-dd. Ex: 2015-02-14 */
                   hc1: "", /* Destination City */
                   hs1: "", /* Destination State or Region */
                   hpr: "", /* Hotel Property */
                   hr: "", /* Number of Rooms */
                   hpid: "", /* Property ID */
                   t: "" /* Number of Travelers */
                };

                /* Please do not modify the below code. */
                var cid = [];
                var paramsArr = [];
                var cidParams = [];
                var pl = document.createElement(\'script\');
                var defaultParams = {"vid":"hot"};
                for(key in defaultParams) { params[key] = defaultParams[key]; };
                for(key in cidParams) { cid.push(params[cidParams[key]]); };
                params.cid = cid.join(\'|\');
                for(key in params) { paramsArr.push(key + \'=\' + encodeURIComponent(params[key])) };
                pl.type = \'text/javascript\';
                pl.async = true;
                pl.src = \'https://beacon.sojern.com/pixel/p/94111?f_v=v6_js&p_v=1&\' + paramsArr.join(\'&\');
                (document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(pl);
              })();
            </script>
            <!-- End Sojern Tag -->'
    );
    public function getCMSFields(){
        $f = parent::getCMSFields();
        $f->addFieldToTab('Root.Main', TextareaField::create('PageSpecificHTML', 'Page specific scripts (tracking codes)'), 'Content');
        return $f;
    }
}
