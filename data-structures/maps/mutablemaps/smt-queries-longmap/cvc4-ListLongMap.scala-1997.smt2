; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34922 () Bool)

(assert start!34922)

(declare-fun b_free!7655 () Bool)

(declare-fun b_next!7655 () Bool)

(assert (=> start!34922 (= b_free!7655 (not b_next!7655))))

(declare-fun tp!26538 () Bool)

(declare-fun b_and!14899 () Bool)

(assert (=> start!34922 (= tp!26538 b_and!14899)))

(declare-fun b!349461 () Bool)

(declare-fun e!214081 () Bool)

(declare-fun e!214080 () Bool)

(declare-fun mapRes!12876 () Bool)

(assert (=> b!349461 (= e!214081 (and e!214080 mapRes!12876))))

(declare-fun condMapEmpty!12876 () Bool)

(declare-datatypes ((V!11119 0))(
  ( (V!11120 (val!3848 Int)) )
))
(declare-datatypes ((ValueCell!3460 0))(
  ( (ValueCellFull!3460 (v!6029 V!11119)) (EmptyCell!3460) )
))
(declare-datatypes ((array!18769 0))(
  ( (array!18770 (arr!8889 (Array (_ BitVec 32) ValueCell!3460)) (size!9241 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18769)

(declare-fun mapDefault!12876 () ValueCell!3460)

