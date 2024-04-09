; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35496 () Bool)

(assert start!35496)

(declare-fun mapNonEmpty!13419 () Bool)

(declare-fun mapRes!13419 () Bool)

(declare-fun tp!27396 () Bool)

(declare-fun e!217744 () Bool)

(assert (=> mapNonEmpty!13419 (= mapRes!13419 (and tp!27396 e!217744))))

(declare-datatypes ((V!11565 0))(
  ( (V!11566 (val!4015 Int)) )
))
(declare-datatypes ((ValueCell!3627 0))(
  ( (ValueCellFull!3627 (v!6205 V!11565)) (EmptyCell!3627) )
))
(declare-fun mapRest!13419 () (Array (_ BitVec 32) ValueCell!3627))

(declare-fun mapKey!13419 () (_ BitVec 32))

(declare-datatypes ((array!19429 0))(
  ( (array!19430 (arr!9205 (Array (_ BitVec 32) ValueCell!3627)) (size!9557 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19429)

(declare-fun mapValue!13419 () ValueCell!3627)

(assert (=> mapNonEmpty!13419 (= (arr!9205 _values!1208) (store mapRest!13419 mapKey!13419 mapValue!13419))))

(declare-fun b!355461 () Bool)

(declare-fun res!197290 () Bool)

(declare-fun e!217742 () Bool)

(assert (=> b!355461 (=> (not res!197290) (not e!217742))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19431 0))(
  ( (array!19432 (arr!9206 (Array (_ BitVec 32) (_ BitVec 64))) (size!9558 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19431)

(assert (=> b!355461 (= res!197290 (and (= (size!9557 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9558 _keys!1456) (size!9557 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355462 () Bool)

(declare-fun tp_is_empty!7941 () Bool)

(assert (=> b!355462 (= e!217744 tp_is_empty!7941)))

(declare-fun b!355463 () Bool)

(declare-fun e!217743 () Bool)

(declare-fun e!217741 () Bool)

(assert (=> b!355463 (= e!217743 (and e!217741 mapRes!13419))))

(declare-fun condMapEmpty!13419 () Bool)

(declare-fun mapDefault!13419 () ValueCell!3627)

(assert (=> b!355463 (= condMapEmpty!13419 (= (arr!9205 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3627)) mapDefault!13419)))))

(declare-fun b!355464 () Bool)

(assert (=> b!355464 (= e!217741 tp_is_empty!7941)))

(declare-fun b!355465 () Bool)

(declare-fun res!197289 () Bool)

(assert (=> b!355465 (=> (not res!197289) (not e!217742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19431 (_ BitVec 32)) Bool)

(assert (=> b!355465 (= res!197289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13419 () Bool)

(assert (=> mapIsEmpty!13419 mapRes!13419))

(declare-fun b!355466 () Bool)

(assert (=> b!355466 (= e!217742 false)))

(declare-fun lt!165787 () Bool)

(declare-datatypes ((List!5362 0))(
  ( (Nil!5359) (Cons!5358 (h!6214 (_ BitVec 64)) (t!10520 List!5362)) )
))
(declare-fun arrayNoDuplicates!0 (array!19431 (_ BitVec 32) List!5362) Bool)

(assert (=> b!355466 (= lt!165787 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5359))))

(declare-fun res!197288 () Bool)

(assert (=> start!35496 (=> (not res!197288) (not e!217742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35496 (= res!197288 (validMask!0 mask!1842))))

(assert (=> start!35496 e!217742))

(assert (=> start!35496 true))

(declare-fun array_inv!6776 (array!19429) Bool)

(assert (=> start!35496 (and (array_inv!6776 _values!1208) e!217743)))

(declare-fun array_inv!6777 (array!19431) Bool)

(assert (=> start!35496 (array_inv!6777 _keys!1456)))

(assert (= (and start!35496 res!197288) b!355461))

(assert (= (and b!355461 res!197290) b!355465))

(assert (= (and b!355465 res!197289) b!355466))

(assert (= (and b!355463 condMapEmpty!13419) mapIsEmpty!13419))

(assert (= (and b!355463 (not condMapEmpty!13419)) mapNonEmpty!13419))

(get-info :version)

(assert (= (and mapNonEmpty!13419 ((_ is ValueCellFull!3627) mapValue!13419)) b!355462))

(assert (= (and b!355463 ((_ is ValueCellFull!3627) mapDefault!13419)) b!355464))

(assert (= start!35496 b!355463))

(declare-fun m!354165 () Bool)

(assert (=> mapNonEmpty!13419 m!354165))

(declare-fun m!354167 () Bool)

(assert (=> b!355465 m!354167))

(declare-fun m!354169 () Bool)

(assert (=> b!355466 m!354169))

(declare-fun m!354171 () Bool)

(assert (=> start!35496 m!354171))

(declare-fun m!354173 () Bool)

(assert (=> start!35496 m!354173))

(declare-fun m!354175 () Bool)

(assert (=> start!35496 m!354175))

(check-sat (not mapNonEmpty!13419) (not b!355465) (not start!35496) (not b!355466) tp_is_empty!7941)
(check-sat)
