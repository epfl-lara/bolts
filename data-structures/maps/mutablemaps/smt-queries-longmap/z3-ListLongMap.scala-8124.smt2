; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99648 () Bool)

(assert start!99648)

(declare-fun b_free!25191 () Bool)

(declare-fun b_next!25191 () Bool)

(assert (=> start!99648 (= b_free!25191 (not b_next!25191))))

(declare-fun tp!88288 () Bool)

(declare-fun b_and!41263 () Bool)

(assert (=> start!99648 (= tp!88288 b_and!41263)))

(declare-fun b!1180009 () Bool)

(declare-fun e!670908 () Bool)

(declare-fun tp_is_empty!29721 () Bool)

(assert (=> b!1180009 (= e!670908 tp_is_empty!29721)))

(declare-fun b!1180010 () Bool)

(declare-fun res!784121 () Bool)

(declare-fun e!670914 () Bool)

(assert (=> b!1180010 (=> (not res!784121) (not e!670914))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180010 (= res!784121 (validMask!0 mask!1564))))

(declare-fun b!1180011 () Bool)

(declare-fun res!784118 () Bool)

(declare-fun e!670913 () Bool)

(assert (=> b!1180011 (=> (not res!784118) (not e!670913))))

(declare-datatypes ((V!44755 0))(
  ( (V!44756 (val!14917 Int)) )
))
(declare-datatypes ((tuple2!19222 0))(
  ( (tuple2!19223 (_1!9621 (_ BitVec 64)) (_2!9621 V!44755)) )
))
(declare-fun lt!533422 () tuple2!19222)

(declare-datatypes ((List!25985 0))(
  ( (Nil!25982) (Cons!25981 (h!27190 tuple2!19222) (t!38175 List!25985)) )
))
(declare-datatypes ((ListLongMap!17203 0))(
  ( (ListLongMap!17204 (toList!8617 List!25985)) )
))
(declare-fun lt!533420 () ListLongMap!17203)

(declare-fun lt!533423 () ListLongMap!17203)

(declare-fun +!3837 (ListLongMap!17203 tuple2!19222) ListLongMap!17203)

(assert (=> b!1180011 (= res!784118 (= lt!533420 (+!3837 lt!533423 lt!533422)))))

(declare-fun b!1180012 () Bool)

(declare-fun lt!533413 () ListLongMap!17203)

(declare-fun lt!533417 () ListLongMap!17203)

(assert (=> b!1180012 (= e!670913 (= lt!533413 lt!533417))))

(declare-fun b!1180013 () Bool)

(declare-fun e!670906 () Bool)

(declare-fun e!670909 () Bool)

(assert (=> b!1180013 (= e!670906 e!670909)))

(declare-fun res!784120 () Bool)

(assert (=> b!1180013 (=> res!784120 e!670909)))

(declare-datatypes ((array!76214 0))(
  ( (array!76215 (arr!36753 (Array (_ BitVec 32) (_ BitVec 64))) (size!37290 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76214)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180013 (= res!784120 (not (validKeyInArray!0 (select (arr!36753 _keys!1208) from!1455))))))

(assert (=> b!1180013 (= lt!533417 lt!533413)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1610 (ListLongMap!17203 (_ BitVec 64)) ListLongMap!17203)

(assert (=> b!1180013 (= lt!533413 (-!1610 lt!533423 k0!934))))

(declare-fun zeroValue!944 () V!44755)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!533418 () array!76214)

(declare-fun minValue!944 () V!44755)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14151 0))(
  ( (ValueCellFull!14151 (v!17556 V!44755)) (EmptyCell!14151) )
))
(declare-datatypes ((array!76216 0))(
  ( (array!76217 (arr!36754 (Array (_ BitVec 32) ValueCell!14151)) (size!37291 (_ BitVec 32))) )
))
(declare-fun lt!533416 () array!76216)

(declare-fun getCurrentListMapNoExtraKeys!5045 (array!76214 array!76216 (_ BitVec 32) (_ BitVec 32) V!44755 V!44755 (_ BitVec 32) Int) ListLongMap!17203)

(assert (=> b!1180013 (= lt!533417 (getCurrentListMapNoExtraKeys!5045 lt!533418 lt!533416 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76216)

(assert (=> b!1180013 (= lt!533423 (getCurrentListMapNoExtraKeys!5045 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38934 0))(
  ( (Unit!38935) )
))
(declare-fun lt!533421 () Unit!38934)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!834 (array!76214 array!76216 (_ BitVec 32) (_ BitVec 32) V!44755 V!44755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38934)

(assert (=> b!1180013 (= lt!533421 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!834 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180014 () Bool)

(assert (=> b!1180014 (= e!670909 true)))

(assert (=> b!1180014 e!670913))

(declare-fun res!784117 () Bool)

(assert (=> b!1180014 (=> (not res!784117) (not e!670913))))

(assert (=> b!1180014 (= res!784117 (not (= (select (arr!36753 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!533411 () Unit!38934)

(declare-fun e!670910 () Unit!38934)

(assert (=> b!1180014 (= lt!533411 e!670910)))

(declare-fun c!116858 () Bool)

(assert (=> b!1180014 (= c!116858 (= (select (arr!36753 _keys!1208) from!1455) k0!934))))

(declare-fun e!670911 () Bool)

(assert (=> b!1180014 e!670911))

(declare-fun res!784111 () Bool)

(assert (=> b!1180014 (=> (not res!784111) (not e!670911))))

(declare-fun lt!533424 () ListLongMap!17203)

(assert (=> b!1180014 (= res!784111 (= lt!533424 (+!3837 lt!533413 lt!533422)))))

(declare-fun lt!533414 () V!44755)

(declare-fun get!18826 (ValueCell!14151 V!44755) V!44755)

(assert (=> b!1180014 (= lt!533422 (tuple2!19223 (select (arr!36753 _keys!1208) from!1455) (get!18826 (select (arr!36754 _values!996) from!1455) lt!533414)))))

(declare-fun b!1180015 () Bool)

(declare-fun res!784124 () Bool)

(assert (=> b!1180015 (=> (not res!784124) (not e!670914))))

(assert (=> b!1180015 (= res!784124 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37290 _keys!1208))))))

(declare-fun b!1180016 () Bool)

(declare-fun e!670915 () Bool)

(assert (=> b!1180016 (= e!670915 e!670906)))

(declare-fun res!784122 () Bool)

(assert (=> b!1180016 (=> res!784122 e!670906)))

(assert (=> b!1180016 (= res!784122 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1180016 (= lt!533424 (getCurrentListMapNoExtraKeys!5045 lt!533418 lt!533416 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1180016 (= lt!533416 (array!76217 (store (arr!36754 _values!996) i!673 (ValueCellFull!14151 lt!533414)) (size!37291 _values!996)))))

(declare-fun dynLambda!3017 (Int (_ BitVec 64)) V!44755)

(assert (=> b!1180016 (= lt!533414 (dynLambda!3017 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1180016 (= lt!533420 (getCurrentListMapNoExtraKeys!5045 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1180017 () Bool)

(declare-fun e!670912 () Bool)

(declare-fun e!670904 () Bool)

(declare-fun mapRes!46409 () Bool)

(assert (=> b!1180017 (= e!670912 (and e!670904 mapRes!46409))))

(declare-fun condMapEmpty!46409 () Bool)

(declare-fun mapDefault!46409 () ValueCell!14151)

(assert (=> b!1180017 (= condMapEmpty!46409 (= (arr!36754 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14151)) mapDefault!46409)))))

(declare-fun res!784123 () Bool)

(assert (=> start!99648 (=> (not res!784123) (not e!670914))))

(assert (=> start!99648 (= res!784123 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37290 _keys!1208))))))

(assert (=> start!99648 e!670914))

(assert (=> start!99648 tp_is_empty!29721))

(declare-fun array_inv!27948 (array!76214) Bool)

(assert (=> start!99648 (array_inv!27948 _keys!1208)))

(assert (=> start!99648 true))

(assert (=> start!99648 tp!88288))

(declare-fun array_inv!27949 (array!76216) Bool)

(assert (=> start!99648 (and (array_inv!27949 _values!996) e!670912)))

(declare-fun b!1180018 () Bool)

(declare-fun Unit!38936 () Unit!38934)

(assert (=> b!1180018 (= e!670910 Unit!38936)))

(declare-fun b!1180019 () Bool)

(declare-fun e!670903 () Bool)

(assert (=> b!1180019 (= e!670911 e!670903)))

(declare-fun res!784112 () Bool)

(assert (=> b!1180019 (=> res!784112 e!670903)))

(assert (=> b!1180019 (= res!784112 (not (= (select (arr!36753 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1180020 () Bool)

(declare-fun Unit!38937 () Unit!38934)

(assert (=> b!1180020 (= e!670910 Unit!38937)))

(declare-fun lt!533415 () Unit!38934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76214 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38934)

(assert (=> b!1180020 (= lt!533415 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76214 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180020 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533419 () Unit!38934)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76214 (_ BitVec 32) (_ BitVec 32)) Unit!38934)

(assert (=> b!1180020 (= lt!533419 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25986 0))(
  ( (Nil!25983) (Cons!25982 (h!27191 (_ BitVec 64)) (t!38176 List!25986)) )
))
(declare-fun arrayNoDuplicates!0 (array!76214 (_ BitVec 32) List!25986) Bool)

(assert (=> b!1180020 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25983)))

(declare-fun lt!533412 () Unit!38934)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76214 (_ BitVec 64) (_ BitVec 32) List!25986) Unit!38934)

(assert (=> b!1180020 (= lt!533412 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25983))))

(assert (=> b!1180020 false))

(declare-fun mapIsEmpty!46409 () Bool)

(assert (=> mapIsEmpty!46409 mapRes!46409))

(declare-fun b!1180021 () Bool)

(declare-fun res!784119 () Bool)

(assert (=> b!1180021 (=> (not res!784119) (not e!670914))))

(assert (=> b!1180021 (= res!784119 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!46409 () Bool)

(declare-fun tp!88287 () Bool)

(assert (=> mapNonEmpty!46409 (= mapRes!46409 (and tp!88287 e!670908))))

(declare-fun mapRest!46409 () (Array (_ BitVec 32) ValueCell!14151))

(declare-fun mapKey!46409 () (_ BitVec 32))

(declare-fun mapValue!46409 () ValueCell!14151)

(assert (=> mapNonEmpty!46409 (= (arr!36754 _values!996) (store mapRest!46409 mapKey!46409 mapValue!46409))))

(declare-fun b!1180022 () Bool)

(declare-fun e!670907 () Bool)

(assert (=> b!1180022 (= e!670907 (not e!670915))))

(declare-fun res!784114 () Bool)

(assert (=> b!1180022 (=> res!784114 e!670915)))

(assert (=> b!1180022 (= res!784114 (bvsgt from!1455 i!673))))

(assert (=> b!1180022 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533410 () Unit!38934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76214 (_ BitVec 64) (_ BitVec 32)) Unit!38934)

(assert (=> b!1180022 (= lt!533410 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180023 () Bool)

(declare-fun res!784115 () Bool)

(assert (=> b!1180023 (=> (not res!784115) (not e!670914))))

(assert (=> b!1180023 (= res!784115 (= (select (arr!36753 _keys!1208) i!673) k0!934))))

(declare-fun b!1180024 () Bool)

(declare-fun res!784113 () Bool)

(assert (=> b!1180024 (=> (not res!784113) (not e!670914))))

(assert (=> b!1180024 (= res!784113 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25983))))

(declare-fun b!1180025 () Bool)

(assert (=> b!1180025 (= e!670914 e!670907)))

(declare-fun res!784125 () Bool)

(assert (=> b!1180025 (=> (not res!784125) (not e!670907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76214 (_ BitVec 32)) Bool)

(assert (=> b!1180025 (= res!784125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533418 mask!1564))))

(assert (=> b!1180025 (= lt!533418 (array!76215 (store (arr!36753 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37290 _keys!1208)))))

(declare-fun b!1180026 () Bool)

(declare-fun res!784116 () Bool)

(assert (=> b!1180026 (=> (not res!784116) (not e!670914))))

(assert (=> b!1180026 (= res!784116 (and (= (size!37291 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37290 _keys!1208) (size!37291 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180027 () Bool)

(assert (=> b!1180027 (= e!670903 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180028 () Bool)

(assert (=> b!1180028 (= e!670904 tp_is_empty!29721)))

(declare-fun b!1180029 () Bool)

(declare-fun res!784126 () Bool)

(assert (=> b!1180029 (=> (not res!784126) (not e!670914))))

(assert (=> b!1180029 (= res!784126 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180030 () Bool)

(declare-fun res!784110 () Bool)

(assert (=> b!1180030 (=> (not res!784110) (not e!670907))))

(assert (=> b!1180030 (= res!784110 (arrayNoDuplicates!0 lt!533418 #b00000000000000000000000000000000 Nil!25983))))

(assert (= (and start!99648 res!784123) b!1180010))

(assert (= (and b!1180010 res!784121) b!1180026))

(assert (= (and b!1180026 res!784116) b!1180029))

(assert (= (and b!1180029 res!784126) b!1180024))

(assert (= (and b!1180024 res!784113) b!1180015))

(assert (= (and b!1180015 res!784124) b!1180021))

(assert (= (and b!1180021 res!784119) b!1180023))

(assert (= (and b!1180023 res!784115) b!1180025))

(assert (= (and b!1180025 res!784125) b!1180030))

(assert (= (and b!1180030 res!784110) b!1180022))

(assert (= (and b!1180022 (not res!784114)) b!1180016))

(assert (= (and b!1180016 (not res!784122)) b!1180013))

(assert (= (and b!1180013 (not res!784120)) b!1180014))

(assert (= (and b!1180014 res!784111) b!1180019))

(assert (= (and b!1180019 (not res!784112)) b!1180027))

(assert (= (and b!1180014 c!116858) b!1180020))

(assert (= (and b!1180014 (not c!116858)) b!1180018))

(assert (= (and b!1180014 res!784117) b!1180011))

(assert (= (and b!1180011 res!784118) b!1180012))

(assert (= (and b!1180017 condMapEmpty!46409) mapIsEmpty!46409))

(assert (= (and b!1180017 (not condMapEmpty!46409)) mapNonEmpty!46409))

(get-info :version)

(assert (= (and mapNonEmpty!46409 ((_ is ValueCellFull!14151) mapValue!46409)) b!1180009))

(assert (= (and b!1180017 ((_ is ValueCellFull!14151) mapDefault!46409)) b!1180028))

(assert (= start!99648 b!1180017))

(declare-fun b_lambda!20353 () Bool)

(assert (=> (not b_lambda!20353) (not b!1180016)))

(declare-fun t!38174 () Bool)

(declare-fun tb!10011 () Bool)

(assert (=> (and start!99648 (= defaultEntry!1004 defaultEntry!1004) t!38174) tb!10011))

(declare-fun result!20581 () Bool)

(assert (=> tb!10011 (= result!20581 tp_is_empty!29721)))

(assert (=> b!1180016 t!38174))

(declare-fun b_and!41265 () Bool)

(assert (= b_and!41263 (and (=> t!38174 result!20581) b_and!41265)))

(declare-fun m!1088027 () Bool)

(assert (=> b!1180029 m!1088027))

(declare-fun m!1088029 () Bool)

(assert (=> b!1180025 m!1088029))

(declare-fun m!1088031 () Bool)

(assert (=> b!1180025 m!1088031))

(declare-fun m!1088033 () Bool)

(assert (=> b!1180021 m!1088033))

(declare-fun m!1088035 () Bool)

(assert (=> b!1180022 m!1088035))

(declare-fun m!1088037 () Bool)

(assert (=> b!1180022 m!1088037))

(declare-fun m!1088039 () Bool)

(assert (=> b!1180013 m!1088039))

(declare-fun m!1088041 () Bool)

(assert (=> b!1180013 m!1088041))

(declare-fun m!1088043 () Bool)

(assert (=> b!1180013 m!1088043))

(declare-fun m!1088045 () Bool)

(assert (=> b!1180013 m!1088045))

(assert (=> b!1180013 m!1088043))

(declare-fun m!1088047 () Bool)

(assert (=> b!1180013 m!1088047))

(declare-fun m!1088049 () Bool)

(assert (=> b!1180013 m!1088049))

(declare-fun m!1088051 () Bool)

(assert (=> b!1180030 m!1088051))

(declare-fun m!1088053 () Bool)

(assert (=> b!1180024 m!1088053))

(declare-fun m!1088055 () Bool)

(assert (=> b!1180027 m!1088055))

(assert (=> b!1180019 m!1088043))

(declare-fun m!1088057 () Bool)

(assert (=> b!1180011 m!1088057))

(declare-fun m!1088059 () Bool)

(assert (=> b!1180020 m!1088059))

(declare-fun m!1088061 () Bool)

(assert (=> b!1180020 m!1088061))

(declare-fun m!1088063 () Bool)

(assert (=> b!1180020 m!1088063))

(declare-fun m!1088065 () Bool)

(assert (=> b!1180020 m!1088065))

(declare-fun m!1088067 () Bool)

(assert (=> b!1180020 m!1088067))

(declare-fun m!1088069 () Bool)

(assert (=> mapNonEmpty!46409 m!1088069))

(declare-fun m!1088071 () Bool)

(assert (=> b!1180010 m!1088071))

(assert (=> b!1180014 m!1088043))

(declare-fun m!1088073 () Bool)

(assert (=> b!1180014 m!1088073))

(declare-fun m!1088075 () Bool)

(assert (=> b!1180014 m!1088075))

(assert (=> b!1180014 m!1088075))

(declare-fun m!1088077 () Bool)

(assert (=> b!1180014 m!1088077))

(declare-fun m!1088079 () Bool)

(assert (=> b!1180016 m!1088079))

(declare-fun m!1088081 () Bool)

(assert (=> b!1180016 m!1088081))

(declare-fun m!1088083 () Bool)

(assert (=> b!1180016 m!1088083))

(declare-fun m!1088085 () Bool)

(assert (=> b!1180016 m!1088085))

(declare-fun m!1088087 () Bool)

(assert (=> start!99648 m!1088087))

(declare-fun m!1088089 () Bool)

(assert (=> start!99648 m!1088089))

(declare-fun m!1088091 () Bool)

(assert (=> b!1180023 m!1088091))

(check-sat (not b!1180022) (not b!1180027) (not b_next!25191) (not b!1180014) (not mapNonEmpty!46409) (not b!1180030) (not start!99648) (not b!1180013) (not b!1180025) tp_is_empty!29721 (not b!1180021) (not b!1180029) (not b!1180010) (not b!1180024) (not b_lambda!20353) b_and!41265 (not b!1180016) (not b!1180020) (not b!1180011))
(check-sat b_and!41265 (not b_next!25191))
