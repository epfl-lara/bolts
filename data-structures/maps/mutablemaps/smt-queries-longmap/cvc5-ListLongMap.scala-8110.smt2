; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99562 () Bool)

(assert start!99562)

(declare-fun b_free!25105 () Bool)

(declare-fun b_next!25105 () Bool)

(assert (=> start!99562 (= b_free!25105 (not b_next!25105))))

(declare-fun tp!88030 () Bool)

(declare-fun b_and!41091 () Bool)

(assert (=> start!99562 (= tp!88030 b_and!41091)))

(declare-fun b!1177191 () Bool)

(declare-fun res!782037 () Bool)

(declare-fun e!669233 () Bool)

(assert (=> b!1177191 (=> (not res!782037) (not e!669233))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177191 (= res!782037 (validMask!0 mask!1564))))

(declare-fun b!1177192 () Bool)

(declare-fun res!782027 () Bool)

(assert (=> b!1177192 (=> (not res!782027) (not e!669233))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177192 (= res!782027 (validKeyInArray!0 k!934))))

(declare-fun b!1177193 () Bool)

(declare-fun e!669228 () Bool)

(declare-fun e!669238 () Bool)

(assert (=> b!1177193 (= e!669228 e!669238)))

(declare-fun res!782035 () Bool)

(assert (=> b!1177193 (=> res!782035 e!669238)))

(declare-datatypes ((array!76046 0))(
  ( (array!76047 (arr!36669 (Array (_ BitVec 32) (_ BitVec 64))) (size!37206 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76046)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1177193 (= res!782035 (not (= (select (arr!36669 _keys!1208) from!1455) k!934)))))

(declare-fun b!1177194 () Bool)

(declare-fun e!669226 () Bool)

(declare-fun tp_is_empty!29635 () Bool)

(assert (=> b!1177194 (= e!669226 tp_is_empty!29635)))

(declare-fun b!1177195 () Bool)

(declare-fun res!782029 () Bool)

(assert (=> b!1177195 (=> (not res!782029) (not e!669233))))

(declare-datatypes ((List!25913 0))(
  ( (Nil!25910) (Cons!25909 (h!27118 (_ BitVec 64)) (t!38017 List!25913)) )
))
(declare-fun arrayNoDuplicates!0 (array!76046 (_ BitVec 32) List!25913) Bool)

(assert (=> b!1177195 (= res!782029 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25910))))

(declare-fun e!669229 () Bool)

(declare-datatypes ((V!44641 0))(
  ( (V!44642 (val!14874 Int)) )
))
(declare-datatypes ((tuple2!19146 0))(
  ( (tuple2!19147 (_1!9583 (_ BitVec 64)) (_2!9583 V!44641)) )
))
(declare-datatypes ((List!25914 0))(
  ( (Nil!25911) (Cons!25910 (h!27119 tuple2!19146) (t!38018 List!25914)) )
))
(declare-datatypes ((ListLongMap!17127 0))(
  ( (ListLongMap!17128 (toList!8579 List!25914)) )
))
(declare-fun lt!531481 () ListLongMap!17127)

(declare-fun lt!531484 () tuple2!19146)

(declare-fun lt!531480 () ListLongMap!17127)

(declare-fun b!1177196 () Bool)

(declare-fun +!3802 (ListLongMap!17127 tuple2!19146) ListLongMap!17127)

(assert (=> b!1177196 (= e!669229 (= lt!531481 (+!3802 lt!531480 lt!531484)))))

(declare-fun b!1177197 () Bool)

(declare-fun res!782034 () Bool)

(assert (=> b!1177197 (=> (not res!782034) (not e!669233))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14108 0))(
  ( (ValueCellFull!14108 (v!17513 V!44641)) (EmptyCell!14108) )
))
(declare-datatypes ((array!76048 0))(
  ( (array!76049 (arr!36670 (Array (_ BitVec 32) ValueCell!14108)) (size!37207 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76048)

(assert (=> b!1177197 (= res!782034 (and (= (size!37207 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37206 _keys!1208) (size!37207 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1177198 () Bool)

(declare-datatypes ((Unit!38810 0))(
  ( (Unit!38811) )
))
(declare-fun e!669235 () Unit!38810)

(declare-fun Unit!38812 () Unit!38810)

(assert (=> b!1177198 (= e!669235 Unit!38812)))

(declare-fun b!1177199 () Bool)

(declare-fun e!669234 () Bool)

(declare-fun e!669232 () Bool)

(assert (=> b!1177199 (= e!669234 (not e!669232))))

(declare-fun res!782033 () Bool)

(assert (=> b!1177199 (=> res!782033 e!669232)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1177199 (= res!782033 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177199 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!531489 () Unit!38810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76046 (_ BitVec 64) (_ BitVec 32)) Unit!38810)

(assert (=> b!1177199 (= lt!531489 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177200 () Bool)

(declare-fun e!669236 () Bool)

(assert (=> b!1177200 (= e!669236 true)))

(assert (=> b!1177200 e!669229))

(declare-fun res!782031 () Bool)

(assert (=> b!1177200 (=> (not res!782031) (not e!669229))))

(assert (=> b!1177200 (= res!782031 (not (= (select (arr!36669 _keys!1208) from!1455) k!934)))))

(declare-fun lt!531477 () Unit!38810)

(assert (=> b!1177200 (= lt!531477 e!669235)))

(declare-fun c!116729 () Bool)

(assert (=> b!1177200 (= c!116729 (= (select (arr!36669 _keys!1208) from!1455) k!934))))

(assert (=> b!1177200 e!669228))

(declare-fun res!782032 () Bool)

(assert (=> b!1177200 (=> (not res!782032) (not e!669228))))

(declare-fun lt!531479 () ListLongMap!17127)

(declare-fun lt!531476 () ListLongMap!17127)

(assert (=> b!1177200 (= res!782032 (= lt!531476 (+!3802 lt!531479 lt!531484)))))

(declare-fun lt!531486 () V!44641)

(declare-fun get!18770 (ValueCell!14108 V!44641) V!44641)

(assert (=> b!1177200 (= lt!531484 (tuple2!19147 (select (arr!36669 _keys!1208) from!1455) (get!18770 (select (arr!36670 _values!996) from!1455) lt!531486)))))

(declare-fun b!1177201 () Bool)

(assert (=> b!1177201 (= e!669233 e!669234)))

(declare-fun res!782025 () Bool)

(assert (=> b!1177201 (=> (not res!782025) (not e!669234))))

(declare-fun lt!531483 () array!76046)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76046 (_ BitVec 32)) Bool)

(assert (=> b!1177201 (= res!782025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531483 mask!1564))))

(assert (=> b!1177201 (= lt!531483 (array!76047 (store (arr!36669 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37206 _keys!1208)))))

(declare-fun b!1177202 () Bool)

(declare-fun res!782028 () Bool)

(assert (=> b!1177202 (=> (not res!782028) (not e!669233))))

(assert (=> b!1177202 (= res!782028 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37206 _keys!1208))))))

(declare-fun b!1177203 () Bool)

(declare-fun Unit!38813 () Unit!38810)

(assert (=> b!1177203 (= e!669235 Unit!38813)))

(declare-fun lt!531478 () Unit!38810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76046 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38810)

(assert (=> b!1177203 (= lt!531478 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1177203 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531488 () Unit!38810)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76046 (_ BitVec 32) (_ BitVec 32)) Unit!38810)

(assert (=> b!1177203 (= lt!531488 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1177203 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25910)))

(declare-fun lt!531487 () Unit!38810)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76046 (_ BitVec 64) (_ BitVec 32) List!25913) Unit!38810)

(assert (=> b!1177203 (= lt!531487 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25910))))

(assert (=> b!1177203 false))

(declare-fun b!1177204 () Bool)

(assert (=> b!1177204 (= e!669238 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46280 () Bool)

(declare-fun mapRes!46280 () Bool)

(assert (=> mapIsEmpty!46280 mapRes!46280))

(declare-fun b!1177205 () Bool)

(declare-fun e!669231 () Bool)

(assert (=> b!1177205 (= e!669232 e!669231)))

(declare-fun res!782024 () Bool)

(assert (=> b!1177205 (=> res!782024 e!669231)))

(assert (=> b!1177205 (= res!782024 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44641)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44641)

(declare-fun lt!531482 () array!76048)

(declare-fun getCurrentListMapNoExtraKeys!5010 (array!76046 array!76048 (_ BitVec 32) (_ BitVec 32) V!44641 V!44641 (_ BitVec 32) Int) ListLongMap!17127)

(assert (=> b!1177205 (= lt!531476 (getCurrentListMapNoExtraKeys!5010 lt!531483 lt!531482 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1177205 (= lt!531482 (array!76049 (store (arr!36670 _values!996) i!673 (ValueCellFull!14108 lt!531486)) (size!37207 _values!996)))))

(declare-fun dynLambda!2986 (Int (_ BitVec 64)) V!44641)

(assert (=> b!1177205 (= lt!531486 (dynLambda!2986 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1177205 (= lt!531481 (getCurrentListMapNoExtraKeys!5010 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1177206 () Bool)

(declare-fun e!669237 () Bool)

(assert (=> b!1177206 (= e!669237 (and e!669226 mapRes!46280))))

(declare-fun condMapEmpty!46280 () Bool)

(declare-fun mapDefault!46280 () ValueCell!14108)

