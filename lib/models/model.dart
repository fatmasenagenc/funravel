class Filter{
  String _title   = "";
  String _country = "";
  String _city    = "";

  String get title => _title;
  String get country => _country;
  String get city => _city;

  set title  (String value) { _title   = value; }
  set city   (String value) { _city    = value;}
  set country(String value) { _country = value;}

  clearTitle(){
    _title   = "";
  }
  clearCountry(){
    _country = "";
  }
  clearCity(){
    _city    = "";
  }


}