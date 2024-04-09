; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97312 () Bool)

(assert start!97312)

(declare-fun b_free!23247 () Bool)

(declare-fun b_next!23247 () Bool)

(assert (=> start!97312 (= b_free!23247 (not b_next!23247))))

(declare-fun tp!82040 () Bool)

(declare-fun b_and!37343 () Bool)

(assert (=> start!97312 (= tp!82040 b_and!37343)))

(declare-fun b!1107495 () Bool)

(declare-fun e!631917 () Bool)

(declare-datatypes ((V!41803 0))(
  ( (V!41804 (val!13810 Int)) )
))
(declare-datatypes ((tuple2!17512 0))(
  ( (tuple2!17513 (_1!8766 (_ BitVec 64)) (_2!8766 V!41803)) )
))
(declare-datatypes ((List!24249 0))(
  ( (Nil!24246) (Cons!24245 (h!25454 tuple2!17512) (t!34549 List!24249)) )
))
(declare-datatypes ((ListLongMap!15493 0))(
  ( (ListLongMap!15494 (toList!7762 List!24249)) )
))
(declare-fun call!46439 () ListLongMap!15493)

(declare-fun call!46438 () ListLongMap!15493)

(assert (=> b!1107495 (= e!631917 (= call!46439 call!46438))))

(declare-fun b!1107496 () Bool)

(declare-fun res!739207 () Bool)

(declare-fun e!631914 () Bool)

(assert (=> b!1107496 (=> (not res!739207) (not e!631914))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((array!71884 0))(
  ( (array!71885 (arr!34591 (Array (_ BitVec 32) (_ BitVec 64))) (size!35128 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71884)

(assert (=> b!1107496 (= res!739207 (= (select (arr!34591 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43078 () Bool)

(declare-fun mapRes!43078 () Bool)

(assert (=> mapIsEmpty!43078 mapRes!43078))

(declare-fun b!1107497 () Bool)

(declare-fun -!996 (ListLongMap!15493 (_ BitVec 64)) ListLongMap!15493)

(assert (=> b!1107497 (= e!631917 (= call!46439 (-!996 call!46438 k0!934)))))

(declare-fun b!1107498 () Bool)

(declare-fun res!739201 () Bool)

(assert (=> b!1107498 (=> (not res!739201) (not e!631914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107498 (= res!739201 (validKeyInArray!0 k0!934))))

(declare-fun res!739199 () Bool)

(assert (=> start!97312 (=> (not res!739199) (not e!631914))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97312 (= res!739199 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35128 _keys!1208))))))

(assert (=> start!97312 e!631914))

(declare-fun tp_is_empty!27507 () Bool)

(assert (=> start!97312 tp_is_empty!27507))

(declare-fun array_inv!26486 (array!71884) Bool)

(assert (=> start!97312 (array_inv!26486 _keys!1208)))

(assert (=> start!97312 true))

(assert (=> start!97312 tp!82040))

(declare-datatypes ((ValueCell!13044 0))(
  ( (ValueCellFull!13044 (v!16444 V!41803)) (EmptyCell!13044) )
))
(declare-datatypes ((array!71886 0))(
  ( (array!71887 (arr!34592 (Array (_ BitVec 32) ValueCell!13044)) (size!35129 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71886)

(declare-fun e!631916 () Bool)

(declare-fun array_inv!26487 (array!71886) Bool)

(assert (=> start!97312 (and (array_inv!26487 _values!996) e!631916)))

(declare-fun b!1107499 () Bool)

(declare-fun res!739205 () Bool)

(assert (=> b!1107499 (=> (not res!739205) (not e!631914))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71884 (_ BitVec 32)) Bool)

(assert (=> b!1107499 (= res!739205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1107500 () Bool)

(declare-fun e!631912 () Bool)

(assert (=> b!1107500 (= e!631914 e!631912)))

(declare-fun res!739203 () Bool)

(assert (=> b!1107500 (=> (not res!739203) (not e!631912))))

(declare-fun lt!495625 () array!71884)

(assert (=> b!1107500 (= res!739203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495625 mask!1564))))

(assert (=> b!1107500 (= lt!495625 (array!71885 (store (arr!34591 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35128 _keys!1208)))))

(declare-fun b!1107501 () Bool)

(declare-fun e!631919 () Bool)

(assert (=> b!1107501 (= e!631919 tp_is_empty!27507)))

(declare-fun b!1107502 () Bool)

(declare-fun res!739202 () Bool)

(assert (=> b!1107502 (=> (not res!739202) (not e!631914))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107502 (= res!739202 (validMask!0 mask!1564))))

(declare-fun zeroValue!944 () V!41803)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!46435 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!41803)

(declare-fun getCurrentListMapNoExtraKeys!4230 (array!71884 array!71886 (_ BitVec 32) (_ BitVec 32) V!41803 V!41803 (_ BitVec 32) Int) ListLongMap!15493)

(assert (=> bm!46435 (= call!46438 (getCurrentListMapNoExtraKeys!4230 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!46436 () Bool)

(declare-fun dynLambda!2359 (Int (_ BitVec 64)) V!41803)

(assert (=> bm!46436 (= call!46439 (getCurrentListMapNoExtraKeys!4230 lt!495625 (array!71887 (store (arr!34592 _values!996) i!673 (ValueCellFull!13044 (dynLambda!2359 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35129 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1107503 () Bool)

(declare-fun e!631913 () Bool)

(assert (=> b!1107503 (= e!631912 (not e!631913))))

(declare-fun res!739204 () Bool)

(assert (=> b!1107503 (=> res!739204 e!631913)))

(assert (=> b!1107503 (= res!739204 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35128 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!71884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1107503 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36283 0))(
  ( (Unit!36284) )
))
(declare-fun lt!495627 () Unit!36283)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71884 (_ BitVec 64) (_ BitVec 32)) Unit!36283)

(assert (=> b!1107503 (= lt!495627 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1107504 () Bool)

(assert (=> b!1107504 (= e!631916 (and e!631919 mapRes!43078))))

(declare-fun condMapEmpty!43078 () Bool)

(declare-fun mapDefault!43078 () ValueCell!13044)

(assert (=> b!1107504 (= condMapEmpty!43078 (= (arr!34592 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13044)) mapDefault!43078)))))

(declare-fun b!1107505 () Bool)

(declare-fun res!739206 () Bool)

(assert (=> b!1107505 (=> (not res!739206) (not e!631914))))

(assert (=> b!1107505 (= res!739206 (and (= (size!35129 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35128 _keys!1208) (size!35129 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1107506 () Bool)

(declare-fun res!739200 () Bool)

(assert (=> b!1107506 (=> (not res!739200) (not e!631914))))

(assert (=> b!1107506 (= res!739200 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35128 _keys!1208))))))

(declare-fun b!1107507 () Bool)

(declare-fun res!739208 () Bool)

(assert (=> b!1107507 (=> (not res!739208) (not e!631914))))

(declare-datatypes ((List!24250 0))(
  ( (Nil!24247) (Cons!24246 (h!25455 (_ BitVec 64)) (t!34550 List!24250)) )
))
(declare-fun arrayNoDuplicates!0 (array!71884 (_ BitVec 32) List!24250) Bool)

(assert (=> b!1107507 (= res!739208 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24247))))

(declare-fun b!1107508 () Bool)

(declare-fun res!739209 () Bool)

(assert (=> b!1107508 (=> (not res!739209) (not e!631912))))

(assert (=> b!1107508 (= res!739209 (arrayNoDuplicates!0 lt!495625 #b00000000000000000000000000000000 Nil!24247))))

(declare-fun b!1107509 () Bool)

(declare-fun e!631918 () Bool)

(assert (=> b!1107509 (= e!631918 tp_is_empty!27507)))

(declare-fun b!1107510 () Bool)

(assert (=> b!1107510 (= e!631913 true)))

(assert (=> b!1107510 e!631917))

(declare-fun c!108998 () Bool)

(assert (=> b!1107510 (= c!108998 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495626 () Unit!36283)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!252 (array!71884 array!71886 (_ BitVec 32) (_ BitVec 32) V!41803 V!41803 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36283)

(assert (=> b!1107510 (= lt!495626 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!252 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!43078 () Bool)

(declare-fun tp!82041 () Bool)

(assert (=> mapNonEmpty!43078 (= mapRes!43078 (and tp!82041 e!631918))))

(declare-fun mapValue!43078 () ValueCell!13044)

(declare-fun mapRest!43078 () (Array (_ BitVec 32) ValueCell!13044))

(declare-fun mapKey!43078 () (_ BitVec 32))

(assert (=> mapNonEmpty!43078 (= (arr!34592 _values!996) (store mapRest!43078 mapKey!43078 mapValue!43078))))

(assert (= (and start!97312 res!739199) b!1107502))

(assert (= (and b!1107502 res!739202) b!1107505))

(assert (= (and b!1107505 res!739206) b!1107499))

(assert (= (and b!1107499 res!739205) b!1107507))

(assert (= (and b!1107507 res!739208) b!1107506))

(assert (= (and b!1107506 res!739200) b!1107498))

(assert (= (and b!1107498 res!739201) b!1107496))

(assert (= (and b!1107496 res!739207) b!1107500))

(assert (= (and b!1107500 res!739203) b!1107508))

(assert (= (and b!1107508 res!739209) b!1107503))

(assert (= (and b!1107503 (not res!739204)) b!1107510))

(assert (= (and b!1107510 c!108998) b!1107497))

(assert (= (and b!1107510 (not c!108998)) b!1107495))

(assert (= (or b!1107497 b!1107495) bm!46435))

(assert (= (or b!1107497 b!1107495) bm!46436))

(assert (= (and b!1107504 condMapEmpty!43078) mapIsEmpty!43078))

(assert (= (and b!1107504 (not condMapEmpty!43078)) mapNonEmpty!43078))

(get-info :version)

(assert (= (and mapNonEmpty!43078 ((_ is ValueCellFull!13044) mapValue!43078)) b!1107509))

(assert (= (and b!1107504 ((_ is ValueCellFull!13044) mapDefault!43078)) b!1107501))

(assert (= start!97312 b!1107504))

(declare-fun b_lambda!18295 () Bool)

(assert (=> (not b_lambda!18295) (not bm!46436)))

(declare-fun t!34548 () Bool)

(declare-fun tb!8121 () Bool)

(assert (=> (and start!97312 (= defaultEntry!1004 defaultEntry!1004) t!34548) tb!8121))

(declare-fun result!16795 () Bool)

(assert (=> tb!8121 (= result!16795 tp_is_empty!27507)))

(assert (=> bm!46436 t!34548))

(declare-fun b_and!37345 () Bool)

(assert (= b_and!37343 (and (=> t!34548 result!16795) b_and!37345)))

(declare-fun m!1026381 () Bool)

(assert (=> b!1107510 m!1026381))

(declare-fun m!1026383 () Bool)

(assert (=> b!1107503 m!1026383))

(declare-fun m!1026385 () Bool)

(assert (=> b!1107503 m!1026385))

(declare-fun m!1026387 () Bool)

(assert (=> start!97312 m!1026387))

(declare-fun m!1026389 () Bool)

(assert (=> start!97312 m!1026389))

(declare-fun m!1026391 () Bool)

(assert (=> bm!46436 m!1026391))

(declare-fun m!1026393 () Bool)

(assert (=> bm!46436 m!1026393))

(declare-fun m!1026395 () Bool)

(assert (=> bm!46436 m!1026395))

(declare-fun m!1026397 () Bool)

(assert (=> b!1107496 m!1026397))

(declare-fun m!1026399 () Bool)

(assert (=> b!1107497 m!1026399))

(declare-fun m!1026401 () Bool)

(assert (=> b!1107500 m!1026401))

(declare-fun m!1026403 () Bool)

(assert (=> b!1107500 m!1026403))

(declare-fun m!1026405 () Bool)

(assert (=> b!1107498 m!1026405))

(declare-fun m!1026407 () Bool)

(assert (=> b!1107502 m!1026407))

(declare-fun m!1026409 () Bool)

(assert (=> b!1107499 m!1026409))

(declare-fun m!1026411 () Bool)

(assert (=> mapNonEmpty!43078 m!1026411))

(declare-fun m!1026413 () Bool)

(assert (=> b!1107507 m!1026413))

(declare-fun m!1026415 () Bool)

(assert (=> bm!46435 m!1026415))

(declare-fun m!1026417 () Bool)

(assert (=> b!1107508 m!1026417))

(check-sat (not b!1107507) (not b!1107503) (not b!1107502) (not b_next!23247) (not b!1107499) (not b!1107498) (not b_lambda!18295) (not b!1107500) tp_is_empty!27507 (not b!1107508) (not start!97312) (not bm!46435) b_and!37345 (not b!1107497) (not bm!46436) (not b!1107510) (not mapNonEmpty!43078))
(check-sat b_and!37345 (not b_next!23247))
