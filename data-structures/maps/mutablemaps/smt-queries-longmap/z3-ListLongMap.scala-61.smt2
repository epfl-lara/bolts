; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!900 () Bool)

(assert start!900)

(declare-fun b_free!273 () Bool)

(declare-fun b_next!273 () Bool)

(assert (=> start!900 (= b_free!273 (not b_next!273))))

(declare-fun tp!1051 () Bool)

(declare-fun b_and!421 () Bool)

(assert (=> start!900 (= tp!1051 b_and!421)))

(declare-fun b!7512 () Bool)

(declare-fun e!4187 () Bool)

(assert (=> b!7512 (= e!4187 false)))

(declare-fun lt!1548 () Bool)

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!645 0))(
  ( (V!646 (val!181 Int)) )
))
(declare-datatypes ((ValueCell!159 0))(
  ( (ValueCellFull!159 (v!1273 V!645)) (EmptyCell!159) )
))
(declare-datatypes ((array!637 0))(
  ( (array!638 (arr!306 (Array (_ BitVec 32) ValueCell!159)) (size!368 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!637)

(declare-fun minValue!1434 () V!645)

(declare-datatypes ((array!639 0))(
  ( (array!640 (arr!307 (Array (_ BitVec 32) (_ BitVec 64))) (size!369 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!639)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!645)

(declare-datatypes ((tuple2!188 0))(
  ( (tuple2!189 (_1!94 (_ BitVec 64)) (_2!94 V!645)) )
))
(declare-datatypes ((List!208 0))(
  ( (Nil!205) (Cons!204 (h!770 tuple2!188) (t!2345 List!208)) )
))
(declare-datatypes ((ListLongMap!193 0))(
  ( (ListLongMap!194 (toList!112 List!208)) )
))
(declare-fun contains!87 (ListLongMap!193 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!71 (array!639 array!637 (_ BitVec 32) (_ BitVec 32) V!645 V!645 (_ BitVec 32) Int) ListLongMap!193)

(assert (=> b!7512 (= lt!1548 (contains!87 (getCurrentListMap!71 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapIsEmpty!500 () Bool)

(declare-fun mapRes!500 () Bool)

(assert (=> mapIsEmpty!500 mapRes!500))

(declare-fun b!7513 () Bool)

(declare-fun e!4185 () Bool)

(declare-fun e!4184 () Bool)

(assert (=> b!7513 (= e!4185 (and e!4184 mapRes!500))))

(declare-fun condMapEmpty!500 () Bool)

(declare-fun mapDefault!500 () ValueCell!159)

(assert (=> b!7513 (= condMapEmpty!500 (= (arr!306 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!159)) mapDefault!500)))))

(declare-fun b!7514 () Bool)

(declare-fun res!7450 () Bool)

(assert (=> b!7514 (=> (not res!7450) (not e!4187))))

(declare-datatypes ((List!209 0))(
  ( (Nil!206) (Cons!205 (h!771 (_ BitVec 64)) (t!2346 List!209)) )
))
(declare-fun arrayNoDuplicates!0 (array!639 (_ BitVec 32) List!209) Bool)

(assert (=> b!7514 (= res!7450 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!206))))

(declare-fun b!7515 () Bool)

(declare-fun res!7448 () Bool)

(assert (=> b!7515 (=> (not res!7448) (not e!4187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!639 (_ BitVec 32)) Bool)

(assert (=> b!7515 (= res!7448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!7447 () Bool)

(assert (=> start!900 (=> (not res!7447) (not e!4187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!900 (= res!7447 (validMask!0 mask!2250))))

(assert (=> start!900 e!4187))

(assert (=> start!900 tp!1051))

(assert (=> start!900 true))

(declare-fun array_inv!229 (array!637) Bool)

(assert (=> start!900 (and (array_inv!229 _values!1492) e!4185)))

(declare-fun tp_is_empty!351 () Bool)

(assert (=> start!900 tp_is_empty!351))

(declare-fun array_inv!230 (array!639) Bool)

(assert (=> start!900 (array_inv!230 _keys!1806)))

(declare-fun b!7516 () Bool)

(declare-fun res!7449 () Bool)

(assert (=> b!7516 (=> (not res!7449) (not e!4187))))

(assert (=> b!7516 (= res!7449 (and (= (size!368 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!369 _keys!1806) (size!368 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7517 () Bool)

(declare-fun e!4183 () Bool)

(assert (=> b!7517 (= e!4183 tp_is_empty!351)))

(declare-fun b!7518 () Bool)

(assert (=> b!7518 (= e!4184 tp_is_empty!351)))

(declare-fun mapNonEmpty!500 () Bool)

(declare-fun tp!1052 () Bool)

(assert (=> mapNonEmpty!500 (= mapRes!500 (and tp!1052 e!4183))))

(declare-fun mapRest!500 () (Array (_ BitVec 32) ValueCell!159))

(declare-fun mapKey!500 () (_ BitVec 32))

(declare-fun mapValue!500 () ValueCell!159)

(assert (=> mapNonEmpty!500 (= (arr!306 _values!1492) (store mapRest!500 mapKey!500 mapValue!500))))

(assert (= (and start!900 res!7447) b!7516))

(assert (= (and b!7516 res!7449) b!7515))

(assert (= (and b!7515 res!7448) b!7514))

(assert (= (and b!7514 res!7450) b!7512))

(assert (= (and b!7513 condMapEmpty!500) mapIsEmpty!500))

(assert (= (and b!7513 (not condMapEmpty!500)) mapNonEmpty!500))

(get-info :version)

(assert (= (and mapNonEmpty!500 ((_ is ValueCellFull!159) mapValue!500)) b!7517))

(assert (= (and b!7513 ((_ is ValueCellFull!159) mapDefault!500)) b!7518))

(assert (= start!900 b!7513))

(declare-fun m!4533 () Bool)

(assert (=> mapNonEmpty!500 m!4533))

(declare-fun m!4535 () Bool)

(assert (=> start!900 m!4535))

(declare-fun m!4537 () Bool)

(assert (=> start!900 m!4537))

(declare-fun m!4539 () Bool)

(assert (=> start!900 m!4539))

(declare-fun m!4541 () Bool)

(assert (=> b!7512 m!4541))

(assert (=> b!7512 m!4541))

(declare-fun m!4543 () Bool)

(assert (=> b!7512 m!4543))

(declare-fun m!4545 () Bool)

(assert (=> b!7514 m!4545))

(declare-fun m!4547 () Bool)

(assert (=> b!7515 m!4547))

(check-sat (not b_next!273) (not b!7512) tp_is_empty!351 (not b!7515) b_and!421 (not start!900) (not mapNonEmpty!500) (not b!7514))
(check-sat b_and!421 (not b_next!273))
