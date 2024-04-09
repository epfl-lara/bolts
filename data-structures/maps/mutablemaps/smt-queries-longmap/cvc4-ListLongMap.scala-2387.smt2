; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37796 () Bool)

(assert start!37796)

(declare-fun b_free!8891 () Bool)

(declare-fun b_next!8891 () Bool)

(assert (=> start!37796 (= b_free!8891 (not b_next!8891))))

(declare-fun tp!31425 () Bool)

(declare-fun b_and!16151 () Bool)

(assert (=> start!37796 (= tp!31425 b_and!16151)))

(declare-fun res!221828 () Bool)

(declare-fun e!235083 () Bool)

(assert (=> start!37796 (=> (not res!221828) (not e!235083))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37796 (= res!221828 (validMask!0 mask!970))))

(assert (=> start!37796 e!235083))

(declare-datatypes ((V!13855 0))(
  ( (V!13856 (val!4826 Int)) )
))
(declare-datatypes ((ValueCell!4438 0))(
  ( (ValueCellFull!4438 (v!7019 V!13855)) (EmptyCell!4438) )
))
(declare-datatypes ((array!22995 0))(
  ( (array!22996 (arr!10963 (Array (_ BitVec 32) ValueCell!4438)) (size!11315 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22995)

(declare-fun e!235082 () Bool)

(declare-fun array_inv!8036 (array!22995) Bool)

(assert (=> start!37796 (and (array_inv!8036 _values!506) e!235082)))

(assert (=> start!37796 tp!31425))

(assert (=> start!37796 true))

(declare-fun tp_is_empty!9563 () Bool)

(assert (=> start!37796 tp_is_empty!9563))

(declare-datatypes ((array!22997 0))(
  ( (array!22998 (arr!10964 (Array (_ BitVec 32) (_ BitVec 64))) (size!11316 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22997)

(declare-fun array_inv!8037 (array!22997) Bool)

(assert (=> start!37796 (array_inv!8037 _keys!658)))

(declare-fun b!387884 () Bool)

(declare-fun e!235078 () Bool)

(assert (=> b!387884 (= e!235078 tp_is_empty!9563)))

(declare-fun b!387885 () Bool)

(declare-fun res!221831 () Bool)

(assert (=> b!387885 (=> (not res!221831) (not e!235083))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387885 (= res!221831 (or (= (select (arr!10964 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10964 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387886 () Bool)

(declare-fun res!221830 () Bool)

(assert (=> b!387886 (=> (not res!221830) (not e!235083))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!387886 (= res!221830 (and (= (size!11315 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11316 _keys!658) (size!11315 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387887 () Bool)

(declare-fun e!235080 () Bool)

(assert (=> b!387887 (= e!235083 e!235080)))

(declare-fun res!221825 () Bool)

(assert (=> b!387887 (=> (not res!221825) (not e!235080))))

(declare-fun lt!182166 () array!22997)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22997 (_ BitVec 32)) Bool)

(assert (=> b!387887 (= res!221825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182166 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!387887 (= lt!182166 (array!22998 (store (arr!10964 _keys!658) i!548 k!778) (size!11316 _keys!658)))))

(declare-fun mapIsEmpty!15909 () Bool)

(declare-fun mapRes!15909 () Bool)

(assert (=> mapIsEmpty!15909 mapRes!15909))

(declare-fun b!387888 () Bool)

(assert (=> b!387888 (= e!235082 (and e!235078 mapRes!15909))))

(declare-fun condMapEmpty!15909 () Bool)

(declare-fun mapDefault!15909 () ValueCell!4438)

