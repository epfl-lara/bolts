; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206598 () Bool)

(assert start!206598)

(declare-fun b!2115271 () Bool)

(declare-fun b_free!61301 () Bool)

(declare-fun b_next!62005 () Bool)

(assert (=> b!2115271 (= b_free!61301 (not b_next!62005))))

(declare-fun tp!645457 () Bool)

(declare-fun b_and!170881 () Bool)

(assert (=> b!2115271 (= tp!645457 b_and!170881)))

(declare-fun b!2115288 () Bool)

(declare-fun b_free!61303 () Bool)

(declare-fun b_next!62007 () Bool)

(assert (=> b!2115288 (= b_free!61303 (not b_next!62007))))

(declare-fun tp!645450 () Bool)

(declare-fun b_and!170883 () Bool)

(assert (=> b!2115288 (= tp!645450 b_and!170883)))

(declare-fun b!2115264 () Bool)

(declare-fun b_free!61305 () Bool)

(declare-fun b_next!62009 () Bool)

(assert (=> b!2115264 (= b_free!61305 (not b_next!62009))))

(declare-fun tp!645454 () Bool)

(declare-fun b_and!170885 () Bool)

(assert (=> b!2115264 (= tp!645454 b_and!170885)))

(declare-fun b!2115303 () Bool)

(declare-fun b_free!61307 () Bool)

(declare-fun b_next!62011 () Bool)

(assert (=> b!2115303 (= b_free!61307 (not b_next!62011))))

(declare-fun tp!645452 () Bool)

(declare-fun b_and!170887 () Bool)

(assert (=> b!2115303 (= tp!645452 b_and!170887)))

(declare-fun b!2115276 () Bool)

(declare-fun b_free!61309 () Bool)

(declare-fun b_next!62013 () Bool)

(assert (=> b!2115276 (= b_free!61309 (not b_next!62013))))

(declare-fun tp!645434 () Bool)

(declare-fun b_and!170889 () Bool)

(assert (=> b!2115276 (= tp!645434 b_and!170889)))

(declare-fun b!2115275 () Bool)

(declare-fun b_free!61311 () Bool)

(declare-fun b_next!62015 () Bool)

(assert (=> b!2115275 (= b_free!61311 (not b_next!62015))))

(declare-fun tp!645459 () Bool)

(declare-fun b_and!170891 () Bool)

(assert (=> b!2115275 (= tp!645459 b_and!170891)))

(declare-fun b!2115339 () Bool)

(declare-fun e!1346273 () Bool)

(declare-fun mapRes!11452 () Bool)

(assert (=> b!2115339 (= e!1346273 mapRes!11452)))

(declare-fun condMapEmpty!11452 () Bool)

(declare-datatypes ((C!11420 0))(
  ( (C!11421 (val!6696 Int)) )
))
(declare-datatypes ((Regex!5637 0))(
  ( (ElementMatch!5637 (c!339291 C!11420)) (Concat!9939 (regOne!11786 Regex!5637) (regTwo!11786 Regex!5637)) (EmptyExpr!5637) (Star!5637 (reg!5966 Regex!5637)) (EmptyLang!5637) (Union!5637 (regOne!11787 Regex!5637) (regTwo!11787 Regex!5637)) )
))
(declare-datatypes ((List!23642 0))(
  ( (Nil!23558) (Cons!23558 (h!28959 Regex!5637) (t!196151 List!23642)) )
))
(declare-datatypes ((Context!2414 0))(
  ( (Context!2415 (exprs!1707 List!23642)) )
))
(declare-datatypes ((tuple3!2782 0))(
  ( (tuple3!2783 (_1!13386 Regex!5637) (_2!13386 Context!2414) (_3!1858 C!11420)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!23056 0))(
  ( (tuple2!23057 (_1!13387 tuple3!2782) (_2!13387 (InoxSet Context!2414))) )
))
(declare-datatypes ((List!23643 0))(
  ( (Nil!23559) (Cons!23559 (h!28960 tuple2!23056) (t!196152 List!23643)) )
))
(declare-datatypes ((array!8193 0))(
  ( (array!8194 (arr!3636 (Array (_ BitVec 32) (_ BitVec 64))) (size!18396 (_ BitVec 32))) )
))
(declare-datatypes ((array!8195 0))(
  ( (array!8196 (arr!3637 (Array (_ BitVec 32) List!23643)) (size!18397 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4756 0))(
  ( (LongMapFixedSize!4757 (defaultEntry!2743 Int) (mask!6512 (_ BitVec 32)) (extraKeys!2626 (_ BitVec 32)) (zeroValue!2636 List!23643) (minValue!2636 List!23643) (_size!4807 (_ BitVec 32)) (_keys!2675 array!8193) (_values!2658 array!8195) (_vacant!2439 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9337 0))(
  ( (Cell!9338 (v!28084 LongMapFixedSize!4756)) )
))
(declare-datatypes ((MutLongMap!2378 0))(
  ( (LongMap!2378 (underlying!4951 Cell!9337)) (MutLongMapExt!2377 (__x!15310 Int)) )
))
(declare-datatypes ((List!23644 0))(
  ( (Nil!23560) (Cons!23560 (h!28961 C!11420) (t!196153 List!23644)) )
))
(declare-datatypes ((IArray!15561 0))(
  ( (IArray!15562 (innerList!7838 List!23644)) )
))
(declare-datatypes ((Conc!7778 0))(
  ( (Node!7778 (left!18263 Conc!7778) (right!18593 Conc!7778) (csize!15786 Int) (cheight!7989 Int)) (Leaf!11364 (xs!10720 IArray!15561) (csize!15787 Int)) (Empty!7778) )
))
(declare-datatypes ((BalanceConc!15318 0))(
  ( (BalanceConc!15319 (c!339292 Conc!7778)) )
))
(declare-datatypes ((Hashable!2292 0))(
  ( (HashableExt!2291 (__x!15311 Int)) )
))
(declare-datatypes ((tuple2!23058 0))(
  ( (tuple2!23059 (_1!13388 Context!2414) (_2!13388 C!11420)) )
))
(declare-datatypes ((tuple2!23060 0))(
  ( (tuple2!23061 (_1!13389 tuple2!23058) (_2!13389 (InoxSet Context!2414))) )
))
(declare-datatypes ((List!23645 0))(
  ( (Nil!23561) (Cons!23561 (h!28962 tuple2!23060) (t!196154 List!23645)) )
))
(declare-datatypes ((array!8197 0))(
  ( (array!8198 (arr!3638 (Array (_ BitVec 32) List!23645)) (size!18398 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4758 0))(
  ( (LongMapFixedSize!4759 (defaultEntry!2744 Int) (mask!6513 (_ BitVec 32)) (extraKeys!2627 (_ BitVec 32)) (zeroValue!2637 List!23645) (minValue!2637 List!23645) (_size!4808 (_ BitVec 32)) (_keys!2676 array!8193) (_values!2659 array!8197) (_vacant!2440 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9339 0))(
  ( (Cell!9340 (v!28085 LongMapFixedSize!4758)) )
))
(declare-datatypes ((MutLongMap!2379 0))(
  ( (LongMap!2379 (underlying!4952 Cell!9339)) (MutLongMapExt!2378 (__x!15312 Int)) )
))
(declare-datatypes ((Cell!9341 0))(
  ( (Cell!9342 (v!28086 MutLongMap!2379)) )
))
(declare-datatypes ((StackFrame!14 0))(
  ( (StackFrame!15 (z!5682 (InoxSet Context!2414)) (from!2599 Int) (lastNullablePos!287 Int) (res!917866 Int) (totalInput!2846 BalanceConc!15318)) )
))
(declare-datatypes ((List!23646 0))(
  ( (Nil!23562) (Cons!23562 (h!28963 StackFrame!14) (t!196155 List!23646)) )
))
(declare-datatypes ((Hashable!2293 0))(
  ( (HashableExt!2292 (__x!15313 Int)) )
))
(declare-datatypes ((tuple2!23062 0))(
  ( (tuple2!23063 (_1!13390 Int) (_2!13390 List!23646)) )
))
(declare-datatypes ((MutableMap!2292 0))(
  ( (MutableMapExt!2291 (__x!15314 Int)) (HashMap!2292 (underlying!4953 Cell!9341) (hashF!4215 Hashable!2292) (_size!4809 (_ BitVec 32)) (defaultValue!2454 Int)) )
))
(declare-datatypes ((CacheUp!1582 0))(
  ( (CacheUp!1583 (cache!2673 MutableMap!2292)) )
))
(declare-datatypes ((Cell!9343 0))(
  ( (Cell!9344 (v!28087 MutLongMap!2378)) )
))
(declare-datatypes ((MutableMap!2293 0))(
  ( (MutableMapExt!2292 (__x!15315 Int)) (HashMap!2293 (underlying!4954 Cell!9343) (hashF!4216 Hashable!2293) (_size!4810 (_ BitVec 32)) (defaultValue!2455 Int)) )
))
(declare-datatypes ((CacheDown!1574 0))(
  ( (CacheDown!1575 (cache!2674 MutableMap!2293)) )
))
(declare-datatypes ((tuple3!2784 0))(
  ( (tuple3!2785 (_1!13391 tuple2!23062) (_2!13391 CacheUp!1582) (_3!1859 CacheDown!1574)) )
))
(declare-fun lt!793476 () tuple3!2784)

(declare-fun mapDefault!11451 () List!23643)

(assert (=> b!2115339 (= condMapEmpty!11452 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476)))))))) ((as const (Array (_ BitVec 32) List!23643)) mapDefault!11451)))))

(declare-fun b!2115340 () Bool)

(declare-fun e!1346274 () Bool)

(declare-fun e!1346272 () Bool)

(assert (=> b!2115340 (= e!1346274 e!1346272)))

(declare-fun mapIsEmpty!11451 () Bool)

(assert (=> mapIsEmpty!11451 mapRes!11452))

(declare-fun b!2115341 () Bool)

(declare-fun e!1346280 () Bool)

(declare-fun e!1346279 () Bool)

(assert (=> b!2115341 (= e!1346280 e!1346279)))

(declare-fun setNonEmpty!14215 () Bool)

(declare-fun setRes!14215 () Bool)

(assert (=> setNonEmpty!14215 (= setRes!14215 true)))

(declare-fun setElem!14215 () Context!2414)

(declare-fun setRest!14215 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14215 (= (z!5682 (h!28963 (_2!13390 (_1!13391 lt!793476)))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14215 true) setRest!14215))))

(declare-fun b!2115342 () Bool)

(declare-fun e!1346270 () Bool)

(assert (=> b!2115342 (= e!1346270 e!1346274)))

(declare-fun mapNonEmpty!11451 () Bool)

(assert (=> mapNonEmpty!11451 (= mapRes!11452 true)))

(declare-fun mapKey!11451 () (_ BitVec 32))

(declare-fun mapValue!11452 () List!23643)

(declare-fun mapRest!11452 () (Array (_ BitVec 32) List!23643))

(assert (=> mapNonEmpty!11451 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476)))))))) (store mapRest!11452 mapKey!11451 mapValue!11452))))

(declare-fun b!2115343 () Bool)

(declare-fun e!1346266 () Bool)

(assert (=> b!2115343 (= e!1346266 e!1346280)))

(declare-fun b!2115344 () Bool)

(declare-fun e!1346277 () Bool)

(declare-fun e!1346265 () Bool)

(assert (=> b!2115344 (= e!1346277 e!1346265)))

(declare-fun b!2115279 () Bool)

(declare-fun e!1346278 () Bool)

(declare-fun e!1346276 () Bool)

(assert (=> b!2115279 (and e!1346277 e!1346278 e!1346276)))

(declare-fun mapIsEmpty!11452 () Bool)

(declare-fun mapRes!11451 () Bool)

(assert (=> mapIsEmpty!11452 mapRes!11451))

(declare-fun b!2115345 () Bool)

(declare-fun e!1346271 () Bool)

(declare-fun lt!793486 () MutLongMap!2379)

(get-info :version)

(assert (=> b!2115345 (= e!1346271 (and e!1346270 ((_ is LongMap!2379) lt!793486)))))

(assert (=> b!2115345 (= lt!793486 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476)))))))

(declare-fun mapNonEmpty!11452 () Bool)

(assert (=> mapNonEmpty!11452 (= mapRes!11451 true)))

(declare-fun mapRest!11451 () (Array (_ BitVec 32) List!23645))

(declare-fun mapKey!11452 () (_ BitVec 32))

(declare-fun mapValue!11451 () List!23645)

(assert (=> mapNonEmpty!11452 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476)))))))) (store mapRest!11451 mapKey!11452 mapValue!11451))))

(declare-fun setIsEmpty!14215 () Bool)

(assert (=> setIsEmpty!14215 setRes!14215))

(declare-fun b!2115346 () Bool)

(assert (=> b!2115346 (= e!1346279 e!1346273)))

(declare-fun b!2115347 () Bool)

(declare-fun e!1346268 () Bool)

(assert (=> b!2115347 (= e!1346268 mapRes!11451)))

(declare-fun condMapEmpty!11451 () Bool)

(declare-fun mapDefault!11452 () List!23645)

(assert (=> b!2115347 (= condMapEmpty!11451 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476)))))))) ((as const (Array (_ BitVec 32) List!23645)) mapDefault!11452)))))

(declare-fun b!2115348 () Bool)

(assert (=> b!2115348 (= e!1346265 setRes!14215)))

(declare-fun condSetEmpty!14215 () Bool)

(assert (=> b!2115348 (= condSetEmpty!14215 (= (z!5682 (h!28963 (_2!13390 (_1!13391 lt!793476)))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115349 () Bool)

(declare-fun e!1346267 () Bool)

(declare-fun lt!793485 () MutLongMap!2378)

(assert (=> b!2115349 (= e!1346267 (and e!1346266 ((_ is LongMap!2378) lt!793485)))))

(assert (=> b!2115349 (= lt!793485 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476)))))))

(declare-fun b!2115350 () Bool)

(assert (=> b!2115350 (= e!1346272 e!1346268)))

(declare-fun b!2115351 () Bool)

(declare-fun e!1346269 () Bool)

(assert (=> b!2115351 (= e!1346269 e!1346267)))

(declare-fun b!2115352 () Bool)

(declare-fun e!1346275 () Bool)

(assert (=> b!2115352 (= e!1346275 e!1346271)))

(declare-fun b!2115353 () Bool)

(assert (=> b!2115353 (= e!1346278 e!1346275)))

(declare-fun b!2115354 () Bool)

(assert (=> b!2115354 (= e!1346276 e!1346269)))

(assert (= (and b!2115348 condSetEmpty!14215) setIsEmpty!14215))

(assert (= (and b!2115348 (not condSetEmpty!14215)) setNonEmpty!14215))

(assert (= b!2115344 b!2115348))

(assert (= (and b!2115279 ((_ is Cons!23562) (_2!13390 (_1!13391 lt!793476)))) b!2115344))

(assert (= (and b!2115347 condMapEmpty!11451) mapIsEmpty!11452))

(assert (= (and b!2115347 (not condMapEmpty!11451)) mapNonEmpty!11452))

(assert (= b!2115350 b!2115347))

(assert (= b!2115340 b!2115350))

(assert (= b!2115342 b!2115340))

(assert (= (and b!2115345 ((_ is LongMap!2379) (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476)))))) b!2115342))

(assert (= b!2115352 b!2115345))

(assert (= (and b!2115353 ((_ is HashMap!2292) (cache!2673 (_2!13391 lt!793476)))) b!2115352))

(assert (= b!2115279 b!2115353))

(assert (= (and b!2115339 condMapEmpty!11452) mapIsEmpty!11451))

(assert (= (and b!2115339 (not condMapEmpty!11452)) mapNonEmpty!11451))

(assert (= b!2115346 b!2115339))

(assert (= b!2115341 b!2115346))

(assert (= b!2115343 b!2115341))

(assert (= (and b!2115349 ((_ is LongMap!2378) (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476)))))) b!2115343))

(assert (= b!2115351 b!2115349))

(assert (= (and b!2115354 ((_ is HashMap!2293) (cache!2674 (_3!1859 lt!793476)))) b!2115351))

(assert (= b!2115279 b!2115354))

(declare-fun order!14529 () Int)

(declare-fun order!14531 () Int)

(declare-fun lambda!78240 () Int)

(declare-fun dynLambda!11286 (Int Int) Int)

(declare-fun dynLambda!11287 (Int Int) Int)

(assert (=> b!2115346 (< (dynLambda!11286 order!14529 (defaultEntry!2743 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476)))))))) (dynLambda!11287 order!14531 lambda!78240))))

(declare-fun order!14533 () Int)

(declare-fun dynLambda!11288 (Int Int) Int)

(assert (=> b!2115352 (< (dynLambda!11288 order!14533 (defaultValue!2454 (cache!2673 (_2!13391 lt!793476)))) (dynLambda!11287 order!14531 lambda!78240))))

(declare-fun order!14535 () Int)

(declare-fun dynLambda!11289 (Int Int) Int)

(assert (=> b!2115351 (< (dynLambda!11289 order!14535 (defaultValue!2455 (cache!2674 (_3!1859 lt!793476)))) (dynLambda!11287 order!14531 lambda!78240))))

(declare-fun order!14537 () Int)

(declare-fun dynLambda!11290 (Int Int) Int)

(assert (=> b!2115350 (< (dynLambda!11290 order!14537 (defaultEntry!2744 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476)))))))) (dynLambda!11287 order!14531 lambda!78240))))

(declare-fun m!2570743 () Bool)

(assert (=> mapNonEmpty!11451 m!2570743))

(declare-fun m!2570745 () Bool)

(assert (=> mapNonEmpty!11452 m!2570745))

(declare-fun bs!441171 () Bool)

(declare-fun b!2115290 () Bool)

(assert (= bs!441171 (and b!2115290 b!2115279)))

(declare-fun lambda!78241 () Int)

(assert (=> bs!441171 (not (= lambda!78241 lambda!78240))))

(assert (=> b!2115290 true))

(declare-fun b!2115259 () Bool)

(declare-fun e!1346214 () Bool)

(declare-fun e!1346205 () Bool)

(assert (=> b!2115259 (= e!1346214 e!1346205)))

(declare-fun b!2115260 () Bool)

(declare-fun e!1346201 () Bool)

(declare-fun e!1346228 () Bool)

(assert (=> b!2115260 (= e!1346201 e!1346228)))

(declare-fun b!2115261 () Bool)

(declare-fun e!1346226 () Bool)

(declare-fun e!1346218 () Bool)

(assert (=> b!2115261 (= e!1346226 e!1346218)))

(declare-fun b!2115262 () Bool)

(declare-fun e!1346231 () Bool)

(assert (=> b!2115262 (= e!1346231 e!1346226)))

(declare-fun b!2115263 () Bool)

(declare-fun e!1346209 () Bool)

(declare-fun tp!645445 () Bool)

(declare-fun mapRes!11444 () Bool)

(assert (=> b!2115263 (= e!1346209 (and tp!645445 mapRes!11444))))

(declare-fun condMapEmpty!11446 () Bool)

(declare-datatypes ((Hashable!2294 0))(
  ( (HashableExt!2293 (__x!15316 Int)) )
))
(declare-datatypes ((tuple3!2786 0))(
  ( (tuple3!2787 (_1!13392 (InoxSet Context!2414)) (_2!13392 Int) (_3!1860 Int)) )
))
(declare-datatypes ((tuple2!23064 0))(
  ( (tuple2!23065 (_1!13393 tuple3!2786) (_2!13393 Int)) )
))
(declare-datatypes ((List!23647 0))(
  ( (Nil!23563) (Cons!23563 (h!28964 tuple2!23064) (t!196156 List!23647)) )
))
(declare-datatypes ((array!8199 0))(
  ( (array!8200 (arr!3639 (Array (_ BitVec 32) List!23647)) (size!18399 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4760 0))(
  ( (LongMapFixedSize!4761 (defaultEntry!2745 Int) (mask!6514 (_ BitVec 32)) (extraKeys!2628 (_ BitVec 32)) (zeroValue!2638 List!23647) (minValue!2638 List!23647) (_size!4811 (_ BitVec 32)) (_keys!2677 array!8193) (_values!2660 array!8199) (_vacant!2441 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9345 0))(
  ( (Cell!9346 (v!28088 LongMapFixedSize!4760)) )
))
(declare-datatypes ((MutLongMap!2380 0))(
  ( (LongMap!2380 (underlying!4955 Cell!9345)) (MutLongMapExt!2379 (__x!15317 Int)) )
))
(declare-datatypes ((Cell!9347 0))(
  ( (Cell!9348 (v!28089 MutLongMap!2380)) )
))
(declare-datatypes ((MutableMap!2294 0))(
  ( (MutableMapExt!2293 (__x!15318 Int)) (HashMap!2294 (underlying!4956 Cell!9347) (hashF!4217 Hashable!2294) (_size!4812 (_ BitVec 32)) (defaultValue!2456 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!552 0))(
  ( (CacheFurthestNullable!553 (cache!2675 MutableMap!2294) (totalInput!2847 BalanceConc!15318)) )
))
(declare-fun cacheFurthestNullable!141 () CacheFurthestNullable!552)

(declare-fun mapDefault!11446 () List!23647)

(assert (=> b!2115263 (= condMapEmpty!11446 (= (arr!3639 (_values!2660 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) ((as const (Array (_ BitVec 32) List!23647)) mapDefault!11446)))))

(declare-fun e!1346208 () Bool)

(assert (=> b!2115264 (= e!1346228 (and e!1346208 tp!645454))))

(declare-fun b!2115265 () Bool)

(declare-fun e!1346200 () Int)

(declare-fun lt!793477 () Int)

(assert (=> b!2115265 (= e!1346200 (- lt!793477 1))))

(declare-fun mapNonEmpty!11444 () Bool)

(declare-fun mapRes!11446 () Bool)

(declare-fun tp!645435 () Bool)

(declare-fun tp!645431 () Bool)

(assert (=> mapNonEmpty!11444 (= mapRes!11446 (and tp!645435 tp!645431))))

(declare-fun cacheDown!1229 () CacheDown!1574)

(declare-fun mapKey!11444 () (_ BitVec 32))

(declare-fun mapRest!11444 () (Array (_ BitVec 32) List!23643))

(declare-fun mapValue!11446 () List!23643)

(assert (=> mapNonEmpty!11444 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) (store mapRest!11444 mapKey!11444 mapValue!11446))))

(declare-fun b!2115266 () Bool)

(declare-fun e!1346204 () Bool)

(declare-fun input!6660 () BalanceConc!15318)

(declare-fun tp!645443 () Bool)

(declare-fun inv!31135 (Conc!7778) Bool)

(assert (=> b!2115266 (= e!1346204 (and (inv!31135 (c!339292 input!6660)) tp!645443))))

(declare-fun b!2115267 () Bool)

(declare-fun e!1346215 () Bool)

(declare-fun tp!645451 () Bool)

(declare-fun tp!645441 () Bool)

(assert (=> b!2115267 (= e!1346215 (and tp!645451 tp!645441))))

(declare-fun b!2115268 () Bool)

(declare-fun e!1346213 () Bool)

(declare-fun lt!793478 () MutLongMap!2379)

(assert (=> b!2115268 (= e!1346208 (and e!1346213 ((_ is LongMap!2379) lt!793478)))))

(declare-fun cacheUp!1110 () CacheUp!1582)

(assert (=> b!2115268 (= lt!793478 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))

(declare-fun b!2115270 () Bool)

(declare-fun e!1346207 () Bool)

(declare-datatypes ((tuple2!23066 0))(
  ( (tuple2!23067 (_1!13394 BalanceConc!15318) (_2!13394 BalanceConc!15318)) )
))
(declare-datatypes ((tuple4!934 0))(
  ( (tuple4!935 (_1!13395 tuple2!23066) (_2!13395 CacheUp!1582) (_3!1861 CacheDown!1574) (_4!467 CacheFurthestNullable!552)) )
))
(declare-fun lt!793468 () tuple4!934)

(declare-fun totalInput!1306 () BalanceConc!15318)

(assert (=> b!2115270 (= e!1346207 (= (totalInput!2847 (_4!467 lt!793468)) totalInput!1306))))

(declare-fun e!1346224 () Bool)

(declare-fun e!1346199 () Bool)

(assert (=> b!2115271 (= e!1346224 (and e!1346199 tp!645457))))

(declare-fun b!2115272 () Bool)

(declare-fun e!1346217 () Bool)

(declare-fun tp!645448 () Bool)

(assert (=> b!2115272 (= e!1346217 (and tp!645448 mapRes!11446))))

(declare-fun condMapEmpty!11445 () Bool)

(declare-fun mapDefault!11444 () List!23643)

(assert (=> b!2115272 (= condMapEmpty!11445 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) ((as const (Array (_ BitVec 32) List!23643)) mapDefault!11444)))))

(declare-fun b!2115273 () Bool)

(declare-fun tp!645442 () Bool)

(declare-fun tp!645440 () Bool)

(assert (=> b!2115273 (= e!1346215 (and tp!645442 tp!645440))))

(declare-fun b!2115274 () Bool)

(declare-fun res!917855 () Bool)

(declare-fun e!1346219 () Bool)

(assert (=> b!2115274 (=> (not res!917855) (not e!1346219))))

(assert (=> b!2115274 (= res!917855 (= (totalInput!2847 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun mapNonEmpty!11445 () Bool)

(declare-fun tp!645444 () Bool)

(declare-fun tp!645453 () Bool)

(assert (=> mapNonEmpty!11445 (= mapRes!11444 (and tp!645444 tp!645453))))

(declare-fun mapValue!11445 () List!23647)

(declare-fun mapKey!11446 () (_ BitVec 32))

(declare-fun mapRest!11446 () (Array (_ BitVec 32) List!23647))

(assert (=> mapNonEmpty!11445 (= (arr!3639 (_values!2660 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) (store mapRest!11446 mapKey!11446 mapValue!11445))))

(declare-fun e!1346232 () Bool)

(declare-fun e!1346212 () Bool)

(assert (=> b!2115275 (= e!1346232 (and e!1346212 tp!645459))))

(declare-fun tp!645446 () Bool)

(declare-fun e!1346202 () Bool)

(declare-fun tp!645439 () Bool)

(declare-fun array_inv!2611 (array!8193) Bool)

(declare-fun array_inv!2612 (array!8197) Bool)

(assert (=> b!2115276 (= e!1346205 (and tp!645434 tp!645439 tp!645446 (array_inv!2611 (_keys!2676 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) (array_inv!2612 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) e!1346202))))

(declare-fun b!2115277 () Bool)

(assert (=> b!2115277 (= e!1346200 (- 1))))

(declare-fun b!2115278 () Bool)

(declare-fun e!1346230 () Bool)

(assert (=> b!2115278 (= e!1346230 e!1346224)))

(declare-fun e!1346198 () Bool)

(assert (=> b!2115279 (= e!1346198 (not e!1346207))))

(declare-fun res!917853 () Bool)

(assert (=> b!2115279 (=> res!917853 e!1346207)))

(declare-fun valid!1873 (CacheUp!1582) Bool)

(assert (=> b!2115279 (= res!917853 (not (valid!1873 (_2!13395 lt!793468))))))

(declare-fun e!1346223 () Bool)

(assert (=> b!2115279 e!1346223))

(declare-fun res!917860 () Bool)

(assert (=> b!2115279 (=> (not res!917860) (not e!1346223))))

(declare-fun forall!4843 (List!23646 Int) Bool)

(assert (=> b!2115279 (= res!917860 (forall!4843 (_2!13390 (_1!13391 lt!793476)) lambda!78240))))

(declare-fun lt!793479 () Int)

(assert (=> b!2115279 (= lt!793479 (+ 1 (- (_1!13390 (_1!13391 lt!793476)) lt!793477)))))

(declare-fun lt!793473 () (InoxSet Context!2414))

(declare-fun lt!793466 () Int)

(declare-fun furthestNullablePositionStackMem!3 ((InoxSet Context!2414) Int BalanceConc!15318 Int Int List!23646 CacheUp!1582 CacheDown!1574 CacheFurthestNullable!552) tuple3!2784)

(assert (=> b!2115279 (= lt!793476 (furthestNullablePositionStackMem!3 lt!793473 lt!793477 totalInput!1306 lt!793466 e!1346200 Nil!23562 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339290 () Bool)

(declare-fun nullableZipper!50 ((InoxSet Context!2414)) Bool)

(assert (=> b!2115279 (= c!339290 (nullableZipper!50 lt!793473))))

(declare-fun size!18400 (BalanceConc!15318) Int)

(assert (=> b!2115279 (= lt!793477 (- lt!793466 (size!18400 input!6660)))))

(assert (=> b!2115279 (= lt!793466 (size!18400 totalInput!1306))))

(declare-fun findLongestMatchZipperSequenceV3Mem!4 ((InoxSet Context!2414) BalanceConc!15318 BalanceConc!15318 CacheUp!1582 CacheDown!1574 CacheFurthestNullable!552) tuple4!934)

(assert (=> b!2115279 (= lt!793468 (findLongestMatchZipperSequenceV3Mem!4 lt!793473 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun e!1346203 () Bool)

(assert (=> b!2115279 e!1346203))

(declare-fun res!917862 () Bool)

(assert (=> b!2115279 (=> (not res!917862) (not e!1346203))))

(declare-fun lt!793475 () tuple2!23066)

(declare-datatypes ((tuple2!23068 0))(
  ( (tuple2!23069 (_1!13396 List!23644) (_2!13396 List!23644)) )
))
(declare-fun lt!793471 () tuple2!23068)

(declare-fun list!9501 (BalanceConc!15318) List!23644)

(assert (=> b!2115279 (= res!917862 (= (list!9501 (_1!13394 lt!793475)) (_1!13396 lt!793471)))))

(declare-fun findLongestMatchZipperFastV2!11 ((InoxSet Context!2414) BalanceConc!15318 BalanceConc!15318) tuple2!23066)

(assert (=> b!2115279 (= lt!793475 (findLongestMatchZipperFastV2!11 lt!793473 input!6660 totalInput!1306))))

(declare-fun r!15373 () Regex!5637)

(declare-datatypes ((Unit!37545 0))(
  ( (Unit!37546) )
))
(declare-fun lt!793474 () Unit!37545)

(declare-fun longestMatchV2SameAsRegex!11 (Regex!5637 (InoxSet Context!2414) BalanceConc!15318 BalanceConc!15318) Unit!37545)

(assert (=> b!2115279 (= lt!793474 (longestMatchV2SameAsRegex!11 r!15373 lt!793473 input!6660 totalInput!1306))))

(declare-fun lt!793472 () List!23644)

(declare-fun sizeTr!96 (List!23644 Int) Int)

(declare-fun size!18401 (List!23644) Int)

(assert (=> b!2115279 (= (sizeTr!96 lt!793472 0) (size!18401 lt!793472))))

(declare-fun lt!793465 () Unit!37545)

(declare-fun lemmaSizeTrEqualsSize!96 (List!23644 Int) Unit!37545)

(assert (=> b!2115279 (= lt!793465 (lemmaSizeTrEqualsSize!96 lt!793472 0))))

(declare-fun e!1346216 () Bool)

(assert (=> b!2115279 e!1346216))

(declare-fun res!917864 () Bool)

(assert (=> b!2115279 (=> (not res!917864) (not e!1346216))))

(declare-fun lt!793467 () tuple2!23066)

(assert (=> b!2115279 (= res!917864 (= (list!9501 (_1!13394 lt!793467)) (_1!13396 lt!793471)))))

(declare-fun findLongestMatch!513 (Regex!5637 List!23644) tuple2!23068)

(assert (=> b!2115279 (= lt!793471 (findLongestMatch!513 r!15373 lt!793472))))

(declare-fun findLongestMatchZipperSequenceV3!6 ((InoxSet Context!2414) BalanceConc!15318 BalanceConc!15318) tuple2!23066)

(assert (=> b!2115279 (= lt!793467 (findLongestMatchZipperSequenceV3!6 lt!793473 input!6660 totalInput!1306))))

(declare-fun lt!793469 () Unit!37545)

(declare-fun longestMatchV3SameAsRegex!6 (Regex!5637 (InoxSet Context!2414) BalanceConc!15318 BalanceConc!15318) Unit!37545)

(assert (=> b!2115279 (= lt!793469 (longestMatchV3SameAsRegex!6 r!15373 lt!793473 input!6660 totalInput!1306))))

(declare-fun focus!273 (Regex!5637) (InoxSet Context!2414))

(assert (=> b!2115279 (= lt!793473 (focus!273 r!15373))))

(declare-fun b!2115280 () Bool)

(declare-fun e!1346221 () Bool)

(declare-fun tp!645455 () Bool)

(assert (=> b!2115280 (= e!1346221 (and (inv!31135 (c!339292 totalInput!1306)) tp!645455))))

(declare-fun b!2115281 () Bool)

(assert (=> b!2115281 (= e!1346213 e!1346214)))

(declare-fun b!2115282 () Bool)

(declare-fun e!1346229 () Bool)

(declare-fun e!1346222 () Bool)

(assert (=> b!2115282 (= e!1346229 e!1346222)))

(declare-fun mapIsEmpty!11444 () Bool)

(declare-fun mapRes!11445 () Bool)

(assert (=> mapIsEmpty!11444 mapRes!11445))

(declare-fun b!2115283 () Bool)

(declare-fun e!1346211 () Bool)

(declare-fun lt!793470 () MutLongMap!2380)

(assert (=> b!2115283 (= e!1346212 (and e!1346211 ((_ is LongMap!2380) lt!793470)))))

(assert (=> b!2115283 (= lt!793470 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))

(declare-fun b!2115284 () Bool)

(declare-fun tp_is_empty!9463 () Bool)

(assert (=> b!2115284 (= e!1346215 tp_is_empty!9463)))

(declare-fun e!1346210 () Bool)

(declare-fun e!1346225 () Bool)

(declare-fun b!2115285 () Bool)

(declare-fun inv!31136 (BalanceConc!15318) Bool)

(assert (=> b!2115285 (= e!1346225 (and e!1346232 (inv!31136 (totalInput!2847 cacheFurthestNullable!141)) e!1346210))))

(declare-fun b!2115286 () Bool)

(declare-fun e!1346206 () tuple2!23066)

(declare-fun call!128533 () tuple2!23066)

(assert (=> b!2115286 (= e!1346206 call!128533)))

(declare-fun b!2115287 () Bool)

(declare-fun tp!645436 () Bool)

(assert (=> b!2115287 (= e!1346202 (and tp!645436 mapRes!11445))))

(declare-fun condMapEmpty!11444 () Bool)

(declare-fun mapDefault!11445 () List!23645)

(assert (=> b!2115287 (= condMapEmpty!11444 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) ((as const (Array (_ BitVec 32) List!23645)) mapDefault!11445)))))

(declare-fun tp!645449 () Bool)

(declare-fun tp!645438 () Bool)

(declare-fun array_inv!2613 (array!8195) Bool)

(assert (=> b!2115288 (= e!1346218 (and tp!645450 tp!645449 tp!645438 (array_inv!2611 (_keys!2675 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) (array_inv!2613 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) e!1346217))))

(declare-fun b!2115289 () Bool)

(declare-fun res!917859 () Bool)

(assert (=> b!2115289 (=> (not res!917859) (not e!1346219))))

(declare-fun valid!1874 (CacheFurthestNullable!552) Bool)

(assert (=> b!2115289 (= res!917859 (valid!1874 cacheFurthestNullable!141))))

(declare-fun res!917861 () Bool)

(assert (=> b!2115290 (=> (not res!917861) (not e!1346223))))

(assert (=> b!2115290 (= res!917861 (forall!4843 (_2!13390 (_1!13391 lt!793476)) lambda!78241))))

(declare-fun b!2115291 () Bool)

(declare-fun findLongestMatchWithZipperSequenceV2!80 (Regex!5637 BalanceConc!15318 BalanceConc!15318) tuple2!23066)

(assert (=> b!2115291 (= e!1346203 (= (findLongestMatchWithZipperSequenceV2!80 r!15373 input!6660 totalInput!1306) lt!793475))))

(declare-fun b!2115292 () Bool)

(assert (=> b!2115292 (= e!1346219 e!1346198)))

(declare-fun res!917865 () Bool)

(assert (=> b!2115292 (=> (not res!917865) (not e!1346198))))

(declare-fun isSuffix!601 (List!23644 List!23644) Bool)

(assert (=> b!2115292 (= res!917865 (isSuffix!601 lt!793472 (list!9501 totalInput!1306)))))

(assert (=> b!2115292 (= lt!793472 (list!9501 input!6660))))

(declare-fun b!2115293 () Bool)

(assert (=> b!2115293 (= e!1346216 (= (list!9501 (_2!13394 lt!793467)) (_2!13396 lt!793471)))))

(declare-fun c!339289 () Bool)

(declare-fun bm!128528 () Bool)

(declare-fun splitAt!12 (BalanceConc!15318 Int) tuple2!23066)

(assert (=> bm!128528 (= call!128533 (splitAt!12 input!6660 (ite c!339289 0 lt!793479)))))

(declare-fun b!2115294 () Bool)

(declare-fun res!917863 () Bool)

(assert (=> b!2115294 (=> (not res!917863) (not e!1346203))))

(assert (=> b!2115294 (= res!917863 (= (list!9501 (_2!13394 lt!793475)) (_2!13396 lt!793471)))))

(declare-fun b!2115295 () Bool)

(declare-datatypes ((tuple2!23070 0))(
  ( (tuple2!23071 (_1!13397 Unit!37545) (_2!13397 CacheFurthestNullable!552)) )
))
(declare-fun fillUpCache!3 (List!23646 BalanceConc!15318 Int Int Int CacheFurthestNullable!552) tuple2!23070)

(assert (=> b!2115295 (= e!1346223 (= lt!793468 (tuple4!935 e!1346206 (_2!13391 lt!793476) (_3!1859 lt!793476) (_2!13397 (fillUpCache!3 (_2!13390 (_1!13391 lt!793476)) totalInput!1306 lt!793466 (_1!13390 (_1!13391 lt!793476)) 0 cacheFurthestNullable!141)))))))

(assert (=> b!2115295 (= c!339289 (< lt!793479 0))))

(declare-fun b!2115296 () Bool)

(declare-fun res!917852 () Bool)

(assert (=> b!2115296 (=> res!917852 e!1346207)))

(declare-fun valid!1875 (CacheDown!1574) Bool)

(assert (=> b!2115296 (= res!917852 (not (valid!1875 (_3!1861 lt!793468))))))

(declare-fun mapIsEmpty!11445 () Bool)

(assert (=> mapIsEmpty!11445 mapRes!11446))

(declare-fun b!2115297 () Bool)

(declare-fun tp!645447 () Bool)

(assert (=> b!2115297 (= e!1346210 (and (inv!31135 (c!339292 (totalInput!2847 cacheFurthestNullable!141))) tp!645447))))

(declare-fun b!2115298 () Bool)

(declare-fun tp!645437 () Bool)

(assert (=> b!2115298 (= e!1346215 tp!645437)))

(declare-fun b!2115299 () Bool)

(assert (=> b!2115299 (= e!1346211 e!1346229)))

(declare-fun b!2115300 () Bool)

(declare-fun res!917854 () Bool)

(assert (=> b!2115300 (=> res!917854 e!1346207)))

(assert (=> b!2115300 (= res!917854 (not (valid!1874 (_4!467 lt!793468))))))

(declare-fun res!917858 () Bool)

(assert (=> start!206598 (=> (not res!917858) (not e!1346219))))

(declare-fun validRegex!2225 (Regex!5637) Bool)

(assert (=> start!206598 (= res!917858 (validRegex!2225 r!15373))))

(assert (=> start!206598 e!1346219))

(declare-fun inv!31137 (CacheDown!1574) Bool)

(assert (=> start!206598 (and (inv!31137 cacheDown!1229) e!1346230)))

(assert (=> start!206598 e!1346215))

(declare-fun inv!31138 (CacheUp!1582) Bool)

(assert (=> start!206598 (and (inv!31138 cacheUp!1110) e!1346201)))

(assert (=> start!206598 (and (inv!31136 input!6660) e!1346204)))

(assert (=> start!206598 (and (inv!31136 totalInput!1306) e!1346221)))

(declare-fun inv!31139 (CacheFurthestNullable!552) Bool)

(assert (=> start!206598 (and (inv!31139 cacheFurthestNullable!141) e!1346225)))

(declare-fun b!2115269 () Bool)

(declare-fun res!917857 () Bool)

(assert (=> b!2115269 (=> (not res!917857) (not e!1346219))))

(assert (=> b!2115269 (= res!917857 (valid!1873 cacheUp!1110))))

(declare-fun mapNonEmpty!11446 () Bool)

(declare-fun tp!645456 () Bool)

(declare-fun tp!645458 () Bool)

(assert (=> mapNonEmpty!11446 (= mapRes!11445 (and tp!645456 tp!645458))))

(declare-fun mapValue!11444 () List!23645)

(declare-fun mapRest!11445 () (Array (_ BitVec 32) List!23645))

(declare-fun mapKey!11445 () (_ BitVec 32))

(assert (=> mapNonEmpty!11446 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) (store mapRest!11445 mapKey!11445 mapValue!11444))))

(declare-fun b!2115301 () Bool)

(assert (=> b!2115301 (= e!1346206 call!128533)))

(declare-fun b!2115302 () Bool)

(declare-fun res!917856 () Bool)

(assert (=> b!2115302 (=> (not res!917856) (not e!1346219))))

(assert (=> b!2115302 (= res!917856 (valid!1875 cacheDown!1229))))

(declare-fun tp!645433 () Bool)

(declare-fun tp!645432 () Bool)

(declare-fun array_inv!2614 (array!8199) Bool)

(assert (=> b!2115303 (= e!1346222 (and tp!645452 tp!645433 tp!645432 (array_inv!2611 (_keys!2677 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) (array_inv!2614 (_values!2660 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) e!1346209))))

(declare-fun b!2115304 () Bool)

(declare-fun lt!793480 () MutLongMap!2378)

(assert (=> b!2115304 (= e!1346199 (and e!1346231 ((_ is LongMap!2378) lt!793480)))))

(assert (=> b!2115304 (= lt!793480 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))

(declare-fun mapIsEmpty!11446 () Bool)

(assert (=> mapIsEmpty!11446 mapRes!11444))

(assert (= (and start!206598 res!917858) b!2115269))

(assert (= (and b!2115269 res!917857) b!2115302))

(assert (= (and b!2115302 res!917856) b!2115289))

(assert (= (and b!2115289 res!917859) b!2115274))

(assert (= (and b!2115274 res!917855) b!2115292))

(assert (= (and b!2115292 res!917865) b!2115279))

(assert (= (and b!2115279 res!917864) b!2115293))

(assert (= (and b!2115279 res!917862) b!2115294))

(assert (= (and b!2115294 res!917863) b!2115291))

(assert (= (and b!2115279 c!339290) b!2115265))

(assert (= (and b!2115279 (not c!339290)) b!2115277))

(assert (= (and b!2115279 res!917860) b!2115290))

(assert (= (and b!2115290 res!917861) b!2115295))

(assert (= (and b!2115295 c!339289) b!2115301))

(assert (= (and b!2115295 (not c!339289)) b!2115286))

(assert (= (or b!2115301 b!2115286) bm!128528))

(assert (= (and b!2115279 (not res!917853)) b!2115296))

(assert (= (and b!2115296 (not res!917852)) b!2115300))

(assert (= (and b!2115300 (not res!917854)) b!2115270))

(assert (= (and b!2115272 condMapEmpty!11445) mapIsEmpty!11445))

(assert (= (and b!2115272 (not condMapEmpty!11445)) mapNonEmpty!11444))

(assert (= b!2115288 b!2115272))

(assert (= b!2115261 b!2115288))

(assert (= b!2115262 b!2115261))

(assert (= (and b!2115304 ((_ is LongMap!2378) (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))) b!2115262))

(assert (= b!2115271 b!2115304))

(assert (= (and b!2115278 ((_ is HashMap!2293) (cache!2674 cacheDown!1229))) b!2115271))

(assert (= start!206598 b!2115278))

(assert (= (and start!206598 ((_ is ElementMatch!5637) r!15373)) b!2115284))

(assert (= (and start!206598 ((_ is Concat!9939) r!15373)) b!2115273))

(assert (= (and start!206598 ((_ is Star!5637) r!15373)) b!2115298))

(assert (= (and start!206598 ((_ is Union!5637) r!15373)) b!2115267))

(assert (= (and b!2115287 condMapEmpty!11444) mapIsEmpty!11444))

(assert (= (and b!2115287 (not condMapEmpty!11444)) mapNonEmpty!11446))

(assert (= b!2115276 b!2115287))

(assert (= b!2115259 b!2115276))

(assert (= b!2115281 b!2115259))

(assert (= (and b!2115268 ((_ is LongMap!2379) (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))) b!2115281))

(assert (= b!2115264 b!2115268))

(assert (= (and b!2115260 ((_ is HashMap!2292) (cache!2673 cacheUp!1110))) b!2115264))

(assert (= start!206598 b!2115260))

(assert (= start!206598 b!2115266))

(assert (= start!206598 b!2115280))

(assert (= (and b!2115263 condMapEmpty!11446) mapIsEmpty!11446))

(assert (= (and b!2115263 (not condMapEmpty!11446)) mapNonEmpty!11445))

(assert (= b!2115303 b!2115263))

(assert (= b!2115282 b!2115303))

(assert (= b!2115299 b!2115282))

(assert (= (and b!2115283 ((_ is LongMap!2380) (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))) b!2115299))

(assert (= b!2115275 b!2115283))

(assert (= (and b!2115285 ((_ is HashMap!2294) (cache!2675 cacheFurthestNullable!141))) b!2115275))

(assert (= b!2115285 b!2115297))

(assert (= start!206598 b!2115285))

(declare-fun m!2570747 () Bool)

(assert (=> b!2115296 m!2570747))

(declare-fun m!2570749 () Bool)

(assert (=> start!206598 m!2570749))

(declare-fun m!2570751 () Bool)

(assert (=> start!206598 m!2570751))

(declare-fun m!2570753 () Bool)

(assert (=> start!206598 m!2570753))

(declare-fun m!2570755 () Bool)

(assert (=> start!206598 m!2570755))

(declare-fun m!2570757 () Bool)

(assert (=> start!206598 m!2570757))

(declare-fun m!2570759 () Bool)

(assert (=> start!206598 m!2570759))

(declare-fun m!2570761 () Bool)

(assert (=> bm!128528 m!2570761))

(declare-fun m!2570763 () Bool)

(assert (=> mapNonEmpty!11444 m!2570763))

(declare-fun m!2570765 () Bool)

(assert (=> b!2115269 m!2570765))

(declare-fun m!2570767 () Bool)

(assert (=> b!2115300 m!2570767))

(declare-fun m!2570769 () Bool)

(assert (=> b!2115285 m!2570769))

(declare-fun m!2570771 () Bool)

(assert (=> b!2115290 m!2570771))

(declare-fun m!2570773 () Bool)

(assert (=> b!2115280 m!2570773))

(declare-fun m!2570775 () Bool)

(assert (=> b!2115294 m!2570775))

(declare-fun m!2570777 () Bool)

(assert (=> b!2115302 m!2570777))

(declare-fun m!2570779 () Bool)

(assert (=> b!2115297 m!2570779))

(declare-fun m!2570781 () Bool)

(assert (=> mapNonEmpty!11446 m!2570781))

(declare-fun m!2570783 () Bool)

(assert (=> b!2115276 m!2570783))

(declare-fun m!2570785 () Bool)

(assert (=> b!2115276 m!2570785))

(declare-fun m!2570787 () Bool)

(assert (=> b!2115279 m!2570787))

(declare-fun m!2570789 () Bool)

(assert (=> b!2115279 m!2570789))

(declare-fun m!2570791 () Bool)

(assert (=> b!2115279 m!2570791))

(declare-fun m!2570793 () Bool)

(assert (=> b!2115279 m!2570793))

(declare-fun m!2570795 () Bool)

(assert (=> b!2115279 m!2570795))

(declare-fun m!2570797 () Bool)

(assert (=> b!2115279 m!2570797))

(declare-fun m!2570799 () Bool)

(assert (=> b!2115279 m!2570799))

(declare-fun m!2570801 () Bool)

(assert (=> b!2115279 m!2570801))

(declare-fun m!2570803 () Bool)

(assert (=> b!2115279 m!2570803))

(declare-fun m!2570805 () Bool)

(assert (=> b!2115279 m!2570805))

(declare-fun m!2570807 () Bool)

(assert (=> b!2115279 m!2570807))

(declare-fun m!2570809 () Bool)

(assert (=> b!2115279 m!2570809))

(declare-fun m!2570811 () Bool)

(assert (=> b!2115279 m!2570811))

(declare-fun m!2570813 () Bool)

(assert (=> b!2115279 m!2570813))

(declare-fun m!2570815 () Bool)

(assert (=> b!2115279 m!2570815))

(declare-fun m!2570817 () Bool)

(assert (=> b!2115279 m!2570817))

(declare-fun m!2570819 () Bool)

(assert (=> b!2115279 m!2570819))

(declare-fun m!2570821 () Bool)

(assert (=> b!2115279 m!2570821))

(declare-fun m!2570823 () Bool)

(assert (=> b!2115289 m!2570823))

(declare-fun m!2570825 () Bool)

(assert (=> b!2115295 m!2570825))

(declare-fun m!2570827 () Bool)

(assert (=> b!2115288 m!2570827))

(declare-fun m!2570829 () Bool)

(assert (=> b!2115288 m!2570829))

(declare-fun m!2570831 () Bool)

(assert (=> b!2115293 m!2570831))

(declare-fun m!2570833 () Bool)

(assert (=> b!2115291 m!2570833))

(declare-fun m!2570835 () Bool)

(assert (=> b!2115292 m!2570835))

(assert (=> b!2115292 m!2570835))

(declare-fun m!2570837 () Bool)

(assert (=> b!2115292 m!2570837))

(declare-fun m!2570839 () Bool)

(assert (=> b!2115292 m!2570839))

(declare-fun m!2570841 () Bool)

(assert (=> b!2115303 m!2570841))

(declare-fun m!2570843 () Bool)

(assert (=> b!2115303 m!2570843))

(declare-fun m!2570845 () Bool)

(assert (=> mapNonEmpty!11445 m!2570845))

(declare-fun m!2570847 () Bool)

(assert (=> b!2115266 m!2570847))

(check-sat b_and!170883 (not b!2115273) (not b!2115293) b_and!170889 (not b!2115300) (not b_next!62005) (not b!2115294) (not b!2115302) (not b!2115344) (not setNonEmpty!14215) (not b!2115267) (not mapNonEmpty!11446) (not b!2115287) (not bm!128528) (not mapNonEmpty!11444) (not mapNonEmpty!11452) (not b!2115266) b_and!170891 (not b_next!62009) (not start!206598) (not b!2115298) (not b!2115290) b_and!170881 (not b_next!62011) b_and!170887 (not b!2115279) (not b!2115289) (not b!2115297) (not b!2115263) tp_is_empty!9463 (not b!2115347) (not b!2115276) (not b!2115295) (not b_next!62015) (not b!2115285) (not b!2115350) (not b_next!62007) (not b!2115291) (not b!2115296) (not b!2115280) (not b!2115292) (not b!2115339) (not b!2115269) (not b_next!62013) (not b!2115346) (not b!2115303) (not b!2115288) (not mapNonEmpty!11445) (not b!2115272) (not mapNonEmpty!11451) b_and!170885)
(check-sat b_and!170891 b_and!170883 (not b_next!62009) b_and!170881 b_and!170889 (not b_next!62005) (not b_next!62015) (not b_next!62007) (not b_next!62013) b_and!170885 (not b_next!62011) b_and!170887)
(get-model)

(declare-fun d!642514 () Bool)

(declare-fun res!917869 () Bool)

(declare-fun e!1346283 () Bool)

(assert (=> d!642514 (=> (not res!917869) (not e!1346283))))

(assert (=> d!642514 (= res!917869 ((_ is HashMap!2294) (cache!2675 cacheFurthestNullable!141)))))

(assert (=> d!642514 (= (inv!31139 cacheFurthestNullable!141) e!1346283)))

(declare-fun b!2115359 () Bool)

(declare-fun validCacheMapFurthestNullable!87 (MutableMap!2294 BalanceConc!15318) Bool)

(assert (=> b!2115359 (= e!1346283 (validCacheMapFurthestNullable!87 (cache!2675 cacheFurthestNullable!141) (totalInput!2847 cacheFurthestNullable!141)))))

(assert (= (and d!642514 res!917869) b!2115359))

(declare-fun m!2570849 () Bool)

(assert (=> b!2115359 m!2570849))

(assert (=> start!206598 d!642514))

(declare-fun d!642516 () Bool)

(declare-fun res!917872 () Bool)

(declare-fun e!1346286 () Bool)

(assert (=> d!642516 (=> (not res!917872) (not e!1346286))))

(assert (=> d!642516 (= res!917872 ((_ is HashMap!2292) (cache!2673 cacheUp!1110)))))

(assert (=> d!642516 (= (inv!31138 cacheUp!1110) e!1346286)))

(declare-fun b!2115362 () Bool)

(declare-fun validCacheMapUp!237 (MutableMap!2292) Bool)

(assert (=> b!2115362 (= e!1346286 (validCacheMapUp!237 (cache!2673 cacheUp!1110)))))

(assert (= (and d!642516 res!917872) b!2115362))

(declare-fun m!2570851 () Bool)

(assert (=> b!2115362 m!2570851))

(assert (=> start!206598 d!642516))

(declare-fun b!2115381 () Bool)

(declare-fun e!1346306 () Bool)

(declare-fun call!128542 () Bool)

(assert (=> b!2115381 (= e!1346306 call!128542)))

(declare-fun b!2115382 () Bool)

(declare-fun e!1346307 () Bool)

(declare-fun e!1346304 () Bool)

(assert (=> b!2115382 (= e!1346307 e!1346304)))

(declare-fun res!917885 () Bool)

(assert (=> b!2115382 (=> (not res!917885) (not e!1346304))))

(declare-fun call!128540 () Bool)

(assert (=> b!2115382 (= res!917885 call!128540)))

(declare-fun bm!128535 () Bool)

(declare-fun c!339298 () Bool)

(assert (=> bm!128535 (= call!128540 (validRegex!2225 (ite c!339298 (regOne!11787 r!15373) (regOne!11786 r!15373))))))

(declare-fun b!2115383 () Bool)

(declare-fun res!917886 () Bool)

(assert (=> b!2115383 (=> (not res!917886) (not e!1346306))))

(assert (=> b!2115383 (= res!917886 call!128540)))

(declare-fun e!1346303 () Bool)

(assert (=> b!2115383 (= e!1346303 e!1346306)))

(declare-fun d!642518 () Bool)

(declare-fun res!917883 () Bool)

(declare-fun e!1346302 () Bool)

(assert (=> d!642518 (=> res!917883 e!1346302)))

(assert (=> d!642518 (= res!917883 ((_ is ElementMatch!5637) r!15373))))

(assert (=> d!642518 (= (validRegex!2225 r!15373) e!1346302)))

(declare-fun b!2115384 () Bool)

(declare-fun e!1346305 () Bool)

(assert (=> b!2115384 (= e!1346305 e!1346303)))

(assert (=> b!2115384 (= c!339298 ((_ is Union!5637) r!15373))))

(declare-fun bm!128536 () Bool)

(declare-fun call!128541 () Bool)

(assert (=> bm!128536 (= call!128542 call!128541)))

(declare-fun b!2115385 () Bool)

(declare-fun res!917884 () Bool)

(assert (=> b!2115385 (=> res!917884 e!1346307)))

(assert (=> b!2115385 (= res!917884 (not ((_ is Concat!9939) r!15373)))))

(assert (=> b!2115385 (= e!1346303 e!1346307)))

(declare-fun b!2115386 () Bool)

(assert (=> b!2115386 (= e!1346302 e!1346305)))

(declare-fun c!339297 () Bool)

(assert (=> b!2115386 (= c!339297 ((_ is Star!5637) r!15373))))

(declare-fun b!2115387 () Bool)

(assert (=> b!2115387 (= e!1346304 call!128542)))

(declare-fun b!2115388 () Bool)

(declare-fun e!1346301 () Bool)

(assert (=> b!2115388 (= e!1346305 e!1346301)))

(declare-fun res!917887 () Bool)

(declare-fun nullable!1680 (Regex!5637) Bool)

(assert (=> b!2115388 (= res!917887 (not (nullable!1680 (reg!5966 r!15373))))))

(assert (=> b!2115388 (=> (not res!917887) (not e!1346301))))

(declare-fun bm!128537 () Bool)

(assert (=> bm!128537 (= call!128541 (validRegex!2225 (ite c!339297 (reg!5966 r!15373) (ite c!339298 (regTwo!11787 r!15373) (regTwo!11786 r!15373)))))))

(declare-fun b!2115389 () Bool)

(assert (=> b!2115389 (= e!1346301 call!128541)))

(assert (= (and d!642518 (not res!917883)) b!2115386))

(assert (= (and b!2115386 c!339297) b!2115388))

(assert (= (and b!2115386 (not c!339297)) b!2115384))

(assert (= (and b!2115388 res!917887) b!2115389))

(assert (= (and b!2115384 c!339298) b!2115383))

(assert (= (and b!2115384 (not c!339298)) b!2115385))

(assert (= (and b!2115383 res!917886) b!2115381))

(assert (= (and b!2115385 (not res!917884)) b!2115382))

(assert (= (and b!2115382 res!917885) b!2115387))

(assert (= (or b!2115381 b!2115387) bm!128536))

(assert (= (or b!2115383 b!2115382) bm!128535))

(assert (= (or b!2115389 bm!128536) bm!128537))

(declare-fun m!2570853 () Bool)

(assert (=> bm!128535 m!2570853))

(declare-fun m!2570855 () Bool)

(assert (=> b!2115388 m!2570855))

(declare-fun m!2570857 () Bool)

(assert (=> bm!128537 m!2570857))

(assert (=> start!206598 d!642518))

(declare-fun d!642520 () Bool)

(declare-fun isBalanced!2441 (Conc!7778) Bool)

(assert (=> d!642520 (= (inv!31136 input!6660) (isBalanced!2441 (c!339292 input!6660)))))

(declare-fun bs!441172 () Bool)

(assert (= bs!441172 d!642520))

(declare-fun m!2570859 () Bool)

(assert (=> bs!441172 m!2570859))

(assert (=> start!206598 d!642520))

(declare-fun d!642522 () Bool)

(assert (=> d!642522 (= (inv!31136 totalInput!1306) (isBalanced!2441 (c!339292 totalInput!1306)))))

(declare-fun bs!441173 () Bool)

(assert (= bs!441173 d!642522))

(declare-fun m!2570861 () Bool)

(assert (=> bs!441173 m!2570861))

(assert (=> start!206598 d!642522))

(declare-fun d!642524 () Bool)

(declare-fun res!917890 () Bool)

(declare-fun e!1346310 () Bool)

(assert (=> d!642524 (=> (not res!917890) (not e!1346310))))

(assert (=> d!642524 (= res!917890 ((_ is HashMap!2293) (cache!2674 cacheDown!1229)))))

(assert (=> d!642524 (= (inv!31137 cacheDown!1229) e!1346310)))

(declare-fun b!2115392 () Bool)

(declare-fun validCacheMapDown!235 (MutableMap!2293) Bool)

(assert (=> b!2115392 (= e!1346310 (validCacheMapDown!235 (cache!2674 cacheDown!1229)))))

(assert (= (and d!642524 res!917890) b!2115392))

(declare-fun m!2570863 () Bool)

(assert (=> b!2115392 m!2570863))

(assert (=> start!206598 d!642524))

(declare-fun d!642526 () Bool)

(declare-fun e!1346318 () Bool)

(assert (=> d!642526 e!1346318))

(declare-fun res!917894 () Bool)

(assert (=> d!642526 (=> (not res!917894) (not e!1346318))))

(declare-fun lt!793495 () tuple2!23070)

(assert (=> d!642526 (= res!917894 (valid!1874 (_2!13397 lt!793495)))))

(declare-fun e!1346317 () tuple2!23070)

(assert (=> d!642526 (= lt!793495 e!1346317)))

(declare-fun c!339303 () Bool)

(assert (=> d!642526 (= c!339303 ((_ is Nil!23562) (_2!13390 (_1!13391 lt!793476))))))

(assert (=> d!642526 (valid!1874 cacheFurthestNullable!141)))

(assert (=> d!642526 (= (fillUpCache!3 (_2!13390 (_1!13391 lt!793476)) totalInput!1306 lt!793466 (_1!13390 (_1!13391 lt!793476)) 0 cacheFurthestNullable!141) lt!793495)))

(declare-fun b!2115403 () Bool)

(declare-fun Unit!37547 () Unit!37545)

(assert (=> b!2115403 (= e!1346317 (tuple2!23071 Unit!37547 cacheFurthestNullable!141))))

(declare-fun b!2115404 () Bool)

(declare-fun e!1346319 () tuple2!23070)

(declare-fun Unit!37548 () Unit!37545)

(assert (=> b!2115404 (= e!1346319 (tuple2!23071 Unit!37548 cacheFurthestNullable!141))))

(declare-fun b!2115405 () Bool)

(declare-fun lt!793496 () tuple2!23070)

(declare-fun update!83 (CacheFurthestNullable!552 (InoxSet Context!2414) Int Int Int BalanceConc!15318) tuple2!23070)

(assert (=> b!2115405 (= lt!793496 (update!83 cacheFurthestNullable!141 (z!5682 (h!28963 (_2!13390 (_1!13391 lt!793476)))) (from!2599 (h!28963 (_2!13390 (_1!13391 lt!793476)))) (lastNullablePos!287 (h!28963 (_2!13390 (_1!13391 lt!793476)))) (_1!13390 (_1!13391 lt!793476)) totalInput!1306))))

(declare-fun lt!793497 () Unit!37545)

(declare-fun lemmaInvariant!377 (CacheFurthestNullable!552) Unit!37545)

(assert (=> b!2115405 (= lt!793497 (lemmaInvariant!377 cacheFurthestNullable!141))))

(assert (=> b!2115405 (= e!1346319 (tuple2!23071 (_1!13397 lt!793496) (_2!13397 lt!793496)))))

(declare-fun b!2115406 () Bool)

(assert (=> b!2115406 (= e!1346318 (= (totalInput!2847 (_2!13397 lt!793495)) totalInput!1306))))

(declare-fun b!2115407 () Bool)

(declare-fun lt!793498 () tuple2!23070)

(assert (=> b!2115407 (= e!1346317 (tuple2!23071 (_1!13397 lt!793498) (_2!13397 lt!793498)))))

(declare-fun c!339304 () Bool)

(assert (=> b!2115407 (= c!339304 (and (> lt!793466 1048576) (not (= (- 0 (* 10 (ite (>= 0 0) (div 0 10) (- (div (- 0) 10))))) 0))))))

(assert (=> b!2115407 (= lt!793498 (fillUpCache!3 (t!196155 (_2!13390 (_1!13391 lt!793476))) totalInput!1306 lt!793466 (_1!13390 (_1!13391 lt!793476)) (+ 0 1) (_2!13397 e!1346319)))))

(assert (= (and d!642526 c!339303) b!2115403))

(assert (= (and d!642526 (not c!339303)) b!2115407))

(assert (= (and b!2115407 c!339304) b!2115404))

(assert (= (and b!2115407 (not c!339304)) b!2115405))

(assert (= (and d!642526 res!917894) b!2115406))

(declare-fun m!2570865 () Bool)

(assert (=> d!642526 m!2570865))

(assert (=> d!642526 m!2570823))

(declare-fun m!2570867 () Bool)

(assert (=> b!2115405 m!2570867))

(declare-fun m!2570869 () Bool)

(assert (=> b!2115405 m!2570869))

(declare-fun m!2570871 () Bool)

(assert (=> b!2115407 m!2570871))

(assert (=> b!2115295 d!642526))

(declare-fun d!642528 () Bool)

(declare-fun c!339307 () Bool)

(assert (=> d!642528 (= c!339307 ((_ is Node!7778) (c!339292 input!6660)))))

(declare-fun e!1346324 () Bool)

(assert (=> d!642528 (= (inv!31135 (c!339292 input!6660)) e!1346324)))

(declare-fun b!2115414 () Bool)

(declare-fun inv!31140 (Conc!7778) Bool)

(assert (=> b!2115414 (= e!1346324 (inv!31140 (c!339292 input!6660)))))

(declare-fun b!2115415 () Bool)

(declare-fun e!1346325 () Bool)

(assert (=> b!2115415 (= e!1346324 e!1346325)))

(declare-fun res!917897 () Bool)

(assert (=> b!2115415 (= res!917897 (not ((_ is Leaf!11364) (c!339292 input!6660))))))

(assert (=> b!2115415 (=> res!917897 e!1346325)))

(declare-fun b!2115416 () Bool)

(declare-fun inv!31141 (Conc!7778) Bool)

(assert (=> b!2115416 (= e!1346325 (inv!31141 (c!339292 input!6660)))))

(assert (= (and d!642528 c!339307) b!2115414))

(assert (= (and d!642528 (not c!339307)) b!2115415))

(assert (= (and b!2115415 (not res!917897)) b!2115416))

(declare-fun m!2570873 () Bool)

(assert (=> b!2115414 m!2570873))

(declare-fun m!2570875 () Bool)

(assert (=> b!2115416 m!2570875))

(assert (=> b!2115266 d!642528))

(declare-fun d!642530 () Bool)

(assert (=> d!642530 (= (inv!31136 (totalInput!2847 cacheFurthestNullable!141)) (isBalanced!2441 (c!339292 (totalInput!2847 cacheFurthestNullable!141))))))

(declare-fun bs!441174 () Bool)

(assert (= bs!441174 d!642530))

(declare-fun m!2570877 () Bool)

(assert (=> bs!441174 m!2570877))

(assert (=> b!2115285 d!642530))

(declare-fun d!642532 () Bool)

(assert (=> d!642532 (= (array_inv!2611 (_keys!2677 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) (bvsge (size!18396 (_keys!2677 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2115303 d!642532))

(declare-fun d!642534 () Bool)

(assert (=> d!642534 (= (array_inv!2614 (_values!2660 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) (bvsge (size!18399 (_values!2660 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))) #b00000000000000000000000000000000))))

(assert (=> b!2115303 d!642534))

(declare-fun d!642536 () Bool)

(declare-fun list!9502 (Conc!7778) List!23644)

(assert (=> d!642536 (= (list!9501 (_2!13394 lt!793475)) (list!9502 (c!339292 (_2!13394 lt!793475))))))

(declare-fun bs!441175 () Bool)

(assert (= bs!441175 d!642536))

(declare-fun m!2570879 () Bool)

(assert (=> bs!441175 m!2570879))

(assert (=> b!2115294 d!642536))

(declare-fun d!642538 () Bool)

(assert (=> d!642538 (= (valid!1875 (_3!1861 lt!793468)) (validCacheMapDown!235 (cache!2674 (_3!1861 lt!793468))))))

(declare-fun bs!441176 () Bool)

(assert (= bs!441176 d!642538))

(declare-fun m!2570881 () Bool)

(assert (=> bs!441176 m!2570881))

(assert (=> b!2115296 d!642538))

(declare-fun d!642540 () Bool)

(assert (=> d!642540 (= (array_inv!2611 (_keys!2676 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) (bvsge (size!18396 (_keys!2676 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2115276 d!642540))

(declare-fun d!642542 () Bool)

(assert (=> d!642542 (= (array_inv!2612 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) (bvsge (size!18398 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110))))))) #b00000000000000000000000000000000))))

(assert (=> b!2115276 d!642542))

(declare-fun d!642544 () Bool)

(assert (=> d!642544 (= (list!9501 (_2!13394 lt!793467)) (list!9502 (c!339292 (_2!13394 lt!793467))))))

(declare-fun bs!441177 () Bool)

(assert (= bs!441177 d!642544))

(declare-fun m!2570883 () Bool)

(assert (=> bs!441177 m!2570883))

(assert (=> b!2115293 d!642544))

(declare-fun d!642546 () Bool)

(assert (=> d!642546 (= (valid!1875 cacheDown!1229) (validCacheMapDown!235 (cache!2674 cacheDown!1229)))))

(declare-fun bs!441178 () Bool)

(assert (= bs!441178 d!642546))

(assert (=> bs!441178 m!2570863))

(assert (=> b!2115302 d!642546))

(declare-fun d!642548 () Bool)

(declare-fun e!1346328 () Bool)

(assert (=> d!642548 e!1346328))

(declare-fun res!917902 () Bool)

(assert (=> d!642548 (=> (not res!917902) (not e!1346328))))

(declare-fun lt!793503 () tuple2!23066)

(assert (=> d!642548 (= res!917902 (isBalanced!2441 (c!339292 (_1!13394 lt!793503))))))

(declare-datatypes ((tuple2!23072 0))(
  ( (tuple2!23073 (_1!13398 Conc!7778) (_2!13398 Conc!7778)) )
))
(declare-fun lt!793504 () tuple2!23072)

(assert (=> d!642548 (= lt!793503 (tuple2!23067 (BalanceConc!15319 (_1!13398 lt!793504)) (BalanceConc!15319 (_2!13398 lt!793504))))))

(declare-fun splitAt!13 (Conc!7778 Int) tuple2!23072)

(assert (=> d!642548 (= lt!793504 (splitAt!13 (c!339292 input!6660) (ite c!339289 0 lt!793479)))))

(assert (=> d!642548 (isBalanced!2441 (c!339292 input!6660))))

(assert (=> d!642548 (= (splitAt!12 input!6660 (ite c!339289 0 lt!793479)) lt!793503)))

(declare-fun b!2115421 () Bool)

(declare-fun res!917903 () Bool)

(assert (=> b!2115421 (=> (not res!917903) (not e!1346328))))

(assert (=> b!2115421 (= res!917903 (isBalanced!2441 (c!339292 (_2!13394 lt!793503))))))

(declare-fun b!2115422 () Bool)

(declare-fun splitAtIndex!20 (List!23644 Int) tuple2!23068)

(assert (=> b!2115422 (= e!1346328 (= (tuple2!23069 (list!9501 (_1!13394 lt!793503)) (list!9501 (_2!13394 lt!793503))) (splitAtIndex!20 (list!9501 input!6660) (ite c!339289 0 lt!793479))))))

(assert (= (and d!642548 res!917902) b!2115421))

(assert (= (and b!2115421 res!917903) b!2115422))

(declare-fun m!2570885 () Bool)

(assert (=> d!642548 m!2570885))

(declare-fun m!2570887 () Bool)

(assert (=> d!642548 m!2570887))

(assert (=> d!642548 m!2570859))

(declare-fun m!2570889 () Bool)

(assert (=> b!2115421 m!2570889))

(declare-fun m!2570891 () Bool)

(assert (=> b!2115422 m!2570891))

(declare-fun m!2570893 () Bool)

(assert (=> b!2115422 m!2570893))

(assert (=> b!2115422 m!2570839))

(assert (=> b!2115422 m!2570839))

(declare-fun m!2570895 () Bool)

(assert (=> b!2115422 m!2570895))

(assert (=> bm!128528 d!642548))

(declare-fun d!642550 () Bool)

(declare-fun res!917908 () Bool)

(declare-fun e!1346333 () Bool)

(assert (=> d!642550 (=> res!917908 e!1346333)))

(assert (=> d!642550 (= res!917908 ((_ is Nil!23562) (_2!13390 (_1!13391 lt!793476))))))

(assert (=> d!642550 (= (forall!4843 (_2!13390 (_1!13391 lt!793476)) lambda!78241) e!1346333)))

(declare-fun b!2115427 () Bool)

(declare-fun e!1346334 () Bool)

(assert (=> b!2115427 (= e!1346333 e!1346334)))

(declare-fun res!917909 () Bool)

(assert (=> b!2115427 (=> (not res!917909) (not e!1346334))))

(declare-fun dynLambda!11291 (Int StackFrame!14) Bool)

(assert (=> b!2115427 (= res!917909 (dynLambda!11291 lambda!78241 (h!28963 (_2!13390 (_1!13391 lt!793476)))))))

(declare-fun b!2115428 () Bool)

(assert (=> b!2115428 (= e!1346334 (forall!4843 (t!196155 (_2!13390 (_1!13391 lt!793476))) lambda!78241))))

(assert (= (and d!642550 (not res!917908)) b!2115427))

(assert (= (and b!2115427 res!917909) b!2115428))

(declare-fun b_lambda!70385 () Bool)

(assert (=> (not b_lambda!70385) (not b!2115427)))

(declare-fun m!2570897 () Bool)

(assert (=> b!2115427 m!2570897))

(declare-fun m!2570899 () Bool)

(assert (=> b!2115428 m!2570899))

(assert (=> b!2115290 d!642550))

(declare-fun d!642552 () Bool)

(declare-fun c!339308 () Bool)

(assert (=> d!642552 (= c!339308 ((_ is Node!7778) (c!339292 totalInput!1306)))))

(declare-fun e!1346335 () Bool)

(assert (=> d!642552 (= (inv!31135 (c!339292 totalInput!1306)) e!1346335)))

(declare-fun b!2115429 () Bool)

(assert (=> b!2115429 (= e!1346335 (inv!31140 (c!339292 totalInput!1306)))))

(declare-fun b!2115430 () Bool)

(declare-fun e!1346336 () Bool)

(assert (=> b!2115430 (= e!1346335 e!1346336)))

(declare-fun res!917910 () Bool)

(assert (=> b!2115430 (= res!917910 (not ((_ is Leaf!11364) (c!339292 totalInput!1306))))))

(assert (=> b!2115430 (=> res!917910 e!1346336)))

(declare-fun b!2115431 () Bool)

(assert (=> b!2115431 (= e!1346336 (inv!31141 (c!339292 totalInput!1306)))))

(assert (= (and d!642552 c!339308) b!2115429))

(assert (= (and d!642552 (not c!339308)) b!2115430))

(assert (= (and b!2115430 (not res!917910)) b!2115431))

(declare-fun m!2570901 () Bool)

(assert (=> b!2115429 m!2570901))

(declare-fun m!2570903 () Bool)

(assert (=> b!2115431 m!2570903))

(assert (=> b!2115280 d!642552))

(declare-fun d!642554 () Bool)

(declare-fun e!1346339 () Bool)

(assert (=> d!642554 e!1346339))

(declare-fun res!917913 () Bool)

(assert (=> d!642554 (=> res!917913 e!1346339)))

(declare-fun lt!793507 () Bool)

(assert (=> d!642554 (= res!917913 (not lt!793507))))

(declare-fun drop!1176 (List!23644 Int) List!23644)

(assert (=> d!642554 (= lt!793507 (= lt!793472 (drop!1176 (list!9501 totalInput!1306) (- (size!18401 (list!9501 totalInput!1306)) (size!18401 lt!793472)))))))

(assert (=> d!642554 (= (isSuffix!601 lt!793472 (list!9501 totalInput!1306)) lt!793507)))

(declare-fun b!2115434 () Bool)

(assert (=> b!2115434 (= e!1346339 (>= (size!18401 (list!9501 totalInput!1306)) (size!18401 lt!793472)))))

(assert (= (and d!642554 (not res!917913)) b!2115434))

(assert (=> d!642554 m!2570835))

(declare-fun m!2570905 () Bool)

(assert (=> d!642554 m!2570905))

(assert (=> d!642554 m!2570795))

(assert (=> d!642554 m!2570835))

(declare-fun m!2570907 () Bool)

(assert (=> d!642554 m!2570907))

(assert (=> b!2115434 m!2570835))

(assert (=> b!2115434 m!2570905))

(assert (=> b!2115434 m!2570795))

(assert (=> b!2115292 d!642554))

(declare-fun d!642556 () Bool)

(assert (=> d!642556 (= (list!9501 totalInput!1306) (list!9502 (c!339292 totalInput!1306)))))

(declare-fun bs!441179 () Bool)

(assert (= bs!441179 d!642556))

(declare-fun m!2570909 () Bool)

(assert (=> bs!441179 m!2570909))

(assert (=> b!2115292 d!642556))

(declare-fun d!642558 () Bool)

(assert (=> d!642558 (= (list!9501 input!6660) (list!9502 (c!339292 input!6660)))))

(declare-fun bs!441180 () Bool)

(assert (= bs!441180 d!642558))

(declare-fun m!2570911 () Bool)

(assert (=> bs!441180 m!2570911))

(assert (=> b!2115292 d!642558))

(declare-fun d!642560 () Bool)

(assert (=> d!642560 (= (valid!1874 (_4!467 lt!793468)) (validCacheMapFurthestNullable!87 (cache!2675 (_4!467 lt!793468)) (totalInput!2847 (_4!467 lt!793468))))))

(declare-fun bs!441181 () Bool)

(assert (= bs!441181 d!642560))

(declare-fun m!2570913 () Bool)

(assert (=> bs!441181 m!2570913))

(assert (=> b!2115300 d!642560))

(declare-fun d!642562 () Bool)

(declare-fun lt!793510 () tuple2!23066)

(assert (=> d!642562 (= (tuple2!23069 (list!9501 (_1!13394 lt!793510)) (list!9501 (_2!13394 lt!793510))) (findLongestMatch!513 r!15373 (list!9501 input!6660)))))

(declare-fun choose!12650 (Regex!5637 BalanceConc!15318 BalanceConc!15318) tuple2!23066)

(assert (=> d!642562 (= lt!793510 (choose!12650 r!15373 input!6660 totalInput!1306))))

(assert (=> d!642562 (validRegex!2225 r!15373)))

(assert (=> d!642562 (= (findLongestMatchWithZipperSequenceV2!80 r!15373 input!6660 totalInput!1306) lt!793510)))

(declare-fun bs!441182 () Bool)

(assert (= bs!441182 d!642562))

(assert (=> bs!441182 m!2570839))

(declare-fun m!2570915 () Bool)

(assert (=> bs!441182 m!2570915))

(assert (=> bs!441182 m!2570839))

(declare-fun m!2570917 () Bool)

(assert (=> bs!441182 m!2570917))

(declare-fun m!2570919 () Bool)

(assert (=> bs!441182 m!2570919))

(assert (=> bs!441182 m!2570749))

(declare-fun m!2570921 () Bool)

(assert (=> bs!441182 m!2570921))

(assert (=> b!2115291 d!642562))

(declare-fun d!642564 () Bool)

(assert (=> d!642564 (= (array_inv!2611 (_keys!2675 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) (bvsge (size!18396 (_keys!2675 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2115288 d!642564))

(declare-fun d!642566 () Bool)

(assert (=> d!642566 (= (array_inv!2613 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) (bvsge (size!18397 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229))))))) #b00000000000000000000000000000000))))

(assert (=> b!2115288 d!642566))

(declare-fun d!642568 () Bool)

(assert (=> d!642568 (= (valid!1874 cacheFurthestNullable!141) (validCacheMapFurthestNullable!87 (cache!2675 cacheFurthestNullable!141) (totalInput!2847 cacheFurthestNullable!141)))))

(declare-fun bs!441183 () Bool)

(assert (= bs!441183 d!642568))

(assert (=> bs!441183 m!2570849))

(assert (=> b!2115289 d!642568))

(declare-fun d!642570 () Bool)

(declare-fun e!1346342 () Bool)

(assert (=> d!642570 e!1346342))

(declare-fun res!917917 () Bool)

(assert (=> d!642570 (=> (not res!917917) (not e!1346342))))

(assert (=> d!642570 (= res!917917 (validRegex!2225 r!15373))))

(assert (=> d!642570 (= (focus!273 r!15373) (store ((as const (Array Context!2414 Bool)) false) (Context!2415 (Cons!23558 r!15373 Nil!23558)) true))))

(declare-fun b!2115437 () Bool)

(declare-datatypes ((List!23648 0))(
  ( (Nil!23564) (Cons!23564 (h!28965 Context!2414) (t!196157 List!23648)) )
))
(declare-fun unfocusZipper!62 (List!23648) Regex!5637)

(declare-fun toList!1054 ((InoxSet Context!2414)) List!23648)

(assert (=> b!2115437 (= e!1346342 (= (unfocusZipper!62 (toList!1054 (store ((as const (Array Context!2414 Bool)) false) (Context!2415 (Cons!23558 r!15373 Nil!23558)) true))) r!15373))))

(assert (= (and d!642570 res!917917) b!2115437))

(assert (=> d!642570 m!2570749))

(declare-fun m!2570923 () Bool)

(assert (=> d!642570 m!2570923))

(assert (=> b!2115437 m!2570923))

(assert (=> b!2115437 m!2570923))

(declare-fun m!2570925 () Bool)

(assert (=> b!2115437 m!2570925))

(assert (=> b!2115437 m!2570925))

(declare-fun m!2570927 () Bool)

(assert (=> b!2115437 m!2570927))

(assert (=> b!2115279 d!642570))

(declare-fun d!642572 () Bool)

(assert (=> d!642572 (= (list!9501 (_1!13394 lt!793467)) (list!9502 (c!339292 (_1!13394 lt!793467))))))

(declare-fun bs!441184 () Bool)

(assert (= bs!441184 d!642572))

(declare-fun m!2570929 () Bool)

(assert (=> bs!441184 m!2570929))

(assert (=> b!2115279 d!642572))

(declare-fun d!642574 () Bool)

(declare-fun lt!793513 () Int)

(assert (=> d!642574 (>= lt!793513 0)))

(declare-fun e!1346345 () Int)

(assert (=> d!642574 (= lt!793513 e!1346345)))

(declare-fun c!339311 () Bool)

(assert (=> d!642574 (= c!339311 ((_ is Nil!23560) lt!793472))))

(assert (=> d!642574 (= (size!18401 lt!793472) lt!793513)))

(declare-fun b!2115442 () Bool)

(assert (=> b!2115442 (= e!1346345 0)))

(declare-fun b!2115443 () Bool)

(assert (=> b!2115443 (= e!1346345 (+ 1 (size!18401 (t!196153 lt!793472))))))

(assert (= (and d!642574 c!339311) b!2115442))

(assert (= (and d!642574 (not c!339311)) b!2115443))

(declare-fun m!2570931 () Bool)

(assert (=> b!2115443 m!2570931))

(assert (=> b!2115279 d!642574))

(declare-fun d!642576 () Bool)

(declare-fun lt!793516 () Int)

(assert (=> d!642576 (= lt!793516 (size!18401 (list!9501 input!6660)))))

(declare-fun size!18402 (Conc!7778) Int)

(assert (=> d!642576 (= lt!793516 (size!18402 (c!339292 input!6660)))))

(assert (=> d!642576 (= (size!18400 input!6660) lt!793516)))

(declare-fun bs!441185 () Bool)

(assert (= bs!441185 d!642576))

(assert (=> bs!441185 m!2570839))

(assert (=> bs!441185 m!2570839))

(declare-fun m!2570933 () Bool)

(assert (=> bs!441185 m!2570933))

(declare-fun m!2570935 () Bool)

(assert (=> bs!441185 m!2570935))

(assert (=> b!2115279 d!642576))

(declare-fun d!642578 () Bool)

(declare-fun lt!793540 () tuple2!23068)

(declare-fun ++!6312 (List!23644 List!23644) List!23644)

(assert (=> d!642578 (= (++!6312 (_1!13396 lt!793540) (_2!13396 lt!793540)) lt!793472)))

(declare-fun findLongestMatchInner!595 (Regex!5637 List!23644 Int List!23644 List!23644 Int) tuple2!23068)

(assert (=> d!642578 (= lt!793540 (findLongestMatchInner!595 r!15373 Nil!23560 0 lt!793472 lt!793472 (sizeTr!96 lt!793472 0)))))

(declare-fun lt!793537 () Unit!37545)

(declare-fun lt!793534 () Unit!37545)

(assert (=> d!642578 (= lt!793537 lt!793534)))

(declare-fun lt!793536 () List!23644)

(declare-fun lt!793538 () Int)

(assert (=> d!642578 (= (sizeTr!96 lt!793536 lt!793538) (+ (size!18401 lt!793536) lt!793538))))

(assert (=> d!642578 (= lt!793534 (lemmaSizeTrEqualsSize!96 lt!793536 lt!793538))))

(assert (=> d!642578 (= lt!793538 0)))

(assert (=> d!642578 (= lt!793536 Nil!23560)))

(declare-fun lt!793535 () Unit!37545)

(declare-fun lt!793533 () Unit!37545)

(assert (=> d!642578 (= lt!793535 lt!793533)))

(declare-fun lt!793539 () Int)

(assert (=> d!642578 (= (sizeTr!96 lt!793472 lt!793539) (+ (size!18401 lt!793472) lt!793539))))

(assert (=> d!642578 (= lt!793533 (lemmaSizeTrEqualsSize!96 lt!793472 lt!793539))))

(assert (=> d!642578 (= lt!793539 0)))

(assert (=> d!642578 (validRegex!2225 r!15373)))

(assert (=> d!642578 (= (findLongestMatch!513 r!15373 lt!793472) lt!793540)))

(declare-fun bs!441186 () Bool)

(assert (= bs!441186 d!642578))

(declare-fun m!2570937 () Bool)

(assert (=> bs!441186 m!2570937))

(declare-fun m!2570939 () Bool)

(assert (=> bs!441186 m!2570939))

(declare-fun m!2570941 () Bool)

(assert (=> bs!441186 m!2570941))

(declare-fun m!2570943 () Bool)

(assert (=> bs!441186 m!2570943))

(assert (=> bs!441186 m!2570749))

(assert (=> bs!441186 m!2570789))

(declare-fun m!2570945 () Bool)

(assert (=> bs!441186 m!2570945))

(assert (=> bs!441186 m!2570789))

(assert (=> bs!441186 m!2570795))

(declare-fun m!2570947 () Bool)

(assert (=> bs!441186 m!2570947))

(declare-fun m!2570949 () Bool)

(assert (=> bs!441186 m!2570949))

(assert (=> b!2115279 d!642578))

(declare-fun bs!441187 () Bool)

(declare-fun d!642580 () Bool)

(assert (= bs!441187 (and d!642580 b!2115279)))

(declare-fun lt!793560 () tuple3!2784)

(declare-fun lambda!78246 () Int)

(assert (=> bs!441187 (= (= (_1!13390 (_1!13391 lt!793560)) (_1!13390 (_1!13391 lt!793476))) (= lambda!78246 lambda!78240))))

(declare-fun bs!441188 () Bool)

(assert (= bs!441188 (and d!642580 b!2115290)))

(assert (=> bs!441188 (not (= lambda!78246 lambda!78241))))

(declare-fun b!2115456 () Bool)

(declare-fun e!1346360 () Bool)

(declare-fun mapRes!11454 () Bool)

(assert (=> b!2115456 (= e!1346360 mapRes!11454)))

(declare-fun condMapEmpty!11454 () Bool)

(declare-fun mapDefault!11453 () List!23643)

(assert (=> b!2115456 (= condMapEmpty!11454 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793560)))))))) ((as const (Array (_ BitVec 32) List!23643)) mapDefault!11453)))))

(declare-fun b!2115457 () Bool)

(declare-fun e!1346361 () Bool)

(declare-fun e!1346359 () Bool)

(assert (=> b!2115457 (= e!1346361 e!1346359)))

(declare-fun mapIsEmpty!11453 () Bool)

(assert (=> mapIsEmpty!11453 mapRes!11454))

(declare-fun b!2115458 () Bool)

(declare-fun e!1346367 () Bool)

(declare-fun e!1346366 () Bool)

(assert (=> b!2115458 (= e!1346367 e!1346366)))

(declare-fun setNonEmpty!14216 () Bool)

(declare-fun setRes!14216 () Bool)

(assert (=> setNonEmpty!14216 (= setRes!14216 true)))

(declare-fun setElem!14216 () Context!2414)

(declare-fun setRest!14216 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14216 (= (z!5682 (h!28963 (_2!13390 (_1!13391 lt!793560)))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14216 true) setRest!14216))))

(declare-fun b!2115459 () Bool)

(declare-fun e!1346357 () Bool)

(assert (=> b!2115459 (= e!1346357 e!1346361)))

(declare-fun mapNonEmpty!11453 () Bool)

(assert (=> mapNonEmpty!11453 (= mapRes!11454 true)))

(declare-fun mapKey!11453 () (_ BitVec 32))

(declare-fun mapRest!11454 () (Array (_ BitVec 32) List!23643))

(declare-fun mapValue!11454 () List!23643)

(assert (=> mapNonEmpty!11453 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793560)))))))) (store mapRest!11454 mapKey!11453 mapValue!11454))))

(declare-fun b!2115460 () Bool)

(declare-fun e!1346353 () Bool)

(assert (=> b!2115460 (= e!1346353 e!1346367)))

(declare-fun b!2115461 () Bool)

(declare-fun e!1346364 () Bool)

(declare-fun e!1346352 () Bool)

(assert (=> b!2115461 (= e!1346364 e!1346352)))

(declare-fun e!1346365 () Bool)

(declare-fun e!1346363 () Bool)

(assert (=> d!642580 (and e!1346364 e!1346365 e!1346363)))

(declare-fun mapIsEmpty!11454 () Bool)

(declare-fun mapRes!11453 () Bool)

(assert (=> mapIsEmpty!11454 mapRes!11453))

(declare-fun b!2115462 () Bool)

(declare-fun e!1346358 () Bool)

(declare-fun lt!793563 () MutLongMap!2379)

(assert (=> b!2115462 (= e!1346358 (and e!1346357 ((_ is LongMap!2379) lt!793563)))))

(assert (=> b!2115462 (= lt!793563 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793560)))))))

(declare-fun mapNonEmpty!11454 () Bool)

(assert (=> mapNonEmpty!11454 (= mapRes!11453 true)))

(declare-fun mapRest!11453 () (Array (_ BitVec 32) List!23645))

(declare-fun mapKey!11454 () (_ BitVec 32))

(declare-fun mapValue!11453 () List!23645)

(assert (=> mapNonEmpty!11454 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793560)))))))) (store mapRest!11453 mapKey!11454 mapValue!11453))))

(declare-fun setIsEmpty!14216 () Bool)

(assert (=> setIsEmpty!14216 setRes!14216))

(declare-fun b!2115463 () Bool)

(assert (=> b!2115463 (= e!1346366 e!1346360)))

(declare-fun b!2115464 () Bool)

(declare-fun e!1346355 () Bool)

(assert (=> b!2115464 (= e!1346355 mapRes!11453)))

(declare-fun condMapEmpty!11453 () Bool)

(declare-fun mapDefault!11454 () List!23645)

(assert (=> b!2115464 (= condMapEmpty!11453 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793560)))))))) ((as const (Array (_ BitVec 32) List!23645)) mapDefault!11454)))))

(declare-fun b!2115465 () Bool)

(assert (=> b!2115465 (= e!1346352 setRes!14216)))

(declare-fun condSetEmpty!14216 () Bool)

(assert (=> b!2115465 (= condSetEmpty!14216 (= (z!5682 (h!28963 (_2!13390 (_1!13391 lt!793560)))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115466 () Bool)

(declare-fun e!1346354 () Bool)

(declare-fun lt!793562 () MutLongMap!2378)

(assert (=> b!2115466 (= e!1346354 (and e!1346353 ((_ is LongMap!2378) lt!793562)))))

(assert (=> b!2115466 (= lt!793562 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793560)))))))

(declare-fun b!2115467 () Bool)

(assert (=> b!2115467 (= e!1346359 e!1346355)))

(declare-fun b!2115468 () Bool)

(declare-fun e!1346356 () Bool)

(assert (=> b!2115468 (= e!1346356 e!1346354)))

(declare-fun b!2115469 () Bool)

(declare-fun e!1346362 () Bool)

(assert (=> b!2115469 (= e!1346362 e!1346358)))

(declare-fun b!2115470 () Bool)

(assert (=> b!2115470 (= e!1346365 e!1346362)))

(declare-fun b!2115471 () Bool)

(assert (=> b!2115471 (= e!1346363 e!1346356)))

(assert (= (and b!2115465 condSetEmpty!14216) setIsEmpty!14216))

(assert (= (and b!2115465 (not condSetEmpty!14216)) setNonEmpty!14216))

(assert (= b!2115461 b!2115465))

(assert (= (and d!642580 ((_ is Cons!23562) (_2!13390 (_1!13391 lt!793560)))) b!2115461))

(assert (= (and b!2115464 condMapEmpty!11453) mapIsEmpty!11454))

(assert (= (and b!2115464 (not condMapEmpty!11453)) mapNonEmpty!11454))

(assert (= b!2115467 b!2115464))

(assert (= b!2115457 b!2115467))

(assert (= b!2115459 b!2115457))

(assert (= (and b!2115462 ((_ is LongMap!2379) (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793560)))))) b!2115459))

(assert (= b!2115469 b!2115462))

(assert (= (and b!2115470 ((_ is HashMap!2292) (cache!2673 (_2!13391 lt!793560)))) b!2115469))

(assert (= d!642580 b!2115470))

(assert (= (and b!2115456 condMapEmpty!11454) mapIsEmpty!11453))

(assert (= (and b!2115456 (not condMapEmpty!11454)) mapNonEmpty!11453))

(assert (= b!2115463 b!2115456))

(assert (= b!2115458 b!2115463))

(assert (= b!2115460 b!2115458))

(assert (= (and b!2115466 ((_ is LongMap!2378) (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793560)))))) b!2115460))

(assert (= b!2115468 b!2115466))

(assert (= (and b!2115471 ((_ is HashMap!2293) (cache!2674 (_3!1859 lt!793560)))) b!2115468))

(assert (= d!642580 b!2115471))

(assert (=> b!2115463 (< (dynLambda!11286 order!14529 (defaultEntry!2743 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793560)))))))) (dynLambda!11287 order!14531 lambda!78246))))

(assert (=> b!2115469 (< (dynLambda!11288 order!14533 (defaultValue!2454 (cache!2673 (_2!13391 lt!793560)))) (dynLambda!11287 order!14531 lambda!78246))))

(assert (=> b!2115468 (< (dynLambda!11289 order!14535 (defaultValue!2455 (cache!2674 (_3!1859 lt!793560)))) (dynLambda!11287 order!14531 lambda!78246))))

(assert (=> b!2115467 (< (dynLambda!11290 order!14537 (defaultEntry!2744 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793560)))))))) (dynLambda!11287 order!14531 lambda!78246))))

(declare-fun m!2570951 () Bool)

(assert (=> mapNonEmpty!11453 m!2570951))

(declare-fun m!2570953 () Bool)

(assert (=> mapNonEmpty!11454 m!2570953))

(declare-fun lambda!78247 () Int)

(assert (=> bs!441187 (not (= lambda!78247 lambda!78240))))

(assert (=> bs!441188 (= lambda!78247 lambda!78241)))

(assert (=> d!642580 (not (= lambda!78247 lambda!78246))))

(assert (=> d!642580 true))

(declare-fun b!2115453 () Bool)

(declare-fun e!1346350 () tuple2!23066)

(declare-fun call!128545 () tuple2!23066)

(assert (=> b!2115453 (= e!1346350 call!128545)))

(declare-fun b!2115454 () Bool)

(assert (=> b!2115454 (= e!1346350 call!128545)))

(declare-fun c!339317 () Bool)

(declare-fun bm!128540 () Bool)

(declare-fun lt!793556 () Int)

(assert (=> bm!128540 (= call!128545 (splitAt!12 input!6660 (ite c!339317 0 lt!793556)))))

(declare-fun b!2115455 () Bool)

(declare-fun e!1346351 () Int)

(declare-fun lt!793558 () Int)

(assert (=> b!2115455 (= e!1346351 (- lt!793558 1))))

(declare-fun lt!793559 () tuple4!934)

(assert (=> d!642580 (= (++!6312 (list!9501 (_1!13394 (_1!13395 lt!793559))) (list!9501 (_2!13394 (_1!13395 lt!793559)))) (list!9501 input!6660))))

(declare-fun lt!793561 () Int)

(assert (=> d!642580 (= lt!793559 (tuple4!935 e!1346350 (_2!13391 lt!793560) (_3!1859 lt!793560) (_2!13397 (fillUpCache!3 (_2!13390 (_1!13391 lt!793560)) totalInput!1306 lt!793561 (_1!13390 (_1!13391 lt!793560)) 0 cacheFurthestNullable!141))))))

(assert (=> d!642580 (= c!339317 (< lt!793556 0))))

(declare-fun lt!793555 () Unit!37545)

(declare-fun Unit!37549 () Unit!37545)

(assert (=> d!642580 (= lt!793555 Unit!37549)))

(assert (=> d!642580 (forall!4843 (_2!13390 (_1!13391 lt!793560)) lambda!78247)))

(declare-fun lt!793557 () Unit!37545)

(declare-fun Unit!37550 () Unit!37545)

(assert (=> d!642580 (= lt!793557 Unit!37550)))

(assert (=> d!642580 (forall!4843 (_2!13390 (_1!13391 lt!793560)) lambda!78246)))

(assert (=> d!642580 (= lt!793556 (+ (- (_1!13390 (_1!13391 lt!793560)) lt!793558) 1))))

(assert (=> d!642580 (= lt!793560 (furthestNullablePositionStackMem!3 lt!793473 lt!793558 totalInput!1306 lt!793561 e!1346351 Nil!23562 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141))))

(declare-fun c!339316 () Bool)

(assert (=> d!642580 (= c!339316 (nullableZipper!50 lt!793473))))

(assert (=> d!642580 (= lt!793558 (- lt!793561 (size!18400 input!6660)))))

(assert (=> d!642580 (= lt!793561 (size!18400 totalInput!1306))))

(assert (=> d!642580 (isSuffix!601 (list!9501 input!6660) (list!9501 totalInput!1306))))

(assert (=> d!642580 (= (findLongestMatchZipperSequenceV3Mem!4 lt!793473 input!6660 totalInput!1306 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141) lt!793559)))

(declare-fun b!2115452 () Bool)

(assert (=> b!2115452 (= e!1346351 (- 1))))

(assert (= (and d!642580 c!339316) b!2115455))

(assert (= (and d!642580 (not c!339316)) b!2115452))

(assert (= (and d!642580 c!339317) b!2115454))

(assert (= (and d!642580 (not c!339317)) b!2115453))

(assert (= (or b!2115454 b!2115453) bm!128540))

(declare-fun m!2570955 () Bool)

(assert (=> bm!128540 m!2570955))

(declare-fun m!2570957 () Bool)

(assert (=> d!642580 m!2570957))

(assert (=> d!642580 m!2570835))

(declare-fun m!2570959 () Bool)

(assert (=> d!642580 m!2570959))

(declare-fun m!2570961 () Bool)

(assert (=> d!642580 m!2570961))

(declare-fun m!2570963 () Bool)

(assert (=> d!642580 m!2570963))

(assert (=> d!642580 m!2570959))

(assert (=> d!642580 m!2570839))

(declare-fun m!2570965 () Bool)

(assert (=> d!642580 m!2570965))

(declare-fun m!2570967 () Bool)

(assert (=> d!642580 m!2570967))

(assert (=> d!642580 m!2570961))

(declare-fun m!2570969 () Bool)

(assert (=> d!642580 m!2570969))

(assert (=> d!642580 m!2570797))

(assert (=> d!642580 m!2570839))

(assert (=> d!642580 m!2570835))

(declare-fun m!2570971 () Bool)

(assert (=> d!642580 m!2570971))

(assert (=> d!642580 m!2570811))

(assert (=> d!642580 m!2570787))

(assert (=> b!2115279 d!642580))

(declare-fun d!642582 () Bool)

(declare-fun lambda!78250 () Int)

(declare-fun exists!684 ((InoxSet Context!2414) Int) Bool)

(assert (=> d!642582 (= (nullableZipper!50 lt!793473) (exists!684 lt!793473 lambda!78250))))

(declare-fun bs!441189 () Bool)

(assert (= bs!441189 d!642582))

(declare-fun m!2570973 () Bool)

(assert (=> bs!441189 m!2570973))

(assert (=> b!2115279 d!642582))

(declare-fun bs!441190 () Bool)

(declare-fun d!642584 () Bool)

(assert (= bs!441190 (and d!642584 b!2115279)))

(declare-fun lambda!78265 () Int)

(declare-fun lt!793595 () Int)

(assert (=> bs!441190 (= (= lt!793595 (_1!13390 (_1!13391 lt!793476))) (= lambda!78265 lambda!78240))))

(declare-fun bs!441191 () Bool)

(assert (= bs!441191 (and d!642584 b!2115290)))

(assert (=> bs!441191 (not (= lambda!78265 lambda!78241))))

(declare-fun bs!441192 () Bool)

(assert (= bs!441192 (and d!642584 d!642580)))

(assert (=> bs!441192 (= (= lt!793595 (_1!13390 (_1!13391 lt!793560))) (= lambda!78265 lambda!78246))))

(assert (=> bs!441192 (not (= lambda!78265 lambda!78247))))

(assert (=> d!642584 true))

(declare-fun bs!441193 () Bool)

(declare-fun b!2115505 () Bool)

(assert (= bs!441193 (and b!2115505 d!642580)))

(declare-fun lambda!78266 () Int)

(assert (=> bs!441193 (= (= e!1346200 (_1!13390 (_1!13391 lt!793560))) (= lambda!78266 lambda!78246))))

(declare-fun bs!441194 () Bool)

(assert (= bs!441194 (and b!2115505 b!2115279)))

(assert (=> bs!441194 (= (= e!1346200 (_1!13390 (_1!13391 lt!793476))) (= lambda!78266 lambda!78240))))

(declare-fun bs!441195 () Bool)

(assert (= bs!441195 (and b!2115505 d!642584)))

(assert (=> bs!441195 (= (= e!1346200 lt!793595) (= lambda!78266 lambda!78265))))

(declare-fun bs!441196 () Bool)

(assert (= bs!441196 (and b!2115505 b!2115290)))

(assert (=> bs!441196 (not (= lambda!78266 lambda!78241))))

(assert (=> bs!441193 (not (= lambda!78266 lambda!78247))))

(assert (=> b!2115505 true))

(declare-fun bs!441197 () Bool)

(declare-fun b!2115499 () Bool)

(assert (= bs!441197 (and b!2115499 d!642580)))

(declare-fun lambda!78267 () Int)

(declare-fun lt!793598 () Int)

(assert (=> bs!441197 (= (= lt!793598 (_1!13390 (_1!13391 lt!793560))) (= lambda!78267 lambda!78246))))

(declare-fun bs!441198 () Bool)

(assert (= bs!441198 (and b!2115499 d!642584)))

(assert (=> bs!441198 (= (= lt!793598 lt!793595) (= lambda!78267 lambda!78265))))

(declare-fun bs!441199 () Bool)

(assert (= bs!441199 (and b!2115499 b!2115290)))

(assert (=> bs!441199 (not (= lambda!78267 lambda!78241))))

(assert (=> bs!441197 (not (= lambda!78267 lambda!78247))))

(declare-fun bs!441200 () Bool)

(assert (= bs!441200 (and b!2115499 b!2115279)))

(assert (=> bs!441200 (= (= lt!793598 (_1!13390 (_1!13391 lt!793476))) (= lambda!78267 lambda!78240))))

(declare-fun bs!441201 () Bool)

(assert (= bs!441201 (and b!2115499 b!2115505)))

(assert (=> bs!441201 (= (= lt!793598 e!1346200) (= lambda!78267 lambda!78266))))

(assert (=> b!2115499 true))

(declare-fun bs!441202 () Bool)

(declare-fun b!2115501 () Bool)

(assert (= bs!441202 (and b!2115501 b!2115499)))

(declare-fun lt!793601 () tuple3!2784)

(declare-fun lambda!78268 () Int)

(assert (=> bs!441202 (= (= (_1!13390 (_1!13391 lt!793601)) lt!793598) (= lambda!78268 lambda!78267))))

(declare-fun bs!441203 () Bool)

(assert (= bs!441203 (and b!2115501 d!642580)))

(assert (=> bs!441203 (= (= (_1!13390 (_1!13391 lt!793601)) (_1!13390 (_1!13391 lt!793560))) (= lambda!78268 lambda!78246))))

(declare-fun bs!441204 () Bool)

(assert (= bs!441204 (and b!2115501 d!642584)))

(assert (=> bs!441204 (= (= (_1!13390 (_1!13391 lt!793601)) lt!793595) (= lambda!78268 lambda!78265))))

(declare-fun bs!441205 () Bool)

(assert (= bs!441205 (and b!2115501 b!2115290)))

(assert (=> bs!441205 (not (= lambda!78268 lambda!78241))))

(assert (=> bs!441203 (not (= lambda!78268 lambda!78247))))

(declare-fun bs!441206 () Bool)

(assert (= bs!441206 (and b!2115501 b!2115279)))

(assert (=> bs!441206 (= (= (_1!13390 (_1!13391 lt!793601)) (_1!13390 (_1!13391 lt!793476))) (= lambda!78268 lambda!78240))))

(declare-fun bs!441207 () Bool)

(assert (= bs!441207 (and b!2115501 b!2115505)))

(assert (=> bs!441207 (= (= (_1!13390 (_1!13391 lt!793601)) e!1346200) (= lambda!78268 lambda!78266))))

(declare-fun b!2115513 () Bool)

(declare-fun e!1346391 () Bool)

(declare-fun mapRes!11456 () Bool)

(assert (=> b!2115513 (= e!1346391 mapRes!11456)))

(declare-fun condMapEmpty!11456 () Bool)

(declare-fun mapDefault!11455 () List!23643)

(assert (=> b!2115513 (= condMapEmpty!11456 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793601)))))))) ((as const (Array (_ BitVec 32) List!23643)) mapDefault!11455)))))

(declare-fun b!2115514 () Bool)

(declare-fun e!1346392 () Bool)

(declare-fun e!1346390 () Bool)

(assert (=> b!2115514 (= e!1346392 e!1346390)))

(declare-fun mapIsEmpty!11455 () Bool)

(assert (=> mapIsEmpty!11455 mapRes!11456))

(declare-fun b!2115515 () Bool)

(declare-fun e!1346398 () Bool)

(declare-fun e!1346397 () Bool)

(assert (=> b!2115515 (= e!1346398 e!1346397)))

(declare-fun setNonEmpty!14217 () Bool)

(declare-fun setRes!14217 () Bool)

(assert (=> setNonEmpty!14217 (= setRes!14217 true)))

(declare-fun setElem!14217 () Context!2414)

(declare-fun setRest!14217 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14217 (= (z!5682 (h!28963 (_2!13390 (_1!13391 lt!793601)))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14217 true) setRest!14217))))

(declare-fun b!2115516 () Bool)

(declare-fun e!1346388 () Bool)

(assert (=> b!2115516 (= e!1346388 e!1346392)))

(declare-fun mapNonEmpty!11455 () Bool)

(assert (=> mapNonEmpty!11455 (= mapRes!11456 true)))

(declare-fun mapRest!11456 () (Array (_ BitVec 32) List!23643))

(declare-fun mapKey!11455 () (_ BitVec 32))

(declare-fun mapValue!11456 () List!23643)

(assert (=> mapNonEmpty!11455 (= (arr!3637 (_values!2658 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793601)))))))) (store mapRest!11456 mapKey!11455 mapValue!11456))))

(declare-fun b!2115517 () Bool)

(declare-fun e!1346384 () Bool)

(assert (=> b!2115517 (= e!1346384 e!1346398)))

(declare-fun b!2115518 () Bool)

(declare-fun e!1346395 () Bool)

(declare-fun e!1346383 () Bool)

(assert (=> b!2115518 (= e!1346395 e!1346383)))

(declare-fun e!1346396 () Bool)

(declare-fun e!1346394 () Bool)

(assert (=> b!2115501 (and e!1346395 e!1346396 e!1346394)))

(declare-fun mapIsEmpty!11456 () Bool)

(declare-fun mapRes!11455 () Bool)

(assert (=> mapIsEmpty!11456 mapRes!11455))

(declare-fun b!2115519 () Bool)

(declare-fun e!1346389 () Bool)

(declare-fun lt!793607 () MutLongMap!2379)

(assert (=> b!2115519 (= e!1346389 (and e!1346388 ((_ is LongMap!2379) lt!793607)))))

(assert (=> b!2115519 (= lt!793607 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793601)))))))

(declare-fun mapNonEmpty!11456 () Bool)

(assert (=> mapNonEmpty!11456 (= mapRes!11455 true)))

(declare-fun mapRest!11455 () (Array (_ BitVec 32) List!23645))

(declare-fun mapKey!11456 () (_ BitVec 32))

(declare-fun mapValue!11455 () List!23645)

(assert (=> mapNonEmpty!11456 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793601)))))))) (store mapRest!11455 mapKey!11456 mapValue!11455))))

(declare-fun setIsEmpty!14217 () Bool)

(assert (=> setIsEmpty!14217 setRes!14217))

(declare-fun b!2115520 () Bool)

(assert (=> b!2115520 (= e!1346397 e!1346391)))

(declare-fun b!2115521 () Bool)

(declare-fun e!1346386 () Bool)

(assert (=> b!2115521 (= e!1346386 mapRes!11455)))

(declare-fun condMapEmpty!11455 () Bool)

(declare-fun mapDefault!11456 () List!23645)

(assert (=> b!2115521 (= condMapEmpty!11455 (= (arr!3638 (_values!2659 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793601)))))))) ((as const (Array (_ BitVec 32) List!23645)) mapDefault!11456)))))

(declare-fun b!2115522 () Bool)

(assert (=> b!2115522 (= e!1346383 setRes!14217)))

(declare-fun condSetEmpty!14217 () Bool)

(assert (=> b!2115522 (= condSetEmpty!14217 (= (z!5682 (h!28963 (_2!13390 (_1!13391 lt!793601)))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115523 () Bool)

(declare-fun e!1346385 () Bool)

(declare-fun lt!793606 () MutLongMap!2378)

(assert (=> b!2115523 (= e!1346385 (and e!1346384 ((_ is LongMap!2378) lt!793606)))))

(assert (=> b!2115523 (= lt!793606 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793601)))))))

(declare-fun b!2115524 () Bool)

(assert (=> b!2115524 (= e!1346390 e!1346386)))

(declare-fun b!2115525 () Bool)

(declare-fun e!1346387 () Bool)

(assert (=> b!2115525 (= e!1346387 e!1346385)))

(declare-fun b!2115526 () Bool)

(declare-fun e!1346393 () Bool)

(assert (=> b!2115526 (= e!1346393 e!1346389)))

(declare-fun b!2115527 () Bool)

(assert (=> b!2115527 (= e!1346396 e!1346393)))

(declare-fun b!2115528 () Bool)

(assert (=> b!2115528 (= e!1346394 e!1346387)))

(assert (= (and b!2115522 condSetEmpty!14217) setIsEmpty!14217))

(assert (= (and b!2115522 (not condSetEmpty!14217)) setNonEmpty!14217))

(assert (= b!2115518 b!2115522))

(assert (= (and b!2115501 ((_ is Cons!23562) (_2!13390 (_1!13391 lt!793601)))) b!2115518))

(assert (= (and b!2115521 condMapEmpty!11455) mapIsEmpty!11456))

(assert (= (and b!2115521 (not condMapEmpty!11455)) mapNonEmpty!11456))

(assert (= b!2115524 b!2115521))

(assert (= b!2115514 b!2115524))

(assert (= b!2115516 b!2115514))

(assert (= (and b!2115519 ((_ is LongMap!2379) (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793601)))))) b!2115516))

(assert (= b!2115526 b!2115519))

(assert (= (and b!2115527 ((_ is HashMap!2292) (cache!2673 (_2!13391 lt!793601)))) b!2115526))

(assert (= b!2115501 b!2115527))

(assert (= (and b!2115513 condMapEmpty!11456) mapIsEmpty!11455))

(assert (= (and b!2115513 (not condMapEmpty!11456)) mapNonEmpty!11455))

(assert (= b!2115520 b!2115513))

(assert (= b!2115515 b!2115520))

(assert (= b!2115517 b!2115515))

(assert (= (and b!2115523 ((_ is LongMap!2378) (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793601)))))) b!2115517))

(assert (= b!2115525 b!2115523))

(assert (= (and b!2115528 ((_ is HashMap!2293) (cache!2674 (_3!1859 lt!793601)))) b!2115525))

(assert (= b!2115501 b!2115528))

(assert (=> b!2115520 (< (dynLambda!11286 order!14529 (defaultEntry!2743 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793601)))))))) (dynLambda!11287 order!14531 lambda!78268))))

(assert (=> b!2115526 (< (dynLambda!11288 order!14533 (defaultValue!2454 (cache!2673 (_2!13391 lt!793601)))) (dynLambda!11287 order!14531 lambda!78268))))

(assert (=> b!2115525 (< (dynLambda!11289 order!14535 (defaultValue!2455 (cache!2674 (_3!1859 lt!793601)))) (dynLambda!11287 order!14531 lambda!78268))))

(assert (=> b!2115524 (< (dynLambda!11290 order!14537 (defaultEntry!2744 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793601)))))))) (dynLambda!11287 order!14531 lambda!78268))))

(declare-fun m!2570975 () Bool)

(assert (=> mapNonEmpty!11455 m!2570975))

(declare-fun m!2570977 () Bool)

(assert (=> mapNonEmpty!11456 m!2570977))

(declare-fun bs!441208 () Bool)

(declare-fun b!2115506 () Bool)

(assert (= bs!441208 (and b!2115506 b!2115499)))

(declare-fun lambda!78269 () Int)

(assert (=> bs!441208 (not (= lambda!78269 lambda!78267))))

(declare-fun bs!441209 () Bool)

(assert (= bs!441209 (and b!2115506 d!642580)))

(assert (=> bs!441209 (not (= lambda!78269 lambda!78246))))

(declare-fun bs!441210 () Bool)

(assert (= bs!441210 (and b!2115506 d!642584)))

(assert (=> bs!441210 (not (= lambda!78269 lambda!78265))))

(declare-fun bs!441211 () Bool)

(assert (= bs!441211 (and b!2115506 b!2115501)))

(assert (=> bs!441211 (not (= lambda!78269 lambda!78268))))

(declare-fun bs!441212 () Bool)

(assert (= bs!441212 (and b!2115506 b!2115290)))

(assert (=> bs!441212 (= lambda!78269 lambda!78241)))

(assert (=> bs!441209 (= lambda!78269 lambda!78247)))

(declare-fun bs!441213 () Bool)

(assert (= bs!441213 (and b!2115506 b!2115279)))

(assert (=> bs!441213 (not (= lambda!78269 lambda!78240))))

(declare-fun bs!441214 () Bool)

(assert (= bs!441214 (and b!2115506 b!2115505)))

(assert (=> bs!441214 (not (= lambda!78269 lambda!78266))))

(assert (=> b!2115506 true))

(declare-datatypes ((Option!4864 0))(
  ( (None!4863) (Some!4863 (v!28090 Int)) )
))
(declare-fun lt!793605 () Option!4864)

(declare-fun e!1346380 () tuple3!2784)

(declare-fun b!2115498 () Bool)

(assert (=> b!2115498 (= e!1346380 (tuple3!2785 (tuple2!23063 (v!28090 lt!793605) Nil!23562) cacheUp!1110 cacheDown!1229))))

(declare-fun bm!128547 () Bool)

(declare-fun c!339328 () Bool)

(declare-fun call!128552 () Unit!37545)

(declare-fun lemmaStackPreservesForEqualRes!2 (List!23646 Int Int) Unit!37545)

(assert (=> bm!128547 (= call!128552 (lemmaStackPreservesForEqualRes!2 Nil!23562 lt!793595 (ite c!339328 e!1346200 lt!793598)))))

(declare-fun call!128553 () Bool)

(declare-fun bm!128548 () Bool)

(assert (=> bm!128548 (= call!128553 (forall!4843 Nil!23562 (ite c!339328 lambda!78266 lambda!78267)))))

(declare-fun lt!793597 () Int)

(declare-fun lt!793594 () tuple3!2784)

(declare-datatypes ((tuple3!2788 0))(
  ( (tuple3!2789 (_1!13399 (InoxSet Context!2414)) (_2!13399 CacheUp!1582) (_3!1862 CacheDown!1574)) )
))
(declare-fun lt!793596 () tuple3!2788)

(assert (=> b!2115499 (= lt!793594 (furthestNullablePositionStackMem!3 (_1!13399 lt!793596) (+ lt!793477 1) totalInput!1306 lt!793466 lt!793597 (Cons!23562 (StackFrame!15 lt!793473 lt!793477 e!1346200 lt!793595 totalInput!1306) Nil!23562) (_2!13399 lt!793596) (_3!1862 lt!793596) cacheFurthestNullable!141))))

(declare-fun lt!793600 () Unit!37545)

(declare-fun lt!793592 () Unit!37545)

(assert (=> b!2115499 (= lt!793600 lt!793592)))

(assert (=> b!2115499 call!128553))

(assert (=> b!2115499 (= lt!793592 call!128552)))

(declare-fun lt!793599 () Unit!37545)

(declare-fun Unit!37551 () Unit!37545)

(assert (=> b!2115499 (= lt!793599 Unit!37551)))

(declare-fun call!128554 () Bool)

(assert (=> b!2115499 call!128554))

(declare-fun furthestNullablePosition!4 ((InoxSet Context!2414) Int BalanceConc!15318 Int Int) Int)

(assert (=> b!2115499 (= lt!793598 (furthestNullablePosition!4 (_1!13399 lt!793596) (+ lt!793477 1) totalInput!1306 (size!18400 totalInput!1306) lt!793597))))

(declare-fun e!1346381 () Int)

(assert (=> b!2115499 (= lt!793597 e!1346381)))

(declare-fun c!339327 () Bool)

(assert (=> b!2115499 (= c!339327 (nullableZipper!50 (_1!13399 lt!793596)))))

(declare-fun derivationStepZipperMem!13 ((InoxSet Context!2414) C!11420 CacheUp!1582 CacheDown!1574) tuple3!2788)

(declare-fun apply!5903 (BalanceConc!15318 Int) C!11420)

(assert (=> b!2115499 (= lt!793596 (derivationStepZipperMem!13 lt!793473 (apply!5903 totalInput!1306 lt!793477) cacheUp!1110 cacheDown!1229))))

(declare-fun e!1346379 () tuple3!2784)

(assert (=> b!2115499 (= e!1346379 (tuple3!2785 (_1!13391 lt!793594) (_2!13391 lt!793594) (_3!1859 lt!793594)))))

(declare-fun b!2115500 () Bool)

(declare-fun res!917933 () Bool)

(declare-fun e!1346378 () Bool)

(assert (=> b!2115500 (=> (not res!917933) (not e!1346378))))

(assert (=> b!2115500 (= res!917933 (valid!1873 (_2!13391 lt!793601)))))

(declare-fun res!917935 () Bool)

(assert (=> b!2115501 (=> (not res!917935) (not e!1346378))))

(assert (=> b!2115501 (= res!917935 (forall!4843 (_2!13390 (_1!13391 lt!793601)) lambda!78268))))

(declare-fun b!2115502 () Bool)

(assert (=> b!2115502 (= e!1346380 e!1346379)))

(declare-fun res!917936 () Bool)

(assert (=> b!2115502 (= res!917936 (= lt!793477 lt!793466))))

(declare-fun e!1346382 () Bool)

(assert (=> b!2115502 (=> res!917936 e!1346382)))

(assert (=> b!2115502 (= c!339328 e!1346382)))

(assert (=> d!642584 e!1346378))

(declare-fun res!917934 () Bool)

(assert (=> d!642584 (=> (not res!917934) (not e!1346378))))

(assert (=> d!642584 (= res!917934 (= (_1!13390 (_1!13391 lt!793601)) (furthestNullablePosition!4 lt!793473 lt!793477 totalInput!1306 lt!793466 e!1346200)))))

(assert (=> d!642584 (= lt!793601 e!1346380)))

(declare-fun c!339326 () Bool)

(assert (=> d!642584 (= c!339326 ((_ is Some!4863) lt!793605))))

(declare-fun get!7292 (CacheFurthestNullable!552 (InoxSet Context!2414) Int Int) Option!4864)

(assert (=> d!642584 (= lt!793605 (get!7292 cacheFurthestNullable!141 lt!793473 lt!793477 e!1346200))))

(declare-fun lt!793603 () Unit!37545)

(declare-fun Unit!37552 () Unit!37545)

(assert (=> d!642584 (= lt!793603 Unit!37552)))

(assert (=> d!642584 (forall!4843 Nil!23562 lambda!78265)))

(assert (=> d!642584 (= lt!793595 (furthestNullablePosition!4 lt!793473 lt!793477 totalInput!1306 (size!18400 totalInput!1306) e!1346200))))

(assert (=> d!642584 (and (>= lt!793477 0) (<= lt!793477 lt!793466))))

(assert (=> d!642584 (= (furthestNullablePositionStackMem!3 lt!793473 lt!793477 totalInput!1306 lt!793466 e!1346200 Nil!23562 cacheUp!1110 cacheDown!1229 cacheFurthestNullable!141) lt!793601)))

(declare-fun b!2115503 () Bool)

(assert (=> b!2115503 (= e!1346381 e!1346200)))

(declare-fun b!2115504 () Bool)

(declare-fun res!917937 () Bool)

(assert (=> b!2115504 (=> (not res!917937) (not e!1346378))))

(assert (=> b!2115504 (= res!917937 (valid!1874 cacheFurthestNullable!141))))

(declare-fun bm!128549 () Bool)

(assert (=> bm!128549 (= call!128554 (forall!4843 Nil!23562 (ite c!339328 lambda!78265 lambda!78265)))))

(declare-fun lt!793604 () Unit!37545)

(declare-fun lt!793593 () Unit!37545)

(assert (=> b!2115505 (= lt!793604 lt!793593)))

(assert (=> b!2115505 call!128553))

(assert (=> b!2115505 (= lt!793593 call!128552)))

(declare-fun lt!793602 () Unit!37545)

(declare-fun Unit!37553 () Unit!37545)

(assert (=> b!2115505 (= lt!793602 Unit!37553)))

(assert (=> b!2115505 call!128554))

(assert (=> b!2115505 (= e!1346379 (tuple3!2785 (tuple2!23063 e!1346200 Nil!23562) cacheUp!1110 cacheDown!1229))))

(assert (=> b!2115506 (= e!1346378 (forall!4843 (_2!13390 (_1!13391 lt!793601)) lambda!78269))))

(declare-fun b!2115507 () Bool)

(declare-fun res!917932 () Bool)

(assert (=> b!2115507 (=> (not res!917932) (not e!1346378))))

(assert (=> b!2115507 (= res!917932 (= (totalInput!2847 cacheFurthestNullable!141) totalInput!1306))))

(declare-fun b!2115508 () Bool)

(assert (=> b!2115508 (= e!1346381 lt!793477)))

(declare-fun b!2115509 () Bool)

(declare-fun lostCauseZipper!51 ((InoxSet Context!2414)) Bool)

(assert (=> b!2115509 (= e!1346382 (lostCauseZipper!51 lt!793473))))

(declare-fun b!2115510 () Bool)

(declare-fun res!917938 () Bool)

(assert (=> b!2115510 (=> (not res!917938) (not e!1346378))))

(assert (=> b!2115510 (= res!917938 (valid!1875 (_3!1859 lt!793601)))))

(assert (= (and d!642584 c!339326) b!2115498))

(assert (= (and d!642584 (not c!339326)) b!2115502))

(assert (= (and b!2115502 (not res!917936)) b!2115509))

(assert (= (and b!2115502 c!339328) b!2115505))

(assert (= (and b!2115502 (not c!339328)) b!2115499))

(assert (= (and b!2115499 c!339327) b!2115508))

(assert (= (and b!2115499 (not c!339327)) b!2115503))

(assert (= (or b!2115505 b!2115499) bm!128547))

(assert (= (or b!2115505 b!2115499) bm!128549))

(assert (= (or b!2115505 b!2115499) bm!128548))

(assert (= (and d!642584 res!917934) b!2115501))

(assert (= (and b!2115501 res!917935) b!2115500))

(assert (= (and b!2115500 res!917933) b!2115510))

(assert (= (and b!2115510 res!917938) b!2115504))

(assert (= (and b!2115504 res!917937) b!2115507))

(assert (= (and b!2115507 res!917932) b!2115506))

(declare-fun m!2570979 () Bool)

(assert (=> b!2115510 m!2570979))

(declare-fun m!2570981 () Bool)

(assert (=> bm!128548 m!2570981))

(declare-fun m!2570983 () Bool)

(assert (=> b!2115499 m!2570983))

(declare-fun m!2570985 () Bool)

(assert (=> b!2115499 m!2570985))

(assert (=> b!2115499 m!2570787))

(assert (=> b!2115499 m!2570985))

(declare-fun m!2570987 () Bool)

(assert (=> b!2115499 m!2570987))

(assert (=> b!2115499 m!2570787))

(declare-fun m!2570989 () Bool)

(assert (=> b!2115499 m!2570989))

(declare-fun m!2570991 () Bool)

(assert (=> b!2115499 m!2570991))

(declare-fun m!2570993 () Bool)

(assert (=> b!2115509 m!2570993))

(assert (=> b!2115504 m!2570823))

(declare-fun m!2570995 () Bool)

(assert (=> b!2115500 m!2570995))

(declare-fun m!2570997 () Bool)

(assert (=> d!642584 m!2570997))

(assert (=> d!642584 m!2570787))

(declare-fun m!2570999 () Bool)

(assert (=> d!642584 m!2570999))

(declare-fun m!2571001 () Bool)

(assert (=> d!642584 m!2571001))

(assert (=> d!642584 m!2570787))

(declare-fun m!2571003 () Bool)

(assert (=> d!642584 m!2571003))

(declare-fun m!2571005 () Bool)

(assert (=> bm!128549 m!2571005))

(declare-fun m!2571007 () Bool)

(assert (=> bm!128547 m!2571007))

(declare-fun m!2571009 () Bool)

(assert (=> b!2115501 m!2571009))

(declare-fun m!2571011 () Bool)

(assert (=> b!2115506 m!2571011))

(assert (=> b!2115279 d!642584))

(declare-fun d!642586 () Bool)

(declare-fun e!1346401 () Bool)

(assert (=> d!642586 e!1346401))

(declare-fun res!917941 () Bool)

(assert (=> d!642586 (=> (not res!917941) (not e!1346401))))

(assert (=> d!642586 (= res!917941 (= (list!9501 (_1!13394 (findLongestMatchZipperSequenceV3!6 lt!793473 input!6660 totalInput!1306))) (_1!13396 (findLongestMatch!513 r!15373 (list!9501 input!6660)))))))

(declare-fun lt!793610 () Unit!37545)

(declare-fun choose!12651 (Regex!5637 (InoxSet Context!2414) BalanceConc!15318 BalanceConc!15318) Unit!37545)

(assert (=> d!642586 (= lt!793610 (choose!12651 r!15373 lt!793473 input!6660 totalInput!1306))))

(assert (=> d!642586 (validRegex!2225 r!15373)))

(assert (=> d!642586 (= (longestMatchV3SameAsRegex!6 r!15373 lt!793473 input!6660 totalInput!1306) lt!793610)))

(declare-fun b!2115531 () Bool)

(assert (=> b!2115531 (= e!1346401 (= (list!9501 (_2!13394 (findLongestMatchZipperSequenceV3!6 lt!793473 input!6660 totalInput!1306))) (_2!13396 (findLongestMatch!513 r!15373 (list!9501 input!6660)))))))

(assert (= (and d!642586 res!917941) b!2115531))

(assert (=> d!642586 m!2570801))

(declare-fun m!2571013 () Bool)

(assert (=> d!642586 m!2571013))

(declare-fun m!2571015 () Bool)

(assert (=> d!642586 m!2571015))

(assert (=> d!642586 m!2570749))

(assert (=> d!642586 m!2570839))

(assert (=> d!642586 m!2570917))

(assert (=> d!642586 m!2570839))

(assert (=> b!2115531 m!2570801))

(declare-fun m!2571017 () Bool)

(assert (=> b!2115531 m!2571017))

(assert (=> b!2115531 m!2570839))

(assert (=> b!2115531 m!2570839))

(assert (=> b!2115531 m!2570917))

(assert (=> b!2115279 d!642586))

(declare-fun lt!793620 () Int)

(declare-fun c!339334 () Bool)

(declare-fun call!128557 () tuple2!23066)

(declare-fun bm!128552 () Bool)

(assert (=> bm!128552 (= call!128557 (splitAt!12 input!6660 (ite c!339334 0 lt!793620)))))

(declare-fun b!2115540 () Bool)

(declare-fun e!1346406 () Int)

(declare-fun lt!793619 () Int)

(assert (=> b!2115540 (= e!1346406 (- lt!793619 1))))

(declare-fun b!2115541 () Bool)

(declare-fun e!1346407 () tuple2!23066)

(assert (=> b!2115541 (= e!1346407 call!128557)))

(declare-fun d!642588 () Bool)

(declare-fun lt!793621 () tuple2!23066)

(assert (=> d!642588 (= (++!6312 (list!9501 (_1!13394 lt!793621)) (list!9501 (_2!13394 lt!793621))) (list!9501 input!6660))))

(assert (=> d!642588 (= lt!793621 e!1346407)))

(assert (=> d!642588 (= c!339334 (< lt!793620 0))))

(declare-fun lt!793622 () Int)

(assert (=> d!642588 (= lt!793620 (+ (- (furthestNullablePosition!4 lt!793473 lt!793619 totalInput!1306 lt!793622 e!1346406) lt!793619) 1))))

(declare-fun c!339333 () Bool)

(assert (=> d!642588 (= c!339333 (nullableZipper!50 lt!793473))))

(assert (=> d!642588 (= lt!793619 (- lt!793622 (size!18400 input!6660)))))

(assert (=> d!642588 (= lt!793622 (size!18400 totalInput!1306))))

(assert (=> d!642588 (isSuffix!601 (list!9501 input!6660) (list!9501 totalInput!1306))))

(assert (=> d!642588 (= (findLongestMatchZipperSequenceV3!6 lt!793473 input!6660 totalInput!1306) lt!793621)))

(declare-fun b!2115542 () Bool)

(assert (=> b!2115542 (= e!1346406 (- 1))))

(declare-fun b!2115543 () Bool)

(assert (=> b!2115543 (= e!1346407 call!128557)))

(assert (= (and d!642588 c!339333) b!2115540))

(assert (= (and d!642588 (not c!339333)) b!2115542))

(assert (= (and d!642588 c!339334) b!2115541))

(assert (= (and d!642588 (not c!339334)) b!2115543))

(assert (= (or b!2115541 b!2115543) bm!128552))

(declare-fun m!2571019 () Bool)

(assert (=> bm!128552 m!2571019))

(assert (=> d!642588 m!2570839))

(assert (=> d!642588 m!2570811))

(declare-fun m!2571021 () Bool)

(assert (=> d!642588 m!2571021))

(assert (=> d!642588 m!2570787))

(assert (=> d!642588 m!2570839))

(assert (=> d!642588 m!2570835))

(assert (=> d!642588 m!2570971))

(assert (=> d!642588 m!2570797))

(assert (=> d!642588 m!2571021))

(declare-fun m!2571023 () Bool)

(assert (=> d!642588 m!2571023))

(declare-fun m!2571025 () Bool)

(assert (=> d!642588 m!2571025))

(assert (=> d!642588 m!2570835))

(assert (=> d!642588 m!2571023))

(declare-fun m!2571027 () Bool)

(assert (=> d!642588 m!2571027))

(assert (=> b!2115279 d!642588))

(declare-fun d!642590 () Bool)

(declare-fun lt!793627 () tuple2!23066)

(assert (=> d!642590 (= (++!6312 (list!9501 (_1!13394 lt!793627)) (list!9501 (_2!13394 lt!793627))) (list!9501 input!6660))))

(declare-fun lt!793628 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!5 ((InoxSet Context!2414) Int BalanceConc!15318 Int) Int)

(assert (=> d!642590 (= lt!793627 (splitAt!12 input!6660 (findLongestMatchInnerZipperFastV2!5 lt!793473 (- lt!793628 (size!18400 input!6660)) totalInput!1306 lt!793628)))))

(assert (=> d!642590 (= lt!793628 (size!18400 totalInput!1306))))

(assert (=> d!642590 (isSuffix!601 (list!9501 input!6660) (list!9501 totalInput!1306))))

(assert (=> d!642590 (= (findLongestMatchZipperFastV2!11 lt!793473 input!6660 totalInput!1306) lt!793627)))

(declare-fun bs!441215 () Bool)

(assert (= bs!441215 d!642590))

(assert (=> bs!441215 m!2570787))

(assert (=> bs!441215 m!2570839))

(assert (=> bs!441215 m!2570835))

(assert (=> bs!441215 m!2570971))

(declare-fun m!2571029 () Bool)

(assert (=> bs!441215 m!2571029))

(declare-fun m!2571031 () Bool)

(assert (=> bs!441215 m!2571031))

(declare-fun m!2571033 () Bool)

(assert (=> bs!441215 m!2571033))

(declare-fun m!2571035 () Bool)

(assert (=> bs!441215 m!2571035))

(assert (=> bs!441215 m!2571029))

(declare-fun m!2571037 () Bool)

(assert (=> bs!441215 m!2571037))

(assert (=> bs!441215 m!2570835))

(assert (=> bs!441215 m!2570839))

(assert (=> bs!441215 m!2571031))

(assert (=> bs!441215 m!2571033))

(assert (=> bs!441215 m!2570797))

(assert (=> b!2115279 d!642590))

(declare-fun d!642592 () Bool)

(assert (=> d!642592 (= (valid!1873 (_2!13395 lt!793468)) (validCacheMapUp!237 (cache!2673 (_2!13395 lt!793468))))))

(declare-fun bs!441216 () Bool)

(assert (= bs!441216 d!642592))

(declare-fun m!2571039 () Bool)

(assert (=> bs!441216 m!2571039))

(assert (=> b!2115279 d!642592))

(declare-fun d!642594 () Bool)

(declare-fun lt!793629 () Int)

(assert (=> d!642594 (= lt!793629 (size!18401 (list!9501 totalInput!1306)))))

(assert (=> d!642594 (= lt!793629 (size!18402 (c!339292 totalInput!1306)))))

(assert (=> d!642594 (= (size!18400 totalInput!1306) lt!793629)))

(declare-fun bs!441217 () Bool)

(assert (= bs!441217 d!642594))

(assert (=> bs!441217 m!2570835))

(assert (=> bs!441217 m!2570835))

(assert (=> bs!441217 m!2570905))

(declare-fun m!2571041 () Bool)

(assert (=> bs!441217 m!2571041))

(assert (=> b!2115279 d!642594))

(declare-fun d!642596 () Bool)

(declare-fun res!917942 () Bool)

(declare-fun e!1346408 () Bool)

(assert (=> d!642596 (=> res!917942 e!1346408)))

(assert (=> d!642596 (= res!917942 ((_ is Nil!23562) (_2!13390 (_1!13391 lt!793476))))))

(assert (=> d!642596 (= (forall!4843 (_2!13390 (_1!13391 lt!793476)) lambda!78240) e!1346408)))

(declare-fun b!2115544 () Bool)

(declare-fun e!1346409 () Bool)

(assert (=> b!2115544 (= e!1346408 e!1346409)))

(declare-fun res!917943 () Bool)

(assert (=> b!2115544 (=> (not res!917943) (not e!1346409))))

(assert (=> b!2115544 (= res!917943 (dynLambda!11291 lambda!78240 (h!28963 (_2!13390 (_1!13391 lt!793476)))))))

(declare-fun b!2115545 () Bool)

(assert (=> b!2115545 (= e!1346409 (forall!4843 (t!196155 (_2!13390 (_1!13391 lt!793476))) lambda!78240))))

(assert (= (and d!642596 (not res!917942)) b!2115544))

(assert (= (and b!2115544 res!917943) b!2115545))

(declare-fun b_lambda!70387 () Bool)

(assert (=> (not b_lambda!70387) (not b!2115544)))

(declare-fun m!2571043 () Bool)

(assert (=> b!2115544 m!2571043))

(declare-fun m!2571045 () Bool)

(assert (=> b!2115545 m!2571045))

(assert (=> b!2115279 d!642596))

(declare-fun d!642598 () Bool)

(declare-fun e!1346412 () Bool)

(assert (=> d!642598 e!1346412))

(declare-fun res!917946 () Bool)

(assert (=> d!642598 (=> (not res!917946) (not e!1346412))))

(assert (=> d!642598 (= res!917946 (= (list!9501 (_1!13394 (findLongestMatchZipperFastV2!11 lt!793473 input!6660 totalInput!1306))) (_1!13396 (findLongestMatch!513 r!15373 (list!9501 input!6660)))))))

(declare-fun lt!793632 () Unit!37545)

(declare-fun choose!12652 (Regex!5637 (InoxSet Context!2414) BalanceConc!15318 BalanceConc!15318) Unit!37545)

(assert (=> d!642598 (= lt!793632 (choose!12652 r!15373 lt!793473 input!6660 totalInput!1306))))

(assert (=> d!642598 (validRegex!2225 r!15373)))

(assert (=> d!642598 (= (longestMatchV2SameAsRegex!11 r!15373 lt!793473 input!6660 totalInput!1306) lt!793632)))

(declare-fun b!2115548 () Bool)

(assert (=> b!2115548 (= e!1346412 (= (list!9501 (_2!13394 (findLongestMatchZipperFastV2!11 lt!793473 input!6660 totalInput!1306))) (_2!13396 (findLongestMatch!513 r!15373 (list!9501 input!6660)))))))

(assert (= (and d!642598 res!917946) b!2115548))

(declare-fun m!2571047 () Bool)

(assert (=> d!642598 m!2571047))

(assert (=> d!642598 m!2570749))

(assert (=> d!642598 m!2570839))

(assert (=> d!642598 m!2570815))

(assert (=> d!642598 m!2570839))

(assert (=> d!642598 m!2570917))

(declare-fun m!2571049 () Bool)

(assert (=> d!642598 m!2571049))

(assert (=> b!2115548 m!2570815))

(declare-fun m!2571051 () Bool)

(assert (=> b!2115548 m!2571051))

(assert (=> b!2115548 m!2570839))

(assert (=> b!2115548 m!2570839))

(assert (=> b!2115548 m!2570917))

(assert (=> b!2115279 d!642598))

(declare-fun d!642600 () Bool)

(assert (=> d!642600 (= (sizeTr!96 lt!793472 0) (+ (size!18401 lt!793472) 0))))

(declare-fun lt!793635 () Unit!37545)

(declare-fun choose!12653 (List!23644 Int) Unit!37545)

(assert (=> d!642600 (= lt!793635 (choose!12653 lt!793472 0))))

(assert (=> d!642600 (= (lemmaSizeTrEqualsSize!96 lt!793472 0) lt!793635)))

(declare-fun bs!441218 () Bool)

(assert (= bs!441218 d!642600))

(assert (=> bs!441218 m!2570789))

(assert (=> bs!441218 m!2570795))

(declare-fun m!2571053 () Bool)

(assert (=> bs!441218 m!2571053))

(assert (=> b!2115279 d!642600))

(declare-fun d!642602 () Bool)

(assert (=> d!642602 (= (list!9501 (_1!13394 lt!793475)) (list!9502 (c!339292 (_1!13394 lt!793475))))))

(declare-fun bs!441219 () Bool)

(assert (= bs!441219 d!642602))

(declare-fun m!2571055 () Bool)

(assert (=> bs!441219 m!2571055))

(assert (=> b!2115279 d!642602))

(declare-fun d!642604 () Bool)

(declare-fun c!339337 () Bool)

(assert (=> d!642604 (= c!339337 ((_ is Nil!23560) lt!793472))))

(declare-fun e!1346415 () Int)

(assert (=> d!642604 (= (sizeTr!96 lt!793472 0) e!1346415)))

(declare-fun b!2115553 () Bool)

(assert (=> b!2115553 (= e!1346415 0)))

(declare-fun b!2115554 () Bool)

(assert (=> b!2115554 (= e!1346415 (sizeTr!96 (t!196153 lt!793472) (+ 0 1)))))

(assert (= (and d!642604 c!339337) b!2115553))

(assert (= (and d!642604 (not c!339337)) b!2115554))

(declare-fun m!2571057 () Bool)

(assert (=> b!2115554 m!2571057))

(assert (=> b!2115279 d!642604))

(declare-fun d!642606 () Bool)

(declare-fun c!339338 () Bool)

(assert (=> d!642606 (= c!339338 ((_ is Node!7778) (c!339292 (totalInput!2847 cacheFurthestNullable!141))))))

(declare-fun e!1346416 () Bool)

(assert (=> d!642606 (= (inv!31135 (c!339292 (totalInput!2847 cacheFurthestNullable!141))) e!1346416)))

(declare-fun b!2115555 () Bool)

(assert (=> b!2115555 (= e!1346416 (inv!31140 (c!339292 (totalInput!2847 cacheFurthestNullable!141))))))

(declare-fun b!2115556 () Bool)

(declare-fun e!1346417 () Bool)

(assert (=> b!2115556 (= e!1346416 e!1346417)))

(declare-fun res!917947 () Bool)

(assert (=> b!2115556 (= res!917947 (not ((_ is Leaf!11364) (c!339292 (totalInput!2847 cacheFurthestNullable!141)))))))

(assert (=> b!2115556 (=> res!917947 e!1346417)))

(declare-fun b!2115557 () Bool)

(assert (=> b!2115557 (= e!1346417 (inv!31141 (c!339292 (totalInput!2847 cacheFurthestNullable!141))))))

(assert (= (and d!642606 c!339338) b!2115555))

(assert (= (and d!642606 (not c!339338)) b!2115556))

(assert (= (and b!2115556 (not res!917947)) b!2115557))

(declare-fun m!2571059 () Bool)

(assert (=> b!2115555 m!2571059))

(declare-fun m!2571061 () Bool)

(assert (=> b!2115557 m!2571061))

(assert (=> b!2115297 d!642606))

(declare-fun d!642608 () Bool)

(assert (=> d!642608 (= (valid!1873 cacheUp!1110) (validCacheMapUp!237 (cache!2673 cacheUp!1110)))))

(declare-fun bs!441220 () Bool)

(assert (= bs!441220 d!642608))

(assert (=> bs!441220 m!2570851))

(assert (=> b!2115269 d!642608))

(declare-fun setNonEmpty!14220 () Bool)

(declare-fun setRes!14220 () Bool)

(assert (=> setNonEmpty!14220 (= setRes!14220 true)))

(declare-fun setElem!14220 () Context!2414)

(declare-fun setRest!14220 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14220 (= (z!5682 (h!28963 (t!196155 (_2!13390 (_1!13391 lt!793476))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14220 true) setRest!14220))))

(declare-fun setIsEmpty!14220 () Bool)

(assert (=> setIsEmpty!14220 setRes!14220))

(declare-fun b!2115564 () Bool)

(declare-fun e!1346422 () Bool)

(declare-fun e!1346423 () Bool)

(assert (=> b!2115564 (= e!1346422 e!1346423)))

(declare-fun b!2115565 () Bool)

(assert (=> b!2115565 (= e!1346423 setRes!14220)))

(declare-fun condSetEmpty!14220 () Bool)

(assert (=> b!2115565 (= condSetEmpty!14220 (= (z!5682 (h!28963 (t!196155 (_2!13390 (_1!13391 lt!793476))))) ((as const (Array Context!2414 Bool)) false)))))

(assert (=> b!2115344 e!1346422))

(assert (= (and b!2115565 condSetEmpty!14220) setIsEmpty!14220))

(assert (= (and b!2115565 (not condSetEmpty!14220)) setNonEmpty!14220))

(assert (= b!2115564 b!2115565))

(assert (= (and b!2115344 ((_ is Cons!23562) (t!196155 (_2!13390 (_1!13391 lt!793476))))) b!2115564))

(declare-fun b!2115574 () Bool)

(declare-fun e!1346432 () Bool)

(declare-fun tp!645469 () Bool)

(assert (=> b!2115574 (= e!1346432 tp!645469)))

(declare-fun setIsEmpty!14223 () Bool)

(declare-fun setRes!14223 () Bool)

(assert (=> setIsEmpty!14223 setRes!14223))

(declare-fun b!2115575 () Bool)

(declare-fun e!1346430 () Bool)

(declare-fun tp!645471 () Bool)

(declare-fun inv!31142 (Context!2414) Bool)

(assert (=> b!2115575 (= e!1346430 (and (inv!31142 (_1!13388 (_1!13389 (h!28962 (zeroValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))))) e!1346432 tp_is_empty!9463 setRes!14223 tp!645471))))

(declare-fun condSetEmpty!14223 () Bool)

(assert (=> b!2115575 (= condSetEmpty!14223 (= (_2!13389 (h!28962 (zeroValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun tp!645470 () Bool)

(declare-fun setElem!14223 () Context!2414)

(declare-fun setNonEmpty!14223 () Bool)

(declare-fun e!1346431 () Bool)

(assert (=> setNonEmpty!14223 (= setRes!14223 (and tp!645470 (inv!31142 setElem!14223) e!1346431))))

(declare-fun setRest!14223 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14223 (= (_2!13389 (h!28962 (zeroValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14223 true) setRest!14223))))

(declare-fun b!2115576 () Bool)

(declare-fun tp!645468 () Bool)

(assert (=> b!2115576 (= e!1346431 tp!645468)))

(assert (=> b!2115276 (= tp!645439 e!1346430)))

(assert (= b!2115575 b!2115574))

(assert (= (and b!2115575 condSetEmpty!14223) setIsEmpty!14223))

(assert (= (and b!2115575 (not condSetEmpty!14223)) setNonEmpty!14223))

(assert (= setNonEmpty!14223 b!2115576))

(assert (= (and b!2115276 ((_ is Cons!23561) (zeroValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))) b!2115575))

(declare-fun m!2571063 () Bool)

(assert (=> b!2115575 m!2571063))

(declare-fun m!2571065 () Bool)

(assert (=> setNonEmpty!14223 m!2571065))

(declare-fun b!2115577 () Bool)

(declare-fun e!1346435 () Bool)

(declare-fun tp!645473 () Bool)

(assert (=> b!2115577 (= e!1346435 tp!645473)))

(declare-fun setIsEmpty!14224 () Bool)

(declare-fun setRes!14224 () Bool)

(assert (=> setIsEmpty!14224 setRes!14224))

(declare-fun b!2115578 () Bool)

(declare-fun e!1346433 () Bool)

(declare-fun tp!645475 () Bool)

(assert (=> b!2115578 (= e!1346433 (and (inv!31142 (_1!13388 (_1!13389 (h!28962 (minValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))))) e!1346435 tp_is_empty!9463 setRes!14224 tp!645475))))

(declare-fun condSetEmpty!14224 () Bool)

(assert (=> b!2115578 (= condSetEmpty!14224 (= (_2!13389 (h!28962 (minValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setNonEmpty!14224 () Bool)

(declare-fun setElem!14224 () Context!2414)

(declare-fun e!1346434 () Bool)

(declare-fun tp!645474 () Bool)

(assert (=> setNonEmpty!14224 (= setRes!14224 (and tp!645474 (inv!31142 setElem!14224) e!1346434))))

(declare-fun setRest!14224 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14224 (= (_2!13389 (h!28962 (minValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14224 true) setRest!14224))))

(declare-fun b!2115579 () Bool)

(declare-fun tp!645472 () Bool)

(assert (=> b!2115579 (= e!1346434 tp!645472)))

(assert (=> b!2115276 (= tp!645446 e!1346433)))

(assert (= b!2115578 b!2115577))

(assert (= (and b!2115578 condSetEmpty!14224) setIsEmpty!14224))

(assert (= (and b!2115578 (not condSetEmpty!14224)) setNonEmpty!14224))

(assert (= setNonEmpty!14224 b!2115579))

(assert (= (and b!2115276 ((_ is Cons!23561) (minValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 cacheUp!1110)))))))) b!2115578))

(declare-fun m!2571067 () Bool)

(assert (=> b!2115578 m!2571067))

(declare-fun m!2571069 () Bool)

(assert (=> setNonEmpty!14224 m!2571069))

(declare-fun b!2115586 () Bool)

(declare-fun e!1346440 () Bool)

(declare-fun setRes!14229 () Bool)

(assert (=> b!2115586 (= e!1346440 setRes!14229)))

(declare-fun condSetEmpty!14229 () Bool)

(declare-fun mapValue!11459 () List!23643)

(assert (=> b!2115586 (= condSetEmpty!14229 (= (_2!13387 (h!28960 mapValue!11459)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setNonEmpty!14229 () Bool)

(assert (=> setNonEmpty!14229 (= setRes!14229 true)))

(declare-fun setElem!14230 () Context!2414)

(declare-fun setRest!14230 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14229 (= (_2!13387 (h!28960 mapValue!11459)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14230 true) setRest!14230))))

(declare-fun setIsEmpty!14229 () Bool)

(declare-fun setRes!14230 () Bool)

(assert (=> setIsEmpty!14229 setRes!14230))

(declare-fun condMapEmpty!11459 () Bool)

(declare-fun mapDefault!11459 () List!23643)

(assert (=> mapNonEmpty!11451 (= condMapEmpty!11459 (= mapRest!11452 ((as const (Array (_ BitVec 32) List!23643)) mapDefault!11459)))))

(declare-fun e!1346441 () Bool)

(declare-fun mapRes!11459 () Bool)

(assert (=> mapNonEmpty!11451 (and e!1346441 mapRes!11459)))

(declare-fun mapIsEmpty!11459 () Bool)

(assert (=> mapIsEmpty!11459 mapRes!11459))

(declare-fun setNonEmpty!14230 () Bool)

(assert (=> setNonEmpty!14230 (= setRes!14230 true)))

(declare-fun setElem!14229 () Context!2414)

(declare-fun setRest!14229 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14230 (= (_2!13387 (h!28960 mapDefault!11459)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14229 true) setRest!14229))))

(declare-fun b!2115587 () Bool)

(assert (=> b!2115587 (= e!1346441 setRes!14230)))

(declare-fun condSetEmpty!14230 () Bool)

(assert (=> b!2115587 (= condSetEmpty!14230 (= (_2!13387 (h!28960 mapDefault!11459)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14230 () Bool)

(assert (=> setIsEmpty!14230 setRes!14229))

(declare-fun mapNonEmpty!11459 () Bool)

(assert (=> mapNonEmpty!11459 (= mapRes!11459 e!1346440)))

(declare-fun mapKey!11459 () (_ BitVec 32))

(declare-fun mapRest!11459 () (Array (_ BitVec 32) List!23643))

(assert (=> mapNonEmpty!11459 (= mapRest!11452 (store mapRest!11459 mapKey!11459 mapValue!11459))))

(assert (= (and mapNonEmpty!11451 condMapEmpty!11459) mapIsEmpty!11459))

(assert (= (and mapNonEmpty!11451 (not condMapEmpty!11459)) mapNonEmpty!11459))

(assert (= (and b!2115586 condSetEmpty!14229) setIsEmpty!14230))

(assert (= (and b!2115586 (not condSetEmpty!14229)) setNonEmpty!14229))

(assert (= (and mapNonEmpty!11459 ((_ is Cons!23559) mapValue!11459)) b!2115586))

(assert (= (and b!2115587 condSetEmpty!14230) setIsEmpty!14229))

(assert (= (and b!2115587 (not condSetEmpty!14230)) setNonEmpty!14230))

(assert (= (and mapNonEmpty!11451 ((_ is Cons!23559) mapDefault!11459)) b!2115587))

(declare-fun m!2571071 () Bool)

(assert (=> mapNonEmpty!11459 m!2571071))

(declare-fun b!2115592 () Bool)

(declare-fun e!1346444 () Bool)

(declare-fun setRes!14233 () Bool)

(assert (=> b!2115592 (= e!1346444 setRes!14233)))

(declare-fun condSetEmpty!14233 () Bool)

(assert (=> b!2115592 (= condSetEmpty!14233 (= (_2!13387 (h!28960 mapValue!11452)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14233 () Bool)

(assert (=> setIsEmpty!14233 setRes!14233))

(declare-fun setNonEmpty!14233 () Bool)

(assert (=> setNonEmpty!14233 (= setRes!14233 true)))

(declare-fun setElem!14233 () Context!2414)

(declare-fun setRest!14233 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14233 (= (_2!13387 (h!28960 mapValue!11452)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14233 true) setRest!14233))))

(assert (=> mapNonEmpty!11451 e!1346444))

(assert (= (and b!2115592 condSetEmpty!14233) setIsEmpty!14233))

(assert (= (and b!2115592 (not condSetEmpty!14233)) setNonEmpty!14233))

(assert (= (and mapNonEmpty!11451 ((_ is Cons!23559) mapValue!11452)) b!2115592))

(declare-fun b!2115603 () Bool)

(declare-fun e!1346447 () Bool)

(assert (=> b!2115603 (= e!1346447 tp_is_empty!9463)))

(declare-fun b!2115604 () Bool)

(declare-fun tp!645487 () Bool)

(declare-fun tp!645489 () Bool)

(assert (=> b!2115604 (= e!1346447 (and tp!645487 tp!645489))))

(declare-fun b!2115606 () Bool)

(declare-fun tp!645490 () Bool)

(declare-fun tp!645486 () Bool)

(assert (=> b!2115606 (= e!1346447 (and tp!645490 tp!645486))))

(declare-fun b!2115605 () Bool)

(declare-fun tp!645488 () Bool)

(assert (=> b!2115605 (= e!1346447 tp!645488)))

(assert (=> b!2115273 (= tp!645442 e!1346447)))

(assert (= (and b!2115273 ((_ is ElementMatch!5637) (regOne!11786 r!15373))) b!2115603))

(assert (= (and b!2115273 ((_ is Concat!9939) (regOne!11786 r!15373))) b!2115604))

(assert (= (and b!2115273 ((_ is Star!5637) (regOne!11786 r!15373))) b!2115605))

(assert (= (and b!2115273 ((_ is Union!5637) (regOne!11786 r!15373))) b!2115606))

(declare-fun b!2115607 () Bool)

(declare-fun e!1346448 () Bool)

(assert (=> b!2115607 (= e!1346448 tp_is_empty!9463)))

(declare-fun b!2115608 () Bool)

(declare-fun tp!645492 () Bool)

(declare-fun tp!645494 () Bool)

(assert (=> b!2115608 (= e!1346448 (and tp!645492 tp!645494))))

(declare-fun b!2115610 () Bool)

(declare-fun tp!645495 () Bool)

(declare-fun tp!645491 () Bool)

(assert (=> b!2115610 (= e!1346448 (and tp!645495 tp!645491))))

(declare-fun b!2115609 () Bool)

(declare-fun tp!645493 () Bool)

(assert (=> b!2115609 (= e!1346448 tp!645493)))

(assert (=> b!2115273 (= tp!645440 e!1346448)))

(assert (= (and b!2115273 ((_ is ElementMatch!5637) (regTwo!11786 r!15373))) b!2115607))

(assert (= (and b!2115273 ((_ is Concat!9939) (regTwo!11786 r!15373))) b!2115608))

(assert (= (and b!2115273 ((_ is Star!5637) (regTwo!11786 r!15373))) b!2115609))

(assert (= (and b!2115273 ((_ is Union!5637) (regTwo!11786 r!15373))) b!2115610))

(declare-fun b!2115621 () Bool)

(declare-fun e!1346459 () Bool)

(declare-fun setRes!14238 () Bool)

(declare-fun tp!645515 () Bool)

(assert (=> b!2115621 (= e!1346459 (and setRes!14238 tp!645515))))

(declare-fun condSetEmpty!14238 () Bool)

(declare-fun mapDefault!11462 () List!23647)

(assert (=> b!2115621 (= condSetEmpty!14238 (= (_1!13392 (_1!13393 (h!28964 mapDefault!11462))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun condMapEmpty!11462 () Bool)

(assert (=> mapNonEmpty!11445 (= condMapEmpty!11462 (= mapRest!11446 ((as const (Array (_ BitVec 32) List!23647)) mapDefault!11462)))))

(declare-fun mapRes!11462 () Bool)

(assert (=> mapNonEmpty!11445 (= tp!645444 (and e!1346459 mapRes!11462))))

(declare-fun e!1346458 () Bool)

(declare-fun setNonEmpty!14238 () Bool)

(declare-fun setElem!14239 () Context!2414)

(declare-fun tp!645510 () Bool)

(assert (=> setNonEmpty!14238 (= setRes!14238 (and tp!645510 (inv!31142 setElem!14239) e!1346458))))

(declare-fun setRest!14238 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14238 (= (_1!13392 (_1!13393 (h!28964 mapDefault!11462))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14239 true) setRest!14238))))

(declare-fun setIsEmpty!14238 () Bool)

(declare-fun setRes!14239 () Bool)

(assert (=> setIsEmpty!14238 setRes!14239))

(declare-fun setIsEmpty!14239 () Bool)

(assert (=> setIsEmpty!14239 setRes!14238))

(declare-fun b!2115622 () Bool)

(declare-fun e!1346460 () Bool)

(declare-fun tp!645513 () Bool)

(assert (=> b!2115622 (= e!1346460 tp!645513)))

(declare-fun b!2115623 () Bool)

(declare-fun e!1346457 () Bool)

(declare-fun tp!645511 () Bool)

(assert (=> b!2115623 (= e!1346457 (and setRes!14239 tp!645511))))

(declare-fun condSetEmpty!14239 () Bool)

(declare-fun mapValue!11462 () List!23647)

(assert (=> b!2115623 (= condSetEmpty!14239 (= (_1!13392 (_1!13393 (h!28964 mapValue!11462))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115624 () Bool)

(declare-fun tp!645516 () Bool)

(assert (=> b!2115624 (= e!1346458 tp!645516)))

(declare-fun mapNonEmpty!11462 () Bool)

(declare-fun tp!645512 () Bool)

(assert (=> mapNonEmpty!11462 (= mapRes!11462 (and tp!645512 e!1346457))))

(declare-fun mapKey!11462 () (_ BitVec 32))

(declare-fun mapRest!11462 () (Array (_ BitVec 32) List!23647))

(assert (=> mapNonEmpty!11462 (= mapRest!11446 (store mapRest!11462 mapKey!11462 mapValue!11462))))

(declare-fun setNonEmpty!14239 () Bool)

(declare-fun setElem!14238 () Context!2414)

(declare-fun tp!645514 () Bool)

(assert (=> setNonEmpty!14239 (= setRes!14239 (and tp!645514 (inv!31142 setElem!14238) e!1346460))))

(declare-fun setRest!14239 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14239 (= (_1!13392 (_1!13393 (h!28964 mapValue!11462))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14238 true) setRest!14239))))

(declare-fun mapIsEmpty!11462 () Bool)

(assert (=> mapIsEmpty!11462 mapRes!11462))

(assert (= (and mapNonEmpty!11445 condMapEmpty!11462) mapIsEmpty!11462))

(assert (= (and mapNonEmpty!11445 (not condMapEmpty!11462)) mapNonEmpty!11462))

(assert (= (and b!2115623 condSetEmpty!14239) setIsEmpty!14238))

(assert (= (and b!2115623 (not condSetEmpty!14239)) setNonEmpty!14239))

(assert (= setNonEmpty!14239 b!2115622))

(assert (= (and mapNonEmpty!11462 ((_ is Cons!23563) mapValue!11462)) b!2115623))

(assert (= (and b!2115621 condSetEmpty!14238) setIsEmpty!14239))

(assert (= (and b!2115621 (not condSetEmpty!14238)) setNonEmpty!14238))

(assert (= setNonEmpty!14238 b!2115624))

(assert (= (and mapNonEmpty!11445 ((_ is Cons!23563) mapDefault!11462)) b!2115621))

(declare-fun m!2571073 () Bool)

(assert (=> setNonEmpty!14238 m!2571073))

(declare-fun m!2571075 () Bool)

(assert (=> mapNonEmpty!11462 m!2571075))

(declare-fun m!2571077 () Bool)

(assert (=> setNonEmpty!14239 m!2571077))

(declare-fun setIsEmpty!14242 () Bool)

(declare-fun setRes!14242 () Bool)

(assert (=> setIsEmpty!14242 setRes!14242))

(declare-fun tp!645523 () Bool)

(declare-fun setNonEmpty!14242 () Bool)

(declare-fun setElem!14242 () Context!2414)

(declare-fun e!1346465 () Bool)

(assert (=> setNonEmpty!14242 (= setRes!14242 (and tp!645523 (inv!31142 setElem!14242) e!1346465))))

(declare-fun setRest!14242 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14242 (= (_1!13392 (_1!13393 (h!28964 mapValue!11445))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14242 true) setRest!14242))))

(declare-fun b!2115631 () Bool)

(declare-fun e!1346466 () Bool)

(declare-fun tp!645525 () Bool)

(assert (=> b!2115631 (= e!1346466 (and setRes!14242 tp!645525))))

(declare-fun condSetEmpty!14242 () Bool)

(assert (=> b!2115631 (= condSetEmpty!14242 (= (_1!13392 (_1!13393 (h!28964 mapValue!11445))) ((as const (Array Context!2414 Bool)) false)))))

(assert (=> mapNonEmpty!11445 (= tp!645453 e!1346466)))

(declare-fun b!2115632 () Bool)

(declare-fun tp!645524 () Bool)

(assert (=> b!2115632 (= e!1346465 tp!645524)))

(assert (= (and b!2115631 condSetEmpty!14242) setIsEmpty!14242))

(assert (= (and b!2115631 (not condSetEmpty!14242)) setNonEmpty!14242))

(assert (= setNonEmpty!14242 b!2115632))

(assert (= (and mapNonEmpty!11445 ((_ is Cons!23563) mapValue!11445)) b!2115631))

(declare-fun m!2571079 () Bool)

(assert (=> setNonEmpty!14242 m!2571079))

(declare-fun b!2115641 () Bool)

(declare-fun e!1346473 () Bool)

(declare-fun e!1346475 () Bool)

(declare-fun setRes!14245 () Bool)

(declare-fun tp!645536 () Bool)

(declare-fun tp!645540 () Bool)

(assert (=> b!2115641 (= e!1346475 (and tp!645540 (inv!31142 (_2!13386 (_1!13387 (h!28960 mapDefault!11444)))) e!1346473 tp_is_empty!9463 setRes!14245 tp!645536))))

(declare-fun condSetEmpty!14245 () Bool)

(assert (=> b!2115641 (= condSetEmpty!14245 (= (_2!13387 (h!28960 mapDefault!11444)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115642 () Bool)

(declare-fun tp!645538 () Bool)

(assert (=> b!2115642 (= e!1346473 tp!645538)))

(declare-fun setIsEmpty!14245 () Bool)

(assert (=> setIsEmpty!14245 setRes!14245))

(declare-fun setElem!14245 () Context!2414)

(declare-fun setNonEmpty!14245 () Bool)

(declare-fun e!1346474 () Bool)

(declare-fun tp!645537 () Bool)

(assert (=> setNonEmpty!14245 (= setRes!14245 (and tp!645537 (inv!31142 setElem!14245) e!1346474))))

(declare-fun setRest!14245 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14245 (= (_2!13387 (h!28960 mapDefault!11444)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14245 true) setRest!14245))))

(declare-fun b!2115643 () Bool)

(declare-fun tp!645539 () Bool)

(assert (=> b!2115643 (= e!1346474 tp!645539)))

(assert (=> b!2115272 (= tp!645448 e!1346475)))

(assert (= b!2115641 b!2115642))

(assert (= (and b!2115641 condSetEmpty!14245) setIsEmpty!14245))

(assert (= (and b!2115641 (not condSetEmpty!14245)) setNonEmpty!14245))

(assert (= setNonEmpty!14245 b!2115643))

(assert (= (and b!2115272 ((_ is Cons!23559) mapDefault!11444)) b!2115641))

(declare-fun m!2571081 () Bool)

(assert (=> b!2115641 m!2571081))

(declare-fun m!2571083 () Bool)

(assert (=> setNonEmpty!14245 m!2571083))

(declare-fun condSetEmpty!14248 () Bool)

(assert (=> setNonEmpty!14215 (= condSetEmpty!14248 (= setRest!14215 ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setRes!14248 () Bool)

(assert (=> setNonEmpty!14215 setRes!14248))

(declare-fun setIsEmpty!14248 () Bool)

(assert (=> setIsEmpty!14248 setRes!14248))

(declare-fun setNonEmpty!14248 () Bool)

(assert (=> setNonEmpty!14248 (= setRes!14248 true)))

(declare-fun setElem!14248 () Context!2414)

(declare-fun setRest!14248 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14248 (= setRest!14215 ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14248 true) setRest!14248))))

(assert (= (and setNonEmpty!14215 condSetEmpty!14248) setIsEmpty!14248))

(assert (= (and setNonEmpty!14215 (not condSetEmpty!14248)) setNonEmpty!14248))

(declare-fun b!2115646 () Bool)

(declare-fun e!1346478 () Bool)

(declare-fun e!1346476 () Bool)

(declare-fun setRes!14249 () Bool)

(declare-fun tp!645545 () Bool)

(declare-fun tp!645541 () Bool)

(assert (=> b!2115646 (= e!1346478 (and tp!645545 (inv!31142 (_2!13386 (_1!13387 (h!28960 (zeroValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))))) e!1346476 tp_is_empty!9463 setRes!14249 tp!645541))))

(declare-fun condSetEmpty!14249 () Bool)

(assert (=> b!2115646 (= condSetEmpty!14249 (= (_2!13387 (h!28960 (zeroValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115647 () Bool)

(declare-fun tp!645543 () Bool)

(assert (=> b!2115647 (= e!1346476 tp!645543)))

(declare-fun setIsEmpty!14249 () Bool)

(assert (=> setIsEmpty!14249 setRes!14249))

(declare-fun setNonEmpty!14249 () Bool)

(declare-fun setElem!14249 () Context!2414)

(declare-fun e!1346477 () Bool)

(declare-fun tp!645542 () Bool)

(assert (=> setNonEmpty!14249 (= setRes!14249 (and tp!645542 (inv!31142 setElem!14249) e!1346477))))

(declare-fun setRest!14249 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14249 (= (_2!13387 (h!28960 (zeroValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14249 true) setRest!14249))))

(declare-fun b!2115648 () Bool)

(declare-fun tp!645544 () Bool)

(assert (=> b!2115648 (= e!1346477 tp!645544)))

(assert (=> b!2115288 (= tp!645449 e!1346478)))

(assert (= b!2115646 b!2115647))

(assert (= (and b!2115646 condSetEmpty!14249) setIsEmpty!14249))

(assert (= (and b!2115646 (not condSetEmpty!14249)) setNonEmpty!14249))

(assert (= setNonEmpty!14249 b!2115648))

(assert (= (and b!2115288 ((_ is Cons!23559) (zeroValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))) b!2115646))

(declare-fun m!2571085 () Bool)

(assert (=> b!2115646 m!2571085))

(declare-fun m!2571087 () Bool)

(assert (=> setNonEmpty!14249 m!2571087))

(declare-fun e!1346479 () Bool)

(declare-fun tp!645550 () Bool)

(declare-fun b!2115649 () Bool)

(declare-fun setRes!14250 () Bool)

(declare-fun tp!645546 () Bool)

(declare-fun e!1346481 () Bool)

(assert (=> b!2115649 (= e!1346481 (and tp!645550 (inv!31142 (_2!13386 (_1!13387 (h!28960 (minValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))))) e!1346479 tp_is_empty!9463 setRes!14250 tp!645546))))

(declare-fun condSetEmpty!14250 () Bool)

(assert (=> b!2115649 (= condSetEmpty!14250 (= (_2!13387 (h!28960 (minValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115650 () Bool)

(declare-fun tp!645548 () Bool)

(assert (=> b!2115650 (= e!1346479 tp!645548)))

(declare-fun setIsEmpty!14250 () Bool)

(assert (=> setIsEmpty!14250 setRes!14250))

(declare-fun tp!645547 () Bool)

(declare-fun setElem!14250 () Context!2414)

(declare-fun setNonEmpty!14250 () Bool)

(declare-fun e!1346480 () Bool)

(assert (=> setNonEmpty!14250 (= setRes!14250 (and tp!645547 (inv!31142 setElem!14250) e!1346480))))

(declare-fun setRest!14250 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14250 (= (_2!13387 (h!28960 (minValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14250 true) setRest!14250))))

(declare-fun b!2115651 () Bool)

(declare-fun tp!645549 () Bool)

(assert (=> b!2115651 (= e!1346480 tp!645549)))

(assert (=> b!2115288 (= tp!645438 e!1346481)))

(assert (= b!2115649 b!2115650))

(assert (= (and b!2115649 condSetEmpty!14250) setIsEmpty!14250))

(assert (= (and b!2115649 (not condSetEmpty!14250)) setNonEmpty!14250))

(assert (= setNonEmpty!14250 b!2115651))

(assert (= (and b!2115288 ((_ is Cons!23559) (minValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 cacheDown!1229)))))))) b!2115649))

(declare-fun m!2571089 () Bool)

(assert (=> b!2115649 m!2571089))

(declare-fun m!2571091 () Bool)

(assert (=> setNonEmpty!14250 m!2571091))

(declare-fun b!2115652 () Bool)

(declare-fun e!1346484 () Bool)

(declare-fun tp!645552 () Bool)

(assert (=> b!2115652 (= e!1346484 tp!645552)))

(declare-fun setIsEmpty!14251 () Bool)

(declare-fun setRes!14251 () Bool)

(assert (=> setIsEmpty!14251 setRes!14251))

(declare-fun tp!645554 () Bool)

(declare-fun e!1346482 () Bool)

(declare-fun b!2115653 () Bool)

(assert (=> b!2115653 (= e!1346482 (and (inv!31142 (_1!13388 (_1!13389 (h!28962 mapDefault!11445)))) e!1346484 tp_is_empty!9463 setRes!14251 tp!645554))))

(declare-fun condSetEmpty!14251 () Bool)

(assert (=> b!2115653 (= condSetEmpty!14251 (= (_2!13389 (h!28962 mapDefault!11445)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setNonEmpty!14251 () Bool)

(declare-fun e!1346483 () Bool)

(declare-fun tp!645553 () Bool)

(declare-fun setElem!14251 () Context!2414)

(assert (=> setNonEmpty!14251 (= setRes!14251 (and tp!645553 (inv!31142 setElem!14251) e!1346483))))

(declare-fun setRest!14251 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14251 (= (_2!13389 (h!28962 mapDefault!11445)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14251 true) setRest!14251))))

(declare-fun b!2115654 () Bool)

(declare-fun tp!645551 () Bool)

(assert (=> b!2115654 (= e!1346483 tp!645551)))

(assert (=> b!2115287 (= tp!645436 e!1346482)))

(assert (= b!2115653 b!2115652))

(assert (= (and b!2115653 condSetEmpty!14251) setIsEmpty!14251))

(assert (= (and b!2115653 (not condSetEmpty!14251)) setNonEmpty!14251))

(assert (= setNonEmpty!14251 b!2115654))

(assert (= (and b!2115287 ((_ is Cons!23561) mapDefault!11445)) b!2115653))

(declare-fun m!2571093 () Bool)

(assert (=> b!2115653 m!2571093))

(declare-fun m!2571095 () Bool)

(assert (=> setNonEmpty!14251 m!2571095))

(declare-fun b!2115655 () Bool)

(declare-fun e!1346485 () Bool)

(declare-fun setRes!14252 () Bool)

(assert (=> b!2115655 (= e!1346485 setRes!14252)))

(declare-fun condSetEmpty!14252 () Bool)

(assert (=> b!2115655 (= condSetEmpty!14252 (= (_2!13387 (h!28960 mapDefault!11451)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14252 () Bool)

(assert (=> setIsEmpty!14252 setRes!14252))

(declare-fun setNonEmpty!14252 () Bool)

(assert (=> setNonEmpty!14252 (= setRes!14252 true)))

(declare-fun setElem!14252 () Context!2414)

(declare-fun setRest!14252 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14252 (= (_2!13387 (h!28960 mapDefault!11451)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14252 true) setRest!14252))))

(assert (=> b!2115339 e!1346485))

(assert (= (and b!2115655 condSetEmpty!14252) setIsEmpty!14252))

(assert (= (and b!2115655 (not condSetEmpty!14252)) setNonEmpty!14252))

(assert (= (and b!2115339 ((_ is Cons!23559) mapDefault!11451)) b!2115655))

(declare-fun e!1346490 () Bool)

(declare-fun tp!645562 () Bool)

(declare-fun tp!645563 () Bool)

(declare-fun b!2115664 () Bool)

(assert (=> b!2115664 (= e!1346490 (and (inv!31135 (left!18263 (c!339292 input!6660))) tp!645563 (inv!31135 (right!18593 (c!339292 input!6660))) tp!645562))))

(declare-fun b!2115666 () Bool)

(declare-fun e!1346491 () Bool)

(declare-fun tp!645561 () Bool)

(assert (=> b!2115666 (= e!1346491 tp!645561)))

(declare-fun b!2115665 () Bool)

(declare-fun inv!31143 (IArray!15561) Bool)

(assert (=> b!2115665 (= e!1346490 (and (inv!31143 (xs!10720 (c!339292 input!6660))) e!1346491))))

(assert (=> b!2115266 (= tp!645443 (and (inv!31135 (c!339292 input!6660)) e!1346490))))

(assert (= (and b!2115266 ((_ is Node!7778) (c!339292 input!6660))) b!2115664))

(assert (= b!2115665 b!2115666))

(assert (= (and b!2115266 ((_ is Leaf!11364) (c!339292 input!6660))) b!2115665))

(declare-fun m!2571097 () Bool)

(assert (=> b!2115664 m!2571097))

(declare-fun m!2571099 () Bool)

(assert (=> b!2115664 m!2571099))

(declare-fun m!2571101 () Bool)

(assert (=> b!2115665 m!2571101))

(assert (=> b!2115266 m!2570847))

(declare-fun setIsEmpty!14253 () Bool)

(declare-fun setRes!14253 () Bool)

(assert (=> setIsEmpty!14253 setRes!14253))

(declare-fun tp!645564 () Bool)

(declare-fun e!1346492 () Bool)

(declare-fun setNonEmpty!14253 () Bool)

(declare-fun setElem!14253 () Context!2414)

(assert (=> setNonEmpty!14253 (= setRes!14253 (and tp!645564 (inv!31142 setElem!14253) e!1346492))))

(declare-fun setRest!14253 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14253 (= (_1!13392 (_1!13393 (h!28964 (zeroValue!2638 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14253 true) setRest!14253))))

(declare-fun b!2115667 () Bool)

(declare-fun e!1346493 () Bool)

(declare-fun tp!645566 () Bool)

(assert (=> b!2115667 (= e!1346493 (and setRes!14253 tp!645566))))

(declare-fun condSetEmpty!14253 () Bool)

(assert (=> b!2115667 (= condSetEmpty!14253 (= (_1!13392 (_1!13393 (h!28964 (zeroValue!2638 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))))) ((as const (Array Context!2414 Bool)) false)))))

(assert (=> b!2115303 (= tp!645433 e!1346493)))

(declare-fun b!2115668 () Bool)

(declare-fun tp!645565 () Bool)

(assert (=> b!2115668 (= e!1346492 tp!645565)))

(assert (= (and b!2115667 condSetEmpty!14253) setIsEmpty!14253))

(assert (= (and b!2115667 (not condSetEmpty!14253)) setNonEmpty!14253))

(assert (= setNonEmpty!14253 b!2115668))

(assert (= (and b!2115303 ((_ is Cons!23563) (zeroValue!2638 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141)))))))) b!2115667))

(declare-fun m!2571103 () Bool)

(assert (=> setNonEmpty!14253 m!2571103))

(declare-fun setIsEmpty!14254 () Bool)

(declare-fun setRes!14254 () Bool)

(assert (=> setIsEmpty!14254 setRes!14254))

(declare-fun setNonEmpty!14254 () Bool)

(declare-fun e!1346494 () Bool)

(declare-fun setElem!14254 () Context!2414)

(declare-fun tp!645567 () Bool)

(assert (=> setNonEmpty!14254 (= setRes!14254 (and tp!645567 (inv!31142 setElem!14254) e!1346494))))

(declare-fun setRest!14254 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14254 (= (_1!13392 (_1!13393 (h!28964 (minValue!2638 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14254 true) setRest!14254))))

(declare-fun b!2115669 () Bool)

(declare-fun e!1346495 () Bool)

(declare-fun tp!645569 () Bool)

(assert (=> b!2115669 (= e!1346495 (and setRes!14254 tp!645569))))

(declare-fun condSetEmpty!14254 () Bool)

(assert (=> b!2115669 (= condSetEmpty!14254 (= (_1!13392 (_1!13393 (h!28964 (minValue!2638 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141))))))))) ((as const (Array Context!2414 Bool)) false)))))

(assert (=> b!2115303 (= tp!645432 e!1346495)))

(declare-fun b!2115670 () Bool)

(declare-fun tp!645568 () Bool)

(assert (=> b!2115670 (= e!1346494 tp!645568)))

(assert (= (and b!2115669 condSetEmpty!14254) setIsEmpty!14254))

(assert (= (and b!2115669 (not condSetEmpty!14254)) setNonEmpty!14254))

(assert (= setNonEmpty!14254 b!2115670))

(assert (= (and b!2115303 ((_ is Cons!23563) (minValue!2638 (v!28088 (underlying!4955 (v!28089 (underlying!4956 (cache!2675 cacheFurthestNullable!141)))))))) b!2115669))

(declare-fun m!2571105 () Bool)

(assert (=> setNonEmpty!14254 m!2571105))

(declare-fun b!2115685 () Bool)

(declare-fun e!1346512 () Bool)

(declare-fun tp!645597 () Bool)

(assert (=> b!2115685 (= e!1346512 tp!645597)))

(declare-fun condMapEmpty!11465 () Bool)

(declare-fun mapDefault!11465 () List!23643)

(assert (=> mapNonEmpty!11444 (= condMapEmpty!11465 (= mapRest!11444 ((as const (Array (_ BitVec 32) List!23643)) mapDefault!11465)))))

(declare-fun e!1346508 () Bool)

(declare-fun mapRes!11465 () Bool)

(assert (=> mapNonEmpty!11444 (= tp!645435 (and e!1346508 mapRes!11465))))

(declare-fun e!1346511 () Bool)

(declare-fun b!2115686 () Bool)

(declare-fun mapValue!11465 () List!23643)

(declare-fun e!1346510 () Bool)

(declare-fun tp!645601 () Bool)

(declare-fun setRes!14260 () Bool)

(declare-fun tp!645598 () Bool)

(assert (=> b!2115686 (= e!1346511 (and tp!645601 (inv!31142 (_2!13386 (_1!13387 (h!28960 mapValue!11465)))) e!1346510 tp_is_empty!9463 setRes!14260 tp!645598))))

(declare-fun condSetEmpty!14259 () Bool)

(assert (=> b!2115686 (= condSetEmpty!14259 (= (_2!13387 (h!28960 mapValue!11465)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115687 () Bool)

(declare-fun e!1346513 () Bool)

(declare-fun tp!645596 () Bool)

(assert (=> b!2115687 (= e!1346513 tp!645596)))

(declare-fun setNonEmpty!14259 () Bool)

(declare-fun setElem!14259 () Context!2414)

(declare-fun tp!645600 () Bool)

(assert (=> setNonEmpty!14259 (= setRes!14260 (and tp!645600 (inv!31142 setElem!14259) e!1346512))))

(declare-fun setRest!14260 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14259 (= (_2!13387 (h!28960 mapValue!11465)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14259 true) setRest!14260))))

(declare-fun mapNonEmpty!11465 () Bool)

(declare-fun tp!645594 () Bool)

(assert (=> mapNonEmpty!11465 (= mapRes!11465 (and tp!645594 e!1346511))))

(declare-fun mapRest!11465 () (Array (_ BitVec 32) List!23643))

(declare-fun mapKey!11465 () (_ BitVec 32))

(assert (=> mapNonEmpty!11465 (= mapRest!11444 (store mapRest!11465 mapKey!11465 mapValue!11465))))

(declare-fun setIsEmpty!14259 () Bool)

(assert (=> setIsEmpty!14259 setRes!14260))

(declare-fun tp!645593 () Bool)

(declare-fun setRes!14259 () Bool)

(declare-fun b!2115688 () Bool)

(declare-fun tp!645595 () Bool)

(assert (=> b!2115688 (= e!1346508 (and tp!645595 (inv!31142 (_2!13386 (_1!13387 (h!28960 mapDefault!11465)))) e!1346513 tp_is_empty!9463 setRes!14259 tp!645593))))

(declare-fun condSetEmpty!14260 () Bool)

(assert (=> b!2115688 (= condSetEmpty!14260 (= (_2!13387 (h!28960 mapDefault!11465)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setElem!14260 () Context!2414)

(declare-fun setNonEmpty!14260 () Bool)

(declare-fun tp!645592 () Bool)

(declare-fun e!1346509 () Bool)

(assert (=> setNonEmpty!14260 (= setRes!14259 (and tp!645592 (inv!31142 setElem!14260) e!1346509))))

(declare-fun setRest!14259 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14260 (= (_2!13387 (h!28960 mapDefault!11465)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14260 true) setRest!14259))))

(declare-fun setIsEmpty!14260 () Bool)

(assert (=> setIsEmpty!14260 setRes!14259))

(declare-fun mapIsEmpty!11465 () Bool)

(assert (=> mapIsEmpty!11465 mapRes!11465))

(declare-fun b!2115689 () Bool)

(declare-fun tp!645602 () Bool)

(assert (=> b!2115689 (= e!1346509 tp!645602)))

(declare-fun b!2115690 () Bool)

(declare-fun tp!645599 () Bool)

(assert (=> b!2115690 (= e!1346510 tp!645599)))

(assert (= (and mapNonEmpty!11444 condMapEmpty!11465) mapIsEmpty!11465))

(assert (= (and mapNonEmpty!11444 (not condMapEmpty!11465)) mapNonEmpty!11465))

(assert (= b!2115686 b!2115690))

(assert (= (and b!2115686 condSetEmpty!14259) setIsEmpty!14259))

(assert (= (and b!2115686 (not condSetEmpty!14259)) setNonEmpty!14259))

(assert (= setNonEmpty!14259 b!2115685))

(assert (= (and mapNonEmpty!11465 ((_ is Cons!23559) mapValue!11465)) b!2115686))

(assert (= b!2115688 b!2115687))

(assert (= (and b!2115688 condSetEmpty!14260) setIsEmpty!14260))

(assert (= (and b!2115688 (not condSetEmpty!14260)) setNonEmpty!14260))

(assert (= setNonEmpty!14260 b!2115689))

(assert (= (and mapNonEmpty!11444 ((_ is Cons!23559) mapDefault!11465)) b!2115688))

(declare-fun m!2571107 () Bool)

(assert (=> setNonEmpty!14259 m!2571107))

(declare-fun m!2571109 () Bool)

(assert (=> b!2115686 m!2571109))

(declare-fun m!2571111 () Bool)

(assert (=> mapNonEmpty!11465 m!2571111))

(declare-fun m!2571113 () Bool)

(assert (=> setNonEmpty!14260 m!2571113))

(declare-fun m!2571115 () Bool)

(assert (=> b!2115688 m!2571115))

(declare-fun e!1346516 () Bool)

(declare-fun setRes!14261 () Bool)

(declare-fun tp!645603 () Bool)

(declare-fun e!1346514 () Bool)

(declare-fun b!2115691 () Bool)

(declare-fun tp!645607 () Bool)

(assert (=> b!2115691 (= e!1346516 (and tp!645607 (inv!31142 (_2!13386 (_1!13387 (h!28960 mapValue!11446)))) e!1346514 tp_is_empty!9463 setRes!14261 tp!645603))))

(declare-fun condSetEmpty!14261 () Bool)

(assert (=> b!2115691 (= condSetEmpty!14261 (= (_2!13387 (h!28960 mapValue!11446)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115692 () Bool)

(declare-fun tp!645605 () Bool)

(assert (=> b!2115692 (= e!1346514 tp!645605)))

(declare-fun setIsEmpty!14261 () Bool)

(assert (=> setIsEmpty!14261 setRes!14261))

(declare-fun tp!645604 () Bool)

(declare-fun e!1346515 () Bool)

(declare-fun setElem!14261 () Context!2414)

(declare-fun setNonEmpty!14261 () Bool)

(assert (=> setNonEmpty!14261 (= setRes!14261 (and tp!645604 (inv!31142 setElem!14261) e!1346515))))

(declare-fun setRest!14261 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14261 (= (_2!13387 (h!28960 mapValue!11446)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14261 true) setRest!14261))))

(declare-fun b!2115693 () Bool)

(declare-fun tp!645606 () Bool)

(assert (=> b!2115693 (= e!1346515 tp!645606)))

(assert (=> mapNonEmpty!11444 (= tp!645431 e!1346516)))

(assert (= b!2115691 b!2115692))

(assert (= (and b!2115691 condSetEmpty!14261) setIsEmpty!14261))

(assert (= (and b!2115691 (not condSetEmpty!14261)) setNonEmpty!14261))

(assert (= setNonEmpty!14261 b!2115693))

(assert (= (and mapNonEmpty!11444 ((_ is Cons!23559) mapValue!11446)) b!2115691))

(declare-fun m!2571117 () Bool)

(assert (=> b!2115691 m!2571117))

(declare-fun m!2571119 () Bool)

(assert (=> setNonEmpty!14261 m!2571119))

(declare-fun b!2115694 () Bool)

(declare-fun e!1346517 () Bool)

(assert (=> b!2115694 (= e!1346517 tp_is_empty!9463)))

(declare-fun b!2115695 () Bool)

(declare-fun tp!645609 () Bool)

(declare-fun tp!645611 () Bool)

(assert (=> b!2115695 (= e!1346517 (and tp!645609 tp!645611))))

(declare-fun b!2115697 () Bool)

(declare-fun tp!645612 () Bool)

(declare-fun tp!645608 () Bool)

(assert (=> b!2115697 (= e!1346517 (and tp!645612 tp!645608))))

(declare-fun b!2115696 () Bool)

(declare-fun tp!645610 () Bool)

(assert (=> b!2115696 (= e!1346517 tp!645610)))

(assert (=> b!2115267 (= tp!645451 e!1346517)))

(assert (= (and b!2115267 ((_ is ElementMatch!5637) (regOne!11787 r!15373))) b!2115694))

(assert (= (and b!2115267 ((_ is Concat!9939) (regOne!11787 r!15373))) b!2115695))

(assert (= (and b!2115267 ((_ is Star!5637) (regOne!11787 r!15373))) b!2115696))

(assert (= (and b!2115267 ((_ is Union!5637) (regOne!11787 r!15373))) b!2115697))

(declare-fun b!2115698 () Bool)

(declare-fun e!1346518 () Bool)

(assert (=> b!2115698 (= e!1346518 tp_is_empty!9463)))

(declare-fun b!2115699 () Bool)

(declare-fun tp!645614 () Bool)

(declare-fun tp!645616 () Bool)

(assert (=> b!2115699 (= e!1346518 (and tp!645614 tp!645616))))

(declare-fun b!2115701 () Bool)

(declare-fun tp!645617 () Bool)

(declare-fun tp!645613 () Bool)

(assert (=> b!2115701 (= e!1346518 (and tp!645617 tp!645613))))

(declare-fun b!2115700 () Bool)

(declare-fun tp!645615 () Bool)

(assert (=> b!2115700 (= e!1346518 tp!645615)))

(assert (=> b!2115267 (= tp!645441 e!1346518)))

(assert (= (and b!2115267 ((_ is ElementMatch!5637) (regTwo!11787 r!15373))) b!2115698))

(assert (= (and b!2115267 ((_ is Concat!9939) (regTwo!11787 r!15373))) b!2115699))

(assert (= (and b!2115267 ((_ is Star!5637) (regTwo!11787 r!15373))) b!2115700))

(assert (= (and b!2115267 ((_ is Union!5637) (regTwo!11787 r!15373))) b!2115701))

(declare-fun setRes!14267 () Bool)

(declare-fun e!1346536 () Bool)

(declare-fun b!2115716 () Bool)

(declare-fun mapValue!11468 () List!23645)

(declare-fun tp!645640 () Bool)

(declare-fun e!1346532 () Bool)

(assert (=> b!2115716 (= e!1346536 (and (inv!31142 (_1!13388 (_1!13389 (h!28962 mapValue!11468)))) e!1346532 tp_is_empty!9463 setRes!14267 tp!645640))))

(declare-fun condSetEmpty!14267 () Bool)

(assert (=> b!2115716 (= condSetEmpty!14267 (= (_2!13389 (h!28962 mapValue!11468)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun e!1346533 () Bool)

(declare-fun setElem!14266 () Context!2414)

(declare-fun tp!645642 () Bool)

(declare-fun setNonEmpty!14266 () Bool)

(assert (=> setNonEmpty!14266 (= setRes!14267 (and tp!645642 (inv!31142 setElem!14266) e!1346533))))

(declare-fun setRest!14266 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14266 (= (_2!13389 (h!28962 mapValue!11468)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14266 true) setRest!14266))))

(declare-fun mapIsEmpty!11468 () Bool)

(declare-fun mapRes!11468 () Bool)

(assert (=> mapIsEmpty!11468 mapRes!11468))

(declare-fun setIsEmpty!14266 () Bool)

(assert (=> setIsEmpty!14266 setRes!14267))

(declare-fun b!2115717 () Bool)

(declare-fun tp!645639 () Bool)

(assert (=> b!2115717 (= e!1346533 tp!645639)))

(declare-fun condMapEmpty!11468 () Bool)

(declare-fun mapDefault!11468 () List!23645)

(assert (=> mapNonEmpty!11446 (= condMapEmpty!11468 (= mapRest!11445 ((as const (Array (_ BitVec 32) List!23645)) mapDefault!11468)))))

(declare-fun e!1346535 () Bool)

(assert (=> mapNonEmpty!11446 (= tp!645456 (and e!1346535 mapRes!11468))))

(declare-fun tp!645636 () Bool)

(declare-fun b!2115718 () Bool)

(declare-fun e!1346531 () Bool)

(declare-fun setRes!14266 () Bool)

(assert (=> b!2115718 (= e!1346535 (and (inv!31142 (_1!13388 (_1!13389 (h!28962 mapDefault!11468)))) e!1346531 tp_is_empty!9463 setRes!14266 tp!645636))))

(declare-fun condSetEmpty!14266 () Bool)

(assert (=> b!2115718 (= condSetEmpty!14266 (= (_2!13389 (h!28962 mapDefault!11468)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun b!2115719 () Bool)

(declare-fun tp!645638 () Bool)

(assert (=> b!2115719 (= e!1346532 tp!645638)))

(declare-fun setNonEmpty!14267 () Bool)

(declare-fun setElem!14267 () Context!2414)

(declare-fun e!1346534 () Bool)

(declare-fun tp!645643 () Bool)

(assert (=> setNonEmpty!14267 (= setRes!14266 (and tp!645643 (inv!31142 setElem!14267) e!1346534))))

(declare-fun setRest!14267 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14267 (= (_2!13389 (h!28962 mapDefault!11468)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14267 true) setRest!14267))))

(declare-fun b!2115720 () Bool)

(declare-fun tp!645637 () Bool)

(assert (=> b!2115720 (= e!1346534 tp!645637)))

(declare-fun setIsEmpty!14267 () Bool)

(assert (=> setIsEmpty!14267 setRes!14266))

(declare-fun mapNonEmpty!11468 () Bool)

(declare-fun tp!645641 () Bool)

(assert (=> mapNonEmpty!11468 (= mapRes!11468 (and tp!645641 e!1346536))))

(declare-fun mapKey!11468 () (_ BitVec 32))

(declare-fun mapRest!11468 () (Array (_ BitVec 32) List!23645))

(assert (=> mapNonEmpty!11468 (= mapRest!11445 (store mapRest!11468 mapKey!11468 mapValue!11468))))

(declare-fun b!2115721 () Bool)

(declare-fun tp!645644 () Bool)

(assert (=> b!2115721 (= e!1346531 tp!645644)))

(assert (= (and mapNonEmpty!11446 condMapEmpty!11468) mapIsEmpty!11468))

(assert (= (and mapNonEmpty!11446 (not condMapEmpty!11468)) mapNonEmpty!11468))

(assert (= b!2115716 b!2115719))

(assert (= (and b!2115716 condSetEmpty!14267) setIsEmpty!14266))

(assert (= (and b!2115716 (not condSetEmpty!14267)) setNonEmpty!14266))

(assert (= setNonEmpty!14266 b!2115717))

(assert (= (and mapNonEmpty!11468 ((_ is Cons!23561) mapValue!11468)) b!2115716))

(assert (= b!2115718 b!2115721))

(assert (= (and b!2115718 condSetEmpty!14266) setIsEmpty!14267))

(assert (= (and b!2115718 (not condSetEmpty!14266)) setNonEmpty!14267))

(assert (= setNonEmpty!14267 b!2115720))

(assert (= (and mapNonEmpty!11446 ((_ is Cons!23561) mapDefault!11468)) b!2115718))

(declare-fun m!2571121 () Bool)

(assert (=> setNonEmpty!14267 m!2571121))

(declare-fun m!2571123 () Bool)

(assert (=> mapNonEmpty!11468 m!2571123))

(declare-fun m!2571125 () Bool)

(assert (=> setNonEmpty!14266 m!2571125))

(declare-fun m!2571127 () Bool)

(assert (=> b!2115718 m!2571127))

(declare-fun m!2571129 () Bool)

(assert (=> b!2115716 m!2571129))

(declare-fun b!2115722 () Bool)

(declare-fun e!1346539 () Bool)

(declare-fun tp!645646 () Bool)

(assert (=> b!2115722 (= e!1346539 tp!645646)))

(declare-fun setIsEmpty!14268 () Bool)

(declare-fun setRes!14268 () Bool)

(assert (=> setIsEmpty!14268 setRes!14268))

(declare-fun tp!645648 () Bool)

(declare-fun b!2115723 () Bool)

(declare-fun e!1346537 () Bool)

(assert (=> b!2115723 (= e!1346537 (and (inv!31142 (_1!13388 (_1!13389 (h!28962 mapValue!11444)))) e!1346539 tp_is_empty!9463 setRes!14268 tp!645648))))

(declare-fun condSetEmpty!14268 () Bool)

(assert (=> b!2115723 (= condSetEmpty!14268 (= (_2!13389 (h!28962 mapValue!11444)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setNonEmpty!14268 () Bool)

(declare-fun setElem!14268 () Context!2414)

(declare-fun tp!645647 () Bool)

(declare-fun e!1346538 () Bool)

(assert (=> setNonEmpty!14268 (= setRes!14268 (and tp!645647 (inv!31142 setElem!14268) e!1346538))))

(declare-fun setRest!14268 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14268 (= (_2!13389 (h!28962 mapValue!11444)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14268 true) setRest!14268))))

(declare-fun b!2115724 () Bool)

(declare-fun tp!645645 () Bool)

(assert (=> b!2115724 (= e!1346538 tp!645645)))

(assert (=> mapNonEmpty!11446 (= tp!645458 e!1346537)))

(assert (= b!2115723 b!2115722))

(assert (= (and b!2115723 condSetEmpty!14268) setIsEmpty!14268))

(assert (= (and b!2115723 (not condSetEmpty!14268)) setNonEmpty!14268))

(assert (= setNonEmpty!14268 b!2115724))

(assert (= (and mapNonEmpty!11446 ((_ is Cons!23561) mapValue!11444)) b!2115723))

(declare-fun m!2571131 () Bool)

(assert (=> b!2115723 m!2571131))

(declare-fun m!2571133 () Bool)

(assert (=> setNonEmpty!14268 m!2571133))

(declare-fun b!2115729 () Bool)

(declare-fun e!1346542 () Bool)

(declare-fun setRes!14271 () Bool)

(assert (=> b!2115729 (= e!1346542 setRes!14271)))

(declare-fun condSetEmpty!14271 () Bool)

(assert (=> b!2115729 (= condSetEmpty!14271 (= (_2!13389 (h!28962 (zeroValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476))))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14271 () Bool)

(assert (=> setIsEmpty!14271 setRes!14271))

(declare-fun setNonEmpty!14271 () Bool)

(assert (=> setNonEmpty!14271 (= setRes!14271 true)))

(declare-fun setElem!14271 () Context!2414)

(declare-fun setRest!14271 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14271 (= (_2!13389 (h!28962 (zeroValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476))))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14271 true) setRest!14271))))

(assert (=> b!2115350 e!1346542))

(assert (= (and b!2115729 condSetEmpty!14271) setIsEmpty!14271))

(assert (= (and b!2115729 (not condSetEmpty!14271)) setNonEmpty!14271))

(assert (= (and b!2115350 ((_ is Cons!23561) (zeroValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476))))))))) b!2115729))

(declare-fun b!2115730 () Bool)

(declare-fun e!1346543 () Bool)

(declare-fun setRes!14272 () Bool)

(assert (=> b!2115730 (= e!1346543 setRes!14272)))

(declare-fun condSetEmpty!14272 () Bool)

(assert (=> b!2115730 (= condSetEmpty!14272 (= (_2!13389 (h!28962 (minValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476))))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14272 () Bool)

(assert (=> setIsEmpty!14272 setRes!14272))

(declare-fun setNonEmpty!14272 () Bool)

(assert (=> setNonEmpty!14272 (= setRes!14272 true)))

(declare-fun setElem!14272 () Context!2414)

(declare-fun setRest!14272 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14272 (= (_2!13389 (h!28962 (minValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476))))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14272 true) setRest!14272))))

(assert (=> b!2115350 e!1346543))

(assert (= (and b!2115730 condSetEmpty!14272) setIsEmpty!14272))

(assert (= (and b!2115730 (not condSetEmpty!14272)) setNonEmpty!14272))

(assert (= (and b!2115350 ((_ is Cons!23561) (minValue!2637 (v!28085 (underlying!4952 (v!28086 (underlying!4953 (cache!2673 (_2!13391 lt!793476))))))))) b!2115730))

(declare-fun b!2115731 () Bool)

(declare-fun e!1346544 () Bool)

(declare-fun setRes!14273 () Bool)

(assert (=> b!2115731 (= e!1346544 setRes!14273)))

(declare-fun condSetEmpty!14273 () Bool)

(assert (=> b!2115731 (= condSetEmpty!14273 (= (_2!13389 (h!28962 mapDefault!11452)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14273 () Bool)

(assert (=> setIsEmpty!14273 setRes!14273))

(declare-fun setNonEmpty!14273 () Bool)

(assert (=> setNonEmpty!14273 (= setRes!14273 true)))

(declare-fun setElem!14273 () Context!2414)

(declare-fun setRest!14273 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14273 (= (_2!13389 (h!28962 mapDefault!11452)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14273 true) setRest!14273))))

(assert (=> b!2115347 e!1346544))

(assert (= (and b!2115731 condSetEmpty!14273) setIsEmpty!14273))

(assert (= (and b!2115731 (not condSetEmpty!14273)) setNonEmpty!14273))

(assert (= (and b!2115347 ((_ is Cons!23561) mapDefault!11452)) b!2115731))

(declare-fun b!2115732 () Bool)

(declare-fun e!1346545 () Bool)

(declare-fun setRes!14274 () Bool)

(assert (=> b!2115732 (= e!1346545 setRes!14274)))

(declare-fun condSetEmpty!14274 () Bool)

(assert (=> b!2115732 (= condSetEmpty!14274 (= (_2!13387 (h!28960 (zeroValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476))))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14274 () Bool)

(assert (=> setIsEmpty!14274 setRes!14274))

(declare-fun setNonEmpty!14274 () Bool)

(assert (=> setNonEmpty!14274 (= setRes!14274 true)))

(declare-fun setElem!14274 () Context!2414)

(declare-fun setRest!14274 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14274 (= (_2!13387 (h!28960 (zeroValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476))))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14274 true) setRest!14274))))

(assert (=> b!2115346 e!1346545))

(assert (= (and b!2115732 condSetEmpty!14274) setIsEmpty!14274))

(assert (= (and b!2115732 (not condSetEmpty!14274)) setNonEmpty!14274))

(assert (= (and b!2115346 ((_ is Cons!23559) (zeroValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476))))))))) b!2115732))

(declare-fun b!2115733 () Bool)

(declare-fun e!1346546 () Bool)

(declare-fun setRes!14275 () Bool)

(assert (=> b!2115733 (= e!1346546 setRes!14275)))

(declare-fun condSetEmpty!14275 () Bool)

(assert (=> b!2115733 (= condSetEmpty!14275 (= (_2!13387 (h!28960 (minValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476))))))))) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14275 () Bool)

(assert (=> setIsEmpty!14275 setRes!14275))

(declare-fun setNonEmpty!14275 () Bool)

(assert (=> setNonEmpty!14275 (= setRes!14275 true)))

(declare-fun setElem!14275 () Context!2414)

(declare-fun setRest!14275 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14275 (= (_2!13387 (h!28960 (minValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476))))))))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14275 true) setRest!14275))))

(assert (=> b!2115346 e!1346546))

(assert (= (and b!2115733 condSetEmpty!14275) setIsEmpty!14275))

(assert (= (and b!2115733 (not condSetEmpty!14275)) setNonEmpty!14275))

(assert (= (and b!2115346 ((_ is Cons!23559) (minValue!2636 (v!28084 (underlying!4951 (v!28087 (underlying!4954 (cache!2674 (_3!1859 lt!793476))))))))) b!2115733))

(declare-fun b!2115734 () Bool)

(declare-fun e!1346547 () Bool)

(declare-fun tp!645650 () Bool)

(declare-fun tp!645651 () Bool)

(assert (=> b!2115734 (= e!1346547 (and (inv!31135 (left!18263 (c!339292 totalInput!1306))) tp!645651 (inv!31135 (right!18593 (c!339292 totalInput!1306))) tp!645650))))

(declare-fun b!2115736 () Bool)

(declare-fun e!1346548 () Bool)

(declare-fun tp!645649 () Bool)

(assert (=> b!2115736 (= e!1346548 tp!645649)))

(declare-fun b!2115735 () Bool)

(assert (=> b!2115735 (= e!1346547 (and (inv!31143 (xs!10720 (c!339292 totalInput!1306))) e!1346548))))

(assert (=> b!2115280 (= tp!645455 (and (inv!31135 (c!339292 totalInput!1306)) e!1346547))))

(assert (= (and b!2115280 ((_ is Node!7778) (c!339292 totalInput!1306))) b!2115734))

(assert (= b!2115735 b!2115736))

(assert (= (and b!2115280 ((_ is Leaf!11364) (c!339292 totalInput!1306))) b!2115735))

(declare-fun m!2571135 () Bool)

(assert (=> b!2115734 m!2571135))

(declare-fun m!2571137 () Bool)

(assert (=> b!2115734 m!2571137))

(declare-fun m!2571139 () Bool)

(assert (=> b!2115735 m!2571139))

(assert (=> b!2115280 m!2570773))

(declare-fun setIsEmpty!14276 () Bool)

(declare-fun setRes!14276 () Bool)

(assert (=> setIsEmpty!14276 setRes!14276))

(declare-fun setElem!14276 () Context!2414)

(declare-fun tp!645652 () Bool)

(declare-fun e!1346549 () Bool)

(declare-fun setNonEmpty!14276 () Bool)

(assert (=> setNonEmpty!14276 (= setRes!14276 (and tp!645652 (inv!31142 setElem!14276) e!1346549))))

(declare-fun setRest!14276 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14276 (= (_1!13392 (_1!13393 (h!28964 mapDefault!11446))) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14276 true) setRest!14276))))

(declare-fun b!2115737 () Bool)

(declare-fun e!1346550 () Bool)

(declare-fun tp!645654 () Bool)

(assert (=> b!2115737 (= e!1346550 (and setRes!14276 tp!645654))))

(declare-fun condSetEmpty!14276 () Bool)

(assert (=> b!2115737 (= condSetEmpty!14276 (= (_1!13392 (_1!13393 (h!28964 mapDefault!11446))) ((as const (Array Context!2414 Bool)) false)))))

(assert (=> b!2115263 (= tp!645445 e!1346550)))

(declare-fun b!2115738 () Bool)

(declare-fun tp!645653 () Bool)

(assert (=> b!2115738 (= e!1346549 tp!645653)))

(assert (= (and b!2115737 condSetEmpty!14276) setIsEmpty!14276))

(assert (= (and b!2115737 (not condSetEmpty!14276)) setNonEmpty!14276))

(assert (= setNonEmpty!14276 b!2115738))

(assert (= (and b!2115263 ((_ is Cons!23563) mapDefault!11446)) b!2115737))

(declare-fun m!2571141 () Bool)

(assert (=> setNonEmpty!14276 m!2571141))

(declare-fun b!2115745 () Bool)

(declare-fun e!1346556 () Bool)

(declare-fun setRes!14282 () Bool)

(assert (=> b!2115745 (= e!1346556 setRes!14282)))

(declare-fun condSetEmpty!14281 () Bool)

(declare-fun mapValue!11471 () List!23645)

(assert (=> b!2115745 (= condSetEmpty!14281 (= (_2!13389 (h!28962 mapValue!11471)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun mapIsEmpty!11471 () Bool)

(declare-fun mapRes!11471 () Bool)

(assert (=> mapIsEmpty!11471 mapRes!11471))

(declare-fun setNonEmpty!14282 () Bool)

(declare-fun setRes!14281 () Bool)

(assert (=> setNonEmpty!14282 (= setRes!14281 true)))

(declare-fun mapDefault!11471 () List!23645)

(declare-fun setElem!14281 () Context!2414)

(declare-fun setRest!14281 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14282 (= (_2!13389 (h!28962 mapDefault!11471)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14281 true) setRest!14281))))

(declare-fun mapNonEmpty!11471 () Bool)

(assert (=> mapNonEmpty!11471 (= mapRes!11471 e!1346556)))

(declare-fun mapRest!11471 () (Array (_ BitVec 32) List!23645))

(declare-fun mapKey!11471 () (_ BitVec 32))

(assert (=> mapNonEmpty!11471 (= mapRest!11451 (store mapRest!11471 mapKey!11471 mapValue!11471))))

(declare-fun b!2115746 () Bool)

(declare-fun e!1346555 () Bool)

(assert (=> b!2115746 (= e!1346555 setRes!14281)))

(declare-fun condSetEmpty!14282 () Bool)

(assert (=> b!2115746 (= condSetEmpty!14282 (= (_2!13389 (h!28962 mapDefault!11471)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14281 () Bool)

(assert (=> setIsEmpty!14281 setRes!14282))

(declare-fun setIsEmpty!14282 () Bool)

(assert (=> setIsEmpty!14282 setRes!14281))

(declare-fun setNonEmpty!14281 () Bool)

(assert (=> setNonEmpty!14281 (= setRes!14282 true)))

(declare-fun setElem!14282 () Context!2414)

(declare-fun setRest!14282 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14281 (= (_2!13389 (h!28962 mapValue!11471)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14282 true) setRest!14282))))

(declare-fun condMapEmpty!11471 () Bool)

(assert (=> mapNonEmpty!11452 (= condMapEmpty!11471 (= mapRest!11451 ((as const (Array (_ BitVec 32) List!23645)) mapDefault!11471)))))

(assert (=> mapNonEmpty!11452 (and e!1346555 mapRes!11471)))

(assert (= (and mapNonEmpty!11452 condMapEmpty!11471) mapIsEmpty!11471))

(assert (= (and mapNonEmpty!11452 (not condMapEmpty!11471)) mapNonEmpty!11471))

(assert (= (and b!2115745 condSetEmpty!14281) setIsEmpty!14281))

(assert (= (and b!2115745 (not condSetEmpty!14281)) setNonEmpty!14281))

(assert (= (and mapNonEmpty!11471 ((_ is Cons!23561) mapValue!11471)) b!2115745))

(assert (= (and b!2115746 condSetEmpty!14282) setIsEmpty!14282))

(assert (= (and b!2115746 (not condSetEmpty!14282)) setNonEmpty!14282))

(assert (= (and mapNonEmpty!11452 ((_ is Cons!23561) mapDefault!11471)) b!2115746))

(declare-fun m!2571143 () Bool)

(assert (=> mapNonEmpty!11471 m!2571143))

(declare-fun b!2115747 () Bool)

(declare-fun e!1346557 () Bool)

(declare-fun setRes!14283 () Bool)

(assert (=> b!2115747 (= e!1346557 setRes!14283)))

(declare-fun condSetEmpty!14283 () Bool)

(assert (=> b!2115747 (= condSetEmpty!14283 (= (_2!13389 (h!28962 mapValue!11451)) ((as const (Array Context!2414 Bool)) false)))))

(declare-fun setIsEmpty!14283 () Bool)

(assert (=> setIsEmpty!14283 setRes!14283))

(declare-fun setNonEmpty!14283 () Bool)

(assert (=> setNonEmpty!14283 (= setRes!14283 true)))

(declare-fun setElem!14283 () Context!2414)

(declare-fun setRest!14283 () (InoxSet Context!2414))

(assert (=> setNonEmpty!14283 (= (_2!13389 (h!28962 mapValue!11451)) ((_ map or) (store ((as const (Array Context!2414 Bool)) false) setElem!14283 true) setRest!14283))))

(assert (=> mapNonEmpty!11452 e!1346557))

(assert (= (and b!2115747 condSetEmpty!14283) setIsEmpty!14283))

(assert (= (and b!2115747 (not condSetEmpty!14283)) setNonEmpty!14283))

(assert (= (and mapNonEmpty!11452 ((_ is Cons!23561) mapValue!11451)) b!2115747))

(declare-fun b!2115748 () Bool)

(declare-fun e!1346558 () Bool)

(assert (=> b!2115748 (= e!1346558 tp_is_empty!9463)))

(declare-fun b!2115749 () Bool)

(declare-fun tp!645656 () Bool)

(declare-fun tp!645658 () Bool)

(assert (=> b!2115749 (= e!1346558 (and tp!645656 tp!645658))))

(declare-fun b!2115751 () Bool)

(declare-fun tp!645659 () Bool)

(declare-fun tp!645655 () Bool)

(assert (=> b!2115751 (= e!1346558 (and tp!645659 tp!645655))))

(declare-fun b!2115750 () Bool)

(declare-fun tp!645657 () Bool)

(assert (=> b!2115750 (= e!1346558 tp!645657)))

(assert (=> b!2115298 (= tp!645437 e!1346558)))

(assert (= (and b!2115298 ((_ is ElementMatch!5637) (reg!5966 r!15373))) b!2115748))

(assert (= (and b!2115298 ((_ is Concat!9939) (reg!5966 r!15373))) b!2115749))

(assert (= (and b!2115298 ((_ is Star!5637) (reg!5966 r!15373))) b!2115750))

(assert (= (and b!2115298 ((_ is Union!5637) (reg!5966 r!15373))) b!2115751))

(declare-fun e!1346559 () Bool)

(declare-fun b!2115752 () Bool)

(declare-fun tp!645662 () Bool)

(declare-fun tp!645661 () Bool)

(assert (=> b!2115752 (= e!1346559 (and (inv!31135 (left!18263 (c!339292 (totalInput!2847 cacheFurthestNullable!141)))) tp!645662 (inv!31135 (right!18593 (c!339292 (totalInput!2847 cacheFurthestNullable!141)))) tp!645661))))

(declare-fun b!2115754 () Bool)

(declare-fun e!1346560 () Bool)

(declare-fun tp!645660 () Bool)

(assert (=> b!2115754 (= e!1346560 tp!645660)))

(declare-fun b!2115753 () Bool)

(assert (=> b!2115753 (= e!1346559 (and (inv!31143 (xs!10720 (c!339292 (totalInput!2847 cacheFurthestNullable!141)))) e!1346560))))

(assert (=> b!2115297 (= tp!645447 (and (inv!31135 (c!339292 (totalInput!2847 cacheFurthestNullable!141))) e!1346559))))

(assert (= (and b!2115297 ((_ is Node!7778) (c!339292 (totalInput!2847 cacheFurthestNullable!141)))) b!2115752))

(assert (= b!2115753 b!2115754))

(assert (= (and b!2115297 ((_ is Leaf!11364) (c!339292 (totalInput!2847 cacheFurthestNullable!141)))) b!2115753))

(declare-fun m!2571145 () Bool)

(assert (=> b!2115752 m!2571145))

(declare-fun m!2571147 () Bool)

(assert (=> b!2115752 m!2571147))

(declare-fun m!2571149 () Bool)

(assert (=> b!2115753 m!2571149))

(assert (=> b!2115297 m!2570779))

(declare-fun b_lambda!70389 () Bool)

(assert (= b_lambda!70385 (or b!2115290 b_lambda!70389)))

(declare-fun bs!441221 () Bool)

(declare-fun d!642610 () Bool)

(assert (= bs!441221 (and d!642610 b!2115290)))

(assert (=> bs!441221 (= (dynLambda!11291 lambda!78241 (h!28963 (_2!13390 (_1!13391 lt!793476)))) (= (totalInput!2846 (h!28963 (_2!13390 (_1!13391 lt!793476)))) totalInput!1306))))

(assert (=> b!2115427 d!642610))

(declare-fun b_lambda!70391 () Bool)

(assert (= b_lambda!70387 (or b!2115279 b_lambda!70391)))

(declare-fun bs!441222 () Bool)

(declare-fun d!642612 () Bool)

(assert (= bs!441222 (and d!642612 b!2115279)))

(assert (=> bs!441222 (= (dynLambda!11291 lambda!78240 (h!28963 (_2!13390 (_1!13391 lt!793476)))) (= (res!917866 (h!28963 (_2!13390 (_1!13391 lt!793476)))) (_1!13390 (_1!13391 lt!793476))))))

(assert (=> b!2115544 d!642612))

(check-sat (not b!2115732) (not setNonEmpty!14275) (not bm!128540) (not b!2115750) (not mapNonEmpty!11471) (not setNonEmpty!14239) b_and!170891 (not b_lambda!70391) (not b!2115751) (not b!2115605) (not b!2115624) (not d!642568) (not setNonEmpty!14253) (not b!2115266) (not d!642544) (not b!2115746) (not b!2115606) (not b!2115668) (not d!642580) (not d!642520) (not b!2115579) (not b!2115513) (not b!2115524) (not setNonEmpty!14233) b_and!170883 (not b_next!62009) (not setNonEmpty!14223) (not b!2115747) (not b!2115731) (not d!642560) (not b!2115753) (not b!2115388) (not mapNonEmpty!11462) (not b!2115587) (not mapNonEmpty!11453) (not b!2115736) (not setNonEmpty!14251) (not b!2115545) (not b!2115687) (not setNonEmpty!14224) (not b!2115735) (not setNonEmpty!14252) b_and!170881 (not b!2115669) (not b!2115622) (not setNonEmpty!14274) (not d!642522) (not d!642530) (not b!2115653) (not b!2115500) (not setNonEmpty!14238) (not b!2115667) (not b!2115697) b_and!170889 (not d!642546) (not d!642588) (not d!642554) (not setNonEmpty!14249) (not b!2115431) (not b!2115642) (not setNonEmpty!14242) b_and!170887 (not b_next!62011) (not setNonEmpty!14229) (not b!2115586) (not setNonEmpty!14261) (not b!2115643) (not b!2115737) (not b!2115734) (not b!2115695) (not setNonEmpty!14230) (not d!642582) (not b!2115670) (not b!2115623) (not b!2115621) (not d!642584) (not b!2115719) (not b!2115557) (not b!2115297) (not b!2115576) (not setNonEmpty!14259) (not b!2115700) (not setNonEmpty!14273) (not b!2115649) (not b!2115509) tp_is_empty!9463 (not b!2115664) (not b!2115651) (not b!2115693) (not d!642562) (not setNonEmpty!14217) (not d!642572) (not b!2115392) (not setNonEmpty!14276) (not b_next!62005) (not b!2115422) (not bm!128548) (not b!2115467) (not b!2115564) (not b!2115520) (not b!2115362) (not b!2115631) (not b!2115610) (not b!2115359) (not setNonEmpty!14271) (not d!642538) (not b!2115632) (not b!2115652) (not d!642526) (not bm!128552) (not b!2115464) (not d!642536) (not setNonEmpty!14254) (not mapNonEmpty!11459) (not b!2115733) (not d!642558) (not b!2115729) (not b!2115749) (not setNonEmpty!14282) (not b!2115506) (not b_next!62015) (not b!2115434) (not b!2115521) (not b!2115688) (not b!2115578) (not mapNonEmpty!11456) (not b!2115754) (not b!2115647) (not d!642590) (not b!2115699) (not b!2115665) (not b_next!62007) (not bm!128549) (not b!2115461) (not b!2115666) (not b!2115531) (not b!2115655) (not b!2115690) (not b!2115280) (not b!2115604) (not d!642570) (not setNonEmpty!14283) (not d!642548) (not b!2115701) (not b!2115456) (not b!2115724) (not b!2115717) (not b!2115428) (not b!2115609) (not setNonEmpty!14216) (not b_next!62013) (not b!2115752) (not b!2115646) (not b!2115575) (not setNonEmpty!14267) (not b!2115443) (not b!2115738) (not b!2115499) (not b!2115723) (not b!2115504) (not d!642594) (not b!2115745) (not b!2115414) (not b!2115555) (not b!2115641) (not b!2115689) (not b!2115421) (not setNonEmpty!14250) (not b!2115463) (not bm!128535) (not setNonEmpty!14266) (not mapNonEmpty!11454) (not bm!128547) (not d!642586) (not b!2115416) (not b!2115648) (not b!2115510) (not d!642576) (not d!642556) (not d!642592) (not setNonEmpty!14220) (not b!2115654) (not d!642602) (not b!2115691) (not b!2115692) (not d!642608) (not b!2115574) (not b!2115716) (not b!2115722) b_and!170885 (not setNonEmpty!14272) (not b!2115554) (not setNonEmpty!14248) (not b!2115592) (not mapNonEmpty!11455) (not setNonEmpty!14260) (not setNonEmpty!14268) (not d!642578) (not b!2115721) (not b!2115650) (not b_lambda!70389) (not b!2115501) (not b!2115730) (not b!2115696) (not b!2115718) (not b!2115577) (not setNonEmpty!14281) (not b!2115518) (not d!642598) (not b!2115686) (not b!2115405) (not bm!128537) (not b!2115437) (not b!2115407) (not b!2115685) (not b!2115429) (not d!642600) (not b!2115608) (not setNonEmpty!14245) (not b!2115548) (not mapNonEmpty!11465) (not mapNonEmpty!11468) (not b!2115720))
(check-sat b_and!170891 b_and!170883 (not b_next!62009) b_and!170881 b_and!170889 (not b_next!62005) (not b_next!62015) (not b_next!62007) (not b_next!62013) b_and!170885 (not b_next!62011) b_and!170887)
