; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97360 () Bool)

(assert start!97360)

(declare-fun b_free!23295 () Bool)

(declare-fun b_next!23295 () Bool)

(assert (=> start!97360 (= b_free!23295 (not b_next!23295))))

(declare-fun tp!82185 () Bool)

(declare-fun b_and!37443 () Bool)

(assert (=> start!97360 (= tp!82185 b_and!37443)))

(declare-fun b!1108719 () Bool)

(declare-fun e!632506 () Bool)

(declare-fun tp_is_empty!27555 () Bool)

(assert (=> b!1108719 (= e!632506 tp_is_empty!27555)))

(declare-fun b!1108720 () Bool)

(declare-fun res!739994 () Bool)

(declare-fun e!632504 () Bool)

(assert (=> b!1108720 (=> (not res!739994) (not e!632504))))

(declare-datatypes ((array!71978 0))(
  ( (array!71979 (arr!34638 (Array (_ BitVec 32) (_ BitVec 64))) (size!35175 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71978)

(declare-datatypes ((List!24288 0))(
  ( (Nil!24285) (Cons!24284 (h!25493 (_ BitVec 64)) (t!34636 List!24288)) )
))
(declare-fun arrayNoDuplicates!0 (array!71978 (_ BitVec 32) List!24288) Bool)

(assert (=> b!1108720 (= res!739994 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24285))))

(declare-datatypes ((V!41867 0))(
  ( (V!41868 (val!13834 Int)) )
))
(declare-fun zeroValue!944 () V!41867)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17552 0))(
  ( (tuple2!17553 (_1!8786 (_ BitVec 64)) (_2!8786 V!41867)) )
))
(declare-datatypes ((List!24289 0))(
  ( (Nil!24286) (Cons!24285 (h!25494 tuple2!17552) (t!34637 List!24289)) )
))
(declare-datatypes ((ListLongMap!15533 0))(
  ( (ListLongMap!15534 (toList!7782 List!24289)) )
))
(declare-fun call!46583 () ListLongMap!15533)

(declare-fun bm!46579 () Bool)

(declare-datatypes ((ValueCell!13068 0))(
  ( (ValueCellFull!13068 (v!16468 V!41867)) (EmptyCell!13068) )
))
(declare-datatypes ((array!71980 0))(
  ( (array!71981 (arr!34639 (Array (_ BitVec 32) ValueCell!13068)) (size!35176 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71980)

(declare-fun minValue!944 () V!41867)

(declare-fun lt!495843 () array!71978)

(declare-fun getCurrentListMapNoExtraKeys!4248 (array!71978 array!71980 (_ BitVec 32) (_ BitVec 32) V!41867 V!41867 (_ BitVec 32) Int) ListLongMap!15533)

(declare-fun dynLambda!2372 (Int (_ BitVec 64)) V!41867)

(assert (=> bm!46579 (= call!46583 (getCurrentListMapNoExtraKeys!4248 lt!495843 (array!71981 (store (arr!34639 _values!996) i!673 (ValueCellFull!13068 (dynLambda!2372 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35176 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108721 () Bool)

(declare-fun res!739991 () Bool)

(assert (=> b!1108721 (=> (not res!739991) (not e!632504))))

(assert (=> b!1108721 (= res!739991 (and (= (size!35176 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35175 _keys!1208) (size!35176 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43150 () Bool)

(declare-fun mapRes!43150 () Bool)

(declare-fun tp!82184 () Bool)

(assert (=> mapNonEmpty!43150 (= mapRes!43150 (and tp!82184 e!632506))))

(declare-fun mapKey!43150 () (_ BitVec 32))

(declare-fun mapValue!43150 () ValueCell!13068)

(declare-fun mapRest!43150 () (Array (_ BitVec 32) ValueCell!13068))

(assert (=> mapNonEmpty!43150 (= (arr!34639 _values!996) (store mapRest!43150 mapKey!43150 mapValue!43150))))

(declare-fun e!632501 () Bool)

(declare-fun call!46582 () ListLongMap!15533)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1108722 () Bool)

(declare-fun -!1013 (ListLongMap!15533 (_ BitVec 64)) ListLongMap!15533)

(assert (=> b!1108722 (= e!632501 (= call!46583 (-!1013 call!46582 k0!934)))))

(declare-fun b!1108724 () Bool)

(declare-fun e!632502 () Bool)

(assert (=> b!1108724 (= e!632502 true)))

(assert (=> b!1108724 e!632501))

(declare-fun c!109082 () Bool)

(assert (=> b!1108724 (= c!109082 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36315 0))(
  ( (Unit!36316) )
))
(declare-fun lt!495842 () Unit!36315)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!266 (array!71978 array!71980 (_ BitVec 32) (_ BitVec 32) V!41867 V!41867 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36315)

(assert (=> b!1108724 (= lt!495842 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!266 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1108725 () Bool)

(declare-fun res!739997 () Bool)

(assert (=> b!1108725 (=> (not res!739997) (not e!632504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1108725 (= res!739997 (validKeyInArray!0 k0!934))))

(declare-fun b!1108726 () Bool)

(declare-fun e!632500 () Bool)

(assert (=> b!1108726 (= e!632500 tp_is_empty!27555)))

(declare-fun b!1108727 () Bool)

(declare-fun res!739998 () Bool)

(assert (=> b!1108727 (=> (not res!739998) (not e!632504))))

(assert (=> b!1108727 (= res!739998 (= (select (arr!34638 _keys!1208) i!673) k0!934))))

(declare-fun b!1108728 () Bool)

(declare-fun e!632507 () Bool)

(assert (=> b!1108728 (= e!632507 (not e!632502))))

(declare-fun res!739996 () Bool)

(assert (=> b!1108728 (=> res!739996 e!632502)))

(assert (=> b!1108728 (= res!739996 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35175 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1108728 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495841 () Unit!36315)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71978 (_ BitVec 64) (_ BitVec 32)) Unit!36315)

(assert (=> b!1108728 (= lt!495841 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1108729 () Bool)

(assert (=> b!1108729 (= e!632501 (= call!46583 call!46582))))

(declare-fun mapIsEmpty!43150 () Bool)

(assert (=> mapIsEmpty!43150 mapRes!43150))

(declare-fun b!1108730 () Bool)

(declare-fun res!739999 () Bool)

(assert (=> b!1108730 (=> (not res!739999) (not e!632504))))

(assert (=> b!1108730 (= res!739999 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35175 _keys!1208))))))

(declare-fun b!1108731 () Bool)

(declare-fun e!632505 () Bool)

(assert (=> b!1108731 (= e!632505 (and e!632500 mapRes!43150))))

(declare-fun condMapEmpty!43150 () Bool)

(declare-fun mapDefault!43150 () ValueCell!13068)

(assert (=> b!1108731 (= condMapEmpty!43150 (= (arr!34639 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13068)) mapDefault!43150)))))

(declare-fun b!1108723 () Bool)

(declare-fun res!740001 () Bool)

(assert (=> b!1108723 (=> (not res!740001) (not e!632504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71978 (_ BitVec 32)) Bool)

(assert (=> b!1108723 (= res!740001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!739993 () Bool)

(assert (=> start!97360 (=> (not res!739993) (not e!632504))))

(assert (=> start!97360 (= res!739993 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35175 _keys!1208))))))

(assert (=> start!97360 e!632504))

(assert (=> start!97360 tp_is_empty!27555))

(declare-fun array_inv!26520 (array!71978) Bool)

(assert (=> start!97360 (array_inv!26520 _keys!1208)))

(assert (=> start!97360 true))

(assert (=> start!97360 tp!82185))

(declare-fun array_inv!26521 (array!71980) Bool)

(assert (=> start!97360 (and (array_inv!26521 _values!996) e!632505)))

(declare-fun b!1108732 () Bool)

(declare-fun res!739992 () Bool)

(assert (=> b!1108732 (=> (not res!739992) (not e!632507))))

(assert (=> b!1108732 (= res!739992 (arrayNoDuplicates!0 lt!495843 #b00000000000000000000000000000000 Nil!24285))))

(declare-fun b!1108733 () Bool)

(declare-fun res!739995 () Bool)

(assert (=> b!1108733 (=> (not res!739995) (not e!632504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108733 (= res!739995 (validMask!0 mask!1564))))

(declare-fun b!1108734 () Bool)

(assert (=> b!1108734 (= e!632504 e!632507)))

(declare-fun res!740000 () Bool)

(assert (=> b!1108734 (=> (not res!740000) (not e!632507))))

(assert (=> b!1108734 (= res!740000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495843 mask!1564))))

(assert (=> b!1108734 (= lt!495843 (array!71979 (store (arr!34638 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35175 _keys!1208)))))

(declare-fun bm!46580 () Bool)

(assert (=> bm!46580 (= call!46582 (getCurrentListMapNoExtraKeys!4248 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!97360 res!739993) b!1108733))

(assert (= (and b!1108733 res!739995) b!1108721))

(assert (= (and b!1108721 res!739991) b!1108723))

(assert (= (and b!1108723 res!740001) b!1108720))

(assert (= (and b!1108720 res!739994) b!1108730))

(assert (= (and b!1108730 res!739999) b!1108725))

(assert (= (and b!1108725 res!739997) b!1108727))

(assert (= (and b!1108727 res!739998) b!1108734))

(assert (= (and b!1108734 res!740000) b!1108732))

(assert (= (and b!1108732 res!739992) b!1108728))

(assert (= (and b!1108728 (not res!739996)) b!1108724))

(assert (= (and b!1108724 c!109082) b!1108722))

(assert (= (and b!1108724 (not c!109082)) b!1108729))

(assert (= (or b!1108722 b!1108729) bm!46579))

(assert (= (or b!1108722 b!1108729) bm!46580))

(assert (= (and b!1108731 condMapEmpty!43150) mapIsEmpty!43150))

(assert (= (and b!1108731 (not condMapEmpty!43150)) mapNonEmpty!43150))

(get-info :version)

(assert (= (and mapNonEmpty!43150 ((_ is ValueCellFull!13068) mapValue!43150)) b!1108719))

(assert (= (and b!1108731 ((_ is ValueCellFull!13068) mapDefault!43150)) b!1108726))

(assert (= start!97360 b!1108731))

(declare-fun b_lambda!18347 () Bool)

(assert (=> (not b_lambda!18347) (not bm!46579)))

(declare-fun t!34635 () Bool)

(declare-fun tb!8169 () Bool)

(assert (=> (and start!97360 (= defaultEntry!1004 defaultEntry!1004) t!34635) tb!8169))

(declare-fun result!16891 () Bool)

(assert (=> tb!8169 (= result!16891 tp_is_empty!27555)))

(assert (=> bm!46579 t!34635))

(declare-fun b_and!37445 () Bool)

(assert (= b_and!37443 (and (=> t!34635 result!16891) b_and!37445)))

(declare-fun m!1027293 () Bool)

(assert (=> b!1108720 m!1027293))

(declare-fun m!1027295 () Bool)

(assert (=> b!1108724 m!1027295))

(declare-fun m!1027297 () Bool)

(assert (=> b!1108725 m!1027297))

(declare-fun m!1027299 () Bool)

(assert (=> b!1108723 m!1027299))

(declare-fun m!1027301 () Bool)

(assert (=> b!1108733 m!1027301))

(declare-fun m!1027303 () Bool)

(assert (=> start!97360 m!1027303))

(declare-fun m!1027305 () Bool)

(assert (=> start!97360 m!1027305))

(declare-fun m!1027307 () Bool)

(assert (=> mapNonEmpty!43150 m!1027307))

(declare-fun m!1027309 () Bool)

(assert (=> bm!46579 m!1027309))

(declare-fun m!1027311 () Bool)

(assert (=> bm!46579 m!1027311))

(declare-fun m!1027313 () Bool)

(assert (=> bm!46579 m!1027313))

(declare-fun m!1027315 () Bool)

(assert (=> b!1108734 m!1027315))

(declare-fun m!1027317 () Bool)

(assert (=> b!1108734 m!1027317))

(declare-fun m!1027319 () Bool)

(assert (=> b!1108732 m!1027319))

(declare-fun m!1027321 () Bool)

(assert (=> bm!46580 m!1027321))

(declare-fun m!1027323 () Bool)

(assert (=> b!1108722 m!1027323))

(declare-fun m!1027325 () Bool)

(assert (=> b!1108728 m!1027325))

(declare-fun m!1027327 () Bool)

(assert (=> b!1108728 m!1027327))

(declare-fun m!1027329 () Bool)

(assert (=> b!1108727 m!1027329))

(check-sat b_and!37445 (not b!1108725) (not start!97360) (not mapNonEmpty!43150) (not b!1108724) (not b_lambda!18347) (not b!1108728) (not bm!46580) (not b!1108720) (not b!1108734) (not b!1108732) (not b!1108733) (not bm!46579) tp_is_empty!27555 (not b_next!23295) (not b!1108723) (not b!1108722))
(check-sat b_and!37445 (not b_next!23295))
