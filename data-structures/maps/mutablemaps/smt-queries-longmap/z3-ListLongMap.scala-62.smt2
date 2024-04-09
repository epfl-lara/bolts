; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!906 () Bool)

(assert start!906)

(declare-fun b_free!279 () Bool)

(declare-fun b_next!279 () Bool)

(assert (=> start!906 (= b_free!279 (not b_next!279))))

(declare-fun tp!1069 () Bool)

(declare-fun b_and!427 () Bool)

(assert (=> start!906 (= tp!1069 b_and!427)))

(declare-fun b!7575 () Bool)

(declare-fun e!4230 () Bool)

(declare-fun tp_is_empty!357 () Bool)

(assert (=> b!7575 (= e!4230 tp_is_empty!357)))

(declare-fun b!7576 () Bool)

(declare-fun e!4229 () Bool)

(declare-fun e!4231 () Bool)

(declare-fun mapRes!509 () Bool)

(assert (=> b!7576 (= e!4229 (and e!4231 mapRes!509))))

(declare-fun condMapEmpty!509 () Bool)

(declare-datatypes ((V!653 0))(
  ( (V!654 (val!184 Int)) )
))
(declare-datatypes ((ValueCell!162 0))(
  ( (ValueCellFull!162 (v!1276 V!653)) (EmptyCell!162) )
))
(declare-datatypes ((array!649 0))(
  ( (array!650 (arr!312 (Array (_ BitVec 32) ValueCell!162)) (size!374 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!649)

(declare-fun mapDefault!509 () ValueCell!162)

(assert (=> b!7576 (= condMapEmpty!509 (= (arr!312 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!162)) mapDefault!509)))))

(declare-fun mapNonEmpty!509 () Bool)

(declare-fun tp!1070 () Bool)

(assert (=> mapNonEmpty!509 (= mapRes!509 (and tp!1070 e!4230))))

(declare-fun mapKey!509 () (_ BitVec 32))

(declare-fun mapRest!509 () (Array (_ BitVec 32) ValueCell!162))

(declare-fun mapValue!509 () ValueCell!162)

(assert (=> mapNonEmpty!509 (= (arr!312 _values!1492) (store mapRest!509 mapKey!509 mapValue!509))))

(declare-fun b!7577 () Bool)

(declare-fun res!7486 () Bool)

(declare-fun e!4228 () Bool)

(assert (=> b!7577 (=> (not res!7486) (not e!4228))))

(declare-datatypes ((array!651 0))(
  ( (array!652 (arr!313 (Array (_ BitVec 32) (_ BitVec 64))) (size!375 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!651)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!651 (_ BitVec 32)) Bool)

(assert (=> b!7577 (= res!7486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7578 () Bool)

(declare-fun res!7484 () Bool)

(assert (=> b!7578 (=> (not res!7484) (not e!4228))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7578 (= res!7484 (and (= (size!374 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!375 _keys!1806) (size!374 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7579 () Bool)

(assert (=> b!7579 (= e!4231 tp_is_empty!357)))

(declare-fun b!7580 () Bool)

(assert (=> b!7580 (= e!4228 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!1557 () Bool)

(declare-fun minValue!1434 () V!653)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!653)

(declare-datatypes ((tuple2!194 0))(
  ( (tuple2!195 (_1!97 (_ BitVec 64)) (_2!97 V!653)) )
))
(declare-datatypes ((List!214 0))(
  ( (Nil!211) (Cons!210 (h!776 tuple2!194) (t!2351 List!214)) )
))
(declare-datatypes ((ListLongMap!199 0))(
  ( (ListLongMap!200 (toList!115 List!214)) )
))
(declare-fun contains!90 (ListLongMap!199 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!74 (array!651 array!649 (_ BitVec 32) (_ BitVec 32) V!653 V!653 (_ BitVec 32) Int) ListLongMap!199)

(assert (=> b!7580 (= lt!1557 (contains!90 (getCurrentListMap!74 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun res!7485 () Bool)

(assert (=> start!906 (=> (not res!7485) (not e!4228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!906 (= res!7485 (validMask!0 mask!2250))))

(assert (=> start!906 e!4228))

(assert (=> start!906 tp!1069))

(assert (=> start!906 true))

(declare-fun array_inv!235 (array!649) Bool)

(assert (=> start!906 (and (array_inv!235 _values!1492) e!4229)))

(assert (=> start!906 tp_is_empty!357))

(declare-fun array_inv!236 (array!651) Bool)

(assert (=> start!906 (array_inv!236 _keys!1806)))

(declare-fun mapIsEmpty!509 () Bool)

(assert (=> mapIsEmpty!509 mapRes!509))

(declare-fun b!7581 () Bool)

(declare-fun res!7483 () Bool)

(assert (=> b!7581 (=> (not res!7483) (not e!4228))))

(declare-datatypes ((List!215 0))(
  ( (Nil!212) (Cons!211 (h!777 (_ BitVec 64)) (t!2352 List!215)) )
))
(declare-fun arrayNoDuplicates!0 (array!651 (_ BitVec 32) List!215) Bool)

(assert (=> b!7581 (= res!7483 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!212))))

(assert (= (and start!906 res!7485) b!7578))

(assert (= (and b!7578 res!7484) b!7577))

(assert (= (and b!7577 res!7486) b!7581))

(assert (= (and b!7581 res!7483) b!7580))

(assert (= (and b!7576 condMapEmpty!509) mapIsEmpty!509))

(assert (= (and b!7576 (not condMapEmpty!509)) mapNonEmpty!509))

(get-info :version)

(assert (= (and mapNonEmpty!509 ((_ is ValueCellFull!162) mapValue!509)) b!7575))

(assert (= (and b!7576 ((_ is ValueCellFull!162) mapDefault!509)) b!7579))

(assert (= start!906 b!7576))

(declare-fun m!4581 () Bool)

(assert (=> b!7581 m!4581))

(declare-fun m!4583 () Bool)

(assert (=> start!906 m!4583))

(declare-fun m!4585 () Bool)

(assert (=> start!906 m!4585))

(declare-fun m!4587 () Bool)

(assert (=> start!906 m!4587))

(declare-fun m!4589 () Bool)

(assert (=> mapNonEmpty!509 m!4589))

(declare-fun m!4591 () Bool)

(assert (=> b!7580 m!4591))

(assert (=> b!7580 m!4591))

(declare-fun m!4593 () Bool)

(assert (=> b!7580 m!4593))

(declare-fun m!4595 () Bool)

(assert (=> b!7577 m!4595))

(check-sat (not b!7577) (not b_next!279) tp_is_empty!357 (not start!906) (not mapNonEmpty!509) b_and!427 (not b!7580) (not b!7581))
(check-sat b_and!427 (not b_next!279))
