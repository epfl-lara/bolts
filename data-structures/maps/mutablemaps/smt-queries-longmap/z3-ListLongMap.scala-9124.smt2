; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109566 () Bool)

(assert start!109566)

(declare-fun b_free!29019 () Bool)

(declare-fun b_next!29019 () Bool)

(assert (=> start!109566 (= b_free!29019 (not b_next!29019))))

(declare-fun tp!102176 () Bool)

(declare-fun b_and!47119 () Bool)

(assert (=> start!109566 (= tp!102176 b_and!47119)))

(declare-fun b!1297165 () Bool)

(declare-fun e!740090 () Bool)

(assert (=> b!1297165 (= e!740090 false)))

(declare-datatypes ((V!51315 0))(
  ( (V!51316 (val!17404 Int)) )
))
(declare-fun minValue!1387 () V!51315)

(declare-fun zeroValue!1387 () V!51315)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16431 0))(
  ( (ValueCellFull!16431 (v!20005 V!51315)) (EmptyCell!16431) )
))
(declare-datatypes ((array!86295 0))(
  ( (array!86296 (arr!41644 (Array (_ BitVec 32) ValueCell!16431)) (size!42195 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86295)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!580510 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86297 0))(
  ( (array!86298 (arr!41645 (Array (_ BitVec 32) (_ BitVec 64))) (size!42196 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86297)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22576 0))(
  ( (tuple2!22577 (_1!11298 (_ BitVec 64)) (_2!11298 V!51315)) )
))
(declare-datatypes ((List!29740 0))(
  ( (Nil!29737) (Cons!29736 (h!30945 tuple2!22576) (t!43311 List!29740)) )
))
(declare-datatypes ((ListLongMap!20245 0))(
  ( (ListLongMap!20246 (toList!10138 List!29740)) )
))
(declare-fun contains!8192 (ListLongMap!20245 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5112 (array!86297 array!86295 (_ BitVec 32) (_ BitVec 32) V!51315 V!51315 (_ BitVec 32) Int) ListLongMap!20245)

(assert (=> b!1297165 (= lt!580510 (contains!8192 (getCurrentListMap!5112 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1297166 () Bool)

(declare-fun e!740092 () Bool)

(declare-fun e!740088 () Bool)

(declare-fun mapRes!53549 () Bool)

(assert (=> b!1297166 (= e!740092 (and e!740088 mapRes!53549))))

(declare-fun condMapEmpty!53549 () Bool)

(declare-fun mapDefault!53549 () ValueCell!16431)

(assert (=> b!1297166 (= condMapEmpty!53549 (= (arr!41644 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16431)) mapDefault!53549)))))

(declare-fun res!862158 () Bool)

(assert (=> start!109566 (=> (not res!862158) (not e!740090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109566 (= res!862158 (validMask!0 mask!2175))))

(assert (=> start!109566 e!740090))

(declare-fun tp_is_empty!34659 () Bool)

(assert (=> start!109566 tp_is_empty!34659))

(assert (=> start!109566 true))

(declare-fun array_inv!31517 (array!86295) Bool)

(assert (=> start!109566 (and (array_inv!31517 _values!1445) e!740092)))

(declare-fun array_inv!31518 (array!86297) Bool)

(assert (=> start!109566 (array_inv!31518 _keys!1741)))

(assert (=> start!109566 tp!102176))

(declare-fun b!1297167 () Bool)

(declare-fun res!862156 () Bool)

(assert (=> b!1297167 (=> (not res!862156) (not e!740090))))

(assert (=> b!1297167 (= res!862156 (and (= (size!42195 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42196 _keys!1741) (size!42195 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297168 () Bool)

(declare-fun e!740091 () Bool)

(assert (=> b!1297168 (= e!740091 tp_is_empty!34659)))

(declare-fun mapIsEmpty!53549 () Bool)

(assert (=> mapIsEmpty!53549 mapRes!53549))

(declare-fun b!1297169 () Bool)

(assert (=> b!1297169 (= e!740088 tp_is_empty!34659)))

(declare-fun mapNonEmpty!53549 () Bool)

(declare-fun tp!102177 () Bool)

(assert (=> mapNonEmpty!53549 (= mapRes!53549 (and tp!102177 e!740091))))

(declare-fun mapRest!53549 () (Array (_ BitVec 32) ValueCell!16431))

(declare-fun mapKey!53549 () (_ BitVec 32))

(declare-fun mapValue!53549 () ValueCell!16431)

(assert (=> mapNonEmpty!53549 (= (arr!41644 _values!1445) (store mapRest!53549 mapKey!53549 mapValue!53549))))

(declare-fun b!1297170 () Bool)

(declare-fun res!862155 () Bool)

(assert (=> b!1297170 (=> (not res!862155) (not e!740090))))

(assert (=> b!1297170 (= res!862155 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42196 _keys!1741))))))

(declare-fun b!1297171 () Bool)

(declare-fun res!862154 () Bool)

(assert (=> b!1297171 (=> (not res!862154) (not e!740090))))

(declare-datatypes ((List!29741 0))(
  ( (Nil!29738) (Cons!29737 (h!30946 (_ BitVec 64)) (t!43312 List!29741)) )
))
(declare-fun arrayNoDuplicates!0 (array!86297 (_ BitVec 32) List!29741) Bool)

(assert (=> b!1297171 (= res!862154 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29738))))

(declare-fun b!1297172 () Bool)

(declare-fun res!862157 () Bool)

(assert (=> b!1297172 (=> (not res!862157) (not e!740090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86297 (_ BitVec 32)) Bool)

(assert (=> b!1297172 (= res!862157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109566 res!862158) b!1297167))

(assert (= (and b!1297167 res!862156) b!1297172))

(assert (= (and b!1297172 res!862157) b!1297171))

(assert (= (and b!1297171 res!862154) b!1297170))

(assert (= (and b!1297170 res!862155) b!1297165))

(assert (= (and b!1297166 condMapEmpty!53549) mapIsEmpty!53549))

(assert (= (and b!1297166 (not condMapEmpty!53549)) mapNonEmpty!53549))

(get-info :version)

(assert (= (and mapNonEmpty!53549 ((_ is ValueCellFull!16431) mapValue!53549)) b!1297168))

(assert (= (and b!1297166 ((_ is ValueCellFull!16431) mapDefault!53549)) b!1297169))

(assert (= start!109566 b!1297166))

(declare-fun m!1188861 () Bool)

(assert (=> start!109566 m!1188861))

(declare-fun m!1188863 () Bool)

(assert (=> start!109566 m!1188863))

(declare-fun m!1188865 () Bool)

(assert (=> start!109566 m!1188865))

(declare-fun m!1188867 () Bool)

(assert (=> b!1297172 m!1188867))

(declare-fun m!1188869 () Bool)

(assert (=> b!1297171 m!1188869))

(declare-fun m!1188871 () Bool)

(assert (=> b!1297165 m!1188871))

(assert (=> b!1297165 m!1188871))

(declare-fun m!1188873 () Bool)

(assert (=> b!1297165 m!1188873))

(declare-fun m!1188875 () Bool)

(assert (=> mapNonEmpty!53549 m!1188875))

(check-sat (not b_next!29019) b_and!47119 (not start!109566) (not b!1297171) (not b!1297172) tp_is_empty!34659 (not mapNonEmpty!53549) (not b!1297165))
(check-sat b_and!47119 (not b_next!29019))
