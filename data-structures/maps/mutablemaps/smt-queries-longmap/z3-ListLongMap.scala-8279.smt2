; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100812 () Bool)

(assert start!100812)

(declare-fun b_free!25947 () Bool)

(declare-fun b_next!25947 () Bool)

(assert (=> start!100812 (= b_free!25947 (not b_next!25947))))

(declare-fun tp!90845 () Bool)

(declare-fun b_and!42891 () Bool)

(assert (=> start!100812 (= tp!90845 b_and!42891)))

(declare-fun b!1206231 () Bool)

(declare-fun e!685036 () Bool)

(declare-fun e!685043 () Bool)

(declare-fun mapRes!47832 () Bool)

(assert (=> b!1206231 (= e!685036 (and e!685043 mapRes!47832))))

(declare-fun condMapEmpty!47832 () Bool)

(declare-datatypes ((V!45995 0))(
  ( (V!45996 (val!15382 Int)) )
))
(declare-datatypes ((ValueCell!14616 0))(
  ( (ValueCellFull!14616 (v!18027 V!45995)) (EmptyCell!14616) )
))
(declare-datatypes ((array!78058 0))(
  ( (array!78059 (arr!37666 (Array (_ BitVec 32) ValueCell!14616)) (size!38203 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78058)

(declare-fun mapDefault!47832 () ValueCell!14616)

(assert (=> b!1206231 (= condMapEmpty!47832 (= (arr!37666 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14616)) mapDefault!47832)))))

(declare-datatypes ((array!78060 0))(
  ( (array!78061 (arr!37667 (Array (_ BitVec 32) (_ BitVec 64))) (size!38204 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78060)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!685038 () Bool)

(declare-fun b!1206232 () Bool)

(declare-fun arrayContainsKey!0 (array!78060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1206232 (= e!685038 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!58688 () Bool)

(declare-fun c!118382 () Bool)

(declare-datatypes ((tuple2!19870 0))(
  ( (tuple2!19871 (_1!9945 (_ BitVec 64)) (_2!9945 V!45995)) )
))
(declare-datatypes ((List!26693 0))(
  ( (Nil!26690) (Cons!26689 (h!27898 tuple2!19870) (t!39627 List!26693)) )
))
(declare-datatypes ((ListLongMap!17851 0))(
  ( (ListLongMap!17852 (toList!8941 List!26693)) )
))
(declare-fun lt!547154 () ListLongMap!17851)

(declare-fun lt!547153 () ListLongMap!17851)

(declare-fun c!118381 () Bool)

(declare-fun zeroValue!944 () V!45995)

(declare-datatypes ((Unit!39913 0))(
  ( (Unit!39914) )
))
(declare-fun call!58696 () Unit!39913)

(declare-fun minValue!944 () V!45995)

(declare-fun addStillContains!1035 (ListLongMap!17851 (_ BitVec 64) V!45995 (_ BitVec 64)) Unit!39913)

(assert (=> bm!58688 (= call!58696 (addStillContains!1035 (ite c!118381 lt!547154 lt!547153) (ite c!118381 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118382 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118381 minValue!944 (ite c!118382 zeroValue!944 minValue!944)) k0!934))))

(declare-fun mapIsEmpty!47832 () Bool)

(assert (=> mapIsEmpty!47832 mapRes!47832))

(declare-fun b!1206233 () Bool)

(declare-fun res!802295 () Bool)

(declare-fun e!685049 () Bool)

(assert (=> b!1206233 (=> (not res!802295) (not e!685049))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1206233 (= res!802295 (and (= (size!38203 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38204 _keys!1208) (size!38203 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1206234 () Bool)

(declare-fun e!685039 () Unit!39913)

(declare-fun Unit!39915 () Unit!39913)

(assert (=> b!1206234 (= e!685039 Unit!39915)))

(declare-fun b!1206235 () Bool)

(declare-fun e!685035 () Bool)

(declare-fun call!58691 () ListLongMap!17851)

(declare-fun call!58692 () ListLongMap!17851)

(assert (=> b!1206235 (= e!685035 (= call!58691 call!58692))))

(declare-fun b!1206236 () Bool)

(declare-fun lt!547141 () Bool)

(declare-fun e!685040 () Bool)

(assert (=> b!1206236 (= e!685040 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547141) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1206237 () Bool)

(declare-fun e!685034 () Bool)

(declare-fun e!685042 () Bool)

(assert (=> b!1206237 (= e!685034 e!685042)))

(declare-fun res!802293 () Bool)

(assert (=> b!1206237 (=> res!802293 e!685042)))

(declare-fun contains!6942 (ListLongMap!17851 (_ BitVec 64)) Bool)

(assert (=> b!1206237 (= res!802293 (not (contains!6942 lt!547153 k0!934)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5348 (array!78060 array!78058 (_ BitVec 32) (_ BitVec 32) V!45995 V!45995 (_ BitVec 32) Int) ListLongMap!17851)

(assert (=> b!1206237 (= lt!547153 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58693 () ListLongMap!17851)

(declare-fun bm!58689 () Bool)

(declare-fun call!58694 () Bool)

(assert (=> bm!58689 (= call!58694 (contains!6942 (ite c!118381 lt!547154 call!58693) k0!934))))

(declare-fun b!1206238 () Bool)

(declare-fun res!802283 () Bool)

(declare-fun e!685048 () Bool)

(assert (=> b!1206238 (=> (not res!802283) (not e!685048))))

(declare-fun lt!547152 () array!78060)

(declare-datatypes ((List!26694 0))(
  ( (Nil!26691) (Cons!26690 (h!27899 (_ BitVec 64)) (t!39628 List!26694)) )
))
(declare-fun arrayNoDuplicates!0 (array!78060 (_ BitVec 32) List!26694) Bool)

(assert (=> b!1206238 (= res!802283 (arrayNoDuplicates!0 lt!547152 #b00000000000000000000000000000000 Nil!26691))))

(declare-fun b!1206239 () Bool)

(assert (=> b!1206239 (= e!685049 e!685048)))

(declare-fun res!802286 () Bool)

(assert (=> b!1206239 (=> (not res!802286) (not e!685048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78060 (_ BitVec 32)) Bool)

(assert (=> b!1206239 (= res!802286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547152 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206239 (= lt!547152 (array!78061 (store (arr!37667 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38204 _keys!1208)))))

(declare-fun b!1206240 () Bool)

(assert (=> b!1206240 (= e!685040 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206241 () Bool)

(declare-fun e!685044 () Bool)

(assert (=> b!1206241 (= e!685044 e!685034)))

(declare-fun res!802291 () Bool)

(assert (=> b!1206241 (=> res!802291 e!685034)))

(assert (=> b!1206241 (= res!802291 (not (= (select (arr!37667 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1206241 e!685035))

(declare-fun c!118380 () Bool)

(assert (=> b!1206241 (= c!118380 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547146 () Unit!39913)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1055 (array!78060 array!78058 (_ BitVec 32) (_ BitVec 32) V!45995 V!45995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39913)

(assert (=> b!1206241 (= lt!547146 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1055 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58690 () Bool)

(assert (=> bm!58690 (= call!58692 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206242 () Bool)

(declare-fun tp_is_empty!30651 () Bool)

(assert (=> b!1206242 (= e!685043 tp_is_empty!30651)))

(declare-fun b!1206243 () Bool)

(declare-fun res!802288 () Bool)

(assert (=> b!1206243 (=> (not res!802288) (not e!685049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1206243 (= res!802288 (validMask!0 mask!1564))))

(declare-fun b!1206244 () Bool)

(assert (=> b!1206244 (= e!685042 (bvslt (size!38204 _keys!1208) #b01111111111111111111111111111111))))

(assert (=> b!1206244 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26691)))

(declare-fun lt!547145 () Unit!39913)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78060 (_ BitVec 32) (_ BitVec 32)) Unit!39913)

(assert (=> b!1206244 (= lt!547145 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1206244 e!685038))

(declare-fun res!802296 () Bool)

(assert (=> b!1206244 (=> (not res!802296) (not e!685038))))

(assert (=> b!1206244 (= res!802296 e!685040)))

(declare-fun c!118378 () Bool)

(assert (=> b!1206244 (= c!118378 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547142 () Unit!39913)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!574 (array!78060 array!78058 (_ BitVec 32) (_ BitVec 32) V!45995 V!45995 (_ BitVec 64) (_ BitVec 32) Int) Unit!39913)

(assert (=> b!1206244 (= lt!547142 (lemmaListMapContainsThenArrayContainsFrom!574 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547148 () Unit!39913)

(declare-fun e!685045 () Unit!39913)

(assert (=> b!1206244 (= lt!547148 e!685045)))

(assert (=> b!1206244 (= c!118381 (and (not lt!547141) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1206244 (= lt!547141 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!58691 () Bool)

(declare-fun call!58698 () ListLongMap!17851)

(assert (=> bm!58691 (= call!58693 call!58698)))

(declare-fun b!1206245 () Bool)

(declare-fun e!685046 () Bool)

(assert (=> b!1206245 (= e!685046 tp_is_empty!30651)))

(declare-fun b!1206246 () Bool)

(declare-fun res!802290 () Bool)

(assert (=> b!1206246 (=> (not res!802290) (not e!685049))))

(assert (=> b!1206246 (= res!802290 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38204 _keys!1208))))))

(declare-fun b!1206247 () Bool)

(declare-fun e!685047 () Bool)

(assert (=> b!1206247 (= e!685048 (not e!685047))))

(declare-fun res!802287 () Bool)

(assert (=> b!1206247 (=> res!802287 e!685047)))

(assert (=> b!1206247 (= res!802287 (bvsgt from!1455 i!673))))

(assert (=> b!1206247 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!547149 () Unit!39913)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78060 (_ BitVec 64) (_ BitVec 32)) Unit!39913)

(assert (=> b!1206247 (= lt!547149 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1206248 () Bool)

(declare-fun e!685041 () Unit!39913)

(assert (=> b!1206248 (= e!685045 e!685041)))

(assert (=> b!1206248 (= c!118382 (and (not lt!547141) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1206249 () Bool)

(declare-fun c!118379 () Bool)

(assert (=> b!1206249 (= c!118379 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547141))))

(assert (=> b!1206249 (= e!685041 e!685039)))

(declare-fun b!1206250 () Bool)

(declare-fun res!802289 () Bool)

(assert (=> b!1206250 (=> (not res!802289) (not e!685049))))

(assert (=> b!1206250 (= res!802289 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26691))))

(declare-fun b!1206251 () Bool)

(declare-fun call!58695 () Bool)

(assert (=> b!1206251 call!58695))

(declare-fun lt!547144 () Unit!39913)

(declare-fun call!58697 () Unit!39913)

(assert (=> b!1206251 (= lt!547144 call!58697)))

(assert (=> b!1206251 (= e!685041 lt!547144)))

(declare-fun b!1206252 () Bool)

(declare-fun res!802292 () Bool)

(assert (=> b!1206252 (=> (not res!802292) (not e!685049))))

(assert (=> b!1206252 (= res!802292 (= (select (arr!37667 _keys!1208) i!673) k0!934))))

(declare-fun b!1206253 () Bool)

(declare-fun lt!547155 () Unit!39913)

(assert (=> b!1206253 (= e!685045 lt!547155)))

(declare-fun lt!547156 () Unit!39913)

(assert (=> b!1206253 (= lt!547156 (addStillContains!1035 lt!547153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1206253 (= lt!547154 call!58698)))

(assert (=> b!1206253 call!58694))

(assert (=> b!1206253 (= lt!547155 call!58696)))

(declare-fun +!3970 (ListLongMap!17851 tuple2!19870) ListLongMap!17851)

(assert (=> b!1206253 (contains!6942 (+!3970 lt!547154 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun res!802294 () Bool)

(assert (=> start!100812 (=> (not res!802294) (not e!685049))))

(assert (=> start!100812 (= res!802294 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38204 _keys!1208))))))

(assert (=> start!100812 e!685049))

(assert (=> start!100812 tp_is_empty!30651))

(declare-fun array_inv!28594 (array!78060) Bool)

(assert (=> start!100812 (array_inv!28594 _keys!1208)))

(assert (=> start!100812 true))

(assert (=> start!100812 tp!90845))

(declare-fun array_inv!28595 (array!78058) Bool)

(assert (=> start!100812 (and (array_inv!28595 _values!996) e!685036)))

(declare-fun lt!547151 () array!78058)

(declare-fun bm!58692 () Bool)

(assert (=> bm!58692 (= call!58691 (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1206254 () Bool)

(declare-fun lt!547147 () Unit!39913)

(assert (=> b!1206254 (= e!685039 lt!547147)))

(assert (=> b!1206254 (= lt!547147 call!58697)))

(assert (=> b!1206254 call!58695))

(declare-fun b!1206255 () Bool)

(declare-fun res!802297 () Bool)

(assert (=> b!1206255 (=> (not res!802297) (not e!685049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1206255 (= res!802297 (validKeyInArray!0 k0!934))))

(declare-fun bm!58693 () Bool)

(assert (=> bm!58693 (= call!58698 (+!3970 lt!547153 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!58694 () Bool)

(assert (=> bm!58694 (= call!58695 call!58694)))

(declare-fun b!1206256 () Bool)

(declare-fun res!802284 () Bool)

(assert (=> b!1206256 (=> (not res!802284) (not e!685049))))

(assert (=> b!1206256 (= res!802284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1206257 () Bool)

(assert (=> b!1206257 (= e!685047 e!685044)))

(declare-fun res!802285 () Bool)

(assert (=> b!1206257 (=> res!802285 e!685044)))

(assert (=> b!1206257 (= res!802285 (not (= from!1455 i!673)))))

(declare-fun lt!547150 () ListLongMap!17851)

(assert (=> b!1206257 (= lt!547150 (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3269 (Int (_ BitVec 64)) V!45995)

(assert (=> b!1206257 (= lt!547151 (array!78059 (store (arr!37666 _values!996) i!673 (ValueCellFull!14616 (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38203 _values!996)))))

(declare-fun lt!547143 () ListLongMap!17851)

(assert (=> b!1206257 (= lt!547143 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1206258 () Bool)

(declare-fun -!1851 (ListLongMap!17851 (_ BitVec 64)) ListLongMap!17851)

(assert (=> b!1206258 (= e!685035 (= call!58691 (-!1851 call!58692 k0!934)))))

(declare-fun mapNonEmpty!47832 () Bool)

(declare-fun tp!90844 () Bool)

(assert (=> mapNonEmpty!47832 (= mapRes!47832 (and tp!90844 e!685046))))

(declare-fun mapRest!47832 () (Array (_ BitVec 32) ValueCell!14616))

(declare-fun mapValue!47832 () ValueCell!14616)

(declare-fun mapKey!47832 () (_ BitVec 32))

(assert (=> mapNonEmpty!47832 (= (arr!37666 _values!996) (store mapRest!47832 mapKey!47832 mapValue!47832))))

(declare-fun bm!58695 () Bool)

(assert (=> bm!58695 (= call!58697 call!58696)))

(assert (= (and start!100812 res!802294) b!1206243))

(assert (= (and b!1206243 res!802288) b!1206233))

(assert (= (and b!1206233 res!802295) b!1206256))

(assert (= (and b!1206256 res!802284) b!1206250))

(assert (= (and b!1206250 res!802289) b!1206246))

(assert (= (and b!1206246 res!802290) b!1206255))

(assert (= (and b!1206255 res!802297) b!1206252))

(assert (= (and b!1206252 res!802292) b!1206239))

(assert (= (and b!1206239 res!802286) b!1206238))

(assert (= (and b!1206238 res!802283) b!1206247))

(assert (= (and b!1206247 (not res!802287)) b!1206257))

(assert (= (and b!1206257 (not res!802285)) b!1206241))

(assert (= (and b!1206241 c!118380) b!1206258))

(assert (= (and b!1206241 (not c!118380)) b!1206235))

(assert (= (or b!1206258 b!1206235) bm!58692))

(assert (= (or b!1206258 b!1206235) bm!58690))

(assert (= (and b!1206241 (not res!802291)) b!1206237))

(assert (= (and b!1206237 (not res!802293)) b!1206244))

(assert (= (and b!1206244 c!118381) b!1206253))

(assert (= (and b!1206244 (not c!118381)) b!1206248))

(assert (= (and b!1206248 c!118382) b!1206251))

(assert (= (and b!1206248 (not c!118382)) b!1206249))

(assert (= (and b!1206249 c!118379) b!1206254))

(assert (= (and b!1206249 (not c!118379)) b!1206234))

(assert (= (or b!1206251 b!1206254) bm!58695))

(assert (= (or b!1206251 b!1206254) bm!58691))

(assert (= (or b!1206251 b!1206254) bm!58694))

(assert (= (or b!1206253 bm!58694) bm!58689))

(assert (= (or b!1206253 bm!58695) bm!58688))

(assert (= (or b!1206253 bm!58691) bm!58693))

(assert (= (and b!1206244 c!118378) b!1206240))

(assert (= (and b!1206244 (not c!118378)) b!1206236))

(assert (= (and b!1206244 res!802296) b!1206232))

(assert (= (and b!1206231 condMapEmpty!47832) mapIsEmpty!47832))

(assert (= (and b!1206231 (not condMapEmpty!47832)) mapNonEmpty!47832))

(get-info :version)

(assert (= (and mapNonEmpty!47832 ((_ is ValueCellFull!14616) mapValue!47832)) b!1206245))

(assert (= (and b!1206231 ((_ is ValueCellFull!14616) mapDefault!47832)) b!1206242))

(assert (= start!100812 b!1206231))

(declare-fun b_lambda!21361 () Bool)

(assert (=> (not b_lambda!21361) (not b!1206257)))

(declare-fun t!39626 () Bool)

(declare-fun tb!10755 () Bool)

(assert (=> (and start!100812 (= defaultEntry!1004 defaultEntry!1004) t!39626) tb!10755))

(declare-fun result!22087 () Bool)

(assert (=> tb!10755 (= result!22087 tp_is_empty!30651)))

(assert (=> b!1206257 t!39626))

(declare-fun b_and!42893 () Bool)

(assert (= b_and!42891 (and (=> t!39626 result!22087) b_and!42893)))

(declare-fun m!1111961 () Bool)

(assert (=> b!1206257 m!1111961))

(declare-fun m!1111963 () Bool)

(assert (=> b!1206257 m!1111963))

(declare-fun m!1111965 () Bool)

(assert (=> b!1206257 m!1111965))

(declare-fun m!1111967 () Bool)

(assert (=> b!1206257 m!1111967))

(declare-fun m!1111969 () Bool)

(assert (=> b!1206243 m!1111969))

(declare-fun m!1111971 () Bool)

(assert (=> b!1206244 m!1111971))

(declare-fun m!1111973 () Bool)

(assert (=> b!1206244 m!1111973))

(declare-fun m!1111975 () Bool)

(assert (=> b!1206244 m!1111975))

(declare-fun m!1111977 () Bool)

(assert (=> b!1206256 m!1111977))

(declare-fun m!1111979 () Bool)

(assert (=> b!1206240 m!1111979))

(declare-fun m!1111981 () Bool)

(assert (=> bm!58692 m!1111981))

(declare-fun m!1111983 () Bool)

(assert (=> start!100812 m!1111983))

(declare-fun m!1111985 () Bool)

(assert (=> start!100812 m!1111985))

(declare-fun m!1111987 () Bool)

(assert (=> b!1206247 m!1111987))

(declare-fun m!1111989 () Bool)

(assert (=> b!1206247 m!1111989))

(declare-fun m!1111991 () Bool)

(assert (=> b!1206250 m!1111991))

(declare-fun m!1111993 () Bool)

(assert (=> bm!58693 m!1111993))

(declare-fun m!1111995 () Bool)

(assert (=> b!1206241 m!1111995))

(declare-fun m!1111997 () Bool)

(assert (=> b!1206241 m!1111997))

(declare-fun m!1111999 () Bool)

(assert (=> b!1206239 m!1111999))

(declare-fun m!1112001 () Bool)

(assert (=> b!1206239 m!1112001))

(declare-fun m!1112003 () Bool)

(assert (=> b!1206255 m!1112003))

(declare-fun m!1112005 () Bool)

(assert (=> b!1206253 m!1112005))

(declare-fun m!1112007 () Bool)

(assert (=> b!1206253 m!1112007))

(assert (=> b!1206253 m!1112007))

(declare-fun m!1112009 () Bool)

(assert (=> b!1206253 m!1112009))

(declare-fun m!1112011 () Bool)

(assert (=> b!1206252 m!1112011))

(declare-fun m!1112013 () Bool)

(assert (=> b!1206258 m!1112013))

(declare-fun m!1112015 () Bool)

(assert (=> bm!58690 m!1112015))

(declare-fun m!1112017 () Bool)

(assert (=> b!1206237 m!1112017))

(assert (=> b!1206237 m!1112015))

(declare-fun m!1112019 () Bool)

(assert (=> bm!58689 m!1112019))

(declare-fun m!1112021 () Bool)

(assert (=> bm!58688 m!1112021))

(declare-fun m!1112023 () Bool)

(assert (=> b!1206238 m!1112023))

(declare-fun m!1112025 () Bool)

(assert (=> mapNonEmpty!47832 m!1112025))

(assert (=> b!1206232 m!1111979))

(check-sat (not bm!58690) (not b!1206244) tp_is_empty!30651 (not bm!58688) (not bm!58692) (not b!1206258) (not b!1206247) (not b!1206232) (not b!1206255) (not b!1206256) (not b!1206237) (not b!1206238) (not b!1206239) (not bm!58689) (not b_lambda!21361) (not b!1206240) (not b_next!25947) (not b!1206257) (not bm!58693) (not b!1206250) b_and!42893 (not start!100812) (not b!1206243) (not b!1206241) (not b!1206253) (not mapNonEmpty!47832))
(check-sat b_and!42893 (not b_next!25947))
(get-model)

(declare-fun b_lambda!21365 () Bool)

(assert (= b_lambda!21361 (or (and start!100812 b_free!25947) b_lambda!21365)))

(check-sat (not bm!58690) (not b!1206244) tp_is_empty!30651 (not bm!58688) (not bm!58692) (not b!1206240) (not b!1206258) (not b!1206247) (not b_lambda!21365) (not b!1206232) (not b!1206255) (not b!1206256) (not b!1206237) (not b!1206238) (not b!1206239) (not bm!58689) (not b_next!25947) (not b!1206257) (not bm!58693) (not b!1206250) b_and!42893 (not start!100812) (not b!1206243) (not b!1206241) (not b!1206253) (not mapNonEmpty!47832))
(check-sat b_and!42893 (not b_next!25947))
(get-model)

(declare-fun b!1206353 () Bool)

(declare-fun e!685103 () Bool)

(declare-fun e!685102 () Bool)

(assert (=> b!1206353 (= e!685103 e!685102)))

(declare-fun c!118400 () Bool)

(assert (=> b!1206353 (= c!118400 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun bm!58724 () Bool)

(declare-fun call!58727 () ListLongMap!17851)

(assert (=> bm!58724 (= call!58727 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58728 () ListLongMap!17851)

(declare-fun bm!58725 () Bool)

(assert (=> bm!58725 (= call!58728 (getCurrentListMapNoExtraKeys!5348 (array!78061 (store (arr!37667 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38204 _keys!1208)) (array!78059 (store (arr!37666 _values!996) i!673 (ValueCellFull!14616 (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38203 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun d!132825 () Bool)

(assert (=> d!132825 e!685103))

(declare-fun res!802345 () Bool)

(assert (=> d!132825 (=> (not res!802345) (not e!685103))))

(assert (=> d!132825 (= res!802345 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673)) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38204 _keys!1208)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673) (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38204 _keys!1208))))))))

(declare-fun lt!547207 () Unit!39913)

(declare-fun choose!1805 (array!78060 array!78058 (_ BitVec 32) (_ BitVec 32) V!45995 V!45995 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39913)

(assert (=> d!132825 (= lt!547207 (choose!1805 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132825 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 _keys!1208)))))

(assert (=> d!132825 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1055 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547207)))

(declare-fun b!1206354 () Bool)

(assert (=> b!1206354 (= e!685102 (= call!58728 call!58727))))

(assert (=> b!1206354 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38203 _values!996)))))

(declare-fun b!1206355 () Bool)

(assert (=> b!1206355 (= e!685102 (= call!58728 (-!1851 call!58727 k0!934)))))

(assert (=> b!1206355 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38203 _values!996)))))

(assert (= (and d!132825 res!802345) b!1206353))

(assert (= (and b!1206353 c!118400) b!1206355))

(assert (= (and b!1206353 (not c!118400)) b!1206354))

(assert (= (or b!1206355 b!1206354) bm!58724))

(assert (= (or b!1206355 b!1206354) bm!58725))

(declare-fun b_lambda!21367 () Bool)

(assert (=> (not b_lambda!21367) (not bm!58725)))

(assert (=> bm!58725 t!39626))

(declare-fun b_and!42899 () Bool)

(assert (= b_and!42893 (and (=> t!39626 result!22087) b_and!42899)))

(assert (=> bm!58724 m!1112015))

(assert (=> bm!58725 m!1112001))

(assert (=> bm!58725 m!1111963))

(assert (=> bm!58725 m!1111965))

(declare-fun m!1112093 () Bool)

(assert (=> bm!58725 m!1112093))

(declare-fun m!1112095 () Bool)

(assert (=> d!132825 m!1112095))

(declare-fun m!1112097 () Bool)

(assert (=> b!1206355 m!1112097))

(assert (=> b!1206241 d!132825))

(declare-fun b!1206366 () Bool)

(declare-fun e!685115 () Bool)

(declare-fun contains!6944 (List!26694 (_ BitVec 64)) Bool)

(assert (=> b!1206366 (= e!685115 (contains!6944 Nil!26691 (select (arr!37667 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1206367 () Bool)

(declare-fun e!685112 () Bool)

(declare-fun e!685114 () Bool)

(assert (=> b!1206367 (= e!685112 e!685114)))

(declare-fun c!118403 () Bool)

(assert (=> b!1206367 (= c!118403 (validKeyInArray!0 (select (arr!37667 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!132827 () Bool)

(declare-fun res!802353 () Bool)

(declare-fun e!685113 () Bool)

(assert (=> d!132827 (=> res!802353 e!685113)))

(assert (=> d!132827 (= res!802353 (bvsge #b00000000000000000000000000000000 (size!38204 _keys!1208)))))

(assert (=> d!132827 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26691) e!685113)))

(declare-fun b!1206368 () Bool)

(declare-fun call!58731 () Bool)

(assert (=> b!1206368 (= e!685114 call!58731)))

(declare-fun b!1206369 () Bool)

(assert (=> b!1206369 (= e!685113 e!685112)))

(declare-fun res!802352 () Bool)

(assert (=> b!1206369 (=> (not res!802352) (not e!685112))))

(assert (=> b!1206369 (= res!802352 (not e!685115))))

(declare-fun res!802354 () Bool)

(assert (=> b!1206369 (=> (not res!802354) (not e!685115))))

(assert (=> b!1206369 (= res!802354 (validKeyInArray!0 (select (arr!37667 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1206370 () Bool)

(assert (=> b!1206370 (= e!685114 call!58731)))

(declare-fun bm!58728 () Bool)

(assert (=> bm!58728 (= call!58731 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118403 (Cons!26690 (select (arr!37667 _keys!1208) #b00000000000000000000000000000000) Nil!26691) Nil!26691)))))

(assert (= (and d!132827 (not res!802353)) b!1206369))

(assert (= (and b!1206369 res!802354) b!1206366))

(assert (= (and b!1206369 res!802352) b!1206367))

(assert (= (and b!1206367 c!118403) b!1206370))

(assert (= (and b!1206367 (not c!118403)) b!1206368))

(assert (= (or b!1206370 b!1206368) bm!58728))

(declare-fun m!1112099 () Bool)

(assert (=> b!1206366 m!1112099))

(assert (=> b!1206366 m!1112099))

(declare-fun m!1112101 () Bool)

(assert (=> b!1206366 m!1112101))

(assert (=> b!1206367 m!1112099))

(assert (=> b!1206367 m!1112099))

(declare-fun m!1112103 () Bool)

(assert (=> b!1206367 m!1112103))

(assert (=> b!1206369 m!1112099))

(assert (=> b!1206369 m!1112099))

(assert (=> b!1206369 m!1112103))

(assert (=> bm!58728 m!1112099))

(declare-fun m!1112105 () Bool)

(assert (=> bm!58728 m!1112105))

(assert (=> b!1206250 d!132827))

(declare-fun d!132829 () Bool)

(declare-fun lt!547210 () ListLongMap!17851)

(assert (=> d!132829 (not (contains!6942 lt!547210 k0!934))))

(declare-fun removeStrictlySorted!98 (List!26693 (_ BitVec 64)) List!26693)

(assert (=> d!132829 (= lt!547210 (ListLongMap!17852 (removeStrictlySorted!98 (toList!8941 call!58692) k0!934)))))

(assert (=> d!132829 (= (-!1851 call!58692 k0!934) lt!547210)))

(declare-fun bs!34109 () Bool)

(assert (= bs!34109 d!132829))

(declare-fun m!1112107 () Bool)

(assert (=> bs!34109 m!1112107))

(declare-fun m!1112109 () Bool)

(assert (=> bs!34109 m!1112109))

(assert (=> b!1206258 d!132829))

(declare-fun b!1206395 () Bool)

(declare-fun res!802366 () Bool)

(declare-fun e!685132 () Bool)

(assert (=> b!1206395 (=> (not res!802366) (not e!685132))))

(declare-fun lt!547225 () ListLongMap!17851)

(assert (=> b!1206395 (= res!802366 (not (contains!6942 lt!547225 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1206396 () Bool)

(declare-fun e!685135 () Bool)

(declare-fun e!685130 () Bool)

(assert (=> b!1206396 (= e!685135 e!685130)))

(declare-fun c!118413 () Bool)

(assert (=> b!1206396 (= c!118413 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 _keys!1208)))))

(declare-fun d!132831 () Bool)

(assert (=> d!132831 e!685132))

(declare-fun res!802363 () Bool)

(assert (=> d!132831 (=> (not res!802363) (not e!685132))))

(assert (=> d!132831 (= res!802363 (not (contains!6942 lt!547225 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!685134 () ListLongMap!17851)

(assert (=> d!132831 (= lt!547225 e!685134)))

(declare-fun c!118414 () Bool)

(assert (=> d!132831 (= c!118414 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 _keys!1208)))))

(assert (=> d!132831 (validMask!0 mask!1564)))

(assert (=> d!132831 (= (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547225)))

(declare-fun b!1206397 () Bool)

(declare-fun e!685136 () ListLongMap!17851)

(assert (=> b!1206397 (= e!685134 e!685136)))

(declare-fun c!118415 () Bool)

(assert (=> b!1206397 (= c!118415 (validKeyInArray!0 (select (arr!37667 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1206398 () Bool)

(assert (=> b!1206398 (= e!685130 (= lt!547225 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1206399 () Bool)

(declare-fun e!685133 () Bool)

(assert (=> b!1206399 (= e!685133 (validKeyInArray!0 (select (arr!37667 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1206399 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1206400 () Bool)

(declare-fun e!685131 () Bool)

(assert (=> b!1206400 (= e!685135 e!685131)))

(assert (=> b!1206400 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 _keys!1208)))))

(declare-fun res!802365 () Bool)

(assert (=> b!1206400 (= res!802365 (contains!6942 lt!547225 (select (arr!37667 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1206400 (=> (not res!802365) (not e!685131))))

(declare-fun b!1206401 () Bool)

(declare-fun call!58734 () ListLongMap!17851)

(assert (=> b!1206401 (= e!685136 call!58734)))

(declare-fun b!1206402 () Bool)

(assert (=> b!1206402 (= e!685134 (ListLongMap!17852 Nil!26690))))

(declare-fun b!1206403 () Bool)

(assert (=> b!1206403 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 _keys!1208)))))

(assert (=> b!1206403 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38203 _values!996)))))

(declare-fun apply!999 (ListLongMap!17851 (_ BitVec 64)) V!45995)

(declare-fun get!19238 (ValueCell!14616 V!45995) V!45995)

(assert (=> b!1206403 (= e!685131 (= (apply!999 lt!547225 (select (arr!37667 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19238 (select (arr!37666 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1206404 () Bool)

(assert (=> b!1206404 (= e!685132 e!685135)))

(declare-fun c!118412 () Bool)

(assert (=> b!1206404 (= c!118412 e!685133)))

(declare-fun res!802364 () Bool)

(assert (=> b!1206404 (=> (not res!802364) (not e!685133))))

(assert (=> b!1206404 (= res!802364 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 _keys!1208)))))

(declare-fun b!1206405 () Bool)

(declare-fun lt!547229 () Unit!39913)

(declare-fun lt!547230 () Unit!39913)

(assert (=> b!1206405 (= lt!547229 lt!547230)))

(declare-fun lt!547231 () (_ BitVec 64))

(declare-fun lt!547227 () V!45995)

(declare-fun lt!547226 () ListLongMap!17851)

(declare-fun lt!547228 () (_ BitVec 64))

(assert (=> b!1206405 (not (contains!6942 (+!3970 lt!547226 (tuple2!19871 lt!547231 lt!547227)) lt!547228))))

(declare-fun addStillNotContains!294 (ListLongMap!17851 (_ BitVec 64) V!45995 (_ BitVec 64)) Unit!39913)

(assert (=> b!1206405 (= lt!547230 (addStillNotContains!294 lt!547226 lt!547231 lt!547227 lt!547228))))

(assert (=> b!1206405 (= lt!547228 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1206405 (= lt!547227 (get!19238 (select (arr!37666 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1206405 (= lt!547231 (select (arr!37667 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1206405 (= lt!547226 call!58734)))

(assert (=> b!1206405 (= e!685136 (+!3970 call!58734 (tuple2!19871 (select (arr!37667 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19238 (select (arr!37666 _values!996) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1206406 () Bool)

(declare-fun isEmpty!989 (ListLongMap!17851) Bool)

(assert (=> b!1206406 (= e!685130 (isEmpty!989 lt!547225))))

(declare-fun bm!58731 () Bool)

(assert (=> bm!58731 (= call!58734 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132831 c!118414) b!1206402))

(assert (= (and d!132831 (not c!118414)) b!1206397))

(assert (= (and b!1206397 c!118415) b!1206405))

(assert (= (and b!1206397 (not c!118415)) b!1206401))

(assert (= (or b!1206405 b!1206401) bm!58731))

(assert (= (and d!132831 res!802363) b!1206395))

(assert (= (and b!1206395 res!802366) b!1206404))

(assert (= (and b!1206404 res!802364) b!1206399))

(assert (= (and b!1206404 c!118412) b!1206400))

(assert (= (and b!1206404 (not c!118412)) b!1206396))

(assert (= (and b!1206400 res!802365) b!1206403))

(assert (= (and b!1206396 c!118413) b!1206398))

(assert (= (and b!1206396 (not c!118413)) b!1206406))

(declare-fun b_lambda!21369 () Bool)

(assert (=> (not b_lambda!21369) (not b!1206403)))

(assert (=> b!1206403 t!39626))

(declare-fun b_and!42901 () Bool)

(assert (= b_and!42899 (and (=> t!39626 result!22087) b_and!42901)))

(declare-fun b_lambda!21371 () Bool)

(assert (=> (not b_lambda!21371) (not b!1206405)))

(assert (=> b!1206405 t!39626))

(declare-fun b_and!42903 () Bool)

(assert (= b_and!42901 (and (=> t!39626 result!22087) b_and!42903)))

(declare-fun m!1112111 () Bool)

(assert (=> b!1206400 m!1112111))

(assert (=> b!1206400 m!1112111))

(declare-fun m!1112113 () Bool)

(assert (=> b!1206400 m!1112113))

(assert (=> b!1206399 m!1112111))

(assert (=> b!1206399 m!1112111))

(declare-fun m!1112115 () Bool)

(assert (=> b!1206399 m!1112115))

(declare-fun m!1112117 () Bool)

(assert (=> bm!58731 m!1112117))

(assert (=> b!1206398 m!1112117))

(declare-fun m!1112119 () Bool)

(assert (=> b!1206406 m!1112119))

(declare-fun m!1112121 () Bool)

(assert (=> b!1206395 m!1112121))

(assert (=> b!1206403 m!1111963))

(assert (=> b!1206403 m!1112111))

(declare-fun m!1112123 () Bool)

(assert (=> b!1206403 m!1112123))

(assert (=> b!1206403 m!1112111))

(declare-fun m!1112125 () Bool)

(assert (=> b!1206403 m!1112125))

(assert (=> b!1206403 m!1112125))

(assert (=> b!1206403 m!1111963))

(declare-fun m!1112127 () Bool)

(assert (=> b!1206403 m!1112127))

(assert (=> b!1206405 m!1111963))

(declare-fun m!1112129 () Bool)

(assert (=> b!1206405 m!1112129))

(declare-fun m!1112131 () Bool)

(assert (=> b!1206405 m!1112131))

(assert (=> b!1206405 m!1112129))

(declare-fun m!1112133 () Bool)

(assert (=> b!1206405 m!1112133))

(assert (=> b!1206405 m!1112111))

(declare-fun m!1112135 () Bool)

(assert (=> b!1206405 m!1112135))

(assert (=> b!1206405 m!1112125))

(assert (=> b!1206405 m!1112125))

(assert (=> b!1206405 m!1111963))

(assert (=> b!1206405 m!1112127))

(declare-fun m!1112137 () Bool)

(assert (=> d!132831 m!1112137))

(assert (=> d!132831 m!1111969))

(assert (=> b!1206397 m!1112111))

(assert (=> b!1206397 m!1112111))

(assert (=> b!1206397 m!1112115))

(assert (=> bm!58690 d!132831))

(declare-fun d!132833 () Bool)

(declare-fun res!802371 () Bool)

(declare-fun e!685141 () Bool)

(assert (=> d!132833 (=> res!802371 e!685141)))

(assert (=> d!132833 (= res!802371 (= (select (arr!37667 _keys!1208) (bvadd #b00000000000000000000000000000001 from!1455)) k0!934))))

(assert (=> d!132833 (= (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)) e!685141)))

(declare-fun b!1206411 () Bool)

(declare-fun e!685142 () Bool)

(assert (=> b!1206411 (= e!685141 e!685142)))

(declare-fun res!802372 () Bool)

(assert (=> b!1206411 (=> (not res!802372) (not e!685142))))

(assert (=> b!1206411 (= res!802372 (bvslt (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) (size!38204 _keys!1208)))))

(declare-fun b!1206412 () Bool)

(assert (=> b!1206412 (= e!685142 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001)))))

(assert (= (and d!132833 (not res!802371)) b!1206411))

(assert (= (and b!1206411 res!802372) b!1206412))

(assert (=> d!132833 m!1112111))

(declare-fun m!1112139 () Bool)

(assert (=> b!1206412 m!1112139))

(assert (=> b!1206232 d!132833))

(declare-fun d!132835 () Bool)

(declare-fun res!802378 () Bool)

(declare-fun e!685149 () Bool)

(assert (=> d!132835 (=> res!802378 e!685149)))

(assert (=> d!132835 (= res!802378 (bvsge #b00000000000000000000000000000000 (size!38204 _keys!1208)))))

(assert (=> d!132835 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!685149)))

(declare-fun b!1206421 () Bool)

(declare-fun e!685150 () Bool)

(declare-fun call!58737 () Bool)

(assert (=> b!1206421 (= e!685150 call!58737)))

(declare-fun b!1206422 () Bool)

(assert (=> b!1206422 (= e!685149 e!685150)))

(declare-fun c!118418 () Bool)

(assert (=> b!1206422 (= c!118418 (validKeyInArray!0 (select (arr!37667 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1206423 () Bool)

(declare-fun e!685151 () Bool)

(assert (=> b!1206423 (= e!685150 e!685151)))

(declare-fun lt!547238 () (_ BitVec 64))

(assert (=> b!1206423 (= lt!547238 (select (arr!37667 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!547239 () Unit!39913)

(assert (=> b!1206423 (= lt!547239 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!547238 #b00000000000000000000000000000000))))

(assert (=> b!1206423 (arrayContainsKey!0 _keys!1208 lt!547238 #b00000000000000000000000000000000)))

(declare-fun lt!547240 () Unit!39913)

(assert (=> b!1206423 (= lt!547240 lt!547239)))

(declare-fun res!802377 () Bool)

(declare-datatypes ((SeekEntryResult!9934 0))(
  ( (MissingZero!9934 (index!42106 (_ BitVec 32))) (Found!9934 (index!42107 (_ BitVec 32))) (Intermediate!9934 (undefined!10746 Bool) (index!42108 (_ BitVec 32)) (x!106518 (_ BitVec 32))) (Undefined!9934) (MissingVacant!9934 (index!42109 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!78060 (_ BitVec 32)) SeekEntryResult!9934)

(assert (=> b!1206423 (= res!802377 (= (seekEntryOrOpen!0 (select (arr!37667 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9934 #b00000000000000000000000000000000)))))

(assert (=> b!1206423 (=> (not res!802377) (not e!685151))))

(declare-fun b!1206424 () Bool)

(assert (=> b!1206424 (= e!685151 call!58737)))

(declare-fun bm!58734 () Bool)

(assert (=> bm!58734 (= call!58737 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(assert (= (and d!132835 (not res!802378)) b!1206422))

(assert (= (and b!1206422 c!118418) b!1206423))

(assert (= (and b!1206422 (not c!118418)) b!1206421))

(assert (= (and b!1206423 res!802377) b!1206424))

(assert (= (or b!1206424 b!1206421) bm!58734))

(assert (=> b!1206422 m!1112099))

(assert (=> b!1206422 m!1112099))

(assert (=> b!1206422 m!1112103))

(assert (=> b!1206423 m!1112099))

(declare-fun m!1112141 () Bool)

(assert (=> b!1206423 m!1112141))

(declare-fun m!1112143 () Bool)

(assert (=> b!1206423 m!1112143))

(assert (=> b!1206423 m!1112099))

(declare-fun m!1112145 () Bool)

(assert (=> b!1206423 m!1112145))

(declare-fun m!1112147 () Bool)

(assert (=> bm!58734 m!1112147))

(assert (=> b!1206256 d!132835))

(assert (=> b!1206240 d!132833))

(declare-fun d!132837 () Bool)

(assert (=> d!132837 (contains!6942 (+!3970 (ite c!118381 lt!547154 lt!547153) (tuple2!19871 (ite c!118381 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118382 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118381 minValue!944 (ite c!118382 zeroValue!944 minValue!944)))) k0!934)))

(declare-fun lt!547243 () Unit!39913)

(declare-fun choose!1806 (ListLongMap!17851 (_ BitVec 64) V!45995 (_ BitVec 64)) Unit!39913)

(assert (=> d!132837 (= lt!547243 (choose!1806 (ite c!118381 lt!547154 lt!547153) (ite c!118381 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118382 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118381 minValue!944 (ite c!118382 zeroValue!944 minValue!944)) k0!934))))

(assert (=> d!132837 (contains!6942 (ite c!118381 lt!547154 lt!547153) k0!934)))

(assert (=> d!132837 (= (addStillContains!1035 (ite c!118381 lt!547154 lt!547153) (ite c!118381 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118382 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118381 minValue!944 (ite c!118382 zeroValue!944 minValue!944)) k0!934) lt!547243)))

(declare-fun bs!34110 () Bool)

(assert (= bs!34110 d!132837))

(declare-fun m!1112149 () Bool)

(assert (=> bs!34110 m!1112149))

(assert (=> bs!34110 m!1112149))

(declare-fun m!1112151 () Bool)

(assert (=> bs!34110 m!1112151))

(declare-fun m!1112153 () Bool)

(assert (=> bs!34110 m!1112153))

(declare-fun m!1112155 () Bool)

(assert (=> bs!34110 m!1112155))

(assert (=> bm!58688 d!132837))

(declare-fun b!1206426 () Bool)

(declare-fun res!802382 () Bool)

(declare-fun e!685154 () Bool)

(assert (=> b!1206426 (=> (not res!802382) (not e!685154))))

(declare-fun lt!547244 () ListLongMap!17851)

(assert (=> b!1206426 (= res!802382 (not (contains!6942 lt!547244 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1206427 () Bool)

(declare-fun e!685157 () Bool)

(declare-fun e!685152 () Bool)

(assert (=> b!1206427 (= e!685157 e!685152)))

(declare-fun c!118420 () Bool)

(assert (=> b!1206427 (= c!118420 (bvslt from!1455 (size!38204 lt!547152)))))

(declare-fun d!132839 () Bool)

(assert (=> d!132839 e!685154))

(declare-fun res!802379 () Bool)

(assert (=> d!132839 (=> (not res!802379) (not e!685154))))

(assert (=> d!132839 (= res!802379 (not (contains!6942 lt!547244 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!685156 () ListLongMap!17851)

(assert (=> d!132839 (= lt!547244 e!685156)))

(declare-fun c!118421 () Bool)

(assert (=> d!132839 (= c!118421 (bvsge from!1455 (size!38204 lt!547152)))))

(assert (=> d!132839 (validMask!0 mask!1564)))

(assert (=> d!132839 (= (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!547244)))

(declare-fun b!1206428 () Bool)

(declare-fun e!685158 () ListLongMap!17851)

(assert (=> b!1206428 (= e!685156 e!685158)))

(declare-fun c!118422 () Bool)

(assert (=> b!1206428 (= c!118422 (validKeyInArray!0 (select (arr!37667 lt!547152) from!1455)))))

(declare-fun b!1206429 () Bool)

(assert (=> b!1206429 (= e!685152 (= lt!547244 (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1206430 () Bool)

(declare-fun e!685155 () Bool)

(assert (=> b!1206430 (= e!685155 (validKeyInArray!0 (select (arr!37667 lt!547152) from!1455)))))

(assert (=> b!1206430 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1206431 () Bool)

(declare-fun e!685153 () Bool)

(assert (=> b!1206431 (= e!685157 e!685153)))

(assert (=> b!1206431 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38204 lt!547152)))))

(declare-fun res!802381 () Bool)

(assert (=> b!1206431 (= res!802381 (contains!6942 lt!547244 (select (arr!37667 lt!547152) from!1455)))))

(assert (=> b!1206431 (=> (not res!802381) (not e!685153))))

(declare-fun b!1206432 () Bool)

(declare-fun call!58738 () ListLongMap!17851)

(assert (=> b!1206432 (= e!685158 call!58738)))

(declare-fun b!1206433 () Bool)

(assert (=> b!1206433 (= e!685156 (ListLongMap!17852 Nil!26690))))

(declare-fun b!1206434 () Bool)

(assert (=> b!1206434 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38204 lt!547152)))))

(assert (=> b!1206434 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38203 lt!547151)))))

(assert (=> b!1206434 (= e!685153 (= (apply!999 lt!547244 (select (arr!37667 lt!547152) from!1455)) (get!19238 (select (arr!37666 lt!547151) from!1455) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1206435 () Bool)

(assert (=> b!1206435 (= e!685154 e!685157)))

(declare-fun c!118419 () Bool)

(assert (=> b!1206435 (= c!118419 e!685155)))

(declare-fun res!802380 () Bool)

(assert (=> b!1206435 (=> (not res!802380) (not e!685155))))

(assert (=> b!1206435 (= res!802380 (bvslt from!1455 (size!38204 lt!547152)))))

(declare-fun b!1206436 () Bool)

(declare-fun lt!547248 () Unit!39913)

(declare-fun lt!547249 () Unit!39913)

(assert (=> b!1206436 (= lt!547248 lt!547249)))

(declare-fun lt!547250 () (_ BitVec 64))

(declare-fun lt!547246 () V!45995)

(declare-fun lt!547247 () (_ BitVec 64))

(declare-fun lt!547245 () ListLongMap!17851)

(assert (=> b!1206436 (not (contains!6942 (+!3970 lt!547245 (tuple2!19871 lt!547250 lt!547246)) lt!547247))))

(assert (=> b!1206436 (= lt!547249 (addStillNotContains!294 lt!547245 lt!547250 lt!547246 lt!547247))))

(assert (=> b!1206436 (= lt!547247 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1206436 (= lt!547246 (get!19238 (select (arr!37666 lt!547151) from!1455) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1206436 (= lt!547250 (select (arr!37667 lt!547152) from!1455))))

(assert (=> b!1206436 (= lt!547245 call!58738)))

(assert (=> b!1206436 (= e!685158 (+!3970 call!58738 (tuple2!19871 (select (arr!37667 lt!547152) from!1455) (get!19238 (select (arr!37666 lt!547151) from!1455) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1206437 () Bool)

(assert (=> b!1206437 (= e!685152 (isEmpty!989 lt!547244))))

(declare-fun bm!58735 () Bool)

(assert (=> bm!58735 (= call!58738 (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132839 c!118421) b!1206433))

(assert (= (and d!132839 (not c!118421)) b!1206428))

(assert (= (and b!1206428 c!118422) b!1206436))

(assert (= (and b!1206428 (not c!118422)) b!1206432))

(assert (= (or b!1206436 b!1206432) bm!58735))

(assert (= (and d!132839 res!802379) b!1206426))

(assert (= (and b!1206426 res!802382) b!1206435))

(assert (= (and b!1206435 res!802380) b!1206430))

(assert (= (and b!1206435 c!118419) b!1206431))

(assert (= (and b!1206435 (not c!118419)) b!1206427))

(assert (= (and b!1206431 res!802381) b!1206434))

(assert (= (and b!1206427 c!118420) b!1206429))

(assert (= (and b!1206427 (not c!118420)) b!1206437))

(declare-fun b_lambda!21373 () Bool)

(assert (=> (not b_lambda!21373) (not b!1206434)))

(assert (=> b!1206434 t!39626))

(declare-fun b_and!42905 () Bool)

(assert (= b_and!42903 (and (=> t!39626 result!22087) b_and!42905)))

(declare-fun b_lambda!21375 () Bool)

(assert (=> (not b_lambda!21375) (not b!1206436)))

(assert (=> b!1206436 t!39626))

(declare-fun b_and!42907 () Bool)

(assert (= b_and!42905 (and (=> t!39626 result!22087) b_and!42907)))

(declare-fun m!1112157 () Bool)

(assert (=> b!1206431 m!1112157))

(assert (=> b!1206431 m!1112157))

(declare-fun m!1112159 () Bool)

(assert (=> b!1206431 m!1112159))

(assert (=> b!1206430 m!1112157))

(assert (=> b!1206430 m!1112157))

(declare-fun m!1112161 () Bool)

(assert (=> b!1206430 m!1112161))

(declare-fun m!1112163 () Bool)

(assert (=> bm!58735 m!1112163))

(assert (=> b!1206429 m!1112163))

(declare-fun m!1112165 () Bool)

(assert (=> b!1206437 m!1112165))

(declare-fun m!1112167 () Bool)

(assert (=> b!1206426 m!1112167))

(assert (=> b!1206434 m!1111963))

(assert (=> b!1206434 m!1112157))

(declare-fun m!1112169 () Bool)

(assert (=> b!1206434 m!1112169))

(assert (=> b!1206434 m!1112157))

(declare-fun m!1112171 () Bool)

(assert (=> b!1206434 m!1112171))

(assert (=> b!1206434 m!1112171))

(assert (=> b!1206434 m!1111963))

(declare-fun m!1112173 () Bool)

(assert (=> b!1206434 m!1112173))

(assert (=> b!1206436 m!1111963))

(declare-fun m!1112175 () Bool)

(assert (=> b!1206436 m!1112175))

(declare-fun m!1112177 () Bool)

(assert (=> b!1206436 m!1112177))

(assert (=> b!1206436 m!1112175))

(declare-fun m!1112179 () Bool)

(assert (=> b!1206436 m!1112179))

(assert (=> b!1206436 m!1112157))

(declare-fun m!1112181 () Bool)

(assert (=> b!1206436 m!1112181))

(assert (=> b!1206436 m!1112171))

(assert (=> b!1206436 m!1112171))

(assert (=> b!1206436 m!1111963))

(assert (=> b!1206436 m!1112173))

(declare-fun m!1112183 () Bool)

(assert (=> d!132839 m!1112183))

(assert (=> d!132839 m!1111969))

(assert (=> b!1206428 m!1112157))

(assert (=> b!1206428 m!1112157))

(assert (=> b!1206428 m!1112161))

(assert (=> b!1206257 d!132839))

(declare-fun b!1206438 () Bool)

(declare-fun res!802386 () Bool)

(declare-fun e!685161 () Bool)

(assert (=> b!1206438 (=> (not res!802386) (not e!685161))))

(declare-fun lt!547251 () ListLongMap!17851)

(assert (=> b!1206438 (= res!802386 (not (contains!6942 lt!547251 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1206439 () Bool)

(declare-fun e!685164 () Bool)

(declare-fun e!685159 () Bool)

(assert (=> b!1206439 (= e!685164 e!685159)))

(declare-fun c!118424 () Bool)

(assert (=> b!1206439 (= c!118424 (bvslt from!1455 (size!38204 _keys!1208)))))

(declare-fun d!132841 () Bool)

(assert (=> d!132841 e!685161))

(declare-fun res!802383 () Bool)

(assert (=> d!132841 (=> (not res!802383) (not e!685161))))

(assert (=> d!132841 (= res!802383 (not (contains!6942 lt!547251 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!685163 () ListLongMap!17851)

(assert (=> d!132841 (= lt!547251 e!685163)))

(declare-fun c!118425 () Bool)

(assert (=> d!132841 (= c!118425 (bvsge from!1455 (size!38204 _keys!1208)))))

(assert (=> d!132841 (validMask!0 mask!1564)))

(assert (=> d!132841 (= (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004) lt!547251)))

(declare-fun b!1206440 () Bool)

(declare-fun e!685165 () ListLongMap!17851)

(assert (=> b!1206440 (= e!685163 e!685165)))

(declare-fun c!118426 () Bool)

(assert (=> b!1206440 (= c!118426 (validKeyInArray!0 (select (arr!37667 _keys!1208) from!1455)))))

(declare-fun b!1206441 () Bool)

(assert (=> b!1206441 (= e!685159 (= lt!547251 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1206442 () Bool)

(declare-fun e!685162 () Bool)

(assert (=> b!1206442 (= e!685162 (validKeyInArray!0 (select (arr!37667 _keys!1208) from!1455)))))

(assert (=> b!1206442 (bvsge from!1455 #b00000000000000000000000000000000)))

(declare-fun b!1206443 () Bool)

(declare-fun e!685160 () Bool)

(assert (=> b!1206443 (= e!685164 e!685160)))

(assert (=> b!1206443 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38204 _keys!1208)))))

(declare-fun res!802385 () Bool)

(assert (=> b!1206443 (= res!802385 (contains!6942 lt!547251 (select (arr!37667 _keys!1208) from!1455)))))

(assert (=> b!1206443 (=> (not res!802385) (not e!685160))))

(declare-fun b!1206444 () Bool)

(declare-fun call!58739 () ListLongMap!17851)

(assert (=> b!1206444 (= e!685165 call!58739)))

(declare-fun b!1206445 () Bool)

(assert (=> b!1206445 (= e!685163 (ListLongMap!17852 Nil!26690))))

(declare-fun b!1206446 () Bool)

(assert (=> b!1206446 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38204 _keys!1208)))))

(assert (=> b!1206446 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvslt from!1455 (size!38203 _values!996)))))

(assert (=> b!1206446 (= e!685160 (= (apply!999 lt!547251 (select (arr!37667 _keys!1208) from!1455)) (get!19238 (select (arr!37666 _values!996) from!1455) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1206447 () Bool)

(assert (=> b!1206447 (= e!685161 e!685164)))

(declare-fun c!118423 () Bool)

(assert (=> b!1206447 (= c!118423 e!685162)))

(declare-fun res!802384 () Bool)

(assert (=> b!1206447 (=> (not res!802384) (not e!685162))))

(assert (=> b!1206447 (= res!802384 (bvslt from!1455 (size!38204 _keys!1208)))))

(declare-fun b!1206448 () Bool)

(declare-fun lt!547255 () Unit!39913)

(declare-fun lt!547256 () Unit!39913)

(assert (=> b!1206448 (= lt!547255 lt!547256)))

(declare-fun lt!547254 () (_ BitVec 64))

(declare-fun lt!547257 () (_ BitVec 64))

(declare-fun lt!547253 () V!45995)

(declare-fun lt!547252 () ListLongMap!17851)

(assert (=> b!1206448 (not (contains!6942 (+!3970 lt!547252 (tuple2!19871 lt!547257 lt!547253)) lt!547254))))

(assert (=> b!1206448 (= lt!547256 (addStillNotContains!294 lt!547252 lt!547257 lt!547253 lt!547254))))

(assert (=> b!1206448 (= lt!547254 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1206448 (= lt!547253 (get!19238 (select (arr!37666 _values!996) from!1455) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1206448 (= lt!547257 (select (arr!37667 _keys!1208) from!1455))))

(assert (=> b!1206448 (= lt!547252 call!58739)))

(assert (=> b!1206448 (= e!685165 (+!3970 call!58739 (tuple2!19871 (select (arr!37667 _keys!1208) from!1455) (get!19238 (select (arr!37666 _values!996) from!1455) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1206449 () Bool)

(assert (=> b!1206449 (= e!685159 (isEmpty!989 lt!547251))))

(declare-fun bm!58736 () Bool)

(assert (=> bm!58736 (= call!58739 (getCurrentListMapNoExtraKeys!5348 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132841 c!118425) b!1206445))

(assert (= (and d!132841 (not c!118425)) b!1206440))

(assert (= (and b!1206440 c!118426) b!1206448))

(assert (= (and b!1206440 (not c!118426)) b!1206444))

(assert (= (or b!1206448 b!1206444) bm!58736))

(assert (= (and d!132841 res!802383) b!1206438))

(assert (= (and b!1206438 res!802386) b!1206447))

(assert (= (and b!1206447 res!802384) b!1206442))

(assert (= (and b!1206447 c!118423) b!1206443))

(assert (= (and b!1206447 (not c!118423)) b!1206439))

(assert (= (and b!1206443 res!802385) b!1206446))

(assert (= (and b!1206439 c!118424) b!1206441))

(assert (= (and b!1206439 (not c!118424)) b!1206449))

(declare-fun b_lambda!21377 () Bool)

(assert (=> (not b_lambda!21377) (not b!1206446)))

(assert (=> b!1206446 t!39626))

(declare-fun b_and!42909 () Bool)

(assert (= b_and!42907 (and (=> t!39626 result!22087) b_and!42909)))

(declare-fun b_lambda!21379 () Bool)

(assert (=> (not b_lambda!21379) (not b!1206448)))

(assert (=> b!1206448 t!39626))

(declare-fun b_and!42911 () Bool)

(assert (= b_and!42909 (and (=> t!39626 result!22087) b_and!42911)))

(assert (=> b!1206443 m!1111995))

(assert (=> b!1206443 m!1111995))

(declare-fun m!1112185 () Bool)

(assert (=> b!1206443 m!1112185))

(assert (=> b!1206442 m!1111995))

(assert (=> b!1206442 m!1111995))

(declare-fun m!1112187 () Bool)

(assert (=> b!1206442 m!1112187))

(declare-fun m!1112189 () Bool)

(assert (=> bm!58736 m!1112189))

(assert (=> b!1206441 m!1112189))

(declare-fun m!1112191 () Bool)

(assert (=> b!1206449 m!1112191))

(declare-fun m!1112193 () Bool)

(assert (=> b!1206438 m!1112193))

(assert (=> b!1206446 m!1111963))

(assert (=> b!1206446 m!1111995))

(declare-fun m!1112195 () Bool)

(assert (=> b!1206446 m!1112195))

(assert (=> b!1206446 m!1111995))

(declare-fun m!1112197 () Bool)

(assert (=> b!1206446 m!1112197))

(assert (=> b!1206446 m!1112197))

(assert (=> b!1206446 m!1111963))

(declare-fun m!1112199 () Bool)

(assert (=> b!1206446 m!1112199))

(assert (=> b!1206448 m!1111963))

(declare-fun m!1112201 () Bool)

(assert (=> b!1206448 m!1112201))

(declare-fun m!1112203 () Bool)

(assert (=> b!1206448 m!1112203))

(assert (=> b!1206448 m!1112201))

(declare-fun m!1112205 () Bool)

(assert (=> b!1206448 m!1112205))

(assert (=> b!1206448 m!1111995))

(declare-fun m!1112207 () Bool)

(assert (=> b!1206448 m!1112207))

(assert (=> b!1206448 m!1112197))

(assert (=> b!1206448 m!1112197))

(assert (=> b!1206448 m!1111963))

(assert (=> b!1206448 m!1112199))

(declare-fun m!1112209 () Bool)

(assert (=> d!132841 m!1112209))

(assert (=> d!132841 m!1111969))

(assert (=> b!1206440 m!1111995))

(assert (=> b!1206440 m!1111995))

(assert (=> b!1206440 m!1112187))

(assert (=> b!1206257 d!132841))

(declare-fun d!132843 () Bool)

(assert (=> d!132843 (= (array_inv!28594 _keys!1208) (bvsge (size!38204 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!100812 d!132843))

(declare-fun d!132845 () Bool)

(assert (=> d!132845 (= (array_inv!28595 _values!996) (bvsge (size!38203 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!100812 d!132845))

(declare-fun d!132847 () Bool)

(assert (=> d!132847 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1206243 d!132847))

(declare-fun d!132849 () Bool)

(assert (=> d!132849 (contains!6942 (+!3970 lt!547153 (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!547258 () Unit!39913)

(assert (=> d!132849 (= lt!547258 (choose!1806 lt!547153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> d!132849 (contains!6942 lt!547153 k0!934)))

(assert (=> d!132849 (= (addStillContains!1035 lt!547153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934) lt!547258)))

(declare-fun bs!34111 () Bool)

(assert (= bs!34111 d!132849))

(declare-fun m!1112211 () Bool)

(assert (=> bs!34111 m!1112211))

(assert (=> bs!34111 m!1112211))

(declare-fun m!1112213 () Bool)

(assert (=> bs!34111 m!1112213))

(declare-fun m!1112215 () Bool)

(assert (=> bs!34111 m!1112215))

(assert (=> bs!34111 m!1112017))

(assert (=> b!1206253 d!132849))

(declare-fun d!132851 () Bool)

(declare-fun e!685170 () Bool)

(assert (=> d!132851 e!685170))

(declare-fun res!802389 () Bool)

(assert (=> d!132851 (=> res!802389 e!685170)))

(declare-fun lt!547269 () Bool)

(assert (=> d!132851 (= res!802389 (not lt!547269))))

(declare-fun lt!547270 () Bool)

(assert (=> d!132851 (= lt!547269 lt!547270)))

(declare-fun lt!547267 () Unit!39913)

(declare-fun e!685171 () Unit!39913)

(assert (=> d!132851 (= lt!547267 e!685171)))

(declare-fun c!118429 () Bool)

(assert (=> d!132851 (= c!118429 lt!547270)))

(declare-fun containsKey!592 (List!26693 (_ BitVec 64)) Bool)

(assert (=> d!132851 (= lt!547270 (containsKey!592 (toList!8941 (+!3970 lt!547154 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(assert (=> d!132851 (= (contains!6942 (+!3970 lt!547154 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934) lt!547269)))

(declare-fun b!1206456 () Bool)

(declare-fun lt!547268 () Unit!39913)

(assert (=> b!1206456 (= e!685171 lt!547268)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!421 (List!26693 (_ BitVec 64)) Unit!39913)

(assert (=> b!1206456 (= lt!547268 (lemmaContainsKeyImpliesGetValueByKeyDefined!421 (toList!8941 (+!3970 lt!547154 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-datatypes ((Option!689 0))(
  ( (Some!688 (v!18029 V!45995)) (None!687) )
))
(declare-fun isDefined!461 (Option!689) Bool)

(declare-fun getValueByKey!638 (List!26693 (_ BitVec 64)) Option!689)

(assert (=> b!1206456 (isDefined!461 (getValueByKey!638 (toList!8941 (+!3970 lt!547154 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934))))

(declare-fun b!1206457 () Bool)

(declare-fun Unit!39918 () Unit!39913)

(assert (=> b!1206457 (= e!685171 Unit!39918)))

(declare-fun b!1206458 () Bool)

(assert (=> b!1206458 (= e!685170 (isDefined!461 (getValueByKey!638 (toList!8941 (+!3970 lt!547154 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) k0!934)))))

(assert (= (and d!132851 c!118429) b!1206456))

(assert (= (and d!132851 (not c!118429)) b!1206457))

(assert (= (and d!132851 (not res!802389)) b!1206458))

(declare-fun m!1112217 () Bool)

(assert (=> d!132851 m!1112217))

(declare-fun m!1112219 () Bool)

(assert (=> b!1206456 m!1112219))

(declare-fun m!1112221 () Bool)

(assert (=> b!1206456 m!1112221))

(assert (=> b!1206456 m!1112221))

(declare-fun m!1112223 () Bool)

(assert (=> b!1206456 m!1112223))

(assert (=> b!1206458 m!1112221))

(assert (=> b!1206458 m!1112221))

(assert (=> b!1206458 m!1112223))

(assert (=> b!1206253 d!132851))

(declare-fun d!132853 () Bool)

(declare-fun e!685174 () Bool)

(assert (=> d!132853 e!685174))

(declare-fun res!802394 () Bool)

(assert (=> d!132853 (=> (not res!802394) (not e!685174))))

(declare-fun lt!547282 () ListLongMap!17851)

(assert (=> d!132853 (= res!802394 (contains!6942 lt!547282 (_1!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lt!547280 () List!26693)

(assert (=> d!132853 (= lt!547282 (ListLongMap!17852 lt!547280))))

(declare-fun lt!547279 () Unit!39913)

(declare-fun lt!547281 () Unit!39913)

(assert (=> d!132853 (= lt!547279 lt!547281)))

(assert (=> d!132853 (= (getValueByKey!638 lt!547280 (_1!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!688 (_2!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun lemmaContainsTupThenGetReturnValue!313 (List!26693 (_ BitVec 64) V!45995) Unit!39913)

(assert (=> d!132853 (= lt!547281 (lemmaContainsTupThenGetReturnValue!313 lt!547280 (_1!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun insertStrictlySorted!405 (List!26693 (_ BitVec 64) V!45995) List!26693)

(assert (=> d!132853 (= lt!547280 (insertStrictlySorted!405 (toList!8941 lt!547154) (_1!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) (_2!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (=> d!132853 (= (+!3970 lt!547154 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) lt!547282)))

(declare-fun b!1206463 () Bool)

(declare-fun res!802395 () Bool)

(assert (=> b!1206463 (=> (not res!802395) (not e!685174))))

(assert (=> b!1206463 (= res!802395 (= (getValueByKey!638 (toList!8941 lt!547282) (_1!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (Some!688 (_2!9945 (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1206464 () Bool)

(declare-fun contains!6945 (List!26693 tuple2!19870) Bool)

(assert (=> b!1206464 (= e!685174 (contains!6945 (toList!8941 lt!547282) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))

(assert (= (and d!132853 res!802394) b!1206463))

(assert (= (and b!1206463 res!802395) b!1206464))

(declare-fun m!1112225 () Bool)

(assert (=> d!132853 m!1112225))

(declare-fun m!1112227 () Bool)

(assert (=> d!132853 m!1112227))

(declare-fun m!1112229 () Bool)

(assert (=> d!132853 m!1112229))

(declare-fun m!1112231 () Bool)

(assert (=> d!132853 m!1112231))

(declare-fun m!1112233 () Bool)

(assert (=> b!1206463 m!1112233))

(declare-fun m!1112235 () Bool)

(assert (=> b!1206464 m!1112235))

(assert (=> b!1206253 d!132853))

(declare-fun d!132855 () Bool)

(declare-fun e!685175 () Bool)

(assert (=> d!132855 e!685175))

(declare-fun res!802396 () Bool)

(assert (=> d!132855 (=> res!802396 e!685175)))

(declare-fun lt!547285 () Bool)

(assert (=> d!132855 (= res!802396 (not lt!547285))))

(declare-fun lt!547286 () Bool)

(assert (=> d!132855 (= lt!547285 lt!547286)))

(declare-fun lt!547283 () Unit!39913)

(declare-fun e!685176 () Unit!39913)

(assert (=> d!132855 (= lt!547283 e!685176)))

(declare-fun c!118430 () Bool)

(assert (=> d!132855 (= c!118430 lt!547286)))

(assert (=> d!132855 (= lt!547286 (containsKey!592 (toList!8941 lt!547153) k0!934))))

(assert (=> d!132855 (= (contains!6942 lt!547153 k0!934) lt!547285)))

(declare-fun b!1206465 () Bool)

(declare-fun lt!547284 () Unit!39913)

(assert (=> b!1206465 (= e!685176 lt!547284)))

(assert (=> b!1206465 (= lt!547284 (lemmaContainsKeyImpliesGetValueByKeyDefined!421 (toList!8941 lt!547153) k0!934))))

(assert (=> b!1206465 (isDefined!461 (getValueByKey!638 (toList!8941 lt!547153) k0!934))))

(declare-fun b!1206466 () Bool)

(declare-fun Unit!39919 () Unit!39913)

(assert (=> b!1206466 (= e!685176 Unit!39919)))

(declare-fun b!1206467 () Bool)

(assert (=> b!1206467 (= e!685175 (isDefined!461 (getValueByKey!638 (toList!8941 lt!547153) k0!934)))))

(assert (= (and d!132855 c!118430) b!1206465))

(assert (= (and d!132855 (not c!118430)) b!1206466))

(assert (= (and d!132855 (not res!802396)) b!1206467))

(declare-fun m!1112237 () Bool)

(assert (=> d!132855 m!1112237))

(declare-fun m!1112239 () Bool)

(assert (=> b!1206465 m!1112239))

(declare-fun m!1112241 () Bool)

(assert (=> b!1206465 m!1112241))

(assert (=> b!1206465 m!1112241))

(declare-fun m!1112243 () Bool)

(assert (=> b!1206465 m!1112243))

(assert (=> b!1206467 m!1112241))

(assert (=> b!1206467 m!1112241))

(assert (=> b!1206467 m!1112243))

(assert (=> b!1206237 d!132855))

(assert (=> b!1206237 d!132831))

(declare-fun d!132857 () Bool)

(assert (=> d!132857 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1206255 d!132857))

(declare-fun b!1206468 () Bool)

(declare-fun e!685180 () Bool)

(assert (=> b!1206468 (= e!685180 (contains!6944 Nil!26691 (select (arr!37667 _keys!1208) from!1455)))))

(declare-fun b!1206469 () Bool)

(declare-fun e!685177 () Bool)

(declare-fun e!685179 () Bool)

(assert (=> b!1206469 (= e!685177 e!685179)))

(declare-fun c!118431 () Bool)

(assert (=> b!1206469 (= c!118431 (validKeyInArray!0 (select (arr!37667 _keys!1208) from!1455)))))

(declare-fun d!132859 () Bool)

(declare-fun res!802398 () Bool)

(declare-fun e!685178 () Bool)

(assert (=> d!132859 (=> res!802398 e!685178)))

(assert (=> d!132859 (= res!802398 (bvsge from!1455 (size!38204 _keys!1208)))))

(assert (=> d!132859 (= (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26691) e!685178)))

(declare-fun b!1206470 () Bool)

(declare-fun call!58740 () Bool)

(assert (=> b!1206470 (= e!685179 call!58740)))

(declare-fun b!1206471 () Bool)

(assert (=> b!1206471 (= e!685178 e!685177)))

(declare-fun res!802397 () Bool)

(assert (=> b!1206471 (=> (not res!802397) (not e!685177))))

(assert (=> b!1206471 (= res!802397 (not e!685180))))

(declare-fun res!802399 () Bool)

(assert (=> b!1206471 (=> (not res!802399) (not e!685180))))

(assert (=> b!1206471 (= res!802399 (validKeyInArray!0 (select (arr!37667 _keys!1208) from!1455)))))

(declare-fun b!1206472 () Bool)

(assert (=> b!1206472 (= e!685179 call!58740)))

(declare-fun bm!58737 () Bool)

(assert (=> bm!58737 (= call!58740 (arrayNoDuplicates!0 _keys!1208 (bvadd from!1455 #b00000000000000000000000000000001) (ite c!118431 (Cons!26690 (select (arr!37667 _keys!1208) from!1455) Nil!26691) Nil!26691)))))

(assert (= (and d!132859 (not res!802398)) b!1206471))

(assert (= (and b!1206471 res!802399) b!1206468))

(assert (= (and b!1206471 res!802397) b!1206469))

(assert (= (and b!1206469 c!118431) b!1206472))

(assert (= (and b!1206469 (not c!118431)) b!1206470))

(assert (= (or b!1206472 b!1206470) bm!58737))

(assert (=> b!1206468 m!1111995))

(assert (=> b!1206468 m!1111995))

(declare-fun m!1112245 () Bool)

(assert (=> b!1206468 m!1112245))

(assert (=> b!1206469 m!1111995))

(assert (=> b!1206469 m!1111995))

(assert (=> b!1206469 m!1112187))

(assert (=> b!1206471 m!1111995))

(assert (=> b!1206471 m!1111995))

(assert (=> b!1206471 m!1112187))

(assert (=> bm!58737 m!1111995))

(declare-fun m!1112247 () Bool)

(assert (=> bm!58737 m!1112247))

(assert (=> b!1206244 d!132859))

(declare-fun d!132861 () Bool)

(assert (=> d!132861 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26691)))

(declare-fun lt!547289 () Unit!39913)

(declare-fun choose!39 (array!78060 (_ BitVec 32) (_ BitVec 32)) Unit!39913)

(assert (=> d!132861 (= lt!547289 (choose!39 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> d!132861 (bvslt (size!38204 _keys!1208) #b01111111111111111111111111111111)))

(assert (=> d!132861 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455) lt!547289)))

(declare-fun bs!34112 () Bool)

(assert (= bs!34112 d!132861))

(assert (=> bs!34112 m!1111971))

(declare-fun m!1112249 () Bool)

(assert (=> bs!34112 m!1112249))

(assert (=> b!1206244 d!132861))

(declare-fun d!132863 () Bool)

(declare-fun e!685183 () Bool)

(assert (=> d!132863 e!685183))

(declare-fun c!118434 () Bool)

(assert (=> d!132863 (= c!118434 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547292 () Unit!39913)

(declare-fun choose!1807 (array!78060 array!78058 (_ BitVec 32) (_ BitVec 32) V!45995 V!45995 (_ BitVec 64) (_ BitVec 32) Int) Unit!39913)

(assert (=> d!132863 (= lt!547292 (choose!1807 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> d!132863 (validMask!0 mask!1564)))

(assert (=> d!132863 (= (lemmaListMapContainsThenArrayContainsFrom!574 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547292)))

(declare-fun b!1206477 () Bool)

(assert (=> b!1206477 (= e!685183 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1206478 () Bool)

(assert (=> b!1206478 (= e!685183 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!132863 c!118434) b!1206477))

(assert (= (and d!132863 (not c!118434)) b!1206478))

(declare-fun m!1112251 () Bool)

(assert (=> d!132863 m!1112251))

(assert (=> d!132863 m!1111969))

(assert (=> b!1206477 m!1111979))

(assert (=> b!1206244 d!132863))

(declare-fun b!1206479 () Bool)

(declare-fun res!802403 () Bool)

(declare-fun e!685186 () Bool)

(assert (=> b!1206479 (=> (not res!802403) (not e!685186))))

(declare-fun lt!547293 () ListLongMap!17851)

(assert (=> b!1206479 (= res!802403 (not (contains!6942 lt!547293 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1206480 () Bool)

(declare-fun e!685189 () Bool)

(declare-fun e!685184 () Bool)

(assert (=> b!1206480 (= e!685189 e!685184)))

(declare-fun c!118436 () Bool)

(assert (=> b!1206480 (= c!118436 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 lt!547152)))))

(declare-fun d!132865 () Bool)

(assert (=> d!132865 e!685186))

(declare-fun res!802400 () Bool)

(assert (=> d!132865 (=> (not res!802400) (not e!685186))))

(assert (=> d!132865 (= res!802400 (not (contains!6942 lt!547293 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!685188 () ListLongMap!17851)

(assert (=> d!132865 (= lt!547293 e!685188)))

(declare-fun c!118437 () Bool)

(assert (=> d!132865 (= c!118437 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 lt!547152)))))

(assert (=> d!132865 (validMask!0 mask!1564)))

(assert (=> d!132865 (= (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) lt!547293)))

(declare-fun b!1206481 () Bool)

(declare-fun e!685190 () ListLongMap!17851)

(assert (=> b!1206481 (= e!685188 e!685190)))

(declare-fun c!118438 () Bool)

(assert (=> b!1206481 (= c!118438 (validKeyInArray!0 (select (arr!37667 lt!547152) (bvadd #b00000000000000000000000000000001 from!1455))))))

(declare-fun b!1206482 () Bool)

(assert (=> b!1206482 (= e!685184 (= lt!547293 (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004)))))

(declare-fun b!1206483 () Bool)

(declare-fun e!685187 () Bool)

(assert (=> b!1206483 (= e!685187 (validKeyInArray!0 (select (arr!37667 lt!547152) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1206483 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))

(declare-fun b!1206484 () Bool)

(declare-fun e!685185 () Bool)

(assert (=> b!1206484 (= e!685189 e!685185)))

(assert (=> b!1206484 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 lt!547152)))))

(declare-fun res!802402 () Bool)

(assert (=> b!1206484 (= res!802402 (contains!6942 lt!547293 (select (arr!37667 lt!547152) (bvadd #b00000000000000000000000000000001 from!1455))))))

(assert (=> b!1206484 (=> (not res!802402) (not e!685185))))

(declare-fun b!1206485 () Bool)

(declare-fun call!58741 () ListLongMap!17851)

(assert (=> b!1206485 (= e!685190 call!58741)))

(declare-fun b!1206486 () Bool)

(assert (=> b!1206486 (= e!685188 (ListLongMap!17852 Nil!26690))))

(declare-fun b!1206487 () Bool)

(assert (=> b!1206487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 lt!547152)))))

(assert (=> b!1206487 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38203 lt!547151)))))

(assert (=> b!1206487 (= e!685185 (= (apply!999 lt!547293 (select (arr!37667 lt!547152) (bvadd #b00000000000000000000000000000001 from!1455))) (get!19238 (select (arr!37666 lt!547151) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1206488 () Bool)

(assert (=> b!1206488 (= e!685186 e!685189)))

(declare-fun c!118435 () Bool)

(assert (=> b!1206488 (= c!118435 e!685187)))

(declare-fun res!802401 () Bool)

(assert (=> b!1206488 (=> (not res!802401) (not e!685187))))

(assert (=> b!1206488 (= res!802401 (bvslt (bvadd #b00000000000000000000000000000001 from!1455) (size!38204 lt!547152)))))

(declare-fun b!1206489 () Bool)

(declare-fun lt!547297 () Unit!39913)

(declare-fun lt!547298 () Unit!39913)

(assert (=> b!1206489 (= lt!547297 lt!547298)))

(declare-fun lt!547296 () (_ BitVec 64))

(declare-fun lt!547295 () V!45995)

(declare-fun lt!547294 () ListLongMap!17851)

(declare-fun lt!547299 () (_ BitVec 64))

(assert (=> b!1206489 (not (contains!6942 (+!3970 lt!547294 (tuple2!19871 lt!547299 lt!547295)) lt!547296))))

(assert (=> b!1206489 (= lt!547298 (addStillNotContains!294 lt!547294 lt!547299 lt!547295 lt!547296))))

(assert (=> b!1206489 (= lt!547296 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1206489 (= lt!547295 (get!19238 (select (arr!37666 lt!547151) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1206489 (= lt!547299 (select (arr!37667 lt!547152) (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1206489 (= lt!547294 call!58741)))

(assert (=> b!1206489 (= e!685190 (+!3970 call!58741 (tuple2!19871 (select (arr!37667 lt!547152) (bvadd #b00000000000000000000000000000001 from!1455)) (get!19238 (select (arr!37666 lt!547151) (bvadd #b00000000000000000000000000000001 from!1455)) (dynLambda!3269 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1206490 () Bool)

(assert (=> b!1206490 (= e!685184 (isEmpty!989 lt!547293))))

(declare-fun bm!58738 () Bool)

(assert (=> bm!58738 (= call!58741 (getCurrentListMapNoExtraKeys!5348 lt!547152 lt!547151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455 #b00000000000000000000000000000001) defaultEntry!1004))))

(assert (= (and d!132865 c!118437) b!1206486))

(assert (= (and d!132865 (not c!118437)) b!1206481))

(assert (= (and b!1206481 c!118438) b!1206489))

(assert (= (and b!1206481 (not c!118438)) b!1206485))

(assert (= (or b!1206489 b!1206485) bm!58738))

(assert (= (and d!132865 res!802400) b!1206479))

(assert (= (and b!1206479 res!802403) b!1206488))

(assert (= (and b!1206488 res!802401) b!1206483))

(assert (= (and b!1206488 c!118435) b!1206484))

(assert (= (and b!1206488 (not c!118435)) b!1206480))

(assert (= (and b!1206484 res!802402) b!1206487))

(assert (= (and b!1206480 c!118436) b!1206482))

(assert (= (and b!1206480 (not c!118436)) b!1206490))

(declare-fun b_lambda!21381 () Bool)

(assert (=> (not b_lambda!21381) (not b!1206487)))

(assert (=> b!1206487 t!39626))

(declare-fun b_and!42913 () Bool)

(assert (= b_and!42911 (and (=> t!39626 result!22087) b_and!42913)))

(declare-fun b_lambda!21383 () Bool)

(assert (=> (not b_lambda!21383) (not b!1206489)))

(assert (=> b!1206489 t!39626))

(declare-fun b_and!42915 () Bool)

(assert (= b_and!42913 (and (=> t!39626 result!22087) b_and!42915)))

(declare-fun m!1112253 () Bool)

(assert (=> b!1206484 m!1112253))

(assert (=> b!1206484 m!1112253))

(declare-fun m!1112255 () Bool)

(assert (=> b!1206484 m!1112255))

(assert (=> b!1206483 m!1112253))

(assert (=> b!1206483 m!1112253))

(declare-fun m!1112257 () Bool)

(assert (=> b!1206483 m!1112257))

(declare-fun m!1112259 () Bool)

(assert (=> bm!58738 m!1112259))

(assert (=> b!1206482 m!1112259))

(declare-fun m!1112261 () Bool)

(assert (=> b!1206490 m!1112261))

(declare-fun m!1112263 () Bool)

(assert (=> b!1206479 m!1112263))

(assert (=> b!1206487 m!1111963))

(assert (=> b!1206487 m!1112253))

(declare-fun m!1112265 () Bool)

(assert (=> b!1206487 m!1112265))

(assert (=> b!1206487 m!1112253))

(declare-fun m!1112267 () Bool)

(assert (=> b!1206487 m!1112267))

(assert (=> b!1206487 m!1112267))

(assert (=> b!1206487 m!1111963))

(declare-fun m!1112269 () Bool)

(assert (=> b!1206487 m!1112269))

(assert (=> b!1206489 m!1111963))

(declare-fun m!1112271 () Bool)

(assert (=> b!1206489 m!1112271))

(declare-fun m!1112273 () Bool)

(assert (=> b!1206489 m!1112273))

(assert (=> b!1206489 m!1112271))

(declare-fun m!1112275 () Bool)

(assert (=> b!1206489 m!1112275))

(assert (=> b!1206489 m!1112253))

(declare-fun m!1112277 () Bool)

(assert (=> b!1206489 m!1112277))

(assert (=> b!1206489 m!1112267))

(assert (=> b!1206489 m!1112267))

(assert (=> b!1206489 m!1111963))

(assert (=> b!1206489 m!1112269))

(declare-fun m!1112279 () Bool)

(assert (=> d!132865 m!1112279))

(assert (=> d!132865 m!1111969))

(assert (=> b!1206481 m!1112253))

(assert (=> b!1206481 m!1112253))

(assert (=> b!1206481 m!1112257))

(assert (=> bm!58692 d!132865))

(declare-fun d!132867 () Bool)

(declare-fun res!802404 () Bool)

(declare-fun e!685191 () Bool)

(assert (=> d!132867 (=> res!802404 e!685191)))

(assert (=> d!132867 (= res!802404 (= (select (arr!37667 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!132867 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!685191)))

(declare-fun b!1206491 () Bool)

(declare-fun e!685192 () Bool)

(assert (=> b!1206491 (= e!685191 e!685192)))

(declare-fun res!802405 () Bool)

(assert (=> b!1206491 (=> (not res!802405) (not e!685192))))

(assert (=> b!1206491 (= res!802405 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!38204 _keys!1208)))))

(declare-fun b!1206492 () Bool)

(assert (=> b!1206492 (= e!685192 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!132867 (not res!802404)) b!1206491))

(assert (= (and b!1206491 res!802405) b!1206492))

(assert (=> d!132867 m!1112099))

(declare-fun m!1112281 () Bool)

(assert (=> b!1206492 m!1112281))

(assert (=> b!1206247 d!132867))

(declare-fun d!132869 () Bool)

(assert (=> d!132869 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!547302 () Unit!39913)

(declare-fun choose!13 (array!78060 (_ BitVec 64) (_ BitVec 32)) Unit!39913)

(assert (=> d!132869 (= lt!547302 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!132869 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!132869 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!547302)))

(declare-fun bs!34113 () Bool)

(assert (= bs!34113 d!132869))

(assert (=> bs!34113 m!1111987))

(declare-fun m!1112283 () Bool)

(assert (=> bs!34113 m!1112283))

(assert (=> b!1206247 d!132869))

(declare-fun d!132871 () Bool)

(declare-fun res!802407 () Bool)

(declare-fun e!685193 () Bool)

(assert (=> d!132871 (=> res!802407 e!685193)))

(assert (=> d!132871 (= res!802407 (bvsge #b00000000000000000000000000000000 (size!38204 lt!547152)))))

(assert (=> d!132871 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547152 mask!1564) e!685193)))

(declare-fun b!1206493 () Bool)

(declare-fun e!685194 () Bool)

(declare-fun call!58742 () Bool)

(assert (=> b!1206493 (= e!685194 call!58742)))

(declare-fun b!1206494 () Bool)

(assert (=> b!1206494 (= e!685193 e!685194)))

(declare-fun c!118439 () Bool)

(assert (=> b!1206494 (= c!118439 (validKeyInArray!0 (select (arr!37667 lt!547152) #b00000000000000000000000000000000)))))

(declare-fun b!1206495 () Bool)

(declare-fun e!685195 () Bool)

(assert (=> b!1206495 (= e!685194 e!685195)))

(declare-fun lt!547303 () (_ BitVec 64))

(assert (=> b!1206495 (= lt!547303 (select (arr!37667 lt!547152) #b00000000000000000000000000000000))))

(declare-fun lt!547304 () Unit!39913)

(assert (=> b!1206495 (= lt!547304 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!547152 lt!547303 #b00000000000000000000000000000000))))

(assert (=> b!1206495 (arrayContainsKey!0 lt!547152 lt!547303 #b00000000000000000000000000000000)))

(declare-fun lt!547305 () Unit!39913)

(assert (=> b!1206495 (= lt!547305 lt!547304)))

(declare-fun res!802406 () Bool)

(assert (=> b!1206495 (= res!802406 (= (seekEntryOrOpen!0 (select (arr!37667 lt!547152) #b00000000000000000000000000000000) lt!547152 mask!1564) (Found!9934 #b00000000000000000000000000000000)))))

(assert (=> b!1206495 (=> (not res!802406) (not e!685195))))

(declare-fun b!1206496 () Bool)

(assert (=> b!1206496 (= e!685195 call!58742)))

(declare-fun bm!58739 () Bool)

(assert (=> bm!58739 (= call!58742 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!547152 mask!1564))))

(assert (= (and d!132871 (not res!802407)) b!1206494))

(assert (= (and b!1206494 c!118439) b!1206495))

(assert (= (and b!1206494 (not c!118439)) b!1206493))

(assert (= (and b!1206495 res!802406) b!1206496))

(assert (= (or b!1206496 b!1206493) bm!58739))

(declare-fun m!1112285 () Bool)

(assert (=> b!1206494 m!1112285))

(assert (=> b!1206494 m!1112285))

(declare-fun m!1112287 () Bool)

(assert (=> b!1206494 m!1112287))

(assert (=> b!1206495 m!1112285))

(declare-fun m!1112289 () Bool)

(assert (=> b!1206495 m!1112289))

(declare-fun m!1112291 () Bool)

(assert (=> b!1206495 m!1112291))

(assert (=> b!1206495 m!1112285))

(declare-fun m!1112293 () Bool)

(assert (=> b!1206495 m!1112293))

(declare-fun m!1112295 () Bool)

(assert (=> bm!58739 m!1112295))

(assert (=> b!1206239 d!132871))

(declare-fun d!132873 () Bool)

(declare-fun e!685196 () Bool)

(assert (=> d!132873 e!685196))

(declare-fun res!802408 () Bool)

(assert (=> d!132873 (=> res!802408 e!685196)))

(declare-fun lt!547308 () Bool)

(assert (=> d!132873 (= res!802408 (not lt!547308))))

(declare-fun lt!547309 () Bool)

(assert (=> d!132873 (= lt!547308 lt!547309)))

(declare-fun lt!547306 () Unit!39913)

(declare-fun e!685197 () Unit!39913)

(assert (=> d!132873 (= lt!547306 e!685197)))

(declare-fun c!118440 () Bool)

(assert (=> d!132873 (= c!118440 lt!547309)))

(assert (=> d!132873 (= lt!547309 (containsKey!592 (toList!8941 (ite c!118381 lt!547154 call!58693)) k0!934))))

(assert (=> d!132873 (= (contains!6942 (ite c!118381 lt!547154 call!58693) k0!934) lt!547308)))

(declare-fun b!1206497 () Bool)

(declare-fun lt!547307 () Unit!39913)

(assert (=> b!1206497 (= e!685197 lt!547307)))

(assert (=> b!1206497 (= lt!547307 (lemmaContainsKeyImpliesGetValueByKeyDefined!421 (toList!8941 (ite c!118381 lt!547154 call!58693)) k0!934))))

(assert (=> b!1206497 (isDefined!461 (getValueByKey!638 (toList!8941 (ite c!118381 lt!547154 call!58693)) k0!934))))

(declare-fun b!1206498 () Bool)

(declare-fun Unit!39920 () Unit!39913)

(assert (=> b!1206498 (= e!685197 Unit!39920)))

(declare-fun b!1206499 () Bool)

(assert (=> b!1206499 (= e!685196 (isDefined!461 (getValueByKey!638 (toList!8941 (ite c!118381 lt!547154 call!58693)) k0!934)))))

(assert (= (and d!132873 c!118440) b!1206497))

(assert (= (and d!132873 (not c!118440)) b!1206498))

(assert (= (and d!132873 (not res!802408)) b!1206499))

(declare-fun m!1112297 () Bool)

(assert (=> d!132873 m!1112297))

(declare-fun m!1112299 () Bool)

(assert (=> b!1206497 m!1112299))

(declare-fun m!1112301 () Bool)

(assert (=> b!1206497 m!1112301))

(assert (=> b!1206497 m!1112301))

(declare-fun m!1112303 () Bool)

(assert (=> b!1206497 m!1112303))

(assert (=> b!1206499 m!1112301))

(assert (=> b!1206499 m!1112301))

(assert (=> b!1206499 m!1112303))

(assert (=> bm!58689 d!132873))

(declare-fun d!132875 () Bool)

(declare-fun e!685198 () Bool)

(assert (=> d!132875 e!685198))

(declare-fun res!802409 () Bool)

(assert (=> d!132875 (=> (not res!802409) (not e!685198))))

(declare-fun lt!547313 () ListLongMap!17851)

(assert (=> d!132875 (= res!802409 (contains!6942 lt!547313 (_1!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun lt!547311 () List!26693)

(assert (=> d!132875 (= lt!547313 (ListLongMap!17852 lt!547311))))

(declare-fun lt!547310 () Unit!39913)

(declare-fun lt!547312 () Unit!39913)

(assert (=> d!132875 (= lt!547310 lt!547312)))

(assert (=> d!132875 (= (getValueByKey!638 lt!547311 (_1!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!688 (_2!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132875 (= lt!547312 (lemmaContainsTupThenGetReturnValue!313 lt!547311 (_1!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132875 (= lt!547311 (insertStrictlySorted!405 (toList!8941 lt!547153) (_1!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) (_2!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(assert (=> d!132875 (= (+!3970 lt!547153 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))) lt!547313)))

(declare-fun b!1206500 () Bool)

(declare-fun res!802410 () Bool)

(assert (=> b!1206500 (=> (not res!802410) (not e!685198))))

(assert (=> b!1206500 (= res!802410 (= (getValueByKey!638 (toList!8941 lt!547313) (_1!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))) (Some!688 (_2!9945 (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))))

(declare-fun b!1206501 () Bool)

(assert (=> b!1206501 (= e!685198 (contains!6945 (toList!8941 lt!547313) (ite (or c!118381 c!118382) (tuple2!19871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19871 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(assert (= (and d!132875 res!802409) b!1206500))

(assert (= (and b!1206500 res!802410) b!1206501))

(declare-fun m!1112305 () Bool)

(assert (=> d!132875 m!1112305))

(declare-fun m!1112307 () Bool)

(assert (=> d!132875 m!1112307))

(declare-fun m!1112309 () Bool)

(assert (=> d!132875 m!1112309))

(declare-fun m!1112311 () Bool)

(assert (=> d!132875 m!1112311))

(declare-fun m!1112313 () Bool)

(assert (=> b!1206500 m!1112313))

(declare-fun m!1112315 () Bool)

(assert (=> b!1206501 m!1112315))

(assert (=> bm!58693 d!132875))

(declare-fun b!1206502 () Bool)

(declare-fun e!685202 () Bool)

(assert (=> b!1206502 (= e!685202 (contains!6944 Nil!26691 (select (arr!37667 lt!547152) #b00000000000000000000000000000000)))))

(declare-fun b!1206503 () Bool)

(declare-fun e!685199 () Bool)

(declare-fun e!685201 () Bool)

(assert (=> b!1206503 (= e!685199 e!685201)))

(declare-fun c!118441 () Bool)

(assert (=> b!1206503 (= c!118441 (validKeyInArray!0 (select (arr!37667 lt!547152) #b00000000000000000000000000000000)))))

(declare-fun d!132877 () Bool)

(declare-fun res!802412 () Bool)

(declare-fun e!685200 () Bool)

(assert (=> d!132877 (=> res!802412 e!685200)))

(assert (=> d!132877 (= res!802412 (bvsge #b00000000000000000000000000000000 (size!38204 lt!547152)))))

(assert (=> d!132877 (= (arrayNoDuplicates!0 lt!547152 #b00000000000000000000000000000000 Nil!26691) e!685200)))

(declare-fun b!1206504 () Bool)

(declare-fun call!58743 () Bool)

(assert (=> b!1206504 (= e!685201 call!58743)))

(declare-fun b!1206505 () Bool)

(assert (=> b!1206505 (= e!685200 e!685199)))

(declare-fun res!802411 () Bool)

(assert (=> b!1206505 (=> (not res!802411) (not e!685199))))

(assert (=> b!1206505 (= res!802411 (not e!685202))))

(declare-fun res!802413 () Bool)

(assert (=> b!1206505 (=> (not res!802413) (not e!685202))))

(assert (=> b!1206505 (= res!802413 (validKeyInArray!0 (select (arr!37667 lt!547152) #b00000000000000000000000000000000)))))

(declare-fun b!1206506 () Bool)

(assert (=> b!1206506 (= e!685201 call!58743)))

(declare-fun bm!58740 () Bool)

(assert (=> bm!58740 (= call!58743 (arrayNoDuplicates!0 lt!547152 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!118441 (Cons!26690 (select (arr!37667 lt!547152) #b00000000000000000000000000000000) Nil!26691) Nil!26691)))))

(assert (= (and d!132877 (not res!802412)) b!1206505))

(assert (= (and b!1206505 res!802413) b!1206502))

(assert (= (and b!1206505 res!802411) b!1206503))

(assert (= (and b!1206503 c!118441) b!1206506))

(assert (= (and b!1206503 (not c!118441)) b!1206504))

(assert (= (or b!1206506 b!1206504) bm!58740))

(assert (=> b!1206502 m!1112285))

(assert (=> b!1206502 m!1112285))

(declare-fun m!1112317 () Bool)

(assert (=> b!1206502 m!1112317))

(assert (=> b!1206503 m!1112285))

(assert (=> b!1206503 m!1112285))

(assert (=> b!1206503 m!1112287))

(assert (=> b!1206505 m!1112285))

(assert (=> b!1206505 m!1112285))

(assert (=> b!1206505 m!1112287))

(assert (=> bm!58740 m!1112285))

(declare-fun m!1112319 () Bool)

(assert (=> bm!58740 m!1112319))

(assert (=> b!1206238 d!132877))

(declare-fun condMapEmpty!47838 () Bool)

(declare-fun mapDefault!47838 () ValueCell!14616)

(assert (=> mapNonEmpty!47832 (= condMapEmpty!47838 (= mapRest!47832 ((as const (Array (_ BitVec 32) ValueCell!14616)) mapDefault!47838)))))

(declare-fun e!685208 () Bool)

(declare-fun mapRes!47838 () Bool)

(assert (=> mapNonEmpty!47832 (= tp!90844 (and e!685208 mapRes!47838))))

(declare-fun mapIsEmpty!47838 () Bool)

(assert (=> mapIsEmpty!47838 mapRes!47838))

(declare-fun b!1206513 () Bool)

(declare-fun e!685207 () Bool)

(assert (=> b!1206513 (= e!685207 tp_is_empty!30651)))

(declare-fun b!1206514 () Bool)

(assert (=> b!1206514 (= e!685208 tp_is_empty!30651)))

(declare-fun mapNonEmpty!47838 () Bool)

(declare-fun tp!90854 () Bool)

(assert (=> mapNonEmpty!47838 (= mapRes!47838 (and tp!90854 e!685207))))

(declare-fun mapRest!47838 () (Array (_ BitVec 32) ValueCell!14616))

(declare-fun mapValue!47838 () ValueCell!14616)

(declare-fun mapKey!47838 () (_ BitVec 32))

(assert (=> mapNonEmpty!47838 (= mapRest!47832 (store mapRest!47838 mapKey!47838 mapValue!47838))))

(assert (= (and mapNonEmpty!47832 condMapEmpty!47838) mapIsEmpty!47838))

(assert (= (and mapNonEmpty!47832 (not condMapEmpty!47838)) mapNonEmpty!47838))

(assert (= (and mapNonEmpty!47838 ((_ is ValueCellFull!14616) mapValue!47838)) b!1206513))

(assert (= (and mapNonEmpty!47832 ((_ is ValueCellFull!14616) mapDefault!47838)) b!1206514))

(declare-fun m!1112321 () Bool)

(assert (=> mapNonEmpty!47838 m!1112321))

(declare-fun b_lambda!21385 () Bool)

(assert (= b_lambda!21381 (or (and start!100812 b_free!25947) b_lambda!21385)))

(declare-fun b_lambda!21387 () Bool)

(assert (= b_lambda!21373 (or (and start!100812 b_free!25947) b_lambda!21387)))

(declare-fun b_lambda!21389 () Bool)

(assert (= b_lambda!21367 (or (and start!100812 b_free!25947) b_lambda!21389)))

(declare-fun b_lambda!21391 () Bool)

(assert (= b_lambda!21383 (or (and start!100812 b_free!25947) b_lambda!21391)))

(declare-fun b_lambda!21393 () Bool)

(assert (= b_lambda!21377 (or (and start!100812 b_free!25947) b_lambda!21393)))

(declare-fun b_lambda!21395 () Bool)

(assert (= b_lambda!21375 (or (and start!100812 b_free!25947) b_lambda!21395)))

(declare-fun b_lambda!21397 () Bool)

(assert (= b_lambda!21369 (or (and start!100812 b_free!25947) b_lambda!21397)))

(declare-fun b_lambda!21399 () Bool)

(assert (= b_lambda!21379 (or (and start!100812 b_free!25947) b_lambda!21399)))

(declare-fun b_lambda!21401 () Bool)

(assert (= b_lambda!21371 (or (and start!100812 b_free!25947) b_lambda!21401)))

(check-sat (not d!132829) (not b_lambda!21393) (not b!1206500) (not b_lambda!21399) (not bm!58724) (not b!1206477) (not b_lambda!21401) (not b!1206442) (not b!1206471) (not d!132831) (not d!132873) (not b_lambda!21389) (not b!1206484) (not b!1206403) (not b!1206489) (not b!1206501) (not b!1206502) (not bm!58737) (not b!1206395) (not b!1206479) (not b!1206355) (not b!1206438) (not b!1206468) tp_is_empty!30651 (not b_lambda!21397) b_and!42915 (not b!1206495) (not b!1206469) (not b!1206446) (not b!1206483) (not bm!58740) (not b!1206448) (not bm!58725) (not b!1206405) (not d!132825) (not d!132861) (not b!1206467) (not b!1206465) (not b!1206436) (not b!1206456) (not d!132865) (not d!132841) (not d!132851) (not d!132839) (not b!1206499) (not b_next!25947) (not d!132853) (not b!1206449) (not b!1206492) (not b!1206441) (not mapNonEmpty!47838) (not b_lambda!21365) (not b!1206487) (not b!1206430) (not b_lambda!21385) (not bm!58738) (not bm!58728) (not d!132837) (not b!1206481) (not b_lambda!21391) (not d!132855) (not bm!58739) (not bm!58736) (not b!1206412) (not bm!58735) (not b!1206437) (not b!1206434) (not d!132875) (not b!1206428) (not b_lambda!21387) (not d!132849) (not b!1206440) (not b!1206406) (not b!1206463) (not b!1206443) (not b!1206431) (not b!1206366) (not bm!58731) (not b!1206397) (not b!1206400) (not bm!58734) (not d!132869) (not b!1206367) (not b!1206505) (not b!1206464) (not b!1206369) (not b!1206490) (not b!1206422) (not b!1206426) (not b!1206399) (not d!132863) (not b!1206482) (not b!1206398) (not b!1206423) (not b!1206503) (not b!1206497) (not b_lambda!21395) (not b!1206494) (not b!1206458) (not b!1206429))
(check-sat b_and!42915 (not b_next!25947))
