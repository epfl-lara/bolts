; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109668 () Bool)

(assert start!109668)

(declare-fun b_free!29121 () Bool)

(declare-fun b_next!29121 () Bool)

(assert (=> start!109668 (= b_free!29121 (not b_next!29121))))

(declare-fun tp!102483 () Bool)

(declare-fun b_and!47221 () Bool)

(assert (=> start!109668 (= tp!102483 b_and!47221)))

(declare-fun b!1298579 () Bool)

(declare-fun e!740853 () Bool)

(declare-fun tp_is_empty!34761 () Bool)

(assert (=> b!1298579 (= e!740853 tp_is_empty!34761)))

(declare-fun b!1298580 () Bool)

(declare-fun res!863115 () Bool)

(declare-fun e!740855 () Bool)

(assert (=> b!1298580 (=> (not res!863115) (not e!740855))))

(declare-datatypes ((V!51451 0))(
  ( (V!51452 (val!17455 Int)) )
))
(declare-fun minValue!1387 () V!51451)

(declare-fun zeroValue!1387 () V!51451)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16482 0))(
  ( (ValueCellFull!16482 (v!20056 V!51451)) (EmptyCell!16482) )
))
(declare-datatypes ((array!86491 0))(
  ( (array!86492 (arr!41742 (Array (_ BitVec 32) ValueCell!16482)) (size!42293 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86491)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86493 0))(
  ( (array!86494 (arr!41743 (Array (_ BitVec 32) (_ BitVec 64))) (size!42294 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86493)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22658 0))(
  ( (tuple2!22659 (_1!11339 (_ BitVec 64)) (_2!11339 V!51451)) )
))
(declare-datatypes ((List!29818 0))(
  ( (Nil!29815) (Cons!29814 (h!31023 tuple2!22658) (t!43389 List!29818)) )
))
(declare-datatypes ((ListLongMap!20327 0))(
  ( (ListLongMap!20328 (toList!10179 List!29818)) )
))
(declare-fun contains!8233 (ListLongMap!20327 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5153 (array!86493 array!86491 (_ BitVec 32) (_ BitVec 32) V!51451 V!51451 (_ BitVec 32) Int) ListLongMap!20327)

(assert (=> b!1298580 (= res!863115 (contains!8233 (getCurrentListMap!5153 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1298581 () Bool)

(declare-fun res!863111 () Bool)

(assert (=> b!1298581 (=> (not res!863111) (not e!740855))))

(declare-datatypes ((List!29819 0))(
  ( (Nil!29816) (Cons!29815 (h!31024 (_ BitVec 64)) (t!43390 List!29819)) )
))
(declare-fun arrayNoDuplicates!0 (array!86493 (_ BitVec 32) List!29819) Bool)

(assert (=> b!1298581 (= res!863111 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29816))))

(declare-fun mapNonEmpty!53702 () Bool)

(declare-fun mapRes!53702 () Bool)

(declare-fun tp!102482 () Bool)

(assert (=> mapNonEmpty!53702 (= mapRes!53702 (and tp!102482 e!740853))))

(declare-fun mapValue!53702 () ValueCell!16482)

(declare-fun mapKey!53702 () (_ BitVec 32))

(declare-fun mapRest!53702 () (Array (_ BitVec 32) ValueCell!16482))

(assert (=> mapNonEmpty!53702 (= (arr!41742 _values!1445) (store mapRest!53702 mapKey!53702 mapValue!53702))))

(declare-fun b!1298582 () Bool)

(assert (=> b!1298582 (= e!740855 (not (or (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000) (bvslt (bvsub (size!42294 _keys!1741) (bvadd #b00000000000000000000000000000001 from!2144)) (bvsub (size!42294 _keys!1741) from!2144)))))))

(assert (=> b!1298582 (contains!8233 (getCurrentListMap!5153 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42952 0))(
  ( (Unit!42953) )
))
(declare-fun lt!580663 () Unit!42952)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!51 (array!86493 array!86491 (_ BitVec 32) (_ BitVec 32) V!51451 V!51451 (_ BitVec 64) (_ BitVec 32) Int) Unit!42952)

(assert (=> b!1298582 (= lt!580663 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!51 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298583 () Bool)

(declare-fun res!863109 () Bool)

(assert (=> b!1298583 (=> (not res!863109) (not e!740855))))

(assert (=> b!1298583 (= res!863109 (and (= (size!42293 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42294 _keys!1741) (size!42293 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298584 () Bool)

(declare-fun res!863110 () Bool)

(assert (=> b!1298584 (=> (not res!863110) (not e!740855))))

(assert (=> b!1298584 (= res!863110 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42294 _keys!1741))))))

(declare-fun b!1298585 () Bool)

(declare-fun e!740856 () Bool)

(assert (=> b!1298585 (= e!740856 tp_is_empty!34761)))

(declare-fun b!1298586 () Bool)

(declare-fun res!863114 () Bool)

(assert (=> b!1298586 (=> (not res!863114) (not e!740855))))

(assert (=> b!1298586 (= res!863114 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42294 _keys!1741)) (not (= (select (arr!41743 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1298587 () Bool)

(declare-fun res!863112 () Bool)

(assert (=> b!1298587 (=> (not res!863112) (not e!740855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86493 (_ BitVec 32)) Bool)

(assert (=> b!1298587 (= res!863112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53702 () Bool)

(assert (=> mapIsEmpty!53702 mapRes!53702))

(declare-fun b!1298588 () Bool)

(declare-fun e!740854 () Bool)

(assert (=> b!1298588 (= e!740854 (and e!740856 mapRes!53702))))

(declare-fun condMapEmpty!53702 () Bool)

(declare-fun mapDefault!53702 () ValueCell!16482)

(assert (=> b!1298588 (= condMapEmpty!53702 (= (arr!41742 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16482)) mapDefault!53702)))))

(declare-fun res!863113 () Bool)

(assert (=> start!109668 (=> (not res!863113) (not e!740855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109668 (= res!863113 (validMask!0 mask!2175))))

(assert (=> start!109668 e!740855))

(assert (=> start!109668 tp_is_empty!34761))

(assert (=> start!109668 true))

(declare-fun array_inv!31587 (array!86491) Bool)

(assert (=> start!109668 (and (array_inv!31587 _values!1445) e!740854)))

(declare-fun array_inv!31588 (array!86493) Bool)

(assert (=> start!109668 (array_inv!31588 _keys!1741)))

(assert (=> start!109668 tp!102483))

(assert (= (and start!109668 res!863113) b!1298583))

(assert (= (and b!1298583 res!863109) b!1298587))

(assert (= (and b!1298587 res!863112) b!1298581))

(assert (= (and b!1298581 res!863111) b!1298584))

(assert (= (and b!1298584 res!863110) b!1298580))

(assert (= (and b!1298580 res!863115) b!1298586))

(assert (= (and b!1298586 res!863114) b!1298582))

(assert (= (and b!1298588 condMapEmpty!53702) mapIsEmpty!53702))

(assert (= (and b!1298588 (not condMapEmpty!53702)) mapNonEmpty!53702))

(get-info :version)

(assert (= (and mapNonEmpty!53702 ((_ is ValueCellFull!16482) mapValue!53702)) b!1298579))

(assert (= (and b!1298588 ((_ is ValueCellFull!16482) mapDefault!53702)) b!1298585))

(assert (= start!109668 b!1298588))

(declare-fun m!1189925 () Bool)

(assert (=> b!1298580 m!1189925))

(assert (=> b!1298580 m!1189925))

(declare-fun m!1189927 () Bool)

(assert (=> b!1298580 m!1189927))

(declare-fun m!1189929 () Bool)

(assert (=> b!1298581 m!1189929))

(declare-fun m!1189931 () Bool)

(assert (=> b!1298586 m!1189931))

(declare-fun m!1189933 () Bool)

(assert (=> b!1298587 m!1189933))

(declare-fun m!1189935 () Bool)

(assert (=> start!109668 m!1189935))

(declare-fun m!1189937 () Bool)

(assert (=> start!109668 m!1189937))

(declare-fun m!1189939 () Bool)

(assert (=> start!109668 m!1189939))

(declare-fun m!1189941 () Bool)

(assert (=> b!1298582 m!1189941))

(assert (=> b!1298582 m!1189941))

(declare-fun m!1189943 () Bool)

(assert (=> b!1298582 m!1189943))

(declare-fun m!1189945 () Bool)

(assert (=> b!1298582 m!1189945))

(declare-fun m!1189947 () Bool)

(assert (=> mapNonEmpty!53702 m!1189947))

(check-sat (not start!109668) (not mapNonEmpty!53702) (not b!1298582) (not b_next!29121) b_and!47221 (not b!1298587) tp_is_empty!34761 (not b!1298581) (not b!1298580))
(check-sat b_and!47221 (not b_next!29121))
