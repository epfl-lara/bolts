; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89578 () Bool)

(assert start!89578)

(declare-fun b!1027013 () Bool)

(declare-fun b_free!20541 () Bool)

(declare-fun b_next!20541 () Bool)

(assert (=> b!1027013 (= b_free!20541 (not b_next!20541))))

(declare-fun tp!72670 () Bool)

(declare-fun b_and!32805 () Bool)

(assert (=> b!1027013 (= tp!72670 b_and!32805)))

(declare-fun b!1027007 () Bool)

(declare-fun e!579560 () Bool)

(assert (=> b!1027007 (= e!579560 true)))

(declare-fun lt!451975 () Bool)

(declare-datatypes ((V!37221 0))(
  ( (V!37222 (val!12181 Int)) )
))
(declare-datatypes ((ValueCell!11427 0))(
  ( (ValueCellFull!11427 (v!14751 V!37221)) (EmptyCell!11427) )
))
(declare-datatypes ((array!64556 0))(
  ( (array!64557 (arr!31083 (Array (_ BitVec 32) (_ BitVec 64))) (size!31597 (_ BitVec 32))) )
))
(declare-datatypes ((array!64558 0))(
  ( (array!64559 (arr!31084 (Array (_ BitVec 32) ValueCell!11427)) (size!31598 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5448 0))(
  ( (LongMapFixedSize!5449 (defaultEntry!6076 Int) (mask!29779 (_ BitVec 32)) (extraKeys!5808 (_ BitVec 32)) (zeroValue!5912 V!37221) (minValue!5912 V!37221) (_size!2779 (_ BitVec 32)) (_keys!11220 array!64556) (_values!6099 array!64558) (_vacant!2779 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5448)

(declare-datatypes ((List!21904 0))(
  ( (Nil!21901) (Cons!21900 (h!23098 (_ BitVec 64)) (t!30973 List!21904)) )
))
(declare-fun arrayNoDuplicates!0 (array!64556 (_ BitVec 32) List!21904) Bool)

(assert (=> b!1027007 (= lt!451975 (arrayNoDuplicates!0 (_keys!11220 thiss!1427) #b00000000000000000000000000000000 Nil!21901))))

(declare-fun b!1027008 () Bool)

(declare-fun res!687533 () Bool)

(assert (=> b!1027008 (=> res!687533 e!579560)))

(assert (=> b!1027008 (= res!687533 (or (not (= (size!31598 (_values!6099 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29779 thiss!1427)))) (not (= (size!31597 (_keys!11220 thiss!1427)) (size!31598 (_values!6099 thiss!1427)))) (bvslt (mask!29779 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5808 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5808 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1027009 () Bool)

(declare-fun e!579553 () Bool)

(assert (=> b!1027009 (= e!579553 (not e!579560))))

(declare-fun res!687536 () Bool)

(assert (=> b!1027009 (=> res!687536 e!579560)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027009 (= res!687536 (not (validMask!0 (mask!29779 thiss!1427))))))

(declare-fun lt!451969 () array!64556)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027009 (not (arrayContainsKey!0 lt!451969 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9651 0))(
  ( (MissingZero!9651 (index!40974 (_ BitVec 32))) (Found!9651 (index!40975 (_ BitVec 32))) (Intermediate!9651 (undefined!10463 Bool) (index!40976 (_ BitVec 32)) (x!91364 (_ BitVec 32))) (Undefined!9651) (MissingVacant!9651 (index!40977 (_ BitVec 32))) )
))
(declare-fun lt!451971 () SeekEntryResult!9651)

(declare-datatypes ((Unit!33432 0))(
  ( (Unit!33433) )
))
(declare-fun lt!451974 () Unit!33432)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64556 (_ BitVec 32) (_ BitVec 64)) Unit!33432)

(assert (=> b!1027009 (= lt!451974 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11220 thiss!1427) (index!40975 lt!451971) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64556 (_ BitVec 32)) Bool)

(assert (=> b!1027009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451969 (mask!29779 thiss!1427))))

(declare-fun lt!451970 () Unit!33432)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64556 (_ BitVec 32) (_ BitVec 32)) Unit!33432)

(assert (=> b!1027009 (= lt!451970 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11220 thiss!1427) (index!40975 lt!451971) (mask!29779 thiss!1427)))))

(assert (=> b!1027009 (arrayNoDuplicates!0 lt!451969 #b00000000000000000000000000000000 Nil!21901)))

(declare-fun lt!451972 () Unit!33432)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64556 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21904) Unit!33432)

(assert (=> b!1027009 (= lt!451972 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11220 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40975 lt!451971) #b00000000000000000000000000000000 Nil!21901))))

(declare-fun arrayCountValidKeys!0 (array!64556 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027009 (= (arrayCountValidKeys!0 lt!451969 #b00000000000000000000000000000000 (size!31597 (_keys!11220 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11220 thiss!1427) #b00000000000000000000000000000000 (size!31597 (_keys!11220 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027009 (= lt!451969 (array!64557 (store (arr!31083 (_keys!11220 thiss!1427)) (index!40975 lt!451971) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31597 (_keys!11220 thiss!1427))))))

(declare-fun lt!451973 () Unit!33432)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64556 (_ BitVec 32) (_ BitVec 64)) Unit!33432)

(assert (=> b!1027009 (= lt!451973 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11220 thiss!1427) (index!40975 lt!451971) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37820 () Bool)

(declare-fun mapRes!37820 () Bool)

(assert (=> mapIsEmpty!37820 mapRes!37820))

(declare-fun b!1027010 () Bool)

(declare-fun res!687535 () Bool)

(declare-fun e!579556 () Bool)

(assert (=> b!1027010 (=> (not res!687535) (not e!579556))))

(assert (=> b!1027010 (= res!687535 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1027011 () Bool)

(declare-fun res!687534 () Bool)

(assert (=> b!1027011 (=> res!687534 e!579560)))

(assert (=> b!1027011 (= res!687534 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11220 thiss!1427) (mask!29779 thiss!1427))))))

(declare-fun e!579559 () Bool)

(declare-fun e!579555 () Bool)

(declare-fun tp_is_empty!24261 () Bool)

(declare-fun array_inv!23919 (array!64556) Bool)

(declare-fun array_inv!23920 (array!64558) Bool)

(assert (=> b!1027013 (= e!579555 (and tp!72670 tp_is_empty!24261 (array_inv!23919 (_keys!11220 thiss!1427)) (array_inv!23920 (_values!6099 thiss!1427)) e!579559))))

(declare-fun res!687532 () Bool)

(assert (=> start!89578 (=> (not res!687532) (not e!579556))))

(declare-fun valid!2021 (LongMapFixedSize!5448) Bool)

(assert (=> start!89578 (= res!687532 (valid!2021 thiss!1427))))

(assert (=> start!89578 e!579556))

(assert (=> start!89578 e!579555))

(assert (=> start!89578 true))

(declare-fun b!1027012 () Bool)

(assert (=> b!1027012 (= e!579556 e!579553)))

(declare-fun res!687537 () Bool)

(assert (=> b!1027012 (=> (not res!687537) (not e!579553))))

(get-info :version)

(assert (=> b!1027012 (= res!687537 ((_ is Found!9651) lt!451971))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64556 (_ BitVec 32)) SeekEntryResult!9651)

(assert (=> b!1027012 (= lt!451971 (seekEntry!0 key!909 (_keys!11220 thiss!1427) (mask!29779 thiss!1427)))))

(declare-fun b!1027014 () Bool)

(declare-fun e!579557 () Bool)

(assert (=> b!1027014 (= e!579557 tp_is_empty!24261)))

(declare-fun b!1027015 () Bool)

(declare-fun e!579558 () Bool)

(assert (=> b!1027015 (= e!579559 (and e!579558 mapRes!37820))))

(declare-fun condMapEmpty!37820 () Bool)

(declare-fun mapDefault!37820 () ValueCell!11427)

(assert (=> b!1027015 (= condMapEmpty!37820 (= (arr!31084 (_values!6099 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11427)) mapDefault!37820)))))

(declare-fun mapNonEmpty!37820 () Bool)

(declare-fun tp!72669 () Bool)

(assert (=> mapNonEmpty!37820 (= mapRes!37820 (and tp!72669 e!579557))))

(declare-fun mapKey!37820 () (_ BitVec 32))

(declare-fun mapValue!37820 () ValueCell!11427)

(declare-fun mapRest!37820 () (Array (_ BitVec 32) ValueCell!11427))

(assert (=> mapNonEmpty!37820 (= (arr!31084 (_values!6099 thiss!1427)) (store mapRest!37820 mapKey!37820 mapValue!37820))))

(declare-fun b!1027016 () Bool)

(assert (=> b!1027016 (= e!579558 tp_is_empty!24261)))

(assert (= (and start!89578 res!687532) b!1027010))

(assert (= (and b!1027010 res!687535) b!1027012))

(assert (= (and b!1027012 res!687537) b!1027009))

(assert (= (and b!1027009 (not res!687536)) b!1027008))

(assert (= (and b!1027008 (not res!687533)) b!1027011))

(assert (= (and b!1027011 (not res!687534)) b!1027007))

(assert (= (and b!1027015 condMapEmpty!37820) mapIsEmpty!37820))

(assert (= (and b!1027015 (not condMapEmpty!37820)) mapNonEmpty!37820))

(assert (= (and mapNonEmpty!37820 ((_ is ValueCellFull!11427) mapValue!37820)) b!1027014))

(assert (= (and b!1027015 ((_ is ValueCellFull!11427) mapDefault!37820)) b!1027016))

(assert (= b!1027013 b!1027015))

(assert (= start!89578 b!1027013))

(declare-fun m!945535 () Bool)

(assert (=> b!1027011 m!945535))

(declare-fun m!945537 () Bool)

(assert (=> mapNonEmpty!37820 m!945537))

(declare-fun m!945539 () Bool)

(assert (=> b!1027007 m!945539))

(declare-fun m!945541 () Bool)

(assert (=> b!1027009 m!945541))

(declare-fun m!945543 () Bool)

(assert (=> b!1027009 m!945543))

(declare-fun m!945545 () Bool)

(assert (=> b!1027009 m!945545))

(declare-fun m!945547 () Bool)

(assert (=> b!1027009 m!945547))

(declare-fun m!945549 () Bool)

(assert (=> b!1027009 m!945549))

(declare-fun m!945551 () Bool)

(assert (=> b!1027009 m!945551))

(declare-fun m!945553 () Bool)

(assert (=> b!1027009 m!945553))

(declare-fun m!945555 () Bool)

(assert (=> b!1027009 m!945555))

(declare-fun m!945557 () Bool)

(assert (=> b!1027009 m!945557))

(declare-fun m!945559 () Bool)

(assert (=> b!1027009 m!945559))

(declare-fun m!945561 () Bool)

(assert (=> b!1027009 m!945561))

(declare-fun m!945563 () Bool)

(assert (=> b!1027013 m!945563))

(declare-fun m!945565 () Bool)

(assert (=> b!1027013 m!945565))

(declare-fun m!945567 () Bool)

(assert (=> b!1027012 m!945567))

(declare-fun m!945569 () Bool)

(assert (=> start!89578 m!945569))

(check-sat (not b!1027012) (not b_next!20541) (not b!1027011) b_and!32805 (not b!1027013) (not mapNonEmpty!37820) (not b!1027009) (not b!1027007) (not start!89578) tp_is_empty!24261)
(check-sat b_and!32805 (not b_next!20541))
