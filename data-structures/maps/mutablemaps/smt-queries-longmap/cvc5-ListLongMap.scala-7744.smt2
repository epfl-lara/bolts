; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97244 () Bool)

(assert start!97244)

(declare-fun b!1106020 () Bool)

(declare-fun res!738139 () Bool)

(declare-fun e!631219 () Bool)

(assert (=> b!1106020 (=> (not res!738139) (not e!631219))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71750 0))(
  ( (array!71751 (arr!34524 (Array (_ BitVec 32) (_ BitVec 64))) (size!35061 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71750)

(assert (=> b!1106020 (= res!738139 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35061 _keys!1208))))))

(declare-fun res!738146 () Bool)

(assert (=> start!97244 (=> (not res!738146) (not e!631219))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97244 (= res!738146 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35061 _keys!1208))))))

(assert (=> start!97244 e!631219))

(declare-fun array_inv!26432 (array!71750) Bool)

(assert (=> start!97244 (array_inv!26432 _keys!1208)))

(assert (=> start!97244 true))

(declare-datatypes ((V!41713 0))(
  ( (V!41714 (val!13776 Int)) )
))
(declare-datatypes ((ValueCell!13010 0))(
  ( (ValueCellFull!13010 (v!16410 V!41713)) (EmptyCell!13010) )
))
(declare-datatypes ((array!71752 0))(
  ( (array!71753 (arr!34525 (Array (_ BitVec 32) ValueCell!13010)) (size!35062 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71752)

(declare-fun e!631220 () Bool)

(declare-fun array_inv!26433 (array!71752) Bool)

(assert (=> start!97244 (and (array_inv!26433 _values!996) e!631220)))

(declare-fun b!1106021 () Bool)

(declare-fun e!631218 () Bool)

(declare-fun tp_is_empty!27439 () Bool)

(assert (=> b!1106021 (= e!631218 tp_is_empty!27439)))

(declare-fun b!1106022 () Bool)

(declare-fun res!738142 () Bool)

(declare-fun e!631223 () Bool)

(assert (=> b!1106022 (=> (not res!738142) (not e!631223))))

(declare-fun lt!495380 () array!71750)

(declare-datatypes ((List!24207 0))(
  ( (Nil!24204) (Cons!24203 (h!25412 (_ BitVec 64)) (t!34479 List!24207)) )
))
(declare-fun arrayNoDuplicates!0 (array!71750 (_ BitVec 32) List!24207) Bool)

(assert (=> b!1106022 (= res!738142 (arrayNoDuplicates!0 lt!495380 #b00000000000000000000000000000000 Nil!24204))))

(declare-fun b!1106023 () Bool)

(declare-fun res!738145 () Bool)

(assert (=> b!1106023 (=> (not res!738145) (not e!631219))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71750 (_ BitVec 32)) Bool)

(assert (=> b!1106023 (= res!738145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106024 () Bool)

(assert (=> b!1106024 (= e!631219 e!631223)))

(declare-fun res!738140 () Bool)

(assert (=> b!1106024 (=> (not res!738140) (not e!631223))))

(assert (=> b!1106024 (= res!738140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495380 mask!1564))))

(assert (=> b!1106024 (= lt!495380 (array!71751 (store (arr!34524 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35061 _keys!1208)))))

(declare-fun b!1106025 () Bool)

(declare-fun res!738143 () Bool)

(assert (=> b!1106025 (=> (not res!738143) (not e!631219))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1106025 (= res!738143 (= (select (arr!34524 _keys!1208) i!673) k!934))))

(declare-fun b!1106026 () Bool)

(declare-fun res!738141 () Bool)

(assert (=> b!1106026 (=> (not res!738141) (not e!631219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106026 (= res!738141 (validKeyInArray!0 k!934))))

(declare-fun b!1106027 () Bool)

(declare-fun res!738147 () Bool)

(assert (=> b!1106027 (=> (not res!738147) (not e!631219))))

(assert (=> b!1106027 (= res!738147 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24204))))

(declare-fun b!1106028 () Bool)

(declare-fun e!631222 () Bool)

(assert (=> b!1106028 (= e!631222 tp_is_empty!27439)))

(declare-fun mapIsEmpty!42976 () Bool)

(declare-fun mapRes!42976 () Bool)

(assert (=> mapIsEmpty!42976 mapRes!42976))

(declare-fun b!1106029 () Bool)

(assert (=> b!1106029 (= e!631223 (not true))))

(declare-fun arrayContainsKey!0 (array!71750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106029 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36231 0))(
  ( (Unit!36232) )
))
(declare-fun lt!495381 () Unit!36231)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71750 (_ BitVec 64) (_ BitVec 32)) Unit!36231)

(assert (=> b!1106029 (= lt!495381 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1106030 () Bool)

(declare-fun res!738144 () Bool)

(assert (=> b!1106030 (=> (not res!738144) (not e!631219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106030 (= res!738144 (validMask!0 mask!1564))))

(declare-fun b!1106031 () Bool)

(assert (=> b!1106031 (= e!631220 (and e!631222 mapRes!42976))))

(declare-fun condMapEmpty!42976 () Bool)

(declare-fun mapDefault!42976 () ValueCell!13010)

