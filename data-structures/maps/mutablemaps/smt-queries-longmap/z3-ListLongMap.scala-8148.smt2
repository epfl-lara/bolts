; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99792 () Bool)

(assert start!99792)

(declare-fun b_free!25335 () Bool)

(declare-fun b_next!25335 () Bool)

(assert (=> start!99792 (= b_free!25335 (not b_next!25335))))

(declare-fun tp!88720 () Bool)

(declare-fun b_and!41551 () Bool)

(assert (=> start!99792 (= tp!88720 b_and!41551)))

(declare-fun b!1184607 () Bool)

(declare-datatypes ((Unit!39153 0))(
  ( (Unit!39154) )
))
(declare-fun e!673570 () Unit!39153)

(declare-fun Unit!39155 () Unit!39153)

(assert (=> b!1184607 (= e!673570 Unit!39155)))

(declare-fun b!1184608 () Bool)

(declare-fun e!673572 () Bool)

(declare-fun e!673565 () Bool)

(assert (=> b!1184608 (= e!673572 e!673565)))

(declare-fun res!787494 () Bool)

(assert (=> b!1184608 (=> res!787494 e!673565)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1184608 (= res!787494 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44947 0))(
  ( (V!44948 (val!14989 Int)) )
))
(declare-fun zeroValue!944 () V!44947)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19342 0))(
  ( (tuple2!19343 (_1!9681 (_ BitVec 64)) (_2!9681 V!44947)) )
))
(declare-datatypes ((List!26105 0))(
  ( (Nil!26102) (Cons!26101 (h!27310 tuple2!19342) (t!38439 List!26105)) )
))
(declare-datatypes ((ListLongMap!17323 0))(
  ( (ListLongMap!17324 (toList!8677 List!26105)) )
))
(declare-fun lt!537257 () ListLongMap!17323)

(declare-fun minValue!944 () V!44947)

(declare-datatypes ((array!76498 0))(
  ( (array!76499 (arr!36895 (Array (_ BitVec 32) (_ BitVec 64))) (size!37432 (_ BitVec 32))) )
))
(declare-fun lt!537259 () array!76498)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14223 0))(
  ( (ValueCellFull!14223 (v!17628 V!44947)) (EmptyCell!14223) )
))
(declare-datatypes ((array!76500 0))(
  ( (array!76501 (arr!36896 (Array (_ BitVec 32) ValueCell!14223)) (size!37433 (_ BitVec 32))) )
))
(declare-fun lt!537251 () array!76500)

(declare-fun getCurrentListMapNoExtraKeys!5097 (array!76498 array!76500 (_ BitVec 32) (_ BitVec 32) V!44947 V!44947 (_ BitVec 32) Int) ListLongMap!17323)

(assert (=> b!1184608 (= lt!537257 (getCurrentListMapNoExtraKeys!5097 lt!537259 lt!537251 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!537264 () V!44947)

(declare-fun _values!996 () array!76500)

(assert (=> b!1184608 (= lt!537251 (array!76501 (store (arr!36896 _values!996) i!673 (ValueCellFull!14223 lt!537264)) (size!37433 _values!996)))))

(declare-fun dynLambda!3061 (Int (_ BitVec 64)) V!44947)

(assert (=> b!1184608 (= lt!537264 (dynLambda!3061 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76498)

(declare-fun lt!537256 () ListLongMap!17323)

(assert (=> b!1184608 (= lt!537256 (getCurrentListMapNoExtraKeys!5097 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46625 () Bool)

(declare-fun mapRes!46625 () Bool)

(declare-fun tp!88719 () Bool)

(declare-fun e!673568 () Bool)

(assert (=> mapNonEmpty!46625 (= mapRes!46625 (and tp!88719 e!673568))))

(declare-fun mapKey!46625 () (_ BitVec 32))

(declare-fun mapValue!46625 () ValueCell!14223)

(declare-fun mapRest!46625 () (Array (_ BitVec 32) ValueCell!14223))

(assert (=> mapNonEmpty!46625 (= (arr!36896 _values!996) (store mapRest!46625 mapKey!46625 mapValue!46625))))

(declare-fun b!1184609 () Bool)

(declare-fun res!787491 () Bool)

(declare-fun e!673571 () Bool)

(assert (=> b!1184609 (=> (not res!787491) (not e!673571))))

(assert (=> b!1184609 (= res!787491 (and (= (size!37433 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37432 _keys!1208) (size!37433 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1184610 () Bool)

(declare-fun e!673564 () Bool)

(assert (=> b!1184610 (= e!673571 e!673564)))

(declare-fun res!787493 () Bool)

(assert (=> b!1184610 (=> (not res!787493) (not e!673564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76498 (_ BitVec 32)) Bool)

(assert (=> b!1184610 (= res!787493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!537259 mask!1564))))

(assert (=> b!1184610 (= lt!537259 (array!76499 (store (arr!36895 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37432 _keys!1208)))))

(declare-fun b!1184611 () Bool)

(declare-fun e!673573 () Bool)

(assert (=> b!1184611 (= e!673565 e!673573)))

(declare-fun res!787488 () Bool)

(assert (=> b!1184611 (=> res!787488 e!673573)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184611 (= res!787488 (not (validKeyInArray!0 (select (arr!36895 _keys!1208) from!1455))))))

(declare-fun lt!537253 () ListLongMap!17323)

(declare-fun lt!537247 () ListLongMap!17323)

(assert (=> b!1184611 (= lt!537253 lt!537247)))

(declare-fun lt!537252 () ListLongMap!17323)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1664 (ListLongMap!17323 (_ BitVec 64)) ListLongMap!17323)

(assert (=> b!1184611 (= lt!537247 (-!1664 lt!537252 k0!934))))

(assert (=> b!1184611 (= lt!537253 (getCurrentListMapNoExtraKeys!5097 lt!537259 lt!537251 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184611 (= lt!537252 (getCurrentListMapNoExtraKeys!5097 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!537260 () Unit!39153)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!880 (array!76498 array!76500 (_ BitVec 32) (_ BitVec 32) V!44947 V!44947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39153)

(assert (=> b!1184611 (= lt!537260 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!880 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1184612 () Bool)

(assert (=> b!1184612 (= e!673573 true)))

(declare-fun lt!537258 () ListLongMap!17323)

(declare-fun lt!537254 () ListLongMap!17323)

(assert (=> b!1184612 (= (-!1664 lt!537258 k0!934) lt!537254)))

(declare-fun lt!537261 () Unit!39153)

(declare-fun lt!537250 () V!44947)

(declare-fun addRemoveCommutativeForDiffKeys!177 (ListLongMap!17323 (_ BitVec 64) V!44947 (_ BitVec 64)) Unit!39153)

(assert (=> b!1184612 (= lt!537261 (addRemoveCommutativeForDiffKeys!177 lt!537252 (select (arr!36895 _keys!1208) from!1455) lt!537250 k0!934))))

(assert (=> b!1184612 (and (= lt!537256 lt!537258) (= lt!537247 lt!537253))))

(declare-fun lt!537246 () tuple2!19342)

(declare-fun +!3887 (ListLongMap!17323 tuple2!19342) ListLongMap!17323)

(assert (=> b!1184612 (= lt!537258 (+!3887 lt!537252 lt!537246))))

(assert (=> b!1184612 (not (= (select (arr!36895 _keys!1208) from!1455) k0!934))))

(declare-fun lt!537248 () Unit!39153)

(assert (=> b!1184612 (= lt!537248 e!673570)))

(declare-fun c!117074 () Bool)

(assert (=> b!1184612 (= c!117074 (= (select (arr!36895 _keys!1208) from!1455) k0!934))))

(declare-fun e!673563 () Bool)

(assert (=> b!1184612 e!673563))

(declare-fun res!787484 () Bool)

(assert (=> b!1184612 (=> (not res!787484) (not e!673563))))

(assert (=> b!1184612 (= res!787484 (= lt!537257 lt!537254))))

(assert (=> b!1184612 (= lt!537254 (+!3887 lt!537247 lt!537246))))

(assert (=> b!1184612 (= lt!537246 (tuple2!19343 (select (arr!36895 _keys!1208) from!1455) lt!537250))))

(declare-fun get!18921 (ValueCell!14223 V!44947) V!44947)

(assert (=> b!1184612 (= lt!537250 (get!18921 (select (arr!36896 _values!996) from!1455) lt!537264))))

(declare-fun b!1184613 () Bool)

(declare-fun res!787492 () Bool)

(assert (=> b!1184613 (=> (not res!787492) (not e!673564))))

(declare-datatypes ((List!26106 0))(
  ( (Nil!26103) (Cons!26102 (h!27311 (_ BitVec 64)) (t!38440 List!26106)) )
))
(declare-fun arrayNoDuplicates!0 (array!76498 (_ BitVec 32) List!26106) Bool)

(assert (=> b!1184613 (= res!787492 (arrayNoDuplicates!0 lt!537259 #b00000000000000000000000000000000 Nil!26103))))

(declare-fun b!1184614 () Bool)

(declare-fun res!787496 () Bool)

(assert (=> b!1184614 (=> (not res!787496) (not e!673571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1184614 (= res!787496 (validMask!0 mask!1564))))

(declare-fun b!1184615 () Bool)

(declare-fun tp_is_empty!29865 () Bool)

(assert (=> b!1184615 (= e!673568 tp_is_empty!29865)))

(declare-fun e!673562 () Bool)

(declare-fun b!1184616 () Bool)

(declare-fun arrayContainsKey!0 (array!76498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184616 (= e!673562 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184617 () Bool)

(declare-fun res!787489 () Bool)

(assert (=> b!1184617 (=> (not res!787489) (not e!673571))))

(assert (=> b!1184617 (= res!787489 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37432 _keys!1208))))))

(declare-fun b!1184618 () Bool)

(assert (=> b!1184618 (= e!673564 (not e!673572))))

(declare-fun res!787497 () Bool)

(assert (=> b!1184618 (=> res!787497 e!673572)))

(assert (=> b!1184618 (= res!787497 (bvsgt from!1455 i!673))))

(assert (=> b!1184618 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!537255 () Unit!39153)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76498 (_ BitVec 64) (_ BitVec 32)) Unit!39153)

(assert (=> b!1184618 (= lt!537255 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1184619 () Bool)

(declare-fun e!673569 () Bool)

(declare-fun e!673566 () Bool)

(assert (=> b!1184619 (= e!673569 (and e!673566 mapRes!46625))))

(declare-fun condMapEmpty!46625 () Bool)

(declare-fun mapDefault!46625 () ValueCell!14223)

(assert (=> b!1184619 (= condMapEmpty!46625 (= (arr!36896 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14223)) mapDefault!46625)))))

(declare-fun b!1184620 () Bool)

(declare-fun res!787498 () Bool)

(assert (=> b!1184620 (=> (not res!787498) (not e!673571))))

(assert (=> b!1184620 (= res!787498 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26103))))

(declare-fun b!1184621 () Bool)

(declare-fun res!787490 () Bool)

(assert (=> b!1184621 (=> (not res!787490) (not e!673571))))

(assert (=> b!1184621 (= res!787490 (validKeyInArray!0 k0!934))))

(declare-fun b!1184622 () Bool)

(declare-fun Unit!39156 () Unit!39153)

(assert (=> b!1184622 (= e!673570 Unit!39156)))

(declare-fun lt!537249 () Unit!39153)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76498 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39153)

(assert (=> b!1184622 (= lt!537249 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1184622 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!537262 () Unit!39153)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76498 (_ BitVec 32) (_ BitVec 32)) Unit!39153)

(assert (=> b!1184622 (= lt!537262 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1184622 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26103)))

(declare-fun lt!537263 () Unit!39153)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76498 (_ BitVec 64) (_ BitVec 32) List!26106) Unit!39153)

(assert (=> b!1184622 (= lt!537263 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26103))))

(assert (=> b!1184622 false))

(declare-fun res!787485 () Bool)

(assert (=> start!99792 (=> (not res!787485) (not e!673571))))

(assert (=> start!99792 (= res!787485 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37432 _keys!1208))))))

(assert (=> start!99792 e!673571))

(assert (=> start!99792 tp_is_empty!29865))

(declare-fun array_inv!28038 (array!76498) Bool)

(assert (=> start!99792 (array_inv!28038 _keys!1208)))

(assert (=> start!99792 true))

(assert (=> start!99792 tp!88720))

(declare-fun array_inv!28039 (array!76500) Bool)

(assert (=> start!99792 (and (array_inv!28039 _values!996) e!673569)))

(declare-fun b!1184623 () Bool)

(declare-fun res!787486 () Bool)

(assert (=> b!1184623 (=> (not res!787486) (not e!673571))))

(assert (=> b!1184623 (= res!787486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46625 () Bool)

(assert (=> mapIsEmpty!46625 mapRes!46625))

(declare-fun b!1184624 () Bool)

(assert (=> b!1184624 (= e!673563 e!673562)))

(declare-fun res!787495 () Bool)

(assert (=> b!1184624 (=> res!787495 e!673562)))

(assert (=> b!1184624 (= res!787495 (not (= (select (arr!36895 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1184625 () Bool)

(declare-fun res!787487 () Bool)

(assert (=> b!1184625 (=> (not res!787487) (not e!673571))))

(assert (=> b!1184625 (= res!787487 (= (select (arr!36895 _keys!1208) i!673) k0!934))))

(declare-fun b!1184626 () Bool)

(assert (=> b!1184626 (= e!673566 tp_is_empty!29865)))

(assert (= (and start!99792 res!787485) b!1184614))

(assert (= (and b!1184614 res!787496) b!1184609))

(assert (= (and b!1184609 res!787491) b!1184623))

(assert (= (and b!1184623 res!787486) b!1184620))

(assert (= (and b!1184620 res!787498) b!1184617))

(assert (= (and b!1184617 res!787489) b!1184621))

(assert (= (and b!1184621 res!787490) b!1184625))

(assert (= (and b!1184625 res!787487) b!1184610))

(assert (= (and b!1184610 res!787493) b!1184613))

(assert (= (and b!1184613 res!787492) b!1184618))

(assert (= (and b!1184618 (not res!787497)) b!1184608))

(assert (= (and b!1184608 (not res!787494)) b!1184611))

(assert (= (and b!1184611 (not res!787488)) b!1184612))

(assert (= (and b!1184612 res!787484) b!1184624))

(assert (= (and b!1184624 (not res!787495)) b!1184616))

(assert (= (and b!1184612 c!117074) b!1184622))

(assert (= (and b!1184612 (not c!117074)) b!1184607))

(assert (= (and b!1184619 condMapEmpty!46625) mapIsEmpty!46625))

(assert (= (and b!1184619 (not condMapEmpty!46625)) mapNonEmpty!46625))

(get-info :version)

(assert (= (and mapNonEmpty!46625 ((_ is ValueCellFull!14223) mapValue!46625)) b!1184615))

(assert (= (and b!1184619 ((_ is ValueCellFull!14223) mapDefault!46625)) b!1184626))

(assert (= start!99792 b!1184619))

(declare-fun b_lambda!20497 () Bool)

(assert (=> (not b_lambda!20497) (not b!1184608)))

(declare-fun t!38438 () Bool)

(declare-fun tb!10155 () Bool)

(assert (=> (and start!99792 (= defaultEntry!1004 defaultEntry!1004) t!38438) tb!10155))

(declare-fun result!20869 () Bool)

(assert (=> tb!10155 (= result!20869 tp_is_empty!29865)))

(assert (=> b!1184608 t!38438))

(declare-fun b_and!41553 () Bool)

(assert (= b_and!41551 (and (=> t!38438 result!20869) b_and!41553)))

(declare-fun m!1092975 () Bool)

(assert (=> b!1184612 m!1092975))

(declare-fun m!1092977 () Bool)

(assert (=> b!1184612 m!1092977))

(assert (=> b!1184612 m!1092975))

(declare-fun m!1092979 () Bool)

(assert (=> b!1184612 m!1092979))

(declare-fun m!1092981 () Bool)

(assert (=> b!1184612 m!1092981))

(declare-fun m!1092983 () Bool)

(assert (=> b!1184612 m!1092983))

(declare-fun m!1092985 () Bool)

(assert (=> b!1184612 m!1092985))

(declare-fun m!1092987 () Bool)

(assert (=> b!1184612 m!1092987))

(assert (=> b!1184612 m!1092985))

(declare-fun m!1092989 () Bool)

(assert (=> mapNonEmpty!46625 m!1092989))

(declare-fun m!1092991 () Bool)

(assert (=> b!1184621 m!1092991))

(declare-fun m!1092993 () Bool)

(assert (=> b!1184625 m!1092993))

(declare-fun m!1092995 () Bool)

(assert (=> b!1184608 m!1092995))

(declare-fun m!1092997 () Bool)

(assert (=> b!1184608 m!1092997))

(declare-fun m!1092999 () Bool)

(assert (=> b!1184608 m!1092999))

(declare-fun m!1093001 () Bool)

(assert (=> b!1184608 m!1093001))

(declare-fun m!1093003 () Bool)

(assert (=> b!1184616 m!1093003))

(declare-fun m!1093005 () Bool)

(assert (=> b!1184622 m!1093005))

(declare-fun m!1093007 () Bool)

(assert (=> b!1184622 m!1093007))

(declare-fun m!1093009 () Bool)

(assert (=> b!1184622 m!1093009))

(declare-fun m!1093011 () Bool)

(assert (=> b!1184622 m!1093011))

(declare-fun m!1093013 () Bool)

(assert (=> b!1184622 m!1093013))

(declare-fun m!1093015 () Bool)

(assert (=> b!1184610 m!1093015))

(declare-fun m!1093017 () Bool)

(assert (=> b!1184610 m!1093017))

(declare-fun m!1093019 () Bool)

(assert (=> b!1184620 m!1093019))

(declare-fun m!1093021 () Bool)

(assert (=> b!1184613 m!1093021))

(declare-fun m!1093023 () Bool)

(assert (=> b!1184611 m!1093023))

(declare-fun m!1093025 () Bool)

(assert (=> b!1184611 m!1093025))

(assert (=> b!1184611 m!1092985))

(declare-fun m!1093027 () Bool)

(assert (=> b!1184611 m!1093027))

(assert (=> b!1184611 m!1092985))

(declare-fun m!1093029 () Bool)

(assert (=> b!1184611 m!1093029))

(declare-fun m!1093031 () Bool)

(assert (=> b!1184611 m!1093031))

(declare-fun m!1093033 () Bool)

(assert (=> b!1184618 m!1093033))

(declare-fun m!1093035 () Bool)

(assert (=> b!1184618 m!1093035))

(declare-fun m!1093037 () Bool)

(assert (=> b!1184623 m!1093037))

(declare-fun m!1093039 () Bool)

(assert (=> start!99792 m!1093039))

(declare-fun m!1093041 () Bool)

(assert (=> start!99792 m!1093041))

(assert (=> b!1184624 m!1092985))

(declare-fun m!1093043 () Bool)

(assert (=> b!1184614 m!1093043))

(check-sat (not b!1184612) (not start!99792) (not b!1184616) (not b!1184623) (not b!1184622) (not b!1184613) (not b!1184610) (not b_lambda!20497) tp_is_empty!29865 (not b!1184618) b_and!41553 (not b_next!25335) (not b!1184620) (not b!1184611) (not b!1184621) (not mapNonEmpty!46625) (not b!1184608) (not b!1184614))
(check-sat b_and!41553 (not b_next!25335))
