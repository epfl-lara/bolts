; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109188 () Bool)

(assert start!109188)

(declare-fun b_free!28641 () Bool)

(declare-fun b_next!28641 () Bool)

(assert (=> start!109188 (= b_free!28641 (not b_next!28641))))

(declare-fun tp!101042 () Bool)

(declare-fun b_and!46741 () Bool)

(assert (=> start!109188 (= tp!101042 b_and!46741)))

(declare-fun b!1290723 () Bool)

(declare-fun e!736883 () Bool)

(declare-fun e!736884 () Bool)

(assert (=> b!1290723 (= e!736883 (not e!736884))))

(declare-fun res!857576 () Bool)

(assert (=> b!1290723 (=> res!857576 e!736884)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1290723 (= res!857576 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50811 0))(
  ( (V!50812 (val!17215 Int)) )
))
(declare-datatypes ((tuple2!22260 0))(
  ( (tuple2!22261 (_1!11140 (_ BitVec 64)) (_2!11140 V!50811)) )
))
(declare-datatypes ((List!29456 0))(
  ( (Nil!29453) (Cons!29452 (h!30661 tuple2!22260) (t!43027 List!29456)) )
))
(declare-datatypes ((ListLongMap!19929 0))(
  ( (ListLongMap!19930 (toList!9980 List!29456)) )
))
(declare-fun contains!8036 (ListLongMap!19929 (_ BitVec 64)) Bool)

(assert (=> b!1290723 (not (contains!8036 (ListLongMap!19930 Nil!29453) k0!1205))))

(declare-datatypes ((Unit!42649 0))(
  ( (Unit!42650) )
))
(declare-fun lt!578756 () Unit!42649)

(declare-fun emptyContainsNothing!85 ((_ BitVec 64)) Unit!42649)

(assert (=> b!1290723 (= lt!578756 (emptyContainsNothing!85 k0!1205))))

(declare-fun mapIsEmpty!52982 () Bool)

(declare-fun mapRes!52982 () Bool)

(assert (=> mapIsEmpty!52982 mapRes!52982))

(declare-fun b!1290724 () Bool)

(declare-fun res!857583 () Bool)

(assert (=> b!1290724 (=> (not res!857583) (not e!736883))))

(declare-datatypes ((array!85559 0))(
  ( (array!85560 (arr!41276 (Array (_ BitVec 32) (_ BitVec 64))) (size!41827 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85559)

(declare-datatypes ((List!29457 0))(
  ( (Nil!29454) (Cons!29453 (h!30662 (_ BitVec 64)) (t!43028 List!29457)) )
))
(declare-fun arrayNoDuplicates!0 (array!85559 (_ BitVec 32) List!29457) Bool)

(assert (=> b!1290724 (= res!857583 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29454))))

(declare-fun mapNonEmpty!52982 () Bool)

(declare-fun tp!101043 () Bool)

(declare-fun e!736885 () Bool)

(assert (=> mapNonEmpty!52982 (= mapRes!52982 (and tp!101043 e!736885))))

(declare-datatypes ((ValueCell!16242 0))(
  ( (ValueCellFull!16242 (v!19816 V!50811)) (EmptyCell!16242) )
))
(declare-fun mapValue!52982 () ValueCell!16242)

(declare-fun mapKey!52982 () (_ BitVec 32))

(declare-datatypes ((array!85561 0))(
  ( (array!85562 (arr!41277 (Array (_ BitVec 32) ValueCell!16242)) (size!41828 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85561)

(declare-fun mapRest!52982 () (Array (_ BitVec 32) ValueCell!16242))

(assert (=> mapNonEmpty!52982 (= (arr!41277 _values!1445) (store mapRest!52982 mapKey!52982 mapValue!52982))))

(declare-fun b!1290725 () Bool)

(declare-fun res!857582 () Bool)

(assert (=> b!1290725 (=> (not res!857582) (not e!736883))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85559 (_ BitVec 32)) Bool)

(assert (=> b!1290725 (= res!857582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290726 () Bool)

(declare-fun res!857581 () Bool)

(assert (=> b!1290726 (=> (not res!857581) (not e!736883))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1290726 (= res!857581 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41827 _keys!1741))))))

(declare-fun b!1290728 () Bool)

(declare-fun res!857579 () Bool)

(assert (=> b!1290728 (=> (not res!857579) (not e!736883))))

(declare-fun minValue!1387 () V!50811)

(declare-fun zeroValue!1387 () V!50811)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4980 (array!85559 array!85561 (_ BitVec 32) (_ BitVec 32) V!50811 V!50811 (_ BitVec 32) Int) ListLongMap!19929)

(assert (=> b!1290728 (= res!857579 (contains!8036 (getCurrentListMap!4980 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290729 () Bool)

(declare-fun res!857577 () Bool)

(assert (=> b!1290729 (=> (not res!857577) (not e!736883))))

(assert (=> b!1290729 (= res!857577 (and (= (size!41828 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41827 _keys!1741) (size!41828 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290730 () Bool)

(declare-fun e!736881 () Bool)

(declare-fun e!736880 () Bool)

(assert (=> b!1290730 (= e!736881 (and e!736880 mapRes!52982))))

(declare-fun condMapEmpty!52982 () Bool)

(declare-fun mapDefault!52982 () ValueCell!16242)

(assert (=> b!1290730 (= condMapEmpty!52982 (= (arr!41277 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16242)) mapDefault!52982)))))

(declare-fun b!1290731 () Bool)

(declare-fun res!857575 () Bool)

(assert (=> b!1290731 (=> (not res!857575) (not e!736883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290731 (= res!857575 (not (validKeyInArray!0 (select (arr!41276 _keys!1741) from!2144))))))

(declare-fun b!1290732 () Bool)

(assert (=> b!1290732 (= e!736884 true)))

(assert (=> b!1290732 false))

(declare-fun lt!578753 () ListLongMap!19929)

(declare-fun lt!578757 () Unit!42649)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!40 ((_ BitVec 64) (_ BitVec 64) V!50811 ListLongMap!19929) Unit!42649)

(assert (=> b!1290732 (= lt!578757 (lemmaInListMapAfterAddingDiffThenInBefore!40 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578753))))

(declare-fun lt!578755 () ListLongMap!19929)

(declare-fun +!4345 (ListLongMap!19929 tuple2!22260) ListLongMap!19929)

(assert (=> b!1290732 (not (contains!8036 (+!4345 lt!578755 (tuple2!22261 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578754 () Unit!42649)

(declare-fun addStillNotContains!390 (ListLongMap!19929 (_ BitVec 64) V!50811 (_ BitVec 64)) Unit!42649)

(assert (=> b!1290732 (= lt!578754 (addStillNotContains!390 lt!578755 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290732 (not (contains!8036 lt!578753 k0!1205))))

(assert (=> b!1290732 (= lt!578753 (+!4345 lt!578755 (tuple2!22261 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578758 () Unit!42649)

(assert (=> b!1290732 (= lt!578758 (addStillNotContains!390 lt!578755 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6057 (array!85559 array!85561 (_ BitVec 32) (_ BitVec 32) V!50811 V!50811 (_ BitVec 32) Int) ListLongMap!19929)

(assert (=> b!1290732 (= lt!578755 (getCurrentListMapNoExtraKeys!6057 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290727 () Bool)

(declare-fun tp_is_empty!34281 () Bool)

(assert (=> b!1290727 (= e!736880 tp_is_empty!34281)))

(declare-fun res!857580 () Bool)

(assert (=> start!109188 (=> (not res!857580) (not e!736883))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109188 (= res!857580 (validMask!0 mask!2175))))

(assert (=> start!109188 e!736883))

(assert (=> start!109188 tp_is_empty!34281))

(assert (=> start!109188 true))

(declare-fun array_inv!31257 (array!85561) Bool)

(assert (=> start!109188 (and (array_inv!31257 _values!1445) e!736881)))

(declare-fun array_inv!31258 (array!85559) Bool)

(assert (=> start!109188 (array_inv!31258 _keys!1741)))

(assert (=> start!109188 tp!101042))

(declare-fun b!1290733 () Bool)

(assert (=> b!1290733 (= e!736885 tp_is_empty!34281)))

(declare-fun b!1290734 () Bool)

(declare-fun res!857578 () Bool)

(assert (=> b!1290734 (=> (not res!857578) (not e!736883))))

(assert (=> b!1290734 (= res!857578 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41827 _keys!1741))))))

(assert (= (and start!109188 res!857580) b!1290729))

(assert (= (and b!1290729 res!857577) b!1290725))

(assert (= (and b!1290725 res!857582) b!1290724))

(assert (= (and b!1290724 res!857583) b!1290734))

(assert (= (and b!1290734 res!857578) b!1290728))

(assert (= (and b!1290728 res!857579) b!1290726))

(assert (= (and b!1290726 res!857581) b!1290731))

(assert (= (and b!1290731 res!857575) b!1290723))

(assert (= (and b!1290723 (not res!857576)) b!1290732))

(assert (= (and b!1290730 condMapEmpty!52982) mapIsEmpty!52982))

(assert (= (and b!1290730 (not condMapEmpty!52982)) mapNonEmpty!52982))

(get-info :version)

(assert (= (and mapNonEmpty!52982 ((_ is ValueCellFull!16242) mapValue!52982)) b!1290733))

(assert (= (and b!1290730 ((_ is ValueCellFull!16242) mapDefault!52982)) b!1290727))

(assert (= start!109188 b!1290730))

(declare-fun m!1183401 () Bool)

(assert (=> b!1290723 m!1183401))

(declare-fun m!1183403 () Bool)

(assert (=> b!1290723 m!1183403))

(declare-fun m!1183405 () Bool)

(assert (=> b!1290724 m!1183405))

(declare-fun m!1183407 () Bool)

(assert (=> start!109188 m!1183407))

(declare-fun m!1183409 () Bool)

(assert (=> start!109188 m!1183409))

(declare-fun m!1183411 () Bool)

(assert (=> start!109188 m!1183411))

(declare-fun m!1183413 () Bool)

(assert (=> b!1290728 m!1183413))

(assert (=> b!1290728 m!1183413))

(declare-fun m!1183415 () Bool)

(assert (=> b!1290728 m!1183415))

(declare-fun m!1183417 () Bool)

(assert (=> mapNonEmpty!52982 m!1183417))

(declare-fun m!1183419 () Bool)

(assert (=> b!1290731 m!1183419))

(assert (=> b!1290731 m!1183419))

(declare-fun m!1183421 () Bool)

(assert (=> b!1290731 m!1183421))

(declare-fun m!1183423 () Bool)

(assert (=> b!1290725 m!1183423))

(declare-fun m!1183425 () Bool)

(assert (=> b!1290732 m!1183425))

(declare-fun m!1183427 () Bool)

(assert (=> b!1290732 m!1183427))

(declare-fun m!1183429 () Bool)

(assert (=> b!1290732 m!1183429))

(declare-fun m!1183431 () Bool)

(assert (=> b!1290732 m!1183431))

(declare-fun m!1183433 () Bool)

(assert (=> b!1290732 m!1183433))

(declare-fun m!1183435 () Bool)

(assert (=> b!1290732 m!1183435))

(declare-fun m!1183437 () Bool)

(assert (=> b!1290732 m!1183437))

(assert (=> b!1290732 m!1183433))

(declare-fun m!1183439 () Bool)

(assert (=> b!1290732 m!1183439))

(check-sat (not b!1290728) (not b!1290723) b_and!46741 (not b!1290724) (not start!109188) (not mapNonEmpty!52982) (not b_next!28641) (not b!1290725) (not b!1290732) tp_is_empty!34281 (not b!1290731))
(check-sat b_and!46741 (not b_next!28641))
