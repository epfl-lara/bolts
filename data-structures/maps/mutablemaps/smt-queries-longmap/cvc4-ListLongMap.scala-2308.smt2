; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37322 () Bool)

(assert start!37322)

(declare-fun b_free!8441 () Bool)

(declare-fun b_next!8441 () Bool)

(assert (=> start!37322 (= b_free!8441 (not b_next!8441))))

(declare-fun tp!30039 () Bool)

(declare-fun b_and!15701 () Bool)

(assert (=> start!37322 (= tp!30039 b_and!15701)))

(declare-fun mapIsEmpty!15198 () Bool)

(declare-fun mapRes!15198 () Bool)

(assert (=> mapIsEmpty!15198 mapRes!15198))

(declare-fun b!378179 () Bool)

(declare-fun e!230186 () Bool)

(declare-fun tp_is_empty!9089 () Bool)

(assert (=> b!378179 (= e!230186 tp_is_empty!9089)))

(declare-fun b!378180 () Bool)

(declare-fun res!214261 () Bool)

(declare-fun e!230185 () Bool)

(assert (=> b!378180 (=> (not res!214261) (not e!230185))))

(declare-datatypes ((array!22075 0))(
  ( (array!22076 (arr!10503 (Array (_ BitVec 32) (_ BitVec 64))) (size!10855 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22075)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22075 (_ BitVec 32)) Bool)

(assert (=> b!378180 (= res!214261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!214262 () Bool)

(assert (=> start!37322 (=> (not res!214262) (not e!230185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37322 (= res!214262 (validMask!0 mask!970))))

(assert (=> start!37322 e!230185))

(declare-datatypes ((V!13223 0))(
  ( (V!13224 (val!4589 Int)) )
))
(declare-datatypes ((ValueCell!4201 0))(
  ( (ValueCellFull!4201 (v!6782 V!13223)) (EmptyCell!4201) )
))
(declare-datatypes ((array!22077 0))(
  ( (array!22078 (arr!10504 (Array (_ BitVec 32) ValueCell!4201)) (size!10856 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22077)

(declare-fun e!230181 () Bool)

(declare-fun array_inv!7728 (array!22077) Bool)

(assert (=> start!37322 (and (array_inv!7728 _values!506) e!230181)))

(assert (=> start!37322 tp!30039))

(assert (=> start!37322 true))

(assert (=> start!37322 tp_is_empty!9089))

(declare-fun array_inv!7729 (array!22075) Bool)

(assert (=> start!37322 (array_inv!7729 _keys!658)))

(declare-fun b!378181 () Bool)

(declare-fun res!214253 () Bool)

(assert (=> b!378181 (=> (not res!214253) (not e!230185))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378181 (= res!214253 (or (= (select (arr!10503 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10503 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378182 () Bool)

(assert (=> b!378182 (= e!230181 (and e!230186 mapRes!15198))))

(declare-fun condMapEmpty!15198 () Bool)

(declare-fun mapDefault!15198 () ValueCell!4201)

