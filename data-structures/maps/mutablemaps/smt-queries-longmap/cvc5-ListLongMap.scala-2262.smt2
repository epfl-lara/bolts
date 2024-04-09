; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37042 () Bool)

(assert start!37042)

(declare-fun b_free!8161 () Bool)

(declare-fun b_next!8161 () Bool)

(assert (=> start!37042 (= b_free!8161 (not b_next!8161))))

(declare-fun tp!29199 () Bool)

(declare-fun b_and!15421 () Bool)

(assert (=> start!37042 (= tp!29199 b_and!15421)))

(declare-fun b!371984 () Bool)

(declare-fun e!226956 () Bool)

(declare-fun e!226952 () Bool)

(assert (=> b!371984 (= e!226956 e!226952)))

(declare-fun res!209319 () Bool)

(assert (=> b!371984 (=> (not res!209319) (not e!226952))))

(declare-datatypes ((array!21527 0))(
  ( (array!21528 (arr!10229 (Array (_ BitVec 32) (_ BitVec 64))) (size!10581 (_ BitVec 32))) )
))
(declare-fun lt!170574 () array!21527)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21527 (_ BitVec 32)) Bool)

(assert (=> b!371984 (= res!209319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170574 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21527)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371984 (= lt!170574 (array!21528 (store (arr!10229 _keys!658) i!548 k!778) (size!10581 _keys!658)))))

(declare-fun b!371985 () Bool)

(declare-fun res!209315 () Bool)

(assert (=> b!371985 (=> (not res!209315) (not e!226956))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12851 0))(
  ( (V!12852 (val!4449 Int)) )
))
(declare-datatypes ((ValueCell!4061 0))(
  ( (ValueCellFull!4061 (v!6642 V!12851)) (EmptyCell!4061) )
))
(declare-datatypes ((array!21529 0))(
  ( (array!21530 (arr!10230 (Array (_ BitVec 32) ValueCell!4061)) (size!10582 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21529)

(assert (=> b!371985 (= res!209315 (and (= (size!10582 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10581 _keys!658) (size!10582 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371986 () Bool)

(declare-fun res!209324 () Bool)

(assert (=> b!371986 (=> (not res!209324) (not e!226956))))

(declare-datatypes ((List!5750 0))(
  ( (Nil!5747) (Cons!5746 (h!6602 (_ BitVec 64)) (t!10908 List!5750)) )
))
(declare-fun arrayNoDuplicates!0 (array!21527 (_ BitVec 32) List!5750) Bool)

(assert (=> b!371986 (= res!209324 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5747))))

(declare-fun res!209320 () Bool)

(assert (=> start!37042 (=> (not res!209320) (not e!226956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37042 (= res!209320 (validMask!0 mask!970))))

(assert (=> start!37042 e!226956))

(declare-fun e!226955 () Bool)

(declare-fun array_inv!7552 (array!21529) Bool)

(assert (=> start!37042 (and (array_inv!7552 _values!506) e!226955)))

(assert (=> start!37042 tp!29199))

(assert (=> start!37042 true))

(declare-fun tp_is_empty!8809 () Bool)

(assert (=> start!37042 tp_is_empty!8809))

(declare-fun array_inv!7553 (array!21527) Bool)

(assert (=> start!37042 (array_inv!7553 _keys!658)))

(declare-fun b!371987 () Bool)

(declare-fun res!209318 () Bool)

(assert (=> b!371987 (=> (not res!209318) (not e!226956))))

(assert (=> b!371987 (= res!209318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371988 () Bool)

(declare-fun res!209323 () Bool)

(assert (=> b!371988 (=> (not res!209323) (not e!226956))))

(assert (=> b!371988 (= res!209323 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10581 _keys!658))))))

(declare-fun b!371989 () Bool)

(declare-fun res!209321 () Bool)

(assert (=> b!371989 (=> (not res!209321) (not e!226956))))

(declare-fun arrayContainsKey!0 (array!21527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371989 (= res!209321 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14778 () Bool)

(declare-fun mapRes!14778 () Bool)

(declare-fun tp!29198 () Bool)

(declare-fun e!226953 () Bool)

(assert (=> mapNonEmpty!14778 (= mapRes!14778 (and tp!29198 e!226953))))

(declare-fun mapKey!14778 () (_ BitVec 32))

(declare-fun mapValue!14778 () ValueCell!4061)

(declare-fun mapRest!14778 () (Array (_ BitVec 32) ValueCell!4061))

(assert (=> mapNonEmpty!14778 (= (arr!10230 _values!506) (store mapRest!14778 mapKey!14778 mapValue!14778))))

(declare-fun mapIsEmpty!14778 () Bool)

(assert (=> mapIsEmpty!14778 mapRes!14778))

(declare-fun b!371990 () Bool)

(declare-fun res!209317 () Bool)

(assert (=> b!371990 (=> (not res!209317) (not e!226952))))

(assert (=> b!371990 (= res!209317 (arrayNoDuplicates!0 lt!170574 #b00000000000000000000000000000000 Nil!5747))))

(declare-fun b!371991 () Bool)

(declare-fun e!226954 () Bool)

(assert (=> b!371991 (= e!226954 tp_is_empty!8809)))

(declare-fun b!371992 () Bool)

(assert (=> b!371992 (= e!226955 (and e!226954 mapRes!14778))))

(declare-fun condMapEmpty!14778 () Bool)

(declare-fun mapDefault!14778 () ValueCell!4061)

