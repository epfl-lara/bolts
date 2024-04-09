; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133532 () Bool)

(assert start!133532)

(declare-fun b!1560539 () Bool)

(declare-fun e!869657 () Bool)

(declare-fun e!869655 () Bool)

(declare-fun mapRes!59250 () Bool)

(assert (=> b!1560539 (= e!869657 (and e!869655 mapRes!59250))))

(declare-fun condMapEmpty!59250 () Bool)

(declare-datatypes ((V!59651 0))(
  ( (V!59652 (val!19375 Int)) )
))
(declare-datatypes ((ValueCell!18261 0))(
  ( (ValueCellFull!18261 (v!22124 V!59651)) (EmptyCell!18261) )
))
(declare-datatypes ((array!103839 0))(
  ( (array!103840 (arr!50107 (Array (_ BitVec 32) ValueCell!18261)) (size!50658 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103839)

(declare-fun mapDefault!59250 () ValueCell!18261)

(assert (=> b!1560539 (= condMapEmpty!59250 (= (arr!50107 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18261)) mapDefault!59250)))))

(declare-fun b!1560540 () Bool)

(declare-fun res!1067164 () Bool)

(declare-fun e!869654 () Bool)

(assert (=> b!1560540 (=> (not res!1067164) (not e!869654))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103841 0))(
  ( (array!103842 (arr!50108 (Array (_ BitVec 32) (_ BitVec 64))) (size!50659 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103841)

(assert (=> b!1560540 (= res!1067164 (and (= (size!50658 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50659 _keys!637) (size!50658 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560541 () Bool)

(declare-fun e!869656 () Bool)

(declare-fun tp_is_empty!38583 () Bool)

(assert (=> b!1560541 (= e!869656 tp_is_empty!38583)))

(declare-fun b!1560542 () Bool)

(declare-fun res!1067163 () Bool)

(assert (=> b!1560542 (=> (not res!1067163) (not e!869654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103841 (_ BitVec 32)) Bool)

(assert (=> b!1560542 (= res!1067163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1067165 () Bool)

(assert (=> start!133532 (=> (not res!1067165) (not e!869654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133532 (= res!1067165 (validMask!0 mask!947))))

(assert (=> start!133532 e!869654))

(assert (=> start!133532 true))

(declare-fun array_inv!38873 (array!103839) Bool)

(assert (=> start!133532 (and (array_inv!38873 _values!487) e!869657)))

(declare-fun array_inv!38874 (array!103841) Bool)

(assert (=> start!133532 (array_inv!38874 _keys!637)))

(declare-fun mapIsEmpty!59250 () Bool)

(assert (=> mapIsEmpty!59250 mapRes!59250))

(declare-fun b!1560543 () Bool)

(assert (=> b!1560543 (= e!869655 tp_is_empty!38583)))

(declare-fun b!1560544 () Bool)

(assert (=> b!1560544 (= e!869654 false)))

(declare-fun lt!670953 () Bool)

(declare-datatypes ((List!36553 0))(
  ( (Nil!36550) (Cons!36549 (h!37996 (_ BitVec 64)) (t!51293 List!36553)) )
))
(declare-fun arrayNoDuplicates!0 (array!103841 (_ BitVec 32) List!36553) Bool)

(assert (=> b!1560544 (= lt!670953 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36550))))

(declare-fun mapNonEmpty!59250 () Bool)

(declare-fun tp!112906 () Bool)

(assert (=> mapNonEmpty!59250 (= mapRes!59250 (and tp!112906 e!869656))))

(declare-fun mapValue!59250 () ValueCell!18261)

(declare-fun mapRest!59250 () (Array (_ BitVec 32) ValueCell!18261))

(declare-fun mapKey!59250 () (_ BitVec 32))

(assert (=> mapNonEmpty!59250 (= (arr!50107 _values!487) (store mapRest!59250 mapKey!59250 mapValue!59250))))

(assert (= (and start!133532 res!1067165) b!1560540))

(assert (= (and b!1560540 res!1067164) b!1560542))

(assert (= (and b!1560542 res!1067163) b!1560544))

(assert (= (and b!1560539 condMapEmpty!59250) mapIsEmpty!59250))

(assert (= (and b!1560539 (not condMapEmpty!59250)) mapNonEmpty!59250))

(get-info :version)

(assert (= (and mapNonEmpty!59250 ((_ is ValueCellFull!18261) mapValue!59250)) b!1560541))

(assert (= (and b!1560539 ((_ is ValueCellFull!18261) mapDefault!59250)) b!1560543))

(assert (= start!133532 b!1560539))

(declare-fun m!1436359 () Bool)

(assert (=> b!1560542 m!1436359))

(declare-fun m!1436361 () Bool)

(assert (=> start!133532 m!1436361))

(declare-fun m!1436363 () Bool)

(assert (=> start!133532 m!1436363))

(declare-fun m!1436365 () Bool)

(assert (=> start!133532 m!1436365))

(declare-fun m!1436367 () Bool)

(assert (=> b!1560544 m!1436367))

(declare-fun m!1436369 () Bool)

(assert (=> mapNonEmpty!59250 m!1436369))

(check-sat (not mapNonEmpty!59250) (not start!133532) tp_is_empty!38583 (not b!1560542) (not b!1560544))
(check-sat)
