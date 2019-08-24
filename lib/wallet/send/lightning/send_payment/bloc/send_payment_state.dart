import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';

@immutable
abstract class SendPaymentState extends Equatable {
  SendPaymentState([List props = const []]) : super(props);
}

class InitialSendPaymentState extends SendPaymentState {}

class SendPaymentResponseState extends SendPaymentState {
  final SendResponse response;

  SendPaymentResponseState(this.response);
}