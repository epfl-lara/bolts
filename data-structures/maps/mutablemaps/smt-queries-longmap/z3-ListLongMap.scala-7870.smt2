; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98002 () Bool)

(assert start!98002)

(declare-fun b_free!23667 () Bool)

(declare-fun b_next!23667 () Bool)

(assert (=> start!98002 (= b_free!23667 (not b_next!23667))))

(declare-fun tp!83705 () Bool)

(declare-fun b_and!38139 () Bool)

(assert (=> start!98002 (= tp!83705 b_and!38139)))

(declare-fun mapNonEmpty!44113 () Bool)

(declare-fun mapRes!44113 () Bool)

(declare-fun tp!83706 () Bool)

(declare-fun e!639405 () Bool)

(assert (=> mapNonEmpty!44113 (= mapRes!44113 (and tp!83706 e!639405))))

(declare-datatypes ((V!42723 0))(
  ( (V!42724 (val!14155 Int)) )
))
(declare-datatypes ((ValueCell!13389 0))(
  ( (ValueCellFull!13389 (v!16789 V!42723)) (EmptyCell!13389) )
))
(declare-fun mapRest!44113 () (Array (_ BitVec 32) ValueCell!13389))

(declare-fun mapValue!44113 () ValueCell!13389)

(declare-datatypes ((array!73220 0))(
  ( (array!73221 (arr!35259 (Array (_ BitVec 32) ValueCell!13389)) (size!35796 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73220)

(declare-fun mapKey!44113 () (_ BitVec 32))

(assert (=> mapNonEmpty!44113 (= (arr!35259 _values!996) (store mapRest!44113 mapKey!44113 mapValue!44113))))

(declare-fun b!1123051 () Bool)

(declare-fun e!639411 () Bool)

(declare-fun e!639413 () Bool)

(assert (=> b!1123051 (= e!639411 e!639413)))

(declare-fun res!750387 () Bool)

(assert (=> b!1123051 (=> res!750387 e!639413)))

(declare-datatypes ((array!73222 0))(
  ( (array!73223 (arr!35260 (Array (_ BitVec 32) (_ BitVec 64))) (size!35797 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73222)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1123051 (= res!750387 (not (= (select (arr!35260 _keys!1208) from!1455) k0!934)))))

(declare-fun e!639408 () Bool)

(assert (=> b!1123051 e!639408))

(declare-fun c!109451 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1123051 (= c!109451 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42723)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36767 0))(
  ( (Unit!36768) )
))
(declare-fun lt!498931 () Unit!36767)

(declare-fun minValue!944 () V!42723)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!343 (array!73222 array!73220 (_ BitVec 32) (_ BitVec 32) V!42723 V!42723 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36767)

(assert (=> b!1123051 (= lt!498931 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!343 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123052 () Bool)

(declare-fun res!750383 () Bool)

(declare-fun e!639404 () Bool)

(assert (=> b!1123052 (=> (not res!750383) (not e!639404))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123052 (= res!750383 (validKeyInArray!0 k0!934))))

(declare-fun bm!47281 () Bool)

(declare-fun lt!498934 () array!73220)

(declare-datatypes ((tuple2!17848 0))(
  ( (tuple2!17849 (_1!8934 (_ BitVec 64)) (_2!8934 V!42723)) )
))
(declare-datatypes ((List!24682 0))(
  ( (Nil!24679) (Cons!24678 (h!25887 tuple2!17848) (t!35348 List!24682)) )
))
(declare-datatypes ((ListLongMap!15829 0))(
  ( (ListLongMap!15830 (toList!7930 List!24682)) )
))
(declare-fun call!47285 () ListLongMap!15829)

(declare-fun lt!498935 () array!73222)

(declare-fun getCurrentListMapNoExtraKeys!4390 (array!73222 array!73220 (_ BitVec 32) (_ BitVec 32) V!42723 V!42723 (_ BitVec 32) Int) ListLongMap!15829)

(assert (=> bm!47281 (= call!47285 (getCurrentListMapNoExtraKeys!4390 lt!498935 lt!498934 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123053 () Bool)

(declare-fun res!750382 () Bool)

(assert (=> b!1123053 (=> (not res!750382) (not e!639404))))

(declare-datatypes ((List!24683 0))(
  ( (Nil!24680) (Cons!24679 (h!25888 (_ BitVec 64)) (t!35349 List!24683)) )
))
(declare-fun arrayNoDuplicates!0 (array!73222 (_ BitVec 32) List!24683) Bool)

(assert (=> b!1123053 (= res!750382 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24680))))

(declare-fun b!1123055 () Bool)

(declare-fun e!639410 () Bool)

(declare-fun tp_is_empty!28197 () Bool)

(assert (=> b!1123055 (= e!639410 tp_is_empty!28197)))

(declare-fun b!1123056 () Bool)

(declare-fun call!47284 () ListLongMap!15829)

(assert (=> b!1123056 (= e!639408 (= call!47285 call!47284))))

(declare-fun b!1123057 () Bool)

(declare-fun res!750379 () Bool)

(assert (=> b!1123057 (=> (not res!750379) (not e!639404))))

(assert (=> b!1123057 (= res!750379 (and (= (size!35796 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35797 _keys!1208) (size!35796 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!44113 () Bool)

(assert (=> mapIsEmpty!44113 mapRes!44113))

(declare-fun b!1123058 () Bool)

(declare-fun res!750386 () Bool)

(declare-fun e!639409 () Bool)

(assert (=> b!1123058 (=> (not res!750386) (not e!639409))))

(assert (=> b!1123058 (= res!750386 (arrayNoDuplicates!0 lt!498935 #b00000000000000000000000000000000 Nil!24680))))

(declare-fun res!750389 () Bool)

(assert (=> start!98002 (=> (not res!750389) (not e!639404))))

(assert (=> start!98002 (= res!750389 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35797 _keys!1208))))))

(assert (=> start!98002 e!639404))

(assert (=> start!98002 tp_is_empty!28197))

(declare-fun array_inv!26946 (array!73222) Bool)

(assert (=> start!98002 (array_inv!26946 _keys!1208)))

(assert (=> start!98002 true))

(assert (=> start!98002 tp!83705))

(declare-fun e!639407 () Bool)

(declare-fun array_inv!26947 (array!73220) Bool)

(assert (=> start!98002 (and (array_inv!26947 _values!996) e!639407)))

(declare-fun b!1123054 () Bool)

(declare-fun res!750385 () Bool)

(assert (=> b!1123054 (=> (not res!750385) (not e!639404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73222 (_ BitVec 32)) Bool)

(assert (=> b!1123054 (= res!750385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47282 () Bool)

(assert (=> bm!47282 (= call!47284 (getCurrentListMapNoExtraKeys!4390 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123059 () Bool)

(declare-fun res!750388 () Bool)

(assert (=> b!1123059 (=> (not res!750388) (not e!639404))))

(assert (=> b!1123059 (= res!750388 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35797 _keys!1208))))))

(declare-fun b!1123060 () Bool)

(assert (=> b!1123060 (= e!639405 tp_is_empty!28197)))

(declare-fun b!1123061 () Bool)

(declare-fun res!750378 () Bool)

(assert (=> b!1123061 (=> (not res!750378) (not e!639404))))

(assert (=> b!1123061 (= res!750378 (= (select (arr!35260 _keys!1208) i!673) k0!934))))

(declare-fun b!1123062 () Bool)

(assert (=> b!1123062 (= e!639407 (and e!639410 mapRes!44113))))

(declare-fun condMapEmpty!44113 () Bool)

(declare-fun mapDefault!44113 () ValueCell!13389)

(assert (=> b!1123062 (= condMapEmpty!44113 (= (arr!35259 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13389)) mapDefault!44113)))))

(declare-fun b!1123063 () Bool)

(declare-fun -!1090 (ListLongMap!15829 (_ BitVec 64)) ListLongMap!15829)

(assert (=> b!1123063 (= e!639408 (= call!47285 (-!1090 call!47284 k0!934)))))

(declare-fun b!1123064 () Bool)

(declare-fun e!639406 () Bool)

(assert (=> b!1123064 (= e!639409 (not e!639406))))

(declare-fun res!750384 () Bool)

(assert (=> b!1123064 (=> res!750384 e!639406)))

(assert (=> b!1123064 (= res!750384 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123064 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498936 () Unit!36767)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73222 (_ BitVec 64) (_ BitVec 32)) Unit!36767)

(assert (=> b!1123064 (= lt!498936 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1123065 () Bool)

(declare-fun res!750381 () Bool)

(assert (=> b!1123065 (=> (not res!750381) (not e!639404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123065 (= res!750381 (validMask!0 mask!1564))))

(declare-fun b!1123066 () Bool)

(assert (=> b!1123066 (= e!639404 e!639409)))

(declare-fun res!750390 () Bool)

(assert (=> b!1123066 (=> (not res!750390) (not e!639409))))

(assert (=> b!1123066 (= res!750390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498935 mask!1564))))

(assert (=> b!1123066 (= lt!498935 (array!73223 (store (arr!35260 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35797 _keys!1208)))))

(declare-fun b!1123067 () Bool)

(assert (=> b!1123067 (= e!639413 true)))

(declare-fun lt!498932 () Bool)

(declare-fun contains!6447 (ListLongMap!15829 (_ BitVec 64)) Bool)

(assert (=> b!1123067 (= lt!498932 (contains!6447 (getCurrentListMapNoExtraKeys!4390 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1123068 () Bool)

(assert (=> b!1123068 (= e!639406 e!639411)))

(declare-fun res!750380 () Bool)

(assert (=> b!1123068 (=> res!750380 e!639411)))

(assert (=> b!1123068 (= res!750380 (not (= from!1455 i!673)))))

(declare-fun lt!498930 () ListLongMap!15829)

(assert (=> b!1123068 (= lt!498930 (getCurrentListMapNoExtraKeys!4390 lt!498935 lt!498934 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2484 (Int (_ BitVec 64)) V!42723)

(assert (=> b!1123068 (= lt!498934 (array!73221 (store (arr!35259 _values!996) i!673 (ValueCellFull!13389 (dynLambda!2484 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35796 _values!996)))))

(declare-fun lt!498933 () ListLongMap!15829)

(assert (=> b!1123068 (= lt!498933 (getCurrentListMapNoExtraKeys!4390 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!98002 res!750389) b!1123065))

(assert (= (and b!1123065 res!750381) b!1123057))

(assert (= (and b!1123057 res!750379) b!1123054))

(assert (= (and b!1123054 res!750385) b!1123053))

(assert (= (and b!1123053 res!750382) b!1123059))

(assert (= (and b!1123059 res!750388) b!1123052))

(assert (= (and b!1123052 res!750383) b!1123061))

(assert (= (and b!1123061 res!750378) b!1123066))

(assert (= (and b!1123066 res!750390) b!1123058))

(assert (= (and b!1123058 res!750386) b!1123064))

(assert (= (and b!1123064 (not res!750384)) b!1123068))

(assert (= (and b!1123068 (not res!750380)) b!1123051))

(assert (= (and b!1123051 c!109451) b!1123063))

(assert (= (and b!1123051 (not c!109451)) b!1123056))

(assert (= (or b!1123063 b!1123056) bm!47282))

(assert (= (or b!1123063 b!1123056) bm!47281))

(assert (= (and b!1123051 (not res!750387)) b!1123067))

(assert (= (and b!1123062 condMapEmpty!44113) mapIsEmpty!44113))

(assert (= (and b!1123062 (not condMapEmpty!44113)) mapNonEmpty!44113))

(get-info :version)

(assert (= (and mapNonEmpty!44113 ((_ is ValueCellFull!13389) mapValue!44113)) b!1123060))

(assert (= (and b!1123062 ((_ is ValueCellFull!13389) mapDefault!44113)) b!1123055))

(assert (= start!98002 b!1123062))

(declare-fun b_lambda!18671 () Bool)

(assert (=> (not b_lambda!18671) (not b!1123068)))

(declare-fun t!35347 () Bool)

(declare-fun tb!8487 () Bool)

(assert (=> (and start!98002 (= defaultEntry!1004 defaultEntry!1004) t!35347) tb!8487))

(declare-fun result!17527 () Bool)

(assert (=> tb!8487 (= result!17527 tp_is_empty!28197)))

(assert (=> b!1123068 t!35347))

(declare-fun b_and!38141 () Bool)

(assert (= b_and!38139 (and (=> t!35347 result!17527) b_and!38141)))

(declare-fun m!1037701 () Bool)

(assert (=> b!1123058 m!1037701))

(declare-fun m!1037703 () Bool)

(assert (=> b!1123054 m!1037703))

(declare-fun m!1037705 () Bool)

(assert (=> b!1123064 m!1037705))

(declare-fun m!1037707 () Bool)

(assert (=> b!1123064 m!1037707))

(declare-fun m!1037709 () Bool)

(assert (=> b!1123053 m!1037709))

(declare-fun m!1037711 () Bool)

(assert (=> b!1123068 m!1037711))

(declare-fun m!1037713 () Bool)

(assert (=> b!1123068 m!1037713))

(declare-fun m!1037715 () Bool)

(assert (=> b!1123068 m!1037715))

(declare-fun m!1037717 () Bool)

(assert (=> b!1123068 m!1037717))

(declare-fun m!1037719 () Bool)

(assert (=> start!98002 m!1037719))

(declare-fun m!1037721 () Bool)

(assert (=> start!98002 m!1037721))

(declare-fun m!1037723 () Bool)

(assert (=> b!1123061 m!1037723))

(declare-fun m!1037725 () Bool)

(assert (=> mapNonEmpty!44113 m!1037725))

(declare-fun m!1037727 () Bool)

(assert (=> b!1123065 m!1037727))

(declare-fun m!1037729 () Bool)

(assert (=> b!1123052 m!1037729))

(declare-fun m!1037731 () Bool)

(assert (=> bm!47282 m!1037731))

(declare-fun m!1037733 () Bool)

(assert (=> bm!47281 m!1037733))

(declare-fun m!1037735 () Bool)

(assert (=> b!1123063 m!1037735))

(declare-fun m!1037737 () Bool)

(assert (=> b!1123066 m!1037737))

(declare-fun m!1037739 () Bool)

(assert (=> b!1123066 m!1037739))

(assert (=> b!1123067 m!1037731))

(assert (=> b!1123067 m!1037731))

(declare-fun m!1037741 () Bool)

(assert (=> b!1123067 m!1037741))

(declare-fun m!1037743 () Bool)

(assert (=> b!1123051 m!1037743))

(declare-fun m!1037745 () Bool)

(assert (=> b!1123051 m!1037745))

(check-sat (not bm!47282) (not b!1123052) (not b!1123066) (not b!1123058) (not b_lambda!18671) (not b_next!23667) (not bm!47281) tp_is_empty!28197 (not b!1123051) (not mapNonEmpty!44113) (not b!1123065) (not b!1123068) (not start!98002) (not b!1123067) (not b!1123053) b_and!38141 (not b!1123064) (not b!1123063) (not b!1123054))
(check-sat b_and!38141 (not b_next!23667))
