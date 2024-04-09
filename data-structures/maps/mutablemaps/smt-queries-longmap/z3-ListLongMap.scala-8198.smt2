; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100092 () Bool)

(assert start!100092)

(declare-fun b_free!25635 () Bool)

(declare-fun b_next!25635 () Bool)

(assert (=> start!100092 (= b_free!25635 (not b_next!25635))))

(declare-fun tp!89620 () Bool)

(declare-fun b_and!42151 () Bool)

(assert (=> start!100092 (= tp!89620 b_and!42151)))

(declare-fun b!1192532 () Bool)

(declare-fun e!677865 () Bool)

(assert (=> b!1192532 (= e!677865 true)))

(declare-datatypes ((V!45347 0))(
  ( (V!45348 (val!15139 Int)) )
))
(declare-datatypes ((ValueCell!14373 0))(
  ( (ValueCellFull!14373 (v!17778 V!45347)) (EmptyCell!14373) )
))
(declare-datatypes ((array!77094 0))(
  ( (array!77095 (arr!37193 (Array (_ BitVec 32) ValueCell!14373)) (size!37730 (_ BitVec 32))) )
))
(declare-fun lt!542224 () array!77094)

(declare-datatypes ((array!77096 0))(
  ( (array!77097 (arr!37194 (Array (_ BitVec 32) (_ BitVec 64))) (size!37731 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77096)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _values!996 () array!77094)

(declare-fun minValue!944 () V!45347)

(declare-fun zeroValue!944 () V!45347)

(declare-fun lt!542226 () array!77096)

(declare-datatypes ((tuple2!19604 0))(
  ( (tuple2!19605 (_1!9812 (_ BitVec 64)) (_2!9812 V!45347)) )
))
(declare-datatypes ((List!26365 0))(
  ( (Nil!26362) (Cons!26361 (h!27570 tuple2!19604) (t!38999 List!26365)) )
))
(declare-datatypes ((ListLongMap!17585 0))(
  ( (ListLongMap!17586 (toList!8808 List!26365)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5222 (array!77096 array!77094 (_ BitVec 32) (_ BitVec 32) V!45347 V!45347 (_ BitVec 32) Int) ListLongMap!17585)

(declare-fun -!1784 (ListLongMap!17585 (_ BitVec 64)) ListLongMap!17585)

(assert (=> b!1192532 (= (getCurrentListMapNoExtraKeys!5222 lt!542226 lt!542224 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1784 (getCurrentListMapNoExtraKeys!5222 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39504 0))(
  ( (Unit!39505) )
))
(declare-fun lt!542222 () Unit!39504)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!990 (array!77096 array!77094 (_ BitVec 32) (_ BitVec 32) V!45347 V!45347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39504)

(assert (=> b!1192532 (= lt!542222 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!990 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192533 () Bool)

(declare-fun res!793420 () Bool)

(declare-fun e!677869 () Bool)

(assert (=> b!1192533 (=> (not res!793420) (not e!677869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77096 (_ BitVec 32)) Bool)

(assert (=> b!1192533 (= res!793420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192534 () Bool)

(declare-fun res!793415 () Bool)

(declare-fun e!677868 () Bool)

(assert (=> b!1192534 (=> (not res!793415) (not e!677868))))

(declare-datatypes ((List!26366 0))(
  ( (Nil!26363) (Cons!26362 (h!27571 (_ BitVec 64)) (t!39000 List!26366)) )
))
(declare-fun arrayNoDuplicates!0 (array!77096 (_ BitVec 32) List!26366) Bool)

(assert (=> b!1192534 (= res!793415 (arrayNoDuplicates!0 lt!542226 #b00000000000000000000000000000000 Nil!26363))))

(declare-fun b!1192535 () Bool)

(declare-fun res!793416 () Bool)

(assert (=> b!1192535 (=> (not res!793416) (not e!677869))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192535 (= res!793416 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!47075 () Bool)

(declare-fun mapRes!47075 () Bool)

(declare-fun tp!89619 () Bool)

(declare-fun e!677862 () Bool)

(assert (=> mapNonEmpty!47075 (= mapRes!47075 (and tp!89619 e!677862))))

(declare-fun mapRest!47075 () (Array (_ BitVec 32) ValueCell!14373))

(declare-fun mapKey!47075 () (_ BitVec 32))

(declare-fun mapValue!47075 () ValueCell!14373)

(assert (=> mapNonEmpty!47075 (= (arr!37193 _values!996) (store mapRest!47075 mapKey!47075 mapValue!47075))))

(declare-fun b!1192536 () Bool)

(declare-fun res!793418 () Bool)

(assert (=> b!1192536 (=> (not res!793418) (not e!677869))))

(assert (=> b!1192536 (= res!793418 (and (= (size!37730 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37731 _keys!1208) (size!37730 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192537 () Bool)

(declare-fun e!677866 () Bool)

(assert (=> b!1192537 (= e!677868 (not e!677866))))

(declare-fun res!793410 () Bool)

(assert (=> b!1192537 (=> res!793410 e!677866)))

(assert (=> b!1192537 (= res!793410 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192537 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!542225 () Unit!39504)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77096 (_ BitVec 64) (_ BitVec 32)) Unit!39504)

(assert (=> b!1192537 (= lt!542225 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1192538 () Bool)

(declare-fun res!793419 () Bool)

(assert (=> b!1192538 (=> (not res!793419) (not e!677869))))

(assert (=> b!1192538 (= res!793419 (= (select (arr!37194 _keys!1208) i!673) k0!934))))

(declare-fun res!793412 () Bool)

(assert (=> start!100092 (=> (not res!793412) (not e!677869))))

(assert (=> start!100092 (= res!793412 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37731 _keys!1208))))))

(assert (=> start!100092 e!677869))

(declare-fun tp_is_empty!30165 () Bool)

(assert (=> start!100092 tp_is_empty!30165))

(declare-fun array_inv!28260 (array!77096) Bool)

(assert (=> start!100092 (array_inv!28260 _keys!1208)))

(assert (=> start!100092 true))

(assert (=> start!100092 tp!89620))

(declare-fun e!677864 () Bool)

(declare-fun array_inv!28261 (array!77094) Bool)

(assert (=> start!100092 (and (array_inv!28261 _values!996) e!677864)))

(declare-fun mapIsEmpty!47075 () Bool)

(assert (=> mapIsEmpty!47075 mapRes!47075))

(declare-fun b!1192539 () Bool)

(declare-fun res!793409 () Bool)

(assert (=> b!1192539 (=> (not res!793409) (not e!677869))))

(assert (=> b!1192539 (= res!793409 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37731 _keys!1208))))))

(declare-fun b!1192540 () Bool)

(assert (=> b!1192540 (= e!677869 e!677868)))

(declare-fun res!793417 () Bool)

(assert (=> b!1192540 (=> (not res!793417) (not e!677868))))

(assert (=> b!1192540 (= res!793417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542226 mask!1564))))

(assert (=> b!1192540 (= lt!542226 (array!77097 (store (arr!37194 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37731 _keys!1208)))))

(declare-fun b!1192541 () Bool)

(declare-fun res!793414 () Bool)

(assert (=> b!1192541 (=> (not res!793414) (not e!677869))))

(assert (=> b!1192541 (= res!793414 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26363))))

(declare-fun b!1192542 () Bool)

(declare-fun e!677867 () Bool)

(assert (=> b!1192542 (= e!677867 tp_is_empty!30165)))

(declare-fun b!1192543 () Bool)

(assert (=> b!1192543 (= e!677866 e!677865)))

(declare-fun res!793411 () Bool)

(assert (=> b!1192543 (=> res!793411 e!677865)))

(assert (=> b!1192543 (= res!793411 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!542223 () ListLongMap!17585)

(assert (=> b!1192543 (= lt!542223 (getCurrentListMapNoExtraKeys!5222 lt!542226 lt!542224 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3163 (Int (_ BitVec 64)) V!45347)

(assert (=> b!1192543 (= lt!542224 (array!77095 (store (arr!37193 _values!996) i!673 (ValueCellFull!14373 (dynLambda!3163 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37730 _values!996)))))

(declare-fun lt!542221 () ListLongMap!17585)

(assert (=> b!1192543 (= lt!542221 (getCurrentListMapNoExtraKeys!5222 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192544 () Bool)

(assert (=> b!1192544 (= e!677862 tp_is_empty!30165)))

(declare-fun b!1192545 () Bool)

(declare-fun res!793413 () Bool)

(assert (=> b!1192545 (=> (not res!793413) (not e!677869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192545 (= res!793413 (validMask!0 mask!1564))))

(declare-fun b!1192546 () Bool)

(assert (=> b!1192546 (= e!677864 (and e!677867 mapRes!47075))))

(declare-fun condMapEmpty!47075 () Bool)

(declare-fun mapDefault!47075 () ValueCell!14373)

(assert (=> b!1192546 (= condMapEmpty!47075 (= (arr!37193 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14373)) mapDefault!47075)))))

(assert (= (and start!100092 res!793412) b!1192545))

(assert (= (and b!1192545 res!793413) b!1192536))

(assert (= (and b!1192536 res!793418) b!1192533))

(assert (= (and b!1192533 res!793420) b!1192541))

(assert (= (and b!1192541 res!793414) b!1192539))

(assert (= (and b!1192539 res!793409) b!1192535))

(assert (= (and b!1192535 res!793416) b!1192538))

(assert (= (and b!1192538 res!793419) b!1192540))

(assert (= (and b!1192540 res!793417) b!1192534))

(assert (= (and b!1192534 res!793415) b!1192537))

(assert (= (and b!1192537 (not res!793410)) b!1192543))

(assert (= (and b!1192543 (not res!793411)) b!1192532))

(assert (= (and b!1192546 condMapEmpty!47075) mapIsEmpty!47075))

(assert (= (and b!1192546 (not condMapEmpty!47075)) mapNonEmpty!47075))

(get-info :version)

(assert (= (and mapNonEmpty!47075 ((_ is ValueCellFull!14373) mapValue!47075)) b!1192544))

(assert (= (and b!1192546 ((_ is ValueCellFull!14373) mapDefault!47075)) b!1192542))

(assert (= start!100092 b!1192546))

(declare-fun b_lambda!20797 () Bool)

(assert (=> (not b_lambda!20797) (not b!1192543)))

(declare-fun t!38998 () Bool)

(declare-fun tb!10455 () Bool)

(assert (=> (and start!100092 (= defaultEntry!1004 defaultEntry!1004) t!38998) tb!10455))

(declare-fun result!21469 () Bool)

(assert (=> tb!10455 (= result!21469 tp_is_empty!30165)))

(assert (=> b!1192543 t!38998))

(declare-fun b_and!42153 () Bool)

(assert (= b_and!42151 (and (=> t!38998 result!21469) b_and!42153)))

(declare-fun m!1100927 () Bool)

(assert (=> b!1192545 m!1100927))

(declare-fun m!1100929 () Bool)

(assert (=> b!1192533 m!1100929))

(declare-fun m!1100931 () Bool)

(assert (=> b!1192537 m!1100931))

(declare-fun m!1100933 () Bool)

(assert (=> b!1192537 m!1100933))

(declare-fun m!1100935 () Bool)

(assert (=> mapNonEmpty!47075 m!1100935))

(declare-fun m!1100937 () Bool)

(assert (=> b!1192534 m!1100937))

(declare-fun m!1100939 () Bool)

(assert (=> b!1192543 m!1100939))

(declare-fun m!1100941 () Bool)

(assert (=> b!1192543 m!1100941))

(declare-fun m!1100943 () Bool)

(assert (=> b!1192543 m!1100943))

(declare-fun m!1100945 () Bool)

(assert (=> b!1192543 m!1100945))

(declare-fun m!1100947 () Bool)

(assert (=> b!1192535 m!1100947))

(declare-fun m!1100949 () Bool)

(assert (=> b!1192541 m!1100949))

(declare-fun m!1100951 () Bool)

(assert (=> b!1192540 m!1100951))

(declare-fun m!1100953 () Bool)

(assert (=> b!1192540 m!1100953))

(declare-fun m!1100955 () Bool)

(assert (=> b!1192532 m!1100955))

(declare-fun m!1100957 () Bool)

(assert (=> b!1192532 m!1100957))

(assert (=> b!1192532 m!1100957))

(declare-fun m!1100959 () Bool)

(assert (=> b!1192532 m!1100959))

(declare-fun m!1100961 () Bool)

(assert (=> b!1192532 m!1100961))

(declare-fun m!1100963 () Bool)

(assert (=> start!100092 m!1100963))

(declare-fun m!1100965 () Bool)

(assert (=> start!100092 m!1100965))

(declare-fun m!1100967 () Bool)

(assert (=> b!1192538 m!1100967))

(check-sat (not b!1192537) (not b!1192541) (not b!1192545) (not b!1192540) (not b!1192533) (not b!1192534) (not b!1192543) (not b!1192532) (not start!100092) b_and!42153 (not b_next!25635) (not mapNonEmpty!47075) (not b!1192535) (not b_lambda!20797) tp_is_empty!30165)
(check-sat b_and!42153 (not b_next!25635))
