; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11560 () Bool)

(assert start!11560)

(declare-fun b!112341 () Bool)

(declare-fun b_free!3521 () Bool)

(declare-fun b_next!3521 () Bool)

(assert (=> b!112341 (= b_free!3521 (not b_next!3521))))

(declare-fun tp!60995 () Bool)

(declare-fun b_and!5651 () Bool)

(assert (=> b!112341 (= tp!60995 b_and!5651)))

(declare-fun b!112348 () Bool)

(declare-fun b_free!3523 () Bool)

(declare-fun b_next!3523 () Bool)

(assert (=> b!112348 (= b_free!3523 (not b_next!3523))))

(declare-fun tp!61001 () Bool)

(declare-fun b_and!5653 () Bool)

(assert (=> b!112348 (= tp!61001 b_and!5653)))

(declare-fun b!112339 () Bool)

(declare-fun e!63109 () Bool)

(declare-fun tp_is_empty!969 () Bool)

(declare-fun tp!60998 () Bool)

(assert (=> b!112339 (= e!63109 (and tp_is_empty!969 tp!60998))))

(declare-fun b!112340 () Bool)

(declare-fun e!63116 () Bool)

(declare-fun tp!60996 () Bool)

(declare-fun tp!60999 () Bool)

(assert (=> b!112340 (= e!63116 (and tp!60996 tp!60999))))

(declare-fun e!63112 () Bool)

(declare-fun e!63120 () Bool)

(assert (=> b!112341 (= e!63112 (and e!63120 tp!60995))))

(declare-fun b!112342 () Bool)

(declare-fun res!53870 () Bool)

(declare-fun e!63114 () Bool)

(assert (=> b!112342 (=> res!53870 e!63114)))

(declare-fun lt!32759 () Int)

(declare-fun lt!32762 () Int)

(declare-fun lt!32764 () Int)

(assert (=> b!112342 (= res!53870 (or (not (= 0 lt!32759)) (not (= lt!32764 lt!32762))))))

(declare-fun b!112343 () Bool)

(declare-fun e!63110 () Bool)

(assert (=> b!112343 (= e!63110 e!63112)))

(declare-fun b!112344 () Bool)

(declare-fun e!63111 () Bool)

(declare-datatypes ((C!1836 0))(
  ( (C!1837 (val!644 Int)) )
))
(declare-datatypes ((Regex!457 0))(
  ( (ElementMatch!457 (c!26378 C!1836)) (Concat!841 (regOne!1426 Regex!457) (regTwo!1426 Regex!457)) (EmptyExpr!457) (Star!457 (reg!786 Regex!457)) (EmptyLang!457) (Union!457 (regOne!1427 Regex!457) (regTwo!1427 Regex!457)) )
))
(declare-datatypes ((tuple2!1946 0))(
  ( (tuple2!1947 (_1!1183 Regex!457) (_2!1183 C!1836)) )
))
(declare-datatypes ((tuple2!1948 0))(
  ( (tuple2!1949 (_1!1184 tuple2!1946) (_2!1184 Regex!457)) )
))
(declare-datatypes ((List!1830 0))(
  ( (Nil!1824) (Cons!1824 (h!7221 tuple2!1948) (t!22307 List!1830)) )
))
(declare-datatypes ((array!1133 0))(
  ( (array!1134 (arr!530 (Array (_ BitVec 32) (_ BitVec 64))) (size!1597 (_ BitVec 32))) )
))
(declare-datatypes ((array!1135 0))(
  ( (array!1136 (arr!531 (Array (_ BitVec 32) List!1830)) (size!1598 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!646 0))(
  ( (LongMapFixedSize!647 (defaultEntry!662 Int) (mask!1219 (_ BitVec 32)) (extraKeys!569 (_ BitVec 32)) (zeroValue!579 List!1830) (minValue!579 List!1830) (_size!779 (_ BitVec 32)) (_keys!614 array!1133) (_values!601 array!1135) (_vacant!384 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1281 0))(
  ( (Cell!1282 (v!13177 LongMapFixedSize!646)) )
))
(declare-datatypes ((MutLongMap!323 0))(
  ( (LongMap!323 (underlying!845 Cell!1281)) (MutLongMapExt!322 (__x!1894 Int)) )
))
(declare-fun lt!32758 () MutLongMap!323)

(get-info :version)

(assert (=> b!112344 (= e!63120 (and e!63111 ((_ is LongMap!323) lt!32758)))))

(declare-datatypes ((Cell!1283 0))(
  ( (Cell!1284 (v!13178 MutLongMap!323)) )
))
(declare-datatypes ((Hashable!319 0))(
  ( (HashableExt!318 (__x!1895 Int)) )
))
(declare-datatypes ((MutableMap!319 0))(
  ( (MutableMapExt!318 (__x!1896 Int)) (HashMap!319 (underlying!846 Cell!1283) (hashF!2195 Hashable!319) (_size!780 (_ BitVec 32)) (defaultValue!468 Int)) )
))
(declare-datatypes ((Cache!74 0))(
  ( (Cache!75 (cache!770 MutableMap!319)) )
))
(declare-fun cache!464 () Cache!74)

(assert (=> b!112344 (= lt!32758 (v!13178 (underlying!846 (cache!770 cache!464))))))

(declare-fun b!112345 () Bool)

(declare-fun tp!61002 () Bool)

(assert (=> b!112345 (= e!63116 tp!61002)))

(declare-fun b!112346 () Bool)

(declare-fun res!53872 () Bool)

(declare-fun e!63115 () Bool)

(assert (=> b!112346 (=> (not res!53872) (not e!63115))))

(declare-fun valid!301 (Cache!74) Bool)

(assert (=> b!112346 (= res!53872 (valid!301 cache!464))))

(declare-fun res!53869 () Bool)

(assert (=> start!11560 (=> (not res!53869) (not e!63115))))

(declare-fun r!15516 () Regex!457)

(declare-fun validRegex!73 (Regex!457) Bool)

(assert (=> start!11560 (= res!53869 (validRegex!73 r!15516))))

(assert (=> start!11560 e!63115))

(assert (=> start!11560 e!63116))

(declare-fun inv!2323 (Cache!74) Bool)

(assert (=> start!11560 (and (inv!2323 cache!464) e!63110)))

(assert (=> start!11560 e!63109))

(declare-fun mapIsEmpty!1273 () Bool)

(declare-fun mapRes!1273 () Bool)

(assert (=> mapIsEmpty!1273 mapRes!1273))

(declare-fun b!112347 () Bool)

(declare-datatypes ((List!1831 0))(
  ( (Nil!1825) (Cons!1825 (h!7222 C!1836) (t!22308 List!1831)) )
))
(declare-datatypes ((tuple2!1950 0))(
  ( (tuple2!1951 (_1!1185 List!1831) (_2!1185 List!1831)) )
))
(declare-fun lt!32760 () tuple2!1950)

(declare-fun input!6708 () List!1831)

(declare-fun findLongestMatch!32 (Regex!457 List!1831) tuple2!1950)

(assert (=> b!112347 (= e!63114 (= lt!32760 (findLongestMatch!32 r!15516 input!6708)))))

(declare-fun findLongestMatchInner!37 (Regex!457 List!1831 Int List!1831 List!1831 Int) tuple2!1950)

(assert (=> b!112347 (= lt!32760 (findLongestMatchInner!37 r!15516 Nil!1825 0 input!6708 input!6708 lt!32764))))

(declare-fun findLongestMatchInnerMem!4 (Regex!457 List!1831 Int List!1831 List!1831 Int Cache!74) tuple2!1950)

(assert (=> b!112347 (= lt!32760 (findLongestMatchInnerMem!4 r!15516 Nil!1825 0 input!6708 input!6708 lt!32764 cache!464))))

(declare-fun tp!60994 () Bool)

(declare-fun e!63117 () Bool)

(declare-fun e!63119 () Bool)

(declare-fun tp!60997 () Bool)

(declare-fun array_inv!369 (array!1133) Bool)

(declare-fun array_inv!370 (array!1135) Bool)

(assert (=> b!112348 (= e!63119 (and tp!61001 tp!60994 tp!60997 (array_inv!369 (_keys!614 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) (array_inv!370 (_values!601 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) e!63117))))

(declare-fun b!112349 () Bool)

(declare-fun tp!60993 () Bool)

(assert (=> b!112349 (= e!63117 (and tp!60993 mapRes!1273))))

(declare-fun condMapEmpty!1273 () Bool)

(declare-fun mapDefault!1273 () List!1830)

(assert (=> b!112349 (= condMapEmpty!1273 (= (arr!531 (_values!601 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) ((as const (Array (_ BitVec 32) List!1830)) mapDefault!1273)))))

(declare-fun b!112350 () Bool)

(assert (=> b!112350 (= e!63116 tp_is_empty!969)))

(declare-fun b!112351 () Bool)

(declare-fun tp!61004 () Bool)

(declare-fun tp!61003 () Bool)

(assert (=> b!112351 (= e!63116 (and tp!61004 tp!61003))))

(declare-fun b!112352 () Bool)

(assert (=> b!112352 (= e!63115 (not e!63114))))

(declare-fun res!53871 () Bool)

(assert (=> b!112352 (=> res!53871 e!63114)))

(declare-fun ++!305 (List!1831 List!1831) List!1831)

(assert (=> b!112352 (= res!53871 (not (= (++!305 Nil!1825 input!6708) input!6708)))))

(declare-fun sizeTr!11 (List!1831 Int) Int)

(assert (=> b!112352 (= lt!32764 (sizeTr!11 input!6708 0))))

(assert (=> b!112352 (= 0 lt!32759)))

(declare-fun size!1599 (List!1831) Int)

(assert (=> b!112352 (= lt!32759 (size!1599 Nil!1825))))

(declare-datatypes ((Unit!1300 0))(
  ( (Unit!1301) )
))
(declare-fun lt!32761 () Unit!1300)

(declare-fun lemmaSizeTrEqualsSize!11 (List!1831 Int) Unit!1300)

(assert (=> b!112352 (= lt!32761 (lemmaSizeTrEqualsSize!11 Nil!1825 0))))

(assert (=> b!112352 (= (sizeTr!11 input!6708 0) lt!32762)))

(assert (=> b!112352 (= lt!32762 (size!1599 input!6708))))

(declare-fun lt!32763 () Unit!1300)

(assert (=> b!112352 (= lt!32763 (lemmaSizeTrEqualsSize!11 input!6708 0))))

(declare-fun b!112353 () Bool)

(declare-fun e!63118 () Bool)

(assert (=> b!112353 (= e!63118 e!63119)))

(declare-fun mapNonEmpty!1273 () Bool)

(declare-fun tp!61005 () Bool)

(declare-fun tp!61000 () Bool)

(assert (=> mapNonEmpty!1273 (= mapRes!1273 (and tp!61005 tp!61000))))

(declare-fun mapValue!1273 () List!1830)

(declare-fun mapRest!1273 () (Array (_ BitVec 32) List!1830))

(declare-fun mapKey!1273 () (_ BitVec 32))

(assert (=> mapNonEmpty!1273 (= (arr!531 (_values!601 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) (store mapRest!1273 mapKey!1273 mapValue!1273))))

(declare-fun b!112354 () Bool)

(assert (=> b!112354 (= e!63111 e!63118)))

(assert (= (and start!11560 res!53869) b!112346))

(assert (= (and b!112346 res!53872) b!112352))

(assert (= (and b!112352 (not res!53871)) b!112342))

(assert (= (and b!112342 (not res!53870)) b!112347))

(assert (= (and start!11560 ((_ is ElementMatch!457) r!15516)) b!112350))

(assert (= (and start!11560 ((_ is Concat!841) r!15516)) b!112351))

(assert (= (and start!11560 ((_ is Star!457) r!15516)) b!112345))

(assert (= (and start!11560 ((_ is Union!457) r!15516)) b!112340))

(assert (= (and b!112349 condMapEmpty!1273) mapIsEmpty!1273))

(assert (= (and b!112349 (not condMapEmpty!1273)) mapNonEmpty!1273))

(assert (= b!112348 b!112349))

(assert (= b!112353 b!112348))

(assert (= b!112354 b!112353))

(assert (= (and b!112344 ((_ is LongMap!323) (v!13178 (underlying!846 (cache!770 cache!464))))) b!112354))

(assert (= b!112341 b!112344))

(assert (= (and b!112343 ((_ is HashMap!319) (cache!770 cache!464))) b!112341))

(assert (= start!11560 b!112343))

(assert (= (and start!11560 ((_ is Cons!1825) input!6708)) b!112339))

(declare-fun m!102240 () Bool)

(assert (=> b!112348 m!102240))

(declare-fun m!102242 () Bool)

(assert (=> b!112348 m!102242))

(declare-fun m!102244 () Bool)

(assert (=> start!11560 m!102244))

(declare-fun m!102246 () Bool)

(assert (=> start!11560 m!102246))

(declare-fun m!102248 () Bool)

(assert (=> b!112346 m!102248))

(declare-fun m!102250 () Bool)

(assert (=> mapNonEmpty!1273 m!102250))

(declare-fun m!102252 () Bool)

(assert (=> b!112352 m!102252))

(declare-fun m!102254 () Bool)

(assert (=> b!112352 m!102254))

(declare-fun m!102256 () Bool)

(assert (=> b!112352 m!102256))

(declare-fun m!102258 () Bool)

(assert (=> b!112352 m!102258))

(declare-fun m!102260 () Bool)

(assert (=> b!112352 m!102260))

(declare-fun m!102262 () Bool)

(assert (=> b!112352 m!102262))

(declare-fun m!102264 () Bool)

(assert (=> b!112347 m!102264))

(declare-fun m!102266 () Bool)

(assert (=> b!112347 m!102266))

(declare-fun m!102268 () Bool)

(assert (=> b!112347 m!102268))

(check-sat (not b!112347) (not b!112348) (not b!112340) (not start!11560) b_and!5653 (not b!112346) (not mapNonEmpty!1273) (not b!112339) b_and!5651 (not b!112351) (not b!112352) (not b_next!3523) tp_is_empty!969 (not b!112349) (not b_next!3521) (not b!112345))
(check-sat b_and!5651 b_and!5653 (not b_next!3523) (not b_next!3521))
(get-model)

(declare-fun d!28084 () Bool)

(assert (=> d!28084 (= (array_inv!369 (_keys!614 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) (bvsge (size!1597 (_keys!614 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) #b00000000000000000000000000000000))))

(assert (=> b!112348 d!28084))

(declare-fun d!28086 () Bool)

(assert (=> d!28086 (= (array_inv!370 (_values!601 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) (bvsge (size!1598 (_values!601 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464))))))) #b00000000000000000000000000000000))))

(assert (=> b!112348 d!28086))

(declare-fun d!28088 () Bool)

(declare-fun res!53885 () Bool)

(declare-fun e!63141 () Bool)

(assert (=> d!28088 (=> res!53885 e!63141)))

(assert (=> d!28088 (= res!53885 ((_ is ElementMatch!457) r!15516))))

(assert (=> d!28088 (= (validRegex!73 r!15516) e!63141)))

(declare-fun b!112373 () Bool)

(declare-fun e!63135 () Bool)

(declare-fun call!4816 () Bool)

(assert (=> b!112373 (= e!63135 call!4816)))

(declare-fun b!112374 () Bool)

(declare-fun res!53883 () Bool)

(declare-fun e!63137 () Bool)

(assert (=> b!112374 (=> (not res!53883) (not e!63137))))

(declare-fun call!4818 () Bool)

(assert (=> b!112374 (= res!53883 call!4818)))

(declare-fun e!63140 () Bool)

(assert (=> b!112374 (= e!63140 e!63137)))

(declare-fun b!112375 () Bool)

(declare-fun call!4817 () Bool)

(assert (=> b!112375 (= e!63137 call!4817)))

(declare-fun bm!4811 () Bool)

(declare-fun c!26384 () Bool)

(assert (=> bm!4811 (= call!4817 (validRegex!73 (ite c!26384 (regTwo!1427 r!15516) (regTwo!1426 r!15516))))))

(declare-fun b!112376 () Bool)

(declare-fun e!63139 () Bool)

(assert (=> b!112376 (= e!63141 e!63139)))

(declare-fun c!26383 () Bool)

(assert (=> b!112376 (= c!26383 ((_ is Star!457) r!15516))))

(declare-fun bm!4812 () Bool)

(assert (=> bm!4812 (= call!4818 call!4816)))

(declare-fun b!112377 () Bool)

(declare-fun e!63138 () Bool)

(assert (=> b!112377 (= e!63138 call!4817)))

(declare-fun bm!4813 () Bool)

(assert (=> bm!4813 (= call!4816 (validRegex!73 (ite c!26383 (reg!786 r!15516) (ite c!26384 (regOne!1427 r!15516) (regOne!1426 r!15516)))))))

(declare-fun b!112378 () Bool)

(declare-fun e!63136 () Bool)

(assert (=> b!112378 (= e!63136 e!63138)))

(declare-fun res!53887 () Bool)

(assert (=> b!112378 (=> (not res!53887) (not e!63138))))

(assert (=> b!112378 (= res!53887 call!4818)))

(declare-fun b!112379 () Bool)

(assert (=> b!112379 (= e!63139 e!63135)))

(declare-fun res!53884 () Bool)

(declare-fun nullable!56 (Regex!457) Bool)

(assert (=> b!112379 (= res!53884 (not (nullable!56 (reg!786 r!15516))))))

(assert (=> b!112379 (=> (not res!53884) (not e!63135))))

(declare-fun b!112380 () Bool)

(assert (=> b!112380 (= e!63139 e!63140)))

(assert (=> b!112380 (= c!26384 ((_ is Union!457) r!15516))))

(declare-fun b!112381 () Bool)

(declare-fun res!53886 () Bool)

(assert (=> b!112381 (=> res!53886 e!63136)))

(assert (=> b!112381 (= res!53886 (not ((_ is Concat!841) r!15516)))))

(assert (=> b!112381 (= e!63140 e!63136)))

(assert (= (and d!28088 (not res!53885)) b!112376))

(assert (= (and b!112376 c!26383) b!112379))

(assert (= (and b!112376 (not c!26383)) b!112380))

(assert (= (and b!112379 res!53884) b!112373))

(assert (= (and b!112380 c!26384) b!112374))

(assert (= (and b!112380 (not c!26384)) b!112381))

(assert (= (and b!112374 res!53883) b!112375))

(assert (= (and b!112381 (not res!53886)) b!112378))

(assert (= (and b!112378 res!53887) b!112377))

(assert (= (or b!112375 b!112377) bm!4811))

(assert (= (or b!112374 b!112378) bm!4812))

(assert (= (or b!112373 bm!4812) bm!4813))

(declare-fun m!102270 () Bool)

(assert (=> bm!4811 m!102270))

(declare-fun m!102272 () Bool)

(assert (=> bm!4813 m!102272))

(declare-fun m!102274 () Bool)

(assert (=> b!112379 m!102274))

(assert (=> start!11560 d!28088))

(declare-fun d!28090 () Bool)

(declare-fun res!53890 () Bool)

(declare-fun e!63144 () Bool)

(assert (=> d!28090 (=> (not res!53890) (not e!63144))))

(assert (=> d!28090 (= res!53890 ((_ is HashMap!319) (cache!770 cache!464)))))

(assert (=> d!28090 (= (inv!2323 cache!464) e!63144)))

(declare-fun b!112384 () Bool)

(declare-fun validCacheMap!10 (MutableMap!319) Bool)

(assert (=> b!112384 (= e!63144 (validCacheMap!10 (cache!770 cache!464)))))

(assert (= (and d!28090 res!53890) b!112384))

(declare-fun m!102276 () Bool)

(assert (=> b!112384 m!102276))

(assert (=> start!11560 d!28090))

(declare-fun d!28092 () Bool)

(assert (=> d!28092 (= (valid!301 cache!464) (validCacheMap!10 (cache!770 cache!464)))))

(declare-fun bs!11758 () Bool)

(assert (= bs!11758 d!28092))

(assert (=> bs!11758 m!102276))

(assert (=> b!112346 d!28092))

(declare-fun d!28094 () Bool)

(declare-fun lt!32783 () tuple2!1950)

(assert (=> d!28094 (= (++!305 (_1!1185 lt!32783) (_2!1185 lt!32783)) input!6708)))

(assert (=> d!28094 (= lt!32783 (findLongestMatchInner!37 r!15516 Nil!1825 0 input!6708 input!6708 (sizeTr!11 input!6708 0)))))

(declare-fun lt!32782 () Unit!1300)

(declare-fun lt!32786 () Unit!1300)

(assert (=> d!28094 (= lt!32782 lt!32786)))

(declare-fun lt!32788 () List!1831)

(declare-fun lt!32784 () Int)

(assert (=> d!28094 (= (sizeTr!11 lt!32788 lt!32784) (+ (size!1599 lt!32788) lt!32784))))

(assert (=> d!28094 (= lt!32786 (lemmaSizeTrEqualsSize!11 lt!32788 lt!32784))))

(assert (=> d!28094 (= lt!32784 0)))

(assert (=> d!28094 (= lt!32788 Nil!1825)))

(declare-fun lt!32781 () Unit!1300)

(declare-fun lt!32785 () Unit!1300)

(assert (=> d!28094 (= lt!32781 lt!32785)))

(declare-fun lt!32787 () Int)

(assert (=> d!28094 (= (sizeTr!11 input!6708 lt!32787) (+ (size!1599 input!6708) lt!32787))))

(assert (=> d!28094 (= lt!32785 (lemmaSizeTrEqualsSize!11 input!6708 lt!32787))))

(assert (=> d!28094 (= lt!32787 0)))

(assert (=> d!28094 (validRegex!73 r!15516)))

(assert (=> d!28094 (= (findLongestMatch!32 r!15516 input!6708) lt!32783)))

(declare-fun bs!11759 () Bool)

(assert (= bs!11759 d!28094))

(assert (=> bs!11759 m!102252))

(declare-fun m!102278 () Bool)

(assert (=> bs!11759 m!102278))

(assert (=> bs!11759 m!102252))

(assert (=> bs!11759 m!102258))

(declare-fun m!102280 () Bool)

(assert (=> bs!11759 m!102280))

(assert (=> bs!11759 m!102244))

(declare-fun m!102282 () Bool)

(assert (=> bs!11759 m!102282))

(declare-fun m!102284 () Bool)

(assert (=> bs!11759 m!102284))

(declare-fun m!102286 () Bool)

(assert (=> bs!11759 m!102286))

(declare-fun m!102288 () Bool)

(assert (=> bs!11759 m!102288))

(declare-fun m!102290 () Bool)

(assert (=> bs!11759 m!102290))

(assert (=> b!112347 d!28094))

(declare-fun bm!4830 () Bool)

(declare-fun call!4838 () Regex!457)

(declare-fun call!4836 () C!1836)

(declare-fun derivativeStep!37 (Regex!457 C!1836) Regex!457)

(assert (=> bm!4830 (= call!4838 (derivativeStep!37 r!15516 call!4836))))

(declare-fun bm!4831 () Bool)

(declare-fun call!4837 () List!1831)

(declare-fun tail!205 (List!1831) List!1831)

(assert (=> bm!4831 (= call!4837 (tail!205 input!6708))))

(declare-fun b!112413 () Bool)

(declare-fun e!63163 () Unit!1300)

(declare-fun Unit!1302 () Unit!1300)

(assert (=> b!112413 (= e!63163 Unit!1302)))

(declare-fun b!112414 () Bool)

(declare-fun Unit!1303 () Unit!1300)

(assert (=> b!112414 (= e!63163 Unit!1303)))

(declare-fun lt!32859 () Unit!1300)

(declare-fun call!4842 () Unit!1300)

(assert (=> b!112414 (= lt!32859 call!4842)))

(declare-fun call!4841 () Bool)

(assert (=> b!112414 call!4841))

(declare-fun lt!32852 () Unit!1300)

(assert (=> b!112414 (= lt!32852 lt!32859)))

(declare-fun lt!32871 () Unit!1300)

(declare-fun call!4840 () Unit!1300)

(assert (=> b!112414 (= lt!32871 call!4840)))

(assert (=> b!112414 (= input!6708 Nil!1825)))

(declare-fun lt!32848 () Unit!1300)

(assert (=> b!112414 (= lt!32848 lt!32871)))

(assert (=> b!112414 false))

(declare-fun d!28096 () Bool)

(declare-fun e!63168 () Bool)

(assert (=> d!28096 e!63168))

(declare-fun res!53895 () Bool)

(assert (=> d!28096 (=> (not res!53895) (not e!63168))))

(declare-fun lt!32862 () tuple2!1950)

(assert (=> d!28096 (= res!53895 (= (++!305 (_1!1185 lt!32862) (_2!1185 lt!32862)) input!6708))))

(declare-fun e!63162 () tuple2!1950)

(assert (=> d!28096 (= lt!32862 e!63162)))

(declare-fun c!26397 () Bool)

(declare-fun lostCause!22 (Regex!457) Bool)

(assert (=> d!28096 (= c!26397 (lostCause!22 r!15516))))

(declare-fun lt!32868 () Unit!1300)

(declare-fun Unit!1304 () Unit!1300)

(assert (=> d!28096 (= lt!32868 Unit!1304)))

(declare-fun getSuffix!1 (List!1831 List!1831) List!1831)

(assert (=> d!28096 (= (getSuffix!1 input!6708 Nil!1825) input!6708)))

(declare-fun lt!32858 () Unit!1300)

(declare-fun lt!32865 () Unit!1300)

(assert (=> d!28096 (= lt!32858 lt!32865)))

(declare-fun lt!32866 () List!1831)

(assert (=> d!28096 (= input!6708 lt!32866)))

(declare-fun lemmaSamePrefixThenSameSuffix!1 (List!1831 List!1831 List!1831 List!1831 List!1831) Unit!1300)

(assert (=> d!28096 (= lt!32865 (lemmaSamePrefixThenSameSuffix!1 Nil!1825 input!6708 Nil!1825 lt!32866 input!6708))))

(assert (=> d!28096 (= lt!32866 (getSuffix!1 input!6708 Nil!1825))))

(declare-fun lt!32863 () Unit!1300)

(declare-fun lt!32853 () Unit!1300)

(assert (=> d!28096 (= lt!32863 lt!32853)))

(declare-fun isPrefix!52 (List!1831 List!1831) Bool)

(assert (=> d!28096 (isPrefix!52 Nil!1825 (++!305 Nil!1825 input!6708))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1 (List!1831 List!1831) Unit!1300)

(assert (=> d!28096 (= lt!32853 (lemmaConcatTwoListThenFirstIsPrefix!1 Nil!1825 input!6708))))

(assert (=> d!28096 (validRegex!73 r!15516)))

(assert (=> d!28096 (= (findLongestMatchInner!37 r!15516 Nil!1825 0 input!6708 input!6708 lt!32764) lt!32862)))

(declare-fun bm!4832 () Bool)

(assert (=> bm!4832 (= call!4841 (isPrefix!52 input!6708 input!6708))))

(declare-fun b!112415 () Bool)

(declare-fun e!63161 () Bool)

(assert (=> b!112415 (= e!63161 (>= (size!1599 (_1!1185 lt!32862)) (size!1599 Nil!1825)))))

(declare-fun b!112416 () Bool)

(declare-fun c!26400 () Bool)

(declare-fun call!4835 () Bool)

(assert (=> b!112416 (= c!26400 call!4835)))

(declare-fun lt!32856 () Unit!1300)

(declare-fun lt!32867 () Unit!1300)

(assert (=> b!112416 (= lt!32856 lt!32867)))

(declare-fun lt!32860 () C!1836)

(declare-fun lt!32870 () List!1831)

(assert (=> b!112416 (= (++!305 (++!305 Nil!1825 (Cons!1825 lt!32860 Nil!1825)) lt!32870) input!6708)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1 (List!1831 C!1836 List!1831 List!1831) Unit!1300)

(assert (=> b!112416 (= lt!32867 (lemmaMoveElementToOtherListKeepsConcatEq!1 Nil!1825 lt!32860 lt!32870 input!6708))))

(assert (=> b!112416 (= lt!32870 (tail!205 input!6708))))

(declare-fun head!465 (List!1831) C!1836)

(assert (=> b!112416 (= lt!32860 (head!465 input!6708))))

(declare-fun lt!32854 () Unit!1300)

(declare-fun lt!32864 () Unit!1300)

(assert (=> b!112416 (= lt!32854 lt!32864)))

(assert (=> b!112416 (isPrefix!52 (++!305 Nil!1825 (Cons!1825 (head!465 (getSuffix!1 input!6708 Nil!1825)) Nil!1825)) input!6708)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1 (List!1831 List!1831) Unit!1300)

(assert (=> b!112416 (= lt!32864 (lemmaAddHeadSuffixToPrefixStillPrefix!1 Nil!1825 input!6708))))

(declare-fun lt!32861 () Unit!1300)

(declare-fun lt!32869 () Unit!1300)

(assert (=> b!112416 (= lt!32861 lt!32869)))

(assert (=> b!112416 (= lt!32869 (lemmaAddHeadSuffixToPrefixStillPrefix!1 Nil!1825 input!6708))))

(declare-fun lt!32849 () List!1831)

(assert (=> b!112416 (= lt!32849 (++!305 Nil!1825 (Cons!1825 (head!465 input!6708) Nil!1825)))))

(declare-fun lt!32872 () Unit!1300)

(assert (=> b!112416 (= lt!32872 e!63163)))

(declare-fun c!26399 () Bool)

(assert (=> b!112416 (= c!26399 (= (size!1599 Nil!1825) (size!1599 input!6708)))))

(declare-fun lt!32845 () Unit!1300)

(declare-fun lt!32851 () Unit!1300)

(assert (=> b!112416 (= lt!32845 lt!32851)))

(assert (=> b!112416 (<= (size!1599 Nil!1825) (size!1599 input!6708))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1 (List!1831 List!1831) Unit!1300)

(assert (=> b!112416 (= lt!32851 (lemmaIsPrefixThenSmallerEqSize!1 Nil!1825 input!6708))))

(declare-fun e!63165 () tuple2!1950)

(declare-fun e!63166 () tuple2!1950)

(assert (=> b!112416 (= e!63165 e!63166)))

(declare-fun b!112417 () Bool)

(assert (=> b!112417 (= e!63162 (tuple2!1951 Nil!1825 input!6708))))

(declare-fun bm!4833 () Bool)

(declare-fun lemmaIsPrefixRefl!52 (List!1831 List!1831) Unit!1300)

(assert (=> bm!4833 (= call!4842 (lemmaIsPrefixRefl!52 input!6708 input!6708))))

(declare-fun b!112418 () Bool)

(declare-fun e!63164 () tuple2!1950)

(assert (=> b!112418 (= e!63166 e!63164)))

(declare-fun lt!32855 () tuple2!1950)

(declare-fun call!4839 () tuple2!1950)

(assert (=> b!112418 (= lt!32855 call!4839)))

(declare-fun c!26398 () Bool)

(declare-fun isEmpty!809 (List!1831) Bool)

(assert (=> b!112418 (= c!26398 (isEmpty!809 (_1!1185 lt!32855)))))

(declare-fun bm!4834 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1 (List!1831 List!1831 List!1831) Unit!1300)

(assert (=> bm!4834 (= call!4840 (lemmaIsPrefixSameLengthThenSameList!1 input!6708 Nil!1825 input!6708))))

(declare-fun b!112419 () Bool)

(assert (=> b!112419 (= e!63166 call!4839)))

(declare-fun bm!4835 () Bool)

(assert (=> bm!4835 (= call!4836 (head!465 input!6708))))

(declare-fun b!112420 () Bool)

(assert (=> b!112420 (= e!63168 e!63161)))

(declare-fun res!53896 () Bool)

(assert (=> b!112420 (=> res!53896 e!63161)))

(assert (=> b!112420 (= res!53896 (isEmpty!809 (_1!1185 lt!32862)))))

(declare-fun b!112421 () Bool)

(declare-fun e!63167 () tuple2!1950)

(assert (=> b!112421 (= e!63167 (tuple2!1951 Nil!1825 Nil!1825))))

(declare-fun b!112422 () Bool)

(assert (=> b!112422 (= e!63167 (tuple2!1951 Nil!1825 input!6708))))

(declare-fun bm!4836 () Bool)

(assert (=> bm!4836 (= call!4835 (nullable!56 r!15516))))

(declare-fun bm!4837 () Bool)

(assert (=> bm!4837 (= call!4839 (findLongestMatchInner!37 call!4838 lt!32849 (+ 0 1) call!4837 input!6708 lt!32764))))

(declare-fun b!112423 () Bool)

(declare-fun c!26402 () Bool)

(assert (=> b!112423 (= c!26402 call!4835)))

(declare-fun lt!32846 () Unit!1300)

(declare-fun lt!32847 () Unit!1300)

(assert (=> b!112423 (= lt!32846 lt!32847)))

(assert (=> b!112423 (= input!6708 Nil!1825)))

(assert (=> b!112423 (= lt!32847 call!4840)))

(declare-fun lt!32857 () Unit!1300)

(declare-fun lt!32850 () Unit!1300)

(assert (=> b!112423 (= lt!32857 lt!32850)))

(assert (=> b!112423 call!4841))

(assert (=> b!112423 (= lt!32850 call!4842)))

(assert (=> b!112423 (= e!63165 e!63167)))

(declare-fun b!112424 () Bool)

(assert (=> b!112424 (= e!63162 e!63165)))

(declare-fun c!26401 () Bool)

(assert (=> b!112424 (= c!26401 (= 0 lt!32764))))

(declare-fun b!112425 () Bool)

(assert (=> b!112425 (= e!63164 lt!32855)))

(declare-fun b!112426 () Bool)

(assert (=> b!112426 (= e!63164 (tuple2!1951 Nil!1825 input!6708))))

(assert (= (and d!28096 c!26397) b!112417))

(assert (= (and d!28096 (not c!26397)) b!112424))

(assert (= (and b!112424 c!26401) b!112423))

(assert (= (and b!112424 (not c!26401)) b!112416))

(assert (= (and b!112423 c!26402) b!112421))

(assert (= (and b!112423 (not c!26402)) b!112422))

(assert (= (and b!112416 c!26399) b!112414))

(assert (= (and b!112416 (not c!26399)) b!112413))

(assert (= (and b!112416 c!26400) b!112418))

(assert (= (and b!112416 (not c!26400)) b!112419))

(assert (= (and b!112418 c!26398) b!112426))

(assert (= (and b!112418 (not c!26398)) b!112425))

(assert (= (or b!112418 b!112419) bm!4831))

(assert (= (or b!112418 b!112419) bm!4835))

(assert (= (or b!112418 b!112419) bm!4830))

(assert (= (or b!112418 b!112419) bm!4837))

(assert (= (or b!112423 b!112414) bm!4833))

(assert (= (or b!112423 b!112414) bm!4832))

(assert (= (or b!112423 b!112416) bm!4836))

(assert (= (or b!112423 b!112414) bm!4834))

(assert (= (and d!28096 res!53895) b!112420))

(assert (= (and b!112420 (not res!53896)) b!112415))

(declare-fun m!102292 () Bool)

(assert (=> d!28096 m!102292))

(assert (=> d!28096 m!102244))

(declare-fun m!102294 () Bool)

(assert (=> d!28096 m!102294))

(assert (=> d!28096 m!102256))

(declare-fun m!102296 () Bool)

(assert (=> d!28096 m!102296))

(declare-fun m!102298 () Bool)

(assert (=> d!28096 m!102298))

(assert (=> d!28096 m!102256))

(declare-fun m!102300 () Bool)

(assert (=> d!28096 m!102300))

(declare-fun m!102302 () Bool)

(assert (=> d!28096 m!102302))

(declare-fun m!102304 () Bool)

(assert (=> bm!4833 m!102304))

(declare-fun m!102306 () Bool)

(assert (=> bm!4832 m!102306))

(declare-fun m!102308 () Bool)

(assert (=> b!112415 m!102308))

(assert (=> b!112415 m!102260))

(declare-fun m!102310 () Bool)

(assert (=> bm!4831 m!102310))

(declare-fun m!102312 () Bool)

(assert (=> bm!4830 m!102312))

(declare-fun m!102314 () Bool)

(assert (=> bm!4834 m!102314))

(declare-fun m!102316 () Bool)

(assert (=> bm!4835 m!102316))

(declare-fun m!102318 () Bool)

(assert (=> bm!4836 m!102318))

(assert (=> b!112416 m!102316))

(assert (=> b!112416 m!102310))

(declare-fun m!102320 () Bool)

(assert (=> b!112416 m!102320))

(declare-fun m!102322 () Bool)

(assert (=> b!112416 m!102322))

(assert (=> b!112416 m!102298))

(declare-fun m!102324 () Bool)

(assert (=> b!112416 m!102324))

(assert (=> b!112416 m!102322))

(declare-fun m!102326 () Bool)

(assert (=> b!112416 m!102326))

(assert (=> b!112416 m!102324))

(declare-fun m!102328 () Bool)

(assert (=> b!112416 m!102328))

(declare-fun m!102330 () Bool)

(assert (=> b!112416 m!102330))

(assert (=> b!112416 m!102260))

(declare-fun m!102332 () Bool)

(assert (=> b!112416 m!102332))

(assert (=> b!112416 m!102258))

(declare-fun m!102334 () Bool)

(assert (=> b!112416 m!102334))

(assert (=> b!112416 m!102298))

(declare-fun m!102336 () Bool)

(assert (=> b!112416 m!102336))

(declare-fun m!102338 () Bool)

(assert (=> bm!4837 m!102338))

(declare-fun m!102340 () Bool)

(assert (=> b!112420 m!102340))

(declare-fun m!102342 () Bool)

(assert (=> b!112418 m!102342))

(assert (=> b!112347 d!28096))

(declare-fun d!28098 () Bool)

(declare-fun e!63171 () Bool)

(assert (=> d!28098 e!63171))

(declare-fun res!53899 () Bool)

(assert (=> d!28098 (=> (not res!53899) (not e!63171))))

(declare-fun lt!32875 () tuple2!1950)

(assert (=> d!28098 (= res!53899 (= lt!32875 (findLongestMatchInner!37 r!15516 Nil!1825 0 input!6708 input!6708 lt!32764)))))

(declare-fun choose!1503 (Regex!457 List!1831 Int List!1831 List!1831 Int Cache!74) tuple2!1950)

(assert (=> d!28098 (= lt!32875 (choose!1503 r!15516 Nil!1825 0 input!6708 input!6708 lt!32764 cache!464))))

(assert (=> d!28098 (validRegex!73 r!15516)))

(assert (=> d!28098 (= (findLongestMatchInnerMem!4 r!15516 Nil!1825 0 input!6708 input!6708 lt!32764 cache!464) lt!32875)))

(declare-fun b!112429 () Bool)

(assert (=> b!112429 (= e!63171 (valid!301 cache!464))))

(assert (= (and d!28098 res!53899) b!112429))

(assert (=> d!28098 m!102266))

(declare-fun m!102344 () Bool)

(assert (=> d!28098 m!102344))

(assert (=> d!28098 m!102244))

(assert (=> b!112429 m!102248))

(assert (=> b!112347 d!28098))

(declare-fun d!28100 () Bool)

(declare-fun c!26405 () Bool)

(assert (=> d!28100 (= c!26405 ((_ is Nil!1825) input!6708))))

(declare-fun e!63174 () Int)

(assert (=> d!28100 (= (sizeTr!11 input!6708 0) e!63174)))

(declare-fun b!112434 () Bool)

(assert (=> b!112434 (= e!63174 0)))

(declare-fun b!112435 () Bool)

(assert (=> b!112435 (= e!63174 (sizeTr!11 (t!22308 input!6708) (+ 0 1)))))

(assert (= (and d!28100 c!26405) b!112434))

(assert (= (and d!28100 (not c!26405)) b!112435))

(declare-fun m!102346 () Bool)

(assert (=> b!112435 m!102346))

(assert (=> b!112352 d!28100))

(declare-fun d!28102 () Bool)

(assert (=> d!28102 (= (sizeTr!11 input!6708 0) (+ (size!1599 input!6708) 0))))

(declare-fun lt!32878 () Unit!1300)

(declare-fun choose!1504 (List!1831 Int) Unit!1300)

(assert (=> d!28102 (= lt!32878 (choose!1504 input!6708 0))))

(assert (=> d!28102 (= (lemmaSizeTrEqualsSize!11 input!6708 0) lt!32878)))

(declare-fun bs!11760 () Bool)

(assert (= bs!11760 d!28102))

(assert (=> bs!11760 m!102252))

(assert (=> bs!11760 m!102258))

(declare-fun m!102348 () Bool)

(assert (=> bs!11760 m!102348))

(assert (=> b!112352 d!28102))

(declare-fun b!112445 () Bool)

(declare-fun e!63180 () List!1831)

(assert (=> b!112445 (= e!63180 (Cons!1825 (h!7222 Nil!1825) (++!305 (t!22308 Nil!1825) input!6708)))))

(declare-fun b!112446 () Bool)

(declare-fun res!53904 () Bool)

(declare-fun e!63179 () Bool)

(assert (=> b!112446 (=> (not res!53904) (not e!63179))))

(declare-fun lt!32881 () List!1831)

(assert (=> b!112446 (= res!53904 (= (size!1599 lt!32881) (+ (size!1599 Nil!1825) (size!1599 input!6708))))))

(declare-fun b!112444 () Bool)

(assert (=> b!112444 (= e!63180 input!6708)))

(declare-fun d!28104 () Bool)

(assert (=> d!28104 e!63179))

(declare-fun res!53905 () Bool)

(assert (=> d!28104 (=> (not res!53905) (not e!63179))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!208 (List!1831) (InoxSet C!1836))

(assert (=> d!28104 (= res!53905 (= (content!208 lt!32881) ((_ map or) (content!208 Nil!1825) (content!208 input!6708))))))

(assert (=> d!28104 (= lt!32881 e!63180)))

(declare-fun c!26408 () Bool)

(assert (=> d!28104 (= c!26408 ((_ is Nil!1825) Nil!1825))))

(assert (=> d!28104 (= (++!305 Nil!1825 input!6708) lt!32881)))

(declare-fun b!112447 () Bool)

(assert (=> b!112447 (= e!63179 (or (not (= input!6708 Nil!1825)) (= lt!32881 Nil!1825)))))

(assert (= (and d!28104 c!26408) b!112444))

(assert (= (and d!28104 (not c!26408)) b!112445))

(assert (= (and d!28104 res!53905) b!112446))

(assert (= (and b!112446 res!53904) b!112447))

(declare-fun m!102350 () Bool)

(assert (=> b!112445 m!102350))

(declare-fun m!102352 () Bool)

(assert (=> b!112446 m!102352))

(assert (=> b!112446 m!102260))

(assert (=> b!112446 m!102258))

(declare-fun m!102354 () Bool)

(assert (=> d!28104 m!102354))

(declare-fun m!102356 () Bool)

(assert (=> d!28104 m!102356))

(declare-fun m!102358 () Bool)

(assert (=> d!28104 m!102358))

(assert (=> b!112352 d!28104))

(declare-fun d!28106 () Bool)

(assert (=> d!28106 (= (sizeTr!11 Nil!1825 0) (+ (size!1599 Nil!1825) 0))))

(declare-fun lt!32882 () Unit!1300)

(assert (=> d!28106 (= lt!32882 (choose!1504 Nil!1825 0))))

(assert (=> d!28106 (= (lemmaSizeTrEqualsSize!11 Nil!1825 0) lt!32882)))

(declare-fun bs!11761 () Bool)

(assert (= bs!11761 d!28106))

(declare-fun m!102360 () Bool)

(assert (=> bs!11761 m!102360))

(assert (=> bs!11761 m!102260))

(declare-fun m!102362 () Bool)

(assert (=> bs!11761 m!102362))

(assert (=> b!112352 d!28106))

(declare-fun d!28108 () Bool)

(declare-fun lt!32885 () Int)

(assert (=> d!28108 (>= lt!32885 0)))

(declare-fun e!63183 () Int)

(assert (=> d!28108 (= lt!32885 e!63183)))

(declare-fun c!26411 () Bool)

(assert (=> d!28108 (= c!26411 ((_ is Nil!1825) input!6708))))

(assert (=> d!28108 (= (size!1599 input!6708) lt!32885)))

(declare-fun b!112452 () Bool)

(assert (=> b!112452 (= e!63183 0)))

(declare-fun b!112453 () Bool)

(assert (=> b!112453 (= e!63183 (+ 1 (size!1599 (t!22308 input!6708))))))

(assert (= (and d!28108 c!26411) b!112452))

(assert (= (and d!28108 (not c!26411)) b!112453))

(declare-fun m!102364 () Bool)

(assert (=> b!112453 m!102364))

(assert (=> b!112352 d!28108))

(declare-fun d!28110 () Bool)

(declare-fun lt!32886 () Int)

(assert (=> d!28110 (>= lt!32886 0)))

(declare-fun e!63184 () Int)

(assert (=> d!28110 (= lt!32886 e!63184)))

(declare-fun c!26412 () Bool)

(assert (=> d!28110 (= c!26412 ((_ is Nil!1825) Nil!1825))))

(assert (=> d!28110 (= (size!1599 Nil!1825) lt!32886)))

(declare-fun b!112454 () Bool)

(assert (=> b!112454 (= e!63184 0)))

(declare-fun b!112455 () Bool)

(assert (=> b!112455 (= e!63184 (+ 1 (size!1599 (t!22308 Nil!1825))))))

(assert (= (and d!28110 c!26412) b!112454))

(assert (= (and d!28110 (not c!26412)) b!112455))

(declare-fun m!102366 () Bool)

(assert (=> b!112455 m!102366))

(assert (=> b!112352 d!28110))

(declare-fun e!63187 () Bool)

(declare-fun tp!61012 () Bool)

(declare-fun tp!61013 () Bool)

(declare-fun b!112460 () Bool)

(declare-fun tp!61014 () Bool)

(assert (=> b!112460 (= e!63187 (and tp!61012 tp_is_empty!969 tp!61013 tp!61014))))

(assert (=> b!112348 (= tp!60994 e!63187)))

(assert (= (and b!112348 ((_ is Cons!1824) (zeroValue!579 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464)))))))) b!112460))

(declare-fun tp!61015 () Bool)

(declare-fun tp!61016 () Bool)

(declare-fun e!63188 () Bool)

(declare-fun b!112461 () Bool)

(declare-fun tp!61017 () Bool)

(assert (=> b!112461 (= e!63188 (and tp!61015 tp_is_empty!969 tp!61016 tp!61017))))

(assert (=> b!112348 (= tp!60997 e!63188)))

(assert (= (and b!112348 ((_ is Cons!1824) (minValue!579 (v!13177 (underlying!845 (v!13178 (underlying!846 (cache!770 cache!464)))))))) b!112461))

(declare-fun b!112462 () Bool)

(declare-fun e!63189 () Bool)

(declare-fun tp!61020 () Bool)

(declare-fun tp!61019 () Bool)

(declare-fun tp!61018 () Bool)

(assert (=> b!112462 (= e!63189 (and tp!61018 tp_is_empty!969 tp!61019 tp!61020))))

(assert (=> b!112349 (= tp!60993 e!63189)))

(assert (= (and b!112349 ((_ is Cons!1824) mapDefault!1273)) b!112462))

(declare-fun condMapEmpty!1276 () Bool)

(declare-fun mapDefault!1276 () List!1830)

(assert (=> mapNonEmpty!1273 (= condMapEmpty!1276 (= mapRest!1273 ((as const (Array (_ BitVec 32) List!1830)) mapDefault!1276)))))

(declare-fun e!63195 () Bool)

(declare-fun mapRes!1276 () Bool)

(assert (=> mapNonEmpty!1273 (= tp!61005 (and e!63195 mapRes!1276))))

(declare-fun mapIsEmpty!1276 () Bool)

(assert (=> mapIsEmpty!1276 mapRes!1276))

(declare-fun tp!61041 () Bool)

(declare-fun tp!61035 () Bool)

(declare-fun tp!61040 () Bool)

(declare-fun b!112469 () Bool)

(declare-fun e!63194 () Bool)

(assert (=> b!112469 (= e!63194 (and tp!61035 tp_is_empty!969 tp!61041 tp!61040))))

(declare-fun tp!61039 () Bool)

(declare-fun tp!61038 () Bool)

(declare-fun b!112470 () Bool)

(declare-fun tp!61037 () Bool)

(assert (=> b!112470 (= e!63195 (and tp!61038 tp_is_empty!969 tp!61039 tp!61037))))

(declare-fun mapNonEmpty!1276 () Bool)

(declare-fun tp!61036 () Bool)

(assert (=> mapNonEmpty!1276 (= mapRes!1276 (and tp!61036 e!63194))))

(declare-fun mapKey!1276 () (_ BitVec 32))

(declare-fun mapValue!1276 () List!1830)

(declare-fun mapRest!1276 () (Array (_ BitVec 32) List!1830))

(assert (=> mapNonEmpty!1276 (= mapRest!1273 (store mapRest!1276 mapKey!1276 mapValue!1276))))

(assert (= (and mapNonEmpty!1273 condMapEmpty!1276) mapIsEmpty!1276))

(assert (= (and mapNonEmpty!1273 (not condMapEmpty!1276)) mapNonEmpty!1276))

(assert (= (and mapNonEmpty!1276 ((_ is Cons!1824) mapValue!1276)) b!112469))

(assert (= (and mapNonEmpty!1273 ((_ is Cons!1824) mapDefault!1276)) b!112470))

(declare-fun m!102368 () Bool)

(assert (=> mapNonEmpty!1276 m!102368))

(declare-fun tp!61043 () Bool)

(declare-fun tp!61044 () Bool)

(declare-fun e!63196 () Bool)

(declare-fun b!112471 () Bool)

(declare-fun tp!61042 () Bool)

(assert (=> b!112471 (= e!63196 (and tp!61042 tp_is_empty!969 tp!61043 tp!61044))))

(assert (=> mapNonEmpty!1273 (= tp!61000 e!63196)))

(assert (= (and mapNonEmpty!1273 ((_ is Cons!1824) mapValue!1273)) b!112471))

(declare-fun b!112476 () Bool)

(declare-fun e!63199 () Bool)

(declare-fun tp!61047 () Bool)

(assert (=> b!112476 (= e!63199 (and tp_is_empty!969 tp!61047))))

(assert (=> b!112339 (= tp!60998 e!63199)))

(assert (= (and b!112339 ((_ is Cons!1825) (t!22308 input!6708))) b!112476))

(declare-fun b!112490 () Bool)

(declare-fun e!63202 () Bool)

(declare-fun tp!61060 () Bool)

(declare-fun tp!61058 () Bool)

(assert (=> b!112490 (= e!63202 (and tp!61060 tp!61058))))

(declare-fun b!112489 () Bool)

(declare-fun tp!61061 () Bool)

(assert (=> b!112489 (= e!63202 tp!61061)))

(declare-fun b!112488 () Bool)

(declare-fun tp!61059 () Bool)

(declare-fun tp!61062 () Bool)

(assert (=> b!112488 (= e!63202 (and tp!61059 tp!61062))))

(assert (=> b!112340 (= tp!60996 e!63202)))

(declare-fun b!112487 () Bool)

(assert (=> b!112487 (= e!63202 tp_is_empty!969)))

(assert (= (and b!112340 ((_ is ElementMatch!457) (regOne!1427 r!15516))) b!112487))

(assert (= (and b!112340 ((_ is Concat!841) (regOne!1427 r!15516))) b!112488))

(assert (= (and b!112340 ((_ is Star!457) (regOne!1427 r!15516))) b!112489))

(assert (= (and b!112340 ((_ is Union!457) (regOne!1427 r!15516))) b!112490))

(declare-fun b!112494 () Bool)

(declare-fun e!63203 () Bool)

(declare-fun tp!61065 () Bool)

(declare-fun tp!61063 () Bool)

(assert (=> b!112494 (= e!63203 (and tp!61065 tp!61063))))

(declare-fun b!112493 () Bool)

(declare-fun tp!61066 () Bool)

(assert (=> b!112493 (= e!63203 tp!61066)))

(declare-fun b!112492 () Bool)

(declare-fun tp!61064 () Bool)

(declare-fun tp!61067 () Bool)

(assert (=> b!112492 (= e!63203 (and tp!61064 tp!61067))))

(assert (=> b!112340 (= tp!60999 e!63203)))

(declare-fun b!112491 () Bool)

(assert (=> b!112491 (= e!63203 tp_is_empty!969)))

(assert (= (and b!112340 ((_ is ElementMatch!457) (regTwo!1427 r!15516))) b!112491))

(assert (= (and b!112340 ((_ is Concat!841) (regTwo!1427 r!15516))) b!112492))

(assert (= (and b!112340 ((_ is Star!457) (regTwo!1427 r!15516))) b!112493))

(assert (= (and b!112340 ((_ is Union!457) (regTwo!1427 r!15516))) b!112494))

(declare-fun b!112498 () Bool)

(declare-fun e!63204 () Bool)

(declare-fun tp!61070 () Bool)

(declare-fun tp!61068 () Bool)

(assert (=> b!112498 (= e!63204 (and tp!61070 tp!61068))))

(declare-fun b!112497 () Bool)

(declare-fun tp!61071 () Bool)

(assert (=> b!112497 (= e!63204 tp!61071)))

(declare-fun b!112496 () Bool)

(declare-fun tp!61069 () Bool)

(declare-fun tp!61072 () Bool)

(assert (=> b!112496 (= e!63204 (and tp!61069 tp!61072))))

(assert (=> b!112345 (= tp!61002 e!63204)))

(declare-fun b!112495 () Bool)

(assert (=> b!112495 (= e!63204 tp_is_empty!969)))

(assert (= (and b!112345 ((_ is ElementMatch!457) (reg!786 r!15516))) b!112495))

(assert (= (and b!112345 ((_ is Concat!841) (reg!786 r!15516))) b!112496))

(assert (= (and b!112345 ((_ is Star!457) (reg!786 r!15516))) b!112497))

(assert (= (and b!112345 ((_ is Union!457) (reg!786 r!15516))) b!112498))

(declare-fun b!112502 () Bool)

(declare-fun e!63205 () Bool)

(declare-fun tp!61075 () Bool)

(declare-fun tp!61073 () Bool)

(assert (=> b!112502 (= e!63205 (and tp!61075 tp!61073))))

(declare-fun b!112501 () Bool)

(declare-fun tp!61076 () Bool)

(assert (=> b!112501 (= e!63205 tp!61076)))

(declare-fun b!112500 () Bool)

(declare-fun tp!61074 () Bool)

(declare-fun tp!61077 () Bool)

(assert (=> b!112500 (= e!63205 (and tp!61074 tp!61077))))

(assert (=> b!112351 (= tp!61004 e!63205)))

(declare-fun b!112499 () Bool)

(assert (=> b!112499 (= e!63205 tp_is_empty!969)))

(assert (= (and b!112351 ((_ is ElementMatch!457) (regOne!1426 r!15516))) b!112499))

(assert (= (and b!112351 ((_ is Concat!841) (regOne!1426 r!15516))) b!112500))

(assert (= (and b!112351 ((_ is Star!457) (regOne!1426 r!15516))) b!112501))

(assert (= (and b!112351 ((_ is Union!457) (regOne!1426 r!15516))) b!112502))

(declare-fun b!112506 () Bool)

(declare-fun e!63206 () Bool)

(declare-fun tp!61080 () Bool)

(declare-fun tp!61078 () Bool)

(assert (=> b!112506 (= e!63206 (and tp!61080 tp!61078))))

(declare-fun b!112505 () Bool)

(declare-fun tp!61081 () Bool)

(assert (=> b!112505 (= e!63206 tp!61081)))

(declare-fun b!112504 () Bool)

(declare-fun tp!61079 () Bool)

(declare-fun tp!61082 () Bool)

(assert (=> b!112504 (= e!63206 (and tp!61079 tp!61082))))

(assert (=> b!112351 (= tp!61003 e!63206)))

(declare-fun b!112503 () Bool)

(assert (=> b!112503 (= e!63206 tp_is_empty!969)))

(assert (= (and b!112351 ((_ is ElementMatch!457) (regTwo!1426 r!15516))) b!112503))

(assert (= (and b!112351 ((_ is Concat!841) (regTwo!1426 r!15516))) b!112504))

(assert (= (and b!112351 ((_ is Star!457) (regTwo!1426 r!15516))) b!112505))

(assert (= (and b!112351 ((_ is Union!457) (regTwo!1426 r!15516))) b!112506))

(check-sat (not bm!4836) (not bm!4837) (not b!112489) (not b!112446) (not b!112502) tp_is_empty!969 (not b!112435) (not b_next!3521) (not b!112490) (not b!112470) (not bm!4835) (not bm!4813) (not b!112496) (not b!112379) (not b!112504) (not b!112455) (not b!112469) (not b!112384) (not b!112461) (not b!112476) (not b!112420) (not b!112493) (not b!112453) (not mapNonEmpty!1276) (not bm!4832) (not b!112488) (not b!112471) (not d!28096) (not bm!4831) (not b!112418) (not b!112492) (not b!112506) (not b!112462) (not b!112498) (not bm!4833) (not bm!4830) (not d!28092) (not d!28106) (not d!28098) b_and!5653 (not b!112415) (not b_next!3523) b_and!5651 (not b!112460) (not b!112445) (not b!112501) (not b!112429) (not d!28102) (not b!112505) (not bm!4811) (not d!28094) (not b!112500) (not b!112494) (not b!112416) (not bm!4834) (not b!112497) (not d!28104))
(check-sat b_and!5651 b_and!5653 (not b_next!3523) (not b_next!3521))
