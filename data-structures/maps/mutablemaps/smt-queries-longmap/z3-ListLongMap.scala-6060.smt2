; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78454 () Bool)

(assert start!78454)

(declare-fun mapIsEmpty!30528 () Bool)

(declare-fun mapRes!30528 () Bool)

(assert (=> mapIsEmpty!30528 mapRes!30528))

(declare-fun b!914637 () Bool)

(declare-fun e!513196 () Bool)

(declare-fun tp_is_empty!19191 () Bool)

(assert (=> b!914637 (= e!513196 tp_is_empty!19191)))

(declare-fun b!914638 () Bool)

(declare-fun e!513198 () Bool)

(assert (=> b!914638 (= e!513198 tp_is_empty!19191)))

(declare-fun b!914639 () Bool)

(declare-datatypes ((array!54388 0))(
  ( (array!54389 (arr!26140 (Array (_ BitVec 32) (_ BitVec 64))) (size!26600 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54388)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30553 0))(
  ( (V!30554 (val!9646 Int)) )
))
(declare-datatypes ((ValueCell!9114 0))(
  ( (ValueCellFull!9114 (v!12163 V!30553)) (EmptyCell!9114) )
))
(declare-datatypes ((array!54390 0))(
  ( (array!54391 (arr!26141 (Array (_ BitVec 32) ValueCell!9114)) (size!26601 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54390)

(declare-fun e!513195 () Bool)

(assert (=> b!914639 (= e!513195 (and (= (size!26601 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26600 _keys!1487) (size!26601 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011) (= (size!26600 _keys!1487) (bvadd #b00000000000000000000000000000001 mask!1881)) (bvsgt #b00000000000000000000000000000000 (size!26600 _keys!1487))))))

(declare-fun mapNonEmpty!30528 () Bool)

(declare-fun tp!58596 () Bool)

(assert (=> mapNonEmpty!30528 (= mapRes!30528 (and tp!58596 e!513198))))

(declare-fun mapKey!30528 () (_ BitVec 32))

(declare-fun mapRest!30528 () (Array (_ BitVec 32) ValueCell!9114))

(declare-fun mapValue!30528 () ValueCell!9114)

(assert (=> mapNonEmpty!30528 (= (arr!26141 _values!1231) (store mapRest!30528 mapKey!30528 mapValue!30528))))

(declare-fun b!914636 () Bool)

(declare-fun e!513199 () Bool)

(assert (=> b!914636 (= e!513199 (and e!513196 mapRes!30528))))

(declare-fun condMapEmpty!30528 () Bool)

(declare-fun mapDefault!30528 () ValueCell!9114)

(assert (=> b!914636 (= condMapEmpty!30528 (= (arr!26141 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9114)) mapDefault!30528)))))

(declare-fun res!616890 () Bool)

(assert (=> start!78454 (=> (not res!616890) (not e!513195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78454 (= res!616890 (validMask!0 mask!1881))))

(assert (=> start!78454 e!513195))

(assert (=> start!78454 true))

(declare-fun array_inv!20398 (array!54390) Bool)

(assert (=> start!78454 (and (array_inv!20398 _values!1231) e!513199)))

(declare-fun array_inv!20399 (array!54388) Bool)

(assert (=> start!78454 (array_inv!20399 _keys!1487)))

(assert (= (and start!78454 res!616890) b!914639))

(assert (= (and b!914636 condMapEmpty!30528) mapIsEmpty!30528))

(assert (= (and b!914636 (not condMapEmpty!30528)) mapNonEmpty!30528))

(get-info :version)

(assert (= (and mapNonEmpty!30528 ((_ is ValueCellFull!9114) mapValue!30528)) b!914638))

(assert (= (and b!914636 ((_ is ValueCellFull!9114) mapDefault!30528)) b!914637))

(assert (= start!78454 b!914636))

(declare-fun m!849359 () Bool)

(assert (=> mapNonEmpty!30528 m!849359))

(declare-fun m!849361 () Bool)

(assert (=> start!78454 m!849361))

(declare-fun m!849363 () Bool)

(assert (=> start!78454 m!849363))

(declare-fun m!849365 () Bool)

(assert (=> start!78454 m!849365))

(check-sat (not start!78454) (not mapNonEmpty!30528) tp_is_empty!19191)
(check-sat)
(get-model)

(declare-fun d!112619 () Bool)

(assert (=> d!112619 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!78454 d!112619))

(declare-fun d!112621 () Bool)

(assert (=> d!112621 (= (array_inv!20398 _values!1231) (bvsge (size!26601 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!78454 d!112621))

(declare-fun d!112623 () Bool)

(assert (=> d!112623 (= (array_inv!20399 _keys!1487) (bvsge (size!26600 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!78454 d!112623))

(declare-fun mapNonEmpty!30534 () Bool)

(declare-fun mapRes!30534 () Bool)

(declare-fun tp!58602 () Bool)

(declare-fun e!513219 () Bool)

(assert (=> mapNonEmpty!30534 (= mapRes!30534 (and tp!58602 e!513219))))

(declare-fun mapRest!30534 () (Array (_ BitVec 32) ValueCell!9114))

(declare-fun mapKey!30534 () (_ BitVec 32))

(declare-fun mapValue!30534 () ValueCell!9114)

(assert (=> mapNonEmpty!30534 (= mapRest!30528 (store mapRest!30534 mapKey!30534 mapValue!30534))))

(declare-fun b!914659 () Bool)

(declare-fun e!513220 () Bool)

(assert (=> b!914659 (= e!513220 tp_is_empty!19191)))

(declare-fun condMapEmpty!30534 () Bool)

(declare-fun mapDefault!30534 () ValueCell!9114)

(assert (=> mapNonEmpty!30528 (= condMapEmpty!30534 (= mapRest!30528 ((as const (Array (_ BitVec 32) ValueCell!9114)) mapDefault!30534)))))

(assert (=> mapNonEmpty!30528 (= tp!58596 (and e!513220 mapRes!30534))))

(declare-fun mapIsEmpty!30534 () Bool)

(assert (=> mapIsEmpty!30534 mapRes!30534))

(declare-fun b!914658 () Bool)

(assert (=> b!914658 (= e!513219 tp_is_empty!19191)))

(assert (= (and mapNonEmpty!30528 condMapEmpty!30534) mapIsEmpty!30534))

(assert (= (and mapNonEmpty!30528 (not condMapEmpty!30534)) mapNonEmpty!30534))

(assert (= (and mapNonEmpty!30534 ((_ is ValueCellFull!9114) mapValue!30534)) b!914658))

(assert (= (and mapNonEmpty!30528 ((_ is ValueCellFull!9114) mapDefault!30534)) b!914659))

(declare-fun m!849375 () Bool)

(assert (=> mapNonEmpty!30534 m!849375))

(check-sat (not mapNonEmpty!30534) tp_is_empty!19191)
(check-sat)
