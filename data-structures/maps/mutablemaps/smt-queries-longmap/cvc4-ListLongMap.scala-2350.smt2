; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37574 () Bool)

(assert start!37574)

(declare-fun b_free!8693 () Bool)

(declare-fun b_next!8693 () Bool)

(assert (=> start!37574 (= b_free!8693 (not b_next!8693))))

(declare-fun tp!30795 () Bool)

(declare-fun b_and!15953 () Bool)

(assert (=> start!37574 (= tp!30795 b_and!15953)))

(declare-fun b!383635 () Bool)

(declare-fun e!232990 () Bool)

(declare-fun e!232992 () Bool)

(assert (=> b!383635 (= e!232990 e!232992)))

(declare-fun res!218578 () Bool)

(assert (=> b!383635 (=> (not res!218578) (not e!232992))))

(declare-datatypes ((array!22573 0))(
  ( (array!22574 (arr!10752 (Array (_ BitVec 32) (_ BitVec 64))) (size!11104 (_ BitVec 32))) )
))
(declare-fun lt!180386 () array!22573)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22573 (_ BitVec 32)) Bool)

(assert (=> b!383635 (= res!218578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180386 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!22573)

(assert (=> b!383635 (= lt!180386 (array!22574 (store (arr!10752 _keys!658) i!548 k!778) (size!11104 _keys!658)))))

(declare-fun b!383636 () Bool)

(declare-fun e!232995 () Bool)

(declare-fun e!232991 () Bool)

(declare-fun mapRes!15576 () Bool)

(assert (=> b!383636 (= e!232995 (and e!232991 mapRes!15576))))

(declare-fun condMapEmpty!15576 () Bool)

(declare-datatypes ((V!13559 0))(
  ( (V!13560 (val!4715 Int)) )
))
(declare-datatypes ((ValueCell!4327 0))(
  ( (ValueCellFull!4327 (v!6908 V!13559)) (EmptyCell!4327) )
))
(declare-datatypes ((array!22575 0))(
  ( (array!22576 (arr!10753 (Array (_ BitVec 32) ValueCell!4327)) (size!11105 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22575)

(declare-fun mapDefault!15576 () ValueCell!4327)

