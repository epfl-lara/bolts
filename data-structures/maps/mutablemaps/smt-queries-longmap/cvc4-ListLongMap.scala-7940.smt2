; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98520 () Bool)

(assert start!98520)

(declare-fun b_free!24089 () Bool)

(declare-fun b_next!24089 () Bool)

(assert (=> start!98520 (= b_free!24089 (not b_next!24089))))

(declare-fun tp!84978 () Bool)

(declare-fun b_and!39041 () Bool)

(assert (=> start!98520 (= tp!84978 b_and!39041)))

(declare-fun b!1139205 () Bool)

(declare-datatypes ((Unit!37284 0))(
  ( (Unit!37285) )
))
(declare-fun e!648229 () Unit!37284)

(declare-fun e!648234 () Unit!37284)

(assert (=> b!1139205 (= e!648229 e!648234)))

(declare-fun c!111612 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!506954 () Bool)

(assert (=> b!1139205 (= c!111612 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506954))))

(declare-fun bm!50606 () Bool)

(declare-datatypes ((V!43285 0))(
  ( (V!43286 (val!14366 Int)) )
))
(declare-datatypes ((tuple2!18246 0))(
  ( (tuple2!18247 (_1!9133 (_ BitVec 64)) (_2!9133 V!43285)) )
))
(declare-datatypes ((List!25050 0))(
  ( (Nil!25047) (Cons!25046 (h!26255 tuple2!18246) (t!36138 List!25050)) )
))
(declare-datatypes ((ListLongMap!16227 0))(
  ( (ListLongMap!16228 (toList!8129 List!25050)) )
))
(declare-fun call!50613 () ListLongMap!16227)

(declare-fun call!50615 () ListLongMap!16227)

(assert (=> bm!50606 (= call!50613 call!50615)))

(declare-fun b!1139206 () Bool)

(declare-fun lt!506956 () Unit!37284)

(assert (=> b!1139206 (= e!648229 lt!506956)))

(declare-fun call!50616 () Unit!37284)

(assert (=> b!1139206 (= lt!506956 call!50616)))

(declare-fun call!50612 () Bool)

(assert (=> b!1139206 call!50612))

(declare-datatypes ((array!74056 0))(
  ( (array!74057 (arr!35675 (Array (_ BitVec 32) (_ BitVec 64))) (size!36212 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74056)

(declare-fun e!648222 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1139207 () Bool)

(declare-fun arrayContainsKey!0 (array!74056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139207 (= e!648222 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50607 () Bool)

(declare-fun call!50609 () Unit!37284)

(assert (=> bm!50607 (= call!50616 call!50609)))

(declare-fun zeroValue!944 () V!43285)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun call!50611 () ListLongMap!16227)

(declare-fun bm!50608 () Bool)

(declare-fun minValue!944 () V!43285)

(declare-datatypes ((ValueCell!13600 0))(
  ( (ValueCellFull!13600 (v!17004 V!43285)) (EmptyCell!13600) )
))
(declare-datatypes ((array!74058 0))(
  ( (array!74059 (arr!35676 (Array (_ BitVec 32) ValueCell!13600)) (size!36213 (_ BitVec 32))) )
))
(declare-fun lt!506960 () array!74058)

(declare-fun lt!506946 () array!74056)

(declare-fun getCurrentListMapNoExtraKeys!4576 (array!74056 array!74058 (_ BitVec 32) (_ BitVec 32) V!43285 V!43285 (_ BitVec 32) Int) ListLongMap!16227)

(assert (=> bm!50608 (= call!50611 (getCurrentListMapNoExtraKeys!4576 lt!506946 lt!506960 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!50610 () Bool)

(declare-fun c!111611 () Bool)

(declare-fun bm!50609 () Bool)

(declare-fun lt!506948 () ListLongMap!16227)

(declare-fun contains!6638 (ListLongMap!16227 (_ BitVec 64)) Bool)

(assert (=> bm!50609 (= call!50610 (contains!6638 (ite c!111611 lt!506948 call!50613) k!934))))

(declare-fun b!1139208 () Bool)

(declare-fun res!759882 () Bool)

(declare-fun e!648224 () Bool)

(assert (=> b!1139208 (=> (not res!759882) (not e!648224))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139208 (= res!759882 (= (select (arr!35675 _keys!1208) i!673) k!934))))

(declare-fun res!759885 () Bool)

(assert (=> start!98520 (=> (not res!759885) (not e!648224))))

(assert (=> start!98520 (= res!759885 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36212 _keys!1208))))))

(assert (=> start!98520 e!648224))

(declare-fun tp_is_empty!28619 () Bool)

(assert (=> start!98520 tp_is_empty!28619))

(declare-fun array_inv!27224 (array!74056) Bool)

(assert (=> start!98520 (array_inv!27224 _keys!1208)))

(assert (=> start!98520 true))

(assert (=> start!98520 tp!84978))

(declare-fun _values!996 () array!74058)

(declare-fun e!648219 () Bool)

(declare-fun array_inv!27225 (array!74058) Bool)

(assert (=> start!98520 (and (array_inv!27225 _values!996) e!648219)))

(declare-fun b!1139209 () Bool)

(declare-fun e!648226 () Bool)

(assert (=> b!1139209 (= e!648226 tp_is_empty!28619)))

(declare-fun b!1139210 () Bool)

(declare-fun e!648227 () Bool)

(assert (=> b!1139210 (= e!648227 true)))

(declare-fun lt!506961 () ListLongMap!16227)

(declare-fun lt!506944 () Bool)

(assert (=> b!1139210 (= lt!506944 (contains!6638 lt!506961 (select (arr!35675 _keys!1208) from!1455)))))

(declare-fun lt!506958 () Unit!37284)

(declare-fun e!648230 () Unit!37284)

(assert (=> b!1139210 (= lt!506958 e!648230)))

(declare-fun c!111610 () Bool)

(assert (=> b!1139210 (= c!111610 (contains!6638 lt!506961 k!934))))

(assert (=> b!1139210 (= lt!506961 (getCurrentListMapNoExtraKeys!4576 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139211 () Bool)

(declare-fun +!3479 (ListLongMap!16227 tuple2!18246) ListLongMap!16227)

(assert (=> b!1139211 (contains!6638 (+!3479 lt!506948 (tuple2!18247 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!506950 () Unit!37284)

(declare-fun addStillContains!780 (ListLongMap!16227 (_ BitVec 64) V!43285 (_ BitVec 64)) Unit!37284)

(assert (=> b!1139211 (= lt!506950 (addStillContains!780 lt!506948 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1139211 call!50610))

(assert (=> b!1139211 (= lt!506948 call!50615)))

(declare-fun lt!506943 () Unit!37284)

(assert (=> b!1139211 (= lt!506943 call!50609)))

(declare-fun e!648233 () Unit!37284)

(assert (=> b!1139211 (= e!648233 lt!506950)))

(declare-fun b!1139212 () Bool)

(declare-fun Unit!37286 () Unit!37284)

(assert (=> b!1139212 (= e!648230 Unit!37286)))

(assert (=> b!1139212 (= lt!506954 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1139212 (= c!111611 (and (not lt!506954) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506951 () Unit!37284)

(assert (=> b!1139212 (= lt!506951 e!648233)))

(declare-fun lt!506957 () Unit!37284)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!382 (array!74056 array!74058 (_ BitVec 32) (_ BitVec 32) V!43285 V!43285 (_ BitVec 64) (_ BitVec 32) Int) Unit!37284)

(assert (=> b!1139212 (= lt!506957 (lemmaListMapContainsThenArrayContainsFrom!382 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111607 () Bool)

(assert (=> b!1139212 (= c!111607 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759887 () Bool)

(assert (=> b!1139212 (= res!759887 e!648222)))

(declare-fun e!648225 () Bool)

(assert (=> b!1139212 (=> (not res!759887) (not e!648225))))

(assert (=> b!1139212 e!648225))

(declare-fun lt!506955 () Unit!37284)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74056 (_ BitVec 32) (_ BitVec 32)) Unit!37284)

(assert (=> b!1139212 (= lt!506955 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25051 0))(
  ( (Nil!25048) (Cons!25047 (h!26256 (_ BitVec 64)) (t!36139 List!25051)) )
))
(declare-fun arrayNoDuplicates!0 (array!74056 (_ BitVec 32) List!25051) Bool)

(assert (=> b!1139212 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25048)))

(declare-fun lt!506959 () Unit!37284)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74056 (_ BitVec 64) (_ BitVec 32) List!25051) Unit!37284)

(assert (=> b!1139212 (= lt!506959 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25048))))

(assert (=> b!1139212 false))

(declare-fun c!111609 () Bool)

(declare-fun bm!50610 () Bool)

(assert (=> bm!50610 (= call!50609 (addStillContains!780 lt!506961 (ite (or c!111611 c!111609) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111611 c!111609) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1139213 () Bool)

(assert (=> b!1139213 (= e!648222 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506954) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1139214 () Bool)

(declare-fun Unit!37287 () Unit!37284)

(assert (=> b!1139214 (= e!648234 Unit!37287)))

(declare-fun mapNonEmpty!44753 () Bool)

(declare-fun mapRes!44753 () Bool)

(declare-fun tp!84979 () Bool)

(assert (=> mapNonEmpty!44753 (= mapRes!44753 (and tp!84979 e!648226))))

(declare-fun mapKey!44753 () (_ BitVec 32))

(declare-fun mapValue!44753 () ValueCell!13600)

(declare-fun mapRest!44753 () (Array (_ BitVec 32) ValueCell!13600))

(assert (=> mapNonEmpty!44753 (= (arr!35676 _values!996) (store mapRest!44753 mapKey!44753 mapValue!44753))))

(declare-fun b!1139215 () Bool)

(declare-fun res!759877 () Bool)

(assert (=> b!1139215 (=> (not res!759877) (not e!648224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74056 (_ BitVec 32)) Bool)

(assert (=> b!1139215 (= res!759877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1139216 () Bool)

(declare-fun res!759879 () Bool)

(assert (=> b!1139216 (=> (not res!759879) (not e!648224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139216 (= res!759879 (validKeyInArray!0 k!934))))

(declare-fun b!1139217 () Bool)

(declare-fun res!759884 () Bool)

(assert (=> b!1139217 (=> (not res!759884) (not e!648224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1139217 (= res!759884 (validMask!0 mask!1564))))

(declare-fun bm!50611 () Bool)

(assert (=> bm!50611 (= call!50612 call!50610)))

(declare-fun mapIsEmpty!44753 () Bool)

(assert (=> mapIsEmpty!44753 mapRes!44753))

(declare-fun b!1139218 () Bool)

(declare-fun Unit!37288 () Unit!37284)

(assert (=> b!1139218 (= e!648230 Unit!37288)))

(declare-fun b!1139219 () Bool)

(declare-fun e!648221 () Bool)

(declare-fun e!648220 () Bool)

(assert (=> b!1139219 (= e!648221 e!648220)))

(declare-fun res!759878 () Bool)

(assert (=> b!1139219 (=> res!759878 e!648220)))

(assert (=> b!1139219 (= res!759878 (not (= from!1455 i!673)))))

(declare-fun lt!506952 () ListLongMap!16227)

(assert (=> b!1139219 (= lt!506952 (getCurrentListMapNoExtraKeys!4576 lt!506946 lt!506960 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2633 (Int (_ BitVec 64)) V!43285)

(assert (=> b!1139219 (= lt!506960 (array!74059 (store (arr!35676 _values!996) i!673 (ValueCellFull!13600 (dynLambda!2633 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36213 _values!996)))))

(declare-fun lt!506947 () ListLongMap!16227)

(assert (=> b!1139219 (= lt!506947 (getCurrentListMapNoExtraKeys!4576 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1139220 () Bool)

(declare-fun e!648232 () Bool)

(declare-fun call!50614 () ListLongMap!16227)

(declare-fun -!1232 (ListLongMap!16227 (_ BitVec 64)) ListLongMap!16227)

(assert (=> b!1139220 (= e!648232 (= call!50611 (-!1232 call!50614 k!934)))))

(declare-fun b!1139221 () Bool)

(assert (=> b!1139221 (= c!111609 (and (not lt!506954) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1139221 (= e!648233 e!648229)))

(declare-fun b!1139222 () Bool)

(assert (=> b!1139222 (= e!648232 (= call!50611 call!50614))))

(declare-fun b!1139223 () Bool)

(declare-fun e!648231 () Bool)

(assert (=> b!1139223 (= e!648231 tp_is_empty!28619)))

(declare-fun b!1139224 () Bool)

(declare-fun res!759890 () Bool)

(assert (=> b!1139224 (=> (not res!759890) (not e!648224))))

(assert (=> b!1139224 (= res!759890 (and (= (size!36213 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36212 _keys!1208) (size!36213 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1139225 () Bool)

(declare-fun e!648228 () Bool)

(assert (=> b!1139225 (= e!648224 e!648228)))

(declare-fun res!759881 () Bool)

(assert (=> b!1139225 (=> (not res!759881) (not e!648228))))

(assert (=> b!1139225 (= res!759881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506946 mask!1564))))

(assert (=> b!1139225 (= lt!506946 (array!74057 (store (arr!35675 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36212 _keys!1208)))))

(declare-fun b!1139226 () Bool)

(declare-fun res!759888 () Bool)

(assert (=> b!1139226 (=> (not res!759888) (not e!648228))))

(assert (=> b!1139226 (= res!759888 (arrayNoDuplicates!0 lt!506946 #b00000000000000000000000000000000 Nil!25048))))

(declare-fun b!1139227 () Bool)

(assert (=> b!1139227 (= e!648225 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1139228 () Bool)

(assert (=> b!1139228 (= e!648228 (not e!648221))))

(declare-fun res!759883 () Bool)

(assert (=> b!1139228 (=> res!759883 e!648221)))

(assert (=> b!1139228 (= res!759883 (bvsgt from!1455 i!673))))

(assert (=> b!1139228 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!506953 () Unit!37284)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74056 (_ BitVec 64) (_ BitVec 32)) Unit!37284)

(assert (=> b!1139228 (= lt!506953 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1139229 () Bool)

(declare-fun res!759880 () Bool)

(assert (=> b!1139229 (=> (not res!759880) (not e!648224))))

(assert (=> b!1139229 (= res!759880 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25048))))

(declare-fun bm!50612 () Bool)

(assert (=> bm!50612 (= call!50615 (+!3479 lt!506961 (ite (or c!111611 c!111609) (tuple2!18247 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18247 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1139230 () Bool)

(assert (=> b!1139230 call!50612))

(declare-fun lt!506949 () Unit!37284)

(assert (=> b!1139230 (= lt!506949 call!50616)))

(assert (=> b!1139230 (= e!648234 lt!506949)))

(declare-fun b!1139231 () Bool)

(declare-fun res!759886 () Bool)

(assert (=> b!1139231 (=> (not res!759886) (not e!648224))))

(assert (=> b!1139231 (= res!759886 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36212 _keys!1208))))))

(declare-fun b!1139232 () Bool)

(assert (=> b!1139232 (= e!648220 e!648227)))

(declare-fun res!759889 () Bool)

(assert (=> b!1139232 (=> res!759889 e!648227)))

(assert (=> b!1139232 (= res!759889 (not (= (select (arr!35675 _keys!1208) from!1455) k!934)))))

(assert (=> b!1139232 e!648232))

(declare-fun c!111608 () Bool)

(assert (=> b!1139232 (= c!111608 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506945 () Unit!37284)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!489 (array!74056 array!74058 (_ BitVec 32) (_ BitVec 32) V!43285 V!43285 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37284)

(assert (=> b!1139232 (= lt!506945 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!489 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50613 () Bool)

(assert (=> bm!50613 (= call!50614 (getCurrentListMapNoExtraKeys!4576 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139233 () Bool)

(assert (=> b!1139233 (= e!648219 (and e!648231 mapRes!44753))))

(declare-fun condMapEmpty!44753 () Bool)

(declare-fun mapDefault!44753 () ValueCell!13600)

