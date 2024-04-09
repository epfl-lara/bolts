; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90132 () Bool)

(assert start!90132)

(declare-fun b!1032102 () Bool)

(declare-fun b_free!20703 () Bool)

(declare-fun b_next!20703 () Bool)

(assert (=> b!1032102 (= b_free!20703 (not b_next!20703))))

(declare-fun tp!73180 () Bool)

(declare-fun b_and!33189 () Bool)

(assert (=> b!1032102 (= tp!73180 b_and!33189)))

(declare-fun e!583122 () Bool)

(declare-fun tp_is_empty!24423 () Bool)

(declare-datatypes ((V!37437 0))(
  ( (V!37438 (val!12262 Int)) )
))
(declare-datatypes ((ValueCell!11508 0))(
  ( (ValueCellFull!11508 (v!14840 V!37437)) (EmptyCell!11508) )
))
(declare-datatypes ((array!64894 0))(
  ( (array!64895 (arr!31245 (Array (_ BitVec 32) (_ BitVec 64))) (size!31763 (_ BitVec 32))) )
))
(declare-datatypes ((array!64896 0))(
  ( (array!64897 (arr!31246 (Array (_ BitVec 32) ValueCell!11508)) (size!31764 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5610 0))(
  ( (LongMapFixedSize!5611 (defaultEntry!6179 Int) (mask!29984 (_ BitVec 32)) (extraKeys!5911 (_ BitVec 32)) (zeroValue!6015 V!37437) (minValue!6015 V!37437) (_size!2860 (_ BitVec 32)) (_keys!11349 array!64894) (_values!6202 array!64896) (_vacant!2860 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5610)

(declare-fun e!583118 () Bool)

(declare-fun array_inv!24023 (array!64894) Bool)

(declare-fun array_inv!24024 (array!64896) Bool)

(assert (=> b!1032102 (= e!583122 (and tp!73180 tp_is_empty!24423 (array_inv!24023 (_keys!11349 thiss!1427)) (array_inv!24024 (_values!6202 thiss!1427)) e!583118))))

(declare-fun b!1032103 () Bool)

(declare-fun e!583119 () Bool)

(assert (=> b!1032103 (= e!583119 tp_is_empty!24423)))

(declare-fun b!1032104 () Bool)

(declare-fun res!689994 () Bool)

(declare-fun e!583121 () Bool)

(assert (=> b!1032104 (=> (not res!689994) (not e!583121))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032104 (= res!689994 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38088 () Bool)

(declare-fun mapRes!38088 () Bool)

(declare-fun tp!73181 () Bool)

(declare-fun e!583123 () Bool)

(assert (=> mapNonEmpty!38088 (= mapRes!38088 (and tp!73181 e!583123))))

(declare-fun mapKey!38088 () (_ BitVec 32))

(declare-fun mapRest!38088 () (Array (_ BitVec 32) ValueCell!11508))

(declare-fun mapValue!38088 () ValueCell!11508)

(assert (=> mapNonEmpty!38088 (= (arr!31246 (_values!6202 thiss!1427)) (store mapRest!38088 mapKey!38088 mapValue!38088))))

(declare-fun b!1032105 () Bool)

(assert (=> b!1032105 (= e!583118 (and e!583119 mapRes!38088))))

(declare-fun condMapEmpty!38088 () Bool)

(declare-fun mapDefault!38088 () ValueCell!11508)

(assert (=> b!1032105 (= condMapEmpty!38088 (= (arr!31246 (_values!6202 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11508)) mapDefault!38088)))))

(declare-fun b!1032106 () Bool)

(assert (=> b!1032106 (= e!583123 tp_is_empty!24423)))

(declare-fun b!1032107 () Bool)

(assert (=> b!1032107 (= e!583121 false)))

(declare-datatypes ((SeekEntryResult!9718 0))(
  ( (MissingZero!9718 (index!41242 (_ BitVec 32))) (Found!9718 (index!41243 (_ BitVec 32))) (Intermediate!9718 (undefined!10530 Bool) (index!41244 (_ BitVec 32)) (x!91945 (_ BitVec 32))) (Undefined!9718) (MissingVacant!9718 (index!41245 (_ BitVec 32))) )
))
(declare-fun lt!455976 () SeekEntryResult!9718)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64894 (_ BitVec 32)) SeekEntryResult!9718)

(assert (=> b!1032107 (= lt!455976 (seekEntry!0 key!909 (_keys!11349 thiss!1427) (mask!29984 thiss!1427)))))

(declare-fun mapIsEmpty!38088 () Bool)

(assert (=> mapIsEmpty!38088 mapRes!38088))

(declare-fun res!689993 () Bool)

(assert (=> start!90132 (=> (not res!689993) (not e!583121))))

(declare-fun valid!2074 (LongMapFixedSize!5610) Bool)

(assert (=> start!90132 (= res!689993 (valid!2074 thiss!1427))))

(assert (=> start!90132 e!583121))

(assert (=> start!90132 e!583122))

(assert (=> start!90132 true))

(assert (= (and start!90132 res!689993) b!1032104))

(assert (= (and b!1032104 res!689994) b!1032107))

(assert (= (and b!1032105 condMapEmpty!38088) mapIsEmpty!38088))

(assert (= (and b!1032105 (not condMapEmpty!38088)) mapNonEmpty!38088))

(get-info :version)

(assert (= (and mapNonEmpty!38088 ((_ is ValueCellFull!11508) mapValue!38088)) b!1032106))

(assert (= (and b!1032105 ((_ is ValueCellFull!11508) mapDefault!38088)) b!1032103))

(assert (= b!1032102 b!1032105))

(assert (= start!90132 b!1032102))

(declare-fun m!952651 () Bool)

(assert (=> b!1032102 m!952651))

(declare-fun m!952653 () Bool)

(assert (=> b!1032102 m!952653))

(declare-fun m!952655 () Bool)

(assert (=> mapNonEmpty!38088 m!952655))

(declare-fun m!952657 () Bool)

(assert (=> b!1032107 m!952657))

(declare-fun m!952659 () Bool)

(assert (=> start!90132 m!952659))

(check-sat (not b!1032102) (not mapNonEmpty!38088) (not b!1032107) (not start!90132) tp_is_empty!24423 (not b_next!20703) b_and!33189)
(check-sat b_and!33189 (not b_next!20703))
