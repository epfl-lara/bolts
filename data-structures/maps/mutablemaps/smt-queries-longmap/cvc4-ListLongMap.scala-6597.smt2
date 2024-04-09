; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83498 () Bool)

(assert start!83498)

(declare-fun b_free!19457 () Bool)

(declare-fun b_next!19457 () Bool)

(assert (=> start!83498 (= b_free!19457 (not b_next!19457))))

(declare-fun tp!67659 () Bool)

(declare-fun b_and!31077 () Bool)

(assert (=> start!83498 (= tp!67659 b_and!31077)))

(declare-fun b!974857 () Bool)

(declare-fun e!549483 () Bool)

(declare-fun tp_is_empty!22361 () Bool)

(assert (=> b!974857 (= e!549483 tp_is_empty!22361)))

(declare-fun b!974858 () Bool)

(declare-fun e!549480 () Bool)

(declare-fun mapRes!35551 () Bool)

(assert (=> b!974858 (= e!549480 (and e!549483 mapRes!35551))))

(declare-fun condMapEmpty!35551 () Bool)

(declare-datatypes ((V!34797 0))(
  ( (V!34798 (val!11231 Int)) )
))
(declare-datatypes ((ValueCell!10699 0))(
  ( (ValueCellFull!10699 (v!13790 V!34797)) (EmptyCell!10699) )
))
(declare-datatypes ((array!60739 0))(
  ( (array!60740 (arr!29229 (Array (_ BitVec 32) ValueCell!10699)) (size!29709 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60739)

(declare-fun mapDefault!35551 () ValueCell!10699)

