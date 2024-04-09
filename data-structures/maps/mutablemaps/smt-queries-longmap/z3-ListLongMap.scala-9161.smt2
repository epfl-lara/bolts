; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110030 () Bool)

(assert start!110030)

(declare-fun b_free!29241 () Bool)

(declare-fun b_next!29241 () Bool)

(assert (=> start!110030 (= b_free!29241 (not b_next!29241))))

(declare-fun tp!102869 () Bool)

(declare-fun b_and!47403 () Bool)

(assert (=> start!110030 (= tp!102869 b_and!47403)))

(declare-fun b!1302638 () Bool)

(declare-fun res!865323 () Bool)

(declare-fun e!743047 () Bool)

(assert (=> b!1302638 (=> (not res!865323) (not e!743047))))

(declare-datatypes ((array!86735 0))(
  ( (array!86736 (arr!41856 (Array (_ BitVec 32) (_ BitVec 64))) (size!42407 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86735)

(declare-datatypes ((List!29903 0))(
  ( (Nil!29900) (Cons!29899 (h!31108 (_ BitVec 64)) (t!43500 List!29903)) )
))
(declare-fun arrayNoDuplicates!0 (array!86735 (_ BitVec 32) List!29903) Bool)

(assert (=> b!1302638 (= res!865323 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29900))))

(declare-fun b!1302639 () Bool)

(declare-fun e!743045 () Bool)

(declare-fun e!743043 () Bool)

(declare-fun mapRes!53908 () Bool)

(assert (=> b!1302639 (= e!743045 (and e!743043 mapRes!53908))))

(declare-fun condMapEmpty!53908 () Bool)

(declare-datatypes ((V!51611 0))(
  ( (V!51612 (val!17515 Int)) )
))
(declare-datatypes ((ValueCell!16542 0))(
  ( (ValueCellFull!16542 (v!20127 V!51611)) (EmptyCell!16542) )
))
(declare-datatypes ((array!86737 0))(
  ( (array!86738 (arr!41857 (Array (_ BitVec 32) ValueCell!16542)) (size!42408 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86737)

(declare-fun mapDefault!53908 () ValueCell!16542)

(assert (=> b!1302639 (= condMapEmpty!53908 (= (arr!41857 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16542)) mapDefault!53908)))))

(declare-fun b!1302640 () Bool)

(declare-fun tp_is_empty!34881 () Bool)

(assert (=> b!1302640 (= e!743043 tp_is_empty!34881)))

(declare-fun b!1302641 () Bool)

(declare-fun e!743044 () Bool)

(assert (=> b!1302641 (= e!743044 tp_is_empty!34881)))

(declare-fun res!865321 () Bool)

(assert (=> start!110030 (=> (not res!865321) (not e!743047))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110030 (= res!865321 (validMask!0 mask!2175))))

(assert (=> start!110030 e!743047))

(assert (=> start!110030 tp_is_empty!34881))

(assert (=> start!110030 true))

(declare-fun array_inv!31659 (array!86737) Bool)

(assert (=> start!110030 (and (array_inv!31659 _values!1445) e!743045)))

(declare-fun array_inv!31660 (array!86735) Bool)

(assert (=> start!110030 (array_inv!31660 _keys!1741)))

(assert (=> start!110030 tp!102869))

(declare-fun b!1302642 () Bool)

(declare-fun res!865327 () Bool)

(assert (=> b!1302642 (=> (not res!865327) (not e!743047))))

(declare-fun minValue!1387 () V!51611)

(declare-fun zeroValue!1387 () V!51611)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22750 0))(
  ( (tuple2!22751 (_1!11385 (_ BitVec 64)) (_2!11385 V!51611)) )
))
(declare-datatypes ((List!29904 0))(
  ( (Nil!29901) (Cons!29900 (h!31109 tuple2!22750) (t!43501 List!29904)) )
))
(declare-datatypes ((ListLongMap!20419 0))(
  ( (ListLongMap!20420 (toList!10225 List!29904)) )
))
(declare-fun contains!8292 (ListLongMap!20419 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5190 (array!86735 array!86737 (_ BitVec 32) (_ BitVec 32) V!51611 V!51611 (_ BitVec 32) Int) ListLongMap!20419)

(assert (=> b!1302642 (= res!865327 (contains!8292 (getCurrentListMap!5190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1302643 () Bool)

(declare-fun e!743046 () Bool)

(assert (=> b!1302643 (= e!743046 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(declare-fun b!1302644 () Bool)

(declare-fun res!865325 () Bool)

(assert (=> b!1302644 (=> (not res!865325) (not e!743047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86735 (_ BitVec 32)) Bool)

(assert (=> b!1302644 (= res!865325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1302645 () Bool)

(declare-fun e!743049 () Bool)

(assert (=> b!1302645 (= e!743047 (not e!743049))))

(declare-fun res!865326 () Bool)

(assert (=> b!1302645 (=> res!865326 e!743049)))

(assert (=> b!1302645 (= res!865326 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1302645 (not (contains!8292 (ListLongMap!20420 Nil!29901) k0!1205))))

(declare-datatypes ((Unit!43071 0))(
  ( (Unit!43072) )
))
(declare-fun lt!582752 () Unit!43071)

(declare-fun emptyContainsNothing!213 ((_ BitVec 64)) Unit!43071)

(assert (=> b!1302645 (= lt!582752 (emptyContainsNothing!213 k0!1205))))

(declare-fun b!1302646 () Bool)

(declare-fun res!865329 () Bool)

(assert (=> b!1302646 (=> (not res!865329) (not e!743047))))

(assert (=> b!1302646 (= res!865329 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42407 _keys!1741))))))

(declare-fun mapIsEmpty!53908 () Bool)

(assert (=> mapIsEmpty!53908 mapRes!53908))

(declare-fun mapNonEmpty!53908 () Bool)

(declare-fun tp!102868 () Bool)

(assert (=> mapNonEmpty!53908 (= mapRes!53908 (and tp!102868 e!743044))))

(declare-fun mapValue!53908 () ValueCell!16542)

(declare-fun mapRest!53908 () (Array (_ BitVec 32) ValueCell!16542))

(declare-fun mapKey!53908 () (_ BitVec 32))

(assert (=> mapNonEmpty!53908 (= (arr!41857 _values!1445) (store mapRest!53908 mapKey!53908 mapValue!53908))))

(declare-fun b!1302647 () Bool)

(declare-fun res!865324 () Bool)

(assert (=> b!1302647 (=> (not res!865324) (not e!743047))))

(assert (=> b!1302647 (= res!865324 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42407 _keys!1741))))))

(declare-fun b!1302648 () Bool)

(declare-fun res!865330 () Bool)

(assert (=> b!1302648 (=> (not res!865330) (not e!743047))))

(assert (=> b!1302648 (= res!865330 (and (= (size!42408 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42407 _keys!1741) (size!42408 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1302649 () Bool)

(assert (=> b!1302649 (= e!743049 e!743046)))

(declare-fun res!865322 () Bool)

(assert (=> b!1302649 (=> (not res!865322) (not e!743046))))

(declare-fun lt!582750 () ListLongMap!20419)

(assert (=> b!1302649 (= res!865322 (not (contains!8292 lt!582750 k0!1205)))))

(declare-fun +!4446 (ListLongMap!20419 tuple2!22750) ListLongMap!20419)

(assert (=> b!1302649 (not (contains!8292 (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!582751 () Unit!43071)

(declare-fun addStillNotContains!470 (ListLongMap!20419 (_ BitVec 64) V!51611 (_ BitVec 64)) Unit!43071)

(assert (=> b!1302649 (= lt!582751 (addStillNotContains!470 lt!582750 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6160 (array!86735 array!86737 (_ BitVec 32) (_ BitVec 32) V!51611 V!51611 (_ BitVec 32) Int) ListLongMap!20419)

(assert (=> b!1302649 (= lt!582750 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1302650 () Bool)

(declare-fun res!865328 () Bool)

(assert (=> b!1302650 (=> (not res!865328) (not e!743047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1302650 (= res!865328 (not (validKeyInArray!0 (select (arr!41856 _keys!1741) from!2144))))))

(assert (= (and start!110030 res!865321) b!1302648))

(assert (= (and b!1302648 res!865330) b!1302644))

(assert (= (and b!1302644 res!865325) b!1302638))

(assert (= (and b!1302638 res!865323) b!1302647))

(assert (= (and b!1302647 res!865324) b!1302642))

(assert (= (and b!1302642 res!865327) b!1302646))

(assert (= (and b!1302646 res!865329) b!1302650))

(assert (= (and b!1302650 res!865328) b!1302645))

(assert (= (and b!1302645 (not res!865326)) b!1302649))

(assert (= (and b!1302649 res!865322) b!1302643))

(assert (= (and b!1302639 condMapEmpty!53908) mapIsEmpty!53908))

(assert (= (and b!1302639 (not condMapEmpty!53908)) mapNonEmpty!53908))

(get-info :version)

(assert (= (and mapNonEmpty!53908 ((_ is ValueCellFull!16542) mapValue!53908)) b!1302641))

(assert (= (and b!1302639 ((_ is ValueCellFull!16542) mapDefault!53908)) b!1302640))

(assert (= start!110030 b!1302639))

(declare-fun m!1193563 () Bool)

(assert (=> start!110030 m!1193563))

(declare-fun m!1193565 () Bool)

(assert (=> start!110030 m!1193565))

(declare-fun m!1193567 () Bool)

(assert (=> start!110030 m!1193567))

(declare-fun m!1193569 () Bool)

(assert (=> mapNonEmpty!53908 m!1193569))

(declare-fun m!1193571 () Bool)

(assert (=> b!1302642 m!1193571))

(assert (=> b!1302642 m!1193571))

(declare-fun m!1193573 () Bool)

(assert (=> b!1302642 m!1193573))

(declare-fun m!1193575 () Bool)

(assert (=> b!1302650 m!1193575))

(assert (=> b!1302650 m!1193575))

(declare-fun m!1193577 () Bool)

(assert (=> b!1302650 m!1193577))

(declare-fun m!1193579 () Bool)

(assert (=> b!1302645 m!1193579))

(declare-fun m!1193581 () Bool)

(assert (=> b!1302645 m!1193581))

(declare-fun m!1193583 () Bool)

(assert (=> b!1302638 m!1193583))

(declare-fun m!1193585 () Bool)

(assert (=> b!1302644 m!1193585))

(declare-fun m!1193587 () Bool)

(assert (=> b!1302649 m!1193587))

(declare-fun m!1193589 () Bool)

(assert (=> b!1302649 m!1193589))

(assert (=> b!1302649 m!1193589))

(declare-fun m!1193591 () Bool)

(assert (=> b!1302649 m!1193591))

(declare-fun m!1193593 () Bool)

(assert (=> b!1302649 m!1193593))

(declare-fun m!1193595 () Bool)

(assert (=> b!1302649 m!1193595))

(check-sat (not b!1302642) (not b!1302650) (not mapNonEmpty!53908) (not b!1302649) (not start!110030) (not b!1302645) (not b!1302644) (not b!1302638) (not b_next!29241) b_and!47403 tp_is_empty!34881)
(check-sat b_and!47403 (not b_next!29241))
(get-model)

(declare-fun d!141485 () Bool)

(declare-fun e!743076 () Bool)

(assert (=> d!141485 e!743076))

(declare-fun res!865363 () Bool)

(assert (=> d!141485 (=> res!865363 e!743076)))

(declare-fun lt!582772 () Bool)

(assert (=> d!141485 (= res!865363 (not lt!582772))))

(declare-fun lt!582771 () Bool)

(assert (=> d!141485 (= lt!582772 lt!582771)))

(declare-fun lt!582770 () Unit!43071)

(declare-fun e!743075 () Unit!43071)

(assert (=> d!141485 (= lt!582770 e!743075)))

(declare-fun c!124963 () Bool)

(assert (=> d!141485 (= c!124963 lt!582771)))

(declare-fun containsKey!723 (List!29904 (_ BitVec 64)) Bool)

(assert (=> d!141485 (= lt!582771 (containsKey!723 (toList!10225 (getCurrentListMap!5190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141485 (= (contains!8292 (getCurrentListMap!5190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!582772)))

(declare-fun b!1302696 () Bool)

(declare-fun lt!582773 () Unit!43071)

(assert (=> b!1302696 (= e!743075 lt!582773)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!468 (List!29904 (_ BitVec 64)) Unit!43071)

(assert (=> b!1302696 (= lt!582773 (lemmaContainsKeyImpliesGetValueByKeyDefined!468 (toList!10225 (getCurrentListMap!5190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!756 0))(
  ( (Some!755 (v!20129 V!51611)) (None!754) )
))
(declare-fun isDefined!508 (Option!756) Bool)

(declare-fun getValueByKey!705 (List!29904 (_ BitVec 64)) Option!756)

(assert (=> b!1302696 (isDefined!508 (getValueByKey!705 (toList!10225 (getCurrentListMap!5190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1302697 () Bool)

(declare-fun Unit!43075 () Unit!43071)

(assert (=> b!1302697 (= e!743075 Unit!43075)))

(declare-fun b!1302698 () Bool)

(assert (=> b!1302698 (= e!743076 (isDefined!508 (getValueByKey!705 (toList!10225 (getCurrentListMap!5190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141485 c!124963) b!1302696))

(assert (= (and d!141485 (not c!124963)) b!1302697))

(assert (= (and d!141485 (not res!865363)) b!1302698))

(declare-fun m!1193631 () Bool)

(assert (=> d!141485 m!1193631))

(declare-fun m!1193633 () Bool)

(assert (=> b!1302696 m!1193633))

(declare-fun m!1193635 () Bool)

(assert (=> b!1302696 m!1193635))

(assert (=> b!1302696 m!1193635))

(declare-fun m!1193637 () Bool)

(assert (=> b!1302696 m!1193637))

(assert (=> b!1302698 m!1193635))

(assert (=> b!1302698 m!1193635))

(assert (=> b!1302698 m!1193637))

(assert (=> b!1302642 d!141485))

(declare-fun b!1302741 () Bool)

(declare-fun e!743104 () Bool)

(declare-fun e!743103 () Bool)

(assert (=> b!1302741 (= e!743104 e!743103)))

(declare-fun c!124976 () Bool)

(assert (=> b!1302741 (= c!124976 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1302742 () Bool)

(declare-fun e!743111 () Bool)

(assert (=> b!1302742 (= e!743111 (validKeyInArray!0 (select (arr!41856 _keys!1741) from!2144)))))

(declare-fun call!64159 () ListLongMap!20419)

(declare-fun bm!64154 () Bool)

(assert (=> bm!64154 (= call!64159 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun e!743108 () Bool)

(declare-fun lt!582829 () ListLongMap!20419)

(declare-fun b!1302743 () Bool)

(declare-fun apply!1055 (ListLongMap!20419 (_ BitVec 64)) V!51611)

(declare-fun get!21192 (ValueCell!16542 V!51611) V!51611)

(declare-fun dynLambda!3507 (Int (_ BitVec 64)) V!51611)

(assert (=> b!1302743 (= e!743108 (= (apply!1055 lt!582829 (select (arr!41856 _keys!1741) from!2144)) (get!21192 (select (arr!41857 _values!1445) from!2144) (dynLambda!3507 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1302743 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42408 _values!1445)))))

(assert (=> b!1302743 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42407 _keys!1741)))))

(declare-fun bm!64155 () Bool)

(declare-fun call!64162 () Bool)

(assert (=> bm!64155 (= call!64162 (contains!8292 lt!582829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1302744 () Bool)

(declare-fun e!743109 () Bool)

(assert (=> b!1302744 (= e!743109 (= (apply!1055 lt!582829 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun call!64161 () ListLongMap!20419)

(declare-fun c!124980 () Bool)

(declare-fun c!124979 () Bool)

(declare-fun bm!64156 () Bool)

(declare-fun call!64163 () ListLongMap!20419)

(declare-fun call!64158 () ListLongMap!20419)

(assert (=> bm!64156 (= call!64163 (+!4446 (ite c!124980 call!64159 (ite c!124979 call!64158 call!64161)) (ite (or c!124980 c!124979) (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22751 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1302745 () Bool)

(assert (=> b!1302745 (= e!743103 e!743109)))

(declare-fun res!865384 () Bool)

(declare-fun call!64157 () Bool)

(assert (=> b!1302745 (= res!865384 call!64157)))

(assert (=> b!1302745 (=> (not res!865384) (not e!743109))))

(declare-fun b!1302746 () Bool)

(declare-fun res!865382 () Bool)

(assert (=> b!1302746 (=> (not res!865382) (not e!743104))))

(declare-fun e!743112 () Bool)

(assert (=> b!1302746 (= res!865382 e!743112)))

(declare-fun res!865383 () Bool)

(assert (=> b!1302746 (=> res!865383 e!743112)))

(assert (=> b!1302746 (= res!865383 (not e!743111))))

(declare-fun res!865385 () Bool)

(assert (=> b!1302746 (=> (not res!865385) (not e!743111))))

(assert (=> b!1302746 (= res!865385 (bvslt from!2144 (size!42407 _keys!1741)))))

(declare-fun d!141487 () Bool)

(assert (=> d!141487 e!743104))

(declare-fun res!865388 () Bool)

(assert (=> d!141487 (=> (not res!865388) (not e!743104))))

(assert (=> d!141487 (= res!865388 (or (bvsge from!2144 (size!42407 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42407 _keys!1741)))))))

(declare-fun lt!582823 () ListLongMap!20419)

(assert (=> d!141487 (= lt!582829 lt!582823)))

(declare-fun lt!582824 () Unit!43071)

(declare-fun e!743107 () Unit!43071)

(assert (=> d!141487 (= lt!582824 e!743107)))

(declare-fun c!124977 () Bool)

(declare-fun e!743106 () Bool)

(assert (=> d!141487 (= c!124977 e!743106)))

(declare-fun res!865387 () Bool)

(assert (=> d!141487 (=> (not res!865387) (not e!743106))))

(assert (=> d!141487 (= res!865387 (bvslt from!2144 (size!42407 _keys!1741)))))

(declare-fun e!743115 () ListLongMap!20419)

(assert (=> d!141487 (= lt!582823 e!743115)))

(assert (=> d!141487 (= c!124980 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141487 (validMask!0 mask!2175)))

(assert (=> d!141487 (= (getCurrentListMap!5190 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!582829)))

(declare-fun b!1302747 () Bool)

(declare-fun c!124978 () Bool)

(assert (=> b!1302747 (= c!124978 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!743114 () ListLongMap!20419)

(declare-fun e!743110 () ListLongMap!20419)

(assert (=> b!1302747 (= e!743114 e!743110)))

(declare-fun b!1302748 () Bool)

(declare-fun call!64160 () ListLongMap!20419)

(assert (=> b!1302748 (= e!743114 call!64160)))

(declare-fun b!1302749 () Bool)

(declare-fun e!743113 () Bool)

(assert (=> b!1302749 (= e!743113 (not call!64162))))

(declare-fun b!1302750 () Bool)

(assert (=> b!1302750 (= e!743110 call!64161)))

(declare-fun b!1302751 () Bool)

(assert (=> b!1302751 (= e!743103 (not call!64157))))

(declare-fun b!1302752 () Bool)

(declare-fun e!743105 () Bool)

(assert (=> b!1302752 (= e!743105 (= (apply!1055 lt!582829 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1302753 () Bool)

(assert (=> b!1302753 (= e!743115 (+!4446 call!64163 (tuple2!22751 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1302754 () Bool)

(assert (=> b!1302754 (= e!743110 call!64160)))

(declare-fun b!1302755 () Bool)

(declare-fun res!865390 () Bool)

(assert (=> b!1302755 (=> (not res!865390) (not e!743104))))

(assert (=> b!1302755 (= res!865390 e!743113)))

(declare-fun c!124981 () Bool)

(assert (=> b!1302755 (= c!124981 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1302756 () Bool)

(assert (=> b!1302756 (= e!743106 (validKeyInArray!0 (select (arr!41856 _keys!1741) from!2144)))))

(declare-fun b!1302757 () Bool)

(declare-fun Unit!43076 () Unit!43071)

(assert (=> b!1302757 (= e!743107 Unit!43076)))

(declare-fun bm!64157 () Bool)

(assert (=> bm!64157 (= call!64161 call!64158)))

(declare-fun bm!64158 () Bool)

(assert (=> bm!64158 (= call!64157 (contains!8292 lt!582829 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64159 () Bool)

(assert (=> bm!64159 (= call!64160 call!64163)))

(declare-fun b!1302758 () Bool)

(declare-fun lt!582833 () Unit!43071)

(assert (=> b!1302758 (= e!743107 lt!582833)))

(declare-fun lt!582822 () ListLongMap!20419)

(assert (=> b!1302758 (= lt!582822 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582831 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582831 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582837 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582837 (select (arr!41856 _keys!1741) from!2144))))

(declare-fun lt!582830 () Unit!43071)

(declare-fun addStillContains!1124 (ListLongMap!20419 (_ BitVec 64) V!51611 (_ BitVec 64)) Unit!43071)

(assert (=> b!1302758 (= lt!582830 (addStillContains!1124 lt!582822 lt!582831 zeroValue!1387 lt!582837))))

(assert (=> b!1302758 (contains!8292 (+!4446 lt!582822 (tuple2!22751 lt!582831 zeroValue!1387)) lt!582837)))

(declare-fun lt!582821 () Unit!43071)

(assert (=> b!1302758 (= lt!582821 lt!582830)))

(declare-fun lt!582839 () ListLongMap!20419)

(assert (=> b!1302758 (= lt!582839 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582818 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582818 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582827 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582827 (select (arr!41856 _keys!1741) from!2144))))

(declare-fun lt!582835 () Unit!43071)

(declare-fun addApplyDifferent!558 (ListLongMap!20419 (_ BitVec 64) V!51611 (_ BitVec 64)) Unit!43071)

(assert (=> b!1302758 (= lt!582835 (addApplyDifferent!558 lt!582839 lt!582818 minValue!1387 lt!582827))))

(assert (=> b!1302758 (= (apply!1055 (+!4446 lt!582839 (tuple2!22751 lt!582818 minValue!1387)) lt!582827) (apply!1055 lt!582839 lt!582827))))

(declare-fun lt!582826 () Unit!43071)

(assert (=> b!1302758 (= lt!582826 lt!582835)))

(declare-fun lt!582832 () ListLongMap!20419)

(assert (=> b!1302758 (= lt!582832 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582828 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582828 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582836 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582836 (select (arr!41856 _keys!1741) from!2144))))

(declare-fun lt!582819 () Unit!43071)

(assert (=> b!1302758 (= lt!582819 (addApplyDifferent!558 lt!582832 lt!582828 zeroValue!1387 lt!582836))))

(assert (=> b!1302758 (= (apply!1055 (+!4446 lt!582832 (tuple2!22751 lt!582828 zeroValue!1387)) lt!582836) (apply!1055 lt!582832 lt!582836))))

(declare-fun lt!582834 () Unit!43071)

(assert (=> b!1302758 (= lt!582834 lt!582819)))

(declare-fun lt!582838 () ListLongMap!20419)

(assert (=> b!1302758 (= lt!582838 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!582825 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582825 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!582820 () (_ BitVec 64))

(assert (=> b!1302758 (= lt!582820 (select (arr!41856 _keys!1741) from!2144))))

(assert (=> b!1302758 (= lt!582833 (addApplyDifferent!558 lt!582838 lt!582825 minValue!1387 lt!582820))))

(assert (=> b!1302758 (= (apply!1055 (+!4446 lt!582838 (tuple2!22751 lt!582825 minValue!1387)) lt!582820) (apply!1055 lt!582838 lt!582820))))

(declare-fun b!1302759 () Bool)

(assert (=> b!1302759 (= e!743115 e!743114)))

(assert (=> b!1302759 (= c!124979 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64160 () Bool)

(assert (=> bm!64160 (= call!64158 call!64159)))

(declare-fun b!1302760 () Bool)

(assert (=> b!1302760 (= e!743113 e!743105)))

(declare-fun res!865389 () Bool)

(assert (=> b!1302760 (= res!865389 call!64162)))

(assert (=> b!1302760 (=> (not res!865389) (not e!743105))))

(declare-fun b!1302761 () Bool)

(assert (=> b!1302761 (= e!743112 e!743108)))

(declare-fun res!865386 () Bool)

(assert (=> b!1302761 (=> (not res!865386) (not e!743108))))

(assert (=> b!1302761 (= res!865386 (contains!8292 lt!582829 (select (arr!41856 _keys!1741) from!2144)))))

(assert (=> b!1302761 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42407 _keys!1741)))))

(assert (= (and d!141487 c!124980) b!1302753))

(assert (= (and d!141487 (not c!124980)) b!1302759))

(assert (= (and b!1302759 c!124979) b!1302748))

(assert (= (and b!1302759 (not c!124979)) b!1302747))

(assert (= (and b!1302747 c!124978) b!1302754))

(assert (= (and b!1302747 (not c!124978)) b!1302750))

(assert (= (or b!1302754 b!1302750) bm!64157))

(assert (= (or b!1302748 bm!64157) bm!64160))

(assert (= (or b!1302748 b!1302754) bm!64159))

(assert (= (or b!1302753 bm!64160) bm!64154))

(assert (= (or b!1302753 bm!64159) bm!64156))

(assert (= (and d!141487 res!865387) b!1302756))

(assert (= (and d!141487 c!124977) b!1302758))

(assert (= (and d!141487 (not c!124977)) b!1302757))

(assert (= (and d!141487 res!865388) b!1302746))

(assert (= (and b!1302746 res!865385) b!1302742))

(assert (= (and b!1302746 (not res!865383)) b!1302761))

(assert (= (and b!1302761 res!865386) b!1302743))

(assert (= (and b!1302746 res!865382) b!1302755))

(assert (= (and b!1302755 c!124981) b!1302760))

(assert (= (and b!1302755 (not c!124981)) b!1302749))

(assert (= (and b!1302760 res!865389) b!1302752))

(assert (= (or b!1302760 b!1302749) bm!64155))

(assert (= (and b!1302755 res!865390) b!1302741))

(assert (= (and b!1302741 c!124976) b!1302745))

(assert (= (and b!1302741 (not c!124976)) b!1302751))

(assert (= (and b!1302745 res!865384) b!1302744))

(assert (= (or b!1302745 b!1302751) bm!64158))

(declare-fun b_lambda!23261 () Bool)

(assert (=> (not b_lambda!23261) (not b!1302743)))

(declare-fun t!43505 () Bool)

(declare-fun tb!11403 () Bool)

(assert (=> (and start!110030 (= defaultEntry!1448 defaultEntry!1448) t!43505) tb!11403))

(declare-fun result!23815 () Bool)

(assert (=> tb!11403 (= result!23815 tp_is_empty!34881)))

(assert (=> b!1302743 t!43505))

(declare-fun b_and!47407 () Bool)

(assert (= b_and!47403 (and (=> t!43505 result!23815) b_and!47407)))

(assert (=> d!141487 m!1193563))

(declare-fun m!1193639 () Bool)

(assert (=> b!1302744 m!1193639))

(assert (=> b!1302742 m!1193575))

(assert (=> b!1302742 m!1193575))

(assert (=> b!1302742 m!1193577))

(declare-fun m!1193641 () Bool)

(assert (=> bm!64156 m!1193641))

(assert (=> b!1302761 m!1193575))

(assert (=> b!1302761 m!1193575))

(declare-fun m!1193643 () Bool)

(assert (=> b!1302761 m!1193643))

(assert (=> b!1302756 m!1193575))

(assert (=> b!1302756 m!1193575))

(assert (=> b!1302756 m!1193577))

(declare-fun m!1193645 () Bool)

(assert (=> bm!64158 m!1193645))

(declare-fun m!1193647 () Bool)

(assert (=> b!1302758 m!1193647))

(declare-fun m!1193649 () Bool)

(assert (=> b!1302758 m!1193649))

(declare-fun m!1193651 () Bool)

(assert (=> b!1302758 m!1193651))

(declare-fun m!1193653 () Bool)

(assert (=> b!1302758 m!1193653))

(declare-fun m!1193655 () Bool)

(assert (=> b!1302758 m!1193655))

(declare-fun m!1193657 () Bool)

(assert (=> b!1302758 m!1193657))

(declare-fun m!1193659 () Bool)

(assert (=> b!1302758 m!1193659))

(declare-fun m!1193661 () Bool)

(assert (=> b!1302758 m!1193661))

(declare-fun m!1193663 () Bool)

(assert (=> b!1302758 m!1193663))

(declare-fun m!1193665 () Bool)

(assert (=> b!1302758 m!1193665))

(declare-fun m!1193667 () Bool)

(assert (=> b!1302758 m!1193667))

(assert (=> b!1302758 m!1193657))

(assert (=> b!1302758 m!1193665))

(declare-fun m!1193669 () Bool)

(assert (=> b!1302758 m!1193669))

(assert (=> b!1302758 m!1193595))

(assert (=> b!1302758 m!1193647))

(declare-fun m!1193671 () Bool)

(assert (=> b!1302758 m!1193671))

(assert (=> b!1302758 m!1193575))

(declare-fun m!1193673 () Bool)

(assert (=> b!1302758 m!1193673))

(assert (=> b!1302758 m!1193651))

(declare-fun m!1193675 () Bool)

(assert (=> b!1302758 m!1193675))

(assert (=> bm!64154 m!1193595))

(declare-fun m!1193677 () Bool)

(assert (=> b!1302753 m!1193677))

(declare-fun m!1193679 () Bool)

(assert (=> bm!64155 m!1193679))

(declare-fun m!1193681 () Bool)

(assert (=> b!1302752 m!1193681))

(declare-fun m!1193683 () Bool)

(assert (=> b!1302743 m!1193683))

(assert (=> b!1302743 m!1193575))

(declare-fun m!1193685 () Bool)

(assert (=> b!1302743 m!1193685))

(assert (=> b!1302743 m!1193683))

(declare-fun m!1193687 () Bool)

(assert (=> b!1302743 m!1193687))

(declare-fun m!1193689 () Bool)

(assert (=> b!1302743 m!1193689))

(assert (=> b!1302743 m!1193575))

(assert (=> b!1302743 m!1193687))

(assert (=> b!1302642 d!141487))

(declare-fun d!141489 () Bool)

(assert (=> d!141489 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110030 d!141489))

(declare-fun d!141491 () Bool)

(assert (=> d!141491 (= (array_inv!31659 _values!1445) (bvsge (size!42408 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110030 d!141491))

(declare-fun d!141493 () Bool)

(assert (=> d!141493 (= (array_inv!31660 _keys!1741) (bvsge (size!42407 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110030 d!141493))

(declare-fun b!1302788 () Bool)

(declare-fun lt!582857 () Unit!43071)

(declare-fun lt!582860 () Unit!43071)

(assert (=> b!1302788 (= lt!582857 lt!582860)))

(declare-fun lt!582854 () (_ BitVec 64))

(declare-fun lt!582858 () ListLongMap!20419)

(declare-fun lt!582855 () (_ BitVec 64))

(declare-fun lt!582859 () V!51611)

(assert (=> b!1302788 (not (contains!8292 (+!4446 lt!582858 (tuple2!22751 lt!582855 lt!582859)) lt!582854))))

(assert (=> b!1302788 (= lt!582860 (addStillNotContains!470 lt!582858 lt!582855 lt!582859 lt!582854))))

(assert (=> b!1302788 (= lt!582854 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1302788 (= lt!582859 (get!21192 (select (arr!41857 _values!1445) from!2144) (dynLambda!3507 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1302788 (= lt!582855 (select (arr!41856 _keys!1741) from!2144))))

(declare-fun call!64166 () ListLongMap!20419)

(assert (=> b!1302788 (= lt!582858 call!64166)))

(declare-fun e!743134 () ListLongMap!20419)

(assert (=> b!1302788 (= e!743134 (+!4446 call!64166 (tuple2!22751 (select (arr!41856 _keys!1741) from!2144) (get!21192 (select (arr!41857 _values!1445) from!2144) (dynLambda!3507 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64163 () Bool)

(assert (=> bm!64163 (= call!64166 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1302789 () Bool)

(declare-fun e!743130 () Bool)

(declare-fun e!743132 () Bool)

(assert (=> b!1302789 (= e!743130 e!743132)))

(declare-fun c!124993 () Bool)

(declare-fun e!743135 () Bool)

(assert (=> b!1302789 (= c!124993 e!743135)))

(declare-fun res!865399 () Bool)

(assert (=> b!1302789 (=> (not res!865399) (not e!743135))))

(assert (=> b!1302789 (= res!865399 (bvslt from!2144 (size!42407 _keys!1741)))))

(declare-fun b!1302790 () Bool)

(assert (=> b!1302790 (= e!743134 call!64166)))

(declare-fun b!1302791 () Bool)

(declare-fun e!743131 () Bool)

(assert (=> b!1302791 (= e!743132 e!743131)))

(declare-fun c!124991 () Bool)

(assert (=> b!1302791 (= c!124991 (bvslt from!2144 (size!42407 _keys!1741)))))

(declare-fun b!1302792 () Bool)

(declare-fun e!743136 () ListLongMap!20419)

(assert (=> b!1302792 (= e!743136 (ListLongMap!20420 Nil!29901))))

(declare-fun b!1302793 () Bool)

(assert (=> b!1302793 (= e!743135 (validKeyInArray!0 (select (arr!41856 _keys!1741) from!2144)))))

(assert (=> b!1302793 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun d!141495 () Bool)

(assert (=> d!141495 e!743130))

(declare-fun res!865400 () Bool)

(assert (=> d!141495 (=> (not res!865400) (not e!743130))))

(declare-fun lt!582856 () ListLongMap!20419)

(assert (=> d!141495 (= res!865400 (not (contains!8292 lt!582856 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141495 (= lt!582856 e!743136)))

(declare-fun c!124992 () Bool)

(assert (=> d!141495 (= c!124992 (bvsge from!2144 (size!42407 _keys!1741)))))

(assert (=> d!141495 (validMask!0 mask!2175)))

(assert (=> d!141495 (= (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!582856)))

(declare-fun b!1302794 () Bool)

(declare-fun isEmpty!1063 (ListLongMap!20419) Bool)

(assert (=> b!1302794 (= e!743131 (isEmpty!1063 lt!582856))))

(declare-fun b!1302795 () Bool)

(assert (=> b!1302795 (= e!743131 (= lt!582856 (getCurrentListMapNoExtraKeys!6160 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1302796 () Bool)

(assert (=> b!1302796 (= e!743136 e!743134)))

(declare-fun c!124990 () Bool)

(assert (=> b!1302796 (= c!124990 (validKeyInArray!0 (select (arr!41856 _keys!1741) from!2144)))))

(declare-fun b!1302797 () Bool)

(assert (=> b!1302797 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42407 _keys!1741)))))

(assert (=> b!1302797 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42408 _values!1445)))))

(declare-fun e!743133 () Bool)

(assert (=> b!1302797 (= e!743133 (= (apply!1055 lt!582856 (select (arr!41856 _keys!1741) from!2144)) (get!21192 (select (arr!41857 _values!1445) from!2144) (dynLambda!3507 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1302798 () Bool)

(assert (=> b!1302798 (= e!743132 e!743133)))

(assert (=> b!1302798 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42407 _keys!1741)))))

(declare-fun res!865401 () Bool)

(assert (=> b!1302798 (= res!865401 (contains!8292 lt!582856 (select (arr!41856 _keys!1741) from!2144)))))

(assert (=> b!1302798 (=> (not res!865401) (not e!743133))))

(declare-fun b!1302799 () Bool)

(declare-fun res!865402 () Bool)

(assert (=> b!1302799 (=> (not res!865402) (not e!743130))))

(assert (=> b!1302799 (= res!865402 (not (contains!8292 lt!582856 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!141495 c!124992) b!1302792))

(assert (= (and d!141495 (not c!124992)) b!1302796))

(assert (= (and b!1302796 c!124990) b!1302788))

(assert (= (and b!1302796 (not c!124990)) b!1302790))

(assert (= (or b!1302788 b!1302790) bm!64163))

(assert (= (and d!141495 res!865400) b!1302799))

(assert (= (and b!1302799 res!865402) b!1302789))

(assert (= (and b!1302789 res!865399) b!1302793))

(assert (= (and b!1302789 c!124993) b!1302798))

(assert (= (and b!1302789 (not c!124993)) b!1302791))

(assert (= (and b!1302798 res!865401) b!1302797))

(assert (= (and b!1302791 c!124991) b!1302795))

(assert (= (and b!1302791 (not c!124991)) b!1302794))

(declare-fun b_lambda!23263 () Bool)

(assert (=> (not b_lambda!23263) (not b!1302788)))

(assert (=> b!1302788 t!43505))

(declare-fun b_and!47409 () Bool)

(assert (= b_and!47407 (and (=> t!43505 result!23815) b_and!47409)))

(declare-fun b_lambda!23265 () Bool)

(assert (=> (not b_lambda!23265) (not b!1302797)))

(assert (=> b!1302797 t!43505))

(declare-fun b_and!47411 () Bool)

(assert (= b_and!47409 (and (=> t!43505 result!23815) b_and!47411)))

(declare-fun m!1193691 () Bool)

(assert (=> b!1302794 m!1193691))

(assert (=> b!1302793 m!1193575))

(assert (=> b!1302793 m!1193575))

(assert (=> b!1302793 m!1193577))

(assert (=> b!1302796 m!1193575))

(assert (=> b!1302796 m!1193575))

(assert (=> b!1302796 m!1193577))

(assert (=> b!1302788 m!1193687))

(declare-fun m!1193693 () Bool)

(assert (=> b!1302788 m!1193693))

(declare-fun m!1193695 () Bool)

(assert (=> b!1302788 m!1193695))

(declare-fun m!1193697 () Bool)

(assert (=> b!1302788 m!1193697))

(assert (=> b!1302788 m!1193693))

(assert (=> b!1302788 m!1193575))

(declare-fun m!1193699 () Bool)

(assert (=> b!1302788 m!1193699))

(assert (=> b!1302788 m!1193683))

(assert (=> b!1302788 m!1193687))

(assert (=> b!1302788 m!1193689))

(assert (=> b!1302788 m!1193683))

(declare-fun m!1193701 () Bool)

(assert (=> b!1302795 m!1193701))

(assert (=> bm!64163 m!1193701))

(assert (=> b!1302797 m!1193687))

(assert (=> b!1302797 m!1193575))

(declare-fun m!1193703 () Bool)

(assert (=> b!1302797 m!1193703))

(assert (=> b!1302797 m!1193575))

(assert (=> b!1302797 m!1193683))

(assert (=> b!1302797 m!1193687))

(assert (=> b!1302797 m!1193689))

(assert (=> b!1302797 m!1193683))

(declare-fun m!1193705 () Bool)

(assert (=> b!1302799 m!1193705))

(assert (=> b!1302798 m!1193575))

(assert (=> b!1302798 m!1193575))

(declare-fun m!1193707 () Bool)

(assert (=> b!1302798 m!1193707))

(declare-fun m!1193709 () Bool)

(assert (=> d!141495 m!1193709))

(assert (=> d!141495 m!1193563))

(assert (=> b!1302649 d!141495))

(declare-fun d!141497 () Bool)

(declare-fun e!743139 () Bool)

(assert (=> d!141497 e!743139))

(declare-fun res!865408 () Bool)

(assert (=> d!141497 (=> (not res!865408) (not e!743139))))

(declare-fun lt!582872 () ListLongMap!20419)

(assert (=> d!141497 (= res!865408 (contains!8292 lt!582872 (_1!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!582869 () List!29904)

(assert (=> d!141497 (= lt!582872 (ListLongMap!20420 lt!582869))))

(declare-fun lt!582871 () Unit!43071)

(declare-fun lt!582870 () Unit!43071)

(assert (=> d!141497 (= lt!582871 lt!582870)))

(assert (=> d!141497 (= (getValueByKey!705 lt!582869 (_1!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!755 (_2!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!349 (List!29904 (_ BitVec 64) V!51611) Unit!43071)

(assert (=> d!141497 (= lt!582870 (lemmaContainsTupThenGetReturnValue!349 lt!582869 (_1!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun insertStrictlySorted!478 (List!29904 (_ BitVec 64) V!51611) List!29904)

(assert (=> d!141497 (= lt!582869 (insertStrictlySorted!478 (toList!10225 lt!582750) (_1!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141497 (= (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!582872)))

(declare-fun b!1302804 () Bool)

(declare-fun res!865407 () Bool)

(assert (=> b!1302804 (=> (not res!865407) (not e!743139))))

(assert (=> b!1302804 (= res!865407 (= (getValueByKey!705 (toList!10225 lt!582872) (_1!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!755 (_2!11385 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1302805 () Bool)

(declare-fun contains!8294 (List!29904 tuple2!22750) Bool)

(assert (=> b!1302805 (= e!743139 (contains!8294 (toList!10225 lt!582872) (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141497 res!865408) b!1302804))

(assert (= (and b!1302804 res!865407) b!1302805))

(declare-fun m!1193711 () Bool)

(assert (=> d!141497 m!1193711))

(declare-fun m!1193713 () Bool)

(assert (=> d!141497 m!1193713))

(declare-fun m!1193715 () Bool)

(assert (=> d!141497 m!1193715))

(declare-fun m!1193717 () Bool)

(assert (=> d!141497 m!1193717))

(declare-fun m!1193719 () Bool)

(assert (=> b!1302804 m!1193719))

(declare-fun m!1193721 () Bool)

(assert (=> b!1302805 m!1193721))

(assert (=> b!1302649 d!141497))

(declare-fun d!141499 () Bool)

(declare-fun e!743141 () Bool)

(assert (=> d!141499 e!743141))

(declare-fun res!865409 () Bool)

(assert (=> d!141499 (=> res!865409 e!743141)))

(declare-fun lt!582875 () Bool)

(assert (=> d!141499 (= res!865409 (not lt!582875))))

(declare-fun lt!582874 () Bool)

(assert (=> d!141499 (= lt!582875 lt!582874)))

(declare-fun lt!582873 () Unit!43071)

(declare-fun e!743140 () Unit!43071)

(assert (=> d!141499 (= lt!582873 e!743140)))

(declare-fun c!124994 () Bool)

(assert (=> d!141499 (= c!124994 lt!582874)))

(assert (=> d!141499 (= lt!582874 (containsKey!723 (toList!10225 (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> d!141499 (= (contains!8292 (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205) lt!582875)))

(declare-fun b!1302806 () Bool)

(declare-fun lt!582876 () Unit!43071)

(assert (=> b!1302806 (= e!743140 lt!582876)))

(assert (=> b!1302806 (= lt!582876 (lemmaContainsKeyImpliesGetValueByKeyDefined!468 (toList!10225 (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> b!1302806 (isDefined!508 (getValueByKey!705 (toList!10225 (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(declare-fun b!1302807 () Bool)

(declare-fun Unit!43077 () Unit!43071)

(assert (=> b!1302807 (= e!743140 Unit!43077)))

(declare-fun b!1302808 () Bool)

(assert (=> b!1302808 (= e!743141 (isDefined!508 (getValueByKey!705 (toList!10225 (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205)))))

(assert (= (and d!141499 c!124994) b!1302806))

(assert (= (and d!141499 (not c!124994)) b!1302807))

(assert (= (and d!141499 (not res!865409)) b!1302808))

(declare-fun m!1193723 () Bool)

(assert (=> d!141499 m!1193723))

(declare-fun m!1193725 () Bool)

(assert (=> b!1302806 m!1193725))

(declare-fun m!1193727 () Bool)

(assert (=> b!1302806 m!1193727))

(assert (=> b!1302806 m!1193727))

(declare-fun m!1193729 () Bool)

(assert (=> b!1302806 m!1193729))

(assert (=> b!1302808 m!1193727))

(assert (=> b!1302808 m!1193727))

(assert (=> b!1302808 m!1193729))

(assert (=> b!1302649 d!141499))

(declare-fun d!141501 () Bool)

(assert (=> d!141501 (not (contains!8292 (+!4446 lt!582750 (tuple2!22751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!582879 () Unit!43071)

(declare-fun choose!1926 (ListLongMap!20419 (_ BitVec 64) V!51611 (_ BitVec 64)) Unit!43071)

(assert (=> d!141501 (= lt!582879 (choose!1926 lt!582750 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun e!743144 () Bool)

(assert (=> d!141501 e!743144))

(declare-fun res!865412 () Bool)

(assert (=> d!141501 (=> (not res!865412) (not e!743144))))

(assert (=> d!141501 (= res!865412 (not (contains!8292 lt!582750 k0!1205)))))

(assert (=> d!141501 (= (addStillNotContains!470 lt!582750 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205) lt!582879)))

(declare-fun b!1302812 () Bool)

(assert (=> b!1302812 (= e!743144 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(assert (= (and d!141501 res!865412) b!1302812))

(assert (=> d!141501 m!1193589))

(assert (=> d!141501 m!1193589))

(assert (=> d!141501 m!1193591))

(declare-fun m!1193731 () Bool)

(assert (=> d!141501 m!1193731))

(assert (=> d!141501 m!1193593))

(assert (=> b!1302649 d!141501))

(declare-fun d!141503 () Bool)

(declare-fun e!743146 () Bool)

(assert (=> d!141503 e!743146))

(declare-fun res!865413 () Bool)

(assert (=> d!141503 (=> res!865413 e!743146)))

(declare-fun lt!582882 () Bool)

(assert (=> d!141503 (= res!865413 (not lt!582882))))

(declare-fun lt!582881 () Bool)

(assert (=> d!141503 (= lt!582882 lt!582881)))

(declare-fun lt!582880 () Unit!43071)

(declare-fun e!743145 () Unit!43071)

(assert (=> d!141503 (= lt!582880 e!743145)))

(declare-fun c!124995 () Bool)

(assert (=> d!141503 (= c!124995 lt!582881)))

(assert (=> d!141503 (= lt!582881 (containsKey!723 (toList!10225 lt!582750) k0!1205))))

(assert (=> d!141503 (= (contains!8292 lt!582750 k0!1205) lt!582882)))

(declare-fun b!1302813 () Bool)

(declare-fun lt!582883 () Unit!43071)

(assert (=> b!1302813 (= e!743145 lt!582883)))

(assert (=> b!1302813 (= lt!582883 (lemmaContainsKeyImpliesGetValueByKeyDefined!468 (toList!10225 lt!582750) k0!1205))))

(assert (=> b!1302813 (isDefined!508 (getValueByKey!705 (toList!10225 lt!582750) k0!1205))))

(declare-fun b!1302814 () Bool)

(declare-fun Unit!43078 () Unit!43071)

(assert (=> b!1302814 (= e!743145 Unit!43078)))

(declare-fun b!1302815 () Bool)

(assert (=> b!1302815 (= e!743146 (isDefined!508 (getValueByKey!705 (toList!10225 lt!582750) k0!1205)))))

(assert (= (and d!141503 c!124995) b!1302813))

(assert (= (and d!141503 (not c!124995)) b!1302814))

(assert (= (and d!141503 (not res!865413)) b!1302815))

(declare-fun m!1193733 () Bool)

(assert (=> d!141503 m!1193733))

(declare-fun m!1193735 () Bool)

(assert (=> b!1302813 m!1193735))

(declare-fun m!1193737 () Bool)

(assert (=> b!1302813 m!1193737))

(assert (=> b!1302813 m!1193737))

(declare-fun m!1193739 () Bool)

(assert (=> b!1302813 m!1193739))

(assert (=> b!1302815 m!1193737))

(assert (=> b!1302815 m!1193737))

(assert (=> b!1302815 m!1193739))

(assert (=> b!1302649 d!141503))

(declare-fun d!141505 () Bool)

(assert (=> d!141505 (= (validKeyInArray!0 (select (arr!41856 _keys!1741) from!2144)) (and (not (= (select (arr!41856 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41856 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1302650 d!141505))

(declare-fun d!141507 () Bool)

(declare-fun e!743148 () Bool)

(assert (=> d!141507 e!743148))

(declare-fun res!865414 () Bool)

(assert (=> d!141507 (=> res!865414 e!743148)))

(declare-fun lt!582886 () Bool)

(assert (=> d!141507 (= res!865414 (not lt!582886))))

(declare-fun lt!582885 () Bool)

(assert (=> d!141507 (= lt!582886 lt!582885)))

(declare-fun lt!582884 () Unit!43071)

(declare-fun e!743147 () Unit!43071)

(assert (=> d!141507 (= lt!582884 e!743147)))

(declare-fun c!124996 () Bool)

(assert (=> d!141507 (= c!124996 lt!582885)))

(assert (=> d!141507 (= lt!582885 (containsKey!723 (toList!10225 (ListLongMap!20420 Nil!29901)) k0!1205))))

(assert (=> d!141507 (= (contains!8292 (ListLongMap!20420 Nil!29901) k0!1205) lt!582886)))

(declare-fun b!1302816 () Bool)

(declare-fun lt!582887 () Unit!43071)

(assert (=> b!1302816 (= e!743147 lt!582887)))

(assert (=> b!1302816 (= lt!582887 (lemmaContainsKeyImpliesGetValueByKeyDefined!468 (toList!10225 (ListLongMap!20420 Nil!29901)) k0!1205))))

(assert (=> b!1302816 (isDefined!508 (getValueByKey!705 (toList!10225 (ListLongMap!20420 Nil!29901)) k0!1205))))

(declare-fun b!1302817 () Bool)

(declare-fun Unit!43079 () Unit!43071)

(assert (=> b!1302817 (= e!743147 Unit!43079)))

(declare-fun b!1302818 () Bool)

(assert (=> b!1302818 (= e!743148 (isDefined!508 (getValueByKey!705 (toList!10225 (ListLongMap!20420 Nil!29901)) k0!1205)))))

(assert (= (and d!141507 c!124996) b!1302816))

(assert (= (and d!141507 (not c!124996)) b!1302817))

(assert (= (and d!141507 (not res!865414)) b!1302818))

(declare-fun m!1193741 () Bool)

(assert (=> d!141507 m!1193741))

(declare-fun m!1193743 () Bool)

(assert (=> b!1302816 m!1193743))

(declare-fun m!1193745 () Bool)

(assert (=> b!1302816 m!1193745))

(assert (=> b!1302816 m!1193745))

(declare-fun m!1193747 () Bool)

(assert (=> b!1302816 m!1193747))

(assert (=> b!1302818 m!1193745))

(assert (=> b!1302818 m!1193745))

(assert (=> b!1302818 m!1193747))

(assert (=> b!1302645 d!141507))

(declare-fun d!141509 () Bool)

(assert (=> d!141509 (not (contains!8292 (ListLongMap!20420 Nil!29901) k0!1205))))

(declare-fun lt!582890 () Unit!43071)

(declare-fun choose!1927 ((_ BitVec 64)) Unit!43071)

(assert (=> d!141509 (= lt!582890 (choose!1927 k0!1205))))

(assert (=> d!141509 (= (emptyContainsNothing!213 k0!1205) lt!582890)))

(declare-fun bs!37100 () Bool)

(assert (= bs!37100 d!141509))

(assert (=> bs!37100 m!1193579))

(declare-fun m!1193749 () Bool)

(assert (=> bs!37100 m!1193749))

(assert (=> b!1302645 d!141509))

(declare-fun b!1302829 () Bool)

(declare-fun e!743157 () Bool)

(declare-fun e!743158 () Bool)

(assert (=> b!1302829 (= e!743157 e!743158)))

(declare-fun c!124999 () Bool)

(assert (=> b!1302829 (= c!124999 (validKeyInArray!0 (select (arr!41856 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302830 () Bool)

(declare-fun call!64169 () Bool)

(assert (=> b!1302830 (= e!743158 call!64169)))

(declare-fun b!1302831 () Bool)

(declare-fun e!743160 () Bool)

(assert (=> b!1302831 (= e!743160 e!743157)))

(declare-fun res!865421 () Bool)

(assert (=> b!1302831 (=> (not res!865421) (not e!743157))))

(declare-fun e!743159 () Bool)

(assert (=> b!1302831 (= res!865421 (not e!743159))))

(declare-fun res!865422 () Bool)

(assert (=> b!1302831 (=> (not res!865422) (not e!743159))))

(assert (=> b!1302831 (= res!865422 (validKeyInArray!0 (select (arr!41856 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302832 () Bool)

(assert (=> b!1302832 (= e!743158 call!64169)))

(declare-fun b!1302833 () Bool)

(declare-fun contains!8295 (List!29903 (_ BitVec 64)) Bool)

(assert (=> b!1302833 (= e!743159 (contains!8295 Nil!29900 (select (arr!41856 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64166 () Bool)

(assert (=> bm!64166 (= call!64169 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124999 (Cons!29899 (select (arr!41856 _keys!1741) #b00000000000000000000000000000000) Nil!29900) Nil!29900)))))

(declare-fun d!141511 () Bool)

(declare-fun res!865423 () Bool)

(assert (=> d!141511 (=> res!865423 e!743160)))

(assert (=> d!141511 (= res!865423 (bvsge #b00000000000000000000000000000000 (size!42407 _keys!1741)))))

(assert (=> d!141511 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29900) e!743160)))

(assert (= (and d!141511 (not res!865423)) b!1302831))

(assert (= (and b!1302831 res!865422) b!1302833))

(assert (= (and b!1302831 res!865421) b!1302829))

(assert (= (and b!1302829 c!124999) b!1302830))

(assert (= (and b!1302829 (not c!124999)) b!1302832))

(assert (= (or b!1302830 b!1302832) bm!64166))

(declare-fun m!1193751 () Bool)

(assert (=> b!1302829 m!1193751))

(assert (=> b!1302829 m!1193751))

(declare-fun m!1193753 () Bool)

(assert (=> b!1302829 m!1193753))

(assert (=> b!1302831 m!1193751))

(assert (=> b!1302831 m!1193751))

(assert (=> b!1302831 m!1193753))

(assert (=> b!1302833 m!1193751))

(assert (=> b!1302833 m!1193751))

(declare-fun m!1193755 () Bool)

(assert (=> b!1302833 m!1193755))

(assert (=> bm!64166 m!1193751))

(declare-fun m!1193757 () Bool)

(assert (=> bm!64166 m!1193757))

(assert (=> b!1302638 d!141511))

(declare-fun b!1302842 () Bool)

(declare-fun e!743167 () Bool)

(declare-fun e!743169 () Bool)

(assert (=> b!1302842 (= e!743167 e!743169)))

(declare-fun c!125002 () Bool)

(assert (=> b!1302842 (= c!125002 (validKeyInArray!0 (select (arr!41856 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302843 () Bool)

(declare-fun e!743168 () Bool)

(declare-fun call!64172 () Bool)

(assert (=> b!1302843 (= e!743168 call!64172)))

(declare-fun b!1302844 () Bool)

(assert (=> b!1302844 (= e!743169 call!64172)))

(declare-fun bm!64169 () Bool)

(assert (=> bm!64169 (= call!64172 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1302845 () Bool)

(assert (=> b!1302845 (= e!743169 e!743168)))

(declare-fun lt!582898 () (_ BitVec 64))

(assert (=> b!1302845 (= lt!582898 (select (arr!41856 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!582897 () Unit!43071)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86735 (_ BitVec 64) (_ BitVec 32)) Unit!43071)

(assert (=> b!1302845 (= lt!582897 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!582898 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1302845 (arrayContainsKey!0 _keys!1741 lt!582898 #b00000000000000000000000000000000)))

(declare-fun lt!582899 () Unit!43071)

(assert (=> b!1302845 (= lt!582899 lt!582897)))

(declare-fun res!865429 () Bool)

(declare-datatypes ((SeekEntryResult!10020 0))(
  ( (MissingZero!10020 (index!42450 (_ BitVec 32))) (Found!10020 (index!42451 (_ BitVec 32))) (Intermediate!10020 (undefined!10832 Bool) (index!42452 (_ BitVec 32)) (x!115701 (_ BitVec 32))) (Undefined!10020) (MissingVacant!10020 (index!42453 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86735 (_ BitVec 32)) SeekEntryResult!10020)

(assert (=> b!1302845 (= res!865429 (= (seekEntryOrOpen!0 (select (arr!41856 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10020 #b00000000000000000000000000000000)))))

(assert (=> b!1302845 (=> (not res!865429) (not e!743168))))

(declare-fun d!141513 () Bool)

(declare-fun res!865428 () Bool)

(assert (=> d!141513 (=> res!865428 e!743167)))

(assert (=> d!141513 (= res!865428 (bvsge #b00000000000000000000000000000000 (size!42407 _keys!1741)))))

(assert (=> d!141513 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!743167)))

(assert (= (and d!141513 (not res!865428)) b!1302842))

(assert (= (and b!1302842 c!125002) b!1302845))

(assert (= (and b!1302842 (not c!125002)) b!1302844))

(assert (= (and b!1302845 res!865429) b!1302843))

(assert (= (or b!1302843 b!1302844) bm!64169))

(assert (=> b!1302842 m!1193751))

(assert (=> b!1302842 m!1193751))

(assert (=> b!1302842 m!1193753))

(declare-fun m!1193759 () Bool)

(assert (=> bm!64169 m!1193759))

(assert (=> b!1302845 m!1193751))

(declare-fun m!1193761 () Bool)

(assert (=> b!1302845 m!1193761))

(declare-fun m!1193763 () Bool)

(assert (=> b!1302845 m!1193763))

(assert (=> b!1302845 m!1193751))

(declare-fun m!1193765 () Bool)

(assert (=> b!1302845 m!1193765))

(assert (=> b!1302644 d!141513))

(declare-fun b!1302852 () Bool)

(declare-fun e!743175 () Bool)

(assert (=> b!1302852 (= e!743175 tp_is_empty!34881)))

(declare-fun condMapEmpty!53914 () Bool)

(declare-fun mapDefault!53914 () ValueCell!16542)

(assert (=> mapNonEmpty!53908 (= condMapEmpty!53914 (= mapRest!53908 ((as const (Array (_ BitVec 32) ValueCell!16542)) mapDefault!53914)))))

(declare-fun e!743174 () Bool)

(declare-fun mapRes!53914 () Bool)

(assert (=> mapNonEmpty!53908 (= tp!102868 (and e!743174 mapRes!53914))))

(declare-fun b!1302853 () Bool)

(assert (=> b!1302853 (= e!743174 tp_is_empty!34881)))

(declare-fun mapNonEmpty!53914 () Bool)

(declare-fun tp!102878 () Bool)

(assert (=> mapNonEmpty!53914 (= mapRes!53914 (and tp!102878 e!743175))))

(declare-fun mapKey!53914 () (_ BitVec 32))

(declare-fun mapValue!53914 () ValueCell!16542)

(declare-fun mapRest!53914 () (Array (_ BitVec 32) ValueCell!16542))

(assert (=> mapNonEmpty!53914 (= mapRest!53908 (store mapRest!53914 mapKey!53914 mapValue!53914))))

(declare-fun mapIsEmpty!53914 () Bool)

(assert (=> mapIsEmpty!53914 mapRes!53914))

(assert (= (and mapNonEmpty!53908 condMapEmpty!53914) mapIsEmpty!53914))

(assert (= (and mapNonEmpty!53908 (not condMapEmpty!53914)) mapNonEmpty!53914))

(assert (= (and mapNonEmpty!53914 ((_ is ValueCellFull!16542) mapValue!53914)) b!1302852))

(assert (= (and mapNonEmpty!53908 ((_ is ValueCellFull!16542) mapDefault!53914)) b!1302853))

(declare-fun m!1193767 () Bool)

(assert (=> mapNonEmpty!53914 m!1193767))

(declare-fun b_lambda!23267 () Bool)

(assert (= b_lambda!23261 (or (and start!110030 b_free!29241) b_lambda!23267)))

(declare-fun b_lambda!23269 () Bool)

(assert (= b_lambda!23265 (or (and start!110030 b_free!29241) b_lambda!23269)))

(declare-fun b_lambda!23271 () Bool)

(assert (= b_lambda!23263 (or (and start!110030 b_free!29241) b_lambda!23271)))

(check-sat (not b!1302799) (not bm!64156) (not b!1302698) (not b!1302744) (not b!1302815) (not b!1302753) (not d!141499) tp_is_empty!34881 (not b!1302794) (not d!141507) (not b!1302795) (not b!1302793) (not b!1302796) (not b!1302788) (not b!1302752) (not b!1302742) (not d!141485) (not d!141495) (not b!1302806) (not b!1302805) (not b!1302804) (not bm!64163) (not b!1302842) (not d!141503) (not b!1302831) (not bm!64155) (not b!1302761) (not b!1302798) (not bm!64169) (not d!141497) (not d!141487) (not b!1302756) (not b_lambda!23271) (not b!1302797) (not b!1302758) (not mapNonEmpty!53914) (not b!1302833) (not d!141509) (not b_lambda!23267) (not b!1302845) (not b_lambda!23269) (not b!1302808) (not d!141501) (not bm!64158) (not b!1302696) (not b!1302818) (not bm!64166) (not b!1302743) b_and!47411 (not bm!64154) (not b_next!29241) (not b!1302816) (not b!1302829) (not b!1302813))
(check-sat b_and!47411 (not b_next!29241))
