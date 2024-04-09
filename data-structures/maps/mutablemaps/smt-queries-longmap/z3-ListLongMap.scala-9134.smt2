; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109626 () Bool)

(assert start!109626)

(declare-fun b_free!29079 () Bool)

(declare-fun b_next!29079 () Bool)

(assert (=> start!109626 (= b_free!29079 (not b_next!29079))))

(declare-fun tp!102356 () Bool)

(declare-fun b_and!47179 () Bool)

(assert (=> start!109626 (= tp!102356 b_and!47179)))

(declare-fun b!1297949 () Bool)

(declare-fun res!862672 () Bool)

(declare-fun e!740541 () Bool)

(assert (=> b!1297949 (=> (not res!862672) (not e!740541))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86409 0))(
  ( (array!86410 (arr!41701 (Array (_ BitVec 32) (_ BitVec 64))) (size!42252 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86409)

(assert (=> b!1297949 (= res!862672 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42252 _keys!1741))))))

(declare-fun b!1297950 () Bool)

(declare-fun res!862671 () Bool)

(assert (=> b!1297950 (=> (not res!862671) (not e!740541))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86409 (_ BitVec 32)) Bool)

(assert (=> b!1297950 (= res!862671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297951 () Bool)

(declare-fun res!862668 () Bool)

(assert (=> b!1297951 (=> (not res!862668) (not e!740541))))

(declare-datatypes ((List!29784 0))(
  ( (Nil!29781) (Cons!29780 (h!30989 (_ BitVec 64)) (t!43355 List!29784)) )
))
(declare-fun arrayNoDuplicates!0 (array!86409 (_ BitVec 32) List!29784) Bool)

(assert (=> b!1297951 (= res!862668 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29781))))

(declare-fun b!1297952 () Bool)

(declare-fun res!862669 () Bool)

(assert (=> b!1297952 (=> (not res!862669) (not e!740541))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1297952 (= res!862669 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42252 _keys!1741)) (not (= (select (arr!41701 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1297953 () Bool)

(declare-fun res!862670 () Bool)

(assert (=> b!1297953 (=> (not res!862670) (not e!740541))))

(declare-datatypes ((V!51395 0))(
  ( (V!51396 (val!17434 Int)) )
))
(declare-fun minValue!1387 () V!51395)

(declare-fun zeroValue!1387 () V!51395)

(declare-datatypes ((ValueCell!16461 0))(
  ( (ValueCellFull!16461 (v!20035 V!51395)) (EmptyCell!16461) )
))
(declare-datatypes ((array!86411 0))(
  ( (array!86412 (arr!41702 (Array (_ BitVec 32) ValueCell!16461)) (size!42253 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86411)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22622 0))(
  ( (tuple2!22623 (_1!11321 (_ BitVec 64)) (_2!11321 V!51395)) )
))
(declare-datatypes ((List!29785 0))(
  ( (Nil!29782) (Cons!29781 (h!30990 tuple2!22622) (t!43356 List!29785)) )
))
(declare-datatypes ((ListLongMap!20291 0))(
  ( (ListLongMap!20292 (toList!10161 List!29785)) )
))
(declare-fun contains!8215 (ListLongMap!20291 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5135 (array!86409 array!86411 (_ BitVec 32) (_ BitVec 32) V!51395 V!51395 (_ BitVec 32) Int) ListLongMap!20291)

(assert (=> b!1297953 (= res!862670 (contains!8215 (getCurrentListMap!5135 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53639 () Bool)

(declare-fun mapRes!53639 () Bool)

(assert (=> mapIsEmpty!53639 mapRes!53639))

(declare-fun res!862674 () Bool)

(assert (=> start!109626 (=> (not res!862674) (not e!740541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109626 (= res!862674 (validMask!0 mask!2175))))

(assert (=> start!109626 e!740541))

(declare-fun tp_is_empty!34719 () Bool)

(assert (=> start!109626 tp_is_empty!34719))

(assert (=> start!109626 true))

(declare-fun e!740538 () Bool)

(declare-fun array_inv!31555 (array!86411) Bool)

(assert (=> start!109626 (and (array_inv!31555 _values!1445) e!740538)))

(declare-fun array_inv!31556 (array!86409) Bool)

(assert (=> start!109626 (array_inv!31556 _keys!1741)))

(assert (=> start!109626 tp!102356))

(declare-fun b!1297954 () Bool)

(declare-fun e!740542 () Bool)

(assert (=> b!1297954 (= e!740538 (and e!740542 mapRes!53639))))

(declare-fun condMapEmpty!53639 () Bool)

(declare-fun mapDefault!53639 () ValueCell!16461)

(assert (=> b!1297954 (= condMapEmpty!53639 (= (arr!41702 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16461)) mapDefault!53639)))))

(declare-fun b!1297955 () Bool)

(declare-fun e!740539 () Bool)

(assert (=> b!1297955 (= e!740539 tp_is_empty!34719)))

(declare-fun b!1297956 () Bool)

(declare-fun res!862673 () Bool)

(assert (=> b!1297956 (=> (not res!862673) (not e!740541))))

(assert (=> b!1297956 (= res!862673 (and (= (size!42253 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42252 _keys!1741) (size!42253 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53639 () Bool)

(declare-fun tp!102357 () Bool)

(assert (=> mapNonEmpty!53639 (= mapRes!53639 (and tp!102357 e!740539))))

(declare-fun mapKey!53639 () (_ BitVec 32))

(declare-fun mapValue!53639 () ValueCell!16461)

(declare-fun mapRest!53639 () (Array (_ BitVec 32) ValueCell!16461))

(assert (=> mapNonEmpty!53639 (= (arr!41702 _values!1445) (store mapRest!53639 mapKey!53639 mapValue!53639))))

(declare-fun b!1297957 () Bool)

(assert (=> b!1297957 (= e!740541 (not true))))

(assert (=> b!1297957 (contains!8215 (getCurrentListMap!5135 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42916 0))(
  ( (Unit!42917) )
))
(declare-fun lt!580600 () Unit!42916)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!33 (array!86409 array!86411 (_ BitVec 32) (_ BitVec 32) V!51395 V!51395 (_ BitVec 64) (_ BitVec 32) Int) Unit!42916)

(assert (=> b!1297957 (= lt!580600 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!33 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1297958 () Bool)

(assert (=> b!1297958 (= e!740542 tp_is_empty!34719)))

(assert (= (and start!109626 res!862674) b!1297956))

(assert (= (and b!1297956 res!862673) b!1297950))

(assert (= (and b!1297950 res!862671) b!1297951))

(assert (= (and b!1297951 res!862668) b!1297949))

(assert (= (and b!1297949 res!862672) b!1297953))

(assert (= (and b!1297953 res!862670) b!1297952))

(assert (= (and b!1297952 res!862669) b!1297957))

(assert (= (and b!1297954 condMapEmpty!53639) mapIsEmpty!53639))

(assert (= (and b!1297954 (not condMapEmpty!53639)) mapNonEmpty!53639))

(get-info :version)

(assert (= (and mapNonEmpty!53639 ((_ is ValueCellFull!16461) mapValue!53639)) b!1297955))

(assert (= (and b!1297954 ((_ is ValueCellFull!16461) mapDefault!53639)) b!1297958))

(assert (= start!109626 b!1297954))

(declare-fun m!1189421 () Bool)

(assert (=> b!1297950 m!1189421))

(declare-fun m!1189423 () Bool)

(assert (=> start!109626 m!1189423))

(declare-fun m!1189425 () Bool)

(assert (=> start!109626 m!1189425))

(declare-fun m!1189427 () Bool)

(assert (=> start!109626 m!1189427))

(declare-fun m!1189429 () Bool)

(assert (=> b!1297952 m!1189429))

(declare-fun m!1189431 () Bool)

(assert (=> b!1297951 m!1189431))

(declare-fun m!1189433 () Bool)

(assert (=> b!1297953 m!1189433))

(assert (=> b!1297953 m!1189433))

(declare-fun m!1189435 () Bool)

(assert (=> b!1297953 m!1189435))

(declare-fun m!1189437 () Bool)

(assert (=> b!1297957 m!1189437))

(assert (=> b!1297957 m!1189437))

(declare-fun m!1189439 () Bool)

(assert (=> b!1297957 m!1189439))

(declare-fun m!1189441 () Bool)

(assert (=> b!1297957 m!1189441))

(declare-fun m!1189443 () Bool)

(assert (=> mapNonEmpty!53639 m!1189443))

(check-sat tp_is_empty!34719 (not b!1297950) (not b_next!29079) (not b!1297957) (not start!109626) (not b!1297953) (not mapNonEmpty!53639) (not b!1297951) b_and!47179)
(check-sat b_and!47179 (not b_next!29079))
