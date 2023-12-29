class CustomerInfoModel {
  final String? assignedWaiterId;
  final String? id;
  final String? sectionId;
  final String? name;
  final String? contactNumber;
  final int? order;
  final int? sortOrder;
  final String? tableName;
  final int? customerTypeId;
  final String? customerStatus;

  CustomerInfoModel(
      {this.assignedWaiterId,
      this.id,
      this.sectionId,
      this.name,
      this.contactNumber,
      this.order,
      this.sortOrder,
      this.tableName,
      this.customerTypeId,
      this.customerStatus});

  factory CustomerInfoModel.fromJson(Map<String, dynamic> json) => CustomerInfoModel(
        assignedWaiterId: json["assignedWaiterId"],
        id: json["id"],
        sectionId: json["sectionId"],
        name: json["name"],
        contactNumber: json["contactNumber"],
        order: json["order"],
        sortOrder: json["sortOrder"],
        tableName: json["tableName"],
        customerTypeId: json["customerTypeId"],
        customerStatus: json["customerStatus"],
      );

  Map<String, dynamic> toJson() => {
        "assignedWaiterId": assignedWaiterId,
        "id": id,
        "sectionId": sectionId,
        "name": name,
        "contactNumber": contactNumber,
        "order": order,
        "sortOrder": sortOrder,
        "tableName": tableName,
        "customerTypeId": customerTypeId,
        "customerStatus": customerStatus,
      };
}
