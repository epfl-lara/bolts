; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108876 () Bool)

(assert start!108876)

(declare-fun b_free!28353 () Bool)

(declare-fun b_next!28353 () Bool)

(assert (=> start!108876 (= b_free!28353 (not b_next!28353))))

(declare-fun tp!100176 () Bool)

(declare-fun b_and!46429 () Bool)

(assert (=> start!108876 (= tp!100176 b_and!46429)))

(declare-fun b!1285269 () Bool)

(declare-fun res!853907 () Bool)

(declare-fun e!734184 () Bool)

(assert (=> b!1285269 (=> (not res!853907) (not e!734184))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84997 0))(
  ( (array!84998 (arr!40996 (Array (_ BitVec 32) (_ BitVec 64))) (size!41547 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84997)

(assert (=> b!1285269 (= res!853907 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41547 _keys!1741))))))

(declare-fun mapNonEmpty!52547 () Bool)

(declare-fun mapRes!52547 () Bool)

(declare-fun tp!100175 () Bool)

(declare-fun e!734181 () Bool)

(assert (=> mapNonEmpty!52547 (= mapRes!52547 (and tp!100175 e!734181))))

(declare-datatypes ((V!50427 0))(
  ( (V!50428 (val!17071 Int)) )
))
(declare-datatypes ((ValueCell!16098 0))(
  ( (ValueCellFull!16098 (v!19671 V!50427)) (EmptyCell!16098) )
))
(declare-fun mapValue!52547 () ValueCell!16098)

(declare-fun mapRest!52547 () (Array (_ BitVec 32) ValueCell!16098))

(declare-datatypes ((array!84999 0))(
  ( (array!85000 (arr!40997 (Array (_ BitVec 32) ValueCell!16098)) (size!41548 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84999)

(declare-fun mapKey!52547 () (_ BitVec 32))

(assert (=> mapNonEmpty!52547 (= (arr!40997 _values!1445) (store mapRest!52547 mapKey!52547 mapValue!52547))))

(declare-fun mapIsEmpty!52547 () Bool)

(assert (=> mapIsEmpty!52547 mapRes!52547))

(declare-fun res!853908 () Bool)

(assert (=> start!108876 (=> (not res!853908) (not e!734184))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108876 (= res!853908 (validMask!0 mask!2175))))

(assert (=> start!108876 e!734184))

(declare-fun tp_is_empty!33993 () Bool)

(assert (=> start!108876 tp_is_empty!33993))

(assert (=> start!108876 true))

(declare-fun e!734183 () Bool)

(declare-fun array_inv!31069 (array!84999) Bool)

(assert (=> start!108876 (and (array_inv!31069 _values!1445) e!734183)))

(declare-fun array_inv!31070 (array!84997) Bool)

(assert (=> start!108876 (array_inv!31070 _keys!1741)))

(assert (=> start!108876 tp!100176))

(declare-fun b!1285270 () Bool)

(declare-fun e!734185 () Bool)

(assert (=> b!1285270 (= e!734185 tp_is_empty!33993)))

(declare-fun b!1285271 () Bool)

(assert (=> b!1285271 (= e!734183 (and e!734185 mapRes!52547))))

(declare-fun condMapEmpty!52547 () Bool)

(declare-fun mapDefault!52547 () ValueCell!16098)

(assert (=> b!1285271 (= condMapEmpty!52547 (= (arr!40997 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16098)) mapDefault!52547)))))

(declare-fun b!1285272 () Bool)

(declare-fun res!853909 () Bool)

(assert (=> b!1285272 (=> (not res!853909) (not e!734184))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285272 (= res!853909 (and (= (size!41548 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41547 _keys!1741) (size!41548 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285273 () Bool)

(declare-fun res!853911 () Bool)

(assert (=> b!1285273 (=> (not res!853911) (not e!734184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84997 (_ BitVec 32)) Bool)

(assert (=> b!1285273 (= res!853911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285274 () Bool)

(assert (=> b!1285274 (= e!734184 false)))

(declare-fun minValue!1387 () V!50427)

(declare-fun zeroValue!1387 () V!50427)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!576843 () Bool)

(declare-datatypes ((tuple2!22010 0))(
  ( (tuple2!22011 (_1!11015 (_ BitVec 64)) (_2!11015 V!50427)) )
))
(declare-datatypes ((List!29223 0))(
  ( (Nil!29220) (Cons!29219 (h!30428 tuple2!22010) (t!42774 List!29223)) )
))
(declare-datatypes ((ListLongMap!19679 0))(
  ( (ListLongMap!19680 (toList!9855 List!29223)) )
))
(declare-fun contains!7910 (ListLongMap!19679 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4871 (array!84997 array!84999 (_ BitVec 32) (_ BitVec 32) V!50427 V!50427 (_ BitVec 32) Int) ListLongMap!19679)

(assert (=> b!1285274 (= lt!576843 (contains!7910 (getCurrentListMap!4871 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1285275 () Bool)

(assert (=> b!1285275 (= e!734181 tp_is_empty!33993)))

(declare-fun b!1285276 () Bool)

(declare-fun res!853910 () Bool)

(assert (=> b!1285276 (=> (not res!853910) (not e!734184))))

(declare-datatypes ((List!29224 0))(
  ( (Nil!29221) (Cons!29220 (h!30429 (_ BitVec 64)) (t!42775 List!29224)) )
))
(declare-fun arrayNoDuplicates!0 (array!84997 (_ BitVec 32) List!29224) Bool)

(assert (=> b!1285276 (= res!853910 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29221))))

(assert (= (and start!108876 res!853908) b!1285272))

(assert (= (and b!1285272 res!853909) b!1285273))

(assert (= (and b!1285273 res!853911) b!1285276))

(assert (= (and b!1285276 res!853910) b!1285269))

(assert (= (and b!1285269 res!853907) b!1285274))

(assert (= (and b!1285271 condMapEmpty!52547) mapIsEmpty!52547))

(assert (= (and b!1285271 (not condMapEmpty!52547)) mapNonEmpty!52547))

(get-info :version)

(assert (= (and mapNonEmpty!52547 ((_ is ValueCellFull!16098) mapValue!52547)) b!1285275))

(assert (= (and b!1285271 ((_ is ValueCellFull!16098) mapDefault!52547)) b!1285270))

(assert (= start!108876 b!1285271))

(declare-fun m!1178695 () Bool)

(assert (=> mapNonEmpty!52547 m!1178695))

(declare-fun m!1178697 () Bool)

(assert (=> b!1285274 m!1178697))

(assert (=> b!1285274 m!1178697))

(declare-fun m!1178699 () Bool)

(assert (=> b!1285274 m!1178699))

(declare-fun m!1178701 () Bool)

(assert (=> b!1285276 m!1178701))

(declare-fun m!1178703 () Bool)

(assert (=> b!1285273 m!1178703))

(declare-fun m!1178705 () Bool)

(assert (=> start!108876 m!1178705))

(declare-fun m!1178707 () Bool)

(assert (=> start!108876 m!1178707))

(declare-fun m!1178709 () Bool)

(assert (=> start!108876 m!1178709))

(check-sat (not b!1285274) (not start!108876) b_and!46429 (not b!1285273) (not mapNonEmpty!52547) (not b!1285276) (not b_next!28353) tp_is_empty!33993)
(check-sat b_and!46429 (not b_next!28353))
