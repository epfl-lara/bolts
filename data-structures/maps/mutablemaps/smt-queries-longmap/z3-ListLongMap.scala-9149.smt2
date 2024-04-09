; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109772 () Bool)

(assert start!109772)

(declare-fun b_free!29169 () Bool)

(declare-fun b_next!29169 () Bool)

(assert (=> start!109772 (= b_free!29169 (not b_next!29169))))

(declare-fun tp!102636 () Bool)

(declare-fun b_and!47281 () Bool)

(assert (=> start!109772 (= tp!102636 b_and!47281)))

(declare-datatypes ((V!51515 0))(
  ( (V!51516 (val!17479 Int)) )
))
(declare-fun minValue!1387 () V!51515)

(declare-fun zeroValue!1387 () V!51515)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun e!741500 () Bool)

(declare-fun b!1299790 () Bool)

(declare-datatypes ((ValueCell!16506 0))(
  ( (ValueCellFull!16506 (v!20083 V!51515)) (EmptyCell!16506) )
))
(declare-datatypes ((array!86589 0))(
  ( (array!86590 (arr!41788 (Array (_ BitVec 32) ValueCell!16506)) (size!42339 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86589)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86591 0))(
  ( (array!86592 (arr!41789 (Array (_ BitVec 32) (_ BitVec 64))) (size!42340 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86591)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22692 0))(
  ( (tuple2!22693 (_1!11356 (_ BitVec 64)) (_2!11356 V!51515)) )
))
(declare-datatypes ((List!29850 0))(
  ( (Nil!29847) (Cons!29846 (h!31055 tuple2!22692) (t!43427 List!29850)) )
))
(declare-datatypes ((ListLongMap!20361 0))(
  ( (ListLongMap!20362 (toList!10196 List!29850)) )
))
(declare-fun contains!8254 (ListLongMap!20361 (_ BitVec 64)) Bool)

(declare-fun +!4426 (ListLongMap!20361 tuple2!22692) ListLongMap!20361)

(declare-fun getCurrentListMapNoExtraKeys!6139 (array!86591 array!86589 (_ BitVec 32) (_ BitVec 32) V!51515 V!51515 (_ BitVec 32) Int) ListLongMap!20361)

(assert (=> b!1299790 (= e!741500 (not (contains!8254 (+!4426 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205)))))

(declare-fun b!1299791 () Bool)

(declare-fun res!863868 () Bool)

(assert (=> b!1299791 (=> (not res!863868) (not e!741500))))

(declare-datatypes ((List!29851 0))(
  ( (Nil!29848) (Cons!29847 (h!31056 (_ BitVec 64)) (t!43428 List!29851)) )
))
(declare-fun arrayNoDuplicates!0 (array!86591 (_ BitVec 32) List!29851) Bool)

(assert (=> b!1299791 (= res!863868 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29848))))

(declare-fun b!1299792 () Bool)

(declare-fun e!741499 () Bool)

(declare-fun tp_is_empty!34809 () Bool)

(assert (=> b!1299792 (= e!741499 tp_is_empty!34809)))

(declare-fun mapIsEmpty!53783 () Bool)

(declare-fun mapRes!53783 () Bool)

(assert (=> mapIsEmpty!53783 mapRes!53783))

(declare-fun b!1299793 () Bool)

(declare-fun res!863870 () Bool)

(assert (=> b!1299793 (=> (not res!863870) (not e!741500))))

(assert (=> b!1299793 (= res!863870 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!863869 () Bool)

(assert (=> start!109772 (=> (not res!863869) (not e!741500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109772 (= res!863869 (validMask!0 mask!2175))))

(assert (=> start!109772 e!741500))

(assert (=> start!109772 tp_is_empty!34809))

(assert (=> start!109772 true))

(declare-fun e!741497 () Bool)

(declare-fun array_inv!31617 (array!86589) Bool)

(assert (=> start!109772 (and (array_inv!31617 _values!1445) e!741497)))

(declare-fun array_inv!31618 (array!86591) Bool)

(assert (=> start!109772 (array_inv!31618 _keys!1741)))

(assert (=> start!109772 tp!102636))

(declare-fun b!1299794 () Bool)

(assert (=> b!1299794 (= e!741497 (and e!741499 mapRes!53783))))

(declare-fun condMapEmpty!53783 () Bool)

(declare-fun mapDefault!53783 () ValueCell!16506)

(assert (=> b!1299794 (= condMapEmpty!53783 (= (arr!41788 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16506)) mapDefault!53783)))))

(declare-fun b!1299795 () Bool)

(declare-fun res!863871 () Bool)

(assert (=> b!1299795 (=> (not res!863871) (not e!741500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299795 (= res!863871 (validKeyInArray!0 (select (arr!41789 _keys!1741) from!2144)))))

(declare-fun b!1299796 () Bool)

(declare-fun e!741501 () Bool)

(assert (=> b!1299796 (= e!741501 tp_is_empty!34809)))

(declare-fun b!1299797 () Bool)

(declare-fun res!863873 () Bool)

(assert (=> b!1299797 (=> (not res!863873) (not e!741500))))

(assert (=> b!1299797 (= res!863873 (and (= (size!42339 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42340 _keys!1741) (size!42339 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53783 () Bool)

(declare-fun tp!102635 () Bool)

(assert (=> mapNonEmpty!53783 (= mapRes!53783 (and tp!102635 e!741501))))

(declare-fun mapValue!53783 () ValueCell!16506)

(declare-fun mapKey!53783 () (_ BitVec 32))

(declare-fun mapRest!53783 () (Array (_ BitVec 32) ValueCell!16506))

(assert (=> mapNonEmpty!53783 (= (arr!41788 _values!1445) (store mapRest!53783 mapKey!53783 mapValue!53783))))

(declare-fun b!1299798 () Bool)

(declare-fun res!863874 () Bool)

(assert (=> b!1299798 (=> (not res!863874) (not e!741500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86591 (_ BitVec 32)) Bool)

(assert (=> b!1299798 (= res!863874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1299799 () Bool)

(declare-fun res!863867 () Bool)

(assert (=> b!1299799 (=> (not res!863867) (not e!741500))))

(declare-fun getCurrentListMap!5170 (array!86591 array!86589 (_ BitVec 32) (_ BitVec 32) V!51515 V!51515 (_ BitVec 32) Int) ListLongMap!20361)

(assert (=> b!1299799 (= res!863867 (contains!8254 (getCurrentListMap!5170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1299800 () Bool)

(declare-fun res!863866 () Bool)

(assert (=> b!1299800 (=> (not res!863866) (not e!741500))))

(assert (=> b!1299800 (= res!863866 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42340 _keys!1741))))))

(declare-fun b!1299801 () Bool)

(declare-fun res!863872 () Bool)

(assert (=> b!1299801 (=> (not res!863872) (not e!741500))))

(assert (=> b!1299801 (= res!863872 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42340 _keys!1741))))))

(assert (= (and start!109772 res!863869) b!1299797))

(assert (= (and b!1299797 res!863873) b!1299798))

(assert (= (and b!1299798 res!863874) b!1299791))

(assert (= (and b!1299791 res!863868) b!1299800))

(assert (= (and b!1299800 res!863866) b!1299799))

(assert (= (and b!1299799 res!863867) b!1299801))

(assert (= (and b!1299801 res!863872) b!1299795))

(assert (= (and b!1299795 res!863871) b!1299793))

(assert (= (and b!1299793 res!863870) b!1299790))

(assert (= (and b!1299794 condMapEmpty!53783) mapIsEmpty!53783))

(assert (= (and b!1299794 (not condMapEmpty!53783)) mapNonEmpty!53783))

(get-info :version)

(assert (= (and mapNonEmpty!53783 ((_ is ValueCellFull!16506) mapValue!53783)) b!1299796))

(assert (= (and b!1299794 ((_ is ValueCellFull!16506) mapDefault!53783)) b!1299792))

(assert (= start!109772 b!1299794))

(declare-fun m!1190905 () Bool)

(assert (=> mapNonEmpty!53783 m!1190905))

(declare-fun m!1190907 () Bool)

(assert (=> b!1299795 m!1190907))

(assert (=> b!1299795 m!1190907))

(declare-fun m!1190909 () Bool)

(assert (=> b!1299795 m!1190909))

(declare-fun m!1190911 () Bool)

(assert (=> start!109772 m!1190911))

(declare-fun m!1190913 () Bool)

(assert (=> start!109772 m!1190913))

(declare-fun m!1190915 () Bool)

(assert (=> start!109772 m!1190915))

(declare-fun m!1190917 () Bool)

(assert (=> b!1299790 m!1190917))

(assert (=> b!1299790 m!1190917))

(declare-fun m!1190919 () Bool)

(assert (=> b!1299790 m!1190919))

(assert (=> b!1299790 m!1190919))

(declare-fun m!1190921 () Bool)

(assert (=> b!1299790 m!1190921))

(declare-fun m!1190923 () Bool)

(assert (=> b!1299791 m!1190923))

(declare-fun m!1190925 () Bool)

(assert (=> b!1299799 m!1190925))

(assert (=> b!1299799 m!1190925))

(declare-fun m!1190927 () Bool)

(assert (=> b!1299799 m!1190927))

(declare-fun m!1190929 () Bool)

(assert (=> b!1299798 m!1190929))

(check-sat (not b!1299790) (not b_next!29169) b_and!47281 (not b!1299791) tp_is_empty!34809 (not b!1299799) (not b!1299798) (not start!109772) (not b!1299795) (not mapNonEmpty!53783))
(check-sat b_and!47281 (not b_next!29169))
(get-model)

(declare-fun d!141049 () Bool)

(declare-fun e!741521 () Bool)

(assert (=> d!141049 e!741521))

(declare-fun res!863904 () Bool)

(assert (=> d!141049 (=> res!863904 e!741521)))

(declare-fun lt!581083 () Bool)

(assert (=> d!141049 (= res!863904 (not lt!581083))))

(declare-fun lt!581084 () Bool)

(assert (=> d!141049 (= lt!581083 lt!581084)))

(declare-datatypes ((Unit!42975 0))(
  ( (Unit!42976) )
))
(declare-fun lt!581082 () Unit!42975)

(declare-fun e!741522 () Unit!42975)

(assert (=> d!141049 (= lt!581082 e!741522)))

(declare-fun c!124464 () Bool)

(assert (=> d!141049 (= c!124464 lt!581084)))

(declare-fun containsKey!718 (List!29850 (_ BitVec 64)) Bool)

(assert (=> d!141049 (= lt!581084 (containsKey!718 (toList!10196 (getCurrentListMap!5170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141049 (= (contains!8254 (getCurrentListMap!5170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!581083)))

(declare-fun b!1299844 () Bool)

(declare-fun lt!581081 () Unit!42975)

(assert (=> b!1299844 (= e!741522 lt!581081)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!463 (List!29850 (_ BitVec 64)) Unit!42975)

(assert (=> b!1299844 (= lt!581081 (lemmaContainsKeyImpliesGetValueByKeyDefined!463 (toList!10196 (getCurrentListMap!5170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!751 0))(
  ( (Some!750 (v!20085 V!51515)) (None!749) )
))
(declare-fun isDefined!503 (Option!751) Bool)

(declare-fun getValueByKey!700 (List!29850 (_ BitVec 64)) Option!751)

(assert (=> b!1299844 (isDefined!503 (getValueByKey!700 (toList!10196 (getCurrentListMap!5170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1299845 () Bool)

(declare-fun Unit!42977 () Unit!42975)

(assert (=> b!1299845 (= e!741522 Unit!42977)))

(declare-fun b!1299846 () Bool)

(assert (=> b!1299846 (= e!741521 (isDefined!503 (getValueByKey!700 (toList!10196 (getCurrentListMap!5170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141049 c!124464) b!1299844))

(assert (= (and d!141049 (not c!124464)) b!1299845))

(assert (= (and d!141049 (not res!863904)) b!1299846))

(declare-fun m!1190957 () Bool)

(assert (=> d!141049 m!1190957))

(declare-fun m!1190959 () Bool)

(assert (=> b!1299844 m!1190959))

(declare-fun m!1190961 () Bool)

(assert (=> b!1299844 m!1190961))

(assert (=> b!1299844 m!1190961))

(declare-fun m!1190963 () Bool)

(assert (=> b!1299844 m!1190963))

(assert (=> b!1299846 m!1190961))

(assert (=> b!1299846 m!1190961))

(assert (=> b!1299846 m!1190963))

(assert (=> b!1299799 d!141049))

(declare-fun b!1299889 () Bool)

(declare-fun e!741553 () ListLongMap!20361)

(declare-fun call!63611 () ListLongMap!20361)

(assert (=> b!1299889 (= e!741553 (+!4426 call!63611 (tuple2!22693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1299890 () Bool)

(declare-fun e!741550 () Bool)

(declare-fun e!741549 () Bool)

(assert (=> b!1299890 (= e!741550 e!741549)))

(declare-fun res!863929 () Bool)

(assert (=> b!1299890 (=> (not res!863929) (not e!741549))))

(declare-fun lt!581147 () ListLongMap!20361)

(assert (=> b!1299890 (= res!863929 (contains!8254 lt!581147 (select (arr!41789 _keys!1741) from!2144)))))

(assert (=> b!1299890 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42340 _keys!1741)))))

(declare-fun b!1299891 () Bool)

(declare-fun e!741551 () Bool)

(declare-fun call!63616 () Bool)

(assert (=> b!1299891 (= e!741551 (not call!63616))))

(declare-fun b!1299892 () Bool)

(declare-fun e!741552 () Bool)

(declare-fun e!741560 () Bool)

(assert (=> b!1299892 (= e!741552 e!741560)))

(declare-fun c!124477 () Bool)

(assert (=> b!1299892 (= c!124477 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1299893 () Bool)

(declare-fun e!741558 () ListLongMap!20361)

(declare-fun call!63615 () ListLongMap!20361)

(assert (=> b!1299893 (= e!741558 call!63615)))

(declare-fun call!63617 () ListLongMap!20361)

(declare-fun c!124480 () Bool)

(declare-fun call!63614 () ListLongMap!20361)

(declare-fun bm!63608 () Bool)

(declare-fun call!63613 () ListLongMap!20361)

(declare-fun c!124482 () Bool)

(assert (=> bm!63608 (= call!63611 (+!4426 (ite c!124482 call!63614 (ite c!124480 call!63617 call!63613)) (ite (or c!124482 c!124480) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22693 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1299894 () Bool)

(declare-fun e!741559 () Bool)

(assert (=> b!1299894 (= e!741560 e!741559)))

(declare-fun res!863927 () Bool)

(declare-fun call!63612 () Bool)

(assert (=> b!1299894 (= res!863927 call!63612)))

(assert (=> b!1299894 (=> (not res!863927) (not e!741559))))

(declare-fun b!1299895 () Bool)

(declare-fun c!124481 () Bool)

(assert (=> b!1299895 (= c!124481 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!741555 () ListLongMap!20361)

(assert (=> b!1299895 (= e!741555 e!741558)))

(declare-fun b!1299896 () Bool)

(assert (=> b!1299896 (= e!741560 (not call!63612))))

(declare-fun b!1299897 () Bool)

(declare-fun res!863923 () Bool)

(assert (=> b!1299897 (=> (not res!863923) (not e!741552))))

(assert (=> b!1299897 (= res!863923 e!741551)))

(declare-fun c!124478 () Bool)

(assert (=> b!1299897 (= c!124478 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!141051 () Bool)

(assert (=> d!141051 e!741552))

(declare-fun res!863928 () Bool)

(assert (=> d!141051 (=> (not res!863928) (not e!741552))))

(assert (=> d!141051 (= res!863928 (or (bvsge from!2144 (size!42340 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42340 _keys!1741)))))))

(declare-fun lt!581140 () ListLongMap!20361)

(assert (=> d!141051 (= lt!581147 lt!581140)))

(declare-fun lt!581131 () Unit!42975)

(declare-fun e!741554 () Unit!42975)

(assert (=> d!141051 (= lt!581131 e!741554)))

(declare-fun c!124479 () Bool)

(declare-fun e!741557 () Bool)

(assert (=> d!141051 (= c!124479 e!741557)))

(declare-fun res!863930 () Bool)

(assert (=> d!141051 (=> (not res!863930) (not e!741557))))

(assert (=> d!141051 (= res!863930 (bvslt from!2144 (size!42340 _keys!1741)))))

(assert (=> d!141051 (= lt!581140 e!741553)))

(assert (=> d!141051 (= c!124482 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141051 (validMask!0 mask!2175)))

(assert (=> d!141051 (= (getCurrentListMap!5170 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!581147)))

(declare-fun bm!63609 () Bool)

(assert (=> bm!63609 (= call!63615 call!63611)))

(declare-fun bm!63610 () Bool)

(assert (=> bm!63610 (= call!63617 call!63614)))

(declare-fun b!1299898 () Bool)

(declare-fun e!741561 () Bool)

(assert (=> b!1299898 (= e!741561 (validKeyInArray!0 (select (arr!41789 _keys!1741) from!2144)))))

(declare-fun bm!63611 () Bool)

(assert (=> bm!63611 (= call!63614 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1299899 () Bool)

(declare-fun apply!1050 (ListLongMap!20361 (_ BitVec 64)) V!51515)

(declare-fun get!21155 (ValueCell!16506 V!51515) V!51515)

(declare-fun dynLambda!3500 (Int (_ BitVec 64)) V!51515)

(assert (=> b!1299899 (= e!741549 (= (apply!1050 lt!581147 (select (arr!41789 _keys!1741) from!2144)) (get!21155 (select (arr!41788 _values!1445) from!2144) (dynLambda!3500 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1299899 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42339 _values!1445)))))

(assert (=> b!1299899 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42340 _keys!1741)))))

(declare-fun b!1299900 () Bool)

(assert (=> b!1299900 (= e!741559 (= (apply!1050 lt!581147 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1299901 () Bool)

(assert (=> b!1299901 (= e!741553 e!741555)))

(assert (=> b!1299901 (= c!124480 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1299902 () Bool)

(declare-fun res!863926 () Bool)

(assert (=> b!1299902 (=> (not res!863926) (not e!741552))))

(assert (=> b!1299902 (= res!863926 e!741550)))

(declare-fun res!863931 () Bool)

(assert (=> b!1299902 (=> res!863931 e!741550)))

(assert (=> b!1299902 (= res!863931 (not e!741561))))

(declare-fun res!863925 () Bool)

(assert (=> b!1299902 (=> (not res!863925) (not e!741561))))

(assert (=> b!1299902 (= res!863925 (bvslt from!2144 (size!42340 _keys!1741)))))

(declare-fun bm!63612 () Bool)

(assert (=> bm!63612 (= call!63616 (contains!8254 lt!581147 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1299903 () Bool)

(declare-fun Unit!42978 () Unit!42975)

(assert (=> b!1299903 (= e!741554 Unit!42978)))

(declare-fun b!1299904 () Bool)

(assert (=> b!1299904 (= e!741558 call!63613)))

(declare-fun bm!63613 () Bool)

(assert (=> bm!63613 (= call!63613 call!63617)))

(declare-fun bm!63614 () Bool)

(assert (=> bm!63614 (= call!63612 (contains!8254 lt!581147 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1299905 () Bool)

(declare-fun e!741556 () Bool)

(assert (=> b!1299905 (= e!741551 e!741556)))

(declare-fun res!863924 () Bool)

(assert (=> b!1299905 (= res!863924 call!63616)))

(assert (=> b!1299905 (=> (not res!863924) (not e!741556))))

(declare-fun b!1299906 () Bool)

(declare-fun lt!581138 () Unit!42975)

(assert (=> b!1299906 (= e!741554 lt!581138)))

(declare-fun lt!581149 () ListLongMap!20361)

(assert (=> b!1299906 (= lt!581149 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581143 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581143 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581135 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581135 (select (arr!41789 _keys!1741) from!2144))))

(declare-fun lt!581130 () Unit!42975)

(declare-fun addStillContains!1119 (ListLongMap!20361 (_ BitVec 64) V!51515 (_ BitVec 64)) Unit!42975)

(assert (=> b!1299906 (= lt!581130 (addStillContains!1119 lt!581149 lt!581143 zeroValue!1387 lt!581135))))

(assert (=> b!1299906 (contains!8254 (+!4426 lt!581149 (tuple2!22693 lt!581143 zeroValue!1387)) lt!581135)))

(declare-fun lt!581133 () Unit!42975)

(assert (=> b!1299906 (= lt!581133 lt!581130)))

(declare-fun lt!581150 () ListLongMap!20361)

(assert (=> b!1299906 (= lt!581150 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581144 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581144 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581136 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581136 (select (arr!41789 _keys!1741) from!2144))))

(declare-fun lt!581145 () Unit!42975)

(declare-fun addApplyDifferent!553 (ListLongMap!20361 (_ BitVec 64) V!51515 (_ BitVec 64)) Unit!42975)

(assert (=> b!1299906 (= lt!581145 (addApplyDifferent!553 lt!581150 lt!581144 minValue!1387 lt!581136))))

(assert (=> b!1299906 (= (apply!1050 (+!4426 lt!581150 (tuple2!22693 lt!581144 minValue!1387)) lt!581136) (apply!1050 lt!581150 lt!581136))))

(declare-fun lt!581132 () Unit!42975)

(assert (=> b!1299906 (= lt!581132 lt!581145)))

(declare-fun lt!581134 () ListLongMap!20361)

(assert (=> b!1299906 (= lt!581134 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581146 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581146 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581142 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581142 (select (arr!41789 _keys!1741) from!2144))))

(declare-fun lt!581129 () Unit!42975)

(assert (=> b!1299906 (= lt!581129 (addApplyDifferent!553 lt!581134 lt!581146 zeroValue!1387 lt!581142))))

(assert (=> b!1299906 (= (apply!1050 (+!4426 lt!581134 (tuple2!22693 lt!581146 zeroValue!1387)) lt!581142) (apply!1050 lt!581134 lt!581142))))

(declare-fun lt!581148 () Unit!42975)

(assert (=> b!1299906 (= lt!581148 lt!581129)))

(declare-fun lt!581139 () ListLongMap!20361)

(assert (=> b!1299906 (= lt!581139 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!581137 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581137 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!581141 () (_ BitVec 64))

(assert (=> b!1299906 (= lt!581141 (select (arr!41789 _keys!1741) from!2144))))

(assert (=> b!1299906 (= lt!581138 (addApplyDifferent!553 lt!581139 lt!581137 minValue!1387 lt!581141))))

(assert (=> b!1299906 (= (apply!1050 (+!4426 lt!581139 (tuple2!22693 lt!581137 minValue!1387)) lt!581141) (apply!1050 lt!581139 lt!581141))))

(declare-fun b!1299907 () Bool)

(assert (=> b!1299907 (= e!741555 call!63615)))

(declare-fun b!1299908 () Bool)

(assert (=> b!1299908 (= e!741557 (validKeyInArray!0 (select (arr!41789 _keys!1741) from!2144)))))

(declare-fun b!1299909 () Bool)

(assert (=> b!1299909 (= e!741556 (= (apply!1050 lt!581147 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(assert (= (and d!141051 c!124482) b!1299889))

(assert (= (and d!141051 (not c!124482)) b!1299901))

(assert (= (and b!1299901 c!124480) b!1299907))

(assert (= (and b!1299901 (not c!124480)) b!1299895))

(assert (= (and b!1299895 c!124481) b!1299893))

(assert (= (and b!1299895 (not c!124481)) b!1299904))

(assert (= (or b!1299893 b!1299904) bm!63613))

(assert (= (or b!1299907 bm!63613) bm!63610))

(assert (= (or b!1299907 b!1299893) bm!63609))

(assert (= (or b!1299889 bm!63610) bm!63611))

(assert (= (or b!1299889 bm!63609) bm!63608))

(assert (= (and d!141051 res!863930) b!1299908))

(assert (= (and d!141051 c!124479) b!1299906))

(assert (= (and d!141051 (not c!124479)) b!1299903))

(assert (= (and d!141051 res!863928) b!1299902))

(assert (= (and b!1299902 res!863925) b!1299898))

(assert (= (and b!1299902 (not res!863931)) b!1299890))

(assert (= (and b!1299890 res!863929) b!1299899))

(assert (= (and b!1299902 res!863926) b!1299897))

(assert (= (and b!1299897 c!124478) b!1299905))

(assert (= (and b!1299897 (not c!124478)) b!1299891))

(assert (= (and b!1299905 res!863924) b!1299909))

(assert (= (or b!1299905 b!1299891) bm!63612))

(assert (= (and b!1299897 res!863923) b!1299892))

(assert (= (and b!1299892 c!124477) b!1299894))

(assert (= (and b!1299892 (not c!124477)) b!1299896))

(assert (= (and b!1299894 res!863927) b!1299900))

(assert (= (or b!1299894 b!1299896) bm!63614))

(declare-fun b_lambda!23171 () Bool)

(assert (=> (not b_lambda!23171) (not b!1299899)))

(declare-fun t!43432 () Bool)

(declare-fun tb!11383 () Bool)

(assert (=> (and start!109772 (= defaultEntry!1448 defaultEntry!1448) t!43432) tb!11383))

(declare-fun result!23765 () Bool)

(assert (=> tb!11383 (= result!23765 tp_is_empty!34809)))

(assert (=> b!1299899 t!43432))

(declare-fun b_and!47285 () Bool)

(assert (= b_and!47281 (and (=> t!43432 result!23765) b_and!47285)))

(assert (=> d!141051 m!1190911))

(assert (=> b!1299890 m!1190907))

(assert (=> b!1299890 m!1190907))

(declare-fun m!1190965 () Bool)

(assert (=> b!1299890 m!1190965))

(declare-fun m!1190967 () Bool)

(assert (=> b!1299909 m!1190967))

(declare-fun m!1190969 () Bool)

(assert (=> b!1299900 m!1190969))

(declare-fun m!1190971 () Bool)

(assert (=> b!1299889 m!1190971))

(declare-fun m!1190973 () Bool)

(assert (=> b!1299906 m!1190973))

(declare-fun m!1190975 () Bool)

(assert (=> b!1299906 m!1190975))

(declare-fun m!1190977 () Bool)

(assert (=> b!1299906 m!1190977))

(declare-fun m!1190979 () Bool)

(assert (=> b!1299906 m!1190979))

(declare-fun m!1190981 () Bool)

(assert (=> b!1299906 m!1190981))

(assert (=> b!1299906 m!1190975))

(declare-fun m!1190983 () Bool)

(assert (=> b!1299906 m!1190983))

(declare-fun m!1190985 () Bool)

(assert (=> b!1299906 m!1190985))

(declare-fun m!1190987 () Bool)

(assert (=> b!1299906 m!1190987))

(declare-fun m!1190989 () Bool)

(assert (=> b!1299906 m!1190989))

(assert (=> b!1299906 m!1190985))

(assert (=> b!1299906 m!1190979))

(assert (=> b!1299906 m!1190907))

(declare-fun m!1190991 () Bool)

(assert (=> b!1299906 m!1190991))

(assert (=> b!1299906 m!1190917))

(declare-fun m!1190993 () Bool)

(assert (=> b!1299906 m!1190993))

(declare-fun m!1190995 () Bool)

(assert (=> b!1299906 m!1190995))

(declare-fun m!1190997 () Bool)

(assert (=> b!1299906 m!1190997))

(declare-fun m!1190999 () Bool)

(assert (=> b!1299906 m!1190999))

(assert (=> b!1299906 m!1190995))

(declare-fun m!1191001 () Bool)

(assert (=> b!1299906 m!1191001))

(declare-fun m!1191003 () Bool)

(assert (=> bm!63612 m!1191003))

(assert (=> b!1299898 m!1190907))

(assert (=> b!1299898 m!1190907))

(assert (=> b!1299898 m!1190909))

(declare-fun m!1191005 () Bool)

(assert (=> b!1299899 m!1191005))

(declare-fun m!1191007 () Bool)

(assert (=> b!1299899 m!1191007))

(assert (=> b!1299899 m!1191005))

(declare-fun m!1191009 () Bool)

(assert (=> b!1299899 m!1191009))

(assert (=> b!1299899 m!1190907))

(declare-fun m!1191011 () Bool)

(assert (=> b!1299899 m!1191011))

(assert (=> b!1299899 m!1190907))

(assert (=> b!1299899 m!1191007))

(declare-fun m!1191013 () Bool)

(assert (=> bm!63614 m!1191013))

(declare-fun m!1191015 () Bool)

(assert (=> bm!63608 m!1191015))

(assert (=> b!1299908 m!1190907))

(assert (=> b!1299908 m!1190907))

(assert (=> b!1299908 m!1190909))

(assert (=> bm!63611 m!1190917))

(assert (=> b!1299799 d!141051))

(declare-fun d!141053 () Bool)

(assert (=> d!141053 (= (validKeyInArray!0 (select (arr!41789 _keys!1741) from!2144)) (and (not (= (select (arr!41789 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41789 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1299795 d!141053))

(declare-fun b!1299922 () Bool)

(declare-fun e!741573 () Bool)

(declare-fun call!63620 () Bool)

(assert (=> b!1299922 (= e!741573 call!63620)))

(declare-fun b!1299923 () Bool)

(declare-fun e!741571 () Bool)

(assert (=> b!1299923 (= e!741571 e!741573)))

(declare-fun c!124485 () Bool)

(assert (=> b!1299923 (= c!124485 (validKeyInArray!0 (select (arr!41789 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141055 () Bool)

(declare-fun res!863940 () Bool)

(declare-fun e!741570 () Bool)

(assert (=> d!141055 (=> res!863940 e!741570)))

(assert (=> d!141055 (= res!863940 (bvsge #b00000000000000000000000000000000 (size!42340 _keys!1741)))))

(assert (=> d!141055 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29848) e!741570)))

(declare-fun b!1299924 () Bool)

(assert (=> b!1299924 (= e!741570 e!741571)))

(declare-fun res!863939 () Bool)

(assert (=> b!1299924 (=> (not res!863939) (not e!741571))))

(declare-fun e!741572 () Bool)

(assert (=> b!1299924 (= res!863939 (not e!741572))))

(declare-fun res!863938 () Bool)

(assert (=> b!1299924 (=> (not res!863938) (not e!741572))))

(assert (=> b!1299924 (= res!863938 (validKeyInArray!0 (select (arr!41789 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1299925 () Bool)

(declare-fun contains!8256 (List!29851 (_ BitVec 64)) Bool)

(assert (=> b!1299925 (= e!741572 (contains!8256 Nil!29848 (select (arr!41789 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!63617 () Bool)

(assert (=> bm!63617 (= call!63620 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124485 (Cons!29847 (select (arr!41789 _keys!1741) #b00000000000000000000000000000000) Nil!29848) Nil!29848)))))

(declare-fun b!1299926 () Bool)

(assert (=> b!1299926 (= e!741573 call!63620)))

(assert (= (and d!141055 (not res!863940)) b!1299924))

(assert (= (and b!1299924 res!863938) b!1299925))

(assert (= (and b!1299924 res!863939) b!1299923))

(assert (= (and b!1299923 c!124485) b!1299922))

(assert (= (and b!1299923 (not c!124485)) b!1299926))

(assert (= (or b!1299922 b!1299926) bm!63617))

(declare-fun m!1191017 () Bool)

(assert (=> b!1299923 m!1191017))

(assert (=> b!1299923 m!1191017))

(declare-fun m!1191019 () Bool)

(assert (=> b!1299923 m!1191019))

(assert (=> b!1299924 m!1191017))

(assert (=> b!1299924 m!1191017))

(assert (=> b!1299924 m!1191019))

(assert (=> b!1299925 m!1191017))

(assert (=> b!1299925 m!1191017))

(declare-fun m!1191021 () Bool)

(assert (=> b!1299925 m!1191021))

(assert (=> bm!63617 m!1191017))

(declare-fun m!1191023 () Bool)

(assert (=> bm!63617 m!1191023))

(assert (=> b!1299791 d!141055))

(declare-fun d!141057 () Bool)

(assert (=> d!141057 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109772 d!141057))

(declare-fun d!141059 () Bool)

(assert (=> d!141059 (= (array_inv!31617 _values!1445) (bvsge (size!42339 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109772 d!141059))

(declare-fun d!141061 () Bool)

(assert (=> d!141061 (= (array_inv!31618 _keys!1741) (bvsge (size!42340 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109772 d!141061))

(declare-fun b!1299935 () Bool)

(declare-fun e!741582 () Bool)

(declare-fun call!63623 () Bool)

(assert (=> b!1299935 (= e!741582 call!63623)))

(declare-fun d!141063 () Bool)

(declare-fun res!863946 () Bool)

(declare-fun e!741581 () Bool)

(assert (=> d!141063 (=> res!863946 e!741581)))

(assert (=> d!141063 (= res!863946 (bvsge #b00000000000000000000000000000000 (size!42340 _keys!1741)))))

(assert (=> d!141063 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!741581)))

(declare-fun b!1299936 () Bool)

(declare-fun e!741580 () Bool)

(assert (=> b!1299936 (= e!741582 e!741580)))

(declare-fun lt!581157 () (_ BitVec 64))

(assert (=> b!1299936 (= lt!581157 (select (arr!41789 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!581158 () Unit!42975)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86591 (_ BitVec 64) (_ BitVec 32)) Unit!42975)

(assert (=> b!1299936 (= lt!581158 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!581157 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1299936 (arrayContainsKey!0 _keys!1741 lt!581157 #b00000000000000000000000000000000)))

(declare-fun lt!581159 () Unit!42975)

(assert (=> b!1299936 (= lt!581159 lt!581158)))

(declare-fun res!863945 () Bool)

(declare-datatypes ((SeekEntryResult!10015 0))(
  ( (MissingZero!10015 (index!42430 (_ BitVec 32))) (Found!10015 (index!42431 (_ BitVec 32))) (Intermediate!10015 (undefined!10827 Bool) (index!42432 (_ BitVec 32)) (x!115466 (_ BitVec 32))) (Undefined!10015) (MissingVacant!10015 (index!42433 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86591 (_ BitVec 32)) SeekEntryResult!10015)

(assert (=> b!1299936 (= res!863945 (= (seekEntryOrOpen!0 (select (arr!41789 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10015 #b00000000000000000000000000000000)))))

(assert (=> b!1299936 (=> (not res!863945) (not e!741580))))

(declare-fun b!1299937 () Bool)

(assert (=> b!1299937 (= e!741581 e!741582)))

(declare-fun c!124488 () Bool)

(assert (=> b!1299937 (= c!124488 (validKeyInArray!0 (select (arr!41789 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!63620 () Bool)

(assert (=> bm!63620 (= call!63623 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1299938 () Bool)

(assert (=> b!1299938 (= e!741580 call!63623)))

(assert (= (and d!141063 (not res!863946)) b!1299937))

(assert (= (and b!1299937 c!124488) b!1299936))

(assert (= (and b!1299937 (not c!124488)) b!1299935))

(assert (= (and b!1299936 res!863945) b!1299938))

(assert (= (or b!1299938 b!1299935) bm!63620))

(assert (=> b!1299936 m!1191017))

(declare-fun m!1191025 () Bool)

(assert (=> b!1299936 m!1191025))

(declare-fun m!1191027 () Bool)

(assert (=> b!1299936 m!1191027))

(assert (=> b!1299936 m!1191017))

(declare-fun m!1191029 () Bool)

(assert (=> b!1299936 m!1191029))

(assert (=> b!1299937 m!1191017))

(assert (=> b!1299937 m!1191017))

(assert (=> b!1299937 m!1191019))

(declare-fun m!1191031 () Bool)

(assert (=> bm!63620 m!1191031))

(assert (=> b!1299798 d!141063))

(declare-fun d!141065 () Bool)

(declare-fun e!741583 () Bool)

(assert (=> d!141065 e!741583))

(declare-fun res!863947 () Bool)

(assert (=> d!141065 (=> res!863947 e!741583)))

(declare-fun lt!581162 () Bool)

(assert (=> d!141065 (= res!863947 (not lt!581162))))

(declare-fun lt!581163 () Bool)

(assert (=> d!141065 (= lt!581162 lt!581163)))

(declare-fun lt!581161 () Unit!42975)

(declare-fun e!741584 () Unit!42975)

(assert (=> d!141065 (= lt!581161 e!741584)))

(declare-fun c!124489 () Bool)

(assert (=> d!141065 (= c!124489 lt!581163)))

(assert (=> d!141065 (= lt!581163 (containsKey!718 (toList!10196 (+!4426 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> d!141065 (= (contains!8254 (+!4426 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205) lt!581162)))

(declare-fun b!1299939 () Bool)

(declare-fun lt!581160 () Unit!42975)

(assert (=> b!1299939 (= e!741584 lt!581160)))

(assert (=> b!1299939 (= lt!581160 (lemmaContainsKeyImpliesGetValueByKeyDefined!463 (toList!10196 (+!4426 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(assert (=> b!1299939 (isDefined!503 (getValueByKey!700 (toList!10196 (+!4426 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205))))

(declare-fun b!1299940 () Bool)

(declare-fun Unit!42979 () Unit!42975)

(assert (=> b!1299940 (= e!741584 Unit!42979)))

(declare-fun b!1299941 () Bool)

(assert (=> b!1299941 (= e!741583 (isDefined!503 (getValueByKey!700 (toList!10196 (+!4426 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) k0!1205)))))

(assert (= (and d!141065 c!124489) b!1299939))

(assert (= (and d!141065 (not c!124489)) b!1299940))

(assert (= (and d!141065 (not res!863947)) b!1299941))

(declare-fun m!1191033 () Bool)

(assert (=> d!141065 m!1191033))

(declare-fun m!1191035 () Bool)

(assert (=> b!1299939 m!1191035))

(declare-fun m!1191037 () Bool)

(assert (=> b!1299939 m!1191037))

(assert (=> b!1299939 m!1191037))

(declare-fun m!1191039 () Bool)

(assert (=> b!1299939 m!1191039))

(assert (=> b!1299941 m!1191037))

(assert (=> b!1299941 m!1191037))

(assert (=> b!1299941 m!1191039))

(assert (=> b!1299790 d!141065))

(declare-fun d!141067 () Bool)

(declare-fun e!741587 () Bool)

(assert (=> d!141067 e!741587))

(declare-fun res!863953 () Bool)

(assert (=> d!141067 (=> (not res!863953) (not e!741587))))

(declare-fun lt!581174 () ListLongMap!20361)

(assert (=> d!141067 (= res!863953 (contains!8254 lt!581174 (_1!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!581172 () List!29850)

(assert (=> d!141067 (= lt!581174 (ListLongMap!20362 lt!581172))))

(declare-fun lt!581173 () Unit!42975)

(declare-fun lt!581175 () Unit!42975)

(assert (=> d!141067 (= lt!581173 lt!581175)))

(assert (=> d!141067 (= (getValueByKey!700 lt!581172 (_1!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!750 (_2!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lemmaContainsTupThenGetReturnValue!344 (List!29850 (_ BitVec 64) V!51515) Unit!42975)

(assert (=> d!141067 (= lt!581175 (lemmaContainsTupThenGetReturnValue!344 lt!581172 (_1!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun insertStrictlySorted!473 (List!29850 (_ BitVec 64) V!51515) List!29850)

(assert (=> d!141067 (= lt!581172 (insertStrictlySorted!473 (toList!10196 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) (_1!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141067 (= (+!4426 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!581174)))

(declare-fun b!1299946 () Bool)

(declare-fun res!863952 () Bool)

(assert (=> b!1299946 (=> (not res!863952) (not e!741587))))

(assert (=> b!1299946 (= res!863952 (= (getValueByKey!700 (toList!10196 lt!581174) (_1!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!750 (_2!11356 (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1299947 () Bool)

(declare-fun contains!8257 (List!29850 tuple2!22692) Bool)

(assert (=> b!1299947 (= e!741587 (contains!8257 (toList!10196 lt!581174) (tuple2!22693 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141067 res!863953) b!1299946))

(assert (= (and b!1299946 res!863952) b!1299947))

(declare-fun m!1191041 () Bool)

(assert (=> d!141067 m!1191041))

(declare-fun m!1191043 () Bool)

(assert (=> d!141067 m!1191043))

(declare-fun m!1191045 () Bool)

(assert (=> d!141067 m!1191045))

(declare-fun m!1191047 () Bool)

(assert (=> d!141067 m!1191047))

(declare-fun m!1191049 () Bool)

(assert (=> b!1299946 m!1191049))

(declare-fun m!1191051 () Bool)

(assert (=> b!1299947 m!1191051))

(assert (=> b!1299790 d!141067))

(declare-fun b!1299972 () Bool)

(declare-fun e!741605 () Bool)

(declare-fun e!741603 () Bool)

(assert (=> b!1299972 (= e!741605 e!741603)))

(declare-fun c!124499 () Bool)

(declare-fun e!741606 () Bool)

(assert (=> b!1299972 (= c!124499 e!741606)))

(declare-fun res!863965 () Bool)

(assert (=> b!1299972 (=> (not res!863965) (not e!741606))))

(assert (=> b!1299972 (= res!863965 (bvslt from!2144 (size!42340 _keys!1741)))))

(declare-fun b!1299973 () Bool)

(declare-fun lt!581192 () Unit!42975)

(declare-fun lt!581195 () Unit!42975)

(assert (=> b!1299973 (= lt!581192 lt!581195)))

(declare-fun lt!581193 () ListLongMap!20361)

(declare-fun lt!581190 () V!51515)

(declare-fun lt!581191 () (_ BitVec 64))

(declare-fun lt!581194 () (_ BitVec 64))

(assert (=> b!1299973 (not (contains!8254 (+!4426 lt!581193 (tuple2!22693 lt!581194 lt!581190)) lt!581191))))

(declare-fun addStillNotContains!463 (ListLongMap!20361 (_ BitVec 64) V!51515 (_ BitVec 64)) Unit!42975)

(assert (=> b!1299973 (= lt!581195 (addStillNotContains!463 lt!581193 lt!581194 lt!581190 lt!581191))))

(assert (=> b!1299973 (= lt!581191 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1299973 (= lt!581190 (get!21155 (select (arr!41788 _values!1445) from!2144) (dynLambda!3500 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1299973 (= lt!581194 (select (arr!41789 _keys!1741) from!2144))))

(declare-fun call!63626 () ListLongMap!20361)

(assert (=> b!1299973 (= lt!581193 call!63626)))

(declare-fun e!741602 () ListLongMap!20361)

(assert (=> b!1299973 (= e!741602 (+!4426 call!63626 (tuple2!22693 (select (arr!41789 _keys!1741) from!2144) (get!21155 (select (arr!41788 _values!1445) from!2144) (dynLambda!3500 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1299974 () Bool)

(declare-fun e!741607 () Bool)

(declare-fun lt!581196 () ListLongMap!20361)

(declare-fun isEmpty!1054 (ListLongMap!20361) Bool)

(assert (=> b!1299974 (= e!741607 (isEmpty!1054 lt!581196))))

(declare-fun b!1299975 () Bool)

(assert (=> b!1299975 (= e!741607 (= lt!581196 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(declare-fun b!1299977 () Bool)

(assert (=> b!1299977 (= e!741603 e!741607)))

(declare-fun c!124498 () Bool)

(assert (=> b!1299977 (= c!124498 (bvslt from!2144 (size!42340 _keys!1741)))))

(declare-fun b!1299978 () Bool)

(declare-fun e!741604 () Bool)

(assert (=> b!1299978 (= e!741603 e!741604)))

(assert (=> b!1299978 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42340 _keys!1741)))))

(declare-fun res!863964 () Bool)

(assert (=> b!1299978 (= res!863964 (contains!8254 lt!581196 (select (arr!41789 _keys!1741) from!2144)))))

(assert (=> b!1299978 (=> (not res!863964) (not e!741604))))

(declare-fun b!1299979 () Bool)

(assert (=> b!1299979 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42340 _keys!1741)))))

(assert (=> b!1299979 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42339 _values!1445)))))

(assert (=> b!1299979 (= e!741604 (= (apply!1050 lt!581196 (select (arr!41789 _keys!1741) from!2144)) (get!21155 (select (arr!41788 _values!1445) from!2144) (dynLambda!3500 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!63623 () Bool)

(assert (=> bm!63623 (= call!63626 (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1299980 () Bool)

(assert (=> b!1299980 (= e!741602 call!63626)))

(declare-fun b!1299981 () Bool)

(declare-fun e!741608 () ListLongMap!20361)

(assert (=> b!1299981 (= e!741608 (ListLongMap!20362 Nil!29847))))

(declare-fun d!141069 () Bool)

(assert (=> d!141069 e!741605))

(declare-fun res!863963 () Bool)

(assert (=> d!141069 (=> (not res!863963) (not e!741605))))

(assert (=> d!141069 (= res!863963 (not (contains!8254 lt!581196 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141069 (= lt!581196 e!741608)))

(declare-fun c!124501 () Bool)

(assert (=> d!141069 (= c!124501 (bvsge from!2144 (size!42340 _keys!1741)))))

(assert (=> d!141069 (validMask!0 mask!2175)))

(assert (=> d!141069 (= (getCurrentListMapNoExtraKeys!6139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!581196)))

(declare-fun b!1299976 () Bool)

(assert (=> b!1299976 (= e!741608 e!741602)))

(declare-fun c!124500 () Bool)

(assert (=> b!1299976 (= c!124500 (validKeyInArray!0 (select (arr!41789 _keys!1741) from!2144)))))

(declare-fun b!1299982 () Bool)

(declare-fun res!863962 () Bool)

(assert (=> b!1299982 (=> (not res!863962) (not e!741605))))

(assert (=> b!1299982 (= res!863962 (not (contains!8254 lt!581196 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1299983 () Bool)

(assert (=> b!1299983 (= e!741606 (validKeyInArray!0 (select (arr!41789 _keys!1741) from!2144)))))

(assert (=> b!1299983 (bvsge from!2144 #b00000000000000000000000000000000)))

(assert (= (and d!141069 c!124501) b!1299981))

(assert (= (and d!141069 (not c!124501)) b!1299976))

(assert (= (and b!1299976 c!124500) b!1299973))

(assert (= (and b!1299976 (not c!124500)) b!1299980))

(assert (= (or b!1299973 b!1299980) bm!63623))

(assert (= (and d!141069 res!863963) b!1299982))

(assert (= (and b!1299982 res!863962) b!1299972))

(assert (= (and b!1299972 res!863965) b!1299983))

(assert (= (and b!1299972 c!124499) b!1299978))

(assert (= (and b!1299972 (not c!124499)) b!1299977))

(assert (= (and b!1299978 res!863964) b!1299979))

(assert (= (and b!1299977 c!124498) b!1299975))

(assert (= (and b!1299977 (not c!124498)) b!1299974))

(declare-fun b_lambda!23173 () Bool)

(assert (=> (not b_lambda!23173) (not b!1299973)))

(assert (=> b!1299973 t!43432))

(declare-fun b_and!47287 () Bool)

(assert (= b_and!47285 (and (=> t!43432 result!23765) b_and!47287)))

(declare-fun b_lambda!23175 () Bool)

(assert (=> (not b_lambda!23175) (not b!1299979)))

(assert (=> b!1299979 t!43432))

(declare-fun b_and!47289 () Bool)

(assert (= b_and!47287 (and (=> t!43432 result!23765) b_and!47289)))

(assert (=> b!1299976 m!1190907))

(assert (=> b!1299976 m!1190907))

(assert (=> b!1299976 m!1190909))

(declare-fun m!1191053 () Bool)

(assert (=> d!141069 m!1191053))

(assert (=> d!141069 m!1190911))

(assert (=> b!1299978 m!1190907))

(assert (=> b!1299978 m!1190907))

(declare-fun m!1191055 () Bool)

(assert (=> b!1299978 m!1191055))

(declare-fun m!1191057 () Bool)

(assert (=> b!1299973 m!1191057))

(declare-fun m!1191059 () Bool)

(assert (=> b!1299973 m!1191059))

(assert (=> b!1299973 m!1191057))

(assert (=> b!1299973 m!1191007))

(assert (=> b!1299973 m!1191005))

(assert (=> b!1299973 m!1191009))

(assert (=> b!1299973 m!1191007))

(declare-fun m!1191061 () Bool)

(assert (=> b!1299973 m!1191061))

(declare-fun m!1191063 () Bool)

(assert (=> b!1299973 m!1191063))

(assert (=> b!1299973 m!1191005))

(assert (=> b!1299973 m!1190907))

(declare-fun m!1191065 () Bool)

(assert (=> b!1299975 m!1191065))

(assert (=> b!1299983 m!1190907))

(assert (=> b!1299983 m!1190907))

(assert (=> b!1299983 m!1190909))

(declare-fun m!1191067 () Bool)

(assert (=> b!1299982 m!1191067))

(assert (=> bm!63623 m!1191065))

(declare-fun m!1191069 () Bool)

(assert (=> b!1299974 m!1191069))

(assert (=> b!1299979 m!1190907))

(declare-fun m!1191071 () Bool)

(assert (=> b!1299979 m!1191071))

(assert (=> b!1299979 m!1191007))

(assert (=> b!1299979 m!1191005))

(assert (=> b!1299979 m!1191009))

(assert (=> b!1299979 m!1191007))

(assert (=> b!1299979 m!1191005))

(assert (=> b!1299979 m!1190907))

(assert (=> b!1299790 d!141069))

(declare-fun b!1299990 () Bool)

(declare-fun e!741614 () Bool)

(assert (=> b!1299990 (= e!741614 tp_is_empty!34809)))

(declare-fun b!1299991 () Bool)

(declare-fun e!741613 () Bool)

(assert (=> b!1299991 (= e!741613 tp_is_empty!34809)))

(declare-fun mapIsEmpty!53789 () Bool)

(declare-fun mapRes!53789 () Bool)

(assert (=> mapIsEmpty!53789 mapRes!53789))

(declare-fun condMapEmpty!53789 () Bool)

(declare-fun mapDefault!53789 () ValueCell!16506)

(assert (=> mapNonEmpty!53783 (= condMapEmpty!53789 (= mapRest!53783 ((as const (Array (_ BitVec 32) ValueCell!16506)) mapDefault!53789)))))

(assert (=> mapNonEmpty!53783 (= tp!102635 (and e!741613 mapRes!53789))))

(declare-fun mapNonEmpty!53789 () Bool)

(declare-fun tp!102645 () Bool)

(assert (=> mapNonEmpty!53789 (= mapRes!53789 (and tp!102645 e!741614))))

(declare-fun mapRest!53789 () (Array (_ BitVec 32) ValueCell!16506))

(declare-fun mapKey!53789 () (_ BitVec 32))

(declare-fun mapValue!53789 () ValueCell!16506)

(assert (=> mapNonEmpty!53789 (= mapRest!53783 (store mapRest!53789 mapKey!53789 mapValue!53789))))

(assert (= (and mapNonEmpty!53783 condMapEmpty!53789) mapIsEmpty!53789))

(assert (= (and mapNonEmpty!53783 (not condMapEmpty!53789)) mapNonEmpty!53789))

(assert (= (and mapNonEmpty!53789 ((_ is ValueCellFull!16506) mapValue!53789)) b!1299990))

(assert (= (and mapNonEmpty!53783 ((_ is ValueCellFull!16506) mapDefault!53789)) b!1299991))

(declare-fun m!1191073 () Bool)

(assert (=> mapNonEmpty!53789 m!1191073))

(declare-fun b_lambda!23177 () Bool)

(assert (= b_lambda!23173 (or (and start!109772 b_free!29169) b_lambda!23177)))

(declare-fun b_lambda!23179 () Bool)

(assert (= b_lambda!23175 (or (and start!109772 b_free!29169) b_lambda!23179)))

(declare-fun b_lambda!23181 () Bool)

(assert (= b_lambda!23171 (or (and start!109772 b_free!29169) b_lambda!23181)))

(check-sat (not b_lambda!23181) (not b_lambda!23179) (not b!1299899) (not bm!63614) (not b!1299982) (not b!1299973) (not b!1299923) (not bm!63617) (not b!1299941) (not b_next!29169) (not b!1299975) (not b!1299939) (not b_lambda!23177) (not b!1299909) (not b!1299976) tp_is_empty!34809 (not bm!63612) (not b!1299890) (not d!141067) (not d!141065) (not b!1299947) (not b!1299844) (not bm!63623) b_and!47289 (not d!141069) (not b!1299983) (not b!1299937) (not b!1299936) (not b!1299946) (not b!1299924) (not bm!63611) (not b!1299908) (not d!141051) (not bm!63608) (not b!1299978) (not b!1299846) (not b!1299906) (not mapNonEmpty!53789) (not b!1299974) (not d!141049) (not bm!63620) (not b!1299898) (not b!1299925) (not b!1299979) (not b!1299900) (not b!1299889))
(check-sat b_and!47289 (not b_next!29169))
