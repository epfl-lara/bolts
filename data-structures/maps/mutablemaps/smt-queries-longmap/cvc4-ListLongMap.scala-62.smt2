; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!908 () Bool)

(assert start!908)

(declare-fun b_free!281 () Bool)

(declare-fun b_next!281 () Bool)

(assert (=> start!908 (= b_free!281 (not b_next!281))))

(declare-fun tp!1075 () Bool)

(declare-fun b_and!429 () Bool)

(assert (=> start!908 (= tp!1075 b_and!429)))

(declare-fun b!7596 () Bool)

(declare-fun res!7495 () Bool)

(declare-fun e!4243 () Bool)

(assert (=> b!7596 (=> (not res!7495) (not e!4243))))

(declare-datatypes ((array!653 0))(
  ( (array!654 (arr!314 (Array (_ BitVec 32) (_ BitVec 64))) (size!376 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!653)

(declare-datatypes ((List!216 0))(
  ( (Nil!213) (Cons!212 (h!778 (_ BitVec 64)) (t!2353 List!216)) )
))
(declare-fun arrayNoDuplicates!0 (array!653 (_ BitVec 32) List!216) Bool)

(assert (=> b!7596 (= res!7495 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!213))))

(declare-fun b!7597 () Bool)

(declare-fun res!7496 () Bool)

(assert (=> b!7597 (=> (not res!7496) (not e!4243))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!653 (_ BitVec 32)) Bool)

(assert (=> b!7597 (= res!7496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7598 () Bool)

(declare-fun res!7497 () Bool)

(assert (=> b!7598 (=> (not res!7497) (not e!4243))))

(declare-datatypes ((V!655 0))(
  ( (V!656 (val!185 Int)) )
))
(declare-datatypes ((ValueCell!163 0))(
  ( (ValueCellFull!163 (v!1277 V!655)) (EmptyCell!163) )
))
(declare-datatypes ((array!655 0))(
  ( (array!656 (arr!315 (Array (_ BitVec 32) ValueCell!163)) (size!377 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!655)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7598 (= res!7497 (and (= (size!377 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!376 _keys!1806) (size!377 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7599 () Bool)

(assert (=> b!7599 (= e!4243 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!1560 () Bool)

(declare-fun minValue!1434 () V!655)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!655)

(declare-datatypes ((tuple2!196 0))(
  ( (tuple2!197 (_1!98 (_ BitVec 64)) (_2!98 V!655)) )
))
(declare-datatypes ((List!217 0))(
  ( (Nil!214) (Cons!213 (h!779 tuple2!196) (t!2354 List!217)) )
))
(declare-datatypes ((ListLongMap!201 0))(
  ( (ListLongMap!202 (toList!116 List!217)) )
))
(declare-fun contains!91 (ListLongMap!201 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!75 (array!653 array!655 (_ BitVec 32) (_ BitVec 32) V!655 V!655 (_ BitVec 32) Int) ListLongMap!201)

(assert (=> b!7599 (= lt!1560 (contains!91 (getCurrentListMap!75 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7600 () Bool)

(declare-fun e!4244 () Bool)

(declare-fun tp_is_empty!359 () Bool)

(assert (=> b!7600 (= e!4244 tp_is_empty!359)))

(declare-fun mapIsEmpty!512 () Bool)

(declare-fun mapRes!512 () Bool)

(assert (=> mapIsEmpty!512 mapRes!512))

(declare-fun b!7601 () Bool)

(declare-fun e!4246 () Bool)

(assert (=> b!7601 (= e!4246 (and e!4244 mapRes!512))))

(declare-fun condMapEmpty!512 () Bool)

(declare-fun mapDefault!512 () ValueCell!163)

