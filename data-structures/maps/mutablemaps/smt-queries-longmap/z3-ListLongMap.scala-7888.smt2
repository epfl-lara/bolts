; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98110 () Bool)

(assert start!98110)

(declare-fun b_free!23775 () Bool)

(declare-fun b_next!23775 () Bool)

(assert (=> start!98110 (= b_free!23775 (not b_next!23775))))

(declare-fun tp!84029 () Bool)

(declare-fun b_and!38355 () Bool)

(assert (=> start!98110 (= tp!84029 b_and!38355)))

(declare-fun b!1126264 () Bool)

(declare-fun e!641121 () Bool)

(declare-fun tp_is_empty!28305 () Bool)

(assert (=> b!1126264 (= e!641121 tp_is_empty!28305)))

(declare-fun b!1126265 () Bool)

(declare-fun res!752681 () Bool)

(declare-fun e!641122 () Bool)

(assert (=> b!1126265 (=> (not res!752681) (not e!641122))))

(declare-datatypes ((array!73432 0))(
  ( (array!73433 (arr!35365 (Array (_ BitVec 32) (_ BitVec 64))) (size!35902 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73432)

(declare-datatypes ((List!24777 0))(
  ( (Nil!24774) (Cons!24773 (h!25982 (_ BitVec 64)) (t!35551 List!24777)) )
))
(declare-fun arrayNoDuplicates!0 (array!73432 (_ BitVec 32) List!24777) Bool)

(assert (=> b!1126265 (= res!752681 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24774))))

(declare-fun b!1126266 () Bool)

(declare-fun res!752677 () Bool)

(assert (=> b!1126266 (=> (not res!752677) (not e!641122))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1126266 (= res!752677 (= (select (arr!35365 _keys!1208) i!673) k0!934))))

(declare-fun b!1126267 () Bool)

(declare-fun e!641118 () Bool)

(assert (=> b!1126267 (= e!641118 tp_is_empty!28305)))

(declare-fun b!1126268 () Bool)

(declare-fun res!752685 () Bool)

(assert (=> b!1126268 (=> (not res!752685) (not e!641122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126268 (= res!752685 (validKeyInArray!0 k0!934))))

(declare-fun b!1126269 () Bool)

(declare-fun e!641123 () Bool)

(declare-fun e!641119 () Bool)

(assert (=> b!1126269 (= e!641123 (not e!641119))))

(declare-fun res!752684 () Bool)

(assert (=> b!1126269 (=> res!752684 e!641119)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1126269 (= res!752684 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126269 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36855 0))(
  ( (Unit!36856) )
))
(declare-fun lt!500146 () Unit!36855)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73432 (_ BitVec 64) (_ BitVec 32)) Unit!36855)

(assert (=> b!1126269 (= lt!500146 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!42867 0))(
  ( (V!42868 (val!14209 Int)) )
))
(declare-datatypes ((tuple2!17950 0))(
  ( (tuple2!17951 (_1!8985 (_ BitVec 64)) (_2!8985 V!42867)) )
))
(declare-datatypes ((List!24778 0))(
  ( (Nil!24775) (Cons!24774 (h!25983 tuple2!17950) (t!35552 List!24778)) )
))
(declare-datatypes ((ListLongMap!15931 0))(
  ( (ListLongMap!15932 (toList!7981 List!24778)) )
))
(declare-fun call!47609 () ListLongMap!15931)

(declare-fun b!1126270 () Bool)

(declare-fun call!47608 () ListLongMap!15931)

(declare-fun e!641116 () Bool)

(declare-fun -!1123 (ListLongMap!15931 (_ BitVec 64)) ListLongMap!15931)

(assert (=> b!1126270 (= e!641116 (= call!47609 (-!1123 call!47608 k0!934)))))

(declare-fun res!752673 () Bool)

(assert (=> start!98110 (=> (not res!752673) (not e!641122))))

(assert (=> start!98110 (= res!752673 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35902 _keys!1208))))))

(assert (=> start!98110 e!641122))

(assert (=> start!98110 tp_is_empty!28305))

(declare-fun array_inv!27012 (array!73432) Bool)

(assert (=> start!98110 (array_inv!27012 _keys!1208)))

(assert (=> start!98110 true))

(assert (=> start!98110 tp!84029))

(declare-datatypes ((ValueCell!13443 0))(
  ( (ValueCellFull!13443 (v!16843 V!42867)) (EmptyCell!13443) )
))
(declare-datatypes ((array!73434 0))(
  ( (array!73435 (arr!35366 (Array (_ BitVec 32) ValueCell!13443)) (size!35903 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73434)

(declare-fun e!641115 () Bool)

(declare-fun array_inv!27013 (array!73434) Bool)

(assert (=> start!98110 (and (array_inv!27013 _values!996) e!641115)))

(declare-fun b!1126271 () Bool)

(declare-fun e!641120 () Bool)

(assert (=> b!1126271 (= e!641120 true)))

(declare-fun zeroValue!944 () V!42867)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!500150 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42867)

(declare-fun contains!6489 (ListLongMap!15931 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4440 (array!73432 array!73434 (_ BitVec 32) (_ BitVec 32) V!42867 V!42867 (_ BitVec 32) Int) ListLongMap!15931)

(assert (=> b!1126271 (= lt!500150 (contains!6489 (getCurrentListMapNoExtraKeys!4440 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1126272 () Bool)

(declare-fun res!752682 () Bool)

(assert (=> b!1126272 (=> (not res!752682) (not e!641123))))

(declare-fun lt!500147 () array!73432)

(assert (=> b!1126272 (= res!752682 (arrayNoDuplicates!0 lt!500147 #b00000000000000000000000000000000 Nil!24774))))

(declare-fun b!1126273 () Bool)

(declare-fun mapRes!44275 () Bool)

(assert (=> b!1126273 (= e!641115 (and e!641121 mapRes!44275))))

(declare-fun condMapEmpty!44275 () Bool)

(declare-fun mapDefault!44275 () ValueCell!13443)

(assert (=> b!1126273 (= condMapEmpty!44275 (= (arr!35366 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13443)) mapDefault!44275)))))

(declare-fun b!1126274 () Bool)

(declare-fun res!752678 () Bool)

(assert (=> b!1126274 (=> (not res!752678) (not e!641122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126274 (= res!752678 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44275 () Bool)

(declare-fun tp!84030 () Bool)

(assert (=> mapNonEmpty!44275 (= mapRes!44275 (and tp!84030 e!641118))))

(declare-fun mapKey!44275 () (_ BitVec 32))

(declare-fun mapValue!44275 () ValueCell!13443)

(declare-fun mapRest!44275 () (Array (_ BitVec 32) ValueCell!13443))

(assert (=> mapNonEmpty!44275 (= (arr!35366 _values!996) (store mapRest!44275 mapKey!44275 mapValue!44275))))

(declare-fun b!1126275 () Bool)

(declare-fun res!752674 () Bool)

(assert (=> b!1126275 (=> (not res!752674) (not e!641122))))

(assert (=> b!1126275 (= res!752674 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35902 _keys!1208))))))

(declare-fun bm!47605 () Bool)

(assert (=> bm!47605 (= call!47608 (getCurrentListMapNoExtraKeys!4440 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!500151 () array!73434)

(declare-fun bm!47606 () Bool)

(assert (=> bm!47606 (= call!47609 (getCurrentListMapNoExtraKeys!4440 lt!500147 lt!500151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126276 () Bool)

(declare-fun e!641114 () Bool)

(assert (=> b!1126276 (= e!641114 e!641120)))

(declare-fun res!752675 () Bool)

(assert (=> b!1126276 (=> res!752675 e!641120)))

(assert (=> b!1126276 (= res!752675 (not (= (select (arr!35365 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1126276 e!641116))

(declare-fun c!109613 () Bool)

(assert (=> b!1126276 (= c!109613 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500148 () Unit!36855)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!377 (array!73432 array!73434 (_ BitVec 32) (_ BitVec 32) V!42867 V!42867 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36855)

(assert (=> b!1126276 (= lt!500148 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!377 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126277 () Bool)

(assert (=> b!1126277 (= e!641119 e!641114)))

(declare-fun res!752683 () Bool)

(assert (=> b!1126277 (=> res!752683 e!641114)))

(assert (=> b!1126277 (= res!752683 (not (= from!1455 i!673)))))

(declare-fun lt!500145 () ListLongMap!15931)

(assert (=> b!1126277 (= lt!500145 (getCurrentListMapNoExtraKeys!4440 lt!500147 lt!500151 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2521 (Int (_ BitVec 64)) V!42867)

(assert (=> b!1126277 (= lt!500151 (array!73435 (store (arr!35366 _values!996) i!673 (ValueCellFull!13443 (dynLambda!2521 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35903 _values!996)))))

(declare-fun lt!500149 () ListLongMap!15931)

(assert (=> b!1126277 (= lt!500149 (getCurrentListMapNoExtraKeys!4440 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!44275 () Bool)

(assert (=> mapIsEmpty!44275 mapRes!44275))

(declare-fun b!1126278 () Bool)

(declare-fun res!752680 () Bool)

(assert (=> b!1126278 (=> (not res!752680) (not e!641122))))

(assert (=> b!1126278 (= res!752680 (and (= (size!35903 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35902 _keys!1208) (size!35903 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126279 () Bool)

(assert (=> b!1126279 (= e!641122 e!641123)))

(declare-fun res!752676 () Bool)

(assert (=> b!1126279 (=> (not res!752676) (not e!641123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73432 (_ BitVec 32)) Bool)

(assert (=> b!1126279 (= res!752676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500147 mask!1564))))

(assert (=> b!1126279 (= lt!500147 (array!73433 (store (arr!35365 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35902 _keys!1208)))))

(declare-fun b!1126280 () Bool)

(declare-fun res!752679 () Bool)

(assert (=> b!1126280 (=> (not res!752679) (not e!641122))))

(assert (=> b!1126280 (= res!752679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1126281 () Bool)

(assert (=> b!1126281 (= e!641116 (= call!47609 call!47608))))

(assert (= (and start!98110 res!752673) b!1126274))

(assert (= (and b!1126274 res!752678) b!1126278))

(assert (= (and b!1126278 res!752680) b!1126280))

(assert (= (and b!1126280 res!752679) b!1126265))

(assert (= (and b!1126265 res!752681) b!1126275))

(assert (= (and b!1126275 res!752674) b!1126268))

(assert (= (and b!1126268 res!752685) b!1126266))

(assert (= (and b!1126266 res!752677) b!1126279))

(assert (= (and b!1126279 res!752676) b!1126272))

(assert (= (and b!1126272 res!752682) b!1126269))

(assert (= (and b!1126269 (not res!752684)) b!1126277))

(assert (= (and b!1126277 (not res!752683)) b!1126276))

(assert (= (and b!1126276 c!109613) b!1126270))

(assert (= (and b!1126276 (not c!109613)) b!1126281))

(assert (= (or b!1126270 b!1126281) bm!47606))

(assert (= (or b!1126270 b!1126281) bm!47605))

(assert (= (and b!1126276 (not res!752675)) b!1126271))

(assert (= (and b!1126273 condMapEmpty!44275) mapIsEmpty!44275))

(assert (= (and b!1126273 (not condMapEmpty!44275)) mapNonEmpty!44275))

(get-info :version)

(assert (= (and mapNonEmpty!44275 ((_ is ValueCellFull!13443) mapValue!44275)) b!1126267))

(assert (= (and b!1126273 ((_ is ValueCellFull!13443) mapDefault!44275)) b!1126264))

(assert (= start!98110 b!1126273))

(declare-fun b_lambda!18779 () Bool)

(assert (=> (not b_lambda!18779) (not b!1126277)))

(declare-fun t!35550 () Bool)

(declare-fun tb!8595 () Bool)

(assert (=> (and start!98110 (= defaultEntry!1004 defaultEntry!1004) t!35550) tb!8595))

(declare-fun result!17743 () Bool)

(assert (=> tb!8595 (= result!17743 tp_is_empty!28305)))

(assert (=> b!1126277 t!35550))

(declare-fun b_and!38357 () Bool)

(assert (= b_and!38355 (and (=> t!35550 result!17743) b_and!38357)))

(declare-fun m!1040371 () Bool)

(assert (=> b!1126265 m!1040371))

(declare-fun m!1040373 () Bool)

(assert (=> b!1126279 m!1040373))

(declare-fun m!1040375 () Bool)

(assert (=> b!1126279 m!1040375))

(declare-fun m!1040377 () Bool)

(assert (=> b!1126271 m!1040377))

(assert (=> b!1126271 m!1040377))

(declare-fun m!1040379 () Bool)

(assert (=> b!1126271 m!1040379))

(declare-fun m!1040381 () Bool)

(assert (=> b!1126277 m!1040381))

(declare-fun m!1040383 () Bool)

(assert (=> b!1126277 m!1040383))

(declare-fun m!1040385 () Bool)

(assert (=> b!1126277 m!1040385))

(declare-fun m!1040387 () Bool)

(assert (=> b!1126277 m!1040387))

(declare-fun m!1040389 () Bool)

(assert (=> b!1126280 m!1040389))

(assert (=> bm!47605 m!1040377))

(declare-fun m!1040391 () Bool)

(assert (=> b!1126269 m!1040391))

(declare-fun m!1040393 () Bool)

(assert (=> b!1126269 m!1040393))

(declare-fun m!1040395 () Bool)

(assert (=> b!1126268 m!1040395))

(declare-fun m!1040397 () Bool)

(assert (=> b!1126272 m!1040397))

(declare-fun m!1040399 () Bool)

(assert (=> b!1126266 m!1040399))

(declare-fun m!1040401 () Bool)

(assert (=> b!1126270 m!1040401))

(declare-fun m!1040403 () Bool)

(assert (=> start!98110 m!1040403))

(declare-fun m!1040405 () Bool)

(assert (=> start!98110 m!1040405))

(declare-fun m!1040407 () Bool)

(assert (=> mapNonEmpty!44275 m!1040407))

(declare-fun m!1040409 () Bool)

(assert (=> bm!47606 m!1040409))

(declare-fun m!1040411 () Bool)

(assert (=> b!1126276 m!1040411))

(declare-fun m!1040413 () Bool)

(assert (=> b!1126276 m!1040413))

(declare-fun m!1040415 () Bool)

(assert (=> b!1126274 m!1040415))

(check-sat (not b!1126277) tp_is_empty!28305 (not b!1126280) (not b!1126269) (not b!1126274) (not mapNonEmpty!44275) (not b!1126270) (not b!1126272) (not b!1126279) (not b!1126276) (not b_next!23775) (not b!1126271) (not bm!47606) (not bm!47605) (not b_lambda!18779) (not start!98110) b_and!38357 (not b!1126265) (not b!1126268))
(check-sat b_and!38357 (not b_next!23775))
