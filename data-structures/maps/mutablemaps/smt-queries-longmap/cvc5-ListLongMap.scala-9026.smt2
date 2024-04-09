; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108952 () Bool)

(assert start!108952)

(declare-fun b_free!28429 () Bool)

(declare-fun b_next!28429 () Bool)

(assert (=> start!108952 (= b_free!28429 (not b_next!28429))))

(declare-fun tp!100403 () Bool)

(declare-fun b_and!46523 () Bool)

(assert (=> start!108952 (= tp!100403 b_and!46523)))

(declare-fun b!1286748 () Bool)

(declare-fun e!734919 () Bool)

(assert (=> b!1286748 (= e!734919 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50529 0))(
  ( (V!50530 (val!17109 Int)) )
))
(declare-datatypes ((tuple2!22080 0))(
  ( (tuple2!22081 (_1!11050 (_ BitVec 64)) (_2!11050 V!50529)) )
))
(declare-datatypes ((List!29282 0))(
  ( (Nil!29279) (Cons!29278 (h!30487 tuple2!22080) (t!42851 List!29282)) )
))
(declare-datatypes ((ListLongMap!19749 0))(
  ( (ListLongMap!19750 (toList!9890 List!29282)) )
))
(declare-fun contains!7944 (ListLongMap!19749 (_ BitVec 64)) Bool)

(assert (=> b!1286748 (not (contains!7944 (ListLongMap!19750 Nil!29279) k!1205))))

(declare-datatypes ((Unit!42476 0))(
  ( (Unit!42477) )
))
(declare-fun lt!577477 () Unit!42476)

(declare-fun emptyContainsNothing!12 ((_ BitVec 64)) Unit!42476)

(assert (=> b!1286748 (= lt!577477 (emptyContainsNothing!12 k!1205))))

(declare-fun lt!577475 () Unit!42476)

(declare-fun e!734926 () Unit!42476)

(assert (=> b!1286748 (= lt!577475 e!734926)))

(declare-fun c!124189 () Bool)

(declare-fun lt!577473 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1286748 (= c!124189 (and (not lt!577473) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286748 (= lt!577473 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1286749 () Bool)

(declare-fun e!734922 () Unit!42476)

(declare-fun Unit!42478 () Unit!42476)

(assert (=> b!1286749 (= e!734922 Unit!42478)))

(declare-fun bm!63053 () Bool)

(declare-fun call!63056 () ListLongMap!19749)

(declare-fun call!63060 () ListLongMap!19749)

(assert (=> bm!63053 (= call!63056 call!63060)))

(declare-fun b!1286750 () Bool)

(declare-fun res!854749 () Bool)

(assert (=> b!1286750 (=> (not res!854749) (not e!734919))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16136 0))(
  ( (ValueCellFull!16136 (v!19709 V!50529)) (EmptyCell!16136) )
))
(declare-datatypes ((array!85145 0))(
  ( (array!85146 (arr!41070 (Array (_ BitVec 32) ValueCell!16136)) (size!41621 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85145)

(declare-datatypes ((array!85147 0))(
  ( (array!85148 (arr!41071 (Array (_ BitVec 32) (_ BitVec 64))) (size!41622 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85147)

(assert (=> b!1286750 (= res!854749 (and (= (size!41621 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41622 _keys!1741) (size!41621 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286751 () Bool)

(declare-fun res!854746 () Bool)

(assert (=> b!1286751 (=> (not res!854746) (not e!734919))))

(declare-datatypes ((List!29283 0))(
  ( (Nil!29280) (Cons!29279 (h!30488 (_ BitVec 64)) (t!42852 List!29283)) )
))
(declare-fun arrayNoDuplicates!0 (array!85147 (_ BitVec 32) List!29283) Bool)

(assert (=> b!1286751 (= res!854746 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29280))))

(declare-fun bm!63054 () Bool)

(declare-fun call!63059 () Unit!42476)

(declare-fun call!63057 () Unit!42476)

(assert (=> bm!63054 (= call!63059 call!63057)))

(declare-fun minValue!1387 () V!50529)

(declare-fun zeroValue!1387 () V!50529)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun bm!63055 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6005 (array!85147 array!85145 (_ BitVec 32) (_ BitVec 32) V!50529 V!50529 (_ BitVec 32) Int) ListLongMap!19749)

(assert (=> bm!63055 (= call!63060 (getCurrentListMapNoExtraKeys!6005 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1286752 () Bool)

(declare-fun e!734923 () Bool)

(declare-fun e!734921 () Bool)

(declare-fun mapRes!52661 () Bool)

(assert (=> b!1286752 (= e!734923 (and e!734921 mapRes!52661))))

(declare-fun condMapEmpty!52661 () Bool)

(declare-fun mapDefault!52661 () ValueCell!16136)

