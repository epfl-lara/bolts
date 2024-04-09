; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37212 () Bool)

(assert start!37212)

(declare-fun b_free!8331 () Bool)

(declare-fun b_next!8331 () Bool)

(assert (=> start!37212 (= b_free!8331 (not b_next!8331))))

(declare-fun tp!29709 () Bool)

(declare-fun b_and!15591 () Bool)

(assert (=> start!37212 (= tp!29709 b_and!15591)))

(declare-fun b!375696 () Bool)

(declare-fun res!212264 () Bool)

(declare-fun e!228867 () Bool)

(assert (=> b!375696 (=> (not res!212264) (not e!228867))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13077 0))(
  ( (V!13078 (val!4534 Int)) )
))
(declare-datatypes ((ValueCell!4146 0))(
  ( (ValueCellFull!4146 (v!6727 V!13077)) (EmptyCell!4146) )
))
(declare-datatypes ((array!21857 0))(
  ( (array!21858 (arr!10394 (Array (_ BitVec 32) ValueCell!4146)) (size!10746 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21857)

(declare-datatypes ((array!21859 0))(
  ( (array!21860 (arr!10395 (Array (_ BitVec 32) (_ BitVec 64))) (size!10747 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21859)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!375696 (= res!212264 (and (= (size!10746 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10747 _keys!658) (size!10746 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!15033 () Bool)

(declare-fun mapRes!15033 () Bool)

(assert (=> mapIsEmpty!15033 mapRes!15033))

(declare-fun b!375697 () Bool)

(declare-fun res!212268 () Bool)

(assert (=> b!375697 (=> (not res!212268) (not e!228867))))

(declare-datatypes ((List!5879 0))(
  ( (Nil!5876) (Cons!5875 (h!6731 (_ BitVec 64)) (t!11037 List!5879)) )
))
(declare-fun arrayNoDuplicates!0 (array!21859 (_ BitVec 32) List!5879) Bool)

(assert (=> b!375697 (= res!212268 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5876))))

(declare-fun res!212267 () Bool)

(assert (=> start!37212 (=> (not res!212267) (not e!228867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37212 (= res!212267 (validMask!0 mask!970))))

(assert (=> start!37212 e!228867))

(declare-fun e!228866 () Bool)

(declare-fun array_inv!7656 (array!21857) Bool)

(assert (=> start!37212 (and (array_inv!7656 _values!506) e!228866)))

(assert (=> start!37212 tp!29709))

(assert (=> start!37212 true))

(declare-fun tp_is_empty!8979 () Bool)

(assert (=> start!37212 tp_is_empty!8979))

(declare-fun array_inv!7657 (array!21859) Bool)

(assert (=> start!37212 (array_inv!7657 _keys!658)))

(declare-fun b!375698 () Bool)

(declare-fun res!212266 () Bool)

(assert (=> b!375698 (=> (not res!212266) (not e!228867))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375698 (= res!212266 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!375699 () Bool)

(declare-fun e!228860 () Bool)

(assert (=> b!375699 (= e!228860 tp_is_empty!8979)))

(declare-fun b!375700 () Bool)

(declare-fun e!228865 () Bool)

(declare-fun e!228863 () Bool)

(assert (=> b!375700 (= e!228865 e!228863)))

(declare-fun res!212273 () Bool)

(assert (=> b!375700 (=> res!212273 e!228863)))

(assert (=> b!375700 (= res!212273 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6008 0))(
  ( (tuple2!6009 (_1!3014 (_ BitVec 64)) (_2!3014 V!13077)) )
))
(declare-datatypes ((List!5880 0))(
  ( (Nil!5877) (Cons!5876 (h!6732 tuple2!6008) (t!11038 List!5880)) )
))
(declare-datatypes ((ListLongMap!4935 0))(
  ( (ListLongMap!4936 (toList!2483 List!5880)) )
))
(declare-fun lt!174119 () ListLongMap!4935)

(declare-fun lt!174127 () ListLongMap!4935)

(assert (=> b!375700 (= lt!174119 lt!174127)))

(declare-fun lt!174117 () ListLongMap!4935)

(declare-fun lt!174125 () tuple2!6008)

(declare-fun +!824 (ListLongMap!4935 tuple2!6008) ListLongMap!4935)

(assert (=> b!375700 (= lt!174127 (+!824 lt!174117 lt!174125))))

(declare-fun lt!174124 () ListLongMap!4935)

(declare-fun lt!174126 () ListLongMap!4935)

(assert (=> b!375700 (= lt!174124 lt!174126)))

(declare-fun lt!174116 () ListLongMap!4935)

(assert (=> b!375700 (= lt!174126 (+!824 lt!174116 lt!174125))))

(declare-fun lt!174115 () ListLongMap!4935)

(assert (=> b!375700 (= lt!174119 (+!824 lt!174115 lt!174125))))

(declare-fun zeroValue!472 () V!13077)

(assert (=> b!375700 (= lt!174125 (tuple2!6009 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375701 () Bool)

(declare-fun res!212272 () Bool)

(assert (=> b!375701 (=> (not res!212272) (not e!228867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375701 (= res!212272 (validKeyInArray!0 k0!778))))

(declare-fun b!375702 () Bool)

(declare-fun e!228861 () Bool)

(assert (=> b!375702 (= e!228867 e!228861)))

(declare-fun res!212265 () Bool)

(assert (=> b!375702 (=> (not res!212265) (not e!228861))))

(declare-fun lt!174123 () array!21859)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21859 (_ BitVec 32)) Bool)

(assert (=> b!375702 (= res!212265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174123 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375702 (= lt!174123 (array!21860 (store (arr!10395 _keys!658) i!548 k0!778) (size!10747 _keys!658)))))

(declare-fun b!375703 () Bool)

(declare-fun res!212271 () Bool)

(assert (=> b!375703 (=> (not res!212271) (not e!228867))))

(assert (=> b!375703 (= res!212271 (or (= (select (arr!10395 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10395 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375704 () Bool)

(declare-fun res!212262 () Bool)

(assert (=> b!375704 (=> (not res!212262) (not e!228861))))

(assert (=> b!375704 (= res!212262 (arrayNoDuplicates!0 lt!174123 #b00000000000000000000000000000000 Nil!5876))))

(declare-fun b!375705 () Bool)

(declare-fun res!212269 () Bool)

(assert (=> b!375705 (=> (not res!212269) (not e!228867))))

(assert (=> b!375705 (= res!212269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375706 () Bool)

(assert (=> b!375706 (= e!228863 true)))

(declare-fun lt!174120 () tuple2!6008)

(assert (=> b!375706 (= lt!174127 (+!824 lt!174126 lt!174120))))

(declare-datatypes ((Unit!11551 0))(
  ( (Unit!11552) )
))
(declare-fun lt!174121 () Unit!11551)

(declare-fun v!373 () V!13077)

(declare-fun addCommutativeForDiffKeys!250 (ListLongMap!4935 (_ BitVec 64) V!13077 (_ BitVec 64) V!13077) Unit!11551)

(assert (=> b!375706 (= lt!174121 (addCommutativeForDiffKeys!250 lt!174116 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375707 () Bool)

(declare-fun res!212263 () Bool)

(assert (=> b!375707 (=> (not res!212263) (not e!228867))))

(assert (=> b!375707 (= res!212263 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10747 _keys!658))))))

(declare-fun b!375708 () Bool)

(declare-fun e!228864 () Bool)

(assert (=> b!375708 (= e!228864 tp_is_empty!8979)))

(declare-fun b!375709 () Bool)

(assert (=> b!375709 (= e!228866 (and e!228860 mapRes!15033))))

(declare-fun condMapEmpty!15033 () Bool)

(declare-fun mapDefault!15033 () ValueCell!4146)

(assert (=> b!375709 (= condMapEmpty!15033 (= (arr!10394 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4146)) mapDefault!15033)))))

(declare-fun mapNonEmpty!15033 () Bool)

(declare-fun tp!29708 () Bool)

(assert (=> mapNonEmpty!15033 (= mapRes!15033 (and tp!29708 e!228864))))

(declare-fun mapKey!15033 () (_ BitVec 32))

(declare-fun mapValue!15033 () ValueCell!4146)

(declare-fun mapRest!15033 () (Array (_ BitVec 32) ValueCell!4146))

(assert (=> mapNonEmpty!15033 (= (arr!10394 _values!506) (store mapRest!15033 mapKey!15033 mapValue!15033))))

(declare-fun b!375710 () Bool)

(assert (=> b!375710 (= e!228861 (not e!228865))))

(declare-fun res!212270 () Bool)

(assert (=> b!375710 (=> res!212270 e!228865)))

(assert (=> b!375710 (= res!212270 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13077)

(declare-fun getCurrentListMap!1924 (array!21859 array!21857 (_ BitVec 32) (_ BitVec 32) V!13077 V!13077 (_ BitVec 32) Int) ListLongMap!4935)

(assert (=> b!375710 (= lt!174124 (getCurrentListMap!1924 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174118 () array!21857)

(assert (=> b!375710 (= lt!174119 (getCurrentListMap!1924 lt!174123 lt!174118 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375710 (and (= lt!174115 lt!174117) (= lt!174117 lt!174115))))

(assert (=> b!375710 (= lt!174117 (+!824 lt!174116 lt!174120))))

(assert (=> b!375710 (= lt!174120 (tuple2!6009 k0!778 v!373))))

(declare-fun lt!174122 () Unit!11551)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!75 (array!21859 array!21857 (_ BitVec 32) (_ BitVec 32) V!13077 V!13077 (_ BitVec 32) (_ BitVec 64) V!13077 (_ BitVec 32) Int) Unit!11551)

(assert (=> b!375710 (= lt!174122 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!75 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!742 (array!21859 array!21857 (_ BitVec 32) (_ BitVec 32) V!13077 V!13077 (_ BitVec 32) Int) ListLongMap!4935)

(assert (=> b!375710 (= lt!174115 (getCurrentListMapNoExtraKeys!742 lt!174123 lt!174118 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375710 (= lt!174118 (array!21858 (store (arr!10394 _values!506) i!548 (ValueCellFull!4146 v!373)) (size!10746 _values!506)))))

(assert (=> b!375710 (= lt!174116 (getCurrentListMapNoExtraKeys!742 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37212 res!212267) b!375696))

(assert (= (and b!375696 res!212264) b!375705))

(assert (= (and b!375705 res!212269) b!375697))

(assert (= (and b!375697 res!212268) b!375707))

(assert (= (and b!375707 res!212263) b!375701))

(assert (= (and b!375701 res!212272) b!375703))

(assert (= (and b!375703 res!212271) b!375698))

(assert (= (and b!375698 res!212266) b!375702))

(assert (= (and b!375702 res!212265) b!375704))

(assert (= (and b!375704 res!212262) b!375710))

(assert (= (and b!375710 (not res!212270)) b!375700))

(assert (= (and b!375700 (not res!212273)) b!375706))

(assert (= (and b!375709 condMapEmpty!15033) mapIsEmpty!15033))

(assert (= (and b!375709 (not condMapEmpty!15033)) mapNonEmpty!15033))

(get-info :version)

(assert (= (and mapNonEmpty!15033 ((_ is ValueCellFull!4146) mapValue!15033)) b!375708))

(assert (= (and b!375709 ((_ is ValueCellFull!4146) mapDefault!15033)) b!375699))

(assert (= start!37212 b!375709))

(declare-fun m!372401 () Bool)

(assert (=> b!375703 m!372401))

(declare-fun m!372403 () Bool)

(assert (=> b!375701 m!372403))

(declare-fun m!372405 () Bool)

(assert (=> b!375702 m!372405))

(declare-fun m!372407 () Bool)

(assert (=> b!375702 m!372407))

(declare-fun m!372409 () Bool)

(assert (=> b!375704 m!372409))

(declare-fun m!372411 () Bool)

(assert (=> start!37212 m!372411))

(declare-fun m!372413 () Bool)

(assert (=> start!37212 m!372413))

(declare-fun m!372415 () Bool)

(assert (=> start!37212 m!372415))

(declare-fun m!372417 () Bool)

(assert (=> b!375700 m!372417))

(declare-fun m!372419 () Bool)

(assert (=> b!375700 m!372419))

(declare-fun m!372421 () Bool)

(assert (=> b!375700 m!372421))

(declare-fun m!372423 () Bool)

(assert (=> b!375710 m!372423))

(declare-fun m!372425 () Bool)

(assert (=> b!375710 m!372425))

(declare-fun m!372427 () Bool)

(assert (=> b!375710 m!372427))

(declare-fun m!372429 () Bool)

(assert (=> b!375710 m!372429))

(declare-fun m!372431 () Bool)

(assert (=> b!375710 m!372431))

(declare-fun m!372433 () Bool)

(assert (=> b!375710 m!372433))

(declare-fun m!372435 () Bool)

(assert (=> b!375710 m!372435))

(declare-fun m!372437 () Bool)

(assert (=> b!375697 m!372437))

(declare-fun m!372439 () Bool)

(assert (=> mapNonEmpty!15033 m!372439))

(declare-fun m!372441 () Bool)

(assert (=> b!375706 m!372441))

(declare-fun m!372443 () Bool)

(assert (=> b!375706 m!372443))

(declare-fun m!372445 () Bool)

(assert (=> b!375705 m!372445))

(declare-fun m!372447 () Bool)

(assert (=> b!375698 m!372447))

(check-sat (not b!375710) (not b!375698) (not b!375704) (not b!375706) (not start!37212) (not b!375700) (not mapNonEmpty!15033) (not b!375701) (not b_next!8331) (not b!375697) b_and!15591 (not b!375702) (not b!375705) tp_is_empty!8979)
(check-sat b_and!15591 (not b_next!8331))
