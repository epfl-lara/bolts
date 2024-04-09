; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108892 () Bool)

(assert start!108892)

(declare-fun b_free!28369 () Bool)

(declare-fun b_next!28369 () Bool)

(assert (=> start!108892 (= b_free!28369 (not b_next!28369))))

(declare-fun tp!100224 () Bool)

(declare-fun b_and!46445 () Bool)

(assert (=> start!108892 (= tp!100224 b_and!46445)))

(declare-fun b!1285461 () Bool)

(declare-fun e!734304 () Bool)

(assert (=> b!1285461 (= e!734304 false)))

(declare-datatypes ((V!50449 0))(
  ( (V!50450 (val!17079 Int)) )
))
(declare-fun minValue!1387 () V!50449)

(declare-fun zeroValue!1387 () V!50449)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576867 () Bool)

(declare-datatypes ((ValueCell!16106 0))(
  ( (ValueCellFull!16106 (v!19679 V!50449)) (EmptyCell!16106) )
))
(declare-datatypes ((array!85029 0))(
  ( (array!85030 (arr!41012 (Array (_ BitVec 32) ValueCell!16106)) (size!41563 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85029)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85031 0))(
  ( (array!85032 (arr!41013 (Array (_ BitVec 32) (_ BitVec 64))) (size!41564 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85031)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22024 0))(
  ( (tuple2!22025 (_1!11022 (_ BitVec 64)) (_2!11022 V!50449)) )
))
(declare-datatypes ((List!29236 0))(
  ( (Nil!29233) (Cons!29232 (h!30441 tuple2!22024) (t!42787 List!29236)) )
))
(declare-datatypes ((ListLongMap!19693 0))(
  ( (ListLongMap!19694 (toList!9862 List!29236)) )
))
(declare-fun contains!7917 (ListLongMap!19693 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4878 (array!85031 array!85029 (_ BitVec 32) (_ BitVec 32) V!50449 V!50449 (_ BitVec 32) Int) ListLongMap!19693)

(assert (=> b!1285461 (= lt!576867 (contains!7917 (getCurrentListMap!4878 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285462 () Bool)

(declare-fun res!854031 () Bool)

(assert (=> b!1285462 (=> (not res!854031) (not e!734304))))

(declare-datatypes ((List!29237 0))(
  ( (Nil!29234) (Cons!29233 (h!30442 (_ BitVec 64)) (t!42788 List!29237)) )
))
(declare-fun arrayNoDuplicates!0 (array!85031 (_ BitVec 32) List!29237) Bool)

(assert (=> b!1285462 (= res!854031 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29234))))

(declare-fun mapNonEmpty!52571 () Bool)

(declare-fun mapRes!52571 () Bool)

(declare-fun tp!100223 () Bool)

(declare-fun e!734303 () Bool)

(assert (=> mapNonEmpty!52571 (= mapRes!52571 (and tp!100223 e!734303))))

(declare-fun mapValue!52571 () ValueCell!16106)

(declare-fun mapRest!52571 () (Array (_ BitVec 32) ValueCell!16106))

(declare-fun mapKey!52571 () (_ BitVec 32))

(assert (=> mapNonEmpty!52571 (= (arr!41012 _values!1445) (store mapRest!52571 mapKey!52571 mapValue!52571))))

(declare-fun b!1285463 () Bool)

(declare-fun res!854027 () Bool)

(assert (=> b!1285463 (=> (not res!854027) (not e!734304))))

(assert (=> b!1285463 (= res!854027 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41564 _keys!1741))))))

(declare-fun b!1285464 () Bool)

(declare-fun e!734301 () Bool)

(declare-fun tp_is_empty!34009 () Bool)

(assert (=> b!1285464 (= e!734301 tp_is_empty!34009)))

(declare-fun b!1285465 () Bool)

(declare-fun res!854029 () Bool)

(assert (=> b!1285465 (=> (not res!854029) (not e!734304))))

(assert (=> b!1285465 (= res!854029 (and (= (size!41563 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41564 _keys!1741) (size!41563 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285466 () Bool)

(declare-fun e!734305 () Bool)

(assert (=> b!1285466 (= e!734305 (and e!734301 mapRes!52571))))

(declare-fun condMapEmpty!52571 () Bool)

(declare-fun mapDefault!52571 () ValueCell!16106)

