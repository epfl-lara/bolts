; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37426 () Bool)

(assert start!37426)

(declare-fun b_free!8545 () Bool)

(declare-fun b_next!8545 () Bool)

(assert (=> start!37426 (= b_free!8545 (not b_next!8545))))

(declare-fun tp!30350 () Bool)

(declare-fun b_and!15805 () Bool)

(assert (=> start!37426 (= tp!30350 b_and!15805)))

(declare-fun b!380520 () Bool)

(declare-fun e!231432 () Bool)

(declare-fun e!231431 () Bool)

(declare-fun mapRes!15354 () Bool)

(assert (=> b!380520 (= e!231432 (and e!231431 mapRes!15354))))

(declare-fun condMapEmpty!15354 () Bool)

(declare-datatypes ((V!13363 0))(
  ( (V!13364 (val!4641 Int)) )
))
(declare-datatypes ((ValueCell!4253 0))(
  ( (ValueCellFull!4253 (v!6834 V!13363)) (EmptyCell!4253) )
))
(declare-datatypes ((array!22283 0))(
  ( (array!22284 (arr!10607 (Array (_ BitVec 32) ValueCell!4253)) (size!10959 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22283)

(declare-fun mapDefault!15354 () ValueCell!4253)

