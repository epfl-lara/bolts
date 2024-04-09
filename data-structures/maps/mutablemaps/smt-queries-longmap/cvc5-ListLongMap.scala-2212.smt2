; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36694 () Bool)

(assert start!36694)

(declare-fun res!204793 () Bool)

(declare-fun e!224140 () Bool)

(assert (=> start!36694 (=> (not res!204793) (not e!224140))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36694 (= res!204793 (validMask!0 mask!970))))

(assert (=> start!36694 e!224140))

(assert (=> start!36694 true))

(declare-datatypes ((V!12451 0))(
  ( (V!12452 (val!4299 Int)) )
))
(declare-datatypes ((ValueCell!3911 0))(
  ( (ValueCellFull!3911 (v!6491 V!12451)) (EmptyCell!3911) )
))
(declare-datatypes ((array!20943 0))(
  ( (array!20944 (arr!9940 (Array (_ BitVec 32) ValueCell!3911)) (size!10292 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20943)

(declare-fun e!224141 () Bool)

(declare-fun array_inv!7350 (array!20943) Bool)

(assert (=> start!36694 (and (array_inv!7350 _values!506) e!224141)))

(declare-datatypes ((array!20945 0))(
  ( (array!20946 (arr!9941 (Array (_ BitVec 32) (_ BitVec 64))) (size!10293 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20945)

(declare-fun array_inv!7351 (array!20945) Bool)

(assert (=> start!36694 (array_inv!7351 _keys!658)))

(declare-fun b!366040 () Bool)

(declare-fun res!204795 () Bool)

(assert (=> b!366040 (=> (not res!204795) (not e!224140))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!366040 (= res!204795 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10293 _keys!658))))))

(declare-fun b!366041 () Bool)

(declare-fun res!204787 () Bool)

(assert (=> b!366041 (=> (not res!204787) (not e!224140))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!366041 (= res!204787 (and (= (size!10292 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10293 _keys!658) (size!10292 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!366042 () Bool)

(declare-fun res!204789 () Bool)

(assert (=> b!366042 (=> (not res!204789) (not e!224140))))

(declare-datatypes ((List!5564 0))(
  ( (Nil!5561) (Cons!5560 (h!6416 (_ BitVec 64)) (t!10722 List!5564)) )
))
(declare-fun arrayNoDuplicates!0 (array!20945 (_ BitVec 32) List!5564) Bool)

(assert (=> b!366042 (= res!204789 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5561))))

(declare-fun b!366043 () Bool)

(assert (=> b!366043 (= e!224140 (and (bvsle #b00000000000000000000000000000000 (size!10293 _keys!658)) (bvsge (size!10293 _keys!658) #b01111111111111111111111111111111)))))

(declare-fun b!366044 () Bool)

(declare-fun res!204794 () Bool)

(assert (=> b!366044 (=> (not res!204794) (not e!224140))))

(assert (=> b!366044 (= res!204794 (or (= (select (arr!9941 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!9941 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!366045 () Bool)

(declare-fun e!224142 () Bool)

(declare-fun tp_is_empty!8509 () Bool)

(assert (=> b!366045 (= e!224142 tp_is_empty!8509)))

(declare-fun b!366046 () Bool)

(declare-fun res!204788 () Bool)

(assert (=> b!366046 (=> (not res!204788) (not e!224140))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!366046 (= res!204788 (validKeyInArray!0 k!778))))

(declare-fun b!366047 () Bool)

(declare-fun res!204792 () Bool)

(assert (=> b!366047 (=> (not res!204792) (not e!224140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20945 (_ BitVec 32)) Bool)

(assert (=> b!366047 (= res!204792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!20946 (store (arr!9941 _keys!658) i!548 k!778) (size!10293 _keys!658)) mask!970))))

(declare-fun mapIsEmpty!14319 () Bool)

(declare-fun mapRes!14319 () Bool)

(assert (=> mapIsEmpty!14319 mapRes!14319))

(declare-fun b!366048 () Bool)

(declare-fun res!204791 () Bool)

(assert (=> b!366048 (=> (not res!204791) (not e!224140))))

(declare-fun arrayContainsKey!0 (array!20945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!366048 (= res!204791 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!366049 () Bool)

(declare-fun res!204790 () Bool)

(assert (=> b!366049 (=> (not res!204790) (not e!224140))))

(assert (=> b!366049 (= res!204790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!366050 () Bool)

(declare-fun e!224139 () Bool)

(assert (=> b!366050 (= e!224141 (and e!224139 mapRes!14319))))

(declare-fun condMapEmpty!14319 () Bool)

(declare-fun mapDefault!14319 () ValueCell!3911)

