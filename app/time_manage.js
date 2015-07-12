import Ember from 'ember';


//create an object and have a property function called timeChanged
//timeChanged will be called when the observer notices that the
//property time has changed.
export default Ember.Object.extend({
  time:0,
  timeChanged: function(){
    //Do something when time changes
    console.log('time changed');
  }.observes('time')

});

/*
import timeManage from './time_manage';

var timeManager = timeManage.create()
timeManager.set('time', 19) => //time changed

*/
