; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39530 () Bool)

(assert start!39530)

(declare-fun b_free!9789 () Bool)

(declare-fun b_next!9789 () Bool)

(assert (=> start!39530 (= b_free!9789 (not b_next!9789))))

(declare-fun tp!34896 () Bool)

(declare-fun b_and!17463 () Bool)

(assert (=> start!39530 (= tp!34896 b_and!17463)))

(declare-fun b!422304 () Bool)

(declare-fun e!251255 () Bool)

(declare-fun tp_is_empty!10941 () Bool)

(assert (=> b!422304 (= e!251255 tp_is_empty!10941)))

(declare-fun b!422305 () Bool)

(declare-fun res!246687 () Bool)

(declare-fun e!251256 () Bool)

(assert (=> b!422305 (=> (not res!246687) (not e!251256))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25709 0))(
  ( (array!25710 (arr!12301 (Array (_ BitVec 32) (_ BitVec 64))) (size!12653 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25709)

(assert (=> b!422305 (= res!246687 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12653 _keys!709))))))

(declare-fun b!422306 () Bool)

(declare-fun e!251254 () Bool)

(assert (=> b!422306 (= e!251256 e!251254)))

(declare-fun res!246686 () Bool)

(assert (=> b!422306 (=> (not res!246686) (not e!251254))))

(declare-fun lt!193942 () array!25709)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25709 (_ BitVec 32)) Bool)

(assert (=> b!422306 (= res!246686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193942 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!422306 (= lt!193942 (array!25710 (store (arr!12301 _keys!709) i!563 k0!794) (size!12653 _keys!709)))))

(declare-fun b!422307 () Bool)

(declare-fun res!246685 () Bool)

(assert (=> b!422307 (=> (not res!246685) (not e!251256))))

(declare-fun arrayContainsKey!0 (array!25709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422307 (= res!246685 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!422308 () Bool)

(declare-fun res!246690 () Bool)

(assert (=> b!422308 (=> (not res!246690) (not e!251256))))

(assert (=> b!422308 (= res!246690 (or (= (select (arr!12301 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12301 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!422309 () Bool)

(declare-fun res!246682 () Bool)

(assert (=> b!422309 (=> (not res!246682) (not e!251256))))

(declare-datatypes ((V!15693 0))(
  ( (V!15694 (val!5515 Int)) )
))
(declare-datatypes ((ValueCell!5127 0))(
  ( (ValueCellFull!5127 (v!7758 V!15693)) (EmptyCell!5127) )
))
(declare-datatypes ((array!25711 0))(
  ( (array!25712 (arr!12302 (Array (_ BitVec 32) ValueCell!5127)) (size!12654 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25711)

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!422309 (= res!246682 (and (= (size!12654 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12653 _keys!709) (size!12654 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422310 () Bool)

(declare-fun e!251252 () Bool)

(declare-fun mapRes!18033 () Bool)

(assert (=> b!422310 (= e!251252 (and e!251255 mapRes!18033))))

(declare-fun condMapEmpty!18033 () Bool)

(declare-fun mapDefault!18033 () ValueCell!5127)

(assert (=> b!422310 (= condMapEmpty!18033 (= (arr!12302 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5127)) mapDefault!18033)))))

(declare-fun mapIsEmpty!18033 () Bool)

(assert (=> mapIsEmpty!18033 mapRes!18033))

(declare-fun b!422311 () Bool)

(declare-fun e!251257 () Bool)

(assert (=> b!422311 (= e!251257 tp_is_empty!10941)))

(declare-fun b!422312 () Bool)

(declare-fun res!246684 () Bool)

(assert (=> b!422312 (=> (not res!246684) (not e!251256))))

(declare-datatypes ((List!7211 0))(
  ( (Nil!7208) (Cons!7207 (h!8063 (_ BitVec 64)) (t!12663 List!7211)) )
))
(declare-fun arrayNoDuplicates!0 (array!25709 (_ BitVec 32) List!7211) Bool)

(assert (=> b!422312 (= res!246684 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7208))))

(declare-fun b!422313 () Bool)

(declare-fun res!246688 () Bool)

(assert (=> b!422313 (=> (not res!246688) (not e!251256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!422313 (= res!246688 (validKeyInArray!0 k0!794))))

(declare-fun b!422314 () Bool)

(declare-fun res!246683 () Bool)

(assert (=> b!422314 (=> (not res!246683) (not e!251254))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!422314 (= res!246683 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18033 () Bool)

(declare-fun tp!34895 () Bool)

(assert (=> mapNonEmpty!18033 (= mapRes!18033 (and tp!34895 e!251257))))

(declare-fun mapValue!18033 () ValueCell!5127)

(declare-fun mapKey!18033 () (_ BitVec 32))

(declare-fun mapRest!18033 () (Array (_ BitVec 32) ValueCell!5127))

(assert (=> mapNonEmpty!18033 (= (arr!12302 _values!549) (store mapRest!18033 mapKey!18033 mapValue!18033))))

(declare-fun b!422315 () Bool)

(assert (=> b!422315 (= e!251254 false)))

(declare-fun minValue!515 () V!15693)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7168 0))(
  ( (tuple2!7169 (_1!3594 (_ BitVec 64)) (_2!3594 V!15693)) )
))
(declare-datatypes ((List!7212 0))(
  ( (Nil!7209) (Cons!7208 (h!8064 tuple2!7168) (t!12664 List!7212)) )
))
(declare-datatypes ((ListLongMap!6095 0))(
  ( (ListLongMap!6096 (toList!3063 List!7212)) )
))
(declare-fun lt!193943 () ListLongMap!6095)

(declare-fun v!412 () V!15693)

(declare-fun zeroValue!515 () V!15693)

(declare-fun getCurrentListMapNoExtraKeys!1264 (array!25709 array!25711 (_ BitVec 32) (_ BitVec 32) V!15693 V!15693 (_ BitVec 32) Int) ListLongMap!6095)

(assert (=> b!422315 (= lt!193943 (getCurrentListMapNoExtraKeys!1264 lt!193942 (array!25712 (store (arr!12302 _values!549) i!563 (ValueCellFull!5127 v!412)) (size!12654 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!193944 () ListLongMap!6095)

(assert (=> b!422315 (= lt!193944 (getCurrentListMapNoExtraKeys!1264 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!422316 () Bool)

(declare-fun res!246689 () Bool)

(assert (=> b!422316 (=> (not res!246689) (not e!251256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422316 (= res!246689 (validMask!0 mask!1025))))

(declare-fun res!246681 () Bool)

(assert (=> start!39530 (=> (not res!246681) (not e!251256))))

(assert (=> start!39530 (= res!246681 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12653 _keys!709))))))

(assert (=> start!39530 e!251256))

(assert (=> start!39530 tp_is_empty!10941))

(assert (=> start!39530 tp!34896))

(assert (=> start!39530 true))

(declare-fun array_inv!8960 (array!25711) Bool)

(assert (=> start!39530 (and (array_inv!8960 _values!549) e!251252)))

(declare-fun array_inv!8961 (array!25709) Bool)

(assert (=> start!39530 (array_inv!8961 _keys!709)))

(declare-fun b!422317 () Bool)

(declare-fun res!246679 () Bool)

(assert (=> b!422317 (=> (not res!246679) (not e!251256))))

(assert (=> b!422317 (= res!246679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422318 () Bool)

(declare-fun res!246680 () Bool)

(assert (=> b!422318 (=> (not res!246680) (not e!251254))))

(assert (=> b!422318 (= res!246680 (arrayNoDuplicates!0 lt!193942 #b00000000000000000000000000000000 Nil!7208))))

(assert (= (and start!39530 res!246681) b!422316))

(assert (= (and b!422316 res!246689) b!422309))

(assert (= (and b!422309 res!246682) b!422317))

(assert (= (and b!422317 res!246679) b!422312))

(assert (= (and b!422312 res!246684) b!422305))

(assert (= (and b!422305 res!246687) b!422313))

(assert (= (and b!422313 res!246688) b!422308))

(assert (= (and b!422308 res!246690) b!422307))

(assert (= (and b!422307 res!246685) b!422306))

(assert (= (and b!422306 res!246686) b!422318))

(assert (= (and b!422318 res!246680) b!422314))

(assert (= (and b!422314 res!246683) b!422315))

(assert (= (and b!422310 condMapEmpty!18033) mapIsEmpty!18033))

(assert (= (and b!422310 (not condMapEmpty!18033)) mapNonEmpty!18033))

(get-info :version)

(assert (= (and mapNonEmpty!18033 ((_ is ValueCellFull!5127) mapValue!18033)) b!422311))

(assert (= (and b!422310 ((_ is ValueCellFull!5127) mapDefault!18033)) b!422304))

(assert (= start!39530 b!422310))

(declare-fun m!412135 () Bool)

(assert (=> b!422307 m!412135))

(declare-fun m!412137 () Bool)

(assert (=> b!422318 m!412137))

(declare-fun m!412139 () Bool)

(assert (=> b!422316 m!412139))

(declare-fun m!412141 () Bool)

(assert (=> mapNonEmpty!18033 m!412141))

(declare-fun m!412143 () Bool)

(assert (=> b!422312 m!412143))

(declare-fun m!412145 () Bool)

(assert (=> b!422306 m!412145))

(declare-fun m!412147 () Bool)

(assert (=> b!422306 m!412147))

(declare-fun m!412149 () Bool)

(assert (=> b!422313 m!412149))

(declare-fun m!412151 () Bool)

(assert (=> b!422315 m!412151))

(declare-fun m!412153 () Bool)

(assert (=> b!422315 m!412153))

(declare-fun m!412155 () Bool)

(assert (=> b!422315 m!412155))

(declare-fun m!412157 () Bool)

(assert (=> b!422308 m!412157))

(declare-fun m!412159 () Bool)

(assert (=> b!422317 m!412159))

(declare-fun m!412161 () Bool)

(assert (=> start!39530 m!412161))

(declare-fun m!412163 () Bool)

(assert (=> start!39530 m!412163))

(check-sat b_and!17463 tp_is_empty!10941 (not b!422306) (not b!422318) (not b!422316) (not b!422315) (not b!422307) (not b!422312) (not b!422317) (not mapNonEmpty!18033) (not start!39530) (not b_next!9789) (not b!422313))
(check-sat b_and!17463 (not b_next!9789))
