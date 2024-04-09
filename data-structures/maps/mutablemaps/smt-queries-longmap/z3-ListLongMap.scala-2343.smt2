; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37530 () Bool)

(assert start!37530)

(declare-fun b_free!8649 () Bool)

(declare-fun b_next!8649 () Bool)

(assert (=> start!37530 (= b_free!8649 (not b_next!8649))))

(declare-fun tp!30663 () Bool)

(declare-fun b_and!15909 () Bool)

(assert (=> start!37530 (= tp!30663 b_and!15909)))

(declare-fun b!382711 () Bool)

(declare-fun e!232529 () Bool)

(declare-fun tp_is_empty!9297 () Bool)

(assert (=> b!382711 (= e!232529 tp_is_empty!9297)))

(declare-fun b!382712 () Bool)

(declare-fun res!217852 () Bool)

(declare-fun e!232527 () Bool)

(assert (=> b!382712 (=> (not res!217852) (not e!232527))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382712 (= res!217852 (validKeyInArray!0 k0!778))))

(declare-fun b!382713 () Bool)

(declare-fun res!217851 () Bool)

(assert (=> b!382713 (=> (not res!217851) (not e!232527))))

(declare-datatypes ((array!22485 0))(
  ( (array!22486 (arr!10708 (Array (_ BitVec 32) (_ BitVec 64))) (size!11060 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22485)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22485 (_ BitVec 32)) Bool)

(assert (=> b!382713 (= res!217851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382714 () Bool)

(declare-fun res!217853 () Bool)

(assert (=> b!382714 (=> (not res!217853) (not e!232527))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382714 (= res!217853 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11060 _keys!658))))))

(declare-fun b!382715 () Bool)

(declare-fun res!217846 () Bool)

(assert (=> b!382715 (=> (not res!217846) (not e!232527))))

(declare-datatypes ((List!6131 0))(
  ( (Nil!6128) (Cons!6127 (h!6983 (_ BitVec 64)) (t!11289 List!6131)) )
))
(declare-fun arrayNoDuplicates!0 (array!22485 (_ BitVec 32) List!6131) Bool)

(assert (=> b!382715 (= res!217846 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6128))))

(declare-fun b!382716 () Bool)

(declare-fun res!217854 () Bool)

(assert (=> b!382716 (=> (not res!217854) (not e!232527))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13501 0))(
  ( (V!13502 (val!4693 Int)) )
))
(declare-datatypes ((ValueCell!4305 0))(
  ( (ValueCellFull!4305 (v!6886 V!13501)) (EmptyCell!4305) )
))
(declare-datatypes ((array!22487 0))(
  ( (array!22488 (arr!10709 (Array (_ BitVec 32) ValueCell!4305)) (size!11061 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22487)

(assert (=> b!382716 (= res!217854 (and (= (size!11061 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11060 _keys!658) (size!11061 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15510 () Bool)

(declare-fun mapRes!15510 () Bool)

(assert (=> mapIsEmpty!15510 mapRes!15510))

(declare-fun b!382717 () Bool)

(declare-fun res!217848 () Bool)

(assert (=> b!382717 (=> (not res!217848) (not e!232527))))

(declare-fun arrayContainsKey!0 (array!22485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382717 (= res!217848 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!382718 () Bool)

(declare-fun e!232528 () Bool)

(assert (=> b!382718 (= e!232528 true)))

(declare-datatypes ((tuple2!6264 0))(
  ( (tuple2!6265 (_1!3142 (_ BitVec 64)) (_2!3142 V!13501)) )
))
(declare-datatypes ((List!6132 0))(
  ( (Nil!6129) (Cons!6128 (h!6984 tuple2!6264) (t!11290 List!6132)) )
))
(declare-datatypes ((ListLongMap!5191 0))(
  ( (ListLongMap!5192 (toList!2611 List!6132)) )
))
(declare-fun lt!179691 () ListLongMap!5191)

(declare-fun lt!179687 () ListLongMap!5191)

(assert (=> b!382718 (= lt!179691 lt!179687)))

(declare-fun b!382719 () Bool)

(declare-fun e!232533 () Bool)

(assert (=> b!382719 (= e!232533 (not e!232528))))

(declare-fun res!217849 () Bool)

(assert (=> b!382719 (=> res!217849 e!232528)))

(declare-fun lt!179689 () Bool)

(assert (=> b!382719 (= res!217849 (or (and (not lt!179689) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179689) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179689)))))

(assert (=> b!382719 (= lt!179689 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!179685 () ListLongMap!5191)

(declare-fun zeroValue!472 () V!13501)

(declare-fun minValue!472 () V!13501)

(declare-fun getCurrentListMap!2029 (array!22485 array!22487 (_ BitVec 32) (_ BitVec 32) V!13501 V!13501 (_ BitVec 32) Int) ListLongMap!5191)

(assert (=> b!382719 (= lt!179685 (getCurrentListMap!2029 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179692 () array!22485)

(declare-fun lt!179684 () array!22487)

(assert (=> b!382719 (= lt!179691 (getCurrentListMap!2029 lt!179692 lt!179684 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179686 () ListLongMap!5191)

(assert (=> b!382719 (and (= lt!179687 lt!179686) (= lt!179686 lt!179687))))

(declare-fun v!373 () V!13501)

(declare-fun lt!179688 () ListLongMap!5191)

(declare-fun +!947 (ListLongMap!5191 tuple2!6264) ListLongMap!5191)

(assert (=> b!382719 (= lt!179686 (+!947 lt!179688 (tuple2!6265 k0!778 v!373)))))

(declare-datatypes ((Unit!11787 0))(
  ( (Unit!11788) )
))
(declare-fun lt!179690 () Unit!11787)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!180 (array!22485 array!22487 (_ BitVec 32) (_ BitVec 32) V!13501 V!13501 (_ BitVec 32) (_ BitVec 64) V!13501 (_ BitVec 32) Int) Unit!11787)

(assert (=> b!382719 (= lt!179690 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!180 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!847 (array!22485 array!22487 (_ BitVec 32) (_ BitVec 32) V!13501 V!13501 (_ BitVec 32) Int) ListLongMap!5191)

(assert (=> b!382719 (= lt!179687 (getCurrentListMapNoExtraKeys!847 lt!179692 lt!179684 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382719 (= lt!179684 (array!22488 (store (arr!10709 _values!506) i!548 (ValueCellFull!4305 v!373)) (size!11061 _values!506)))))

(assert (=> b!382719 (= lt!179688 (getCurrentListMapNoExtraKeys!847 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382720 () Bool)

(declare-fun e!232531 () Bool)

(assert (=> b!382720 (= e!232531 (and e!232529 mapRes!15510))))

(declare-fun condMapEmpty!15510 () Bool)

(declare-fun mapDefault!15510 () ValueCell!4305)

(assert (=> b!382720 (= condMapEmpty!15510 (= (arr!10709 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4305)) mapDefault!15510)))))

(declare-fun mapNonEmpty!15510 () Bool)

(declare-fun tp!30662 () Bool)

(declare-fun e!232530 () Bool)

(assert (=> mapNonEmpty!15510 (= mapRes!15510 (and tp!30662 e!232530))))

(declare-fun mapValue!15510 () ValueCell!4305)

(declare-fun mapKey!15510 () (_ BitVec 32))

(declare-fun mapRest!15510 () (Array (_ BitVec 32) ValueCell!4305))

(assert (=> mapNonEmpty!15510 (= (arr!10709 _values!506) (store mapRest!15510 mapKey!15510 mapValue!15510))))

(declare-fun b!382722 () Bool)

(assert (=> b!382722 (= e!232530 tp_is_empty!9297)))

(declare-fun res!217856 () Bool)

(assert (=> start!37530 (=> (not res!217856) (not e!232527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37530 (= res!217856 (validMask!0 mask!970))))

(assert (=> start!37530 e!232527))

(declare-fun array_inv!7864 (array!22487) Bool)

(assert (=> start!37530 (and (array_inv!7864 _values!506) e!232531)))

(assert (=> start!37530 tp!30663))

(assert (=> start!37530 true))

(assert (=> start!37530 tp_is_empty!9297))

(declare-fun array_inv!7865 (array!22485) Bool)

(assert (=> start!37530 (array_inv!7865 _keys!658)))

(declare-fun b!382721 () Bool)

(assert (=> b!382721 (= e!232527 e!232533)))

(declare-fun res!217855 () Bool)

(assert (=> b!382721 (=> (not res!217855) (not e!232533))))

(assert (=> b!382721 (= res!217855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179692 mask!970))))

(assert (=> b!382721 (= lt!179692 (array!22486 (store (arr!10708 _keys!658) i!548 k0!778) (size!11060 _keys!658)))))

(declare-fun b!382723 () Bool)

(declare-fun res!217850 () Bool)

(assert (=> b!382723 (=> (not res!217850) (not e!232533))))

(assert (=> b!382723 (= res!217850 (arrayNoDuplicates!0 lt!179692 #b00000000000000000000000000000000 Nil!6128))))

(declare-fun b!382724 () Bool)

(declare-fun res!217847 () Bool)

(assert (=> b!382724 (=> (not res!217847) (not e!232527))))

(assert (=> b!382724 (= res!217847 (or (= (select (arr!10708 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10708 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!37530 res!217856) b!382716))

(assert (= (and b!382716 res!217854) b!382713))

(assert (= (and b!382713 res!217851) b!382715))

(assert (= (and b!382715 res!217846) b!382714))

(assert (= (and b!382714 res!217853) b!382712))

(assert (= (and b!382712 res!217852) b!382724))

(assert (= (and b!382724 res!217847) b!382717))

(assert (= (and b!382717 res!217848) b!382721))

(assert (= (and b!382721 res!217855) b!382723))

(assert (= (and b!382723 res!217850) b!382719))

(assert (= (and b!382719 (not res!217849)) b!382718))

(assert (= (and b!382720 condMapEmpty!15510) mapIsEmpty!15510))

(assert (= (and b!382720 (not condMapEmpty!15510)) mapNonEmpty!15510))

(get-info :version)

(assert (= (and mapNonEmpty!15510 ((_ is ValueCellFull!4305) mapValue!15510)) b!382722))

(assert (= (and b!382720 ((_ is ValueCellFull!4305) mapDefault!15510)) b!382711))

(assert (= start!37530 b!382720))

(declare-fun m!379531 () Bool)

(assert (=> b!382715 m!379531))

(declare-fun m!379533 () Bool)

(assert (=> b!382719 m!379533))

(declare-fun m!379535 () Bool)

(assert (=> b!382719 m!379535))

(declare-fun m!379537 () Bool)

(assert (=> b!382719 m!379537))

(declare-fun m!379539 () Bool)

(assert (=> b!382719 m!379539))

(declare-fun m!379541 () Bool)

(assert (=> b!382719 m!379541))

(declare-fun m!379543 () Bool)

(assert (=> b!382719 m!379543))

(declare-fun m!379545 () Bool)

(assert (=> b!382719 m!379545))

(declare-fun m!379547 () Bool)

(assert (=> b!382712 m!379547))

(declare-fun m!379549 () Bool)

(assert (=> b!382724 m!379549))

(declare-fun m!379551 () Bool)

(assert (=> b!382723 m!379551))

(declare-fun m!379553 () Bool)

(assert (=> b!382713 m!379553))

(declare-fun m!379555 () Bool)

(assert (=> b!382717 m!379555))

(declare-fun m!379557 () Bool)

(assert (=> mapNonEmpty!15510 m!379557))

(declare-fun m!379559 () Bool)

(assert (=> start!37530 m!379559))

(declare-fun m!379561 () Bool)

(assert (=> start!37530 m!379561))

(declare-fun m!379563 () Bool)

(assert (=> start!37530 m!379563))

(declare-fun m!379565 () Bool)

(assert (=> b!382721 m!379565))

(declare-fun m!379567 () Bool)

(assert (=> b!382721 m!379567))

(check-sat (not b!382719) (not b!382721) (not b!382713) (not start!37530) (not b!382712) tp_is_empty!9297 (not b!382723) (not b_next!8649) (not b!382715) (not b!382717) b_and!15909 (not mapNonEmpty!15510))
(check-sat b_and!15909 (not b_next!8649))
