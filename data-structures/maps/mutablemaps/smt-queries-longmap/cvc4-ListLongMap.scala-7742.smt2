; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97236 () Bool)

(assert start!97236)

(declare-fun b!1105864 () Bool)

(declare-fun res!738024 () Bool)

(declare-fun e!631151 () Bool)

(assert (=> b!1105864 (=> (not res!738024) (not e!631151))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71734 0))(
  ( (array!71735 (arr!34516 (Array (_ BitVec 32) (_ BitVec 64))) (size!35053 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71734)

(assert (=> b!1105864 (= res!738024 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35053 _keys!1208))))))

(declare-fun b!1105865 () Bool)

(declare-fun res!738018 () Bool)

(assert (=> b!1105865 (=> (not res!738018) (not e!631151))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71734 (_ BitVec 32)) Bool)

(assert (=> b!1105865 (= res!738018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!42964 () Bool)

(declare-fun mapRes!42964 () Bool)

(assert (=> mapIsEmpty!42964 mapRes!42964))

(declare-fun res!738022 () Bool)

(assert (=> start!97236 (=> (not res!738022) (not e!631151))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97236 (= res!738022 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35053 _keys!1208))))))

(assert (=> start!97236 e!631151))

(declare-fun array_inv!26426 (array!71734) Bool)

(assert (=> start!97236 (array_inv!26426 _keys!1208)))

(assert (=> start!97236 true))

(declare-datatypes ((V!41701 0))(
  ( (V!41702 (val!13772 Int)) )
))
(declare-datatypes ((ValueCell!13006 0))(
  ( (ValueCellFull!13006 (v!16406 V!41701)) (EmptyCell!13006) )
))
(declare-datatypes ((array!71736 0))(
  ( (array!71737 (arr!34517 (Array (_ BitVec 32) ValueCell!13006)) (size!35054 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71736)

(declare-fun e!631147 () Bool)

(declare-fun array_inv!26427 (array!71736) Bool)

(assert (=> start!97236 (and (array_inv!26427 _values!996) e!631147)))

(declare-fun b!1105866 () Bool)

(declare-fun res!738023 () Bool)

(assert (=> b!1105866 (=> (not res!738023) (not e!631151))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105866 (= res!738023 (validKeyInArray!0 k!934))))

(declare-fun b!1105867 () Bool)

(declare-fun e!631150 () Bool)

(declare-fun tp_is_empty!27431 () Bool)

(assert (=> b!1105867 (= e!631150 tp_is_empty!27431)))

(declare-fun b!1105868 () Bool)

(declare-fun e!631149 () Bool)

(assert (=> b!1105868 (= e!631149 (not true))))

(declare-fun arrayContainsKey!0 (array!71734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105868 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36225 0))(
  ( (Unit!36226) )
))
(declare-fun lt!495356 () Unit!36225)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71734 (_ BitVec 64) (_ BitVec 32)) Unit!36225)

(assert (=> b!1105868 (= lt!495356 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1105869 () Bool)

(declare-fun e!631146 () Bool)

(assert (=> b!1105869 (= e!631146 tp_is_empty!27431)))

(declare-fun b!1105870 () Bool)

(declare-fun res!738025 () Bool)

(assert (=> b!1105870 (=> (not res!738025) (not e!631151))))

(assert (=> b!1105870 (= res!738025 (= (select (arr!34516 _keys!1208) i!673) k!934))))

(declare-fun b!1105871 () Bool)

(declare-fun res!738026 () Bool)

(assert (=> b!1105871 (=> (not res!738026) (not e!631151))))

(declare-datatypes ((List!24203 0))(
  ( (Nil!24200) (Cons!24199 (h!25408 (_ BitVec 64)) (t!34475 List!24203)) )
))
(declare-fun arrayNoDuplicates!0 (array!71734 (_ BitVec 32) List!24203) Bool)

(assert (=> b!1105871 (= res!738026 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24200))))

(declare-fun b!1105872 () Bool)

(assert (=> b!1105872 (= e!631151 e!631149)))

(declare-fun res!738019 () Bool)

(assert (=> b!1105872 (=> (not res!738019) (not e!631149))))

(declare-fun lt!495357 () array!71734)

(assert (=> b!1105872 (= res!738019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495357 mask!1564))))

(assert (=> b!1105872 (= lt!495357 (array!71735 (store (arr!34516 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35053 _keys!1208)))))

(declare-fun b!1105873 () Bool)

(assert (=> b!1105873 (= e!631147 (and e!631146 mapRes!42964))))

(declare-fun condMapEmpty!42964 () Bool)

(declare-fun mapDefault!42964 () ValueCell!13006)

