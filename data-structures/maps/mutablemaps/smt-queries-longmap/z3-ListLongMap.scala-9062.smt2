; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109194 () Bool)

(assert start!109194)

(declare-fun b_free!28647 () Bool)

(declare-fun b_next!28647 () Bool)

(assert (=> start!109194 (= b_free!28647 (not b_next!28647))))

(declare-fun tp!101060 () Bool)

(declare-fun b_and!46747 () Bool)

(assert (=> start!109194 (= tp!101060 b_and!46747)))

(declare-fun b!1290831 () Bool)

(declare-fun res!857658 () Bool)

(declare-fun e!736937 () Bool)

(assert (=> b!1290831 (=> (not res!857658) (not e!736937))))

(declare-datatypes ((array!85569 0))(
  ( (array!85570 (arr!41281 (Array (_ BitVec 32) (_ BitVec 64))) (size!41832 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85569)

(declare-datatypes ((List!29459 0))(
  ( (Nil!29456) (Cons!29455 (h!30664 (_ BitVec 64)) (t!43030 List!29459)) )
))
(declare-fun arrayNoDuplicates!0 (array!85569 (_ BitVec 32) List!29459) Bool)

(assert (=> b!1290831 (= res!857658 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29456))))

(declare-fun b!1290832 () Bool)

(declare-fun e!736938 () Bool)

(assert (=> b!1290832 (= e!736938 true)))

(assert (=> b!1290832 false))

(declare-datatypes ((V!50819 0))(
  ( (V!50820 (val!17218 Int)) )
))
(declare-fun minValue!1387 () V!50819)

(declare-datatypes ((tuple2!22264 0))(
  ( (tuple2!22265 (_1!11142 (_ BitVec 64)) (_2!11142 V!50819)) )
))
(declare-datatypes ((List!29460 0))(
  ( (Nil!29457) (Cons!29456 (h!30665 tuple2!22264) (t!43031 List!29460)) )
))
(declare-datatypes ((ListLongMap!19933 0))(
  ( (ListLongMap!19934 (toList!9982 List!29460)) )
))
(declare-fun lt!578808 () ListLongMap!19933)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((Unit!42653 0))(
  ( (Unit!42654) )
))
(declare-fun lt!578809 () Unit!42653)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!41 ((_ BitVec 64) (_ BitVec 64) V!50819 ListLongMap!19933) Unit!42653)

(assert (=> b!1290832 (= lt!578809 (lemmaInListMapAfterAddingDiffThenInBefore!41 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!578808))))

(declare-fun lt!578807 () ListLongMap!19933)

(declare-fun contains!8038 (ListLongMap!19933 (_ BitVec 64)) Bool)

(declare-fun +!4346 (ListLongMap!19933 tuple2!22264) ListLongMap!19933)

(assert (=> b!1290832 (not (contains!8038 (+!4346 lt!578807 (tuple2!22265 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!578812 () Unit!42653)

(declare-fun addStillNotContains!391 (ListLongMap!19933 (_ BitVec 64) V!50819 (_ BitVec 64)) Unit!42653)

(assert (=> b!1290832 (= lt!578812 (addStillNotContains!391 lt!578807 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1290832 (not (contains!8038 lt!578808 k0!1205))))

(declare-fun zeroValue!1387 () V!50819)

(assert (=> b!1290832 (= lt!578808 (+!4346 lt!578807 (tuple2!22265 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!578811 () Unit!42653)

(assert (=> b!1290832 (= lt!578811 (addStillNotContains!391 lt!578807 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16245 0))(
  ( (ValueCellFull!16245 (v!19819 V!50819)) (EmptyCell!16245) )
))
(declare-datatypes ((array!85571 0))(
  ( (array!85572 (arr!41282 (Array (_ BitVec 32) ValueCell!16245)) (size!41833 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85571)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6058 (array!85569 array!85571 (_ BitVec 32) (_ BitVec 32) V!50819 V!50819 (_ BitVec 32) Int) ListLongMap!19933)

(assert (=> b!1290832 (= lt!578807 (getCurrentListMapNoExtraKeys!6058 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun res!857661 () Bool)

(assert (=> start!109194 (=> (not res!857661) (not e!736937))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109194 (= res!857661 (validMask!0 mask!2175))))

(assert (=> start!109194 e!736937))

(declare-fun tp_is_empty!34287 () Bool)

(assert (=> start!109194 tp_is_empty!34287))

(assert (=> start!109194 true))

(declare-fun e!736936 () Bool)

(declare-fun array_inv!31259 (array!85571) Bool)

(assert (=> start!109194 (and (array_inv!31259 _values!1445) e!736936)))

(declare-fun array_inv!31260 (array!85569) Bool)

(assert (=> start!109194 (array_inv!31260 _keys!1741)))

(assert (=> start!109194 tp!101060))

(declare-fun b!1290833 () Bool)

(declare-fun res!857660 () Bool)

(assert (=> b!1290833 (=> (not res!857660) (not e!736937))))

(assert (=> b!1290833 (= res!857660 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41832 _keys!1741))))))

(declare-fun b!1290834 () Bool)

(assert (=> b!1290834 (= e!736937 (not e!736938))))

(declare-fun res!857659 () Bool)

(assert (=> b!1290834 (=> res!857659 e!736938)))

(assert (=> b!1290834 (= res!857659 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290834 (not (contains!8038 (ListLongMap!19934 Nil!29457) k0!1205))))

(declare-fun lt!578810 () Unit!42653)

(declare-fun emptyContainsNothing!87 ((_ BitVec 64)) Unit!42653)

(assert (=> b!1290834 (= lt!578810 (emptyContainsNothing!87 k0!1205))))

(declare-fun b!1290835 () Bool)

(declare-fun res!857662 () Bool)

(assert (=> b!1290835 (=> (not res!857662) (not e!736937))))

(assert (=> b!1290835 (= res!857662 (and (= (size!41833 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41832 _keys!1741) (size!41833 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52991 () Bool)

(declare-fun mapRes!52991 () Bool)

(assert (=> mapIsEmpty!52991 mapRes!52991))

(declare-fun b!1290836 () Bool)

(declare-fun res!857663 () Bool)

(assert (=> b!1290836 (=> (not res!857663) (not e!736937))))

(declare-fun getCurrentListMap!4982 (array!85569 array!85571 (_ BitVec 32) (_ BitVec 32) V!50819 V!50819 (_ BitVec 32) Int) ListLongMap!19933)

(assert (=> b!1290836 (= res!857663 (contains!8038 (getCurrentListMap!4982 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1290837 () Bool)

(declare-fun e!736935 () Bool)

(assert (=> b!1290837 (= e!736935 tp_is_empty!34287)))

(declare-fun b!1290838 () Bool)

(declare-fun res!857657 () Bool)

(assert (=> b!1290838 (=> (not res!857657) (not e!736937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85569 (_ BitVec 32)) Bool)

(assert (=> b!1290838 (= res!857657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290839 () Bool)

(declare-fun res!857664 () Bool)

(assert (=> b!1290839 (=> (not res!857664) (not e!736937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290839 (= res!857664 (not (validKeyInArray!0 (select (arr!41281 _keys!1741) from!2144))))))

(declare-fun b!1290840 () Bool)

(declare-fun res!857656 () Bool)

(assert (=> b!1290840 (=> (not res!857656) (not e!736937))))

(assert (=> b!1290840 (= res!857656 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41832 _keys!1741))))))

(declare-fun b!1290841 () Bool)

(declare-fun e!736939 () Bool)

(assert (=> b!1290841 (= e!736936 (and e!736939 mapRes!52991))))

(declare-fun condMapEmpty!52991 () Bool)

(declare-fun mapDefault!52991 () ValueCell!16245)

(assert (=> b!1290841 (= condMapEmpty!52991 (= (arr!41282 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16245)) mapDefault!52991)))))

(declare-fun mapNonEmpty!52991 () Bool)

(declare-fun tp!101061 () Bool)

(assert (=> mapNonEmpty!52991 (= mapRes!52991 (and tp!101061 e!736935))))

(declare-fun mapRest!52991 () (Array (_ BitVec 32) ValueCell!16245))

(declare-fun mapKey!52991 () (_ BitVec 32))

(declare-fun mapValue!52991 () ValueCell!16245)

(assert (=> mapNonEmpty!52991 (= (arr!41282 _values!1445) (store mapRest!52991 mapKey!52991 mapValue!52991))))

(declare-fun b!1290842 () Bool)

(assert (=> b!1290842 (= e!736939 tp_is_empty!34287)))

(assert (= (and start!109194 res!857661) b!1290835))

(assert (= (and b!1290835 res!857662) b!1290838))

(assert (= (and b!1290838 res!857657) b!1290831))

(assert (= (and b!1290831 res!857658) b!1290840))

(assert (= (and b!1290840 res!857656) b!1290836))

(assert (= (and b!1290836 res!857663) b!1290833))

(assert (= (and b!1290833 res!857660) b!1290839))

(assert (= (and b!1290839 res!857664) b!1290834))

(assert (= (and b!1290834 (not res!857659)) b!1290832))

(assert (= (and b!1290841 condMapEmpty!52991) mapIsEmpty!52991))

(assert (= (and b!1290841 (not condMapEmpty!52991)) mapNonEmpty!52991))

(get-info :version)

(assert (= (and mapNonEmpty!52991 ((_ is ValueCellFull!16245) mapValue!52991)) b!1290837))

(assert (= (and b!1290841 ((_ is ValueCellFull!16245) mapDefault!52991)) b!1290842))

(assert (= start!109194 b!1290841))

(declare-fun m!1183521 () Bool)

(assert (=> mapNonEmpty!52991 m!1183521))

(declare-fun m!1183523 () Bool)

(assert (=> b!1290831 m!1183523))

(declare-fun m!1183525 () Bool)

(assert (=> b!1290839 m!1183525))

(assert (=> b!1290839 m!1183525))

(declare-fun m!1183527 () Bool)

(assert (=> b!1290839 m!1183527))

(declare-fun m!1183529 () Bool)

(assert (=> b!1290836 m!1183529))

(assert (=> b!1290836 m!1183529))

(declare-fun m!1183531 () Bool)

(assert (=> b!1290836 m!1183531))

(declare-fun m!1183533 () Bool)

(assert (=> b!1290838 m!1183533))

(declare-fun m!1183535 () Bool)

(assert (=> start!109194 m!1183535))

(declare-fun m!1183537 () Bool)

(assert (=> start!109194 m!1183537))

(declare-fun m!1183539 () Bool)

(assert (=> start!109194 m!1183539))

(declare-fun m!1183541 () Bool)

(assert (=> b!1290832 m!1183541))

(declare-fun m!1183543 () Bool)

(assert (=> b!1290832 m!1183543))

(declare-fun m!1183545 () Bool)

(assert (=> b!1290832 m!1183545))

(assert (=> b!1290832 m!1183541))

(declare-fun m!1183547 () Bool)

(assert (=> b!1290832 m!1183547))

(declare-fun m!1183549 () Bool)

(assert (=> b!1290832 m!1183549))

(declare-fun m!1183551 () Bool)

(assert (=> b!1290832 m!1183551))

(declare-fun m!1183553 () Bool)

(assert (=> b!1290832 m!1183553))

(declare-fun m!1183555 () Bool)

(assert (=> b!1290832 m!1183555))

(declare-fun m!1183557 () Bool)

(assert (=> b!1290834 m!1183557))

(declare-fun m!1183559 () Bool)

(assert (=> b!1290834 m!1183559))

(check-sat (not b!1290838) tp_is_empty!34287 (not b!1290831) b_and!46747 (not b!1290834) (not mapNonEmpty!52991) (not b!1290832) (not b!1290839) (not b_next!28647) (not b!1290836) (not start!109194))
(check-sat b_and!46747 (not b_next!28647))
