; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!902 () Bool)

(assert start!902)

(declare-fun b_free!275 () Bool)

(declare-fun b_next!275 () Bool)

(assert (=> start!902 (= b_free!275 (not b_next!275))))

(declare-fun tp!1057 () Bool)

(declare-fun b_and!423 () Bool)

(assert (=> start!902 (= tp!1057 b_and!423)))

(declare-fun b!7533 () Bool)

(declare-fun res!7459 () Bool)

(declare-fun e!4199 () Bool)

(assert (=> b!7533 (=> (not res!7459) (not e!4199))))

(declare-datatypes ((array!641 0))(
  ( (array!642 (arr!308 (Array (_ BitVec 32) (_ BitVec 64))) (size!370 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!641)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!641 (_ BitVec 32)) Bool)

(assert (=> b!7533 (= res!7459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7534 () Bool)

(declare-fun e!4200 () Bool)

(declare-fun tp_is_empty!353 () Bool)

(assert (=> b!7534 (= e!4200 tp_is_empty!353)))

(declare-fun b!7535 () Bool)

(declare-fun e!4198 () Bool)

(assert (=> b!7535 (= e!4198 tp_is_empty!353)))

(declare-fun res!7460 () Bool)

(assert (=> start!902 (=> (not res!7460) (not e!4199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!902 (= res!7460 (validMask!0 mask!2250))))

(assert (=> start!902 e!4199))

(assert (=> start!902 tp!1057))

(assert (=> start!902 true))

(declare-datatypes ((V!647 0))(
  ( (V!648 (val!182 Int)) )
))
(declare-datatypes ((ValueCell!160 0))(
  ( (ValueCellFull!160 (v!1274 V!647)) (EmptyCell!160) )
))
(declare-datatypes ((array!643 0))(
  ( (array!644 (arr!309 (Array (_ BitVec 32) ValueCell!160)) (size!371 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!643)

(declare-fun e!4201 () Bool)

(declare-fun array_inv!231 (array!643) Bool)

(assert (=> start!902 (and (array_inv!231 _values!1492) e!4201)))

(assert (=> start!902 tp_is_empty!353))

(declare-fun array_inv!232 (array!641) Bool)

(assert (=> start!902 (array_inv!232 _keys!1806)))

(declare-fun b!7536 () Bool)

(declare-fun res!7462 () Bool)

(assert (=> b!7536 (=> (not res!7462) (not e!4199))))

(declare-datatypes ((List!210 0))(
  ( (Nil!207) (Cons!206 (h!772 (_ BitVec 64)) (t!2347 List!210)) )
))
(declare-fun arrayNoDuplicates!0 (array!641 (_ BitVec 32) List!210) Bool)

(assert (=> b!7536 (= res!7462 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!207))))

(declare-fun mapIsEmpty!503 () Bool)

(declare-fun mapRes!503 () Bool)

(assert (=> mapIsEmpty!503 mapRes!503))

(declare-fun b!7537 () Bool)

(assert (=> b!7537 (= e!4199 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun lt!1551 () Bool)

(declare-fun zeroValue!1434 () V!647)

(declare-fun minValue!1434 () V!647)

(declare-datatypes ((tuple2!190 0))(
  ( (tuple2!191 (_1!95 (_ BitVec 64)) (_2!95 V!647)) )
))
(declare-datatypes ((List!211 0))(
  ( (Nil!208) (Cons!207 (h!773 tuple2!190) (t!2348 List!211)) )
))
(declare-datatypes ((ListLongMap!195 0))(
  ( (ListLongMap!196 (toList!113 List!211)) )
))
(declare-fun contains!88 (ListLongMap!195 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!72 (array!641 array!643 (_ BitVec 32) (_ BitVec 32) V!647 V!647 (_ BitVec 32) Int) ListLongMap!195)

(assert (=> b!7537 (= lt!1551 (contains!88 (getCurrentListMap!72 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapNonEmpty!503 () Bool)

(declare-fun tp!1058 () Bool)

(assert (=> mapNonEmpty!503 (= mapRes!503 (and tp!1058 e!4200))))

(declare-fun mapValue!503 () ValueCell!160)

(declare-fun mapKey!503 () (_ BitVec 32))

(declare-fun mapRest!503 () (Array (_ BitVec 32) ValueCell!160))

(assert (=> mapNonEmpty!503 (= (arr!309 _values!1492) (store mapRest!503 mapKey!503 mapValue!503))))

(declare-fun b!7538 () Bool)

(declare-fun res!7461 () Bool)

(assert (=> b!7538 (=> (not res!7461) (not e!4199))))

(assert (=> b!7538 (= res!7461 (and (= (size!371 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!370 _keys!1806) (size!371 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7539 () Bool)

(assert (=> b!7539 (= e!4201 (and e!4198 mapRes!503))))

(declare-fun condMapEmpty!503 () Bool)

(declare-fun mapDefault!503 () ValueCell!160)

