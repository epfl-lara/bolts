; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133550 () Bool)

(assert start!133550)

(declare-fun b!1560716 () Bool)

(declare-fun e!869789 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1560716 (= e!869789 (bvslt (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000))))

(declare-fun b!1560717 () Bool)

(declare-fun e!869791 () Bool)

(declare-fun tp_is_empty!38601 () Bool)

(assert (=> b!1560717 (= e!869791 tp_is_empty!38601)))

(declare-fun b!1560718 () Bool)

(declare-fun res!1067261 () Bool)

(assert (=> b!1560718 (=> (not res!1067261) (not e!869789))))

(declare-datatypes ((array!103873 0))(
  ( (array!103874 (arr!50124 (Array (_ BitVec 32) (_ BitVec 64))) (size!50675 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103873)

(declare-datatypes ((List!36559 0))(
  ( (Nil!36556) (Cons!36555 (h!38002 (_ BitVec 64)) (t!51299 List!36559)) )
))
(declare-fun arrayNoDuplicates!0 (array!103873 (_ BitVec 32) List!36559) Bool)

(assert (=> b!1560718 (= res!1067261 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36556))))

(declare-fun b!1560719 () Bool)

(declare-fun e!869792 () Bool)

(assert (=> b!1560719 (= e!869792 tp_is_empty!38601)))

(declare-fun b!1560720 () Bool)

(declare-fun res!1067264 () Bool)

(assert (=> b!1560720 (=> (not res!1067264) (not e!869789))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!59675 0))(
  ( (V!59676 (val!19384 Int)) )
))
(declare-datatypes ((ValueCell!18270 0))(
  ( (ValueCellFull!18270 (v!22133 V!59675)) (EmptyCell!18270) )
))
(declare-datatypes ((array!103875 0))(
  ( (array!103876 (arr!50125 (Array (_ BitVec 32) ValueCell!18270)) (size!50676 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103875)

(assert (=> b!1560720 (= res!1067264 (and (= (size!50676 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50675 _keys!637) (size!50676 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59277 () Bool)

(declare-fun mapRes!59277 () Bool)

(assert (=> mapIsEmpty!59277 mapRes!59277))

(declare-fun res!1067260 () Bool)

(assert (=> start!133550 (=> (not res!1067260) (not e!869789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133550 (= res!1067260 (validMask!0 mask!947))))

(assert (=> start!133550 e!869789))

(assert (=> start!133550 true))

(declare-fun array_inv!38889 (array!103873) Bool)

(assert (=> start!133550 (array_inv!38889 _keys!637)))

(declare-fun e!869788 () Bool)

(declare-fun array_inv!38890 (array!103875) Bool)

(assert (=> start!133550 (and (array_inv!38890 _values!487) e!869788)))

(declare-fun b!1560721 () Bool)

(declare-fun res!1067263 () Bool)

(assert (=> b!1560721 (=> (not res!1067263) (not e!869789))))

(assert (=> b!1560721 (= res!1067263 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50675 _keys!637)) (bvslt from!782 (size!50675 _keys!637))))))

(declare-fun b!1560722 () Bool)

(declare-fun res!1067262 () Bool)

(assert (=> b!1560722 (=> (not res!1067262) (not e!869789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103873 (_ BitVec 32)) Bool)

(assert (=> b!1560722 (= res!1067262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560723 () Bool)

(assert (=> b!1560723 (= e!869788 (and e!869792 mapRes!59277))))

(declare-fun condMapEmpty!59277 () Bool)

(declare-fun mapDefault!59277 () ValueCell!18270)

(assert (=> b!1560723 (= condMapEmpty!59277 (= (arr!50125 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18270)) mapDefault!59277)))))

(declare-fun b!1560724 () Bool)

(declare-fun res!1067259 () Bool)

(assert (=> b!1560724 (=> (not res!1067259) (not e!869789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1560724 (= res!1067259 (validKeyInArray!0 (select (arr!50124 _keys!637) from!782)))))

(declare-fun mapNonEmpty!59277 () Bool)

(declare-fun tp!112933 () Bool)

(assert (=> mapNonEmpty!59277 (= mapRes!59277 (and tp!112933 e!869791))))

(declare-fun mapRest!59277 () (Array (_ BitVec 32) ValueCell!18270))

(declare-fun mapValue!59277 () ValueCell!18270)

(declare-fun mapKey!59277 () (_ BitVec 32))

(assert (=> mapNonEmpty!59277 (= (arr!50125 _values!487) (store mapRest!59277 mapKey!59277 mapValue!59277))))

(assert (= (and start!133550 res!1067260) b!1560720))

(assert (= (and b!1560720 res!1067264) b!1560722))

(assert (= (and b!1560722 res!1067262) b!1560718))

(assert (= (and b!1560718 res!1067261) b!1560721))

(assert (= (and b!1560721 res!1067263) b!1560724))

(assert (= (and b!1560724 res!1067259) b!1560716))

(assert (= (and b!1560723 condMapEmpty!59277) mapIsEmpty!59277))

(assert (= (and b!1560723 (not condMapEmpty!59277)) mapNonEmpty!59277))

(get-info :version)

(assert (= (and mapNonEmpty!59277 ((_ is ValueCellFull!18270) mapValue!59277)) b!1560717))

(assert (= (and b!1560723 ((_ is ValueCellFull!18270) mapDefault!59277)) b!1560719))

(assert (= start!133550 b!1560723))

(declare-fun m!1436471 () Bool)

(assert (=> mapNonEmpty!59277 m!1436471))

(declare-fun m!1436473 () Bool)

(assert (=> b!1560722 m!1436473))

(declare-fun m!1436475 () Bool)

(assert (=> b!1560718 m!1436475))

(declare-fun m!1436477 () Bool)

(assert (=> start!133550 m!1436477))

(declare-fun m!1436479 () Bool)

(assert (=> start!133550 m!1436479))

(declare-fun m!1436481 () Bool)

(assert (=> start!133550 m!1436481))

(declare-fun m!1436483 () Bool)

(assert (=> b!1560724 m!1436483))

(assert (=> b!1560724 m!1436483))

(declare-fun m!1436485 () Bool)

(assert (=> b!1560724 m!1436485))

(check-sat (not b!1560724) (not mapNonEmpty!59277) (not start!133550) (not b!1560722) (not b!1560718) tp_is_empty!38601)
(check-sat)
