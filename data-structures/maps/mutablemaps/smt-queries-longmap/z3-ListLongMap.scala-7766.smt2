; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97378 () Bool)

(assert start!97378)

(declare-fun b_free!23313 () Bool)

(declare-fun b_next!23313 () Bool)

(assert (=> start!97378 (= b_free!23313 (not b_next!23313))))

(declare-fun tp!82239 () Bool)

(declare-fun b_and!37479 () Bool)

(assert (=> start!97378 (= tp!82239 b_and!37479)))

(declare-fun b!1109169 () Bool)

(declare-fun res!740298 () Bool)

(declare-fun e!632721 () Bool)

(assert (=> b!1109169 (=> (not res!740298) (not e!632721))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72014 0))(
  ( (array!72015 (arr!34656 (Array (_ BitVec 32) (_ BitVec 64))) (size!35193 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72014)

(assert (=> b!1109169 (= res!740298 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35193 _keys!1208))))))

(declare-fun b!1109170 () Bool)

(declare-fun e!632720 () Bool)

(assert (=> b!1109170 (= e!632721 e!632720)))

(declare-fun res!740289 () Bool)

(assert (=> b!1109170 (=> (not res!740289) (not e!632720))))

(declare-fun lt!495922 () array!72014)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72014 (_ BitVec 32)) Bool)

(assert (=> b!1109170 (= res!740289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495922 mask!1564))))

(assert (=> b!1109170 (= lt!495922 (array!72015 (store (arr!34656 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35193 _keys!1208)))))

(declare-fun b!1109171 () Bool)

(declare-fun res!740294 () Bool)

(assert (=> b!1109171 (=> (not res!740294) (not e!632721))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109171 (= res!740294 (validKeyInArray!0 k0!934))))

(declare-fun b!1109172 () Bool)

(declare-fun res!740293 () Bool)

(assert (=> b!1109172 (=> (not res!740293) (not e!632721))))

(declare-datatypes ((List!24303 0))(
  ( (Nil!24300) (Cons!24299 (h!25508 (_ BitVec 64)) (t!34669 List!24303)) )
))
(declare-fun arrayNoDuplicates!0 (array!72014 (_ BitVec 32) List!24303) Bool)

(assert (=> b!1109172 (= res!740293 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24300))))

(declare-fun res!740292 () Bool)

(assert (=> start!97378 (=> (not res!740292) (not e!632721))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97378 (= res!740292 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35193 _keys!1208))))))

(assert (=> start!97378 e!632721))

(declare-fun tp_is_empty!27573 () Bool)

(assert (=> start!97378 tp_is_empty!27573))

(declare-fun array_inv!26536 (array!72014) Bool)

(assert (=> start!97378 (array_inv!26536 _keys!1208)))

(assert (=> start!97378 true))

(assert (=> start!97378 tp!82239))

(declare-datatypes ((V!41891 0))(
  ( (V!41892 (val!13843 Int)) )
))
(declare-datatypes ((ValueCell!13077 0))(
  ( (ValueCellFull!13077 (v!16477 V!41891)) (EmptyCell!13077) )
))
(declare-datatypes ((array!72016 0))(
  ( (array!72017 (arr!34657 (Array (_ BitVec 32) ValueCell!13077)) (size!35194 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72016)

(declare-fun e!632718 () Bool)

(declare-fun array_inv!26537 (array!72016) Bool)

(assert (=> start!97378 (and (array_inv!26537 _values!996) e!632718)))

(declare-fun b!1109173 () Bool)

(declare-fun res!740288 () Bool)

(assert (=> b!1109173 (=> (not res!740288) (not e!632720))))

(assert (=> b!1109173 (= res!740288 (arrayNoDuplicates!0 lt!495922 #b00000000000000000000000000000000 Nil!24300))))

(declare-fun b!1109174 () Bool)

(declare-fun res!740291 () Bool)

(assert (=> b!1109174 (=> (not res!740291) (not e!632721))))

(assert (=> b!1109174 (= res!740291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109175 () Bool)

(declare-fun res!740297 () Bool)

(assert (=> b!1109175 (=> (not res!740297) (not e!632721))))

(assert (=> b!1109175 (= res!740297 (= (select (arr!34656 _keys!1208) i!673) k0!934))))

(declare-fun b!1109176 () Bool)

(declare-fun e!632719 () Bool)

(declare-datatypes ((tuple2!17566 0))(
  ( (tuple2!17567 (_1!8793 (_ BitVec 64)) (_2!8793 V!41891)) )
))
(declare-datatypes ((List!24304 0))(
  ( (Nil!24301) (Cons!24300 (h!25509 tuple2!17566) (t!34670 List!24304)) )
))
(declare-datatypes ((ListLongMap!15547 0))(
  ( (ListLongMap!15548 (toList!7789 List!24304)) )
))
(declare-fun call!46636 () ListLongMap!15547)

(declare-fun call!46637 () ListLongMap!15547)

(assert (=> b!1109176 (= e!632719 (= call!46636 call!46637))))

(declare-fun mapIsEmpty!43177 () Bool)

(declare-fun mapRes!43177 () Bool)

(assert (=> mapIsEmpty!43177 mapRes!43177))

(declare-fun b!1109177 () Bool)

(declare-fun res!740296 () Bool)

(assert (=> b!1109177 (=> (not res!740296) (not e!632721))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109177 (= res!740296 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!41891)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46633 () Bool)

(declare-fun minValue!944 () V!41891)

(declare-fun getCurrentListMapNoExtraKeys!4254 (array!72014 array!72016 (_ BitVec 32) (_ BitVec 32) V!41891 V!41891 (_ BitVec 32) Int) ListLongMap!15547)

(assert (=> bm!46633 (= call!46637 (getCurrentListMapNoExtraKeys!4254 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109178 () Bool)

(declare-fun res!740295 () Bool)

(assert (=> b!1109178 (=> (not res!740295) (not e!632721))))

(assert (=> b!1109178 (= res!740295 (and (= (size!35194 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35193 _keys!1208) (size!35194 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43177 () Bool)

(declare-fun tp!82238 () Bool)

(declare-fun e!632723 () Bool)

(assert (=> mapNonEmpty!43177 (= mapRes!43177 (and tp!82238 e!632723))))

(declare-fun mapValue!43177 () ValueCell!13077)

(declare-fun mapRest!43177 () (Array (_ BitVec 32) ValueCell!13077))

(declare-fun mapKey!43177 () (_ BitVec 32))

(assert (=> mapNonEmpty!43177 (= (arr!34657 _values!996) (store mapRest!43177 mapKey!43177 mapValue!43177))))

(declare-fun b!1109179 () Bool)

(declare-fun e!632722 () Bool)

(assert (=> b!1109179 (= e!632720 (not e!632722))))

(declare-fun res!740290 () Bool)

(assert (=> b!1109179 (=> res!740290 e!632722)))

(assert (=> b!1109179 (= res!740290 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35193 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72014 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109179 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36325 0))(
  ( (Unit!36326) )
))
(declare-fun lt!495923 () Unit!36325)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72014 (_ BitVec 64) (_ BitVec 32)) Unit!36325)

(assert (=> b!1109179 (= lt!495923 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1109180 () Bool)

(declare-fun e!632717 () Bool)

(assert (=> b!1109180 (= e!632718 (and e!632717 mapRes!43177))))

(declare-fun condMapEmpty!43177 () Bool)

(declare-fun mapDefault!43177 () ValueCell!13077)

(assert (=> b!1109180 (= condMapEmpty!43177 (= (arr!34657 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13077)) mapDefault!43177)))))

(declare-fun b!1109181 () Bool)

(assert (=> b!1109181 (= e!632717 tp_is_empty!27573)))

(declare-fun b!1109182 () Bool)

(assert (=> b!1109182 (= e!632722 true)))

(assert (=> b!1109182 e!632719))

(declare-fun c!109109 () Bool)

(assert (=> b!1109182 (= c!109109 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495924 () Unit!36325)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!270 (array!72014 array!72016 (_ BitVec 32) (_ BitVec 32) V!41891 V!41891 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36325)

(assert (=> b!1109182 (= lt!495924 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!270 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46634 () Bool)

(declare-fun dynLambda!2378 (Int (_ BitVec 64)) V!41891)

(assert (=> bm!46634 (= call!46636 (getCurrentListMapNoExtraKeys!4254 lt!495922 (array!72017 (store (arr!34657 _values!996) i!673 (ValueCellFull!13077 (dynLambda!2378 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35194 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109183 () Bool)

(assert (=> b!1109183 (= e!632723 tp_is_empty!27573)))

(declare-fun b!1109184 () Bool)

(declare-fun -!1018 (ListLongMap!15547 (_ BitVec 64)) ListLongMap!15547)

(assert (=> b!1109184 (= e!632719 (= call!46636 (-!1018 call!46637 k0!934)))))

(assert (= (and start!97378 res!740292) b!1109177))

(assert (= (and b!1109177 res!740296) b!1109178))

(assert (= (and b!1109178 res!740295) b!1109174))

(assert (= (and b!1109174 res!740291) b!1109172))

(assert (= (and b!1109172 res!740293) b!1109169))

(assert (= (and b!1109169 res!740298) b!1109171))

(assert (= (and b!1109171 res!740294) b!1109175))

(assert (= (and b!1109175 res!740297) b!1109170))

(assert (= (and b!1109170 res!740289) b!1109173))

(assert (= (and b!1109173 res!740288) b!1109179))

(assert (= (and b!1109179 (not res!740290)) b!1109182))

(assert (= (and b!1109182 c!109109) b!1109184))

(assert (= (and b!1109182 (not c!109109)) b!1109176))

(assert (= (or b!1109184 b!1109176) bm!46634))

(assert (= (or b!1109184 b!1109176) bm!46633))

(assert (= (and b!1109180 condMapEmpty!43177) mapIsEmpty!43177))

(assert (= (and b!1109180 (not condMapEmpty!43177)) mapNonEmpty!43177))

(get-info :version)

(assert (= (and mapNonEmpty!43177 ((_ is ValueCellFull!13077) mapValue!43177)) b!1109183))

(assert (= (and b!1109180 ((_ is ValueCellFull!13077) mapDefault!43177)) b!1109181))

(assert (= start!97378 b!1109180))

(declare-fun b_lambda!18365 () Bool)

(assert (=> (not b_lambda!18365) (not bm!46634)))

(declare-fun t!34668 () Bool)

(declare-fun tb!8187 () Bool)

(assert (=> (and start!97378 (= defaultEntry!1004 defaultEntry!1004) t!34668) tb!8187))

(declare-fun result!16927 () Bool)

(assert (=> tb!8187 (= result!16927 tp_is_empty!27573)))

(assert (=> bm!46634 t!34668))

(declare-fun b_and!37481 () Bool)

(assert (= b_and!37479 (and (=> t!34668 result!16927) b_and!37481)))

(declare-fun m!1027635 () Bool)

(assert (=> b!1109184 m!1027635))

(declare-fun m!1027637 () Bool)

(assert (=> b!1109175 m!1027637))

(declare-fun m!1027639 () Bool)

(assert (=> mapNonEmpty!43177 m!1027639))

(declare-fun m!1027641 () Bool)

(assert (=> b!1109174 m!1027641))

(declare-fun m!1027643 () Bool)

(assert (=> b!1109172 m!1027643))

(declare-fun m!1027645 () Bool)

(assert (=> b!1109173 m!1027645))

(declare-fun m!1027647 () Bool)

(assert (=> bm!46633 m!1027647))

(declare-fun m!1027649 () Bool)

(assert (=> b!1109170 m!1027649))

(declare-fun m!1027651 () Bool)

(assert (=> b!1109170 m!1027651))

(declare-fun m!1027653 () Bool)

(assert (=> b!1109177 m!1027653))

(declare-fun m!1027655 () Bool)

(assert (=> b!1109179 m!1027655))

(declare-fun m!1027657 () Bool)

(assert (=> b!1109179 m!1027657))

(declare-fun m!1027659 () Bool)

(assert (=> bm!46634 m!1027659))

(declare-fun m!1027661 () Bool)

(assert (=> bm!46634 m!1027661))

(declare-fun m!1027663 () Bool)

(assert (=> bm!46634 m!1027663))

(declare-fun m!1027665 () Bool)

(assert (=> start!97378 m!1027665))

(declare-fun m!1027667 () Bool)

(assert (=> start!97378 m!1027667))

(declare-fun m!1027669 () Bool)

(assert (=> b!1109171 m!1027669))

(declare-fun m!1027671 () Bool)

(assert (=> b!1109182 m!1027671))

(check-sat b_and!37481 (not b!1109179) (not mapNonEmpty!43177) tp_is_empty!27573 (not b!1109172) (not b!1109177) (not b!1109174) (not b!1109182) (not b!1109173) (not b!1109170) (not b!1109171) (not b_lambda!18365) (not b_next!23313) (not start!97378) (not bm!46633) (not bm!46634) (not b!1109184))
(check-sat b_and!37481 (not b_next!23313))
