; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7412 () Bool)

(assert start!7412)

(declare-fun b!47546 () Bool)

(declare-fun res!27650 () Bool)

(declare-fun e!30457 () Bool)

(assert (=> b!47546 (=> (not res!27650) (not e!30457))))

(declare-datatypes ((array!3140 0))(
  ( (array!3141 (arr!1504 (Array (_ BitVec 32) (_ BitVec 64))) (size!1726 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3140)

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-datatypes ((V!2449 0))(
  ( (V!2450 (val!1057 Int)) )
))
(declare-datatypes ((ValueCell!729 0))(
  ( (ValueCellFull!729 (v!2117 V!2449)) (EmptyCell!729) )
))
(declare-datatypes ((array!3142 0))(
  ( (array!3143 (arr!1505 (Array (_ BitVec 32) ValueCell!729)) (size!1727 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3142)

(assert (=> b!47546 (= res!27650 (and (= (size!1727 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1726 _keys!1940) (size!1727 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!2099 () Bool)

(declare-fun mapRes!2099 () Bool)

(assert (=> mapIsEmpty!2099 mapRes!2099))

(declare-fun b!47547 () Bool)

(declare-fun e!30460 () Bool)

(declare-fun e!30458 () Bool)

(assert (=> b!47547 (= e!30460 (and e!30458 mapRes!2099))))

(declare-fun condMapEmpty!2099 () Bool)

(declare-fun mapDefault!2099 () ValueCell!729)

(assert (=> b!47547 (= condMapEmpty!2099 (= (arr!1505 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!729)) mapDefault!2099)))))

(declare-fun b!47548 () Bool)

(assert (=> b!47548 (= e!30457 false)))

(declare-fun lt!20439 () Bool)

(declare-datatypes ((List!1278 0))(
  ( (Nil!1275) (Cons!1274 (h!1854 (_ BitVec 64)) (t!4314 List!1278)) )
))
(declare-fun arrayNoDuplicates!0 (array!3140 (_ BitVec 32) List!1278) Bool)

(assert (=> b!47548 (= lt!20439 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1275))))

(declare-fun mapNonEmpty!2099 () Bool)

(declare-fun tp!6248 () Bool)

(declare-fun e!30456 () Bool)

(assert (=> mapNonEmpty!2099 (= mapRes!2099 (and tp!6248 e!30456))))

(declare-fun mapValue!2099 () ValueCell!729)

(declare-fun mapKey!2099 () (_ BitVec 32))

(declare-fun mapRest!2099 () (Array (_ BitVec 32) ValueCell!729))

(assert (=> mapNonEmpty!2099 (= (arr!1505 _values!1550) (store mapRest!2099 mapKey!2099 mapValue!2099))))

(declare-fun b!47549 () Bool)

(declare-fun tp_is_empty!2037 () Bool)

(assert (=> b!47549 (= e!30456 tp_is_empty!2037)))

(declare-fun res!27651 () Bool)

(assert (=> start!7412 (=> (not res!27651) (not e!30457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7412 (= res!27651 (validMask!0 mask!2458))))

(assert (=> start!7412 e!30457))

(assert (=> start!7412 true))

(declare-fun array_inv!862 (array!3142) Bool)

(assert (=> start!7412 (and (array_inv!862 _values!1550) e!30460)))

(declare-fun array_inv!863 (array!3140) Bool)

(assert (=> start!7412 (array_inv!863 _keys!1940)))

(declare-fun b!47550 () Bool)

(declare-fun res!27649 () Bool)

(assert (=> b!47550 (=> (not res!27649) (not e!30457))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3140 (_ BitVec 32)) Bool)

(assert (=> b!47550 (= res!27649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47551 () Bool)

(assert (=> b!47551 (= e!30458 tp_is_empty!2037)))

(assert (= (and start!7412 res!27651) b!47546))

(assert (= (and b!47546 res!27650) b!47550))

(assert (= (and b!47550 res!27649) b!47548))

(assert (= (and b!47547 condMapEmpty!2099) mapIsEmpty!2099))

(assert (= (and b!47547 (not condMapEmpty!2099)) mapNonEmpty!2099))

(get-info :version)

(assert (= (and mapNonEmpty!2099 ((_ is ValueCellFull!729) mapValue!2099)) b!47549))

(assert (= (and b!47547 ((_ is ValueCellFull!729) mapDefault!2099)) b!47551))

(assert (= start!7412 b!47547))

(declare-fun m!41755 () Bool)

(assert (=> b!47548 m!41755))

(declare-fun m!41757 () Bool)

(assert (=> mapNonEmpty!2099 m!41757))

(declare-fun m!41759 () Bool)

(assert (=> start!7412 m!41759))

(declare-fun m!41761 () Bool)

(assert (=> start!7412 m!41761))

(declare-fun m!41763 () Bool)

(assert (=> start!7412 m!41763))

(declare-fun m!41765 () Bool)

(assert (=> b!47550 m!41765))

(check-sat (not b!47548) (not mapNonEmpty!2099) (not b!47550) tp_is_empty!2037 (not start!7412))
(check-sat)
