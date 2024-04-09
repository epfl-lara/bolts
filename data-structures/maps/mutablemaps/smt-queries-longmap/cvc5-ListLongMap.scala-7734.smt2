; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97168 () Bool)

(assert start!97168)

(declare-fun b!1104800 () Bool)

(declare-fun res!737219 () Bool)

(declare-fun e!630639 () Bool)

(assert (=> b!1104800 (=> (not res!737219) (not e!630639))))

(declare-datatypes ((array!71632 0))(
  ( (array!71633 (arr!34466 (Array (_ BitVec 32) (_ BitVec 64))) (size!35003 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71632)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41633 0))(
  ( (V!41634 (val!13746 Int)) )
))
(declare-datatypes ((ValueCell!12980 0))(
  ( (ValueCellFull!12980 (v!16380 V!41633)) (EmptyCell!12980) )
))
(declare-datatypes ((array!71634 0))(
  ( (array!71635 (arr!34467 (Array (_ BitVec 32) ValueCell!12980)) (size!35004 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71634)

(assert (=> b!1104800 (= res!737219 (and (= (size!35004 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35003 _keys!1208) (size!35004 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104801 () Bool)

(declare-fun res!737221 () Bool)

(assert (=> b!1104801 (=> (not res!737221) (not e!630639))))

(declare-datatypes ((List!24185 0))(
  ( (Nil!24182) (Cons!24181 (h!25390 (_ BitVec 64)) (t!34457 List!24185)) )
))
(declare-fun arrayNoDuplicates!0 (array!71632 (_ BitVec 32) List!24185) Bool)

(assert (=> b!1104801 (= res!737221 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24182))))

(declare-fun b!1104802 () Bool)

(declare-fun res!737214 () Bool)

(assert (=> b!1104802 (=> (not res!737214) (not e!630639))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104802 (= res!737214 (validKeyInArray!0 k!934))))

(declare-fun b!1104803 () Bool)

(declare-fun res!737220 () Bool)

(assert (=> b!1104803 (=> (not res!737220) (not e!630639))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1104803 (= res!737220 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35003 _keys!1208))))))

(declare-fun b!1104804 () Bool)

(declare-fun e!630640 () Bool)

(assert (=> b!1104804 (= e!630640 (not true))))

(declare-fun arrayContainsKey!0 (array!71632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104804 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36185 0))(
  ( (Unit!36186) )
))
(declare-fun lt!495185 () Unit!36185)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71632 (_ BitVec 64) (_ BitVec 32)) Unit!36185)

(assert (=> b!1104804 (= lt!495185 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1104805 () Bool)

(declare-fun res!737218 () Bool)

(assert (=> b!1104805 (=> (not res!737218) (not e!630639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104805 (= res!737218 (validMask!0 mask!1564))))

(declare-fun b!1104806 () Bool)

(declare-fun e!630638 () Bool)

(declare-fun e!630641 () Bool)

(declare-fun mapRes!42883 () Bool)

(assert (=> b!1104806 (= e!630638 (and e!630641 mapRes!42883))))

(declare-fun condMapEmpty!42883 () Bool)

(declare-fun mapDefault!42883 () ValueCell!12980)

