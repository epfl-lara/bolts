; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89560 () Bool)

(assert start!89560)

(declare-fun b!1026744 () Bool)

(declare-fun b_free!20523 () Bool)

(declare-fun b_next!20523 () Bool)

(assert (=> b!1026744 (= b_free!20523 (not b_next!20523))))

(declare-fun tp!72616 () Bool)

(declare-fun b_and!32787 () Bool)

(assert (=> b!1026744 (= tp!72616 b_and!32787)))

(declare-fun b!1026737 () Bool)

(declare-fun res!687371 () Bool)

(declare-fun e!579337 () Bool)

(assert (=> b!1026737 (=> (not res!687371) (not e!579337))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026737 (= res!687371 (not (= key!909 (bvneg key!909))))))

(declare-fun res!687375 () Bool)

(assert (=> start!89560 (=> (not res!687375) (not e!579337))))

(declare-datatypes ((V!37197 0))(
  ( (V!37198 (val!12172 Int)) )
))
(declare-datatypes ((ValueCell!11418 0))(
  ( (ValueCellFull!11418 (v!14742 V!37197)) (EmptyCell!11418) )
))
(declare-datatypes ((array!64520 0))(
  ( (array!64521 (arr!31065 (Array (_ BitVec 32) (_ BitVec 64))) (size!31579 (_ BitVec 32))) )
))
(declare-datatypes ((array!64522 0))(
  ( (array!64523 (arr!31066 (Array (_ BitVec 32) ValueCell!11418)) (size!31580 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5430 0))(
  ( (LongMapFixedSize!5431 (defaultEntry!6067 Int) (mask!29764 (_ BitVec 32)) (extraKeys!5799 (_ BitVec 32)) (zeroValue!5903 V!37197) (minValue!5903 V!37197) (_size!2770 (_ BitVec 32)) (_keys!11211 array!64520) (_values!6090 array!64522) (_vacant!2770 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5430)

(declare-fun valid!2014 (LongMapFixedSize!5430) Bool)

(assert (=> start!89560 (= res!687375 (valid!2014 thiss!1427))))

(assert (=> start!89560 e!579337))

(declare-fun e!579339 () Bool)

(assert (=> start!89560 e!579339))

(assert (=> start!89560 true))

(declare-fun mapNonEmpty!37793 () Bool)

(declare-fun mapRes!37793 () Bool)

(declare-fun tp!72615 () Bool)

(declare-fun e!579338 () Bool)

(assert (=> mapNonEmpty!37793 (= mapRes!37793 (and tp!72615 e!579338))))

(declare-fun mapRest!37793 () (Array (_ BitVec 32) ValueCell!11418))

(declare-fun mapKey!37793 () (_ BitVec 32))

(declare-fun mapValue!37793 () ValueCell!11418)

(assert (=> mapNonEmpty!37793 (= (arr!31066 (_values!6090 thiss!1427)) (store mapRest!37793 mapKey!37793 mapValue!37793))))

(declare-fun b!1026738 () Bool)

(declare-fun res!687370 () Bool)

(declare-fun e!579343 () Bool)

(assert (=> b!1026738 (=> res!687370 e!579343)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64520 (_ BitVec 32)) Bool)

(assert (=> b!1026738 (= res!687370 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11211 thiss!1427) (mask!29764 thiss!1427))))))

(declare-fun b!1026739 () Bool)

(declare-fun res!687373 () Bool)

(assert (=> b!1026739 (=> res!687373 e!579343)))

(assert (=> b!1026739 (= res!687373 (or (not (= (size!31580 (_values!6090 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29764 thiss!1427)))) (not (= (size!31579 (_keys!11211 thiss!1427)) (size!31580 (_values!6090 thiss!1427)))) (bvslt (mask!29764 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5799 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5799 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026740 () Bool)

(declare-fun e!579344 () Bool)

(assert (=> b!1026740 (= e!579337 e!579344)))

(declare-fun res!687374 () Bool)

(assert (=> b!1026740 (=> (not res!687374) (not e!579344))))

(declare-datatypes ((SeekEntryResult!9644 0))(
  ( (MissingZero!9644 (index!40946 (_ BitVec 32))) (Found!9644 (index!40947 (_ BitVec 32))) (Intermediate!9644 (undefined!10456 Bool) (index!40948 (_ BitVec 32)) (x!91333 (_ BitVec 32))) (Undefined!9644) (MissingVacant!9644 (index!40949 (_ BitVec 32))) )
))
(declare-fun lt!451786 () SeekEntryResult!9644)

(get-info :version)

(assert (=> b!1026740 (= res!687374 ((_ is Found!9644) lt!451786))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64520 (_ BitVec 32)) SeekEntryResult!9644)

(assert (=> b!1026740 (= lt!451786 (seekEntry!0 key!909 (_keys!11211 thiss!1427) (mask!29764 thiss!1427)))))

(declare-fun b!1026741 () Bool)

(declare-fun tp_is_empty!24243 () Bool)

(assert (=> b!1026741 (= e!579338 tp_is_empty!24243)))

(declare-fun b!1026742 () Bool)

(assert (=> b!1026742 (= e!579344 (not e!579343))))

(declare-fun res!687372 () Bool)

(assert (=> b!1026742 (=> res!687372 e!579343)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026742 (= res!687372 (not (validMask!0 (mask!29764 thiss!1427))))))

(declare-fun lt!451783 () array!64520)

(declare-fun arrayContainsKey!0 (array!64520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026742 (not (arrayContainsKey!0 lt!451783 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33418 0))(
  ( (Unit!33419) )
))
(declare-fun lt!451784 () Unit!33418)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64520 (_ BitVec 32) (_ BitVec 64)) Unit!33418)

(assert (=> b!1026742 (= lt!451784 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11211 thiss!1427) (index!40947 lt!451786) key!909))))

(assert (=> b!1026742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451783 (mask!29764 thiss!1427))))

(declare-fun lt!451785 () Unit!33418)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64520 (_ BitVec 32) (_ BitVec 32)) Unit!33418)

(assert (=> b!1026742 (= lt!451785 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11211 thiss!1427) (index!40947 lt!451786) (mask!29764 thiss!1427)))))

(declare-datatypes ((List!21895 0))(
  ( (Nil!21892) (Cons!21891 (h!23089 (_ BitVec 64)) (t!30964 List!21895)) )
))
(declare-fun arrayNoDuplicates!0 (array!64520 (_ BitVec 32) List!21895) Bool)

(assert (=> b!1026742 (arrayNoDuplicates!0 lt!451783 #b00000000000000000000000000000000 Nil!21892)))

(declare-fun lt!451781 () Unit!33418)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21895) Unit!33418)

(assert (=> b!1026742 (= lt!451781 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11211 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40947 lt!451786) #b00000000000000000000000000000000 Nil!21892))))

(declare-fun arrayCountValidKeys!0 (array!64520 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026742 (= (arrayCountValidKeys!0 lt!451783 #b00000000000000000000000000000000 (size!31579 (_keys!11211 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11211 thiss!1427) #b00000000000000000000000000000000 (size!31579 (_keys!11211 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026742 (= lt!451783 (array!64521 (store (arr!31065 (_keys!11211 thiss!1427)) (index!40947 lt!451786) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31579 (_keys!11211 thiss!1427))))))

(declare-fun lt!451782 () Unit!33418)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64520 (_ BitVec 32) (_ BitVec 64)) Unit!33418)

(assert (=> b!1026742 (= lt!451782 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11211 thiss!1427) (index!40947 lt!451786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026743 () Bool)

(declare-fun e!579340 () Bool)

(assert (=> b!1026743 (= e!579340 tp_is_empty!24243)))

(declare-fun e!579341 () Bool)

(declare-fun array_inv!23907 (array!64520) Bool)

(declare-fun array_inv!23908 (array!64522) Bool)

(assert (=> b!1026744 (= e!579339 (and tp!72616 tp_is_empty!24243 (array_inv!23907 (_keys!11211 thiss!1427)) (array_inv!23908 (_values!6090 thiss!1427)) e!579341))))

(declare-fun b!1026745 () Bool)

(assert (=> b!1026745 (= e!579343 true)))

(declare-fun lt!451780 () Bool)

(assert (=> b!1026745 (= lt!451780 (arrayNoDuplicates!0 (_keys!11211 thiss!1427) #b00000000000000000000000000000000 Nil!21892))))

(declare-fun mapIsEmpty!37793 () Bool)

(assert (=> mapIsEmpty!37793 mapRes!37793))

(declare-fun b!1026746 () Bool)

(assert (=> b!1026746 (= e!579341 (and e!579340 mapRes!37793))))

(declare-fun condMapEmpty!37793 () Bool)

(declare-fun mapDefault!37793 () ValueCell!11418)

(assert (=> b!1026746 (= condMapEmpty!37793 (= (arr!31066 (_values!6090 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11418)) mapDefault!37793)))))

(assert (= (and start!89560 res!687375) b!1026737))

(assert (= (and b!1026737 res!687371) b!1026740))

(assert (= (and b!1026740 res!687374) b!1026742))

(assert (= (and b!1026742 (not res!687372)) b!1026739))

(assert (= (and b!1026739 (not res!687373)) b!1026738))

(assert (= (and b!1026738 (not res!687370)) b!1026745))

(assert (= (and b!1026746 condMapEmpty!37793) mapIsEmpty!37793))

(assert (= (and b!1026746 (not condMapEmpty!37793)) mapNonEmpty!37793))

(assert (= (and mapNonEmpty!37793 ((_ is ValueCellFull!11418) mapValue!37793)) b!1026741))

(assert (= (and b!1026746 ((_ is ValueCellFull!11418) mapDefault!37793)) b!1026743))

(assert (= b!1026744 b!1026746))

(assert (= start!89560 b!1026744))

(declare-fun m!945211 () Bool)

(assert (=> b!1026745 m!945211))

(declare-fun m!945213 () Bool)

(assert (=> b!1026742 m!945213))

(declare-fun m!945215 () Bool)

(assert (=> b!1026742 m!945215))

(declare-fun m!945217 () Bool)

(assert (=> b!1026742 m!945217))

(declare-fun m!945219 () Bool)

(assert (=> b!1026742 m!945219))

(declare-fun m!945221 () Bool)

(assert (=> b!1026742 m!945221))

(declare-fun m!945223 () Bool)

(assert (=> b!1026742 m!945223))

(declare-fun m!945225 () Bool)

(assert (=> b!1026742 m!945225))

(declare-fun m!945227 () Bool)

(assert (=> b!1026742 m!945227))

(declare-fun m!945229 () Bool)

(assert (=> b!1026742 m!945229))

(declare-fun m!945231 () Bool)

(assert (=> b!1026742 m!945231))

(declare-fun m!945233 () Bool)

(assert (=> b!1026742 m!945233))

(declare-fun m!945235 () Bool)

(assert (=> b!1026744 m!945235))

(declare-fun m!945237 () Bool)

(assert (=> b!1026744 m!945237))

(declare-fun m!945239 () Bool)

(assert (=> b!1026740 m!945239))

(declare-fun m!945241 () Bool)

(assert (=> b!1026738 m!945241))

(declare-fun m!945243 () Bool)

(assert (=> start!89560 m!945243))

(declare-fun m!945245 () Bool)

(assert (=> mapNonEmpty!37793 m!945245))

(check-sat (not b!1026744) tp_is_empty!24243 (not b!1026738) (not b_next!20523) b_and!32787 (not mapNonEmpty!37793) (not start!89560) (not b!1026740) (not b!1026745) (not b!1026742))
(check-sat b_and!32787 (not b_next!20523))
