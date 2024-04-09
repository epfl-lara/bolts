; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37474 () Bool)

(assert start!37474)

(declare-fun b_free!8593 () Bool)

(declare-fun b_next!8593 () Bool)

(assert (=> start!37474 (= b_free!8593 (not b_next!8593))))

(declare-fun tp!30495 () Bool)

(declare-fun b_and!15853 () Bool)

(assert (=> start!37474 (= tp!30495 b_and!15853)))

(declare-fun b!381535 () Bool)

(declare-fun res!216931 () Bool)

(declare-fun e!231943 () Bool)

(assert (=> b!381535 (=> (not res!216931) (not e!231943))))

(declare-datatypes ((array!22373 0))(
  ( (array!22374 (arr!10652 (Array (_ BitVec 32) (_ BitVec 64))) (size!11004 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22373)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22373 (_ BitVec 32)) Bool)

(assert (=> b!381535 (= res!216931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!381536 () Bool)

(declare-fun res!216924 () Bool)

(assert (=> b!381536 (=> (not res!216924) (not e!231943))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381536 (= res!216924 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!381537 () Bool)

(declare-fun res!216922 () Bool)

(assert (=> b!381537 (=> (not res!216922) (not e!231943))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381537 (= res!216922 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11004 _keys!658))))))

(declare-fun b!381538 () Bool)

(declare-fun e!231945 () Bool)

(declare-fun tp_is_empty!9241 () Bool)

(assert (=> b!381538 (= e!231945 tp_is_empty!9241)))

(declare-fun mapIsEmpty!15426 () Bool)

(declare-fun mapRes!15426 () Bool)

(assert (=> mapIsEmpty!15426 mapRes!15426))

(declare-fun b!381539 () Bool)

(declare-fun e!231940 () Bool)

(declare-fun e!231939 () Bool)

(assert (=> b!381539 (= e!231940 (and e!231939 mapRes!15426))))

(declare-fun condMapEmpty!15426 () Bool)

(declare-datatypes ((V!13427 0))(
  ( (V!13428 (val!4665 Int)) )
))
(declare-datatypes ((ValueCell!4277 0))(
  ( (ValueCellFull!4277 (v!6858 V!13427)) (EmptyCell!4277) )
))
(declare-datatypes ((array!22375 0))(
  ( (array!22376 (arr!10653 (Array (_ BitVec 32) ValueCell!4277)) (size!11005 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22375)

(declare-fun mapDefault!15426 () ValueCell!4277)

