; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110368 () Bool)

(assert start!110368)

(declare-fun b_free!29315 () Bool)

(declare-fun b_next!29315 () Bool)

(assert (=> start!110368 (= b_free!29315 (not b_next!29315))))

(declare-fun tp!103115 () Bool)

(declare-fun b_and!47531 () Bool)

(assert (=> start!110368 (= tp!103115 b_and!47531)))

(declare-fun b!1305764 () Bool)

(declare-fun res!867051 () Bool)

(declare-fun e!744853 () Bool)

(assert (=> b!1305764 (=> (not res!867051) (not e!744853))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86893 0))(
  ( (array!86894 (arr!41928 (Array (_ BitVec 32) (_ BitVec 64))) (size!42479 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86893)

(assert (=> b!1305764 (= res!867051 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42479 _keys!1741))))))

(declare-fun b!1305765 () Bool)

(declare-fun res!867057 () Bool)

(assert (=> b!1305765 (=> (not res!867057) (not e!744853))))

(declare-datatypes ((List!29964 0))(
  ( (Nil!29961) (Cons!29960 (h!31169 (_ BitVec 64)) (t!43575 List!29964)) )
))
(declare-fun arrayNoDuplicates!0 (array!86893 (_ BitVec 32) List!29964) Bool)

(assert (=> b!1305765 (= res!867057 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29961))))

(declare-datatypes ((V!51709 0))(
  ( (V!51710 (val!17552 Int)) )
))
(declare-fun minValue!1387 () V!51709)

(declare-fun zeroValue!1387 () V!51709)

(declare-fun c!125449 () Bool)

(declare-datatypes ((tuple2!22818 0))(
  ( (tuple2!22819 (_1!11419 (_ BitVec 64)) (_2!11419 V!51709)) )
))
(declare-datatypes ((List!29965 0))(
  ( (Nil!29962) (Cons!29961 (h!31170 tuple2!22818) (t!43576 List!29965)) )
))
(declare-datatypes ((ListLongMap!20487 0))(
  ( (ListLongMap!20488 (toList!10259 List!29965)) )
))
(declare-fun lt!584722 () ListLongMap!20487)

(declare-fun bm!64575 () Bool)

(declare-datatypes ((Unit!43208 0))(
  ( (Unit!43209) )
))
(declare-fun call!64578 () Unit!43208)

(declare-fun c!125448 () Bool)

(declare-fun lt!584723 () ListLongMap!20487)

(declare-fun lt!584729 () ListLongMap!20487)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!96 ((_ BitVec 64) (_ BitVec 64) V!51709 ListLongMap!20487) Unit!43208)

(assert (=> bm!64575 (= call!64578 (lemmaInListMapAfterAddingDiffThenInBefore!96 k!1205 (ite (or c!125449 c!125448) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125449 c!125448) zeroValue!1387 minValue!1387) (ite c!125449 lt!584729 (ite c!125448 lt!584723 lt!584722))))))

(declare-fun b!1305766 () Bool)

(declare-fun e!744857 () Bool)

(declare-fun tp_is_empty!34955 () Bool)

(assert (=> b!1305766 (= e!744857 tp_is_empty!34955)))

(declare-fun b!1305767 () Bool)

(declare-fun e!744854 () Unit!43208)

(declare-fun lt!584726 () Unit!43208)

(assert (=> b!1305767 (= e!744854 lt!584726)))

(declare-fun call!64588 () ListLongMap!20487)

(assert (=> b!1305767 (= lt!584729 call!64588)))

(declare-fun lt!584731 () Unit!43208)

(declare-fun addStillNotContains!500 (ListLongMap!20487 (_ BitVec 64) V!51709 (_ BitVec 64)) Unit!43208)

(assert (=> b!1305767 (= lt!584731 (addStillNotContains!500 lt!584729 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun lt!584724 () ListLongMap!20487)

(declare-fun call!64584 () ListLongMap!20487)

(assert (=> b!1305767 (= lt!584724 call!64584)))

(declare-fun call!64581 () Bool)

(assert (=> b!1305767 (not call!64581)))

(declare-fun lt!584719 () Unit!43208)

(declare-fun call!64583 () Unit!43208)

(assert (=> b!1305767 (= lt!584719 call!64583)))

(declare-fun contains!8340 (ListLongMap!20487 (_ BitVec 64)) Bool)

(declare-fun +!4476 (ListLongMap!20487 tuple2!22818) ListLongMap!20487)

(assert (=> b!1305767 (not (contains!8340 (+!4476 lt!584729 (tuple2!22819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!584728 () Unit!43208)

(assert (=> b!1305767 (= lt!584728 (lemmaInListMapAfterAddingDiffThenInBefore!96 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!584724))))

(assert (=> b!1305767 false))

(assert (=> b!1305767 (= lt!584726 call!64578)))

(declare-fun lt!584725 () Bool)

(declare-fun call!64587 () Bool)

(assert (=> b!1305767 (= lt!584725 call!64587)))

(declare-fun bm!64576 () Bool)

(declare-fun call!64589 () ListLongMap!20487)

(assert (=> bm!64576 (= call!64587 (contains!8340 (ite c!125449 lt!584729 call!64589) k!1205))))

(declare-fun b!1305768 () Bool)

(declare-fun e!744852 () Unit!43208)

(declare-fun lt!584721 () Unit!43208)

(assert (=> b!1305768 (= e!744852 lt!584721)))

(declare-fun call!64580 () ListLongMap!20487)

(assert (=> b!1305768 (= lt!584722 call!64580)))

(declare-fun lt!584730 () Unit!43208)

(declare-fun call!64585 () Unit!43208)

(assert (=> b!1305768 (= lt!584730 call!64585)))

(declare-fun call!64582 () Bool)

(assert (=> b!1305768 (not call!64582)))

(declare-fun call!64586 () Unit!43208)

(assert (=> b!1305768 (= lt!584721 call!64586)))

(declare-fun call!64579 () Bool)

(assert (=> b!1305768 call!64579))

(declare-fun bm!64577 () Bool)

(assert (=> bm!64577 (= call!64579 call!64581)))

(declare-fun b!1305769 () Bool)

(declare-fun c!125450 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!584732 () Bool)

(assert (=> b!1305769 (= c!125450 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!584732))))

(declare-fun e!744851 () Unit!43208)

(assert (=> b!1305769 (= e!744851 e!744852)))

(declare-fun mapIsEmpty!54043 () Bool)

(declare-fun mapRes!54043 () Bool)

(assert (=> mapIsEmpty!54043 mapRes!54043))

(declare-fun b!1305770 () Bool)

(declare-fun res!867053 () Bool)

(assert (=> b!1305770 (=> (not res!867053) (not e!744853))))

(assert (=> b!1305770 (= res!867053 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42479 _keys!1741))))))

(declare-fun bm!64578 () Bool)

(assert (=> bm!64578 (= call!64583 (addStillNotContains!500 (ite c!125449 lt!584729 (ite c!125448 lt!584723 lt!584722)) (ite c!125449 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!125448 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!125449 minValue!1387 (ite c!125448 zeroValue!1387 minValue!1387)) k!1205))))

(declare-fun res!867055 () Bool)

(assert (=> start!110368 (=> (not res!867055) (not e!744853))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110368 (= res!867055 (validMask!0 mask!2175))))

(assert (=> start!110368 e!744853))

(assert (=> start!110368 tp_is_empty!34955))

(assert (=> start!110368 true))

(declare-datatypes ((ValueCell!16579 0))(
  ( (ValueCellFull!16579 (v!20175 V!51709)) (EmptyCell!16579) )
))
(declare-datatypes ((array!86895 0))(
  ( (array!86896 (arr!41929 (Array (_ BitVec 32) ValueCell!16579)) (size!42480 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86895)

(declare-fun e!744856 () Bool)

(declare-fun array_inv!31705 (array!86895) Bool)

(assert (=> start!110368 (and (array_inv!31705 _values!1445) e!744856)))

(declare-fun array_inv!31706 (array!86893) Bool)

(assert (=> start!110368 (array_inv!31706 _keys!1741)))

(assert (=> start!110368 tp!103115))

(declare-fun b!1305771 () Bool)

(declare-fun res!867054 () Bool)

(assert (=> b!1305771 (=> (not res!867054) (not e!744853))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86893 (_ BitVec 32)) Bool)

(assert (=> b!1305771 (= res!867054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun bm!64579 () Bool)

(assert (=> bm!64579 (= call!64589 call!64584)))

(declare-fun bm!64580 () Bool)

(assert (=> bm!64580 (= call!64581 (contains!8340 (ite c!125449 lt!584724 (ite c!125448 lt!584723 lt!584722)) k!1205))))

(declare-fun b!1305772 () Bool)

(declare-fun res!867056 () Bool)

(assert (=> b!1305772 (=> (not res!867056) (not e!744853))))

(assert (=> b!1305772 (= res!867056 (and (= (size!42480 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42479 _keys!1741) (size!42480 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun bm!64581 () Bool)

(assert (=> bm!64581 (= call!64586 call!64578)))

(declare-fun b!1305773 () Bool)

(declare-fun res!867050 () Bool)

(assert (=> b!1305773 (=> (not res!867050) (not e!744853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1305773 (= res!867050 (not (validKeyInArray!0 (select (arr!41928 _keys!1741) from!2144))))))

(declare-fun bm!64582 () Bool)

(assert (=> bm!64582 (= call!64585 call!64583)))

(declare-fun b!1305774 () Bool)

(declare-fun res!867052 () Bool)

(assert (=> b!1305774 (=> (not res!867052) (not e!744853))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5215 (array!86893 array!86895 (_ BitVec 32) (_ BitVec 32) V!51709 V!51709 (_ BitVec 32) Int) ListLongMap!20487)

(assert (=> b!1305774 (= res!867052 (contains!8340 (getCurrentListMap!5215 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun bm!64583 () Bool)

(assert (=> bm!64583 (= call!64584 (+!4476 (ite c!125449 lt!584729 (ite c!125448 lt!584723 lt!584722)) (ite (or c!125449 c!125448) (tuple2!22819 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1305775 () Bool)

(declare-fun e!744855 () Bool)

(assert (=> b!1305775 (= e!744855 tp_is_empty!34955)))

(declare-fun b!1305776 () Bool)

(assert (=> b!1305776 (= e!744853 (not true))))

(declare-fun lt!584727 () Unit!43208)

(assert (=> b!1305776 (= lt!584727 e!744854)))

(assert (=> b!1305776 (= c!125449 (and (not lt!584732) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1305776 (= lt!584732 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1305776 (not (contains!8340 (ListLongMap!20488 Nil!29962) k!1205))))

(declare-fun lt!584720 () Unit!43208)

(declare-fun emptyContainsNothing!238 ((_ BitVec 64)) Unit!43208)

(assert (=> b!1305776 (= lt!584720 (emptyContainsNothing!238 k!1205))))

(declare-fun b!1305777 () Bool)

(assert (=> b!1305777 (= e!744854 e!744851)))

(assert (=> b!1305777 (= c!125448 (and (not lt!584732) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!54043 () Bool)

(declare-fun tp!103114 () Bool)

(assert (=> mapNonEmpty!54043 (= mapRes!54043 (and tp!103114 e!744857))))

(declare-fun mapValue!54043 () ValueCell!16579)

(declare-fun mapRest!54043 () (Array (_ BitVec 32) ValueCell!16579))

(declare-fun mapKey!54043 () (_ BitVec 32))

(assert (=> mapNonEmpty!54043 (= (arr!41929 _values!1445) (store mapRest!54043 mapKey!54043 mapValue!54043))))

(declare-fun bm!64584 () Bool)

(assert (=> bm!64584 (= call!64582 call!64587)))

(declare-fun b!1305778 () Bool)

(assert (=> b!1305778 (= e!744856 (and e!744855 mapRes!54043))))

(declare-fun condMapEmpty!54043 () Bool)

(declare-fun mapDefault!54043 () ValueCell!16579)

