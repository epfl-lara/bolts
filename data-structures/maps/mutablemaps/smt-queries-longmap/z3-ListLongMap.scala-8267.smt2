; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100588 () Bool)

(assert start!100588)

(declare-fun b_free!25875 () Bool)

(declare-fun b_next!25875 () Bool)

(assert (=> start!100588 (= b_free!25875 (not b_next!25875))))

(declare-fun tp!90615 () Bool)

(declare-fun b_and!42651 () Bool)

(assert (=> start!100588 (= tp!90615 b_and!42651)))

(declare-fun b!1202228 () Bool)

(declare-fun res!800291 () Bool)

(declare-fun e!682725 () Bool)

(assert (=> b!1202228 (=> (not res!800291) (not e!682725))))

(declare-datatypes ((array!77908 0))(
  ( (array!77909 (arr!37595 (Array (_ BitVec 32) (_ BitVec 64))) (size!38132 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77908)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45899 0))(
  ( (V!45900 (val!15346 Int)) )
))
(declare-datatypes ((ValueCell!14580 0))(
  ( (ValueCellFull!14580 (v!17985 V!45899)) (EmptyCell!14580) )
))
(declare-datatypes ((array!77910 0))(
  ( (array!77911 (arr!37596 (Array (_ BitVec 32) ValueCell!14580)) (size!38133 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77910)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1202228 (= res!800291 (and (= (size!38133 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38132 _keys!1208) (size!38133 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1202229 () Bool)

(declare-fun e!682731 () Bool)

(declare-fun tp_is_empty!30579 () Bool)

(assert (=> b!1202229 (= e!682731 tp_is_empty!30579)))

(declare-fun b!1202230 () Bool)

(declare-datatypes ((Unit!39780 0))(
  ( (Unit!39781) )
))
(declare-fun e!682734 () Unit!39780)

(declare-fun Unit!39782 () Unit!39780)

(assert (=> b!1202230 (= e!682734 Unit!39782)))

(declare-fun b!1202231 () Bool)

(declare-fun res!800292 () Bool)

(assert (=> b!1202231 (=> (not res!800292) (not e!682725))))

(declare-datatypes ((List!26629 0))(
  ( (Nil!26626) (Cons!26625 (h!27834 (_ BitVec 64)) (t!39491 List!26629)) )
))
(declare-fun arrayNoDuplicates!0 (array!77908 (_ BitVec 32) List!26629) Bool)

(assert (=> b!1202231 (= res!800292 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26626))))

(declare-fun bm!57696 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((tuple2!19800 0))(
  ( (tuple2!19801 (_1!9910 (_ BitVec 64)) (_2!9910 V!45899)) )
))
(declare-datatypes ((List!26630 0))(
  ( (Nil!26627) (Cons!26626 (h!27835 tuple2!19800) (t!39492 List!26630)) )
))
(declare-datatypes ((ListLongMap!17781 0))(
  ( (ListLongMap!17782 (toList!8906 List!26630)) )
))
(declare-fun lt!544874 () ListLongMap!17781)

(declare-fun call!57705 () Bool)

(declare-fun c!117597 () Bool)

(declare-fun call!57699 () ListLongMap!17781)

(declare-fun contains!6906 (ListLongMap!17781 (_ BitVec 64)) Bool)

(assert (=> bm!57696 (= call!57705 (contains!6906 (ite c!117597 lt!544874 call!57699) k0!934))))

(declare-fun bm!57697 () Bool)

(declare-fun call!57706 () Bool)

(assert (=> bm!57697 (= call!57706 call!57705)))

(declare-fun b!1202232 () Bool)

(declare-fun e!682733 () Bool)

(declare-fun mapRes!47711 () Bool)

(assert (=> b!1202232 (= e!682733 (and e!682731 mapRes!47711))))

(declare-fun condMapEmpty!47711 () Bool)

(declare-fun mapDefault!47711 () ValueCell!14580)

(assert (=> b!1202232 (= condMapEmpty!47711 (= (arr!37596 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14580)) mapDefault!47711)))))

(declare-fun b!1202233 () Bool)

(declare-fun e!682730 () Bool)

(declare-fun e!682732 () Bool)

(assert (=> b!1202233 (= e!682730 e!682732)))

(declare-fun res!800282 () Bool)

(assert (=> b!1202233 (=> res!800282 e!682732)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1202233 (= res!800282 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45899)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!544872 () ListLongMap!17781)

(declare-fun lt!544875 () array!77908)

(declare-fun minValue!944 () V!45899)

(declare-fun lt!544868 () array!77910)

(declare-fun getCurrentListMapNoExtraKeys!5317 (array!77908 array!77910 (_ BitVec 32) (_ BitVec 32) V!45899 V!45899 (_ BitVec 32) Int) ListLongMap!17781)

(assert (=> b!1202233 (= lt!544872 (getCurrentListMapNoExtraKeys!5317 lt!544875 lt!544868 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3242 (Int (_ BitVec 64)) V!45899)

(assert (=> b!1202233 (= lt!544868 (array!77911 (store (arr!37596 _values!996) i!673 (ValueCellFull!14580 (dynLambda!3242 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38133 _values!996)))))

(declare-fun lt!544870 () ListLongMap!17781)

(assert (=> b!1202233 (= lt!544870 (getCurrentListMapNoExtraKeys!5317 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!57698 () Bool)

(declare-fun c!117598 () Bool)

(declare-fun call!57701 () ListLongMap!17781)

(declare-fun lt!544863 () ListLongMap!17781)

(declare-fun +!3944 (ListLongMap!17781 tuple2!19800) ListLongMap!17781)

(assert (=> bm!57698 (= call!57701 (+!3944 lt!544863 (ite (or c!117597 c!117598) (tuple2!19801 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1202234 () Bool)

(declare-fun e!682738 () Bool)

(assert (=> b!1202234 (= e!682725 e!682738)))

(declare-fun res!800288 () Bool)

(assert (=> b!1202234 (=> (not res!800288) (not e!682738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77908 (_ BitVec 32)) Bool)

(assert (=> b!1202234 (= res!800288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544875 mask!1564))))

(assert (=> b!1202234 (= lt!544875 (array!77909 (store (arr!37595 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38132 _keys!1208)))))

(declare-fun mapIsEmpty!47711 () Bool)

(assert (=> mapIsEmpty!47711 mapRes!47711))

(declare-fun b!1202235 () Bool)

(declare-fun res!800286 () Bool)

(assert (=> b!1202235 (=> (not res!800286) (not e!682725))))

(assert (=> b!1202235 (= res!800286 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38132 _keys!1208))))))

(declare-fun b!1202236 () Bool)

(declare-fun lt!544876 () Unit!39780)

(assert (=> b!1202236 (= e!682734 lt!544876)))

(declare-fun call!57703 () Unit!39780)

(assert (=> b!1202236 (= lt!544876 call!57703)))

(assert (=> b!1202236 call!57706))

(declare-fun b!1202237 () Bool)

(declare-fun e!682727 () Bool)

(declare-fun call!57704 () ListLongMap!17781)

(declare-fun call!57702 () ListLongMap!17781)

(assert (=> b!1202237 (= e!682727 (= call!57704 call!57702))))

(declare-fun b!1202238 () Bool)

(declare-fun e!682736 () Unit!39780)

(declare-fun e!682729 () Unit!39780)

(assert (=> b!1202238 (= e!682736 e!682729)))

(declare-fun lt!544867 () Bool)

(assert (=> b!1202238 (= c!117598 (and (not lt!544867) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1202239 () Bool)

(declare-fun res!800290 () Bool)

(assert (=> b!1202239 (=> (not res!800290) (not e!682725))))

(assert (=> b!1202239 (= res!800290 (= (select (arr!37595 _keys!1208) i!673) k0!934))))

(declare-fun b!1202240 () Bool)

(declare-fun res!800289 () Bool)

(assert (=> b!1202240 (=> (not res!800289) (not e!682738))))

(assert (=> b!1202240 (= res!800289 (arrayNoDuplicates!0 lt!544875 #b00000000000000000000000000000000 Nil!26626))))

(declare-fun b!1202241 () Bool)

(assert (=> b!1202241 call!57706))

(declare-fun lt!544869 () Unit!39780)

(assert (=> b!1202241 (= lt!544869 call!57703)))

(assert (=> b!1202241 (= e!682729 lt!544869)))

(declare-fun b!1202242 () Bool)

(assert (=> b!1202242 (= e!682738 (not e!682730))))

(declare-fun res!800283 () Bool)

(assert (=> b!1202242 (=> res!800283 e!682730)))

(assert (=> b!1202242 (= res!800283 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1202242 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!544871 () Unit!39780)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77908 (_ BitVec 64) (_ BitVec 32)) Unit!39780)

(assert (=> b!1202242 (= lt!544871 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!57699 () Bool)

(assert (=> bm!57699 (= call!57699 call!57701)))

(declare-fun mapNonEmpty!47711 () Bool)

(declare-fun tp!90616 () Bool)

(declare-fun e!682726 () Bool)

(assert (=> mapNonEmpty!47711 (= mapRes!47711 (and tp!90616 e!682726))))

(declare-fun mapValue!47711 () ValueCell!14580)

(declare-fun mapRest!47711 () (Array (_ BitVec 32) ValueCell!14580))

(declare-fun mapKey!47711 () (_ BitVec 32))

(assert (=> mapNonEmpty!47711 (= (arr!37596 _values!996) (store mapRest!47711 mapKey!47711 mapValue!47711))))

(declare-fun bm!57700 () Bool)

(declare-fun call!57700 () Unit!39780)

(declare-fun addStillContains!1006 (ListLongMap!17781 (_ BitVec 64) V!45899 (_ BitVec 64)) Unit!39780)

(assert (=> bm!57700 (= call!57700 (addStillContains!1006 lt!544863 (ite (or c!117597 c!117598) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!117597 c!117598) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1202243 () Bool)

(declare-fun res!800293 () Bool)

(assert (=> b!1202243 (=> (not res!800293) (not e!682725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1202243 (= res!800293 (validKeyInArray!0 k0!934))))

(declare-fun b!1202244 () Bool)

(declare-fun e!682728 () Bool)

(assert (=> b!1202244 (= e!682732 e!682728)))

(declare-fun res!800287 () Bool)

(assert (=> b!1202244 (=> res!800287 e!682728)))

(assert (=> b!1202244 (= res!800287 (not (= (select (arr!37595 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1202244 e!682727))

(declare-fun c!117596 () Bool)

(assert (=> b!1202244 (= c!117596 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!544866 () Unit!39780)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1030 (array!77908 array!77910 (_ BitVec 32) (_ BitVec 32) V!45899 V!45899 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39780)

(assert (=> b!1202244 (= lt!544866 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1030 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57701 () Bool)

(assert (=> bm!57701 (= call!57704 (getCurrentListMapNoExtraKeys!5317 lt!544875 lt!544868 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202245 () Bool)

(declare-fun res!800294 () Bool)

(assert (=> b!1202245 (=> (not res!800294) (not e!682725))))

(assert (=> b!1202245 (= res!800294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1202246 () Bool)

(declare-fun -!1824 (ListLongMap!17781 (_ BitVec 64)) ListLongMap!17781)

(assert (=> b!1202246 (= e!682727 (= call!57704 (-!1824 call!57702 k0!934)))))

(declare-fun b!1202247 () Bool)

(declare-fun res!800295 () Bool)

(assert (=> b!1202247 (=> (not res!800295) (not e!682725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1202247 (= res!800295 (validMask!0 mask!1564))))

(declare-fun bm!57702 () Bool)

(assert (=> bm!57702 (= call!57703 call!57700)))

(declare-fun b!1202248 () Bool)

(declare-fun e!682737 () Bool)

(assert (=> b!1202248 (= e!682737 true)))

(declare-fun lt!544864 () Unit!39780)

(assert (=> b!1202248 (= lt!544864 e!682736)))

(assert (=> b!1202248 (= c!117597 (and (not lt!544867) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1202248 (= lt!544867 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1202249 () Bool)

(assert (=> b!1202249 (= e!682726 tp_is_empty!30579)))

(declare-fun b!1202250 () Bool)

(declare-fun lt!544865 () Unit!39780)

(assert (=> b!1202250 (= e!682736 lt!544865)))

(declare-fun lt!544873 () Unit!39780)

(assert (=> b!1202250 (= lt!544873 call!57700)))

(assert (=> b!1202250 (= lt!544874 call!57701)))

(assert (=> b!1202250 call!57705))

(assert (=> b!1202250 (= lt!544865 (addStillContains!1006 lt!544874 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1202250 (contains!6906 (+!3944 lt!544874 (tuple2!19801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun res!800285 () Bool)

(assert (=> start!100588 (=> (not res!800285) (not e!682725))))

(assert (=> start!100588 (= res!800285 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38132 _keys!1208))))))

(assert (=> start!100588 e!682725))

(assert (=> start!100588 tp_is_empty!30579))

(declare-fun array_inv!28538 (array!77908) Bool)

(assert (=> start!100588 (array_inv!28538 _keys!1208)))

(assert (=> start!100588 true))

(assert (=> start!100588 tp!90615))

(declare-fun array_inv!28539 (array!77910) Bool)

(assert (=> start!100588 (and (array_inv!28539 _values!996) e!682733)))

(declare-fun b!1202251 () Bool)

(assert (=> b!1202251 (= e!682728 e!682737)))

(declare-fun res!800284 () Bool)

(assert (=> b!1202251 (=> res!800284 e!682737)))

(assert (=> b!1202251 (= res!800284 (not (contains!6906 lt!544863 k0!934)))))

(assert (=> b!1202251 (= lt!544863 (getCurrentListMapNoExtraKeys!5317 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57703 () Bool)

(assert (=> bm!57703 (= call!57702 (getCurrentListMapNoExtraKeys!5317 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1202252 () Bool)

(declare-fun c!117595 () Bool)

(assert (=> b!1202252 (= c!117595 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!544867))))

(assert (=> b!1202252 (= e!682729 e!682734)))

(assert (= (and start!100588 res!800285) b!1202247))

(assert (= (and b!1202247 res!800295) b!1202228))

(assert (= (and b!1202228 res!800291) b!1202245))

(assert (= (and b!1202245 res!800294) b!1202231))

(assert (= (and b!1202231 res!800292) b!1202235))

(assert (= (and b!1202235 res!800286) b!1202243))

(assert (= (and b!1202243 res!800293) b!1202239))

(assert (= (and b!1202239 res!800290) b!1202234))

(assert (= (and b!1202234 res!800288) b!1202240))

(assert (= (and b!1202240 res!800289) b!1202242))

(assert (= (and b!1202242 (not res!800283)) b!1202233))

(assert (= (and b!1202233 (not res!800282)) b!1202244))

(assert (= (and b!1202244 c!117596) b!1202246))

(assert (= (and b!1202244 (not c!117596)) b!1202237))

(assert (= (or b!1202246 b!1202237) bm!57701))

(assert (= (or b!1202246 b!1202237) bm!57703))

(assert (= (and b!1202244 (not res!800287)) b!1202251))

(assert (= (and b!1202251 (not res!800284)) b!1202248))

(assert (= (and b!1202248 c!117597) b!1202250))

(assert (= (and b!1202248 (not c!117597)) b!1202238))

(assert (= (and b!1202238 c!117598) b!1202241))

(assert (= (and b!1202238 (not c!117598)) b!1202252))

(assert (= (and b!1202252 c!117595) b!1202236))

(assert (= (and b!1202252 (not c!117595)) b!1202230))

(assert (= (or b!1202241 b!1202236) bm!57702))

(assert (= (or b!1202241 b!1202236) bm!57699))

(assert (= (or b!1202241 b!1202236) bm!57697))

(assert (= (or b!1202250 bm!57697) bm!57696))

(assert (= (or b!1202250 bm!57702) bm!57700))

(assert (= (or b!1202250 bm!57699) bm!57698))

(assert (= (and b!1202232 condMapEmpty!47711) mapIsEmpty!47711))

(assert (= (and b!1202232 (not condMapEmpty!47711)) mapNonEmpty!47711))

(get-info :version)

(assert (= (and mapNonEmpty!47711 ((_ is ValueCellFull!14580) mapValue!47711)) b!1202249))

(assert (= (and b!1202232 ((_ is ValueCellFull!14580) mapDefault!47711)) b!1202229))

(assert (= start!100588 b!1202232))

(declare-fun b_lambda!21089 () Bool)

(assert (=> (not b_lambda!21089) (not b!1202233)))

(declare-fun t!39490 () Bool)

(declare-fun tb!10683 () Bool)

(assert (=> (and start!100588 (= defaultEntry!1004 defaultEntry!1004) t!39490) tb!10683))

(declare-fun result!21935 () Bool)

(assert (=> tb!10683 (= result!21935 tp_is_empty!30579)))

(assert (=> b!1202233 t!39490))

(declare-fun b_and!42653 () Bool)

(assert (= b_and!42651 (and (=> t!39490 result!21935) b_and!42653)))

(declare-fun m!1108177 () Bool)

(assert (=> b!1202239 m!1108177))

(declare-fun m!1108179 () Bool)

(assert (=> b!1202234 m!1108179))

(declare-fun m!1108181 () Bool)

(assert (=> b!1202234 m!1108181))

(declare-fun m!1108183 () Bool)

(assert (=> bm!57698 m!1108183))

(declare-fun m!1108185 () Bool)

(assert (=> b!1202243 m!1108185))

(declare-fun m!1108187 () Bool)

(assert (=> b!1202231 m!1108187))

(declare-fun m!1108189 () Bool)

(assert (=> bm!57703 m!1108189))

(declare-fun m!1108191 () Bool)

(assert (=> start!100588 m!1108191))

(declare-fun m!1108193 () Bool)

(assert (=> start!100588 m!1108193))

(declare-fun m!1108195 () Bool)

(assert (=> mapNonEmpty!47711 m!1108195))

(declare-fun m!1108197 () Bool)

(assert (=> b!1202251 m!1108197))

(assert (=> b!1202251 m!1108189))

(declare-fun m!1108199 () Bool)

(assert (=> b!1202242 m!1108199))

(declare-fun m!1108201 () Bool)

(assert (=> b!1202242 m!1108201))

(declare-fun m!1108203 () Bool)

(assert (=> b!1202246 m!1108203))

(declare-fun m!1108205 () Bool)

(assert (=> bm!57701 m!1108205))

(declare-fun m!1108207 () Bool)

(assert (=> b!1202250 m!1108207))

(declare-fun m!1108209 () Bool)

(assert (=> b!1202250 m!1108209))

(assert (=> b!1202250 m!1108209))

(declare-fun m!1108211 () Bool)

(assert (=> b!1202250 m!1108211))

(declare-fun m!1108213 () Bool)

(assert (=> b!1202245 m!1108213))

(declare-fun m!1108215 () Bool)

(assert (=> bm!57696 m!1108215))

(declare-fun m!1108217 () Bool)

(assert (=> b!1202240 m!1108217))

(declare-fun m!1108219 () Bool)

(assert (=> b!1202233 m!1108219))

(declare-fun m!1108221 () Bool)

(assert (=> b!1202233 m!1108221))

(declare-fun m!1108223 () Bool)

(assert (=> b!1202233 m!1108223))

(declare-fun m!1108225 () Bool)

(assert (=> b!1202233 m!1108225))

(declare-fun m!1108227 () Bool)

(assert (=> b!1202247 m!1108227))

(declare-fun m!1108229 () Bool)

(assert (=> bm!57700 m!1108229))

(declare-fun m!1108231 () Bool)

(assert (=> b!1202244 m!1108231))

(declare-fun m!1108233 () Bool)

(assert (=> b!1202244 m!1108233))

(check-sat (not bm!57701) (not b!1202240) (not b!1202245) (not b_lambda!21089) (not b!1202247) (not b!1202244) (not b!1202251) (not b!1202231) (not bm!57703) (not b!1202233) (not start!100588) (not bm!57700) (not b!1202242) (not b_next!25875) (not b!1202234) (not b!1202246) (not b!1202243) tp_is_empty!30579 (not mapNonEmpty!47711) (not b!1202250) (not bm!57698) (not bm!57696) b_and!42653)
(check-sat b_and!42653 (not b_next!25875))
