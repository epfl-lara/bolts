; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37644 () Bool)

(assert start!37644)

(declare-fun b_free!8763 () Bool)

(declare-fun b_next!8763 () Bool)

(assert (=> start!37644 (= b_free!8763 (not b_next!8763))))

(declare-fun tp!31004 () Bool)

(declare-fun b_and!16023 () Bool)

(assert (=> start!37644 (= tp!31004 b_and!16023)))

(declare-fun b!385119 () Bool)

(declare-fun e!233739 () Bool)

(declare-fun tp_is_empty!9411 () Bool)

(assert (=> b!385119 (= e!233739 tp_is_empty!9411)))

(declare-fun b!385120 () Bool)

(declare-fun res!219745 () Bool)

(declare-fun e!233742 () Bool)

(assert (=> b!385120 (=> (not res!219745) (not e!233742))))

(declare-datatypes ((array!22707 0))(
  ( (array!22708 (arr!10819 (Array (_ BitVec 32) (_ BitVec 64))) (size!11171 (_ BitVec 32))) )
))
(declare-fun lt!181534 () array!22707)

(declare-datatypes ((List!6218 0))(
  ( (Nil!6215) (Cons!6214 (h!7070 (_ BitVec 64)) (t!11376 List!6218)) )
))
(declare-fun arrayNoDuplicates!0 (array!22707 (_ BitVec 32) List!6218) Bool)

(assert (=> b!385120 (= res!219745 (arrayNoDuplicates!0 lt!181534 #b00000000000000000000000000000000 Nil!6215))))

(declare-fun b!385121 () Bool)

(declare-fun res!219748 () Bool)

(declare-fun e!233743 () Bool)

(assert (=> b!385121 (=> (not res!219748) (not e!233743))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13653 0))(
  ( (V!13654 (val!4750 Int)) )
))
(declare-datatypes ((ValueCell!4362 0))(
  ( (ValueCellFull!4362 (v!6943 V!13653)) (EmptyCell!4362) )
))
(declare-datatypes ((array!22709 0))(
  ( (array!22710 (arr!10820 (Array (_ BitVec 32) ValueCell!4362)) (size!11172 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22709)

(declare-fun _keys!658 () array!22707)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!385121 (= res!219748 (and (= (size!11172 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11171 _keys!658) (size!11172 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385122 () Bool)

(declare-fun res!219752 () Bool)

(assert (=> b!385122 (=> (not res!219752) (not e!233743))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!385122 (= res!219752 (or (= (select (arr!10819 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10819 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!219744 () Bool)

(assert (=> start!37644 (=> (not res!219744) (not e!233743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37644 (= res!219744 (validMask!0 mask!970))))

(assert (=> start!37644 e!233743))

(declare-fun e!233740 () Bool)

(declare-fun array_inv!7944 (array!22709) Bool)

(assert (=> start!37644 (and (array_inv!7944 _values!506) e!233740)))

(assert (=> start!37644 tp!31004))

(assert (=> start!37644 true))

(assert (=> start!37644 tp_is_empty!9411))

(declare-fun array_inv!7945 (array!22707) Bool)

(assert (=> start!37644 (array_inv!7945 _keys!658)))

(declare-fun b!385123 () Bool)

(assert (=> b!385123 (= e!233743 e!233742)))

(declare-fun res!219746 () Bool)

(assert (=> b!385123 (=> (not res!219746) (not e!233742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22707 (_ BitVec 32)) Bool)

(assert (=> b!385123 (= res!219746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181534 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!385123 (= lt!181534 (array!22708 (store (arr!10819 _keys!658) i!548 k0!778) (size!11171 _keys!658)))))

(declare-fun b!385124 () Bool)

(declare-fun e!233738 () Bool)

(assert (=> b!385124 (= e!233738 (bvsle #b00000000000000000000000000000000 (size!11171 _keys!658)))))

(declare-fun b!385125 () Bool)

(declare-fun e!233741 () Bool)

(assert (=> b!385125 (= e!233741 tp_is_empty!9411)))

(declare-fun b!385126 () Bool)

(declare-fun res!219741 () Bool)

(assert (=> b!385126 (=> (not res!219741) (not e!233743))))

(assert (=> b!385126 (= res!219741 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6215))))

(declare-fun b!385127 () Bool)

(declare-fun e!233744 () Bool)

(assert (=> b!385127 (= e!233744 e!233738)))

(declare-fun res!219747 () Bool)

(assert (=> b!385127 (=> res!219747 e!233738)))

(declare-datatypes ((tuple2!6350 0))(
  ( (tuple2!6351 (_1!3185 (_ BitVec 64)) (_2!3185 V!13653)) )
))
(declare-datatypes ((List!6219 0))(
  ( (Nil!6216) (Cons!6215 (h!7071 tuple2!6350) (t!11377 List!6219)) )
))
(declare-datatypes ((ListLongMap!5277 0))(
  ( (ListLongMap!5278 (toList!2654 List!6219)) )
))
(declare-fun lt!181533 () ListLongMap!5277)

(declare-fun lt!181526 () ListLongMap!5277)

(declare-fun lt!181525 () tuple2!6350)

(declare-fun +!990 (ListLongMap!5277 tuple2!6350) ListLongMap!5277)

(assert (=> b!385127 (= res!219747 (not (= (+!990 lt!181526 lt!181525) lt!181533)))))

(declare-fun lt!181530 () ListLongMap!5277)

(assert (=> b!385127 (= lt!181533 lt!181530)))

(declare-fun b!385128 () Bool)

(declare-fun mapRes!15681 () Bool)

(assert (=> b!385128 (= e!233740 (and e!233741 mapRes!15681))))

(declare-fun condMapEmpty!15681 () Bool)

(declare-fun mapDefault!15681 () ValueCell!4362)

(assert (=> b!385128 (= condMapEmpty!15681 (= (arr!10820 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4362)) mapDefault!15681)))))

(declare-fun b!385129 () Bool)

(declare-fun res!219750 () Bool)

(assert (=> b!385129 (=> (not res!219750) (not e!233743))))

(assert (=> b!385129 (= res!219750 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11171 _keys!658))))))

(declare-fun b!385130 () Bool)

(assert (=> b!385130 (= e!233742 (not e!233744))))

(declare-fun res!219751 () Bool)

(assert (=> b!385130 (=> res!219751 e!233744)))

(declare-fun lt!181532 () Bool)

(assert (=> b!385130 (= res!219751 (or (and (not lt!181532) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181532) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181532)))))

(assert (=> b!385130 (= lt!181532 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13653)

(declare-fun minValue!472 () V!13653)

(declare-fun getCurrentListMap!2070 (array!22707 array!22709 (_ BitVec 32) (_ BitVec 32) V!13653 V!13653 (_ BitVec 32) Int) ListLongMap!5277)

(assert (=> b!385130 (= lt!181526 (getCurrentListMap!2070 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181528 () array!22709)

(assert (=> b!385130 (= lt!181533 (getCurrentListMap!2070 lt!181534 lt!181528 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181529 () ListLongMap!5277)

(assert (=> b!385130 (and (= lt!181530 lt!181529) (= lt!181529 lt!181530))))

(declare-fun lt!181527 () ListLongMap!5277)

(assert (=> b!385130 (= lt!181529 (+!990 lt!181527 lt!181525))))

(declare-fun v!373 () V!13653)

(assert (=> b!385130 (= lt!181525 (tuple2!6351 k0!778 v!373))))

(declare-datatypes ((Unit!11869 0))(
  ( (Unit!11870) )
))
(declare-fun lt!181531 () Unit!11869)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!221 (array!22707 array!22709 (_ BitVec 32) (_ BitVec 32) V!13653 V!13653 (_ BitVec 32) (_ BitVec 64) V!13653 (_ BitVec 32) Int) Unit!11869)

(assert (=> b!385130 (= lt!181531 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!221 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!888 (array!22707 array!22709 (_ BitVec 32) (_ BitVec 32) V!13653 V!13653 (_ BitVec 32) Int) ListLongMap!5277)

(assert (=> b!385130 (= lt!181530 (getCurrentListMapNoExtraKeys!888 lt!181534 lt!181528 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!385130 (= lt!181528 (array!22710 (store (arr!10820 _values!506) i!548 (ValueCellFull!4362 v!373)) (size!11172 _values!506)))))

(assert (=> b!385130 (= lt!181527 (getCurrentListMapNoExtraKeys!888 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!385131 () Bool)

(declare-fun res!219749 () Bool)

(assert (=> b!385131 (=> (not res!219749) (not e!233743))))

(assert (=> b!385131 (= res!219749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!15681 () Bool)

(declare-fun tp!31005 () Bool)

(assert (=> mapNonEmpty!15681 (= mapRes!15681 (and tp!31005 e!233739))))

(declare-fun mapKey!15681 () (_ BitVec 32))

(declare-fun mapValue!15681 () ValueCell!4362)

(declare-fun mapRest!15681 () (Array (_ BitVec 32) ValueCell!4362))

(assert (=> mapNonEmpty!15681 (= (arr!10820 _values!506) (store mapRest!15681 mapKey!15681 mapValue!15681))))

(declare-fun b!385132 () Bool)

(declare-fun res!219743 () Bool)

(assert (=> b!385132 (=> (not res!219743) (not e!233743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385132 (= res!219743 (validKeyInArray!0 k0!778))))

(declare-fun b!385133 () Bool)

(declare-fun res!219742 () Bool)

(assert (=> b!385133 (=> (not res!219742) (not e!233743))))

(declare-fun arrayContainsKey!0 (array!22707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385133 (= res!219742 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15681 () Bool)

(assert (=> mapIsEmpty!15681 mapRes!15681))

(assert (= (and start!37644 res!219744) b!385121))

(assert (= (and b!385121 res!219748) b!385131))

(assert (= (and b!385131 res!219749) b!385126))

(assert (= (and b!385126 res!219741) b!385129))

(assert (= (and b!385129 res!219750) b!385132))

(assert (= (and b!385132 res!219743) b!385122))

(assert (= (and b!385122 res!219752) b!385133))

(assert (= (and b!385133 res!219742) b!385123))

(assert (= (and b!385123 res!219746) b!385120))

(assert (= (and b!385120 res!219745) b!385130))

(assert (= (and b!385130 (not res!219751)) b!385127))

(assert (= (and b!385127 (not res!219747)) b!385124))

(assert (= (and b!385128 condMapEmpty!15681) mapIsEmpty!15681))

(assert (= (and b!385128 (not condMapEmpty!15681)) mapNonEmpty!15681))

(get-info :version)

(assert (= (and mapNonEmpty!15681 ((_ is ValueCellFull!4362) mapValue!15681)) b!385119))

(assert (= (and b!385128 ((_ is ValueCellFull!4362) mapDefault!15681)) b!385125))

(assert (= start!37644 b!385128))

(declare-fun m!381801 () Bool)

(assert (=> b!385122 m!381801))

(declare-fun m!381803 () Bool)

(assert (=> mapNonEmpty!15681 m!381803))

(declare-fun m!381805 () Bool)

(assert (=> b!385120 m!381805))

(declare-fun m!381807 () Bool)

(assert (=> b!385132 m!381807))

(declare-fun m!381809 () Bool)

(assert (=> b!385131 m!381809))

(declare-fun m!381811 () Bool)

(assert (=> b!385123 m!381811))

(declare-fun m!381813 () Bool)

(assert (=> b!385123 m!381813))

(declare-fun m!381815 () Bool)

(assert (=> b!385127 m!381815))

(declare-fun m!381817 () Bool)

(assert (=> start!37644 m!381817))

(declare-fun m!381819 () Bool)

(assert (=> start!37644 m!381819))

(declare-fun m!381821 () Bool)

(assert (=> start!37644 m!381821))

(declare-fun m!381823 () Bool)

(assert (=> b!385130 m!381823))

(declare-fun m!381825 () Bool)

(assert (=> b!385130 m!381825))

(declare-fun m!381827 () Bool)

(assert (=> b!385130 m!381827))

(declare-fun m!381829 () Bool)

(assert (=> b!385130 m!381829))

(declare-fun m!381831 () Bool)

(assert (=> b!385130 m!381831))

(declare-fun m!381833 () Bool)

(assert (=> b!385130 m!381833))

(declare-fun m!381835 () Bool)

(assert (=> b!385130 m!381835))

(declare-fun m!381837 () Bool)

(assert (=> b!385126 m!381837))

(declare-fun m!381839 () Bool)

(assert (=> b!385133 m!381839))

(check-sat (not b!385131) (not b!385127) (not b_next!8763) (not start!37644) (not b!385130) (not b!385133) (not b!385126) (not b!385120) (not mapNonEmpty!15681) b_and!16023 (not b!385132) (not b!385123) tp_is_empty!9411)
(check-sat b_and!16023 (not b_next!8763))
