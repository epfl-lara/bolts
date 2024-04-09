; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!646 () Bool)

(assert start!646)

(declare-fun b_free!119 () Bool)

(declare-fun b_next!119 () Bool)

(assert (=> start!646 (= b_free!119 (not b_next!119))))

(declare-fun tp!575 () Bool)

(declare-fun b_and!257 () Bool)

(assert (=> start!646 (= tp!575 b_and!257)))

(declare-fun mapNonEmpty!254 () Bool)

(declare-fun mapRes!254 () Bool)

(declare-fun tp!574 () Bool)

(declare-fun e!2191 () Bool)

(assert (=> mapNonEmpty!254 (= mapRes!254 (and tp!574 e!2191))))

(declare-datatypes ((V!439 0))(
  ( (V!440 (val!104 Int)) )
))
(declare-datatypes ((ValueCell!82 0))(
  ( (ValueCellFull!82 (v!1191 V!439)) (EmptyCell!82) )
))
(declare-fun mapRest!254 () (Array (_ BitVec 32) ValueCell!82))

(declare-fun mapKey!254 () (_ BitVec 32))

(declare-datatypes ((array!327 0))(
  ( (array!328 (arr!156 (Array (_ BitVec 32) ValueCell!82)) (size!218 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!327)

(declare-fun mapValue!254 () ValueCell!82)

(assert (=> mapNonEmpty!254 (= (arr!156 _values!1492) (store mapRest!254 mapKey!254 mapValue!254))))

(declare-fun b!4183 () Bool)

(declare-fun tp_is_empty!197 () Bool)

(assert (=> b!4183 (= e!2191 tp_is_empty!197)))

(declare-fun res!5594 () Bool)

(declare-fun e!2194 () Bool)

(assert (=> start!646 (=> (not res!5594) (not e!2194))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!646 (= res!5594 (validMask!0 mask!2250))))

(assert (=> start!646 e!2194))

(assert (=> start!646 tp!575))

(assert (=> start!646 true))

(declare-fun e!2193 () Bool)

(declare-fun array_inv!109 (array!327) Bool)

(assert (=> start!646 (and (array_inv!109 _values!1492) e!2193)))

(assert (=> start!646 tp_is_empty!197))

(declare-datatypes ((array!329 0))(
  ( (array!330 (arr!157 (Array (_ BitVec 32) (_ BitVec 64))) (size!219 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!329)

(declare-fun array_inv!110 (array!329) Bool)

(assert (=> start!646 (array_inv!110 _keys!1806)))

(declare-fun mapIsEmpty!254 () Bool)

(assert (=> mapIsEmpty!254 mapRes!254))

(declare-fun b!4184 () Bool)

(assert (=> b!4184 (= e!2194 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!439)

(declare-fun lt!579 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!439)

(declare-datatypes ((tuple2!94 0))(
  ( (tuple2!95 (_1!47 (_ BitVec 64)) (_2!47 V!439)) )
))
(declare-datatypes ((List!99 0))(
  ( (Nil!96) (Cons!95 (h!661 tuple2!94) (t!2226 List!99)) )
))
(declare-datatypes ((ListLongMap!99 0))(
  ( (ListLongMap!100 (toList!65 List!99)) )
))
(declare-fun contains!35 (ListLongMap!99 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!24 (array!329 array!327 (_ BitVec 32) (_ BitVec 32) V!439 V!439 (_ BitVec 32) Int) ListLongMap!99)

(assert (=> b!4184 (= lt!579 (contains!35 (getCurrentListMap!24 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!4185 () Bool)

(declare-fun e!2192 () Bool)

(assert (=> b!4185 (= e!2192 tp_is_empty!197)))

(declare-fun b!4186 () Bool)

(declare-fun res!5595 () Bool)

(assert (=> b!4186 (=> (not res!5595) (not e!2194))))

(declare-datatypes ((List!100 0))(
  ( (Nil!97) (Cons!96 (h!662 (_ BitVec 64)) (t!2227 List!100)) )
))
(declare-fun arrayNoDuplicates!0 (array!329 (_ BitVec 32) List!100) Bool)

(assert (=> b!4186 (= res!5595 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!97))))

(declare-fun b!4187 () Bool)

(declare-fun res!5596 () Bool)

(assert (=> b!4187 (=> (not res!5596) (not e!2194))))

(assert (=> b!4187 (= res!5596 (and (= (size!218 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!219 _keys!1806) (size!218 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4188 () Bool)

(assert (=> b!4188 (= e!2193 (and e!2192 mapRes!254))))

(declare-fun condMapEmpty!254 () Bool)

(declare-fun mapDefault!254 () ValueCell!82)

