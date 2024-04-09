; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98146 () Bool)

(assert start!98146)

(declare-fun b_free!23811 () Bool)

(declare-fun b_next!23811 () Bool)

(assert (=> start!98146 (= b_free!23811 (not b_next!23811))))

(declare-fun tp!84137 () Bool)

(declare-fun b_and!38427 () Bool)

(assert (=> start!98146 (= tp!84137 b_and!38427)))

(declare-fun b!1127281 () Bool)

(declare-fun e!641656 () Bool)

(declare-fun e!641663 () Bool)

(declare-fun mapRes!44329 () Bool)

(assert (=> b!1127281 (= e!641656 (and e!641663 mapRes!44329))))

(declare-fun condMapEmpty!44329 () Bool)

(declare-datatypes ((V!42915 0))(
  ( (V!42916 (val!14227 Int)) )
))
(declare-datatypes ((ValueCell!13461 0))(
  ( (ValueCellFull!13461 (v!16861 V!42915)) (EmptyCell!13461) )
))
(declare-datatypes ((array!73502 0))(
  ( (array!73503 (arr!35400 (Array (_ BitVec 32) ValueCell!13461)) (size!35937 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73502)

(declare-fun mapDefault!44329 () ValueCell!13461)

(assert (=> b!1127281 (= condMapEmpty!44329 (= (arr!35400 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13461)) mapDefault!44329)))))

(declare-fun e!641657 () Bool)

(declare-datatypes ((tuple2!17982 0))(
  ( (tuple2!17983 (_1!9001 (_ BitVec 64)) (_2!9001 V!42915)) )
))
(declare-datatypes ((List!24807 0))(
  ( (Nil!24804) (Cons!24803 (h!26012 tuple2!17982) (t!35617 List!24807)) )
))
(declare-datatypes ((ListLongMap!15963 0))(
  ( (ListLongMap!15964 (toList!7997 List!24807)) )
))
(declare-fun call!47716 () ListLongMap!15963)

(declare-fun b!1127282 () Bool)

(declare-fun call!47717 () ListLongMap!15963)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1135 (ListLongMap!15963 (_ BitVec 64)) ListLongMap!15963)

(assert (=> b!1127282 (= e!641657 (= call!47716 (-!1135 call!47717 k0!934)))))

(declare-fun zeroValue!944 () V!42915)

(declare-datatypes ((array!73504 0))(
  ( (array!73505 (arr!35401 (Array (_ BitVec 32) (_ BitVec 64))) (size!35938 (_ BitVec 32))) )
))
(declare-fun lt!500514 () array!73504)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!500518 () array!73502)

(declare-fun bm!47713 () Bool)

(declare-fun minValue!944 () V!42915)

(declare-fun getCurrentListMapNoExtraKeys!4456 (array!73504 array!73502 (_ BitVec 32) (_ BitVec 32) V!42915 V!42915 (_ BitVec 32) Int) ListLongMap!15963)

(assert (=> bm!47713 (= call!47716 (getCurrentListMapNoExtraKeys!4456 lt!500514 lt!500518 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127284 () Bool)

(declare-fun res!753391 () Bool)

(declare-fun e!641659 () Bool)

(assert (=> b!1127284 (=> (not res!753391) (not e!641659))))

(declare-fun _keys!1208 () array!73504)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127284 (= res!753391 (= (select (arr!35401 _keys!1208) i!673) k0!934))))

(declare-fun b!1127285 () Bool)

(assert (=> b!1127285 (= e!641657 (= call!47716 call!47717))))

(declare-fun b!1127286 () Bool)

(declare-fun res!753396 () Bool)

(declare-fun e!641655 () Bool)

(assert (=> b!1127286 (=> (not res!753396) (not e!641655))))

(declare-datatypes ((List!24808 0))(
  ( (Nil!24805) (Cons!24804 (h!26013 (_ BitVec 64)) (t!35618 List!24808)) )
))
(declare-fun arrayNoDuplicates!0 (array!73504 (_ BitVec 32) List!24808) Bool)

(assert (=> b!1127286 (= res!753396 (arrayNoDuplicates!0 lt!500514 #b00000000000000000000000000000000 Nil!24805))))

(declare-fun b!1127287 () Bool)

(declare-fun res!753386 () Bool)

(assert (=> b!1127287 (=> (not res!753386) (not e!641659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127287 (= res!753386 (validMask!0 mask!1564))))

(declare-fun b!1127288 () Bool)

(declare-fun tp_is_empty!28341 () Bool)

(assert (=> b!1127288 (= e!641663 tp_is_empty!28341)))

(declare-fun bm!47714 () Bool)

(assert (=> bm!47714 (= call!47717 (getCurrentListMapNoExtraKeys!4456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44329 () Bool)

(declare-fun tp!84138 () Bool)

(declare-fun e!641662 () Bool)

(assert (=> mapNonEmpty!44329 (= mapRes!44329 (and tp!84138 e!641662))))

(declare-fun mapKey!44329 () (_ BitVec 32))

(declare-fun mapRest!44329 () (Array (_ BitVec 32) ValueCell!13461))

(declare-fun mapValue!44329 () ValueCell!13461)

(assert (=> mapNonEmpty!44329 (= (arr!35400 _values!996) (store mapRest!44329 mapKey!44329 mapValue!44329))))

(declare-fun b!1127289 () Bool)

(assert (=> b!1127289 (= e!641662 tp_is_empty!28341)))

(declare-fun b!1127290 () Bool)

(declare-fun e!641661 () Bool)

(declare-fun e!641658 () Bool)

(assert (=> b!1127290 (= e!641661 e!641658)))

(declare-fun res!753394 () Bool)

(assert (=> b!1127290 (=> res!753394 e!641658)))

(assert (=> b!1127290 (= res!753394 (not (= from!1455 i!673)))))

(declare-fun lt!500515 () ListLongMap!15963)

(assert (=> b!1127290 (= lt!500515 (getCurrentListMapNoExtraKeys!4456 lt!500514 lt!500518 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2535 (Int (_ BitVec 64)) V!42915)

(assert (=> b!1127290 (= lt!500518 (array!73503 (store (arr!35400 _values!996) i!673 (ValueCellFull!13461 (dynLambda!2535 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35937 _values!996)))))

(declare-fun lt!500516 () ListLongMap!15963)

(assert (=> b!1127290 (= lt!500516 (getCurrentListMapNoExtraKeys!4456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127291 () Bool)

(assert (=> b!1127291 (= e!641655 (not e!641661))))

(declare-fun res!753384 () Bool)

(assert (=> b!1127291 (=> res!753384 e!641661)))

(assert (=> b!1127291 (= res!753384 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127291 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36887 0))(
  ( (Unit!36888) )
))
(declare-fun lt!500517 () Unit!36887)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73504 (_ BitVec 64) (_ BitVec 32)) Unit!36887)

(assert (=> b!1127291 (= lt!500517 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!753389 () Bool)

(assert (=> start!98146 (=> (not res!753389) (not e!641659))))

(assert (=> start!98146 (= res!753389 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35938 _keys!1208))))))

(assert (=> start!98146 e!641659))

(assert (=> start!98146 tp_is_empty!28341))

(declare-fun array_inv!27032 (array!73504) Bool)

(assert (=> start!98146 (array_inv!27032 _keys!1208)))

(assert (=> start!98146 true))

(assert (=> start!98146 tp!84137))

(declare-fun array_inv!27033 (array!73502) Bool)

(assert (=> start!98146 (and (array_inv!27033 _values!996) e!641656)))

(declare-fun b!1127283 () Bool)

(declare-fun res!753387 () Bool)

(assert (=> b!1127283 (=> (not res!753387) (not e!641659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127283 (= res!753387 (validKeyInArray!0 k0!934))))

(declare-fun b!1127292 () Bool)

(declare-fun res!753390 () Bool)

(assert (=> b!1127292 (=> (not res!753390) (not e!641659))))

(assert (=> b!1127292 (= res!753390 (and (= (size!35937 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35938 _keys!1208) (size!35937 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127293 () Bool)

(declare-fun res!753395 () Bool)

(assert (=> b!1127293 (=> (not res!753395) (not e!641659))))

(assert (=> b!1127293 (= res!753395 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35938 _keys!1208))))))

(declare-fun b!1127294 () Bool)

(declare-fun e!641654 () Bool)

(assert (=> b!1127294 (= e!641654 true)))

(declare-fun lt!500519 () Bool)

(declare-fun contains!6502 (ListLongMap!15963 (_ BitVec 64)) Bool)

(assert (=> b!1127294 (= lt!500519 (contains!6502 (getCurrentListMapNoExtraKeys!4456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1127295 () Bool)

(assert (=> b!1127295 (= e!641659 e!641655)))

(declare-fun res!753392 () Bool)

(assert (=> b!1127295 (=> (not res!753392) (not e!641655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73504 (_ BitVec 32)) Bool)

(assert (=> b!1127295 (= res!753392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500514 mask!1564))))

(assert (=> b!1127295 (= lt!500514 (array!73505 (store (arr!35401 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35938 _keys!1208)))))

(declare-fun mapIsEmpty!44329 () Bool)

(assert (=> mapIsEmpty!44329 mapRes!44329))

(declare-fun b!1127296 () Bool)

(declare-fun res!753385 () Bool)

(assert (=> b!1127296 (=> (not res!753385) (not e!641659))))

(assert (=> b!1127296 (= res!753385 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24805))))

(declare-fun b!1127297 () Bool)

(assert (=> b!1127297 (= e!641658 e!641654)))

(declare-fun res!753388 () Bool)

(assert (=> b!1127297 (=> res!753388 e!641654)))

(assert (=> b!1127297 (= res!753388 (not (= (select (arr!35401 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1127297 e!641657))

(declare-fun c!109667 () Bool)

(assert (=> b!1127297 (= c!109667 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500520 () Unit!36887)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!392 (array!73504 array!73502 (_ BitVec 32) (_ BitVec 32) V!42915 V!42915 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36887)

(assert (=> b!1127297 (= lt!500520 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!392 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127298 () Bool)

(declare-fun res!753393 () Bool)

(assert (=> b!1127298 (=> (not res!753393) (not e!641659))))

(assert (=> b!1127298 (= res!753393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!98146 res!753389) b!1127287))

(assert (= (and b!1127287 res!753386) b!1127292))

(assert (= (and b!1127292 res!753390) b!1127298))

(assert (= (and b!1127298 res!753393) b!1127296))

(assert (= (and b!1127296 res!753385) b!1127293))

(assert (= (and b!1127293 res!753395) b!1127283))

(assert (= (and b!1127283 res!753387) b!1127284))

(assert (= (and b!1127284 res!753391) b!1127295))

(assert (= (and b!1127295 res!753392) b!1127286))

(assert (= (and b!1127286 res!753396) b!1127291))

(assert (= (and b!1127291 (not res!753384)) b!1127290))

(assert (= (and b!1127290 (not res!753394)) b!1127297))

(assert (= (and b!1127297 c!109667) b!1127282))

(assert (= (and b!1127297 (not c!109667)) b!1127285))

(assert (= (or b!1127282 b!1127285) bm!47714))

(assert (= (or b!1127282 b!1127285) bm!47713))

(assert (= (and b!1127297 (not res!753388)) b!1127294))

(assert (= (and b!1127281 condMapEmpty!44329) mapIsEmpty!44329))

(assert (= (and b!1127281 (not condMapEmpty!44329)) mapNonEmpty!44329))

(get-info :version)

(assert (= (and mapNonEmpty!44329 ((_ is ValueCellFull!13461) mapValue!44329)) b!1127289))

(assert (= (and b!1127281 ((_ is ValueCellFull!13461) mapDefault!44329)) b!1127288))

(assert (= start!98146 b!1127281))

(declare-fun b_lambda!18815 () Bool)

(assert (=> (not b_lambda!18815) (not b!1127290)))

(declare-fun t!35616 () Bool)

(declare-fun tb!8631 () Bool)

(assert (=> (and start!98146 (= defaultEntry!1004 defaultEntry!1004) t!35616) tb!8631))

(declare-fun result!17815 () Bool)

(assert (=> tb!8631 (= result!17815 tp_is_empty!28341)))

(assert (=> b!1127290 t!35616))

(declare-fun b_and!38429 () Bool)

(assert (= b_and!38427 (and (=> t!35616 result!17815) b_and!38429)))

(declare-fun m!1041201 () Bool)

(assert (=> b!1127287 m!1041201))

(declare-fun m!1041203 () Bool)

(assert (=> b!1127286 m!1041203))

(declare-fun m!1041205 () Bool)

(assert (=> bm!47714 m!1041205))

(declare-fun m!1041207 () Bool)

(assert (=> b!1127295 m!1041207))

(declare-fun m!1041209 () Bool)

(assert (=> b!1127295 m!1041209))

(declare-fun m!1041211 () Bool)

(assert (=> b!1127298 m!1041211))

(declare-fun m!1041213 () Bool)

(assert (=> b!1127290 m!1041213))

(declare-fun m!1041215 () Bool)

(assert (=> b!1127290 m!1041215))

(declare-fun m!1041217 () Bool)

(assert (=> b!1127290 m!1041217))

(declare-fun m!1041219 () Bool)

(assert (=> b!1127290 m!1041219))

(declare-fun m!1041221 () Bool)

(assert (=> b!1127282 m!1041221))

(declare-fun m!1041223 () Bool)

(assert (=> b!1127291 m!1041223))

(declare-fun m!1041225 () Bool)

(assert (=> b!1127291 m!1041225))

(declare-fun m!1041227 () Bool)

(assert (=> bm!47713 m!1041227))

(declare-fun m!1041229 () Bool)

(assert (=> b!1127297 m!1041229))

(declare-fun m!1041231 () Bool)

(assert (=> b!1127297 m!1041231))

(assert (=> b!1127294 m!1041205))

(assert (=> b!1127294 m!1041205))

(declare-fun m!1041233 () Bool)

(assert (=> b!1127294 m!1041233))

(declare-fun m!1041235 () Bool)

(assert (=> b!1127283 m!1041235))

(declare-fun m!1041237 () Bool)

(assert (=> b!1127284 m!1041237))

(declare-fun m!1041239 () Bool)

(assert (=> start!98146 m!1041239))

(declare-fun m!1041241 () Bool)

(assert (=> start!98146 m!1041241))

(declare-fun m!1041243 () Bool)

(assert (=> mapNonEmpty!44329 m!1041243))

(declare-fun m!1041245 () Bool)

(assert (=> b!1127296 m!1041245))

(check-sat tp_is_empty!28341 (not b!1127290) (not b!1127287) (not bm!47713) (not b!1127291) (not b!1127296) (not mapNonEmpty!44329) b_and!38429 (not b!1127295) (not b!1127294) (not b!1127282) (not b!1127286) (not b_lambda!18815) (not bm!47714) (not b!1127297) (not b!1127283) (not start!98146) (not b!1127298) (not b_next!23811))
(check-sat b_and!38429 (not b_next!23811))
