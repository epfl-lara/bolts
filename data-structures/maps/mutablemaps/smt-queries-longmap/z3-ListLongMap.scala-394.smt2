; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7418 () Bool)

(assert start!7418)

(declare-fun b!47600 () Bool)

(declare-fun res!27678 () Bool)

(declare-fun e!30501 () Bool)

(assert (=> b!47600 (=> (not res!27678) (not e!30501))))

(declare-datatypes ((array!3150 0))(
  ( (array!3151 (arr!1509 (Array (_ BitVec 32) (_ BitVec 64))) (size!1731 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3150)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3150 (_ BitVec 32)) Bool)

(assert (=> b!47600 (= res!27678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun mapIsEmpty!2108 () Bool)

(declare-fun mapRes!2108 () Bool)

(assert (=> mapIsEmpty!2108 mapRes!2108))

(declare-fun b!47601 () Bool)

(assert (=> b!47601 (= e!30501 false)))

(declare-fun lt!20448 () Bool)

(declare-datatypes ((List!1279 0))(
  ( (Nil!1276) (Cons!1275 (h!1855 (_ BitVec 64)) (t!4315 List!1279)) )
))
(declare-fun arrayNoDuplicates!0 (array!3150 (_ BitVec 32) List!1279) Bool)

(assert (=> b!47601 (= lt!20448 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1276))))

(declare-fun b!47602 () Bool)

(declare-fun e!30504 () Bool)

(declare-fun e!30502 () Bool)

(assert (=> b!47602 (= e!30504 (and e!30502 mapRes!2108))))

(declare-fun condMapEmpty!2108 () Bool)

(declare-datatypes ((V!2457 0))(
  ( (V!2458 (val!1060 Int)) )
))
(declare-datatypes ((ValueCell!732 0))(
  ( (ValueCellFull!732 (v!2120 V!2457)) (EmptyCell!732) )
))
(declare-datatypes ((array!3152 0))(
  ( (array!3153 (arr!1510 (Array (_ BitVec 32) ValueCell!732)) (size!1732 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3152)

(declare-fun mapDefault!2108 () ValueCell!732)

(assert (=> b!47602 (= condMapEmpty!2108 (= (arr!1510 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!732)) mapDefault!2108)))))

(declare-fun b!47603 () Bool)

(declare-fun tp_is_empty!2043 () Bool)

(assert (=> b!47603 (= e!30502 tp_is_empty!2043)))

(declare-fun res!27677 () Bool)

(assert (=> start!7418 (=> (not res!27677) (not e!30501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7418 (= res!27677 (validMask!0 mask!2458))))

(assert (=> start!7418 e!30501))

(assert (=> start!7418 true))

(declare-fun array_inv!864 (array!3152) Bool)

(assert (=> start!7418 (and (array_inv!864 _values!1550) e!30504)))

(declare-fun array_inv!865 (array!3150) Bool)

(assert (=> start!7418 (array_inv!865 _keys!1940)))

(declare-fun b!47604 () Bool)

(declare-fun e!30503 () Bool)

(assert (=> b!47604 (= e!30503 tp_is_empty!2043)))

(declare-fun b!47605 () Bool)

(declare-fun res!27676 () Bool)

(assert (=> b!47605 (=> (not res!27676) (not e!30501))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47605 (= res!27676 (and (= (size!1732 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1731 _keys!1940) (size!1732 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!2108 () Bool)

(declare-fun tp!6257 () Bool)

(assert (=> mapNonEmpty!2108 (= mapRes!2108 (and tp!6257 e!30503))))

(declare-fun mapValue!2108 () ValueCell!732)

(declare-fun mapKey!2108 () (_ BitVec 32))

(declare-fun mapRest!2108 () (Array (_ BitVec 32) ValueCell!732))

(assert (=> mapNonEmpty!2108 (= (arr!1510 _values!1550) (store mapRest!2108 mapKey!2108 mapValue!2108))))

(assert (= (and start!7418 res!27677) b!47605))

(assert (= (and b!47605 res!27676) b!47600))

(assert (= (and b!47600 res!27678) b!47601))

(assert (= (and b!47602 condMapEmpty!2108) mapIsEmpty!2108))

(assert (= (and b!47602 (not condMapEmpty!2108)) mapNonEmpty!2108))

(get-info :version)

(assert (= (and mapNonEmpty!2108 ((_ is ValueCellFull!732) mapValue!2108)) b!47604))

(assert (= (and b!47602 ((_ is ValueCellFull!732) mapDefault!2108)) b!47603))

(assert (= start!7418 b!47602))

(declare-fun m!41791 () Bool)

(assert (=> b!47600 m!41791))

(declare-fun m!41793 () Bool)

(assert (=> b!47601 m!41793))

(declare-fun m!41795 () Bool)

(assert (=> start!7418 m!41795))

(declare-fun m!41797 () Bool)

(assert (=> start!7418 m!41797))

(declare-fun m!41799 () Bool)

(assert (=> start!7418 m!41799))

(declare-fun m!41801 () Bool)

(assert (=> mapNonEmpty!2108 m!41801))

(check-sat (not mapNonEmpty!2108) (not b!47600) tp_is_empty!2043 (not b!47601) (not start!7418))
(check-sat)
