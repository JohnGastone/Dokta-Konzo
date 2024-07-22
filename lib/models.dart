class AppointmentTimesModel {
  String? time;
  AppointmentTimesModel(this.time);
}

class AppointmentMorningTimesList {
  static List<AppointmentTimesModel> getAppointmentTimes = [
    AppointmentTimesModel('09:00 AM'),
    AppointmentTimesModel('09:30 AM'),
    AppointmentTimesModel('10:00 AM'),
    AppointmentTimesModel('10:30 AM'),
    AppointmentTimesModel('11:00 AM'),
    AppointmentTimesModel('11:30 AM'),
  ];
  static List<AppointmentTimesModel> displayList =
      List.from(AppointmentMorningTimesList.getAppointmentTimes);
}

class AppointmentEveningTimesList {
  static List<AppointmentTimesModel> getAppointmentTimes = [
    AppointmentTimesModel('05:00 PM'),
    AppointmentTimesModel('05:30 PM'),
    AppointmentTimesModel('06:00 PM'),
    AppointmentTimesModel('06:30 PM'),
    AppointmentTimesModel('07:00 PM'),
    AppointmentTimesModel('07:30 PM'),
  ];
  static List<AppointmentTimesModel> displayList =
      List.from(AppointmentEveningTimesList.getAppointmentTimes);
}

class SettingsItemsModel {
  String? image;
  String? title;
  SettingsItemsModel(this.image, this.title);
}

class SettingsItemsList {
  static List<SettingsItemsModel> getSettingsItems = [
    SettingsItemsModel('./assets/crown.png', 'Become a Pro'),
    SettingsItemsModel('./assets/invite.png', 'Invite a friend'),
    SettingsItemsModel('./assets/heart.png', 'Favorite doctors'),
    SettingsItemsModel('./assets/qn.png', 'FAQs'),
    SettingsItemsModel('./assets/help.png', 'Help'),
  ];
  static List<SettingsItemsModel> displayList =
      List.from(SettingsItemsList.getSettingsItems);
}

class DoctorsModel {
  String? image;
  String? name;
  String? specialization;
  String? hospital;
  String? availability;
  DoctorsModel(this.image, this.name, this.specialization, this.hospital,
      this.availability);
}

class DoctorsList {
  static List<DoctorsModel> getDoctorsList = [
    DoctorsModel(
      './assets/d2.jpeg',
      'Dr.Maryam Mahwaya',
      'Cardiologist',
      'Wakombozi Hospital',
      '4:30 PM - 7:30 PM',
    ),
    DoctorsModel(
      './assets/d1.jpeg',
      'Dr. Ethan Mahwaya',
      'Urologist',
      'Mahwaya Urologists',
      '5:30 PM - 7:30 PM',
    ),
    DoctorsModel(
      './assets/d3.jpeg',
      'Dr. Kipwiru Bwakila',
      'Dentist',
      'Tumaini Medical Center',
      '6:30 PM - 8:30 PM',
    ),
    DoctorsModel(
      './assets/d2.jpeg',
      'Dr. Sabrina Honero',
      'Pediatrician',
      'STU Medical Center',
      '3:30 PM - 8:30 PM',
    ),
    DoctorsModel(
        './assets/d3.jpeg',
        'Dr. Konzo Kilakshal',
        'Orthopedic Surgeon',
        'Ubaya Ubwela Orthopaedic Surgeons',
        '5:30 PM - 7:00 PM'),
    DoctorsModel('./assets/d2.jpeg', 'Dr. Sarah Wilson', 'Radiologist',
        'Njiapanda Medics Center', '5:30 PM - 7:00 PM'),
  ];
  static List<DoctorsModel> displayList = List.from(DoctorsList.getDoctorsList);
}
