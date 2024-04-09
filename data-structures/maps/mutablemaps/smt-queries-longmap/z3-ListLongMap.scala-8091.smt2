; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99450 () Bool)

(assert start!99450)

(declare-fun b_free!24993 () Bool)

(declare-fun b_next!24993 () Bool)

(assert (=> start!99450 (= b_free!24993 (not b_next!24993))))

(declare-fun tp!87694 () Bool)

(declare-fun b_and!40867 () Bool)

(assert (=> start!99450 (= tp!87694 b_and!40867)))

(declare-fun b!1173663 () Bool)

(declare-fun res!779456 () Bool)

(declare-fun e!667164 () Bool)

(assert (=> b!1173663 (=> (not res!779456) (not e!667164))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75822 0))(
  ( (array!75823 (arr!36557 (Array (_ BitVec 32) (_ BitVec 64))) (size!37094 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75822)

(assert (=> b!1173663 (= res!779456 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37094 _keys!1208))))))

(declare-fun b!1173664 () Bool)

(declare-datatypes ((Unit!38619 0))(
  ( (Unit!38620) )
))
(declare-fun e!667162 () Unit!38619)

(declare-fun Unit!38621 () Unit!38619)

(assert (=> b!1173664 (= e!667162 Unit!38621)))

(declare-fun lt!529071 () Unit!38619)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75822 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38619)

(assert (=> b!1173664 (= lt!529071 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173664 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529077 () Unit!38619)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75822 (_ BitVec 32) (_ BitVec 32)) Unit!38619)

(assert (=> b!1173664 (= lt!529077 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25811 0))(
  ( (Nil!25808) (Cons!25807 (h!27016 (_ BitVec 64)) (t!37803 List!25811)) )
))
(declare-fun arrayNoDuplicates!0 (array!75822 (_ BitVec 32) List!25811) Bool)

(assert (=> b!1173664 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25808)))

(declare-fun lt!529072 () Unit!38619)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75822 (_ BitVec 64) (_ BitVec 32) List!25811) Unit!38619)

(assert (=> b!1173664 (= lt!529072 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25808))))

(assert (=> b!1173664 false))

(declare-fun b!1173665 () Bool)

(declare-fun e!667161 () Bool)

(declare-fun e!667163 () Bool)

(declare-fun mapRes!46112 () Bool)

(assert (=> b!1173665 (= e!667161 (and e!667163 mapRes!46112))))

(declare-fun condMapEmpty!46112 () Bool)

(declare-datatypes ((V!44491 0))(
  ( (V!44492 (val!14818 Int)) )
))
(declare-datatypes ((ValueCell!14052 0))(
  ( (ValueCellFull!14052 (v!17457 V!44491)) (EmptyCell!14052) )
))
(declare-datatypes ((array!75824 0))(
  ( (array!75825 (arr!36558 (Array (_ BitVec 32) ValueCell!14052)) (size!37095 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75824)

(declare-fun mapDefault!46112 () ValueCell!14052)

(assert (=> b!1173665 (= condMapEmpty!46112 (= (arr!36558 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14052)) mapDefault!46112)))))

(declare-fun b!1173666 () Bool)

(declare-fun res!779453 () Bool)

(assert (=> b!1173666 (=> (not res!779453) (not e!667164))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1173666 (= res!779453 (validMask!0 mask!1564))))

(declare-fun b!1173667 () Bool)

(declare-fun Unit!38622 () Unit!38619)

(assert (=> b!1173667 (= e!667162 Unit!38622)))

(declare-fun b!1173668 () Bool)

(declare-fun e!667157 () Bool)

(declare-fun e!667165 () Bool)

(assert (=> b!1173668 (= e!667157 e!667165)))

(declare-fun res!779457 () Bool)

(assert (=> b!1173668 (=> res!779457 e!667165)))

(assert (=> b!1173668 (= res!779457 (not (= (select (arr!36557 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1173669 () Bool)

(declare-fun res!779461 () Bool)

(assert (=> b!1173669 (=> (not res!779461) (not e!667164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173669 (= res!779461 (validKeyInArray!0 k0!934))))

(declare-fun b!1173670 () Bool)

(declare-fun res!779452 () Bool)

(assert (=> b!1173670 (=> (not res!779452) (not e!667164))))

(assert (=> b!1173670 (= res!779452 (= (select (arr!36557 _keys!1208) i!673) k0!934))))

(declare-fun b!1173671 () Bool)

(declare-fun e!667155 () Bool)

(declare-fun e!667158 () Bool)

(assert (=> b!1173671 (= e!667155 e!667158)))

(declare-fun res!779448 () Bool)

(assert (=> b!1173671 (=> res!779448 e!667158)))

(assert (=> b!1173671 (= res!779448 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44491)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!529074 () array!75822)

(declare-fun minValue!944 () V!44491)

(declare-fun lt!529073 () array!75824)

(declare-datatypes ((tuple2!19038 0))(
  ( (tuple2!19039 (_1!9529 (_ BitVec 64)) (_2!9529 V!44491)) )
))
(declare-datatypes ((List!25812 0))(
  ( (Nil!25809) (Cons!25808 (h!27017 tuple2!19038) (t!37804 List!25812)) )
))
(declare-datatypes ((ListLongMap!17019 0))(
  ( (ListLongMap!17020 (toList!8525 List!25812)) )
))
(declare-fun lt!529068 () ListLongMap!17019)

(declare-fun getCurrentListMapNoExtraKeys!4957 (array!75822 array!75824 (_ BitVec 32) (_ BitVec 32) V!44491 V!44491 (_ BitVec 32) Int) ListLongMap!17019)

(assert (=> b!1173671 (= lt!529068 (getCurrentListMapNoExtraKeys!4957 lt!529074 lt!529073 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!529080 () V!44491)

(assert (=> b!1173671 (= lt!529073 (array!75825 (store (arr!36558 _values!996) i!673 (ValueCellFull!14052 lt!529080)) (size!37095 _values!996)))))

(declare-fun dynLambda!2941 (Int (_ BitVec 64)) V!44491)

(assert (=> b!1173671 (= lt!529080 (dynLambda!2941 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529075 () ListLongMap!17019)

(assert (=> b!1173671 (= lt!529075 (getCurrentListMapNoExtraKeys!4957 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!779449 () Bool)

(assert (=> start!99450 (=> (not res!779449) (not e!667164))))

(assert (=> start!99450 (= res!779449 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37094 _keys!1208))))))

(assert (=> start!99450 e!667164))

(declare-fun tp_is_empty!29523 () Bool)

(assert (=> start!99450 tp_is_empty!29523))

(declare-fun array_inv!27818 (array!75822) Bool)

(assert (=> start!99450 (array_inv!27818 _keys!1208)))

(assert (=> start!99450 true))

(assert (=> start!99450 tp!87694))

(declare-fun array_inv!27819 (array!75824) Bool)

(assert (=> start!99450 (and (array_inv!27819 _values!996) e!667161)))

(declare-fun b!1173672 () Bool)

(assert (=> b!1173672 (= e!667163 tp_is_empty!29523)))

(declare-fun b!1173673 () Bool)

(declare-fun e!667156 () Bool)

(assert (=> b!1173673 (= e!667156 true)))

(assert (=> b!1173673 (not (= (select (arr!36557 _keys!1208) from!1455) k0!934))))

(declare-fun lt!529069 () Unit!38619)

(assert (=> b!1173673 (= lt!529069 e!667162)))

(declare-fun c!116561 () Bool)

(assert (=> b!1173673 (= c!116561 (= (select (arr!36557 _keys!1208) from!1455) k0!934))))

(assert (=> b!1173673 e!667157))

(declare-fun res!779460 () Bool)

(assert (=> b!1173673 (=> (not res!779460) (not e!667157))))

(declare-fun lt!529067 () ListLongMap!17019)

(declare-fun +!3759 (ListLongMap!17019 tuple2!19038) ListLongMap!17019)

(declare-fun get!18690 (ValueCell!14052 V!44491) V!44491)

(assert (=> b!1173673 (= res!779460 (= lt!529068 (+!3759 lt!529067 (tuple2!19039 (select (arr!36557 _keys!1208) from!1455) (get!18690 (select (arr!36558 _values!996) from!1455) lt!529080)))))))

(declare-fun b!1173674 () Bool)

(declare-fun res!779455 () Bool)

(assert (=> b!1173674 (=> (not res!779455) (not e!667164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75822 (_ BitVec 32)) Bool)

(assert (=> b!1173674 (= res!779455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46112 () Bool)

(assert (=> mapIsEmpty!46112 mapRes!46112))

(declare-fun b!1173675 () Bool)

(declare-fun e!667160 () Bool)

(assert (=> b!1173675 (= e!667160 (not e!667155))))

(declare-fun res!779459 () Bool)

(assert (=> b!1173675 (=> res!779459 e!667155)))

(assert (=> b!1173675 (= res!779459 (bvsgt from!1455 i!673))))

(assert (=> b!1173675 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!529078 () Unit!38619)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75822 (_ BitVec 64) (_ BitVec 32)) Unit!38619)

(assert (=> b!1173675 (= lt!529078 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173676 () Bool)

(declare-fun res!779447 () Bool)

(assert (=> b!1173676 (=> (not res!779447) (not e!667164))))

(assert (=> b!1173676 (= res!779447 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25808))))

(declare-fun b!1173677 () Bool)

(declare-fun res!779450 () Bool)

(assert (=> b!1173677 (=> (not res!779450) (not e!667164))))

(assert (=> b!1173677 (= res!779450 (and (= (size!37095 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37094 _keys!1208) (size!37095 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!46112 () Bool)

(declare-fun tp!87693 () Bool)

(declare-fun e!667154 () Bool)

(assert (=> mapNonEmpty!46112 (= mapRes!46112 (and tp!87693 e!667154))))

(declare-fun mapKey!46112 () (_ BitVec 32))

(declare-fun mapValue!46112 () ValueCell!14052)

(declare-fun mapRest!46112 () (Array (_ BitVec 32) ValueCell!14052))

(assert (=> mapNonEmpty!46112 (= (arr!36558 _values!996) (store mapRest!46112 mapKey!46112 mapValue!46112))))

(declare-fun b!1173678 () Bool)

(declare-fun res!779451 () Bool)

(assert (=> b!1173678 (=> (not res!779451) (not e!667160))))

(assert (=> b!1173678 (= res!779451 (arrayNoDuplicates!0 lt!529074 #b00000000000000000000000000000000 Nil!25808))))

(declare-fun b!1173679 () Bool)

(assert (=> b!1173679 (= e!667165 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1173680 () Bool)

(assert (=> b!1173680 (= e!667158 e!667156)))

(declare-fun res!779454 () Bool)

(assert (=> b!1173680 (=> res!779454 e!667156)))

(assert (=> b!1173680 (= res!779454 (not (validKeyInArray!0 (select (arr!36557 _keys!1208) from!1455))))))

(declare-fun lt!529070 () ListLongMap!17019)

(assert (=> b!1173680 (= lt!529070 lt!529067)))

(declare-fun lt!529079 () ListLongMap!17019)

(declare-fun -!1537 (ListLongMap!17019 (_ BitVec 64)) ListLongMap!17019)

(assert (=> b!1173680 (= lt!529067 (-!1537 lt!529079 k0!934))))

(assert (=> b!1173680 (= lt!529070 (getCurrentListMapNoExtraKeys!4957 lt!529074 lt!529073 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1173680 (= lt!529079 (getCurrentListMapNoExtraKeys!4957 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529076 () Unit!38619)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!761 (array!75822 array!75824 (_ BitVec 32) (_ BitVec 32) V!44491 V!44491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38619)

(assert (=> b!1173680 (= lt!529076 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!761 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1173681 () Bool)

(assert (=> b!1173681 (= e!667164 e!667160)))

(declare-fun res!779458 () Bool)

(assert (=> b!1173681 (=> (not res!779458) (not e!667160))))

(assert (=> b!1173681 (= res!779458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529074 mask!1564))))

(assert (=> b!1173681 (= lt!529074 (array!75823 (store (arr!36557 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37094 _keys!1208)))))

(declare-fun b!1173682 () Bool)

(assert (=> b!1173682 (= e!667154 tp_is_empty!29523)))

(assert (= (and start!99450 res!779449) b!1173666))

(assert (= (and b!1173666 res!779453) b!1173677))

(assert (= (and b!1173677 res!779450) b!1173674))

(assert (= (and b!1173674 res!779455) b!1173676))

(assert (= (and b!1173676 res!779447) b!1173663))

(assert (= (and b!1173663 res!779456) b!1173669))

(assert (= (and b!1173669 res!779461) b!1173670))

(assert (= (and b!1173670 res!779452) b!1173681))

(assert (= (and b!1173681 res!779458) b!1173678))

(assert (= (and b!1173678 res!779451) b!1173675))

(assert (= (and b!1173675 (not res!779459)) b!1173671))

(assert (= (and b!1173671 (not res!779448)) b!1173680))

(assert (= (and b!1173680 (not res!779454)) b!1173673))

(assert (= (and b!1173673 res!779460) b!1173668))

(assert (= (and b!1173668 (not res!779457)) b!1173679))

(assert (= (and b!1173673 c!116561) b!1173664))

(assert (= (and b!1173673 (not c!116561)) b!1173667))

(assert (= (and b!1173665 condMapEmpty!46112) mapIsEmpty!46112))

(assert (= (and b!1173665 (not condMapEmpty!46112)) mapNonEmpty!46112))

(get-info :version)

(assert (= (and mapNonEmpty!46112 ((_ is ValueCellFull!14052) mapValue!46112)) b!1173682))

(assert (= (and b!1173665 ((_ is ValueCellFull!14052) mapDefault!46112)) b!1173672))

(assert (= start!99450 b!1173665))

(declare-fun b_lambda!20155 () Bool)

(assert (=> (not b_lambda!20155) (not b!1173671)))

(declare-fun t!37802 () Bool)

(declare-fun tb!9813 () Bool)

(assert (=> (and start!99450 (= defaultEntry!1004 defaultEntry!1004) t!37802) tb!9813))

(declare-fun result!20185 () Bool)

(assert (=> tb!9813 (= result!20185 tp_is_empty!29523)))

(assert (=> b!1173671 t!37802))

(declare-fun b_and!40869 () Bool)

(assert (= b_and!40867 (and (=> t!37802 result!20185) b_and!40869)))

(declare-fun m!1081569 () Bool)

(assert (=> b!1173669 m!1081569))

(declare-fun m!1081571 () Bool)

(assert (=> b!1173679 m!1081571))

(declare-fun m!1081573 () Bool)

(assert (=> b!1173664 m!1081573))

(declare-fun m!1081575 () Bool)

(assert (=> b!1173664 m!1081575))

(declare-fun m!1081577 () Bool)

(assert (=> b!1173664 m!1081577))

(declare-fun m!1081579 () Bool)

(assert (=> b!1173664 m!1081579))

(declare-fun m!1081581 () Bool)

(assert (=> b!1173664 m!1081581))

(declare-fun m!1081583 () Bool)

(assert (=> b!1173674 m!1081583))

(declare-fun m!1081585 () Bool)

(assert (=> b!1173666 m!1081585))

(declare-fun m!1081587 () Bool)

(assert (=> b!1173680 m!1081587))

(declare-fun m!1081589 () Bool)

(assert (=> b!1173680 m!1081589))

(declare-fun m!1081591 () Bool)

(assert (=> b!1173680 m!1081591))

(declare-fun m!1081593 () Bool)

(assert (=> b!1173680 m!1081593))

(declare-fun m!1081595 () Bool)

(assert (=> b!1173680 m!1081595))

(declare-fun m!1081597 () Bool)

(assert (=> b!1173680 m!1081597))

(assert (=> b!1173680 m!1081595))

(declare-fun m!1081599 () Bool)

(assert (=> mapNonEmpty!46112 m!1081599))

(assert (=> b!1173668 m!1081595))

(declare-fun m!1081601 () Bool)

(assert (=> start!99450 m!1081601))

(declare-fun m!1081603 () Bool)

(assert (=> start!99450 m!1081603))

(declare-fun m!1081605 () Bool)

(assert (=> b!1173675 m!1081605))

(declare-fun m!1081607 () Bool)

(assert (=> b!1173675 m!1081607))

(declare-fun m!1081609 () Bool)

(assert (=> b!1173678 m!1081609))

(declare-fun m!1081611 () Bool)

(assert (=> b!1173671 m!1081611))

(declare-fun m!1081613 () Bool)

(assert (=> b!1173671 m!1081613))

(declare-fun m!1081615 () Bool)

(assert (=> b!1173671 m!1081615))

(declare-fun m!1081617 () Bool)

(assert (=> b!1173671 m!1081617))

(assert (=> b!1173673 m!1081595))

(declare-fun m!1081619 () Bool)

(assert (=> b!1173673 m!1081619))

(assert (=> b!1173673 m!1081619))

(declare-fun m!1081621 () Bool)

(assert (=> b!1173673 m!1081621))

(declare-fun m!1081623 () Bool)

(assert (=> b!1173673 m!1081623))

(declare-fun m!1081625 () Bool)

(assert (=> b!1173676 m!1081625))

(declare-fun m!1081627 () Bool)

(assert (=> b!1173681 m!1081627))

(declare-fun m!1081629 () Bool)

(assert (=> b!1173681 m!1081629))

(declare-fun m!1081631 () Bool)

(assert (=> b!1173670 m!1081631))

(check-sat (not b!1173676) (not b_next!24993) tp_is_empty!29523 (not b!1173675) (not b_lambda!20155) (not b!1173673) (not b!1173678) (not b!1173680) (not b!1173679) (not b!1173674) b_and!40869 (not b!1173664) (not start!99450) (not b!1173681) (not b!1173669) (not mapNonEmpty!46112) (not b!1173666) (not b!1173671))
(check-sat b_and!40869 (not b_next!24993))
