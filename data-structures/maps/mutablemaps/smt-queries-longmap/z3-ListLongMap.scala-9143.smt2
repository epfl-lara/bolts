; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109700 () Bool)

(assert start!109700)

(declare-fun b_free!29133 () Bool)

(declare-fun b_next!29133 () Bool)

(assert (=> start!109700 (= b_free!29133 (not b_next!29133))))

(declare-fun tp!102522 () Bool)

(declare-fun b_and!47237 () Bool)

(assert (=> start!109700 (= tp!102522 b_and!47237)))

(declare-fun b!1298915 () Bool)

(declare-fun e!741050 () Bool)

(declare-fun tp_is_empty!34773 () Bool)

(assert (=> b!1298915 (= e!741050 tp_is_empty!34773)))

(declare-fun b!1298916 () Bool)

(declare-fun res!863309 () Bool)

(declare-fun e!741054 () Bool)

(assert (=> b!1298916 (=> (not res!863309) (not e!741054))))

(declare-datatypes ((array!86515 0))(
  ( (array!86516 (arr!41753 (Array (_ BitVec 32) (_ BitVec 64))) (size!42304 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86515)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86515 (_ BitVec 32)) Bool)

(assert (=> b!1298916 (= res!863309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53723 () Bool)

(declare-fun mapRes!53723 () Bool)

(declare-fun tp!102521 () Bool)

(assert (=> mapNonEmpty!53723 (= mapRes!53723 (and tp!102521 e!741050))))

(declare-datatypes ((V!51467 0))(
  ( (V!51468 (val!17461 Int)) )
))
(declare-datatypes ((ValueCell!16488 0))(
  ( (ValueCellFull!16488 (v!20063 V!51467)) (EmptyCell!16488) )
))
(declare-fun mapRest!53723 () (Array (_ BitVec 32) ValueCell!16488))

(declare-fun mapValue!53723 () ValueCell!16488)

(declare-datatypes ((array!86517 0))(
  ( (array!86518 (arr!41754 (Array (_ BitVec 32) ValueCell!16488)) (size!42305 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86517)

(declare-fun mapKey!53723 () (_ BitVec 32))

(assert (=> mapNonEmpty!53723 (= (arr!41754 _values!1445) (store mapRest!53723 mapKey!53723 mapValue!53723))))

(declare-fun res!863313 () Bool)

(assert (=> start!109700 (=> (not res!863313) (not e!741054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109700 (= res!863313 (validMask!0 mask!2175))))

(assert (=> start!109700 e!741054))

(assert (=> start!109700 tp_is_empty!34773))

(assert (=> start!109700 true))

(declare-fun e!741052 () Bool)

(declare-fun array_inv!31593 (array!86517) Bool)

(assert (=> start!109700 (and (array_inv!31593 _values!1445) e!741052)))

(declare-fun array_inv!31594 (array!86515) Bool)

(assert (=> start!109700 (array_inv!31594 _keys!1741)))

(assert (=> start!109700 tp!102522))

(declare-fun b!1298917 () Bool)

(declare-fun e!741053 () Bool)

(assert (=> b!1298917 (= e!741052 (and e!741053 mapRes!53723))))

(declare-fun condMapEmpty!53723 () Bool)

(declare-fun mapDefault!53723 () ValueCell!16488)

(assert (=> b!1298917 (= condMapEmpty!53723 (= (arr!41754 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16488)) mapDefault!53723)))))

(declare-fun b!1298918 () Bool)

(declare-fun res!863308 () Bool)

(assert (=> b!1298918 (=> (not res!863308) (not e!741054))))

(declare-datatypes ((List!29824 0))(
  ( (Nil!29821) (Cons!29820 (h!31029 (_ BitVec 64)) (t!43397 List!29824)) )
))
(declare-fun arrayNoDuplicates!0 (array!86515 (_ BitVec 32) List!29824) Bool)

(assert (=> b!1298918 (= res!863308 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29821))))

(declare-fun b!1298919 () Bool)

(assert (=> b!1298919 (= e!741053 tp_is_empty!34773)))

(declare-fun b!1298920 () Bool)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!86515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1298920 (= e!741054 (not (arrayContainsKey!0 _keys!1741 k0!1205 from!2144)))))

(declare-fun b!1298921 () Bool)

(declare-fun res!863311 () Bool)

(assert (=> b!1298921 (=> (not res!863311) (not e!741054))))

(assert (=> b!1298921 (= res!863311 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42304 _keys!1741))))))

(declare-fun b!1298922 () Bool)

(declare-fun res!863310 () Bool)

(assert (=> b!1298922 (=> (not res!863310) (not e!741054))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1298922 (= res!863310 (and (= (size!42305 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42304 _keys!1741) (size!42305 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298923 () Bool)

(declare-fun res!863307 () Bool)

(assert (=> b!1298923 (=> (not res!863307) (not e!741054))))

(assert (=> b!1298923 (= res!863307 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42304 _keys!1741)) (= (select (arr!41753 _keys!1741) from!2144) k0!1205)))))

(declare-fun b!1298924 () Bool)

(declare-fun res!863312 () Bool)

(assert (=> b!1298924 (=> (not res!863312) (not e!741054))))

(declare-fun minValue!1387 () V!51467)

(declare-fun zeroValue!1387 () V!51467)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22664 0))(
  ( (tuple2!22665 (_1!11342 (_ BitVec 64)) (_2!11342 V!51467)) )
))
(declare-datatypes ((List!29825 0))(
  ( (Nil!29822) (Cons!29821 (h!31030 tuple2!22664) (t!43398 List!29825)) )
))
(declare-datatypes ((ListLongMap!20333 0))(
  ( (ListLongMap!20334 (toList!10182 List!29825)) )
))
(declare-fun contains!8237 (ListLongMap!20333 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5156 (array!86515 array!86517 (_ BitVec 32) (_ BitVec 32) V!51467 V!51467 (_ BitVec 32) Int) ListLongMap!20333)

(assert (=> b!1298924 (= res!863312 (contains!8237 (getCurrentListMap!5156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapIsEmpty!53723 () Bool)

(assert (=> mapIsEmpty!53723 mapRes!53723))

(assert (= (and start!109700 res!863313) b!1298922))

(assert (= (and b!1298922 res!863310) b!1298916))

(assert (= (and b!1298916 res!863309) b!1298918))

(assert (= (and b!1298918 res!863308) b!1298921))

(assert (= (and b!1298921 res!863311) b!1298924))

(assert (= (and b!1298924 res!863312) b!1298923))

(assert (= (and b!1298923 res!863307) b!1298920))

(assert (= (and b!1298917 condMapEmpty!53723) mapIsEmpty!53723))

(assert (= (and b!1298917 (not condMapEmpty!53723)) mapNonEmpty!53723))

(get-info :version)

(assert (= (and mapNonEmpty!53723 ((_ is ValueCellFull!16488) mapValue!53723)) b!1298915))

(assert (= (and b!1298917 ((_ is ValueCellFull!16488) mapDefault!53723)) b!1298919))

(assert (= start!109700 b!1298917))

(declare-fun m!1190241 () Bool)

(assert (=> mapNonEmpty!53723 m!1190241))

(declare-fun m!1190243 () Bool)

(assert (=> b!1298920 m!1190243))

(declare-fun m!1190245 () Bool)

(assert (=> b!1298918 m!1190245))

(declare-fun m!1190247 () Bool)

(assert (=> b!1298923 m!1190247))

(declare-fun m!1190249 () Bool)

(assert (=> b!1298916 m!1190249))

(declare-fun m!1190251 () Bool)

(assert (=> b!1298924 m!1190251))

(assert (=> b!1298924 m!1190251))

(declare-fun m!1190253 () Bool)

(assert (=> b!1298924 m!1190253))

(declare-fun m!1190255 () Bool)

(assert (=> start!109700 m!1190255))

(declare-fun m!1190257 () Bool)

(assert (=> start!109700 m!1190257))

(declare-fun m!1190259 () Bool)

(assert (=> start!109700 m!1190259))

(check-sat (not start!109700) (not b!1298916) tp_is_empty!34773 (not b!1298920) (not mapNonEmpty!53723) (not b_next!29133) (not b!1298918) b_and!47237 (not b!1298924))
(check-sat b_and!47237 (not b_next!29133))
(get-model)

(declare-fun d!140997 () Bool)

(declare-fun e!741075 () Bool)

(assert (=> d!140997 e!741075))

(declare-fun res!863337 () Bool)

(assert (=> d!140997 (=> res!863337 e!741075)))

(declare-fun lt!580812 () Bool)

(assert (=> d!140997 (= res!863337 (not lt!580812))))

(declare-fun lt!580815 () Bool)

(assert (=> d!140997 (= lt!580812 lt!580815)))

(declare-datatypes ((Unit!42960 0))(
  ( (Unit!42961) )
))
(declare-fun lt!580814 () Unit!42960)

(declare-fun e!741074 () Unit!42960)

(assert (=> d!140997 (= lt!580814 e!741074)))

(declare-fun c!124397 () Bool)

(assert (=> d!140997 (= c!124397 lt!580815)))

(declare-fun containsKey!716 (List!29825 (_ BitVec 64)) Bool)

(assert (=> d!140997 (= lt!580815 (containsKey!716 (toList!10182 (getCurrentListMap!5156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!140997 (= (contains!8237 (getCurrentListMap!5156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!580812)))

(declare-fun b!1298961 () Bool)

(declare-fun lt!580813 () Unit!42960)

(assert (=> b!1298961 (= e!741074 lt!580813)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!461 (List!29825 (_ BitVec 64)) Unit!42960)

(assert (=> b!1298961 (= lt!580813 (lemmaContainsKeyImpliesGetValueByKeyDefined!461 (toList!10182 (getCurrentListMap!5156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!749 0))(
  ( (Some!748 (v!20065 V!51467)) (None!747) )
))
(declare-fun isDefined!501 (Option!749) Bool)

(declare-fun getValueByKey!698 (List!29825 (_ BitVec 64)) Option!749)

(assert (=> b!1298961 (isDefined!501 (getValueByKey!698 (toList!10182 (getCurrentListMap!5156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1298962 () Bool)

(declare-fun Unit!42962 () Unit!42960)

(assert (=> b!1298962 (= e!741074 Unit!42962)))

(declare-fun b!1298963 () Bool)

(assert (=> b!1298963 (= e!741075 (isDefined!501 (getValueByKey!698 (toList!10182 (getCurrentListMap!5156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!140997 c!124397) b!1298961))

(assert (= (and d!140997 (not c!124397)) b!1298962))

(assert (= (and d!140997 (not res!863337)) b!1298963))

(declare-fun m!1190281 () Bool)

(assert (=> d!140997 m!1190281))

(declare-fun m!1190283 () Bool)

(assert (=> b!1298961 m!1190283))

(declare-fun m!1190285 () Bool)

(assert (=> b!1298961 m!1190285))

(assert (=> b!1298961 m!1190285))

(declare-fun m!1190287 () Bool)

(assert (=> b!1298961 m!1190287))

(assert (=> b!1298963 m!1190285))

(assert (=> b!1298963 m!1190285))

(assert (=> b!1298963 m!1190287))

(assert (=> b!1298924 d!140997))

(declare-fun bm!63551 () Bool)

(declare-fun call!63556 () ListLongMap!20333)

(declare-fun call!63557 () ListLongMap!20333)

(assert (=> bm!63551 (= call!63556 call!63557)))

(declare-fun b!1299006 () Bool)

(declare-fun e!741105 () Bool)

(declare-fun call!63560 () Bool)

(assert (=> b!1299006 (= e!741105 (not call!63560))))

(declare-fun b!1299007 () Bool)

(declare-fun e!741108 () Unit!42960)

(declare-fun lt!580861 () Unit!42960)

(assert (=> b!1299007 (= e!741108 lt!580861)))

(declare-fun lt!580880 () ListLongMap!20333)

(declare-fun getCurrentListMapNoExtraKeys!6129 (array!86515 array!86517 (_ BitVec 32) (_ BitVec 32) V!51467 V!51467 (_ BitVec 32) Int) ListLongMap!20333)

(assert (=> b!1299007 (= lt!580880 (getCurrentListMapNoExtraKeys!6129 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580879 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580879 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580875 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580875 (select (arr!41753 _keys!1741) from!2144))))

(declare-fun lt!580881 () Unit!42960)

(declare-fun addStillContains!1117 (ListLongMap!20333 (_ BitVec 64) V!51467 (_ BitVec 64)) Unit!42960)

(assert (=> b!1299007 (= lt!580881 (addStillContains!1117 lt!580880 lt!580879 zeroValue!1387 lt!580875))))

(declare-fun +!4416 (ListLongMap!20333 tuple2!22664) ListLongMap!20333)

(assert (=> b!1299007 (contains!8237 (+!4416 lt!580880 (tuple2!22665 lt!580879 zeroValue!1387)) lt!580875)))

(declare-fun lt!580877 () Unit!42960)

(assert (=> b!1299007 (= lt!580877 lt!580881)))

(declare-fun lt!580872 () ListLongMap!20333)

(assert (=> b!1299007 (= lt!580872 (getCurrentListMapNoExtraKeys!6129 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580866 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580866 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580874 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580874 (select (arr!41753 _keys!1741) from!2144))))

(declare-fun lt!580867 () Unit!42960)

(declare-fun addApplyDifferent!551 (ListLongMap!20333 (_ BitVec 64) V!51467 (_ BitVec 64)) Unit!42960)

(assert (=> b!1299007 (= lt!580867 (addApplyDifferent!551 lt!580872 lt!580866 minValue!1387 lt!580874))))

(declare-fun apply!1048 (ListLongMap!20333 (_ BitVec 64)) V!51467)

(assert (=> b!1299007 (= (apply!1048 (+!4416 lt!580872 (tuple2!22665 lt!580866 minValue!1387)) lt!580874) (apply!1048 lt!580872 lt!580874))))

(declare-fun lt!580878 () Unit!42960)

(assert (=> b!1299007 (= lt!580878 lt!580867)))

(declare-fun lt!580873 () ListLongMap!20333)

(assert (=> b!1299007 (= lt!580873 (getCurrentListMapNoExtraKeys!6129 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580864 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580864 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580869 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580869 (select (arr!41753 _keys!1741) from!2144))))

(declare-fun lt!580860 () Unit!42960)

(assert (=> b!1299007 (= lt!580860 (addApplyDifferent!551 lt!580873 lt!580864 zeroValue!1387 lt!580869))))

(assert (=> b!1299007 (= (apply!1048 (+!4416 lt!580873 (tuple2!22665 lt!580864 zeroValue!1387)) lt!580869) (apply!1048 lt!580873 lt!580869))))

(declare-fun lt!580876 () Unit!42960)

(assert (=> b!1299007 (= lt!580876 lt!580860)))

(declare-fun lt!580863 () ListLongMap!20333)

(assert (=> b!1299007 (= lt!580863 (getCurrentListMapNoExtraKeys!6129 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!580862 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580862 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!580871 () (_ BitVec 64))

(assert (=> b!1299007 (= lt!580871 (select (arr!41753 _keys!1741) from!2144))))

(assert (=> b!1299007 (= lt!580861 (addApplyDifferent!551 lt!580863 lt!580862 minValue!1387 lt!580871))))

(assert (=> b!1299007 (= (apply!1048 (+!4416 lt!580863 (tuple2!22665 lt!580862 minValue!1387)) lt!580871) (apply!1048 lt!580863 lt!580871))))

(declare-fun bm!63552 () Bool)

(declare-fun call!63558 () ListLongMap!20333)

(assert (=> bm!63552 (= call!63557 call!63558)))

(declare-fun b!1299008 () Bool)

(declare-fun e!741107 () ListLongMap!20333)

(declare-fun call!63555 () ListLongMap!20333)

(assert (=> b!1299008 (= e!741107 call!63555)))

(declare-fun b!1299009 () Bool)

(declare-fun e!741113 () ListLongMap!20333)

(declare-fun e!741110 () ListLongMap!20333)

(assert (=> b!1299009 (= e!741113 e!741110)))

(declare-fun c!124414 () Bool)

(assert (=> b!1299009 (= c!124414 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1299010 () Bool)

(declare-fun e!741109 () Bool)

(declare-fun lt!580868 () ListLongMap!20333)

(assert (=> b!1299010 (= e!741109 (= (apply!1048 lt!580868 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1299011 () Bool)

(declare-fun call!63559 () ListLongMap!20333)

(assert (=> b!1299011 (= e!741113 (+!4416 call!63559 (tuple2!22665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun b!1299012 () Bool)

(declare-fun e!741102 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299012 (= e!741102 (validKeyInArray!0 (select (arr!41753 _keys!1741) from!2144)))))

(declare-fun bm!63553 () Bool)

(assert (=> bm!63553 (= call!63555 call!63559)))

(declare-fun e!741103 () Bool)

(declare-fun b!1299013 () Bool)

(declare-fun get!21141 (ValueCell!16488 V!51467) V!51467)

(declare-fun dynLambda!3498 (Int (_ BitVec 64)) V!51467)

(assert (=> b!1299013 (= e!741103 (= (apply!1048 lt!580868 (select (arr!41753 _keys!1741) from!2144)) (get!21141 (select (arr!41754 _values!1445) from!2144) (dynLambda!3498 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1299013 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42305 _values!1445)))))

(assert (=> b!1299013 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42304 _keys!1741)))))

(declare-fun b!1299014 () Bool)

(declare-fun res!863357 () Bool)

(declare-fun e!741106 () Bool)

(assert (=> b!1299014 (=> (not res!863357) (not e!741106))))

(declare-fun e!741111 () Bool)

(assert (=> b!1299014 (= res!863357 e!741111)))

(declare-fun c!124412 () Bool)

(assert (=> b!1299014 (= c!124412 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1299015 () Bool)

(assert (=> b!1299015 (= e!741106 e!741105)))

(declare-fun c!124411 () Bool)

(assert (=> b!1299015 (= c!124411 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1299016 () Bool)

(declare-fun call!63554 () Bool)

(assert (=> b!1299016 (= e!741111 (not call!63554))))

(declare-fun bm!63554 () Bool)

(assert (=> bm!63554 (= call!63560 (contains!8237 lt!580868 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!140999 () Bool)

(assert (=> d!140999 e!741106))

(declare-fun res!863359 () Bool)

(assert (=> d!140999 (=> (not res!863359) (not e!741106))))

(assert (=> d!140999 (= res!863359 (or (bvsge from!2144 (size!42304 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42304 _keys!1741)))))))

(declare-fun lt!580865 () ListLongMap!20333)

(assert (=> d!140999 (= lt!580868 lt!580865)))

(declare-fun lt!580870 () Unit!42960)

(assert (=> d!140999 (= lt!580870 e!741108)))

(declare-fun c!124410 () Bool)

(declare-fun e!741112 () Bool)

(assert (=> d!140999 (= c!124410 e!741112)))

(declare-fun res!863362 () Bool)

(assert (=> d!140999 (=> (not res!863362) (not e!741112))))

(assert (=> d!140999 (= res!863362 (bvslt from!2144 (size!42304 _keys!1741)))))

(assert (=> d!140999 (= lt!580865 e!741113)))

(declare-fun c!124413 () Bool)

(assert (=> d!140999 (= c!124413 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!140999 (validMask!0 mask!2175)))

(assert (=> d!140999 (= (getCurrentListMap!5156 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!580868)))

(declare-fun b!1299017 () Bool)

(assert (=> b!1299017 (= e!741111 e!741109)))

(declare-fun res!863364 () Bool)

(assert (=> b!1299017 (= res!863364 call!63554)))

(assert (=> b!1299017 (=> (not res!863364) (not e!741109))))

(declare-fun b!1299018 () Bool)

(declare-fun e!741114 () Bool)

(assert (=> b!1299018 (= e!741114 e!741103)))

(declare-fun res!863358 () Bool)

(assert (=> b!1299018 (=> (not res!863358) (not e!741103))))

(assert (=> b!1299018 (= res!863358 (contains!8237 lt!580868 (select (arr!41753 _keys!1741) from!2144)))))

(assert (=> b!1299018 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42304 _keys!1741)))))

(declare-fun b!1299019 () Bool)

(declare-fun e!741104 () Bool)

(assert (=> b!1299019 (= e!741105 e!741104)))

(declare-fun res!863360 () Bool)

(assert (=> b!1299019 (= res!863360 call!63560)))

(assert (=> b!1299019 (=> (not res!863360) (not e!741104))))

(declare-fun b!1299020 () Bool)

(declare-fun Unit!42963 () Unit!42960)

(assert (=> b!1299020 (= e!741108 Unit!42963)))

(declare-fun bm!63555 () Bool)

(assert (=> bm!63555 (= call!63554 (contains!8237 lt!580868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1299021 () Bool)

(assert (=> b!1299021 (= e!741107 call!63556)))

(declare-fun b!1299022 () Bool)

(assert (=> b!1299022 (= e!741110 call!63555)))

(declare-fun bm!63556 () Bool)

(assert (=> bm!63556 (= call!63558 (getCurrentListMapNoExtraKeys!6129 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1299023 () Bool)

(assert (=> b!1299023 (= e!741104 (= (apply!1048 lt!580868 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1299024 () Bool)

(assert (=> b!1299024 (= e!741112 (validKeyInArray!0 (select (arr!41753 _keys!1741) from!2144)))))

(declare-fun b!1299025 () Bool)

(declare-fun c!124415 () Bool)

(assert (=> b!1299025 (= c!124415 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1299025 (= e!741110 e!741107)))

(declare-fun b!1299026 () Bool)

(declare-fun res!863363 () Bool)

(assert (=> b!1299026 (=> (not res!863363) (not e!741106))))

(assert (=> b!1299026 (= res!863363 e!741114)))

(declare-fun res!863356 () Bool)

(assert (=> b!1299026 (=> res!863356 e!741114)))

(assert (=> b!1299026 (= res!863356 (not e!741102))))

(declare-fun res!863361 () Bool)

(assert (=> b!1299026 (=> (not res!863361) (not e!741102))))

(assert (=> b!1299026 (= res!863361 (bvslt from!2144 (size!42304 _keys!1741)))))

(declare-fun bm!63557 () Bool)

(assert (=> bm!63557 (= call!63559 (+!4416 (ite c!124413 call!63558 (ite c!124414 call!63557 call!63556)) (ite (or c!124413 c!124414) (tuple2!22665 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22665 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(assert (= (and d!140999 c!124413) b!1299011))

(assert (= (and d!140999 (not c!124413)) b!1299009))

(assert (= (and b!1299009 c!124414) b!1299022))

(assert (= (and b!1299009 (not c!124414)) b!1299025))

(assert (= (and b!1299025 c!124415) b!1299008))

(assert (= (and b!1299025 (not c!124415)) b!1299021))

(assert (= (or b!1299008 b!1299021) bm!63551))

(assert (= (or b!1299022 bm!63551) bm!63552))

(assert (= (or b!1299022 b!1299008) bm!63553))

(assert (= (or b!1299011 bm!63552) bm!63556))

(assert (= (or b!1299011 bm!63553) bm!63557))

(assert (= (and d!140999 res!863362) b!1299024))

(assert (= (and d!140999 c!124410) b!1299007))

(assert (= (and d!140999 (not c!124410)) b!1299020))

(assert (= (and d!140999 res!863359) b!1299026))

(assert (= (and b!1299026 res!863361) b!1299012))

(assert (= (and b!1299026 (not res!863356)) b!1299018))

(assert (= (and b!1299018 res!863358) b!1299013))

(assert (= (and b!1299026 res!863363) b!1299014))

(assert (= (and b!1299014 c!124412) b!1299017))

(assert (= (and b!1299014 (not c!124412)) b!1299016))

(assert (= (and b!1299017 res!863364) b!1299010))

(assert (= (or b!1299017 b!1299016) bm!63555))

(assert (= (and b!1299014 res!863357) b!1299015))

(assert (= (and b!1299015 c!124411) b!1299019))

(assert (= (and b!1299015 (not c!124411)) b!1299006))

(assert (= (and b!1299019 res!863360) b!1299023))

(assert (= (or b!1299019 b!1299006) bm!63554))

(declare-fun b_lambda!23155 () Bool)

(assert (=> (not b_lambda!23155) (not b!1299013)))

(declare-fun t!43401 () Bool)

(declare-fun tb!11379 () Bool)

(assert (=> (and start!109700 (= defaultEntry!1448 defaultEntry!1448) t!43401) tb!11379))

(declare-fun result!23753 () Bool)

(assert (=> tb!11379 (= result!23753 tp_is_empty!34773)))

(assert (=> b!1299013 t!43401))

(declare-fun b_and!47241 () Bool)

(assert (= b_and!47237 (and (=> t!43401 result!23753) b_and!47241)))

(assert (=> b!1299012 m!1190247))

(assert (=> b!1299012 m!1190247))

(declare-fun m!1190289 () Bool)

(assert (=> b!1299012 m!1190289))

(declare-fun m!1190291 () Bool)

(assert (=> b!1299023 m!1190291))

(assert (=> b!1299013 m!1190247))

(declare-fun m!1190293 () Bool)

(assert (=> b!1299013 m!1190293))

(declare-fun m!1190295 () Bool)

(assert (=> b!1299013 m!1190295))

(declare-fun m!1190297 () Bool)

(assert (=> b!1299013 m!1190297))

(assert (=> b!1299013 m!1190247))

(assert (=> b!1299013 m!1190297))

(assert (=> b!1299013 m!1190295))

(declare-fun m!1190299 () Bool)

(assert (=> b!1299013 m!1190299))

(declare-fun m!1190301 () Bool)

(assert (=> bm!63555 m!1190301))

(declare-fun m!1190303 () Bool)

(assert (=> bm!63557 m!1190303))

(declare-fun m!1190305 () Bool)

(assert (=> bm!63554 m!1190305))

(assert (=> d!140999 m!1190255))

(declare-fun m!1190307 () Bool)

(assert (=> b!1299011 m!1190307))

(declare-fun m!1190309 () Bool)

(assert (=> b!1299010 m!1190309))

(declare-fun m!1190311 () Bool)

(assert (=> b!1299007 m!1190311))

(declare-fun m!1190313 () Bool)

(assert (=> b!1299007 m!1190313))

(declare-fun m!1190315 () Bool)

(assert (=> b!1299007 m!1190315))

(assert (=> b!1299007 m!1190315))

(declare-fun m!1190317 () Bool)

(assert (=> b!1299007 m!1190317))

(declare-fun m!1190319 () Bool)

(assert (=> b!1299007 m!1190319))

(declare-fun m!1190321 () Bool)

(assert (=> b!1299007 m!1190321))

(declare-fun m!1190323 () Bool)

(assert (=> b!1299007 m!1190323))

(declare-fun m!1190325 () Bool)

(assert (=> b!1299007 m!1190325))

(declare-fun m!1190327 () Bool)

(assert (=> b!1299007 m!1190327))

(declare-fun m!1190329 () Bool)

(assert (=> b!1299007 m!1190329))

(declare-fun m!1190331 () Bool)

(assert (=> b!1299007 m!1190331))

(declare-fun m!1190333 () Bool)

(assert (=> b!1299007 m!1190333))

(declare-fun m!1190335 () Bool)

(assert (=> b!1299007 m!1190335))

(assert (=> b!1299007 m!1190331))

(assert (=> b!1299007 m!1190319))

(declare-fun m!1190337 () Bool)

(assert (=> b!1299007 m!1190337))

(assert (=> b!1299007 m!1190311))

(declare-fun m!1190339 () Bool)

(assert (=> b!1299007 m!1190339))

(declare-fun m!1190341 () Bool)

(assert (=> b!1299007 m!1190341))

(assert (=> b!1299007 m!1190247))

(assert (=> b!1299024 m!1190247))

(assert (=> b!1299024 m!1190247))

(assert (=> b!1299024 m!1190289))

(assert (=> b!1299018 m!1190247))

(assert (=> b!1299018 m!1190247))

(declare-fun m!1190343 () Bool)

(assert (=> b!1299018 m!1190343))

(assert (=> bm!63556 m!1190335))

(assert (=> b!1298924 d!140999))

(declare-fun b!1299037 () Bool)

(declare-fun e!741122 () Bool)

(declare-fun call!63563 () Bool)

(assert (=> b!1299037 (= e!741122 call!63563)))

(declare-fun bm!63560 () Bool)

(assert (=> bm!63560 (= call!63563 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1299038 () Bool)

(declare-fun e!741121 () Bool)

(declare-fun e!741123 () Bool)

(assert (=> b!1299038 (= e!741121 e!741123)))

(declare-fun c!124418 () Bool)

(assert (=> b!1299038 (= c!124418 (validKeyInArray!0 (select (arr!41753 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1299039 () Bool)

(assert (=> b!1299039 (= e!741123 call!63563)))

(declare-fun d!141001 () Bool)

(declare-fun res!863369 () Bool)

(assert (=> d!141001 (=> res!863369 e!741121)))

(assert (=> d!141001 (= res!863369 (bvsge #b00000000000000000000000000000000 (size!42304 _keys!1741)))))

(assert (=> d!141001 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!741121)))

(declare-fun b!1299040 () Bool)

(assert (=> b!1299040 (= e!741123 e!741122)))

(declare-fun lt!580889 () (_ BitVec 64))

(assert (=> b!1299040 (= lt!580889 (select (arr!41753 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!580890 () Unit!42960)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86515 (_ BitVec 64) (_ BitVec 32)) Unit!42960)

(assert (=> b!1299040 (= lt!580890 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!580889 #b00000000000000000000000000000000))))

(assert (=> b!1299040 (arrayContainsKey!0 _keys!1741 lt!580889 #b00000000000000000000000000000000)))

(declare-fun lt!580888 () Unit!42960)

(assert (=> b!1299040 (= lt!580888 lt!580890)))

(declare-fun res!863370 () Bool)

(declare-datatypes ((SeekEntryResult!10013 0))(
  ( (MissingZero!10013 (index!42422 (_ BitVec 32))) (Found!10013 (index!42423 (_ BitVec 32))) (Intermediate!10013 (undefined!10825 Bool) (index!42424 (_ BitVec 32)) (x!115394 (_ BitVec 32))) (Undefined!10013) (MissingVacant!10013 (index!42425 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86515 (_ BitVec 32)) SeekEntryResult!10013)

(assert (=> b!1299040 (= res!863370 (= (seekEntryOrOpen!0 (select (arr!41753 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10013 #b00000000000000000000000000000000)))))

(assert (=> b!1299040 (=> (not res!863370) (not e!741122))))

(assert (= (and d!141001 (not res!863369)) b!1299038))

(assert (= (and b!1299038 c!124418) b!1299040))

(assert (= (and b!1299038 (not c!124418)) b!1299039))

(assert (= (and b!1299040 res!863370) b!1299037))

(assert (= (or b!1299037 b!1299039) bm!63560))

(declare-fun m!1190345 () Bool)

(assert (=> bm!63560 m!1190345))

(declare-fun m!1190347 () Bool)

(assert (=> b!1299038 m!1190347))

(assert (=> b!1299038 m!1190347))

(declare-fun m!1190349 () Bool)

(assert (=> b!1299038 m!1190349))

(assert (=> b!1299040 m!1190347))

(declare-fun m!1190351 () Bool)

(assert (=> b!1299040 m!1190351))

(declare-fun m!1190353 () Bool)

(assert (=> b!1299040 m!1190353))

(assert (=> b!1299040 m!1190347))

(declare-fun m!1190355 () Bool)

(assert (=> b!1299040 m!1190355))

(assert (=> b!1298916 d!141001))

(declare-fun d!141003 () Bool)

(declare-fun res!863375 () Bool)

(declare-fun e!741128 () Bool)

(assert (=> d!141003 (=> res!863375 e!741128)))

(assert (=> d!141003 (= res!863375 (= (select (arr!41753 _keys!1741) from!2144) k0!1205))))

(assert (=> d!141003 (= (arrayContainsKey!0 _keys!1741 k0!1205 from!2144) e!741128)))

(declare-fun b!1299045 () Bool)

(declare-fun e!741129 () Bool)

(assert (=> b!1299045 (= e!741128 e!741129)))

(declare-fun res!863376 () Bool)

(assert (=> b!1299045 (=> (not res!863376) (not e!741129))))

(assert (=> b!1299045 (= res!863376 (bvslt (bvadd from!2144 #b00000000000000000000000000000001) (size!42304 _keys!1741)))))

(declare-fun b!1299046 () Bool)

(assert (=> b!1299046 (= e!741129 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd from!2144 #b00000000000000000000000000000001)))))

(assert (= (and d!141003 (not res!863375)) b!1299045))

(assert (= (and b!1299045 res!863376) b!1299046))

(assert (=> d!141003 m!1190247))

(declare-fun m!1190357 () Bool)

(assert (=> b!1299046 m!1190357))

(assert (=> b!1298920 d!141003))

(declare-fun d!141005 () Bool)

(assert (=> d!141005 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!109700 d!141005))

(declare-fun d!141007 () Bool)

(assert (=> d!141007 (= (array_inv!31593 _values!1445) (bvsge (size!42305 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!109700 d!141007))

(declare-fun d!141009 () Bool)

(assert (=> d!141009 (= (array_inv!31594 _keys!1741) (bvsge (size!42304 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!109700 d!141009))

(declare-fun b!1299058 () Bool)

(declare-fun e!741141 () Bool)

(declare-fun e!741140 () Bool)

(assert (=> b!1299058 (= e!741141 e!741140)))

(declare-fun res!863383 () Bool)

(assert (=> b!1299058 (=> (not res!863383) (not e!741140))))

(declare-fun e!741139 () Bool)

(assert (=> b!1299058 (= res!863383 (not e!741139))))

(declare-fun res!863385 () Bool)

(assert (=> b!1299058 (=> (not res!863385) (not e!741139))))

(assert (=> b!1299058 (= res!863385 (validKeyInArray!0 (select (arr!41753 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1299057 () Bool)

(declare-fun e!741138 () Bool)

(declare-fun call!63566 () Bool)

(assert (=> b!1299057 (= e!741138 call!63566)))

(declare-fun d!141011 () Bool)

(declare-fun res!863384 () Bool)

(assert (=> d!141011 (=> res!863384 e!741141)))

(assert (=> d!141011 (= res!863384 (bvsge #b00000000000000000000000000000000 (size!42304 _keys!1741)))))

(assert (=> d!141011 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29821) e!741141)))

(declare-fun b!1299059 () Bool)

(assert (=> b!1299059 (= e!741140 e!741138)))

(declare-fun c!124421 () Bool)

(assert (=> b!1299059 (= c!124421 (validKeyInArray!0 (select (arr!41753 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1299060 () Bool)

(assert (=> b!1299060 (= e!741138 call!63566)))

(declare-fun bm!63563 () Bool)

(assert (=> bm!63563 (= call!63566 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!124421 (Cons!29820 (select (arr!41753 _keys!1741) #b00000000000000000000000000000000) Nil!29821) Nil!29821)))))

(declare-fun b!1299061 () Bool)

(declare-fun contains!8238 (List!29824 (_ BitVec 64)) Bool)

(assert (=> b!1299061 (= e!741139 (contains!8238 Nil!29821 (select (arr!41753 _keys!1741) #b00000000000000000000000000000000)))))

(assert (= (and d!141011 (not res!863384)) b!1299058))

(assert (= (and b!1299058 res!863385) b!1299061))

(assert (= (and b!1299058 res!863383) b!1299059))

(assert (= (and b!1299059 c!124421) b!1299057))

(assert (= (and b!1299059 (not c!124421)) b!1299060))

(assert (= (or b!1299057 b!1299060) bm!63563))

(assert (=> b!1299058 m!1190347))

(assert (=> b!1299058 m!1190347))

(assert (=> b!1299058 m!1190349))

(assert (=> b!1299059 m!1190347))

(assert (=> b!1299059 m!1190347))

(assert (=> b!1299059 m!1190349))

(assert (=> bm!63563 m!1190347))

(declare-fun m!1190359 () Bool)

(assert (=> bm!63563 m!1190359))

(assert (=> b!1299061 m!1190347))

(assert (=> b!1299061 m!1190347))

(declare-fun m!1190361 () Bool)

(assert (=> b!1299061 m!1190361))

(assert (=> b!1298918 d!141011))

(declare-fun b!1299069 () Bool)

(declare-fun e!741147 () Bool)

(assert (=> b!1299069 (= e!741147 tp_is_empty!34773)))

(declare-fun mapNonEmpty!53729 () Bool)

(declare-fun mapRes!53729 () Bool)

(declare-fun tp!102531 () Bool)

(declare-fun e!741146 () Bool)

(assert (=> mapNonEmpty!53729 (= mapRes!53729 (and tp!102531 e!741146))))

(declare-fun mapKey!53729 () (_ BitVec 32))

(declare-fun mapValue!53729 () ValueCell!16488)

(declare-fun mapRest!53729 () (Array (_ BitVec 32) ValueCell!16488))

(assert (=> mapNonEmpty!53729 (= mapRest!53723 (store mapRest!53729 mapKey!53729 mapValue!53729))))

(declare-fun b!1299068 () Bool)

(assert (=> b!1299068 (= e!741146 tp_is_empty!34773)))

(declare-fun condMapEmpty!53729 () Bool)

(declare-fun mapDefault!53729 () ValueCell!16488)

(assert (=> mapNonEmpty!53723 (= condMapEmpty!53729 (= mapRest!53723 ((as const (Array (_ BitVec 32) ValueCell!16488)) mapDefault!53729)))))

(assert (=> mapNonEmpty!53723 (= tp!102521 (and e!741147 mapRes!53729))))

(declare-fun mapIsEmpty!53729 () Bool)

(assert (=> mapIsEmpty!53729 mapRes!53729))

(assert (= (and mapNonEmpty!53723 condMapEmpty!53729) mapIsEmpty!53729))

(assert (= (and mapNonEmpty!53723 (not condMapEmpty!53729)) mapNonEmpty!53729))

(assert (= (and mapNonEmpty!53729 ((_ is ValueCellFull!16488) mapValue!53729)) b!1299068))

(assert (= (and mapNonEmpty!53723 ((_ is ValueCellFull!16488) mapDefault!53729)) b!1299069))

(declare-fun m!1190363 () Bool)

(assert (=> mapNonEmpty!53729 m!1190363))

(declare-fun b_lambda!23157 () Bool)

(assert (= b_lambda!23155 (or (and start!109700 b_free!29133) b_lambda!23157)))

(check-sat (not b!1299013) (not d!140999) (not b!1299007) (not bm!63560) (not b!1299010) (not bm!63556) (not b!1299046) tp_is_empty!34773 (not b!1299018) (not b!1299011) (not bm!63563) (not b!1299012) (not b!1299040) (not b!1299038) (not b_lambda!23157) (not bm!63557) (not b!1298961) b_and!47241 (not b!1299061) (not b!1299023) (not b!1299024) (not b!1299059) (not d!140997) (not bm!63555) (not b_next!29133) (not b!1298963) (not bm!63554) (not mapNonEmpty!53729) (not b!1299058))
(check-sat b_and!47241 (not b_next!29133))
