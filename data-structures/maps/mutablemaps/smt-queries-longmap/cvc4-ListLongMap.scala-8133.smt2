; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99704 () Bool)

(assert start!99704)

(declare-fun b_free!25247 () Bool)

(declare-fun b_next!25247 () Bool)

(assert (=> start!99704 (= b_free!25247 (not b_next!25247))))

(declare-fun tp!88456 () Bool)

(declare-fun b_and!41375 () Bool)

(assert (=> start!99704 (= tp!88456 b_and!41375)))

(declare-fun b!1181879 () Bool)

(declare-fun res!785506 () Bool)

(declare-fun e!671981 () Bool)

(assert (=> b!1181879 (=> (not res!785506) (not e!671981))))

(declare-datatypes ((array!76322 0))(
  ( (array!76323 (arr!36807 (Array (_ BitVec 32) (_ BitVec 64))) (size!37344 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76322)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44829 0))(
  ( (V!44830 (val!14945 Int)) )
))
(declare-datatypes ((ValueCell!14179 0))(
  ( (ValueCellFull!14179 (v!17584 V!44829)) (EmptyCell!14179) )
))
(declare-datatypes ((array!76324 0))(
  ( (array!76325 (arr!36808 (Array (_ BitVec 32) ValueCell!14179)) (size!37345 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76324)

(assert (=> b!1181879 (= res!785506 (and (= (size!37345 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37344 _keys!1208) (size!37345 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181880 () Bool)

(declare-fun res!785510 () Bool)

(assert (=> b!1181880 (=> (not res!785510) (not e!671981))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76322 (_ BitVec 32)) Bool)

(assert (=> b!1181880 (= res!785510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181881 () Bool)

(declare-fun e!671982 () Bool)

(assert (=> b!1181881 (= e!671982 true)))

(declare-datatypes ((tuple2!19268 0))(
  ( (tuple2!19269 (_1!9644 (_ BitVec 64)) (_2!9644 V!44829)) )
))
(declare-datatypes ((List!26030 0))(
  ( (Nil!26027) (Cons!26026 (h!27235 tuple2!19268) (t!38276 List!26030)) )
))
(declare-datatypes ((ListLongMap!17249 0))(
  ( (ListLongMap!17250 (toList!8640 List!26030)) )
))
(declare-fun lt!534744 () ListLongMap!17249)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!534738 () ListLongMap!17249)

(declare-fun -!1629 (ListLongMap!17249 (_ BitVec 64)) ListLongMap!17249)

(assert (=> b!1181881 (= (-!1629 lt!534744 k!934) lt!534738)))

(declare-fun lt!534754 () V!44829)

(declare-fun lt!534741 () ListLongMap!17249)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((Unit!39018 0))(
  ( (Unit!39019) )
))
(declare-fun lt!534750 () Unit!39018)

(declare-fun addRemoveCommutativeForDiffKeys!148 (ListLongMap!17249 (_ BitVec 64) V!44829 (_ BitVec 64)) Unit!39018)

(assert (=> b!1181881 (= lt!534750 (addRemoveCommutativeForDiffKeys!148 lt!534741 (select (arr!36807 _keys!1208) from!1455) lt!534754 k!934))))

(declare-fun lt!534740 () ListLongMap!17249)

(declare-fun lt!534748 () ListLongMap!17249)

(declare-fun lt!534743 () ListLongMap!17249)

(assert (=> b!1181881 (and (= lt!534743 lt!534744) (= lt!534748 lt!534740))))

(declare-fun lt!534751 () tuple2!19268)

(declare-fun +!3858 (ListLongMap!17249 tuple2!19268) ListLongMap!17249)

(assert (=> b!1181881 (= lt!534744 (+!3858 lt!534741 lt!534751))))

(assert (=> b!1181881 (not (= (select (arr!36807 _keys!1208) from!1455) k!934))))

(declare-fun lt!534742 () Unit!39018)

(declare-fun e!671986 () Unit!39018)

(assert (=> b!1181881 (= lt!534742 e!671986)))

(declare-fun c!116942 () Bool)

(assert (=> b!1181881 (= c!116942 (= (select (arr!36807 _keys!1208) from!1455) k!934))))

(declare-fun e!671987 () Bool)

(assert (=> b!1181881 e!671987))

(declare-fun res!785507 () Bool)

(assert (=> b!1181881 (=> (not res!785507) (not e!671987))))

(declare-fun lt!534747 () ListLongMap!17249)

(assert (=> b!1181881 (= res!785507 (= lt!534747 lt!534738))))

(assert (=> b!1181881 (= lt!534738 (+!3858 lt!534748 lt!534751))))

(assert (=> b!1181881 (= lt!534751 (tuple2!19269 (select (arr!36807 _keys!1208) from!1455) lt!534754))))

(declare-fun lt!534755 () V!44829)

(declare-fun get!18862 (ValueCell!14179 V!44829) V!44829)

(assert (=> b!1181881 (= lt!534754 (get!18862 (select (arr!36808 _values!996) from!1455) lt!534755))))

(declare-fun b!1181882 () Bool)

(declare-fun Unit!39020 () Unit!39018)

(assert (=> b!1181882 (= e!671986 Unit!39020)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!534746 () Unit!39018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76322 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39018)

(assert (=> b!1181882 (= lt!534746 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181882 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534749 () Unit!39018)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76322 (_ BitVec 32) (_ BitVec 32)) Unit!39018)

(assert (=> b!1181882 (= lt!534749 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26031 0))(
  ( (Nil!26028) (Cons!26027 (h!27236 (_ BitVec 64)) (t!38277 List!26031)) )
))
(declare-fun arrayNoDuplicates!0 (array!76322 (_ BitVec 32) List!26031) Bool)

(assert (=> b!1181882 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26028)))

(declare-fun lt!534756 () Unit!39018)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76322 (_ BitVec 64) (_ BitVec 32) List!26031) Unit!39018)

(assert (=> b!1181882 (= lt!534756 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26028))))

(assert (=> b!1181882 false))

(declare-fun b!1181883 () Bool)

(declare-fun e!671983 () Bool)

(declare-fun e!671979 () Bool)

(declare-fun mapRes!46493 () Bool)

(assert (=> b!1181883 (= e!671983 (and e!671979 mapRes!46493))))

(declare-fun condMapEmpty!46493 () Bool)

(declare-fun mapDefault!46493 () ValueCell!14179)

