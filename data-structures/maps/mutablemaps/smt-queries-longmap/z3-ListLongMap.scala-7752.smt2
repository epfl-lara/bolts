; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97294 () Bool)

(assert start!97294)

(declare-fun b_free!23229 () Bool)

(declare-fun b_next!23229 () Bool)

(assert (=> start!97294 (= b_free!23229 (not b_next!23229))))

(declare-fun tp!81987 () Bool)

(declare-fun b_and!37307 () Bool)

(assert (=> start!97294 (= tp!81987 b_and!37307)))

(declare-fun b!1107046 () Bool)

(declare-fun res!738906 () Bool)

(declare-fun e!631698 () Bool)

(assert (=> b!1107046 (=> (not res!738906) (not e!631698))))

(declare-datatypes ((array!71848 0))(
  ( (array!71849 (arr!34573 (Array (_ BitVec 32) (_ BitVec 64))) (size!35110 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71848)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71848 (_ BitVec 32)) Bool)

(assert (=> b!1107046 (= res!738906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1107047 () Bool)

(declare-fun res!738907 () Bool)

(assert (=> b!1107047 (=> (not res!738907) (not e!631698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107047 (= res!738907 (validMask!0 mask!1564))))

(declare-datatypes ((V!41779 0))(
  ( (V!41780 (val!13801 Int)) )
))
(declare-fun zeroValue!944 () V!41779)

(declare-fun bm!46381 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17494 0))(
  ( (tuple2!17495 (_1!8757 (_ BitVec 64)) (_2!8757 V!41779)) )
))
(declare-datatypes ((List!24232 0))(
  ( (Nil!24229) (Cons!24228 (h!25437 tuple2!17494) (t!34514 List!24232)) )
))
(declare-datatypes ((ListLongMap!15475 0))(
  ( (ListLongMap!15476 (toList!7753 List!24232)) )
))
(declare-fun call!46384 () ListLongMap!15475)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13035 0))(
  ( (ValueCellFull!13035 (v!16435 V!41779)) (EmptyCell!13035) )
))
(declare-datatypes ((array!71850 0))(
  ( (array!71851 (arr!34574 (Array (_ BitVec 32) ValueCell!13035)) (size!35111 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71850)

(declare-fun minValue!944 () V!41779)

(declare-fun getCurrentListMapNoExtraKeys!4222 (array!71848 array!71850 (_ BitVec 32) (_ BitVec 32) V!41779 V!41779 (_ BitVec 32) Int) ListLongMap!15475)

(assert (=> bm!46381 (= call!46384 (getCurrentListMapNoExtraKeys!4222 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107048 () Bool)

(declare-fun e!631696 () Bool)

(declare-fun call!46385 () ListLongMap!15475)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!989 (ListLongMap!15475 (_ BitVec 64)) ListLongMap!15475)

(assert (=> b!1107048 (= e!631696 (= call!46385 (-!989 call!46384 k0!934)))))

(declare-fun b!1107049 () Bool)

(declare-fun e!631701 () Bool)

(declare-fun tp_is_empty!27489 () Bool)

(assert (=> b!1107049 (= e!631701 tp_is_empty!27489)))

(declare-fun b!1107050 () Bool)

(declare-fun e!631699 () Bool)

(assert (=> b!1107050 (= e!631699 true)))

(assert (=> b!1107050 e!631696))

(declare-fun c!108971 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107050 (= c!108971 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36269 0))(
  ( (Unit!36270) )
))
(declare-fun lt!495544 () Unit!36269)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!245 (array!71848 array!71850 (_ BitVec 32) (_ BitVec 32) V!41779 V!41779 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36269)

(assert (=> b!1107050 (= lt!495544 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!245 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107051 () Bool)

(declare-fun res!738902 () Bool)

(assert (=> b!1107051 (=> (not res!738902) (not e!631698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107051 (= res!738902 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!43051 () Bool)

(declare-fun mapRes!43051 () Bool)

(assert (=> mapIsEmpty!43051 mapRes!43051))

(declare-fun b!1107052 () Bool)

(declare-fun e!631702 () Bool)

(assert (=> b!1107052 (= e!631702 (and e!631701 mapRes!43051))))

(declare-fun condMapEmpty!43051 () Bool)

(declare-fun mapDefault!43051 () ValueCell!13035)

(assert (=> b!1107052 (= condMapEmpty!43051 (= (arr!34574 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13035)) mapDefault!43051)))))

(declare-fun mapNonEmpty!43051 () Bool)

(declare-fun tp!81986 () Bool)

(declare-fun e!631703 () Bool)

(assert (=> mapNonEmpty!43051 (= mapRes!43051 (and tp!81986 e!631703))))

(declare-fun mapKey!43051 () (_ BitVec 32))

(declare-fun mapRest!43051 () (Array (_ BitVec 32) ValueCell!13035))

(declare-fun mapValue!43051 () ValueCell!13035)

(assert (=> mapNonEmpty!43051 (= (arr!34574 _values!996) (store mapRest!43051 mapKey!43051 mapValue!43051))))

(declare-fun b!1107053 () Bool)

(declare-fun res!738912 () Bool)

(assert (=> b!1107053 (=> (not res!738912) (not e!631698))))

(assert (=> b!1107053 (= res!738912 (and (= (size!35111 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35110 _keys!1208) (size!35111 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!738905 () Bool)

(assert (=> start!97294 (=> (not res!738905) (not e!631698))))

(assert (=> start!97294 (= res!738905 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35110 _keys!1208))))))

(assert (=> start!97294 e!631698))

(assert (=> start!97294 tp_is_empty!27489))

(declare-fun array_inv!26470 (array!71848) Bool)

(assert (=> start!97294 (array_inv!26470 _keys!1208)))

(assert (=> start!97294 true))

(assert (=> start!97294 tp!81987))

(declare-fun array_inv!26471 (array!71850) Bool)

(assert (=> start!97294 (and (array_inv!26471 _values!996) e!631702)))

(declare-fun b!1107045 () Bool)

(declare-fun e!631700 () Bool)

(assert (=> b!1107045 (= e!631698 e!631700)))

(declare-fun res!738910 () Bool)

(assert (=> b!1107045 (=> (not res!738910) (not e!631700))))

(declare-fun lt!495546 () array!71848)

(assert (=> b!1107045 (= res!738910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495546 mask!1564))))

(assert (=> b!1107045 (= lt!495546 (array!71849 (store (arr!34573 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35110 _keys!1208)))))

(declare-fun b!1107054 () Bool)

(assert (=> b!1107054 (= e!631700 (not e!631699))))

(declare-fun res!738911 () Bool)

(assert (=> b!1107054 (=> res!738911 e!631699)))

(assert (=> b!1107054 (= res!738911 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35110 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107054 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495545 () Unit!36269)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71848 (_ BitVec 64) (_ BitVec 32)) Unit!36269)

(assert (=> b!1107054 (= lt!495545 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1107055 () Bool)

(declare-fun res!738904 () Bool)

(assert (=> b!1107055 (=> (not res!738904) (not e!631698))))

(assert (=> b!1107055 (= res!738904 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35110 _keys!1208))))))

(declare-fun bm!46382 () Bool)

(declare-fun dynLambda!2352 (Int (_ BitVec 64)) V!41779)

(assert (=> bm!46382 (= call!46385 (getCurrentListMapNoExtraKeys!4222 lt!495546 (array!71851 (store (arr!34574 _values!996) i!673 (ValueCellFull!13035 (dynLambda!2352 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35111 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107056 () Bool)

(assert (=> b!1107056 (= e!631696 (= call!46385 call!46384))))

(declare-fun b!1107057 () Bool)

(assert (=> b!1107057 (= e!631703 tp_is_empty!27489)))

(declare-fun b!1107058 () Bool)

(declare-fun res!738903 () Bool)

(assert (=> b!1107058 (=> (not res!738903) (not e!631698))))

(assert (=> b!1107058 (= res!738903 (= (select (arr!34573 _keys!1208) i!673) k0!934))))

(declare-fun b!1107059 () Bool)

(declare-fun res!738909 () Bool)

(assert (=> b!1107059 (=> (not res!738909) (not e!631698))))

(declare-datatypes ((List!24233 0))(
  ( (Nil!24230) (Cons!24229 (h!25438 (_ BitVec 64)) (t!34515 List!24233)) )
))
(declare-fun arrayNoDuplicates!0 (array!71848 (_ BitVec 32) List!24233) Bool)

(assert (=> b!1107059 (= res!738909 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24230))))

(declare-fun b!1107060 () Bool)

(declare-fun res!738908 () Bool)

(assert (=> b!1107060 (=> (not res!738908) (not e!631700))))

(assert (=> b!1107060 (= res!738908 (arrayNoDuplicates!0 lt!495546 #b00000000000000000000000000000000 Nil!24230))))

(assert (= (and start!97294 res!738905) b!1107047))

(assert (= (and b!1107047 res!738907) b!1107053))

(assert (= (and b!1107053 res!738912) b!1107046))

(assert (= (and b!1107046 res!738906) b!1107059))

(assert (= (and b!1107059 res!738909) b!1107055))

(assert (= (and b!1107055 res!738904) b!1107051))

(assert (= (and b!1107051 res!738902) b!1107058))

(assert (= (and b!1107058 res!738903) b!1107045))

(assert (= (and b!1107045 res!738910) b!1107060))

(assert (= (and b!1107060 res!738908) b!1107054))

(assert (= (and b!1107054 (not res!738911)) b!1107050))

(assert (= (and b!1107050 c!108971) b!1107048))

(assert (= (and b!1107050 (not c!108971)) b!1107056))

(assert (= (or b!1107048 b!1107056) bm!46382))

(assert (= (or b!1107048 b!1107056) bm!46381))

(assert (= (and b!1107052 condMapEmpty!43051) mapIsEmpty!43051))

(assert (= (and b!1107052 (not condMapEmpty!43051)) mapNonEmpty!43051))

(get-info :version)

(assert (= (and mapNonEmpty!43051 ((_ is ValueCellFull!13035) mapValue!43051)) b!1107057))

(assert (= (and b!1107052 ((_ is ValueCellFull!13035) mapDefault!43051)) b!1107049))

(assert (= start!97294 b!1107052))

(declare-fun b_lambda!18277 () Bool)

(assert (=> (not b_lambda!18277) (not bm!46382)))

(declare-fun t!34513 () Bool)

(declare-fun tb!8103 () Bool)

(assert (=> (and start!97294 (= defaultEntry!1004 defaultEntry!1004) t!34513) tb!8103))

(declare-fun result!16759 () Bool)

(assert (=> tb!8103 (= result!16759 tp_is_empty!27489)))

(assert (=> bm!46382 t!34513))

(declare-fun b_and!37309 () Bool)

(assert (= b_and!37307 (and (=> t!34513 result!16759) b_and!37309)))

(declare-fun m!1026039 () Bool)

(assert (=> mapNonEmpty!43051 m!1026039))

(declare-fun m!1026041 () Bool)

(assert (=> start!97294 m!1026041))

(declare-fun m!1026043 () Bool)

(assert (=> start!97294 m!1026043))

(declare-fun m!1026045 () Bool)

(assert (=> bm!46382 m!1026045))

(declare-fun m!1026047 () Bool)

(assert (=> bm!46382 m!1026047))

(declare-fun m!1026049 () Bool)

(assert (=> bm!46382 m!1026049))

(declare-fun m!1026051 () Bool)

(assert (=> b!1107050 m!1026051))

(declare-fun m!1026053 () Bool)

(assert (=> b!1107047 m!1026053))

(declare-fun m!1026055 () Bool)

(assert (=> b!1107046 m!1026055))

(declare-fun m!1026057 () Bool)

(assert (=> bm!46381 m!1026057))

(declare-fun m!1026059 () Bool)

(assert (=> b!1107058 m!1026059))

(declare-fun m!1026061 () Bool)

(assert (=> b!1107054 m!1026061))

(declare-fun m!1026063 () Bool)

(assert (=> b!1107054 m!1026063))

(declare-fun m!1026065 () Bool)

(assert (=> b!1107059 m!1026065))

(declare-fun m!1026067 () Bool)

(assert (=> b!1107045 m!1026067))

(declare-fun m!1026069 () Bool)

(assert (=> b!1107045 m!1026069))

(declare-fun m!1026071 () Bool)

(assert (=> b!1107060 m!1026071))

(declare-fun m!1026073 () Bool)

(assert (=> b!1107048 m!1026073))

(declare-fun m!1026075 () Bool)

(assert (=> b!1107051 m!1026075))

(check-sat b_and!37309 (not b!1107060) (not b!1107051) (not bm!46381) (not b!1107047) (not bm!46382) (not b_lambda!18277) (not b!1107048) (not b_next!23229) (not b!1107045) (not start!97294) (not b!1107059) (not b!1107046) (not b!1107054) (not b!1107050) tp_is_empty!27489 (not mapNonEmpty!43051))
(check-sat b_and!37309 (not b_next!23229))
