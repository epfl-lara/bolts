; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97530 () Bool)

(assert start!97530)

(declare-fun b!1112845 () Bool)

(declare-fun res!742758 () Bool)

(declare-fun e!634471 () Bool)

(assert (=> b!1112845 (=> (not res!742758) (not e!634471))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72306 0))(
  ( (array!72307 (arr!34802 (Array (_ BitVec 32) (_ BitVec 64))) (size!35339 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72306)

(assert (=> b!1112845 (= res!742758 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35339 _keys!1208))))))

(declare-fun b!1112846 () Bool)

(declare-fun e!634470 () Bool)

(declare-fun e!634472 () Bool)

(declare-fun mapRes!43405 () Bool)

(assert (=> b!1112846 (= e!634470 (and e!634472 mapRes!43405))))

(declare-fun condMapEmpty!43405 () Bool)

(declare-datatypes ((V!42093 0))(
  ( (V!42094 (val!13919 Int)) )
))
(declare-datatypes ((ValueCell!13153 0))(
  ( (ValueCellFull!13153 (v!16553 V!42093)) (EmptyCell!13153) )
))
(declare-datatypes ((array!72308 0))(
  ( (array!72309 (arr!34803 (Array (_ BitVec 32) ValueCell!13153)) (size!35340 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72308)

(declare-fun mapDefault!43405 () ValueCell!13153)

