; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109434 () Bool)

(assert start!109434)

(declare-fun b_free!28887 () Bool)

(declare-fun b_next!28887 () Bool)

(assert (=> start!109434 (= b_free!28887 (not b_next!28887))))

(declare-fun tp!101781 () Bool)

(declare-fun b_and!46987 () Bool)

(assert (=> start!109434 (= tp!101781 b_and!46987)))

(declare-fun b!1294989 () Bool)

(declare-fun e!738937 () Bool)

(declare-fun e!738932 () Bool)

(assert (=> b!1294989 (= e!738937 (not e!738932))))

(declare-fun res!860735 () Bool)

(assert (=> b!1294989 (=> res!860735 e!738932)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1294989 (= res!860735 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51139 0))(
  ( (V!51140 (val!17338 Int)) )
))
(declare-datatypes ((tuple2!22470 0))(
  ( (tuple2!22471 (_1!11245 (_ BitVec 64)) (_2!11245 V!51139)) )
))
(declare-datatypes ((List!29639 0))(
  ( (Nil!29636) (Cons!29635 (h!30844 tuple2!22470) (t!43210 List!29639)) )
))
(declare-datatypes ((ListLongMap!20139 0))(
  ( (ListLongMap!20140 (toList!10085 List!29639)) )
))
(declare-fun contains!8141 (ListLongMap!20139 (_ BitVec 64)) Bool)

(assert (=> b!1294989 (not (contains!8141 (ListLongMap!20140 Nil!29636) k0!1205))))

(declare-datatypes ((Unit!42837 0))(
  ( (Unit!42838) )
))
(declare-fun lt!579746 () Unit!42837)

(declare-fun emptyContainsNothing!174 ((_ BitVec 64)) Unit!42837)

(assert (=> b!1294989 (= lt!579746 (emptyContainsNothing!174 k0!1205))))

(declare-fun b!1294990 () Bool)

(declare-fun res!860734 () Bool)

(assert (=> b!1294990 (=> (not res!860734) (not e!738937))))

(declare-datatypes ((array!86037 0))(
  ( (array!86038 (arr!41515 (Array (_ BitVec 32) (_ BitVec 64))) (size!42066 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86037)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86037 (_ BitVec 32)) Bool)

(assert (=> b!1294990 (= res!860734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!860739 () Bool)

(assert (=> start!109434 (=> (not res!860739) (not e!738937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109434 (= res!860739 (validMask!0 mask!2175))))

(assert (=> start!109434 e!738937))

(declare-fun tp_is_empty!34527 () Bool)

(assert (=> start!109434 tp_is_empty!34527))

(assert (=> start!109434 true))

(declare-datatypes ((ValueCell!16365 0))(
  ( (ValueCellFull!16365 (v!19939 V!51139)) (EmptyCell!16365) )
))
(declare-datatypes ((array!86039 0))(
  ( (array!86040 (arr!41516 (Array (_ BitVec 32) ValueCell!16365)) (size!42067 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86039)

(declare-fun e!738935 () Bool)

(declare-fun array_inv!31415 (array!86039) Bool)

(assert (=> start!109434 (and (array_inv!31415 _values!1445) e!738935)))

(declare-fun array_inv!31416 (array!86037) Bool)

(assert (=> start!109434 (array_inv!31416 _keys!1741)))

(assert (=> start!109434 tp!101781))

(declare-fun b!1294991 () Bool)

(declare-fun res!860737 () Bool)

(assert (=> b!1294991 (=> (not res!860737) (not e!738937))))

(declare-datatypes ((List!29640 0))(
  ( (Nil!29637) (Cons!29636 (h!30845 (_ BitVec 64)) (t!43211 List!29640)) )
))
(declare-fun arrayNoDuplicates!0 (array!86037 (_ BitVec 32) List!29640) Bool)

(assert (=> b!1294991 (= res!860737 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29637))))

(declare-fun b!1294992 () Bool)

(declare-fun res!860738 () Bool)

(assert (=> b!1294992 (=> (not res!860738) (not e!738937))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1294992 (= res!860738 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42066 _keys!1741))))))

(declare-fun b!1294993 () Bool)

(declare-fun res!860741 () Bool)

(assert (=> b!1294993 (=> (not res!860741) (not e!738937))))

(assert (=> b!1294993 (= res!860741 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42066 _keys!1741))))))

(declare-fun mapIsEmpty!53351 () Bool)

(declare-fun mapRes!53351 () Bool)

(assert (=> mapIsEmpty!53351 mapRes!53351))

(declare-fun b!1294994 () Bool)

(declare-fun res!860740 () Bool)

(assert (=> b!1294994 (=> (not res!860740) (not e!738937))))

(declare-fun minValue!1387 () V!51139)

(declare-fun zeroValue!1387 () V!51139)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5066 (array!86037 array!86039 (_ BitVec 32) (_ BitVec 32) V!51139 V!51139 (_ BitVec 32) Int) ListLongMap!20139)

(assert (=> b!1294994 (= res!860740 (contains!8141 (getCurrentListMap!5066 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294995 () Bool)

(declare-fun e!738936 () Bool)

(assert (=> b!1294995 (= e!738935 (and e!738936 mapRes!53351))))

(declare-fun condMapEmpty!53351 () Bool)

(declare-fun mapDefault!53351 () ValueCell!16365)

(assert (=> b!1294995 (= condMapEmpty!53351 (= (arr!41516 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16365)) mapDefault!53351)))))

(declare-fun b!1294996 () Bool)

(declare-fun res!860742 () Bool)

(assert (=> b!1294996 (=> (not res!860742) (not e!738937))))

(assert (=> b!1294996 (= res!860742 (and (= (size!42067 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42066 _keys!1741) (size!42067 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294997 () Bool)

(assert (=> b!1294997 (= e!738932 true)))

(declare-fun lt!579748 () ListLongMap!20139)

(declare-fun +!4389 (ListLongMap!20139 tuple2!22470) ListLongMap!20139)

(assert (=> b!1294997 (not (contains!8141 (+!4389 lt!579748 (tuple2!22471 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579747 () Unit!42837)

(declare-fun addStillNotContains!434 (ListLongMap!20139 (_ BitVec 64) V!51139 (_ BitVec 64)) Unit!42837)

(assert (=> b!1294997 (= lt!579747 (addStillNotContains!434 lt!579748 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6105 (array!86037 array!86039 (_ BitVec 32) (_ BitVec 32) V!51139 V!51139 (_ BitVec 32) Int) ListLongMap!20139)

(assert (=> b!1294997 (= lt!579748 (getCurrentListMapNoExtraKeys!6105 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1294998 () Bool)

(declare-fun res!860736 () Bool)

(assert (=> b!1294998 (=> (not res!860736) (not e!738937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294998 (= res!860736 (not (validKeyInArray!0 (select (arr!41515 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53351 () Bool)

(declare-fun tp!101780 () Bool)

(declare-fun e!738934 () Bool)

(assert (=> mapNonEmpty!53351 (= mapRes!53351 (and tp!101780 e!738934))))

(declare-fun mapKey!53351 () (_ BitVec 32))

(declare-fun mapValue!53351 () ValueCell!16365)

(declare-fun mapRest!53351 () (Array (_ BitVec 32) ValueCell!16365))

(assert (=> mapNonEmpty!53351 (= (arr!41516 _values!1445) (store mapRest!53351 mapKey!53351 mapValue!53351))))

(declare-fun b!1294999 () Bool)

(assert (=> b!1294999 (= e!738934 tp_is_empty!34527)))

(declare-fun b!1295000 () Bool)

(assert (=> b!1295000 (= e!738936 tp_is_empty!34527)))

(assert (= (and start!109434 res!860739) b!1294996))

(assert (= (and b!1294996 res!860742) b!1294990))

(assert (= (and b!1294990 res!860734) b!1294991))

(assert (= (and b!1294991 res!860737) b!1294993))

(assert (= (and b!1294993 res!860741) b!1294994))

(assert (= (and b!1294994 res!860740) b!1294992))

(assert (= (and b!1294992 res!860738) b!1294998))

(assert (= (and b!1294998 res!860736) b!1294989))

(assert (= (and b!1294989 (not res!860735)) b!1294997))

(assert (= (and b!1294995 condMapEmpty!53351) mapIsEmpty!53351))

(assert (= (and b!1294995 (not condMapEmpty!53351)) mapNonEmpty!53351))

(get-info :version)

(assert (= (and mapNonEmpty!53351 ((_ is ValueCellFull!16365) mapValue!53351)) b!1294999))

(assert (= (and b!1294995 ((_ is ValueCellFull!16365) mapDefault!53351)) b!1295000))

(assert (= start!109434 b!1294995))

(declare-fun m!1187089 () Bool)

(assert (=> start!109434 m!1187089))

(declare-fun m!1187091 () Bool)

(assert (=> start!109434 m!1187091))

(declare-fun m!1187093 () Bool)

(assert (=> start!109434 m!1187093))

(declare-fun m!1187095 () Bool)

(assert (=> b!1294998 m!1187095))

(assert (=> b!1294998 m!1187095))

(declare-fun m!1187097 () Bool)

(assert (=> b!1294998 m!1187097))

(declare-fun m!1187099 () Bool)

(assert (=> b!1294994 m!1187099))

(assert (=> b!1294994 m!1187099))

(declare-fun m!1187101 () Bool)

(assert (=> b!1294994 m!1187101))

(declare-fun m!1187103 () Bool)

(assert (=> b!1294997 m!1187103))

(assert (=> b!1294997 m!1187103))

(declare-fun m!1187105 () Bool)

(assert (=> b!1294997 m!1187105))

(declare-fun m!1187107 () Bool)

(assert (=> b!1294997 m!1187107))

(declare-fun m!1187109 () Bool)

(assert (=> b!1294997 m!1187109))

(declare-fun m!1187111 () Bool)

(assert (=> mapNonEmpty!53351 m!1187111))

(declare-fun m!1187113 () Bool)

(assert (=> b!1294991 m!1187113))

(declare-fun m!1187115 () Bool)

(assert (=> b!1294990 m!1187115))

(declare-fun m!1187117 () Bool)

(assert (=> b!1294989 m!1187117))

(declare-fun m!1187119 () Bool)

(assert (=> b!1294989 m!1187119))

(check-sat (not b!1294994) (not b!1294997) (not b_next!28887) (not mapNonEmpty!53351) (not b!1294991) (not start!109434) (not b!1294998) b_and!46987 tp_is_empty!34527 (not b!1294989) (not b!1294990))
(check-sat b_and!46987 (not b_next!28887))
