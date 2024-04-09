; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109470 () Bool)

(assert start!109470)

(declare-fun b_free!28923 () Bool)

(declare-fun b_next!28923 () Bool)

(assert (=> start!109470 (= b_free!28923 (not b_next!28923))))

(declare-fun tp!101888 () Bool)

(declare-fun b_and!47023 () Bool)

(assert (=> start!109470 (= tp!101888 b_and!47023)))

(declare-fun b!1295637 () Bool)

(declare-fun res!861222 () Bool)

(declare-fun e!739259 () Bool)

(assert (=> b!1295637 (=> (not res!861222) (not e!739259))))

(declare-datatypes ((array!86107 0))(
  ( (array!86108 (arr!41550 (Array (_ BitVec 32) (_ BitVec 64))) (size!42101 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86107)

(declare-datatypes ((List!29670 0))(
  ( (Nil!29667) (Cons!29666 (h!30875 (_ BitVec 64)) (t!43241 List!29670)) )
))
(declare-fun arrayNoDuplicates!0 (array!86107 (_ BitVec 32) List!29670) Bool)

(assert (=> b!1295637 (= res!861222 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29667))))

(declare-fun b!1295638 () Bool)

(declare-fun e!739258 () Bool)

(assert (=> b!1295638 (= e!739258 true)))

(declare-datatypes ((V!51187 0))(
  ( (V!51188 (val!17356 Int)) )
))
(declare-datatypes ((tuple2!22502 0))(
  ( (tuple2!22503 (_1!11261 (_ BitVec 64)) (_2!11261 V!51187)) )
))
(declare-datatypes ((List!29671 0))(
  ( (Nil!29668) (Cons!29667 (h!30876 tuple2!22502) (t!43242 List!29671)) )
))
(declare-datatypes ((ListLongMap!20171 0))(
  ( (ListLongMap!20172 (toList!10101 List!29671)) )
))
(declare-fun lt!579908 () ListLongMap!20171)

(declare-fun minValue!1387 () V!51187)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8157 (ListLongMap!20171 (_ BitVec 64)) Bool)

(declare-fun +!4402 (ListLongMap!20171 tuple2!22502) ListLongMap!20171)

(assert (=> b!1295638 (not (contains!8157 (+!4402 lt!579908 (tuple2!22503 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42865 0))(
  ( (Unit!42866) )
))
(declare-fun lt!579909 () Unit!42865)

(declare-fun addStillNotContains!447 (ListLongMap!20171 (_ BitVec 64) V!51187 (_ BitVec 64)) Unit!42865)

(assert (=> b!1295638 (= lt!579909 (addStillNotContains!447 lt!579908 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!51187)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16383 0))(
  ( (ValueCellFull!16383 (v!19957 V!51187)) (EmptyCell!16383) )
))
(declare-datatypes ((array!86109 0))(
  ( (array!86110 (arr!41551 (Array (_ BitVec 32) ValueCell!16383)) (size!42102 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86109)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6118 (array!86107 array!86109 (_ BitVec 32) (_ BitVec 32) V!51187 V!51187 (_ BitVec 32) Int) ListLongMap!20171)

(assert (=> b!1295638 (= lt!579908 (getCurrentListMapNoExtraKeys!6118 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295639 () Bool)

(declare-fun e!739261 () Bool)

(declare-fun tp_is_empty!34563 () Bool)

(assert (=> b!1295639 (= e!739261 tp_is_empty!34563)))

(declare-fun b!1295640 () Bool)

(declare-fun res!861220 () Bool)

(assert (=> b!1295640 (=> (not res!861220) (not e!739259))))

(assert (=> b!1295640 (= res!861220 (and (= (size!42102 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42101 _keys!1741) (size!42102 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295641 () Bool)

(declare-fun res!861224 () Bool)

(assert (=> b!1295641 (=> (not res!861224) (not e!739259))))

(declare-fun getCurrentListMap!5081 (array!86107 array!86109 (_ BitVec 32) (_ BitVec 32) V!51187 V!51187 (_ BitVec 32) Int) ListLongMap!20171)

(assert (=> b!1295641 (= res!861224 (contains!8157 (getCurrentListMap!5081 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!53405 () Bool)

(declare-fun mapRes!53405 () Bool)

(declare-fun tp!101889 () Bool)

(assert (=> mapNonEmpty!53405 (= mapRes!53405 (and tp!101889 e!739261))))

(declare-fun mapRest!53405 () (Array (_ BitVec 32) ValueCell!16383))

(declare-fun mapValue!53405 () ValueCell!16383)

(declare-fun mapKey!53405 () (_ BitVec 32))

(assert (=> mapNonEmpty!53405 (= (arr!41551 _values!1445) (store mapRest!53405 mapKey!53405 mapValue!53405))))

(declare-fun b!1295642 () Bool)

(declare-fun e!739260 () Bool)

(declare-fun e!739256 () Bool)

(assert (=> b!1295642 (= e!739260 (and e!739256 mapRes!53405))))

(declare-fun condMapEmpty!53405 () Bool)

(declare-fun mapDefault!53405 () ValueCell!16383)

(assert (=> b!1295642 (= condMapEmpty!53405 (= (arr!41551 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16383)) mapDefault!53405)))))

(declare-fun b!1295643 () Bool)

(declare-fun res!861227 () Bool)

(assert (=> b!1295643 (=> (not res!861227) (not e!739259))))

(assert (=> b!1295643 (= res!861227 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42101 _keys!1741))))))

(declare-fun mapIsEmpty!53405 () Bool)

(assert (=> mapIsEmpty!53405 mapRes!53405))

(declare-fun b!1295644 () Bool)

(assert (=> b!1295644 (= e!739256 tp_is_empty!34563)))

(declare-fun b!1295645 () Bool)

(declare-fun res!861225 () Bool)

(assert (=> b!1295645 (=> (not res!861225) (not e!739259))))

(assert (=> b!1295645 (= res!861225 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42101 _keys!1741))))))

(declare-fun b!1295646 () Bool)

(declare-fun res!861221 () Bool)

(assert (=> b!1295646 (=> (not res!861221) (not e!739259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86107 (_ BitVec 32)) Bool)

(assert (=> b!1295646 (= res!861221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295647 () Bool)

(declare-fun res!861223 () Bool)

(assert (=> b!1295647 (=> (not res!861223) (not e!739259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295647 (= res!861223 (not (validKeyInArray!0 (select (arr!41550 _keys!1741) from!2144))))))

(declare-fun b!1295648 () Bool)

(assert (=> b!1295648 (= e!739259 (not e!739258))))

(declare-fun res!861228 () Bool)

(assert (=> b!1295648 (=> res!861228 e!739258)))

(assert (=> b!1295648 (= res!861228 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295648 (not (contains!8157 (ListLongMap!20172 Nil!29668) k0!1205))))

(declare-fun lt!579910 () Unit!42865)

(declare-fun emptyContainsNothing!188 ((_ BitVec 64)) Unit!42865)

(assert (=> b!1295648 (= lt!579910 (emptyContainsNothing!188 k0!1205))))

(declare-fun res!861226 () Bool)

(assert (=> start!109470 (=> (not res!861226) (not e!739259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109470 (= res!861226 (validMask!0 mask!2175))))

(assert (=> start!109470 e!739259))

(assert (=> start!109470 tp_is_empty!34563))

(assert (=> start!109470 true))

(declare-fun array_inv!31447 (array!86109) Bool)

(assert (=> start!109470 (and (array_inv!31447 _values!1445) e!739260)))

(declare-fun array_inv!31448 (array!86107) Bool)

(assert (=> start!109470 (array_inv!31448 _keys!1741)))

(assert (=> start!109470 tp!101888))

(assert (= (and start!109470 res!861226) b!1295640))

(assert (= (and b!1295640 res!861220) b!1295646))

(assert (= (and b!1295646 res!861221) b!1295637))

(assert (= (and b!1295637 res!861222) b!1295645))

(assert (= (and b!1295645 res!861225) b!1295641))

(assert (= (and b!1295641 res!861224) b!1295643))

(assert (= (and b!1295643 res!861227) b!1295647))

(assert (= (and b!1295647 res!861223) b!1295648))

(assert (= (and b!1295648 (not res!861228)) b!1295638))

(assert (= (and b!1295642 condMapEmpty!53405) mapIsEmpty!53405))

(assert (= (and b!1295642 (not condMapEmpty!53405)) mapNonEmpty!53405))

(get-info :version)

(assert (= (and mapNonEmpty!53405 ((_ is ValueCellFull!16383) mapValue!53405)) b!1295639))

(assert (= (and b!1295642 ((_ is ValueCellFull!16383) mapDefault!53405)) b!1295644))

(assert (= start!109470 b!1295642))

(declare-fun m!1187665 () Bool)

(assert (=> b!1295647 m!1187665))

(assert (=> b!1295647 m!1187665))

(declare-fun m!1187667 () Bool)

(assert (=> b!1295647 m!1187667))

(declare-fun m!1187669 () Bool)

(assert (=> b!1295648 m!1187669))

(declare-fun m!1187671 () Bool)

(assert (=> b!1295648 m!1187671))

(declare-fun m!1187673 () Bool)

(assert (=> b!1295646 m!1187673))

(declare-fun m!1187675 () Bool)

(assert (=> b!1295641 m!1187675))

(assert (=> b!1295641 m!1187675))

(declare-fun m!1187677 () Bool)

(assert (=> b!1295641 m!1187677))

(declare-fun m!1187679 () Bool)

(assert (=> mapNonEmpty!53405 m!1187679))

(declare-fun m!1187681 () Bool)

(assert (=> b!1295637 m!1187681))

(declare-fun m!1187683 () Bool)

(assert (=> start!109470 m!1187683))

(declare-fun m!1187685 () Bool)

(assert (=> start!109470 m!1187685))

(declare-fun m!1187687 () Bool)

(assert (=> start!109470 m!1187687))

(declare-fun m!1187689 () Bool)

(assert (=> b!1295638 m!1187689))

(assert (=> b!1295638 m!1187689))

(declare-fun m!1187691 () Bool)

(assert (=> b!1295638 m!1187691))

(declare-fun m!1187693 () Bool)

(assert (=> b!1295638 m!1187693))

(declare-fun m!1187695 () Bool)

(assert (=> b!1295638 m!1187695))

(check-sat tp_is_empty!34563 (not b!1295648) (not b!1295646) (not b_next!28923) (not start!109470) b_and!47023 (not b!1295638) (not b!1295637) (not mapNonEmpty!53405) (not b!1295647) (not b!1295641))
(check-sat b_and!47023 (not b_next!28923))
