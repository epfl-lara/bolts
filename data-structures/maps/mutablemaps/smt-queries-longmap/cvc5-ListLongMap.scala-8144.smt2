; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99766 () Bool)

(assert start!99766)

(declare-fun b_free!25309 () Bool)

(declare-fun b_next!25309 () Bool)

(assert (=> start!99766 (= b_free!25309 (not b_next!25309))))

(declare-fun tp!88642 () Bool)

(declare-fun b_and!41499 () Bool)

(assert (=> start!99766 (= tp!88642 b_and!41499)))

(declare-fun b!1183801 () Bool)

(declare-fun e!673101 () Bool)

(declare-fun e!673098 () Bool)

(assert (=> b!1183801 (= e!673101 (not e!673098))))

(declare-fun res!786902 () Bool)

(assert (=> b!1183801 (=> res!786902 e!673098)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183801 (= res!786902 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!76446 0))(
  ( (array!76447 (arr!36869 (Array (_ BitVec 32) (_ BitVec 64))) (size!37406 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76446)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183801 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39112 0))(
  ( (Unit!39113) )
))
(declare-fun lt!536513 () Unit!39112)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76446 (_ BitVec 64) (_ BitVec 32)) Unit!39112)

(assert (=> b!1183801 (= lt!536513 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46586 () Bool)

(declare-fun mapRes!46586 () Bool)

(assert (=> mapIsEmpty!46586 mapRes!46586))

(declare-fun b!1183802 () Bool)

(declare-fun e!673104 () Unit!39112)

(declare-fun Unit!39114 () Unit!39112)

(assert (=> b!1183802 (= e!673104 Unit!39114)))

(declare-fun e!673095 () Bool)

(declare-fun b!1183803 () Bool)

(assert (=> b!1183803 (= e!673095 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1183804 () Bool)

(declare-fun e!673100 () Bool)

(assert (=> b!1183804 (= e!673100 e!673095)))

(declare-fun res!786900 () Bool)

(assert (=> b!1183804 (=> res!786900 e!673095)))

(assert (=> b!1183804 (= res!786900 (not (= (select (arr!36869 _keys!1208) from!1455) k!934)))))

(declare-fun res!786905 () Bool)

(declare-fun e!673102 () Bool)

(assert (=> start!99766 (=> (not res!786905) (not e!673102))))

(assert (=> start!99766 (= res!786905 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37406 _keys!1208))))))

(assert (=> start!99766 e!673102))

(declare-fun tp_is_empty!29839 () Bool)

(assert (=> start!99766 tp_is_empty!29839))

(declare-fun array_inv!28022 (array!76446) Bool)

(assert (=> start!99766 (array_inv!28022 _keys!1208)))

(assert (=> start!99766 true))

(assert (=> start!99766 tp!88642))

(declare-datatypes ((V!44913 0))(
  ( (V!44914 (val!14976 Int)) )
))
(declare-datatypes ((ValueCell!14210 0))(
  ( (ValueCellFull!14210 (v!17615 V!44913)) (EmptyCell!14210) )
))
(declare-datatypes ((array!76448 0))(
  ( (array!76449 (arr!36870 (Array (_ BitVec 32) ValueCell!14210)) (size!37407 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76448)

(declare-fun e!673103 () Bool)

(declare-fun array_inv!28023 (array!76448) Bool)

(assert (=> start!99766 (and (array_inv!28023 _values!996) e!673103)))

(declare-fun b!1183805 () Bool)

(declare-fun res!786908 () Bool)

(assert (=> b!1183805 (=> (not res!786908) (not e!673101))))

(declare-fun lt!536506 () array!76446)

(declare-datatypes ((List!26083 0))(
  ( (Nil!26080) (Cons!26079 (h!27288 (_ BitVec 64)) (t!38391 List!26083)) )
))
(declare-fun arrayNoDuplicates!0 (array!76446 (_ BitVec 32) List!26083) Bool)

(assert (=> b!1183805 (= res!786908 (arrayNoDuplicates!0 lt!536506 #b00000000000000000000000000000000 Nil!26080))))

(declare-fun mapNonEmpty!46586 () Bool)

(declare-fun tp!88641 () Bool)

(declare-fun e!673094 () Bool)

(assert (=> mapNonEmpty!46586 (= mapRes!46586 (and tp!88641 e!673094))))

(declare-fun mapValue!46586 () ValueCell!14210)

(declare-fun mapRest!46586 () (Array (_ BitVec 32) ValueCell!14210))

(declare-fun mapKey!46586 () (_ BitVec 32))

(assert (=> mapNonEmpty!46586 (= (arr!36870 _values!996) (store mapRest!46586 mapKey!46586 mapValue!46586))))

(declare-fun b!1183806 () Bool)

(declare-fun e!673097 () Bool)

(declare-fun e!673096 () Bool)

(assert (=> b!1183806 (= e!673097 e!673096)))

(declare-fun res!786901 () Bool)

(assert (=> b!1183806 (=> res!786901 e!673096)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183806 (= res!786901 (not (validKeyInArray!0 (select (arr!36869 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19320 0))(
  ( (tuple2!19321 (_1!9670 (_ BitVec 64)) (_2!9670 V!44913)) )
))
(declare-datatypes ((List!26084 0))(
  ( (Nil!26081) (Cons!26080 (h!27289 tuple2!19320) (t!38392 List!26084)) )
))
(declare-datatypes ((ListLongMap!17301 0))(
  ( (ListLongMap!17302 (toList!8666 List!26084)) )
))
(declare-fun lt!536521 () ListLongMap!17301)

(declare-fun lt!536518 () ListLongMap!17301)

(assert (=> b!1183806 (= lt!536521 lt!536518)))

(declare-fun lt!536523 () ListLongMap!17301)

(declare-fun -!1654 (ListLongMap!17301 (_ BitVec 64)) ListLongMap!17301)

(assert (=> b!1183806 (= lt!536518 (-!1654 lt!536523 k!934))))

(declare-fun zeroValue!944 () V!44913)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!536516 () array!76448)

(declare-fun minValue!944 () V!44913)

(declare-fun getCurrentListMapNoExtraKeys!5086 (array!76446 array!76448 (_ BitVec 32) (_ BitVec 32) V!44913 V!44913 (_ BitVec 32) Int) ListLongMap!17301)

(assert (=> b!1183806 (= lt!536521 (getCurrentListMapNoExtraKeys!5086 lt!536506 lt!536516 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183806 (= lt!536523 (getCurrentListMapNoExtraKeys!5086 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536514 () Unit!39112)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!870 (array!76446 array!76448 (_ BitVec 32) (_ BitVec 32) V!44913 V!44913 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39112)

(assert (=> b!1183806 (= lt!536514 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!870 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183807 () Bool)

(assert (=> b!1183807 (= e!673094 tp_is_empty!29839)))

(declare-fun b!1183808 () Bool)

(declare-fun res!786913 () Bool)

(assert (=> b!1183808 (=> (not res!786913) (not e!673102))))

(assert (=> b!1183808 (= res!786913 (and (= (size!37407 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37406 _keys!1208) (size!37407 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183809 () Bool)

(declare-fun e!673099 () Bool)

(assert (=> b!1183809 (= e!673099 tp_is_empty!29839)))

(declare-fun b!1183810 () Bool)

(declare-fun res!786899 () Bool)

(assert (=> b!1183810 (=> (not res!786899) (not e!673102))))

(assert (=> b!1183810 (= res!786899 (= (select (arr!36869 _keys!1208) i!673) k!934))))

(declare-fun b!1183811 () Bool)

(declare-fun res!786907 () Bool)

(assert (=> b!1183811 (=> (not res!786907) (not e!673102))))

(assert (=> b!1183811 (= res!786907 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37406 _keys!1208))))))

(declare-fun b!1183812 () Bool)

(declare-fun Unit!39115 () Unit!39112)

(assert (=> b!1183812 (= e!673104 Unit!39115)))

(declare-fun lt!536508 () Unit!39112)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76446 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39112)

(assert (=> b!1183812 (= lt!536508 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1183812 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536517 () Unit!39112)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76446 (_ BitVec 32) (_ BitVec 32)) Unit!39112)

(assert (=> b!1183812 (= lt!536517 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1183812 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26080)))

(declare-fun lt!536519 () Unit!39112)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76446 (_ BitVec 64) (_ BitVec 32) List!26083) Unit!39112)

(assert (=> b!1183812 (= lt!536519 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26080))))

(assert (=> b!1183812 false))

(declare-fun b!1183813 () Bool)

(declare-fun res!786912 () Bool)

(assert (=> b!1183813 (=> (not res!786912) (not e!673102))))

(assert (=> b!1183813 (= res!786912 (validKeyInArray!0 k!934))))

(declare-fun b!1183814 () Bool)

(assert (=> b!1183814 (= e!673102 e!673101)))

(declare-fun res!786909 () Bool)

(assert (=> b!1183814 (=> (not res!786909) (not e!673101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76446 (_ BitVec 32)) Bool)

(assert (=> b!1183814 (= res!786909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536506 mask!1564))))

(assert (=> b!1183814 (= lt!536506 (array!76447 (store (arr!36869 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37406 _keys!1208)))))

(declare-fun b!1183815 () Bool)

(assert (=> b!1183815 (= e!673103 (and e!673099 mapRes!46586))))

(declare-fun condMapEmpty!46586 () Bool)

(declare-fun mapDefault!46586 () ValueCell!14210)

