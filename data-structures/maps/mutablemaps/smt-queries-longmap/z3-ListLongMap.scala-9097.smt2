; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109404 () Bool)

(assert start!109404)

(declare-fun b_free!28857 () Bool)

(declare-fun b_next!28857 () Bool)

(assert (=> start!109404 (= b_free!28857 (not b_next!28857))))

(declare-fun tp!101690 () Bool)

(declare-fun b_and!46957 () Bool)

(assert (=> start!109404 (= tp!101690 b_and!46957)))

(declare-fun b!1294471 () Bool)

(declare-fun res!860355 () Bool)

(declare-fun e!738688 () Bool)

(assert (=> b!1294471 (=> (not res!860355) (not e!738688))))

(declare-datatypes ((V!51099 0))(
  ( (V!51100 (val!17323 Int)) )
))
(declare-fun minValue!1387 () V!51099)

(declare-fun zeroValue!1387 () V!51099)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16350 0))(
  ( (ValueCellFull!16350 (v!19924 V!51099)) (EmptyCell!16350) )
))
(declare-datatypes ((array!85979 0))(
  ( (array!85980 (arr!41486 (Array (_ BitVec 32) ValueCell!16350)) (size!42037 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85979)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((array!85981 0))(
  ( (array!85982 (arr!41487 (Array (_ BitVec 32) (_ BitVec 64))) (size!42038 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85981)

(declare-datatypes ((tuple2!22444 0))(
  ( (tuple2!22445 (_1!11232 (_ BitVec 64)) (_2!11232 V!51099)) )
))
(declare-datatypes ((List!29619 0))(
  ( (Nil!29616) (Cons!29615 (h!30824 tuple2!22444) (t!43190 List!29619)) )
))
(declare-datatypes ((ListLongMap!20113 0))(
  ( (ListLongMap!20114 (toList!10072 List!29619)) )
))
(declare-fun contains!8128 (ListLongMap!20113 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5056 (array!85981 array!85979 (_ BitVec 32) (_ BitVec 32) V!51099 V!51099 (_ BitVec 32) Int) ListLongMap!20113)

(assert (=> b!1294471 (= res!860355 (contains!8128 (getCurrentListMap!5056 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294472 () Bool)

(declare-fun res!860354 () Bool)

(assert (=> b!1294472 (=> (not res!860354) (not e!738688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85981 (_ BitVec 32)) Bool)

(assert (=> b!1294472 (= res!860354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294473 () Bool)

(declare-fun e!738687 () Bool)

(declare-fun tp_is_empty!34497 () Bool)

(assert (=> b!1294473 (= e!738687 tp_is_empty!34497)))

(declare-fun b!1294474 () Bool)

(declare-fun e!738684 () Bool)

(declare-fun mapRes!53306 () Bool)

(assert (=> b!1294474 (= e!738684 (and e!738687 mapRes!53306))))

(declare-fun condMapEmpty!53306 () Bool)

(declare-fun mapDefault!53306 () ValueCell!16350)

(assert (=> b!1294474 (= condMapEmpty!53306 (= (arr!41486 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16350)) mapDefault!53306)))))

(declare-fun res!860357 () Bool)

(assert (=> start!109404 (=> (not res!860357) (not e!738688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109404 (= res!860357 (validMask!0 mask!2175))))

(assert (=> start!109404 e!738688))

(assert (=> start!109404 tp_is_empty!34497))

(assert (=> start!109404 true))

(declare-fun array_inv!31393 (array!85979) Bool)

(assert (=> start!109404 (and (array_inv!31393 _values!1445) e!738684)))

(declare-fun array_inv!31394 (array!85981) Bool)

(assert (=> start!109404 (array_inv!31394 _keys!1741)))

(assert (=> start!109404 tp!101690))

(declare-fun mapIsEmpty!53306 () Bool)

(assert (=> mapIsEmpty!53306 mapRes!53306))

(declare-fun b!1294475 () Bool)

(declare-fun res!860358 () Bool)

(assert (=> b!1294475 (=> (not res!860358) (not e!738688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294475 (= res!860358 (not (validKeyInArray!0 (select (arr!41487 _keys!1741) from!2144))))))

(declare-fun b!1294476 () Bool)

(declare-fun res!860351 () Bool)

(assert (=> b!1294476 (=> (not res!860351) (not e!738688))))

(assert (=> b!1294476 (= res!860351 (and (= (size!42037 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42038 _keys!1741) (size!42037 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294477 () Bool)

(declare-fun res!860353 () Bool)

(assert (=> b!1294477 (=> (not res!860353) (not e!738688))))

(assert (=> b!1294477 (= res!860353 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42038 _keys!1741))))))

(declare-fun mapNonEmpty!53306 () Bool)

(declare-fun tp!101691 () Bool)

(declare-fun e!738685 () Bool)

(assert (=> mapNonEmpty!53306 (= mapRes!53306 (and tp!101691 e!738685))))

(declare-fun mapKey!53306 () (_ BitVec 32))

(declare-fun mapRest!53306 () (Array (_ BitVec 32) ValueCell!16350))

(declare-fun mapValue!53306 () ValueCell!16350)

(assert (=> mapNonEmpty!53306 (= (arr!41486 _values!1445) (store mapRest!53306 mapKey!53306 mapValue!53306))))

(declare-fun b!1294478 () Bool)

(declare-fun res!860352 () Bool)

(assert (=> b!1294478 (=> (not res!860352) (not e!738688))))

(assert (=> b!1294478 (= res!860352 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42038 _keys!1741))))))

(declare-fun b!1294479 () Bool)

(assert (=> b!1294479 (= e!738688 (not true))))

(assert (=> b!1294479 (not (contains!8128 (ListLongMap!20114 Nil!29616) k0!1205))))

(declare-datatypes ((Unit!42815 0))(
  ( (Unit!42816) )
))
(declare-fun lt!579664 () Unit!42815)

(declare-fun emptyContainsNothing!164 ((_ BitVec 64)) Unit!42815)

(assert (=> b!1294479 (= lt!579664 (emptyContainsNothing!164 k0!1205))))

(declare-fun b!1294480 () Bool)

(assert (=> b!1294480 (= e!738685 tp_is_empty!34497)))

(declare-fun b!1294481 () Bool)

(declare-fun res!860356 () Bool)

(assert (=> b!1294481 (=> (not res!860356) (not e!738688))))

(declare-datatypes ((List!29620 0))(
  ( (Nil!29617) (Cons!29616 (h!30825 (_ BitVec 64)) (t!43191 List!29620)) )
))
(declare-fun arrayNoDuplicates!0 (array!85981 (_ BitVec 32) List!29620) Bool)

(assert (=> b!1294481 (= res!860356 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29617))))

(assert (= (and start!109404 res!860357) b!1294476))

(assert (= (and b!1294476 res!860351) b!1294472))

(assert (= (and b!1294472 res!860354) b!1294481))

(assert (= (and b!1294481 res!860356) b!1294477))

(assert (= (and b!1294477 res!860353) b!1294471))

(assert (= (and b!1294471 res!860355) b!1294478))

(assert (= (and b!1294478 res!860352) b!1294475))

(assert (= (and b!1294475 res!860358) b!1294479))

(assert (= (and b!1294474 condMapEmpty!53306) mapIsEmpty!53306))

(assert (= (and b!1294474 (not condMapEmpty!53306)) mapNonEmpty!53306))

(get-info :version)

(assert (= (and mapNonEmpty!53306 ((_ is ValueCellFull!16350) mapValue!53306)) b!1294480))

(assert (= (and b!1294474 ((_ is ValueCellFull!16350) mapDefault!53306)) b!1294473))

(assert (= start!109404 b!1294474))

(declare-fun m!1186685 () Bool)

(assert (=> b!1294471 m!1186685))

(assert (=> b!1294471 m!1186685))

(declare-fun m!1186687 () Bool)

(assert (=> b!1294471 m!1186687))

(declare-fun m!1186689 () Bool)

(assert (=> mapNonEmpty!53306 m!1186689))

(declare-fun m!1186691 () Bool)

(assert (=> b!1294479 m!1186691))

(declare-fun m!1186693 () Bool)

(assert (=> b!1294479 m!1186693))

(declare-fun m!1186695 () Bool)

(assert (=> b!1294481 m!1186695))

(declare-fun m!1186697 () Bool)

(assert (=> b!1294475 m!1186697))

(assert (=> b!1294475 m!1186697))

(declare-fun m!1186699 () Bool)

(assert (=> b!1294475 m!1186699))

(declare-fun m!1186701 () Bool)

(assert (=> start!109404 m!1186701))

(declare-fun m!1186703 () Bool)

(assert (=> start!109404 m!1186703))

(declare-fun m!1186705 () Bool)

(assert (=> start!109404 m!1186705))

(declare-fun m!1186707 () Bool)

(assert (=> b!1294472 m!1186707))

(check-sat (not b!1294472) (not start!109404) (not b!1294471) b_and!46957 (not b!1294481) (not b!1294475) tp_is_empty!34497 (not b_next!28857) (not mapNonEmpty!53306) (not b!1294479))
(check-sat b_and!46957 (not b_next!28857))
