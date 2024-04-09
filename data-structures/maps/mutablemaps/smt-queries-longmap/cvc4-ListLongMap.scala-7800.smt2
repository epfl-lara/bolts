; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97584 () Bool)

(assert start!97584)

(declare-fun b!1113898 () Bool)

(declare-fun e!634958 () Bool)

(declare-fun e!634956 () Bool)

(declare-fun mapRes!43486 () Bool)

(assert (=> b!1113898 (= e!634958 (and e!634956 mapRes!43486))))

(declare-fun condMapEmpty!43486 () Bool)

(declare-datatypes ((V!42165 0))(
  ( (V!42166 (val!13946 Int)) )
))
(declare-datatypes ((ValueCell!13180 0))(
  ( (ValueCellFull!13180 (v!16580 V!42165)) (EmptyCell!13180) )
))
(declare-datatypes ((array!72410 0))(
  ( (array!72411 (arr!34854 (Array (_ BitVec 32) ValueCell!13180)) (size!35391 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72410)

(declare-fun mapDefault!43486 () ValueCell!13180)

