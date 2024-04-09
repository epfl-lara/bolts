; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39590 () Bool)

(assert start!39590)

(declare-fun b_free!9849 () Bool)

(declare-fun b_next!9849 () Bool)

(assert (=> start!39590 (= b_free!9849 (not b_next!9849))))

(declare-fun tp!35076 () Bool)

(declare-fun b_and!17523 () Bool)

(assert (=> start!39590 (= tp!35076 b_and!17523)))

(declare-fun b!423654 () Bool)

(declare-fun e!251797 () Bool)

(declare-fun e!251796 () Bool)

(assert (=> b!423654 (= e!251797 e!251796)))

(declare-fun res!247763 () Bool)

(assert (=> b!423654 (=> (not res!247763) (not e!251796))))

(declare-datatypes ((array!25829 0))(
  ( (array!25830 (arr!12361 (Array (_ BitVec 32) (_ BitVec 64))) (size!12713 (_ BitVec 32))) )
))
(declare-fun lt!194212 () array!25829)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25829 (_ BitVec 32)) Bool)

(assert (=> b!423654 (= res!247763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194212 mask!1025))))

(declare-fun _keys!709 () array!25829)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423654 (= lt!194212 (array!25830 (store (arr!12361 _keys!709) i!563 k0!794) (size!12713 _keys!709)))))

(declare-fun mapIsEmpty!18123 () Bool)

(declare-fun mapRes!18123 () Bool)

(assert (=> mapIsEmpty!18123 mapRes!18123))

(declare-fun b!423655 () Bool)

(declare-fun res!247765 () Bool)

(assert (=> b!423655 (=> (not res!247765) (not e!251797))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423655 (= res!247765 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18123 () Bool)

(declare-fun tp!35075 () Bool)

(declare-fun e!251794 () Bool)

(assert (=> mapNonEmpty!18123 (= mapRes!18123 (and tp!35075 e!251794))))

(declare-datatypes ((V!15773 0))(
  ( (V!15774 (val!5545 Int)) )
))
(declare-datatypes ((ValueCell!5157 0))(
  ( (ValueCellFull!5157 (v!7788 V!15773)) (EmptyCell!5157) )
))
(declare-fun mapRest!18123 () (Array (_ BitVec 32) ValueCell!5157))

(declare-fun mapKey!18123 () (_ BitVec 32))

(declare-datatypes ((array!25831 0))(
  ( (array!25832 (arr!12362 (Array (_ BitVec 32) ValueCell!5157)) (size!12714 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25831)

(declare-fun mapValue!18123 () ValueCell!5157)

(assert (=> mapNonEmpty!18123 (= (arr!12362 _values!549) (store mapRest!18123 mapKey!18123 mapValue!18123))))

(declare-fun b!423656 () Bool)

(declare-fun res!247770 () Bool)

(assert (=> b!423656 (=> (not res!247770) (not e!251797))))

(declare-datatypes ((List!7257 0))(
  ( (Nil!7254) (Cons!7253 (h!8109 (_ BitVec 64)) (t!12709 List!7257)) )
))
(declare-fun arrayNoDuplicates!0 (array!25829 (_ BitVec 32) List!7257) Bool)

(assert (=> b!423656 (= res!247770 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7254))))

(declare-fun b!423657 () Bool)

(declare-fun e!251793 () Bool)

(declare-fun tp_is_empty!11001 () Bool)

(assert (=> b!423657 (= e!251793 tp_is_empty!11001)))

(declare-fun res!247761 () Bool)

(assert (=> start!39590 (=> (not res!247761) (not e!251797))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39590 (= res!247761 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12713 _keys!709))))))

(assert (=> start!39590 e!251797))

(assert (=> start!39590 tp_is_empty!11001))

(assert (=> start!39590 tp!35076))

(assert (=> start!39590 true))

(declare-fun e!251792 () Bool)

(declare-fun array_inv!9012 (array!25831) Bool)

(assert (=> start!39590 (and (array_inv!9012 _values!549) e!251792)))

(declare-fun array_inv!9013 (array!25829) Bool)

(assert (=> start!39590 (array_inv!9013 _keys!709)))

(declare-fun b!423658 () Bool)

(declare-fun res!247762 () Bool)

(assert (=> b!423658 (=> (not res!247762) (not e!251797))))

(assert (=> b!423658 (= res!247762 (or (= (select (arr!12361 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12361 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423659 () Bool)

(declare-fun res!247767 () Bool)

(assert (=> b!423659 (=> (not res!247767) (not e!251796))))

(assert (=> b!423659 (= res!247767 (bvsle from!863 i!563))))

(declare-fun b!423660 () Bool)

(assert (=> b!423660 (= e!251794 tp_is_empty!11001)))

(declare-fun b!423661 () Bool)

(declare-fun res!247768 () Bool)

(assert (=> b!423661 (=> (not res!247768) (not e!251797))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423661 (= res!247768 (validKeyInArray!0 k0!794))))

(declare-fun b!423662 () Bool)

(assert (=> b!423662 (= e!251796 false)))

(declare-fun minValue!515 () V!15773)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15773)

(declare-datatypes ((tuple2!7210 0))(
  ( (tuple2!7211 (_1!3615 (_ BitVec 64)) (_2!3615 V!15773)) )
))
(declare-datatypes ((List!7258 0))(
  ( (Nil!7255) (Cons!7254 (h!8110 tuple2!7210) (t!12710 List!7258)) )
))
(declare-datatypes ((ListLongMap!6137 0))(
  ( (ListLongMap!6138 (toList!3084 List!7258)) )
))
(declare-fun lt!194213 () ListLongMap!6137)

(declare-fun v!412 () V!15773)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1285 (array!25829 array!25831 (_ BitVec 32) (_ BitVec 32) V!15773 V!15773 (_ BitVec 32) Int) ListLongMap!6137)

(assert (=> b!423662 (= lt!194213 (getCurrentListMapNoExtraKeys!1285 lt!194212 (array!25832 (store (arr!12362 _values!549) i!563 (ValueCellFull!5157 v!412)) (size!12714 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194214 () ListLongMap!6137)

(assert (=> b!423662 (= lt!194214 (getCurrentListMapNoExtraKeys!1285 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423663 () Bool)

(declare-fun res!247759 () Bool)

(assert (=> b!423663 (=> (not res!247759) (not e!251797))))

(assert (=> b!423663 (= res!247759 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12713 _keys!709))))))

(declare-fun b!423664 () Bool)

(declare-fun res!247766 () Bool)

(assert (=> b!423664 (=> (not res!247766) (not e!251797))))

(declare-fun arrayContainsKey!0 (array!25829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423664 (= res!247766 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!423665 () Bool)

(declare-fun res!247764 () Bool)

(assert (=> b!423665 (=> (not res!247764) (not e!251797))))

(assert (=> b!423665 (= res!247764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423666 () Bool)

(assert (=> b!423666 (= e!251792 (and e!251793 mapRes!18123))))

(declare-fun condMapEmpty!18123 () Bool)

(declare-fun mapDefault!18123 () ValueCell!5157)

(assert (=> b!423666 (= condMapEmpty!18123 (= (arr!12362 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5157)) mapDefault!18123)))))

(declare-fun b!423667 () Bool)

(declare-fun res!247769 () Bool)

(assert (=> b!423667 (=> (not res!247769) (not e!251796))))

(assert (=> b!423667 (= res!247769 (arrayNoDuplicates!0 lt!194212 #b00000000000000000000000000000000 Nil!7254))))

(declare-fun b!423668 () Bool)

(declare-fun res!247760 () Bool)

(assert (=> b!423668 (=> (not res!247760) (not e!251797))))

(assert (=> b!423668 (= res!247760 (and (= (size!12714 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12713 _keys!709) (size!12714 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!39590 res!247761) b!423655))

(assert (= (and b!423655 res!247765) b!423668))

(assert (= (and b!423668 res!247760) b!423665))

(assert (= (and b!423665 res!247764) b!423656))

(assert (= (and b!423656 res!247770) b!423663))

(assert (= (and b!423663 res!247759) b!423661))

(assert (= (and b!423661 res!247768) b!423658))

(assert (= (and b!423658 res!247762) b!423664))

(assert (= (and b!423664 res!247766) b!423654))

(assert (= (and b!423654 res!247763) b!423667))

(assert (= (and b!423667 res!247769) b!423659))

(assert (= (and b!423659 res!247767) b!423662))

(assert (= (and b!423666 condMapEmpty!18123) mapIsEmpty!18123))

(assert (= (and b!423666 (not condMapEmpty!18123)) mapNonEmpty!18123))

(get-info :version)

(assert (= (and mapNonEmpty!18123 ((_ is ValueCellFull!5157) mapValue!18123)) b!423660))

(assert (= (and b!423666 ((_ is ValueCellFull!5157) mapDefault!18123)) b!423657))

(assert (= start!39590 b!423666))

(declare-fun m!413035 () Bool)

(assert (=> b!423655 m!413035))

(declare-fun m!413037 () Bool)

(assert (=> b!423654 m!413037))

(declare-fun m!413039 () Bool)

(assert (=> b!423654 m!413039))

(declare-fun m!413041 () Bool)

(assert (=> start!39590 m!413041))

(declare-fun m!413043 () Bool)

(assert (=> start!39590 m!413043))

(declare-fun m!413045 () Bool)

(assert (=> mapNonEmpty!18123 m!413045))

(declare-fun m!413047 () Bool)

(assert (=> b!423664 m!413047))

(declare-fun m!413049 () Bool)

(assert (=> b!423656 m!413049))

(declare-fun m!413051 () Bool)

(assert (=> b!423658 m!413051))

(declare-fun m!413053 () Bool)

(assert (=> b!423665 m!413053))

(declare-fun m!413055 () Bool)

(assert (=> b!423662 m!413055))

(declare-fun m!413057 () Bool)

(assert (=> b!423662 m!413057))

(declare-fun m!413059 () Bool)

(assert (=> b!423662 m!413059))

(declare-fun m!413061 () Bool)

(assert (=> b!423667 m!413061))

(declare-fun m!413063 () Bool)

(assert (=> b!423661 m!413063))

(check-sat (not b!423664) (not b!423667) (not b!423661) (not mapNonEmpty!18123) (not b_next!9849) tp_is_empty!11001 (not start!39590) (not b!423662) (not b!423656) b_and!17523 (not b!423665) (not b!423655) (not b!423654))
(check-sat b_and!17523 (not b_next!9849))
