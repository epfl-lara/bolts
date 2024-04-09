; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35508 () Bool)

(assert start!35508)

(declare-fun b!355569 () Bool)

(declare-fun e!217835 () Bool)

(declare-fun tp_is_empty!7953 () Bool)

(assert (=> b!355569 (= e!217835 tp_is_empty!7953)))

(declare-fun b!355570 () Bool)

(declare-fun e!217833 () Bool)

(assert (=> b!355570 (= e!217833 tp_is_empty!7953)))

(declare-fun mapIsEmpty!13437 () Bool)

(declare-fun mapRes!13437 () Bool)

(assert (=> mapIsEmpty!13437 mapRes!13437))

(declare-fun mapNonEmpty!13437 () Bool)

(declare-fun tp!27414 () Bool)

(assert (=> mapNonEmpty!13437 (= mapRes!13437 (and tp!27414 e!217835))))

(declare-datatypes ((V!11581 0))(
  ( (V!11582 (val!4021 Int)) )
))
(declare-datatypes ((ValueCell!3633 0))(
  ( (ValueCellFull!3633 (v!6211 V!11581)) (EmptyCell!3633) )
))
(declare-fun mapValue!13437 () ValueCell!3633)

(declare-datatypes ((array!19453 0))(
  ( (array!19454 (arr!9217 (Array (_ BitVec 32) ValueCell!3633)) (size!9569 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19453)

(declare-fun mapRest!13437 () (Array (_ BitVec 32) ValueCell!3633))

(declare-fun mapKey!13437 () (_ BitVec 32))

(assert (=> mapNonEmpty!13437 (= (arr!9217 _values!1208) (store mapRest!13437 mapKey!13437 mapValue!13437))))

(declare-fun b!355572 () Bool)

(declare-fun res!197342 () Bool)

(declare-fun e!217832 () Bool)

(assert (=> b!355572 (=> (not res!197342) (not e!217832))))

(declare-datatypes ((array!19455 0))(
  ( (array!19456 (arr!9218 (Array (_ BitVec 32) (_ BitVec 64))) (size!9570 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19455)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19455 (_ BitVec 32)) Bool)

(assert (=> b!355572 (= res!197342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!197344 () Bool)

(assert (=> start!35508 (=> (not res!197344) (not e!217832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35508 (= res!197344 (validMask!0 mask!1842))))

(assert (=> start!35508 e!217832))

(assert (=> start!35508 true))

(declare-fun e!217831 () Bool)

(declare-fun array_inv!6786 (array!19453) Bool)

(assert (=> start!35508 (and (array_inv!6786 _values!1208) e!217831)))

(declare-fun array_inv!6787 (array!19455) Bool)

(assert (=> start!35508 (array_inv!6787 _keys!1456)))

(declare-fun b!355571 () Bool)

(assert (=> b!355571 (= e!217832 false)))

(declare-fun lt!165805 () Bool)

(declare-datatypes ((List!5366 0))(
  ( (Nil!5363) (Cons!5362 (h!6218 (_ BitVec 64)) (t!10524 List!5366)) )
))
(declare-fun arrayNoDuplicates!0 (array!19455 (_ BitVec 32) List!5366) Bool)

(assert (=> b!355571 (= lt!165805 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5363))))

(declare-fun b!355573 () Bool)

(declare-fun res!197343 () Bool)

(assert (=> b!355573 (=> (not res!197343) (not e!217832))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355573 (= res!197343 (and (= (size!9569 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9570 _keys!1456) (size!9569 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355574 () Bool)

(assert (=> b!355574 (= e!217831 (and e!217833 mapRes!13437))))

(declare-fun condMapEmpty!13437 () Bool)

(declare-fun mapDefault!13437 () ValueCell!3633)

(assert (=> b!355574 (= condMapEmpty!13437 (= (arr!9217 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3633)) mapDefault!13437)))))

(assert (= (and start!35508 res!197344) b!355573))

(assert (= (and b!355573 res!197343) b!355572))

(assert (= (and b!355572 res!197342) b!355571))

(assert (= (and b!355574 condMapEmpty!13437) mapIsEmpty!13437))

(assert (= (and b!355574 (not condMapEmpty!13437)) mapNonEmpty!13437))

(get-info :version)

(assert (= (and mapNonEmpty!13437 ((_ is ValueCellFull!3633) mapValue!13437)) b!355569))

(assert (= (and b!355574 ((_ is ValueCellFull!3633) mapDefault!13437)) b!355570))

(assert (= start!35508 b!355574))

(declare-fun m!354237 () Bool)

(assert (=> mapNonEmpty!13437 m!354237))

(declare-fun m!354239 () Bool)

(assert (=> b!355572 m!354239))

(declare-fun m!354241 () Bool)

(assert (=> start!35508 m!354241))

(declare-fun m!354243 () Bool)

(assert (=> start!35508 m!354243))

(declare-fun m!354245 () Bool)

(assert (=> start!35508 m!354245))

(declare-fun m!354247 () Bool)

(assert (=> b!355571 m!354247))

(check-sat (not b!355572) (not b!355571) (not mapNonEmpty!13437) tp_is_empty!7953 (not start!35508))
(check-sat)
