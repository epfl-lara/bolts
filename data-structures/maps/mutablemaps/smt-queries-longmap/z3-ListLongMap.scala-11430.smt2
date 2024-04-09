; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133368 () Bool)

(assert start!133368)

(declare-fun b!1559053 () Bool)

(declare-fun e!868660 () Bool)

(declare-fun tp_is_empty!38463 () Bool)

(assert (=> b!1559053 (= e!868660 tp_is_empty!38463)))

(declare-fun mapIsEmpty!59055 () Bool)

(declare-fun mapRes!59055 () Bool)

(assert (=> mapIsEmpty!59055 mapRes!59055))

(declare-fun b!1559054 () Bool)

(declare-fun e!868662 () Bool)

(declare-fun e!868661 () Bool)

(assert (=> b!1559054 (= e!868662 (and e!868661 mapRes!59055))))

(declare-fun condMapEmpty!59055 () Bool)

(declare-datatypes ((V!59491 0))(
  ( (V!59492 (val!19315 Int)) )
))
(declare-datatypes ((ValueCell!18201 0))(
  ( (ValueCellFull!18201 (v!22063 V!59491)) (EmptyCell!18201) )
))
(declare-datatypes ((array!103603 0))(
  ( (array!103604 (arr!49994 (Array (_ BitVec 32) ValueCell!18201)) (size!50545 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103603)

(declare-fun mapDefault!59055 () ValueCell!18201)

(assert (=> b!1559054 (= condMapEmpty!59055 (= (arr!49994 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18201)) mapDefault!59055)))))

(declare-fun mapNonEmpty!59055 () Bool)

(declare-fun tp!112711 () Bool)

(assert (=> mapNonEmpty!59055 (= mapRes!59055 (and tp!112711 e!868660))))

(declare-fun mapValue!59055 () ValueCell!18201)

(declare-fun mapKey!59055 () (_ BitVec 32))

(declare-fun mapRest!59055 () (Array (_ BitVec 32) ValueCell!18201))

(assert (=> mapNonEmpty!59055 (= (arr!49994 _values!487) (store mapRest!59055 mapKey!59055 mapValue!59055))))

(declare-fun res!1066281 () Bool)

(declare-fun e!868659 () Bool)

(assert (=> start!133368 (=> (not res!1066281) (not e!868659))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133368 (= res!1066281 (validMask!0 mask!947))))

(assert (=> start!133368 e!868659))

(assert (=> start!133368 true))

(declare-fun array_inv!38787 (array!103603) Bool)

(assert (=> start!133368 (and (array_inv!38787 _values!487) e!868662)))

(declare-datatypes ((array!103605 0))(
  ( (array!103606 (arr!49995 (Array (_ BitVec 32) (_ BitVec 64))) (size!50546 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103605)

(declare-fun array_inv!38788 (array!103605) Bool)

(assert (=> start!133368 (array_inv!38788 _keys!637)))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun b!1559055 () Bool)

(assert (=> b!1559055 (= e!868659 (and (= (size!50545 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50546 _keys!637) (size!50545 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011) (= (size!50546 _keys!637) (bvadd #b00000000000000000000000000000001 mask!947)) (bvsgt #b00000000000000000000000000000000 (size!50546 _keys!637))))))

(declare-fun b!1559056 () Bool)

(assert (=> b!1559056 (= e!868661 tp_is_empty!38463)))

(assert (= (and start!133368 res!1066281) b!1559055))

(assert (= (and b!1559054 condMapEmpty!59055) mapIsEmpty!59055))

(assert (= (and b!1559054 (not condMapEmpty!59055)) mapNonEmpty!59055))

(get-info :version)

(assert (= (and mapNonEmpty!59055 ((_ is ValueCellFull!18201) mapValue!59055)) b!1559053))

(assert (= (and b!1559054 ((_ is ValueCellFull!18201) mapDefault!59055)) b!1559056))

(assert (= start!133368 b!1559054))

(declare-fun m!1435451 () Bool)

(assert (=> mapNonEmpty!59055 m!1435451))

(declare-fun m!1435453 () Bool)

(assert (=> start!133368 m!1435453))

(declare-fun m!1435455 () Bool)

(assert (=> start!133368 m!1435455))

(declare-fun m!1435457 () Bool)

(assert (=> start!133368 m!1435457))

(check-sat (not start!133368) (not mapNonEmpty!59055) tp_is_empty!38463)
(check-sat)
(get-model)

(declare-fun d!162813 () Bool)

(assert (=> d!162813 (= (validMask!0 mask!947) (and (or (= mask!947 #b00000000000000000000000000000111) (= mask!947 #b00000000000000000000000000001111) (= mask!947 #b00000000000000000000000000011111) (= mask!947 #b00000000000000000000000000111111) (= mask!947 #b00000000000000000000000001111111) (= mask!947 #b00000000000000000000000011111111) (= mask!947 #b00000000000000000000000111111111) (= mask!947 #b00000000000000000000001111111111) (= mask!947 #b00000000000000000000011111111111) (= mask!947 #b00000000000000000000111111111111) (= mask!947 #b00000000000000000001111111111111) (= mask!947 #b00000000000000000011111111111111) (= mask!947 #b00000000000000000111111111111111) (= mask!947 #b00000000000000001111111111111111) (= mask!947 #b00000000000000011111111111111111) (= mask!947 #b00000000000000111111111111111111) (= mask!947 #b00000000000001111111111111111111) (= mask!947 #b00000000000011111111111111111111) (= mask!947 #b00000000000111111111111111111111) (= mask!947 #b00000000001111111111111111111111) (= mask!947 #b00000000011111111111111111111111) (= mask!947 #b00000000111111111111111111111111) (= mask!947 #b00000001111111111111111111111111) (= mask!947 #b00000011111111111111111111111111) (= mask!947 #b00000111111111111111111111111111) (= mask!947 #b00001111111111111111111111111111) (= mask!947 #b00011111111111111111111111111111) (= mask!947 #b00111111111111111111111111111111)) (bvsle mask!947 #b00111111111111111111111111111111)))))

(assert (=> start!133368 d!162813))

(declare-fun d!162815 () Bool)

(assert (=> d!162815 (= (array_inv!38787 _values!487) (bvsge (size!50545 _values!487) #b00000000000000000000000000000000))))

(assert (=> start!133368 d!162815))

(declare-fun d!162817 () Bool)

(assert (=> d!162817 (= (array_inv!38788 _keys!637) (bvsge (size!50546 _keys!637) #b00000000000000000000000000000000))))

(assert (=> start!133368 d!162817))

(declare-fun b!1559076 () Bool)

(declare-fun e!868683 () Bool)

(assert (=> b!1559076 (= e!868683 tp_is_empty!38463)))

(declare-fun mapNonEmpty!59061 () Bool)

(declare-fun mapRes!59061 () Bool)

(declare-fun tp!112717 () Bool)

(declare-fun e!868682 () Bool)

(assert (=> mapNonEmpty!59061 (= mapRes!59061 (and tp!112717 e!868682))))

(declare-fun mapRest!59061 () (Array (_ BitVec 32) ValueCell!18201))

(declare-fun mapKey!59061 () (_ BitVec 32))

(declare-fun mapValue!59061 () ValueCell!18201)

(assert (=> mapNonEmpty!59061 (= mapRest!59055 (store mapRest!59061 mapKey!59061 mapValue!59061))))

(declare-fun mapIsEmpty!59061 () Bool)

(assert (=> mapIsEmpty!59061 mapRes!59061))

(declare-fun b!1559075 () Bool)

(assert (=> b!1559075 (= e!868682 tp_is_empty!38463)))

(declare-fun condMapEmpty!59061 () Bool)

(declare-fun mapDefault!59061 () ValueCell!18201)

(assert (=> mapNonEmpty!59055 (= condMapEmpty!59061 (= mapRest!59055 ((as const (Array (_ BitVec 32) ValueCell!18201)) mapDefault!59061)))))

(assert (=> mapNonEmpty!59055 (= tp!112711 (and e!868683 mapRes!59061))))

(assert (= (and mapNonEmpty!59055 condMapEmpty!59061) mapIsEmpty!59061))

(assert (= (and mapNonEmpty!59055 (not condMapEmpty!59061)) mapNonEmpty!59061))

(assert (= (and mapNonEmpty!59061 ((_ is ValueCellFull!18201) mapValue!59061)) b!1559075))

(assert (= (and mapNonEmpty!59055 ((_ is ValueCellFull!18201) mapDefault!59061)) b!1559076))

(declare-fun m!1435467 () Bool)

(assert (=> mapNonEmpty!59061 m!1435467))

(check-sat (not mapNonEmpty!59061) tp_is_empty!38463)
(check-sat)
