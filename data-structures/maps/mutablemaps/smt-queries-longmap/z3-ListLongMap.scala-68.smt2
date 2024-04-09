; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!942 () Bool)

(assert start!942)

(declare-fun b_free!315 () Bool)

(declare-fun b_next!315 () Bool)

(assert (=> start!942 (= b_free!315 (not b_next!315))))

(declare-fun tp!1178 () Bool)

(declare-fun b_and!463 () Bool)

(assert (=> start!942 (= tp!1178 b_and!463)))

(declare-fun b!7953 () Bool)

(declare-fun e!4498 () Bool)

(declare-fun tp_is_empty!393 () Bool)

(assert (=> b!7953 (= e!4498 tp_is_empty!393)))

(declare-fun mapIsEmpty!563 () Bool)

(declare-fun mapRes!563 () Bool)

(assert (=> mapIsEmpty!563 mapRes!563))

(declare-fun b!7954 () Bool)

(declare-fun res!7700 () Bool)

(declare-fun e!4502 () Bool)

(assert (=> b!7954 (=> (not res!7700) (not e!4502))))

(declare-datatypes ((array!711 0))(
  ( (array!712 (arr!343 (Array (_ BitVec 32) (_ BitVec 64))) (size!405 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!711)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!711 (_ BitVec 32)) Bool)

(assert (=> b!7954 (= res!7700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!7702 () Bool)

(assert (=> start!942 (=> (not res!7702) (not e!4502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!942 (= res!7702 (validMask!0 mask!2250))))

(assert (=> start!942 e!4502))

(assert (=> start!942 tp!1178))

(assert (=> start!942 true))

(declare-datatypes ((V!701 0))(
  ( (V!702 (val!202 Int)) )
))
(declare-datatypes ((ValueCell!180 0))(
  ( (ValueCellFull!180 (v!1294 V!701)) (EmptyCell!180) )
))
(declare-datatypes ((array!713 0))(
  ( (array!714 (arr!344 (Array (_ BitVec 32) ValueCell!180)) (size!406 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!713)

(declare-fun e!4501 () Bool)

(declare-fun array_inv!255 (array!713) Bool)

(assert (=> start!942 (and (array_inv!255 _values!1492) e!4501)))

(assert (=> start!942 tp_is_empty!393))

(declare-fun array_inv!256 (array!711) Bool)

(assert (=> start!942 (array_inv!256 _keys!1806)))

(declare-fun mapNonEmpty!563 () Bool)

(declare-fun tp!1177 () Bool)

(assert (=> mapNonEmpty!563 (= mapRes!563 (and tp!1177 e!4498))))

(declare-fun mapRest!563 () (Array (_ BitVec 32) ValueCell!180))

(declare-fun mapKey!563 () (_ BitVec 32))

(declare-fun mapValue!563 () ValueCell!180)

(assert (=> mapNonEmpty!563 (= (arr!344 _values!1492) (store mapRest!563 mapKey!563 mapValue!563))))

(declare-fun b!7955 () Bool)

(declare-fun res!7701 () Bool)

(assert (=> b!7955 (=> (not res!7701) (not e!4502))))

(declare-datatypes ((List!234 0))(
  ( (Nil!231) (Cons!230 (h!796 (_ BitVec 64)) (t!2371 List!234)) )
))
(declare-fun arrayNoDuplicates!0 (array!711 (_ BitVec 32) List!234) Bool)

(assert (=> b!7955 (= res!7701 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!231))))

(declare-fun b!7956 () Bool)

(declare-fun res!7699 () Bool)

(assert (=> b!7956 (=> (not res!7699) (not e!4502))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7956 (= res!7699 (and (= (size!406 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!405 _keys!1806) (size!406 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7957 () Bool)

(declare-fun e!4500 () Bool)

(assert (=> b!7957 (= e!4501 (and e!4500 mapRes!563))))

(declare-fun condMapEmpty!563 () Bool)

(declare-fun mapDefault!563 () ValueCell!180)

(assert (=> b!7957 (= condMapEmpty!563 (= (arr!344 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!180)) mapDefault!563)))))

(declare-fun b!7958 () Bool)

(assert (=> b!7958 (= e!4502 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!701)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!701)

(declare-fun lt!1611 () Bool)

(declare-datatypes ((tuple2!212 0))(
  ( (tuple2!213 (_1!106 (_ BitVec 64)) (_2!106 V!701)) )
))
(declare-datatypes ((List!235 0))(
  ( (Nil!232) (Cons!231 (h!797 tuple2!212) (t!2372 List!235)) )
))
(declare-datatypes ((ListLongMap!217 0))(
  ( (ListLongMap!218 (toList!124 List!235)) )
))
(declare-fun contains!99 (ListLongMap!217 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!83 (array!711 array!713 (_ BitVec 32) (_ BitVec 32) V!701 V!701 (_ BitVec 32) Int) ListLongMap!217)

(assert (=> b!7958 (= lt!1611 (contains!99 (getCurrentListMap!83 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!7959 () Bool)

(assert (=> b!7959 (= e!4500 tp_is_empty!393)))

(assert (= (and start!942 res!7702) b!7956))

(assert (= (and b!7956 res!7699) b!7954))

(assert (= (and b!7954 res!7700) b!7955))

(assert (= (and b!7955 res!7701) b!7958))

(assert (= (and b!7957 condMapEmpty!563) mapIsEmpty!563))

(assert (= (and b!7957 (not condMapEmpty!563)) mapNonEmpty!563))

(get-info :version)

(assert (= (and mapNonEmpty!563 ((_ is ValueCellFull!180) mapValue!563)) b!7953))

(assert (= (and b!7957 ((_ is ValueCellFull!180) mapDefault!563)) b!7959))

(assert (= start!942 b!7957))

(declare-fun m!4869 () Bool)

(assert (=> b!7958 m!4869))

(assert (=> b!7958 m!4869))

(declare-fun m!4871 () Bool)

(assert (=> b!7958 m!4871))

(declare-fun m!4873 () Bool)

(assert (=> start!942 m!4873))

(declare-fun m!4875 () Bool)

(assert (=> start!942 m!4875))

(declare-fun m!4877 () Bool)

(assert (=> start!942 m!4877))

(declare-fun m!4879 () Bool)

(assert (=> b!7954 m!4879))

(declare-fun m!4881 () Bool)

(assert (=> b!7955 m!4881))

(declare-fun m!4883 () Bool)

(assert (=> mapNonEmpty!563 m!4883))

(check-sat (not b!7954) b_and!463 (not mapNonEmpty!563) (not b!7955) (not b_next!315) (not start!942) tp_is_empty!393 (not b!7958))
(check-sat b_and!463 (not b_next!315))
