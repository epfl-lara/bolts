; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109498 () Bool)

(assert start!109498)

(declare-fun b_free!28951 () Bool)

(declare-fun b_next!28951 () Bool)

(assert (=> start!109498 (= b_free!28951 (not b_next!28951))))

(declare-fun tp!101973 () Bool)

(declare-fun b_and!47051 () Bool)

(assert (=> start!109498 (= tp!101973 b_and!47051)))

(declare-fun c!124312 () Bool)

(declare-fun c!124311 () Bool)

(declare-datatypes ((V!51225 0))(
  ( (V!51226 (val!17370 Int)) )
))
(declare-datatypes ((tuple2!22522 0))(
  ( (tuple2!22523 (_1!11271 (_ BitVec 64)) (_2!11271 V!51225)) )
))
(declare-datatypes ((List!29690 0))(
  ( (Nil!29687) (Cons!29686 (h!30895 tuple2!22522) (t!43261 List!29690)) )
))
(declare-datatypes ((ListLongMap!20191 0))(
  ( (ListLongMap!20192 (toList!10111 List!29690)) )
))
(declare-fun lt!580178 () ListLongMap!20191)

(declare-fun bm!63311 () Bool)

(declare-fun lt!580191 () ListLongMap!20191)

(declare-fun lt!580189 () ListLongMap!20191)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun call!63317 () Bool)

(declare-fun contains!8166 (ListLongMap!20191 (_ BitVec 64)) Bool)

(assert (=> bm!63311 (= call!63317 (contains!8166 (ite c!124311 lt!580191 (ite c!124312 lt!580178 lt!580189)) k!1205))))

(declare-fun bm!63312 () Bool)

(declare-datatypes ((Unit!42887 0))(
  ( (Unit!42888) )
))
(declare-fun call!63325 () Unit!42887)

(declare-fun call!63323 () Unit!42887)

(assert (=> bm!63312 (= call!63325 call!63323)))

(declare-fun bm!63313 () Bool)

(declare-fun call!63315 () ListLongMap!20191)

(declare-fun call!63321 () ListLongMap!20191)

(assert (=> bm!63313 (= call!63315 call!63321)))

(declare-fun b!1296196 () Bool)

(declare-fun res!861593 () Bool)

(declare-fun e!739536 () Bool)

(assert (=> b!1296196 (=> (not res!861593) (not e!739536))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16397 0))(
  ( (ValueCellFull!16397 (v!19971 V!51225)) (EmptyCell!16397) )
))
(declare-datatypes ((array!86161 0))(
  ( (array!86162 (arr!41577 (Array (_ BitVec 32) ValueCell!16397)) (size!42128 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86161)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86163 0))(
  ( (array!86164 (arr!41578 (Array (_ BitVec 32) (_ BitVec 64))) (size!42129 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86163)

(assert (=> b!1296196 (= res!861593 (and (= (size!42128 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42129 _keys!1741) (size!42128 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296197 () Bool)

(declare-fun e!739537 () Bool)

(declare-fun tp_is_empty!34591 () Bool)

(assert (=> b!1296197 (= e!739537 tp_is_empty!34591)))

(declare-fun minValue!1387 () V!51225)

(declare-fun bm!63314 () Bool)

(declare-fun call!63319 () Unit!42887)

(declare-fun zeroValue!1387 () V!51225)

(declare-fun addStillNotContains!456 (ListLongMap!20191 (_ BitVec 64) V!51225 (_ BitVec 64)) Unit!42887)

(assert (=> bm!63314 (= call!63319 (addStillNotContains!456 (ite c!124311 lt!580191 (ite c!124312 lt!580178 lt!580189)) (ite c!124311 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124312 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124311 minValue!1387 (ite c!124312 zeroValue!1387 minValue!1387)) k!1205))))

(declare-fun b!1296198 () Bool)

(declare-fun res!861588 () Bool)

(assert (=> b!1296198 (=> (not res!861588) (not e!739536))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5088 (array!86163 array!86161 (_ BitVec 32) (_ BitVec 32) V!51225 V!51225 (_ BitVec 32) Int) ListLongMap!20191)

(assert (=> b!1296198 (= res!861588 (contains!8166 (getCurrentListMap!5088 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1296199 () Bool)

(declare-fun e!739533 () Unit!42887)

(declare-fun lt!580177 () Unit!42887)

(assert (=> b!1296199 (= e!739533 lt!580177)))

(assert (=> b!1296199 (= lt!580189 call!63315)))

(declare-fun lt!580192 () Unit!42887)

(declare-fun call!63314 () Unit!42887)

(assert (=> b!1296199 (= lt!580192 call!63314)))

(declare-fun call!63316 () Bool)

(assert (=> b!1296199 (not call!63316)))

(assert (=> b!1296199 (= lt!580177 call!63325)))

(declare-fun call!63318 () Bool)

(assert (=> b!1296199 call!63318))

(declare-fun b!1296200 () Bool)

(declare-fun e!739531 () Bool)

(declare-fun e!739530 () Bool)

(declare-fun mapRes!53447 () Bool)

(assert (=> b!1296200 (= e!739531 (and e!739530 mapRes!53447))))

(declare-fun condMapEmpty!53447 () Bool)

(declare-fun mapDefault!53447 () ValueCell!16397)

