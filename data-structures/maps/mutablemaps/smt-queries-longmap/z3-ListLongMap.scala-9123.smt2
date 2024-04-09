; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109560 () Bool)

(assert start!109560)

(declare-fun b_free!29013 () Bool)

(declare-fun b_next!29013 () Bool)

(assert (=> start!109560 (= b_free!29013 (not b_next!29013))))

(declare-fun tp!102158 () Bool)

(declare-fun b_and!47113 () Bool)

(assert (=> start!109560 (= tp!102158 b_and!47113)))

(declare-fun mapNonEmpty!53540 () Bool)

(declare-fun mapRes!53540 () Bool)

(declare-fun tp!102159 () Bool)

(declare-fun e!740044 () Bool)

(assert (=> mapNonEmpty!53540 (= mapRes!53540 (and tp!102159 e!740044))))

(declare-datatypes ((V!51307 0))(
  ( (V!51308 (val!17401 Int)) )
))
(declare-datatypes ((ValueCell!16428 0))(
  ( (ValueCellFull!16428 (v!20002 V!51307)) (EmptyCell!16428) )
))
(declare-fun mapRest!53540 () (Array (_ BitVec 32) ValueCell!16428))

(declare-fun mapValue!53540 () ValueCell!16428)

(declare-datatypes ((array!86283 0))(
  ( (array!86284 (arr!41638 (Array (_ BitVec 32) ValueCell!16428)) (size!42189 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86283)

(declare-fun mapKey!53540 () (_ BitVec 32))

(assert (=> mapNonEmpty!53540 (= (arr!41638 _values!1445) (store mapRest!53540 mapKey!53540 mapValue!53540))))

(declare-fun res!862112 () Bool)

(declare-fun e!740046 () Bool)

(assert (=> start!109560 (=> (not res!862112) (not e!740046))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109560 (= res!862112 (validMask!0 mask!2175))))

(assert (=> start!109560 e!740046))

(declare-fun tp_is_empty!34653 () Bool)

(assert (=> start!109560 tp_is_empty!34653))

(assert (=> start!109560 true))

(declare-fun e!740043 () Bool)

(declare-fun array_inv!31515 (array!86283) Bool)

(assert (=> start!109560 (and (array_inv!31515 _values!1445) e!740043)))

(declare-datatypes ((array!86285 0))(
  ( (array!86286 (arr!41639 (Array (_ BitVec 32) (_ BitVec 64))) (size!42190 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86285)

(declare-fun array_inv!31516 (array!86285) Bool)

(assert (=> start!109560 (array_inv!31516 _keys!1741)))

(assert (=> start!109560 tp!102158))

(declare-fun mapIsEmpty!53540 () Bool)

(assert (=> mapIsEmpty!53540 mapRes!53540))

(declare-fun b!1297093 () Bool)

(declare-fun res!862113 () Bool)

(assert (=> b!1297093 (=> (not res!862113) (not e!740046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86285 (_ BitVec 32)) Bool)

(assert (=> b!1297093 (= res!862113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297094 () Bool)

(declare-fun res!862109 () Bool)

(assert (=> b!1297094 (=> (not res!862109) (not e!740046))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297094 (= res!862109 (and (= (size!42189 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42190 _keys!1741) (size!42189 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297095 () Bool)

(declare-fun e!740047 () Bool)

(assert (=> b!1297095 (= e!740043 (and e!740047 mapRes!53540))))

(declare-fun condMapEmpty!53540 () Bool)

(declare-fun mapDefault!53540 () ValueCell!16428)

(assert (=> b!1297095 (= condMapEmpty!53540 (= (arr!41638 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16428)) mapDefault!53540)))))

(declare-fun b!1297096 () Bool)

(assert (=> b!1297096 (= e!740047 tp_is_empty!34653)))

(declare-fun b!1297097 () Bool)

(assert (=> b!1297097 (= e!740044 tp_is_empty!34653)))

(declare-fun b!1297098 () Bool)

(declare-fun res!862111 () Bool)

(assert (=> b!1297098 (=> (not res!862111) (not e!740046))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1297098 (= res!862111 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42190 _keys!1741))))))

(declare-fun b!1297099 () Bool)

(declare-fun res!862110 () Bool)

(assert (=> b!1297099 (=> (not res!862110) (not e!740046))))

(declare-datatypes ((List!29736 0))(
  ( (Nil!29733) (Cons!29732 (h!30941 (_ BitVec 64)) (t!43307 List!29736)) )
))
(declare-fun arrayNoDuplicates!0 (array!86285 (_ BitVec 32) List!29736) Bool)

(assert (=> b!1297099 (= res!862110 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29733))))

(declare-fun b!1297100 () Bool)

(assert (=> b!1297100 (= e!740046 false)))

(declare-fun minValue!1387 () V!51307)

(declare-fun lt!580501 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun zeroValue!1387 () V!51307)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22572 0))(
  ( (tuple2!22573 (_1!11296 (_ BitVec 64)) (_2!11296 V!51307)) )
))
(declare-datatypes ((List!29737 0))(
  ( (Nil!29734) (Cons!29733 (h!30942 tuple2!22572) (t!43308 List!29737)) )
))
(declare-datatypes ((ListLongMap!20241 0))(
  ( (ListLongMap!20242 (toList!10136 List!29737)) )
))
(declare-fun contains!8190 (ListLongMap!20241 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5110 (array!86285 array!86283 (_ BitVec 32) (_ BitVec 32) V!51307 V!51307 (_ BitVec 32) Int) ListLongMap!20241)

(assert (=> b!1297100 (= lt!580501 (contains!8190 (getCurrentListMap!5110 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!109560 res!862112) b!1297094))

(assert (= (and b!1297094 res!862109) b!1297093))

(assert (= (and b!1297093 res!862113) b!1297099))

(assert (= (and b!1297099 res!862110) b!1297098))

(assert (= (and b!1297098 res!862111) b!1297100))

(assert (= (and b!1297095 condMapEmpty!53540) mapIsEmpty!53540))

(assert (= (and b!1297095 (not condMapEmpty!53540)) mapNonEmpty!53540))

(get-info :version)

(assert (= (and mapNonEmpty!53540 ((_ is ValueCellFull!16428) mapValue!53540)) b!1297097))

(assert (= (and b!1297095 ((_ is ValueCellFull!16428) mapDefault!53540)) b!1297096))

(assert (= start!109560 b!1297095))

(declare-fun m!1188813 () Bool)

(assert (=> b!1297100 m!1188813))

(assert (=> b!1297100 m!1188813))

(declare-fun m!1188815 () Bool)

(assert (=> b!1297100 m!1188815))

(declare-fun m!1188817 () Bool)

(assert (=> start!109560 m!1188817))

(declare-fun m!1188819 () Bool)

(assert (=> start!109560 m!1188819))

(declare-fun m!1188821 () Bool)

(assert (=> start!109560 m!1188821))

(declare-fun m!1188823 () Bool)

(assert (=> b!1297093 m!1188823))

(declare-fun m!1188825 () Bool)

(assert (=> b!1297099 m!1188825))

(declare-fun m!1188827 () Bool)

(assert (=> mapNonEmpty!53540 m!1188827))

(check-sat tp_is_empty!34653 (not mapNonEmpty!53540) (not b!1297099) (not b!1297100) b_and!47113 (not b!1297093) (not b_next!29013) (not start!109560))
(check-sat b_and!47113 (not b_next!29013))
