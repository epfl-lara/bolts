; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99716 () Bool)

(assert start!99716)

(declare-fun b_free!25259 () Bool)

(declare-fun b_next!25259 () Bool)

(assert (=> start!99716 (= b_free!25259 (not b_next!25259))))

(declare-fun tp!88492 () Bool)

(declare-fun b_and!41399 () Bool)

(assert (=> start!99716 (= tp!88492 b_and!41399)))

(declare-fun b!1182251 () Bool)

(declare-fun res!785786 () Bool)

(declare-fun e!672196 () Bool)

(assert (=> b!1182251 (=> (not res!785786) (not e!672196))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182251 (= res!785786 (validKeyInArray!0 k!934))))

(declare-fun b!1182252 () Bool)

(declare-fun e!672202 () Bool)

(declare-fun tp_is_empty!29789 () Bool)

(assert (=> b!1182252 (= e!672202 tp_is_empty!29789)))

(declare-fun b!1182253 () Bool)

(declare-fun e!672197 () Bool)

(assert (=> b!1182253 (= e!672197 tp_is_empty!29789)))

(declare-fun b!1182254 () Bool)

(declare-datatypes ((Unit!39036 0))(
  ( (Unit!39037) )
))
(declare-fun e!672198 () Unit!39036)

(declare-fun Unit!39038 () Unit!39036)

(assert (=> b!1182254 (= e!672198 Unit!39038)))

(declare-datatypes ((array!76346 0))(
  ( (array!76347 (arr!36819 (Array (_ BitVec 32) (_ BitVec 64))) (size!37356 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76346)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!535092 () Unit!39036)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76346 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39036)

(assert (=> b!1182254 (= lt!535092 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182254 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535098 () Unit!39036)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76346 (_ BitVec 32) (_ BitVec 32)) Unit!39036)

(assert (=> b!1182254 (= lt!535098 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26040 0))(
  ( (Nil!26037) (Cons!26036 (h!27245 (_ BitVec 64)) (t!38298 List!26040)) )
))
(declare-fun arrayNoDuplicates!0 (array!76346 (_ BitVec 32) List!26040) Bool)

(assert (=> b!1182254 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26037)))

(declare-fun lt!535080 () Unit!39036)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76346 (_ BitVec 64) (_ BitVec 32) List!26040) Unit!39036)

(assert (=> b!1182254 (= lt!535080 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26037))))

(assert (=> b!1182254 false))

(declare-fun b!1182256 () Bool)

(declare-fun Unit!39039 () Unit!39036)

(assert (=> b!1182256 (= e!672198 Unit!39039)))

(declare-fun b!1182257 () Bool)

(declare-fun res!785787 () Bool)

(assert (=> b!1182257 (=> (not res!785787) (not e!672196))))

(assert (=> b!1182257 (= res!785787 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26037))))

(declare-fun b!1182258 () Bool)

(declare-fun res!785788 () Bool)

(assert (=> b!1182258 (=> (not res!785788) (not e!672196))))

(assert (=> b!1182258 (= res!785788 (= (select (arr!36819 _keys!1208) i!673) k!934))))

(declare-fun b!1182259 () Bool)

(declare-fun e!672195 () Bool)

(assert (=> b!1182259 (= e!672196 e!672195)))

(declare-fun res!785780 () Bool)

(assert (=> b!1182259 (=> (not res!785780) (not e!672195))))

(declare-fun lt!535091 () array!76346)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76346 (_ BitVec 32)) Bool)

(assert (=> b!1182259 (= res!785780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535091 mask!1564))))

(assert (=> b!1182259 (= lt!535091 (array!76347 (store (arr!36819 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37356 _keys!1208)))))

(declare-fun b!1182260 () Bool)

(declare-fun e!672200 () Bool)

(assert (=> b!1182260 (= e!672200 true)))

(declare-datatypes ((V!44845 0))(
  ( (V!44846 (val!14951 Int)) )
))
(declare-datatypes ((tuple2!19278 0))(
  ( (tuple2!19279 (_1!9649 (_ BitVec 64)) (_2!9649 V!44845)) )
))
(declare-datatypes ((List!26041 0))(
  ( (Nil!26038) (Cons!26037 (h!27246 tuple2!19278) (t!38299 List!26041)) )
))
(declare-datatypes ((ListLongMap!17259 0))(
  ( (ListLongMap!17260 (toList!8645 List!26041)) )
))
(declare-fun lt!535096 () ListLongMap!17259)

(declare-fun lt!535086 () ListLongMap!17259)

(declare-fun -!1634 (ListLongMap!17259 (_ BitVec 64)) ListLongMap!17259)

(assert (=> b!1182260 (= (-!1634 lt!535096 k!934) lt!535086)))

(declare-fun lt!535083 () Unit!39036)

(declare-fun lt!535084 () V!44845)

(declare-fun lt!535089 () ListLongMap!17259)

(declare-fun addRemoveCommutativeForDiffKeys!153 (ListLongMap!17259 (_ BitVec 64) V!44845 (_ BitVec 64)) Unit!39036)

(assert (=> b!1182260 (= lt!535083 (addRemoveCommutativeForDiffKeys!153 lt!535089 (select (arr!36819 _keys!1208) from!1455) lt!535084 k!934))))

(declare-fun lt!535085 () ListLongMap!17259)

(declare-fun lt!535087 () ListLongMap!17259)

(declare-fun lt!535088 () ListLongMap!17259)

(assert (=> b!1182260 (and (= lt!535087 lt!535096) (= lt!535085 lt!535088))))

(declare-fun lt!535097 () tuple2!19278)

(declare-fun +!3863 (ListLongMap!17259 tuple2!19278) ListLongMap!17259)

(assert (=> b!1182260 (= lt!535096 (+!3863 lt!535089 lt!535097))))

(assert (=> b!1182260 (not (= (select (arr!36819 _keys!1208) from!1455) k!934))))

(declare-fun lt!535081 () Unit!39036)

(assert (=> b!1182260 (= lt!535081 e!672198)))

(declare-fun c!116960 () Bool)

(assert (=> b!1182260 (= c!116960 (= (select (arr!36819 _keys!1208) from!1455) k!934))))

(declare-fun e!672199 () Bool)

(assert (=> b!1182260 e!672199))

(declare-fun res!785774 () Bool)

(assert (=> b!1182260 (=> (not res!785774) (not e!672199))))

(declare-fun lt!535093 () ListLongMap!17259)

(assert (=> b!1182260 (= res!785774 (= lt!535093 lt!535086))))

(assert (=> b!1182260 (= lt!535086 (+!3863 lt!535085 lt!535097))))

(assert (=> b!1182260 (= lt!535097 (tuple2!19279 (select (arr!36819 _keys!1208) from!1455) lt!535084))))

(declare-fun lt!535094 () V!44845)

(declare-datatypes ((ValueCell!14185 0))(
  ( (ValueCellFull!14185 (v!17590 V!44845)) (EmptyCell!14185) )
))
(declare-datatypes ((array!76348 0))(
  ( (array!76349 (arr!36820 (Array (_ BitVec 32) ValueCell!14185)) (size!37357 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76348)

(declare-fun get!18871 (ValueCell!14185 V!44845) V!44845)

(assert (=> b!1182260 (= lt!535084 (get!18871 (select (arr!36820 _values!996) from!1455) lt!535094))))

(declare-fun b!1182261 () Bool)

(declare-fun e!672204 () Bool)

(assert (=> b!1182261 (= e!672204 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182262 () Bool)

(declare-fun res!785778 () Bool)

(assert (=> b!1182262 (=> (not res!785778) (not e!672196))))

(assert (=> b!1182262 (= res!785778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182263 () Bool)

(declare-fun res!785781 () Bool)

(assert (=> b!1182263 (=> (not res!785781) (not e!672196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182263 (= res!785781 (validMask!0 mask!1564))))

(declare-fun b!1182264 () Bool)

(assert (=> b!1182264 (= e!672199 e!672204)))

(declare-fun res!785775 () Bool)

(assert (=> b!1182264 (=> res!785775 e!672204)))

(assert (=> b!1182264 (= res!785775 (not (= (select (arr!36819 _keys!1208) from!1455) k!934)))))

(declare-fun b!1182265 () Bool)

(declare-fun e!672194 () Bool)

(declare-fun mapRes!46511 () Bool)

(assert (=> b!1182265 (= e!672194 (and e!672202 mapRes!46511))))

(declare-fun condMapEmpty!46511 () Bool)

(declare-fun mapDefault!46511 () ValueCell!14185)

