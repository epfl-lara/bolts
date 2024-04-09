; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109632 () Bool)

(assert start!109632)

(declare-fun b_free!29085 () Bool)

(declare-fun b_next!29085 () Bool)

(assert (=> start!109632 (= b_free!29085 (not b_next!29085))))

(declare-fun tp!102374 () Bool)

(declare-fun b_and!47185 () Bool)

(assert (=> start!109632 (= tp!102374 b_and!47185)))

(declare-fun b!1298039 () Bool)

(declare-fun e!740586 () Bool)

(declare-fun tp_is_empty!34725 () Bool)

(assert (=> b!1298039 (= e!740586 tp_is_empty!34725)))

(declare-fun mapIsEmpty!53648 () Bool)

(declare-fun mapRes!53648 () Bool)

(assert (=> mapIsEmpty!53648 mapRes!53648))

(declare-fun b!1298040 () Bool)

(declare-fun e!740585 () Bool)

(assert (=> b!1298040 (= e!740585 tp_is_empty!34725)))

(declare-fun b!1298041 () Bool)

(declare-fun res!862735 () Bool)

(declare-fun e!740587 () Bool)

(assert (=> b!1298041 (=> (not res!862735) (not e!740587))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86419 0))(
  ( (array!86420 (arr!41706 (Array (_ BitVec 32) (_ BitVec 64))) (size!42257 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86419)

(assert (=> b!1298041 (= res!862735 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42257 _keys!1741))))))

(declare-fun b!1298042 () Bool)

(declare-fun res!862733 () Bool)

(assert (=> b!1298042 (=> (not res!862733) (not e!740587))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1298042 (= res!862733 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42257 _keys!1741)) (not (= (select (arr!41706 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1298043 () Bool)

(declare-fun res!862734 () Bool)

(assert (=> b!1298043 (=> (not res!862734) (not e!740587))))

(declare-datatypes ((V!51403 0))(
  ( (V!51404 (val!17437 Int)) )
))
(declare-fun minValue!1387 () V!51403)

(declare-fun zeroValue!1387 () V!51403)

(declare-datatypes ((ValueCell!16464 0))(
  ( (ValueCellFull!16464 (v!20038 V!51403)) (EmptyCell!16464) )
))
(declare-datatypes ((array!86421 0))(
  ( (array!86422 (arr!41707 (Array (_ BitVec 32) ValueCell!16464)) (size!42258 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86421)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22626 0))(
  ( (tuple2!22627 (_1!11323 (_ BitVec 64)) (_2!11323 V!51403)) )
))
(declare-datatypes ((List!29787 0))(
  ( (Nil!29784) (Cons!29783 (h!30992 tuple2!22626) (t!43358 List!29787)) )
))
(declare-datatypes ((ListLongMap!20295 0))(
  ( (ListLongMap!20296 (toList!10163 List!29787)) )
))
(declare-fun contains!8217 (ListLongMap!20295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5137 (array!86419 array!86421 (_ BitVec 32) (_ BitVec 32) V!51403 V!51403 (_ BitVec 32) Int) ListLongMap!20295)

(assert (=> b!1298043 (= res!862734 (contains!8217 (getCurrentListMap!5137 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1298044 () Bool)

(declare-fun res!862732 () Bool)

(assert (=> b!1298044 (=> (not res!862732) (not e!740587))))

(assert (=> b!1298044 (= res!862732 (and (= (size!42258 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42257 _keys!1741) (size!42258 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53648 () Bool)

(declare-fun tp!102375 () Bool)

(assert (=> mapNonEmpty!53648 (= mapRes!53648 (and tp!102375 e!740586))))

(declare-fun mapRest!53648 () (Array (_ BitVec 32) ValueCell!16464))

(declare-fun mapValue!53648 () ValueCell!16464)

(declare-fun mapKey!53648 () (_ BitVec 32))

(assert (=> mapNonEmpty!53648 (= (arr!41707 _values!1445) (store mapRest!53648 mapKey!53648 mapValue!53648))))

(declare-fun b!1298045 () Bool)

(declare-fun e!740583 () Bool)

(assert (=> b!1298045 (= e!740583 (and e!740585 mapRes!53648))))

(declare-fun condMapEmpty!53648 () Bool)

(declare-fun mapDefault!53648 () ValueCell!16464)

(assert (=> b!1298045 (= condMapEmpty!53648 (= (arr!41707 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16464)) mapDefault!53648)))))

(declare-fun res!862731 () Bool)

(assert (=> start!109632 (=> (not res!862731) (not e!740587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109632 (= res!862731 (validMask!0 mask!2175))))

(assert (=> start!109632 e!740587))

(assert (=> start!109632 tp_is_empty!34725))

(assert (=> start!109632 true))

(declare-fun array_inv!31557 (array!86421) Bool)

(assert (=> start!109632 (and (array_inv!31557 _values!1445) e!740583)))

(declare-fun array_inv!31558 (array!86419) Bool)

(assert (=> start!109632 (array_inv!31558 _keys!1741)))

(assert (=> start!109632 tp!102374))

(declare-fun b!1298046 () Bool)

(assert (=> b!1298046 (= e!740587 (not true))))

(assert (=> b!1298046 (contains!8217 (getCurrentListMap!5137 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42920 0))(
  ( (Unit!42921) )
))
(declare-fun lt!580609 () Unit!42920)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!35 (array!86419 array!86421 (_ BitVec 32) (_ BitVec 32) V!51403 V!51403 (_ BitVec 64) (_ BitVec 32) Int) Unit!42920)

(assert (=> b!1298046 (= lt!580609 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!35 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298047 () Bool)

(declare-fun res!862736 () Bool)

(assert (=> b!1298047 (=> (not res!862736) (not e!740587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86419 (_ BitVec 32)) Bool)

(assert (=> b!1298047 (= res!862736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298048 () Bool)

(declare-fun res!862737 () Bool)

(assert (=> b!1298048 (=> (not res!862737) (not e!740587))))

(declare-datatypes ((List!29788 0))(
  ( (Nil!29785) (Cons!29784 (h!30993 (_ BitVec 64)) (t!43359 List!29788)) )
))
(declare-fun arrayNoDuplicates!0 (array!86419 (_ BitVec 32) List!29788) Bool)

(assert (=> b!1298048 (= res!862737 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29785))))

(assert (= (and start!109632 res!862731) b!1298044))

(assert (= (and b!1298044 res!862732) b!1298047))

(assert (= (and b!1298047 res!862736) b!1298048))

(assert (= (and b!1298048 res!862737) b!1298041))

(assert (= (and b!1298041 res!862735) b!1298043))

(assert (= (and b!1298043 res!862734) b!1298042))

(assert (= (and b!1298042 res!862733) b!1298046))

(assert (= (and b!1298045 condMapEmpty!53648) mapIsEmpty!53648))

(assert (= (and b!1298045 (not condMapEmpty!53648)) mapNonEmpty!53648))

(get-info :version)

(assert (= (and mapNonEmpty!53648 ((_ is ValueCellFull!16464) mapValue!53648)) b!1298039))

(assert (= (and b!1298045 ((_ is ValueCellFull!16464) mapDefault!53648)) b!1298040))

(assert (= start!109632 b!1298045))

(declare-fun m!1189493 () Bool)

(assert (=> start!109632 m!1189493))

(declare-fun m!1189495 () Bool)

(assert (=> start!109632 m!1189495))

(declare-fun m!1189497 () Bool)

(assert (=> start!109632 m!1189497))

(declare-fun m!1189499 () Bool)

(assert (=> b!1298043 m!1189499))

(assert (=> b!1298043 m!1189499))

(declare-fun m!1189501 () Bool)

(assert (=> b!1298043 m!1189501))

(declare-fun m!1189503 () Bool)

(assert (=> b!1298046 m!1189503))

(assert (=> b!1298046 m!1189503))

(declare-fun m!1189505 () Bool)

(assert (=> b!1298046 m!1189505))

(declare-fun m!1189507 () Bool)

(assert (=> b!1298046 m!1189507))

(declare-fun m!1189509 () Bool)

(assert (=> b!1298042 m!1189509))

(declare-fun m!1189511 () Bool)

(assert (=> b!1298048 m!1189511))

(declare-fun m!1189513 () Bool)

(assert (=> mapNonEmpty!53648 m!1189513))

(declare-fun m!1189515 () Bool)

(assert (=> b!1298047 m!1189515))

(check-sat (not mapNonEmpty!53648) (not b!1298046) (not b!1298047) (not start!109632) (not b!1298043) (not b_next!29085) (not b!1298048) tp_is_empty!34725 b_and!47185)
(check-sat b_and!47185 (not b_next!29085))
