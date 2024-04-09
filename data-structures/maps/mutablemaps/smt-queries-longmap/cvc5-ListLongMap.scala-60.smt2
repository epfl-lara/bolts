; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!892 () Bool)

(assert start!892)

(declare-fun b_free!265 () Bool)

(declare-fun b_next!265 () Bool)

(assert (=> start!892 (= b_free!265 (not b_next!265))))

(declare-fun tp!1028 () Bool)

(declare-fun b_and!413 () Bool)

(assert (=> start!892 (= tp!1028 b_and!413)))

(declare-fun b!7428 () Bool)

(declare-fun res!7399 () Bool)

(declare-fun e!4127 () Bool)

(assert (=> b!7428 (=> (not res!7399) (not e!4127))))

(declare-datatypes ((array!621 0))(
  ( (array!622 (arr!298 (Array (_ BitVec 32) (_ BitVec 64))) (size!360 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!621)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!621 (_ BitVec 32)) Bool)

(assert (=> b!7428 (= res!7399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7429 () Bool)

(declare-fun res!7401 () Bool)

(assert (=> b!7429 (=> (not res!7401) (not e!4127))))

(declare-datatypes ((V!635 0))(
  ( (V!636 (val!177 Int)) )
))
(declare-datatypes ((ValueCell!155 0))(
  ( (ValueCellFull!155 (v!1269 V!635)) (EmptyCell!155) )
))
(declare-datatypes ((array!623 0))(
  ( (array!624 (arr!299 (Array (_ BitVec 32) ValueCell!155)) (size!361 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!623)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7429 (= res!7401 (and (= (size!361 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!360 _keys!1806) (size!361 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7430 () Bool)

(declare-fun res!7400 () Bool)

(assert (=> b!7430 (=> (not res!7400) (not e!4127))))

(declare-datatypes ((List!201 0))(
  ( (Nil!198) (Cons!197 (h!763 (_ BitVec 64)) (t!2338 List!201)) )
))
(declare-fun arrayNoDuplicates!0 (array!621 (_ BitVec 32) List!201) Bool)

(assert (=> b!7430 (= res!7400 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!198))))

(declare-fun mapNonEmpty!488 () Bool)

(declare-fun mapRes!488 () Bool)

(declare-fun tp!1027 () Bool)

(declare-fun e!4123 () Bool)

(assert (=> mapNonEmpty!488 (= mapRes!488 (and tp!1027 e!4123))))

(declare-fun mapRest!488 () (Array (_ BitVec 32) ValueCell!155))

(declare-fun mapKey!488 () (_ BitVec 32))

(declare-fun mapValue!488 () ValueCell!155)

(assert (=> mapNonEmpty!488 (= (arr!299 _values!1492) (store mapRest!488 mapKey!488 mapValue!488))))

(declare-fun res!7402 () Bool)

(assert (=> start!892 (=> (not res!7402) (not e!4127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!892 (= res!7402 (validMask!0 mask!2250))))

(assert (=> start!892 e!4127))

(assert (=> start!892 tp!1028))

(assert (=> start!892 true))

(declare-fun e!4124 () Bool)

(declare-fun array_inv!221 (array!623) Bool)

(assert (=> start!892 (and (array_inv!221 _values!1492) e!4124)))

(declare-fun tp_is_empty!343 () Bool)

(assert (=> start!892 tp_is_empty!343))

(declare-fun array_inv!222 (array!621) Bool)

(assert (=> start!892 (array_inv!222 _keys!1806)))

(declare-fun b!7431 () Bool)

(assert (=> b!7431 (= e!4127 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!1536 () Bool)

(declare-fun minValue!1434 () V!635)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!635)

(declare-datatypes ((tuple2!182 0))(
  ( (tuple2!183 (_1!91 (_ BitVec 64)) (_2!91 V!635)) )
))
(declare-datatypes ((List!202 0))(
  ( (Nil!199) (Cons!198 (h!764 tuple2!182) (t!2339 List!202)) )
))
(declare-datatypes ((ListLongMap!187 0))(
  ( (ListLongMap!188 (toList!109 List!202)) )
))
(declare-fun contains!84 (ListLongMap!187 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!68 (array!621 array!623 (_ BitVec 32) (_ BitVec 32) V!635 V!635 (_ BitVec 32) Int) ListLongMap!187)

(assert (=> b!7431 (= lt!1536 (contains!84 (getCurrentListMap!68 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun mapIsEmpty!488 () Bool)

(assert (=> mapIsEmpty!488 mapRes!488))

(declare-fun b!7432 () Bool)

(assert (=> b!7432 (= e!4123 tp_is_empty!343)))

(declare-fun b!7433 () Bool)

(declare-fun e!4126 () Bool)

(assert (=> b!7433 (= e!4124 (and e!4126 mapRes!488))))

(declare-fun condMapEmpty!488 () Bool)

(declare-fun mapDefault!488 () ValueCell!155)

