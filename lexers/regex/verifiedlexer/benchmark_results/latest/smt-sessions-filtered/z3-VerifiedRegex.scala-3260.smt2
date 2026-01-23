; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187860 () Bool)

(assert start!187860)

(declare-fun b!1874372 () Bool)

(declare-fun b_free!52077 () Bool)

(declare-fun b_next!52781 () Bool)

(assert (=> b!1874372 (= b_free!52077 (not b_next!52781))))

(declare-fun tp!533817 () Bool)

(declare-fun b_and!144363 () Bool)

(assert (=> b!1874372 (= tp!533817 b_and!144363)))

(declare-fun b!1874371 () Bool)

(declare-fun b_free!52079 () Bool)

(declare-fun b_next!52783 () Bool)

(assert (=> b!1874371 (= b_free!52079 (not b_next!52783))))

(declare-fun tp!533810 () Bool)

(declare-fun b_and!144365 () Bool)

(assert (=> b!1874371 (= tp!533810 b_and!144365)))

(declare-fun b!1874376 () Bool)

(declare-fun b_free!52081 () Bool)

(declare-fun b_next!52785 () Bool)

(assert (=> b!1874376 (= b_free!52081 (not b_next!52785))))

(declare-fun tp!533815 () Bool)

(declare-fun b_and!144367 () Bool)

(assert (=> b!1874376 (= tp!533815 b_and!144367)))

(declare-fun b!1874374 () Bool)

(declare-fun b_free!52083 () Bool)

(declare-fun b_next!52787 () Bool)

(assert (=> b!1874374 (= b_free!52083 (not b_next!52787))))

(declare-fun tp!533806 () Bool)

(declare-fun b_and!144369 () Bool)

(assert (=> b!1874374 (= tp!533806 b_and!144369)))

(declare-fun setIsEmpty!11548 () Bool)

(declare-fun setRes!11548 () Bool)

(assert (=> setIsEmpty!11548 setRes!11548))

(declare-fun mapIsEmpty!9002 () Bool)

(declare-fun mapRes!9002 () Bool)

(assert (=> mapIsEmpty!9002 mapRes!9002))

(declare-fun b!1874367 () Bool)

(declare-fun e!1195952 () Bool)

(declare-fun e!1195960 () Bool)

(assert (=> b!1874367 (= e!1195952 e!1195960)))

(declare-fun b!1874368 () Bool)

(declare-fun e!1195948 () Bool)

(declare-fun tp!533821 () Bool)

(declare-fun mapRes!9003 () Bool)

(assert (=> b!1874368 (= e!1195948 (and tp!533821 mapRes!9003))))

(declare-fun condMapEmpty!9003 () Bool)

(declare-datatypes ((C!10336 0))(
  ( (C!10337 (val!6056 Int)) )
))
(declare-datatypes ((Regex!5089 0))(
  ( (ElementMatch!5089 (c!305434 C!10336)) (Concat!8908 (regOne!10690 Regex!5089) (regTwo!10690 Regex!5089)) (EmptyExpr!5089) (Star!5089 (reg!5418 Regex!5089)) (EmptyLang!5089) (Union!5089 (regOne!10691 Regex!5089) (regTwo!10691 Regex!5089)) )
))
(declare-datatypes ((List!20904 0))(
  ( (Nil!20822) (Cons!20822 (h!26223 Regex!5089) (t!173121 List!20904)) )
))
(declare-datatypes ((Context!1954 0))(
  ( (Context!1955 (exprs!1477 List!20904)) )
))
(declare-datatypes ((tuple3!1952 0))(
  ( (tuple3!1953 (_1!11418 Regex!5089) (_2!11418 Context!1954) (_3!1440 C!10336)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19956 0))(
  ( (tuple2!19957 (_1!11419 tuple3!1952) (_2!11419 (InoxSet Context!1954))) )
))
(declare-datatypes ((List!20905 0))(
  ( (Nil!20823) (Cons!20823 (h!26224 tuple2!19956) (t!173122 List!20905)) )
))
(declare-datatypes ((array!6695 0))(
  ( (array!6696 (arr!2973 (Array (_ BitVec 32) List!20905)) (size!16519 (_ BitVec 32))) )
))
(declare-datatypes ((array!6697 0))(
  ( (array!6698 (arr!2974 (Array (_ BitVec 32) (_ BitVec 64))) (size!16520 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3882 0))(
  ( (LongMapFixedSize!3883 (defaultEntry!2306 Int) (mask!5750 (_ BitVec 32)) (extraKeys!2189 (_ BitVec 32)) (zeroValue!2199 List!20905) (minValue!2199 List!20905) (_size!3933 (_ BitVec 32)) (_keys!2238 array!6697) (_values!2221 array!6695) (_vacant!2002 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7589 0))(
  ( (Cell!7590 (v!26183 LongMapFixedSize!3882)) )
))
(declare-datatypes ((MutLongMap!1941 0))(
  ( (LongMap!1941 (underlying!4075 Cell!7589)) (MutLongMapExt!1940 (__x!13058 Int)) )
))
(declare-datatypes ((Hashable!1855 0))(
  ( (HashableExt!1854 (__x!13059 Int)) )
))
(declare-datatypes ((Cell!7591 0))(
  ( (Cell!7592 (v!26184 MutLongMap!1941)) )
))
(declare-datatypes ((MutableMap!1855 0))(
  ( (MutableMapExt!1854 (__x!13060 Int)) (HashMap!1855 (underlying!4076 Cell!7591) (hashF!3778 Hashable!1855) (_size!3934 (_ BitVec 32)) (defaultValue!2017 Int)) )
))
(declare-datatypes ((CacheDown!1150 0))(
  ( (CacheDown!1151 (cache!2236 MutableMap!1855)) )
))
(declare-fun cacheDown!927 () CacheDown!1150)

(declare-fun mapDefault!9002 () List!20905)

(assert (=> b!1874368 (= condMapEmpty!9003 (= (arr!2973 (_values!2221 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) ((as const (Array (_ BitVec 32) List!20905)) mapDefault!9002)))))

(declare-fun b!1874369 () Bool)

(declare-fun e!1195953 () Bool)

(declare-fun tp!533820 () Bool)

(assert (=> b!1874369 (= e!1195953 tp!533820)))

(declare-fun b!1874370 () Bool)

(declare-fun e!1195950 () Bool)

(declare-fun e!1195945 () Bool)

(declare-fun lt!719999 () MutLongMap!1941)

(get-info :version)

(assert (=> b!1874370 (= e!1195950 (and e!1195945 ((_ is LongMap!1941) lt!719999)))))

(assert (=> b!1874370 (= lt!719999 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))

(declare-fun e!1195957 () Bool)

(declare-fun e!1195946 () Bool)

(assert (=> b!1874371 (= e!1195957 (and e!1195946 tp!533810))))

(declare-fun tp!533814 () Bool)

(declare-datatypes ((tuple2!19958 0))(
  ( (tuple2!19959 (_1!11420 Context!1954) (_2!11420 C!10336)) )
))
(declare-datatypes ((tuple2!19960 0))(
  ( (tuple2!19961 (_1!11421 tuple2!19958) (_2!11421 (InoxSet Context!1954))) )
))
(declare-datatypes ((List!20906 0))(
  ( (Nil!20824) (Cons!20824 (h!26225 tuple2!19960) (t!173123 List!20906)) )
))
(declare-datatypes ((array!6699 0))(
  ( (array!6700 (arr!2975 (Array (_ BitVec 32) List!20906)) (size!16521 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3884 0))(
  ( (LongMapFixedSize!3885 (defaultEntry!2307 Int) (mask!5751 (_ BitVec 32)) (extraKeys!2190 (_ BitVec 32)) (zeroValue!2200 List!20906) (minValue!2200 List!20906) (_size!3935 (_ BitVec 32)) (_keys!2239 array!6697) (_values!2222 array!6699) (_vacant!2003 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7593 0))(
  ( (Cell!7594 (v!26185 LongMapFixedSize!3884)) )
))
(declare-datatypes ((MutLongMap!1942 0))(
  ( (LongMap!1942 (underlying!4077 Cell!7593)) (MutLongMapExt!1941 (__x!13061 Int)) )
))
(declare-datatypes ((Cell!7595 0))(
  ( (Cell!7596 (v!26186 MutLongMap!1942)) )
))
(declare-datatypes ((Hashable!1856 0))(
  ( (HashableExt!1855 (__x!13062 Int)) )
))
(declare-datatypes ((MutableMap!1856 0))(
  ( (MutableMapExt!1855 (__x!13063 Int)) (HashMap!1856 (underlying!4078 Cell!7595) (hashF!3779 Hashable!1856) (_size!3936 (_ BitVec 32)) (defaultValue!2018 Int)) )
))
(declare-datatypes ((CacheUp!1154 0))(
  ( (CacheUp!1155 (cache!2237 MutableMap!1856)) )
))
(declare-fun cacheUp!808 () CacheUp!1154)

(declare-fun e!1195961 () Bool)

(declare-fun tp!533816 () Bool)

(declare-fun e!1195947 () Bool)

(declare-fun array_inv!2138 (array!6697) Bool)

(declare-fun array_inv!2139 (array!6699) Bool)

(assert (=> b!1874372 (= e!1195947 (and tp!533817 tp!533814 tp!533816 (array_inv!2138 (_keys!2239 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) (array_inv!2139 (_values!2222 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) e!1195961))))

(declare-fun b!1874373 () Bool)

(declare-fun tp!533818 () Bool)

(assert (=> b!1874373 (= e!1195961 (and tp!533818 mapRes!9002))))

(declare-fun condMapEmpty!9002 () Bool)

(declare-fun mapDefault!9003 () List!20906)

(assert (=> b!1874373 (= condMapEmpty!9002 (= (arr!2975 (_values!2222 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) ((as const (Array (_ BitVec 32) List!20906)) mapDefault!9003)))))

(declare-fun e!1195959 () Bool)

(assert (=> b!1874374 (= e!1195959 (and e!1195950 tp!533806))))

(declare-fun b!1874375 () Bool)

(declare-fun e!1195958 () Bool)

(declare-datatypes ((List!20907 0))(
  ( (Nil!20825) (Cons!20825 (h!26226 C!10336) (t!173124 List!20907)) )
))
(declare-fun input!3792 () List!20907)

(declare-fun size!16522 (List!20907) Int)

(declare-fun tail!2883 (List!20907) List!20907)

(assert (=> b!1874375 (= e!1195958 (>= (size!16522 (tail!2883 input!3792)) (size!16522 input!3792)))))

(declare-fun z!679 () (InoxSet Context!1954))

(declare-datatypes ((tuple3!1954 0))(
  ( (tuple3!1955 (_1!11422 (InoxSet Context!1954)) (_2!11422 CacheUp!1154) (_3!1441 CacheDown!1150)) )
))
(declare-fun lt!720000 () tuple3!1954)

(declare-fun derivationStepZipperMem!4 ((InoxSet Context!1954) C!10336 CacheUp!1154 CacheDown!1150) tuple3!1954)

(declare-fun head!4354 (List!20907) C!10336)

(assert (=> b!1874375 (= lt!720000 (derivationStepZipperMem!4 z!679 (head!4354 input!3792) cacheUp!808 cacheDown!927))))

(declare-fun tp!533809 () Bool)

(declare-fun tp!533811 () Bool)

(declare-fun e!1195954 () Bool)

(declare-fun array_inv!2140 (array!6695) Bool)

(assert (=> b!1874376 (= e!1195954 (and tp!533815 tp!533811 tp!533809 (array_inv!2138 (_keys!2238 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) (array_inv!2140 (_values!2221 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) e!1195948))))

(declare-fun mapNonEmpty!9002 () Bool)

(declare-fun tp!533819 () Bool)

(declare-fun tp!533805 () Bool)

(assert (=> mapNonEmpty!9002 (= mapRes!9003 (and tp!533819 tp!533805))))

(declare-fun mapKey!9002 () (_ BitVec 32))

(declare-fun mapRest!9002 () (Array (_ BitVec 32) List!20905))

(declare-fun mapValue!9002 () List!20905)

(assert (=> mapNonEmpty!9002 (= (arr!2973 (_values!2221 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) (store mapRest!9002 mapKey!9002 mapValue!9002))))

(declare-fun b!1874377 () Bool)

(declare-fun e!1195963 () Bool)

(assert (=> b!1874377 (= e!1195963 e!1195957)))

(declare-fun b!1874378 () Bool)

(declare-fun e!1195949 () Bool)

(declare-fun tp_is_empty!8879 () Bool)

(declare-fun tp!533812 () Bool)

(assert (=> b!1874378 (= e!1195949 (and tp_is_empty!8879 tp!533812))))

(declare-fun b!1874379 () Bool)

(declare-fun e!1195962 () Bool)

(assert (=> b!1874379 (= e!1195962 e!1195959)))

(declare-fun mapIsEmpty!9003 () Bool)

(assert (=> mapIsEmpty!9003 mapRes!9003))

(declare-fun res!838437 () Bool)

(assert (=> start!187860 (=> (not res!838437) (not e!1195958))))

(declare-fun isEmpty!12966 (List!20907) Bool)

(assert (=> start!187860 (= res!838437 (not (isEmpty!12966 input!3792)))))

(assert (=> start!187860 e!1195958))

(assert (=> start!187860 e!1195949))

(declare-fun condSetEmpty!11548 () Bool)

(assert (=> start!187860 (= condSetEmpty!11548 (= z!679 ((as const (Array Context!1954 Bool)) false)))))

(assert (=> start!187860 setRes!11548))

(declare-fun inv!27639 (CacheUp!1154) Bool)

(assert (=> start!187860 (and (inv!27639 cacheUp!808) e!1195963)))

(declare-fun inv!27640 (CacheDown!1150) Bool)

(assert (=> start!187860 (and (inv!27640 cacheDown!927) e!1195962)))

(declare-fun mapNonEmpty!9003 () Bool)

(declare-fun tp!533808 () Bool)

(declare-fun tp!533807 () Bool)

(assert (=> mapNonEmpty!9003 (= mapRes!9002 (and tp!533808 tp!533807))))

(declare-fun mapRest!9003 () (Array (_ BitVec 32) List!20906))

(declare-fun mapValue!9003 () List!20906)

(declare-fun mapKey!9003 () (_ BitVec 32))

(assert (=> mapNonEmpty!9003 (= (arr!2975 (_values!2222 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) (store mapRest!9003 mapKey!9003 mapValue!9003))))

(declare-fun b!1874380 () Bool)

(declare-fun e!1195955 () Bool)

(assert (=> b!1874380 (= e!1195945 e!1195955)))

(declare-fun b!1874381 () Bool)

(declare-fun lt!719998 () MutLongMap!1942)

(assert (=> b!1874381 (= e!1195946 (and e!1195952 ((_ is LongMap!1942) lt!719998)))))

(assert (=> b!1874381 (= lt!719998 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))

(declare-fun b!1874382 () Bool)

(assert (=> b!1874382 (= e!1195960 e!1195947)))

(declare-fun b!1874383 () Bool)

(assert (=> b!1874383 (= e!1195955 e!1195954)))

(declare-fun setElem!11548 () Context!1954)

(declare-fun tp!533813 () Bool)

(declare-fun setNonEmpty!11548 () Bool)

(declare-fun inv!27641 (Context!1954) Bool)

(assert (=> setNonEmpty!11548 (= setRes!11548 (and tp!533813 (inv!27641 setElem!11548) e!1195953))))

(declare-fun setRest!11548 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11548 (= z!679 ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11548 true) setRest!11548))))

(assert (= (and start!187860 res!838437) b!1874375))

(assert (= (and start!187860 ((_ is Cons!20825) input!3792)) b!1874378))

(assert (= (and start!187860 condSetEmpty!11548) setIsEmpty!11548))

(assert (= (and start!187860 (not condSetEmpty!11548)) setNonEmpty!11548))

(assert (= setNonEmpty!11548 b!1874369))

(assert (= (and b!1874373 condMapEmpty!9002) mapIsEmpty!9002))

(assert (= (and b!1874373 (not condMapEmpty!9002)) mapNonEmpty!9003))

(assert (= b!1874372 b!1874373))

(assert (= b!1874382 b!1874372))

(assert (= b!1874367 b!1874382))

(assert (= (and b!1874381 ((_ is LongMap!1942) (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))) b!1874367))

(assert (= b!1874371 b!1874381))

(assert (= (and b!1874377 ((_ is HashMap!1856) (cache!2237 cacheUp!808))) b!1874371))

(assert (= start!187860 b!1874377))

(assert (= (and b!1874368 condMapEmpty!9003) mapIsEmpty!9003))

(assert (= (and b!1874368 (not condMapEmpty!9003)) mapNonEmpty!9002))

(assert (= b!1874376 b!1874368))

(assert (= b!1874383 b!1874376))

(assert (= b!1874380 b!1874383))

(assert (= (and b!1874370 ((_ is LongMap!1941) (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))) b!1874380))

(assert (= b!1874374 b!1874370))

(assert (= (and b!1874379 ((_ is HashMap!1855) (cache!2236 cacheDown!927))) b!1874374))

(assert (= start!187860 b!1874379))

(declare-fun m!2299339 () Bool)

(assert (=> mapNonEmpty!9002 m!2299339))

(declare-fun m!2299341 () Bool)

(assert (=> start!187860 m!2299341))

(declare-fun m!2299343 () Bool)

(assert (=> start!187860 m!2299343))

(declare-fun m!2299345 () Bool)

(assert (=> start!187860 m!2299345))

(declare-fun m!2299347 () Bool)

(assert (=> b!1874376 m!2299347))

(declare-fun m!2299349 () Bool)

(assert (=> b!1874376 m!2299349))

(declare-fun m!2299351 () Bool)

(assert (=> b!1874375 m!2299351))

(declare-fun m!2299353 () Bool)

(assert (=> b!1874375 m!2299353))

(declare-fun m!2299355 () Bool)

(assert (=> b!1874375 m!2299355))

(declare-fun m!2299357 () Bool)

(assert (=> b!1874375 m!2299357))

(declare-fun m!2299359 () Bool)

(assert (=> b!1874375 m!2299359))

(assert (=> b!1874375 m!2299357))

(assert (=> b!1874375 m!2299351))

(declare-fun m!2299361 () Bool)

(assert (=> b!1874372 m!2299361))

(declare-fun m!2299363 () Bool)

(assert (=> b!1874372 m!2299363))

(declare-fun m!2299365 () Bool)

(assert (=> setNonEmpty!11548 m!2299365))

(declare-fun m!2299367 () Bool)

(assert (=> mapNonEmpty!9003 m!2299367))

(check-sat (not b!1874369) tp_is_empty!8879 (not b_next!52783) (not start!187860) (not mapNonEmpty!9003) b_and!144365 (not b!1874376) (not b!1874372) b_and!144369 (not b!1874368) (not b!1874373) (not b!1874375) (not b_next!52785) (not b_next!52781) (not b!1874378) (not setNonEmpty!11548) b_and!144363 (not b_next!52787) b_and!144367 (not mapNonEmpty!9002))
(check-sat (not b_next!52783) b_and!144365 b_and!144369 b_and!144367 (not b_next!52785) (not b_next!52781) b_and!144363 (not b_next!52787))
(get-model)

(declare-fun d!572753 () Bool)

(assert (=> d!572753 (= (isEmpty!12966 input!3792) ((_ is Nil!20825) input!3792))))

(assert (=> start!187860 d!572753))

(declare-fun d!572755 () Bool)

(declare-fun res!838440 () Bool)

(declare-fun e!1195966 () Bool)

(assert (=> d!572755 (=> (not res!838440) (not e!1195966))))

(assert (=> d!572755 (= res!838440 ((_ is HashMap!1856) (cache!2237 cacheUp!808)))))

(assert (=> d!572755 (= (inv!27639 cacheUp!808) e!1195966)))

(declare-fun b!1874386 () Bool)

(declare-fun validCacheMapUp!180 (MutableMap!1856) Bool)

(assert (=> b!1874386 (= e!1195966 (validCacheMapUp!180 (cache!2237 cacheUp!808)))))

(assert (= (and d!572755 res!838440) b!1874386))

(declare-fun m!2299369 () Bool)

(assert (=> b!1874386 m!2299369))

(assert (=> start!187860 d!572755))

(declare-fun d!572757 () Bool)

(declare-fun res!838443 () Bool)

(declare-fun e!1195969 () Bool)

(assert (=> d!572757 (=> (not res!838443) (not e!1195969))))

(assert (=> d!572757 (= res!838443 ((_ is HashMap!1855) (cache!2236 cacheDown!927)))))

(assert (=> d!572757 (= (inv!27640 cacheDown!927) e!1195969)))

(declare-fun b!1874389 () Bool)

(declare-fun validCacheMapDown!178 (MutableMap!1855) Bool)

(assert (=> b!1874389 (= e!1195969 (validCacheMapDown!178 (cache!2236 cacheDown!927)))))

(assert (= (and d!572757 res!838443) b!1874389))

(declare-fun m!2299371 () Bool)

(assert (=> b!1874389 m!2299371))

(assert (=> start!187860 d!572757))

(declare-fun d!572759 () Bool)

(assert (=> d!572759 (= (array_inv!2138 (_keys!2239 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) (bvsge (size!16520 (_keys!2239 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874372 d!572759))

(declare-fun d!572761 () Bool)

(assert (=> d!572761 (= (array_inv!2139 (_values!2222 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) (bvsge (size!16521 (_values!2222 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874372 d!572761))

(declare-fun d!572763 () Bool)

(assert (=> d!572763 (= (array_inv!2138 (_keys!2238 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) (bvsge (size!16520 (_keys!2238 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874376 d!572763))

(declare-fun d!572765 () Bool)

(assert (=> d!572765 (= (array_inv!2140 (_values!2221 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) (bvsge (size!16519 (_values!2221 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874376 d!572765))

(declare-fun d!572767 () Bool)

(declare-fun lambda!73789 () Int)

(declare-fun forall!4420 (List!20904 Int) Bool)

(assert (=> d!572767 (= (inv!27641 setElem!11548) (forall!4420 (exprs!1477 setElem!11548) lambda!73789))))

(declare-fun bs!412154 () Bool)

(assert (= bs!412154 d!572767))

(declare-fun m!2299373 () Bool)

(assert (=> bs!412154 m!2299373))

(assert (=> setNonEmpty!11548 d!572767))

(declare-fun d!572769 () Bool)

(assert (=> d!572769 (= (tail!2883 input!3792) (t!173124 input!3792))))

(assert (=> b!1874375 d!572769))

(declare-fun d!572771 () Bool)

(declare-fun lt!720003 () Int)

(assert (=> d!572771 (>= lt!720003 0)))

(declare-fun e!1195972 () Int)

(assert (=> d!572771 (= lt!720003 e!1195972)))

(declare-fun c!305437 () Bool)

(assert (=> d!572771 (= c!305437 ((_ is Nil!20825) input!3792))))

(assert (=> d!572771 (= (size!16522 input!3792) lt!720003)))

(declare-fun b!1874394 () Bool)

(assert (=> b!1874394 (= e!1195972 0)))

(declare-fun b!1874395 () Bool)

(assert (=> b!1874395 (= e!1195972 (+ 1 (size!16522 (t!173124 input!3792))))))

(assert (= (and d!572771 c!305437) b!1874394))

(assert (= (and d!572771 (not c!305437)) b!1874395))

(declare-fun m!2299375 () Bool)

(assert (=> b!1874395 m!2299375))

(assert (=> b!1874375 d!572771))

(declare-fun d!572773 () Bool)

(declare-fun e!1195975 () Bool)

(assert (=> d!572773 e!1195975))

(declare-fun res!838448 () Bool)

(assert (=> d!572773 (=> (not res!838448) (not e!1195975))))

(declare-fun lt!720006 () tuple3!1954)

(declare-fun derivationStepZipper!78 ((InoxSet Context!1954) C!10336) (InoxSet Context!1954))

(assert (=> d!572773 (= res!838448 (= (_1!11422 lt!720006) (derivationStepZipper!78 z!679 (head!4354 input!3792))))))

(declare-fun choose!11767 ((InoxSet Context!1954) C!10336 CacheUp!1154 CacheDown!1150) tuple3!1954)

(assert (=> d!572773 (= lt!720006 (choose!11767 z!679 (head!4354 input!3792) cacheUp!808 cacheDown!927))))

(assert (=> d!572773 (= (derivationStepZipperMem!4 z!679 (head!4354 input!3792) cacheUp!808 cacheDown!927) lt!720006)))

(declare-fun b!1874400 () Bool)

(declare-fun res!838449 () Bool)

(assert (=> b!1874400 (=> (not res!838449) (not e!1195975))))

(declare-fun valid!1563 (CacheUp!1154) Bool)

(assert (=> b!1874400 (= res!838449 (valid!1563 (_2!11422 lt!720006)))))

(declare-fun b!1874401 () Bool)

(declare-fun valid!1564 (CacheDown!1150) Bool)

(assert (=> b!1874401 (= e!1195975 (valid!1564 (_3!1441 lt!720006)))))

(assert (= (and d!572773 res!838448) b!1874400))

(assert (= (and b!1874400 res!838449) b!1874401))

(assert (=> d!572773 m!2299357))

(declare-fun m!2299377 () Bool)

(assert (=> d!572773 m!2299377))

(assert (=> d!572773 m!2299357))

(declare-fun m!2299379 () Bool)

(assert (=> d!572773 m!2299379))

(declare-fun m!2299381 () Bool)

(assert (=> b!1874400 m!2299381))

(declare-fun m!2299383 () Bool)

(assert (=> b!1874401 m!2299383))

(assert (=> b!1874375 d!572773))

(declare-fun d!572775 () Bool)

(assert (=> d!572775 (= (head!4354 input!3792) (h!26226 input!3792))))

(assert (=> b!1874375 d!572775))

(declare-fun d!572777 () Bool)

(declare-fun lt!720007 () Int)

(assert (=> d!572777 (>= lt!720007 0)))

(declare-fun e!1195976 () Int)

(assert (=> d!572777 (= lt!720007 e!1195976)))

(declare-fun c!305438 () Bool)

(assert (=> d!572777 (= c!305438 ((_ is Nil!20825) (tail!2883 input!3792)))))

(assert (=> d!572777 (= (size!16522 (tail!2883 input!3792)) lt!720007)))

(declare-fun b!1874402 () Bool)

(assert (=> b!1874402 (= e!1195976 0)))

(declare-fun b!1874403 () Bool)

(assert (=> b!1874403 (= e!1195976 (+ 1 (size!16522 (t!173124 (tail!2883 input!3792)))))))

(assert (= (and d!572777 c!305438) b!1874402))

(assert (= (and d!572777 (not c!305438)) b!1874403))

(declare-fun m!2299385 () Bool)

(assert (=> b!1874403 m!2299385))

(assert (=> b!1874375 d!572777))

(declare-fun b!1874418 () Bool)

(declare-fun e!1195991 () Bool)

(declare-fun tp!533846 () Bool)

(assert (=> b!1874418 (= e!1195991 tp!533846)))

(declare-fun setNonEmpty!11553 () Bool)

(declare-fun setRes!11553 () Bool)

(declare-fun setElem!11553 () Context!1954)

(declare-fun tp!533852 () Bool)

(assert (=> setNonEmpty!11553 (= setRes!11553 (and tp!533852 (inv!27641 setElem!11553) e!1195991))))

(declare-fun mapDefault!9006 () List!20905)

(declare-fun setRest!11553 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11553 (= (_2!11419 (h!26224 mapDefault!9006)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11553 true) setRest!11553))))

(declare-fun mapIsEmpty!9006 () Bool)

(declare-fun mapRes!9006 () Bool)

(assert (=> mapIsEmpty!9006 mapRes!9006))

(declare-fun setIsEmpty!11553 () Bool)

(declare-fun setRes!11554 () Bool)

(assert (=> setIsEmpty!11553 setRes!11554))

(declare-fun condMapEmpty!9006 () Bool)

(assert (=> mapNonEmpty!9002 (= condMapEmpty!9006 (= mapRest!9002 ((as const (Array (_ BitVec 32) List!20905)) mapDefault!9006)))))

(declare-fun e!1195990 () Bool)

(assert (=> mapNonEmpty!9002 (= tp!533819 (and e!1195990 mapRes!9006))))

(declare-fun b!1874419 () Bool)

(declare-fun e!1195993 () Bool)

(declare-fun tp!533845 () Bool)

(assert (=> b!1874419 (= e!1195993 tp!533845)))

(declare-fun b!1874420 () Bool)

(declare-fun e!1195992 () Bool)

(declare-fun tp!533849 () Bool)

(assert (=> b!1874420 (= e!1195992 tp!533849)))

(declare-fun setNonEmpty!11554 () Bool)

(declare-fun tp!533847 () Bool)

(declare-fun setElem!11554 () Context!1954)

(assert (=> setNonEmpty!11554 (= setRes!11554 (and tp!533847 (inv!27641 setElem!11554) e!1195993))))

(declare-fun mapValue!9006 () List!20905)

(declare-fun setRest!11554 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11554 (= (_2!11419 (h!26224 mapValue!9006)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11554 true) setRest!11554))))

(declare-fun b!1874421 () Bool)

(declare-fun e!1195994 () Bool)

(declare-fun tp!533854 () Bool)

(assert (=> b!1874421 (= e!1195994 tp!533854)))

(declare-fun tp!533850 () Bool)

(declare-fun tp!533853 () Bool)

(declare-fun e!1195989 () Bool)

(declare-fun b!1874422 () Bool)

(assert (=> b!1874422 (= e!1195989 (and tp!533850 (inv!27641 (_2!11418 (_1!11419 (h!26224 mapValue!9006)))) e!1195994 tp_is_empty!8879 setRes!11554 tp!533853))))

(declare-fun condSetEmpty!11554 () Bool)

(assert (=> b!1874422 (= condSetEmpty!11554 (= (_2!11419 (h!26224 mapValue!9006)) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun mapNonEmpty!9006 () Bool)

(declare-fun tp!533851 () Bool)

(assert (=> mapNonEmpty!9006 (= mapRes!9006 (and tp!533851 e!1195989))))

(declare-fun mapRest!9006 () (Array (_ BitVec 32) List!20905))

(declare-fun mapKey!9006 () (_ BitVec 32))

(assert (=> mapNonEmpty!9006 (= mapRest!9002 (store mapRest!9006 mapKey!9006 mapValue!9006))))

(declare-fun tp!533848 () Bool)

(declare-fun b!1874423 () Bool)

(declare-fun tp!533844 () Bool)

(assert (=> b!1874423 (= e!1195990 (and tp!533844 (inv!27641 (_2!11418 (_1!11419 (h!26224 mapDefault!9006)))) e!1195992 tp_is_empty!8879 setRes!11553 tp!533848))))

(declare-fun condSetEmpty!11553 () Bool)

(assert (=> b!1874423 (= condSetEmpty!11553 (= (_2!11419 (h!26224 mapDefault!9006)) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun setIsEmpty!11554 () Bool)

(assert (=> setIsEmpty!11554 setRes!11553))

(assert (= (and mapNonEmpty!9002 condMapEmpty!9006) mapIsEmpty!9006))

(assert (= (and mapNonEmpty!9002 (not condMapEmpty!9006)) mapNonEmpty!9006))

(assert (= b!1874422 b!1874421))

(assert (= (and b!1874422 condSetEmpty!11554) setIsEmpty!11553))

(assert (= (and b!1874422 (not condSetEmpty!11554)) setNonEmpty!11554))

(assert (= setNonEmpty!11554 b!1874419))

(assert (= (and mapNonEmpty!9006 ((_ is Cons!20823) mapValue!9006)) b!1874422))

(assert (= b!1874423 b!1874420))

(assert (= (and b!1874423 condSetEmpty!11553) setIsEmpty!11554))

(assert (= (and b!1874423 (not condSetEmpty!11553)) setNonEmpty!11553))

(assert (= setNonEmpty!11553 b!1874418))

(assert (= (and mapNonEmpty!9002 ((_ is Cons!20823) mapDefault!9006)) b!1874423))

(declare-fun m!2299387 () Bool)

(assert (=> setNonEmpty!11554 m!2299387))

(declare-fun m!2299389 () Bool)

(assert (=> b!1874423 m!2299389))

(declare-fun m!2299391 () Bool)

(assert (=> mapNonEmpty!9006 m!2299391))

(declare-fun m!2299393 () Bool)

(assert (=> b!1874422 m!2299393))

(declare-fun m!2299395 () Bool)

(assert (=> setNonEmpty!11553 m!2299395))

(declare-fun b!1874432 () Bool)

(declare-fun e!1196003 () Bool)

(declare-fun tp!533865 () Bool)

(declare-fun e!1196001 () Bool)

(declare-fun setRes!11557 () Bool)

(declare-fun tp!533866 () Bool)

(assert (=> b!1874432 (= e!1196001 (and tp!533865 (inv!27641 (_2!11418 (_1!11419 (h!26224 mapValue!9002)))) e!1196003 tp_is_empty!8879 setRes!11557 tp!533866))))

(declare-fun condSetEmpty!11557 () Bool)

(assert (=> b!1874432 (= condSetEmpty!11557 (= (_2!11419 (h!26224 mapValue!9002)) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun setElem!11557 () Context!1954)

(declare-fun setNonEmpty!11557 () Bool)

(declare-fun tp!533869 () Bool)

(declare-fun e!1196002 () Bool)

(assert (=> setNonEmpty!11557 (= setRes!11557 (and tp!533869 (inv!27641 setElem!11557) e!1196002))))

(declare-fun setRest!11557 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11557 (= (_2!11419 (h!26224 mapValue!9002)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11557 true) setRest!11557))))

(declare-fun b!1874433 () Bool)

(declare-fun tp!533867 () Bool)

(assert (=> b!1874433 (= e!1196002 tp!533867)))

(declare-fun b!1874434 () Bool)

(declare-fun tp!533868 () Bool)

(assert (=> b!1874434 (= e!1196003 tp!533868)))

(declare-fun setIsEmpty!11557 () Bool)

(assert (=> setIsEmpty!11557 setRes!11557))

(assert (=> mapNonEmpty!9002 (= tp!533805 e!1196001)))

(assert (= b!1874432 b!1874434))

(assert (= (and b!1874432 condSetEmpty!11557) setIsEmpty!11557))

(assert (= (and b!1874432 (not condSetEmpty!11557)) setNonEmpty!11557))

(assert (= setNonEmpty!11557 b!1874433))

(assert (= (and mapNonEmpty!9002 ((_ is Cons!20823) mapValue!9002)) b!1874432))

(declare-fun m!2299397 () Bool)

(assert (=> b!1874432 m!2299397))

(declare-fun m!2299399 () Bool)

(assert (=> setNonEmpty!11557 m!2299399))

(declare-fun b!1874443 () Bool)

(declare-fun e!1196011 () Bool)

(declare-fun tp!533880 () Bool)

(assert (=> b!1874443 (= e!1196011 tp!533880)))

(declare-fun setRes!11560 () Bool)

(declare-fun e!1196010 () Bool)

(declare-fun e!1196012 () Bool)

(declare-fun b!1874444 () Bool)

(declare-fun tp!533879 () Bool)

(assert (=> b!1874444 (= e!1196012 (and (inv!27641 (_1!11420 (_1!11421 (h!26225 (zeroValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))))) e!1196010 tp_is_empty!8879 setRes!11560 tp!533879))))

(declare-fun condSetEmpty!11560 () Bool)

(assert (=> b!1874444 (= condSetEmpty!11560 (= (_2!11421 (h!26225 (zeroValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun tp!533881 () Bool)

(declare-fun setNonEmpty!11560 () Bool)

(declare-fun setElem!11560 () Context!1954)

(assert (=> setNonEmpty!11560 (= setRes!11560 (and tp!533881 (inv!27641 setElem!11560) e!1196011))))

(declare-fun setRest!11560 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11560 (= (_2!11421 (h!26225 (zeroValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11560 true) setRest!11560))))

(assert (=> b!1874372 (= tp!533814 e!1196012)))

(declare-fun b!1874445 () Bool)

(declare-fun tp!533878 () Bool)

(assert (=> b!1874445 (= e!1196010 tp!533878)))

(declare-fun setIsEmpty!11560 () Bool)

(assert (=> setIsEmpty!11560 setRes!11560))

(assert (= b!1874444 b!1874445))

(assert (= (and b!1874444 condSetEmpty!11560) setIsEmpty!11560))

(assert (= (and b!1874444 (not condSetEmpty!11560)) setNonEmpty!11560))

(assert (= setNonEmpty!11560 b!1874443))

(assert (= (and b!1874372 ((_ is Cons!20824) (zeroValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))) b!1874444))

(declare-fun m!2299401 () Bool)

(assert (=> b!1874444 m!2299401))

(declare-fun m!2299403 () Bool)

(assert (=> setNonEmpty!11560 m!2299403))

(declare-fun b!1874446 () Bool)

(declare-fun e!1196014 () Bool)

(declare-fun tp!533884 () Bool)

(assert (=> b!1874446 (= e!1196014 tp!533884)))

(declare-fun b!1874447 () Bool)

(declare-fun e!1196013 () Bool)

(declare-fun setRes!11561 () Bool)

(declare-fun e!1196015 () Bool)

(declare-fun tp!533883 () Bool)

(assert (=> b!1874447 (= e!1196015 (and (inv!27641 (_1!11420 (_1!11421 (h!26225 (minValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))))) e!1196013 tp_is_empty!8879 setRes!11561 tp!533883))))

(declare-fun condSetEmpty!11561 () Bool)

(assert (=> b!1874447 (= condSetEmpty!11561 (= (_2!11421 (h!26225 (minValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun tp!533885 () Bool)

(declare-fun setNonEmpty!11561 () Bool)

(declare-fun setElem!11561 () Context!1954)

(assert (=> setNonEmpty!11561 (= setRes!11561 (and tp!533885 (inv!27641 setElem!11561) e!1196014))))

(declare-fun setRest!11561 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11561 (= (_2!11421 (h!26225 (minValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11561 true) setRest!11561))))

(assert (=> b!1874372 (= tp!533816 e!1196015)))

(declare-fun b!1874448 () Bool)

(declare-fun tp!533882 () Bool)

(assert (=> b!1874448 (= e!1196013 tp!533882)))

(declare-fun setIsEmpty!11561 () Bool)

(assert (=> setIsEmpty!11561 setRes!11561))

(assert (= b!1874447 b!1874448))

(assert (= (and b!1874447 condSetEmpty!11561) setIsEmpty!11561))

(assert (= (and b!1874447 (not condSetEmpty!11561)) setNonEmpty!11561))

(assert (= setNonEmpty!11561 b!1874446))

(assert (= (and b!1874372 ((_ is Cons!20824) (minValue!2200 (v!26185 (underlying!4077 (v!26186 (underlying!4078 (cache!2237 cacheUp!808)))))))) b!1874447))

(declare-fun m!2299405 () Bool)

(assert (=> b!1874447 m!2299405))

(declare-fun m!2299407 () Bool)

(assert (=> setNonEmpty!11561 m!2299407))

(declare-fun e!1196016 () Bool)

(declare-fun b!1874449 () Bool)

(declare-fun tp!533886 () Bool)

(declare-fun tp!533887 () Bool)

(declare-fun setRes!11562 () Bool)

(declare-fun e!1196018 () Bool)

(assert (=> b!1874449 (= e!1196016 (and tp!533886 (inv!27641 (_2!11418 (_1!11419 (h!26224 (zeroValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))))) e!1196018 tp_is_empty!8879 setRes!11562 tp!533887))))

(declare-fun condSetEmpty!11562 () Bool)

(assert (=> b!1874449 (= condSetEmpty!11562 (= (_2!11419 (h!26224 (zeroValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun e!1196017 () Bool)

(declare-fun tp!533890 () Bool)

(declare-fun setNonEmpty!11562 () Bool)

(declare-fun setElem!11562 () Context!1954)

(assert (=> setNonEmpty!11562 (= setRes!11562 (and tp!533890 (inv!27641 setElem!11562) e!1196017))))

(declare-fun setRest!11562 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11562 (= (_2!11419 (h!26224 (zeroValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11562 true) setRest!11562))))

(declare-fun b!1874450 () Bool)

(declare-fun tp!533888 () Bool)

(assert (=> b!1874450 (= e!1196017 tp!533888)))

(declare-fun b!1874451 () Bool)

(declare-fun tp!533889 () Bool)

(assert (=> b!1874451 (= e!1196018 tp!533889)))

(declare-fun setIsEmpty!11562 () Bool)

(assert (=> setIsEmpty!11562 setRes!11562))

(assert (=> b!1874376 (= tp!533811 e!1196016)))

(assert (= b!1874449 b!1874451))

(assert (= (and b!1874449 condSetEmpty!11562) setIsEmpty!11562))

(assert (= (and b!1874449 (not condSetEmpty!11562)) setNonEmpty!11562))

(assert (= setNonEmpty!11562 b!1874450))

(assert (= (and b!1874376 ((_ is Cons!20823) (zeroValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))) b!1874449))

(declare-fun m!2299409 () Bool)

(assert (=> b!1874449 m!2299409))

(declare-fun m!2299411 () Bool)

(assert (=> setNonEmpty!11562 m!2299411))

(declare-fun b!1874452 () Bool)

(declare-fun setRes!11563 () Bool)

(declare-fun tp!533891 () Bool)

(declare-fun tp!533892 () Bool)

(declare-fun e!1196021 () Bool)

(declare-fun e!1196019 () Bool)

(assert (=> b!1874452 (= e!1196019 (and tp!533891 (inv!27641 (_2!11418 (_1!11419 (h!26224 (minValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))))) e!1196021 tp_is_empty!8879 setRes!11563 tp!533892))))

(declare-fun condSetEmpty!11563 () Bool)

(assert (=> b!1874452 (= condSetEmpty!11563 (= (_2!11419 (h!26224 (minValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun setElem!11563 () Context!1954)

(declare-fun tp!533895 () Bool)

(declare-fun setNonEmpty!11563 () Bool)

(declare-fun e!1196020 () Bool)

(assert (=> setNonEmpty!11563 (= setRes!11563 (and tp!533895 (inv!27641 setElem!11563) e!1196020))))

(declare-fun setRest!11563 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11563 (= (_2!11419 (h!26224 (minValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11563 true) setRest!11563))))

(declare-fun b!1874453 () Bool)

(declare-fun tp!533893 () Bool)

(assert (=> b!1874453 (= e!1196020 tp!533893)))

(declare-fun b!1874454 () Bool)

(declare-fun tp!533894 () Bool)

(assert (=> b!1874454 (= e!1196021 tp!533894)))

(declare-fun setIsEmpty!11563 () Bool)

(assert (=> setIsEmpty!11563 setRes!11563))

(assert (=> b!1874376 (= tp!533809 e!1196019)))

(assert (= b!1874452 b!1874454))

(assert (= (and b!1874452 condSetEmpty!11563) setIsEmpty!11563))

(assert (= (and b!1874452 (not condSetEmpty!11563)) setNonEmpty!11563))

(assert (= setNonEmpty!11563 b!1874453))

(assert (= (and b!1874376 ((_ is Cons!20823) (minValue!2199 (v!26183 (underlying!4075 (v!26184 (underlying!4076 (cache!2236 cacheDown!927)))))))) b!1874452))

(declare-fun m!2299413 () Bool)

(assert (=> b!1874452 m!2299413))

(declare-fun m!2299415 () Bool)

(assert (=> setNonEmpty!11563 m!2299415))

(declare-fun condSetEmpty!11566 () Bool)

(assert (=> setNonEmpty!11548 (= condSetEmpty!11566 (= setRest!11548 ((as const (Array Context!1954 Bool)) false)))))

(declare-fun setRes!11566 () Bool)

(assert (=> setNonEmpty!11548 (= tp!533813 setRes!11566)))

(declare-fun setIsEmpty!11566 () Bool)

(assert (=> setIsEmpty!11566 setRes!11566))

(declare-fun e!1196024 () Bool)

(declare-fun setElem!11566 () Context!1954)

(declare-fun tp!533901 () Bool)

(declare-fun setNonEmpty!11566 () Bool)

(assert (=> setNonEmpty!11566 (= setRes!11566 (and tp!533901 (inv!27641 setElem!11566) e!1196024))))

(declare-fun setRest!11566 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11566 (= setRest!11548 ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11566 true) setRest!11566))))

(declare-fun b!1874459 () Bool)

(declare-fun tp!533900 () Bool)

(assert (=> b!1874459 (= e!1196024 tp!533900)))

(assert (= (and setNonEmpty!11548 condSetEmpty!11566) setIsEmpty!11566))

(assert (= (and setNonEmpty!11548 (not condSetEmpty!11566)) setNonEmpty!11566))

(assert (= setNonEmpty!11566 b!1874459))

(declare-fun m!2299417 () Bool)

(assert (=> setNonEmpty!11566 m!2299417))

(declare-fun mapNonEmpty!9009 () Bool)

(declare-fun mapRes!9009 () Bool)

(declare-fun tp!533920 () Bool)

(declare-fun e!1196041 () Bool)

(assert (=> mapNonEmpty!9009 (= mapRes!9009 (and tp!533920 e!1196041))))

(declare-fun mapRest!9009 () (Array (_ BitVec 32) List!20906))

(declare-fun mapValue!9009 () List!20906)

(declare-fun mapKey!9009 () (_ BitVec 32))

(assert (=> mapNonEmpty!9009 (= mapRest!9003 (store mapRest!9009 mapKey!9009 mapValue!9009))))

(declare-fun setIsEmpty!11571 () Bool)

(declare-fun setRes!11572 () Bool)

(assert (=> setIsEmpty!11571 setRes!11572))

(declare-fun condMapEmpty!9009 () Bool)

(declare-fun mapDefault!9009 () List!20906)

(assert (=> mapNonEmpty!9003 (= condMapEmpty!9009 (= mapRest!9003 ((as const (Array (_ BitVec 32) List!20906)) mapDefault!9009)))))

(declare-fun e!1196042 () Bool)

(assert (=> mapNonEmpty!9003 (= tp!533808 (and e!1196042 mapRes!9009))))

(declare-fun b!1874474 () Bool)

(declare-fun e!1196037 () Bool)

(declare-fun tp!533923 () Bool)

(assert (=> b!1874474 (= e!1196037 tp!533923)))

(declare-fun mapIsEmpty!9009 () Bool)

(assert (=> mapIsEmpty!9009 mapRes!9009))

(declare-fun e!1196038 () Bool)

(declare-fun setNonEmpty!11571 () Bool)

(declare-fun setRes!11571 () Bool)

(declare-fun tp!533928 () Bool)

(declare-fun setElem!11571 () Context!1954)

(assert (=> setNonEmpty!11571 (= setRes!11571 (and tp!533928 (inv!27641 setElem!11571) e!1196038))))

(declare-fun setRest!11571 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11571 (= (_2!11421 (h!26225 mapValue!9009)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11571 true) setRest!11571))))

(declare-fun b!1874475 () Bool)

(declare-fun tp!533921 () Bool)

(assert (=> b!1874475 (= e!1196038 tp!533921)))

(declare-fun b!1874476 () Bool)

(declare-fun e!1196039 () Bool)

(declare-fun tp!533927 () Bool)

(assert (=> b!1874476 (= e!1196039 tp!533927)))

(declare-fun setIsEmpty!11572 () Bool)

(assert (=> setIsEmpty!11572 setRes!11571))

(declare-fun b!1874477 () Bool)

(declare-fun e!1196040 () Bool)

(declare-fun tp!533922 () Bool)

(assert (=> b!1874477 (= e!1196040 tp!533922)))

(declare-fun setNonEmpty!11572 () Bool)

(declare-fun setElem!11572 () Context!1954)

(declare-fun tp!533926 () Bool)

(assert (=> setNonEmpty!11572 (= setRes!11572 (and tp!533926 (inv!27641 setElem!11572) e!1196037))))

(declare-fun setRest!11572 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11572 (= (_2!11421 (h!26225 mapDefault!9009)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11572 true) setRest!11572))))

(declare-fun tp!533925 () Bool)

(declare-fun b!1874478 () Bool)

(assert (=> b!1874478 (= e!1196041 (and (inv!27641 (_1!11420 (_1!11421 (h!26225 mapValue!9009)))) e!1196040 tp_is_empty!8879 setRes!11571 tp!533925))))

(declare-fun condSetEmpty!11571 () Bool)

(assert (=> b!1874478 (= condSetEmpty!11571 (= (_2!11421 (h!26225 mapValue!9009)) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun tp!533924 () Bool)

(declare-fun b!1874479 () Bool)

(assert (=> b!1874479 (= e!1196042 (and (inv!27641 (_1!11420 (_1!11421 (h!26225 mapDefault!9009)))) e!1196039 tp_is_empty!8879 setRes!11572 tp!533924))))

(declare-fun condSetEmpty!11572 () Bool)

(assert (=> b!1874479 (= condSetEmpty!11572 (= (_2!11421 (h!26225 mapDefault!9009)) ((as const (Array Context!1954 Bool)) false)))))

(assert (= (and mapNonEmpty!9003 condMapEmpty!9009) mapIsEmpty!9009))

(assert (= (and mapNonEmpty!9003 (not condMapEmpty!9009)) mapNonEmpty!9009))

(assert (= b!1874478 b!1874477))

(assert (= (and b!1874478 condSetEmpty!11571) setIsEmpty!11572))

(assert (= (and b!1874478 (not condSetEmpty!11571)) setNonEmpty!11571))

(assert (= setNonEmpty!11571 b!1874475))

(assert (= (and mapNonEmpty!9009 ((_ is Cons!20824) mapValue!9009)) b!1874478))

(assert (= b!1874479 b!1874476))

(assert (= (and b!1874479 condSetEmpty!11572) setIsEmpty!11571))

(assert (= (and b!1874479 (not condSetEmpty!11572)) setNonEmpty!11572))

(assert (= setNonEmpty!11572 b!1874474))

(assert (= (and mapNonEmpty!9003 ((_ is Cons!20824) mapDefault!9009)) b!1874479))

(declare-fun m!2299419 () Bool)

(assert (=> mapNonEmpty!9009 m!2299419))

(declare-fun m!2299421 () Bool)

(assert (=> b!1874478 m!2299421))

(declare-fun m!2299423 () Bool)

(assert (=> b!1874479 m!2299423))

(declare-fun m!2299425 () Bool)

(assert (=> setNonEmpty!11572 m!2299425))

(declare-fun m!2299427 () Bool)

(assert (=> setNonEmpty!11571 m!2299427))

(declare-fun b!1874480 () Bool)

(declare-fun e!1196044 () Bool)

(declare-fun tp!533931 () Bool)

(assert (=> b!1874480 (= e!1196044 tp!533931)))

(declare-fun e!1196045 () Bool)

(declare-fun e!1196043 () Bool)

(declare-fun tp!533930 () Bool)

(declare-fun setRes!11573 () Bool)

(declare-fun b!1874481 () Bool)

(assert (=> b!1874481 (= e!1196045 (and (inv!27641 (_1!11420 (_1!11421 (h!26225 mapValue!9003)))) e!1196043 tp_is_empty!8879 setRes!11573 tp!533930))))

(declare-fun condSetEmpty!11573 () Bool)

(assert (=> b!1874481 (= condSetEmpty!11573 (= (_2!11421 (h!26225 mapValue!9003)) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun tp!533932 () Bool)

(declare-fun setNonEmpty!11573 () Bool)

(declare-fun setElem!11573 () Context!1954)

(assert (=> setNonEmpty!11573 (= setRes!11573 (and tp!533932 (inv!27641 setElem!11573) e!1196044))))

(declare-fun setRest!11573 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11573 (= (_2!11421 (h!26225 mapValue!9003)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11573 true) setRest!11573))))

(assert (=> mapNonEmpty!9003 (= tp!533807 e!1196045)))

(declare-fun b!1874482 () Bool)

(declare-fun tp!533929 () Bool)

(assert (=> b!1874482 (= e!1196043 tp!533929)))

(declare-fun setIsEmpty!11573 () Bool)

(assert (=> setIsEmpty!11573 setRes!11573))

(assert (= b!1874481 b!1874482))

(assert (= (and b!1874481 condSetEmpty!11573) setIsEmpty!11573))

(assert (= (and b!1874481 (not condSetEmpty!11573)) setNonEmpty!11573))

(assert (= setNonEmpty!11573 b!1874480))

(assert (= (and mapNonEmpty!9003 ((_ is Cons!20824) mapValue!9003)) b!1874481))

(declare-fun m!2299429 () Bool)

(assert (=> b!1874481 m!2299429))

(declare-fun m!2299431 () Bool)

(assert (=> setNonEmpty!11573 m!2299431))

(declare-fun b!1874487 () Bool)

(declare-fun e!1196048 () Bool)

(declare-fun tp!533937 () Bool)

(declare-fun tp!533938 () Bool)

(assert (=> b!1874487 (= e!1196048 (and tp!533937 tp!533938))))

(assert (=> b!1874369 (= tp!533820 e!1196048)))

(assert (= (and b!1874369 ((_ is Cons!20822) (exprs!1477 setElem!11548))) b!1874487))

(declare-fun b!1874488 () Bool)

(declare-fun e!1196050 () Bool)

(declare-fun tp!533941 () Bool)

(assert (=> b!1874488 (= e!1196050 tp!533941)))

(declare-fun b!1874489 () Bool)

(declare-fun tp!533940 () Bool)

(declare-fun e!1196049 () Bool)

(declare-fun e!1196051 () Bool)

(declare-fun setRes!11574 () Bool)

(assert (=> b!1874489 (= e!1196051 (and (inv!27641 (_1!11420 (_1!11421 (h!26225 mapDefault!9003)))) e!1196049 tp_is_empty!8879 setRes!11574 tp!533940))))

(declare-fun condSetEmpty!11574 () Bool)

(assert (=> b!1874489 (= condSetEmpty!11574 (= (_2!11421 (h!26225 mapDefault!9003)) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun tp!533942 () Bool)

(declare-fun setNonEmpty!11574 () Bool)

(declare-fun setElem!11574 () Context!1954)

(assert (=> setNonEmpty!11574 (= setRes!11574 (and tp!533942 (inv!27641 setElem!11574) e!1196050))))

(declare-fun setRest!11574 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11574 (= (_2!11421 (h!26225 mapDefault!9003)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11574 true) setRest!11574))))

(assert (=> b!1874373 (= tp!533818 e!1196051)))

(declare-fun b!1874490 () Bool)

(declare-fun tp!533939 () Bool)

(assert (=> b!1874490 (= e!1196049 tp!533939)))

(declare-fun setIsEmpty!11574 () Bool)

(assert (=> setIsEmpty!11574 setRes!11574))

(assert (= b!1874489 b!1874490))

(assert (= (and b!1874489 condSetEmpty!11574) setIsEmpty!11574))

(assert (= (and b!1874489 (not condSetEmpty!11574)) setNonEmpty!11574))

(assert (= setNonEmpty!11574 b!1874488))

(assert (= (and b!1874373 ((_ is Cons!20824) mapDefault!9003)) b!1874489))

(declare-fun m!2299433 () Bool)

(assert (=> b!1874489 m!2299433))

(declare-fun m!2299435 () Bool)

(assert (=> setNonEmpty!11574 m!2299435))

(declare-fun e!1196054 () Bool)

(declare-fun e!1196052 () Bool)

(declare-fun setRes!11575 () Bool)

(declare-fun tp!533943 () Bool)

(declare-fun b!1874491 () Bool)

(declare-fun tp!533944 () Bool)

(assert (=> b!1874491 (= e!1196052 (and tp!533943 (inv!27641 (_2!11418 (_1!11419 (h!26224 mapDefault!9002)))) e!1196054 tp_is_empty!8879 setRes!11575 tp!533944))))

(declare-fun condSetEmpty!11575 () Bool)

(assert (=> b!1874491 (= condSetEmpty!11575 (= (_2!11419 (h!26224 mapDefault!9002)) ((as const (Array Context!1954 Bool)) false)))))

(declare-fun setNonEmpty!11575 () Bool)

(declare-fun tp!533947 () Bool)

(declare-fun e!1196053 () Bool)

(declare-fun setElem!11575 () Context!1954)

(assert (=> setNonEmpty!11575 (= setRes!11575 (and tp!533947 (inv!27641 setElem!11575) e!1196053))))

(declare-fun setRest!11575 () (InoxSet Context!1954))

(assert (=> setNonEmpty!11575 (= (_2!11419 (h!26224 mapDefault!9002)) ((_ map or) (store ((as const (Array Context!1954 Bool)) false) setElem!11575 true) setRest!11575))))

(declare-fun b!1874492 () Bool)

(declare-fun tp!533945 () Bool)

(assert (=> b!1874492 (= e!1196053 tp!533945)))

(declare-fun b!1874493 () Bool)

(declare-fun tp!533946 () Bool)

(assert (=> b!1874493 (= e!1196054 tp!533946)))

(declare-fun setIsEmpty!11575 () Bool)

(assert (=> setIsEmpty!11575 setRes!11575))

(assert (=> b!1874368 (= tp!533821 e!1196052)))

(assert (= b!1874491 b!1874493))

(assert (= (and b!1874491 condSetEmpty!11575) setIsEmpty!11575))

(assert (= (and b!1874491 (not condSetEmpty!11575)) setNonEmpty!11575))

(assert (= setNonEmpty!11575 b!1874492))

(assert (= (and b!1874368 ((_ is Cons!20823) mapDefault!9002)) b!1874491))

(declare-fun m!2299437 () Bool)

(assert (=> b!1874491 m!2299437))

(declare-fun m!2299439 () Bool)

(assert (=> setNonEmpty!11575 m!2299439))

(declare-fun b!1874498 () Bool)

(declare-fun e!1196057 () Bool)

(declare-fun tp!533950 () Bool)

(assert (=> b!1874498 (= e!1196057 (and tp_is_empty!8879 tp!533950))))

(assert (=> b!1874378 (= tp!533812 e!1196057)))

(assert (= (and b!1874378 ((_ is Cons!20825) (t!173124 input!3792))) b!1874498))

(check-sat (not b!1874498) (not setNonEmpty!11563) (not setNonEmpty!11554) (not setNonEmpty!11573) b_and!144365 (not b!1874493) (not b!1874450) (not b_next!52785) (not b_next!52781) (not b!1874459) (not b!1874489) tp_is_empty!8879 (not b!1874487) (not setNonEmpty!11575) (not b!1874482) (not setNonEmpty!11562) (not b!1874395) (not setNonEmpty!11560) (not b_next!52783) (not b!1874447) (not b!1874389) (not b!1874481) (not b!1874479) (not b!1874433) (not b!1874421) (not d!572767) (not b!1874476) (not b!1874452) (not b!1874434) (not b!1874432) (not b!1874400) (not mapNonEmpty!9009) (not b!1874490) (not b!1874418) (not b!1874454) (not setNonEmpty!11561) (not b!1874474) (not b!1874478) (not b!1874448) (not b!1874403) (not b!1874491) (not setNonEmpty!11557) (not b!1874449) (not b!1874401) (not b!1874451) (not setNonEmpty!11572) (not b!1874444) (not b!1874423) (not b!1874420) b_and!144369 (not b!1874386) (not b!1874446) (not b!1874443) (not b!1874477) (not setNonEmpty!11574) (not b!1874475) (not setNonEmpty!11571) (not b!1874445) (not d!572773) (not b!1874419) (not b!1874492) (not b!1874453) (not b!1874422) (not setNonEmpty!11566) b_and!144363 (not b_next!52787) (not setNonEmpty!11553) (not b!1874488) b_and!144367 (not b!1874480) (not mapNonEmpty!9006))
(check-sat (not b_next!52783) b_and!144365 b_and!144369 b_and!144367 (not b_next!52785) (not b_next!52781) b_and!144363 (not b_next!52787))
