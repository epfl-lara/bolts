; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37676 () Bool)

(assert start!37676)

(declare-fun b_free!8771 () Bool)

(declare-fun b_next!8771 () Bool)

(assert (=> start!37676 (= b_free!8771 (not b_next!8771))))

(declare-fun tp!31064 () Bool)

(declare-fun b_and!16031 () Bool)

(assert (=> start!37676 (= tp!31064 b_and!16031)))

(declare-fun b!385544 () Bool)

(declare-fun res!220030 () Bool)

(declare-fun e!234003 () Bool)

(assert (=> b!385544 (=> (not res!220030) (not e!234003))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385544 (= res!220030 (validKeyInArray!0 k!778))))

(declare-fun b!385545 () Bool)

(declare-fun res!220027 () Bool)

(assert (=> b!385545 (=> (not res!220027) (not e!234003))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22763 0))(
  ( (array!22764 (arr!10847 (Array (_ BitVec 32) (_ BitVec 64))) (size!11199 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22763)

(assert (=> b!385545 (= res!220027 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11199 _keys!658))))))

(declare-fun b!385546 () Bool)

(declare-fun e!234000 () Bool)

(assert (=> b!385546 (= e!234000 false)))

(declare-datatypes ((V!13695 0))(
  ( (V!13696 (val!4766 Int)) )
))
(declare-datatypes ((tuple2!6356 0))(
  ( (tuple2!6357 (_1!3188 (_ BitVec 64)) (_2!3188 V!13695)) )
))
(declare-datatypes ((List!6231 0))(
  ( (Nil!6228) (Cons!6227 (h!7083 tuple2!6356) (t!11389 List!6231)) )
))
(declare-datatypes ((ListLongMap!5283 0))(
  ( (ListLongMap!5284 (toList!2657 List!6231)) )
))
(declare-fun lt!181618 () ListLongMap!5283)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4378 0))(
  ( (ValueCellFull!4378 (v!6959 V!13695)) (EmptyCell!4378) )
))
(declare-datatypes ((array!22765 0))(
  ( (array!22766 (arr!10848 (Array (_ BitVec 32) ValueCell!4378)) (size!11200 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22765)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13695)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13695)

(declare-fun getCurrentListMapNoExtraKeys!891 (array!22763 array!22765 (_ BitVec 32) (_ BitVec 32) V!13695 V!13695 (_ BitVec 32) Int) ListLongMap!5283)

(assert (=> b!385546 (= lt!181618 (getCurrentListMapNoExtraKeys!891 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385547 () Bool)

(declare-fun e!234002 () Bool)

(declare-fun tp_is_empty!9443 () Bool)

(assert (=> b!385547 (= e!234002 tp_is_empty!9443)))

(declare-fun b!385548 () Bool)

(declare-fun e!234001 () Bool)

(assert (=> b!385548 (= e!234001 tp_is_empty!9443)))

(declare-fun b!385549 () Bool)

(declare-fun res!220024 () Bool)

(assert (=> b!385549 (=> (not res!220024) (not e!234003))))

(assert (=> b!385549 (= res!220024 (or (= (select (arr!10847 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10847 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15729 () Bool)

(declare-fun mapRes!15729 () Bool)

(declare-fun tp!31065 () Bool)

(assert (=> mapNonEmpty!15729 (= mapRes!15729 (and tp!31065 e!234001))))

(declare-fun mapValue!15729 () ValueCell!4378)

(declare-fun mapRest!15729 () (Array (_ BitVec 32) ValueCell!4378))

(declare-fun mapKey!15729 () (_ BitVec 32))

(assert (=> mapNonEmpty!15729 (= (arr!10848 _values!506) (store mapRest!15729 mapKey!15729 mapValue!15729))))

(declare-fun b!385550 () Bool)

(declare-fun res!220023 () Bool)

(assert (=> b!385550 (=> (not res!220023) (not e!234003))))

(declare-fun arrayContainsKey!0 (array!22763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385550 (= res!220023 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!385551 () Bool)

(assert (=> b!385551 (= e!234003 e!234000)))

(declare-fun res!220026 () Bool)

(assert (=> b!385551 (=> (not res!220026) (not e!234000))))

(declare-fun lt!181617 () array!22763)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22763 (_ BitVec 32)) Bool)

(assert (=> b!385551 (= res!220026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181617 mask!970))))

(assert (=> b!385551 (= lt!181617 (array!22764 (store (arr!10847 _keys!658) i!548 k!778) (size!11199 _keys!658)))))

(declare-fun mapIsEmpty!15729 () Bool)

(assert (=> mapIsEmpty!15729 mapRes!15729))

(declare-fun b!385552 () Bool)

(declare-fun res!220022 () Bool)

(assert (=> b!385552 (=> (not res!220022) (not e!234003))))

(assert (=> b!385552 (= res!220022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385553 () Bool)

(declare-fun res!220025 () Bool)

(assert (=> b!385553 (=> (not res!220025) (not e!234003))))

(assert (=> b!385553 (= res!220025 (and (= (size!11200 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11199 _keys!658) (size!11200 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385554 () Bool)

(declare-fun res!220029 () Bool)

(assert (=> b!385554 (=> (not res!220029) (not e!234000))))

(declare-datatypes ((List!6232 0))(
  ( (Nil!6229) (Cons!6228 (h!7084 (_ BitVec 64)) (t!11390 List!6232)) )
))
(declare-fun arrayNoDuplicates!0 (array!22763 (_ BitVec 32) List!6232) Bool)

(assert (=> b!385554 (= res!220029 (arrayNoDuplicates!0 lt!181617 #b00000000000000000000000000000000 Nil!6229))))

(declare-fun b!385555 () Bool)

(declare-fun res!220028 () Bool)

(assert (=> b!385555 (=> (not res!220028) (not e!234003))))

(assert (=> b!385555 (= res!220028 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6229))))

(declare-fun res!220031 () Bool)

(assert (=> start!37676 (=> (not res!220031) (not e!234003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37676 (= res!220031 (validMask!0 mask!970))))

(assert (=> start!37676 e!234003))

(assert (=> start!37676 true))

(declare-fun e!233998 () Bool)

(declare-fun array_inv!7960 (array!22765) Bool)

(assert (=> start!37676 (and (array_inv!7960 _values!506) e!233998)))

(assert (=> start!37676 tp!31064))

(assert (=> start!37676 tp_is_empty!9443))

(declare-fun array_inv!7961 (array!22763) Bool)

(assert (=> start!37676 (array_inv!7961 _keys!658)))

(declare-fun b!385556 () Bool)

(assert (=> b!385556 (= e!233998 (and e!234002 mapRes!15729))))

(declare-fun condMapEmpty!15729 () Bool)

(declare-fun mapDefault!15729 () ValueCell!4378)

