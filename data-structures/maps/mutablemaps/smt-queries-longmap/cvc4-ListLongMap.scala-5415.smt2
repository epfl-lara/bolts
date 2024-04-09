; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72306 () Bool)

(assert start!72306)

(declare-fun b!837290 () Bool)

(declare-fun e!467330 () Bool)

(declare-fun e!467328 () Bool)

(declare-fun mapRes!24593 () Bool)

(assert (=> b!837290 (= e!467330 (and e!467328 mapRes!24593))))

(declare-fun condMapEmpty!24593 () Bool)

(declare-datatypes ((V!25485 0))(
  ( (V!25486 (val!7712 Int)) )
))
(declare-datatypes ((ValueCell!7225 0))(
  ( (ValueCellFull!7225 (v!10133 V!25485)) (EmptyCell!7225) )
))
(declare-datatypes ((array!46924 0))(
  ( (array!46925 (arr!22489 (Array (_ BitVec 32) ValueCell!7225)) (size!22930 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46924)

(declare-fun mapDefault!24593 () ValueCell!7225)

