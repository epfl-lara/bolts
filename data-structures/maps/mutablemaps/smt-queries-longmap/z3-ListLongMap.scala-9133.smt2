; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109620 () Bool)

(assert start!109620)

(declare-fun b_free!29073 () Bool)

(declare-fun b_next!29073 () Bool)

(assert (=> start!109620 (= b_free!29073 (not b_next!29073))))

(declare-fun tp!102339 () Bool)

(declare-fun b_and!47173 () Bool)

(assert (=> start!109620 (= tp!102339 b_and!47173)))

(declare-fun b!1297859 () Bool)

(declare-fun e!740494 () Bool)

(declare-fun e!740496 () Bool)

(declare-fun mapRes!53630 () Bool)

(assert (=> b!1297859 (= e!740494 (and e!740496 mapRes!53630))))

(declare-fun condMapEmpty!53630 () Bool)

(declare-datatypes ((V!51387 0))(
  ( (V!51388 (val!17431 Int)) )
))
(declare-datatypes ((ValueCell!16458 0))(
  ( (ValueCellFull!16458 (v!20032 V!51387)) (EmptyCell!16458) )
))
(declare-datatypes ((array!86399 0))(
  ( (array!86400 (arr!41696 (Array (_ BitVec 32) ValueCell!16458)) (size!42247 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86399)

(declare-fun mapDefault!53630 () ValueCell!16458)

(assert (=> b!1297859 (= condMapEmpty!53630 (= (arr!41696 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16458)) mapDefault!53630)))))

(declare-fun b!1297860 () Bool)

(declare-fun res!862610 () Bool)

(declare-fun e!740497 () Bool)

(assert (=> b!1297860 (=> (not res!862610) (not e!740497))))

(declare-datatypes ((array!86401 0))(
  ( (array!86402 (arr!41697 (Array (_ BitVec 32) (_ BitVec 64))) (size!42248 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86401)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86401 (_ BitVec 32)) Bool)

(assert (=> b!1297860 (= res!862610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297861 () Bool)

(declare-fun tp_is_empty!34713 () Bool)

(assert (=> b!1297861 (= e!740496 tp_is_empty!34713)))

(declare-fun b!1297862 () Bool)

(declare-fun res!862605 () Bool)

(assert (=> b!1297862 (=> (not res!862605) (not e!740497))))

(declare-datatypes ((List!29780 0))(
  ( (Nil!29777) (Cons!29776 (h!30985 (_ BitVec 64)) (t!43351 List!29780)) )
))
(declare-fun arrayNoDuplicates!0 (array!86401 (_ BitVec 32) List!29780) Bool)

(assert (=> b!1297862 (= res!862605 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29777))))

(declare-fun b!1297863 () Bool)

(declare-fun res!862607 () Bool)

(assert (=> b!1297863 (=> (not res!862607) (not e!740497))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297863 (= res!862607 (and (= (size!42247 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42248 _keys!1741) (size!42247 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53630 () Bool)

(assert (=> mapIsEmpty!53630 mapRes!53630))

(declare-fun b!1297864 () Bool)

(assert (=> b!1297864 (= e!740497 (not true))))

(declare-fun minValue!1387 () V!51387)

(declare-fun zeroValue!1387 () V!51387)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22618 0))(
  ( (tuple2!22619 (_1!11319 (_ BitVec 64)) (_2!11319 V!51387)) )
))
(declare-datatypes ((List!29781 0))(
  ( (Nil!29778) (Cons!29777 (h!30986 tuple2!22618) (t!43352 List!29781)) )
))
(declare-datatypes ((ListLongMap!20287 0))(
  ( (ListLongMap!20288 (toList!10159 List!29781)) )
))
(declare-fun contains!8213 (ListLongMap!20287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5133 (array!86401 array!86399 (_ BitVec 32) (_ BitVec 32) V!51387 V!51387 (_ BitVec 32) Int) ListLongMap!20287)

(assert (=> b!1297864 (contains!8213 (getCurrentListMap!5133 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42912 0))(
  ( (Unit!42913) )
))
(declare-fun lt!580591 () Unit!42912)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!31 (array!86401 array!86399 (_ BitVec 32) (_ BitVec 32) V!51387 V!51387 (_ BitVec 64) (_ BitVec 32) Int) Unit!42912)

(assert (=> b!1297864 (= lt!580591 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!31 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun res!862606 () Bool)

(assert (=> start!109620 (=> (not res!862606) (not e!740497))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109620 (= res!862606 (validMask!0 mask!2175))))

(assert (=> start!109620 e!740497))

(assert (=> start!109620 tp_is_empty!34713))

(assert (=> start!109620 true))

(declare-fun array_inv!31551 (array!86399) Bool)

(assert (=> start!109620 (and (array_inv!31551 _values!1445) e!740494)))

(declare-fun array_inv!31552 (array!86401) Bool)

(assert (=> start!109620 (array_inv!31552 _keys!1741)))

(assert (=> start!109620 tp!102339))

(declare-fun b!1297865 () Bool)

(declare-fun res!862608 () Bool)

(assert (=> b!1297865 (=> (not res!862608) (not e!740497))))

(assert (=> b!1297865 (= res!862608 (contains!8213 (getCurrentListMap!5133 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!53630 () Bool)

(declare-fun tp!102338 () Bool)

(declare-fun e!740495 () Bool)

(assert (=> mapNonEmpty!53630 (= mapRes!53630 (and tp!102338 e!740495))))

(declare-fun mapKey!53630 () (_ BitVec 32))

(declare-fun mapRest!53630 () (Array (_ BitVec 32) ValueCell!16458))

(declare-fun mapValue!53630 () ValueCell!16458)

(assert (=> mapNonEmpty!53630 (= (arr!41696 _values!1445) (store mapRest!53630 mapKey!53630 mapValue!53630))))

(declare-fun b!1297866 () Bool)

(declare-fun res!862611 () Bool)

(assert (=> b!1297866 (=> (not res!862611) (not e!740497))))

(assert (=> b!1297866 (= res!862611 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42248 _keys!1741)) (not (= (select (arr!41697 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1297867 () Bool)

(assert (=> b!1297867 (= e!740495 tp_is_empty!34713)))

(declare-fun b!1297868 () Bool)

(declare-fun res!862609 () Bool)

(assert (=> b!1297868 (=> (not res!862609) (not e!740497))))

(assert (=> b!1297868 (= res!862609 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42248 _keys!1741))))))

(assert (= (and start!109620 res!862606) b!1297863))

(assert (= (and b!1297863 res!862607) b!1297860))

(assert (= (and b!1297860 res!862610) b!1297862))

(assert (= (and b!1297862 res!862605) b!1297868))

(assert (= (and b!1297868 res!862609) b!1297865))

(assert (= (and b!1297865 res!862608) b!1297866))

(assert (= (and b!1297866 res!862611) b!1297864))

(assert (= (and b!1297859 condMapEmpty!53630) mapIsEmpty!53630))

(assert (= (and b!1297859 (not condMapEmpty!53630)) mapNonEmpty!53630))

(get-info :version)

(assert (= (and mapNonEmpty!53630 ((_ is ValueCellFull!16458) mapValue!53630)) b!1297867))

(assert (= (and b!1297859 ((_ is ValueCellFull!16458) mapDefault!53630)) b!1297861))

(assert (= start!109620 b!1297859))

(declare-fun m!1189349 () Bool)

(assert (=> b!1297866 m!1189349))

(declare-fun m!1189351 () Bool)

(assert (=> b!1297862 m!1189351))

(declare-fun m!1189353 () Bool)

(assert (=> b!1297864 m!1189353))

(assert (=> b!1297864 m!1189353))

(declare-fun m!1189355 () Bool)

(assert (=> b!1297864 m!1189355))

(declare-fun m!1189357 () Bool)

(assert (=> b!1297864 m!1189357))

(declare-fun m!1189359 () Bool)

(assert (=> start!109620 m!1189359))

(declare-fun m!1189361 () Bool)

(assert (=> start!109620 m!1189361))

(declare-fun m!1189363 () Bool)

(assert (=> start!109620 m!1189363))

(declare-fun m!1189365 () Bool)

(assert (=> b!1297860 m!1189365))

(declare-fun m!1189367 () Bool)

(assert (=> mapNonEmpty!53630 m!1189367))

(declare-fun m!1189369 () Bool)

(assert (=> b!1297865 m!1189369))

(assert (=> b!1297865 m!1189369))

(declare-fun m!1189371 () Bool)

(assert (=> b!1297865 m!1189371))

(check-sat (not b_next!29073) (not b!1297862) (not b!1297865) tp_is_empty!34713 (not mapNonEmpty!53630) (not start!109620) (not b!1297864) b_and!47173 (not b!1297860))
(check-sat b_and!47173 (not b_next!29073))
