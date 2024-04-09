; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98230 () Bool)

(assert start!98230)

(declare-fun b_free!23895 () Bool)

(declare-fun b_next!23895 () Bool)

(assert (=> start!98230 (= b_free!23895 (not b_next!23895))))

(declare-fun tp!84390 () Bool)

(declare-fun b_and!38595 () Bool)

(assert (=> start!98230 (= tp!84390 b_and!38595)))

(declare-fun c!109919 () Bool)

(declare-datatypes ((V!43027 0))(
  ( (V!43028 (val!14269 Int)) )
))
(declare-datatypes ((tuple2!18062 0))(
  ( (tuple2!18063 (_1!9041 (_ BitVec 64)) (_2!9041 V!43027)) )
))
(declare-datatypes ((List!24881 0))(
  ( (Nil!24878) (Cons!24877 (h!26086 tuple2!18062) (t!35775 List!24881)) )
))
(declare-datatypes ((ListLongMap!16043 0))(
  ( (ListLongMap!16044 (toList!8037 List!24881)) )
))
(declare-fun call!48217 () ListLongMap!16043)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!501720 () ListLongMap!16043)

(declare-fun call!48216 () Bool)

(declare-fun bm!48211 () Bool)

(declare-fun contains!6531 (ListLongMap!16043 (_ BitVec 64)) Bool)

(assert (=> bm!48211 (= call!48216 (contains!6531 (ite c!109919 lt!501720 call!48217) k0!934))))

(declare-fun b!1129971 () Bool)

(declare-fun e!643129 () Bool)

(declare-fun e!643128 () Bool)

(assert (=> b!1129971 (= e!643129 e!643128)))

(declare-fun res!755114 () Bool)

(assert (=> b!1129971 (=> res!755114 e!643128)))

(declare-fun lt!501715 () ListLongMap!16043)

(assert (=> b!1129971 (= res!755114 (not (contains!6531 lt!501715 k0!934)))))

(declare-fun zeroValue!944 () V!43027)

(declare-datatypes ((array!73668 0))(
  ( (array!73669 (arr!35483 (Array (_ BitVec 32) (_ BitVec 64))) (size!36020 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73668)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13503 0))(
  ( (ValueCellFull!13503 (v!16903 V!43027)) (EmptyCell!13503) )
))
(declare-datatypes ((array!73670 0))(
  ( (array!73671 (arr!35484 (Array (_ BitVec 32) ValueCell!13503)) (size!36021 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73670)

(declare-fun minValue!944 () V!43027)

(declare-fun getCurrentListMapNoExtraKeys!4490 (array!73668 array!73670 (_ BitVec 32) (_ BitVec 32) V!43027 V!43027 (_ BitVec 32) Int) ListLongMap!16043)

(assert (=> b!1129971 (= lt!501715 (getCurrentListMapNoExtraKeys!4490 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129972 () Bool)

(declare-fun res!755127 () Bool)

(declare-fun e!643123 () Bool)

(assert (=> b!1129972 (=> (not res!755127) (not e!643123))))

(declare-fun lt!501716 () array!73668)

(declare-datatypes ((List!24882 0))(
  ( (Nil!24879) (Cons!24878 (h!26087 (_ BitVec 64)) (t!35776 List!24882)) )
))
(declare-fun arrayNoDuplicates!0 (array!73668 (_ BitVec 32) List!24882) Bool)

(assert (=> b!1129972 (= res!755127 (arrayNoDuplicates!0 lt!501716 #b00000000000000000000000000000000 Nil!24879))))

(declare-fun b!1129973 () Bool)

(declare-fun c!109917 () Bool)

(declare-fun lt!501717 () Bool)

(assert (=> b!1129973 (= c!109917 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501717))))

(declare-datatypes ((Unit!36968 0))(
  ( (Unit!36969) )
))
(declare-fun e!643132 () Unit!36968)

(declare-fun e!643120 () Unit!36968)

(assert (=> b!1129973 (= e!643132 e!643120)))

(declare-fun b!1129974 () Bool)

(declare-fun res!755120 () Bool)

(declare-fun e!643124 () Bool)

(assert (=> b!1129974 (=> (not res!755120) (not e!643124))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1129974 (= res!755120 (= (select (arr!35483 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!44455 () Bool)

(declare-fun mapRes!44455 () Bool)

(assert (=> mapIsEmpty!44455 mapRes!44455))

(declare-fun b!1129975 () Bool)

(declare-fun e!643127 () Bool)

(assert (=> b!1129975 (= e!643128 e!643127)))

(declare-fun res!755123 () Bool)

(assert (=> b!1129975 (=> res!755123 e!643127)))

(assert (=> b!1129975 (= res!755123 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36020 _keys!1208))))))

(declare-fun lt!501722 () Unit!36968)

(declare-fun e!643125 () Unit!36968)

(assert (=> b!1129975 (= lt!501722 e!643125)))

(assert (=> b!1129975 (= c!109919 (and (not lt!501717) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129975 (= lt!501717 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!48212 () Bool)

(declare-fun call!48214 () Unit!36968)

(declare-fun call!48218 () Unit!36968)

(assert (=> bm!48212 (= call!48214 call!48218)))

(declare-fun b!1129976 () Bool)

(declare-fun res!755125 () Bool)

(assert (=> b!1129976 (=> (not res!755125) (not e!643124))))

(assert (=> b!1129976 (= res!755125 (and (= (size!36021 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36020 _keys!1208) (size!36021 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1129977 () Bool)

(declare-fun res!755122 () Bool)

(assert (=> b!1129977 (=> (not res!755122) (not e!643124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129977 (= res!755122 (validMask!0 mask!1564))))

(declare-fun b!1129978 () Bool)

(assert (=> b!1129978 (= e!643124 e!643123)))

(declare-fun res!755124 () Bool)

(assert (=> b!1129978 (=> (not res!755124) (not e!643123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73668 (_ BitVec 32)) Bool)

(assert (=> b!1129978 (= res!755124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501716 mask!1564))))

(assert (=> b!1129978 (= lt!501716 (array!73669 (store (arr!35483 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36020 _keys!1208)))))

(declare-fun res!755116 () Bool)

(assert (=> start!98230 (=> (not res!755116) (not e!643124))))

(assert (=> start!98230 (= res!755116 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36020 _keys!1208))))))

(assert (=> start!98230 e!643124))

(declare-fun tp_is_empty!28425 () Bool)

(assert (=> start!98230 tp_is_empty!28425))

(declare-fun array_inv!27086 (array!73668) Bool)

(assert (=> start!98230 (array_inv!27086 _keys!1208)))

(assert (=> start!98230 true))

(assert (=> start!98230 tp!84390))

(declare-fun e!643131 () Bool)

(declare-fun array_inv!27087 (array!73670) Bool)

(assert (=> start!98230 (and (array_inv!27087 _values!996) e!643131)))

(declare-fun b!1129970 () Bool)

(assert (=> b!1129970 (= e!643127 true)))

(declare-fun lt!501723 () Bool)

(declare-fun getCurrentListMap!4441 (array!73668 array!73670 (_ BitVec 32) (_ BitVec 32) V!43027 V!43027 (_ BitVec 32) Int) ListLongMap!16043)

(assert (=> b!1129970 (= lt!501723 (contains!6531 (getCurrentListMap!4441 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun bm!48213 () Bool)

(declare-fun call!48220 () ListLongMap!16043)

(assert (=> bm!48213 (= call!48217 call!48220)))

(declare-fun b!1129979 () Bool)

(declare-fun res!755126 () Bool)

(assert (=> b!1129979 (=> (not res!755126) (not e!643124))))

(assert (=> b!1129979 (= res!755126 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36020 _keys!1208))))))

(declare-fun b!1129980 () Bool)

(declare-fun Unit!36970 () Unit!36968)

(assert (=> b!1129980 (= e!643120 Unit!36970)))

(declare-fun b!1129981 () Bool)

(declare-fun e!643133 () Bool)

(assert (=> b!1129981 (= e!643133 tp_is_empty!28425)))

(declare-fun bm!48214 () Bool)

(declare-fun lt!501728 () array!73670)

(declare-fun call!48219 () ListLongMap!16043)

(assert (=> bm!48214 (= call!48219 (getCurrentListMapNoExtraKeys!4490 lt!501716 lt!501728 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!48221 () ListLongMap!16043)

(declare-fun bm!48215 () Bool)

(assert (=> bm!48215 (= call!48221 (getCurrentListMapNoExtraKeys!4490 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!643130 () Bool)

(declare-fun b!1129982 () Bool)

(declare-fun -!1165 (ListLongMap!16043 (_ BitVec 64)) ListLongMap!16043)

(assert (=> b!1129982 (= e!643130 (= call!48219 (-!1165 call!48221 k0!934)))))

(declare-fun b!1129983 () Bool)

(declare-fun res!755117 () Bool)

(assert (=> b!1129983 (=> (not res!755117) (not e!643124))))

(assert (=> b!1129983 (= res!755117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129984 () Bool)

(assert (=> b!1129984 (= e!643130 (= call!48219 call!48221))))

(declare-fun b!1129985 () Bool)

(declare-fun e!643119 () Bool)

(assert (=> b!1129985 (= e!643123 (not e!643119))))

(declare-fun res!755113 () Bool)

(assert (=> b!1129985 (=> res!755113 e!643119)))

(assert (=> b!1129985 (= res!755113 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129985 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!501729 () Unit!36968)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73668 (_ BitVec 64) (_ BitVec 32)) Unit!36968)

(assert (=> b!1129985 (= lt!501729 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!48216 () Bool)

(declare-fun call!48215 () Bool)

(assert (=> bm!48216 (= call!48215 call!48216)))

(declare-fun mapNonEmpty!44455 () Bool)

(declare-fun tp!84389 () Bool)

(declare-fun e!643121 () Bool)

(assert (=> mapNonEmpty!44455 (= mapRes!44455 (and tp!84389 e!643121))))

(declare-fun mapKey!44455 () (_ BitVec 32))

(declare-fun mapValue!44455 () ValueCell!13503)

(declare-fun mapRest!44455 () (Array (_ BitVec 32) ValueCell!13503))

(assert (=> mapNonEmpty!44455 (= (arr!35484 _values!996) (store mapRest!44455 mapKey!44455 mapValue!44455))))

(declare-fun bm!48217 () Bool)

(declare-fun c!109918 () Bool)

(declare-fun +!3404 (ListLongMap!16043 tuple2!18062) ListLongMap!16043)

(assert (=> bm!48217 (= call!48220 (+!3404 (ite c!109919 lt!501720 lt!501715) (ite c!109919 (tuple2!18063 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!109918 (tuple2!18063 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18063 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1129986 () Bool)

(declare-fun lt!501724 () Unit!36968)

(assert (=> b!1129986 (= e!643120 lt!501724)))

(assert (=> b!1129986 (= lt!501724 call!48214)))

(assert (=> b!1129986 call!48215))

(declare-fun b!1129987 () Bool)

(assert (=> b!1129987 call!48215))

(declare-fun lt!501721 () Unit!36968)

(assert (=> b!1129987 (= lt!501721 call!48214)))

(assert (=> b!1129987 (= e!643132 lt!501721)))

(declare-fun bm!48218 () Bool)

(declare-fun addStillContains!704 (ListLongMap!16043 (_ BitVec 64) V!43027 (_ BitVec 64)) Unit!36968)

(assert (=> bm!48218 (= call!48218 (addStillContains!704 lt!501715 (ite (or c!109919 c!109918) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!109919 c!109918) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1129988 () Bool)

(declare-fun e!643126 () Bool)

(assert (=> b!1129988 (= e!643119 e!643126)))

(declare-fun res!755121 () Bool)

(assert (=> b!1129988 (=> res!755121 e!643126)))

(assert (=> b!1129988 (= res!755121 (not (= from!1455 i!673)))))

(declare-fun lt!501725 () ListLongMap!16043)

(assert (=> b!1129988 (= lt!501725 (getCurrentListMapNoExtraKeys!4490 lt!501716 lt!501728 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2566 (Int (_ BitVec 64)) V!43027)

(assert (=> b!1129988 (= lt!501728 (array!73671 (store (arr!35484 _values!996) i!673 (ValueCellFull!13503 (dynLambda!2566 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36021 _values!996)))))

(declare-fun lt!501727 () ListLongMap!16043)

(assert (=> b!1129988 (= lt!501727 (getCurrentListMapNoExtraKeys!4490 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1129989 () Bool)

(declare-fun res!755118 () Bool)

(assert (=> b!1129989 (=> (not res!755118) (not e!643124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129989 (= res!755118 (validKeyInArray!0 k0!934))))

(declare-fun b!1129990 () Bool)

(declare-fun lt!501726 () Unit!36968)

(assert (=> b!1129990 (= e!643125 lt!501726)))

(declare-fun lt!501719 () Unit!36968)

(assert (=> b!1129990 (= lt!501719 call!48218)))

(assert (=> b!1129990 (= lt!501720 (+!3404 lt!501715 (tuple2!18063 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1129990 call!48216))

(assert (=> b!1129990 (= lt!501726 (addStillContains!704 lt!501720 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1129990 (contains!6531 call!48220 k0!934)))

(declare-fun b!1129991 () Bool)

(declare-fun res!755115 () Bool)

(assert (=> b!1129991 (=> (not res!755115) (not e!643124))))

(assert (=> b!1129991 (= res!755115 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24879))))

(declare-fun b!1129992 () Bool)

(assert (=> b!1129992 (= e!643125 e!643132)))

(assert (=> b!1129992 (= c!109918 (and (not lt!501717) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1129993 () Bool)

(assert (=> b!1129993 (= e!643131 (and e!643133 mapRes!44455))))

(declare-fun condMapEmpty!44455 () Bool)

(declare-fun mapDefault!44455 () ValueCell!13503)

(assert (=> b!1129993 (= condMapEmpty!44455 (= (arr!35484 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13503)) mapDefault!44455)))))

(declare-fun b!1129994 () Bool)

(assert (=> b!1129994 (= e!643126 e!643129)))

(declare-fun res!755119 () Bool)

(assert (=> b!1129994 (=> res!755119 e!643129)))

(assert (=> b!1129994 (= res!755119 (not (= (select (arr!35483 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1129994 e!643130))

(declare-fun c!109916 () Bool)

(assert (=> b!1129994 (= c!109916 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501718 () Unit!36968)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!420 (array!73668 array!73670 (_ BitVec 32) (_ BitVec 32) V!43027 V!43027 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36968)

(assert (=> b!1129994 (= lt!501718 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!420 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129995 () Bool)

(assert (=> b!1129995 (= e!643121 tp_is_empty!28425)))

(assert (= (and start!98230 res!755116) b!1129977))

(assert (= (and b!1129977 res!755122) b!1129976))

(assert (= (and b!1129976 res!755125) b!1129983))

(assert (= (and b!1129983 res!755117) b!1129991))

(assert (= (and b!1129991 res!755115) b!1129979))

(assert (= (and b!1129979 res!755126) b!1129989))

(assert (= (and b!1129989 res!755118) b!1129974))

(assert (= (and b!1129974 res!755120) b!1129978))

(assert (= (and b!1129978 res!755124) b!1129972))

(assert (= (and b!1129972 res!755127) b!1129985))

(assert (= (and b!1129985 (not res!755113)) b!1129988))

(assert (= (and b!1129988 (not res!755121)) b!1129994))

(assert (= (and b!1129994 c!109916) b!1129982))

(assert (= (and b!1129994 (not c!109916)) b!1129984))

(assert (= (or b!1129982 b!1129984) bm!48214))

(assert (= (or b!1129982 b!1129984) bm!48215))

(assert (= (and b!1129994 (not res!755119)) b!1129971))

(assert (= (and b!1129971 (not res!755114)) b!1129975))

(assert (= (and b!1129975 c!109919) b!1129990))

(assert (= (and b!1129975 (not c!109919)) b!1129992))

(assert (= (and b!1129992 c!109918) b!1129987))

(assert (= (and b!1129992 (not c!109918)) b!1129973))

(assert (= (and b!1129973 c!109917) b!1129986))

(assert (= (and b!1129973 (not c!109917)) b!1129980))

(assert (= (or b!1129987 b!1129986) bm!48212))

(assert (= (or b!1129987 b!1129986) bm!48213))

(assert (= (or b!1129987 b!1129986) bm!48216))

(assert (= (or b!1129990 bm!48216) bm!48211))

(assert (= (or b!1129990 bm!48212) bm!48218))

(assert (= (or b!1129990 bm!48213) bm!48217))

(assert (= (and b!1129975 (not res!755123)) b!1129970))

(assert (= (and b!1129993 condMapEmpty!44455) mapIsEmpty!44455))

(assert (= (and b!1129993 (not condMapEmpty!44455)) mapNonEmpty!44455))

(get-info :version)

(assert (= (and mapNonEmpty!44455 ((_ is ValueCellFull!13503) mapValue!44455)) b!1129995))

(assert (= (and b!1129993 ((_ is ValueCellFull!13503) mapDefault!44455)) b!1129981))

(assert (= start!98230 b!1129993))

(declare-fun b_lambda!18899 () Bool)

(assert (=> (not b_lambda!18899) (not b!1129988)))

(declare-fun t!35774 () Bool)

(declare-fun tb!8715 () Bool)

(assert (=> (and start!98230 (= defaultEntry!1004 defaultEntry!1004) t!35774) tb!8715))

(declare-fun result!17983 () Bool)

(assert (=> tb!8715 (= result!17983 tp_is_empty!28425)))

(assert (=> b!1129988 t!35774))

(declare-fun b_and!38597 () Bool)

(assert (= b_and!38595 (and (=> t!35774 result!17983) b_and!38597)))

(declare-fun m!1043343 () Bool)

(assert (=> b!1129985 m!1043343))

(declare-fun m!1043345 () Bool)

(assert (=> b!1129985 m!1043345))

(declare-fun m!1043347 () Bool)

(assert (=> b!1129982 m!1043347))

(declare-fun m!1043349 () Bool)

(assert (=> b!1129971 m!1043349))

(declare-fun m!1043351 () Bool)

(assert (=> b!1129971 m!1043351))

(declare-fun m!1043353 () Bool)

(assert (=> b!1129974 m!1043353))

(declare-fun m!1043355 () Bool)

(assert (=> bm!48217 m!1043355))

(declare-fun m!1043357 () Bool)

(assert (=> b!1129988 m!1043357))

(declare-fun m!1043359 () Bool)

(assert (=> b!1129988 m!1043359))

(declare-fun m!1043361 () Bool)

(assert (=> b!1129988 m!1043361))

(declare-fun m!1043363 () Bool)

(assert (=> b!1129988 m!1043363))

(declare-fun m!1043365 () Bool)

(assert (=> mapNonEmpty!44455 m!1043365))

(declare-fun m!1043367 () Bool)

(assert (=> bm!48218 m!1043367))

(declare-fun m!1043369 () Bool)

(assert (=> b!1129983 m!1043369))

(declare-fun m!1043371 () Bool)

(assert (=> start!98230 m!1043371))

(declare-fun m!1043373 () Bool)

(assert (=> start!98230 m!1043373))

(declare-fun m!1043375 () Bool)

(assert (=> b!1129991 m!1043375))

(declare-fun m!1043377 () Bool)

(assert (=> bm!48211 m!1043377))

(declare-fun m!1043379 () Bool)

(assert (=> b!1129994 m!1043379))

(declare-fun m!1043381 () Bool)

(assert (=> b!1129994 m!1043381))

(assert (=> bm!48215 m!1043351))

(declare-fun m!1043383 () Bool)

(assert (=> bm!48214 m!1043383))

(declare-fun m!1043385 () Bool)

(assert (=> b!1129972 m!1043385))

(declare-fun m!1043387 () Bool)

(assert (=> b!1129978 m!1043387))

(declare-fun m!1043389 () Bool)

(assert (=> b!1129978 m!1043389))

(declare-fun m!1043391 () Bool)

(assert (=> b!1129990 m!1043391))

(declare-fun m!1043393 () Bool)

(assert (=> b!1129990 m!1043393))

(declare-fun m!1043395 () Bool)

(assert (=> b!1129990 m!1043395))

(declare-fun m!1043397 () Bool)

(assert (=> b!1129989 m!1043397))

(declare-fun m!1043399 () Bool)

(assert (=> b!1129970 m!1043399))

(assert (=> b!1129970 m!1043399))

(declare-fun m!1043401 () Bool)

(assert (=> b!1129970 m!1043401))

(declare-fun m!1043403 () Bool)

(assert (=> b!1129977 m!1043403))

(check-sat (not mapNonEmpty!44455) (not bm!48215) (not b!1129985) (not b_lambda!18899) tp_is_empty!28425 (not b!1129970) (not b!1129990) (not b!1129977) (not bm!48217) (not b!1129991) (not b!1129989) (not b!1129983) (not bm!48218) (not start!98230) (not bm!48214) b_and!38597 (not b!1129978) (not bm!48211) (not b!1129988) (not b!1129971) (not b!1129972) (not b!1129982) (not b!1129994) (not b_next!23895))
(check-sat b_and!38597 (not b_next!23895))
