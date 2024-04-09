; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109026 () Bool)

(assert start!109026)

(declare-fun b_free!28479 () Bool)

(declare-fun b_next!28479 () Bool)

(assert (=> start!109026 (= b_free!28479 (not b_next!28479))))

(declare-fun tp!100556 () Bool)

(declare-fun b_and!46579 () Bool)

(assert (=> start!109026 (= tp!100556 b_and!46579)))

(declare-fun b!1287829 () Bool)

(declare-fun res!855417 () Bool)

(declare-fun e!735448 () Bool)

(assert (=> b!1287829 (=> (not res!855417) (not e!735448))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50595 0))(
  ( (V!50596 (val!17134 Int)) )
))
(declare-datatypes ((ValueCell!16161 0))(
  ( (ValueCellFull!16161 (v!19735 V!50595)) (EmptyCell!16161) )
))
(declare-datatypes ((array!85239 0))(
  ( (array!85240 (arr!41116 (Array (_ BitVec 32) ValueCell!16161)) (size!41667 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85239)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85241 0))(
  ( (array!85242 (arr!41117 (Array (_ BitVec 32) (_ BitVec 64))) (size!41668 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85241)

(assert (=> b!1287829 (= res!855417 (and (= (size!41667 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41668 _keys!1741) (size!41667 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287830 () Bool)

(declare-fun e!735445 () Bool)

(declare-fun tp_is_empty!34119 () Bool)

(assert (=> b!1287830 (= e!735445 tp_is_empty!34119)))

(declare-fun b!1287831 () Bool)

(assert (=> b!1287831 (= e!735448 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22124 0))(
  ( (tuple2!22125 (_1!11072 (_ BitVec 64)) (_2!11072 V!50595)) )
))
(declare-datatypes ((List!29323 0))(
  ( (Nil!29320) (Cons!29319 (h!30528 tuple2!22124) (t!42894 List!29323)) )
))
(declare-datatypes ((ListLongMap!19793 0))(
  ( (ListLongMap!19794 (toList!9912 List!29323)) )
))
(declare-fun contains!7968 (ListLongMap!19793 (_ BitVec 64)) Bool)

(assert (=> b!1287831 (not (contains!7968 (ListLongMap!19794 Nil!29320) k0!1205))))

(declare-datatypes ((Unit!42521 0))(
  ( (Unit!42522) )
))
(declare-fun lt!577846 () Unit!42521)

(declare-fun emptyContainsNothing!28 ((_ BitVec 64)) Unit!42521)

(assert (=> b!1287831 (= lt!577846 (emptyContainsNothing!28 k0!1205))))

(declare-fun b!1287832 () Bool)

(declare-fun res!855416 () Bool)

(assert (=> b!1287832 (=> (not res!855416) (not e!735448))))

(declare-datatypes ((List!29324 0))(
  ( (Nil!29321) (Cons!29320 (h!30529 (_ BitVec 64)) (t!42895 List!29324)) )
))
(declare-fun arrayNoDuplicates!0 (array!85241 (_ BitVec 32) List!29324) Bool)

(assert (=> b!1287832 (= res!855416 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29321))))

(declare-fun b!1287833 () Bool)

(declare-fun res!855411 () Bool)

(assert (=> b!1287833 (=> (not res!855411) (not e!735448))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287833 (= res!855411 (not (validKeyInArray!0 (select (arr!41117 _keys!1741) from!2144))))))

(declare-fun b!1287834 () Bool)

(declare-fun res!855412 () Bool)

(assert (=> b!1287834 (=> (not res!855412) (not e!735448))))

(declare-fun minValue!1387 () V!50595)

(declare-fun zeroValue!1387 () V!50595)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4917 (array!85241 array!85239 (_ BitVec 32) (_ BitVec 32) V!50595 V!50595 (_ BitVec 32) Int) ListLongMap!19793)

(assert (=> b!1287834 (= res!855412 (contains!7968 (getCurrentListMap!4917 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1287835 () Bool)

(declare-fun e!735446 () Bool)

(declare-fun mapRes!52739 () Bool)

(assert (=> b!1287835 (= e!735446 (and e!735445 mapRes!52739))))

(declare-fun condMapEmpty!52739 () Bool)

(declare-fun mapDefault!52739 () ValueCell!16161)

(assert (=> b!1287835 (= condMapEmpty!52739 (= (arr!41116 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16161)) mapDefault!52739)))))

(declare-fun b!1287836 () Bool)

(declare-fun e!735447 () Bool)

(assert (=> b!1287836 (= e!735447 tp_is_empty!34119)))

(declare-fun b!1287837 () Bool)

(declare-fun res!855414 () Bool)

(assert (=> b!1287837 (=> (not res!855414) (not e!735448))))

(assert (=> b!1287837 (= res!855414 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41668 _keys!1741))))))

(declare-fun mapNonEmpty!52739 () Bool)

(declare-fun tp!100557 () Bool)

(assert (=> mapNonEmpty!52739 (= mapRes!52739 (and tp!100557 e!735447))))

(declare-fun mapKey!52739 () (_ BitVec 32))

(declare-fun mapRest!52739 () (Array (_ BitVec 32) ValueCell!16161))

(declare-fun mapValue!52739 () ValueCell!16161)

(assert (=> mapNonEmpty!52739 (= (arr!41116 _values!1445) (store mapRest!52739 mapKey!52739 mapValue!52739))))

(declare-fun mapIsEmpty!52739 () Bool)

(assert (=> mapIsEmpty!52739 mapRes!52739))

(declare-fun b!1287838 () Bool)

(declare-fun res!855410 () Bool)

(assert (=> b!1287838 (=> (not res!855410) (not e!735448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85241 (_ BitVec 32)) Bool)

(assert (=> b!1287838 (= res!855410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287839 () Bool)

(declare-fun res!855415 () Bool)

(assert (=> b!1287839 (=> (not res!855415) (not e!735448))))

(assert (=> b!1287839 (= res!855415 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41668 _keys!1741))))))

(declare-fun res!855413 () Bool)

(assert (=> start!109026 (=> (not res!855413) (not e!735448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109026 (= res!855413 (validMask!0 mask!2175))))

(assert (=> start!109026 e!735448))

(assert (=> start!109026 tp_is_empty!34119))

(assert (=> start!109026 true))

(declare-fun array_inv!31149 (array!85239) Bool)

(assert (=> start!109026 (and (array_inv!31149 _values!1445) e!735446)))

(declare-fun array_inv!31150 (array!85241) Bool)

(assert (=> start!109026 (array_inv!31150 _keys!1741)))

(assert (=> start!109026 tp!100556))

(assert (= (and start!109026 res!855413) b!1287829))

(assert (= (and b!1287829 res!855417) b!1287838))

(assert (= (and b!1287838 res!855410) b!1287832))

(assert (= (and b!1287832 res!855416) b!1287837))

(assert (= (and b!1287837 res!855414) b!1287834))

(assert (= (and b!1287834 res!855412) b!1287839))

(assert (= (and b!1287839 res!855415) b!1287833))

(assert (= (and b!1287833 res!855411) b!1287831))

(assert (= (and b!1287835 condMapEmpty!52739) mapIsEmpty!52739))

(assert (= (and b!1287835 (not condMapEmpty!52739)) mapNonEmpty!52739))

(get-info :version)

(assert (= (and mapNonEmpty!52739 ((_ is ValueCellFull!16161) mapValue!52739)) b!1287836))

(assert (= (and b!1287835 ((_ is ValueCellFull!16161) mapDefault!52739)) b!1287830))

(assert (= start!109026 b!1287835))

(declare-fun m!1180601 () Bool)

(assert (=> b!1287833 m!1180601))

(assert (=> b!1287833 m!1180601))

(declare-fun m!1180603 () Bool)

(assert (=> b!1287833 m!1180603))

(declare-fun m!1180605 () Bool)

(assert (=> start!109026 m!1180605))

(declare-fun m!1180607 () Bool)

(assert (=> start!109026 m!1180607))

(declare-fun m!1180609 () Bool)

(assert (=> start!109026 m!1180609))

(declare-fun m!1180611 () Bool)

(assert (=> mapNonEmpty!52739 m!1180611))

(declare-fun m!1180613 () Bool)

(assert (=> b!1287831 m!1180613))

(declare-fun m!1180615 () Bool)

(assert (=> b!1287831 m!1180615))

(declare-fun m!1180617 () Bool)

(assert (=> b!1287834 m!1180617))

(assert (=> b!1287834 m!1180617))

(declare-fun m!1180619 () Bool)

(assert (=> b!1287834 m!1180619))

(declare-fun m!1180621 () Bool)

(assert (=> b!1287838 m!1180621))

(declare-fun m!1180623 () Bool)

(assert (=> b!1287832 m!1180623))

(check-sat (not b!1287831) (not start!109026) (not b!1287832) (not b!1287838) (not b_next!28479) b_and!46579 tp_is_empty!34119 (not mapNonEmpty!52739) (not b!1287834) (not b!1287833))
(check-sat b_and!46579 (not b_next!28479))
