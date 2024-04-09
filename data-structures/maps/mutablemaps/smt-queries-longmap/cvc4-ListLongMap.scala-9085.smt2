; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109334 () Bool)

(assert start!109334)

(declare-fun b_free!28787 () Bool)

(declare-fun b_next!28787 () Bool)

(assert (=> start!109334 (= b_free!28787 (not b_next!28787))))

(declare-fun tp!101480 () Bool)

(declare-fun b_and!46887 () Bool)

(assert (=> start!109334 (= tp!101480 b_and!46887)))

(declare-fun b!1293270 () Bool)

(declare-fun e!738117 () Bool)

(declare-fun tp_is_empty!34427 () Bool)

(assert (=> b!1293270 (= e!738117 tp_is_empty!34427)))

(declare-fun b!1293271 () Bool)

(declare-fun res!859469 () Bool)

(declare-fun e!738115 () Bool)

(assert (=> b!1293271 (=> (not res!859469) (not e!738115))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85843 0))(
  ( (array!85844 (arr!41418 (Array (_ BitVec 32) (_ BitVec 64))) (size!41969 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85843)

(assert (=> b!1293271 (= res!859469 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41969 _keys!1741))))))

(declare-fun res!859472 () Bool)

(assert (=> start!109334 (=> (not res!859472) (not e!738115))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109334 (= res!859472 (validMask!0 mask!2175))))

(assert (=> start!109334 e!738115))

(assert (=> start!109334 tp_is_empty!34427))

(assert (=> start!109334 true))

(declare-datatypes ((V!51005 0))(
  ( (V!51006 (val!17288 Int)) )
))
(declare-datatypes ((ValueCell!16315 0))(
  ( (ValueCellFull!16315 (v!19889 V!51005)) (EmptyCell!16315) )
))
(declare-datatypes ((array!85845 0))(
  ( (array!85846 (arr!41419 (Array (_ BitVec 32) ValueCell!16315)) (size!41970 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85845)

(declare-fun e!738113 () Bool)

(declare-fun array_inv!31355 (array!85845) Bool)

(assert (=> start!109334 (and (array_inv!31355 _values!1445) e!738113)))

(declare-fun array_inv!31356 (array!85843) Bool)

(assert (=> start!109334 (array_inv!31356 _keys!1741)))

(assert (=> start!109334 tp!101480))

(declare-fun b!1293272 () Bool)

(declare-fun res!859467 () Bool)

(assert (=> b!1293272 (=> (not res!859467) (not e!738115))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293272 (= res!859467 (and (= (size!41970 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41969 _keys!1741) (size!41970 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53201 () Bool)

(declare-fun mapRes!53201 () Bool)

(assert (=> mapIsEmpty!53201 mapRes!53201))

(declare-fun b!1293273 () Bool)

(declare-fun res!859473 () Bool)

(assert (=> b!1293273 (=> (not res!859473) (not e!738115))))

(declare-fun minValue!1387 () V!51005)

(declare-fun zeroValue!1387 () V!51005)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22388 0))(
  ( (tuple2!22389 (_1!11204 (_ BitVec 64)) (_2!11204 V!51005)) )
))
(declare-datatypes ((List!29571 0))(
  ( (Nil!29568) (Cons!29567 (h!30776 tuple2!22388) (t!43142 List!29571)) )
))
(declare-datatypes ((ListLongMap!20057 0))(
  ( (ListLongMap!20058 (toList!10044 List!29571)) )
))
(declare-fun contains!8100 (ListLongMap!20057 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5030 (array!85843 array!85845 (_ BitVec 32) (_ BitVec 32) V!51005 V!51005 (_ BitVec 32) Int) ListLongMap!20057)

(assert (=> b!1293273 (= res!859473 (contains!8100 (getCurrentListMap!5030 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293274 () Bool)

(declare-fun e!738116 () Bool)

(assert (=> b!1293274 (= e!738116 tp_is_empty!34427)))

(declare-fun b!1293275 () Bool)

(declare-fun e!738114 () Bool)

(assert (=> b!1293275 (= e!738114 true)))

(declare-fun lt!579469 () ListLongMap!20057)

(declare-fun +!4376 (ListLongMap!20057 tuple2!22388) ListLongMap!20057)

(assert (=> b!1293275 (not (contains!8100 (+!4376 lt!579469 (tuple2!22389 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42767 0))(
  ( (Unit!42768) )
))
(declare-fun lt!579468 () Unit!42767)

(declare-fun addStillNotContains!421 (ListLongMap!20057 (_ BitVec 64) V!51005 (_ BitVec 64)) Unit!42767)

(assert (=> b!1293275 (= lt!579468 (addStillNotContains!421 lt!579469 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6089 (array!85843 array!85845 (_ BitVec 32) (_ BitVec 32) V!51005 V!51005 (_ BitVec 32) Int) ListLongMap!20057)

(assert (=> b!1293275 (= lt!579469 (getCurrentListMapNoExtraKeys!6089 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293276 () Bool)

(declare-fun res!859466 () Bool)

(assert (=> b!1293276 (=> (not res!859466) (not e!738115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293276 (= res!859466 (not (validKeyInArray!0 (select (arr!41418 _keys!1741) from!2144))))))

(declare-fun b!1293277 () Bool)

(assert (=> b!1293277 (= e!738115 (not e!738114))))

(declare-fun res!859465 () Bool)

(assert (=> b!1293277 (=> res!859465 e!738114)))

(assert (=> b!1293277 (= res!859465 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293277 (not (contains!8100 (ListLongMap!20058 Nil!29568) k!1205))))

(declare-fun lt!579467 () Unit!42767)

(declare-fun emptyContainsNothing!140 ((_ BitVec 64)) Unit!42767)

(assert (=> b!1293277 (= lt!579467 (emptyContainsNothing!140 k!1205))))

(declare-fun b!1293278 () Bool)

(assert (=> b!1293278 (= e!738113 (and e!738117 mapRes!53201))))

(declare-fun condMapEmpty!53201 () Bool)

(declare-fun mapDefault!53201 () ValueCell!16315)

