; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37586 () Bool)

(assert start!37586)

(declare-fun b_free!8705 () Bool)

(declare-fun b_next!8705 () Bool)

(assert (=> start!37586 (= b_free!8705 (not b_next!8705))))

(declare-fun tp!30831 () Bool)

(declare-fun b_and!15965 () Bool)

(assert (=> start!37586 (= tp!30831 b_and!15965)))

(declare-fun b!383887 () Bool)

(declare-fun e!233119 () Bool)

(declare-fun e!233120 () Bool)

(declare-fun mapRes!15594 () Bool)

(assert (=> b!383887 (= e!233119 (and e!233120 mapRes!15594))))

(declare-fun condMapEmpty!15594 () Bool)

(declare-datatypes ((V!13575 0))(
  ( (V!13576 (val!4721 Int)) )
))
(declare-datatypes ((ValueCell!4333 0))(
  ( (ValueCellFull!4333 (v!6914 V!13575)) (EmptyCell!4333) )
))
(declare-datatypes ((array!22597 0))(
  ( (array!22598 (arr!10764 (Array (_ BitVec 32) ValueCell!4333)) (size!11116 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22597)

(declare-fun mapDefault!15594 () ValueCell!4333)

