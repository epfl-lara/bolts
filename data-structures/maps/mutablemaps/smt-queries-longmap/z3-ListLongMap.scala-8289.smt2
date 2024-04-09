; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101044 () Bool)

(assert start!101044)

(declare-fun b_free!26007 () Bool)

(declare-fun b_next!26007 () Bool)

(assert (=> start!101044 (= b_free!26007 (not b_next!26007))))

(declare-fun tp!91038 () Bool)

(declare-fun b_and!43105 () Bool)

(assert (=> start!101044 (= tp!91038 b_and!43105)))

(declare-fun b!1209960 () Bool)

(declare-fun res!804160 () Bool)

(declare-fun e!687218 () Bool)

(assert (=> b!1209960 (=> (not res!804160) (not e!687218))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1209960 (= res!804160 (validMask!0 mask!1564))))

(declare-fun b!1209961 () Bool)

(declare-fun e!687212 () Bool)

(assert (=> b!1209961 (= e!687218 e!687212)))

(declare-fun res!804161 () Bool)

(assert (=> b!1209961 (=> (not res!804161) (not e!687212))))

(declare-datatypes ((array!78182 0))(
  ( (array!78183 (arr!37724 (Array (_ BitVec 32) (_ BitVec 64))) (size!38261 (_ BitVec 32))) )
))
(declare-fun lt!549266 () array!78182)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78182 (_ BitVec 32)) Bool)

(assert (=> b!1209961 (= res!804161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!549266 mask!1564))))

(declare-fun _keys!1208 () array!78182)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1209961 (= lt!549266 (array!78183 (store (arr!37724 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38261 _keys!1208)))))

(declare-fun call!59529 () Bool)

(declare-fun bm!59520 () Bool)

(declare-fun c!119120 () Bool)

(declare-datatypes ((V!46075 0))(
  ( (V!46076 (val!15412 Int)) )
))
(declare-datatypes ((tuple2!19924 0))(
  ( (tuple2!19925 (_1!9972 (_ BitVec 64)) (_2!9972 V!46075)) )
))
(declare-datatypes ((List!26744 0))(
  ( (Nil!26741) (Cons!26740 (h!27949 tuple2!19924) (t!39738 List!26744)) )
))
(declare-datatypes ((ListLongMap!17905 0))(
  ( (ListLongMap!17906 (toList!8968 List!26744)) )
))
(declare-fun lt!549277 () ListLongMap!17905)

(declare-fun call!59526 () ListLongMap!17905)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6982 (ListLongMap!17905 (_ BitVec 64)) Bool)

(assert (=> bm!59520 (= call!59529 (contains!6982 (ite c!119120 lt!549277 call!59526) k0!934))))

(declare-fun b!1209962 () Bool)

(declare-fun call!59524 () ListLongMap!17905)

(declare-fun call!59528 () ListLongMap!17905)

(declare-fun e!687219 () Bool)

(declare-fun -!1869 (ListLongMap!17905 (_ BitVec 64)) ListLongMap!17905)

(assert (=> b!1209962 (= e!687219 (= call!59524 (-!1869 call!59528 k0!934)))))

(declare-fun b!1209963 () Bool)

(declare-datatypes ((Unit!40022 0))(
  ( (Unit!40023) )
))
(declare-fun e!687211 () Unit!40022)

(declare-fun lt!549282 () Unit!40022)

(assert (=> b!1209963 (= e!687211 lt!549282)))

(declare-fun call!59530 () Unit!40022)

(assert (=> b!1209963 (= lt!549282 call!59530)))

(declare-fun call!59527 () Bool)

(assert (=> b!1209963 call!59527))

(declare-fun bm!59521 () Bool)

(declare-fun call!59525 () ListLongMap!17905)

(assert (=> bm!59521 (= call!59526 call!59525)))

(declare-fun b!1209964 () Bool)

(declare-fun res!804164 () Bool)

(assert (=> b!1209964 (=> (not res!804164) (not e!687212))))

(declare-datatypes ((List!26745 0))(
  ( (Nil!26742) (Cons!26741 (h!27950 (_ BitVec 64)) (t!39739 List!26745)) )
))
(declare-fun arrayNoDuplicates!0 (array!78182 (_ BitVec 32) List!26745) Bool)

(assert (=> b!1209964 (= res!804164 (arrayNoDuplicates!0 lt!549266 #b00000000000000000000000000000000 Nil!26742))))

(declare-fun bm!59523 () Bool)

(declare-fun call!59523 () Unit!40022)

(assert (=> bm!59523 (= call!59530 call!59523)))

(declare-fun b!1209965 () Bool)

(declare-fun c!119124 () Bool)

(declare-fun lt!549276 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1209965 (= c!119124 (and (not lt!549276) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!687213 () Unit!40022)

(assert (=> b!1209965 (= e!687213 e!687211)))

(declare-fun b!1209966 () Bool)

(declare-fun e!687215 () Unit!40022)

(declare-fun Unit!40024 () Unit!40022)

(assert (=> b!1209966 (= e!687215 Unit!40024)))

(assert (=> b!1209966 (= lt!549276 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1209966 (= c!119120 (and (not lt!549276) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549280 () Unit!40022)

(assert (=> b!1209966 (= lt!549280 e!687213)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!549272 () Unit!40022)

(declare-datatypes ((ValueCell!14646 0))(
  ( (ValueCellFull!14646 (v!18064 V!46075)) (EmptyCell!14646) )
))
(declare-datatypes ((array!78184 0))(
  ( (array!78185 (arr!37725 (Array (_ BitVec 32) ValueCell!14646)) (size!38262 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78184)

(declare-fun minValue!944 () V!46075)

(declare-fun zeroValue!944 () V!46075)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!595 (array!78182 array!78184 (_ BitVec 32) (_ BitVec 32) V!46075 V!46075 (_ BitVec 64) (_ BitVec 32) Int) Unit!40022)

(assert (=> b!1209966 (= lt!549272 (lemmaListMapContainsThenArrayContainsFrom!595 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119119 () Bool)

(assert (=> b!1209966 (= c!119119 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804163 () Bool)

(declare-fun e!687220 () Bool)

(assert (=> b!1209966 (= res!804163 e!687220)))

(declare-fun e!687214 () Bool)

(assert (=> b!1209966 (=> (not res!804163) (not e!687214))))

(assert (=> b!1209966 e!687214))

(declare-fun lt!549269 () Unit!40022)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78182 (_ BitVec 32) (_ BitVec 32)) Unit!40022)

(assert (=> b!1209966 (= lt!549269 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1209966 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26742)))

(declare-fun lt!549273 () Unit!40022)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78182 (_ BitVec 64) (_ BitVec 32) List!26745) Unit!40022)

(assert (=> b!1209966 (= lt!549273 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26742))))

(assert (=> b!1209966 false))

(declare-fun b!1209967 () Bool)

(declare-fun res!804171 () Bool)

(assert (=> b!1209967 (=> (not res!804171) (not e!687218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209967 (= res!804171 (validKeyInArray!0 k0!934))))

(declare-fun b!1209968 () Bool)

(assert (=> b!1209968 (= e!687219 (= call!59524 call!59528))))

(declare-fun bm!59524 () Bool)

(declare-fun lt!549271 () ListLongMap!17905)

(declare-fun addStillContains!1059 (ListLongMap!17905 (_ BitVec 64) V!46075 (_ BitVec 64)) Unit!40022)

(assert (=> bm!59524 (= call!59523 (addStillContains!1059 (ite c!119120 lt!549277 lt!549271) (ite c!119120 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!119124 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!119120 minValue!944 (ite c!119124 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1209969 () Bool)

(declare-fun e!687226 () Bool)

(declare-fun e!687223 () Bool)

(declare-fun mapRes!47935 () Bool)

(assert (=> b!1209969 (= e!687226 (and e!687223 mapRes!47935))))

(declare-fun condMapEmpty!47935 () Bool)

(declare-fun mapDefault!47935 () ValueCell!14646)

(assert (=> b!1209969 (= condMapEmpty!47935 (= (arr!37725 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14646)) mapDefault!47935)))))

(declare-fun b!1209970 () Bool)

(declare-fun e!687225 () Bool)

(declare-fun tp_is_empty!30711 () Bool)

(assert (=> b!1209970 (= e!687225 tp_is_empty!30711)))

(declare-fun bm!59525 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5374 (array!78182 array!78184 (_ BitVec 32) (_ BitVec 32) V!46075 V!46075 (_ BitVec 32) Int) ListLongMap!17905)

(assert (=> bm!59525 (= call!59528 (getCurrentListMapNoExtraKeys!5374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209971 () Bool)

(declare-fun e!687217 () Bool)

(declare-fun e!687216 () Bool)

(assert (=> b!1209971 (= e!687217 e!687216)))

(declare-fun res!804165 () Bool)

(assert (=> b!1209971 (=> res!804165 e!687216)))

(assert (=> b!1209971 (= res!804165 (not (= from!1455 i!673)))))

(declare-fun lt!549275 () array!78184)

(declare-fun lt!549278 () ListLongMap!17905)

(assert (=> b!1209971 (= lt!549278 (getCurrentListMapNoExtraKeys!5374 lt!549266 lt!549275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3291 (Int (_ BitVec 64)) V!46075)

(assert (=> b!1209971 (= lt!549275 (array!78185 (store (arr!37725 _values!996) i!673 (ValueCellFull!14646 (dynLambda!3291 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38262 _values!996)))))

(declare-fun lt!549274 () ListLongMap!17905)

(assert (=> b!1209971 (= lt!549274 (getCurrentListMapNoExtraKeys!5374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!47935 () Bool)

(declare-fun tp!91037 () Bool)

(assert (=> mapNonEmpty!47935 (= mapRes!47935 (and tp!91037 e!687225))))

(declare-fun mapRest!47935 () (Array (_ BitVec 32) ValueCell!14646))

(declare-fun mapKey!47935 () (_ BitVec 32))

(declare-fun mapValue!47935 () ValueCell!14646)

(assert (=> mapNonEmpty!47935 (= (arr!37725 _values!996) (store mapRest!47935 mapKey!47935 mapValue!47935))))

(declare-fun b!1209972 () Bool)

(declare-fun e!687222 () Bool)

(assert (=> b!1209972 (= e!687216 e!687222)))

(declare-fun res!804173 () Bool)

(assert (=> b!1209972 (=> res!804173 e!687222)))

(assert (=> b!1209972 (= res!804173 (not (= (select (arr!37724 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1209972 e!687219))

(declare-fun c!119123 () Bool)

(assert (=> b!1209972 (= c!119123 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549281 () Unit!40022)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1076 (array!78182 array!78184 (_ BitVec 32) (_ BitVec 32) V!46075 V!46075 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40022)

(assert (=> b!1209972 (= lt!549281 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1076 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209973 () Bool)

(declare-fun res!804162 () Bool)

(assert (=> b!1209973 (=> (not res!804162) (not e!687218))))

(assert (=> b!1209973 (= res!804162 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26742))))

(declare-fun b!1209974 () Bool)

(declare-fun res!804166 () Bool)

(assert (=> b!1209974 (=> (not res!804166) (not e!687218))))

(assert (=> b!1209974 (= res!804166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!59526 () Bool)

(assert (=> bm!59526 (= call!59527 call!59529)))

(declare-fun b!1209975 () Bool)

(assert (=> b!1209975 call!59527))

(declare-fun lt!549268 () Unit!40022)

(assert (=> b!1209975 (= lt!549268 call!59530)))

(declare-fun e!687221 () Unit!40022)

(assert (=> b!1209975 (= e!687221 lt!549268)))

(declare-fun b!1209976 () Bool)

(assert (=> b!1209976 (= e!687211 e!687221)))

(declare-fun c!119122 () Bool)

(assert (=> b!1209976 (= c!119122 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549276))))

(declare-fun b!1209977 () Bool)

(declare-fun Unit!40025 () Unit!40022)

(assert (=> b!1209977 (= e!687221 Unit!40025)))

(declare-fun b!1209978 () Bool)

(declare-fun res!804167 () Bool)

(assert (=> b!1209978 (=> (not res!804167) (not e!687218))))

(assert (=> b!1209978 (= res!804167 (and (= (size!38262 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38261 _keys!1208) (size!38262 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1209979 () Bool)

(declare-fun Unit!40026 () Unit!40022)

(assert (=> b!1209979 (= e!687215 Unit!40026)))

(declare-fun b!1209980 () Bool)

(declare-fun arrayContainsKey!0 (array!78182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209980 (= e!687220 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209981 () Bool)

(assert (=> b!1209981 (= e!687220 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!549276) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1209982 () Bool)

(assert (=> b!1209982 (contains!6982 call!59525 k0!934)))

(declare-fun lt!549270 () Unit!40022)

(assert (=> b!1209982 (= lt!549270 call!59523)))

(assert (=> b!1209982 call!59529))

(declare-fun +!3995 (ListLongMap!17905 tuple2!19924) ListLongMap!17905)

(assert (=> b!1209982 (= lt!549277 (+!3995 lt!549271 (tuple2!19925 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!549279 () Unit!40022)

(assert (=> b!1209982 (= lt!549279 (addStillContains!1059 lt!549271 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1209982 (= e!687213 lt!549270)))

(declare-fun mapIsEmpty!47935 () Bool)

(assert (=> mapIsEmpty!47935 mapRes!47935))

(declare-fun b!1209983 () Bool)

(declare-fun res!804170 () Bool)

(assert (=> b!1209983 (=> (not res!804170) (not e!687218))))

(assert (=> b!1209983 (= res!804170 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38261 _keys!1208))))))

(declare-fun b!1209984 () Bool)

(declare-fun res!804172 () Bool)

(assert (=> b!1209984 (=> (not res!804172) (not e!687218))))

(assert (=> b!1209984 (= res!804172 (= (select (arr!37724 _keys!1208) i!673) k0!934))))

(declare-fun b!1209985 () Bool)

(assert (=> b!1209985 (= e!687214 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!804168 () Bool)

(assert (=> start!101044 (=> (not res!804168) (not e!687218))))

(assert (=> start!101044 (= res!804168 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38261 _keys!1208))))))

(assert (=> start!101044 e!687218))

(assert (=> start!101044 tp_is_empty!30711))

(declare-fun array_inv!28638 (array!78182) Bool)

(assert (=> start!101044 (array_inv!28638 _keys!1208)))

(assert (=> start!101044 true))

(assert (=> start!101044 tp!91038))

(declare-fun array_inv!28639 (array!78184) Bool)

(assert (=> start!101044 (and (array_inv!28639 _values!996) e!687226)))

(declare-fun bm!59522 () Bool)

(assert (=> bm!59522 (= call!59525 (+!3995 (ite c!119120 lt!549277 lt!549271) (ite c!119120 (tuple2!19925 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119124 (tuple2!19925 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19925 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1209986 () Bool)

(assert (=> b!1209986 (= e!687223 tp_is_empty!30711)))

(declare-fun bm!59527 () Bool)

(assert (=> bm!59527 (= call!59524 (getCurrentListMapNoExtraKeys!5374 lt!549266 lt!549275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209987 () Bool)

(assert (=> b!1209987 (= e!687222 (bvslt from!1455 (size!38261 _keys!1208)))))

(declare-fun lt!549267 () Unit!40022)

(assert (=> b!1209987 (= lt!549267 e!687215)))

(declare-fun c!119121 () Bool)

(assert (=> b!1209987 (= c!119121 (contains!6982 lt!549271 k0!934))))

(assert (=> b!1209987 (= lt!549271 (getCurrentListMapNoExtraKeys!5374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209988 () Bool)

(assert (=> b!1209988 (= e!687212 (not e!687217))))

(declare-fun res!804169 () Bool)

(assert (=> b!1209988 (=> res!804169 e!687217)))

(assert (=> b!1209988 (= res!804169 (bvsgt from!1455 i!673))))

(assert (=> b!1209988 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!549265 () Unit!40022)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78182 (_ BitVec 64) (_ BitVec 32)) Unit!40022)

(assert (=> b!1209988 (= lt!549265 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!101044 res!804168) b!1209960))

(assert (= (and b!1209960 res!804160) b!1209978))

(assert (= (and b!1209978 res!804167) b!1209974))

(assert (= (and b!1209974 res!804166) b!1209973))

(assert (= (and b!1209973 res!804162) b!1209983))

(assert (= (and b!1209983 res!804170) b!1209967))

(assert (= (and b!1209967 res!804171) b!1209984))

(assert (= (and b!1209984 res!804172) b!1209961))

(assert (= (and b!1209961 res!804161) b!1209964))

(assert (= (and b!1209964 res!804164) b!1209988))

(assert (= (and b!1209988 (not res!804169)) b!1209971))

(assert (= (and b!1209971 (not res!804165)) b!1209972))

(assert (= (and b!1209972 c!119123) b!1209962))

(assert (= (and b!1209972 (not c!119123)) b!1209968))

(assert (= (or b!1209962 b!1209968) bm!59525))

(assert (= (or b!1209962 b!1209968) bm!59527))

(assert (= (and b!1209972 (not res!804173)) b!1209987))

(assert (= (and b!1209987 c!119121) b!1209966))

(assert (= (and b!1209987 (not c!119121)) b!1209979))

(assert (= (and b!1209966 c!119120) b!1209982))

(assert (= (and b!1209966 (not c!119120)) b!1209965))

(assert (= (and b!1209965 c!119124) b!1209963))

(assert (= (and b!1209965 (not c!119124)) b!1209976))

(assert (= (and b!1209976 c!119122) b!1209975))

(assert (= (and b!1209976 (not c!119122)) b!1209977))

(assert (= (or b!1209963 b!1209975) bm!59523))

(assert (= (or b!1209963 b!1209975) bm!59521))

(assert (= (or b!1209963 b!1209975) bm!59526))

(assert (= (or b!1209982 bm!59526) bm!59520))

(assert (= (or b!1209982 bm!59523) bm!59524))

(assert (= (or b!1209982 bm!59521) bm!59522))

(assert (= (and b!1209966 c!119119) b!1209980))

(assert (= (and b!1209966 (not c!119119)) b!1209981))

(assert (= (and b!1209966 res!804163) b!1209985))

(assert (= (and b!1209969 condMapEmpty!47935) mapIsEmpty!47935))

(assert (= (and b!1209969 (not condMapEmpty!47935)) mapNonEmpty!47935))

(get-info :version)

(assert (= (and mapNonEmpty!47935 ((_ is ValueCellFull!14646) mapValue!47935)) b!1209970))

(assert (= (and b!1209969 ((_ is ValueCellFull!14646) mapDefault!47935)) b!1209986))

(assert (= start!101044 b!1209969))

(declare-fun b_lambda!21617 () Bool)

(assert (=> (not b_lambda!21617) (not b!1209971)))

(declare-fun t!39737 () Bool)

(declare-fun tb!10815 () Bool)

(assert (=> (and start!101044 (= defaultEntry!1004 defaultEntry!1004) t!39737) tb!10815))

(declare-fun result!22215 () Bool)

(assert (=> tb!10815 (= result!22215 tp_is_empty!30711)))

(assert (=> b!1209971 t!39737))

(declare-fun b_and!43107 () Bool)

(assert (= b_and!43105 (and (=> t!39737 result!22215) b_and!43107)))

(declare-fun m!1115599 () Bool)

(assert (=> b!1209985 m!1115599))

(declare-fun m!1115601 () Bool)

(assert (=> bm!59524 m!1115601))

(declare-fun m!1115603 () Bool)

(assert (=> bm!59525 m!1115603))

(declare-fun m!1115605 () Bool)

(assert (=> bm!59520 m!1115605))

(assert (=> b!1209980 m!1115599))

(declare-fun m!1115607 () Bool)

(assert (=> b!1209972 m!1115607))

(declare-fun m!1115609 () Bool)

(assert (=> b!1209972 m!1115609))

(declare-fun m!1115611 () Bool)

(assert (=> b!1209966 m!1115611))

(declare-fun m!1115613 () Bool)

(assert (=> b!1209966 m!1115613))

(declare-fun m!1115615 () Bool)

(assert (=> b!1209966 m!1115615))

(declare-fun m!1115617 () Bool)

(assert (=> b!1209966 m!1115617))

(declare-fun m!1115619 () Bool)

(assert (=> b!1209964 m!1115619))

(declare-fun m!1115621 () Bool)

(assert (=> b!1209961 m!1115621))

(declare-fun m!1115623 () Bool)

(assert (=> b!1209961 m!1115623))

(declare-fun m!1115625 () Bool)

(assert (=> mapNonEmpty!47935 m!1115625))

(declare-fun m!1115627 () Bool)

(assert (=> b!1209988 m!1115627))

(declare-fun m!1115629 () Bool)

(assert (=> b!1209988 m!1115629))

(declare-fun m!1115631 () Bool)

(assert (=> b!1209982 m!1115631))

(declare-fun m!1115633 () Bool)

(assert (=> b!1209982 m!1115633))

(declare-fun m!1115635 () Bool)

(assert (=> b!1209982 m!1115635))

(declare-fun m!1115637 () Bool)

(assert (=> start!101044 m!1115637))

(declare-fun m!1115639 () Bool)

(assert (=> start!101044 m!1115639))

(declare-fun m!1115641 () Bool)

(assert (=> b!1209974 m!1115641))

(declare-fun m!1115643 () Bool)

(assert (=> b!1209987 m!1115643))

(assert (=> b!1209987 m!1115603))

(declare-fun m!1115645 () Bool)

(assert (=> b!1209960 m!1115645))

(declare-fun m!1115647 () Bool)

(assert (=> b!1209971 m!1115647))

(declare-fun m!1115649 () Bool)

(assert (=> b!1209971 m!1115649))

(declare-fun m!1115651 () Bool)

(assert (=> b!1209971 m!1115651))

(declare-fun m!1115653 () Bool)

(assert (=> b!1209971 m!1115653))

(declare-fun m!1115655 () Bool)

(assert (=> b!1209984 m!1115655))

(declare-fun m!1115657 () Bool)

(assert (=> bm!59527 m!1115657))

(declare-fun m!1115659 () Bool)

(assert (=> b!1209967 m!1115659))

(declare-fun m!1115661 () Bool)

(assert (=> b!1209973 m!1115661))

(declare-fun m!1115663 () Bool)

(assert (=> bm!59522 m!1115663))

(declare-fun m!1115665 () Bool)

(assert (=> b!1209962 m!1115665))

(check-sat b_and!43107 (not b!1209982) (not b!1209971) (not b!1209974) (not b!1209973) (not bm!59520) (not b!1209980) (not b!1209960) (not b!1209987) (not bm!59524) tp_is_empty!30711 (not b!1209972) (not start!101044) (not b!1209964) (not b!1209988) (not bm!59522) (not b!1209961) (not bm!59525) (not b!1209985) (not mapNonEmpty!47935) (not b_lambda!21617) (not b_next!26007) (not b!1209967) (not bm!59527) (not b!1209966) (not b!1209962))
(check-sat b_and!43107 (not b_next!26007))
