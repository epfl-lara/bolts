; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101562 () Bool)

(assert start!101562)

(declare-fun b_free!26313 () Bool)

(declare-fun b_next!26313 () Bool)

(assert (=> start!101562 (= b_free!26313 (not b_next!26313))))

(declare-fun tp!91977 () Bool)

(declare-fun b_and!43843 () Bool)

(assert (=> start!101562 (= tp!91977 b_and!43843)))

(declare-fun b!1220507 () Bool)

(declare-fun e!693094 () Bool)

(declare-fun e!693098 () Bool)

(assert (=> b!1220507 (= e!693094 e!693098)))

(declare-fun res!810843 () Bool)

(assert (=> b!1220507 (=> (not res!810843) (not e!693098))))

(declare-datatypes ((array!78788 0))(
  ( (array!78789 (arr!38020 (Array (_ BitVec 32) (_ BitVec 64))) (size!38557 (_ BitVec 32))) )
))
(declare-fun lt!555028 () array!78788)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78788 (_ BitVec 32)) Bool)

(assert (=> b!1220507 (= res!810843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!555028 mask!1564))))

(declare-fun _keys!1208 () array!78788)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1220507 (= lt!555028 (array!78789 (store (arr!38020 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38557 _keys!1208)))))

(declare-fun b!1220508 () Bool)

(declare-fun res!810841 () Bool)

(assert (=> b!1220508 (=> (not res!810841) (not e!693094))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46483 0))(
  ( (V!46484 (val!15565 Int)) )
))
(declare-datatypes ((ValueCell!14799 0))(
  ( (ValueCellFull!14799 (v!18224 V!46483)) (EmptyCell!14799) )
))
(declare-datatypes ((array!78790 0))(
  ( (array!78791 (arr!38021 (Array (_ BitVec 32) ValueCell!14799)) (size!38558 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78790)

(assert (=> b!1220508 (= res!810841 (and (= (size!38558 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38557 _keys!1208) (size!38558 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1220509 () Bool)

(declare-fun e!693095 () Bool)

(declare-fun e!693099 () Bool)

(assert (=> b!1220509 (= e!693095 e!693099)))

(declare-fun res!810851 () Bool)

(assert (=> b!1220509 (=> res!810851 e!693099)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1220509 (= res!810851 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46483)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!20174 0))(
  ( (tuple2!20175 (_1!10097 (_ BitVec 64)) (_2!10097 V!46483)) )
))
(declare-datatypes ((List!26991 0))(
  ( (Nil!26988) (Cons!26987 (h!28196 tuple2!20174) (t!40291 List!26991)) )
))
(declare-datatypes ((ListLongMap!18155 0))(
  ( (ListLongMap!18156 (toList!9093 List!26991)) )
))
(declare-fun lt!555027 () ListLongMap!18155)

(declare-fun lt!555031 () array!78790)

(declare-fun minValue!944 () V!46483)

(declare-fun getCurrentListMapNoExtraKeys!5491 (array!78788 array!78790 (_ BitVec 32) (_ BitVec 32) V!46483 V!46483 (_ BitVec 32) Int) ListLongMap!18155)

(assert (=> b!1220509 (= lt!555027 (getCurrentListMapNoExtraKeys!5491 lt!555028 lt!555031 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!555032 () V!46483)

(assert (=> b!1220509 (= lt!555031 (array!78791 (store (arr!38021 _values!996) i!673 (ValueCellFull!14799 lt!555032)) (size!38558 _values!996)))))

(declare-fun dynLambda!3393 (Int (_ BitVec 64)) V!46483)

(assert (=> b!1220509 (= lt!555032 (dynLambda!3393 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!555029 () ListLongMap!18155)

(assert (=> b!1220509 (= lt!555029 (getCurrentListMapNoExtraKeys!5491 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1220510 () Bool)

(declare-fun res!810845 () Bool)

(assert (=> b!1220510 (=> (not res!810845) (not e!693094))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1220510 (= res!810845 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!48415 () Bool)

(declare-fun mapRes!48415 () Bool)

(assert (=> mapIsEmpty!48415 mapRes!48415))

(declare-fun b!1220511 () Bool)

(declare-fun res!810847 () Bool)

(assert (=> b!1220511 (=> (not res!810847) (not e!693094))))

(assert (=> b!1220511 (= res!810847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1220512 () Bool)

(declare-fun res!810839 () Bool)

(assert (=> b!1220512 (=> (not res!810839) (not e!693098))))

(declare-datatypes ((List!26992 0))(
  ( (Nil!26989) (Cons!26988 (h!28197 (_ BitVec 64)) (t!40292 List!26992)) )
))
(declare-fun arrayNoDuplicates!0 (array!78788 (_ BitVec 32) List!26992) Bool)

(assert (=> b!1220512 (= res!810839 (arrayNoDuplicates!0 lt!555028 #b00000000000000000000000000000000 Nil!26989))))

(declare-fun b!1220513 () Bool)

(declare-fun e!693101 () Bool)

(declare-fun e!693091 () Bool)

(assert (=> b!1220513 (= e!693101 e!693091)))

(declare-fun res!810849 () Bool)

(assert (=> b!1220513 (=> res!810849 e!693091)))

(assert (=> b!1220513 (= res!810849 (not (= (select (arr!38020 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1220514 () Bool)

(assert (=> b!1220514 (= e!693098 (not e!693095))))

(declare-fun res!810844 () Bool)

(assert (=> b!1220514 (=> res!810844 e!693095)))

(assert (=> b!1220514 (= res!810844 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78788 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1220514 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40356 0))(
  ( (Unit!40357) )
))
(declare-fun lt!555038 () Unit!40356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78788 (_ BitVec 64) (_ BitVec 32)) Unit!40356)

(assert (=> b!1220514 (= lt!555038 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220515 () Bool)

(declare-fun e!693093 () Bool)

(assert (=> b!1220515 (= e!693099 e!693093)))

(declare-fun res!810846 () Bool)

(assert (=> b!1220515 (=> res!810846 e!693093)))

(assert (=> b!1220515 (= res!810846 (not (validKeyInArray!0 (select (arr!38020 _keys!1208) from!1455))))))

(declare-fun lt!555033 () ListLongMap!18155)

(declare-fun lt!555035 () ListLongMap!18155)

(assert (=> b!1220515 (= lt!555033 lt!555035)))

(declare-fun lt!555037 () ListLongMap!18155)

(declare-fun -!1940 (ListLongMap!18155 (_ BitVec 64)) ListLongMap!18155)

(assert (=> b!1220515 (= lt!555035 (-!1940 lt!555037 k0!934))))

(assert (=> b!1220515 (= lt!555033 (getCurrentListMapNoExtraKeys!5491 lt!555028 lt!555031 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1220515 (= lt!555037 (getCurrentListMapNoExtraKeys!5491 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!555036 () Unit!40356)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1142 (array!78788 array!78790 (_ BitVec 32) (_ BitVec 32) V!46483 V!46483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40356)

(assert (=> b!1220515 (= lt!555036 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1142 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1220516 () Bool)

(assert (=> b!1220516 (= e!693091 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1220517 () Bool)

(declare-fun e!693100 () Bool)

(declare-fun tp_is_empty!31017 () Bool)

(assert (=> b!1220517 (= e!693100 tp_is_empty!31017)))

(declare-fun b!1220518 () Bool)

(declare-fun res!810838 () Bool)

(assert (=> b!1220518 (=> (not res!810838) (not e!693094))))

(assert (=> b!1220518 (= res!810838 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38557 _keys!1208))))))

(declare-fun b!1220519 () Bool)

(declare-fun e!693096 () Bool)

(assert (=> b!1220519 (= e!693096 true)))

(assert (=> b!1220519 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26989)))

(declare-fun lt!555030 () Unit!40356)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78788 (_ BitVec 32) (_ BitVec 32)) Unit!40356)

(assert (=> b!1220519 (= lt!555030 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1220519 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!555034 () Unit!40356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78788 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40356)

(assert (=> b!1220519 (= lt!555034 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1220520 () Bool)

(assert (=> b!1220520 (= e!693093 e!693096)))

(declare-fun res!810842 () Bool)

(assert (=> b!1220520 (=> res!810842 e!693096)))

(assert (=> b!1220520 (= res!810842 (not (= (select (arr!38020 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1220520 e!693101))

(declare-fun res!810848 () Bool)

(assert (=> b!1220520 (=> (not res!810848) (not e!693101))))

(declare-fun +!4068 (ListLongMap!18155 tuple2!20174) ListLongMap!18155)

(declare-fun get!19440 (ValueCell!14799 V!46483) V!46483)

(assert (=> b!1220520 (= res!810848 (= lt!555027 (+!4068 lt!555035 (tuple2!20175 (select (arr!38020 _keys!1208) from!1455) (get!19440 (select (arr!38021 _values!996) from!1455) lt!555032)))))))

(declare-fun b!1220521 () Bool)

(declare-fun res!810850 () Bool)

(assert (=> b!1220521 (=> (not res!810850) (not e!693094))))

(assert (=> b!1220521 (= res!810850 (= (select (arr!38020 _keys!1208) i!673) k0!934))))

(declare-fun res!810837 () Bool)

(assert (=> start!101562 (=> (not res!810837) (not e!693094))))

(assert (=> start!101562 (= res!810837 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38557 _keys!1208))))))

(assert (=> start!101562 e!693094))

(assert (=> start!101562 tp_is_empty!31017))

(declare-fun array_inv!28848 (array!78788) Bool)

(assert (=> start!101562 (array_inv!28848 _keys!1208)))

(assert (=> start!101562 true))

(assert (=> start!101562 tp!91977))

(declare-fun e!693092 () Bool)

(declare-fun array_inv!28849 (array!78790) Bool)

(assert (=> start!101562 (and (array_inv!28849 _values!996) e!693092)))

(declare-fun mapNonEmpty!48415 () Bool)

(declare-fun tp!91976 () Bool)

(assert (=> mapNonEmpty!48415 (= mapRes!48415 (and tp!91976 e!693100))))

(declare-fun mapValue!48415 () ValueCell!14799)

(declare-fun mapRest!48415 () (Array (_ BitVec 32) ValueCell!14799))

(declare-fun mapKey!48415 () (_ BitVec 32))

(assert (=> mapNonEmpty!48415 (= (arr!38021 _values!996) (store mapRest!48415 mapKey!48415 mapValue!48415))))

(declare-fun b!1220522 () Bool)

(declare-fun res!810840 () Bool)

(assert (=> b!1220522 (=> (not res!810840) (not e!693094))))

(assert (=> b!1220522 (= res!810840 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26989))))

(declare-fun b!1220523 () Bool)

(declare-fun e!693102 () Bool)

(assert (=> b!1220523 (= e!693092 (and e!693102 mapRes!48415))))

(declare-fun condMapEmpty!48415 () Bool)

(declare-fun mapDefault!48415 () ValueCell!14799)

(assert (=> b!1220523 (= condMapEmpty!48415 (= (arr!38021 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14799)) mapDefault!48415)))))

(declare-fun b!1220524 () Bool)

(assert (=> b!1220524 (= e!693102 tp_is_empty!31017)))

(declare-fun b!1220525 () Bool)

(declare-fun res!810836 () Bool)

(assert (=> b!1220525 (=> (not res!810836) (not e!693094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1220525 (= res!810836 (validMask!0 mask!1564))))

(assert (= (and start!101562 res!810837) b!1220525))

(assert (= (and b!1220525 res!810836) b!1220508))

(assert (= (and b!1220508 res!810841) b!1220511))

(assert (= (and b!1220511 res!810847) b!1220522))

(assert (= (and b!1220522 res!810840) b!1220518))

(assert (= (and b!1220518 res!810838) b!1220510))

(assert (= (and b!1220510 res!810845) b!1220521))

(assert (= (and b!1220521 res!810850) b!1220507))

(assert (= (and b!1220507 res!810843) b!1220512))

(assert (= (and b!1220512 res!810839) b!1220514))

(assert (= (and b!1220514 (not res!810844)) b!1220509))

(assert (= (and b!1220509 (not res!810851)) b!1220515))

(assert (= (and b!1220515 (not res!810846)) b!1220520))

(assert (= (and b!1220520 res!810848) b!1220513))

(assert (= (and b!1220513 (not res!810849)) b!1220516))

(assert (= (and b!1220520 (not res!810842)) b!1220519))

(assert (= (and b!1220523 condMapEmpty!48415) mapIsEmpty!48415))

(assert (= (and b!1220523 (not condMapEmpty!48415)) mapNonEmpty!48415))

(get-info :version)

(assert (= (and mapNonEmpty!48415 ((_ is ValueCellFull!14799) mapValue!48415)) b!1220517))

(assert (= (and b!1220523 ((_ is ValueCellFull!14799) mapDefault!48415)) b!1220524))

(assert (= start!101562 b!1220523))

(declare-fun b_lambda!22189 () Bool)

(assert (=> (not b_lambda!22189) (not b!1220509)))

(declare-fun t!40290 () Bool)

(declare-fun tb!11121 () Bool)

(assert (=> (and start!101562 (= defaultEntry!1004 defaultEntry!1004) t!40290) tb!11121))

(declare-fun result!22841 () Bool)

(assert (=> tb!11121 (= result!22841 tp_is_empty!31017)))

(assert (=> b!1220509 t!40290))

(declare-fun b_and!43845 () Bool)

(assert (= b_and!43843 (and (=> t!40290 result!22841) b_and!43845)))

(declare-fun m!1125373 () Bool)

(assert (=> b!1220525 m!1125373))

(declare-fun m!1125375 () Bool)

(assert (=> b!1220511 m!1125375))

(declare-fun m!1125377 () Bool)

(assert (=> b!1220507 m!1125377))

(declare-fun m!1125379 () Bool)

(assert (=> b!1220507 m!1125379))

(declare-fun m!1125381 () Bool)

(assert (=> b!1220513 m!1125381))

(declare-fun m!1125383 () Bool)

(assert (=> b!1220515 m!1125383))

(declare-fun m!1125385 () Bool)

(assert (=> b!1220515 m!1125385))

(declare-fun m!1125387 () Bool)

(assert (=> b!1220515 m!1125387))

(declare-fun m!1125389 () Bool)

(assert (=> b!1220515 m!1125389))

(assert (=> b!1220515 m!1125381))

(declare-fun m!1125391 () Bool)

(assert (=> b!1220515 m!1125391))

(assert (=> b!1220515 m!1125381))

(declare-fun m!1125393 () Bool)

(assert (=> b!1220514 m!1125393))

(declare-fun m!1125395 () Bool)

(assert (=> b!1220514 m!1125395))

(declare-fun m!1125397 () Bool)

(assert (=> b!1220509 m!1125397))

(declare-fun m!1125399 () Bool)

(assert (=> b!1220509 m!1125399))

(declare-fun m!1125401 () Bool)

(assert (=> b!1220509 m!1125401))

(declare-fun m!1125403 () Bool)

(assert (=> b!1220509 m!1125403))

(declare-fun m!1125405 () Bool)

(assert (=> b!1220522 m!1125405))

(declare-fun m!1125407 () Bool)

(assert (=> mapNonEmpty!48415 m!1125407))

(declare-fun m!1125409 () Bool)

(assert (=> b!1220521 m!1125409))

(declare-fun m!1125411 () Bool)

(assert (=> b!1220519 m!1125411))

(declare-fun m!1125413 () Bool)

(assert (=> b!1220519 m!1125413))

(declare-fun m!1125415 () Bool)

(assert (=> b!1220519 m!1125415))

(declare-fun m!1125417 () Bool)

(assert (=> b!1220519 m!1125417))

(assert (=> b!1220520 m!1125381))

(declare-fun m!1125419 () Bool)

(assert (=> b!1220520 m!1125419))

(assert (=> b!1220520 m!1125419))

(declare-fun m!1125421 () Bool)

(assert (=> b!1220520 m!1125421))

(declare-fun m!1125423 () Bool)

(assert (=> b!1220520 m!1125423))

(declare-fun m!1125425 () Bool)

(assert (=> b!1220510 m!1125425))

(declare-fun m!1125427 () Bool)

(assert (=> b!1220512 m!1125427))

(declare-fun m!1125429 () Bool)

(assert (=> start!101562 m!1125429))

(declare-fun m!1125431 () Bool)

(assert (=> start!101562 m!1125431))

(declare-fun m!1125433 () Bool)

(assert (=> b!1220516 m!1125433))

(check-sat b_and!43845 (not b_next!26313) (not b_lambda!22189) (not b!1220520) (not mapNonEmpty!48415) (not start!101562) tp_is_empty!31017 (not b!1220525) (not b!1220512) (not b!1220514) (not b!1220516) (not b!1220515) (not b!1220511) (not b!1220509) (not b!1220519) (not b!1220507) (not b!1220522) (not b!1220510))
(check-sat b_and!43845 (not b_next!26313))
