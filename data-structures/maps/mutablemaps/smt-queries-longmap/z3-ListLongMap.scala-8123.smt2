; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99642 () Bool)

(assert start!99642)

(declare-fun b_free!25185 () Bool)

(declare-fun b_next!25185 () Bool)

(assert (=> start!99642 (= b_free!25185 (not b_next!25185))))

(declare-fun tp!88269 () Bool)

(declare-fun b_and!41251 () Bool)

(assert (=> start!99642 (= tp!88269 b_and!41251)))

(declare-fun b!1179805 () Bool)

(declare-fun res!783973 () Bool)

(declare-fun e!670793 () Bool)

(assert (=> b!1179805 (=> (not res!783973) (not e!670793))))

(declare-datatypes ((array!76202 0))(
  ( (array!76203 (arr!36747 (Array (_ BitVec 32) (_ BitVec 64))) (size!37284 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76202)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76202 (_ BitVec 32)) Bool)

(assert (=> b!1179805 (= res!783973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun e!670792 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1179806 () Bool)

(declare-fun arrayContainsKey!0 (array!76202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179806 (= e!670792 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1179807 () Bool)

(declare-fun e!670791 () Bool)

(declare-fun tp_is_empty!29715 () Bool)

(assert (=> b!1179807 (= e!670791 tp_is_empty!29715)))

(declare-fun b!1179808 () Bool)

(declare-fun e!670786 () Bool)

(assert (=> b!1179808 (= e!670786 true)))

(declare-fun e!670798 () Bool)

(assert (=> b!1179808 e!670798))

(declare-fun res!783967 () Bool)

(assert (=> b!1179808 (=> (not res!783967) (not e!670798))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179808 (= res!783967 (not (= (select (arr!36747 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!38927 0))(
  ( (Unit!38928) )
))
(declare-fun lt!533281 () Unit!38927)

(declare-fun e!670794 () Unit!38927)

(assert (=> b!1179808 (= lt!533281 e!670794)))

(declare-fun c!116849 () Bool)

(assert (=> b!1179808 (= c!116849 (= (select (arr!36747 _keys!1208) from!1455) k0!934))))

(declare-fun e!670790 () Bool)

(assert (=> b!1179808 e!670790))

(declare-fun res!783970 () Bool)

(assert (=> b!1179808 (=> (not res!783970) (not e!670790))))

(declare-datatypes ((V!44747 0))(
  ( (V!44748 (val!14914 Int)) )
))
(declare-datatypes ((tuple2!19218 0))(
  ( (tuple2!19219 (_1!9619 (_ BitVec 64)) (_2!9619 V!44747)) )
))
(declare-datatypes ((List!25982 0))(
  ( (Nil!25979) (Cons!25978 (h!27187 tuple2!19218) (t!38166 List!25982)) )
))
(declare-datatypes ((ListLongMap!17199 0))(
  ( (ListLongMap!17200 (toList!8615 List!25982)) )
))
(declare-fun lt!533284 () ListLongMap!17199)

(declare-fun lt!533289 () ListLongMap!17199)

(declare-fun lt!533279 () tuple2!19218)

(declare-fun +!3835 (ListLongMap!17199 tuple2!19218) ListLongMap!17199)

(assert (=> b!1179808 (= res!783970 (= lt!533289 (+!3835 lt!533284 lt!533279)))))

(declare-fun lt!533275 () V!44747)

(declare-datatypes ((ValueCell!14148 0))(
  ( (ValueCellFull!14148 (v!17553 V!44747)) (EmptyCell!14148) )
))
(declare-datatypes ((array!76204 0))(
  ( (array!76205 (arr!36748 (Array (_ BitVec 32) ValueCell!14148)) (size!37285 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76204)

(declare-fun get!18822 (ValueCell!14148 V!44747) V!44747)

(assert (=> b!1179808 (= lt!533279 (tuple2!19219 (select (arr!36747 _keys!1208) from!1455) (get!18822 (select (arr!36748 _values!996) from!1455) lt!533275)))))

(declare-fun res!783960 () Bool)

(assert (=> start!99642 (=> (not res!783960) (not e!670793))))

(assert (=> start!99642 (= res!783960 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37284 _keys!1208))))))

(assert (=> start!99642 e!670793))

(assert (=> start!99642 tp_is_empty!29715))

(declare-fun array_inv!27944 (array!76202) Bool)

(assert (=> start!99642 (array_inv!27944 _keys!1208)))

(assert (=> start!99642 true))

(assert (=> start!99642 tp!88269))

(declare-fun e!670796 () Bool)

(declare-fun array_inv!27945 (array!76204) Bool)

(assert (=> start!99642 (and (array_inv!27945 _values!996) e!670796)))

(declare-fun b!1179809 () Bool)

(declare-fun res!783964 () Bool)

(assert (=> b!1179809 (=> (not res!783964) (not e!670793))))

(declare-datatypes ((List!25983 0))(
  ( (Nil!25980) (Cons!25979 (h!27188 (_ BitVec 64)) (t!38167 List!25983)) )
))
(declare-fun arrayNoDuplicates!0 (array!76202 (_ BitVec 32) List!25983) Bool)

(assert (=> b!1179809 (= res!783964 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25980))))

(declare-fun b!1179810 () Bool)

(declare-fun res!783966 () Bool)

(assert (=> b!1179810 (=> (not res!783966) (not e!670798))))

(declare-fun lt!533280 () ListLongMap!17199)

(declare-fun lt!533285 () ListLongMap!17199)

(assert (=> b!1179810 (= res!783966 (= lt!533280 (+!3835 lt!533285 lt!533279)))))

(declare-fun b!1179811 () Bool)

(declare-fun res!783959 () Bool)

(assert (=> b!1179811 (=> (not res!783959) (not e!670793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179811 (= res!783959 (validMask!0 mask!1564))))

(declare-fun b!1179812 () Bool)

(declare-fun Unit!38929 () Unit!38927)

(assert (=> b!1179812 (= e!670794 Unit!38929)))

(declare-fun lt!533278 () Unit!38927)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38927)

(assert (=> b!1179812 (= lt!533278 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1179812 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533286 () Unit!38927)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76202 (_ BitVec 32) (_ BitVec 32)) Unit!38927)

(assert (=> b!1179812 (= lt!533286 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1179812 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25980)))

(declare-fun lt!533282 () Unit!38927)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76202 (_ BitVec 64) (_ BitVec 32) List!25983) Unit!38927)

(assert (=> b!1179812 (= lt!533282 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25980))))

(assert (=> b!1179812 false))

(declare-fun b!1179813 () Bool)

(assert (=> b!1179813 (= e!670790 e!670792)))

(declare-fun res!783968 () Bool)

(assert (=> b!1179813 (=> res!783968 e!670792)))

(assert (=> b!1179813 (= res!783968 (not (= (select (arr!36747 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1179814 () Bool)

(declare-fun e!670787 () Bool)

(declare-fun e!670788 () Bool)

(assert (=> b!1179814 (= e!670787 (not e!670788))))

(declare-fun res!783972 () Bool)

(assert (=> b!1179814 (=> res!783972 e!670788)))

(assert (=> b!1179814 (= res!783972 (bvsgt from!1455 i!673))))

(assert (=> b!1179814 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533287 () Unit!38927)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76202 (_ BitVec 64) (_ BitVec 32)) Unit!38927)

(assert (=> b!1179814 (= lt!533287 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1179815 () Bool)

(declare-fun res!783963 () Bool)

(assert (=> b!1179815 (=> (not res!783963) (not e!670793))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179815 (= res!783963 (validKeyInArray!0 k0!934))))

(declare-fun b!1179816 () Bool)

(declare-fun res!783969 () Bool)

(assert (=> b!1179816 (=> (not res!783969) (not e!670793))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1179816 (= res!783969 (and (= (size!37285 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37284 _keys!1208) (size!37285 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!46400 () Bool)

(declare-fun mapRes!46400 () Bool)

(assert (=> mapIsEmpty!46400 mapRes!46400))

(declare-fun b!1179817 () Bool)

(declare-fun res!783957 () Bool)

(assert (=> b!1179817 (=> (not res!783957) (not e!670793))))

(assert (=> b!1179817 (= res!783957 (= (select (arr!36747 _keys!1208) i!673) k0!934))))

(declare-fun b!1179818 () Bool)

(declare-fun e!670789 () Bool)

(assert (=> b!1179818 (= e!670789 e!670786)))

(declare-fun res!783961 () Bool)

(assert (=> b!1179818 (=> res!783961 e!670786)))

(assert (=> b!1179818 (= res!783961 (not (validKeyInArray!0 (select (arr!36747 _keys!1208) from!1455))))))

(declare-fun lt!533277 () ListLongMap!17199)

(assert (=> b!1179818 (= lt!533277 lt!533284)))

(declare-fun -!1609 (ListLongMap!17199 (_ BitVec 64)) ListLongMap!17199)

(assert (=> b!1179818 (= lt!533284 (-!1609 lt!533285 k0!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!533276 () array!76202)

(declare-fun minValue!944 () V!44747)

(declare-fun lt!533283 () array!76204)

(declare-fun zeroValue!944 () V!44747)

(declare-fun getCurrentListMapNoExtraKeys!5043 (array!76202 array!76204 (_ BitVec 32) (_ BitVec 32) V!44747 V!44747 (_ BitVec 32) Int) ListLongMap!17199)

(assert (=> b!1179818 (= lt!533277 (getCurrentListMapNoExtraKeys!5043 lt!533276 lt!533283 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179818 (= lt!533285 (getCurrentListMapNoExtraKeys!5043 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533288 () Unit!38927)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!833 (array!76202 array!76204 (_ BitVec 32) (_ BitVec 32) V!44747 V!44747 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38927)

(assert (=> b!1179818 (= lt!533288 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!833 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179819 () Bool)

(assert (=> b!1179819 (= e!670793 e!670787)))

(declare-fun res!783965 () Bool)

(assert (=> b!1179819 (=> (not res!783965) (not e!670787))))

(assert (=> b!1179819 (= res!783965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533276 mask!1564))))

(assert (=> b!1179819 (= lt!533276 (array!76203 (store (arr!36747 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37284 _keys!1208)))))

(declare-fun b!1179820 () Bool)

(declare-fun Unit!38930 () Unit!38927)

(assert (=> b!1179820 (= e!670794 Unit!38930)))

(declare-fun b!1179821 () Bool)

(declare-fun res!783971 () Bool)

(assert (=> b!1179821 (=> (not res!783971) (not e!670793))))

(assert (=> b!1179821 (= res!783971 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37284 _keys!1208))))))

(declare-fun b!1179822 () Bool)

(declare-fun e!670797 () Bool)

(assert (=> b!1179822 (= e!670797 tp_is_empty!29715)))

(declare-fun b!1179823 () Bool)

(assert (=> b!1179823 (= e!670798 (= lt!533284 lt!533277))))

(declare-fun mapNonEmpty!46400 () Bool)

(declare-fun tp!88270 () Bool)

(assert (=> mapNonEmpty!46400 (= mapRes!46400 (and tp!88270 e!670791))))

(declare-fun mapValue!46400 () ValueCell!14148)

(declare-fun mapKey!46400 () (_ BitVec 32))

(declare-fun mapRest!46400 () (Array (_ BitVec 32) ValueCell!14148))

(assert (=> mapNonEmpty!46400 (= (arr!36748 _values!996) (store mapRest!46400 mapKey!46400 mapValue!46400))))

(declare-fun b!1179824 () Bool)

(declare-fun res!783958 () Bool)

(assert (=> b!1179824 (=> (not res!783958) (not e!670787))))

(assert (=> b!1179824 (= res!783958 (arrayNoDuplicates!0 lt!533276 #b00000000000000000000000000000000 Nil!25980))))

(declare-fun b!1179825 () Bool)

(assert (=> b!1179825 (= e!670796 (and e!670797 mapRes!46400))))

(declare-fun condMapEmpty!46400 () Bool)

(declare-fun mapDefault!46400 () ValueCell!14148)

(assert (=> b!1179825 (= condMapEmpty!46400 (= (arr!36748 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14148)) mapDefault!46400)))))

(declare-fun b!1179826 () Bool)

(assert (=> b!1179826 (= e!670788 e!670789)))

(declare-fun res!783962 () Bool)

(assert (=> b!1179826 (=> res!783962 e!670789)))

(assert (=> b!1179826 (= res!783962 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1179826 (= lt!533289 (getCurrentListMapNoExtraKeys!5043 lt!533276 lt!533283 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1179826 (= lt!533283 (array!76205 (store (arr!36748 _values!996) i!673 (ValueCellFull!14148 lt!533275)) (size!37285 _values!996)))))

(declare-fun dynLambda!3015 (Int (_ BitVec 64)) V!44747)

(assert (=> b!1179826 (= lt!533275 (dynLambda!3015 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1179826 (= lt!533280 (getCurrentListMapNoExtraKeys!5043 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!99642 res!783960) b!1179811))

(assert (= (and b!1179811 res!783959) b!1179816))

(assert (= (and b!1179816 res!783969) b!1179805))

(assert (= (and b!1179805 res!783973) b!1179809))

(assert (= (and b!1179809 res!783964) b!1179821))

(assert (= (and b!1179821 res!783971) b!1179815))

(assert (= (and b!1179815 res!783963) b!1179817))

(assert (= (and b!1179817 res!783957) b!1179819))

(assert (= (and b!1179819 res!783965) b!1179824))

(assert (= (and b!1179824 res!783958) b!1179814))

(assert (= (and b!1179814 (not res!783972)) b!1179826))

(assert (= (and b!1179826 (not res!783962)) b!1179818))

(assert (= (and b!1179818 (not res!783961)) b!1179808))

(assert (= (and b!1179808 res!783970) b!1179813))

(assert (= (and b!1179813 (not res!783968)) b!1179806))

(assert (= (and b!1179808 c!116849) b!1179812))

(assert (= (and b!1179808 (not c!116849)) b!1179820))

(assert (= (and b!1179808 res!783967) b!1179810))

(assert (= (and b!1179810 res!783966) b!1179823))

(assert (= (and b!1179825 condMapEmpty!46400) mapIsEmpty!46400))

(assert (= (and b!1179825 (not condMapEmpty!46400)) mapNonEmpty!46400))

(get-info :version)

(assert (= (and mapNonEmpty!46400 ((_ is ValueCellFull!14148) mapValue!46400)) b!1179807))

(assert (= (and b!1179825 ((_ is ValueCellFull!14148) mapDefault!46400)) b!1179822))

(assert (= start!99642 b!1179825))

(declare-fun b_lambda!20347 () Bool)

(assert (=> (not b_lambda!20347) (not b!1179826)))

(declare-fun t!38165 () Bool)

(declare-fun tb!10005 () Bool)

(assert (=> (and start!99642 (= defaultEntry!1004 defaultEntry!1004) t!38165) tb!10005))

(declare-fun result!20569 () Bool)

(assert (=> tb!10005 (= result!20569 tp_is_empty!29715)))

(assert (=> b!1179826 t!38165))

(declare-fun b_and!41253 () Bool)

(assert (= b_and!41251 (and (=> t!38165 result!20569) b_and!41253)))

(declare-fun m!1087829 () Bool)

(assert (=> start!99642 m!1087829))

(declare-fun m!1087831 () Bool)

(assert (=> start!99642 m!1087831))

(declare-fun m!1087833 () Bool)

(assert (=> b!1179815 m!1087833))

(declare-fun m!1087835 () Bool)

(assert (=> mapNonEmpty!46400 m!1087835))

(declare-fun m!1087837 () Bool)

(assert (=> b!1179805 m!1087837))

(declare-fun m!1087839 () Bool)

(assert (=> b!1179824 m!1087839))

(declare-fun m!1087841 () Bool)

(assert (=> b!1179826 m!1087841))

(declare-fun m!1087843 () Bool)

(assert (=> b!1179826 m!1087843))

(declare-fun m!1087845 () Bool)

(assert (=> b!1179826 m!1087845))

(declare-fun m!1087847 () Bool)

(assert (=> b!1179826 m!1087847))

(declare-fun m!1087849 () Bool)

(assert (=> b!1179812 m!1087849))

(declare-fun m!1087851 () Bool)

(assert (=> b!1179812 m!1087851))

(declare-fun m!1087853 () Bool)

(assert (=> b!1179812 m!1087853))

(declare-fun m!1087855 () Bool)

(assert (=> b!1179812 m!1087855))

(declare-fun m!1087857 () Bool)

(assert (=> b!1179812 m!1087857))

(declare-fun m!1087859 () Bool)

(assert (=> b!1179809 m!1087859))

(declare-fun m!1087861 () Bool)

(assert (=> b!1179819 m!1087861))

(declare-fun m!1087863 () Bool)

(assert (=> b!1179819 m!1087863))

(declare-fun m!1087865 () Bool)

(assert (=> b!1179818 m!1087865))

(declare-fun m!1087867 () Bool)

(assert (=> b!1179818 m!1087867))

(declare-fun m!1087869 () Bool)

(assert (=> b!1179818 m!1087869))

(declare-fun m!1087871 () Bool)

(assert (=> b!1179818 m!1087871))

(declare-fun m!1087873 () Bool)

(assert (=> b!1179818 m!1087873))

(declare-fun m!1087875 () Bool)

(assert (=> b!1179818 m!1087875))

(assert (=> b!1179818 m!1087873))

(declare-fun m!1087877 () Bool)

(assert (=> b!1179810 m!1087877))

(assert (=> b!1179813 m!1087873))

(declare-fun m!1087879 () Bool)

(assert (=> b!1179811 m!1087879))

(declare-fun m!1087881 () Bool)

(assert (=> b!1179814 m!1087881))

(declare-fun m!1087883 () Bool)

(assert (=> b!1179814 m!1087883))

(declare-fun m!1087885 () Bool)

(assert (=> b!1179806 m!1087885))

(assert (=> b!1179808 m!1087873))

(declare-fun m!1087887 () Bool)

(assert (=> b!1179808 m!1087887))

(declare-fun m!1087889 () Bool)

(assert (=> b!1179808 m!1087889))

(assert (=> b!1179808 m!1087889))

(declare-fun m!1087891 () Bool)

(assert (=> b!1179808 m!1087891))

(declare-fun m!1087893 () Bool)

(assert (=> b!1179817 m!1087893))

(check-sat (not b_next!25185) (not b!1179810) (not mapNonEmpty!46400) (not b!1179818) (not b!1179808) (not b!1179811) (not b!1179824) (not b_lambda!20347) (not start!99642) b_and!41253 (not b!1179809) (not b!1179819) (not b!1179815) (not b!1179812) (not b!1179826) tp_is_empty!29715 (not b!1179806) (not b!1179814) (not b!1179805))
(check-sat b_and!41253 (not b_next!25185))
