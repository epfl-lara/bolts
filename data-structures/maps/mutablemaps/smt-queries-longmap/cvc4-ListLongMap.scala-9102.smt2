; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109436 () Bool)

(assert start!109436)

(declare-fun b_free!28889 () Bool)

(declare-fun b_next!28889 () Bool)

(assert (=> start!109436 (= b_free!28889 (not b_next!28889))))

(declare-fun tp!101787 () Bool)

(declare-fun b_and!46989 () Bool)

(assert (=> start!109436 (= tp!101787 b_and!46989)))

(declare-fun res!860769 () Bool)

(declare-fun e!738950 () Bool)

(assert (=> start!109436 (=> (not res!860769) (not e!738950))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109436 (= res!860769 (validMask!0 mask!2175))))

(assert (=> start!109436 e!738950))

(declare-fun tp_is_empty!34529 () Bool)

(assert (=> start!109436 tp_is_empty!34529))

(assert (=> start!109436 true))

(declare-datatypes ((V!51141 0))(
  ( (V!51142 (val!17339 Int)) )
))
(declare-datatypes ((ValueCell!16366 0))(
  ( (ValueCellFull!16366 (v!19940 V!51141)) (EmptyCell!16366) )
))
(declare-datatypes ((array!86041 0))(
  ( (array!86042 (arr!41517 (Array (_ BitVec 32) ValueCell!16366)) (size!42068 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86041)

(declare-fun e!738953 () Bool)

(declare-fun array_inv!31417 (array!86041) Bool)

(assert (=> start!109436 (and (array_inv!31417 _values!1445) e!738953)))

(declare-datatypes ((array!86043 0))(
  ( (array!86044 (arr!41518 (Array (_ BitVec 32) (_ BitVec 64))) (size!42069 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86043)

(declare-fun array_inv!31418 (array!86043) Bool)

(assert (=> start!109436 (array_inv!31418 _keys!1741)))

(assert (=> start!109436 tp!101787))

(declare-fun b!1295025 () Bool)

(declare-fun res!860767 () Bool)

(assert (=> b!1295025 (=> (not res!860767) (not e!738950))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295025 (= res!860767 (not (validKeyInArray!0 (select (arr!41518 _keys!1741) from!2144))))))

(declare-fun b!1295026 () Bool)

(declare-fun res!860768 () Bool)

(assert (=> b!1295026 (=> (not res!860768) (not e!738950))))

(assert (=> b!1295026 (= res!860768 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42069 _keys!1741))))))

(declare-fun b!1295027 () Bool)

(declare-fun e!738954 () Bool)

(assert (=> b!1295027 (= e!738954 tp_is_empty!34529)))

(declare-fun b!1295028 () Bool)

(declare-fun res!860766 () Bool)

(assert (=> b!1295028 (=> (not res!860766) (not e!738950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86043 (_ BitVec 32)) Bool)

(assert (=> b!1295028 (= res!860766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295029 () Bool)

(declare-fun e!738952 () Bool)

(assert (=> b!1295029 (= e!738952 true)))

(declare-datatypes ((tuple2!22472 0))(
  ( (tuple2!22473 (_1!11246 (_ BitVec 64)) (_2!11246 V!51141)) )
))
(declare-datatypes ((List!29641 0))(
  ( (Nil!29638) (Cons!29637 (h!30846 tuple2!22472) (t!43212 List!29641)) )
))
(declare-datatypes ((ListLongMap!20141 0))(
  ( (ListLongMap!20142 (toList!10086 List!29641)) )
))
(declare-fun lt!579756 () ListLongMap!20141)

(declare-fun minValue!1387 () V!51141)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8142 (ListLongMap!20141 (_ BitVec 64)) Bool)

(declare-fun +!4390 (ListLongMap!20141 tuple2!22472) ListLongMap!20141)

(assert (=> b!1295029 (not (contains!8142 (+!4390 lt!579756 (tuple2!22473 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-datatypes ((Unit!42839 0))(
  ( (Unit!42840) )
))
(declare-fun lt!579755 () Unit!42839)

(declare-fun addStillNotContains!435 (ListLongMap!20141 (_ BitVec 64) V!51141 (_ BitVec 64)) Unit!42839)

(assert (=> b!1295029 (= lt!579755 (addStillNotContains!435 lt!579756 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(declare-fun zeroValue!1387 () V!51141)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6106 (array!86043 array!86041 (_ BitVec 32) (_ BitVec 32) V!51141 V!51141 (_ BitVec 32) Int) ListLongMap!20141)

(assert (=> b!1295029 (= lt!579756 (getCurrentListMapNoExtraKeys!6106 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295030 () Bool)

(declare-fun res!860762 () Bool)

(assert (=> b!1295030 (=> (not res!860762) (not e!738950))))

(assert (=> b!1295030 (= res!860762 (and (= (size!42068 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42069 _keys!1741) (size!42068 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295031 () Bool)

(declare-fun e!738951 () Bool)

(assert (=> b!1295031 (= e!738951 tp_is_empty!34529)))

(declare-fun b!1295032 () Bool)

(declare-fun res!860763 () Bool)

(assert (=> b!1295032 (=> (not res!860763) (not e!738950))))

(declare-datatypes ((List!29642 0))(
  ( (Nil!29639) (Cons!29638 (h!30847 (_ BitVec 64)) (t!43213 List!29642)) )
))
(declare-fun arrayNoDuplicates!0 (array!86043 (_ BitVec 32) List!29642) Bool)

(assert (=> b!1295032 (= res!860763 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29639))))

(declare-fun b!1295033 () Bool)

(assert (=> b!1295033 (= e!738950 (not e!738952))))

(declare-fun res!860765 () Bool)

(assert (=> b!1295033 (=> res!860765 e!738952)))

(assert (=> b!1295033 (= res!860765 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1295033 (not (contains!8142 (ListLongMap!20142 Nil!29638) k!1205))))

(declare-fun lt!579757 () Unit!42839)

(declare-fun emptyContainsNothing!175 ((_ BitVec 64)) Unit!42839)

(assert (=> b!1295033 (= lt!579757 (emptyContainsNothing!175 k!1205))))

(declare-fun mapIsEmpty!53354 () Bool)

(declare-fun mapRes!53354 () Bool)

(assert (=> mapIsEmpty!53354 mapRes!53354))

(declare-fun b!1295034 () Bool)

(declare-fun res!860761 () Bool)

(assert (=> b!1295034 (=> (not res!860761) (not e!738950))))

(declare-fun getCurrentListMap!5067 (array!86043 array!86041 (_ BitVec 32) (_ BitVec 32) V!51141 V!51141 (_ BitVec 32) Int) ListLongMap!20141)

(assert (=> b!1295034 (= res!860761 (contains!8142 (getCurrentListMap!5067 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53354 () Bool)

(declare-fun tp!101786 () Bool)

(assert (=> mapNonEmpty!53354 (= mapRes!53354 (and tp!101786 e!738951))))

(declare-fun mapRest!53354 () (Array (_ BitVec 32) ValueCell!16366))

(declare-fun mapValue!53354 () ValueCell!16366)

(declare-fun mapKey!53354 () (_ BitVec 32))

(assert (=> mapNonEmpty!53354 (= (arr!41517 _values!1445) (store mapRest!53354 mapKey!53354 mapValue!53354))))

(declare-fun b!1295035 () Bool)

(declare-fun res!860764 () Bool)

(assert (=> b!1295035 (=> (not res!860764) (not e!738950))))

(assert (=> b!1295035 (= res!860764 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42069 _keys!1741))))))

(declare-fun b!1295036 () Bool)

(assert (=> b!1295036 (= e!738953 (and e!738954 mapRes!53354))))

(declare-fun condMapEmpty!53354 () Bool)

(declare-fun mapDefault!53354 () ValueCell!16366)

