; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41180 () Bool)

(assert start!41180)

(declare-fun b_free!11041 () Bool)

(declare-fun b_next!11041 () Bool)

(assert (=> start!41180 (= b_free!11041 (not b_next!11041))))

(declare-fun tp!38958 () Bool)

(declare-fun b_and!19339 () Bool)

(assert (=> start!41180 (= tp!38958 b_and!19339)))

(declare-fun b!459866 () Bool)

(declare-fun e!268341 () Bool)

(declare-fun tp_is_empty!12379 () Bool)

(assert (=> b!459866 (= e!268341 tp_is_empty!12379)))

(declare-fun b!459868 () Bool)

(declare-fun e!268342 () Bool)

(declare-fun e!268339 () Bool)

(declare-fun mapRes!20218 () Bool)

(assert (=> b!459868 (= e!268342 (and e!268339 mapRes!20218))))

(declare-fun condMapEmpty!20218 () Bool)

(declare-datatypes ((V!17611 0))(
  ( (V!17612 (val!6234 Int)) )
))
(declare-datatypes ((ValueCell!5846 0))(
  ( (ValueCellFull!5846 (v!8508 V!17611)) (EmptyCell!5846) )
))
(declare-datatypes ((array!28521 0))(
  ( (array!28522 (arr!13698 (Array (_ BitVec 32) ValueCell!5846)) (size!14050 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28521)

(declare-fun mapDefault!20218 () ValueCell!5846)

