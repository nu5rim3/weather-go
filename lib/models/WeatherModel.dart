class Weather{
  String location;
  String localTime;
  double tempc;
  double tempf;
  String conditionText;
  String conditionIcon;

  Weather({
    this.location,
    this.localTime,
    this.tempc,
    this.tempf,
    this.conditionText,
    this.conditionIcon,

});

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      location: json['location']['country'],
      localTime : json['location']['localtime'],
      tempc : json['current']['temp_c'],
      tempf : json['current']['temp_f'],
      conditionText : json['current']['condition']['text'],
      conditionIcon : json['current']['condition']['icon'],
    );
  }
}