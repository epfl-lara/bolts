; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109722 () Bool)

(assert start!109722)

(declare-fun b_free!29139 () Bool)

(declare-fun b_next!29139 () Bool)

(assert (=> start!109722 (= b_free!29139 (not b_next!29139))))

(declare-fun tp!102542 () Bool)

(declare-fun b_and!47245 () Bool)

(assert (=> start!109722 (= tp!102542 b_and!47245)))

(declare-fun b!1299110 () Bool)

(declare-fun res!863415 () Bool)

(declare-fun e!741174 () Bool)

(assert (=> b!1299110 (=> (not res!863415) (not e!741174))))

(declare-datatypes ((array!86529 0))(
  ( (array!86530 (arr!41759 (Array (_ BitVec 32) (_ BitVec 64))) (size!42310 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86529)

(declare-datatypes ((List!29827 0))(
  ( (Nil!29824) (Cons!29823 (h!31032 (_ BitVec 64)) (t!43402 List!29827)) )
))
(declare-fun arrayNoDuplicates!0 (array!86529 (_ BitVec 32) List!29827) Bool)

(assert (=> b!1299110 (= res!863415 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29824))))

(declare-fun b!1299111 () Bool)

(declare-fun e!741177 () Bool)

(declare-fun tp_is_empty!34779 () Bool)

(assert (=> b!1299111 (= e!741177 tp_is_empty!34779)))

(declare-fun mapNonEmpty!53735 () Bool)

(declare-fun mapRes!53735 () Bool)

(declare-fun tp!102543 () Bool)

(declare-fun e!741175 () Bool)

(assert (=> mapNonEmpty!53735 (= mapRes!53735 (and tp!102543 e!741175))))

(declare-fun mapKey!53735 () (_ BitVec 32))

(declare-datatypes ((V!51475 0))(
  ( (V!51476 (val!17464 Int)) )
))
(declare-datatypes ((ValueCell!16491 0))(
  ( (ValueCellFull!16491 (v!20067 V!51475)) (EmptyCell!16491) )
))
(declare-fun mapValue!53735 () ValueCell!16491)

(declare-fun mapRest!53735 () (Array (_ BitVec 32) ValueCell!16491))

(declare-datatypes ((array!86531 0))(
  ( (array!86532 (arr!41760 (Array (_ BitVec 32) ValueCell!16491)) (size!42311 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86531)

(assert (=> mapNonEmpty!53735 (= (arr!41760 _values!1445) (store mapRest!53735 mapKey!53735 mapValue!53735))))

(declare-fun b!1299112 () Bool)

(declare-fun res!863412 () Bool)

(assert (=> b!1299112 (=> (not res!863412) (not e!741174))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1299112 (= res!863412 (and (= (size!42311 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42310 _keys!1741) (size!42311 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!863414 () Bool)

(assert (=> start!109722 (=> (not res!863414) (not e!741174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109722 (= res!863414 (validMask!0 mask!2175))))

(assert (=> start!109722 e!741174))

(assert (=> start!109722 tp_is_empty!34779))

(assert (=> start!109722 true))

(declare-fun e!741173 () Bool)

(declare-fun array_inv!31595 (array!86531) Bool)

(assert (=> start!109722 (and (array_inv!31595 _values!1445) e!741173)))

(declare-fun array_inv!31596 (array!86529) Bool)

(assert (=> start!109722 (array_inv!31596 _keys!1741)))

(assert (=> start!109722 tp!102542))

(declare-fun mapIsEmpty!53735 () Bool)

(assert (=> mapIsEmpty!53735 mapRes!53735))

(declare-fun b!1299113 () Bool)

(declare-fun res!863411 () Bool)

(assert (=> b!1299113 (=> (not res!863411) (not e!741174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86529 (_ BitVec 32)) Bool)

(assert (=> b!1299113 (= res!863411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299114 () Bool)

(assert (=> b!1299114 (= e!741175 tp_is_empty!34779)))

(declare-fun b!1299115 () Bool)

(assert (=> b!1299115 (= e!741174 false)))

(declare-fun minValue!1387 () V!51475)

(declare-fun zeroValue!1387 () V!51475)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580896 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22666 0))(
  ( (tuple2!22667 (_1!11343 (_ BitVec 64)) (_2!11343 V!51475)) )
))
(declare-datatypes ((List!29828 0))(
  ( (Nil!29825) (Cons!29824 (h!31033 tuple2!22666) (t!43403 List!29828)) )
))
(declare-datatypes ((ListLongMap!20335 0))(
  ( (ListLongMap!20336 (toList!10183 List!29828)) )
))
(declare-fun contains!8239 (ListLongMap!20335 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5157 (array!86529 array!86531 (_ BitVec 32) (_ BitVec 32) V!51475 V!51475 (_ BitVec 32) Int) ListLongMap!20335)

(assert (=> b!1299115 (= lt!580896 (contains!8239 (getCurrentListMap!5157 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1299116 () Bool)

(declare-fun res!863413 () Bool)

(assert (=> b!1299116 (=> (not res!863413) (not e!741174))))

(assert (=> b!1299116 (= res!863413 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42310 _keys!1741))))))

(declare-fun b!1299117 () Bool)

(assert (=> b!1299117 (= e!741173 (and e!741177 mapRes!53735))))

(declare-fun condMapEmpty!53735 () Bool)

(declare-fun mapDefault!53735 () ValueCell!16491)

(assert (=> b!1299117 (= condMapEmpty!53735 (= (arr!41760 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16491)) mapDefault!53735)))))

(assert (= (and start!109722 res!863414) b!1299112))

(assert (= (and b!1299112 res!863412) b!1299113))

(assert (= (and b!1299113 res!863411) b!1299110))

(assert (= (and b!1299110 res!863415) b!1299116))

(assert (= (and b!1299116 res!863413) b!1299115))

(assert (= (and b!1299117 condMapEmpty!53735) mapIsEmpty!53735))

(assert (= (and b!1299117 (not condMapEmpty!53735)) mapNonEmpty!53735))

(get-info :version)

(assert (= (and mapNonEmpty!53735 ((_ is ValueCellFull!16491) mapValue!53735)) b!1299114))

(assert (= (and b!1299117 ((_ is ValueCellFull!16491) mapDefault!53735)) b!1299111))

(assert (= start!109722 b!1299117))

(declare-fun m!1190381 () Bool)

(assert (=> start!109722 m!1190381))

(declare-fun m!1190383 () Bool)

(assert (=> start!109722 m!1190383))

(declare-fun m!1190385 () Bool)

(assert (=> start!109722 m!1190385))

(declare-fun m!1190387 () Bool)

(assert (=> b!1299110 m!1190387))

(declare-fun m!1190389 () Bool)

(assert (=> b!1299113 m!1190389))

(declare-fun m!1190391 () Bool)

(assert (=> mapNonEmpty!53735 m!1190391))

(declare-fun m!1190393 () Bool)

(assert (=> b!1299115 m!1190393))

(assert (=> b!1299115 m!1190393))

(declare-fun m!1190395 () Bool)

(assert (=> b!1299115 m!1190395))

(check-sat (not start!109722) (not b!1299113) b_and!47245 (not mapNonEmpty!53735) (not b!1299110) (not b_next!29139) (not b!1299115) tp_is_empty!34779)
(check-sat b_and!47245 (not b_next!29139))
