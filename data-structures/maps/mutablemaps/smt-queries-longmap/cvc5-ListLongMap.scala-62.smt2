; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!904 () Bool)

(assert start!904)

(declare-fun b_free!277 () Bool)

(declare-fun b_next!277 () Bool)

(assert (=> start!904 (= b_free!277 (not b_next!277))))

(declare-fun tp!1064 () Bool)

(declare-fun b_and!425 () Bool)

(assert (=> start!904 (= tp!1064 b_and!425)))

(declare-fun b!7554 () Bool)

(declare-fun res!7471 () Bool)

(declare-fun e!4217 () Bool)

(assert (=> b!7554 (=> (not res!7471) (not e!4217))))

(declare-datatypes ((array!645 0))(
  ( (array!646 (arr!310 (Array (_ BitVec 32) (_ BitVec 64))) (size!372 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!645)

(declare-datatypes ((List!212 0))(
  ( (Nil!209) (Cons!208 (h!774 (_ BitVec 64)) (t!2349 List!212)) )
))
(declare-fun arrayNoDuplicates!0 (array!645 (_ BitVec 32) List!212) Bool)

(assert (=> b!7554 (= res!7471 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!209))))

(declare-fun b!7555 () Bool)

(assert (=> b!7555 (= e!4217 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!651 0))(
  ( (V!652 (val!183 Int)) )
))
(declare-datatypes ((ValueCell!161 0))(
  ( (ValueCellFull!161 (v!1275 V!651)) (EmptyCell!161) )
))
(declare-datatypes ((array!647 0))(
  ( (array!648 (arr!311 (Array (_ BitVec 32) ValueCell!161)) (size!373 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!647)

(declare-fun minValue!1434 () V!651)

(declare-fun lt!1554 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!651)

(declare-datatypes ((tuple2!192 0))(
  ( (tuple2!193 (_1!96 (_ BitVec 64)) (_2!96 V!651)) )
))
(declare-datatypes ((List!213 0))(
  ( (Nil!210) (Cons!209 (h!775 tuple2!192) (t!2350 List!213)) )
))
(declare-datatypes ((ListLongMap!197 0))(
  ( (ListLongMap!198 (toList!114 List!213)) )
))
(declare-fun contains!89 (ListLongMap!197 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!73 (array!645 array!647 (_ BitVec 32) (_ BitVec 32) V!651 V!651 (_ BitVec 32) Int) ListLongMap!197)

(assert (=> b!7555 (= lt!1554 (contains!89 (getCurrentListMap!73 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7556 () Bool)

(declare-fun res!7474 () Bool)

(assert (=> b!7556 (=> (not res!7474) (not e!4217))))

(assert (=> b!7556 (= res!7474 (and (= (size!373 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!372 _keys!1806) (size!373 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun res!7473 () Bool)

(assert (=> start!904 (=> (not res!7473) (not e!4217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!904 (= res!7473 (validMask!0 mask!2250))))

(assert (=> start!904 e!4217))

(assert (=> start!904 tp!1064))

(assert (=> start!904 true))

(declare-fun e!4214 () Bool)

(declare-fun array_inv!233 (array!647) Bool)

(assert (=> start!904 (and (array_inv!233 _values!1492) e!4214)))

(declare-fun tp_is_empty!355 () Bool)

(assert (=> start!904 tp_is_empty!355))

(declare-fun array_inv!234 (array!645) Bool)

(assert (=> start!904 (array_inv!234 _keys!1806)))

(declare-fun b!7557 () Bool)

(declare-fun res!7472 () Bool)

(assert (=> b!7557 (=> (not res!7472) (not e!4217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!645 (_ BitVec 32)) Bool)

(assert (=> b!7557 (= res!7472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7558 () Bool)

(declare-fun e!4213 () Bool)

(assert (=> b!7558 (= e!4213 tp_is_empty!355)))

(declare-fun b!7559 () Bool)

(declare-fun e!4216 () Bool)

(declare-fun mapRes!506 () Bool)

(assert (=> b!7559 (= e!4214 (and e!4216 mapRes!506))))

(declare-fun condMapEmpty!506 () Bool)

(declare-fun mapDefault!506 () ValueCell!161)

