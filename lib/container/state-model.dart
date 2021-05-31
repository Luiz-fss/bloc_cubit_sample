abstract class StateModel {
  T chooseValue<T>(T originalValue, T parameterValue){
    return originalValue == parameterValue || parameterValue == null ? originalValue : parameterValue;
  }
}