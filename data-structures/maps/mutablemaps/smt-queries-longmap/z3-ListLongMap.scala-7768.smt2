; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97390 () Bool)

(assert start!97390)

(declare-fun b_free!23325 () Bool)

(declare-fun b_next!23325 () Bool)

(assert (=> start!97390 (= b_free!23325 (not b_next!23325))))

(declare-fun tp!82275 () Bool)

(declare-fun b_and!37505 () Bool)

(assert (=> start!97390 (= tp!82275 b_and!37505)))

(declare-datatypes ((V!41907 0))(
  ( (V!41908 (val!13849 Int)) )
))
(declare-datatypes ((tuple2!17576 0))(
  ( (tuple2!17577 (_1!8798 (_ BitVec 64)) (_2!8798 V!41907)) )
))
(declare-datatypes ((List!24314 0))(
  ( (Nil!24311) (Cons!24310 (h!25519 tuple2!17576) (t!34692 List!24314)) )
))
(declare-datatypes ((ListLongMap!15557 0))(
  ( (ListLongMap!15558 (toList!7794 List!24314)) )
))
(declare-fun call!46672 () ListLongMap!15557)

(declare-fun bm!46669 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13083 0))(
  ( (ValueCellFull!13083 (v!16483 V!41907)) (EmptyCell!13083) )
))
(declare-datatypes ((array!72038 0))(
  ( (array!72039 (arr!34668 (Array (_ BitVec 32) ValueCell!13083)) (size!35205 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72038)

(declare-fun minValue!944 () V!41907)

(declare-datatypes ((array!72040 0))(
  ( (array!72041 (arr!34669 (Array (_ BitVec 32) (_ BitVec 64))) (size!35206 (_ BitVec 32))) )
))
(declare-fun lt!495978 () array!72040)

(declare-fun zeroValue!944 () V!41907)

(declare-fun getCurrentListMapNoExtraKeys!4258 (array!72040 array!72038 (_ BitVec 32) (_ BitVec 32) V!41907 V!41907 (_ BitVec 32) Int) ListLongMap!15557)

(declare-fun dynLambda!2382 (Int (_ BitVec 64)) V!41907)

(assert (=> bm!46669 (= call!46672 (getCurrentListMapNoExtraKeys!4258 lt!495978 (array!72039 (store (arr!34668 _values!996) i!673 (ValueCellFull!13083 (dynLambda!2382 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35205 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _keys!1208 () array!72040)

(declare-fun bm!46670 () Bool)

(declare-fun call!46673 () ListLongMap!15557)

(assert (=> bm!46670 (= call!46673 (getCurrentListMapNoExtraKeys!4258 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109482 () Bool)

(declare-fun e!632867 () Bool)

(declare-fun tp_is_empty!27585 () Bool)

(assert (=> b!1109482 (= e!632867 tp_is_empty!27585)))

(declare-fun mapNonEmpty!43195 () Bool)

(declare-fun mapRes!43195 () Bool)

(declare-fun tp!82274 () Bool)

(assert (=> mapNonEmpty!43195 (= mapRes!43195 (and tp!82274 e!632867))))

(declare-fun mapKey!43195 () (_ BitVec 32))

(declare-fun mapRest!43195 () (Array (_ BitVec 32) ValueCell!13083))

(declare-fun mapValue!43195 () ValueCell!13083)

(assert (=> mapNonEmpty!43195 (= (arr!34668 _values!996) (store mapRest!43195 mapKey!43195 mapValue!43195))))

(declare-fun b!1109483 () Bool)

(declare-fun res!740493 () Bool)

(declare-fun e!632873 () Bool)

(assert (=> b!1109483 (=> (not res!740493) (not e!632873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109483 (= res!740493 (validMask!0 mask!1564))))

(declare-fun b!1109484 () Bool)

(declare-fun e!632866 () Bool)

(declare-fun e!632870 () Bool)

(assert (=> b!1109484 (= e!632866 (and e!632870 mapRes!43195))))

(declare-fun condMapEmpty!43195 () Bool)

(declare-fun mapDefault!43195 () ValueCell!13083)

(assert (=> b!1109484 (= condMapEmpty!43195 (= (arr!34668 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13083)) mapDefault!43195)))))

(declare-fun b!1109485 () Bool)

(declare-fun res!740488 () Bool)

(assert (=> b!1109485 (=> (not res!740488) (not e!632873))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1109485 (= res!740488 (= (select (arr!34669 _keys!1208) i!673) k0!934))))

(declare-fun b!1109486 () Bool)

(declare-fun e!632869 () Bool)

(assert (=> b!1109486 (= e!632869 true)))

(declare-fun e!632868 () Bool)

(assert (=> b!1109486 e!632868))

(declare-fun c!109133 () Bool)

(assert (=> b!1109486 (= c!109133 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36333 0))(
  ( (Unit!36334) )
))
(declare-fun lt!495977 () Unit!36333)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!274 (array!72040 array!72038 (_ BitVec 32) (_ BitVec 32) V!41907 V!41907 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36333)

(assert (=> b!1109486 (= lt!495977 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!274 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1109487 () Bool)

(declare-fun res!740486 () Bool)

(assert (=> b!1109487 (=> (not res!740486) (not e!632873))))

(assert (=> b!1109487 (= res!740486 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35206 _keys!1208))))))

(declare-fun b!1109488 () Bool)

(declare-fun -!1022 (ListLongMap!15557 (_ BitVec 64)) ListLongMap!15557)

(assert (=> b!1109488 (= e!632868 (= call!46672 (-!1022 call!46673 k0!934)))))

(declare-fun b!1109489 () Bool)

(declare-fun res!740490 () Bool)

(assert (=> b!1109489 (=> (not res!740490) (not e!632873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72040 (_ BitVec 32)) Bool)

(assert (=> b!1109489 (= res!740490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!43195 () Bool)

(assert (=> mapIsEmpty!43195 mapRes!43195))

(declare-fun b!1109490 () Bool)

(declare-fun res!740489 () Bool)

(assert (=> b!1109490 (=> (not res!740489) (not e!632873))))

(assert (=> b!1109490 (= res!740489 (and (= (size!35205 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35206 _keys!1208) (size!35205 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109491 () Bool)

(declare-fun res!740495 () Bool)

(declare-fun e!632871 () Bool)

(assert (=> b!1109491 (=> (not res!740495) (not e!632871))))

(declare-datatypes ((List!24315 0))(
  ( (Nil!24312) (Cons!24311 (h!25520 (_ BitVec 64)) (t!34693 List!24315)) )
))
(declare-fun arrayNoDuplicates!0 (array!72040 (_ BitVec 32) List!24315) Bool)

(assert (=> b!1109491 (= res!740495 (arrayNoDuplicates!0 lt!495978 #b00000000000000000000000000000000 Nil!24312))))

(declare-fun b!1109492 () Bool)

(assert (=> b!1109492 (= e!632870 tp_is_empty!27585)))

(declare-fun res!740496 () Bool)

(assert (=> start!97390 (=> (not res!740496) (not e!632873))))

(assert (=> start!97390 (= res!740496 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35206 _keys!1208))))))

(assert (=> start!97390 e!632873))

(assert (=> start!97390 tp_is_empty!27585))

(declare-fun array_inv!26544 (array!72040) Bool)

(assert (=> start!97390 (array_inv!26544 _keys!1208)))

(assert (=> start!97390 true))

(assert (=> start!97390 tp!82275))

(declare-fun array_inv!26545 (array!72038) Bool)

(assert (=> start!97390 (and (array_inv!26545 _values!996) e!632866)))

(declare-fun b!1109481 () Bool)

(assert (=> b!1109481 (= e!632873 e!632871)))

(declare-fun res!740491 () Bool)

(assert (=> b!1109481 (=> (not res!740491) (not e!632871))))

(assert (=> b!1109481 (= res!740491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495978 mask!1564))))

(assert (=> b!1109481 (= lt!495978 (array!72041 (store (arr!34669 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35206 _keys!1208)))))

(declare-fun b!1109493 () Bool)

(declare-fun res!740492 () Bool)

(assert (=> b!1109493 (=> (not res!740492) (not e!632873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109493 (= res!740492 (validKeyInArray!0 k0!934))))

(declare-fun b!1109494 () Bool)

(assert (=> b!1109494 (= e!632868 (= call!46672 call!46673))))

(declare-fun b!1109495 () Bool)

(assert (=> b!1109495 (= e!632871 (not e!632869))))

(declare-fun res!740487 () Bool)

(assert (=> b!1109495 (=> res!740487 e!632869)))

(assert (=> b!1109495 (= res!740487 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35206 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109495 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495976 () Unit!36333)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72040 (_ BitVec 64) (_ BitVec 32)) Unit!36333)

(assert (=> b!1109495 (= lt!495976 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1109496 () Bool)

(declare-fun res!740494 () Bool)

(assert (=> b!1109496 (=> (not res!740494) (not e!632873))))

(assert (=> b!1109496 (= res!740494 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24312))))

(assert (= (and start!97390 res!740496) b!1109483))

(assert (= (and b!1109483 res!740493) b!1109490))

(assert (= (and b!1109490 res!740489) b!1109489))

(assert (= (and b!1109489 res!740490) b!1109496))

(assert (= (and b!1109496 res!740494) b!1109487))

(assert (= (and b!1109487 res!740486) b!1109493))

(assert (= (and b!1109493 res!740492) b!1109485))

(assert (= (and b!1109485 res!740488) b!1109481))

(assert (= (and b!1109481 res!740491) b!1109491))

(assert (= (and b!1109491 res!740495) b!1109495))

(assert (= (and b!1109495 (not res!740487)) b!1109486))

(assert (= (and b!1109486 c!109133) b!1109488))

(assert (= (and b!1109486 (not c!109133)) b!1109494))

(assert (= (or b!1109488 b!1109494) bm!46669))

(assert (= (or b!1109488 b!1109494) bm!46670))

(assert (= (and b!1109484 condMapEmpty!43195) mapIsEmpty!43195))

(assert (= (and b!1109484 (not condMapEmpty!43195)) mapNonEmpty!43195))

(get-info :version)

(assert (= (and mapNonEmpty!43195 ((_ is ValueCellFull!13083) mapValue!43195)) b!1109482))

(assert (= (and b!1109484 ((_ is ValueCellFull!13083) mapDefault!43195)) b!1109492))

(assert (= start!97390 b!1109484))

(declare-fun b_lambda!18379 () Bool)

(assert (=> (not b_lambda!18379) (not bm!46669)))

(declare-fun t!34691 () Bool)

(declare-fun tb!8199 () Bool)

(assert (=> (and start!97390 (= defaultEntry!1004 defaultEntry!1004) t!34691) tb!8199))

(declare-fun result!16951 () Bool)

(assert (=> tb!8199 (= result!16951 tp_is_empty!27585)))

(assert (=> bm!46669 t!34691))

(declare-fun b_and!37507 () Bool)

(assert (= b_and!37505 (and (=> t!34691 result!16951) b_and!37507)))

(declare-fun m!1027863 () Bool)

(assert (=> b!1109483 m!1027863))

(declare-fun m!1027865 () Bool)

(assert (=> b!1109486 m!1027865))

(declare-fun m!1027867 () Bool)

(assert (=> b!1109495 m!1027867))

(declare-fun m!1027869 () Bool)

(assert (=> b!1109495 m!1027869))

(declare-fun m!1027871 () Bool)

(assert (=> start!97390 m!1027871))

(declare-fun m!1027873 () Bool)

(assert (=> start!97390 m!1027873))

(declare-fun m!1027875 () Bool)

(assert (=> b!1109496 m!1027875))

(declare-fun m!1027877 () Bool)

(assert (=> b!1109485 m!1027877))

(declare-fun m!1027879 () Bool)

(assert (=> b!1109481 m!1027879))

(declare-fun m!1027881 () Bool)

(assert (=> b!1109481 m!1027881))

(declare-fun m!1027883 () Bool)

(assert (=> b!1109493 m!1027883))

(declare-fun m!1027885 () Bool)

(assert (=> b!1109489 m!1027885))

(declare-fun m!1027887 () Bool)

(assert (=> bm!46669 m!1027887))

(declare-fun m!1027889 () Bool)

(assert (=> bm!46669 m!1027889))

(declare-fun m!1027891 () Bool)

(assert (=> bm!46669 m!1027891))

(declare-fun m!1027893 () Bool)

(assert (=> b!1109488 m!1027893))

(declare-fun m!1027895 () Bool)

(assert (=> mapNonEmpty!43195 m!1027895))

(declare-fun m!1027897 () Bool)

(assert (=> bm!46670 m!1027897))

(declare-fun m!1027899 () Bool)

(assert (=> b!1109491 m!1027899))

(check-sat b_and!37507 (not b!1109488) tp_is_empty!27585 (not b!1109483) (not b!1109495) (not bm!46670) (not b_next!23325) (not bm!46669) (not mapNonEmpty!43195) (not start!97390) (not b!1109491) (not b_lambda!18379) (not b!1109486) (not b!1109481) (not b!1109489) (not b!1109493) (not b!1109496))
(check-sat b_and!37507 (not b_next!23325))
