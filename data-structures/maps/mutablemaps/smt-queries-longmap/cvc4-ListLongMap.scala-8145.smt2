; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99776 () Bool)

(assert start!99776)

(declare-fun b_free!25319 () Bool)

(declare-fun b_next!25319 () Bool)

(assert (=> start!99776 (= b_free!25319 (not b_next!25319))))

(declare-fun tp!88672 () Bool)

(declare-fun b_and!41519 () Bool)

(assert (=> start!99776 (= tp!88672 b_and!41519)))

(declare-fun b!1184111 () Bool)

(declare-fun res!787130 () Bool)

(declare-fun e!673274 () Bool)

(assert (=> b!1184111 (=> (not res!787130) (not e!673274))))

(declare-datatypes ((array!76466 0))(
  ( (array!76467 (arr!36879 (Array (_ BitVec 32) (_ BitVec 64))) (size!37416 (_ BitVec 32))) )
))
(declare-fun lt!536792 () array!76466)

(declare-datatypes ((List!26093 0))(
  ( (Nil!26090) (Cons!26089 (h!27298 (_ BitVec 64)) (t!38411 List!26093)) )
))
(declare-fun arrayNoDuplicates!0 (array!76466 (_ BitVec 32) List!26093) Bool)

(assert (=> b!1184111 (= res!787130 (arrayNoDuplicates!0 lt!536792 #b00000000000000000000000000000000 Nil!26090))))

(declare-fun b!1184112 () Bool)

(declare-fun res!787131 () Bool)

(declare-fun e!673275 () Bool)

(assert (=> b!1184112 (=> (not res!787131) (not e!673275))))

(declare-fun _keys!1208 () array!76466)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44925 0))(
  ( (V!44926 (val!14981 Int)) )
))
(declare-datatypes ((ValueCell!14215 0))(
  ( (ValueCellFull!14215 (v!17620 V!44925)) (EmptyCell!14215) )
))
(declare-datatypes ((array!76468 0))(
  ( (array!76469 (arr!36880 (Array (_ BitVec 32) ValueCell!14215)) (size!37417 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76468)

(assert (=> b!1184112 (= res!787131 (and (= (size!37417 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37416 _keys!1208) (size!37417 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!46601 () Bool)

(declare-fun mapRes!46601 () Bool)

(declare-fun tp!88671 () Bool)

(declare-fun e!673278 () Bool)

(assert (=> mapNonEmpty!46601 (= mapRes!46601 (and tp!88671 e!673278))))

(declare-fun mapValue!46601 () ValueCell!14215)

(declare-fun mapRest!46601 () (Array (_ BitVec 32) ValueCell!14215))

(declare-fun mapKey!46601 () (_ BitVec 32))

(assert (=> mapNonEmpty!46601 (= (arr!36880 _values!996) (store mapRest!46601 mapKey!46601 mapValue!46601))))

(declare-fun b!1184113 () Bool)

(declare-fun res!787134 () Bool)

(assert (=> b!1184113 (=> (not res!787134) (not e!673275))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1184113 (= res!787134 (= (select (arr!36879 _keys!1208) i!673) k!934))))

(declare-fun e!673277 () Bool)

(declare-fun b!1184114 () Bool)

(declare-fun arrayContainsKey!0 (array!76466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1184114 (= e!673277 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184115 () Bool)

(declare-fun e!673281 () Bool)

(assert (=> b!1184115 (= e!673281 e!673277)))

(declare-fun res!787128 () Bool)

(assert (=> b!1184115 (=> res!787128 e!673277)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1184115 (= res!787128 (not (= (select (arr!36879 _keys!1208) from!1455) k!934)))))

(declare-fun b!1184116 () Bool)

(declare-fun tp_is_empty!29849 () Bool)

(assert (=> b!1184116 (= e!673278 tp_is_empty!29849)))

(declare-fun b!1184117 () Bool)

(declare-fun res!787129 () Bool)

(assert (=> b!1184117 (=> (not res!787129) (not e!673275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76466 (_ BitVec 32)) Bool)

(assert (=> b!1184117 (= res!787129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1184118 () Bool)

(declare-datatypes ((Unit!39132 0))(
  ( (Unit!39133) )
))
(declare-fun e!673276 () Unit!39132)

(declare-fun Unit!39134 () Unit!39132)

(assert (=> b!1184118 (= e!673276 Unit!39134)))

(declare-fun lt!536797 () Unit!39132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39132)

(assert (=> b!1184118 (= lt!536797 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1184118 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536801 () Unit!39132)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76466 (_ BitVec 32) (_ BitVec 32)) Unit!39132)

(assert (=> b!1184118 (= lt!536801 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1184118 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26090)))

(declare-fun lt!536794 () Unit!39132)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76466 (_ BitVec 64) (_ BitVec 32) List!26093) Unit!39132)

(assert (=> b!1184118 (= lt!536794 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26090))))

(assert (=> b!1184118 false))

(declare-fun b!1184119 () Bool)

(declare-fun Unit!39135 () Unit!39132)

(assert (=> b!1184119 (= e!673276 Unit!39135)))

(declare-fun b!1184120 () Bool)

(declare-fun res!787132 () Bool)

(assert (=> b!1184120 (=> (not res!787132) (not e!673275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1184120 (= res!787132 (validKeyInArray!0 k!934))))

(declare-fun b!1184121 () Bool)

(declare-fun e!673283 () Bool)

(assert (=> b!1184121 (= e!673283 tp_is_empty!29849)))

(declare-fun b!1184122 () Bool)

(declare-fun e!673280 () Bool)

(assert (=> b!1184122 (= e!673280 true)))

(declare-datatypes ((tuple2!19330 0))(
  ( (tuple2!19331 (_1!9675 (_ BitVec 64)) (_2!9675 V!44925)) )
))
(declare-datatypes ((List!26094 0))(
  ( (Nil!26091) (Cons!26090 (h!27299 tuple2!19330) (t!38412 List!26094)) )
))
(declare-datatypes ((ListLongMap!17311 0))(
  ( (ListLongMap!17312 (toList!8671 List!26094)) )
))
(declare-fun lt!536804 () ListLongMap!17311)

(declare-fun lt!536808 () ListLongMap!17311)

(declare-fun -!1659 (ListLongMap!17311 (_ BitVec 64)) ListLongMap!17311)

(assert (=> b!1184122 (= (-!1659 lt!536804 k!934) lt!536808)))

(declare-fun lt!536793 () Unit!39132)

(declare-fun lt!536798 () ListLongMap!17311)

(declare-fun lt!536807 () V!44925)

(declare-fun addRemoveCommutativeForDiffKeys!173 (ListLongMap!17311 (_ BitVec 64) V!44925 (_ BitVec 64)) Unit!39132)

(assert (=> b!1184122 (= lt!536793 (addRemoveCommutativeForDiffKeys!173 lt!536798 (select (arr!36879 _keys!1208) from!1455) lt!536807 k!934))))

(declare-fun lt!536790 () ListLongMap!17311)

(declare-fun lt!536803 () ListLongMap!17311)

(declare-fun lt!536802 () ListLongMap!17311)

(assert (=> b!1184122 (and (= lt!536802 lt!536804) (= lt!536790 lt!536803))))

(declare-fun lt!536805 () tuple2!19330)

(declare-fun +!3883 (ListLongMap!17311 tuple2!19330) ListLongMap!17311)

(assert (=> b!1184122 (= lt!536804 (+!3883 lt!536798 lt!536805))))

(assert (=> b!1184122 (not (= (select (arr!36879 _keys!1208) from!1455) k!934))))

(declare-fun lt!536791 () Unit!39132)

(assert (=> b!1184122 (= lt!536791 e!673276)))

(declare-fun c!117050 () Bool)

(assert (=> b!1184122 (= c!117050 (= (select (arr!36879 _keys!1208) from!1455) k!934))))

(assert (=> b!1184122 e!673281))

(declare-fun res!787135 () Bool)

(assert (=> b!1184122 (=> (not res!787135) (not e!673281))))

(declare-fun lt!536795 () ListLongMap!17311)

(assert (=> b!1184122 (= res!787135 (= lt!536795 lt!536808))))

(assert (=> b!1184122 (= lt!536808 (+!3883 lt!536790 lt!536805))))

(assert (=> b!1184122 (= lt!536805 (tuple2!19331 (select (arr!36879 _keys!1208) from!1455) lt!536807))))

(declare-fun lt!536806 () V!44925)

(declare-fun get!18911 (ValueCell!14215 V!44925) V!44925)

(assert (=> b!1184122 (= lt!536807 (get!18911 (select (arr!36880 _values!996) from!1455) lt!536806))))

(declare-fun b!1184123 () Bool)

(declare-fun e!673282 () Bool)

(assert (=> b!1184123 (= e!673274 (not e!673282))))

(declare-fun res!787126 () Bool)

(assert (=> b!1184123 (=> res!787126 e!673282)))

(assert (=> b!1184123 (= res!787126 (bvsgt from!1455 i!673))))

(assert (=> b!1184123 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!536800 () Unit!39132)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76466 (_ BitVec 64) (_ BitVec 32)) Unit!39132)

(assert (=> b!1184123 (= lt!536800 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1184124 () Bool)

(declare-fun res!787133 () Bool)

(assert (=> b!1184124 (=> (not res!787133) (not e!673275))))

(assert (=> b!1184124 (= res!787133 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26090))))

(declare-fun b!1184125 () Bool)

(declare-fun e!673279 () Bool)

(assert (=> b!1184125 (= e!673282 e!673279)))

(declare-fun res!787138 () Bool)

(assert (=> b!1184125 (=> res!787138 e!673279)))

(assert (=> b!1184125 (= res!787138 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44925)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!536799 () array!76468)

(declare-fun minValue!944 () V!44925)

(declare-fun getCurrentListMapNoExtraKeys!5091 (array!76466 array!76468 (_ BitVec 32) (_ BitVec 32) V!44925 V!44925 (_ BitVec 32) Int) ListLongMap!17311)

(assert (=> b!1184125 (= lt!536795 (getCurrentListMapNoExtraKeys!5091 lt!536792 lt!536799 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1184125 (= lt!536799 (array!76469 (store (arr!36880 _values!996) i!673 (ValueCellFull!14215 lt!536806)) (size!37417 _values!996)))))

(declare-fun dynLambda!3056 (Int (_ BitVec 64)) V!44925)

(assert (=> b!1184125 (= lt!536806 (dynLambda!3056 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1184125 (= lt!536802 (getCurrentListMapNoExtraKeys!5091 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1184126 () Bool)

(declare-fun res!787127 () Bool)

(assert (=> b!1184126 (=> (not res!787127) (not e!673275))))

(assert (=> b!1184126 (= res!787127 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37416 _keys!1208))))))

(declare-fun b!1184127 () Bool)

(assert (=> b!1184127 (= e!673279 e!673280)))

(declare-fun res!787137 () Bool)

(assert (=> b!1184127 (=> res!787137 e!673280)))

(assert (=> b!1184127 (= res!787137 (not (validKeyInArray!0 (select (arr!36879 _keys!1208) from!1455))))))

(assert (=> b!1184127 (= lt!536803 lt!536790)))

(assert (=> b!1184127 (= lt!536790 (-!1659 lt!536798 k!934))))

(assert (=> b!1184127 (= lt!536803 (getCurrentListMapNoExtraKeys!5091 lt!536792 lt!536799 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1184127 (= lt!536798 (getCurrentListMapNoExtraKeys!5091 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536796 () Unit!39132)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!875 (array!76466 array!76468 (_ BitVec 32) (_ BitVec 32) V!44925 V!44925 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39132)

(assert (=> b!1184127 (= lt!536796 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!875 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!787136 () Bool)

(assert (=> start!99776 (=> (not res!787136) (not e!673275))))

(assert (=> start!99776 (= res!787136 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37416 _keys!1208))))))

(assert (=> start!99776 e!673275))

(assert (=> start!99776 tp_is_empty!29849))

(declare-fun array_inv!28028 (array!76466) Bool)

(assert (=> start!99776 (array_inv!28028 _keys!1208)))

(assert (=> start!99776 true))

(assert (=> start!99776 tp!88672))

(declare-fun e!673284 () Bool)

(declare-fun array_inv!28029 (array!76468) Bool)

(assert (=> start!99776 (and (array_inv!28029 _values!996) e!673284)))

(declare-fun b!1184128 () Bool)

(assert (=> b!1184128 (= e!673275 e!673274)))

(declare-fun res!787124 () Bool)

(assert (=> b!1184128 (=> (not res!787124) (not e!673274))))

(assert (=> b!1184128 (= res!787124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536792 mask!1564))))

(assert (=> b!1184128 (= lt!536792 (array!76467 (store (arr!36879 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37416 _keys!1208)))))

(declare-fun b!1184129 () Bool)

(assert (=> b!1184129 (= e!673284 (and e!673283 mapRes!46601))))

(declare-fun condMapEmpty!46601 () Bool)

(declare-fun mapDefault!46601 () ValueCell!14215)

