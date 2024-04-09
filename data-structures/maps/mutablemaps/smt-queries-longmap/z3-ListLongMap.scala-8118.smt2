; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99612 () Bool)

(assert start!99612)

(declare-fun b_free!25155 () Bool)

(declare-fun b_next!25155 () Bool)

(assert (=> start!99612 (= b_free!25155 (not b_next!25155))))

(declare-fun tp!88180 () Bool)

(declare-fun b_and!41191 () Bool)

(assert (=> start!99612 (= tp!88180 b_and!41191)))

(declare-fun b!1178816 () Bool)

(declare-fun res!783233 () Bool)

(declare-fun e!670208 () Bool)

(assert (=> b!1178816 (=> (not res!783233) (not e!670208))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178816 (= res!783233 (validKeyInArray!0 k0!934))))

(declare-fun b!1178817 () Bool)

(declare-fun e!670213 () Bool)

(declare-fun e!670203 () Bool)

(assert (=> b!1178817 (= e!670213 e!670203)))

(declare-fun res!783224 () Bool)

(assert (=> b!1178817 (=> res!783224 e!670203)))

(declare-datatypes ((array!76142 0))(
  ( (array!76143 (arr!36717 (Array (_ BitVec 32) (_ BitVec 64))) (size!37254 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76142)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1178817 (= res!783224 (not (= (select (arr!36717 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1178818 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!76142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178818 (= e!670203 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178819 () Bool)

(declare-fun e!670205 () Bool)

(declare-fun e!670202 () Bool)

(assert (=> b!1178819 (= e!670205 e!670202)))

(declare-fun res!783234 () Bool)

(assert (=> b!1178819 (=> res!783234 e!670202)))

(assert (=> b!1178819 (= res!783234 (not (validKeyInArray!0 (select (arr!36717 _keys!1208) from!1455))))))

(declare-datatypes ((V!44707 0))(
  ( (V!44708 (val!14899 Int)) )
))
(declare-datatypes ((tuple2!19192 0))(
  ( (tuple2!19193 (_1!9606 (_ BitVec 64)) (_2!9606 V!44707)) )
))
(declare-datatypes ((List!25955 0))(
  ( (Nil!25952) (Cons!25951 (h!27160 tuple2!19192) (t!38109 List!25955)) )
))
(declare-datatypes ((ListLongMap!17173 0))(
  ( (ListLongMap!17174 (toList!8602 List!25955)) )
))
(declare-fun lt!532606 () ListLongMap!17173)

(declare-fun lt!532602 () ListLongMap!17173)

(assert (=> b!1178819 (= lt!532606 lt!532602)))

(declare-fun lt!532603 () ListLongMap!17173)

(declare-fun -!1599 (ListLongMap!17173 (_ BitVec 64)) ListLongMap!17173)

(assert (=> b!1178819 (= lt!532602 (-!1599 lt!532603 k0!934))))

(declare-fun zeroValue!944 () V!44707)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!532612 () array!76142)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14133 0))(
  ( (ValueCellFull!14133 (v!17538 V!44707)) (EmptyCell!14133) )
))
(declare-datatypes ((array!76144 0))(
  ( (array!76145 (arr!36718 (Array (_ BitVec 32) ValueCell!14133)) (size!37255 (_ BitVec 32))) )
))
(declare-fun lt!532610 () array!76144)

(declare-fun minValue!944 () V!44707)

(declare-fun getCurrentListMapNoExtraKeys!5031 (array!76142 array!76144 (_ BitVec 32) (_ BitVec 32) V!44707 V!44707 (_ BitVec 32) Int) ListLongMap!17173)

(assert (=> b!1178819 (= lt!532606 (getCurrentListMapNoExtraKeys!5031 lt!532612 lt!532610 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76144)

(assert (=> b!1178819 (= lt!532603 (getCurrentListMapNoExtraKeys!5031 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38881 0))(
  ( (Unit!38882) )
))
(declare-fun lt!532609 () Unit!38881)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!823 (array!76142 array!76144 (_ BitVec 32) (_ BitVec 32) V!44707 V!44707 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38881)

(assert (=> b!1178819 (= lt!532609 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!823 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178820 () Bool)

(declare-fun e!670211 () Unit!38881)

(declare-fun Unit!38883 () Unit!38881)

(assert (=> b!1178820 (= e!670211 Unit!38883)))

(declare-fun lt!532600 () Unit!38881)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76142 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38881)

(assert (=> b!1178820 (= lt!532600 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1178820 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532614 () Unit!38881)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76142 (_ BitVec 32) (_ BitVec 32)) Unit!38881)

(assert (=> b!1178820 (= lt!532614 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25956 0))(
  ( (Nil!25953) (Cons!25952 (h!27161 (_ BitVec 64)) (t!38110 List!25956)) )
))
(declare-fun arrayNoDuplicates!0 (array!76142 (_ BitVec 32) List!25956) Bool)

(assert (=> b!1178820 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25953)))

(declare-fun lt!532607 () Unit!38881)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76142 (_ BitVec 64) (_ BitVec 32) List!25956) Unit!38881)

(assert (=> b!1178820 (= lt!532607 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25953))))

(assert (=> b!1178820 false))

(declare-fun res!783225 () Bool)

(assert (=> start!99612 (=> (not res!783225) (not e!670208))))

(assert (=> start!99612 (= res!783225 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37254 _keys!1208))))))

(assert (=> start!99612 e!670208))

(declare-fun tp_is_empty!29685 () Bool)

(assert (=> start!99612 tp_is_empty!29685))

(declare-fun array_inv!27926 (array!76142) Bool)

(assert (=> start!99612 (array_inv!27926 _keys!1208)))

(assert (=> start!99612 true))

(assert (=> start!99612 tp!88180))

(declare-fun e!670212 () Bool)

(declare-fun array_inv!27927 (array!76144) Bool)

(assert (=> start!99612 (and (array_inv!27927 _values!996) e!670212)))

(declare-fun mapIsEmpty!46355 () Bool)

(declare-fun mapRes!46355 () Bool)

(assert (=> mapIsEmpty!46355 mapRes!46355))

(declare-fun e!670206 () Bool)

(declare-fun lt!532604 () tuple2!19192)

(declare-fun lt!532611 () ListLongMap!17173)

(declare-fun b!1178821 () Bool)

(declare-fun +!3823 (ListLongMap!17173 tuple2!19192) ListLongMap!17173)

(assert (=> b!1178821 (= e!670206 (= lt!532611 (+!3823 lt!532603 lt!532604)))))

(declare-fun b!1178822 () Bool)

(declare-fun e!670201 () Bool)

(declare-fun e!670209 () Bool)

(assert (=> b!1178822 (= e!670201 (not e!670209))))

(declare-fun res!783232 () Bool)

(assert (=> b!1178822 (=> res!783232 e!670209)))

(assert (=> b!1178822 (= res!783232 (bvsgt from!1455 i!673))))

(assert (=> b!1178822 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!532613 () Unit!38881)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76142 (_ BitVec 64) (_ BitVec 32)) Unit!38881)

(assert (=> b!1178822 (= lt!532613 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1178823 () Bool)

(declare-fun Unit!38884 () Unit!38881)

(assert (=> b!1178823 (= e!670211 Unit!38884)))

(declare-fun b!1178824 () Bool)

(declare-fun res!783226 () Bool)

(assert (=> b!1178824 (=> (not res!783226) (not e!670208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76142 (_ BitVec 32)) Bool)

(assert (=> b!1178824 (= res!783226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1178825 () Bool)

(declare-fun e!670210 () Bool)

(assert (=> b!1178825 (= e!670210 tp_is_empty!29685)))

(declare-fun mapNonEmpty!46355 () Bool)

(declare-fun tp!88179 () Bool)

(declare-fun e!670207 () Bool)

(assert (=> mapNonEmpty!46355 (= mapRes!46355 (and tp!88179 e!670207))))

(declare-fun mapKey!46355 () (_ BitVec 32))

(declare-fun mapRest!46355 () (Array (_ BitVec 32) ValueCell!14133))

(declare-fun mapValue!46355 () ValueCell!14133)

(assert (=> mapNonEmpty!46355 (= (arr!36718 _values!996) (store mapRest!46355 mapKey!46355 mapValue!46355))))

(declare-fun b!1178826 () Bool)

(assert (=> b!1178826 (= e!670207 tp_is_empty!29685)))

(declare-fun b!1178827 () Bool)

(assert (=> b!1178827 (= e!670209 e!670205)))

(declare-fun res!783227 () Bool)

(assert (=> b!1178827 (=> res!783227 e!670205)))

(assert (=> b!1178827 (= res!783227 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!532601 () ListLongMap!17173)

(assert (=> b!1178827 (= lt!532601 (getCurrentListMapNoExtraKeys!5031 lt!532612 lt!532610 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!532608 () V!44707)

(assert (=> b!1178827 (= lt!532610 (array!76145 (store (arr!36718 _values!996) i!673 (ValueCellFull!14133 lt!532608)) (size!37255 _values!996)))))

(declare-fun dynLambda!3004 (Int (_ BitVec 64)) V!44707)

(assert (=> b!1178827 (= lt!532608 (dynLambda!3004 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1178827 (= lt!532611 (getCurrentListMapNoExtraKeys!5031 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178828 () Bool)

(declare-fun res!783235 () Bool)

(assert (=> b!1178828 (=> (not res!783235) (not e!670208))))

(assert (=> b!1178828 (= res!783235 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37254 _keys!1208))))))

(declare-fun b!1178829 () Bool)

(assert (=> b!1178829 (= e!670202 true)))

(assert (=> b!1178829 e!670206))

(declare-fun res!783229 () Bool)

(assert (=> b!1178829 (=> (not res!783229) (not e!670206))))

(assert (=> b!1178829 (= res!783229 (not (= (select (arr!36717 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!532605 () Unit!38881)

(assert (=> b!1178829 (= lt!532605 e!670211)))

(declare-fun c!116804 () Bool)

(assert (=> b!1178829 (= c!116804 (= (select (arr!36717 _keys!1208) from!1455) k0!934))))

(assert (=> b!1178829 e!670213))

(declare-fun res!783237 () Bool)

(assert (=> b!1178829 (=> (not res!783237) (not e!670213))))

(assert (=> b!1178829 (= res!783237 (= lt!532601 (+!3823 lt!532602 lt!532604)))))

(declare-fun get!18801 (ValueCell!14133 V!44707) V!44707)

(assert (=> b!1178829 (= lt!532604 (tuple2!19193 (select (arr!36717 _keys!1208) from!1455) (get!18801 (select (arr!36718 _values!996) from!1455) lt!532608)))))

(declare-fun b!1178830 () Bool)

(declare-fun res!783230 () Bool)

(assert (=> b!1178830 (=> (not res!783230) (not e!670201))))

(assert (=> b!1178830 (= res!783230 (arrayNoDuplicates!0 lt!532612 #b00000000000000000000000000000000 Nil!25953))))

(declare-fun b!1178831 () Bool)

(declare-fun res!783238 () Bool)

(assert (=> b!1178831 (=> (not res!783238) (not e!670208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178831 (= res!783238 (validMask!0 mask!1564))))

(declare-fun b!1178832 () Bool)

(declare-fun res!783236 () Bool)

(assert (=> b!1178832 (=> (not res!783236) (not e!670208))))

(assert (=> b!1178832 (= res!783236 (and (= (size!37255 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37254 _keys!1208) (size!37255 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178833 () Bool)

(declare-fun res!783223 () Bool)

(assert (=> b!1178833 (=> (not res!783223) (not e!670208))))

(assert (=> b!1178833 (= res!783223 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25953))))

(declare-fun b!1178834 () Bool)

(assert (=> b!1178834 (= e!670212 (and e!670210 mapRes!46355))))

(declare-fun condMapEmpty!46355 () Bool)

(declare-fun mapDefault!46355 () ValueCell!14133)

(assert (=> b!1178834 (= condMapEmpty!46355 (= (arr!36718 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14133)) mapDefault!46355)))))

(declare-fun b!1178835 () Bool)

(assert (=> b!1178835 (= e!670208 e!670201)))

(declare-fun res!783228 () Bool)

(assert (=> b!1178835 (=> (not res!783228) (not e!670201))))

(assert (=> b!1178835 (= res!783228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532612 mask!1564))))

(assert (=> b!1178835 (= lt!532612 (array!76143 (store (arr!36717 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37254 _keys!1208)))))

(declare-fun b!1178836 () Bool)

(declare-fun res!783231 () Bool)

(assert (=> b!1178836 (=> (not res!783231) (not e!670208))))

(assert (=> b!1178836 (= res!783231 (= (select (arr!36717 _keys!1208) i!673) k0!934))))

(assert (= (and start!99612 res!783225) b!1178831))

(assert (= (and b!1178831 res!783238) b!1178832))

(assert (= (and b!1178832 res!783236) b!1178824))

(assert (= (and b!1178824 res!783226) b!1178833))

(assert (= (and b!1178833 res!783223) b!1178828))

(assert (= (and b!1178828 res!783235) b!1178816))

(assert (= (and b!1178816 res!783233) b!1178836))

(assert (= (and b!1178836 res!783231) b!1178835))

(assert (= (and b!1178835 res!783228) b!1178830))

(assert (= (and b!1178830 res!783230) b!1178822))

(assert (= (and b!1178822 (not res!783232)) b!1178827))

(assert (= (and b!1178827 (not res!783227)) b!1178819))

(assert (= (and b!1178819 (not res!783234)) b!1178829))

(assert (= (and b!1178829 res!783237) b!1178817))

(assert (= (and b!1178817 (not res!783224)) b!1178818))

(assert (= (and b!1178829 c!116804) b!1178820))

(assert (= (and b!1178829 (not c!116804)) b!1178823))

(assert (= (and b!1178829 res!783229) b!1178821))

(assert (= (and b!1178834 condMapEmpty!46355) mapIsEmpty!46355))

(assert (= (and b!1178834 (not condMapEmpty!46355)) mapNonEmpty!46355))

(get-info :version)

(assert (= (and mapNonEmpty!46355 ((_ is ValueCellFull!14133) mapValue!46355)) b!1178826))

(assert (= (and b!1178834 ((_ is ValueCellFull!14133) mapDefault!46355)) b!1178825))

(assert (= start!99612 b!1178834))

(declare-fun b_lambda!20317 () Bool)

(assert (=> (not b_lambda!20317) (not b!1178827)))

(declare-fun t!38108 () Bool)

(declare-fun tb!9975 () Bool)

(assert (=> (and start!99612 (= defaultEntry!1004 defaultEntry!1004) t!38108) tb!9975))

(declare-fun result!20509 () Bool)

(assert (=> tb!9975 (= result!20509 tp_is_empty!29685)))

(assert (=> b!1178827 t!38108))

(declare-fun b_and!41193 () Bool)

(assert (= b_and!41191 (and (=> t!38108 result!20509) b_and!41193)))

(declare-fun m!1086839 () Bool)

(assert (=> b!1178829 m!1086839))

(declare-fun m!1086841 () Bool)

(assert (=> b!1178829 m!1086841))

(declare-fun m!1086843 () Bool)

(assert (=> b!1178829 m!1086843))

(assert (=> b!1178829 m!1086843))

(declare-fun m!1086845 () Bool)

(assert (=> b!1178829 m!1086845))

(declare-fun m!1086847 () Bool)

(assert (=> b!1178836 m!1086847))

(declare-fun m!1086849 () Bool)

(assert (=> b!1178830 m!1086849))

(assert (=> b!1178817 m!1086839))

(declare-fun m!1086851 () Bool)

(assert (=> b!1178819 m!1086851))

(declare-fun m!1086853 () Bool)

(assert (=> b!1178819 m!1086853))

(declare-fun m!1086855 () Bool)

(assert (=> b!1178819 m!1086855))

(assert (=> b!1178819 m!1086839))

(declare-fun m!1086857 () Bool)

(assert (=> b!1178819 m!1086857))

(assert (=> b!1178819 m!1086839))

(declare-fun m!1086859 () Bool)

(assert (=> b!1178819 m!1086859))

(declare-fun m!1086861 () Bool)

(assert (=> b!1178820 m!1086861))

(declare-fun m!1086863 () Bool)

(assert (=> b!1178820 m!1086863))

(declare-fun m!1086865 () Bool)

(assert (=> b!1178820 m!1086865))

(declare-fun m!1086867 () Bool)

(assert (=> b!1178820 m!1086867))

(declare-fun m!1086869 () Bool)

(assert (=> b!1178820 m!1086869))

(declare-fun m!1086871 () Bool)

(assert (=> b!1178816 m!1086871))

(declare-fun m!1086873 () Bool)

(assert (=> b!1178818 m!1086873))

(declare-fun m!1086875 () Bool)

(assert (=> b!1178824 m!1086875))

(declare-fun m!1086877 () Bool)

(assert (=> b!1178835 m!1086877))

(declare-fun m!1086879 () Bool)

(assert (=> b!1178835 m!1086879))

(declare-fun m!1086881 () Bool)

(assert (=> b!1178827 m!1086881))

(declare-fun m!1086883 () Bool)

(assert (=> b!1178827 m!1086883))

(declare-fun m!1086885 () Bool)

(assert (=> b!1178827 m!1086885))

(declare-fun m!1086887 () Bool)

(assert (=> b!1178827 m!1086887))

(declare-fun m!1086889 () Bool)

(assert (=> b!1178822 m!1086889))

(declare-fun m!1086891 () Bool)

(assert (=> b!1178822 m!1086891))

(declare-fun m!1086893 () Bool)

(assert (=> b!1178821 m!1086893))

(declare-fun m!1086895 () Bool)

(assert (=> b!1178833 m!1086895))

(declare-fun m!1086897 () Bool)

(assert (=> mapNonEmpty!46355 m!1086897))

(declare-fun m!1086899 () Bool)

(assert (=> start!99612 m!1086899))

(declare-fun m!1086901 () Bool)

(assert (=> start!99612 m!1086901))

(declare-fun m!1086903 () Bool)

(assert (=> b!1178831 m!1086903))

(check-sat (not b!1178819) (not b!1178831) (not b_lambda!20317) tp_is_empty!29685 (not b!1178818) (not b!1178827) b_and!41193 (not b!1178816) (not b!1178829) (not b!1178835) (not b!1178820) (not b!1178824) (not start!99612) (not b_next!25155) (not b!1178821) (not b!1178822) (not b!1178830) (not b!1178833) (not mapNonEmpty!46355))
(check-sat b_and!41193 (not b_next!25155))
