; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99426 () Bool)

(assert start!99426)

(declare-fun b_free!24969 () Bool)

(declare-fun b_next!24969 () Bool)

(assert (=> start!99426 (= b_free!24969 (not b_next!24969))))

(declare-fun tp!87621 () Bool)

(declare-fun b_and!40819 () Bool)

(assert (=> start!99426 (= tp!87621 b_and!40819)))

(declare-fun mapIsEmpty!46076 () Bool)

(declare-fun mapRes!46076 () Bool)

(assert (=> mapIsEmpty!46076 mapRes!46076))

(declare-fun b!1172919 () Bool)

(declare-fun e!666722 () Bool)

(declare-fun e!666725 () Bool)

(assert (=> b!1172919 (= e!666722 (not e!666725))))

(declare-fun res!778910 () Bool)

(assert (=> b!1172919 (=> res!778910 e!666725)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1172919 (= res!778910 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75774 0))(
  ( (array!75775 (arr!36533 (Array (_ BitVec 32) (_ BitVec 64))) (size!37070 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75774)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172919 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38581 0))(
  ( (Unit!38582) )
))
(declare-fun lt!528570 () Unit!38581)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75774 (_ BitVec 64) (_ BitVec 32)) Unit!38581)

(assert (=> b!1172919 (= lt!528570 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172920 () Bool)

(declare-fun e!666723 () Bool)

(declare-fun e!666731 () Bool)

(assert (=> b!1172920 (= e!666723 e!666731)))

(declare-fun res!778913 () Bool)

(assert (=> b!1172920 (=> res!778913 e!666731)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172920 (= res!778913 (not (validKeyInArray!0 (select (arr!36533 _keys!1208) from!1455))))))

(declare-datatypes ((V!44459 0))(
  ( (V!44460 (val!14806 Int)) )
))
(declare-datatypes ((tuple2!19018 0))(
  ( (tuple2!19019 (_1!9519 (_ BitVec 64)) (_2!9519 V!44459)) )
))
(declare-datatypes ((List!25791 0))(
  ( (Nil!25788) (Cons!25787 (h!26996 tuple2!19018) (t!37759 List!25791)) )
))
(declare-datatypes ((ListLongMap!16999 0))(
  ( (ListLongMap!17000 (toList!8515 List!25791)) )
))
(declare-fun lt!528575 () ListLongMap!16999)

(declare-fun lt!528563 () ListLongMap!16999)

(assert (=> b!1172920 (= lt!528575 lt!528563)))

(declare-fun lt!528573 () ListLongMap!16999)

(declare-fun -!1528 (ListLongMap!16999 (_ BitVec 64)) ListLongMap!16999)

(assert (=> b!1172920 (= lt!528563 (-!1528 lt!528573 k0!934))))

(declare-fun zeroValue!944 () V!44459)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528568 () array!75774)

(declare-fun minValue!944 () V!44459)

(declare-datatypes ((ValueCell!14040 0))(
  ( (ValueCellFull!14040 (v!17445 V!44459)) (EmptyCell!14040) )
))
(declare-datatypes ((array!75776 0))(
  ( (array!75777 (arr!36534 (Array (_ BitVec 32) ValueCell!14040)) (size!37071 (_ BitVec 32))) )
))
(declare-fun lt!528565 () array!75776)

(declare-fun getCurrentListMapNoExtraKeys!4947 (array!75774 array!75776 (_ BitVec 32) (_ BitVec 32) V!44459 V!44459 (_ BitVec 32) Int) ListLongMap!16999)

(assert (=> b!1172920 (= lt!528575 (getCurrentListMapNoExtraKeys!4947 lt!528568 lt!528565 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75776)

(assert (=> b!1172920 (= lt!528573 (getCurrentListMapNoExtraKeys!4947 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528567 () Unit!38581)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!752 (array!75774 array!75776 (_ BitVec 32) (_ BitVec 32) V!44459 V!44459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38581)

(assert (=> b!1172920 (= lt!528567 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!752 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172921 () Bool)

(declare-fun res!778908 () Bool)

(declare-fun e!666728 () Bool)

(assert (=> b!1172921 (=> (not res!778908) (not e!666728))))

(declare-datatypes ((List!25792 0))(
  ( (Nil!25789) (Cons!25788 (h!26997 (_ BitVec 64)) (t!37760 List!25792)) )
))
(declare-fun arrayNoDuplicates!0 (array!75774 (_ BitVec 32) List!25792) Bool)

(assert (=> b!1172921 (= res!778908 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25789))))

(declare-fun b!1172922 () Bool)

(declare-fun res!778907 () Bool)

(assert (=> b!1172922 (=> (not res!778907) (not e!666728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172922 (= res!778907 (validMask!0 mask!1564))))

(declare-fun res!778915 () Bool)

(assert (=> start!99426 (=> (not res!778915) (not e!666728))))

(assert (=> start!99426 (= res!778915 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37070 _keys!1208))))))

(assert (=> start!99426 e!666728))

(declare-fun tp_is_empty!29499 () Bool)

(assert (=> start!99426 tp_is_empty!29499))

(declare-fun array_inv!27800 (array!75774) Bool)

(assert (=> start!99426 (array_inv!27800 _keys!1208)))

(assert (=> start!99426 true))

(assert (=> start!99426 tp!87621))

(declare-fun e!666726 () Bool)

(declare-fun array_inv!27801 (array!75776) Bool)

(assert (=> start!99426 (and (array_inv!27801 _values!996) e!666726)))

(declare-fun b!1172923 () Bool)

(declare-fun e!666732 () Unit!38581)

(declare-fun Unit!38583 () Unit!38581)

(assert (=> b!1172923 (= e!666732 Unit!38583)))

(declare-fun lt!528576 () Unit!38581)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75774 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38581)

(assert (=> b!1172923 (= lt!528576 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1172923 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528571 () Unit!38581)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75774 (_ BitVec 32) (_ BitVec 32)) Unit!38581)

(assert (=> b!1172923 (= lt!528571 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172923 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25789)))

(declare-fun lt!528569 () Unit!38581)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75774 (_ BitVec 64) (_ BitVec 32) List!25792) Unit!38581)

(assert (=> b!1172923 (= lt!528569 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25789))))

(assert (=> b!1172923 false))

(declare-fun b!1172924 () Bool)

(declare-fun e!666727 () Bool)

(assert (=> b!1172924 (= e!666726 (and e!666727 mapRes!46076))))

(declare-fun condMapEmpty!46076 () Bool)

(declare-fun mapDefault!46076 () ValueCell!14040)

(assert (=> b!1172924 (= condMapEmpty!46076 (= (arr!36534 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14040)) mapDefault!46076)))))

(declare-fun b!1172925 () Bool)

(declare-fun res!778917 () Bool)

(assert (=> b!1172925 (=> (not res!778917) (not e!666722))))

(assert (=> b!1172925 (= res!778917 (arrayNoDuplicates!0 lt!528568 #b00000000000000000000000000000000 Nil!25789))))

(declare-fun b!1172926 () Bool)

(declare-fun res!778912 () Bool)

(assert (=> b!1172926 (=> (not res!778912) (not e!666728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75774 (_ BitVec 32)) Bool)

(assert (=> b!1172926 (= res!778912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172927 () Bool)

(assert (=> b!1172927 (= e!666725 e!666723)))

(declare-fun res!778909 () Bool)

(assert (=> b!1172927 (=> res!778909 e!666723)))

(assert (=> b!1172927 (= res!778909 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!528564 () ListLongMap!16999)

(assert (=> b!1172927 (= lt!528564 (getCurrentListMapNoExtraKeys!4947 lt!528568 lt!528565 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!528566 () V!44459)

(assert (=> b!1172927 (= lt!528565 (array!75777 (store (arr!36534 _values!996) i!673 (ValueCellFull!14040 lt!528566)) (size!37071 _values!996)))))

(declare-fun dynLambda!2934 (Int (_ BitVec 64)) V!44459)

(assert (=> b!1172927 (= lt!528566 (dynLambda!2934 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528574 () ListLongMap!16999)

(assert (=> b!1172927 (= lt!528574 (getCurrentListMapNoExtraKeys!4947 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172928 () Bool)

(assert (=> b!1172928 (= e!666731 true)))

(assert (=> b!1172928 (not (= (select (arr!36533 _keys!1208) from!1455) k0!934))))

(declare-fun lt!528572 () Unit!38581)

(assert (=> b!1172928 (= lt!528572 e!666732)))

(declare-fun c!116525 () Bool)

(assert (=> b!1172928 (= c!116525 (= (select (arr!36533 _keys!1208) from!1455) k0!934))))

(declare-fun e!666724 () Bool)

(assert (=> b!1172928 e!666724))

(declare-fun res!778919 () Bool)

(assert (=> b!1172928 (=> (not res!778919) (not e!666724))))

(declare-fun +!3750 (ListLongMap!16999 tuple2!19018) ListLongMap!16999)

(declare-fun get!18673 (ValueCell!14040 V!44459) V!44459)

(assert (=> b!1172928 (= res!778919 (= lt!528564 (+!3750 lt!528563 (tuple2!19019 (select (arr!36533 _keys!1208) from!1455) (get!18673 (select (arr!36534 _values!996) from!1455) lt!528566)))))))

(declare-fun b!1172929 () Bool)

(declare-fun e!666730 () Bool)

(assert (=> b!1172929 (= e!666730 tp_is_empty!29499)))

(declare-fun b!1172930 () Bool)

(declare-fun e!666729 () Bool)

(assert (=> b!1172930 (= e!666729 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172931 () Bool)

(assert (=> b!1172931 (= e!666728 e!666722)))

(declare-fun res!778911 () Bool)

(assert (=> b!1172931 (=> (not res!778911) (not e!666722))))

(assert (=> b!1172931 (= res!778911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528568 mask!1564))))

(assert (=> b!1172931 (= lt!528568 (array!75775 (store (arr!36533 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37070 _keys!1208)))))

(declare-fun b!1172932 () Bool)

(declare-fun res!778921 () Bool)

(assert (=> b!1172932 (=> (not res!778921) (not e!666728))))

(assert (=> b!1172932 (= res!778921 (validKeyInArray!0 k0!934))))

(declare-fun b!1172933 () Bool)

(assert (=> b!1172933 (= e!666724 e!666729)))

(declare-fun res!778914 () Bool)

(assert (=> b!1172933 (=> res!778914 e!666729)))

(assert (=> b!1172933 (= res!778914 (not (= (select (arr!36533 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1172934 () Bool)

(declare-fun res!778918 () Bool)

(assert (=> b!1172934 (=> (not res!778918) (not e!666728))))

(assert (=> b!1172934 (= res!778918 (and (= (size!37071 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37070 _keys!1208) (size!37071 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172935 () Bool)

(declare-fun res!778916 () Bool)

(assert (=> b!1172935 (=> (not res!778916) (not e!666728))))

(assert (=> b!1172935 (= res!778916 (= (select (arr!36533 _keys!1208) i!673) k0!934))))

(declare-fun b!1172936 () Bool)

(assert (=> b!1172936 (= e!666727 tp_is_empty!29499)))

(declare-fun mapNonEmpty!46076 () Bool)

(declare-fun tp!87622 () Bool)

(assert (=> mapNonEmpty!46076 (= mapRes!46076 (and tp!87622 e!666730))))

(declare-fun mapKey!46076 () (_ BitVec 32))

(declare-fun mapValue!46076 () ValueCell!14040)

(declare-fun mapRest!46076 () (Array (_ BitVec 32) ValueCell!14040))

(assert (=> mapNonEmpty!46076 (= (arr!36534 _values!996) (store mapRest!46076 mapKey!46076 mapValue!46076))))

(declare-fun b!1172937 () Bool)

(declare-fun res!778920 () Bool)

(assert (=> b!1172937 (=> (not res!778920) (not e!666728))))

(assert (=> b!1172937 (= res!778920 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37070 _keys!1208))))))

(declare-fun b!1172938 () Bool)

(declare-fun Unit!38584 () Unit!38581)

(assert (=> b!1172938 (= e!666732 Unit!38584)))

(assert (= (and start!99426 res!778915) b!1172922))

(assert (= (and b!1172922 res!778907) b!1172934))

(assert (= (and b!1172934 res!778918) b!1172926))

(assert (= (and b!1172926 res!778912) b!1172921))

(assert (= (and b!1172921 res!778908) b!1172937))

(assert (= (and b!1172937 res!778920) b!1172932))

(assert (= (and b!1172932 res!778921) b!1172935))

(assert (= (and b!1172935 res!778916) b!1172931))

(assert (= (and b!1172931 res!778911) b!1172925))

(assert (= (and b!1172925 res!778917) b!1172919))

(assert (= (and b!1172919 (not res!778910)) b!1172927))

(assert (= (and b!1172927 (not res!778909)) b!1172920))

(assert (= (and b!1172920 (not res!778913)) b!1172928))

(assert (= (and b!1172928 res!778919) b!1172933))

(assert (= (and b!1172933 (not res!778914)) b!1172930))

(assert (= (and b!1172928 c!116525) b!1172923))

(assert (= (and b!1172928 (not c!116525)) b!1172938))

(assert (= (and b!1172924 condMapEmpty!46076) mapIsEmpty!46076))

(assert (= (and b!1172924 (not condMapEmpty!46076)) mapNonEmpty!46076))

(get-info :version)

(assert (= (and mapNonEmpty!46076 ((_ is ValueCellFull!14040) mapValue!46076)) b!1172929))

(assert (= (and b!1172924 ((_ is ValueCellFull!14040) mapDefault!46076)) b!1172936))

(assert (= start!99426 b!1172924))

(declare-fun b_lambda!20131 () Bool)

(assert (=> (not b_lambda!20131) (not b!1172927)))

(declare-fun t!37758 () Bool)

(declare-fun tb!9789 () Bool)

(assert (=> (and start!99426 (= defaultEntry!1004 defaultEntry!1004) t!37758) tb!9789))

(declare-fun result!20137 () Bool)

(assert (=> tb!9789 (= result!20137 tp_is_empty!29499)))

(assert (=> b!1172927 t!37758))

(declare-fun b_and!40821 () Bool)

(assert (= b_and!40819 (and (=> t!37758 result!20137) b_and!40821)))

(declare-fun m!1080801 () Bool)

(assert (=> b!1172920 m!1080801))

(declare-fun m!1080803 () Bool)

(assert (=> b!1172920 m!1080803))

(declare-fun m!1080805 () Bool)

(assert (=> b!1172920 m!1080805))

(declare-fun m!1080807 () Bool)

(assert (=> b!1172920 m!1080807))

(assert (=> b!1172920 m!1080805))

(declare-fun m!1080809 () Bool)

(assert (=> b!1172920 m!1080809))

(declare-fun m!1080811 () Bool)

(assert (=> b!1172920 m!1080811))

(declare-fun m!1080813 () Bool)

(assert (=> b!1172926 m!1080813))

(declare-fun m!1080815 () Bool)

(assert (=> b!1172919 m!1080815))

(declare-fun m!1080817 () Bool)

(assert (=> b!1172919 m!1080817))

(assert (=> b!1172928 m!1080805))

(declare-fun m!1080819 () Bool)

(assert (=> b!1172928 m!1080819))

(assert (=> b!1172928 m!1080819))

(declare-fun m!1080821 () Bool)

(assert (=> b!1172928 m!1080821))

(declare-fun m!1080823 () Bool)

(assert (=> b!1172928 m!1080823))

(declare-fun m!1080825 () Bool)

(assert (=> b!1172927 m!1080825))

(declare-fun m!1080827 () Bool)

(assert (=> b!1172927 m!1080827))

(declare-fun m!1080829 () Bool)

(assert (=> b!1172927 m!1080829))

(declare-fun m!1080831 () Bool)

(assert (=> b!1172927 m!1080831))

(declare-fun m!1080833 () Bool)

(assert (=> b!1172925 m!1080833))

(declare-fun m!1080835 () Bool)

(assert (=> b!1172923 m!1080835))

(declare-fun m!1080837 () Bool)

(assert (=> b!1172923 m!1080837))

(declare-fun m!1080839 () Bool)

(assert (=> b!1172923 m!1080839))

(declare-fun m!1080841 () Bool)

(assert (=> b!1172923 m!1080841))

(declare-fun m!1080843 () Bool)

(assert (=> b!1172923 m!1080843))

(declare-fun m!1080845 () Bool)

(assert (=> b!1172935 m!1080845))

(declare-fun m!1080847 () Bool)

(assert (=> b!1172931 m!1080847))

(declare-fun m!1080849 () Bool)

(assert (=> b!1172931 m!1080849))

(declare-fun m!1080851 () Bool)

(assert (=> b!1172921 m!1080851))

(declare-fun m!1080853 () Bool)

(assert (=> b!1172930 m!1080853))

(declare-fun m!1080855 () Bool)

(assert (=> start!99426 m!1080855))

(declare-fun m!1080857 () Bool)

(assert (=> start!99426 m!1080857))

(declare-fun m!1080859 () Bool)

(assert (=> b!1172922 m!1080859))

(assert (=> b!1172933 m!1080805))

(declare-fun m!1080861 () Bool)

(assert (=> mapNonEmpty!46076 m!1080861))

(declare-fun m!1080863 () Bool)

(assert (=> b!1172932 m!1080863))

(check-sat (not b_next!24969) b_and!40821 (not mapNonEmpty!46076) (not b!1172922) (not b!1172923) (not b!1172919) (not b!1172925) (not b!1172921) (not b!1172932) (not b!1172931) (not b!1172927) (not b!1172920) tp_is_empty!29499 (not b!1172930) (not b_lambda!20131) (not start!99426) (not b!1172928) (not b!1172926))
(check-sat b_and!40821 (not b_next!24969))
