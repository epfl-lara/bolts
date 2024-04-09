; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133694 () Bool)

(assert start!133694)

(declare-fun b!1562687 () Bool)

(declare-fun res!1068468 () Bool)

(declare-fun e!870881 () Bool)

(assert (=> b!1562687 (=> (not res!1068468) (not e!870881))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104153 0))(
  ( (array!104154 (arr!50264 (Array (_ BitVec 32) (_ BitVec 64))) (size!50815 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104153)

(declare-datatypes ((V!59867 0))(
  ( (V!59868 (val!19456 Int)) )
))
(declare-datatypes ((ValueCell!18342 0))(
  ( (ValueCellFull!18342 (v!22205 V!59867)) (EmptyCell!18342) )
))
(declare-datatypes ((array!104155 0))(
  ( (array!104156 (arr!50265 (Array (_ BitVec 32) ValueCell!18342)) (size!50816 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104155)

(assert (=> b!1562687 (= res!1068468 (and (= (size!50816 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50815 _keys!637) (size!50816 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562688 () Bool)

(declare-fun res!1068470 () Bool)

(assert (=> b!1562688 (=> (not res!1068470) (not e!870881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104153 (_ BitVec 32)) Bool)

(assert (=> b!1562688 (= res!1068470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562689 () Bool)

(declare-fun e!870877 () Bool)

(declare-fun e!870878 () Bool)

(declare-fun mapRes!59493 () Bool)

(assert (=> b!1562689 (= e!870877 (and e!870878 mapRes!59493))))

(declare-fun condMapEmpty!59493 () Bool)

(declare-fun mapDefault!59493 () ValueCell!18342)

(assert (=> b!1562689 (= condMapEmpty!59493 (= (arr!50265 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18342)) mapDefault!59493)))))

(declare-fun res!1068469 () Bool)

(assert (=> start!133694 (=> (not res!1068469) (not e!870881))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133694 (= res!1068469 (validMask!0 mask!947))))

(assert (=> start!133694 e!870881))

(assert (=> start!133694 true))

(declare-fun array_inv!38997 (array!104155) Bool)

(assert (=> start!133694 (and (array_inv!38997 _values!487) e!870877)))

(declare-fun array_inv!38998 (array!104153) Bool)

(assert (=> start!133694 (array_inv!38998 _keys!637)))

(declare-fun mapIsEmpty!59493 () Bool)

(assert (=> mapIsEmpty!59493 mapRes!59493))

(declare-fun mapNonEmpty!59493 () Bool)

(declare-fun tp!113329 () Bool)

(declare-fun e!870879 () Bool)

(assert (=> mapNonEmpty!59493 (= mapRes!59493 (and tp!113329 e!870879))))

(declare-fun mapValue!59493 () ValueCell!18342)

(declare-fun mapKey!59493 () (_ BitVec 32))

(declare-fun mapRest!59493 () (Array (_ BitVec 32) ValueCell!18342))

(assert (=> mapNonEmpty!59493 (= (arr!50265 _values!487) (store mapRest!59493 mapKey!59493 mapValue!59493))))

(declare-fun b!1562690 () Bool)

(declare-fun tp_is_empty!38745 () Bool)

(assert (=> b!1562690 (= e!870878 tp_is_empty!38745)))

(declare-fun b!1562691 () Bool)

(assert (=> b!1562691 (= e!870881 false)))

(declare-fun lt!671709 () Bool)

(declare-datatypes ((List!36656 0))(
  ( (Nil!36653) (Cons!36652 (h!38099 (_ BitVec 64)) (t!51510 List!36656)) )
))
(declare-fun arrayNoDuplicates!0 (array!104153 (_ BitVec 32) List!36656) Bool)

(assert (=> b!1562691 (= lt!671709 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36653))))

(declare-fun b!1562692 () Bool)

(assert (=> b!1562692 (= e!870879 tp_is_empty!38745)))

(assert (= (and start!133694 res!1068469) b!1562687))

(assert (= (and b!1562687 res!1068468) b!1562688))

(assert (= (and b!1562688 res!1068470) b!1562691))

(assert (= (and b!1562689 condMapEmpty!59493) mapIsEmpty!59493))

(assert (= (and b!1562689 (not condMapEmpty!59493)) mapNonEmpty!59493))

(get-info :version)

(assert (= (and mapNonEmpty!59493 ((_ is ValueCellFull!18342) mapValue!59493)) b!1562692))

(assert (= (and b!1562689 ((_ is ValueCellFull!18342) mapDefault!59493)) b!1562690))

(assert (= start!133694 b!1562689))

(declare-fun m!1438459 () Bool)

(assert (=> b!1562688 m!1438459))

(declare-fun m!1438461 () Bool)

(assert (=> start!133694 m!1438461))

(declare-fun m!1438463 () Bool)

(assert (=> start!133694 m!1438463))

(declare-fun m!1438465 () Bool)

(assert (=> start!133694 m!1438465))

(declare-fun m!1438467 () Bool)

(assert (=> mapNonEmpty!59493 m!1438467))

(declare-fun m!1438469 () Bool)

(assert (=> b!1562691 m!1438469))

(check-sat tp_is_empty!38745 (not b!1562691) (not start!133694) (not b!1562688) (not mapNonEmpty!59493))
(check-sat)
