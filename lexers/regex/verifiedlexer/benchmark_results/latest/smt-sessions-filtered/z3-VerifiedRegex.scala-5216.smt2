; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268394 () Bool)

(assert start!268394)

(declare-fun b!2774322 () Bool)

(declare-fun b_free!78341 () Bool)

(declare-fun b_next!79045 () Bool)

(assert (=> b!2774322 (= b_free!78341 (not b_next!79045))))

(declare-fun tp!877940 () Bool)

(declare-fun b_and!203079 () Bool)

(assert (=> b!2774322 (= tp!877940 b_and!203079)))

(declare-fun b!2774305 () Bool)

(declare-fun b_free!78343 () Bool)

(declare-fun b_next!79047 () Bool)

(assert (=> b!2774305 (= b_free!78343 (not b_next!79047))))

(declare-fun tp!877947 () Bool)

(declare-fun b_and!203081 () Bool)

(assert (=> b!2774305 (= tp!877947 b_and!203081)))

(declare-fun b!2774314 () Bool)

(declare-fun b_free!78345 () Bool)

(declare-fun b_next!79049 () Bool)

(assert (=> b!2774314 (= b_free!78345 (not b_next!79049))))

(declare-fun tp!877946 () Bool)

(declare-fun b_and!203083 () Bool)

(assert (=> b!2774314 (= tp!877946 b_and!203083)))

(declare-fun b!2774315 () Bool)

(declare-fun b_free!78347 () Bool)

(declare-fun b_next!79051 () Bool)

(assert (=> b!2774315 (= b_free!78347 (not b_next!79051))))

(declare-fun tp!877948 () Bool)

(declare-fun b_and!203085 () Bool)

(assert (=> b!2774315 (= tp!877948 b_and!203085)))

(declare-fun b!2774303 () Bool)

(declare-fun e!1749743 () Bool)

(assert (=> b!2774303 (= e!1749743 true)))

(declare-fun lt!989045 () Int)

(declare-datatypes ((C!16352 0))(
  ( (C!16353 (val!10110 Int)) )
))
(declare-datatypes ((List!32150 0))(
  ( (Nil!32050) (Cons!32050 (h!37470 C!16352) (t!228278 List!32150)) )
))
(declare-fun size!24840 (List!32150) Int)

(assert (=> b!2774303 (= lt!989045 (size!24840 Nil!32050))))

(declare-fun b!2774304 () Bool)

(declare-fun e!1749725 () Bool)

(declare-fun e!1749730 () Bool)

(assert (=> b!2774304 (= e!1749725 e!1749730)))

(declare-fun mapNonEmpty!17341 () Bool)

(declare-fun mapRes!17341 () Bool)

(declare-fun tp!877941 () Bool)

(declare-fun tp!877954 () Bool)

(assert (=> mapNonEmpty!17341 (= mapRes!17341 (and tp!877941 tp!877954))))

(declare-datatypes ((Regex!8097 0))(
  ( (ElementMatch!8097 (c!450404 C!16352)) (Concat!13185 (regOne!16706 Regex!8097) (regTwo!16706 Regex!8097)) (EmptyExpr!8097) (Star!8097 (reg!8426 Regex!8097)) (EmptyLang!8097) (Union!8097 (regOne!16707 Regex!8097) (regTwo!16707 Regex!8097)) )
))
(declare-datatypes ((List!32151 0))(
  ( (Nil!32051) (Cons!32051 (h!37471 Regex!8097) (t!228279 List!32151)) )
))
(declare-datatypes ((Context!4630 0))(
  ( (Context!4631 (exprs!2815 List!32151)) )
))
(declare-datatypes ((tuple3!4876 0))(
  ( (tuple3!4877 (_1!19034 Regex!8097) (_2!19034 Context!4630) (_3!2908 C!16352)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32252 0))(
  ( (tuple2!32253 (_1!19035 tuple3!4876) (_2!19035 (InoxSet Context!4630))) )
))
(declare-datatypes ((List!32152 0))(
  ( (Nil!32052) (Cons!32052 (h!37472 tuple2!32252) (t!228280 List!32152)) )
))
(declare-fun mapRest!17341 () (Array (_ BitVec 32) List!32152))

(declare-fun mapKey!17341 () (_ BitVec 32))

(declare-fun mapValue!17341 () List!32152)

(declare-datatypes ((array!13534 0))(
  ( (array!13535 (arr!6032 (Array (_ BitVec 32) (_ BitVec 64))) (size!24841 (_ BitVec 32))) )
))
(declare-datatypes ((array!13536 0))(
  ( (array!13537 (arr!6033 (Array (_ BitVec 32) List!32152)) (size!24842 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7604 0))(
  ( (LongMapFixedSize!7605 (defaultEntry!4187 Int) (mask!9587 (_ BitVec 32)) (extraKeys!4051 (_ BitVec 32)) (zeroValue!4061 List!32152) (minValue!4061 List!32152) (_size!7647 (_ BitVec 32)) (_keys!4102 array!13534) (_values!4083 array!13536) (_vacant!3863 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15017 0))(
  ( (Cell!15018 (v!33660 LongMapFixedSize!7604)) )
))
(declare-datatypes ((MutLongMap!3802 0))(
  ( (LongMap!3802 (underlying!7807 Cell!15017)) (MutLongMapExt!3801 (__x!21056 Int)) )
))
(declare-datatypes ((Cell!15019 0))(
  ( (Cell!15020 (v!33661 MutLongMap!3802)) )
))
(declare-datatypes ((Hashable!3718 0))(
  ( (HashableExt!3717 (__x!21057 Int)) )
))
(declare-datatypes ((MutableMap!3708 0))(
  ( (MutableMapExt!3707 (__x!21058 Int)) (HashMap!3708 (underlying!7808 Cell!15019) (hashF!5750 Hashable!3718) (_size!7648 (_ BitVec 32)) (defaultValue!3879 Int)) )
))
(declare-datatypes ((CacheDown!2534 0))(
  ( (CacheDown!2535 (cache!3851 MutableMap!3708)) )
))
(declare-fun cacheDown!939 () CacheDown!2534)

(assert (=> mapNonEmpty!17341 (= (arr!6033 (_values!4083 (v!33660 (underlying!7807 (v!33661 (underlying!7808 (cache!3851 cacheDown!939))))))) (store mapRest!17341 mapKey!17341 mapValue!17341))))

(declare-fun mapIsEmpty!17341 () Bool)

(assert (=> mapIsEmpty!17341 mapRes!17341))

(declare-fun tp!877956 () Bool)

(declare-fun e!1749729 () Bool)

(declare-fun tp!877944 () Bool)

(declare-fun array_inv!4314 (array!13534) Bool)

(declare-fun array_inv!4315 (array!13536) Bool)

(assert (=> b!2774305 (= e!1749730 (and tp!877947 tp!877956 tp!877944 (array_inv!4314 (_keys!4102 (v!33660 (underlying!7807 (v!33661 (underlying!7808 (cache!3851 cacheDown!939))))))) (array_inv!4315 (_values!4083 (v!33660 (underlying!7807 (v!33661 (underlying!7808 (cache!3851 cacheDown!939))))))) e!1749729))))

(declare-fun b!2774306 () Bool)

(declare-fun e!1749736 () Bool)

(declare-fun e!1749741 () Bool)

(assert (=> b!2774306 (= e!1749736 e!1749741)))

(declare-fun b!2774307 () Bool)

(declare-fun e!1749745 () Bool)

(declare-fun tp!877952 () Bool)

(assert (=> b!2774307 (= e!1749745 tp!877952)))

(declare-fun setRes!23010 () Bool)

(declare-fun setElem!23010 () Context!4630)

(declare-fun tp!877949 () Bool)

(declare-fun setNonEmpty!23010 () Bool)

(declare-fun inv!43529 (Context!4630) Bool)

(assert (=> setNonEmpty!23010 (= setRes!23010 (and tp!877949 (inv!43529 setElem!23010) e!1749745))))

(declare-fun z!3597 () (InoxSet Context!4630))

(declare-fun setRest!23010 () (InoxSet Context!4630))

(assert (=> setNonEmpty!23010 (= z!3597 ((_ map or) (store ((as const (Array Context!4630 Bool)) false) setElem!23010 true) setRest!23010))))

(declare-fun b!2774308 () Bool)

(declare-fun e!1749737 () Bool)

(declare-fun e!1749728 () Bool)

(declare-fun lt!989040 () MutLongMap!3802)

(get-info :version)

(assert (=> b!2774308 (= e!1749737 (and e!1749728 ((_ is LongMap!3802) lt!989040)))))

(assert (=> b!2774308 (= lt!989040 (v!33661 (underlying!7808 (cache!3851 cacheDown!939))))))

(declare-fun lt!989041 () Int)

(declare-datatypes ((tuple2!32254 0))(
  ( (tuple2!32255 (_1!19036 Context!4630) (_2!19036 C!16352)) )
))
(declare-datatypes ((tuple2!32256 0))(
  ( (tuple2!32257 (_1!19037 tuple2!32254) (_2!19037 (InoxSet Context!4630))) )
))
(declare-datatypes ((List!32153 0))(
  ( (Nil!32053) (Cons!32053 (h!37473 tuple2!32256) (t!228281 List!32153)) )
))
(declare-datatypes ((Hashable!3719 0))(
  ( (HashableExt!3718 (__x!21059 Int)) )
))
(declare-datatypes ((array!13538 0))(
  ( (array!13539 (arr!6034 (Array (_ BitVec 32) List!32153)) (size!24843 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7606 0))(
  ( (LongMapFixedSize!7607 (defaultEntry!4188 Int) (mask!9588 (_ BitVec 32)) (extraKeys!4052 (_ BitVec 32)) (zeroValue!4062 List!32153) (minValue!4062 List!32153) (_size!7649 (_ BitVec 32)) (_keys!4103 array!13534) (_values!4084 array!13538) (_vacant!3864 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15021 0))(
  ( (Cell!15022 (v!33662 LongMapFixedSize!7606)) )
))
(declare-datatypes ((MutLongMap!3803 0))(
  ( (LongMap!3803 (underlying!7809 Cell!15021)) (MutLongMapExt!3802 (__x!21060 Int)) )
))
(declare-datatypes ((Cell!15023 0))(
  ( (Cell!15024 (v!33663 MutLongMap!3803)) )
))
(declare-datatypes ((MutableMap!3709 0))(
  ( (MutableMapExt!3708 (__x!21061 Int)) (HashMap!3709 (underlying!7810 Cell!15023) (hashF!5751 Hashable!3719) (_size!7650 (_ BitVec 32)) (defaultValue!3880 Int)) )
))
(declare-datatypes ((CacheUp!2414 0))(
  ( (CacheUp!2415 (cache!3852 MutableMap!3709)) )
))
(declare-datatypes ((tuple3!4878 0))(
  ( (tuple3!4879 (_1!19038 Int) (_2!19038 CacheUp!2414) (_3!2909 CacheDown!2534)) )
))
(declare-fun lt!989043 () tuple3!4878)

(declare-fun lt!989044 () List!32150)

(declare-fun b!2774309 () Bool)

(declare-datatypes ((IArray!19957 0))(
  ( (IArray!19958 (innerList!10036 List!32150)) )
))
(declare-datatypes ((Conc!9976 0))(
  ( (Node!9976 (left!24410 Conc!9976) (right!24740 Conc!9976) (csize!20182 Int) (cheight!10187 Int)) (Leaf!15193 (xs!13086 IArray!19957) (csize!20183 Int)) (Empty!9976) )
))
(declare-datatypes ((BalanceConc!19566 0))(
  ( (BalanceConc!19567 (c!450405 Conc!9976)) )
))
(declare-fun input!5495 () BalanceConc!19566)

(declare-fun e!1749724 () Bool)

(declare-fun findLongestMatchInnerZipperFast!48 ((InoxSet Context!4630) List!32150 Int List!32150 BalanceConc!19566 Int) Int)

(assert (=> b!2774309 (= e!1749724 (= (_1!19038 lt!989043) (findLongestMatchInnerZipperFast!48 z!3597 Nil!32050 0 lt!989044 input!5495 lt!989041)))))

(declare-fun b!2774310 () Bool)

(declare-fun e!1749732 () Bool)

(declare-fun e!1749734 () Bool)

(assert (=> b!2774310 (= e!1749732 e!1749734)))

(declare-fun b!2774311 () Bool)

(declare-fun e!1749726 () Bool)

(assert (=> b!2774311 (= e!1749726 (not e!1749743))))

(declare-fun res!1159440 () Bool)

(assert (=> b!2774311 (=> res!1159440 e!1749743)))

(declare-fun ++!7928 (List!32150 List!32150) List!32150)

(assert (=> b!2774311 (= res!1159440 (not (= (++!7928 Nil!32050 lt!989044) lt!989044)))))

(declare-fun e!1749740 () Bool)

(assert (=> b!2774311 e!1749740))

(declare-fun res!1159438 () Bool)

(assert (=> b!2774311 (=> (not res!1159438) (not e!1749740))))

(declare-fun lt!989042 () tuple3!4878)

(declare-fun valid!2967 (CacheUp!2414) Bool)

(assert (=> b!2774311 (= res!1159438 (valid!2967 (_2!19038 lt!989042)))))

(declare-fun findLongestMatchInnerZipperFastMem!41 (CacheUp!2414 CacheDown!2534 (InoxSet Context!4630) List!32150 Int List!32150 BalanceConc!19566 Int) tuple3!4878)

(assert (=> b!2774311 (= lt!989042 (findLongestMatchInnerZipperFastMem!41 (_2!19038 lt!989043) (_3!2909 lt!989043) z!3597 Nil!32050 0 lt!989044 input!5495 lt!989041))))

(assert (=> b!2774311 e!1749724))

(declare-fun res!1159442 () Bool)

(assert (=> b!2774311 (=> (not res!1159442) (not e!1749724))))

(assert (=> b!2774311 (= res!1159442 (valid!2967 (_2!19038 lt!989043)))))

(declare-fun cacheUp!820 () CacheUp!2414)

(assert (=> b!2774311 (= lt!989043 (findLongestMatchInnerZipperFastMem!41 cacheUp!820 cacheDown!939 z!3597 Nil!32050 0 lt!989044 input!5495 lt!989041))))

(declare-fun size!24844 (BalanceConc!19566) Int)

(assert (=> b!2774311 (= lt!989041 (size!24844 input!5495))))

(declare-fun list!12092 (BalanceConc!19566) List!32150)

(assert (=> b!2774311 (= lt!989044 (list!12092 input!5495))))

(declare-fun b!2774312 () Bool)

(declare-fun e!1749744 () Bool)

(declare-fun tp!877945 () Bool)

(declare-fun inv!43530 (Conc!9976) Bool)

(assert (=> b!2774312 (= e!1749744 (and (inv!43530 (c!450405 input!5495)) tp!877945))))

(declare-fun b!2774313 () Bool)

(declare-fun res!1159441 () Bool)

(assert (=> b!2774313 (=> (not res!1159441) (not e!1749724))))

(declare-fun valid!2968 (CacheDown!2534) Bool)

(assert (=> b!2774313 (= res!1159441 (valid!2968 (_3!2909 lt!989043)))))

(declare-fun e!1749742 () Bool)

(declare-fun e!1749738 () Bool)

(assert (=> b!2774314 (= e!1749742 (and e!1749738 tp!877946))))

(declare-fun b!2774302 () Bool)

(declare-fun lt!989039 () MutLongMap!3803)

(assert (=> b!2774302 (= e!1749738 (and e!1749736 ((_ is LongMap!3803) lt!989039)))))

(assert (=> b!2774302 (= lt!989039 (v!33663 (underlying!7810 (cache!3852 cacheUp!820))))))

(declare-fun res!1159439 () Bool)

(assert (=> start!268394 (=> (not res!1159439) (not e!1749726))))

(assert (=> start!268394 (= res!1159439 (valid!2967 cacheUp!820))))

(assert (=> start!268394 e!1749726))

(declare-fun e!1749735 () Bool)

(declare-fun inv!43531 (CacheUp!2414) Bool)

(assert (=> start!268394 (and (inv!43531 cacheUp!820) e!1749735)))

(declare-fun inv!43532 (CacheDown!2534) Bool)

(assert (=> start!268394 (and (inv!43532 cacheDown!939) e!1749732)))

(declare-fun condSetEmpty!23010 () Bool)

(assert (=> start!268394 (= condSetEmpty!23010 (= z!3597 ((as const (Array Context!4630 Bool)) false)))))

(assert (=> start!268394 setRes!23010))

(declare-fun inv!43533 (BalanceConc!19566) Bool)

(assert (=> start!268394 (and (inv!43533 input!5495) e!1749744)))

(declare-fun e!1749733 () Bool)

(declare-fun tp!877950 () Bool)

(declare-fun tp!877953 () Bool)

(declare-fun e!1749731 () Bool)

(declare-fun array_inv!4316 (array!13538) Bool)

(assert (=> b!2774315 (= e!1749733 (and tp!877948 tp!877950 tp!877953 (array_inv!4314 (_keys!4103 (v!33662 (underlying!7809 (v!33663 (underlying!7810 (cache!3852 cacheUp!820))))))) (array_inv!4316 (_values!4084 (v!33662 (underlying!7809 (v!33663 (underlying!7810 (cache!3852 cacheUp!820))))))) e!1749731))))

(declare-fun b!2774316 () Bool)

(declare-fun res!1159437 () Bool)

(assert (=> b!2774316 (=> (not res!1159437) (not e!1749740))))

(assert (=> b!2774316 (= res!1159437 (valid!2968 (_3!2909 lt!989042)))))

(declare-fun b!2774317 () Bool)

(assert (=> b!2774317 (= e!1749741 e!1749733)))

(declare-fun b!2774318 () Bool)

(declare-fun res!1159443 () Bool)

(assert (=> b!2774318 (=> (not res!1159443) (not e!1749726))))

(assert (=> b!2774318 (= res!1159443 (valid!2968 cacheDown!939))))

(declare-fun b!2774319 () Bool)

(assert (=> b!2774319 (= e!1749740 (= (_1!19038 lt!989042) (findLongestMatchInnerZipperFast!48 z!3597 Nil!32050 0 lt!989044 input!5495 lt!989041)))))

(declare-fun b!2774320 () Bool)

(declare-fun tp!877955 () Bool)

(assert (=> b!2774320 (= e!1749729 (and tp!877955 mapRes!17341))))

(declare-fun condMapEmpty!17342 () Bool)

(declare-fun mapDefault!17341 () List!32152)

(assert (=> b!2774320 (= condMapEmpty!17342 (= (arr!6033 (_values!4083 (v!33660 (underlying!7807 (v!33661 (underlying!7808 (cache!3851 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32152)) mapDefault!17341)))))

(declare-fun b!2774321 () Bool)

(declare-fun tp!877951 () Bool)

(declare-fun mapRes!17342 () Bool)

(assert (=> b!2774321 (= e!1749731 (and tp!877951 mapRes!17342))))

(declare-fun condMapEmpty!17341 () Bool)

(declare-fun mapDefault!17342 () List!32153)

(assert (=> b!2774321 (= condMapEmpty!17341 (= (arr!6034 (_values!4084 (v!33662 (underlying!7809 (v!33663 (underlying!7810 (cache!3852 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32153)) mapDefault!17342)))))

(declare-fun mapNonEmpty!17342 () Bool)

(declare-fun tp!877942 () Bool)

(declare-fun tp!877943 () Bool)

(assert (=> mapNonEmpty!17342 (= mapRes!17342 (and tp!877942 tp!877943))))

(declare-fun mapValue!17342 () List!32153)

(declare-fun mapKey!17342 () (_ BitVec 32))

(declare-fun mapRest!17342 () (Array (_ BitVec 32) List!32153))

(assert (=> mapNonEmpty!17342 (= (arr!6034 (_values!4084 (v!33662 (underlying!7809 (v!33663 (underlying!7810 (cache!3852 cacheUp!820))))))) (store mapRest!17342 mapKey!17342 mapValue!17342))))

(declare-fun setIsEmpty!23010 () Bool)

(assert (=> setIsEmpty!23010 setRes!23010))

(declare-fun mapIsEmpty!17342 () Bool)

(assert (=> mapIsEmpty!17342 mapRes!17342))

(assert (=> b!2774322 (= e!1749734 (and e!1749737 tp!877940))))

(declare-fun b!2774323 () Bool)

(assert (=> b!2774323 (= e!1749735 e!1749742)))

(declare-fun b!2774324 () Bool)

(assert (=> b!2774324 (= e!1749728 e!1749725)))

(assert (= (and start!268394 res!1159439) b!2774318))

(assert (= (and b!2774318 res!1159443) b!2774311))

(assert (= (and b!2774311 res!1159442) b!2774313))

(assert (= (and b!2774313 res!1159441) b!2774309))

(assert (= (and b!2774311 res!1159438) b!2774316))

(assert (= (and b!2774316 res!1159437) b!2774319))

(assert (= (and b!2774311 (not res!1159440)) b!2774303))

(assert (= (and b!2774321 condMapEmpty!17341) mapIsEmpty!17342))

(assert (= (and b!2774321 (not condMapEmpty!17341)) mapNonEmpty!17342))

(assert (= b!2774315 b!2774321))

(assert (= b!2774317 b!2774315))

(assert (= b!2774306 b!2774317))

(assert (= (and b!2774302 ((_ is LongMap!3803) (v!33663 (underlying!7810 (cache!3852 cacheUp!820))))) b!2774306))

(assert (= b!2774314 b!2774302))

(assert (= (and b!2774323 ((_ is HashMap!3709) (cache!3852 cacheUp!820))) b!2774314))

(assert (= start!268394 b!2774323))

(assert (= (and b!2774320 condMapEmpty!17342) mapIsEmpty!17341))

(assert (= (and b!2774320 (not condMapEmpty!17342)) mapNonEmpty!17341))

(assert (= b!2774305 b!2774320))

(assert (= b!2774304 b!2774305))

(assert (= b!2774324 b!2774304))

(assert (= (and b!2774308 ((_ is LongMap!3802) (v!33661 (underlying!7808 (cache!3851 cacheDown!939))))) b!2774324))

(assert (= b!2774322 b!2774308))

(assert (= (and b!2774310 ((_ is HashMap!3708) (cache!3851 cacheDown!939))) b!2774322))

(assert (= start!268394 b!2774310))

(assert (= (and start!268394 condSetEmpty!23010) setIsEmpty!23010))

(assert (= (and start!268394 (not condSetEmpty!23010)) setNonEmpty!23010))

(assert (= setNonEmpty!23010 b!2774307))

(assert (= start!268394 b!2774312))

(declare-fun m!3200913 () Bool)

(assert (=> b!2774312 m!3200913))

(declare-fun m!3200915 () Bool)

(assert (=> b!2774309 m!3200915))

(declare-fun m!3200917 () Bool)

(assert (=> mapNonEmpty!17342 m!3200917))

(declare-fun m!3200919 () Bool)

(assert (=> b!2774313 m!3200919))

(declare-fun m!3200921 () Bool)

(assert (=> b!2774316 m!3200921))

(declare-fun m!3200923 () Bool)

(assert (=> b!2774311 m!3200923))

(declare-fun m!3200925 () Bool)

(assert (=> b!2774311 m!3200925))

(declare-fun m!3200927 () Bool)

(assert (=> b!2774311 m!3200927))

(declare-fun m!3200929 () Bool)

(assert (=> b!2774311 m!3200929))

(declare-fun m!3200931 () Bool)

(assert (=> b!2774311 m!3200931))

(declare-fun m!3200933 () Bool)

(assert (=> b!2774311 m!3200933))

(declare-fun m!3200935 () Bool)

(assert (=> b!2774311 m!3200935))

(assert (=> b!2774319 m!3200915))

(declare-fun m!3200937 () Bool)

(assert (=> b!2774315 m!3200937))

(declare-fun m!3200939 () Bool)

(assert (=> b!2774315 m!3200939))

(declare-fun m!3200941 () Bool)

(assert (=> mapNonEmpty!17341 m!3200941))

(declare-fun m!3200943 () Bool)

(assert (=> b!2774305 m!3200943))

(declare-fun m!3200945 () Bool)

(assert (=> b!2774305 m!3200945))

(declare-fun m!3200947 () Bool)

(assert (=> b!2774303 m!3200947))

(declare-fun m!3200949 () Bool)

(assert (=> start!268394 m!3200949))

(declare-fun m!3200951 () Bool)

(assert (=> start!268394 m!3200951))

(declare-fun m!3200953 () Bool)

(assert (=> start!268394 m!3200953))

(declare-fun m!3200955 () Bool)

(assert (=> start!268394 m!3200955))

(declare-fun m!3200957 () Bool)

(assert (=> setNonEmpty!23010 m!3200957))

(declare-fun m!3200959 () Bool)

(assert (=> b!2774318 m!3200959))

(check-sat (not b!2774316) b_and!203081 (not b!2774313) (not b!2774318) (not b!2774307) (not setNonEmpty!23010) (not b!2774319) (not b_next!79047) b_and!203083 (not b!2774315) (not b_next!79049) (not b!2774309) (not b!2774312) (not b!2774311) (not b_next!79045) (not b!2774320) (not mapNonEmpty!17342) (not b!2774305) (not start!268394) (not mapNonEmpty!17341) b_and!203085 (not b!2774321) (not b!2774303) (not b_next!79051) b_and!203079)
(check-sat b_and!203081 (not b_next!79047) b_and!203083 (not b_next!79045) (not b_next!79049) b_and!203085 (not b_next!79051) b_and!203079)
