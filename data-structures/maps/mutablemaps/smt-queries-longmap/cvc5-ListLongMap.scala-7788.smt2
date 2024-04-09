; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97508 () Bool)

(assert start!97508)

(declare-fun b!1112416 () Bool)

(declare-fun e!634277 () Bool)

(declare-fun e!634275 () Bool)

(declare-fun mapRes!43372 () Bool)

(assert (=> b!1112416 (= e!634277 (and e!634275 mapRes!43372))))

(declare-fun condMapEmpty!43372 () Bool)

(declare-datatypes ((V!42065 0))(
  ( (V!42066 (val!13908 Int)) )
))
(declare-datatypes ((ValueCell!13142 0))(
  ( (ValueCellFull!13142 (v!16542 V!42065)) (EmptyCell!13142) )
))
(declare-datatypes ((array!72264 0))(
  ( (array!72265 (arr!34781 (Array (_ BitVec 32) ValueCell!13142)) (size!35318 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72264)

(declare-fun mapDefault!43372 () ValueCell!13142)

