; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109940 () Bool)

(assert start!109940)

(declare-fun b_free!29229 () Bool)

(declare-fun b_next!29229 () Bool)

(assert (=> start!109940 (= b_free!29229 (not b_next!29229))))

(declare-fun tp!102825 () Bool)

(declare-fun b_and!47375 () Bool)

(assert (=> start!109940 (= tp!102825 b_and!47375)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun e!742605 () Bool)

(declare-fun b!1301918 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!86709 0))(
  ( (array!86710 (arr!41845 (Array (_ BitVec 32) (_ BitVec 64))) (size!42396 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86709)

(declare-fun arrayContainsKey!0 (array!86709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1301918 (= e!742605 (arrayContainsKey!0 _keys!1741 k0!1205 from!2144))))

(declare-fun b!1301919 () Bool)

(declare-fun res!864942 () Bool)

(declare-fun e!742607 () Bool)

(assert (=> b!1301919 (=> (not res!864942) (not e!742607))))

(assert (=> b!1301919 (= res!864942 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42396 _keys!1741))))))

(declare-fun bm!64053 () Bool)

(declare-datatypes ((Unit!43046 0))(
  ( (Unit!43047) )
))
(declare-fun call!64058 () Unit!43046)

(declare-fun call!64060 () Unit!43046)

(assert (=> bm!64053 (= call!64058 call!64060)))

(declare-fun b!1301920 () Bool)

(declare-fun e!742613 () Bool)

(declare-fun e!742609 () Bool)

(declare-fun mapRes!53883 () Bool)

(assert (=> b!1301920 (= e!742613 (and e!742609 mapRes!53883))))

(declare-fun condMapEmpty!53883 () Bool)

(declare-datatypes ((V!51595 0))(
  ( (V!51596 (val!17509 Int)) )
))
(declare-datatypes ((ValueCell!16536 0))(
  ( (ValueCellFull!16536 (v!20118 V!51595)) (EmptyCell!16536) )
))
(declare-datatypes ((array!86711 0))(
  ( (array!86712 (arr!41846 (Array (_ BitVec 32) ValueCell!16536)) (size!42397 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86711)

(declare-fun mapDefault!53883 () ValueCell!16536)

(assert (=> b!1301920 (= condMapEmpty!53883 (= (arr!41846 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16536)) mapDefault!53883)))))

(declare-fun b!1301921 () Bool)

(declare-fun e!742610 () Unit!43046)

(declare-fun lt!582311 () Unit!43046)

(assert (=> b!1301921 (= e!742610 lt!582311)))

(declare-datatypes ((tuple2!22742 0))(
  ( (tuple2!22743 (_1!11381 (_ BitVec 64)) (_2!11381 V!51595)) )
))
(declare-datatypes ((List!29895 0))(
  ( (Nil!29892) (Cons!29891 (h!31100 tuple2!22742) (t!43488 List!29895)) )
))
(declare-datatypes ((ListLongMap!20411 0))(
  ( (ListLongMap!20412 (toList!10221 List!29895)) )
))
(declare-fun lt!582312 () ListLongMap!20411)

(declare-fun call!64061 () ListLongMap!20411)

(assert (=> b!1301921 (= lt!582312 call!64061)))

(assert (=> b!1301921 (= lt!582311 call!64058)))

(declare-fun call!64059 () Bool)

(assert (=> b!1301921 call!64059))

(declare-fun b!1301922 () Bool)

(assert (=> b!1301922 (= e!742607 (not e!742605))))

(declare-fun res!864948 () Bool)

(assert (=> b!1301922 (=> res!864948 e!742605)))

(assert (=> b!1301922 (= res!864948 (not (= k0!1205 (select (arr!41845 _keys!1741) from!2144))))))

(declare-fun contains!8284 (ListLongMap!20411 (_ BitVec 64)) Bool)

(assert (=> b!1301922 (not (contains!8284 (ListLongMap!20412 Nil!29892) k0!1205))))

(declare-fun lt!582316 () Unit!43046)

(declare-fun emptyContainsNothing!211 ((_ BitVec 64)) Unit!43046)

(assert (=> b!1301922 (= lt!582316 (emptyContainsNothing!211 k0!1205))))

(declare-fun lt!582313 () Unit!43046)

(declare-fun e!742611 () Unit!43046)

(assert (=> b!1301922 (= lt!582313 e!742611)))

(declare-fun c!124830 () Bool)

(declare-fun lt!582314 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1301922 (= c!124830 (and (not lt!582314) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301922 (= lt!582314 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1301923 () Bool)

(declare-fun e!742608 () Bool)

(declare-fun tp_is_empty!34869 () Bool)

(assert (=> b!1301923 (= e!742608 tp_is_empty!34869)))

(declare-fun b!1301924 () Bool)

(declare-fun Unit!43048 () Unit!43046)

(assert (=> b!1301924 (= e!742610 Unit!43048)))

(declare-fun c!124831 () Bool)

(declare-fun lt!582315 () ListLongMap!20411)

(declare-fun lt!582317 () ListLongMap!20411)

(declare-fun bm!64054 () Bool)

(declare-fun call!64056 () Bool)

(assert (=> bm!64054 (= call!64056 (contains!8284 (ite c!124830 lt!582315 (ite c!124831 lt!582317 lt!582312)) k0!1205))))

(declare-fun b!1301925 () Bool)

(declare-fun e!742606 () Unit!43046)

(assert (=> b!1301925 (= e!742611 e!742606)))

(assert (=> b!1301925 (= c!124831 (and (not lt!582314) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64055 () Bool)

(declare-fun call!64057 () ListLongMap!20411)

(assert (=> bm!64055 (= call!64061 call!64057)))

(declare-fun bm!64056 () Bool)

(assert (=> bm!64056 (= call!64059 call!64056)))

(declare-fun res!864945 () Bool)

(assert (=> start!109940 (=> (not res!864945) (not e!742607))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109940 (= res!864945 (validMask!0 mask!2175))))

(assert (=> start!109940 e!742607))

(assert (=> start!109940 tp_is_empty!34869))

(assert (=> start!109940 true))

(declare-fun array_inv!31653 (array!86711) Bool)

(assert (=> start!109940 (and (array_inv!31653 _values!1445) e!742613)))

(declare-fun array_inv!31654 (array!86709) Bool)

(assert (=> start!109940 (array_inv!31654 _keys!1741)))

(assert (=> start!109940 tp!102825))

(declare-fun b!1301926 () Bool)

(declare-fun res!864949 () Bool)

(assert (=> b!1301926 (=> (not res!864949) (not e!742607))))

(assert (=> b!1301926 (= res!864949 (and (= (size!42397 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42396 _keys!1741) (size!42397 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun minValue!1387 () V!51595)

(declare-fun zeroValue!1387 () V!51595)

(declare-fun bm!64057 () Bool)

(declare-fun lt!582320 () ListLongMap!20411)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!83 ((_ BitVec 64) (_ BitVec 64) V!51595 ListLongMap!20411) Unit!43046)

(assert (=> bm!64057 (= call!64060 (lemmaInListMapAfterAddingDiffThenInBefore!83 k0!1205 (ite (or c!124830 c!124831) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124830 c!124831) zeroValue!1387 minValue!1387) (ite c!124830 lt!582320 (ite c!124831 lt!582317 lt!582312))))))

(declare-fun b!1301927 () Bool)

(assert (=> b!1301927 call!64059))

(declare-fun lt!582318 () Unit!43046)

(assert (=> b!1301927 (= lt!582318 call!64058)))

(assert (=> b!1301927 (= lt!582317 call!64061)))

(assert (=> b!1301927 (= e!742606 lt!582318)))

(declare-fun b!1301928 () Bool)

(declare-fun res!864943 () Bool)

(assert (=> b!1301928 (=> (not res!864943) (not e!742607))))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5187 (array!86709 array!86711 (_ BitVec 32) (_ BitVec 32) V!51595 V!51595 (_ BitVec 32) Int) ListLongMap!20411)

(assert (=> b!1301928 (= res!864943 (contains!8284 (getCurrentListMap!5187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53883 () Bool)

(assert (=> mapIsEmpty!53883 mapRes!53883))

(declare-fun b!1301929 () Bool)

(declare-fun res!864947 () Bool)

(assert (=> b!1301929 (=> (not res!864947) (not e!742607))))

(assert (=> b!1301929 (= res!864947 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42396 _keys!1741))))))

(declare-fun bm!64058 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6156 (array!86709 array!86711 (_ BitVec 32) (_ BitVec 32) V!51595 V!51595 (_ BitVec 32) Int) ListLongMap!20411)

(assert (=> bm!64058 (= call!64057 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301930 () Bool)

(declare-fun c!124832 () Bool)

(assert (=> b!1301930 (= c!124832 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!582314))))

(assert (=> b!1301930 (= e!742606 e!742610)))

(declare-fun mapNonEmpty!53883 () Bool)

(declare-fun tp!102826 () Bool)

(assert (=> mapNonEmpty!53883 (= mapRes!53883 (and tp!102826 e!742608))))

(declare-fun mapRest!53883 () (Array (_ BitVec 32) ValueCell!16536))

(declare-fun mapKey!53883 () (_ BitVec 32))

(declare-fun mapValue!53883 () ValueCell!16536)

(assert (=> mapNonEmpty!53883 (= (arr!41846 _values!1445) (store mapRest!53883 mapKey!53883 mapValue!53883))))

(declare-fun b!1301931 () Bool)

(declare-fun res!864946 () Bool)

(assert (=> b!1301931 (=> (not res!864946) (not e!742607))))

(declare-datatypes ((List!29896 0))(
  ( (Nil!29893) (Cons!29892 (h!31101 (_ BitVec 64)) (t!43489 List!29896)) )
))
(declare-fun arrayNoDuplicates!0 (array!86709 (_ BitVec 32) List!29896) Bool)

(assert (=> b!1301931 (= res!864946 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29893))))

(declare-fun b!1301932 () Bool)

(declare-fun lt!582321 () Unit!43046)

(assert (=> b!1301932 (= e!742611 lt!582321)))

(assert (=> b!1301932 (= lt!582320 call!64057)))

(declare-fun +!4443 (ListLongMap!20411 tuple2!22742) ListLongMap!20411)

(assert (=> b!1301932 (= lt!582315 (+!4443 lt!582320 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582319 () Unit!43046)

(assert (=> b!1301932 (= lt!582319 (lemmaInListMapAfterAddingDiffThenInBefore!83 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!582315))))

(assert (=> b!1301932 call!64056))

(assert (=> b!1301932 (= lt!582321 call!64060)))

(assert (=> b!1301932 (contains!8284 lt!582320 k0!1205)))

(declare-fun b!1301933 () Bool)

(declare-fun res!864950 () Bool)

(assert (=> b!1301933 (=> (not res!864950) (not e!742607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86709 (_ BitVec 32)) Bool)

(assert (=> b!1301933 (= res!864950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1301934 () Bool)

(declare-fun res!864944 () Bool)

(assert (=> b!1301934 (=> (not res!864944) (not e!742607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301934 (= res!864944 (validKeyInArray!0 (select (arr!41845 _keys!1741) from!2144)))))

(declare-fun b!1301935 () Bool)

(assert (=> b!1301935 (= e!742609 tp_is_empty!34869)))

(assert (= (and start!109940 res!864945) b!1301926))

(assert (= (and b!1301926 res!864949) b!1301933))

(assert (= (and b!1301933 res!864950) b!1301931))

(assert (= (and b!1301931 res!864946) b!1301919))

(assert (= (and b!1301919 res!864942) b!1301928))

(assert (= (and b!1301928 res!864943) b!1301929))

(assert (= (and b!1301929 res!864947) b!1301934))

(assert (= (and b!1301934 res!864944) b!1301922))

(assert (= (and b!1301922 c!124830) b!1301932))

(assert (= (and b!1301922 (not c!124830)) b!1301925))

(assert (= (and b!1301925 c!124831) b!1301927))

(assert (= (and b!1301925 (not c!124831)) b!1301930))

(assert (= (and b!1301930 c!124832) b!1301921))

(assert (= (and b!1301930 (not c!124832)) b!1301924))

(assert (= (or b!1301927 b!1301921) bm!64055))

(assert (= (or b!1301927 b!1301921) bm!64053))

(assert (= (or b!1301927 b!1301921) bm!64056))

(assert (= (or b!1301932 bm!64055) bm!64058))

(assert (= (or b!1301932 bm!64053) bm!64057))

(assert (= (or b!1301932 bm!64056) bm!64054))

(assert (= (and b!1301922 (not res!864948)) b!1301918))

(assert (= (and b!1301920 condMapEmpty!53883) mapIsEmpty!53883))

(assert (= (and b!1301920 (not condMapEmpty!53883)) mapNonEmpty!53883))

(get-info :version)

(assert (= (and mapNonEmpty!53883 ((_ is ValueCellFull!16536) mapValue!53883)) b!1301923))

(assert (= (and b!1301920 ((_ is ValueCellFull!16536) mapDefault!53883)) b!1301935))

(assert (= start!109940 b!1301920))

(declare-fun m!1192781 () Bool)

(assert (=> b!1301928 m!1192781))

(assert (=> b!1301928 m!1192781))

(declare-fun m!1192783 () Bool)

(assert (=> b!1301928 m!1192783))

(declare-fun m!1192785 () Bool)

(assert (=> b!1301918 m!1192785))

(declare-fun m!1192787 () Bool)

(assert (=> b!1301933 m!1192787))

(declare-fun m!1192789 () Bool)

(assert (=> bm!64058 m!1192789))

(declare-fun m!1192791 () Bool)

(assert (=> b!1301934 m!1192791))

(assert (=> b!1301934 m!1192791))

(declare-fun m!1192793 () Bool)

(assert (=> b!1301934 m!1192793))

(assert (=> b!1301922 m!1192791))

(declare-fun m!1192795 () Bool)

(assert (=> b!1301922 m!1192795))

(declare-fun m!1192797 () Bool)

(assert (=> b!1301922 m!1192797))

(declare-fun m!1192799 () Bool)

(assert (=> bm!64054 m!1192799))

(declare-fun m!1192801 () Bool)

(assert (=> bm!64057 m!1192801))

(declare-fun m!1192803 () Bool)

(assert (=> b!1301932 m!1192803))

(declare-fun m!1192805 () Bool)

(assert (=> b!1301932 m!1192805))

(declare-fun m!1192807 () Bool)

(assert (=> b!1301932 m!1192807))

(declare-fun m!1192809 () Bool)

(assert (=> b!1301931 m!1192809))

(declare-fun m!1192811 () Bool)

(assert (=> mapNonEmpty!53883 m!1192811))

(declare-fun m!1192813 () Bool)

(assert (=> start!109940 m!1192813))

(declare-fun m!1192815 () Bool)

(assert (=> start!109940 m!1192815))

(declare-fun m!1192817 () Bool)

(assert (=> start!109940 m!1192817))

(check-sat (not b!1301931) (not bm!64058) (not b!1301933) (not b!1301932) (not b_next!29229) (not b!1301934) b_and!47375 (not bm!64054) tp_is_empty!34869 (not b!1301918) (not b!1301928) (not bm!64057) (not b!1301922) (not mapNonEmpty!53883) (not start!109940))
(check-sat b_and!47375 (not b_next!29229))
(get-model)

(declare-fun d!141315 () Bool)

(declare-fun e!742658 () Bool)

(assert (=> d!141315 e!742658))

(declare-fun res!864989 () Bool)

(assert (=> d!141315 (=> (not res!864989) (not e!742658))))

(declare-fun lt!582369 () ListLongMap!20411)

(assert (=> d!141315 (= res!864989 (not (contains!8284 lt!582369 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!742656 () ListLongMap!20411)

(assert (=> d!141315 (= lt!582369 e!742656)))

(declare-fun c!124853 () Bool)

(assert (=> d!141315 (= c!124853 (bvsge from!2144 (size!42396 _keys!1741)))))

(assert (=> d!141315 (validMask!0 mask!2175)))

(assert (=> d!141315 (= (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!582369)))

(declare-fun b!1302014 () Bool)

(declare-fun e!742657 () Bool)

(declare-fun isEmpty!1059 (ListLongMap!20411) Bool)

(assert (=> b!1302014 (= e!742657 (isEmpty!1059 lt!582369))))

(declare-fun b!1302015 () Bool)

(assert (=> b!1302015 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42396 _keys!1741)))))

(assert (=> b!1302015 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42397 _values!1445)))))

(declare-fun e!742660 () Bool)

(declare-fun apply!1053 (ListLongMap!20411 (_ BitVec 64)) V!51595)

(declare-fun get!21183 (ValueCell!16536 V!51595) V!51595)

(declare-fun dynLambda!3505 (Int (_ BitVec 64)) V!51595)

(assert (=> b!1302015 (= e!742660 (= (apply!1053 lt!582369 (select (arr!41845 _keys!1741) from!2144)) (get!21183 (select (arr!41846 _values!1445) from!2144) (dynLambda!3505 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1302016 () Bool)

(assert (=> b!1302016 (= e!742657 (= lt!582369 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1302017 () Bool)

(declare-fun e!742661 () Bool)

(assert (=> b!1302017 (= e!742658 e!742661)))

(declare-fun c!124851 () Bool)

(declare-fun e!742659 () Bool)

(assert (=> b!1302017 (= c!124851 e!742659)))

(declare-fun res!864987 () Bool)

(assert (=> b!1302017 (=> (not res!864987) (not e!742659))))

(assert (=> b!1302017 (= res!864987 (bvslt from!2144 (size!42396 _keys!1741)))))

(declare-fun b!1302018 () Bool)

(assert (=> b!1302018 (= e!742661 e!742657)))

(declare-fun c!124852 () Bool)

(assert (=> b!1302018 (= c!124852 (bvslt from!2144 (size!42396 _keys!1741)))))

(declare-fun b!1302019 () Bool)

(declare-fun e!742655 () ListLongMap!20411)

(declare-fun call!64082 () ListLongMap!20411)

(assert (=> b!1302019 (= e!742655 call!64082)))

(declare-fun b!1302020 () Bool)

(assert (=> b!1302020 (= e!742659 (validKeyInArray!0 (select (arr!41845 _keys!1741) from!2144)))))

(assert (=> b!1302020 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun bm!64079 () Bool)

(assert (=> bm!64079 (= call!64082 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1302021 () Bool)

(declare-fun res!864988 () Bool)

(assert (=> b!1302021 (=> (not res!864988) (not e!742658))))

(assert (=> b!1302021 (= res!864988 (not (contains!8284 lt!582369 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1302022 () Bool)

(assert (=> b!1302022 (= e!742656 e!742655)))

(declare-fun c!124850 () Bool)

(assert (=> b!1302022 (= c!124850 (validKeyInArray!0 (select (arr!41845 _keys!1741) from!2144)))))

(declare-fun b!1302023 () Bool)

(assert (=> b!1302023 (= e!742656 (ListLongMap!20412 Nil!29892))))

(declare-fun b!1302024 () Bool)

(declare-fun lt!582375 () Unit!43046)

(declare-fun lt!582374 () Unit!43046)

(assert (=> b!1302024 (= lt!582375 lt!582374)))

(declare-fun lt!582373 () (_ BitVec 64))

(declare-fun lt!582371 () ListLongMap!20411)

(declare-fun lt!582370 () (_ BitVec 64))

(declare-fun lt!582372 () V!51595)

(assert (=> b!1302024 (not (contains!8284 (+!4443 lt!582371 (tuple2!22743 lt!582373 lt!582372)) lt!582370))))

(declare-fun addStillNotContains!468 (ListLongMap!20411 (_ BitVec 64) V!51595 (_ BitVec 64)) Unit!43046)

(assert (=> b!1302024 (= lt!582374 (addStillNotContains!468 lt!582371 lt!582373 lt!582372 lt!582370))))

(assert (=> b!1302024 (= lt!582370 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1302024 (= lt!582372 (get!21183 (select (arr!41846 _values!1445) from!2144) (dynLambda!3505 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1302024 (= lt!582373 (select (arr!41845 _keys!1741) from!2144))))

(assert (=> b!1302024 (= lt!582371 call!64082)))

(assert (=> b!1302024 (= e!742655 (+!4443 call!64082 (tuple2!22743 (select (arr!41845 _keys!1741) from!2144) (get!21183 (select (arr!41846 _values!1445) from!2144) (dynLambda!3505 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1302025 () Bool)

(assert (=> b!1302025 (= e!742661 e!742660)))

(assert (=> b!1302025 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42396 _keys!1741)))))

(declare-fun res!864986 () Bool)

(assert (=> b!1302025 (= res!864986 (contains!8284 lt!582369 (select (arr!41845 _keys!1741) from!2144)))))

(assert (=> b!1302025 (=> (not res!864986) (not e!742660))))

(assert (= (and d!141315 c!124853) b!1302023))

(assert (= (and d!141315 (not c!124853)) b!1302022))

(assert (= (and b!1302022 c!124850) b!1302024))

(assert (= (and b!1302022 (not c!124850)) b!1302019))

(assert (= (or b!1302024 b!1302019) bm!64079))

(assert (= (and d!141315 res!864989) b!1302021))

(assert (= (and b!1302021 res!864988) b!1302017))

(assert (= (and b!1302017 res!864987) b!1302020))

(assert (= (and b!1302017 c!124851) b!1302025))

(assert (= (and b!1302017 (not c!124851)) b!1302018))

(assert (= (and b!1302025 res!864986) b!1302015))

(assert (= (and b!1302018 c!124852) b!1302016))

(assert (= (and b!1302018 (not c!124852)) b!1302014))

(declare-fun b_lambda!23229 () Bool)

(assert (=> (not b_lambda!23229) (not b!1302015)))

(declare-fun t!43493 () Bool)

(declare-fun tb!11399 () Bool)

(assert (=> (and start!109940 (= defaultEntry!1448 defaultEntry!1448) t!43493) tb!11399))

(declare-fun result!23803 () Bool)

(assert (=> tb!11399 (= result!23803 tp_is_empty!34869)))

(assert (=> b!1302015 t!43493))

(declare-fun b_and!47379 () Bool)

(assert (= b_and!47375 (and (=> t!43493 result!23803) b_and!47379)))

(declare-fun b_lambda!23231 () Bool)

(assert (=> (not b_lambda!23231) (not b!1302024)))

(assert (=> b!1302024 t!43493))

(declare-fun b_and!47381 () Bool)

(assert (= b_and!47379 (and (=> t!43493 result!23803) b_and!47381)))

(declare-fun m!1192857 () Bool)

(assert (=> d!141315 m!1192857))

(assert (=> d!141315 m!1192813))

(declare-fun m!1192859 () Bool)

(assert (=> b!1302016 m!1192859))

(assert (=> b!1302020 m!1192791))

(assert (=> b!1302020 m!1192791))

(assert (=> b!1302020 m!1192793))

(declare-fun m!1192861 () Bool)

(assert (=> b!1302021 m!1192861))

(assert (=> b!1302024 m!1192791))

(declare-fun m!1192863 () Bool)

(assert (=> b!1302024 m!1192863))

(declare-fun m!1192865 () Bool)

(assert (=> b!1302024 m!1192865))

(declare-fun m!1192867 () Bool)

(assert (=> b!1302024 m!1192867))

(declare-fun m!1192869 () Bool)

(assert (=> b!1302024 m!1192869))

(assert (=> b!1302024 m!1192867))

(declare-fun m!1192871 () Bool)

(assert (=> b!1302024 m!1192871))

(declare-fun m!1192873 () Bool)

(assert (=> b!1302024 m!1192873))

(assert (=> b!1302024 m!1192869))

(assert (=> b!1302024 m!1192873))

(declare-fun m!1192875 () Bool)

(assert (=> b!1302024 m!1192875))

(declare-fun m!1192877 () Bool)

(assert (=> b!1302014 m!1192877))

(assert (=> b!1302022 m!1192791))

(assert (=> b!1302022 m!1192791))

(assert (=> b!1302022 m!1192793))

(assert (=> b!1302025 m!1192791))

(assert (=> b!1302025 m!1192791))

(declare-fun m!1192879 () Bool)

(assert (=> b!1302025 m!1192879))

(assert (=> b!1302015 m!1192869))

(assert (=> b!1302015 m!1192791))

(assert (=> b!1302015 m!1192869))

(assert (=> b!1302015 m!1192867))

(assert (=> b!1302015 m!1192871))

(assert (=> b!1302015 m!1192791))

(declare-fun m!1192881 () Bool)

(assert (=> b!1302015 m!1192881))

(assert (=> b!1302015 m!1192867))

(assert (=> bm!64079 m!1192859))

(assert (=> bm!64058 d!141315))

(declare-fun d!141317 () Bool)

(assert (=> d!141317 (contains!8284 (ite c!124830 lt!582320 (ite c!124831 lt!582317 lt!582312)) k0!1205)))

(declare-fun lt!582378 () Unit!43046)

(declare-fun choose!1919 ((_ BitVec 64) (_ BitVec 64) V!51595 ListLongMap!20411) Unit!43046)

(assert (=> d!141317 (= lt!582378 (choose!1919 k0!1205 (ite (or c!124830 c!124831) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124830 c!124831) zeroValue!1387 minValue!1387) (ite c!124830 lt!582320 (ite c!124831 lt!582317 lt!582312))))))

(assert (=> d!141317 (contains!8284 (+!4443 (ite c!124830 lt!582320 (ite c!124831 lt!582317 lt!582312)) (tuple2!22743 (ite (or c!124830 c!124831) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124830 c!124831) zeroValue!1387 minValue!1387))) k0!1205)))

(assert (=> d!141317 (= (lemmaInListMapAfterAddingDiffThenInBefore!83 k0!1205 (ite (or c!124830 c!124831) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124830 c!124831) zeroValue!1387 minValue!1387) (ite c!124830 lt!582320 (ite c!124831 lt!582317 lt!582312))) lt!582378)))

(declare-fun bs!37073 () Bool)

(assert (= bs!37073 d!141317))

(declare-fun m!1192883 () Bool)

(assert (=> bs!37073 m!1192883))

(declare-fun m!1192885 () Bool)

(assert (=> bs!37073 m!1192885))

(declare-fun m!1192887 () Bool)

(assert (=> bs!37073 m!1192887))

(assert (=> bs!37073 m!1192887))

(declare-fun m!1192889 () Bool)

(assert (=> bs!37073 m!1192889))

(assert (=> bm!64057 d!141317))

(declare-fun d!141319 () Bool)

(assert (=> d!141319 (= (validKeyInArray!0 (select (arr!41845 _keys!1741) from!2144)) (and (not (= (select (arr!41845 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41845 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1301934 d!141319))

(declare-fun d!141321 () Bool)

(declare-fun e!742667 () Bool)

(assert (=> d!141321 e!742667))

(declare-fun res!864992 () Bool)

(assert (=> d!141321 (=> res!864992 e!742667)))

(declare-fun lt!582388 () Bool)

(assert (=> d!141321 (= res!864992 (not lt!582388))))

(declare-fun lt!582390 () Bool)

(assert (=> d!141321 (= lt!582388 lt!582390)))

(declare-fun lt!582387 () Unit!43046)

(declare-fun e!742666 () Unit!43046)

(assert (=> d!141321 (= lt!582387 e!742666)))

(declare-fun c!124856 () Bool)

(assert (=> d!141321 (= c!124856 lt!582390)))

(declare-fun containsKey!721 (List!29895 (_ BitVec 64)) Bool)

(assert (=> d!141321 (= lt!582390 (containsKey!721 (toList!10221 (ite c!124830 lt!582315 (ite c!124831 lt!582317 lt!582312))) k0!1205))))

(assert (=> d!141321 (= (contains!8284 (ite c!124830 lt!582315 (ite c!124831 lt!582317 lt!582312)) k0!1205) lt!582388)))

(declare-fun b!1302034 () Bool)

(declare-fun lt!582389 () Unit!43046)

(assert (=> b!1302034 (= e!742666 lt!582389)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!466 (List!29895 (_ BitVec 64)) Unit!43046)

(assert (=> b!1302034 (= lt!582389 (lemmaContainsKeyImpliesGetValueByKeyDefined!466 (toList!10221 (ite c!124830 lt!582315 (ite c!124831 lt!582317 lt!582312))) k0!1205))))

(declare-datatypes ((Option!754 0))(
  ( (Some!753 (v!20120 V!51595)) (None!752) )
))
(declare-fun isDefined!506 (Option!754) Bool)

(declare-fun getValueByKey!703 (List!29895 (_ BitVec 64)) Option!754)

(assert (=> b!1302034 (isDefined!506 (getValueByKey!703 (toList!10221 (ite c!124830 lt!582315 (ite c!124831 lt!582317 lt!582312))) k0!1205))))

(declare-fun b!1302035 () Bool)

(declare-fun Unit!43052 () Unit!43046)

(assert (=> b!1302035 (= e!742666 Unit!43052)))

(declare-fun b!1302036 () Bool)

(assert (=> b!1302036 (= e!742667 (isDefined!506 (getValueByKey!703 (toList!10221 (ite c!124830 lt!582315 (ite c!124831 lt!582317 lt!582312))) k0!1205)))))

(assert (= (and d!141321 c!124856) b!1302034))

(assert (= (and d!141321 (not c!124856)) b!1302035))

(assert (= (and d!141321 (not res!864992)) b!1302036))

(declare-fun m!1192891 () Bool)

(assert (=> d!141321 m!1192891))

(declare-fun m!1192893 () Bool)

(assert (=> b!1302034 m!1192893))

(declare-fun m!1192895 () Bool)

(assert (=> b!1302034 m!1192895))

(assert (=> b!1302034 m!1192895))

(declare-fun m!1192897 () Bool)

(assert (=> b!1302034 m!1192897))

(assert (=> b!1302036 m!1192895))

(assert (=> b!1302036 m!1192895))

(assert (=> b!1302036 m!1192897))

(assert (=> bm!64054 d!141321))

(declare-fun d!141323 () Bool)

(assert (=> d!141323 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109940 d!141323))

(declare-fun d!141325 () Bool)

(assert (=> d!141325 (= (array_inv!31653 _values!1445) (bvsge (size!42397 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109940 d!141325))

(declare-fun d!141327 () Bool)

(assert (=> d!141327 (= (array_inv!31654 _keys!1741) (bvsge (size!42396 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109940 d!141327))

(declare-fun d!141329 () Bool)

(declare-fun e!742669 () Bool)

(assert (=> d!141329 e!742669))

(declare-fun res!864993 () Bool)

(assert (=> d!141329 (=> res!864993 e!742669)))

(declare-fun lt!582392 () Bool)

(assert (=> d!141329 (= res!864993 (not lt!582392))))

(declare-fun lt!582394 () Bool)

(assert (=> d!141329 (= lt!582392 lt!582394)))

(declare-fun lt!582391 () Unit!43046)

(declare-fun e!742668 () Unit!43046)

(assert (=> d!141329 (= lt!582391 e!742668)))

(declare-fun c!124857 () Bool)

(assert (=> d!141329 (= c!124857 lt!582394)))

(assert (=> d!141329 (= lt!582394 (containsKey!721 (toList!10221 (getCurrentListMap!5187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141329 (= (contains!8284 (getCurrentListMap!5187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!582392)))

(declare-fun b!1302037 () Bool)

(declare-fun lt!582393 () Unit!43046)

(assert (=> b!1302037 (= e!742668 lt!582393)))

(assert (=> b!1302037 (= lt!582393 (lemmaContainsKeyImpliesGetValueByKeyDefined!466 (toList!10221 (getCurrentListMap!5187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1302037 (isDefined!506 (getValueByKey!703 (toList!10221 (getCurrentListMap!5187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1302038 () Bool)

(declare-fun Unit!43053 () Unit!43046)

(assert (=> b!1302038 (= e!742668 Unit!43053)))

(declare-fun b!1302039 () Bool)

(assert (=> b!1302039 (= e!742669 (isDefined!506 (getValueByKey!703 (toList!10221 (getCurrentListMap!5187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141329 c!124857) b!1302037))

(assert (= (and d!141329 (not c!124857)) b!1302038))

(assert (= (and d!141329 (not res!864993)) b!1302039))

(declare-fun m!1192899 () Bool)

(assert (=> d!141329 m!1192899))

(declare-fun m!1192901 () Bool)

(assert (=> b!1302037 m!1192901))

(declare-fun m!1192903 () Bool)

(assert (=> b!1302037 m!1192903))

(assert (=> b!1302037 m!1192903))

(declare-fun m!1192905 () Bool)

(assert (=> b!1302037 m!1192905))

(assert (=> b!1302039 m!1192903))

(assert (=> b!1302039 m!1192903))

(assert (=> b!1302039 m!1192905))

(assert (=> b!1301928 d!141329))

(declare-fun b!1302082 () Bool)

(declare-fun e!742700 () Bool)

(declare-fun e!742702 () Bool)

(assert (=> b!1302082 (= e!742700 e!742702)))

(declare-fun res!865015 () Bool)

(assert (=> b!1302082 (=> (not res!865015) (not e!742702))))

(declare-fun lt!582443 () ListLongMap!20411)

(assert (=> b!1302082 (= res!865015 (contains!8284 lt!582443 (select (arr!41845 _keys!1741) from!2144)))))

(assert (=> b!1302082 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42396 _keys!1741)))))

(declare-fun b!1302083 () Bool)

(declare-fun e!742707 () Bool)

(assert (=> b!1302083 (= e!742707 (= (apply!1053 lt!582443 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1302084 () Bool)

(declare-fun e!742701 () Bool)

(declare-fun e!742705 () Bool)

(assert (=> b!1302084 (= e!742701 e!742705)))

(declare-fun c!124871 () Bool)

(assert (=> b!1302084 (= c!124871 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1302085 () Bool)

(assert (=> b!1302085 (= e!742702 (= (apply!1053 lt!582443 (select (arr!41845 _keys!1741) from!2144)) (get!21183 (select (arr!41846 _values!1445) from!2144) (dynLambda!3505 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1302085 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42397 _values!1445)))))

(assert (=> b!1302085 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42396 _keys!1741)))))

(declare-fun bm!64095 () Bool)

(declare-fun call!64099 () ListLongMap!20411)

(declare-fun call!64103 () ListLongMap!20411)

(assert (=> bm!64095 (= call!64099 call!64103)))

(declare-fun b!1302086 () Bool)

(declare-fun e!742699 () Bool)

(declare-fun e!742697 () Bool)

(assert (=> b!1302086 (= e!742699 e!742697)))

(declare-fun res!865013 () Bool)

(declare-fun call!64097 () Bool)

(assert (=> b!1302086 (= res!865013 call!64097)))

(assert (=> b!1302086 (=> (not res!865013) (not e!742697))))

(declare-fun b!1302087 () Bool)

(assert (=> b!1302087 (= e!742705 e!742707)))

(declare-fun res!865017 () Bool)

(declare-fun call!64102 () Bool)

(assert (=> b!1302087 (= res!865017 call!64102)))

(assert (=> b!1302087 (=> (not res!865017) (not e!742707))))

(declare-fun bm!64096 () Bool)

(declare-fun call!64100 () ListLongMap!20411)

(declare-fun call!64101 () ListLongMap!20411)

(declare-fun c!124872 () Bool)

(declare-fun c!124874 () Bool)

(assert (=> bm!64096 (= call!64101 (+!4443 (ite c!124874 call!64103 (ite c!124872 call!64099 call!64100)) (ite (or c!124874 c!124872) (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1302088 () Bool)

(declare-fun e!742703 () Bool)

(assert (=> b!1302088 (= e!742703 (validKeyInArray!0 (select (arr!41845 _keys!1741) from!2144)))))

(declare-fun bm!64097 () Bool)

(assert (=> bm!64097 (= call!64100 call!64099)))

(declare-fun b!1302089 () Bool)

(declare-fun c!124873 () Bool)

(assert (=> b!1302089 (= c!124873 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!742696 () ListLongMap!20411)

(declare-fun e!742698 () ListLongMap!20411)

(assert (=> b!1302089 (= e!742696 e!742698)))

(declare-fun bm!64098 () Bool)

(declare-fun call!64098 () ListLongMap!20411)

(assert (=> bm!64098 (= call!64098 call!64101)))

(declare-fun b!1302090 () Bool)

(declare-fun e!742708 () ListLongMap!20411)

(assert (=> b!1302090 (= e!742708 (+!4443 call!64101 (tuple2!22743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1302091 () Bool)

(declare-fun e!742704 () Unit!43046)

(declare-fun lt!582440 () Unit!43046)

(assert (=> b!1302091 (= e!742704 lt!582440)))

(declare-fun lt!582452 () ListLongMap!20411)

(assert (=> b!1302091 (= lt!582452 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582460 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582460 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582456 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582456 (select (arr!41845 _keys!1741) from!2144))))

(declare-fun lt!582448 () Unit!43046)

(declare-fun addStillContains!1122 (ListLongMap!20411 (_ BitVec 64) V!51595 (_ BitVec 64)) Unit!43046)

(assert (=> b!1302091 (= lt!582448 (addStillContains!1122 lt!582452 lt!582460 zeroValue!1387 lt!582456))))

(assert (=> b!1302091 (contains!8284 (+!4443 lt!582452 (tuple2!22743 lt!582460 zeroValue!1387)) lt!582456)))

(declare-fun lt!582458 () Unit!43046)

(assert (=> b!1302091 (= lt!582458 lt!582448)))

(declare-fun lt!582441 () ListLongMap!20411)

(assert (=> b!1302091 (= lt!582441 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582459 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582459 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582446 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582446 (select (arr!41845 _keys!1741) from!2144))))

(declare-fun lt!582445 () Unit!43046)

(declare-fun addApplyDifferent!556 (ListLongMap!20411 (_ BitVec 64) V!51595 (_ BitVec 64)) Unit!43046)

(assert (=> b!1302091 (= lt!582445 (addApplyDifferent!556 lt!582441 lt!582459 minValue!1387 lt!582446))))

(assert (=> b!1302091 (= (apply!1053 (+!4443 lt!582441 (tuple2!22743 lt!582459 minValue!1387)) lt!582446) (apply!1053 lt!582441 lt!582446))))

(declare-fun lt!582447 () Unit!43046)

(assert (=> b!1302091 (= lt!582447 lt!582445)))

(declare-fun lt!582439 () ListLongMap!20411)

(assert (=> b!1302091 (= lt!582439 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582455 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582455 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582457 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582457 (select (arr!41845 _keys!1741) from!2144))))

(declare-fun lt!582454 () Unit!43046)

(assert (=> b!1302091 (= lt!582454 (addApplyDifferent!556 lt!582439 lt!582455 zeroValue!1387 lt!582457))))

(assert (=> b!1302091 (= (apply!1053 (+!4443 lt!582439 (tuple2!22743 lt!582455 zeroValue!1387)) lt!582457) (apply!1053 lt!582439 lt!582457))))

(declare-fun lt!582450 () Unit!43046)

(assert (=> b!1302091 (= lt!582450 lt!582454)))

(declare-fun lt!582453 () ListLongMap!20411)

(assert (=> b!1302091 (= lt!582453 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582444 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582444 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582449 () (_ BitVec 64))

(assert (=> b!1302091 (= lt!582449 (select (arr!41845 _keys!1741) from!2144))))

(assert (=> b!1302091 (= lt!582440 (addApplyDifferent!556 lt!582453 lt!582444 minValue!1387 lt!582449))))

(assert (=> b!1302091 (= (apply!1053 (+!4443 lt!582453 (tuple2!22743 lt!582444 minValue!1387)) lt!582449) (apply!1053 lt!582453 lt!582449))))

(declare-fun b!1302092 () Bool)

(assert (=> b!1302092 (= e!742696 call!64098)))

(declare-fun b!1302093 () Bool)

(declare-fun e!742706 () Bool)

(assert (=> b!1302093 (= e!742706 (validKeyInArray!0 (select (arr!41845 _keys!1741) from!2144)))))

(declare-fun b!1302094 () Bool)

(assert (=> b!1302094 (= e!742698 call!64098)))

(declare-fun b!1302095 () Bool)

(assert (=> b!1302095 (= e!742699 (not call!64097))))

(declare-fun bm!64094 () Bool)

(assert (=> bm!64094 (= call!64097 (contains!8284 lt!582443 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!141331 () Bool)

(assert (=> d!141331 e!742701))

(declare-fun res!865020 () Bool)

(assert (=> d!141331 (=> (not res!865020) (not e!742701))))

(assert (=> d!141331 (= res!865020 (or (bvsge from!2144 (size!42396 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42396 _keys!1741)))))))

(declare-fun lt!582442 () ListLongMap!20411)

(assert (=> d!141331 (= lt!582443 lt!582442)))

(declare-fun lt!582451 () Unit!43046)

(assert (=> d!141331 (= lt!582451 e!742704)))

(declare-fun c!124870 () Bool)

(assert (=> d!141331 (= c!124870 e!742703)))

(declare-fun res!865019 () Bool)

(assert (=> d!141331 (=> (not res!865019) (not e!742703))))

(assert (=> d!141331 (= res!865019 (bvslt from!2144 (size!42396 _keys!1741)))))

(assert (=> d!141331 (= lt!582442 e!742708)))

(assert (=> d!141331 (= c!124874 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141331 (validMask!0 mask!2175)))

(assert (=> d!141331 (= (getCurrentListMap!5187 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!582443)))

(declare-fun b!1302096 () Bool)

(assert (=> b!1302096 (= e!742705 (not call!64102))))

(declare-fun bm!64099 () Bool)

(assert (=> bm!64099 (= call!64102 (contains!8284 lt!582443 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302097 () Bool)

(assert (=> b!1302097 (= e!742697 (= (apply!1053 lt!582443 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1302098 () Bool)

(assert (=> b!1302098 (= e!742698 call!64100)))

(declare-fun b!1302099 () Bool)

(declare-fun Unit!43054 () Unit!43046)

(assert (=> b!1302099 (= e!742704 Unit!43054)))

(declare-fun bm!64100 () Bool)

(assert (=> bm!64100 (= call!64103 (getCurrentListMapNoExtraKeys!6156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1302100 () Bool)

(declare-fun res!865016 () Bool)

(assert (=> b!1302100 (=> (not res!865016) (not e!742701))))

(assert (=> b!1302100 (= res!865016 e!742699)))

(declare-fun c!124875 () Bool)

(assert (=> b!1302100 (= c!124875 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1302101 () Bool)

(declare-fun res!865018 () Bool)

(assert (=> b!1302101 (=> (not res!865018) (not e!742701))))

(assert (=> b!1302101 (= res!865018 e!742700)))

(declare-fun res!865012 () Bool)

(assert (=> b!1302101 (=> res!865012 e!742700)))

(assert (=> b!1302101 (= res!865012 (not e!742706))))

(declare-fun res!865014 () Bool)

(assert (=> b!1302101 (=> (not res!865014) (not e!742706))))

(assert (=> b!1302101 (= res!865014 (bvslt from!2144 (size!42396 _keys!1741)))))

(declare-fun b!1302102 () Bool)

(assert (=> b!1302102 (= e!742708 e!742696)))

(assert (=> b!1302102 (= c!124872 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!141331 c!124874) b!1302090))

(assert (= (and d!141331 (not c!124874)) b!1302102))

(assert (= (and b!1302102 c!124872) b!1302092))

(assert (= (and b!1302102 (not c!124872)) b!1302089))

(assert (= (and b!1302089 c!124873) b!1302094))

(assert (= (and b!1302089 (not c!124873)) b!1302098))

(assert (= (or b!1302094 b!1302098) bm!64097))

(assert (= (or b!1302092 bm!64097) bm!64095))

(assert (= (or b!1302092 b!1302094) bm!64098))

(assert (= (or b!1302090 bm!64095) bm!64100))

(assert (= (or b!1302090 bm!64098) bm!64096))

(assert (= (and d!141331 res!865019) b!1302088))

(assert (= (and d!141331 c!124870) b!1302091))

(assert (= (and d!141331 (not c!124870)) b!1302099))

(assert (= (and d!141331 res!865020) b!1302101))

(assert (= (and b!1302101 res!865014) b!1302093))

(assert (= (and b!1302101 (not res!865012)) b!1302082))

(assert (= (and b!1302082 res!865015) b!1302085))

(assert (= (and b!1302101 res!865018) b!1302100))

(assert (= (and b!1302100 c!124875) b!1302086))

(assert (= (and b!1302100 (not c!124875)) b!1302095))

(assert (= (and b!1302086 res!865013) b!1302097))

(assert (= (or b!1302086 b!1302095) bm!64094))

(assert (= (and b!1302100 res!865016) b!1302084))

(assert (= (and b!1302084 c!124871) b!1302087))

(assert (= (and b!1302084 (not c!124871)) b!1302096))

(assert (= (and b!1302087 res!865017) b!1302083))

(assert (= (or b!1302087 b!1302096) bm!64099))

(declare-fun b_lambda!23233 () Bool)

(assert (=> (not b_lambda!23233) (not b!1302085)))

(assert (=> b!1302085 t!43493))

(declare-fun b_and!47383 () Bool)

(assert (= b_and!47381 (and (=> t!43493 result!23803) b_and!47383)))

(declare-fun m!1192907 () Bool)

(assert (=> b!1302083 m!1192907))

(declare-fun m!1192909 () Bool)

(assert (=> bm!64094 m!1192909))

(assert (=> bm!64100 m!1192789))

(declare-fun m!1192911 () Bool)

(assert (=> b!1302097 m!1192911))

(declare-fun m!1192913 () Bool)

(assert (=> b!1302091 m!1192913))

(declare-fun m!1192915 () Bool)

(assert (=> b!1302091 m!1192915))

(declare-fun m!1192917 () Bool)

(assert (=> b!1302091 m!1192917))

(declare-fun m!1192919 () Bool)

(assert (=> b!1302091 m!1192919))

(declare-fun m!1192921 () Bool)

(assert (=> b!1302091 m!1192921))

(declare-fun m!1192923 () Bool)

(assert (=> b!1302091 m!1192923))

(assert (=> b!1302091 m!1192789))

(declare-fun m!1192925 () Bool)

(assert (=> b!1302091 m!1192925))

(assert (=> b!1302091 m!1192791))

(declare-fun m!1192927 () Bool)

(assert (=> b!1302091 m!1192927))

(declare-fun m!1192929 () Bool)

(assert (=> b!1302091 m!1192929))

(declare-fun m!1192931 () Bool)

(assert (=> b!1302091 m!1192931))

(declare-fun m!1192933 () Bool)

(assert (=> b!1302091 m!1192933))

(declare-fun m!1192935 () Bool)

(assert (=> b!1302091 m!1192935))

(assert (=> b!1302091 m!1192931))

(assert (=> b!1302091 m!1192921))

(declare-fun m!1192937 () Bool)

(assert (=> b!1302091 m!1192937))

(declare-fun m!1192939 () Bool)

(assert (=> b!1302091 m!1192939))

(assert (=> b!1302091 m!1192917))

(assert (=> b!1302091 m!1192927))

(declare-fun m!1192941 () Bool)

(assert (=> b!1302091 m!1192941))

(assert (=> b!1302082 m!1192791))

(assert (=> b!1302082 m!1192791))

(declare-fun m!1192943 () Bool)

(assert (=> b!1302082 m!1192943))

(declare-fun m!1192945 () Bool)

(assert (=> bm!64096 m!1192945))

(declare-fun m!1192947 () Bool)

(assert (=> bm!64099 m!1192947))

(assert (=> d!141331 m!1192813))

(assert (=> b!1302088 m!1192791))

(assert (=> b!1302088 m!1192791))

(assert (=> b!1302088 m!1192793))

(declare-fun m!1192949 () Bool)

(assert (=> b!1302090 m!1192949))

(assert (=> b!1302085 m!1192791))

(declare-fun m!1192951 () Bool)

(assert (=> b!1302085 m!1192951))

(assert (=> b!1302085 m!1192869))

(assert (=> b!1302085 m!1192869))

(assert (=> b!1302085 m!1192867))

(assert (=> b!1302085 m!1192871))

(assert (=> b!1302085 m!1192791))

(assert (=> b!1302085 m!1192867))

(assert (=> b!1302093 m!1192791))

(assert (=> b!1302093 m!1192791))

(assert (=> b!1302093 m!1192793))

(assert (=> b!1301928 d!141331))

(declare-fun b!1302113 () Bool)

(declare-fun e!742720 () Bool)

(declare-fun call!64106 () Bool)

(assert (=> b!1302113 (= e!742720 call!64106)))

(declare-fun b!1302114 () Bool)

(declare-fun e!742718 () Bool)

(declare-fun e!742717 () Bool)

(assert (=> b!1302114 (= e!742718 e!742717)))

(declare-fun res!865029 () Bool)

(assert (=> b!1302114 (=> (not res!865029) (not e!742717))))

(declare-fun e!742719 () Bool)

(assert (=> b!1302114 (= res!865029 (not e!742719))))

(declare-fun res!865027 () Bool)

(assert (=> b!1302114 (=> (not res!865027) (not e!742719))))

(assert (=> b!1302114 (= res!865027 (validKeyInArray!0 (select (arr!41845 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64103 () Bool)

(declare-fun c!124878 () Bool)

(assert (=> bm!64103 (= call!64106 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124878 (Cons!29892 (select (arr!41845 _keys!1741) #b00000000000000000000000000000000) Nil!29893) Nil!29893)))))

(declare-fun b!1302115 () Bool)

(assert (=> b!1302115 (= e!742717 e!742720)))

(assert (=> b!1302115 (= c!124878 (validKeyInArray!0 (select (arr!41845 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141333 () Bool)

(declare-fun res!865028 () Bool)

(assert (=> d!141333 (=> res!865028 e!742718)))

(assert (=> d!141333 (= res!865028 (bvsge #b00000000000000000000000000000000 (size!42396 _keys!1741)))))

(assert (=> d!141333 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29893) e!742718)))

(declare-fun b!1302116 () Bool)

(declare-fun contains!8286 (List!29896 (_ BitVec 64)) Bool)

(assert (=> b!1302116 (= e!742719 (contains!8286 Nil!29893 (select (arr!41845 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302117 () Bool)

(assert (=> b!1302117 (= e!742720 call!64106)))

(assert (= (and d!141333 (not res!865028)) b!1302114))

(assert (= (and b!1302114 res!865027) b!1302116))

(assert (= (and b!1302114 res!865029) b!1302115))

(assert (= (and b!1302115 c!124878) b!1302117))

(assert (= (and b!1302115 (not c!124878)) b!1302113))

(assert (= (or b!1302117 b!1302113) bm!64103))

(declare-fun m!1192953 () Bool)

(assert (=> b!1302114 m!1192953))

(assert (=> b!1302114 m!1192953))

(declare-fun m!1192955 () Bool)

(assert (=> b!1302114 m!1192955))

(assert (=> bm!64103 m!1192953))

(declare-fun m!1192957 () Bool)

(assert (=> bm!64103 m!1192957))

(assert (=> b!1302115 m!1192953))

(assert (=> b!1302115 m!1192953))

(assert (=> b!1302115 m!1192955))

(assert (=> b!1302116 m!1192953))

(assert (=> b!1302116 m!1192953))

(declare-fun m!1192959 () Bool)

(assert (=> b!1302116 m!1192959))

(assert (=> b!1301931 d!141333))

(declare-fun d!141335 () Bool)

(declare-fun e!742722 () Bool)

(assert (=> d!141335 e!742722))

(declare-fun res!865030 () Bool)

(assert (=> d!141335 (=> res!865030 e!742722)))

(declare-fun lt!582462 () Bool)

(assert (=> d!141335 (= res!865030 (not lt!582462))))

(declare-fun lt!582464 () Bool)

(assert (=> d!141335 (= lt!582462 lt!582464)))

(declare-fun lt!582461 () Unit!43046)

(declare-fun e!742721 () Unit!43046)

(assert (=> d!141335 (= lt!582461 e!742721)))

(declare-fun c!124879 () Bool)

(assert (=> d!141335 (= c!124879 lt!582464)))

(assert (=> d!141335 (= lt!582464 (containsKey!721 (toList!10221 (ListLongMap!20412 Nil!29892)) k0!1205))))

(assert (=> d!141335 (= (contains!8284 (ListLongMap!20412 Nil!29892) k0!1205) lt!582462)))

(declare-fun b!1302118 () Bool)

(declare-fun lt!582463 () Unit!43046)

(assert (=> b!1302118 (= e!742721 lt!582463)))

(assert (=> b!1302118 (= lt!582463 (lemmaContainsKeyImpliesGetValueByKeyDefined!466 (toList!10221 (ListLongMap!20412 Nil!29892)) k0!1205))))

(assert (=> b!1302118 (isDefined!506 (getValueByKey!703 (toList!10221 (ListLongMap!20412 Nil!29892)) k0!1205))))

(declare-fun b!1302119 () Bool)

(declare-fun Unit!43055 () Unit!43046)

(assert (=> b!1302119 (= e!742721 Unit!43055)))

(declare-fun b!1302120 () Bool)

(assert (=> b!1302120 (= e!742722 (isDefined!506 (getValueByKey!703 (toList!10221 (ListLongMap!20412 Nil!29892)) k0!1205)))))

(assert (= (and d!141335 c!124879) b!1302118))

(assert (= (and d!141335 (not c!124879)) b!1302119))

(assert (= (and d!141335 (not res!865030)) b!1302120))

(declare-fun m!1192961 () Bool)

(assert (=> d!141335 m!1192961))

(declare-fun m!1192963 () Bool)

(assert (=> b!1302118 m!1192963))

(declare-fun m!1192965 () Bool)

(assert (=> b!1302118 m!1192965))

(assert (=> b!1302118 m!1192965))

(declare-fun m!1192967 () Bool)

(assert (=> b!1302118 m!1192967))

(assert (=> b!1302120 m!1192965))

(assert (=> b!1302120 m!1192965))

(assert (=> b!1302120 m!1192967))

(assert (=> b!1301922 d!141335))

(declare-fun d!141337 () Bool)

(assert (=> d!141337 (not (contains!8284 (ListLongMap!20412 Nil!29892) k0!1205))))

(declare-fun lt!582467 () Unit!43046)

(declare-fun choose!1920 ((_ BitVec 64)) Unit!43046)

(assert (=> d!141337 (= lt!582467 (choose!1920 k0!1205))))

(assert (=> d!141337 (= (emptyContainsNothing!211 k0!1205) lt!582467)))

(declare-fun bs!37074 () Bool)

(assert (= bs!37074 d!141337))

(assert (=> bs!37074 m!1192795))

(declare-fun m!1192969 () Bool)

(assert (=> bs!37074 m!1192969))

(assert (=> b!1301922 d!141337))

(declare-fun d!141339 () Bool)

(declare-fun res!865035 () Bool)

(declare-fun e!742727 () Bool)

(assert (=> d!141339 (=> res!865035 e!742727)))

(assert (=> d!141339 (= res!865035 (= (select (arr!41845 _keys!1741) from!2144) k0!1205))))

(assert (=> d!141339 (= (arrayContainsKey!0 _keys!1741 k0!1205 from!2144) e!742727)))

(declare-fun b!1302125 () Bool)

(declare-fun e!742728 () Bool)

(assert (=> b!1302125 (= e!742727 e!742728)))

(declare-fun res!865036 () Bool)

(assert (=> b!1302125 (=> (not res!865036) (not e!742728))))

(assert (=> b!1302125 (= res!865036 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42396 _keys!1741)))))

(declare-fun b!1302126 () Bool)

(assert (=> b!1302126 (= e!742728 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd from!2144 #b00000000000000000000000000000001)))))

(assert (= (and d!141339 (not res!865035)) b!1302125))

(assert (= (and b!1302125 res!865036) b!1302126))

(assert (=> d!141339 m!1192791))

(declare-fun m!1192971 () Bool)

(assert (=> b!1302126 m!1192971))

(assert (=> b!1301918 d!141339))

(declare-fun d!141341 () Bool)

(declare-fun e!742731 () Bool)

(assert (=> d!141341 e!742731))

(declare-fun res!865042 () Bool)

(assert (=> d!141341 (=> (not res!865042) (not e!742731))))

(declare-fun lt!582477 () ListLongMap!20411)

(assert (=> d!141341 (= res!865042 (contains!8284 lt!582477 (_1!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!582478 () List!29895)

(assert (=> d!141341 (= lt!582477 (ListLongMap!20412 lt!582478))))

(declare-fun lt!582479 () Unit!43046)

(declare-fun lt!582476 () Unit!43046)

(assert (=> d!141341 (= lt!582479 lt!582476)))

(assert (=> d!141341 (= (getValueByKey!703 lt!582478 (_1!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!753 (_2!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!347 (List!29895 (_ BitVec 64) V!51595) Unit!43046)

(assert (=> d!141341 (= lt!582476 (lemmaContainsTupThenGetReturnValue!347 lt!582478 (_1!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun insertStrictlySorted!476 (List!29895 (_ BitVec 64) V!51595) List!29895)

(assert (=> d!141341 (= lt!582478 (insertStrictlySorted!476 (toList!10221 lt!582320) (_1!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141341 (= (+!4443 lt!582320 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!582477)))

(declare-fun b!1302131 () Bool)

(declare-fun res!865041 () Bool)

(assert (=> b!1302131 (=> (not res!865041) (not e!742731))))

(assert (=> b!1302131 (= res!865041 (= (getValueByKey!703 (toList!10221 lt!582477) (_1!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!753 (_2!11381 (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1302132 () Bool)

(declare-fun contains!8287 (List!29895 tuple2!22742) Bool)

(assert (=> b!1302132 (= e!742731 (contains!8287 (toList!10221 lt!582477) (tuple2!22743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141341 res!865042) b!1302131))

(assert (= (and b!1302131 res!865041) b!1302132))

(declare-fun m!1192973 () Bool)

(assert (=> d!141341 m!1192973))

(declare-fun m!1192975 () Bool)

(assert (=> d!141341 m!1192975))

(declare-fun m!1192977 () Bool)

(assert (=> d!141341 m!1192977))

(declare-fun m!1192979 () Bool)

(assert (=> d!141341 m!1192979))

(declare-fun m!1192981 () Bool)

(assert (=> b!1302131 m!1192981))

(declare-fun m!1192983 () Bool)

(assert (=> b!1302132 m!1192983))

(assert (=> b!1301932 d!141341))

(declare-fun d!141343 () Bool)

(assert (=> d!141343 (contains!8284 lt!582315 k0!1205)))

(declare-fun lt!582480 () Unit!43046)

(assert (=> d!141343 (= lt!582480 (choose!1919 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!582315))))

(assert (=> d!141343 (contains!8284 (+!4443 lt!582315 (tuple2!22743 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205)))

(assert (=> d!141343 (= (lemmaInListMapAfterAddingDiffThenInBefore!83 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!582315) lt!582480)))

(declare-fun bs!37075 () Bool)

(assert (= bs!37075 d!141343))

(declare-fun m!1192985 () Bool)

(assert (=> bs!37075 m!1192985))

(declare-fun m!1192987 () Bool)

(assert (=> bs!37075 m!1192987))

(declare-fun m!1192989 () Bool)

(assert (=> bs!37075 m!1192989))

(assert (=> bs!37075 m!1192989))

(declare-fun m!1192991 () Bool)

(assert (=> bs!37075 m!1192991))

(assert (=> b!1301932 d!141343))

(declare-fun d!141345 () Bool)

(declare-fun e!742733 () Bool)

(assert (=> d!141345 e!742733))

(declare-fun res!865043 () Bool)

(assert (=> d!141345 (=> res!865043 e!742733)))

(declare-fun lt!582482 () Bool)

(assert (=> d!141345 (= res!865043 (not lt!582482))))

(declare-fun lt!582484 () Bool)

(assert (=> d!141345 (= lt!582482 lt!582484)))

(declare-fun lt!582481 () Unit!43046)

(declare-fun e!742732 () Unit!43046)

(assert (=> d!141345 (= lt!582481 e!742732)))

(declare-fun c!124880 () Bool)

(assert (=> d!141345 (= c!124880 lt!582484)))

(assert (=> d!141345 (= lt!582484 (containsKey!721 (toList!10221 lt!582320) k0!1205))))

(assert (=> d!141345 (= (contains!8284 lt!582320 k0!1205) lt!582482)))

(declare-fun b!1302133 () Bool)

(declare-fun lt!582483 () Unit!43046)

(assert (=> b!1302133 (= e!742732 lt!582483)))

(assert (=> b!1302133 (= lt!582483 (lemmaContainsKeyImpliesGetValueByKeyDefined!466 (toList!10221 lt!582320) k0!1205))))

(assert (=> b!1302133 (isDefined!506 (getValueByKey!703 (toList!10221 lt!582320) k0!1205))))

(declare-fun b!1302134 () Bool)

(declare-fun Unit!43056 () Unit!43046)

(assert (=> b!1302134 (= e!742732 Unit!43056)))

(declare-fun b!1302135 () Bool)

(assert (=> b!1302135 (= e!742733 (isDefined!506 (getValueByKey!703 (toList!10221 lt!582320) k0!1205)))))

(assert (= (and d!141345 c!124880) b!1302133))

(assert (= (and d!141345 (not c!124880)) b!1302134))

(assert (= (and d!141345 (not res!865043)) b!1302135))

(declare-fun m!1192993 () Bool)

(assert (=> d!141345 m!1192993))

(declare-fun m!1192995 () Bool)

(assert (=> b!1302133 m!1192995))

(declare-fun m!1192997 () Bool)

(assert (=> b!1302133 m!1192997))

(assert (=> b!1302133 m!1192997))

(declare-fun m!1192999 () Bool)

(assert (=> b!1302133 m!1192999))

(assert (=> b!1302135 m!1192997))

(assert (=> b!1302135 m!1192997))

(assert (=> b!1302135 m!1192999))

(assert (=> b!1301932 d!141345))

(declare-fun b!1302144 () Bool)

(declare-fun e!742741 () Bool)

(declare-fun e!742742 () Bool)

(assert (=> b!1302144 (= e!742741 e!742742)))

(declare-fun c!124883 () Bool)

(assert (=> b!1302144 (= c!124883 (validKeyInArray!0 (select (arr!41845 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64106 () Bool)

(declare-fun call!64109 () Bool)

(assert (=> bm!64106 (= call!64109 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1302145 () Bool)

(declare-fun e!742740 () Bool)

(assert (=> b!1302145 (= e!742742 e!742740)))

(declare-fun lt!582491 () (_ BitVec 64))

(assert (=> b!1302145 (= lt!582491 (select (arr!41845 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!582493 () Unit!43046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86709 (_ BitVec 64) (_ BitVec 32)) Unit!43046)

(assert (=> b!1302145 (= lt!582493 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!582491 #b00000000000000000000000000000000))))

(assert (=> b!1302145 (arrayContainsKey!0 _keys!1741 lt!582491 #b00000000000000000000000000000000)))

(declare-fun lt!582492 () Unit!43046)

(assert (=> b!1302145 (= lt!582492 lt!582493)))

(declare-fun res!865049 () Bool)

(declare-datatypes ((SeekEntryResult!10018 0))(
  ( (MissingZero!10018 (index!42442 (_ BitVec 32))) (Found!10018 (index!42443 (_ BitVec 32))) (Intermediate!10018 (undefined!10830 Bool) (index!42444 (_ BitVec 32)) (x!115643 (_ BitVec 32))) (Undefined!10018) (MissingVacant!10018 (index!42445 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86709 (_ BitVec 32)) SeekEntryResult!10018)

(assert (=> b!1302145 (= res!865049 (= (seekEntryOrOpen!0 (select (arr!41845 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10018 #b00000000000000000000000000000000)))))

(assert (=> b!1302145 (=> (not res!865049) (not e!742740))))

(declare-fun d!141347 () Bool)

(declare-fun res!865048 () Bool)

(assert (=> d!141347 (=> res!865048 e!742741)))

(assert (=> d!141347 (= res!865048 (bvsge #b00000000000000000000000000000000 (size!42396 _keys!1741)))))

(assert (=> d!141347 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!742741)))

(declare-fun b!1302146 () Bool)

(assert (=> b!1302146 (= e!742742 call!64109)))

(declare-fun b!1302147 () Bool)

(assert (=> b!1302147 (= e!742740 call!64109)))

(assert (= (and d!141347 (not res!865048)) b!1302144))

(assert (= (and b!1302144 c!124883) b!1302145))

(assert (= (and b!1302144 (not c!124883)) b!1302146))

(assert (= (and b!1302145 res!865049) b!1302147))

(assert (= (or b!1302147 b!1302146) bm!64106))

(assert (=> b!1302144 m!1192953))

(assert (=> b!1302144 m!1192953))

(assert (=> b!1302144 m!1192955))

(declare-fun m!1193001 () Bool)

(assert (=> bm!64106 m!1193001))

(assert (=> b!1302145 m!1192953))

(declare-fun m!1193003 () Bool)

(assert (=> b!1302145 m!1193003))

(declare-fun m!1193005 () Bool)

(assert (=> b!1302145 m!1193005))

(assert (=> b!1302145 m!1192953))

(declare-fun m!1193007 () Bool)

(assert (=> b!1302145 m!1193007))

(assert (=> b!1301933 d!141347))

(declare-fun b!1302155 () Bool)

(declare-fun e!742747 () Bool)

(assert (=> b!1302155 (= e!742747 tp_is_empty!34869)))

(declare-fun mapIsEmpty!53889 () Bool)

(declare-fun mapRes!53889 () Bool)

(assert (=> mapIsEmpty!53889 mapRes!53889))

(declare-fun mapNonEmpty!53889 () Bool)

(declare-fun tp!102835 () Bool)

(declare-fun e!742748 () Bool)

(assert (=> mapNonEmpty!53889 (= mapRes!53889 (and tp!102835 e!742748))))

(declare-fun mapRest!53889 () (Array (_ BitVec 32) ValueCell!16536))

(declare-fun mapValue!53889 () ValueCell!16536)

(declare-fun mapKey!53889 () (_ BitVec 32))

(assert (=> mapNonEmpty!53889 (= mapRest!53883 (store mapRest!53889 mapKey!53889 mapValue!53889))))

(declare-fun b!1302154 () Bool)

(assert (=> b!1302154 (= e!742748 tp_is_empty!34869)))

(declare-fun condMapEmpty!53889 () Bool)

(declare-fun mapDefault!53889 () ValueCell!16536)

(assert (=> mapNonEmpty!53883 (= condMapEmpty!53889 (= mapRest!53883 ((as const (Array (_ BitVec 32) ValueCell!16536)) mapDefault!53889)))))

(assert (=> mapNonEmpty!53883 (= tp!102826 (and e!742747 mapRes!53889))))

(assert (= (and mapNonEmpty!53883 condMapEmpty!53889) mapIsEmpty!53889))

(assert (= (and mapNonEmpty!53883 (not condMapEmpty!53889)) mapNonEmpty!53889))

(assert (= (and mapNonEmpty!53889 ((_ is ValueCellFull!16536) mapValue!53889)) b!1302154))

(assert (= (and mapNonEmpty!53883 ((_ is ValueCellFull!16536) mapDefault!53889)) b!1302155))

(declare-fun m!1193009 () Bool)

(assert (=> mapNonEmpty!53889 m!1193009))

(declare-fun b_lambda!23235 () Bool)

(assert (= b_lambda!23229 (or (and start!109940 b_free!29229) b_lambda!23235)))

(declare-fun b_lambda!23237 () Bool)

(assert (= b_lambda!23231 (or (and start!109940 b_free!29229) b_lambda!23237)))

(declare-fun b_lambda!23239 () Bool)

(assert (= b_lambda!23233 (or (and start!109940 b_free!29229) b_lambda!23239)))

(check-sat (not b!1302039) (not b!1302085) (not b!1302036) (not d!141341) (not b!1302114) (not mapNonEmpty!53889) (not b!1302091) (not b!1302014) (not b!1302145) (not bm!64094) (not b!1302034) (not b!1302090) (not d!141317) (not b!1302015) (not b_lambda!23237) (not bm!64103) (not b!1302126) (not b!1302021) (not b!1302144) (not b!1302082) (not b_next!29229) (not bm!64100) (not d!141331) (not bm!64099) (not b_lambda!23235) (not b!1302024) (not b!1302135) (not d!141315) (not b!1302133) (not b!1302016) (not d!141329) (not d!141337) (not b!1302116) (not b!1302093) (not b!1302115) (not b!1302131) (not d!141335) (not b_lambda!23239) b_and!47383 (not b!1302083) (not bm!64079) (not b!1302037) (not b!1302120) (not bm!64096) (not d!141343) (not b!1302020) (not d!141321) (not d!141345) (not b!1302022) (not b!1302025) (not b!1302132) (not b!1302118) (not bm!64106) (not b!1302088) (not b!1302097) tp_is_empty!34869)
(check-sat b_and!47383 (not b_next!29229))
