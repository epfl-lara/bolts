; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89548 () Bool)

(assert start!89548)

(declare-fun b!1026557 () Bool)

(declare-fun b_free!20511 () Bool)

(declare-fun b_next!20511 () Bool)

(assert (=> b!1026557 (= b_free!20511 (not b_next!20511))))

(declare-fun tp!72580 () Bool)

(declare-fun b_and!32775 () Bool)

(assert (=> b!1026557 (= tp!72580 b_and!32775)))

(declare-fun tp_is_empty!24231 () Bool)

(declare-fun e!579195 () Bool)

(declare-fun e!579198 () Bool)

(declare-datatypes ((V!37181 0))(
  ( (V!37182 (val!12166 Int)) )
))
(declare-datatypes ((ValueCell!11412 0))(
  ( (ValueCellFull!11412 (v!14736 V!37181)) (EmptyCell!11412) )
))
(declare-datatypes ((array!64496 0))(
  ( (array!64497 (arr!31053 (Array (_ BitVec 32) (_ BitVec 64))) (size!31567 (_ BitVec 32))) )
))
(declare-datatypes ((array!64498 0))(
  ( (array!64499 (arr!31054 (Array (_ BitVec 32) ValueCell!11412)) (size!31568 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5418 0))(
  ( (LongMapFixedSize!5419 (defaultEntry!6061 Int) (mask!29754 (_ BitVec 32)) (extraKeys!5793 (_ BitVec 32)) (zeroValue!5897 V!37181) (minValue!5897 V!37181) (_size!2764 (_ BitVec 32)) (_keys!11205 array!64496) (_values!6084 array!64498) (_vacant!2764 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5418)

(declare-fun array_inv!23899 (array!64496) Bool)

(declare-fun array_inv!23900 (array!64498) Bool)

(assert (=> b!1026557 (= e!579198 (and tp!72580 tp_is_empty!24231 (array_inv!23899 (_keys!11205 thiss!1427)) (array_inv!23900 (_values!6084 thiss!1427)) e!579195))))

(declare-fun b!1026558 () Bool)

(declare-fun e!579197 () Bool)

(declare-fun e!579193 () Bool)

(assert (=> b!1026558 (= e!579197 (not e!579193))))

(declare-fun res!687263 () Bool)

(assert (=> b!1026558 (=> res!687263 e!579193)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026558 (= res!687263 (not (validMask!0 (mask!29754 thiss!1427))))))

(declare-fun lt!451657 () array!64496)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!64496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026558 (not (arrayContainsKey!0 lt!451657 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!9639 0))(
  ( (MissingZero!9639 (index!40926 (_ BitVec 32))) (Found!9639 (index!40927 (_ BitVec 32))) (Intermediate!9639 (undefined!10451 Bool) (index!40928 (_ BitVec 32)) (x!91312 (_ BitVec 32))) (Undefined!9639) (MissingVacant!9639 (index!40929 (_ BitVec 32))) )
))
(declare-fun lt!451660 () SeekEntryResult!9639)

(declare-datatypes ((Unit!33410 0))(
  ( (Unit!33411) )
))
(declare-fun lt!451659 () Unit!33410)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64496 (_ BitVec 32) (_ BitVec 64)) Unit!33410)

(assert (=> b!1026558 (= lt!451659 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11205 thiss!1427) (index!40927 lt!451660) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64496 (_ BitVec 32)) Bool)

(assert (=> b!1026558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451657 (mask!29754 thiss!1427))))

(declare-fun lt!451658 () Unit!33410)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64496 (_ BitVec 32) (_ BitVec 32)) Unit!33410)

(assert (=> b!1026558 (= lt!451658 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11205 thiss!1427) (index!40927 lt!451660) (mask!29754 thiss!1427)))))

(declare-datatypes ((List!21890 0))(
  ( (Nil!21887) (Cons!21886 (h!23084 (_ BitVec 64)) (t!30959 List!21890)) )
))
(declare-fun arrayNoDuplicates!0 (array!64496 (_ BitVec 32) List!21890) Bool)

(assert (=> b!1026558 (arrayNoDuplicates!0 lt!451657 #b00000000000000000000000000000000 Nil!21887)))

(declare-fun lt!451654 () Unit!33410)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64496 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21890) Unit!33410)

(assert (=> b!1026558 (= lt!451654 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11205 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40927 lt!451660) #b00000000000000000000000000000000 Nil!21887))))

(declare-fun arrayCountValidKeys!0 (array!64496 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026558 (= (arrayCountValidKeys!0 lt!451657 #b00000000000000000000000000000000 (size!31567 (_keys!11205 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11205 thiss!1427) #b00000000000000000000000000000000 (size!31567 (_keys!11205 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026558 (= lt!451657 (array!64497 (store (arr!31053 (_keys!11205 thiss!1427)) (index!40927 lt!451660) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31567 (_keys!11205 thiss!1427))))))

(declare-fun lt!451655 () Unit!33410)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64496 (_ BitVec 32) (_ BitVec 64)) Unit!33410)

(assert (=> b!1026558 (= lt!451655 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11205 thiss!1427) (index!40927 lt!451660) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026559 () Bool)

(assert (=> b!1026559 (= e!579193 true)))

(declare-fun lt!451656 () Bool)

(assert (=> b!1026559 (= lt!451656 (arrayNoDuplicates!0 (_keys!11205 thiss!1427) #b00000000000000000000000000000000 Nil!21887))))

(declare-fun res!687265 () Bool)

(declare-fun e!579196 () Bool)

(assert (=> start!89548 (=> (not res!687265) (not e!579196))))

(declare-fun valid!2009 (LongMapFixedSize!5418) Bool)

(assert (=> start!89548 (= res!687265 (valid!2009 thiss!1427))))

(assert (=> start!89548 e!579196))

(assert (=> start!89548 e!579198))

(assert (=> start!89548 true))

(declare-fun mapNonEmpty!37775 () Bool)

(declare-fun mapRes!37775 () Bool)

(declare-fun tp!72579 () Bool)

(declare-fun e!579194 () Bool)

(assert (=> mapNonEmpty!37775 (= mapRes!37775 (and tp!72579 e!579194))))

(declare-fun mapRest!37775 () (Array (_ BitVec 32) ValueCell!11412))

(declare-fun mapKey!37775 () (_ BitVec 32))

(declare-fun mapValue!37775 () ValueCell!11412)

(assert (=> mapNonEmpty!37775 (= (arr!31054 (_values!6084 thiss!1427)) (store mapRest!37775 mapKey!37775 mapValue!37775))))

(declare-fun b!1026560 () Bool)

(assert (=> b!1026560 (= e!579196 e!579197)))

(declare-fun res!687267 () Bool)

(assert (=> b!1026560 (=> (not res!687267) (not e!579197))))

(get-info :version)

(assert (=> b!1026560 (= res!687267 ((_ is Found!9639) lt!451660))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64496 (_ BitVec 32)) SeekEntryResult!9639)

(assert (=> b!1026560 (= lt!451660 (seekEntry!0 key!909 (_keys!11205 thiss!1427) (mask!29754 thiss!1427)))))

(declare-fun b!1026561 () Bool)

(assert (=> b!1026561 (= e!579194 tp_is_empty!24231)))

(declare-fun b!1026562 () Bool)

(declare-fun res!687264 () Bool)

(assert (=> b!1026562 (=> res!687264 e!579193)))

(assert (=> b!1026562 (= res!687264 (or (not (= (size!31568 (_values!6084 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29754 thiss!1427)))) (not (= (size!31567 (_keys!11205 thiss!1427)) (size!31568 (_values!6084 thiss!1427)))) (bvslt (mask!29754 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5793 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5793 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun b!1026563 () Bool)

(declare-fun res!687262 () Bool)

(assert (=> b!1026563 (=> res!687262 e!579193)))

(assert (=> b!1026563 (= res!687262 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11205 thiss!1427) (mask!29754 thiss!1427))))))

(declare-fun mapIsEmpty!37775 () Bool)

(assert (=> mapIsEmpty!37775 mapRes!37775))

(declare-fun b!1026564 () Bool)

(declare-fun res!687266 () Bool)

(assert (=> b!1026564 (=> (not res!687266) (not e!579196))))

(assert (=> b!1026564 (= res!687266 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026565 () Bool)

(declare-fun e!579200 () Bool)

(assert (=> b!1026565 (= e!579200 tp_is_empty!24231)))

(declare-fun b!1026566 () Bool)

(assert (=> b!1026566 (= e!579195 (and e!579200 mapRes!37775))))

(declare-fun condMapEmpty!37775 () Bool)

(declare-fun mapDefault!37775 () ValueCell!11412)

(assert (=> b!1026566 (= condMapEmpty!37775 (= (arr!31054 (_values!6084 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11412)) mapDefault!37775)))))

(assert (= (and start!89548 res!687265) b!1026564))

(assert (= (and b!1026564 res!687266) b!1026560))

(assert (= (and b!1026560 res!687267) b!1026558))

(assert (= (and b!1026558 (not res!687263)) b!1026562))

(assert (= (and b!1026562 (not res!687264)) b!1026563))

(assert (= (and b!1026563 (not res!687262)) b!1026559))

(assert (= (and b!1026566 condMapEmpty!37775) mapIsEmpty!37775))

(assert (= (and b!1026566 (not condMapEmpty!37775)) mapNonEmpty!37775))

(assert (= (and mapNonEmpty!37775 ((_ is ValueCellFull!11412) mapValue!37775)) b!1026561))

(assert (= (and b!1026566 ((_ is ValueCellFull!11412) mapDefault!37775)) b!1026565))

(assert (= b!1026557 b!1026566))

(assert (= start!89548 b!1026557))

(declare-fun m!944995 () Bool)

(assert (=> mapNonEmpty!37775 m!944995))

(declare-fun m!944997 () Bool)

(assert (=> start!89548 m!944997))

(declare-fun m!944999 () Bool)

(assert (=> b!1026560 m!944999))

(declare-fun m!945001 () Bool)

(assert (=> b!1026559 m!945001))

(declare-fun m!945003 () Bool)

(assert (=> b!1026563 m!945003))

(declare-fun m!945005 () Bool)

(assert (=> b!1026558 m!945005))

(declare-fun m!945007 () Bool)

(assert (=> b!1026558 m!945007))

(declare-fun m!945009 () Bool)

(assert (=> b!1026558 m!945009))

(declare-fun m!945011 () Bool)

(assert (=> b!1026558 m!945011))

(declare-fun m!945013 () Bool)

(assert (=> b!1026558 m!945013))

(declare-fun m!945015 () Bool)

(assert (=> b!1026558 m!945015))

(declare-fun m!945017 () Bool)

(assert (=> b!1026558 m!945017))

(declare-fun m!945019 () Bool)

(assert (=> b!1026558 m!945019))

(declare-fun m!945021 () Bool)

(assert (=> b!1026558 m!945021))

(declare-fun m!945023 () Bool)

(assert (=> b!1026558 m!945023))

(declare-fun m!945025 () Bool)

(assert (=> b!1026558 m!945025))

(declare-fun m!945027 () Bool)

(assert (=> b!1026557 m!945027))

(declare-fun m!945029 () Bool)

(assert (=> b!1026557 m!945029))

(check-sat (not start!89548) tp_is_empty!24231 (not b!1026558) (not b_next!20511) (not b!1026557) b_and!32775 (not mapNonEmpty!37775) (not b!1026563) (not b!1026560) (not b!1026559))
(check-sat b_and!32775 (not b_next!20511))
