; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109206 () Bool)

(assert start!109206)

(declare-fun b_free!28659 () Bool)

(declare-fun b_next!28659 () Bool)

(assert (=> start!109206 (= b_free!28659 (not b_next!28659))))

(declare-fun tp!101096 () Bool)

(declare-fun b_and!46759 () Bool)

(assert (=> start!109206 (= tp!101096 b_and!46759)))

(declare-fun b!1291047 () Bool)

(declare-fun e!737043 () Bool)

(declare-fun e!737042 () Bool)

(assert (=> b!1291047 (= e!737043 (not e!737042))))

(declare-fun res!857820 () Bool)

(assert (=> b!1291047 (=> res!857820 e!737042)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291047 (= res!857820 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!50835 0))(
  ( (V!50836 (val!17224 Int)) )
))
(declare-datatypes ((tuple2!22274 0))(
  ( (tuple2!22275 (_1!11147 (_ BitVec 64)) (_2!11147 V!50835)) )
))
(declare-datatypes ((List!29469 0))(
  ( (Nil!29466) (Cons!29465 (h!30674 tuple2!22274) (t!43040 List!29469)) )
))
(declare-datatypes ((ListLongMap!19943 0))(
  ( (ListLongMap!19944 (toList!9987 List!29469)) )
))
(declare-fun contains!8043 (ListLongMap!19943 (_ BitVec 64)) Bool)

(assert (=> b!1291047 (not (contains!8043 (ListLongMap!19944 Nil!29466) k0!1205))))

(declare-datatypes ((Unit!42663 0))(
  ( (Unit!42664) )
))
(declare-fun lt!578920 () Unit!42663)

(declare-fun emptyContainsNothing!91 ((_ BitVec 64)) Unit!42663)

(assert (=> b!1291047 (= lt!578920 (emptyContainsNothing!91 k0!1205))))

(declare-fun b!1291048 () Bool)

(declare-fun res!857818 () Bool)

(assert (=> b!1291048 (=> (not res!857818) (not e!737043))))

(declare-datatypes ((array!85593 0))(
  ( (array!85594 (arr!41293 (Array (_ BitVec 32) (_ BitVec 64))) (size!41844 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85593)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291048 (= res!857818 (not (validKeyInArray!0 (select (arr!41293 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53009 () Bool)

(declare-fun mapRes!53009 () Bool)

(assert (=> mapIsEmpty!53009 mapRes!53009))

(declare-fun b!1291049 () Bool)

(assert (=> b!1291049 (= e!737042 true)))

(assert (=> b!1291049 false))

(declare-fun minValue!1387 () V!50835)

(declare-fun lt!578919 () ListLongMap!19943)

(declare-fun lt!578916 () Unit!42663)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!46 ((_ BitVec 64) (_ BitVec 64) V!50835 ListLongMap!19943) Unit!42663)

(assert (=> b!1291049 (= lt!578916 (lemmaInListMapAfterAddingDiffThenInBefore!46 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578919))))

(declare-fun lt!578918 () ListLongMap!19943)

(declare-fun +!4351 (ListLongMap!19943 tuple2!22274) ListLongMap!19943)

(assert (=> b!1291049 (not (contains!8043 (+!4351 lt!578918 (tuple2!22275 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578915 () Unit!42663)

(declare-fun addStillNotContains!396 (ListLongMap!19943 (_ BitVec 64) V!50835 (_ BitVec 64)) Unit!42663)

(assert (=> b!1291049 (= lt!578915 (addStillNotContains!396 lt!578918 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1291049 (not (contains!8043 lt!578919 k0!1205))))

(declare-fun zeroValue!1387 () V!50835)

(assert (=> b!1291049 (= lt!578919 (+!4351 lt!578918 (tuple2!22275 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578917 () Unit!42663)

(assert (=> b!1291049 (= lt!578917 (addStillNotContains!396 lt!578918 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-datatypes ((ValueCell!16251 0))(
  ( (ValueCellFull!16251 (v!19825 V!50835)) (EmptyCell!16251) )
))
(declare-datatypes ((array!85595 0))(
  ( (array!85596 (arr!41294 (Array (_ BitVec 32) ValueCell!16251)) (size!41845 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85595)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6063 (array!85593 array!85595 (_ BitVec 32) (_ BitVec 32) V!50835 V!50835 (_ BitVec 32) Int) ListLongMap!19943)

(assert (=> b!1291049 (= lt!578918 (getCurrentListMapNoExtraKeys!6063 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1291050 () Bool)

(declare-fun res!857823 () Bool)

(assert (=> b!1291050 (=> (not res!857823) (not e!737043))))

(declare-fun getCurrentListMap!4986 (array!85593 array!85595 (_ BitVec 32) (_ BitVec 32) V!50835 V!50835 (_ BitVec 32) Int) ListLongMap!19943)

(assert (=> b!1291050 (= res!857823 (contains!8043 (getCurrentListMap!4986 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!53009 () Bool)

(declare-fun tp!101097 () Bool)

(declare-fun e!737047 () Bool)

(assert (=> mapNonEmpty!53009 (= mapRes!53009 (and tp!101097 e!737047))))

(declare-fun mapKey!53009 () (_ BitVec 32))

(declare-fun mapValue!53009 () ValueCell!16251)

(declare-fun mapRest!53009 () (Array (_ BitVec 32) ValueCell!16251))

(assert (=> mapNonEmpty!53009 (= (arr!41294 _values!1445) (store mapRest!53009 mapKey!53009 mapValue!53009))))

(declare-fun b!1291051 () Bool)

(declare-fun res!857825 () Bool)

(assert (=> b!1291051 (=> (not res!857825) (not e!737043))))

(assert (=> b!1291051 (= res!857825 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41844 _keys!1741))))))

(declare-fun b!1291052 () Bool)

(declare-fun e!737044 () Bool)

(declare-fun e!737045 () Bool)

(assert (=> b!1291052 (= e!737044 (and e!737045 mapRes!53009))))

(declare-fun condMapEmpty!53009 () Bool)

(declare-fun mapDefault!53009 () ValueCell!16251)

(assert (=> b!1291052 (= condMapEmpty!53009 (= (arr!41294 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16251)) mapDefault!53009)))))

(declare-fun b!1291053 () Bool)

(declare-fun res!857824 () Bool)

(assert (=> b!1291053 (=> (not res!857824) (not e!737043))))

(assert (=> b!1291053 (= res!857824 (and (= (size!41845 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41844 _keys!1741) (size!41845 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!857819 () Bool)

(assert (=> start!109206 (=> (not res!857819) (not e!737043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109206 (= res!857819 (validMask!0 mask!2175))))

(assert (=> start!109206 e!737043))

(declare-fun tp_is_empty!34299 () Bool)

(assert (=> start!109206 tp_is_empty!34299))

(assert (=> start!109206 true))

(declare-fun array_inv!31267 (array!85595) Bool)

(assert (=> start!109206 (and (array_inv!31267 _values!1445) e!737044)))

(declare-fun array_inv!31268 (array!85593) Bool)

(assert (=> start!109206 (array_inv!31268 _keys!1741)))

(assert (=> start!109206 tp!101096))

(declare-fun b!1291054 () Bool)

(declare-fun res!857821 () Bool)

(assert (=> b!1291054 (=> (not res!857821) (not e!737043))))

(declare-datatypes ((List!29470 0))(
  ( (Nil!29467) (Cons!29466 (h!30675 (_ BitVec 64)) (t!43041 List!29470)) )
))
(declare-fun arrayNoDuplicates!0 (array!85593 (_ BitVec 32) List!29470) Bool)

(assert (=> b!1291054 (= res!857821 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29467))))

(declare-fun b!1291055 () Bool)

(assert (=> b!1291055 (= e!737045 tp_is_empty!34299)))

(declare-fun b!1291056 () Bool)

(declare-fun res!857826 () Bool)

(assert (=> b!1291056 (=> (not res!857826) (not e!737043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85593 (_ BitVec 32)) Bool)

(assert (=> b!1291056 (= res!857826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291057 () Bool)

(declare-fun res!857822 () Bool)

(assert (=> b!1291057 (=> (not res!857822) (not e!737043))))

(assert (=> b!1291057 (= res!857822 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41844 _keys!1741))))))

(declare-fun b!1291058 () Bool)

(assert (=> b!1291058 (= e!737047 tp_is_empty!34299)))

(assert (= (and start!109206 res!857819) b!1291053))

(assert (= (and b!1291053 res!857824) b!1291056))

(assert (= (and b!1291056 res!857826) b!1291054))

(assert (= (and b!1291054 res!857821) b!1291057))

(assert (= (and b!1291057 res!857822) b!1291050))

(assert (= (and b!1291050 res!857823) b!1291051))

(assert (= (and b!1291051 res!857825) b!1291048))

(assert (= (and b!1291048 res!857818) b!1291047))

(assert (= (and b!1291047 (not res!857820)) b!1291049))

(assert (= (and b!1291052 condMapEmpty!53009) mapIsEmpty!53009))

(assert (= (and b!1291052 (not condMapEmpty!53009)) mapNonEmpty!53009))

(get-info :version)

(assert (= (and mapNonEmpty!53009 ((_ is ValueCellFull!16251) mapValue!53009)) b!1291058))

(assert (= (and b!1291052 ((_ is ValueCellFull!16251) mapDefault!53009)) b!1291055))

(assert (= start!109206 b!1291052))

(declare-fun m!1183761 () Bool)

(assert (=> b!1291049 m!1183761))

(declare-fun m!1183763 () Bool)

(assert (=> b!1291049 m!1183763))

(declare-fun m!1183765 () Bool)

(assert (=> b!1291049 m!1183765))

(assert (=> b!1291049 m!1183763))

(declare-fun m!1183767 () Bool)

(assert (=> b!1291049 m!1183767))

(declare-fun m!1183769 () Bool)

(assert (=> b!1291049 m!1183769))

(declare-fun m!1183771 () Bool)

(assert (=> b!1291049 m!1183771))

(declare-fun m!1183773 () Bool)

(assert (=> b!1291049 m!1183773))

(declare-fun m!1183775 () Bool)

(assert (=> b!1291049 m!1183775))

(declare-fun m!1183777 () Bool)

(assert (=> b!1291054 m!1183777))

(declare-fun m!1183779 () Bool)

(assert (=> b!1291048 m!1183779))

(assert (=> b!1291048 m!1183779))

(declare-fun m!1183781 () Bool)

(assert (=> b!1291048 m!1183781))

(declare-fun m!1183783 () Bool)

(assert (=> start!109206 m!1183783))

(declare-fun m!1183785 () Bool)

(assert (=> start!109206 m!1183785))

(declare-fun m!1183787 () Bool)

(assert (=> start!109206 m!1183787))

(declare-fun m!1183789 () Bool)

(assert (=> b!1291047 m!1183789))

(declare-fun m!1183791 () Bool)

(assert (=> b!1291047 m!1183791))

(declare-fun m!1183793 () Bool)

(assert (=> b!1291056 m!1183793))

(declare-fun m!1183795 () Bool)

(assert (=> b!1291050 m!1183795))

(assert (=> b!1291050 m!1183795))

(declare-fun m!1183797 () Bool)

(assert (=> b!1291050 m!1183797))

(declare-fun m!1183799 () Bool)

(assert (=> mapNonEmpty!53009 m!1183799))

(check-sat (not b!1291049) tp_is_empty!34299 b_and!46759 (not b!1291056) (not b!1291050) (not b!1291047) (not start!109206) (not mapNonEmpty!53009) (not b!1291054) (not b_next!28659) (not b!1291048))
(check-sat b_and!46759 (not b_next!28659))
