; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109416 () Bool)

(assert start!109416)

(declare-fun b_free!28869 () Bool)

(declare-fun b_next!28869 () Bool)

(assert (=> start!109416 (= b_free!28869 (not b_next!28869))))

(declare-fun tp!101726 () Bool)

(declare-fun b_and!46969 () Bool)

(assert (=> start!109416 (= tp!101726 b_and!46969)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun e!738775 () Bool)

(declare-fun b!1294669 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86003 0))(
  ( (array!86004 (arr!41498 (Array (_ BitVec 32) (_ BitVec 64))) (size!42049 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86003)

(assert (=> b!1294669 (= e!738775 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle from!2144 (size!42049 _keys!1741)))))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51115 0))(
  ( (V!51116 (val!17329 Int)) )
))
(declare-datatypes ((tuple2!22454 0))(
  ( (tuple2!22455 (_1!11237 (_ BitVec 64)) (_2!11237 V!51115)) )
))
(declare-datatypes ((List!29626 0))(
  ( (Nil!29623) (Cons!29622 (h!30831 tuple2!22454) (t!43197 List!29626)) )
))
(declare-datatypes ((ListLongMap!20123 0))(
  ( (ListLongMap!20124 (toList!10077 List!29626)) )
))
(declare-fun contains!8133 (ListLongMap!20123 (_ BitVec 64)) Bool)

(assert (=> b!1294669 (not (contains!8133 (ListLongMap!20124 Nil!29623) k0!1205))))

(declare-datatypes ((Unit!42823 0))(
  ( (Unit!42824) )
))
(declare-fun lt!579682 () Unit!42823)

(declare-fun emptyContainsNothing!168 ((_ BitVec 64)) Unit!42823)

(assert (=> b!1294669 (= lt!579682 (emptyContainsNothing!168 k0!1205))))

(declare-fun b!1294670 () Bool)

(declare-fun res!860499 () Bool)

(assert (=> b!1294670 (=> (not res!860499) (not e!738775))))

(declare-datatypes ((List!29627 0))(
  ( (Nil!29624) (Cons!29623 (h!30832 (_ BitVec 64)) (t!43198 List!29627)) )
))
(declare-fun arrayNoDuplicates!0 (array!86003 (_ BitVec 32) List!29627) Bool)

(assert (=> b!1294670 (= res!860499 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29624))))

(declare-fun b!1294671 () Bool)

(declare-fun e!738778 () Bool)

(declare-fun e!738777 () Bool)

(declare-fun mapRes!53324 () Bool)

(assert (=> b!1294671 (= e!738778 (and e!738777 mapRes!53324))))

(declare-fun condMapEmpty!53324 () Bool)

(declare-datatypes ((ValueCell!16356 0))(
  ( (ValueCellFull!16356 (v!19930 V!51115)) (EmptyCell!16356) )
))
(declare-datatypes ((array!86005 0))(
  ( (array!86006 (arr!41499 (Array (_ BitVec 32) ValueCell!16356)) (size!42050 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86005)

(declare-fun mapDefault!53324 () ValueCell!16356)

(assert (=> b!1294671 (= condMapEmpty!53324 (= (arr!41499 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16356)) mapDefault!53324)))))

(declare-fun res!860501 () Bool)

(assert (=> start!109416 (=> (not res!860501) (not e!738775))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109416 (= res!860501 (validMask!0 mask!2175))))

(assert (=> start!109416 e!738775))

(declare-fun tp_is_empty!34509 () Bool)

(assert (=> start!109416 tp_is_empty!34509))

(assert (=> start!109416 true))

(declare-fun array_inv!31401 (array!86005) Bool)

(assert (=> start!109416 (and (array_inv!31401 _values!1445) e!738778)))

(declare-fun array_inv!31402 (array!86003) Bool)

(assert (=> start!109416 (array_inv!31402 _keys!1741)))

(assert (=> start!109416 tp!101726))

(declare-fun b!1294672 () Bool)

(assert (=> b!1294672 (= e!738777 tp_is_empty!34509)))

(declare-fun mapNonEmpty!53324 () Bool)

(declare-fun tp!101727 () Bool)

(declare-fun e!738774 () Bool)

(assert (=> mapNonEmpty!53324 (= mapRes!53324 (and tp!101727 e!738774))))

(declare-fun mapKey!53324 () (_ BitVec 32))

(declare-fun mapValue!53324 () ValueCell!16356)

(declare-fun mapRest!53324 () (Array (_ BitVec 32) ValueCell!16356))

(assert (=> mapNonEmpty!53324 (= (arr!41499 _values!1445) (store mapRest!53324 mapKey!53324 mapValue!53324))))

(declare-fun b!1294673 () Bool)

(declare-fun res!860495 () Bool)

(assert (=> b!1294673 (=> (not res!860495) (not e!738775))))

(assert (=> b!1294673 (= res!860495 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42049 _keys!1741))))))

(declare-fun b!1294674 () Bool)

(declare-fun res!860500 () Bool)

(assert (=> b!1294674 (=> (not res!860500) (not e!738775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294674 (= res!860500 (not (validKeyInArray!0 (select (arr!41498 _keys!1741) from!2144))))))

(declare-fun b!1294675 () Bool)

(declare-fun res!860497 () Bool)

(assert (=> b!1294675 (=> (not res!860497) (not e!738775))))

(assert (=> b!1294675 (= res!860497 (and (= (size!42050 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42049 _keys!1741) (size!42050 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53324 () Bool)

(assert (=> mapIsEmpty!53324 mapRes!53324))

(declare-fun b!1294676 () Bool)

(declare-fun res!860496 () Bool)

(assert (=> b!1294676 (=> (not res!860496) (not e!738775))))

(assert (=> b!1294676 (= res!860496 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42049 _keys!1741))))))

(declare-fun b!1294677 () Bool)

(declare-fun res!860502 () Bool)

(assert (=> b!1294677 (=> (not res!860502) (not e!738775))))

(declare-fun zeroValue!1387 () V!51115)

(declare-fun minValue!1387 () V!51115)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5060 (array!86003 array!86005 (_ BitVec 32) (_ BitVec 32) V!51115 V!51115 (_ BitVec 32) Int) ListLongMap!20123)

(assert (=> b!1294677 (= res!860502 (contains!8133 (getCurrentListMap!5060 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294678 () Bool)

(assert (=> b!1294678 (= e!738774 tp_is_empty!34509)))

(declare-fun b!1294679 () Bool)

(declare-fun res!860498 () Bool)

(assert (=> b!1294679 (=> (not res!860498) (not e!738775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86003 (_ BitVec 32)) Bool)

(assert (=> b!1294679 (= res!860498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109416 res!860501) b!1294675))

(assert (= (and b!1294675 res!860497) b!1294679))

(assert (= (and b!1294679 res!860498) b!1294670))

(assert (= (and b!1294670 res!860499) b!1294676))

(assert (= (and b!1294676 res!860496) b!1294677))

(assert (= (and b!1294677 res!860502) b!1294673))

(assert (= (and b!1294673 res!860495) b!1294674))

(assert (= (and b!1294674 res!860500) b!1294669))

(assert (= (and b!1294671 condMapEmpty!53324) mapIsEmpty!53324))

(assert (= (and b!1294671 (not condMapEmpty!53324)) mapNonEmpty!53324))

(get-info :version)

(assert (= (and mapNonEmpty!53324 ((_ is ValueCellFull!16356) mapValue!53324)) b!1294678))

(assert (= (and b!1294671 ((_ is ValueCellFull!16356) mapDefault!53324)) b!1294672))

(assert (= start!109416 b!1294671))

(declare-fun m!1186829 () Bool)

(assert (=> b!1294669 m!1186829))

(declare-fun m!1186831 () Bool)

(assert (=> b!1294669 m!1186831))

(declare-fun m!1186833 () Bool)

(assert (=> b!1294674 m!1186833))

(assert (=> b!1294674 m!1186833))

(declare-fun m!1186835 () Bool)

(assert (=> b!1294674 m!1186835))

(declare-fun m!1186837 () Bool)

(assert (=> b!1294677 m!1186837))

(assert (=> b!1294677 m!1186837))

(declare-fun m!1186839 () Bool)

(assert (=> b!1294677 m!1186839))

(declare-fun m!1186841 () Bool)

(assert (=> mapNonEmpty!53324 m!1186841))

(declare-fun m!1186843 () Bool)

(assert (=> b!1294679 m!1186843))

(declare-fun m!1186845 () Bool)

(assert (=> b!1294670 m!1186845))

(declare-fun m!1186847 () Bool)

(assert (=> start!109416 m!1186847))

(declare-fun m!1186849 () Bool)

(assert (=> start!109416 m!1186849))

(declare-fun m!1186851 () Bool)

(assert (=> start!109416 m!1186851))

(check-sat (not b!1294674) (not b!1294677) (not b!1294670) b_and!46969 (not b!1294669) tp_is_empty!34509 (not mapNonEmpty!53324) (not b!1294679) (not start!109416) (not b_next!28869))
(check-sat b_and!46969 (not b_next!28869))
