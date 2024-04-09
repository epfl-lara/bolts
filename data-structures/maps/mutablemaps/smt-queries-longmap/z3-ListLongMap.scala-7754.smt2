; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97306 () Bool)

(assert start!97306)

(declare-fun b_free!23241 () Bool)

(declare-fun b_next!23241 () Bool)

(assert (=> start!97306 (= b_free!23241 (not b_next!23241))))

(declare-fun tp!82022 () Bool)

(declare-fun b_and!37331 () Bool)

(assert (=> start!97306 (= tp!82022 b_and!37331)))

(declare-fun b!1107345 () Bool)

(declare-fun e!631843 () Bool)

(declare-fun e!631844 () Bool)

(assert (=> b!1107345 (= e!631843 e!631844)))

(declare-fun res!739103 () Bool)

(assert (=> b!1107345 (=> (not res!739103) (not e!631844))))

(declare-datatypes ((array!71872 0))(
  ( (array!71873 (arr!34585 (Array (_ BitVec 32) (_ BitVec 64))) (size!35122 (_ BitVec 32))) )
))
(declare-fun lt!495599 () array!71872)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71872 (_ BitVec 32)) Bool)

(assert (=> b!1107345 (= res!739103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495599 mask!1564))))

(declare-fun _keys!1208 () array!71872)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1107345 (= lt!495599 (array!71873 (store (arr!34585 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35122 _keys!1208)))))

(declare-datatypes ((V!41795 0))(
  ( (V!41796 (val!13807 Int)) )
))
(declare-datatypes ((tuple2!17506 0))(
  ( (tuple2!17507 (_1!8763 (_ BitVec 64)) (_2!8763 V!41795)) )
))
(declare-datatypes ((List!24244 0))(
  ( (Nil!24241) (Cons!24240 (h!25449 tuple2!17506) (t!34538 List!24244)) )
))
(declare-datatypes ((ListLongMap!15487 0))(
  ( (ListLongMap!15488 (toList!7759 List!24244)) )
))
(declare-fun call!46421 () ListLongMap!15487)

(declare-fun call!46420 () ListLongMap!15487)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1107346 () Bool)

(declare-fun e!631845 () Bool)

(declare-fun -!994 (ListLongMap!15487 (_ BitVec 64)) ListLongMap!15487)

(assert (=> b!1107346 (= e!631845 (= call!46421 (-!994 call!46420 k0!934)))))

(declare-fun b!1107347 () Bool)

(declare-fun res!739102 () Bool)

(assert (=> b!1107347 (=> (not res!739102) (not e!631843))))

(declare-datatypes ((List!24245 0))(
  ( (Nil!24242) (Cons!24241 (h!25450 (_ BitVec 64)) (t!34539 List!24245)) )
))
(declare-fun arrayNoDuplicates!0 (array!71872 (_ BitVec 32) List!24245) Bool)

(assert (=> b!1107347 (= res!739102 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24242))))

(declare-fun b!1107348 () Bool)

(declare-fun res!739105 () Bool)

(assert (=> b!1107348 (=> (not res!739105) (not e!631843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107348 (= res!739105 (validKeyInArray!0 k0!934))))

(declare-fun b!1107349 () Bool)

(declare-fun res!739106 () Bool)

(assert (=> b!1107349 (=> (not res!739106) (not e!631843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107349 (= res!739106 (validMask!0 mask!1564))))

(declare-fun b!1107350 () Bool)

(declare-fun res!739101 () Bool)

(assert (=> b!1107350 (=> (not res!739101) (not e!631843))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13041 0))(
  ( (ValueCellFull!13041 (v!16441 V!41795)) (EmptyCell!13041) )
))
(declare-datatypes ((array!71874 0))(
  ( (array!71875 (arr!34586 (Array (_ BitVec 32) ValueCell!13041)) (size!35123 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71874)

(assert (=> b!1107350 (= res!739101 (and (= (size!35123 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35122 _keys!1208) (size!35123 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!41795)

(declare-fun zeroValue!944 () V!41795)

(declare-fun bm!46417 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4228 (array!71872 array!71874 (_ BitVec 32) (_ BitVec 32) V!41795 V!41795 (_ BitVec 32) Int) ListLongMap!15487)

(assert (=> bm!46417 (= call!46420 (getCurrentListMapNoExtraKeys!4228 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107352 () Bool)

(declare-fun res!739110 () Bool)

(assert (=> b!1107352 (=> (not res!739110) (not e!631843))))

(assert (=> b!1107352 (= res!739110 (= (select (arr!34585 _keys!1208) i!673) k0!934))))

(declare-fun b!1107353 () Bool)

(declare-fun e!631847 () Bool)

(declare-fun tp_is_empty!27501 () Bool)

(assert (=> b!1107353 (= e!631847 tp_is_empty!27501)))

(declare-fun b!1107354 () Bool)

(declare-fun res!739104 () Bool)

(assert (=> b!1107354 (=> (not res!739104) (not e!631843))))

(assert (=> b!1107354 (= res!739104 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35122 _keys!1208))))))

(declare-fun bm!46418 () Bool)

(declare-fun dynLambda!2357 (Int (_ BitVec 64)) V!41795)

(assert (=> bm!46418 (= call!46421 (getCurrentListMapNoExtraKeys!4228 lt!495599 (array!71875 (store (arr!34586 _values!996) i!673 (ValueCellFull!13041 (dynLambda!2357 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35123 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107355 () Bool)

(declare-fun e!631842 () Bool)

(assert (=> b!1107355 (= e!631842 true)))

(assert (=> b!1107355 e!631845))

(declare-fun c!108989 () Bool)

(assert (=> b!1107355 (= c!108989 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36279 0))(
  ( (Unit!36280) )
))
(declare-fun lt!495600 () Unit!36279)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!250 (array!71872 array!71874 (_ BitVec 32) (_ BitVec 32) V!41795 V!41795 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36279)

(assert (=> b!1107355 (= lt!495600 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!250 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107356 () Bool)

(assert (=> b!1107356 (= e!631845 (= call!46421 call!46420))))

(declare-fun b!1107357 () Bool)

(declare-fun res!739100 () Bool)

(assert (=> b!1107357 (=> (not res!739100) (not e!631843))))

(assert (=> b!1107357 (= res!739100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43069 () Bool)

(declare-fun mapRes!43069 () Bool)

(declare-fun tp!82023 () Bool)

(assert (=> mapNonEmpty!43069 (= mapRes!43069 (and tp!82023 e!631847))))

(declare-fun mapValue!43069 () ValueCell!13041)

(declare-fun mapRest!43069 () (Array (_ BitVec 32) ValueCell!13041))

(declare-fun mapKey!43069 () (_ BitVec 32))

(assert (=> mapNonEmpty!43069 (= (arr!34586 _values!996) (store mapRest!43069 mapKey!43069 mapValue!43069))))

(declare-fun b!1107358 () Bool)

(declare-fun e!631840 () Bool)

(assert (=> b!1107358 (= e!631840 tp_is_empty!27501)))

(declare-fun mapIsEmpty!43069 () Bool)

(assert (=> mapIsEmpty!43069 mapRes!43069))

(declare-fun b!1107359 () Bool)

(declare-fun e!631841 () Bool)

(assert (=> b!1107359 (= e!631841 (and e!631840 mapRes!43069))))

(declare-fun condMapEmpty!43069 () Bool)

(declare-fun mapDefault!43069 () ValueCell!13041)

(assert (=> b!1107359 (= condMapEmpty!43069 (= (arr!34586 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13041)) mapDefault!43069)))))

(declare-fun b!1107360 () Bool)

(declare-fun res!739109 () Bool)

(assert (=> b!1107360 (=> (not res!739109) (not e!631844))))

(assert (=> b!1107360 (= res!739109 (arrayNoDuplicates!0 lt!495599 #b00000000000000000000000000000000 Nil!24242))))

(declare-fun res!739107 () Bool)

(assert (=> start!97306 (=> (not res!739107) (not e!631843))))

(assert (=> start!97306 (= res!739107 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35122 _keys!1208))))))

(assert (=> start!97306 e!631843))

(assert (=> start!97306 tp_is_empty!27501))

(declare-fun array_inv!26482 (array!71872) Bool)

(assert (=> start!97306 (array_inv!26482 _keys!1208)))

(assert (=> start!97306 true))

(assert (=> start!97306 tp!82022))

(declare-fun array_inv!26483 (array!71874) Bool)

(assert (=> start!97306 (and (array_inv!26483 _values!996) e!631841)))

(declare-fun b!1107351 () Bool)

(assert (=> b!1107351 (= e!631844 (not e!631842))))

(declare-fun res!739108 () Bool)

(assert (=> b!1107351 (=> res!739108 e!631842)))

(assert (=> b!1107351 (= res!739108 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35122 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107351 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495598 () Unit!36279)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71872 (_ BitVec 64) (_ BitVec 32)) Unit!36279)

(assert (=> b!1107351 (= lt!495598 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97306 res!739107) b!1107349))

(assert (= (and b!1107349 res!739106) b!1107350))

(assert (= (and b!1107350 res!739101) b!1107357))

(assert (= (and b!1107357 res!739100) b!1107347))

(assert (= (and b!1107347 res!739102) b!1107354))

(assert (= (and b!1107354 res!739104) b!1107348))

(assert (= (and b!1107348 res!739105) b!1107352))

(assert (= (and b!1107352 res!739110) b!1107345))

(assert (= (and b!1107345 res!739103) b!1107360))

(assert (= (and b!1107360 res!739109) b!1107351))

(assert (= (and b!1107351 (not res!739108)) b!1107355))

(assert (= (and b!1107355 c!108989) b!1107346))

(assert (= (and b!1107355 (not c!108989)) b!1107356))

(assert (= (or b!1107346 b!1107356) bm!46418))

(assert (= (or b!1107346 b!1107356) bm!46417))

(assert (= (and b!1107359 condMapEmpty!43069) mapIsEmpty!43069))

(assert (= (and b!1107359 (not condMapEmpty!43069)) mapNonEmpty!43069))

(get-info :version)

(assert (= (and mapNonEmpty!43069 ((_ is ValueCellFull!13041) mapValue!43069)) b!1107353))

(assert (= (and b!1107359 ((_ is ValueCellFull!13041) mapDefault!43069)) b!1107358))

(assert (= start!97306 b!1107359))

(declare-fun b_lambda!18289 () Bool)

(assert (=> (not b_lambda!18289) (not bm!46418)))

(declare-fun t!34537 () Bool)

(declare-fun tb!8115 () Bool)

(assert (=> (and start!97306 (= defaultEntry!1004 defaultEntry!1004) t!34537) tb!8115))

(declare-fun result!16783 () Bool)

(assert (=> tb!8115 (= result!16783 tp_is_empty!27501)))

(assert (=> bm!46418 t!34537))

(declare-fun b_and!37333 () Bool)

(assert (= b_and!37331 (and (=> t!34537 result!16783) b_and!37333)))

(declare-fun m!1026267 () Bool)

(assert (=> b!1107348 m!1026267))

(declare-fun m!1026269 () Bool)

(assert (=> b!1107357 m!1026269))

(declare-fun m!1026271 () Bool)

(assert (=> b!1107352 m!1026271))

(declare-fun m!1026273 () Bool)

(assert (=> start!97306 m!1026273))

(declare-fun m!1026275 () Bool)

(assert (=> start!97306 m!1026275))

(declare-fun m!1026277 () Bool)

(assert (=> bm!46417 m!1026277))

(declare-fun m!1026279 () Bool)

(assert (=> b!1107346 m!1026279))

(declare-fun m!1026281 () Bool)

(assert (=> b!1107360 m!1026281))

(declare-fun m!1026283 () Bool)

(assert (=> mapNonEmpty!43069 m!1026283))

(declare-fun m!1026285 () Bool)

(assert (=> b!1107351 m!1026285))

(declare-fun m!1026287 () Bool)

(assert (=> b!1107351 m!1026287))

(declare-fun m!1026289 () Bool)

(assert (=> b!1107347 m!1026289))

(declare-fun m!1026291 () Bool)

(assert (=> b!1107349 m!1026291))

(declare-fun m!1026293 () Bool)

(assert (=> b!1107345 m!1026293))

(declare-fun m!1026295 () Bool)

(assert (=> b!1107345 m!1026295))

(declare-fun m!1026297 () Bool)

(assert (=> bm!46418 m!1026297))

(declare-fun m!1026299 () Bool)

(assert (=> bm!46418 m!1026299))

(declare-fun m!1026301 () Bool)

(assert (=> bm!46418 m!1026301))

(declare-fun m!1026303 () Bool)

(assert (=> b!1107355 m!1026303))

(check-sat (not b!1107351) (not b!1107357) (not b!1107347) b_and!37333 (not b_next!23241) (not b!1107346) (not mapNonEmpty!43069) (not b!1107355) (not b!1107360) (not b_lambda!18289) (not b!1107348) (not b!1107345) (not start!97306) (not b!1107349) tp_is_empty!27501 (not bm!46417) (not bm!46418))
(check-sat b_and!37333 (not b_next!23241))
