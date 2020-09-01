String longest(String s1, String s2) {
  List<String> totalStringList = s1.split('') + s2.split('');
  totalStringList.sort();

  Set<String> totalStringSet = totalStringList.toSet();
  return totalStringSet.join();
}
