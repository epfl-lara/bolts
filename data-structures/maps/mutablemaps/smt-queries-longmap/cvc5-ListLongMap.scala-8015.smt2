; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98966 () Bool)

(assert start!98966)

(declare-fun b_free!24535 () Bool)

(declare-fun b_next!24535 () Bool)

(assert (=> start!98966 (= b_free!24535 (not b_next!24535))))

(declare-fun tp!86317 () Bool)

(declare-fun b_and!39933 () Bool)

(assert (=> start!98966 (= tp!86317 b_and!39933)))

(declare-fun b!1159558 () Bool)

(declare-fun e!659440 () Bool)

(assert (=> b!1159558 (= e!659440 true)))

(declare-fun e!659438 () Bool)

(assert (=> b!1159558 e!659438))

(declare-fun res!769751 () Bool)

(assert (=> b!1159558 (=> (not res!769751) (not e!659438))))

(declare-datatypes ((V!43881 0))(
  ( (V!43882 (val!14589 Int)) )
))
(declare-datatypes ((tuple2!18648 0))(
  ( (tuple2!18649 (_1!9334 (_ BitVec 64)) (_2!9334 V!43881)) )
))
(declare-datatypes ((List!25426 0))(
  ( (Nil!25423) (Cons!25422 (h!26631 tuple2!18648) (t!36960 List!25426)) )
))
(declare-datatypes ((ListLongMap!16629 0))(
  ( (ListLongMap!16630 (toList!8330 List!25426)) )
))
(declare-fun lt!521341 () ListLongMap!16629)

(declare-fun lt!521354 () ListLongMap!16629)

(assert (=> b!1159558 (= res!769751 (= lt!521341 lt!521354))))

(declare-fun lt!521336 () ListLongMap!16629)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1402 (ListLongMap!16629 (_ BitVec 64)) ListLongMap!16629)

(assert (=> b!1159558 (= lt!521341 (-!1402 lt!521336 k!934))))

(declare-datatypes ((array!74920 0))(
  ( (array!74921 (arr!36107 (Array (_ BitVec 32) (_ BitVec 64))) (size!36644 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74920)

(declare-fun lt!521338 () V!43881)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3656 (ListLongMap!16629 tuple2!18648) ListLongMap!16629)

(assert (=> b!1159558 (= (-!1402 (+!3656 lt!521354 (tuple2!18649 (select (arr!36107 _keys!1208) from!1455) lt!521338)) (select (arr!36107 _keys!1208) from!1455)) lt!521354)))

(declare-datatypes ((Unit!38112 0))(
  ( (Unit!38113) )
))
(declare-fun lt!521339 () Unit!38112)

(declare-fun addThenRemoveForNewKeyIsSame!240 (ListLongMap!16629 (_ BitVec 64) V!43881) Unit!38112)

(assert (=> b!1159558 (= lt!521339 (addThenRemoveForNewKeyIsSame!240 lt!521354 (select (arr!36107 _keys!1208) from!1455) lt!521338))))

(declare-fun lt!521337 () V!43881)

(declare-datatypes ((ValueCell!13823 0))(
  ( (ValueCellFull!13823 (v!17227 V!43881)) (EmptyCell!13823) )
))
(declare-datatypes ((array!74922 0))(
  ( (array!74923 (arr!36108 (Array (_ BitVec 32) ValueCell!13823)) (size!36645 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74922)

(declare-fun get!18440 (ValueCell!13823 V!43881) V!43881)

(assert (=> b!1159558 (= lt!521338 (get!18440 (select (arr!36108 _values!996) from!1455) lt!521337))))

(declare-fun lt!521347 () Unit!38112)

(declare-fun e!659430 () Unit!38112)

(assert (=> b!1159558 (= lt!521347 e!659430)))

(declare-fun c!115623 () Bool)

(declare-fun contains!6812 (ListLongMap!16629 (_ BitVec 64)) Bool)

(assert (=> b!1159558 (= c!115623 (contains!6812 lt!521354 k!934))))

(declare-fun zeroValue!944 () V!43881)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43881)

(declare-fun getCurrentListMapNoExtraKeys!4766 (array!74920 array!74922 (_ BitVec 32) (_ BitVec 32) V!43881 V!43881 (_ BitVec 32) Int) ListLongMap!16629)

(assert (=> b!1159558 (= lt!521354 (getCurrentListMapNoExtraKeys!4766 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!659444 () Bool)

(declare-fun call!55966 () ListLongMap!16629)

(declare-fun call!55962 () ListLongMap!16629)

(declare-fun b!1159559 () Bool)

(assert (=> b!1159559 (= e!659444 (= call!55966 (-!1402 call!55962 k!934)))))

(declare-fun lt!521355 () Bool)

(declare-fun b!1159560 () Bool)

(declare-fun e!659437 () Bool)

(assert (=> b!1159560 (= e!659437 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!521355) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!45422 () Bool)

(declare-fun mapRes!45422 () Bool)

(assert (=> mapIsEmpty!45422 mapRes!45422))

(declare-fun bm!55958 () Bool)

(declare-fun lt!521345 () array!74920)

(declare-fun lt!521335 () array!74922)

(assert (=> bm!55958 (= call!55966 (getCurrentListMapNoExtraKeys!4766 lt!521345 lt!521335 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!55965 () Unit!38112)

(declare-fun bm!55959 () Bool)

(declare-fun c!115625 () Bool)

(declare-fun c!115622 () Bool)

(declare-fun addStillContains!953 (ListLongMap!16629 (_ BitVec 64) V!43881 (_ BitVec 64)) Unit!38112)

(assert (=> bm!55959 (= call!55965 (addStillContains!953 lt!521354 (ite (or c!115622 c!115625) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115622 c!115625) zeroValue!944 minValue!944) k!934))))

(declare-fun mapNonEmpty!45422 () Bool)

(declare-fun tp!86316 () Bool)

(declare-fun e!659441 () Bool)

(assert (=> mapNonEmpty!45422 (= mapRes!45422 (and tp!86316 e!659441))))

(declare-fun mapValue!45422 () ValueCell!13823)

(declare-fun mapRest!45422 () (Array (_ BitVec 32) ValueCell!13823))

(declare-fun mapKey!45422 () (_ BitVec 32))

(assert (=> mapNonEmpty!45422 (= (arr!36108 _values!996) (store mapRest!45422 mapKey!45422 mapValue!45422))))

(declare-fun res!769757 () Bool)

(declare-fun e!659429 () Bool)

(assert (=> start!98966 (=> (not res!769757) (not e!659429))))

(assert (=> start!98966 (= res!769757 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36644 _keys!1208))))))

(assert (=> start!98966 e!659429))

(declare-fun tp_is_empty!29065 () Bool)

(assert (=> start!98966 tp_is_empty!29065))

(declare-fun array_inv!27496 (array!74920) Bool)

(assert (=> start!98966 (array_inv!27496 _keys!1208)))

(assert (=> start!98966 true))

(assert (=> start!98966 tp!86317))

(declare-fun e!659439 () Bool)

(declare-fun array_inv!27497 (array!74922) Bool)

(assert (=> start!98966 (and (array_inv!27497 _values!996) e!659439)))

(declare-fun b!1159561 () Bool)

(declare-fun call!55964 () ListLongMap!16629)

(assert (=> b!1159561 (contains!6812 call!55964 k!934)))

(declare-fun lt!521352 () ListLongMap!16629)

(declare-fun lt!521344 () Unit!38112)

(assert (=> b!1159561 (= lt!521344 (addStillContains!953 lt!521352 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!55961 () Bool)

(assert (=> b!1159561 call!55961))

(assert (=> b!1159561 (= lt!521352 (+!3656 lt!521354 (tuple2!18649 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!521342 () Unit!38112)

(assert (=> b!1159561 (= lt!521342 call!55965)))

(declare-fun e!659445 () Unit!38112)

(assert (=> b!1159561 (= e!659445 lt!521344)))

(declare-fun b!1159562 () Bool)

(declare-fun Unit!38114 () Unit!38112)

(assert (=> b!1159562 (= e!659430 Unit!38114)))

(assert (=> b!1159562 (= lt!521355 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1159562 (= c!115622 (and (not lt!521355) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!521353 () Unit!38112)

(assert (=> b!1159562 (= lt!521353 e!659445)))

(declare-fun lt!521343 () Unit!38112)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!527 (array!74920 array!74922 (_ BitVec 32) (_ BitVec 32) V!43881 V!43881 (_ BitVec 64) (_ BitVec 32) Int) Unit!38112)

(assert (=> b!1159562 (= lt!521343 (lemmaListMapContainsThenArrayContainsFrom!527 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115626 () Bool)

(assert (=> b!1159562 (= c!115626 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769760 () Bool)

(assert (=> b!1159562 (= res!769760 e!659437)))

(declare-fun e!659442 () Bool)

(assert (=> b!1159562 (=> (not res!769760) (not e!659442))))

(assert (=> b!1159562 e!659442))

(declare-fun lt!521346 () Unit!38112)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74920 (_ BitVec 32) (_ BitVec 32)) Unit!38112)

(assert (=> b!1159562 (= lt!521346 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25427 0))(
  ( (Nil!25424) (Cons!25423 (h!26632 (_ BitVec 64)) (t!36961 List!25427)) )
))
(declare-fun arrayNoDuplicates!0 (array!74920 (_ BitVec 32) List!25427) Bool)

(assert (=> b!1159562 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25424)))

(declare-fun lt!521334 () Unit!38112)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74920 (_ BitVec 64) (_ BitVec 32) List!25427) Unit!38112)

(assert (=> b!1159562 (= lt!521334 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25424))))

(assert (=> b!1159562 false))

(declare-fun b!1159563 () Bool)

(declare-fun res!769754 () Bool)

(assert (=> b!1159563 (=> (not res!769754) (not e!659429))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1159563 (= res!769754 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36644 _keys!1208))))))

(declare-fun b!1159564 () Bool)

(declare-fun Unit!38115 () Unit!38112)

(assert (=> b!1159564 (= e!659430 Unit!38115)))

(declare-fun bm!55960 () Bool)

(declare-fun call!55963 () ListLongMap!16629)

(assert (=> bm!55960 (= call!55963 call!55964)))

(declare-fun b!1159565 () Bool)

(declare-fun e!659434 () Unit!38112)

(declare-fun Unit!38116 () Unit!38112)

(assert (=> b!1159565 (= e!659434 Unit!38116)))

(declare-fun b!1159566 () Bool)

(assert (=> b!1159566 (= e!659438 (= lt!521341 (getCurrentListMapNoExtraKeys!4766 lt!521345 lt!521335 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1159567 () Bool)

(declare-fun e!659432 () Unit!38112)

(declare-fun lt!521351 () Unit!38112)

(assert (=> b!1159567 (= e!659432 lt!521351)))

(declare-fun call!55967 () Unit!38112)

(assert (=> b!1159567 (= lt!521351 call!55967)))

(declare-fun call!55968 () Bool)

(assert (=> b!1159567 call!55968))

(declare-fun b!1159568 () Bool)

(assert (=> b!1159568 (= e!659444 (= call!55966 call!55962))))

(declare-fun b!1159569 () Bool)

(declare-fun e!659433 () Bool)

(assert (=> b!1159569 (= e!659439 (and e!659433 mapRes!45422))))

(declare-fun condMapEmpty!45422 () Bool)

(declare-fun mapDefault!45422 () ValueCell!13823)

