console.log('background.js');
// HOSTNAME = 'http://f10a1251.ngrok.io';
HOSTNAME = 'http://localhost:3000'


function registerForPush(){
  console.log('registering for push');
  var senderIds = ["448301113255"];
  chrome.gcm.register(senderIds, registerCallback);
}

function registerCallback(registrationId) {
  chrome.storage.sync.set({registered: true});
  chrome.storage.sync.set({'registrationId': registrationId});
  
  $.ajax({
		url: HOSTNAME+'/users/David',
		type:'PUT',
		data:{
			gcm_id: registrationId
		},
		success:function(data){
			console.log('successfully updated registration id')
			console.log(registrationId);
		}
	});
}

registerForPush();

chrome.gcm.onMessage.addListener(function(message) {
	chrome.tabs.create({url: HOSTNAME}, function(){
		console.log('redirected');
	});
});

