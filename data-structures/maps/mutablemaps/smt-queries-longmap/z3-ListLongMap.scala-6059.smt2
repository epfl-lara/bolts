; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78448 () Bool)

(assert start!78448)

(declare-fun mapNonEmpty!30519 () Bool)

(declare-fun mapRes!30519 () Bool)

(declare-fun tp!58587 () Bool)

(declare-fun e!513154 () Bool)

(assert (=> mapNonEmpty!30519 (= mapRes!30519 (and tp!58587 e!513154))))

(declare-fun mapKey!30519 () (_ BitVec 32))

(declare-datatypes ((V!30545 0))(
  ( (V!30546 (val!9643 Int)) )
))
(declare-datatypes ((ValueCell!9111 0))(
  ( (ValueCellFull!9111 (v!12160 V!30545)) (EmptyCell!9111) )
))
(declare-fun mapValue!30519 () ValueCell!9111)

(declare-fun mapRest!30519 () (Array (_ BitVec 32) ValueCell!9111))

(declare-datatypes ((array!54378 0))(
  ( (array!54379 (arr!26135 (Array (_ BitVec 32) ValueCell!9111)) (size!26595 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54378)

(assert (=> mapNonEmpty!30519 (= (arr!26135 _values!1231) (store mapRest!30519 mapKey!30519 mapValue!30519))))

(declare-fun b!914600 () Bool)

(declare-fun e!513152 () Bool)

(declare-fun e!513153 () Bool)

(assert (=> b!914600 (= e!513152 (and e!513153 mapRes!30519))))

(declare-fun condMapEmpty!30519 () Bool)

(declare-fun mapDefault!30519 () ValueCell!9111)

(assert (=> b!914600 (= condMapEmpty!30519 (= (arr!26135 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9111)) mapDefault!30519)))))

(declare-fun res!616881 () Bool)

(declare-fun e!513151 () Bool)

(assert (=> start!78448 (=> (not res!616881) (not e!513151))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78448 (= res!616881 (validMask!0 mask!1881))))

(assert (=> start!78448 e!513151))

(assert (=> start!78448 true))

(declare-fun array_inv!20396 (array!54378) Bool)

(assert (=> start!78448 (and (array_inv!20396 _values!1231) e!513152)))

(declare-datatypes ((array!54380 0))(
  ( (array!54381 (arr!26136 (Array (_ BitVec 32) (_ BitVec 64))) (size!26596 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54380)

(declare-fun array_inv!20397 (array!54380) Bool)

(assert (=> start!78448 (array_inv!20397 _keys!1487)))

(declare-fun b!914601 () Bool)

(declare-fun tp_is_empty!19185 () Bool)

(assert (=> b!914601 (= e!513154 tp_is_empty!19185)))

(declare-fun b!914602 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!914602 (= e!513151 (and (= (size!26595 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26596 _keys!1487) (size!26595 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011) (not (= (size!26596 _keys!1487) (bvadd #b00000000000000000000000000000001 mask!1881)))))))

(declare-fun b!914603 () Bool)

(assert (=> b!914603 (= e!513153 tp_is_empty!19185)))

(declare-fun mapIsEmpty!30519 () Bool)

(assert (=> mapIsEmpty!30519 mapRes!30519))

(assert (= (and start!78448 res!616881) b!914602))

(assert (= (and b!914600 condMapEmpty!30519) mapIsEmpty!30519))

(assert (= (and b!914600 (not condMapEmpty!30519)) mapNonEmpty!30519))

(get-info :version)

(assert (= (and mapNonEmpty!30519 ((_ is ValueCellFull!9111) mapValue!30519)) b!914601))

(assert (= (and b!914600 ((_ is ValueCellFull!9111) mapDefault!30519)) b!914603))

(assert (= start!78448 b!914600))

(declare-fun m!849335 () Bool)

(assert (=> mapNonEmpty!30519 m!849335))

(declare-fun m!849337 () Bool)

(assert (=> start!78448 m!849337))

(declare-fun m!849339 () Bool)

(assert (=> start!78448 m!849339))

(declare-fun m!849341 () Bool)

(assert (=> start!78448 m!849341))

(check-sat (not start!78448) (not mapNonEmpty!30519) tp_is_empty!19185)
(check-sat)
