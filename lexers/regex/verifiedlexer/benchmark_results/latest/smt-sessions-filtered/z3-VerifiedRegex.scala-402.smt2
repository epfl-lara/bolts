; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11998 () Bool)

(assert start!11998)

(declare-fun b!118057 () Bool)

(declare-fun b_free!3769 () Bool)

(declare-fun b_next!3769 () Bool)

(assert (=> b!118057 (= b_free!3769 (not b_next!3769))))

(declare-fun tp!64576 () Bool)

(declare-fun b_and!5899 () Bool)

(assert (=> b!118057 (= tp!64576 b_and!5899)))

(declare-fun b!118042 () Bool)

(declare-fun b_free!3771 () Bool)

(declare-fun b_next!3771 () Bool)

(assert (=> b!118042 (= b_free!3771 (not b_next!3771))))

(declare-fun tp!64569 () Bool)

(declare-fun b_and!5901 () Bool)

(assert (=> b!118042 (= tp!64569 b_and!5901)))

(declare-fun b!118040 () Bool)

(declare-fun e!67305 () Bool)

(declare-fun tp_is_empty!1093 () Bool)

(declare-fun tp!64577 () Bool)

(assert (=> b!118040 (= e!67305 (and tp_is_empty!1093 tp!64577))))

(declare-fun totalInputSize!643 () Int)

(declare-fun lt!35072 () Int)

(declare-fun lt!35073 () Int)

(declare-fun e!67306 () Bool)

(declare-fun b!118041 () Bool)

(assert (=> b!118041 (= e!67306 (and (= totalInputSize!643 lt!35073) (< (- lt!35073 lt!35072) 0)))))

(declare-datatypes ((C!1960 0))(
  ( (C!1961 (val!706 Int)) )
))
(declare-datatypes ((List!1952 0))(
  ( (Nil!1946) (Cons!1946 (h!7343 C!1960) (t!22429 List!1952)) )
))
(declare-fun totalInput!1363 () List!1952)

(declare-fun size!1777 (List!1952) Int)

(assert (=> b!118041 (= lt!35073 (size!1777 totalInput!1363))))

(declare-fun e!67303 () Bool)

(declare-fun e!67309 () Bool)

(assert (=> b!118042 (= e!67303 (and e!67309 tp!64569))))

(declare-fun b!118044 () Bool)

(declare-fun e!67301 () Bool)

(declare-fun tp!64571 () Bool)

(declare-fun tp!64573 () Bool)

(assert (=> b!118044 (= e!67301 (and tp!64571 tp!64573))))

(declare-fun b!118045 () Bool)

(declare-fun tp!64582 () Bool)

(assert (=> b!118045 (= e!67301 tp!64582)))

(declare-fun b!118046 () Bool)

(declare-fun e!67298 () Bool)

(assert (=> b!118046 (= e!67298 e!67306)))

(declare-fun res!55822 () Bool)

(assert (=> b!118046 (=> (not res!55822) (not e!67306))))

(declare-fun testedPSize!285 () Int)

(assert (=> b!118046 (= res!55822 (= testedPSize!285 lt!35072))))

(declare-fun testedP!367 () List!1952)

(assert (=> b!118046 (= lt!35072 (size!1777 testedP!367))))

(declare-fun mapIsEmpty!1489 () Bool)

(declare-fun mapRes!1489 () Bool)

(assert (=> mapIsEmpty!1489 mapRes!1489))

(declare-fun b!118047 () Bool)

(declare-fun e!67299 () Bool)

(declare-fun tp!64578 () Bool)

(assert (=> b!118047 (= e!67299 (and tp_is_empty!1093 tp!64578))))

(declare-fun b!118048 () Bool)

(declare-fun e!67311 () Bool)

(declare-fun e!67300 () Bool)

(assert (=> b!118048 (= e!67311 e!67300)))

(declare-fun b!118049 () Bool)

(assert (=> b!118049 (= e!67301 tp_is_empty!1093)))

(declare-fun b!118050 () Bool)

(declare-fun res!55823 () Bool)

(assert (=> b!118050 (=> (not res!55823) (not e!67298))))

(declare-datatypes ((Regex!519 0))(
  ( (ElementMatch!519 (c!26749 C!1960)) (Concat!903 (regOne!1550 Regex!519) (regTwo!1550 Regex!519)) (EmptyExpr!519) (Star!519 (reg!848 Regex!519)) (EmptyLang!519) (Union!519 (regOne!1551 Regex!519) (regTwo!1551 Regex!519)) )
))
(declare-datatypes ((Hashable!381 0))(
  ( (HashableExt!380 (__x!2080 Int)) )
))
(declare-datatypes ((tuple2!2200 0))(
  ( (tuple2!2201 (_1!1310 Regex!519) (_2!1310 C!1960)) )
))
(declare-datatypes ((tuple2!2202 0))(
  ( (tuple2!2203 (_1!1311 tuple2!2200) (_2!1311 Regex!519)) )
))
(declare-datatypes ((List!1953 0))(
  ( (Nil!1947) (Cons!1947 (h!7344 tuple2!2202) (t!22430 List!1953)) )
))
(declare-datatypes ((array!1401 0))(
  ( (array!1402 (arr!654 (Array (_ BitVec 32) (_ BitVec 64))) (size!1778 (_ BitVec 32))) )
))
(declare-datatypes ((array!1403 0))(
  ( (array!1404 (arr!655 (Array (_ BitVec 32) List!1953)) (size!1779 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!770 0))(
  ( (LongMapFixedSize!771 (defaultEntry!724 Int) (mask!1312 (_ BitVec 32)) (extraKeys!631 (_ BitVec 32)) (zeroValue!641 List!1953) (minValue!641 List!1953) (_size!903 (_ BitVec 32)) (_keys!676 array!1401) (_values!663 array!1403) (_vacant!446 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1529 0))(
  ( (Cell!1530 (v!13301 LongMapFixedSize!770)) )
))
(declare-datatypes ((MutLongMap!385 0))(
  ( (LongMap!385 (underlying!969 Cell!1529)) (MutLongMapExt!384 (__x!2081 Int)) )
))
(declare-datatypes ((Cell!1531 0))(
  ( (Cell!1532 (v!13302 MutLongMap!385)) )
))
(declare-datatypes ((MutableMap!381 0))(
  ( (MutableMapExt!380 (__x!2082 Int)) (HashMap!381 (underlying!970 Cell!1531) (hashF!2257 Hashable!381) (_size!904 (_ BitVec 32)) (defaultValue!530 Int)) )
))
(declare-datatypes ((Cache!198 0))(
  ( (Cache!199 (cache!833 MutableMap!381)) )
))
(declare-fun cache!470 () Cache!198)

(declare-fun valid!348 (Cache!198) Bool)

(assert (=> b!118050 (= res!55823 (valid!348 cache!470))))

(declare-fun b!118051 () Bool)

(declare-fun e!67308 () Bool)

(declare-fun tp!64579 () Bool)

(assert (=> b!118051 (= e!67308 (and tp!64579 mapRes!1489))))

(declare-fun condMapEmpty!1489 () Bool)

(declare-fun mapDefault!1489 () List!1953)

(assert (=> b!118051 (= condMapEmpty!1489 (= (arr!655 (_values!663 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) ((as const (Array (_ BitVec 32) List!1953)) mapDefault!1489)))))

(declare-fun b!118043 () Bool)

(declare-fun e!67302 () Bool)

(declare-fun tp!64580 () Bool)

(assert (=> b!118043 (= e!67302 (and tp_is_empty!1093 tp!64580))))

(declare-fun res!55824 () Bool)

(assert (=> start!11998 (=> (not res!55824) (not e!67298))))

(declare-fun r!15532 () Regex!519)

(declare-fun validRegex!124 (Regex!519) Bool)

(assert (=> start!11998 (= res!55824 (validRegex!124 r!15532))))

(assert (=> start!11998 e!67298))

(assert (=> start!11998 true))

(assert (=> start!11998 e!67301))

(assert (=> start!11998 e!67302))

(assert (=> start!11998 e!67305))

(assert (=> start!11998 e!67299))

(declare-fun e!67310 () Bool)

(declare-fun inv!2466 (Cache!198) Bool)

(assert (=> start!11998 (and (inv!2466 cache!470) e!67310)))

(declare-fun mapNonEmpty!1489 () Bool)

(declare-fun tp!64581 () Bool)

(declare-fun tp!64570 () Bool)

(assert (=> mapNonEmpty!1489 (= mapRes!1489 (and tp!64581 tp!64570))))

(declare-fun mapKey!1489 () (_ BitVec 32))

(declare-fun mapRest!1489 () (Array (_ BitVec 32) List!1953))

(declare-fun mapValue!1489 () List!1953)

(assert (=> mapNonEmpty!1489 (= (arr!655 (_values!663 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) (store mapRest!1489 mapKey!1489 mapValue!1489))))

(declare-fun b!118052 () Bool)

(declare-fun tp!64574 () Bool)

(declare-fun tp!64583 () Bool)

(assert (=> b!118052 (= e!67301 (and tp!64574 tp!64583))))

(declare-fun b!118053 () Bool)

(declare-fun res!55825 () Bool)

(assert (=> b!118053 (=> (not res!55825) (not e!67298))))

(declare-fun testedSuffix!285 () List!1952)

(declare-fun ++!356 (List!1952 List!1952) List!1952)

(assert (=> b!118053 (= res!55825 (= (++!356 testedP!367 testedSuffix!285) totalInput!1363))))

(declare-fun b!118054 () Bool)

(declare-fun e!67304 () Bool)

(assert (=> b!118054 (= e!67304 e!67311)))

(declare-fun b!118055 () Bool)

(declare-fun lt!35074 () MutLongMap!385)

(get-info :version)

(assert (=> b!118055 (= e!67309 (and e!67304 ((_ is LongMap!385) lt!35074)))))

(assert (=> b!118055 (= lt!35074 (v!13302 (underlying!970 (cache!833 cache!470))))))

(declare-fun b!118056 () Bool)

(assert (=> b!118056 (= e!67310 e!67303)))

(declare-fun tp!64575 () Bool)

(declare-fun tp!64572 () Bool)

(declare-fun array_inv!469 (array!1401) Bool)

(declare-fun array_inv!470 (array!1403) Bool)

(assert (=> b!118057 (= e!67300 (and tp!64576 tp!64572 tp!64575 (array_inv!469 (_keys!676 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) (array_inv!470 (_values!663 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) e!67308))))

(assert (= (and start!11998 res!55824) b!118050))

(assert (= (and b!118050 res!55823) b!118053))

(assert (= (and b!118053 res!55825) b!118046))

(assert (= (and b!118046 res!55822) b!118041))

(assert (= (and start!11998 ((_ is ElementMatch!519) r!15532)) b!118049))

(assert (= (and start!11998 ((_ is Concat!903) r!15532)) b!118052))

(assert (= (and start!11998 ((_ is Star!519) r!15532)) b!118045))

(assert (= (and start!11998 ((_ is Union!519) r!15532)) b!118044))

(assert (= (and start!11998 ((_ is Cons!1946) totalInput!1363)) b!118043))

(assert (= (and start!11998 ((_ is Cons!1946) testedSuffix!285)) b!118040))

(assert (= (and start!11998 ((_ is Cons!1946) testedP!367)) b!118047))

(assert (= (and b!118051 condMapEmpty!1489) mapIsEmpty!1489))

(assert (= (and b!118051 (not condMapEmpty!1489)) mapNonEmpty!1489))

(assert (= b!118057 b!118051))

(assert (= b!118048 b!118057))

(assert (= b!118054 b!118048))

(assert (= (and b!118055 ((_ is LongMap!385) (v!13302 (underlying!970 (cache!833 cache!470))))) b!118054))

(assert (= b!118042 b!118055))

(assert (= (and b!118056 ((_ is HashMap!381) (cache!833 cache!470))) b!118042))

(assert (= start!11998 b!118056))

(declare-fun m!105752 () Bool)

(assert (=> b!118057 m!105752))

(declare-fun m!105754 () Bool)

(assert (=> b!118057 m!105754))

(declare-fun m!105756 () Bool)

(assert (=> start!11998 m!105756))

(declare-fun m!105758 () Bool)

(assert (=> start!11998 m!105758))

(declare-fun m!105760 () Bool)

(assert (=> b!118053 m!105760))

(declare-fun m!105762 () Bool)

(assert (=> b!118041 m!105762))

(declare-fun m!105764 () Bool)

(assert (=> b!118046 m!105764))

(declare-fun m!105766 () Bool)

(assert (=> mapNonEmpty!1489 m!105766))

(declare-fun m!105768 () Bool)

(assert (=> b!118050 m!105768))

(check-sat (not start!11998) (not b_next!3769) (not b!118057) (not b!118043) (not b!118046) b_and!5901 (not b!118051) (not b!118040) (not b_next!3771) (not b!118045) b_and!5899 (not b!118053) (not mapNonEmpty!1489) (not b!118041) (not b!118047) (not b!118052) (not b!118044) tp_is_empty!1093 (not b!118050))
(check-sat b_and!5901 b_and!5899 (not b_next!3771) (not b_next!3769))
(get-model)

(declare-fun d!28529 () Bool)

(assert (=> d!28529 (= (array_inv!469 (_keys!676 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) (bvsge (size!1778 (_keys!676 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!118057 d!28529))

(declare-fun d!28531 () Bool)

(assert (=> d!28531 (= (array_inv!470 (_values!663 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) (bvsge (size!1779 (_values!663 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!118057 d!28531))

(declare-fun b!118067 () Bool)

(declare-fun e!67317 () List!1952)

(assert (=> b!118067 (= e!67317 (Cons!1946 (h!7343 testedP!367) (++!356 (t!22429 testedP!367) testedSuffix!285)))))

(declare-fun b!118068 () Bool)

(declare-fun res!55831 () Bool)

(declare-fun e!67316 () Bool)

(assert (=> b!118068 (=> (not res!55831) (not e!67316))))

(declare-fun lt!35077 () List!1952)

(assert (=> b!118068 (= res!55831 (= (size!1777 lt!35077) (+ (size!1777 testedP!367) (size!1777 testedSuffix!285))))))

(declare-fun b!118066 () Bool)

(assert (=> b!118066 (= e!67317 testedSuffix!285)))

(declare-fun b!118069 () Bool)

(assert (=> b!118069 (= e!67316 (or (not (= testedSuffix!285 Nil!1946)) (= lt!35077 testedP!367)))))

(declare-fun d!28533 () Bool)

(assert (=> d!28533 e!67316))

(declare-fun res!55830 () Bool)

(assert (=> d!28533 (=> (not res!55830) (not e!67316))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!218 (List!1952) (InoxSet C!1960))

(assert (=> d!28533 (= res!55830 (= (content!218 lt!35077) ((_ map or) (content!218 testedP!367) (content!218 testedSuffix!285))))))

(assert (=> d!28533 (= lt!35077 e!67317)))

(declare-fun c!26752 () Bool)

(assert (=> d!28533 (= c!26752 ((_ is Nil!1946) testedP!367))))

(assert (=> d!28533 (= (++!356 testedP!367 testedSuffix!285) lt!35077)))

(assert (= (and d!28533 c!26752) b!118066))

(assert (= (and d!28533 (not c!26752)) b!118067))

(assert (= (and d!28533 res!55830) b!118068))

(assert (= (and b!118068 res!55831) b!118069))

(declare-fun m!105770 () Bool)

(assert (=> b!118067 m!105770))

(declare-fun m!105772 () Bool)

(assert (=> b!118068 m!105772))

(assert (=> b!118068 m!105764))

(declare-fun m!105774 () Bool)

(assert (=> b!118068 m!105774))

(declare-fun m!105776 () Bool)

(assert (=> d!28533 m!105776))

(declare-fun m!105778 () Bool)

(assert (=> d!28533 m!105778))

(declare-fun m!105780 () Bool)

(assert (=> d!28533 m!105780))

(assert (=> b!118053 d!28533))

(declare-fun d!28535 () Bool)

(declare-fun validCacheMap!20 (MutableMap!381) Bool)

(assert (=> d!28535 (= (valid!348 cache!470) (validCacheMap!20 (cache!833 cache!470)))))

(declare-fun bs!11887 () Bool)

(assert (= bs!11887 d!28535))

(declare-fun m!105782 () Bool)

(assert (=> bs!11887 m!105782))

(assert (=> b!118050 d!28535))

(declare-fun d!28537 () Bool)

(declare-fun lt!35080 () Int)

(assert (=> d!28537 (>= lt!35080 0)))

(declare-fun e!67320 () Int)

(assert (=> d!28537 (= lt!35080 e!67320)))

(declare-fun c!26755 () Bool)

(assert (=> d!28537 (= c!26755 ((_ is Nil!1946) totalInput!1363))))

(assert (=> d!28537 (= (size!1777 totalInput!1363) lt!35080)))

(declare-fun b!118074 () Bool)

(assert (=> b!118074 (= e!67320 0)))

(declare-fun b!118075 () Bool)

(assert (=> b!118075 (= e!67320 (+ 1 (size!1777 (t!22429 totalInput!1363))))))

(assert (= (and d!28537 c!26755) b!118074))

(assert (= (and d!28537 (not c!26755)) b!118075))

(declare-fun m!105784 () Bool)

(assert (=> b!118075 m!105784))

(assert (=> b!118041 d!28537))

(declare-fun d!28539 () Bool)

(declare-fun lt!35081 () Int)

(assert (=> d!28539 (>= lt!35081 0)))

(declare-fun e!67321 () Int)

(assert (=> d!28539 (= lt!35081 e!67321)))

(declare-fun c!26756 () Bool)

(assert (=> d!28539 (= c!26756 ((_ is Nil!1946) testedP!367))))

(assert (=> d!28539 (= (size!1777 testedP!367) lt!35081)))

(declare-fun b!118076 () Bool)

(assert (=> b!118076 (= e!67321 0)))

(declare-fun b!118077 () Bool)

(assert (=> b!118077 (= e!67321 (+ 1 (size!1777 (t!22429 testedP!367))))))

(assert (= (and d!28539 c!26756) b!118076))

(assert (= (and d!28539 (not c!26756)) b!118077))

(declare-fun m!105786 () Bool)

(assert (=> b!118077 m!105786))

(assert (=> b!118046 d!28539))

(declare-fun b!118096 () Bool)

(declare-fun e!67337 () Bool)

(declare-fun e!67342 () Bool)

(assert (=> b!118096 (= e!67337 e!67342)))

(declare-fun res!55846 () Bool)

(declare-fun nullable!75 (Regex!519) Bool)

(assert (=> b!118096 (= res!55846 (not (nullable!75 (reg!848 r!15532))))))

(assert (=> b!118096 (=> (not res!55846) (not e!67342))))

(declare-fun d!28541 () Bool)

(declare-fun res!55842 () Bool)

(declare-fun e!67340 () Bool)

(assert (=> d!28541 (=> res!55842 e!67340)))

(assert (=> d!28541 (= res!55842 ((_ is ElementMatch!519) r!15532))))

(assert (=> d!28541 (= (validRegex!124 r!15532) e!67340)))

(declare-fun b!118097 () Bool)

(declare-fun e!67338 () Bool)

(declare-fun call!4954 () Bool)

(assert (=> b!118097 (= e!67338 call!4954)))

(declare-fun b!118098 () Bool)

(declare-fun res!55845 () Bool)

(assert (=> b!118098 (=> (not res!55845) (not e!67338))))

(declare-fun call!4955 () Bool)

(assert (=> b!118098 (= res!55845 call!4955)))

(declare-fun e!67339 () Bool)

(assert (=> b!118098 (= e!67339 e!67338)))

(declare-fun b!118099 () Bool)

(declare-fun e!67336 () Bool)

(declare-fun e!67341 () Bool)

(assert (=> b!118099 (= e!67336 e!67341)))

(declare-fun res!55844 () Bool)

(assert (=> b!118099 (=> (not res!55844) (not e!67341))))

(assert (=> b!118099 (= res!55844 call!4954)))

(declare-fun c!26762 () Bool)

(declare-fun bm!4949 () Bool)

(declare-fun call!4956 () Bool)

(declare-fun c!26761 () Bool)

(assert (=> bm!4949 (= call!4956 (validRegex!124 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))))))

(declare-fun bm!4950 () Bool)

(assert (=> bm!4950 (= call!4954 (validRegex!124 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))))))

(declare-fun b!118100 () Bool)

(declare-fun res!55843 () Bool)

(assert (=> b!118100 (=> res!55843 e!67336)))

(assert (=> b!118100 (= res!55843 (not ((_ is Concat!903) r!15532)))))

(assert (=> b!118100 (= e!67339 e!67336)))

(declare-fun b!118101 () Bool)

(assert (=> b!118101 (= e!67337 e!67339)))

(assert (=> b!118101 (= c!26761 ((_ is Union!519) r!15532))))

(declare-fun b!118102 () Bool)

(assert (=> b!118102 (= e!67341 call!4955)))

(declare-fun b!118103 () Bool)

(assert (=> b!118103 (= e!67340 e!67337)))

(assert (=> b!118103 (= c!26762 ((_ is Star!519) r!15532))))

(declare-fun b!118104 () Bool)

(assert (=> b!118104 (= e!67342 call!4956)))

(declare-fun bm!4951 () Bool)

(assert (=> bm!4951 (= call!4955 call!4956)))

(assert (= (and d!28541 (not res!55842)) b!118103))

(assert (= (and b!118103 c!26762) b!118096))

(assert (= (and b!118103 (not c!26762)) b!118101))

(assert (= (and b!118096 res!55846) b!118104))

(assert (= (and b!118101 c!26761) b!118098))

(assert (= (and b!118101 (not c!26761)) b!118100))

(assert (= (and b!118098 res!55845) b!118097))

(assert (= (and b!118100 (not res!55843)) b!118099))

(assert (= (and b!118099 res!55844) b!118102))

(assert (= (or b!118097 b!118099) bm!4950))

(assert (= (or b!118098 b!118102) bm!4951))

(assert (= (or b!118104 bm!4951) bm!4949))

(declare-fun m!105788 () Bool)

(assert (=> b!118096 m!105788))

(declare-fun m!105790 () Bool)

(assert (=> bm!4949 m!105790))

(declare-fun m!105792 () Bool)

(assert (=> bm!4950 m!105792))

(assert (=> start!11998 d!28541))

(declare-fun d!28543 () Bool)

(declare-fun res!55849 () Bool)

(declare-fun e!67345 () Bool)

(assert (=> d!28543 (=> (not res!55849) (not e!67345))))

(assert (=> d!28543 (= res!55849 ((_ is HashMap!381) (cache!833 cache!470)))))

(assert (=> d!28543 (= (inv!2466 cache!470) e!67345)))

(declare-fun b!118107 () Bool)

(assert (=> b!118107 (= e!67345 (validCacheMap!20 (cache!833 cache!470)))))

(assert (= (and d!28543 res!55849) b!118107))

(assert (=> b!118107 m!105782))

(assert (=> start!11998 d!28543))

(declare-fun b!118112 () Bool)

(declare-fun tp!64590 () Bool)

(declare-fun tp!64592 () Bool)

(declare-fun tp!64591 () Bool)

(declare-fun e!67348 () Bool)

(assert (=> b!118112 (= e!67348 (and tp!64590 tp_is_empty!1093 tp!64591 tp!64592))))

(assert (=> b!118057 (= tp!64572 e!67348)))

(assert (= (and b!118057 ((_ is Cons!1947) (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))) b!118112))

(declare-fun tp!64595 () Bool)

(declare-fun tp!64593 () Bool)

(declare-fun e!67349 () Bool)

(declare-fun tp!64594 () Bool)

(declare-fun b!118113 () Bool)

(assert (=> b!118113 (= e!67349 (and tp!64593 tp_is_empty!1093 tp!64594 tp!64595))))

(assert (=> b!118057 (= tp!64575 e!67349)))

(assert (= (and b!118057 ((_ is Cons!1947) (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))) b!118113))

(declare-fun b!118118 () Bool)

(declare-fun e!67352 () Bool)

(declare-fun tp!64598 () Bool)

(assert (=> b!118118 (= e!67352 (and tp_is_empty!1093 tp!64598))))

(assert (=> b!118043 (= tp!64580 e!67352)))

(assert (= (and b!118043 ((_ is Cons!1946) (t!22429 totalInput!1363))) b!118118))

(declare-fun b!118119 () Bool)

(declare-fun e!67353 () Bool)

(declare-fun tp!64599 () Bool)

(assert (=> b!118119 (= e!67353 (and tp_is_empty!1093 tp!64599))))

(assert (=> b!118047 (= tp!64578 e!67353)))

(assert (= (and b!118047 ((_ is Cons!1946) (t!22429 testedP!367))) b!118119))

(declare-fun e!67356 () Bool)

(assert (=> b!118052 (= tp!64574 e!67356)))

(declare-fun b!118130 () Bool)

(assert (=> b!118130 (= e!67356 tp_is_empty!1093)))

(declare-fun b!118131 () Bool)

(declare-fun tp!64613 () Bool)

(declare-fun tp!64611 () Bool)

(assert (=> b!118131 (= e!67356 (and tp!64613 tp!64611))))

(declare-fun b!118133 () Bool)

(declare-fun tp!64610 () Bool)

(declare-fun tp!64612 () Bool)

(assert (=> b!118133 (= e!67356 (and tp!64610 tp!64612))))

(declare-fun b!118132 () Bool)

(declare-fun tp!64614 () Bool)

(assert (=> b!118132 (= e!67356 tp!64614)))

(assert (= (and b!118052 ((_ is ElementMatch!519) (regOne!1550 r!15532))) b!118130))

(assert (= (and b!118052 ((_ is Concat!903) (regOne!1550 r!15532))) b!118131))

(assert (= (and b!118052 ((_ is Star!519) (regOne!1550 r!15532))) b!118132))

(assert (= (and b!118052 ((_ is Union!519) (regOne!1550 r!15532))) b!118133))

(declare-fun e!67357 () Bool)

(assert (=> b!118052 (= tp!64583 e!67357)))

(declare-fun b!118134 () Bool)

(assert (=> b!118134 (= e!67357 tp_is_empty!1093)))

(declare-fun b!118135 () Bool)

(declare-fun tp!64618 () Bool)

(declare-fun tp!64616 () Bool)

(assert (=> b!118135 (= e!67357 (and tp!64618 tp!64616))))

(declare-fun b!118137 () Bool)

(declare-fun tp!64615 () Bool)

(declare-fun tp!64617 () Bool)

(assert (=> b!118137 (= e!67357 (and tp!64615 tp!64617))))

(declare-fun b!118136 () Bool)

(declare-fun tp!64619 () Bool)

(assert (=> b!118136 (= e!67357 tp!64619)))

(assert (= (and b!118052 ((_ is ElementMatch!519) (regTwo!1550 r!15532))) b!118134))

(assert (= (and b!118052 ((_ is Concat!903) (regTwo!1550 r!15532))) b!118135))

(assert (= (and b!118052 ((_ is Star!519) (regTwo!1550 r!15532))) b!118136))

(assert (= (and b!118052 ((_ is Union!519) (regTwo!1550 r!15532))) b!118137))

(declare-fun e!67358 () Bool)

(assert (=> b!118044 (= tp!64571 e!67358)))

(declare-fun b!118138 () Bool)

(assert (=> b!118138 (= e!67358 tp_is_empty!1093)))

(declare-fun b!118139 () Bool)

(declare-fun tp!64623 () Bool)

(declare-fun tp!64621 () Bool)

(assert (=> b!118139 (= e!67358 (and tp!64623 tp!64621))))

(declare-fun b!118141 () Bool)

(declare-fun tp!64620 () Bool)

(declare-fun tp!64622 () Bool)

(assert (=> b!118141 (= e!67358 (and tp!64620 tp!64622))))

(declare-fun b!118140 () Bool)

(declare-fun tp!64624 () Bool)

(assert (=> b!118140 (= e!67358 tp!64624)))

(assert (= (and b!118044 ((_ is ElementMatch!519) (regOne!1551 r!15532))) b!118138))

(assert (= (and b!118044 ((_ is Concat!903) (regOne!1551 r!15532))) b!118139))

(assert (= (and b!118044 ((_ is Star!519) (regOne!1551 r!15532))) b!118140))

(assert (= (and b!118044 ((_ is Union!519) (regOne!1551 r!15532))) b!118141))

(declare-fun e!67359 () Bool)

(assert (=> b!118044 (= tp!64573 e!67359)))

(declare-fun b!118142 () Bool)

(assert (=> b!118142 (= e!67359 tp_is_empty!1093)))

(declare-fun b!118143 () Bool)

(declare-fun tp!64628 () Bool)

(declare-fun tp!64626 () Bool)

(assert (=> b!118143 (= e!67359 (and tp!64628 tp!64626))))

(declare-fun b!118145 () Bool)

(declare-fun tp!64625 () Bool)

(declare-fun tp!64627 () Bool)

(assert (=> b!118145 (= e!67359 (and tp!64625 tp!64627))))

(declare-fun b!118144 () Bool)

(declare-fun tp!64629 () Bool)

(assert (=> b!118144 (= e!67359 tp!64629)))

(assert (= (and b!118044 ((_ is ElementMatch!519) (regTwo!1551 r!15532))) b!118142))

(assert (= (and b!118044 ((_ is Concat!903) (regTwo!1551 r!15532))) b!118143))

(assert (= (and b!118044 ((_ is Star!519) (regTwo!1551 r!15532))) b!118144))

(assert (= (and b!118044 ((_ is Union!519) (regTwo!1551 r!15532))) b!118145))

(declare-fun e!67360 () Bool)

(assert (=> b!118045 (= tp!64582 e!67360)))

(declare-fun b!118146 () Bool)

(assert (=> b!118146 (= e!67360 tp_is_empty!1093)))

(declare-fun b!118147 () Bool)

(declare-fun tp!64633 () Bool)

(declare-fun tp!64631 () Bool)

(assert (=> b!118147 (= e!67360 (and tp!64633 tp!64631))))

(declare-fun b!118149 () Bool)

(declare-fun tp!64630 () Bool)

(declare-fun tp!64632 () Bool)

(assert (=> b!118149 (= e!67360 (and tp!64630 tp!64632))))

(declare-fun b!118148 () Bool)

(declare-fun tp!64634 () Bool)

(assert (=> b!118148 (= e!67360 tp!64634)))

(assert (= (and b!118045 ((_ is ElementMatch!519) (reg!848 r!15532))) b!118146))

(assert (= (and b!118045 ((_ is Concat!903) (reg!848 r!15532))) b!118147))

(assert (= (and b!118045 ((_ is Star!519) (reg!848 r!15532))) b!118148))

(assert (= (and b!118045 ((_ is Union!519) (reg!848 r!15532))) b!118149))

(declare-fun b!118150 () Bool)

(declare-fun e!67361 () Bool)

(declare-fun tp!64635 () Bool)

(assert (=> b!118150 (= e!67361 (and tp_is_empty!1093 tp!64635))))

(assert (=> b!118040 (= tp!64577 e!67361)))

(assert (= (and b!118040 ((_ is Cons!1946) (t!22429 testedSuffix!285))) b!118150))

(declare-fun b!118151 () Bool)

(declare-fun e!67362 () Bool)

(declare-fun tp!64636 () Bool)

(declare-fun tp!64638 () Bool)

(declare-fun tp!64637 () Bool)

(assert (=> b!118151 (= e!67362 (and tp!64636 tp_is_empty!1093 tp!64637 tp!64638))))

(assert (=> b!118051 (= tp!64579 e!67362)))

(assert (= (and b!118051 ((_ is Cons!1947) mapDefault!1489)) b!118151))

(declare-fun mapNonEmpty!1492 () Bool)

(declare-fun mapRes!1492 () Bool)

(declare-fun tp!64659 () Bool)

(declare-fun e!67367 () Bool)

(assert (=> mapNonEmpty!1492 (= mapRes!1492 (and tp!64659 e!67367))))

(declare-fun mapRest!1492 () (Array (_ BitVec 32) List!1953))

(declare-fun mapValue!1492 () List!1953)

(declare-fun mapKey!1492 () (_ BitVec 32))

(assert (=> mapNonEmpty!1492 (= mapRest!1489 (store mapRest!1492 mapKey!1492 mapValue!1492))))

(declare-fun tp!64657 () Bool)

(declare-fun tp!64653 () Bool)

(declare-fun e!67368 () Bool)

(declare-fun tp!64654 () Bool)

(declare-fun b!118159 () Bool)

(assert (=> b!118159 (= e!67368 (and tp!64657 tp_is_empty!1093 tp!64653 tp!64654))))

(declare-fun condMapEmpty!1492 () Bool)

(declare-fun mapDefault!1492 () List!1953)

(assert (=> mapNonEmpty!1489 (= condMapEmpty!1492 (= mapRest!1489 ((as const (Array (_ BitVec 32) List!1953)) mapDefault!1492)))))

(assert (=> mapNonEmpty!1489 (= tp!64581 (and e!67368 mapRes!1492))))

(declare-fun mapIsEmpty!1492 () Bool)

(assert (=> mapIsEmpty!1492 mapRes!1492))

(declare-fun b!118158 () Bool)

(declare-fun tp!64655 () Bool)

(declare-fun tp!64656 () Bool)

(declare-fun tp!64658 () Bool)

(assert (=> b!118158 (= e!67367 (and tp!64656 tp_is_empty!1093 tp!64655 tp!64658))))

(assert (= (and mapNonEmpty!1489 condMapEmpty!1492) mapIsEmpty!1492))

(assert (= (and mapNonEmpty!1489 (not condMapEmpty!1492)) mapNonEmpty!1492))

(assert (= (and mapNonEmpty!1492 ((_ is Cons!1947) mapValue!1492)) b!118158))

(assert (= (and mapNonEmpty!1489 ((_ is Cons!1947) mapDefault!1492)) b!118159))

(declare-fun m!105794 () Bool)

(assert (=> mapNonEmpty!1492 m!105794))

(declare-fun tp!64662 () Bool)

(declare-fun tp!64660 () Bool)

(declare-fun e!67369 () Bool)

(declare-fun b!118160 () Bool)

(declare-fun tp!64661 () Bool)

(assert (=> b!118160 (= e!67369 (and tp!64660 tp_is_empty!1093 tp!64661 tp!64662))))

(assert (=> mapNonEmpty!1489 (= tp!64570 e!67369)))

(assert (= (and mapNonEmpty!1489 ((_ is Cons!1947) mapValue!1489)) b!118160))

(check-sat (not b!118133) (not b!118147) (not b!118149) (not b!118113) (not mapNonEmpty!1492) (not b!118075) (not b!118139) (not d!28535) (not b!118119) (not b!118148) (not b!118136) (not b!118096) (not b!118144) (not b!118077) (not b_next!3769) (not b!118140) (not b!118137) (not b!118150) (not b!118068) (not b_next!3771) b_and!5899 (not b!118112) (not b!118107) (not b!118159) (not b!118145) (not b!118132) (not b!118135) b_and!5901 (not b!118131) (not b!118067) (not bm!4950) (not b!118118) (not b!118151) (not d!28533) (not b!118141) (not b!118143) (not b!118160) (not bm!4949) tp_is_empty!1093 (not b!118158))
(check-sat b_and!5901 b_and!5899 (not b_next!3771) (not b_next!3769))
(get-model)

(declare-fun d!28545 () Bool)

(declare-fun lt!35082 () Int)

(assert (=> d!28545 (>= lt!35082 0)))

(declare-fun e!67370 () Int)

(assert (=> d!28545 (= lt!35082 e!67370)))

(declare-fun c!26763 () Bool)

(assert (=> d!28545 (= c!26763 ((_ is Nil!1946) lt!35077))))

(assert (=> d!28545 (= (size!1777 lt!35077) lt!35082)))

(declare-fun b!118161 () Bool)

(assert (=> b!118161 (= e!67370 0)))

(declare-fun b!118162 () Bool)

(assert (=> b!118162 (= e!67370 (+ 1 (size!1777 (t!22429 lt!35077))))))

(assert (= (and d!28545 c!26763) b!118161))

(assert (= (and d!28545 (not c!26763)) b!118162))

(declare-fun m!105796 () Bool)

(assert (=> b!118162 m!105796))

(assert (=> b!118068 d!28545))

(assert (=> b!118068 d!28539))

(declare-fun d!28547 () Bool)

(declare-fun lt!35083 () Int)

(assert (=> d!28547 (>= lt!35083 0)))

(declare-fun e!67371 () Int)

(assert (=> d!28547 (= lt!35083 e!67371)))

(declare-fun c!26764 () Bool)

(assert (=> d!28547 (= c!26764 ((_ is Nil!1946) testedSuffix!285))))

(assert (=> d!28547 (= (size!1777 testedSuffix!285) lt!35083)))

(declare-fun b!118163 () Bool)

(assert (=> b!118163 (= e!67371 0)))

(declare-fun b!118164 () Bool)

(assert (=> b!118164 (= e!67371 (+ 1 (size!1777 (t!22429 testedSuffix!285))))))

(assert (= (and d!28547 c!26764) b!118163))

(assert (= (and d!28547 (not c!26764)) b!118164))

(declare-fun m!105798 () Bool)

(assert (=> b!118164 m!105798))

(assert (=> b!118068 d!28547))

(declare-fun d!28549 () Bool)

(declare-fun nullableFct!16 (Regex!519) Bool)

(assert (=> d!28549 (= (nullable!75 (reg!848 r!15532)) (nullableFct!16 (reg!848 r!15532)))))

(declare-fun bs!11888 () Bool)

(assert (= bs!11888 d!28549))

(declare-fun m!105800 () Bool)

(assert (=> bs!11888 m!105800))

(assert (=> b!118096 d!28549))

(declare-fun d!28551 () Bool)

(declare-fun lt!35084 () Int)

(assert (=> d!28551 (>= lt!35084 0)))

(declare-fun e!67372 () Int)

(assert (=> d!28551 (= lt!35084 e!67372)))

(declare-fun c!26765 () Bool)

(assert (=> d!28551 (= c!26765 ((_ is Nil!1946) (t!22429 testedP!367)))))

(assert (=> d!28551 (= (size!1777 (t!22429 testedP!367)) lt!35084)))

(declare-fun b!118165 () Bool)

(assert (=> b!118165 (= e!67372 0)))

(declare-fun b!118166 () Bool)

(assert (=> b!118166 (= e!67372 (+ 1 (size!1777 (t!22429 (t!22429 testedP!367)))))))

(assert (= (and d!28551 c!26765) b!118165))

(assert (= (and d!28551 (not c!26765)) b!118166))

(declare-fun m!105802 () Bool)

(assert (=> b!118166 m!105802))

(assert (=> b!118077 d!28551))

(declare-fun d!28553 () Bool)

(declare-fun res!55856 () Bool)

(declare-fun e!67377 () Bool)

(assert (=> d!28553 (=> (not res!55856) (not e!67377))))

(declare-fun valid!349 (MutableMap!381) Bool)

(assert (=> d!28553 (= res!55856 (valid!349 (cache!833 cache!470)))))

(assert (=> d!28553 (= (validCacheMap!20 (cache!833 cache!470)) e!67377)))

(declare-fun b!118173 () Bool)

(declare-fun res!55857 () Bool)

(assert (=> b!118173 (=> (not res!55857) (not e!67377))))

(declare-fun invariantList!31 (List!1953) Bool)

(declare-datatypes ((ListMap!85 0))(
  ( (ListMap!86 (toList!267 List!1953)) )
))
(declare-fun map!475 (MutableMap!381) ListMap!85)

(assert (=> b!118173 (= res!55857 (invariantList!31 (toList!267 (map!475 (cache!833 cache!470)))))))

(declare-fun b!118174 () Bool)

(declare-fun lambda!3035 () Int)

(declare-fun forall!344 (List!1953 Int) Bool)

(assert (=> b!118174 (= e!67377 (forall!344 (toList!267 (map!475 (cache!833 cache!470))) lambda!3035))))

(assert (= (and d!28553 res!55856) b!118173))

(assert (= (and b!118173 res!55857) b!118174))

(declare-fun m!105805 () Bool)

(assert (=> d!28553 m!105805))

(declare-fun m!105807 () Bool)

(assert (=> b!118173 m!105807))

(declare-fun m!105809 () Bool)

(assert (=> b!118173 m!105809))

(assert (=> b!118174 m!105807))

(declare-fun m!105811 () Bool)

(assert (=> b!118174 m!105811))

(assert (=> b!118107 d!28553))

(declare-fun d!28555 () Bool)

(declare-fun lt!35085 () Int)

(assert (=> d!28555 (>= lt!35085 0)))

(declare-fun e!67378 () Int)

(assert (=> d!28555 (= lt!35085 e!67378)))

(declare-fun c!26766 () Bool)

(assert (=> d!28555 (= c!26766 ((_ is Nil!1946) (t!22429 totalInput!1363)))))

(assert (=> d!28555 (= (size!1777 (t!22429 totalInput!1363)) lt!35085)))

(declare-fun b!118175 () Bool)

(assert (=> b!118175 (= e!67378 0)))

(declare-fun b!118176 () Bool)

(assert (=> b!118176 (= e!67378 (+ 1 (size!1777 (t!22429 (t!22429 totalInput!1363)))))))

(assert (= (and d!28555 c!26766) b!118175))

(assert (= (and d!28555 (not c!26766)) b!118176))

(declare-fun m!105813 () Bool)

(assert (=> b!118176 m!105813))

(assert (=> b!118075 d!28555))

(declare-fun b!118177 () Bool)

(declare-fun e!67380 () Bool)

(declare-fun e!67385 () Bool)

(assert (=> b!118177 (= e!67380 e!67385)))

(declare-fun res!55862 () Bool)

(assert (=> b!118177 (= res!55862 (not (nullable!75 (reg!848 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))))))))

(assert (=> b!118177 (=> (not res!55862) (not e!67385))))

(declare-fun d!28557 () Bool)

(declare-fun res!55858 () Bool)

(declare-fun e!67383 () Bool)

(assert (=> d!28557 (=> res!55858 e!67383)))

(assert (=> d!28557 (= res!55858 ((_ is ElementMatch!519) (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))))))

(assert (=> d!28557 (= (validRegex!124 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))) e!67383)))

(declare-fun b!118178 () Bool)

(declare-fun e!67381 () Bool)

(declare-fun call!4957 () Bool)

(assert (=> b!118178 (= e!67381 call!4957)))

(declare-fun b!118179 () Bool)

(declare-fun res!55861 () Bool)

(assert (=> b!118179 (=> (not res!55861) (not e!67381))))

(declare-fun call!4958 () Bool)

(assert (=> b!118179 (= res!55861 call!4958)))

(declare-fun e!67382 () Bool)

(assert (=> b!118179 (= e!67382 e!67381)))

(declare-fun b!118180 () Bool)

(declare-fun e!67379 () Bool)

(declare-fun e!67384 () Bool)

(assert (=> b!118180 (= e!67379 e!67384)))

(declare-fun res!55860 () Bool)

(assert (=> b!118180 (=> (not res!55860) (not e!67384))))

(assert (=> b!118180 (= res!55860 call!4957)))

(declare-fun bm!4952 () Bool)

(declare-fun call!4959 () Bool)

(declare-fun c!26767 () Bool)

(declare-fun c!26768 () Bool)

(assert (=> bm!4952 (= call!4959 (validRegex!124 (ite c!26768 (reg!848 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))) (ite c!26767 (regOne!1551 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))) (regTwo!1550 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532))))))))))

(declare-fun bm!4953 () Bool)

(assert (=> bm!4953 (= call!4957 (validRegex!124 (ite c!26767 (regTwo!1551 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))) (regOne!1550 (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))))))))

(declare-fun b!118181 () Bool)

(declare-fun res!55859 () Bool)

(assert (=> b!118181 (=> res!55859 e!67379)))

(assert (=> b!118181 (= res!55859 (not ((_ is Concat!903) (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532))))))))

(assert (=> b!118181 (= e!67382 e!67379)))

(declare-fun b!118182 () Bool)

(assert (=> b!118182 (= e!67380 e!67382)))

(assert (=> b!118182 (= c!26767 ((_ is Union!519) (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))))))

(declare-fun b!118183 () Bool)

(assert (=> b!118183 (= e!67384 call!4958)))

(declare-fun b!118184 () Bool)

(assert (=> b!118184 (= e!67383 e!67380)))

(assert (=> b!118184 (= c!26768 ((_ is Star!519) (ite c!26762 (reg!848 r!15532) (ite c!26761 (regOne!1551 r!15532) (regTwo!1550 r!15532)))))))

(declare-fun b!118185 () Bool)

(assert (=> b!118185 (= e!67385 call!4959)))

(declare-fun bm!4954 () Bool)

(assert (=> bm!4954 (= call!4958 call!4959)))

(assert (= (and d!28557 (not res!55858)) b!118184))

(assert (= (and b!118184 c!26768) b!118177))

(assert (= (and b!118184 (not c!26768)) b!118182))

(assert (= (and b!118177 res!55862) b!118185))

(assert (= (and b!118182 c!26767) b!118179))

(assert (= (and b!118182 (not c!26767)) b!118181))

(assert (= (and b!118179 res!55861) b!118178))

(assert (= (and b!118181 (not res!55859)) b!118180))

(assert (= (and b!118180 res!55860) b!118183))

(assert (= (or b!118178 b!118180) bm!4953))

(assert (= (or b!118179 b!118183) bm!4954))

(assert (= (or b!118185 bm!4954) bm!4952))

(declare-fun m!105815 () Bool)

(assert (=> b!118177 m!105815))

(declare-fun m!105817 () Bool)

(assert (=> bm!4952 m!105817))

(declare-fun m!105819 () Bool)

(assert (=> bm!4953 m!105819))

(assert (=> bm!4949 d!28557))

(declare-fun b!118186 () Bool)

(declare-fun e!67387 () Bool)

(declare-fun e!67392 () Bool)

(assert (=> b!118186 (= e!67387 e!67392)))

(declare-fun res!55867 () Bool)

(assert (=> b!118186 (= res!55867 (not (nullable!75 (reg!848 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))))))))

(assert (=> b!118186 (=> (not res!55867) (not e!67392))))

(declare-fun d!28559 () Bool)

(declare-fun res!55863 () Bool)

(declare-fun e!67390 () Bool)

(assert (=> d!28559 (=> res!55863 e!67390)))

(assert (=> d!28559 (= res!55863 ((_ is ElementMatch!519) (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))))))

(assert (=> d!28559 (= (validRegex!124 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))) e!67390)))

(declare-fun b!118187 () Bool)

(declare-fun e!67388 () Bool)

(declare-fun call!4960 () Bool)

(assert (=> b!118187 (= e!67388 call!4960)))

(declare-fun b!118188 () Bool)

(declare-fun res!55866 () Bool)

(assert (=> b!118188 (=> (not res!55866) (not e!67388))))

(declare-fun call!4961 () Bool)

(assert (=> b!118188 (= res!55866 call!4961)))

(declare-fun e!67389 () Bool)

(assert (=> b!118188 (= e!67389 e!67388)))

(declare-fun b!118189 () Bool)

(declare-fun e!67386 () Bool)

(declare-fun e!67391 () Bool)

(assert (=> b!118189 (= e!67386 e!67391)))

(declare-fun res!55865 () Bool)

(assert (=> b!118189 (=> (not res!55865) (not e!67391))))

(assert (=> b!118189 (= res!55865 call!4960)))

(declare-fun bm!4955 () Bool)

(declare-fun call!4962 () Bool)

(declare-fun c!26769 () Bool)

(declare-fun c!26770 () Bool)

(assert (=> bm!4955 (= call!4962 (validRegex!124 (ite c!26770 (reg!848 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))) (ite c!26769 (regOne!1551 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))) (regTwo!1550 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532)))))))))

(declare-fun bm!4956 () Bool)

(assert (=> bm!4956 (= call!4960 (validRegex!124 (ite c!26769 (regTwo!1551 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))) (regOne!1550 (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))))))))

(declare-fun b!118190 () Bool)

(declare-fun res!55864 () Bool)

(assert (=> b!118190 (=> res!55864 e!67386)))

(assert (=> b!118190 (= res!55864 (not ((_ is Concat!903) (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532)))))))

(assert (=> b!118190 (= e!67389 e!67386)))

(declare-fun b!118191 () Bool)

(assert (=> b!118191 (= e!67387 e!67389)))

(assert (=> b!118191 (= c!26769 ((_ is Union!519) (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))))))

(declare-fun b!118192 () Bool)

(assert (=> b!118192 (= e!67391 call!4961)))

(declare-fun b!118193 () Bool)

(assert (=> b!118193 (= e!67390 e!67387)))

(assert (=> b!118193 (= c!26770 ((_ is Star!519) (ite c!26761 (regTwo!1551 r!15532) (regOne!1550 r!15532))))))

(declare-fun b!118194 () Bool)

(assert (=> b!118194 (= e!67392 call!4962)))

(declare-fun bm!4957 () Bool)

(assert (=> bm!4957 (= call!4961 call!4962)))

(assert (= (and d!28559 (not res!55863)) b!118193))

(assert (= (and b!118193 c!26770) b!118186))

(assert (= (and b!118193 (not c!26770)) b!118191))

(assert (= (and b!118186 res!55867) b!118194))

(assert (= (and b!118191 c!26769) b!118188))

(assert (= (and b!118191 (not c!26769)) b!118190))

(assert (= (and b!118188 res!55866) b!118187))

(assert (= (and b!118190 (not res!55864)) b!118189))

(assert (= (and b!118189 res!55865) b!118192))

(assert (= (or b!118187 b!118189) bm!4956))

(assert (= (or b!118188 b!118192) bm!4957))

(assert (= (or b!118194 bm!4957) bm!4955))

(declare-fun m!105821 () Bool)

(assert (=> b!118186 m!105821))

(declare-fun m!105823 () Bool)

(assert (=> bm!4955 m!105823))

(declare-fun m!105825 () Bool)

(assert (=> bm!4956 m!105825))

(assert (=> bm!4950 d!28559))

(assert (=> d!28535 d!28553))

(declare-fun b!118196 () Bool)

(declare-fun e!67394 () List!1952)

(assert (=> b!118196 (= e!67394 (Cons!1946 (h!7343 (t!22429 testedP!367)) (++!356 (t!22429 (t!22429 testedP!367)) testedSuffix!285)))))

(declare-fun b!118197 () Bool)

(declare-fun res!55869 () Bool)

(declare-fun e!67393 () Bool)

(assert (=> b!118197 (=> (not res!55869) (not e!67393))))

(declare-fun lt!35086 () List!1952)

(assert (=> b!118197 (= res!55869 (= (size!1777 lt!35086) (+ (size!1777 (t!22429 testedP!367)) (size!1777 testedSuffix!285))))))

(declare-fun b!118195 () Bool)

(assert (=> b!118195 (= e!67394 testedSuffix!285)))

(declare-fun b!118198 () Bool)

(assert (=> b!118198 (= e!67393 (or (not (= testedSuffix!285 Nil!1946)) (= lt!35086 (t!22429 testedP!367))))))

(declare-fun d!28561 () Bool)

(assert (=> d!28561 e!67393))

(declare-fun res!55868 () Bool)

(assert (=> d!28561 (=> (not res!55868) (not e!67393))))

(assert (=> d!28561 (= res!55868 (= (content!218 lt!35086) ((_ map or) (content!218 (t!22429 testedP!367)) (content!218 testedSuffix!285))))))

(assert (=> d!28561 (= lt!35086 e!67394)))

(declare-fun c!26771 () Bool)

(assert (=> d!28561 (= c!26771 ((_ is Nil!1946) (t!22429 testedP!367)))))

(assert (=> d!28561 (= (++!356 (t!22429 testedP!367) testedSuffix!285) lt!35086)))

(assert (= (and d!28561 c!26771) b!118195))

(assert (= (and d!28561 (not c!26771)) b!118196))

(assert (= (and d!28561 res!55868) b!118197))

(assert (= (and b!118197 res!55869) b!118198))

(declare-fun m!105827 () Bool)

(assert (=> b!118196 m!105827))

(declare-fun m!105829 () Bool)

(assert (=> b!118197 m!105829))

(assert (=> b!118197 m!105786))

(assert (=> b!118197 m!105774))

(declare-fun m!105831 () Bool)

(assert (=> d!28561 m!105831))

(declare-fun m!105833 () Bool)

(assert (=> d!28561 m!105833))

(assert (=> d!28561 m!105780))

(assert (=> b!118067 d!28561))

(declare-fun d!28563 () Bool)

(declare-fun c!26774 () Bool)

(assert (=> d!28563 (= c!26774 ((_ is Nil!1946) lt!35077))))

(declare-fun e!67397 () (InoxSet C!1960))

(assert (=> d!28563 (= (content!218 lt!35077) e!67397)))

(declare-fun b!118203 () Bool)

(assert (=> b!118203 (= e!67397 ((as const (Array C!1960 Bool)) false))))

(declare-fun b!118204 () Bool)

(assert (=> b!118204 (= e!67397 ((_ map or) (store ((as const (Array C!1960 Bool)) false) (h!7343 lt!35077) true) (content!218 (t!22429 lt!35077))))))

(assert (= (and d!28563 c!26774) b!118203))

(assert (= (and d!28563 (not c!26774)) b!118204))

(declare-fun m!105835 () Bool)

(assert (=> b!118204 m!105835))

(declare-fun m!105837 () Bool)

(assert (=> b!118204 m!105837))

(assert (=> d!28533 d!28563))

(declare-fun d!28565 () Bool)

(declare-fun c!26775 () Bool)

(assert (=> d!28565 (= c!26775 ((_ is Nil!1946) testedP!367))))

(declare-fun e!67398 () (InoxSet C!1960))

(assert (=> d!28565 (= (content!218 testedP!367) e!67398)))

(declare-fun b!118205 () Bool)

(assert (=> b!118205 (= e!67398 ((as const (Array C!1960 Bool)) false))))

(declare-fun b!118206 () Bool)

(assert (=> b!118206 (= e!67398 ((_ map or) (store ((as const (Array C!1960 Bool)) false) (h!7343 testedP!367) true) (content!218 (t!22429 testedP!367))))))

(assert (= (and d!28565 c!26775) b!118205))

(assert (= (and d!28565 (not c!26775)) b!118206))

(declare-fun m!105839 () Bool)

(assert (=> b!118206 m!105839))

(assert (=> b!118206 m!105833))

(assert (=> d!28533 d!28565))

(declare-fun d!28567 () Bool)

(declare-fun c!26776 () Bool)

(assert (=> d!28567 (= c!26776 ((_ is Nil!1946) testedSuffix!285))))

(declare-fun e!67399 () (InoxSet C!1960))

(assert (=> d!28567 (= (content!218 testedSuffix!285) e!67399)))

(declare-fun b!118207 () Bool)

(assert (=> b!118207 (= e!67399 ((as const (Array C!1960 Bool)) false))))

(declare-fun b!118208 () Bool)

(assert (=> b!118208 (= e!67399 ((_ map or) (store ((as const (Array C!1960 Bool)) false) (h!7343 testedSuffix!285) true) (content!218 (t!22429 testedSuffix!285))))))

(assert (= (and d!28567 c!26776) b!118207))

(assert (= (and d!28567 (not c!26776)) b!118208))

(declare-fun m!105841 () Bool)

(assert (=> b!118208 m!105841))

(declare-fun m!105843 () Bool)

(assert (=> b!118208 m!105843))

(assert (=> d!28533 d!28567))

(declare-fun e!67400 () Bool)

(assert (=> b!118139 (= tp!64623 e!67400)))

(declare-fun b!118209 () Bool)

(assert (=> b!118209 (= e!67400 tp_is_empty!1093)))

(declare-fun b!118210 () Bool)

(declare-fun tp!64666 () Bool)

(declare-fun tp!64664 () Bool)

(assert (=> b!118210 (= e!67400 (and tp!64666 tp!64664))))

(declare-fun b!118212 () Bool)

(declare-fun tp!64663 () Bool)

(declare-fun tp!64665 () Bool)

(assert (=> b!118212 (= e!67400 (and tp!64663 tp!64665))))

(declare-fun b!118211 () Bool)

(declare-fun tp!64667 () Bool)

(assert (=> b!118211 (= e!67400 tp!64667)))

(assert (= (and b!118139 ((_ is ElementMatch!519) (regOne!1550 (regOne!1551 r!15532)))) b!118209))

(assert (= (and b!118139 ((_ is Concat!903) (regOne!1550 (regOne!1551 r!15532)))) b!118210))

(assert (= (and b!118139 ((_ is Star!519) (regOne!1550 (regOne!1551 r!15532)))) b!118211))

(assert (= (and b!118139 ((_ is Union!519) (regOne!1550 (regOne!1551 r!15532)))) b!118212))

(declare-fun e!67401 () Bool)

(assert (=> b!118139 (= tp!64621 e!67401)))

(declare-fun b!118213 () Bool)

(assert (=> b!118213 (= e!67401 tp_is_empty!1093)))

(declare-fun b!118214 () Bool)

(declare-fun tp!64671 () Bool)

(declare-fun tp!64669 () Bool)

(assert (=> b!118214 (= e!67401 (and tp!64671 tp!64669))))

(declare-fun b!118216 () Bool)

(declare-fun tp!64668 () Bool)

(declare-fun tp!64670 () Bool)

(assert (=> b!118216 (= e!67401 (and tp!64668 tp!64670))))

(declare-fun b!118215 () Bool)

(declare-fun tp!64672 () Bool)

(assert (=> b!118215 (= e!67401 tp!64672)))

(assert (= (and b!118139 ((_ is ElementMatch!519) (regTwo!1550 (regOne!1551 r!15532)))) b!118213))

(assert (= (and b!118139 ((_ is Concat!903) (regTwo!1550 (regOne!1551 r!15532)))) b!118214))

(assert (= (and b!118139 ((_ is Star!519) (regTwo!1550 (regOne!1551 r!15532)))) b!118215))

(assert (= (and b!118139 ((_ is Union!519) (regTwo!1550 (regOne!1551 r!15532)))) b!118216))

(declare-fun e!67402 () Bool)

(assert (=> b!118148 (= tp!64634 e!67402)))

(declare-fun b!118217 () Bool)

(assert (=> b!118217 (= e!67402 tp_is_empty!1093)))

(declare-fun b!118218 () Bool)

(declare-fun tp!64676 () Bool)

(declare-fun tp!64674 () Bool)

(assert (=> b!118218 (= e!67402 (and tp!64676 tp!64674))))

(declare-fun b!118220 () Bool)

(declare-fun tp!64673 () Bool)

(declare-fun tp!64675 () Bool)

(assert (=> b!118220 (= e!67402 (and tp!64673 tp!64675))))

(declare-fun b!118219 () Bool)

(declare-fun tp!64677 () Bool)

(assert (=> b!118219 (= e!67402 tp!64677)))

(assert (= (and b!118148 ((_ is ElementMatch!519) (reg!848 (reg!848 r!15532)))) b!118217))

(assert (= (and b!118148 ((_ is Concat!903) (reg!848 (reg!848 r!15532)))) b!118218))

(assert (= (and b!118148 ((_ is Star!519) (reg!848 (reg!848 r!15532)))) b!118219))

(assert (= (and b!118148 ((_ is Union!519) (reg!848 (reg!848 r!15532)))) b!118220))

(declare-fun e!67403 () Bool)

(assert (=> b!118149 (= tp!64630 e!67403)))

(declare-fun b!118221 () Bool)

(assert (=> b!118221 (= e!67403 tp_is_empty!1093)))

(declare-fun b!118222 () Bool)

(declare-fun tp!64681 () Bool)

(declare-fun tp!64679 () Bool)

(assert (=> b!118222 (= e!67403 (and tp!64681 tp!64679))))

(declare-fun b!118224 () Bool)

(declare-fun tp!64678 () Bool)

(declare-fun tp!64680 () Bool)

(assert (=> b!118224 (= e!67403 (and tp!64678 tp!64680))))

(declare-fun b!118223 () Bool)

(declare-fun tp!64682 () Bool)

(assert (=> b!118223 (= e!67403 tp!64682)))

(assert (= (and b!118149 ((_ is ElementMatch!519) (regOne!1551 (reg!848 r!15532)))) b!118221))

(assert (= (and b!118149 ((_ is Concat!903) (regOne!1551 (reg!848 r!15532)))) b!118222))

(assert (= (and b!118149 ((_ is Star!519) (regOne!1551 (reg!848 r!15532)))) b!118223))

(assert (= (and b!118149 ((_ is Union!519) (regOne!1551 (reg!848 r!15532)))) b!118224))

(declare-fun e!67404 () Bool)

(assert (=> b!118149 (= tp!64632 e!67404)))

(declare-fun b!118225 () Bool)

(assert (=> b!118225 (= e!67404 tp_is_empty!1093)))

(declare-fun b!118226 () Bool)

(declare-fun tp!64686 () Bool)

(declare-fun tp!64684 () Bool)

(assert (=> b!118226 (= e!67404 (and tp!64686 tp!64684))))

(declare-fun b!118228 () Bool)

(declare-fun tp!64683 () Bool)

(declare-fun tp!64685 () Bool)

(assert (=> b!118228 (= e!67404 (and tp!64683 tp!64685))))

(declare-fun b!118227 () Bool)

(declare-fun tp!64687 () Bool)

(assert (=> b!118227 (= e!67404 tp!64687)))

(assert (= (and b!118149 ((_ is ElementMatch!519) (regTwo!1551 (reg!848 r!15532)))) b!118225))

(assert (= (and b!118149 ((_ is Concat!903) (regTwo!1551 (reg!848 r!15532)))) b!118226))

(assert (= (and b!118149 ((_ is Star!519) (regTwo!1551 (reg!848 r!15532)))) b!118227))

(assert (= (and b!118149 ((_ is Union!519) (regTwo!1551 (reg!848 r!15532)))) b!118228))

(declare-fun e!67405 () Bool)

(assert (=> b!118131 (= tp!64613 e!67405)))

(declare-fun b!118229 () Bool)

(assert (=> b!118229 (= e!67405 tp_is_empty!1093)))

(declare-fun b!118230 () Bool)

(declare-fun tp!64691 () Bool)

(declare-fun tp!64689 () Bool)

(assert (=> b!118230 (= e!67405 (and tp!64691 tp!64689))))

(declare-fun b!118232 () Bool)

(declare-fun tp!64688 () Bool)

(declare-fun tp!64690 () Bool)

(assert (=> b!118232 (= e!67405 (and tp!64688 tp!64690))))

(declare-fun b!118231 () Bool)

(declare-fun tp!64692 () Bool)

(assert (=> b!118231 (= e!67405 tp!64692)))

(assert (= (and b!118131 ((_ is ElementMatch!519) (regOne!1550 (regOne!1550 r!15532)))) b!118229))

(assert (= (and b!118131 ((_ is Concat!903) (regOne!1550 (regOne!1550 r!15532)))) b!118230))

(assert (= (and b!118131 ((_ is Star!519) (regOne!1550 (regOne!1550 r!15532)))) b!118231))

(assert (= (and b!118131 ((_ is Union!519) (regOne!1550 (regOne!1550 r!15532)))) b!118232))

(declare-fun e!67406 () Bool)

(assert (=> b!118131 (= tp!64611 e!67406)))

(declare-fun b!118233 () Bool)

(assert (=> b!118233 (= e!67406 tp_is_empty!1093)))

(declare-fun b!118234 () Bool)

(declare-fun tp!64696 () Bool)

(declare-fun tp!64694 () Bool)

(assert (=> b!118234 (= e!67406 (and tp!64696 tp!64694))))

(declare-fun b!118236 () Bool)

(declare-fun tp!64693 () Bool)

(declare-fun tp!64695 () Bool)

(assert (=> b!118236 (= e!67406 (and tp!64693 tp!64695))))

(declare-fun b!118235 () Bool)

(declare-fun tp!64697 () Bool)

(assert (=> b!118235 (= e!67406 tp!64697)))

(assert (= (and b!118131 ((_ is ElementMatch!519) (regTwo!1550 (regOne!1550 r!15532)))) b!118233))

(assert (= (and b!118131 ((_ is Concat!903) (regTwo!1550 (regOne!1550 r!15532)))) b!118234))

(assert (= (and b!118131 ((_ is Star!519) (regTwo!1550 (regOne!1550 r!15532)))) b!118235))

(assert (= (and b!118131 ((_ is Union!519) (regTwo!1550 (regOne!1550 r!15532)))) b!118236))

(declare-fun e!67407 () Bool)

(assert (=> b!118140 (= tp!64624 e!67407)))

(declare-fun b!118237 () Bool)

(assert (=> b!118237 (= e!67407 tp_is_empty!1093)))

(declare-fun b!118238 () Bool)

(declare-fun tp!64701 () Bool)

(declare-fun tp!64699 () Bool)

(assert (=> b!118238 (= e!67407 (and tp!64701 tp!64699))))

(declare-fun b!118240 () Bool)

(declare-fun tp!64698 () Bool)

(declare-fun tp!64700 () Bool)

(assert (=> b!118240 (= e!67407 (and tp!64698 tp!64700))))

(declare-fun b!118239 () Bool)

(declare-fun tp!64702 () Bool)

(assert (=> b!118239 (= e!67407 tp!64702)))

(assert (= (and b!118140 ((_ is ElementMatch!519) (reg!848 (regOne!1551 r!15532)))) b!118237))

(assert (= (and b!118140 ((_ is Concat!903) (reg!848 (regOne!1551 r!15532)))) b!118238))

(assert (= (and b!118140 ((_ is Star!519) (reg!848 (regOne!1551 r!15532)))) b!118239))

(assert (= (and b!118140 ((_ is Union!519) (reg!848 (regOne!1551 r!15532)))) b!118240))

(declare-fun e!67408 () Bool)

(assert (=> b!118141 (= tp!64620 e!67408)))

(declare-fun b!118241 () Bool)

(assert (=> b!118241 (= e!67408 tp_is_empty!1093)))

(declare-fun b!118242 () Bool)

(declare-fun tp!64706 () Bool)

(declare-fun tp!64704 () Bool)

(assert (=> b!118242 (= e!67408 (and tp!64706 tp!64704))))

(declare-fun b!118244 () Bool)

(declare-fun tp!64703 () Bool)

(declare-fun tp!64705 () Bool)

(assert (=> b!118244 (= e!67408 (and tp!64703 tp!64705))))

(declare-fun b!118243 () Bool)

(declare-fun tp!64707 () Bool)

(assert (=> b!118243 (= e!67408 tp!64707)))

(assert (= (and b!118141 ((_ is ElementMatch!519) (regOne!1551 (regOne!1551 r!15532)))) b!118241))

(assert (= (and b!118141 ((_ is Concat!903) (regOne!1551 (regOne!1551 r!15532)))) b!118242))

(assert (= (and b!118141 ((_ is Star!519) (regOne!1551 (regOne!1551 r!15532)))) b!118243))

(assert (= (and b!118141 ((_ is Union!519) (regOne!1551 (regOne!1551 r!15532)))) b!118244))

(declare-fun e!67409 () Bool)

(assert (=> b!118141 (= tp!64622 e!67409)))

(declare-fun b!118245 () Bool)

(assert (=> b!118245 (= e!67409 tp_is_empty!1093)))

(declare-fun b!118246 () Bool)

(declare-fun tp!64711 () Bool)

(declare-fun tp!64709 () Bool)

(assert (=> b!118246 (= e!67409 (and tp!64711 tp!64709))))

(declare-fun b!118248 () Bool)

(declare-fun tp!64708 () Bool)

(declare-fun tp!64710 () Bool)

(assert (=> b!118248 (= e!67409 (and tp!64708 tp!64710))))

(declare-fun b!118247 () Bool)

(declare-fun tp!64712 () Bool)

(assert (=> b!118247 (= e!67409 tp!64712)))

(assert (= (and b!118141 ((_ is ElementMatch!519) (regTwo!1551 (regOne!1551 r!15532)))) b!118245))

(assert (= (and b!118141 ((_ is Concat!903) (regTwo!1551 (regOne!1551 r!15532)))) b!118246))

(assert (= (and b!118141 ((_ is Star!519) (regTwo!1551 (regOne!1551 r!15532)))) b!118247))

(assert (= (and b!118141 ((_ is Union!519) (regTwo!1551 (regOne!1551 r!15532)))) b!118248))

(declare-fun e!67410 () Bool)

(assert (=> b!118132 (= tp!64614 e!67410)))

(declare-fun b!118249 () Bool)

(assert (=> b!118249 (= e!67410 tp_is_empty!1093)))

(declare-fun b!118250 () Bool)

(declare-fun tp!64716 () Bool)

(declare-fun tp!64714 () Bool)

(assert (=> b!118250 (= e!67410 (and tp!64716 tp!64714))))

(declare-fun b!118252 () Bool)

(declare-fun tp!64713 () Bool)

(declare-fun tp!64715 () Bool)

(assert (=> b!118252 (= e!67410 (and tp!64713 tp!64715))))

(declare-fun b!118251 () Bool)

(declare-fun tp!64717 () Bool)

(assert (=> b!118251 (= e!67410 tp!64717)))

(assert (= (and b!118132 ((_ is ElementMatch!519) (reg!848 (regOne!1550 r!15532)))) b!118249))

(assert (= (and b!118132 ((_ is Concat!903) (reg!848 (regOne!1550 r!15532)))) b!118250))

(assert (= (and b!118132 ((_ is Star!519) (reg!848 (regOne!1550 r!15532)))) b!118251))

(assert (= (and b!118132 ((_ is Union!519) (reg!848 (regOne!1550 r!15532)))) b!118252))

(declare-fun e!67411 () Bool)

(assert (=> b!118133 (= tp!64610 e!67411)))

(declare-fun b!118253 () Bool)

(assert (=> b!118253 (= e!67411 tp_is_empty!1093)))

(declare-fun b!118254 () Bool)

(declare-fun tp!64721 () Bool)

(declare-fun tp!64719 () Bool)

(assert (=> b!118254 (= e!67411 (and tp!64721 tp!64719))))

(declare-fun b!118256 () Bool)

(declare-fun tp!64718 () Bool)

(declare-fun tp!64720 () Bool)

(assert (=> b!118256 (= e!67411 (and tp!64718 tp!64720))))

(declare-fun b!118255 () Bool)

(declare-fun tp!64722 () Bool)

(assert (=> b!118255 (= e!67411 tp!64722)))

(assert (= (and b!118133 ((_ is ElementMatch!519) (regOne!1551 (regOne!1550 r!15532)))) b!118253))

(assert (= (and b!118133 ((_ is Concat!903) (regOne!1551 (regOne!1550 r!15532)))) b!118254))

(assert (= (and b!118133 ((_ is Star!519) (regOne!1551 (regOne!1550 r!15532)))) b!118255))

(assert (= (and b!118133 ((_ is Union!519) (regOne!1551 (regOne!1550 r!15532)))) b!118256))

(declare-fun e!67412 () Bool)

(assert (=> b!118133 (= tp!64612 e!67412)))

(declare-fun b!118257 () Bool)

(assert (=> b!118257 (= e!67412 tp_is_empty!1093)))

(declare-fun b!118258 () Bool)

(declare-fun tp!64726 () Bool)

(declare-fun tp!64724 () Bool)

(assert (=> b!118258 (= e!67412 (and tp!64726 tp!64724))))

(declare-fun b!118260 () Bool)

(declare-fun tp!64723 () Bool)

(declare-fun tp!64725 () Bool)

(assert (=> b!118260 (= e!67412 (and tp!64723 tp!64725))))

(declare-fun b!118259 () Bool)

(declare-fun tp!64727 () Bool)

(assert (=> b!118259 (= e!67412 tp!64727)))

(assert (= (and b!118133 ((_ is ElementMatch!519) (regTwo!1551 (regOne!1550 r!15532)))) b!118257))

(assert (= (and b!118133 ((_ is Concat!903) (regTwo!1551 (regOne!1550 r!15532)))) b!118258))

(assert (= (and b!118133 ((_ is Star!519) (regTwo!1551 (regOne!1550 r!15532)))) b!118259))

(assert (= (and b!118133 ((_ is Union!519) (regTwo!1551 (regOne!1550 r!15532)))) b!118260))

(declare-fun b!118261 () Bool)

(declare-fun e!67413 () Bool)

(declare-fun tp!64728 () Bool)

(assert (=> b!118261 (= e!67413 (and tp_is_empty!1093 tp!64728))))

(assert (=> b!118150 (= tp!64635 e!67413)))

(assert (= (and b!118150 ((_ is Cons!1946) (t!22429 (t!22429 testedSuffix!285)))) b!118261))

(declare-fun e!67414 () Bool)

(assert (=> b!118147 (= tp!64633 e!67414)))

(declare-fun b!118262 () Bool)

(assert (=> b!118262 (= e!67414 tp_is_empty!1093)))

(declare-fun b!118263 () Bool)

(declare-fun tp!64732 () Bool)

(declare-fun tp!64730 () Bool)

(assert (=> b!118263 (= e!67414 (and tp!64732 tp!64730))))

(declare-fun b!118265 () Bool)

(declare-fun tp!64729 () Bool)

(declare-fun tp!64731 () Bool)

(assert (=> b!118265 (= e!67414 (and tp!64729 tp!64731))))

(declare-fun b!118264 () Bool)

(declare-fun tp!64733 () Bool)

(assert (=> b!118264 (= e!67414 tp!64733)))

(assert (= (and b!118147 ((_ is ElementMatch!519) (regOne!1550 (reg!848 r!15532)))) b!118262))

(assert (= (and b!118147 ((_ is Concat!903) (regOne!1550 (reg!848 r!15532)))) b!118263))

(assert (= (and b!118147 ((_ is Star!519) (regOne!1550 (reg!848 r!15532)))) b!118264))

(assert (= (and b!118147 ((_ is Union!519) (regOne!1550 (reg!848 r!15532)))) b!118265))

(declare-fun e!67415 () Bool)

(assert (=> b!118147 (= tp!64631 e!67415)))

(declare-fun b!118266 () Bool)

(assert (=> b!118266 (= e!67415 tp_is_empty!1093)))

(declare-fun b!118267 () Bool)

(declare-fun tp!64737 () Bool)

(declare-fun tp!64735 () Bool)

(assert (=> b!118267 (= e!67415 (and tp!64737 tp!64735))))

(declare-fun b!118269 () Bool)

(declare-fun tp!64734 () Bool)

(declare-fun tp!64736 () Bool)

(assert (=> b!118269 (= e!67415 (and tp!64734 tp!64736))))

(declare-fun b!118268 () Bool)

(declare-fun tp!64738 () Bool)

(assert (=> b!118268 (= e!67415 tp!64738)))

(assert (= (and b!118147 ((_ is ElementMatch!519) (regTwo!1550 (reg!848 r!15532)))) b!118266))

(assert (= (and b!118147 ((_ is Concat!903) (regTwo!1550 (reg!848 r!15532)))) b!118267))

(assert (= (and b!118147 ((_ is Star!519) (regTwo!1550 (reg!848 r!15532)))) b!118268))

(assert (= (and b!118147 ((_ is Union!519) (regTwo!1550 (reg!848 r!15532)))) b!118269))

(declare-fun b!118270 () Bool)

(declare-fun e!67416 () Bool)

(declare-fun tp!64739 () Bool)

(assert (=> b!118270 (= e!67416 (and tp_is_empty!1093 tp!64739))))

(assert (=> b!118119 (= tp!64599 e!67416)))

(assert (= (and b!118119 ((_ is Cons!1946) (t!22429 (t!22429 testedP!367)))) b!118270))

(declare-fun e!67417 () Bool)

(assert (=> b!118143 (= tp!64628 e!67417)))

(declare-fun b!118271 () Bool)

(assert (=> b!118271 (= e!67417 tp_is_empty!1093)))

(declare-fun b!118272 () Bool)

(declare-fun tp!64743 () Bool)

(declare-fun tp!64741 () Bool)

(assert (=> b!118272 (= e!67417 (and tp!64743 tp!64741))))

(declare-fun b!118274 () Bool)

(declare-fun tp!64740 () Bool)

(declare-fun tp!64742 () Bool)

(assert (=> b!118274 (= e!67417 (and tp!64740 tp!64742))))

(declare-fun b!118273 () Bool)

(declare-fun tp!64744 () Bool)

(assert (=> b!118273 (= e!67417 tp!64744)))

(assert (= (and b!118143 ((_ is ElementMatch!519) (regOne!1550 (regTwo!1551 r!15532)))) b!118271))

(assert (= (and b!118143 ((_ is Concat!903) (regOne!1550 (regTwo!1551 r!15532)))) b!118272))

(assert (= (and b!118143 ((_ is Star!519) (regOne!1550 (regTwo!1551 r!15532)))) b!118273))

(assert (= (and b!118143 ((_ is Union!519) (regOne!1550 (regTwo!1551 r!15532)))) b!118274))

(declare-fun e!67418 () Bool)

(assert (=> b!118143 (= tp!64626 e!67418)))

(declare-fun b!118275 () Bool)

(assert (=> b!118275 (= e!67418 tp_is_empty!1093)))

(declare-fun b!118276 () Bool)

(declare-fun tp!64748 () Bool)

(declare-fun tp!64746 () Bool)

(assert (=> b!118276 (= e!67418 (and tp!64748 tp!64746))))

(declare-fun b!118278 () Bool)

(declare-fun tp!64745 () Bool)

(declare-fun tp!64747 () Bool)

(assert (=> b!118278 (= e!67418 (and tp!64745 tp!64747))))

(declare-fun b!118277 () Bool)

(declare-fun tp!64749 () Bool)

(assert (=> b!118277 (= e!67418 tp!64749)))

(assert (= (and b!118143 ((_ is ElementMatch!519) (regTwo!1550 (regTwo!1551 r!15532)))) b!118275))

(assert (= (and b!118143 ((_ is Concat!903) (regTwo!1550 (regTwo!1551 r!15532)))) b!118276))

(assert (= (and b!118143 ((_ is Star!519) (regTwo!1550 (regTwo!1551 r!15532)))) b!118277))

(assert (= (and b!118143 ((_ is Union!519) (regTwo!1550 (regTwo!1551 r!15532)))) b!118278))

(declare-fun e!67419 () Bool)

(assert (=> b!118135 (= tp!64618 e!67419)))

(declare-fun b!118279 () Bool)

(assert (=> b!118279 (= e!67419 tp_is_empty!1093)))

(declare-fun b!118280 () Bool)

(declare-fun tp!64753 () Bool)

(declare-fun tp!64751 () Bool)

(assert (=> b!118280 (= e!67419 (and tp!64753 tp!64751))))

(declare-fun b!118282 () Bool)

(declare-fun tp!64750 () Bool)

(declare-fun tp!64752 () Bool)

(assert (=> b!118282 (= e!67419 (and tp!64750 tp!64752))))

(declare-fun b!118281 () Bool)

(declare-fun tp!64754 () Bool)

(assert (=> b!118281 (= e!67419 tp!64754)))

(assert (= (and b!118135 ((_ is ElementMatch!519) (regOne!1550 (regTwo!1550 r!15532)))) b!118279))

(assert (= (and b!118135 ((_ is Concat!903) (regOne!1550 (regTwo!1550 r!15532)))) b!118280))

(assert (= (and b!118135 ((_ is Star!519) (regOne!1550 (regTwo!1550 r!15532)))) b!118281))

(assert (= (and b!118135 ((_ is Union!519) (regOne!1550 (regTwo!1550 r!15532)))) b!118282))

(declare-fun e!67420 () Bool)

(assert (=> b!118135 (= tp!64616 e!67420)))

(declare-fun b!118283 () Bool)

(assert (=> b!118283 (= e!67420 tp_is_empty!1093)))

(declare-fun b!118284 () Bool)

(declare-fun tp!64758 () Bool)

(declare-fun tp!64756 () Bool)

(assert (=> b!118284 (= e!67420 (and tp!64758 tp!64756))))

(declare-fun b!118286 () Bool)

(declare-fun tp!64755 () Bool)

(declare-fun tp!64757 () Bool)

(assert (=> b!118286 (= e!67420 (and tp!64755 tp!64757))))

(declare-fun b!118285 () Bool)

(declare-fun tp!64759 () Bool)

(assert (=> b!118285 (= e!67420 tp!64759)))

(assert (= (and b!118135 ((_ is ElementMatch!519) (regTwo!1550 (regTwo!1550 r!15532)))) b!118283))

(assert (= (and b!118135 ((_ is Concat!903) (regTwo!1550 (regTwo!1550 r!15532)))) b!118284))

(assert (= (and b!118135 ((_ is Star!519) (regTwo!1550 (regTwo!1550 r!15532)))) b!118285))

(assert (= (and b!118135 ((_ is Union!519) (regTwo!1550 (regTwo!1550 r!15532)))) b!118286))

(declare-fun e!67421 () Bool)

(assert (=> b!118144 (= tp!64629 e!67421)))

(declare-fun b!118287 () Bool)

(assert (=> b!118287 (= e!67421 tp_is_empty!1093)))

(declare-fun b!118288 () Bool)

(declare-fun tp!64763 () Bool)

(declare-fun tp!64761 () Bool)

(assert (=> b!118288 (= e!67421 (and tp!64763 tp!64761))))

(declare-fun b!118290 () Bool)

(declare-fun tp!64760 () Bool)

(declare-fun tp!64762 () Bool)

(assert (=> b!118290 (= e!67421 (and tp!64760 tp!64762))))

(declare-fun b!118289 () Bool)

(declare-fun tp!64764 () Bool)

(assert (=> b!118289 (= e!67421 tp!64764)))

(assert (= (and b!118144 ((_ is ElementMatch!519) (reg!848 (regTwo!1551 r!15532)))) b!118287))

(assert (= (and b!118144 ((_ is Concat!903) (reg!848 (regTwo!1551 r!15532)))) b!118288))

(assert (= (and b!118144 ((_ is Star!519) (reg!848 (regTwo!1551 r!15532)))) b!118289))

(assert (= (and b!118144 ((_ is Union!519) (reg!848 (regTwo!1551 r!15532)))) b!118290))

(declare-fun e!67422 () Bool)

(assert (=> b!118145 (= tp!64625 e!67422)))

(declare-fun b!118291 () Bool)

(assert (=> b!118291 (= e!67422 tp_is_empty!1093)))

(declare-fun b!118292 () Bool)

(declare-fun tp!64768 () Bool)

(declare-fun tp!64766 () Bool)

(assert (=> b!118292 (= e!67422 (and tp!64768 tp!64766))))

(declare-fun b!118294 () Bool)

(declare-fun tp!64765 () Bool)

(declare-fun tp!64767 () Bool)

(assert (=> b!118294 (= e!67422 (and tp!64765 tp!64767))))

(declare-fun b!118293 () Bool)

(declare-fun tp!64769 () Bool)

(assert (=> b!118293 (= e!67422 tp!64769)))

(assert (= (and b!118145 ((_ is ElementMatch!519) (regOne!1551 (regTwo!1551 r!15532)))) b!118291))

(assert (= (and b!118145 ((_ is Concat!903) (regOne!1551 (regTwo!1551 r!15532)))) b!118292))

(assert (= (and b!118145 ((_ is Star!519) (regOne!1551 (regTwo!1551 r!15532)))) b!118293))

(assert (= (and b!118145 ((_ is Union!519) (regOne!1551 (regTwo!1551 r!15532)))) b!118294))

(declare-fun e!67423 () Bool)

(assert (=> b!118145 (= tp!64627 e!67423)))

(declare-fun b!118295 () Bool)

(assert (=> b!118295 (= e!67423 tp_is_empty!1093)))

(declare-fun b!118296 () Bool)

(declare-fun tp!64773 () Bool)

(declare-fun tp!64771 () Bool)

(assert (=> b!118296 (= e!67423 (and tp!64773 tp!64771))))

(declare-fun b!118298 () Bool)

(declare-fun tp!64770 () Bool)

(declare-fun tp!64772 () Bool)

(assert (=> b!118298 (= e!67423 (and tp!64770 tp!64772))))

(declare-fun b!118297 () Bool)

(declare-fun tp!64774 () Bool)

(assert (=> b!118297 (= e!67423 tp!64774)))

(assert (= (and b!118145 ((_ is ElementMatch!519) (regTwo!1551 (regTwo!1551 r!15532)))) b!118295))

(assert (= (and b!118145 ((_ is Concat!903) (regTwo!1551 (regTwo!1551 r!15532)))) b!118296))

(assert (= (and b!118145 ((_ is Star!519) (regTwo!1551 (regTwo!1551 r!15532)))) b!118297))

(assert (= (and b!118145 ((_ is Union!519) (regTwo!1551 (regTwo!1551 r!15532)))) b!118298))

(declare-fun e!67424 () Bool)

(assert (=> b!118136 (= tp!64619 e!67424)))

(declare-fun b!118299 () Bool)

(assert (=> b!118299 (= e!67424 tp_is_empty!1093)))

(declare-fun b!118300 () Bool)

(declare-fun tp!64778 () Bool)

(declare-fun tp!64776 () Bool)

(assert (=> b!118300 (= e!67424 (and tp!64778 tp!64776))))

(declare-fun b!118302 () Bool)

(declare-fun tp!64775 () Bool)

(declare-fun tp!64777 () Bool)

(assert (=> b!118302 (= e!67424 (and tp!64775 tp!64777))))

(declare-fun b!118301 () Bool)

(declare-fun tp!64779 () Bool)

(assert (=> b!118301 (= e!67424 tp!64779)))

(assert (= (and b!118136 ((_ is ElementMatch!519) (reg!848 (regTwo!1550 r!15532)))) b!118299))

(assert (= (and b!118136 ((_ is Concat!903) (reg!848 (regTwo!1550 r!15532)))) b!118300))

(assert (= (and b!118136 ((_ is Star!519) (reg!848 (regTwo!1550 r!15532)))) b!118301))

(assert (= (and b!118136 ((_ is Union!519) (reg!848 (regTwo!1550 r!15532)))) b!118302))

(declare-fun e!67425 () Bool)

(assert (=> b!118113 (= tp!64593 e!67425)))

(declare-fun b!118303 () Bool)

(assert (=> b!118303 (= e!67425 tp_is_empty!1093)))

(declare-fun b!118304 () Bool)

(declare-fun tp!64783 () Bool)

(declare-fun tp!64781 () Bool)

(assert (=> b!118304 (= e!67425 (and tp!64783 tp!64781))))

(declare-fun b!118306 () Bool)

(declare-fun tp!64780 () Bool)

(declare-fun tp!64782 () Bool)

(assert (=> b!118306 (= e!67425 (and tp!64780 tp!64782))))

(declare-fun b!118305 () Bool)

(declare-fun tp!64784 () Bool)

(assert (=> b!118305 (= e!67425 tp!64784)))

(assert (= (and b!118113 ((_ is ElementMatch!519) (_1!1310 (_1!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118303))

(assert (= (and b!118113 ((_ is Concat!903) (_1!1310 (_1!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118304))

(assert (= (and b!118113 ((_ is Star!519) (_1!1310 (_1!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118305))

(assert (= (and b!118113 ((_ is Union!519) (_1!1310 (_1!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118306))

(declare-fun e!67426 () Bool)

(assert (=> b!118113 (= tp!64594 e!67426)))

(declare-fun b!118307 () Bool)

(assert (=> b!118307 (= e!67426 tp_is_empty!1093)))

(declare-fun b!118308 () Bool)

(declare-fun tp!64788 () Bool)

(declare-fun tp!64786 () Bool)

(assert (=> b!118308 (= e!67426 (and tp!64788 tp!64786))))

(declare-fun b!118310 () Bool)

(declare-fun tp!64785 () Bool)

(declare-fun tp!64787 () Bool)

(assert (=> b!118310 (= e!67426 (and tp!64785 tp!64787))))

(declare-fun b!118309 () Bool)

(declare-fun tp!64789 () Bool)

(assert (=> b!118309 (= e!67426 tp!64789)))

(assert (= (and b!118113 ((_ is ElementMatch!519) (_2!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118307))

(assert (= (and b!118113 ((_ is Concat!903) (_2!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118308))

(assert (= (and b!118113 ((_ is Star!519) (_2!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118309))

(assert (= (and b!118113 ((_ is Union!519) (_2!1311 (h!7344 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118310))

(declare-fun tp!64792 () Bool)

(declare-fun e!67427 () Bool)

(declare-fun b!118311 () Bool)

(declare-fun tp!64791 () Bool)

(declare-fun tp!64790 () Bool)

(assert (=> b!118311 (= e!67427 (and tp!64790 tp_is_empty!1093 tp!64791 tp!64792))))

(assert (=> b!118113 (= tp!64595 e!67427)))

(assert (= (and b!118113 ((_ is Cons!1947) (t!22430 (minValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))) b!118311))

(declare-fun e!67428 () Bool)

(assert (=> b!118137 (= tp!64615 e!67428)))

(declare-fun b!118312 () Bool)

(assert (=> b!118312 (= e!67428 tp_is_empty!1093)))

(declare-fun b!118313 () Bool)

(declare-fun tp!64796 () Bool)

(declare-fun tp!64794 () Bool)

(assert (=> b!118313 (= e!67428 (and tp!64796 tp!64794))))

(declare-fun b!118315 () Bool)

(declare-fun tp!64793 () Bool)

(declare-fun tp!64795 () Bool)

(assert (=> b!118315 (= e!67428 (and tp!64793 tp!64795))))

(declare-fun b!118314 () Bool)

(declare-fun tp!64797 () Bool)

(assert (=> b!118314 (= e!67428 tp!64797)))

(assert (= (and b!118137 ((_ is ElementMatch!519) (regOne!1551 (regTwo!1550 r!15532)))) b!118312))

(assert (= (and b!118137 ((_ is Concat!903) (regOne!1551 (regTwo!1550 r!15532)))) b!118313))

(assert (= (and b!118137 ((_ is Star!519) (regOne!1551 (regTwo!1550 r!15532)))) b!118314))

(assert (= (and b!118137 ((_ is Union!519) (regOne!1551 (regTwo!1550 r!15532)))) b!118315))

(declare-fun e!67429 () Bool)

(assert (=> b!118137 (= tp!64617 e!67429)))

(declare-fun b!118316 () Bool)

(assert (=> b!118316 (= e!67429 tp_is_empty!1093)))

(declare-fun b!118317 () Bool)

(declare-fun tp!64801 () Bool)

(declare-fun tp!64799 () Bool)

(assert (=> b!118317 (= e!67429 (and tp!64801 tp!64799))))

(declare-fun b!118319 () Bool)

(declare-fun tp!64798 () Bool)

(declare-fun tp!64800 () Bool)

(assert (=> b!118319 (= e!67429 (and tp!64798 tp!64800))))

(declare-fun b!118318 () Bool)

(declare-fun tp!64802 () Bool)

(assert (=> b!118318 (= e!67429 tp!64802)))

(assert (= (and b!118137 ((_ is ElementMatch!519) (regTwo!1551 (regTwo!1550 r!15532)))) b!118316))

(assert (= (and b!118137 ((_ is Concat!903) (regTwo!1551 (regTwo!1550 r!15532)))) b!118317))

(assert (= (and b!118137 ((_ is Star!519) (regTwo!1551 (regTwo!1550 r!15532)))) b!118318))

(assert (= (and b!118137 ((_ is Union!519) (regTwo!1551 (regTwo!1550 r!15532)))) b!118319))

(declare-fun e!67430 () Bool)

(assert (=> b!118160 (= tp!64660 e!67430)))

(declare-fun b!118320 () Bool)

(assert (=> b!118320 (= e!67430 tp_is_empty!1093)))

(declare-fun b!118321 () Bool)

(declare-fun tp!64806 () Bool)

(declare-fun tp!64804 () Bool)

(assert (=> b!118321 (= e!67430 (and tp!64806 tp!64804))))

(declare-fun b!118323 () Bool)

(declare-fun tp!64803 () Bool)

(declare-fun tp!64805 () Bool)

(assert (=> b!118323 (= e!67430 (and tp!64803 tp!64805))))

(declare-fun b!118322 () Bool)

(declare-fun tp!64807 () Bool)

(assert (=> b!118322 (= e!67430 tp!64807)))

(assert (= (and b!118160 ((_ is ElementMatch!519) (_1!1310 (_1!1311 (h!7344 mapValue!1489))))) b!118320))

(assert (= (and b!118160 ((_ is Concat!903) (_1!1310 (_1!1311 (h!7344 mapValue!1489))))) b!118321))

(assert (= (and b!118160 ((_ is Star!519) (_1!1310 (_1!1311 (h!7344 mapValue!1489))))) b!118322))

(assert (= (and b!118160 ((_ is Union!519) (_1!1310 (_1!1311 (h!7344 mapValue!1489))))) b!118323))

(declare-fun e!67431 () Bool)

(assert (=> b!118160 (= tp!64661 e!67431)))

(declare-fun b!118324 () Bool)

(assert (=> b!118324 (= e!67431 tp_is_empty!1093)))

(declare-fun b!118325 () Bool)

(declare-fun tp!64811 () Bool)

(declare-fun tp!64809 () Bool)

(assert (=> b!118325 (= e!67431 (and tp!64811 tp!64809))))

(declare-fun b!118327 () Bool)

(declare-fun tp!64808 () Bool)

(declare-fun tp!64810 () Bool)

(assert (=> b!118327 (= e!67431 (and tp!64808 tp!64810))))

(declare-fun b!118326 () Bool)

(declare-fun tp!64812 () Bool)

(assert (=> b!118326 (= e!67431 tp!64812)))

(assert (= (and b!118160 ((_ is ElementMatch!519) (_2!1311 (h!7344 mapValue!1489)))) b!118324))

(assert (= (and b!118160 ((_ is Concat!903) (_2!1311 (h!7344 mapValue!1489)))) b!118325))

(assert (= (and b!118160 ((_ is Star!519) (_2!1311 (h!7344 mapValue!1489)))) b!118326))

(assert (= (and b!118160 ((_ is Union!519) (_2!1311 (h!7344 mapValue!1489)))) b!118327))

(declare-fun b!118328 () Bool)

(declare-fun tp!64815 () Bool)

(declare-fun e!67432 () Bool)

(declare-fun tp!64813 () Bool)

(declare-fun tp!64814 () Bool)

(assert (=> b!118328 (= e!67432 (and tp!64813 tp_is_empty!1093 tp!64814 tp!64815))))

(assert (=> b!118160 (= tp!64662 e!67432)))

(assert (= (and b!118160 ((_ is Cons!1947) (t!22430 mapValue!1489))) b!118328))

(declare-fun mapNonEmpty!1493 () Bool)

(declare-fun mapRes!1493 () Bool)

(declare-fun tp!64822 () Bool)

(declare-fun e!67433 () Bool)

(assert (=> mapNonEmpty!1493 (= mapRes!1493 (and tp!64822 e!67433))))

(declare-fun mapKey!1493 () (_ BitVec 32))

(declare-fun mapRest!1493 () (Array (_ BitVec 32) List!1953))

(declare-fun mapValue!1493 () List!1953)

(assert (=> mapNonEmpty!1493 (= mapRest!1492 (store mapRest!1493 mapKey!1493 mapValue!1493))))

(declare-fun e!67434 () Bool)

(declare-fun tp!64816 () Bool)

(declare-fun tp!64817 () Bool)

(declare-fun b!118330 () Bool)

(declare-fun tp!64820 () Bool)

(assert (=> b!118330 (= e!67434 (and tp!64820 tp_is_empty!1093 tp!64816 tp!64817))))

(declare-fun condMapEmpty!1493 () Bool)

(declare-fun mapDefault!1493 () List!1953)

(assert (=> mapNonEmpty!1492 (= condMapEmpty!1493 (= mapRest!1492 ((as const (Array (_ BitVec 32) List!1953)) mapDefault!1493)))))

(assert (=> mapNonEmpty!1492 (= tp!64659 (and e!67434 mapRes!1493))))

(declare-fun mapIsEmpty!1493 () Bool)

(assert (=> mapIsEmpty!1493 mapRes!1493))

(declare-fun tp!64821 () Bool)

(declare-fun tp!64819 () Bool)

(declare-fun tp!64818 () Bool)

(declare-fun b!118329 () Bool)

(assert (=> b!118329 (= e!67433 (and tp!64819 tp_is_empty!1093 tp!64818 tp!64821))))

(assert (= (and mapNonEmpty!1492 condMapEmpty!1493) mapIsEmpty!1493))

(assert (= (and mapNonEmpty!1492 (not condMapEmpty!1493)) mapNonEmpty!1493))

(assert (= (and mapNonEmpty!1493 ((_ is Cons!1947) mapValue!1493)) b!118329))

(assert (= (and mapNonEmpty!1492 ((_ is Cons!1947) mapDefault!1493)) b!118330))

(declare-fun m!105845 () Bool)

(assert (=> mapNonEmpty!1493 m!105845))

(declare-fun e!67435 () Bool)

(assert (=> b!118158 (= tp!64656 e!67435)))

(declare-fun b!118331 () Bool)

(assert (=> b!118331 (= e!67435 tp_is_empty!1093)))

(declare-fun b!118332 () Bool)

(declare-fun tp!64826 () Bool)

(declare-fun tp!64824 () Bool)

(assert (=> b!118332 (= e!67435 (and tp!64826 tp!64824))))

(declare-fun b!118334 () Bool)

(declare-fun tp!64823 () Bool)

(declare-fun tp!64825 () Bool)

(assert (=> b!118334 (= e!67435 (and tp!64823 tp!64825))))

(declare-fun b!118333 () Bool)

(declare-fun tp!64827 () Bool)

(assert (=> b!118333 (= e!67435 tp!64827)))

(assert (= (and b!118158 ((_ is ElementMatch!519) (_1!1310 (_1!1311 (h!7344 mapValue!1492))))) b!118331))

(assert (= (and b!118158 ((_ is Concat!903) (_1!1310 (_1!1311 (h!7344 mapValue!1492))))) b!118332))

(assert (= (and b!118158 ((_ is Star!519) (_1!1310 (_1!1311 (h!7344 mapValue!1492))))) b!118333))

(assert (= (and b!118158 ((_ is Union!519) (_1!1310 (_1!1311 (h!7344 mapValue!1492))))) b!118334))

(declare-fun e!67436 () Bool)

(assert (=> b!118158 (= tp!64655 e!67436)))

(declare-fun b!118335 () Bool)

(assert (=> b!118335 (= e!67436 tp_is_empty!1093)))

(declare-fun b!118336 () Bool)

(declare-fun tp!64831 () Bool)

(declare-fun tp!64829 () Bool)

(assert (=> b!118336 (= e!67436 (and tp!64831 tp!64829))))

(declare-fun b!118338 () Bool)

(declare-fun tp!64828 () Bool)

(declare-fun tp!64830 () Bool)

(assert (=> b!118338 (= e!67436 (and tp!64828 tp!64830))))

(declare-fun b!118337 () Bool)

(declare-fun tp!64832 () Bool)

(assert (=> b!118337 (= e!67436 tp!64832)))

(assert (= (and b!118158 ((_ is ElementMatch!519) (_2!1311 (h!7344 mapValue!1492)))) b!118335))

(assert (= (and b!118158 ((_ is Concat!903) (_2!1311 (h!7344 mapValue!1492)))) b!118336))

(assert (= (and b!118158 ((_ is Star!519) (_2!1311 (h!7344 mapValue!1492)))) b!118337))

(assert (= (and b!118158 ((_ is Union!519) (_2!1311 (h!7344 mapValue!1492)))) b!118338))

(declare-fun e!67437 () Bool)

(declare-fun b!118339 () Bool)

(declare-fun tp!64835 () Bool)

(declare-fun tp!64833 () Bool)

(declare-fun tp!64834 () Bool)

(assert (=> b!118339 (= e!67437 (and tp!64833 tp_is_empty!1093 tp!64834 tp!64835))))

(assert (=> b!118158 (= tp!64658 e!67437)))

(assert (= (and b!118158 ((_ is Cons!1947) (t!22430 mapValue!1492))) b!118339))

(declare-fun b!118340 () Bool)

(declare-fun e!67438 () Bool)

(declare-fun tp!64836 () Bool)

(assert (=> b!118340 (= e!67438 (and tp_is_empty!1093 tp!64836))))

(assert (=> b!118118 (= tp!64598 e!67438)))

(assert (= (and b!118118 ((_ is Cons!1946) (t!22429 (t!22429 totalInput!1363)))) b!118340))

(declare-fun e!67439 () Bool)

(assert (=> b!118159 (= tp!64657 e!67439)))

(declare-fun b!118341 () Bool)

(assert (=> b!118341 (= e!67439 tp_is_empty!1093)))

(declare-fun b!118342 () Bool)

(declare-fun tp!64840 () Bool)

(declare-fun tp!64838 () Bool)

(assert (=> b!118342 (= e!67439 (and tp!64840 tp!64838))))

(declare-fun b!118344 () Bool)

(declare-fun tp!64837 () Bool)

(declare-fun tp!64839 () Bool)

(assert (=> b!118344 (= e!67439 (and tp!64837 tp!64839))))

(declare-fun b!118343 () Bool)

(declare-fun tp!64841 () Bool)

(assert (=> b!118343 (= e!67439 tp!64841)))

(assert (= (and b!118159 ((_ is ElementMatch!519) (_1!1310 (_1!1311 (h!7344 mapDefault!1492))))) b!118341))

(assert (= (and b!118159 ((_ is Concat!903) (_1!1310 (_1!1311 (h!7344 mapDefault!1492))))) b!118342))

(assert (= (and b!118159 ((_ is Star!519) (_1!1310 (_1!1311 (h!7344 mapDefault!1492))))) b!118343))

(assert (= (and b!118159 ((_ is Union!519) (_1!1310 (_1!1311 (h!7344 mapDefault!1492))))) b!118344))

(declare-fun e!67440 () Bool)

(assert (=> b!118159 (= tp!64653 e!67440)))

(declare-fun b!118345 () Bool)

(assert (=> b!118345 (= e!67440 tp_is_empty!1093)))

(declare-fun b!118346 () Bool)

(declare-fun tp!64845 () Bool)

(declare-fun tp!64843 () Bool)

(assert (=> b!118346 (= e!67440 (and tp!64845 tp!64843))))

(declare-fun b!118348 () Bool)

(declare-fun tp!64842 () Bool)

(declare-fun tp!64844 () Bool)

(assert (=> b!118348 (= e!67440 (and tp!64842 tp!64844))))

(declare-fun b!118347 () Bool)

(declare-fun tp!64846 () Bool)

(assert (=> b!118347 (= e!67440 tp!64846)))

(assert (= (and b!118159 ((_ is ElementMatch!519) (_2!1311 (h!7344 mapDefault!1492)))) b!118345))

(assert (= (and b!118159 ((_ is Concat!903) (_2!1311 (h!7344 mapDefault!1492)))) b!118346))

(assert (= (and b!118159 ((_ is Star!519) (_2!1311 (h!7344 mapDefault!1492)))) b!118347))

(assert (= (and b!118159 ((_ is Union!519) (_2!1311 (h!7344 mapDefault!1492)))) b!118348))

(declare-fun tp!64849 () Bool)

(declare-fun e!67441 () Bool)

(declare-fun tp!64848 () Bool)

(declare-fun b!118349 () Bool)

(declare-fun tp!64847 () Bool)

(assert (=> b!118349 (= e!67441 (and tp!64847 tp_is_empty!1093 tp!64848 tp!64849))))

(assert (=> b!118159 (= tp!64654 e!67441)))

(assert (= (and b!118159 ((_ is Cons!1947) (t!22430 mapDefault!1492))) b!118349))

(declare-fun e!67442 () Bool)

(assert (=> b!118151 (= tp!64636 e!67442)))

(declare-fun b!118350 () Bool)

(assert (=> b!118350 (= e!67442 tp_is_empty!1093)))

(declare-fun b!118351 () Bool)

(declare-fun tp!64853 () Bool)

(declare-fun tp!64851 () Bool)

(assert (=> b!118351 (= e!67442 (and tp!64853 tp!64851))))

(declare-fun b!118353 () Bool)

(declare-fun tp!64850 () Bool)

(declare-fun tp!64852 () Bool)

(assert (=> b!118353 (= e!67442 (and tp!64850 tp!64852))))

(declare-fun b!118352 () Bool)

(declare-fun tp!64854 () Bool)

(assert (=> b!118352 (= e!67442 tp!64854)))

(assert (= (and b!118151 ((_ is ElementMatch!519) (_1!1310 (_1!1311 (h!7344 mapDefault!1489))))) b!118350))

(assert (= (and b!118151 ((_ is Concat!903) (_1!1310 (_1!1311 (h!7344 mapDefault!1489))))) b!118351))

(assert (= (and b!118151 ((_ is Star!519) (_1!1310 (_1!1311 (h!7344 mapDefault!1489))))) b!118352))

(assert (= (and b!118151 ((_ is Union!519) (_1!1310 (_1!1311 (h!7344 mapDefault!1489))))) b!118353))

(declare-fun e!67443 () Bool)

(assert (=> b!118151 (= tp!64637 e!67443)))

(declare-fun b!118354 () Bool)

(assert (=> b!118354 (= e!67443 tp_is_empty!1093)))

(declare-fun b!118355 () Bool)

(declare-fun tp!64858 () Bool)

(declare-fun tp!64856 () Bool)

(assert (=> b!118355 (= e!67443 (and tp!64858 tp!64856))))

(declare-fun b!118357 () Bool)

(declare-fun tp!64855 () Bool)

(declare-fun tp!64857 () Bool)

(assert (=> b!118357 (= e!67443 (and tp!64855 tp!64857))))

(declare-fun b!118356 () Bool)

(declare-fun tp!64859 () Bool)

(assert (=> b!118356 (= e!67443 tp!64859)))

(assert (= (and b!118151 ((_ is ElementMatch!519) (_2!1311 (h!7344 mapDefault!1489)))) b!118354))

(assert (= (and b!118151 ((_ is Concat!903) (_2!1311 (h!7344 mapDefault!1489)))) b!118355))

(assert (= (and b!118151 ((_ is Star!519) (_2!1311 (h!7344 mapDefault!1489)))) b!118356))

(assert (= (and b!118151 ((_ is Union!519) (_2!1311 (h!7344 mapDefault!1489)))) b!118357))

(declare-fun tp!64861 () Bool)

(declare-fun tp!64860 () Bool)

(declare-fun b!118358 () Bool)

(declare-fun e!67444 () Bool)

(declare-fun tp!64862 () Bool)

(assert (=> b!118358 (= e!67444 (and tp!64860 tp_is_empty!1093 tp!64861 tp!64862))))

(assert (=> b!118151 (= tp!64638 e!67444)))

(assert (= (and b!118151 ((_ is Cons!1947) (t!22430 mapDefault!1489))) b!118358))

(declare-fun e!67445 () Bool)

(assert (=> b!118112 (= tp!64590 e!67445)))

(declare-fun b!118359 () Bool)

(assert (=> b!118359 (= e!67445 tp_is_empty!1093)))

(declare-fun b!118360 () Bool)

(declare-fun tp!64866 () Bool)

(declare-fun tp!64864 () Bool)

(assert (=> b!118360 (= e!67445 (and tp!64866 tp!64864))))

(declare-fun b!118362 () Bool)

(declare-fun tp!64863 () Bool)

(declare-fun tp!64865 () Bool)

(assert (=> b!118362 (= e!67445 (and tp!64863 tp!64865))))

(declare-fun b!118361 () Bool)

(declare-fun tp!64867 () Bool)

(assert (=> b!118361 (= e!67445 tp!64867)))

(assert (= (and b!118112 ((_ is ElementMatch!519) (_1!1310 (_1!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118359))

(assert (= (and b!118112 ((_ is Concat!903) (_1!1310 (_1!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118360))

(assert (= (and b!118112 ((_ is Star!519) (_1!1310 (_1!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118361))

(assert (= (and b!118112 ((_ is Union!519) (_1!1310 (_1!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))))) b!118362))

(declare-fun e!67446 () Bool)

(assert (=> b!118112 (= tp!64591 e!67446)))

(declare-fun b!118363 () Bool)

(assert (=> b!118363 (= e!67446 tp_is_empty!1093)))

(declare-fun b!118364 () Bool)

(declare-fun tp!64871 () Bool)

(declare-fun tp!64869 () Bool)

(assert (=> b!118364 (= e!67446 (and tp!64871 tp!64869))))

(declare-fun b!118366 () Bool)

(declare-fun tp!64868 () Bool)

(declare-fun tp!64870 () Bool)

(assert (=> b!118366 (= e!67446 (and tp!64868 tp!64870))))

(declare-fun b!118365 () Bool)

(declare-fun tp!64872 () Bool)

(assert (=> b!118365 (= e!67446 tp!64872)))

(assert (= (and b!118112 ((_ is ElementMatch!519) (_2!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118363))

(assert (= (and b!118112 ((_ is Concat!903) (_2!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118364))

(assert (= (and b!118112 ((_ is Star!519) (_2!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118365))

(assert (= (and b!118112 ((_ is Union!519) (_2!1311 (h!7344 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470)))))))))) b!118366))

(declare-fun tp!64875 () Bool)

(declare-fun tp!64873 () Bool)

(declare-fun tp!64874 () Bool)

(declare-fun b!118367 () Bool)

(declare-fun e!67447 () Bool)

(assert (=> b!118367 (= e!67447 (and tp!64873 tp_is_empty!1093 tp!64874 tp!64875))))

(assert (=> b!118112 (= tp!64592 e!67447)))

(assert (= (and b!118112 ((_ is Cons!1947) (t!22430 (zeroValue!641 (v!13301 (underlying!969 (v!13302 (underlying!970 (cache!833 cache!470))))))))) b!118367))

(check-sat (not b!118346) (not b!118186) (not b!118227) (not d!28549) (not b!118164) (not b!118358) (not b!118337) (not b!118204) (not b!118281) (not b!118242) (not b!118222) (not b!118240) (not b_next!3769) (not b!118162) (not b!118315) (not b!118243) (not b!118226) (not b!118210) (not b!118280) (not b!118269) (not b!118334) (not b!118250) (not b!118252) (not b!118277) (not b!118327) (not b!118364) (not b!118238) (not b!118302) (not b!118212) (not b!118367) (not b_next!3771) (not b!118308) b_and!5899 (not b!118348) (not b!118301) (not b!118319) (not b!118304) (not b!118329) (not b!118330) (not b!118215) (not b!118228) (not bm!4952) (not b!118255) (not b!118173) (not b!118351) (not b!118247) (not b!118235) (not b!118339) (not b!118289) (not mapNonEmpty!1493) (not b!118278) (not b!118321) (not b!118296) (not b!118256) (not b!118258) (not b!118357) (not b!118325) (not b!118344) (not b!118218) (not b!118166) (not b!118285) (not b!118251) (not b!118288) (not b!118342) (not b!118260) (not b!118239) (not b!118290) (not b!118362) (not b!118310) (not b!118230) (not b!118305) (not b!118248) (not b!118314) (not b!118311) (not b!118234) (not b!118282) (not b!118313) (not b!118211) (not b!118355) b_and!5901 (not b!118317) (not b!118244) (not b!118361) (not b!118293) (not b!118352) (not b!118333) (not b!118322) (not b!118263) (not b!118323) (not b!118177) (not b!118220) (not b!118224) (not b!118273) (not b!118208) (not b!118284) (not b!118216) (not b!118232) (not b!118353) (not b!118338) (not b!118272) (not b!118196) (not b!118197) (not b!118365) (not b!118246) (not b!118236) (not b!118347) (not b!118176) (not b!118343) (not b!118328) (not b!118276) (not b!118309) (not d!28553) (not bm!4956) (not b!118292) (not b!118265) (not b!118270) (not bm!4953) (not b!118360) (not b!118286) (not b!118332) (not b!118267) (not b!118274) (not b!118268) (not d!28561) (not b!118306) tp_is_empty!1093 (not b!118174) (not b!118297) (not b!118349) (not b!118219) (not b!118264) (not b!118231) (not b!118214) (not b!118300) (not b!118340) (not b!118318) (not b!118326) (not b!118223) (not bm!4955) (not b!118366) (not b!118206) (not b!118336) (not b!118294) (not b!118261) (not b!118356) (not b!118259) (not b!118254) (not b!118298))
(check-sat b_and!5901 b_and!5899 (not b_next!3771) (not b_next!3769))
