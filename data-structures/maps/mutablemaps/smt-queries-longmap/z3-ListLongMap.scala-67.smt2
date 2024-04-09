; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!936 () Bool)

(assert start!936)

(declare-fun b_free!309 () Bool)

(declare-fun b_next!309 () Bool)

(assert (=> start!936 (= b_free!309 (not b_next!309))))

(declare-fun tp!1159 () Bool)

(declare-fun b_and!457 () Bool)

(assert (=> start!936 (= tp!1159 b_and!457)))

(declare-fun b!7890 () Bool)

(declare-fun e!4454 () Bool)

(declare-fun e!4457 () Bool)

(declare-fun mapRes!554 () Bool)

(assert (=> b!7890 (= e!4454 (and e!4457 mapRes!554))))

(declare-fun condMapEmpty!554 () Bool)

(declare-datatypes ((V!693 0))(
  ( (V!694 (val!199 Int)) )
))
(declare-datatypes ((ValueCell!177 0))(
  ( (ValueCellFull!177 (v!1291 V!693)) (EmptyCell!177) )
))
(declare-datatypes ((array!699 0))(
  ( (array!700 (arr!337 (Array (_ BitVec 32) ValueCell!177)) (size!399 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!699)

(declare-fun mapDefault!554 () ValueCell!177)

(assert (=> b!7890 (= condMapEmpty!554 (= (arr!337 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!177)) mapDefault!554)))))

(declare-fun b!7891 () Bool)

(declare-fun res!7665 () Bool)

(declare-fun e!4453 () Bool)

(assert (=> b!7891 (=> (not res!7665) (not e!4453))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-datatypes ((array!701 0))(
  ( (array!702 (arr!338 (Array (_ BitVec 32) (_ BitVec 64))) (size!400 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!701)

(assert (=> b!7891 (= res!7665 (and (= (size!399 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!400 _keys!1806) (size!399 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7892 () Bool)

(declare-fun res!7666 () Bool)

(assert (=> b!7892 (=> (not res!7666) (not e!4453))))

(declare-datatypes ((List!229 0))(
  ( (Nil!226) (Cons!225 (h!791 (_ BitVec 64)) (t!2366 List!229)) )
))
(declare-fun arrayNoDuplicates!0 (array!701 (_ BitVec 32) List!229) Bool)

(assert (=> b!7892 (= res!7666 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!226))))

(declare-fun b!7893 () Bool)

(declare-fun res!7664 () Bool)

(assert (=> b!7893 (=> (not res!7664) (not e!4453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!701 (_ BitVec 32)) Bool)

(assert (=> b!7893 (= res!7664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7894 () Bool)

(assert (=> b!7894 (= e!4453 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun lt!1602 () Bool)

(declare-fun minValue!1434 () V!693)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!693)

(declare-datatypes ((tuple2!208 0))(
  ( (tuple2!209 (_1!104 (_ BitVec 64)) (_2!104 V!693)) )
))
(declare-datatypes ((List!230 0))(
  ( (Nil!227) (Cons!226 (h!792 tuple2!208) (t!2367 List!230)) )
))
(declare-datatypes ((ListLongMap!213 0))(
  ( (ListLongMap!214 (toList!122 List!230)) )
))
(declare-fun contains!97 (ListLongMap!213 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!81 (array!701 array!699 (_ BitVec 32) (_ BitVec 32) V!693 V!693 (_ BitVec 32) Int) ListLongMap!213)

(assert (=> b!7894 (= lt!1602 (contains!97 (getCurrentListMap!81 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!7895 () Bool)

(declare-fun tp_is_empty!387 () Bool)

(assert (=> b!7895 (= e!4457 tp_is_empty!387)))

(declare-fun res!7663 () Bool)

(assert (=> start!936 (=> (not res!7663) (not e!4453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!936 (= res!7663 (validMask!0 mask!2250))))

(assert (=> start!936 e!4453))

(assert (=> start!936 tp!1159))

(assert (=> start!936 true))

(declare-fun array_inv!249 (array!699) Bool)

(assert (=> start!936 (and (array_inv!249 _values!1492) e!4454)))

(assert (=> start!936 tp_is_empty!387))

(declare-fun array_inv!250 (array!701) Bool)

(assert (=> start!936 (array_inv!250 _keys!1806)))

(declare-fun mapNonEmpty!554 () Bool)

(declare-fun tp!1160 () Bool)

(declare-fun e!4455 () Bool)

(assert (=> mapNonEmpty!554 (= mapRes!554 (and tp!1160 e!4455))))

(declare-fun mapRest!554 () (Array (_ BitVec 32) ValueCell!177))

(declare-fun mapValue!554 () ValueCell!177)

(declare-fun mapKey!554 () (_ BitVec 32))

(assert (=> mapNonEmpty!554 (= (arr!337 _values!1492) (store mapRest!554 mapKey!554 mapValue!554))))

(declare-fun mapIsEmpty!554 () Bool)

(assert (=> mapIsEmpty!554 mapRes!554))

(declare-fun b!7896 () Bool)

(assert (=> b!7896 (= e!4455 tp_is_empty!387)))

(assert (= (and start!936 res!7663) b!7891))

(assert (= (and b!7891 res!7665) b!7893))

(assert (= (and b!7893 res!7664) b!7892))

(assert (= (and b!7892 res!7666) b!7894))

(assert (= (and b!7890 condMapEmpty!554) mapIsEmpty!554))

(assert (= (and b!7890 (not condMapEmpty!554)) mapNonEmpty!554))

(get-info :version)

(assert (= (and mapNonEmpty!554 ((_ is ValueCellFull!177) mapValue!554)) b!7896))

(assert (= (and b!7890 ((_ is ValueCellFull!177) mapDefault!554)) b!7895))

(assert (= start!936 b!7890))

(declare-fun m!4821 () Bool)

(assert (=> b!7892 m!4821))

(declare-fun m!4823 () Bool)

(assert (=> b!7893 m!4823))

(declare-fun m!4825 () Bool)

(assert (=> b!7894 m!4825))

(assert (=> b!7894 m!4825))

(declare-fun m!4827 () Bool)

(assert (=> b!7894 m!4827))

(declare-fun m!4829 () Bool)

(assert (=> start!936 m!4829))

(declare-fun m!4831 () Bool)

(assert (=> start!936 m!4831))

(declare-fun m!4833 () Bool)

(assert (=> start!936 m!4833))

(declare-fun m!4835 () Bool)

(assert (=> mapNonEmpty!554 m!4835))

(check-sat tp_is_empty!387 (not b!7892) (not b!7894) (not b!7893) b_and!457 (not start!936) (not mapNonEmpty!554) (not b_next!309))
(check-sat b_and!457 (not b_next!309))
