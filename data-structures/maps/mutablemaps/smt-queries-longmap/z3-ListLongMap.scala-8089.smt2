; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99438 () Bool)

(assert start!99438)

(declare-fun b_free!24981 () Bool)

(declare-fun b_next!24981 () Bool)

(assert (=> start!99438 (= b_free!24981 (not b_next!24981))))

(declare-fun tp!87657 () Bool)

(declare-fun b_and!40843 () Bool)

(assert (=> start!99438 (= tp!87657 b_and!40843)))

(declare-fun b!1173291 () Bool)

(declare-fun res!779182 () Bool)

(declare-fun e!666948 () Bool)

(assert (=> b!1173291 (=> (not res!779182) (not e!666948))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173291 (= res!779182 (validMask!0 mask!1564))))

(declare-fun b!1173292 () Bool)

(declare-fun e!666941 () Bool)

(assert (=> b!1173292 (= e!666941 true)))

(declare-datatypes ((array!75798 0))(
  ( (array!75799 (arr!36545 (Array (_ BitVec 32) (_ BitVec 64))) (size!37082 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75798)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1173292 (not (= (select (arr!36545 _keys!1208) from!1455) k0!934))))

(declare-datatypes ((Unit!38598 0))(
  ( (Unit!38599) )
))
(declare-fun lt!528822 () Unit!38598)

(declare-fun e!666944 () Unit!38598)

(assert (=> b!1173292 (= lt!528822 e!666944)))

(declare-fun c!116543 () Bool)

(assert (=> b!1173292 (= c!116543 (= (select (arr!36545 _keys!1208) from!1455) k0!934))))

(declare-fun e!666939 () Bool)

(assert (=> b!1173292 e!666939))

(declare-fun res!779191 () Bool)

(assert (=> b!1173292 (=> (not res!779191) (not e!666939))))

(declare-datatypes ((V!44475 0))(
  ( (V!44476 (val!14812 Int)) )
))
(declare-datatypes ((tuple2!19028 0))(
  ( (tuple2!19029 (_1!9524 (_ BitVec 64)) (_2!9524 V!44475)) )
))
(declare-datatypes ((List!25800 0))(
  ( (Nil!25797) (Cons!25796 (h!27005 tuple2!19028) (t!37780 List!25800)) )
))
(declare-datatypes ((ListLongMap!17009 0))(
  ( (ListLongMap!17010 (toList!8520 List!25800)) )
))
(declare-fun lt!528818 () ListLongMap!17009)

(declare-fun lt!528824 () V!44475)

(declare-fun lt!528823 () ListLongMap!17009)

(declare-datatypes ((ValueCell!14046 0))(
  ( (ValueCellFull!14046 (v!17451 V!44475)) (EmptyCell!14046) )
))
(declare-datatypes ((array!75800 0))(
  ( (array!75801 (arr!36546 (Array (_ BitVec 32) ValueCell!14046)) (size!37083 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75800)

(declare-fun +!3754 (ListLongMap!17009 tuple2!19028) ListLongMap!17009)

(declare-fun get!18681 (ValueCell!14046 V!44475) V!44475)

(assert (=> b!1173292 (= res!779191 (= lt!528823 (+!3754 lt!528818 (tuple2!19029 (select (arr!36545 _keys!1208) from!1455) (get!18681 (select (arr!36546 _values!996) from!1455) lt!528824)))))))

(declare-fun b!1173293 () Bool)

(declare-fun e!666946 () Bool)

(declare-fun e!666945 () Bool)

(declare-fun mapRes!46094 () Bool)

(assert (=> b!1173293 (= e!666946 (and e!666945 mapRes!46094))))

(declare-fun condMapEmpty!46094 () Bool)

(declare-fun mapDefault!46094 () ValueCell!14046)

(assert (=> b!1173293 (= condMapEmpty!46094 (= (arr!36546 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14046)) mapDefault!46094)))))

(declare-fun res!779181 () Bool)

(assert (=> start!99438 (=> (not res!779181) (not e!666948))))

(assert (=> start!99438 (= res!779181 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37082 _keys!1208))))))

(assert (=> start!99438 e!666948))

(declare-fun tp_is_empty!29511 () Bool)

(assert (=> start!99438 tp_is_empty!29511))

(declare-fun array_inv!27808 (array!75798) Bool)

(assert (=> start!99438 (array_inv!27808 _keys!1208)))

(assert (=> start!99438 true))

(assert (=> start!99438 tp!87657))

(declare-fun array_inv!27809 (array!75800) Bool)

(assert (=> start!99438 (and (array_inv!27809 _values!996) e!666946)))

(declare-fun mapNonEmpty!46094 () Bool)

(declare-fun tp!87658 () Bool)

(declare-fun e!666938 () Bool)

(assert (=> mapNonEmpty!46094 (= mapRes!46094 (and tp!87658 e!666938))))

(declare-fun mapKey!46094 () (_ BitVec 32))

(declare-fun mapValue!46094 () ValueCell!14046)

(declare-fun mapRest!46094 () (Array (_ BitVec 32) ValueCell!14046))

(assert (=> mapNonEmpty!46094 (= (arr!36546 _values!996) (store mapRest!46094 mapKey!46094 mapValue!46094))))

(declare-fun b!1173294 () Bool)

(declare-fun Unit!38600 () Unit!38598)

(assert (=> b!1173294 (= e!666944 Unit!38600)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!528816 () Unit!38598)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75798 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38598)

(assert (=> b!1173294 (= lt!528816 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173294 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528826 () Unit!38598)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75798 (_ BitVec 32) (_ BitVec 32)) Unit!38598)

(assert (=> b!1173294 (= lt!528826 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25801 0))(
  ( (Nil!25798) (Cons!25797 (h!27006 (_ BitVec 64)) (t!37781 List!25801)) )
))
(declare-fun arrayNoDuplicates!0 (array!75798 (_ BitVec 32) List!25801) Bool)

(assert (=> b!1173294 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25798)))

(declare-fun lt!528821 () Unit!38598)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75798 (_ BitVec 64) (_ BitVec 32) List!25801) Unit!38598)

(assert (=> b!1173294 (= lt!528821 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25798))))

(assert (=> b!1173294 false))

(declare-fun b!1173295 () Bool)

(declare-fun e!666943 () Bool)

(assert (=> b!1173295 (= e!666943 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173296 () Bool)

(declare-fun e!666949 () Bool)

(declare-fun e!666940 () Bool)

(assert (=> b!1173296 (= e!666949 e!666940)))

(declare-fun res!779178 () Bool)

(assert (=> b!1173296 (=> res!779178 e!666940)))

(assert (=> b!1173296 (= res!779178 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!528815 () array!75798)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44475)

(declare-fun lt!528817 () array!75800)

(declare-fun zeroValue!944 () V!44475)

(declare-fun getCurrentListMapNoExtraKeys!4952 (array!75798 array!75800 (_ BitVec 32) (_ BitVec 32) V!44475 V!44475 (_ BitVec 32) Int) ListLongMap!17009)

(assert (=> b!1173296 (= lt!528823 (getCurrentListMapNoExtraKeys!4952 lt!528815 lt!528817 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1173296 (= lt!528817 (array!75801 (store (arr!36546 _values!996) i!673 (ValueCellFull!14046 lt!528824)) (size!37083 _values!996)))))

(declare-fun dynLambda!2936 (Int (_ BitVec 64)) V!44475)

(assert (=> b!1173296 (= lt!528824 (dynLambda!2936 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528820 () ListLongMap!17009)

(assert (=> b!1173296 (= lt!528820 (getCurrentListMapNoExtraKeys!4952 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1173297 () Bool)

(assert (=> b!1173297 (= e!666945 tp_is_empty!29511)))

(declare-fun mapIsEmpty!46094 () Bool)

(assert (=> mapIsEmpty!46094 mapRes!46094))

(declare-fun b!1173298 () Bool)

(declare-fun res!779183 () Bool)

(assert (=> b!1173298 (=> (not res!779183) (not e!666948))))

(assert (=> b!1173298 (= res!779183 (= (select (arr!36545 _keys!1208) i!673) k0!934))))

(declare-fun b!1173299 () Bool)

(declare-fun e!666942 () Bool)

(assert (=> b!1173299 (= e!666942 (not e!666949))))

(declare-fun res!779186 () Bool)

(assert (=> b!1173299 (=> res!779186 e!666949)))

(assert (=> b!1173299 (= res!779186 (bvsgt from!1455 i!673))))

(assert (=> b!1173299 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!528825 () Unit!38598)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75798 (_ BitVec 64) (_ BitVec 32)) Unit!38598)

(assert (=> b!1173299 (= lt!528825 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173300 () Bool)

(declare-fun res!779185 () Bool)

(assert (=> b!1173300 (=> (not res!779185) (not e!666948))))

(assert (=> b!1173300 (= res!779185 (and (= (size!37083 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37082 _keys!1208) (size!37083 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1173301 () Bool)

(declare-fun res!779190 () Bool)

(assert (=> b!1173301 (=> (not res!779190) (not e!666948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173301 (= res!779190 (validKeyInArray!0 k0!934))))

(declare-fun b!1173302 () Bool)

(assert (=> b!1173302 (= e!666938 tp_is_empty!29511)))

(declare-fun b!1173303 () Bool)

(declare-fun res!779184 () Bool)

(assert (=> b!1173303 (=> (not res!779184) (not e!666942))))

(assert (=> b!1173303 (= res!779184 (arrayNoDuplicates!0 lt!528815 #b00000000000000000000000000000000 Nil!25798))))

(declare-fun b!1173304 () Bool)

(declare-fun res!779188 () Bool)

(assert (=> b!1173304 (=> (not res!779188) (not e!666948))))

(assert (=> b!1173304 (= res!779188 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25798))))

(declare-fun b!1173305 () Bool)

(declare-fun Unit!38601 () Unit!38598)

(assert (=> b!1173305 (= e!666944 Unit!38601)))

(declare-fun b!1173306 () Bool)

(assert (=> b!1173306 (= e!666940 e!666941)))

(declare-fun res!779187 () Bool)

(assert (=> b!1173306 (=> res!779187 e!666941)))

(assert (=> b!1173306 (= res!779187 (not (validKeyInArray!0 (select (arr!36545 _keys!1208) from!1455))))))

(declare-fun lt!528827 () ListLongMap!17009)

(assert (=> b!1173306 (= lt!528827 lt!528818)))

(declare-fun lt!528819 () ListLongMap!17009)

(declare-fun -!1533 (ListLongMap!17009 (_ BitVec 64)) ListLongMap!17009)

(assert (=> b!1173306 (= lt!528818 (-!1533 lt!528819 k0!934))))

(assert (=> b!1173306 (= lt!528827 (getCurrentListMapNoExtraKeys!4952 lt!528815 lt!528817 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173306 (= lt!528819 (getCurrentListMapNoExtraKeys!4952 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528828 () Unit!38598)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!757 (array!75798 array!75800 (_ BitVec 32) (_ BitVec 32) V!44475 V!44475 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38598)

(assert (=> b!1173306 (= lt!528828 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!757 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173307 () Bool)

(declare-fun res!779179 () Bool)

(assert (=> b!1173307 (=> (not res!779179) (not e!666948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75798 (_ BitVec 32)) Bool)

(assert (=> b!1173307 (= res!779179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1173308 () Bool)

(declare-fun res!779189 () Bool)

(assert (=> b!1173308 (=> (not res!779189) (not e!666948))))

(assert (=> b!1173308 (= res!779189 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37082 _keys!1208))))))

(declare-fun b!1173309 () Bool)

(assert (=> b!1173309 (= e!666939 e!666943)))

(declare-fun res!779177 () Bool)

(assert (=> b!1173309 (=> res!779177 e!666943)))

(assert (=> b!1173309 (= res!779177 (not (= (select (arr!36545 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1173310 () Bool)

(assert (=> b!1173310 (= e!666948 e!666942)))

(declare-fun res!779180 () Bool)

(assert (=> b!1173310 (=> (not res!779180) (not e!666942))))

(assert (=> b!1173310 (= res!779180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528815 mask!1564))))

(assert (=> b!1173310 (= lt!528815 (array!75799 (store (arr!36545 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37082 _keys!1208)))))

(assert (= (and start!99438 res!779181) b!1173291))

(assert (= (and b!1173291 res!779182) b!1173300))

(assert (= (and b!1173300 res!779185) b!1173307))

(assert (= (and b!1173307 res!779179) b!1173304))

(assert (= (and b!1173304 res!779188) b!1173308))

(assert (= (and b!1173308 res!779189) b!1173301))

(assert (= (and b!1173301 res!779190) b!1173298))

(assert (= (and b!1173298 res!779183) b!1173310))

(assert (= (and b!1173310 res!779180) b!1173303))

(assert (= (and b!1173303 res!779184) b!1173299))

(assert (= (and b!1173299 (not res!779186)) b!1173296))

(assert (= (and b!1173296 (not res!779178)) b!1173306))

(assert (= (and b!1173306 (not res!779187)) b!1173292))

(assert (= (and b!1173292 res!779191) b!1173309))

(assert (= (and b!1173309 (not res!779177)) b!1173295))

(assert (= (and b!1173292 c!116543) b!1173294))

(assert (= (and b!1173292 (not c!116543)) b!1173305))

(assert (= (and b!1173293 condMapEmpty!46094) mapIsEmpty!46094))

(assert (= (and b!1173293 (not condMapEmpty!46094)) mapNonEmpty!46094))

(get-info :version)

(assert (= (and mapNonEmpty!46094 ((_ is ValueCellFull!14046) mapValue!46094)) b!1173302))

(assert (= (and b!1173293 ((_ is ValueCellFull!14046) mapDefault!46094)) b!1173297))

(assert (= start!99438 b!1173293))

(declare-fun b_lambda!20143 () Bool)

(assert (=> (not b_lambda!20143) (not b!1173296)))

(declare-fun t!37779 () Bool)

(declare-fun tb!9801 () Bool)

(assert (=> (and start!99438 (= defaultEntry!1004 defaultEntry!1004) t!37779) tb!9801))

(declare-fun result!20161 () Bool)

(assert (=> tb!9801 (= result!20161 tp_is_empty!29511)))

(assert (=> b!1173296 t!37779))

(declare-fun b_and!40845 () Bool)

(assert (= b_and!40843 (and (=> t!37779 result!20161) b_and!40845)))

(declare-fun m!1081185 () Bool)

(assert (=> b!1173298 m!1081185))

(declare-fun m!1081187 () Bool)

(assert (=> b!1173309 m!1081187))

(declare-fun m!1081189 () Bool)

(assert (=> b!1173306 m!1081189))

(declare-fun m!1081191 () Bool)

(assert (=> b!1173306 m!1081191))

(assert (=> b!1173306 m!1081187))

(declare-fun m!1081193 () Bool)

(assert (=> b!1173306 m!1081193))

(assert (=> b!1173306 m!1081187))

(declare-fun m!1081195 () Bool)

(assert (=> b!1173306 m!1081195))

(declare-fun m!1081197 () Bool)

(assert (=> b!1173306 m!1081197))

(declare-fun m!1081199 () Bool)

(assert (=> mapNonEmpty!46094 m!1081199))

(declare-fun m!1081201 () Bool)

(assert (=> b!1173294 m!1081201))

(declare-fun m!1081203 () Bool)

(assert (=> b!1173294 m!1081203))

(declare-fun m!1081205 () Bool)

(assert (=> b!1173294 m!1081205))

(declare-fun m!1081207 () Bool)

(assert (=> b!1173294 m!1081207))

(declare-fun m!1081209 () Bool)

(assert (=> b!1173294 m!1081209))

(declare-fun m!1081211 () Bool)

(assert (=> b!1173304 m!1081211))

(declare-fun m!1081213 () Bool)

(assert (=> b!1173303 m!1081213))

(declare-fun m!1081215 () Bool)

(assert (=> b!1173295 m!1081215))

(declare-fun m!1081217 () Bool)

(assert (=> b!1173291 m!1081217))

(declare-fun m!1081219 () Bool)

(assert (=> b!1173299 m!1081219))

(declare-fun m!1081221 () Bool)

(assert (=> b!1173299 m!1081221))

(declare-fun m!1081223 () Bool)

(assert (=> start!99438 m!1081223))

(declare-fun m!1081225 () Bool)

(assert (=> start!99438 m!1081225))

(declare-fun m!1081227 () Bool)

(assert (=> b!1173307 m!1081227))

(assert (=> b!1173292 m!1081187))

(declare-fun m!1081229 () Bool)

(assert (=> b!1173292 m!1081229))

(assert (=> b!1173292 m!1081229))

(declare-fun m!1081231 () Bool)

(assert (=> b!1173292 m!1081231))

(declare-fun m!1081233 () Bool)

(assert (=> b!1173292 m!1081233))

(declare-fun m!1081235 () Bool)

(assert (=> b!1173310 m!1081235))

(declare-fun m!1081237 () Bool)

(assert (=> b!1173310 m!1081237))

(declare-fun m!1081239 () Bool)

(assert (=> b!1173296 m!1081239))

(declare-fun m!1081241 () Bool)

(assert (=> b!1173296 m!1081241))

(declare-fun m!1081243 () Bool)

(assert (=> b!1173296 m!1081243))

(declare-fun m!1081245 () Bool)

(assert (=> b!1173296 m!1081245))

(declare-fun m!1081247 () Bool)

(assert (=> b!1173301 m!1081247))

(check-sat (not start!99438) (not b!1173307) b_and!40845 (not b!1173304) (not b!1173299) (not b!1173301) (not mapNonEmpty!46094) (not b!1173306) (not b!1173310) (not b!1173303) (not b!1173296) (not b!1173291) (not b!1173295) tp_is_empty!29511 (not b!1173292) (not b_lambda!20143) (not b!1173294) (not b_next!24981))
(check-sat b_and!40845 (not b_next!24981))
