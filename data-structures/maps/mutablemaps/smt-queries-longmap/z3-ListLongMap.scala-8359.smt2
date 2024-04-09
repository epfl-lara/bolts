; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101774 () Bool)

(assert start!101774)

(declare-fun b_free!26427 () Bool)

(declare-fun b_next!26427 () Bool)

(assert (=> start!101774 (= b_free!26427 (not b_next!26427))))

(declare-fun tp!92328 () Bool)

(declare-fun b_and!44125 () Bool)

(assert (=> start!101774 (= tp!92328 b_and!44125)))

(declare-fun b!1224623 () Bool)

(declare-fun e!695574 () Bool)

(declare-fun e!695576 () Bool)

(assert (=> b!1224623 (= e!695574 e!695576)))

(declare-fun res!813864 () Bool)

(assert (=> b!1224623 (=> res!813864 e!695576)))

(declare-datatypes ((array!79020 0))(
  ( (array!79021 (arr!38133 (Array (_ BitVec 32) (_ BitVec 64))) (size!38670 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79020)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1224623 (= res!813864 (not (validKeyInArray!0 (select (arr!38133 _keys!1208) from!1455))))))

(declare-datatypes ((V!46635 0))(
  ( (V!46636 (val!15622 Int)) )
))
(declare-datatypes ((tuple2!20282 0))(
  ( (tuple2!20283 (_1!10151 (_ BitVec 64)) (_2!10151 V!46635)) )
))
(declare-datatypes ((List!27093 0))(
  ( (Nil!27090) (Cons!27089 (h!28298 tuple2!20282) (t!40507 List!27093)) )
))
(declare-datatypes ((ListLongMap!18263 0))(
  ( (ListLongMap!18264 (toList!9147 List!27093)) )
))
(declare-fun lt!557656 () ListLongMap!18263)

(declare-fun lt!557665 () ListLongMap!18263)

(assert (=> b!1224623 (= lt!557656 lt!557665)))

(declare-fun lt!557669 () ListLongMap!18263)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1983 (ListLongMap!18263 (_ BitVec 64)) ListLongMap!18263)

(assert (=> b!1224623 (= lt!557665 (-!1983 lt!557669 k0!934))))

(declare-fun zeroValue!944 () V!46635)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!557663 () array!79020)

(declare-fun minValue!944 () V!46635)

(declare-datatypes ((ValueCell!14856 0))(
  ( (ValueCellFull!14856 (v!18285 V!46635)) (EmptyCell!14856) )
))
(declare-datatypes ((array!79022 0))(
  ( (array!79023 (arr!38134 (Array (_ BitVec 32) ValueCell!14856)) (size!38671 (_ BitVec 32))) )
))
(declare-fun lt!557667 () array!79022)

(declare-fun getCurrentListMapNoExtraKeys!5544 (array!79020 array!79022 (_ BitVec 32) (_ BitVec 32) V!46635 V!46635 (_ BitVec 32) Int) ListLongMap!18263)

(assert (=> b!1224623 (= lt!557656 (getCurrentListMapNoExtraKeys!5544 lt!557663 lt!557667 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!79022)

(assert (=> b!1224623 (= lt!557669 (getCurrentListMapNoExtraKeys!5544 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!40512 0))(
  ( (Unit!40513) )
))
(declare-fun lt!557674 () Unit!40512)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1185 (array!79020 array!79022 (_ BitVec 32) (_ BitVec 32) V!46635 V!46635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40512)

(assert (=> b!1224623 (= lt!557674 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1185 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1224624 () Bool)

(assert (=> b!1224624 (= e!695576 true)))

(declare-fun lt!557661 () ListLongMap!18263)

(declare-fun lt!557658 () ListLongMap!18263)

(assert (=> b!1224624 (= (-!1983 lt!557661 k0!934) lt!557658)))

(declare-fun lt!557660 () V!46635)

(declare-fun lt!557668 () Unit!40512)

(declare-fun addRemoveCommutativeForDiffKeys!224 (ListLongMap!18263 (_ BitVec 64) V!46635 (_ BitVec 64)) Unit!40512)

(assert (=> b!1224624 (= lt!557668 (addRemoveCommutativeForDiffKeys!224 lt!557669 (select (arr!38133 _keys!1208) from!1455) lt!557660 k0!934))))

(declare-fun lt!557666 () ListLongMap!18263)

(assert (=> b!1224624 (and (= lt!557666 lt!557661) (= lt!557665 lt!557656))))

(declare-fun lt!557670 () tuple2!20282)

(declare-fun +!4109 (ListLongMap!18263 tuple2!20282) ListLongMap!18263)

(assert (=> b!1224624 (= lt!557661 (+!4109 lt!557669 lt!557670))))

(assert (=> b!1224624 (not (= (select (arr!38133 _keys!1208) from!1455) k0!934))))

(declare-fun lt!557671 () Unit!40512)

(declare-fun e!695572 () Unit!40512)

(assert (=> b!1224624 (= lt!557671 e!695572)))

(declare-fun c!120405 () Bool)

(assert (=> b!1224624 (= c!120405 (= (select (arr!38133 _keys!1208) from!1455) k0!934))))

(declare-fun e!695573 () Bool)

(assert (=> b!1224624 e!695573))

(declare-fun res!813861 () Bool)

(assert (=> b!1224624 (=> (not res!813861) (not e!695573))))

(declare-fun lt!557672 () ListLongMap!18263)

(assert (=> b!1224624 (= res!813861 (= lt!557672 lt!557658))))

(assert (=> b!1224624 (= lt!557658 (+!4109 lt!557665 lt!557670))))

(assert (=> b!1224624 (= lt!557670 (tuple2!20283 (select (arr!38133 _keys!1208) from!1455) lt!557660))))

(declare-fun lt!557659 () V!46635)

(declare-fun get!19523 (ValueCell!14856 V!46635) V!46635)

(assert (=> b!1224624 (= lt!557660 (get!19523 (select (arr!38134 _values!996) from!1455) lt!557659))))

(declare-fun b!1224625 () Bool)

(declare-fun e!695578 () Bool)

(declare-fun e!695569 () Bool)

(declare-fun mapRes!48595 () Bool)

(assert (=> b!1224625 (= e!695578 (and e!695569 mapRes!48595))))

(declare-fun condMapEmpty!48595 () Bool)

(declare-fun mapDefault!48595 () ValueCell!14856)

(assert (=> b!1224625 (= condMapEmpty!48595 (= (arr!38134 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14856)) mapDefault!48595)))))

(declare-fun b!1224626 () Bool)

(declare-fun res!813872 () Bool)

(declare-fun e!695575 () Bool)

(assert (=> b!1224626 (=> (not res!813872) (not e!695575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79020 (_ BitVec 32)) Bool)

(assert (=> b!1224626 (= res!813872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1224627 () Bool)

(declare-fun e!695577 () Bool)

(assert (=> b!1224627 (= e!695577 e!695574)))

(declare-fun res!813865 () Bool)

(assert (=> b!1224627 (=> res!813865 e!695574)))

(assert (=> b!1224627 (= res!813865 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1224627 (= lt!557672 (getCurrentListMapNoExtraKeys!5544 lt!557663 lt!557667 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1224627 (= lt!557667 (array!79023 (store (arr!38134 _values!996) i!673 (ValueCellFull!14856 lt!557659)) (size!38671 _values!996)))))

(declare-fun dynLambda!3439 (Int (_ BitVec 64)) V!46635)

(assert (=> b!1224627 (= lt!557659 (dynLambda!3439 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1224627 (= lt!557666 (getCurrentListMapNoExtraKeys!5544 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1224629 () Bool)

(declare-fun Unit!40514 () Unit!40512)

(assert (=> b!1224629 (= e!695572 Unit!40514)))

(declare-fun b!1224630 () Bool)

(declare-fun e!695580 () Bool)

(declare-fun arrayContainsKey!0 (array!79020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1224630 (= e!695580 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224631 () Bool)

(assert (=> b!1224631 (= e!695573 e!695580)))

(declare-fun res!813859 () Bool)

(assert (=> b!1224631 (=> res!813859 e!695580)))

(assert (=> b!1224631 (= res!813859 (not (= (select (arr!38133 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1224632 () Bool)

(declare-fun res!813866 () Bool)

(assert (=> b!1224632 (=> (not res!813866) (not e!695575))))

(assert (=> b!1224632 (= res!813866 (and (= (size!38671 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38670 _keys!1208) (size!38671 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1224633 () Bool)

(declare-fun res!813867 () Bool)

(assert (=> b!1224633 (=> (not res!813867) (not e!695575))))

(declare-datatypes ((List!27094 0))(
  ( (Nil!27091) (Cons!27090 (h!28299 (_ BitVec 64)) (t!40508 List!27094)) )
))
(declare-fun arrayNoDuplicates!0 (array!79020 (_ BitVec 32) List!27094) Bool)

(assert (=> b!1224633 (= res!813867 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27091))))

(declare-fun mapNonEmpty!48595 () Bool)

(declare-fun tp!92327 () Bool)

(declare-fun e!695570 () Bool)

(assert (=> mapNonEmpty!48595 (= mapRes!48595 (and tp!92327 e!695570))))

(declare-fun mapRest!48595 () (Array (_ BitVec 32) ValueCell!14856))

(declare-fun mapValue!48595 () ValueCell!14856)

(declare-fun mapKey!48595 () (_ BitVec 32))

(assert (=> mapNonEmpty!48595 (= (arr!38134 _values!996) (store mapRest!48595 mapKey!48595 mapValue!48595))))

(declare-fun res!813860 () Bool)

(assert (=> start!101774 (=> (not res!813860) (not e!695575))))

(assert (=> start!101774 (= res!813860 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38670 _keys!1208))))))

(assert (=> start!101774 e!695575))

(declare-fun tp_is_empty!31131 () Bool)

(assert (=> start!101774 tp_is_empty!31131))

(declare-fun array_inv!28926 (array!79020) Bool)

(assert (=> start!101774 (array_inv!28926 _keys!1208)))

(assert (=> start!101774 true))

(assert (=> start!101774 tp!92328))

(declare-fun array_inv!28927 (array!79022) Bool)

(assert (=> start!101774 (and (array_inv!28927 _values!996) e!695578)))

(declare-fun b!1224628 () Bool)

(declare-fun e!695571 () Bool)

(assert (=> b!1224628 (= e!695575 e!695571)))

(declare-fun res!813862 () Bool)

(assert (=> b!1224628 (=> (not res!813862) (not e!695571))))

(assert (=> b!1224628 (= res!813862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!557663 mask!1564))))

(assert (=> b!1224628 (= lt!557663 (array!79021 (store (arr!38133 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38670 _keys!1208)))))

(declare-fun b!1224634 () Bool)

(declare-fun res!813873 () Bool)

(assert (=> b!1224634 (=> (not res!813873) (not e!695575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1224634 (= res!813873 (validMask!0 mask!1564))))

(declare-fun b!1224635 () Bool)

(declare-fun res!813869 () Bool)

(assert (=> b!1224635 (=> (not res!813869) (not e!695575))))

(assert (=> b!1224635 (= res!813869 (= (select (arr!38133 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!48595 () Bool)

(assert (=> mapIsEmpty!48595 mapRes!48595))

(declare-fun b!1224636 () Bool)

(declare-fun res!813863 () Bool)

(assert (=> b!1224636 (=> (not res!813863) (not e!695571))))

(assert (=> b!1224636 (= res!813863 (arrayNoDuplicates!0 lt!557663 #b00000000000000000000000000000000 Nil!27091))))

(declare-fun b!1224637 () Bool)

(declare-fun res!813871 () Bool)

(assert (=> b!1224637 (=> (not res!813871) (not e!695575))))

(assert (=> b!1224637 (= res!813871 (validKeyInArray!0 k0!934))))

(declare-fun b!1224638 () Bool)

(assert (=> b!1224638 (= e!695570 tp_is_empty!31131)))

(declare-fun b!1224639 () Bool)

(assert (=> b!1224639 (= e!695571 (not e!695577))))

(declare-fun res!813868 () Bool)

(assert (=> b!1224639 (=> res!813868 e!695577)))

(assert (=> b!1224639 (= res!813868 (bvsgt from!1455 i!673))))

(assert (=> b!1224639 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!557664 () Unit!40512)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79020 (_ BitVec 64) (_ BitVec 32)) Unit!40512)

(assert (=> b!1224639 (= lt!557664 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1224640 () Bool)

(declare-fun Unit!40515 () Unit!40512)

(assert (=> b!1224640 (= e!695572 Unit!40515)))

(declare-fun lt!557662 () Unit!40512)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79020 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40512)

(assert (=> b!1224640 (= lt!557662 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1224640 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!557657 () Unit!40512)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79020 (_ BitVec 32) (_ BitVec 32)) Unit!40512)

(assert (=> b!1224640 (= lt!557657 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1224640 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27091)))

(declare-fun lt!557673 () Unit!40512)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79020 (_ BitVec 64) (_ BitVec 32) List!27094) Unit!40512)

(assert (=> b!1224640 (= lt!557673 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!27091))))

(assert (=> b!1224640 false))

(declare-fun b!1224641 () Bool)

(assert (=> b!1224641 (= e!695569 tp_is_empty!31131)))

(declare-fun b!1224642 () Bool)

(declare-fun res!813870 () Bool)

(assert (=> b!1224642 (=> (not res!813870) (not e!695575))))

(assert (=> b!1224642 (= res!813870 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38670 _keys!1208))))))

(assert (= (and start!101774 res!813860) b!1224634))

(assert (= (and b!1224634 res!813873) b!1224632))

(assert (= (and b!1224632 res!813866) b!1224626))

(assert (= (and b!1224626 res!813872) b!1224633))

(assert (= (and b!1224633 res!813867) b!1224642))

(assert (= (and b!1224642 res!813870) b!1224637))

(assert (= (and b!1224637 res!813871) b!1224635))

(assert (= (and b!1224635 res!813869) b!1224628))

(assert (= (and b!1224628 res!813862) b!1224636))

(assert (= (and b!1224636 res!813863) b!1224639))

(assert (= (and b!1224639 (not res!813868)) b!1224627))

(assert (= (and b!1224627 (not res!813865)) b!1224623))

(assert (= (and b!1224623 (not res!813864)) b!1224624))

(assert (= (and b!1224624 res!813861) b!1224631))

(assert (= (and b!1224631 (not res!813859)) b!1224630))

(assert (= (and b!1224624 c!120405) b!1224640))

(assert (= (and b!1224624 (not c!120405)) b!1224629))

(assert (= (and b!1224625 condMapEmpty!48595) mapIsEmpty!48595))

(assert (= (and b!1224625 (not condMapEmpty!48595)) mapNonEmpty!48595))

(get-info :version)

(assert (= (and mapNonEmpty!48595 ((_ is ValueCellFull!14856) mapValue!48595)) b!1224638))

(assert (= (and b!1224625 ((_ is ValueCellFull!14856) mapDefault!48595)) b!1224641))

(assert (= start!101774 b!1224625))

(declare-fun b_lambda!22417 () Bool)

(assert (=> (not b_lambda!22417) (not b!1224627)))

(declare-fun t!40506 () Bool)

(declare-fun tb!11235 () Bool)

(assert (=> (and start!101774 (= defaultEntry!1004 defaultEntry!1004) t!40506) tb!11235))

(declare-fun result!23075 () Bool)

(assert (=> tb!11235 (= result!23075 tp_is_empty!31131)))

(assert (=> b!1224627 t!40506))

(declare-fun b_and!44127 () Bool)

(assert (= b_and!44125 (and (=> t!40506 result!23075) b_and!44127)))

(declare-fun m!1129673 () Bool)

(assert (=> b!1224627 m!1129673))

(declare-fun m!1129675 () Bool)

(assert (=> b!1224627 m!1129675))

(declare-fun m!1129677 () Bool)

(assert (=> b!1224627 m!1129677))

(declare-fun m!1129679 () Bool)

(assert (=> b!1224627 m!1129679))

(declare-fun m!1129681 () Bool)

(assert (=> b!1224630 m!1129681))

(declare-fun m!1129683 () Bool)

(assert (=> b!1224640 m!1129683))

(declare-fun m!1129685 () Bool)

(assert (=> b!1224640 m!1129685))

(declare-fun m!1129687 () Bool)

(assert (=> b!1224640 m!1129687))

(declare-fun m!1129689 () Bool)

(assert (=> b!1224640 m!1129689))

(declare-fun m!1129691 () Bool)

(assert (=> b!1224640 m!1129691))

(declare-fun m!1129693 () Bool)

(assert (=> mapNonEmpty!48595 m!1129693))

(declare-fun m!1129695 () Bool)

(assert (=> b!1224623 m!1129695))

(declare-fun m!1129697 () Bool)

(assert (=> b!1224623 m!1129697))

(declare-fun m!1129699 () Bool)

(assert (=> b!1224623 m!1129699))

(declare-fun m!1129701 () Bool)

(assert (=> b!1224623 m!1129701))

(declare-fun m!1129703 () Bool)

(assert (=> b!1224623 m!1129703))

(declare-fun m!1129705 () Bool)

(assert (=> b!1224623 m!1129705))

(assert (=> b!1224623 m!1129703))

(declare-fun m!1129707 () Bool)

(assert (=> b!1224628 m!1129707))

(declare-fun m!1129709 () Bool)

(assert (=> b!1224628 m!1129709))

(declare-fun m!1129711 () Bool)

(assert (=> start!101774 m!1129711))

(declare-fun m!1129713 () Bool)

(assert (=> start!101774 m!1129713))

(declare-fun m!1129715 () Bool)

(assert (=> b!1224633 m!1129715))

(declare-fun m!1129717 () Bool)

(assert (=> b!1224635 m!1129717))

(declare-fun m!1129719 () Bool)

(assert (=> b!1224637 m!1129719))

(declare-fun m!1129721 () Bool)

(assert (=> b!1224636 m!1129721))

(declare-fun m!1129723 () Bool)

(assert (=> b!1224639 m!1129723))

(declare-fun m!1129725 () Bool)

(assert (=> b!1224639 m!1129725))

(declare-fun m!1129727 () Bool)

(assert (=> b!1224624 m!1129727))

(declare-fun m!1129729 () Bool)

(assert (=> b!1224624 m!1129729))

(assert (=> b!1224624 m!1129703))

(declare-fun m!1129731 () Bool)

(assert (=> b!1224624 m!1129731))

(declare-fun m!1129733 () Bool)

(assert (=> b!1224624 m!1129733))

(declare-fun m!1129735 () Bool)

(assert (=> b!1224624 m!1129735))

(assert (=> b!1224624 m!1129703))

(declare-fun m!1129737 () Bool)

(assert (=> b!1224624 m!1129737))

(assert (=> b!1224624 m!1129733))

(declare-fun m!1129739 () Bool)

(assert (=> b!1224626 m!1129739))

(declare-fun m!1129741 () Bool)

(assert (=> b!1224634 m!1129741))

(assert (=> b!1224631 m!1129703))

(check-sat (not b!1224623) b_and!44127 tp_is_empty!31131 (not b_lambda!22417) (not b_next!26427) (not b!1224628) (not b!1224634) (not b!1224637) (not mapNonEmpty!48595) (not b!1224636) (not b!1224633) (not b!1224639) (not b!1224624) (not b!1224627) (not b!1224626) (not b!1224640) (not b!1224630) (not start!101774))
(check-sat b_and!44127 (not b_next!26427))
