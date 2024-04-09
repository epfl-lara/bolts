; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99262 () Bool)

(assert start!99262)

(declare-fun b_free!24831 () Bool)

(declare-fun b_next!24831 () Bool)

(assert (=> start!99262 (= b_free!24831 (not b_next!24831))))

(declare-fun tp!87205 () Bool)

(declare-fun b_and!40525 () Bool)

(assert (=> start!99262 (= tp!87205 b_and!40525)))

(declare-fun b!1168541 () Bool)

(declare-fun e!664162 () Bool)

(declare-fun tp_is_empty!29361 () Bool)

(assert (=> b!1168541 (= e!664162 tp_is_empty!29361)))

(declare-fun b!1168542 () Bool)

(declare-fun res!775407 () Bool)

(declare-fun e!664159 () Bool)

(assert (=> b!1168542 (=> (not res!775407) (not e!664159))))

(declare-datatypes ((array!75496 0))(
  ( (array!75497 (arr!36395 (Array (_ BitVec 32) (_ BitVec 64))) (size!36932 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75496)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44275 0))(
  ( (V!44276 (val!14737 Int)) )
))
(declare-datatypes ((ValueCell!13971 0))(
  ( (ValueCellFull!13971 (v!17375 V!44275)) (EmptyCell!13971) )
))
(declare-datatypes ((array!75498 0))(
  ( (array!75499 (arr!36396 (Array (_ BitVec 32) ValueCell!13971)) (size!36933 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75498)

(assert (=> b!1168542 (= res!775407 (and (= (size!36933 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36932 _keys!1208) (size!36933 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1168543 () Bool)

(declare-fun e!664163 () Bool)

(assert (=> b!1168543 (= e!664163 true)))

(declare-datatypes ((tuple2!18892 0))(
  ( (tuple2!18893 (_1!9456 (_ BitVec 64)) (_2!9456 V!44275)) )
))
(declare-datatypes ((List!25664 0))(
  ( (Nil!25661) (Cons!25660 (h!26869 tuple2!18892) (t!37494 List!25664)) )
))
(declare-datatypes ((ListLongMap!16873 0))(
  ( (ListLongMap!16874 (toList!8452 List!25664)) )
))
(declare-fun lt!526075 () ListLongMap!16873)

(declare-fun lt!526081 () ListLongMap!16873)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!526076 () V!44275)

(declare-fun +!3702 (ListLongMap!16873 tuple2!18892) ListLongMap!16873)

(declare-fun get!18577 (ValueCell!13971 V!44275) V!44275)

(assert (=> b!1168543 (= lt!526081 (+!3702 lt!526075 (tuple2!18893 (select (arr!36395 _keys!1208) from!1455) (get!18577 (select (arr!36396 _values!996) from!1455) lt!526076))))))

(declare-fun res!775402 () Bool)

(assert (=> start!99262 (=> (not res!775402) (not e!664159))))

(assert (=> start!99262 (= res!775402 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36932 _keys!1208))))))

(assert (=> start!99262 e!664159))

(assert (=> start!99262 tp_is_empty!29361))

(declare-fun array_inv!27698 (array!75496) Bool)

(assert (=> start!99262 (array_inv!27698 _keys!1208)))

(assert (=> start!99262 true))

(assert (=> start!99262 tp!87205))

(declare-fun e!664164 () Bool)

(declare-fun array_inv!27699 (array!75498) Bool)

(assert (=> start!99262 (and (array_inv!27699 _values!996) e!664164)))

(declare-fun b!1168544 () Bool)

(declare-fun res!775403 () Bool)

(assert (=> b!1168544 (=> (not res!775403) (not e!664159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168544 (= res!775403 (validMask!0 mask!1564))))

(declare-fun b!1168545 () Bool)

(declare-fun res!775412 () Bool)

(assert (=> b!1168545 (=> (not res!775412) (not e!664159))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168545 (= res!775412 (validKeyInArray!0 k0!934))))

(declare-fun b!1168546 () Bool)

(declare-fun e!664158 () Bool)

(declare-fun mapRes!45866 () Bool)

(assert (=> b!1168546 (= e!664164 (and e!664158 mapRes!45866))))

(declare-fun condMapEmpty!45866 () Bool)

(declare-fun mapDefault!45866 () ValueCell!13971)

(assert (=> b!1168546 (= condMapEmpty!45866 (= (arr!36396 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13971)) mapDefault!45866)))))

(declare-fun mapNonEmpty!45866 () Bool)

(declare-fun tp!87204 () Bool)

(assert (=> mapNonEmpty!45866 (= mapRes!45866 (and tp!87204 e!664162))))

(declare-fun mapRest!45866 () (Array (_ BitVec 32) ValueCell!13971))

(declare-fun mapKey!45866 () (_ BitVec 32))

(declare-fun mapValue!45866 () ValueCell!13971)

(assert (=> mapNonEmpty!45866 (= (arr!36396 _values!996) (store mapRest!45866 mapKey!45866 mapValue!45866))))

(declare-fun b!1168547 () Bool)

(declare-fun res!775400 () Bool)

(declare-fun e!664161 () Bool)

(assert (=> b!1168547 (=> (not res!775400) (not e!664161))))

(declare-fun lt!526077 () array!75496)

(declare-datatypes ((List!25665 0))(
  ( (Nil!25662) (Cons!25661 (h!26870 (_ BitVec 64)) (t!37495 List!25665)) )
))
(declare-fun arrayNoDuplicates!0 (array!75496 (_ BitVec 32) List!25665) Bool)

(assert (=> b!1168547 (= res!775400 (arrayNoDuplicates!0 lt!526077 #b00000000000000000000000000000000 Nil!25662))))

(declare-fun b!1168548 () Bool)

(declare-fun res!775410 () Bool)

(assert (=> b!1168548 (=> (not res!775410) (not e!664159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75496 (_ BitVec 32)) Bool)

(assert (=> b!1168548 (= res!775410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168549 () Bool)

(assert (=> b!1168549 (= e!664159 e!664161)))

(declare-fun res!775405 () Bool)

(assert (=> b!1168549 (=> (not res!775405) (not e!664161))))

(assert (=> b!1168549 (= res!775405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526077 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1168549 (= lt!526077 (array!75497 (store (arr!36395 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36932 _keys!1208)))))

(declare-fun b!1168550 () Bool)

(declare-fun res!775409 () Bool)

(assert (=> b!1168550 (=> (not res!775409) (not e!664159))))

(assert (=> b!1168550 (= res!775409 (= (select (arr!36395 _keys!1208) i!673) k0!934))))

(declare-fun b!1168551 () Bool)

(declare-fun res!775404 () Bool)

(assert (=> b!1168551 (=> (not res!775404) (not e!664159))))

(assert (=> b!1168551 (= res!775404 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25662))))

(declare-fun b!1168552 () Bool)

(declare-fun e!664157 () Bool)

(assert (=> b!1168552 (= e!664157 e!664163)))

(declare-fun res!775411 () Bool)

(assert (=> b!1168552 (=> res!775411 e!664163)))

(assert (=> b!1168552 (= res!775411 (not (validKeyInArray!0 (select (arr!36395 _keys!1208) from!1455))))))

(declare-fun lt!526080 () ListLongMap!16873)

(assert (=> b!1168552 (= lt!526080 lt!526075)))

(declare-fun lt!526082 () ListLongMap!16873)

(declare-fun -!1480 (ListLongMap!16873 (_ BitVec 64)) ListLongMap!16873)

(assert (=> b!1168552 (= lt!526075 (-!1480 lt!526082 k0!934))))

(declare-fun zeroValue!944 () V!44275)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526074 () array!75498)

(declare-fun minValue!944 () V!44275)

(declare-fun getCurrentListMapNoExtraKeys!4885 (array!75496 array!75498 (_ BitVec 32) (_ BitVec 32) V!44275 V!44275 (_ BitVec 32) Int) ListLongMap!16873)

(assert (=> b!1168552 (= lt!526080 (getCurrentListMapNoExtraKeys!4885 lt!526077 lt!526074 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1168552 (= lt!526082 (getCurrentListMapNoExtraKeys!4885 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38452 0))(
  ( (Unit!38453) )
))
(declare-fun lt!526083 () Unit!38452)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!704 (array!75496 array!75498 (_ BitVec 32) (_ BitVec 32) V!44275 V!44275 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38452)

(assert (=> b!1168552 (= lt!526083 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!704 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1168553 () Bool)

(declare-fun e!664160 () Bool)

(assert (=> b!1168553 (= e!664161 (not e!664160))))

(declare-fun res!775408 () Bool)

(assert (=> b!1168553 (=> res!775408 e!664160)))

(assert (=> b!1168553 (= res!775408 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168553 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!526078 () Unit!38452)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75496 (_ BitVec 64) (_ BitVec 32)) Unit!38452)

(assert (=> b!1168553 (= lt!526078 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1168554 () Bool)

(declare-fun res!775401 () Bool)

(assert (=> b!1168554 (=> (not res!775401) (not e!664159))))

(assert (=> b!1168554 (= res!775401 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36932 _keys!1208))))))

(declare-fun b!1168555 () Bool)

(assert (=> b!1168555 (= e!664160 e!664157)))

(declare-fun res!775406 () Bool)

(assert (=> b!1168555 (=> res!775406 e!664157)))

(assert (=> b!1168555 (= res!775406 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1168555 (= lt!526081 (getCurrentListMapNoExtraKeys!4885 lt!526077 lt!526074 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1168555 (= lt!526074 (array!75499 (store (arr!36396 _values!996) i!673 (ValueCellFull!13971 lt!526076)) (size!36933 _values!996)))))

(declare-fun dynLambda!2877 (Int (_ BitVec 64)) V!44275)

(assert (=> b!1168555 (= lt!526076 (dynLambda!2877 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526079 () ListLongMap!16873)

(assert (=> b!1168555 (= lt!526079 (getCurrentListMapNoExtraKeys!4885 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168556 () Bool)

(assert (=> b!1168556 (= e!664158 tp_is_empty!29361)))

(declare-fun mapIsEmpty!45866 () Bool)

(assert (=> mapIsEmpty!45866 mapRes!45866))

(assert (= (and start!99262 res!775402) b!1168544))

(assert (= (and b!1168544 res!775403) b!1168542))

(assert (= (and b!1168542 res!775407) b!1168548))

(assert (= (and b!1168548 res!775410) b!1168551))

(assert (= (and b!1168551 res!775404) b!1168554))

(assert (= (and b!1168554 res!775401) b!1168545))

(assert (= (and b!1168545 res!775412) b!1168550))

(assert (= (and b!1168550 res!775409) b!1168549))

(assert (= (and b!1168549 res!775405) b!1168547))

(assert (= (and b!1168547 res!775400) b!1168553))

(assert (= (and b!1168553 (not res!775408)) b!1168555))

(assert (= (and b!1168555 (not res!775406)) b!1168552))

(assert (= (and b!1168552 (not res!775411)) b!1168543))

(assert (= (and b!1168546 condMapEmpty!45866) mapIsEmpty!45866))

(assert (= (and b!1168546 (not condMapEmpty!45866)) mapNonEmpty!45866))

(get-info :version)

(assert (= (and mapNonEmpty!45866 ((_ is ValueCellFull!13971) mapValue!45866)) b!1168541))

(assert (= (and b!1168546 ((_ is ValueCellFull!13971) mapDefault!45866)) b!1168556))

(assert (= start!99262 b!1168546))

(declare-fun b_lambda!19955 () Bool)

(assert (=> (not b_lambda!19955) (not b!1168555)))

(declare-fun t!37493 () Bool)

(declare-fun tb!9651 () Bool)

(assert (=> (and start!99262 (= defaultEntry!1004 defaultEntry!1004) t!37493) tb!9651))

(declare-fun result!19859 () Bool)

(assert (=> tb!9651 (= result!19859 tp_is_empty!29361)))

(assert (=> b!1168555 t!37493))

(declare-fun b_and!40527 () Bool)

(assert (= b_and!40525 (and (=> t!37493 result!19859) b_and!40527)))

(declare-fun m!1076435 () Bool)

(assert (=> b!1168552 m!1076435))

(declare-fun m!1076437 () Bool)

(assert (=> b!1168552 m!1076437))

(declare-fun m!1076439 () Bool)

(assert (=> b!1168552 m!1076439))

(declare-fun m!1076441 () Bool)

(assert (=> b!1168552 m!1076441))

(declare-fun m!1076443 () Bool)

(assert (=> b!1168552 m!1076443))

(declare-fun m!1076445 () Bool)

(assert (=> b!1168552 m!1076445))

(assert (=> b!1168552 m!1076443))

(assert (=> b!1168543 m!1076443))

(declare-fun m!1076447 () Bool)

(assert (=> b!1168543 m!1076447))

(assert (=> b!1168543 m!1076447))

(declare-fun m!1076449 () Bool)

(assert (=> b!1168543 m!1076449))

(declare-fun m!1076451 () Bool)

(assert (=> b!1168543 m!1076451))

(declare-fun m!1076453 () Bool)

(assert (=> b!1168544 m!1076453))

(declare-fun m!1076455 () Bool)

(assert (=> b!1168550 m!1076455))

(declare-fun m!1076457 () Bool)

(assert (=> b!1168545 m!1076457))

(declare-fun m!1076459 () Bool)

(assert (=> b!1168548 m!1076459))

(declare-fun m!1076461 () Bool)

(assert (=> mapNonEmpty!45866 m!1076461))

(declare-fun m!1076463 () Bool)

(assert (=> b!1168549 m!1076463))

(declare-fun m!1076465 () Bool)

(assert (=> b!1168549 m!1076465))

(declare-fun m!1076467 () Bool)

(assert (=> b!1168553 m!1076467))

(declare-fun m!1076469 () Bool)

(assert (=> b!1168553 m!1076469))

(declare-fun m!1076471 () Bool)

(assert (=> b!1168547 m!1076471))

(declare-fun m!1076473 () Bool)

(assert (=> start!99262 m!1076473))

(declare-fun m!1076475 () Bool)

(assert (=> start!99262 m!1076475))

(declare-fun m!1076477 () Bool)

(assert (=> b!1168551 m!1076477))

(declare-fun m!1076479 () Bool)

(assert (=> b!1168555 m!1076479))

(declare-fun m!1076481 () Bool)

(assert (=> b!1168555 m!1076481))

(declare-fun m!1076483 () Bool)

(assert (=> b!1168555 m!1076483))

(declare-fun m!1076485 () Bool)

(assert (=> b!1168555 m!1076485))

(check-sat (not b!1168553) (not b!1168549) b_and!40527 (not mapNonEmpty!45866) (not b_next!24831) (not b!1168551) (not start!99262) (not b!1168544) (not b!1168545) (not b!1168547) (not b!1168548) (not b!1168552) (not b!1168555) (not b!1168543) tp_is_empty!29361 (not b_lambda!19955))
(check-sat b_and!40527 (not b_next!24831))
