; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89434 () Bool)

(assert start!89434)

(declare-fun b!1024874 () Bool)

(declare-fun b_free!20397 () Bool)

(declare-fun b_next!20397 () Bool)

(assert (=> b!1024874 (= b_free!20397 (not b_next!20397))))

(declare-fun tp!72237 () Bool)

(declare-fun b_and!32661 () Bool)

(assert (=> b!1024874 (= tp!72237 b_and!32661)))

(declare-fun b!1024870 () Bool)

(declare-fun e!577826 () Bool)

(assert (=> b!1024870 (= e!577826 true)))

(declare-fun lt!450725 () Bool)

(declare-datatypes ((V!37029 0))(
  ( (V!37030 (val!12109 Int)) )
))
(declare-datatypes ((ValueCell!11355 0))(
  ( (ValueCellFull!11355 (v!14679 V!37029)) (EmptyCell!11355) )
))
(declare-datatypes ((array!64268 0))(
  ( (array!64269 (arr!30939 (Array (_ BitVec 32) (_ BitVec 64))) (size!31453 (_ BitVec 32))) )
))
(declare-datatypes ((array!64270 0))(
  ( (array!64271 (arr!30940 (Array (_ BitVec 32) ValueCell!11355)) (size!31454 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5304 0))(
  ( (LongMapFixedSize!5305 (defaultEntry!6004 Int) (mask!29659 (_ BitVec 32)) (extraKeys!5736 (_ BitVec 32)) (zeroValue!5840 V!37029) (minValue!5840 V!37029) (_size!2707 (_ BitVec 32)) (_keys!11148 array!64268) (_values!6027 array!64270) (_vacant!2707 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5304)

(declare-datatypes ((List!21846 0))(
  ( (Nil!21843) (Cons!21842 (h!23040 (_ BitVec 64)) (t!30915 List!21846)) )
))
(declare-fun arrayNoDuplicates!0 (array!64268 (_ BitVec 32) List!21846) Bool)

(assert (=> b!1024870 (= lt!450725 (arrayNoDuplicates!0 (_keys!11148 thiss!1427) #b00000000000000000000000000000000 Nil!21843))))

(declare-fun res!686261 () Bool)

(declare-fun e!577828 () Bool)

(assert (=> start!89434 (=> (not res!686261) (not e!577828))))

(declare-fun valid!1971 (LongMapFixedSize!5304) Bool)

(assert (=> start!89434 (= res!686261 (valid!1971 thiss!1427))))

(assert (=> start!89434 e!577828))

(declare-fun e!577831 () Bool)

(assert (=> start!89434 e!577831))

(assert (=> start!89434 true))

(declare-fun b!1024871 () Bool)

(declare-fun e!577829 () Bool)

(declare-fun e!577825 () Bool)

(declare-fun mapRes!37604 () Bool)

(assert (=> b!1024871 (= e!577829 (and e!577825 mapRes!37604))))

(declare-fun condMapEmpty!37604 () Bool)

(declare-fun mapDefault!37604 () ValueCell!11355)

(assert (=> b!1024871 (= condMapEmpty!37604 (= (arr!30940 (_values!6027 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11355)) mapDefault!37604)))))

(declare-fun b!1024872 () Bool)

(declare-fun res!686262 () Bool)

(assert (=> b!1024872 (=> res!686262 e!577826)))

(declare-fun contains!5974 (List!21846 (_ BitVec 64)) Bool)

(assert (=> b!1024872 (= res!686262 (contains!5974 Nil!21843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37604 () Bool)

(declare-fun tp!72238 () Bool)

(declare-fun e!577830 () Bool)

(assert (=> mapNonEmpty!37604 (= mapRes!37604 (and tp!72238 e!577830))))

(declare-fun mapRest!37604 () (Array (_ BitVec 32) ValueCell!11355))

(declare-fun mapKey!37604 () (_ BitVec 32))

(declare-fun mapValue!37604 () ValueCell!11355)

(assert (=> mapNonEmpty!37604 (= (arr!30940 (_values!6027 thiss!1427)) (store mapRest!37604 mapKey!37604 mapValue!37604))))

(declare-fun b!1024873 () Bool)

(declare-fun res!686260 () Bool)

(assert (=> b!1024873 (=> res!686260 e!577826)))

(assert (=> b!1024873 (= res!686260 (contains!5974 Nil!21843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!37604 () Bool)

(assert (=> mapIsEmpty!37604 mapRes!37604))

(declare-fun tp_is_empty!24117 () Bool)

(declare-fun array_inv!23827 (array!64268) Bool)

(declare-fun array_inv!23828 (array!64270) Bool)

(assert (=> b!1024874 (= e!577831 (and tp!72237 tp_is_empty!24117 (array_inv!23827 (_keys!11148 thiss!1427)) (array_inv!23828 (_values!6027 thiss!1427)) e!577829))))

(declare-fun b!1024875 () Bool)

(declare-fun res!686265 () Bool)

(assert (=> b!1024875 (=> (not res!686265) (not e!577828))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1024875 (= res!686265 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1024876 () Bool)

(declare-fun e!577827 () Bool)

(assert (=> b!1024876 (= e!577827 (not e!577826))))

(declare-fun res!686263 () Bool)

(assert (=> b!1024876 (=> res!686263 e!577826)))

(assert (=> b!1024876 (= res!686263 (or (bvsge (size!31453 (_keys!11148 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31453 (_keys!11148 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9596 0))(
  ( (MissingZero!9596 (index!40754 (_ BitVec 32))) (Found!9596 (index!40755 (_ BitVec 32))) (Intermediate!9596 (undefined!10408 Bool) (index!40756 (_ BitVec 32)) (x!91117 (_ BitVec 32))) (Undefined!9596) (MissingVacant!9596 (index!40757 (_ BitVec 32))) )
))
(declare-fun lt!450727 () SeekEntryResult!9596)

(declare-fun arrayCountValidKeys!0 (array!64268 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024876 (= (arrayCountValidKeys!0 (array!64269 (store (arr!30939 (_keys!11148 thiss!1427)) (index!40755 lt!450727) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31453 (_keys!11148 thiss!1427))) #b00000000000000000000000000000000 (size!31453 (_keys!11148 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11148 thiss!1427) #b00000000000000000000000000000000 (size!31453 (_keys!11148 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33336 0))(
  ( (Unit!33337) )
))
(declare-fun lt!450726 () Unit!33336)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64268 (_ BitVec 32) (_ BitVec 64)) Unit!33336)

(assert (=> b!1024876 (= lt!450726 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11148 thiss!1427) (index!40755 lt!450727) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024877 () Bool)

(assert (=> b!1024877 (= e!577830 tp_is_empty!24117)))

(declare-fun b!1024878 () Bool)

(assert (=> b!1024878 (= e!577828 e!577827)))

(declare-fun res!686259 () Bool)

(assert (=> b!1024878 (=> (not res!686259) (not e!577827))))

(get-info :version)

(assert (=> b!1024878 (= res!686259 ((_ is Found!9596) lt!450727))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64268 (_ BitVec 32)) SeekEntryResult!9596)

(assert (=> b!1024878 (= lt!450727 (seekEntry!0 key!909 (_keys!11148 thiss!1427) (mask!29659 thiss!1427)))))

(declare-fun b!1024879 () Bool)

(declare-fun res!686264 () Bool)

(assert (=> b!1024879 (=> res!686264 e!577826)))

(declare-fun noDuplicate!1483 (List!21846) Bool)

(assert (=> b!1024879 (= res!686264 (not (noDuplicate!1483 Nil!21843)))))

(declare-fun b!1024880 () Bool)

(assert (=> b!1024880 (= e!577825 tp_is_empty!24117)))

(assert (= (and start!89434 res!686261) b!1024875))

(assert (= (and b!1024875 res!686265) b!1024878))

(assert (= (and b!1024878 res!686259) b!1024876))

(assert (= (and b!1024876 (not res!686263)) b!1024879))

(assert (= (and b!1024879 (not res!686264)) b!1024872))

(assert (= (and b!1024872 (not res!686262)) b!1024873))

(assert (= (and b!1024873 (not res!686260)) b!1024870))

(assert (= (and b!1024871 condMapEmpty!37604) mapIsEmpty!37604))

(assert (= (and b!1024871 (not condMapEmpty!37604)) mapNonEmpty!37604))

(assert (= (and mapNonEmpty!37604 ((_ is ValueCellFull!11355) mapValue!37604)) b!1024877))

(assert (= (and b!1024871 ((_ is ValueCellFull!11355) mapDefault!37604)) b!1024880))

(assert (= b!1024874 b!1024871))

(assert (= start!89434 b!1024874))

(declare-fun m!943251 () Bool)

(assert (=> mapNonEmpty!37604 m!943251))

(declare-fun m!943253 () Bool)

(assert (=> b!1024872 m!943253))

(declare-fun m!943255 () Bool)

(assert (=> b!1024876 m!943255))

(declare-fun m!943257 () Bool)

(assert (=> b!1024876 m!943257))

(declare-fun m!943259 () Bool)

(assert (=> b!1024876 m!943259))

(declare-fun m!943261 () Bool)

(assert (=> b!1024876 m!943261))

(declare-fun m!943263 () Bool)

(assert (=> b!1024874 m!943263))

(declare-fun m!943265 () Bool)

(assert (=> b!1024874 m!943265))

(declare-fun m!943267 () Bool)

(assert (=> b!1024878 m!943267))

(declare-fun m!943269 () Bool)

(assert (=> b!1024870 m!943269))

(declare-fun m!943271 () Bool)

(assert (=> b!1024879 m!943271))

(declare-fun m!943273 () Bool)

(assert (=> start!89434 m!943273))

(declare-fun m!943275 () Bool)

(assert (=> b!1024873 m!943275))

(check-sat (not b!1024876) (not b!1024873) (not b!1024879) (not b!1024872) (not mapNonEmpty!37604) (not b_next!20397) (not start!89434) (not b!1024874) (not b!1024878) (not b!1024870) tp_is_empty!24117 b_and!32661)
(check-sat b_and!32661 (not b_next!20397))
