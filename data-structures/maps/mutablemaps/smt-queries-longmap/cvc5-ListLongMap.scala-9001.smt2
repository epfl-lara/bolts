; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108802 () Bool)

(assert start!108802)

(declare-fun b_free!28279 () Bool)

(declare-fun b_next!28279 () Bool)

(assert (=> start!108802 (= b_free!28279 (not b_next!28279))))

(declare-fun tp!99953 () Bool)

(declare-fun b_and!46355 () Bool)

(assert (=> start!108802 (= tp!99953 b_and!46355)))

(declare-fun b!1284282 () Bool)

(declare-fun e!733628 () Bool)

(declare-fun tp_is_empty!33919 () Bool)

(assert (=> b!1284282 (= e!733628 tp_is_empty!33919)))

(declare-fun res!853257 () Bool)

(declare-fun e!733626 () Bool)

(assert (=> start!108802 (=> (not res!853257) (not e!733626))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108802 (= res!853257 (validMask!0 mask!2175))))

(assert (=> start!108802 e!733626))

(assert (=> start!108802 tp_is_empty!33919))

(assert (=> start!108802 true))

(declare-datatypes ((V!50329 0))(
  ( (V!50330 (val!17034 Int)) )
))
(declare-datatypes ((ValueCell!16061 0))(
  ( (ValueCellFull!16061 (v!19634 V!50329)) (EmptyCell!16061) )
))
(declare-datatypes ((array!84853 0))(
  ( (array!84854 (arr!40924 (Array (_ BitVec 32) ValueCell!16061)) (size!41475 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84853)

(declare-fun e!733627 () Bool)

(declare-fun array_inv!31019 (array!84853) Bool)

(assert (=> start!108802 (and (array_inv!31019 _values!1445) e!733627)))

(declare-datatypes ((array!84855 0))(
  ( (array!84856 (arr!40925 (Array (_ BitVec 32) (_ BitVec 64))) (size!41476 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84855)

(declare-fun array_inv!31020 (array!84855) Bool)

(assert (=> start!108802 (array_inv!31020 _keys!1741)))

(assert (=> start!108802 tp!99953))

(declare-fun b!1284283 () Bool)

(declare-fun res!853255 () Bool)

(assert (=> b!1284283 (=> (not res!853255) (not e!733626))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284283 (= res!853255 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41476 _keys!1741))))))

(declare-fun b!1284284 () Bool)

(declare-fun res!853256 () Bool)

(assert (=> b!1284284 (=> (not res!853256) (not e!733626))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284284 (= res!853256 (and (= (size!41475 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41476 _keys!1741) (size!41475 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284285 () Bool)

(assert (=> b!1284285 (= e!733626 false)))

(declare-fun minValue!1387 () V!50329)

(declare-fun zeroValue!1387 () V!50329)

(declare-fun lt!576741 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21960 0))(
  ( (tuple2!21961 (_1!10990 (_ BitVec 64)) (_2!10990 V!50329)) )
))
(declare-datatypes ((List!29169 0))(
  ( (Nil!29166) (Cons!29165 (h!30374 tuple2!21960) (t!42720 List!29169)) )
))
(declare-datatypes ((ListLongMap!19629 0))(
  ( (ListLongMap!19630 (toList!9830 List!29169)) )
))
(declare-fun contains!7885 (ListLongMap!19629 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4848 (array!84855 array!84853 (_ BitVec 32) (_ BitVec 32) V!50329 V!50329 (_ BitVec 32) Int) ListLongMap!19629)

(assert (=> b!1284285 (= lt!576741 (contains!7885 (getCurrentListMap!4848 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!52436 () Bool)

(declare-fun mapRes!52436 () Bool)

(assert (=> mapIsEmpty!52436 mapRes!52436))

(declare-fun mapNonEmpty!52436 () Bool)

(declare-fun tp!99954 () Bool)

(declare-fun e!733630 () Bool)

(assert (=> mapNonEmpty!52436 (= mapRes!52436 (and tp!99954 e!733630))))

(declare-fun mapRest!52436 () (Array (_ BitVec 32) ValueCell!16061))

(declare-fun mapValue!52436 () ValueCell!16061)

(declare-fun mapKey!52436 () (_ BitVec 32))

(assert (=> mapNonEmpty!52436 (= (arr!40924 _values!1445) (store mapRest!52436 mapKey!52436 mapValue!52436))))

(declare-fun b!1284286 () Bool)

(declare-fun res!853253 () Bool)

(assert (=> b!1284286 (=> (not res!853253) (not e!733626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84855 (_ BitVec 32)) Bool)

(assert (=> b!1284286 (= res!853253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284287 () Bool)

(assert (=> b!1284287 (= e!733630 tp_is_empty!33919)))

(declare-fun b!1284288 () Bool)

(declare-fun res!853254 () Bool)

(assert (=> b!1284288 (=> (not res!853254) (not e!733626))))

(declare-datatypes ((List!29170 0))(
  ( (Nil!29167) (Cons!29166 (h!30375 (_ BitVec 64)) (t!42721 List!29170)) )
))
(declare-fun arrayNoDuplicates!0 (array!84855 (_ BitVec 32) List!29170) Bool)

(assert (=> b!1284288 (= res!853254 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29167))))

(declare-fun b!1284289 () Bool)

(assert (=> b!1284289 (= e!733627 (and e!733628 mapRes!52436))))

(declare-fun condMapEmpty!52436 () Bool)

(declare-fun mapDefault!52436 () ValueCell!16061)

