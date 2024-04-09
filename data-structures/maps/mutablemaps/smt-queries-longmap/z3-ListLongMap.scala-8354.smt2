; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101744 () Bool)

(assert start!101744)

(declare-fun b_free!26397 () Bool)

(declare-fun b_next!26397 () Bool)

(assert (=> start!101744 (= b_free!26397 (not b_next!26397))))

(declare-fun tp!92237 () Bool)

(declare-fun b_and!44065 () Bool)

(assert (=> start!101744 (= tp!92237 b_and!44065)))

(declare-fun b!1223626 () Bool)

(declare-fun e!694995 () Bool)

(declare-fun e!694992 () Bool)

(assert (=> b!1223626 (= e!694995 e!694992)))

(declare-fun res!813126 () Bool)

(assert (=> b!1223626 (=> res!813126 e!694992)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78960 0))(
  ( (array!78961 (arr!38103 (Array (_ BitVec 32) (_ BitVec 64))) (size!38640 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78960)

(assert (=> b!1223626 (= res!813126 (not (= (select (arr!38103 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1223627 () Bool)

(declare-fun res!813122 () Bool)

(declare-fun e!695000 () Bool)

(assert (=> b!1223627 (=> (not res!813122) (not e!695000))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1223627 (= res!813122 (= (select (arr!38103 _keys!1208) i!673) k0!934))))

(declare-datatypes ((V!46595 0))(
  ( (V!46596 (val!15607 Int)) )
))
(declare-datatypes ((tuple2!20252 0))(
  ( (tuple2!20253 (_1!10136 (_ BitVec 64)) (_2!10136 V!46595)) )
))
(declare-datatypes ((List!27064 0))(
  ( (Nil!27061) (Cons!27060 (h!28269 tuple2!20252) (t!40448 List!27064)) )
))
(declare-datatypes ((ListLongMap!18233 0))(
  ( (ListLongMap!18234 (toList!9132 List!27064)) )
))
(declare-fun lt!556965 () ListLongMap!18233)

(declare-fun e!694997 () Bool)

(declare-fun b!1223628 () Bool)

(declare-fun lt!556970 () ListLongMap!18233)

(declare-fun lt!556972 () tuple2!20252)

(declare-fun +!4095 (ListLongMap!18233 tuple2!20252) ListLongMap!18233)

(assert (=> b!1223628 (= e!694997 (= lt!556970 (+!4095 lt!556965 lt!556972)))))

(declare-fun b!1223629 () Bool)

(declare-fun e!694994 () Bool)

(declare-fun e!694990 () Bool)

(assert (=> b!1223629 (= e!694994 e!694990)))

(declare-fun res!813117 () Bool)

(assert (=> b!1223629 (=> res!813117 e!694990)))

(assert (=> b!1223629 (= res!813117 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46595)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46595)

(declare-datatypes ((ValueCell!14841 0))(
  ( (ValueCellFull!14841 (v!18270 V!46595)) (EmptyCell!14841) )
))
(declare-datatypes ((array!78962 0))(
  ( (array!78963 (arr!38104 (Array (_ BitVec 32) ValueCell!14841)) (size!38641 (_ BitVec 32))) )
))
(declare-fun lt!556961 () array!78962)

(declare-fun lt!556967 () array!78960)

(declare-fun lt!556963 () ListLongMap!18233)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5529 (array!78960 array!78962 (_ BitVec 32) (_ BitVec 32) V!46595 V!46595 (_ BitVec 32) Int) ListLongMap!18233)

(assert (=> b!1223629 (= lt!556963 (getCurrentListMapNoExtraKeys!5529 lt!556967 lt!556961 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!78962)

(declare-fun lt!556964 () V!46595)

(assert (=> b!1223629 (= lt!556961 (array!78963 (store (arr!38104 _values!996) i!673 (ValueCellFull!14841 lt!556964)) (size!38641 _values!996)))))

(declare-fun dynLambda!3425 (Int (_ BitVec 64)) V!46595)

(assert (=> b!1223629 (= lt!556964 (dynLambda!3425 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1223629 (= lt!556970 (getCurrentListMapNoExtraKeys!5529 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1223630 () Bool)

(declare-fun res!813128 () Bool)

(assert (=> b!1223630 (=> (not res!813128) (not e!695000))))

(assert (=> b!1223630 (= res!813128 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38640 _keys!1208))))))

(declare-fun res!813125 () Bool)

(assert (=> start!101744 (=> (not res!813125) (not e!695000))))

(assert (=> start!101744 (= res!813125 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38640 _keys!1208))))))

(assert (=> start!101744 e!695000))

(declare-fun tp_is_empty!31101 () Bool)

(assert (=> start!101744 tp_is_empty!31101))

(declare-fun array_inv!28904 (array!78960) Bool)

(assert (=> start!101744 (array_inv!28904 _keys!1208)))

(assert (=> start!101744 true))

(assert (=> start!101744 tp!92237))

(declare-fun e!694999 () Bool)

(declare-fun array_inv!28905 (array!78962) Bool)

(assert (=> start!101744 (and (array_inv!28905 _values!996) e!694999)))

(declare-fun b!1223631 () Bool)

(declare-fun arrayContainsKey!0 (array!78960 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1223631 (= e!694992 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223632 () Bool)

(declare-fun e!694996 () Bool)

(declare-fun mapRes!48550 () Bool)

(assert (=> b!1223632 (= e!694999 (and e!694996 mapRes!48550))))

(declare-fun condMapEmpty!48550 () Bool)

(declare-fun mapDefault!48550 () ValueCell!14841)

(assert (=> b!1223632 (= condMapEmpty!48550 (= (arr!38104 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14841)) mapDefault!48550)))))

(declare-fun b!1223633 () Bool)

(declare-fun res!813132 () Bool)

(assert (=> b!1223633 (=> (not res!813132) (not e!695000))))

(declare-datatypes ((List!27065 0))(
  ( (Nil!27062) (Cons!27061 (h!28270 (_ BitVec 64)) (t!40449 List!27065)) )
))
(declare-fun arrayNoDuplicates!0 (array!78960 (_ BitVec 32) List!27065) Bool)

(assert (=> b!1223633 (= res!813132 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27062))))

(declare-fun b!1223634 () Bool)

(declare-fun e!694989 () Bool)

(assert (=> b!1223634 (= e!694989 (not e!694994))))

(declare-fun res!813121 () Bool)

(assert (=> b!1223634 (=> res!813121 e!694994)))

(assert (=> b!1223634 (= res!813121 (bvsgt from!1455 i!673))))

(assert (=> b!1223634 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40457 0))(
  ( (Unit!40458) )
))
(declare-fun lt!556968 () Unit!40457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78960 (_ BitVec 64) (_ BitVec 32)) Unit!40457)

(assert (=> b!1223634 (= lt!556968 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1223635 () Bool)

(assert (=> b!1223635 (= e!695000 e!694989)))

(declare-fun res!813130 () Bool)

(assert (=> b!1223635 (=> (not res!813130) (not e!694989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78960 (_ BitVec 32)) Bool)

(assert (=> b!1223635 (= res!813130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556967 mask!1564))))

(assert (=> b!1223635 (= lt!556967 (array!78961 (store (arr!38103 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38640 _keys!1208)))))

(declare-fun b!1223636 () Bool)

(declare-fun res!813118 () Bool)

(assert (=> b!1223636 (=> (not res!813118) (not e!694989))))

(assert (=> b!1223636 (= res!813118 (arrayNoDuplicates!0 lt!556967 #b00000000000000000000000000000000 Nil!27062))))

(declare-fun b!1223637 () Bool)

(declare-fun res!813127 () Bool)

(assert (=> b!1223637 (=> (not res!813127) (not e!695000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1223637 (= res!813127 (validKeyInArray!0 k0!934))))

(declare-fun b!1223638 () Bool)

(declare-fun res!813124 () Bool)

(assert (=> b!1223638 (=> (not res!813124) (not e!695000))))

(assert (=> b!1223638 (= res!813124 (and (= (size!38641 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38640 _keys!1208) (size!38641 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1223639 () Bool)

(declare-fun res!813123 () Bool)

(assert (=> b!1223639 (=> (not res!813123) (not e!695000))))

(assert (=> b!1223639 (= res!813123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1223640 () Bool)

(declare-fun e!694991 () Bool)

(assert (=> b!1223640 (= e!694991 (bvslt i!673 (size!38641 _values!996)))))

(assert (=> b!1223640 e!694997))

(declare-fun res!813120 () Bool)

(assert (=> b!1223640 (=> (not res!813120) (not e!694997))))

(assert (=> b!1223640 (= res!813120 (not (= (select (arr!38103 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!556962 () Unit!40457)

(declare-fun e!695001 () Unit!40457)

(assert (=> b!1223640 (= lt!556962 e!695001)))

(declare-fun c!120360 () Bool)

(assert (=> b!1223640 (= c!120360 (= (select (arr!38103 _keys!1208) from!1455) k0!934))))

(assert (=> b!1223640 e!694995))

(declare-fun res!813129 () Bool)

(assert (=> b!1223640 (=> (not res!813129) (not e!694995))))

(declare-fun lt!556973 () ListLongMap!18233)

(assert (=> b!1223640 (= res!813129 (= lt!556963 (+!4095 lt!556973 lt!556972)))))

(declare-fun get!19501 (ValueCell!14841 V!46595) V!46595)

(assert (=> b!1223640 (= lt!556972 (tuple2!20253 (select (arr!38103 _keys!1208) from!1455) (get!19501 (select (arr!38104 _values!996) from!1455) lt!556964)))))

(declare-fun b!1223641 () Bool)

(declare-fun e!694993 () Bool)

(assert (=> b!1223641 (= e!694993 tp_is_empty!31101)))

(declare-fun b!1223642 () Bool)

(declare-fun Unit!40459 () Unit!40457)

(assert (=> b!1223642 (= e!695001 Unit!40459)))

(declare-fun lt!556969 () Unit!40457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78960 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40457)

(assert (=> b!1223642 (= lt!556969 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1223642 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556971 () Unit!40457)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78960 (_ BitVec 32) (_ BitVec 32)) Unit!40457)

(assert (=> b!1223642 (= lt!556971 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1223642 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27062)))

(declare-fun lt!556974 () Unit!40457)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78960 (_ BitVec 64) (_ BitVec 32) List!27065) Unit!40457)

(assert (=> b!1223642 (= lt!556974 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27062))))

(assert (=> b!1223642 false))

(declare-fun b!1223643 () Bool)

(assert (=> b!1223643 (= e!694990 e!694991)))

(declare-fun res!813131 () Bool)

(assert (=> b!1223643 (=> res!813131 e!694991)))

(assert (=> b!1223643 (= res!813131 (not (validKeyInArray!0 (select (arr!38103 _keys!1208) from!1455))))))

(declare-fun lt!556966 () ListLongMap!18233)

(assert (=> b!1223643 (= lt!556966 lt!556973)))

(declare-fun -!1972 (ListLongMap!18233 (_ BitVec 64)) ListLongMap!18233)

(assert (=> b!1223643 (= lt!556973 (-!1972 lt!556965 k0!934))))

(assert (=> b!1223643 (= lt!556966 (getCurrentListMapNoExtraKeys!5529 lt!556967 lt!556961 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1223643 (= lt!556965 (getCurrentListMapNoExtraKeys!5529 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556975 () Unit!40457)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1174 (array!78960 array!78962 (_ BitVec 32) (_ BitVec 32) V!46595 V!46595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40457)

(assert (=> b!1223643 (= lt!556975 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1174 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1223644 () Bool)

(declare-fun Unit!40460 () Unit!40457)

(assert (=> b!1223644 (= e!695001 Unit!40460)))

(declare-fun b!1223645 () Bool)

(declare-fun res!813119 () Bool)

(assert (=> b!1223645 (=> (not res!813119) (not e!695000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1223645 (= res!813119 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!48550 () Bool)

(assert (=> mapIsEmpty!48550 mapRes!48550))

(declare-fun mapNonEmpty!48550 () Bool)

(declare-fun tp!92238 () Bool)

(assert (=> mapNonEmpty!48550 (= mapRes!48550 (and tp!92238 e!694993))))

(declare-fun mapRest!48550 () (Array (_ BitVec 32) ValueCell!14841))

(declare-fun mapValue!48550 () ValueCell!14841)

(declare-fun mapKey!48550 () (_ BitVec 32))

(assert (=> mapNonEmpty!48550 (= (arr!38104 _values!996) (store mapRest!48550 mapKey!48550 mapValue!48550))))

(declare-fun b!1223646 () Bool)

(assert (=> b!1223646 (= e!694996 tp_is_empty!31101)))

(assert (= (and start!101744 res!813125) b!1223645))

(assert (= (and b!1223645 res!813119) b!1223638))

(assert (= (and b!1223638 res!813124) b!1223639))

(assert (= (and b!1223639 res!813123) b!1223633))

(assert (= (and b!1223633 res!813132) b!1223630))

(assert (= (and b!1223630 res!813128) b!1223637))

(assert (= (and b!1223637 res!813127) b!1223627))

(assert (= (and b!1223627 res!813122) b!1223635))

(assert (= (and b!1223635 res!813130) b!1223636))

(assert (= (and b!1223636 res!813118) b!1223634))

(assert (= (and b!1223634 (not res!813121)) b!1223629))

(assert (= (and b!1223629 (not res!813117)) b!1223643))

(assert (= (and b!1223643 (not res!813131)) b!1223640))

(assert (= (and b!1223640 res!813129) b!1223626))

(assert (= (and b!1223626 (not res!813126)) b!1223631))

(assert (= (and b!1223640 c!120360) b!1223642))

(assert (= (and b!1223640 (not c!120360)) b!1223644))

(assert (= (and b!1223640 res!813120) b!1223628))

(assert (= (and b!1223632 condMapEmpty!48550) mapIsEmpty!48550))

(assert (= (and b!1223632 (not condMapEmpty!48550)) mapNonEmpty!48550))

(get-info :version)

(assert (= (and mapNonEmpty!48550 ((_ is ValueCellFull!14841) mapValue!48550)) b!1223641))

(assert (= (and b!1223632 ((_ is ValueCellFull!14841) mapDefault!48550)) b!1223646))

(assert (= start!101744 b!1223632))

(declare-fun b_lambda!22387 () Bool)

(assert (=> (not b_lambda!22387) (not b!1223629)))

(declare-fun t!40447 () Bool)

(declare-fun tb!11205 () Bool)

(assert (=> (and start!101744 (= defaultEntry!1004 defaultEntry!1004) t!40447) tb!11205))

(declare-fun result!23015 () Bool)

(assert (=> tb!11205 (= result!23015 tp_is_empty!31101)))

(assert (=> b!1223629 t!40447))

(declare-fun b_and!44067 () Bool)

(assert (= b_and!44065 (and (=> t!40447 result!23015) b_and!44067)))

(declare-fun m!1128679 () Bool)

(assert (=> b!1223635 m!1128679))

(declare-fun m!1128681 () Bool)

(assert (=> b!1223635 m!1128681))

(declare-fun m!1128683 () Bool)

(assert (=> b!1223643 m!1128683))

(declare-fun m!1128685 () Bool)

(assert (=> b!1223643 m!1128685))

(declare-fun m!1128687 () Bool)

(assert (=> b!1223643 m!1128687))

(declare-fun m!1128689 () Bool)

(assert (=> b!1223643 m!1128689))

(declare-fun m!1128691 () Bool)

(assert (=> b!1223643 m!1128691))

(declare-fun m!1128693 () Bool)

(assert (=> b!1223643 m!1128693))

(assert (=> b!1223643 m!1128689))

(assert (=> b!1223626 m!1128689))

(declare-fun m!1128695 () Bool)

(assert (=> b!1223645 m!1128695))

(assert (=> b!1223640 m!1128689))

(declare-fun m!1128697 () Bool)

(assert (=> b!1223640 m!1128697))

(declare-fun m!1128699 () Bool)

(assert (=> b!1223640 m!1128699))

(assert (=> b!1223640 m!1128699))

(declare-fun m!1128701 () Bool)

(assert (=> b!1223640 m!1128701))

(declare-fun m!1128703 () Bool)

(assert (=> b!1223637 m!1128703))

(declare-fun m!1128705 () Bool)

(assert (=> b!1223639 m!1128705))

(declare-fun m!1128707 () Bool)

(assert (=> b!1223634 m!1128707))

(declare-fun m!1128709 () Bool)

(assert (=> b!1223634 m!1128709))

(declare-fun m!1128711 () Bool)

(assert (=> b!1223642 m!1128711))

(declare-fun m!1128713 () Bool)

(assert (=> b!1223642 m!1128713))

(declare-fun m!1128715 () Bool)

(assert (=> b!1223642 m!1128715))

(declare-fun m!1128717 () Bool)

(assert (=> b!1223642 m!1128717))

(declare-fun m!1128719 () Bool)

(assert (=> b!1223642 m!1128719))

(declare-fun m!1128721 () Bool)

(assert (=> b!1223627 m!1128721))

(declare-fun m!1128723 () Bool)

(assert (=> b!1223629 m!1128723))

(declare-fun m!1128725 () Bool)

(assert (=> b!1223629 m!1128725))

(declare-fun m!1128727 () Bool)

(assert (=> b!1223629 m!1128727))

(declare-fun m!1128729 () Bool)

(assert (=> b!1223629 m!1128729))

(declare-fun m!1128731 () Bool)

(assert (=> mapNonEmpty!48550 m!1128731))

(declare-fun m!1128733 () Bool)

(assert (=> b!1223636 m!1128733))

(declare-fun m!1128735 () Bool)

(assert (=> b!1223631 m!1128735))

(declare-fun m!1128737 () Bool)

(assert (=> b!1223633 m!1128737))

(declare-fun m!1128739 () Bool)

(assert (=> start!101744 m!1128739))

(declare-fun m!1128741 () Bool)

(assert (=> start!101744 m!1128741))

(declare-fun m!1128743 () Bool)

(assert (=> b!1223628 m!1128743))

(check-sat (not b!1223634) (not b!1223643) (not b!1223639) b_and!44067 (not mapNonEmpty!48550) (not b!1223628) (not b!1223640) tp_is_empty!31101 (not b!1223629) (not b!1223642) (not b!1223635) (not b!1223637) (not b!1223645) (not b!1223633) (not b_lambda!22387) (not start!101744) (not b_next!26397) (not b!1223636) (not b!1223631))
(check-sat b_and!44067 (not b_next!26397))
