; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!894 () Bool)

(assert start!894)

(declare-fun b_free!267 () Bool)

(declare-fun b_next!267 () Bool)

(assert (=> start!894 (= b_free!267 (not b_next!267))))

(declare-fun tp!1033 () Bool)

(declare-fun b_and!415 () Bool)

(assert (=> start!894 (= tp!1033 b_and!415)))

(declare-fun mapIsEmpty!491 () Bool)

(declare-fun mapRes!491 () Bool)

(assert (=> mapIsEmpty!491 mapRes!491))

(declare-fun mapNonEmpty!491 () Bool)

(declare-fun tp!1034 () Bool)

(declare-fun e!4140 () Bool)

(assert (=> mapNonEmpty!491 (= mapRes!491 (and tp!1034 e!4140))))

(declare-datatypes ((V!637 0))(
  ( (V!638 (val!178 Int)) )
))
(declare-datatypes ((ValueCell!156 0))(
  ( (ValueCellFull!156 (v!1270 V!637)) (EmptyCell!156) )
))
(declare-fun mapValue!491 () ValueCell!156)

(declare-datatypes ((array!625 0))(
  ( (array!626 (arr!300 (Array (_ BitVec 32) ValueCell!156)) (size!362 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!625)

(declare-fun mapRest!491 () (Array (_ BitVec 32) ValueCell!156))

(declare-fun mapKey!491 () (_ BitVec 32))

(assert (=> mapNonEmpty!491 (= (arr!300 _values!1492) (store mapRest!491 mapKey!491 mapValue!491))))

(declare-fun b!7449 () Bool)

(declare-fun tp_is_empty!345 () Bool)

(assert (=> b!7449 (= e!4140 tp_is_empty!345)))

(declare-fun res!7412 () Bool)

(declare-fun e!4141 () Bool)

(assert (=> start!894 (=> (not res!7412) (not e!4141))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!894 (= res!7412 (validMask!0 mask!2250))))

(assert (=> start!894 e!4141))

(assert (=> start!894 tp!1033))

(assert (=> start!894 true))

(declare-fun e!4138 () Bool)

(declare-fun array_inv!223 (array!625) Bool)

(assert (=> start!894 (and (array_inv!223 _values!1492) e!4138)))

(assert (=> start!894 tp_is_empty!345))

(declare-datatypes ((array!627 0))(
  ( (array!628 (arr!301 (Array (_ BitVec 32) (_ BitVec 64))) (size!363 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!627)

(declare-fun array_inv!224 (array!627) Bool)

(assert (=> start!894 (array_inv!224 _keys!1806)))

(declare-fun b!7450 () Bool)

(declare-fun e!4139 () Bool)

(assert (=> b!7450 (= e!4138 (and e!4139 mapRes!491))))

(declare-fun condMapEmpty!491 () Bool)

(declare-fun mapDefault!491 () ValueCell!156)

(assert (=> b!7450 (= condMapEmpty!491 (= (arr!300 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!156)) mapDefault!491)))))

(declare-fun b!7451 () Bool)

(declare-fun res!7413 () Bool)

(assert (=> b!7451 (=> (not res!7413) (not e!4141))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7451 (= res!7413 (and (= (size!362 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!363 _keys!1806) (size!362 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7452 () Bool)

(declare-fun res!7414 () Bool)

(assert (=> b!7452 (=> (not res!7414) (not e!4141))))

(declare-datatypes ((List!203 0))(
  ( (Nil!200) (Cons!199 (h!765 (_ BitVec 64)) (t!2340 List!203)) )
))
(declare-fun arrayNoDuplicates!0 (array!627 (_ BitVec 32) List!203) Bool)

(assert (=> b!7452 (= res!7414 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!200))))

(declare-fun b!7453 () Bool)

(assert (=> b!7453 (= e!4141 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!1539 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!637)

(declare-fun minValue!1434 () V!637)

(declare-datatypes ((tuple2!184 0))(
  ( (tuple2!185 (_1!92 (_ BitVec 64)) (_2!92 V!637)) )
))
(declare-datatypes ((List!204 0))(
  ( (Nil!201) (Cons!200 (h!766 tuple2!184) (t!2341 List!204)) )
))
(declare-datatypes ((ListLongMap!189 0))(
  ( (ListLongMap!190 (toList!110 List!204)) )
))
(declare-fun contains!85 (ListLongMap!189 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!69 (array!627 array!625 (_ BitVec 32) (_ BitVec 32) V!637 V!637 (_ BitVec 32) Int) ListLongMap!189)

(assert (=> b!7453 (= lt!1539 (contains!85 (getCurrentListMap!69 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!7454 () Bool)

(declare-fun res!7411 () Bool)

(assert (=> b!7454 (=> (not res!7411) (not e!4141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!627 (_ BitVec 32)) Bool)

(assert (=> b!7454 (= res!7411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7455 () Bool)

(assert (=> b!7455 (= e!4139 tp_is_empty!345)))

(assert (= (and start!894 res!7412) b!7451))

(assert (= (and b!7451 res!7413) b!7454))

(assert (= (and b!7454 res!7411) b!7452))

(assert (= (and b!7452 res!7414) b!7453))

(assert (= (and b!7450 condMapEmpty!491) mapIsEmpty!491))

(assert (= (and b!7450 (not condMapEmpty!491)) mapNonEmpty!491))

(get-info :version)

(assert (= (and mapNonEmpty!491 ((_ is ValueCellFull!156) mapValue!491)) b!7449))

(assert (= (and b!7450 ((_ is ValueCellFull!156) mapDefault!491)) b!7455))

(assert (= start!894 b!7450))

(declare-fun m!4485 () Bool)

(assert (=> start!894 m!4485))

(declare-fun m!4487 () Bool)

(assert (=> start!894 m!4487))

(declare-fun m!4489 () Bool)

(assert (=> start!894 m!4489))

(declare-fun m!4491 () Bool)

(assert (=> mapNonEmpty!491 m!4491))

(declare-fun m!4493 () Bool)

(assert (=> b!7453 m!4493))

(assert (=> b!7453 m!4493))

(declare-fun m!4495 () Bool)

(assert (=> b!7453 m!4495))

(declare-fun m!4497 () Bool)

(assert (=> b!7454 m!4497))

(declare-fun m!4499 () Bool)

(assert (=> b!7452 m!4499))

(check-sat b_and!415 (not b!7452) (not b!7454) (not mapNonEmpty!491) (not b_next!267) tp_is_empty!345 (not b!7453) (not start!894))
(check-sat b_and!415 (not b_next!267))
