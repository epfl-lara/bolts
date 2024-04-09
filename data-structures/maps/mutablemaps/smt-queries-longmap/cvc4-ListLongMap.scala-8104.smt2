; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99530 () Bool)

(assert start!99530)

(declare-fun b_free!25073 () Bool)

(declare-fun b_next!25073 () Bool)

(assert (=> start!99530 (= b_free!25073 (not b_next!25073))))

(declare-fun tp!87934 () Bool)

(declare-fun b_and!41027 () Bool)

(assert (=> start!99530 (= tp!87934 b_and!41027)))

(declare-datatypes ((array!75982 0))(
  ( (array!75983 (arr!36637 (Array (_ BitVec 32) (_ BitVec 64))) (size!37174 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75982)

(declare-fun b!1176151 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!668606 () Bool)

(declare-fun arrayContainsKey!0 (array!75982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176151 (= e!668606 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176152 () Bool)

(declare-fun res!781262 () Bool)

(declare-fun e!668607 () Bool)

(assert (=> b!1176152 (=> (not res!781262) (not e!668607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176152 (= res!781262 (validKeyInArray!0 k!934))))

(declare-fun b!1176153 () Bool)

(declare-fun e!668602 () Bool)

(declare-fun tp_is_empty!29603 () Bool)

(assert (=> b!1176153 (= e!668602 tp_is_empty!29603)))

(declare-fun b!1176154 () Bool)

(declare-fun res!781269 () Bool)

(assert (=> b!1176154 (=> (not res!781269) (not e!668607))))

(declare-datatypes ((List!25881 0))(
  ( (Nil!25878) (Cons!25877 (h!27086 (_ BitVec 64)) (t!37953 List!25881)) )
))
(declare-fun arrayNoDuplicates!0 (array!75982 (_ BitVec 32) List!25881) Bool)

(assert (=> b!1176154 (= res!781269 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25878))))

(declare-fun mapNonEmpty!46232 () Bool)

(declare-fun mapRes!46232 () Bool)

(declare-fun tp!87933 () Bool)

(assert (=> mapNonEmpty!46232 (= mapRes!46232 (and tp!87933 e!668602))))

(declare-datatypes ((V!44597 0))(
  ( (V!44598 (val!14858 Int)) )
))
(declare-datatypes ((ValueCell!14092 0))(
  ( (ValueCellFull!14092 (v!17497 V!44597)) (EmptyCell!14092) )
))
(declare-fun mapValue!46232 () ValueCell!14092)

(declare-fun mapKey!46232 () (_ BitVec 32))

(declare-datatypes ((array!75984 0))(
  ( (array!75985 (arr!36638 (Array (_ BitVec 32) ValueCell!14092)) (size!37175 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75984)

(declare-fun mapRest!46232 () (Array (_ BitVec 32) ValueCell!14092))

(assert (=> mapNonEmpty!46232 (= (arr!36638 _values!996) (store mapRest!46232 mapKey!46232 mapValue!46232))))

(declare-fun b!1176155 () Bool)

(declare-fun res!781258 () Bool)

(assert (=> b!1176155 (=> (not res!781258) (not e!668607))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1176155 (= res!781258 (and (= (size!37175 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37174 _keys!1208) (size!37175 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1176156 () Bool)

(declare-fun res!781270 () Bool)

(assert (=> b!1176156 (=> (not res!781270) (not e!668607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176156 (= res!781270 (validMask!0 mask!1564))))

(declare-fun b!1176157 () Bool)

(declare-fun e!668611 () Bool)

(assert (=> b!1176157 (= e!668611 true)))

(declare-fun e!668603 () Bool)

(assert (=> b!1176157 e!668603))

(declare-fun res!781268 () Bool)

(assert (=> b!1176157 (=> (not res!781268) (not e!668603))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1176157 (= res!781268 (not (= (select (arr!36637 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38751 0))(
  ( (Unit!38752) )
))
(declare-fun lt!530761 () Unit!38751)

(declare-fun e!668612 () Unit!38751)

(assert (=> b!1176157 (= lt!530761 e!668612)))

(declare-fun c!116681 () Bool)

(assert (=> b!1176157 (= c!116681 (= (select (arr!36637 _keys!1208) from!1455) k!934))))

(declare-fun e!668614 () Bool)

(assert (=> b!1176157 e!668614))

(declare-fun res!781266 () Bool)

(assert (=> b!1176157 (=> (not res!781266) (not e!668614))))

(declare-datatypes ((tuple2!19114 0))(
  ( (tuple2!19115 (_1!9567 (_ BitVec 64)) (_2!9567 V!44597)) )
))
(declare-datatypes ((List!25882 0))(
  ( (Nil!25879) (Cons!25878 (h!27087 tuple2!19114) (t!37954 List!25882)) )
))
(declare-datatypes ((ListLongMap!17095 0))(
  ( (ListLongMap!17096 (toList!8563 List!25882)) )
))
(declare-fun lt!530769 () ListLongMap!17095)

(declare-fun lt!530764 () ListLongMap!17095)

(declare-fun lt!530755 () tuple2!19114)

(declare-fun +!3786 (ListLongMap!17095 tuple2!19114) ListLongMap!17095)

(assert (=> b!1176157 (= res!781266 (= lt!530764 (+!3786 lt!530769 lt!530755)))))

(declare-fun lt!530766 () V!44597)

(declare-fun get!18743 (ValueCell!14092 V!44597) V!44597)

(assert (=> b!1176157 (= lt!530755 (tuple2!19115 (select (arr!36637 _keys!1208) from!1455) (get!18743 (select (arr!36638 _values!996) from!1455) lt!530766)))))

(declare-fun b!1176158 () Bool)

(declare-fun e!668609 () Bool)

(assert (=> b!1176158 (= e!668607 e!668609)))

(declare-fun res!781265 () Bool)

(assert (=> b!1176158 (=> (not res!781265) (not e!668609))))

(declare-fun lt!530760 () array!75982)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75982 (_ BitVec 32)) Bool)

(assert (=> b!1176158 (= res!781265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530760 mask!1564))))

(assert (=> b!1176158 (= lt!530760 (array!75983 (store (arr!36637 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37174 _keys!1208)))))

(declare-fun b!1176159 () Bool)

(declare-fun e!668608 () Bool)

(declare-fun e!668605 () Bool)

(assert (=> b!1176159 (= e!668608 e!668605)))

(declare-fun res!781257 () Bool)

(assert (=> b!1176159 (=> res!781257 e!668605)))

(assert (=> b!1176159 (= res!781257 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44597)

(declare-fun zeroValue!944 () V!44597)

(declare-fun lt!530767 () array!75984)

(declare-fun getCurrentListMapNoExtraKeys!4994 (array!75982 array!75984 (_ BitVec 32) (_ BitVec 32) V!44597 V!44597 (_ BitVec 32) Int) ListLongMap!17095)

(assert (=> b!1176159 (= lt!530764 (getCurrentListMapNoExtraKeys!4994 lt!530760 lt!530767 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1176159 (= lt!530767 (array!75985 (store (arr!36638 _values!996) i!673 (ValueCellFull!14092 lt!530766)) (size!37175 _values!996)))))

(declare-fun dynLambda!2971 (Int (_ BitVec 64)) V!44597)

(assert (=> b!1176159 (= lt!530766 (dynLambda!2971 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530763 () ListLongMap!17095)

(assert (=> b!1176159 (= lt!530763 (getCurrentListMapNoExtraKeys!4994 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176160 () Bool)

(declare-fun Unit!38753 () Unit!38751)

(assert (=> b!1176160 (= e!668612 Unit!38753)))

(declare-fun mapIsEmpty!46232 () Bool)

(assert (=> mapIsEmpty!46232 mapRes!46232))

(declare-fun b!1176161 () Bool)

(declare-fun res!781255 () Bool)

(assert (=> b!1176161 (=> (not res!781255) (not e!668607))))

(assert (=> b!1176161 (= res!781255 (= (select (arr!36637 _keys!1208) i!673) k!934))))

(declare-fun b!1176163 () Bool)

(assert (=> b!1176163 (= e!668605 e!668611)))

(declare-fun res!781264 () Bool)

(assert (=> b!1176163 (=> res!781264 e!668611)))

(assert (=> b!1176163 (= res!781264 (not (validKeyInArray!0 (select (arr!36637 _keys!1208) from!1455))))))

(declare-fun lt!530762 () ListLongMap!17095)

(assert (=> b!1176163 (= lt!530762 lt!530769)))

(declare-fun lt!530758 () ListLongMap!17095)

(declare-fun -!1569 (ListLongMap!17095 (_ BitVec 64)) ListLongMap!17095)

(assert (=> b!1176163 (= lt!530769 (-!1569 lt!530758 k!934))))

(assert (=> b!1176163 (= lt!530762 (getCurrentListMapNoExtraKeys!4994 lt!530760 lt!530767 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176163 (= lt!530758 (getCurrentListMapNoExtraKeys!4994 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!530768 () Unit!38751)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!793 (array!75982 array!75984 (_ BitVec 32) (_ BitVec 32) V!44597 V!44597 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38751)

(assert (=> b!1176163 (= lt!530768 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!793 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176164 () Bool)

(declare-fun res!781256 () Bool)

(assert (=> b!1176164 (=> (not res!781256) (not e!668607))))

(assert (=> b!1176164 (= res!781256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176165 () Bool)

(declare-fun e!668610 () Bool)

(declare-fun e!668613 () Bool)

(assert (=> b!1176165 (= e!668610 (and e!668613 mapRes!46232))))

(declare-fun condMapEmpty!46232 () Bool)

(declare-fun mapDefault!46232 () ValueCell!14092)

