; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99372 () Bool)

(assert start!99372)

(declare-fun b_free!24915 () Bool)

(declare-fun b_next!24915 () Bool)

(assert (=> start!99372 (= b_free!24915 (not b_next!24915))))

(declare-fun tp!87459 () Bool)

(declare-fun b_and!40711 () Bool)

(assert (=> start!99372 (= tp!87459 b_and!40711)))

(declare-fun b!1171111 () Bool)

(declare-fun res!777434 () Bool)

(declare-fun e!665692 () Bool)

(assert (=> b!1171111 (=> res!777434 e!665692)))

(declare-datatypes ((List!25741 0))(
  ( (Nil!25738) (Cons!25737 (h!26946 (_ BitVec 64)) (t!37655 List!25741)) )
))
(declare-fun noDuplicate!1627 (List!25741) Bool)

(assert (=> b!1171111 (= res!777434 (not (noDuplicate!1627 Nil!25738)))))

(declare-fun b!1171112 () Bool)

(declare-fun e!665689 () Bool)

(declare-fun tp_is_empty!29445 () Bool)

(assert (=> b!1171112 (= e!665689 tp_is_empty!29445)))

(declare-fun b!1171113 () Bool)

(declare-fun res!777428 () Bool)

(declare-fun e!665690 () Bool)

(assert (=> b!1171113 (=> (not res!777428) (not e!665690))))

(declare-datatypes ((array!75666 0))(
  ( (array!75667 (arr!36479 (Array (_ BitVec 32) (_ BitVec 64))) (size!37016 (_ BitVec 32))) )
))
(declare-fun lt!527497 () array!75666)

(declare-fun arrayNoDuplicates!0 (array!75666 (_ BitVec 32) List!25741) Bool)

(assert (=> b!1171113 (= res!777428 (arrayNoDuplicates!0 lt!527497 #b00000000000000000000000000000000 Nil!25738))))

(declare-fun b!1171114 () Bool)

(declare-fun e!665688 () Bool)

(assert (=> b!1171114 (= e!665688 tp_is_empty!29445)))

(declare-fun b!1171115 () Bool)

(declare-fun e!665687 () Bool)

(declare-fun e!665693 () Bool)

(assert (=> b!1171115 (= e!665687 e!665693)))

(declare-fun res!777439 () Bool)

(assert (=> b!1171115 (=> res!777439 e!665693)))

(declare-fun _keys!1208 () array!75666)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1171115 (= res!777439 (not (= (select (arr!36479 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1171116 () Bool)

(declare-fun res!777433 () Bool)

(assert (=> b!1171116 (=> res!777433 e!665692)))

(declare-fun contains!6861 (List!25741 (_ BitVec 64)) Bool)

(assert (=> b!1171116 (= res!777433 (contains!6861 Nil!25738 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171117 () Bool)

(declare-fun res!777441 () Bool)

(declare-fun e!665684 () Bool)

(assert (=> b!1171117 (=> (not res!777441) (not e!665684))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171117 (= res!777441 (= (select (arr!36479 _keys!1208) i!673) k0!934))))

(declare-fun b!1171118 () Bool)

(assert (=> b!1171118 (= e!665692 true)))

(declare-fun lt!527503 () Bool)

(assert (=> b!1171118 (= lt!527503 (contains!6861 Nil!25738 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!45995 () Bool)

(declare-fun mapRes!45995 () Bool)

(declare-fun tp!87460 () Bool)

(assert (=> mapNonEmpty!45995 (= mapRes!45995 (and tp!87460 e!665688))))

(declare-datatypes ((V!44387 0))(
  ( (V!44388 (val!14779 Int)) )
))
(declare-datatypes ((ValueCell!14013 0))(
  ( (ValueCellFull!14013 (v!17418 V!44387)) (EmptyCell!14013) )
))
(declare-fun mapValue!45995 () ValueCell!14013)

(declare-fun mapKey!45995 () (_ BitVec 32))

(declare-fun mapRest!45995 () (Array (_ BitVec 32) ValueCell!14013))

(declare-datatypes ((array!75668 0))(
  ( (array!75669 (arr!36480 (Array (_ BitVec 32) ValueCell!14013)) (size!37017 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75668)

(assert (=> mapNonEmpty!45995 (= (arr!36480 _values!996) (store mapRest!45995 mapKey!45995 mapValue!45995))))

(declare-fun b!1171119 () Bool)

(declare-fun res!777425 () Bool)

(assert (=> b!1171119 (=> (not res!777425) (not e!665684))))

(assert (=> b!1171119 (= res!777425 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25738))))

(declare-fun mapIsEmpty!45995 () Bool)

(assert (=> mapIsEmpty!45995 mapRes!45995))

(declare-fun b!1171120 () Bool)

(declare-fun e!665695 () Bool)

(declare-fun e!665691 () Bool)

(assert (=> b!1171120 (= e!665695 e!665691)))

(declare-fun res!777436 () Bool)

(assert (=> b!1171120 (=> res!777436 e!665691)))

(assert (=> b!1171120 (= res!777436 (not (= (select (arr!36479 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1171120 e!665687))

(declare-fun res!777427 () Bool)

(assert (=> b!1171120 (=> (not res!777427) (not e!665687))))

(declare-fun lt!527507 () V!44387)

(declare-datatypes ((tuple2!18970 0))(
  ( (tuple2!18971 (_1!9495 (_ BitVec 64)) (_2!9495 V!44387)) )
))
(declare-datatypes ((List!25742 0))(
  ( (Nil!25739) (Cons!25738 (h!26947 tuple2!18970) (t!37656 List!25742)) )
))
(declare-datatypes ((ListLongMap!16951 0))(
  ( (ListLongMap!16952 (toList!8491 List!25742)) )
))
(declare-fun lt!527501 () ListLongMap!16951)

(declare-fun lt!527496 () ListLongMap!16951)

(declare-fun +!3731 (ListLongMap!16951 tuple2!18970) ListLongMap!16951)

(declare-fun get!18636 (ValueCell!14013 V!44387) V!44387)

(assert (=> b!1171120 (= res!777427 (= lt!527496 (+!3731 lt!527501 (tuple2!18971 (select (arr!36479 _keys!1208) from!1455) (get!18636 (select (arr!36480 _values!996) from!1455) lt!527507)))))))

(declare-fun b!1171121 () Bool)

(declare-fun e!665686 () Bool)

(declare-fun e!665694 () Bool)

(assert (=> b!1171121 (= e!665686 e!665694)))

(declare-fun res!777432 () Bool)

(assert (=> b!1171121 (=> res!777432 e!665694)))

(assert (=> b!1171121 (= res!777432 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44387)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!527500 () array!75668)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44387)

(declare-fun getCurrentListMapNoExtraKeys!4923 (array!75666 array!75668 (_ BitVec 32) (_ BitVec 32) V!44387 V!44387 (_ BitVec 32) Int) ListLongMap!16951)

(assert (=> b!1171121 (= lt!527496 (getCurrentListMapNoExtraKeys!4923 lt!527497 lt!527500 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1171121 (= lt!527500 (array!75669 (store (arr!36480 _values!996) i!673 (ValueCellFull!14013 lt!527507)) (size!37017 _values!996)))))

(declare-fun dynLambda!2912 (Int (_ BitVec 64)) V!44387)

(assert (=> b!1171121 (= lt!527507 (dynLambda!2912 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527498 () ListLongMap!16951)

(assert (=> b!1171121 (= lt!527498 (getCurrentListMapNoExtraKeys!4923 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171122 () Bool)

(declare-fun arrayContainsKey!0 (array!75666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171122 (= e!665693 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun res!777435 () Bool)

(assert (=> start!99372 (=> (not res!777435) (not e!665684))))

(assert (=> start!99372 (= res!777435 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37016 _keys!1208))))))

(assert (=> start!99372 e!665684))

(assert (=> start!99372 tp_is_empty!29445))

(declare-fun array_inv!27760 (array!75666) Bool)

(assert (=> start!99372 (array_inv!27760 _keys!1208)))

(assert (=> start!99372 true))

(assert (=> start!99372 tp!87459))

(declare-fun e!665685 () Bool)

(declare-fun array_inv!27761 (array!75668) Bool)

(assert (=> start!99372 (and (array_inv!27761 _values!996) e!665685)))

(declare-fun b!1171123 () Bool)

(declare-fun res!777430 () Bool)

(assert (=> b!1171123 (=> (not res!777430) (not e!665684))))

(assert (=> b!1171123 (= res!777430 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37016 _keys!1208))))))

(declare-fun b!1171124 () Bool)

(assert (=> b!1171124 (= e!665694 e!665695)))

(declare-fun res!777440 () Bool)

(assert (=> b!1171124 (=> res!777440 e!665695)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171124 (= res!777440 (not (validKeyInArray!0 (select (arr!36479 _keys!1208) from!1455))))))

(declare-fun lt!527506 () ListLongMap!16951)

(assert (=> b!1171124 (= lt!527506 lt!527501)))

(declare-fun lt!527499 () ListLongMap!16951)

(declare-fun -!1508 (ListLongMap!16951 (_ BitVec 64)) ListLongMap!16951)

(assert (=> b!1171124 (= lt!527501 (-!1508 lt!527499 k0!934))))

(assert (=> b!1171124 (= lt!527506 (getCurrentListMapNoExtraKeys!4923 lt!527497 lt!527500 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171124 (= lt!527499 (getCurrentListMapNoExtraKeys!4923 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38526 0))(
  ( (Unit!38527) )
))
(declare-fun lt!527508 () Unit!38526)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!732 (array!75666 array!75668 (_ BitVec 32) (_ BitVec 32) V!44387 V!44387 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38526)

(assert (=> b!1171124 (= lt!527508 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!732 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171125 () Bool)

(declare-fun res!777442 () Bool)

(assert (=> b!1171125 (=> (not res!777442) (not e!665684))))

(assert (=> b!1171125 (= res!777442 (and (= (size!37017 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37016 _keys!1208) (size!37017 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171126 () Bool)

(assert (=> b!1171126 (= e!665685 (and e!665689 mapRes!45995))))

(declare-fun condMapEmpty!45995 () Bool)

(declare-fun mapDefault!45995 () ValueCell!14013)

(assert (=> b!1171126 (= condMapEmpty!45995 (= (arr!36480 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14013)) mapDefault!45995)))))

(declare-fun b!1171127 () Bool)

(assert (=> b!1171127 (= e!665684 e!665690)))

(declare-fun res!777437 () Bool)

(assert (=> b!1171127 (=> (not res!777437) (not e!665690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75666 (_ BitVec 32)) Bool)

(assert (=> b!1171127 (= res!777437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527497 mask!1564))))

(assert (=> b!1171127 (= lt!527497 (array!75667 (store (arr!36479 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37016 _keys!1208)))))

(declare-fun b!1171128 () Bool)

(declare-fun res!777429 () Bool)

(assert (=> b!1171128 (=> (not res!777429) (not e!665684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171128 (= res!777429 (validMask!0 mask!1564))))

(declare-fun b!1171129 () Bool)

(assert (=> b!1171129 (= e!665691 e!665692)))

(declare-fun res!777438 () Bool)

(assert (=> b!1171129 (=> res!777438 e!665692)))

(assert (=> b!1171129 (= res!777438 (or (bvsge (size!37016 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37016 _keys!1208)) (bvsge from!1455 (size!37016 _keys!1208))))))

(assert (=> b!1171129 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25738)))

(declare-fun lt!527504 () Unit!38526)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75666 (_ BitVec 32) (_ BitVec 32)) Unit!38526)

(assert (=> b!1171129 (= lt!527504 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1171129 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527505 () Unit!38526)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38526)

(assert (=> b!1171129 (= lt!527505 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171130 () Bool)

(declare-fun res!777426 () Bool)

(assert (=> b!1171130 (=> (not res!777426) (not e!665684))))

(assert (=> b!1171130 (= res!777426 (validKeyInArray!0 k0!934))))

(declare-fun b!1171131 () Bool)

(declare-fun res!777424 () Bool)

(assert (=> b!1171131 (=> (not res!777424) (not e!665684))))

(assert (=> b!1171131 (= res!777424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171132 () Bool)

(assert (=> b!1171132 (= e!665690 (not e!665686))))

(declare-fun res!777431 () Bool)

(assert (=> b!1171132 (=> res!777431 e!665686)))

(assert (=> b!1171132 (= res!777431 (bvsgt from!1455 i!673))))

(assert (=> b!1171132 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!527502 () Unit!38526)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75666 (_ BitVec 64) (_ BitVec 32)) Unit!38526)

(assert (=> b!1171132 (= lt!527502 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99372 res!777435) b!1171128))

(assert (= (and b!1171128 res!777429) b!1171125))

(assert (= (and b!1171125 res!777442) b!1171131))

(assert (= (and b!1171131 res!777424) b!1171119))

(assert (= (and b!1171119 res!777425) b!1171123))

(assert (= (and b!1171123 res!777430) b!1171130))

(assert (= (and b!1171130 res!777426) b!1171117))

(assert (= (and b!1171117 res!777441) b!1171127))

(assert (= (and b!1171127 res!777437) b!1171113))

(assert (= (and b!1171113 res!777428) b!1171132))

(assert (= (and b!1171132 (not res!777431)) b!1171121))

(assert (= (and b!1171121 (not res!777432)) b!1171124))

(assert (= (and b!1171124 (not res!777440)) b!1171120))

(assert (= (and b!1171120 res!777427) b!1171115))

(assert (= (and b!1171115 (not res!777439)) b!1171122))

(assert (= (and b!1171120 (not res!777436)) b!1171129))

(assert (= (and b!1171129 (not res!777438)) b!1171111))

(assert (= (and b!1171111 (not res!777434)) b!1171116))

(assert (= (and b!1171116 (not res!777433)) b!1171118))

(assert (= (and b!1171126 condMapEmpty!45995) mapIsEmpty!45995))

(assert (= (and b!1171126 (not condMapEmpty!45995)) mapNonEmpty!45995))

(get-info :version)

(assert (= (and mapNonEmpty!45995 ((_ is ValueCellFull!14013) mapValue!45995)) b!1171114))

(assert (= (and b!1171126 ((_ is ValueCellFull!14013) mapDefault!45995)) b!1171112))

(assert (= start!99372 b!1171126))

(declare-fun b_lambda!20077 () Bool)

(assert (=> (not b_lambda!20077) (not b!1171121)))

(declare-fun t!37654 () Bool)

(declare-fun tb!9735 () Bool)

(assert (=> (and start!99372 (= defaultEntry!1004 defaultEntry!1004) t!37654) tb!9735))

(declare-fun result!20029 () Bool)

(assert (=> tb!9735 (= result!20029 tp_is_empty!29445)))

(assert (=> b!1171121 t!37654))

(declare-fun b_and!40713 () Bool)

(assert (= b_and!40711 (and (=> t!37654 result!20029) b_and!40713)))

(declare-fun m!1078981 () Bool)

(assert (=> b!1171113 m!1078981))

(declare-fun m!1078983 () Bool)

(assert (=> b!1171121 m!1078983))

(declare-fun m!1078985 () Bool)

(assert (=> b!1171121 m!1078985))

(declare-fun m!1078987 () Bool)

(assert (=> b!1171121 m!1078987))

(declare-fun m!1078989 () Bool)

(assert (=> b!1171121 m!1078989))

(declare-fun m!1078991 () Bool)

(assert (=> b!1171130 m!1078991))

(declare-fun m!1078993 () Bool)

(assert (=> b!1171120 m!1078993))

(declare-fun m!1078995 () Bool)

(assert (=> b!1171120 m!1078995))

(assert (=> b!1171120 m!1078995))

(declare-fun m!1078997 () Bool)

(assert (=> b!1171120 m!1078997))

(declare-fun m!1078999 () Bool)

(assert (=> b!1171120 m!1078999))

(declare-fun m!1079001 () Bool)

(assert (=> b!1171118 m!1079001))

(assert (=> b!1171115 m!1078993))

(declare-fun m!1079003 () Bool)

(assert (=> start!99372 m!1079003))

(declare-fun m!1079005 () Bool)

(assert (=> start!99372 m!1079005))

(declare-fun m!1079007 () Bool)

(assert (=> b!1171119 m!1079007))

(declare-fun m!1079009 () Bool)

(assert (=> mapNonEmpty!45995 m!1079009))

(declare-fun m!1079011 () Bool)

(assert (=> b!1171124 m!1079011))

(declare-fun m!1079013 () Bool)

(assert (=> b!1171124 m!1079013))

(declare-fun m!1079015 () Bool)

(assert (=> b!1171124 m!1079015))

(declare-fun m!1079017 () Bool)

(assert (=> b!1171124 m!1079017))

(assert (=> b!1171124 m!1078993))

(declare-fun m!1079019 () Bool)

(assert (=> b!1171124 m!1079019))

(assert (=> b!1171124 m!1078993))

(declare-fun m!1079021 () Bool)

(assert (=> b!1171116 m!1079021))

(declare-fun m!1079023 () Bool)

(assert (=> b!1171111 m!1079023))

(declare-fun m!1079025 () Bool)

(assert (=> b!1171117 m!1079025))

(declare-fun m!1079027 () Bool)

(assert (=> b!1171128 m!1079027))

(declare-fun m!1079029 () Bool)

(assert (=> b!1171127 m!1079029))

(declare-fun m!1079031 () Bool)

(assert (=> b!1171127 m!1079031))

(declare-fun m!1079033 () Bool)

(assert (=> b!1171129 m!1079033))

(declare-fun m!1079035 () Bool)

(assert (=> b!1171129 m!1079035))

(declare-fun m!1079037 () Bool)

(assert (=> b!1171129 m!1079037))

(declare-fun m!1079039 () Bool)

(assert (=> b!1171129 m!1079039))

(declare-fun m!1079041 () Bool)

(assert (=> b!1171122 m!1079041))

(declare-fun m!1079043 () Bool)

(assert (=> b!1171131 m!1079043))

(declare-fun m!1079045 () Bool)

(assert (=> b!1171132 m!1079045))

(declare-fun m!1079047 () Bool)

(assert (=> b!1171132 m!1079047))

(check-sat (not b!1171118) (not b!1171128) (not b!1171127) (not start!99372) (not b!1171131) (not b!1171116) (not b!1171120) (not b_next!24915) (not b!1171124) (not b!1171130) (not b!1171119) (not b!1171129) (not b!1171121) (not mapNonEmpty!45995) (not b_lambda!20077) (not b!1171113) (not b!1171111) b_and!40713 (not b!1171132) (not b!1171122) tp_is_empty!29445)
(check-sat b_and!40713 (not b_next!24915))
