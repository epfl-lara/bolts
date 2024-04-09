; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37788 () Bool)

(assert start!37788)

(declare-fun b_free!8883 () Bool)

(declare-fun b_next!8883 () Bool)

(assert (=> start!37788 (= b_free!8883 (not b_next!8883))))

(declare-fun tp!31401 () Bool)

(declare-fun b_and!16143 () Bool)

(assert (=> start!37788 (= tp!31401 b_and!16143)))

(declare-fun b!387728 () Bool)

(declare-fun res!221710 () Bool)

(declare-fun e!235011 () Bool)

(assert (=> b!387728 (=> (not res!221710) (not e!235011))))

(declare-datatypes ((array!22979 0))(
  ( (array!22980 (arr!10955 (Array (_ BitVec 32) (_ BitVec 64))) (size!11307 (_ BitVec 32))) )
))
(declare-fun lt!182113 () array!22979)

(declare-datatypes ((List!6308 0))(
  ( (Nil!6305) (Cons!6304 (h!7160 (_ BitVec 64)) (t!11466 List!6308)) )
))
(declare-fun arrayNoDuplicates!0 (array!22979 (_ BitVec 32) List!6308) Bool)

(assert (=> b!387728 (= res!221710 (arrayNoDuplicates!0 lt!182113 #b00000000000000000000000000000000 Nil!6305))))

(declare-fun b!387729 () Bool)

(declare-fun res!221711 () Bool)

(declare-fun e!235006 () Bool)

(assert (=> b!387729 (=> (not res!221711) (not e!235006))))

(declare-fun _keys!658 () array!22979)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22979 (_ BitVec 32)) Bool)

(assert (=> b!387729 (= res!221711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387730 () Bool)

(declare-fun res!221707 () Bool)

(assert (=> b!387730 (=> (not res!221707) (not e!235006))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387730 (= res!221707 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387731 () Bool)

(assert (=> b!387731 (= e!235011 false)))

(declare-datatypes ((V!13845 0))(
  ( (V!13846 (val!4822 Int)) )
))
(declare-datatypes ((ValueCell!4434 0))(
  ( (ValueCellFull!4434 (v!7015 V!13845)) (EmptyCell!4434) )
))
(declare-datatypes ((array!22981 0))(
  ( (array!22982 (arr!10956 (Array (_ BitVec 32) ValueCell!4434)) (size!11308 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22981)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6424 0))(
  ( (tuple2!6425 (_1!3222 (_ BitVec 64)) (_2!3222 V!13845)) )
))
(declare-datatypes ((List!6309 0))(
  ( (Nil!6306) (Cons!6305 (h!7161 tuple2!6424) (t!11467 List!6309)) )
))
(declare-datatypes ((ListLongMap!5351 0))(
  ( (ListLongMap!5352 (toList!2691 List!6309)) )
))
(declare-fun lt!182111 () ListLongMap!5351)

(declare-fun zeroValue!472 () V!13845)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13845)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13845)

(declare-fun getCurrentListMapNoExtraKeys!925 (array!22979 array!22981 (_ BitVec 32) (_ BitVec 32) V!13845 V!13845 (_ BitVec 32) Int) ListLongMap!5351)

(assert (=> b!387731 (= lt!182111 (getCurrentListMapNoExtraKeys!925 lt!182113 (array!22982 (store (arr!10956 _values!506) i!548 (ValueCellFull!4434 v!373)) (size!11308 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182112 () ListLongMap!5351)

(assert (=> b!387731 (= lt!182112 (getCurrentListMapNoExtraKeys!925 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387732 () Bool)

(declare-fun res!221706 () Bool)

(assert (=> b!387732 (=> (not res!221706) (not e!235006))))

(assert (=> b!387732 (= res!221706 (or (= (select (arr!10955 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10955 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387733 () Bool)

(declare-fun e!235010 () Bool)

(declare-fun e!235007 () Bool)

(declare-fun mapRes!15897 () Bool)

(assert (=> b!387733 (= e!235010 (and e!235007 mapRes!15897))))

(declare-fun condMapEmpty!15897 () Bool)

(declare-fun mapDefault!15897 () ValueCell!4434)

(assert (=> b!387733 (= condMapEmpty!15897 (= (arr!10956 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4434)) mapDefault!15897)))))

(declare-fun b!387734 () Bool)

(declare-fun res!221708 () Bool)

(assert (=> b!387734 (=> (not res!221708) (not e!235006))))

(assert (=> b!387734 (= res!221708 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6305))))

(declare-fun b!387735 () Bool)

(declare-fun res!221709 () Bool)

(assert (=> b!387735 (=> (not res!221709) (not e!235006))))

(assert (=> b!387735 (= res!221709 (and (= (size!11308 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11307 _keys!658) (size!11308 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387736 () Bool)

(declare-fun e!235009 () Bool)

(declare-fun tp_is_empty!9555 () Bool)

(assert (=> b!387736 (= e!235009 tp_is_empty!9555)))

(declare-fun b!387738 () Bool)

(assert (=> b!387738 (= e!235007 tp_is_empty!9555)))

(declare-fun b!387739 () Bool)

(declare-fun res!221704 () Bool)

(assert (=> b!387739 (=> (not res!221704) (not e!235006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387739 (= res!221704 (validKeyInArray!0 k0!778))))

(declare-fun b!387740 () Bool)

(declare-fun res!221705 () Bool)

(assert (=> b!387740 (=> (not res!221705) (not e!235006))))

(assert (=> b!387740 (= res!221705 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11307 _keys!658))))))

(declare-fun mapIsEmpty!15897 () Bool)

(assert (=> mapIsEmpty!15897 mapRes!15897))

(declare-fun mapNonEmpty!15897 () Bool)

(declare-fun tp!31400 () Bool)

(assert (=> mapNonEmpty!15897 (= mapRes!15897 (and tp!31400 e!235009))))

(declare-fun mapKey!15897 () (_ BitVec 32))

(declare-fun mapRest!15897 () (Array (_ BitVec 32) ValueCell!4434))

(declare-fun mapValue!15897 () ValueCell!4434)

(assert (=> mapNonEmpty!15897 (= (arr!10956 _values!506) (store mapRest!15897 mapKey!15897 mapValue!15897))))

(declare-fun res!221702 () Bool)

(assert (=> start!37788 (=> (not res!221702) (not e!235006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37788 (= res!221702 (validMask!0 mask!970))))

(assert (=> start!37788 e!235006))

(declare-fun array_inv!8030 (array!22981) Bool)

(assert (=> start!37788 (and (array_inv!8030 _values!506) e!235010)))

(assert (=> start!37788 tp!31401))

(assert (=> start!37788 true))

(assert (=> start!37788 tp_is_empty!9555))

(declare-fun array_inv!8031 (array!22979) Bool)

(assert (=> start!37788 (array_inv!8031 _keys!658)))

(declare-fun b!387737 () Bool)

(assert (=> b!387737 (= e!235006 e!235011)))

(declare-fun res!221703 () Bool)

(assert (=> b!387737 (=> (not res!221703) (not e!235011))))

(assert (=> b!387737 (= res!221703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182113 mask!970))))

(assert (=> b!387737 (= lt!182113 (array!22980 (store (arr!10955 _keys!658) i!548 k0!778) (size!11307 _keys!658)))))

(assert (= (and start!37788 res!221702) b!387735))

(assert (= (and b!387735 res!221709) b!387729))

(assert (= (and b!387729 res!221711) b!387734))

(assert (= (and b!387734 res!221708) b!387740))

(assert (= (and b!387740 res!221705) b!387739))

(assert (= (and b!387739 res!221704) b!387732))

(assert (= (and b!387732 res!221706) b!387730))

(assert (= (and b!387730 res!221707) b!387737))

(assert (= (and b!387737 res!221703) b!387728))

(assert (= (and b!387728 res!221710) b!387731))

(assert (= (and b!387733 condMapEmpty!15897) mapIsEmpty!15897))

(assert (= (and b!387733 (not condMapEmpty!15897)) mapNonEmpty!15897))

(get-info :version)

(assert (= (and mapNonEmpty!15897 ((_ is ValueCellFull!4434) mapValue!15897)) b!387736))

(assert (= (and b!387733 ((_ is ValueCellFull!4434) mapDefault!15897)) b!387738))

(assert (= start!37788 b!387733))

(declare-fun m!383771 () Bool)

(assert (=> b!387730 m!383771))

(declare-fun m!383773 () Bool)

(assert (=> mapNonEmpty!15897 m!383773))

(declare-fun m!383775 () Bool)

(assert (=> b!387732 m!383775))

(declare-fun m!383777 () Bool)

(assert (=> start!37788 m!383777))

(declare-fun m!383779 () Bool)

(assert (=> start!37788 m!383779))

(declare-fun m!383781 () Bool)

(assert (=> start!37788 m!383781))

(declare-fun m!383783 () Bool)

(assert (=> b!387728 m!383783))

(declare-fun m!383785 () Bool)

(assert (=> b!387734 m!383785))

(declare-fun m!383787 () Bool)

(assert (=> b!387739 m!383787))

(declare-fun m!383789 () Bool)

(assert (=> b!387729 m!383789))

(declare-fun m!383791 () Bool)

(assert (=> b!387737 m!383791))

(declare-fun m!383793 () Bool)

(assert (=> b!387737 m!383793))

(declare-fun m!383795 () Bool)

(assert (=> b!387731 m!383795))

(declare-fun m!383797 () Bool)

(assert (=> b!387731 m!383797))

(declare-fun m!383799 () Bool)

(assert (=> b!387731 m!383799))

(check-sat b_and!16143 (not b_next!8883) (not mapNonEmpty!15897) (not b!387734) (not b!387730) (not b!387731) tp_is_empty!9555 (not b!387728) (not start!37788) (not b!387739) (not b!387737) (not b!387729))
(check-sat b_and!16143 (not b_next!8883))
