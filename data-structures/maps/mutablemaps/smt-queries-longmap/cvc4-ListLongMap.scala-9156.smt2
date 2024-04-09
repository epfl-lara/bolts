; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109856 () Bool)

(assert start!109856)

(declare-fun b_free!29213 () Bool)

(declare-fun b_next!29213 () Bool)

(assert (=> start!109856 (= b_free!29213 (not b_next!29213))))

(declare-fun tp!102773 () Bool)

(declare-fun b_and!47337 () Bool)

(assert (=> start!109856 (= tp!102773 b_and!47337)))

(declare-fun b!1301065 () Bool)

(declare-datatypes ((Unit!43007 0))(
  ( (Unit!43008) )
))
(declare-fun e!742133 () Unit!43007)

(declare-fun Unit!43009 () Unit!43007)

(assert (=> b!1301065 (= e!742133 Unit!43009)))

(declare-fun bm!63864 () Bool)

(declare-fun call!63871 () Bool)

(declare-fun call!63870 () Bool)

(assert (=> bm!63864 (= call!63871 call!63870)))

(declare-fun b!1301066 () Bool)

(declare-fun res!864554 () Bool)

(declare-fun e!742131 () Bool)

(assert (=> b!1301066 (=> (not res!864554) (not e!742131))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51573 0))(
  ( (V!51574 (val!17501 Int)) )
))
(declare-datatypes ((ValueCell!16528 0))(
  ( (ValueCellFull!16528 (v!20107 V!51573)) (EmptyCell!16528) )
))
(declare-datatypes ((array!86675 0))(
  ( (array!86676 (arr!41829 (Array (_ BitVec 32) ValueCell!16528)) (size!42380 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86675)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86677 0))(
  ( (array!86678 (arr!41830 (Array (_ BitVec 32) (_ BitVec 64))) (size!42381 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86677)

(assert (=> b!1301066 (= res!864554 (and (= (size!42380 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42381 _keys!1741) (size!42380 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53855 () Bool)

(declare-fun mapRes!53855 () Bool)

(declare-fun tp!102774 () Bool)

(declare-fun e!742128 () Bool)

(assert (=> mapNonEmpty!53855 (= mapRes!53855 (and tp!102774 e!742128))))

(declare-fun mapRest!53855 () (Array (_ BitVec 32) ValueCell!16528))

(declare-fun mapKey!53855 () (_ BitVec 32))

(declare-fun mapValue!53855 () ValueCell!16528)

(assert (=> mapNonEmpty!53855 (= (arr!41829 _values!1445) (store mapRest!53855 mapKey!53855 mapValue!53855))))

(declare-fun b!1301067 () Bool)

(declare-fun tp_is_empty!34853 () Bool)

(assert (=> b!1301067 (= e!742128 tp_is_empty!34853)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun b!1301068 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1301068 (= e!742131 (not (or (= k!1205 (select (arr!41830 _keys!1741) from!2144)) (not (= (select (arr!41830 _keys!1741) from!2144) k!1205)))))))

(declare-datatypes ((tuple2!22726 0))(
  ( (tuple2!22727 (_1!11373 (_ BitVec 64)) (_2!11373 V!51573)) )
))
(declare-datatypes ((List!29882 0))(
  ( (Nil!29879) (Cons!29878 (h!31087 tuple2!22726) (t!43463 List!29882)) )
))
(declare-datatypes ((ListLongMap!20395 0))(
  ( (ListLongMap!20396 (toList!10213 List!29882)) )
))
(declare-fun contains!8274 (ListLongMap!20395 (_ BitVec 64)) Bool)

(assert (=> b!1301068 (not (contains!8274 (ListLongMap!20396 Nil!29879) k!1205))))

(declare-fun lt!581727 () Unit!43007)

(declare-fun emptyContainsNothing!205 ((_ BitVec 64)) Unit!43007)

(assert (=> b!1301068 (= lt!581727 (emptyContainsNothing!205 k!1205))))

(declare-fun lt!581732 () Unit!43007)

(declare-fun e!742132 () Unit!43007)

(assert (=> b!1301068 (= lt!581732 e!742132)))

(declare-fun c!124648 () Bool)

(declare-fun lt!581734 () Bool)

(assert (=> b!1301068 (= c!124648 (and (not lt!581734) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301068 (= lt!581734 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1301069 () Bool)

(assert (=> b!1301069 call!63871))

(declare-fun lt!581728 () Unit!43007)

(declare-fun call!63868 () Unit!43007)

(assert (=> b!1301069 (= lt!581728 call!63868)))

(declare-fun lt!581725 () ListLongMap!20395)

(declare-fun call!63869 () ListLongMap!20395)

(assert (=> b!1301069 (= lt!581725 call!63869)))

(declare-fun e!742130 () Unit!43007)

(assert (=> b!1301069 (= e!742130 lt!581728)))

(declare-fun b!1301070 () Bool)

(declare-fun res!864553 () Bool)

(assert (=> b!1301070 (=> (not res!864553) (not e!742131))))

(declare-fun minValue!1387 () V!51573)

(declare-fun zeroValue!1387 () V!51573)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5183 (array!86677 array!86675 (_ BitVec 32) (_ BitVec 32) V!51573 V!51573 (_ BitVec 32) Int) ListLongMap!20395)

(assert (=> b!1301070 (= res!864553 (contains!8274 (getCurrentListMap!5183 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun call!63867 () ListLongMap!20395)

(declare-fun bm!63865 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6151 (array!86677 array!86675 (_ BitVec 32) (_ BitVec 32) V!51573 V!51573 (_ BitVec 32) Int) ListLongMap!20395)

(assert (=> bm!63865 (= call!63867 (getCurrentListMapNoExtraKeys!6151 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301071 () Bool)

(declare-fun res!864560 () Bool)

(assert (=> b!1301071 (=> (not res!864560) (not e!742131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301071 (= res!864560 (validKeyInArray!0 (select (arr!41830 _keys!1741) from!2144)))))

(declare-fun b!1301072 () Bool)

(declare-fun res!864559 () Bool)

(assert (=> b!1301072 (=> (not res!864559) (not e!742131))))

(declare-datatypes ((List!29883 0))(
  ( (Nil!29880) (Cons!29879 (h!31088 (_ BitVec 64)) (t!43464 List!29883)) )
))
(declare-fun arrayNoDuplicates!0 (array!86677 (_ BitVec 32) List!29883) Bool)

(assert (=> b!1301072 (= res!864559 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29880))))

(declare-fun b!1301073 () Bool)

(declare-fun res!864558 () Bool)

(assert (=> b!1301073 (=> (not res!864558) (not e!742131))))

(assert (=> b!1301073 (= res!864558 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42381 _keys!1741))))))

(declare-fun c!124649 () Bool)

(declare-fun lt!581726 () ListLongMap!20395)

(declare-fun call!63872 () Unit!43007)

(declare-fun lt!581733 () ListLongMap!20395)

(declare-fun bm!63866 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!76 ((_ BitVec 64) (_ BitVec 64) V!51573 ListLongMap!20395) Unit!43007)

(assert (=> bm!63866 (= call!63872 (lemmaInListMapAfterAddingDiffThenInBefore!76 k!1205 (ite (or c!124648 c!124649) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124648 c!124649) zeroValue!1387 minValue!1387) (ite c!124648 lt!581733 (ite c!124649 lt!581725 lt!581726))))))

(declare-fun bm!63867 () Bool)

(assert (=> bm!63867 (= call!63870 (contains!8274 (ite c!124648 lt!581733 (ite c!124649 lt!581725 lt!581726)) k!1205))))

(declare-fun b!1301074 () Bool)

(declare-fun res!864557 () Bool)

(assert (=> b!1301074 (=> (not res!864557) (not e!742131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86677 (_ BitVec 32)) Bool)

(assert (=> b!1301074 (= res!864557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun bm!63868 () Bool)

(assert (=> bm!63868 (= call!63868 call!63872)))

(declare-fun bm!63869 () Bool)

(assert (=> bm!63869 (= call!63869 call!63867)))

(declare-fun b!1301075 () Bool)

(declare-fun e!742129 () Bool)

(declare-fun e!742135 () Bool)

(assert (=> b!1301075 (= e!742129 (and e!742135 mapRes!53855))))

(declare-fun condMapEmpty!53855 () Bool)

(declare-fun mapDefault!53855 () ValueCell!16528)

