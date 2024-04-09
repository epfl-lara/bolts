; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37584 () Bool)

(assert start!37584)

(declare-fun b_free!8703 () Bool)

(declare-fun b_next!8703 () Bool)

(assert (=> start!37584 (= b_free!8703 (not b_next!8703))))

(declare-fun tp!30824 () Bool)

(declare-fun b_and!15963 () Bool)

(assert (=> start!37584 (= tp!30824 b_and!15963)))

(declare-fun b!383845 () Bool)

(declare-fun e!233099 () Bool)

(declare-fun e!233098 () Bool)

(assert (=> b!383845 (= e!233099 e!233098)))

(declare-fun res!218737 () Bool)

(assert (=> b!383845 (=> (not res!218737) (not e!233098))))

(declare-datatypes ((array!22593 0))(
  ( (array!22594 (arr!10762 (Array (_ BitVec 32) (_ BitVec 64))) (size!11114 (_ BitVec 32))) )
))
(declare-fun lt!180558 () array!22593)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22593 (_ BitVec 32)) Bool)

(assert (=> b!383845 (= res!218737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180558 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22593)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383845 (= lt!180558 (array!22594 (store (arr!10762 _keys!658) i!548 k0!778) (size!11114 _keys!658)))))

(declare-fun b!383846 () Bool)

(declare-fun res!218740 () Bool)

(assert (=> b!383846 (=> (not res!218740) (not e!233099))))

(declare-fun arrayContainsKey!0 (array!22593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383846 (= res!218740 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!383847 () Bool)

(declare-fun e!233096 () Bool)

(declare-fun tp_is_empty!9351 () Bool)

(assert (=> b!383847 (= e!233096 tp_is_empty!9351)))

(declare-fun mapNonEmpty!15591 () Bool)

(declare-fun mapRes!15591 () Bool)

(declare-fun tp!30825 () Bool)

(assert (=> mapNonEmpty!15591 (= mapRes!15591 (and tp!30825 e!233096))))

(declare-fun mapKey!15591 () (_ BitVec 32))

(declare-datatypes ((V!13573 0))(
  ( (V!13574 (val!4720 Int)) )
))
(declare-datatypes ((ValueCell!4332 0))(
  ( (ValueCellFull!4332 (v!6913 V!13573)) (EmptyCell!4332) )
))
(declare-datatypes ((array!22595 0))(
  ( (array!22596 (arr!10763 (Array (_ BitVec 32) ValueCell!4332)) (size!11115 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22595)

(declare-fun mapValue!15591 () ValueCell!4332)

(declare-fun mapRest!15591 () (Array (_ BitVec 32) ValueCell!4332))

(assert (=> mapNonEmpty!15591 (= (arr!10763 _values!506) (store mapRest!15591 mapKey!15591 mapValue!15591))))

(declare-fun b!383848 () Bool)

(declare-fun e!233097 () Bool)

(assert (=> b!383848 (= e!233097 true)))

(declare-datatypes ((tuple2!6308 0))(
  ( (tuple2!6309 (_1!3164 (_ BitVec 64)) (_2!3164 V!13573)) )
))
(declare-datatypes ((List!6176 0))(
  ( (Nil!6173) (Cons!6172 (h!7028 tuple2!6308) (t!11334 List!6176)) )
))
(declare-datatypes ((ListLongMap!5235 0))(
  ( (ListLongMap!5236 (toList!2633 List!6176)) )
))
(declare-fun lt!180559 () ListLongMap!5235)

(declare-fun lt!180554 () ListLongMap!5235)

(declare-fun lt!180555 () tuple2!6308)

(declare-fun +!969 (ListLongMap!5235 tuple2!6308) ListLongMap!5235)

(assert (=> b!383848 (= lt!180559 (+!969 lt!180554 lt!180555))))

(declare-fun lt!180552 () ListLongMap!5235)

(declare-fun lt!180557 () ListLongMap!5235)

(assert (=> b!383848 (= lt!180552 lt!180557)))

(declare-fun res!218745 () Bool)

(assert (=> start!37584 (=> (not res!218745) (not e!233099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37584 (= res!218745 (validMask!0 mask!970))))

(assert (=> start!37584 e!233099))

(declare-fun e!233094 () Bool)

(declare-fun array_inv!7906 (array!22595) Bool)

(assert (=> start!37584 (and (array_inv!7906 _values!506) e!233094)))

(assert (=> start!37584 tp!30824))

(assert (=> start!37584 true))

(assert (=> start!37584 tp_is_empty!9351))

(declare-fun array_inv!7907 (array!22593) Bool)

(assert (=> start!37584 (array_inv!7907 _keys!658)))

(declare-fun b!383849 () Bool)

(declare-fun res!218743 () Bool)

(assert (=> b!383849 (=> (not res!218743) (not e!233099))))

(assert (=> b!383849 (= res!218743 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11114 _keys!658))))))

(declare-fun b!383850 () Bool)

(assert (=> b!383850 (= e!233098 (not e!233097))))

(declare-fun res!218739 () Bool)

(assert (=> b!383850 (=> res!218739 e!233097)))

(declare-fun lt!180551 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383850 (= res!218739 (or (and (not lt!180551) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180551) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180551)))))

(assert (=> b!383850 (= lt!180551 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!472 () V!13573)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13573)

(declare-fun getCurrentListMap!2050 (array!22593 array!22595 (_ BitVec 32) (_ BitVec 32) V!13573 V!13573 (_ BitVec 32) Int) ListLongMap!5235)

(assert (=> b!383850 (= lt!180554 (getCurrentListMap!2050 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180556 () array!22595)

(assert (=> b!383850 (= lt!180552 (getCurrentListMap!2050 lt!180558 lt!180556 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180549 () ListLongMap!5235)

(assert (=> b!383850 (and (= lt!180557 lt!180549) (= lt!180549 lt!180557))))

(declare-fun lt!180550 () ListLongMap!5235)

(assert (=> b!383850 (= lt!180549 (+!969 lt!180550 lt!180555))))

(declare-fun v!373 () V!13573)

(assert (=> b!383850 (= lt!180555 (tuple2!6309 k0!778 v!373))))

(declare-datatypes ((Unit!11829 0))(
  ( (Unit!11830) )
))
(declare-fun lt!180553 () Unit!11829)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!201 (array!22593 array!22595 (_ BitVec 32) (_ BitVec 32) V!13573 V!13573 (_ BitVec 32) (_ BitVec 64) V!13573 (_ BitVec 32) Int) Unit!11829)

(assert (=> b!383850 (= lt!180553 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!201 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!868 (array!22593 array!22595 (_ BitVec 32) (_ BitVec 32) V!13573 V!13573 (_ BitVec 32) Int) ListLongMap!5235)

(assert (=> b!383850 (= lt!180557 (getCurrentListMapNoExtraKeys!868 lt!180558 lt!180556 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383850 (= lt!180556 (array!22596 (store (arr!10763 _values!506) i!548 (ValueCellFull!4332 v!373)) (size!11115 _values!506)))))

(assert (=> b!383850 (= lt!180550 (getCurrentListMapNoExtraKeys!868 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383851 () Bool)

(declare-fun res!218744 () Bool)

(assert (=> b!383851 (=> (not res!218744) (not e!233099))))

(assert (=> b!383851 (= res!218744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383852 () Bool)

(declare-fun res!218746 () Bool)

(assert (=> b!383852 (=> (not res!218746) (not e!233098))))

(declare-datatypes ((List!6177 0))(
  ( (Nil!6174) (Cons!6173 (h!7029 (_ BitVec 64)) (t!11335 List!6177)) )
))
(declare-fun arrayNoDuplicates!0 (array!22593 (_ BitVec 32) List!6177) Bool)

(assert (=> b!383852 (= res!218746 (arrayNoDuplicates!0 lt!180558 #b00000000000000000000000000000000 Nil!6174))))

(declare-fun b!383853 () Bool)

(declare-fun res!218741 () Bool)

(assert (=> b!383853 (=> (not res!218741) (not e!233099))))

(assert (=> b!383853 (= res!218741 (and (= (size!11115 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11114 _keys!658) (size!11115 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383854 () Bool)

(declare-fun res!218742 () Bool)

(assert (=> b!383854 (=> (not res!218742) (not e!233099))))

(assert (=> b!383854 (= res!218742 (or (= (select (arr!10762 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10762 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383855 () Bool)

(declare-fun res!218747 () Bool)

(assert (=> b!383855 (=> (not res!218747) (not e!233099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383855 (= res!218747 (validKeyInArray!0 k0!778))))

(declare-fun b!383856 () Bool)

(declare-fun res!218738 () Bool)

(assert (=> b!383856 (=> (not res!218738) (not e!233099))))

(assert (=> b!383856 (= res!218738 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6174))))

(declare-fun mapIsEmpty!15591 () Bool)

(assert (=> mapIsEmpty!15591 mapRes!15591))

(declare-fun b!383857 () Bool)

(declare-fun e!233095 () Bool)

(assert (=> b!383857 (= e!233094 (and e!233095 mapRes!15591))))

(declare-fun condMapEmpty!15591 () Bool)

(declare-fun mapDefault!15591 () ValueCell!4332)

(assert (=> b!383857 (= condMapEmpty!15591 (= (arr!10763 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4332)) mapDefault!15591)))))

(declare-fun b!383858 () Bool)

(assert (=> b!383858 (= e!233095 tp_is_empty!9351)))

(assert (= (and start!37584 res!218745) b!383853))

(assert (= (and b!383853 res!218741) b!383851))

(assert (= (and b!383851 res!218744) b!383856))

(assert (= (and b!383856 res!218738) b!383849))

(assert (= (and b!383849 res!218743) b!383855))

(assert (= (and b!383855 res!218747) b!383854))

(assert (= (and b!383854 res!218742) b!383846))

(assert (= (and b!383846 res!218740) b!383845))

(assert (= (and b!383845 res!218737) b!383852))

(assert (= (and b!383852 res!218746) b!383850))

(assert (= (and b!383850 (not res!218739)) b!383848))

(assert (= (and b!383857 condMapEmpty!15591) mapIsEmpty!15591))

(assert (= (and b!383857 (not condMapEmpty!15591)) mapNonEmpty!15591))

(get-info :version)

(assert (= (and mapNonEmpty!15591 ((_ is ValueCellFull!4332) mapValue!15591)) b!383847))

(assert (= (and b!383857 ((_ is ValueCellFull!4332) mapDefault!15591)) b!383858))

(assert (= start!37584 b!383857))

(declare-fun m!380601 () Bool)

(assert (=> mapNonEmpty!15591 m!380601))

(declare-fun m!380603 () Bool)

(assert (=> b!383848 m!380603))

(declare-fun m!380605 () Bool)

(assert (=> b!383855 m!380605))

(declare-fun m!380607 () Bool)

(assert (=> start!37584 m!380607))

(declare-fun m!380609 () Bool)

(assert (=> start!37584 m!380609))

(declare-fun m!380611 () Bool)

(assert (=> start!37584 m!380611))

(declare-fun m!380613 () Bool)

(assert (=> b!383852 m!380613))

(declare-fun m!380615 () Bool)

(assert (=> b!383854 m!380615))

(declare-fun m!380617 () Bool)

(assert (=> b!383845 m!380617))

(declare-fun m!380619 () Bool)

(assert (=> b!383845 m!380619))

(declare-fun m!380621 () Bool)

(assert (=> b!383846 m!380621))

(declare-fun m!380623 () Bool)

(assert (=> b!383850 m!380623))

(declare-fun m!380625 () Bool)

(assert (=> b!383850 m!380625))

(declare-fun m!380627 () Bool)

(assert (=> b!383850 m!380627))

(declare-fun m!380629 () Bool)

(assert (=> b!383850 m!380629))

(declare-fun m!380631 () Bool)

(assert (=> b!383850 m!380631))

(declare-fun m!380633 () Bool)

(assert (=> b!383850 m!380633))

(declare-fun m!380635 () Bool)

(assert (=> b!383850 m!380635))

(declare-fun m!380637 () Bool)

(assert (=> b!383851 m!380637))

(declare-fun m!380639 () Bool)

(assert (=> b!383856 m!380639))

(check-sat (not b!383852) (not b!383846) (not mapNonEmpty!15591) (not b!383848) tp_is_empty!9351 (not start!37584) (not b!383851) b_and!15963 (not b!383856) (not b!383855) (not b!383850) (not b!383845) (not b_next!8703))
(check-sat b_and!15963 (not b_next!8703))
