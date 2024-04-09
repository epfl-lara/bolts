; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99618 () Bool)

(assert start!99618)

(declare-fun b_free!25161 () Bool)

(declare-fun b_next!25161 () Bool)

(assert (=> start!99618 (= b_free!25161 (not b_next!25161))))

(declare-fun tp!88197 () Bool)

(declare-fun b_and!41203 () Bool)

(assert (=> start!99618 (= tp!88197 b_and!41203)))

(declare-fun b!1179011 () Bool)

(declare-fun res!783372 () Bool)

(declare-fun e!670322 () Bool)

(assert (=> b!1179011 (=> (not res!783372) (not e!670322))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76154 0))(
  ( (array!76155 (arr!36723 (Array (_ BitVec 32) (_ BitVec 64))) (size!37260 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76154)

(assert (=> b!1179011 (= res!783372 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37260 _keys!1208))))))

(declare-fun b!1179012 () Bool)

(declare-fun e!670321 () Bool)

(declare-fun tp_is_empty!29691 () Bool)

(assert (=> b!1179012 (= e!670321 tp_is_empty!29691)))

(declare-datatypes ((V!44715 0))(
  ( (V!44716 (val!14902 Int)) )
))
(declare-datatypes ((tuple2!19196 0))(
  ( (tuple2!19197 (_1!9608 (_ BitVec 64)) (_2!9608 V!44715)) )
))
(declare-fun lt!532735 () tuple2!19196)

(declare-fun b!1179013 () Bool)

(declare-fun e!670327 () Bool)

(declare-datatypes ((List!25960 0))(
  ( (Nil!25957) (Cons!25956 (h!27165 tuple2!19196) (t!38120 List!25960)) )
))
(declare-datatypes ((ListLongMap!17177 0))(
  ( (ListLongMap!17178 (toList!8604 List!25960)) )
))
(declare-fun lt!532742 () ListLongMap!17177)

(declare-fun lt!532741 () ListLongMap!17177)

(declare-fun +!3825 (ListLongMap!17177 tuple2!19196) ListLongMap!17177)

(assert (=> b!1179013 (= e!670327 (= lt!532742 (+!3825 lt!532741 lt!532735)))))

(declare-fun b!1179014 () Bool)

(declare-fun e!670325 () Bool)

(declare-fun mapRes!46364 () Bool)

(assert (=> b!1179014 (= e!670325 (and e!670321 mapRes!46364))))

(declare-fun condMapEmpty!46364 () Bool)

(declare-datatypes ((ValueCell!14136 0))(
  ( (ValueCellFull!14136 (v!17541 V!44715)) (EmptyCell!14136) )
))
(declare-datatypes ((array!76156 0))(
  ( (array!76157 (arr!36724 (Array (_ BitVec 32) ValueCell!14136)) (size!37261 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76156)

(declare-fun mapDefault!46364 () ValueCell!14136)

(assert (=> b!1179014 (= condMapEmpty!46364 (= (arr!36724 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14136)) mapDefault!46364)))))

(declare-fun b!1179015 () Bool)

(declare-fun res!783377 () Bool)

(assert (=> b!1179015 (=> (not res!783377) (not e!670322))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179015 (= res!783377 (validKeyInArray!0 k0!934))))

(declare-fun b!1179016 () Bool)

(declare-fun e!670320 () Bool)

(declare-fun arrayContainsKey!0 (array!76154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179016 (= e!670320 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1179017 () Bool)

(declare-fun res!783367 () Bool)

(assert (=> b!1179017 (=> (not res!783367) (not e!670322))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76154 (_ BitVec 32)) Bool)

(assert (=> b!1179017 (= res!783367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1179018 () Bool)

(declare-fun e!670319 () Bool)

(assert (=> b!1179018 (= e!670319 e!670320)))

(declare-fun res!783376 () Bool)

(assert (=> b!1179018 (=> res!783376 e!670320)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179018 (= res!783376 (not (= (select (arr!36723 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1179019 () Bool)

(declare-fun res!783379 () Bool)

(assert (=> b!1179019 (=> (not res!783379) (not e!670322))))

(declare-datatypes ((List!25961 0))(
  ( (Nil!25958) (Cons!25957 (h!27166 (_ BitVec 64)) (t!38121 List!25961)) )
))
(declare-fun arrayNoDuplicates!0 (array!76154 (_ BitVec 32) List!25961) Bool)

(assert (=> b!1179019 (= res!783379 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25958))))

(declare-fun b!1179021 () Bool)

(declare-fun e!670318 () Bool)

(assert (=> b!1179021 (= e!670318 tp_is_empty!29691)))

(declare-fun b!1179022 () Bool)

(declare-datatypes ((Unit!38887 0))(
  ( (Unit!38888) )
))
(declare-fun e!670329 () Unit!38887)

(declare-fun Unit!38889 () Unit!38887)

(assert (=> b!1179022 (= e!670329 Unit!38889)))

(declare-fun b!1179023 () Bool)

(declare-fun res!783368 () Bool)

(assert (=> b!1179023 (=> (not res!783368) (not e!670322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179023 (= res!783368 (validMask!0 mask!1564))))

(declare-fun b!1179024 () Bool)

(declare-fun res!783375 () Bool)

(assert (=> b!1179024 (=> (not res!783375) (not e!670322))))

(assert (=> b!1179024 (= res!783375 (= (select (arr!36723 _keys!1208) i!673) k0!934))))

(declare-fun b!1179025 () Bool)

(declare-fun e!670328 () Bool)

(assert (=> b!1179025 (= e!670328 true)))

(assert (=> b!1179025 e!670327))

(declare-fun res!783371 () Bool)

(assert (=> b!1179025 (=> (not res!783371) (not e!670327))))

(assert (=> b!1179025 (= res!783371 (not (= (select (arr!36723 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!532746 () Unit!38887)

(assert (=> b!1179025 (= lt!532746 e!670329)))

(declare-fun c!116813 () Bool)

(assert (=> b!1179025 (= c!116813 (= (select (arr!36723 _keys!1208) from!1455) k0!934))))

(assert (=> b!1179025 e!670319))

(declare-fun res!783374 () Bool)

(assert (=> b!1179025 (=> (not res!783374) (not e!670319))))

(declare-fun lt!532738 () ListLongMap!17177)

(declare-fun lt!532740 () ListLongMap!17177)

(assert (=> b!1179025 (= res!783374 (= lt!532738 (+!3825 lt!532740 lt!532735)))))

(declare-fun lt!532736 () V!44715)

(declare-fun get!18805 (ValueCell!14136 V!44715) V!44715)

(assert (=> b!1179025 (= lt!532735 (tuple2!19197 (select (arr!36723 _keys!1208) from!1455) (get!18805 (select (arr!36724 _values!996) from!1455) lt!532736)))))

(declare-fun b!1179026 () Bool)

(declare-fun e!670324 () Bool)

(declare-fun e!670323 () Bool)

(assert (=> b!1179026 (= e!670324 e!670323)))

(declare-fun res!783382 () Bool)

(assert (=> b!1179026 (=> res!783382 e!670323)))

(assert (=> b!1179026 (= res!783382 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44715)

(declare-fun lt!532747 () array!76154)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44715)

(declare-fun lt!532739 () array!76156)

(declare-fun getCurrentListMapNoExtraKeys!5032 (array!76154 array!76156 (_ BitVec 32) (_ BitVec 32) V!44715 V!44715 (_ BitVec 32) Int) ListLongMap!17177)

(assert (=> b!1179026 (= lt!532738 (getCurrentListMapNoExtraKeys!5032 lt!532747 lt!532739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1179026 (= lt!532739 (array!76157 (store (arr!36724 _values!996) i!673 (ValueCellFull!14136 lt!532736)) (size!37261 _values!996)))))

(declare-fun dynLambda!3005 (Int (_ BitVec 64)) V!44715)

(assert (=> b!1179026 (= lt!532736 (dynLambda!3005 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1179026 (= lt!532742 (getCurrentListMapNoExtraKeys!5032 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46364 () Bool)

(declare-fun tp!88198 () Bool)

(assert (=> mapNonEmpty!46364 (= mapRes!46364 (and tp!88198 e!670318))))

(declare-fun mapKey!46364 () (_ BitVec 32))

(declare-fun mapValue!46364 () ValueCell!14136)

(declare-fun mapRest!46364 () (Array (_ BitVec 32) ValueCell!14136))

(assert (=> mapNonEmpty!46364 (= (arr!36724 _values!996) (store mapRest!46364 mapKey!46364 mapValue!46364))))

(declare-fun b!1179027 () Bool)

(declare-fun res!783381 () Bool)

(assert (=> b!1179027 (=> (not res!783381) (not e!670322))))

(assert (=> b!1179027 (= res!783381 (and (= (size!37261 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37260 _keys!1208) (size!37261 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179028 () Bool)

(assert (=> b!1179028 (= e!670323 e!670328)))

(declare-fun res!783370 () Bool)

(assert (=> b!1179028 (=> res!783370 e!670328)))

(assert (=> b!1179028 (= res!783370 (not (validKeyInArray!0 (select (arr!36723 _keys!1208) from!1455))))))

(declare-fun lt!532737 () ListLongMap!17177)

(assert (=> b!1179028 (= lt!532737 lt!532740)))

(declare-fun -!1600 (ListLongMap!17177 (_ BitVec 64)) ListLongMap!17177)

(assert (=> b!1179028 (= lt!532740 (-!1600 lt!532741 k0!934))))

(assert (=> b!1179028 (= lt!532737 (getCurrentListMapNoExtraKeys!5032 lt!532747 lt!532739 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179028 (= lt!532741 (getCurrentListMapNoExtraKeys!5032 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532749 () Unit!38887)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!824 (array!76154 array!76156 (_ BitVec 32) (_ BitVec 32) V!44715 V!44715 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38887)

(assert (=> b!1179028 (= lt!532749 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!824 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179029 () Bool)

(declare-fun res!783380 () Bool)

(declare-fun e!670326 () Bool)

(assert (=> b!1179029 (=> (not res!783380) (not e!670326))))

(assert (=> b!1179029 (= res!783380 (arrayNoDuplicates!0 lt!532747 #b00000000000000000000000000000000 Nil!25958))))

(declare-fun b!1179030 () Bool)

(declare-fun Unit!38890 () Unit!38887)

(assert (=> b!1179030 (= e!670329 Unit!38890)))

(declare-fun lt!532748 () Unit!38887)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76154 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38887)

(assert (=> b!1179030 (= lt!532748 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1179030 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532745 () Unit!38887)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76154 (_ BitVec 32) (_ BitVec 32)) Unit!38887)

(assert (=> b!1179030 (= lt!532745 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1179030 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25958)))

(declare-fun lt!532744 () Unit!38887)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76154 (_ BitVec 64) (_ BitVec 32) List!25961) Unit!38887)

(assert (=> b!1179030 (= lt!532744 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25958))))

(assert (=> b!1179030 false))

(declare-fun b!1179031 () Bool)

(assert (=> b!1179031 (= e!670322 e!670326)))

(declare-fun res!783369 () Bool)

(assert (=> b!1179031 (=> (not res!783369) (not e!670326))))

(assert (=> b!1179031 (= res!783369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532747 mask!1564))))

(assert (=> b!1179031 (= lt!532747 (array!76155 (store (arr!36723 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37260 _keys!1208)))))

(declare-fun mapIsEmpty!46364 () Bool)

(assert (=> mapIsEmpty!46364 mapRes!46364))

(declare-fun res!783378 () Bool)

(assert (=> start!99618 (=> (not res!783378) (not e!670322))))

(assert (=> start!99618 (= res!783378 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37260 _keys!1208))))))

(assert (=> start!99618 e!670322))

(assert (=> start!99618 tp_is_empty!29691))

(declare-fun array_inv!27928 (array!76154) Bool)

(assert (=> start!99618 (array_inv!27928 _keys!1208)))

(assert (=> start!99618 true))

(assert (=> start!99618 tp!88197))

(declare-fun array_inv!27929 (array!76156) Bool)

(assert (=> start!99618 (and (array_inv!27929 _values!996) e!670325)))

(declare-fun b!1179020 () Bool)

(assert (=> b!1179020 (= e!670326 (not e!670324))))

(declare-fun res!783373 () Bool)

(assert (=> b!1179020 (=> res!783373 e!670324)))

(assert (=> b!1179020 (= res!783373 (bvsgt from!1455 i!673))))

(assert (=> b!1179020 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!532743 () Unit!38887)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76154 (_ BitVec 64) (_ BitVec 32)) Unit!38887)

(assert (=> b!1179020 (= lt!532743 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99618 res!783378) b!1179023))

(assert (= (and b!1179023 res!783368) b!1179027))

(assert (= (and b!1179027 res!783381) b!1179017))

(assert (= (and b!1179017 res!783367) b!1179019))

(assert (= (and b!1179019 res!783379) b!1179011))

(assert (= (and b!1179011 res!783372) b!1179015))

(assert (= (and b!1179015 res!783377) b!1179024))

(assert (= (and b!1179024 res!783375) b!1179031))

(assert (= (and b!1179031 res!783369) b!1179029))

(assert (= (and b!1179029 res!783380) b!1179020))

(assert (= (and b!1179020 (not res!783373)) b!1179026))

(assert (= (and b!1179026 (not res!783382)) b!1179028))

(assert (= (and b!1179028 (not res!783370)) b!1179025))

(assert (= (and b!1179025 res!783374) b!1179018))

(assert (= (and b!1179018 (not res!783376)) b!1179016))

(assert (= (and b!1179025 c!116813) b!1179030))

(assert (= (and b!1179025 (not c!116813)) b!1179022))

(assert (= (and b!1179025 res!783371) b!1179013))

(assert (= (and b!1179014 condMapEmpty!46364) mapIsEmpty!46364))

(assert (= (and b!1179014 (not condMapEmpty!46364)) mapNonEmpty!46364))

(get-info :version)

(assert (= (and mapNonEmpty!46364 ((_ is ValueCellFull!14136) mapValue!46364)) b!1179021))

(assert (= (and b!1179014 ((_ is ValueCellFull!14136) mapDefault!46364)) b!1179012))

(assert (= start!99618 b!1179014))

(declare-fun b_lambda!20323 () Bool)

(assert (=> (not b_lambda!20323) (not b!1179026)))

(declare-fun t!38119 () Bool)

(declare-fun tb!9981 () Bool)

(assert (=> (and start!99618 (= defaultEntry!1004 defaultEntry!1004) t!38119) tb!9981))

(declare-fun result!20521 () Bool)

(assert (=> tb!9981 (= result!20521 tp_is_empty!29691)))

(assert (=> b!1179026 t!38119))

(declare-fun b_and!41205 () Bool)

(assert (= b_and!41203 (and (=> t!38119 result!20521) b_and!41205)))

(declare-fun m!1087037 () Bool)

(assert (=> b!1179026 m!1087037))

(declare-fun m!1087039 () Bool)

(assert (=> b!1179026 m!1087039))

(declare-fun m!1087041 () Bool)

(assert (=> b!1179026 m!1087041))

(declare-fun m!1087043 () Bool)

(assert (=> b!1179026 m!1087043))

(declare-fun m!1087045 () Bool)

(assert (=> b!1179020 m!1087045))

(declare-fun m!1087047 () Bool)

(assert (=> b!1179020 m!1087047))

(declare-fun m!1087049 () Bool)

(assert (=> b!1179025 m!1087049))

(declare-fun m!1087051 () Bool)

(assert (=> b!1179025 m!1087051))

(declare-fun m!1087053 () Bool)

(assert (=> b!1179025 m!1087053))

(assert (=> b!1179025 m!1087053))

(declare-fun m!1087055 () Bool)

(assert (=> b!1179025 m!1087055))

(declare-fun m!1087057 () Bool)

(assert (=> mapNonEmpty!46364 m!1087057))

(declare-fun m!1087059 () Bool)

(assert (=> b!1179023 m!1087059))

(declare-fun m!1087061 () Bool)

(assert (=> b!1179024 m!1087061))

(declare-fun m!1087063 () Bool)

(assert (=> b!1179031 m!1087063))

(declare-fun m!1087065 () Bool)

(assert (=> b!1179031 m!1087065))

(declare-fun m!1087067 () Bool)

(assert (=> b!1179029 m!1087067))

(declare-fun m!1087069 () Bool)

(assert (=> b!1179030 m!1087069))

(declare-fun m!1087071 () Bool)

(assert (=> b!1179030 m!1087071))

(declare-fun m!1087073 () Bool)

(assert (=> b!1179030 m!1087073))

(declare-fun m!1087075 () Bool)

(assert (=> b!1179030 m!1087075))

(declare-fun m!1087077 () Bool)

(assert (=> b!1179030 m!1087077))

(declare-fun m!1087079 () Bool)

(assert (=> b!1179016 m!1087079))

(declare-fun m!1087081 () Bool)

(assert (=> b!1179015 m!1087081))

(declare-fun m!1087083 () Bool)

(assert (=> b!1179019 m!1087083))

(declare-fun m!1087085 () Bool)

(assert (=> b!1179028 m!1087085))

(declare-fun m!1087087 () Bool)

(assert (=> b!1179028 m!1087087))

(declare-fun m!1087089 () Bool)

(assert (=> b!1179028 m!1087089))

(declare-fun m!1087091 () Bool)

(assert (=> b!1179028 m!1087091))

(assert (=> b!1179028 m!1087049))

(declare-fun m!1087093 () Bool)

(assert (=> b!1179028 m!1087093))

(assert (=> b!1179028 m!1087049))

(declare-fun m!1087095 () Bool)

(assert (=> b!1179013 m!1087095))

(declare-fun m!1087097 () Bool)

(assert (=> b!1179017 m!1087097))

(assert (=> b!1179018 m!1087049))

(declare-fun m!1087099 () Bool)

(assert (=> start!99618 m!1087099))

(declare-fun m!1087101 () Bool)

(assert (=> start!99618 m!1087101))

(check-sat (not b!1179025) (not b!1179026) b_and!41205 tp_is_empty!29691 (not b!1179020) (not b!1179031) (not start!99618) (not b_lambda!20323) (not b!1179013) (not mapNonEmpty!46364) (not b!1179028) (not b!1179017) (not b!1179016) (not b!1179030) (not b_next!25161) (not b!1179019) (not b!1179015) (not b!1179029) (not b!1179023))
(check-sat b_and!41205 (not b_next!25161))
