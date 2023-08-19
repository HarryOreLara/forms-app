part of 'counter_cubit.dart';

//acca se encuentra la clase
class CounterState extends Equatable {
  final int counter;
  final int transactionCount;

  const CounterState({this.counter = 0, this.transactionCount = 0});

  copyWith({
    int? counter,
    int? transactionCount,
  }) =>
      CounterState(
        counter: counter ?? this.counter,
        transactionCount: counter ?? this.transactionCount,
      );


  /// Este medo es de equerable, nos sirve para poder comparar si los valores son iguales, por ejemplo
  /// si queremos comparar que el valor del counter y el transaction son iguales
  /// los cargamos a la lista que nos esta proporcionando el mismo metodo
  /// asi podemos validar ciertas fallas
  /// 
  /// Ejemplo:
  /// 
  /// String name = 'Fernando'
  /// String otroNombre = 'Fernando'
  /// 
  /// name == otroNombre =>true
  /// 
  /// 
  @override
  List<Object?> get props => [counter, transactionCount];
}
