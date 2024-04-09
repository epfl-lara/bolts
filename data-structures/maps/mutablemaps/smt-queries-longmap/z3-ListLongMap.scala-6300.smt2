; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80614 () Bool)

(assert start!80614)

(declare-fun b!945813 () Bool)

(declare-fun b_free!18123 () Bool)

(declare-fun b_next!18123 () Bool)

(assert (=> b!945813 (= b_free!18123 (not b_next!18123))))

(declare-fun tp!62900 () Bool)

(declare-fun b_and!29563 () Bool)

(assert (=> b!945813 (= tp!62900 b_and!29563)))

(declare-fun res!635181 () Bool)

(declare-fun e!532108 () Bool)

(assert (=> start!80614 (=> (not res!635181) (not e!532108))))

(declare-datatypes ((V!32473 0))(
  ( (V!32474 (val!10366 Int)) )
))
(declare-datatypes ((ValueCell!9834 0))(
  ( (ValueCellFull!9834 (v!12900 V!32473)) (EmptyCell!9834) )
))
(declare-datatypes ((array!57264 0))(
  ( (array!57265 (arr!27547 (Array (_ BitVec 32) ValueCell!9834)) (size!28017 (_ BitVec 32))) )
))
(declare-datatypes ((array!57266 0))(
  ( (array!57267 (arr!27548 (Array (_ BitVec 32) (_ BitVec 64))) (size!28018 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4818 0))(
  ( (LongMapFixedSize!4819 (defaultEntry!5706 Int) (mask!27384 (_ BitVec 32)) (extraKeys!5438 (_ BitVec 32)) (zeroValue!5542 V!32473) (minValue!5542 V!32473) (_size!2464 (_ BitVec 32)) (_keys!10589 array!57266) (_values!5729 array!57264) (_vacant!2464 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4818)

(declare-fun valid!1816 (LongMapFixedSize!4818) Bool)

(assert (=> start!80614 (= res!635181 (valid!1816 thiss!1141))))

(assert (=> start!80614 e!532108))

(declare-fun e!532107 () Bool)

(assert (=> start!80614 e!532107))

(assert (=> start!80614 true))

(declare-fun b!945808 () Bool)

(declare-fun e!532113 () Bool)

(declare-fun tp_is_empty!20631 () Bool)

(assert (=> b!945808 (= e!532113 tp_is_empty!20631)))

(declare-fun mapNonEmpty!32793 () Bool)

(declare-fun mapRes!32793 () Bool)

(declare-fun tp!62901 () Bool)

(declare-fun e!532111 () Bool)

(assert (=> mapNonEmpty!32793 (= mapRes!32793 (and tp!62901 e!532111))))

(declare-fun mapKey!32793 () (_ BitVec 32))

(declare-fun mapRest!32793 () (Array (_ BitVec 32) ValueCell!9834))

(declare-fun mapValue!32793 () ValueCell!9834)

(assert (=> mapNonEmpty!32793 (= (arr!27547 (_values!5729 thiss!1141)) (store mapRest!32793 mapKey!32793 mapValue!32793))))

(declare-fun b!945809 () Bool)

(assert (=> b!945809 (= e!532111 tp_is_empty!20631)))

(declare-fun b!945810 () Bool)

(declare-fun res!635182 () Bool)

(assert (=> b!945810 (=> (not res!635182) (not e!532108))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!945810 (= res!635182 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!945811 () Bool)

(declare-fun e!532112 () Bool)

(assert (=> b!945811 (= e!532108 e!532112)))

(declare-fun res!635183 () Bool)

(assert (=> b!945811 (=> (not res!635183) (not e!532112))))

(declare-datatypes ((SeekEntryResult!9086 0))(
  ( (MissingZero!9086 (index!38714 (_ BitVec 32))) (Found!9086 (index!38715 (_ BitVec 32))) (Intermediate!9086 (undefined!9898 Bool) (index!38716 (_ BitVec 32)) (x!81299 (_ BitVec 32))) (Undefined!9086) (MissingVacant!9086 (index!38717 (_ BitVec 32))) )
))
(declare-fun lt!426094 () SeekEntryResult!9086)

(get-info :version)

(assert (=> b!945811 (= res!635183 ((_ is Found!9086) lt!426094))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57266 (_ BitVec 32)) SeekEntryResult!9086)

(assert (=> b!945811 (= lt!426094 (seekEntry!0 key!756 (_keys!10589 thiss!1141) (mask!27384 thiss!1141)))))

(declare-fun b!945812 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!945812 (= e!532112 (not (validMask!0 (mask!27384 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!57266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!945812 (arrayContainsKey!0 (_keys!10589 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31891 0))(
  ( (Unit!31892) )
))
(declare-fun lt!426095 () Unit!31891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57266 (_ BitVec 64) (_ BitVec 32)) Unit!31891)

(assert (=> b!945812 (= lt!426095 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10589 thiss!1141) key!756 (index!38715 lt!426094)))))

(declare-fun e!532109 () Bool)

(declare-fun array_inv!21344 (array!57266) Bool)

(declare-fun array_inv!21345 (array!57264) Bool)

(assert (=> b!945813 (= e!532107 (and tp!62900 tp_is_empty!20631 (array_inv!21344 (_keys!10589 thiss!1141)) (array_inv!21345 (_values!5729 thiss!1141)) e!532109))))

(declare-fun mapIsEmpty!32793 () Bool)

(assert (=> mapIsEmpty!32793 mapRes!32793))

(declare-fun b!945814 () Bool)

(assert (=> b!945814 (= e!532109 (and e!532113 mapRes!32793))))

(declare-fun condMapEmpty!32793 () Bool)

(declare-fun mapDefault!32793 () ValueCell!9834)

(assert (=> b!945814 (= condMapEmpty!32793 (= (arr!27547 (_values!5729 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9834)) mapDefault!32793)))))

(assert (= (and start!80614 res!635181) b!945810))

(assert (= (and b!945810 res!635182) b!945811))

(assert (= (and b!945811 res!635183) b!945812))

(assert (= (and b!945814 condMapEmpty!32793) mapIsEmpty!32793))

(assert (= (and b!945814 (not condMapEmpty!32793)) mapNonEmpty!32793))

(assert (= (and mapNonEmpty!32793 ((_ is ValueCellFull!9834) mapValue!32793)) b!945809))

(assert (= (and b!945814 ((_ is ValueCellFull!9834) mapDefault!32793)) b!945808))

(assert (= b!945813 b!945814))

(assert (= start!80614 b!945813))

(declare-fun m!879495 () Bool)

(assert (=> start!80614 m!879495))

(declare-fun m!879497 () Bool)

(assert (=> mapNonEmpty!32793 m!879497))

(declare-fun m!879499 () Bool)

(assert (=> b!945812 m!879499))

(declare-fun m!879501 () Bool)

(assert (=> b!945812 m!879501))

(declare-fun m!879503 () Bool)

(assert (=> b!945812 m!879503))

(declare-fun m!879505 () Bool)

(assert (=> b!945811 m!879505))

(declare-fun m!879507 () Bool)

(assert (=> b!945813 m!879507))

(declare-fun m!879509 () Bool)

(assert (=> b!945813 m!879509))

(check-sat (not b!945812) (not b!945811) (not b!945813) b_and!29563 (not b_next!18123) (not mapNonEmpty!32793) tp_is_empty!20631 (not start!80614))
(check-sat b_and!29563 (not b_next!18123))
(get-model)

(declare-fun d!114385 () Bool)

(assert (=> d!114385 (= (array_inv!21344 (_keys!10589 thiss!1141)) (bvsge (size!28018 (_keys!10589 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945813 d!114385))

(declare-fun d!114387 () Bool)

(assert (=> d!114387 (= (array_inv!21345 (_values!5729 thiss!1141)) (bvsge (size!28017 (_values!5729 thiss!1141)) #b00000000000000000000000000000000))))

(assert (=> b!945813 d!114387))

(declare-fun d!114389 () Bool)

(assert (=> d!114389 (= (validMask!0 (mask!27384 thiss!1141)) (and (or (= (mask!27384 thiss!1141) #b00000000000000000000000000000111) (= (mask!27384 thiss!1141) #b00000000000000000000000000001111) (= (mask!27384 thiss!1141) #b00000000000000000000000000011111) (= (mask!27384 thiss!1141) #b00000000000000000000000000111111) (= (mask!27384 thiss!1141) #b00000000000000000000000001111111) (= (mask!27384 thiss!1141) #b00000000000000000000000011111111) (= (mask!27384 thiss!1141) #b00000000000000000000000111111111) (= (mask!27384 thiss!1141) #b00000000000000000000001111111111) (= (mask!27384 thiss!1141) #b00000000000000000000011111111111) (= (mask!27384 thiss!1141) #b00000000000000000000111111111111) (= (mask!27384 thiss!1141) #b00000000000000000001111111111111) (= (mask!27384 thiss!1141) #b00000000000000000011111111111111) (= (mask!27384 thiss!1141) #b00000000000000000111111111111111) (= (mask!27384 thiss!1141) #b00000000000000001111111111111111) (= (mask!27384 thiss!1141) #b00000000000000011111111111111111) (= (mask!27384 thiss!1141) #b00000000000000111111111111111111) (= (mask!27384 thiss!1141) #b00000000000001111111111111111111) (= (mask!27384 thiss!1141) #b00000000000011111111111111111111) (= (mask!27384 thiss!1141) #b00000000000111111111111111111111) (= (mask!27384 thiss!1141) #b00000000001111111111111111111111) (= (mask!27384 thiss!1141) #b00000000011111111111111111111111) (= (mask!27384 thiss!1141) #b00000000111111111111111111111111) (= (mask!27384 thiss!1141) #b00000001111111111111111111111111) (= (mask!27384 thiss!1141) #b00000011111111111111111111111111) (= (mask!27384 thiss!1141) #b00000111111111111111111111111111) (= (mask!27384 thiss!1141) #b00001111111111111111111111111111) (= (mask!27384 thiss!1141) #b00011111111111111111111111111111) (= (mask!27384 thiss!1141) #b00111111111111111111111111111111)) (bvsle (mask!27384 thiss!1141) #b00111111111111111111111111111111)))))

(assert (=> b!945812 d!114389))

(declare-fun d!114391 () Bool)

(declare-fun res!635197 () Bool)

(declare-fun e!532139 () Bool)

(assert (=> d!114391 (=> res!635197 e!532139)))

(assert (=> d!114391 (= res!635197 (= (select (arr!27548 (_keys!10589 thiss!1141)) #b00000000000000000000000000000000) key!756))))

(assert (=> d!114391 (= (arrayContainsKey!0 (_keys!10589 thiss!1141) key!756 #b00000000000000000000000000000000) e!532139)))

(declare-fun b!945840 () Bool)

(declare-fun e!532140 () Bool)

(assert (=> b!945840 (= e!532139 e!532140)))

(declare-fun res!635198 () Bool)

(assert (=> b!945840 (=> (not res!635198) (not e!532140))))

(assert (=> b!945840 (= res!635198 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!28018 (_keys!10589 thiss!1141))))))

(declare-fun b!945841 () Bool)

(assert (=> b!945841 (= e!532140 (arrayContainsKey!0 (_keys!10589 thiss!1141) key!756 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!114391 (not res!635197)) b!945840))

(assert (= (and b!945840 res!635198) b!945841))

(declare-fun m!879527 () Bool)

(assert (=> d!114391 m!879527))

(declare-fun m!879529 () Bool)

(assert (=> b!945841 m!879529))

(assert (=> b!945812 d!114391))

(declare-fun d!114393 () Bool)

(assert (=> d!114393 (arrayContainsKey!0 (_keys!10589 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426104 () Unit!31891)

(declare-fun choose!13 (array!57266 (_ BitVec 64) (_ BitVec 32)) Unit!31891)

(assert (=> d!114393 (= lt!426104 (choose!13 (_keys!10589 thiss!1141) key!756 (index!38715 lt!426094)))))

(assert (=> d!114393 (bvsge (index!38715 lt!426094) #b00000000000000000000000000000000)))

(assert (=> d!114393 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10589 thiss!1141) key!756 (index!38715 lt!426094)) lt!426104)))

(declare-fun bs!26584 () Bool)

(assert (= bs!26584 d!114393))

(assert (=> bs!26584 m!879501))

(declare-fun m!879531 () Bool)

(assert (=> bs!26584 m!879531))

(assert (=> b!945812 d!114393))

(declare-fun d!114395 () Bool)

(declare-fun res!635205 () Bool)

(declare-fun e!532143 () Bool)

(assert (=> d!114395 (=> (not res!635205) (not e!532143))))

(declare-fun simpleValid!354 (LongMapFixedSize!4818) Bool)

(assert (=> d!114395 (= res!635205 (simpleValid!354 thiss!1141))))

(assert (=> d!114395 (= (valid!1816 thiss!1141) e!532143)))

(declare-fun b!945848 () Bool)

(declare-fun res!635206 () Bool)

(assert (=> b!945848 (=> (not res!635206) (not e!532143))))

(declare-fun arrayCountValidKeys!0 (array!57266 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!945848 (= res!635206 (= (arrayCountValidKeys!0 (_keys!10589 thiss!1141) #b00000000000000000000000000000000 (size!28018 (_keys!10589 thiss!1141))) (_size!2464 thiss!1141)))))

(declare-fun b!945849 () Bool)

(declare-fun res!635207 () Bool)

(assert (=> b!945849 (=> (not res!635207) (not e!532143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57266 (_ BitVec 32)) Bool)

(assert (=> b!945849 (= res!635207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10589 thiss!1141) (mask!27384 thiss!1141)))))

(declare-fun b!945850 () Bool)

(declare-datatypes ((List!19424 0))(
  ( (Nil!19421) (Cons!19420 (h!20572 (_ BitVec 64)) (t!27753 List!19424)) )
))
(declare-fun arrayNoDuplicates!0 (array!57266 (_ BitVec 32) List!19424) Bool)

(assert (=> b!945850 (= e!532143 (arrayNoDuplicates!0 (_keys!10589 thiss!1141) #b00000000000000000000000000000000 Nil!19421))))

(assert (= (and d!114395 res!635205) b!945848))

(assert (= (and b!945848 res!635206) b!945849))

(assert (= (and b!945849 res!635207) b!945850))

(declare-fun m!879533 () Bool)

(assert (=> d!114395 m!879533))

(declare-fun m!879535 () Bool)

(assert (=> b!945848 m!879535))

(declare-fun m!879537 () Bool)

(assert (=> b!945849 m!879537))

(declare-fun m!879539 () Bool)

(assert (=> b!945850 m!879539))

(assert (=> start!80614 d!114395))

(declare-fun b!945863 () Bool)

(declare-fun e!532150 () SeekEntryResult!9086)

(declare-fun lt!426115 () SeekEntryResult!9086)

(assert (=> b!945863 (= e!532150 (ite ((_ is MissingVacant!9086) lt!426115) (MissingZero!9086 (index!38717 lt!426115)) lt!426115))))

(declare-fun lt!426116 () SeekEntryResult!9086)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57266 (_ BitVec 32)) SeekEntryResult!9086)

(assert (=> b!945863 (= lt!426115 (seekKeyOrZeroReturnVacant!0 (x!81299 lt!426116) (index!38716 lt!426116) (index!38716 lt!426116) key!756 (_keys!10589 thiss!1141) (mask!27384 thiss!1141)))))

(declare-fun b!945864 () Bool)

(declare-fun e!532152 () SeekEntryResult!9086)

(declare-fun e!532151 () SeekEntryResult!9086)

(assert (=> b!945864 (= e!532152 e!532151)))

(declare-fun lt!426114 () (_ BitVec 64))

(assert (=> b!945864 (= lt!426114 (select (arr!27548 (_keys!10589 thiss!1141)) (index!38716 lt!426116)))))

(declare-fun c!98412 () Bool)

(assert (=> b!945864 (= c!98412 (= lt!426114 key!756))))

(declare-fun b!945865 () Bool)

(assert (=> b!945865 (= e!532152 Undefined!9086)))

(declare-fun b!945866 () Bool)

(assert (=> b!945866 (= e!532151 (Found!9086 (index!38716 lt!426116)))))

(declare-fun b!945867 () Bool)

(assert (=> b!945867 (= e!532150 (MissingZero!9086 (index!38716 lt!426116)))))

(declare-fun b!945868 () Bool)

(declare-fun c!98413 () Bool)

(assert (=> b!945868 (= c!98413 (= lt!426114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!945868 (= e!532151 e!532150)))

(declare-fun d!114397 () Bool)

(declare-fun lt!426113 () SeekEntryResult!9086)

(assert (=> d!114397 (and (or ((_ is MissingVacant!9086) lt!426113) (not ((_ is Found!9086) lt!426113)) (and (bvsge (index!38715 lt!426113) #b00000000000000000000000000000000) (bvslt (index!38715 lt!426113) (size!28018 (_keys!10589 thiss!1141))))) (not ((_ is MissingVacant!9086) lt!426113)) (or (not ((_ is Found!9086) lt!426113)) (= (select (arr!27548 (_keys!10589 thiss!1141)) (index!38715 lt!426113)) key!756)))))

(assert (=> d!114397 (= lt!426113 e!532152)))

(declare-fun c!98411 () Bool)

(assert (=> d!114397 (= c!98411 (and ((_ is Intermediate!9086) lt!426116) (undefined!9898 lt!426116)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!57266 (_ BitVec 32)) SeekEntryResult!9086)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!114397 (= lt!426116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!756 (mask!27384 thiss!1141)) key!756 (_keys!10589 thiss!1141) (mask!27384 thiss!1141)))))

(assert (=> d!114397 (validMask!0 (mask!27384 thiss!1141))))

(assert (=> d!114397 (= (seekEntry!0 key!756 (_keys!10589 thiss!1141) (mask!27384 thiss!1141)) lt!426113)))

(assert (= (and d!114397 c!98411) b!945865))

(assert (= (and d!114397 (not c!98411)) b!945864))

(assert (= (and b!945864 c!98412) b!945866))

(assert (= (and b!945864 (not c!98412)) b!945868))

(assert (= (and b!945868 c!98413) b!945867))

(assert (= (and b!945868 (not c!98413)) b!945863))

(declare-fun m!879541 () Bool)

(assert (=> b!945863 m!879541))

(declare-fun m!879543 () Bool)

(assert (=> b!945864 m!879543))

(declare-fun m!879545 () Bool)

(assert (=> d!114397 m!879545))

(declare-fun m!879547 () Bool)

(assert (=> d!114397 m!879547))

(assert (=> d!114397 m!879547))

(declare-fun m!879549 () Bool)

(assert (=> d!114397 m!879549))

(assert (=> d!114397 m!879499))

(assert (=> b!945811 d!114397))

(declare-fun mapIsEmpty!32799 () Bool)

(declare-fun mapRes!32799 () Bool)

(assert (=> mapIsEmpty!32799 mapRes!32799))

(declare-fun condMapEmpty!32799 () Bool)

(declare-fun mapDefault!32799 () ValueCell!9834)

(assert (=> mapNonEmpty!32793 (= condMapEmpty!32799 (= mapRest!32793 ((as const (Array (_ BitVec 32) ValueCell!9834)) mapDefault!32799)))))

(declare-fun e!532157 () Bool)

(assert (=> mapNonEmpty!32793 (= tp!62901 (and e!532157 mapRes!32799))))

(declare-fun b!945876 () Bool)

(assert (=> b!945876 (= e!532157 tp_is_empty!20631)))

(declare-fun mapNonEmpty!32799 () Bool)

(declare-fun tp!62910 () Bool)

(declare-fun e!532158 () Bool)

(assert (=> mapNonEmpty!32799 (= mapRes!32799 (and tp!62910 e!532158))))

(declare-fun mapRest!32799 () (Array (_ BitVec 32) ValueCell!9834))

(declare-fun mapValue!32799 () ValueCell!9834)

(declare-fun mapKey!32799 () (_ BitVec 32))

(assert (=> mapNonEmpty!32799 (= mapRest!32793 (store mapRest!32799 mapKey!32799 mapValue!32799))))

(declare-fun b!945875 () Bool)

(assert (=> b!945875 (= e!532158 tp_is_empty!20631)))

(assert (= (and mapNonEmpty!32793 condMapEmpty!32799) mapIsEmpty!32799))

(assert (= (and mapNonEmpty!32793 (not condMapEmpty!32799)) mapNonEmpty!32799))

(assert (= (and mapNonEmpty!32799 ((_ is ValueCellFull!9834) mapValue!32799)) b!945875))

(assert (= (and mapNonEmpty!32793 ((_ is ValueCellFull!9834) mapDefault!32799)) b!945876))

(declare-fun m!879551 () Bool)

(assert (=> mapNonEmpty!32799 m!879551))

(check-sat tp_is_empty!20631 (not mapNonEmpty!32799) (not d!114397) (not b!945841) (not d!114393) (not d!114395) (not b!945850) (not b!945863) (not b!945848) (not b!945849) b_and!29563 (not b_next!18123))
(check-sat b_and!29563 (not b_next!18123))
