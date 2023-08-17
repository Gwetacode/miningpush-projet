class PackageInvestissement {
  String minimun, maximun, validite;
  String pourcentage;
  bool renouvelable;
  PackageInvestissement(this.maximun, this.minimun, this.validite,
      this.pourcentage, this.renouvelable);
}

List<PackageInvestissement> valeurpackage = [
  PackageInvestissement("25\$", "250\$", "3 Months", "1.5%", true),
  PackageInvestissement("251\$", "500\$", "6 Months", "2%", true),
  PackageInvestissement("501\$", "1000\$", "8 Months", "2.5%", true)
];







//6 mois
class Userdata {
  String nameUser,referentCode;
  String solde, depot, totalretrait, totaldepot,dureeenligne;
 List<Transactionretrait> transactionretrait;
  Userdata(this.nameUser,this.referentCode, this.solde, this.depot, this.totalretrait,
      this.totaldepot,this.dureeenligne,this.transactionretrait);
}



class Soldepropretier{
  String nomsolde,valeursolde,iconesolde,couleursolde1,couleursolde2;
  Soldepropretier( this.nomsolde,this.valeursolde,this.iconesolde,this.couleursolde1,this.couleursolde2);
}


class Transactionretrait {
  String dateTransaction, methodRetrait,adresscrypto;
  int montantRetrait;
  bool typeTransaction;
  int etatretrait;
  Transactionretrait(this.dateTransaction, this.methodRetrait,this.adresscrypto, this.montantRetrait,
      this.typeTransaction,this.etatretrait);
}

List <Userdata> datafrontuser=[
    Userdata("emma valere", "moneyman","\$42", "\$200", "\$500", "\$150", "\$350",[
    Transactionretrait("01/05/2023", "usdt","200sdrjfovbhflskrnflkdjkvntsa", 23, true,1),
     Transactionretrait("dateTransaction", "btc","200sdrjfovbhflskrnflkdjkvntsa", 40, false,2),
      Transactionretrait("dateTransaction", "eth","200sdrjfovbhflskrnflkdjkvntsa", 33, false,3),
       Transactionretrait("dateTransaction", "dogecoin","200sdrjfovbhflskrnflkdjkvntsa", 123, true,2),
    ],
    ),
    
];
//  Transaction("dateTransaction", "methodRetrait", 23, true)