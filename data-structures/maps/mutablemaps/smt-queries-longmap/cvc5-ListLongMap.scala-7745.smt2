; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97250 () Bool)

(assert start!97250)

(declare-fun b!1106137 () Bool)

(declare-fun e!631276 () Bool)

(assert (=> b!1106137 (= e!631276 (not true))))

(declare-datatypes ((array!71760 0))(
  ( (array!71761 (arr!34529 (Array (_ BitVec 32) (_ BitVec 64))) (size!35066 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71760)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106137 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36235 0))(
  ( (Unit!36236) )
))
(declare-fun lt!495398 () Unit!36235)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71760 (_ BitVec 64) (_ BitVec 32)) Unit!36235)

(assert (=> b!1106137 (= lt!495398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1106138 () Bool)

(declare-fun res!738237 () Bool)

(declare-fun e!631274 () Bool)

(assert (=> b!1106138 (=> (not res!738237) (not e!631274))))

(declare-datatypes ((List!24209 0))(
  ( (Nil!24206) (Cons!24205 (h!25414 (_ BitVec 64)) (t!34481 List!24209)) )
))
(declare-fun arrayNoDuplicates!0 (array!71760 (_ BitVec 32) List!24209) Bool)

(assert (=> b!1106138 (= res!738237 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24206))))

(declare-fun b!1106139 () Bool)

(declare-fun res!738229 () Bool)

(assert (=> b!1106139 (=> (not res!738229) (not e!631274))))

(assert (=> b!1106139 (= res!738229 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35066 _keys!1208))))))

(declare-fun b!1106140 () Bool)

(declare-fun e!631277 () Bool)

(declare-fun e!631272 () Bool)

(declare-fun mapRes!42985 () Bool)

(assert (=> b!1106140 (= e!631277 (and e!631272 mapRes!42985))))

(declare-fun condMapEmpty!42985 () Bool)

(declare-datatypes ((V!41721 0))(
  ( (V!41722 (val!13779 Int)) )
))
(declare-datatypes ((ValueCell!13013 0))(
  ( (ValueCellFull!13013 (v!16413 V!41721)) (EmptyCell!13013) )
))
(declare-datatypes ((array!71762 0))(
  ( (array!71763 (arr!34530 (Array (_ BitVec 32) ValueCell!13013)) (size!35067 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71762)

(declare-fun mapDefault!42985 () ValueCell!13013)

