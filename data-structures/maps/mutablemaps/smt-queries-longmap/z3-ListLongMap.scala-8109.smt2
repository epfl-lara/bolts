; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99558 () Bool)

(assert start!99558)

(declare-fun b_free!25101 () Bool)

(declare-fun b_next!25101 () Bool)

(assert (=> start!99558 (= b_free!25101 (not b_next!25101))))

(declare-fun tp!88018 () Bool)

(declare-fun b_and!41083 () Bool)

(assert (=> start!99558 (= tp!88018 b_and!41083)))

(declare-fun mapIsEmpty!46274 () Bool)

(declare-fun mapRes!46274 () Bool)

(assert (=> mapIsEmpty!46274 mapRes!46274))

(declare-fun b!1177061 () Bool)

(declare-fun res!781927 () Bool)

(declare-fun e!669160 () Bool)

(assert (=> b!1177061 (=> (not res!781927) (not e!669160))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177061 (= res!781927 (validKeyInArray!0 k0!934))))

(declare-fun b!1177062 () Bool)

(declare-fun res!781940 () Bool)

(assert (=> b!1177062 (=> (not res!781940) (not e!669160))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76038 0))(
  ( (array!76039 (arr!36665 (Array (_ BitVec 32) (_ BitVec 64))) (size!37202 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76038)

(assert (=> b!1177062 (= res!781940 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37202 _keys!1208))))))

(declare-fun res!781934 () Bool)

(assert (=> start!99558 (=> (not res!781934) (not e!669160))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99558 (= res!781934 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37202 _keys!1208))))))

(assert (=> start!99558 e!669160))

(declare-fun tp_is_empty!29631 () Bool)

(assert (=> start!99558 tp_is_empty!29631))

(declare-fun array_inv!27890 (array!76038) Bool)

(assert (=> start!99558 (array_inv!27890 _keys!1208)))

(assert (=> start!99558 true))

(assert (=> start!99558 tp!88018))

(declare-datatypes ((V!44635 0))(
  ( (V!44636 (val!14872 Int)) )
))
(declare-datatypes ((ValueCell!14106 0))(
  ( (ValueCellFull!14106 (v!17511 V!44635)) (EmptyCell!14106) )
))
(declare-datatypes ((array!76040 0))(
  ( (array!76041 (arr!36666 (Array (_ BitVec 32) ValueCell!14106)) (size!37203 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76040)

(declare-fun e!669154 () Bool)

(declare-fun array_inv!27891 (array!76040) Bool)

(assert (=> start!99558 (and (array_inv!27891 _values!996) e!669154)))

(declare-fun b!1177063 () Bool)

(declare-fun e!669158 () Bool)

(assert (=> b!1177063 (= e!669160 e!669158)))

(declare-fun res!781932 () Bool)

(assert (=> b!1177063 (=> (not res!781932) (not e!669158))))

(declare-fun lt!531389 () array!76038)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76038 (_ BitVec 32)) Bool)

(assert (=> b!1177063 (= res!781932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531389 mask!1564))))

(assert (=> b!1177063 (= lt!531389 (array!76039 (store (arr!36665 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37202 _keys!1208)))))

(declare-fun e!669152 () Bool)

(declare-fun b!1177064 () Bool)

(declare-fun arrayContainsKey!0 (array!76038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177064 (= e!669152 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177065 () Bool)

(declare-fun e!669159 () Bool)

(declare-fun e!669151 () Bool)

(assert (=> b!1177065 (= e!669159 e!669151)))

(declare-fun res!781941 () Bool)

(assert (=> b!1177065 (=> res!781941 e!669151)))

(assert (=> b!1177065 (= res!781941 (not (validKeyInArray!0 (select (arr!36665 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19142 0))(
  ( (tuple2!19143 (_1!9581 (_ BitVec 64)) (_2!9581 V!44635)) )
))
(declare-datatypes ((List!25909 0))(
  ( (Nil!25906) (Cons!25905 (h!27114 tuple2!19142) (t!38009 List!25909)) )
))
(declare-datatypes ((ListLongMap!17123 0))(
  ( (ListLongMap!17124 (toList!8577 List!25909)) )
))
(declare-fun lt!531395 () ListLongMap!17123)

(declare-fun lt!531398 () ListLongMap!17123)

(assert (=> b!1177065 (= lt!531395 lt!531398)))

(declare-fun lt!531399 () ListLongMap!17123)

(declare-fun -!1580 (ListLongMap!17123 (_ BitVec 64)) ListLongMap!17123)

(assert (=> b!1177065 (= lt!531398 (-!1580 lt!531399 k0!934))))

(declare-fun zeroValue!944 () V!44635)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531394 () array!76040)

(declare-fun minValue!944 () V!44635)

(declare-fun getCurrentListMapNoExtraKeys!5008 (array!76038 array!76040 (_ BitVec 32) (_ BitVec 32) V!44635 V!44635 (_ BitVec 32) Int) ListLongMap!17123)

(assert (=> b!1177065 (= lt!531395 (getCurrentListMapNoExtraKeys!5008 lt!531389 lt!531394 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177065 (= lt!531399 (getCurrentListMapNoExtraKeys!5008 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-datatypes ((Unit!38802 0))(
  ( (Unit!38803) )
))
(declare-fun lt!531390 () Unit!38802)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!804 (array!76038 array!76040 (_ BitVec 32) (_ BitVec 32) V!44635 V!44635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38802)

(assert (=> b!1177065 (= lt!531390 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!804 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177066 () Bool)

(declare-fun e!669156 () Unit!38802)

(declare-fun Unit!38804 () Unit!38802)

(assert (=> b!1177066 (= e!669156 Unit!38804)))

(declare-fun b!1177067 () Bool)

(declare-fun res!781942 () Bool)

(assert (=> b!1177067 (=> (not res!781942) (not e!669160))))

(assert (=> b!1177067 (= res!781942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177068 () Bool)

(declare-fun e!669149 () Bool)

(assert (=> b!1177068 (= e!669149 tp_is_empty!29631)))

(declare-fun b!1177069 () Bool)

(declare-fun res!781930 () Bool)

(assert (=> b!1177069 (=> (not res!781930) (not e!669160))))

(declare-datatypes ((List!25910 0))(
  ( (Nil!25907) (Cons!25906 (h!27115 (_ BitVec 64)) (t!38010 List!25910)) )
))
(declare-fun arrayNoDuplicates!0 (array!76038 (_ BitVec 32) List!25910) Bool)

(assert (=> b!1177069 (= res!781930 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25907))))

(declare-fun b!1177070 () Bool)

(declare-fun Unit!38805 () Unit!38802)

(assert (=> b!1177070 (= e!669156 Unit!38805)))

(declare-fun lt!531392 () Unit!38802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76038 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38802)

(assert (=> b!1177070 (= lt!531392 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177070 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531388 () Unit!38802)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76038 (_ BitVec 32) (_ BitVec 32)) Unit!38802)

(assert (=> b!1177070 (= lt!531388 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1177070 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25907)))

(declare-fun lt!531391 () Unit!38802)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76038 (_ BitVec 64) (_ BitVec 32) List!25910) Unit!38802)

(assert (=> b!1177070 (= lt!531391 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25907))))

(assert (=> b!1177070 false))

(declare-fun b!1177071 () Bool)

(declare-fun e!669150 () Bool)

(assert (=> b!1177071 (= e!669158 (not e!669150))))

(declare-fun res!781935 () Bool)

(assert (=> b!1177071 (=> res!781935 e!669150)))

(assert (=> b!1177071 (= res!781935 (bvsgt from!1455 i!673))))

(assert (=> b!1177071 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!531387 () Unit!38802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76038 (_ BitVec 64) (_ BitVec 32)) Unit!38802)

(assert (=> b!1177071 (= lt!531387 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1177072 () Bool)

(declare-fun e!669153 () Bool)

(assert (=> b!1177072 (= e!669153 e!669152)))

(declare-fun res!781938 () Bool)

(assert (=> b!1177072 (=> res!781938 e!669152)))

(assert (=> b!1177072 (= res!781938 (not (= (select (arr!36665 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1177073 () Bool)

(assert (=> b!1177073 (= e!669150 e!669159)))

(declare-fun res!781936 () Bool)

(assert (=> b!1177073 (=> res!781936 e!669159)))

(assert (=> b!1177073 (= res!781936 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!531397 () ListLongMap!17123)

(assert (=> b!1177073 (= lt!531397 (getCurrentListMapNoExtraKeys!5008 lt!531389 lt!531394 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531386 () V!44635)

(assert (=> b!1177073 (= lt!531394 (array!76041 (store (arr!36666 _values!996) i!673 (ValueCellFull!14106 lt!531386)) (size!37203 _values!996)))))

(declare-fun dynLambda!2984 (Int (_ BitVec 64)) V!44635)

(assert (=> b!1177073 (= lt!531386 (dynLambda!2984 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531393 () ListLongMap!17123)

(assert (=> b!1177073 (= lt!531393 (getCurrentListMapNoExtraKeys!5008 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177074 () Bool)

(declare-fun res!781928 () Bool)

(assert (=> b!1177074 (=> (not res!781928) (not e!669160))))

(assert (=> b!1177074 (= res!781928 (= (select (arr!36665 _keys!1208) i!673) k0!934))))

(declare-fun b!1177075 () Bool)

(assert (=> b!1177075 (= e!669154 (and e!669149 mapRes!46274))))

(declare-fun condMapEmpty!46274 () Bool)

(declare-fun mapDefault!46274 () ValueCell!14106)

(assert (=> b!1177075 (= condMapEmpty!46274 (= (arr!36666 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14106)) mapDefault!46274)))))

(declare-fun mapNonEmpty!46274 () Bool)

(declare-fun tp!88017 () Bool)

(declare-fun e!669155 () Bool)

(assert (=> mapNonEmpty!46274 (= mapRes!46274 (and tp!88017 e!669155))))

(declare-fun mapKey!46274 () (_ BitVec 32))

(declare-fun mapRest!46274 () (Array (_ BitVec 32) ValueCell!14106))

(declare-fun mapValue!46274 () ValueCell!14106)

(assert (=> mapNonEmpty!46274 (= (arr!36666 _values!996) (store mapRest!46274 mapKey!46274 mapValue!46274))))

(declare-fun b!1177076 () Bool)

(assert (=> b!1177076 (= e!669155 tp_is_empty!29631)))

(declare-fun b!1177077 () Bool)

(declare-fun res!781931 () Bool)

(assert (=> b!1177077 (=> (not res!781931) (not e!669160))))

(assert (=> b!1177077 (= res!781931 (and (= (size!37203 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37202 _keys!1208) (size!37203 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177078 () Bool)

(assert (=> b!1177078 (= e!669151 true)))

(declare-fun e!669157 () Bool)

(assert (=> b!1177078 e!669157))

(declare-fun res!781937 () Bool)

(assert (=> b!1177078 (=> (not res!781937) (not e!669157))))

(assert (=> b!1177078 (= res!781937 (not (= (select (arr!36665 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!531385 () Unit!38802)

(assert (=> b!1177078 (= lt!531385 e!669156)))

(declare-fun c!116723 () Bool)

(assert (=> b!1177078 (= c!116723 (= (select (arr!36665 _keys!1208) from!1455) k0!934))))

(assert (=> b!1177078 e!669153))

(declare-fun res!781929 () Bool)

(assert (=> b!1177078 (=> (not res!781929) (not e!669153))))

(declare-fun lt!531396 () tuple2!19142)

(declare-fun +!3800 (ListLongMap!17123 tuple2!19142) ListLongMap!17123)

(assert (=> b!1177078 (= res!781929 (= lt!531397 (+!3800 lt!531398 lt!531396)))))

(declare-fun get!18766 (ValueCell!14106 V!44635) V!44635)

(assert (=> b!1177078 (= lt!531396 (tuple2!19143 (select (arr!36665 _keys!1208) from!1455) (get!18766 (select (arr!36666 _values!996) from!1455) lt!531386)))))

(declare-fun b!1177079 () Bool)

(declare-fun res!781933 () Bool)

(assert (=> b!1177079 (=> (not res!781933) (not e!669158))))

(assert (=> b!1177079 (= res!781933 (arrayNoDuplicates!0 lt!531389 #b00000000000000000000000000000000 Nil!25907))))

(declare-fun b!1177080 () Bool)

(assert (=> b!1177080 (= e!669157 (= lt!531393 (+!3800 lt!531399 lt!531396)))))

(declare-fun b!1177081 () Bool)

(declare-fun res!781939 () Bool)

(assert (=> b!1177081 (=> (not res!781939) (not e!669160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177081 (= res!781939 (validMask!0 mask!1564))))

(assert (= (and start!99558 res!781934) b!1177081))

(assert (= (and b!1177081 res!781939) b!1177077))

(assert (= (and b!1177077 res!781931) b!1177067))

(assert (= (and b!1177067 res!781942) b!1177069))

(assert (= (and b!1177069 res!781930) b!1177062))

(assert (= (and b!1177062 res!781940) b!1177061))

(assert (= (and b!1177061 res!781927) b!1177074))

(assert (= (and b!1177074 res!781928) b!1177063))

(assert (= (and b!1177063 res!781932) b!1177079))

(assert (= (and b!1177079 res!781933) b!1177071))

(assert (= (and b!1177071 (not res!781935)) b!1177073))

(assert (= (and b!1177073 (not res!781936)) b!1177065))

(assert (= (and b!1177065 (not res!781941)) b!1177078))

(assert (= (and b!1177078 res!781929) b!1177072))

(assert (= (and b!1177072 (not res!781938)) b!1177064))

(assert (= (and b!1177078 c!116723) b!1177070))

(assert (= (and b!1177078 (not c!116723)) b!1177066))

(assert (= (and b!1177078 res!781937) b!1177080))

(assert (= (and b!1177075 condMapEmpty!46274) mapIsEmpty!46274))

(assert (= (and b!1177075 (not condMapEmpty!46274)) mapNonEmpty!46274))

(get-info :version)

(assert (= (and mapNonEmpty!46274 ((_ is ValueCellFull!14106) mapValue!46274)) b!1177076))

(assert (= (and b!1177075 ((_ is ValueCellFull!14106) mapDefault!46274)) b!1177068))

(assert (= start!99558 b!1177075))

(declare-fun b_lambda!20263 () Bool)

(assert (=> (not b_lambda!20263) (not b!1177073)))

(declare-fun t!38008 () Bool)

(declare-fun tb!9921 () Bool)

(assert (=> (and start!99558 (= defaultEntry!1004 defaultEntry!1004) t!38008) tb!9921))

(declare-fun result!20401 () Bool)

(assert (=> tb!9921 (= result!20401 tp_is_empty!29631)))

(assert (=> b!1177073 t!38008))

(declare-fun b_and!41085 () Bool)

(assert (= b_and!41083 (and (=> t!38008 result!20401) b_and!41085)))

(declare-fun m!1085057 () Bool)

(assert (=> b!1177061 m!1085057))

(declare-fun m!1085059 () Bool)

(assert (=> b!1177072 m!1085059))

(declare-fun m!1085061 () Bool)

(assert (=> mapNonEmpty!46274 m!1085061))

(declare-fun m!1085063 () Bool)

(assert (=> b!1177067 m!1085063))

(declare-fun m!1085065 () Bool)

(assert (=> b!1177063 m!1085065))

(declare-fun m!1085067 () Bool)

(assert (=> b!1177063 m!1085067))

(declare-fun m!1085069 () Bool)

(assert (=> b!1177069 m!1085069))

(declare-fun m!1085071 () Bool)

(assert (=> b!1177079 m!1085071))

(declare-fun m!1085073 () Bool)

(assert (=> b!1177074 m!1085073))

(declare-fun m!1085075 () Bool)

(assert (=> b!1177073 m!1085075))

(declare-fun m!1085077 () Bool)

(assert (=> b!1177073 m!1085077))

(declare-fun m!1085079 () Bool)

(assert (=> b!1177073 m!1085079))

(declare-fun m!1085081 () Bool)

(assert (=> b!1177073 m!1085081))

(declare-fun m!1085083 () Bool)

(assert (=> start!99558 m!1085083))

(declare-fun m!1085085 () Bool)

(assert (=> start!99558 m!1085085))

(declare-fun m!1085087 () Bool)

(assert (=> b!1177081 m!1085087))

(declare-fun m!1085089 () Bool)

(assert (=> b!1177070 m!1085089))

(declare-fun m!1085091 () Bool)

(assert (=> b!1177070 m!1085091))

(declare-fun m!1085093 () Bool)

(assert (=> b!1177070 m!1085093))

(declare-fun m!1085095 () Bool)

(assert (=> b!1177070 m!1085095))

(declare-fun m!1085097 () Bool)

(assert (=> b!1177070 m!1085097))

(declare-fun m!1085099 () Bool)

(assert (=> b!1177071 m!1085099))

(declare-fun m!1085101 () Bool)

(assert (=> b!1177071 m!1085101))

(declare-fun m!1085103 () Bool)

(assert (=> b!1177080 m!1085103))

(declare-fun m!1085105 () Bool)

(assert (=> b!1177064 m!1085105))

(declare-fun m!1085107 () Bool)

(assert (=> b!1177065 m!1085107))

(declare-fun m!1085109 () Bool)

(assert (=> b!1177065 m!1085109))

(declare-fun m!1085111 () Bool)

(assert (=> b!1177065 m!1085111))

(assert (=> b!1177065 m!1085059))

(declare-fun m!1085113 () Bool)

(assert (=> b!1177065 m!1085113))

(declare-fun m!1085115 () Bool)

(assert (=> b!1177065 m!1085115))

(assert (=> b!1177065 m!1085059))

(assert (=> b!1177078 m!1085059))

(declare-fun m!1085117 () Bool)

(assert (=> b!1177078 m!1085117))

(declare-fun m!1085119 () Bool)

(assert (=> b!1177078 m!1085119))

(assert (=> b!1177078 m!1085119))

(declare-fun m!1085121 () Bool)

(assert (=> b!1177078 m!1085121))

(check-sat (not b!1177080) (not b!1177061) tp_is_empty!29631 (not b!1177069) (not b_lambda!20263) (not b!1177065) (not b!1177071) (not b!1177070) (not b!1177073) (not b_next!25101) (not start!99558) b_and!41085 (not mapNonEmpty!46274) (not b!1177078) (not b!1177067) (not b!1177081) (not b!1177063) (not b!1177064) (not b!1177079))
(check-sat b_and!41085 (not b_next!25101))
