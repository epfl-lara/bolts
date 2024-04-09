; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100806 () Bool)

(assert start!100806)

(declare-fun b_free!25941 () Bool)

(declare-fun b_next!25941 () Bool)

(assert (=> start!100806 (= b_free!25941 (not b_next!25941))))

(declare-fun tp!90826 () Bool)

(declare-fun b_and!42879 () Bool)

(assert (=> start!100806 (= tp!90826 b_and!42879)))

(declare-fun bm!58616 () Bool)

(declare-fun call!58625 () Bool)

(declare-fun call!58621 () Bool)

(assert (=> bm!58616 (= call!58625 call!58621)))

(declare-fun b!1205973 () Bool)

(declare-fun res!802150 () Bool)

(declare-fun e!684892 () Bool)

(assert (=> b!1205973 (=> (not res!802150) (not e!684892))))

(declare-datatypes ((array!78046 0))(
  ( (array!78047 (arr!37660 (Array (_ BitVec 32) (_ BitVec 64))) (size!38197 (_ BitVec 32))) )
))
(declare-fun lt!547008 () array!78046)

(declare-datatypes ((List!26688 0))(
  ( (Nil!26685) (Cons!26684 (h!27893 (_ BitVec 64)) (t!39616 List!26688)) )
))
(declare-fun arrayNoDuplicates!0 (array!78046 (_ BitVec 32) List!26688) Bool)

(assert (=> b!1205973 (= res!802150 (arrayNoDuplicates!0 lt!547008 #b00000000000000000000000000000000 Nil!26685))))

(declare-fun b!1205974 () Bool)

(declare-fun e!684895 () Bool)

(declare-fun e!684905 () Bool)

(declare-fun mapRes!47823 () Bool)

(assert (=> b!1205974 (= e!684895 (and e!684905 mapRes!47823))))

(declare-fun condMapEmpty!47823 () Bool)

(declare-datatypes ((V!45987 0))(
  ( (V!45988 (val!15379 Int)) )
))
(declare-datatypes ((ValueCell!14613 0))(
  ( (ValueCellFull!14613 (v!18024 V!45987)) (EmptyCell!14613) )
))
(declare-datatypes ((array!78048 0))(
  ( (array!78049 (arr!37661 (Array (_ BitVec 32) ValueCell!14613)) (size!38198 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78048)

(declare-fun mapDefault!47823 () ValueCell!14613)

(assert (=> b!1205974 (= condMapEmpty!47823 (= (arr!37661 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14613)) mapDefault!47823)))))

(declare-fun b!1205975 () Bool)

(declare-fun res!802154 () Bool)

(declare-fun e!684894 () Bool)

(assert (=> b!1205975 (=> (not res!802154) (not e!684894))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205975 (= res!802154 (validKeyInArray!0 k0!934))))

(declare-fun res!802149 () Bool)

(assert (=> start!100806 (=> (not res!802149) (not e!684894))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!78046)

(assert (=> start!100806 (= res!802149 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38197 _keys!1208))))))

(assert (=> start!100806 e!684894))

(declare-fun tp_is_empty!30645 () Bool)

(assert (=> start!100806 tp_is_empty!30645))

(declare-fun array_inv!28590 (array!78046) Bool)

(assert (=> start!100806 (array_inv!28590 _keys!1208)))

(assert (=> start!100806 true))

(assert (=> start!100806 tp!90826))

(declare-fun array_inv!28591 (array!78048) Bool)

(assert (=> start!100806 (and (array_inv!28591 _values!996) e!684895)))

(declare-fun b!1205976 () Bool)

(declare-fun c!118337 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!547007 () Bool)

(assert (=> b!1205976 (= c!118337 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!547007))))

(declare-datatypes ((Unit!39904 0))(
  ( (Unit!39905) )
))
(declare-fun e!684898 () Unit!39904)

(declare-fun e!684890 () Unit!39904)

(assert (=> b!1205976 (= e!684898 e!684890)))

(declare-fun b!1205977 () Bool)

(declare-fun e!684901 () Bool)

(declare-fun e!684897 () Bool)

(assert (=> b!1205977 (= e!684901 e!684897)))

(declare-fun res!802162 () Bool)

(assert (=> b!1205977 (=> res!802162 e!684897)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205977 (= res!802162 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45987)

(declare-fun lt!547004 () array!78048)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45987)

(declare-datatypes ((tuple2!19864 0))(
  ( (tuple2!19865 (_1!9942 (_ BitVec 64)) (_2!9942 V!45987)) )
))
(declare-datatypes ((List!26689 0))(
  ( (Nil!26686) (Cons!26685 (h!27894 tuple2!19864) (t!39617 List!26689)) )
))
(declare-datatypes ((ListLongMap!17845 0))(
  ( (ListLongMap!17846 (toList!8938 List!26689)) )
))
(declare-fun lt!547014 () ListLongMap!17845)

(declare-fun getCurrentListMapNoExtraKeys!5346 (array!78046 array!78048 (_ BitVec 32) (_ BitVec 32) V!45987 V!45987 (_ BitVec 32) Int) ListLongMap!17845)

(assert (=> b!1205977 (= lt!547014 (getCurrentListMapNoExtraKeys!5346 lt!547008 lt!547004 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3267 (Int (_ BitVec 64)) V!45987)

(assert (=> b!1205977 (= lt!547004 (array!78049 (store (arr!37661 _values!996) i!673 (ValueCellFull!14613 (dynLambda!3267 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38198 _values!996)))))

(declare-fun lt!547006 () ListLongMap!17845)

(assert (=> b!1205977 (= lt!547006 (getCurrentListMapNoExtraKeys!5346 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1205978 () Bool)

(declare-fun res!802157 () Bool)

(assert (=> b!1205978 (=> (not res!802157) (not e!684894))))

(assert (=> b!1205978 (= res!802157 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38197 _keys!1208))))))

(declare-fun b!1205979 () Bool)

(declare-fun e!684899 () Bool)

(assert (=> b!1205979 (= e!684897 e!684899)))

(declare-fun res!802159 () Bool)

(assert (=> b!1205979 (=> res!802159 e!684899)))

(assert (=> b!1205979 (= res!802159 (not (= (select (arr!37660 _keys!1208) from!1455) k0!934)))))

(declare-fun e!684896 () Bool)

(assert (=> b!1205979 e!684896))

(declare-fun c!118333 () Bool)

(assert (=> b!1205979 (= c!118333 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!547001 () Unit!39904)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1053 (array!78046 array!78048 (_ BitVec 32) (_ BitVec 32) V!45987 V!45987 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39904)

(assert (=> b!1205979 (= lt!547001 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1053 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205980 () Bool)

(declare-fun e!684891 () Bool)

(assert (=> b!1205980 (= e!684891 tp_is_empty!30645)))

(declare-fun call!58624 () ListLongMap!17845)

(declare-fun bm!58617 () Bool)

(assert (=> bm!58617 (= call!58624 (getCurrentListMapNoExtraKeys!5346 lt!547008 lt!547004 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58623 () ListLongMap!17845)

(declare-fun c!118335 () Bool)

(declare-fun lt!547009 () ListLongMap!17845)

(declare-fun c!118336 () Bool)

(declare-fun bm!58618 () Bool)

(declare-fun lt!547015 () ListLongMap!17845)

(declare-fun +!3967 (ListLongMap!17845 tuple2!19864) ListLongMap!17845)

(assert (=> bm!58618 (= call!58623 (+!3967 (ite c!118335 lt!547015 lt!547009) (ite c!118335 (tuple2!19865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118336 (tuple2!19865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19865 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1205981 () Bool)

(declare-fun e!684904 () Bool)

(assert (=> b!1205981 (= e!684899 e!684904)))

(declare-fun res!802156 () Bool)

(assert (=> b!1205981 (=> res!802156 e!684904)))

(declare-fun contains!6941 (ListLongMap!17845 (_ BitVec 64)) Bool)

(assert (=> b!1205981 (= res!802156 (not (contains!6941 lt!547009 k0!934)))))

(assert (=> b!1205981 (= lt!547009 (getCurrentListMapNoExtraKeys!5346 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205982 () Bool)

(declare-fun res!802151 () Bool)

(assert (=> b!1205982 (=> (not res!802151) (not e!684894))))

(assert (=> b!1205982 (= res!802151 (and (= (size!38198 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38197 _keys!1208) (size!38198 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1205983 () Bool)

(assert (=> b!1205983 (= e!684892 (not e!684901))))

(declare-fun res!802160 () Bool)

(assert (=> b!1205983 (=> res!802160 e!684901)))

(assert (=> b!1205983 (= res!802160 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205983 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!547010 () Unit!39904)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78046 (_ BitVec 64) (_ BitVec 32)) Unit!39904)

(assert (=> b!1205983 (= lt!547010 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!58619 () Bool)

(declare-fun call!58620 () Unit!39904)

(declare-fun call!58619 () Unit!39904)

(assert (=> bm!58619 (= call!58620 call!58619)))

(declare-fun call!58622 () ListLongMap!17845)

(declare-fun bm!58620 () Bool)

(assert (=> bm!58620 (= call!58621 (contains!6941 (ite c!118335 lt!547015 call!58622) k0!934))))

(declare-fun b!1205984 () Bool)

(declare-fun e!684893 () Unit!39904)

(declare-fun lt!547003 () Unit!39904)

(assert (=> b!1205984 (= e!684893 lt!547003)))

(declare-fun lt!547011 () Unit!39904)

(assert (=> b!1205984 (= lt!547011 call!58619)))

(assert (=> b!1205984 (= lt!547015 (+!3967 lt!547009 (tuple2!19865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1205984 call!58621))

(declare-fun addStillContains!1032 (ListLongMap!17845 (_ BitVec 64) V!45987 (_ BitVec 64)) Unit!39904)

(assert (=> b!1205984 (= lt!547003 (addStillContains!1032 lt!547015 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1205984 (contains!6941 call!58623 k0!934)))

(declare-fun call!58626 () ListLongMap!17845)

(declare-fun b!1205985 () Bool)

(declare-fun -!1849 (ListLongMap!17845 (_ BitVec 64)) ListLongMap!17845)

(assert (=> b!1205985 (= e!684896 (= call!58624 (-!1849 call!58626 k0!934)))))

(declare-fun b!1205986 () Bool)

(declare-fun lt!547012 () Unit!39904)

(assert (=> b!1205986 (= e!684890 lt!547012)))

(assert (=> b!1205986 (= lt!547012 call!58620)))

(assert (=> b!1205986 call!58625))

(declare-fun b!1205987 () Bool)

(declare-fun res!802161 () Bool)

(assert (=> b!1205987 (=> (not res!802161) (not e!684894))))

(assert (=> b!1205987 (= res!802161 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26685))))

(declare-fun b!1205988 () Bool)

(declare-fun res!802152 () Bool)

(assert (=> b!1205988 (=> (not res!802152) (not e!684894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205988 (= res!802152 (validMask!0 mask!1564))))

(declare-fun b!1205989 () Bool)

(assert (=> b!1205989 (= e!684893 e!684898)))

(assert (=> b!1205989 (= c!118336 (and (not lt!547007) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1205990 () Bool)

(declare-fun res!802158 () Bool)

(assert (=> b!1205990 (=> (not res!802158) (not e!684894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78046 (_ BitVec 32)) Bool)

(assert (=> b!1205990 (= res!802158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1205991 () Bool)

(declare-fun e!684903 () Bool)

(assert (=> b!1205991 (= e!684903 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205992 () Bool)

(assert (=> b!1205992 call!58625))

(declare-fun lt!547013 () Unit!39904)

(assert (=> b!1205992 (= lt!547013 call!58620)))

(assert (=> b!1205992 (= e!684898 lt!547013)))

(declare-fun b!1205993 () Bool)

(assert (=> b!1205993 (= e!684894 e!684892)))

(declare-fun res!802153 () Bool)

(assert (=> b!1205993 (=> (not res!802153) (not e!684892))))

(assert (=> b!1205993 (= res!802153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547008 mask!1564))))

(assert (=> b!1205993 (= lt!547008 (array!78047 (store (arr!37660 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38197 _keys!1208)))))

(declare-fun mapIsEmpty!47823 () Bool)

(assert (=> mapIsEmpty!47823 mapRes!47823))

(declare-fun b!1205994 () Bool)

(declare-fun e!684902 () Bool)

(assert (=> b!1205994 (= e!684902 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!47823 () Bool)

(declare-fun tp!90827 () Bool)

(assert (=> mapNonEmpty!47823 (= mapRes!47823 (and tp!90827 e!684891))))

(declare-fun mapValue!47823 () ValueCell!14613)

(declare-fun mapRest!47823 () (Array (_ BitVec 32) ValueCell!14613))

(declare-fun mapKey!47823 () (_ BitVec 32))

(assert (=> mapNonEmpty!47823 (= (arr!37661 _values!996) (store mapRest!47823 mapKey!47823 mapValue!47823))))

(declare-fun b!1205995 () Bool)

(declare-fun res!802155 () Bool)

(assert (=> b!1205995 (=> (not res!802155) (not e!684894))))

(assert (=> b!1205995 (= res!802155 (= (select (arr!37660 _keys!1208) i!673) k0!934))))

(declare-fun bm!58621 () Bool)

(assert (=> bm!58621 (= call!58626 (getCurrentListMapNoExtraKeys!5346 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58622 () Bool)

(assert (=> bm!58622 (= call!58622 call!58623)))

(declare-fun b!1205996 () Bool)

(declare-fun Unit!39906 () Unit!39904)

(assert (=> b!1205996 (= e!684890 Unit!39906)))

(declare-fun b!1205997 () Bool)

(assert (=> b!1205997 (= e!684902 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!547007) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1205998 () Bool)

(assert (=> b!1205998 (= e!684896 (= call!58624 call!58626))))

(declare-fun b!1205999 () Bool)

(assert (=> b!1205999 (= e!684904 true)))

(assert (=> b!1205999 e!684903))

(declare-fun res!802148 () Bool)

(assert (=> b!1205999 (=> (not res!802148) (not e!684903))))

(assert (=> b!1205999 (= res!802148 e!684902)))

(declare-fun c!118334 () Bool)

(assert (=> b!1205999 (= c!118334 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!547005 () Unit!39904)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!573 (array!78046 array!78048 (_ BitVec 32) (_ BitVec 32) V!45987 V!45987 (_ BitVec 64) (_ BitVec 32) Int) Unit!39904)

(assert (=> b!1205999 (= lt!547005 (lemmaListMapContainsThenArrayContainsFrom!573 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!547002 () Unit!39904)

(assert (=> b!1205999 (= lt!547002 e!684893)))

(assert (=> b!1205999 (= c!118335 (and (not lt!547007) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1205999 (= lt!547007 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!58623 () Bool)

(assert (=> bm!58623 (= call!58619 (addStillContains!1032 lt!547009 (ite (or c!118335 c!118336) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118335 c!118336) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1206000 () Bool)

(assert (=> b!1206000 (= e!684905 tp_is_empty!30645)))

(assert (= (and start!100806 res!802149) b!1205988))

(assert (= (and b!1205988 res!802152) b!1205982))

(assert (= (and b!1205982 res!802151) b!1205990))

(assert (= (and b!1205990 res!802158) b!1205987))

(assert (= (and b!1205987 res!802161) b!1205978))

(assert (= (and b!1205978 res!802157) b!1205975))

(assert (= (and b!1205975 res!802154) b!1205995))

(assert (= (and b!1205995 res!802155) b!1205993))

(assert (= (and b!1205993 res!802153) b!1205973))

(assert (= (and b!1205973 res!802150) b!1205983))

(assert (= (and b!1205983 (not res!802160)) b!1205977))

(assert (= (and b!1205977 (not res!802162)) b!1205979))

(assert (= (and b!1205979 c!118333) b!1205985))

(assert (= (and b!1205979 (not c!118333)) b!1205998))

(assert (= (or b!1205985 b!1205998) bm!58617))

(assert (= (or b!1205985 b!1205998) bm!58621))

(assert (= (and b!1205979 (not res!802159)) b!1205981))

(assert (= (and b!1205981 (not res!802156)) b!1205999))

(assert (= (and b!1205999 c!118335) b!1205984))

(assert (= (and b!1205999 (not c!118335)) b!1205989))

(assert (= (and b!1205989 c!118336) b!1205992))

(assert (= (and b!1205989 (not c!118336)) b!1205976))

(assert (= (and b!1205976 c!118337) b!1205986))

(assert (= (and b!1205976 (not c!118337)) b!1205996))

(assert (= (or b!1205992 b!1205986) bm!58619))

(assert (= (or b!1205992 b!1205986) bm!58622))

(assert (= (or b!1205992 b!1205986) bm!58616))

(assert (= (or b!1205984 bm!58616) bm!58620))

(assert (= (or b!1205984 bm!58619) bm!58623))

(assert (= (or b!1205984 bm!58622) bm!58618))

(assert (= (and b!1205999 c!118334) b!1205994))

(assert (= (and b!1205999 (not c!118334)) b!1205997))

(assert (= (and b!1205999 res!802148) b!1205991))

(assert (= (and b!1205974 condMapEmpty!47823) mapIsEmpty!47823))

(assert (= (and b!1205974 (not condMapEmpty!47823)) mapNonEmpty!47823))

(get-info :version)

(assert (= (and mapNonEmpty!47823 ((_ is ValueCellFull!14613) mapValue!47823)) b!1205980))

(assert (= (and b!1205974 ((_ is ValueCellFull!14613) mapDefault!47823)) b!1206000))

(assert (= start!100806 b!1205974))

(declare-fun b_lambda!21355 () Bool)

(assert (=> (not b_lambda!21355) (not b!1205977)))

(declare-fun t!39615 () Bool)

(declare-fun tb!10749 () Bool)

(assert (=> (and start!100806 (= defaultEntry!1004 defaultEntry!1004) t!39615) tb!10749))

(declare-fun result!22075 () Bool)

(assert (=> tb!10749 (= result!22075 tp_is_empty!30645)))

(assert (=> b!1205977 t!39615))

(declare-fun b_and!42881 () Bool)

(assert (= b_and!42879 (and (=> t!39615 result!22075) b_and!42881)))

(declare-fun m!1111771 () Bool)

(assert (=> b!1205984 m!1111771))

(declare-fun m!1111773 () Bool)

(assert (=> b!1205984 m!1111773))

(declare-fun m!1111775 () Bool)

(assert (=> b!1205984 m!1111775))

(declare-fun m!1111777 () Bool)

(assert (=> bm!58617 m!1111777))

(declare-fun m!1111779 () Bool)

(assert (=> b!1205993 m!1111779))

(declare-fun m!1111781 () Bool)

(assert (=> b!1205993 m!1111781))

(declare-fun m!1111783 () Bool)

(assert (=> bm!58618 m!1111783))

(declare-fun m!1111785 () Bool)

(assert (=> b!1205995 m!1111785))

(declare-fun m!1111787 () Bool)

(assert (=> b!1205987 m!1111787))

(declare-fun m!1111789 () Bool)

(assert (=> b!1205983 m!1111789))

(declare-fun m!1111791 () Bool)

(assert (=> b!1205983 m!1111791))

(declare-fun m!1111793 () Bool)

(assert (=> b!1205975 m!1111793))

(declare-fun m!1111795 () Bool)

(assert (=> b!1205999 m!1111795))

(declare-fun m!1111797 () Bool)

(assert (=> bm!58620 m!1111797))

(declare-fun m!1111799 () Bool)

(assert (=> b!1205973 m!1111799))

(declare-fun m!1111801 () Bool)

(assert (=> b!1205977 m!1111801))

(declare-fun m!1111803 () Bool)

(assert (=> b!1205977 m!1111803))

(declare-fun m!1111805 () Bool)

(assert (=> b!1205977 m!1111805))

(declare-fun m!1111807 () Bool)

(assert (=> b!1205977 m!1111807))

(declare-fun m!1111809 () Bool)

(assert (=> b!1205991 m!1111809))

(declare-fun m!1111811 () Bool)

(assert (=> bm!58621 m!1111811))

(assert (=> b!1205994 m!1111809))

(declare-fun m!1111813 () Bool)

(assert (=> b!1205985 m!1111813))

(declare-fun m!1111815 () Bool)

(assert (=> mapNonEmpty!47823 m!1111815))

(declare-fun m!1111817 () Bool)

(assert (=> b!1205990 m!1111817))

(declare-fun m!1111819 () Bool)

(assert (=> b!1205979 m!1111819))

(declare-fun m!1111821 () Bool)

(assert (=> b!1205979 m!1111821))

(declare-fun m!1111823 () Bool)

(assert (=> b!1205981 m!1111823))

(assert (=> b!1205981 m!1111811))

(declare-fun m!1111825 () Bool)

(assert (=> start!100806 m!1111825))

(declare-fun m!1111827 () Bool)

(assert (=> start!100806 m!1111827))

(declare-fun m!1111829 () Bool)

(assert (=> b!1205988 m!1111829))

(declare-fun m!1111831 () Bool)

(assert (=> bm!58623 m!1111831))

(check-sat (not b!1205990) (not bm!58623) (not b!1205988) (not bm!58621) (not b!1205981) (not b!1205979) (not b!1205984) (not b!1205994) (not mapNonEmpty!47823) (not b!1205999) (not b!1205985) (not b!1205973) (not b!1205975) (not start!100806) tp_is_empty!30645 (not b!1205977) (not b!1205983) (not b!1205987) (not bm!58617) (not bm!58620) (not bm!58618) (not b!1205993) b_and!42881 (not b_next!25941) (not b!1205991) (not b_lambda!21355))
(check-sat b_and!42881 (not b_next!25941))
