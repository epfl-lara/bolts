; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97556 () Bool)

(assert start!97556)

(declare-fun b!1113352 () Bool)

(declare-fun e!634706 () Bool)

(declare-fun e!634704 () Bool)

(declare-fun mapRes!43444 () Bool)

(assert (=> b!1113352 (= e!634706 (and e!634704 mapRes!43444))))

(declare-fun condMapEmpty!43444 () Bool)

(declare-datatypes ((V!42129 0))(
  ( (V!42130 (val!13932 Int)) )
))
(declare-datatypes ((ValueCell!13166 0))(
  ( (ValueCellFull!13166 (v!16566 V!42129)) (EmptyCell!13166) )
))
(declare-datatypes ((array!72358 0))(
  ( (array!72359 (arr!34828 (Array (_ BitVec 32) ValueCell!13166)) (size!35365 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72358)

(declare-fun mapDefault!43444 () ValueCell!13166)

