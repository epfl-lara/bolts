; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38690 () Bool)

(assert start!38690)

(declare-fun b_free!9219 () Bool)

(declare-fun b_next!9219 () Bool)

(assert (=> start!38690 (= b_free!9219 (not b_next!9219))))

(declare-fun tp!32781 () Bool)

(declare-fun b_and!16623 () Bool)

(assert (=> start!38690 (= tp!32781 b_and!16623)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14573 0))(
  ( (V!14574 (val!5095 Int)) )
))
(declare-datatypes ((ValueCell!4707 0))(
  ( (ValueCellFull!4707 (v!7338 V!14573)) (EmptyCell!4707) )
))
(declare-datatypes ((array!24073 0))(
  ( (array!24074 (arr!11483 (Array (_ BitVec 32) ValueCell!4707)) (size!11835 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24073)

(declare-fun zeroValue!515 () V!14573)

(declare-fun bm!28315 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!6700 0))(
  ( (tuple2!6701 (_1!3360 (_ BitVec 64)) (_2!3360 V!14573)) )
))
(declare-datatypes ((List!6647 0))(
  ( (Nil!6644) (Cons!6643 (h!7499 tuple2!6700) (t!11829 List!6647)) )
))
(declare-datatypes ((ListLongMap!5627 0))(
  ( (ListLongMap!5628 (toList!2829 List!6647)) )
))
(declare-fun call!28318 () ListLongMap!5627)

(declare-fun c!54710 () Bool)

(declare-fun v!412 () V!14573)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24075 0))(
  ( (array!24076 (arr!11484 (Array (_ BitVec 32) (_ BitVec 64))) (size!11836 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24075)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!14573)

(declare-fun lt!187845 () array!24075)

(declare-fun getCurrentListMapNoExtraKeys!1042 (array!24075 array!24073 (_ BitVec 32) (_ BitVec 32) V!14573 V!14573 (_ BitVec 32) Int) ListLongMap!5627)

(assert (=> bm!28315 (= call!28318 (getCurrentListMapNoExtraKeys!1042 (ite c!54710 _keys!709 lt!187845) (ite c!54710 _values!549 (array!24074 (store (arr!11483 _values!549) i!563 (ValueCellFull!4707 v!412)) (size!11835 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16773 () Bool)

(declare-fun mapRes!16773 () Bool)

(assert (=> mapIsEmpty!16773 mapRes!16773))

(declare-fun b!401848 () Bool)

(declare-fun e!242195 () Bool)

(declare-fun e!242194 () Bool)

(assert (=> b!401848 (= e!242195 (and e!242194 mapRes!16773))))

(declare-fun condMapEmpty!16773 () Bool)

(declare-fun mapDefault!16773 () ValueCell!4707)

(assert (=> b!401848 (= condMapEmpty!16773 (= (arr!11483 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4707)) mapDefault!16773)))))

(declare-fun b!401849 () Bool)

(declare-fun res!231470 () Bool)

(declare-fun e!242197 () Bool)

(assert (=> b!401849 (=> (not res!231470) (not e!242197))))

(assert (=> b!401849 (= res!231470 (and (= (size!11835 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11836 _keys!709) (size!11835 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!401850 () Bool)

(declare-fun res!231476 () Bool)

(declare-fun e!242196 () Bool)

(assert (=> b!401850 (=> (not res!231476) (not e!242196))))

(assert (=> b!401850 (= res!231476 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11836 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!401851 () Bool)

(declare-fun e!242200 () Bool)

(declare-fun tp_is_empty!10101 () Bool)

(assert (=> b!401851 (= e!242200 tp_is_empty!10101)))

(declare-fun b!401852 () Bool)

(declare-fun res!231473 () Bool)

(assert (=> b!401852 (=> (not res!231473) (not e!242197))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24075 (_ BitVec 32)) Bool)

(assert (=> b!401852 (= res!231473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!401853 () Bool)

(declare-fun res!231477 () Bool)

(assert (=> b!401853 (=> (not res!231477) (not e!242197))))

(assert (=> b!401853 (= res!231477 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11836 _keys!709))))))

(declare-fun b!401854 () Bool)

(assert (=> b!401854 (= e!242194 tp_is_empty!10101)))

(declare-fun res!231478 () Bool)

(assert (=> start!38690 (=> (not res!231478) (not e!242197))))

(assert (=> start!38690 (= res!231478 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11836 _keys!709))))))

(assert (=> start!38690 e!242197))

(assert (=> start!38690 tp_is_empty!10101))

(assert (=> start!38690 tp!32781))

(assert (=> start!38690 true))

(declare-fun array_inv!8396 (array!24073) Bool)

(assert (=> start!38690 (and (array_inv!8396 _values!549) e!242195)))

(declare-fun array_inv!8397 (array!24075) Bool)

(assert (=> start!38690 (array_inv!8397 _keys!709)))

(declare-fun b!401855 () Bool)

(declare-fun e!242199 () Bool)

(declare-fun call!28319 () ListLongMap!5627)

(assert (=> b!401855 (= e!242199 (= call!28318 call!28319))))

(declare-fun mapNonEmpty!16773 () Bool)

(declare-fun tp!32780 () Bool)

(assert (=> mapNonEmpty!16773 (= mapRes!16773 (and tp!32780 e!242200))))

(declare-fun mapValue!16773 () ValueCell!4707)

(declare-fun mapRest!16773 () (Array (_ BitVec 32) ValueCell!4707))

(declare-fun mapKey!16773 () (_ BitVec 32))

(assert (=> mapNonEmpty!16773 (= (arr!11483 _values!549) (store mapRest!16773 mapKey!16773 mapValue!16773))))

(declare-fun b!401856 () Bool)

(declare-fun res!231479 () Bool)

(assert (=> b!401856 (=> (not res!231479) (not e!242197))))

(declare-datatypes ((List!6648 0))(
  ( (Nil!6645) (Cons!6644 (h!7500 (_ BitVec 64)) (t!11830 List!6648)) )
))
(declare-fun arrayNoDuplicates!0 (array!24075 (_ BitVec 32) List!6648) Bool)

(assert (=> b!401856 (= res!231479 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6645))))

(declare-fun b!401857 () Bool)

(declare-fun res!231475 () Bool)

(assert (=> b!401857 (=> (not res!231475) (not e!242197))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!401857 (= res!231475 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!401858 () Bool)

(declare-fun res!231469 () Bool)

(assert (=> b!401858 (=> (not res!231469) (not e!242196))))

(assert (=> b!401858 (= res!231469 (arrayNoDuplicates!0 lt!187845 #b00000000000000000000000000000000 Nil!6645))))

(declare-fun b!401859 () Bool)

(assert (=> b!401859 (= e!242197 e!242196)))

(declare-fun res!231472 () Bool)

(assert (=> b!401859 (=> (not res!231472) (not e!242196))))

(assert (=> b!401859 (= res!231472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187845 mask!1025))))

(assert (=> b!401859 (= lt!187845 (array!24076 (store (arr!11484 _keys!709) i!563 k0!794) (size!11836 _keys!709)))))

(declare-fun b!401860 () Bool)

(assert (=> b!401860 (= e!242196 (not true))))

(assert (=> b!401860 e!242199))

(assert (=> b!401860 (= c!54710 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12117 0))(
  ( (Unit!12118) )
))
(declare-fun lt!187844 () Unit!12117)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!321 (array!24075 array!24073 (_ BitVec 32) (_ BitVec 32) V!14573 V!14573 (_ BitVec 32) (_ BitVec 64) V!14573 (_ BitVec 32) Int) Unit!12117)

(assert (=> b!401860 (= lt!187844 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!321 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401861 () Bool)

(declare-fun +!1109 (ListLongMap!5627 tuple2!6700) ListLongMap!5627)

(assert (=> b!401861 (= e!242199 (= call!28319 (+!1109 call!28318 (tuple2!6701 k0!794 v!412))))))

(declare-fun b!401862 () Bool)

(declare-fun res!231474 () Bool)

(assert (=> b!401862 (=> (not res!231474) (not e!242197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!401862 (= res!231474 (validMask!0 mask!1025))))

(declare-fun b!401863 () Bool)

(declare-fun res!231480 () Bool)

(assert (=> b!401863 (=> (not res!231480) (not e!242197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!401863 (= res!231480 (validKeyInArray!0 k0!794))))

(declare-fun bm!28316 () Bool)

(assert (=> bm!28316 (= call!28319 (getCurrentListMapNoExtraKeys!1042 (ite c!54710 lt!187845 _keys!709) (ite c!54710 (array!24074 (store (arr!11483 _values!549) i!563 (ValueCellFull!4707 v!412)) (size!11835 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!401864 () Bool)

(declare-fun res!231471 () Bool)

(assert (=> b!401864 (=> (not res!231471) (not e!242197))))

(assert (=> b!401864 (= res!231471 (or (= (select (arr!11484 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11484 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38690 res!231478) b!401862))

(assert (= (and b!401862 res!231474) b!401849))

(assert (= (and b!401849 res!231470) b!401852))

(assert (= (and b!401852 res!231473) b!401856))

(assert (= (and b!401856 res!231479) b!401853))

(assert (= (and b!401853 res!231477) b!401863))

(assert (= (and b!401863 res!231480) b!401864))

(assert (= (and b!401864 res!231471) b!401857))

(assert (= (and b!401857 res!231475) b!401859))

(assert (= (and b!401859 res!231472) b!401858))

(assert (= (and b!401858 res!231469) b!401850))

(assert (= (and b!401850 res!231476) b!401860))

(assert (= (and b!401860 c!54710) b!401861))

(assert (= (and b!401860 (not c!54710)) b!401855))

(assert (= (or b!401861 b!401855) bm!28316))

(assert (= (or b!401861 b!401855) bm!28315))

(assert (= (and b!401848 condMapEmpty!16773) mapIsEmpty!16773))

(assert (= (and b!401848 (not condMapEmpty!16773)) mapNonEmpty!16773))

(get-info :version)

(assert (= (and mapNonEmpty!16773 ((_ is ValueCellFull!4707) mapValue!16773)) b!401851))

(assert (= (and b!401848 ((_ is ValueCellFull!4707) mapDefault!16773)) b!401854))

(assert (= start!38690 b!401848))

(declare-fun m!395545 () Bool)

(assert (=> b!401862 m!395545))

(declare-fun m!395547 () Bool)

(assert (=> b!401860 m!395547))

(declare-fun m!395549 () Bool)

(assert (=> start!38690 m!395549))

(declare-fun m!395551 () Bool)

(assert (=> start!38690 m!395551))

(declare-fun m!395553 () Bool)

(assert (=> b!401859 m!395553))

(declare-fun m!395555 () Bool)

(assert (=> b!401859 m!395555))

(declare-fun m!395557 () Bool)

(assert (=> b!401861 m!395557))

(declare-fun m!395559 () Bool)

(assert (=> b!401864 m!395559))

(declare-fun m!395561 () Bool)

(assert (=> bm!28315 m!395561))

(declare-fun m!395563 () Bool)

(assert (=> bm!28315 m!395563))

(assert (=> bm!28316 m!395561))

(declare-fun m!395565 () Bool)

(assert (=> bm!28316 m!395565))

(declare-fun m!395567 () Bool)

(assert (=> b!401852 m!395567))

(declare-fun m!395569 () Bool)

(assert (=> b!401857 m!395569))

(declare-fun m!395571 () Bool)

(assert (=> b!401858 m!395571))

(declare-fun m!395573 () Bool)

(assert (=> mapNonEmpty!16773 m!395573))

(declare-fun m!395575 () Bool)

(assert (=> b!401856 m!395575))

(declare-fun m!395577 () Bool)

(assert (=> b!401863 m!395577))

(check-sat (not b!401856) (not b!401857) (not start!38690) (not b!401852) (not b!401860) (not mapNonEmpty!16773) (not bm!28315) (not b!401863) (not b!401858) tp_is_empty!10101 b_and!16623 (not b_next!9219) (not b!401862) (not b!401861) (not b!401859) (not bm!28316))
(check-sat b_and!16623 (not b_next!9219))
