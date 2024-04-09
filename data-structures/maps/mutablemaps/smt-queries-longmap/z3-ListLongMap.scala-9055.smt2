; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109152 () Bool)

(assert start!109152)

(declare-fun b_free!28605 () Bool)

(declare-fun b_next!28605 () Bool)

(assert (=> start!109152 (= b_free!28605 (not b_next!28605))))

(declare-fun tp!100935 () Bool)

(declare-fun b_and!46705 () Bool)

(assert (=> start!109152 (= tp!100935 b_and!46705)))

(declare-fun res!857090 () Bool)

(declare-fun e!736557 () Bool)

(assert (=> start!109152 (=> (not res!857090) (not e!736557))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109152 (= res!857090 (validMask!0 mask!2175))))

(assert (=> start!109152 e!736557))

(declare-fun tp_is_empty!34245 () Bool)

(assert (=> start!109152 tp_is_empty!34245))

(assert (=> start!109152 true))

(declare-datatypes ((V!50763 0))(
  ( (V!50764 (val!17197 Int)) )
))
(declare-datatypes ((ValueCell!16224 0))(
  ( (ValueCellFull!16224 (v!19798 V!50763)) (EmptyCell!16224) )
))
(declare-datatypes ((array!85489 0))(
  ( (array!85490 (arr!41241 (Array (_ BitVec 32) ValueCell!16224)) (size!41792 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85489)

(declare-fun e!736561 () Bool)

(declare-fun array_inv!31233 (array!85489) Bool)

(assert (=> start!109152 (and (array_inv!31233 _values!1445) e!736561)))

(declare-datatypes ((array!85491 0))(
  ( (array!85492 (arr!41242 (Array (_ BitVec 32) (_ BitVec 64))) (size!41793 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85491)

(declare-fun array_inv!31234 (array!85491) Bool)

(assert (=> start!109152 (array_inv!31234 _keys!1741)))

(assert (=> start!109152 tp!100935))

(declare-fun b!1290075 () Bool)

(declare-fun res!857091 () Bool)

(assert (=> b!1290075 (=> (not res!857091) (not e!736557))))

(declare-fun minValue!1387 () V!50763)

(declare-fun zeroValue!1387 () V!50763)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22232 0))(
  ( (tuple2!22233 (_1!11126 (_ BitVec 64)) (_2!11126 V!50763)) )
))
(declare-datatypes ((List!29429 0))(
  ( (Nil!29426) (Cons!29425 (h!30634 tuple2!22232) (t!43000 List!29429)) )
))
(declare-datatypes ((ListLongMap!19901 0))(
  ( (ListLongMap!19902 (toList!9966 List!29429)) )
))
(declare-fun contains!8022 (ListLongMap!19901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4967 (array!85491 array!85489 (_ BitVec 32) (_ BitVec 32) V!50763 V!50763 (_ BitVec 32) Int) ListLongMap!19901)

(assert (=> b!1290075 (= res!857091 (contains!8022 (getCurrentListMap!4967 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290076 () Bool)

(declare-fun e!736556 () Bool)

(assert (=> b!1290076 (= e!736557 (not e!736556))))

(declare-fun res!857089 () Bool)

(assert (=> b!1290076 (=> res!857089 e!736556)))

(assert (=> b!1290076 (= res!857089 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290076 (not (contains!8022 (ListLongMap!19902 Nil!29426) k0!1205))))

(declare-datatypes ((Unit!42623 0))(
  ( (Unit!42624) )
))
(declare-fun lt!578437 () Unit!42623)

(declare-fun emptyContainsNothing!73 ((_ BitVec 64)) Unit!42623)

(assert (=> b!1290076 (= lt!578437 (emptyContainsNothing!73 k0!1205))))

(declare-fun b!1290077 () Bool)

(declare-fun res!857096 () Bool)

(assert (=> b!1290077 (=> (not res!857096) (not e!736557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85491 (_ BitVec 32)) Bool)

(assert (=> b!1290077 (= res!857096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290078 () Bool)

(declare-fun e!736559 () Bool)

(assert (=> b!1290078 (= e!736559 tp_is_empty!34245)))

(declare-fun b!1290079 () Bool)

(assert (=> b!1290079 (= e!736556 true)))

(declare-fun lt!578440 () ListLongMap!19901)

(declare-fun +!4336 (ListLongMap!19901 tuple2!22232) ListLongMap!19901)

(assert (=> b!1290079 (not (contains!8022 (+!4336 lt!578440 (tuple2!22233 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578439 () Unit!42623)

(declare-fun addStillNotContains!381 (ListLongMap!19901 (_ BitVec 64) V!50763 (_ BitVec 64)) Unit!42623)

(assert (=> b!1290079 (= lt!578439 (addStillNotContains!381 lt!578440 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290079 (not (contains!8022 (+!4336 lt!578440 (tuple2!22233 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578438 () Unit!42623)

(assert (=> b!1290079 (= lt!578438 (addStillNotContains!381 lt!578440 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6048 (array!85491 array!85489 (_ BitVec 32) (_ BitVec 32) V!50763 V!50763 (_ BitVec 32) Int) ListLongMap!19901)

(assert (=> b!1290079 (= lt!578440 (getCurrentListMapNoExtraKeys!6048 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1290080 () Bool)

(declare-fun res!857094 () Bool)

(assert (=> b!1290080 (=> (not res!857094) (not e!736557))))

(declare-datatypes ((List!29430 0))(
  ( (Nil!29427) (Cons!29426 (h!30635 (_ BitVec 64)) (t!43001 List!29430)) )
))
(declare-fun arrayNoDuplicates!0 (array!85491 (_ BitVec 32) List!29430) Bool)

(assert (=> b!1290080 (= res!857094 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29427))))

(declare-fun b!1290081 () Bool)

(declare-fun e!736560 () Bool)

(assert (=> b!1290081 (= e!736560 tp_is_empty!34245)))

(declare-fun b!1290082 () Bool)

(declare-fun res!857097 () Bool)

(assert (=> b!1290082 (=> (not res!857097) (not e!736557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290082 (= res!857097 (not (validKeyInArray!0 (select (arr!41242 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!52928 () Bool)

(declare-fun mapRes!52928 () Bool)

(assert (=> mapIsEmpty!52928 mapRes!52928))

(declare-fun mapNonEmpty!52928 () Bool)

(declare-fun tp!100934 () Bool)

(assert (=> mapNonEmpty!52928 (= mapRes!52928 (and tp!100934 e!736559))))

(declare-fun mapKey!52928 () (_ BitVec 32))

(declare-fun mapRest!52928 () (Array (_ BitVec 32) ValueCell!16224))

(declare-fun mapValue!52928 () ValueCell!16224)

(assert (=> mapNonEmpty!52928 (= (arr!41241 _values!1445) (store mapRest!52928 mapKey!52928 mapValue!52928))))

(declare-fun b!1290083 () Bool)

(assert (=> b!1290083 (= e!736561 (and e!736560 mapRes!52928))))

(declare-fun condMapEmpty!52928 () Bool)

(declare-fun mapDefault!52928 () ValueCell!16224)

(assert (=> b!1290083 (= condMapEmpty!52928 (= (arr!41241 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16224)) mapDefault!52928)))))

(declare-fun b!1290084 () Bool)

(declare-fun res!857092 () Bool)

(assert (=> b!1290084 (=> (not res!857092) (not e!736557))))

(assert (=> b!1290084 (= res!857092 (and (= (size!41792 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41793 _keys!1741) (size!41792 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290085 () Bool)

(declare-fun res!857093 () Bool)

(assert (=> b!1290085 (=> (not res!857093) (not e!736557))))

(assert (=> b!1290085 (= res!857093 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41793 _keys!1741))))))

(declare-fun b!1290086 () Bool)

(declare-fun res!857095 () Bool)

(assert (=> b!1290086 (=> (not res!857095) (not e!736557))))

(assert (=> b!1290086 (= res!857095 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41793 _keys!1741))))))

(assert (= (and start!109152 res!857090) b!1290084))

(assert (= (and b!1290084 res!857092) b!1290077))

(assert (= (and b!1290077 res!857096) b!1290080))

(assert (= (and b!1290080 res!857094) b!1290086))

(assert (= (and b!1290086 res!857095) b!1290075))

(assert (= (and b!1290075 res!857091) b!1290085))

(assert (= (and b!1290085 res!857093) b!1290082))

(assert (= (and b!1290082 res!857097) b!1290076))

(assert (= (and b!1290076 (not res!857089)) b!1290079))

(assert (= (and b!1290083 condMapEmpty!52928) mapIsEmpty!52928))

(assert (= (and b!1290083 (not condMapEmpty!52928)) mapNonEmpty!52928))

(get-info :version)

(assert (= (and mapNonEmpty!52928 ((_ is ValueCellFull!16224) mapValue!52928)) b!1290078))

(assert (= (and b!1290083 ((_ is ValueCellFull!16224) mapDefault!52928)) b!1290081))

(assert (= start!109152 b!1290083))

(declare-fun m!1182679 () Bool)

(assert (=> b!1290075 m!1182679))

(assert (=> b!1290075 m!1182679))

(declare-fun m!1182681 () Bool)

(assert (=> b!1290075 m!1182681))

(declare-fun m!1182683 () Bool)

(assert (=> mapNonEmpty!52928 m!1182683))

(declare-fun m!1182685 () Bool)

(assert (=> start!109152 m!1182685))

(declare-fun m!1182687 () Bool)

(assert (=> start!109152 m!1182687))

(declare-fun m!1182689 () Bool)

(assert (=> start!109152 m!1182689))

(declare-fun m!1182691 () Bool)

(assert (=> b!1290080 m!1182691))

(declare-fun m!1182693 () Bool)

(assert (=> b!1290076 m!1182693))

(declare-fun m!1182695 () Bool)

(assert (=> b!1290076 m!1182695))

(declare-fun m!1182697 () Bool)

(assert (=> b!1290079 m!1182697))

(declare-fun m!1182699 () Bool)

(assert (=> b!1290079 m!1182699))

(assert (=> b!1290079 m!1182697))

(declare-fun m!1182701 () Bool)

(assert (=> b!1290079 m!1182701))

(declare-fun m!1182703 () Bool)

(assert (=> b!1290079 m!1182703))

(declare-fun m!1182705 () Bool)

(assert (=> b!1290079 m!1182705))

(assert (=> b!1290079 m!1182703))

(declare-fun m!1182707 () Bool)

(assert (=> b!1290079 m!1182707))

(declare-fun m!1182709 () Bool)

(assert (=> b!1290079 m!1182709))

(declare-fun m!1182711 () Bool)

(assert (=> b!1290082 m!1182711))

(assert (=> b!1290082 m!1182711))

(declare-fun m!1182713 () Bool)

(assert (=> b!1290082 m!1182713))

(declare-fun m!1182715 () Bool)

(assert (=> b!1290077 m!1182715))

(check-sat (not b!1290079) (not b!1290077) (not b!1290076) b_and!46705 (not mapNonEmpty!52928) (not b_next!28605) (not b!1290075) (not b!1290080) (not start!109152) (not b!1290082) tp_is_empty!34245)
(check-sat b_and!46705 (not b_next!28605))
