; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39236 () Bool)

(assert start!39236)

(declare-fun b_free!9495 () Bool)

(declare-fun b_next!9495 () Bool)

(assert (=> start!39236 (= b_free!9495 (not b_next!9495))))

(declare-fun tp!34014 () Bool)

(declare-fun b_and!16899 () Bool)

(assert (=> start!39236 (= tp!34014 b_and!16899)))

(declare-fun b!413724 () Bool)

(declare-fun res!240554 () Bool)

(declare-fun e!247339 () Bool)

(assert (=> b!413724 (=> (not res!240554) (not e!247339))))

(declare-datatypes ((array!25133 0))(
  ( (array!25134 (arr!12013 (Array (_ BitVec 32) (_ BitVec 64))) (size!12365 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25133)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25133 (_ BitVec 32)) Bool)

(assert (=> b!413724 (= res!240554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!413725 () Bool)

(declare-fun e!247338 () Bool)

(assert (=> b!413725 (= e!247339 e!247338)))

(declare-fun res!240550 () Bool)

(assert (=> b!413725 (=> (not res!240550) (not e!247338))))

(declare-fun lt!189823 () array!25133)

(assert (=> b!413725 (= res!240550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189823 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!413725 (= lt!189823 (array!25134 (store (arr!12013 _keys!709) i!563 k0!794) (size!12365 _keys!709)))))

(declare-fun b!413726 () Bool)

(declare-fun res!240555 () Bool)

(assert (=> b!413726 (=> (not res!240555) (not e!247339))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!413726 (= res!240555 (validKeyInArray!0 k0!794))))

(declare-fun c!54881 () Bool)

(declare-datatypes ((V!15301 0))(
  ( (V!15302 (val!5368 Int)) )
))
(declare-fun minValue!515 () V!15301)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!4980 0))(
  ( (ValueCellFull!4980 (v!7611 V!15301)) (EmptyCell!4980) )
))
(declare-datatypes ((array!25135 0))(
  ( (array!25136 (arr!12014 (Array (_ BitVec 32) ValueCell!4980)) (size!12366 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25135)

(declare-fun zeroValue!515 () V!15301)

(declare-fun bm!28657 () Bool)

(declare-fun lt!189825 () array!25135)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!6904 0))(
  ( (tuple2!6905 (_1!3462 (_ BitVec 64)) (_2!3462 V!15301)) )
))
(declare-datatypes ((List!6965 0))(
  ( (Nil!6962) (Cons!6961 (h!7817 tuple2!6904) (t!12147 List!6965)) )
))
(declare-datatypes ((ListLongMap!5831 0))(
  ( (ListLongMap!5832 (toList!2931 List!6965)) )
))
(declare-fun call!28661 () ListLongMap!5831)

(declare-fun getCurrentListMapNoExtraKeys!1139 (array!25133 array!25135 (_ BitVec 32) (_ BitVec 32) V!15301 V!15301 (_ BitVec 32) Int) ListLongMap!5831)

(assert (=> bm!28657 (= call!28661 (getCurrentListMapNoExtraKeys!1139 (ite c!54881 _keys!709 lt!189823) (ite c!54881 _values!549 lt!189825) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413727 () Bool)

(declare-fun e!247342 () Bool)

(assert (=> b!413727 (= e!247338 e!247342)))

(declare-fun res!240558 () Bool)

(assert (=> b!413727 (=> (not res!240558) (not e!247342))))

(assert (=> b!413727 (= res!240558 (= from!863 i!563))))

(declare-fun lt!189824 () ListLongMap!5831)

(assert (=> b!413727 (= lt!189824 (getCurrentListMapNoExtraKeys!1139 lt!189823 lt!189825 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15301)

(assert (=> b!413727 (= lt!189825 (array!25136 (store (arr!12014 _values!549) i!563 (ValueCellFull!4980 v!412)) (size!12366 _values!549)))))

(declare-fun lt!189822 () ListLongMap!5831)

(assert (=> b!413727 (= lt!189822 (getCurrentListMapNoExtraKeys!1139 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!413728 () Bool)

(declare-fun res!240551 () Bool)

(assert (=> b!413728 (=> (not res!240551) (not e!247339))))

(assert (=> b!413728 (= res!240551 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12365 _keys!709))))))

(declare-fun mapIsEmpty!17592 () Bool)

(declare-fun mapRes!17592 () Bool)

(assert (=> mapIsEmpty!17592 mapRes!17592))

(declare-fun b!413729 () Bool)

(declare-fun e!247340 () Bool)

(declare-fun tp_is_empty!10647 () Bool)

(assert (=> b!413729 (= e!247340 tp_is_empty!10647)))

(declare-fun b!413730 () Bool)

(declare-fun res!240549 () Bool)

(assert (=> b!413730 (=> (not res!240549) (not e!247338))))

(assert (=> b!413730 (= res!240549 (bvsle from!863 i!563))))

(declare-fun b!413731 () Bool)

(assert (=> b!413731 (= e!247342 (not true))))

(declare-fun e!247341 () Bool)

(assert (=> b!413731 e!247341))

(assert (=> b!413731 (= c!54881 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12201 0))(
  ( (Unit!12202) )
))
(declare-fun lt!189821 () Unit!12201)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!363 (array!25133 array!25135 (_ BitVec 32) (_ BitVec 32) V!15301 V!15301 (_ BitVec 32) (_ BitVec 64) V!15301 (_ BitVec 32) Int) Unit!12201)

(assert (=> b!413731 (= lt!189821 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!363 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413732 () Bool)

(declare-fun res!240553 () Bool)

(assert (=> b!413732 (=> (not res!240553) (not e!247339))))

(declare-datatypes ((List!6966 0))(
  ( (Nil!6963) (Cons!6962 (h!7818 (_ BitVec 64)) (t!12148 List!6966)) )
))
(declare-fun arrayNoDuplicates!0 (array!25133 (_ BitVec 32) List!6966) Bool)

(assert (=> b!413732 (= res!240553 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6963))))

(declare-fun b!413733 () Bool)

(declare-fun res!240547 () Bool)

(assert (=> b!413733 (=> (not res!240547) (not e!247339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!413733 (= res!240547 (validMask!0 mask!1025))))

(declare-fun b!413734 () Bool)

(declare-fun res!240548 () Bool)

(assert (=> b!413734 (=> (not res!240548) (not e!247338))))

(assert (=> b!413734 (= res!240548 (arrayNoDuplicates!0 lt!189823 #b00000000000000000000000000000000 Nil!6963))))

(declare-fun res!240552 () Bool)

(assert (=> start!39236 (=> (not res!240552) (not e!247339))))

(assert (=> start!39236 (= res!240552 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12365 _keys!709))))))

(assert (=> start!39236 e!247339))

(assert (=> start!39236 tp_is_empty!10647))

(assert (=> start!39236 tp!34014))

(assert (=> start!39236 true))

(declare-fun e!247345 () Bool)

(declare-fun array_inv!8764 (array!25135) Bool)

(assert (=> start!39236 (and (array_inv!8764 _values!549) e!247345)))

(declare-fun array_inv!8765 (array!25133) Bool)

(assert (=> start!39236 (array_inv!8765 _keys!709)))

(declare-fun b!413735 () Bool)

(declare-fun res!240546 () Bool)

(assert (=> b!413735 (=> (not res!240546) (not e!247339))))

(assert (=> b!413735 (= res!240546 (and (= (size!12366 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12365 _keys!709) (size!12366 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun call!28660 () ListLongMap!5831)

(declare-fun b!413736 () Bool)

(declare-fun +!1150 (ListLongMap!5831 tuple2!6904) ListLongMap!5831)

(assert (=> b!413736 (= e!247341 (= call!28660 (+!1150 call!28661 (tuple2!6905 k0!794 v!412))))))

(declare-fun bm!28658 () Bool)

(assert (=> bm!28658 (= call!28660 (getCurrentListMapNoExtraKeys!1139 (ite c!54881 lt!189823 _keys!709) (ite c!54881 lt!189825 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!413737 () Bool)

(declare-fun e!247344 () Bool)

(assert (=> b!413737 (= e!247344 tp_is_empty!10647)))

(declare-fun b!413738 () Bool)

(declare-fun res!240557 () Bool)

(assert (=> b!413738 (=> (not res!240557) (not e!247339))))

(declare-fun arrayContainsKey!0 (array!25133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!413738 (= res!240557 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!413739 () Bool)

(assert (=> b!413739 (= e!247345 (and e!247340 mapRes!17592))))

(declare-fun condMapEmpty!17592 () Bool)

(declare-fun mapDefault!17592 () ValueCell!4980)

(assert (=> b!413739 (= condMapEmpty!17592 (= (arr!12014 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4980)) mapDefault!17592)))))

(declare-fun b!413740 () Bool)

(assert (=> b!413740 (= e!247341 (= call!28661 call!28660))))

(declare-fun b!413741 () Bool)

(declare-fun res!240556 () Bool)

(assert (=> b!413741 (=> (not res!240556) (not e!247339))))

(assert (=> b!413741 (= res!240556 (or (= (select (arr!12013 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12013 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17592 () Bool)

(declare-fun tp!34013 () Bool)

(assert (=> mapNonEmpty!17592 (= mapRes!17592 (and tp!34013 e!247344))))

(declare-fun mapValue!17592 () ValueCell!4980)

(declare-fun mapRest!17592 () (Array (_ BitVec 32) ValueCell!4980))

(declare-fun mapKey!17592 () (_ BitVec 32))

(assert (=> mapNonEmpty!17592 (= (arr!12014 _values!549) (store mapRest!17592 mapKey!17592 mapValue!17592))))

(assert (= (and start!39236 res!240552) b!413733))

(assert (= (and b!413733 res!240547) b!413735))

(assert (= (and b!413735 res!240546) b!413724))

(assert (= (and b!413724 res!240554) b!413732))

(assert (= (and b!413732 res!240553) b!413728))

(assert (= (and b!413728 res!240551) b!413726))

(assert (= (and b!413726 res!240555) b!413741))

(assert (= (and b!413741 res!240556) b!413738))

(assert (= (and b!413738 res!240557) b!413725))

(assert (= (and b!413725 res!240550) b!413734))

(assert (= (and b!413734 res!240548) b!413730))

(assert (= (and b!413730 res!240549) b!413727))

(assert (= (and b!413727 res!240558) b!413731))

(assert (= (and b!413731 c!54881) b!413736))

(assert (= (and b!413731 (not c!54881)) b!413740))

(assert (= (or b!413736 b!413740) bm!28658))

(assert (= (or b!413736 b!413740) bm!28657))

(assert (= (and b!413739 condMapEmpty!17592) mapIsEmpty!17592))

(assert (= (and b!413739 (not condMapEmpty!17592)) mapNonEmpty!17592))

(get-info :version)

(assert (= (and mapNonEmpty!17592 ((_ is ValueCellFull!4980) mapValue!17592)) b!413737))

(assert (= (and b!413739 ((_ is ValueCellFull!4980) mapDefault!17592)) b!413729))

(assert (= start!39236 b!413739))

(declare-fun m!403121 () Bool)

(assert (=> b!413732 m!403121))

(declare-fun m!403123 () Bool)

(assert (=> mapNonEmpty!17592 m!403123))

(declare-fun m!403125 () Bool)

(assert (=> b!413734 m!403125))

(declare-fun m!403127 () Bool)

(assert (=> b!413731 m!403127))

(declare-fun m!403129 () Bool)

(assert (=> b!413725 m!403129))

(declare-fun m!403131 () Bool)

(assert (=> b!413725 m!403131))

(declare-fun m!403133 () Bool)

(assert (=> bm!28657 m!403133))

(declare-fun m!403135 () Bool)

(assert (=> bm!28658 m!403135))

(declare-fun m!403137 () Bool)

(assert (=> b!413741 m!403137))

(declare-fun m!403139 () Bool)

(assert (=> b!413727 m!403139))

(declare-fun m!403141 () Bool)

(assert (=> b!413727 m!403141))

(declare-fun m!403143 () Bool)

(assert (=> b!413727 m!403143))

(declare-fun m!403145 () Bool)

(assert (=> b!413726 m!403145))

(declare-fun m!403147 () Bool)

(assert (=> b!413738 m!403147))

(declare-fun m!403149 () Bool)

(assert (=> b!413724 m!403149))

(declare-fun m!403151 () Bool)

(assert (=> b!413736 m!403151))

(declare-fun m!403153 () Bool)

(assert (=> start!39236 m!403153))

(declare-fun m!403155 () Bool)

(assert (=> start!39236 m!403155))

(declare-fun m!403157 () Bool)

(assert (=> b!413733 m!403157))

(check-sat (not start!39236) (not bm!28658) (not b!413734) (not b!413727) (not b_next!9495) (not b!413725) tp_is_empty!10647 (not b!413724) (not b!413736) b_and!16899 (not b!413732) (not b!413738) (not mapNonEmpty!17592) (not bm!28657) (not b!413733) (not b!413726) (not b!413731))
(check-sat b_and!16899 (not b_next!9495))
