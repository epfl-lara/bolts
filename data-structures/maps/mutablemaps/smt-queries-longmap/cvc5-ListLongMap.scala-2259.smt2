; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37024 () Bool)

(assert start!37024)

(declare-fun b_free!8143 () Bool)

(declare-fun b_next!8143 () Bool)

(assert (=> start!37024 (= b_free!8143 (not b_next!8143))))

(declare-fun tp!29145 () Bool)

(declare-fun b_and!15403 () Bool)

(assert (=> start!37024 (= tp!29145 b_and!15403)))

(declare-fun b!371633 () Bool)

(declare-fun res!209048 () Bool)

(declare-fun e!226792 () Bool)

(assert (=> b!371633 (=> (not res!209048) (not e!226792))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21493 0))(
  ( (array!21494 (arr!10212 (Array (_ BitVec 32) (_ BitVec 64))) (size!10564 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21493)

(assert (=> b!371633 (= res!209048 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10564 _keys!658))))))

(declare-fun b!371634 () Bool)

(declare-fun e!226794 () Bool)

(declare-fun tp_is_empty!8791 () Bool)

(assert (=> b!371634 (= e!226794 tp_is_empty!8791)))

(declare-fun b!371635 () Bool)

(declare-fun res!209045 () Bool)

(assert (=> b!371635 (=> (not res!209045) (not e!226792))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371635 (= res!209045 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371636 () Bool)

(declare-fun res!209047 () Bool)

(assert (=> b!371636 (=> (not res!209047) (not e!226792))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12827 0))(
  ( (V!12828 (val!4440 Int)) )
))
(declare-datatypes ((ValueCell!4052 0))(
  ( (ValueCellFull!4052 (v!6633 V!12827)) (EmptyCell!4052) )
))
(declare-datatypes ((array!21495 0))(
  ( (array!21496 (arr!10213 (Array (_ BitVec 32) ValueCell!4052)) (size!10565 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21495)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!371636 (= res!209047 (and (= (size!10565 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10564 _keys!658) (size!10565 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371637 () Bool)

(declare-fun res!209046 () Bool)

(assert (=> b!371637 (=> (not res!209046) (not e!226792))))

(assert (=> b!371637 (= res!209046 (or (= (select (arr!10212 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10212 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!209054 () Bool)

(assert (=> start!37024 (=> (not res!209054) (not e!226792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37024 (= res!209054 (validMask!0 mask!970))))

(assert (=> start!37024 e!226792))

(declare-fun e!226789 () Bool)

(declare-fun array_inv!7542 (array!21495) Bool)

(assert (=> start!37024 (and (array_inv!7542 _values!506) e!226789)))

(assert (=> start!37024 tp!29145))

(assert (=> start!37024 true))

(assert (=> start!37024 tp_is_empty!8791))

(declare-fun array_inv!7543 (array!21493) Bool)

(assert (=> start!37024 (array_inv!7543 _keys!658)))

(declare-fun mapIsEmpty!14751 () Bool)

(declare-fun mapRes!14751 () Bool)

(assert (=> mapIsEmpty!14751 mapRes!14751))

(declare-fun b!371638 () Bool)

(declare-fun e!226790 () Bool)

(assert (=> b!371638 (= e!226792 e!226790)))

(declare-fun res!209052 () Bool)

(assert (=> b!371638 (=> (not res!209052) (not e!226790))))

(declare-fun lt!170397 () array!21493)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21493 (_ BitVec 32)) Bool)

(assert (=> b!371638 (= res!209052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170397 mask!970))))

(assert (=> b!371638 (= lt!170397 (array!21494 (store (arr!10212 _keys!658) i!548 k!778) (size!10564 _keys!658)))))

(declare-fun b!371639 () Bool)

(declare-fun res!209049 () Bool)

(assert (=> b!371639 (=> (not res!209049) (not e!226792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371639 (= res!209049 (validKeyInArray!0 k!778))))

(declare-fun b!371640 () Bool)

(assert (=> b!371640 (= e!226790 (not (bvsle #b00000000000000000000000000000000 (size!10564 _keys!658))))))

(declare-datatypes ((tuple2!5866 0))(
  ( (tuple2!5867 (_1!2943 (_ BitVec 64)) (_2!2943 V!12827)) )
))
(declare-datatypes ((List!5738 0))(
  ( (Nil!5735) (Cons!5734 (h!6590 tuple2!5866) (t!10896 List!5738)) )
))
(declare-datatypes ((ListLongMap!4793 0))(
  ( (ListLongMap!4794 (toList!2412 List!5738)) )
))
(declare-fun lt!170401 () ListLongMap!4793)

(declare-fun lt!170399 () ListLongMap!4793)

(assert (=> b!371640 (and (= lt!170401 lt!170399) (= lt!170399 lt!170401))))

(declare-fun v!373 () V!12827)

(declare-fun lt!170400 () ListLongMap!4793)

(declare-fun +!753 (ListLongMap!4793 tuple2!5866) ListLongMap!4793)

(assert (=> b!371640 (= lt!170399 (+!753 lt!170400 (tuple2!5867 k!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((Unit!11411 0))(
  ( (Unit!11412) )
))
(declare-fun lt!170398 () Unit!11411)

(declare-fun zeroValue!472 () V!12827)

(declare-fun minValue!472 () V!12827)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!13 (array!21493 array!21495 (_ BitVec 32) (_ BitVec 32) V!12827 V!12827 (_ BitVec 32) (_ BitVec 64) V!12827 (_ BitVec 32) Int) Unit!11411)

(assert (=> b!371640 (= lt!170398 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!13 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!680 (array!21493 array!21495 (_ BitVec 32) (_ BitVec 32) V!12827 V!12827 (_ BitVec 32) Int) ListLongMap!4793)

(assert (=> b!371640 (= lt!170401 (getCurrentListMapNoExtraKeys!680 lt!170397 (array!21496 (store (arr!10213 _values!506) i!548 (ValueCellFull!4052 v!373)) (size!10565 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371640 (= lt!170400 (getCurrentListMapNoExtraKeys!680 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371641 () Bool)

(declare-fun e!226793 () Bool)

(assert (=> b!371641 (= e!226793 tp_is_empty!8791)))

(declare-fun b!371642 () Bool)

(declare-fun res!209053 () Bool)

(assert (=> b!371642 (=> (not res!209053) (not e!226792))))

(declare-datatypes ((List!5739 0))(
  ( (Nil!5736) (Cons!5735 (h!6591 (_ BitVec 64)) (t!10897 List!5739)) )
))
(declare-fun arrayNoDuplicates!0 (array!21493 (_ BitVec 32) List!5739) Bool)

(assert (=> b!371642 (= res!209053 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5736))))

(declare-fun b!371643 () Bool)

(assert (=> b!371643 (= e!226789 (and e!226794 mapRes!14751))))

(declare-fun condMapEmpty!14751 () Bool)

(declare-fun mapDefault!14751 () ValueCell!4052)

