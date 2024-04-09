; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108684 () Bool)

(assert start!108684)

(declare-fun b_free!28161 () Bool)

(declare-fun b_next!28161 () Bool)

(assert (=> start!108684 (= b_free!28161 (not b_next!28161))))

(declare-fun tp!99599 () Bool)

(declare-fun b_and!46237 () Bool)

(assert (=> start!108684 (= tp!99599 b_and!46237)))

(declare-fun b!1282371 () Bool)

(declare-fun res!851877 () Bool)

(declare-fun e!732744 () Bool)

(assert (=> b!1282371 (=> (not res!851877) (not e!732744))))

(declare-datatypes ((array!84623 0))(
  ( (array!84624 (arr!40809 (Array (_ BitVec 32) (_ BitVec 64))) (size!41360 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84623)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84623 (_ BitVec 32)) Bool)

(assert (=> b!1282371 (= res!851877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282372 () Bool)

(declare-fun e!732745 () Bool)

(declare-fun e!732743 () Bool)

(declare-fun mapRes!52259 () Bool)

(assert (=> b!1282372 (= e!732745 (and e!732743 mapRes!52259))))

(declare-fun condMapEmpty!52259 () Bool)

(declare-datatypes ((V!50171 0))(
  ( (V!50172 (val!16975 Int)) )
))
(declare-datatypes ((ValueCell!16002 0))(
  ( (ValueCellFull!16002 (v!19575 V!50171)) (EmptyCell!16002) )
))
(declare-datatypes ((array!84625 0))(
  ( (array!84626 (arr!40810 (Array (_ BitVec 32) ValueCell!16002)) (size!41361 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84625)

(declare-fun mapDefault!52259 () ValueCell!16002)

(assert (=> b!1282372 (= condMapEmpty!52259 (= (arr!40810 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16002)) mapDefault!52259)))))

(declare-fun mapNonEmpty!52259 () Bool)

(declare-fun tp!99600 () Bool)

(declare-fun e!732741 () Bool)

(assert (=> mapNonEmpty!52259 (= mapRes!52259 (and tp!99600 e!732741))))

(declare-fun mapRest!52259 () (Array (_ BitVec 32) ValueCell!16002))

(declare-fun mapKey!52259 () (_ BitVec 32))

(declare-fun mapValue!52259 () ValueCell!16002)

(assert (=> mapNonEmpty!52259 (= (arr!40810 _values!1445) (store mapRest!52259 mapKey!52259 mapValue!52259))))

(declare-fun b!1282373 () Bool)

(declare-fun res!851874 () Bool)

(assert (=> b!1282373 (=> (not res!851874) (not e!732744))))

(declare-datatypes ((List!29088 0))(
  ( (Nil!29085) (Cons!29084 (h!30293 (_ BitVec 64)) (t!42639 List!29088)) )
))
(declare-fun arrayNoDuplicates!0 (array!84623 (_ BitVec 32) List!29088) Bool)

(assert (=> b!1282373 (= res!851874 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29085))))

(declare-fun b!1282374 () Bool)

(declare-fun tp_is_empty!33801 () Bool)

(assert (=> b!1282374 (= e!732743 tp_is_empty!33801)))

(declare-fun b!1282375 () Bool)

(assert (=> b!1282375 (= e!732744 false)))

(declare-fun minValue!1387 () V!50171)

(declare-fun zeroValue!1387 () V!50171)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576474 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21878 0))(
  ( (tuple2!21879 (_1!10949 (_ BitVec 64)) (_2!10949 V!50171)) )
))
(declare-datatypes ((List!29089 0))(
  ( (Nil!29086) (Cons!29085 (h!30294 tuple2!21878) (t!42640 List!29089)) )
))
(declare-datatypes ((ListLongMap!19547 0))(
  ( (ListLongMap!19548 (toList!9789 List!29089)) )
))
(declare-fun contains!7844 (ListLongMap!19547 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4809 (array!84623 array!84625 (_ BitVec 32) (_ BitVec 32) V!50171 V!50171 (_ BitVec 32) Int) ListLongMap!19547)

(assert (=> b!1282375 (= lt!576474 (contains!7844 (getCurrentListMap!4809 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!52259 () Bool)

(assert (=> mapIsEmpty!52259 mapRes!52259))

(declare-fun b!1282376 () Bool)

(declare-fun res!851873 () Bool)

(assert (=> b!1282376 (=> (not res!851873) (not e!732744))))

(assert (=> b!1282376 (= res!851873 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41360 _keys!1741))))))

(declare-fun b!1282377 () Bool)

(assert (=> b!1282377 (= e!732741 tp_is_empty!33801)))

(declare-fun res!851875 () Bool)

(assert (=> start!108684 (=> (not res!851875) (not e!732744))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108684 (= res!851875 (validMask!0 mask!2175))))

(assert (=> start!108684 e!732744))

(assert (=> start!108684 tp_is_empty!33801))

(assert (=> start!108684 true))

(declare-fun array_inv!30939 (array!84625) Bool)

(assert (=> start!108684 (and (array_inv!30939 _values!1445) e!732745)))

(declare-fun array_inv!30940 (array!84623) Bool)

(assert (=> start!108684 (array_inv!30940 _keys!1741)))

(assert (=> start!108684 tp!99599))

(declare-fun b!1282378 () Bool)

(declare-fun res!851876 () Bool)

(assert (=> b!1282378 (=> (not res!851876) (not e!732744))))

(assert (=> b!1282378 (= res!851876 (and (= (size!41361 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41360 _keys!1741) (size!41361 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108684 res!851875) b!1282378))

(assert (= (and b!1282378 res!851876) b!1282371))

(assert (= (and b!1282371 res!851877) b!1282373))

(assert (= (and b!1282373 res!851874) b!1282376))

(assert (= (and b!1282376 res!851873) b!1282375))

(assert (= (and b!1282372 condMapEmpty!52259) mapIsEmpty!52259))

(assert (= (and b!1282372 (not condMapEmpty!52259)) mapNonEmpty!52259))

(get-info :version)

(assert (= (and mapNonEmpty!52259 ((_ is ValueCellFull!16002) mapValue!52259)) b!1282377))

(assert (= (and b!1282372 ((_ is ValueCellFull!16002) mapDefault!52259)) b!1282374))

(assert (= start!108684 b!1282372))

(declare-fun m!1176607 () Bool)

(assert (=> b!1282375 m!1176607))

(assert (=> b!1282375 m!1176607))

(declare-fun m!1176609 () Bool)

(assert (=> b!1282375 m!1176609))

(declare-fun m!1176611 () Bool)

(assert (=> start!108684 m!1176611))

(declare-fun m!1176613 () Bool)

(assert (=> start!108684 m!1176613))

(declare-fun m!1176615 () Bool)

(assert (=> start!108684 m!1176615))

(declare-fun m!1176617 () Bool)

(assert (=> b!1282373 m!1176617))

(declare-fun m!1176619 () Bool)

(assert (=> b!1282371 m!1176619))

(declare-fun m!1176621 () Bool)

(assert (=> mapNonEmpty!52259 m!1176621))

(check-sat (not b_next!28161) (not b!1282375) tp_is_empty!33801 (not start!108684) (not mapNonEmpty!52259) b_and!46237 (not b!1282371) (not b!1282373))
(check-sat b_and!46237 (not b_next!28161))
