; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109272 () Bool)

(assert start!109272)

(declare-fun b_free!28725 () Bool)

(declare-fun b_next!28725 () Bool)

(assert (=> start!109272 (= b_free!28725 (not b_next!28725))))

(declare-fun tp!101294 () Bool)

(declare-fun b_and!46825 () Bool)

(assert (=> start!109272 (= tp!101294 b_and!46825)))

(declare-fun b!1292185 () Bool)

(declare-fun e!737588 () Bool)

(assert (=> b!1292185 (= e!737588 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50923 0))(
  ( (V!50924 (val!17257 Int)) )
))
(declare-datatypes ((tuple2!22334 0))(
  ( (tuple2!22335 (_1!11177 (_ BitVec 64)) (_2!11177 V!50923)) )
))
(declare-datatypes ((List!29521 0))(
  ( (Nil!29518) (Cons!29517 (h!30726 tuple2!22334) (t!43092 List!29521)) )
))
(declare-datatypes ((ListLongMap!20003 0))(
  ( (ListLongMap!20004 (toList!10017 List!29521)) )
))
(declare-fun contains!8073 (ListLongMap!20003 (_ BitVec 64)) Bool)

(assert (=> b!1292185 (not (contains!8073 (ListLongMap!20004 Nil!29518) k0!1205))))

(declare-datatypes ((Unit!42715 0))(
  ( (Unit!42716) )
))
(declare-fun lt!579259 () Unit!42715)

(declare-fun emptyContainsNothing!114 ((_ BitVec 64)) Unit!42715)

(assert (=> b!1292185 (= lt!579259 (emptyContainsNothing!114 k0!1205))))

(declare-fun b!1292186 () Bool)

(declare-fun res!858665 () Bool)

(assert (=> b!1292186 (=> (not res!858665) (not e!737588))))

(declare-datatypes ((array!85723 0))(
  ( (array!85724 (arr!41358 (Array (_ BitVec 32) (_ BitVec 64))) (size!41909 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85723)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292186 (= res!858665 (not (validKeyInArray!0 (select (arr!41358 _keys!1741) from!2144))))))

(declare-fun b!1292187 () Bool)

(declare-fun res!858659 () Bool)

(assert (=> b!1292187 (=> (not res!858659) (not e!737588))))

(assert (=> b!1292187 (= res!858659 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41909 _keys!1741))))))

(declare-fun b!1292188 () Bool)

(declare-fun res!858661 () Bool)

(assert (=> b!1292188 (=> (not res!858661) (not e!737588))))

(declare-datatypes ((List!29522 0))(
  ( (Nil!29519) (Cons!29518 (h!30727 (_ BitVec 64)) (t!43093 List!29522)) )
))
(declare-fun arrayNoDuplicates!0 (array!85723 (_ BitVec 32) List!29522) Bool)

(assert (=> b!1292188 (= res!858661 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29519))))

(declare-fun b!1292189 () Bool)

(declare-fun e!737586 () Bool)

(declare-fun e!737589 () Bool)

(declare-fun mapRes!53108 () Bool)

(assert (=> b!1292189 (= e!737586 (and e!737589 mapRes!53108))))

(declare-fun condMapEmpty!53108 () Bool)

(declare-datatypes ((ValueCell!16284 0))(
  ( (ValueCellFull!16284 (v!19858 V!50923)) (EmptyCell!16284) )
))
(declare-datatypes ((array!85725 0))(
  ( (array!85726 (arr!41359 (Array (_ BitVec 32) ValueCell!16284)) (size!41910 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85725)

(declare-fun mapDefault!53108 () ValueCell!16284)

(assert (=> b!1292189 (= condMapEmpty!53108 (= (arr!41359 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16284)) mapDefault!53108)))))

(declare-fun b!1292190 () Bool)

(declare-fun res!858660 () Bool)

(assert (=> b!1292190 (=> (not res!858660) (not e!737588))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292190 (= res!858660 (and (= (size!41910 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41909 _keys!1741) (size!41910 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292191 () Bool)

(declare-fun res!858663 () Bool)

(assert (=> b!1292191 (=> (not res!858663) (not e!737588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85723 (_ BitVec 32)) Bool)

(assert (=> b!1292191 (= res!858663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53108 () Bool)

(assert (=> mapIsEmpty!53108 mapRes!53108))

(declare-fun b!1292193 () Bool)

(declare-fun res!858662 () Bool)

(assert (=> b!1292193 (=> (not res!858662) (not e!737588))))

(declare-fun minValue!1387 () V!50923)

(declare-fun zeroValue!1387 () V!50923)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5009 (array!85723 array!85725 (_ BitVec 32) (_ BitVec 32) V!50923 V!50923 (_ BitVec 32) Int) ListLongMap!20003)

(assert (=> b!1292193 (= res!858662 (contains!8073 (getCurrentListMap!5009 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1292194 () Bool)

(declare-fun e!737587 () Bool)

(declare-fun tp_is_empty!34365 () Bool)

(assert (=> b!1292194 (= e!737587 tp_is_empty!34365)))

(declare-fun b!1292195 () Bool)

(assert (=> b!1292195 (= e!737589 tp_is_empty!34365)))

(declare-fun mapNonEmpty!53108 () Bool)

(declare-fun tp!101295 () Bool)

(assert (=> mapNonEmpty!53108 (= mapRes!53108 (and tp!101295 e!737587))))

(declare-fun mapKey!53108 () (_ BitVec 32))

(declare-fun mapValue!53108 () ValueCell!16284)

(declare-fun mapRest!53108 () (Array (_ BitVec 32) ValueCell!16284))

(assert (=> mapNonEmpty!53108 (= (arr!41359 _values!1445) (store mapRest!53108 mapKey!53108 mapValue!53108))))

(declare-fun b!1292192 () Bool)

(declare-fun res!858666 () Bool)

(assert (=> b!1292192 (=> (not res!858666) (not e!737588))))

(assert (=> b!1292192 (= res!858666 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41909 _keys!1741))))))

(declare-fun res!858664 () Bool)

(assert (=> start!109272 (=> (not res!858664) (not e!737588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109272 (= res!858664 (validMask!0 mask!2175))))

(assert (=> start!109272 e!737588))

(assert (=> start!109272 tp_is_empty!34365))

(assert (=> start!109272 true))

(declare-fun array_inv!31305 (array!85725) Bool)

(assert (=> start!109272 (and (array_inv!31305 _values!1445) e!737586)))

(declare-fun array_inv!31306 (array!85723) Bool)

(assert (=> start!109272 (array_inv!31306 _keys!1741)))

(assert (=> start!109272 tp!101294))

(assert (= (and start!109272 res!858664) b!1292190))

(assert (= (and b!1292190 res!858660) b!1292191))

(assert (= (and b!1292191 res!858663) b!1292188))

(assert (= (and b!1292188 res!858661) b!1292192))

(assert (= (and b!1292192 res!858666) b!1292193))

(assert (= (and b!1292193 res!858662) b!1292187))

(assert (= (and b!1292187 res!858659) b!1292186))

(assert (= (and b!1292186 res!858665) b!1292185))

(assert (= (and b!1292189 condMapEmpty!53108) mapIsEmpty!53108))

(assert (= (and b!1292189 (not condMapEmpty!53108)) mapNonEmpty!53108))

(get-info :version)

(assert (= (and mapNonEmpty!53108 ((_ is ValueCellFull!16284) mapValue!53108)) b!1292194))

(assert (= (and b!1292189 ((_ is ValueCellFull!16284) mapDefault!53108)) b!1292195))

(assert (= start!109272 b!1292189))

(declare-fun m!1184825 () Bool)

(assert (=> mapNonEmpty!53108 m!1184825))

(declare-fun m!1184827 () Bool)

(assert (=> b!1292188 m!1184827))

(declare-fun m!1184829 () Bool)

(assert (=> b!1292186 m!1184829))

(assert (=> b!1292186 m!1184829))

(declare-fun m!1184831 () Bool)

(assert (=> b!1292186 m!1184831))

(declare-fun m!1184833 () Bool)

(assert (=> b!1292185 m!1184833))

(declare-fun m!1184835 () Bool)

(assert (=> b!1292185 m!1184835))

(declare-fun m!1184837 () Bool)

(assert (=> b!1292191 m!1184837))

(declare-fun m!1184839 () Bool)

(assert (=> start!109272 m!1184839))

(declare-fun m!1184841 () Bool)

(assert (=> start!109272 m!1184841))

(declare-fun m!1184843 () Bool)

(assert (=> start!109272 m!1184843))

(declare-fun m!1184845 () Bool)

(assert (=> b!1292193 m!1184845))

(assert (=> b!1292193 m!1184845))

(declare-fun m!1184847 () Bool)

(assert (=> b!1292193 m!1184847))

(check-sat (not b_next!28725) b_and!46825 (not b!1292188) (not b!1292186) (not b!1292193) (not mapNonEmpty!53108) (not b!1292191) (not b!1292185) tp_is_empty!34365 (not start!109272))
(check-sat b_and!46825 (not b_next!28725))
