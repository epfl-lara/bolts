; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97342 () Bool)

(assert start!97342)

(declare-fun b_free!23277 () Bool)

(declare-fun b_next!23277 () Bool)

(assert (=> start!97342 (= b_free!23277 (not b_next!23277))))

(declare-fun tp!82130 () Bool)

(declare-fun b_and!37405 () Bool)

(assert (=> start!97342 (= tp!82130 b_and!37405)))

(declare-fun b!1108257 () Bool)

(declare-fun e!632284 () Bool)

(declare-datatypes ((V!41843 0))(
  ( (V!41844 (val!13825 Int)) )
))
(declare-datatypes ((tuple2!17536 0))(
  ( (tuple2!17537 (_1!8778 (_ BitVec 64)) (_2!8778 V!41843)) )
))
(declare-datatypes ((List!24272 0))(
  ( (Nil!24269) (Cons!24268 (h!25477 tuple2!17536) (t!34602 List!24272)) )
))
(declare-datatypes ((ListLongMap!15517 0))(
  ( (ListLongMap!15518 (toList!7774 List!24272)) )
))
(declare-fun call!46529 () ListLongMap!15517)

(declare-fun call!46528 () ListLongMap!15517)

(assert (=> b!1108257 (= e!632284 (= call!46529 call!46528))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1108258 () Bool)

(declare-fun -!1006 (ListLongMap!15517 (_ BitVec 64)) ListLongMap!15517)

(assert (=> b!1108258 (= e!632284 (= call!46529 (-!1006 call!46528 k0!934)))))

(declare-fun mapNonEmpty!43123 () Bool)

(declare-fun mapRes!43123 () Bool)

(declare-fun tp!82131 () Bool)

(declare-fun e!632285 () Bool)

(assert (=> mapNonEmpty!43123 (= mapRes!43123 (and tp!82131 e!632285))))

(declare-datatypes ((ValueCell!13059 0))(
  ( (ValueCellFull!13059 (v!16459 V!41843)) (EmptyCell!13059) )
))
(declare-fun mapRest!43123 () (Array (_ BitVec 32) ValueCell!13059))

(declare-fun mapKey!43123 () (_ BitVec 32))

(declare-fun mapValue!43123 () ValueCell!13059)

(declare-datatypes ((array!71942 0))(
  ( (array!71943 (arr!34620 (Array (_ BitVec 32) ValueCell!13059)) (size!35157 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71942)

(assert (=> mapNonEmpty!43123 (= (arr!34620 _values!996) (store mapRest!43123 mapKey!43123 mapValue!43123))))

(declare-fun b!1108259 () Bool)

(declare-fun res!739698 () Bool)

(declare-fun e!632278 () Bool)

(assert (=> b!1108259 (=> (not res!739698) (not e!632278))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108259 (= res!739698 (validMask!0 mask!1564))))

(declare-fun b!1108260 () Bool)

(declare-fun e!632281 () Bool)

(assert (=> b!1108260 (= e!632278 e!632281)))

(declare-fun res!739702 () Bool)

(assert (=> b!1108260 (=> (not res!739702) (not e!632281))))

(declare-datatypes ((array!71944 0))(
  ( (array!71945 (arr!34621 (Array (_ BitVec 32) (_ BitVec 64))) (size!35158 (_ BitVec 32))) )
))
(declare-fun lt!495760 () array!71944)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71944 (_ BitVec 32)) Bool)

(assert (=> b!1108260 (= res!739702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495760 mask!1564))))

(declare-fun _keys!1208 () array!71944)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108260 (= lt!495760 (array!71945 (store (arr!34621 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35158 _keys!1208)))))

(declare-fun b!1108261 () Bool)

(declare-fun e!632279 () Bool)

(declare-fun e!632283 () Bool)

(assert (=> b!1108261 (= e!632279 (and e!632283 mapRes!43123))))

(declare-fun condMapEmpty!43123 () Bool)

(declare-fun mapDefault!43123 () ValueCell!13059)

(assert (=> b!1108261 (= condMapEmpty!43123 (= (arr!34620 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13059)) mapDefault!43123)))))

(declare-fun b!1108262 () Bool)

(declare-fun res!739696 () Bool)

(assert (=> b!1108262 (=> (not res!739696) (not e!632278))))

(declare-datatypes ((List!24273 0))(
  ( (Nil!24270) (Cons!24269 (h!25478 (_ BitVec 64)) (t!34603 List!24273)) )
))
(declare-fun arrayNoDuplicates!0 (array!71944 (_ BitVec 32) List!24273) Bool)

(assert (=> b!1108262 (= res!739696 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24270))))

(declare-fun b!1108263 () Bool)

(declare-fun res!739703 () Bool)

(assert (=> b!1108263 (=> (not res!739703) (not e!632281))))

(assert (=> b!1108263 (= res!739703 (arrayNoDuplicates!0 lt!495760 #b00000000000000000000000000000000 Nil!24270))))

(declare-fun b!1108264 () Bool)

(declare-fun res!739701 () Bool)

(assert (=> b!1108264 (=> (not res!739701) (not e!632278))))

(assert (=> b!1108264 (= res!739701 (= (select (arr!34621 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43123 () Bool)

(assert (=> mapIsEmpty!43123 mapRes!43123))

(declare-fun b!1108265 () Bool)

(declare-fun res!739694 () Bool)

(assert (=> b!1108265 (=> (not res!739694) (not e!632278))))

(assert (=> b!1108265 (= res!739694 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35158 _keys!1208))))))

(declare-fun b!1108266 () Bool)

(declare-fun e!632280 () Bool)

(assert (=> b!1108266 (= e!632280 true)))

(assert (=> b!1108266 e!632284))

(declare-fun c!109049 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1108266 (= c!109049 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41843)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!36301 0))(
  ( (Unit!36302) )
))
(declare-fun lt!495762 () Unit!36301)

(declare-fun minValue!944 () V!41843)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!259 (array!71944 array!71942 (_ BitVec 32) (_ BitVec 32) V!41843 V!41843 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36301)

(assert (=> b!1108266 (= lt!495762 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!259 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46525 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4241 (array!71944 array!71942 (_ BitVec 32) (_ BitVec 32) V!41843 V!41843 (_ BitVec 32) Int) ListLongMap!15517)

(declare-fun dynLambda!2366 (Int (_ BitVec 64)) V!41843)

(assert (=> bm!46525 (= call!46529 (getCurrentListMapNoExtraKeys!4241 lt!495760 (array!71943 (store (arr!34620 _values!996) i!673 (ValueCellFull!13059 (dynLambda!2366 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35157 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!739699 () Bool)

(assert (=> start!97342 (=> (not res!739699) (not e!632278))))

(assert (=> start!97342 (= res!739699 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35158 _keys!1208))))))

(assert (=> start!97342 e!632278))

(declare-fun tp_is_empty!27537 () Bool)

(assert (=> start!97342 tp_is_empty!27537))

(declare-fun array_inv!26510 (array!71944) Bool)

(assert (=> start!97342 (array_inv!26510 _keys!1208)))

(assert (=> start!97342 true))

(assert (=> start!97342 tp!82130))

(declare-fun array_inv!26511 (array!71942) Bool)

(assert (=> start!97342 (and (array_inv!26511 _values!996) e!632279)))

(declare-fun b!1108267 () Bool)

(assert (=> b!1108267 (= e!632283 tp_is_empty!27537)))

(declare-fun b!1108268 () Bool)

(declare-fun res!739704 () Bool)

(assert (=> b!1108268 (=> (not res!739704) (not e!632278))))

(assert (=> b!1108268 (= res!739704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1108269 () Bool)

(assert (=> b!1108269 (= e!632285 tp_is_empty!27537)))

(declare-fun bm!46526 () Bool)

(assert (=> bm!46526 (= call!46528 (getCurrentListMapNoExtraKeys!4241 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108270 () Bool)

(declare-fun res!739695 () Bool)

(assert (=> b!1108270 (=> (not res!739695) (not e!632278))))

(assert (=> b!1108270 (= res!739695 (and (= (size!35157 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35158 _keys!1208) (size!35157 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1108271 () Bool)

(declare-fun res!739700 () Bool)

(assert (=> b!1108271 (=> (not res!739700) (not e!632278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108271 (= res!739700 (validKeyInArray!0 k0!934))))

(declare-fun b!1108272 () Bool)

(assert (=> b!1108272 (= e!632281 (not e!632280))))

(declare-fun res!739697 () Bool)

(assert (=> b!1108272 (=> res!739697 e!632280)))

(assert (=> b!1108272 (= res!739697 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35158 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108272 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495761 () Unit!36301)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71944 (_ BitVec 64) (_ BitVec 32)) Unit!36301)

(assert (=> b!1108272 (= lt!495761 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97342 res!739699) b!1108259))

(assert (= (and b!1108259 res!739698) b!1108270))

(assert (= (and b!1108270 res!739695) b!1108268))

(assert (= (and b!1108268 res!739704) b!1108262))

(assert (= (and b!1108262 res!739696) b!1108265))

(assert (= (and b!1108265 res!739694) b!1108271))

(assert (= (and b!1108271 res!739700) b!1108264))

(assert (= (and b!1108264 res!739701) b!1108260))

(assert (= (and b!1108260 res!739702) b!1108263))

(assert (= (and b!1108263 res!739703) b!1108272))

(assert (= (and b!1108272 (not res!739697)) b!1108266))

(assert (= (and b!1108266 c!109049) b!1108258))

(assert (= (and b!1108266 (not c!109049)) b!1108257))

(assert (= (or b!1108258 b!1108257) bm!46525))

(assert (= (or b!1108258 b!1108257) bm!46526))

(assert (= (and b!1108261 condMapEmpty!43123) mapIsEmpty!43123))

(assert (= (and b!1108261 (not condMapEmpty!43123)) mapNonEmpty!43123))

(get-info :version)

(assert (= (and mapNonEmpty!43123 ((_ is ValueCellFull!13059) mapValue!43123)) b!1108269))

(assert (= (and b!1108261 ((_ is ValueCellFull!13059) mapDefault!43123)) b!1108267))

(assert (= start!97342 b!1108261))

(declare-fun b_lambda!18327 () Bool)

(assert (=> (not b_lambda!18327) (not bm!46525)))

(declare-fun t!34601 () Bool)

(declare-fun tb!8151 () Bool)

(assert (=> (and start!97342 (= defaultEntry!1004 defaultEntry!1004) t!34601) tb!8151))

(declare-fun result!16855 () Bool)

(assert (=> tb!8151 (= result!16855 tp_is_empty!27537)))

(assert (=> bm!46525 t!34601))

(declare-fun b_and!37407 () Bool)

(assert (= b_and!37405 (and (=> t!34601 result!16855) b_and!37407)))

(declare-fun m!1026951 () Bool)

(assert (=> b!1108272 m!1026951))

(declare-fun m!1026953 () Bool)

(assert (=> b!1108272 m!1026953))

(declare-fun m!1026955 () Bool)

(assert (=> mapNonEmpty!43123 m!1026955))

(declare-fun m!1026957 () Bool)

(assert (=> b!1108266 m!1026957))

(declare-fun m!1026959 () Bool)

(assert (=> start!97342 m!1026959))

(declare-fun m!1026961 () Bool)

(assert (=> start!97342 m!1026961))

(declare-fun m!1026963 () Bool)

(assert (=> b!1108258 m!1026963))

(declare-fun m!1026965 () Bool)

(assert (=> bm!46526 m!1026965))

(declare-fun m!1026967 () Bool)

(assert (=> b!1108271 m!1026967))

(declare-fun m!1026969 () Bool)

(assert (=> bm!46525 m!1026969))

(declare-fun m!1026971 () Bool)

(assert (=> bm!46525 m!1026971))

(declare-fun m!1026973 () Bool)

(assert (=> bm!46525 m!1026973))

(declare-fun m!1026975 () Bool)

(assert (=> b!1108264 m!1026975))

(declare-fun m!1026977 () Bool)

(assert (=> b!1108259 m!1026977))

(declare-fun m!1026979 () Bool)

(assert (=> b!1108262 m!1026979))

(declare-fun m!1026981 () Bool)

(assert (=> b!1108268 m!1026981))

(declare-fun m!1026983 () Bool)

(assert (=> b!1108260 m!1026983))

(declare-fun m!1026985 () Bool)

(assert (=> b!1108260 m!1026985))

(declare-fun m!1026987 () Bool)

(assert (=> b!1108263 m!1026987))

(check-sat (not b!1108258) (not b!1108259) (not bm!46525) (not b!1108262) tp_is_empty!27537 (not b_lambda!18327) (not b!1108272) (not b!1108260) (not b_next!23277) (not b!1108268) (not b!1108263) (not start!97342) b_and!37407 (not bm!46526) (not mapNonEmpty!43123) (not b!1108266) (not b!1108271))
(check-sat b_and!37407 (not b_next!23277))
