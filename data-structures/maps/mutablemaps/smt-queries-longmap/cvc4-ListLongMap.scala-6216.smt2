; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79462 () Bool)

(assert start!79462)

(declare-fun b_free!17621 () Bool)

(declare-fun b_next!17621 () Bool)

(assert (=> start!79462 (= b_free!17621 (not b_next!17621))))

(declare-fun tp!61307 () Bool)

(declare-fun b_and!28819 () Bool)

(assert (=> start!79462 (= tp!61307 b_and!28819)))

(declare-fun b!933566 () Bool)

(declare-fun e!524231 () Bool)

(declare-fun e!524237 () Bool)

(declare-fun mapRes!31953 () Bool)

(assert (=> b!933566 (= e!524231 (and e!524237 mapRes!31953))))

(declare-fun condMapEmpty!31953 () Bool)

(declare-datatypes ((V!31803 0))(
  ( (V!31804 (val!10115 Int)) )
))
(declare-datatypes ((ValueCell!9583 0))(
  ( (ValueCellFull!9583 (v!12634 V!31803)) (EmptyCell!9583) )
))
(declare-datatypes ((array!56218 0))(
  ( (array!56219 (arr!27049 (Array (_ BitVec 32) ValueCell!9583)) (size!27509 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56218)

(declare-fun mapDefault!31953 () ValueCell!9583)

