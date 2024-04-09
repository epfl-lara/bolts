; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109572 () Bool)

(assert start!109572)

(declare-fun b_free!29025 () Bool)

(declare-fun b_next!29025 () Bool)

(assert (=> start!109572 (= b_free!29025 (not b_next!29025))))

(declare-fun tp!102194 () Bool)

(declare-fun b_and!47125 () Bool)

(assert (=> start!109572 (= tp!102194 b_and!47125)))

(declare-fun res!862201 () Bool)

(declare-fun e!740134 () Bool)

(assert (=> start!109572 (=> (not res!862201) (not e!740134))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109572 (= res!862201 (validMask!0 mask!2175))))

(assert (=> start!109572 e!740134))

(declare-fun tp_is_empty!34665 () Bool)

(assert (=> start!109572 tp_is_empty!34665))

(assert (=> start!109572 true))

(declare-datatypes ((V!51323 0))(
  ( (V!51324 (val!17407 Int)) )
))
(declare-datatypes ((ValueCell!16434 0))(
  ( (ValueCellFull!16434 (v!20008 V!51323)) (EmptyCell!16434) )
))
(declare-datatypes ((array!86307 0))(
  ( (array!86308 (arr!41650 (Array (_ BitVec 32) ValueCell!16434)) (size!42201 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86307)

(declare-fun e!740133 () Bool)

(declare-fun array_inv!31521 (array!86307) Bool)

(assert (=> start!109572 (and (array_inv!31521 _values!1445) e!740133)))

(declare-datatypes ((array!86309 0))(
  ( (array!86310 (arr!41651 (Array (_ BitVec 32) (_ BitVec 64))) (size!42202 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86309)

(declare-fun array_inv!31522 (array!86309) Bool)

(assert (=> start!109572 (array_inv!31522 _keys!1741)))

(assert (=> start!109572 tp!102194))

(declare-fun b!1297237 () Bool)

(declare-fun res!862203 () Bool)

(assert (=> b!1297237 (=> (not res!862203) (not e!740134))))

(declare-datatypes ((List!29743 0))(
  ( (Nil!29740) (Cons!29739 (h!30948 (_ BitVec 64)) (t!43314 List!29743)) )
))
(declare-fun arrayNoDuplicates!0 (array!86309 (_ BitVec 32) List!29743) Bool)

(assert (=> b!1297237 (= res!862203 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29740))))

(declare-fun mapIsEmpty!53558 () Bool)

(declare-fun mapRes!53558 () Bool)

(assert (=> mapIsEmpty!53558 mapRes!53558))

(declare-fun b!1297238 () Bool)

(declare-fun e!740136 () Bool)

(assert (=> b!1297238 (= e!740133 (and e!740136 mapRes!53558))))

(declare-fun condMapEmpty!53558 () Bool)

(declare-fun mapDefault!53558 () ValueCell!16434)

(assert (=> b!1297238 (= condMapEmpty!53558 (= (arr!41650 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16434)) mapDefault!53558)))))

(declare-fun b!1297239 () Bool)

(declare-fun res!862199 () Bool)

(assert (=> b!1297239 (=> (not res!862199) (not e!740134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86309 (_ BitVec 32)) Bool)

(assert (=> b!1297239 (= res!862199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297240 () Bool)

(declare-fun res!862202 () Bool)

(assert (=> b!1297240 (=> (not res!862202) (not e!740134))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1297240 (= res!862202 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42202 _keys!1741))))))

(declare-fun b!1297241 () Bool)

(declare-fun res!862200 () Bool)

(assert (=> b!1297241 (=> (not res!862200) (not e!740134))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297241 (= res!862200 (and (= (size!42201 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42202 _keys!1741) (size!42201 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297242 () Bool)

(assert (=> b!1297242 (= e!740134 false)))

(declare-fun minValue!1387 () V!51323)

(declare-fun zeroValue!1387 () V!51323)

(declare-fun lt!580519 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22578 0))(
  ( (tuple2!22579 (_1!11299 (_ BitVec 64)) (_2!11299 V!51323)) )
))
(declare-datatypes ((List!29744 0))(
  ( (Nil!29741) (Cons!29740 (h!30949 tuple2!22578) (t!43315 List!29744)) )
))
(declare-datatypes ((ListLongMap!20247 0))(
  ( (ListLongMap!20248 (toList!10139 List!29744)) )
))
(declare-fun contains!8193 (ListLongMap!20247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5113 (array!86309 array!86307 (_ BitVec 32) (_ BitVec 32) V!51323 V!51323 (_ BitVec 32) Int) ListLongMap!20247)

(assert (=> b!1297242 (= lt!580519 (contains!8193 (getCurrentListMap!5113 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1297243 () Bool)

(assert (=> b!1297243 (= e!740136 tp_is_empty!34665)))

(declare-fun b!1297244 () Bool)

(declare-fun e!740135 () Bool)

(assert (=> b!1297244 (= e!740135 tp_is_empty!34665)))

(declare-fun mapNonEmpty!53558 () Bool)

(declare-fun tp!102195 () Bool)

(assert (=> mapNonEmpty!53558 (= mapRes!53558 (and tp!102195 e!740135))))

(declare-fun mapKey!53558 () (_ BitVec 32))

(declare-fun mapValue!53558 () ValueCell!16434)

(declare-fun mapRest!53558 () (Array (_ BitVec 32) ValueCell!16434))

(assert (=> mapNonEmpty!53558 (= (arr!41650 _values!1445) (store mapRest!53558 mapKey!53558 mapValue!53558))))

(assert (= (and start!109572 res!862201) b!1297241))

(assert (= (and b!1297241 res!862200) b!1297239))

(assert (= (and b!1297239 res!862199) b!1297237))

(assert (= (and b!1297237 res!862203) b!1297240))

(assert (= (and b!1297240 res!862202) b!1297242))

(assert (= (and b!1297238 condMapEmpty!53558) mapIsEmpty!53558))

(assert (= (and b!1297238 (not condMapEmpty!53558)) mapNonEmpty!53558))

(get-info :version)

(assert (= (and mapNonEmpty!53558 ((_ is ValueCellFull!16434) mapValue!53558)) b!1297244))

(assert (= (and b!1297238 ((_ is ValueCellFull!16434) mapDefault!53558)) b!1297243))

(assert (= start!109572 b!1297238))

(declare-fun m!1188909 () Bool)

(assert (=> b!1297242 m!1188909))

(assert (=> b!1297242 m!1188909))

(declare-fun m!1188911 () Bool)

(assert (=> b!1297242 m!1188911))

(declare-fun m!1188913 () Bool)

(assert (=> mapNonEmpty!53558 m!1188913))

(declare-fun m!1188915 () Bool)

(assert (=> b!1297239 m!1188915))

(declare-fun m!1188917 () Bool)

(assert (=> start!109572 m!1188917))

(declare-fun m!1188919 () Bool)

(assert (=> start!109572 m!1188919))

(declare-fun m!1188921 () Bool)

(assert (=> start!109572 m!1188921))

(declare-fun m!1188923 () Bool)

(assert (=> b!1297237 m!1188923))

(check-sat (not b_next!29025) b_and!47125 tp_is_empty!34665 (not b!1297239) (not b!1297242) (not mapNonEmpty!53558) (not b!1297237) (not start!109572))
(check-sat b_and!47125 (not b_next!29025))
