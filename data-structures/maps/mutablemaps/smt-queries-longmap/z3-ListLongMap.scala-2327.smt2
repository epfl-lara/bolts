; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37434 () Bool)

(assert start!37434)

(declare-fun b_free!8553 () Bool)

(declare-fun b_next!8553 () Bool)

(assert (=> start!37434 (= b_free!8553 (not b_next!8553))))

(declare-fun tp!30375 () Bool)

(declare-fun b_and!15813 () Bool)

(assert (=> start!37434 (= tp!30375 b_and!15813)))

(declare-fun b!380695 () Bool)

(declare-fun e!231523 () Bool)

(assert (=> b!380695 (= e!231523 true)))

(declare-datatypes ((V!13373 0))(
  ( (V!13374 (val!4645 Int)) )
))
(declare-datatypes ((tuple2!6190 0))(
  ( (tuple2!6191 (_1!3105 (_ BitVec 64)) (_2!3105 V!13373)) )
))
(declare-datatypes ((List!6061 0))(
  ( (Nil!6058) (Cons!6057 (h!6913 tuple2!6190) (t!11219 List!6061)) )
))
(declare-datatypes ((ListLongMap!5117 0))(
  ( (ListLongMap!5118 (toList!2574 List!6061)) )
))
(declare-fun lt!178390 () ListLongMap!5117)

(declare-fun lt!178395 () ListLongMap!5117)

(assert (=> b!380695 (= lt!178390 lt!178395)))

(declare-fun res!216267 () Bool)

(declare-fun e!231525 () Bool)

(assert (=> start!37434 (=> (not res!216267) (not e!231525))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37434 (= res!216267 (validMask!0 mask!970))))

(assert (=> start!37434 e!231525))

(declare-datatypes ((ValueCell!4257 0))(
  ( (ValueCellFull!4257 (v!6838 V!13373)) (EmptyCell!4257) )
))
(declare-datatypes ((array!22297 0))(
  ( (array!22298 (arr!10614 (Array (_ BitVec 32) ValueCell!4257)) (size!10966 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22297)

(declare-fun e!231522 () Bool)

(declare-fun array_inv!7804 (array!22297) Bool)

(assert (=> start!37434 (and (array_inv!7804 _values!506) e!231522)))

(assert (=> start!37434 tp!30375))

(assert (=> start!37434 true))

(declare-fun tp_is_empty!9201 () Bool)

(assert (=> start!37434 tp_is_empty!9201))

(declare-datatypes ((array!22299 0))(
  ( (array!22300 (arr!10615 (Array (_ BitVec 32) (_ BitVec 64))) (size!10967 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22299)

(declare-fun array_inv!7805 (array!22299) Bool)

(assert (=> start!37434 (array_inv!7805 _keys!658)))

(declare-fun b!380696 () Bool)

(declare-fun e!231520 () Bool)

(assert (=> b!380696 (= e!231520 tp_is_empty!9201)))

(declare-fun b!380697 () Bool)

(declare-fun e!231524 () Bool)

(assert (=> b!380697 (= e!231525 e!231524)))

(declare-fun res!216263 () Bool)

(assert (=> b!380697 (=> (not res!216263) (not e!231524))))

(declare-fun lt!178391 () array!22299)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22299 (_ BitVec 32)) Bool)

(assert (=> b!380697 (= res!216263 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178391 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380697 (= lt!178391 (array!22300 (store (arr!10615 _keys!658) i!548 k0!778) (size!10967 _keys!658)))))

(declare-fun b!380698 () Bool)

(declare-fun res!216271 () Bool)

(assert (=> b!380698 (=> (not res!216271) (not e!231525))))

(declare-datatypes ((List!6062 0))(
  ( (Nil!6059) (Cons!6058 (h!6914 (_ BitVec 64)) (t!11220 List!6062)) )
))
(declare-fun arrayNoDuplicates!0 (array!22299 (_ BitVec 32) List!6062) Bool)

(assert (=> b!380698 (= res!216271 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6059))))

(declare-fun b!380699 () Bool)

(declare-fun res!216262 () Bool)

(assert (=> b!380699 (=> (not res!216262) (not e!231525))))

(assert (=> b!380699 (= res!216262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380700 () Bool)

(declare-fun res!216268 () Bool)

(assert (=> b!380700 (=> (not res!216268) (not e!231525))))

(assert (=> b!380700 (= res!216268 (or (= (select (arr!10615 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10615 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380701 () Bool)

(declare-fun res!216272 () Bool)

(assert (=> b!380701 (=> (not res!216272) (not e!231525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380701 (= res!216272 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!15366 () Bool)

(declare-fun mapRes!15366 () Bool)

(assert (=> mapIsEmpty!15366 mapRes!15366))

(declare-fun b!380702 () Bool)

(declare-fun res!216266 () Bool)

(assert (=> b!380702 (=> (not res!216266) (not e!231525))))

(assert (=> b!380702 (= res!216266 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10967 _keys!658))))))

(declare-fun b!380703 () Bool)

(declare-fun e!231519 () Bool)

(assert (=> b!380703 (= e!231519 tp_is_empty!9201)))

(declare-fun b!380704 () Bool)

(assert (=> b!380704 (= e!231524 (not e!231523))))

(declare-fun res!216264 () Bool)

(assert (=> b!380704 (=> res!216264 e!231523)))

(declare-fun lt!178392 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380704 (= res!216264 (or (and (not lt!178392) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178392) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178392)))))

(assert (=> b!380704 (= lt!178392 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!178389 () ListLongMap!5117)

(declare-fun zeroValue!472 () V!13373)

(declare-fun minValue!472 () V!13373)

(declare-fun getCurrentListMap!1997 (array!22299 array!22297 (_ BitVec 32) (_ BitVec 32) V!13373 V!13373 (_ BitVec 32) Int) ListLongMap!5117)

(assert (=> b!380704 (= lt!178389 (getCurrentListMap!1997 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178393 () array!22297)

(assert (=> b!380704 (= lt!178390 (getCurrentListMap!1997 lt!178391 lt!178393 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178394 () ListLongMap!5117)

(assert (=> b!380704 (and (= lt!178395 lt!178394) (= lt!178394 lt!178395))))

(declare-fun v!373 () V!13373)

(declare-fun lt!178396 () ListLongMap!5117)

(declare-fun +!915 (ListLongMap!5117 tuple2!6190) ListLongMap!5117)

(assert (=> b!380704 (= lt!178394 (+!915 lt!178396 (tuple2!6191 k0!778 v!373)))))

(declare-datatypes ((Unit!11723 0))(
  ( (Unit!11724) )
))
(declare-fun lt!178388 () Unit!11723)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!148 (array!22299 array!22297 (_ BitVec 32) (_ BitVec 32) V!13373 V!13373 (_ BitVec 32) (_ BitVec 64) V!13373 (_ BitVec 32) Int) Unit!11723)

(assert (=> b!380704 (= lt!178388 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!148 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!815 (array!22299 array!22297 (_ BitVec 32) (_ BitVec 32) V!13373 V!13373 (_ BitVec 32) Int) ListLongMap!5117)

(assert (=> b!380704 (= lt!178395 (getCurrentListMapNoExtraKeys!815 lt!178391 lt!178393 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380704 (= lt!178393 (array!22298 (store (arr!10614 _values!506) i!548 (ValueCellFull!4257 v!373)) (size!10966 _values!506)))))

(assert (=> b!380704 (= lt!178396 (getCurrentListMapNoExtraKeys!815 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!380705 () Bool)

(declare-fun res!216270 () Bool)

(assert (=> b!380705 (=> (not res!216270) (not e!231525))))

(assert (=> b!380705 (= res!216270 (and (= (size!10966 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10967 _keys!658) (size!10966 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15366 () Bool)

(declare-fun tp!30374 () Bool)

(assert (=> mapNonEmpty!15366 (= mapRes!15366 (and tp!30374 e!231520))))

(declare-fun mapKey!15366 () (_ BitVec 32))

(declare-fun mapValue!15366 () ValueCell!4257)

(declare-fun mapRest!15366 () (Array (_ BitVec 32) ValueCell!4257))

(assert (=> mapNonEmpty!15366 (= (arr!10614 _values!506) (store mapRest!15366 mapKey!15366 mapValue!15366))))

(declare-fun b!380706 () Bool)

(declare-fun res!216265 () Bool)

(assert (=> b!380706 (=> (not res!216265) (not e!231524))))

(assert (=> b!380706 (= res!216265 (arrayNoDuplicates!0 lt!178391 #b00000000000000000000000000000000 Nil!6059))))

(declare-fun b!380707 () Bool)

(assert (=> b!380707 (= e!231522 (and e!231519 mapRes!15366))))

(declare-fun condMapEmpty!15366 () Bool)

(declare-fun mapDefault!15366 () ValueCell!4257)

(assert (=> b!380707 (= condMapEmpty!15366 (= (arr!10614 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4257)) mapDefault!15366)))))

(declare-fun b!380708 () Bool)

(declare-fun res!216269 () Bool)

(assert (=> b!380708 (=> (not res!216269) (not e!231525))))

(declare-fun arrayContainsKey!0 (array!22299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380708 (= res!216269 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37434 res!216267) b!380705))

(assert (= (and b!380705 res!216270) b!380699))

(assert (= (and b!380699 res!216262) b!380698))

(assert (= (and b!380698 res!216271) b!380702))

(assert (= (and b!380702 res!216266) b!380701))

(assert (= (and b!380701 res!216272) b!380700))

(assert (= (and b!380700 res!216268) b!380708))

(assert (= (and b!380708 res!216269) b!380697))

(assert (= (and b!380697 res!216263) b!380706))

(assert (= (and b!380706 res!216265) b!380704))

(assert (= (and b!380704 (not res!216264)) b!380695))

(assert (= (and b!380707 condMapEmpty!15366) mapIsEmpty!15366))

(assert (= (and b!380707 (not condMapEmpty!15366)) mapNonEmpty!15366))

(get-info :version)

(assert (= (and mapNonEmpty!15366 ((_ is ValueCellFull!4257) mapValue!15366)) b!380696))

(assert (= (and b!380707 ((_ is ValueCellFull!4257) mapDefault!15366)) b!380703))

(assert (= start!37434 b!380707))

(declare-fun m!377707 () Bool)

(assert (=> b!380701 m!377707))

(declare-fun m!377709 () Bool)

(assert (=> b!380704 m!377709))

(declare-fun m!377711 () Bool)

(assert (=> b!380704 m!377711))

(declare-fun m!377713 () Bool)

(assert (=> b!380704 m!377713))

(declare-fun m!377715 () Bool)

(assert (=> b!380704 m!377715))

(declare-fun m!377717 () Bool)

(assert (=> b!380704 m!377717))

(declare-fun m!377719 () Bool)

(assert (=> b!380704 m!377719))

(declare-fun m!377721 () Bool)

(assert (=> b!380704 m!377721))

(declare-fun m!377723 () Bool)

(assert (=> b!380697 m!377723))

(declare-fun m!377725 () Bool)

(assert (=> b!380697 m!377725))

(declare-fun m!377727 () Bool)

(assert (=> b!380699 m!377727))

(declare-fun m!377729 () Bool)

(assert (=> start!37434 m!377729))

(declare-fun m!377731 () Bool)

(assert (=> start!37434 m!377731))

(declare-fun m!377733 () Bool)

(assert (=> start!37434 m!377733))

(declare-fun m!377735 () Bool)

(assert (=> mapNonEmpty!15366 m!377735))

(declare-fun m!377737 () Bool)

(assert (=> b!380708 m!377737))

(declare-fun m!377739 () Bool)

(assert (=> b!380706 m!377739))

(declare-fun m!377741 () Bool)

(assert (=> b!380700 m!377741))

(declare-fun m!377743 () Bool)

(assert (=> b!380698 m!377743))

(check-sat b_and!15813 (not b!380698) (not start!37434) (not b_next!8553) (not mapNonEmpty!15366) (not b!380699) (not b!380697) (not b!380706) tp_is_empty!9201 (not b!380708) (not b!380704) (not b!380701))
(check-sat b_and!15813 (not b_next!8553))
