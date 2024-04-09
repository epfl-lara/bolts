; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109104 () Bool)

(assert start!109104)

(declare-fun b_free!28557 () Bool)

(declare-fun b_next!28557 () Bool)

(assert (=> start!109104 (= b_free!28557 (not b_next!28557))))

(declare-fun tp!100790 () Bool)

(declare-fun b_and!46657 () Bool)

(assert (=> start!109104 (= tp!100790 b_and!46657)))

(declare-fun b!1289211 () Bool)

(declare-fun res!856449 () Bool)

(declare-fun e!736126 () Bool)

(assert (=> b!1289211 (=> (not res!856449) (not e!736126))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50699 0))(
  ( (V!50700 (val!17173 Int)) )
))
(declare-datatypes ((ValueCell!16200 0))(
  ( (ValueCellFull!16200 (v!19774 V!50699)) (EmptyCell!16200) )
))
(declare-datatypes ((array!85393 0))(
  ( (array!85394 (arr!41193 (Array (_ BitVec 32) ValueCell!16200)) (size!41744 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85393)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85395 0))(
  ( (array!85396 (arr!41194 (Array (_ BitVec 32) (_ BitVec 64))) (size!41745 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85395)

(assert (=> b!1289211 (= res!856449 (and (= (size!41744 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41745 _keys!1741) (size!41744 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289212 () Bool)

(declare-fun e!736125 () Bool)

(declare-fun tp_is_empty!34197 () Bool)

(assert (=> b!1289212 (= e!736125 tp_is_empty!34197)))

(declare-fun res!856441 () Bool)

(assert (=> start!109104 (=> (not res!856441) (not e!736126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109104 (= res!856441 (validMask!0 mask!2175))))

(assert (=> start!109104 e!736126))

(assert (=> start!109104 tp_is_empty!34197))

(assert (=> start!109104 true))

(declare-fun e!736129 () Bool)

(declare-fun array_inv!31201 (array!85393) Bool)

(assert (=> start!109104 (and (array_inv!31201 _values!1445) e!736129)))

(declare-fun array_inv!31202 (array!85395) Bool)

(assert (=> start!109104 (array_inv!31202 _keys!1741)))

(assert (=> start!109104 tp!100790))

(declare-fun mapNonEmpty!52856 () Bool)

(declare-fun mapRes!52856 () Bool)

(declare-fun tp!100791 () Bool)

(declare-fun e!736124 () Bool)

(assert (=> mapNonEmpty!52856 (= mapRes!52856 (and tp!100791 e!736124))))

(declare-fun mapKey!52856 () (_ BitVec 32))

(declare-fun mapValue!52856 () ValueCell!16200)

(declare-fun mapRest!52856 () (Array (_ BitVec 32) ValueCell!16200))

(assert (=> mapNonEmpty!52856 (= (arr!41193 _values!1445) (store mapRest!52856 mapKey!52856 mapValue!52856))))

(declare-fun b!1289213 () Bool)

(declare-fun e!736128 () Bool)

(assert (=> b!1289213 (= e!736126 (not e!736128))))

(declare-fun res!856447 () Bool)

(assert (=> b!1289213 (=> res!856447 e!736128)))

(assert (=> b!1289213 (= res!856447 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22186 0))(
  ( (tuple2!22187 (_1!11103 (_ BitVec 64)) (_2!11103 V!50699)) )
))
(declare-datatypes ((List!29386 0))(
  ( (Nil!29383) (Cons!29382 (h!30591 tuple2!22186) (t!42957 List!29386)) )
))
(declare-datatypes ((ListLongMap!19855 0))(
  ( (ListLongMap!19856 (toList!9943 List!29386)) )
))
(declare-fun contains!7999 (ListLongMap!19855 (_ BitVec 64)) Bool)

(assert (=> b!1289213 (not (contains!7999 (ListLongMap!19856 Nil!29383) k0!1205))))

(declare-datatypes ((Unit!42581 0))(
  ( (Unit!42582) )
))
(declare-fun lt!578150 () Unit!42581)

(declare-fun emptyContainsNothing!55 ((_ BitVec 64)) Unit!42581)

(assert (=> b!1289213 (= lt!578150 (emptyContainsNothing!55 k0!1205))))

(declare-fun b!1289214 () Bool)

(assert (=> b!1289214 (= e!736129 (and e!736125 mapRes!52856))))

(declare-fun condMapEmpty!52856 () Bool)

(declare-fun mapDefault!52856 () ValueCell!16200)

(assert (=> b!1289214 (= condMapEmpty!52856 (= (arr!41193 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16200)) mapDefault!52856)))))

(declare-fun b!1289215 () Bool)

(declare-fun res!856444 () Bool)

(assert (=> b!1289215 (=> (not res!856444) (not e!736126))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1289215 (= res!856444 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41745 _keys!1741))))))

(declare-fun b!1289216 () Bool)

(declare-fun res!856448 () Bool)

(assert (=> b!1289216 (=> (not res!856448) (not e!736126))))

(declare-datatypes ((List!29387 0))(
  ( (Nil!29384) (Cons!29383 (h!30592 (_ BitVec 64)) (t!42958 List!29387)) )
))
(declare-fun arrayNoDuplicates!0 (array!85395 (_ BitVec 32) List!29387) Bool)

(assert (=> b!1289216 (= res!856448 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29384))))

(declare-fun b!1289217 () Bool)

(assert (=> b!1289217 (= e!736124 tp_is_empty!34197)))

(declare-fun b!1289218 () Bool)

(declare-fun res!856446 () Bool)

(assert (=> b!1289218 (=> (not res!856446) (not e!736126))))

(assert (=> b!1289218 (= res!856446 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41745 _keys!1741))))))

(declare-fun b!1289219 () Bool)

(declare-fun res!856445 () Bool)

(assert (=> b!1289219 (=> (not res!856445) (not e!736126))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85395 (_ BitVec 32)) Bool)

(assert (=> b!1289219 (= res!856445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289220 () Bool)

(declare-fun res!856443 () Bool)

(assert (=> b!1289220 (=> (not res!856443) (not e!736126))))

(declare-fun minValue!1387 () V!50699)

(declare-fun zeroValue!1387 () V!50699)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4946 (array!85395 array!85393 (_ BitVec 32) (_ BitVec 32) V!50699 V!50699 (_ BitVec 32) Int) ListLongMap!19855)

(assert (=> b!1289220 (= res!856443 (contains!7999 (getCurrentListMap!4946 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!52856 () Bool)

(assert (=> mapIsEmpty!52856 mapRes!52856))

(declare-fun b!1289221 () Bool)

(declare-fun res!856442 () Bool)

(assert (=> b!1289221 (=> (not res!856442) (not e!736126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289221 (= res!856442 (not (validKeyInArray!0 (select (arr!41194 _keys!1741) from!2144))))))

(declare-fun b!1289222 () Bool)

(assert (=> b!1289222 (= e!736128 true)))

(declare-fun lt!578149 () Bool)

(declare-fun lt!578152 () ListLongMap!19855)

(assert (=> b!1289222 (= lt!578149 (contains!7999 lt!578152 k0!1205))))

(declare-fun +!4316 (ListLongMap!19855 tuple2!22186) ListLongMap!19855)

(assert (=> b!1289222 (not (contains!7999 (+!4316 lt!578152 (tuple2!22187 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578151 () Unit!42581)

(declare-fun addStillNotContains!361 (ListLongMap!19855 (_ BitVec 64) V!50699 (_ BitVec 64)) Unit!42581)

(assert (=> b!1289222 (= lt!578151 (addStillNotContains!361 lt!578152 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6028 (array!85395 array!85393 (_ BitVec 32) (_ BitVec 32) V!50699 V!50699 (_ BitVec 32) Int) ListLongMap!19855)

(assert (=> b!1289222 (= lt!578152 (getCurrentListMapNoExtraKeys!6028 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(assert (= (and start!109104 res!856441) b!1289211))

(assert (= (and b!1289211 res!856449) b!1289219))

(assert (= (and b!1289219 res!856445) b!1289216))

(assert (= (and b!1289216 res!856448) b!1289218))

(assert (= (and b!1289218 res!856446) b!1289220))

(assert (= (and b!1289220 res!856443) b!1289215))

(assert (= (and b!1289215 res!856444) b!1289221))

(assert (= (and b!1289221 res!856442) b!1289213))

(assert (= (and b!1289213 (not res!856447)) b!1289222))

(assert (= (and b!1289214 condMapEmpty!52856) mapIsEmpty!52856))

(assert (= (and b!1289214 (not condMapEmpty!52856)) mapNonEmpty!52856))

(get-info :version)

(assert (= (and mapNonEmpty!52856 ((_ is ValueCellFull!16200) mapValue!52856)) b!1289217))

(assert (= (and b!1289214 ((_ is ValueCellFull!16200) mapDefault!52856)) b!1289212))

(assert (= start!109104 b!1289214))

(declare-fun m!1181775 () Bool)

(assert (=> b!1289213 m!1181775))

(declare-fun m!1181777 () Bool)

(assert (=> b!1289213 m!1181777))

(declare-fun m!1181779 () Bool)

(assert (=> b!1289222 m!1181779))

(declare-fun m!1181781 () Bool)

(assert (=> b!1289222 m!1181781))

(declare-fun m!1181783 () Bool)

(assert (=> b!1289222 m!1181783))

(declare-fun m!1181785 () Bool)

(assert (=> b!1289222 m!1181785))

(assert (=> b!1289222 m!1181779))

(declare-fun m!1181787 () Bool)

(assert (=> b!1289222 m!1181787))

(declare-fun m!1181789 () Bool)

(assert (=> start!109104 m!1181789))

(declare-fun m!1181791 () Bool)

(assert (=> start!109104 m!1181791))

(declare-fun m!1181793 () Bool)

(assert (=> start!109104 m!1181793))

(declare-fun m!1181795 () Bool)

(assert (=> b!1289216 m!1181795))

(declare-fun m!1181797 () Bool)

(assert (=> b!1289221 m!1181797))

(assert (=> b!1289221 m!1181797))

(declare-fun m!1181799 () Bool)

(assert (=> b!1289221 m!1181799))

(declare-fun m!1181801 () Bool)

(assert (=> b!1289220 m!1181801))

(assert (=> b!1289220 m!1181801))

(declare-fun m!1181803 () Bool)

(assert (=> b!1289220 m!1181803))

(declare-fun m!1181805 () Bool)

(assert (=> mapNonEmpty!52856 m!1181805))

(declare-fun m!1181807 () Bool)

(assert (=> b!1289219 m!1181807))

(check-sat (not b!1289216) (not b_next!28557) (not b!1289213) (not mapNonEmpty!52856) b_and!46657 (not start!109104) tp_is_empty!34197 (not b!1289220) (not b!1289221) (not b!1289222) (not b!1289219))
(check-sat b_and!46657 (not b_next!28557))
