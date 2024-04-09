; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37624 () Bool)

(assert start!37624)

(declare-fun b_free!8743 () Bool)

(declare-fun b_next!8743 () Bool)

(assert (=> start!37624 (= b_free!8743 (not b_next!8743))))

(declare-fun tp!30945 () Bool)

(declare-fun b_and!16003 () Bool)

(assert (=> start!37624 (= tp!30945 b_and!16003)))

(declare-fun b!384694 () Bool)

(declare-fun e!233524 () Bool)

(declare-fun e!233527 () Bool)

(assert (=> b!384694 (= e!233524 e!233527)))

(declare-fun res!219414 () Bool)

(assert (=> b!384694 (=> (not res!219414) (not e!233527))))

(declare-datatypes ((array!22667 0))(
  ( (array!22668 (arr!10799 (Array (_ BitVec 32) (_ BitVec 64))) (size!11151 (_ BitVec 32))) )
))
(declare-fun lt!181205 () array!22667)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22667 (_ BitVec 32)) Bool)

(assert (=> b!384694 (= res!219414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181205 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22667)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384694 (= lt!181205 (array!22668 (store (arr!10799 _keys!658) i!548 k!778) (size!11151 _keys!658)))))

(declare-fun b!384695 () Bool)

(declare-fun res!219413 () Bool)

(assert (=> b!384695 (=> (not res!219413) (not e!233524))))

(assert (=> b!384695 (= res!219413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384696 () Bool)

(declare-fun res!219415 () Bool)

(assert (=> b!384696 (=> (not res!219415) (not e!233524))))

(assert (=> b!384696 (= res!219415 (or (= (select (arr!10799 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10799 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384697 () Bool)

(declare-fun res!219409 () Bool)

(assert (=> b!384697 (=> (not res!219409) (not e!233524))))

(assert (=> b!384697 (= res!219409 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11151 _keys!658))))))

(declare-fun b!384698 () Bool)

(declare-fun res!219411 () Bool)

(assert (=> b!384698 (=> (not res!219411) (not e!233524))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13627 0))(
  ( (V!13628 (val!4740 Int)) )
))
(declare-datatypes ((ValueCell!4352 0))(
  ( (ValueCellFull!4352 (v!6933 V!13627)) (EmptyCell!4352) )
))
(declare-datatypes ((array!22669 0))(
  ( (array!22670 (arr!10800 (Array (_ BitVec 32) ValueCell!4352)) (size!11152 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22669)

(assert (=> b!384698 (= res!219411 (and (= (size!11152 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11151 _keys!658) (size!11152 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384699 () Bool)

(declare-fun e!233528 () Bool)

(declare-fun tp_is_empty!9391 () Bool)

(assert (=> b!384699 (= e!233528 tp_is_empty!9391)))

(declare-fun b!384700 () Bool)

(declare-fun e!233526 () Bool)

(assert (=> b!384700 (= e!233526 tp_is_empty!9391)))

(declare-fun b!384701 () Bool)

(declare-fun e!233523 () Bool)

(declare-fun mapRes!15651 () Bool)

(assert (=> b!384701 (= e!233523 (and e!233528 mapRes!15651))))

(declare-fun condMapEmpty!15651 () Bool)

(declare-fun mapDefault!15651 () ValueCell!4352)

