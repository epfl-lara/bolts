; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97420 () Bool)

(assert start!97420)

(declare-fun b_free!23355 () Bool)

(declare-fun b_next!23355 () Bool)

(assert (=> start!97420 (= b_free!23355 (not b_next!23355))))

(declare-fun tp!82364 () Bool)

(declare-fun b_and!37567 () Bool)

(assert (=> start!97420 (= tp!82364 b_and!37567)))

(declare-fun mapIsEmpty!43240 () Bool)

(declare-fun mapRes!43240 () Bool)

(assert (=> mapIsEmpty!43240 mapRes!43240))

(declare-fun b!1110243 () Bool)

(declare-fun res!740981 () Bool)

(declare-fun e!633238 () Bool)

(assert (=> b!1110243 (=> (not res!740981) (not e!633238))))

(declare-datatypes ((array!72096 0))(
  ( (array!72097 (arr!34697 (Array (_ BitVec 32) (_ BitVec 64))) (size!35234 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72096)

(declare-datatypes ((List!24334 0))(
  ( (Nil!24331) (Cons!24330 (h!25539 (_ BitVec 64)) (t!34742 List!24334)) )
))
(declare-fun arrayNoDuplicates!0 (array!72096 (_ BitVec 32) List!24334) Bool)

(assert (=> b!1110243 (= res!740981 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24331))))

(declare-datatypes ((V!41947 0))(
  ( (V!41948 (val!13864 Int)) )
))
(declare-fun zeroValue!944 () V!41947)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13098 0))(
  ( (ValueCellFull!13098 (v!16498 V!41947)) (EmptyCell!13098) )
))
(declare-datatypes ((array!72098 0))(
  ( (array!72099 (arr!34698 (Array (_ BitVec 32) ValueCell!13098)) (size!35235 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72098)

(declare-fun minValue!944 () V!41947)

(declare-datatypes ((tuple2!17598 0))(
  ( (tuple2!17599 (_1!8809 (_ BitVec 64)) (_2!8809 V!41947)) )
))
(declare-datatypes ((List!24335 0))(
  ( (Nil!24332) (Cons!24331 (h!25540 tuple2!17598) (t!34743 List!24335)) )
))
(declare-datatypes ((ListLongMap!15579 0))(
  ( (ListLongMap!15580 (toList!7805 List!24335)) )
))
(declare-fun call!46762 () ListLongMap!15579)

(declare-fun lt!496112 () array!72096)

(declare-fun bm!46759 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4268 (array!72096 array!72098 (_ BitVec 32) (_ BitVec 32) V!41947 V!41947 (_ BitVec 32) Int) ListLongMap!15579)

(declare-fun dynLambda!2391 (Int (_ BitVec 64)) V!41947)

(assert (=> bm!46759 (= call!46762 (getCurrentListMapNoExtraKeys!4268 lt!496112 (array!72099 (store (arr!34698 _values!996) i!673 (ValueCellFull!13098 (dynLambda!2391 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35235 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110244 () Bool)

(declare-fun e!633234 () Bool)

(assert (=> b!1110244 (= e!633234 true)))

(declare-fun e!633239 () Bool)

(assert (=> b!1110244 e!633239))

(declare-fun c!109184 () Bool)

(assert (=> b!1110244 (= c!109184 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36355 0))(
  ( (Unit!36356) )
))
(declare-fun lt!496111 () Unit!36355)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!284 (array!72096 array!72098 (_ BitVec 32) (_ BitVec 32) V!41947 V!41947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36355)

(assert (=> b!1110244 (= lt!496111 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!284 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110245 () Bool)

(declare-fun e!633237 () Bool)

(assert (=> b!1110245 (= e!633238 e!633237)))

(declare-fun res!740991 () Bool)

(assert (=> b!1110245 (=> (not res!740991) (not e!633237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72096 (_ BitVec 32)) Bool)

(assert (=> b!1110245 (= res!740991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496112 mask!1564))))

(assert (=> b!1110245 (= lt!496112 (array!72097 (store (arr!34697 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35234 _keys!1208)))))

(declare-fun call!46763 () ListLongMap!15579)

(declare-fun b!1110246 () Bool)

(declare-fun -!1032 (ListLongMap!15579 (_ BitVec 64)) ListLongMap!15579)

(assert (=> b!1110246 (= e!633239 (= call!46762 (-!1032 call!46763 k0!934)))))

(declare-fun bm!46760 () Bool)

(assert (=> bm!46760 (= call!46763 (getCurrentListMapNoExtraKeys!4268 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!740989 () Bool)

(assert (=> start!97420 (=> (not res!740989) (not e!633238))))

(assert (=> start!97420 (= res!740989 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35234 _keys!1208))))))

(assert (=> start!97420 e!633238))

(declare-fun tp_is_empty!27615 () Bool)

(assert (=> start!97420 tp_is_empty!27615))

(declare-fun array_inv!26564 (array!72096) Bool)

(assert (=> start!97420 (array_inv!26564 _keys!1208)))

(assert (=> start!97420 true))

(assert (=> start!97420 tp!82364))

(declare-fun e!633232 () Bool)

(declare-fun array_inv!26565 (array!72098) Bool)

(assert (=> start!97420 (and (array_inv!26565 _values!996) e!633232)))

(declare-fun b!1110247 () Bool)

(declare-fun e!633236 () Bool)

(assert (=> b!1110247 (= e!633236 tp_is_empty!27615)))

(declare-fun mapNonEmpty!43240 () Bool)

(declare-fun tp!82365 () Bool)

(declare-fun e!633235 () Bool)

(assert (=> mapNonEmpty!43240 (= mapRes!43240 (and tp!82365 e!633235))))

(declare-fun mapKey!43240 () (_ BitVec 32))

(declare-fun mapRest!43240 () (Array (_ BitVec 32) ValueCell!13098))

(declare-fun mapValue!43240 () ValueCell!13098)

(assert (=> mapNonEmpty!43240 (= (arr!34698 _values!996) (store mapRest!43240 mapKey!43240 mapValue!43240))))

(declare-fun b!1110248 () Bool)

(declare-fun res!740983 () Bool)

(assert (=> b!1110248 (=> (not res!740983) (not e!633238))))

(assert (=> b!1110248 (= res!740983 (= (select (arr!34697 _keys!1208) i!673) k0!934))))

(declare-fun b!1110249 () Bool)

(declare-fun res!740985 () Bool)

(assert (=> b!1110249 (=> (not res!740985) (not e!633238))))

(assert (=> b!1110249 (= res!740985 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35234 _keys!1208))))))

(declare-fun b!1110250 () Bool)

(declare-fun res!740990 () Bool)

(assert (=> b!1110250 (=> (not res!740990) (not e!633238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110250 (= res!740990 (validKeyInArray!0 k0!934))))

(declare-fun b!1110251 () Bool)

(declare-fun res!740988 () Bool)

(assert (=> b!1110251 (=> (not res!740988) (not e!633238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110251 (= res!740988 (validMask!0 mask!1564))))

(declare-fun b!1110252 () Bool)

(assert (=> b!1110252 (= e!633239 (= call!46762 call!46763))))

(declare-fun b!1110253 () Bool)

(assert (=> b!1110253 (= e!633232 (and e!633236 mapRes!43240))))

(declare-fun condMapEmpty!43240 () Bool)

(declare-fun mapDefault!43240 () ValueCell!13098)

(assert (=> b!1110253 (= condMapEmpty!43240 (= (arr!34698 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13098)) mapDefault!43240)))))

(declare-fun b!1110254 () Bool)

(declare-fun res!740986 () Bool)

(assert (=> b!1110254 (=> (not res!740986) (not e!633238))))

(assert (=> b!1110254 (= res!740986 (and (= (size!35235 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35234 _keys!1208) (size!35235 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1110255 () Bool)

(assert (=> b!1110255 (= e!633235 tp_is_empty!27615)))

(declare-fun b!1110256 () Bool)

(assert (=> b!1110256 (= e!633237 (not e!633234))))

(declare-fun res!740982 () Bool)

(assert (=> b!1110256 (=> res!740982 e!633234)))

(assert (=> b!1110256 (= res!740982 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35234 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110256 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496113 () Unit!36355)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72096 (_ BitVec 64) (_ BitVec 32)) Unit!36355)

(assert (=> b!1110256 (= lt!496113 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1110257 () Bool)

(declare-fun res!740987 () Bool)

(assert (=> b!1110257 (=> (not res!740987) (not e!633237))))

(assert (=> b!1110257 (= res!740987 (arrayNoDuplicates!0 lt!496112 #b00000000000000000000000000000000 Nil!24331))))

(declare-fun b!1110258 () Bool)

(declare-fun res!740984 () Bool)

(assert (=> b!1110258 (=> (not res!740984) (not e!633238))))

(assert (=> b!1110258 (= res!740984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97420 res!740989) b!1110251))

(assert (= (and b!1110251 res!740988) b!1110254))

(assert (= (and b!1110254 res!740986) b!1110258))

(assert (= (and b!1110258 res!740984) b!1110243))

(assert (= (and b!1110243 res!740981) b!1110249))

(assert (= (and b!1110249 res!740985) b!1110250))

(assert (= (and b!1110250 res!740990) b!1110248))

(assert (= (and b!1110248 res!740983) b!1110245))

(assert (= (and b!1110245 res!740991) b!1110257))

(assert (= (and b!1110257 res!740987) b!1110256))

(assert (= (and b!1110256 (not res!740982)) b!1110244))

(assert (= (and b!1110244 c!109184) b!1110246))

(assert (= (and b!1110244 (not c!109184)) b!1110252))

(assert (= (or b!1110246 b!1110252) bm!46759))

(assert (= (or b!1110246 b!1110252) bm!46760))

(assert (= (and b!1110253 condMapEmpty!43240) mapIsEmpty!43240))

(assert (= (and b!1110253 (not condMapEmpty!43240)) mapNonEmpty!43240))

(get-info :version)

(assert (= (and mapNonEmpty!43240 ((_ is ValueCellFull!13098) mapValue!43240)) b!1110255))

(assert (= (and b!1110253 ((_ is ValueCellFull!13098) mapDefault!43240)) b!1110247))

(assert (= start!97420 b!1110253))

(declare-fun b_lambda!18411 () Bool)

(assert (=> (not b_lambda!18411) (not bm!46759)))

(declare-fun t!34741 () Bool)

(declare-fun tb!8229 () Bool)

(assert (=> (and start!97420 (= defaultEntry!1004 defaultEntry!1004) t!34741) tb!8229))

(declare-fun result!17011 () Bool)

(assert (=> tb!8229 (= result!17011 tp_is_empty!27615)))

(assert (=> bm!46759 t!34741))

(declare-fun b_and!37569 () Bool)

(assert (= b_and!37567 (and (=> t!34741 result!17011) b_and!37569)))

(declare-fun m!1028433 () Bool)

(assert (=> b!1110251 m!1028433))

(declare-fun m!1028435 () Bool)

(assert (=> b!1110256 m!1028435))

(declare-fun m!1028437 () Bool)

(assert (=> b!1110256 m!1028437))

(declare-fun m!1028439 () Bool)

(assert (=> b!1110257 m!1028439))

(declare-fun m!1028441 () Bool)

(assert (=> b!1110244 m!1028441))

(declare-fun m!1028443 () Bool)

(assert (=> b!1110258 m!1028443))

(declare-fun m!1028445 () Bool)

(assert (=> b!1110243 m!1028445))

(declare-fun m!1028447 () Bool)

(assert (=> bm!46760 m!1028447))

(declare-fun m!1028449 () Bool)

(assert (=> b!1110246 m!1028449))

(declare-fun m!1028451 () Bool)

(assert (=> start!97420 m!1028451))

(declare-fun m!1028453 () Bool)

(assert (=> start!97420 m!1028453))

(declare-fun m!1028455 () Bool)

(assert (=> b!1110248 m!1028455))

(declare-fun m!1028457 () Bool)

(assert (=> mapNonEmpty!43240 m!1028457))

(declare-fun m!1028459 () Bool)

(assert (=> b!1110245 m!1028459))

(declare-fun m!1028461 () Bool)

(assert (=> b!1110245 m!1028461))

(declare-fun m!1028463 () Bool)

(assert (=> b!1110250 m!1028463))

(declare-fun m!1028465 () Bool)

(assert (=> bm!46759 m!1028465))

(declare-fun m!1028467 () Bool)

(assert (=> bm!46759 m!1028467))

(declare-fun m!1028469 () Bool)

(assert (=> bm!46759 m!1028469))

(check-sat (not b!1110258) (not b!1110251) (not bm!46759) (not b!1110245) b_and!37569 (not b_next!23355) (not b!1110257) tp_is_empty!27615 (not b!1110243) (not b_lambda!18411) (not b!1110246) (not b!1110256) (not start!97420) (not b!1110250) (not mapNonEmpty!43240) (not bm!46760) (not b!1110244))
(check-sat b_and!37569 (not b_next!23355))
