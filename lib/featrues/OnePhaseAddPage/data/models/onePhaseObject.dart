class OnePhaseObject {
  String? id;
  String? motorName;
  String? custName;
  String? hP;
  String? cylinderNum;
  String? length;
  String? diameter;
  String? cyWidth;
  String? crona;
  String? speed;
  String? startCap;
  String? runCap;
  String? runDiameter;
  String? startDiameter;
  bool? evenORodd;
  bool? cO;
  bool? publicShare;
  String? notes;
  String? date;
  String? one1;
  String? one2;
  String? one3;
  String? one4;
  String? one5;
  String? one6;
  String? one7;
  String? one8;
  String? one9;
  String? one10;
  String? one11;
  String? one12;
  String? one13;
  String? one14;
  String? one15;
  String? one16;
  String? two1;
  String? two2;
  String? two3;
  String? two4;
  String? two5;
  String? two6;
  String? two7;
  String? two8;
  String? two9;
  String? two10;
  String? two11;
  String? two12;
  String? two13;
  String? two14;
  String? two15;
  String? two16;

  OnePhaseObject(
      {
    required this.id,
    required  this.motorName,
    required  this.custName,
    required  this.hP,
    required  this.cylinderNum,
    required  this.length,
    required  this.diameter,
    required  this.cyWidth,
    required  this.crona,
    required  this.speed,
    required  this.startCap,
    required  this.runCap,
    required  this.runDiameter,
    required  this.startDiameter,
    required  this.evenORodd,
    required  this.cO,
    required  this.publicShare,
    required  this.notes,
    required  this.date,
    required  this.one1,
    required  this.one2,
    required  this.one3,
    required  this.one4,
    required  this.one5,
    required  this.one6,
    required  this.one7,
    required  this.one8,
    required  this.one9,
    required this.one10,
    required  this.one11,
    required  this.one12,
    required  this.one13,
    required  this.one14,
    required  this.one15,
    required  this.one16,
    required  this.two1,
    required  this.two2,
    required  this.two3,
    required  this.two4,
    required  this.two5,
    required  this.two6,
    required  this.two7,
    required  this.two8,
    required  this.two9,
    required  this.two10,
    required  this.two11,
    required  this.two12,
    required  this.two13,
    required  this.two14,
    required  this.two15,
    required  this.two16});

  OnePhaseObject.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    motorName = json['MotorName'];
    custName = json['CustName'];
    hP = json['HP'];
    cylinderNum = json['CylinderNum'];
    length = json['Length'];
    diameter = json['Diameter'];
    cyWidth = json['CyWidth'];
    crona = json['Crona'];
    speed = json['Speed'];
    startCap = json['StartCap'];
    runCap = json['RunCap'];
    runDiameter = json['RunDiameter'];
    startDiameter = json['StartDiameter'];
    evenORodd = json['evenORodd'];
    cO = json['CO'];
    publicShare = json['publicShare'];
    notes = json['Notes'];
    date = json['Date'];
    one1 = json['one_1'];
    one2 = json['one_2'];
    one3 = json['one_3'];
    one4 = json['one_4'];
    one5 = json['one_5'];
    one6 = json['one_6'];
    one7 = json['one_7'];
    one8 = json['one_8'];
    one9 = json['one_9'];
    one10 = json['one_10'];
    one11 = json['one_11'];
    one12 = json['one_12'];
    one13 = json['one_13'];
    one14 = json['one_14'];
    one15 = json['one_15'];
    one16 = json['one_16'];
    two1 = json['two_1'];
    two2 = json['two_2'];
    two3 = json['two_3'];
    two4 = json['two_4'];
    two5 = json['two_5'];
    two6 = json['two_6'];
    two7 = json['two_7'];
    two8 = json['two_8'];
    two9 = json['two_9'];
    two10 = json['two_10'];
    two11 = json['two_11'];
    two12 = json['two_12'];
    two13 = json['two_13'];
    two14 = json['two_14'];
    two15 = json['two_15'];
    two16 = json['two_16'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['MotorName'] = this.motorName;
    data['CustName'] = this.custName;
    data['HP'] = this.hP;
    data['CylinderNum'] = this.cylinderNum;
    data['Length'] = this.length;
    data['Diameter'] = this.diameter;
    data['CyWidth'] = this.cyWidth;
    data['Crona'] = this.crona;
    data['Speed'] = this.speed;
    data['StartCap'] = this.startCap;
    data['RunCap'] = this.runCap;
    data['RunDiameter'] = this.runDiameter;
    data['StartDiameter'] = this.startDiameter;
    data['evenORodd'] = this.evenORodd;
    data['CO'] = this.cO;
    data['publicShare'] = this.publicShare;
    data['Notes'] = this.notes;
    data['Date'] = this.date;
    data['one_1'] = this.one1;
    data['one_2'] = this.one2;
    data['one_3'] = this.one3;
    data['one_4'] = this.one4;
    data['one_5'] = this.one5;
    data['one_6'] = this.one6;
    data['one_7'] = this.one7;
    data['one_8'] = this.one8;
    data['one_9'] = this.one9;
    data['one_10'] = this.one10;
    data['one_11'] = this.one11;
    data['one_12'] = this.one12;
    data['one_13'] = this.one13;
    data['one_14'] = this.one14;
    data['one_15'] = this.one15;
    data['one_16'] = this.one16;
    data['two_1'] = this.two1;
    data['two_2'] = this.two2;
    data['two_3'] = this.two3;
    data['two_4'] = this.two4;
    data['two_5'] = this.two5;
    data['two_6'] = this.two6;
    data['two_7'] = this.two7;
    data['two_8'] = this.two8;
    data['two_9'] = this.two9;
    data['two_10'] = this.two10;
    data['two_11'] = this.two11;
    data['two_12'] = this.two12;
    data['two_13'] = this.two13;
    data['two_14'] = this.two14;
    data['two_15'] = this.two15;
    data['two_16'] = this.two16;
    return data;
  }
}
