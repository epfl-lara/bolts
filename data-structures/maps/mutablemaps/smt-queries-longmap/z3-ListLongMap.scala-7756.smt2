; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97318 () Bool)

(assert start!97318)

(declare-fun b_free!23253 () Bool)

(declare-fun b_next!23253 () Bool)

(assert (=> start!97318 (= b_free!23253 (not b_next!23253))))

(declare-fun tp!82059 () Bool)

(declare-fun b_and!37355 () Bool)

(assert (=> start!97318 (= tp!82059 b_and!37355)))

(declare-fun b!1107646 () Bool)

(declare-fun res!739302 () Bool)

(declare-fun e!631990 () Bool)

(assert (=> b!1107646 (=> (not res!739302) (not e!631990))))

(declare-datatypes ((array!71896 0))(
  ( (array!71897 (arr!34597 (Array (_ BitVec 32) (_ BitVec 64))) (size!35134 (_ BitVec 32))) )
))
(declare-fun lt!495654 () array!71896)

(declare-datatypes ((List!24255 0))(
  ( (Nil!24252) (Cons!24251 (h!25460 (_ BitVec 64)) (t!34561 List!24255)) )
))
(declare-fun arrayNoDuplicates!0 (array!71896 (_ BitVec 32) List!24255) Bool)

(assert (=> b!1107646 (= res!739302 (arrayNoDuplicates!0 lt!495654 #b00000000000000000000000000000000 Nil!24252))))

(declare-fun b!1107647 () Bool)

(declare-fun e!631991 () Bool)

(assert (=> b!1107647 (= e!631990 (not e!631991))))

(declare-fun res!739307 () Bool)

(assert (=> b!1107647 (=> res!739307 e!631991)))

(declare-fun _keys!1208 () array!71896)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1107647 (= res!739307 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35134 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107647 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36287 0))(
  ( (Unit!36288) )
))
(declare-fun lt!495653 () Unit!36287)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71896 (_ BitVec 64) (_ BitVec 32)) Unit!36287)

(assert (=> b!1107647 (= lt!495653 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1107648 () Bool)

(declare-fun res!739301 () Bool)

(declare-fun e!631987 () Bool)

(assert (=> b!1107648 (=> (not res!739301) (not e!631987))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107648 (= res!739301 (validMask!0 mask!1564))))

(declare-fun b!1107649 () Bool)

(declare-fun res!739308 () Bool)

(assert (=> b!1107649 (=> (not res!739308) (not e!631987))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41811 0))(
  ( (V!41812 (val!13813 Int)) )
))
(declare-datatypes ((ValueCell!13047 0))(
  ( (ValueCellFull!13047 (v!16447 V!41811)) (EmptyCell!13047) )
))
(declare-datatypes ((array!71898 0))(
  ( (array!71899 (arr!34598 (Array (_ BitVec 32) ValueCell!13047)) (size!35135 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71898)

(assert (=> b!1107649 (= res!739308 (and (= (size!35135 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35134 _keys!1208) (size!35135 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107650 () Bool)

(declare-fun res!739306 () Bool)

(assert (=> b!1107650 (=> (not res!739306) (not e!631987))))

(assert (=> b!1107650 (= res!739306 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24252))))

(declare-fun b!1107651 () Bool)

(declare-fun e!631988 () Bool)

(declare-datatypes ((tuple2!17518 0))(
  ( (tuple2!17519 (_1!8769 (_ BitVec 64)) (_2!8769 V!41811)) )
))
(declare-datatypes ((List!24256 0))(
  ( (Nil!24253) (Cons!24252 (h!25461 tuple2!17518) (t!34562 List!24256)) )
))
(declare-datatypes ((ListLongMap!15499 0))(
  ( (ListLongMap!15500 (toList!7765 List!24256)) )
))
(declare-fun call!46456 () ListLongMap!15499)

(declare-fun call!46457 () ListLongMap!15499)

(assert (=> b!1107651 (= e!631988 (= call!46456 call!46457))))

(declare-fun b!1107652 () Bool)

(assert (=> b!1107652 (= e!631987 e!631990)))

(declare-fun res!739300 () Bool)

(assert (=> b!1107652 (=> (not res!739300) (not e!631990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71896 (_ BitVec 32)) Bool)

(assert (=> b!1107652 (= res!739300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495654 mask!1564))))

(assert (=> b!1107652 (= lt!495654 (array!71897 (store (arr!34597 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35134 _keys!1208)))))

(declare-fun zeroValue!944 () V!41811)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46453 () Bool)

(declare-fun minValue!944 () V!41811)

(declare-fun getCurrentListMapNoExtraKeys!4233 (array!71896 array!71898 (_ BitVec 32) (_ BitVec 32) V!41811 V!41811 (_ BitVec 32) Int) ListLongMap!15499)

(declare-fun dynLambda!2361 (Int (_ BitVec 64)) V!41811)

(assert (=> bm!46453 (= call!46456 (getCurrentListMapNoExtraKeys!4233 lt!495654 (array!71899 (store (arr!34598 _values!996) i!673 (ValueCellFull!13047 (dynLambda!2361 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35135 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107653 () Bool)

(declare-fun -!998 (ListLongMap!15499 (_ BitVec 64)) ListLongMap!15499)

(assert (=> b!1107653 (= e!631988 (= call!46456 (-!998 call!46457 k0!934)))))

(declare-fun b!1107654 () Bool)

(declare-fun res!739303 () Bool)

(assert (=> b!1107654 (=> (not res!739303) (not e!631987))))

(assert (=> b!1107654 (= res!739303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1107655 () Bool)

(declare-fun e!631985 () Bool)

(declare-fun tp_is_empty!27513 () Bool)

(assert (=> b!1107655 (= e!631985 tp_is_empty!27513)))

(declare-fun b!1107656 () Bool)

(assert (=> b!1107656 (= e!631991 true)))

(assert (=> b!1107656 e!631988))

(declare-fun c!109007 () Bool)

(assert (=> b!1107656 (= c!109007 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495652 () Unit!36287)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!254 (array!71896 array!71898 (_ BitVec 32) (_ BitVec 32) V!41811 V!41811 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36287)

(assert (=> b!1107656 (= lt!495652 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!254 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107657 () Bool)

(declare-fun res!739298 () Bool)

(assert (=> b!1107657 (=> (not res!739298) (not e!631987))))

(assert (=> b!1107657 (= res!739298 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35134 _keys!1208))))))

(declare-fun res!739304 () Bool)

(assert (=> start!97318 (=> (not res!739304) (not e!631987))))

(assert (=> start!97318 (= res!739304 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35134 _keys!1208))))))

(assert (=> start!97318 e!631987))

(assert (=> start!97318 tp_is_empty!27513))

(declare-fun array_inv!26490 (array!71896) Bool)

(assert (=> start!97318 (array_inv!26490 _keys!1208)))

(assert (=> start!97318 true))

(assert (=> start!97318 tp!82059))

(declare-fun e!631989 () Bool)

(declare-fun array_inv!26491 (array!71898) Bool)

(assert (=> start!97318 (and (array_inv!26491 _values!996) e!631989)))

(declare-fun b!1107645 () Bool)

(declare-fun res!739299 () Bool)

(assert (=> b!1107645 (=> (not res!739299) (not e!631987))))

(assert (=> b!1107645 (= res!739299 (= (select (arr!34597 _keys!1208) i!673) k0!934))))

(declare-fun b!1107658 () Bool)

(declare-fun e!631984 () Bool)

(assert (=> b!1107658 (= e!631984 tp_is_empty!27513)))

(declare-fun mapIsEmpty!43087 () Bool)

(declare-fun mapRes!43087 () Bool)

(assert (=> mapIsEmpty!43087 mapRes!43087))

(declare-fun mapNonEmpty!43087 () Bool)

(declare-fun tp!82058 () Bool)

(assert (=> mapNonEmpty!43087 (= mapRes!43087 (and tp!82058 e!631984))))

(declare-fun mapRest!43087 () (Array (_ BitVec 32) ValueCell!13047))

(declare-fun mapValue!43087 () ValueCell!13047)

(declare-fun mapKey!43087 () (_ BitVec 32))

(assert (=> mapNonEmpty!43087 (= (arr!34598 _values!996) (store mapRest!43087 mapKey!43087 mapValue!43087))))

(declare-fun b!1107659 () Bool)

(declare-fun res!739305 () Bool)

(assert (=> b!1107659 (=> (not res!739305) (not e!631987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107659 (= res!739305 (validKeyInArray!0 k0!934))))

(declare-fun bm!46454 () Bool)

(assert (=> bm!46454 (= call!46457 (getCurrentListMapNoExtraKeys!4233 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107660 () Bool)

(assert (=> b!1107660 (= e!631989 (and e!631985 mapRes!43087))))

(declare-fun condMapEmpty!43087 () Bool)

(declare-fun mapDefault!43087 () ValueCell!13047)

(assert (=> b!1107660 (= condMapEmpty!43087 (= (arr!34598 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13047)) mapDefault!43087)))))

(assert (= (and start!97318 res!739304) b!1107648))

(assert (= (and b!1107648 res!739301) b!1107649))

(assert (= (and b!1107649 res!739308) b!1107654))

(assert (= (and b!1107654 res!739303) b!1107650))

(assert (= (and b!1107650 res!739306) b!1107657))

(assert (= (and b!1107657 res!739298) b!1107659))

(assert (= (and b!1107659 res!739305) b!1107645))

(assert (= (and b!1107645 res!739299) b!1107652))

(assert (= (and b!1107652 res!739300) b!1107646))

(assert (= (and b!1107646 res!739302) b!1107647))

(assert (= (and b!1107647 (not res!739307)) b!1107656))

(assert (= (and b!1107656 c!109007) b!1107653))

(assert (= (and b!1107656 (not c!109007)) b!1107651))

(assert (= (or b!1107653 b!1107651) bm!46453))

(assert (= (or b!1107653 b!1107651) bm!46454))

(assert (= (and b!1107660 condMapEmpty!43087) mapIsEmpty!43087))

(assert (= (and b!1107660 (not condMapEmpty!43087)) mapNonEmpty!43087))

(get-info :version)

(assert (= (and mapNonEmpty!43087 ((_ is ValueCellFull!13047) mapValue!43087)) b!1107658))

(assert (= (and b!1107660 ((_ is ValueCellFull!13047) mapDefault!43087)) b!1107655))

(assert (= start!97318 b!1107660))

(declare-fun b_lambda!18301 () Bool)

(assert (=> (not b_lambda!18301) (not bm!46453)))

(declare-fun t!34560 () Bool)

(declare-fun tb!8127 () Bool)

(assert (=> (and start!97318 (= defaultEntry!1004 defaultEntry!1004) t!34560) tb!8127))

(declare-fun result!16807 () Bool)

(assert (=> tb!8127 (= result!16807 tp_is_empty!27513)))

(assert (=> bm!46453 t!34560))

(declare-fun b_and!37357 () Bool)

(assert (= b_and!37355 (and (=> t!34560 result!16807) b_and!37357)))

(declare-fun m!1026495 () Bool)

(assert (=> b!1107647 m!1026495))

(declare-fun m!1026497 () Bool)

(assert (=> b!1107647 m!1026497))

(declare-fun m!1026499 () Bool)

(assert (=> b!1107654 m!1026499))

(declare-fun m!1026501 () Bool)

(assert (=> b!1107645 m!1026501))

(declare-fun m!1026503 () Bool)

(assert (=> start!97318 m!1026503))

(declare-fun m!1026505 () Bool)

(assert (=> start!97318 m!1026505))

(declare-fun m!1026507 () Bool)

(assert (=> b!1107646 m!1026507))

(declare-fun m!1026509 () Bool)

(assert (=> b!1107648 m!1026509))

(declare-fun m!1026511 () Bool)

(assert (=> b!1107650 m!1026511))

(declare-fun m!1026513 () Bool)

(assert (=> mapNonEmpty!43087 m!1026513))

(declare-fun m!1026515 () Bool)

(assert (=> b!1107652 m!1026515))

(declare-fun m!1026517 () Bool)

(assert (=> b!1107652 m!1026517))

(declare-fun m!1026519 () Bool)

(assert (=> b!1107659 m!1026519))

(declare-fun m!1026521 () Bool)

(assert (=> bm!46454 m!1026521))

(declare-fun m!1026523 () Bool)

(assert (=> b!1107656 m!1026523))

(declare-fun m!1026525 () Bool)

(assert (=> bm!46453 m!1026525))

(declare-fun m!1026527 () Bool)

(assert (=> bm!46453 m!1026527))

(declare-fun m!1026529 () Bool)

(assert (=> bm!46453 m!1026529))

(declare-fun m!1026531 () Bool)

(assert (=> b!1107653 m!1026531))

(check-sat (not b!1107646) tp_is_empty!27513 (not bm!46454) (not b_next!23253) (not b!1107654) (not b!1107647) (not b!1107653) (not b!1107650) (not b!1107659) (not bm!46453) (not b!1107652) (not start!97318) (not mapNonEmpty!43087) (not b!1107656) (not b_lambda!18301) b_and!37357 (not b!1107648))
(check-sat b_and!37357 (not b_next!23253))
