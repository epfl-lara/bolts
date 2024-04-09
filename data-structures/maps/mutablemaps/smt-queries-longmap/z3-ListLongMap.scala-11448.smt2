; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133520 () Bool)

(assert start!133520)

(declare-fun b!1560431 () Bool)

(declare-fun res!1067110 () Bool)

(declare-fun e!869564 () Bool)

(assert (=> b!1560431 (=> (not res!1067110) (not e!869564))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!103817 0))(
  ( (array!103818 (arr!50096 (Array (_ BitVec 32) (_ BitVec 64))) (size!50647 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103817)

(declare-datatypes ((V!59635 0))(
  ( (V!59636 (val!19369 Int)) )
))
(declare-datatypes ((ValueCell!18255 0))(
  ( (ValueCellFull!18255 (v!22118 V!59635)) (EmptyCell!18255) )
))
(declare-datatypes ((array!103819 0))(
  ( (array!103820 (arr!50097 (Array (_ BitVec 32) ValueCell!18255)) (size!50648 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103819)

(assert (=> b!1560431 (= res!1067110 (and (= (size!50648 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50647 _keys!637) (size!50648 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1560432 () Bool)

(declare-fun e!869565 () Bool)

(declare-fun e!869567 () Bool)

(declare-fun mapRes!59232 () Bool)

(assert (=> b!1560432 (= e!869565 (and e!869567 mapRes!59232))))

(declare-fun condMapEmpty!59232 () Bool)

(declare-fun mapDefault!59232 () ValueCell!18255)

(assert (=> b!1560432 (= condMapEmpty!59232 (= (arr!50097 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18255)) mapDefault!59232)))))

(declare-fun mapNonEmpty!59232 () Bool)

(declare-fun tp!112888 () Bool)

(declare-fun e!869563 () Bool)

(assert (=> mapNonEmpty!59232 (= mapRes!59232 (and tp!112888 e!869563))))

(declare-fun mapRest!59232 () (Array (_ BitVec 32) ValueCell!18255))

(declare-fun mapKey!59232 () (_ BitVec 32))

(declare-fun mapValue!59232 () ValueCell!18255)

(assert (=> mapNonEmpty!59232 (= (arr!50097 _values!487) (store mapRest!59232 mapKey!59232 mapValue!59232))))

(declare-fun b!1560434 () Bool)

(declare-fun res!1067111 () Bool)

(assert (=> b!1560434 (=> (not res!1067111) (not e!869564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103817 (_ BitVec 32)) Bool)

(assert (=> b!1560434 (= res!1067111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1560435 () Bool)

(declare-fun tp_is_empty!38571 () Bool)

(assert (=> b!1560435 (= e!869567 tp_is_empty!38571)))

(declare-fun b!1560436 () Bool)

(assert (=> b!1560436 (= e!869563 tp_is_empty!38571)))

(declare-fun mapIsEmpty!59232 () Bool)

(assert (=> mapIsEmpty!59232 mapRes!59232))

(declare-fun res!1067109 () Bool)

(assert (=> start!133520 (=> (not res!1067109) (not e!869564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133520 (= res!1067109 (validMask!0 mask!947))))

(assert (=> start!133520 e!869564))

(assert (=> start!133520 true))

(declare-fun array_inv!38867 (array!103819) Bool)

(assert (=> start!133520 (and (array_inv!38867 _values!487) e!869565)))

(declare-fun array_inv!38868 (array!103817) Bool)

(assert (=> start!133520 (array_inv!38868 _keys!637)))

(declare-fun b!1560433 () Bool)

(assert (=> b!1560433 (= e!869564 false)))

(declare-fun lt!670935 () Bool)

(declare-datatypes ((List!36548 0))(
  ( (Nil!36545) (Cons!36544 (h!37991 (_ BitVec 64)) (t!51288 List!36548)) )
))
(declare-fun arrayNoDuplicates!0 (array!103817 (_ BitVec 32) List!36548) Bool)

(assert (=> b!1560433 (= lt!670935 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36545))))

(assert (= (and start!133520 res!1067109) b!1560431))

(assert (= (and b!1560431 res!1067110) b!1560434))

(assert (= (and b!1560434 res!1067111) b!1560433))

(assert (= (and b!1560432 condMapEmpty!59232) mapIsEmpty!59232))

(assert (= (and b!1560432 (not condMapEmpty!59232)) mapNonEmpty!59232))

(get-info :version)

(assert (= (and mapNonEmpty!59232 ((_ is ValueCellFull!18255) mapValue!59232)) b!1560436))

(assert (= (and b!1560432 ((_ is ValueCellFull!18255) mapDefault!59232)) b!1560435))

(assert (= start!133520 b!1560432))

(declare-fun m!1436287 () Bool)

(assert (=> mapNonEmpty!59232 m!1436287))

(declare-fun m!1436289 () Bool)

(assert (=> b!1560434 m!1436289))

(declare-fun m!1436291 () Bool)

(assert (=> start!133520 m!1436291))

(declare-fun m!1436293 () Bool)

(assert (=> start!133520 m!1436293))

(declare-fun m!1436295 () Bool)

(assert (=> start!133520 m!1436295))

(declare-fun m!1436297 () Bool)

(assert (=> b!1560433 m!1436297))

(check-sat (not mapNonEmpty!59232) (not b!1560433) tp_is_empty!38571 (not b!1560434) (not start!133520))
(check-sat)
