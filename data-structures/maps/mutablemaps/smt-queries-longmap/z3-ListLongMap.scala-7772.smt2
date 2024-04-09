; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97414 () Bool)

(assert start!97414)

(declare-fun b_free!23349 () Bool)

(declare-fun b_next!23349 () Bool)

(assert (=> start!97414 (= b_free!23349 (not b_next!23349))))

(declare-fun tp!82346 () Bool)

(declare-fun b_and!37555 () Bool)

(assert (=> start!97414 (= tp!82346 b_and!37555)))

(declare-fun b!1110093 () Bool)

(declare-fun e!633161 () Bool)

(declare-fun e!633162 () Bool)

(assert (=> b!1110093 (= e!633161 (not e!633162))))

(declare-fun res!740891 () Bool)

(assert (=> b!1110093 (=> res!740891 e!633162)))

(declare-datatypes ((array!72084 0))(
  ( (array!72085 (arr!34691 (Array (_ BitVec 32) (_ BitVec 64))) (size!35228 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72084)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1110093 (= res!740891 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35228 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110093 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36351 0))(
  ( (Unit!36352) )
))
(declare-fun lt!496084 () Unit!36351)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72084 (_ BitVec 64) (_ BitVec 32)) Unit!36351)

(assert (=> b!1110093 (= lt!496084 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1110094 () Bool)

(declare-fun e!633165 () Bool)

(declare-datatypes ((V!41939 0))(
  ( (V!41940 (val!13861 Int)) )
))
(declare-datatypes ((tuple2!17594 0))(
  ( (tuple2!17595 (_1!8807 (_ BitVec 64)) (_2!8807 V!41939)) )
))
(declare-datatypes ((List!24330 0))(
  ( (Nil!24327) (Cons!24326 (h!25535 tuple2!17594) (t!34732 List!24330)) )
))
(declare-datatypes ((ListLongMap!15575 0))(
  ( (ListLongMap!15576 (toList!7803 List!24330)) )
))
(declare-fun call!46744 () ListLongMap!15575)

(declare-fun call!46745 () ListLongMap!15575)

(declare-fun -!1030 (ListLongMap!15575 (_ BitVec 64)) ListLongMap!15575)

(assert (=> b!1110094 (= e!633165 (= call!46744 (-!1030 call!46745 k0!934)))))

(declare-fun b!1110095 () Bool)

(declare-fun res!740884 () Bool)

(declare-fun e!633166 () Bool)

(assert (=> b!1110095 (=> (not res!740884) (not e!633166))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13095 0))(
  ( (ValueCellFull!13095 (v!16495 V!41939)) (EmptyCell!13095) )
))
(declare-datatypes ((array!72086 0))(
  ( (array!72087 (arr!34692 (Array (_ BitVec 32) ValueCell!13095)) (size!35229 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72086)

(assert (=> b!1110095 (= res!740884 (and (= (size!35229 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35228 _keys!1208) (size!35229 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43231 () Bool)

(declare-fun mapRes!43231 () Bool)

(declare-fun tp!82347 () Bool)

(declare-fun e!633160 () Bool)

(assert (=> mapNonEmpty!43231 (= mapRes!43231 (and tp!82347 e!633160))))

(declare-fun mapValue!43231 () ValueCell!13095)

(declare-fun mapKey!43231 () (_ BitVec 32))

(declare-fun mapRest!43231 () (Array (_ BitVec 32) ValueCell!13095))

(assert (=> mapNonEmpty!43231 (= (arr!34692 _values!996) (store mapRest!43231 mapKey!43231 mapValue!43231))))

(declare-fun b!1110096 () Bool)

(assert (=> b!1110096 (= e!633166 e!633161)))

(declare-fun res!740885 () Bool)

(assert (=> b!1110096 (=> (not res!740885) (not e!633161))))

(declare-fun lt!496086 () array!72084)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72084 (_ BitVec 32)) Bool)

(assert (=> b!1110096 (= res!740885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496086 mask!1564))))

(assert (=> b!1110096 (= lt!496086 (array!72085 (store (arr!34691 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35228 _keys!1208)))))

(declare-fun zeroValue!944 () V!41939)

(declare-fun bm!46741 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41939)

(declare-fun getCurrentListMapNoExtraKeys!4266 (array!72084 array!72086 (_ BitVec 32) (_ BitVec 32) V!41939 V!41939 (_ BitVec 32) Int) ListLongMap!15575)

(assert (=> bm!46741 (= call!46745 (getCurrentListMapNoExtraKeys!4266 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110097 () Bool)

(declare-fun tp_is_empty!27609 () Bool)

(assert (=> b!1110097 (= e!633160 tp_is_empty!27609)))

(declare-fun mapIsEmpty!43231 () Bool)

(assert (=> mapIsEmpty!43231 mapRes!43231))

(declare-fun b!1110098 () Bool)

(declare-fun res!740887 () Bool)

(assert (=> b!1110098 (=> (not res!740887) (not e!633166))))

(assert (=> b!1110098 (= res!740887 (= (select (arr!34691 _keys!1208) i!673) k0!934))))

(declare-fun bm!46742 () Bool)

(declare-fun dynLambda!2389 (Int (_ BitVec 64)) V!41939)

(assert (=> bm!46742 (= call!46744 (getCurrentListMapNoExtraKeys!4266 lt!496086 (array!72087 (store (arr!34692 _values!996) i!673 (ValueCellFull!13095 (dynLambda!2389 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35229 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!740890 () Bool)

(assert (=> start!97414 (=> (not res!740890) (not e!633166))))

(assert (=> start!97414 (= res!740890 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35228 _keys!1208))))))

(assert (=> start!97414 e!633166))

(assert (=> start!97414 tp_is_empty!27609))

(declare-fun array_inv!26560 (array!72084) Bool)

(assert (=> start!97414 (array_inv!26560 _keys!1208)))

(assert (=> start!97414 true))

(assert (=> start!97414 tp!82346))

(declare-fun e!633167 () Bool)

(declare-fun array_inv!26561 (array!72086) Bool)

(assert (=> start!97414 (and (array_inv!26561 _values!996) e!633167)))

(declare-fun b!1110099 () Bool)

(declare-fun res!740883 () Bool)

(assert (=> b!1110099 (=> (not res!740883) (not e!633166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110099 (= res!740883 (validMask!0 mask!1564))))

(declare-fun b!1110100 () Bool)

(declare-fun res!740886 () Bool)

(assert (=> b!1110100 (=> (not res!740886) (not e!633166))))

(assert (=> b!1110100 (= res!740886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110101 () Bool)

(assert (=> b!1110101 (= e!633165 (= call!46744 call!46745))))

(declare-fun b!1110102 () Bool)

(declare-fun res!740889 () Bool)

(assert (=> b!1110102 (=> (not res!740889) (not e!633166))))

(assert (=> b!1110102 (= res!740889 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35228 _keys!1208))))))

(declare-fun b!1110103 () Bool)

(declare-fun res!740892 () Bool)

(assert (=> b!1110103 (=> (not res!740892) (not e!633166))))

(declare-datatypes ((List!24331 0))(
  ( (Nil!24328) (Cons!24327 (h!25536 (_ BitVec 64)) (t!34733 List!24331)) )
))
(declare-fun arrayNoDuplicates!0 (array!72084 (_ BitVec 32) List!24331) Bool)

(assert (=> b!1110103 (= res!740892 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24328))))

(declare-fun b!1110104 () Bool)

(declare-fun e!633163 () Bool)

(assert (=> b!1110104 (= e!633163 tp_is_empty!27609)))

(declare-fun b!1110105 () Bool)

(assert (=> b!1110105 (= e!633162 true)))

(assert (=> b!1110105 e!633165))

(declare-fun c!109175 () Bool)

(assert (=> b!1110105 (= c!109175 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!496085 () Unit!36351)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!282 (array!72084 array!72086 (_ BitVec 32) (_ BitVec 32) V!41939 V!41939 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36351)

(assert (=> b!1110105 (= lt!496085 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!282 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110106 () Bool)

(declare-fun res!740888 () Bool)

(assert (=> b!1110106 (=> (not res!740888) (not e!633161))))

(assert (=> b!1110106 (= res!740888 (arrayNoDuplicates!0 lt!496086 #b00000000000000000000000000000000 Nil!24328))))

(declare-fun b!1110107 () Bool)

(declare-fun res!740882 () Bool)

(assert (=> b!1110107 (=> (not res!740882) (not e!633166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110107 (= res!740882 (validKeyInArray!0 k0!934))))

(declare-fun b!1110108 () Bool)

(assert (=> b!1110108 (= e!633167 (and e!633163 mapRes!43231))))

(declare-fun condMapEmpty!43231 () Bool)

(declare-fun mapDefault!43231 () ValueCell!13095)

(assert (=> b!1110108 (= condMapEmpty!43231 (= (arr!34692 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13095)) mapDefault!43231)))))

(assert (= (and start!97414 res!740890) b!1110099))

(assert (= (and b!1110099 res!740883) b!1110095))

(assert (= (and b!1110095 res!740884) b!1110100))

(assert (= (and b!1110100 res!740886) b!1110103))

(assert (= (and b!1110103 res!740892) b!1110102))

(assert (= (and b!1110102 res!740889) b!1110107))

(assert (= (and b!1110107 res!740882) b!1110098))

(assert (= (and b!1110098 res!740887) b!1110096))

(assert (= (and b!1110096 res!740885) b!1110106))

(assert (= (and b!1110106 res!740888) b!1110093))

(assert (= (and b!1110093 (not res!740891)) b!1110105))

(assert (= (and b!1110105 c!109175) b!1110094))

(assert (= (and b!1110105 (not c!109175)) b!1110101))

(assert (= (or b!1110094 b!1110101) bm!46742))

(assert (= (or b!1110094 b!1110101) bm!46741))

(assert (= (and b!1110108 condMapEmpty!43231) mapIsEmpty!43231))

(assert (= (and b!1110108 (not condMapEmpty!43231)) mapNonEmpty!43231))

(get-info :version)

(assert (= (and mapNonEmpty!43231 ((_ is ValueCellFull!13095) mapValue!43231)) b!1110097))

(assert (= (and b!1110108 ((_ is ValueCellFull!13095) mapDefault!43231)) b!1110104))

(assert (= start!97414 b!1110108))

(declare-fun b_lambda!18405 () Bool)

(assert (=> (not b_lambda!18405) (not bm!46742)))

(declare-fun t!34731 () Bool)

(declare-fun tb!8223 () Bool)

(assert (=> (and start!97414 (= defaultEntry!1004 defaultEntry!1004) t!34731) tb!8223))

(declare-fun result!16999 () Bool)

(assert (=> tb!8223 (= result!16999 tp_is_empty!27609)))

(assert (=> bm!46742 t!34731))

(declare-fun b_and!37557 () Bool)

(assert (= b_and!37555 (and (=> t!34731 result!16999) b_and!37557)))

(declare-fun m!1028319 () Bool)

(assert (=> b!1110096 m!1028319))

(declare-fun m!1028321 () Bool)

(assert (=> b!1110096 m!1028321))

(declare-fun m!1028323 () Bool)

(assert (=> b!1110106 m!1028323))

(declare-fun m!1028325 () Bool)

(assert (=> bm!46741 m!1028325))

(declare-fun m!1028327 () Bool)

(assert (=> mapNonEmpty!43231 m!1028327))

(declare-fun m!1028329 () Bool)

(assert (=> b!1110094 m!1028329))

(declare-fun m!1028331 () Bool)

(assert (=> bm!46742 m!1028331))

(declare-fun m!1028333 () Bool)

(assert (=> bm!46742 m!1028333))

(declare-fun m!1028335 () Bool)

(assert (=> bm!46742 m!1028335))

(declare-fun m!1028337 () Bool)

(assert (=> start!97414 m!1028337))

(declare-fun m!1028339 () Bool)

(assert (=> start!97414 m!1028339))

(declare-fun m!1028341 () Bool)

(assert (=> b!1110098 m!1028341))

(declare-fun m!1028343 () Bool)

(assert (=> b!1110107 m!1028343))

(declare-fun m!1028345 () Bool)

(assert (=> b!1110099 m!1028345))

(declare-fun m!1028347 () Bool)

(assert (=> b!1110100 m!1028347))

(declare-fun m!1028349 () Bool)

(assert (=> b!1110105 m!1028349))

(declare-fun m!1028351 () Bool)

(assert (=> b!1110093 m!1028351))

(declare-fun m!1028353 () Bool)

(assert (=> b!1110093 m!1028353))

(declare-fun m!1028355 () Bool)

(assert (=> b!1110103 m!1028355))

(check-sat (not b!1110094) (not b!1110099) (not b!1110107) (not mapNonEmpty!43231) (not b!1110106) (not b!1110103) (not b!1110096) tp_is_empty!27609 (not b!1110093) b_and!37557 (not b!1110105) (not bm!46742) (not b!1110100) (not b_lambda!18405) (not start!97414) (not bm!46741) (not b_next!23349))
(check-sat b_and!37557 (not b_next!23349))
