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
}
