; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109362 () Bool)

(assert start!109362)

(declare-fun b_free!28815 () Bool)

(declare-fun b_next!28815 () Bool)

(assert (=> start!109362 (= b_free!28815 (not b_next!28815))))

(declare-fun tp!101565 () Bool)

(declare-fun b_and!46915 () Bool)

(assert (=> start!109362 (= tp!101565 b_and!46915)))

(declare-fun b!1293774 () Bool)

(declare-fun res!859849 () Bool)

(declare-fun e!738367 () Bool)

(assert (=> b!1293774 (=> (not res!859849) (not e!738367))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51043 0))(
  ( (V!51044 (val!17302 Int)) )
))
(declare-datatypes ((ValueCell!16329 0))(
  ( (ValueCellFull!16329 (v!19903 V!51043)) (EmptyCell!16329) )
))
(declare-datatypes ((array!85897 0))(
  ( (array!85898 (arr!41445 (Array (_ BitVec 32) ValueCell!16329)) (size!41996 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85897)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85899 0))(
  ( (array!85900 (arr!41446 (Array (_ BitVec 32) (_ BitVec 64))) (size!41997 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85899)

(assert (=> b!1293774 (= res!859849 (and (= (size!41996 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41997 _keys!1741) (size!41996 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293775 () Bool)

(declare-fun res!859845 () Bool)

(assert (=> b!1293775 (=> (not res!859845) (not e!738367))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293775 (= res!859845 (not (validKeyInArray!0 (select (arr!41446 _keys!1741) from!2144))))))

(declare-fun b!1293776 () Bool)

(declare-fun res!859844 () Bool)

(assert (=> b!1293776 (=> (not res!859844) (not e!738367))))

(declare-datatypes ((List!29593 0))(
  ( (Nil!29590) (Cons!29589 (h!30798 (_ BitVec 64)) (t!43164 List!29593)) )
))
(declare-fun arrayNoDuplicates!0 (array!85899 (_ BitVec 32) List!29593) Bool)

(assert (=> b!1293776 (= res!859844 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29590))))

(declare-fun b!1293777 () Bool)

(declare-fun e!738368 () Bool)

(declare-fun tp_is_empty!34455 () Bool)

(assert (=> b!1293777 (= e!738368 tp_is_empty!34455)))

(declare-fun mapIsEmpty!53243 () Bool)

(declare-fun mapRes!53243 () Bool)

(assert (=> mapIsEmpty!53243 mapRes!53243))

(declare-fun b!1293778 () Bool)

(declare-fun e!738366 () Bool)

(assert (=> b!1293778 (= e!738367 (not e!738366))))

(declare-fun res!859850 () Bool)

(assert (=> b!1293778 (=> res!859850 e!738366)))

(assert (=> b!1293778 (= res!859850 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22414 0))(
  ( (tuple2!22415 (_1!11217 (_ BitVec 64)) (_2!11217 V!51043)) )
))
(declare-datatypes ((List!29594 0))(
  ( (Nil!29591) (Cons!29590 (h!30799 tuple2!22414) (t!43165 List!29594)) )
))
(declare-datatypes ((ListLongMap!20083 0))(
  ( (ListLongMap!20084 (toList!10057 List!29594)) )
))
(declare-fun contains!8113 (ListLongMap!20083 (_ BitVec 64)) Bool)

(assert (=> b!1293778 (not (contains!8113 (ListLongMap!20084 Nil!29591) k0!1205))))

(declare-datatypes ((Unit!42789 0))(
  ( (Unit!42790) )
))
(declare-fun lt!579594 () Unit!42789)

(declare-fun emptyContainsNothing!151 ((_ BitVec 64)) Unit!42789)

(assert (=> b!1293778 (= lt!579594 (emptyContainsNothing!151 k0!1205))))

(declare-fun b!1293779 () Bool)

(declare-fun e!738369 () Bool)

(assert (=> b!1293779 (= e!738369 tp_is_empty!34455)))

(declare-fun b!1293781 () Bool)

(declare-fun res!859851 () Bool)

(assert (=> b!1293781 (=> (not res!859851) (not e!738367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85899 (_ BitVec 32)) Bool)

(assert (=> b!1293781 (= res!859851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293782 () Bool)

(declare-fun res!859846 () Bool)

(assert (=> b!1293782 (=> (not res!859846) (not e!738367))))

(assert (=> b!1293782 (= res!859846 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41997 _keys!1741))))))

(declare-fun b!1293783 () Bool)

(declare-fun res!859847 () Bool)

(assert (=> b!1293783 (=> (not res!859847) (not e!738367))))

(assert (=> b!1293783 (= res!859847 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41997 _keys!1741))))))

(declare-fun mapNonEmpty!53243 () Bool)

(declare-fun tp!101564 () Bool)

(assert (=> mapNonEmpty!53243 (= mapRes!53243 (and tp!101564 e!738369))))

(declare-fun mapKey!53243 () (_ BitVec 32))

(declare-fun mapValue!53243 () ValueCell!16329)

(declare-fun mapRest!53243 () (Array (_ BitVec 32) ValueCell!16329))

(assert (=> mapNonEmpty!53243 (= (arr!41445 _values!1445) (store mapRest!53243 mapKey!53243 mapValue!53243))))

(declare-fun b!1293784 () Bool)

(declare-fun e!738370 () Bool)

(assert (=> b!1293784 (= e!738370 (and e!738368 mapRes!53243))))

(declare-fun condMapEmpty!53243 () Bool)

(declare-fun mapDefault!53243 () ValueCell!16329)

(assert (=> b!1293784 (= condMapEmpty!53243 (= (arr!41445 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16329)) mapDefault!53243)))))

(declare-fun b!1293785 () Bool)

(declare-fun res!859843 () Bool)

(assert (=> b!1293785 (=> (not res!859843) (not e!738367))))

(declare-fun minValue!1387 () V!51043)

(declare-fun zeroValue!1387 () V!51043)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5043 (array!85899 array!85897 (_ BitVec 32) (_ BitVec 32) V!51043 V!51043 (_ BitVec 32) Int) ListLongMap!20083)

(assert (=> b!1293785 (= res!859843 (contains!8113 (getCurrentListMap!5043 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293780 () Bool)

(assert (=> b!1293780 (= e!738366 true)))

(declare-fun lt!579595 () ListLongMap!20083)

(declare-fun +!4385 (ListLongMap!20083 tuple2!22414) ListLongMap!20083)

(assert (=> b!1293780 (not (contains!8113 (+!4385 lt!579595 (tuple2!22415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!579593 () Unit!42789)

(declare-fun addStillNotContains!430 (ListLongMap!20083 (_ BitVec 64) V!51043 (_ BitVec 64)) Unit!42789)

(assert (=> b!1293780 (= lt!579593 (addStillNotContains!430 lt!579595 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6098 (array!85899 array!85897 (_ BitVec 32) (_ BitVec 32) V!51043 V!51043 (_ BitVec 32) Int) ListLongMap!20083)

(assert (=> b!1293780 (= lt!579595 (getCurrentListMapNoExtraKeys!6098 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun res!859848 () Bool)

(assert (=> start!109362 (=> (not res!859848) (not e!738367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109362 (= res!859848 (validMask!0 mask!2175))))

(assert (=> start!109362 e!738367))

(assert (=> start!109362 tp_is_empty!34455))

(assert (=> start!109362 true))

(declare-fun array_inv!31371 (array!85897) Bool)

(assert (=> start!109362 (and (array_inv!31371 _values!1445) e!738370)))

(declare-fun array_inv!31372 (array!85899) Bool)

(assert (=> start!109362 (array_inv!31372 _keys!1741)))

(assert (=> start!109362 tp!101565))

(assert (= (and start!109362 res!859848) b!1293774))

(assert (= (and b!1293774 res!859849) b!1293781))

(assert (= (and b!1293781 res!859851) b!1293776))

(assert (= (and b!1293776 res!859844) b!1293782))

(assert (= (and b!1293782 res!859846) b!1293785))

(assert (= (and b!1293785 res!859843) b!1293783))

(assert (= (and b!1293783 res!859847) b!1293775))

(assert (= (and b!1293775 res!859845) b!1293778))

(assert (= (and b!1293778 (not res!859850)) b!1293780))

(assert (= (and b!1293784 condMapEmpty!53243) mapIsEmpty!53243))

(assert (= (and b!1293784 (not condMapEmpty!53243)) mapNonEmpty!53243))

(get-info :version)

(assert (= (and mapNonEmpty!53243 ((_ is ValueCellFull!16329) mapValue!53243)) b!1293779))

(assert (= (and b!1293784 ((_ is ValueCellFull!16329) mapDefault!53243)) b!1293777))

(assert (= start!109362 b!1293784))

(declare-fun m!1186165 () Bool)

(assert (=> mapNonEmpty!53243 m!1186165))

(declare-fun m!1186167 () Bool)

(assert (=> b!1293785 m!1186167))

(assert (=> b!1293785 m!1186167))

(declare-fun m!1186169 () Bool)

(assert (=> b!1293785 m!1186169))

(declare-fun m!1186171 () Bool)

(assert (=> start!109362 m!1186171))

(declare-fun m!1186173 () Bool)

(assert (=> start!109362 m!1186173))

(declare-fun m!1186175 () Bool)

(assert (=> start!109362 m!1186175))

(declare-fun m!1186177 () Bool)

(assert (=> b!1293778 m!1186177))

(declare-fun m!1186179 () Bool)

(assert (=> b!1293778 m!1186179))

(declare-fun m!1186181 () Bool)

(assert (=> b!1293780 m!1186181))

(assert (=> b!1293780 m!1186181))

(declare-fun m!1186183 () Bool)

(assert (=> b!1293780 m!1186183))

(declare-fun m!1186185 () Bool)

(assert (=> b!1293780 m!1186185))

(declare-fun m!1186187 () Bool)

(assert (=> b!1293780 m!1186187))

(declare-fun m!1186189 () Bool)

(assert (=> b!1293775 m!1186189))

(assert (=> b!1293775 m!1186189))

(declare-fun m!1186191 () Bool)

(assert (=> b!1293775 m!1186191))

(declare-fun m!1186193 () Bool)

(assert (=> b!1293781 m!1186193))

(declare-fun m!1186195 () Bool)

(assert (=> b!1293776 m!1186195))

(check-sat (not b!1293785) b_and!46915 (not b!1293780) (not mapNonEmpty!53243) (not b_next!28815) (not b!1293775) (not start!109362) tp_is_empty!34455 (not b!1293776) (not b!1293781) (not b!1293778))
(check-sat b_and!46915 (not b_next!28815))
