; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90294 () Bool)

(assert start!90294)

(declare-fun b!1033212 () Bool)

(declare-fun b_free!20777 () Bool)

(declare-fun b_next!20777 () Bool)

(assert (=> b!1033212 (= b_free!20777 (not b_next!20777))))

(declare-fun tp!73425 () Bool)

(declare-fun b_and!33263 () Bool)

(assert (=> b!1033212 (= tp!73425 b_and!33263)))

(declare-fun b!1033206 () Bool)

(declare-fun e!584002 () Bool)

(declare-fun tp_is_empty!24497 () Bool)

(assert (=> b!1033206 (= e!584002 tp_is_empty!24497)))

(declare-fun mapNonEmpty!38222 () Bool)

(declare-fun mapRes!38222 () Bool)

(declare-fun tp!73426 () Bool)

(declare-fun e!584001 () Bool)

(assert (=> mapNonEmpty!38222 (= mapRes!38222 (and tp!73426 e!584001))))

(declare-datatypes ((V!37535 0))(
  ( (V!37536 (val!12299 Int)) )
))
(declare-datatypes ((ValueCell!11545 0))(
  ( (ValueCellFull!11545 (v!14877 V!37535)) (EmptyCell!11545) )
))
(declare-fun mapValue!38222 () ValueCell!11545)

(declare-fun mapRest!38222 () (Array (_ BitVec 32) ValueCell!11545))

(declare-datatypes ((array!65054 0))(
  ( (array!65055 (arr!31319 (Array (_ BitVec 32) (_ BitVec 64))) (size!31842 (_ BitVec 32))) )
))
(declare-datatypes ((array!65056 0))(
  ( (array!65057 (arr!31320 (Array (_ BitVec 32) ValueCell!11545)) (size!31843 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5684 0))(
  ( (LongMapFixedSize!5685 (defaultEntry!6216 Int) (mask!30056 (_ BitVec 32)) (extraKeys!5948 (_ BitVec 32)) (zeroValue!6052 V!37535) (minValue!6052 V!37535) (_size!2897 (_ BitVec 32)) (_keys!11391 array!65054) (_values!6239 array!65056) (_vacant!2897 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5684)

(declare-fun mapKey!38222 () (_ BitVec 32))

(assert (=> mapNonEmpty!38222 (= (arr!31320 (_values!6239 thiss!1427)) (store mapRest!38222 mapKey!38222 mapValue!38222))))

(declare-fun res!690476 () Bool)

(declare-fun e!583998 () Bool)

(assert (=> start!90294 (=> (not res!690476) (not e!583998))))

(declare-fun valid!2099 (LongMapFixedSize!5684) Bool)

(assert (=> start!90294 (= res!690476 (valid!2099 thiss!1427))))

(assert (=> start!90294 e!583998))

(declare-fun e!584003 () Bool)

(assert (=> start!90294 e!584003))

(assert (=> start!90294 true))

(declare-fun mapIsEmpty!38222 () Bool)

(assert (=> mapIsEmpty!38222 mapRes!38222))

(declare-fun b!1033207 () Bool)

(declare-fun res!690475 () Bool)

(assert (=> b!1033207 (=> (not res!690475) (not e!583998))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033207 (= res!690475 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033208 () Bool)

(declare-fun res!690477 () Bool)

(assert (=> b!1033208 (=> (not res!690477) (not e!583998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033208 (= res!690477 (validMask!0 (mask!30056 thiss!1427)))))

(declare-fun b!1033209 () Bool)

(assert (=> b!1033209 (= e!584001 tp_is_empty!24497)))

(declare-fun b!1033210 () Bool)

(assert (=> b!1033210 (= e!583998 (and (= (size!31843 (_values!6239 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30056 thiss!1427))) (= (size!31842 (_keys!11391 thiss!1427)) (size!31843 (_values!6239 thiss!1427))) (bvsge (mask!30056 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5948 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5948 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5948 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5948 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (not (= (bvand (extraKeys!5948 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5948 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)))))))

(declare-fun b!1033211 () Bool)

(declare-fun e!584000 () Bool)

(assert (=> b!1033211 (= e!584000 (and e!584002 mapRes!38222))))

(declare-fun condMapEmpty!38222 () Bool)

(declare-fun mapDefault!38222 () ValueCell!11545)

