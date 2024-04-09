; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99354 () Bool)

(assert start!99354)

(declare-fun b_free!24897 () Bool)

(declare-fun b_next!24897 () Bool)

(assert (=> start!99354 (= b_free!24897 (not b_next!24897))))

(declare-fun tp!87405 () Bool)

(declare-fun b_and!40675 () Bool)

(assert (=> start!99354 (= tp!87405 b_and!40675)))

(declare-fun b!1170538 () Bool)

(declare-fun e!665355 () Bool)

(declare-fun e!665347 () Bool)

(assert (=> b!1170538 (= e!665355 e!665347)))

(declare-fun res!776955 () Bool)

(assert (=> b!1170538 (=> res!776955 e!665347)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170538 (= res!776955 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44363 0))(
  ( (V!44364 (val!14770 Int)) )
))
(declare-fun zeroValue!944 () V!44363)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14004 0))(
  ( (ValueCellFull!14004 (v!17409 V!44363)) (EmptyCell!14004) )
))
(declare-datatypes ((array!75630 0))(
  ( (array!75631 (arr!36461 (Array (_ BitVec 32) ValueCell!14004)) (size!36998 (_ BitVec 32))) )
))
(declare-fun lt!527172 () array!75630)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!75632 0))(
  ( (array!75633 (arr!36462 (Array (_ BitVec 32) (_ BitVec 64))) (size!36999 (_ BitVec 32))) )
))
(declare-fun lt!527173 () array!75632)

(declare-fun minValue!944 () V!44363)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18954 0))(
  ( (tuple2!18955 (_1!9487 (_ BitVec 64)) (_2!9487 V!44363)) )
))
(declare-datatypes ((List!25725 0))(
  ( (Nil!25722) (Cons!25721 (h!26930 tuple2!18954) (t!37621 List!25725)) )
))
(declare-datatypes ((ListLongMap!16935 0))(
  ( (ListLongMap!16936 (toList!8483 List!25725)) )
))
(declare-fun lt!527176 () ListLongMap!16935)

(declare-fun getCurrentListMapNoExtraKeys!4915 (array!75632 array!75630 (_ BitVec 32) (_ BitVec 32) V!44363 V!44363 (_ BitVec 32) Int) ListLongMap!16935)

(assert (=> b!1170538 (= lt!527176 (getCurrentListMapNoExtraKeys!4915 lt!527173 lt!527172 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527174 () V!44363)

(declare-fun _values!996 () array!75630)

(assert (=> b!1170538 (= lt!527172 (array!75631 (store (arr!36461 _values!996) i!673 (ValueCellFull!14004 lt!527174)) (size!36998 _values!996)))))

(declare-fun dynLambda!2904 (Int (_ BitVec 64)) V!44363)

(assert (=> b!1170538 (= lt!527174 (dynLambda!2904 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!75632)

(declare-fun lt!527177 () ListLongMap!16935)

(assert (=> b!1170538 (= lt!527177 (getCurrentListMapNoExtraKeys!4915 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170539 () Bool)

(declare-fun res!776954 () Bool)

(declare-fun e!665354 () Bool)

(assert (=> b!1170539 (=> (not res!776954) (not e!665354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170539 (= res!776954 (validMask!0 mask!1564))))

(declare-fun b!1170540 () Bool)

(declare-fun e!665352 () Bool)

(assert (=> b!1170540 (= e!665352 (not e!665355))))

(declare-fun res!776952 () Bool)

(assert (=> b!1170540 (=> res!776952 e!665355)))

(assert (=> b!1170540 (= res!776952 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170540 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38510 0))(
  ( (Unit!38511) )
))
(declare-fun lt!527181 () Unit!38510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75632 (_ BitVec 64) (_ BitVec 32)) Unit!38510)

(assert (=> b!1170540 (= lt!527181 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170541 () Bool)

(declare-fun e!665345 () Bool)

(declare-fun tp_is_empty!29427 () Bool)

(assert (=> b!1170541 (= e!665345 tp_is_empty!29427)))

(declare-fun b!1170542 () Bool)

(declare-fun e!665346 () Bool)

(assert (=> b!1170542 (= e!665346 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170543 () Bool)

(declare-fun e!665356 () Bool)

(assert (=> b!1170543 (= e!665356 tp_is_empty!29427)))

(declare-fun mapIsEmpty!45968 () Bool)

(declare-fun mapRes!45968 () Bool)

(assert (=> mapIsEmpty!45968 mapRes!45968))

(declare-fun b!1170544 () Bool)

(declare-fun res!776965 () Bool)

(assert (=> b!1170544 (=> (not res!776965) (not e!665354))))

(assert (=> b!1170544 (= res!776965 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36999 _keys!1208))))))

(declare-fun b!1170545 () Bool)

(declare-fun e!665348 () Bool)

(declare-fun e!665349 () Bool)

(assert (=> b!1170545 (= e!665348 e!665349)))

(declare-fun res!776959 () Bool)

(assert (=> b!1170545 (=> res!776959 e!665349)))

(assert (=> b!1170545 (= res!776959 (not (= (select (arr!36462 _keys!1208) from!1455) k0!934)))))

(declare-fun e!665351 () Bool)

(assert (=> b!1170545 e!665351))

(declare-fun res!776960 () Bool)

(assert (=> b!1170545 (=> (not res!776960) (not e!665351))))

(declare-fun lt!527171 () ListLongMap!16935)

(declare-fun +!3726 (ListLongMap!16935 tuple2!18954) ListLongMap!16935)

(declare-fun get!18625 (ValueCell!14004 V!44363) V!44363)

(assert (=> b!1170545 (= res!776960 (= lt!527176 (+!3726 lt!527171 (tuple2!18955 (select (arr!36462 _keys!1208) from!1455) (get!18625 (select (arr!36461 _values!996) from!1455) lt!527174)))))))

(declare-fun b!1170546 () Bool)

(declare-fun res!776951 () Bool)

(assert (=> b!1170546 (=> (not res!776951) (not e!665354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170546 (= res!776951 (validKeyInArray!0 k0!934))))

(declare-fun b!1170547 () Bool)

(declare-fun res!776961 () Bool)

(assert (=> b!1170547 (=> (not res!776961) (not e!665354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75632 (_ BitVec 32)) Bool)

(assert (=> b!1170547 (= res!776961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170548 () Bool)

(assert (=> b!1170548 (= e!665347 e!665348)))

(declare-fun res!776957 () Bool)

(assert (=> b!1170548 (=> res!776957 e!665348)))

(assert (=> b!1170548 (= res!776957 (not (validKeyInArray!0 (select (arr!36462 _keys!1208) from!1455))))))

(declare-fun lt!527175 () ListLongMap!16935)

(assert (=> b!1170548 (= lt!527175 lt!527171)))

(declare-fun lt!527180 () ListLongMap!16935)

(declare-fun -!1502 (ListLongMap!16935 (_ BitVec 64)) ListLongMap!16935)

(assert (=> b!1170548 (= lt!527171 (-!1502 lt!527180 k0!934))))

(assert (=> b!1170548 (= lt!527175 (getCurrentListMapNoExtraKeys!4915 lt!527173 lt!527172 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170548 (= lt!527180 (getCurrentListMapNoExtraKeys!4915 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527179 () Unit!38510)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!726 (array!75632 array!75630 (_ BitVec 32) (_ BitVec 32) V!44363 V!44363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38510)

(assert (=> b!1170548 (= lt!527179 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!726 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170549 () Bool)

(assert (=> b!1170549 (= e!665349 true)))

(assert (=> b!1170549 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527178 () Unit!38510)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75632 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38510)

(assert (=> b!1170549 (= lt!527178 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170550 () Bool)

(declare-fun res!776950 () Bool)

(assert (=> b!1170550 (=> (not res!776950) (not e!665352))))

(declare-datatypes ((List!25726 0))(
  ( (Nil!25723) (Cons!25722 (h!26931 (_ BitVec 64)) (t!37622 List!25726)) )
))
(declare-fun arrayNoDuplicates!0 (array!75632 (_ BitVec 32) List!25726) Bool)

(assert (=> b!1170550 (= res!776950 (arrayNoDuplicates!0 lt!527173 #b00000000000000000000000000000000 Nil!25723))))

(declare-fun res!776956 () Bool)

(assert (=> start!99354 (=> (not res!776956) (not e!665354))))

(assert (=> start!99354 (= res!776956 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36999 _keys!1208))))))

(assert (=> start!99354 e!665354))

(assert (=> start!99354 tp_is_empty!29427))

(declare-fun array_inv!27746 (array!75632) Bool)

(assert (=> start!99354 (array_inv!27746 _keys!1208)))

(assert (=> start!99354 true))

(assert (=> start!99354 tp!87405))

(declare-fun e!665350 () Bool)

(declare-fun array_inv!27747 (array!75630) Bool)

(assert (=> start!99354 (and (array_inv!27747 _values!996) e!665350)))

(declare-fun mapNonEmpty!45968 () Bool)

(declare-fun tp!87406 () Bool)

(assert (=> mapNonEmpty!45968 (= mapRes!45968 (and tp!87406 e!665345))))

(declare-fun mapRest!45968 () (Array (_ BitVec 32) ValueCell!14004))

(declare-fun mapValue!45968 () ValueCell!14004)

(declare-fun mapKey!45968 () (_ BitVec 32))

(assert (=> mapNonEmpty!45968 (= (arr!36461 _values!996) (store mapRest!45968 mapKey!45968 mapValue!45968))))

(declare-fun b!1170551 () Bool)

(declare-fun res!776963 () Bool)

(assert (=> b!1170551 (=> (not res!776963) (not e!665354))))

(assert (=> b!1170551 (= res!776963 (= (select (arr!36462 _keys!1208) i!673) k0!934))))

(declare-fun b!1170552 () Bool)

(assert (=> b!1170552 (= e!665350 (and e!665356 mapRes!45968))))

(declare-fun condMapEmpty!45968 () Bool)

(declare-fun mapDefault!45968 () ValueCell!14004)

(assert (=> b!1170552 (= condMapEmpty!45968 (= (arr!36461 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14004)) mapDefault!45968)))))

(declare-fun b!1170553 () Bool)

(assert (=> b!1170553 (= e!665351 e!665346)))

(declare-fun res!776953 () Bool)

(assert (=> b!1170553 (=> res!776953 e!665346)))

(assert (=> b!1170553 (= res!776953 (not (= (select (arr!36462 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1170554 () Bool)

(declare-fun res!776962 () Bool)

(assert (=> b!1170554 (=> (not res!776962) (not e!665354))))

(assert (=> b!1170554 (= res!776962 (and (= (size!36998 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36999 _keys!1208) (size!36998 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170555 () Bool)

(declare-fun res!776964 () Bool)

(assert (=> b!1170555 (=> (not res!776964) (not e!665354))))

(assert (=> b!1170555 (= res!776964 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25723))))

(declare-fun b!1170556 () Bool)

(assert (=> b!1170556 (= e!665354 e!665352)))

(declare-fun res!776958 () Bool)

(assert (=> b!1170556 (=> (not res!776958) (not e!665352))))

(assert (=> b!1170556 (= res!776958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527173 mask!1564))))

(assert (=> b!1170556 (= lt!527173 (array!75633 (store (arr!36462 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36999 _keys!1208)))))

(assert (= (and start!99354 res!776956) b!1170539))

(assert (= (and b!1170539 res!776954) b!1170554))

(assert (= (and b!1170554 res!776962) b!1170547))

(assert (= (and b!1170547 res!776961) b!1170555))

(assert (= (and b!1170555 res!776964) b!1170544))

(assert (= (and b!1170544 res!776965) b!1170546))

(assert (= (and b!1170546 res!776951) b!1170551))

(assert (= (and b!1170551 res!776963) b!1170556))

(assert (= (and b!1170556 res!776958) b!1170550))

(assert (= (and b!1170550 res!776950) b!1170540))

(assert (= (and b!1170540 (not res!776952)) b!1170538))

(assert (= (and b!1170538 (not res!776955)) b!1170548))

(assert (= (and b!1170548 (not res!776957)) b!1170545))

(assert (= (and b!1170545 res!776960) b!1170553))

(assert (= (and b!1170553 (not res!776953)) b!1170542))

(assert (= (and b!1170545 (not res!776959)) b!1170549))

(assert (= (and b!1170552 condMapEmpty!45968) mapIsEmpty!45968))

(assert (= (and b!1170552 (not condMapEmpty!45968)) mapNonEmpty!45968))

(get-info :version)

(assert (= (and mapNonEmpty!45968 ((_ is ValueCellFull!14004) mapValue!45968)) b!1170541))

(assert (= (and b!1170552 ((_ is ValueCellFull!14004) mapDefault!45968)) b!1170543))

(assert (= start!99354 b!1170552))

(declare-fun b_lambda!20059 () Bool)

(assert (=> (not b_lambda!20059) (not b!1170538)))

(declare-fun t!37620 () Bool)

(declare-fun tb!9717 () Bool)

(assert (=> (and start!99354 (= defaultEntry!1004 defaultEntry!1004) t!37620) tb!9717))

(declare-fun result!19993 () Bool)

(assert (=> tb!9717 (= result!19993 tp_is_empty!29427)))

(assert (=> b!1170538 t!37620))

(declare-fun b_and!40677 () Bool)

(assert (= b_and!40675 (and (=> t!37620 result!19993) b_and!40677)))

(declare-fun m!1078419 () Bool)

(assert (=> mapNonEmpty!45968 m!1078419))

(declare-fun m!1078421 () Bool)

(assert (=> b!1170550 m!1078421))

(declare-fun m!1078423 () Bool)

(assert (=> b!1170551 m!1078423))

(declare-fun m!1078425 () Bool)

(assert (=> b!1170538 m!1078425))

(declare-fun m!1078427 () Bool)

(assert (=> b!1170538 m!1078427))

(declare-fun m!1078429 () Bool)

(assert (=> b!1170538 m!1078429))

(declare-fun m!1078431 () Bool)

(assert (=> b!1170538 m!1078431))

(declare-fun m!1078433 () Bool)

(assert (=> b!1170555 m!1078433))

(declare-fun m!1078435 () Bool)

(assert (=> b!1170549 m!1078435))

(declare-fun m!1078437 () Bool)

(assert (=> b!1170549 m!1078437))

(declare-fun m!1078439 () Bool)

(assert (=> b!1170553 m!1078439))

(declare-fun m!1078441 () Bool)

(assert (=> b!1170546 m!1078441))

(declare-fun m!1078443 () Bool)

(assert (=> b!1170539 m!1078443))

(declare-fun m!1078445 () Bool)

(assert (=> b!1170556 m!1078445))

(declare-fun m!1078447 () Bool)

(assert (=> b!1170556 m!1078447))

(declare-fun m!1078449 () Bool)

(assert (=> b!1170548 m!1078449))

(declare-fun m!1078451 () Bool)

(assert (=> b!1170548 m!1078451))

(declare-fun m!1078453 () Bool)

(assert (=> b!1170548 m!1078453))

(declare-fun m!1078455 () Bool)

(assert (=> b!1170548 m!1078455))

(assert (=> b!1170548 m!1078439))

(declare-fun m!1078457 () Bool)

(assert (=> b!1170548 m!1078457))

(assert (=> b!1170548 m!1078439))

(declare-fun m!1078459 () Bool)

(assert (=> b!1170542 m!1078459))

(declare-fun m!1078461 () Bool)

(assert (=> start!99354 m!1078461))

(declare-fun m!1078463 () Bool)

(assert (=> start!99354 m!1078463))

(declare-fun m!1078465 () Bool)

(assert (=> b!1170547 m!1078465))

(declare-fun m!1078467 () Bool)

(assert (=> b!1170540 m!1078467))

(declare-fun m!1078469 () Bool)

(assert (=> b!1170540 m!1078469))

(assert (=> b!1170545 m!1078439))

(declare-fun m!1078471 () Bool)

(assert (=> b!1170545 m!1078471))

(assert (=> b!1170545 m!1078471))

(declare-fun m!1078473 () Bool)

(assert (=> b!1170545 m!1078473))

(declare-fun m!1078475 () Bool)

(assert (=> b!1170545 m!1078475))

(check-sat tp_is_empty!29427 (not b!1170539) (not start!99354) (not mapNonEmpty!45968) (not b!1170555) (not b!1170545) (not b!1170550) (not b!1170546) (not b_next!24897) (not b!1170538) (not b!1170549) (not b!1170548) b_and!40677 (not b!1170547) (not b_lambda!20059) (not b!1170542) (not b!1170556) (not b!1170540))
(check-sat b_and!40677 (not b_next!24897))
