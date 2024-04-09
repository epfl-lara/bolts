; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90278 () Bool)

(assert start!90278)

(declare-fun b!1033041 () Bool)

(declare-fun b_free!20761 () Bool)

(declare-fun b_next!20761 () Bool)

(assert (=> b!1033041 (= b_free!20761 (not b_next!20761))))

(declare-fun tp!73378 () Bool)

(declare-fun b_and!33247 () Bool)

(assert (=> b!1033041 (= tp!73378 b_and!33247)))

(declare-fun res!690403 () Bool)

(declare-fun e!583856 () Bool)

(assert (=> start!90278 (=> (not res!690403) (not e!583856))))

(declare-datatypes ((V!37515 0))(
  ( (V!37516 (val!12291 Int)) )
))
(declare-datatypes ((ValueCell!11537 0))(
  ( (ValueCellFull!11537 (v!14869 V!37515)) (EmptyCell!11537) )
))
(declare-datatypes ((array!65022 0))(
  ( (array!65023 (arr!31303 (Array (_ BitVec 32) (_ BitVec 64))) (size!31826 (_ BitVec 32))) )
))
(declare-datatypes ((array!65024 0))(
  ( (array!65025 (arr!31304 (Array (_ BitVec 32) ValueCell!11537)) (size!31827 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5668 0))(
  ( (LongMapFixedSize!5669 (defaultEntry!6208 Int) (mask!30044 (_ BitVec 32)) (extraKeys!5940 (_ BitVec 32)) (zeroValue!6044 V!37515) (minValue!6044 V!37515) (_size!2889 (_ BitVec 32)) (_keys!11383 array!65022) (_values!6231 array!65024) (_vacant!2889 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5668)

(declare-fun valid!2094 (LongMapFixedSize!5668) Bool)

(assert (=> start!90278 (= res!690403 (valid!2094 thiss!1427))))

(assert (=> start!90278 e!583856))

(declare-fun e!583858 () Bool)

(assert (=> start!90278 e!583858))

(assert (=> start!90278 true))

(declare-fun b!1033038 () Bool)

(declare-fun e!583854 () Bool)

(declare-fun tp_is_empty!24481 () Bool)

(assert (=> b!1033038 (= e!583854 tp_is_empty!24481)))

(declare-fun mapNonEmpty!38198 () Bool)

(declare-fun mapRes!38198 () Bool)

(declare-fun tp!73377 () Bool)

(assert (=> mapNonEmpty!38198 (= mapRes!38198 (and tp!73377 e!583854))))

(declare-fun mapRest!38198 () (Array (_ BitVec 32) ValueCell!11537))

(declare-fun mapKey!38198 () (_ BitVec 32))

(declare-fun mapValue!38198 () ValueCell!11537)

(assert (=> mapNonEmpty!38198 (= (arr!31304 (_values!6231 thiss!1427)) (store mapRest!38198 mapKey!38198 mapValue!38198))))

(declare-fun b!1033039 () Bool)

(assert (=> b!1033039 (= e!583856 (and (= (size!31827 (_values!6231 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30044 thiss!1427))) (= (size!31826 (_keys!11383 thiss!1427)) (size!31827 (_values!6231 thiss!1427))) (bvsge (mask!30044 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5940 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5940 thiss!1427) #b00000000000000000000000000000011) (bvslt (bvand (extraKeys!5940 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38198 () Bool)

(assert (=> mapIsEmpty!38198 mapRes!38198))

(declare-fun b!1033040 () Bool)

(declare-fun e!583855 () Bool)

(declare-fun e!583859 () Bool)

(assert (=> b!1033040 (= e!583855 (and e!583859 mapRes!38198))))

(declare-fun condMapEmpty!38198 () Bool)

(declare-fun mapDefault!38198 () ValueCell!11537)

