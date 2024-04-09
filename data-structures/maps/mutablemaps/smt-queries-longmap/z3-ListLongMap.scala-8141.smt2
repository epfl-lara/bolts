; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99750 () Bool)

(assert start!99750)

(declare-fun b_free!25293 () Bool)

(declare-fun b_next!25293 () Bool)

(assert (=> start!99750 (= b_free!25293 (not b_next!25293))))

(declare-fun tp!88593 () Bool)

(declare-fun b_and!41467 () Bool)

(assert (=> start!99750 (= tp!88593 b_and!41467)))

(declare-fun b!1183305 () Bool)

(declare-fun res!786548 () Bool)

(declare-fun e!672814 () Bool)

(assert (=> b!1183305 (=> (not res!786548) (not e!672814))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183305 (= res!786548 (validKeyInArray!0 k0!934))))

(declare-fun b!1183306 () Bool)

(declare-datatypes ((Unit!39089 0))(
  ( (Unit!39090) )
))
(declare-fun e!672817 () Unit!39089)

(declare-fun Unit!39091 () Unit!39089)

(assert (=> b!1183306 (= e!672817 Unit!39091)))

(declare-fun b!1183307 () Bool)

(declare-fun Unit!39092 () Unit!39089)

(assert (=> b!1183307 (= e!672817 Unit!39092)))

(declare-datatypes ((array!76414 0))(
  ( (array!76415 (arr!36853 (Array (_ BitVec 32) (_ BitVec 64))) (size!37390 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76414)

(declare-fun lt!536065 () Unit!39089)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76414 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39089)

(assert (=> b!1183307 (= lt!536065 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183307 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536067 () Unit!39089)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76414 (_ BitVec 32) (_ BitVec 32)) Unit!39089)

(assert (=> b!1183307 (= lt!536067 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26069 0))(
  ( (Nil!26066) (Cons!26065 (h!27274 (_ BitVec 64)) (t!38361 List!26069)) )
))
(declare-fun arrayNoDuplicates!0 (array!76414 (_ BitVec 32) List!26069) Bool)

(assert (=> b!1183307 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26066)))

(declare-fun lt!536052 () Unit!39089)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76414 (_ BitVec 64) (_ BitVec 32) List!26069) Unit!39089)

(assert (=> b!1183307 (= lt!536052 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26066))))

(assert (=> b!1183307 false))

(declare-fun b!1183308 () Bool)

(declare-fun e!672806 () Bool)

(declare-fun tp_is_empty!29823 () Bool)

(assert (=> b!1183308 (= e!672806 tp_is_empty!29823)))

(declare-fun res!786543 () Bool)

(assert (=> start!99750 (=> (not res!786543) (not e!672814))))

(assert (=> start!99750 (= res!786543 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37390 _keys!1208))))))

(assert (=> start!99750 e!672814))

(assert (=> start!99750 tp_is_empty!29823))

(declare-fun array_inv!28012 (array!76414) Bool)

(assert (=> start!99750 (array_inv!28012 _keys!1208)))

(assert (=> start!99750 true))

(assert (=> start!99750 tp!88593))

(declare-datatypes ((V!44891 0))(
  ( (V!44892 (val!14968 Int)) )
))
(declare-datatypes ((ValueCell!14202 0))(
  ( (ValueCellFull!14202 (v!17607 V!44891)) (EmptyCell!14202) )
))
(declare-datatypes ((array!76416 0))(
  ( (array!76417 (arr!36854 (Array (_ BitVec 32) ValueCell!14202)) (size!37391 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76416)

(declare-fun e!672816 () Bool)

(declare-fun array_inv!28013 (array!76416) Bool)

(assert (=> start!99750 (and (array_inv!28013 _values!996) e!672816)))

(declare-fun b!1183309 () Bool)

(declare-fun mapRes!46562 () Bool)

(assert (=> b!1183309 (= e!672816 (and e!672806 mapRes!46562))))

(declare-fun condMapEmpty!46562 () Bool)

(declare-fun mapDefault!46562 () ValueCell!14202)

(assert (=> b!1183309 (= condMapEmpty!46562 (= (arr!36854 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14202)) mapDefault!46562)))))

(declare-fun b!1183310 () Bool)

(declare-fun e!672812 () Bool)

(declare-fun e!672810 () Bool)

(assert (=> b!1183310 (= e!672812 e!672810)))

(declare-fun res!786545 () Bool)

(assert (=> b!1183310 (=> res!786545 e!672810)))

(assert (=> b!1183310 (= res!786545 (not (validKeyInArray!0 (select (arr!36853 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19306 0))(
  ( (tuple2!19307 (_1!9663 (_ BitVec 64)) (_2!9663 V!44891)) )
))
(declare-datatypes ((List!26070 0))(
  ( (Nil!26067) (Cons!26066 (h!27275 tuple2!19306) (t!38362 List!26070)) )
))
(declare-datatypes ((ListLongMap!17287 0))(
  ( (ListLongMap!17288 (toList!8659 List!26070)) )
))
(declare-fun lt!536066 () ListLongMap!17287)

(declare-fun lt!536059 () ListLongMap!17287)

(assert (=> b!1183310 (= lt!536066 lt!536059)))

(declare-fun lt!536061 () ListLongMap!17287)

(declare-fun -!1647 (ListLongMap!17287 (_ BitVec 64)) ListLongMap!17287)

(assert (=> b!1183310 (= lt!536059 (-!1647 lt!536061 k0!934))))

(declare-fun zeroValue!944 () V!44891)

(declare-fun lt!536057 () array!76414)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44891)

(declare-fun lt!536053 () array!76416)

(declare-fun getCurrentListMapNoExtraKeys!5081 (array!76414 array!76416 (_ BitVec 32) (_ BitVec 32) V!44891 V!44891 (_ BitVec 32) Int) ListLongMap!17287)

(assert (=> b!1183310 (= lt!536066 (getCurrentListMapNoExtraKeys!5081 lt!536057 lt!536053 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183310 (= lt!536061 (getCurrentListMapNoExtraKeys!5081 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536058 () Unit!39089)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!866 (array!76414 array!76416 (_ BitVec 32) (_ BitVec 32) V!44891 V!44891 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39089)

(assert (=> b!1183310 (= lt!536058 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!866 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183311 () Bool)

(declare-fun e!672813 () Bool)

(assert (=> b!1183311 (= e!672814 e!672813)))

(declare-fun res!786551 () Bool)

(assert (=> b!1183311 (=> (not res!786551) (not e!672813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76414 (_ BitVec 32)) Bool)

(assert (=> b!1183311 (= res!786551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536057 mask!1564))))

(assert (=> b!1183311 (= lt!536057 (array!76415 (store (arr!36853 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37390 _keys!1208)))))

(declare-fun b!1183312 () Bool)

(declare-fun e!672808 () Bool)

(assert (=> b!1183312 (= e!672808 e!672812)))

(declare-fun res!786549 () Bool)

(assert (=> b!1183312 (=> res!786549 e!672812)))

(assert (=> b!1183312 (= res!786549 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!536050 () ListLongMap!17287)

(assert (=> b!1183312 (= lt!536050 (getCurrentListMapNoExtraKeys!5081 lt!536057 lt!536053 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!536056 () V!44891)

(assert (=> b!1183312 (= lt!536053 (array!76417 (store (arr!36854 _values!996) i!673 (ValueCellFull!14202 lt!536056)) (size!37391 _values!996)))))

(declare-fun dynLambda!3048 (Int (_ BitVec 64)) V!44891)

(assert (=> b!1183312 (= lt!536056 (dynLambda!3048 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!536054 () ListLongMap!17287)

(assert (=> b!1183312 (= lt!536054 (getCurrentListMapNoExtraKeys!5081 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1183313 () Bool)

(assert (=> b!1183313 (= e!672810 true)))

(declare-fun lt!536063 () ListLongMap!17287)

(declare-fun lt!536051 () ListLongMap!17287)

(assert (=> b!1183313 (= (-!1647 lt!536063 k0!934) lt!536051)))

(declare-fun lt!536062 () V!44891)

(declare-fun lt!536064 () Unit!39089)

(declare-fun addRemoveCommutativeForDiffKeys!165 (ListLongMap!17287 (_ BitVec 64) V!44891 (_ BitVec 64)) Unit!39089)

(assert (=> b!1183313 (= lt!536064 (addRemoveCommutativeForDiffKeys!165 lt!536061 (select (arr!36853 _keys!1208) from!1455) lt!536062 k0!934))))

(assert (=> b!1183313 (and (= lt!536054 lt!536063) (= lt!536059 lt!536066))))

(declare-fun lt!536055 () tuple2!19306)

(declare-fun +!3875 (ListLongMap!17287 tuple2!19306) ListLongMap!17287)

(assert (=> b!1183313 (= lt!536063 (+!3875 lt!536061 lt!536055))))

(assert (=> b!1183313 (not (= (select (arr!36853 _keys!1208) from!1455) k0!934))))

(declare-fun lt!536049 () Unit!39089)

(assert (=> b!1183313 (= lt!536049 e!672817)))

(declare-fun c!117011 () Bool)

(assert (=> b!1183313 (= c!117011 (= (select (arr!36853 _keys!1208) from!1455) k0!934))))

(declare-fun e!672815 () Bool)

(assert (=> b!1183313 e!672815))

(declare-fun res!786539 () Bool)

(assert (=> b!1183313 (=> (not res!786539) (not e!672815))))

(assert (=> b!1183313 (= res!786539 (= lt!536050 lt!536051))))

(assert (=> b!1183313 (= lt!536051 (+!3875 lt!536059 lt!536055))))

(assert (=> b!1183313 (= lt!536055 (tuple2!19307 (select (arr!36853 _keys!1208) from!1455) lt!536062))))

(declare-fun get!18895 (ValueCell!14202 V!44891) V!44891)

(assert (=> b!1183313 (= lt!536062 (get!18895 (select (arr!36854 _values!996) from!1455) lt!536056))))

(declare-fun b!1183314 () Bool)

(assert (=> b!1183314 (= e!672813 (not e!672808))))

(declare-fun res!786547 () Bool)

(assert (=> b!1183314 (=> res!786547 e!672808)))

(assert (=> b!1183314 (= res!786547 (bvsgt from!1455 i!673))))

(assert (=> b!1183314 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!536060 () Unit!39089)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76414 (_ BitVec 64) (_ BitVec 32)) Unit!39089)

(assert (=> b!1183314 (= lt!536060 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183315 () Bool)

(declare-fun res!786553 () Bool)

(assert (=> b!1183315 (=> (not res!786553) (not e!672814))))

(assert (=> b!1183315 (= res!786553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1183316 () Bool)

(declare-fun e!672811 () Bool)

(assert (=> b!1183316 (= e!672811 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183317 () Bool)

(declare-fun res!786542 () Bool)

(assert (=> b!1183317 (=> (not res!786542) (not e!672814))))

(assert (=> b!1183317 (= res!786542 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37390 _keys!1208))))))

(declare-fun b!1183318 () Bool)

(declare-fun res!786552 () Bool)

(assert (=> b!1183318 (=> (not res!786552) (not e!672814))))

(assert (=> b!1183318 (= res!786552 (and (= (size!37391 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37390 _keys!1208) (size!37391 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183319 () Bool)

(declare-fun e!672807 () Bool)

(assert (=> b!1183319 (= e!672807 tp_is_empty!29823)))

(declare-fun mapNonEmpty!46562 () Bool)

(declare-fun tp!88594 () Bool)

(assert (=> mapNonEmpty!46562 (= mapRes!46562 (and tp!88594 e!672807))))

(declare-fun mapRest!46562 () (Array (_ BitVec 32) ValueCell!14202))

(declare-fun mapKey!46562 () (_ BitVec 32))

(declare-fun mapValue!46562 () ValueCell!14202)

(assert (=> mapNonEmpty!46562 (= (arr!36854 _values!996) (store mapRest!46562 mapKey!46562 mapValue!46562))))

(declare-fun b!1183320 () Bool)

(assert (=> b!1183320 (= e!672815 e!672811)))

(declare-fun res!786541 () Bool)

(assert (=> b!1183320 (=> res!786541 e!672811)))

(assert (=> b!1183320 (= res!786541 (not (= (select (arr!36853 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1183321 () Bool)

(declare-fun res!786546 () Bool)

(assert (=> b!1183321 (=> (not res!786546) (not e!672814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183321 (= res!786546 (validMask!0 mask!1564))))

(declare-fun b!1183322 () Bool)

(declare-fun res!786550 () Bool)

(assert (=> b!1183322 (=> (not res!786550) (not e!672813))))

(assert (=> b!1183322 (= res!786550 (arrayNoDuplicates!0 lt!536057 #b00000000000000000000000000000000 Nil!26066))))

(declare-fun b!1183323 () Bool)

(declare-fun res!786544 () Bool)

(assert (=> b!1183323 (=> (not res!786544) (not e!672814))))

(assert (=> b!1183323 (= res!786544 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26066))))

(declare-fun b!1183324 () Bool)

(declare-fun res!786540 () Bool)

(assert (=> b!1183324 (=> (not res!786540) (not e!672814))))

(assert (=> b!1183324 (= res!786540 (= (select (arr!36853 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46562 () Bool)

(assert (=> mapIsEmpty!46562 mapRes!46562))

(assert (= (and start!99750 res!786543) b!1183321))

(assert (= (and b!1183321 res!786546) b!1183318))

(assert (= (and b!1183318 res!786552) b!1183315))

(assert (= (and b!1183315 res!786553) b!1183323))

(assert (= (and b!1183323 res!786544) b!1183317))

(assert (= (and b!1183317 res!786542) b!1183305))

(assert (= (and b!1183305 res!786548) b!1183324))

(assert (= (and b!1183324 res!786540) b!1183311))

(assert (= (and b!1183311 res!786551) b!1183322))

(assert (= (and b!1183322 res!786550) b!1183314))

(assert (= (and b!1183314 (not res!786547)) b!1183312))

(assert (= (and b!1183312 (not res!786549)) b!1183310))

(assert (= (and b!1183310 (not res!786545)) b!1183313))

(assert (= (and b!1183313 res!786539) b!1183320))

(assert (= (and b!1183320 (not res!786541)) b!1183316))

(assert (= (and b!1183313 c!117011) b!1183307))

(assert (= (and b!1183313 (not c!117011)) b!1183306))

(assert (= (and b!1183309 condMapEmpty!46562) mapIsEmpty!46562))

(assert (= (and b!1183309 (not condMapEmpty!46562)) mapNonEmpty!46562))

(get-info :version)

(assert (= (and mapNonEmpty!46562 ((_ is ValueCellFull!14202) mapValue!46562)) b!1183319))

(assert (= (and b!1183309 ((_ is ValueCellFull!14202) mapDefault!46562)) b!1183308))

(assert (= start!99750 b!1183309))

(declare-fun b_lambda!20455 () Bool)

(assert (=> (not b_lambda!20455) (not b!1183312)))

(declare-fun t!38360 () Bool)

(declare-fun tb!10113 () Bool)

(assert (=> (and start!99750 (= defaultEntry!1004 defaultEntry!1004) t!38360) tb!10113))

(declare-fun result!20785 () Bool)

(assert (=> tb!10113 (= result!20785 tp_is_empty!29823)))

(assert (=> b!1183312 t!38360))

(declare-fun b_and!41469 () Bool)

(assert (= b_and!41467 (and (=> t!38360 result!20785) b_and!41469)))

(declare-fun m!1091505 () Bool)

(assert (=> b!1183320 m!1091505))

(declare-fun m!1091507 () Bool)

(assert (=> b!1183321 m!1091507))

(declare-fun m!1091509 () Bool)

(assert (=> b!1183324 m!1091509))

(declare-fun m!1091511 () Bool)

(assert (=> b!1183307 m!1091511))

(declare-fun m!1091513 () Bool)

(assert (=> b!1183307 m!1091513))

(declare-fun m!1091515 () Bool)

(assert (=> b!1183307 m!1091515))

(declare-fun m!1091517 () Bool)

(assert (=> b!1183307 m!1091517))

(declare-fun m!1091519 () Bool)

(assert (=> b!1183307 m!1091519))

(declare-fun m!1091521 () Bool)

(assert (=> b!1183315 m!1091521))

(declare-fun m!1091523 () Bool)

(assert (=> b!1183314 m!1091523))

(declare-fun m!1091525 () Bool)

(assert (=> b!1183314 m!1091525))

(declare-fun m!1091527 () Bool)

(assert (=> b!1183313 m!1091527))

(assert (=> b!1183313 m!1091527))

(declare-fun m!1091529 () Bool)

(assert (=> b!1183313 m!1091529))

(declare-fun m!1091531 () Bool)

(assert (=> b!1183313 m!1091531))

(assert (=> b!1183313 m!1091505))

(declare-fun m!1091533 () Bool)

(assert (=> b!1183313 m!1091533))

(assert (=> b!1183313 m!1091505))

(declare-fun m!1091535 () Bool)

(assert (=> b!1183313 m!1091535))

(declare-fun m!1091537 () Bool)

(assert (=> b!1183313 m!1091537))

(declare-fun m!1091539 () Bool)

(assert (=> b!1183311 m!1091539))

(declare-fun m!1091541 () Bool)

(assert (=> b!1183311 m!1091541))

(declare-fun m!1091543 () Bool)

(assert (=> b!1183310 m!1091543))

(declare-fun m!1091545 () Bool)

(assert (=> b!1183310 m!1091545))

(declare-fun m!1091547 () Bool)

(assert (=> b!1183310 m!1091547))

(declare-fun m!1091549 () Bool)

(assert (=> b!1183310 m!1091549))

(assert (=> b!1183310 m!1091505))

(declare-fun m!1091551 () Bool)

(assert (=> b!1183310 m!1091551))

(assert (=> b!1183310 m!1091505))

(declare-fun m!1091553 () Bool)

(assert (=> b!1183323 m!1091553))

(declare-fun m!1091555 () Bool)

(assert (=> start!99750 m!1091555))

(declare-fun m!1091557 () Bool)

(assert (=> start!99750 m!1091557))

(declare-fun m!1091559 () Bool)

(assert (=> b!1183305 m!1091559))

(declare-fun m!1091561 () Bool)

(assert (=> b!1183316 m!1091561))

(declare-fun m!1091563 () Bool)

(assert (=> b!1183312 m!1091563))

(declare-fun m!1091565 () Bool)

(assert (=> b!1183312 m!1091565))

(declare-fun m!1091567 () Bool)

(assert (=> b!1183312 m!1091567))

(declare-fun m!1091569 () Bool)

(assert (=> b!1183312 m!1091569))

(declare-fun m!1091571 () Bool)

(assert (=> mapNonEmpty!46562 m!1091571))

(declare-fun m!1091573 () Bool)

(assert (=> b!1183322 m!1091573))

(check-sat b_and!41469 (not b!1183305) (not b!1183323) (not start!99750) (not b!1183315) (not b_next!25293) (not b!1183316) (not b_lambda!20455) (not b!1183314) (not b!1183313) (not mapNonEmpty!46562) (not b!1183312) (not b!1183322) (not b!1183311) tp_is_empty!29823 (not b!1183307) (not b!1183321) (not b!1183310))
(check-sat b_and!41469 (not b_next!25293))
