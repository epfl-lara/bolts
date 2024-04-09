; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97776 () Bool)

(assert start!97776)

(declare-fun b_free!23441 () Bool)

(declare-fun b_next!23441 () Bool)

(assert (=> start!97776 (= b_free!23441 (not b_next!23441))))

(declare-fun tp!83028 () Bool)

(declare-fun b_and!37737 () Bool)

(assert (=> start!97776 (= tp!83028 b_and!37737)))

(declare-fun b!1117650 () Bool)

(declare-fun e!636698 () Bool)

(declare-fun e!636697 () Bool)

(declare-fun mapRes!43774 () Bool)

(assert (=> b!1117650 (= e!636698 (and e!636697 mapRes!43774))))

(declare-fun condMapEmpty!43774 () Bool)

(declare-datatypes ((V!42421 0))(
  ( (V!42422 (val!14042 Int)) )
))
(declare-datatypes ((ValueCell!13276 0))(
  ( (ValueCellFull!13276 (v!16676 V!42421)) (EmptyCell!13276) )
))
(declare-datatypes ((array!72776 0))(
  ( (array!72777 (arr!35037 (Array (_ BitVec 32) ValueCell!13276)) (size!35574 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72776)

(declare-fun mapDefault!43774 () ValueCell!13276)

