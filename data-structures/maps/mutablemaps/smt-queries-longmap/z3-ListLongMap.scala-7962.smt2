; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98650 () Bool)

(assert start!98650)

(declare-fun b_free!24219 () Bool)

(declare-fun b_next!24219 () Bool)

(assert (=> start!98650 (= b_free!24219 (not b_next!24219))))

(declare-fun tp!85368 () Bool)

(declare-fun b_and!39301 () Bool)

(assert (=> start!98650 (= tp!85368 b_and!39301)))

(declare-datatypes ((array!74306 0))(
  ( (array!74307 (arr!35800 (Array (_ BitVec 32) (_ BitVec 64))) (size!36337 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74306)

(declare-fun e!651376 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1145022 () Bool)

(declare-fun arrayContainsKey!0 (array!74306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145022 (= e!651376 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1145023 () Bool)

(declare-fun res!762652 () Bool)

(declare-fun e!651378 () Bool)

(assert (=> b!1145023 (=> (not res!762652) (not e!651378))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1145023 (= res!762652 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36337 _keys!1208))))))

(declare-fun b!1145024 () Bool)

(declare-datatypes ((Unit!37520 0))(
  ( (Unit!37521) )
))
(declare-fun e!651375 () Unit!37520)

(declare-fun Unit!37522 () Unit!37520)

(assert (=> b!1145024 (= e!651375 Unit!37522)))

(declare-fun lt!511042 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1145024 (= lt!511042 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!112780 () Bool)

(assert (=> b!1145024 (= c!112780 (and (not lt!511042) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511036 () Unit!37520)

(declare-fun e!651385 () Unit!37520)

(assert (=> b!1145024 (= lt!511036 e!651385)))

(declare-datatypes ((V!43459 0))(
  ( (V!43460 (val!14431 Int)) )
))
(declare-fun zeroValue!944 () V!43459)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13665 0))(
  ( (ValueCellFull!13665 (v!17069 V!43459)) (EmptyCell!13665) )
))
(declare-datatypes ((array!74308 0))(
  ( (array!74309 (arr!35801 (Array (_ BitVec 32) ValueCell!13665)) (size!36338 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74308)

(declare-fun minValue!944 () V!43459)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!511037 () Unit!37520)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!421 (array!74306 array!74308 (_ BitVec 32) (_ BitVec 32) V!43459 V!43459 (_ BitVec 64) (_ BitVec 32) Int) Unit!37520)

(assert (=> b!1145024 (= lt!511037 (lemmaListMapContainsThenArrayContainsFrom!421 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112782 () Bool)

(assert (=> b!1145024 (= c!112782 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762644 () Bool)

(assert (=> b!1145024 (= res!762644 e!651376)))

(declare-fun e!651382 () Bool)

(assert (=> b!1145024 (=> (not res!762644) (not e!651382))))

(assert (=> b!1145024 e!651382))

(declare-fun lt!511051 () Unit!37520)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74306 (_ BitVec 32) (_ BitVec 32)) Unit!37520)

(assert (=> b!1145024 (= lt!511051 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25159 0))(
  ( (Nil!25156) (Cons!25155 (h!26364 (_ BitVec 64)) (t!36377 List!25159)) )
))
(declare-fun arrayNoDuplicates!0 (array!74306 (_ BitVec 32) List!25159) Bool)

(assert (=> b!1145024 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25156)))

(declare-fun lt!511048 () Unit!37520)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74306 (_ BitVec 64) (_ BitVec 32) List!25159) Unit!37520)

(assert (=> b!1145024 (= lt!511048 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25156))))

(assert (=> b!1145024 false))

(declare-fun b!1145025 () Bool)

(declare-fun e!651374 () Unit!37520)

(declare-fun lt!511044 () Unit!37520)

(assert (=> b!1145025 (= e!651374 lt!511044)))

(declare-fun call!52171 () Unit!37520)

(assert (=> b!1145025 (= lt!511044 call!52171)))

(declare-fun call!52173 () Bool)

(assert (=> b!1145025 call!52173))

(declare-fun bm!52166 () Bool)

(declare-fun c!112779 () Bool)

(declare-datatypes ((tuple2!18360 0))(
  ( (tuple2!18361 (_1!9190 (_ BitVec 64)) (_2!9190 V!43459)) )
))
(declare-datatypes ((List!25160 0))(
  ( (Nil!25157) (Cons!25156 (h!26365 tuple2!18360) (t!36378 List!25160)) )
))
(declare-datatypes ((ListLongMap!16341 0))(
  ( (ListLongMap!16342 (toList!8186 List!25160)) )
))
(declare-fun lt!511053 () ListLongMap!16341)

(declare-fun call!52174 () Unit!37520)

(declare-fun lt!511052 () ListLongMap!16341)

(declare-fun addStillContains!827 (ListLongMap!16341 (_ BitVec 64) V!43459 (_ BitVec 64)) Unit!37520)

(assert (=> bm!52166 (= call!52174 (addStillContains!827 (ite c!112780 lt!511053 lt!511052) (ite c!112780 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112779 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112780 minValue!944 (ite c!112779 zeroValue!944 minValue!944)) k0!934))))

(declare-fun call!52170 () ListLongMap!16341)

(declare-fun bm!52167 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4628 (array!74306 array!74308 (_ BitVec 32) (_ BitVec 32) V!43459 V!43459 (_ BitVec 32) Int) ListLongMap!16341)

(assert (=> bm!52167 (= call!52170 (getCurrentListMapNoExtraKeys!4628 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145026 () Bool)

(declare-fun Unit!37523 () Unit!37520)

(assert (=> b!1145026 (= e!651375 Unit!37523)))

(declare-fun b!1145027 () Bool)

(assert (=> b!1145027 (= e!651376 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511042) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!762646 () Bool)

(assert (=> start!98650 (=> (not res!762646) (not e!651378))))

(assert (=> start!98650 (= res!762646 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36337 _keys!1208))))))

(assert (=> start!98650 e!651378))

(declare-fun tp_is_empty!28749 () Bool)

(assert (=> start!98650 tp_is_empty!28749))

(declare-fun array_inv!27310 (array!74306) Bool)

(assert (=> start!98650 (array_inv!27310 _keys!1208)))

(assert (=> start!98650 true))

(assert (=> start!98650 tp!85368))

(declare-fun e!651383 () Bool)

(declare-fun array_inv!27311 (array!74308) Bool)

(assert (=> start!98650 (and (array_inv!27311 _values!996) e!651383)))

(declare-fun b!1145028 () Bool)

(declare-fun res!762651 () Bool)

(assert (=> b!1145028 (=> (not res!762651) (not e!651378))))

(assert (=> b!1145028 (= res!762651 (= (select (arr!35800 _keys!1208) i!673) k0!934))))

(declare-fun b!1145029 () Bool)

(declare-fun e!651386 () Bool)

(assert (=> b!1145029 (= e!651378 e!651386)))

(declare-fun res!762650 () Bool)

(assert (=> b!1145029 (=> (not res!762650) (not e!651386))))

(declare-fun lt!511050 () array!74306)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74306 (_ BitVec 32)) Bool)

(assert (=> b!1145029 (= res!762650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511050 mask!1564))))

(assert (=> b!1145029 (= lt!511050 (array!74307 (store (arr!35800 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36337 _keys!1208)))))

(declare-fun bm!52168 () Bool)

(declare-fun call!52175 () ListLongMap!16341)

(declare-fun +!3529 (ListLongMap!16341 tuple2!18360) ListLongMap!16341)

(assert (=> bm!52168 (= call!52175 (+!3529 (ite c!112780 lt!511053 lt!511052) (ite c!112780 (tuple2!18361 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112779 (tuple2!18361 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18361 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1145030 () Bool)

(declare-fun e!651387 () Unit!37520)

(declare-fun Unit!37524 () Unit!37520)

(assert (=> b!1145030 (= e!651387 Unit!37524)))

(declare-fun bm!52169 () Bool)

(declare-fun call!52169 () Bool)

(assert (=> bm!52169 (= call!52173 call!52169)))

(declare-fun b!1145031 () Bool)

(declare-fun lt!511041 () ListLongMap!16341)

(declare-fun e!651379 () Bool)

(declare-fun -!1278 (ListLongMap!16341 (_ BitVec 64)) ListLongMap!16341)

(assert (=> b!1145031 (= e!651379 (= (-!1278 lt!511041 k0!934) lt!511052))))

(declare-fun b!1145032 () Bool)

(declare-fun e!651377 () Bool)

(declare-fun mapRes!44948 () Bool)

(assert (=> b!1145032 (= e!651383 (and e!651377 mapRes!44948))))

(declare-fun condMapEmpty!44948 () Bool)

(declare-fun mapDefault!44948 () ValueCell!13665)

(assert (=> b!1145032 (= condMapEmpty!44948 (= (arr!35801 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13665)) mapDefault!44948)))))

(declare-fun b!1145033 () Bool)

(declare-fun e!651371 () Bool)

(assert (=> b!1145033 (= e!651386 (not e!651371))))

(declare-fun res!762643 () Bool)

(assert (=> b!1145033 (=> res!762643 e!651371)))

(assert (=> b!1145033 (= res!762643 (bvsgt from!1455 i!673))))

(assert (=> b!1145033 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!511054 () Unit!37520)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74306 (_ BitVec 64) (_ BitVec 32)) Unit!37520)

(assert (=> b!1145033 (= lt!511054 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1145034 () Bool)

(declare-fun res!762642 () Bool)

(assert (=> b!1145034 (=> (not res!762642) (not e!651378))))

(assert (=> b!1145034 (= res!762642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1145035 () Bool)

(declare-fun e!651372 () Bool)

(assert (=> b!1145035 (= e!651372 true)))

(assert (=> b!1145035 e!651379))

(declare-fun res!762648 () Bool)

(assert (=> b!1145035 (=> (not res!762648) (not e!651379))))

(declare-fun lt!511039 () V!43459)

(assert (=> b!1145035 (= res!762648 (= (-!1278 (+!3529 lt!511052 (tuple2!18361 (select (arr!35800 _keys!1208) from!1455) lt!511039)) (select (arr!35800 _keys!1208) from!1455)) lt!511052))))

(declare-fun lt!511056 () Unit!37520)

(declare-fun addThenRemoveForNewKeyIsSame!133 (ListLongMap!16341 (_ BitVec 64) V!43459) Unit!37520)

(assert (=> b!1145035 (= lt!511056 (addThenRemoveForNewKeyIsSame!133 lt!511052 (select (arr!35800 _keys!1208) from!1455) lt!511039))))

(declare-fun lt!511049 () V!43459)

(declare-fun get!18227 (ValueCell!13665 V!43459) V!43459)

(assert (=> b!1145035 (= lt!511039 (get!18227 (select (arr!35801 _values!996) from!1455) lt!511049))))

(declare-fun lt!511038 () Unit!37520)

(assert (=> b!1145035 (= lt!511038 e!651375)))

(declare-fun c!112778 () Bool)

(declare-fun contains!6687 (ListLongMap!16341 (_ BitVec 64)) Bool)

(assert (=> b!1145035 (= c!112778 (contains!6687 lt!511052 k0!934))))

(assert (=> b!1145035 (= lt!511052 (getCurrentListMapNoExtraKeys!4628 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52170 () Bool)

(assert (=> bm!52170 (= call!52171 call!52174)))

(declare-fun b!1145036 () Bool)

(assert (=> b!1145036 (= e!651382 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52171 () Bool)

(declare-fun call!52176 () ListLongMap!16341)

(declare-fun lt!511055 () array!74308)

(assert (=> bm!52171 (= call!52176 (getCurrentListMapNoExtraKeys!4628 lt!511050 lt!511055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145037 () Bool)

(assert (=> b!1145037 (= c!112779 (and (not lt!511042) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1145037 (= e!651385 e!651374)))

(declare-fun b!1145038 () Bool)

(assert (=> b!1145038 (contains!6687 call!52175 k0!934)))

(declare-fun lt!511045 () Unit!37520)

(assert (=> b!1145038 (= lt!511045 call!52174)))

(assert (=> b!1145038 call!52169))

(assert (=> b!1145038 (= lt!511053 (+!3529 lt!511052 (tuple2!18361 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!511040 () Unit!37520)

(assert (=> b!1145038 (= lt!511040 (addStillContains!827 lt!511052 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1145038 (= e!651385 lt!511045)))

(declare-fun bm!52172 () Bool)

(declare-fun call!52172 () ListLongMap!16341)

(assert (=> bm!52172 (= call!52172 call!52175)))

(declare-fun b!1145039 () Bool)

(declare-fun e!651380 () Bool)

(assert (=> b!1145039 (= e!651380 (= call!52176 call!52170))))

(declare-fun mapIsEmpty!44948 () Bool)

(assert (=> mapIsEmpty!44948 mapRes!44948))

(declare-fun b!1145040 () Bool)

(declare-fun e!651381 () Bool)

(assert (=> b!1145040 (= e!651381 tp_is_empty!28749)))

(declare-fun b!1145041 () Bool)

(assert (=> b!1145041 (= e!651380 (= call!52176 (-!1278 call!52170 k0!934)))))

(declare-fun b!1145042 () Bool)

(assert (=> b!1145042 (= e!651374 e!651387)))

(declare-fun c!112777 () Bool)

(assert (=> b!1145042 (= c!112777 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511042))))

(declare-fun b!1145043 () Bool)

(declare-fun res!762639 () Bool)

(assert (=> b!1145043 (=> (not res!762639) (not e!651378))))

(assert (=> b!1145043 (= res!762639 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25156))))

(declare-fun b!1145044 () Bool)

(assert (=> b!1145044 (= e!651377 tp_is_empty!28749)))

(declare-fun b!1145045 () Bool)

(declare-fun res!762653 () Bool)

(assert (=> b!1145045 (=> (not res!762653) (not e!651378))))

(assert (=> b!1145045 (= res!762653 (and (= (size!36338 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36337 _keys!1208) (size!36338 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1145046 () Bool)

(declare-fun e!651373 () Bool)

(assert (=> b!1145046 (= e!651371 e!651373)))

(declare-fun res!762641 () Bool)

(assert (=> b!1145046 (=> res!762641 e!651373)))

(assert (=> b!1145046 (= res!762641 (not (= from!1455 i!673)))))

(declare-fun lt!511046 () ListLongMap!16341)

(assert (=> b!1145046 (= lt!511046 (getCurrentListMapNoExtraKeys!4628 lt!511050 lt!511055 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1145046 (= lt!511055 (array!74309 (store (arr!35801 _values!996) i!673 (ValueCellFull!13665 lt!511049)) (size!36338 _values!996)))))

(declare-fun dynLambda!2672 (Int (_ BitVec 64)) V!43459)

(assert (=> b!1145046 (= lt!511049 (dynLambda!2672 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1145046 (= lt!511041 (getCurrentListMapNoExtraKeys!4628 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1145047 () Bool)

(declare-fun res!762649 () Bool)

(assert (=> b!1145047 (=> (not res!762649) (not e!651386))))

(assert (=> b!1145047 (= res!762649 (arrayNoDuplicates!0 lt!511050 #b00000000000000000000000000000000 Nil!25156))))

(declare-fun b!1145048 () Bool)

(assert (=> b!1145048 (= e!651373 e!651372)))

(declare-fun res!762645 () Bool)

(assert (=> b!1145048 (=> res!762645 e!651372)))

(assert (=> b!1145048 (= res!762645 (not (= (select (arr!35800 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1145048 e!651380))

(declare-fun c!112781 () Bool)

(assert (=> b!1145048 (= c!112781 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!511047 () Unit!37520)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!531 (array!74306 array!74308 (_ BitVec 32) (_ BitVec 32) V!43459 V!43459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37520)

(assert (=> b!1145048 (= lt!511047 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!531 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145049 () Bool)

(declare-fun res!762640 () Bool)

(assert (=> b!1145049 (=> (not res!762640) (not e!651378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145049 (= res!762640 (validKeyInArray!0 k0!934))))

(declare-fun b!1145050 () Bool)

(declare-fun res!762647 () Bool)

(assert (=> b!1145050 (=> (not res!762647) (not e!651378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1145050 (= res!762647 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44948 () Bool)

(declare-fun tp!85369 () Bool)

(assert (=> mapNonEmpty!44948 (= mapRes!44948 (and tp!85369 e!651381))))

(declare-fun mapValue!44948 () ValueCell!13665)

(declare-fun mapKey!44948 () (_ BitVec 32))

(declare-fun mapRest!44948 () (Array (_ BitVec 32) ValueCell!13665))

(assert (=> mapNonEmpty!44948 (= (arr!35801 _values!996) (store mapRest!44948 mapKey!44948 mapValue!44948))))

(declare-fun b!1145051 () Bool)

(assert (=> b!1145051 call!52173))

(declare-fun lt!511043 () Unit!37520)

(assert (=> b!1145051 (= lt!511043 call!52171)))

(assert (=> b!1145051 (= e!651387 lt!511043)))

(declare-fun bm!52173 () Bool)

(assert (=> bm!52173 (= call!52169 (contains!6687 (ite c!112780 lt!511053 call!52172) k0!934))))

(assert (= (and start!98650 res!762646) b!1145050))

(assert (= (and b!1145050 res!762647) b!1145045))

(assert (= (and b!1145045 res!762653) b!1145034))

(assert (= (and b!1145034 res!762642) b!1145043))

(assert (= (and b!1145043 res!762639) b!1145023))

(assert (= (and b!1145023 res!762652) b!1145049))

(assert (= (and b!1145049 res!762640) b!1145028))

(assert (= (and b!1145028 res!762651) b!1145029))

(assert (= (and b!1145029 res!762650) b!1145047))

(assert (= (and b!1145047 res!762649) b!1145033))

(assert (= (and b!1145033 (not res!762643)) b!1145046))

(assert (= (and b!1145046 (not res!762641)) b!1145048))

(assert (= (and b!1145048 c!112781) b!1145041))

(assert (= (and b!1145048 (not c!112781)) b!1145039))

(assert (= (or b!1145041 b!1145039) bm!52167))

(assert (= (or b!1145041 b!1145039) bm!52171))

(assert (= (and b!1145048 (not res!762645)) b!1145035))

(assert (= (and b!1145035 c!112778) b!1145024))

(assert (= (and b!1145035 (not c!112778)) b!1145026))

(assert (= (and b!1145024 c!112780) b!1145038))

(assert (= (and b!1145024 (not c!112780)) b!1145037))

(assert (= (and b!1145037 c!112779) b!1145025))

(assert (= (and b!1145037 (not c!112779)) b!1145042))

(assert (= (and b!1145042 c!112777) b!1145051))

(assert (= (and b!1145042 (not c!112777)) b!1145030))

(assert (= (or b!1145025 b!1145051) bm!52170))

(assert (= (or b!1145025 b!1145051) bm!52172))

(assert (= (or b!1145025 b!1145051) bm!52169))

(assert (= (or b!1145038 bm!52169) bm!52173))

(assert (= (or b!1145038 bm!52170) bm!52166))

(assert (= (or b!1145038 bm!52172) bm!52168))

(assert (= (and b!1145024 c!112782) b!1145022))

(assert (= (and b!1145024 (not c!112782)) b!1145027))

(assert (= (and b!1145024 res!762644) b!1145036))

(assert (= (and b!1145035 res!762648) b!1145031))

(assert (= (and b!1145032 condMapEmpty!44948) mapIsEmpty!44948))

(assert (= (and b!1145032 (not condMapEmpty!44948)) mapNonEmpty!44948))

(get-info :version)

(assert (= (and mapNonEmpty!44948 ((_ is ValueCellFull!13665) mapValue!44948)) b!1145040))

(assert (= (and b!1145032 ((_ is ValueCellFull!13665) mapDefault!44948)) b!1145044))

(assert (= start!98650 b!1145032))

(declare-fun b_lambda!19343 () Bool)

(assert (=> (not b_lambda!19343) (not b!1145046)))

(declare-fun t!36376 () Bool)

(declare-fun tb!9039 () Bool)

(assert (=> (and start!98650 (= defaultEntry!1004 defaultEntry!1004) t!36376) tb!9039))

(declare-fun result!18635 () Bool)

(assert (=> tb!9039 (= result!18635 tp_is_empty!28749)))

(assert (=> b!1145046 t!36376))

(declare-fun b_and!39303 () Bool)

(assert (= b_and!39301 (and (=> t!36376 result!18635) b_and!39303)))

(declare-fun m!1056011 () Bool)

(assert (=> b!1145048 m!1056011))

(declare-fun m!1056013 () Bool)

(assert (=> b!1145048 m!1056013))

(declare-fun m!1056015 () Bool)

(assert (=> b!1145036 m!1056015))

(declare-fun m!1056017 () Bool)

(assert (=> b!1145038 m!1056017))

(declare-fun m!1056019 () Bool)

(assert (=> b!1145038 m!1056019))

(declare-fun m!1056021 () Bool)

(assert (=> b!1145038 m!1056021))

(declare-fun m!1056023 () Bool)

(assert (=> start!98650 m!1056023))

(declare-fun m!1056025 () Bool)

(assert (=> start!98650 m!1056025))

(declare-fun m!1056027 () Bool)

(assert (=> bm!52171 m!1056027))

(declare-fun m!1056029 () Bool)

(assert (=> b!1145041 m!1056029))

(declare-fun m!1056031 () Bool)

(assert (=> bm!52166 m!1056031))

(declare-fun m!1056033 () Bool)

(assert (=> b!1145033 m!1056033))

(declare-fun m!1056035 () Bool)

(assert (=> b!1145033 m!1056035))

(declare-fun m!1056037 () Bool)

(assert (=> bm!52173 m!1056037))

(declare-fun m!1056039 () Bool)

(assert (=> b!1145024 m!1056039))

(declare-fun m!1056041 () Bool)

(assert (=> b!1145024 m!1056041))

(declare-fun m!1056043 () Bool)

(assert (=> b!1145024 m!1056043))

(declare-fun m!1056045 () Bool)

(assert (=> b!1145024 m!1056045))

(declare-fun m!1056047 () Bool)

(assert (=> bm!52168 m!1056047))

(declare-fun m!1056049 () Bool)

(assert (=> b!1145031 m!1056049))

(declare-fun m!1056051 () Bool)

(assert (=> b!1145043 m!1056051))

(declare-fun m!1056053 () Bool)

(assert (=> b!1145049 m!1056053))

(declare-fun m!1056055 () Bool)

(assert (=> b!1145028 m!1056055))

(declare-fun m!1056057 () Bool)

(assert (=> b!1145034 m!1056057))

(declare-fun m!1056059 () Bool)

(assert (=> b!1145029 m!1056059))

(declare-fun m!1056061 () Bool)

(assert (=> b!1145029 m!1056061))

(declare-fun m!1056063 () Bool)

(assert (=> b!1145035 m!1056063))

(declare-fun m!1056065 () Bool)

(assert (=> b!1145035 m!1056065))

(assert (=> b!1145035 m!1056011))

(declare-fun m!1056067 () Bool)

(assert (=> b!1145035 m!1056067))

(declare-fun m!1056069 () Bool)

(assert (=> b!1145035 m!1056069))

(declare-fun m!1056071 () Bool)

(assert (=> b!1145035 m!1056071))

(assert (=> b!1145035 m!1056011))

(declare-fun m!1056073 () Bool)

(assert (=> b!1145035 m!1056073))

(assert (=> b!1145035 m!1056069))

(assert (=> b!1145035 m!1056073))

(assert (=> b!1145035 m!1056011))

(declare-fun m!1056075 () Bool)

(assert (=> b!1145035 m!1056075))

(assert (=> bm!52167 m!1056063))

(declare-fun m!1056077 () Bool)

(assert (=> b!1145046 m!1056077))

(declare-fun m!1056079 () Bool)

(assert (=> b!1145046 m!1056079))

(declare-fun m!1056081 () Bool)

(assert (=> b!1145046 m!1056081))

(declare-fun m!1056083 () Bool)

(assert (=> b!1145046 m!1056083))

(assert (=> b!1145022 m!1056015))

(declare-fun m!1056085 () Bool)

(assert (=> b!1145047 m!1056085))

(declare-fun m!1056087 () Bool)

(assert (=> mapNonEmpty!44948 m!1056087))

(declare-fun m!1056089 () Bool)

(assert (=> b!1145050 m!1056089))

(check-sat (not b!1145035) (not b!1145047) (not b!1145048) (not b!1145024) (not b!1145031) b_and!39303 (not b!1145029) (not start!98650) (not b!1145049) (not b_lambda!19343) (not b!1145041) (not bm!52168) (not mapNonEmpty!44948) (not b!1145036) (not b!1145050) (not b!1145046) (not bm!52171) (not bm!52166) (not b!1145043) tp_is_empty!28749 (not b!1145038) (not bm!52167) (not b_next!24219) (not b!1145033) (not b!1145022) (not bm!52173) (not b!1145034))
(check-sat b_and!39303 (not b_next!24219))
