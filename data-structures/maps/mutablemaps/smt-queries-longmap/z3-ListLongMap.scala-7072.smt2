; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89524 () Bool)

(assert start!89524)

(declare-fun b!1026209 () Bool)

(declare-fun b_free!20487 () Bool)

(declare-fun b_next!20487 () Bool)

(assert (=> b!1026209 (= b_free!20487 (not b_next!20487))))

(declare-fun tp!72507 () Bool)

(declare-fun b_and!32751 () Bool)

(assert (=> b!1026209 (= tp!72507 b_and!32751)))

(declare-fun b!1026205 () Bool)

(declare-fun res!687055 () Bool)

(declare-fun e!578910 () Bool)

(assert (=> b!1026205 (=> (not res!687055) (not e!578910))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026205 (= res!687055 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026206 () Bool)

(declare-fun e!578907 () Bool)

(declare-fun e!578909 () Bool)

(assert (=> b!1026206 (= e!578907 (not e!578909))))

(declare-fun res!687057 () Bool)

(assert (=> b!1026206 (=> res!687057 e!578909)))

(declare-datatypes ((SeekEntryResult!9630 0))(
  ( (MissingZero!9630 (index!40890 (_ BitVec 32))) (Found!9630 (index!40891 (_ BitVec 32))) (Intermediate!9630 (undefined!10442 Bool) (index!40892 (_ BitVec 32)) (x!91271 (_ BitVec 32))) (Undefined!9630) (MissingVacant!9630 (index!40893 (_ BitVec 32))) )
))
(declare-fun lt!451409 () SeekEntryResult!9630)

(declare-datatypes ((V!37149 0))(
  ( (V!37150 (val!12154 Int)) )
))
(declare-datatypes ((ValueCell!11400 0))(
  ( (ValueCellFull!11400 (v!14724 V!37149)) (EmptyCell!11400) )
))
(declare-datatypes ((array!64448 0))(
  ( (array!64449 (arr!31029 (Array (_ BitVec 32) (_ BitVec 64))) (size!31543 (_ BitVec 32))) )
))
(declare-datatypes ((array!64450 0))(
  ( (array!64451 (arr!31030 (Array (_ BitVec 32) ValueCell!11400)) (size!31544 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5394 0))(
  ( (LongMapFixedSize!5395 (defaultEntry!6049 Int) (mask!29734 (_ BitVec 32)) (extraKeys!5781 (_ BitVec 32)) (zeroValue!5885 V!37149) (minValue!5885 V!37149) (_size!2752 (_ BitVec 32)) (_keys!11193 array!64448) (_values!6072 array!64450) (_vacant!2752 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5394)

(assert (=> b!1026206 (= res!687057 (or (bvslt (index!40891 lt!451409) #b00000000000000000000000000000000) (bvsge (index!40891 lt!451409) (size!31543 (_keys!11193 thiss!1427))) (bvsge (size!31543 (_keys!11193 thiss!1427)) #b01111111111111111111111111111111)))))

(declare-fun lt!451410 () array!64448)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64448 (_ BitVec 32)) Bool)

(assert (=> b!1026206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451410 (mask!29734 thiss!1427))))

(declare-datatypes ((Unit!33396 0))(
  ( (Unit!33397) )
))
(declare-fun lt!451406 () Unit!33396)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64448 (_ BitVec 32) (_ BitVec 32)) Unit!33396)

(assert (=> b!1026206 (= lt!451406 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11193 thiss!1427) (index!40891 lt!451409) (mask!29734 thiss!1427)))))

(declare-datatypes ((List!21883 0))(
  ( (Nil!21880) (Cons!21879 (h!23077 (_ BitVec 64)) (t!30952 List!21883)) )
))
(declare-fun arrayNoDuplicates!0 (array!64448 (_ BitVec 32) List!21883) Bool)

(assert (=> b!1026206 (arrayNoDuplicates!0 lt!451410 #b00000000000000000000000000000000 Nil!21880)))

(declare-fun lt!451407 () Unit!33396)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64448 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21883) Unit!33396)

(assert (=> b!1026206 (= lt!451407 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11193 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40891 lt!451409) #b00000000000000000000000000000000 Nil!21880))))

(declare-fun arrayCountValidKeys!0 (array!64448 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026206 (= (arrayCountValidKeys!0 lt!451410 #b00000000000000000000000000000000 (size!31543 (_keys!11193 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11193 thiss!1427) #b00000000000000000000000000000000 (size!31543 (_keys!11193 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026206 (= lt!451410 (array!64449 (store (arr!31029 (_keys!11193 thiss!1427)) (index!40891 lt!451409) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31543 (_keys!11193 thiss!1427))))))

(declare-fun lt!451408 () Unit!33396)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64448 (_ BitVec 32) (_ BitVec 64)) Unit!33396)

(assert (=> b!1026206 (= lt!451408 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11193 thiss!1427) (index!40891 lt!451409) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37739 () Bool)

(declare-fun mapRes!37739 () Bool)

(assert (=> mapIsEmpty!37739 mapRes!37739))

(declare-fun b!1026207 () Bool)

(declare-fun e!578908 () Bool)

(declare-fun tp_is_empty!24207 () Bool)

(assert (=> b!1026207 (= e!578908 tp_is_empty!24207)))

(declare-fun res!687056 () Bool)

(assert (=> start!89524 (=> (not res!687056) (not e!578910))))

(declare-fun valid!2001 (LongMapFixedSize!5394) Bool)

(assert (=> start!89524 (= res!687056 (valid!2001 thiss!1427))))

(assert (=> start!89524 e!578910))

(declare-fun e!578906 () Bool)

(assert (=> start!89524 e!578906))

(assert (=> start!89524 true))

(declare-fun b!1026208 () Bool)

(declare-fun e!578905 () Bool)

(assert (=> b!1026208 (= e!578905 tp_is_empty!24207)))

(declare-fun e!578912 () Bool)

(declare-fun array_inv!23881 (array!64448) Bool)

(declare-fun array_inv!23882 (array!64450) Bool)

(assert (=> b!1026209 (= e!578906 (and tp!72507 tp_is_empty!24207 (array_inv!23881 (_keys!11193 thiss!1427)) (array_inv!23882 (_values!6072 thiss!1427)) e!578912))))

(declare-fun b!1026210 () Bool)

(assert (=> b!1026210 (= e!578909 true)))

(declare-fun lt!451411 () Bool)

(assert (=> b!1026210 (= lt!451411 (arrayNoDuplicates!0 (_keys!11193 thiss!1427) #b00000000000000000000000000000000 Nil!21880))))

(declare-fun b!1026211 () Bool)

(assert (=> b!1026211 (= e!578912 (and e!578908 mapRes!37739))))

(declare-fun condMapEmpty!37739 () Bool)

(declare-fun mapDefault!37739 () ValueCell!11400)

(assert (=> b!1026211 (= condMapEmpty!37739 (= (arr!31030 (_values!6072 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11400)) mapDefault!37739)))))

(declare-fun b!1026212 () Bool)

(assert (=> b!1026212 (= e!578910 e!578907)))

(declare-fun res!687054 () Bool)

(assert (=> b!1026212 (=> (not res!687054) (not e!578907))))

(get-info :version)

(assert (=> b!1026212 (= res!687054 ((_ is Found!9630) lt!451409))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64448 (_ BitVec 32)) SeekEntryResult!9630)

(assert (=> b!1026212 (= lt!451409 (seekEntry!0 key!909 (_keys!11193 thiss!1427) (mask!29734 thiss!1427)))))

(declare-fun mapNonEmpty!37739 () Bool)

(declare-fun tp!72508 () Bool)

(assert (=> mapNonEmpty!37739 (= mapRes!37739 (and tp!72508 e!578905))))

(declare-fun mapRest!37739 () (Array (_ BitVec 32) ValueCell!11400))

(declare-fun mapValue!37739 () ValueCell!11400)

(declare-fun mapKey!37739 () (_ BitVec 32))

(assert (=> mapNonEmpty!37739 (= (arr!31030 (_values!6072 thiss!1427)) (store mapRest!37739 mapKey!37739 mapValue!37739))))

(assert (= (and start!89524 res!687056) b!1026205))

(assert (= (and b!1026205 res!687055) b!1026212))

(assert (= (and b!1026212 res!687054) b!1026206))

(assert (= (and b!1026206 (not res!687057)) b!1026210))

(assert (= (and b!1026211 condMapEmpty!37739) mapIsEmpty!37739))

(assert (= (and b!1026211 (not condMapEmpty!37739)) mapNonEmpty!37739))

(assert (= (and mapNonEmpty!37739 ((_ is ValueCellFull!11400) mapValue!37739)) b!1026208))

(assert (= (and b!1026211 ((_ is ValueCellFull!11400) mapDefault!37739)) b!1026207))

(assert (= b!1026209 b!1026211))

(assert (= start!89524 b!1026209))

(declare-fun m!944579 () Bool)

(assert (=> start!89524 m!944579))

(declare-fun m!944581 () Bool)

(assert (=> b!1026210 m!944581))

(declare-fun m!944583 () Bool)

(assert (=> b!1026212 m!944583))

(declare-fun m!944585 () Bool)

(assert (=> b!1026206 m!944585))

(declare-fun m!944587 () Bool)

(assert (=> b!1026206 m!944587))

(declare-fun m!944589 () Bool)

(assert (=> b!1026206 m!944589))

(declare-fun m!944591 () Bool)

(assert (=> b!1026206 m!944591))

(declare-fun m!944593 () Bool)

(assert (=> b!1026206 m!944593))

(declare-fun m!944595 () Bool)

(assert (=> b!1026206 m!944595))

(declare-fun m!944597 () Bool)

(assert (=> b!1026206 m!944597))

(declare-fun m!944599 () Bool)

(assert (=> b!1026206 m!944599))

(declare-fun m!944601 () Bool)

(assert (=> mapNonEmpty!37739 m!944601))

(declare-fun m!944603 () Bool)

(assert (=> b!1026209 m!944603))

(declare-fun m!944605 () Bool)

(assert (=> b!1026209 m!944605))

(check-sat (not b!1026212) (not start!89524) b_and!32751 tp_is_empty!24207 (not mapNonEmpty!37739) (not b!1026206) (not b!1026209) (not b_next!20487) (not b!1026210))
(check-sat b_and!32751 (not b_next!20487))
