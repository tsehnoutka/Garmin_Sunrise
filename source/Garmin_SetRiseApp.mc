//!
//! Copyright 2015 by Garmin Ltd. or its subsidiaries.
//! Subject to Garmin SDK License Agreement and Wearables
//! Application Developer Agreement.
//!

using Toybox.Application as App;
using Toybox.Position as Position;


class Garmin_SetRiseApp extends App.AppBase {
    hidden var mDelegate;
    hidden var mView;
    var positionView;
    
    function initialize() {
   		App.AppBase.initialize(); 
    }

    //! onStart() is called on application start up
    function onStart() {
        mView = new Garmin_SetRiseView();
        mDelegate = new BaseInputDelegate(mView.method(:onReceive));
    }

    //! onStop() is called when your application is exiting
    function onStop() {
    }

    //! Return the initial view of your application here
    function getInitialView() {
        return [ mView, mDelegate ];
    }
    
}