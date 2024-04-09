; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109596 () Bool)

(assert start!109596)

(declare-fun b_free!29049 () Bool)

(declare-fun b_next!29049 () Bool)

(assert (=> start!109596 (= b_free!29049 (not b_next!29049))))

(declare-fun tp!102266 () Bool)

(declare-fun b_and!47149 () Bool)

(assert (=> start!109596 (= tp!102266 b_and!47149)))

(declare-fun mapNonEmpty!53594 () Bool)

(declare-fun mapRes!53594 () Bool)

(declare-fun tp!102267 () Bool)

(declare-fun e!740315 () Bool)

(assert (=> mapNonEmpty!53594 (= mapRes!53594 (and tp!102267 e!740315))))

(declare-datatypes ((V!51355 0))(
  ( (V!51356 (val!17419 Int)) )
))
(declare-datatypes ((ValueCell!16446 0))(
  ( (ValueCellFull!16446 (v!20020 V!51355)) (EmptyCell!16446) )
))
(declare-fun mapValue!53594 () ValueCell!16446)

(declare-datatypes ((array!86351 0))(
  ( (array!86352 (arr!41672 (Array (_ BitVec 32) ValueCell!16446)) (size!42223 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86351)

(declare-fun mapRest!53594 () (Array (_ BitVec 32) ValueCell!16446))

(declare-fun mapKey!53594 () (_ BitVec 32))

(assert (=> mapNonEmpty!53594 (= (arr!41672 _values!1445) (store mapRest!53594 mapKey!53594 mapValue!53594))))

(declare-fun b!1297525 () Bool)

(declare-fun res!862379 () Bool)

(declare-fun e!740316 () Bool)

(assert (=> b!1297525 (=> (not res!862379) (not e!740316))))

(declare-datatypes ((array!86353 0))(
  ( (array!86354 (arr!41673 (Array (_ BitVec 32) (_ BitVec 64))) (size!42224 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86353)

(declare-datatypes ((List!29759 0))(
  ( (Nil!29756) (Cons!29755 (h!30964 (_ BitVec 64)) (t!43330 List!29759)) )
))
(declare-fun arrayNoDuplicates!0 (array!86353 (_ BitVec 32) List!29759) Bool)

(assert (=> b!1297525 (= res!862379 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29756))))

(declare-fun mapIsEmpty!53594 () Bool)

(assert (=> mapIsEmpty!53594 mapRes!53594))

(declare-fun b!1297526 () Bool)

(declare-fun e!740317 () Bool)

(declare-fun e!740314 () Bool)

(assert (=> b!1297526 (= e!740317 (and e!740314 mapRes!53594))))

(declare-fun condMapEmpty!53594 () Bool)

(declare-fun mapDefault!53594 () ValueCell!16446)

(assert (=> b!1297526 (= condMapEmpty!53594 (= (arr!41672 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16446)) mapDefault!53594)))))

(declare-fun b!1297527 () Bool)

(declare-fun res!862383 () Bool)

(assert (=> b!1297527 (=> (not res!862383) (not e!740316))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1297527 (= res!862383 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42224 _keys!1741))))))

(declare-fun b!1297528 () Bool)

(declare-fun tp_is_empty!34689 () Bool)

(assert (=> b!1297528 (= e!740315 tp_is_empty!34689)))

(declare-fun b!1297529 () Bool)

(declare-fun res!862381 () Bool)

(assert (=> b!1297529 (=> (not res!862381) (not e!740316))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86353 (_ BitVec 32)) Bool)

(assert (=> b!1297529 (= res!862381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297531 () Bool)

(assert (=> b!1297531 (= e!740314 tp_is_empty!34689)))

(declare-fun b!1297532 () Bool)

(declare-fun res!862380 () Bool)

(assert (=> b!1297532 (=> (not res!862380) (not e!740316))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297532 (= res!862380 (and (= (size!42223 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42224 _keys!1741) (size!42223 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297530 () Bool)

(assert (=> b!1297530 (= e!740316 false)))

(declare-fun minValue!1387 () V!51355)

(declare-fun zeroValue!1387 () V!51355)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!580555 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22596 0))(
  ( (tuple2!22597 (_1!11308 (_ BitVec 64)) (_2!11308 V!51355)) )
))
(declare-datatypes ((List!29760 0))(
  ( (Nil!29757) (Cons!29756 (h!30965 tuple2!22596) (t!43331 List!29760)) )
))
(declare-datatypes ((ListLongMap!20265 0))(
  ( (ListLongMap!20266 (toList!10148 List!29760)) )
))
(declare-fun contains!8202 (ListLongMap!20265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5122 (array!86353 array!86351 (_ BitVec 32) (_ BitVec 32) V!51355 V!51355 (_ BitVec 32) Int) ListLongMap!20265)

(assert (=> b!1297530 (= lt!580555 (contains!8202 (getCurrentListMap!5122 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!862382 () Bool)

(assert (=> start!109596 (=> (not res!862382) (not e!740316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109596 (= res!862382 (validMask!0 mask!2175))))

(assert (=> start!109596 e!740316))

(assert (=> start!109596 tp_is_empty!34689))

(assert (=> start!109596 true))

(declare-fun array_inv!31533 (array!86351) Bool)

(assert (=> start!109596 (and (array_inv!31533 _values!1445) e!740317)))

(declare-fun array_inv!31534 (array!86353) Bool)

(assert (=> start!109596 (array_inv!31534 _keys!1741)))

(assert (=> start!109596 tp!102266))

(assert (= (and start!109596 res!862382) b!1297532))

(assert (= (and b!1297532 res!862380) b!1297529))

(assert (= (and b!1297529 res!862381) b!1297525))

(assert (= (and b!1297525 res!862379) b!1297527))

(assert (= (and b!1297527 res!862383) b!1297530))

(assert (= (and b!1297526 condMapEmpty!53594) mapIsEmpty!53594))

(assert (= (and b!1297526 (not condMapEmpty!53594)) mapNonEmpty!53594))

(get-info :version)

(assert (= (and mapNonEmpty!53594 ((_ is ValueCellFull!16446) mapValue!53594)) b!1297528))

(assert (= (and b!1297526 ((_ is ValueCellFull!16446) mapDefault!53594)) b!1297531))

(assert (= start!109596 b!1297526))

(declare-fun m!1189101 () Bool)

(assert (=> start!109596 m!1189101))

(declare-fun m!1189103 () Bool)

(assert (=> start!109596 m!1189103))

(declare-fun m!1189105 () Bool)

(assert (=> start!109596 m!1189105))

(declare-fun m!1189107 () Bool)

(assert (=> mapNonEmpty!53594 m!1189107))

(declare-fun m!1189109 () Bool)

(assert (=> b!1297529 m!1189109))

(declare-fun m!1189111 () Bool)

(assert (=> b!1297530 m!1189111))

(assert (=> b!1297530 m!1189111))

(declare-fun m!1189113 () Bool)

(assert (=> b!1297530 m!1189113))

(declare-fun m!1189115 () Bool)

(assert (=> b!1297525 m!1189115))

(check-sat (not start!109596) (not b_next!29049) (not mapNonEmpty!53594) b_and!47149 (not b!1297529) (not b!1297530) (not b!1297525) tp_is_empty!34689)
(check-sat b_and!47149 (not b_next!29049))
