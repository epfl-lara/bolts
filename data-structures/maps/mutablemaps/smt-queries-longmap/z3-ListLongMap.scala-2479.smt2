; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38702 () Bool)

(assert start!38702)

(declare-fun b_free!9231 () Bool)

(declare-fun b_next!9231 () Bool)

(assert (=> start!38702 (= b_free!9231 (not b_next!9231))))

(declare-fun tp!32817 () Bool)

(declare-fun b_and!16635 () Bool)

(assert (=> start!38702 (= tp!32817 b_and!16635)))

(declare-fun b!402154 () Bool)

(declare-fun e!242323 () Bool)

(assert (=> b!402154 (= e!242323 (not true))))

(declare-fun e!242321 () Bool)

(assert (=> b!402154 e!242321))

(declare-fun c!54728 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402154 (= c!54728 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14589 0))(
  ( (V!14590 (val!5101 Int)) )
))
(declare-datatypes ((ValueCell!4713 0))(
  ( (ValueCellFull!4713 (v!7344 V!14589)) (EmptyCell!4713) )
))
(declare-datatypes ((array!24097 0))(
  ( (array!24098 (arr!11495 (Array (_ BitVec 32) ValueCell!4713)) (size!11847 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24097)

(declare-fun zeroValue!515 () V!14589)

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12125 0))(
  ( (Unit!12126) )
))
(declare-fun lt!187881 () Unit!12125)

(declare-fun v!412 () V!14589)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24099 0))(
  ( (array!24100 (arr!11496 (Array (_ BitVec 32) (_ BitVec 64))) (size!11848 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24099)

(declare-fun minValue!515 () V!14589)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!325 (array!24099 array!24097 (_ BitVec 32) (_ BitVec 32) V!14589 V!14589 (_ BitVec 32) (_ BitVec 64) V!14589 (_ BitVec 32) Int) Unit!12125)

(assert (=> b!402154 (= lt!187881 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!325 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402155 () Bool)

(declare-datatypes ((tuple2!6712 0))(
  ( (tuple2!6713 (_1!3366 (_ BitVec 64)) (_2!3366 V!14589)) )
))
(declare-datatypes ((List!6658 0))(
  ( (Nil!6655) (Cons!6654 (h!7510 tuple2!6712) (t!11840 List!6658)) )
))
(declare-datatypes ((ListLongMap!5639 0))(
  ( (ListLongMap!5640 (toList!2835 List!6658)) )
))
(declare-fun call!28354 () ListLongMap!5639)

(declare-fun call!28355 () ListLongMap!5639)

(assert (=> b!402155 (= e!242321 (= call!28354 call!28355))))

(declare-fun b!402156 () Bool)

(declare-fun res!231695 () Bool)

(declare-fun e!242320 () Bool)

(assert (=> b!402156 (=> (not res!231695) (not e!242320))))

(declare-fun arrayContainsKey!0 (array!24099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402156 (= res!231695 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!402157 () Bool)

(declare-fun res!231690 () Bool)

(assert (=> b!402157 (=> (not res!231690) (not e!242320))))

(assert (=> b!402157 (= res!231690 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11848 _keys!709))))))

(declare-fun mapIsEmpty!16791 () Bool)

(declare-fun mapRes!16791 () Bool)

(assert (=> mapIsEmpty!16791 mapRes!16791))

(declare-fun b!402159 () Bool)

(declare-fun e!242324 () Bool)

(declare-fun tp_is_empty!10113 () Bool)

(assert (=> b!402159 (= e!242324 tp_is_empty!10113)))

(declare-fun b!402160 () Bool)

(declare-fun res!231686 () Bool)

(assert (=> b!402160 (=> (not res!231686) (not e!242320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402160 (= res!231686 (validMask!0 mask!1025))))

(declare-fun b!402161 () Bool)

(declare-fun res!231689 () Bool)

(assert (=> b!402161 (=> (not res!231689) (not e!242323))))

(declare-fun lt!187880 () array!24099)

(declare-datatypes ((List!6659 0))(
  ( (Nil!6656) (Cons!6655 (h!7511 (_ BitVec 64)) (t!11841 List!6659)) )
))
(declare-fun arrayNoDuplicates!0 (array!24099 (_ BitVec 32) List!6659) Bool)

(assert (=> b!402161 (= res!231689 (arrayNoDuplicates!0 lt!187880 #b00000000000000000000000000000000 Nil!6656))))

(declare-fun bm!28351 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1048 (array!24099 array!24097 (_ BitVec 32) (_ BitVec 32) V!14589 V!14589 (_ BitVec 32) Int) ListLongMap!5639)

(assert (=> bm!28351 (= call!28355 (getCurrentListMapNoExtraKeys!1048 (ite c!54728 lt!187880 _keys!709) (ite c!54728 (array!24098 (store (arr!11495 _values!549) i!563 (ValueCellFull!4713 v!412)) (size!11847 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402162 () Bool)

(declare-fun e!242322 () Bool)

(assert (=> b!402162 (= e!242322 tp_is_empty!10113)))

(declare-fun b!402163 () Bool)

(declare-fun res!231688 () Bool)

(assert (=> b!402163 (=> (not res!231688) (not e!242320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402163 (= res!231688 (validKeyInArray!0 k0!794))))

(declare-fun b!402164 () Bool)

(declare-fun res!231694 () Bool)

(assert (=> b!402164 (=> (not res!231694) (not e!242320))))

(assert (=> b!402164 (= res!231694 (or (= (select (arr!11496 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11496 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402165 () Bool)

(declare-fun res!231687 () Bool)

(assert (=> b!402165 (=> (not res!231687) (not e!242320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24099 (_ BitVec 32)) Bool)

(assert (=> b!402165 (= res!231687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402166 () Bool)

(declare-fun res!231691 () Bool)

(assert (=> b!402166 (=> (not res!231691) (not e!242320))))

(assert (=> b!402166 (= res!231691 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6656))))

(declare-fun b!402167 () Bool)

(declare-fun res!231696 () Bool)

(assert (=> b!402167 (=> (not res!231696) (not e!242323))))

(assert (=> b!402167 (= res!231696 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11848 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!402168 () Bool)

(declare-fun res!231693 () Bool)

(assert (=> b!402168 (=> (not res!231693) (not e!242320))))

(assert (=> b!402168 (= res!231693 (and (= (size!11847 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11848 _keys!709) (size!11847 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402169 () Bool)

(assert (=> b!402169 (= e!242320 e!242323)))

(declare-fun res!231692 () Bool)

(assert (=> b!402169 (=> (not res!231692) (not e!242323))))

(assert (=> b!402169 (= res!231692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187880 mask!1025))))

(assert (=> b!402169 (= lt!187880 (array!24100 (store (arr!11496 _keys!709) i!563 k0!794) (size!11848 _keys!709)))))

(declare-fun b!402170 () Bool)

(declare-fun +!1115 (ListLongMap!5639 tuple2!6712) ListLongMap!5639)

(assert (=> b!402170 (= e!242321 (= call!28355 (+!1115 call!28354 (tuple2!6713 k0!794 v!412))))))

(declare-fun b!402158 () Bool)

(declare-fun e!242326 () Bool)

(assert (=> b!402158 (= e!242326 (and e!242324 mapRes!16791))))

(declare-fun condMapEmpty!16791 () Bool)

(declare-fun mapDefault!16791 () ValueCell!4713)

(assert (=> b!402158 (= condMapEmpty!16791 (= (arr!11495 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4713)) mapDefault!16791)))))

(declare-fun res!231685 () Bool)

(assert (=> start!38702 (=> (not res!231685) (not e!242320))))

(assert (=> start!38702 (= res!231685 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11848 _keys!709))))))

(assert (=> start!38702 e!242320))

(assert (=> start!38702 tp_is_empty!10113))

(assert (=> start!38702 tp!32817))

(assert (=> start!38702 true))

(declare-fun array_inv!8402 (array!24097) Bool)

(assert (=> start!38702 (and (array_inv!8402 _values!549) e!242326)))

(declare-fun array_inv!8403 (array!24099) Bool)

(assert (=> start!38702 (array_inv!8403 _keys!709)))

(declare-fun bm!28352 () Bool)

(assert (=> bm!28352 (= call!28354 (getCurrentListMapNoExtraKeys!1048 (ite c!54728 _keys!709 lt!187880) (ite c!54728 _values!549 (array!24098 (store (arr!11495 _values!549) i!563 (ValueCellFull!4713 v!412)) (size!11847 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!16791 () Bool)

(declare-fun tp!32816 () Bool)

(assert (=> mapNonEmpty!16791 (= mapRes!16791 (and tp!32816 e!242322))))

(declare-fun mapValue!16791 () ValueCell!4713)

(declare-fun mapRest!16791 () (Array (_ BitVec 32) ValueCell!4713))

(declare-fun mapKey!16791 () (_ BitVec 32))

(assert (=> mapNonEmpty!16791 (= (arr!11495 _values!549) (store mapRest!16791 mapKey!16791 mapValue!16791))))

(assert (= (and start!38702 res!231685) b!402160))

(assert (= (and b!402160 res!231686) b!402168))

(assert (= (and b!402168 res!231693) b!402165))

(assert (= (and b!402165 res!231687) b!402166))

(assert (= (and b!402166 res!231691) b!402157))

(assert (= (and b!402157 res!231690) b!402163))

(assert (= (and b!402163 res!231688) b!402164))

(assert (= (and b!402164 res!231694) b!402156))

(assert (= (and b!402156 res!231695) b!402169))

(assert (= (and b!402169 res!231692) b!402161))

(assert (= (and b!402161 res!231689) b!402167))

(assert (= (and b!402167 res!231696) b!402154))

(assert (= (and b!402154 c!54728) b!402170))

(assert (= (and b!402154 (not c!54728)) b!402155))

(assert (= (or b!402170 b!402155) bm!28351))

(assert (= (or b!402170 b!402155) bm!28352))

(assert (= (and b!402158 condMapEmpty!16791) mapIsEmpty!16791))

(assert (= (and b!402158 (not condMapEmpty!16791)) mapNonEmpty!16791))

(get-info :version)

(assert (= (and mapNonEmpty!16791 ((_ is ValueCellFull!4713) mapValue!16791)) b!402162))

(assert (= (and b!402158 ((_ is ValueCellFull!4713) mapDefault!16791)) b!402159))

(assert (= start!38702 b!402158))

(declare-fun m!395749 () Bool)

(assert (=> b!402156 m!395749))

(declare-fun m!395751 () Bool)

(assert (=> b!402165 m!395751))

(declare-fun m!395753 () Bool)

(assert (=> b!402161 m!395753))

(declare-fun m!395755 () Bool)

(assert (=> bm!28351 m!395755))

(declare-fun m!395757 () Bool)

(assert (=> bm!28351 m!395757))

(declare-fun m!395759 () Bool)

(assert (=> b!402166 m!395759))

(declare-fun m!395761 () Bool)

(assert (=> start!38702 m!395761))

(declare-fun m!395763 () Bool)

(assert (=> start!38702 m!395763))

(declare-fun m!395765 () Bool)

(assert (=> b!402160 m!395765))

(declare-fun m!395767 () Bool)

(assert (=> mapNonEmpty!16791 m!395767))

(declare-fun m!395769 () Bool)

(assert (=> b!402154 m!395769))

(declare-fun m!395771 () Bool)

(assert (=> b!402169 m!395771))

(declare-fun m!395773 () Bool)

(assert (=> b!402169 m!395773))

(declare-fun m!395775 () Bool)

(assert (=> b!402164 m!395775))

(declare-fun m!395777 () Bool)

(assert (=> b!402170 m!395777))

(declare-fun m!395779 () Bool)

(assert (=> b!402163 m!395779))

(assert (=> bm!28352 m!395755))

(declare-fun m!395781 () Bool)

(assert (=> bm!28352 m!395781))

(check-sat (not start!38702) (not b!402161) tp_is_empty!10113 (not b!402170) (not bm!28351) (not b!402154) (not b!402156) (not mapNonEmpty!16791) (not b!402163) (not b!402160) (not b!402169) (not bm!28352) (not b_next!9231) (not b!402165) b_and!16635 (not b!402166))
(check-sat b_and!16635 (not b_next!9231))
