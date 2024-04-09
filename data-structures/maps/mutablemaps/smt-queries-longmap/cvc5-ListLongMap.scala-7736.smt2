; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97180 () Bool)

(assert start!97180)

(declare-fun b!1105034 () Bool)

(declare-fun res!737395 () Bool)

(declare-fun e!630746 () Bool)

(assert (=> b!1105034 (=> (not res!737395) (not e!630746))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105034 (= res!737395 (validMask!0 mask!1564))))

(declare-fun b!1105035 () Bool)

(declare-fun e!630749 () Bool)

(declare-datatypes ((array!71656 0))(
  ( (array!71657 (arr!34478 (Array (_ BitVec 32) (_ BitVec 64))) (size!35015 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71656)

(assert (=> b!1105035 (= e!630749 (not (or (bvsge #b00000000000000000000000000000000 (size!35015 _keys!1208)) (bvslt (size!35015 _keys!1208) #b01111111111111111111111111111111))))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105035 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36197 0))(
  ( (Unit!36198) )
))
(declare-fun lt!495221 () Unit!36197)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71656 (_ BitVec 64) (_ BitVec 32)) Unit!36197)

(assert (=> b!1105035 (= lt!495221 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1105036 () Bool)

(declare-fun res!737399 () Bool)

(assert (=> b!1105036 (=> (not res!737399) (not e!630749))))

(declare-fun lt!495222 () array!71656)

(declare-datatypes ((List!24189 0))(
  ( (Nil!24186) (Cons!24185 (h!25394 (_ BitVec 64)) (t!34461 List!24189)) )
))
(declare-fun arrayNoDuplicates!0 (array!71656 (_ BitVec 32) List!24189) Bool)

(assert (=> b!1105036 (= res!737399 (arrayNoDuplicates!0 lt!495222 #b00000000000000000000000000000000 Nil!24186))))

(declare-fun b!1105037 () Bool)

(declare-fun res!737393 () Bool)

(assert (=> b!1105037 (=> (not res!737393) (not e!630746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71656 (_ BitVec 32)) Bool)

(assert (=> b!1105037 (= res!737393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105039 () Bool)

(declare-fun res!737394 () Bool)

(assert (=> b!1105039 (=> (not res!737394) (not e!630746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105039 (= res!737394 (validKeyInArray!0 k!934))))

(declare-fun b!1105040 () Bool)

(declare-fun e!630751 () Bool)

(declare-fun e!630747 () Bool)

(declare-fun mapRes!42901 () Bool)

(assert (=> b!1105040 (= e!630751 (and e!630747 mapRes!42901))))

(declare-fun condMapEmpty!42901 () Bool)

(declare-datatypes ((V!41649 0))(
  ( (V!41650 (val!13752 Int)) )
))
(declare-datatypes ((ValueCell!12986 0))(
  ( (ValueCellFull!12986 (v!16386 V!41649)) (EmptyCell!12986) )
))
(declare-datatypes ((array!71658 0))(
  ( (array!71659 (arr!34479 (Array (_ BitVec 32) ValueCell!12986)) (size!35016 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71658)

(declare-fun mapDefault!42901 () ValueCell!12986)

