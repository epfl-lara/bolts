; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99378 () Bool)

(assert start!99378)

(declare-fun b_free!24921 () Bool)

(declare-fun b_next!24921 () Bool)

(assert (=> start!99378 (= b_free!24921 (not b_next!24921))))

(declare-fun tp!87477 () Bool)

(declare-fun b_and!40723 () Bool)

(assert (=> start!99378 (= tp!87477 b_and!40723)))

(declare-fun b!1171315 () Bool)

(declare-fun e!665811 () Bool)

(declare-fun e!665808 () Bool)

(assert (=> b!1171315 (= e!665811 e!665808)))

(declare-fun res!777600 () Bool)

(assert (=> b!1171315 (=> res!777600 e!665808)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1171315 (= res!777600 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44395 0))(
  ( (V!44396 (val!14782 Int)) )
))
(declare-fun zeroValue!944 () V!44395)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18974 0))(
  ( (tuple2!18975 (_1!9497 (_ BitVec 64)) (_2!9497 V!44395)) )
))
(declare-datatypes ((List!25746 0))(
  ( (Nil!25743) (Cons!25742 (h!26951 tuple2!18974) (t!37666 List!25746)) )
))
(declare-datatypes ((ListLongMap!16955 0))(
  ( (ListLongMap!16956 (toList!8493 List!25746)) )
))
(declare-fun lt!527616 () ListLongMap!16955)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14016 0))(
  ( (ValueCellFull!14016 (v!17421 V!44395)) (EmptyCell!14016) )
))
(declare-datatypes ((array!75678 0))(
  ( (array!75679 (arr!36485 (Array (_ BitVec 32) ValueCell!14016)) (size!37022 (_ BitVec 32))) )
))
(declare-fun lt!527623 () array!75678)

(declare-datatypes ((array!75680 0))(
  ( (array!75681 (arr!36486 (Array (_ BitVec 32) (_ BitVec 64))) (size!37023 (_ BitVec 32))) )
))
(declare-fun lt!527615 () array!75680)

(declare-fun minValue!944 () V!44395)

(declare-fun getCurrentListMapNoExtraKeys!4925 (array!75680 array!75678 (_ BitVec 32) (_ BitVec 32) V!44395 V!44395 (_ BitVec 32) Int) ListLongMap!16955)

(assert (=> b!1171315 (= lt!527616 (getCurrentListMapNoExtraKeys!4925 lt!527615 lt!527623 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527624 () V!44395)

(declare-fun _values!996 () array!75678)

(assert (=> b!1171315 (= lt!527623 (array!75679 (store (arr!36485 _values!996) i!673 (ValueCellFull!14016 lt!527624)) (size!37022 _values!996)))))

(declare-fun dynLambda!2913 (Int (_ BitVec 64)) V!44395)

(assert (=> b!1171315 (= lt!527624 (dynLambda!2913 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75680)

(declare-fun lt!527625 () ListLongMap!16955)

(assert (=> b!1171315 (= lt!527625 (getCurrentListMapNoExtraKeys!4925 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1171316 () Bool)

(declare-fun res!777597 () Bool)

(declare-fun e!665812 () Bool)

(assert (=> b!1171316 (=> (not res!777597) (not e!665812))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171316 (= res!777597 (validKeyInArray!0 k0!934))))

(declare-fun b!1171317 () Bool)

(declare-fun res!777596 () Bool)

(assert (=> b!1171317 (=> (not res!777596) (not e!665812))))

(assert (=> b!1171317 (= res!777596 (and (= (size!37022 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37023 _keys!1208) (size!37022 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171318 () Bool)

(declare-fun e!665800 () Bool)

(assert (=> b!1171318 (= e!665800 (not e!665811))))

(declare-fun res!777606 () Bool)

(assert (=> b!1171318 (=> res!777606 e!665811)))

(assert (=> b!1171318 (= res!777606 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171318 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38532 0))(
  ( (Unit!38533) )
))
(declare-fun lt!527618 () Unit!38532)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75680 (_ BitVec 64) (_ BitVec 32)) Unit!38532)

(assert (=> b!1171318 (= lt!527618 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1171319 () Bool)

(declare-fun res!777595 () Bool)

(assert (=> b!1171319 (=> (not res!777595) (not e!665812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171319 (= res!777595 (validMask!0 mask!1564))))

(declare-fun b!1171321 () Bool)

(declare-fun res!777598 () Bool)

(assert (=> b!1171321 (=> (not res!777598) (not e!665812))))

(assert (=> b!1171321 (= res!777598 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37023 _keys!1208))))))

(declare-fun b!1171322 () Bool)

(declare-fun e!665810 () Bool)

(declare-fun tp_is_empty!29451 () Bool)

(assert (=> b!1171322 (= e!665810 tp_is_empty!29451)))

(declare-fun b!1171323 () Bool)

(declare-fun res!777607 () Bool)

(declare-fun e!665809 () Bool)

(assert (=> b!1171323 (=> res!777607 e!665809)))

(declare-datatypes ((List!25747 0))(
  ( (Nil!25744) (Cons!25743 (h!26952 (_ BitVec 64)) (t!37667 List!25747)) )
))
(declare-fun contains!6864 (List!25747 (_ BitVec 64)) Bool)

(assert (=> b!1171323 (= res!777607 (contains!6864 Nil!25744 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171324 () Bool)

(declare-fun res!777609 () Bool)

(assert (=> b!1171324 (=> (not res!777609) (not e!665812))))

(assert (=> b!1171324 (= res!777609 (= (select (arr!36486 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!46004 () Bool)

(declare-fun mapRes!46004 () Bool)

(declare-fun tp!87478 () Bool)

(declare-fun e!665801 () Bool)

(assert (=> mapNonEmpty!46004 (= mapRes!46004 (and tp!87478 e!665801))))

(declare-fun mapKey!46004 () (_ BitVec 32))

(declare-fun mapRest!46004 () (Array (_ BitVec 32) ValueCell!14016))

(declare-fun mapValue!46004 () ValueCell!14016)

(assert (=> mapNonEmpty!46004 (= (arr!36485 _values!996) (store mapRest!46004 mapKey!46004 mapValue!46004))))

(declare-fun b!1171325 () Bool)

(declare-fun e!665807 () Bool)

(assert (=> b!1171325 (= e!665807 (and e!665810 mapRes!46004))))

(declare-fun condMapEmpty!46004 () Bool)

(declare-fun mapDefault!46004 () ValueCell!14016)

(assert (=> b!1171325 (= condMapEmpty!46004 (= (arr!36485 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14016)) mapDefault!46004)))))

(declare-fun mapIsEmpty!46004 () Bool)

(assert (=> mapIsEmpty!46004 mapRes!46004))

(declare-fun b!1171326 () Bool)

(declare-fun res!777611 () Bool)

(assert (=> b!1171326 (=> (not res!777611) (not e!665800))))

(declare-fun arrayNoDuplicates!0 (array!75680 (_ BitVec 32) List!25747) Bool)

(assert (=> b!1171326 (= res!777611 (arrayNoDuplicates!0 lt!527615 #b00000000000000000000000000000000 Nil!25744))))

(declare-fun b!1171327 () Bool)

(declare-fun res!777602 () Bool)

(assert (=> b!1171327 (=> (not res!777602) (not e!665812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75680 (_ BitVec 32)) Bool)

(assert (=> b!1171327 (= res!777602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171328 () Bool)

(declare-fun e!665806 () Bool)

(declare-fun e!665803 () Bool)

(assert (=> b!1171328 (= e!665806 e!665803)))

(declare-fun res!777610 () Bool)

(assert (=> b!1171328 (=> res!777610 e!665803)))

(assert (=> b!1171328 (= res!777610 (not (= (select (arr!36486 _keys!1208) from!1455) k0!934)))))

(declare-fun e!665804 () Bool)

(assert (=> b!1171328 e!665804))

(declare-fun res!777605 () Bool)

(assert (=> b!1171328 (=> (not res!777605) (not e!665804))))

(declare-fun lt!527620 () ListLongMap!16955)

(declare-fun +!3733 (ListLongMap!16955 tuple2!18974) ListLongMap!16955)

(declare-fun get!18640 (ValueCell!14016 V!44395) V!44395)

(assert (=> b!1171328 (= res!777605 (= lt!527616 (+!3733 lt!527620 (tuple2!18975 (select (arr!36486 _keys!1208) from!1455) (get!18640 (select (arr!36485 _values!996) from!1455) lt!527624)))))))

(declare-fun res!777613 () Bool)

(assert (=> start!99378 (=> (not res!777613) (not e!665812))))

(assert (=> start!99378 (= res!777613 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37023 _keys!1208))))))

(assert (=> start!99378 e!665812))

(assert (=> start!99378 tp_is_empty!29451))

(declare-fun array_inv!27766 (array!75680) Bool)

(assert (=> start!99378 (array_inv!27766 _keys!1208)))

(assert (=> start!99378 true))

(assert (=> start!99378 tp!87477))

(declare-fun array_inv!27767 (array!75678) Bool)

(assert (=> start!99378 (and (array_inv!27767 _values!996) e!665807)))

(declare-fun b!1171320 () Bool)

(assert (=> b!1171320 (= e!665809 true)))

(declare-fun lt!527613 () Bool)

(assert (=> b!1171320 (= lt!527613 (contains!6864 Nil!25744 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171329 () Bool)

(declare-fun res!777604 () Bool)

(assert (=> b!1171329 (=> (not res!777604) (not e!665812))))

(assert (=> b!1171329 (= res!777604 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25744))))

(declare-fun b!1171330 () Bool)

(declare-fun res!777601 () Bool)

(assert (=> b!1171330 (=> res!777601 e!665809)))

(declare-fun noDuplicate!1629 (List!25747) Bool)

(assert (=> b!1171330 (= res!777601 (not (noDuplicate!1629 Nil!25744)))))

(declare-fun b!1171331 () Bool)

(assert (=> b!1171331 (= e!665801 tp_is_empty!29451)))

(declare-fun b!1171332 () Bool)

(assert (=> b!1171332 (= e!665803 e!665809)))

(declare-fun res!777612 () Bool)

(assert (=> b!1171332 (=> res!777612 e!665809)))

(assert (=> b!1171332 (= res!777612 (or (bvsge (size!37023 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37023 _keys!1208)) (bvsge from!1455 (size!37023 _keys!1208))))))

(assert (=> b!1171332 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25744)))

(declare-fun lt!527614 () Unit!38532)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75680 (_ BitVec 32) (_ BitVec 32)) Unit!38532)

(assert (=> b!1171332 (= lt!527614 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1171332 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527622 () Unit!38532)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75680 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38532)

(assert (=> b!1171332 (= lt!527622 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171333 () Bool)

(assert (=> b!1171333 (= e!665808 e!665806)))

(declare-fun res!777603 () Bool)

(assert (=> b!1171333 (=> res!777603 e!665806)))

(assert (=> b!1171333 (= res!777603 (not (validKeyInArray!0 (select (arr!36486 _keys!1208) from!1455))))))

(declare-fun lt!527619 () ListLongMap!16955)

(assert (=> b!1171333 (= lt!527619 lt!527620)))

(declare-fun lt!527617 () ListLongMap!16955)

(declare-fun -!1510 (ListLongMap!16955 (_ BitVec 64)) ListLongMap!16955)

(assert (=> b!1171333 (= lt!527620 (-!1510 lt!527617 k0!934))))

(assert (=> b!1171333 (= lt!527619 (getCurrentListMapNoExtraKeys!4925 lt!527615 lt!527623 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171333 (= lt!527617 (getCurrentListMapNoExtraKeys!4925 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527621 () Unit!38532)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!734 (array!75680 array!75678 (_ BitVec 32) (_ BitVec 32) V!44395 V!44395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38532)

(assert (=> b!1171333 (= lt!527621 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!734 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!665805 () Bool)

(declare-fun b!1171334 () Bool)

(assert (=> b!1171334 (= e!665805 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1171335 () Bool)

(assert (=> b!1171335 (= e!665812 e!665800)))

(declare-fun res!777608 () Bool)

(assert (=> b!1171335 (=> (not res!777608) (not e!665800))))

(assert (=> b!1171335 (= res!777608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527615 mask!1564))))

(assert (=> b!1171335 (= lt!527615 (array!75681 (store (arr!36486 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37023 _keys!1208)))))

(declare-fun b!1171336 () Bool)

(assert (=> b!1171336 (= e!665804 e!665805)))

(declare-fun res!777599 () Bool)

(assert (=> b!1171336 (=> res!777599 e!665805)))

(assert (=> b!1171336 (= res!777599 (not (= (select (arr!36486 _keys!1208) from!1455) k0!934)))))

(assert (= (and start!99378 res!777613) b!1171319))

(assert (= (and b!1171319 res!777595) b!1171317))

(assert (= (and b!1171317 res!777596) b!1171327))

(assert (= (and b!1171327 res!777602) b!1171329))

(assert (= (and b!1171329 res!777604) b!1171321))

(assert (= (and b!1171321 res!777598) b!1171316))

(assert (= (and b!1171316 res!777597) b!1171324))

(assert (= (and b!1171324 res!777609) b!1171335))

(assert (= (and b!1171335 res!777608) b!1171326))

(assert (= (and b!1171326 res!777611) b!1171318))

(assert (= (and b!1171318 (not res!777606)) b!1171315))

(assert (= (and b!1171315 (not res!777600)) b!1171333))

(assert (= (and b!1171333 (not res!777603)) b!1171328))

(assert (= (and b!1171328 res!777605) b!1171336))

(assert (= (and b!1171336 (not res!777599)) b!1171334))

(assert (= (and b!1171328 (not res!777610)) b!1171332))

(assert (= (and b!1171332 (not res!777612)) b!1171330))

(assert (= (and b!1171330 (not res!777601)) b!1171323))

(assert (= (and b!1171323 (not res!777607)) b!1171320))

(assert (= (and b!1171325 condMapEmpty!46004) mapIsEmpty!46004))

(assert (= (and b!1171325 (not condMapEmpty!46004)) mapNonEmpty!46004))

(get-info :version)

(assert (= (and mapNonEmpty!46004 ((_ is ValueCellFull!14016) mapValue!46004)) b!1171331))

(assert (= (and b!1171325 ((_ is ValueCellFull!14016) mapDefault!46004)) b!1171322))

(assert (= start!99378 b!1171325))

(declare-fun b_lambda!20083 () Bool)

(assert (=> (not b_lambda!20083) (not b!1171315)))

(declare-fun t!37665 () Bool)

(declare-fun tb!9741 () Bool)

(assert (=> (and start!99378 (= defaultEntry!1004 defaultEntry!1004) t!37665) tb!9741))

(declare-fun result!20041 () Bool)

(assert (=> tb!9741 (= result!20041 tp_is_empty!29451)))

(assert (=> b!1171315 t!37665))

(declare-fun b_and!40725 () Bool)

(assert (= b_and!40723 (and (=> t!37665 result!20041) b_and!40725)))

(declare-fun m!1079185 () Bool)

(assert (=> mapNonEmpty!46004 m!1079185))

(declare-fun m!1079187 () Bool)

(assert (=> b!1171320 m!1079187))

(declare-fun m!1079189 () Bool)

(assert (=> b!1171334 m!1079189))

(declare-fun m!1079191 () Bool)

(assert (=> b!1171318 m!1079191))

(declare-fun m!1079193 () Bool)

(assert (=> b!1171318 m!1079193))

(declare-fun m!1079195 () Bool)

(assert (=> b!1171335 m!1079195))

(declare-fun m!1079197 () Bool)

(assert (=> b!1171335 m!1079197))

(declare-fun m!1079199 () Bool)

(assert (=> b!1171333 m!1079199))

(declare-fun m!1079201 () Bool)

(assert (=> b!1171333 m!1079201))

(declare-fun m!1079203 () Bool)

(assert (=> b!1171333 m!1079203))

(declare-fun m!1079205 () Bool)

(assert (=> b!1171333 m!1079205))

(declare-fun m!1079207 () Bool)

(assert (=> b!1171333 m!1079207))

(declare-fun m!1079209 () Bool)

(assert (=> b!1171333 m!1079209))

(assert (=> b!1171333 m!1079207))

(declare-fun m!1079211 () Bool)

(assert (=> b!1171332 m!1079211))

(declare-fun m!1079213 () Bool)

(assert (=> b!1171332 m!1079213))

(declare-fun m!1079215 () Bool)

(assert (=> b!1171332 m!1079215))

(declare-fun m!1079217 () Bool)

(assert (=> b!1171332 m!1079217))

(declare-fun m!1079219 () Bool)

(assert (=> b!1171316 m!1079219))

(assert (=> b!1171328 m!1079207))

(declare-fun m!1079221 () Bool)

(assert (=> b!1171328 m!1079221))

(assert (=> b!1171328 m!1079221))

(declare-fun m!1079223 () Bool)

(assert (=> b!1171328 m!1079223))

(declare-fun m!1079225 () Bool)

(assert (=> b!1171328 m!1079225))

(declare-fun m!1079227 () Bool)

(assert (=> b!1171329 m!1079227))

(declare-fun m!1079229 () Bool)

(assert (=> b!1171326 m!1079229))

(assert (=> b!1171336 m!1079207))

(declare-fun m!1079231 () Bool)

(assert (=> b!1171315 m!1079231))

(declare-fun m!1079233 () Bool)

(assert (=> b!1171315 m!1079233))

(declare-fun m!1079235 () Bool)

(assert (=> b!1171315 m!1079235))

(declare-fun m!1079237 () Bool)

(assert (=> b!1171315 m!1079237))

(declare-fun m!1079239 () Bool)

(assert (=> start!99378 m!1079239))

(declare-fun m!1079241 () Bool)

(assert (=> start!99378 m!1079241))

(declare-fun m!1079243 () Bool)

(assert (=> b!1171319 m!1079243))

(declare-fun m!1079245 () Bool)

(assert (=> b!1171330 m!1079245))

(declare-fun m!1079247 () Bool)

(assert (=> b!1171323 m!1079247))

(declare-fun m!1079249 () Bool)

(assert (=> b!1171327 m!1079249))

(declare-fun m!1079251 () Bool)

(assert (=> b!1171324 m!1079251))

(check-sat (not b!1171323) (not mapNonEmpty!46004) (not b!1171319) (not b!1171332) (not b_next!24921) (not b!1171328) (not b!1171333) (not b!1171315) (not b!1171329) (not b_lambda!20083) (not b!1171320) (not b!1171335) (not b!1171327) (not b!1171318) (not b!1171316) (not b!1171330) (not start!99378) b_and!40725 (not b!1171326) tp_is_empty!29451 (not b!1171334))
(check-sat b_and!40725 (not b_next!24921))
