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
  SensorGps? sensorGps;
  SensorKy? sensorKy;
  SensorMpu? sensorMpu;

  Sensor({this.sensorGps, this.sensorKy, this.sensorMpu});

  Sensor.fromJson(Map<dynamic, dynamic> json) {
    sensorGps = json['Sensor Gps'] != null
        ? new SensorGps.fromJson(json['Sensor Gps'])
        : null;
    sensorKy = json['Sensor Ky'] != null
        ? new SensorKy.fromJson(json['Sensor Ky'])
        : null;
    sensorMpu = json['Sensor Mpu'] != null
        ? new SensorMpu.fromJson(json['Sensor Mpu'])
        : null;
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    if (this.sensorGps != null) {
      data['Sensor Gps'] = this.sensorGps!.toJson();
    }
    if (this.sensorKy != null) {
      data['Sensor Ky'] = this.sensorKy!.toJson();
    }
    if (this.sensorMpu != null) {
      data['Sensor Mpu'] = this.sensorMpu!.toJson();
    }
    return data;
  }
}

class SensorGps {
  dynamic latitude;
  dynamic longitude;

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

class SensorKy {
  String? kondisi;
  int? value;

  SensorKy({this.kondisi, this.value});

  SensorKy.fromJson(Map<dynamic, dynamic> json) {
    kondisi = json['Kondisi'];
    value = json['Value'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['Kondisi'] = this.kondisi;
    data['Value'] = this.value;
    return data;
  }
}

class SensorMpu {
  String? kondisi;
  String? status;
  int? value;

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
