; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133544 () Bool)

(assert start!133544)

(declare-fun b!1560647 () Bool)

(declare-fun res!1067217 () Bool)

(declare-fun e!869747 () Bool)

(assert (=> b!1560647 (=> (not res!1067217) (not e!869747))))

(declare-datatypes ((array!103861 0))(
  ( (array!103862 (arr!50118 (Array (_ BitVec 32) (_ BitVec 64))) (size!50669 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103861)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103861 (_ BitVec 32)) Bool)

(assert (=> b!1560647 (= res!1067217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun res!1067218 () Bool)

(assert (=> start!133544 (=> (not res!1067218) (not e!869747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133544 (= res!1067218 (validMask!0 mask!947))))

(assert (=> start!133544 e!869747))

(assert (=> start!133544 true))

(declare-datatypes ((V!59667 0))(
  ( (V!59668 (val!19381 Int)) )
))
(declare-datatypes ((ValueCell!18267 0))(
  ( (ValueCellFull!18267 (v!22130 V!59667)) (EmptyCell!18267) )
))
(declare-datatypes ((array!103863 0))(
  ( (array!103864 (arr!50119 (Array (_ BitVec 32) ValueCell!18267)) (size!50670 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103863)

(declare-fun e!869746 () Bool)

(declare-fun array_inv!38883 (array!103863) Bool)

(assert (=> start!133544 (and (array_inv!38883 _values!487) e!869746)))

(declare-fun array_inv!38884 (array!103861) Bool)

(assert (=> start!133544 (array_inv!38884 _keys!637)))

(declare-fun b!1560648 () Bool)

(declare-fun e!869743 () Bool)

(declare-fun tp_is_empty!38595 () Bool)

(assert (=> b!1560648 (= e!869743 tp_is_empty!38595)))

(declare-fun b!1560649 () Bool)

(declare-fun e!869744 () Bool)

(declare-fun mapRes!59268 () Bool)

(assert (=> b!1560649 (= e!869746 (and e!869744 mapRes!59268))))

(declare-fun condMapEmpty!59268 () Bool)

(declare-fun mapDefault!59268 () ValueCell!18267)

(assert (=> b!1560649 (= condMapEmpty!59268 (= (arr!50119 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18267)) mapDefault!59268)))))

(declare-fun b!1560650 () Bool)

(assert (=> b!1560650 (= e!869744 tp_is_empty!38595)))

(declare-fun b!1560651 () Bool)

(assert (=> b!1560651 (= e!869747 false)))

(declare-fun lt!670971 () Bool)

(declare-datatypes ((List!36557 0))(
  ( (Nil!36554) (Cons!36553 (h!38000 (_ BitVec 64)) (t!51297 List!36557)) )
))
(declare-fun arrayNoDuplicates!0 (array!103861 (_ BitVec 32) List!36557) Bool)

(assert (=> b!1560651 (= lt!670971 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36554))))

(declare-fun b!1560652 () Bool)

(declare-fun res!1067219 () Bool)

(assert (=> b!1560652 (=> (not res!1067219) (not e!869747))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1560652 (= res!1067219 (and (= (size!50670 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50669 _keys!637) (size!50670 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59268 () Bool)

(declare-fun tp!112924 () Bool)

(assert (=> mapNonEmpty!59268 (= mapRes!59268 (and tp!112924 e!869743))))

(declare-fun mapKey!59268 () (_ BitVec 32))

(declare-fun mapRest!59268 () (Array (_ BitVec 32) ValueCell!18267))

(declare-fun mapValue!59268 () ValueCell!18267)

(assert (=> mapNonEmpty!59268 (= (arr!50119 _values!487) (store mapRest!59268 mapKey!59268 mapValue!59268))))

(declare-fun mapIsEmpty!59268 () Bool)

(assert (=> mapIsEmpty!59268 mapRes!59268))

(assert (= (and start!133544 res!1067218) b!1560652))

(assert (= (and b!1560652 res!1067219) b!1560647))

(assert (= (and b!1560647 res!1067217) b!1560651))

(assert (= (and b!1560649 condMapEmpty!59268) mapIsEmpty!59268))

(assert (= (and b!1560649 (not condMapEmpty!59268)) mapNonEmpty!59268))

(get-info :version)

(assert (= (and mapNonEmpty!59268 ((_ is ValueCellFull!18267) mapValue!59268)) b!1560648))

(assert (= (and b!1560649 ((_ is ValueCellFull!18267) mapDefault!59268)) b!1560650))

(assert (= start!133544 b!1560649))

(declare-fun m!1436431 () Bool)

(assert (=> b!1560647 m!1436431))

(declare-fun m!1436433 () Bool)

(assert (=> start!133544 m!1436433))

(declare-fun m!1436435 () Bool)

(assert (=> start!133544 m!1436435))

(declare-fun m!1436437 () Bool)

(assert (=> start!133544 m!1436437))

(declare-fun m!1436439 () Bool)

(assert (=> b!1560651 m!1436439))

(declare-fun m!1436441 () Bool)

(assert (=> mapNonEmpty!59268 m!1436441))

(check-sat (not mapNonEmpty!59268) (not start!133544) (not b!1560647) (not b!1560651) tp_is_empty!38595)
(check-sat)
