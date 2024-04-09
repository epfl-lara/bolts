; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97586 () Bool)

(assert start!97586)

(declare-fun b!1113937 () Bool)

(declare-fun e!634974 () Bool)

(declare-fun e!634979 () Bool)

(declare-fun mapRes!43489 () Bool)

(assert (=> b!1113937 (= e!634974 (and e!634979 mapRes!43489))))

(declare-fun condMapEmpty!43489 () Bool)

(declare-datatypes ((V!42169 0))(
  ( (V!42170 (val!13947 Int)) )
))
(declare-datatypes ((ValueCell!13181 0))(
  ( (ValueCellFull!13181 (v!16581 V!42169)) (EmptyCell!13181) )
))
(declare-datatypes ((array!72412 0))(
  ( (array!72413 (arr!34855 (Array (_ BitVec 32) ValueCell!13181)) (size!35392 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72412)

(declare-fun mapDefault!43489 () ValueCell!13181)

