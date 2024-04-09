; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37152 () Bool)

(assert start!37152)

(declare-fun b_free!8271 () Bool)

(declare-fun b_next!8271 () Bool)

(assert (=> start!37152 (= b_free!8271 (not b_next!8271))))

(declare-fun tp!29528 () Bool)

(declare-fun b_and!15531 () Bool)

(assert (=> start!37152 (= tp!29528 b_and!15531)))

(declare-fun b!374337 () Bool)

(declare-fun e!228142 () Bool)

(declare-fun e!228146 () Bool)

(assert (=> b!374337 (= e!228142 (not e!228146))))

(declare-fun res!211176 () Bool)

(assert (=> b!374337 (=> res!211176 e!228146)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374337 (= res!211176 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12997 0))(
  ( (V!12998 (val!4504 Int)) )
))
(declare-datatypes ((ValueCell!4116 0))(
  ( (ValueCellFull!4116 (v!6697 V!12997)) (EmptyCell!4116) )
))
(declare-datatypes ((array!21741 0))(
  ( (array!21742 (arr!10336 (Array (_ BitVec 32) ValueCell!4116)) (size!10688 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21741)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5966 0))(
  ( (tuple2!5967 (_1!2993 (_ BitVec 64)) (_2!2993 V!12997)) )
))
(declare-datatypes ((List!5837 0))(
  ( (Nil!5834) (Cons!5833 (h!6689 tuple2!5966) (t!10995 List!5837)) )
))
(declare-datatypes ((ListLongMap!4893 0))(
  ( (ListLongMap!4894 (toList!2462 List!5837)) )
))
(declare-fun lt!172687 () ListLongMap!4893)

(declare-fun zeroValue!472 () V!12997)

(declare-datatypes ((array!21743 0))(
  ( (array!21744 (arr!10337 (Array (_ BitVec 32) (_ BitVec 64))) (size!10689 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21743)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12997)

(declare-fun getCurrentListMap!1906 (array!21743 array!21741 (_ BitVec 32) (_ BitVec 32) V!12997 V!12997 (_ BitVec 32) Int) ListLongMap!4893)

(assert (=> b!374337 (= lt!172687 (getCurrentListMap!1906 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172689 () array!21743)

(declare-fun lt!172686 () ListLongMap!4893)

(declare-fun lt!172684 () array!21741)

(assert (=> b!374337 (= lt!172686 (getCurrentListMap!1906 lt!172689 lt!172684 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172692 () ListLongMap!4893)

(declare-fun lt!172683 () ListLongMap!4893)

(assert (=> b!374337 (and (= lt!172692 lt!172683) (= lt!172683 lt!172692))))

(declare-fun lt!172693 () ListLongMap!4893)

(declare-fun lt!172680 () tuple2!5966)

(declare-fun +!803 (ListLongMap!4893 tuple2!5966) ListLongMap!4893)

(assert (=> b!374337 (= lt!172683 (+!803 lt!172693 lt!172680))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!12997)

(assert (=> b!374337 (= lt!172680 (tuple2!5967 k0!778 v!373))))

(declare-datatypes ((Unit!11509 0))(
  ( (Unit!11510) )
))
(declare-fun lt!172678 () Unit!11509)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!57 (array!21743 array!21741 (_ BitVec 32) (_ BitVec 32) V!12997 V!12997 (_ BitVec 32) (_ BitVec 64) V!12997 (_ BitVec 32) Int) Unit!11509)

(assert (=> b!374337 (= lt!172678 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!57 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!724 (array!21743 array!21741 (_ BitVec 32) (_ BitVec 32) V!12997 V!12997 (_ BitVec 32) Int) ListLongMap!4893)

(assert (=> b!374337 (= lt!172692 (getCurrentListMapNoExtraKeys!724 lt!172689 lt!172684 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374337 (= lt!172684 (array!21742 (store (arr!10336 _values!506) i!548 (ValueCellFull!4116 v!373)) (size!10688 _values!506)))))

(assert (=> b!374337 (= lt!172693 (getCurrentListMapNoExtraKeys!724 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374338 () Bool)

(declare-fun e!228145 () Bool)

(assert (=> b!374338 (= e!228145 true)))

(declare-fun lt!172690 () tuple2!5966)

(declare-fun lt!172685 () ListLongMap!4893)

(declare-fun lt!172691 () ListLongMap!4893)

(assert (=> b!374338 (= (+!803 lt!172685 lt!172690) (+!803 lt!172691 lt!172680))))

(declare-fun lt!172681 () Unit!11509)

(declare-fun lt!172679 () ListLongMap!4893)

(declare-fun addCommutativeForDiffKeys!232 (ListLongMap!4893 (_ BitVec 64) V!12997 (_ BitVec 64) V!12997) Unit!11509)

(assert (=> b!374338 (= lt!172681 (addCommutativeForDiffKeys!232 lt!172679 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374339 () Bool)

(assert (=> b!374339 (= e!228146 e!228145)))

(declare-fun res!211179 () Bool)

(assert (=> b!374339 (=> res!211179 e!228145)))

(assert (=> b!374339 (= res!211179 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!172677 () ListLongMap!4893)

(assert (=> b!374339 (= lt!172677 lt!172685)))

(assert (=> b!374339 (= lt!172685 (+!803 lt!172679 lt!172680))))

(declare-fun lt!172682 () Unit!11509)

(assert (=> b!374339 (= lt!172682 (addCommutativeForDiffKeys!232 lt!172693 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!374339 (= lt!172686 (+!803 lt!172677 lt!172690))))

(declare-fun lt!172688 () tuple2!5966)

(assert (=> b!374339 (= lt!172677 (+!803 lt!172683 lt!172688))))

(assert (=> b!374339 (= lt!172687 lt!172691)))

(assert (=> b!374339 (= lt!172691 (+!803 lt!172679 lt!172690))))

(assert (=> b!374339 (= lt!172679 (+!803 lt!172693 lt!172688))))

(assert (=> b!374339 (= lt!172686 (+!803 (+!803 lt!172692 lt!172688) lt!172690))))

(assert (=> b!374339 (= lt!172690 (tuple2!5967 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374339 (= lt!172688 (tuple2!5967 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374340 () Bool)

(declare-fun res!211175 () Bool)

(declare-fun e!228143 () Bool)

(assert (=> b!374340 (=> (not res!211175) (not e!228143))))

(declare-fun arrayContainsKey!0 (array!21743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374340 (= res!211175 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14943 () Bool)

(declare-fun mapRes!14943 () Bool)

(assert (=> mapIsEmpty!14943 mapRes!14943))

(declare-fun b!374341 () Bool)

(declare-fun e!228147 () Bool)

(declare-fun tp_is_empty!8919 () Bool)

(assert (=> b!374341 (= e!228147 tp_is_empty!8919)))

(declare-fun b!374342 () Bool)

(declare-fun res!211178 () Bool)

(assert (=> b!374342 (=> (not res!211178) (not e!228143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21743 (_ BitVec 32)) Bool)

(assert (=> b!374342 (= res!211178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374343 () Bool)

(declare-fun res!211180 () Bool)

(assert (=> b!374343 (=> (not res!211180) (not e!228143))))

(assert (=> b!374343 (= res!211180 (or (= (select (arr!10337 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10337 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374345 () Bool)

(declare-fun e!228144 () Bool)

(assert (=> b!374345 (= e!228144 tp_is_empty!8919)))

(declare-fun b!374346 () Bool)

(assert (=> b!374346 (= e!228143 e!228142)))

(declare-fun res!211181 () Bool)

(assert (=> b!374346 (=> (not res!211181) (not e!228142))))

(assert (=> b!374346 (= res!211181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172689 mask!970))))

(assert (=> b!374346 (= lt!172689 (array!21744 (store (arr!10337 _keys!658) i!548 k0!778) (size!10689 _keys!658)))))

(declare-fun b!374347 () Bool)

(declare-fun res!211184 () Bool)

(assert (=> b!374347 (=> (not res!211184) (not e!228143))))

(assert (=> b!374347 (= res!211184 (and (= (size!10688 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10689 _keys!658) (size!10688 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374348 () Bool)

(declare-fun e!228141 () Bool)

(assert (=> b!374348 (= e!228141 (and e!228147 mapRes!14943))))

(declare-fun condMapEmpty!14943 () Bool)

(declare-fun mapDefault!14943 () ValueCell!4116)

(assert (=> b!374348 (= condMapEmpty!14943 (= (arr!10336 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4116)) mapDefault!14943)))))

(declare-fun b!374349 () Bool)

(declare-fun res!211182 () Bool)

(assert (=> b!374349 (=> (not res!211182) (not e!228143))))

(declare-datatypes ((List!5838 0))(
  ( (Nil!5835) (Cons!5834 (h!6690 (_ BitVec 64)) (t!10996 List!5838)) )
))
(declare-fun arrayNoDuplicates!0 (array!21743 (_ BitVec 32) List!5838) Bool)

(assert (=> b!374349 (= res!211182 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5835))))

(declare-fun b!374350 () Bool)

(declare-fun res!211183 () Bool)

(assert (=> b!374350 (=> (not res!211183) (not e!228143))))

(assert (=> b!374350 (= res!211183 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10689 _keys!658))))))

(declare-fun b!374351 () Bool)

(declare-fun res!211174 () Bool)

(assert (=> b!374351 (=> (not res!211174) (not e!228142))))

(assert (=> b!374351 (= res!211174 (arrayNoDuplicates!0 lt!172689 #b00000000000000000000000000000000 Nil!5835))))

(declare-fun mapNonEmpty!14943 () Bool)

(declare-fun tp!29529 () Bool)

(assert (=> mapNonEmpty!14943 (= mapRes!14943 (and tp!29529 e!228144))))

(declare-fun mapKey!14943 () (_ BitVec 32))

(declare-fun mapValue!14943 () ValueCell!4116)

(declare-fun mapRest!14943 () (Array (_ BitVec 32) ValueCell!4116))

(assert (=> mapNonEmpty!14943 (= (arr!10336 _values!506) (store mapRest!14943 mapKey!14943 mapValue!14943))))

(declare-fun res!211177 () Bool)

(assert (=> start!37152 (=> (not res!211177) (not e!228143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37152 (= res!211177 (validMask!0 mask!970))))

(assert (=> start!37152 e!228143))

(declare-fun array_inv!7622 (array!21741) Bool)

(assert (=> start!37152 (and (array_inv!7622 _values!506) e!228141)))

(assert (=> start!37152 tp!29528))

(assert (=> start!37152 true))

(assert (=> start!37152 tp_is_empty!8919))

(declare-fun array_inv!7623 (array!21743) Bool)

(assert (=> start!37152 (array_inv!7623 _keys!658)))

(declare-fun b!374344 () Bool)

(declare-fun res!211173 () Bool)

(assert (=> b!374344 (=> (not res!211173) (not e!228143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374344 (= res!211173 (validKeyInArray!0 k0!778))))

(assert (= (and start!37152 res!211177) b!374347))

(assert (= (and b!374347 res!211184) b!374342))

(assert (= (and b!374342 res!211178) b!374349))

(assert (= (and b!374349 res!211182) b!374350))

(assert (= (and b!374350 res!211183) b!374344))

(assert (= (and b!374344 res!211173) b!374343))

(assert (= (and b!374343 res!211180) b!374340))

(assert (= (and b!374340 res!211175) b!374346))

(assert (= (and b!374346 res!211181) b!374351))

(assert (= (and b!374351 res!211174) b!374337))

(assert (= (and b!374337 (not res!211176)) b!374339))

(assert (= (and b!374339 (not res!211179)) b!374338))

(assert (= (and b!374348 condMapEmpty!14943) mapIsEmpty!14943))

(assert (= (and b!374348 (not condMapEmpty!14943)) mapNonEmpty!14943))

(get-info :version)

(assert (= (and mapNonEmpty!14943 ((_ is ValueCellFull!4116) mapValue!14943)) b!374345))

(assert (= (and b!374348 ((_ is ValueCellFull!4116) mapDefault!14943)) b!374341))

(assert (= start!37152 b!374348))

(declare-fun m!370661 () Bool)

(assert (=> start!37152 m!370661))

(declare-fun m!370663 () Bool)

(assert (=> start!37152 m!370663))

(declare-fun m!370665 () Bool)

(assert (=> start!37152 m!370665))

(declare-fun m!370667 () Bool)

(assert (=> b!374343 m!370667))

(declare-fun m!370669 () Bool)

(assert (=> b!374340 m!370669))

(declare-fun m!370671 () Bool)

(assert (=> b!374342 m!370671))

(declare-fun m!370673 () Bool)

(assert (=> b!374338 m!370673))

(declare-fun m!370675 () Bool)

(assert (=> b!374338 m!370675))

(declare-fun m!370677 () Bool)

(assert (=> b!374338 m!370677))

(declare-fun m!370679 () Bool)

(assert (=> b!374351 m!370679))

(declare-fun m!370681 () Bool)

(assert (=> b!374339 m!370681))

(declare-fun m!370683 () Bool)

(assert (=> b!374339 m!370683))

(declare-fun m!370685 () Bool)

(assert (=> b!374339 m!370685))

(declare-fun m!370687 () Bool)

(assert (=> b!374339 m!370687))

(declare-fun m!370689 () Bool)

(assert (=> b!374339 m!370689))

(declare-fun m!370691 () Bool)

(assert (=> b!374339 m!370691))

(assert (=> b!374339 m!370685))

(declare-fun m!370693 () Bool)

(assert (=> b!374339 m!370693))

(declare-fun m!370695 () Bool)

(assert (=> b!374339 m!370695))

(declare-fun m!370697 () Bool)

(assert (=> b!374346 m!370697))

(declare-fun m!370699 () Bool)

(assert (=> b!374346 m!370699))

(declare-fun m!370701 () Bool)

(assert (=> mapNonEmpty!14943 m!370701))

(declare-fun m!370703 () Bool)

(assert (=> b!374337 m!370703))

(declare-fun m!370705 () Bool)

(assert (=> b!374337 m!370705))

(declare-fun m!370707 () Bool)

(assert (=> b!374337 m!370707))

(declare-fun m!370709 () Bool)

(assert (=> b!374337 m!370709))

(declare-fun m!370711 () Bool)

(assert (=> b!374337 m!370711))

(declare-fun m!370713 () Bool)

(assert (=> b!374337 m!370713))

(declare-fun m!370715 () Bool)

(assert (=> b!374337 m!370715))

(declare-fun m!370717 () Bool)

(assert (=> b!374349 m!370717))

(declare-fun m!370719 () Bool)

(assert (=> b!374344 m!370719))

(check-sat (not b!374339) (not b!374351) (not mapNonEmpty!14943) (not b!374337) (not b!374342) tp_is_empty!8919 (not b!374349) (not b!374338) (not b!374346) (not b_next!8271) b_and!15531 (not b!374340) (not b!374344) (not start!37152))
(check-sat b_and!15531 (not b_next!8271))
