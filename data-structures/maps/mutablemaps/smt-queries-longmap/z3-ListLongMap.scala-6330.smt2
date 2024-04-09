; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81604 () Bool)

(assert start!81604)

(declare-fun b!952817 () Bool)

(declare-fun b_free!18303 () Bool)

(declare-fun b_next!18303 () Bool)

(assert (=> b!952817 (= b_free!18303 (not b_next!18303))))

(declare-fun tp!63537 () Bool)

(declare-fun b_and!29805 () Bool)

(assert (=> b!952817 (= tp!63537 b_and!29805)))

(declare-fun b!952816 () Bool)

(declare-fun res!638325 () Bool)

(declare-fun e!536665 () Bool)

(assert (=> b!952816 (=> (not res!638325) (not e!536665))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32713 0))(
  ( (V!32714 (val!10456 Int)) )
))
(declare-datatypes ((ValueCell!9924 0))(
  ( (ValueCellFull!9924 (v!13009 V!32713)) (EmptyCell!9924) )
))
(declare-datatypes ((array!57682 0))(
  ( (array!57683 (arr!27727 (Array (_ BitVec 32) ValueCell!9924)) (size!28207 (_ BitVec 32))) )
))
(declare-datatypes ((array!57684 0))(
  ( (array!57685 (arr!27728 (Array (_ BitVec 32) (_ BitVec 64))) (size!28208 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4998 0))(
  ( (LongMapFixedSize!4999 (defaultEntry!5834 Int) (mask!27688 (_ BitVec 32)) (extraKeys!5566 (_ BitVec 32)) (zeroValue!5670 V!32713) (minValue!5670 V!32713) (_size!2554 (_ BitVec 32)) (_keys!10789 array!57684) (_values!5857 array!57682) (_vacant!2554 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4998)

(get-info :version)

(declare-datatypes ((SeekEntryResult!9152 0))(
  ( (MissingZero!9152 (index!38978 (_ BitVec 32))) (Found!9152 (index!38979 (_ BitVec 32))) (Intermediate!9152 (undefined!9964 Bool) (index!38980 (_ BitVec 32)) (x!81959 (_ BitVec 32))) (Undefined!9152) (MissingVacant!9152 (index!38981 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57684 (_ BitVec 32)) SeekEntryResult!9152)

(assert (=> b!952816 (= res!638325 (not ((_ is Found!9152) (seekEntry!0 key!756 (_keys!10789 thiss!1141) (mask!27688 thiss!1141)))))))

(declare-fun res!638326 () Bool)

(assert (=> start!81604 (=> (not res!638326) (not e!536665))))

(declare-fun valid!1872 (LongMapFixedSize!4998) Bool)

(assert (=> start!81604 (= res!638326 (valid!1872 thiss!1141))))

(assert (=> start!81604 e!536665))

(declare-fun e!536664 () Bool)

(assert (=> start!81604 e!536664))

(assert (=> start!81604 true))

(declare-fun e!536669 () Bool)

(declare-fun tp_is_empty!20811 () Bool)

(declare-fun array_inv!21464 (array!57684) Bool)

(declare-fun array_inv!21465 (array!57682) Bool)

(assert (=> b!952817 (= e!536664 (and tp!63537 tp_is_empty!20811 (array_inv!21464 (_keys!10789 thiss!1141)) (array_inv!21465 (_values!5857 thiss!1141)) e!536669))))

(declare-fun mapIsEmpty!33160 () Bool)

(declare-fun mapRes!33160 () Bool)

(assert (=> mapIsEmpty!33160 mapRes!33160))

(declare-fun b!952818 () Bool)

(declare-fun res!638324 () Bool)

(assert (=> b!952818 (=> (not res!638324) (not e!536665))))

(declare-datatypes ((tuple2!13686 0))(
  ( (tuple2!13687 (_1!6853 (_ BitVec 64)) (_2!6853 V!32713)) )
))
(declare-datatypes ((List!19501 0))(
  ( (Nil!19498) (Cons!19497 (h!20659 tuple2!13686) (t!27868 List!19501)) )
))
(declare-datatypes ((ListLongMap!12397 0))(
  ( (ListLongMap!12398 (toList!6214 List!19501)) )
))
(declare-fun contains!5260 (ListLongMap!12397 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3399 (array!57684 array!57682 (_ BitVec 32) (_ BitVec 32) V!32713 V!32713 (_ BitVec 32) Int) ListLongMap!12397)

(assert (=> b!952818 (= res!638324 (contains!5260 (getCurrentListMap!3399 (_keys!10789 thiss!1141) (_values!5857 thiss!1141) (mask!27688 thiss!1141) (extraKeys!5566 thiss!1141) (zeroValue!5670 thiss!1141) (minValue!5670 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5834 thiss!1141)) key!756))))

(declare-fun b!952819 () Bool)

(assert (=> b!952819 (= e!536665 (not true))))

(assert (=> b!952819 false))

(declare-datatypes ((Unit!32054 0))(
  ( (Unit!32055) )
))
(declare-fun lt!429407 () Unit!32054)

(declare-fun lt!429408 () (_ BitVec 32))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!57684 (_ BitVec 32)) Unit!32054)

(assert (=> b!952819 (= lt!429407 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!756 lt!429408 (_keys!10789 thiss!1141) (mask!27688 thiss!1141)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57684 (_ BitVec 32)) Bool)

(assert (=> b!952819 (arrayForallSeekEntryOrOpenFound!0 lt!429408 (_keys!10789 thiss!1141) (mask!27688 thiss!1141))))

(declare-fun lt!429410 () Unit!32054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57684 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32054)

(assert (=> b!952819 (= lt!429410 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10789 thiss!1141) (mask!27688 thiss!1141) #b00000000000000000000000000000000 lt!429408))))

(declare-fun arrayScanForKey!0 (array!57684 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!952819 (= lt!429408 (arrayScanForKey!0 (_keys!10789 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57684 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!952819 (arrayContainsKey!0 (_keys!10789 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!429409 () Unit!32054)

(declare-fun lemmaKeyInListMapIsInArray!344 (array!57684 array!57682 (_ BitVec 32) (_ BitVec 32) V!32713 V!32713 (_ BitVec 64) Int) Unit!32054)

(assert (=> b!952819 (= lt!429409 (lemmaKeyInListMapIsInArray!344 (_keys!10789 thiss!1141) (_values!5857 thiss!1141) (mask!27688 thiss!1141) (extraKeys!5566 thiss!1141) (zeroValue!5670 thiss!1141) (minValue!5670 thiss!1141) key!756 (defaultEntry!5834 thiss!1141)))))

(declare-fun b!952820 () Bool)

(declare-fun e!536666 () Bool)

(assert (=> b!952820 (= e!536666 tp_is_empty!20811)))

(declare-fun b!952821 () Bool)

(assert (=> b!952821 (= e!536669 (and e!536666 mapRes!33160))))

(declare-fun condMapEmpty!33160 () Bool)

(declare-fun mapDefault!33160 () ValueCell!9924)

(assert (=> b!952821 (= condMapEmpty!33160 (= (arr!27727 (_values!5857 thiss!1141)) ((as const (Array (_ BitVec 32) ValueCell!9924)) mapDefault!33160)))))

(declare-fun mapNonEmpty!33160 () Bool)

(declare-fun tp!63538 () Bool)

(declare-fun e!536667 () Bool)

(assert (=> mapNonEmpty!33160 (= mapRes!33160 (and tp!63538 e!536667))))

(declare-fun mapKey!33160 () (_ BitVec 32))

(declare-fun mapValue!33160 () ValueCell!9924)

(declare-fun mapRest!33160 () (Array (_ BitVec 32) ValueCell!9924))

(assert (=> mapNonEmpty!33160 (= (arr!27727 (_values!5857 thiss!1141)) (store mapRest!33160 mapKey!33160 mapValue!33160))))

(declare-fun b!952822 () Bool)

(declare-fun res!638323 () Bool)

(assert (=> b!952822 (=> (not res!638323) (not e!536665))))

(assert (=> b!952822 (= res!638323 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!952823 () Bool)

(assert (=> b!952823 (= e!536667 tp_is_empty!20811)))

(assert (= (and start!81604 res!638326) b!952822))

(assert (= (and b!952822 res!638323) b!952816))

(assert (= (and b!952816 res!638325) b!952818))

(assert (= (and b!952818 res!638324) b!952819))

(assert (= (and b!952821 condMapEmpty!33160) mapIsEmpty!33160))

(assert (= (and b!952821 (not condMapEmpty!33160)) mapNonEmpty!33160))

(assert (= (and mapNonEmpty!33160 ((_ is ValueCellFull!9924) mapValue!33160)) b!952823))

(assert (= (and b!952821 ((_ is ValueCellFull!9924) mapDefault!33160)) b!952820))

(assert (= b!952817 b!952821))

(assert (= start!81604 b!952817))

(declare-fun m!885001 () Bool)

(assert (=> b!952817 m!885001))

(declare-fun m!885003 () Bool)

(assert (=> b!952817 m!885003))

(declare-fun m!885005 () Bool)

(assert (=> start!81604 m!885005))

(declare-fun m!885007 () Bool)

(assert (=> mapNonEmpty!33160 m!885007))

(declare-fun m!885009 () Bool)

(assert (=> b!952819 m!885009))

(declare-fun m!885011 () Bool)

(assert (=> b!952819 m!885011))

(declare-fun m!885013 () Bool)

(assert (=> b!952819 m!885013))

(declare-fun m!885015 () Bool)

(assert (=> b!952819 m!885015))

(declare-fun m!885017 () Bool)

(assert (=> b!952819 m!885017))

(declare-fun m!885019 () Bool)

(assert (=> b!952819 m!885019))

(declare-fun m!885021 () Bool)

(assert (=> b!952816 m!885021))

(declare-fun m!885023 () Bool)

(assert (=> b!952818 m!885023))

(assert (=> b!952818 m!885023))

(declare-fun m!885025 () Bool)

(assert (=> b!952818 m!885025))

(check-sat (not b!952817) (not b!952819) tp_is_empty!20811 (not mapNonEmpty!33160) (not start!81604) (not b!952816) b_and!29805 (not b_next!18303) (not b!952818))
(check-sat b_and!29805 (not b_next!18303))
