; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39070 () Bool)

(assert start!39070)

(declare-fun b_free!9329 () Bool)

(declare-fun b_next!9329 () Bool)

(assert (=> start!39070 (= b_free!9329 (not b_next!9329))))

(declare-fun tp!33515 () Bool)

(declare-fun b_and!16733 () Bool)

(assert (=> start!39070 (= tp!33515 b_and!16733)))

(declare-fun b!409812 () Bool)

(declare-fun res!237506 () Bool)

(declare-fun e!245727 () Bool)

(assert (=> b!409812 (=> (not res!237506) (not e!245727))))

(declare-datatypes ((array!24813 0))(
  ( (array!24814 (arr!11853 (Array (_ BitVec 32) (_ BitVec 64))) (size!12205 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24813)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24813 (_ BitVec 32)) Bool)

(assert (=> b!409812 (= res!237506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409813 () Bool)

(declare-fun e!245731 () Bool)

(declare-fun tp_is_empty!10481 () Bool)

(assert (=> b!409813 (= e!245731 tp_is_empty!10481)))

(declare-fun b!409814 () Bool)

(declare-fun res!237501 () Bool)

(declare-fun e!245728 () Bool)

(assert (=> b!409814 (=> (not res!237501) (not e!245728))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409814 (= res!237501 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!17343 () Bool)

(declare-fun mapRes!17343 () Bool)

(assert (=> mapIsEmpty!17343 mapRes!17343))

(declare-fun b!409815 () Bool)

(declare-fun res!237504 () Bool)

(assert (=> b!409815 (=> (not res!237504) (not e!245727))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15079 0))(
  ( (V!15080 (val!5285 Int)) )
))
(declare-datatypes ((ValueCell!4897 0))(
  ( (ValueCellFull!4897 (v!7528 V!15079)) (EmptyCell!4897) )
))
(declare-datatypes ((array!24815 0))(
  ( (array!24816 (arr!11854 (Array (_ BitVec 32) ValueCell!4897)) (size!12206 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24815)

(assert (=> b!409815 (= res!237504 (and (= (size!12206 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12205 _keys!709) (size!12206 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!409816 () Bool)

(assert (=> b!409816 (= e!245727 e!245728)))

(declare-fun res!237509 () Bool)

(assert (=> b!409816 (=> (not res!237509) (not e!245728))))

(declare-fun lt!188984 () array!24813)

(assert (=> b!409816 (= res!237509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188984 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!409816 (= lt!188984 (array!24814 (store (arr!11853 _keys!709) i!563 k!794) (size!12205 _keys!709)))))

(declare-fun mapNonEmpty!17343 () Bool)

(declare-fun tp!33516 () Bool)

(assert (=> mapNonEmpty!17343 (= mapRes!17343 (and tp!33516 e!245731))))

(declare-fun mapRest!17343 () (Array (_ BitVec 32) ValueCell!4897))

(declare-fun mapValue!17343 () ValueCell!4897)

(declare-fun mapKey!17343 () (_ BitVec 32))

(assert (=> mapNonEmpty!17343 (= (arr!11854 _values!549) (store mapRest!17343 mapKey!17343 mapValue!17343))))

(declare-fun b!409817 () Bool)

(declare-fun res!237500 () Bool)

(assert (=> b!409817 (=> (not res!237500) (not e!245727))))

(declare-fun arrayContainsKey!0 (array!24813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409817 (= res!237500 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409818 () Bool)

(declare-fun res!237499 () Bool)

(assert (=> b!409818 (=> (not res!237499) (not e!245727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409818 (= res!237499 (validMask!0 mask!1025))))

(declare-fun b!409819 () Bool)

(declare-fun e!245726 () Bool)

(assert (=> b!409819 (= e!245726 tp_is_empty!10481)))

(declare-fun b!409820 () Bool)

(declare-fun e!245729 () Bool)

(assert (=> b!409820 (= e!245729 (and e!245726 mapRes!17343))))

(declare-fun condMapEmpty!17343 () Bool)

(declare-fun mapDefault!17343 () ValueCell!4897)

