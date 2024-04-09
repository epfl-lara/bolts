; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37342 () Bool)

(assert start!37342)

(declare-fun b_free!8461 () Bool)

(declare-fun b_next!8461 () Bool)

(assert (=> start!37342 (= b_free!8461 (not b_next!8461))))

(declare-fun tp!30098 () Bool)

(declare-fun b_and!15721 () Bool)

(assert (=> start!37342 (= tp!30098 b_and!15721)))

(declare-fun b!378630 () Bool)

(declare-fun e!230426 () Bool)

(declare-fun e!230421 () Bool)

(assert (=> b!378630 (= e!230426 e!230421)))

(declare-fun res!214611 () Bool)

(assert (=> b!378630 (=> res!214611 e!230421)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!378630 (= res!214611 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13251 0))(
  ( (V!13252 (val!4599 Int)) )
))
(declare-datatypes ((tuple2!6114 0))(
  ( (tuple2!6115 (_1!3067 (_ BitVec 64)) (_2!3067 V!13251)) )
))
(declare-datatypes ((List!5986 0))(
  ( (Nil!5983) (Cons!5982 (h!6838 tuple2!6114) (t!11144 List!5986)) )
))
(declare-datatypes ((ListLongMap!5041 0))(
  ( (ListLongMap!5042 (toList!2536 List!5986)) )
))
(declare-fun lt!176619 () ListLongMap!5041)

(declare-fun lt!176624 () ListLongMap!5041)

(assert (=> b!378630 (= lt!176619 lt!176624)))

(declare-fun lt!176625 () ListLongMap!5041)

(declare-fun lt!176617 () tuple2!6114)

(declare-fun +!877 (ListLongMap!5041 tuple2!6114) ListLongMap!5041)

(assert (=> b!378630 (= lt!176624 (+!877 lt!176625 lt!176617))))

(declare-fun lt!176616 () ListLongMap!5041)

(declare-fun lt!176626 () ListLongMap!5041)

(assert (=> b!378630 (= lt!176616 lt!176626)))

(declare-fun lt!176618 () ListLongMap!5041)

(assert (=> b!378630 (= lt!176626 (+!877 lt!176618 lt!176617))))

(declare-fun lt!176621 () ListLongMap!5041)

(assert (=> b!378630 (= lt!176616 (+!877 lt!176621 lt!176617))))

(declare-fun minValue!472 () V!13251)

(assert (=> b!378630 (= lt!176617 (tuple2!6115 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378631 () Bool)

(assert (=> b!378631 (= e!230421 true)))

(declare-fun lt!176615 () tuple2!6114)

(assert (=> b!378631 (= lt!176626 (+!877 lt!176624 lt!176615))))

(declare-fun v!373 () V!13251)

(declare-datatypes ((Unit!11651 0))(
  ( (Unit!11652) )
))
(declare-fun lt!176623 () Unit!11651)

(declare-fun addCommutativeForDiffKeys!292 (ListLongMap!5041 (_ BitVec 64) V!13251 (_ BitVec 64) V!13251) Unit!11651)

(assert (=> b!378631 (= lt!176623 (addCommutativeForDiffKeys!292 lt!176625 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378632 () Bool)

(declare-fun e!230424 () Bool)

(declare-fun tp_is_empty!9109 () Bool)

(assert (=> b!378632 (= e!230424 tp_is_empty!9109)))

(declare-fun b!378633 () Bool)

(declare-fun e!230422 () Bool)

(declare-fun e!230425 () Bool)

(assert (=> b!378633 (= e!230422 e!230425)))

(declare-fun res!214619 () Bool)

(assert (=> b!378633 (=> (not res!214619) (not e!230425))))

(declare-datatypes ((array!22115 0))(
  ( (array!22116 (arr!10523 (Array (_ BitVec 32) (_ BitVec 64))) (size!10875 (_ BitVec 32))) )
))
(declare-fun lt!176622 () array!22115)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22115 (_ BitVec 32)) Bool)

(assert (=> b!378633 (= res!214619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176622 mask!970))))

(declare-fun _keys!658 () array!22115)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378633 (= lt!176622 (array!22116 (store (arr!10523 _keys!658) i!548 k!778) (size!10875 _keys!658)))))

(declare-fun b!378635 () Bool)

(declare-fun res!214620 () Bool)

(assert (=> b!378635 (=> (not res!214620) (not e!230422))))

(declare-datatypes ((List!5987 0))(
  ( (Nil!5984) (Cons!5983 (h!6839 (_ BitVec 64)) (t!11145 List!5987)) )
))
(declare-fun arrayNoDuplicates!0 (array!22115 (_ BitVec 32) List!5987) Bool)

(assert (=> b!378635 (= res!214620 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5984))))

(declare-fun b!378636 () Bool)

(declare-fun res!214612 () Bool)

(assert (=> b!378636 (=> (not res!214612) (not e!230422))))

(assert (=> b!378636 (= res!214612 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378637 () Bool)

(declare-fun res!214618 () Bool)

(assert (=> b!378637 (=> (not res!214618) (not e!230422))))

(assert (=> b!378637 (= res!214618 (or (= (select (arr!10523 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10523 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15228 () Bool)

(declare-fun mapRes!15228 () Bool)

(assert (=> mapIsEmpty!15228 mapRes!15228))

(declare-fun b!378638 () Bool)

(declare-fun e!230423 () Bool)

(declare-fun e!230420 () Bool)

(assert (=> b!378638 (= e!230423 (and e!230420 mapRes!15228))))

(declare-fun condMapEmpty!15228 () Bool)

(declare-datatypes ((ValueCell!4211 0))(
  ( (ValueCellFull!4211 (v!6792 V!13251)) (EmptyCell!4211) )
))
(declare-datatypes ((array!22117 0))(
  ( (array!22118 (arr!10524 (Array (_ BitVec 32) ValueCell!4211)) (size!10876 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22117)

(declare-fun mapDefault!15228 () ValueCell!4211)

