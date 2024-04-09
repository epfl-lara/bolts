; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37532 () Bool)

(assert start!37532)

(declare-fun b_free!8651 () Bool)

(declare-fun b_next!8651 () Bool)

(assert (=> start!37532 (= b_free!8651 (not b_next!8651))))

(declare-fun tp!30668 () Bool)

(declare-fun b_and!15911 () Bool)

(assert (=> start!37532 (= tp!30668 b_and!15911)))

(declare-fun b!382753 () Bool)

(declare-fun res!217889 () Bool)

(declare-fun e!232549 () Bool)

(assert (=> b!382753 (=> (not res!217889) (not e!232549))))

(declare-datatypes ((array!22489 0))(
  ( (array!22490 (arr!10710 (Array (_ BitVec 32) (_ BitVec 64))) (size!11062 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22489)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382753 (= res!217889 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!217888 () Bool)

(assert (=> start!37532 (=> (not res!217888) (not e!232549))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37532 (= res!217888 (validMask!0 mask!970))))

(assert (=> start!37532 e!232549))

(declare-datatypes ((V!13503 0))(
  ( (V!13504 (val!4694 Int)) )
))
(declare-datatypes ((ValueCell!4306 0))(
  ( (ValueCellFull!4306 (v!6887 V!13503)) (EmptyCell!4306) )
))
(declare-datatypes ((array!22491 0))(
  ( (array!22492 (arr!10711 (Array (_ BitVec 32) ValueCell!4306)) (size!11063 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22491)

(declare-fun e!232554 () Bool)

(declare-fun array_inv!7866 (array!22491) Bool)

(assert (=> start!37532 (and (array_inv!7866 _values!506) e!232554)))

(assert (=> start!37532 tp!30668))

(assert (=> start!37532 true))

(declare-fun tp_is_empty!9299 () Bool)

(assert (=> start!37532 tp_is_empty!9299))

(declare-fun array_inv!7867 (array!22489) Bool)

(assert (=> start!37532 (array_inv!7867 _keys!658)))

(declare-fun b!382754 () Bool)

(declare-fun res!217883 () Bool)

(assert (=> b!382754 (=> (not res!217883) (not e!232549))))

(declare-datatypes ((List!6133 0))(
  ( (Nil!6130) (Cons!6129 (h!6985 (_ BitVec 64)) (t!11291 List!6133)) )
))
(declare-fun arrayNoDuplicates!0 (array!22489 (_ BitVec 32) List!6133) Bool)

(assert (=> b!382754 (= res!217883 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6130))))

(declare-fun b!382755 () Bool)

(declare-fun res!217886 () Bool)

(assert (=> b!382755 (=> (not res!217886) (not e!232549))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382755 (= res!217886 (or (= (select (arr!10710 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10710 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15513 () Bool)

(declare-fun mapRes!15513 () Bool)

(assert (=> mapIsEmpty!15513 mapRes!15513))

(declare-fun b!382756 () Bool)

(declare-fun res!217880 () Bool)

(assert (=> b!382756 (=> (not res!217880) (not e!232549))))

(assert (=> b!382756 (= res!217880 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11062 _keys!658))))))

(declare-fun b!382757 () Bool)

(declare-fun res!217882 () Bool)

(assert (=> b!382757 (=> (not res!217882) (not e!232549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382757 (= res!217882 (validKeyInArray!0 k!778))))

(declare-fun b!382758 () Bool)

(declare-fun e!232552 () Bool)

(assert (=> b!382758 (= e!232549 e!232552)))

(declare-fun res!217881 () Bool)

(assert (=> b!382758 (=> (not res!217881) (not e!232552))))

(declare-fun lt!179719 () array!22489)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22489 (_ BitVec 32)) Bool)

(assert (=> b!382758 (= res!217881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179719 mask!970))))

(assert (=> b!382758 (= lt!179719 (array!22490 (store (arr!10710 _keys!658) i!548 k!778) (size!11062 _keys!658)))))

(declare-fun b!382759 () Bool)

(declare-fun e!232550 () Bool)

(assert (=> b!382759 (= e!232554 (and e!232550 mapRes!15513))))

(declare-fun condMapEmpty!15513 () Bool)

(declare-fun mapDefault!15513 () ValueCell!4306)

