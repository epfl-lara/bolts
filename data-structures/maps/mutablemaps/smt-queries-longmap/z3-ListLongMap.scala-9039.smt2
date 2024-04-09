; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109056 () Bool)

(assert start!109056)

(declare-fun b_free!28509 () Bool)

(declare-fun b_next!28509 () Bool)

(assert (=> start!109056 (= b_free!28509 (not b_next!28509))))

(declare-fun tp!100646 () Bool)

(declare-fun b_and!46609 () Bool)

(assert (=> start!109056 (= tp!100646 b_and!46609)))

(declare-fun b!1288347 () Bool)

(declare-fun res!855798 () Bool)

(declare-fun e!735696 () Bool)

(assert (=> b!1288347 (=> (not res!855798) (not e!735696))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85299 0))(
  ( (array!85300 (arr!41146 (Array (_ BitVec 32) (_ BitVec 64))) (size!41697 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85299)

(assert (=> b!1288347 (= res!855798 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41697 _keys!1741))))))

(declare-fun b!1288348 () Bool)

(declare-fun e!735693 () Bool)

(assert (=> b!1288348 (= e!735696 (not e!735693))))

(declare-fun res!855795 () Bool)

(assert (=> b!1288348 (=> res!855795 e!735693)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288348 (= res!855795 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50635 0))(
  ( (V!50636 (val!17149 Int)) )
))
(declare-datatypes ((tuple2!22150 0))(
  ( (tuple2!22151 (_1!11085 (_ BitVec 64)) (_2!11085 V!50635)) )
))
(declare-datatypes ((List!29347 0))(
  ( (Nil!29344) (Cons!29343 (h!30552 tuple2!22150) (t!42918 List!29347)) )
))
(declare-datatypes ((ListLongMap!19819 0))(
  ( (ListLongMap!19820 (toList!9925 List!29347)) )
))
(declare-fun contains!7981 (ListLongMap!19819 (_ BitVec 64)) Bool)

(assert (=> b!1288348 (not (contains!7981 (ListLongMap!19820 Nil!29344) k0!1205))))

(declare-datatypes ((Unit!42545 0))(
  ( (Unit!42546) )
))
(declare-fun lt!577928 () Unit!42545)

(declare-fun emptyContainsNothing!39 ((_ BitVec 64)) Unit!42545)

(assert (=> b!1288348 (= lt!577928 (emptyContainsNothing!39 k0!1205))))

(declare-fun b!1288349 () Bool)

(declare-fun res!855793 () Bool)

(assert (=> b!1288349 (=> (not res!855793) (not e!735696))))

(declare-datatypes ((List!29348 0))(
  ( (Nil!29345) (Cons!29344 (h!30553 (_ BitVec 64)) (t!42919 List!29348)) )
))
(declare-fun arrayNoDuplicates!0 (array!85299 (_ BitVec 32) List!29348) Bool)

(assert (=> b!1288349 (= res!855793 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29345))))

(declare-fun b!1288350 () Bool)

(declare-fun res!855794 () Bool)

(assert (=> b!1288350 (=> (not res!855794) (not e!735696))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85299 (_ BitVec 32)) Bool)

(assert (=> b!1288350 (= res!855794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288351 () Bool)

(assert (=> b!1288351 (= e!735693 true)))

(declare-fun lt!577930 () ListLongMap!19819)

(declare-fun zeroValue!1387 () V!50635)

(declare-fun +!4300 (ListLongMap!19819 tuple2!22150) ListLongMap!19819)

(assert (=> b!1288351 (not (contains!7981 (+!4300 lt!577930 (tuple2!22151 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!577929 () Unit!42545)

(declare-fun addStillNotContains!345 (ListLongMap!19819 (_ BitVec 64) V!50635 (_ BitVec 64)) Unit!42545)

(assert (=> b!1288351 (= lt!577929 (addStillNotContains!345 lt!577930 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50635)

(declare-datatypes ((ValueCell!16176 0))(
  ( (ValueCellFull!16176 (v!19750 V!50635)) (EmptyCell!16176) )
))
(declare-datatypes ((array!85301 0))(
  ( (array!85302 (arr!41147 (Array (_ BitVec 32) ValueCell!16176)) (size!41698 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85301)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6012 (array!85299 array!85301 (_ BitVec 32) (_ BitVec 32) V!50635 V!50635 (_ BitVec 32) Int) ListLongMap!19819)

(assert (=> b!1288351 (= lt!577930 (getCurrentListMapNoExtraKeys!6012 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!52784 () Bool)

(declare-fun mapRes!52784 () Bool)

(assert (=> mapIsEmpty!52784 mapRes!52784))

(declare-fun b!1288352 () Bool)

(declare-fun res!855796 () Bool)

(assert (=> b!1288352 (=> (not res!855796) (not e!735696))))

(declare-fun getCurrentListMap!4928 (array!85299 array!85301 (_ BitVec 32) (_ BitVec 32) V!50635 V!50635 (_ BitVec 32) Int) ListLongMap!19819)

(assert (=> b!1288352 (= res!855796 (contains!7981 (getCurrentListMap!4928 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun res!855801 () Bool)

(assert (=> start!109056 (=> (not res!855801) (not e!735696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109056 (= res!855801 (validMask!0 mask!2175))))

(assert (=> start!109056 e!735696))

(declare-fun tp_is_empty!34149 () Bool)

(assert (=> start!109056 tp_is_empty!34149))

(assert (=> start!109056 true))

(declare-fun e!735697 () Bool)

(declare-fun array_inv!31171 (array!85301) Bool)

(assert (=> start!109056 (and (array_inv!31171 _values!1445) e!735697)))

(declare-fun array_inv!31172 (array!85299) Bool)

(assert (=> start!109056 (array_inv!31172 _keys!1741)))

(assert (=> start!109056 tp!100646))

(declare-fun b!1288353 () Bool)

(declare-fun e!735695 () Bool)

(assert (=> b!1288353 (= e!735695 tp_is_empty!34149)))

(declare-fun b!1288354 () Bool)

(declare-fun res!855797 () Bool)

(assert (=> b!1288354 (=> (not res!855797) (not e!735696))))

(assert (=> b!1288354 (= res!855797 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41697 _keys!1741))))))

(declare-fun b!1288355 () Bool)

(declare-fun res!855800 () Bool)

(assert (=> b!1288355 (=> (not res!855800) (not e!735696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288355 (= res!855800 (not (validKeyInArray!0 (select (arr!41146 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!52784 () Bool)

(declare-fun tp!100647 () Bool)

(assert (=> mapNonEmpty!52784 (= mapRes!52784 (and tp!100647 e!735695))))

(declare-fun mapRest!52784 () (Array (_ BitVec 32) ValueCell!16176))

(declare-fun mapKey!52784 () (_ BitVec 32))

(declare-fun mapValue!52784 () ValueCell!16176)

(assert (=> mapNonEmpty!52784 (= (arr!41147 _values!1445) (store mapRest!52784 mapKey!52784 mapValue!52784))))

(declare-fun b!1288356 () Bool)

(declare-fun res!855799 () Bool)

(assert (=> b!1288356 (=> (not res!855799) (not e!735696))))

(assert (=> b!1288356 (= res!855799 (and (= (size!41698 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41697 _keys!1741) (size!41698 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288357 () Bool)

(declare-fun e!735694 () Bool)

(assert (=> b!1288357 (= e!735697 (and e!735694 mapRes!52784))))

(declare-fun condMapEmpty!52784 () Bool)

(declare-fun mapDefault!52784 () ValueCell!16176)

(assert (=> b!1288357 (= condMapEmpty!52784 (= (arr!41147 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16176)) mapDefault!52784)))))

(declare-fun b!1288358 () Bool)

(assert (=> b!1288358 (= e!735694 tp_is_empty!34149)))

(assert (= (and start!109056 res!855801) b!1288356))

(assert (= (and b!1288356 res!855799) b!1288350))

(assert (= (and b!1288350 res!855794) b!1288349))

(assert (= (and b!1288349 res!855793) b!1288347))

(assert (= (and b!1288347 res!855798) b!1288352))

(assert (= (and b!1288352 res!855796) b!1288354))

(assert (= (and b!1288354 res!855797) b!1288355))

(assert (= (and b!1288355 res!855800) b!1288348))

(assert (= (and b!1288348 (not res!855795)) b!1288351))

(assert (= (and b!1288357 condMapEmpty!52784) mapIsEmpty!52784))

(assert (= (and b!1288357 (not condMapEmpty!52784)) mapNonEmpty!52784))

(get-info :version)

(assert (= (and mapNonEmpty!52784 ((_ is ValueCellFull!16176) mapValue!52784)) b!1288353))

(assert (= (and b!1288357 ((_ is ValueCellFull!16176) mapDefault!52784)) b!1288358))

(assert (= start!109056 b!1288357))

(declare-fun m!1181005 () Bool)

(assert (=> b!1288350 m!1181005))

(declare-fun m!1181007 () Bool)

(assert (=> b!1288349 m!1181007))

(declare-fun m!1181009 () Bool)

(assert (=> b!1288348 m!1181009))

(declare-fun m!1181011 () Bool)

(assert (=> b!1288348 m!1181011))

(declare-fun m!1181013 () Bool)

(assert (=> mapNonEmpty!52784 m!1181013))

(declare-fun m!1181015 () Bool)

(assert (=> b!1288352 m!1181015))

(assert (=> b!1288352 m!1181015))

(declare-fun m!1181017 () Bool)

(assert (=> b!1288352 m!1181017))

(declare-fun m!1181019 () Bool)

(assert (=> b!1288351 m!1181019))

(assert (=> b!1288351 m!1181019))

(declare-fun m!1181021 () Bool)

(assert (=> b!1288351 m!1181021))

(declare-fun m!1181023 () Bool)

(assert (=> b!1288351 m!1181023))

(declare-fun m!1181025 () Bool)

(assert (=> b!1288351 m!1181025))

(declare-fun m!1181027 () Bool)

(assert (=> start!109056 m!1181027))

(declare-fun m!1181029 () Bool)

(assert (=> start!109056 m!1181029))

(declare-fun m!1181031 () Bool)

(assert (=> start!109056 m!1181031))

(declare-fun m!1181033 () Bool)

(assert (=> b!1288355 m!1181033))

(assert (=> b!1288355 m!1181033))

(declare-fun m!1181035 () Bool)

(assert (=> b!1288355 m!1181035))

(check-sat (not b!1288348) (not b!1288355) (not b!1288351) tp_is_empty!34149 (not start!109056) (not b!1288349) (not b_next!28509) b_and!46609 (not mapNonEmpty!52784) (not b!1288350) (not b!1288352))
(check-sat b_and!46609 (not b_next!28509))
