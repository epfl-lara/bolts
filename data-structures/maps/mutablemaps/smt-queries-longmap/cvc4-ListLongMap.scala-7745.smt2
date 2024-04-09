; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97254 () Bool)

(assert start!97254)

(declare-fun b!1106215 () Bool)

(declare-fun res!738296 () Bool)

(declare-fun e!631311 () Bool)

(assert (=> b!1106215 (=> (not res!738296) (not e!631311))))

(declare-datatypes ((array!71768 0))(
  ( (array!71769 (arr!34533 (Array (_ BitVec 32) (_ BitVec 64))) (size!35070 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71768)

(declare-datatypes ((List!24211 0))(
  ( (Nil!24208) (Cons!24207 (h!25416 (_ BitVec 64)) (t!34483 List!24211)) )
))
(declare-fun arrayNoDuplicates!0 (array!71768 (_ BitVec 32) List!24211) Bool)

(assert (=> b!1106215 (= res!738296 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24208))))

(declare-fun b!1106216 () Bool)

(declare-fun res!738289 () Bool)

(assert (=> b!1106216 (=> (not res!738289) (not e!631311))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71768 (_ BitVec 32)) Bool)

(assert (=> b!1106216 (= res!738289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106217 () Bool)

(declare-fun res!738295 () Bool)

(assert (=> b!1106217 (=> (not res!738295) (not e!631311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106217 (= res!738295 (validMask!0 mask!1564))))

(declare-fun b!1106218 () Bool)

(declare-fun res!738297 () Bool)

(assert (=> b!1106218 (=> (not res!738297) (not e!631311))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106218 (= res!738297 (validKeyInArray!0 k!934))))

(declare-fun res!738293 () Bool)

(assert (=> start!97254 (=> (not res!738293) (not e!631311))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97254 (= res!738293 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35070 _keys!1208))))))

(assert (=> start!97254 e!631311))

(declare-fun array_inv!26438 (array!71768) Bool)

(assert (=> start!97254 (array_inv!26438 _keys!1208)))

(assert (=> start!97254 true))

(declare-datatypes ((V!41725 0))(
  ( (V!41726 (val!13781 Int)) )
))
(declare-datatypes ((ValueCell!13015 0))(
  ( (ValueCellFull!13015 (v!16415 V!41725)) (EmptyCell!13015) )
))
(declare-datatypes ((array!71770 0))(
  ( (array!71771 (arr!34534 (Array (_ BitVec 32) ValueCell!13015)) (size!35071 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71770)

(declare-fun e!631308 () Bool)

(declare-fun array_inv!26439 (array!71770) Bool)

(assert (=> start!97254 (and (array_inv!26439 _values!996) e!631308)))

(declare-fun b!1106219 () Bool)

(declare-fun res!738288 () Bool)

(assert (=> b!1106219 (=> (not res!738288) (not e!631311))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1106219 (= res!738288 (= (select (arr!34533 _keys!1208) i!673) k!934))))

(declare-fun b!1106220 () Bool)

(declare-fun e!631310 () Bool)

(assert (=> b!1106220 (= e!631310 (not true))))

(declare-fun arrayContainsKey!0 (array!71768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106220 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36239 0))(
  ( (Unit!36240) )
))
(declare-fun lt!495410 () Unit!36239)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71768 (_ BitVec 64) (_ BitVec 32)) Unit!36239)

(assert (=> b!1106220 (= lt!495410 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1106221 () Bool)

(declare-fun e!631312 () Bool)

(declare-fun mapRes!42991 () Bool)

(assert (=> b!1106221 (= e!631308 (and e!631312 mapRes!42991))))

(declare-fun condMapEmpty!42991 () Bool)

(declare-fun mapDefault!42991 () ValueCell!13015)

