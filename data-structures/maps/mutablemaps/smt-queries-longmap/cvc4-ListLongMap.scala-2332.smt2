; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37466 () Bool)

(assert start!37466)

(declare-fun b_free!8585 () Bool)

(declare-fun b_next!8585 () Bool)

(assert (=> start!37466 (= b_free!8585 (not b_next!8585))))

(declare-fun tp!30471 () Bool)

(declare-fun b_and!15845 () Bool)

(assert (=> start!37466 (= tp!30471 b_and!15845)))

(declare-fun b!381367 () Bool)

(declare-fun e!231858 () Bool)

(declare-fun e!231859 () Bool)

(declare-fun mapRes!15414 () Bool)

(assert (=> b!381367 (= e!231858 (and e!231859 mapRes!15414))))

(declare-fun condMapEmpty!15414 () Bool)

(declare-datatypes ((V!13415 0))(
  ( (V!13416 (val!4661 Int)) )
))
(declare-datatypes ((ValueCell!4273 0))(
  ( (ValueCellFull!4273 (v!6854 V!13415)) (EmptyCell!4273) )
))
(declare-datatypes ((array!22359 0))(
  ( (array!22360 (arr!10645 (Array (_ BitVec 32) ValueCell!4273)) (size!10997 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22359)

(declare-fun mapDefault!15414 () ValueCell!4273)

