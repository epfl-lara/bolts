; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110060 () Bool)

(assert start!110060)

(declare-fun b_free!29247 () Bool)

(declare-fun b_next!29247 () Bool)

(assert (=> start!110060 (= b_free!29247 (not b_next!29247))))

(declare-fun tp!102890 () Bool)

(declare-fun b_and!47415 () Bool)

(assert (=> start!110060 (= tp!102890 b_and!47415)))

(declare-fun mapNonEmpty!53920 () Bool)

(declare-fun mapRes!53920 () Bool)

(declare-fun tp!102889 () Bool)

(declare-fun e!743206 () Bool)

(assert (=> mapNonEmpty!53920 (= mapRes!53920 (and tp!102889 e!743206))))

(declare-datatypes ((V!51619 0))(
  ( (V!51620 (val!17518 Int)) )
))
(declare-datatypes ((ValueCell!16545 0))(
  ( (ValueCellFull!16545 (v!20131 V!51619)) (EmptyCell!16545) )
))
(declare-fun mapValue!53920 () ValueCell!16545)

(declare-fun mapRest!53920 () (Array (_ BitVec 32) ValueCell!16545))

(declare-fun mapKey!53920 () (_ BitVec 32))

(declare-datatypes ((array!86749 0))(
  ( (array!86750 (arr!41862 (Array (_ BitVec 32) ValueCell!16545)) (size!42413 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86749)

(assert (=> mapNonEmpty!53920 (= (arr!41862 _values!1445) (store mapRest!53920 mapKey!53920 mapValue!53920))))

(declare-fun b!1302914 () Bool)

(declare-fun res!865479 () Bool)

(declare-fun e!743210 () Bool)

(assert (=> b!1302914 (=> (not res!865479) (not e!743210))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86751 0))(
  ( (array!86752 (arr!41863 (Array (_ BitVec 32) (_ BitVec 64))) (size!42414 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86751)

(assert (=> b!1302914 (= res!865479 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42414 _keys!1741))))))

(declare-fun b!1302915 () Bool)

(declare-fun tp_is_empty!34887 () Bool)

(assert (=> b!1302915 (= e!743206 tp_is_empty!34887)))

(declare-fun res!865480 () Bool)

(assert (=> start!110060 (=> (not res!865480) (not e!743210))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110060 (= res!865480 (validMask!0 mask!2175))))

(assert (=> start!110060 e!743210))

(assert (=> start!110060 tp_is_empty!34887))

(assert (=> start!110060 true))

(declare-fun e!743207 () Bool)

(declare-fun array_inv!31661 (array!86749) Bool)

(assert (=> start!110060 (and (array_inv!31661 _values!1445) e!743207)))

(declare-fun array_inv!31662 (array!86751) Bool)

(assert (=> start!110060 (array_inv!31662 _keys!1741)))

(assert (=> start!110060 tp!102890))

(declare-datatypes ((tuple2!22756 0))(
  ( (tuple2!22757 (_1!11388 (_ BitVec 64)) (_2!11388 V!51619)) )
))
(declare-fun lt!582933 () tuple2!22756)

(declare-fun b!1302916 () Bool)

(declare-datatypes ((List!29909 0))(
  ( (Nil!29906) (Cons!29905 (h!31114 tuple2!22756) (t!43508 List!29909)) )
))
(declare-datatypes ((ListLongMap!20425 0))(
  ( (ListLongMap!20426 (toList!10228 List!29909)) )
))
(declare-fun lt!582935 () ListLongMap!20425)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun e!743208 () Bool)

(declare-fun contains!8297 (ListLongMap!20425 (_ BitVec 64)) Bool)

(declare-fun +!4448 (ListLongMap!20425 tuple2!22756) ListLongMap!20425)

(assert (=> b!1302916 (= e!743208 (contains!8297 (+!4448 lt!582935 lt!582933) k0!1205))))

(declare-fun lt!582934 () ListLongMap!20425)

(assert (=> b!1302916 (not (contains!8297 (+!4448 lt!582934 lt!582933) k0!1205))))

(declare-fun minValue!1387 () V!51619)

(assert (=> b!1302916 (= lt!582933 (tuple2!22757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-datatypes ((Unit!43082 0))(
  ( (Unit!43083) )
))
(declare-fun lt!582931 () Unit!43082)

(declare-fun addStillNotContains!472 (ListLongMap!20425 (_ BitVec 64) V!51619 (_ BitVec 64)) Unit!43082)

(assert (=> b!1302916 (= lt!582931 (addStillNotContains!472 lt!582934 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(assert (=> b!1302916 (not (contains!8297 lt!582935 k0!1205))))

(declare-fun zeroValue!1387 () V!51619)

(assert (=> b!1302916 (= lt!582935 (+!4448 lt!582934 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582932 () Unit!43082)

(assert (=> b!1302916 (= lt!582932 (addStillNotContains!472 lt!582934 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6162 (array!86751 array!86749 (_ BitVec 32) (_ BitVec 32) V!51619 V!51619 (_ BitVec 32) Int) ListLongMap!20425)

(assert (=> b!1302916 (= lt!582934 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1302917 () Bool)

(declare-fun e!743209 () Bool)

(assert (=> b!1302917 (= e!743207 (and e!743209 mapRes!53920))))

(declare-fun condMapEmpty!53920 () Bool)

(declare-fun mapDefault!53920 () ValueCell!16545)

(assert (=> b!1302917 (= condMapEmpty!53920 (= (arr!41862 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16545)) mapDefault!53920)))))

(declare-fun b!1302918 () Bool)

(declare-fun res!865482 () Bool)

(assert (=> b!1302918 (=> (not res!865482) (not e!743210))))

(declare-fun getCurrentListMap!5191 (array!86751 array!86749 (_ BitVec 32) (_ BitVec 32) V!51619 V!51619 (_ BitVec 32) Int) ListLongMap!20425)

(assert (=> b!1302918 (= res!865482 (contains!8297 (getCurrentListMap!5191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1302919 () Bool)

(declare-fun res!865476 () Bool)

(assert (=> b!1302919 (=> (not res!865476) (not e!743210))))

(declare-datatypes ((List!29910 0))(
  ( (Nil!29907) (Cons!29906 (h!31115 (_ BitVec 64)) (t!43509 List!29910)) )
))
(declare-fun arrayNoDuplicates!0 (array!86751 (_ BitVec 32) List!29910) Bool)

(assert (=> b!1302919 (= res!865476 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29907))))

(declare-fun b!1302920 () Bool)

(declare-fun res!865475 () Bool)

(assert (=> b!1302920 (=> (not res!865475) (not e!743210))))

(assert (=> b!1302920 (= res!865475 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42414 _keys!1741))))))

(declare-fun b!1302921 () Bool)

(declare-fun res!865481 () Bool)

(assert (=> b!1302921 (=> (not res!865481) (not e!743210))))

(assert (=> b!1302921 (= res!865481 (and (= (size!42413 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42414 _keys!1741) (size!42413 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53920 () Bool)

(assert (=> mapIsEmpty!53920 mapRes!53920))

(declare-fun b!1302922 () Bool)

(declare-fun res!865478 () Bool)

(assert (=> b!1302922 (=> (not res!865478) (not e!743210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1302922 (= res!865478 (not (validKeyInArray!0 (select (arr!41863 _keys!1741) from!2144))))))

(declare-fun b!1302923 () Bool)

(assert (=> b!1302923 (= e!743209 tp_is_empty!34887)))

(declare-fun b!1302924 () Bool)

(declare-fun res!865483 () Bool)

(assert (=> b!1302924 (=> (not res!865483) (not e!743210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86751 (_ BitVec 32)) Bool)

(assert (=> b!1302924 (= res!865483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1302925 () Bool)

(assert (=> b!1302925 (= e!743210 (not e!743208))))

(declare-fun res!865477 () Bool)

(assert (=> b!1302925 (=> res!865477 e!743208)))

(assert (=> b!1302925 (= res!865477 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1302925 (not (contains!8297 (ListLongMap!20426 Nil!29906) k0!1205))))

(declare-fun lt!582930 () Unit!43082)

(declare-fun emptyContainsNothing!216 ((_ BitVec 64)) Unit!43082)

(assert (=> b!1302925 (= lt!582930 (emptyContainsNothing!216 k0!1205))))

(assert (= (and start!110060 res!865480) b!1302921))

(assert (= (and b!1302921 res!865481) b!1302924))

(assert (= (and b!1302924 res!865483) b!1302919))

(assert (= (and b!1302919 res!865476) b!1302914))

(assert (= (and b!1302914 res!865479) b!1302918))

(assert (= (and b!1302918 res!865482) b!1302920))

(assert (= (and b!1302920 res!865475) b!1302922))

(assert (= (and b!1302922 res!865478) b!1302925))

(assert (= (and b!1302925 (not res!865477)) b!1302916))

(assert (= (and b!1302917 condMapEmpty!53920) mapIsEmpty!53920))

(assert (= (and b!1302917 (not condMapEmpty!53920)) mapNonEmpty!53920))

(get-info :version)

(assert (= (and mapNonEmpty!53920 ((_ is ValueCellFull!16545) mapValue!53920)) b!1302915))

(assert (= (and b!1302917 ((_ is ValueCellFull!16545) mapDefault!53920)) b!1302923))

(assert (= start!110060 b!1302917))

(declare-fun m!1193811 () Bool)

(assert (=> b!1302922 m!1193811))

(assert (=> b!1302922 m!1193811))

(declare-fun m!1193813 () Bool)

(assert (=> b!1302922 m!1193813))

(declare-fun m!1193815 () Bool)

(assert (=> b!1302925 m!1193815))

(declare-fun m!1193817 () Bool)

(assert (=> b!1302925 m!1193817))

(declare-fun m!1193819 () Bool)

(assert (=> mapNonEmpty!53920 m!1193819))

(declare-fun m!1193821 () Bool)

(assert (=> start!110060 m!1193821))

(declare-fun m!1193823 () Bool)

(assert (=> start!110060 m!1193823))

(declare-fun m!1193825 () Bool)

(assert (=> start!110060 m!1193825))

(declare-fun m!1193827 () Bool)

(assert (=> b!1302918 m!1193827))

(assert (=> b!1302918 m!1193827))

(declare-fun m!1193829 () Bool)

(assert (=> b!1302918 m!1193829))

(declare-fun m!1193831 () Bool)

(assert (=> b!1302924 m!1193831))

(declare-fun m!1193833 () Bool)

(assert (=> b!1302919 m!1193833))

(declare-fun m!1193835 () Bool)

(assert (=> b!1302916 m!1193835))

(declare-fun m!1193837 () Bool)

(assert (=> b!1302916 m!1193837))

(declare-fun m!1193839 () Bool)

(assert (=> b!1302916 m!1193839))

(declare-fun m!1193841 () Bool)

(assert (=> b!1302916 m!1193841))

(assert (=> b!1302916 m!1193835))

(declare-fun m!1193843 () Bool)

(assert (=> b!1302916 m!1193843))

(declare-fun m!1193845 () Bool)

(assert (=> b!1302916 m!1193845))

(declare-fun m!1193847 () Bool)

(assert (=> b!1302916 m!1193847))

(assert (=> b!1302916 m!1193837))

(declare-fun m!1193849 () Bool)

(assert (=> b!1302916 m!1193849))

(declare-fun m!1193851 () Bool)

(assert (=> b!1302916 m!1193851))

(check-sat (not start!110060) (not b!1302918) (not b!1302924) b_and!47415 (not mapNonEmpty!53920) tp_is_empty!34887 (not b!1302925) (not b!1302916) (not b_next!29247) (not b!1302919) (not b!1302922))
(check-sat b_and!47415 (not b_next!29247))
(get-model)

(declare-fun b!1302972 () Bool)

(declare-fun e!743239 () Bool)

(declare-fun contains!8299 (List!29910 (_ BitVec 64)) Bool)

(assert (=> b!1302972 (= e!743239 (contains!8299 Nil!29907 (select (arr!41863 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302973 () Bool)

(declare-fun e!743240 () Bool)

(declare-fun call!64175 () Bool)

(assert (=> b!1302973 (= e!743240 call!64175)))

(declare-fun b!1302974 () Bool)

(assert (=> b!1302974 (= e!743240 call!64175)))

(declare-fun b!1302975 () Bool)

(declare-fun e!743241 () Bool)

(assert (=> b!1302975 (= e!743241 e!743240)))

(declare-fun c!125005 () Bool)

(assert (=> b!1302975 (= c!125005 (validKeyInArray!0 (select (arr!41863 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun b!1302976 () Bool)

(declare-fun e!743238 () Bool)

(assert (=> b!1302976 (= e!743238 e!743241)))

(declare-fun res!865519 () Bool)

(assert (=> b!1302976 (=> (not res!865519) (not e!743241))))

(assert (=> b!1302976 (= res!865519 (not e!743239))))

(declare-fun res!865517 () Bool)

(assert (=> b!1302976 (=> (not res!865517) (not e!743239))))

(assert (=> b!1302976 (= res!865517 (validKeyInArray!0 (select (arr!41863 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun bm!64172 () Bool)

(assert (=> bm!64172 (= call!64175 (arrayNoDuplicates!0 _keys!1741 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125005 (Cons!29906 (select (arr!41863 _keys!1741) #b00000000000000000000000000000000) Nil!29907) Nil!29907)))))

(declare-fun d!141517 () Bool)

(declare-fun res!865518 () Bool)

(assert (=> d!141517 (=> res!865518 e!743238)))

(assert (=> d!141517 (= res!865518 (bvsge #b00000000000000000000000000000000 (size!42414 _keys!1741)))))

(assert (=> d!141517 (= (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29907) e!743238)))

(assert (= (and d!141517 (not res!865518)) b!1302976))

(assert (= (and b!1302976 res!865517) b!1302972))

(assert (= (and b!1302976 res!865519) b!1302975))

(assert (= (and b!1302975 c!125005) b!1302974))

(assert (= (and b!1302975 (not c!125005)) b!1302973))

(assert (= (or b!1302974 b!1302973) bm!64172))

(declare-fun m!1193895 () Bool)

(assert (=> b!1302972 m!1193895))

(assert (=> b!1302972 m!1193895))

(declare-fun m!1193897 () Bool)

(assert (=> b!1302972 m!1193897))

(assert (=> b!1302975 m!1193895))

(assert (=> b!1302975 m!1193895))

(declare-fun m!1193899 () Bool)

(assert (=> b!1302975 m!1193899))

(assert (=> b!1302976 m!1193895))

(assert (=> b!1302976 m!1193895))

(assert (=> b!1302976 m!1193899))

(assert (=> bm!64172 m!1193895))

(declare-fun m!1193901 () Bool)

(assert (=> bm!64172 m!1193901))

(assert (=> b!1302919 d!141517))

(declare-fun d!141519 () Bool)

(declare-fun e!743247 () Bool)

(assert (=> d!141519 e!743247))

(declare-fun res!865522 () Bool)

(assert (=> d!141519 (=> res!865522 e!743247)))

(declare-fun lt!582962 () Bool)

(assert (=> d!141519 (= res!865522 (not lt!582962))))

(declare-fun lt!582965 () Bool)

(assert (=> d!141519 (= lt!582962 lt!582965)))

(declare-fun lt!582964 () Unit!43082)

(declare-fun e!743246 () Unit!43082)

(assert (=> d!141519 (= lt!582964 e!743246)))

(declare-fun c!125008 () Bool)

(assert (=> d!141519 (= c!125008 lt!582965)))

(declare-fun containsKey!724 (List!29909 (_ BitVec 64)) Bool)

(assert (=> d!141519 (= lt!582965 (containsKey!724 (toList!10228 (getCurrentListMap!5191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(assert (=> d!141519 (= (contains!8297 (getCurrentListMap!5191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205) lt!582962)))

(declare-fun b!1302983 () Bool)

(declare-fun lt!582963 () Unit!43082)

(assert (=> b!1302983 (= e!743246 lt!582963)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!469 (List!29909 (_ BitVec 64)) Unit!43082)

(assert (=> b!1302983 (= lt!582963 (lemmaContainsKeyImpliesGetValueByKeyDefined!469 (toList!10228 (getCurrentListMap!5191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-datatypes ((Option!757 0))(
  ( (Some!756 (v!20133 V!51619)) (None!755) )
))
(declare-fun isDefined!509 (Option!757) Bool)

(declare-fun getValueByKey!706 (List!29909 (_ BitVec 64)) Option!757)

(assert (=> b!1302983 (isDefined!509 (getValueByKey!706 (toList!10228 (getCurrentListMap!5191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205))))

(declare-fun b!1302984 () Bool)

(declare-fun Unit!43086 () Unit!43082)

(assert (=> b!1302984 (= e!743246 Unit!43086)))

(declare-fun b!1302985 () Bool)

(assert (=> b!1302985 (= e!743247 (isDefined!509 (getValueByKey!706 (toList!10228 (getCurrentListMap!5191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448)) k0!1205)))))

(assert (= (and d!141519 c!125008) b!1302983))

(assert (= (and d!141519 (not c!125008)) b!1302984))

(assert (= (and d!141519 (not res!865522)) b!1302985))

(declare-fun m!1193903 () Bool)

(assert (=> d!141519 m!1193903))

(declare-fun m!1193905 () Bool)

(assert (=> b!1302983 m!1193905))

(declare-fun m!1193907 () Bool)

(assert (=> b!1302983 m!1193907))

(assert (=> b!1302983 m!1193907))

(declare-fun m!1193909 () Bool)

(assert (=> b!1302983 m!1193909))

(assert (=> b!1302985 m!1193907))

(assert (=> b!1302985 m!1193907))

(assert (=> b!1302985 m!1193909))

(assert (=> b!1302918 d!141519))

(declare-fun b!1303028 () Bool)

(declare-fun e!743285 () Bool)

(declare-fun e!743280 () Bool)

(assert (=> b!1303028 (= e!743285 e!743280)))

(declare-fun res!865544 () Bool)

(assert (=> b!1303028 (=> (not res!865544) (not e!743280))))

(declare-fun lt!583029 () ListLongMap!20425)

(assert (=> b!1303028 (= res!865544 (contains!8297 lt!583029 (select (arr!41863 _keys!1741) from!2144)))))

(assert (=> b!1303028 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42414 _keys!1741)))))

(declare-fun bm!64187 () Bool)

(declare-fun call!64194 () ListLongMap!20425)

(declare-fun call!64196 () ListLongMap!20425)

(assert (=> bm!64187 (= call!64194 call!64196)))

(declare-fun b!1303029 () Bool)

(declare-fun e!743284 () Unit!43082)

(declare-fun Unit!43087 () Unit!43082)

(assert (=> b!1303029 (= e!743284 Unit!43087)))

(declare-fun b!1303030 () Bool)

(declare-fun e!743281 () ListLongMap!20425)

(declare-fun call!64192 () ListLongMap!20425)

(assert (=> b!1303030 (= e!743281 (+!4448 call!64192 (tuple2!22757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)))))

(declare-fun bm!64188 () Bool)

(declare-fun call!64191 () Bool)

(assert (=> bm!64188 (= call!64191 (contains!8297 lt!583029 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1303031 () Bool)

(declare-fun e!743279 () Bool)

(declare-fun apply!1056 (ListLongMap!20425 (_ BitVec 64)) V!51619)

(assert (=> b!1303031 (= e!743279 (= (apply!1056 lt!583029 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1387))))

(declare-fun b!1303032 () Bool)

(declare-fun e!743286 () Bool)

(assert (=> b!1303032 (= e!743286 (not call!64191))))

(declare-fun b!1303033 () Bool)

(declare-fun e!743282 () Bool)

(declare-fun call!64195 () Bool)

(assert (=> b!1303033 (= e!743282 (not call!64195))))

(declare-fun bm!64189 () Bool)

(declare-fun call!64193 () ListLongMap!20425)

(assert (=> bm!64189 (= call!64196 call!64193)))

(declare-fun bm!64190 () Bool)

(assert (=> bm!64190 (= call!64193 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1303034 () Bool)

(declare-fun e!743277 () ListLongMap!20425)

(assert (=> b!1303034 (= e!743277 call!64194)))

(declare-fun b!1303035 () Bool)

(assert (=> b!1303035 (= e!743286 e!743279)))

(declare-fun res!865541 () Bool)

(assert (=> b!1303035 (= res!865541 call!64191)))

(assert (=> b!1303035 (=> (not res!865541) (not e!743279))))

(declare-fun b!1303036 () Bool)

(declare-fun e!743278 () Bool)

(assert (=> b!1303036 (= e!743278 (validKeyInArray!0 (select (arr!41863 _keys!1741) from!2144)))))

(declare-fun b!1303037 () Bool)

(declare-fun res!865548 () Bool)

(declare-fun e!743283 () Bool)

(assert (=> b!1303037 (=> (not res!865548) (not e!743283))))

(assert (=> b!1303037 (= res!865548 e!743282)))

(declare-fun c!125026 () Bool)

(assert (=> b!1303037 (= c!125026 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1303038 () Bool)

(declare-fun e!743276 () ListLongMap!20425)

(assert (=> b!1303038 (= e!743281 e!743276)))

(declare-fun c!125024 () Bool)

(assert (=> b!1303038 (= c!125024 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1303039 () Bool)

(declare-fun call!64190 () ListLongMap!20425)

(assert (=> b!1303039 (= e!743276 call!64190)))

(declare-fun bm!64191 () Bool)

(assert (=> bm!64191 (= call!64190 call!64192)))

(declare-fun b!1303040 () Bool)

(declare-fun res!865545 () Bool)

(assert (=> b!1303040 (=> (not res!865545) (not e!743283))))

(assert (=> b!1303040 (= res!865545 e!743285)))

(declare-fun res!865542 () Bool)

(assert (=> b!1303040 (=> res!865542 e!743285)))

(declare-fun e!743275 () Bool)

(assert (=> b!1303040 (= res!865542 (not e!743275))))

(declare-fun res!865546 () Bool)

(assert (=> b!1303040 (=> (not res!865546) (not e!743275))))

(assert (=> b!1303040 (= res!865546 (bvslt from!2144 (size!42414 _keys!1741)))))

(declare-fun b!1303041 () Bool)

(declare-fun lt!583013 () Unit!43082)

(assert (=> b!1303041 (= e!743284 lt!583013)))

(declare-fun lt!583010 () ListLongMap!20425)

(assert (=> b!1303041 (= lt!583010 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583018 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583018 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583030 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583030 (select (arr!41863 _keys!1741) from!2144))))

(declare-fun lt!583015 () Unit!43082)

(declare-fun addStillContains!1125 (ListLongMap!20425 (_ BitVec 64) V!51619 (_ BitVec 64)) Unit!43082)

(assert (=> b!1303041 (= lt!583015 (addStillContains!1125 lt!583010 lt!583018 zeroValue!1387 lt!583030))))

(assert (=> b!1303041 (contains!8297 (+!4448 lt!583010 (tuple2!22757 lt!583018 zeroValue!1387)) lt!583030)))

(declare-fun lt!583016 () Unit!43082)

(assert (=> b!1303041 (= lt!583016 lt!583015)))

(declare-fun lt!583020 () ListLongMap!20425)

(assert (=> b!1303041 (= lt!583020 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583014 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583014 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583024 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583024 (select (arr!41863 _keys!1741) from!2144))))

(declare-fun lt!583028 () Unit!43082)

(declare-fun addApplyDifferent!559 (ListLongMap!20425 (_ BitVec 64) V!51619 (_ BitVec 64)) Unit!43082)

(assert (=> b!1303041 (= lt!583028 (addApplyDifferent!559 lt!583020 lt!583014 minValue!1387 lt!583024))))

(assert (=> b!1303041 (= (apply!1056 (+!4448 lt!583020 (tuple2!22757 lt!583014 minValue!1387)) lt!583024) (apply!1056 lt!583020 lt!583024))))

(declare-fun lt!583021 () Unit!43082)

(assert (=> b!1303041 (= lt!583021 lt!583028)))

(declare-fun lt!583019 () ListLongMap!20425)

(assert (=> b!1303041 (= lt!583019 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583025 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583025 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583022 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583022 (select (arr!41863 _keys!1741) from!2144))))

(declare-fun lt!583012 () Unit!43082)

(assert (=> b!1303041 (= lt!583012 (addApplyDifferent!559 lt!583019 lt!583025 zeroValue!1387 lt!583022))))

(assert (=> b!1303041 (= (apply!1056 (+!4448 lt!583019 (tuple2!22757 lt!583025 zeroValue!1387)) lt!583022) (apply!1056 lt!583019 lt!583022))))

(declare-fun lt!583026 () Unit!43082)

(assert (=> b!1303041 (= lt!583026 lt!583012)))

(declare-fun lt!583017 () ListLongMap!20425)

(assert (=> b!1303041 (= lt!583017 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun lt!583011 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583011 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!583031 () (_ BitVec 64))

(assert (=> b!1303041 (= lt!583031 (select (arr!41863 _keys!1741) from!2144))))

(assert (=> b!1303041 (= lt!583013 (addApplyDifferent!559 lt!583017 lt!583011 minValue!1387 lt!583031))))

(assert (=> b!1303041 (= (apply!1056 (+!4448 lt!583017 (tuple2!22757 lt!583011 minValue!1387)) lt!583031) (apply!1056 lt!583017 lt!583031))))

(declare-fun c!125022 () Bool)

(declare-fun bm!64192 () Bool)

(assert (=> bm!64192 (= call!64192 (+!4448 (ite c!125022 call!64193 (ite c!125024 call!64196 call!64194)) (ite (or c!125022 c!125024) (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387) (tuple2!22757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))))

(declare-fun b!1303042 () Bool)

(declare-fun c!125021 () Bool)

(assert (=> b!1303042 (= c!125021 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1303042 (= e!743276 e!743277)))

(declare-fun b!1303043 () Bool)

(declare-fun e!743274 () Bool)

(assert (=> b!1303043 (= e!743282 e!743274)))

(declare-fun res!865547 () Bool)

(assert (=> b!1303043 (= res!865547 call!64195)))

(assert (=> b!1303043 (=> (not res!865547) (not e!743274))))

(declare-fun b!1303044 () Bool)

(declare-fun get!21195 (ValueCell!16545 V!51619) V!51619)

(declare-fun dynLambda!3508 (Int (_ BitVec 64)) V!51619)

(assert (=> b!1303044 (= e!743280 (= (apply!1056 lt!583029 (select (arr!41863 _keys!1741) from!2144)) (get!21195 (select (arr!41862 _values!1445) from!2144) (dynLambda!3508 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1303044 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42413 _values!1445)))))

(assert (=> b!1303044 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42414 _keys!1741)))))

(declare-fun d!141521 () Bool)

(assert (=> d!141521 e!743283))

(declare-fun res!865549 () Bool)

(assert (=> d!141521 (=> (not res!865549) (not e!743283))))

(assert (=> d!141521 (= res!865549 (or (bvsge from!2144 (size!42414 _keys!1741)) (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42414 _keys!1741)))))))

(declare-fun lt!583027 () ListLongMap!20425)

(assert (=> d!141521 (= lt!583029 lt!583027)))

(declare-fun lt!583023 () Unit!43082)

(assert (=> d!141521 (= lt!583023 e!743284)))

(declare-fun c!125023 () Bool)

(assert (=> d!141521 (= c!125023 e!743278)))

(declare-fun res!865543 () Bool)

(assert (=> d!141521 (=> (not res!865543) (not e!743278))))

(assert (=> d!141521 (= res!865543 (bvslt from!2144 (size!42414 _keys!1741)))))

(assert (=> d!141521 (= lt!583027 e!743281)))

(assert (=> d!141521 (= c!125022 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!141521 (validMask!0 mask!2175)))

(assert (=> d!141521 (= (getCurrentListMap!5191 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583029)))

(declare-fun b!1303045 () Bool)

(assert (=> b!1303045 (= e!743274 (= (apply!1056 lt!583029 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1387))))

(declare-fun b!1303046 () Bool)

(assert (=> b!1303046 (= e!743277 call!64190)))

(declare-fun b!1303047 () Bool)

(assert (=> b!1303047 (= e!743275 (validKeyInArray!0 (select (arr!41863 _keys!1741) from!2144)))))

(declare-fun b!1303048 () Bool)

(assert (=> b!1303048 (= e!743283 e!743286)))

(declare-fun c!125025 () Bool)

(assert (=> b!1303048 (= c!125025 (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64193 () Bool)

(assert (=> bm!64193 (= call!64195 (contains!8297 lt!583029 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!141521 c!125022) b!1303030))

(assert (= (and d!141521 (not c!125022)) b!1303038))

(assert (= (and b!1303038 c!125024) b!1303039))

(assert (= (and b!1303038 (not c!125024)) b!1303042))

(assert (= (and b!1303042 c!125021) b!1303046))

(assert (= (and b!1303042 (not c!125021)) b!1303034))

(assert (= (or b!1303046 b!1303034) bm!64187))

(assert (= (or b!1303039 bm!64187) bm!64189))

(assert (= (or b!1303039 b!1303046) bm!64191))

(assert (= (or b!1303030 bm!64189) bm!64190))

(assert (= (or b!1303030 bm!64191) bm!64192))

(assert (= (and d!141521 res!865543) b!1303036))

(assert (= (and d!141521 c!125023) b!1303041))

(assert (= (and d!141521 (not c!125023)) b!1303029))

(assert (= (and d!141521 res!865549) b!1303040))

(assert (= (and b!1303040 res!865546) b!1303047))

(assert (= (and b!1303040 (not res!865542)) b!1303028))

(assert (= (and b!1303028 res!865544) b!1303044))

(assert (= (and b!1303040 res!865545) b!1303037))

(assert (= (and b!1303037 c!125026) b!1303043))

(assert (= (and b!1303037 (not c!125026)) b!1303033))

(assert (= (and b!1303043 res!865547) b!1303045))

(assert (= (or b!1303043 b!1303033) bm!64193))

(assert (= (and b!1303037 res!865548) b!1303048))

(assert (= (and b!1303048 c!125025) b!1303035))

(assert (= (and b!1303048 (not c!125025)) b!1303032))

(assert (= (and b!1303035 res!865541) b!1303031))

(assert (= (or b!1303035 b!1303032) bm!64188))

(declare-fun b_lambda!23273 () Bool)

(assert (=> (not b_lambda!23273) (not b!1303044)))

(declare-fun t!43513 () Bool)

(declare-fun tb!11405 () Bool)

(assert (=> (and start!110060 (= defaultEntry!1448 defaultEntry!1448) t!43513) tb!11405))

(declare-fun result!23821 () Bool)

(assert (=> tb!11405 (= result!23821 tp_is_empty!34887)))

(assert (=> b!1303044 t!43513))

(declare-fun b_and!47419 () Bool)

(assert (= b_and!47415 (and (=> t!43513 result!23821) b_and!47419)))

(assert (=> b!1303036 m!1193811))

(assert (=> b!1303036 m!1193811))

(assert (=> b!1303036 m!1193813))

(assert (=> d!141521 m!1193821))

(declare-fun m!1193911 () Bool)

(assert (=> b!1303031 m!1193911))

(assert (=> b!1303028 m!1193811))

(assert (=> b!1303028 m!1193811))

(declare-fun m!1193913 () Bool)

(assert (=> b!1303028 m!1193913))

(declare-fun m!1193915 () Bool)

(assert (=> b!1303044 m!1193915))

(declare-fun m!1193917 () Bool)

(assert (=> b!1303044 m!1193917))

(declare-fun m!1193919 () Bool)

(assert (=> b!1303044 m!1193919))

(assert (=> b!1303044 m!1193811))

(assert (=> b!1303044 m!1193811))

(declare-fun m!1193921 () Bool)

(assert (=> b!1303044 m!1193921))

(assert (=> b!1303044 m!1193915))

(assert (=> b!1303044 m!1193917))

(declare-fun m!1193923 () Bool)

(assert (=> bm!64192 m!1193923))

(declare-fun m!1193925 () Bool)

(assert (=> bm!64193 m!1193925))

(assert (=> b!1303047 m!1193811))

(assert (=> b!1303047 m!1193811))

(assert (=> b!1303047 m!1193813))

(declare-fun m!1193927 () Bool)

(assert (=> b!1303045 m!1193927))

(assert (=> bm!64190 m!1193847))

(declare-fun m!1193929 () Bool)

(assert (=> b!1303041 m!1193929))

(assert (=> b!1303041 m!1193811))

(declare-fun m!1193931 () Bool)

(assert (=> b!1303041 m!1193931))

(declare-fun m!1193933 () Bool)

(assert (=> b!1303041 m!1193933))

(declare-fun m!1193935 () Bool)

(assert (=> b!1303041 m!1193935))

(declare-fun m!1193937 () Bool)

(assert (=> b!1303041 m!1193937))

(declare-fun m!1193939 () Bool)

(assert (=> b!1303041 m!1193939))

(declare-fun m!1193941 () Bool)

(assert (=> b!1303041 m!1193941))

(assert (=> b!1303041 m!1193935))

(declare-fun m!1193943 () Bool)

(assert (=> b!1303041 m!1193943))

(declare-fun m!1193945 () Bool)

(assert (=> b!1303041 m!1193945))

(declare-fun m!1193947 () Bool)

(assert (=> b!1303041 m!1193947))

(assert (=> b!1303041 m!1193947))

(declare-fun m!1193949 () Bool)

(assert (=> b!1303041 m!1193949))

(declare-fun m!1193951 () Bool)

(assert (=> b!1303041 m!1193951))

(declare-fun m!1193953 () Bool)

(assert (=> b!1303041 m!1193953))

(declare-fun m!1193955 () Bool)

(assert (=> b!1303041 m!1193955))

(assert (=> b!1303041 m!1193847))

(assert (=> b!1303041 m!1193931))

(assert (=> b!1303041 m!1193951))

(declare-fun m!1193957 () Bool)

(assert (=> b!1303041 m!1193957))

(declare-fun m!1193959 () Bool)

(assert (=> b!1303030 m!1193959))

(declare-fun m!1193961 () Bool)

(assert (=> bm!64188 m!1193961))

(assert (=> b!1302918 d!141521))

(declare-fun b!1303059 () Bool)

(declare-fun e!743293 () Bool)

(declare-fun e!743294 () Bool)

(assert (=> b!1303059 (= e!743293 e!743294)))

(declare-fun lt!583040 () (_ BitVec 64))

(assert (=> b!1303059 (= lt!583040 (select (arr!41863 _keys!1741) #b00000000000000000000000000000000))))

(declare-fun lt!583038 () Unit!43082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86751 (_ BitVec 64) (_ BitVec 32)) Unit!43082)

(assert (=> b!1303059 (= lt!583038 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1741 lt!583040 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86751 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1303059 (arrayContainsKey!0 _keys!1741 lt!583040 #b00000000000000000000000000000000)))

(declare-fun lt!583039 () Unit!43082)

(assert (=> b!1303059 (= lt!583039 lt!583038)))

(declare-fun res!865554 () Bool)

(declare-datatypes ((SeekEntryResult!10021 0))(
  ( (MissingZero!10021 (index!42454 (_ BitVec 32))) (Found!10021 (index!42455 (_ BitVec 32))) (Intermediate!10021 (undefined!10833 Bool) (index!42456 (_ BitVec 32)) (x!115726 (_ BitVec 32))) (Undefined!10021) (MissingVacant!10021 (index!42457 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86751 (_ BitVec 32)) SeekEntryResult!10021)

(assert (=> b!1303059 (= res!865554 (= (seekEntryOrOpen!0 (select (arr!41863 _keys!1741) #b00000000000000000000000000000000) _keys!1741 mask!2175) (Found!10021 #b00000000000000000000000000000000)))))

(assert (=> b!1303059 (=> (not res!865554) (not e!743294))))

(declare-fun bm!64196 () Bool)

(declare-fun call!64199 () Bool)

(assert (=> bm!64196 (= call!64199 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1741 mask!2175))))

(declare-fun b!1303060 () Bool)

(assert (=> b!1303060 (= e!743294 call!64199)))

(declare-fun b!1303061 () Bool)

(declare-fun e!743295 () Bool)

(assert (=> b!1303061 (= e!743295 e!743293)))

(declare-fun c!125029 () Bool)

(assert (=> b!1303061 (= c!125029 (validKeyInArray!0 (select (arr!41863 _keys!1741) #b00000000000000000000000000000000)))))

(declare-fun d!141523 () Bool)

(declare-fun res!865555 () Bool)

(assert (=> d!141523 (=> res!865555 e!743295)))

(assert (=> d!141523 (= res!865555 (bvsge #b00000000000000000000000000000000 (size!42414 _keys!1741)))))

(assert (=> d!141523 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175) e!743295)))

(declare-fun b!1303062 () Bool)

(assert (=> b!1303062 (= e!743293 call!64199)))

(assert (= (and d!141523 (not res!865555)) b!1303061))

(assert (= (and b!1303061 c!125029) b!1303059))

(assert (= (and b!1303061 (not c!125029)) b!1303062))

(assert (= (and b!1303059 res!865554) b!1303060))

(assert (= (or b!1303060 b!1303062) bm!64196))

(assert (=> b!1303059 m!1193895))

(declare-fun m!1193963 () Bool)

(assert (=> b!1303059 m!1193963))

(declare-fun m!1193965 () Bool)

(assert (=> b!1303059 m!1193965))

(assert (=> b!1303059 m!1193895))

(declare-fun m!1193967 () Bool)

(assert (=> b!1303059 m!1193967))

(declare-fun m!1193969 () Bool)

(assert (=> bm!64196 m!1193969))

(assert (=> b!1303061 m!1193895))

(assert (=> b!1303061 m!1193895))

(assert (=> b!1303061 m!1193899))

(assert (=> b!1302924 d!141523))

(declare-fun d!141525 () Bool)

(declare-fun e!743298 () Bool)

(assert (=> d!141525 e!743298))

(declare-fun res!865561 () Bool)

(assert (=> d!141525 (=> (not res!865561) (not e!743298))))

(declare-fun lt!583051 () ListLongMap!20425)

(assert (=> d!141525 (= res!865561 (contains!8297 lt!583051 (_1!11388 lt!582933)))))

(declare-fun lt!583049 () List!29909)

(assert (=> d!141525 (= lt!583051 (ListLongMap!20426 lt!583049))))

(declare-fun lt!583052 () Unit!43082)

(declare-fun lt!583050 () Unit!43082)

(assert (=> d!141525 (= lt!583052 lt!583050)))

(assert (=> d!141525 (= (getValueByKey!706 lt!583049 (_1!11388 lt!582933)) (Some!756 (_2!11388 lt!582933)))))

(declare-fun lemmaContainsTupThenGetReturnValue!350 (List!29909 (_ BitVec 64) V!51619) Unit!43082)

(assert (=> d!141525 (= lt!583050 (lemmaContainsTupThenGetReturnValue!350 lt!583049 (_1!11388 lt!582933) (_2!11388 lt!582933)))))

(declare-fun insertStrictlySorted!479 (List!29909 (_ BitVec 64) V!51619) List!29909)

(assert (=> d!141525 (= lt!583049 (insertStrictlySorted!479 (toList!10228 lt!582934) (_1!11388 lt!582933) (_2!11388 lt!582933)))))

(assert (=> d!141525 (= (+!4448 lt!582934 lt!582933) lt!583051)))

(declare-fun b!1303067 () Bool)

(declare-fun res!865560 () Bool)

(assert (=> b!1303067 (=> (not res!865560) (not e!743298))))

(assert (=> b!1303067 (= res!865560 (= (getValueByKey!706 (toList!10228 lt!583051) (_1!11388 lt!582933)) (Some!756 (_2!11388 lt!582933))))))

(declare-fun b!1303068 () Bool)

(declare-fun contains!8300 (List!29909 tuple2!22756) Bool)

(assert (=> b!1303068 (= e!743298 (contains!8300 (toList!10228 lt!583051) lt!582933))))

(assert (= (and d!141525 res!865561) b!1303067))

(assert (= (and b!1303067 res!865560) b!1303068))

(declare-fun m!1193971 () Bool)

(assert (=> d!141525 m!1193971))

(declare-fun m!1193973 () Bool)

(assert (=> d!141525 m!1193973))

(declare-fun m!1193975 () Bool)

(assert (=> d!141525 m!1193975))

(declare-fun m!1193977 () Bool)

(assert (=> d!141525 m!1193977))

(declare-fun m!1193979 () Bool)

(assert (=> b!1303067 m!1193979))

(declare-fun m!1193981 () Bool)

(assert (=> b!1303068 m!1193981))

(assert (=> b!1302916 d!141525))

(declare-fun d!141527 () Bool)

(declare-fun e!743299 () Bool)

(assert (=> d!141527 e!743299))

(declare-fun res!865563 () Bool)

(assert (=> d!141527 (=> (not res!865563) (not e!743299))))

(declare-fun lt!583055 () ListLongMap!20425)

(assert (=> d!141527 (= res!865563 (contains!8297 lt!583055 (_1!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(declare-fun lt!583053 () List!29909)

(assert (=> d!141527 (= lt!583055 (ListLongMap!20426 lt!583053))))

(declare-fun lt!583056 () Unit!43082)

(declare-fun lt!583054 () Unit!43082)

(assert (=> d!141527 (= lt!583056 lt!583054)))

(assert (=> d!141527 (= (getValueByKey!706 lt!583053 (_1!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!756 (_2!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141527 (= lt!583054 (lemmaContainsTupThenGetReturnValue!350 lt!583053 (_1!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141527 (= lt!583053 (insertStrictlySorted!479 (toList!10228 lt!582934) (_1!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (_2!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))))))

(assert (=> d!141527 (= (+!4448 lt!582934 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) lt!583055)))

(declare-fun b!1303069 () Bool)

(declare-fun res!865562 () Bool)

(assert (=> b!1303069 (=> (not res!865562) (not e!743299))))

(assert (=> b!1303069 (= res!865562 (= (getValueByKey!706 (toList!10228 lt!583055) (_1!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387))) (Some!756 (_2!11388 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))))

(declare-fun b!1303070 () Bool)

(assert (=> b!1303070 (= e!743299 (contains!8300 (toList!10228 lt!583055) (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(assert (= (and d!141527 res!865563) b!1303069))

(assert (= (and b!1303069 res!865562) b!1303070))

(declare-fun m!1193983 () Bool)

(assert (=> d!141527 m!1193983))

(declare-fun m!1193985 () Bool)

(assert (=> d!141527 m!1193985))

(declare-fun m!1193987 () Bool)

(assert (=> d!141527 m!1193987))

(declare-fun m!1193989 () Bool)

(assert (=> d!141527 m!1193989))

(declare-fun m!1193991 () Bool)

(assert (=> b!1303069 m!1193991))

(declare-fun m!1193993 () Bool)

(assert (=> b!1303070 m!1193993))

(assert (=> b!1302916 d!141527))

(declare-fun d!141529 () Bool)

(declare-fun e!743301 () Bool)

(assert (=> d!141529 e!743301))

(declare-fun res!865564 () Bool)

(assert (=> d!141529 (=> res!865564 e!743301)))

(declare-fun lt!583057 () Bool)

(assert (=> d!141529 (= res!865564 (not lt!583057))))

(declare-fun lt!583060 () Bool)

(assert (=> d!141529 (= lt!583057 lt!583060)))

(declare-fun lt!583059 () Unit!43082)

(declare-fun e!743300 () Unit!43082)

(assert (=> d!141529 (= lt!583059 e!743300)))

(declare-fun c!125030 () Bool)

(assert (=> d!141529 (= c!125030 lt!583060)))

(assert (=> d!141529 (= lt!583060 (containsKey!724 (toList!10228 lt!582935) k0!1205))))

(assert (=> d!141529 (= (contains!8297 lt!582935 k0!1205) lt!583057)))

(declare-fun b!1303071 () Bool)

(declare-fun lt!583058 () Unit!43082)

(assert (=> b!1303071 (= e!743300 lt!583058)))

(assert (=> b!1303071 (= lt!583058 (lemmaContainsKeyImpliesGetValueByKeyDefined!469 (toList!10228 lt!582935) k0!1205))))

(assert (=> b!1303071 (isDefined!509 (getValueByKey!706 (toList!10228 lt!582935) k0!1205))))

(declare-fun b!1303072 () Bool)

(declare-fun Unit!43088 () Unit!43082)

(assert (=> b!1303072 (= e!743300 Unit!43088)))

(declare-fun b!1303073 () Bool)

(assert (=> b!1303073 (= e!743301 (isDefined!509 (getValueByKey!706 (toList!10228 lt!582935) k0!1205)))))

(assert (= (and d!141529 c!125030) b!1303071))

(assert (= (and d!141529 (not c!125030)) b!1303072))

(assert (= (and d!141529 (not res!865564)) b!1303073))

(declare-fun m!1193995 () Bool)

(assert (=> d!141529 m!1193995))

(declare-fun m!1193997 () Bool)

(assert (=> b!1303071 m!1193997))

(declare-fun m!1193999 () Bool)

(assert (=> b!1303071 m!1193999))

(assert (=> b!1303071 m!1193999))

(declare-fun m!1194001 () Bool)

(assert (=> b!1303071 m!1194001))

(assert (=> b!1303073 m!1193999))

(assert (=> b!1303073 m!1193999))

(assert (=> b!1303073 m!1194001))

(assert (=> b!1302916 d!141529))

(declare-fun d!141531 () Bool)

(declare-fun e!743303 () Bool)

(assert (=> d!141531 e!743303))

(declare-fun res!865565 () Bool)

(assert (=> d!141531 (=> res!865565 e!743303)))

(declare-fun lt!583061 () Bool)

(assert (=> d!141531 (= res!865565 (not lt!583061))))

(declare-fun lt!583064 () Bool)

(assert (=> d!141531 (= lt!583061 lt!583064)))

(declare-fun lt!583063 () Unit!43082)

(declare-fun e!743302 () Unit!43082)

(assert (=> d!141531 (= lt!583063 e!743302)))

(declare-fun c!125031 () Bool)

(assert (=> d!141531 (= c!125031 lt!583064)))

(assert (=> d!141531 (= lt!583064 (containsKey!724 (toList!10228 (+!4448 lt!582934 lt!582933)) k0!1205))))

(assert (=> d!141531 (= (contains!8297 (+!4448 lt!582934 lt!582933) k0!1205) lt!583061)))

(declare-fun b!1303074 () Bool)

(declare-fun lt!583062 () Unit!43082)

(assert (=> b!1303074 (= e!743302 lt!583062)))

(assert (=> b!1303074 (= lt!583062 (lemmaContainsKeyImpliesGetValueByKeyDefined!469 (toList!10228 (+!4448 lt!582934 lt!582933)) k0!1205))))

(assert (=> b!1303074 (isDefined!509 (getValueByKey!706 (toList!10228 (+!4448 lt!582934 lt!582933)) k0!1205))))

(declare-fun b!1303075 () Bool)

(declare-fun Unit!43089 () Unit!43082)

(assert (=> b!1303075 (= e!743302 Unit!43089)))

(declare-fun b!1303076 () Bool)

(assert (=> b!1303076 (= e!743303 (isDefined!509 (getValueByKey!706 (toList!10228 (+!4448 lt!582934 lt!582933)) k0!1205)))))

(assert (= (and d!141531 c!125031) b!1303074))

(assert (= (and d!141531 (not c!125031)) b!1303075))

(assert (= (and d!141531 (not res!865565)) b!1303076))

(declare-fun m!1194003 () Bool)

(assert (=> d!141531 m!1194003))

(declare-fun m!1194005 () Bool)

(assert (=> b!1303074 m!1194005))

(declare-fun m!1194007 () Bool)

(assert (=> b!1303074 m!1194007))

(assert (=> b!1303074 m!1194007))

(declare-fun m!1194009 () Bool)

(assert (=> b!1303074 m!1194009))

(assert (=> b!1303076 m!1194007))

(assert (=> b!1303076 m!1194007))

(assert (=> b!1303076 m!1194009))

(assert (=> b!1302916 d!141531))

(declare-fun d!141533 () Bool)

(assert (=> d!141533 (not (contains!8297 (+!4448 lt!582934 (tuple2!22757 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!583067 () Unit!43082)

(declare-fun choose!1928 (ListLongMap!20425 (_ BitVec 64) V!51619 (_ BitVec 64)) Unit!43082)

(assert (=> d!141533 (= lt!583067 (choose!1928 lt!582934 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun e!743306 () Bool)

(assert (=> d!141533 e!743306))

(declare-fun res!865568 () Bool)

(assert (=> d!141533 (=> (not res!865568) (not e!743306))))

(assert (=> d!141533 (= res!865568 (not (contains!8297 lt!582934 k0!1205)))))

(assert (=> d!141533 (= (addStillNotContains!472 lt!582934 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205) lt!583067)))

(declare-fun b!1303080 () Bool)

(assert (=> b!1303080 (= e!743306 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(assert (= (and d!141533 res!865568) b!1303080))

(declare-fun m!1194011 () Bool)

(assert (=> d!141533 m!1194011))

(assert (=> d!141533 m!1194011))

(declare-fun m!1194013 () Bool)

(assert (=> d!141533 m!1194013))

(declare-fun m!1194015 () Bool)

(assert (=> d!141533 m!1194015))

(declare-fun m!1194017 () Bool)

(assert (=> d!141533 m!1194017))

(assert (=> b!1302916 d!141533))

(declare-fun d!141535 () Bool)

(assert (=> d!141535 (not (contains!8297 (+!4448 lt!582934 (tuple2!22757 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-fun lt!583068 () Unit!43082)

(assert (=> d!141535 (= lt!583068 (choose!1928 lt!582934 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun e!743307 () Bool)

(assert (=> d!141535 e!743307))

(declare-fun res!865569 () Bool)

(assert (=> d!141535 (=> (not res!865569) (not e!743307))))

(assert (=> d!141535 (= res!865569 (not (contains!8297 lt!582934 k0!1205)))))

(assert (=> d!141535 (= (addStillNotContains!472 lt!582934 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205) lt!583068)))

(declare-fun b!1303081 () Bool)

(assert (=> b!1303081 (= e!743307 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!1205)))))

(assert (= (and d!141535 res!865569) b!1303081))

(assert (=> d!141535 m!1193841))

(assert (=> d!141535 m!1193841))

(declare-fun m!1194019 () Bool)

(assert (=> d!141535 m!1194019))

(declare-fun m!1194021 () Bool)

(assert (=> d!141535 m!1194021))

(assert (=> d!141535 m!1194017))

(assert (=> b!1302916 d!141535))

(declare-fun d!141537 () Bool)

(declare-fun e!743308 () Bool)

(assert (=> d!141537 e!743308))

(declare-fun res!865571 () Bool)

(assert (=> d!141537 (=> (not res!865571) (not e!743308))))

(declare-fun lt!583071 () ListLongMap!20425)

(assert (=> d!141537 (= res!865571 (contains!8297 lt!583071 (_1!11388 lt!582933)))))

(declare-fun lt!583069 () List!29909)

(assert (=> d!141537 (= lt!583071 (ListLongMap!20426 lt!583069))))

(declare-fun lt!583072 () Unit!43082)

(declare-fun lt!583070 () Unit!43082)

(assert (=> d!141537 (= lt!583072 lt!583070)))

(assert (=> d!141537 (= (getValueByKey!706 lt!583069 (_1!11388 lt!582933)) (Some!756 (_2!11388 lt!582933)))))

(assert (=> d!141537 (= lt!583070 (lemmaContainsTupThenGetReturnValue!350 lt!583069 (_1!11388 lt!582933) (_2!11388 lt!582933)))))

(assert (=> d!141537 (= lt!583069 (insertStrictlySorted!479 (toList!10228 lt!582935) (_1!11388 lt!582933) (_2!11388 lt!582933)))))

(assert (=> d!141537 (= (+!4448 lt!582935 lt!582933) lt!583071)))

(declare-fun b!1303082 () Bool)

(declare-fun res!865570 () Bool)

(assert (=> b!1303082 (=> (not res!865570) (not e!743308))))

(assert (=> b!1303082 (= res!865570 (= (getValueByKey!706 (toList!10228 lt!583071) (_1!11388 lt!582933)) (Some!756 (_2!11388 lt!582933))))))

(declare-fun b!1303083 () Bool)

(assert (=> b!1303083 (= e!743308 (contains!8300 (toList!10228 lt!583071) lt!582933))))

(assert (= (and d!141537 res!865571) b!1303082))

(assert (= (and b!1303082 res!865570) b!1303083))

(declare-fun m!1194023 () Bool)

(assert (=> d!141537 m!1194023))

(declare-fun m!1194025 () Bool)

(assert (=> d!141537 m!1194025))

(declare-fun m!1194027 () Bool)

(assert (=> d!141537 m!1194027))

(declare-fun m!1194029 () Bool)

(assert (=> d!141537 m!1194029))

(declare-fun m!1194031 () Bool)

(assert (=> b!1303082 m!1194031))

(declare-fun m!1194033 () Bool)

(assert (=> b!1303083 m!1194033))

(assert (=> b!1302916 d!141537))

(declare-fun b!1303108 () Bool)

(declare-fun lt!583091 () Unit!43082)

(declare-fun lt!583087 () Unit!43082)

(assert (=> b!1303108 (= lt!583091 lt!583087)))

(declare-fun lt!583088 () (_ BitVec 64))

(declare-fun lt!583092 () (_ BitVec 64))

(declare-fun lt!583089 () ListLongMap!20425)

(declare-fun lt!583090 () V!51619)

(assert (=> b!1303108 (not (contains!8297 (+!4448 lt!583089 (tuple2!22757 lt!583092 lt!583090)) lt!583088))))

(assert (=> b!1303108 (= lt!583087 (addStillNotContains!472 lt!583089 lt!583092 lt!583090 lt!583088))))

(assert (=> b!1303108 (= lt!583088 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1303108 (= lt!583090 (get!21195 (select (arr!41862 _values!1445) from!2144) (dynLambda!3508 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1303108 (= lt!583092 (select (arr!41863 _keys!1741) from!2144))))

(declare-fun call!64202 () ListLongMap!20425)

(assert (=> b!1303108 (= lt!583089 call!64202)))

(declare-fun e!743324 () ListLongMap!20425)

(assert (=> b!1303108 (= e!743324 (+!4448 call!64202 (tuple2!22757 (select (arr!41863 _keys!1741) from!2144) (get!21195 (select (arr!41862 _values!1445) from!2144) (dynLambda!3508 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1303109 () Bool)

(assert (=> b!1303109 (= e!743324 call!64202)))

(declare-fun b!1303110 () Bool)

(declare-fun e!743328 () Bool)

(assert (=> b!1303110 (= e!743328 (validKeyInArray!0 (select (arr!41863 _keys!1741) from!2144)))))

(assert (=> b!1303110 (bvsge from!2144 #b00000000000000000000000000000000)))

(declare-fun b!1303111 () Bool)

(declare-fun e!743326 () ListLongMap!20425)

(assert (=> b!1303111 (= e!743326 e!743324)))

(declare-fun c!125041 () Bool)

(assert (=> b!1303111 (= c!125041 (validKeyInArray!0 (select (arr!41863 _keys!1741) from!2144)))))

(declare-fun b!1303112 () Bool)

(declare-fun res!865581 () Bool)

(declare-fun e!743323 () Bool)

(assert (=> b!1303112 (=> (not res!865581) (not e!743323))))

(declare-fun lt!583093 () ListLongMap!20425)

(assert (=> b!1303112 (= res!865581 (not (contains!8297 lt!583093 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1303113 () Bool)

(declare-fun e!743327 () Bool)

(declare-fun e!743329 () Bool)

(assert (=> b!1303113 (= e!743327 e!743329)))

(declare-fun c!125040 () Bool)

(assert (=> b!1303113 (= c!125040 (bvslt from!2144 (size!42414 _keys!1741)))))

(declare-fun d!141539 () Bool)

(assert (=> d!141539 e!743323))

(declare-fun res!865582 () Bool)

(assert (=> d!141539 (=> (not res!865582) (not e!743323))))

(assert (=> d!141539 (= res!865582 (not (contains!8297 lt!583093 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!141539 (= lt!583093 e!743326)))

(declare-fun c!125042 () Bool)

(assert (=> d!141539 (= c!125042 (bvsge from!2144 (size!42414 _keys!1741)))))

(assert (=> d!141539 (validMask!0 mask!2175)))

(assert (=> d!141539 (= (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) lt!583093)))

(declare-fun b!1303114 () Bool)

(declare-fun e!743325 () Bool)

(assert (=> b!1303114 (= e!743327 e!743325)))

(assert (=> b!1303114 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42414 _keys!1741)))))

(declare-fun res!865580 () Bool)

(assert (=> b!1303114 (= res!865580 (contains!8297 lt!583093 (select (arr!41863 _keys!1741) from!2144)))))

(assert (=> b!1303114 (=> (not res!865580) (not e!743325))))

(declare-fun b!1303115 () Bool)

(declare-fun isEmpty!1064 (ListLongMap!20425) Bool)

(assert (=> b!1303115 (= e!743329 (isEmpty!1064 lt!583093))))

(declare-fun bm!64199 () Bool)

(assert (=> bm!64199 (= call!64202 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448))))

(declare-fun b!1303116 () Bool)

(assert (=> b!1303116 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42414 _keys!1741)))))

(assert (=> b!1303116 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42413 _values!1445)))))

(assert (=> b!1303116 (= e!743325 (= (apply!1056 lt!583093 (select (arr!41863 _keys!1741) from!2144)) (get!21195 (select (arr!41862 _values!1445) from!2144) (dynLambda!3508 defaultEntry!1448 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1303117 () Bool)

(assert (=> b!1303117 (= e!743323 e!743327)))

(declare-fun c!125043 () Bool)

(assert (=> b!1303117 (= c!125043 e!743328)))

(declare-fun res!865583 () Bool)

(assert (=> b!1303117 (=> (not res!865583) (not e!743328))))

(assert (=> b!1303117 (= res!865583 (bvslt from!2144 (size!42414 _keys!1741)))))

(declare-fun b!1303118 () Bool)

(assert (=> b!1303118 (= e!743326 (ListLongMap!20426 Nil!29906))))

(declare-fun b!1303119 () Bool)

(assert (=> b!1303119 (= e!743329 (= lt!583093 (getCurrentListMapNoExtraKeys!6162 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd from!2144 #b00000000000000000000000000000001) defaultEntry!1448)))))

(assert (= (and d!141539 c!125042) b!1303118))

(assert (= (and d!141539 (not c!125042)) b!1303111))

(assert (= (and b!1303111 c!125041) b!1303108))

(assert (= (and b!1303111 (not c!125041)) b!1303109))

(assert (= (or b!1303108 b!1303109) bm!64199))

(assert (= (and d!141539 res!865582) b!1303112))

(assert (= (and b!1303112 res!865581) b!1303117))

(assert (= (and b!1303117 res!865583) b!1303110))

(assert (= (and b!1303117 c!125043) b!1303114))

(assert (= (and b!1303117 (not c!125043)) b!1303113))

(assert (= (and b!1303114 res!865580) b!1303116))

(assert (= (and b!1303113 c!125040) b!1303119))

(assert (= (and b!1303113 (not c!125040)) b!1303115))

(declare-fun b_lambda!23275 () Bool)

(assert (=> (not b_lambda!23275) (not b!1303108)))

(assert (=> b!1303108 t!43513))

(declare-fun b_and!47421 () Bool)

(assert (= b_and!47419 (and (=> t!43513 result!23821) b_and!47421)))

(declare-fun b_lambda!23277 () Bool)

(assert (=> (not b_lambda!23277) (not b!1303116)))

(assert (=> b!1303116 t!43513))

(declare-fun b_and!47423 () Bool)

(assert (= b_and!47421 (and (=> t!43513 result!23821) b_and!47423)))

(assert (=> b!1303108 m!1193915))

(assert (=> b!1303108 m!1193917))

(assert (=> b!1303108 m!1193919))

(assert (=> b!1303108 m!1193915))

(assert (=> b!1303108 m!1193811))

(declare-fun m!1194035 () Bool)

(assert (=> b!1303108 m!1194035))

(declare-fun m!1194037 () Bool)

(assert (=> b!1303108 m!1194037))

(declare-fun m!1194039 () Bool)

(assert (=> b!1303108 m!1194039))

(declare-fun m!1194041 () Bool)

(assert (=> b!1303108 m!1194041))

(assert (=> b!1303108 m!1193917))

(assert (=> b!1303108 m!1194039))

(declare-fun m!1194043 () Bool)

(assert (=> bm!64199 m!1194043))

(declare-fun m!1194045 () Bool)

(assert (=> b!1303112 m!1194045))

(declare-fun m!1194047 () Bool)

(assert (=> d!141539 m!1194047))

(assert (=> d!141539 m!1193821))

(assert (=> b!1303119 m!1194043))

(assert (=> b!1303116 m!1193915))

(assert (=> b!1303116 m!1193917))

(assert (=> b!1303116 m!1193919))

(assert (=> b!1303116 m!1193915))

(assert (=> b!1303116 m!1193811))

(assert (=> b!1303116 m!1193917))

(assert (=> b!1303116 m!1193811))

(declare-fun m!1194049 () Bool)

(assert (=> b!1303116 m!1194049))

(assert (=> b!1303111 m!1193811))

(assert (=> b!1303111 m!1193811))

(assert (=> b!1303111 m!1193813))

(assert (=> b!1303110 m!1193811))

(assert (=> b!1303110 m!1193811))

(assert (=> b!1303110 m!1193813))

(declare-fun m!1194051 () Bool)

(assert (=> b!1303115 m!1194051))

(assert (=> b!1303114 m!1193811))

(assert (=> b!1303114 m!1193811))

(declare-fun m!1194053 () Bool)

(assert (=> b!1303114 m!1194053))

(assert (=> b!1302916 d!141539))

(declare-fun d!141541 () Bool)

(declare-fun e!743331 () Bool)

(assert (=> d!141541 e!743331))

(declare-fun res!865584 () Bool)

(assert (=> d!141541 (=> res!865584 e!743331)))

(declare-fun lt!583094 () Bool)

(assert (=> d!141541 (= res!865584 (not lt!583094))))

(declare-fun lt!583097 () Bool)

(assert (=> d!141541 (= lt!583094 lt!583097)))

(declare-fun lt!583096 () Unit!43082)

(declare-fun e!743330 () Unit!43082)

(assert (=> d!141541 (= lt!583096 e!743330)))

(declare-fun c!125044 () Bool)

(assert (=> d!141541 (= c!125044 lt!583097)))

(assert (=> d!141541 (= lt!583097 (containsKey!724 (toList!10228 (+!4448 lt!582935 lt!582933)) k0!1205))))

(assert (=> d!141541 (= (contains!8297 (+!4448 lt!582935 lt!582933) k0!1205) lt!583094)))

(declare-fun b!1303120 () Bool)

(declare-fun lt!583095 () Unit!43082)

(assert (=> b!1303120 (= e!743330 lt!583095)))

(assert (=> b!1303120 (= lt!583095 (lemmaContainsKeyImpliesGetValueByKeyDefined!469 (toList!10228 (+!4448 lt!582935 lt!582933)) k0!1205))))

(assert (=> b!1303120 (isDefined!509 (getValueByKey!706 (toList!10228 (+!4448 lt!582935 lt!582933)) k0!1205))))

(declare-fun b!1303121 () Bool)

(declare-fun Unit!43090 () Unit!43082)

(assert (=> b!1303121 (= e!743330 Unit!43090)))

(declare-fun b!1303122 () Bool)

(assert (=> b!1303122 (= e!743331 (isDefined!509 (getValueByKey!706 (toList!10228 (+!4448 lt!582935 lt!582933)) k0!1205)))))

(assert (= (and d!141541 c!125044) b!1303120))

(assert (= (and d!141541 (not c!125044)) b!1303121))

(assert (= (and d!141541 (not res!865584)) b!1303122))

(declare-fun m!1194055 () Bool)

(assert (=> d!141541 m!1194055))

(declare-fun m!1194057 () Bool)

(assert (=> b!1303120 m!1194057))

(declare-fun m!1194059 () Bool)

(assert (=> b!1303120 m!1194059))

(assert (=> b!1303120 m!1194059))

(declare-fun m!1194061 () Bool)

(assert (=> b!1303120 m!1194061))

(assert (=> b!1303122 m!1194059))

(assert (=> b!1303122 m!1194059))

(assert (=> b!1303122 m!1194061))

(assert (=> b!1302916 d!141541))

(declare-fun d!141543 () Bool)

(declare-fun e!743333 () Bool)

(assert (=> d!141543 e!743333))

(declare-fun res!865585 () Bool)

(assert (=> d!141543 (=> res!865585 e!743333)))

(declare-fun lt!583098 () Bool)

(assert (=> d!141543 (= res!865585 (not lt!583098))))

(declare-fun lt!583101 () Bool)

(assert (=> d!141543 (= lt!583098 lt!583101)))

(declare-fun lt!583100 () Unit!43082)

(declare-fun e!743332 () Unit!43082)

(assert (=> d!141543 (= lt!583100 e!743332)))

(declare-fun c!125045 () Bool)

(assert (=> d!141543 (= c!125045 lt!583101)))

(assert (=> d!141543 (= lt!583101 (containsKey!724 (toList!10228 (ListLongMap!20426 Nil!29906)) k0!1205))))

(assert (=> d!141543 (= (contains!8297 (ListLongMap!20426 Nil!29906) k0!1205) lt!583098)))

(declare-fun b!1303123 () Bool)

(declare-fun lt!583099 () Unit!43082)

(assert (=> b!1303123 (= e!743332 lt!583099)))

(assert (=> b!1303123 (= lt!583099 (lemmaContainsKeyImpliesGetValueByKeyDefined!469 (toList!10228 (ListLongMap!20426 Nil!29906)) k0!1205))))

(assert (=> b!1303123 (isDefined!509 (getValueByKey!706 (toList!10228 (ListLongMap!20426 Nil!29906)) k0!1205))))

(declare-fun b!1303124 () Bool)

(declare-fun Unit!43091 () Unit!43082)

(assert (=> b!1303124 (= e!743332 Unit!43091)))

(declare-fun b!1303125 () Bool)

(assert (=> b!1303125 (= e!743333 (isDefined!509 (getValueByKey!706 (toList!10228 (ListLongMap!20426 Nil!29906)) k0!1205)))))

(assert (= (and d!141543 c!125045) b!1303123))

(assert (= (and d!141543 (not c!125045)) b!1303124))

(assert (= (and d!141543 (not res!865585)) b!1303125))

(declare-fun m!1194063 () Bool)

(assert (=> d!141543 m!1194063))

(declare-fun m!1194065 () Bool)

(assert (=> b!1303123 m!1194065))

(declare-fun m!1194067 () Bool)

(assert (=> b!1303123 m!1194067))

(assert (=> b!1303123 m!1194067))

(declare-fun m!1194069 () Bool)

(assert (=> b!1303123 m!1194069))

(assert (=> b!1303125 m!1194067))

(assert (=> b!1303125 m!1194067))

(assert (=> b!1303125 m!1194069))

(assert (=> b!1302925 d!141543))

(declare-fun d!141545 () Bool)

(assert (=> d!141545 (not (contains!8297 (ListLongMap!20426 Nil!29906) k0!1205))))

(declare-fun lt!583104 () Unit!43082)

(declare-fun choose!1929 ((_ BitVec 64)) Unit!43082)

(assert (=> d!141545 (= lt!583104 (choose!1929 k0!1205))))

(assert (=> d!141545 (= (emptyContainsNothing!216 k0!1205) lt!583104)))

(declare-fun bs!37104 () Bool)

(assert (= bs!37104 d!141545))

(assert (=> bs!37104 m!1193815))

(declare-fun m!1194071 () Bool)

(assert (=> bs!37104 m!1194071))

(assert (=> b!1302925 d!141545))

(declare-fun d!141547 () Bool)

(assert (=> d!141547 (= (validKeyInArray!0 (select (arr!41863 _keys!1741) from!2144)) (and (not (= (select (arr!41863 _keys!1741) from!2144) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!41863 _keys!1741) from!2144) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1302922 d!141547))

(declare-fun d!141549 () Bool)

(assert (=> d!141549 (= (validMask!0 mask!2175) (and (or (= mask!2175 #b00000000000000000000000000000111) (= mask!2175 #b00000000000000000000000000001111) (= mask!2175 #b00000000000000000000000000011111) (= mask!2175 #b00000000000000000000000000111111) (= mask!2175 #b00000000000000000000000001111111) (= mask!2175 #b00000000000000000000000011111111) (= mask!2175 #b00000000000000000000000111111111) (= mask!2175 #b00000000000000000000001111111111) (= mask!2175 #b00000000000000000000011111111111) (= mask!2175 #b00000000000000000000111111111111) (= mask!2175 #b00000000000000000001111111111111) (= mask!2175 #b00000000000000000011111111111111) (= mask!2175 #b00000000000000000111111111111111) (= mask!2175 #b00000000000000001111111111111111) (= mask!2175 #b00000000000000011111111111111111) (= mask!2175 #b00000000000000111111111111111111) (= mask!2175 #b00000000000001111111111111111111) (= mask!2175 #b00000000000011111111111111111111) (= mask!2175 #b00000000000111111111111111111111) (= mask!2175 #b00000000001111111111111111111111) (= mask!2175 #b00000000011111111111111111111111) (= mask!2175 #b00000000111111111111111111111111) (= mask!2175 #b00000001111111111111111111111111) (= mask!2175 #b00000011111111111111111111111111) (= mask!2175 #b00000111111111111111111111111111) (= mask!2175 #b00001111111111111111111111111111) (= mask!2175 #b00011111111111111111111111111111) (= mask!2175 #b00111111111111111111111111111111)) (bvsle mask!2175 #b00111111111111111111111111111111)))))

(assert (=> start!110060 d!141549))

(declare-fun d!141551 () Bool)

(assert (=> d!141551 (= (array_inv!31661 _values!1445) (bvsge (size!42413 _values!1445) #b00000000000000000000000000000000))))

(assert (=> start!110060 d!141551))

(declare-fun d!141553 () Bool)

(assert (=> d!141553 (= (array_inv!31662 _keys!1741) (bvsge (size!42414 _keys!1741) #b00000000000000000000000000000000))))

(assert (=> start!110060 d!141553))

(declare-fun mapNonEmpty!53926 () Bool)

(declare-fun mapRes!53926 () Bool)

(declare-fun tp!102899 () Bool)

(declare-fun e!743338 () Bool)

(assert (=> mapNonEmpty!53926 (= mapRes!53926 (and tp!102899 e!743338))))

(declare-fun mapValue!53926 () ValueCell!16545)

(declare-fun mapKey!53926 () (_ BitVec 32))

(declare-fun mapRest!53926 () (Array (_ BitVec 32) ValueCell!16545))

(assert (=> mapNonEmpty!53926 (= mapRest!53920 (store mapRest!53926 mapKey!53926 mapValue!53926))))

(declare-fun b!1303133 () Bool)

(declare-fun e!743339 () Bool)

(assert (=> b!1303133 (= e!743339 tp_is_empty!34887)))

(declare-fun mapIsEmpty!53926 () Bool)

(assert (=> mapIsEmpty!53926 mapRes!53926))

(declare-fun condMapEmpty!53926 () Bool)

(declare-fun mapDefault!53926 () ValueCell!16545)

(assert (=> mapNonEmpty!53920 (= condMapEmpty!53926 (= mapRest!53920 ((as const (Array (_ BitVec 32) ValueCell!16545)) mapDefault!53926)))))

(assert (=> mapNonEmpty!53920 (= tp!102889 (and e!743339 mapRes!53926))))

(declare-fun b!1303132 () Bool)

(assert (=> b!1303132 (= e!743338 tp_is_empty!34887)))

(assert (= (and mapNonEmpty!53920 condMapEmpty!53926) mapIsEmpty!53926))

(assert (= (and mapNonEmpty!53920 (not condMapEmpty!53926)) mapNonEmpty!53926))

(assert (= (and mapNonEmpty!53926 ((_ is ValueCellFull!16545) mapValue!53926)) b!1303132))

(assert (= (and mapNonEmpty!53920 ((_ is ValueCellFull!16545) mapDefault!53926)) b!1303133))

(declare-fun m!1194073 () Bool)

(assert (=> mapNonEmpty!53926 m!1194073))

(declare-fun b_lambda!23279 () Bool)

(assert (= b_lambda!23275 (or (and start!110060 b_free!29247) b_lambda!23279)))

(declare-fun b_lambda!23281 () Bool)

(assert (= b_lambda!23273 (or (and start!110060 b_free!29247) b_lambda!23281)))

(declare-fun b_lambda!23283 () Bool)

(assert (= b_lambda!23277 (or (and start!110060 b_free!29247) b_lambda!23283)))

(check-sat (not d!141529) (not d!141535) (not bm!64190) (not d!141537) (not b!1302976) (not bm!64172) (not d!141545) (not b!1303031) (not b!1303073) (not b!1302985) (not d!141525) (not b!1303061) (not b!1303110) (not d!141521) (not bm!64196) (not d!141519) (not b!1302972) (not b!1303036) (not b!1303047) (not b!1303074) (not b!1303123) (not b!1303082) (not b!1303116) (not b!1303030) (not b!1302983) (not b!1303045) (not d!141539) (not d!141543) (not bm!64199) (not b_lambda!23283) (not b!1302975) (not d!141533) b_and!47423 (not b_lambda!23279) (not b!1303067) (not d!141541) (not d!141527) tp_is_empty!34887 (not b!1303119) (not b!1303120) (not b!1303069) (not b!1303059) (not b_lambda!23281) (not mapNonEmpty!53926) (not bm!64192) (not b!1303071) (not bm!64188) (not b!1303111) (not b!1303028) (not b!1303076) (not b!1303070) (not b!1303083) (not b!1303044) (not b!1303115) (not b!1303112) (not d!141531) (not b!1303041) (not b!1303114) (not b!1303125) (not b!1303068) (not b_next!29247) (not b!1303108) (not bm!64193) (not b!1303122))
(check-sat b_and!47423 (not b_next!29247))
