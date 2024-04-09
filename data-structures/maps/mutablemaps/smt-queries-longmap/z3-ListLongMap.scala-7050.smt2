; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89392 () Bool)

(assert start!89392)

(declare-fun b!1024201 () Bool)

(declare-fun b_free!20355 () Bool)

(declare-fun b_next!20355 () Bool)

(assert (=> b!1024201 (= b_free!20355 (not b_next!20355))))

(declare-fun tp!72112 () Bool)

(declare-fun b_and!32619 () Bool)

(assert (=> b!1024201 (= tp!72112 b_and!32619)))

(declare-fun mapNonEmpty!37541 () Bool)

(declare-fun mapRes!37541 () Bool)

(declare-fun tp!72111 () Bool)

(declare-fun e!577331 () Bool)

(assert (=> mapNonEmpty!37541 (= mapRes!37541 (and tp!72111 e!577331))))

(declare-fun mapKey!37541 () (_ BitVec 32))

(declare-datatypes ((V!36973 0))(
  ( (V!36974 (val!12088 Int)) )
))
(declare-datatypes ((ValueCell!11334 0))(
  ( (ValueCellFull!11334 (v!14658 V!36973)) (EmptyCell!11334) )
))
(declare-datatypes ((array!64184 0))(
  ( (array!64185 (arr!30897 (Array (_ BitVec 32) (_ BitVec 64))) (size!31411 (_ BitVec 32))) )
))
(declare-datatypes ((array!64186 0))(
  ( (array!64187 (arr!30898 (Array (_ BitVec 32) ValueCell!11334)) (size!31412 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5262 0))(
  ( (LongMapFixedSize!5263 (defaultEntry!5983 Int) (mask!29624 (_ BitVec 32)) (extraKeys!5715 (_ BitVec 32)) (zeroValue!5819 V!36973) (minValue!5819 V!36973) (_size!2686 (_ BitVec 32)) (_keys!11127 array!64184) (_values!6006 array!64186) (_vacant!2686 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5262)

(declare-fun mapRest!37541 () (Array (_ BitVec 32) ValueCell!11334))

(declare-fun mapValue!37541 () ValueCell!11334)

(assert (=> mapNonEmpty!37541 (= (arr!30898 (_values!6006 thiss!1427)) (store mapRest!37541 mapKey!37541 mapValue!37541))))

(declare-fun res!685838 () Bool)

(declare-fun e!577332 () Bool)

(assert (=> start!89392 (=> (not res!685838) (not e!577332))))

(declare-fun valid!1958 (LongMapFixedSize!5262) Bool)

(assert (=> start!89392 (= res!685838 (valid!1958 thiss!1427))))

(assert (=> start!89392 e!577332))

(declare-fun e!577333 () Bool)

(assert (=> start!89392 e!577333))

(assert (=> start!89392 true))

(declare-fun b!1024197 () Bool)

(assert (=> b!1024197 (= e!577332 false)))

(declare-datatypes ((SeekEntryResult!9579 0))(
  ( (MissingZero!9579 (index!40686 (_ BitVec 32))) (Found!9579 (index!40687 (_ BitVec 32))) (Intermediate!9579 (undefined!10391 Bool) (index!40688 (_ BitVec 32)) (x!91044 (_ BitVec 32))) (Undefined!9579) (MissingVacant!9579 (index!40689 (_ BitVec 32))) )
))
(declare-fun lt!450544 () SeekEntryResult!9579)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64184 (_ BitVec 32)) SeekEntryResult!9579)

(assert (=> b!1024197 (= lt!450544 (seekEntry!0 key!909 (_keys!11127 thiss!1427) (mask!29624 thiss!1427)))))

(declare-fun b!1024198 () Bool)

(declare-fun tp_is_empty!24075 () Bool)

(assert (=> b!1024198 (= e!577331 tp_is_empty!24075)))

(declare-fun b!1024199 () Bool)

(declare-fun e!577334 () Bool)

(declare-fun e!577329 () Bool)

(assert (=> b!1024199 (= e!577334 (and e!577329 mapRes!37541))))

(declare-fun condMapEmpty!37541 () Bool)

(declare-fun mapDefault!37541 () ValueCell!11334)

(assert (=> b!1024199 (= condMapEmpty!37541 (= (arr!30898 (_values!6006 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11334)) mapDefault!37541)))))

(declare-fun b!1024200 () Bool)

(declare-fun res!685839 () Bool)

(assert (=> b!1024200 (=> (not res!685839) (not e!577332))))

(assert (=> b!1024200 (= res!685839 (not (= key!909 (bvneg key!909))))))

(declare-fun array_inv!23797 (array!64184) Bool)

(declare-fun array_inv!23798 (array!64186) Bool)

(assert (=> b!1024201 (= e!577333 (and tp!72112 tp_is_empty!24075 (array_inv!23797 (_keys!11127 thiss!1427)) (array_inv!23798 (_values!6006 thiss!1427)) e!577334))))

(declare-fun mapIsEmpty!37541 () Bool)

(assert (=> mapIsEmpty!37541 mapRes!37541))

(declare-fun b!1024202 () Bool)

(assert (=> b!1024202 (= e!577329 tp_is_empty!24075)))

(assert (= (and start!89392 res!685838) b!1024200))

(assert (= (and b!1024200 res!685839) b!1024197))

(assert (= (and b!1024199 condMapEmpty!37541) mapIsEmpty!37541))

(assert (= (and b!1024199 (not condMapEmpty!37541)) mapNonEmpty!37541))

(get-info :version)

(assert (= (and mapNonEmpty!37541 ((_ is ValueCellFull!11334) mapValue!37541)) b!1024198))

(assert (= (and b!1024199 ((_ is ValueCellFull!11334) mapDefault!37541)) b!1024202))

(assert (= b!1024201 b!1024199))

(assert (= start!89392 b!1024201))

(declare-fun m!942737 () Bool)

(assert (=> mapNonEmpty!37541 m!942737))

(declare-fun m!942739 () Bool)

(assert (=> start!89392 m!942739))

(declare-fun m!942741 () Bool)

(assert (=> b!1024197 m!942741))

(declare-fun m!942743 () Bool)

(assert (=> b!1024201 m!942743))

(declare-fun m!942745 () Bool)

(assert (=> b!1024201 m!942745))

(check-sat (not start!89392) (not mapNonEmpty!37541) tp_is_empty!24075 (not b_next!20355) (not b!1024197) (not b!1024201) b_and!32619)
(check-sat b_and!32619 (not b_next!20355))
