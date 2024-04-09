; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38726 () Bool)

(assert start!38726)

(declare-fun b_free!9255 () Bool)

(declare-fun b_next!9255 () Bool)

(assert (=> start!38726 (= b_free!9255 (not b_next!9255))))

(declare-fun tp!32888 () Bool)

(declare-fun b_and!16659 () Bool)

(assert (=> start!38726 (= tp!32888 b_and!16659)))

(declare-fun b!402766 () Bool)

(declare-fun res!232118 () Bool)

(declare-fun e!242573 () Bool)

(assert (=> b!402766 (=> (not res!232118) (not e!242573))))

(declare-datatypes ((array!24145 0))(
  ( (array!24146 (arr!11519 (Array (_ BitVec 32) (_ BitVec 64))) (size!11871 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24145)

(declare-datatypes ((List!6679 0))(
  ( (Nil!6676) (Cons!6675 (h!7531 (_ BitVec 64)) (t!11861 List!6679)) )
))
(declare-fun arrayNoDuplicates!0 (array!24145 (_ BitVec 32) List!6679) Bool)

(assert (=> b!402766 (= res!232118 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6676))))

(declare-fun b!402767 () Bool)

(declare-fun e!242577 () Bool)

(assert (=> b!402767 (= e!242573 e!242577)))

(declare-fun res!232120 () Bool)

(assert (=> b!402767 (=> (not res!232120) (not e!242577))))

(declare-fun lt!187952 () array!24145)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24145 (_ BitVec 32)) Bool)

(assert (=> b!402767 (= res!232120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187952 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402767 (= lt!187952 (array!24146 (store (arr!11519 _keys!709) i!563 k0!794) (size!11871 _keys!709)))))

(declare-datatypes ((V!14621 0))(
  ( (V!14622 (val!5113 Int)) )
))
(declare-datatypes ((tuple2!6736 0))(
  ( (tuple2!6737 (_1!3378 (_ BitVec 64)) (_2!3378 V!14621)) )
))
(declare-datatypes ((List!6680 0))(
  ( (Nil!6677) (Cons!6676 (h!7532 tuple2!6736) (t!11862 List!6680)) )
))
(declare-datatypes ((ListLongMap!5663 0))(
  ( (ListLongMap!5664 (toList!2847 List!6680)) )
))
(declare-fun call!28426 () ListLongMap!5663)

(declare-fun minValue!515 () V!14621)

(declare-datatypes ((ValueCell!4725 0))(
  ( (ValueCellFull!4725 (v!7356 V!14621)) (EmptyCell!4725) )
))
(declare-datatypes ((array!24147 0))(
  ( (array!24148 (arr!11520 (Array (_ BitVec 32) ValueCell!4725)) (size!11872 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24147)

(declare-fun zeroValue!515 () V!14621)

(declare-fun v!412 () V!14621)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun bm!28423 () Bool)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun c!54764 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1058 (array!24145 array!24147 (_ BitVec 32) (_ BitVec 32) V!14621 V!14621 (_ BitVec 32) Int) ListLongMap!5663)

(assert (=> bm!28423 (= call!28426 (getCurrentListMapNoExtraKeys!1058 (ite c!54764 _keys!709 lt!187952) (ite c!54764 _values!549 (array!24148 (store (arr!11520 _values!549) i!563 (ValueCellFull!4725 v!412)) (size!11872 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402768 () Bool)

(declare-fun res!232122 () Bool)

(assert (=> b!402768 (=> (not res!232122) (not e!242573))))

(assert (=> b!402768 (= res!232122 (and (= (size!11872 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11871 _keys!709) (size!11872 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402769 () Bool)

(declare-fun e!242575 () Bool)

(declare-fun tp_is_empty!10137 () Bool)

(assert (=> b!402769 (= e!242575 tp_is_empty!10137)))

(declare-fun b!402770 () Bool)

(declare-fun res!232121 () Bool)

(assert (=> b!402770 (=> (not res!232121) (not e!242573))))

(assert (=> b!402770 (= res!232121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402771 () Bool)

(declare-fun res!232124 () Bool)

(assert (=> b!402771 (=> (not res!232124) (not e!242573))))

(assert (=> b!402771 (= res!232124 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11871 _keys!709))))))

(declare-fun b!402772 () Bool)

(declare-fun call!28427 () ListLongMap!5663)

(declare-fun e!242574 () Bool)

(declare-fun +!1124 (ListLongMap!5663 tuple2!6736) ListLongMap!5663)

(assert (=> b!402772 (= e!242574 (= call!28427 (+!1124 call!28426 (tuple2!6737 k0!794 v!412))))))

(declare-fun b!402773 () Bool)

(declare-fun res!232127 () Bool)

(assert (=> b!402773 (=> (not res!232127) (not e!242573))))

(declare-fun arrayContainsKey!0 (array!24145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402773 (= res!232127 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!402774 () Bool)

(assert (=> b!402774 (= e!242577 (not true))))

(assert (=> b!402774 e!242574))

(assert (=> b!402774 (= c!54764 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12143 0))(
  ( (Unit!12144) )
))
(declare-fun lt!187953 () Unit!12143)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!334 (array!24145 array!24147 (_ BitVec 32) (_ BitVec 32) V!14621 V!14621 (_ BitVec 32) (_ BitVec 64) V!14621 (_ BitVec 32) Int) Unit!12143)

(assert (=> b!402774 (= lt!187953 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!334 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402775 () Bool)

(declare-fun res!232125 () Bool)

(assert (=> b!402775 (=> (not res!232125) (not e!242573))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402775 (= res!232125 (validKeyInArray!0 k0!794))))

(declare-fun bm!28424 () Bool)

(assert (=> bm!28424 (= call!28427 (getCurrentListMapNoExtraKeys!1058 (ite c!54764 lt!187952 _keys!709) (ite c!54764 (array!24148 (store (arr!11520 _values!549) i!563 (ValueCellFull!4725 v!412)) (size!11872 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402776 () Bool)

(declare-fun e!242572 () Bool)

(declare-fun e!242576 () Bool)

(declare-fun mapRes!16827 () Bool)

(assert (=> b!402776 (= e!242572 (and e!242576 mapRes!16827))))

(declare-fun condMapEmpty!16827 () Bool)

(declare-fun mapDefault!16827 () ValueCell!4725)

(assert (=> b!402776 (= condMapEmpty!16827 (= (arr!11520 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4725)) mapDefault!16827)))))

(declare-fun b!402778 () Bool)

(declare-fun res!232119 () Bool)

(assert (=> b!402778 (=> (not res!232119) (not e!242573))))

(assert (=> b!402778 (= res!232119 (or (= (select (arr!11519 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11519 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402779 () Bool)

(declare-fun res!232117 () Bool)

(assert (=> b!402779 (=> (not res!232117) (not e!242573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402779 (= res!232117 (validMask!0 mask!1025))))

(declare-fun b!402780 () Bool)

(declare-fun res!232128 () Bool)

(assert (=> b!402780 (=> (not res!232128) (not e!242577))))

(assert (=> b!402780 (= res!232128 (arrayNoDuplicates!0 lt!187952 #b00000000000000000000000000000000 Nil!6676))))

(declare-fun mapIsEmpty!16827 () Bool)

(assert (=> mapIsEmpty!16827 mapRes!16827))

(declare-fun mapNonEmpty!16827 () Bool)

(declare-fun tp!32889 () Bool)

(assert (=> mapNonEmpty!16827 (= mapRes!16827 (and tp!32889 e!242575))))

(declare-fun mapValue!16827 () ValueCell!4725)

(declare-fun mapKey!16827 () (_ BitVec 32))

(declare-fun mapRest!16827 () (Array (_ BitVec 32) ValueCell!4725))

(assert (=> mapNonEmpty!16827 (= (arr!11520 _values!549) (store mapRest!16827 mapKey!16827 mapValue!16827))))

(declare-fun b!402781 () Bool)

(assert (=> b!402781 (= e!242576 tp_is_empty!10137)))

(declare-fun b!402782 () Bool)

(declare-fun res!232123 () Bool)

(assert (=> b!402782 (=> (not res!232123) (not e!242577))))

(assert (=> b!402782 (= res!232123 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11871 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun res!232126 () Bool)

(assert (=> start!38726 (=> (not res!232126) (not e!242573))))

(assert (=> start!38726 (= res!232126 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11871 _keys!709))))))

(assert (=> start!38726 e!242573))

(assert (=> start!38726 tp_is_empty!10137))

(assert (=> start!38726 tp!32888))

(assert (=> start!38726 true))

(declare-fun array_inv!8418 (array!24147) Bool)

(assert (=> start!38726 (and (array_inv!8418 _values!549) e!242572)))

(declare-fun array_inv!8419 (array!24145) Bool)

(assert (=> start!38726 (array_inv!8419 _keys!709)))

(declare-fun b!402777 () Bool)

(assert (=> b!402777 (= e!242574 (= call!28426 call!28427))))

(assert (= (and start!38726 res!232126) b!402779))

(assert (= (and b!402779 res!232117) b!402768))

(assert (= (and b!402768 res!232122) b!402770))

(assert (= (and b!402770 res!232121) b!402766))

(assert (= (and b!402766 res!232118) b!402771))

(assert (= (and b!402771 res!232124) b!402775))

(assert (= (and b!402775 res!232125) b!402778))

(assert (= (and b!402778 res!232119) b!402773))

(assert (= (and b!402773 res!232127) b!402767))

(assert (= (and b!402767 res!232120) b!402780))

(assert (= (and b!402780 res!232128) b!402782))

(assert (= (and b!402782 res!232123) b!402774))

(assert (= (and b!402774 c!54764) b!402772))

(assert (= (and b!402774 (not c!54764)) b!402777))

(assert (= (or b!402772 b!402777) bm!28424))

(assert (= (or b!402772 b!402777) bm!28423))

(assert (= (and b!402776 condMapEmpty!16827) mapIsEmpty!16827))

(assert (= (and b!402776 (not condMapEmpty!16827)) mapNonEmpty!16827))

(get-info :version)

(assert (= (and mapNonEmpty!16827 ((_ is ValueCellFull!4725) mapValue!16827)) b!402769))

(assert (= (and b!402776 ((_ is ValueCellFull!4725) mapDefault!16827)) b!402781))

(assert (= start!38726 b!402776))

(declare-fun m!396157 () Bool)

(assert (=> b!402775 m!396157))

(declare-fun m!396159 () Bool)

(assert (=> b!402779 m!396159))

(declare-fun m!396161 () Bool)

(assert (=> b!402770 m!396161))

(declare-fun m!396163 () Bool)

(assert (=> b!402766 m!396163))

(declare-fun m!396165 () Bool)

(assert (=> bm!28423 m!396165))

(declare-fun m!396167 () Bool)

(assert (=> bm!28423 m!396167))

(declare-fun m!396169 () Bool)

(assert (=> b!402778 m!396169))

(declare-fun m!396171 () Bool)

(assert (=> b!402773 m!396171))

(declare-fun m!396173 () Bool)

(assert (=> b!402772 m!396173))

(declare-fun m!396175 () Bool)

(assert (=> b!402774 m!396175))

(assert (=> bm!28424 m!396165))

(declare-fun m!396177 () Bool)

(assert (=> bm!28424 m!396177))

(declare-fun m!396179 () Bool)

(assert (=> b!402767 m!396179))

(declare-fun m!396181 () Bool)

(assert (=> b!402767 m!396181))

(declare-fun m!396183 () Bool)

(assert (=> start!38726 m!396183))

(declare-fun m!396185 () Bool)

(assert (=> start!38726 m!396185))

(declare-fun m!396187 () Bool)

(assert (=> b!402780 m!396187))

(declare-fun m!396189 () Bool)

(assert (=> mapNonEmpty!16827 m!396189))

(check-sat (not start!38726) b_and!16659 tp_is_empty!10137 (not b!402779) (not mapNonEmpty!16827) (not b!402770) (not b!402772) (not b_next!9255) (not bm!28423) (not b!402774) (not bm!28424) (not b!402767) (not b!402780) (not b!402766) (not b!402775) (not b!402773))
(check-sat b_and!16659 (not b_next!9255))
