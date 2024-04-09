; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109850 () Bool)

(assert start!109850)

(declare-fun b_free!29207 () Bool)

(declare-fun b_next!29207 () Bool)

(assert (=> start!109850 (= b_free!29207 (not b_next!29207))))

(declare-fun tp!102755 () Bool)

(declare-fun b_and!47331 () Bool)

(assert (=> start!109850 (= tp!102755 b_and!47331)))

(declare-fun bm!63810 () Bool)

(declare-datatypes ((V!51565 0))(
  ( (V!51566 (val!17498 Int)) )
))
(declare-datatypes ((tuple2!22722 0))(
  ( (tuple2!22723 (_1!11371 (_ BitVec 64)) (_2!11371 V!51565)) )
))
(declare-datatypes ((List!29878 0))(
  ( (Nil!29875) (Cons!29874 (h!31083 tuple2!22722) (t!43459 List!29878)) )
))
(declare-datatypes ((ListLongMap!20391 0))(
  ( (ListLongMap!20392 (toList!10211 List!29878)) )
))
(declare-fun call!63817 () ListLongMap!20391)

(declare-fun call!63814 () ListLongMap!20391)

(assert (=> bm!63810 (= call!63817 call!63814)))

(declare-fun b!1300912 () Bool)

(declare-fun res!864482 () Bool)

(declare-fun e!742061 () Bool)

(assert (=> b!1300912 (=> (not res!864482) (not e!742061))))

(declare-datatypes ((array!86665 0))(
  ( (array!86666 (arr!41824 (Array (_ BitVec 32) (_ BitVec 64))) (size!42375 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86665)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86665 (_ BitVec 32)) Bool)

(assert (=> b!1300912 (= res!864482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53846 () Bool)

(declare-fun mapRes!53846 () Bool)

(declare-fun tp!102756 () Bool)

(declare-fun e!742057 () Bool)

(assert (=> mapNonEmpty!53846 (= mapRes!53846 (and tp!102756 e!742057))))

(declare-datatypes ((ValueCell!16525 0))(
  ( (ValueCellFull!16525 (v!20104 V!51565)) (EmptyCell!16525) )
))
(declare-fun mapRest!53846 () (Array (_ BitVec 32) ValueCell!16525))

(declare-fun mapKey!53846 () (_ BitVec 32))

(declare-datatypes ((array!86667 0))(
  ( (array!86668 (arr!41825 (Array (_ BitVec 32) ValueCell!16525)) (size!42376 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86667)

(declare-fun mapValue!53846 () ValueCell!16525)

(assert (=> mapNonEmpty!53846 (= (arr!41825 _values!1445) (store mapRest!53846 mapKey!53846 mapValue!53846))))

(declare-fun b!1300913 () Bool)

(declare-fun c!124622 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!581632 () Bool)

(assert (=> b!1300913 (= c!124622 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581632))))

(declare-datatypes ((Unit!43001 0))(
  ( (Unit!43002) )
))
(declare-fun e!742056 () Unit!43001)

(declare-fun e!742063 () Unit!43001)

(assert (=> b!1300913 (= e!742056 e!742063)))

(declare-fun b!1300914 () Bool)

(declare-fun tp_is_empty!34847 () Bool)

(assert (=> b!1300914 (= e!742057 tp_is_empty!34847)))

(declare-fun b!1300915 () Bool)

(declare-fun res!864488 () Bool)

(assert (=> b!1300915 (=> (not res!864488) (not e!742061))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1300915 (= res!864488 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42375 _keys!1741))))))

(declare-fun minValue!1387 () V!51565)

(declare-fun lt!581627 () ListLongMap!20391)

(declare-fun lt!581634 () ListLongMap!20391)

(declare-fun c!124621 () Bool)

(declare-fun bm!63811 () Bool)

(declare-fun c!124620 () Bool)

(declare-fun zeroValue!1387 () V!51565)

(declare-fun call!63815 () Unit!43001)

(declare-fun lt!581635 () ListLongMap!20391)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!74 ((_ BitVec 64) (_ BitVec 64) V!51565 ListLongMap!20391) Unit!43001)

(assert (=> bm!63811 (= call!63815 (lemmaInListMapAfterAddingDiffThenInBefore!74 k!1205 (ite (or c!124620 c!124621) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124620 c!124621) zeroValue!1387 minValue!1387) (ite c!124620 lt!581634 (ite c!124621 lt!581635 lt!581627))))))

(declare-fun b!1300916 () Bool)

(assert (=> b!1300916 (= e!742061 (not (or (= k!1205 (select (arr!41824 _keys!1741) from!2144)) (bvslt from!2144 (size!42376 _values!1445)))))))

(declare-fun contains!8272 (ListLongMap!20391 (_ BitVec 64)) Bool)

(assert (=> b!1300916 (not (contains!8272 (ListLongMap!20392 Nil!29875) k!1205))))

(declare-fun lt!581628 () Unit!43001)

(declare-fun emptyContainsNothing!203 ((_ BitVec 64)) Unit!43001)

(assert (=> b!1300916 (= lt!581628 (emptyContainsNothing!203 k!1205))))

(declare-fun lt!581626 () Unit!43001)

(declare-fun e!742058 () Unit!43001)

(assert (=> b!1300916 (= lt!581626 e!742058)))

(assert (=> b!1300916 (= c!124620 (and (not lt!581632) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1300916 (= lt!581632 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1300917 () Bool)

(declare-fun lt!581630 () Unit!43001)

(assert (=> b!1300917 (= e!742063 lt!581630)))

(assert (=> b!1300917 (= lt!581627 call!63817)))

(declare-fun call!63813 () Unit!43001)

(assert (=> b!1300917 (= lt!581630 call!63813)))

(declare-fun call!63818 () Bool)

(assert (=> b!1300917 call!63818))

(declare-fun b!1300918 () Bool)

(assert (=> b!1300918 (= e!742058 e!742056)))

(assert (=> b!1300918 (= c!124621 (and (not lt!581632) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!63812 () Bool)

(declare-fun call!63816 () Bool)

(assert (=> bm!63812 (= call!63816 (contains!8272 (ite c!124620 lt!581634 (ite c!124621 lt!581635 lt!581627)) k!1205))))

(declare-fun b!1300919 () Bool)

(declare-fun res!864483 () Bool)

(assert (=> b!1300919 (=> (not res!864483) (not e!742061))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5181 (array!86665 array!86667 (_ BitVec 32) (_ BitVec 32) V!51565 V!51565 (_ BitVec 32) Int) ListLongMap!20391)

(assert (=> b!1300919 (= res!864483 (contains!8272 (getCurrentListMap!5181 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1300920 () Bool)

(assert (=> b!1300920 call!63818))

(declare-fun lt!581633 () Unit!43001)

(assert (=> b!1300920 (= lt!581633 call!63813)))

(assert (=> b!1300920 (= lt!581635 call!63817)))

(assert (=> b!1300920 (= e!742056 lt!581633)))

(declare-fun b!1300921 () Bool)

(declare-fun res!864486 () Bool)

(assert (=> b!1300921 (=> (not res!864486) (not e!742061))))

(assert (=> b!1300921 (= res!864486 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42375 _keys!1741))))))

(declare-fun bm!63813 () Bool)

(assert (=> bm!63813 (= call!63813 call!63815)))

(declare-fun bm!63814 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6149 (array!86665 array!86667 (_ BitVec 32) (_ BitVec 32) V!51565 V!51565 (_ BitVec 32) Int) ListLongMap!20391)

(assert (=> bm!63814 (= call!63814 (getCurrentListMapNoExtraKeys!6149 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!53846 () Bool)

(assert (=> mapIsEmpty!53846 mapRes!53846))

(declare-fun b!1300922 () Bool)

(declare-fun lt!581625 () Unit!43001)

(assert (=> b!1300922 (= e!742058 lt!581625)))

(assert (=> b!1300922 (= lt!581634 call!63814)))

(declare-fun lt!581631 () ListLongMap!20391)

(declare-fun +!4436 (ListLongMap!20391 tuple2!22722) ListLongMap!20391)

(assert (=> b!1300922 (= lt!581631 (+!4436 lt!581634 (tuple2!22723 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!581629 () Unit!43001)

(assert (=> b!1300922 (= lt!581629 (lemmaInListMapAfterAddingDiffThenInBefore!74 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!581631))))

(assert (=> b!1300922 (contains!8272 lt!581631 k!1205)))

(assert (=> b!1300922 (= lt!581625 call!63815)))

(assert (=> b!1300922 call!63816))

(declare-fun b!1300923 () Bool)

(declare-fun res!864481 () Bool)

(assert (=> b!1300923 (=> (not res!864481) (not e!742061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1300923 (= res!864481 (validKeyInArray!0 (select (arr!41824 _keys!1741) from!2144)))))

(declare-fun bm!63815 () Bool)

(assert (=> bm!63815 (= call!63818 call!63816)))

(declare-fun res!864484 () Bool)

(assert (=> start!109850 (=> (not res!864484) (not e!742061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109850 (= res!864484 (validMask!0 mask!2175))))

(assert (=> start!109850 e!742061))

(assert (=> start!109850 tp_is_empty!34847))

(assert (=> start!109850 true))

(declare-fun e!742060 () Bool)

(declare-fun array_inv!31641 (array!86667) Bool)

(assert (=> start!109850 (and (array_inv!31641 _values!1445) e!742060)))

(declare-fun array_inv!31642 (array!86665) Bool)

(assert (=> start!109850 (array_inv!31642 _keys!1741)))

(assert (=> start!109850 tp!102755))

(declare-fun b!1300924 () Bool)

(declare-fun e!742062 () Bool)

(assert (=> b!1300924 (= e!742062 tp_is_empty!34847)))

(declare-fun b!1300925 () Bool)

(declare-fun res!864485 () Bool)

(assert (=> b!1300925 (=> (not res!864485) (not e!742061))))

(declare-datatypes ((List!29879 0))(
  ( (Nil!29876) (Cons!29875 (h!31084 (_ BitVec 64)) (t!43460 List!29879)) )
))
(declare-fun arrayNoDuplicates!0 (array!86665 (_ BitVec 32) List!29879) Bool)

(assert (=> b!1300925 (= res!864485 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29876))))

(declare-fun b!1300926 () Bool)

(declare-fun Unit!43003 () Unit!43001)

(assert (=> b!1300926 (= e!742063 Unit!43003)))

(declare-fun b!1300927 () Bool)

(assert (=> b!1300927 (= e!742060 (and e!742062 mapRes!53846))))

(declare-fun condMapEmpty!53846 () Bool)

(declare-fun mapDefault!53846 () ValueCell!16525)

