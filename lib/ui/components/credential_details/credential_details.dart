import 'package:flexid_wallet/ui/components/credential_detail_item/credential_detail_item.dart';
import 'package:flutter/material.dart';

class CredentialDetails extends StatelessWidget {
  final Map<String, String> _details;

  CredentialDetails(this._details);

  CredentialDetails.fromJson(Map<String, dynamic> json) : this._details = json;
  @override
  Widget build(BuildContext context) {
    List<CredentialDetailItem> items = [];
    this._details.forEach((k, v) {
      items.add(CredentialDetailItem(k, v));
    });
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: this._details.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return item;
        },
      ),
    );
  }
}
