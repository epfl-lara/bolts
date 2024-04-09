; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39100 () Bool)

(assert start!39100)

(declare-fun b_free!9359 () Bool)

(declare-fun b_next!9359 () Bool)

(assert (=> start!39100 (= b_free!9359 (not b_next!9359))))

(declare-fun tp!33605 () Bool)

(declare-fun b_and!16763 () Bool)

(assert (=> start!39100 (= tp!33605 b_and!16763)))

(declare-fun b!410487 () Bool)

(declare-fun e!246001 () Bool)

(declare-fun e!245998 () Bool)

(assert (=> b!410487 (= e!246001 e!245998)))

(declare-fun res!238043 () Bool)

(assert (=> b!410487 (=> (not res!238043) (not e!245998))))

(declare-datatypes ((array!24871 0))(
  ( (array!24872 (arr!11882 (Array (_ BitVec 32) (_ BitVec 64))) (size!12234 (_ BitVec 32))) )
))
(declare-fun lt!189091 () array!24871)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24871 (_ BitVec 32)) Bool)

(assert (=> b!410487 (= res!238043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189091 mask!1025))))

(declare-fun _keys!709 () array!24871)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410487 (= lt!189091 (array!24872 (store (arr!11882 _keys!709) i!563 k!794) (size!12234 _keys!709)))))

(declare-fun b!410488 () Bool)

(assert (=> b!410488 (= e!245998 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15119 0))(
  ( (V!15120 (val!5300 Int)) )
))
(declare-fun minValue!515 () V!15119)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4912 0))(
  ( (ValueCellFull!4912 (v!7543 V!15119)) (EmptyCell!4912) )
))
(declare-datatypes ((array!24873 0))(
  ( (array!24874 (arr!11883 (Array (_ BitVec 32) ValueCell!4912)) (size!12235 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24873)

(declare-fun zeroValue!515 () V!15119)

(declare-datatypes ((tuple2!6812 0))(
  ( (tuple2!6813 (_1!3416 (_ BitVec 64)) (_2!3416 V!15119)) )
))
(declare-datatypes ((List!6865 0))(
  ( (Nil!6862) (Cons!6861 (h!7717 tuple2!6812) (t!12047 List!6865)) )
))
(declare-datatypes ((ListLongMap!5739 0))(
  ( (ListLongMap!5740 (toList!2885 List!6865)) )
))
(declare-fun lt!189092 () ListLongMap!5739)

(declare-fun v!412 () V!15119)

(declare-fun getCurrentListMapNoExtraKeys!1095 (array!24871 array!24873 (_ BitVec 32) (_ BitVec 32) V!15119 V!15119 (_ BitVec 32) Int) ListLongMap!5739)

(assert (=> b!410488 (= lt!189092 (getCurrentListMapNoExtraKeys!1095 lt!189091 (array!24874 (store (arr!11883 _values!549) i!563 (ValueCellFull!4912 v!412)) (size!12235 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189093 () ListLongMap!5739)

(assert (=> b!410488 (= lt!189093 (getCurrentListMapNoExtraKeys!1095 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410489 () Bool)

(declare-fun res!238041 () Bool)

(assert (=> b!410489 (=> (not res!238041) (not e!246001))))

(assert (=> b!410489 (= res!238041 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12234 _keys!709))))))

(declare-fun b!410490 () Bool)

(declare-fun res!238039 () Bool)

(assert (=> b!410490 (=> (not res!238039) (not e!246001))))

(assert (=> b!410490 (= res!238039 (and (= (size!12235 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12234 _keys!709) (size!12235 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410491 () Bool)

(declare-fun res!238047 () Bool)

(assert (=> b!410491 (=> (not res!238047) (not e!246001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410491 (= res!238047 (validMask!0 mask!1025))))

(declare-fun b!410492 () Bool)

(declare-fun res!238048 () Bool)

(assert (=> b!410492 (=> (not res!238048) (not e!246001))))

(assert (=> b!410492 (= res!238048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410493 () Bool)

(declare-fun e!245996 () Bool)

(declare-fun tp_is_empty!10511 () Bool)

(assert (=> b!410493 (= e!245996 tp_is_empty!10511)))

(declare-fun b!410495 () Bool)

(declare-fun res!238042 () Bool)

(assert (=> b!410495 (=> (not res!238042) (not e!246001))))

(declare-fun arrayContainsKey!0 (array!24871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410495 (= res!238042 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!17388 () Bool)

(declare-fun mapRes!17388 () Bool)

(assert (=> mapIsEmpty!17388 mapRes!17388))

(declare-fun b!410496 () Bool)

(declare-fun e!245999 () Bool)

(assert (=> b!410496 (= e!245999 (and e!245996 mapRes!17388))))

(declare-fun condMapEmpty!17388 () Bool)

(declare-fun mapDefault!17388 () ValueCell!4912)

