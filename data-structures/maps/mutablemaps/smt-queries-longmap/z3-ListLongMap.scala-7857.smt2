; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97924 () Bool)

(assert start!97924)

(declare-fun b_free!23589 () Bool)

(declare-fun b_next!23589 () Bool)

(assert (=> start!97924 (= b_free!23589 (not b_next!23589))))

(declare-fun tp!83472 () Bool)

(declare-fun b_and!37983 () Bool)

(assert (=> start!97924 (= tp!83472 b_and!37983)))

(declare-fun b!1120925 () Bool)

(declare-fun res!748918 () Bool)

(declare-fun e!638292 () Bool)

(assert (=> b!1120925 (=> (not res!748918) (not e!638292))))

(declare-datatypes ((array!73064 0))(
  ( (array!73065 (arr!35181 (Array (_ BitVec 32) (_ BitVec 64))) (size!35718 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73064)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1120925 (= res!748918 (= (select (arr!35181 _keys!1208) i!673) k0!934))))

(declare-fun res!748919 () Bool)

(assert (=> start!97924 (=> (not res!748919) (not e!638292))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97924 (= res!748919 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35718 _keys!1208))))))

(assert (=> start!97924 e!638292))

(declare-fun tp_is_empty!28119 () Bool)

(assert (=> start!97924 tp_is_empty!28119))

(declare-fun array_inv!26890 (array!73064) Bool)

(assert (=> start!97924 (array_inv!26890 _keys!1208)))

(assert (=> start!97924 true))

(assert (=> start!97924 tp!83472))

(declare-datatypes ((V!42619 0))(
  ( (V!42620 (val!14116 Int)) )
))
(declare-datatypes ((ValueCell!13350 0))(
  ( (ValueCellFull!13350 (v!16750 V!42619)) (EmptyCell!13350) )
))
(declare-datatypes ((array!73066 0))(
  ( (array!73067 (arr!35182 (Array (_ BitVec 32) ValueCell!13350)) (size!35719 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73066)

(declare-fun e!638294 () Bool)

(declare-fun array_inv!26891 (array!73066) Bool)

(assert (=> start!97924 (and (array_inv!26891 _values!996) e!638294)))

(declare-fun b!1120926 () Bool)

(declare-fun e!638299 () Bool)

(assert (=> b!1120926 (= e!638299 true)))

(declare-fun e!638298 () Bool)

(assert (=> b!1120926 e!638298))

(declare-fun c!109334 () Bool)

(assert (=> b!1120926 (= c!109334 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42619)

(declare-fun zeroValue!944 () V!42619)

(declare-datatypes ((Unit!36701 0))(
  ( (Unit!36702) )
))
(declare-fun lt!498169 () Unit!36701)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!315 (array!73064 array!73066 (_ BitVec 32) (_ BitVec 32) V!42619 V!42619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36701)

(assert (=> b!1120926 (= lt!498169 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!315 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120927 () Bool)

(declare-fun res!748915 () Bool)

(assert (=> b!1120927 (=> (not res!748915) (not e!638292))))

(assert (=> b!1120927 (= res!748915 (and (= (size!35719 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35718 _keys!1208) (size!35719 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1120928 () Bool)

(declare-fun res!748923 () Bool)

(assert (=> b!1120928 (=> (not res!748923) (not e!638292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73064 (_ BitVec 32)) Bool)

(assert (=> b!1120928 (= res!748923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1120929 () Bool)

(declare-fun res!748922 () Bool)

(declare-fun e!638297 () Bool)

(assert (=> b!1120929 (=> (not res!748922) (not e!638297))))

(declare-fun lt!498174 () array!73064)

(declare-datatypes ((List!24613 0))(
  ( (Nil!24610) (Cons!24609 (h!25818 (_ BitVec 64)) (t!35201 List!24613)) )
))
(declare-fun arrayNoDuplicates!0 (array!73064 (_ BitVec 32) List!24613) Bool)

(assert (=> b!1120929 (= res!748922 (arrayNoDuplicates!0 lt!498174 #b00000000000000000000000000000000 Nil!24610))))

(declare-fun b!1120930 () Bool)

(declare-fun e!638296 () Bool)

(assert (=> b!1120930 (= e!638296 tp_is_empty!28119)))

(declare-fun b!1120931 () Bool)

(declare-fun e!638300 () Bool)

(assert (=> b!1120931 (= e!638300 e!638299)))

(declare-fun res!748916 () Bool)

(assert (=> b!1120931 (=> res!748916 e!638299)))

(assert (=> b!1120931 (= res!748916 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!17774 0))(
  ( (tuple2!17775 (_1!8897 (_ BitVec 64)) (_2!8897 V!42619)) )
))
(declare-datatypes ((List!24614 0))(
  ( (Nil!24611) (Cons!24610 (h!25819 tuple2!17774) (t!35202 List!24614)) )
))
(declare-datatypes ((ListLongMap!15755 0))(
  ( (ListLongMap!15756 (toList!7893 List!24614)) )
))
(declare-fun lt!498173 () ListLongMap!15755)

(declare-fun lt!498170 () array!73066)

(declare-fun getCurrentListMapNoExtraKeys!4354 (array!73064 array!73066 (_ BitVec 32) (_ BitVec 32) V!42619 V!42619 (_ BitVec 32) Int) ListLongMap!15755)

(assert (=> b!1120931 (= lt!498173 (getCurrentListMapNoExtraKeys!4354 lt!498174 lt!498170 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2455 (Int (_ BitVec 64)) V!42619)

(assert (=> b!1120931 (= lt!498170 (array!73067 (store (arr!35182 _values!996) i!673 (ValueCellFull!13350 (dynLambda!2455 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35719 _values!996)))))

(declare-fun lt!498171 () ListLongMap!15755)

(assert (=> b!1120931 (= lt!498171 (getCurrentListMapNoExtraKeys!4354 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!47050 () ListLongMap!15755)

(declare-fun bm!47047 () Bool)

(assert (=> bm!47047 (= call!47050 (getCurrentListMapNoExtraKeys!4354 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120932 () Bool)

(declare-fun call!47051 () ListLongMap!15755)

(declare-fun -!1061 (ListLongMap!15755 (_ BitVec 64)) ListLongMap!15755)

(assert (=> b!1120932 (= e!638298 (= call!47051 (-!1061 call!47050 k0!934)))))

(declare-fun bm!47048 () Bool)

(assert (=> bm!47048 (= call!47051 (getCurrentListMapNoExtraKeys!4354 lt!498174 lt!498170 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1120933 () Bool)

(declare-fun res!748926 () Bool)

(assert (=> b!1120933 (=> (not res!748926) (not e!638292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1120933 (= res!748926 (validKeyInArray!0 k0!934))))

(declare-fun b!1120934 () Bool)

(declare-fun e!638293 () Bool)

(assert (=> b!1120934 (= e!638293 tp_is_empty!28119)))

(declare-fun b!1120935 () Bool)

(assert (=> b!1120935 (= e!638297 (not e!638300))))

(declare-fun res!748925 () Bool)

(assert (=> b!1120935 (=> res!748925 e!638300)))

(assert (=> b!1120935 (= res!748925 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1120935 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498172 () Unit!36701)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73064 (_ BitVec 64) (_ BitVec 32)) Unit!36701)

(assert (=> b!1120935 (= lt!498172 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1120936 () Bool)

(assert (=> b!1120936 (= e!638298 (= call!47051 call!47050))))

(declare-fun mapIsEmpty!43996 () Bool)

(declare-fun mapRes!43996 () Bool)

(assert (=> mapIsEmpty!43996 mapRes!43996))

(declare-fun b!1120937 () Bool)

(declare-fun res!748924 () Bool)

(assert (=> b!1120937 (=> (not res!748924) (not e!638292))))

(assert (=> b!1120937 (= res!748924 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24610))))

(declare-fun b!1120938 () Bool)

(assert (=> b!1120938 (= e!638294 (and e!638293 mapRes!43996))))

(declare-fun condMapEmpty!43996 () Bool)

(declare-fun mapDefault!43996 () ValueCell!13350)

(assert (=> b!1120938 (= condMapEmpty!43996 (= (arr!35182 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13350)) mapDefault!43996)))))

(declare-fun mapNonEmpty!43996 () Bool)

(declare-fun tp!83471 () Bool)

(assert (=> mapNonEmpty!43996 (= mapRes!43996 (and tp!83471 e!638296))))

(declare-fun mapValue!43996 () ValueCell!13350)

(declare-fun mapKey!43996 () (_ BitVec 32))

(declare-fun mapRest!43996 () (Array (_ BitVec 32) ValueCell!13350))

(assert (=> mapNonEmpty!43996 (= (arr!35182 _values!996) (store mapRest!43996 mapKey!43996 mapValue!43996))))

(declare-fun b!1120939 () Bool)

(assert (=> b!1120939 (= e!638292 e!638297)))

(declare-fun res!748920 () Bool)

(assert (=> b!1120939 (=> (not res!748920) (not e!638297))))

(assert (=> b!1120939 (= res!748920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498174 mask!1564))))

(assert (=> b!1120939 (= lt!498174 (array!73065 (store (arr!35181 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35718 _keys!1208)))))

(declare-fun b!1120940 () Bool)

(declare-fun res!748917 () Bool)

(assert (=> b!1120940 (=> (not res!748917) (not e!638292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1120940 (= res!748917 (validMask!0 mask!1564))))

(declare-fun b!1120941 () Bool)

(declare-fun res!748921 () Bool)

(assert (=> b!1120941 (=> (not res!748921) (not e!638292))))

(assert (=> b!1120941 (= res!748921 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35718 _keys!1208))))))

(assert (= (and start!97924 res!748919) b!1120940))

(assert (= (and b!1120940 res!748917) b!1120927))

(assert (= (and b!1120927 res!748915) b!1120928))

(assert (= (and b!1120928 res!748923) b!1120937))

(assert (= (and b!1120937 res!748924) b!1120941))

(assert (= (and b!1120941 res!748921) b!1120933))

(assert (= (and b!1120933 res!748926) b!1120925))

(assert (= (and b!1120925 res!748918) b!1120939))

(assert (= (and b!1120939 res!748920) b!1120929))

(assert (= (and b!1120929 res!748922) b!1120935))

(assert (= (and b!1120935 (not res!748925)) b!1120931))

(assert (= (and b!1120931 (not res!748916)) b!1120926))

(assert (= (and b!1120926 c!109334) b!1120932))

(assert (= (and b!1120926 (not c!109334)) b!1120936))

(assert (= (or b!1120932 b!1120936) bm!47048))

(assert (= (or b!1120932 b!1120936) bm!47047))

(assert (= (and b!1120938 condMapEmpty!43996) mapIsEmpty!43996))

(assert (= (and b!1120938 (not condMapEmpty!43996)) mapNonEmpty!43996))

(get-info :version)

(assert (= (and mapNonEmpty!43996 ((_ is ValueCellFull!13350) mapValue!43996)) b!1120930))

(assert (= (and b!1120938 ((_ is ValueCellFull!13350) mapDefault!43996)) b!1120934))

(assert (= start!97924 b!1120938))

(declare-fun b_lambda!18593 () Bool)

(assert (=> (not b_lambda!18593) (not b!1120931)))

(declare-fun t!35200 () Bool)

(declare-fun tb!8409 () Bool)

(assert (=> (and start!97924 (= defaultEntry!1004 defaultEntry!1004) t!35200) tb!8409))

(declare-fun result!17371 () Bool)

(assert (=> tb!8409 (= result!17371 tp_is_empty!28119)))

(assert (=> b!1120931 t!35200))

(declare-fun b_and!37985 () Bool)

(assert (= b_and!37983 (and (=> t!35200 result!17371) b_and!37985)))

(declare-fun m!1035979 () Bool)

(assert (=> b!1120933 m!1035979))

(declare-fun m!1035981 () Bool)

(assert (=> start!97924 m!1035981))

(declare-fun m!1035983 () Bool)

(assert (=> start!97924 m!1035983))

(declare-fun m!1035985 () Bool)

(assert (=> bm!47048 m!1035985))

(declare-fun m!1035987 () Bool)

(assert (=> b!1120929 m!1035987))

(declare-fun m!1035989 () Bool)

(assert (=> b!1120926 m!1035989))

(declare-fun m!1035991 () Bool)

(assert (=> b!1120937 m!1035991))

(declare-fun m!1035993 () Bool)

(assert (=> mapNonEmpty!43996 m!1035993))

(declare-fun m!1035995 () Bool)

(assert (=> b!1120931 m!1035995))

(declare-fun m!1035997 () Bool)

(assert (=> b!1120931 m!1035997))

(declare-fun m!1035999 () Bool)

(assert (=> b!1120931 m!1035999))

(declare-fun m!1036001 () Bool)

(assert (=> b!1120931 m!1036001))

(declare-fun m!1036003 () Bool)

(assert (=> b!1120940 m!1036003))

(declare-fun m!1036005 () Bool)

(assert (=> bm!47047 m!1036005))

(declare-fun m!1036007 () Bool)

(assert (=> b!1120932 m!1036007))

(declare-fun m!1036009 () Bool)

(assert (=> b!1120939 m!1036009))

(declare-fun m!1036011 () Bool)

(assert (=> b!1120939 m!1036011))

(declare-fun m!1036013 () Bool)

(assert (=> b!1120925 m!1036013))

(declare-fun m!1036015 () Bool)

(assert (=> b!1120935 m!1036015))

(declare-fun m!1036017 () Bool)

(assert (=> b!1120935 m!1036017))

(declare-fun m!1036019 () Bool)

(assert (=> b!1120928 m!1036019))

(check-sat (not bm!47048) (not mapNonEmpty!43996) (not b_next!23589) (not b!1120928) (not b!1120926) b_and!37985 (not b!1120939) (not b!1120937) (not b!1120940) (not b!1120933) tp_is_empty!28119 (not b!1120935) (not b!1120931) (not b_lambda!18593) (not b!1120932) (not start!97924) (not b!1120929) (not bm!47047))
(check-sat b_and!37985 (not b_next!23589))
