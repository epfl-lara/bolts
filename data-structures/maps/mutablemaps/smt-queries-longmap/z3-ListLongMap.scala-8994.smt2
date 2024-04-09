; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108762 () Bool)

(assert start!108762)

(declare-fun b_free!28239 () Bool)

(declare-fun b_next!28239 () Bool)

(assert (=> start!108762 (= b_free!28239 (not b_next!28239))))

(declare-fun tp!99834 () Bool)

(declare-fun b_and!46315 () Bool)

(assert (=> start!108762 (= tp!99834 b_and!46315)))

(declare-fun b!1283642 () Bool)

(declare-fun e!733327 () Bool)

(declare-fun e!733330 () Bool)

(declare-fun mapRes!52376 () Bool)

(assert (=> b!1283642 (= e!733327 (and e!733330 mapRes!52376))))

(declare-fun condMapEmpty!52376 () Bool)

(declare-datatypes ((V!50275 0))(
  ( (V!50276 (val!17014 Int)) )
))
(declare-datatypes ((ValueCell!16041 0))(
  ( (ValueCellFull!16041 (v!19614 V!50275)) (EmptyCell!16041) )
))
(declare-datatypes ((array!84775 0))(
  ( (array!84776 (arr!40885 (Array (_ BitVec 32) ValueCell!16041)) (size!41436 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84775)

(declare-fun mapDefault!52376 () ValueCell!16041)

(assert (=> b!1283642 (= condMapEmpty!52376 (= (arr!40885 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16041)) mapDefault!52376)))))

(declare-fun mapIsEmpty!52376 () Bool)

(assert (=> mapIsEmpty!52376 mapRes!52376))

(declare-fun b!1283643 () Bool)

(declare-fun res!852793 () Bool)

(declare-fun e!733329 () Bool)

(assert (=> b!1283643 (=> (not res!852793) (not e!733329))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84777 0))(
  ( (array!84778 (arr!40886 (Array (_ BitVec 32) (_ BitVec 64))) (size!41437 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84777)

(assert (=> b!1283643 (= res!852793 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41437 _keys!1741))))))

(declare-fun b!1283644 () Bool)

(declare-fun res!852796 () Bool)

(assert (=> b!1283644 (=> (not res!852796) (not e!733329))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84777 (_ BitVec 32)) Bool)

(assert (=> b!1283644 (= res!852796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283645 () Bool)

(declare-fun e!733328 () Bool)

(declare-fun tp_is_empty!33879 () Bool)

(assert (=> b!1283645 (= e!733328 tp_is_empty!33879)))

(declare-fun b!1283646 () Bool)

(assert (=> b!1283646 (= e!733330 tp_is_empty!33879)))

(declare-fun b!1283647 () Bool)

(declare-fun res!852798 () Bool)

(assert (=> b!1283647 (=> (not res!852798) (not e!733329))))

(declare-datatypes ((List!29142 0))(
  ( (Nil!29139) (Cons!29138 (h!30347 (_ BitVec 64)) (t!42693 List!29142)) )
))
(declare-fun arrayNoDuplicates!0 (array!84777 (_ BitVec 32) List!29142) Bool)

(assert (=> b!1283647 (= res!852798 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29139))))

(declare-fun b!1283648 () Bool)

(declare-fun res!852801 () Bool)

(assert (=> b!1283648 (=> (not res!852801) (not e!733329))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283648 (= res!852801 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283650 () Bool)

(declare-fun res!852795 () Bool)

(assert (=> b!1283650 (=> (not res!852795) (not e!733329))))

(declare-fun minValue!1387 () V!50275)

(declare-fun zeroValue!1387 () V!50275)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21934 0))(
  ( (tuple2!21935 (_1!10977 (_ BitVec 64)) (_2!10977 V!50275)) )
))
(declare-datatypes ((List!29143 0))(
  ( (Nil!29140) (Cons!29139 (h!30348 tuple2!21934) (t!42694 List!29143)) )
))
(declare-datatypes ((ListLongMap!19603 0))(
  ( (ListLongMap!19604 (toList!9817 List!29143)) )
))
(declare-fun contains!7872 (ListLongMap!19603 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4835 (array!84777 array!84775 (_ BitVec 32) (_ BitVec 32) V!50275 V!50275 (_ BitVec 32) Int) ListLongMap!19603)

(assert (=> b!1283650 (= res!852795 (contains!7872 (getCurrentListMap!4835 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1283651 () Bool)

(declare-fun res!852797 () Bool)

(assert (=> b!1283651 (=> (not res!852797) (not e!733329))))

(assert (=> b!1283651 (= res!852797 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41437 _keys!1741))))))

(declare-fun b!1283652 () Bool)

(declare-fun res!852799 () Bool)

(assert (=> b!1283652 (=> (not res!852799) (not e!733329))))

(assert (=> b!1283652 (= res!852799 (and (= (size!41436 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41437 _keys!1741) (size!41436 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283649 () Bool)

(declare-fun res!852794 () Bool)

(assert (=> b!1283649 (=> (not res!852794) (not e!733329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283649 (= res!852794 (validKeyInArray!0 (select (arr!40886 _keys!1741) from!2144)))))

(declare-fun res!852800 () Bool)

(assert (=> start!108762 (=> (not res!852800) (not e!733329))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108762 (= res!852800 (validMask!0 mask!2175))))

(assert (=> start!108762 e!733329))

(assert (=> start!108762 tp_is_empty!33879))

(assert (=> start!108762 true))

(declare-fun array_inv!30995 (array!84775) Bool)

(assert (=> start!108762 (and (array_inv!30995 _values!1445) e!733327)))

(declare-fun array_inv!30996 (array!84777) Bool)

(assert (=> start!108762 (array_inv!30996 _keys!1741)))

(assert (=> start!108762 tp!99834))

(declare-fun b!1283653 () Bool)

(assert (=> b!1283653 (= e!733329 (not true))))

(declare-fun lt!576642 () ListLongMap!19603)

(assert (=> b!1283653 (contains!7872 lt!576642 k0!1205)))

(declare-datatypes ((Unit!42423 0))(
  ( (Unit!42424) )
))
(declare-fun lt!576641 () Unit!42423)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!13 ((_ BitVec 64) (_ BitVec 64) V!50275 ListLongMap!19603) Unit!42423)

(assert (=> b!1283653 (= lt!576641 (lemmaInListMapAfterAddingDiffThenInBefore!13 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576642))))

(declare-fun +!4264 (ListLongMap!19603 tuple2!21934) ListLongMap!19603)

(declare-fun getCurrentListMapNoExtraKeys!5975 (array!84777 array!84775 (_ BitVec 32) (_ BitVec 32) V!50275 V!50275 (_ BitVec 32) Int) ListLongMap!19603)

(assert (=> b!1283653 (= lt!576642 (+!4264 (getCurrentListMapNoExtraKeys!5975 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21935 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun mapNonEmpty!52376 () Bool)

(declare-fun tp!99833 () Bool)

(assert (=> mapNonEmpty!52376 (= mapRes!52376 (and tp!99833 e!733328))))

(declare-fun mapKey!52376 () (_ BitVec 32))

(declare-fun mapValue!52376 () ValueCell!16041)

(declare-fun mapRest!52376 () (Array (_ BitVec 32) ValueCell!16041))

(assert (=> mapNonEmpty!52376 (= (arr!40885 _values!1445) (store mapRest!52376 mapKey!52376 mapValue!52376))))

(assert (= (and start!108762 res!852800) b!1283652))

(assert (= (and b!1283652 res!852799) b!1283644))

(assert (= (and b!1283644 res!852796) b!1283647))

(assert (= (and b!1283647 res!852798) b!1283643))

(assert (= (and b!1283643 res!852793) b!1283650))

(assert (= (and b!1283650 res!852795) b!1283651))

(assert (= (and b!1283651 res!852797) b!1283649))

(assert (= (and b!1283649 res!852794) b!1283648))

(assert (= (and b!1283648 res!852801) b!1283653))

(assert (= (and b!1283642 condMapEmpty!52376) mapIsEmpty!52376))

(assert (= (and b!1283642 (not condMapEmpty!52376)) mapNonEmpty!52376))

(get-info :version)

(assert (= (and mapNonEmpty!52376 ((_ is ValueCellFull!16041) mapValue!52376)) b!1283645))

(assert (= (and b!1283642 ((_ is ValueCellFull!16041) mapDefault!52376)) b!1283646))

(assert (= start!108762 b!1283642))

(declare-fun m!1177543 () Bool)

(assert (=> b!1283644 m!1177543))

(declare-fun m!1177545 () Bool)

(assert (=> start!108762 m!1177545))

(declare-fun m!1177547 () Bool)

(assert (=> start!108762 m!1177547))

(declare-fun m!1177549 () Bool)

(assert (=> start!108762 m!1177549))

(declare-fun m!1177551 () Bool)

(assert (=> b!1283650 m!1177551))

(assert (=> b!1283650 m!1177551))

(declare-fun m!1177553 () Bool)

(assert (=> b!1283650 m!1177553))

(declare-fun m!1177555 () Bool)

(assert (=> mapNonEmpty!52376 m!1177555))

(declare-fun m!1177557 () Bool)

(assert (=> b!1283653 m!1177557))

(declare-fun m!1177559 () Bool)

(assert (=> b!1283653 m!1177559))

(declare-fun m!1177561 () Bool)

(assert (=> b!1283653 m!1177561))

(assert (=> b!1283653 m!1177561))

(declare-fun m!1177563 () Bool)

(assert (=> b!1283653 m!1177563))

(declare-fun m!1177565 () Bool)

(assert (=> b!1283649 m!1177565))

(assert (=> b!1283649 m!1177565))

(declare-fun m!1177567 () Bool)

(assert (=> b!1283649 m!1177567))

(declare-fun m!1177569 () Bool)

(assert (=> b!1283647 m!1177569))

(check-sat (not mapNonEmpty!52376) (not b!1283647) (not b_next!28239) (not start!108762) (not b!1283653) (not b!1283644) tp_is_empty!33879 b_and!46315 (not b!1283649) (not b!1283650))
(check-sat b_and!46315 (not b_next!28239))
