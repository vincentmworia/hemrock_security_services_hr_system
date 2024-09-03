enum PositionTitle {
  director,
  supervisor,
  administrator,
  contractGuard,
  relieverGuard
}

class OfficeDetails {
  final DateTime dateOfHire;
  final String payrollNumber;
  final PositionTitle positionTitle;
  final DateTime employeePeriod;
  final String workStation;

  OfficeDetails({
    required this.dateOfHire,
    required this.payrollNumber,
    required this.positionTitle,
    required this.employeePeriod,
    required this.workStation,
  });
}
