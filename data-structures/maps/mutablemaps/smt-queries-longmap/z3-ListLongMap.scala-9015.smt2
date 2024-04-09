; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108888 () Bool)

(assert start!108888)

(declare-fun b_free!28365 () Bool)

(declare-fun b_next!28365 () Bool)

(assert (=> start!108888 (= b_free!28365 (not b_next!28365))))

(declare-fun tp!100211 () Bool)

(declare-fun b_and!46441 () Bool)

(assert (=> start!108888 (= tp!100211 b_and!46441)))

(declare-fun b!1285413 () Bool)

(declare-fun res!853999 () Bool)

(declare-fun e!734275 () Bool)

(assert (=> b!1285413 (=> (not res!853999) (not e!734275))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85021 0))(
  ( (array!85022 (arr!41008 (Array (_ BitVec 32) (_ BitVec 64))) (size!41559 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85021)

(assert (=> b!1285413 (= res!853999 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41559 _keys!1741))))))

(declare-fun b!1285414 () Bool)

(declare-fun e!734272 () Bool)

(declare-fun e!734274 () Bool)

(declare-fun mapRes!52565 () Bool)

(assert (=> b!1285414 (= e!734272 (and e!734274 mapRes!52565))))

(declare-fun condMapEmpty!52565 () Bool)

(declare-datatypes ((V!50443 0))(
  ( (V!50444 (val!17077 Int)) )
))
(declare-datatypes ((ValueCell!16104 0))(
  ( (ValueCellFull!16104 (v!19677 V!50443)) (EmptyCell!16104) )
))
(declare-datatypes ((array!85023 0))(
  ( (array!85024 (arr!41009 (Array (_ BitVec 32) ValueCell!16104)) (size!41560 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85023)

(declare-fun mapDefault!52565 () ValueCell!16104)

(assert (=> b!1285414 (= condMapEmpty!52565 (= (arr!41009 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16104)) mapDefault!52565)))))

(declare-fun b!1285415 () Bool)

(declare-fun res!854000 () Bool)

(assert (=> b!1285415 (=> (not res!854000) (not e!734275))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85021 (_ BitVec 32)) Bool)

(assert (=> b!1285415 (= res!854000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285416 () Bool)

(declare-fun res!853998 () Bool)

(assert (=> b!1285416 (=> (not res!853998) (not e!734275))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285416 (= res!853998 (and (= (size!41560 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41559 _keys!1741) (size!41560 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285417 () Bool)

(declare-fun e!734271 () Bool)

(declare-fun tp_is_empty!34005 () Bool)

(assert (=> b!1285417 (= e!734271 tp_is_empty!34005)))

(declare-fun mapIsEmpty!52565 () Bool)

(assert (=> mapIsEmpty!52565 mapRes!52565))

(declare-fun b!1285418 () Bool)

(assert (=> b!1285418 (= e!734274 tp_is_empty!34005)))

(declare-fun b!1285419 () Bool)

(assert (=> b!1285419 (= e!734275 false)))

(declare-fun minValue!1387 () V!50443)

(declare-fun zeroValue!1387 () V!50443)

(declare-fun lt!576861 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22022 0))(
  ( (tuple2!22023 (_1!11021 (_ BitVec 64)) (_2!11021 V!50443)) )
))
(declare-datatypes ((List!29233 0))(
  ( (Nil!29230) (Cons!29229 (h!30438 tuple2!22022) (t!42784 List!29233)) )
))
(declare-datatypes ((ListLongMap!19691 0))(
  ( (ListLongMap!19692 (toList!9861 List!29233)) )
))
(declare-fun contains!7916 (ListLongMap!19691 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4877 (array!85021 array!85023 (_ BitVec 32) (_ BitVec 32) V!50443 V!50443 (_ BitVec 32) Int) ListLongMap!19691)

(assert (=> b!1285419 (= lt!576861 (contains!7916 (getCurrentListMap!4877 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285420 () Bool)

(declare-fun res!853997 () Bool)

(assert (=> b!1285420 (=> (not res!853997) (not e!734275))))

(declare-datatypes ((List!29234 0))(
  ( (Nil!29231) (Cons!29230 (h!30439 (_ BitVec 64)) (t!42785 List!29234)) )
))
(declare-fun arrayNoDuplicates!0 (array!85021 (_ BitVec 32) List!29234) Bool)

(assert (=> b!1285420 (= res!853997 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29231))))

(declare-fun res!854001 () Bool)

(assert (=> start!108888 (=> (not res!854001) (not e!734275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108888 (= res!854001 (validMask!0 mask!2175))))

(assert (=> start!108888 e!734275))

(assert (=> start!108888 tp_is_empty!34005))

(assert (=> start!108888 true))

(declare-fun array_inv!31075 (array!85023) Bool)

(assert (=> start!108888 (and (array_inv!31075 _values!1445) e!734272)))

(declare-fun array_inv!31076 (array!85021) Bool)

(assert (=> start!108888 (array_inv!31076 _keys!1741)))

(assert (=> start!108888 tp!100211))

(declare-fun mapNonEmpty!52565 () Bool)

(declare-fun tp!100212 () Bool)

(assert (=> mapNonEmpty!52565 (= mapRes!52565 (and tp!100212 e!734271))))

(declare-fun mapRest!52565 () (Array (_ BitVec 32) ValueCell!16104))

(declare-fun mapValue!52565 () ValueCell!16104)

(declare-fun mapKey!52565 () (_ BitVec 32))

(assert (=> mapNonEmpty!52565 (= (arr!41009 _values!1445) (store mapRest!52565 mapKey!52565 mapValue!52565))))

(assert (= (and start!108888 res!854001) b!1285416))

(assert (= (and b!1285416 res!853998) b!1285415))

(assert (= (and b!1285415 res!854000) b!1285420))

(assert (= (and b!1285420 res!853997) b!1285413))

(assert (= (and b!1285413 res!853999) b!1285419))

(assert (= (and b!1285414 condMapEmpty!52565) mapIsEmpty!52565))

(assert (= (and b!1285414 (not condMapEmpty!52565)) mapNonEmpty!52565))

(get-info :version)

(assert (= (and mapNonEmpty!52565 ((_ is ValueCellFull!16104) mapValue!52565)) b!1285417))

(assert (= (and b!1285414 ((_ is ValueCellFull!16104) mapDefault!52565)) b!1285418))

(assert (= start!108888 b!1285414))

(declare-fun m!1178791 () Bool)

(assert (=> b!1285419 m!1178791))

(assert (=> b!1285419 m!1178791))

(declare-fun m!1178793 () Bool)

(assert (=> b!1285419 m!1178793))

(declare-fun m!1178795 () Bool)

(assert (=> mapNonEmpty!52565 m!1178795))

(declare-fun m!1178797 () Bool)

(assert (=> start!108888 m!1178797))

(declare-fun m!1178799 () Bool)

(assert (=> start!108888 m!1178799))

(declare-fun m!1178801 () Bool)

(assert (=> start!108888 m!1178801))

(declare-fun m!1178803 () Bool)

(assert (=> b!1285415 m!1178803))

(declare-fun m!1178805 () Bool)

(assert (=> b!1285420 m!1178805))

(check-sat (not mapNonEmpty!52565) (not b!1285419) tp_is_empty!34005 (not b!1285420) b_and!46441 (not start!108888) (not b_next!28365) (not b!1285415))
(check-sat b_and!46441 (not b_next!28365))
