; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109862 () Bool)

(assert start!109862)

(declare-fun b_free!29219 () Bool)

(declare-fun b_next!29219 () Bool)

(assert (=> start!109862 (= b_free!29219 (not b_next!29219))))

(declare-fun tp!102792 () Bool)

(declare-fun b_and!47347 () Bool)

(assert (=> start!109862 (= tp!102792 b_and!47347)))

(declare-fun b!1301231 () Bool)

(declare-fun e!742213 () Bool)

(declare-fun tp_is_empty!34859 () Bool)

(assert (=> b!1301231 (= e!742213 tp_is_empty!34859)))

(declare-fun b!1301232 () Bool)

(declare-fun res!864636 () Bool)

(declare-fun e!742210 () Bool)

(assert (=> b!1301232 (=> (not res!864636) (not e!742210))))

(declare-datatypes ((V!51581 0))(
  ( (V!51582 (val!17504 Int)) )
))
(declare-datatypes ((ValueCell!16531 0))(
  ( (ValueCellFull!16531 (v!20110 V!51581)) (EmptyCell!16531) )
))
(declare-datatypes ((array!86687 0))(
  ( (array!86688 (arr!41835 (Array (_ BitVec 32) ValueCell!16531)) (size!42386 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86687)

(declare-datatypes ((array!86689 0))(
  ( (array!86690 (arr!41836 (Array (_ BitVec 32) (_ BitVec 64))) (size!42387 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86689)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1301232 (= res!864636 (and (= (size!42386 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42387 _keys!1741) (size!42386 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun minValue!1387 () V!51581)

(declare-fun zeroValue!1387 () V!51581)

(declare-fun c!124675 () Bool)

(declare-datatypes ((Unit!43015 0))(
  ( (Unit!43016) )
))
(declare-fun call!63922 () Unit!43015)

(declare-datatypes ((tuple2!22732 0))(
  ( (tuple2!22733 (_1!11376 (_ BitVec 64)) (_2!11376 V!51581)) )
))
(declare-datatypes ((List!29888 0))(
  ( (Nil!29885) (Cons!29884 (h!31093 tuple2!22732) (t!43475 List!29888)) )
))
(declare-datatypes ((ListLongMap!20401 0))(
  ( (ListLongMap!20402 (toList!10216 List!29888)) )
))
(declare-fun lt!581845 () ListLongMap!20401)

(declare-fun lt!581842 () ListLongMap!20401)

(declare-fun bm!63918 () Bool)

(declare-fun lt!581848 () ListLongMap!20401)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun c!124674 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!79 ((_ BitVec 64) (_ BitVec 64) V!51581 ListLongMap!20401) Unit!43015)

(assert (=> bm!63918 (= call!63922 (lemmaInListMapAfterAddingDiffThenInBefore!79 k!1205 (ite (or c!124675 c!124674) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124675 c!124674) zeroValue!1387 minValue!1387) (ite c!124675 lt!581848 (ite c!124674 lt!581845 lt!581842))))))

(declare-fun b!1301233 () Bool)

(declare-fun e!742211 () Bool)

(assert (=> b!1301233 (= e!742210 (not e!742211))))

(declare-fun res!864641 () Bool)

(assert (=> b!1301233 (=> res!864641 e!742211)))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1301233 (= res!864641 (= k!1205 (select (arr!41836 _keys!1741) from!2144)))))

(declare-fun contains!8277 (ListLongMap!20401 (_ BitVec 64)) Bool)

(assert (=> b!1301233 (not (contains!8277 (ListLongMap!20402 Nil!29885) k!1205))))

(declare-fun lt!581847 () Unit!43015)

(declare-fun emptyContainsNothing!207 ((_ BitVec 64)) Unit!43015)

(assert (=> b!1301233 (= lt!581847 (emptyContainsNothing!207 k!1205))))

(declare-fun lt!581844 () Unit!43015)

(declare-fun e!742208 () Unit!43015)

(assert (=> b!1301233 (= lt!581844 e!742208)))

(declare-fun lt!581850 () Bool)

(assert (=> b!1301233 (= c!124675 (and (not lt!581850) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301233 (= lt!581850 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1301234 () Bool)

(declare-fun e!742215 () Bool)

(assert (=> b!1301234 (= e!742215 tp_is_empty!34859)))

(declare-fun b!1301235 () Bool)

(declare-fun res!864633 () Bool)

(assert (=> b!1301235 (=> (not res!864633) (not e!742210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301235 (= res!864633 (validKeyInArray!0 (select (arr!41836 _keys!1741) from!2144)))))

(declare-fun bm!63919 () Bool)

(declare-fun call!63926 () Bool)

(assert (=> bm!63919 (= call!63926 (contains!8277 (ite c!124675 lt!581848 (ite c!124674 lt!581845 lt!581842)) k!1205))))

(declare-fun b!1301236 () Bool)

(declare-fun e!742216 () Unit!43015)

(declare-fun Unit!43017 () Unit!43015)

(assert (=> b!1301236 (= e!742216 Unit!43017)))

(declare-fun b!1301237 () Bool)

(declare-fun res!864639 () Bool)

(assert (=> b!1301237 (=> (not res!864639) (not e!742210))))

(assert (=> b!1301237 (= res!864639 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42387 _keys!1741))))))

(declare-fun call!63921 () ListLongMap!20401)

(declare-fun bm!63920 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6153 (array!86689 array!86687 (_ BitVec 32) (_ BitVec 32) V!51581 V!51581 (_ BitVec 32) Int) ListLongMap!20401)

(assert (=> bm!63920 (= call!63921 (getCurrentListMapNoExtraKeys!6153 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301230 () Bool)

(declare-fun e!742212 () Bool)

(declare-fun mapRes!53864 () Bool)

(assert (=> b!1301230 (= e!742212 (and e!742213 mapRes!53864))))

(declare-fun condMapEmpty!53864 () Bool)

(declare-fun mapDefault!53864 () ValueCell!16531)

