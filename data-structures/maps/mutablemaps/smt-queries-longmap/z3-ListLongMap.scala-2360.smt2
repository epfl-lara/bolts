; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37632 () Bool)

(assert start!37632)

(declare-fun b_free!8751 () Bool)

(declare-fun b_next!8751 () Bool)

(assert (=> start!37632 (= b_free!8751 (not b_next!8751))))

(declare-fun tp!30969 () Bool)

(declare-fun b_and!16011 () Bool)

(assert (=> start!37632 (= tp!30969 b_and!16011)))

(declare-fun b!384862 () Bool)

(declare-fun res!219545 () Bool)

(declare-fun e!233608 () Bool)

(assert (=> b!384862 (=> (not res!219545) (not e!233608))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13637 0))(
  ( (V!13638 (val!4744 Int)) )
))
(declare-datatypes ((ValueCell!4356 0))(
  ( (ValueCellFull!4356 (v!6937 V!13637)) (EmptyCell!4356) )
))
(declare-datatypes ((array!22683 0))(
  ( (array!22684 (arr!10807 (Array (_ BitVec 32) ValueCell!4356)) (size!11159 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22683)

(declare-datatypes ((array!22685 0))(
  ( (array!22686 (arr!10808 (Array (_ BitVec 32) (_ BitVec 64))) (size!11160 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22685)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!384862 (= res!219545 (and (= (size!11159 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11160 _keys!658) (size!11159 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384863 () Bool)

(declare-fun res!219548 () Bool)

(assert (=> b!384863 (=> (not res!219548) (not e!233608))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384863 (= res!219548 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11160 _keys!658))))))

(declare-fun b!384864 () Bool)

(declare-fun res!219546 () Bool)

(assert (=> b!384864 (=> (not res!219546) (not e!233608))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384864 (= res!219546 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!219541 () Bool)

(assert (=> start!37632 (=> (not res!219541) (not e!233608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37632 (= res!219541 (validMask!0 mask!970))))

(assert (=> start!37632 e!233608))

(declare-fun e!233610 () Bool)

(declare-fun array_inv!7938 (array!22683) Bool)

(assert (=> start!37632 (and (array_inv!7938 _values!506) e!233610)))

(assert (=> start!37632 tp!30969))

(assert (=> start!37632 true))

(declare-fun tp_is_empty!9399 () Bool)

(assert (=> start!37632 tp_is_empty!9399))

(declare-fun array_inv!7939 (array!22685) Bool)

(assert (=> start!37632 (array_inv!7939 _keys!658)))

(declare-fun b!384865 () Bool)

(declare-fun e!233613 () Bool)

(assert (=> b!384865 (= e!233608 e!233613)))

(declare-fun res!219540 () Bool)

(assert (=> b!384865 (=> (not res!219540) (not e!233613))))

(declare-fun lt!181335 () array!22685)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22685 (_ BitVec 32)) Bool)

(assert (=> b!384865 (= res!219540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181335 mask!970))))

(assert (=> b!384865 (= lt!181335 (array!22686 (store (arr!10808 _keys!658) i!548 k0!778) (size!11160 _keys!658)))))

(declare-fun b!384866 () Bool)

(declare-fun e!233609 () Bool)

(assert (=> b!384866 (= e!233613 (not e!233609))))

(declare-fun res!219544 () Bool)

(assert (=> b!384866 (=> res!219544 e!233609)))

(declare-fun lt!181338 () Bool)

(assert (=> b!384866 (= res!219544 (or (and (not lt!181338) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181338) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181338)))))

(assert (=> b!384866 (= lt!181338 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6342 0))(
  ( (tuple2!6343 (_1!3181 (_ BitVec 64)) (_2!3181 V!13637)) )
))
(declare-datatypes ((List!6208 0))(
  ( (Nil!6205) (Cons!6204 (h!7060 tuple2!6342) (t!11366 List!6208)) )
))
(declare-datatypes ((ListLongMap!5269 0))(
  ( (ListLongMap!5270 (toList!2650 List!6208)) )
))
(declare-fun lt!181332 () ListLongMap!5269)

(declare-fun zeroValue!472 () V!13637)

(declare-fun minValue!472 () V!13637)

(declare-fun getCurrentListMap!2066 (array!22685 array!22683 (_ BitVec 32) (_ BitVec 32) V!13637 V!13637 (_ BitVec 32) Int) ListLongMap!5269)

(assert (=> b!384866 (= lt!181332 (getCurrentListMap!2066 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181340 () ListLongMap!5269)

(declare-fun lt!181339 () array!22683)

(assert (=> b!384866 (= lt!181340 (getCurrentListMap!2066 lt!181335 lt!181339 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181336 () ListLongMap!5269)

(declare-fun lt!181342 () ListLongMap!5269)

(assert (=> b!384866 (and (= lt!181336 lt!181342) (= lt!181342 lt!181336))))

(declare-fun lt!181341 () ListLongMap!5269)

(declare-fun lt!181337 () tuple2!6342)

(declare-fun +!986 (ListLongMap!5269 tuple2!6342) ListLongMap!5269)

(assert (=> b!384866 (= lt!181342 (+!986 lt!181341 lt!181337))))

(declare-fun v!373 () V!13637)

(assert (=> b!384866 (= lt!181337 (tuple2!6343 k0!778 v!373))))

(declare-datatypes ((Unit!11861 0))(
  ( (Unit!11862) )
))
(declare-fun lt!181334 () Unit!11861)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!217 (array!22685 array!22683 (_ BitVec 32) (_ BitVec 32) V!13637 V!13637 (_ BitVec 32) (_ BitVec 64) V!13637 (_ BitVec 32) Int) Unit!11861)

(assert (=> b!384866 (= lt!181334 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!217 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!884 (array!22685 array!22683 (_ BitVec 32) (_ BitVec 32) V!13637 V!13637 (_ BitVec 32) Int) ListLongMap!5269)

(assert (=> b!384866 (= lt!181336 (getCurrentListMapNoExtraKeys!884 lt!181335 lt!181339 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384866 (= lt!181339 (array!22684 (store (arr!10807 _values!506) i!548 (ValueCellFull!4356 v!373)) (size!11159 _values!506)))))

(assert (=> b!384866 (= lt!181341 (getCurrentListMapNoExtraKeys!884 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384867 () Bool)

(declare-fun res!219539 () Bool)

(assert (=> b!384867 (=> (not res!219539) (not e!233608))))

(assert (=> b!384867 (= res!219539 (or (= (select (arr!10808 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10808 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15663 () Bool)

(declare-fun mapRes!15663 () Bool)

(assert (=> mapIsEmpty!15663 mapRes!15663))

(declare-fun mapNonEmpty!15663 () Bool)

(declare-fun tp!30968 () Bool)

(declare-fun e!233607 () Bool)

(assert (=> mapNonEmpty!15663 (= mapRes!15663 (and tp!30968 e!233607))))

(declare-fun mapKey!15663 () (_ BitVec 32))

(declare-fun mapValue!15663 () ValueCell!4356)

(declare-fun mapRest!15663 () (Array (_ BitVec 32) ValueCell!4356))

(assert (=> mapNonEmpty!15663 (= (arr!10807 _values!506) (store mapRest!15663 mapKey!15663 mapValue!15663))))

(declare-fun b!384868 () Bool)

(declare-fun res!219538 () Bool)

(assert (=> b!384868 (=> (not res!219538) (not e!233608))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384868 (= res!219538 (validKeyInArray!0 k0!778))))

(declare-fun b!384869 () Bool)

(assert (=> b!384869 (= e!233609 true)))

(declare-fun lt!181333 () ListLongMap!5269)

(assert (=> b!384869 (= lt!181333 (+!986 lt!181332 lt!181337))))

(assert (=> b!384869 (= lt!181340 lt!181336)))

(declare-fun b!384870 () Bool)

(declare-fun res!219542 () Bool)

(assert (=> b!384870 (=> (not res!219542) (not e!233608))))

(declare-datatypes ((List!6209 0))(
  ( (Nil!6206) (Cons!6205 (h!7061 (_ BitVec 64)) (t!11367 List!6209)) )
))
(declare-fun arrayNoDuplicates!0 (array!22685 (_ BitVec 32) List!6209) Bool)

(assert (=> b!384870 (= res!219542 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6206))))

(declare-fun b!384871 () Bool)

(declare-fun e!233611 () Bool)

(assert (=> b!384871 (= e!233610 (and e!233611 mapRes!15663))))

(declare-fun condMapEmpty!15663 () Bool)

(declare-fun mapDefault!15663 () ValueCell!4356)

(assert (=> b!384871 (= condMapEmpty!15663 (= (arr!10807 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4356)) mapDefault!15663)))))

(declare-fun b!384872 () Bool)

(assert (=> b!384872 (= e!233611 tp_is_empty!9399)))

(declare-fun b!384873 () Bool)

(declare-fun res!219547 () Bool)

(assert (=> b!384873 (=> (not res!219547) (not e!233608))))

(assert (=> b!384873 (= res!219547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384874 () Bool)

(assert (=> b!384874 (= e!233607 tp_is_empty!9399)))

(declare-fun b!384875 () Bool)

(declare-fun res!219543 () Bool)

(assert (=> b!384875 (=> (not res!219543) (not e!233613))))

(assert (=> b!384875 (= res!219543 (arrayNoDuplicates!0 lt!181335 #b00000000000000000000000000000000 Nil!6206))))

(assert (= (and start!37632 res!219541) b!384862))

(assert (= (and b!384862 res!219545) b!384873))

(assert (= (and b!384873 res!219547) b!384870))

(assert (= (and b!384870 res!219542) b!384863))

(assert (= (and b!384863 res!219548) b!384868))

(assert (= (and b!384868 res!219538) b!384867))

(assert (= (and b!384867 res!219539) b!384864))

(assert (= (and b!384864 res!219546) b!384865))

(assert (= (and b!384865 res!219540) b!384875))

(assert (= (and b!384875 res!219543) b!384866))

(assert (= (and b!384866 (not res!219544)) b!384869))

(assert (= (and b!384871 condMapEmpty!15663) mapIsEmpty!15663))

(assert (= (and b!384871 (not condMapEmpty!15663)) mapNonEmpty!15663))

(get-info :version)

(assert (= (and mapNonEmpty!15663 ((_ is ValueCellFull!4356) mapValue!15663)) b!384874))

(assert (= (and b!384871 ((_ is ValueCellFull!4356) mapDefault!15663)) b!384872))

(assert (= start!37632 b!384871))

(declare-fun m!381561 () Bool)

(assert (=> b!384867 m!381561))

(declare-fun m!381563 () Bool)

(assert (=> mapNonEmpty!15663 m!381563))

(declare-fun m!381565 () Bool)

(assert (=> b!384866 m!381565))

(declare-fun m!381567 () Bool)

(assert (=> b!384866 m!381567))

(declare-fun m!381569 () Bool)

(assert (=> b!384866 m!381569))

(declare-fun m!381571 () Bool)

(assert (=> b!384866 m!381571))

(declare-fun m!381573 () Bool)

(assert (=> b!384866 m!381573))

(declare-fun m!381575 () Bool)

(assert (=> b!384866 m!381575))

(declare-fun m!381577 () Bool)

(assert (=> b!384866 m!381577))

(declare-fun m!381579 () Bool)

(assert (=> b!384865 m!381579))

(declare-fun m!381581 () Bool)

(assert (=> b!384865 m!381581))

(declare-fun m!381583 () Bool)

(assert (=> b!384875 m!381583))

(declare-fun m!381585 () Bool)

(assert (=> b!384868 m!381585))

(declare-fun m!381587 () Bool)

(assert (=> b!384869 m!381587))

(declare-fun m!381589 () Bool)

(assert (=> b!384864 m!381589))

(declare-fun m!381591 () Bool)

(assert (=> start!37632 m!381591))

(declare-fun m!381593 () Bool)

(assert (=> start!37632 m!381593))

(declare-fun m!381595 () Bool)

(assert (=> start!37632 m!381595))

(declare-fun m!381597 () Bool)

(assert (=> b!384873 m!381597))

(declare-fun m!381599 () Bool)

(assert (=> b!384870 m!381599))

(check-sat (not b!384865) tp_is_empty!9399 (not b!384868) (not b_next!8751) (not mapNonEmpty!15663) b_and!16011 (not b!384869) (not b!384873) (not b!384864) (not b!384870) (not start!37632) (not b!384866) (not b!384875))
(check-sat b_and!16011 (not b_next!8751))
