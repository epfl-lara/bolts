; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108862 () Bool)

(assert start!108862)

(declare-fun b_free!28339 () Bool)

(declare-fun b_next!28339 () Bool)

(assert (=> start!108862 (= b_free!28339 (not b_next!28339))))

(declare-fun tp!100133 () Bool)

(declare-fun b_and!46415 () Bool)

(assert (=> start!108862 (= tp!100133 b_and!46415)))

(declare-fun b!1285101 () Bool)

(declare-fun e!734076 () Bool)

(declare-fun tp_is_empty!33979 () Bool)

(assert (=> b!1285101 (= e!734076 tp_is_empty!33979)))

(declare-fun b!1285102 () Bool)

(declare-fun e!734077 () Bool)

(declare-fun e!734079 () Bool)

(declare-fun mapRes!52526 () Bool)

(assert (=> b!1285102 (= e!734077 (and e!734079 mapRes!52526))))

(declare-fun condMapEmpty!52526 () Bool)

(declare-datatypes ((V!50409 0))(
  ( (V!50410 (val!17064 Int)) )
))
(declare-datatypes ((ValueCell!16091 0))(
  ( (ValueCellFull!16091 (v!19664 V!50409)) (EmptyCell!16091) )
))
(declare-datatypes ((array!84971 0))(
  ( (array!84972 (arr!40983 (Array (_ BitVec 32) ValueCell!16091)) (size!41534 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84971)

(declare-fun mapDefault!52526 () ValueCell!16091)

