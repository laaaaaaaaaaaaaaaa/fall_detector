class SensorDeteksi {
  Sensor? sensor;

  SensorDeteksi({this.sensor});

  SensorDeteksi.fromJson(Map<dynamic, dynamic> json) {
    sensor =
        json['Sensor'] != null ? new Sensor.fromJson(json['Sensor']) : null;
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    if (this.sensor != null) {
      data['Sensor'] = this.sensor!.toJson();
    }
    return data;
  }
}

class Sensor {
  KendaliBuzzer? kendaliBuzzer;
  SensorGps? sensorGps;
  SensorMpu? sensorMpu;

  Sensor({this.kendaliBuzzer, this.sensorGps, this.sensorMpu});

  Sensor.fromJson(Map<dynamic, dynamic> json) {
    kendaliBuzzer = json['Kendali Buzzer'] != null
        ? new KendaliBuzzer.fromJson(json['Kendali Buzzer'])
        : null;
    sensorGps = json['Sensor Gps'] != null
        ? new SensorGps.fromJson(json['Sensor Gps'])
        : null;
    sensorMpu = json['Sensor Mpu'] != null
        ? new SensorMpu.fromJson(json['Sensor Mpu'])
        : null;
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    if (this.kendaliBuzzer != null) {
      data['Kendali Buzzer'] = this.kendaliBuzzer!.toJson();
    }
    if (this.sensorGps != null) {
      data['Sensor Gps'] = this.sensorGps!.toJson();
    }
    if (this.sensorMpu != null) {
      data['Sensor Mpu'] = this.sensorMpu!.toJson();
    }
    return data;
  }
}

class KendaliBuzzer {
  bool? buzer;

  KendaliBuzzer({this.buzer});

  KendaliBuzzer.fromJson(Map<dynamic, dynamic> json) {
    buzer = json['Buzer'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['Buzer'] = this.buzer;
    return data;
  }
}

class SensorGps {
  dynamic? latitude;
  dynamic? longitude;

  SensorGps({this.latitude, this.longitude});

  SensorGps.fromJson(Map<dynamic, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class SensorMpu {
  String? kondisi;
  String? status;
  String? value;

  SensorMpu({this.kondisi, this.status, this.value});

  SensorMpu.fromJson(Map<dynamic, dynamic> json) {
    kondisi = json['Kondisi'];
    status = json['Status'];
    value = json['Value'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['Kondisi'] = this.kondisi;
    data['Status'] = this.status;
    data['Value'] = this.value;
    return data;
  }
}
