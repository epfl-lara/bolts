; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98494 () Bool)

(assert start!98494)

(declare-fun b_free!24063 () Bool)

(declare-fun b_next!24063 () Bool)

(assert (=> start!98494 (= b_free!24063 (not b_next!24063))))

(declare-fun tp!84901 () Bool)

(declare-fun b_and!38989 () Bool)

(assert (=> start!98494 (= tp!84901 b_and!38989)))

(declare-fun b!1138048 () Bool)

(declare-fun e!647605 () Bool)

(declare-fun e!647610 () Bool)

(assert (=> b!1138048 (= e!647605 (not e!647610))))

(declare-fun res!759334 () Bool)

(assert (=> b!1138048 (=> res!759334 e!647610)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1138048 (= res!759334 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74004 0))(
  ( (array!74005 (arr!35649 (Array (_ BitVec 32) (_ BitVec 64))) (size!36186 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74004)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138048 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37233 0))(
  ( (Unit!37234) )
))
(declare-fun lt!506236 () Unit!37233)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74004 (_ BitVec 64) (_ BitVec 32)) Unit!37233)

(assert (=> b!1138048 (= lt!506236 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1138049 () Bool)

(declare-datatypes ((V!43251 0))(
  ( (V!43252 (val!14353 Int)) )
))
(declare-datatypes ((tuple2!18222 0))(
  ( (tuple2!18223 (_1!9121 (_ BitVec 64)) (_2!9121 V!43251)) )
))
(declare-datatypes ((List!25028 0))(
  ( (Nil!25025) (Cons!25024 (h!26233 tuple2!18222) (t!36090 List!25028)) )
))
(declare-datatypes ((ListLongMap!16203 0))(
  ( (ListLongMap!16204 (toList!8117 List!25028)) )
))
(declare-fun call!50298 () ListLongMap!16203)

(declare-fun e!647608 () Bool)

(declare-fun call!50302 () ListLongMap!16203)

(declare-fun -!1223 (ListLongMap!16203 (_ BitVec 64)) ListLongMap!16203)

(assert (=> b!1138049 (= e!647608 (= call!50302 (-!1223 call!50298 k0!934)))))

(declare-fun b!1138050 () Bool)

(declare-fun call!50299 () Bool)

(assert (=> b!1138050 call!50299))

(declare-fun lt!506247 () Unit!37233)

(declare-fun call!50301 () Unit!37233)

(assert (=> b!1138050 (= lt!506247 call!50301)))

(declare-fun e!647607 () Unit!37233)

(assert (=> b!1138050 (= e!647607 lt!506247)))

(declare-fun b!1138051 () Bool)

(declare-fun e!647599 () Bool)

(assert (=> b!1138051 (= e!647599 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138052 () Bool)

(declare-fun e!647609 () Bool)

(assert (=> b!1138052 (= e!647609 e!647605)))

(declare-fun res!759341 () Bool)

(assert (=> b!1138052 (=> (not res!759341) (not e!647605))))

(declare-fun lt!506243 () array!74004)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74004 (_ BitVec 32)) Bool)

(assert (=> b!1138052 (= res!759341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506243 mask!1564))))

(assert (=> b!1138052 (= lt!506243 (array!74005 (store (arr!35649 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36186 _keys!1208)))))

(declare-fun b!1138053 () Bool)

(declare-fun res!759335 () Bool)

(assert (=> b!1138053 (=> (not res!759335) (not e!647609))))

(declare-datatypes ((List!25029 0))(
  ( (Nil!25026) (Cons!25025 (h!26234 (_ BitVec 64)) (t!36091 List!25029)) )
))
(declare-fun arrayNoDuplicates!0 (array!74004 (_ BitVec 32) List!25029) Bool)

(assert (=> b!1138053 (= res!759335 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25026))))

(declare-fun b!1138054 () Bool)

(declare-fun res!759331 () Bool)

(assert (=> b!1138054 (=> (not res!759331) (not e!647609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138054 (= res!759331 (validKeyInArray!0 k0!934))))

(declare-fun b!1138055 () Bool)

(declare-fun e!647606 () Unit!37233)

(declare-fun Unit!37235 () Unit!37233)

(assert (=> b!1138055 (= e!647606 Unit!37235)))

(declare-fun lt!506241 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1138055 (= lt!506241 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111374 () Bool)

(assert (=> b!1138055 (= c!111374 (and (not lt!506241) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506233 () Unit!37233)

(declare-fun e!647604 () Unit!37233)

(assert (=> b!1138055 (= lt!506233 e!647604)))

(declare-fun zeroValue!944 () V!43251)

(declare-fun lt!506249 () Unit!37233)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13587 0))(
  ( (ValueCellFull!13587 (v!16991 V!43251)) (EmptyCell!13587) )
))
(declare-datatypes ((array!74006 0))(
  ( (array!74007 (arr!35650 (Array (_ BitVec 32) ValueCell!13587)) (size!36187 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74006)

(declare-fun minValue!944 () V!43251)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!373 (array!74004 array!74006 (_ BitVec 32) (_ BitVec 32) V!43251 V!43251 (_ BitVec 64) (_ BitVec 32) Int) Unit!37233)

(assert (=> b!1138055 (= lt!506249 (lemmaListMapContainsThenArrayContainsFrom!373 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111377 () Bool)

(assert (=> b!1138055 (= c!111377 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759343 () Bool)

(assert (=> b!1138055 (= res!759343 e!647599)))

(declare-fun e!647598 () Bool)

(assert (=> b!1138055 (=> (not res!759343) (not e!647598))))

(assert (=> b!1138055 e!647598))

(declare-fun lt!506234 () Unit!37233)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74004 (_ BitVec 32) (_ BitVec 32)) Unit!37233)

(assert (=> b!1138055 (= lt!506234 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1138055 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25026)))

(declare-fun lt!506240 () Unit!37233)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74004 (_ BitVec 64) (_ BitVec 32) List!25029) Unit!37233)

(assert (=> b!1138055 (= lt!506240 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25026))))

(assert (=> b!1138055 false))

(declare-fun b!1138056 () Bool)

(declare-fun res!759337 () Bool)

(assert (=> b!1138056 (=> (not res!759337) (not e!647609))))

(assert (=> b!1138056 (= res!759337 (= (select (arr!35649 _keys!1208) i!673) k0!934))))

(declare-fun bm!50294 () Bool)

(declare-fun call!50303 () Unit!37233)

(declare-fun lt!506244 () ListLongMap!16203)

(declare-fun c!111376 () Bool)

(declare-fun addStillContains!768 (ListLongMap!16203 (_ BitVec 64) V!43251 (_ BitVec 64)) Unit!37233)

(assert (=> bm!50294 (= call!50303 (addStillContains!768 lt!506244 (ite (or c!111374 c!111376) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111374 c!111376) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1138057 () Bool)

(declare-fun e!647596 () Bool)

(declare-fun e!647602 () Bool)

(assert (=> b!1138057 (= e!647596 e!647602)))

(declare-fun res!759342 () Bool)

(assert (=> b!1138057 (=> res!759342 e!647602)))

(assert (=> b!1138057 (= res!759342 (not (= (select (arr!35649 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1138057 e!647608))

(declare-fun c!111375 () Bool)

(assert (=> b!1138057 (= c!111375 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506248 () Unit!37233)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!480 (array!74004 array!74006 (_ BitVec 32) (_ BitVec 32) V!43251 V!43251 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37233)

(assert (=> b!1138057 (= lt!506248 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!480 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138058 () Bool)

(declare-fun Unit!37236 () Unit!37233)

(assert (=> b!1138058 (= e!647607 Unit!37236)))

(declare-fun b!1138059 () Bool)

(assert (=> b!1138059 (= e!647598 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!50296 () Bool)

(declare-fun call!50300 () ListLongMap!16203)

(declare-fun call!50304 () ListLongMap!16203)

(assert (=> bm!50296 (= call!50300 call!50304)))

(declare-fun b!1138060 () Bool)

(declare-fun e!647597 () Unit!37233)

(assert (=> b!1138060 (= e!647597 e!647607)))

(declare-fun c!111378 () Bool)

(assert (=> b!1138060 (= c!111378 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506241))))

(declare-fun b!1138061 () Bool)

(declare-fun e!647595 () Bool)

(declare-fun e!647603 () Bool)

(declare-fun mapRes!44714 () Bool)

(assert (=> b!1138061 (= e!647595 (and e!647603 mapRes!44714))))

(declare-fun condMapEmpty!44714 () Bool)

(declare-fun mapDefault!44714 () ValueCell!13587)

(assert (=> b!1138061 (= condMapEmpty!44714 (= (arr!35650 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13587)) mapDefault!44714)))))

(declare-fun b!1138062 () Bool)

(declare-fun e!647600 () Bool)

(declare-fun tp_is_empty!28593 () Bool)

(assert (=> b!1138062 (= e!647600 tp_is_empty!28593)))

(declare-fun b!1138063 () Bool)

(declare-fun contains!6627 (ListLongMap!16203 (_ BitVec 64)) Bool)

(assert (=> b!1138063 (contains!6627 call!50304 k0!934)))

(declare-fun lt!506250 () ListLongMap!16203)

(declare-fun lt!506239 () Unit!37233)

(assert (=> b!1138063 (= lt!506239 (addStillContains!768 lt!506250 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!50297 () Bool)

(assert (=> b!1138063 call!50297))

(declare-fun +!3468 (ListLongMap!16203 tuple2!18222) ListLongMap!16203)

(assert (=> b!1138063 (= lt!506250 (+!3468 lt!506244 (tuple2!18223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506246 () Unit!37233)

(assert (=> b!1138063 (= lt!506246 call!50303)))

(assert (=> b!1138063 (= e!647604 lt!506239)))

(declare-fun bm!50297 () Bool)

(assert (=> bm!50297 (= call!50304 (+!3468 (ite c!111374 lt!506250 lt!506244) (ite c!111374 (tuple2!18223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111376 (tuple2!18223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1138064 () Bool)

(declare-fun res!759338 () Bool)

(assert (=> b!1138064 (=> (not res!759338) (not e!647609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1138064 (= res!759338 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44714 () Bool)

(assert (=> mapIsEmpty!44714 mapRes!44714))

(declare-fun bm!50298 () Bool)

(declare-fun lt!506235 () array!74006)

(declare-fun getCurrentListMapNoExtraKeys!4564 (array!74004 array!74006 (_ BitVec 32) (_ BitVec 32) V!43251 V!43251 (_ BitVec 32) Int) ListLongMap!16203)

(assert (=> bm!50298 (= call!50302 (getCurrentListMapNoExtraKeys!4564 lt!506243 lt!506235 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138065 () Bool)

(assert (=> b!1138065 (= c!111376 (and (not lt!506241) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1138065 (= e!647604 e!647597)))

(declare-fun mapNonEmpty!44714 () Bool)

(declare-fun tp!84900 () Bool)

(assert (=> mapNonEmpty!44714 (= mapRes!44714 (and tp!84900 e!647600))))

(declare-fun mapValue!44714 () ValueCell!13587)

(declare-fun mapRest!44714 () (Array (_ BitVec 32) ValueCell!13587))

(declare-fun mapKey!44714 () (_ BitVec 32))

(assert (=> mapNonEmpty!44714 (= (arr!35650 _values!996) (store mapRest!44714 mapKey!44714 mapValue!44714))))

(declare-fun b!1138066 () Bool)

(assert (=> b!1138066 (= e!647608 (= call!50302 call!50298))))

(declare-fun b!1138067 () Bool)

(declare-fun res!759336 () Bool)

(assert (=> b!1138067 (=> (not res!759336) (not e!647605))))

(assert (=> b!1138067 (= res!759336 (arrayNoDuplicates!0 lt!506243 #b00000000000000000000000000000000 Nil!25026))))

(declare-fun bm!50299 () Bool)

(assert (=> bm!50299 (= call!50298 (getCurrentListMapNoExtraKeys!4564 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138068 () Bool)

(declare-fun res!759332 () Bool)

(assert (=> b!1138068 (=> (not res!759332) (not e!647609))))

(assert (=> b!1138068 (= res!759332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50300 () Bool)

(assert (=> bm!50300 (= call!50301 call!50303)))

(declare-fun b!1138069 () Bool)

(assert (=> b!1138069 (= e!647602 true)))

(declare-fun lt!506237 () Unit!37233)

(assert (=> b!1138069 (= lt!506237 e!647606)))

(declare-fun c!111373 () Bool)

(assert (=> b!1138069 (= c!111373 (contains!6627 lt!506244 k0!934))))

(assert (=> b!1138069 (= lt!506244 (getCurrentListMapNoExtraKeys!4564 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138070 () Bool)

(assert (=> b!1138070 (= e!647610 e!647596)))

(declare-fun res!759339 () Bool)

(assert (=> b!1138070 (=> res!759339 e!647596)))

(assert (=> b!1138070 (= res!759339 (not (= from!1455 i!673)))))

(declare-fun lt!506242 () ListLongMap!16203)

(assert (=> b!1138070 (= lt!506242 (getCurrentListMapNoExtraKeys!4564 lt!506243 lt!506235 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2624 (Int (_ BitVec 64)) V!43251)

(assert (=> b!1138070 (= lt!506235 (array!74007 (store (arr!35650 _values!996) i!673 (ValueCellFull!13587 (dynLambda!2624 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36187 _values!996)))))

(declare-fun lt!506238 () ListLongMap!16203)

(assert (=> b!1138070 (= lt!506238 (getCurrentListMapNoExtraKeys!4564 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1138071 () Bool)

(declare-fun res!759340 () Bool)

(assert (=> b!1138071 (=> (not res!759340) (not e!647609))))

(assert (=> b!1138071 (= res!759340 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36186 _keys!1208))))))

(declare-fun b!1138072 () Bool)

(assert (=> b!1138072 (= e!647599 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506241) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1138073 () Bool)

(declare-fun res!759333 () Bool)

(assert (=> b!1138073 (=> (not res!759333) (not e!647609))))

(assert (=> b!1138073 (= res!759333 (and (= (size!36187 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36186 _keys!1208) (size!36187 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1138074 () Bool)

(declare-fun lt!506245 () Unit!37233)

(assert (=> b!1138074 (= e!647597 lt!506245)))

(assert (=> b!1138074 (= lt!506245 call!50301)))

(assert (=> b!1138074 call!50299))

(declare-fun bm!50301 () Bool)

(assert (=> bm!50301 (= call!50297 (contains!6627 (ite c!111374 lt!506250 call!50300) k0!934))))

(declare-fun b!1138075 () Bool)

(assert (=> b!1138075 (= e!647603 tp_is_empty!28593)))

(declare-fun b!1138076 () Bool)

(declare-fun Unit!37237 () Unit!37233)

(assert (=> b!1138076 (= e!647606 Unit!37237)))

(declare-fun bm!50295 () Bool)

(assert (=> bm!50295 (= call!50299 call!50297)))

(declare-fun res!759344 () Bool)

(assert (=> start!98494 (=> (not res!759344) (not e!647609))))

(assert (=> start!98494 (= res!759344 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36186 _keys!1208))))))

(assert (=> start!98494 e!647609))

(assert (=> start!98494 tp_is_empty!28593))

(declare-fun array_inv!27206 (array!74004) Bool)

(assert (=> start!98494 (array_inv!27206 _keys!1208)))

(assert (=> start!98494 true))

(assert (=> start!98494 tp!84901))

(declare-fun array_inv!27207 (array!74006) Bool)

(assert (=> start!98494 (and (array_inv!27207 _values!996) e!647595)))

(assert (= (and start!98494 res!759344) b!1138064))

(assert (= (and b!1138064 res!759338) b!1138073))

(assert (= (and b!1138073 res!759333) b!1138068))

(assert (= (and b!1138068 res!759332) b!1138053))

(assert (= (and b!1138053 res!759335) b!1138071))

(assert (= (and b!1138071 res!759340) b!1138054))

(assert (= (and b!1138054 res!759331) b!1138056))

(assert (= (and b!1138056 res!759337) b!1138052))

(assert (= (and b!1138052 res!759341) b!1138067))

(assert (= (and b!1138067 res!759336) b!1138048))

(assert (= (and b!1138048 (not res!759334)) b!1138070))

(assert (= (and b!1138070 (not res!759339)) b!1138057))

(assert (= (and b!1138057 c!111375) b!1138049))

(assert (= (and b!1138057 (not c!111375)) b!1138066))

(assert (= (or b!1138049 b!1138066) bm!50298))

(assert (= (or b!1138049 b!1138066) bm!50299))

(assert (= (and b!1138057 (not res!759342)) b!1138069))

(assert (= (and b!1138069 c!111373) b!1138055))

(assert (= (and b!1138069 (not c!111373)) b!1138076))

(assert (= (and b!1138055 c!111374) b!1138063))

(assert (= (and b!1138055 (not c!111374)) b!1138065))

(assert (= (and b!1138065 c!111376) b!1138074))

(assert (= (and b!1138065 (not c!111376)) b!1138060))

(assert (= (and b!1138060 c!111378) b!1138050))

(assert (= (and b!1138060 (not c!111378)) b!1138058))

(assert (= (or b!1138074 b!1138050) bm!50300))

(assert (= (or b!1138074 b!1138050) bm!50296))

(assert (= (or b!1138074 b!1138050) bm!50295))

(assert (= (or b!1138063 bm!50295) bm!50301))

(assert (= (or b!1138063 bm!50300) bm!50294))

(assert (= (or b!1138063 bm!50296) bm!50297))

(assert (= (and b!1138055 c!111377) b!1138051))

(assert (= (and b!1138055 (not c!111377)) b!1138072))

(assert (= (and b!1138055 res!759343) b!1138059))

(assert (= (and b!1138061 condMapEmpty!44714) mapIsEmpty!44714))

(assert (= (and b!1138061 (not condMapEmpty!44714)) mapNonEmpty!44714))

(get-info :version)

(assert (= (and mapNonEmpty!44714 ((_ is ValueCellFull!13587) mapValue!44714)) b!1138062))

(assert (= (and b!1138061 ((_ is ValueCellFull!13587) mapDefault!44714)) b!1138075))

(assert (= start!98494 b!1138061))

(declare-fun b_lambda!19187 () Bool)

(assert (=> (not b_lambda!19187) (not b!1138070)))

(declare-fun t!36089 () Bool)

(declare-fun tb!8883 () Bool)

(assert (=> (and start!98494 (= defaultEntry!1004 defaultEntry!1004) t!36089) tb!8883))

(declare-fun result!18323 () Bool)

(assert (=> tb!8883 (= result!18323 tp_is_empty!28593)))

(assert (=> b!1138070 t!36089))

(declare-fun b_and!38991 () Bool)

(assert (= b_and!38989 (and (=> t!36089 result!18323) b_and!38991)))

(declare-fun m!1050035 () Bool)

(assert (=> start!98494 m!1050035))

(declare-fun m!1050037 () Bool)

(assert (=> start!98494 m!1050037))

(declare-fun m!1050039 () Bool)

(assert (=> b!1138052 m!1050039))

(declare-fun m!1050041 () Bool)

(assert (=> b!1138052 m!1050041))

(declare-fun m!1050043 () Bool)

(assert (=> b!1138068 m!1050043))

(declare-fun m!1050045 () Bool)

(assert (=> bm!50294 m!1050045))

(declare-fun m!1050047 () Bool)

(assert (=> b!1138051 m!1050047))

(declare-fun m!1050049 () Bool)

(assert (=> b!1138063 m!1050049))

(declare-fun m!1050051 () Bool)

(assert (=> b!1138063 m!1050051))

(declare-fun m!1050053 () Bool)

(assert (=> b!1138063 m!1050053))

(assert (=> b!1138059 m!1050047))

(declare-fun m!1050055 () Bool)

(assert (=> b!1138064 m!1050055))

(declare-fun m!1050057 () Bool)

(assert (=> b!1138056 m!1050057))

(declare-fun m!1050059 () Bool)

(assert (=> b!1138055 m!1050059))

(declare-fun m!1050061 () Bool)

(assert (=> b!1138055 m!1050061))

(declare-fun m!1050063 () Bool)

(assert (=> b!1138055 m!1050063))

(declare-fun m!1050065 () Bool)

(assert (=> b!1138055 m!1050065))

(declare-fun m!1050067 () Bool)

(assert (=> bm!50298 m!1050067))

(declare-fun m!1050069 () Bool)

(assert (=> bm!50297 m!1050069))

(declare-fun m!1050071 () Bool)

(assert (=> b!1138049 m!1050071))

(declare-fun m!1050073 () Bool)

(assert (=> b!1138048 m!1050073))

(declare-fun m!1050075 () Bool)

(assert (=> b!1138048 m!1050075))

(declare-fun m!1050077 () Bool)

(assert (=> b!1138054 m!1050077))

(declare-fun m!1050079 () Bool)

(assert (=> bm!50299 m!1050079))

(declare-fun m!1050081 () Bool)

(assert (=> b!1138070 m!1050081))

(declare-fun m!1050083 () Bool)

(assert (=> b!1138070 m!1050083))

(declare-fun m!1050085 () Bool)

(assert (=> b!1138070 m!1050085))

(declare-fun m!1050087 () Bool)

(assert (=> b!1138070 m!1050087))

(declare-fun m!1050089 () Bool)

(assert (=> b!1138069 m!1050089))

(assert (=> b!1138069 m!1050079))

(declare-fun m!1050091 () Bool)

(assert (=> b!1138067 m!1050091))

(declare-fun m!1050093 () Bool)

(assert (=> b!1138057 m!1050093))

(declare-fun m!1050095 () Bool)

(assert (=> b!1138057 m!1050095))

(declare-fun m!1050097 () Bool)

(assert (=> mapNonEmpty!44714 m!1050097))

(declare-fun m!1050099 () Bool)

(assert (=> bm!50301 m!1050099))

(declare-fun m!1050101 () Bool)

(assert (=> b!1138053 m!1050101))

(check-sat (not b!1138068) b_and!38991 (not b!1138052) (not b!1138069) (not mapNonEmpty!44714) (not b!1138063) (not b!1138054) (not b!1138053) (not bm!50298) (not bm!50297) (not b!1138051) (not b!1138067) (not bm!50301) (not start!98494) (not b!1138057) (not b!1138049) (not b!1138064) (not b!1138070) (not bm!50299) tp_is_empty!28593 (not b_lambda!19187) (not b_next!24063) (not b!1138048) (not b!1138059) (not b!1138055) (not bm!50294))
(check-sat b_and!38991 (not b_next!24063))
