; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76362 () Bool)

(assert start!76362)

(declare-fun b!895619 () Bool)

(declare-fun b_free!15921 () Bool)

(declare-fun b_next!15921 () Bool)

(assert (=> b!895619 (= b_free!15921 (not b_next!15921))))

(declare-fun tp!55779 () Bool)

(declare-fun b_and!26231 () Bool)

(assert (=> b!895619 (= tp!55779 b_and!26231)))

(declare-fun b!895613 () Bool)

(declare-fun res!605877 () Bool)

(declare-fun e!500488 () Bool)

(assert (=> b!895613 (=> (not res!605877) (not e!500488))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895613 (= res!605877 (not (= key!785 (bvneg key!785))))))

(declare-fun b!895614 () Bool)

(declare-fun e!500485 () Bool)

(declare-fun tp_is_empty!18249 () Bool)

(assert (=> b!895614 (= e!500485 tp_is_empty!18249)))

(declare-fun b!895615 () Bool)

(declare-fun res!605880 () Bool)

(declare-fun e!500486 () Bool)

(assert (=> b!895615 (=> (not res!605880) (not e!500486))))

(declare-datatypes ((array!52490 0))(
  ( (array!52491 (arr!25234 (Array (_ BitVec 32) (_ BitVec 64))) (size!25685 (_ BitVec 32))) )
))
(declare-datatypes ((V!29297 0))(
  ( (V!29298 (val!9175 Int)) )
))
(declare-datatypes ((ValueCell!8643 0))(
  ( (ValueCellFull!8643 (v!11662 V!29297)) (EmptyCell!8643) )
))
(declare-datatypes ((array!52492 0))(
  ( (array!52493 (arr!25235 (Array (_ BitVec 32) ValueCell!8643)) (size!25686 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4302 0))(
  ( (LongMapFixedSize!4303 (defaultEntry!5363 Int) (mask!25965 (_ BitVec 32)) (extraKeys!5059 (_ BitVec 32)) (zeroValue!5163 V!29297) (minValue!5163 V!29297) (_size!2206 (_ BitVec 32)) (_keys!10078 array!52490) (_values!5350 array!52492) (_vacant!2206 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4302)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52490 (_ BitVec 32)) Bool)

(assert (=> b!895615 (= res!605880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10078 thiss!1181) (mask!25965 thiss!1181)))))

(declare-fun b!895616 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!895616 (= e!500486 (not (validKeyInArray!0 key!785)))))

(declare-fun b!895617 () Bool)

(declare-fun res!605875 () Bool)

(assert (=> b!895617 (=> (not res!605875) (not e!500486))))

(declare-datatypes ((List!17895 0))(
  ( (Nil!17892) (Cons!17891 (h!19028 (_ BitVec 64)) (t!25242 List!17895)) )
))
(declare-fun arrayNoDuplicates!0 (array!52490 (_ BitVec 32) List!17895) Bool)

(assert (=> b!895617 (= res!605875 (arrayNoDuplicates!0 (_keys!10078 thiss!1181) #b00000000000000000000000000000000 Nil!17892))))

(declare-fun res!605879 () Bool)

(assert (=> start!76362 (=> (not res!605879) (not e!500488))))

(declare-fun valid!1650 (LongMapFixedSize!4302) Bool)

(assert (=> start!76362 (= res!605879 (valid!1650 thiss!1181))))

(assert (=> start!76362 e!500488))

(declare-fun e!500489 () Bool)

(assert (=> start!76362 e!500489))

(assert (=> start!76362 true))

(declare-fun mapIsEmpty!28975 () Bool)

(declare-fun mapRes!28975 () Bool)

(assert (=> mapIsEmpty!28975 mapRes!28975))

(declare-fun b!895618 () Bool)

(declare-fun e!500487 () Bool)

(assert (=> b!895618 (= e!500487 tp_is_empty!18249)))

(declare-fun e!500491 () Bool)

(declare-fun array_inv!19788 (array!52490) Bool)

(declare-fun array_inv!19789 (array!52492) Bool)

(assert (=> b!895619 (= e!500489 (and tp!55779 tp_is_empty!18249 (array_inv!19788 (_keys!10078 thiss!1181)) (array_inv!19789 (_values!5350 thiss!1181)) e!500491))))

(declare-fun b!895620 () Bool)

(declare-fun res!605876 () Bool)

(assert (=> b!895620 (=> (not res!605876) (not e!500486))))

(assert (=> b!895620 (= res!605876 (and (= (size!25686 (_values!5350 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25965 thiss!1181))) (= (size!25685 (_keys!10078 thiss!1181)) (size!25686 (_values!5350 thiss!1181))) (bvsge (mask!25965 thiss!1181) #b00000000000000000000000000000000) (bvsge (extraKeys!5059 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5059 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!895621 () Bool)

(assert (=> b!895621 (= e!500491 (and e!500487 mapRes!28975))))

(declare-fun condMapEmpty!28975 () Bool)

(declare-fun mapDefault!28975 () ValueCell!8643)

(assert (=> b!895621 (= condMapEmpty!28975 (= (arr!25235 (_values!5350 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8643)) mapDefault!28975)))))

(declare-fun mapNonEmpty!28975 () Bool)

(declare-fun tp!55780 () Bool)

(assert (=> mapNonEmpty!28975 (= mapRes!28975 (and tp!55780 e!500485))))

(declare-fun mapValue!28975 () ValueCell!8643)

(declare-fun mapKey!28975 () (_ BitVec 32))

(declare-fun mapRest!28975 () (Array (_ BitVec 32) ValueCell!8643))

(assert (=> mapNonEmpty!28975 (= (arr!25235 (_values!5350 thiss!1181)) (store mapRest!28975 mapKey!28975 mapValue!28975))))

(declare-fun b!895622 () Bool)

(assert (=> b!895622 (= e!500488 e!500486)))

(declare-fun res!605878 () Bool)

(assert (=> b!895622 (=> (not res!605878) (not e!500486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!895622 (= res!605878 (validMask!0 (mask!25965 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8875 0))(
  ( (MissingZero!8875 (index!37870 (_ BitVec 32))) (Found!8875 (index!37871 (_ BitVec 32))) (Intermediate!8875 (undefined!9687 Bool) (index!37872 (_ BitVec 32)) (x!76212 (_ BitVec 32))) (Undefined!8875) (MissingVacant!8875 (index!37873 (_ BitVec 32))) )
))
(declare-fun lt!404541 () SeekEntryResult!8875)

(declare-fun seekEntry!0 ((_ BitVec 64) array!52490 (_ BitVec 32)) SeekEntryResult!8875)

(assert (=> b!895622 (= lt!404541 (seekEntry!0 key!785 (_keys!10078 thiss!1181) (mask!25965 thiss!1181)))))

(assert (= (and start!76362 res!605879) b!895613))

(assert (= (and b!895613 res!605877) b!895622))

(assert (= (and b!895622 res!605878) b!895620))

(assert (= (and b!895620 res!605876) b!895615))

(assert (= (and b!895615 res!605880) b!895617))

(assert (= (and b!895617 res!605875) b!895616))

(assert (= (and b!895621 condMapEmpty!28975) mapIsEmpty!28975))

(assert (= (and b!895621 (not condMapEmpty!28975)) mapNonEmpty!28975))

(get-info :version)

(assert (= (and mapNonEmpty!28975 ((_ is ValueCellFull!8643) mapValue!28975)) b!895614))

(assert (= (and b!895621 ((_ is ValueCellFull!8643) mapDefault!28975)) b!895618))

(assert (= b!895619 b!895621))

(assert (= start!76362 b!895619))

(declare-fun m!833155 () Bool)

(assert (=> b!895615 m!833155))

(declare-fun m!833157 () Bool)

(assert (=> b!895617 m!833157))

(declare-fun m!833159 () Bool)

(assert (=> mapNonEmpty!28975 m!833159))

(declare-fun m!833161 () Bool)

(assert (=> b!895622 m!833161))

(declare-fun m!833163 () Bool)

(assert (=> b!895622 m!833163))

(declare-fun m!833165 () Bool)

(assert (=> start!76362 m!833165))

(declare-fun m!833167 () Bool)

(assert (=> b!895616 m!833167))

(declare-fun m!833169 () Bool)

(assert (=> b!895619 m!833169))

(declare-fun m!833171 () Bool)

(assert (=> b!895619 m!833171))

(check-sat (not mapNonEmpty!28975) (not b_next!15921) (not b!895615) (not b!895619) (not b!895622) (not start!76362) tp_is_empty!18249 b_and!26231 (not b!895617) (not b!895616))
(check-sat b_and!26231 (not b_next!15921))
(get-model)

(declare-fun d!110735 () Bool)

(assert (=> d!110735 (= (validKeyInArray!0 key!785) (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!895616 d!110735))

(declare-fun d!110737 () Bool)

(declare-fun res!605905 () Bool)

(declare-fun e!500515 () Bool)

(assert (=> d!110737 (=> (not res!605905) (not e!500515))))

(declare-fun simpleValid!307 (LongMapFixedSize!4302) Bool)

(assert (=> d!110737 (= res!605905 (simpleValid!307 thiss!1181))))

(assert (=> d!110737 (= (valid!1650 thiss!1181) e!500515)))

(declare-fun b!895659 () Bool)

(declare-fun res!605906 () Bool)

(assert (=> b!895659 (=> (not res!605906) (not e!500515))))

(declare-fun arrayCountValidKeys!0 (array!52490 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!895659 (= res!605906 (= (arrayCountValidKeys!0 (_keys!10078 thiss!1181) #b00000000000000000000000000000000 (size!25685 (_keys!10078 thiss!1181))) (_size!2206 thiss!1181)))))

(declare-fun b!895660 () Bool)

(declare-fun res!605907 () Bool)

(assert (=> b!895660 (=> (not res!605907) (not e!500515))))

(assert (=> b!895660 (= res!605907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10078 thiss!1181) (mask!25965 thiss!1181)))))

(declare-fun b!895661 () Bool)

(assert (=> b!895661 (= e!500515 (arrayNoDuplicates!0 (_keys!10078 thiss!1181) #b00000000000000000000000000000000 Nil!17892))))

(assert (= (and d!110737 res!605905) b!895659))

(assert (= (and b!895659 res!605906) b!895660))

(assert (= (and b!895660 res!605907) b!895661))

(declare-fun m!833191 () Bool)

(assert (=> d!110737 m!833191))

(declare-fun m!833193 () Bool)

(assert (=> b!895659 m!833193))

(assert (=> b!895660 m!833155))

(assert (=> b!895661 m!833157))

(assert (=> start!76362 d!110737))

(declare-fun bm!39763 () Bool)

(declare-fun call!39766 () Bool)

(assert (=> bm!39763 (= call!39766 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10078 thiss!1181) (mask!25965 thiss!1181)))))

(declare-fun d!110739 () Bool)

(declare-fun res!605913 () Bool)

(declare-fun e!500524 () Bool)

(assert (=> d!110739 (=> res!605913 e!500524)))

(assert (=> d!110739 (= res!605913 (bvsge #b00000000000000000000000000000000 (size!25685 (_keys!10078 thiss!1181))))))

(assert (=> d!110739 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10078 thiss!1181) (mask!25965 thiss!1181)) e!500524)))

(declare-fun b!895670 () Bool)

(declare-fun e!500522 () Bool)

(declare-fun e!500523 () Bool)

(assert (=> b!895670 (= e!500522 e!500523)))

(declare-fun lt!404553 () (_ BitVec 64))

(assert (=> b!895670 (= lt!404553 (select (arr!25234 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30437 0))(
  ( (Unit!30438) )
))
(declare-fun lt!404551 () Unit!30437)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52490 (_ BitVec 64) (_ BitVec 32)) Unit!30437)

(assert (=> b!895670 (= lt!404551 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10078 thiss!1181) lt!404553 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!895670 (arrayContainsKey!0 (_keys!10078 thiss!1181) lt!404553 #b00000000000000000000000000000000)))

(declare-fun lt!404552 () Unit!30437)

(assert (=> b!895670 (= lt!404552 lt!404551)))

(declare-fun res!605912 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52490 (_ BitVec 32)) SeekEntryResult!8875)

(assert (=> b!895670 (= res!605912 (= (seekEntryOrOpen!0 (select (arr!25234 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000) (_keys!10078 thiss!1181) (mask!25965 thiss!1181)) (Found!8875 #b00000000000000000000000000000000)))))

(assert (=> b!895670 (=> (not res!605912) (not e!500523))))

(declare-fun b!895671 () Bool)

(assert (=> b!895671 (= e!500523 call!39766)))

(declare-fun b!895672 () Bool)

(assert (=> b!895672 (= e!500522 call!39766)))

(declare-fun b!895673 () Bool)

(assert (=> b!895673 (= e!500524 e!500522)))

(declare-fun c!94522 () Bool)

(assert (=> b!895673 (= c!94522 (validKeyInArray!0 (select (arr!25234 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110739 (not res!605913)) b!895673))

(assert (= (and b!895673 c!94522) b!895670))

(assert (= (and b!895673 (not c!94522)) b!895672))

(assert (= (and b!895670 res!605912) b!895671))

(assert (= (or b!895671 b!895672) bm!39763))

(declare-fun m!833195 () Bool)

(assert (=> bm!39763 m!833195))

(declare-fun m!833197 () Bool)

(assert (=> b!895670 m!833197))

(declare-fun m!833199 () Bool)

(assert (=> b!895670 m!833199))

(declare-fun m!833201 () Bool)

(assert (=> b!895670 m!833201))

(assert (=> b!895670 m!833197))

(declare-fun m!833203 () Bool)

(assert (=> b!895670 m!833203))

(assert (=> b!895673 m!833197))

(assert (=> b!895673 m!833197))

(declare-fun m!833205 () Bool)

(assert (=> b!895673 m!833205))

(assert (=> b!895615 d!110739))

(declare-fun b!895684 () Bool)

(declare-fun e!500535 () Bool)

(declare-fun call!39769 () Bool)

(assert (=> b!895684 (= e!500535 call!39769)))

(declare-fun b!895685 () Bool)

(declare-fun e!500534 () Bool)

(assert (=> b!895685 (= e!500534 e!500535)))

(declare-fun c!94525 () Bool)

(assert (=> b!895685 (= c!94525 (validKeyInArray!0 (select (arr!25234 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!895686 () Bool)

(declare-fun e!500536 () Bool)

(assert (=> b!895686 (= e!500536 e!500534)))

(declare-fun res!605922 () Bool)

(assert (=> b!895686 (=> (not res!605922) (not e!500534))))

(declare-fun e!500533 () Bool)

(assert (=> b!895686 (= res!605922 (not e!500533))))

(declare-fun res!605920 () Bool)

(assert (=> b!895686 (=> (not res!605920) (not e!500533))))

(assert (=> b!895686 (= res!605920 (validKeyInArray!0 (select (arr!25234 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!110741 () Bool)

(declare-fun res!605921 () Bool)

(assert (=> d!110741 (=> res!605921 e!500536)))

(assert (=> d!110741 (= res!605921 (bvsge #b00000000000000000000000000000000 (size!25685 (_keys!10078 thiss!1181))))))

(assert (=> d!110741 (= (arrayNoDuplicates!0 (_keys!10078 thiss!1181) #b00000000000000000000000000000000 Nil!17892) e!500536)))

(declare-fun bm!39766 () Bool)

(assert (=> bm!39766 (= call!39769 (arrayNoDuplicates!0 (_keys!10078 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!94525 (Cons!17891 (select (arr!25234 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000) Nil!17892) Nil!17892)))))

(declare-fun b!895687 () Bool)

(assert (=> b!895687 (= e!500535 call!39769)))

(declare-fun b!895688 () Bool)

(declare-fun contains!4387 (List!17895 (_ BitVec 64)) Bool)

(assert (=> b!895688 (= e!500533 (contains!4387 Nil!17892 (select (arr!25234 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (= (and d!110741 (not res!605921)) b!895686))

(assert (= (and b!895686 res!605920) b!895688))

(assert (= (and b!895686 res!605922) b!895685))

(assert (= (and b!895685 c!94525) b!895687))

(assert (= (and b!895685 (not c!94525)) b!895684))

(assert (= (or b!895687 b!895684) bm!39766))

(assert (=> b!895685 m!833197))

(assert (=> b!895685 m!833197))

(assert (=> b!895685 m!833205))

(assert (=> b!895686 m!833197))

(assert (=> b!895686 m!833197))

(assert (=> b!895686 m!833205))

(assert (=> bm!39766 m!833197))

(declare-fun m!833207 () Bool)

(assert (=> bm!39766 m!833207))

(assert (=> b!895688 m!833197))

(assert (=> b!895688 m!833197))

(declare-fun m!833209 () Bool)

(assert (=> b!895688 m!833209))

(assert (=> b!895617 d!110741))

(declare-fun d!110743 () Bool)

(assert (=> d!110743 (= (validMask!0 (mask!25965 thiss!1181)) (and (or (= (mask!25965 thiss!1181) #b00000000000000000000000000000111) (= (mask!25965 thiss!1181) #b00000000000000000000000000001111) (= (mask!25965 thiss!1181) #b00000000000000000000000000011111) (= (mask!25965 thiss!1181) #b00000000000000000000000000111111) (= (mask!25965 thiss!1181) #b00000000000000000000000001111111) (= (mask!25965 thiss!1181) #b00000000000000000000000011111111) (= (mask!25965 thiss!1181) #b00000000000000000000000111111111) (= (mask!25965 thiss!1181) #b00000000000000000000001111111111) (= (mask!25965 thiss!1181) #b00000000000000000000011111111111) (= (mask!25965 thiss!1181) #b00000000000000000000111111111111) (= (mask!25965 thiss!1181) #b00000000000000000001111111111111) (= (mask!25965 thiss!1181) #b00000000000000000011111111111111) (= (mask!25965 thiss!1181) #b00000000000000000111111111111111) (= (mask!25965 thiss!1181) #b00000000000000001111111111111111) (= (mask!25965 thiss!1181) #b00000000000000011111111111111111) (= (mask!25965 thiss!1181) #b00000000000000111111111111111111) (= (mask!25965 thiss!1181) #b00000000000001111111111111111111) (= (mask!25965 thiss!1181) #b00000000000011111111111111111111) (= (mask!25965 thiss!1181) #b00000000000111111111111111111111) (= (mask!25965 thiss!1181) #b00000000001111111111111111111111) (= (mask!25965 thiss!1181) #b00000000011111111111111111111111) (= (mask!25965 thiss!1181) #b00000000111111111111111111111111) (= (mask!25965 thiss!1181) #b00000001111111111111111111111111) (= (mask!25965 thiss!1181) #b00000011111111111111111111111111) (= (mask!25965 thiss!1181) #b00000111111111111111111111111111) (= (mask!25965 thiss!1181) #b00001111111111111111111111111111) (= (mask!25965 thiss!1181) #b00011111111111111111111111111111) (= (mask!25965 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!25965 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!895622 d!110743))

(declare-fun b!895702 () Bool)

(declare-fun e!500545 () SeekEntryResult!8875)

(declare-fun e!500544 () SeekEntryResult!8875)

(assert (=> b!895702 (= e!500545 e!500544)))

(declare-fun lt!404562 () (_ BitVec 64))

(declare-fun lt!404565 () SeekEntryResult!8875)

(assert (=> b!895702 (= lt!404562 (select (arr!25234 (_keys!10078 thiss!1181)) (index!37872 lt!404565)))))

(declare-fun c!94532 () Bool)

(assert (=> b!895702 (= c!94532 (= lt!404562 key!785))))

(declare-fun b!895703 () Bool)

(declare-fun c!94533 () Bool)

(assert (=> b!895703 (= c!94533 (= lt!404562 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!500543 () SeekEntryResult!8875)

(assert (=> b!895703 (= e!500544 e!500543)))

(declare-fun b!895704 () Bool)

(assert (=> b!895704 (= e!500543 (MissingZero!8875 (index!37872 lt!404565)))))

(declare-fun d!110745 () Bool)

(declare-fun lt!404564 () SeekEntryResult!8875)

(assert (=> d!110745 (and (or ((_ is MissingVacant!8875) lt!404564) (not ((_ is Found!8875) lt!404564)) (and (bvsge (index!37871 lt!404564) #b00000000000000000000000000000000) (bvslt (index!37871 lt!404564) (size!25685 (_keys!10078 thiss!1181))))) (not ((_ is MissingVacant!8875) lt!404564)) (or (not ((_ is Found!8875) lt!404564)) (= (select (arr!25234 (_keys!10078 thiss!1181)) (index!37871 lt!404564)) key!785)))))

(assert (=> d!110745 (= lt!404564 e!500545)))

(declare-fun c!94534 () Bool)

(assert (=> d!110745 (= c!94534 (and ((_ is Intermediate!8875) lt!404565) (undefined!9687 lt!404565)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52490 (_ BitVec 32)) SeekEntryResult!8875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!110745 (= lt!404565 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!25965 thiss!1181)) key!785 (_keys!10078 thiss!1181) (mask!25965 thiss!1181)))))

(assert (=> d!110745 (validMask!0 (mask!25965 thiss!1181))))

(assert (=> d!110745 (= (seekEntry!0 key!785 (_keys!10078 thiss!1181) (mask!25965 thiss!1181)) lt!404564)))

(declare-fun b!895701 () Bool)

(assert (=> b!895701 (= e!500545 Undefined!8875)))

(declare-fun b!895705 () Bool)

(declare-fun lt!404563 () SeekEntryResult!8875)

(assert (=> b!895705 (= e!500543 (ite ((_ is MissingVacant!8875) lt!404563) (MissingZero!8875 (index!37873 lt!404563)) lt!404563))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52490 (_ BitVec 32)) SeekEntryResult!8875)

(assert (=> b!895705 (= lt!404563 (seekKeyOrZeroReturnVacant!0 (x!76212 lt!404565) (index!37872 lt!404565) (index!37872 lt!404565) key!785 (_keys!10078 thiss!1181) (mask!25965 thiss!1181)))))

(declare-fun b!895706 () Bool)

(assert (=> b!895706 (= e!500544 (Found!8875 (index!37872 lt!404565)))))

(assert (= (and d!110745 c!94534) b!895701))

(assert (= (and d!110745 (not c!94534)) b!895702))

(assert (= (and b!895702 c!94532) b!895706))

(assert (= (and b!895702 (not c!94532)) b!895703))

(assert (= (and b!895703 c!94533) b!895704))

(assert (= (and b!895703 (not c!94533)) b!895705))

(declare-fun m!833211 () Bool)

(assert (=> b!895702 m!833211))

(declare-fun m!833213 () Bool)

(assert (=> d!110745 m!833213))

(declare-fun m!833215 () Bool)

(assert (=> d!110745 m!833215))

(assert (=> d!110745 m!833215))

(declare-fun m!833217 () Bool)

(assert (=> d!110745 m!833217))

(assert (=> d!110745 m!833161))

(declare-fun m!833219 () Bool)

(assert (=> b!895705 m!833219))

(assert (=> b!895622 d!110745))

(declare-fun d!110747 () Bool)

(assert (=> d!110747 (= (array_inv!19788 (_keys!10078 thiss!1181)) (bvsge (size!25685 (_keys!10078 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895619 d!110747))

(declare-fun d!110749 () Bool)

(assert (=> d!110749 (= (array_inv!19789 (_values!5350 thiss!1181)) (bvsge (size!25686 (_values!5350 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!895619 d!110749))

(declare-fun mapNonEmpty!28981 () Bool)

(declare-fun mapRes!28981 () Bool)

(declare-fun tp!55789 () Bool)

(declare-fun e!500551 () Bool)

(assert (=> mapNonEmpty!28981 (= mapRes!28981 (and tp!55789 e!500551))))

(declare-fun mapKey!28981 () (_ BitVec 32))

(declare-fun mapValue!28981 () ValueCell!8643)

(declare-fun mapRest!28981 () (Array (_ BitVec 32) ValueCell!8643))

(assert (=> mapNonEmpty!28981 (= mapRest!28975 (store mapRest!28981 mapKey!28981 mapValue!28981))))

(declare-fun b!895713 () Bool)

(assert (=> b!895713 (= e!500551 tp_is_empty!18249)))

(declare-fun condMapEmpty!28981 () Bool)

(declare-fun mapDefault!28981 () ValueCell!8643)

(assert (=> mapNonEmpty!28975 (= condMapEmpty!28981 (= mapRest!28975 ((as const (Array (_ BitVec 32) ValueCell!8643)) mapDefault!28981)))))

(declare-fun e!500550 () Bool)

(assert (=> mapNonEmpty!28975 (= tp!55780 (and e!500550 mapRes!28981))))

(declare-fun mapIsEmpty!28981 () Bool)

(assert (=> mapIsEmpty!28981 mapRes!28981))

(declare-fun b!895714 () Bool)

(assert (=> b!895714 (= e!500550 tp_is_empty!18249)))

(assert (= (and mapNonEmpty!28975 condMapEmpty!28981) mapIsEmpty!28981))

(assert (= (and mapNonEmpty!28975 (not condMapEmpty!28981)) mapNonEmpty!28981))

(assert (= (and mapNonEmpty!28981 ((_ is ValueCellFull!8643) mapValue!28981)) b!895713))

(assert (= (and mapNonEmpty!28975 ((_ is ValueCellFull!8643) mapDefault!28981)) b!895714))

(declare-fun m!833221 () Bool)

(assert (=> mapNonEmpty!28981 m!833221))

(check-sat (not mapNonEmpty!28981) (not bm!39766) (not b!895688) (not b_next!15921) (not b!895670) (not d!110737) (not bm!39763) b_and!26231 (not b!895686) (not b!895659) (not b!895661) (not b!895705) (not b!895673) (not b!895660) tp_is_empty!18249 (not d!110745) (not b!895685))
(check-sat b_and!26231 (not b_next!15921))
