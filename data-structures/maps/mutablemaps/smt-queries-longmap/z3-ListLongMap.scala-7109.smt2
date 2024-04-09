; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90138 () Bool)

(assert start!90138)

(declare-fun b!1032157 () Bool)

(declare-fun b_free!20709 () Bool)

(declare-fun b_next!20709 () Bool)

(assert (=> b!1032157 (= b_free!20709 (not b_next!20709))))

(declare-fun tp!73198 () Bool)

(declare-fun b_and!33195 () Bool)

(assert (=> b!1032157 (= tp!73198 b_and!33195)))

(declare-fun mapIsEmpty!38097 () Bool)

(declare-fun mapRes!38097 () Bool)

(assert (=> mapIsEmpty!38097 mapRes!38097))

(declare-fun res!690012 () Bool)

(declare-fun e!583173 () Bool)

(assert (=> start!90138 (=> (not res!690012) (not e!583173))))

(declare-datatypes ((V!37445 0))(
  ( (V!37446 (val!12265 Int)) )
))
(declare-datatypes ((ValueCell!11511 0))(
  ( (ValueCellFull!11511 (v!14843 V!37445)) (EmptyCell!11511) )
))
(declare-datatypes ((array!64906 0))(
  ( (array!64907 (arr!31251 (Array (_ BitVec 32) (_ BitVec 64))) (size!31769 (_ BitVec 32))) )
))
(declare-datatypes ((array!64908 0))(
  ( (array!64909 (arr!31252 (Array (_ BitVec 32) ValueCell!11511)) (size!31770 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5616 0))(
  ( (LongMapFixedSize!5617 (defaultEntry!6182 Int) (mask!29989 (_ BitVec 32)) (extraKeys!5914 (_ BitVec 32)) (zeroValue!6018 V!37445) (minValue!6018 V!37445) (_size!2863 (_ BitVec 32)) (_keys!11352 array!64906) (_values!6205 array!64908) (_vacant!2863 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5616)

(declare-fun valid!2077 (LongMapFixedSize!5616) Bool)

(assert (=> start!90138 (= res!690012 (valid!2077 thiss!1427))))

(assert (=> start!90138 e!583173))

(declare-fun e!583176 () Bool)

(assert (=> start!90138 e!583176))

(assert (=> start!90138 true))

(declare-fun mapNonEmpty!38097 () Bool)

(declare-fun tp!73199 () Bool)

(declare-fun e!583174 () Bool)

(assert (=> mapNonEmpty!38097 (= mapRes!38097 (and tp!73199 e!583174))))

(declare-fun mapValue!38097 () ValueCell!11511)

(declare-fun mapRest!38097 () (Array (_ BitVec 32) ValueCell!11511))

(declare-fun mapKey!38097 () (_ BitVec 32))

(assert (=> mapNonEmpty!38097 (= (arr!31252 (_values!6205 thiss!1427)) (store mapRest!38097 mapKey!38097 mapValue!38097))))

(declare-fun b!1032156 () Bool)

(assert (=> b!1032156 (= e!583173 false)))

(declare-datatypes ((SeekEntryResult!9721 0))(
  ( (MissingZero!9721 (index!41254 (_ BitVec 32))) (Found!9721 (index!41255 (_ BitVec 32))) (Intermediate!9721 (undefined!10533 Bool) (index!41256 (_ BitVec 32)) (x!91956 (_ BitVec 32))) (Undefined!9721) (MissingVacant!9721 (index!41257 (_ BitVec 32))) )
))
(declare-fun lt!455985 () SeekEntryResult!9721)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64906 (_ BitVec 32)) SeekEntryResult!9721)

(assert (=> b!1032156 (= lt!455985 (seekEntry!0 key!909 (_keys!11352 thiss!1427) (mask!29989 thiss!1427)))))

(declare-fun tp_is_empty!24429 () Bool)

(declare-fun e!583175 () Bool)

(declare-fun array_inv!24029 (array!64906) Bool)

(declare-fun array_inv!24030 (array!64908) Bool)

(assert (=> b!1032157 (= e!583176 (and tp!73198 tp_is_empty!24429 (array_inv!24029 (_keys!11352 thiss!1427)) (array_inv!24030 (_values!6205 thiss!1427)) e!583175))))

(declare-fun b!1032158 () Bool)

(assert (=> b!1032158 (= e!583174 tp_is_empty!24429)))

(declare-fun b!1032159 () Bool)

(declare-fun res!690011 () Bool)

(assert (=> b!1032159 (=> (not res!690011) (not e!583173))))

(assert (=> b!1032159 (= res!690011 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1032160 () Bool)

(declare-fun e!583172 () Bool)

(assert (=> b!1032160 (= e!583175 (and e!583172 mapRes!38097))))

(declare-fun condMapEmpty!38097 () Bool)

(declare-fun mapDefault!38097 () ValueCell!11511)

(assert (=> b!1032160 (= condMapEmpty!38097 (= (arr!31252 (_values!6205 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11511)) mapDefault!38097)))))

(declare-fun b!1032161 () Bool)

(assert (=> b!1032161 (= e!583172 tp_is_empty!24429)))

(assert (= (and start!90138 res!690012) b!1032159))

(assert (= (and b!1032159 res!690011) b!1032156))

(assert (= (and b!1032160 condMapEmpty!38097) mapIsEmpty!38097))

(assert (= (and b!1032160 (not condMapEmpty!38097)) mapNonEmpty!38097))

(get-info :version)

(assert (= (and mapNonEmpty!38097 ((_ is ValueCellFull!11511) mapValue!38097)) b!1032158))

(assert (= (and b!1032160 ((_ is ValueCellFull!11511) mapDefault!38097)) b!1032161))

(assert (= b!1032157 b!1032160))

(assert (= start!90138 b!1032157))

(declare-fun m!952681 () Bool)

(assert (=> start!90138 m!952681))

(declare-fun m!952683 () Bool)

(assert (=> mapNonEmpty!38097 m!952683))

(declare-fun m!952685 () Bool)

(assert (=> b!1032156 m!952685))

(declare-fun m!952687 () Bool)

(assert (=> b!1032157 m!952687))

(declare-fun m!952689 () Bool)

(assert (=> b!1032157 m!952689))

(check-sat tp_is_empty!24429 (not mapNonEmpty!38097) (not b!1032157) (not b!1032156) b_and!33195 (not start!90138) (not b_next!20709))
(check-sat b_and!33195 (not b_next!20709))
