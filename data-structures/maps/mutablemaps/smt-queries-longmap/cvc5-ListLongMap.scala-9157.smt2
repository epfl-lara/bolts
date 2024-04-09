; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109858 () Bool)

(assert start!109858)

(declare-fun b_free!29215 () Bool)

(declare-fun b_next!29215 () Bool)

(assert (=> start!109858 (= b_free!29215 (not b_next!29215))))

(declare-fun tp!102780 () Bool)

(declare-fun b_and!47339 () Bool)

(assert (=> start!109858 (= tp!102780 b_and!47339)))

(declare-datatypes ((V!51577 0))(
  ( (V!51578 (val!17502 Int)) )
))
(declare-datatypes ((tuple2!22728 0))(
  ( (tuple2!22729 (_1!11374 (_ BitVec 64)) (_2!11374 V!51577)) )
))
(declare-datatypes ((List!29884 0))(
  ( (Nil!29881) (Cons!29880 (h!31089 tuple2!22728) (t!43467 List!29884)) )
))
(declare-datatypes ((ListLongMap!20397 0))(
  ( (ListLongMap!20398 (toList!10214 List!29884)) )
))
(declare-fun lt!581766 () ListLongMap!20397)

(declare-fun bm!63882 () Bool)

(declare-fun lt!581772 () ListLongMap!20397)

(declare-fun c!124657 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun call!63887 () Bool)

(declare-fun c!124656 () Bool)

(declare-fun lt!581773 () ListLongMap!20397)

(declare-fun contains!8275 (ListLongMap!20397 (_ BitVec 64)) Bool)

(assert (=> bm!63882 (= call!63887 (contains!8275 (ite c!124656 lt!581773 (ite c!124657 lt!581766 lt!581772)) k!1205))))

(declare-fun bm!63883 () Bool)

(declare-datatypes ((Unit!43010 0))(
  ( (Unit!43011) )
))
(declare-fun call!63886 () Unit!43010)

(declare-fun call!63889 () Unit!43010)

(assert (=> bm!63883 (= call!63886 call!63889)))

(declare-fun mapIsEmpty!53858 () Bool)

(declare-fun mapRes!53858 () Bool)

(assert (=> mapIsEmpty!53858 mapRes!53858))

(declare-fun b!1301118 () Bool)

(declare-fun res!864581 () Bool)

(declare-fun e!742158 () Bool)

(assert (=> b!1301118 (=> (not res!864581) (not e!742158))))

(declare-datatypes ((array!86679 0))(
  ( (array!86680 (arr!41831 (Array (_ BitVec 32) (_ BitVec 64))) (size!42382 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86679)

(declare-datatypes ((List!29885 0))(
  ( (Nil!29882) (Cons!29881 (h!31090 (_ BitVec 64)) (t!43468 List!29885)) )
))
(declare-fun arrayNoDuplicates!0 (array!86679 (_ BitVec 32) List!29885) Bool)

(assert (=> b!1301118 (= res!864581 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29882))))

(declare-fun bm!63884 () Bool)

(declare-fun call!63890 () ListLongMap!20397)

(declare-fun call!63888 () ListLongMap!20397)

(assert (=> bm!63884 (= call!63890 call!63888)))

(declare-fun b!1301119 () Bool)

(declare-fun e!742161 () Unit!43010)

(declare-fun lt!581764 () Unit!43010)

(assert (=> b!1301119 (= e!742161 lt!581764)))

(assert (=> b!1301119 (= lt!581772 call!63890)))

(assert (=> b!1301119 (= lt!581764 call!63886)))

(declare-fun call!63885 () Bool)

(assert (=> b!1301119 call!63885))

(declare-fun minValue!1387 () V!51577)

(declare-fun zeroValue!1387 () V!51577)

(declare-fun bm!63885 () Bool)

(declare-fun lt!581770 () ListLongMap!20397)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!77 ((_ BitVec 64) (_ BitVec 64) V!51577 ListLongMap!20397) Unit!43010)

(assert (=> bm!63885 (= call!63889 (lemmaInListMapAfterAddingDiffThenInBefore!77 k!1205 (ite (or c!124656 c!124657) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124656 c!124657) zeroValue!1387 minValue!1387) (ite c!124656 lt!581770 (ite c!124657 lt!581766 lt!581772))))))

(declare-fun b!1301120 () Bool)

(declare-fun res!864579 () Bool)

(assert (=> b!1301120 (=> (not res!864579) (not e!742158))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86679 (_ BitVec 32)) Bool)

(assert (=> b!1301120 (= res!864579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1301121 () Bool)

(declare-fun e!742157 () Unit!43010)

(declare-fun lt!581763 () Unit!43010)

(assert (=> b!1301121 (= e!742157 lt!581763)))

(assert (=> b!1301121 (= lt!581770 call!63888)))

(declare-fun +!4438 (ListLongMap!20397 tuple2!22728) ListLongMap!20397)

(assert (=> b!1301121 (= lt!581773 (+!4438 lt!581770 (tuple2!22729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581765 () Unit!43010)

(assert (=> b!1301121 (= lt!581765 (lemmaInListMapAfterAddingDiffThenInBefore!77 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!581773))))

(assert (=> b!1301121 call!63887))

(assert (=> b!1301121 (= lt!581763 call!63889)))

(assert (=> b!1301121 (contains!8275 lt!581770 k!1205)))

(declare-fun b!1301122 () Bool)

(declare-fun e!742162 () Bool)

(declare-fun tp_is_empty!34855 () Bool)

(assert (=> b!1301122 (= e!742162 tp_is_empty!34855)))

(declare-fun b!1301123 () Bool)

(declare-fun e!742154 () Bool)

(assert (=> b!1301123 (= e!742154 (and e!742162 mapRes!53858))))

(declare-fun condMapEmpty!53858 () Bool)

(declare-datatypes ((ValueCell!16529 0))(
  ( (ValueCellFull!16529 (v!20108 V!51577)) (EmptyCell!16529) )
))
(declare-datatypes ((array!86681 0))(
  ( (array!86682 (arr!41832 (Array (_ BitVec 32) ValueCell!16529)) (size!42383 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86681)

(declare-fun mapDefault!53858 () ValueCell!16529)

