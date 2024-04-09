; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108696 () Bool)

(assert start!108696)

(declare-fun b_free!28173 () Bool)

(declare-fun b_next!28173 () Bool)

(assert (=> start!108696 (= b_free!28173 (not b_next!28173))))

(declare-fun tp!99635 () Bool)

(declare-fun b_and!46249 () Bool)

(assert (=> start!108696 (= tp!99635 b_and!46249)))

(declare-fun b!1282515 () Bool)

(declare-fun e!732832 () Bool)

(declare-fun e!732831 () Bool)

(declare-fun mapRes!52277 () Bool)

(assert (=> b!1282515 (= e!732832 (and e!732831 mapRes!52277))))

(declare-fun condMapEmpty!52277 () Bool)

(declare-datatypes ((V!50187 0))(
  ( (V!50188 (val!16981 Int)) )
))
(declare-datatypes ((ValueCell!16008 0))(
  ( (ValueCellFull!16008 (v!19581 V!50187)) (EmptyCell!16008) )
))
(declare-datatypes ((array!84647 0))(
  ( (array!84648 (arr!40821 (Array (_ BitVec 32) ValueCell!16008)) (size!41372 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84647)

(declare-fun mapDefault!52277 () ValueCell!16008)

(assert (=> b!1282515 (= condMapEmpty!52277 (= (arr!40821 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16008)) mapDefault!52277)))))

(declare-fun b!1282516 () Bool)

(declare-fun tp_is_empty!33813 () Bool)

(assert (=> b!1282516 (= e!732831 tp_is_empty!33813)))

(declare-fun b!1282517 () Bool)

(declare-fun res!851967 () Bool)

(declare-fun e!732835 () Bool)

(assert (=> b!1282517 (=> (not res!851967) (not e!732835))))

(declare-datatypes ((array!84649 0))(
  ( (array!84650 (arr!40822 (Array (_ BitVec 32) (_ BitVec 64))) (size!41373 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84649)

(declare-datatypes ((List!29098 0))(
  ( (Nil!29095) (Cons!29094 (h!30303 (_ BitVec 64)) (t!42649 List!29098)) )
))
(declare-fun arrayNoDuplicates!0 (array!84649 (_ BitVec 32) List!29098) Bool)

(assert (=> b!1282517 (= res!851967 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29095))))

(declare-fun mapIsEmpty!52277 () Bool)

(assert (=> mapIsEmpty!52277 mapRes!52277))

(declare-fun res!851965 () Bool)

(assert (=> start!108696 (=> (not res!851965) (not e!732835))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108696 (= res!851965 (validMask!0 mask!2175))))

(assert (=> start!108696 e!732835))

(assert (=> start!108696 tp_is_empty!33813))

(assert (=> start!108696 true))

(declare-fun array_inv!30949 (array!84647) Bool)

(assert (=> start!108696 (and (array_inv!30949 _values!1445) e!732832)))

(declare-fun array_inv!30950 (array!84649) Bool)

(assert (=> start!108696 (array_inv!30950 _keys!1741)))

(assert (=> start!108696 tp!99635))

(declare-fun b!1282518 () Bool)

(declare-fun e!732834 () Bool)

(assert (=> b!1282518 (= e!732834 tp_is_empty!33813)))

(declare-fun mapNonEmpty!52277 () Bool)

(declare-fun tp!99636 () Bool)

(assert (=> mapNonEmpty!52277 (= mapRes!52277 (and tp!99636 e!732834))))

(declare-fun mapValue!52277 () ValueCell!16008)

(declare-fun mapRest!52277 () (Array (_ BitVec 32) ValueCell!16008))

(declare-fun mapKey!52277 () (_ BitVec 32))

(assert (=> mapNonEmpty!52277 (= (arr!40821 _values!1445) (store mapRest!52277 mapKey!52277 mapValue!52277))))

(declare-fun b!1282519 () Bool)

(assert (=> b!1282519 (= e!732835 false)))

(declare-fun zeroValue!1387 () V!50187)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun minValue!1387 () V!50187)

(declare-fun lt!576492 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21888 0))(
  ( (tuple2!21889 (_1!10954 (_ BitVec 64)) (_2!10954 V!50187)) )
))
(declare-datatypes ((List!29099 0))(
  ( (Nil!29096) (Cons!29095 (h!30304 tuple2!21888) (t!42650 List!29099)) )
))
(declare-datatypes ((ListLongMap!19557 0))(
  ( (ListLongMap!19558 (toList!9794 List!29099)) )
))
(declare-fun contains!7849 (ListLongMap!19557 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4814 (array!84649 array!84647 (_ BitVec 32) (_ BitVec 32) V!50187 V!50187 (_ BitVec 32) Int) ListLongMap!19557)

(assert (=> b!1282519 (= lt!576492 (contains!7849 (getCurrentListMap!4814 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282520 () Bool)

(declare-fun res!851966 () Bool)

(assert (=> b!1282520 (=> (not res!851966) (not e!732835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84649 (_ BitVec 32)) Bool)

(assert (=> b!1282520 (= res!851966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282521 () Bool)

(declare-fun res!851964 () Bool)

(assert (=> b!1282521 (=> (not res!851964) (not e!732835))))

(assert (=> b!1282521 (= res!851964 (and (= (size!41372 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41373 _keys!1741) (size!41372 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282522 () Bool)

(declare-fun res!851963 () Bool)

(assert (=> b!1282522 (=> (not res!851963) (not e!732835))))

(assert (=> b!1282522 (= res!851963 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41373 _keys!1741))))))

(assert (= (and start!108696 res!851965) b!1282521))

(assert (= (and b!1282521 res!851964) b!1282520))

(assert (= (and b!1282520 res!851966) b!1282517))

(assert (= (and b!1282517 res!851967) b!1282522))

(assert (= (and b!1282522 res!851963) b!1282519))

(assert (= (and b!1282515 condMapEmpty!52277) mapIsEmpty!52277))

(assert (= (and b!1282515 (not condMapEmpty!52277)) mapNonEmpty!52277))

(get-info :version)

(assert (= (and mapNonEmpty!52277 ((_ is ValueCellFull!16008) mapValue!52277)) b!1282518))

(assert (= (and b!1282515 ((_ is ValueCellFull!16008) mapDefault!52277)) b!1282516))

(assert (= start!108696 b!1282515))

(declare-fun m!1176703 () Bool)

(assert (=> b!1282520 m!1176703))

(declare-fun m!1176705 () Bool)

(assert (=> mapNonEmpty!52277 m!1176705))

(declare-fun m!1176707 () Bool)

(assert (=> b!1282517 m!1176707))

(declare-fun m!1176709 () Bool)

(assert (=> start!108696 m!1176709))

(declare-fun m!1176711 () Bool)

(assert (=> start!108696 m!1176711))

(declare-fun m!1176713 () Bool)

(assert (=> start!108696 m!1176713))

(declare-fun m!1176715 () Bool)

(assert (=> b!1282519 m!1176715))

(assert (=> b!1282519 m!1176715))

(declare-fun m!1176717 () Bool)

(assert (=> b!1282519 m!1176717))

(check-sat (not b!1282517) (not b!1282519) tp_is_empty!33813 (not start!108696) b_and!46249 (not mapNonEmpty!52277) (not b_next!28173) (not b!1282520))
(check-sat b_and!46249 (not b_next!28173))
