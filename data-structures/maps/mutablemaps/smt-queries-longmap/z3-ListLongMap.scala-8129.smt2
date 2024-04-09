; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99678 () Bool)

(assert start!99678)

(declare-fun b_free!25221 () Bool)

(declare-fun b_next!25221 () Bool)

(assert (=> start!99678 (= b_free!25221 (not b_next!25221))))

(declare-fun tp!88378 () Bool)

(declare-fun b_and!41323 () Bool)

(assert (=> start!99678 (= tp!88378 b_and!41323)))

(declare-fun b!1181029 () Bool)

(declare-fun e!671491 () Bool)

(declare-fun e!671498 () Bool)

(declare-fun mapRes!46454 () Bool)

(assert (=> b!1181029 (= e!671491 (and e!671498 mapRes!46454))))

(declare-fun condMapEmpty!46454 () Bool)

(declare-datatypes ((V!44795 0))(
  ( (V!44796 (val!14932 Int)) )
))
(declare-datatypes ((ValueCell!14166 0))(
  ( (ValueCellFull!14166 (v!17571 V!44795)) (EmptyCell!14166) )
))
(declare-datatypes ((array!76270 0))(
  ( (array!76271 (arr!36781 (Array (_ BitVec 32) ValueCell!14166)) (size!37318 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76270)

(declare-fun mapDefault!46454 () ValueCell!14166)

(assert (=> b!1181029 (= condMapEmpty!46454 (= (arr!36781 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14166)) mapDefault!46454)))))

(declare-fun b!1181030 () Bool)

(declare-fun e!671497 () Bool)

(declare-datatypes ((tuple2!19248 0))(
  ( (tuple2!19249 (_1!9634 (_ BitVec 64)) (_2!9634 V!44795)) )
))
(declare-datatypes ((List!26008 0))(
  ( (Nil!26005) (Cons!26004 (h!27213 tuple2!19248) (t!38228 List!26008)) )
))
(declare-datatypes ((ListLongMap!17229 0))(
  ( (ListLongMap!17230 (toList!8630 List!26008)) )
))
(declare-fun lt!534090 () ListLongMap!17229)

(declare-fun lt!534096 () ListLongMap!17229)

(assert (=> b!1181030 (= e!671497 (= lt!534090 lt!534096))))

(declare-fun b!1181031 () Bool)

(declare-datatypes ((Unit!38974 0))(
  ( (Unit!38975) )
))
(declare-fun e!671500 () Unit!38974)

(declare-fun Unit!38976 () Unit!38974)

(assert (=> b!1181031 (= e!671500 Unit!38976)))

(declare-fun b!1181032 () Bool)

(declare-fun e!671488 () Bool)

(declare-fun e!671492 () Bool)

(assert (=> b!1181032 (= e!671488 e!671492)))

(declare-fun res!784883 () Bool)

(assert (=> b!1181032 (=> res!784883 e!671492)))

(declare-datatypes ((array!76272 0))(
  ( (array!76273 (arr!36782 (Array (_ BitVec 32) (_ BitVec 64))) (size!37319 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76272)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1181032 (= res!784883 (not (= (select (arr!36782 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1181034 () Bool)

(declare-fun res!784880 () Bool)

(declare-fun e!671493 () Bool)

(assert (=> b!1181034 (=> (not res!784880) (not e!671493))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181034 (= res!784880 (validMask!0 mask!1564))))

(declare-fun b!1181035 () Bool)

(declare-fun e!671490 () Bool)

(declare-fun e!671499 () Bool)

(assert (=> b!1181035 (= e!671490 e!671499)))

(declare-fun res!784882 () Bool)

(assert (=> b!1181035 (=> res!784882 e!671499)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181035 (= res!784882 (not (validKeyInArray!0 (select (arr!36782 _keys!1208) from!1455))))))

(assert (=> b!1181035 (= lt!534096 lt!534090)))

(declare-fun lt!534099 () ListLongMap!17229)

(declare-fun -!1619 (ListLongMap!17229 (_ BitVec 64)) ListLongMap!17229)

(assert (=> b!1181035 (= lt!534090 (-!1619 lt!534099 k0!934))))

(declare-fun zeroValue!944 () V!44795)

(declare-fun lt!534093 () array!76270)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!534091 () array!76272)

(declare-fun minValue!944 () V!44795)

(declare-fun getCurrentListMapNoExtraKeys!5055 (array!76272 array!76270 (_ BitVec 32) (_ BitVec 32) V!44795 V!44795 (_ BitVec 32) Int) ListLongMap!17229)

(assert (=> b!1181035 (= lt!534096 (getCurrentListMapNoExtraKeys!5055 lt!534091 lt!534093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181035 (= lt!534099 (getCurrentListMapNoExtraKeys!5055 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!534092 () Unit!38974)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!843 (array!76272 array!76270 (_ BitVec 32) (_ BitVec 32) V!44795 V!44795 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38974)

(assert (=> b!1181035 (= lt!534092 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!843 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181036 () Bool)

(declare-fun res!784887 () Bool)

(assert (=> b!1181036 (=> (not res!784887) (not e!671493))))

(assert (=> b!1181036 (= res!784887 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37319 _keys!1208))))))

(declare-fun b!1181037 () Bool)

(assert (=> b!1181037 (= e!671499 true)))

(assert (=> b!1181037 e!671497))

(declare-fun res!784885 () Bool)

(assert (=> b!1181037 (=> (not res!784885) (not e!671497))))

(assert (=> b!1181037 (= res!784885 (not (= (select (arr!36782 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!534097 () Unit!38974)

(assert (=> b!1181037 (= lt!534097 e!671500)))

(declare-fun c!116903 () Bool)

(assert (=> b!1181037 (= c!116903 (= (select (arr!36782 _keys!1208) from!1455) k0!934))))

(assert (=> b!1181037 e!671488))

(declare-fun res!784875 () Bool)

(assert (=> b!1181037 (=> (not res!784875) (not e!671488))))

(declare-fun lt!534089 () ListLongMap!17229)

(declare-fun lt!534086 () tuple2!19248)

(declare-fun +!3849 (ListLongMap!17229 tuple2!19248) ListLongMap!17229)

(assert (=> b!1181037 (= res!784875 (= lt!534089 (+!3849 lt!534090 lt!534086)))))

(declare-fun lt!534085 () V!44795)

(declare-fun get!18846 (ValueCell!14166 V!44795) V!44795)

(assert (=> b!1181037 (= lt!534086 (tuple2!19249 (select (arr!36782 _keys!1208) from!1455) (get!18846 (select (arr!36781 _values!996) from!1455) lt!534085)))))

(declare-fun b!1181038 () Bool)

(declare-fun res!784877 () Bool)

(assert (=> b!1181038 (=> (not res!784877) (not e!671493))))

(assert (=> b!1181038 (= res!784877 (validKeyInArray!0 k0!934))))

(declare-fun b!1181039 () Bool)

(declare-fun e!671496 () Bool)

(assert (=> b!1181039 (= e!671496 e!671490)))

(declare-fun res!784891 () Bool)

(assert (=> b!1181039 (=> res!784891 e!671490)))

(assert (=> b!1181039 (= res!784891 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1181039 (= lt!534089 (getCurrentListMapNoExtraKeys!5055 lt!534091 lt!534093 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1181039 (= lt!534093 (array!76271 (store (arr!36781 _values!996) i!673 (ValueCellFull!14166 lt!534085)) (size!37318 _values!996)))))

(declare-fun dynLambda!3023 (Int (_ BitVec 64)) V!44795)

(assert (=> b!1181039 (= lt!534085 (dynLambda!3023 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!534087 () ListLongMap!17229)

(assert (=> b!1181039 (= lt!534087 (getCurrentListMapNoExtraKeys!5055 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181040 () Bool)

(declare-fun res!784876 () Bool)

(assert (=> b!1181040 (=> (not res!784876) (not e!671493))))

(assert (=> b!1181040 (= res!784876 (= (select (arr!36782 _keys!1208) i!673) k0!934))))

(declare-fun b!1181041 () Bool)

(declare-fun tp_is_empty!29751 () Bool)

(assert (=> b!1181041 (= e!671498 tp_is_empty!29751)))

(declare-fun b!1181042 () Bool)

(declare-fun Unit!38977 () Unit!38974)

(assert (=> b!1181042 (= e!671500 Unit!38977)))

(declare-fun lt!534094 () Unit!38974)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76272 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38974)

(assert (=> b!1181042 (= lt!534094 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181042 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534095 () Unit!38974)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76272 (_ BitVec 32) (_ BitVec 32)) Unit!38974)

(assert (=> b!1181042 (= lt!534095 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26009 0))(
  ( (Nil!26006) (Cons!26005 (h!27214 (_ BitVec 64)) (t!38229 List!26009)) )
))
(declare-fun arrayNoDuplicates!0 (array!76272 (_ BitVec 32) List!26009) Bool)

(assert (=> b!1181042 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26006)))

(declare-fun lt!534088 () Unit!38974)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76272 (_ BitVec 64) (_ BitVec 32) List!26009) Unit!38974)

(assert (=> b!1181042 (= lt!534088 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26006))))

(assert (=> b!1181042 false))

(declare-fun mapIsEmpty!46454 () Bool)

(assert (=> mapIsEmpty!46454 mapRes!46454))

(declare-fun b!1181043 () Bool)

(declare-fun res!784878 () Bool)

(assert (=> b!1181043 (=> (not res!784878) (not e!671493))))

(assert (=> b!1181043 (= res!784878 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26006))))

(declare-fun b!1181044 () Bool)

(declare-fun res!784881 () Bool)

(assert (=> b!1181044 (=> (not res!784881) (not e!671493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76272 (_ BitVec 32)) Bool)

(assert (=> b!1181044 (= res!784881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181045 () Bool)

(declare-fun e!671494 () Bool)

(assert (=> b!1181045 (= e!671494 (not e!671496))))

(declare-fun res!784890 () Bool)

(assert (=> b!1181045 (=> res!784890 e!671496)))

(assert (=> b!1181045 (= res!784890 (bvsgt from!1455 i!673))))

(assert (=> b!1181045 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!534098 () Unit!38974)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76272 (_ BitVec 64) (_ BitVec 32)) Unit!38974)

(assert (=> b!1181045 (= lt!534098 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181033 () Bool)

(assert (=> b!1181033 (= e!671492 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun res!784879 () Bool)

(assert (=> start!99678 (=> (not res!784879) (not e!671493))))

(assert (=> start!99678 (= res!784879 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37319 _keys!1208))))))

(assert (=> start!99678 e!671493))

(assert (=> start!99678 tp_is_empty!29751))

(declare-fun array_inv!27962 (array!76272) Bool)

(assert (=> start!99678 (array_inv!27962 _keys!1208)))

(assert (=> start!99678 true))

(assert (=> start!99678 tp!88378))

(declare-fun array_inv!27963 (array!76270) Bool)

(assert (=> start!99678 (and (array_inv!27963 _values!996) e!671491)))

(declare-fun b!1181046 () Bool)

(assert (=> b!1181046 (= e!671493 e!671494)))

(declare-fun res!784884 () Bool)

(assert (=> b!1181046 (=> (not res!784884) (not e!671494))))

(assert (=> b!1181046 (= res!784884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534091 mask!1564))))

(assert (=> b!1181046 (= lt!534091 (array!76273 (store (arr!36782 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37319 _keys!1208)))))

(declare-fun mapNonEmpty!46454 () Bool)

(declare-fun tp!88377 () Bool)

(declare-fun e!671495 () Bool)

(assert (=> mapNonEmpty!46454 (= mapRes!46454 (and tp!88377 e!671495))))

(declare-fun mapRest!46454 () (Array (_ BitVec 32) ValueCell!14166))

(declare-fun mapValue!46454 () ValueCell!14166)

(declare-fun mapKey!46454 () (_ BitVec 32))

(assert (=> mapNonEmpty!46454 (= (arr!36781 _values!996) (store mapRest!46454 mapKey!46454 mapValue!46454))))

(declare-fun b!1181047 () Bool)

(declare-fun res!784889 () Bool)

(assert (=> b!1181047 (=> (not res!784889) (not e!671494))))

(assert (=> b!1181047 (= res!784889 (arrayNoDuplicates!0 lt!534091 #b00000000000000000000000000000000 Nil!26006))))

(declare-fun b!1181048 () Bool)

(assert (=> b!1181048 (= e!671495 tp_is_empty!29751)))

(declare-fun b!1181049 () Bool)

(declare-fun res!784886 () Bool)

(assert (=> b!1181049 (=> (not res!784886) (not e!671493))))

(assert (=> b!1181049 (= res!784886 (and (= (size!37318 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37319 _keys!1208) (size!37318 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181050 () Bool)

(declare-fun res!784888 () Bool)

(assert (=> b!1181050 (=> (not res!784888) (not e!671497))))

(assert (=> b!1181050 (= res!784888 (= lt!534087 (+!3849 lt!534099 lt!534086)))))

(assert (= (and start!99678 res!784879) b!1181034))

(assert (= (and b!1181034 res!784880) b!1181049))

(assert (= (and b!1181049 res!784886) b!1181044))

(assert (= (and b!1181044 res!784881) b!1181043))

(assert (= (and b!1181043 res!784878) b!1181036))

(assert (= (and b!1181036 res!784887) b!1181038))

(assert (= (and b!1181038 res!784877) b!1181040))

(assert (= (and b!1181040 res!784876) b!1181046))

(assert (= (and b!1181046 res!784884) b!1181047))

(assert (= (and b!1181047 res!784889) b!1181045))

(assert (= (and b!1181045 (not res!784890)) b!1181039))

(assert (= (and b!1181039 (not res!784891)) b!1181035))

(assert (= (and b!1181035 (not res!784882)) b!1181037))

(assert (= (and b!1181037 res!784875) b!1181032))

(assert (= (and b!1181032 (not res!784883)) b!1181033))

(assert (= (and b!1181037 c!116903) b!1181042))

(assert (= (and b!1181037 (not c!116903)) b!1181031))

(assert (= (and b!1181037 res!784885) b!1181050))

(assert (= (and b!1181050 res!784888) b!1181030))

(assert (= (and b!1181029 condMapEmpty!46454) mapIsEmpty!46454))

(assert (= (and b!1181029 (not condMapEmpty!46454)) mapNonEmpty!46454))

(get-info :version)

(assert (= (and mapNonEmpty!46454 ((_ is ValueCellFull!14166) mapValue!46454)) b!1181048))

(assert (= (and b!1181029 ((_ is ValueCellFull!14166) mapDefault!46454)) b!1181041))

(assert (= start!99678 b!1181029))

(declare-fun b_lambda!20383 () Bool)

(assert (=> (not b_lambda!20383) (not b!1181039)))

(declare-fun t!38227 () Bool)

(declare-fun tb!10041 () Bool)

(assert (=> (and start!99678 (= defaultEntry!1004 defaultEntry!1004) t!38227) tb!10041))

(declare-fun result!20641 () Bool)

(assert (=> tb!10041 (= result!20641 tp_is_empty!29751)))

(assert (=> b!1181039 t!38227))

(declare-fun b_and!41325 () Bool)

(assert (= b_and!41323 (and (=> t!38227 result!20641) b_and!41325)))

(declare-fun m!1089017 () Bool)

(assert (=> start!99678 m!1089017))

(declare-fun m!1089019 () Bool)

(assert (=> start!99678 m!1089019))

(declare-fun m!1089021 () Bool)

(assert (=> b!1181039 m!1089021))

(declare-fun m!1089023 () Bool)

(assert (=> b!1181039 m!1089023))

(declare-fun m!1089025 () Bool)

(assert (=> b!1181039 m!1089025))

(declare-fun m!1089027 () Bool)

(assert (=> b!1181039 m!1089027))

(declare-fun m!1089029 () Bool)

(assert (=> b!1181047 m!1089029))

(declare-fun m!1089031 () Bool)

(assert (=> b!1181033 m!1089031))

(declare-fun m!1089033 () Bool)

(assert (=> b!1181032 m!1089033))

(declare-fun m!1089035 () Bool)

(assert (=> b!1181038 m!1089035))

(declare-fun m!1089037 () Bool)

(assert (=> b!1181035 m!1089037))

(declare-fun m!1089039 () Bool)

(assert (=> b!1181035 m!1089039))

(declare-fun m!1089041 () Bool)

(assert (=> b!1181035 m!1089041))

(declare-fun m!1089043 () Bool)

(assert (=> b!1181035 m!1089043))

(assert (=> b!1181035 m!1089033))

(declare-fun m!1089045 () Bool)

(assert (=> b!1181035 m!1089045))

(assert (=> b!1181035 m!1089033))

(declare-fun m!1089047 () Bool)

(assert (=> b!1181043 m!1089047))

(declare-fun m!1089049 () Bool)

(assert (=> mapNonEmpty!46454 m!1089049))

(declare-fun m!1089051 () Bool)

(assert (=> b!1181045 m!1089051))

(declare-fun m!1089053 () Bool)

(assert (=> b!1181045 m!1089053))

(declare-fun m!1089055 () Bool)

(assert (=> b!1181044 m!1089055))

(declare-fun m!1089057 () Bool)

(assert (=> b!1181046 m!1089057))

(declare-fun m!1089059 () Bool)

(assert (=> b!1181046 m!1089059))

(declare-fun m!1089061 () Bool)

(assert (=> b!1181040 m!1089061))

(declare-fun m!1089063 () Bool)

(assert (=> b!1181034 m!1089063))

(declare-fun m!1089065 () Bool)

(assert (=> b!1181050 m!1089065))

(assert (=> b!1181037 m!1089033))

(declare-fun m!1089067 () Bool)

(assert (=> b!1181037 m!1089067))

(declare-fun m!1089069 () Bool)

(assert (=> b!1181037 m!1089069))

(assert (=> b!1181037 m!1089069))

(declare-fun m!1089071 () Bool)

(assert (=> b!1181037 m!1089071))

(declare-fun m!1089073 () Bool)

(assert (=> b!1181042 m!1089073))

(declare-fun m!1089075 () Bool)

(assert (=> b!1181042 m!1089075))

(declare-fun m!1089077 () Bool)

(assert (=> b!1181042 m!1089077))

(declare-fun m!1089079 () Bool)

(assert (=> b!1181042 m!1089079))

(declare-fun m!1089081 () Bool)

(assert (=> b!1181042 m!1089081))

(check-sat (not b!1181037) b_and!41325 (not b!1181039) (not b!1181045) (not b!1181047) (not b!1181050) (not start!99678) (not b!1181043) (not b_lambda!20383) (not b!1181033) (not b!1181035) (not b!1181044) (not b!1181038) (not b!1181034) tp_is_empty!29751 (not mapNonEmpty!46454) (not b!1181042) (not b!1181046) (not b_next!25221))
(check-sat b_and!41325 (not b_next!25221))
