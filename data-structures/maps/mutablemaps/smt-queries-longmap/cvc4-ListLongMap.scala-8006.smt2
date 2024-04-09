; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98916 () Bool)

(assert start!98916)

(declare-fun b_free!24485 () Bool)

(declare-fun b_next!24485 () Bool)

(assert (=> start!98916 (= b_free!24485 (not b_next!24485))))

(declare-fun tp!86167 () Bool)

(declare-fun b_and!39833 () Bool)

(assert (=> start!98916 (= tp!86167 b_and!39833)))

(declare-fun b!1157258 () Bool)

(declare-datatypes ((Unit!38013 0))(
  ( (Unit!38014) )
))
(declare-fun e!658165 () Unit!38013)

(declare-fun e!658158 () Unit!38013)

(assert (=> b!1157258 (= e!658165 e!658158)))

(declare-fun c!115174 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!519700 () Bool)

(assert (=> b!1157258 (= c!115174 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519700))))

(declare-fun b!1157259 () Bool)

(declare-fun res!768627 () Bool)

(declare-fun e!658169 () Bool)

(assert (=> b!1157259 (=> (not res!768627) (not e!658169))))

(declare-datatypes ((array!74820 0))(
  ( (array!74821 (arr!36057 (Array (_ BitVec 32) (_ BitVec 64))) (size!36594 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74820)

(declare-datatypes ((List!25378 0))(
  ( (Nil!25375) (Cons!25374 (h!26583 (_ BitVec 64)) (t!36862 List!25378)) )
))
(declare-fun arrayNoDuplicates!0 (array!74820 (_ BitVec 32) List!25378) Bool)

(assert (=> b!1157259 (= res!768627 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25375))))

(declare-fun bm!55358 () Bool)

(declare-fun call!55361 () Unit!38013)

(declare-fun call!55368 () Unit!38013)

(assert (=> bm!55358 (= call!55361 call!55368)))

(declare-fun b!1157260 () Bool)

(declare-fun e!658157 () Bool)

(declare-fun tp_is_empty!29015 () Bool)

(assert (=> b!1157260 (= e!658157 tp_is_empty!29015)))

(declare-fun b!1157261 () Bool)

(declare-fun c!115176 () Bool)

(assert (=> b!1157261 (= c!115176 (and (not lt!519700) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!658162 () Unit!38013)

(assert (=> b!1157261 (= e!658162 e!658165)))

(declare-datatypes ((V!43813 0))(
  ( (V!43814 (val!14564 Int)) )
))
(declare-fun zeroValue!944 () V!43813)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!55360 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13798 0))(
  ( (ValueCellFull!13798 (v!17202 V!43813)) (EmptyCell!13798) )
))
(declare-datatypes ((array!74822 0))(
  ( (array!74823 (arr!36058 (Array (_ BitVec 32) ValueCell!13798)) (size!36595 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74822)

(declare-fun minValue!944 () V!43813)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18598 0))(
  ( (tuple2!18599 (_1!9309 (_ BitVec 64)) (_2!9309 V!43813)) )
))
(declare-datatypes ((List!25379 0))(
  ( (Nil!25376) (Cons!25375 (h!26584 tuple2!18598) (t!36863 List!25379)) )
))
(declare-datatypes ((ListLongMap!16579 0))(
  ( (ListLongMap!16580 (toList!8305 List!25379)) )
))
(declare-fun call!55365 () ListLongMap!16579)

(declare-fun getCurrentListMapNoExtraKeys!4742 (array!74820 array!74822 (_ BitVec 32) (_ BitVec 32) V!43813 V!43813 (_ BitVec 32) Int) ListLongMap!16579)

(assert (=> bm!55360 (= call!55365 (getCurrentListMapNoExtraKeys!4742 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157262 () Bool)

(declare-fun res!768625 () Bool)

(assert (=> b!1157262 (=> (not res!768625) (not e!658169))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1157262 (= res!768625 (= (select (arr!36057 _keys!1208) i!673) k!934))))

(declare-fun b!1157263 () Bool)

(declare-fun e!658167 () Unit!38013)

(declare-fun Unit!38015 () Unit!38013)

(assert (=> b!1157263 (= e!658167 Unit!38015)))

(assert (=> b!1157263 (= lt!519700 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115173 () Bool)

(assert (=> b!1157263 (= c!115173 (and (not lt!519700) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519704 () Unit!38013)

(assert (=> b!1157263 (= lt!519704 e!658162)))

(declare-fun lt!519699 () Unit!38013)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!508 (array!74820 array!74822 (_ BitVec 32) (_ BitVec 32) V!43813 V!43813 (_ BitVec 64) (_ BitVec 32) Int) Unit!38013)

(assert (=> b!1157263 (= lt!519699 (lemmaListMapContainsThenArrayContainsFrom!508 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115172 () Bool)

(assert (=> b!1157263 (= c!115172 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768636 () Bool)

(declare-fun e!658164 () Bool)

(assert (=> b!1157263 (= res!768636 e!658164)))

(declare-fun e!658166 () Bool)

(assert (=> b!1157263 (=> (not res!768636) (not e!658166))))

(assert (=> b!1157263 e!658166))

(declare-fun lt!519687 () Unit!38013)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74820 (_ BitVec 32) (_ BitVec 32)) Unit!38013)

(assert (=> b!1157263 (= lt!519687 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1157263 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25375)))

(declare-fun lt!519697 () Unit!38013)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74820 (_ BitVec 64) (_ BitVec 32) List!25378) Unit!38013)

(assert (=> b!1157263 (= lt!519697 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25375))))

(assert (=> b!1157263 false))

(declare-fun b!1157264 () Bool)

(declare-fun arrayContainsKey!0 (array!74820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157264 (= e!658166 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157265 () Bool)

(declare-fun e!658161 () Bool)

(assert (=> b!1157265 (= e!658169 e!658161)))

(declare-fun res!768631 () Bool)

(assert (=> b!1157265 (=> (not res!768631) (not e!658161))))

(declare-fun lt!519686 () array!74820)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74820 (_ BitVec 32)) Bool)

(assert (=> b!1157265 (= res!768631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519686 mask!1564))))

(assert (=> b!1157265 (= lt!519686 (array!74821 (store (arr!36057 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36594 _keys!1208)))))

(declare-fun b!1157266 () Bool)

(declare-fun call!55367 () Bool)

(assert (=> b!1157266 call!55367))

(declare-fun lt!519701 () Unit!38013)

(assert (=> b!1157266 (= lt!519701 call!55361)))

(assert (=> b!1157266 (= e!658158 lt!519701)))

(declare-fun lt!519689 () ListLongMap!16579)

(declare-fun call!55364 () ListLongMap!16579)

(declare-fun bm!55361 () Bool)

(declare-fun +!3635 (ListLongMap!16579 tuple2!18598) ListLongMap!16579)

(assert (=> bm!55361 (= call!55364 (+!3635 lt!519689 (ite (or c!115173 c!115176) (tuple2!18599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!55362 () Bool)

(declare-fun call!55366 () ListLongMap!16579)

(declare-fun lt!519690 () ListLongMap!16579)

(declare-fun bm!55362 () Bool)

(declare-fun contains!6791 (ListLongMap!16579 (_ BitVec 64)) Bool)

(assert (=> bm!55362 (= call!55362 (contains!6791 (ite c!115173 lt!519690 call!55366) k!934))))

(declare-fun bm!55363 () Bool)

(assert (=> bm!55363 (= call!55366 call!55364)))

(declare-fun e!658159 () Bool)

(declare-fun b!1157267 () Bool)

(declare-fun lt!519705 () ListLongMap!16579)

(declare-fun lt!519693 () array!74822)

(assert (=> b!1157267 (= e!658159 (= lt!519705 (getCurrentListMapNoExtraKeys!4742 lt!519686 lt!519693 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157268 () Bool)

(declare-fun e!658160 () Bool)

(assert (=> b!1157268 (= e!658161 (not e!658160))))

(declare-fun res!768629 () Bool)

(assert (=> b!1157268 (=> res!768629 e!658160)))

(assert (=> b!1157268 (= res!768629 (bvsgt from!1455 i!673))))

(assert (=> b!1157268 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519696 () Unit!38013)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74820 (_ BitVec 64) (_ BitVec 32)) Unit!38013)

(assert (=> b!1157268 (= lt!519696 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun call!55363 () ListLongMap!16579)

(declare-fun b!1157269 () Bool)

(declare-fun e!658168 () Bool)

(declare-fun -!1381 (ListLongMap!16579 (_ BitVec 64)) ListLongMap!16579)

(assert (=> b!1157269 (= e!658168 (= call!55363 (-!1381 call!55365 k!934)))))

(declare-fun b!1157270 () Bool)

(declare-fun e!658155 () Bool)

(assert (=> b!1157270 (= e!658155 tp_is_empty!29015)))

(declare-fun b!1157271 () Bool)

(assert (=> b!1157271 (= e!658164 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157272 () Bool)

(declare-fun Unit!38016 () Unit!38013)

(assert (=> b!1157272 (= e!658167 Unit!38016)))

(declare-fun b!1157273 () Bool)

(assert (=> b!1157273 (= e!658168 (= call!55363 call!55365))))

(declare-fun bm!55364 () Bool)

(assert (=> bm!55364 (= call!55363 (getCurrentListMapNoExtraKeys!4742 lt!519686 lt!519693 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55365 () Bool)

(assert (=> bm!55365 (= call!55367 call!55362)))

(declare-fun b!1157274 () Bool)

(declare-fun lt!519695 () Unit!38013)

(assert (=> b!1157274 (= e!658165 lt!519695)))

(assert (=> b!1157274 (= lt!519695 call!55361)))

(assert (=> b!1157274 call!55367))

(declare-fun b!1157275 () Bool)

(declare-fun res!768632 () Bool)

(assert (=> b!1157275 (=> (not res!768632) (not e!658161))))

(assert (=> b!1157275 (= res!768632 (arrayNoDuplicates!0 lt!519686 #b00000000000000000000000000000000 Nil!25375))))

(declare-fun b!1157276 () Bool)

(declare-fun e!658170 () Bool)

(assert (=> b!1157276 (= e!658170 true)))

(assert (=> b!1157276 e!658159))

(declare-fun res!768626 () Bool)

(assert (=> b!1157276 (=> (not res!768626) (not e!658159))))

(assert (=> b!1157276 (= res!768626 (= lt!519705 lt!519689))))

(declare-fun lt!519694 () ListLongMap!16579)

(assert (=> b!1157276 (= lt!519705 (-!1381 lt!519694 k!934))))

(declare-fun lt!519703 () V!43813)

(assert (=> b!1157276 (= (-!1381 (+!3635 lt!519689 (tuple2!18599 (select (arr!36057 _keys!1208) from!1455) lt!519703)) (select (arr!36057 _keys!1208) from!1455)) lt!519689)))

(declare-fun lt!519684 () Unit!38013)

(declare-fun addThenRemoveForNewKeyIsSame!222 (ListLongMap!16579 (_ BitVec 64) V!43813) Unit!38013)

(assert (=> b!1157276 (= lt!519684 (addThenRemoveForNewKeyIsSame!222 lt!519689 (select (arr!36057 _keys!1208) from!1455) lt!519703))))

(declare-fun lt!519692 () V!43813)

(declare-fun get!18404 (ValueCell!13798 V!43813) V!43813)

(assert (=> b!1157276 (= lt!519703 (get!18404 (select (arr!36058 _values!996) from!1455) lt!519692))))

(declare-fun lt!519691 () Unit!38013)

(assert (=> b!1157276 (= lt!519691 e!658167)))

(declare-fun c!115171 () Bool)

(assert (=> b!1157276 (= c!115171 (contains!6791 lt!519689 k!934))))

(assert (=> b!1157276 (= lt!519689 (getCurrentListMapNoExtraKeys!4742 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!768624 () Bool)

(assert (=> start!98916 (=> (not res!768624) (not e!658169))))

(assert (=> start!98916 (= res!768624 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36594 _keys!1208))))))

(assert (=> start!98916 e!658169))

(assert (=> start!98916 tp_is_empty!29015))

(declare-fun array_inv!27466 (array!74820) Bool)

(assert (=> start!98916 (array_inv!27466 _keys!1208)))

(assert (=> start!98916 true))

(assert (=> start!98916 tp!86167))

(declare-fun e!658154 () Bool)

(declare-fun array_inv!27467 (array!74822) Bool)

(assert (=> start!98916 (and (array_inv!27467 _values!996) e!658154)))

(declare-fun bm!55359 () Bool)

(declare-fun addStillContains!931 (ListLongMap!16579 (_ BitVec 64) V!43813 (_ BitVec 64)) Unit!38013)

(assert (=> bm!55359 (= call!55368 (addStillContains!931 (ite c!115173 lt!519690 lt!519689) (ite c!115173 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115176 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115173 minValue!944 (ite c!115176 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1157277 () Bool)

(assert (=> b!1157277 (contains!6791 (+!3635 lt!519690 (tuple2!18599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!519688 () Unit!38013)

(assert (=> b!1157277 (= lt!519688 call!55368)))

(assert (=> b!1157277 call!55362))

(assert (=> b!1157277 (= lt!519690 call!55364)))

(declare-fun lt!519685 () Unit!38013)

(assert (=> b!1157277 (= lt!519685 (addStillContains!931 lt!519689 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1157277 (= e!658162 lt!519688)))

(declare-fun b!1157278 () Bool)

(declare-fun res!768628 () Bool)

(assert (=> b!1157278 (=> (not res!768628) (not e!658169))))

(assert (=> b!1157278 (= res!768628 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36594 _keys!1208))))))

(declare-fun b!1157279 () Bool)

(declare-fun res!768635 () Bool)

(assert (=> b!1157279 (=> (not res!768635) (not e!658169))))

(assert (=> b!1157279 (= res!768635 (and (= (size!36595 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36594 _keys!1208) (size!36595 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1157280 () Bool)

(assert (=> b!1157280 (= e!658164 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!519700) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1157281 () Bool)

(declare-fun e!658156 () Bool)

(assert (=> b!1157281 (= e!658156 e!658170)))

(declare-fun res!768634 () Bool)

(assert (=> b!1157281 (=> res!768634 e!658170)))

(assert (=> b!1157281 (= res!768634 (not (= (select (arr!36057 _keys!1208) from!1455) k!934)))))

(assert (=> b!1157281 e!658168))

(declare-fun c!115175 () Bool)

(assert (=> b!1157281 (= c!115175 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519698 () Unit!38013)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!608 (array!74820 array!74822 (_ BitVec 32) (_ BitVec 32) V!43813 V!43813 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38013)

(assert (=> b!1157281 (= lt!519698 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!608 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45347 () Bool)

(declare-fun mapRes!45347 () Bool)

(assert (=> mapIsEmpty!45347 mapRes!45347))

(declare-fun mapNonEmpty!45347 () Bool)

(declare-fun tp!86166 () Bool)

(assert (=> mapNonEmpty!45347 (= mapRes!45347 (and tp!86166 e!658157))))

(declare-fun mapRest!45347 () (Array (_ BitVec 32) ValueCell!13798))

(declare-fun mapValue!45347 () ValueCell!13798)

(declare-fun mapKey!45347 () (_ BitVec 32))

(assert (=> mapNonEmpty!45347 (= (arr!36058 _values!996) (store mapRest!45347 mapKey!45347 mapValue!45347))))

(declare-fun b!1157282 () Bool)

(assert (=> b!1157282 (= e!658160 e!658156)))

(declare-fun res!768638 () Bool)

(assert (=> b!1157282 (=> res!768638 e!658156)))

(assert (=> b!1157282 (= res!768638 (not (= from!1455 i!673)))))

(declare-fun lt!519702 () ListLongMap!16579)

(assert (=> b!1157282 (= lt!519702 (getCurrentListMapNoExtraKeys!4742 lt!519686 lt!519693 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1157282 (= lt!519693 (array!74823 (store (arr!36058 _values!996) i!673 (ValueCellFull!13798 lt!519692)) (size!36595 _values!996)))))

(declare-fun dynLambda!2753 (Int (_ BitVec 64)) V!43813)

(assert (=> b!1157282 (= lt!519692 (dynLambda!2753 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1157282 (= lt!519694 (getCurrentListMapNoExtraKeys!4742 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1157283 () Bool)

(declare-fun res!768637 () Bool)

(assert (=> b!1157283 (=> (not res!768637) (not e!658169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1157283 (= res!768637 (validMask!0 mask!1564))))

(declare-fun b!1157284 () Bool)

(assert (=> b!1157284 (= e!658154 (and e!658155 mapRes!45347))))

(declare-fun condMapEmpty!45347 () Bool)

(declare-fun mapDefault!45347 () ValueCell!13798)

