; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109932 () Bool)

(assert start!109932)

(declare-fun b_free!29221 () Bool)

(declare-fun b_next!29221 () Bool)

(assert (=> start!109932 (= b_free!29221 (not b_next!29221))))

(declare-fun tp!102801 () Bool)

(declare-fun b_and!47361 () Bool)

(assert (=> start!109932 (= tp!102801 b_and!47361)))

(declare-fun bm!63981 () Bool)

(declare-datatypes ((V!51585 0))(
  ( (V!51586 (val!17505 Int)) )
))
(declare-datatypes ((tuple2!22734 0))(
  ( (tuple2!22735 (_1!11377 (_ BitVec 64)) (_2!11377 V!51585)) )
))
(declare-datatypes ((List!29889 0))(
  ( (Nil!29886) (Cons!29885 (h!31094 tuple2!22734) (t!43478 List!29889)) )
))
(declare-datatypes ((ListLongMap!20403 0))(
  ( (ListLongMap!20404 (toList!10217 List!29889)) )
))
(declare-fun call!63987 () ListLongMap!20403)

(declare-fun call!63986 () ListLongMap!20403)

(assert (=> bm!63981 (= call!63987 call!63986)))

(declare-fun res!864842 () Bool)

(declare-fun e!742505 () Bool)

(assert (=> start!109932 (=> (not res!864842) (not e!742505))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109932 (= res!864842 (validMask!0 mask!2175))))

(assert (=> start!109932 e!742505))

(declare-fun tp_is_empty!34861 () Bool)

(assert (=> start!109932 tp_is_empty!34861))

(assert (=> start!109932 true))

(declare-datatypes ((ValueCell!16532 0))(
  ( (ValueCellFull!16532 (v!20114 V!51585)) (EmptyCell!16532) )
))
(declare-datatypes ((array!86693 0))(
  ( (array!86694 (arr!41837 (Array (_ BitVec 32) ValueCell!16532)) (size!42388 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86693)

(declare-fun e!742503 () Bool)

(declare-fun array_inv!31647 (array!86693) Bool)

(assert (=> start!109932 (and (array_inv!31647 _values!1445) e!742503)))

(declare-datatypes ((array!86695 0))(
  ( (array!86696 (arr!41838 (Array (_ BitVec 32) (_ BitVec 64))) (size!42389 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86695)

(declare-fun array_inv!31648 (array!86695) Bool)

(assert (=> start!109932 (array_inv!31648 _keys!1741)))

(assert (=> start!109932 tp!102801))

(declare-fun b!1301696 () Bool)

(declare-fun res!864838 () Bool)

(assert (=> b!1301696 (=> (not res!864838) (not e!742505))))

(declare-datatypes ((List!29890 0))(
  ( (Nil!29887) (Cons!29886 (h!31095 (_ BitVec 64)) (t!43479 List!29890)) )
))
(declare-fun arrayNoDuplicates!0 (array!86695 (_ BitVec 32) List!29890) Bool)

(assert (=> b!1301696 (= res!864838 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29887))))

(declare-fun b!1301697 () Bool)

(declare-fun res!864837 () Bool)

(assert (=> b!1301697 (=> (not res!864837) (not e!742505))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1301697 (= res!864837 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42389 _keys!1741))))))

(declare-fun bm!63982 () Bool)

(declare-datatypes ((Unit!43036 0))(
  ( (Unit!43037) )
))
(declare-fun call!63985 () Unit!43036)

(declare-fun call!63989 () Unit!43036)

(assert (=> bm!63982 (= call!63985 call!63989)))

(declare-fun b!1301698 () Bool)

(declare-fun res!864835 () Bool)

(assert (=> b!1301698 (=> (not res!864835) (not e!742505))))

(declare-fun minValue!1387 () V!51585)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun zeroValue!1387 () V!51585)

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!8280 (ListLongMap!20403 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5185 (array!86695 array!86693 (_ BitVec 32) (_ BitVec 32) V!51585 V!51585 (_ BitVec 32) Int) ListLongMap!20403)

(assert (=> b!1301698 (= res!864835 (contains!8280 (getCurrentListMap!5185 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun bm!63983 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6154 (array!86695 array!86693 (_ BitVec 32) (_ BitVec 32) V!51585 V!51585 (_ BitVec 32) Int) ListLongMap!20403)

(assert (=> bm!63983 (= call!63986 (getCurrentListMapNoExtraKeys!6154 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53871 () Bool)

(declare-fun mapRes!53871 () Bool)

(assert (=> mapIsEmpty!53871 mapRes!53871))

(declare-fun b!1301699 () Bool)

(declare-fun e!742498 () Bool)

(assert (=> b!1301699 (= e!742505 (not e!742498))))

(declare-fun res!864836 () Bool)

(assert (=> b!1301699 (=> res!864836 e!742498)))

(assert (=> b!1301699 (= res!864836 (= k!1205 (select (arr!41838 _keys!1741) from!2144)))))

(assert (=> b!1301699 (not (contains!8280 (ListLongMap!20404 Nil!29886) k!1205))))

(declare-fun lt!582171 () Unit!43036)

(declare-fun emptyContainsNothing!208 ((_ BitVec 64)) Unit!43036)

(assert (=> b!1301699 (= lt!582171 (emptyContainsNothing!208 k!1205))))

(declare-fun lt!582170 () Unit!43036)

(declare-fun e!742504 () Unit!43036)

(assert (=> b!1301699 (= lt!582170 e!742504)))

(declare-fun c!124795 () Bool)

(declare-fun lt!582177 () Bool)

(assert (=> b!1301699 (= c!124795 (and (not lt!582177) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301699 (= lt!582177 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!582169 () ListLongMap!20403)

(declare-fun bm!63984 () Bool)

(declare-fun lt!582168 () ListLongMap!20403)

(declare-fun lt!582176 () ListLongMap!20403)

(declare-fun c!124796 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!80 ((_ BitVec 64) (_ BitVec 64) V!51585 ListLongMap!20403) Unit!43036)

(assert (=> bm!63984 (= call!63989 (lemmaInListMapAfterAddingDiffThenInBefore!80 k!1205 (ite c!124795 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!124796 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!124795 minValue!1387 (ite c!124796 zeroValue!1387 minValue!1387)) (ite c!124795 lt!582176 (ite c!124796 lt!582168 lt!582169))))))

(declare-fun b!1301700 () Bool)

(declare-fun c!124794 () Bool)

(assert (=> b!1301700 (= c!124794 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!582177))))

(declare-fun e!742501 () Unit!43036)

(declare-fun e!742500 () Unit!43036)

(assert (=> b!1301700 (= e!742501 e!742500)))

(declare-fun bm!63985 () Bool)

(declare-fun call!63984 () Bool)

(declare-fun call!63988 () Bool)

(assert (=> bm!63985 (= call!63984 call!63988)))

(declare-fun mapNonEmpty!53871 () Bool)

(declare-fun tp!102802 () Bool)

(declare-fun e!742502 () Bool)

(assert (=> mapNonEmpty!53871 (= mapRes!53871 (and tp!102802 e!742502))))

(declare-fun mapKey!53871 () (_ BitVec 32))

(declare-fun mapRest!53871 () (Array (_ BitVec 32) ValueCell!16532))

(declare-fun mapValue!53871 () ValueCell!16532)

(assert (=> mapNonEmpty!53871 (= (arr!41837 _values!1445) (store mapRest!53871 mapKey!53871 mapValue!53871))))

(declare-fun b!1301701 () Bool)

(assert (=> b!1301701 (= e!742502 tp_is_empty!34861)))

(declare-fun b!1301702 () Bool)

(declare-fun lt!582167 () Unit!43036)

(assert (=> b!1301702 (= e!742504 lt!582167)))

(declare-fun lt!582172 () ListLongMap!20403)

(assert (=> b!1301702 (= lt!582172 call!63986)))

(declare-fun +!4440 (ListLongMap!20403 tuple2!22734) ListLongMap!20403)

(assert (=> b!1301702 (= lt!582176 (+!4440 lt!582172 (tuple2!22735 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582165 () Unit!43036)

(assert (=> b!1301702 (= lt!582165 call!63989)))

(assert (=> b!1301702 (contains!8280 lt!582176 k!1205)))

(assert (=> b!1301702 (= lt!582167 (lemmaInListMapAfterAddingDiffThenInBefore!80 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!582172))))

(assert (=> b!1301702 call!63988))

(declare-fun b!1301703 () Bool)

(declare-fun res!864840 () Bool)

(assert (=> b!1301703 (=> (not res!864840) (not e!742505))))

(assert (=> b!1301703 (= res!864840 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42389 _keys!1741))))))

(declare-fun b!1301704 () Bool)

(assert (=> b!1301704 (= e!742498 true)))

(declare-fun lt!582173 () V!51585)

(assert (=> b!1301704 (not (contains!8280 (+!4440 (ListLongMap!20404 Nil!29886) (tuple2!22735 (select (arr!41838 _keys!1741) from!2144) lt!582173)) k!1205))))

(declare-fun lt!582166 () Unit!43036)

(declare-fun addStillNotContains!466 (ListLongMap!20403 (_ BitVec 64) V!51585 (_ BitVec 64)) Unit!43036)

(assert (=> b!1301704 (= lt!582166 (addStillNotContains!466 (ListLongMap!20404 Nil!29886) (select (arr!41838 _keys!1741) from!2144) lt!582173 k!1205))))

(declare-fun get!21179 (ValueCell!16532 V!51585) V!51585)

(declare-fun dynLambda!3503 (Int (_ BitVec 64)) V!51585)

(assert (=> b!1301704 (= lt!582173 (get!21179 (select (arr!41837 _values!1445) from!2144) (dynLambda!3503 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1301705 () Bool)

(declare-fun e!742497 () Bool)

(assert (=> b!1301705 (= e!742503 (and e!742497 mapRes!53871))))

(declare-fun condMapEmpty!53871 () Bool)

(declare-fun mapDefault!53871 () ValueCell!16532)

