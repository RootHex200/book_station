// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:riverpod/riverpod.dart';

final Valueprovider = StateProvider((ref) {
  return Hello(1);
});

class Hello {
  final int counter;

  Hello(this.counter);

  

  Hello copyWith({
    int? counter,
  }) {
    return Hello(
      counter ?? this.counter,
    );
  }
}
