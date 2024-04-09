; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99870 () Bool)

(assert start!99870)

(declare-fun b_free!25413 () Bool)

(declare-fun b_next!25413 () Bool)

(assert (=> start!99870 (= b_free!25413 (not b_next!25413))))

(declare-fun tp!88954 () Bool)

(declare-fun b_and!41707 () Bool)

(assert (=> start!99870 (= tp!88954 b_and!41707)))

(declare-datatypes ((array!76654 0))(
  ( (array!76655 (arr!36973 (Array (_ BitVec 32) (_ BitVec 64))) (size!37510 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76654)

(declare-fun b!1187025 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!674970 () Bool)

(declare-fun arrayContainsKey!0 (array!76654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187025 (= e!674970 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187026 () Bool)

(declare-fun res!789240 () Bool)

(declare-fun e!674971 () Bool)

(assert (=> b!1187026 (=> (not res!789240) (not e!674971))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187026 (= res!789240 (validMask!0 mask!1564))))

(declare-fun b!1187028 () Bool)

(declare-fun e!674966 () Bool)

(declare-fun e!674969 () Bool)

(assert (=> b!1187028 (= e!674966 e!674969)))

(declare-fun res!789250 () Bool)

(assert (=> b!1187028 (=> res!789250 e!674969)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1187028 (= res!789250 (not (validKeyInArray!0 (select (arr!36973 _keys!1208) from!1455))))))

(declare-datatypes ((V!45051 0))(
  ( (V!45052 (val!15028 Int)) )
))
(declare-datatypes ((tuple2!19418 0))(
  ( (tuple2!19419 (_1!9719 (_ BitVec 64)) (_2!9719 V!45051)) )
))
(declare-datatypes ((List!26177 0))(
  ( (Nil!26174) (Cons!26173 (h!27382 tuple2!19418) (t!38589 List!26177)) )
))
(declare-datatypes ((ListLongMap!17399 0))(
  ( (ListLongMap!17400 (toList!8715 List!26177)) )
))
(declare-fun lt!539481 () ListLongMap!17399)

(declare-fun lt!539478 () ListLongMap!17399)

(assert (=> b!1187028 (= lt!539481 lt!539478)))

(declare-fun lt!539474 () ListLongMap!17399)

(declare-fun -!1700 (ListLongMap!17399 (_ BitVec 64)) ListLongMap!17399)

(assert (=> b!1187028 (= lt!539478 (-!1700 lt!539474 k0!934))))

(declare-fun zeroValue!944 () V!45051)

(declare-fun lt!539487 () array!76654)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14262 0))(
  ( (ValueCellFull!14262 (v!17667 V!45051)) (EmptyCell!14262) )
))
(declare-datatypes ((array!76656 0))(
  ( (array!76657 (arr!36974 (Array (_ BitVec 32) ValueCell!14262)) (size!37511 (_ BitVec 32))) )
))
(declare-fun lt!539479 () array!76656)

(declare-fun minValue!944 () V!45051)

(declare-fun getCurrentListMapNoExtraKeys!5130 (array!76654 array!76656 (_ BitVec 32) (_ BitVec 32) V!45051 V!45051 (_ BitVec 32) Int) ListLongMap!17399)

(assert (=> b!1187028 (= lt!539481 (getCurrentListMapNoExtraKeys!5130 lt!539487 lt!539479 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76656)

(assert (=> b!1187028 (= lt!539474 (getCurrentListMapNoExtraKeys!5130 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39285 0))(
  ( (Unit!39286) )
))
(declare-fun lt!539484 () Unit!39285)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!909 (array!76654 array!76656 (_ BitVec 32) (_ BitVec 32) V!45051 V!45051 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39285)

(assert (=> b!1187028 (= lt!539484 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!909 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1187029 () Bool)

(declare-fun res!789248 () Bool)

(assert (=> b!1187029 (=> (not res!789248) (not e!674971))))

(assert (=> b!1187029 (= res!789248 (= (select (arr!36973 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46742 () Bool)

(declare-fun mapRes!46742 () Bool)

(assert (=> mapIsEmpty!46742 mapRes!46742))

(declare-fun b!1187030 () Bool)

(declare-fun res!789246 () Bool)

(declare-fun e!674968 () Bool)

(assert (=> b!1187030 (=> (not res!789246) (not e!674968))))

(declare-datatypes ((List!26178 0))(
  ( (Nil!26175) (Cons!26174 (h!27383 (_ BitVec 64)) (t!38590 List!26178)) )
))
(declare-fun arrayNoDuplicates!0 (array!76654 (_ BitVec 32) List!26178) Bool)

(assert (=> b!1187030 (= res!789246 (arrayNoDuplicates!0 lt!539487 #b00000000000000000000000000000000 Nil!26175))))

(declare-fun b!1187031 () Bool)

(declare-fun res!789242 () Bool)

(assert (=> b!1187031 (=> (not res!789242) (not e!674971))))

(assert (=> b!1187031 (= res!789242 (and (= (size!37511 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37510 _keys!1208) (size!37511 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1187032 () Bool)

(declare-fun e!674977 () Bool)

(declare-fun tp_is_empty!29943 () Bool)

(assert (=> b!1187032 (= e!674977 tp_is_empty!29943)))

(declare-fun b!1187033 () Bool)

(declare-fun e!674974 () Bool)

(assert (=> b!1187033 (= e!674974 e!674970)))

(declare-fun res!789239 () Bool)

(assert (=> b!1187033 (=> res!789239 e!674970)))

(assert (=> b!1187033 (= res!789239 (not (= (select (arr!36973 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1187034 () Bool)

(assert (=> b!1187034 (= e!674971 e!674968)))

(declare-fun res!789241 () Bool)

(assert (=> b!1187034 (=> (not res!789241) (not e!674968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76654 (_ BitVec 32)) Bool)

(assert (=> b!1187034 (= res!789241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539487 mask!1564))))

(assert (=> b!1187034 (= lt!539487 (array!76655 (store (arr!36973 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37510 _keys!1208)))))

(declare-fun b!1187035 () Bool)

(declare-fun e!674972 () Unit!39285)

(declare-fun Unit!39287 () Unit!39285)

(assert (=> b!1187035 (= e!674972 Unit!39287)))

(declare-fun lt!539476 () Unit!39285)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76654 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39285)

(assert (=> b!1187035 (= lt!539476 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1187035 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539482 () Unit!39285)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76654 (_ BitVec 32) (_ BitVec 32)) Unit!39285)

(assert (=> b!1187035 (= lt!539482 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1187035 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26175)))

(declare-fun lt!539475 () Unit!39285)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76654 (_ BitVec 64) (_ BitVec 32) List!26178) Unit!39285)

(assert (=> b!1187035 (= lt!539475 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26175))))

(assert (=> b!1187035 false))

(declare-fun b!1187036 () Bool)

(declare-fun res!789252 () Bool)

(assert (=> b!1187036 (=> (not res!789252) (not e!674971))))

(assert (=> b!1187036 (= res!789252 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1187037 () Bool)

(declare-fun e!674973 () Bool)

(assert (=> b!1187037 (= e!674968 (not e!674973))))

(declare-fun res!789253 () Bool)

(assert (=> b!1187037 (=> res!789253 e!674973)))

(assert (=> b!1187037 (= res!789253 (bvsgt from!1455 i!673))))

(assert (=> b!1187037 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!539483 () Unit!39285)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76654 (_ BitVec 64) (_ BitVec 32)) Unit!39285)

(assert (=> b!1187037 (= lt!539483 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1187038 () Bool)

(declare-fun e!674976 () Bool)

(assert (=> b!1187038 (= e!674976 tp_is_empty!29943)))

(declare-fun b!1187039 () Bool)

(declare-fun res!789244 () Bool)

(assert (=> b!1187039 (=> (not res!789244) (not e!674971))))

(assert (=> b!1187039 (= res!789244 (validKeyInArray!0 k0!934))))

(declare-fun b!1187027 () Bool)

(declare-fun res!789245 () Bool)

(assert (=> b!1187027 (=> (not res!789245) (not e!674971))))

(assert (=> b!1187027 (= res!789245 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37510 _keys!1208))))))

(declare-fun res!789247 () Bool)

(assert (=> start!99870 (=> (not res!789247) (not e!674971))))

(assert (=> start!99870 (= res!789247 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37510 _keys!1208))))))

(assert (=> start!99870 e!674971))

(assert (=> start!99870 tp_is_empty!29943))

(declare-fun array_inv!28094 (array!76654) Bool)

(assert (=> start!99870 (array_inv!28094 _keys!1208)))

(assert (=> start!99870 true))

(assert (=> start!99870 tp!88954))

(declare-fun e!674967 () Bool)

(declare-fun array_inv!28095 (array!76656) Bool)

(assert (=> start!99870 (and (array_inv!28095 _values!996) e!674967)))

(declare-fun b!1187040 () Bool)

(declare-fun Unit!39288 () Unit!39285)

(assert (=> b!1187040 (= e!674972 Unit!39288)))

(declare-fun b!1187041 () Bool)

(assert (=> b!1187041 (= e!674973 e!674966)))

(declare-fun res!789243 () Bool)

(assert (=> b!1187041 (=> res!789243 e!674966)))

(assert (=> b!1187041 (= res!789243 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!539469 () ListLongMap!17399)

(assert (=> b!1187041 (= lt!539469 (getCurrentListMapNoExtraKeys!5130 lt!539487 lt!539479 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!539485 () V!45051)

(assert (=> b!1187041 (= lt!539479 (array!76657 (store (arr!36974 _values!996) i!673 (ValueCellFull!14262 lt!539485)) (size!37511 _values!996)))))

(declare-fun dynLambda!3087 (Int (_ BitVec 64)) V!45051)

(assert (=> b!1187041 (= lt!539485 (dynLambda!3087 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!539471 () ListLongMap!17399)

(assert (=> b!1187041 (= lt!539471 (getCurrentListMapNoExtraKeys!5130 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1187042 () Bool)

(assert (=> b!1187042 (= e!674969 true)))

(declare-fun lt!539480 () ListLongMap!17399)

(declare-fun lt!539472 () ListLongMap!17399)

(assert (=> b!1187042 (= (-!1700 lt!539480 k0!934) lt!539472)))

(declare-fun lt!539486 () V!45051)

(declare-fun lt!539477 () Unit!39285)

(declare-fun addRemoveCommutativeForDiffKeys!207 (ListLongMap!17399 (_ BitVec 64) V!45051 (_ BitVec 64)) Unit!39285)

(assert (=> b!1187042 (= lt!539477 (addRemoveCommutativeForDiffKeys!207 lt!539474 (select (arr!36973 _keys!1208) from!1455) lt!539486 k0!934))))

(assert (=> b!1187042 (and (= lt!539471 lt!539480) (= lt!539478 lt!539481))))

(declare-fun lt!539473 () tuple2!19418)

(declare-fun +!3917 (ListLongMap!17399 tuple2!19418) ListLongMap!17399)

(assert (=> b!1187042 (= lt!539480 (+!3917 lt!539474 lt!539473))))

(assert (=> b!1187042 (not (= (select (arr!36973 _keys!1208) from!1455) k0!934))))

(declare-fun lt!539470 () Unit!39285)

(assert (=> b!1187042 (= lt!539470 e!674972)))

(declare-fun c!117191 () Bool)

(assert (=> b!1187042 (= c!117191 (= (select (arr!36973 _keys!1208) from!1455) k0!934))))

(assert (=> b!1187042 e!674974))

(declare-fun res!789251 () Bool)

(assert (=> b!1187042 (=> (not res!789251) (not e!674974))))

(assert (=> b!1187042 (= res!789251 (= lt!539469 lt!539472))))

(assert (=> b!1187042 (= lt!539472 (+!3917 lt!539478 lt!539473))))

(assert (=> b!1187042 (= lt!539473 (tuple2!19419 (select (arr!36973 _keys!1208) from!1455) lt!539486))))

(declare-fun get!18977 (ValueCell!14262 V!45051) V!45051)

(assert (=> b!1187042 (= lt!539486 (get!18977 (select (arr!36974 _values!996) from!1455) lt!539485))))

(declare-fun b!1187043 () Bool)

(declare-fun res!789249 () Bool)

(assert (=> b!1187043 (=> (not res!789249) (not e!674971))))

(assert (=> b!1187043 (= res!789249 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26175))))

(declare-fun mapNonEmpty!46742 () Bool)

(declare-fun tp!88953 () Bool)

(assert (=> mapNonEmpty!46742 (= mapRes!46742 (and tp!88953 e!674977))))

(declare-fun mapRest!46742 () (Array (_ BitVec 32) ValueCell!14262))

(declare-fun mapKey!46742 () (_ BitVec 32))

(declare-fun mapValue!46742 () ValueCell!14262)

(assert (=> mapNonEmpty!46742 (= (arr!36974 _values!996) (store mapRest!46742 mapKey!46742 mapValue!46742))))

(declare-fun b!1187044 () Bool)

(assert (=> b!1187044 (= e!674967 (and e!674976 mapRes!46742))))

(declare-fun condMapEmpty!46742 () Bool)

(declare-fun mapDefault!46742 () ValueCell!14262)

(assert (=> b!1187044 (= condMapEmpty!46742 (= (arr!36974 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14262)) mapDefault!46742)))))

(assert (= (and start!99870 res!789247) b!1187026))

(assert (= (and b!1187026 res!789240) b!1187031))

(assert (= (and b!1187031 res!789242) b!1187036))

(assert (= (and b!1187036 res!789252) b!1187043))

(assert (= (and b!1187043 res!789249) b!1187027))

(assert (= (and b!1187027 res!789245) b!1187039))

(assert (= (and b!1187039 res!789244) b!1187029))

(assert (= (and b!1187029 res!789248) b!1187034))

(assert (= (and b!1187034 res!789241) b!1187030))

(assert (= (and b!1187030 res!789246) b!1187037))

(assert (= (and b!1187037 (not res!789253)) b!1187041))

(assert (= (and b!1187041 (not res!789243)) b!1187028))

(assert (= (and b!1187028 (not res!789250)) b!1187042))

(assert (= (and b!1187042 res!789251) b!1187033))

(assert (= (and b!1187033 (not res!789239)) b!1187025))

(assert (= (and b!1187042 c!117191) b!1187035))

(assert (= (and b!1187042 (not c!117191)) b!1187040))

(assert (= (and b!1187044 condMapEmpty!46742) mapIsEmpty!46742))

(assert (= (and b!1187044 (not condMapEmpty!46742)) mapNonEmpty!46742))

(get-info :version)

(assert (= (and mapNonEmpty!46742 ((_ is ValueCellFull!14262) mapValue!46742)) b!1187032))

(assert (= (and b!1187044 ((_ is ValueCellFull!14262) mapDefault!46742)) b!1187038))

(assert (= start!99870 b!1187044))

(declare-fun b_lambda!20575 () Bool)

(assert (=> (not b_lambda!20575) (not b!1187041)))

(declare-fun t!38588 () Bool)

(declare-fun tb!10233 () Bool)

(assert (=> (and start!99870 (= defaultEntry!1004 defaultEntry!1004) t!38588) tb!10233))

(declare-fun result!21025 () Bool)

(assert (=> tb!10233 (= result!21025 tp_is_empty!29943)))

(assert (=> b!1187041 t!38588))

(declare-fun b_and!41709 () Bool)

(assert (= b_and!41707 (and (=> t!38588 result!21025) b_and!41709)))

(declare-fun m!1095705 () Bool)

(assert (=> b!1187034 m!1095705))

(declare-fun m!1095707 () Bool)

(assert (=> b!1187034 m!1095707))

(declare-fun m!1095709 () Bool)

(assert (=> b!1187033 m!1095709))

(declare-fun m!1095711 () Bool)

(assert (=> b!1187036 m!1095711))

(declare-fun m!1095713 () Bool)

(assert (=> b!1187039 m!1095713))

(declare-fun m!1095715 () Bool)

(assert (=> b!1187035 m!1095715))

(declare-fun m!1095717 () Bool)

(assert (=> b!1187035 m!1095717))

(declare-fun m!1095719 () Bool)

(assert (=> b!1187035 m!1095719))

(declare-fun m!1095721 () Bool)

(assert (=> b!1187035 m!1095721))

(declare-fun m!1095723 () Bool)

(assert (=> b!1187035 m!1095723))

(declare-fun m!1095725 () Bool)

(assert (=> b!1187030 m!1095725))

(declare-fun m!1095727 () Bool)

(assert (=> b!1187029 m!1095727))

(declare-fun m!1095729 () Bool)

(assert (=> b!1187042 m!1095729))

(assert (=> b!1187042 m!1095729))

(declare-fun m!1095731 () Bool)

(assert (=> b!1187042 m!1095731))

(declare-fun m!1095733 () Bool)

(assert (=> b!1187042 m!1095733))

(declare-fun m!1095735 () Bool)

(assert (=> b!1187042 m!1095735))

(declare-fun m!1095737 () Bool)

(assert (=> b!1187042 m!1095737))

(assert (=> b!1187042 m!1095709))

(assert (=> b!1187042 m!1095709))

(declare-fun m!1095739 () Bool)

(assert (=> b!1187042 m!1095739))

(declare-fun m!1095741 () Bool)

(assert (=> b!1187025 m!1095741))

(declare-fun m!1095743 () Bool)

(assert (=> b!1187041 m!1095743))

(declare-fun m!1095745 () Bool)

(assert (=> b!1187041 m!1095745))

(declare-fun m!1095747 () Bool)

(assert (=> b!1187041 m!1095747))

(declare-fun m!1095749 () Bool)

(assert (=> b!1187041 m!1095749))

(declare-fun m!1095751 () Bool)

(assert (=> b!1187026 m!1095751))

(declare-fun m!1095753 () Bool)

(assert (=> mapNonEmpty!46742 m!1095753))

(declare-fun m!1095755 () Bool)

(assert (=> b!1187028 m!1095755))

(declare-fun m!1095757 () Bool)

(assert (=> b!1187028 m!1095757))

(declare-fun m!1095759 () Bool)

(assert (=> b!1187028 m!1095759))

(declare-fun m!1095761 () Bool)

(assert (=> b!1187028 m!1095761))

(assert (=> b!1187028 m!1095709))

(declare-fun m!1095763 () Bool)

(assert (=> b!1187028 m!1095763))

(assert (=> b!1187028 m!1095709))

(declare-fun m!1095765 () Bool)

(assert (=> start!99870 m!1095765))

(declare-fun m!1095767 () Bool)

(assert (=> start!99870 m!1095767))

(declare-fun m!1095769 () Bool)

(assert (=> b!1187037 m!1095769))

(declare-fun m!1095771 () Bool)

(assert (=> b!1187037 m!1095771))

(declare-fun m!1095773 () Bool)

(assert (=> b!1187043 m!1095773))

(check-sat (not b_next!25413) tp_is_empty!29943 (not b!1187036) (not b!1187026) (not b!1187043) (not start!99870) (not b!1187042) (not b!1187028) (not b!1187025) (not b!1187039) (not b!1187030) (not b!1187034) (not b!1187041) b_and!41709 (not b!1187037) (not mapNonEmpty!46742) (not b_lambda!20575) (not b!1187035))
(check-sat b_and!41709 (not b_next!25413))
