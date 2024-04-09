; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99656 () Bool)

(assert start!99656)

(declare-fun b_free!25199 () Bool)

(declare-fun b_next!25199 () Bool)

(assert (=> start!99656 (= b_free!25199 (not b_next!25199))))

(declare-fun tp!88311 () Bool)

(declare-fun b_and!41279 () Bool)

(assert (=> start!99656 (= tp!88311 b_and!41279)))

(declare-fun b!1180281 () Bool)

(declare-fun e!671065 () Bool)

(declare-datatypes ((V!44765 0))(
  ( (V!44766 (val!14921 Int)) )
))
(declare-datatypes ((tuple2!19228 0))(
  ( (tuple2!19229 (_1!9624 (_ BitVec 64)) (_2!9624 V!44765)) )
))
(declare-datatypes ((List!25990 0))(
  ( (Nil!25987) (Cons!25986 (h!27195 tuple2!19228) (t!38188 List!25990)) )
))
(declare-datatypes ((ListLongMap!17209 0))(
  ( (ListLongMap!17210 (toList!8620 List!25990)) )
))
(declare-fun lt!533601 () ListLongMap!17209)

(declare-fun lt!533598 () ListLongMap!17209)

(assert (=> b!1180281 (= e!671065 (= lt!533601 lt!533598))))

(declare-fun b!1180282 () Bool)

(declare-fun res!784321 () Bool)

(declare-fun e!671068 () Bool)

(assert (=> b!1180282 (=> (not res!784321) (not e!671068))))

(declare-datatypes ((array!76228 0))(
  ( (array!76229 (arr!36760 (Array (_ BitVec 32) (_ BitVec 64))) (size!37297 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76228)

(declare-datatypes ((List!25991 0))(
  ( (Nil!25988) (Cons!25987 (h!27196 (_ BitVec 64)) (t!38189 List!25991)) )
))
(declare-fun arrayNoDuplicates!0 (array!76228 (_ BitVec 32) List!25991) Bool)

(assert (=> b!1180282 (= res!784321 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25988))))

(declare-fun mapNonEmpty!46421 () Bool)

(declare-fun mapRes!46421 () Bool)

(declare-fun tp!88312 () Bool)

(declare-fun e!671069 () Bool)

(assert (=> mapNonEmpty!46421 (= mapRes!46421 (and tp!88312 e!671069))))

(declare-fun mapKey!46421 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14155 0))(
  ( (ValueCellFull!14155 (v!17560 V!44765)) (EmptyCell!14155) )
))
(declare-fun mapRest!46421 () (Array (_ BitVec 32) ValueCell!14155))

(declare-fun mapValue!46421 () ValueCell!14155)

(declare-datatypes ((array!76230 0))(
  ( (array!76231 (arr!36761 (Array (_ BitVec 32) ValueCell!14155)) (size!37298 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76230)

(assert (=> mapNonEmpty!46421 (= (arr!36761 _values!996) (store mapRest!46421 mapKey!46421 mapValue!46421))))

(declare-fun b!1180283 () Bool)

(declare-fun e!671066 () Bool)

(declare-fun e!671059 () Bool)

(assert (=> b!1180283 (= e!671066 (not e!671059))))

(declare-fun res!784325 () Bool)

(assert (=> b!1180283 (=> res!784325 e!671059)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1180283 (= res!784325 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180283 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38944 0))(
  ( (Unit!38945) )
))
(declare-fun lt!533592 () Unit!38944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76228 (_ BitVec 64) (_ BitVec 32)) Unit!38944)

(assert (=> b!1180283 (= lt!533592 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun e!671064 () Bool)

(declare-fun b!1180284 () Bool)

(assert (=> b!1180284 (= e!671064 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1180285 () Bool)

(declare-fun e!671071 () Bool)

(declare-fun tp_is_empty!29729 () Bool)

(assert (=> b!1180285 (= e!671071 tp_is_empty!29729)))

(declare-fun b!1180286 () Bool)

(assert (=> b!1180286 (= e!671068 e!671066)))

(declare-fun res!784322 () Bool)

(assert (=> b!1180286 (=> (not res!784322) (not e!671066))))

(declare-fun lt!533591 () array!76228)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76228 (_ BitVec 32)) Bool)

(assert (=> b!1180286 (= res!784322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533591 mask!1564))))

(assert (=> b!1180286 (= lt!533591 (array!76229 (store (arr!36760 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37297 _keys!1208)))))

(declare-fun b!1180287 () Bool)

(declare-fun res!784319 () Bool)

(assert (=> b!1180287 (=> (not res!784319) (not e!671066))))

(assert (=> b!1180287 (= res!784319 (arrayNoDuplicates!0 lt!533591 #b00000000000000000000000000000000 Nil!25988))))

(declare-fun b!1180288 () Bool)

(declare-fun res!784315 () Bool)

(assert (=> b!1180288 (=> (not res!784315) (not e!671068))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1180288 (= res!784315 (and (= (size!37298 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37297 _keys!1208) (size!37298 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180289 () Bool)

(declare-fun res!784318 () Bool)

(assert (=> b!1180289 (=> (not res!784318) (not e!671068))))

(assert (=> b!1180289 (= res!784318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180290 () Bool)

(declare-fun res!784330 () Bool)

(assert (=> b!1180290 (=> (not res!784330) (not e!671065))))

(declare-fun lt!533599 () ListLongMap!17209)

(declare-fun lt!533597 () tuple2!19228)

(declare-fun lt!533595 () ListLongMap!17209)

(declare-fun +!3839 (ListLongMap!17209 tuple2!19228) ListLongMap!17209)

(assert (=> b!1180290 (= res!784330 (= lt!533595 (+!3839 lt!533599 lt!533597)))))

(declare-fun b!1180291 () Bool)

(declare-fun e!671063 () Bool)

(assert (=> b!1180291 (= e!671063 (and e!671071 mapRes!46421))))

(declare-fun condMapEmpty!46421 () Bool)

(declare-fun mapDefault!46421 () ValueCell!14155)

