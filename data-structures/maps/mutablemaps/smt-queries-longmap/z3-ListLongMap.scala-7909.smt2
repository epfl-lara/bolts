; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98236 () Bool)

(assert start!98236)

(declare-fun b_free!23901 () Bool)

(declare-fun b_next!23901 () Bool)

(assert (=> start!98236 (= b_free!23901 (not b_next!23901))))

(declare-fun tp!84407 () Bool)

(declare-fun b_and!38607 () Bool)

(assert (=> start!98236 (= tp!84407 b_and!38607)))

(declare-fun bm!48283 () Bool)

(declare-datatypes ((V!43035 0))(
  ( (V!43036 (val!14272 Int)) )
))
(declare-datatypes ((tuple2!18068 0))(
  ( (tuple2!18069 (_1!9044 (_ BitVec 64)) (_2!9044 V!43035)) )
))
(declare-datatypes ((List!24887 0))(
  ( (Nil!24884) (Cons!24883 (h!26092 tuple2!18068) (t!35787 List!24887)) )
))
(declare-datatypes ((ListLongMap!16049 0))(
  ( (ListLongMap!16050 (toList!8040 List!24887)) )
))
(declare-fun call!48287 () ListLongMap!16049)

(declare-fun call!48292 () ListLongMap!16049)

(assert (=> bm!48283 (= call!48287 call!48292)))

(declare-fun zeroValue!944 () V!43035)

(declare-datatypes ((array!73680 0))(
  ( (array!73681 (arr!35489 (Array (_ BitVec 32) (_ BitVec 64))) (size!36026 (_ BitVec 32))) )
))
(declare-fun lt!501856 () array!73680)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun call!48293 () ListLongMap!16049)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!48284 () Bool)

(declare-fun minValue!944 () V!43035)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13506 0))(
  ( (ValueCellFull!13506 (v!16906 V!43035)) (EmptyCell!13506) )
))
(declare-datatypes ((array!73682 0))(
  ( (array!73683 (arr!35490 (Array (_ BitVec 32) ValueCell!13506)) (size!36027 (_ BitVec 32))) )
))
(declare-fun lt!501854 () array!73682)

(declare-fun getCurrentListMapNoExtraKeys!4493 (array!73680 array!73682 (_ BitVec 32) (_ BitVec 32) V!43035 V!43035 (_ BitVec 32) Int) ListLongMap!16049)

(assert (=> bm!48284 (= call!48293 (getCurrentListMapNoExtraKeys!4493 lt!501856 lt!501854 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130210 () Bool)

(declare-fun call!48290 () Bool)

(assert (=> b!1130210 call!48290))

(declare-datatypes ((Unit!36977 0))(
  ( (Unit!36978) )
))
(declare-fun lt!501860 () Unit!36977)

(declare-fun call!48289 () Unit!36977)

(assert (=> b!1130210 (= lt!501860 call!48289)))

(declare-fun e!643255 () Unit!36977)

(assert (=> b!1130210 (= e!643255 lt!501860)))

(declare-fun bm!48285 () Bool)

(declare-fun call!48288 () Bool)

(assert (=> bm!48285 (= call!48290 call!48288)))

(declare-fun b!1130211 () Bool)

(declare-fun e!643254 () Bool)

(assert (=> b!1130211 (= e!643254 true)))

(declare-fun _keys!1208 () array!73680)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun _values!996 () array!73682)

(declare-fun lt!501863 () Bool)

(declare-fun contains!6534 (ListLongMap!16049 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4444 (array!73680 array!73682 (_ BitVec 32) (_ BitVec 32) V!43035 V!43035 (_ BitVec 32) Int) ListLongMap!16049)

(assert (=> b!1130211 (= lt!501863 (contains!6534 (getCurrentListMap!4444 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1130212 () Bool)

(declare-fun e!643259 () Bool)

(declare-fun tp_is_empty!28431 () Bool)

(assert (=> b!1130212 (= e!643259 tp_is_empty!28431)))

(declare-fun b!1130213 () Bool)

(declare-fun e!643267 () Bool)

(declare-fun e!643265 () Bool)

(assert (=> b!1130213 (= e!643267 e!643265)))

(declare-fun res!755250 () Bool)

(assert (=> b!1130213 (=> (not res!755250) (not e!643265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73680 (_ BitVec 32)) Bool)

(assert (=> b!1130213 (= res!755250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501856 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130213 (= lt!501856 (array!73681 (store (arr!35489 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36026 _keys!1208)))))

(declare-fun b!1130214 () Bool)

(declare-fun e!643266 () Bool)

(assert (=> b!1130214 (= e!643265 (not e!643266))))

(declare-fun res!755252 () Bool)

(assert (=> b!1130214 (=> res!755252 e!643266)))

(assert (=> b!1130214 (= res!755252 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130214 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!501864 () Unit!36977)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73680 (_ BitVec 64) (_ BitVec 32)) Unit!36977)

(assert (=> b!1130214 (= lt!501864 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1130215 () Bool)

(declare-fun res!755251 () Bool)

(assert (=> b!1130215 (=> (not res!755251) (not e!643265))))

(declare-datatypes ((List!24888 0))(
  ( (Nil!24885) (Cons!24884 (h!26093 (_ BitVec 64)) (t!35788 List!24888)) )
))
(declare-fun arrayNoDuplicates!0 (array!73680 (_ BitVec 32) List!24888) Bool)

(assert (=> b!1130215 (= res!755251 (arrayNoDuplicates!0 lt!501856 #b00000000000000000000000000000000 Nil!24885))))

(declare-fun b!1130216 () Bool)

(declare-fun res!755249 () Bool)

(assert (=> b!1130216 (=> (not res!755249) (not e!643267))))

(assert (=> b!1130216 (= res!755249 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24885))))

(declare-fun b!1130217 () Bool)

(declare-fun e!643262 () Bool)

(declare-fun e!643268 () Bool)

(assert (=> b!1130217 (= e!643262 e!643268)))

(declare-fun res!755253 () Bool)

(assert (=> b!1130217 (=> res!755253 e!643268)))

(assert (=> b!1130217 (= res!755253 (not (= (select (arr!35489 _keys!1208) from!1455) k0!934)))))

(declare-fun e!643256 () Bool)

(assert (=> b!1130217 e!643256))

(declare-fun c!109954 () Bool)

(assert (=> b!1130217 (= c!109954 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501862 () Unit!36977)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!423 (array!73680 array!73682 (_ BitVec 32) (_ BitVec 32) V!43035 V!43035 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36977)

(assert (=> b!1130217 (= lt!501862 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!423 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!48286 () ListLongMap!16049)

(declare-fun bm!48287 () Bool)

(assert (=> bm!48287 (= call!48286 (getCurrentListMapNoExtraKeys!4493 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130218 () Bool)

(declare-fun res!755258 () Bool)

(assert (=> b!1130218 (=> (not res!755258) (not e!643267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130218 (= res!755258 (validMask!0 mask!1564))))

(declare-fun b!1130219 () Bool)

(declare-fun e!643263 () Bool)

(declare-fun mapRes!44464 () Bool)

(assert (=> b!1130219 (= e!643263 (and e!643259 mapRes!44464))))

(declare-fun condMapEmpty!44464 () Bool)

(declare-fun mapDefault!44464 () ValueCell!13506)

(assert (=> b!1130219 (= condMapEmpty!44464 (= (arr!35490 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13506)) mapDefault!44464)))))

(declare-fun mapIsEmpty!44464 () Bool)

(assert (=> mapIsEmpty!44464 mapRes!44464))

(declare-fun b!1130220 () Bool)

(declare-fun e!643257 () Unit!36977)

(assert (=> b!1130220 (= e!643257 e!643255)))

(declare-fun c!109953 () Bool)

(declare-fun lt!501853 () Bool)

(assert (=> b!1130220 (= c!109953 (and (not lt!501853) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1130221 () Bool)

(declare-fun res!755257 () Bool)

(assert (=> b!1130221 (=> (not res!755257) (not e!643267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130221 (= res!755257 (validKeyInArray!0 k0!934))))

(declare-fun b!1130222 () Bool)

(declare-fun res!755260 () Bool)

(assert (=> b!1130222 (=> (not res!755260) (not e!643267))))

(assert (=> b!1130222 (= res!755260 (and (= (size!36027 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36026 _keys!1208) (size!36027 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1130223 () Bool)

(assert (=> b!1130223 (= e!643266 e!643262)))

(declare-fun res!755261 () Bool)

(assert (=> b!1130223 (=> res!755261 e!643262)))

(assert (=> b!1130223 (= res!755261 (not (= from!1455 i!673)))))

(declare-fun lt!501859 () ListLongMap!16049)

(assert (=> b!1130223 (= lt!501859 (getCurrentListMapNoExtraKeys!4493 lt!501856 lt!501854 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2569 (Int (_ BitVec 64)) V!43035)

(assert (=> b!1130223 (= lt!501854 (array!73683 (store (arr!35490 _values!996) i!673 (ValueCellFull!13506 (dynLambda!2569 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36027 _values!996)))))

(declare-fun lt!501852 () ListLongMap!16049)

(assert (=> b!1130223 (= lt!501852 (getCurrentListMapNoExtraKeys!4493 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!44464 () Bool)

(declare-fun tp!84408 () Bool)

(declare-fun e!643261 () Bool)

(assert (=> mapNonEmpty!44464 (= mapRes!44464 (and tp!84408 e!643261))))

(declare-fun mapValue!44464 () ValueCell!13506)

(declare-fun mapKey!44464 () (_ BitVec 32))

(declare-fun mapRest!44464 () (Array (_ BitVec 32) ValueCell!13506))

(assert (=> mapNonEmpty!44464 (= (arr!35490 _values!996) (store mapRest!44464 mapKey!44464 mapValue!44464))))

(declare-fun b!1130224 () Bool)

(declare-fun res!755259 () Bool)

(assert (=> b!1130224 (=> (not res!755259) (not e!643267))))

(assert (=> b!1130224 (= res!755259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!48288 () Bool)

(declare-fun lt!501861 () ListLongMap!16049)

(declare-fun c!109955 () Bool)

(declare-fun +!3407 (ListLongMap!16049 tuple2!18068) ListLongMap!16049)

(assert (=> bm!48288 (= call!48292 (+!3407 lt!501861 (ite (or c!109955 c!109953) (tuple2!18069 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1130225 () Bool)

(declare-fun -!1168 (ListLongMap!16049 (_ BitVec 64)) ListLongMap!16049)

(assert (=> b!1130225 (= e!643256 (= call!48293 (-!1168 call!48286 k0!934)))))

(declare-fun call!48291 () Unit!36977)

(declare-fun bm!48289 () Bool)

(declare-fun addStillContains!707 (ListLongMap!16049 (_ BitVec 64) V!43035 (_ BitVec 64)) Unit!36977)

(assert (=> bm!48289 (= call!48291 (addStillContains!707 lt!501861 (ite (or c!109955 c!109953) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109955 c!109953) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1130226 () Bool)

(declare-fun lt!501857 () Unit!36977)

(assert (=> b!1130226 (= e!643257 lt!501857)))

(declare-fun lt!501855 () Unit!36977)

(assert (=> b!1130226 (= lt!501855 call!48291)))

(declare-fun lt!501858 () ListLongMap!16049)

(assert (=> b!1130226 (= lt!501858 call!48292)))

(assert (=> b!1130226 call!48288))

(assert (=> b!1130226 (= lt!501857 (addStillContains!707 lt!501858 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1130226 (contains!6534 (+!3407 lt!501858 (tuple2!18069 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1130227 () Bool)

(declare-fun res!755248 () Bool)

(assert (=> b!1130227 (=> (not res!755248) (not e!643267))))

(assert (=> b!1130227 (= res!755248 (= (select (arr!35489 _keys!1208) i!673) k0!934))))

(declare-fun b!1130228 () Bool)

(declare-fun e!643260 () Bool)

(assert (=> b!1130228 (= e!643268 e!643260)))

(declare-fun res!755256 () Bool)

(assert (=> b!1130228 (=> res!755256 e!643260)))

(assert (=> b!1130228 (= res!755256 (not (contains!6534 lt!501861 k0!934)))))

(assert (=> b!1130228 (= lt!501861 (getCurrentListMapNoExtraKeys!4493 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130229 () Bool)

(assert (=> b!1130229 (= e!643261 tp_is_empty!28431)))

(declare-fun b!1130230 () Bool)

(declare-fun e!643258 () Unit!36977)

(declare-fun Unit!36979 () Unit!36977)

(assert (=> b!1130230 (= e!643258 Unit!36979)))

(declare-fun bm!48286 () Bool)

(assert (=> bm!48286 (= call!48288 (contains!6534 (ite c!109955 lt!501858 call!48287) k0!934))))

(declare-fun res!755255 () Bool)

(assert (=> start!98236 (=> (not res!755255) (not e!643267))))

(assert (=> start!98236 (= res!755255 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36026 _keys!1208))))))

(assert (=> start!98236 e!643267))

(assert (=> start!98236 tp_is_empty!28431))

(declare-fun array_inv!27092 (array!73680) Bool)

(assert (=> start!98236 (array_inv!27092 _keys!1208)))

(assert (=> start!98236 true))

(assert (=> start!98236 tp!84407))

(declare-fun array_inv!27093 (array!73682) Bool)

(assert (=> start!98236 (and (array_inv!27093 _values!996) e!643263)))

(declare-fun b!1130231 () Bool)

(assert (=> b!1130231 (= e!643256 (= call!48293 call!48286))))

(declare-fun b!1130232 () Bool)

(assert (=> b!1130232 (= e!643260 e!643254)))

(declare-fun res!755254 () Bool)

(assert (=> b!1130232 (=> res!755254 e!643254)))

(assert (=> b!1130232 (= res!755254 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36026 _keys!1208))))))

(declare-fun lt!501851 () Unit!36977)

(assert (=> b!1130232 (= lt!501851 e!643257)))

(assert (=> b!1130232 (= c!109955 (and (not lt!501853) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130232 (= lt!501853 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1130233 () Bool)

(declare-fun c!109952 () Bool)

(assert (=> b!1130233 (= c!109952 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501853))))

(assert (=> b!1130233 (= e!643255 e!643258)))

(declare-fun b!1130234 () Bool)

(declare-fun lt!501850 () Unit!36977)

(assert (=> b!1130234 (= e!643258 lt!501850)))

(assert (=> b!1130234 (= lt!501850 call!48289)))

(assert (=> b!1130234 call!48290))

(declare-fun bm!48290 () Bool)

(assert (=> bm!48290 (= call!48289 call!48291)))

(declare-fun b!1130235 () Bool)

(declare-fun res!755262 () Bool)

(assert (=> b!1130235 (=> (not res!755262) (not e!643267))))

(assert (=> b!1130235 (= res!755262 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36026 _keys!1208))))))

(assert (= (and start!98236 res!755255) b!1130218))

(assert (= (and b!1130218 res!755258) b!1130222))

(assert (= (and b!1130222 res!755260) b!1130224))

(assert (= (and b!1130224 res!755259) b!1130216))

(assert (= (and b!1130216 res!755249) b!1130235))

(assert (= (and b!1130235 res!755262) b!1130221))

(assert (= (and b!1130221 res!755257) b!1130227))

(assert (= (and b!1130227 res!755248) b!1130213))

(assert (= (and b!1130213 res!755250) b!1130215))

(assert (= (and b!1130215 res!755251) b!1130214))

(assert (= (and b!1130214 (not res!755252)) b!1130223))

(assert (= (and b!1130223 (not res!755261)) b!1130217))

(assert (= (and b!1130217 c!109954) b!1130225))

(assert (= (and b!1130217 (not c!109954)) b!1130231))

(assert (= (or b!1130225 b!1130231) bm!48284))

(assert (= (or b!1130225 b!1130231) bm!48287))

(assert (= (and b!1130217 (not res!755253)) b!1130228))

(assert (= (and b!1130228 (not res!755256)) b!1130232))

(assert (= (and b!1130232 c!109955) b!1130226))

(assert (= (and b!1130232 (not c!109955)) b!1130220))

(assert (= (and b!1130220 c!109953) b!1130210))

(assert (= (and b!1130220 (not c!109953)) b!1130233))

(assert (= (and b!1130233 c!109952) b!1130234))

(assert (= (and b!1130233 (not c!109952)) b!1130230))

(assert (= (or b!1130210 b!1130234) bm!48290))

(assert (= (or b!1130210 b!1130234) bm!48283))

(assert (= (or b!1130210 b!1130234) bm!48285))

(assert (= (or b!1130226 bm!48285) bm!48286))

(assert (= (or b!1130226 bm!48290) bm!48289))

(assert (= (or b!1130226 bm!48283) bm!48288))

(assert (= (and b!1130232 (not res!755254)) b!1130211))

(assert (= (and b!1130219 condMapEmpty!44464) mapIsEmpty!44464))

(assert (= (and b!1130219 (not condMapEmpty!44464)) mapNonEmpty!44464))

(get-info :version)

(assert (= (and mapNonEmpty!44464 ((_ is ValueCellFull!13506) mapValue!44464)) b!1130229))

(assert (= (and b!1130219 ((_ is ValueCellFull!13506) mapDefault!44464)) b!1130212))

(assert (= start!98236 b!1130219))

(declare-fun b_lambda!18905 () Bool)

(assert (=> (not b_lambda!18905) (not b!1130223)))

(declare-fun t!35786 () Bool)

(declare-fun tb!8721 () Bool)

(assert (=> (and start!98236 (= defaultEntry!1004 defaultEntry!1004) t!35786) tb!8721))

(declare-fun result!17995 () Bool)

(assert (=> tb!8721 (= result!17995 tp_is_empty!28431)))

(assert (=> b!1130223 t!35786))

(declare-fun b_and!38609 () Bool)

(assert (= b_and!38607 (and (=> t!35786 result!17995) b_and!38609)))

(declare-fun m!1043529 () Bool)

(assert (=> start!98236 m!1043529))

(declare-fun m!1043531 () Bool)

(assert (=> start!98236 m!1043531))

(declare-fun m!1043533 () Bool)

(assert (=> b!1130214 m!1043533))

(declare-fun m!1043535 () Bool)

(assert (=> b!1130214 m!1043535))

(declare-fun m!1043537 () Bool)

(assert (=> bm!48289 m!1043537))

(declare-fun m!1043539 () Bool)

(assert (=> b!1130211 m!1043539))

(assert (=> b!1130211 m!1043539))

(declare-fun m!1043541 () Bool)

(assert (=> b!1130211 m!1043541))

(declare-fun m!1043543 () Bool)

(assert (=> b!1130218 m!1043543))

(declare-fun m!1043545 () Bool)

(assert (=> b!1130216 m!1043545))

(declare-fun m!1043547 () Bool)

(assert (=> bm!48284 m!1043547))

(declare-fun m!1043549 () Bool)

(assert (=> b!1130224 m!1043549))

(declare-fun m!1043551 () Bool)

(assert (=> bm!48286 m!1043551))

(declare-fun m!1043553 () Bool)

(assert (=> b!1130217 m!1043553))

(declare-fun m!1043555 () Bool)

(assert (=> b!1130217 m!1043555))

(declare-fun m!1043557 () Bool)

(assert (=> b!1130221 m!1043557))

(declare-fun m!1043559 () Bool)

(assert (=> b!1130215 m!1043559))

(declare-fun m!1043561 () Bool)

(assert (=> bm!48287 m!1043561))

(declare-fun m!1043563 () Bool)

(assert (=> b!1130213 m!1043563))

(declare-fun m!1043565 () Bool)

(assert (=> b!1130213 m!1043565))

(declare-fun m!1043567 () Bool)

(assert (=> mapNonEmpty!44464 m!1043567))

(declare-fun m!1043569 () Bool)

(assert (=> b!1130223 m!1043569))

(declare-fun m!1043571 () Bool)

(assert (=> b!1130223 m!1043571))

(declare-fun m!1043573 () Bool)

(assert (=> b!1130223 m!1043573))

(declare-fun m!1043575 () Bool)

(assert (=> b!1130223 m!1043575))

(declare-fun m!1043577 () Bool)

(assert (=> b!1130225 m!1043577))

(declare-fun m!1043579 () Bool)

(assert (=> b!1130228 m!1043579))

(assert (=> b!1130228 m!1043561))

(declare-fun m!1043581 () Bool)

(assert (=> b!1130226 m!1043581))

(declare-fun m!1043583 () Bool)

(assert (=> b!1130226 m!1043583))

(assert (=> b!1130226 m!1043583))

(declare-fun m!1043585 () Bool)

(assert (=> b!1130226 m!1043585))

(declare-fun m!1043587 () Bool)

(assert (=> b!1130227 m!1043587))

(declare-fun m!1043589 () Bool)

(assert (=> bm!48288 m!1043589))

(check-sat (not b_next!23901) tp_is_empty!28431 (not b!1130218) (not b!1130214) (not b!1130213) (not b!1130216) (not bm!48286) (not bm!48289) (not b!1130223) (not mapNonEmpty!44464) (not b!1130211) b_and!38609 (not b!1130228) (not bm!48287) (not bm!48288) (not b!1130225) (not bm!48284) (not b!1130217) (not b!1130224) (not b_lambda!18905) (not start!98236) (not b!1130226) (not b!1130215) (not b!1130221))
(check-sat b_and!38609 (not b_next!23901))
