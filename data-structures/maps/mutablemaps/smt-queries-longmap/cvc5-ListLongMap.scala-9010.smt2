; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108856 () Bool)

(assert start!108856)

(declare-fun b_free!28333 () Bool)

(declare-fun b_next!28333 () Bool)

(assert (=> start!108856 (= b_free!28333 (not b_next!28333))))

(declare-fun tp!100116 () Bool)

(declare-fun b_and!46409 () Bool)

(assert (=> start!108856 (= tp!100116 b_and!46409)))

(declare-fun mapIsEmpty!52517 () Bool)

(declare-fun mapRes!52517 () Bool)

(assert (=> mapIsEmpty!52517 mapRes!52517))

(declare-fun b!1285029 () Bool)

(declare-fun e!734034 () Bool)

(declare-fun e!734035 () Bool)

(assert (=> b!1285029 (= e!734034 (and e!734035 mapRes!52517))))

(declare-fun condMapEmpty!52517 () Bool)

(declare-datatypes ((V!50401 0))(
  ( (V!50402 (val!17061 Int)) )
))
(declare-datatypes ((ValueCell!16088 0))(
  ( (ValueCellFull!16088 (v!19661 V!50401)) (EmptyCell!16088) )
))
(declare-datatypes ((array!84961 0))(
  ( (array!84962 (arr!40978 (Array (_ BitVec 32) ValueCell!16088)) (size!41529 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84961)

(declare-fun mapDefault!52517 () ValueCell!16088)

