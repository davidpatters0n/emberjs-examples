import Em from 'ember';

export default Em.Object.extend({
  school: '',
  father: null,
  address: Em.computed.alias('father.address')
  //The address of the child is dependent on the father
  //So it means that when we create this object
  //there has to be a father otherwise it will bug out.
});
