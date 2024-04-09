; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37442 () Bool)

(assert start!37442)

(declare-fun b_free!8561 () Bool)

(declare-fun b_next!8561 () Bool)

(assert (=> start!37442 (= b_free!8561 (not b_next!8561))))

(declare-fun tp!30399 () Bool)

(declare-fun b_and!15821 () Bool)

(assert (=> start!37442 (= tp!30399 b_and!15821)))

(declare-fun b!380863 () Bool)

(declare-fun res!216399 () Bool)

(declare-fun e!231605 () Bool)

(assert (=> b!380863 (=> (not res!216399) (not e!231605))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380863 (= res!216399 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!15378 () Bool)

(declare-fun mapRes!15378 () Bool)

(assert (=> mapIsEmpty!15378 mapRes!15378))

(declare-fun b!380864 () Bool)

(declare-fun res!216398 () Bool)

(assert (=> b!380864 (=> (not res!216398) (not e!231605))))

(declare-datatypes ((array!22311 0))(
  ( (array!22312 (arr!10621 (Array (_ BitVec 32) (_ BitVec 64))) (size!10973 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22311)

(declare-datatypes ((List!6067 0))(
  ( (Nil!6064) (Cons!6063 (h!6919 (_ BitVec 64)) (t!11225 List!6067)) )
))
(declare-fun arrayNoDuplicates!0 (array!22311 (_ BitVec 32) List!6067) Bool)

(assert (=> b!380864 (= res!216398 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6064))))

(declare-fun b!380865 () Bool)

(declare-fun e!231608 () Bool)

(declare-fun tp_is_empty!9209 () Bool)

(assert (=> b!380865 (= e!231608 tp_is_empty!9209)))

(declare-fun b!380866 () Bool)

(declare-fun res!216404 () Bool)

(assert (=> b!380866 (=> (not res!216404) (not e!231605))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22311 (_ BitVec 32)) Bool)

(assert (=> b!380866 (= res!216404 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380867 () Bool)

(declare-fun res!216396 () Bool)

(assert (=> b!380867 (=> (not res!216396) (not e!231605))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13383 0))(
  ( (V!13384 (val!4649 Int)) )
))
(declare-datatypes ((ValueCell!4261 0))(
  ( (ValueCellFull!4261 (v!6842 V!13383)) (EmptyCell!4261) )
))
(declare-datatypes ((array!22313 0))(
  ( (array!22314 (arr!10622 (Array (_ BitVec 32) ValueCell!4261)) (size!10974 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22313)

(assert (=> b!380867 (= res!216396 (and (= (size!10974 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10973 _keys!658) (size!10974 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15378 () Bool)

(declare-fun tp!30398 () Bool)

(declare-fun e!231604 () Bool)

(assert (=> mapNonEmpty!15378 (= mapRes!15378 (and tp!30398 e!231604))))

(declare-fun mapKey!15378 () (_ BitVec 32))

(declare-fun mapRest!15378 () (Array (_ BitVec 32) ValueCell!4261))

(declare-fun mapValue!15378 () ValueCell!4261)

(assert (=> mapNonEmpty!15378 (= (arr!10622 _values!506) (store mapRest!15378 mapKey!15378 mapValue!15378))))

(declare-fun b!380868 () Bool)

(declare-fun res!216395 () Bool)

(assert (=> b!380868 (=> (not res!216395) (not e!231605))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380868 (= res!216395 (or (= (select (arr!10621 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10621 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380869 () Bool)

(declare-fun res!216402 () Bool)

(assert (=> b!380869 (=> (not res!216402) (not e!231605))))

(declare-fun arrayContainsKey!0 (array!22311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380869 (= res!216402 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!380870 () Bool)

(assert (=> b!380870 (= e!231604 tp_is_empty!9209)))

(declare-fun b!380871 () Bool)

(declare-fun e!231606 () Bool)

(assert (=> b!380871 (= e!231605 e!231606)))

(declare-fun res!216400 () Bool)

(assert (=> b!380871 (=> (not res!216400) (not e!231606))))

(declare-fun lt!178496 () array!22311)

(assert (=> b!380871 (= res!216400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178496 mask!970))))

(assert (=> b!380871 (= lt!178496 (array!22312 (store (arr!10621 _keys!658) i!548 k!778) (size!10973 _keys!658)))))

(declare-fun b!380872 () Bool)

(declare-fun e!231609 () Bool)

(assert (=> b!380872 (= e!231609 (and e!231608 mapRes!15378))))

(declare-fun condMapEmpty!15378 () Bool)

(declare-fun mapDefault!15378 () ValueCell!4261)

