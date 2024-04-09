; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109248 () Bool)

(assert start!109248)

(declare-fun b_free!28701 () Bool)

(declare-fun b_next!28701 () Bool)

(assert (=> start!109248 (= b_free!28701 (not b_next!28701))))

(declare-fun tp!101222 () Bool)

(declare-fun b_and!46801 () Bool)

(assert (=> start!109248 (= tp!101222 b_and!46801)))

(declare-fun b!1291789 () Bool)

(declare-fun e!737407 () Bool)

(declare-fun tp_is_empty!34341 () Bool)

(assert (=> b!1291789 (= e!737407 tp_is_empty!34341)))

(declare-fun b!1291790 () Bool)

(declare-fun res!858377 () Bool)

(declare-fun e!737408 () Bool)

(assert (=> b!1291790 (=> (not res!858377) (not e!737408))))

(declare-datatypes ((V!50891 0))(
  ( (V!50892 (val!17245 Int)) )
))
(declare-fun minValue!1387 () V!50891)

(declare-fun zeroValue!1387 () V!50891)

(declare-datatypes ((ValueCell!16272 0))(
  ( (ValueCellFull!16272 (v!19846 V!50891)) (EmptyCell!16272) )
))
(declare-datatypes ((array!85675 0))(
  ( (array!85676 (arr!41334 (Array (_ BitVec 32) ValueCell!16272)) (size!41885 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85675)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85677 0))(
  ( (array!85678 (arr!41335 (Array (_ BitVec 32) (_ BitVec 64))) (size!41886 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85677)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22312 0))(
  ( (tuple2!22313 (_1!11166 (_ BitVec 64)) (_2!11166 V!50891)) )
))
(declare-datatypes ((List!29502 0))(
  ( (Nil!29499) (Cons!29498 (h!30707 tuple2!22312) (t!43073 List!29502)) )
))
(declare-datatypes ((ListLongMap!19981 0))(
  ( (ListLongMap!19982 (toList!10006 List!29502)) )
))
(declare-fun contains!8062 (ListLongMap!19981 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4999 (array!85677 array!85675 (_ BitVec 32) (_ BitVec 32) V!50891 V!50891 (_ BitVec 32) Int) ListLongMap!19981)

(assert (=> b!1291790 (= res!858377 (contains!8062 (getCurrentListMap!4999 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1291791 () Bool)

(declare-fun e!737406 () Bool)

(assert (=> b!1291791 (= e!737406 tp_is_empty!34341)))

(declare-fun b!1291792 () Bool)

(declare-fun res!858376 () Bool)

(assert (=> b!1291792 (=> (not res!858376) (not e!737408))))

(assert (=> b!1291792 (= res!858376 (and (= (size!41885 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41886 _keys!1741) (size!41885 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291793 () Bool)

(declare-fun res!858372 () Bool)

(assert (=> b!1291793 (=> (not res!858372) (not e!737408))))

(declare-datatypes ((List!29503 0))(
  ( (Nil!29500) (Cons!29499 (h!30708 (_ BitVec 64)) (t!43074 List!29503)) )
))
(declare-fun arrayNoDuplicates!0 (array!85677 (_ BitVec 32) List!29503) Bool)

(assert (=> b!1291793 (= res!858372 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29500))))

(declare-fun res!858378 () Bool)

(assert (=> start!109248 (=> (not res!858378) (not e!737408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109248 (= res!858378 (validMask!0 mask!2175))))

(assert (=> start!109248 e!737408))

(assert (=> start!109248 tp_is_empty!34341))

(assert (=> start!109248 true))

(declare-fun e!737410 () Bool)

(declare-fun array_inv!31291 (array!85675) Bool)

(assert (=> start!109248 (and (array_inv!31291 _values!1445) e!737410)))

(declare-fun array_inv!31292 (array!85677) Bool)

(assert (=> start!109248 (array_inv!31292 _keys!1741)))

(assert (=> start!109248 tp!101222))

(declare-fun mapIsEmpty!53072 () Bool)

(declare-fun mapRes!53072 () Bool)

(assert (=> mapIsEmpty!53072 mapRes!53072))

(declare-fun b!1291794 () Bool)

(declare-fun res!858374 () Bool)

(assert (=> b!1291794 (=> (not res!858374) (not e!737408))))

(assert (=> b!1291794 (= res!858374 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41886 _keys!1741))))))

(declare-fun mapNonEmpty!53072 () Bool)

(declare-fun tp!101223 () Bool)

(assert (=> mapNonEmpty!53072 (= mapRes!53072 (and tp!101223 e!737406))))

(declare-fun mapKey!53072 () (_ BitVec 32))

(declare-fun mapValue!53072 () ValueCell!16272)

(declare-fun mapRest!53072 () (Array (_ BitVec 32) ValueCell!16272))

(assert (=> mapNonEmpty!53072 (= (arr!41334 _values!1445) (store mapRest!53072 mapKey!53072 mapValue!53072))))

(declare-fun b!1291795 () Bool)

(assert (=> b!1291795 (= e!737410 (and e!737407 mapRes!53072))))

(declare-fun condMapEmpty!53072 () Bool)

(declare-fun mapDefault!53072 () ValueCell!16272)

(assert (=> b!1291795 (= condMapEmpty!53072 (= (arr!41334 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16272)) mapDefault!53072)))))

(declare-fun b!1291796 () Bool)

(declare-fun res!858375 () Bool)

(assert (=> b!1291796 (=> (not res!858375) (not e!737408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291796 (= res!858375 (not (validKeyInArray!0 (select (arr!41335 _keys!1741) from!2144))))))

(declare-fun b!1291797 () Bool)

(declare-fun res!858371 () Bool)

(assert (=> b!1291797 (=> (not res!858371) (not e!737408))))

(assert (=> b!1291797 (= res!858371 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41886 _keys!1741))))))

(declare-fun b!1291798 () Bool)

(assert (=> b!1291798 (= e!737408 (not true))))

(assert (=> b!1291798 (not (contains!8062 (ListLongMap!19982 Nil!29499) k0!1205))))

(declare-datatypes ((Unit!42699 0))(
  ( (Unit!42700) )
))
(declare-fun lt!579223 () Unit!42699)

(declare-fun emptyContainsNothing!106 ((_ BitVec 64)) Unit!42699)

(assert (=> b!1291798 (= lt!579223 (emptyContainsNothing!106 k0!1205))))

(declare-fun b!1291799 () Bool)

(declare-fun res!858373 () Bool)

(assert (=> b!1291799 (=> (not res!858373) (not e!737408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85677 (_ BitVec 32)) Bool)

(assert (=> b!1291799 (= res!858373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109248 res!858378) b!1291792))

(assert (= (and b!1291792 res!858376) b!1291799))

(assert (= (and b!1291799 res!858373) b!1291793))

(assert (= (and b!1291793 res!858372) b!1291794))

(assert (= (and b!1291794 res!858374) b!1291790))

(assert (= (and b!1291790 res!858377) b!1291797))

(assert (= (and b!1291797 res!858371) b!1291796))

(assert (= (and b!1291796 res!858375) b!1291798))

(assert (= (and b!1291795 condMapEmpty!53072) mapIsEmpty!53072))

(assert (= (and b!1291795 (not condMapEmpty!53072)) mapNonEmpty!53072))

(get-info :version)

(assert (= (and mapNonEmpty!53072 ((_ is ValueCellFull!16272) mapValue!53072)) b!1291791))

(assert (= (and b!1291795 ((_ is ValueCellFull!16272) mapDefault!53072)) b!1291789))

(assert (= start!109248 b!1291795))

(declare-fun m!1184537 () Bool)

(assert (=> mapNonEmpty!53072 m!1184537))

(declare-fun m!1184539 () Bool)

(assert (=> start!109248 m!1184539))

(declare-fun m!1184541 () Bool)

(assert (=> start!109248 m!1184541))

(declare-fun m!1184543 () Bool)

(assert (=> start!109248 m!1184543))

(declare-fun m!1184545 () Bool)

(assert (=> b!1291796 m!1184545))

(assert (=> b!1291796 m!1184545))

(declare-fun m!1184547 () Bool)

(assert (=> b!1291796 m!1184547))

(declare-fun m!1184549 () Bool)

(assert (=> b!1291793 m!1184549))

(declare-fun m!1184551 () Bool)

(assert (=> b!1291790 m!1184551))

(assert (=> b!1291790 m!1184551))

(declare-fun m!1184553 () Bool)

(assert (=> b!1291790 m!1184553))

(declare-fun m!1184555 () Bool)

(assert (=> b!1291798 m!1184555))

(declare-fun m!1184557 () Bool)

(assert (=> b!1291798 m!1184557))

(declare-fun m!1184559 () Bool)

(assert (=> b!1291799 m!1184559))

(check-sat b_and!46801 (not b!1291790) (not mapNonEmpty!53072) (not b!1291793) (not b!1291796) tp_is_empty!34341 (not b!1291799) (not b!1291798) (not start!109248) (not b_next!28701))
(check-sat b_and!46801 (not b_next!28701))
