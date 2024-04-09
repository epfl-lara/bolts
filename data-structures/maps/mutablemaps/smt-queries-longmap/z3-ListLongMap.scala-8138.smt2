; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99732 () Bool)

(assert start!99732)

(declare-fun b_free!25275 () Bool)

(declare-fun b_next!25275 () Bool)

(assert (=> start!99732 (= b_free!25275 (not b_next!25275))))

(declare-fun tp!88539 () Bool)

(declare-fun b_and!41431 () Bool)

(assert (=> start!99732 (= tp!88539 b_and!41431)))

(declare-fun b!1182747 () Bool)

(declare-fun res!786139 () Bool)

(declare-fun e!672493 () Bool)

(assert (=> b!1182747 (=> (not res!786139) (not e!672493))))

(declare-datatypes ((array!76378 0))(
  ( (array!76379 (arr!36835 (Array (_ BitVec 32) (_ BitVec 64))) (size!37372 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76378)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182747 (= res!786139 (= (select (arr!36835 _keys!1208) i!673) k0!934))))

(declare-fun b!1182748 () Bool)

(declare-fun e!672486 () Bool)

(declare-fun e!672484 () Bool)

(assert (=> b!1182748 (= e!672486 e!672484)))

(declare-fun res!786145 () Bool)

(assert (=> b!1182748 (=> res!786145 e!672484)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1182748 (= res!786145 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44867 0))(
  ( (V!44868 (val!14959 Int)) )
))
(declare-fun zeroValue!944 () V!44867)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun minValue!944 () V!44867)

(declare-datatypes ((tuple2!19292 0))(
  ( (tuple2!19293 (_1!9656 (_ BitVec 64)) (_2!9656 V!44867)) )
))
(declare-datatypes ((List!26054 0))(
  ( (Nil!26051) (Cons!26050 (h!27259 tuple2!19292) (t!38328 List!26054)) )
))
(declare-datatypes ((ListLongMap!17273 0))(
  ( (ListLongMap!17274 (toList!8652 List!26054)) )
))
(declare-fun lt!535554 () ListLongMap!17273)

(declare-datatypes ((ValueCell!14193 0))(
  ( (ValueCellFull!14193 (v!17598 V!44867)) (EmptyCell!14193) )
))
(declare-datatypes ((array!76380 0))(
  ( (array!76381 (arr!36836 (Array (_ BitVec 32) ValueCell!14193)) (size!37373 (_ BitVec 32))) )
))
(declare-fun lt!535544 () array!76380)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!535547 () array!76378)

(declare-fun getCurrentListMapNoExtraKeys!5074 (array!76378 array!76380 (_ BitVec 32) (_ BitVec 32) V!44867 V!44867 (_ BitVec 32) Int) ListLongMap!17273)

(assert (=> b!1182748 (= lt!535554 (getCurrentListMapNoExtraKeys!5074 lt!535547 lt!535544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!535537 () V!44867)

(declare-fun _values!996 () array!76380)

(assert (=> b!1182748 (= lt!535544 (array!76381 (store (arr!36836 _values!996) i!673 (ValueCellFull!14193 lt!535537)) (size!37373 _values!996)))))

(declare-fun dynLambda!3041 (Int (_ BitVec 64)) V!44867)

(assert (=> b!1182748 (= lt!535537 (dynLambda!3041 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!535539 () ListLongMap!17273)

(assert (=> b!1182748 (= lt!535539 (getCurrentListMapNoExtraKeys!5074 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182749 () Bool)

(declare-fun e!672485 () Bool)

(assert (=> b!1182749 (= e!672484 e!672485)))

(declare-fun res!786140 () Bool)

(assert (=> b!1182749 (=> res!786140 e!672485)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182749 (= res!786140 (not (validKeyInArray!0 (select (arr!36835 _keys!1208) from!1455))))))

(declare-fun lt!535548 () ListLongMap!17273)

(declare-fun lt!535536 () ListLongMap!17273)

(assert (=> b!1182749 (= lt!535548 lt!535536)))

(declare-fun lt!535546 () ListLongMap!17273)

(declare-fun -!1641 (ListLongMap!17273 (_ BitVec 64)) ListLongMap!17273)

(assert (=> b!1182749 (= lt!535536 (-!1641 lt!535546 k0!934))))

(assert (=> b!1182749 (= lt!535548 (getCurrentListMapNoExtraKeys!5074 lt!535547 lt!535544 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182749 (= lt!535546 (getCurrentListMapNoExtraKeys!5074 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!39061 0))(
  ( (Unit!39062) )
))
(declare-fun lt!535545 () Unit!39061)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!861 (array!76378 array!76380 (_ BitVec 32) (_ BitVec 32) V!44867 V!44867 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39061)

(assert (=> b!1182749 (= lt!535545 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!861 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182750 () Bool)

(declare-fun e!672489 () Bool)

(assert (=> b!1182750 (= e!672489 (not e!672486))))

(declare-fun res!786146 () Bool)

(assert (=> b!1182750 (=> res!786146 e!672486)))

(assert (=> b!1182750 (= res!786146 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182750 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!535543 () Unit!39061)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76378 (_ BitVec 64) (_ BitVec 32)) Unit!39061)

(assert (=> b!1182750 (= lt!535543 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182751 () Bool)

(declare-fun res!786148 () Bool)

(assert (=> b!1182751 (=> (not res!786148) (not e!672493))))

(assert (=> b!1182751 (= res!786148 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37372 _keys!1208))))))

(declare-fun b!1182753 () Bool)

(declare-fun res!786147 () Bool)

(assert (=> b!1182753 (=> (not res!786147) (not e!672489))))

(declare-datatypes ((List!26055 0))(
  ( (Nil!26052) (Cons!26051 (h!27260 (_ BitVec 64)) (t!38329 List!26055)) )
))
(declare-fun arrayNoDuplicates!0 (array!76378 (_ BitVec 32) List!26055) Bool)

(assert (=> b!1182753 (= res!786147 (arrayNoDuplicates!0 lt!535547 #b00000000000000000000000000000000 Nil!26052))))

(declare-fun b!1182754 () Bool)

(declare-fun res!786134 () Bool)

(assert (=> b!1182754 (=> (not res!786134) (not e!672493))))

(assert (=> b!1182754 (= res!786134 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26052))))

(declare-fun mapIsEmpty!46535 () Bool)

(declare-fun mapRes!46535 () Bool)

(assert (=> mapIsEmpty!46535 mapRes!46535))

(declare-fun b!1182755 () Bool)

(declare-fun e!672491 () Unit!39061)

(declare-fun Unit!39063 () Unit!39061)

(assert (=> b!1182755 (= e!672491 Unit!39063)))

(declare-fun b!1182756 () Bool)

(declare-fun Unit!39064 () Unit!39061)

(assert (=> b!1182756 (= e!672491 Unit!39064)))

(declare-fun lt!535553 () Unit!39061)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76378 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39061)

(assert (=> b!1182756 (= lt!535553 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1182756 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535551 () Unit!39061)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76378 (_ BitVec 32) (_ BitVec 32)) Unit!39061)

(assert (=> b!1182756 (= lt!535551 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182756 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26052)))

(declare-fun lt!535538 () Unit!39061)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76378 (_ BitVec 64) (_ BitVec 32) List!26055) Unit!39061)

(assert (=> b!1182756 (= lt!535538 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26052))))

(assert (=> b!1182756 false))

(declare-fun b!1182757 () Bool)

(declare-fun e!672492 () Bool)

(declare-fun e!672487 () Bool)

(assert (=> b!1182757 (= e!672492 e!672487)))

(declare-fun res!786144 () Bool)

(assert (=> b!1182757 (=> res!786144 e!672487)))

(assert (=> b!1182757 (= res!786144 (not (= (select (arr!36835 _keys!1208) from!1455) k0!934)))))

(declare-fun mapNonEmpty!46535 () Bool)

(declare-fun tp!88540 () Bool)

(declare-fun e!672488 () Bool)

(assert (=> mapNonEmpty!46535 (= mapRes!46535 (and tp!88540 e!672488))))

(declare-fun mapKey!46535 () (_ BitVec 32))

(declare-fun mapValue!46535 () ValueCell!14193)

(declare-fun mapRest!46535 () (Array (_ BitVec 32) ValueCell!14193))

(assert (=> mapNonEmpty!46535 (= (arr!36836 _values!996) (store mapRest!46535 mapKey!46535 mapValue!46535))))

(declare-fun b!1182758 () Bool)

(declare-fun res!786138 () Bool)

(assert (=> b!1182758 (=> (not res!786138) (not e!672493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182758 (= res!786138 (validMask!0 mask!1564))))

(declare-fun b!1182759 () Bool)

(declare-fun tp_is_empty!29805 () Bool)

(assert (=> b!1182759 (= e!672488 tp_is_empty!29805)))

(declare-fun b!1182760 () Bool)

(assert (=> b!1182760 (= e!672487 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182761 () Bool)

(declare-fun res!786136 () Bool)

(assert (=> b!1182761 (=> (not res!786136) (not e!672493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76378 (_ BitVec 32)) Bool)

(assert (=> b!1182761 (= res!786136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182762 () Bool)

(declare-fun res!786143 () Bool)

(assert (=> b!1182762 (=> (not res!786143) (not e!672493))))

(assert (=> b!1182762 (= res!786143 (validKeyInArray!0 k0!934))))

(declare-fun b!1182763 () Bool)

(assert (=> b!1182763 (= e!672485 true)))

(declare-fun lt!535540 () ListLongMap!17273)

(declare-fun lt!535542 () ListLongMap!17273)

(assert (=> b!1182763 (= (-!1641 lt!535540 k0!934) lt!535542)))

(declare-fun lt!535550 () V!44867)

(declare-fun lt!535541 () Unit!39061)

(declare-fun addRemoveCommutativeForDiffKeys!159 (ListLongMap!17273 (_ BitVec 64) V!44867 (_ BitVec 64)) Unit!39061)

(assert (=> b!1182763 (= lt!535541 (addRemoveCommutativeForDiffKeys!159 lt!535546 (select (arr!36835 _keys!1208) from!1455) lt!535550 k0!934))))

(assert (=> b!1182763 (and (= lt!535539 lt!535540) (= lt!535536 lt!535548))))

(declare-fun lt!535549 () tuple2!19292)

(declare-fun +!3869 (ListLongMap!17273 tuple2!19292) ListLongMap!17273)

(assert (=> b!1182763 (= lt!535540 (+!3869 lt!535546 lt!535549))))

(assert (=> b!1182763 (not (= (select (arr!36835 _keys!1208) from!1455) k0!934))))

(declare-fun lt!535552 () Unit!39061)

(assert (=> b!1182763 (= lt!535552 e!672491)))

(declare-fun c!116984 () Bool)

(assert (=> b!1182763 (= c!116984 (= (select (arr!36835 _keys!1208) from!1455) k0!934))))

(assert (=> b!1182763 e!672492))

(declare-fun res!786142 () Bool)

(assert (=> b!1182763 (=> (not res!786142) (not e!672492))))

(assert (=> b!1182763 (= res!786142 (= lt!535554 lt!535542))))

(assert (=> b!1182763 (= lt!535542 (+!3869 lt!535536 lt!535549))))

(assert (=> b!1182763 (= lt!535549 (tuple2!19293 (select (arr!36835 _keys!1208) from!1455) lt!535550))))

(declare-fun get!18883 (ValueCell!14193 V!44867) V!44867)

(assert (=> b!1182763 (= lt!535550 (get!18883 (select (arr!36836 _values!996) from!1455) lt!535537))))

(declare-fun b!1182764 () Bool)

(declare-fun e!672490 () Bool)

(declare-fun e!672483 () Bool)

(assert (=> b!1182764 (= e!672490 (and e!672483 mapRes!46535))))

(declare-fun condMapEmpty!46535 () Bool)

(declare-fun mapDefault!46535 () ValueCell!14193)

(assert (=> b!1182764 (= condMapEmpty!46535 (= (arr!36836 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14193)) mapDefault!46535)))))

(declare-fun res!786141 () Bool)

(assert (=> start!99732 (=> (not res!786141) (not e!672493))))

(assert (=> start!99732 (= res!786141 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37372 _keys!1208))))))

(assert (=> start!99732 e!672493))

(assert (=> start!99732 tp_is_empty!29805))

(declare-fun array_inv!28000 (array!76378) Bool)

(assert (=> start!99732 (array_inv!28000 _keys!1208)))

(assert (=> start!99732 true))

(assert (=> start!99732 tp!88539))

(declare-fun array_inv!28001 (array!76380) Bool)

(assert (=> start!99732 (and (array_inv!28001 _values!996) e!672490)))

(declare-fun b!1182752 () Bool)

(declare-fun res!786135 () Bool)

(assert (=> b!1182752 (=> (not res!786135) (not e!672493))))

(assert (=> b!1182752 (= res!786135 (and (= (size!37373 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37372 _keys!1208) (size!37373 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182765 () Bool)

(assert (=> b!1182765 (= e!672493 e!672489)))

(declare-fun res!786137 () Bool)

(assert (=> b!1182765 (=> (not res!786137) (not e!672489))))

(assert (=> b!1182765 (= res!786137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535547 mask!1564))))

(assert (=> b!1182765 (= lt!535547 (array!76379 (store (arr!36835 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37372 _keys!1208)))))

(declare-fun b!1182766 () Bool)

(assert (=> b!1182766 (= e!672483 tp_is_empty!29805)))

(assert (= (and start!99732 res!786141) b!1182758))

(assert (= (and b!1182758 res!786138) b!1182752))

(assert (= (and b!1182752 res!786135) b!1182761))

(assert (= (and b!1182761 res!786136) b!1182754))

(assert (= (and b!1182754 res!786134) b!1182751))

(assert (= (and b!1182751 res!786148) b!1182762))

(assert (= (and b!1182762 res!786143) b!1182747))

(assert (= (and b!1182747 res!786139) b!1182765))

(assert (= (and b!1182765 res!786137) b!1182753))

(assert (= (and b!1182753 res!786147) b!1182750))

(assert (= (and b!1182750 (not res!786146)) b!1182748))

(assert (= (and b!1182748 (not res!786145)) b!1182749))

(assert (= (and b!1182749 (not res!786140)) b!1182763))

(assert (= (and b!1182763 res!786142) b!1182757))

(assert (= (and b!1182757 (not res!786144)) b!1182760))

(assert (= (and b!1182763 c!116984) b!1182756))

(assert (= (and b!1182763 (not c!116984)) b!1182755))

(assert (= (and b!1182764 condMapEmpty!46535) mapIsEmpty!46535))

(assert (= (and b!1182764 (not condMapEmpty!46535)) mapNonEmpty!46535))

(get-info :version)

(assert (= (and mapNonEmpty!46535 ((_ is ValueCellFull!14193) mapValue!46535)) b!1182759))

(assert (= (and b!1182764 ((_ is ValueCellFull!14193) mapDefault!46535)) b!1182766))

(assert (= start!99732 b!1182764))

(declare-fun b_lambda!20437 () Bool)

(assert (=> (not b_lambda!20437) (not b!1182748)))

(declare-fun t!38327 () Bool)

(declare-fun tb!10095 () Bool)

(assert (=> (and start!99732 (= defaultEntry!1004 defaultEntry!1004) t!38327) tb!10095))

(declare-fun result!20749 () Bool)

(assert (=> tb!10095 (= result!20749 tp_is_empty!29805)))

(assert (=> b!1182748 t!38327))

(declare-fun b_and!41433 () Bool)

(assert (= b_and!41431 (and (=> t!38327 result!20749) b_and!41433)))

(declare-fun m!1090875 () Bool)

(assert (=> b!1182756 m!1090875))

(declare-fun m!1090877 () Bool)

(assert (=> b!1182756 m!1090877))

(declare-fun m!1090879 () Bool)

(assert (=> b!1182756 m!1090879))

(declare-fun m!1090881 () Bool)

(assert (=> b!1182756 m!1090881))

(declare-fun m!1090883 () Bool)

(assert (=> b!1182756 m!1090883))

(declare-fun m!1090885 () Bool)

(assert (=> b!1182753 m!1090885))

(declare-fun m!1090887 () Bool)

(assert (=> mapNonEmpty!46535 m!1090887))

(declare-fun m!1090889 () Bool)

(assert (=> b!1182750 m!1090889))

(declare-fun m!1090891 () Bool)

(assert (=> b!1182750 m!1090891))

(declare-fun m!1090893 () Bool)

(assert (=> b!1182758 m!1090893))

(declare-fun m!1090895 () Bool)

(assert (=> b!1182765 m!1090895))

(declare-fun m!1090897 () Bool)

(assert (=> b!1182765 m!1090897))

(declare-fun m!1090899 () Bool)

(assert (=> b!1182763 m!1090899))

(declare-fun m!1090901 () Bool)

(assert (=> b!1182763 m!1090901))

(declare-fun m!1090903 () Bool)

(assert (=> b!1182763 m!1090903))

(declare-fun m!1090905 () Bool)

(assert (=> b!1182763 m!1090905))

(declare-fun m!1090907 () Bool)

(assert (=> b!1182763 m!1090907))

(declare-fun m!1090909 () Bool)

(assert (=> b!1182763 m!1090909))

(assert (=> b!1182763 m!1090899))

(declare-fun m!1090911 () Bool)

(assert (=> b!1182763 m!1090911))

(assert (=> b!1182763 m!1090907))

(declare-fun m!1090913 () Bool)

(assert (=> b!1182762 m!1090913))

(assert (=> b!1182757 m!1090907))

(declare-fun m!1090915 () Bool)

(assert (=> b!1182747 m!1090915))

(declare-fun m!1090917 () Bool)

(assert (=> start!99732 m!1090917))

(declare-fun m!1090919 () Bool)

(assert (=> start!99732 m!1090919))

(declare-fun m!1090921 () Bool)

(assert (=> b!1182761 m!1090921))

(declare-fun m!1090923 () Bool)

(assert (=> b!1182760 m!1090923))

(declare-fun m!1090925 () Bool)

(assert (=> b!1182754 m!1090925))

(declare-fun m!1090927 () Bool)

(assert (=> b!1182748 m!1090927))

(declare-fun m!1090929 () Bool)

(assert (=> b!1182748 m!1090929))

(declare-fun m!1090931 () Bool)

(assert (=> b!1182748 m!1090931))

(declare-fun m!1090933 () Bool)

(assert (=> b!1182748 m!1090933))

(declare-fun m!1090935 () Bool)

(assert (=> b!1182749 m!1090935))

(declare-fun m!1090937 () Bool)

(assert (=> b!1182749 m!1090937))

(assert (=> b!1182749 m!1090907))

(declare-fun m!1090939 () Bool)

(assert (=> b!1182749 m!1090939))

(declare-fun m!1090941 () Bool)

(assert (=> b!1182749 m!1090941))

(assert (=> b!1182749 m!1090907))

(declare-fun m!1090943 () Bool)

(assert (=> b!1182749 m!1090943))

(check-sat (not b!1182758) (not mapNonEmpty!46535) (not b_lambda!20437) (not b!1182762) (not b!1182750) (not b!1182765) (not b!1182748) (not b!1182753) (not b!1182749) b_and!41433 (not b!1182763) (not b!1182761) tp_is_empty!29805 (not b!1182756) (not b_next!25275) (not b!1182760) (not start!99732) (not b!1182754))
(check-sat b_and!41433 (not b_next!25275))
