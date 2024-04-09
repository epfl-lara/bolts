; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109312 () Bool)

(assert start!109312)

(declare-fun b_free!28765 () Bool)

(declare-fun b_next!28765 () Bool)

(assert (=> start!109312 (= b_free!28765 (not b_next!28765))))

(declare-fun tp!101415 () Bool)

(declare-fun b_and!46865 () Bool)

(assert (=> start!109312 (= tp!101415 b_and!46865)))

(declare-fun b!1292874 () Bool)

(declare-fun e!737916 () Bool)

(assert (=> b!1292874 (= e!737916 true)))

(declare-datatypes ((V!50977 0))(
  ( (V!50978 (val!17277 Int)) )
))
(declare-datatypes ((tuple2!22368 0))(
  ( (tuple2!22369 (_1!11194 (_ BitVec 64)) (_2!11194 V!50977)) )
))
(declare-datatypes ((List!29553 0))(
  ( (Nil!29550) (Cons!29549 (h!30758 tuple2!22368) (t!43124 List!29553)) )
))
(declare-datatypes ((ListLongMap!20037 0))(
  ( (ListLongMap!20038 (toList!10034 List!29553)) )
))
(declare-fun lt!579369 () ListLongMap!20037)

(declare-fun zeroValue!1387 () V!50977)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8090 (ListLongMap!20037 (_ BitVec 64)) Bool)

(declare-fun +!4367 (ListLongMap!20037 tuple2!22368) ListLongMap!20037)

(assert (=> b!1292874 (not (contains!8090 (+!4367 lt!579369 (tuple2!22369 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42747 0))(
  ( (Unit!42748) )
))
(declare-fun lt!579370 () Unit!42747)

(declare-fun addStillNotContains!412 (ListLongMap!20037 (_ BitVec 64) V!50977 (_ BitVec 64)) Unit!42747)

(assert (=> b!1292874 (= lt!579370 (addStillNotContains!412 lt!579369 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50977)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16304 0))(
  ( (ValueCellFull!16304 (v!19878 V!50977)) (EmptyCell!16304) )
))
(declare-datatypes ((array!85799 0))(
  ( (array!85800 (arr!41396 (Array (_ BitVec 32) ValueCell!16304)) (size!41947 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85799)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((array!85801 0))(
  ( (array!85802 (arr!41397 (Array (_ BitVec 32) (_ BitVec 64))) (size!41948 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85801)

(declare-fun getCurrentListMapNoExtraKeys!6080 (array!85801 array!85799 (_ BitVec 32) (_ BitVec 32) V!50977 V!50977 (_ BitVec 32) Int) ListLongMap!20037)

(assert (=> b!1292874 (= lt!579369 (getCurrentListMapNoExtraKeys!6080 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1292875 () Bool)

(declare-fun res!859168 () Bool)

(declare-fun e!737915 () Bool)

(assert (=> b!1292875 (=> (not res!859168) (not e!737915))))

(assert (=> b!1292875 (= res!859168 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41948 _keys!1741))))))

(declare-fun b!1292876 () Bool)

(assert (=> b!1292876 (= e!737915 (not e!737916))))

(declare-fun res!859176 () Bool)

(assert (=> b!1292876 (=> res!859176 e!737916)))

(assert (=> b!1292876 (= res!859176 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1292876 (not (contains!8090 (ListLongMap!20038 Nil!29550) k!1205))))

(declare-fun lt!579368 () Unit!42747)

(declare-fun emptyContainsNothing!130 ((_ BitVec 64)) Unit!42747)

(assert (=> b!1292876 (= lt!579368 (emptyContainsNothing!130 k!1205))))

(declare-fun b!1292877 () Bool)

(declare-fun e!737918 () Bool)

(declare-fun e!737920 () Bool)

(declare-fun mapRes!53168 () Bool)

(assert (=> b!1292877 (= e!737918 (and e!737920 mapRes!53168))))

(declare-fun condMapEmpty!53168 () Bool)

(declare-fun mapDefault!53168 () ValueCell!16304)

