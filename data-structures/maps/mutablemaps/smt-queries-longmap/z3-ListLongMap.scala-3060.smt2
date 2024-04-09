; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43212 () Bool)

(assert start!43212)

(declare-fun b!478627 () Bool)

(declare-fun e!281489 () Bool)

(declare-fun tp_is_empty!13593 () Bool)

(assert (=> b!478627 (= e!281489 tp_is_empty!13593)))

(declare-fun res!285613 () Bool)

(declare-fun e!281487 () Bool)

(assert (=> start!43212 (=> (not res!285613) (not e!281487))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43212 (= res!285613 (validMask!0 mask!2352))))

(assert (=> start!43212 e!281487))

(assert (=> start!43212 true))

(declare-datatypes ((V!19195 0))(
  ( (V!19196 (val!6844 Int)) )
))
(declare-datatypes ((ValueCell!6435 0))(
  ( (ValueCellFull!6435 (v!9129 V!19195)) (EmptyCell!6435) )
))
(declare-datatypes ((array!30827 0))(
  ( (array!30828 (arr!14818 (Array (_ BitVec 32) ValueCell!6435)) (size!15176 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30827)

(declare-fun e!281488 () Bool)

(declare-fun array_inv!10678 (array!30827) Bool)

(assert (=> start!43212 (and (array_inv!10678 _values!1516) e!281488)))

(declare-datatypes ((array!30829 0))(
  ( (array!30830 (arr!14819 (Array (_ BitVec 32) (_ BitVec 64))) (size!15177 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30829)

(declare-fun array_inv!10679 (array!30829) Bool)

(assert (=> start!43212 (array_inv!10679 _keys!1874)))

(declare-fun b!478628 () Bool)

(declare-fun res!285614 () Bool)

(assert (=> b!478628 (=> (not res!285614) (not e!281487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30829 (_ BitVec 32)) Bool)

(assert (=> b!478628 (= res!285614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478629 () Bool)

(declare-fun mapRes!22084 () Bool)

(assert (=> b!478629 (= e!281488 (and e!281489 mapRes!22084))))

(declare-fun condMapEmpty!22084 () Bool)

(declare-fun mapDefault!22084 () ValueCell!6435)

(assert (=> b!478629 (= condMapEmpty!22084 (= (arr!14818 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6435)) mapDefault!22084)))))

(declare-fun mapIsEmpty!22084 () Bool)

(assert (=> mapIsEmpty!22084 mapRes!22084))

(declare-fun b!478630 () Bool)

(assert (=> b!478630 (= e!281487 false)))

(declare-fun lt!217736 () Bool)

(declare-datatypes ((List!9101 0))(
  ( (Nil!9098) (Cons!9097 (h!9953 (_ BitVec 64)) (t!15315 List!9101)) )
))
(declare-fun arrayNoDuplicates!0 (array!30829 (_ BitVec 32) List!9101) Bool)

(assert (=> b!478630 (= lt!217736 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9098))))

(declare-fun b!478631 () Bool)

(declare-fun res!285615 () Bool)

(assert (=> b!478631 (=> (not res!285615) (not e!281487))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478631 (= res!285615 (and (= (size!15176 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15177 _keys!1874) (size!15176 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!22084 () Bool)

(declare-fun tp!42559 () Bool)

(declare-fun e!281491 () Bool)

(assert (=> mapNonEmpty!22084 (= mapRes!22084 (and tp!42559 e!281491))))

(declare-fun mapValue!22084 () ValueCell!6435)

(declare-fun mapRest!22084 () (Array (_ BitVec 32) ValueCell!6435))

(declare-fun mapKey!22084 () (_ BitVec 32))

(assert (=> mapNonEmpty!22084 (= (arr!14818 _values!1516) (store mapRest!22084 mapKey!22084 mapValue!22084))))

(declare-fun b!478632 () Bool)

(assert (=> b!478632 (= e!281491 tp_is_empty!13593)))

(assert (= (and start!43212 res!285613) b!478631))

(assert (= (and b!478631 res!285615) b!478628))

(assert (= (and b!478628 res!285614) b!478630))

(assert (= (and b!478629 condMapEmpty!22084) mapIsEmpty!22084))

(assert (= (and b!478629 (not condMapEmpty!22084)) mapNonEmpty!22084))

(get-info :version)

(assert (= (and mapNonEmpty!22084 ((_ is ValueCellFull!6435) mapValue!22084)) b!478632))

(assert (= (and b!478629 ((_ is ValueCellFull!6435) mapDefault!22084)) b!478627))

(assert (= start!43212 b!478629))

(declare-fun m!460801 () Bool)

(assert (=> start!43212 m!460801))

(declare-fun m!460803 () Bool)

(assert (=> start!43212 m!460803))

(declare-fun m!460805 () Bool)

(assert (=> start!43212 m!460805))

(declare-fun m!460807 () Bool)

(assert (=> b!478628 m!460807))

(declare-fun m!460809 () Bool)

(assert (=> b!478630 m!460809))

(declare-fun m!460811 () Bool)

(assert (=> mapNonEmpty!22084 m!460811))

(check-sat (not start!43212) (not b!478630) (not mapNonEmpty!22084) tp_is_empty!13593 (not b!478628))
(check-sat)
