; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99468 () Bool)

(assert start!99468)

(declare-fun b_free!25011 () Bool)

(declare-fun b_next!25011 () Bool)

(assert (=> start!99468 (= b_free!25011 (not b_next!25011))))

(declare-fun tp!87747 () Bool)

(declare-fun b_and!40903 () Bool)

(assert (=> start!99468 (= tp!87747 b_and!40903)))

(declare-fun b!1174222 () Bool)

(declare-fun res!779856 () Bool)

(declare-fun e!667483 () Bool)

(assert (=> b!1174222 (=> (not res!779856) (not e!667483))))

(declare-datatypes ((array!75858 0))(
  ( (array!75859 (arr!36575 (Array (_ BitVec 32) (_ BitVec 64))) (size!37112 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75858)

(declare-datatypes ((List!25825 0))(
  ( (Nil!25822) (Cons!25821 (h!27030 (_ BitVec 64)) (t!37835 List!25825)) )
))
(declare-fun arrayNoDuplicates!0 (array!75858 (_ BitVec 32) List!25825) Bool)

(assert (=> b!1174222 (= res!779856 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25822))))

(declare-fun b!1174223 () Bool)

(declare-fun res!779861 () Bool)

(assert (=> b!1174223 (=> (not res!779861) (not e!667483))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1174223 (= res!779861 (= (select (arr!36575 _keys!1208) i!673) k0!934))))

(declare-fun b!1174224 () Bool)

(declare-fun res!779859 () Bool)

(assert (=> b!1174224 (=> (not res!779859) (not e!667483))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174224 (= res!779859 (validMask!0 mask!1564))))

(declare-fun b!1174225 () Bool)

(declare-fun e!667479 () Bool)

(declare-fun tp_is_empty!29541 () Bool)

(assert (=> b!1174225 (= e!667479 tp_is_empty!29541)))

(declare-fun mapIsEmpty!46139 () Bool)

(declare-fun mapRes!46139 () Bool)

(assert (=> mapIsEmpty!46139 mapRes!46139))

(declare-fun b!1174226 () Bool)

(declare-fun e!667485 () Bool)

(declare-fun e!667486 () Bool)

(assert (=> b!1174226 (= e!667485 (not e!667486))))

(declare-fun res!779853 () Bool)

(assert (=> b!1174226 (=> res!779853 e!667486)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1174226 (= res!779853 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174226 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38644 0))(
  ( (Unit!38645) )
))
(declare-fun lt!529448 () Unit!38644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75858 (_ BitVec 64) (_ BitVec 32)) Unit!38644)

(assert (=> b!1174226 (= lt!529448 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174227 () Bool)

(declare-fun e!667484 () Bool)

(declare-fun e!667487 () Bool)

(assert (=> b!1174227 (= e!667484 e!667487)))

(declare-fun res!779865 () Bool)

(assert (=> b!1174227 (=> res!779865 e!667487)))

(assert (=> b!1174227 (= res!779865 (not (= (select (arr!36575 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1174228 () Bool)

(declare-fun res!779854 () Bool)

(assert (=> b!1174228 (=> (not res!779854) (not e!667483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75858 (_ BitVec 32)) Bool)

(assert (=> b!1174228 (= res!779854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174229 () Bool)

(assert (=> b!1174229 (= e!667487 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174230 () Bool)

(declare-fun res!779855 () Bool)

(assert (=> b!1174230 (=> (not res!779855) (not e!667483))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44515 0))(
  ( (V!44516 (val!14827 Int)) )
))
(declare-datatypes ((ValueCell!14061 0))(
  ( (ValueCellFull!14061 (v!17466 V!44515)) (EmptyCell!14061) )
))
(declare-datatypes ((array!75860 0))(
  ( (array!75861 (arr!36576 (Array (_ BitVec 32) ValueCell!14061)) (size!37113 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75860)

(assert (=> b!1174230 (= res!779855 (and (= (size!37113 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37112 _keys!1208) (size!37113 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174231 () Bool)

(declare-fun e!667488 () Bool)

(declare-fun e!667481 () Bool)

(assert (=> b!1174231 (= e!667488 (and e!667481 mapRes!46139))))

(declare-fun condMapEmpty!46139 () Bool)

(declare-fun mapDefault!46139 () ValueCell!14061)

(assert (=> b!1174231 (= condMapEmpty!46139 (= (arr!36576 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14061)) mapDefault!46139)))))

(declare-fun b!1174232 () Bool)

(declare-fun res!779863 () Bool)

(assert (=> b!1174232 (=> (not res!779863) (not e!667483))))

(assert (=> b!1174232 (= res!779863 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37112 _keys!1208))))))

(declare-fun b!1174233 () Bool)

(declare-fun e!667482 () Unit!38644)

(declare-fun Unit!38646 () Unit!38644)

(assert (=> b!1174233 (= e!667482 Unit!38646)))

(declare-fun b!1174234 () Bool)

(declare-fun res!779866 () Bool)

(assert (=> b!1174234 (=> (not res!779866) (not e!667483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174234 (= res!779866 (validKeyInArray!0 k0!934))))

(declare-fun b!1174235 () Bool)

(assert (=> b!1174235 (= e!667483 e!667485)))

(declare-fun res!779860 () Bool)

(assert (=> b!1174235 (=> (not res!779860) (not e!667485))))

(declare-fun lt!529458 () array!75858)

(assert (=> b!1174235 (= res!779860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529458 mask!1564))))

(assert (=> b!1174235 (= lt!529458 (array!75859 (store (arr!36575 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37112 _keys!1208)))))

(declare-fun b!1174236 () Bool)

(assert (=> b!1174236 (= e!667481 tp_is_empty!29541)))

(declare-fun mapNonEmpty!46139 () Bool)

(declare-fun tp!87748 () Bool)

(assert (=> mapNonEmpty!46139 (= mapRes!46139 (and tp!87748 e!667479))))

(declare-fun mapValue!46139 () ValueCell!14061)

(declare-fun mapKey!46139 () (_ BitVec 32))

(declare-fun mapRest!46139 () (Array (_ BitVec 32) ValueCell!14061))

(assert (=> mapNonEmpty!46139 (= (arr!36576 _values!996) (store mapRest!46139 mapKey!46139 mapValue!46139))))

(declare-fun b!1174221 () Bool)

(declare-fun e!667478 () Bool)

(declare-fun e!667480 () Bool)

(assert (=> b!1174221 (= e!667478 e!667480)))

(declare-fun res!779864 () Bool)

(assert (=> b!1174221 (=> res!779864 e!667480)))

(assert (=> b!1174221 (= res!779864 (not (validKeyInArray!0 (select (arr!36575 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19054 0))(
  ( (tuple2!19055 (_1!9537 (_ BitVec 64)) (_2!9537 V!44515)) )
))
(declare-datatypes ((List!25826 0))(
  ( (Nil!25823) (Cons!25822 (h!27031 tuple2!19054) (t!37836 List!25826)) )
))
(declare-datatypes ((ListLongMap!17035 0))(
  ( (ListLongMap!17036 (toList!8533 List!25826)) )
))
(declare-fun lt!529456 () ListLongMap!17035)

(declare-fun lt!529449 () ListLongMap!17035)

(assert (=> b!1174221 (= lt!529456 lt!529449)))

(declare-fun lt!529445 () ListLongMap!17035)

(declare-fun -!1544 (ListLongMap!17035 (_ BitVec 64)) ListLongMap!17035)

(assert (=> b!1174221 (= lt!529449 (-!1544 lt!529445 k0!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44515)

(declare-fun lt!529455 () array!75860)

(declare-fun zeroValue!944 () V!44515)

(declare-fun getCurrentListMapNoExtraKeys!4964 (array!75858 array!75860 (_ BitVec 32) (_ BitVec 32) V!44515 V!44515 (_ BitVec 32) Int) ListLongMap!17035)

(assert (=> b!1174221 (= lt!529456 (getCurrentListMapNoExtraKeys!4964 lt!529458 lt!529455 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174221 (= lt!529445 (getCurrentListMapNoExtraKeys!4964 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529452 () Unit!38644)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!768 (array!75858 array!75860 (_ BitVec 32) (_ BitVec 32) V!44515 V!44515 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38644)

(assert (=> b!1174221 (= lt!529452 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!768 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!779852 () Bool)

(assert (=> start!99468 (=> (not res!779852) (not e!667483))))

(assert (=> start!99468 (= res!779852 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37112 _keys!1208))))))

(assert (=> start!99468 e!667483))

(assert (=> start!99468 tp_is_empty!29541))

(declare-fun array_inv!27828 (array!75858) Bool)

(assert (=> start!99468 (array_inv!27828 _keys!1208)))

(assert (=> start!99468 true))

(assert (=> start!99468 tp!87747))

(declare-fun array_inv!27829 (array!75860) Bool)

(assert (=> start!99468 (and (array_inv!27829 _values!996) e!667488)))

(declare-fun b!1174237 () Bool)

(declare-fun Unit!38647 () Unit!38644)

(assert (=> b!1174237 (= e!667482 Unit!38647)))

(declare-fun lt!529450 () Unit!38644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75858 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38644)

(assert (=> b!1174237 (= lt!529450 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174237 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529447 () Unit!38644)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75858 (_ BitVec 32) (_ BitVec 32)) Unit!38644)

(assert (=> b!1174237 (= lt!529447 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174237 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25822)))

(declare-fun lt!529454 () Unit!38644)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75858 (_ BitVec 64) (_ BitVec 32) List!25825) Unit!38644)

(assert (=> b!1174237 (= lt!529454 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25822))))

(assert (=> b!1174237 false))

(declare-fun b!1174238 () Bool)

(assert (=> b!1174238 (= e!667486 e!667478)))

(declare-fun res!779858 () Bool)

(assert (=> b!1174238 (=> res!779858 e!667478)))

(assert (=> b!1174238 (= res!779858 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!529453 () ListLongMap!17035)

(assert (=> b!1174238 (= lt!529453 (getCurrentListMapNoExtraKeys!4964 lt!529458 lt!529455 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!529446 () V!44515)

(assert (=> b!1174238 (= lt!529455 (array!75861 (store (arr!36576 _values!996) i!673 (ValueCellFull!14061 lt!529446)) (size!37113 _values!996)))))

(declare-fun dynLambda!2948 (Int (_ BitVec 64)) V!44515)

(assert (=> b!1174238 (= lt!529446 (dynLambda!2948 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529457 () ListLongMap!17035)

(assert (=> b!1174238 (= lt!529457 (getCurrentListMapNoExtraKeys!4964 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174239 () Bool)

(assert (=> b!1174239 (= e!667480 true)))

(assert (=> b!1174239 (not (= (select (arr!36575 _keys!1208) from!1455) k0!934))))

(declare-fun lt!529451 () Unit!38644)

(assert (=> b!1174239 (= lt!529451 e!667482)))

(declare-fun c!116588 () Bool)

(assert (=> b!1174239 (= c!116588 (= (select (arr!36575 _keys!1208) from!1455) k0!934))))

(assert (=> b!1174239 e!667484))

(declare-fun res!779857 () Bool)

(assert (=> b!1174239 (=> (not res!779857) (not e!667484))))

(declare-fun +!3767 (ListLongMap!17035 tuple2!19054) ListLongMap!17035)

(declare-fun get!18704 (ValueCell!14061 V!44515) V!44515)

(assert (=> b!1174239 (= res!779857 (= lt!529453 (+!3767 lt!529449 (tuple2!19055 (select (arr!36575 _keys!1208) from!1455) (get!18704 (select (arr!36576 _values!996) from!1455) lt!529446)))))))

(declare-fun b!1174240 () Bool)

(declare-fun res!779862 () Bool)

(assert (=> b!1174240 (=> (not res!779862) (not e!667485))))

(assert (=> b!1174240 (= res!779862 (arrayNoDuplicates!0 lt!529458 #b00000000000000000000000000000000 Nil!25822))))

(assert (= (and start!99468 res!779852) b!1174224))

(assert (= (and b!1174224 res!779859) b!1174230))

(assert (= (and b!1174230 res!779855) b!1174228))

(assert (= (and b!1174228 res!779854) b!1174222))

(assert (= (and b!1174222 res!779856) b!1174232))

(assert (= (and b!1174232 res!779863) b!1174234))

(assert (= (and b!1174234 res!779866) b!1174223))

(assert (= (and b!1174223 res!779861) b!1174235))

(assert (= (and b!1174235 res!779860) b!1174240))

(assert (= (and b!1174240 res!779862) b!1174226))

(assert (= (and b!1174226 (not res!779853)) b!1174238))

(assert (= (and b!1174238 (not res!779858)) b!1174221))

(assert (= (and b!1174221 (not res!779864)) b!1174239))

(assert (= (and b!1174239 res!779857) b!1174227))

(assert (= (and b!1174227 (not res!779865)) b!1174229))

(assert (= (and b!1174239 c!116588) b!1174237))

(assert (= (and b!1174239 (not c!116588)) b!1174233))

(assert (= (and b!1174231 condMapEmpty!46139) mapIsEmpty!46139))

(assert (= (and b!1174231 (not condMapEmpty!46139)) mapNonEmpty!46139))

(get-info :version)

(assert (= (and mapNonEmpty!46139 ((_ is ValueCellFull!14061) mapValue!46139)) b!1174225))

(assert (= (and b!1174231 ((_ is ValueCellFull!14061) mapDefault!46139)) b!1174236))

(assert (= start!99468 b!1174231))

(declare-fun b_lambda!20173 () Bool)

(assert (=> (not b_lambda!20173) (not b!1174238)))

(declare-fun t!37834 () Bool)

(declare-fun tb!9831 () Bool)

(assert (=> (and start!99468 (= defaultEntry!1004 defaultEntry!1004) t!37834) tb!9831))

(declare-fun result!20221 () Bool)

(assert (=> tb!9831 (= result!20221 tp_is_empty!29541)))

(assert (=> b!1174238 t!37834))

(declare-fun b_and!40905 () Bool)

(assert (= b_and!40903 (and (=> t!37834 result!20221) b_and!40905)))

(declare-fun m!1082145 () Bool)

(assert (=> b!1174229 m!1082145))

(declare-fun m!1082147 () Bool)

(assert (=> b!1174237 m!1082147))

(declare-fun m!1082149 () Bool)

(assert (=> b!1174237 m!1082149))

(declare-fun m!1082151 () Bool)

(assert (=> b!1174237 m!1082151))

(declare-fun m!1082153 () Bool)

(assert (=> b!1174237 m!1082153))

(declare-fun m!1082155 () Bool)

(assert (=> b!1174237 m!1082155))

(declare-fun m!1082157 () Bool)

(assert (=> b!1174238 m!1082157))

(declare-fun m!1082159 () Bool)

(assert (=> b!1174238 m!1082159))

(declare-fun m!1082161 () Bool)

(assert (=> b!1174238 m!1082161))

(declare-fun m!1082163 () Bool)

(assert (=> b!1174238 m!1082163))

(declare-fun m!1082165 () Bool)

(assert (=> b!1174227 m!1082165))

(declare-fun m!1082167 () Bool)

(assert (=> b!1174235 m!1082167))

(declare-fun m!1082169 () Bool)

(assert (=> b!1174235 m!1082169))

(declare-fun m!1082171 () Bool)

(assert (=> b!1174226 m!1082171))

(declare-fun m!1082173 () Bool)

(assert (=> b!1174226 m!1082173))

(assert (=> b!1174239 m!1082165))

(declare-fun m!1082175 () Bool)

(assert (=> b!1174239 m!1082175))

(assert (=> b!1174239 m!1082175))

(declare-fun m!1082177 () Bool)

(assert (=> b!1174239 m!1082177))

(declare-fun m!1082179 () Bool)

(assert (=> b!1174239 m!1082179))

(declare-fun m!1082181 () Bool)

(assert (=> b!1174222 m!1082181))

(declare-fun m!1082183 () Bool)

(assert (=> b!1174221 m!1082183))

(declare-fun m!1082185 () Bool)

(assert (=> b!1174221 m!1082185))

(declare-fun m!1082187 () Bool)

(assert (=> b!1174221 m!1082187))

(assert (=> b!1174221 m!1082165))

(declare-fun m!1082189 () Bool)

(assert (=> b!1174221 m!1082189))

(declare-fun m!1082191 () Bool)

(assert (=> b!1174221 m!1082191))

(assert (=> b!1174221 m!1082165))

(declare-fun m!1082193 () Bool)

(assert (=> start!99468 m!1082193))

(declare-fun m!1082195 () Bool)

(assert (=> start!99468 m!1082195))

(declare-fun m!1082197 () Bool)

(assert (=> b!1174224 m!1082197))

(declare-fun m!1082199 () Bool)

(assert (=> b!1174240 m!1082199))

(declare-fun m!1082201 () Bool)

(assert (=> mapNonEmpty!46139 m!1082201))

(declare-fun m!1082203 () Bool)

(assert (=> b!1174223 m!1082203))

(declare-fun m!1082205 () Bool)

(assert (=> b!1174234 m!1082205))

(declare-fun m!1082207 () Bool)

(assert (=> b!1174228 m!1082207))

(check-sat (not b!1174237) b_and!40905 (not start!99468) (not b!1174229) (not b!1174240) tp_is_empty!29541 (not b!1174222) (not b!1174228) (not b!1174226) (not b!1174221) (not b!1174224) (not b_lambda!20173) (not b!1174239) (not mapNonEmpty!46139) (not b_next!25011) (not b!1174238) (not b!1174235) (not b!1174234))
(check-sat b_and!40905 (not b_next!25011))
