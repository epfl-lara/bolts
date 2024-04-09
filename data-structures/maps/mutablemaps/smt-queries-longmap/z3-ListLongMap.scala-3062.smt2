; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43224 () Bool)

(assert start!43224)

(declare-fun b!478735 () Bool)

(declare-fun e!281577 () Bool)

(declare-fun tp_is_empty!13605 () Bool)

(assert (=> b!478735 (= e!281577 tp_is_empty!13605)))

(declare-fun b!478736 () Bool)

(declare-fun res!285668 () Bool)

(declare-fun e!281578 () Bool)

(assert (=> b!478736 (=> (not res!285668) (not e!281578))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30851 0))(
  ( (array!30852 (arr!14830 (Array (_ BitVec 32) (_ BitVec 64))) (size!15188 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30851)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19211 0))(
  ( (V!19212 (val!6850 Int)) )
))
(declare-datatypes ((ValueCell!6441 0))(
  ( (ValueCellFull!6441 (v!9135 V!19211)) (EmptyCell!6441) )
))
(declare-datatypes ((array!30853 0))(
  ( (array!30854 (arr!14831 (Array (_ BitVec 32) ValueCell!6441)) (size!15189 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30853)

(assert (=> b!478736 (= res!285668 (and (= (size!15189 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15188 _keys!1874) (size!15189 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!285669 () Bool)

(assert (=> start!43224 (=> (not res!285669) (not e!281578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43224 (= res!285669 (validMask!0 mask!2352))))

(assert (=> start!43224 e!281578))

(assert (=> start!43224 true))

(declare-fun e!281581 () Bool)

(declare-fun array_inv!10688 (array!30853) Bool)

(assert (=> start!43224 (and (array_inv!10688 _values!1516) e!281581)))

(declare-fun array_inv!10689 (array!30851) Bool)

(assert (=> start!43224 (array_inv!10689 _keys!1874)))

(declare-fun b!478737 () Bool)

(assert (=> b!478737 (= e!281578 false)))

(declare-fun lt!217754 () Bool)

(declare-datatypes ((List!9104 0))(
  ( (Nil!9101) (Cons!9100 (h!9956 (_ BitVec 64)) (t!15318 List!9104)) )
))
(declare-fun arrayNoDuplicates!0 (array!30851 (_ BitVec 32) List!9104) Bool)

(assert (=> b!478737 (= lt!217754 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9101))))

(declare-fun mapNonEmpty!22102 () Bool)

(declare-fun mapRes!22102 () Bool)

(declare-fun tp!42577 () Bool)

(assert (=> mapNonEmpty!22102 (= mapRes!22102 (and tp!42577 e!281577))))

(declare-fun mapRest!22102 () (Array (_ BitVec 32) ValueCell!6441))

(declare-fun mapKey!22102 () (_ BitVec 32))

(declare-fun mapValue!22102 () ValueCell!6441)

(assert (=> mapNonEmpty!22102 (= (arr!14831 _values!1516) (store mapRest!22102 mapKey!22102 mapValue!22102))))

(declare-fun b!478738 () Bool)

(declare-fun e!281579 () Bool)

(assert (=> b!478738 (= e!281581 (and e!281579 mapRes!22102))))

(declare-fun condMapEmpty!22102 () Bool)

(declare-fun mapDefault!22102 () ValueCell!6441)

(assert (=> b!478738 (= condMapEmpty!22102 (= (arr!14831 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6441)) mapDefault!22102)))))

(declare-fun mapIsEmpty!22102 () Bool)

(assert (=> mapIsEmpty!22102 mapRes!22102))

(declare-fun b!478739 () Bool)

(assert (=> b!478739 (= e!281579 tp_is_empty!13605)))

(declare-fun b!478740 () Bool)

(declare-fun res!285667 () Bool)

(assert (=> b!478740 (=> (not res!285667) (not e!281578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30851 (_ BitVec 32)) Bool)

(assert (=> b!478740 (= res!285667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(assert (= (and start!43224 res!285669) b!478736))

(assert (= (and b!478736 res!285668) b!478740))

(assert (= (and b!478740 res!285667) b!478737))

(assert (= (and b!478738 condMapEmpty!22102) mapIsEmpty!22102))

(assert (= (and b!478738 (not condMapEmpty!22102)) mapNonEmpty!22102))

(get-info :version)

(assert (= (and mapNonEmpty!22102 ((_ is ValueCellFull!6441) mapValue!22102)) b!478735))

(assert (= (and b!478738 ((_ is ValueCellFull!6441) mapDefault!22102)) b!478739))

(assert (= start!43224 b!478738))

(declare-fun m!460873 () Bool)

(assert (=> start!43224 m!460873))

(declare-fun m!460875 () Bool)

(assert (=> start!43224 m!460875))

(declare-fun m!460877 () Bool)

(assert (=> start!43224 m!460877))

(declare-fun m!460879 () Bool)

(assert (=> b!478737 m!460879))

(declare-fun m!460881 () Bool)

(assert (=> mapNonEmpty!22102 m!460881))

(declare-fun m!460883 () Bool)

(assert (=> b!478740 m!460883))

(check-sat (not mapNonEmpty!22102) tp_is_empty!13605 (not b!478740) (not start!43224) (not b!478737))
(check-sat)
