; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110298 () Bool)

(assert start!110298)

(declare-fun b_free!29309 () Bool)

(declare-fun b_next!29309 () Bool)

(assert (=> start!110298 (= b_free!29309 (not b_next!29309))))

(declare-fun tp!103092 () Bool)

(declare-fun b_and!47515 () Bool)

(assert (=> start!110298 (= tp!103092 b_and!47515)))

(declare-fun b!1305182 () Bool)

(declare-fun c!125308 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!584270 () Bool)

(assert (=> b!1305182 (= c!125308 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!584270))))

(declare-datatypes ((Unit!43178 0))(
  ( (Unit!43179) )
))
(declare-fun e!744506 () Unit!43178)

(declare-fun e!744508 () Unit!43178)

(assert (=> b!1305182 (= e!744506 e!744508)))

(declare-fun bm!64422 () Bool)

(declare-fun call!64435 () Bool)

(declare-fun call!64436 () Bool)

(assert (=> bm!64422 (= call!64435 call!64436)))

(declare-fun b!1305183 () Bool)

(declare-fun e!744510 () Bool)

(declare-fun tp_is_empty!34949 () Bool)

(assert (=> b!1305183 (= e!744510 tp_is_empty!34949)))

(declare-datatypes ((V!51701 0))(
  ( (V!51702 (val!17549 Int)) )
))
(declare-datatypes ((tuple2!22812 0))(
  ( (tuple2!22813 (_1!11416 (_ BitVec 64)) (_2!11416 V!51701)) )
))
(declare-datatypes ((List!29960 0))(
  ( (Nil!29957) (Cons!29956 (h!31165 tuple2!22812) (t!43569 List!29960)) )
))
(declare-datatypes ((ListLongMap!20481 0))(
  ( (ListLongMap!20482 (toList!10256 List!29960)) )
))
(declare-fun lt!584267 () ListLongMap!20481)

(declare-fun c!125306 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun call!64425 () ListLongMap!20481)

(declare-fun bm!64423 () Bool)

(declare-fun contains!8335 (ListLongMap!20481 (_ BitVec 64)) Bool)

(assert (=> bm!64423 (= call!64436 (contains!8335 (ite c!125306 lt!584267 call!64425) k!1205))))

(declare-fun bm!64424 () Bool)

(declare-fun call!64427 () ListLongMap!20481)

(declare-fun call!64431 () ListLongMap!20481)

(assert (=> bm!64424 (= call!64427 call!64431)))

(declare-fun b!1305184 () Bool)

(declare-fun e!744513 () Bool)

(assert (=> b!1305184 (= e!744513 (not false))))

(declare-fun lt!584271 () Unit!43178)

(declare-fun e!744512 () Unit!43178)

(assert (=> b!1305184 (= lt!584271 e!744512)))

(assert (=> b!1305184 (= c!125306 (and (not lt!584270) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1305184 (= lt!584270 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1305184 (not (contains!8335 (ListLongMap!20482 Nil!29957) k!1205))))

(declare-fun lt!584274 () Unit!43178)

(declare-fun emptyContainsNothing!236 ((_ BitVec 64)) Unit!43178)

(assert (=> b!1305184 (= lt!584274 (emptyContainsNothing!236 k!1205))))

(declare-fun b!1305185 () Bool)

(declare-fun res!866799 () Bool)

(assert (=> b!1305185 (=> (not res!866799) (not e!744513))))

(declare-datatypes ((array!86879 0))(
  ( (array!86880 (arr!41922 (Array (_ BitVec 32) (_ BitVec 64))) (size!42473 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86879)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1305185 (= res!866799 (not (validKeyInArray!0 (select (arr!41922 _keys!1741) from!2144))))))

(declare-fun zeroValue!1387 () V!51701)

(declare-fun call!64433 () Unit!43178)

(declare-fun bm!64425 () Bool)

(declare-fun c!125307 () Bool)

(declare-fun lt!584266 () ListLongMap!20481)

(declare-fun lt!584277 () ListLongMap!20481)

(declare-fun minValue!1387 () V!51701)

(declare-fun addStillNotContains!497 (ListLongMap!20481 (_ BitVec 64) V!51701 (_ BitVec 64)) Unit!43178)

(assert (=> bm!64425 (= call!64433 (addStillNotContains!497 (ite c!125306 lt!584267 (ite c!125307 lt!584277 lt!584266)) (ite (or c!125306 c!125307) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125306 c!125307) zeroValue!1387 minValue!1387) k!1205))))

(declare-fun mapIsEmpty!54030 () Bool)

(declare-fun mapRes!54030 () Bool)

(assert (=> mapIsEmpty!54030 mapRes!54030))

(declare-fun bm!64426 () Bool)

(declare-fun call!64430 () Unit!43178)

(declare-fun call!64432 () Unit!43178)

(assert (=> bm!64426 (= call!64430 call!64432)))

(declare-fun call!64428 () ListLongMap!20481)

(declare-fun bm!64427 () Bool)

(declare-fun +!4473 (ListLongMap!20481 tuple2!22812) ListLongMap!20481)

(assert (=> bm!64427 (= call!64428 (+!4473 (ite c!125306 lt!584267 (ite c!125307 lt!584277 lt!584266)) (ite (or c!125306 c!125307) (tuple2!22813 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22813 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1305186 () Bool)

(declare-fun res!866798 () Bool)

(assert (=> b!1305186 (=> (not res!866798) (not e!744513))))

(assert (=> b!1305186 (= res!866798 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42473 _keys!1741))))))

(declare-datatypes ((ValueCell!16576 0))(
  ( (ValueCellFull!16576 (v!20169 V!51701)) (EmptyCell!16576) )
))
(declare-datatypes ((array!86881 0))(
  ( (array!86882 (arr!41923 (Array (_ BitVec 32) ValueCell!16576)) (size!42474 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86881)

(declare-fun bm!64428 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6190 (array!86879 array!86881 (_ BitVec 32) (_ BitVec 32) V!51701 V!51701 (_ BitVec 32) Int) ListLongMap!20481)

(assert (=> bm!64428 (= call!64431 (getCurrentListMapNoExtraKeys!6190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1305187 () Bool)

(declare-fun res!866797 () Bool)

(assert (=> b!1305187 (=> (not res!866797) (not e!744513))))

(assert (=> b!1305187 (= res!866797 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42473 _keys!1741))))))

(declare-fun res!866796 () Bool)

(assert (=> start!110298 (=> (not res!866796) (not e!744513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110298 (= res!866796 (validMask!0 mask!2175))))

(assert (=> start!110298 e!744513))

(assert (=> start!110298 tp_is_empty!34949))

(assert (=> start!110298 true))

(declare-fun e!744507 () Bool)

(declare-fun array_inv!31701 (array!86881) Bool)

(assert (=> start!110298 (and (array_inv!31701 _values!1445) e!744507)))

(declare-fun array_inv!31702 (array!86879) Bool)

(assert (=> start!110298 (array_inv!31702 _keys!1741)))

(assert (=> start!110298 tp!103092))

(declare-fun bm!64429 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!93 ((_ BitVec 64) (_ BitVec 64) V!51701 ListLongMap!20481) Unit!43178)

(assert (=> bm!64429 (= call!64432 (lemmaInListMapAfterAddingDiffThenInBefore!93 k!1205 (ite (or c!125306 c!125307) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125306 c!125307) zeroValue!1387 minValue!1387) (ite c!125306 lt!584267 (ite c!125307 lt!584277 lt!584266))))))

(declare-fun lt!584272 () ListLongMap!20481)

(declare-fun call!64426 () Bool)

(declare-fun bm!64430 () Bool)

(assert (=> bm!64430 (= call!64426 (contains!8335 (ite c!125306 lt!584272 (ite c!125307 lt!584277 lt!584266)) k!1205))))

(declare-fun b!1305188 () Bool)

(declare-fun Unit!43180 () Unit!43178)

(assert (=> b!1305188 (= e!744508 Unit!43180)))

(declare-fun b!1305189 () Bool)

(assert (=> b!1305189 (= e!744507 (and e!744510 mapRes!54030))))

(declare-fun condMapEmpty!54030 () Bool)

(declare-fun mapDefault!54030 () ValueCell!16576)

