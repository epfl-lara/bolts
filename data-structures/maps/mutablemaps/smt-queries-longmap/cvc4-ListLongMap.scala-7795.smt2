; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97554 () Bool)

(assert start!97554)

(declare-fun b!1113313 () Bool)

(declare-fun e!634686 () Bool)

(declare-fun e!634690 () Bool)

(assert (=> b!1113313 (= e!634686 e!634690)))

(declare-fun res!743116 () Bool)

(assert (=> b!1113313 (=> (not res!743116) (not e!634690))))

(declare-datatypes ((array!72354 0))(
  ( (array!72355 (arr!34826 (Array (_ BitVec 32) (_ BitVec 64))) (size!35363 (_ BitVec 32))) )
))
(declare-fun lt!496635 () array!72354)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72354 (_ BitVec 32)) Bool)

(assert (=> b!1113313 (= res!743116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496635 mask!1564))))

(declare-fun _keys!1208 () array!72354)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1113313 (= lt!496635 (array!72355 (store (arr!34826 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35363 _keys!1208)))))

(declare-fun mapNonEmpty!43441 () Bool)

(declare-fun mapRes!43441 () Bool)

(declare-fun tp!82686 () Bool)

(declare-fun e!634688 () Bool)

(assert (=> mapNonEmpty!43441 (= mapRes!43441 (and tp!82686 e!634688))))

(declare-fun mapKey!43441 () (_ BitVec 32))

(declare-datatypes ((V!42125 0))(
  ( (V!42126 (val!13931 Int)) )
))
(declare-datatypes ((ValueCell!13165 0))(
  ( (ValueCellFull!13165 (v!16565 V!42125)) (EmptyCell!13165) )
))
(declare-fun mapRest!43441 () (Array (_ BitVec 32) ValueCell!13165))

(declare-fun mapValue!43441 () ValueCell!13165)

(declare-datatypes ((array!72356 0))(
  ( (array!72357 (arr!34827 (Array (_ BitVec 32) ValueCell!13165)) (size!35364 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72356)

(assert (=> mapNonEmpty!43441 (= (arr!34827 _values!996) (store mapRest!43441 mapKey!43441 mapValue!43441))))

(declare-fun b!1113314 () Bool)

(assert (=> b!1113314 (= e!634690 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113314 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36447 0))(
  ( (Unit!36448) )
))
(declare-fun lt!496634 () Unit!36447)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72354 (_ BitVec 64) (_ BitVec 32)) Unit!36447)

(assert (=> b!1113314 (= lt!496634 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1113315 () Bool)

(declare-fun res!743121 () Bool)

(assert (=> b!1113315 (=> (not res!743121) (not e!634690))))

(declare-datatypes ((List!24417 0))(
  ( (Nil!24414) (Cons!24413 (h!25622 (_ BitVec 64)) (t!34905 List!24417)) )
))
(declare-fun arrayNoDuplicates!0 (array!72354 (_ BitVec 32) List!24417) Bool)

(assert (=> b!1113315 (= res!743121 (arrayNoDuplicates!0 lt!496635 #b00000000000000000000000000000000 Nil!24414))))

(declare-fun b!1113316 () Bool)

(declare-fun res!743119 () Bool)

(assert (=> b!1113316 (=> (not res!743119) (not e!634686))))

(assert (=> b!1113316 (= res!743119 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24414))))

(declare-fun b!1113317 () Bool)

(declare-fun e!634687 () Bool)

(declare-fun e!634689 () Bool)

(assert (=> b!1113317 (= e!634687 (and e!634689 mapRes!43441))))

(declare-fun condMapEmpty!43441 () Bool)

(declare-fun mapDefault!43441 () ValueCell!13165)

