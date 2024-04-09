; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98918 () Bool)

(assert start!98918)

(declare-fun b_free!24487 () Bool)

(declare-fun b_next!24487 () Bool)

(assert (=> start!98918 (= b_free!24487 (not b_next!24487))))

(declare-fun tp!86173 () Bool)

(declare-fun b_and!39837 () Bool)

(assert (=> start!98918 (= tp!86173 b_and!39837)))

(declare-fun b!1157350 () Bool)

(declare-fun e!658209 () Bool)

(declare-fun e!658217 () Bool)

(assert (=> b!1157350 (= e!658209 e!658217)))

(declare-fun res!768673 () Bool)

(assert (=> b!1157350 (=> res!768673 e!658217)))

(declare-datatypes ((array!74824 0))(
  ( (array!74825 (arr!36059 (Array (_ BitVec 32) (_ BitVec 64))) (size!36596 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74824)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1157350 (= res!768673 (not (= (select (arr!36059 _keys!1208) from!1455) k!934)))))

(declare-fun e!658215 () Bool)

(assert (=> b!1157350 e!658215))

(declare-fun c!115192 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157350 (= c!115192 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43817 0))(
  ( (V!43818 (val!14565 Int)) )
))
(declare-fun zeroValue!944 () V!43817)

(declare-datatypes ((Unit!38017 0))(
  ( (Unit!38018) )
))
(declare-fun lt!519766 () Unit!38017)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13799 0))(
  ( (ValueCellFull!13799 (v!17203 V!43817)) (EmptyCell!13799) )
))
(declare-datatypes ((array!74826 0))(
  ( (array!74827 (arr!36060 (Array (_ BitVec 32) ValueCell!13799)) (size!36597 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74826)

(declare-fun minValue!944 () V!43817)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!609 (array!74824 array!74826 (_ BitVec 32) (_ BitVec 32) V!43817 V!43817 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38017)

(assert (=> b!1157350 (= lt!519766 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!609 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157351 () Bool)

(declare-fun res!768678 () Bool)

(declare-fun e!658214 () Bool)

(assert (=> b!1157351 (=> (not res!768678) (not e!658214))))

(assert (=> b!1157351 (= res!768678 (and (= (size!36597 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36596 _keys!1208) (size!36597 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1157352 () Bool)

(declare-fun e!658208 () Bool)

(declare-fun tp_is_empty!29017 () Bool)

(assert (=> b!1157352 (= e!658208 tp_is_empty!29017)))

(declare-fun lt!519762 () array!74824)

(declare-fun e!658211 () Bool)

(declare-fun b!1157353 () Bool)

(declare-fun lt!519757 () array!74826)

(declare-datatypes ((tuple2!18600 0))(
  ( (tuple2!18601 (_1!9310 (_ BitVec 64)) (_2!9310 V!43817)) )
))
(declare-datatypes ((List!25380 0))(
  ( (Nil!25377) (Cons!25376 (h!26585 tuple2!18600) (t!36866 List!25380)) )
))
(declare-datatypes ((ListLongMap!16581 0))(
  ( (ListLongMap!16582 (toList!8306 List!25380)) )
))
(declare-fun lt!519752 () ListLongMap!16581)

(declare-fun getCurrentListMapNoExtraKeys!4743 (array!74824 array!74826 (_ BitVec 32) (_ BitVec 32) V!43817 V!43817 (_ BitVec 32) Int) ListLongMap!16581)

(assert (=> b!1157353 (= e!658211 (= lt!519752 (getCurrentListMapNoExtraKeys!4743 lt!519762 lt!519757 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157354 () Bool)

(declare-fun e!658219 () Bool)

(assert (=> b!1157354 (= e!658219 tp_is_empty!29017)))

(declare-fun bm!55382 () Bool)

(declare-fun call!55385 () Unit!38017)

(declare-fun call!55389 () Unit!38017)

(assert (=> bm!55382 (= call!55385 call!55389)))

(declare-fun bm!55383 () Bool)

(declare-fun call!55390 () ListLongMap!16581)

(declare-fun call!55392 () ListLongMap!16581)

(assert (=> bm!55383 (= call!55390 call!55392)))

(declare-fun b!1157355 () Bool)

(declare-fun e!658220 () Bool)

(declare-fun e!658218 () Bool)

(assert (=> b!1157355 (= e!658220 (not e!658218))))

(declare-fun res!768669 () Bool)

(assert (=> b!1157355 (=> res!768669 e!658218)))

(assert (=> b!1157355 (= res!768669 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157355 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519753 () Unit!38017)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74824 (_ BitVec 64) (_ BitVec 32)) Unit!38017)

(assert (=> b!1157355 (= lt!519753 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!658207 () Bool)

(declare-fun b!1157356 () Bool)

(assert (=> b!1157356 (= e!658207 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157357 () Bool)

(declare-fun res!768675 () Bool)

(assert (=> b!1157357 (=> (not res!768675) (not e!658214))))

(assert (=> b!1157357 (= res!768675 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36596 _keys!1208))))))

(declare-fun b!1157358 () Bool)

(declare-fun res!768682 () Bool)

(assert (=> b!1157358 (=> (not res!768682) (not e!658220))))

(declare-datatypes ((List!25381 0))(
  ( (Nil!25378) (Cons!25377 (h!26586 (_ BitVec 64)) (t!36867 List!25381)) )
))
(declare-fun arrayNoDuplicates!0 (array!74824 (_ BitVec 32) List!25381) Bool)

(assert (=> b!1157358 (= res!768682 (arrayNoDuplicates!0 lt!519762 #b00000000000000000000000000000000 Nil!25378))))

(declare-fun mapNonEmpty!45350 () Bool)

(declare-fun mapRes!45350 () Bool)

(declare-fun tp!86172 () Bool)

(assert (=> mapNonEmpty!45350 (= mapRes!45350 (and tp!86172 e!658219))))

(declare-fun mapValue!45350 () ValueCell!13799)

(declare-fun mapRest!45350 () (Array (_ BitVec 32) ValueCell!13799))

(declare-fun mapKey!45350 () (_ BitVec 32))

(assert (=> mapNonEmpty!45350 (= (arr!36060 _values!996) (store mapRest!45350 mapKey!45350 mapValue!45350))))

(declare-fun b!1157359 () Bool)

(assert (=> b!1157359 (= e!658217 true)))

(assert (=> b!1157359 e!658211))

(declare-fun res!768679 () Bool)

(assert (=> b!1157359 (=> (not res!768679) (not e!658211))))

(declare-fun lt!519768 () ListLongMap!16581)

(assert (=> b!1157359 (= res!768679 (= lt!519752 lt!519768))))

(declare-fun lt!519756 () ListLongMap!16581)

(declare-fun -!1382 (ListLongMap!16581 (_ BitVec 64)) ListLongMap!16581)

(assert (=> b!1157359 (= lt!519752 (-!1382 lt!519756 k!934))))

(declare-fun lt!519759 () V!43817)

(declare-fun +!3636 (ListLongMap!16581 tuple2!18600) ListLongMap!16581)

(assert (=> b!1157359 (= (-!1382 (+!3636 lt!519768 (tuple2!18601 (select (arr!36059 _keys!1208) from!1455) lt!519759)) (select (arr!36059 _keys!1208) from!1455)) lt!519768)))

(declare-fun lt!519767 () Unit!38017)

(declare-fun addThenRemoveForNewKeyIsSame!223 (ListLongMap!16581 (_ BitVec 64) V!43817) Unit!38017)

(assert (=> b!1157359 (= lt!519767 (addThenRemoveForNewKeyIsSame!223 lt!519768 (select (arr!36059 _keys!1208) from!1455) lt!519759))))

(declare-fun lt!519754 () V!43817)

(declare-fun get!18407 (ValueCell!13799 V!43817) V!43817)

(assert (=> b!1157359 (= lt!519759 (get!18407 (select (arr!36060 _values!996) from!1455) lt!519754))))

(declare-fun lt!519758 () Unit!38017)

(declare-fun e!658216 () Unit!38017)

(assert (=> b!1157359 (= lt!519758 e!658216)))

(declare-fun c!115190 () Bool)

(declare-fun contains!6792 (ListLongMap!16581 (_ BitVec 64)) Bool)

(assert (=> b!1157359 (= c!115190 (contains!6792 lt!519768 k!934))))

(assert (=> b!1157359 (= lt!519768 (getCurrentListMapNoExtraKeys!4743 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157360 () Bool)

(declare-fun e!658221 () Unit!38017)

(declare-fun e!658212 () Unit!38017)

(assert (=> b!1157360 (= e!658221 e!658212)))

(declare-fun c!115193 () Bool)

(declare-fun lt!519751 () Bool)

(assert (=> b!1157360 (= c!115193 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519751))))

(declare-fun b!1157361 () Bool)

(declare-fun e!658206 () Bool)

(assert (=> b!1157361 (= e!658206 (and e!658208 mapRes!45350))))

(declare-fun condMapEmpty!45350 () Bool)

(declare-fun mapDefault!45350 () ValueCell!13799)

