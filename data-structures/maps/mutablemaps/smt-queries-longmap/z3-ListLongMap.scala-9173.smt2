; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110366 () Bool)

(assert start!110366)

(declare-fun b_free!29313 () Bool)

(declare-fun b_next!29313 () Bool)

(assert (=> start!110366 (= b_free!29313 (not b_next!29313))))

(declare-fun tp!103108 () Bool)

(declare-fun b_and!47529 () Bool)

(assert (=> start!110366 (= tp!103108 b_and!47529)))

(declare-fun bm!64539 () Bool)

(declare-fun call!64542 () Bool)

(declare-fun call!64544 () Bool)

(assert (=> bm!64539 (= call!64542 call!64544)))

(declare-fun b!1305713 () Bool)

(declare-fun c!125439 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!584683 () Bool)

(assert (=> b!1305713 (= c!125439 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!584683))))

(declare-datatypes ((Unit!43205 0))(
  ( (Unit!43206) )
))
(declare-fun e!744827 () Unit!43205)

(declare-fun e!744828 () Unit!43205)

(assert (=> b!1305713 (= e!744827 e!744828)))

(declare-fun bm!64540 () Bool)

(declare-datatypes ((V!51707 0))(
  ( (V!51708 (val!17551 Int)) )
))
(declare-datatypes ((tuple2!22816 0))(
  ( (tuple2!22817 (_1!11418 (_ BitVec 64)) (_2!11418 V!51707)) )
))
(declare-datatypes ((List!29962 0))(
  ( (Nil!29959) (Cons!29958 (h!31167 tuple2!22816) (t!43573 List!29962)) )
))
(declare-datatypes ((ListLongMap!20485 0))(
  ( (ListLongMap!20486 (toList!10258 List!29962)) )
))
(declare-fun call!64553 () ListLongMap!20485)

(declare-fun call!64548 () ListLongMap!20485)

(assert (=> bm!64540 (= call!64553 call!64548)))

(declare-fun minValue!1387 () V!51707)

(declare-fun zeroValue!1387 () V!51707)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun bm!64541 () Bool)

(declare-datatypes ((ValueCell!16578 0))(
  ( (ValueCellFull!16578 (v!20174 V!51707)) (EmptyCell!16578) )
))
(declare-datatypes ((array!86889 0))(
  ( (array!86890 (arr!41926 (Array (_ BitVec 32) ValueCell!16578)) (size!42477 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86889)

(declare-datatypes ((array!86891 0))(
  ( (array!86892 (arr!41927 (Array (_ BitVec 32) (_ BitVec 64))) (size!42478 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86891)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6191 (array!86891 array!86889 (_ BitVec 32) (_ BitVec 32) V!51707 V!51707 (_ BitVec 32) Int) ListLongMap!20485)

(assert (=> bm!64541 (= call!64548 (getCurrentListMapNoExtraKeys!6191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1305714 () Bool)

(declare-fun res!867032 () Bool)

(declare-fun e!744830 () Bool)

(assert (=> b!1305714 (=> (not res!867032) (not e!744830))))

(assert (=> b!1305714 (= res!867032 (and (= (size!42477 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42478 _keys!1741) (size!42477 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1305716 () Bool)

(declare-fun res!867031 () Bool)

(assert (=> b!1305716 (=> (not res!867031) (not e!744830))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8339 (ListLongMap!20485 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5214 (array!86891 array!86889 (_ BitVec 32) (_ BitVec 32) V!51707 V!51707 (_ BitVec 32) Int) ListLongMap!20485)

(assert (=> b!1305716 (= res!867031 (contains!8339 (getCurrentListMap!5214 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!54040 () Bool)

(declare-fun mapRes!54040 () Bool)

(assert (=> mapIsEmpty!54040 mapRes!54040))

(declare-fun c!125441 () Bool)

(declare-fun lt!584674 () ListLongMap!20485)

(declare-fun lt!584672 () ListLongMap!20485)

(declare-fun bm!64542 () Bool)

(declare-fun c!125440 () Bool)

(declare-fun lt!584680 () ListLongMap!20485)

(declare-fun call!64543 () ListLongMap!20485)

(declare-fun +!4475 (ListLongMap!20485 tuple2!22816) ListLongMap!20485)

(assert (=> bm!64542 (= call!64543 (+!4475 (ite c!125441 lt!584674 (ite c!125440 lt!584680 lt!584672)) (ite c!125441 (tuple2!22817 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387) (ite c!125440 (tuple2!22817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22817 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun bm!64543 () Bool)

(declare-fun lt!584685 () ListLongMap!20485)

(assert (=> bm!64543 (= call!64544 (contains!8339 (ite c!125441 lt!584685 (ite c!125440 lt!584680 lt!584672)) k0!1205))))

(declare-fun b!1305717 () Bool)

(declare-fun Unit!43207 () Unit!43205)

(assert (=> b!1305717 (= e!744828 Unit!43207)))

(declare-fun b!1305718 () Bool)

(declare-fun e!744834 () Unit!43205)

(assert (=> b!1305718 (= e!744834 e!744827)))

(assert (=> b!1305718 (= c!125440 (and (not lt!584683) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64544 () Bool)

(declare-fun call!64549 () Bool)

(declare-fun call!64546 () Bool)

(assert (=> bm!64544 (= call!64549 call!64546)))

(declare-fun b!1305719 () Bool)

(declare-fun res!867027 () Bool)

(assert (=> b!1305719 (=> (not res!867027) (not e!744830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86891 (_ BitVec 32)) Bool)

(assert (=> b!1305719 (= res!867027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun bm!64545 () Bool)

(declare-fun call!64545 () Unit!43205)

(declare-fun addStillNotContains!499 (ListLongMap!20485 (_ BitVec 64) V!51707 (_ BitVec 64)) Unit!43205)

(assert (=> bm!64545 (= call!64545 (addStillNotContains!499 (ite c!125441 lt!584674 (ite c!125440 lt!584680 lt!584672)) (ite (or c!125441 c!125440) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!125441 c!125440) zeroValue!1387 minValue!1387) k0!1205))))

(declare-fun b!1305720 () Bool)

(declare-fun e!744833 () Bool)

(declare-fun e!744831 () Bool)

(assert (=> b!1305720 (= e!744833 (and e!744831 mapRes!54040))))

(declare-fun condMapEmpty!54040 () Bool)

(declare-fun mapDefault!54040 () ValueCell!16578)

(assert (=> b!1305720 (= condMapEmpty!54040 (= (arr!41926 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16578)) mapDefault!54040)))))

(declare-fun b!1305721 () Bool)

(declare-fun lt!584679 () Unit!43205)

(assert (=> b!1305721 (= e!744834 lt!584679)))

(assert (=> b!1305721 (= lt!584674 call!64548)))

(declare-fun lt!584678 () Unit!43205)

(assert (=> b!1305721 (= lt!584678 call!64545)))

(assert (=> b!1305721 (= lt!584685 (+!4475 lt!584674 (tuple2!22817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (=> b!1305721 (not call!64544)))

(declare-fun lt!584670 () Unit!43205)

(assert (=> b!1305721 (= lt!584670 (addStillNotContains!499 lt!584674 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1305721 (not (contains!8339 call!64543 k0!1205))))

(declare-fun lt!584677 () Unit!43205)

(declare-fun call!64552 () Unit!43205)

(assert (=> b!1305721 (= lt!584677 call!64552)))

(assert (=> b!1305721 false))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!95 ((_ BitVec 64) (_ BitVec 64) V!51707 ListLongMap!20485) Unit!43205)

(assert (=> b!1305721 (= lt!584679 (lemmaInListMapAfterAddingDiffThenInBefore!95 k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!584674))))

(declare-fun lt!584681 () Bool)

(assert (=> b!1305721 (= lt!584681 call!64546)))

(declare-fun b!1305722 () Bool)

(declare-fun res!867030 () Bool)

(assert (=> b!1305722 (=> (not res!867030) (not e!744830))))

(declare-datatypes ((List!29963 0))(
  ( (Nil!29960) (Cons!29959 (h!31168 (_ BitVec 64)) (t!43574 List!29963)) )
))
(declare-fun arrayNoDuplicates!0 (array!86891 (_ BitVec 32) List!29963) Bool)

(assert (=> b!1305722 (= res!867030 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29960))))

(declare-fun b!1305723 () Bool)

(assert (=> b!1305723 (= e!744830 (not true))))

(declare-fun lt!584675 () Unit!43205)

(assert (=> b!1305723 (= lt!584675 e!744834)))

(assert (=> b!1305723 (= c!125441 (and (not lt!584683) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1305723 (= lt!584683 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1305723 (not (contains!8339 (ListLongMap!20486 Nil!29959) k0!1205))))

(declare-fun lt!584684 () Unit!43205)

(declare-fun emptyContainsNothing!237 ((_ BitVec 64)) Unit!43205)

(assert (=> b!1305723 (= lt!584684 (emptyContainsNothing!237 k0!1205))))

(declare-fun b!1305724 () Bool)

(declare-fun lt!584676 () Unit!43205)

(assert (=> b!1305724 (= e!744828 lt!584676)))

(assert (=> b!1305724 (= lt!584672 call!64553)))

(declare-fun lt!584682 () Unit!43205)

(declare-fun call!64547 () Unit!43205)

(assert (=> b!1305724 (= lt!584682 call!64547)))

(assert (=> b!1305724 (not call!64549)))

(declare-fun call!64551 () Unit!43205)

(assert (=> b!1305724 (= lt!584676 call!64551)))

(assert (=> b!1305724 call!64542))

(declare-fun bm!64546 () Bool)

(declare-fun call!64550 () ListLongMap!20485)

(assert (=> bm!64546 (= call!64546 (contains!8339 (ite c!125441 lt!584674 call!64550) k0!1205))))

(declare-fun bm!64547 () Bool)

(assert (=> bm!64547 (= call!64552 (lemmaInListMapAfterAddingDiffThenInBefore!95 k0!1205 (ite c!125441 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!125440 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!125441 minValue!1387 (ite c!125440 zeroValue!1387 minValue!1387)) (ite c!125441 lt!584685 (ite c!125440 lt!584680 lt!584672))))))

(declare-fun b!1305725 () Bool)

(declare-fun res!867033 () Bool)

(assert (=> b!1305725 (=> (not res!867033) (not e!744830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1305725 (= res!867033 (not (validKeyInArray!0 (select (arr!41927 _keys!1741) from!2144))))))

(declare-fun bm!64548 () Bool)

(assert (=> bm!64548 (= call!64547 call!64545)))

(declare-fun mapNonEmpty!54040 () Bool)

(declare-fun tp!103109 () Bool)

(declare-fun e!744832 () Bool)

(assert (=> mapNonEmpty!54040 (= mapRes!54040 (and tp!103109 e!744832))))

(declare-fun mapRest!54040 () (Array (_ BitVec 32) ValueCell!16578))

(declare-fun mapValue!54040 () ValueCell!16578)

(declare-fun mapKey!54040 () (_ BitVec 32))

(assert (=> mapNonEmpty!54040 (= (arr!41926 _values!1445) (store mapRest!54040 mapKey!54040 mapValue!54040))))

(declare-fun bm!64549 () Bool)

(assert (=> bm!64549 (= call!64550 call!64543)))

(declare-fun b!1305726 () Bool)

(declare-fun tp_is_empty!34953 () Bool)

(assert (=> b!1305726 (= e!744831 tp_is_empty!34953)))

(declare-fun b!1305715 () Bool)

(declare-fun res!867026 () Bool)

(assert (=> b!1305715 (=> (not res!867026) (not e!744830))))

(assert (=> b!1305715 (= res!867026 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42478 _keys!1741))))))

(declare-fun res!867029 () Bool)

(assert (=> start!110366 (=> (not res!867029) (not e!744830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110366 (= res!867029 (validMask!0 mask!2175))))

(assert (=> start!110366 e!744830))

(assert (=> start!110366 tp_is_empty!34953))

(assert (=> start!110366 true))

(declare-fun array_inv!31703 (array!86889) Bool)

(assert (=> start!110366 (and (array_inv!31703 _values!1445) e!744833)))

(declare-fun array_inv!31704 (array!86891) Bool)

(assert (=> start!110366 (array_inv!31704 _keys!1741)))

(assert (=> start!110366 tp!103108))

(declare-fun b!1305727 () Bool)

(assert (=> b!1305727 (= e!744832 tp_is_empty!34953)))

(declare-fun bm!64550 () Bool)

(assert (=> bm!64550 (= call!64551 call!64552)))

(declare-fun b!1305728 () Bool)

(declare-fun res!867028 () Bool)

(assert (=> b!1305728 (=> (not res!867028) (not e!744830))))

(assert (=> b!1305728 (= res!867028 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42478 _keys!1741))))))

(declare-fun b!1305729 () Bool)

(assert (=> b!1305729 call!64542))

(declare-fun lt!584673 () Unit!43205)

(assert (=> b!1305729 (= lt!584673 call!64551)))

(assert (=> b!1305729 (not call!64549)))

(declare-fun lt!584671 () Unit!43205)

(assert (=> b!1305729 (= lt!584671 call!64547)))

(assert (=> b!1305729 (= lt!584680 call!64553)))

(assert (=> b!1305729 (= e!744827 lt!584673)))

(assert (= (and start!110366 res!867029) b!1305714))

(assert (= (and b!1305714 res!867032) b!1305719))

(assert (= (and b!1305719 res!867027) b!1305722))

(assert (= (and b!1305722 res!867030) b!1305715))

(assert (= (and b!1305715 res!867026) b!1305716))

(assert (= (and b!1305716 res!867031) b!1305728))

(assert (= (and b!1305728 res!867028) b!1305725))

(assert (= (and b!1305725 res!867033) b!1305723))

(assert (= (and b!1305723 c!125441) b!1305721))

(assert (= (and b!1305723 (not c!125441)) b!1305718))

(assert (= (and b!1305718 c!125440) b!1305729))

(assert (= (and b!1305718 (not c!125440)) b!1305713))

(assert (= (and b!1305713 c!125439) b!1305724))

(assert (= (and b!1305713 (not c!125439)) b!1305717))

(assert (= (or b!1305729 b!1305724) bm!64540))

(assert (= (or b!1305729 b!1305724) bm!64550))

(assert (= (or b!1305729 b!1305724) bm!64548))

(assert (= (or b!1305729 b!1305724) bm!64539))

(assert (= (or b!1305729 b!1305724) bm!64549))

(assert (= (or b!1305729 b!1305724) bm!64544))

(assert (= (or b!1305721 bm!64548) bm!64545))

(assert (= (or b!1305721 bm!64550) bm!64547))

(assert (= (or b!1305721 bm!64544) bm!64546))

(assert (= (or b!1305721 bm!64549) bm!64542))

(assert (= (or b!1305721 bm!64539) bm!64543))

(assert (= (or b!1305721 bm!64540) bm!64541))

(assert (= (and b!1305720 condMapEmpty!54040) mapIsEmpty!54040))

(assert (= (and b!1305720 (not condMapEmpty!54040)) mapNonEmpty!54040))

(get-info :version)

(assert (= (and mapNonEmpty!54040 ((_ is ValueCellFull!16578) mapValue!54040)) b!1305727))

(assert (= (and b!1305720 ((_ is ValueCellFull!16578) mapDefault!54040)) b!1305726))

(assert (= start!110366 b!1305720))

(declare-fun m!1196977 () Bool)

(assert (=> bm!64542 m!1196977))

(declare-fun m!1196979 () Bool)

(assert (=> b!1305719 m!1196979))

(declare-fun m!1196981 () Bool)

(assert (=> mapNonEmpty!54040 m!1196981))

(declare-fun m!1196983 () Bool)

(assert (=> bm!64543 m!1196983))

(declare-fun m!1196985 () Bool)

(assert (=> b!1305725 m!1196985))

(assert (=> b!1305725 m!1196985))

(declare-fun m!1196987 () Bool)

(assert (=> b!1305725 m!1196987))

(declare-fun m!1196989 () Bool)

(assert (=> b!1305723 m!1196989))

(declare-fun m!1196991 () Bool)

(assert (=> b!1305723 m!1196991))

(declare-fun m!1196993 () Bool)

(assert (=> b!1305722 m!1196993))

(declare-fun m!1196995 () Bool)

(assert (=> bm!64546 m!1196995))

(declare-fun m!1196997 () Bool)

(assert (=> start!110366 m!1196997))

(declare-fun m!1196999 () Bool)

(assert (=> start!110366 m!1196999))

(declare-fun m!1197001 () Bool)

(assert (=> start!110366 m!1197001))

(declare-fun m!1197003 () Bool)

(assert (=> bm!64541 m!1197003))

(declare-fun m!1197005 () Bool)

(assert (=> bm!64547 m!1197005))

(declare-fun m!1197007 () Bool)

(assert (=> bm!64545 m!1197007))

(declare-fun m!1197009 () Bool)

(assert (=> b!1305721 m!1197009))

(declare-fun m!1197011 () Bool)

(assert (=> b!1305721 m!1197011))

(declare-fun m!1197013 () Bool)

(assert (=> b!1305721 m!1197013))

(declare-fun m!1197015 () Bool)

(assert (=> b!1305721 m!1197015))

(declare-fun m!1197017 () Bool)

(assert (=> b!1305716 m!1197017))

(assert (=> b!1305716 m!1197017))

(declare-fun m!1197019 () Bool)

(assert (=> b!1305716 m!1197019))

(check-sat tp_is_empty!34953 (not bm!64542) (not b_next!29313) (not bm!64547) (not bm!64546) (not b!1305716) (not b!1305722) (not bm!64545) (not bm!64543) (not b!1305723) (not b!1305725) (not mapNonEmpty!54040) b_and!47529 (not b!1305719) (not b!1305721) (not bm!64541) (not start!110366))
(check-sat b_and!47529 (not b_next!29313))
