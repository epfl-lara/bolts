; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39584 () Bool)

(assert start!39584)

(declare-fun b_free!9843 () Bool)

(declare-fun b_next!9843 () Bool)

(assert (=> start!39584 (= b_free!9843 (not b_next!9843))))

(declare-fun tp!35058 () Bool)

(declare-fun b_and!17517 () Bool)

(assert (=> start!39584 (= tp!35058 b_and!17517)))

(declare-fun b!423519 () Bool)

(declare-fun res!247659 () Bool)

(declare-fun e!251741 () Bool)

(assert (=> b!423519 (=> (not res!247659) (not e!251741))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423519 (= res!247659 (validMask!0 mask!1025))))

(declare-fun b!423520 () Bool)

(declare-fun res!247660 () Bool)

(declare-fun e!251743 () Bool)

(assert (=> b!423520 (=> (not res!247660) (not e!251743))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423520 (= res!247660 (bvsle from!863 i!563))))

(declare-fun b!423521 () Bool)

(declare-fun res!247661 () Bool)

(assert (=> b!423521 (=> (not res!247661) (not e!251741))))

(declare-datatypes ((array!25817 0))(
  ( (array!25818 (arr!12355 (Array (_ BitVec 32) (_ BitVec 64))) (size!12707 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25817)

(assert (=> b!423521 (= res!247661 (or (= (select (arr!12355 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12355 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423522 () Bool)

(declare-fun res!247662 () Bool)

(assert (=> b!423522 (=> (not res!247662) (not e!251741))))

(assert (=> b!423522 (= res!247662 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12707 _keys!709))))))

(declare-fun mapNonEmpty!18114 () Bool)

(declare-fun mapRes!18114 () Bool)

(declare-fun tp!35057 () Bool)

(declare-fun e!251738 () Bool)

(assert (=> mapNonEmpty!18114 (= mapRes!18114 (and tp!35057 e!251738))))

(declare-datatypes ((V!15765 0))(
  ( (V!15766 (val!5542 Int)) )
))
(declare-datatypes ((ValueCell!5154 0))(
  ( (ValueCellFull!5154 (v!7785 V!15765)) (EmptyCell!5154) )
))
(declare-fun mapRest!18114 () (Array (_ BitVec 32) ValueCell!5154))

(declare-datatypes ((array!25819 0))(
  ( (array!25820 (arr!12356 (Array (_ BitVec 32) ValueCell!5154)) (size!12708 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25819)

(declare-fun mapKey!18114 () (_ BitVec 32))

(declare-fun mapValue!18114 () ValueCell!5154)

(assert (=> mapNonEmpty!18114 (= (arr!12356 _values!549) (store mapRest!18114 mapKey!18114 mapValue!18114))))

(declare-fun b!423523 () Bool)

(assert (=> b!423523 (= e!251743 false)))

(declare-fun lt!194186 () array!25817)

(declare-fun minValue!515 () V!15765)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15765)

(declare-fun v!412 () V!15765)

(declare-datatypes ((tuple2!7208 0))(
  ( (tuple2!7209 (_1!3614 (_ BitVec 64)) (_2!3614 V!15765)) )
))
(declare-datatypes ((List!7254 0))(
  ( (Nil!7251) (Cons!7250 (h!8106 tuple2!7208) (t!12706 List!7254)) )
))
(declare-datatypes ((ListLongMap!6135 0))(
  ( (ListLongMap!6136 (toList!3083 List!7254)) )
))
(declare-fun lt!194185 () ListLongMap!6135)

(declare-fun getCurrentListMapNoExtraKeys!1284 (array!25817 array!25819 (_ BitVec 32) (_ BitVec 32) V!15765 V!15765 (_ BitVec 32) Int) ListLongMap!6135)

(assert (=> b!423523 (= lt!194185 (getCurrentListMapNoExtraKeys!1284 lt!194186 (array!25820 (store (arr!12356 _values!549) i!563 (ValueCellFull!5154 v!412)) (size!12708 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194187 () ListLongMap!6135)

(assert (=> b!423523 (= lt!194187 (getCurrentListMapNoExtraKeys!1284 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423524 () Bool)

(declare-fun res!247658 () Bool)

(assert (=> b!423524 (=> (not res!247658) (not e!251741))))

(declare-datatypes ((List!7255 0))(
  ( (Nil!7252) (Cons!7251 (h!8107 (_ BitVec 64)) (t!12707 List!7255)) )
))
(declare-fun arrayNoDuplicates!0 (array!25817 (_ BitVec 32) List!7255) Bool)

(assert (=> b!423524 (= res!247658 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7252))))

(declare-fun b!423525 () Bool)

(declare-fun e!251742 () Bool)

(declare-fun e!251740 () Bool)

(assert (=> b!423525 (= e!251742 (and e!251740 mapRes!18114))))

(declare-fun condMapEmpty!18114 () Bool)

(declare-fun mapDefault!18114 () ValueCell!5154)

(assert (=> b!423525 (= condMapEmpty!18114 (= (arr!12356 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5154)) mapDefault!18114)))))

(declare-fun b!423526 () Bool)

(declare-fun res!247657 () Bool)

(assert (=> b!423526 (=> (not res!247657) (not e!251741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25817 (_ BitVec 32)) Bool)

(assert (=> b!423526 (= res!247657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18114 () Bool)

(assert (=> mapIsEmpty!18114 mapRes!18114))

(declare-fun b!423527 () Bool)

(declare-fun res!247653 () Bool)

(assert (=> b!423527 (=> (not res!247653) (not e!251743))))

(assert (=> b!423527 (= res!247653 (arrayNoDuplicates!0 lt!194186 #b00000000000000000000000000000000 Nil!7252))))

(declare-fun b!423528 () Bool)

(declare-fun res!247652 () Bool)

(assert (=> b!423528 (=> (not res!247652) (not e!251741))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25817 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423528 (= res!247652 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!423529 () Bool)

(declare-fun res!247656 () Bool)

(assert (=> b!423529 (=> (not res!247656) (not e!251741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423529 (= res!247656 (validKeyInArray!0 k0!794))))

(declare-fun b!423530 () Bool)

(assert (=> b!423530 (= e!251741 e!251743)))

(declare-fun res!247655 () Bool)

(assert (=> b!423530 (=> (not res!247655) (not e!251743))))

(assert (=> b!423530 (= res!247655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194186 mask!1025))))

(assert (=> b!423530 (= lt!194186 (array!25818 (store (arr!12355 _keys!709) i!563 k0!794) (size!12707 _keys!709)))))

(declare-fun res!247651 () Bool)

(assert (=> start!39584 (=> (not res!247651) (not e!251741))))

(assert (=> start!39584 (= res!247651 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12707 _keys!709))))))

(assert (=> start!39584 e!251741))

(declare-fun tp_is_empty!10995 () Bool)

(assert (=> start!39584 tp_is_empty!10995))

(assert (=> start!39584 tp!35058))

(assert (=> start!39584 true))

(declare-fun array_inv!9008 (array!25819) Bool)

(assert (=> start!39584 (and (array_inv!9008 _values!549) e!251742)))

(declare-fun array_inv!9009 (array!25817) Bool)

(assert (=> start!39584 (array_inv!9009 _keys!709)))

(declare-fun b!423531 () Bool)

(declare-fun res!247654 () Bool)

(assert (=> b!423531 (=> (not res!247654) (not e!251741))))

(assert (=> b!423531 (= res!247654 (and (= (size!12708 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12707 _keys!709) (size!12708 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423532 () Bool)

(assert (=> b!423532 (= e!251738 tp_is_empty!10995)))

(declare-fun b!423533 () Bool)

(assert (=> b!423533 (= e!251740 tp_is_empty!10995)))

(assert (= (and start!39584 res!247651) b!423519))

(assert (= (and b!423519 res!247659) b!423531))

(assert (= (and b!423531 res!247654) b!423526))

(assert (= (and b!423526 res!247657) b!423524))

(assert (= (and b!423524 res!247658) b!423522))

(assert (= (and b!423522 res!247662) b!423529))

(assert (= (and b!423529 res!247656) b!423521))

(assert (= (and b!423521 res!247661) b!423528))

(assert (= (and b!423528 res!247652) b!423530))

(assert (= (and b!423530 res!247655) b!423527))

(assert (= (and b!423527 res!247653) b!423520))

(assert (= (and b!423520 res!247660) b!423523))

(assert (= (and b!423525 condMapEmpty!18114) mapIsEmpty!18114))

(assert (= (and b!423525 (not condMapEmpty!18114)) mapNonEmpty!18114))

(get-info :version)

(assert (= (and mapNonEmpty!18114 ((_ is ValueCellFull!5154) mapValue!18114)) b!423532))

(assert (= (and b!423525 ((_ is ValueCellFull!5154) mapDefault!18114)) b!423533))

(assert (= start!39584 b!423525))

(declare-fun m!412945 () Bool)

(assert (=> b!423519 m!412945))

(declare-fun m!412947 () Bool)

(assert (=> b!423527 m!412947))

(declare-fun m!412949 () Bool)

(assert (=> b!423524 m!412949))

(declare-fun m!412951 () Bool)

(assert (=> mapNonEmpty!18114 m!412951))

(declare-fun m!412953 () Bool)

(assert (=> b!423523 m!412953))

(declare-fun m!412955 () Bool)

(assert (=> b!423523 m!412955))

(declare-fun m!412957 () Bool)

(assert (=> b!423523 m!412957))

(declare-fun m!412959 () Bool)

(assert (=> b!423530 m!412959))

(declare-fun m!412961 () Bool)

(assert (=> b!423530 m!412961))

(declare-fun m!412963 () Bool)

(assert (=> b!423529 m!412963))

(declare-fun m!412965 () Bool)

(assert (=> start!39584 m!412965))

(declare-fun m!412967 () Bool)

(assert (=> start!39584 m!412967))

(declare-fun m!412969 () Bool)

(assert (=> b!423526 m!412969))

(declare-fun m!412971 () Bool)

(assert (=> b!423528 m!412971))

(declare-fun m!412973 () Bool)

(assert (=> b!423521 m!412973))

(check-sat (not b!423530) (not mapNonEmpty!18114) (not b!423529) (not b!423527) b_and!17517 tp_is_empty!10995 (not b!423526) (not b_next!9843) (not b!423523) (not b!423528) (not b!423519) (not start!39584) (not b!423524))
(check-sat b_and!17517 (not b_next!9843))
