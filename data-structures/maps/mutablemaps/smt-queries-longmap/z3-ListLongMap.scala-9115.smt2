; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109512 () Bool)

(assert start!109512)

(declare-fun b_free!28965 () Bool)

(declare-fun b_next!28965 () Bool)

(assert (=> start!109512 (= b_free!28965 (not b_next!28965))))

(declare-fun tp!102014 () Bool)

(declare-fun b_and!47065 () Bool)

(assert (=> start!109512 (= tp!102014 b_and!47065)))

(declare-fun b!1296508 () Bool)

(declare-fun e!739685 () Bool)

(declare-fun tp_is_empty!34605 () Bool)

(assert (=> b!1296508 (= e!739685 tp_is_empty!34605)))

(declare-fun b!1296509 () Bool)

(declare-fun e!739687 () Bool)

(assert (=> b!1296509 (= e!739687 false)))

(declare-datatypes ((V!51243 0))(
  ( (V!51244 (val!17377 Int)) )
))
(declare-fun minValue!1387 () V!51243)

(declare-fun zeroValue!1387 () V!51243)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16404 0))(
  ( (ValueCellFull!16404 (v!19978 V!51243)) (EmptyCell!16404) )
))
(declare-datatypes ((array!86189 0))(
  ( (array!86190 (arr!41591 (Array (_ BitVec 32) ValueCell!16404)) (size!42142 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86189)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!580438 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86191 0))(
  ( (array!86192 (arr!41592 (Array (_ BitVec 32) (_ BitVec 64))) (size!42143 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86191)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22536 0))(
  ( (tuple2!22537 (_1!11278 (_ BitVec 64)) (_2!11278 V!51243)) )
))
(declare-datatypes ((List!29701 0))(
  ( (Nil!29698) (Cons!29697 (h!30906 tuple2!22536) (t!43272 List!29701)) )
))
(declare-datatypes ((ListLongMap!20205 0))(
  ( (ListLongMap!20206 (toList!10118 List!29701)) )
))
(declare-fun contains!8172 (ListLongMap!20205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5092 (array!86191 array!86189 (_ BitVec 32) (_ BitVec 32) V!51243 V!51243 (_ BitVec 32) Int) ListLongMap!20205)

(assert (=> b!1296509 (= lt!580438 (contains!8172 (getCurrentListMap!5092 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53468 () Bool)

(declare-fun mapRes!53468 () Bool)

(assert (=> mapIsEmpty!53468 mapRes!53468))

(declare-fun res!861742 () Bool)

(assert (=> start!109512 (=> (not res!861742) (not e!739687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109512 (= res!861742 (validMask!0 mask!2175))))

(assert (=> start!109512 e!739687))

(assert (=> start!109512 tp_is_empty!34605))

(assert (=> start!109512 true))

(declare-fun e!739684 () Bool)

(declare-fun array_inv!31477 (array!86189) Bool)

(assert (=> start!109512 (and (array_inv!31477 _values!1445) e!739684)))

(declare-fun array_inv!31478 (array!86191) Bool)

(assert (=> start!109512 (array_inv!31478 _keys!1741)))

(assert (=> start!109512 tp!102014))

(declare-fun b!1296510 () Bool)

(declare-fun res!861744 () Bool)

(assert (=> b!1296510 (=> (not res!861744) (not e!739687))))

(assert (=> b!1296510 (= res!861744 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42143 _keys!1741))))))

(declare-fun b!1296511 () Bool)

(declare-fun e!739686 () Bool)

(assert (=> b!1296511 (= e!739686 tp_is_empty!34605)))

(declare-fun b!1296512 () Bool)

(declare-fun res!861740 () Bool)

(assert (=> b!1296512 (=> (not res!861740) (not e!739687))))

(declare-datatypes ((List!29702 0))(
  ( (Nil!29699) (Cons!29698 (h!30907 (_ BitVec 64)) (t!43273 List!29702)) )
))
(declare-fun arrayNoDuplicates!0 (array!86191 (_ BitVec 32) List!29702) Bool)

(assert (=> b!1296512 (= res!861740 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29699))))

(declare-fun b!1296513 () Bool)

(assert (=> b!1296513 (= e!739684 (and e!739685 mapRes!53468))))

(declare-fun condMapEmpty!53468 () Bool)

(declare-fun mapDefault!53468 () ValueCell!16404)

(assert (=> b!1296513 (= condMapEmpty!53468 (= (arr!41591 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16404)) mapDefault!53468)))))

(declare-fun b!1296514 () Bool)

(declare-fun res!861743 () Bool)

(assert (=> b!1296514 (=> (not res!861743) (not e!739687))))

(assert (=> b!1296514 (= res!861743 (and (= (size!42142 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42143 _keys!1741) (size!42142 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53468 () Bool)

(declare-fun tp!102015 () Bool)

(assert (=> mapNonEmpty!53468 (= mapRes!53468 (and tp!102015 e!739686))))

(declare-fun mapRest!53468 () (Array (_ BitVec 32) ValueCell!16404))

(declare-fun mapKey!53468 () (_ BitVec 32))

(declare-fun mapValue!53468 () ValueCell!16404)

(assert (=> mapNonEmpty!53468 (= (arr!41591 _values!1445) (store mapRest!53468 mapKey!53468 mapValue!53468))))

(declare-fun b!1296515 () Bool)

(declare-fun res!861741 () Bool)

(assert (=> b!1296515 (=> (not res!861741) (not e!739687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86191 (_ BitVec 32)) Bool)

(assert (=> b!1296515 (= res!861741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109512 res!861742) b!1296514))

(assert (= (and b!1296514 res!861743) b!1296515))

(assert (= (and b!1296515 res!861741) b!1296512))

(assert (= (and b!1296512 res!861740) b!1296510))

(assert (= (and b!1296510 res!861744) b!1296509))

(assert (= (and b!1296513 condMapEmpty!53468) mapIsEmpty!53468))

(assert (= (and b!1296513 (not condMapEmpty!53468)) mapNonEmpty!53468))

(get-info :version)

(assert (= (and mapNonEmpty!53468 ((_ is ValueCellFull!16404) mapValue!53468)) b!1296511))

(assert (= (and b!1296513 ((_ is ValueCellFull!16404) mapDefault!53468)) b!1296508))

(assert (= start!109512 b!1296513))

(declare-fun m!1188429 () Bool)

(assert (=> mapNonEmpty!53468 m!1188429))

(declare-fun m!1188431 () Bool)

(assert (=> b!1296512 m!1188431))

(declare-fun m!1188433 () Bool)

(assert (=> b!1296509 m!1188433))

(assert (=> b!1296509 m!1188433))

(declare-fun m!1188435 () Bool)

(assert (=> b!1296509 m!1188435))

(declare-fun m!1188437 () Bool)

(assert (=> start!109512 m!1188437))

(declare-fun m!1188439 () Bool)

(assert (=> start!109512 m!1188439))

(declare-fun m!1188441 () Bool)

(assert (=> start!109512 m!1188441))

(declare-fun m!1188443 () Bool)

(assert (=> b!1296515 m!1188443))

(check-sat tp_is_empty!34605 b_and!47065 (not b_next!28965) (not b!1296509) (not mapNonEmpty!53468) (not start!109512) (not b!1296515) (not b!1296512))
(check-sat b_and!47065 (not b_next!28965))
