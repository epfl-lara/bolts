; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37432 () Bool)

(assert start!37432)

(declare-fun b_free!8551 () Bool)

(declare-fun b_next!8551 () Bool)

(assert (=> start!37432 (= b_free!8551 (not b_next!8551))))

(declare-fun tp!30369 () Bool)

(declare-fun b_and!15811 () Bool)

(assert (=> start!37432 (= tp!30369 b_and!15811)))

(declare-fun b!380653 () Bool)

(declare-fun e!231500 () Bool)

(declare-fun tp_is_empty!9199 () Bool)

(assert (=> b!380653 (= e!231500 tp_is_empty!9199)))

(declare-fun b!380654 () Bool)

(declare-fun res!216234 () Bool)

(declare-fun e!231501 () Bool)

(assert (=> b!380654 (=> (not res!216234) (not e!231501))))

(declare-datatypes ((array!22293 0))(
  ( (array!22294 (arr!10612 (Array (_ BitVec 32) (_ BitVec 64))) (size!10964 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22293)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22293 (_ BitVec 32)) Bool)

(assert (=> b!380654 (= res!216234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380655 () Bool)

(declare-fun e!231504 () Bool)

(declare-fun mapRes!15363 () Bool)

(assert (=> b!380655 (= e!231504 (and e!231500 mapRes!15363))))

(declare-fun condMapEmpty!15363 () Bool)

(declare-datatypes ((V!13371 0))(
  ( (V!13372 (val!4644 Int)) )
))
(declare-datatypes ((ValueCell!4256 0))(
  ( (ValueCellFull!4256 (v!6837 V!13371)) (EmptyCell!4256) )
))
(declare-datatypes ((array!22295 0))(
  ( (array!22296 (arr!10613 (Array (_ BitVec 32) ValueCell!4256)) (size!10965 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22295)

(declare-fun mapDefault!15363 () ValueCell!4256)

