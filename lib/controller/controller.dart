// ignore_for_file: public_member_api_docs, sort_constructors_first
// this is controller all

import 'package:riverpod/riverpod.dart';


class Changevalue {
  final int navigationpagevalue;
  Changevalue(
    this.navigationpagevalue,
  );

  Changevalue copyWith({
    int? navigationpagevalue,
  }) {
    return Changevalue(
      navigationpagevalue ?? this.navigationpagevalue,
    );
  }
}
