; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89584 () Bool)

(assert start!89584)

(declare-fun b!1027101 () Bool)

(declare-fun b_free!20547 () Bool)

(declare-fun b_next!20547 () Bool)

(assert (=> b!1027101 (= b_free!20547 (not b_next!20547))))

(declare-fun tp!72687 () Bool)

(declare-fun b_and!32811 () Bool)

(assert (=> b!1027101 (= tp!72687 b_and!32811)))

(declare-fun b!1027097 () Bool)

(declare-fun e!579631 () Bool)

(assert (=> b!1027097 (= e!579631 true)))

(declare-fun lt!452034 () Bool)

(declare-datatypes ((V!37229 0))(
  ( (V!37230 (val!12184 Int)) )
))
(declare-datatypes ((ValueCell!11430 0))(
  ( (ValueCellFull!11430 (v!14754 V!37229)) (EmptyCell!11430) )
))
(declare-datatypes ((array!64568 0))(
  ( (array!64569 (arr!31089 (Array (_ BitVec 32) (_ BitVec 64))) (size!31603 (_ BitVec 32))) )
))
(declare-datatypes ((array!64570 0))(
  ( (array!64571 (arr!31090 (Array (_ BitVec 32) ValueCell!11430)) (size!31604 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5454 0))(
  ( (LongMapFixedSize!5455 (defaultEntry!6079 Int) (mask!29784 (_ BitVec 32)) (extraKeys!5811 (_ BitVec 32)) (zeroValue!5915 V!37229) (minValue!5915 V!37229) (_size!2782 (_ BitVec 32)) (_keys!11223 array!64568) (_values!6102 array!64570) (_vacant!2782 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5454)

(declare-datatypes ((List!21907 0))(
  ( (Nil!21904) (Cons!21903 (h!23101 (_ BitVec 64)) (t!30976 List!21907)) )
))
(declare-fun arrayNoDuplicates!0 (array!64568 (_ BitVec 32) List!21907) Bool)

(assert (=> b!1027097 (= lt!452034 (arrayNoDuplicates!0 (_keys!11223 thiss!1427) #b00000000000000000000000000000000 Nil!21904))))

(declare-fun b!1027098 () Bool)

(declare-fun e!579632 () Bool)

(declare-fun e!579626 () Bool)

(assert (=> b!1027098 (= e!579632 e!579626)))

(declare-fun res!687586 () Bool)

(assert (=> b!1027098 (=> (not res!687586) (not e!579626))))

(declare-datatypes ((SeekEntryResult!9653 0))(
  ( (MissingZero!9653 (index!40982 (_ BitVec 32))) (Found!9653 (index!40983 (_ BitVec 32))) (Intermediate!9653 (undefined!10465 Bool) (index!40984 (_ BitVec 32)) (x!91374 (_ BitVec 32))) (Undefined!9653) (MissingVacant!9653 (index!40985 (_ BitVec 32))) )
))
(declare-fun lt!452037 () SeekEntryResult!9653)

(get-info :version)

(assert (=> b!1027098 (= res!687586 ((_ is Found!9653) lt!452037))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64568 (_ BitVec 32)) SeekEntryResult!9653)

(assert (=> b!1027098 (= lt!452037 (seekEntry!0 key!909 (_keys!11223 thiss!1427) (mask!29784 thiss!1427)))))

(declare-fun b!1027099 () Bool)

(assert (=> b!1027099 (= e!579626 (not e!579631))))

(declare-fun res!687588 () Bool)

(assert (=> b!1027099 (=> res!687588 e!579631)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1027099 (= res!687588 (not (validMask!0 (mask!29784 thiss!1427))))))

(declare-fun lt!452036 () array!64568)

(declare-fun arrayContainsKey!0 (array!64568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1027099 (not (arrayContainsKey!0 lt!452036 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33434 0))(
  ( (Unit!33435) )
))
(declare-fun lt!452032 () Unit!33434)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64568 (_ BitVec 32) (_ BitVec 64)) Unit!33434)

(assert (=> b!1027099 (= lt!452032 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11223 thiss!1427) (index!40983 lt!452037) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64568 (_ BitVec 32)) Bool)

(assert (=> b!1027099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!452036 (mask!29784 thiss!1427))))

(declare-fun lt!452035 () Unit!33434)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64568 (_ BitVec 32) (_ BitVec 32)) Unit!33434)

(assert (=> b!1027099 (= lt!452035 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11223 thiss!1427) (index!40983 lt!452037) (mask!29784 thiss!1427)))))

(assert (=> b!1027099 (arrayNoDuplicates!0 lt!452036 #b00000000000000000000000000000000 Nil!21904)))

(declare-fun lt!452038 () Unit!33434)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64568 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21907) Unit!33434)

(assert (=> b!1027099 (= lt!452038 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11223 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40983 lt!452037) #b00000000000000000000000000000000 Nil!21904))))

(declare-fun arrayCountValidKeys!0 (array!64568 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1027099 (= (arrayCountValidKeys!0 lt!452036 #b00000000000000000000000000000000 (size!31603 (_keys!11223 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11223 thiss!1427) #b00000000000000000000000000000000 (size!31603 (_keys!11223 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1027099 (= lt!452036 (array!64569 (store (arr!31089 (_keys!11223 thiss!1427)) (index!40983 lt!452037) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31603 (_keys!11223 thiss!1427))))))

(declare-fun lt!452033 () Unit!33434)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64568 (_ BitVec 32) (_ BitVec 64)) Unit!33434)

(assert (=> b!1027099 (= lt!452033 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11223 thiss!1427) (index!40983 lt!452037) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1027100 () Bool)

(declare-fun e!579629 () Bool)

(declare-fun e!579628 () Bool)

(declare-fun mapRes!37829 () Bool)

(assert (=> b!1027100 (= e!579629 (and e!579628 mapRes!37829))))

(declare-fun condMapEmpty!37829 () Bool)

(declare-fun mapDefault!37829 () ValueCell!11430)

(assert (=> b!1027100 (= condMapEmpty!37829 (= (arr!31090 (_values!6102 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11430)) mapDefault!37829)))))

(declare-fun mapNonEmpty!37829 () Bool)

(declare-fun tp!72688 () Bool)

(declare-fun e!579627 () Bool)

(assert (=> mapNonEmpty!37829 (= mapRes!37829 (and tp!72688 e!579627))))

(declare-fun mapKey!37829 () (_ BitVec 32))

(declare-fun mapValue!37829 () ValueCell!11430)

(declare-fun mapRest!37829 () (Array (_ BitVec 32) ValueCell!11430))

(assert (=> mapNonEmpty!37829 (= (arr!31090 (_values!6102 thiss!1427)) (store mapRest!37829 mapKey!37829 mapValue!37829))))

(declare-fun e!579625 () Bool)

(declare-fun tp_is_empty!24267 () Bool)

(declare-fun array_inv!23923 (array!64568) Bool)

(declare-fun array_inv!23924 (array!64570) Bool)

(assert (=> b!1027101 (= e!579625 (and tp!72687 tp_is_empty!24267 (array_inv!23923 (_keys!11223 thiss!1427)) (array_inv!23924 (_values!6102 thiss!1427)) e!579629))))

(declare-fun b!1027102 () Bool)

(assert (=> b!1027102 (= e!579627 tp_is_empty!24267)))

(declare-fun res!687589 () Bool)

(assert (=> start!89584 (=> (not res!687589) (not e!579632))))

(declare-fun valid!2022 (LongMapFixedSize!5454) Bool)

(assert (=> start!89584 (= res!687589 (valid!2022 thiss!1427))))

(assert (=> start!89584 e!579632))

(assert (=> start!89584 e!579625))

(assert (=> start!89584 true))

(declare-fun b!1027103 () Bool)

(declare-fun res!687591 () Bool)

(assert (=> b!1027103 (=> res!687591 e!579631)))

(assert (=> b!1027103 (= res!687591 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11223 thiss!1427) (mask!29784 thiss!1427))))))

(declare-fun b!1027104 () Bool)

(assert (=> b!1027104 (= e!579628 tp_is_empty!24267)))

(declare-fun b!1027105 () Bool)

(declare-fun res!687590 () Bool)

(assert (=> b!1027105 (=> (not res!687590) (not e!579632))))

(assert (=> b!1027105 (= res!687590 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!37829 () Bool)

(assert (=> mapIsEmpty!37829 mapRes!37829))

(declare-fun b!1027106 () Bool)

(declare-fun res!687587 () Bool)

(assert (=> b!1027106 (=> res!687587 e!579631)))

(assert (=> b!1027106 (= res!687587 (or (not (= (size!31604 (_values!6102 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29784 thiss!1427)))) (not (= (size!31603 (_keys!11223 thiss!1427)) (size!31604 (_values!6102 thiss!1427)))) (bvslt (mask!29784 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5811 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5811 thiss!1427) #b00000000000000000000000000000011)))))

(assert (= (and start!89584 res!687589) b!1027105))

(assert (= (and b!1027105 res!687590) b!1027098))

(assert (= (and b!1027098 res!687586) b!1027099))

(assert (= (and b!1027099 (not res!687588)) b!1027106))

(assert (= (and b!1027106 (not res!687587)) b!1027103))

(assert (= (and b!1027103 (not res!687591)) b!1027097))

(assert (= (and b!1027100 condMapEmpty!37829) mapIsEmpty!37829))

(assert (= (and b!1027100 (not condMapEmpty!37829)) mapNonEmpty!37829))

(assert (= (and mapNonEmpty!37829 ((_ is ValueCellFull!11430) mapValue!37829)) b!1027102))

(assert (= (and b!1027100 ((_ is ValueCellFull!11430) mapDefault!37829)) b!1027104))

(assert (= b!1027101 b!1027100))

(assert (= start!89584 b!1027101))

(declare-fun m!945643 () Bool)

(assert (=> b!1027103 m!945643))

(declare-fun m!945645 () Bool)

(assert (=> b!1027098 m!945645))

(declare-fun m!945647 () Bool)

(assert (=> mapNonEmpty!37829 m!945647))

(declare-fun m!945649 () Bool)

(assert (=> b!1027101 m!945649))

(declare-fun m!945651 () Bool)

(assert (=> b!1027101 m!945651))

(declare-fun m!945653 () Bool)

(assert (=> b!1027097 m!945653))

(declare-fun m!945655 () Bool)

(assert (=> start!89584 m!945655))

(declare-fun m!945657 () Bool)

(assert (=> b!1027099 m!945657))

(declare-fun m!945659 () Bool)

(assert (=> b!1027099 m!945659))

(declare-fun m!945661 () Bool)

(assert (=> b!1027099 m!945661))

(declare-fun m!945663 () Bool)

(assert (=> b!1027099 m!945663))

(declare-fun m!945665 () Bool)

(assert (=> b!1027099 m!945665))

(declare-fun m!945667 () Bool)

(assert (=> b!1027099 m!945667))

(declare-fun m!945669 () Bool)

(assert (=> b!1027099 m!945669))

(declare-fun m!945671 () Bool)

(assert (=> b!1027099 m!945671))

(declare-fun m!945673 () Bool)

(assert (=> b!1027099 m!945673))

(declare-fun m!945675 () Bool)

(assert (=> b!1027099 m!945675))

(declare-fun m!945677 () Bool)

(assert (=> b!1027099 m!945677))

(check-sat (not start!89584) b_and!32811 (not b!1027098) (not b_next!20547) (not b!1027099) (not mapNonEmpty!37829) (not b!1027101) (not b!1027097) (not b!1027103) tp_is_empty!24267)
(check-sat b_and!32811 (not b_next!20547))
