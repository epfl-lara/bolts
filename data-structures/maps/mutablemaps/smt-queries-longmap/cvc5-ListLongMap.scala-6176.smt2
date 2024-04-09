; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79192 () Bool)

(assert start!79192)

(declare-fun b_free!17377 () Bool)

(declare-fun b_next!17377 () Bool)

(assert (=> start!79192 (= b_free!17377 (not b_next!17377))))

(declare-fun tp!60572 () Bool)

(declare-fun b_and!28461 () Bool)

(assert (=> start!79192 (= tp!60572 b_and!28461)))

(declare-fun b!929093 () Bool)

(declare-fun e!521765 () Bool)

(declare-fun e!521769 () Bool)

(declare-fun mapRes!31584 () Bool)

(assert (=> b!929093 (= e!521765 (and e!521769 mapRes!31584))))

(declare-fun condMapEmpty!31584 () Bool)

(declare-datatypes ((V!31479 0))(
  ( (V!31480 (val!9993 Int)) )
))
(declare-datatypes ((ValueCell!9461 0))(
  ( (ValueCellFull!9461 (v!12511 V!31479)) (EmptyCell!9461) )
))
(declare-datatypes ((array!55744 0))(
  ( (array!55745 (arr!26813 (Array (_ BitVec 32) ValueCell!9461)) (size!27273 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55744)

(declare-fun mapDefault!31584 () ValueCell!9461)

