; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109584 () Bool)

(assert start!109584)

(declare-fun b_free!29037 () Bool)

(declare-fun b_next!29037 () Bool)

(assert (=> start!109584 (= b_free!29037 (not b_next!29037))))

(declare-fun tp!102230 () Bool)

(declare-fun b_and!47137 () Bool)

(assert (=> start!109584 (= tp!102230 b_and!47137)))

(declare-fun mapNonEmpty!53576 () Bool)

(declare-fun mapRes!53576 () Bool)

(declare-fun tp!102231 () Bool)

(declare-fun e!740223 () Bool)

(assert (=> mapNonEmpty!53576 (= mapRes!53576 (and tp!102231 e!740223))))

(declare-datatypes ((V!51339 0))(
  ( (V!51340 (val!17413 Int)) )
))
(declare-datatypes ((ValueCell!16440 0))(
  ( (ValueCellFull!16440 (v!20014 V!51339)) (EmptyCell!16440) )
))
(declare-fun mapRest!53576 () (Array (_ BitVec 32) ValueCell!16440))

(declare-datatypes ((array!86329 0))(
  ( (array!86330 (arr!41661 (Array (_ BitVec 32) ValueCell!16440)) (size!42212 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86329)

(declare-fun mapKey!53576 () (_ BitVec 32))

(declare-fun mapValue!53576 () ValueCell!16440)

(assert (=> mapNonEmpty!53576 (= (arr!41661 _values!1445) (store mapRest!53576 mapKey!53576 mapValue!53576))))

(declare-fun b!1297381 () Bool)

(declare-fun res!862292 () Bool)

(declare-fun e!740225 () Bool)

(assert (=> b!1297381 (=> (not res!862292) (not e!740225))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86331 0))(
  ( (array!86332 (arr!41662 (Array (_ BitVec 32) (_ BitVec 64))) (size!42213 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86331)

(assert (=> b!1297381 (= res!862292 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42213 _keys!1741))))))

(declare-fun mapIsEmpty!53576 () Bool)

(assert (=> mapIsEmpty!53576 mapRes!53576))

(declare-fun b!1297382 () Bool)

(declare-fun res!862291 () Bool)

(assert (=> b!1297382 (=> (not res!862291) (not e!740225))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86331 (_ BitVec 32)) Bool)

(assert (=> b!1297382 (= res!862291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297383 () Bool)

(assert (=> b!1297383 (= e!740225 false)))

(declare-fun minValue!1387 () V!51339)

(declare-fun zeroValue!1387 () V!51339)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!580537 () Bool)

(declare-datatypes ((tuple2!22586 0))(
  ( (tuple2!22587 (_1!11303 (_ BitVec 64)) (_2!11303 V!51339)) )
))
(declare-datatypes ((List!29750 0))(
  ( (Nil!29747) (Cons!29746 (h!30955 tuple2!22586) (t!43321 List!29750)) )
))
(declare-datatypes ((ListLongMap!20255 0))(
  ( (ListLongMap!20256 (toList!10143 List!29750)) )
))
(declare-fun contains!8197 (ListLongMap!20255 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5117 (array!86331 array!86329 (_ BitVec 32) (_ BitVec 32) V!51339 V!51339 (_ BitVec 32) Int) ListLongMap!20255)

(assert (=> b!1297383 (= lt!580537 (contains!8197 (getCurrentListMap!5117 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1297385 () Bool)

(declare-fun res!862293 () Bool)

(assert (=> b!1297385 (=> (not res!862293) (not e!740225))))

(declare-datatypes ((List!29751 0))(
  ( (Nil!29748) (Cons!29747 (h!30956 (_ BitVec 64)) (t!43322 List!29751)) )
))
(declare-fun arrayNoDuplicates!0 (array!86331 (_ BitVec 32) List!29751) Bool)

(assert (=> b!1297385 (= res!862293 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29748))))

(declare-fun b!1297386 () Bool)

(declare-fun res!862289 () Bool)

(assert (=> b!1297386 (=> (not res!862289) (not e!740225))))

(assert (=> b!1297386 (= res!862289 (and (= (size!42212 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42213 _keys!1741) (size!42212 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297387 () Bool)

(declare-fun e!740227 () Bool)

(declare-fun tp_is_empty!34677 () Bool)

(assert (=> b!1297387 (= e!740227 tp_is_empty!34677)))

(declare-fun b!1297388 () Bool)

(declare-fun e!740226 () Bool)

(assert (=> b!1297388 (= e!740226 (and e!740227 mapRes!53576))))

(declare-fun condMapEmpty!53576 () Bool)

(declare-fun mapDefault!53576 () ValueCell!16440)

(assert (=> b!1297388 (= condMapEmpty!53576 (= (arr!41661 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16440)) mapDefault!53576)))))

(declare-fun b!1297384 () Bool)

(assert (=> b!1297384 (= e!740223 tp_is_empty!34677)))

(declare-fun res!862290 () Bool)

(assert (=> start!109584 (=> (not res!862290) (not e!740225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109584 (= res!862290 (validMask!0 mask!2175))))

(assert (=> start!109584 e!740225))

(assert (=> start!109584 tp_is_empty!34677))

(assert (=> start!109584 true))

(declare-fun array_inv!31527 (array!86329) Bool)

(assert (=> start!109584 (and (array_inv!31527 _values!1445) e!740226)))

(declare-fun array_inv!31528 (array!86331) Bool)

(assert (=> start!109584 (array_inv!31528 _keys!1741)))

(assert (=> start!109584 tp!102230))

(assert (= (and start!109584 res!862290) b!1297386))

(assert (= (and b!1297386 res!862289) b!1297382))

(assert (= (and b!1297382 res!862291) b!1297385))

(assert (= (and b!1297385 res!862293) b!1297381))

(assert (= (and b!1297381 res!862292) b!1297383))

(assert (= (and b!1297388 condMapEmpty!53576) mapIsEmpty!53576))

(assert (= (and b!1297388 (not condMapEmpty!53576)) mapNonEmpty!53576))

(get-info :version)

(assert (= (and mapNonEmpty!53576 ((_ is ValueCellFull!16440) mapValue!53576)) b!1297384))

(assert (= (and b!1297388 ((_ is ValueCellFull!16440) mapDefault!53576)) b!1297387))

(assert (= start!109584 b!1297388))

(declare-fun m!1189005 () Bool)

(assert (=> b!1297382 m!1189005))

(declare-fun m!1189007 () Bool)

(assert (=> b!1297383 m!1189007))

(assert (=> b!1297383 m!1189007))

(declare-fun m!1189009 () Bool)

(assert (=> b!1297383 m!1189009))

(declare-fun m!1189011 () Bool)

(assert (=> b!1297385 m!1189011))

(declare-fun m!1189013 () Bool)

(assert (=> start!109584 m!1189013))

(declare-fun m!1189015 () Bool)

(assert (=> start!109584 m!1189015))

(declare-fun m!1189017 () Bool)

(assert (=> start!109584 m!1189017))

(declare-fun m!1189019 () Bool)

(assert (=> mapNonEmpty!53576 m!1189019))

(check-sat tp_is_empty!34677 (not b!1297382) (not mapNonEmpty!53576) (not start!109584) (not b!1297383) (not b!1297385) b_and!47137 (not b_next!29037))
(check-sat b_and!47137 (not b_next!29037))
