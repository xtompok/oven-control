var status_ts = $("#status_ts");
var status_tb = $("#status_tb");
var status_back = $("#status_back");
var status_bot = $("#status_bot");
var name_ts = $("#name_ts");
var name_tb = $("#name_tb");
var name_back = $("#name_back");
var name_bot = $("#name_bot");
var row_ts = $("#row_ts");
var row_tb = $("#row_tb");
var row_back = $("#row_back");
var row_bot = $("#row_bot");
var status_bf = $("#status_bf");
var status_df = $("#status_df");
var status_light = $("#status_light");
var act_temp_elem = $("#act_temp");
var set_temp_elem = $("#set_temp");
var mqtt_prefix = "/oven";
var host = window.location.hostname || "localhost";
var port = 9001;
var enabled_state = {
	top_big: true,
	top_small: true,
	back: true,
	bottom: true
};

function onConnect(){
	console.log("Connected to MQTT broker");
	client.subscribe(mqtt_prefix+"/#");
}

function setElement(elem,on){
	if (parseInt(on) == 1){
		elem.text("ON");	
		elem.removeClass();
		elem.addClass("on");
	} else {
		elem.text("OFF");	
		elem.removeClass();
		elem.addClass("off");
	}
}

function setEnabledState(nameElem,row,key,on){
	enabled_state[key] = on;
	row.toggleClass("element-disabled", !on);
	nameElem.toggleClass("name-enabled", on);
	nameElem.toggleClass("name-disabled", !on);
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
			setElement(status_df,msg.payloadString);
			break;
		case '/spirals/enabled/top_big':
			setEnabledState(name_tb, row_tb, "top_big", parseInt(msg.payloadString) === 1);
			break;
		case '/spirals/enabled/top_small':
			setEnabledState(name_ts, row_ts, "top_small", parseInt(msg.payloadString) === 1);
			break;
		case '/spirals/enabled/back':
			setEnabledState(name_back, row_back, "back", parseInt(msg.payloadString) === 1);
			break;
		case '/spirals/enabled/bottom':
			setEnabledState(name_bot, row_bot, "bottom", parseInt(msg.payloadString) === 1);
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
	client = new Paho.MQTT.Client(host, Number(port),"clientjs"+makeid(5));
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

function set_enabled_elements(){
	var enabled = {
		top_big: enabled_state.top_big,
		top_small: enabled_state.top_small,
		back: enabled_state.back,
		bottom: enabled_state.bottom
	};
	client.publish('/oven/enabled_elements/set', JSON.stringify(enabled));
}

function toggle_enabled(key){
	enabled_state[key] = !enabled_state[key];
	if (key === "top_big") {
		setEnabledState(name_tb, row_tb, "top_big", enabled_state.top_big);
	}
	if (key === "top_small") {
		setEnabledState(name_ts, row_ts, "top_small", enabled_state.top_small);
	}
	if (key === "back") {
		setEnabledState(name_back, row_back, "back", enabled_state.back);
	}
	if (key === "bottom") {
		setEnabledState(name_bot, row_bot, "bottom", enabled_state.bottom);
	}
	set_enabled_elements();
}

window.onload=function(){
		status_ts = $("#status_ts");
		status_tb = $("#status_tb");
		status_back = $("#status_back");
		status_bot = $("#status_bot");
		name_ts = $("#name_ts");
		name_tb = $("#name_tb");
		name_back = $("#name_back");
		name_bot = $("#name_bot");
		row_ts = $("#row_ts");
		row_tb = $("#row_tb");
		row_back = $("#row_back");
		row_bot = $("#row_bot");
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
		name_tb.on('click', function(){ toggle_enabled("top_big"); });
		name_ts.on('click', function(){ toggle_enabled("top_small"); });
		name_back.on('click', function(){ toggle_enabled("back"); });
		name_bot.on('click', function(){ toggle_enabled("bottom"); });
	}
