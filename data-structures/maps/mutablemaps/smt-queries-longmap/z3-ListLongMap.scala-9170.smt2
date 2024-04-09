; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110260 () Bool)

(assert start!110260)

(declare-fun b_free!29295 () Bool)

(declare-fun b_next!29295 () Bool)

(assert (=> start!110260 (= b_free!29295 (not b_next!29295))))

(declare-fun tp!103048 () Bool)

(declare-fun b_and!47495 () Bool)

(assert (=> start!110260 (= tp!103048 b_and!47495)))

(declare-fun b!1304729 () Bool)

(declare-fun res!866553 () Bool)

(declare-fun e!744265 () Bool)

(assert (=> b!1304729 (=> (not res!866553) (not e!744265))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!86851 0))(
  ( (array!86852 (arr!41909 (Array (_ BitVec 32) (_ BitVec 64))) (size!42460 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86851)

(assert (=> b!1304729 (= res!866553 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42460 _keys!1741))))))

(declare-fun b!1304730 () Bool)

(declare-fun e!744266 () Bool)

(assert (=> b!1304730 (= e!744266 false)))

(declare-datatypes ((V!51683 0))(
  ( (V!51684 (val!17542 Int)) )
))
(declare-datatypes ((tuple2!22800 0))(
  ( (tuple2!22801 (_1!11410 (_ BitVec 64)) (_2!11410 V!51683)) )
))
(declare-datatypes ((List!29950 0))(
  ( (Nil!29947) (Cons!29946 (h!31155 tuple2!22800) (t!43557 List!29950)) )
))
(declare-datatypes ((ListLongMap!20469 0))(
  ( (ListLongMap!20470 (toList!10250 List!29950)) )
))
(declare-fun lt!583961 () ListLongMap!20469)

(declare-fun minValue!1387 () V!51683)

(declare-fun contains!8327 (ListLongMap!20469 (_ BitVec 64)) Bool)

(declare-fun +!4467 (ListLongMap!20469 tuple2!22800) ListLongMap!20469)

(assert (=> b!1304730 (not (contains!8327 (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-datatypes ((Unit!43160 0))(
  ( (Unit!43161) )
))
(declare-fun lt!583962 () Unit!43160)

(declare-fun addStillNotContains!491 (ListLongMap!20469 (_ BitVec 64) V!51683 (_ BitVec 64)) Unit!43160)

(assert (=> b!1304730 (= lt!583962 (addStillNotContains!491 lt!583961 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!51683)

(declare-datatypes ((ValueCell!16569 0))(
  ( (ValueCellFull!16569 (v!20161 V!51683)) (EmptyCell!16569) )
))
(declare-datatypes ((array!86853 0))(
  ( (array!86854 (arr!41910 (Array (_ BitVec 32) ValueCell!16569)) (size!42461 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86853)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6184 (array!86851 array!86853 (_ BitVec 32) (_ BitVec 32) V!51683 V!51683 (_ BitVec 32) Int) ListLongMap!20469)

(assert (=> b!1304730 (= lt!583961 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304731 () Bool)

(declare-fun res!866551 () Bool)

(assert (=> b!1304731 (=> (not res!866551) (not e!744265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1304731 (= res!866551 (not (validKeyInArray!0 (select (arr!41909 _keys!1741) from!2144))))))

(declare-fun b!1304732 () Bool)

(declare-fun e!744263 () Bool)

(declare-fun tp_is_empty!34935 () Bool)

(assert (=> b!1304732 (= e!744263 tp_is_empty!34935)))

(declare-fun b!1304734 () Bool)

(declare-fun e!744264 () Bool)

(assert (=> b!1304734 (= e!744264 tp_is_empty!34935)))

(declare-fun b!1304735 () Bool)

(declare-fun res!866548 () Bool)

(assert (=> b!1304735 (=> (not res!866548) (not e!744265))))

(assert (=> b!1304735 (= res!866548 (and (= (size!42461 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42460 _keys!1741) (size!42461 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54006 () Bool)

(declare-fun mapRes!54006 () Bool)

(assert (=> mapIsEmpty!54006 mapRes!54006))

(declare-fun b!1304736 () Bool)

(declare-fun res!866552 () Bool)

(assert (=> b!1304736 (=> (not res!866552) (not e!744265))))

(declare-fun getCurrentListMap!5208 (array!86851 array!86853 (_ BitVec 32) (_ BitVec 32) V!51683 V!51683 (_ BitVec 32) Int) ListLongMap!20469)

(assert (=> b!1304736 (= res!866552 (contains!8327 (getCurrentListMap!5208 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!54006 () Bool)

(declare-fun tp!103047 () Bool)

(assert (=> mapNonEmpty!54006 (= mapRes!54006 (and tp!103047 e!744263))))

(declare-fun mapValue!54006 () ValueCell!16569)

(declare-fun mapKey!54006 () (_ BitVec 32))

(declare-fun mapRest!54006 () (Array (_ BitVec 32) ValueCell!16569))

(assert (=> mapNonEmpty!54006 (= (arr!41910 _values!1445) (store mapRest!54006 mapKey!54006 mapValue!54006))))

(declare-fun b!1304737 () Bool)

(declare-fun res!866554 () Bool)

(assert (=> b!1304737 (=> (not res!866554) (not e!744265))))

(declare-datatypes ((List!29951 0))(
  ( (Nil!29948) (Cons!29947 (h!31156 (_ BitVec 64)) (t!43558 List!29951)) )
))
(declare-fun arrayNoDuplicates!0 (array!86851 (_ BitVec 32) List!29951) Bool)

(assert (=> b!1304737 (= res!866554 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29948))))

(declare-fun b!1304738 () Bool)

(declare-fun res!866550 () Bool)

(assert (=> b!1304738 (=> (not res!866550) (not e!744265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86851 (_ BitVec 32)) Bool)

(assert (=> b!1304738 (= res!866550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1304739 () Bool)

(declare-fun e!744261 () Bool)

(assert (=> b!1304739 (= e!744261 (and e!744264 mapRes!54006))))

(declare-fun condMapEmpty!54006 () Bool)

(declare-fun mapDefault!54006 () ValueCell!16569)

(assert (=> b!1304739 (= condMapEmpty!54006 (= (arr!41910 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16569)) mapDefault!54006)))))

(declare-fun b!1304740 () Bool)

(declare-fun res!866546 () Bool)

(assert (=> b!1304740 (=> (not res!866546) (not e!744265))))

(assert (=> b!1304740 (= res!866546 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42460 _keys!1741))))))

(declare-fun res!866549 () Bool)

(assert (=> start!110260 (=> (not res!866549) (not e!744265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110260 (= res!866549 (validMask!0 mask!2175))))

(assert (=> start!110260 e!744265))

(assert (=> start!110260 tp_is_empty!34935))

(assert (=> start!110260 true))

(declare-fun array_inv!31695 (array!86853) Bool)

(assert (=> start!110260 (and (array_inv!31695 _values!1445) e!744261)))

(declare-fun array_inv!31696 (array!86851) Bool)

(assert (=> start!110260 (array_inv!31696 _keys!1741)))

(assert (=> start!110260 tp!103048))

(declare-fun b!1304733 () Bool)

(assert (=> b!1304733 (= e!744265 (not e!744266))))

(declare-fun res!866547 () Bool)

(assert (=> b!1304733 (=> res!866547 e!744266)))

(assert (=> b!1304733 (= res!866547 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1304733 (not (contains!8327 (ListLongMap!20470 Nil!29947) k0!1205))))

(declare-fun lt!583963 () Unit!43160)

(declare-fun emptyContainsNothing!233 ((_ BitVec 64)) Unit!43160)

(assert (=> b!1304733 (= lt!583963 (emptyContainsNothing!233 k0!1205))))

(assert (= (and start!110260 res!866549) b!1304735))

(assert (= (and b!1304735 res!866548) b!1304738))

(assert (= (and b!1304738 res!866550) b!1304737))

(assert (= (and b!1304737 res!866554) b!1304740))

(assert (= (and b!1304740 res!866546) b!1304736))

(assert (= (and b!1304736 res!866552) b!1304729))

(assert (= (and b!1304729 res!866553) b!1304731))

(assert (= (and b!1304731 res!866551) b!1304733))

(assert (= (and b!1304733 (not res!866547)) b!1304730))

(assert (= (and b!1304739 condMapEmpty!54006) mapIsEmpty!54006))

(assert (= (and b!1304739 (not condMapEmpty!54006)) mapNonEmpty!54006))

(get-info :version)

(assert (= (and mapNonEmpty!54006 ((_ is ValueCellFull!16569) mapValue!54006)) b!1304732))

(assert (= (and b!1304739 ((_ is ValueCellFull!16569) mapDefault!54006)) b!1304734))

(assert (= start!110260 b!1304739))

(declare-fun m!1195833 () Bool)

(assert (=> b!1304738 m!1195833))

(declare-fun m!1195835 () Bool)

(assert (=> b!1304737 m!1195835))

(declare-fun m!1195837 () Bool)

(assert (=> b!1304730 m!1195837))

(assert (=> b!1304730 m!1195837))

(declare-fun m!1195839 () Bool)

(assert (=> b!1304730 m!1195839))

(declare-fun m!1195841 () Bool)

(assert (=> b!1304730 m!1195841))

(declare-fun m!1195843 () Bool)

(assert (=> b!1304730 m!1195843))

(declare-fun m!1195845 () Bool)

(assert (=> mapNonEmpty!54006 m!1195845))

(declare-fun m!1195847 () Bool)

(assert (=> start!110260 m!1195847))

(declare-fun m!1195849 () Bool)

(assert (=> start!110260 m!1195849))

(declare-fun m!1195851 () Bool)

(assert (=> start!110260 m!1195851))

(declare-fun m!1195853 () Bool)

(assert (=> b!1304736 m!1195853))

(assert (=> b!1304736 m!1195853))

(declare-fun m!1195855 () Bool)

(assert (=> b!1304736 m!1195855))

(declare-fun m!1195857 () Bool)

(assert (=> b!1304731 m!1195857))

(assert (=> b!1304731 m!1195857))

(declare-fun m!1195859 () Bool)

(assert (=> b!1304731 m!1195859))

(declare-fun m!1195861 () Bool)

(assert (=> b!1304733 m!1195861))

(declare-fun m!1195863 () Bool)

(assert (=> b!1304733 m!1195863))

(check-sat (not start!110260) (not b!1304736) tp_is_empty!34935 (not b!1304737) b_and!47495 (not b!1304738) (not b!1304731) (not b!1304733) (not mapNonEmpty!54006) (not b_next!29295) (not b!1304730))
(check-sat b_and!47495 (not b_next!29295))
(get-model)

(declare-fun bm!64298 () Bool)

(declare-fun call!64301 () Bool)

(assert (=> bm!64298 (= call!64301 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1304785 () Bool)

(declare-fun e!744293 () Bool)

(assert (=> b!1304785 (= e!744293 call!64301)))

(declare-fun b!1304786 () Bool)

(declare-fun e!744291 () Bool)

(assert (=> b!1304786 (= e!744291 e!744293)))

(declare-fun c!125243 () Bool)

(assert (=> b!1304786 (= c!125243 (validKeyInArray!0 (select (arr!41909 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1304787 () Bool)

(declare-fun e!744292 () Bool)

(assert (=> b!1304787 (= e!744292 call!64301)))

(declare-fun d!141863 () Bool)

(declare-fun res!866586 () Bool)

(assert (=> d!141863 (=> res!866586 e!744291)))

(assert (=> d!141863 (= res!866586 (bvsge #b00000000000000000000000000000000 (size!42460 _keys!1741)))))

(assert (=> d!141863 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!744291)))

(declare-fun b!1304788 () Bool)

(assert (=> b!1304788 (= e!744293 e!744292)))

(declare-fun lt!583981 () (_ BitVec 64))

(assert (=> b!1304788 (= lt!583981 (select (arr!41909 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!583980 () Unit!43160)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86851 (_ BitVec 64) (_ BitVec 32)) Unit!43160)

(assert (=> b!1304788 (= lt!583980 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583981 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1304788 (arrayContainsKey!0 _keys!1741 lt!583981 #b00000000000000000000000000000000)))

(declare-fun lt!583979 () Unit!43160)

(assert (=> b!1304788 (= lt!583979 lt!583980)))

(declare-fun res!866587 () Bool)

(declare-datatypes ((SeekEntryResult!10025 0))(
  ( (MissingZero!10025 (index!42470 (_ BitVec 32))) (Found!10025 (index!42471 (_ BitVec 32))) (Intermediate!10025 (undefined!10837 Bool) (index!42472 (_ BitVec 32)) (x!115886 (_ BitVec 32))) (Undefined!10025) (MissingVacant!10025 (index!42473 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86851 (_ BitVec 32)) SeekEntryResult!10025)

(assert (=> b!1304788 (= res!866587 (= (seekEntryOrOpen!0 (select (arr!41909 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10025 #b00000000000000000000000000000000)))))

(assert (=> b!1304788 (=> (not res!866587) (not e!744292))))

(assert (= (and d!141863 (not res!866586)) b!1304786))

(assert (= (and b!1304786 c!125243) b!1304788))

(assert (= (and b!1304786 (not c!125243)) b!1304785))

(assert (= (and b!1304788 res!866587) b!1304787))

(assert (= (or b!1304787 b!1304785) bm!64298))

(declare-fun m!1195897 () Bool)

(assert (=> bm!64298 m!1195897))

(declare-fun m!1195899 () Bool)

(assert (=> b!1304786 m!1195899))

(assert (=> b!1304786 m!1195899))

(declare-fun m!1195901 () Bool)

(assert (=> b!1304786 m!1195901))

(assert (=> b!1304788 m!1195899))

(declare-fun m!1195903 () Bool)

(assert (=> b!1304788 m!1195903))

(declare-fun m!1195905 () Bool)

(assert (=> b!1304788 m!1195905))

(assert (=> b!1304788 m!1195899))

(declare-fun m!1195907 () Bool)

(assert (=> b!1304788 m!1195907))

(assert (=> b!1304738 d!141863))

(declare-fun b!1304799 () Bool)

(declare-fun e!744302 () Bool)

(declare-fun call!64304 () Bool)

(assert (=> b!1304799 (= e!744302 call!64304)))

(declare-fun b!1304800 () Bool)

(assert (=> b!1304800 (= e!744302 call!64304)))

(declare-fun b!1304801 () Bool)

(declare-fun e!744303 () Bool)

(declare-fun e!744304 () Bool)

(assert (=> b!1304801 (= e!744303 e!744304)))

(declare-fun res!866594 () Bool)

(assert (=> b!1304801 (=> (not res!866594) (not e!744304))))

(declare-fun e!744305 () Bool)

(assert (=> b!1304801 (= res!866594 (not e!744305))))

(declare-fun res!866595 () Bool)

(assert (=> b!1304801 (=> (not res!866595) (not e!744305))))

(assert (=> b!1304801 (= res!866595 (validKeyInArray!0 (select (arr!41909 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141865 () Bool)

(declare-fun res!866596 () Bool)

(assert (=> d!141865 (=> res!866596 e!744303)))

(assert (=> d!141865 (= res!866596 (bvsge #b00000000000000000000000000000000 (size!42460 _keys!1741)))))

(assert (=> d!141865 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29948) e!744303)))

(declare-fun b!1304802 () Bool)

(assert (=> b!1304802 (= e!744304 e!744302)))

(declare-fun c!125246 () Bool)

(assert (=> b!1304802 (= c!125246 (validKeyInArray!0 (select (arr!41909 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64301 () Bool)

(assert (=> bm!64301 (= call!64304 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125246 (Cons!29947 (select (arr!41909 _keys!1741) #b00000000000000000000000000000000) Nil!29948) Nil!29948)))))

(declare-fun b!1304803 () Bool)

(declare-fun contains!8329 (List!29951 (_ BitVec 64)) Bool)

(assert (=> b!1304803 (= e!744305 (contains!8329 Nil!29948 (select (arr!41909 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141865 (not res!866596)) b!1304801))

(assert (= (and b!1304801 res!866595) b!1304803))

(assert (= (and b!1304801 res!866594) b!1304802))

(assert (= (and b!1304802 c!125246) b!1304800))

(assert (= (and b!1304802 (not c!125246)) b!1304799))

(assert (= (or b!1304800 b!1304799) bm!64301))

(assert (=> b!1304801 m!1195899))

(assert (=> b!1304801 m!1195899))

(assert (=> b!1304801 m!1195901))

(assert (=> b!1304802 m!1195899))

(assert (=> b!1304802 m!1195899))

(assert (=> b!1304802 m!1195901))

(assert (=> bm!64301 m!1195899))

(declare-fun m!1195909 () Bool)

(assert (=> bm!64301 m!1195909))

(assert (=> b!1304803 m!1195899))

(assert (=> b!1304803 m!1195899))

(declare-fun m!1195911 () Bool)

(assert (=> b!1304803 m!1195911))

(assert (=> b!1304737 d!141865))

(declare-fun d!141867 () Bool)

(declare-fun e!744311 () Bool)

(assert (=> d!141867 e!744311))

(declare-fun res!866599 () Bool)

(assert (=> d!141867 (=> res!866599 e!744311)))

(declare-fun lt!583992 () Bool)

(assert (=> d!141867 (= res!866599 (not lt!583992))))

(declare-fun lt!583990 () Bool)

(assert (=> d!141867 (= lt!583992 lt!583990)))

(declare-fun lt!583993 () Unit!43160)

(declare-fun e!744310 () Unit!43160)

(assert (=> d!141867 (= lt!583993 e!744310)))

(declare-fun c!125249 () Bool)

(assert (=> d!141867 (= c!125249 lt!583990)))

(declare-fun containsKey!728 (List!29950 (_ BitVec 64)) Bool)

(assert (=> d!141867 (= lt!583990 (containsKey!728 (toList!10250 (ListLongMap!20470 Nil!29947)) k0!1205))))

(assert (=> d!141867 (= (contains!8327 (ListLongMap!20470 Nil!29947) k0!1205) lt!583992)))

(declare-fun b!1304810 () Bool)

(declare-fun lt!583991 () Unit!43160)

(assert (=> b!1304810 (= e!744310 lt!583991)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!473 (List!29950 (_ BitVec 64)) Unit!43160)

(assert (=> b!1304810 (= lt!583991 (lemmaContainsKeyImpliesGetValueByKeyDefined!473 (toList!10250 (ListLongMap!20470 Nil!29947)) k0!1205))))

(declare-datatypes ((Option!761 0))(
  ( (Some!760 (v!20163 V!51683)) (None!759) )
))
(declare-fun isDefined!513 (Option!761) Bool)

(declare-fun getValueByKey!710 (List!29950 (_ BitVec 64)) Option!761)

(assert (=> b!1304810 (isDefined!513 (getValueByKey!710 (toList!10250 (ListLongMap!20470 Nil!29947)) k0!1205))))

(declare-fun b!1304811 () Bool)

(declare-fun Unit!43164 () Unit!43160)

(assert (=> b!1304811 (= e!744310 Unit!43164)))

(declare-fun b!1304812 () Bool)

(assert (=> b!1304812 (= e!744311 (isDefined!513 (getValueByKey!710 (toList!10250 (ListLongMap!20470 Nil!29947)) k0!1205)))))

(assert (= (and d!141867 c!125249) b!1304810))

(assert (= (and d!141867 (not c!125249)) b!1304811))

(assert (= (and d!141867 (not res!866599)) b!1304812))

(declare-fun m!1195913 () Bool)

(assert (=> d!141867 m!1195913))

(declare-fun m!1195915 () Bool)

(assert (=> b!1304810 m!1195915))

(declare-fun m!1195917 () Bool)

(assert (=> b!1304810 m!1195917))

(assert (=> b!1304810 m!1195917))

(declare-fun m!1195919 () Bool)

(assert (=> b!1304810 m!1195919))

(assert (=> b!1304812 m!1195917))

(assert (=> b!1304812 m!1195917))

(assert (=> b!1304812 m!1195919))

(assert (=> b!1304733 d!141867))

(declare-fun d!141869 () Bool)

(assert (=> d!141869 (not (contains!8327 (ListLongMap!20470 Nil!29947) k0!1205))))

(declare-fun lt!583996 () Unit!43160)

(declare-fun choose!1942 ((_ BitVec 64)) Unit!43160)

(assert (=> d!141869 (= lt!583996 (choose!1942 k0!1205))))

(assert (=> d!141869 (= (emptyContainsNothing!233 k0!1205) lt!583996)))

(declare-fun bs!37166 () Bool)

(assert (= bs!37166 d!141869))

(assert (=> bs!37166 m!1195861))

(declare-fun m!1195921 () Bool)

(assert (=> bs!37166 m!1195921))

(assert (=> b!1304733 d!141869))

(declare-fun d!141871 () Bool)

(declare-fun e!744313 () Bool)

(assert (=> d!141871 e!744313))

(declare-fun res!866600 () Bool)

(assert (=> d!141871 (=> res!866600 e!744313)))

(declare-fun lt!583999 () Bool)

(assert (=> d!141871 (= res!866600 (not lt!583999))))

(declare-fun lt!583997 () Bool)

(assert (=> d!141871 (= lt!583999 lt!583997)))

(declare-fun lt!584000 () Unit!43160)

(declare-fun e!744312 () Unit!43160)

(assert (=> d!141871 (= lt!584000 e!744312)))

(declare-fun c!125250 () Bool)

(assert (=> d!141871 (= c!125250 lt!583997)))

(assert (=> d!141871 (= lt!583997 (containsKey!728 (toList!10250 (getCurrentListMap!5208 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141871 (= (contains!8327 (getCurrentListMap!5208 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!583999)))

(declare-fun b!1304813 () Bool)

(declare-fun lt!583998 () Unit!43160)

(assert (=> b!1304813 (= e!744312 lt!583998)))

(assert (=> b!1304813 (= lt!583998 (lemmaContainsKeyImpliesGetValueByKeyDefined!473 (toList!10250 (getCurrentListMap!5208 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> b!1304813 (isDefined!513 (getValueByKey!710 (toList!10250 (getCurrentListMap!5208 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1304814 () Bool)

(declare-fun Unit!43165 () Unit!43160)

(assert (=> b!1304814 (= e!744312 Unit!43165)))

(declare-fun b!1304815 () Bool)

(assert (=> b!1304815 (= e!744313 (isDefined!513 (getValueByKey!710 (toList!10250 (getCurrentListMap!5208 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141871 c!125250) b!1304813))

(assert (= (and d!141871 (not c!125250)) b!1304814))

(assert (= (and d!141871 (not res!866600)) b!1304815))

(declare-fun m!1195923 () Bool)

(assert (=> d!141871 m!1195923))

(declare-fun m!1195925 () Bool)

(assert (=> b!1304813 m!1195925))

(declare-fun m!1195927 () Bool)

(assert (=> b!1304813 m!1195927))

(assert (=> b!1304813 m!1195927))

(declare-fun m!1195929 () Bool)

(assert (=> b!1304813 m!1195929))

(assert (=> b!1304815 m!1195927))

(assert (=> b!1304815 m!1195927))

(assert (=> b!1304815 m!1195929))

(assert (=> b!1304736 d!141871))

(declare-fun b!1304858 () Bool)

(declare-fun e!744345 () Bool)

(declare-fun e!744343 () Bool)

(assert (=> b!1304858 (= e!744345 e!744343)))

(declare-fun res!866621 () Bool)

(assert (=> b!1304858 (=> (not res!866621) (not e!744343))))

(declare-fun lt!584053 () ListLongMap!20469)

(assert (=> b!1304858 (= res!866621 (contains!8327 lt!584053 (select (arr!41909 _keys!1741) from!2144)))))

(assert (=> b!1304858 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42460 _keys!1741)))))

(declare-fun bm!64317 () Bool)

(declare-fun call!64325 () ListLongMap!20469)

(declare-fun call!64320 () ListLongMap!20469)

(assert (=> bm!64317 (= call!64325 call!64320)))

(declare-fun b!1304859 () Bool)

(declare-fun e!744351 () Bool)

(declare-fun e!744346 () Bool)

(assert (=> b!1304859 (= e!744351 e!744346)))

(declare-fun c!125264 () Bool)

(assert (=> b!1304859 (= c!125264 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1304860 () Bool)

(declare-fun c!125263 () Bool)

(assert (=> b!1304860 (= c!125263 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!744340 () ListLongMap!20469)

(declare-fun e!744348 () ListLongMap!20469)

(assert (=> b!1304860 (= e!744340 e!744348)))

(declare-fun b!1304861 () Bool)

(declare-fun e!744342 () Bool)

(declare-fun apply!1060 (ListLongMap!20469 (_ BitVec 64)) V!51683)

(assert (=> b!1304861 (= e!744342 (= (apply!1060 lt!584053 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1304862 () Bool)

(declare-fun res!866619 () Bool)

(assert (=> b!1304862 (=> (not res!866619) (not e!744351))))

(assert (=> b!1304862 (= res!866619 e!744345)))

(declare-fun res!866625 () Bool)

(assert (=> b!1304862 (=> res!866625 e!744345)))

(declare-fun e!744341 () Bool)

(assert (=> b!1304862 (= res!866625 (not e!744341))))

(declare-fun res!866626 () Bool)

(assert (=> b!1304862 (=> (not res!866626) (not e!744341))))

(assert (=> b!1304862 (= res!866626 (bvslt from!2144 (size!42460 _keys!1741)))))

(declare-fun bm!64318 () Bool)

(declare-fun call!64322 () ListLongMap!20469)

(declare-fun call!64321 () ListLongMap!20469)

(assert (=> bm!64318 (= call!64322 call!64321)))

(declare-fun b!1304863 () Bool)

(declare-fun get!21221 (ValueCell!16569 V!51683) V!51683)

(declare-fun dynLambda!3512 (Int (_ BitVec 64)) V!51683)

(assert (=> b!1304863 (= e!744343 (= (apply!1060 lt!584053 (select (arr!41909 _keys!1741) from!2144)) (get!21221 (select (arr!41910 _values!1445) from!2144) (dynLambda!3512 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1304863 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42461 _values!1445)))))

(assert (=> b!1304863 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42460 _keys!1741)))))

(declare-fun call!64323 () ListLongMap!20469)

(declare-fun c!125268 () Bool)

(declare-fun bm!64319 () Bool)

(declare-fun c!125265 () Bool)

(assert (=> bm!64319 (= call!64321 (+!4467 (ite c!125268 call!64320 (ite c!125265 call!64325 call!64323)) (ite (or c!125268 c!125265) (tuple2!22801 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun bm!64320 () Bool)

(assert (=> bm!64320 (= call!64323 call!64325)))

(declare-fun b!1304864 () Bool)

(assert (=> b!1304864 (= e!744348 call!64323)))

(declare-fun b!1304865 () Bool)

(declare-fun call!64319 () Bool)

(assert (=> b!1304865 (= e!744346 (not call!64319))))

(declare-fun b!1304866 () Bool)

(declare-fun e!744350 () ListLongMap!20469)

(assert (=> b!1304866 (= e!744350 e!744340)))

(assert (=> b!1304866 (= c!125265 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1304867 () Bool)

(declare-fun e!744344 () Bool)

(assert (=> b!1304867 (= e!744346 e!744344)))

(declare-fun res!866627 () Bool)

(assert (=> b!1304867 (= res!866627 call!64319)))

(assert (=> b!1304867 (=> (not res!866627) (not e!744344))))

(declare-fun bm!64321 () Bool)

(assert (=> bm!64321 (= call!64320 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun d!141873 () Bool)

(assert (=> d!141873 e!744351))

(declare-fun res!866622 () Bool)

(assert (=> d!141873 (=> (not res!866622) (not e!744351))))

(assert (=> d!141873 (= res!866622 (or (bvsge from!2144 (size!42460 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42460 _keys!1741)))))))

(declare-fun lt!584060 () ListLongMap!20469)

(assert (=> d!141873 (= lt!584053 lt!584060)))

(declare-fun lt!584065 () Unit!43160)

(declare-fun e!744347 () Unit!43160)

(assert (=> d!141873 (= lt!584065 e!744347)))

(declare-fun c!125267 () Bool)

(declare-fun e!744352 () Bool)

(assert (=> d!141873 (= c!125267 e!744352)))

(declare-fun res!866620 () Bool)

(assert (=> d!141873 (=> (not res!866620) (not e!744352))))

(assert (=> d!141873 (= res!866620 (bvslt from!2144 (size!42460 _keys!1741)))))

(assert (=> d!141873 (= lt!584060 e!744350)))

(assert (=> d!141873 (= c!125268 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141873 (validMask!0 mask!2175)))

(assert (=> d!141873 (= (getCurrentListMap!5208 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!584053)))

(declare-fun bm!64316 () Bool)

(declare-fun call!64324 () Bool)

(assert (=> bm!64316 (= call!64324 (contains!8327 lt!584053 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304868 () Bool)

(declare-fun Unit!43166 () Unit!43160)

(assert (=> b!1304868 (= e!744347 Unit!43166)))

(declare-fun b!1304869 () Bool)

(assert (=> b!1304869 (= e!744344 (= (apply!1060 lt!584053 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1304870 () Bool)

(declare-fun e!744349 () Bool)

(assert (=> b!1304870 (= e!744349 e!744342)))

(declare-fun res!866623 () Bool)

(assert (=> b!1304870 (= res!866623 call!64324)))

(assert (=> b!1304870 (=> (not res!866623) (not e!744342))))

(declare-fun b!1304871 () Bool)

(assert (=> b!1304871 (= e!744341 (validKeyInArray!0 (select (arr!41909 _keys!1741) from!2144)))))

(declare-fun b!1304872 () Bool)

(assert (=> b!1304872 (= e!744348 call!64322)))

(declare-fun b!1304873 () Bool)

(declare-fun lt!584056 () Unit!43160)

(assert (=> b!1304873 (= e!744347 lt!584056)))

(declare-fun lt!584066 () ListLongMap!20469)

(assert (=> b!1304873 (= lt!584066 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584052 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584052 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584063 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584063 (select (arr!41909 _keys!1741) from!2144))))

(declare-fun lt!584057 () Unit!43160)

(declare-fun addStillContains!1129 (ListLongMap!20469 (_ BitVec 64) V!51683 (_ BitVec 64)) Unit!43160)

(assert (=> b!1304873 (= lt!584057 (addStillContains!1129 lt!584066 lt!584052 zeroValue!1387 lt!584063))))

(assert (=> b!1304873 (contains!8327 (+!4467 lt!584066 (tuple2!22801 lt!584052 zeroValue!1387)) lt!584063)))

(declare-fun lt!584058 () Unit!43160)

(assert (=> b!1304873 (= lt!584058 lt!584057)))

(declare-fun lt!584055 () ListLongMap!20469)

(assert (=> b!1304873 (= lt!584055 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584049 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584049 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584047 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584047 (select (arr!41909 _keys!1741) from!2144))))

(declare-fun lt!584064 () Unit!43160)

(declare-fun addApplyDifferent!563 (ListLongMap!20469 (_ BitVec 64) V!51683 (_ BitVec 64)) Unit!43160)

(assert (=> b!1304873 (= lt!584064 (addApplyDifferent!563 lt!584055 lt!584049 minValue!1387 lt!584047))))

(assert (=> b!1304873 (= (apply!1060 (+!4467 lt!584055 (tuple2!22801 lt!584049 minValue!1387)) lt!584047) (apply!1060 lt!584055 lt!584047))))

(declare-fun lt!584054 () Unit!43160)

(assert (=> b!1304873 (= lt!584054 lt!584064)))

(declare-fun lt!584050 () ListLongMap!20469)

(assert (=> b!1304873 (= lt!584050 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584051 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584051 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584045 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584045 (select (arr!41909 _keys!1741) from!2144))))

(declare-fun lt!584048 () Unit!43160)

(assert (=> b!1304873 (= lt!584048 (addApplyDifferent!563 lt!584050 lt!584051 zeroValue!1387 lt!584045))))

(assert (=> b!1304873 (= (apply!1060 (+!4467 lt!584050 (tuple2!22801 lt!584051 zeroValue!1387)) lt!584045) (apply!1060 lt!584050 lt!584045))))

(declare-fun lt!584061 () Unit!43160)

(assert (=> b!1304873 (= lt!584061 lt!584048)))

(declare-fun lt!584062 () ListLongMap!20469)

(assert (=> b!1304873 (= lt!584062 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!584046 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584046 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!584059 () (_ BitVec 64))

(assert (=> b!1304873 (= lt!584059 (select (arr!41909 _keys!1741) from!2144))))

(assert (=> b!1304873 (= lt!584056 (addApplyDifferent!563 lt!584062 lt!584046 minValue!1387 lt!584059))))

(assert (=> b!1304873 (= (apply!1060 (+!4467 lt!584062 (tuple2!22801 lt!584046 minValue!1387)) lt!584059) (apply!1060 lt!584062 lt!584059))))

(declare-fun b!1304874 () Bool)

(assert (=> b!1304874 (= e!744350 (+!4467 call!64321 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1304875 () Bool)

(assert (=> b!1304875 (= e!744349 (not call!64324))))

(declare-fun bm!64322 () Bool)

(assert (=> bm!64322 (= call!64319 (contains!8327 lt!584053 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1304876 () Bool)

(assert (=> b!1304876 (= e!744352 (validKeyInArray!0 (select (arr!41909 _keys!1741) from!2144)))))

(declare-fun b!1304877 () Bool)

(declare-fun res!866624 () Bool)

(assert (=> b!1304877 (=> (not res!866624) (not e!744351))))

(assert (=> b!1304877 (= res!866624 e!744349)))

(declare-fun c!125266 () Bool)

(assert (=> b!1304877 (= c!125266 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1304878 () Bool)

(assert (=> b!1304878 (= e!744340 call!64322)))

(assert (= (and d!141873 c!125268) b!1304874))

(assert (= (and d!141873 (not c!125268)) b!1304866))

(assert (= (and b!1304866 c!125265) b!1304878))

(assert (= (and b!1304866 (not c!125265)) b!1304860))

(assert (= (and b!1304860 c!125263) b!1304872))

(assert (= (and b!1304860 (not c!125263)) b!1304864))

(assert (= (or b!1304872 b!1304864) bm!64320))

(assert (= (or b!1304878 bm!64320) bm!64317))

(assert (= (or b!1304878 b!1304872) bm!64318))

(assert (= (or b!1304874 bm!64317) bm!64321))

(assert (= (or b!1304874 bm!64318) bm!64319))

(assert (= (and d!141873 res!866620) b!1304876))

(assert (= (and d!141873 c!125267) b!1304873))

(assert (= (and d!141873 (not c!125267)) b!1304868))

(assert (= (and d!141873 res!866622) b!1304862))

(assert (= (and b!1304862 res!866626) b!1304871))

(assert (= (and b!1304862 (not res!866625)) b!1304858))

(assert (= (and b!1304858 res!866621) b!1304863))

(assert (= (and b!1304862 res!866619) b!1304877))

(assert (= (and b!1304877 c!125266) b!1304870))

(assert (= (and b!1304877 (not c!125266)) b!1304875))

(assert (= (and b!1304870 res!866623) b!1304861))

(assert (= (or b!1304870 b!1304875) bm!64316))

(assert (= (and b!1304877 res!866624) b!1304859))

(assert (= (and b!1304859 c!125264) b!1304867))

(assert (= (and b!1304859 (not c!125264)) b!1304865))

(assert (= (and b!1304867 res!866627) b!1304869))

(assert (= (or b!1304867 b!1304865) bm!64322))

(declare-fun b_lambda!23337 () Bool)

(assert (=> (not b_lambda!23337) (not b!1304863)))

(declare-fun t!43561 () Bool)

(declare-fun tb!11413 () Bool)

(assert (=> (and start!110260 (= defaultEntry!1448 defaultEntry!1448) t!43561) tb!11413))

(declare-fun result!23845 () Bool)

(assert (=> tb!11413 (= result!23845 tp_is_empty!34935)))

(assert (=> b!1304863 t!43561))

(declare-fun b_and!47499 () Bool)

(assert (= b_and!47495 (and (=> t!43561 result!23845) b_and!47499)))

(assert (=> b!1304858 m!1195857))

(assert (=> b!1304858 m!1195857))

(declare-fun m!1195931 () Bool)

(assert (=> b!1304858 m!1195931))

(assert (=> d!141873 m!1195847))

(assert (=> bm!64321 m!1195843))

(declare-fun m!1195933 () Bool)

(assert (=> bm!64316 m!1195933))

(declare-fun m!1195935 () Bool)

(assert (=> bm!64319 m!1195935))

(assert (=> b!1304876 m!1195857))

(assert (=> b!1304876 m!1195857))

(assert (=> b!1304876 m!1195859))

(declare-fun m!1195937 () Bool)

(assert (=> b!1304873 m!1195937))

(declare-fun m!1195939 () Bool)

(assert (=> b!1304873 m!1195939))

(declare-fun m!1195941 () Bool)

(assert (=> b!1304873 m!1195941))

(declare-fun m!1195943 () Bool)

(assert (=> b!1304873 m!1195943))

(declare-fun m!1195945 () Bool)

(assert (=> b!1304873 m!1195945))

(declare-fun m!1195947 () Bool)

(assert (=> b!1304873 m!1195947))

(declare-fun m!1195949 () Bool)

(assert (=> b!1304873 m!1195949))

(assert (=> b!1304873 m!1195843))

(assert (=> b!1304873 m!1195949))

(declare-fun m!1195951 () Bool)

(assert (=> b!1304873 m!1195951))

(declare-fun m!1195953 () Bool)

(assert (=> b!1304873 m!1195953))

(assert (=> b!1304873 m!1195947))

(declare-fun m!1195955 () Bool)

(assert (=> b!1304873 m!1195955))

(declare-fun m!1195957 () Bool)

(assert (=> b!1304873 m!1195957))

(declare-fun m!1195959 () Bool)

(assert (=> b!1304873 m!1195959))

(assert (=> b!1304873 m!1195957))

(declare-fun m!1195961 () Bool)

(assert (=> b!1304873 m!1195961))

(assert (=> b!1304873 m!1195939))

(assert (=> b!1304873 m!1195857))

(declare-fun m!1195963 () Bool)

(assert (=> b!1304873 m!1195963))

(declare-fun m!1195965 () Bool)

(assert (=> b!1304873 m!1195965))

(declare-fun m!1195967 () Bool)

(assert (=> b!1304869 m!1195967))

(assert (=> b!1304871 m!1195857))

(assert (=> b!1304871 m!1195857))

(assert (=> b!1304871 m!1195859))

(declare-fun m!1195969 () Bool)

(assert (=> b!1304874 m!1195969))

(declare-fun m!1195971 () Bool)

(assert (=> b!1304863 m!1195971))

(assert (=> b!1304863 m!1195857))

(assert (=> b!1304863 m!1195857))

(declare-fun m!1195973 () Bool)

(assert (=> b!1304863 m!1195973))

(assert (=> b!1304863 m!1195971))

(declare-fun m!1195975 () Bool)

(assert (=> b!1304863 m!1195975))

(declare-fun m!1195977 () Bool)

(assert (=> b!1304863 m!1195977))

(assert (=> b!1304863 m!1195975))

(declare-fun m!1195979 () Bool)

(assert (=> bm!64322 m!1195979))

(declare-fun m!1195981 () Bool)

(assert (=> b!1304861 m!1195981))

(assert (=> b!1304736 d!141873))

(declare-fun d!141875 () Bool)

(assert (=> d!141875 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110260 d!141875))

(declare-fun d!141877 () Bool)

(assert (=> d!141877 (= (array_inv!31695 _values!1445) (bvsge (size!42461 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110260 d!141877))

(declare-fun d!141879 () Bool)

(assert (=> d!141879 (= (array_inv!31696 _keys!1741) (bvsge (size!42460 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110260 d!141879))

(declare-fun d!141881 () Bool)

(assert (=> d!141881 (= (validKeyInArray!0 (select (arr!41909 _keys!1741) from!2144)) (and (not (= (select (arr!41909 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41909 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1304731 d!141881))

(declare-fun d!141883 () Bool)

(declare-fun e!744354 () Bool)

(assert (=> d!141883 e!744354))

(declare-fun res!866628 () Bool)

(assert (=> d!141883 (=> res!866628 e!744354)))

(declare-fun lt!584069 () Bool)

(assert (=> d!141883 (= res!866628 (not lt!584069))))

(declare-fun lt!584067 () Bool)

(assert (=> d!141883 (= lt!584069 lt!584067)))

(declare-fun lt!584070 () Unit!43160)

(declare-fun e!744353 () Unit!43160)

(assert (=> d!141883 (= lt!584070 e!744353)))

(declare-fun c!125269 () Bool)

(assert (=> d!141883 (= c!125269 lt!584067)))

(assert (=> d!141883 (= lt!584067 (containsKey!728 (toList!10250 (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> d!141883 (= (contains!8327 (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205) lt!584069)))

(declare-fun b!1304881 () Bool)

(declare-fun lt!584068 () Unit!43160)

(assert (=> b!1304881 (= e!744353 lt!584068)))

(assert (=> b!1304881 (= lt!584068 (lemmaContainsKeyImpliesGetValueByKeyDefined!473 (toList!10250 (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(assert (=> b!1304881 (isDefined!513 (getValueByKey!710 (toList!10250 (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205))))

(declare-fun b!1304882 () Bool)

(declare-fun Unit!43167 () Unit!43160)

(assert (=> b!1304882 (= e!744353 Unit!43167)))

(declare-fun b!1304883 () Bool)

(assert (=> b!1304883 (= e!744354 (isDefined!513 (getValueByKey!710 (toList!10250 (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) k0!1205)))))

(assert (= (and d!141883 c!125269) b!1304881))

(assert (= (and d!141883 (not c!125269)) b!1304882))

(assert (= (and d!141883 (not res!866628)) b!1304883))

(declare-fun m!1195983 () Bool)

(assert (=> d!141883 m!1195983))

(declare-fun m!1195985 () Bool)

(assert (=> b!1304881 m!1195985))

(declare-fun m!1195987 () Bool)

(assert (=> b!1304881 m!1195987))

(assert (=> b!1304881 m!1195987))

(declare-fun m!1195989 () Bool)

(assert (=> b!1304881 m!1195989))

(assert (=> b!1304883 m!1195987))

(assert (=> b!1304883 m!1195987))

(assert (=> b!1304883 m!1195989))

(assert (=> b!1304730 d!141883))

(declare-fun d!141885 () Bool)

(declare-fun e!744357 () Bool)

(assert (=> d!141885 e!744357))

(declare-fun res!866633 () Bool)

(assert (=> d!141885 (=> (not res!866633) (not e!744357))))

(declare-fun lt!584080 () ListLongMap!20469)

(assert (=> d!141885 (= res!866633 (contains!8327 lt!584080 (_1!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lt!584081 () List!29950)

(assert (=> d!141885 (= lt!584080 (ListLongMap!20470 lt!584081))))

(declare-fun lt!584082 () Unit!43160)

(declare-fun lt!584079 () Unit!43160)

(assert (=> d!141885 (= lt!584082 lt!584079)))

(assert (=> d!141885 (= (getValueByKey!710 lt!584081 (_1!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!760 (_2!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!354 (List!29950 (_ BitVec 64) V!51683) Unit!43160)

(assert (=> d!141885 (= lt!584079 (lemmaContainsTupThenGetReturnValue!354 lt!584081 (_1!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun insertStrictlySorted!483 (List!29950 (_ BitVec 64) V!51683) List!29950)

(assert (=> d!141885 (= lt!584081 (insertStrictlySorted!483 (toList!10250 lt!583961) (_1!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) (_2!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (=> d!141885 (= (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) lt!584080)))

(declare-fun b!1304888 () Bool)

(declare-fun res!866634 () Bool)

(assert (=> b!1304888 (=> (not res!866634) (not e!744357))))

(assert (=> b!1304888 (= res!866634 (= (getValueByKey!710 (toList!10250 lt!584080) (_1!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))) (Some!760 (_2!11410 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))))

(declare-fun b!1304889 () Bool)

(declare-fun contains!8330 (List!29950 tuple2!22800) Bool)

(assert (=> b!1304889 (= e!744357 (contains!8330 (toList!10250 lt!584080) (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(assert (= (and d!141885 res!866633) b!1304888))

(assert (= (and b!1304888 res!866634) b!1304889))

(declare-fun m!1195991 () Bool)

(assert (=> d!141885 m!1195991))

(declare-fun m!1195993 () Bool)

(assert (=> d!141885 m!1195993))

(declare-fun m!1195995 () Bool)

(assert (=> d!141885 m!1195995))

(declare-fun m!1195997 () Bool)

(assert (=> d!141885 m!1195997))

(declare-fun m!1195999 () Bool)

(assert (=> b!1304888 m!1195999))

(declare-fun m!1196001 () Bool)

(assert (=> b!1304889 m!1196001))

(assert (=> b!1304730 d!141885))

(declare-fun d!141887 () Bool)

(assert (=> d!141887 (not (contains!8327 (+!4467 lt!583961 (tuple2!22801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!584085 () Unit!43160)

(declare-fun choose!1943 (ListLongMap!20469 (_ BitVec 64) V!51683 (_ BitVec 64)) Unit!43160)

(assert (=> d!141887 (= lt!584085 (choose!1943 lt!583961 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun e!744360 () Bool)

(assert (=> d!141887 e!744360))

(declare-fun res!866637 () Bool)

(assert (=> d!141887 (=> (not res!866637) (not e!744360))))

(assert (=> d!141887 (= res!866637 (not (contains!8327 lt!583961 k0!1205)))))

(assert (=> d!141887 (= (addStillNotContains!491 lt!583961 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205) lt!584085)))

(declare-fun b!1304893 () Bool)

(assert (=> b!1304893 (= e!744360 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(assert (= (and d!141887 res!866637) b!1304893))

(assert (=> d!141887 m!1195837))

(assert (=> d!141887 m!1195837))

(assert (=> d!141887 m!1195839))

(declare-fun m!1196003 () Bool)

(assert (=> d!141887 m!1196003))

(declare-fun m!1196005 () Bool)

(assert (=> d!141887 m!1196005))

(assert (=> b!1304730 d!141887))

(declare-fun b!1304918 () Bool)

(declare-fun e!744377 () Bool)

(declare-fun e!744381 () Bool)

(assert (=> b!1304918 (= e!744377 e!744381)))

(declare-fun c!125281 () Bool)

(declare-fun e!744379 () Bool)

(assert (=> b!1304918 (= c!125281 e!744379)))

(declare-fun res!866648 () Bool)

(assert (=> b!1304918 (=> (not res!866648) (not e!744379))))

(assert (=> b!1304918 (= res!866648 (bvslt from!2144 (size!42460 _keys!1741)))))

(declare-fun b!1304919 () Bool)

(declare-fun e!744380 () Bool)

(declare-fun lt!584101 () ListLongMap!20469)

(declare-fun isEmpty!1072 (ListLongMap!20469) Bool)

(assert (=> b!1304919 (= e!744380 (isEmpty!1072 lt!584101))))

(declare-fun b!1304920 () Bool)

(declare-fun lt!584105 () Unit!43160)

(declare-fun lt!584103 () Unit!43160)

(assert (=> b!1304920 (= lt!584105 lt!584103)))

(declare-fun lt!584100 () ListLongMap!20469)

(declare-fun lt!584102 () (_ BitVec 64))

(declare-fun lt!584106 () (_ BitVec 64))

(declare-fun lt!584104 () V!51683)

(assert (=> b!1304920 (not (contains!8327 (+!4467 lt!584100 (tuple2!22801 lt!584106 lt!584104)) lt!584102))))

(assert (=> b!1304920 (= lt!584103 (addStillNotContains!491 lt!584100 lt!584106 lt!584104 lt!584102))))

(assert (=> b!1304920 (= lt!584102 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1304920 (= lt!584104 (get!21221 (select (arr!41910 _values!1445) from!2144) (dynLambda!3512 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1304920 (= lt!584106 (select (arr!41909 _keys!1741) from!2144))))

(declare-fun call!64328 () ListLongMap!20469)

(assert (=> b!1304920 (= lt!584100 call!64328)))

(declare-fun e!744375 () ListLongMap!20469)

(assert (=> b!1304920 (= e!744375 (+!4467 call!64328 (tuple2!22801 (select (arr!41909 _keys!1741) from!2144) (get!21221 (select (arr!41910 _values!1445) from!2144) (dynLambda!3512 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1304921 () Bool)

(assert (=> b!1304921 (= e!744379 (validKeyInArray!0 (select (arr!41909 _keys!1741) from!2144)))))

(assert (=> b!1304921 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun bm!64325 () Bool)

(assert (=> bm!64325 (= call!64328 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1304922 () Bool)

(assert (=> b!1304922 (= e!744375 call!64328)))

(declare-fun b!1304923 () Bool)

(assert (=> b!1304923 (= e!744381 e!744380)))

(declare-fun c!125278 () Bool)

(assert (=> b!1304923 (= c!125278 (bvslt from!2144 (size!42460 _keys!1741)))))

(declare-fun b!1304924 () Bool)

(declare-fun res!866649 () Bool)

(assert (=> b!1304924 (=> (not res!866649) (not e!744377))))

(assert (=> b!1304924 (= res!866649 (not (contains!8327 lt!584101 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!141889 () Bool)

(assert (=> d!141889 e!744377))

(declare-fun res!866647 () Bool)

(assert (=> d!141889 (=> (not res!866647) (not e!744377))))

(assert (=> d!141889 (= res!866647 (not (contains!8327 lt!584101 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!744376 () ListLongMap!20469)

(assert (=> d!141889 (= lt!584101 e!744376)))

(declare-fun c!125279 () Bool)

(assert (=> d!141889 (= c!125279 (bvsge from!2144 (size!42460 _keys!1741)))))

(assert (=> d!141889 (validMask!0 mask!2175)))

(assert (=> d!141889 (= (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!584101)))

(declare-fun b!1304925 () Bool)

(assert (=> b!1304925 (= e!744380 (= lt!584101 (getCurrentListMapNoExtraKeys!6184 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1304926 () Bool)

(declare-fun e!744378 () Bool)

(assert (=> b!1304926 (= e!744381 e!744378)))

(assert (=> b!1304926 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42460 _keys!1741)))))

(declare-fun res!866646 () Bool)

(assert (=> b!1304926 (= res!866646 (contains!8327 lt!584101 (select (arr!41909 _keys!1741) from!2144)))))

(assert (=> b!1304926 (=> (not res!866646) (not e!744378))))

(declare-fun b!1304927 () Bool)

(assert (=> b!1304927 (= e!744376 e!744375)))

(declare-fun c!125280 () Bool)

(assert (=> b!1304927 (= c!125280 (validKeyInArray!0 (select (arr!41909 _keys!1741) from!2144)))))

(declare-fun b!1304928 () Bool)

(assert (=> b!1304928 (= e!744376 (ListLongMap!20470 Nil!29947))))

(declare-fun b!1304929 () Bool)

(assert (=> b!1304929 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42460 _keys!1741)))))

(assert (=> b!1304929 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42461 _values!1445)))))

(assert (=> b!1304929 (= e!744378 (= (apply!1060 lt!584101 (select (arr!41909 _keys!1741) from!2144)) (get!21221 (select (arr!41910 _values!1445) from!2144) (dynLambda!3512 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!141889 c!125279) b!1304928))

(assert (= (and d!141889 (not c!125279)) b!1304927))

(assert (= (and b!1304927 c!125280) b!1304920))

(assert (= (and b!1304927 (not c!125280)) b!1304922))

(assert (= (or b!1304920 b!1304922) bm!64325))

(assert (= (and d!141889 res!866647) b!1304924))

(assert (= (and b!1304924 res!866649) b!1304918))

(assert (= (and b!1304918 res!866648) b!1304921))

(assert (= (and b!1304918 c!125281) b!1304926))

(assert (= (and b!1304918 (not c!125281)) b!1304923))

(assert (= (and b!1304926 res!866646) b!1304929))

(assert (= (and b!1304923 c!125278) b!1304925))

(assert (= (and b!1304923 (not c!125278)) b!1304919))

(declare-fun b_lambda!23339 () Bool)

(assert (=> (not b_lambda!23339) (not b!1304920)))

(assert (=> b!1304920 t!43561))

(declare-fun b_and!47501 () Bool)

(assert (= b_and!47499 (and (=> t!43561 result!23845) b_and!47501)))

(declare-fun b_lambda!23341 () Bool)

(assert (=> (not b_lambda!23341) (not b!1304929)))

(assert (=> b!1304929 t!43561))

(declare-fun b_and!47503 () Bool)

(assert (= b_and!47501 (and (=> t!43561 result!23845) b_and!47503)))

(declare-fun m!1196007 () Bool)

(assert (=> d!141889 m!1196007))

(assert (=> d!141889 m!1195847))

(assert (=> b!1304929 m!1195971))

(assert (=> b!1304929 m!1195975))

(assert (=> b!1304929 m!1195977))

(assert (=> b!1304929 m!1195857))

(declare-fun m!1196009 () Bool)

(assert (=> b!1304929 m!1196009))

(assert (=> b!1304929 m!1195975))

(assert (=> b!1304929 m!1195857))

(assert (=> b!1304929 m!1195971))

(assert (=> b!1304927 m!1195857))

(assert (=> b!1304927 m!1195857))

(assert (=> b!1304927 m!1195859))

(declare-fun m!1196011 () Bool)

(assert (=> b!1304919 m!1196011))

(assert (=> b!1304921 m!1195857))

(assert (=> b!1304921 m!1195857))

(assert (=> b!1304921 m!1195859))

(assert (=> b!1304926 m!1195857))

(assert (=> b!1304926 m!1195857))

(declare-fun m!1196013 () Bool)

(assert (=> b!1304926 m!1196013))

(declare-fun m!1196015 () Bool)

(assert (=> bm!64325 m!1196015))

(declare-fun m!1196017 () Bool)

(assert (=> b!1304924 m!1196017))

(declare-fun m!1196019 () Bool)

(assert (=> b!1304920 m!1196019))

(assert (=> b!1304920 m!1195971))

(assert (=> b!1304920 m!1195975))

(assert (=> b!1304920 m!1195977))

(declare-fun m!1196021 () Bool)

(assert (=> b!1304920 m!1196021))

(assert (=> b!1304920 m!1196021))

(declare-fun m!1196023 () Bool)

(assert (=> b!1304920 m!1196023))

(declare-fun m!1196025 () Bool)

(assert (=> b!1304920 m!1196025))

(assert (=> b!1304920 m!1195975))

(assert (=> b!1304920 m!1195857))

(assert (=> b!1304920 m!1195971))

(assert (=> b!1304925 m!1196015))

(assert (=> b!1304730 d!141889))

(declare-fun b!1304937 () Bool)

(declare-fun e!744387 () Bool)

(assert (=> b!1304937 (= e!744387 tp_is_empty!34935)))

(declare-fun condMapEmpty!54012 () Bool)

(declare-fun mapDefault!54012 () ValueCell!16569)

(assert (=> mapNonEmpty!54006 (= condMapEmpty!54012 (= mapRest!54006 ((as const (Array (_ BitVec 32) ValueCell!16569)) mapDefault!54012)))))

(declare-fun mapRes!54012 () Bool)

(assert (=> mapNonEmpty!54006 (= tp!103047 (and e!744387 mapRes!54012))))

(declare-fun mapIsEmpty!54012 () Bool)

(assert (=> mapIsEmpty!54012 mapRes!54012))

(declare-fun mapNonEmpty!54012 () Bool)

(declare-fun tp!103057 () Bool)

(declare-fun e!744386 () Bool)

(assert (=> mapNonEmpty!54012 (= mapRes!54012 (and tp!103057 e!744386))))

(declare-fun mapValue!54012 () ValueCell!16569)

(declare-fun mapRest!54012 () (Array (_ BitVec 32) ValueCell!16569))

(declare-fun mapKey!54012 () (_ BitVec 32))

(assert (=> mapNonEmpty!54012 (= mapRest!54006 (store mapRest!54012 mapKey!54012 mapValue!54012))))

(declare-fun b!1304936 () Bool)

(assert (=> b!1304936 (= e!744386 tp_is_empty!34935)))

(assert (= (and mapNonEmpty!54006 condMapEmpty!54012) mapIsEmpty!54012))

(assert (= (and mapNonEmpty!54006 (not condMapEmpty!54012)) mapNonEmpty!54012))

(assert (= (and mapNonEmpty!54012 ((_ is ValueCellFull!16569) mapValue!54012)) b!1304936))

(assert (= (and mapNonEmpty!54006 ((_ is ValueCellFull!16569) mapDefault!54012)) b!1304937))

(declare-fun m!1196027 () Bool)

(assert (=> mapNonEmpty!54012 m!1196027))

(declare-fun b_lambda!23343 () Bool)

(assert (= b_lambda!23339 (or (and start!110260 b_free!29295) b_lambda!23343)))

(declare-fun b_lambda!23345 () Bool)

(assert (= b_lambda!23337 (or (and start!110260 b_free!29295) b_lambda!23345)))

(declare-fun b_lambda!23347 () Bool)

(assert (= b_lambda!23341 (or (and start!110260 b_free!29295) b_lambda!23347)))

(check-sat (not d!141867) (not b!1304803) (not b!1304788) (not b_lambda!23345) (not b!1304861) (not bm!64325) (not b!1304802) (not b!1304858) (not b!1304874) (not b!1304927) (not b!1304812) (not d!141873) (not d!141889) (not b!1304813) (not b_lambda!23347) b_and!47503 (not bm!64319) (not b!1304929) (not bm!64316) (not d!141883) tp_is_empty!34935 (not b!1304883) (not b_next!29295) (not b!1304810) (not d!141871) (not b!1304889) (not b!1304815) (not b!1304924) (not d!141885) (not b!1304876) (not b!1304925) (not b_lambda!23343) (not b!1304871) (not d!141887) (not bm!64298) (not b!1304801) (not bm!64321) (not b!1304873) (not b!1304921) (not d!141869) (not mapNonEmpty!54012) (not bm!64301) (not b!1304926) (not b!1304920) (not b!1304863) (not b!1304869) (not b!1304786) (not b!1304919) (not b!1304881) (not b!1304888) (not bm!64322))
(check-sat b_and!47503 (not b_next!29295))
