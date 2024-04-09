; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43512 () Bool)

(assert start!43512)

(declare-fun b_free!12283 () Bool)

(declare-fun b_next!12283 () Bool)

(assert (=> start!43512 (= b_free!12283 (not b_next!12283))))

(declare-fun tp!43131 () Bool)

(declare-fun b_and!21061 () Bool)

(assert (=> start!43512 (= tp!43131 b_and!21061)))

(declare-fun b!481833 () Bool)

(declare-fun res!287305 () Bool)

(declare-fun e!283522 () Bool)

(assert (=> b!481833 (=> (not res!287305) (not e!283522))))

(declare-datatypes ((array!31221 0))(
  ( (array!31222 (arr!15010 (Array (_ BitVec 32) (_ BitVec 64))) (size!15368 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31221)

(declare-datatypes ((List!9231 0))(
  ( (Nil!9228) (Cons!9227 (h!10083 (_ BitVec 64)) (t!15453 List!9231)) )
))
(declare-fun arrayNoDuplicates!0 (array!31221 (_ BitVec 32) List!9231) Bool)

(assert (=> b!481833 (= res!287305 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9228))))

(declare-fun mapNonEmpty!22402 () Bool)

(declare-fun mapRes!22402 () Bool)

(declare-fun tp!43132 () Bool)

(declare-fun e!283521 () Bool)

(assert (=> mapNonEmpty!22402 (= mapRes!22402 (and tp!43132 e!283521))))

(declare-fun mapKey!22402 () (_ BitVec 32))

(declare-datatypes ((V!19465 0))(
  ( (V!19466 (val!6945 Int)) )
))
(declare-datatypes ((ValueCell!6536 0))(
  ( (ValueCellFull!6536 (v!9234 V!19465)) (EmptyCell!6536) )
))
(declare-fun mapValue!22402 () ValueCell!6536)

(declare-fun mapRest!22402 () (Array (_ BitVec 32) ValueCell!6536))

(declare-datatypes ((array!31223 0))(
  ( (array!31224 (arr!15011 (Array (_ BitVec 32) ValueCell!6536)) (size!15369 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31223)

(assert (=> mapNonEmpty!22402 (= (arr!15011 _values!1516) (store mapRest!22402 mapKey!22402 mapValue!22402))))

(declare-fun b!481834 () Bool)

(declare-fun tp_is_empty!13795 () Bool)

(assert (=> b!481834 (= e!283521 tp_is_empty!13795)))

(declare-fun b!481835 () Bool)

(declare-fun e!283518 () Bool)

(assert (=> b!481835 (= e!283518 tp_is_empty!13795)))

(declare-fun b!481836 () Bool)

(declare-fun res!287308 () Bool)

(assert (=> b!481836 (=> (not res!287308) (not e!283522))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31221 (_ BitVec 32)) Bool)

(assert (=> b!481836 (= res!287308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapIsEmpty!22402 () Bool)

(assert (=> mapIsEmpty!22402 mapRes!22402))

(declare-fun b!481837 () Bool)

(assert (=> b!481837 (= e!283522 false)))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19465)

(declare-fun lt!218624 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19465)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9116 0))(
  ( (tuple2!9117 (_1!4568 (_ BitVec 64)) (_2!4568 V!19465)) )
))
(declare-datatypes ((List!9232 0))(
  ( (Nil!9229) (Cons!9228 (h!10084 tuple2!9116) (t!15454 List!9232)) )
))
(declare-datatypes ((ListLongMap!8043 0))(
  ( (ListLongMap!8044 (toList!4037 List!9232)) )
))
(declare-fun contains!2648 (ListLongMap!8043 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2329 (array!31221 array!31223 (_ BitVec 32) (_ BitVec 32) V!19465 V!19465 (_ BitVec 32) Int) ListLongMap!8043)

(assert (=> b!481837 (= lt!218624 (contains!2648 (getCurrentListMap!2329 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k!1332))))

(declare-fun b!481838 () Bool)

(declare-fun e!283520 () Bool)

(assert (=> b!481838 (= e!283520 (and e!283518 mapRes!22402))))

(declare-fun condMapEmpty!22402 () Bool)

(declare-fun mapDefault!22402 () ValueCell!6536)

