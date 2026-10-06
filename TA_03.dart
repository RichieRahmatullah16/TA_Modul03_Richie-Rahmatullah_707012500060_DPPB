class SensorUdara {
  String lokasi;
  int indeksAQI;
  String statusKualitas;

  SensorUdara({
    required this.lokasi,
    required this.indeksAQI,
    this.statusKualitas = "Belum dianalisis",
  });

  void analisisUdara() {
    if (indeksAQI <= 50) {
      statusKualitas = "Udara Bersih";
    } else {
      statusKualitas = "Polusi, Wajib Masker!";
    }
  }

  void cetakLaporan() {
    print("Lokasi: $lokasi | AQI: $indeksAQI | Status: $statusKualitas");
  }
}

void main() {
  List<SensorUdara> listSensorUdara = [];

  listSensorUdara.add(
    SensorUdara(lokasi: "Alun-Alun Bandung", indeksAQI: 85),
  );
  listSensorUdara.add(
    SensorUdara(lokasi: "Dago Car Free Day", indeksAQI: 30),
  );
  listSensorUdara.add(
    SensorUdara(lokasi: "Pasar Gedebage", indeksAQI: 120),
  );

  print("=== LAPORAN KUALITAS UDARA KOTA BANDUNG ===");

  for (SensorUdara sensor in listSensorUdara) {
    sensor.analisisUdara(); 
    sensor.cetakLaporan();   
  }
}