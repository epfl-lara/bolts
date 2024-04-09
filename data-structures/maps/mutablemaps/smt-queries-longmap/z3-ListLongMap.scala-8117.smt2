; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99606 () Bool)

(assert start!99606)

(declare-fun b_free!25149 () Bool)

(declare-fun b_next!25149 () Bool)

(assert (=> start!99606 (= b_free!25149 (not b_next!25149))))

(declare-fun tp!88162 () Bool)

(declare-fun b_and!41179 () Bool)

(assert (=> start!99606 (= tp!88162 b_and!41179)))

(declare-fun b!1178621 () Bool)

(declare-fun e!670093 () Bool)

(declare-fun e!670090 () Bool)

(assert (=> b!1178621 (= e!670093 e!670090)))

(declare-fun res!783091 () Bool)

(assert (=> b!1178621 (=> res!783091 e!670090)))

(declare-datatypes ((array!76130 0))(
  ( (array!76131 (arr!36711 (Array (_ BitVec 32) (_ BitVec 64))) (size!37248 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76130)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178621 (= res!783091 (not (validKeyInArray!0 (select (arr!36711 _keys!1208) from!1455))))))

(declare-datatypes ((V!44699 0))(
  ( (V!44700 (val!14896 Int)) )
))
(declare-datatypes ((tuple2!19186 0))(
  ( (tuple2!19187 (_1!9603 (_ BitVec 64)) (_2!9603 V!44699)) )
))
(declare-datatypes ((List!25950 0))(
  ( (Nil!25947) (Cons!25946 (h!27155 tuple2!19186) (t!38098 List!25950)) )
))
(declare-datatypes ((ListLongMap!17167 0))(
  ( (ListLongMap!17168 (toList!8599 List!25950)) )
))
(declare-fun lt!532466 () ListLongMap!17167)

(declare-fun lt!532479 () ListLongMap!17167)

(assert (=> b!1178621 (= lt!532466 lt!532479)))

(declare-fun lt!532471 () ListLongMap!17167)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1596 (ListLongMap!17167 (_ BitVec 64)) ListLongMap!17167)

(assert (=> b!1178621 (= lt!532479 (-!1596 lt!532471 k0!934))))

(declare-fun zeroValue!944 () V!44699)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14130 0))(
  ( (ValueCellFull!14130 (v!17535 V!44699)) (EmptyCell!14130) )
))
(declare-datatypes ((array!76132 0))(
  ( (array!76133 (arr!36712 (Array (_ BitVec 32) ValueCell!14130)) (size!37249 (_ BitVec 32))) )
))
(declare-fun lt!532477 () array!76132)

(declare-fun minValue!944 () V!44699)

(declare-fun lt!532475 () array!76130)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5028 (array!76130 array!76132 (_ BitVec 32) (_ BitVec 32) V!44699 V!44699 (_ BitVec 32) Int) ListLongMap!17167)

(assert (=> b!1178621 (= lt!532466 (getCurrentListMapNoExtraKeys!5028 lt!532475 lt!532477 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76132)

(assert (=> b!1178621 (= lt!532471 (getCurrentListMapNoExtraKeys!5028 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38872 0))(
  ( (Unit!38873) )
))
(declare-fun lt!532468 () Unit!38872)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!820 (array!76130 array!76132 (_ BitVec 32) (_ BitVec 32) V!44699 V!44699 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38872)

(assert (=> b!1178621 (= lt!532468 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!820 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178622 () Bool)

(declare-fun res!783086 () Bool)

(declare-fun e!670096 () Bool)

(assert (=> b!1178622 (=> (not res!783086) (not e!670096))))

(assert (=> b!1178622 (= res!783086 (= (select (arr!36711 _keys!1208) i!673) k0!934))))

(declare-fun b!1178623 () Bool)

(declare-fun res!783090 () Bool)

(assert (=> b!1178623 (=> (not res!783090) (not e!670096))))

(assert (=> b!1178623 (= res!783090 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!46346 () Bool)

(declare-fun mapRes!46346 () Bool)

(declare-fun tp!88161 () Bool)

(declare-fun e!670085 () Bool)

(assert (=> mapNonEmpty!46346 (= mapRes!46346 (and tp!88161 e!670085))))

(declare-fun mapValue!46346 () ValueCell!14130)

(declare-fun mapRest!46346 () (Array (_ BitVec 32) ValueCell!14130))

(declare-fun mapKey!46346 () (_ BitVec 32))

(assert (=> mapNonEmpty!46346 (= (arr!36712 _values!996) (store mapRest!46346 mapKey!46346 mapValue!46346))))

(declare-fun b!1178624 () Bool)

(declare-fun e!670084 () Bool)

(declare-fun e!670095 () Bool)

(assert (=> b!1178624 (= e!670084 (not e!670095))))

(declare-fun res!783088 () Bool)

(assert (=> b!1178624 (=> res!783088 e!670095)))

(assert (=> b!1178624 (= res!783088 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178624 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!532476 () Unit!38872)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76130 (_ BitVec 64) (_ BitVec 32)) Unit!38872)

(assert (=> b!1178624 (= lt!532476 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178625 () Bool)

(declare-fun e!670089 () Bool)

(declare-fun e!670086 () Bool)

(assert (=> b!1178625 (= e!670089 e!670086)))

(declare-fun res!783089 () Bool)

(assert (=> b!1178625 (=> res!783089 e!670086)))

(assert (=> b!1178625 (= res!783089 (not (= (select (arr!36711 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1178626 () Bool)

(declare-fun res!783081 () Bool)

(assert (=> b!1178626 (=> (not res!783081) (not e!670096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76130 (_ BitVec 32)) Bool)

(assert (=> b!1178626 (= res!783081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1178627 () Bool)

(declare-fun e!670088 () Bool)

(declare-fun e!670087 () Bool)

(assert (=> b!1178627 (= e!670088 (and e!670087 mapRes!46346))))

(declare-fun condMapEmpty!46346 () Bool)

(declare-fun mapDefault!46346 () ValueCell!14130)

(assert (=> b!1178627 (= condMapEmpty!46346 (= (arr!36712 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14130)) mapDefault!46346)))))

(declare-fun res!783093 () Bool)

(assert (=> start!99606 (=> (not res!783093) (not e!670096))))

(assert (=> start!99606 (= res!783093 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37248 _keys!1208))))))

(assert (=> start!99606 e!670096))

(declare-fun tp_is_empty!29679 () Bool)

(assert (=> start!99606 tp_is_empty!29679))

(declare-fun array_inv!27920 (array!76130) Bool)

(assert (=> start!99606 (array_inv!27920 _keys!1208)))

(assert (=> start!99606 true))

(assert (=> start!99606 tp!88162))

(declare-fun array_inv!27921 (array!76132) Bool)

(assert (=> start!99606 (and (array_inv!27921 _values!996) e!670088)))

(declare-fun b!1178628 () Bool)

(assert (=> b!1178628 (= e!670085 tp_is_empty!29679)))

(declare-fun mapIsEmpty!46346 () Bool)

(assert (=> mapIsEmpty!46346 mapRes!46346))

(declare-fun b!1178629 () Bool)

(assert (=> b!1178629 (= e!670087 tp_is_empty!29679)))

(declare-fun b!1178630 () Bool)

(assert (=> b!1178630 (= e!670086 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178631 () Bool)

(declare-fun res!783079 () Bool)

(assert (=> b!1178631 (=> (not res!783079) (not e!670096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178631 (= res!783079 (validMask!0 mask!1564))))

(declare-fun lt!532474 () ListLongMap!17167)

(declare-fun e!670094 () Bool)

(declare-fun b!1178632 () Bool)

(declare-fun lt!532473 () tuple2!19186)

(declare-fun +!3820 (ListLongMap!17167 tuple2!19186) ListLongMap!17167)

(assert (=> b!1178632 (= e!670094 (= lt!532474 (+!3820 lt!532471 lt!532473)))))

(declare-fun b!1178633 () Bool)

(declare-fun e!670092 () Unit!38872)

(declare-fun Unit!38874 () Unit!38872)

(assert (=> b!1178633 (= e!670092 Unit!38874)))

(declare-fun lt!532465 () Unit!38872)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76130 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38872)

(assert (=> b!1178633 (= lt!532465 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1178633 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532469 () Unit!38872)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76130 (_ BitVec 32) (_ BitVec 32)) Unit!38872)

(assert (=> b!1178633 (= lt!532469 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25951 0))(
  ( (Nil!25948) (Cons!25947 (h!27156 (_ BitVec 64)) (t!38099 List!25951)) )
))
(declare-fun arrayNoDuplicates!0 (array!76130 (_ BitVec 32) List!25951) Bool)

(assert (=> b!1178633 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25948)))

(declare-fun lt!532470 () Unit!38872)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76130 (_ BitVec 64) (_ BitVec 32) List!25951) Unit!38872)

(assert (=> b!1178633 (= lt!532470 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25948))))

(assert (=> b!1178633 false))

(declare-fun b!1178634 () Bool)

(declare-fun res!783087 () Bool)

(assert (=> b!1178634 (=> (not res!783087) (not e!670096))))

(assert (=> b!1178634 (= res!783087 (and (= (size!37249 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37248 _keys!1208) (size!37249 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178635 () Bool)

(declare-fun res!783083 () Bool)

(assert (=> b!1178635 (=> (not res!783083) (not e!670084))))

(assert (=> b!1178635 (= res!783083 (arrayNoDuplicates!0 lt!532475 #b00000000000000000000000000000000 Nil!25948))))

(declare-fun b!1178636 () Bool)

(declare-fun res!783082 () Bool)

(assert (=> b!1178636 (=> (not res!783082) (not e!670096))))

(assert (=> b!1178636 (= res!783082 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37248 _keys!1208))))))

(declare-fun b!1178637 () Bool)

(assert (=> b!1178637 (= e!670096 e!670084)))

(declare-fun res!783084 () Bool)

(assert (=> b!1178637 (=> (not res!783084) (not e!670084))))

(assert (=> b!1178637 (= res!783084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532475 mask!1564))))

(assert (=> b!1178637 (= lt!532475 (array!76131 (store (arr!36711 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37248 _keys!1208)))))

(declare-fun b!1178638 () Bool)

(assert (=> b!1178638 (= e!670090 true)))

(assert (=> b!1178638 e!670094))

(declare-fun res!783092 () Bool)

(assert (=> b!1178638 (=> (not res!783092) (not e!670094))))

(assert (=> b!1178638 (= res!783092 (not (= (select (arr!36711 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!532472 () Unit!38872)

(assert (=> b!1178638 (= lt!532472 e!670092)))

(declare-fun c!116795 () Bool)

(assert (=> b!1178638 (= c!116795 (= (select (arr!36711 _keys!1208) from!1455) k0!934))))

(assert (=> b!1178638 e!670089))

(declare-fun res!783080 () Bool)

(assert (=> b!1178638 (=> (not res!783080) (not e!670089))))

(declare-fun lt!532478 () ListLongMap!17167)

(assert (=> b!1178638 (= res!783080 (= lt!532478 (+!3820 lt!532479 lt!532473)))))

(declare-fun lt!532467 () V!44699)

(declare-fun get!18798 (ValueCell!14130 V!44699) V!44699)

(assert (=> b!1178638 (= lt!532473 (tuple2!19187 (select (arr!36711 _keys!1208) from!1455) (get!18798 (select (arr!36712 _values!996) from!1455) lt!532467)))))

(declare-fun b!1178639 () Bool)

(declare-fun res!783094 () Bool)

(assert (=> b!1178639 (=> (not res!783094) (not e!670096))))

(assert (=> b!1178639 (= res!783094 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25948))))

(declare-fun b!1178640 () Bool)

(assert (=> b!1178640 (= e!670095 e!670093)))

(declare-fun res!783085 () Bool)

(assert (=> b!1178640 (=> res!783085 e!670093)))

(assert (=> b!1178640 (= res!783085 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1178640 (= lt!532478 (getCurrentListMapNoExtraKeys!5028 lt!532475 lt!532477 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1178640 (= lt!532477 (array!76133 (store (arr!36712 _values!996) i!673 (ValueCellFull!14130 lt!532467)) (size!37249 _values!996)))))

(declare-fun dynLambda!3002 (Int (_ BitVec 64)) V!44699)

(assert (=> b!1178640 (= lt!532467 (dynLambda!3002 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1178640 (= lt!532474 (getCurrentListMapNoExtraKeys!5028 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178641 () Bool)

(declare-fun Unit!38875 () Unit!38872)

(assert (=> b!1178641 (= e!670092 Unit!38875)))

(assert (= (and start!99606 res!783093) b!1178631))

(assert (= (and b!1178631 res!783079) b!1178634))

(assert (= (and b!1178634 res!783087) b!1178626))

(assert (= (and b!1178626 res!783081) b!1178639))

(assert (= (and b!1178639 res!783094) b!1178636))

(assert (= (and b!1178636 res!783082) b!1178623))

(assert (= (and b!1178623 res!783090) b!1178622))

(assert (= (and b!1178622 res!783086) b!1178637))

(assert (= (and b!1178637 res!783084) b!1178635))

(assert (= (and b!1178635 res!783083) b!1178624))

(assert (= (and b!1178624 (not res!783088)) b!1178640))

(assert (= (and b!1178640 (not res!783085)) b!1178621))

(assert (= (and b!1178621 (not res!783091)) b!1178638))

(assert (= (and b!1178638 res!783080) b!1178625))

(assert (= (and b!1178625 (not res!783089)) b!1178630))

(assert (= (and b!1178638 c!116795) b!1178633))

(assert (= (and b!1178638 (not c!116795)) b!1178641))

(assert (= (and b!1178638 res!783092) b!1178632))

(assert (= (and b!1178627 condMapEmpty!46346) mapIsEmpty!46346))

(assert (= (and b!1178627 (not condMapEmpty!46346)) mapNonEmpty!46346))

(get-info :version)

(assert (= (and mapNonEmpty!46346 ((_ is ValueCellFull!14130) mapValue!46346)) b!1178628))

(assert (= (and b!1178627 ((_ is ValueCellFull!14130) mapDefault!46346)) b!1178629))

(assert (= start!99606 b!1178627))

(declare-fun b_lambda!20311 () Bool)

(assert (=> (not b_lambda!20311) (not b!1178640)))

(declare-fun t!38097 () Bool)

(declare-fun tb!9969 () Bool)

(assert (=> (and start!99606 (= defaultEntry!1004 defaultEntry!1004) t!38097) tb!9969))

(declare-fun result!20497 () Bool)

(assert (=> tb!9969 (= result!20497 tp_is_empty!29679)))

(assert (=> b!1178640 t!38097))

(declare-fun b_and!41181 () Bool)

(assert (= b_and!41179 (and (=> t!38097 result!20497) b_and!41181)))

(declare-fun m!1086641 () Bool)

(assert (=> b!1178631 m!1086641))

(declare-fun m!1086643 () Bool)

(assert (=> b!1178632 m!1086643))

(declare-fun m!1086645 () Bool)

(assert (=> b!1178640 m!1086645))

(declare-fun m!1086647 () Bool)

(assert (=> b!1178640 m!1086647))

(declare-fun m!1086649 () Bool)

(assert (=> b!1178640 m!1086649))

(declare-fun m!1086651 () Bool)

(assert (=> b!1178640 m!1086651))

(declare-fun m!1086653 () Bool)

(assert (=> b!1178621 m!1086653))

(declare-fun m!1086655 () Bool)

(assert (=> b!1178621 m!1086655))

(declare-fun m!1086657 () Bool)

(assert (=> b!1178621 m!1086657))

(declare-fun m!1086659 () Bool)

(assert (=> b!1178621 m!1086659))

(declare-fun m!1086661 () Bool)

(assert (=> b!1178621 m!1086661))

(declare-fun m!1086663 () Bool)

(assert (=> b!1178621 m!1086663))

(assert (=> b!1178621 m!1086661))

(declare-fun m!1086665 () Bool)

(assert (=> b!1178637 m!1086665))

(declare-fun m!1086667 () Bool)

(assert (=> b!1178637 m!1086667))

(declare-fun m!1086669 () Bool)

(assert (=> b!1178633 m!1086669))

(declare-fun m!1086671 () Bool)

(assert (=> b!1178633 m!1086671))

(declare-fun m!1086673 () Bool)

(assert (=> b!1178633 m!1086673))

(declare-fun m!1086675 () Bool)

(assert (=> b!1178633 m!1086675))

(declare-fun m!1086677 () Bool)

(assert (=> b!1178633 m!1086677))

(declare-fun m!1086679 () Bool)

(assert (=> b!1178624 m!1086679))

(declare-fun m!1086681 () Bool)

(assert (=> b!1178624 m!1086681))

(assert (=> b!1178625 m!1086661))

(declare-fun m!1086683 () Bool)

(assert (=> b!1178623 m!1086683))

(declare-fun m!1086685 () Bool)

(assert (=> mapNonEmpty!46346 m!1086685))

(declare-fun m!1086687 () Bool)

(assert (=> start!99606 m!1086687))

(declare-fun m!1086689 () Bool)

(assert (=> start!99606 m!1086689))

(declare-fun m!1086691 () Bool)

(assert (=> b!1178626 m!1086691))

(declare-fun m!1086693 () Bool)

(assert (=> b!1178639 m!1086693))

(assert (=> b!1178638 m!1086661))

(declare-fun m!1086695 () Bool)

(assert (=> b!1178638 m!1086695))

(declare-fun m!1086697 () Bool)

(assert (=> b!1178638 m!1086697))

(assert (=> b!1178638 m!1086697))

(declare-fun m!1086699 () Bool)

(assert (=> b!1178638 m!1086699))

(declare-fun m!1086701 () Bool)

(assert (=> b!1178622 m!1086701))

(declare-fun m!1086703 () Bool)

(assert (=> b!1178630 m!1086703))

(declare-fun m!1086705 () Bool)

(assert (=> b!1178635 m!1086705))

(check-sat (not b!1178623) (not b!1178631) b_and!41181 (not b!1178640) (not b!1178637) (not b!1178639) (not mapNonEmpty!46346) (not b!1178626) (not start!99606) (not b!1178632) (not b_next!25149) (not b_lambda!20311) (not b!1178621) (not b!1178624) (not b!1178630) (not b!1178633) tp_is_empty!29679 (not b!1178635) (not b!1178638))
(check-sat b_and!41181 (not b_next!25149))
