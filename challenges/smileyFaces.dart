abstract class Face {
  static List<String> _validElements;
  static bool validate(String element) {}
}

class Eye extends Face {
  static List<String> _validElements = [';', ':'];
  static bool validate(String eye) => _validElements.contains(eye);
}

class Nose extends Face {
  static List<String> _validElements = ['-', '~'];
  static bool validate(String nose) => _validElements.contains(nose);
}

class Mouth extends Face {
  static List<String> _validElements = ['D', ')'];
  static bool validate(String mouth) => _validElements.contains(mouth);
}

int countSmileyFaces(List smileyList) {
  int counter = 0;
  bool isValidSmileyFace(String smileyFace) {
    String eye = '';
    String nose = '';
    String mouth = '';

    final List<String> smileyFaceList = smileyFace.split('');

    if(smileyFaceList.length == 2) {
      eye = smileyFaceList[0];
      mouth = smileyFaceList[1];
    } else if(smileyFaceList.length == 3) {
      eye = smileyFaceList[0];
      nose = smileyFaceList[1];
      mouth = smileyFaceList[2];
    } else return false;

    if(!Eye.validate(eye)) return false;
    if(!Mouth.validate(mouth)) return false;

    if(nose != '') {
      if(!Nose.validate(nose)) return false;
    } 

    return true;
  }

  smileyList.forEach((smileyFace) {
    isValidSmileyFace(smileyFace) ? counter++ : null;
  });
  
  return counter;
}