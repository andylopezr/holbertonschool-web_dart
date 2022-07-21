List<String> convertToF(List<double> temperaturesInC) {
    List<String> temperaturesInF = [];
    // print((temperaturesInC[0] * 1.8 + 32).runtimeType);
    for (var i = 0; i < temperaturesInC.length; i++) {
        double el = (temperaturesInC[i] * 1.8 + 32);
        String elString = el.toStringAsFixed(2);
        // double elDouble = double.parse(elString);
        temperaturesInF.add(elString);
    }
    return temperaturesInF;
}