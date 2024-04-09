; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90180 () Bool)

(assert start!90180)

(declare-fun b!1032468 () Bool)

(declare-fun b_free!20735 () Bool)

(declare-fun b_next!20735 () Bool)

(assert (=> b!1032468 (= b_free!20735 (not b_next!20735))))

(declare-fun tp!73280 () Bool)

(declare-fun b_and!33221 () Bool)

(assert (=> b!1032468 (= tp!73280 b_and!33221)))

(declare-fun tp_is_empty!24455 () Bool)

(declare-fun e!583452 () Bool)

(declare-datatypes ((V!37479 0))(
  ( (V!37480 (val!12278 Int)) )
))
(declare-datatypes ((ValueCell!11524 0))(
  ( (ValueCellFull!11524 (v!14856 V!37479)) (EmptyCell!11524) )
))
(declare-datatypes ((array!64960 0))(
  ( (array!64961 (arr!31277 (Array (_ BitVec 32) (_ BitVec 64))) (size!31796 (_ BitVec 32))) )
))
(declare-datatypes ((array!64962 0))(
  ( (array!64963 (arr!31278 (Array (_ BitVec 32) ValueCell!11524)) (size!31797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5642 0))(
  ( (LongMapFixedSize!5643 (defaultEntry!6195 Int) (mask!30012 (_ BitVec 32)) (extraKeys!5927 (_ BitVec 32)) (zeroValue!6031 V!37479) (minValue!6031 V!37479) (_size!2876 (_ BitVec 32)) (_keys!11366 array!64960) (_values!6218 array!64962) (_vacant!2876 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5642)

(declare-fun e!583449 () Bool)

(declare-fun array_inv!24043 (array!64960) Bool)

(declare-fun array_inv!24044 (array!64962) Bool)

(assert (=> b!1032468 (= e!583452 (and tp!73280 tp_is_empty!24455 (array_inv!24043 (_keys!11366 thiss!1427)) (array_inv!24044 (_values!6218 thiss!1427)) e!583449))))

(declare-fun mapIsEmpty!38140 () Bool)

(declare-fun mapRes!38140 () Bool)

(assert (=> mapIsEmpty!38140 mapRes!38140))

(declare-fun b!1032469 () Bool)

(declare-fun res!690134 () Bool)

(declare-fun e!583451 () Bool)

(assert (=> b!1032469 (=> (not res!690134) (not e!583451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1032469 (= res!690134 (validMask!0 (mask!30012 thiss!1427)))))

(declare-fun b!1032470 () Bool)

(declare-fun e!583447 () Bool)

(assert (=> b!1032470 (= e!583447 tp_is_empty!24455)))

(declare-fun b!1032471 () Bool)

(declare-fun e!583448 () Bool)

(assert (=> b!1032471 (= e!583448 tp_is_empty!24455)))

(declare-fun res!690133 () Bool)

(assert (=> start!90180 (=> (not res!690133) (not e!583451))))

(declare-fun valid!2084 (LongMapFixedSize!5642) Bool)

(assert (=> start!90180 (= res!690133 (valid!2084 thiss!1427))))

(assert (=> start!90180 e!583451))

(assert (=> start!90180 e!583452))

(assert (=> start!90180 true))

(declare-fun mapNonEmpty!38140 () Bool)

(declare-fun tp!73281 () Bool)

(assert (=> mapNonEmpty!38140 (= mapRes!38140 (and tp!73281 e!583448))))

(declare-fun mapValue!38140 () ValueCell!11524)

(declare-fun mapKey!38140 () (_ BitVec 32))

(declare-fun mapRest!38140 () (Array (_ BitVec 32) ValueCell!11524))

(assert (=> mapNonEmpty!38140 (= (arr!31278 (_values!6218 thiss!1427)) (store mapRest!38140 mapKey!38140 mapValue!38140))))

(declare-fun b!1032472 () Bool)

(assert (=> b!1032472 (= e!583449 (and e!583447 mapRes!38140))))

(declare-fun condMapEmpty!38140 () Bool)

(declare-fun mapDefault!38140 () ValueCell!11524)

