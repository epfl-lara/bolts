; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37344 () Bool)

(assert start!37344)

(declare-fun b_free!8463 () Bool)

(declare-fun b_next!8463 () Bool)

(assert (=> start!37344 (= b_free!8463 (not b_next!8463))))

(declare-fun tp!30104 () Bool)

(declare-fun b_and!15723 () Bool)

(assert (=> start!37344 (= tp!30104 b_and!15723)))

(declare-fun mapNonEmpty!15231 () Bool)

(declare-fun mapRes!15231 () Bool)

(declare-fun tp!30105 () Bool)

(declare-fun e!230451 () Bool)

(assert (=> mapNonEmpty!15231 (= mapRes!15231 (and tp!30105 e!230451))))

(declare-datatypes ((V!13253 0))(
  ( (V!13254 (val!4600 Int)) )
))
(declare-datatypes ((ValueCell!4212 0))(
  ( (ValueCellFull!4212 (v!6793 V!13253)) (EmptyCell!4212) )
))
(declare-fun mapRest!15231 () (Array (_ BitVec 32) ValueCell!4212))

(declare-fun mapKey!15231 () (_ BitVec 32))

(declare-datatypes ((array!22119 0))(
  ( (array!22120 (arr!10525 (Array (_ BitVec 32) ValueCell!4212)) (size!10877 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22119)

(declare-fun mapValue!15231 () ValueCell!4212)

(assert (=> mapNonEmpty!15231 (= (arr!10525 _values!506) (store mapRest!15231 mapKey!15231 mapValue!15231))))

(declare-fun b!378676 () Bool)

(declare-fun e!230448 () Bool)

(declare-fun tp_is_empty!9111 () Bool)

(assert (=> b!378676 (= e!230448 tp_is_empty!9111)))

(declare-fun b!378677 () Bool)

(declare-fun res!214649 () Bool)

(declare-fun e!230446 () Bool)

(assert (=> b!378677 (=> (not res!214649) (not e!230446))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22121 0))(
  ( (array!22122 (arr!10526 (Array (_ BitVec 32) (_ BitVec 64))) (size!10878 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22121)

(assert (=> b!378677 (= res!214649 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10878 _keys!658))))))

(declare-fun b!378678 () Bool)

(declare-fun res!214655 () Bool)

(assert (=> b!378678 (=> (not res!214655) (not e!230446))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378678 (= res!214655 (and (= (size!10877 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10878 _keys!658) (size!10877 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378679 () Bool)

(declare-fun res!214651 () Bool)

(assert (=> b!378679 (=> (not res!214651) (not e!230446))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378679 (= res!214651 (validKeyInArray!0 k0!778))))

(declare-fun b!378680 () Bool)

(declare-fun e!230447 () Bool)

(assert (=> b!378680 (= e!230447 (and e!230448 mapRes!15231))))

(declare-fun condMapEmpty!15231 () Bool)

(declare-fun mapDefault!15231 () ValueCell!4212)

(assert (=> b!378680 (= condMapEmpty!15231 (= (arr!10525 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4212)) mapDefault!15231)))))

(declare-fun b!378681 () Bool)

(declare-fun e!230445 () Bool)

(declare-fun e!230450 () Bool)

(assert (=> b!378681 (= e!230445 e!230450)))

(declare-fun res!214656 () Bool)

(assert (=> b!378681 (=> res!214656 e!230450)))

(assert (=> b!378681 (= res!214656 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6116 0))(
  ( (tuple2!6117 (_1!3068 (_ BitVec 64)) (_2!3068 V!13253)) )
))
(declare-datatypes ((List!5988 0))(
  ( (Nil!5985) (Cons!5984 (h!6840 tuple2!6116) (t!11146 List!5988)) )
))
(declare-datatypes ((ListLongMap!5043 0))(
  ( (ListLongMap!5044 (toList!2537 List!5988)) )
))
(declare-fun lt!176663 () ListLongMap!5043)

(declare-fun lt!176665 () ListLongMap!5043)

(assert (=> b!378681 (= lt!176663 lt!176665)))

(declare-fun lt!176662 () ListLongMap!5043)

(declare-fun lt!176660 () tuple2!6116)

(declare-fun +!878 (ListLongMap!5043 tuple2!6116) ListLongMap!5043)

(assert (=> b!378681 (= lt!176665 (+!878 lt!176662 lt!176660))))

(declare-fun lt!176661 () ListLongMap!5043)

(declare-fun lt!176658 () ListLongMap!5043)

(assert (=> b!378681 (= lt!176661 lt!176658)))

(declare-fun lt!176659 () ListLongMap!5043)

(assert (=> b!378681 (= lt!176658 (+!878 lt!176659 lt!176660))))

(declare-fun lt!176664 () ListLongMap!5043)

(assert (=> b!378681 (= lt!176661 (+!878 lt!176664 lt!176660))))

(declare-fun minValue!472 () V!13253)

(assert (=> b!378681 (= lt!176660 (tuple2!6117 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378682 () Bool)

(declare-fun res!214647 () Bool)

(assert (=> b!378682 (=> (not res!214647) (not e!230446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22121 (_ BitVec 32)) Bool)

(assert (=> b!378682 (= res!214647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!378683 () Bool)

(declare-fun res!214653 () Bool)

(declare-fun e!230444 () Bool)

(assert (=> b!378683 (=> (not res!214653) (not e!230444))))

(declare-fun lt!176655 () array!22121)

(declare-datatypes ((List!5989 0))(
  ( (Nil!5986) (Cons!5985 (h!6841 (_ BitVec 64)) (t!11147 List!5989)) )
))
(declare-fun arrayNoDuplicates!0 (array!22121 (_ BitVec 32) List!5989) Bool)

(assert (=> b!378683 (= res!214653 (arrayNoDuplicates!0 lt!176655 #b00000000000000000000000000000000 Nil!5986))))

(declare-fun b!378684 () Bool)

(assert (=> b!378684 (= e!230451 tp_is_empty!9111)))

(declare-fun b!378675 () Bool)

(declare-fun res!214650 () Bool)

(assert (=> b!378675 (=> (not res!214650) (not e!230446))))

(assert (=> b!378675 (= res!214650 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5986))))

(declare-fun res!214652 () Bool)

(assert (=> start!37344 (=> (not res!214652) (not e!230446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37344 (= res!214652 (validMask!0 mask!970))))

(assert (=> start!37344 e!230446))

(declare-fun array_inv!7744 (array!22119) Bool)

(assert (=> start!37344 (and (array_inv!7744 _values!506) e!230447)))

(assert (=> start!37344 tp!30104))

(assert (=> start!37344 true))

(assert (=> start!37344 tp_is_empty!9111))

(declare-fun array_inv!7745 (array!22121) Bool)

(assert (=> start!37344 (array_inv!7745 _keys!658)))

(declare-fun b!378685 () Bool)

(assert (=> b!378685 (= e!230444 (not e!230445))))

(declare-fun res!214654 () Bool)

(assert (=> b!378685 (=> res!214654 e!230445)))

(assert (=> b!378685 (= res!214654 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13253)

(declare-fun getCurrentListMap!1967 (array!22121 array!22119 (_ BitVec 32) (_ BitVec 32) V!13253 V!13253 (_ BitVec 32) Int) ListLongMap!5043)

(assert (=> b!378685 (= lt!176663 (getCurrentListMap!1967 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176654 () array!22119)

(assert (=> b!378685 (= lt!176661 (getCurrentListMap!1967 lt!176655 lt!176654 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378685 (and (= lt!176664 lt!176659) (= lt!176659 lt!176664))))

(declare-fun lt!176657 () tuple2!6116)

(assert (=> b!378685 (= lt!176659 (+!878 lt!176662 lt!176657))))

(declare-fun v!373 () V!13253)

(assert (=> b!378685 (= lt!176657 (tuple2!6117 k0!778 v!373))))

(declare-datatypes ((Unit!11653 0))(
  ( (Unit!11654) )
))
(declare-fun lt!176653 () Unit!11653)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!118 (array!22121 array!22119 (_ BitVec 32) (_ BitVec 32) V!13253 V!13253 (_ BitVec 32) (_ BitVec 64) V!13253 (_ BitVec 32) Int) Unit!11653)

(assert (=> b!378685 (= lt!176653 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!118 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!785 (array!22121 array!22119 (_ BitVec 32) (_ BitVec 32) V!13253 V!13253 (_ BitVec 32) Int) ListLongMap!5043)

(assert (=> b!378685 (= lt!176664 (getCurrentListMapNoExtraKeys!785 lt!176655 lt!176654 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378685 (= lt!176654 (array!22120 (store (arr!10525 _values!506) i!548 (ValueCellFull!4212 v!373)) (size!10877 _values!506)))))

(assert (=> b!378685 (= lt!176662 (getCurrentListMapNoExtraKeys!785 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378686 () Bool)

(assert (=> b!378686 (= e!230450 true)))

(assert (=> b!378686 (= lt!176658 (+!878 lt!176665 lt!176657))))

(declare-fun lt!176656 () Unit!11653)

(declare-fun addCommutativeForDiffKeys!293 (ListLongMap!5043 (_ BitVec 64) V!13253 (_ BitVec 64) V!13253) Unit!11653)

(assert (=> b!378686 (= lt!176656 (addCommutativeForDiffKeys!293 lt!176662 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378687 () Bool)

(assert (=> b!378687 (= e!230446 e!230444)))

(declare-fun res!214657 () Bool)

(assert (=> b!378687 (=> (not res!214657) (not e!230444))))

(assert (=> b!378687 (= res!214657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176655 mask!970))))

(assert (=> b!378687 (= lt!176655 (array!22122 (store (arr!10526 _keys!658) i!548 k0!778) (size!10878 _keys!658)))))

(declare-fun b!378688 () Bool)

(declare-fun res!214658 () Bool)

(assert (=> b!378688 (=> (not res!214658) (not e!230446))))

(assert (=> b!378688 (= res!214658 (or (= (select (arr!10526 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10526 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378689 () Bool)

(declare-fun res!214648 () Bool)

(assert (=> b!378689 (=> (not res!214648) (not e!230446))))

(declare-fun arrayContainsKey!0 (array!22121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378689 (= res!214648 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15231 () Bool)

(assert (=> mapIsEmpty!15231 mapRes!15231))

(assert (= (and start!37344 res!214652) b!378678))

(assert (= (and b!378678 res!214655) b!378682))

(assert (= (and b!378682 res!214647) b!378675))

(assert (= (and b!378675 res!214650) b!378677))

(assert (= (and b!378677 res!214649) b!378679))

(assert (= (and b!378679 res!214651) b!378688))

(assert (= (and b!378688 res!214658) b!378689))

(assert (= (and b!378689 res!214648) b!378687))

(assert (= (and b!378687 res!214657) b!378683))

(assert (= (and b!378683 res!214653) b!378685))

(assert (= (and b!378685 (not res!214654)) b!378681))

(assert (= (and b!378681 (not res!214656)) b!378686))

(assert (= (and b!378680 condMapEmpty!15231) mapIsEmpty!15231))

(assert (= (and b!378680 (not condMapEmpty!15231)) mapNonEmpty!15231))

(get-info :version)

(assert (= (and mapNonEmpty!15231 ((_ is ValueCellFull!4212) mapValue!15231)) b!378684))

(assert (= (and b!378680 ((_ is ValueCellFull!4212) mapDefault!15231)) b!378676))

(assert (= start!37344 b!378680))

(declare-fun m!375557 () Bool)

(assert (=> b!378682 m!375557))

(declare-fun m!375559 () Bool)

(assert (=> start!37344 m!375559))

(declare-fun m!375561 () Bool)

(assert (=> start!37344 m!375561))

(declare-fun m!375563 () Bool)

(assert (=> start!37344 m!375563))

(declare-fun m!375565 () Bool)

(assert (=> b!378683 m!375565))

(declare-fun m!375567 () Bool)

(assert (=> b!378681 m!375567))

(declare-fun m!375569 () Bool)

(assert (=> b!378681 m!375569))

(declare-fun m!375571 () Bool)

(assert (=> b!378681 m!375571))

(declare-fun m!375573 () Bool)

(assert (=> mapNonEmpty!15231 m!375573))

(declare-fun m!375575 () Bool)

(assert (=> b!378689 m!375575))

(declare-fun m!375577 () Bool)

(assert (=> b!378687 m!375577))

(declare-fun m!375579 () Bool)

(assert (=> b!378687 m!375579))

(declare-fun m!375581 () Bool)

(assert (=> b!378679 m!375581))

(declare-fun m!375583 () Bool)

(assert (=> b!378686 m!375583))

(declare-fun m!375585 () Bool)

(assert (=> b!378686 m!375585))

(declare-fun m!375587 () Bool)

(assert (=> b!378685 m!375587))

(declare-fun m!375589 () Bool)

(assert (=> b!378685 m!375589))

(declare-fun m!375591 () Bool)

(assert (=> b!378685 m!375591))

(declare-fun m!375593 () Bool)

(assert (=> b!378685 m!375593))

(declare-fun m!375595 () Bool)

(assert (=> b!378685 m!375595))

(declare-fun m!375597 () Bool)

(assert (=> b!378685 m!375597))

(declare-fun m!375599 () Bool)

(assert (=> b!378685 m!375599))

(declare-fun m!375601 () Bool)

(assert (=> b!378675 m!375601))

(declare-fun m!375603 () Bool)

(assert (=> b!378688 m!375603))

(check-sat (not mapNonEmpty!15231) (not b!378683) (not b!378686) (not b!378679) (not b!378685) (not b!378682) (not b!378675) (not b!378681) tp_is_empty!9111 (not b!378687) b_and!15723 (not start!37344) (not b_next!8463) (not b!378689))
(check-sat b_and!15723 (not b_next!8463))
