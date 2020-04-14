var status_ts = $("#status_ts");
var status_tb = $("#status_tb");
var status_back = $("#status_back");
var status_bot = $("#status_bot");
var enabled_ts = $("#enabled_ts");
var enabled_tb = $("#enabled_tb");
var enabled_back = $("#enabled_back");
var enabled_bot = $("#enabled_bot");
var status_bf = $("#status_bf");
var status_df = $("#status_df");
var status_light = $("#status_light");
var act_temp_elem = $("#act_temp");
var set_temp_elem = $("#set_temp");
var mqtt_prefix = "/oven";
var ip = "192.168.0.31";
var port = 9001;

function onConnect(){
	console.log("Connected to MQTT broker");
	client.subscribe(mqtt_prefix+"/#");
}

function setElement(elem,on){
	if (parseInt(on) == 1){
		console.log(elem);
		console.log("1");
		elem.text("ON");	
		elem.removeClass();
		elem.addClass("on");
	} else {
		elem.text("OFF");	
		elem.removeClass();
		elem.addClass("off");
	}
}

function onMessage(msg){
	topic = msg.topic.substring(mqtt_prefix.length);
	switch (topic){
		case '/temp':
			act_temp_elem.text(Math.round(parseFloat(msg.payloadString)));
			break;
		case '/set_temp':
			set_temp_elem.text(Math.round(parseFloat(msg.payloadString)));
			break;
		case '/light':
			setElement(status_light,msg.payloadString);
			break;
		case '/spirals/top_big':
			setElement(status_tb,msg.payloadString);
			break;
		case '/spirals/top_small':
			setElement(status_ts,msg.payloadString);
			break;
		case '/spirals/back':
			setElement(status_back,msg.payloadString);
			break;
		case '/spirals/bottom':
			setElement(status_bot,msg.payloadString);
			break;
		case '/back_fan':
			setElement(status_bf,msg.payloadString);
			break;
		case '/door_fan':
			console.log("DoorFan");
			setElement(status_df,msg.payloadString);
			break;
	
	}
}

function onConnectionLost(responseObject) {
	if (responseObject.errorCode !== 0) {
		console.log("onConnectionLost:" + responseObject.errorMessage);
	}
}

function makeid(length) {
	var result           = '';
	var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	var charactersLength = characters.length;
	for ( var i = 0; i < length; i++ ) {
		result += characters.charAt(Math.floor(Math.random() * charactersLength));
	}
	return result;
}

function connectMQTT(){
	client = new Paho.MQTT.Client(ip, Number(port),"clientjs"+makeid(5));
	client.onConnectionLost = onConnectionLost;
	client.onMessageArrived = onMessage;
	client.connect({
		//userName: username,
		//password: password,
		//useSSL: usessl,
		onSuccess: onConnect,
		//onFailure: onFailure,
		reconnect: true
	});
}

function set_temp(temp){
	client.publish('/oven/temp/set',temp.toString());
}

function set_light(light){
	client.publish('/oven/light/set',light.toString());
}

window.onload=function(){
		status_ts = $("#status_ts");
		status_tb = $("#status_tb");
		status_back = $("#status_back");
		status_bot = $("#status_bot");
		enabled_ts = $("#enabled_ts");
		enabled_tb = $("#enabled_tb");
		enabled_back = $("#enabled_back");
		enabled_bot = $("#enabled_bot");
		status_bf = $("#status_bf");
		status_df = $("#status_df");
		status_light = $("#status_light");
		act_temp_elem = $("#act_temp");
		set_temp_elem = $("#set_temp");

		connectMQTT();
		$("#temp_form").on('submit', function(){
			set_temp($("#temp_input").val());
			return false;
		});
	}
