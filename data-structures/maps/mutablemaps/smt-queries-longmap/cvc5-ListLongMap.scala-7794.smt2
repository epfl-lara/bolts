; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97544 () Bool)

(assert start!97544)

(declare-fun b!1113118 () Bool)

(declare-fun res!742964 () Bool)

(declare-fun e!634601 () Bool)

(assert (=> b!1113118 (=> (not res!742964) (not e!634601))))

(declare-datatypes ((array!72334 0))(
  ( (array!72335 (arr!34816 (Array (_ BitVec 32) (_ BitVec 64))) (size!35353 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72334)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42113 0))(
  ( (V!42114 (val!13926 Int)) )
))
(declare-datatypes ((ValueCell!13160 0))(
  ( (ValueCellFull!13160 (v!16560 V!42113)) (EmptyCell!13160) )
))
(declare-datatypes ((array!72336 0))(
  ( (array!72337 (arr!34817 (Array (_ BitVec 32) ValueCell!13160)) (size!35354 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72336)

(assert (=> b!1113118 (= res!742964 (and (= (size!35354 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35353 _keys!1208) (size!35354 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113119 () Bool)

(declare-fun res!742963 () Bool)

(declare-fun e!634596 () Bool)

(assert (=> b!1113119 (=> (not res!742963) (not e!634596))))

(declare-fun lt!496604 () array!72334)

(declare-datatypes ((List!24413 0))(
  ( (Nil!24410) (Cons!24409 (h!25618 (_ BitVec 64)) (t!34901 List!24413)) )
))
(declare-fun arrayNoDuplicates!0 (array!72334 (_ BitVec 32) List!24413) Bool)

(assert (=> b!1113119 (= res!742963 (arrayNoDuplicates!0 lt!496604 #b00000000000000000000000000000000 Nil!24410))))

(declare-fun b!1113120 () Bool)

(declare-fun res!742971 () Bool)

(assert (=> b!1113120 (=> (not res!742971) (not e!634601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72334 (_ BitVec 32)) Bool)

(assert (=> b!1113120 (= res!742971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113121 () Bool)

(declare-fun e!634597 () Bool)

(declare-fun tp_is_empty!27739 () Bool)

(assert (=> b!1113121 (= e!634597 tp_is_empty!27739)))

(declare-fun b!1113122 () Bool)

(declare-fun res!742962 () Bool)

(assert (=> b!1113122 (=> (not res!742962) (not e!634601))))

(assert (=> b!1113122 (= res!742962 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24410))))

(declare-fun b!1113123 () Bool)

(declare-fun e!634599 () Bool)

(declare-fun e!634598 () Bool)

(declare-fun mapRes!43426 () Bool)

(assert (=> b!1113123 (= e!634599 (and e!634598 mapRes!43426))))

(declare-fun condMapEmpty!43426 () Bool)

(declare-fun mapDefault!43426 () ValueCell!13160)

