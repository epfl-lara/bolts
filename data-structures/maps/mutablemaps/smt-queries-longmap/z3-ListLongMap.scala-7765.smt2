; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97372 () Bool)

(assert start!97372)

(declare-fun b_free!23307 () Bool)

(declare-fun b_next!23307 () Bool)

(assert (=> start!97372 (= b_free!23307 (not b_next!23307))))

(declare-fun tp!82221 () Bool)

(declare-fun b_and!37467 () Bool)

(assert (=> start!97372 (= tp!82221 b_and!37467)))

(declare-fun b!1109019 () Bool)

(declare-fun e!632647 () Bool)

(declare-fun e!632650 () Bool)

(assert (=> b!1109019 (= e!632647 e!632650)))

(declare-fun res!740191 () Bool)

(assert (=> b!1109019 (=> (not res!740191) (not e!632650))))

(declare-datatypes ((array!72002 0))(
  ( (array!72003 (arr!34650 (Array (_ BitVec 32) (_ BitVec 64))) (size!35187 (_ BitVec 32))) )
))
(declare-fun lt!495895 () array!72002)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72002 (_ BitVec 32)) Bool)

(assert (=> b!1109019 (= res!740191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495895 mask!1564))))

(declare-fun _keys!1208 () array!72002)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1109019 (= lt!495895 (array!72003 (store (arr!34650 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35187 _keys!1208)))))

(declare-fun b!1109020 () Bool)

(declare-fun res!740194 () Bool)

(assert (=> b!1109020 (=> (not res!740194) (not e!632647))))

(assert (=> b!1109020 (= res!740194 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35187 _keys!1208))))))

(declare-fun e!632651 () Bool)

(declare-datatypes ((V!41883 0))(
  ( (V!41884 (val!13840 Int)) )
))
(declare-datatypes ((tuple2!17562 0))(
  ( (tuple2!17563 (_1!8791 (_ BitVec 64)) (_2!8791 V!41883)) )
))
(declare-datatypes ((List!24299 0))(
  ( (Nil!24296) (Cons!24295 (h!25504 tuple2!17562) (t!34659 List!24299)) )
))
(declare-datatypes ((ListLongMap!15543 0))(
  ( (ListLongMap!15544 (toList!7787 List!24299)) )
))
(declare-fun call!46619 () ListLongMap!15543)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun call!46618 () ListLongMap!15543)

(declare-fun b!1109021 () Bool)

(declare-fun -!1017 (ListLongMap!15543 (_ BitVec 64)) ListLongMap!15543)

(assert (=> b!1109021 (= e!632651 (= call!46618 (-!1017 call!46619 k0!934)))))

(declare-fun b!1109022 () Bool)

(declare-fun res!740197 () Bool)

(assert (=> b!1109022 (=> (not res!740197) (not e!632647))))

(declare-datatypes ((List!24300 0))(
  ( (Nil!24297) (Cons!24296 (h!25505 (_ BitVec 64)) (t!34660 List!24300)) )
))
(declare-fun arrayNoDuplicates!0 (array!72002 (_ BitVec 32) List!24300) Bool)

(assert (=> b!1109022 (= res!740197 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24297))))

(declare-fun zeroValue!944 () V!41883)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13074 0))(
  ( (ValueCellFull!13074 (v!16474 V!41883)) (EmptyCell!13074) )
))
(declare-datatypes ((array!72004 0))(
  ( (array!72005 (arr!34651 (Array (_ BitVec 32) ValueCell!13074)) (size!35188 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72004)

(declare-fun minValue!944 () V!41883)

(declare-fun bm!46615 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4252 (array!72002 array!72004 (_ BitVec 32) (_ BitVec 32) V!41883 V!41883 (_ BitVec 32) Int) ListLongMap!15543)

(assert (=> bm!46615 (= call!46619 (getCurrentListMapNoExtraKeys!4252 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109024 () Bool)

(declare-fun e!632644 () Bool)

(declare-fun tp_is_empty!27567 () Bool)

(assert (=> b!1109024 (= e!632644 tp_is_empty!27567)))

(declare-fun b!1109025 () Bool)

(declare-fun res!740189 () Bool)

(assert (=> b!1109025 (=> (not res!740189) (not e!632647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109025 (= res!740189 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43168 () Bool)

(declare-fun mapRes!43168 () Bool)

(declare-fun tp!82220 () Bool)

(assert (=> mapNonEmpty!43168 (= mapRes!43168 (and tp!82220 e!632644))))

(declare-fun mapValue!43168 () ValueCell!13074)

(declare-fun mapKey!43168 () (_ BitVec 32))

(declare-fun mapRest!43168 () (Array (_ BitVec 32) ValueCell!13074))

(assert (=> mapNonEmpty!43168 (= (arr!34651 _values!996) (store mapRest!43168 mapKey!43168 mapValue!43168))))

(declare-fun bm!46616 () Bool)

(declare-fun dynLambda!2376 (Int (_ BitVec 64)) V!41883)

(assert (=> bm!46616 (= call!46618 (getCurrentListMapNoExtraKeys!4252 lt!495895 (array!72005 (store (arr!34651 _values!996) i!673 (ValueCellFull!13074 (dynLambda!2376 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35188 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109026 () Bool)

(declare-fun e!632648 () Bool)

(assert (=> b!1109026 (= e!632648 true)))

(assert (=> b!1109026 e!632651))

(declare-fun c!109100 () Bool)

(assert (=> b!1109026 (= c!109100 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36323 0))(
  ( (Unit!36324) )
))
(declare-fun lt!495897 () Unit!36323)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!269 (array!72002 array!72004 (_ BitVec 32) (_ BitVec 32) V!41883 V!41883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36323)

(assert (=> b!1109026 (= lt!495897 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!269 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109027 () Bool)

(declare-fun res!740198 () Bool)

(assert (=> b!1109027 (=> (not res!740198) (not e!632647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109027 (= res!740198 (validKeyInArray!0 k0!934))))

(declare-fun b!1109028 () Bool)

(declare-fun e!632646 () Bool)

(declare-fun e!632649 () Bool)

(assert (=> b!1109028 (= e!632646 (and e!632649 mapRes!43168))))

(declare-fun condMapEmpty!43168 () Bool)

(declare-fun mapDefault!43168 () ValueCell!13074)

(assert (=> b!1109028 (= condMapEmpty!43168 (= (arr!34651 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13074)) mapDefault!43168)))))

(declare-fun b!1109029 () Bool)

(assert (=> b!1109029 (= e!632651 (= call!46618 call!46619))))

(declare-fun b!1109030 () Bool)

(declare-fun res!740196 () Bool)

(assert (=> b!1109030 (=> (not res!740196) (not e!632650))))

(assert (=> b!1109030 (= res!740196 (arrayNoDuplicates!0 lt!495895 #b00000000000000000000000000000000 Nil!24297))))

(declare-fun res!740195 () Bool)

(assert (=> start!97372 (=> (not res!740195) (not e!632647))))

(assert (=> start!97372 (= res!740195 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35187 _keys!1208))))))

(assert (=> start!97372 e!632647))

(assert (=> start!97372 tp_is_empty!27567))

(declare-fun array_inv!26530 (array!72002) Bool)

(assert (=> start!97372 (array_inv!26530 _keys!1208)))

(assert (=> start!97372 true))

(assert (=> start!97372 tp!82221))

(declare-fun array_inv!26531 (array!72004) Bool)

(assert (=> start!97372 (and (array_inv!26531 _values!996) e!632646)))

(declare-fun b!1109023 () Bool)

(declare-fun res!740193 () Bool)

(assert (=> b!1109023 (=> (not res!740193) (not e!632647))))

(assert (=> b!1109023 (= res!740193 (and (= (size!35188 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35187 _keys!1208) (size!35188 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109031 () Bool)

(declare-fun res!740192 () Bool)

(assert (=> b!1109031 (=> (not res!740192) (not e!632647))))

(assert (=> b!1109031 (= res!740192 (= (select (arr!34650 _keys!1208) i!673) k0!934))))

(declare-fun b!1109032 () Bool)

(declare-fun res!740199 () Bool)

(assert (=> b!1109032 (=> (not res!740199) (not e!632647))))

(assert (=> b!1109032 (= res!740199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109033 () Bool)

(assert (=> b!1109033 (= e!632650 (not e!632648))))

(declare-fun res!740190 () Bool)

(assert (=> b!1109033 (=> res!740190 e!632648)))

(assert (=> b!1109033 (= res!740190 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35187 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109033 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495896 () Unit!36323)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72002 (_ BitVec 64) (_ BitVec 32)) Unit!36323)

(assert (=> b!1109033 (= lt!495896 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!43168 () Bool)

(assert (=> mapIsEmpty!43168 mapRes!43168))

(declare-fun b!1109034 () Bool)

(assert (=> b!1109034 (= e!632649 tp_is_empty!27567)))

(assert (= (and start!97372 res!740195) b!1109025))

(assert (= (and b!1109025 res!740189) b!1109023))

(assert (= (and b!1109023 res!740193) b!1109032))

(assert (= (and b!1109032 res!740199) b!1109022))

(assert (= (and b!1109022 res!740197) b!1109020))

(assert (= (and b!1109020 res!740194) b!1109027))

(assert (= (and b!1109027 res!740198) b!1109031))

(assert (= (and b!1109031 res!740192) b!1109019))

(assert (= (and b!1109019 res!740191) b!1109030))

(assert (= (and b!1109030 res!740196) b!1109033))

(assert (= (and b!1109033 (not res!740190)) b!1109026))

(assert (= (and b!1109026 c!109100) b!1109021))

(assert (= (and b!1109026 (not c!109100)) b!1109029))

(assert (= (or b!1109021 b!1109029) bm!46616))

(assert (= (or b!1109021 b!1109029) bm!46615))

(assert (= (and b!1109028 condMapEmpty!43168) mapIsEmpty!43168))

(assert (= (and b!1109028 (not condMapEmpty!43168)) mapNonEmpty!43168))

(get-info :version)

(assert (= (and mapNonEmpty!43168 ((_ is ValueCellFull!13074) mapValue!43168)) b!1109024))

(assert (= (and b!1109028 ((_ is ValueCellFull!13074) mapDefault!43168)) b!1109034))

(assert (= start!97372 b!1109028))

(declare-fun b_lambda!18359 () Bool)

(assert (=> (not b_lambda!18359) (not bm!46616)))

(declare-fun t!34658 () Bool)

(declare-fun tb!8181 () Bool)

(assert (=> (and start!97372 (= defaultEntry!1004 defaultEntry!1004) t!34658) tb!8181))

(declare-fun result!16915 () Bool)

(assert (=> tb!8181 (= result!16915 tp_is_empty!27567)))

(assert (=> bm!46616 t!34658))

(declare-fun b_and!37469 () Bool)

(assert (= b_and!37467 (and (=> t!34658 result!16915) b_and!37469)))

(declare-fun m!1027521 () Bool)

(assert (=> b!1109032 m!1027521))

(declare-fun m!1027523 () Bool)

(assert (=> b!1109030 m!1027523))

(declare-fun m!1027525 () Bool)

(assert (=> b!1109025 m!1027525))

(declare-fun m!1027527 () Bool)

(assert (=> b!1109022 m!1027527))

(declare-fun m!1027529 () Bool)

(assert (=> start!97372 m!1027529))

(declare-fun m!1027531 () Bool)

(assert (=> start!97372 m!1027531))

(declare-fun m!1027533 () Bool)

(assert (=> bm!46616 m!1027533))

(declare-fun m!1027535 () Bool)

(assert (=> bm!46616 m!1027535))

(declare-fun m!1027537 () Bool)

(assert (=> bm!46616 m!1027537))

(declare-fun m!1027539 () Bool)

(assert (=> b!1109027 m!1027539))

(declare-fun m!1027541 () Bool)

(assert (=> b!1109033 m!1027541))

(declare-fun m!1027543 () Bool)

(assert (=> b!1109033 m!1027543))

(declare-fun m!1027545 () Bool)

(assert (=> b!1109019 m!1027545))

(declare-fun m!1027547 () Bool)

(assert (=> b!1109019 m!1027547))

(declare-fun m!1027549 () Bool)

(assert (=> b!1109031 m!1027549))

(declare-fun m!1027551 () Bool)

(assert (=> bm!46615 m!1027551))

(declare-fun m!1027553 () Bool)

(assert (=> b!1109026 m!1027553))

(declare-fun m!1027555 () Bool)

(assert (=> mapNonEmpty!43168 m!1027555))

(declare-fun m!1027557 () Bool)

(assert (=> b!1109021 m!1027557))

(check-sat (not b_next!23307) (not b!1109022) (not b!1109032) (not b!1109027) (not b!1109026) (not mapNonEmpty!43168) (not b_lambda!18359) tp_is_empty!27567 (not b!1109030) b_and!37469 (not start!97372) (not b!1109025) (not bm!46615) (not bm!46616) (not b!1109021) (not b!1109019) (not b!1109033))
(check-sat b_and!37469 (not b_next!23307))
