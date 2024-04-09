; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109578 () Bool)

(assert start!109578)

(declare-fun b_free!29031 () Bool)

(declare-fun b_next!29031 () Bool)

(assert (=> start!109578 (= b_free!29031 (not b_next!29031))))

(declare-fun tp!102212 () Bool)

(declare-fun b_and!47131 () Bool)

(assert (=> start!109578 (= tp!102212 b_and!47131)))

(declare-fun res!862247 () Bool)

(declare-fun e!740182 () Bool)

(assert (=> start!109578 (=> (not res!862247) (not e!740182))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109578 (= res!862247 (validMask!0 mask!2175))))

(assert (=> start!109578 e!740182))

(declare-fun tp_is_empty!34671 () Bool)

(assert (=> start!109578 tp_is_empty!34671))

(assert (=> start!109578 true))

(declare-datatypes ((V!51331 0))(
  ( (V!51332 (val!17410 Int)) )
))
(declare-datatypes ((ValueCell!16437 0))(
  ( (ValueCellFull!16437 (v!20011 V!51331)) (EmptyCell!16437) )
))
(declare-datatypes ((array!86319 0))(
  ( (array!86320 (arr!41656 (Array (_ BitVec 32) ValueCell!16437)) (size!42207 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86319)

(declare-fun e!740179 () Bool)

(declare-fun array_inv!31525 (array!86319) Bool)

(assert (=> start!109578 (and (array_inv!31525 _values!1445) e!740179)))

(declare-datatypes ((array!86321 0))(
  ( (array!86322 (arr!41657 (Array (_ BitVec 32) (_ BitVec 64))) (size!42208 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86321)

(declare-fun array_inv!31526 (array!86321) Bool)

(assert (=> start!109578 (array_inv!31526 _keys!1741)))

(assert (=> start!109578 tp!102212))

(declare-fun b!1297309 () Bool)

(declare-fun res!862245 () Bool)

(assert (=> b!1297309 (=> (not res!862245) (not e!740182))))

(declare-datatypes ((List!29748 0))(
  ( (Nil!29745) (Cons!29744 (h!30953 (_ BitVec 64)) (t!43319 List!29748)) )
))
(declare-fun arrayNoDuplicates!0 (array!86321 (_ BitVec 32) List!29748) Bool)

(assert (=> b!1297309 (= res!862245 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29745))))

(declare-fun mapNonEmpty!53567 () Bool)

(declare-fun mapRes!53567 () Bool)

(declare-fun tp!102213 () Bool)

(declare-fun e!740178 () Bool)

(assert (=> mapNonEmpty!53567 (= mapRes!53567 (and tp!102213 e!740178))))

(declare-fun mapValue!53567 () ValueCell!16437)

(declare-fun mapRest!53567 () (Array (_ BitVec 32) ValueCell!16437))

(declare-fun mapKey!53567 () (_ BitVec 32))

(assert (=> mapNonEmpty!53567 (= (arr!41656 _values!1445) (store mapRest!53567 mapKey!53567 mapValue!53567))))

(declare-fun b!1297310 () Bool)

(declare-fun e!740181 () Bool)

(assert (=> b!1297310 (= e!740179 (and e!740181 mapRes!53567))))

(declare-fun condMapEmpty!53567 () Bool)

(declare-fun mapDefault!53567 () ValueCell!16437)

(assert (=> b!1297310 (= condMapEmpty!53567 (= (arr!41656 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16437)) mapDefault!53567)))))

(declare-fun b!1297311 () Bool)

(assert (=> b!1297311 (= e!740182 false)))

(declare-fun minValue!1387 () V!51331)

(declare-fun zeroValue!1387 () V!51331)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!580528 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!22584 0))(
  ( (tuple2!22585 (_1!11302 (_ BitVec 64)) (_2!11302 V!51331)) )
))
(declare-datatypes ((List!29749 0))(
  ( (Nil!29746) (Cons!29745 (h!30954 tuple2!22584) (t!43320 List!29749)) )
))
(declare-datatypes ((ListLongMap!20253 0))(
  ( (ListLongMap!20254 (toList!10142 List!29749)) )
))
(declare-fun contains!8196 (ListLongMap!20253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5116 (array!86321 array!86319 (_ BitVec 32) (_ BitVec 32) V!51331 V!51331 (_ BitVec 32) Int) ListLongMap!20253)

(assert (=> b!1297311 (= lt!580528 (contains!8196 (getCurrentListMap!5116 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1297312 () Bool)

(assert (=> b!1297312 (= e!740178 tp_is_empty!34671)))

(declare-fun b!1297313 () Bool)

(declare-fun res!862246 () Bool)

(assert (=> b!1297313 (=> (not res!862246) (not e!740182))))

(assert (=> b!1297313 (= res!862246 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42208 _keys!1741))))))

(declare-fun mapIsEmpty!53567 () Bool)

(assert (=> mapIsEmpty!53567 mapRes!53567))

(declare-fun b!1297314 () Bool)

(declare-fun res!862244 () Bool)

(assert (=> b!1297314 (=> (not res!862244) (not e!740182))))

(assert (=> b!1297314 (= res!862244 (and (= (size!42207 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42208 _keys!1741) (size!42207 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297315 () Bool)

(assert (=> b!1297315 (= e!740181 tp_is_empty!34671)))

(declare-fun b!1297316 () Bool)

(declare-fun res!862248 () Bool)

(assert (=> b!1297316 (=> (not res!862248) (not e!740182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86321 (_ BitVec 32)) Bool)

(assert (=> b!1297316 (= res!862248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109578 res!862247) b!1297314))

(assert (= (and b!1297314 res!862244) b!1297316))

(assert (= (and b!1297316 res!862248) b!1297309))

(assert (= (and b!1297309 res!862245) b!1297313))

(assert (= (and b!1297313 res!862246) b!1297311))

(assert (= (and b!1297310 condMapEmpty!53567) mapIsEmpty!53567))

(assert (= (and b!1297310 (not condMapEmpty!53567)) mapNonEmpty!53567))

(get-info :version)

(assert (= (and mapNonEmpty!53567 ((_ is ValueCellFull!16437) mapValue!53567)) b!1297312))

(assert (= (and b!1297310 ((_ is ValueCellFull!16437) mapDefault!53567)) b!1297315))

(assert (= start!109578 b!1297310))

(declare-fun m!1188957 () Bool)

(assert (=> b!1297316 m!1188957))

(declare-fun m!1188959 () Bool)

(assert (=> b!1297309 m!1188959))

(declare-fun m!1188961 () Bool)

(assert (=> mapNonEmpty!53567 m!1188961))

(declare-fun m!1188963 () Bool)

(assert (=> start!109578 m!1188963))

(declare-fun m!1188965 () Bool)

(assert (=> start!109578 m!1188965))

(declare-fun m!1188967 () Bool)

(assert (=> start!109578 m!1188967))

(declare-fun m!1188969 () Bool)

(assert (=> b!1297311 m!1188969))

(assert (=> b!1297311 m!1188969))

(declare-fun m!1188971 () Bool)

(assert (=> b!1297311 m!1188971))

(check-sat (not b!1297316) (not start!109578) (not b!1297311) (not b_next!29031) (not b!1297309) b_and!47131 tp_is_empty!34671 (not mapNonEmpty!53567))
(check-sat b_and!47131 (not b_next!29031))
