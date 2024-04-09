; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101412 () Bool)

(assert start!101412)

(declare-fun b_free!26247 () Bool)

(declare-fun b_next!26247 () Bool)

(assert (=> start!101412 (= b_free!26247 (not b_next!26247))))

(declare-fun tp!91769 () Bool)

(declare-fun b_and!43657 () Bool)

(assert (=> start!101412 (= tp!91769 b_and!43657)))

(declare-fun b!1218147 () Bool)

(declare-fun res!809104 () Bool)

(declare-fun e!691648 () Bool)

(assert (=> b!1218147 (=> (not res!809104) (not e!691648))))

(declare-datatypes ((array!78652 0))(
  ( (array!78653 (arr!37955 (Array (_ BitVec 32) (_ BitVec 64))) (size!38492 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78652)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78652 (_ BitVec 32)) Bool)

(assert (=> b!1218147 (= res!809104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1218148 () Bool)

(declare-fun res!809095 () Bool)

(assert (=> b!1218148 (=> (not res!809095) (not e!691648))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!46395 0))(
  ( (V!46396 (val!15532 Int)) )
))
(declare-datatypes ((ValueCell!14766 0))(
  ( (ValueCellFull!14766 (v!18188 V!46395)) (EmptyCell!14766) )
))
(declare-datatypes ((array!78654 0))(
  ( (array!78655 (arr!37956 (Array (_ BitVec 32) ValueCell!14766)) (size!38493 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78654)

(assert (=> b!1218148 (= res!809095 (and (= (size!38493 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38492 _keys!1208) (size!38493 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1218149 () Bool)

(declare-fun res!809106 () Bool)

(assert (=> b!1218149 (=> (not res!809106) (not e!691648))))

(declare-datatypes ((List!26934 0))(
  ( (Nil!26931) (Cons!26930 (h!28139 (_ BitVec 64)) (t!40168 List!26934)) )
))
(declare-fun arrayNoDuplicates!0 (array!78652 (_ BitVec 32) List!26934) Bool)

(assert (=> b!1218149 (= res!809106 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26931))))

(declare-fun mapIsEmpty!48307 () Bool)

(declare-fun mapRes!48307 () Bool)

(assert (=> mapIsEmpty!48307 mapRes!48307))

(declare-fun mapNonEmpty!48307 () Bool)

(declare-fun tp!91770 () Bool)

(declare-fun e!691647 () Bool)

(assert (=> mapNonEmpty!48307 (= mapRes!48307 (and tp!91770 e!691647))))

(declare-fun mapRest!48307 () (Array (_ BitVec 32) ValueCell!14766))

(declare-fun mapValue!48307 () ValueCell!14766)

(declare-fun mapKey!48307 () (_ BitVec 32))

(assert (=> mapNonEmpty!48307 (= (arr!37956 _values!996) (store mapRest!48307 mapKey!48307 mapValue!48307))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1218150 () Bool)

(declare-fun e!691642 () Bool)

(assert (=> b!1218150 (= e!691642 (or (not (= (select (arr!37955 _keys!1208) from!1455) k0!934)) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun e!691640 () Bool)

(assert (=> b!1218150 e!691640))

(declare-fun res!809105 () Bool)

(assert (=> b!1218150 (=> (not res!809105) (not e!691640))))

(declare-datatypes ((tuple2!20114 0))(
  ( (tuple2!20115 (_1!10067 (_ BitVec 64)) (_2!10067 V!46395)) )
))
(declare-datatypes ((List!26935 0))(
  ( (Nil!26932) (Cons!26931 (h!28140 tuple2!20114) (t!40169 List!26935)) )
))
(declare-datatypes ((ListLongMap!18095 0))(
  ( (ListLongMap!18096 (toList!9063 List!26935)) )
))
(declare-fun lt!553714 () ListLongMap!18095)

(declare-fun lt!553720 () V!46395)

(declare-fun lt!553715 () ListLongMap!18095)

(declare-fun +!4044 (ListLongMap!18095 tuple2!20114) ListLongMap!18095)

(declare-fun get!19388 (ValueCell!14766 V!46395) V!46395)

(assert (=> b!1218150 (= res!809105 (= lt!553714 (+!4044 lt!553715 (tuple2!20115 (select (arr!37955 _keys!1208) from!1455) (get!19388 (select (arr!37956 _values!996) from!1455) lt!553720)))))))

(declare-fun b!1218151 () Bool)

(declare-fun e!691638 () Bool)

(declare-fun e!691644 () Bool)

(assert (=> b!1218151 (= e!691638 (not e!691644))))

(declare-fun res!809099 () Bool)

(assert (=> b!1218151 (=> res!809099 e!691644)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1218151 (= res!809099 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1218151 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40310 0))(
  ( (Unit!40311) )
))
(declare-fun lt!553718 () Unit!40310)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78652 (_ BitVec 64) (_ BitVec 32)) Unit!40310)

(assert (=> b!1218151 (= lt!553718 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1218152 () Bool)

(declare-fun e!691641 () Bool)

(assert (=> b!1218152 (= e!691641 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1218153 () Bool)

(declare-fun res!809093 () Bool)

(assert (=> b!1218153 (=> (not res!809093) (not e!691648))))

(assert (=> b!1218153 (= res!809093 (= (select (arr!37955 _keys!1208) i!673) k0!934))))

(declare-fun b!1218154 () Bool)

(declare-fun tp_is_empty!30951 () Bool)

(assert (=> b!1218154 (= e!691647 tp_is_empty!30951)))

(declare-fun b!1218155 () Bool)

(declare-fun res!809098 () Bool)

(assert (=> b!1218155 (=> (not res!809098) (not e!691648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1218155 (= res!809098 (validMask!0 mask!1564))))

(declare-fun b!1218156 () Bool)

(declare-fun e!691643 () Bool)

(declare-fun e!691646 () Bool)

(assert (=> b!1218156 (= e!691643 (and e!691646 mapRes!48307))))

(declare-fun condMapEmpty!48307 () Bool)

(declare-fun mapDefault!48307 () ValueCell!14766)

(assert (=> b!1218156 (= condMapEmpty!48307 (= (arr!37956 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14766)) mapDefault!48307)))))

(declare-fun b!1218157 () Bool)

(declare-fun res!809100 () Bool)

(assert (=> b!1218157 (=> (not res!809100) (not e!691638))))

(declare-fun lt!553712 () array!78652)

(assert (=> b!1218157 (= res!809100 (arrayNoDuplicates!0 lt!553712 #b00000000000000000000000000000000 Nil!26931))))

(declare-fun res!809094 () Bool)

(assert (=> start!101412 (=> (not res!809094) (not e!691648))))

(assert (=> start!101412 (= res!809094 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38492 _keys!1208))))))

(assert (=> start!101412 e!691648))

(assert (=> start!101412 tp_is_empty!30951))

(declare-fun array_inv!28800 (array!78652) Bool)

(assert (=> start!101412 (array_inv!28800 _keys!1208)))

(assert (=> start!101412 true))

(assert (=> start!101412 tp!91769))

(declare-fun array_inv!28801 (array!78654) Bool)

(assert (=> start!101412 (and (array_inv!28801 _values!996) e!691643)))

(declare-fun b!1218158 () Bool)

(declare-fun e!691639 () Bool)

(assert (=> b!1218158 (= e!691639 e!691642)))

(declare-fun res!809097 () Bool)

(assert (=> b!1218158 (=> res!809097 e!691642)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1218158 (= res!809097 (not (validKeyInArray!0 (select (arr!37955 _keys!1208) from!1455))))))

(declare-fun lt!553719 () ListLongMap!18095)

(assert (=> b!1218158 (= lt!553719 lt!553715)))

(declare-fun lt!553721 () ListLongMap!18095)

(declare-fun -!1923 (ListLongMap!18095 (_ BitVec 64)) ListLongMap!18095)

(assert (=> b!1218158 (= lt!553715 (-!1923 lt!553721 k0!934))))

(declare-fun zeroValue!944 () V!46395)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!553717 () array!78654)

(declare-fun minValue!944 () V!46395)

(declare-fun getCurrentListMapNoExtraKeys!5467 (array!78652 array!78654 (_ BitVec 32) (_ BitVec 32) V!46395 V!46395 (_ BitVec 32) Int) ListLongMap!18095)

(assert (=> b!1218158 (= lt!553719 (getCurrentListMapNoExtraKeys!5467 lt!553712 lt!553717 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1218158 (= lt!553721 (getCurrentListMapNoExtraKeys!5467 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!553716 () Unit!40310)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1125 (array!78652 array!78654 (_ BitVec 32) (_ BitVec 32) V!46395 V!46395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40310)

(assert (=> b!1218158 (= lt!553716 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1125 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1218159 () Bool)

(assert (=> b!1218159 (= e!691646 tp_is_empty!30951)))

(declare-fun b!1218160 () Bool)

(assert (=> b!1218160 (= e!691648 e!691638)))

(declare-fun res!809107 () Bool)

(assert (=> b!1218160 (=> (not res!809107) (not e!691638))))

(assert (=> b!1218160 (= res!809107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!553712 mask!1564))))

(assert (=> b!1218160 (= lt!553712 (array!78653 (store (arr!37955 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38492 _keys!1208)))))

(declare-fun b!1218161 () Bool)

(assert (=> b!1218161 (= e!691644 e!691639)))

(declare-fun res!809102 () Bool)

(assert (=> b!1218161 (=> res!809102 e!691639)))

(assert (=> b!1218161 (= res!809102 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1218161 (= lt!553714 (getCurrentListMapNoExtraKeys!5467 lt!553712 lt!553717 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1218161 (= lt!553717 (array!78655 (store (arr!37956 _values!996) i!673 (ValueCellFull!14766 lt!553720)) (size!38493 _values!996)))))

(declare-fun dynLambda!3371 (Int (_ BitVec 64)) V!46395)

(assert (=> b!1218161 (= lt!553720 (dynLambda!3371 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!553713 () ListLongMap!18095)

(assert (=> b!1218161 (= lt!553713 (getCurrentListMapNoExtraKeys!5467 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1218162 () Bool)

(declare-fun res!809103 () Bool)

(assert (=> b!1218162 (=> (not res!809103) (not e!691648))))

(assert (=> b!1218162 (= res!809103 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38492 _keys!1208))))))

(declare-fun b!1218163 () Bool)

(assert (=> b!1218163 (= e!691640 e!691641)))

(declare-fun res!809101 () Bool)

(assert (=> b!1218163 (=> res!809101 e!691641)))

(assert (=> b!1218163 (= res!809101 (not (= (select (arr!37955 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1218164 () Bool)

(declare-fun res!809096 () Bool)

(assert (=> b!1218164 (=> (not res!809096) (not e!691648))))

(assert (=> b!1218164 (= res!809096 (validKeyInArray!0 k0!934))))

(assert (= (and start!101412 res!809094) b!1218155))

(assert (= (and b!1218155 res!809098) b!1218148))

(assert (= (and b!1218148 res!809095) b!1218147))

(assert (= (and b!1218147 res!809104) b!1218149))

(assert (= (and b!1218149 res!809106) b!1218162))

(assert (= (and b!1218162 res!809103) b!1218164))

(assert (= (and b!1218164 res!809096) b!1218153))

(assert (= (and b!1218153 res!809093) b!1218160))

(assert (= (and b!1218160 res!809107) b!1218157))

(assert (= (and b!1218157 res!809100) b!1218151))

(assert (= (and b!1218151 (not res!809099)) b!1218161))

(assert (= (and b!1218161 (not res!809102)) b!1218158))

(assert (= (and b!1218158 (not res!809097)) b!1218150))

(assert (= (and b!1218150 res!809105) b!1218163))

(assert (= (and b!1218163 (not res!809101)) b!1218152))

(assert (= (and b!1218156 condMapEmpty!48307) mapIsEmpty!48307))

(assert (= (and b!1218156 (not condMapEmpty!48307)) mapNonEmpty!48307))

(get-info :version)

(assert (= (and mapNonEmpty!48307 ((_ is ValueCellFull!14766) mapValue!48307)) b!1218154))

(assert (= (and b!1218156 ((_ is ValueCellFull!14766) mapDefault!48307)) b!1218159))

(assert (= start!101412 b!1218156))

(declare-fun b_lambda!22009 () Bool)

(assert (=> (not b_lambda!22009) (not b!1218161)))

(declare-fun t!40167 () Bool)

(declare-fun tb!11055 () Bool)

(assert (=> (and start!101412 (= defaultEntry!1004 defaultEntry!1004) t!40167) tb!11055))

(declare-fun result!22703 () Bool)

(assert (=> tb!11055 (= result!22703 tp_is_empty!30951)))

(assert (=> b!1218161 t!40167))

(declare-fun b_and!43659 () Bool)

(assert (= b_and!43657 (and (=> t!40167 result!22703) b_and!43659)))

(declare-fun m!1122939 () Bool)

(assert (=> b!1218150 m!1122939))

(declare-fun m!1122941 () Bool)

(assert (=> b!1218150 m!1122941))

(assert (=> b!1218150 m!1122941))

(declare-fun m!1122943 () Bool)

(assert (=> b!1218150 m!1122943))

(declare-fun m!1122945 () Bool)

(assert (=> b!1218150 m!1122945))

(declare-fun m!1122947 () Bool)

(assert (=> b!1218164 m!1122947))

(declare-fun m!1122949 () Bool)

(assert (=> b!1218158 m!1122949))

(declare-fun m!1122951 () Bool)

(assert (=> b!1218158 m!1122951))

(assert (=> b!1218158 m!1122939))

(declare-fun m!1122953 () Bool)

(assert (=> b!1218158 m!1122953))

(assert (=> b!1218158 m!1122939))

(declare-fun m!1122955 () Bool)

(assert (=> b!1218158 m!1122955))

(declare-fun m!1122957 () Bool)

(assert (=> b!1218158 m!1122957))

(declare-fun m!1122959 () Bool)

(assert (=> b!1218160 m!1122959))

(declare-fun m!1122961 () Bool)

(assert (=> b!1218160 m!1122961))

(declare-fun m!1122963 () Bool)

(assert (=> b!1218155 m!1122963))

(declare-fun m!1122965 () Bool)

(assert (=> b!1218157 m!1122965))

(declare-fun m!1122967 () Bool)

(assert (=> b!1218149 m!1122967))

(declare-fun m!1122969 () Bool)

(assert (=> b!1218147 m!1122969))

(declare-fun m!1122971 () Bool)

(assert (=> mapNonEmpty!48307 m!1122971))

(declare-fun m!1122973 () Bool)

(assert (=> b!1218153 m!1122973))

(declare-fun m!1122975 () Bool)

(assert (=> b!1218152 m!1122975))

(declare-fun m!1122977 () Bool)

(assert (=> b!1218161 m!1122977))

(declare-fun m!1122979 () Bool)

(assert (=> b!1218161 m!1122979))

(declare-fun m!1122981 () Bool)

(assert (=> b!1218161 m!1122981))

(declare-fun m!1122983 () Bool)

(assert (=> b!1218161 m!1122983))

(declare-fun m!1122985 () Bool)

(assert (=> b!1218151 m!1122985))

(declare-fun m!1122987 () Bool)

(assert (=> b!1218151 m!1122987))

(assert (=> b!1218163 m!1122939))

(declare-fun m!1122989 () Bool)

(assert (=> start!101412 m!1122989))

(declare-fun m!1122991 () Bool)

(assert (=> start!101412 m!1122991))

(check-sat (not b!1218164) (not b_next!26247) (not b!1218160) (not b!1218155) (not b!1218147) (not b_lambda!22009) (not b!1218158) (not start!101412) (not b!1218161) (not b!1218157) (not b!1218150) (not b!1218152) tp_is_empty!30951 b_and!43659 (not b!1218151) (not mapNonEmpty!48307) (not b!1218149))
(check-sat b_and!43659 (not b_next!26247))
