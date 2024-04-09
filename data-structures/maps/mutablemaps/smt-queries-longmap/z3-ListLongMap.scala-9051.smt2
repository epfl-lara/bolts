; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109128 () Bool)

(assert start!109128)

(declare-fun b_free!28581 () Bool)

(declare-fun b_next!28581 () Bool)

(assert (=> start!109128 (= b_free!28581 (not b_next!28581))))

(declare-fun tp!100862 () Bool)

(declare-fun b_and!46681 () Bool)

(assert (=> start!109128 (= tp!100862 b_and!46681)))

(declare-fun b!1289643 () Bool)

(declare-fun res!856769 () Bool)

(declare-fun e!736340 () Bool)

(assert (=> b!1289643 (=> (not res!856769) (not e!736340))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85441 0))(
  ( (array!85442 (arr!41217 (Array (_ BitVec 32) (_ BitVec 64))) (size!41768 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85441)

(assert (=> b!1289643 (= res!856769 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41768 _keys!1741))))))

(declare-fun b!1289644 () Bool)

(declare-fun res!856768 () Bool)

(assert (=> b!1289644 (=> (not res!856768) (not e!736340))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50731 0))(
  ( (V!50732 (val!17185 Int)) )
))
(declare-datatypes ((ValueCell!16212 0))(
  ( (ValueCellFull!16212 (v!19786 V!50731)) (EmptyCell!16212) )
))
(declare-datatypes ((array!85443 0))(
  ( (array!85444 (arr!41218 (Array (_ BitVec 32) ValueCell!16212)) (size!41769 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85443)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1289644 (= res!856768 (and (= (size!41769 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41768 _keys!1741) (size!41769 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289645 () Bool)

(declare-fun res!856773 () Bool)

(assert (=> b!1289645 (=> (not res!856773) (not e!736340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289645 (= res!856773 (not (validKeyInArray!0 (select (arr!41217 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!52892 () Bool)

(declare-fun mapRes!52892 () Bool)

(assert (=> mapIsEmpty!52892 mapRes!52892))

(declare-fun b!1289646 () Bool)

(declare-fun e!736345 () Bool)

(assert (=> b!1289646 (= e!736345 true)))

(declare-datatypes ((tuple2!22208 0))(
  ( (tuple2!22209 (_1!11114 (_ BitVec 64)) (_2!11114 V!50731)) )
))
(declare-datatypes ((List!29408 0))(
  ( (Nil!29405) (Cons!29404 (h!30613 tuple2!22208) (t!42979 List!29408)) )
))
(declare-datatypes ((ListLongMap!19877 0))(
  ( (ListLongMap!19878 (toList!9954 List!29408)) )
))
(declare-fun lt!578295 () ListLongMap!19877)

(declare-fun minValue!1387 () V!50731)

(declare-fun contains!8010 (ListLongMap!19877 (_ BitVec 64)) Bool)

(declare-fun +!4326 (ListLongMap!19877 tuple2!22208) ListLongMap!19877)

(assert (=> b!1289646 (not (contains!8010 (+!4326 lt!578295 (tuple2!22209 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42603 0))(
  ( (Unit!42604) )
))
(declare-fun lt!578293 () Unit!42603)

(declare-fun addStillNotContains!371 (ListLongMap!19877 (_ BitVec 64) V!50731 (_ BitVec 64)) Unit!42603)

(assert (=> b!1289646 (= lt!578293 (addStillNotContains!371 lt!578295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!50731)

(assert (=> b!1289646 (not (contains!8010 (+!4326 lt!578295 (tuple2!22209 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!578294 () Unit!42603)

(assert (=> b!1289646 (= lt!578294 (addStillNotContains!371 lt!578295 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6038 (array!85441 array!85443 (_ BitVec 32) (_ BitVec 32) V!50731 V!50731 (_ BitVec 32) Int) ListLongMap!19877)

(assert (=> b!1289646 (= lt!578295 (getCurrentListMapNoExtraKeys!6038 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!52892 () Bool)

(declare-fun tp!100863 () Bool)

(declare-fun e!736342 () Bool)

(assert (=> mapNonEmpty!52892 (= mapRes!52892 (and tp!100863 e!736342))))

(declare-fun mapRest!52892 () (Array (_ BitVec 32) ValueCell!16212))

(declare-fun mapValue!52892 () ValueCell!16212)

(declare-fun mapKey!52892 () (_ BitVec 32))

(assert (=> mapNonEmpty!52892 (= (arr!41218 _values!1445) (store mapRest!52892 mapKey!52892 mapValue!52892))))

(declare-fun b!1289647 () Bool)

(declare-fun tp_is_empty!34221 () Bool)

(assert (=> b!1289647 (= e!736342 tp_is_empty!34221)))

(declare-fun b!1289648 () Bool)

(assert (=> b!1289648 (= e!736340 (not e!736345))))

(declare-fun res!856770 () Bool)

(assert (=> b!1289648 (=> res!856770 e!736345)))

(assert (=> b!1289648 (= res!856770 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289648 (not (contains!8010 (ListLongMap!19878 Nil!29405) k0!1205))))

(declare-fun lt!578296 () Unit!42603)

(declare-fun emptyContainsNothing!64 ((_ BitVec 64)) Unit!42603)

(assert (=> b!1289648 (= lt!578296 (emptyContainsNothing!64 k0!1205))))

(declare-fun b!1289649 () Bool)

(declare-fun e!736341 () Bool)

(declare-fun e!736344 () Bool)

(assert (=> b!1289649 (= e!736341 (and e!736344 mapRes!52892))))

(declare-fun condMapEmpty!52892 () Bool)

(declare-fun mapDefault!52892 () ValueCell!16212)

(assert (=> b!1289649 (= condMapEmpty!52892 (= (arr!41218 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16212)) mapDefault!52892)))))

(declare-fun b!1289650 () Bool)

(declare-fun res!856766 () Bool)

(assert (=> b!1289650 (=> (not res!856766) (not e!736340))))

(declare-fun getCurrentListMap!4956 (array!85441 array!85443 (_ BitVec 32) (_ BitVec 32) V!50731 V!50731 (_ BitVec 32) Int) ListLongMap!19877)

(assert (=> b!1289650 (= res!856766 (contains!8010 (getCurrentListMap!4956 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289652 () Bool)

(declare-fun res!856767 () Bool)

(assert (=> b!1289652 (=> (not res!856767) (not e!736340))))

(declare-datatypes ((List!29409 0))(
  ( (Nil!29406) (Cons!29405 (h!30614 (_ BitVec 64)) (t!42980 List!29409)) )
))
(declare-fun arrayNoDuplicates!0 (array!85441 (_ BitVec 32) List!29409) Bool)

(assert (=> b!1289652 (= res!856767 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29406))))

(declare-fun b!1289653 () Bool)

(assert (=> b!1289653 (= e!736344 tp_is_empty!34221)))

(declare-fun b!1289654 () Bool)

(declare-fun res!856765 () Bool)

(assert (=> b!1289654 (=> (not res!856765) (not e!736340))))

(assert (=> b!1289654 (= res!856765 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41768 _keys!1741))))))

(declare-fun b!1289651 () Bool)

(declare-fun res!856771 () Bool)

(assert (=> b!1289651 (=> (not res!856771) (not e!736340))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85441 (_ BitVec 32)) Bool)

(assert (=> b!1289651 (= res!856771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!856772 () Bool)

(assert (=> start!109128 (=> (not res!856772) (not e!736340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109128 (= res!856772 (validMask!0 mask!2175))))

(assert (=> start!109128 e!736340))

(assert (=> start!109128 tp_is_empty!34221))

(assert (=> start!109128 true))

(declare-fun array_inv!31219 (array!85443) Bool)

(assert (=> start!109128 (and (array_inv!31219 _values!1445) e!736341)))

(declare-fun array_inv!31220 (array!85441) Bool)

(assert (=> start!109128 (array_inv!31220 _keys!1741)))

(assert (=> start!109128 tp!100862))

(assert (= (and start!109128 res!856772) b!1289644))

(assert (= (and b!1289644 res!856768) b!1289651))

(assert (= (and b!1289651 res!856771) b!1289652))

(assert (= (and b!1289652 res!856767) b!1289654))

(assert (= (and b!1289654 res!856765) b!1289650))

(assert (= (and b!1289650 res!856766) b!1289643))

(assert (= (and b!1289643 res!856769) b!1289645))

(assert (= (and b!1289645 res!856773) b!1289648))

(assert (= (and b!1289648 (not res!856770)) b!1289646))

(assert (= (and b!1289649 condMapEmpty!52892) mapIsEmpty!52892))

(assert (= (and b!1289649 (not condMapEmpty!52892)) mapNonEmpty!52892))

(get-info :version)

(assert (= (and mapNonEmpty!52892 ((_ is ValueCellFull!16212) mapValue!52892)) b!1289647))

(assert (= (and b!1289649 ((_ is ValueCellFull!16212) mapDefault!52892)) b!1289653))

(assert (= start!109128 b!1289649))

(declare-fun m!1182223 () Bool)

(assert (=> b!1289646 m!1182223))

(declare-fun m!1182225 () Bool)

(assert (=> b!1289646 m!1182225))

(declare-fun m!1182227 () Bool)

(assert (=> b!1289646 m!1182227))

(declare-fun m!1182229 () Bool)

(assert (=> b!1289646 m!1182229))

(declare-fun m!1182231 () Bool)

(assert (=> b!1289646 m!1182231))

(assert (=> b!1289646 m!1182227))

(declare-fun m!1182233 () Bool)

(assert (=> b!1289646 m!1182233))

(assert (=> b!1289646 m!1182229))

(declare-fun m!1182235 () Bool)

(assert (=> b!1289646 m!1182235))

(declare-fun m!1182237 () Bool)

(assert (=> b!1289650 m!1182237))

(assert (=> b!1289650 m!1182237))

(declare-fun m!1182239 () Bool)

(assert (=> b!1289650 m!1182239))

(declare-fun m!1182241 () Bool)

(assert (=> b!1289648 m!1182241))

(declare-fun m!1182243 () Bool)

(assert (=> b!1289648 m!1182243))

(declare-fun m!1182245 () Bool)

(assert (=> mapNonEmpty!52892 m!1182245))

(declare-fun m!1182247 () Bool)

(assert (=> b!1289652 m!1182247))

(declare-fun m!1182249 () Bool)

(assert (=> b!1289645 m!1182249))

(assert (=> b!1289645 m!1182249))

(declare-fun m!1182251 () Bool)

(assert (=> b!1289645 m!1182251))

(declare-fun m!1182253 () Bool)

(assert (=> b!1289651 m!1182253))

(declare-fun m!1182255 () Bool)

(assert (=> start!109128 m!1182255))

(declare-fun m!1182257 () Bool)

(assert (=> start!109128 m!1182257))

(declare-fun m!1182259 () Bool)

(assert (=> start!109128 m!1182259))

(check-sat (not b!1289646) tp_is_empty!34221 (not start!109128) (not b!1289652) (not b_next!28581) (not b!1289650) b_and!46681 (not b!1289651) (not b!1289645) (not b!1289648) (not mapNonEmpty!52892))
(check-sat b_and!46681 (not b_next!28581))
