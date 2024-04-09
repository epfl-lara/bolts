; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98742 () Bool)

(assert start!98742)

(declare-fun b_free!24311 () Bool)

(declare-fun b_next!24311 () Bool)

(assert (=> start!98742 (= b_free!24311 (not b_next!24311))))

(declare-fun tp!85645 () Bool)

(declare-fun b_and!39485 () Bool)

(assert (=> start!98742 (= tp!85645 b_and!39485)))

(declare-fun b!1149254 () Bool)

(declare-fun res!764712 () Bool)

(declare-fun e!653724 () Bool)

(assert (=> b!1149254 (=> (not res!764712) (not e!653724))))

(declare-datatypes ((array!74486 0))(
  ( (array!74487 (arr!35890 (Array (_ BitVec 32) (_ BitVec 64))) (size!36427 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74486)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43581 0))(
  ( (V!43582 (val!14477 Int)) )
))
(declare-datatypes ((ValueCell!13711 0))(
  ( (ValueCellFull!13711 (v!17115 V!43581)) (EmptyCell!13711) )
))
(declare-datatypes ((array!74488 0))(
  ( (array!74489 (arr!35891 (Array (_ BitVec 32) ValueCell!13711)) (size!36428 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74488)

(assert (=> b!1149254 (= res!764712 (and (= (size!36428 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36427 _keys!1208) (size!36428 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1149255 () Bool)

(declare-fun e!653726 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1149255 (= e!653726 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149256 () Bool)

(declare-fun e!653720 () Bool)

(assert (=> b!1149256 (= e!653724 e!653720)))

(declare-fun res!764715 () Bool)

(assert (=> b!1149256 (=> (not res!764715) (not e!653720))))

(declare-fun lt!513958 () array!74486)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74486 (_ BitVec 32)) Bool)

(assert (=> b!1149256 (= res!764715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513958 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1149256 (= lt!513958 (array!74487 (store (arr!35890 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36427 _keys!1208)))))

(declare-fun bm!53270 () Bool)

(declare-fun call!53274 () Bool)

(declare-fun call!53276 () Bool)

(assert (=> bm!53270 (= call!53274 call!53276)))

(declare-fun bm!53271 () Bool)

(declare-datatypes ((tuple2!18446 0))(
  ( (tuple2!18447 (_1!9233 (_ BitVec 64)) (_2!9233 V!43581)) )
))
(declare-datatypes ((List!25239 0))(
  ( (Nil!25236) (Cons!25235 (h!26444 tuple2!18446) (t!36549 List!25239)) )
))
(declare-datatypes ((ListLongMap!16427 0))(
  ( (ListLongMap!16428 (toList!8229 List!25239)) )
))
(declare-fun call!53278 () ListLongMap!16427)

(declare-fun call!53275 () ListLongMap!16427)

(assert (=> bm!53271 (= call!53278 call!53275)))

(declare-fun b!1149258 () Bool)

(declare-fun e!653725 () Bool)

(declare-fun tp_is_empty!28841 () Bool)

(assert (=> b!1149258 (= e!653725 tp_is_empty!28841)))

(declare-fun bm!53272 () Bool)

(declare-fun lt!513949 () ListLongMap!16427)

(declare-fun c!113609 () Bool)

(declare-fun contains!6724 (ListLongMap!16427 (_ BitVec 64)) Bool)

(assert (=> bm!53272 (= call!53276 (contains!6724 (ite c!113609 lt!513949 call!53278) k!934))))

(declare-fun b!1149259 () Bool)

(declare-fun e!653718 () Bool)

(assert (=> b!1149259 (= e!653718 true)))

(declare-fun e!653719 () Bool)

(assert (=> b!1149259 e!653719))

(declare-fun res!764714 () Bool)

(assert (=> b!1149259 (=> (not res!764714) (not e!653719))))

(declare-fun lt!513948 () ListLongMap!16427)

(declare-fun lt!513943 () ListLongMap!16427)

(assert (=> b!1149259 (= res!764714 (= lt!513948 lt!513943))))

(declare-fun lt!513945 () ListLongMap!16427)

(declare-fun -!1317 (ListLongMap!16427 (_ BitVec 64)) ListLongMap!16427)

(assert (=> b!1149259 (= lt!513948 (-!1317 lt!513945 k!934))))

(declare-fun lt!513952 () V!43581)

(declare-fun +!3567 (ListLongMap!16427 tuple2!18446) ListLongMap!16427)

(assert (=> b!1149259 (= (-!1317 (+!3567 lt!513943 (tuple2!18447 (select (arr!35890 _keys!1208) from!1455) lt!513952)) (select (arr!35890 _keys!1208) from!1455)) lt!513943)))

(declare-datatypes ((Unit!37700 0))(
  ( (Unit!37701) )
))
(declare-fun lt!513944 () Unit!37700)

(declare-fun addThenRemoveForNewKeyIsSame!166 (ListLongMap!16427 (_ BitVec 64) V!43581) Unit!37700)

(assert (=> b!1149259 (= lt!513944 (addThenRemoveForNewKeyIsSame!166 lt!513943 (select (arr!35890 _keys!1208) from!1455) lt!513952))))

(declare-fun lt!513960 () V!43581)

(declare-fun get!18290 (ValueCell!13711 V!43581) V!43581)

(assert (=> b!1149259 (= lt!513952 (get!18290 (select (arr!35891 _values!996) from!1455) lt!513960))))

(declare-fun lt!513957 () Unit!37700)

(declare-fun e!653717 () Unit!37700)

(assert (=> b!1149259 (= lt!513957 e!653717)))

(declare-fun c!113610 () Bool)

(assert (=> b!1149259 (= c!113610 (contains!6724 lt!513943 k!934))))

(declare-fun zeroValue!944 () V!43581)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43581)

(declare-fun getCurrentListMapNoExtraKeys!4670 (array!74486 array!74488 (_ BitVec 32) (_ BitVec 32) V!43581 V!43581 (_ BitVec 32) Int) ListLongMap!16427)

(assert (=> b!1149259 (= lt!513943 (getCurrentListMapNoExtraKeys!4670 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149260 () Bool)

(declare-fun res!764716 () Bool)

(assert (=> b!1149260 (=> (not res!764716) (not e!653724))))

(declare-datatypes ((List!25240 0))(
  ( (Nil!25237) (Cons!25236 (h!26445 (_ BitVec 64)) (t!36550 List!25240)) )
))
(declare-fun arrayNoDuplicates!0 (array!74486 (_ BitVec 32) List!25240) Bool)

(assert (=> b!1149260 (= res!764716 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25237))))

(declare-fun bm!53273 () Bool)

(declare-fun c!113606 () Bool)

(assert (=> bm!53273 (= call!53275 (+!3567 lt!513943 (ite (or c!113609 c!113606) (tuple2!18447 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1149261 () Bool)

(declare-fun res!764719 () Bool)

(assert (=> b!1149261 (=> (not res!764719) (not e!653724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1149261 (= res!764719 (validKeyInArray!0 k!934))))

(declare-fun b!1149262 () Bool)

(declare-fun res!764718 () Bool)

(assert (=> b!1149262 (=> (not res!764718) (not e!653724))))

(assert (=> b!1149262 (= res!764718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1149263 () Bool)

(declare-fun res!764709 () Bool)

(assert (=> b!1149263 (=> (not res!764709) (not e!653724))))

(assert (=> b!1149263 (= res!764709 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36427 _keys!1208))))))

(declare-fun call!53277 () ListLongMap!16427)

(declare-fun b!1149264 () Bool)

(declare-fun e!653732 () Bool)

(declare-fun call!53273 () ListLongMap!16427)

(assert (=> b!1149264 (= e!653732 (= call!53277 (-!1317 call!53273 k!934)))))

(declare-fun bm!53274 () Bool)

(declare-fun call!53280 () Unit!37700)

(declare-fun call!53279 () Unit!37700)

(assert (=> bm!53274 (= call!53280 call!53279)))

(declare-fun b!1149265 () Bool)

(declare-fun res!764711 () Bool)

(assert (=> b!1149265 (=> (not res!764711) (not e!653724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1149265 (= res!764711 (validMask!0 mask!1564))))

(declare-fun b!1149266 () Bool)

(declare-fun e!653731 () Bool)

(assert (=> b!1149266 (= e!653731 tp_is_empty!28841)))

(declare-fun b!1149267 () Bool)

(declare-fun lt!513962 () Bool)

(assert (=> b!1149267 (= c!113606 (and (not lt!513962) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!653723 () Unit!37700)

(declare-fun e!653730 () Unit!37700)

(assert (=> b!1149267 (= e!653723 e!653730)))

(declare-fun b!1149268 () Bool)

(declare-fun Unit!37702 () Unit!37700)

(assert (=> b!1149268 (= e!653717 Unit!37702)))

(assert (=> b!1149268 (= lt!513962 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1149268 (= c!113609 (and (not lt!513962) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513963 () Unit!37700)

(assert (=> b!1149268 (= lt!513963 e!653723)))

(declare-fun lt!513950 () Unit!37700)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!453 (array!74486 array!74488 (_ BitVec 32) (_ BitVec 32) V!43581 V!43581 (_ BitVec 64) (_ BitVec 32) Int) Unit!37700)

(assert (=> b!1149268 (= lt!513950 (lemmaListMapContainsThenArrayContainsFrom!453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113607 () Bool)

(assert (=> b!1149268 (= c!113607 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764710 () Bool)

(assert (=> b!1149268 (= res!764710 e!653726)))

(declare-fun e!653728 () Bool)

(assert (=> b!1149268 (=> (not res!764710) (not e!653728))))

(assert (=> b!1149268 e!653728))

(declare-fun lt!513951 () Unit!37700)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74486 (_ BitVec 32) (_ BitVec 32)) Unit!37700)

(assert (=> b!1149268 (= lt!513951 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1149268 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25237)))

(declare-fun lt!513959 () Unit!37700)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74486 (_ BitVec 64) (_ BitVec 32) List!25240) Unit!37700)

(assert (=> b!1149268 (= lt!513959 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25237))))

(assert (=> b!1149268 false))

(declare-fun b!1149269 () Bool)

(assert (=> b!1149269 call!53274))

(declare-fun lt!513942 () Unit!37700)

(assert (=> b!1149269 (= lt!513942 call!53280)))

(declare-fun e!653729 () Unit!37700)

(assert (=> b!1149269 (= e!653729 lt!513942)))

(declare-fun b!1149270 () Bool)

(assert (=> b!1149270 (= e!653726 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513962) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!764723 () Bool)

(assert (=> start!98742 (=> (not res!764723) (not e!653724))))

(assert (=> start!98742 (= res!764723 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36427 _keys!1208))))))

(assert (=> start!98742 e!653724))

(assert (=> start!98742 tp_is_empty!28841))

(declare-fun array_inv!27368 (array!74486) Bool)

(assert (=> start!98742 (array_inv!27368 _keys!1208)))

(assert (=> start!98742 true))

(assert (=> start!98742 tp!85645))

(declare-fun e!653722 () Bool)

(declare-fun array_inv!27369 (array!74488) Bool)

(assert (=> start!98742 (and (array_inv!27369 _values!996) e!653722)))

(declare-fun b!1149257 () Bool)

(assert (=> b!1149257 (contains!6724 (+!3567 lt!513949 (tuple2!18447 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!513956 () Unit!37700)

(declare-fun addStillContains!867 (ListLongMap!16427 (_ BitVec 64) V!43581 (_ BitVec 64)) Unit!37700)

(assert (=> b!1149257 (= lt!513956 (addStillContains!867 lt!513949 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1149257 call!53276))

(assert (=> b!1149257 (= lt!513949 call!53275)))

(declare-fun lt!513953 () Unit!37700)

(assert (=> b!1149257 (= lt!513953 call!53279)))

(assert (=> b!1149257 (= e!653723 lt!513956)))

(declare-fun b!1149271 () Bool)

(declare-fun e!653727 () Bool)

(assert (=> b!1149271 (= e!653720 (not e!653727))))

(declare-fun res!764721 () Bool)

(assert (=> b!1149271 (=> res!764721 e!653727)))

(assert (=> b!1149271 (= res!764721 (bvsgt from!1455 i!673))))

(assert (=> b!1149271 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!513954 () Unit!37700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74486 (_ BitVec 64) (_ BitVec 32)) Unit!37700)

(assert (=> b!1149271 (= lt!513954 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!53275 () Bool)

(declare-fun lt!513947 () array!74488)

(assert (=> bm!53275 (= call!53277 (getCurrentListMapNoExtraKeys!4670 lt!513958 lt!513947 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1149272 () Bool)

(declare-fun res!764722 () Bool)

(assert (=> b!1149272 (=> (not res!764722) (not e!653720))))

(assert (=> b!1149272 (= res!764722 (arrayNoDuplicates!0 lt!513958 #b00000000000000000000000000000000 Nil!25237))))

(declare-fun b!1149273 () Bool)

(declare-fun res!764713 () Bool)

(assert (=> b!1149273 (=> (not res!764713) (not e!653724))))

(assert (=> b!1149273 (= res!764713 (= (select (arr!35890 _keys!1208) i!673) k!934))))

(declare-fun b!1149274 () Bool)

(declare-fun mapRes!45086 () Bool)

(assert (=> b!1149274 (= e!653722 (and e!653725 mapRes!45086))))

(declare-fun condMapEmpty!45086 () Bool)

(declare-fun mapDefault!45086 () ValueCell!13711)

