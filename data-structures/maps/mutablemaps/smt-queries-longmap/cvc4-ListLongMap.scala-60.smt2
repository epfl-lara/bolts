; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!896 () Bool)

(assert start!896)

(declare-fun b_free!269 () Bool)

(declare-fun b_next!269 () Bool)

(assert (=> start!896 (= b_free!269 (not b_next!269))))

(declare-fun tp!1040 () Bool)

(declare-fun b_and!417 () Bool)

(assert (=> start!896 (= tp!1040 b_and!417)))

(declare-fun res!7424 () Bool)

(declare-fun e!4154 () Bool)

(assert (=> start!896 (=> (not res!7424) (not e!4154))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!896 (= res!7424 (validMask!0 mask!2250))))

(assert (=> start!896 e!4154))

(assert (=> start!896 tp!1040))

(assert (=> start!896 true))

(declare-datatypes ((V!639 0))(
  ( (V!640 (val!179 Int)) )
))
(declare-datatypes ((ValueCell!157 0))(
  ( (ValueCellFull!157 (v!1271 V!639)) (EmptyCell!157) )
))
(declare-datatypes ((array!629 0))(
  ( (array!630 (arr!302 (Array (_ BitVec 32) ValueCell!157)) (size!364 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!629)

(declare-fun e!4155 () Bool)

(declare-fun array_inv!225 (array!629) Bool)

(assert (=> start!896 (and (array_inv!225 _values!1492) e!4155)))

(declare-fun tp_is_empty!347 () Bool)

(assert (=> start!896 tp_is_empty!347))

(declare-datatypes ((array!631 0))(
  ( (array!632 (arr!303 (Array (_ BitVec 32) (_ BitVec 64))) (size!365 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!631)

(declare-fun array_inv!226 (array!631) Bool)

(assert (=> start!896 (array_inv!226 _keys!1806)))

(declare-fun b!7470 () Bool)

(declare-fun res!7423 () Bool)

(assert (=> b!7470 (=> (not res!7423) (not e!4154))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7470 (= res!7423 (and (= (size!364 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!365 _keys!1806) (size!364 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7471 () Bool)

(assert (=> b!7471 (= e!4154 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!639)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!639)

(declare-fun lt!1542 () Bool)

(declare-datatypes ((tuple2!186 0))(
  ( (tuple2!187 (_1!93 (_ BitVec 64)) (_2!93 V!639)) )
))
(declare-datatypes ((List!205 0))(
  ( (Nil!202) (Cons!201 (h!767 tuple2!186) (t!2342 List!205)) )
))
(declare-datatypes ((ListLongMap!191 0))(
  ( (ListLongMap!192 (toList!111 List!205)) )
))
(declare-fun contains!86 (ListLongMap!191 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!70 (array!631 array!629 (_ BitVec 32) (_ BitVec 32) V!639 V!639 (_ BitVec 32) Int) ListLongMap!191)

(assert (=> b!7471 (= lt!1542 (contains!86 (getCurrentListMap!70 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7472 () Bool)

(declare-fun res!7425 () Bool)

(assert (=> b!7472 (=> (not res!7425) (not e!4154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!631 (_ BitVec 32)) Bool)

(assert (=> b!7472 (= res!7425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7473 () Bool)

(declare-fun e!4156 () Bool)

(assert (=> b!7473 (= e!4156 tp_is_empty!347)))

(declare-fun mapNonEmpty!494 () Bool)

(declare-fun mapRes!494 () Bool)

(declare-fun tp!1039 () Bool)

(assert (=> mapNonEmpty!494 (= mapRes!494 (and tp!1039 e!4156))))

(declare-fun mapRest!494 () (Array (_ BitVec 32) ValueCell!157))

(declare-fun mapValue!494 () ValueCell!157)

(declare-fun mapKey!494 () (_ BitVec 32))

(assert (=> mapNonEmpty!494 (= (arr!302 _values!1492) (store mapRest!494 mapKey!494 mapValue!494))))

(declare-fun b!7474 () Bool)

(declare-fun res!7426 () Bool)

(assert (=> b!7474 (=> (not res!7426) (not e!4154))))

(declare-datatypes ((List!206 0))(
  ( (Nil!203) (Cons!202 (h!768 (_ BitVec 64)) (t!2343 List!206)) )
))
(declare-fun arrayNoDuplicates!0 (array!631 (_ BitVec 32) List!206) Bool)

(assert (=> b!7474 (= res!7426 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!203))))

(declare-fun b!7475 () Bool)

(declare-fun e!4157 () Bool)

(assert (=> b!7475 (= e!4155 (and e!4157 mapRes!494))))

(declare-fun condMapEmpty!494 () Bool)

(declare-fun mapDefault!494 () ValueCell!157)

