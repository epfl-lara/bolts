; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109038 () Bool)

(assert start!109038)

(declare-fun b_free!28491 () Bool)

(declare-fun b_next!28491 () Bool)

(assert (=> start!109038 (= b_free!28491 (not b_next!28491))))

(declare-fun tp!100593 () Bool)

(declare-fun b_and!46591 () Bool)

(assert (=> start!109038 (= tp!100593 b_and!46591)))

(declare-fun res!855561 () Bool)

(declare-fun e!735537 () Bool)

(assert (=> start!109038 (=> (not res!855561) (not e!735537))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109038 (= res!855561 (validMask!0 mask!2175))))

(assert (=> start!109038 e!735537))

(declare-fun tp_is_empty!34131 () Bool)

(assert (=> start!109038 tp_is_empty!34131))

(assert (=> start!109038 true))

(declare-datatypes ((V!50611 0))(
  ( (V!50612 (val!17140 Int)) )
))
(declare-datatypes ((ValueCell!16167 0))(
  ( (ValueCellFull!16167 (v!19741 V!50611)) (EmptyCell!16167) )
))
(declare-datatypes ((array!85263 0))(
  ( (array!85264 (arr!41128 (Array (_ BitVec 32) ValueCell!16167)) (size!41679 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85263)

(declare-fun e!735534 () Bool)

(declare-fun array_inv!31159 (array!85263) Bool)

(assert (=> start!109038 (and (array_inv!31159 _values!1445) e!735534)))

(declare-datatypes ((array!85265 0))(
  ( (array!85266 (arr!41129 (Array (_ BitVec 32) (_ BitVec 64))) (size!41680 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85265)

(declare-fun array_inv!31160 (array!85265) Bool)

(assert (=> start!109038 (array_inv!31160 _keys!1741)))

(assert (=> start!109038 tp!100593))

(declare-fun b!1288027 () Bool)

(declare-fun res!855555 () Bool)

(assert (=> b!1288027 (=> (not res!855555) (not e!735537))))

(declare-datatypes ((List!29334 0))(
  ( (Nil!29331) (Cons!29330 (h!30539 (_ BitVec 64)) (t!42905 List!29334)) )
))
(declare-fun arrayNoDuplicates!0 (array!85265 (_ BitVec 32) List!29334) Bool)

(assert (=> b!1288027 (= res!855555 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29331))))

(declare-fun b!1288028 () Bool)

(declare-fun res!855557 () Bool)

(assert (=> b!1288028 (=> (not res!855557) (not e!735537))))

(declare-fun minValue!1387 () V!50611)

(declare-fun zeroValue!1387 () V!50611)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!22134 0))(
  ( (tuple2!22135 (_1!11077 (_ BitVec 64)) (_2!11077 V!50611)) )
))
(declare-datatypes ((List!29335 0))(
  ( (Nil!29332) (Cons!29331 (h!30540 tuple2!22134) (t!42906 List!29335)) )
))
(declare-datatypes ((ListLongMap!19803 0))(
  ( (ListLongMap!19804 (toList!9917 List!29335)) )
))
(declare-fun contains!7973 (ListLongMap!19803 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4922 (array!85265 array!85263 (_ BitVec 32) (_ BitVec 32) V!50611 V!50611 (_ BitVec 32) Int) ListLongMap!19803)

(assert (=> b!1288028 (= res!855557 (contains!7973 (getCurrentListMap!4922 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1288029 () Bool)

(declare-fun res!855559 () Bool)

(assert (=> b!1288029 (=> (not res!855559) (not e!735537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288029 (= res!855559 (not (validKeyInArray!0 (select (arr!41129 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!52757 () Bool)

(declare-fun mapRes!52757 () Bool)

(assert (=> mapIsEmpty!52757 mapRes!52757))

(declare-fun b!1288030 () Bool)

(declare-fun res!855560 () Bool)

(assert (=> b!1288030 (=> (not res!855560) (not e!735537))))

(assert (=> b!1288030 (= res!855560 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41680 _keys!1741))))))

(declare-fun b!1288031 () Bool)

(declare-fun res!855558 () Bool)

(assert (=> b!1288031 (=> (not res!855558) (not e!735537))))

(assert (=> b!1288031 (= res!855558 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41680 _keys!1741))))))

(declare-fun mapNonEmpty!52757 () Bool)

(declare-fun tp!100592 () Bool)

(declare-fun e!735536 () Bool)

(assert (=> mapNonEmpty!52757 (= mapRes!52757 (and tp!100592 e!735536))))

(declare-fun mapRest!52757 () (Array (_ BitVec 32) ValueCell!16167))

(declare-fun mapKey!52757 () (_ BitVec 32))

(declare-fun mapValue!52757 () ValueCell!16167)

(assert (=> mapNonEmpty!52757 (= (arr!41128 _values!1445) (store mapRest!52757 mapKey!52757 mapValue!52757))))

(declare-fun b!1288032 () Bool)

(assert (=> b!1288032 (= e!735536 tp_is_empty!34131)))

(declare-fun b!1288033 () Bool)

(declare-fun e!735535 () Bool)

(assert (=> b!1288033 (= e!735534 (and e!735535 mapRes!52757))))

(declare-fun condMapEmpty!52757 () Bool)

(declare-fun mapDefault!52757 () ValueCell!16167)

(assert (=> b!1288033 (= condMapEmpty!52757 (= (arr!41128 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16167)) mapDefault!52757)))))

(declare-fun b!1288034 () Bool)

(declare-fun res!855554 () Bool)

(assert (=> b!1288034 (=> (not res!855554) (not e!735537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85265 (_ BitVec 32)) Bool)

(assert (=> b!1288034 (= res!855554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288035 () Bool)

(declare-fun res!855556 () Bool)

(assert (=> b!1288035 (=> (not res!855556) (not e!735537))))

(assert (=> b!1288035 (= res!855556 (and (= (size!41679 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41680 _keys!1741) (size!41679 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288036 () Bool)

(assert (=> b!1288036 (= e!735535 tp_is_empty!34131)))

(declare-fun b!1288037 () Bool)

(assert (=> b!1288037 (= e!735537 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle from!2144 (size!41680 _keys!1741)))))))

(assert (=> b!1288037 (not (contains!7973 (ListLongMap!19804 Nil!29332) k0!1205))))

(declare-datatypes ((Unit!42531 0))(
  ( (Unit!42532) )
))
(declare-fun lt!577864 () Unit!42531)

(declare-fun emptyContainsNothing!33 ((_ BitVec 64)) Unit!42531)

(assert (=> b!1288037 (= lt!577864 (emptyContainsNothing!33 k0!1205))))

(assert (= (and start!109038 res!855561) b!1288035))

(assert (= (and b!1288035 res!855556) b!1288034))

(assert (= (and b!1288034 res!855554) b!1288027))

(assert (= (and b!1288027 res!855555) b!1288031))

(assert (= (and b!1288031 res!855558) b!1288028))

(assert (= (and b!1288028 res!855557) b!1288030))

(assert (= (and b!1288030 res!855560) b!1288029))

(assert (= (and b!1288029 res!855559) b!1288037))

(assert (= (and b!1288033 condMapEmpty!52757) mapIsEmpty!52757))

(assert (= (and b!1288033 (not condMapEmpty!52757)) mapNonEmpty!52757))

(get-info :version)

(assert (= (and mapNonEmpty!52757 ((_ is ValueCellFull!16167) mapValue!52757)) b!1288032))

(assert (= (and b!1288033 ((_ is ValueCellFull!16167) mapDefault!52757)) b!1288036))

(assert (= start!109038 b!1288033))

(declare-fun m!1180745 () Bool)

(assert (=> b!1288027 m!1180745))

(declare-fun m!1180747 () Bool)

(assert (=> b!1288029 m!1180747))

(assert (=> b!1288029 m!1180747))

(declare-fun m!1180749 () Bool)

(assert (=> b!1288029 m!1180749))

(declare-fun m!1180751 () Bool)

(assert (=> b!1288037 m!1180751))

(declare-fun m!1180753 () Bool)

(assert (=> b!1288037 m!1180753))

(declare-fun m!1180755 () Bool)

(assert (=> b!1288034 m!1180755))

(declare-fun m!1180757 () Bool)

(assert (=> start!109038 m!1180757))

(declare-fun m!1180759 () Bool)

(assert (=> start!109038 m!1180759))

(declare-fun m!1180761 () Bool)

(assert (=> start!109038 m!1180761))

(declare-fun m!1180763 () Bool)

(assert (=> mapNonEmpty!52757 m!1180763))

(declare-fun m!1180765 () Bool)

(assert (=> b!1288028 m!1180765))

(assert (=> b!1288028 m!1180765))

(declare-fun m!1180767 () Bool)

(assert (=> b!1288028 m!1180767))

(check-sat (not b!1288034) tp_is_empty!34131 (not b!1288028) (not start!109038) (not mapNonEmpty!52757) (not b!1288029) b_and!46591 (not b_next!28491) (not b!1288037) (not b!1288027))
(check-sat b_and!46591 (not b_next!28491))
