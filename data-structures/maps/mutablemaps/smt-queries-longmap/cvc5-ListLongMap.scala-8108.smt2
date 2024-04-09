; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99550 () Bool)

(assert start!99550)

(declare-fun b_free!25093 () Bool)

(declare-fun b_next!25093 () Bool)

(assert (=> start!99550 (= b_free!25093 (not b_next!25093))))

(declare-fun tp!87993 () Bool)

(declare-fun b_and!41067 () Bool)

(assert (=> start!99550 (= tp!87993 b_and!41067)))

(declare-fun b!1176801 () Bool)

(declare-fun res!781737 () Bool)

(declare-fun e!668998 () Bool)

(assert (=> b!1176801 (=> (not res!781737) (not e!668998))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176801 (= res!781737 (validKeyInArray!0 k!934))))

(declare-fun b!1176802 () Bool)

(declare-fun e!668992 () Bool)

(assert (=> b!1176802 (= e!668992 true)))

(declare-fun e!669000 () Bool)

(assert (=> b!1176802 e!669000))

(declare-fun res!781740 () Bool)

(assert (=> b!1176802 (=> (not res!781740) (not e!669000))))

(declare-datatypes ((array!76022 0))(
  ( (array!76023 (arr!36657 (Array (_ BitVec 32) (_ BitVec 64))) (size!37194 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76022)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1176802 (= res!781740 (not (= (select (arr!36657 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38786 0))(
  ( (Unit!38787) )
))
(declare-fun lt!531212 () Unit!38786)

(declare-fun e!668997 () Unit!38786)

(assert (=> b!1176802 (= lt!531212 e!668997)))

(declare-fun c!116711 () Bool)

(assert (=> b!1176802 (= c!116711 (= (select (arr!36657 _keys!1208) from!1455) k!934))))

(declare-fun e!669004 () Bool)

(assert (=> b!1176802 e!669004))

(declare-fun res!781745 () Bool)

(assert (=> b!1176802 (=> (not res!781745) (not e!669004))))

(declare-datatypes ((V!44625 0))(
  ( (V!44626 (val!14868 Int)) )
))
(declare-datatypes ((tuple2!19134 0))(
  ( (tuple2!19135 (_1!9577 (_ BitVec 64)) (_2!9577 V!44625)) )
))
(declare-datatypes ((List!25901 0))(
  ( (Nil!25898) (Cons!25897 (h!27106 tuple2!19134) (t!37993 List!25901)) )
))
(declare-datatypes ((ListLongMap!17115 0))(
  ( (ListLongMap!17116 (toList!8573 List!25901)) )
))
(declare-fun lt!531209 () ListLongMap!17115)

(declare-fun lt!531206 () tuple2!19134)

(declare-fun lt!531216 () ListLongMap!17115)

(declare-fun +!3796 (ListLongMap!17115 tuple2!19134) ListLongMap!17115)

(assert (=> b!1176802 (= res!781745 (= lt!531216 (+!3796 lt!531209 lt!531206)))))

(declare-fun lt!531213 () V!44625)

(declare-datatypes ((ValueCell!14102 0))(
  ( (ValueCellFull!14102 (v!17507 V!44625)) (EmptyCell!14102) )
))
(declare-datatypes ((array!76024 0))(
  ( (array!76025 (arr!36658 (Array (_ BitVec 32) ValueCell!14102)) (size!37195 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76024)

(declare-fun get!18760 (ValueCell!14102 V!44625) V!44625)

(assert (=> b!1176802 (= lt!531206 (tuple2!19135 (select (arr!36657 _keys!1208) from!1455) (get!18760 (select (arr!36658 _values!996) from!1455) lt!531213)))))

(declare-fun b!1176803 () Bool)

(declare-fun e!668996 () Bool)

(assert (=> b!1176803 (= e!669004 e!668996)))

(declare-fun res!781742 () Bool)

(assert (=> b!1176803 (=> res!781742 e!668996)))

(assert (=> b!1176803 (= res!781742 (not (= (select (arr!36657 _keys!1208) from!1455) k!934)))))

(declare-fun b!1176804 () Bool)

(declare-fun e!668994 () Bool)

(declare-fun e!668995 () Bool)

(assert (=> b!1176804 (= e!668994 (not e!668995))))

(declare-fun res!781750 () Bool)

(assert (=> b!1176804 (=> res!781750 e!668995)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176804 (= res!781750 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176804 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!531210 () Unit!38786)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76022 (_ BitVec 64) (_ BitVec 32)) Unit!38786)

(assert (=> b!1176804 (= lt!531210 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176805 () Bool)

(declare-fun res!781739 () Bool)

(assert (=> b!1176805 (=> (not res!781739) (not e!668998))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1176805 (= res!781739 (and (= (size!37195 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37194 _keys!1208) (size!37195 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1176806 () Bool)

(assert (=> b!1176806 (= e!668996 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46262 () Bool)

(declare-fun mapRes!46262 () Bool)

(assert (=> mapIsEmpty!46262 mapRes!46262))

(declare-fun mapNonEmpty!46262 () Bool)

(declare-fun tp!87994 () Bool)

(declare-fun e!668993 () Bool)

(assert (=> mapNonEmpty!46262 (= mapRes!46262 (and tp!87994 e!668993))))

(declare-fun mapRest!46262 () (Array (_ BitVec 32) ValueCell!14102))

(declare-fun mapKey!46262 () (_ BitVec 32))

(declare-fun mapValue!46262 () ValueCell!14102)

(assert (=> mapNonEmpty!46262 (= (arr!36658 _values!996) (store mapRest!46262 mapKey!46262 mapValue!46262))))

(declare-fun res!781738 () Bool)

(assert (=> start!99550 (=> (not res!781738) (not e!668998))))

(assert (=> start!99550 (= res!781738 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37194 _keys!1208))))))

(assert (=> start!99550 e!668998))

(declare-fun tp_is_empty!29623 () Bool)

(assert (=> start!99550 tp_is_empty!29623))

(declare-fun array_inv!27882 (array!76022) Bool)

(assert (=> start!99550 (array_inv!27882 _keys!1208)))

(assert (=> start!99550 true))

(assert (=> start!99550 tp!87993))

(declare-fun e!669002 () Bool)

(declare-fun array_inv!27883 (array!76024) Bool)

(assert (=> start!99550 (and (array_inv!27883 _values!996) e!669002)))

(declare-fun lt!531208 () ListLongMap!17115)

(declare-fun lt!531214 () ListLongMap!17115)

(declare-fun b!1176807 () Bool)

(assert (=> b!1176807 (= e!669000 (= lt!531214 (+!3796 lt!531208 lt!531206)))))

(declare-fun b!1176808 () Bool)

(assert (=> b!1176808 (= e!668993 tp_is_empty!29623)))

(declare-fun b!1176809 () Bool)

(declare-fun res!781735 () Bool)

(assert (=> b!1176809 (=> (not res!781735) (not e!668998))))

(declare-datatypes ((List!25902 0))(
  ( (Nil!25899) (Cons!25898 (h!27107 (_ BitVec 64)) (t!37994 List!25902)) )
))
(declare-fun arrayNoDuplicates!0 (array!76022 (_ BitVec 32) List!25902) Bool)

(assert (=> b!1176809 (= res!781735 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25899))))

(declare-fun b!1176810 () Bool)

(assert (=> b!1176810 (= e!668998 e!668994)))

(declare-fun res!781743 () Bool)

(assert (=> b!1176810 (=> (not res!781743) (not e!668994))))

(declare-fun lt!531219 () array!76022)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76022 (_ BitVec 32)) Bool)

(assert (=> b!1176810 (= res!781743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531219 mask!1564))))

(assert (=> b!1176810 (= lt!531219 (array!76023 (store (arr!36657 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37194 _keys!1208)))))

(declare-fun b!1176811 () Bool)

(declare-fun Unit!38788 () Unit!38786)

(assert (=> b!1176811 (= e!668997 Unit!38788)))

(declare-fun lt!531215 () Unit!38786)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76022 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38786)

(assert (=> b!1176811 (= lt!531215 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176811 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531211 () Unit!38786)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76022 (_ BitVec 32) (_ BitVec 32)) Unit!38786)

(assert (=> b!1176811 (= lt!531211 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1176811 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25899)))

(declare-fun lt!531207 () Unit!38786)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76022 (_ BitVec 64) (_ BitVec 32) List!25902) Unit!38786)

(assert (=> b!1176811 (= lt!531207 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25899))))

(assert (=> b!1176811 false))

(declare-fun b!1176812 () Bool)

(declare-fun res!781749 () Bool)

(assert (=> b!1176812 (=> (not res!781749) (not e!668998))))

(assert (=> b!1176812 (= res!781749 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37194 _keys!1208))))))

(declare-fun b!1176813 () Bool)

(declare-fun res!781748 () Bool)

(assert (=> b!1176813 (=> (not res!781748) (not e!668998))))

(assert (=> b!1176813 (= res!781748 (= (select (arr!36657 _keys!1208) i!673) k!934))))

(declare-fun b!1176814 () Bool)

(declare-fun e!669001 () Bool)

(assert (=> b!1176814 (= e!669001 tp_is_empty!29623)))

(declare-fun b!1176815 () Bool)

(declare-fun res!781746 () Bool)

(assert (=> b!1176815 (=> (not res!781746) (not e!668998))))

(assert (=> b!1176815 (= res!781746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176816 () Bool)

(declare-fun e!669003 () Bool)

(assert (=> b!1176816 (= e!669003 e!668992)))

(declare-fun res!781747 () Bool)

(assert (=> b!1176816 (=> res!781747 e!668992)))

(assert (=> b!1176816 (= res!781747 (not (validKeyInArray!0 (select (arr!36657 _keys!1208) from!1455))))))

(declare-fun lt!531217 () ListLongMap!17115)

(assert (=> b!1176816 (= lt!531217 lt!531209)))

(declare-fun -!1576 (ListLongMap!17115 (_ BitVec 64)) ListLongMap!17115)

(assert (=> b!1176816 (= lt!531209 (-!1576 lt!531208 k!934))))

(declare-fun zeroValue!944 () V!44625)

(declare-fun lt!531205 () array!76024)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44625)

(declare-fun getCurrentListMapNoExtraKeys!5004 (array!76022 array!76024 (_ BitVec 32) (_ BitVec 32) V!44625 V!44625 (_ BitVec 32) Int) ListLongMap!17115)

(assert (=> b!1176816 (= lt!531217 (getCurrentListMapNoExtraKeys!5004 lt!531219 lt!531205 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176816 (= lt!531208 (getCurrentListMapNoExtraKeys!5004 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531218 () Unit!38786)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!800 (array!76022 array!76024 (_ BitVec 32) (_ BitVec 32) V!44625 V!44625 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38786)

(assert (=> b!1176816 (= lt!531218 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!800 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176817 () Bool)

(declare-fun res!781741 () Bool)

(assert (=> b!1176817 (=> (not res!781741) (not e!668998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176817 (= res!781741 (validMask!0 mask!1564))))

(declare-fun b!1176818 () Bool)

(assert (=> b!1176818 (= e!668995 e!669003)))

(declare-fun res!781736 () Bool)

(assert (=> b!1176818 (=> res!781736 e!669003)))

(assert (=> b!1176818 (= res!781736 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1176818 (= lt!531216 (getCurrentListMapNoExtraKeys!5004 lt!531219 lt!531205 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1176818 (= lt!531205 (array!76025 (store (arr!36658 _values!996) i!673 (ValueCellFull!14102 lt!531213)) (size!37195 _values!996)))))

(declare-fun dynLambda!2980 (Int (_ BitVec 64)) V!44625)

(assert (=> b!1176818 (= lt!531213 (dynLambda!2980 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1176818 (= lt!531214 (getCurrentListMapNoExtraKeys!5004 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176819 () Bool)

(declare-fun Unit!38789 () Unit!38786)

(assert (=> b!1176819 (= e!668997 Unit!38789)))

(declare-fun b!1176820 () Bool)

(assert (=> b!1176820 (= e!669002 (and e!669001 mapRes!46262))))

(declare-fun condMapEmpty!46262 () Bool)

(declare-fun mapDefault!46262 () ValueCell!14102)

