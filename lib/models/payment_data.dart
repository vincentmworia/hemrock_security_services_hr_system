class PaymentData {
  final int basicPay;
  final int savings;
  final int payeCut;
  final int nhifCut;
  final int nssfCut;
  final int recoverBootCut;
  final BankDetails bankDetails;

  PaymentData({
    required this.basicPay,
    required this.savings,
    required this.payeCut,
    required this.nhifCut,
    required this.nssfCut,
    required this.recoverBootCut,
    required this.bankDetails,
  }); // 1400 (2@700)
}

class BankDetails {
  final String bankName;
  final int bankCode;
  final int bankAccountNumber;

  BankDetails(
      {required this.bankName, required this.bankCode, required this.bankAccountNumber,});
}