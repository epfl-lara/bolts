; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131628 () Bool)

(assert start!131628)

(declare-fun b!1541452 () Bool)

(declare-fun e!857387 () Bool)

(declare-fun tp_is_empty!37629 () Bool)

(assert (=> b!1541452 (= e!857387 tp_is_empty!37629)))

(declare-fun b!1541453 () Bool)

(declare-fun e!857384 () Bool)

(assert (=> b!1541453 (= e!857384 tp_is_empty!37629)))

(declare-fun mapIsEmpty!58132 () Bool)

(declare-fun mapRes!58132 () Bool)

(assert (=> mapIsEmpty!58132 mapRes!58132))

(declare-fun b!1541454 () Bool)

(declare-fun e!857383 () Bool)

(assert (=> b!1541454 (= e!857383 (and e!857384 mapRes!58132))))

(declare-fun condMapEmpty!58132 () Bool)

(declare-datatypes ((V!58615 0))(
  ( (V!58616 (val!18892 Int)) )
))
(declare-datatypes ((ValueCell!17904 0))(
  ( (ValueCellFull!17904 (v!21689 V!58615)) (EmptyCell!17904) )
))
(declare-datatypes ((array!102451 0))(
  ( (array!102452 (arr!49428 (Array (_ BitVec 32) ValueCell!17904)) (size!49979 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102451)

(declare-fun mapDefault!58132 () ValueCell!17904)

(assert (=> b!1541454 (= condMapEmpty!58132 (= (arr!49428 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17904)) mapDefault!58132)))))

(declare-datatypes ((array!102453 0))(
  ( (array!102454 (arr!49429 (Array (_ BitVec 32) (_ BitVec 64))) (size!49980 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102453)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun e!857386 () Bool)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun b!1541455 () Bool)

(assert (=> b!1541455 (= e!857386 (and (= (size!49979 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!49980 _keys!618) (size!49979 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011) (= (size!49980 _keys!618) (bvadd #b00000000000000000000000000000001 mask!926)) (bvsgt #b00000000000000000000000000000000 (size!49980 _keys!618))))))

(declare-fun res!1058070 () Bool)

(assert (=> start!131628 (=> (not res!1058070) (not e!857386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131628 (= res!1058070 (validMask!0 mask!926))))

(assert (=> start!131628 e!857386))

(assert (=> start!131628 true))

(declare-fun array_inv!38373 (array!102451) Bool)

(assert (=> start!131628 (and (array_inv!38373 _values!470) e!857383)))

(declare-fun array_inv!38374 (array!102453) Bool)

(assert (=> start!131628 (array_inv!38374 _keys!618)))

(declare-fun mapNonEmpty!58132 () Bool)

(declare-fun tp!110660 () Bool)

(assert (=> mapNonEmpty!58132 (= mapRes!58132 (and tp!110660 e!857387))))

(declare-fun mapKey!58132 () (_ BitVec 32))

(declare-fun mapRest!58132 () (Array (_ BitVec 32) ValueCell!17904))

(declare-fun mapValue!58132 () ValueCell!17904)

(assert (=> mapNonEmpty!58132 (= (arr!49428 _values!470) (store mapRest!58132 mapKey!58132 mapValue!58132))))

(assert (= (and start!131628 res!1058070) b!1541455))

(assert (= (and b!1541454 condMapEmpty!58132) mapIsEmpty!58132))

(assert (= (and b!1541454 (not condMapEmpty!58132)) mapNonEmpty!58132))

(get-info :version)

(assert (= (and mapNonEmpty!58132 ((_ is ValueCellFull!17904) mapValue!58132)) b!1541452))

(assert (= (and b!1541454 ((_ is ValueCellFull!17904) mapDefault!58132)) b!1541453))

(assert (= start!131628 b!1541454))

(declare-fun m!1423451 () Bool)

(assert (=> start!131628 m!1423451))

(declare-fun m!1423453 () Bool)

(assert (=> start!131628 m!1423453))

(declare-fun m!1423455 () Bool)

(assert (=> start!131628 m!1423455))

(declare-fun m!1423457 () Bool)

(assert (=> mapNonEmpty!58132 m!1423457))

(check-sat (not start!131628) (not mapNonEmpty!58132) tp_is_empty!37629)
(check-sat)
(get-model)

(declare-fun d!160605 () Bool)

(assert (=> d!160605 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!131628 d!160605))

(declare-fun d!160607 () Bool)

(assert (=> d!160607 (= (array_inv!38373 _values!470) (bvsge (size!49979 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!131628 d!160607))

(declare-fun d!160609 () Bool)

(assert (=> d!160609 (= (array_inv!38374 _keys!618) (bvsge (size!49980 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!131628 d!160609))

(declare-fun mapNonEmpty!58138 () Bool)

(declare-fun mapRes!58138 () Bool)

(declare-fun tp!110666 () Bool)

(declare-fun e!857407 () Bool)

(assert (=> mapNonEmpty!58138 (= mapRes!58138 (and tp!110666 e!857407))))

(declare-fun mapValue!58138 () ValueCell!17904)

(declare-fun mapRest!58138 () (Array (_ BitVec 32) ValueCell!17904))

(declare-fun mapKey!58138 () (_ BitVec 32))

(assert (=> mapNonEmpty!58138 (= mapRest!58132 (store mapRest!58138 mapKey!58138 mapValue!58138))))

(declare-fun mapIsEmpty!58138 () Bool)

(assert (=> mapIsEmpty!58138 mapRes!58138))

(declare-fun condMapEmpty!58138 () Bool)

(declare-fun mapDefault!58138 () ValueCell!17904)

(assert (=> mapNonEmpty!58132 (= condMapEmpty!58138 (= mapRest!58132 ((as const (Array (_ BitVec 32) ValueCell!17904)) mapDefault!58138)))))

(declare-fun e!857408 () Bool)

(assert (=> mapNonEmpty!58132 (= tp!110660 (and e!857408 mapRes!58138))))

(declare-fun b!1541474 () Bool)

(assert (=> b!1541474 (= e!857407 tp_is_empty!37629)))

(declare-fun b!1541475 () Bool)

(assert (=> b!1541475 (= e!857408 tp_is_empty!37629)))

(assert (= (and mapNonEmpty!58132 condMapEmpty!58138) mapIsEmpty!58138))

(assert (= (and mapNonEmpty!58132 (not condMapEmpty!58138)) mapNonEmpty!58138))

(assert (= (and mapNonEmpty!58138 ((_ is ValueCellFull!17904) mapValue!58138)) b!1541474))

(assert (= (and mapNonEmpty!58132 ((_ is ValueCellFull!17904) mapDefault!58138)) b!1541475))

(declare-fun m!1423467 () Bool)

(assert (=> mapNonEmpty!58138 m!1423467))

(check-sat (not mapNonEmpty!58138) tp_is_empty!37629)
(check-sat)
