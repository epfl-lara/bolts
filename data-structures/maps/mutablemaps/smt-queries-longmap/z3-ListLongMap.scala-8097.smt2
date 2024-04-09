; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99486 () Bool)

(assert start!99486)

(declare-fun b_free!25029 () Bool)

(declare-fun b_next!25029 () Bool)

(assert (=> start!99486 (= b_free!25029 (not b_next!25029))))

(declare-fun tp!87802 () Bool)

(declare-fun b_and!40939 () Bool)

(assert (=> start!99486 (= tp!87802 b_and!40939)))

(declare-fun b!1174779 () Bool)

(declare-fun res!780264 () Bool)

(declare-fun e!667812 () Bool)

(assert (=> b!1174779 (=> (not res!780264) (not e!667812))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174779 (= res!780264 (validMask!0 mask!1564))))

(declare-fun b!1174780 () Bool)

(declare-fun e!667806 () Bool)

(declare-fun e!667805 () Bool)

(assert (=> b!1174780 (= e!667806 (not e!667805))))

(declare-fun res!780268 () Bool)

(assert (=> b!1174780 (=> res!780268 e!667805)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1174780 (= res!780268 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75894 0))(
  ( (array!75895 (arr!36593 (Array (_ BitVec 32) (_ BitVec 64))) (size!37130 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75894)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1174780 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38676 0))(
  ( (Unit!38677) )
))
(declare-fun lt!529836 () Unit!38676)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75894 (_ BitVec 64) (_ BitVec 32)) Unit!38676)

(assert (=> b!1174780 (= lt!529836 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174781 () Bool)

(declare-fun e!667811 () Bool)

(declare-fun e!667809 () Bool)

(declare-fun mapRes!46166 () Bool)

(assert (=> b!1174781 (= e!667811 (and e!667809 mapRes!46166))))

(declare-fun condMapEmpty!46166 () Bool)

(declare-datatypes ((V!44539 0))(
  ( (V!44540 (val!14836 Int)) )
))
(declare-datatypes ((ValueCell!14070 0))(
  ( (ValueCellFull!14070 (v!17475 V!44539)) (EmptyCell!14070) )
))
(declare-datatypes ((array!75896 0))(
  ( (array!75897 (arr!36594 (Array (_ BitVec 32) ValueCell!14070)) (size!37131 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75896)

(declare-fun mapDefault!46166 () ValueCell!14070)

(assert (=> b!1174781 (= condMapEmpty!46166 (= (arr!36594 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14070)) mapDefault!46166)))))

(declare-fun b!1174782 () Bool)

(declare-fun res!780271 () Bool)

(assert (=> b!1174782 (=> (not res!780271) (not e!667812))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1174782 (= res!780271 (and (= (size!37131 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37130 _keys!1208) (size!37131 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174783 () Bool)

(declare-fun e!667804 () Unit!38676)

(declare-fun Unit!38678 () Unit!38676)

(assert (=> b!1174783 (= e!667804 Unit!38678)))

(declare-fun b!1174784 () Bool)

(declare-fun e!667803 () Bool)

(assert (=> b!1174784 (= e!667803 true)))

(assert (=> b!1174784 (not (= (select (arr!36593 _keys!1208) from!1455) k0!934))))

(declare-fun lt!529831 () Unit!38676)

(assert (=> b!1174784 (= lt!529831 e!667804)))

(declare-fun c!116615 () Bool)

(assert (=> b!1174784 (= c!116615 (= (select (arr!36593 _keys!1208) from!1455) k0!934))))

(declare-fun e!667802 () Bool)

(assert (=> b!1174784 e!667802))

(declare-fun res!780270 () Bool)

(assert (=> b!1174784 (=> (not res!780270) (not e!667802))))

(declare-datatypes ((tuple2!19070 0))(
  ( (tuple2!19071 (_1!9545 (_ BitVec 64)) (_2!9545 V!44539)) )
))
(declare-datatypes ((List!25839 0))(
  ( (Nil!25836) (Cons!25835 (h!27044 tuple2!19070) (t!37867 List!25839)) )
))
(declare-datatypes ((ListLongMap!17051 0))(
  ( (ListLongMap!17052 (toList!8541 List!25839)) )
))
(declare-fun lt!529830 () ListLongMap!17051)

(declare-fun lt!529833 () ListLongMap!17051)

(declare-fun lt!529832 () V!44539)

(declare-fun +!3771 (ListLongMap!17051 tuple2!19070) ListLongMap!17051)

(declare-fun get!18714 (ValueCell!14070 V!44539) V!44539)

(assert (=> b!1174784 (= res!780270 (= lt!529830 (+!3771 lt!529833 (tuple2!19071 (select (arr!36593 _keys!1208) from!1455) (get!18714 (select (arr!36594 _values!996) from!1455) lt!529832)))))))

(declare-fun b!1174785 () Bool)

(declare-fun e!667813 () Bool)

(assert (=> b!1174785 (= e!667802 e!667813)))

(declare-fun res!780265 () Bool)

(assert (=> b!1174785 (=> res!780265 e!667813)))

(assert (=> b!1174785 (= res!780265 (not (= (select (arr!36593 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1174786 () Bool)

(declare-fun res!780262 () Bool)

(assert (=> b!1174786 (=> (not res!780262) (not e!667806))))

(declare-fun lt!529829 () array!75894)

(declare-datatypes ((List!25840 0))(
  ( (Nil!25837) (Cons!25836 (h!27045 (_ BitVec 64)) (t!37868 List!25840)) )
))
(declare-fun arrayNoDuplicates!0 (array!75894 (_ BitVec 32) List!25840) Bool)

(assert (=> b!1174786 (= res!780262 (arrayNoDuplicates!0 lt!529829 #b00000000000000000000000000000000 Nil!25837))))

(declare-fun b!1174787 () Bool)

(declare-fun res!780263 () Bool)

(assert (=> b!1174787 (=> (not res!780263) (not e!667812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174787 (= res!780263 (validKeyInArray!0 k0!934))))

(declare-fun b!1174788 () Bool)

(declare-fun tp_is_empty!29559 () Bool)

(assert (=> b!1174788 (= e!667809 tp_is_empty!29559)))

(declare-fun b!1174789 () Bool)

(declare-fun e!667807 () Bool)

(assert (=> b!1174789 (= e!667807 e!667803)))

(declare-fun res!780267 () Bool)

(assert (=> b!1174789 (=> res!780267 e!667803)))

(assert (=> b!1174789 (= res!780267 (not (validKeyInArray!0 (select (arr!36593 _keys!1208) from!1455))))))

(declare-fun lt!529827 () ListLongMap!17051)

(assert (=> b!1174789 (= lt!529827 lt!529833)))

(declare-fun lt!529824 () ListLongMap!17051)

(declare-fun -!1551 (ListLongMap!17051 (_ BitVec 64)) ListLongMap!17051)

(assert (=> b!1174789 (= lt!529833 (-!1551 lt!529824 k0!934))))

(declare-fun lt!529828 () array!75896)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44539)

(declare-fun zeroValue!944 () V!44539)

(declare-fun getCurrentListMapNoExtraKeys!4972 (array!75894 array!75896 (_ BitVec 32) (_ BitVec 32) V!44539 V!44539 (_ BitVec 32) Int) ListLongMap!17051)

(assert (=> b!1174789 (= lt!529827 (getCurrentListMapNoExtraKeys!4972 lt!529829 lt!529828 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1174789 (= lt!529824 (getCurrentListMapNoExtraKeys!4972 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!529835 () Unit!38676)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!775 (array!75894 array!75896 (_ BitVec 32) (_ BitVec 32) V!44539 V!44539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38676)

(assert (=> b!1174789 (= lt!529835 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!775 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!780261 () Bool)

(assert (=> start!99486 (=> (not res!780261) (not e!667812))))

(assert (=> start!99486 (= res!780261 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37130 _keys!1208))))))

(assert (=> start!99486 e!667812))

(assert (=> start!99486 tp_is_empty!29559))

(declare-fun array_inv!27836 (array!75894) Bool)

(assert (=> start!99486 (array_inv!27836 _keys!1208)))

(assert (=> start!99486 true))

(assert (=> start!99486 tp!87802))

(declare-fun array_inv!27837 (array!75896) Bool)

(assert (=> start!99486 (and (array_inv!27837 _values!996) e!667811)))

(declare-fun b!1174790 () Bool)

(declare-fun res!780257 () Bool)

(assert (=> b!1174790 (=> (not res!780257) (not e!667812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75894 (_ BitVec 32)) Bool)

(assert (=> b!1174790 (= res!780257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1174791 () Bool)

(assert (=> b!1174791 (= e!667813 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1174792 () Bool)

(declare-fun res!780266 () Bool)

(assert (=> b!1174792 (=> (not res!780266) (not e!667812))))

(assert (=> b!1174792 (= res!780266 (= (select (arr!36593 _keys!1208) i!673) k0!934))))

(declare-fun b!1174793 () Bool)

(declare-fun res!780260 () Bool)

(assert (=> b!1174793 (=> (not res!780260) (not e!667812))))

(assert (=> b!1174793 (= res!780260 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25837))))

(declare-fun b!1174794 () Bool)

(declare-fun res!780269 () Bool)

(assert (=> b!1174794 (=> (not res!780269) (not e!667812))))

(assert (=> b!1174794 (= res!780269 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37130 _keys!1208))))))

(declare-fun mapIsEmpty!46166 () Bool)

(assert (=> mapIsEmpty!46166 mapRes!46166))

(declare-fun b!1174795 () Bool)

(assert (=> b!1174795 (= e!667812 e!667806)))

(declare-fun res!780258 () Bool)

(assert (=> b!1174795 (=> (not res!780258) (not e!667806))))

(assert (=> b!1174795 (= res!780258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529829 mask!1564))))

(assert (=> b!1174795 (= lt!529829 (array!75895 (store (arr!36593 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37130 _keys!1208)))))

(declare-fun mapNonEmpty!46166 () Bool)

(declare-fun tp!87801 () Bool)

(declare-fun e!667808 () Bool)

(assert (=> mapNonEmpty!46166 (= mapRes!46166 (and tp!87801 e!667808))))

(declare-fun mapRest!46166 () (Array (_ BitVec 32) ValueCell!14070))

(declare-fun mapKey!46166 () (_ BitVec 32))

(declare-fun mapValue!46166 () ValueCell!14070)

(assert (=> mapNonEmpty!46166 (= (arr!36594 _values!996) (store mapRest!46166 mapKey!46166 mapValue!46166))))

(declare-fun b!1174796 () Bool)

(declare-fun Unit!38679 () Unit!38676)

(assert (=> b!1174796 (= e!667804 Unit!38679)))

(declare-fun lt!529826 () Unit!38676)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75894 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38676)

(assert (=> b!1174796 (= lt!529826 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1174796 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!529825 () Unit!38676)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75894 (_ BitVec 32) (_ BitVec 32)) Unit!38676)

(assert (=> b!1174796 (= lt!529825 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1174796 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25837)))

(declare-fun lt!529823 () Unit!38676)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75894 (_ BitVec 64) (_ BitVec 32) List!25840) Unit!38676)

(assert (=> b!1174796 (= lt!529823 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25837))))

(assert (=> b!1174796 false))

(declare-fun b!1174797 () Bool)

(assert (=> b!1174797 (= e!667808 tp_is_empty!29559)))

(declare-fun b!1174798 () Bool)

(assert (=> b!1174798 (= e!667805 e!667807)))

(declare-fun res!780259 () Bool)

(assert (=> b!1174798 (=> res!780259 e!667807)))

(assert (=> b!1174798 (= res!780259 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1174798 (= lt!529830 (getCurrentListMapNoExtraKeys!4972 lt!529829 lt!529828 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1174798 (= lt!529828 (array!75897 (store (arr!36594 _values!996) i!673 (ValueCellFull!14070 lt!529832)) (size!37131 _values!996)))))

(declare-fun dynLambda!2953 (Int (_ BitVec 64)) V!44539)

(assert (=> b!1174798 (= lt!529832 (dynLambda!2953 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!529834 () ListLongMap!17051)

(assert (=> b!1174798 (= lt!529834 (getCurrentListMapNoExtraKeys!4972 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!99486 res!780261) b!1174779))

(assert (= (and b!1174779 res!780264) b!1174782))

(assert (= (and b!1174782 res!780271) b!1174790))

(assert (= (and b!1174790 res!780257) b!1174793))

(assert (= (and b!1174793 res!780260) b!1174794))

(assert (= (and b!1174794 res!780269) b!1174787))

(assert (= (and b!1174787 res!780263) b!1174792))

(assert (= (and b!1174792 res!780266) b!1174795))

(assert (= (and b!1174795 res!780258) b!1174786))

(assert (= (and b!1174786 res!780262) b!1174780))

(assert (= (and b!1174780 (not res!780268)) b!1174798))

(assert (= (and b!1174798 (not res!780259)) b!1174789))

(assert (= (and b!1174789 (not res!780267)) b!1174784))

(assert (= (and b!1174784 res!780270) b!1174785))

(assert (= (and b!1174785 (not res!780265)) b!1174791))

(assert (= (and b!1174784 c!116615) b!1174796))

(assert (= (and b!1174784 (not c!116615)) b!1174783))

(assert (= (and b!1174781 condMapEmpty!46166) mapIsEmpty!46166))

(assert (= (and b!1174781 (not condMapEmpty!46166)) mapNonEmpty!46166))

(get-info :version)

(assert (= (and mapNonEmpty!46166 ((_ is ValueCellFull!14070) mapValue!46166)) b!1174797))

(assert (= (and b!1174781 ((_ is ValueCellFull!14070) mapDefault!46166)) b!1174788))

(assert (= start!99486 b!1174781))

(declare-fun b_lambda!20191 () Bool)

(assert (=> (not b_lambda!20191) (not b!1174798)))

(declare-fun t!37866 () Bool)

(declare-fun tb!9849 () Bool)

(assert (=> (and start!99486 (= defaultEntry!1004 defaultEntry!1004) t!37866) tb!9849))

(declare-fun result!20257 () Bool)

(assert (=> tb!9849 (= result!20257 tp_is_empty!29559)))

(assert (=> b!1174798 t!37866))

(declare-fun b_and!40941 () Bool)

(assert (= b_and!40939 (and (=> t!37866 result!20257) b_and!40941)))

(declare-fun m!1082721 () Bool)

(assert (=> b!1174779 m!1082721))

(declare-fun m!1082723 () Bool)

(assert (=> b!1174792 m!1082723))

(declare-fun m!1082725 () Bool)

(assert (=> b!1174786 m!1082725))

(declare-fun m!1082727 () Bool)

(assert (=> b!1174798 m!1082727))

(declare-fun m!1082729 () Bool)

(assert (=> b!1174798 m!1082729))

(declare-fun m!1082731 () Bool)

(assert (=> b!1174798 m!1082731))

(declare-fun m!1082733 () Bool)

(assert (=> b!1174798 m!1082733))

(declare-fun m!1082735 () Bool)

(assert (=> start!99486 m!1082735))

(declare-fun m!1082737 () Bool)

(assert (=> start!99486 m!1082737))

(declare-fun m!1082739 () Bool)

(assert (=> b!1174795 m!1082739))

(declare-fun m!1082741 () Bool)

(assert (=> b!1174795 m!1082741))

(declare-fun m!1082743 () Bool)

(assert (=> b!1174790 m!1082743))

(declare-fun m!1082745 () Bool)

(assert (=> b!1174780 m!1082745))

(declare-fun m!1082747 () Bool)

(assert (=> b!1174780 m!1082747))

(declare-fun m!1082749 () Bool)

(assert (=> b!1174787 m!1082749))

(declare-fun m!1082751 () Bool)

(assert (=> mapNonEmpty!46166 m!1082751))

(declare-fun m!1082753 () Bool)

(assert (=> b!1174796 m!1082753))

(declare-fun m!1082755 () Bool)

(assert (=> b!1174796 m!1082755))

(declare-fun m!1082757 () Bool)

(assert (=> b!1174796 m!1082757))

(declare-fun m!1082759 () Bool)

(assert (=> b!1174796 m!1082759))

(declare-fun m!1082761 () Bool)

(assert (=> b!1174796 m!1082761))

(declare-fun m!1082763 () Bool)

(assert (=> b!1174785 m!1082763))

(declare-fun m!1082765 () Bool)

(assert (=> b!1174793 m!1082765))

(assert (=> b!1174784 m!1082763))

(declare-fun m!1082767 () Bool)

(assert (=> b!1174784 m!1082767))

(assert (=> b!1174784 m!1082767))

(declare-fun m!1082769 () Bool)

(assert (=> b!1174784 m!1082769))

(declare-fun m!1082771 () Bool)

(assert (=> b!1174784 m!1082771))

(declare-fun m!1082773 () Bool)

(assert (=> b!1174791 m!1082773))

(declare-fun m!1082775 () Bool)

(assert (=> b!1174789 m!1082775))

(declare-fun m!1082777 () Bool)

(assert (=> b!1174789 m!1082777))

(declare-fun m!1082779 () Bool)

(assert (=> b!1174789 m!1082779))

(declare-fun m!1082781 () Bool)

(assert (=> b!1174789 m!1082781))

(assert (=> b!1174789 m!1082763))

(declare-fun m!1082783 () Bool)

(assert (=> b!1174789 m!1082783))

(assert (=> b!1174789 m!1082763))

(check-sat (not b!1174796) (not b!1174787) (not b!1174795) b_and!40941 (not b!1174793) tp_is_empty!29559 (not b!1174798) (not b!1174791) (not b!1174790) (not b!1174786) (not mapNonEmpty!46166) (not b_next!25029) (not start!99486) (not b!1174780) (not b!1174779) (not b!1174784) (not b_lambda!20191) (not b!1174789))
(check-sat b_and!40941 (not b_next!25029))
