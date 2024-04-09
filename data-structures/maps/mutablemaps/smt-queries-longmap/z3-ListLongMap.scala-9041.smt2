; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109068 () Bool)

(assert start!109068)

(declare-fun b_free!28521 () Bool)

(declare-fun b_next!28521 () Bool)

(assert (=> start!109068 (= b_free!28521 (not b_next!28521))))

(declare-fun tp!100683 () Bool)

(declare-fun b_and!46621 () Bool)

(assert (=> start!109068 (= tp!100683 b_and!46621)))

(declare-fun b!1288563 () Bool)

(declare-fun e!735805 () Bool)

(declare-fun tp_is_empty!34161 () Bool)

(assert (=> b!1288563 (= e!735805 tp_is_empty!34161)))

(declare-fun b!1288564 () Bool)

(declare-fun res!855957 () Bool)

(declare-fun e!735803 () Bool)

(assert (=> b!1288564 (=> (not res!855957) (not e!735803))))

(declare-datatypes ((array!85323 0))(
  ( (array!85324 (arr!41158 (Array (_ BitVec 32) (_ BitVec 64))) (size!41709 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85323)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85323 (_ BitVec 32)) Bool)

(assert (=> b!1288564 (= res!855957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288565 () Bool)

(declare-fun e!735800 () Bool)

(assert (=> b!1288565 (= e!735800 tp_is_empty!34161)))

(declare-fun b!1288566 () Bool)

(declare-fun res!855962 () Bool)

(assert (=> b!1288566 (=> (not res!855962) (not e!735803))))

(declare-datatypes ((V!50651 0))(
  ( (V!50652 (val!17155 Int)) )
))
(declare-datatypes ((ValueCell!16182 0))(
  ( (ValueCellFull!16182 (v!19756 V!50651)) (EmptyCell!16182) )
))
(declare-datatypes ((array!85325 0))(
  ( (array!85326 (arr!41159 (Array (_ BitVec 32) ValueCell!16182)) (size!41710 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85325)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288566 (= res!855962 (and (= (size!41710 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41709 _keys!1741) (size!41710 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288567 () Bool)

(declare-fun res!855956 () Bool)

(assert (=> b!1288567 (=> (not res!855956) (not e!735803))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1288567 (= res!855956 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41709 _keys!1741))))))

(declare-fun b!1288568 () Bool)

(declare-fun res!855959 () Bool)

(assert (=> b!1288568 (=> (not res!855959) (not e!735803))))

(declare-fun minValue!1387 () V!50651)

(declare-fun zeroValue!1387 () V!50651)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22160 0))(
  ( (tuple2!22161 (_1!11090 (_ BitVec 64)) (_2!11090 V!50651)) )
))
(declare-datatypes ((List!29358 0))(
  ( (Nil!29355) (Cons!29354 (h!30563 tuple2!22160) (t!42929 List!29358)) )
))
(declare-datatypes ((ListLongMap!19829 0))(
  ( (ListLongMap!19830 (toList!9930 List!29358)) )
))
(declare-fun contains!7986 (ListLongMap!19829 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4933 (array!85323 array!85325 (_ BitVec 32) (_ BitVec 32) V!50651 V!50651 (_ BitVec 32) Int) ListLongMap!19829)

(assert (=> b!1288568 (= res!855959 (contains!7986 (getCurrentListMap!4933 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52802 () Bool)

(declare-fun mapRes!52802 () Bool)

(declare-fun tp!100682 () Bool)

(assert (=> mapNonEmpty!52802 (= mapRes!52802 (and tp!100682 e!735800))))

(declare-fun mapRest!52802 () (Array (_ BitVec 32) ValueCell!16182))

(declare-fun mapKey!52802 () (_ BitVec 32))

(declare-fun mapValue!52802 () ValueCell!16182)

(assert (=> mapNonEmpty!52802 (= (arr!41159 _values!1445) (store mapRest!52802 mapKey!52802 mapValue!52802))))

(declare-fun b!1288569 () Bool)

(declare-fun res!855963 () Bool)

(assert (=> b!1288569 (=> (not res!855963) (not e!735803))))

(assert (=> b!1288569 (= res!855963 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41709 _keys!1741))))))

(declare-fun res!855960 () Bool)

(assert (=> start!109068 (=> (not res!855960) (not e!735803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109068 (= res!855960 (validMask!0 mask!2175))))

(assert (=> start!109068 e!735803))

(assert (=> start!109068 tp_is_empty!34161))

(assert (=> start!109068 true))

(declare-fun e!735801 () Bool)

(declare-fun array_inv!31179 (array!85325) Bool)

(assert (=> start!109068 (and (array_inv!31179 _values!1445) e!735801)))

(declare-fun array_inv!31180 (array!85323) Bool)

(assert (=> start!109068 (array_inv!31180 _keys!1741)))

(assert (=> start!109068 tp!100683))

(declare-fun b!1288570 () Bool)

(declare-fun res!855961 () Bool)

(assert (=> b!1288570 (=> (not res!855961) (not e!735803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288570 (= res!855961 (not (validKeyInArray!0 (select (arr!41158 _keys!1741) from!2144))))))

(declare-fun b!1288571 () Bool)

(declare-fun e!735804 () Bool)

(assert (=> b!1288571 (= e!735803 (not e!735804))))

(declare-fun res!855955 () Bool)

(assert (=> b!1288571 (=> res!855955 e!735804)))

(assert (=> b!1288571 (= res!855955 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1288571 (not (contains!7986 (ListLongMap!19830 Nil!29355) k0!1205))))

(declare-datatypes ((Unit!42555 0))(
  ( (Unit!42556) )
))
(declare-fun lt!577982 () Unit!42555)

(declare-fun emptyContainsNothing!43 ((_ BitVec 64)) Unit!42555)

(assert (=> b!1288571 (= lt!577982 (emptyContainsNothing!43 k0!1205))))

(declare-fun b!1288572 () Bool)

(assert (=> b!1288572 (= e!735804 true)))

(declare-fun lt!577983 () ListLongMap!19829)

(declare-fun +!4305 (ListLongMap!19829 tuple2!22160) ListLongMap!19829)

(assert (=> b!1288572 (not (contains!7986 (+!4305 lt!577983 (tuple2!22161 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!577984 () Unit!42555)

(declare-fun addStillNotContains!350 (ListLongMap!19829 (_ BitVec 64) V!50651 (_ BitVec 64)) Unit!42555)

(assert (=> b!1288572 (= lt!577984 (addStillNotContains!350 lt!577983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6017 (array!85323 array!85325 (_ BitVec 32) (_ BitVec 32) V!50651 V!50651 (_ BitVec 32) Int) ListLongMap!19829)

(assert (=> b!1288572 (= lt!577983 (getCurrentListMapNoExtraKeys!6017 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288573 () Bool)

(assert (=> b!1288573 (= e!735801 (and e!735805 mapRes!52802))))

(declare-fun condMapEmpty!52802 () Bool)

(declare-fun mapDefault!52802 () ValueCell!16182)

(assert (=> b!1288573 (= condMapEmpty!52802 (= (arr!41159 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16182)) mapDefault!52802)))))

(declare-fun b!1288574 () Bool)

(declare-fun res!855958 () Bool)

(assert (=> b!1288574 (=> (not res!855958) (not e!735803))))

(declare-datatypes ((List!29359 0))(
  ( (Nil!29356) (Cons!29355 (h!30564 (_ BitVec 64)) (t!42930 List!29359)) )
))
(declare-fun arrayNoDuplicates!0 (array!85323 (_ BitVec 32) List!29359) Bool)

(assert (=> b!1288574 (= res!855958 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29356))))

(declare-fun mapIsEmpty!52802 () Bool)

(assert (=> mapIsEmpty!52802 mapRes!52802))

(assert (= (and start!109068 res!855960) b!1288566))

(assert (= (and b!1288566 res!855962) b!1288564))

(assert (= (and b!1288564 res!855957) b!1288574))

(assert (= (and b!1288574 res!855958) b!1288569))

(assert (= (and b!1288569 res!855963) b!1288568))

(assert (= (and b!1288568 res!855959) b!1288567))

(assert (= (and b!1288567 res!855956) b!1288570))

(assert (= (and b!1288570 res!855961) b!1288571))

(assert (= (and b!1288571 (not res!855955)) b!1288572))

(assert (= (and b!1288573 condMapEmpty!52802) mapIsEmpty!52802))

(assert (= (and b!1288573 (not condMapEmpty!52802)) mapNonEmpty!52802))

(get-info :version)

(assert (= (and mapNonEmpty!52802 ((_ is ValueCellFull!16182) mapValue!52802)) b!1288565))

(assert (= (and b!1288573 ((_ is ValueCellFull!16182) mapDefault!52802)) b!1288563))

(assert (= start!109068 b!1288573))

(declare-fun m!1181197 () Bool)

(assert (=> b!1288574 m!1181197))

(declare-fun m!1181199 () Bool)

(assert (=> start!109068 m!1181199))

(declare-fun m!1181201 () Bool)

(assert (=> start!109068 m!1181201))

(declare-fun m!1181203 () Bool)

(assert (=> start!109068 m!1181203))

(declare-fun m!1181205 () Bool)

(assert (=> b!1288572 m!1181205))

(assert (=> b!1288572 m!1181205))

(declare-fun m!1181207 () Bool)

(assert (=> b!1288572 m!1181207))

(declare-fun m!1181209 () Bool)

(assert (=> b!1288572 m!1181209))

(declare-fun m!1181211 () Bool)

(assert (=> b!1288572 m!1181211))

(declare-fun m!1181213 () Bool)

(assert (=> b!1288564 m!1181213))

(declare-fun m!1181215 () Bool)

(assert (=> b!1288568 m!1181215))

(assert (=> b!1288568 m!1181215))

(declare-fun m!1181217 () Bool)

(assert (=> b!1288568 m!1181217))

(declare-fun m!1181219 () Bool)

(assert (=> b!1288571 m!1181219))

(declare-fun m!1181221 () Bool)

(assert (=> b!1288571 m!1181221))

(declare-fun m!1181223 () Bool)

(assert (=> b!1288570 m!1181223))

(assert (=> b!1288570 m!1181223))

(declare-fun m!1181225 () Bool)

(assert (=> b!1288570 m!1181225))

(declare-fun m!1181227 () Bool)

(assert (=> mapNonEmpty!52802 m!1181227))

(check-sat tp_is_empty!34161 b_and!46621 (not b!1288570) (not b!1288574) (not b!1288572) (not b!1288568) (not start!109068) (not b!1288564) (not b!1288571) (not b_next!28521) (not mapNonEmpty!52802))
(check-sat b_and!46621 (not b_next!28521))
