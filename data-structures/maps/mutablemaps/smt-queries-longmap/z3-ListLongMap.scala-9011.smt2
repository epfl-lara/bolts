; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108864 () Bool)

(assert start!108864)

(declare-fun b_free!28341 () Bool)

(declare-fun b_next!28341 () Bool)

(assert (=> start!108864 (= b_free!28341 (not b_next!28341))))

(declare-fun tp!100139 () Bool)

(declare-fun b_and!46417 () Bool)

(assert (=> start!108864 (= tp!100139 b_and!46417)))

(declare-fun b!1285125 () Bool)

(declare-fun res!853821 () Bool)

(declare-fun e!734091 () Bool)

(assert (=> b!1285125 (=> (not res!853821) (not e!734091))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50411 0))(
  ( (V!50412 (val!17065 Int)) )
))
(declare-datatypes ((ValueCell!16092 0))(
  ( (ValueCellFull!16092 (v!19665 V!50411)) (EmptyCell!16092) )
))
(declare-datatypes ((array!84973 0))(
  ( (array!84974 (arr!40984 (Array (_ BitVec 32) ValueCell!16092)) (size!41535 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84973)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84975 0))(
  ( (array!84976 (arr!40985 (Array (_ BitVec 32) (_ BitVec 64))) (size!41536 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84975)

(assert (=> b!1285125 (= res!853821 (and (= (size!41535 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41536 _keys!1741) (size!41535 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285126 () Bool)

(declare-fun res!853820 () Bool)

(assert (=> b!1285126 (=> (not res!853820) (not e!734091))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1285126 (= res!853820 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41536 _keys!1741))))))

(declare-fun res!853817 () Bool)

(assert (=> start!108864 (=> (not res!853817) (not e!734091))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108864 (= res!853817 (validMask!0 mask!2175))))

(assert (=> start!108864 e!734091))

(declare-fun tp_is_empty!33981 () Bool)

(assert (=> start!108864 tp_is_empty!33981))

(assert (=> start!108864 true))

(declare-fun e!734092 () Bool)

(declare-fun array_inv!31061 (array!84973) Bool)

(assert (=> start!108864 (and (array_inv!31061 _values!1445) e!734092)))

(declare-fun array_inv!31062 (array!84975) Bool)

(assert (=> start!108864 (array_inv!31062 _keys!1741)))

(assert (=> start!108864 tp!100139))

(declare-fun b!1285127 () Bool)

(declare-fun e!734095 () Bool)

(assert (=> b!1285127 (= e!734095 tp_is_empty!33981)))

(declare-fun b!1285128 () Bool)

(declare-fun res!853818 () Bool)

(assert (=> b!1285128 (=> (not res!853818) (not e!734091))))

(declare-datatypes ((List!29215 0))(
  ( (Nil!29212) (Cons!29211 (h!30420 (_ BitVec 64)) (t!42766 List!29215)) )
))
(declare-fun arrayNoDuplicates!0 (array!84975 (_ BitVec 32) List!29215) Bool)

(assert (=> b!1285128 (= res!853818 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29212))))

(declare-fun b!1285129 () Bool)

(declare-fun e!734093 () Bool)

(declare-fun mapRes!52529 () Bool)

(assert (=> b!1285129 (= e!734092 (and e!734093 mapRes!52529))))

(declare-fun condMapEmpty!52529 () Bool)

(declare-fun mapDefault!52529 () ValueCell!16092)

(assert (=> b!1285129 (= condMapEmpty!52529 (= (arr!40984 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16092)) mapDefault!52529)))))

(declare-fun b!1285130 () Bool)

(assert (=> b!1285130 (= e!734091 false)))

(declare-fun minValue!1387 () V!50411)

(declare-fun zeroValue!1387 () V!50411)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!576825 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22002 0))(
  ( (tuple2!22003 (_1!11011 (_ BitVec 64)) (_2!11011 V!50411)) )
))
(declare-datatypes ((List!29216 0))(
  ( (Nil!29213) (Cons!29212 (h!30421 tuple2!22002) (t!42767 List!29216)) )
))
(declare-datatypes ((ListLongMap!19671 0))(
  ( (ListLongMap!19672 (toList!9851 List!29216)) )
))
(declare-fun contains!7906 (ListLongMap!19671 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4867 (array!84975 array!84973 (_ BitVec 32) (_ BitVec 32) V!50411 V!50411 (_ BitVec 32) Int) ListLongMap!19671)

(assert (=> b!1285130 (= lt!576825 (contains!7906 (getCurrentListMap!4867 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52529 () Bool)

(declare-fun tp!100140 () Bool)

(assert (=> mapNonEmpty!52529 (= mapRes!52529 (and tp!100140 e!734095))))

(declare-fun mapValue!52529 () ValueCell!16092)

(declare-fun mapKey!52529 () (_ BitVec 32))

(declare-fun mapRest!52529 () (Array (_ BitVec 32) ValueCell!16092))

(assert (=> mapNonEmpty!52529 (= (arr!40984 _values!1445) (store mapRest!52529 mapKey!52529 mapValue!52529))))

(declare-fun mapIsEmpty!52529 () Bool)

(assert (=> mapIsEmpty!52529 mapRes!52529))

(declare-fun b!1285131 () Bool)

(declare-fun res!853819 () Bool)

(assert (=> b!1285131 (=> (not res!853819) (not e!734091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84975 (_ BitVec 32)) Bool)

(assert (=> b!1285131 (= res!853819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285132 () Bool)

(assert (=> b!1285132 (= e!734093 tp_is_empty!33981)))

(assert (= (and start!108864 res!853817) b!1285125))

(assert (= (and b!1285125 res!853821) b!1285131))

(assert (= (and b!1285131 res!853819) b!1285128))

(assert (= (and b!1285128 res!853818) b!1285126))

(assert (= (and b!1285126 res!853820) b!1285130))

(assert (= (and b!1285129 condMapEmpty!52529) mapIsEmpty!52529))

(assert (= (and b!1285129 (not condMapEmpty!52529)) mapNonEmpty!52529))

(get-info :version)

(assert (= (and mapNonEmpty!52529 ((_ is ValueCellFull!16092) mapValue!52529)) b!1285127))

(assert (= (and b!1285129 ((_ is ValueCellFull!16092) mapDefault!52529)) b!1285132))

(assert (= start!108864 b!1285129))

(declare-fun m!1178599 () Bool)

(assert (=> b!1285131 m!1178599))

(declare-fun m!1178601 () Bool)

(assert (=> mapNonEmpty!52529 m!1178601))

(declare-fun m!1178603 () Bool)

(assert (=> start!108864 m!1178603))

(declare-fun m!1178605 () Bool)

(assert (=> start!108864 m!1178605))

(declare-fun m!1178607 () Bool)

(assert (=> start!108864 m!1178607))

(declare-fun m!1178609 () Bool)

(assert (=> b!1285130 m!1178609))

(assert (=> b!1285130 m!1178609))

(declare-fun m!1178611 () Bool)

(assert (=> b!1285130 m!1178611))

(declare-fun m!1178613 () Bool)

(assert (=> b!1285128 m!1178613))

(check-sat (not b!1285128) b_and!46417 (not mapNonEmpty!52529) (not b!1285130) (not b!1285131) (not start!108864) (not b_next!28341) tp_is_empty!33981)
(check-sat b_and!46417 (not b_next!28341))
