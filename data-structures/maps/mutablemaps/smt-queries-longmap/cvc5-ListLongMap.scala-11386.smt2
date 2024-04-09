; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132338 () Bool)

(assert start!132338)

(declare-fun b_free!31933 () Bool)

(declare-fun b_next!31933 () Bool)

(assert (=> start!132338 (= b_free!31933 (not b_next!31933))))

(declare-fun tp!112064 () Bool)

(declare-fun b_and!51381 () Bool)

(assert (=> start!132338 (= tp!112064 b_and!51381)))

(declare-fun b!1552347 () Bool)

(declare-datatypes ((Unit!51639 0))(
  ( (Unit!51640) )
))
(declare-fun e!864232 () Unit!51639)

(declare-fun lt!669221 () Unit!51639)

(assert (=> b!1552347 (= e!864232 lt!669221)))

(declare-datatypes ((array!103577 0))(
  ( (array!103578 (arr!49982 (Array (_ BitVec 32) (_ BitVec 64))) (size!50533 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103577)

(declare-datatypes ((V!59389 0))(
  ( (V!59390 (val!19182 Int)) )
))
(declare-fun zeroValue!436 () V!59389)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18194 0))(
  ( (ValueCellFull!18194 (v!21984 V!59389)) (EmptyCell!18194) )
))
(declare-datatypes ((array!103579 0))(
  ( (array!103580 (arr!49983 (Array (_ BitVec 32) ValueCell!18194)) (size!50534 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103579)

(declare-fun minValue!436 () V!59389)

(declare-datatypes ((tuple2!24880 0))(
  ( (tuple2!24881 (_1!12450 (_ BitVec 64)) (_2!12450 V!59389)) )
))
(declare-datatypes ((List!36359 0))(
  ( (Nil!36356) (Cons!36355 (h!37801 tuple2!24880) (t!51082 List!36359)) )
))
(declare-datatypes ((ListLongMap!22501 0))(
  ( (ListLongMap!22502 (toList!11266 List!36359)) )
))
(declare-fun lt!669223 () ListLongMap!22501)

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6689 (array!103577 array!103579 (_ BitVec 32) (_ BitVec 32) V!59389 V!59389 (_ BitVec 32) Int) ListLongMap!22501)

(assert (=> b!1552347 (= lt!669223 (getCurrentListMapNoExtraKeys!6689 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669220 () Unit!51639)

(declare-fun addStillContains!1307 (ListLongMap!22501 (_ BitVec 64) V!59389 (_ BitVec 64)) Unit!51639)

(assert (=> b!1552347 (= lt!669220 (addStillContains!1307 lt!669223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49982 _keys!618) from!762)))))

(declare-fun lt!669227 () ListLongMap!22501)

(declare-fun +!4972 (ListLongMap!22501 tuple2!24880) ListLongMap!22501)

(assert (=> b!1552347 (= lt!669227 (+!4972 lt!669223 (tuple2!24881 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun contains!10136 (ListLongMap!22501 (_ BitVec 64)) Bool)

(assert (=> b!1552347 (contains!10136 lt!669227 (select (arr!49982 _keys!618) from!762))))

(declare-fun addApplyDifferent!640 (ListLongMap!22501 (_ BitVec 64) V!59389 (_ BitVec 64)) Unit!51639)

(assert (=> b!1552347 (= lt!669221 (addApplyDifferent!640 lt!669223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49982 _keys!618) from!762)))))

(declare-fun lt!669228 () V!59389)

(declare-fun apply!1139 (ListLongMap!22501 (_ BitVec 64)) V!59389)

(assert (=> b!1552347 (= lt!669228 (apply!1139 (+!4972 lt!669223 (tuple2!24881 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49982 _keys!618) from!762)))))

(declare-fun lt!669218 () V!59389)

(assert (=> b!1552347 (= lt!669218 (apply!1139 lt!669223 (select (arr!49982 _keys!618) from!762)))))

(assert (=> b!1552347 (= lt!669228 lt!669218)))

(declare-fun lt!669222 () Unit!51639)

(assert (=> b!1552347 (= lt!669222 (addApplyDifferent!640 lt!669223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49982 _keys!618) from!762)))))

(assert (=> b!1552347 (= (apply!1139 lt!669227 (select (arr!49982 _keys!618) from!762)) lt!669218)))

(declare-fun b!1552348 () Bool)

(declare-fun res!1062874 () Bool)

(declare-fun e!864223 () Bool)

(assert (=> b!1552348 (=> (not res!1062874) (not e!864223))))

(declare-datatypes ((List!36360 0))(
  ( (Nil!36357) (Cons!36356 (h!37802 (_ BitVec 64)) (t!51083 List!36360)) )
))
(declare-fun arrayNoDuplicates!0 (array!103577 (_ BitVec 32) List!36360) Bool)

(assert (=> b!1552348 (= res!1062874 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36357))))

(declare-fun b!1552349 () Bool)

(declare-fun e!864220 () Bool)

(declare-fun e!864217 () Bool)

(assert (=> b!1552349 (= e!864220 e!864217)))

(declare-fun res!1062871 () Bool)

(assert (=> b!1552349 (=> res!1062871 e!864217)))

(declare-fun lt!669224 () ListLongMap!22501)

(assert (=> b!1552349 (= res!1062871 (not (contains!10136 lt!669224 (select (arr!49982 _keys!618) from!762))))))

(declare-fun bm!71268 () Bool)

(declare-fun call!71272 () Bool)

(assert (=> bm!71268 (= call!71272 (contains!10136 lt!669224 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1552350 () Bool)

(declare-fun res!1062877 () Bool)

(assert (=> b!1552350 (=> (not res!1062877) (not e!864223))))

(assert (=> b!1552350 (= res!1062877 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50533 _keys!618))))))

(declare-fun b!1552351 () Bool)

(declare-fun Unit!51641 () Unit!51639)

(assert (=> b!1552351 (= e!864232 Unit!51641)))

(declare-fun b!1552352 () Bool)

(declare-fun e!864224 () Bool)

(declare-fun e!864225 () Bool)

(assert (=> b!1552352 (= e!864224 e!864225)))

(declare-fun res!1062869 () Bool)

(declare-fun call!71273 () Bool)

(assert (=> b!1552352 (= res!1062869 (not call!71273))))

(assert (=> b!1552352 (=> res!1062869 e!864225)))

(declare-fun res!1062879 () Bool)

(assert (=> start!132338 (=> (not res!1062879) (not e!864223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132338 (= res!1062879 (validMask!0 mask!926))))

(assert (=> start!132338 e!864223))

(declare-fun array_inv!38779 (array!103577) Bool)

(assert (=> start!132338 (array_inv!38779 _keys!618)))

(declare-fun tp_is_empty!38209 () Bool)

(assert (=> start!132338 tp_is_empty!38209))

(assert (=> start!132338 true))

(assert (=> start!132338 tp!112064))

(declare-fun e!864219 () Bool)

(declare-fun array_inv!38780 (array!103579) Bool)

(assert (=> start!132338 (and (array_inv!38780 _values!470) e!864219)))

(declare-fun bm!71269 () Bool)

(assert (=> bm!71269 (= call!71273 (contains!10136 lt!669224 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!71270 () Bool)

(declare-fun call!71277 () ListLongMap!22501)

(assert (=> bm!71270 (= call!71277 (getCurrentListMapNoExtraKeys!6689 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!71271 () Bool)

(declare-fun call!71276 () ListLongMap!22501)

(declare-fun call!71275 () ListLongMap!22501)

(assert (=> bm!71271 (= call!71276 call!71275)))

(declare-fun b!1552353 () Bool)

(declare-fun e!864230 () Bool)

(assert (=> b!1552353 (= e!864230 (not (= (apply!1139 lt!669224 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!436)))))

(declare-fun b!1552354 () Bool)

(declare-fun e!864233 () ListLongMap!22501)

(declare-fun call!71274 () ListLongMap!22501)

(assert (=> b!1552354 (= e!864233 call!71274)))

(declare-fun b!1552355 () Bool)

(declare-fun e!864229 () Bool)

(assert (=> b!1552355 (= e!864223 e!864229)))

(declare-fun res!1062868 () Bool)

(assert (=> b!1552355 (=> res!1062868 e!864229)))

(assert (=> b!1552355 (= res!1062868 e!864220)))

(declare-fun res!1062872 () Bool)

(assert (=> b!1552355 (=> (not res!1062872) (not e!864220))))

(declare-fun lt!669219 () Bool)

(assert (=> b!1552355 (= res!1062872 (not lt!669219))))

(declare-fun lt!669225 () Unit!51639)

(assert (=> b!1552355 (= lt!669225 e!864232)))

(declare-fun c!142928 () Bool)

(assert (=> b!1552355 (= c!142928 (not lt!669219))))

(declare-fun e!864218 () Bool)

(assert (=> b!1552355 (= lt!669219 e!864218)))

(declare-fun res!1062875 () Bool)

(assert (=> b!1552355 (=> res!1062875 e!864218)))

(assert (=> b!1552355 (= res!1062875 (bvsge from!762 (size!50533 _keys!618)))))

(declare-fun e!864227 () ListLongMap!22501)

(assert (=> b!1552355 (= lt!669224 e!864227)))

(declare-fun c!142927 () Bool)

(declare-fun lt!669226 () Bool)

(assert (=> b!1552355 (= c!142927 (and (not lt!669226) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552355 (= lt!669226 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!71272 () Bool)

(declare-fun call!71271 () ListLongMap!22501)

(assert (=> bm!71272 (= call!71274 call!71271)))

(declare-fun b!1552356 () Bool)

(assert (=> b!1552356 (= e!864224 call!71273)))

(declare-fun mapIsEmpty!59029 () Bool)

(declare-fun mapRes!59029 () Bool)

(assert (=> mapIsEmpty!59029 mapRes!59029))

(declare-fun b!1552357 () Bool)

(declare-fun c!142930 () Bool)

(assert (=> b!1552357 (= c!142930 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669226))))

(declare-fun e!864222 () ListLongMap!22501)

(assert (=> b!1552357 (= e!864222 e!864233)))

(declare-fun b!1552358 () Bool)

(declare-fun e!864221 () Bool)

(assert (=> b!1552358 (= e!864219 (and e!864221 mapRes!59029))))

(declare-fun condMapEmpty!59029 () Bool)

(declare-fun mapDefault!59029 () ValueCell!18194)

