; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39566 () Bool)

(assert start!39566)

(declare-fun b_free!9825 () Bool)

(declare-fun b_next!9825 () Bool)

(assert (=> start!39566 (= b_free!9825 (not b_next!9825))))

(declare-fun tp!35003 () Bool)

(declare-fun b_and!17499 () Bool)

(assert (=> start!39566 (= tp!35003 b_and!17499)))

(declare-fun b!423114 () Bool)

(declare-fun res!247329 () Bool)

(declare-fun e!251577 () Bool)

(assert (=> b!423114 (=> (not res!247329) (not e!251577))))

(declare-datatypes ((array!25781 0))(
  ( (array!25782 (arr!12337 (Array (_ BitVec 32) (_ BitVec 64))) (size!12689 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25781)

(declare-datatypes ((List!7240 0))(
  ( (Nil!7237) (Cons!7236 (h!8092 (_ BitVec 64)) (t!12692 List!7240)) )
))
(declare-fun arrayNoDuplicates!0 (array!25781 (_ BitVec 32) List!7240) Bool)

(assert (=> b!423114 (= res!247329 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7237))))

(declare-fun b!423115 () Bool)

(declare-fun res!247332 () Bool)

(assert (=> b!423115 (=> (not res!247332) (not e!251577))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423115 (= res!247332 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!423116 () Bool)

(declare-fun e!251579 () Bool)

(declare-fun e!251576 () Bool)

(declare-fun mapRes!18087 () Bool)

(assert (=> b!423116 (= e!251579 (and e!251576 mapRes!18087))))

(declare-fun condMapEmpty!18087 () Bool)

(declare-datatypes ((V!15741 0))(
  ( (V!15742 (val!5533 Int)) )
))
(declare-datatypes ((ValueCell!5145 0))(
  ( (ValueCellFull!5145 (v!7776 V!15741)) (EmptyCell!5145) )
))
(declare-datatypes ((array!25783 0))(
  ( (array!25784 (arr!12338 (Array (_ BitVec 32) ValueCell!5145)) (size!12690 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25783)

(declare-fun mapDefault!18087 () ValueCell!5145)

(assert (=> b!423116 (= condMapEmpty!18087 (= (arr!12338 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5145)) mapDefault!18087)))))

(declare-fun b!423117 () Bool)

(declare-fun e!251578 () Bool)

(assert (=> b!423117 (= e!251578 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15741)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15741)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!194104 () array!25781)

(declare-datatypes ((tuple2!7196 0))(
  ( (tuple2!7197 (_1!3608 (_ BitVec 64)) (_2!3608 V!15741)) )
))
(declare-datatypes ((List!7241 0))(
  ( (Nil!7238) (Cons!7237 (h!8093 tuple2!7196) (t!12693 List!7241)) )
))
(declare-datatypes ((ListLongMap!6123 0))(
  ( (ListLongMap!6124 (toList!3077 List!7241)) )
))
(declare-fun lt!194106 () ListLongMap!6123)

(declare-fun v!412 () V!15741)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1278 (array!25781 array!25783 (_ BitVec 32) (_ BitVec 32) V!15741 V!15741 (_ BitVec 32) Int) ListLongMap!6123)

(assert (=> b!423117 (= lt!194106 (getCurrentListMapNoExtraKeys!1278 lt!194104 (array!25784 (store (arr!12338 _values!549) i!563 (ValueCellFull!5145 v!412)) (size!12690 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194105 () ListLongMap!6123)

(assert (=> b!423117 (= lt!194105 (getCurrentListMapNoExtraKeys!1278 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423118 () Bool)

(declare-fun res!247337 () Bool)

(assert (=> b!423118 (=> (not res!247337) (not e!251578))))

(assert (=> b!423118 (= res!247337 (bvsle from!863 i!563))))

(declare-fun b!423119 () Bool)

(declare-fun e!251581 () Bool)

(declare-fun tp_is_empty!10977 () Bool)

(assert (=> b!423119 (= e!251581 tp_is_empty!10977)))

(declare-fun b!423120 () Bool)

(declare-fun res!247328 () Bool)

(assert (=> b!423120 (=> (not res!247328) (not e!251577))))

(assert (=> b!423120 (= res!247328 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12689 _keys!709))))))

(declare-fun mapIsEmpty!18087 () Bool)

(assert (=> mapIsEmpty!18087 mapRes!18087))

(declare-fun b!423121 () Bool)

(declare-fun res!247335 () Bool)

(assert (=> b!423121 (=> (not res!247335) (not e!251577))))

(assert (=> b!423121 (= res!247335 (and (= (size!12690 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12689 _keys!709) (size!12690 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!247331 () Bool)

(assert (=> start!39566 (=> (not res!247331) (not e!251577))))

(assert (=> start!39566 (= res!247331 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12689 _keys!709))))))

(assert (=> start!39566 e!251577))

(assert (=> start!39566 tp_is_empty!10977))

(assert (=> start!39566 tp!35003))

(assert (=> start!39566 true))

(declare-fun array_inv!8992 (array!25783) Bool)

(assert (=> start!39566 (and (array_inv!8992 _values!549) e!251579)))

(declare-fun array_inv!8993 (array!25781) Bool)

(assert (=> start!39566 (array_inv!8993 _keys!709)))

(declare-fun b!423122 () Bool)

(declare-fun res!247336 () Bool)

(assert (=> b!423122 (=> (not res!247336) (not e!251577))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423122 (= res!247336 (validKeyInArray!0 k0!794))))

(declare-fun b!423123 () Bool)

(declare-fun res!247338 () Bool)

(assert (=> b!423123 (=> (not res!247338) (not e!251578))))

(assert (=> b!423123 (= res!247338 (arrayNoDuplicates!0 lt!194104 #b00000000000000000000000000000000 Nil!7237))))

(declare-fun b!423124 () Bool)

(declare-fun res!247330 () Bool)

(assert (=> b!423124 (=> (not res!247330) (not e!251577))))

(assert (=> b!423124 (= res!247330 (or (= (select (arr!12337 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12337 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423125 () Bool)

(assert (=> b!423125 (= e!251577 e!251578)))

(declare-fun res!247334 () Bool)

(assert (=> b!423125 (=> (not res!247334) (not e!251578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25781 (_ BitVec 32)) Bool)

(assert (=> b!423125 (= res!247334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194104 mask!1025))))

(assert (=> b!423125 (= lt!194104 (array!25782 (store (arr!12337 _keys!709) i!563 k0!794) (size!12689 _keys!709)))))

(declare-fun b!423126 () Bool)

(assert (=> b!423126 (= e!251576 tp_is_empty!10977)))

(declare-fun mapNonEmpty!18087 () Bool)

(declare-fun tp!35004 () Bool)

(assert (=> mapNonEmpty!18087 (= mapRes!18087 (and tp!35004 e!251581))))

(declare-fun mapRest!18087 () (Array (_ BitVec 32) ValueCell!5145))

(declare-fun mapKey!18087 () (_ BitVec 32))

(declare-fun mapValue!18087 () ValueCell!5145)

(assert (=> mapNonEmpty!18087 (= (arr!12338 _values!549) (store mapRest!18087 mapKey!18087 mapValue!18087))))

(declare-fun b!423127 () Bool)

(declare-fun res!247333 () Bool)

(assert (=> b!423127 (=> (not res!247333) (not e!251577))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423127 (= res!247333 (validMask!0 mask!1025))))

(declare-fun b!423128 () Bool)

(declare-fun res!247327 () Bool)

(assert (=> b!423128 (=> (not res!247327) (not e!251577))))

(assert (=> b!423128 (= res!247327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39566 res!247331) b!423127))

(assert (= (and b!423127 res!247333) b!423121))

(assert (= (and b!423121 res!247335) b!423128))

(assert (= (and b!423128 res!247327) b!423114))

(assert (= (and b!423114 res!247329) b!423120))

(assert (= (and b!423120 res!247328) b!423122))

(assert (= (and b!423122 res!247336) b!423124))

(assert (= (and b!423124 res!247330) b!423115))

(assert (= (and b!423115 res!247332) b!423125))

(assert (= (and b!423125 res!247334) b!423123))

(assert (= (and b!423123 res!247338) b!423118))

(assert (= (and b!423118 res!247337) b!423117))

(assert (= (and b!423116 condMapEmpty!18087) mapIsEmpty!18087))

(assert (= (and b!423116 (not condMapEmpty!18087)) mapNonEmpty!18087))

(get-info :version)

(assert (= (and mapNonEmpty!18087 ((_ is ValueCellFull!5145) mapValue!18087)) b!423119))

(assert (= (and b!423116 ((_ is ValueCellFull!5145) mapDefault!18087)) b!423126))

(assert (= start!39566 b!423116))

(declare-fun m!412675 () Bool)

(assert (=> b!423127 m!412675))

(declare-fun m!412677 () Bool)

(assert (=> b!423115 m!412677))

(declare-fun m!412679 () Bool)

(assert (=> b!423124 m!412679))

(declare-fun m!412681 () Bool)

(assert (=> start!39566 m!412681))

(declare-fun m!412683 () Bool)

(assert (=> start!39566 m!412683))

(declare-fun m!412685 () Bool)

(assert (=> b!423128 m!412685))

(declare-fun m!412687 () Bool)

(assert (=> mapNonEmpty!18087 m!412687))

(declare-fun m!412689 () Bool)

(assert (=> b!423114 m!412689))

(declare-fun m!412691 () Bool)

(assert (=> b!423122 m!412691))

(declare-fun m!412693 () Bool)

(assert (=> b!423117 m!412693))

(declare-fun m!412695 () Bool)

(assert (=> b!423117 m!412695))

(declare-fun m!412697 () Bool)

(assert (=> b!423117 m!412697))

(declare-fun m!412699 () Bool)

(assert (=> b!423123 m!412699))

(declare-fun m!412701 () Bool)

(assert (=> b!423125 m!412701))

(declare-fun m!412703 () Bool)

(assert (=> b!423125 m!412703))

(check-sat b_and!17499 (not b!423128) (not b!423117) (not b!423125) (not b!423115) (not b_next!9825) (not b!423123) (not b!423114) (not b!423127) tp_is_empty!10977 (not mapNonEmpty!18087) (not start!39566) (not b!423122))
(check-sat b_and!17499 (not b_next!9825))
