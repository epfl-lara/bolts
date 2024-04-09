; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99480 () Bool)

(assert start!99480)

(declare-fun b_free!25023 () Bool)

(declare-fun b_next!25023 () Bool)

(assert (=> start!99480 (= b_free!25023 (not b_next!25023))))

(declare-fun tp!87784 () Bool)

(declare-fun b_and!40927 () Bool)

(assert (=> start!99480 (= tp!87784 b_and!40927)))

(declare-fun b!1174593 () Bool)

(declare-fun e!667695 () Bool)

(declare-fun e!667703 () Bool)

(assert (=> b!1174593 (= e!667695 e!667703)))

(declare-fun res!780135 () Bool)

(assert (=> b!1174593 (=> res!780135 e!667703)))

(declare-datatypes ((array!75882 0))(
  ( (array!75883 (arr!36587 (Array (_ BitVec 32) (_ BitVec 64))) (size!37124 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75882)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1174593 (= res!780135 (not (= (select (arr!36587 _keys!1208) from!1455) k0!934)))))

(declare-fun res!780132 () Bool)

(declare-fun e!667705 () Bool)

(assert (=> start!99480 (=> (not res!780132) (not e!667705))))

(assert (=> start!99480 (= res!780132 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37124 _keys!1208))))))

(assert (=> start!99480 e!667705))

(declare-fun tp_is_empty!29553 () Bool)

(assert (=> start!99480 tp_is_empty!29553))

(declare-fun array_inv!27834 (array!75882) Bool)

(assert (=> start!99480 (array_inv!27834 _keys!1208)))

(assert (=> start!99480 true))

(assert (=> start!99480 tp!87784))

(declare-datatypes ((V!44531 0))(
  ( (V!44532 (val!14833 Int)) )
))
(declare-datatypes ((ValueCell!14067 0))(
  ( (ValueCellFull!14067 (v!17472 V!44531)) (EmptyCell!14067) )
))
(declare-datatypes ((array!75884 0))(
  ( (array!75885 (arr!36588 (Array (_ BitVec 32) ValueCell!14067)) (size!37125 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75884)

(declare-fun e!667697 () Bool)

(declare-fun array_inv!27835 (array!75884) Bool)

(assert (=> start!99480 (and (array_inv!27835 _values!996) e!667697)))

(declare-fun b!1174594 () Bool)

(declare-fun res!780134 () Bool)

(assert (=> b!1174594 (=> (not res!780134) (not e!667705))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174594 (= res!780134 (validMask!0 mask!1564))))

(declare-fun b!1174595 () Bool)

(declare-fun e!667698 () Bool)

(assert (=> b!1174595 (= e!667698 tp_is_empty!29553)))

(declare-fun b!1174596 () Bool)

(declare-fun res!780123 () Bool)

(assert (=> b!1174596 (=> (not res!780123) (not e!667705))))

(declare-datatypes ((List!25836 0))(
  ( (Nil!25833) (Cons!25832 (h!27041 (_ BitVec 64)) (t!37858 List!25836)) )
))
(declare-fun arrayNoDuplicates!0 (array!75882 (_ BitVec 32) List!25836) Bool)

(assert (=> b!1174596 (= res!780123 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25833))))

(declare-fun b!1174597 () Bool)

(declare-fun e!667694 () Bool)

(declare-fun e!667704 () Bool)

(assert (=> b!1174597 (= e!667694 e!667704)))

(declare-fun res!780129 () Bool)

(assert (=> b!1174597 (=> res!780129 e!667704)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174597 (= res!780129 (not (validKeyInArray!0 (select (arr!36587 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19066 0))(
  ( (tuple2!19067 (_1!9543 (_ BitVec 64)) (_2!9543 V!44531)) )
))
(declare-datatypes ((List!25837 0))(
  ( (Nil!25834) (Cons!25833 (h!27042 tuple2!19066) (t!37859 List!25837)) )
))
(declare-datatypes ((ListLongMap!17047 0))(
  ( (ListLongMap!17048 (toList!8539 List!25837)) )
))
(declare-fun lt!529699 () ListLongMap!17047)

(declare-fun lt!529704 () ListLongMap!17047)

(assert (=> b!1174597 (= lt!529699 lt!529704)))

(declare-fun lt!529706 () ListLongMap!17047)

(declare-fun -!1549 (ListLongMap!17047 (_ BitVec 64)) ListLongMap!17047)

(assert (=> b!1174597 (= lt!529704 (-!1549 lt!529706 k0!934))))

(declare-fun zeroValue!944 () V!44531)

(declare-fun lt!529701 () array!75882)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!529707 () array!75884)

(declare-fun minValue!944 () V!44531)

(declare-fun getCurrentListMapNoExtraKeys!4970 (array!75882 array!75884 (_ BitVec 32) (_ BitVec 32) V!44531 V!44531 (_ BitVec 32) Int) ListLongMap!17047)

(assert (=> b!1174597 (= lt!529699 (getCurrentListMapNoExtraKeys!4970 lt!529701 lt!529707 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174597 (= lt!529706 (getCurrentListMapNoExtraKeys!4970 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38667 0))(
  ( (Unit!38668) )
))
(declare-fun lt!529697 () Unit!38667)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!773 (array!75882 array!75884 (_ BitVec 32) (_ BitVec 32) V!44531 V!44531 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38667)

(assert (=> b!1174597 (= lt!529697 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!773 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174598 () Bool)

(declare-fun e!667696 () Bool)

(declare-fun e!667701 () Bool)

(assert (=> b!1174598 (= e!667696 (not e!667701))))

(declare-fun res!780122 () Bool)

(assert (=> b!1174598 (=> res!780122 e!667701)))

(assert (=> b!1174598 (= res!780122 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174598 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!529700 () Unit!38667)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75882 (_ BitVec 64) (_ BitVec 32)) Unit!38667)

(assert (=> b!1174598 (= lt!529700 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!46157 () Bool)

(declare-fun mapRes!46157 () Bool)

(assert (=> mapIsEmpty!46157 mapRes!46157))

(declare-fun b!1174599 () Bool)

(assert (=> b!1174599 (= e!667705 e!667696)))

(declare-fun res!780136 () Bool)

(assert (=> b!1174599 (=> (not res!780136) (not e!667696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75882 (_ BitVec 32)) Bool)

(assert (=> b!1174599 (= res!780136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529701 mask!1564))))

(assert (=> b!1174599 (= lt!529701 (array!75883 (store (arr!36587 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37124 _keys!1208)))))

(declare-fun b!1174600 () Bool)

(declare-fun e!667700 () Bool)

(assert (=> b!1174600 (= e!667700 tp_is_empty!29553)))

(declare-fun b!1174601 () Bool)

(declare-fun res!780130 () Bool)

(assert (=> b!1174601 (=> (not res!780130) (not e!667705))))

(assert (=> b!1174601 (= res!780130 (and (= (size!37125 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37124 _keys!1208) (size!37125 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174602 () Bool)

(declare-fun res!780126 () Bool)

(assert (=> b!1174602 (=> (not res!780126) (not e!667705))))

(assert (=> b!1174602 (= res!780126 (= (select (arr!36587 _keys!1208) i!673) k0!934))))

(declare-fun b!1174603 () Bool)

(declare-fun res!780133 () Bool)

(assert (=> b!1174603 (=> (not res!780133) (not e!667705))))

(assert (=> b!1174603 (= res!780133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174604 () Bool)

(declare-fun e!667702 () Unit!38667)

(declare-fun Unit!38669 () Unit!38667)

(assert (=> b!1174604 (= e!667702 Unit!38669)))

(declare-fun lt!529702 () Unit!38667)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75882 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38667)

(assert (=> b!1174604 (= lt!529702 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174604 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529709 () Unit!38667)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75882 (_ BitVec 32) (_ BitVec 32)) Unit!38667)

(assert (=> b!1174604 (= lt!529709 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174604 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25833)))

(declare-fun lt!529698 () Unit!38667)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75882 (_ BitVec 64) (_ BitVec 32) List!25836) Unit!38667)

(assert (=> b!1174604 (= lt!529698 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25833))))

(assert (=> b!1174604 false))

(declare-fun b!1174605 () Bool)

(declare-fun res!780131 () Bool)

(assert (=> b!1174605 (=> (not res!780131) (not e!667696))))

(assert (=> b!1174605 (= res!780131 (arrayNoDuplicates!0 lt!529701 #b00000000000000000000000000000000 Nil!25833))))

(declare-fun b!1174606 () Bool)

(declare-fun res!780125 () Bool)

(assert (=> b!1174606 (=> (not res!780125) (not e!667705))))

(assert (=> b!1174606 (= res!780125 (validKeyInArray!0 k0!934))))

(declare-fun b!1174607 () Bool)

(declare-fun Unit!38670 () Unit!38667)

(assert (=> b!1174607 (= e!667702 Unit!38670)))

(declare-fun b!1174608 () Bool)

(assert (=> b!1174608 (= e!667697 (and e!667700 mapRes!46157))))

(declare-fun condMapEmpty!46157 () Bool)

(declare-fun mapDefault!46157 () ValueCell!14067)

(assert (=> b!1174608 (= condMapEmpty!46157 (= (arr!36588 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14067)) mapDefault!46157)))))

(declare-fun mapNonEmpty!46157 () Bool)

(declare-fun tp!87783 () Bool)

(assert (=> mapNonEmpty!46157 (= mapRes!46157 (and tp!87783 e!667698))))

(declare-fun mapRest!46157 () (Array (_ BitVec 32) ValueCell!14067))

(declare-fun mapKey!46157 () (_ BitVec 32))

(declare-fun mapValue!46157 () ValueCell!14067)

(assert (=> mapNonEmpty!46157 (= (arr!36588 _values!996) (store mapRest!46157 mapKey!46157 mapValue!46157))))

(declare-fun b!1174609 () Bool)

(assert (=> b!1174609 (= e!667704 true)))

(assert (=> b!1174609 (not (= (select (arr!36587 _keys!1208) from!1455) k0!934))))

(declare-fun lt!529710 () Unit!38667)

(assert (=> b!1174609 (= lt!529710 e!667702)))

(declare-fun c!116606 () Bool)

(assert (=> b!1174609 (= c!116606 (= (select (arr!36587 _keys!1208) from!1455) k0!934))))

(assert (=> b!1174609 e!667695))

(declare-fun res!780128 () Bool)

(assert (=> b!1174609 (=> (not res!780128) (not e!667695))))

(declare-fun lt!529705 () ListLongMap!17047)

(declare-fun lt!529703 () V!44531)

(declare-fun +!3769 (ListLongMap!17047 tuple2!19066) ListLongMap!17047)

(declare-fun get!18710 (ValueCell!14067 V!44531) V!44531)

(assert (=> b!1174609 (= res!780128 (= lt!529705 (+!3769 lt!529704 (tuple2!19067 (select (arr!36587 _keys!1208) from!1455) (get!18710 (select (arr!36588 _values!996) from!1455) lt!529703)))))))

(declare-fun b!1174610 () Bool)

(assert (=> b!1174610 (= e!667701 e!667694)))

(declare-fun res!780124 () Bool)

(assert (=> b!1174610 (=> res!780124 e!667694)))

(assert (=> b!1174610 (= res!780124 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1174610 (= lt!529705 (getCurrentListMapNoExtraKeys!4970 lt!529701 lt!529707 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174610 (= lt!529707 (array!75885 (store (arr!36588 _values!996) i!673 (ValueCellFull!14067 lt!529703)) (size!37125 _values!996)))))

(declare-fun dynLambda!2952 (Int (_ BitVec 64)) V!44531)

(assert (=> b!1174610 (= lt!529703 (dynLambda!2952 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529708 () ListLongMap!17047)

(assert (=> b!1174610 (= lt!529708 (getCurrentListMapNoExtraKeys!4970 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1174611 () Bool)

(declare-fun res!780127 () Bool)

(assert (=> b!1174611 (=> (not res!780127) (not e!667705))))

(assert (=> b!1174611 (= res!780127 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37124 _keys!1208))))))

(declare-fun b!1174612 () Bool)

(assert (=> b!1174612 (= e!667703 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99480 res!780132) b!1174594))

(assert (= (and b!1174594 res!780134) b!1174601))

(assert (= (and b!1174601 res!780130) b!1174603))

(assert (= (and b!1174603 res!780133) b!1174596))

(assert (= (and b!1174596 res!780123) b!1174611))

(assert (= (and b!1174611 res!780127) b!1174606))

(assert (= (and b!1174606 res!780125) b!1174602))

(assert (= (and b!1174602 res!780126) b!1174599))

(assert (= (and b!1174599 res!780136) b!1174605))

(assert (= (and b!1174605 res!780131) b!1174598))

(assert (= (and b!1174598 (not res!780122)) b!1174610))

(assert (= (and b!1174610 (not res!780124)) b!1174597))

(assert (= (and b!1174597 (not res!780129)) b!1174609))

(assert (= (and b!1174609 res!780128) b!1174593))

(assert (= (and b!1174593 (not res!780135)) b!1174612))

(assert (= (and b!1174609 c!116606) b!1174604))

(assert (= (and b!1174609 (not c!116606)) b!1174607))

(assert (= (and b!1174608 condMapEmpty!46157) mapIsEmpty!46157))

(assert (= (and b!1174608 (not condMapEmpty!46157)) mapNonEmpty!46157))

(get-info :version)

(assert (= (and mapNonEmpty!46157 ((_ is ValueCellFull!14067) mapValue!46157)) b!1174595))

(assert (= (and b!1174608 ((_ is ValueCellFull!14067) mapDefault!46157)) b!1174600))

(assert (= start!99480 b!1174608))

(declare-fun b_lambda!20185 () Bool)

(assert (=> (not b_lambda!20185) (not b!1174610)))

(declare-fun t!37857 () Bool)

(declare-fun tb!9843 () Bool)

(assert (=> (and start!99480 (= defaultEntry!1004 defaultEntry!1004) t!37857) tb!9843))

(declare-fun result!20245 () Bool)

(assert (=> tb!9843 (= result!20245 tp_is_empty!29553)))

(assert (=> b!1174610 t!37857))

(declare-fun b_and!40929 () Bool)

(assert (= b_and!40927 (and (=> t!37857 result!20245) b_and!40929)))

(declare-fun m!1082529 () Bool)

(assert (=> b!1174598 m!1082529))

(declare-fun m!1082531 () Bool)

(assert (=> b!1174598 m!1082531))

(declare-fun m!1082533 () Bool)

(assert (=> b!1174597 m!1082533))

(declare-fun m!1082535 () Bool)

(assert (=> b!1174597 m!1082535))

(declare-fun m!1082537 () Bool)

(assert (=> b!1174597 m!1082537))

(declare-fun m!1082539 () Bool)

(assert (=> b!1174597 m!1082539))

(assert (=> b!1174597 m!1082537))

(declare-fun m!1082541 () Bool)

(assert (=> b!1174597 m!1082541))

(declare-fun m!1082543 () Bool)

(assert (=> b!1174597 m!1082543))

(declare-fun m!1082545 () Bool)

(assert (=> b!1174604 m!1082545))

(declare-fun m!1082547 () Bool)

(assert (=> b!1174604 m!1082547))

(declare-fun m!1082549 () Bool)

(assert (=> b!1174604 m!1082549))

(declare-fun m!1082551 () Bool)

(assert (=> b!1174604 m!1082551))

(declare-fun m!1082553 () Bool)

(assert (=> b!1174604 m!1082553))

(declare-fun m!1082555 () Bool)

(assert (=> b!1174612 m!1082555))

(declare-fun m!1082557 () Bool)

(assert (=> b!1174605 m!1082557))

(assert (=> b!1174609 m!1082537))

(declare-fun m!1082559 () Bool)

(assert (=> b!1174609 m!1082559))

(assert (=> b!1174609 m!1082559))

(declare-fun m!1082561 () Bool)

(assert (=> b!1174609 m!1082561))

(declare-fun m!1082563 () Bool)

(assert (=> b!1174609 m!1082563))

(declare-fun m!1082565 () Bool)

(assert (=> b!1174606 m!1082565))

(declare-fun m!1082567 () Bool)

(assert (=> start!99480 m!1082567))

(declare-fun m!1082569 () Bool)

(assert (=> start!99480 m!1082569))

(declare-fun m!1082571 () Bool)

(assert (=> b!1174603 m!1082571))

(declare-fun m!1082573 () Bool)

(assert (=> b!1174594 m!1082573))

(declare-fun m!1082575 () Bool)

(assert (=> b!1174610 m!1082575))

(declare-fun m!1082577 () Bool)

(assert (=> b!1174610 m!1082577))

(declare-fun m!1082579 () Bool)

(assert (=> b!1174610 m!1082579))

(declare-fun m!1082581 () Bool)

(assert (=> b!1174610 m!1082581))

(declare-fun m!1082583 () Bool)

(assert (=> b!1174602 m!1082583))

(declare-fun m!1082585 () Bool)

(assert (=> b!1174599 m!1082585))

(declare-fun m!1082587 () Bool)

(assert (=> b!1174599 m!1082587))

(declare-fun m!1082589 () Bool)

(assert (=> b!1174596 m!1082589))

(assert (=> b!1174593 m!1082537))

(declare-fun m!1082591 () Bool)

(assert (=> mapNonEmpty!46157 m!1082591))

(check-sat (not b!1174609) (not b!1174610) b_and!40929 (not b!1174603) (not b!1174604) (not b!1174599) (not b!1174605) (not b!1174612) (not b!1174598) (not b_lambda!20185) tp_is_empty!29553 (not b_next!25023) (not mapNonEmpty!46157) (not start!99480) (not b!1174594) (not b!1174606) (not b!1174597) (not b!1174596))
(check-sat b_and!40929 (not b_next!25023))
