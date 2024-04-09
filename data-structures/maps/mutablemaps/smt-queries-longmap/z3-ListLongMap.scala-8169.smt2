; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99918 () Bool)

(assert start!99918)

(declare-fun b_free!25461 () Bool)

(declare-fun b_next!25461 () Bool)

(assert (=> start!99918 (= b_free!25461 (not b_next!25461))))

(declare-fun tp!89097 () Bool)

(declare-fun b_and!41803 () Bool)

(assert (=> start!99918 (= tp!89097 b_and!41803)))

(declare-fun b!1188443 () Bool)

(declare-fun e!675776 () Bool)

(declare-fun tp_is_empty!29991 () Bool)

(assert (=> b!1188443 (= e!675776 tp_is_empty!29991)))

(declare-fun b!1188444 () Bool)

(declare-fun e!675777 () Bool)

(declare-fun e!675780 () Bool)

(assert (=> b!1188444 (= e!675777 e!675780)))

(declare-fun res!790279 () Bool)

(assert (=> b!1188444 (=> (not res!790279) (not e!675780))))

(declare-datatypes ((array!76750 0))(
  ( (array!76751 (arr!37021 (Array (_ BitVec 32) (_ BitVec 64))) (size!37558 (_ BitVec 32))) )
))
(declare-fun lt!540657 () array!76750)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76750 (_ BitVec 32)) Bool)

(assert (=> b!1188444 (= res!790279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540657 mask!1564))))

(declare-fun _keys!1208 () array!76750)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1188444 (= lt!540657 (array!76751 (store (arr!37021 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37558 _keys!1208)))))

(declare-fun b!1188445 () Bool)

(declare-fun res!790287 () Bool)

(assert (=> b!1188445 (=> (not res!790287) (not e!675777))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1188445 (= res!790287 (validKeyInArray!0 k0!934))))

(declare-fun b!1188447 () Bool)

(declare-fun e!675779 () Bool)

(assert (=> b!1188447 (= e!675780 (not e!675779))))

(declare-fun res!790285 () Bool)

(assert (=> b!1188447 (=> res!790285 e!675779)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1188447 (= res!790285 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1188447 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39360 0))(
  ( (Unit!39361) )
))
(declare-fun lt!540658 () Unit!39360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76750 (_ BitVec 64) (_ BitVec 32)) Unit!39360)

(assert (=> b!1188447 (= lt!540658 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1188448 () Bool)

(declare-fun res!790288 () Bool)

(assert (=> b!1188448 (=> (not res!790288) (not e!675777))))

(assert (=> b!1188448 (= res!790288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1188449 () Bool)

(declare-fun e!675781 () Bool)

(assert (=> b!1188449 (= e!675781 tp_is_empty!29991)))

(declare-fun b!1188450 () Bool)

(declare-fun res!790284 () Bool)

(assert (=> b!1188450 (=> (not res!790284) (not e!675777))))

(declare-datatypes ((List!26218 0))(
  ( (Nil!26215) (Cons!26214 (h!27423 (_ BitVec 64)) (t!38678 List!26218)) )
))
(declare-fun arrayNoDuplicates!0 (array!76750 (_ BitVec 32) List!26218) Bool)

(assert (=> b!1188450 (= res!790284 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26215))))

(declare-fun b!1188451 () Bool)

(declare-fun e!675775 () Bool)

(assert (=> b!1188451 (= e!675775 true)))

(declare-datatypes ((V!45115 0))(
  ( (V!45116 (val!15052 Int)) )
))
(declare-fun zeroValue!944 () V!45115)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14286 0))(
  ( (ValueCellFull!14286 (v!17691 V!45115)) (EmptyCell!14286) )
))
(declare-datatypes ((array!76752 0))(
  ( (array!76753 (arr!37022 (Array (_ BitVec 32) ValueCell!14286)) (size!37559 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76752)

(declare-fun minValue!944 () V!45115)

(declare-fun lt!540659 () array!76752)

(declare-datatypes ((tuple2!19458 0))(
  ( (tuple2!19459 (_1!9739 (_ BitVec 64)) (_2!9739 V!45115)) )
))
(declare-datatypes ((List!26219 0))(
  ( (Nil!26216) (Cons!26215 (h!27424 tuple2!19458) (t!38679 List!26219)) )
))
(declare-datatypes ((ListLongMap!17439 0))(
  ( (ListLongMap!17440 (toList!8735 List!26219)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5149 (array!76750 array!76752 (_ BitVec 32) (_ BitVec 32) V!45115 V!45115 (_ BitVec 32) Int) ListLongMap!17439)

(declare-fun -!1720 (ListLongMap!17439 (_ BitVec 64)) ListLongMap!17439)

(assert (=> b!1188451 (= (getCurrentListMapNoExtraKeys!5149 lt!540657 lt!540659 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1720 (getCurrentListMapNoExtraKeys!5149 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun lt!540660 () Unit!39360)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!926 (array!76750 array!76752 (_ BitVec 32) (_ BitVec 32) V!45115 V!45115 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39360)

(assert (=> b!1188451 (= lt!540660 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!926 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1188452 () Bool)

(assert (=> b!1188452 (= e!675779 e!675775)))

(declare-fun res!790283 () Bool)

(assert (=> b!1188452 (=> res!790283 e!675775)))

(assert (=> b!1188452 (= res!790283 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!540656 () ListLongMap!17439)

(assert (=> b!1188452 (= lt!540656 (getCurrentListMapNoExtraKeys!5149 lt!540657 lt!540659 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3104 (Int (_ BitVec 64)) V!45115)

(assert (=> b!1188452 (= lt!540659 (array!76753 (store (arr!37022 _values!996) i!673 (ValueCellFull!14286 (dynLambda!3104 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37559 _values!996)))))

(declare-fun lt!540655 () ListLongMap!17439)

(assert (=> b!1188452 (= lt!540655 (getCurrentListMapNoExtraKeys!5149 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1188453 () Bool)

(declare-fun res!790286 () Bool)

(assert (=> b!1188453 (=> (not res!790286) (not e!675780))))

(assert (=> b!1188453 (= res!790286 (arrayNoDuplicates!0 lt!540657 #b00000000000000000000000000000000 Nil!26215))))

(declare-fun b!1188454 () Bool)

(declare-fun res!790278 () Bool)

(assert (=> b!1188454 (=> (not res!790278) (not e!675777))))

(assert (=> b!1188454 (= res!790278 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37558 _keys!1208))))))

(declare-fun b!1188455 () Bool)

(declare-fun res!790282 () Bool)

(assert (=> b!1188455 (=> (not res!790282) (not e!675777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1188455 (= res!790282 (validMask!0 mask!1564))))

(declare-fun b!1188456 () Bool)

(declare-fun res!790277 () Bool)

(assert (=> b!1188456 (=> (not res!790277) (not e!675777))))

(assert (=> b!1188456 (= res!790277 (= (select (arr!37021 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!46814 () Bool)

(declare-fun mapRes!46814 () Bool)

(assert (=> mapIsEmpty!46814 mapRes!46814))

(declare-fun res!790281 () Bool)

(assert (=> start!99918 (=> (not res!790281) (not e!675777))))

(assert (=> start!99918 (= res!790281 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37558 _keys!1208))))))

(assert (=> start!99918 e!675777))

(assert (=> start!99918 tp_is_empty!29991))

(declare-fun array_inv!28132 (array!76750) Bool)

(assert (=> start!99918 (array_inv!28132 _keys!1208)))

(assert (=> start!99918 true))

(assert (=> start!99918 tp!89097))

(declare-fun e!675774 () Bool)

(declare-fun array_inv!28133 (array!76752) Bool)

(assert (=> start!99918 (and (array_inv!28133 _values!996) e!675774)))

(declare-fun b!1188446 () Bool)

(assert (=> b!1188446 (= e!675774 (and e!675776 mapRes!46814))))

(declare-fun condMapEmpty!46814 () Bool)

(declare-fun mapDefault!46814 () ValueCell!14286)

(assert (=> b!1188446 (= condMapEmpty!46814 (= (arr!37022 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14286)) mapDefault!46814)))))

(declare-fun mapNonEmpty!46814 () Bool)

(declare-fun tp!89098 () Bool)

(assert (=> mapNonEmpty!46814 (= mapRes!46814 (and tp!89098 e!675781))))

(declare-fun mapKey!46814 () (_ BitVec 32))

(declare-fun mapRest!46814 () (Array (_ BitVec 32) ValueCell!14286))

(declare-fun mapValue!46814 () ValueCell!14286)

(assert (=> mapNonEmpty!46814 (= (arr!37022 _values!996) (store mapRest!46814 mapKey!46814 mapValue!46814))))

(declare-fun b!1188457 () Bool)

(declare-fun res!790280 () Bool)

(assert (=> b!1188457 (=> (not res!790280) (not e!675777))))

(assert (=> b!1188457 (= res!790280 (and (= (size!37559 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37558 _keys!1208) (size!37559 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99918 res!790281) b!1188455))

(assert (= (and b!1188455 res!790282) b!1188457))

(assert (= (and b!1188457 res!790280) b!1188448))

(assert (= (and b!1188448 res!790288) b!1188450))

(assert (= (and b!1188450 res!790284) b!1188454))

(assert (= (and b!1188454 res!790278) b!1188445))

(assert (= (and b!1188445 res!790287) b!1188456))

(assert (= (and b!1188456 res!790277) b!1188444))

(assert (= (and b!1188444 res!790279) b!1188453))

(assert (= (and b!1188453 res!790286) b!1188447))

(assert (= (and b!1188447 (not res!790285)) b!1188452))

(assert (= (and b!1188452 (not res!790283)) b!1188451))

(assert (= (and b!1188446 condMapEmpty!46814) mapIsEmpty!46814))

(assert (= (and b!1188446 (not condMapEmpty!46814)) mapNonEmpty!46814))

(get-info :version)

(assert (= (and mapNonEmpty!46814 ((_ is ValueCellFull!14286) mapValue!46814)) b!1188449))

(assert (= (and b!1188446 ((_ is ValueCellFull!14286) mapDefault!46814)) b!1188443))

(assert (= start!99918 b!1188446))

(declare-fun b_lambda!20623 () Bool)

(assert (=> (not b_lambda!20623) (not b!1188452)))

(declare-fun t!38677 () Bool)

(declare-fun tb!10281 () Bool)

(assert (=> (and start!99918 (= defaultEntry!1004 defaultEntry!1004) t!38677) tb!10281))

(declare-fun result!21121 () Bool)

(assert (=> tb!10281 (= result!21121 tp_is_empty!29991)))

(assert (=> b!1188452 t!38677))

(declare-fun b_and!41805 () Bool)

(assert (= b_and!41803 (and (=> t!38677 result!21121) b_and!41805)))

(declare-fun m!1097273 () Bool)

(assert (=> b!1188456 m!1097273))

(declare-fun m!1097275 () Bool)

(assert (=> b!1188444 m!1097275))

(declare-fun m!1097277 () Bool)

(assert (=> b!1188444 m!1097277))

(declare-fun m!1097279 () Bool)

(assert (=> b!1188452 m!1097279))

(declare-fun m!1097281 () Bool)

(assert (=> b!1188452 m!1097281))

(declare-fun m!1097283 () Bool)

(assert (=> b!1188452 m!1097283))

(declare-fun m!1097285 () Bool)

(assert (=> b!1188452 m!1097285))

(declare-fun m!1097287 () Bool)

(assert (=> b!1188453 m!1097287))

(declare-fun m!1097289 () Bool)

(assert (=> b!1188451 m!1097289))

(declare-fun m!1097291 () Bool)

(assert (=> b!1188451 m!1097291))

(assert (=> b!1188451 m!1097291))

(declare-fun m!1097293 () Bool)

(assert (=> b!1188451 m!1097293))

(declare-fun m!1097295 () Bool)

(assert (=> b!1188451 m!1097295))

(declare-fun m!1097297 () Bool)

(assert (=> b!1188455 m!1097297))

(declare-fun m!1097299 () Bool)

(assert (=> b!1188447 m!1097299))

(declare-fun m!1097301 () Bool)

(assert (=> b!1188447 m!1097301))

(declare-fun m!1097303 () Bool)

(assert (=> start!99918 m!1097303))

(declare-fun m!1097305 () Bool)

(assert (=> start!99918 m!1097305))

(declare-fun m!1097307 () Bool)

(assert (=> b!1188445 m!1097307))

(declare-fun m!1097309 () Bool)

(assert (=> mapNonEmpty!46814 m!1097309))

(declare-fun m!1097311 () Bool)

(assert (=> b!1188450 m!1097311))

(declare-fun m!1097313 () Bool)

(assert (=> b!1188448 m!1097313))

(check-sat (not start!99918) (not b_lambda!20623) b_and!41805 tp_is_empty!29991 (not b!1188444) (not b!1188451) (not b!1188450) (not b!1188452) (not mapNonEmpty!46814) (not b!1188447) (not b!1188455) (not b_next!25461) (not b!1188445) (not b!1188448) (not b!1188453))
(check-sat b_and!41805 (not b_next!25461))
