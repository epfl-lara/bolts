; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4170 () Bool)

(assert start!4170)

(declare-fun b_free!1077 () Bool)

(declare-fun b_next!1077 () Bool)

(assert (=> start!4170 (= b_free!1077 (not b_next!1077))))

(declare-fun tp!4651 () Bool)

(declare-fun b_and!1889 () Bool)

(assert (=> start!4170 (= tp!4651 b_and!1889)))

(declare-fun b!31556 () Bool)

(declare-fun res!19100 () Bool)

(declare-fun e!20159 () Bool)

(assert (=> b!31556 (=> (not res!19100) (not e!20159))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-datatypes ((V!1733 0))(
  ( (V!1734 (val!742 Int)) )
))
(declare-datatypes ((ValueCell!516 0))(
  ( (ValueCellFull!516 (v!1831 V!1733)) (EmptyCell!516) )
))
(declare-datatypes ((array!2069 0))(
  ( (array!2070 (arr!988 (Array (_ BitVec 32) ValueCell!516)) (size!1089 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2069)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2071 0))(
  ( (array!2072 (arr!989 (Array (_ BitVec 32) (_ BitVec 64))) (size!1090 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2071)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1733)

(declare-fun minValue!1443 () V!1733)

(declare-datatypes ((tuple2!1206 0))(
  ( (tuple2!1207 (_1!613 (_ BitVec 64)) (_2!613 V!1733)) )
))
(declare-datatypes ((List!808 0))(
  ( (Nil!805) (Cons!804 (h!1371 tuple2!1206) (t!3503 List!808)) )
))
(declare-datatypes ((ListLongMap!787 0))(
  ( (ListLongMap!788 (toList!409 List!808)) )
))
(declare-fun contains!346 (ListLongMap!787 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!234 (array!2071 array!2069 (_ BitVec 32) (_ BitVec 32) V!1733 V!1733 (_ BitVec 32) Int) ListLongMap!787)

(assert (=> b!31556 (= res!19100 (not (contains!346 (getCurrentListMap!234 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun mapNonEmpty!1675 () Bool)

(declare-fun mapRes!1675 () Bool)

(declare-fun tp!4650 () Bool)

(declare-fun e!20157 () Bool)

(assert (=> mapNonEmpty!1675 (= mapRes!1675 (and tp!4650 e!20157))))

(declare-fun mapKey!1675 () (_ BitVec 32))

(declare-fun mapRest!1675 () (Array (_ BitVec 32) ValueCell!516))

(declare-fun mapValue!1675 () ValueCell!516)

(assert (=> mapNonEmpty!1675 (= (arr!988 _values!1501) (store mapRest!1675 mapKey!1675 mapValue!1675))))

(declare-fun res!19105 () Bool)

(assert (=> start!4170 (=> (not res!19105) (not e!20159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4170 (= res!19105 (validMask!0 mask!2294))))

(assert (=> start!4170 e!20159))

(assert (=> start!4170 true))

(assert (=> start!4170 tp!4651))

(declare-fun e!20160 () Bool)

(declare-fun array_inv!663 (array!2069) Bool)

(assert (=> start!4170 (and (array_inv!663 _values!1501) e!20160)))

(declare-fun array_inv!664 (array!2071) Bool)

(assert (=> start!4170 (array_inv!664 _keys!1833)))

(declare-fun tp_is_empty!1431 () Bool)

(assert (=> start!4170 tp_is_empty!1431))

(declare-fun b!31557 () Bool)

(declare-fun res!19101 () Bool)

(assert (=> b!31557 (=> (not res!19101) (not e!20159))))

(declare-datatypes ((List!809 0))(
  ( (Nil!806) (Cons!805 (h!1372 (_ BitVec 64)) (t!3504 List!809)) )
))
(declare-fun arrayNoDuplicates!0 (array!2071 (_ BitVec 32) List!809) Bool)

(assert (=> b!31557 (= res!19101 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!806))))

(declare-fun mapIsEmpty!1675 () Bool)

(assert (=> mapIsEmpty!1675 mapRes!1675))

(declare-fun b!31558 () Bool)

(assert (=> b!31558 (= e!20157 tp_is_empty!1431)))

(declare-fun b!31559 () Bool)

(declare-fun res!19102 () Bool)

(assert (=> b!31559 (=> (not res!19102) (not e!20159))))

(declare-fun arrayContainsKey!0 (array!2071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31559 (= res!19102 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!31560 () Bool)

(declare-fun e!20158 () Bool)

(assert (=> b!31560 (= e!20160 (and e!20158 mapRes!1675))))

(declare-fun condMapEmpty!1675 () Bool)

(declare-fun mapDefault!1675 () ValueCell!516)

(assert (=> b!31560 (= condMapEmpty!1675 (= (arr!988 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!516)) mapDefault!1675)))))

(declare-fun b!31561 () Bool)

(declare-fun res!19104 () Bool)

(assert (=> b!31561 (=> (not res!19104) (not e!20159))))

(assert (=> b!31561 (= res!19104 (and (= (size!1089 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1090 _keys!1833) (size!1089 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31562 () Bool)

(declare-fun res!19103 () Bool)

(assert (=> b!31562 (=> (not res!19103) (not e!20159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2071 (_ BitVec 32)) Bool)

(assert (=> b!31562 (= res!19103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31563 () Bool)

(assert (=> b!31563 (= e!20158 tp_is_empty!1431)))

(declare-fun b!31564 () Bool)

(assert (=> b!31564 (= e!20159 false)))

(declare-fun lt!11586 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2071 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31564 (= lt!11586 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!31565 () Bool)

(declare-fun res!19099 () Bool)

(assert (=> b!31565 (=> (not res!19099) (not e!20159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31565 (= res!19099 (validKeyInArray!0 k0!1304))))

(assert (= (and start!4170 res!19105) b!31561))

(assert (= (and b!31561 res!19104) b!31562))

(assert (= (and b!31562 res!19103) b!31557))

(assert (= (and b!31557 res!19101) b!31565))

(assert (= (and b!31565 res!19099) b!31556))

(assert (= (and b!31556 res!19100) b!31559))

(assert (= (and b!31559 res!19102) b!31564))

(assert (= (and b!31560 condMapEmpty!1675) mapIsEmpty!1675))

(assert (= (and b!31560 (not condMapEmpty!1675)) mapNonEmpty!1675))

(get-info :version)

(assert (= (and mapNonEmpty!1675 ((_ is ValueCellFull!516) mapValue!1675)) b!31558))

(assert (= (and b!31560 ((_ is ValueCellFull!516) mapDefault!1675)) b!31563))

(assert (= start!4170 b!31560))

(declare-fun m!25315 () Bool)

(assert (=> b!31565 m!25315))

(declare-fun m!25317 () Bool)

(assert (=> b!31562 m!25317))

(declare-fun m!25319 () Bool)

(assert (=> mapNonEmpty!1675 m!25319))

(declare-fun m!25321 () Bool)

(assert (=> b!31557 m!25321))

(declare-fun m!25323 () Bool)

(assert (=> b!31556 m!25323))

(assert (=> b!31556 m!25323))

(declare-fun m!25325 () Bool)

(assert (=> b!31556 m!25325))

(declare-fun m!25327 () Bool)

(assert (=> start!4170 m!25327))

(declare-fun m!25329 () Bool)

(assert (=> start!4170 m!25329))

(declare-fun m!25331 () Bool)

(assert (=> start!4170 m!25331))

(declare-fun m!25333 () Bool)

(assert (=> b!31559 m!25333))

(declare-fun m!25335 () Bool)

(assert (=> b!31564 m!25335))

(check-sat (not mapNonEmpty!1675) (not b_next!1077) (not b!31562) (not b!31556) (not b!31565) (not start!4170) b_and!1889 (not b!31557) (not b!31564) tp_is_empty!1431 (not b!31559))
(check-sat b_and!1889 (not b_next!1077))
