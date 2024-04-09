; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109590 () Bool)

(assert start!109590)

(declare-fun b_free!29043 () Bool)

(declare-fun b_next!29043 () Bool)

(assert (=> start!109590 (= b_free!29043 (not b_next!29043))))

(declare-fun tp!102249 () Bool)

(declare-fun b_and!47143 () Bool)

(assert (=> start!109590 (= tp!102249 b_and!47143)))

(declare-fun b!1297453 () Bool)

(declare-fun res!862334 () Bool)

(declare-fun e!740268 () Bool)

(assert (=> b!1297453 (=> (not res!862334) (not e!740268))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86339 0))(
  ( (array!86340 (arr!41666 (Array (_ BitVec 32) (_ BitVec 64))) (size!42217 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86339)

(assert (=> b!1297453 (= res!862334 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42217 _keys!1741))))))

(declare-fun b!1297454 () Bool)

(declare-fun res!862338 () Bool)

(assert (=> b!1297454 (=> (not res!862338) (not e!740268))))

(declare-datatypes ((List!29754 0))(
  ( (Nil!29751) (Cons!29750 (h!30959 (_ BitVec 64)) (t!43325 List!29754)) )
))
(declare-fun arrayNoDuplicates!0 (array!86339 (_ BitVec 32) List!29754) Bool)

(assert (=> b!1297454 (= res!862338 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29751))))

(declare-fun res!862337 () Bool)

(assert (=> start!109590 (=> (not res!862337) (not e!740268))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109590 (= res!862337 (validMask!0 mask!2175))))

(assert (=> start!109590 e!740268))

(declare-fun tp_is_empty!34683 () Bool)

(assert (=> start!109590 tp_is_empty!34683))

(assert (=> start!109590 true))

(declare-datatypes ((V!51347 0))(
  ( (V!51348 (val!17416 Int)) )
))
(declare-datatypes ((ValueCell!16443 0))(
  ( (ValueCellFull!16443 (v!20017 V!51347)) (EmptyCell!16443) )
))
(declare-datatypes ((array!86341 0))(
  ( (array!86342 (arr!41667 (Array (_ BitVec 32) ValueCell!16443)) (size!42218 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86341)

(declare-fun e!740272 () Bool)

(declare-fun array_inv!31529 (array!86341) Bool)

(assert (=> start!109590 (and (array_inv!31529 _values!1445) e!740272)))

(declare-fun array_inv!31530 (array!86339) Bool)

(assert (=> start!109590 (array_inv!31530 _keys!1741)))

(assert (=> start!109590 tp!102249))

(declare-fun b!1297455 () Bool)

(declare-fun res!862336 () Bool)

(assert (=> b!1297455 (=> (not res!862336) (not e!740268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86339 (_ BitVec 32)) Bool)

(assert (=> b!1297455 (= res!862336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297456 () Bool)

(assert (=> b!1297456 (= e!740268 false)))

(declare-fun minValue!1387 () V!51347)

(declare-fun zeroValue!1387 () V!51347)

(declare-fun lt!580546 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22590 0))(
  ( (tuple2!22591 (_1!11305 (_ BitVec 64)) (_2!11305 V!51347)) )
))
(declare-datatypes ((List!29755 0))(
  ( (Nil!29752) (Cons!29751 (h!30960 tuple2!22590) (t!43326 List!29755)) )
))
(declare-datatypes ((ListLongMap!20259 0))(
  ( (ListLongMap!20260 (toList!10145 List!29755)) )
))
(declare-fun contains!8199 (ListLongMap!20259 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5119 (array!86339 array!86341 (_ BitVec 32) (_ BitVec 32) V!51347 V!51347 (_ BitVec 32) Int) ListLongMap!20259)

(assert (=> b!1297456 (= lt!580546 (contains!8199 (getCurrentListMap!5119 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1297457 () Bool)

(declare-fun e!740269 () Bool)

(declare-fun mapRes!53585 () Bool)

(assert (=> b!1297457 (= e!740272 (and e!740269 mapRes!53585))))

(declare-fun condMapEmpty!53585 () Bool)

(declare-fun mapDefault!53585 () ValueCell!16443)

(assert (=> b!1297457 (= condMapEmpty!53585 (= (arr!41667 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16443)) mapDefault!53585)))))

(declare-fun b!1297458 () Bool)

(declare-fun e!740270 () Bool)

(assert (=> b!1297458 (= e!740270 tp_is_empty!34683)))

(declare-fun b!1297459 () Bool)

(assert (=> b!1297459 (= e!740269 tp_is_empty!34683)))

(declare-fun mapIsEmpty!53585 () Bool)

(assert (=> mapIsEmpty!53585 mapRes!53585))

(declare-fun mapNonEmpty!53585 () Bool)

(declare-fun tp!102248 () Bool)

(assert (=> mapNonEmpty!53585 (= mapRes!53585 (and tp!102248 e!740270))))

(declare-fun mapKey!53585 () (_ BitVec 32))

(declare-fun mapValue!53585 () ValueCell!16443)

(declare-fun mapRest!53585 () (Array (_ BitVec 32) ValueCell!16443))

(assert (=> mapNonEmpty!53585 (= (arr!41667 _values!1445) (store mapRest!53585 mapKey!53585 mapValue!53585))))

(declare-fun b!1297460 () Bool)

(declare-fun res!862335 () Bool)

(assert (=> b!1297460 (=> (not res!862335) (not e!740268))))

(assert (=> b!1297460 (= res!862335 (and (= (size!42218 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42217 _keys!1741) (size!42218 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109590 res!862337) b!1297460))

(assert (= (and b!1297460 res!862335) b!1297455))

(assert (= (and b!1297455 res!862336) b!1297454))

(assert (= (and b!1297454 res!862338) b!1297453))

(assert (= (and b!1297453 res!862334) b!1297456))

(assert (= (and b!1297457 condMapEmpty!53585) mapIsEmpty!53585))

(assert (= (and b!1297457 (not condMapEmpty!53585)) mapNonEmpty!53585))

(get-info :version)

(assert (= (and mapNonEmpty!53585 ((_ is ValueCellFull!16443) mapValue!53585)) b!1297458))

(assert (= (and b!1297457 ((_ is ValueCellFull!16443) mapDefault!53585)) b!1297459))

(assert (= start!109590 b!1297457))

(declare-fun m!1189053 () Bool)

(assert (=> mapNonEmpty!53585 m!1189053))

(declare-fun m!1189055 () Bool)

(assert (=> b!1297454 m!1189055))

(declare-fun m!1189057 () Bool)

(assert (=> b!1297456 m!1189057))

(assert (=> b!1297456 m!1189057))

(declare-fun m!1189059 () Bool)

(assert (=> b!1297456 m!1189059))

(declare-fun m!1189061 () Bool)

(assert (=> b!1297455 m!1189061))

(declare-fun m!1189063 () Bool)

(assert (=> start!109590 m!1189063))

(declare-fun m!1189065 () Bool)

(assert (=> start!109590 m!1189065))

(declare-fun m!1189067 () Bool)

(assert (=> start!109590 m!1189067))

(check-sat (not b!1297456) (not b_next!29043) b_and!47143 tp_is_empty!34683 (not start!109590) (not mapNonEmpty!53585) (not b!1297455) (not b!1297454))
(check-sat b_and!47143 (not b_next!29043))
