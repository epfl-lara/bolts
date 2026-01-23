; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208936 () Bool)

(assert start!208936)

(declare-fun b!2153730 () Bool)

(declare-fun b_free!63605 () Bool)

(declare-fun b_next!64309 () Bool)

(assert (=> b!2153730 (= b_free!63605 (not b_next!64309))))

(declare-fun tp!669907 () Bool)

(declare-fun b_and!173221 () Bool)

(assert (=> b!2153730 (= tp!669907 b_and!173221)))

(declare-fun b!2153720 () Bool)

(declare-fun b_free!63607 () Bool)

(declare-fun b_next!64311 () Bool)

(assert (=> b!2153720 (= b_free!63607 (not b_next!64311))))

(declare-fun tp!669908 () Bool)

(declare-fun b_and!173223 () Bool)

(assert (=> b!2153720 (= tp!669908 b_and!173223)))

(declare-fun b!2153737 () Bool)

(assert (=> b!2153737 true))

(declare-fun bs!445745 () Bool)

(declare-fun b!2153722 () Bool)

(assert (= bs!445745 (and b!2153722 b!2153737)))

(declare-fun lambda!81191 () Int)

(declare-fun lambda!81190 () Int)

(assert (=> bs!445745 (not (= lambda!81191 lambda!81190))))

(assert (=> b!2153722 true))

(declare-fun b!2153717 () Bool)

(declare-fun e!1377498 () Bool)

(declare-datatypes ((C!11952 0))(
  ( (C!11953 (val!6962 Int)) )
))
(declare-datatypes ((Regex!5903 0))(
  ( (ElementMatch!5903 (c!341415 C!11952)) (Concat!10205 (regOne!12318 Regex!5903) (regTwo!12318 Regex!5903)) (EmptyExpr!5903) (Star!5903 (reg!6232 Regex!5903)) (EmptyLang!5903) (Union!5903 (regOne!12319 Regex!5903) (regTwo!12319 Regex!5903)) )
))
(declare-datatypes ((List!24887 0))(
  ( (Nil!24803) (Cons!24803 (h!30204 Regex!5903) (t!197435 List!24887)) )
))
(declare-datatypes ((Context!2946 0))(
  ( (Context!2947 (exprs!1973 List!24887)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3690 0))(
  ( (tuple3!3691 (_1!14583 (InoxSet Context!2946)) (_2!14583 Int) (_3!2315 Int)) )
))
(declare-datatypes ((tuple2!24536 0))(
  ( (tuple2!24537 (_1!14584 tuple3!3690) (_2!14584 Int)) )
))
(declare-datatypes ((List!24888 0))(
  ( (Nil!24804) (Cons!24804 (h!30205 tuple2!24536) (t!197436 List!24888)) )
))
(declare-datatypes ((array!9865 0))(
  ( (array!9866 (arr!4404 (Array (_ BitVec 32) (_ BitVec 64))) (size!19381 (_ BitVec 32))) )
))
(declare-datatypes ((array!9867 0))(
  ( (array!9868 (arr!4405 (Array (_ BitVec 32) List!24888)) (size!19382 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5808 0))(
  ( (LongMapFixedSize!5809 (defaultEntry!3269 Int) (mask!7171 (_ BitVec 32)) (extraKeys!3152 (_ BitVec 32)) (zeroValue!3162 List!24888) (minValue!3162 List!24888) (_size!5859 (_ BitVec 32)) (_keys!3201 array!9865) (_values!3184 array!9867) (_vacant!2965 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11441 0))(
  ( (Cell!11442 (v!29271 LongMapFixedSize!5808)) )
))
(declare-datatypes ((Hashable!2818 0))(
  ( (HashableExt!2817 (__x!16888 Int)) )
))
(declare-datatypes ((MutLongMap!2904 0))(
  ( (LongMap!2904 (underlying!6003 Cell!11441)) (MutLongMapExt!2903 (__x!16889 Int)) )
))
(declare-datatypes ((Cell!11443 0))(
  ( (Cell!11444 (v!29272 MutLongMap!2904)) )
))
(declare-datatypes ((MutableMap!2818 0))(
  ( (MutableMapExt!2817 (__x!16890 Int)) (HashMap!2818 (underlying!6004 Cell!11443) (hashF!4741 Hashable!2818) (_size!5860 (_ BitVec 32)) (defaultValue!2980 Int)) )
))
(declare-datatypes ((List!24889 0))(
  ( (Nil!24805) (Cons!24805 (h!30206 C!11952) (t!197437 List!24889)) )
))
(declare-datatypes ((IArray!16083 0))(
  ( (IArray!16084 (innerList!8099 List!24889)) )
))
(declare-datatypes ((Conc!8039 0))(
  ( (Node!8039 (left!19081 Conc!8039) (right!19411 Conc!8039) (csize!16308 Int) (cheight!8250 Int)) (Leaf!11758 (xs!10981 IArray!16083) (csize!16309 Int)) (Empty!8039) )
))
(declare-datatypes ((BalanceConc!15840 0))(
  ( (BalanceConc!15841 (c!341416 Conc!8039)) )
))
(declare-datatypes ((CacheFurthestNullable!994 0))(
  ( (CacheFurthestNullable!995 (cache!3199 MutableMap!2818) (totalInput!3313 BalanceConc!15840)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!994)

(declare-fun validCacheMapFurthestNullable!161 (MutableMap!2818 BalanceConc!15840) Bool)

(assert (=> b!2153717 (= e!1377498 (not (validCacheMapFurthestNullable!161 (cache!3199 cacheFurthestNullable!118) (totalInput!3313 cacheFurthestNullable!118))))))

(declare-fun e!1377487 () Bool)

(declare-fun e!1377497 () Bool)

(declare-fun e!1377484 () Bool)

(declare-fun b!2153718 () Bool)

(declare-fun inv!32762 (BalanceConc!15840) Bool)

(assert (=> b!2153718 (= e!1377487 (and e!1377497 (inv!32762 (totalInput!3313 cacheFurthestNullable!118)) e!1377484))))

(declare-fun b!2153719 () Bool)

(declare-fun tp!669903 () Bool)

(declare-fun inv!32763 (Conc!8039) Bool)

(assert (=> b!2153719 (= e!1377484 (and (inv!32763 (c!341416 (totalInput!3313 cacheFurthestNullable!118))) tp!669903))))

(declare-fun e!1377489 () Bool)

(assert (=> b!2153720 (= e!1377497 (and e!1377489 tp!669908))))

(declare-fun mapIsEmpty!13733 () Bool)

(declare-fun mapRes!13733 () Bool)

(assert (=> mapIsEmpty!13733 mapRes!13733))

(declare-fun res!928613 () Bool)

(declare-fun e!1377492 () Bool)

(assert (=> b!2153722 (=> (not res!928613) (not e!1377492))))

(declare-datatypes ((StackFrame!340 0))(
  ( (StackFrame!341 (z!5973 (InoxSet Context!2946)) (from!2815 Int) (lastNullablePos!502 Int) (res!928620 Int) (totalInput!3314 BalanceConc!15840)) )
))
(declare-datatypes ((List!24890 0))(
  ( (Nil!24806) (Cons!24806 (h!30207 StackFrame!340) (t!197438 List!24890)) )
))
(declare-fun stack!12 () List!24890)

(declare-fun forall!5082 (List!24890 Int) Bool)

(assert (=> b!2153722 (= res!928613 (forall!5082 stack!12 lambda!81191))))

(declare-fun b!2153723 () Bool)

(declare-fun res!928617 () Bool)

(assert (=> b!2153723 (=> (not res!928617) (not e!1377492))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(get-info :version)

(assert (=> b!2153723 (= res!928617 (and (not ((_ is Nil!24806) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun setIsEmpty!17452 () Bool)

(declare-fun setRes!17452 () Bool)

(assert (=> setIsEmpty!17452 setRes!17452))

(declare-fun b!2153724 () Bool)

(declare-fun e!1377490 () Bool)

(declare-fun e!1377488 () Bool)

(assert (=> b!2153724 (= e!1377490 e!1377488)))

(declare-fun b!2153725 () Bool)

(declare-fun e!1377494 () Bool)

(assert (=> b!2153725 (= e!1377492 e!1377494)))

(declare-fun res!928616 () Bool)

(assert (=> b!2153725 (=> (not res!928616) (not e!1377494))))

(declare-fun res!17610 () Int)

(assert (=> b!2153725 (= res!928616 (and (= (res!928620 (h!30207 stack!12)) res!17610) (>= (from!2815 (h!30207 stack!12)) 0)))))

(declare-datatypes ((Unit!37920 0))(
  ( (Unit!37921) )
))
(declare-fun lt!801380 () Unit!37920)

(declare-fun lemmaInvariant!391 (CacheFurthestNullable!994) Unit!37920)

(assert (=> b!2153725 (= lt!801380 (lemmaInvariant!391 cacheFurthestNullable!118))))

(declare-fun b!2153726 () Bool)

(declare-fun res!928615 () Bool)

(assert (=> b!2153726 (=> (not res!928615) (not e!1377498))))

(declare-fun totalInput!880 () BalanceConc!15840)

(declare-fun lt!801378 () Int)

(declare-fun furthestNullablePosition!123 ((InoxSet Context!2946) Int BalanceConc!15840 Int Int) Int)

(assert (=> b!2153726 (= res!928615 (= res!17610 (furthestNullablePosition!123 (z!5973 (h!30207 stack!12)) (from!2815 (h!30207 stack!12)) totalInput!880 lt!801378 (lastNullablePos!502 (h!30207 stack!12)))))))

(declare-fun b!2153727 () Bool)

(declare-fun res!928611 () Bool)

(assert (=> b!2153727 (=> (not res!928611) (not e!1377492))))

(assert (=> b!2153727 (= res!928611 (= (totalInput!3313 cacheFurthestNullable!118) totalInput!880))))

(declare-fun setElem!17452 () Context!2946)

(declare-fun tp!669899 () Bool)

(declare-fun e!1377483 () Bool)

(declare-fun setNonEmpty!17452 () Bool)

(declare-fun inv!32764 (Context!2946) Bool)

(assert (=> setNonEmpty!17452 (= setRes!17452 (and tp!669899 (inv!32764 setElem!17452) e!1377483))))

(declare-fun setRest!17452 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17452 (= (z!5973 (h!30207 stack!12)) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17452 true) setRest!17452))))

(declare-fun mapNonEmpty!13733 () Bool)

(declare-fun tp!669910 () Bool)

(declare-fun tp!669904 () Bool)

(assert (=> mapNonEmpty!13733 (= mapRes!13733 (and tp!669910 tp!669904))))

(declare-fun mapKey!13733 () (_ BitVec 32))

(declare-fun mapValue!13733 () List!24888)

(declare-fun mapRest!13733 () (Array (_ BitVec 32) List!24888))

(assert (=> mapNonEmpty!13733 (= (arr!4405 (_values!3184 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) (store mapRest!13733 mapKey!13733 mapValue!13733))))

(declare-fun b!2153728 () Bool)

(assert (=> b!2153728 (= e!1377494 e!1377498)))

(declare-fun res!928618 () Bool)

(assert (=> b!2153728 (=> (not res!928618) (not e!1377498))))

(assert (=> b!2153728 (= res!928618 (<= (from!2815 (h!30207 stack!12)) lt!801378))))

(declare-fun size!19383 (BalanceConc!15840) Int)

(assert (=> b!2153728 (= lt!801378 (size!19383 totalInput!880))))

(declare-fun b!2153729 () Bool)

(declare-fun tp!669906 () Bool)

(assert (=> b!2153729 (= e!1377483 tp!669906)))

(declare-fun tp!669901 () Bool)

(declare-fun e!1377482 () Bool)

(declare-fun e!1377491 () Bool)

(declare-fun tp!669905 () Bool)

(declare-fun array_inv!3158 (array!9865) Bool)

(declare-fun array_inv!3159 (array!9867) Bool)

(assert (=> b!2153730 (= e!1377491 (and tp!669907 tp!669901 tp!669905 (array_inv!3158 (_keys!3201 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) (array_inv!3159 (_values!3184 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) e!1377482))))

(declare-fun res!928619 () Bool)

(assert (=> start!208936 (=> (not res!928619) (not e!1377492))))

(declare-fun valid!2239 (CacheFurthestNullable!994) Bool)

(assert (=> start!208936 (= res!928619 (valid!2239 cacheFurthestNullable!118))))

(assert (=> start!208936 e!1377492))

(declare-fun inv!32765 (CacheFurthestNullable!994) Bool)

(assert (=> start!208936 (and (inv!32765 cacheFurthestNullable!118) e!1377487)))

(assert (=> start!208936 true))

(declare-fun e!1377496 () Bool)

(assert (=> start!208936 (and (inv!32762 totalInput!880) e!1377496)))

(declare-fun e!1377485 () Bool)

(assert (=> start!208936 e!1377485))

(declare-fun b!2153721 () Bool)

(declare-fun res!928612 () Bool)

(assert (=> b!2153721 (=> (not res!928612) (not e!1377498))))

(assert (=> b!2153721 (= res!928612 (= totalInput!880 (totalInput!3313 cacheFurthestNullable!118)))))

(declare-fun e!1377486 () Bool)

(declare-fun e!1377495 () Bool)

(declare-fun b!2153731 () Bool)

(assert (=> b!2153731 (= e!1377495 (and setRes!17452 (inv!32762 (totalInput!3314 (h!30207 stack!12))) e!1377486))))

(declare-fun condSetEmpty!17452 () Bool)

(assert (=> b!2153731 (= condSetEmpty!17452 (= (z!5973 (h!30207 stack!12)) ((as const (Array Context!2946 Bool)) false)))))

(declare-fun b!2153732 () Bool)

(assert (=> b!2153732 (= e!1377488 e!1377491)))

(declare-fun b!2153733 () Bool)

(declare-fun tp!669911 () Bool)

(assert (=> b!2153733 (= e!1377486 (and (inv!32763 (c!341416 (totalInput!3314 (h!30207 stack!12)))) tp!669911))))

(declare-fun b!2153734 () Bool)

(declare-fun tp!669902 () Bool)

(assert (=> b!2153734 (= e!1377496 (and (inv!32763 (c!341416 totalInput!880)) tp!669902))))

(declare-fun b!2153735 () Bool)

(declare-fun lt!801379 () MutLongMap!2904)

(assert (=> b!2153735 (= e!1377489 (and e!1377490 ((_ is LongMap!2904) lt!801379)))))

(assert (=> b!2153735 (= lt!801379 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))

(declare-fun tp!669900 () Bool)

(declare-fun b!2153736 () Bool)

(declare-fun inv!32766 (StackFrame!340) Bool)

(assert (=> b!2153736 (= e!1377485 (and (inv!32766 (h!30207 stack!12)) e!1377495 tp!669900))))

(declare-fun res!928614 () Bool)

(assert (=> b!2153737 (=> (not res!928614) (not e!1377492))))

(assert (=> b!2153737 (= res!928614 (forall!5082 stack!12 lambda!81190))))

(declare-fun b!2153738 () Bool)

(declare-fun tp!669909 () Bool)

(assert (=> b!2153738 (= e!1377482 (and tp!669909 mapRes!13733))))

(declare-fun condMapEmpty!13733 () Bool)

(declare-fun mapDefault!13733 () List!24888)

(assert (=> b!2153738 (= condMapEmpty!13733 (= (arr!4405 (_values!3184 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24888)) mapDefault!13733)))))

(assert (= (and start!208936 res!928619) b!2153727))

(assert (= (and b!2153727 res!928611) b!2153737))

(assert (= (and b!2153737 res!928614) b!2153722))

(assert (= (and b!2153722 res!928613) b!2153723))

(assert (= (and b!2153723 res!928617) b!2153725))

(assert (= (and b!2153725 res!928616) b!2153728))

(assert (= (and b!2153728 res!928618) b!2153726))

(assert (= (and b!2153726 res!928615) b!2153721))

(assert (= (and b!2153721 res!928612) b!2153717))

(assert (= (and b!2153738 condMapEmpty!13733) mapIsEmpty!13733))

(assert (= (and b!2153738 (not condMapEmpty!13733)) mapNonEmpty!13733))

(assert (= b!2153730 b!2153738))

(assert (= b!2153732 b!2153730))

(assert (= b!2153724 b!2153732))

(assert (= (and b!2153735 ((_ is LongMap!2904) (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))) b!2153724))

(assert (= b!2153720 b!2153735))

(assert (= (and b!2153718 ((_ is HashMap!2818) (cache!3199 cacheFurthestNullable!118))) b!2153720))

(assert (= b!2153718 b!2153719))

(assert (= start!208936 b!2153718))

(assert (= start!208936 b!2153734))

(assert (= (and b!2153731 condSetEmpty!17452) setIsEmpty!17452))

(assert (= (and b!2153731 (not condSetEmpty!17452)) setNonEmpty!17452))

(assert (= setNonEmpty!17452 b!2153729))

(assert (= b!2153731 b!2153733))

(assert (= b!2153736 b!2153731))

(assert (= (and start!208936 ((_ is Cons!24806) stack!12)) b!2153736))

(declare-fun m!2595340 () Bool)

(assert (=> b!2153736 m!2595340))

(declare-fun m!2595342 () Bool)

(assert (=> b!2153726 m!2595342))

(declare-fun m!2595344 () Bool)

(assert (=> b!2153734 m!2595344))

(declare-fun m!2595346 () Bool)

(assert (=> b!2153728 m!2595346))

(declare-fun m!2595348 () Bool)

(assert (=> b!2153737 m!2595348))

(declare-fun m!2595350 () Bool)

(assert (=> b!2153722 m!2595350))

(declare-fun m!2595352 () Bool)

(assert (=> b!2153719 m!2595352))

(declare-fun m!2595354 () Bool)

(assert (=> b!2153718 m!2595354))

(declare-fun m!2595356 () Bool)

(assert (=> b!2153725 m!2595356))

(declare-fun m!2595358 () Bool)

(assert (=> start!208936 m!2595358))

(declare-fun m!2595360 () Bool)

(assert (=> start!208936 m!2595360))

(declare-fun m!2595362 () Bool)

(assert (=> start!208936 m!2595362))

(declare-fun m!2595364 () Bool)

(assert (=> setNonEmpty!17452 m!2595364))

(declare-fun m!2595366 () Bool)

(assert (=> b!2153731 m!2595366))

(declare-fun m!2595368 () Bool)

(assert (=> b!2153733 m!2595368))

(declare-fun m!2595370 () Bool)

(assert (=> mapNonEmpty!13733 m!2595370))

(declare-fun m!2595372 () Bool)

(assert (=> b!2153717 m!2595372))

(declare-fun m!2595374 () Bool)

(assert (=> b!2153730 m!2595374))

(declare-fun m!2595376 () Bool)

(assert (=> b!2153730 m!2595376))

(check-sat (not b_next!64309) b_and!173223 (not b!2153734) (not b!2153736) (not b!2153730) (not b!2153738) (not b!2153725) (not b!2153718) (not b!2153722) (not b!2153728) (not b!2153737) (not b!2153719) (not b!2153731) (not mapNonEmpty!13733) (not b!2153717) (not b_next!64311) (not b!2153726) (not b!2153733) (not setNonEmpty!17452) (not start!208936) b_and!173221 (not b!2153729))
(check-sat b_and!173223 b_and!173221 (not b_next!64311) (not b_next!64309))
(get-model)

(declare-fun d!646035 () Bool)

(declare-fun isBalanced!2493 (Conc!8039) Bool)

(assert (=> d!646035 (= (inv!32762 (totalInput!3314 (h!30207 stack!12))) (isBalanced!2493 (c!341416 (totalInput!3314 (h!30207 stack!12)))))))

(declare-fun bs!445746 () Bool)

(assert (= bs!445746 d!646035))

(declare-fun m!2595378 () Bool)

(assert (=> bs!445746 m!2595378))

(assert (=> b!2153731 d!646035))

(declare-fun d!646037 () Bool)

(assert (=> d!646037 (= (array_inv!3158 (_keys!3201 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) (bvsge (size!19381 (_keys!3201 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2153730 d!646037))

(declare-fun d!646039 () Bool)

(assert (=> d!646039 (= (array_inv!3159 (_values!3184 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) (bvsge (size!19382 (_values!3184 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))) #b00000000000000000000000000000000))))

(assert (=> b!2153730 d!646039))

(declare-fun d!646041 () Bool)

(declare-fun res!928625 () Bool)

(declare-fun e!1377503 () Bool)

(assert (=> d!646041 (=> res!928625 e!1377503)))

(assert (=> d!646041 (= res!928625 ((_ is Nil!24806) stack!12))))

(assert (=> d!646041 (= (forall!5082 stack!12 lambda!81191) e!1377503)))

(declare-fun b!2153747 () Bool)

(declare-fun e!1377504 () Bool)

(assert (=> b!2153747 (= e!1377503 e!1377504)))

(declare-fun res!928626 () Bool)

(assert (=> b!2153747 (=> (not res!928626) (not e!1377504))))

(declare-fun dynLambda!11407 (Int StackFrame!340) Bool)

(assert (=> b!2153747 (= res!928626 (dynLambda!11407 lambda!81191 (h!30207 stack!12)))))

(declare-fun b!2153748 () Bool)

(assert (=> b!2153748 (= e!1377504 (forall!5082 (t!197438 stack!12) lambda!81191))))

(assert (= (and d!646041 (not res!928625)) b!2153747))

(assert (= (and b!2153747 res!928626) b!2153748))

(declare-fun b_lambda!70905 () Bool)

(assert (=> (not b_lambda!70905) (not b!2153747)))

(declare-fun m!2595380 () Bool)

(assert (=> b!2153747 m!2595380))

(declare-fun m!2595382 () Bool)

(assert (=> b!2153748 m!2595382))

(assert (=> b!2153722 d!646041))

(declare-fun d!646043 () Bool)

(declare-fun lt!801383 () Int)

(declare-fun size!19384 (List!24889) Int)

(declare-fun list!9564 (BalanceConc!15840) List!24889)

(assert (=> d!646043 (= lt!801383 (size!19384 (list!9564 totalInput!880)))))

(declare-fun size!19385 (Conc!8039) Int)

(assert (=> d!646043 (= lt!801383 (size!19385 (c!341416 totalInput!880)))))

(assert (=> d!646043 (= (size!19383 totalInput!880) lt!801383)))

(declare-fun bs!445747 () Bool)

(assert (= bs!445747 d!646043))

(declare-fun m!2595384 () Bool)

(assert (=> bs!445747 m!2595384))

(assert (=> bs!445747 m!2595384))

(declare-fun m!2595386 () Bool)

(assert (=> bs!445747 m!2595386))

(declare-fun m!2595388 () Bool)

(assert (=> bs!445747 m!2595388))

(assert (=> b!2153728 d!646043))

(declare-fun d!646045 () Bool)

(declare-fun lambda!81194 () Int)

(declare-fun forall!5083 (List!24887 Int) Bool)

(assert (=> d!646045 (= (inv!32764 setElem!17452) (forall!5083 (exprs!1973 setElem!17452) lambda!81194))))

(declare-fun bs!445748 () Bool)

(assert (= bs!445748 d!646045))

(declare-fun m!2595390 () Bool)

(assert (=> bs!445748 m!2595390))

(assert (=> setNonEmpty!17452 d!646045))

(declare-fun d!646047 () Bool)

(declare-fun res!928627 () Bool)

(declare-fun e!1377505 () Bool)

(assert (=> d!646047 (=> res!928627 e!1377505)))

(assert (=> d!646047 (= res!928627 ((_ is Nil!24806) stack!12))))

(assert (=> d!646047 (= (forall!5082 stack!12 lambda!81190) e!1377505)))

(declare-fun b!2153749 () Bool)

(declare-fun e!1377506 () Bool)

(assert (=> b!2153749 (= e!1377505 e!1377506)))

(declare-fun res!928628 () Bool)

(assert (=> b!2153749 (=> (not res!928628) (not e!1377506))))

(assert (=> b!2153749 (= res!928628 (dynLambda!11407 lambda!81190 (h!30207 stack!12)))))

(declare-fun b!2153750 () Bool)

(assert (=> b!2153750 (= e!1377506 (forall!5082 (t!197438 stack!12) lambda!81190))))

(assert (= (and d!646047 (not res!928627)) b!2153749))

(assert (= (and b!2153749 res!928628) b!2153750))

(declare-fun b_lambda!70907 () Bool)

(assert (=> (not b_lambda!70907) (not b!2153749)))

(declare-fun m!2595392 () Bool)

(assert (=> b!2153749 m!2595392))

(declare-fun m!2595394 () Bool)

(assert (=> b!2153750 m!2595394))

(assert (=> b!2153737 d!646047))

(declare-fun b!2153763 () Bool)

(declare-fun e!1377511 () Bool)

(assert (=> b!2153763 (= e!1377511 (= (lastNullablePos!502 (h!30207 stack!12)) (- (from!2815 (h!30207 stack!12)) 1)))))

(declare-fun b!2153765 () Bool)

(declare-fun e!1377512 () Bool)

(assert (=> b!2153765 (= e!1377512 (= (res!928620 (h!30207 stack!12)) (furthestNullablePosition!123 (z!5973 (h!30207 stack!12)) (from!2815 (h!30207 stack!12)) (totalInput!3314 (h!30207 stack!12)) (size!19383 (totalInput!3314 (h!30207 stack!12))) (lastNullablePos!502 (h!30207 stack!12)))))))

(declare-fun b!2153766 () Bool)

(declare-fun res!928642 () Bool)

(assert (=> b!2153766 (=> (not res!928642) (not e!1377512))))

(assert (=> b!2153766 (= res!928642 (and (>= (lastNullablePos!502 (h!30207 stack!12)) (- 1)) (< (lastNullablePos!502 (h!30207 stack!12)) (from!2815 (h!30207 stack!12)))))))

(declare-fun b!2153767 () Bool)

(declare-fun res!928643 () Bool)

(assert (=> b!2153767 (=> (not res!928643) (not e!1377512))))

(assert (=> b!2153767 (= res!928643 (<= (from!2815 (h!30207 stack!12)) (size!19383 (totalInput!3314 (h!30207 stack!12)))))))

(declare-fun b!2153768 () Bool)

(declare-fun res!928646 () Bool)

(assert (=> b!2153768 (=> (not res!928646) (not e!1377512))))

(assert (=> b!2153768 (= res!928646 e!1377511)))

(declare-fun res!928641 () Bool)

(assert (=> b!2153768 (=> res!928641 e!1377511)))

(declare-fun nullableZipper!213 ((InoxSet Context!2946)) Bool)

(assert (=> b!2153768 (= res!928641 (not (nullableZipper!213 (z!5973 (h!30207 stack!12)))))))

(declare-fun b!2153764 () Bool)

(declare-fun res!928645 () Bool)

(assert (=> b!2153764 (=> (not res!928645) (not e!1377512))))

(assert (=> b!2153764 (= res!928645 (= (size!19383 (totalInput!3314 (h!30207 stack!12))) (size!19383 (totalInput!3314 (h!30207 stack!12)))))))

(declare-fun d!646049 () Bool)

(declare-fun res!928644 () Bool)

(assert (=> d!646049 (=> (not res!928644) (not e!1377512))))

(assert (=> d!646049 (= res!928644 (>= (from!2815 (h!30207 stack!12)) 0))))

(assert (=> d!646049 (= (inv!32766 (h!30207 stack!12)) e!1377512)))

(assert (= (and d!646049 res!928644) b!2153767))

(assert (= (and b!2153767 res!928643) b!2153764))

(assert (= (and b!2153764 res!928645) b!2153766))

(assert (= (and b!2153766 res!928642) b!2153768))

(assert (= (and b!2153768 (not res!928641)) b!2153763))

(assert (= (and b!2153768 res!928646) b!2153765))

(declare-fun m!2595396 () Bool)

(assert (=> b!2153765 m!2595396))

(assert (=> b!2153765 m!2595396))

(declare-fun m!2595398 () Bool)

(assert (=> b!2153765 m!2595398))

(assert (=> b!2153767 m!2595396))

(declare-fun m!2595400 () Bool)

(assert (=> b!2153768 m!2595400))

(assert (=> b!2153764 m!2595396))

(assert (=> b!2153736 d!646049))

(declare-fun d!646051 () Bool)

(declare-fun c!341419 () Bool)

(assert (=> d!646051 (= c!341419 ((_ is Node!8039) (c!341416 (totalInput!3313 cacheFurthestNullable!118))))))

(declare-fun e!1377517 () Bool)

(assert (=> d!646051 (= (inv!32763 (c!341416 (totalInput!3313 cacheFurthestNullable!118))) e!1377517)))

(declare-fun b!2153775 () Bool)

(declare-fun inv!32767 (Conc!8039) Bool)

(assert (=> b!2153775 (= e!1377517 (inv!32767 (c!341416 (totalInput!3313 cacheFurthestNullable!118))))))

(declare-fun b!2153776 () Bool)

(declare-fun e!1377518 () Bool)

(assert (=> b!2153776 (= e!1377517 e!1377518)))

(declare-fun res!928649 () Bool)

(assert (=> b!2153776 (= res!928649 (not ((_ is Leaf!11758) (c!341416 (totalInput!3313 cacheFurthestNullable!118)))))))

(assert (=> b!2153776 (=> res!928649 e!1377518)))

(declare-fun b!2153777 () Bool)

(declare-fun inv!32768 (Conc!8039) Bool)

(assert (=> b!2153777 (= e!1377518 (inv!32768 (c!341416 (totalInput!3313 cacheFurthestNullable!118))))))

(assert (= (and d!646051 c!341419) b!2153775))

(assert (= (and d!646051 (not c!341419)) b!2153776))

(assert (= (and b!2153776 (not res!928649)) b!2153777))

(declare-fun m!2595402 () Bool)

(assert (=> b!2153775 m!2595402))

(declare-fun m!2595404 () Bool)

(assert (=> b!2153777 m!2595404))

(assert (=> b!2153719 d!646051))

(declare-fun d!646053 () Bool)

(assert (=> d!646053 (= (valid!2239 cacheFurthestNullable!118) (validCacheMapFurthestNullable!161 (cache!3199 cacheFurthestNullable!118) (totalInput!3313 cacheFurthestNullable!118)))))

(declare-fun bs!445749 () Bool)

(assert (= bs!445749 d!646053))

(assert (=> bs!445749 m!2595372))

(assert (=> start!208936 d!646053))

(declare-fun d!646055 () Bool)

(declare-fun res!928652 () Bool)

(declare-fun e!1377521 () Bool)

(assert (=> d!646055 (=> (not res!928652) (not e!1377521))))

(assert (=> d!646055 (= res!928652 ((_ is HashMap!2818) (cache!3199 cacheFurthestNullable!118)))))

(assert (=> d!646055 (= (inv!32765 cacheFurthestNullable!118) e!1377521)))

(declare-fun b!2153780 () Bool)

(assert (=> b!2153780 (= e!1377521 (validCacheMapFurthestNullable!161 (cache!3199 cacheFurthestNullable!118) (totalInput!3313 cacheFurthestNullable!118)))))

(assert (= (and d!646055 res!928652) b!2153780))

(assert (=> b!2153780 m!2595372))

(assert (=> start!208936 d!646055))

(declare-fun d!646057 () Bool)

(assert (=> d!646057 (= (inv!32762 totalInput!880) (isBalanced!2493 (c!341416 totalInput!880)))))

(declare-fun bs!445750 () Bool)

(assert (= bs!445750 d!646057))

(declare-fun m!2595406 () Bool)

(assert (=> bs!445750 m!2595406))

(assert (=> start!208936 d!646057))

(declare-fun d!646059 () Bool)

(assert (=> d!646059 (= (inv!32762 (totalInput!3313 cacheFurthestNullable!118)) (isBalanced!2493 (c!341416 (totalInput!3313 cacheFurthestNullable!118))))))

(declare-fun bs!445751 () Bool)

(assert (= bs!445751 d!646059))

(declare-fun m!2595408 () Bool)

(assert (=> bs!445751 m!2595408))

(assert (=> b!2153718 d!646059))

(declare-fun b!2153791 () Bool)

(declare-fun e!1377529 () Int)

(assert (=> b!2153791 (= e!1377529 (from!2815 (h!30207 stack!12)))))

(declare-fun d!646061 () Bool)

(declare-fun lt!801389 () Int)

(assert (=> d!646061 (and (>= lt!801389 (- 1)) (< lt!801389 lt!801378) (>= lt!801389 (lastNullablePos!502 (h!30207 stack!12))) (or (= lt!801389 (lastNullablePos!502 (h!30207 stack!12))) (>= lt!801389 (from!2815 (h!30207 stack!12)))))))

(declare-fun e!1377530 () Int)

(assert (=> d!646061 (= lt!801389 e!1377530)))

(declare-fun c!341424 () Bool)

(declare-fun e!1377528 () Bool)

(assert (=> d!646061 (= c!341424 e!1377528)))

(declare-fun res!928655 () Bool)

(assert (=> d!646061 (=> res!928655 e!1377528)))

(assert (=> d!646061 (= res!928655 (= (from!2815 (h!30207 stack!12)) lt!801378))))

(assert (=> d!646061 (and (>= (from!2815 (h!30207 stack!12)) 0) (<= (from!2815 (h!30207 stack!12)) lt!801378))))

(assert (=> d!646061 (= (furthestNullablePosition!123 (z!5973 (h!30207 stack!12)) (from!2815 (h!30207 stack!12)) totalInput!880 lt!801378 (lastNullablePos!502 (h!30207 stack!12))) lt!801389)))

(declare-fun b!2153792 () Bool)

(declare-fun lostCauseZipper!138 ((InoxSet Context!2946)) Bool)

(assert (=> b!2153792 (= e!1377528 (lostCauseZipper!138 (z!5973 (h!30207 stack!12))))))

(declare-fun b!2153793 () Bool)

(assert (=> b!2153793 (= e!1377530 (lastNullablePos!502 (h!30207 stack!12)))))

(declare-fun b!2153794 () Bool)

(declare-fun lt!801388 () (InoxSet Context!2946))

(assert (=> b!2153794 (= e!1377530 (furthestNullablePosition!123 lt!801388 (+ (from!2815 (h!30207 stack!12)) 1) totalInput!880 lt!801378 e!1377529))))

(declare-fun derivationStepZipper!105 ((InoxSet Context!2946) C!11952) (InoxSet Context!2946))

(declare-fun apply!6037 (BalanceConc!15840 Int) C!11952)

(assert (=> b!2153794 (= lt!801388 (derivationStepZipper!105 (z!5973 (h!30207 stack!12)) (apply!6037 totalInput!880 (from!2815 (h!30207 stack!12)))))))

(declare-fun c!341425 () Bool)

(assert (=> b!2153794 (= c!341425 (nullableZipper!213 lt!801388))))

(declare-fun b!2153795 () Bool)

(assert (=> b!2153795 (= e!1377529 (lastNullablePos!502 (h!30207 stack!12)))))

(assert (= (and d!646061 (not res!928655)) b!2153792))

(assert (= (and d!646061 c!341424) b!2153793))

(assert (= (and d!646061 (not c!341424)) b!2153794))

(assert (= (and b!2153794 c!341425) b!2153791))

(assert (= (and b!2153794 (not c!341425)) b!2153795))

(declare-fun m!2595410 () Bool)

(assert (=> b!2153792 m!2595410))

(declare-fun m!2595412 () Bool)

(assert (=> b!2153794 m!2595412))

(declare-fun m!2595414 () Bool)

(assert (=> b!2153794 m!2595414))

(assert (=> b!2153794 m!2595414))

(declare-fun m!2595416 () Bool)

(assert (=> b!2153794 m!2595416))

(declare-fun m!2595418 () Bool)

(assert (=> b!2153794 m!2595418))

(assert (=> b!2153726 d!646061))

(declare-fun d!646063 () Bool)

(declare-fun c!341426 () Bool)

(assert (=> d!646063 (= c!341426 ((_ is Node!8039) (c!341416 totalInput!880)))))

(declare-fun e!1377531 () Bool)

(assert (=> d!646063 (= (inv!32763 (c!341416 totalInput!880)) e!1377531)))

(declare-fun b!2153796 () Bool)

(assert (=> b!2153796 (= e!1377531 (inv!32767 (c!341416 totalInput!880)))))

(declare-fun b!2153797 () Bool)

(declare-fun e!1377532 () Bool)

(assert (=> b!2153797 (= e!1377531 e!1377532)))

(declare-fun res!928656 () Bool)

(assert (=> b!2153797 (= res!928656 (not ((_ is Leaf!11758) (c!341416 totalInput!880))))))

(assert (=> b!2153797 (=> res!928656 e!1377532)))

(declare-fun b!2153798 () Bool)

(assert (=> b!2153798 (= e!1377532 (inv!32768 (c!341416 totalInput!880)))))

(assert (= (and d!646063 c!341426) b!2153796))

(assert (= (and d!646063 (not c!341426)) b!2153797))

(assert (= (and b!2153797 (not res!928656)) b!2153798))

(declare-fun m!2595420 () Bool)

(assert (=> b!2153796 m!2595420))

(declare-fun m!2595422 () Bool)

(assert (=> b!2153798 m!2595422))

(assert (=> b!2153734 d!646063))

(declare-fun b!2153804 () Bool)

(assert (=> b!2153804 true))

(declare-fun d!646065 () Bool)

(declare-fun res!928661 () Bool)

(declare-fun e!1377535 () Bool)

(assert (=> d!646065 (=> (not res!928661) (not e!1377535))))

(declare-fun valid!2240 (MutableMap!2818) Bool)

(assert (=> d!646065 (= res!928661 (valid!2240 (cache!3199 cacheFurthestNullable!118)))))

(assert (=> d!646065 (= (validCacheMapFurthestNullable!161 (cache!3199 cacheFurthestNullable!118) (totalInput!3313 cacheFurthestNullable!118)) e!1377535)))

(declare-fun b!2153803 () Bool)

(declare-fun res!928662 () Bool)

(assert (=> b!2153803 (=> (not res!928662) (not e!1377535))))

(declare-fun invariantList!328 (List!24888) Bool)

(declare-datatypes ((ListMap!709 0))(
  ( (ListMap!710 (toList!1118 List!24888)) )
))
(declare-fun map!4996 (MutableMap!2818) ListMap!709)

(assert (=> b!2153803 (= res!928662 (invariantList!328 (toList!1118 (map!4996 (cache!3199 cacheFurthestNullable!118)))))))

(declare-fun lambda!81197 () Int)

(declare-fun forall!5084 (List!24888 Int) Bool)

(assert (=> b!2153804 (= e!1377535 (forall!5084 (toList!1118 (map!4996 (cache!3199 cacheFurthestNullable!118))) lambda!81197))))

(assert (= (and d!646065 res!928661) b!2153803))

(assert (= (and b!2153803 res!928662) b!2153804))

(declare-fun m!2595425 () Bool)

(assert (=> d!646065 m!2595425))

(declare-fun m!2595427 () Bool)

(assert (=> b!2153803 m!2595427))

(declare-fun m!2595429 () Bool)

(assert (=> b!2153803 m!2595429))

(assert (=> b!2153804 m!2595427))

(declare-fun m!2595431 () Bool)

(assert (=> b!2153804 m!2595431))

(assert (=> b!2153717 d!646065))

(declare-fun d!646067 () Bool)

(assert (=> d!646067 (valid!2239 cacheFurthestNullable!118)))

(declare-fun Unit!37922 () Unit!37920)

(assert (=> d!646067 (= (lemmaInvariant!391 cacheFurthestNullable!118) Unit!37922)))

(declare-fun bs!445752 () Bool)

(assert (= bs!445752 d!646067))

(assert (=> bs!445752 m!2595358))

(assert (=> b!2153725 d!646067))

(declare-fun d!646069 () Bool)

(declare-fun c!341427 () Bool)

(assert (=> d!646069 (= c!341427 ((_ is Node!8039) (c!341416 (totalInput!3314 (h!30207 stack!12)))))))

(declare-fun e!1377536 () Bool)

(assert (=> d!646069 (= (inv!32763 (c!341416 (totalInput!3314 (h!30207 stack!12)))) e!1377536)))

(declare-fun b!2153807 () Bool)

(assert (=> b!2153807 (= e!1377536 (inv!32767 (c!341416 (totalInput!3314 (h!30207 stack!12)))))))

(declare-fun b!2153808 () Bool)

(declare-fun e!1377537 () Bool)

(assert (=> b!2153808 (= e!1377536 e!1377537)))

(declare-fun res!928663 () Bool)

(assert (=> b!2153808 (= res!928663 (not ((_ is Leaf!11758) (c!341416 (totalInput!3314 (h!30207 stack!12))))))))

(assert (=> b!2153808 (=> res!928663 e!1377537)))

(declare-fun b!2153809 () Bool)

(assert (=> b!2153809 (= e!1377537 (inv!32768 (c!341416 (totalInput!3314 (h!30207 stack!12)))))))

(assert (= (and d!646069 c!341427) b!2153807))

(assert (= (and d!646069 (not c!341427)) b!2153808))

(assert (= (and b!2153808 (not res!928663)) b!2153809))

(declare-fun m!2595433 () Bool)

(assert (=> b!2153807 m!2595433))

(declare-fun m!2595435 () Bool)

(assert (=> b!2153809 m!2595435))

(assert (=> b!2153733 d!646069))

(declare-fun mapNonEmpty!13736 () Bool)

(declare-fun mapRes!13736 () Bool)

(declare-fun tp!669929 () Bool)

(declare-fun e!1377547 () Bool)

(assert (=> mapNonEmpty!13736 (= mapRes!13736 (and tp!669929 e!1377547))))

(declare-fun mapValue!13736 () List!24888)

(declare-fun mapKey!13736 () (_ BitVec 32))

(declare-fun mapRest!13736 () (Array (_ BitVec 32) List!24888))

(assert (=> mapNonEmpty!13736 (= mapRest!13733 (store mapRest!13736 mapKey!13736 mapValue!13736))))

(declare-fun mapIsEmpty!13736 () Bool)

(assert (=> mapIsEmpty!13736 mapRes!13736))

(declare-fun b!2153820 () Bool)

(declare-fun e!1377548 () Bool)

(declare-fun tp!669931 () Bool)

(assert (=> b!2153820 (= e!1377548 tp!669931)))

(declare-fun b!2153821 () Bool)

(declare-fun setRes!17458 () Bool)

(declare-fun tp!669927 () Bool)

(assert (=> b!2153821 (= e!1377547 (and setRes!17458 tp!669927))))

(declare-fun condSetEmpty!17457 () Bool)

(assert (=> b!2153821 (= condSetEmpty!17457 (= (_1!14583 (_1!14584 (h!30205 mapValue!13736))) ((as const (Array Context!2946 Bool)) false)))))

(declare-fun e!1377549 () Bool)

(declare-fun setNonEmpty!17458 () Bool)

(declare-fun tp!669932 () Bool)

(declare-fun setElem!17457 () Context!2946)

(assert (=> setNonEmpty!17458 (= setRes!17458 (and tp!669932 (inv!32764 setElem!17457) e!1377549))))

(declare-fun setRest!17457 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17458 (= (_1!14583 (_1!14584 (h!30205 mapValue!13736))) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17457 true) setRest!17457))))

(declare-fun condMapEmpty!13736 () Bool)

(declare-fun mapDefault!13736 () List!24888)

(assert (=> mapNonEmpty!13733 (= condMapEmpty!13736 (= mapRest!13733 ((as const (Array (_ BitVec 32) List!24888)) mapDefault!13736)))))

(declare-fun e!1377546 () Bool)

(assert (=> mapNonEmpty!13733 (= tp!669910 (and e!1377546 mapRes!13736))))

(declare-fun setNonEmpty!17457 () Bool)

(declare-fun setElem!17458 () Context!2946)

(declare-fun setRes!17457 () Bool)

(declare-fun tp!669928 () Bool)

(assert (=> setNonEmpty!17457 (= setRes!17457 (and tp!669928 (inv!32764 setElem!17458) e!1377548))))

(declare-fun setRest!17458 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17457 (= (_1!14583 (_1!14584 (h!30205 mapDefault!13736))) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17458 true) setRest!17458))))

(declare-fun b!2153822 () Bool)

(declare-fun tp!669930 () Bool)

(assert (=> b!2153822 (= e!1377549 tp!669930)))

(declare-fun b!2153823 () Bool)

(declare-fun tp!669926 () Bool)

(assert (=> b!2153823 (= e!1377546 (and setRes!17457 tp!669926))))

(declare-fun condSetEmpty!17458 () Bool)

(assert (=> b!2153823 (= condSetEmpty!17458 (= (_1!14583 (_1!14584 (h!30205 mapDefault!13736))) ((as const (Array Context!2946 Bool)) false)))))

(declare-fun setIsEmpty!17457 () Bool)

(assert (=> setIsEmpty!17457 setRes!17458))

(declare-fun setIsEmpty!17458 () Bool)

(assert (=> setIsEmpty!17458 setRes!17457))

(assert (= (and mapNonEmpty!13733 condMapEmpty!13736) mapIsEmpty!13736))

(assert (= (and mapNonEmpty!13733 (not condMapEmpty!13736)) mapNonEmpty!13736))

(assert (= (and b!2153821 condSetEmpty!17457) setIsEmpty!17457))

(assert (= (and b!2153821 (not condSetEmpty!17457)) setNonEmpty!17458))

(assert (= setNonEmpty!17458 b!2153822))

(assert (= (and mapNonEmpty!13736 ((_ is Cons!24804) mapValue!13736)) b!2153821))

(assert (= (and b!2153823 condSetEmpty!17458) setIsEmpty!17458))

(assert (= (and b!2153823 (not condSetEmpty!17458)) setNonEmpty!17457))

(assert (= setNonEmpty!17457 b!2153820))

(assert (= (and mapNonEmpty!13733 ((_ is Cons!24804) mapDefault!13736)) b!2153823))

(declare-fun m!2595437 () Bool)

(assert (=> mapNonEmpty!13736 m!2595437))

(declare-fun m!2595439 () Bool)

(assert (=> setNonEmpty!17458 m!2595439))

(declare-fun m!2595441 () Bool)

(assert (=> setNonEmpty!17457 m!2595441))

(declare-fun b!2153830 () Bool)

(declare-fun e!1377554 () Bool)

(declare-fun setRes!17461 () Bool)

(declare-fun tp!669941 () Bool)

(assert (=> b!2153830 (= e!1377554 (and setRes!17461 tp!669941))))

(declare-fun condSetEmpty!17461 () Bool)

(assert (=> b!2153830 (= condSetEmpty!17461 (= (_1!14583 (_1!14584 (h!30205 mapValue!13733))) ((as const (Array Context!2946 Bool)) false)))))

(declare-fun setIsEmpty!17461 () Bool)

(assert (=> setIsEmpty!17461 setRes!17461))

(declare-fun tp!669939 () Bool)

(declare-fun e!1377555 () Bool)

(declare-fun setNonEmpty!17461 () Bool)

(declare-fun setElem!17461 () Context!2946)

(assert (=> setNonEmpty!17461 (= setRes!17461 (and tp!669939 (inv!32764 setElem!17461) e!1377555))))

(declare-fun setRest!17461 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17461 (= (_1!14583 (_1!14584 (h!30205 mapValue!13733))) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17461 true) setRest!17461))))

(assert (=> mapNonEmpty!13733 (= tp!669904 e!1377554)))

(declare-fun b!2153831 () Bool)

(declare-fun tp!669940 () Bool)

(assert (=> b!2153831 (= e!1377555 tp!669940)))

(assert (= (and b!2153830 condSetEmpty!17461) setIsEmpty!17461))

(assert (= (and b!2153830 (not condSetEmpty!17461)) setNonEmpty!17461))

(assert (= setNonEmpty!17461 b!2153831))

(assert (= (and mapNonEmpty!13733 ((_ is Cons!24804) mapValue!13733)) b!2153830))

(declare-fun m!2595443 () Bool)

(assert (=> setNonEmpty!17461 m!2595443))

(declare-fun condSetEmpty!17464 () Bool)

(assert (=> setNonEmpty!17452 (= condSetEmpty!17464 (= setRest!17452 ((as const (Array Context!2946 Bool)) false)))))

(declare-fun setRes!17464 () Bool)

(assert (=> setNonEmpty!17452 (= tp!669899 setRes!17464)))

(declare-fun setIsEmpty!17464 () Bool)

(assert (=> setIsEmpty!17464 setRes!17464))

(declare-fun setNonEmpty!17464 () Bool)

(declare-fun e!1377558 () Bool)

(declare-fun setElem!17464 () Context!2946)

(declare-fun tp!669947 () Bool)

(assert (=> setNonEmpty!17464 (= setRes!17464 (and tp!669947 (inv!32764 setElem!17464) e!1377558))))

(declare-fun setRest!17464 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17464 (= setRest!17452 ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17464 true) setRest!17464))))

(declare-fun b!2153836 () Bool)

(declare-fun tp!669946 () Bool)

(assert (=> b!2153836 (= e!1377558 tp!669946)))

(assert (= (and setNonEmpty!17452 condSetEmpty!17464) setIsEmpty!17464))

(assert (= (and setNonEmpty!17452 (not condSetEmpty!17464)) setNonEmpty!17464))

(assert (= setNonEmpty!17464 b!2153836))

(declare-fun m!2595445 () Bool)

(assert (=> setNonEmpty!17464 m!2595445))

(declare-fun b!2153847 () Bool)

(declare-fun e!1377567 () Bool)

(declare-fun tp!669957 () Bool)

(assert (=> b!2153847 (= e!1377567 (and (inv!32763 (c!341416 (totalInput!3314 (h!30207 (t!197438 stack!12))))) tp!669957))))

(declare-fun setIsEmpty!17467 () Bool)

(declare-fun setRes!17467 () Bool)

(assert (=> setIsEmpty!17467 setRes!17467))

(declare-fun tp!669959 () Bool)

(declare-fun e!1377570 () Bool)

(declare-fun e!1377569 () Bool)

(declare-fun b!2153848 () Bool)

(assert (=> b!2153848 (= e!1377569 (and (inv!32766 (h!30207 (t!197438 stack!12))) e!1377570 tp!669959))))

(declare-fun b!2153849 () Bool)

(declare-fun e!1377568 () Bool)

(declare-fun tp!669958 () Bool)

(assert (=> b!2153849 (= e!1377568 tp!669958)))

(declare-fun setNonEmpty!17467 () Bool)

(declare-fun tp!669956 () Bool)

(declare-fun setElem!17467 () Context!2946)

(assert (=> setNonEmpty!17467 (= setRes!17467 (and tp!669956 (inv!32764 setElem!17467) e!1377568))))

(declare-fun setRest!17467 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17467 (= (z!5973 (h!30207 (t!197438 stack!12))) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17467 true) setRest!17467))))

(assert (=> b!2153736 (= tp!669900 e!1377569)))

(declare-fun b!2153850 () Bool)

(assert (=> b!2153850 (= e!1377570 (and setRes!17467 (inv!32762 (totalInput!3314 (h!30207 (t!197438 stack!12)))) e!1377567))))

(declare-fun condSetEmpty!17467 () Bool)

(assert (=> b!2153850 (= condSetEmpty!17467 (= (z!5973 (h!30207 (t!197438 stack!12))) ((as const (Array Context!2946 Bool)) false)))))

(assert (= (and b!2153850 condSetEmpty!17467) setIsEmpty!17467))

(assert (= (and b!2153850 (not condSetEmpty!17467)) setNonEmpty!17467))

(assert (= setNonEmpty!17467 b!2153849))

(assert (= b!2153850 b!2153847))

(assert (= b!2153848 b!2153850))

(assert (= (and b!2153736 ((_ is Cons!24806) (t!197438 stack!12))) b!2153848))

(declare-fun m!2595447 () Bool)

(assert (=> b!2153847 m!2595447))

(declare-fun m!2595449 () Bool)

(assert (=> b!2153848 m!2595449))

(declare-fun m!2595451 () Bool)

(assert (=> setNonEmpty!17467 m!2595451))

(declare-fun m!2595453 () Bool)

(assert (=> b!2153850 m!2595453))

(declare-fun b!2153859 () Bool)

(declare-fun tp!669967 () Bool)

(declare-fun e!1377575 () Bool)

(declare-fun tp!669966 () Bool)

(assert (=> b!2153859 (= e!1377575 (and (inv!32763 (left!19081 (c!341416 (totalInput!3313 cacheFurthestNullable!118)))) tp!669967 (inv!32763 (right!19411 (c!341416 (totalInput!3313 cacheFurthestNullable!118)))) tp!669966))))

(declare-fun b!2153861 () Bool)

(declare-fun e!1377576 () Bool)

(declare-fun tp!669968 () Bool)

(assert (=> b!2153861 (= e!1377576 tp!669968)))

(declare-fun b!2153860 () Bool)

(declare-fun inv!32769 (IArray!16083) Bool)

(assert (=> b!2153860 (= e!1377575 (and (inv!32769 (xs!10981 (c!341416 (totalInput!3313 cacheFurthestNullable!118)))) e!1377576))))

(assert (=> b!2153719 (= tp!669903 (and (inv!32763 (c!341416 (totalInput!3313 cacheFurthestNullable!118))) e!1377575))))

(assert (= (and b!2153719 ((_ is Node!8039) (c!341416 (totalInput!3313 cacheFurthestNullable!118)))) b!2153859))

(assert (= b!2153860 b!2153861))

(assert (= (and b!2153719 ((_ is Leaf!11758) (c!341416 (totalInput!3313 cacheFurthestNullable!118)))) b!2153860))

(declare-fun m!2595455 () Bool)

(assert (=> b!2153859 m!2595455))

(declare-fun m!2595457 () Bool)

(assert (=> b!2153859 m!2595457))

(declare-fun m!2595459 () Bool)

(assert (=> b!2153860 m!2595459))

(assert (=> b!2153719 m!2595352))

(declare-fun b!2153862 () Bool)

(declare-fun e!1377577 () Bool)

(declare-fun setRes!17468 () Bool)

(declare-fun tp!669971 () Bool)

(assert (=> b!2153862 (= e!1377577 (and setRes!17468 tp!669971))))

(declare-fun condSetEmpty!17468 () Bool)

(assert (=> b!2153862 (= condSetEmpty!17468 (= (_1!14583 (_1!14584 (h!30205 (zeroValue!3162 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))))) ((as const (Array Context!2946 Bool)) false)))))

(declare-fun setIsEmpty!17468 () Bool)

(assert (=> setIsEmpty!17468 setRes!17468))

(declare-fun tp!669969 () Bool)

(declare-fun setElem!17468 () Context!2946)

(declare-fun setNonEmpty!17468 () Bool)

(declare-fun e!1377578 () Bool)

(assert (=> setNonEmpty!17468 (= setRes!17468 (and tp!669969 (inv!32764 setElem!17468) e!1377578))))

(declare-fun setRest!17468 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17468 (= (_1!14583 (_1!14584 (h!30205 (zeroValue!3162 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17468 true) setRest!17468))))

(assert (=> b!2153730 (= tp!669901 e!1377577)))

(declare-fun b!2153863 () Bool)

(declare-fun tp!669970 () Bool)

(assert (=> b!2153863 (= e!1377578 tp!669970)))

(assert (= (and b!2153862 condSetEmpty!17468) setIsEmpty!17468))

(assert (= (and b!2153862 (not condSetEmpty!17468)) setNonEmpty!17468))

(assert (= setNonEmpty!17468 b!2153863))

(assert (= (and b!2153730 ((_ is Cons!24804) (zeroValue!3162 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118)))))))) b!2153862))

(declare-fun m!2595461 () Bool)

(assert (=> setNonEmpty!17468 m!2595461))

(declare-fun b!2153864 () Bool)

(declare-fun e!1377579 () Bool)

(declare-fun setRes!17469 () Bool)

(declare-fun tp!669974 () Bool)

(assert (=> b!2153864 (= e!1377579 (and setRes!17469 tp!669974))))

(declare-fun condSetEmpty!17469 () Bool)

(assert (=> b!2153864 (= condSetEmpty!17469 (= (_1!14583 (_1!14584 (h!30205 (minValue!3162 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))))) ((as const (Array Context!2946 Bool)) false)))))

(declare-fun setIsEmpty!17469 () Bool)

(assert (=> setIsEmpty!17469 setRes!17469))

(declare-fun e!1377580 () Bool)

(declare-fun tp!669972 () Bool)

(declare-fun setNonEmpty!17469 () Bool)

(declare-fun setElem!17469 () Context!2946)

(assert (=> setNonEmpty!17469 (= setRes!17469 (and tp!669972 (inv!32764 setElem!17469) e!1377580))))

(declare-fun setRest!17469 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17469 (= (_1!14583 (_1!14584 (h!30205 (minValue!3162 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118))))))))) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17469 true) setRest!17469))))

(assert (=> b!2153730 (= tp!669905 e!1377579)))

(declare-fun b!2153865 () Bool)

(declare-fun tp!669973 () Bool)

(assert (=> b!2153865 (= e!1377580 tp!669973)))

(assert (= (and b!2153864 condSetEmpty!17469) setIsEmpty!17469))

(assert (= (and b!2153864 (not condSetEmpty!17469)) setNonEmpty!17469))

(assert (= setNonEmpty!17469 b!2153865))

(assert (= (and b!2153730 ((_ is Cons!24804) (minValue!3162 (v!29271 (underlying!6003 (v!29272 (underlying!6004 (cache!3199 cacheFurthestNullable!118)))))))) b!2153864))

(declare-fun m!2595463 () Bool)

(assert (=> setNonEmpty!17469 m!2595463))

(declare-fun e!1377581 () Bool)

(declare-fun tp!669975 () Bool)

(declare-fun tp!669976 () Bool)

(declare-fun b!2153866 () Bool)

(assert (=> b!2153866 (= e!1377581 (and (inv!32763 (left!19081 (c!341416 totalInput!880))) tp!669976 (inv!32763 (right!19411 (c!341416 totalInput!880))) tp!669975))))

(declare-fun b!2153868 () Bool)

(declare-fun e!1377582 () Bool)

(declare-fun tp!669977 () Bool)

(assert (=> b!2153868 (= e!1377582 tp!669977)))

(declare-fun b!2153867 () Bool)

(assert (=> b!2153867 (= e!1377581 (and (inv!32769 (xs!10981 (c!341416 totalInput!880))) e!1377582))))

(assert (=> b!2153734 (= tp!669902 (and (inv!32763 (c!341416 totalInput!880)) e!1377581))))

(assert (= (and b!2153734 ((_ is Node!8039) (c!341416 totalInput!880))) b!2153866))

(assert (= b!2153867 b!2153868))

(assert (= (and b!2153734 ((_ is Leaf!11758) (c!341416 totalInput!880))) b!2153867))

(declare-fun m!2595465 () Bool)

(assert (=> b!2153866 m!2595465))

(declare-fun m!2595467 () Bool)

(assert (=> b!2153866 m!2595467))

(declare-fun m!2595469 () Bool)

(assert (=> b!2153867 m!2595469))

(assert (=> b!2153734 m!2595344))

(declare-fun b!2153873 () Bool)

(declare-fun e!1377585 () Bool)

(declare-fun tp!669982 () Bool)

(declare-fun tp!669983 () Bool)

(assert (=> b!2153873 (= e!1377585 (and tp!669982 tp!669983))))

(assert (=> b!2153729 (= tp!669906 e!1377585)))

(assert (= (and b!2153729 ((_ is Cons!24803) (exprs!1973 setElem!17452))) b!2153873))

(declare-fun b!2153874 () Bool)

(declare-fun e!1377586 () Bool)

(declare-fun setRes!17470 () Bool)

(declare-fun tp!669986 () Bool)

(assert (=> b!2153874 (= e!1377586 (and setRes!17470 tp!669986))))

(declare-fun condSetEmpty!17470 () Bool)

(assert (=> b!2153874 (= condSetEmpty!17470 (= (_1!14583 (_1!14584 (h!30205 mapDefault!13733))) ((as const (Array Context!2946 Bool)) false)))))

(declare-fun setIsEmpty!17470 () Bool)

(assert (=> setIsEmpty!17470 setRes!17470))

(declare-fun setElem!17470 () Context!2946)

(declare-fun tp!669984 () Bool)

(declare-fun setNonEmpty!17470 () Bool)

(declare-fun e!1377587 () Bool)

(assert (=> setNonEmpty!17470 (= setRes!17470 (and tp!669984 (inv!32764 setElem!17470) e!1377587))))

(declare-fun setRest!17470 () (InoxSet Context!2946))

(assert (=> setNonEmpty!17470 (= (_1!14583 (_1!14584 (h!30205 mapDefault!13733))) ((_ map or) (store ((as const (Array Context!2946 Bool)) false) setElem!17470 true) setRest!17470))))

(assert (=> b!2153738 (= tp!669909 e!1377586)))

(declare-fun b!2153875 () Bool)

(declare-fun tp!669985 () Bool)

(assert (=> b!2153875 (= e!1377587 tp!669985)))

(assert (= (and b!2153874 condSetEmpty!17470) setIsEmpty!17470))

(assert (= (and b!2153874 (not condSetEmpty!17470)) setNonEmpty!17470))

(assert (= setNonEmpty!17470 b!2153875))

(assert (= (and b!2153738 ((_ is Cons!24804) mapDefault!13733)) b!2153874))

(declare-fun m!2595471 () Bool)

(assert (=> setNonEmpty!17470 m!2595471))

(declare-fun e!1377588 () Bool)

(declare-fun tp!669988 () Bool)

(declare-fun tp!669987 () Bool)

(declare-fun b!2153876 () Bool)

(assert (=> b!2153876 (= e!1377588 (and (inv!32763 (left!19081 (c!341416 (totalInput!3314 (h!30207 stack!12))))) tp!669988 (inv!32763 (right!19411 (c!341416 (totalInput!3314 (h!30207 stack!12))))) tp!669987))))

(declare-fun b!2153878 () Bool)

(declare-fun e!1377589 () Bool)

(declare-fun tp!669989 () Bool)

(assert (=> b!2153878 (= e!1377589 tp!669989)))

(declare-fun b!2153877 () Bool)

(assert (=> b!2153877 (= e!1377588 (and (inv!32769 (xs!10981 (c!341416 (totalInput!3314 (h!30207 stack!12))))) e!1377589))))

(assert (=> b!2153733 (= tp!669911 (and (inv!32763 (c!341416 (totalInput!3314 (h!30207 stack!12)))) e!1377588))))

(assert (= (and b!2153733 ((_ is Node!8039) (c!341416 (totalInput!3314 (h!30207 stack!12))))) b!2153876))

(assert (= b!2153877 b!2153878))

(assert (= (and b!2153733 ((_ is Leaf!11758) (c!341416 (totalInput!3314 (h!30207 stack!12))))) b!2153877))

(declare-fun m!2595473 () Bool)

(assert (=> b!2153876 m!2595473))

(declare-fun m!2595475 () Bool)

(assert (=> b!2153876 m!2595475))

(declare-fun m!2595477 () Bool)

(assert (=> b!2153877 m!2595477))

(assert (=> b!2153733 m!2595368))

(declare-fun b_lambda!70909 () Bool)

(assert (= b_lambda!70907 (or b!2153737 b_lambda!70909)))

(declare-fun bs!445753 () Bool)

(declare-fun d!646071 () Bool)

(assert (= bs!445753 (and d!646071 b!2153737)))

(assert (=> bs!445753 (= (dynLambda!11407 lambda!81190 (h!30207 stack!12)) (= (totalInput!3314 (h!30207 stack!12)) totalInput!880))))

(assert (=> b!2153749 d!646071))

(declare-fun b_lambda!70911 () Bool)

(assert (= b_lambda!70905 (or b!2153722 b_lambda!70911)))

(declare-fun bs!445754 () Bool)

(declare-fun d!646073 () Bool)

(assert (= bs!445754 (and d!646073 b!2153722)))

(assert (=> bs!445754 (= (dynLambda!11407 lambda!81191 (h!30207 stack!12)) (= (res!928620 (h!30207 stack!12)) res!17610))))

(assert (=> b!2153747 d!646073))

(check-sat (not b!2153865) (not b!2153733) (not b!2153866) (not b!2153765) (not b!2153867) b_and!173221 (not b!2153822) (not b!2153750) (not b!2153719) (not b!2153830) (not b!2153859) (not b!2153861) (not b_next!64311) (not b!2153875) (not b!2153849) (not setNonEmpty!17467) (not b!2153848) (not setNonEmpty!17470) (not b_next!64309) (not setNonEmpty!17464) b_and!173223 (not b!2153767) (not b!2153809) (not b!2153807) (not b!2153768) (not b!2153804) (not b!2153794) (not b!2153877) (not d!646067) (not b!2153734) (not b!2153823) (not d!646057) (not b!2153868) (not d!646045) (not b!2153820) (not b!2153775) (not d!646059) (not b!2153862) (not mapNonEmpty!13736) (not b!2153878) (not b!2153780) (not b!2153873) (not b!2153850) (not setNonEmpty!17469) (not d!646043) (not b!2153821) (not b!2153831) (not b!2153876) (not d!646035) (not setNonEmpty!17461) (not b!2153796) (not b_lambda!70909) (not d!646053) (not b!2153863) (not b!2153798) (not b!2153777) (not b!2153764) (not b_lambda!70911) (not b!2153860) (not b!2153792) (not d!646065) (not b!2153864) (not b!2153836) (not b!2153748) (not setNonEmpty!17458) (not b!2153847) (not setNonEmpty!17457) (not b!2153803) (not setNonEmpty!17468) (not b!2153874))
(check-sat b_and!173223 b_and!173221 (not b_next!64311) (not b_next!64309))
