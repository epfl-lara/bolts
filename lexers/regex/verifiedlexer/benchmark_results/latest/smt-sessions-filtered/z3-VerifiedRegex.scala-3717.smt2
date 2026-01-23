; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208932 () Bool)

(assert start!208932)

(declare-fun b!2153587 () Bool)

(declare-fun b_free!63597 () Bool)

(declare-fun b_next!64301 () Bool)

(assert (=> b!2153587 (= b_free!63597 (not b_next!64301))))

(declare-fun tp!669830 () Bool)

(declare-fun b_and!173213 () Bool)

(assert (=> b!2153587 (= tp!669830 b_and!173213)))

(declare-fun b!2153591 () Bool)

(declare-fun b_free!63599 () Bool)

(declare-fun b_next!64303 () Bool)

(assert (=> b!2153591 (= b_free!63599 (not b_next!64303))))

(declare-fun tp!669832 () Bool)

(declare-fun b_and!173215 () Bool)

(assert (=> b!2153591 (= tp!669832 b_and!173215)))

(declare-fun b!2153595 () Bool)

(assert (=> b!2153595 true))

(declare-fun bs!445741 () Bool)

(declare-fun b!2153592 () Bool)

(assert (= bs!445741 (and b!2153592 b!2153595)))

(declare-fun lambda!81179 () Int)

(declare-fun lambda!81178 () Int)

(assert (=> bs!445741 (not (= lambda!81179 lambda!81178))))

(assert (=> b!2153592 true))

(declare-fun b!2153578 () Bool)

(declare-fun res!928560 () Bool)

(declare-fun e!1377389 () Bool)

(assert (=> b!2153578 (=> (not res!928560) (not e!1377389))))

(declare-fun totalInputSize!324 () Int)

(declare-fun counter!1 () Int)

(declare-datatypes ((C!11948 0))(
  ( (C!11949 (val!6960 Int)) )
))
(declare-datatypes ((Regex!5901 0))(
  ( (ElementMatch!5901 (c!341411 C!11948)) (Concat!10203 (regOne!12314 Regex!5901) (regTwo!12314 Regex!5901)) (EmptyExpr!5901) (Star!5901 (reg!6230 Regex!5901)) (EmptyLang!5901) (Union!5901 (regOne!12315 Regex!5901) (regTwo!12315 Regex!5901)) )
))
(declare-datatypes ((List!24879 0))(
  ( (Nil!24795) (Cons!24795 (h!30196 Regex!5901) (t!197427 List!24879)) )
))
(declare-datatypes ((List!24880 0))(
  ( (Nil!24796) (Cons!24796 (h!30197 C!11948) (t!197428 List!24880)) )
))
(declare-datatypes ((IArray!16079 0))(
  ( (IArray!16080 (innerList!8097 List!24880)) )
))
(declare-datatypes ((Conc!8037 0))(
  ( (Node!8037 (left!19074 Conc!8037) (right!19404 Conc!8037) (csize!16304 Int) (cheight!8248 Int)) (Leaf!11755 (xs!10979 IArray!16079) (csize!16305 Int)) (Empty!8037) )
))
(declare-datatypes ((Context!2942 0))(
  ( (Context!2943 (exprs!1971 List!24879)) )
))
(declare-datatypes ((BalanceConc!15836 0))(
  ( (BalanceConc!15837 (c!341412 Conc!8037)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!336 0))(
  ( (StackFrame!337 (z!5971 (InoxSet Context!2942)) (from!2813 Int) (lastNullablePos!500 Int) (res!928564 Int) (totalInput!3309 BalanceConc!15836)) )
))
(declare-datatypes ((List!24881 0))(
  ( (Nil!24797) (Cons!24797 (h!30198 StackFrame!336) (t!197429 List!24881)) )
))
(declare-fun stack!12 () List!24881)

(get-info :version)

(assert (=> b!2153578 (= res!928560 (and (not ((_ is Nil!24797) stack!12)) (or (<= totalInputSize!324 1048576) (= (- counter!1 (* 10 (ite (>= counter!1 0) (div counter!1 10) (- (div (- counter!1) 10))))) 0))))))

(declare-fun b!2153579 () Bool)

(declare-fun e!1377396 () Bool)

(declare-fun tp!669829 () Bool)

(declare-fun mapRes!13727 () Bool)

(assert (=> b!2153579 (= e!1377396 (and tp!669829 mapRes!13727))))

(declare-fun condMapEmpty!13727 () Bool)

(declare-datatypes ((tuple3!3686 0))(
  ( (tuple3!3687 (_1!14579 (InoxSet Context!2942)) (_2!14579 Int) (_3!2313 Int)) )
))
(declare-datatypes ((tuple2!24532 0))(
  ( (tuple2!24533 (_1!14580 tuple3!3686) (_2!14580 Int)) )
))
(declare-datatypes ((List!24882 0))(
  ( (Nil!24798) (Cons!24798 (h!30199 tuple2!24532) (t!197430 List!24882)) )
))
(declare-datatypes ((array!9857 0))(
  ( (array!9858 (arr!4400 (Array (_ BitVec 32) (_ BitVec 64))) (size!19376 (_ BitVec 32))) )
))
(declare-datatypes ((array!9859 0))(
  ( (array!9860 (arr!4401 (Array (_ BitVec 32) List!24882)) (size!19377 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5804 0))(
  ( (LongMapFixedSize!5805 (defaultEntry!3267 Int) (mask!7168 (_ BitVec 32)) (extraKeys!3150 (_ BitVec 32)) (zeroValue!3160 List!24882) (minValue!3160 List!24882) (_size!5855 (_ BitVec 32)) (_keys!3199 array!9857) (_values!3182 array!9859) (_vacant!2963 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11433 0))(
  ( (Cell!11434 (v!29267 LongMapFixedSize!5804)) )
))
(declare-datatypes ((Hashable!2816 0))(
  ( (HashableExt!2815 (__x!16882 Int)) )
))
(declare-datatypes ((MutLongMap!2902 0))(
  ( (LongMap!2902 (underlying!5999 Cell!11433)) (MutLongMapExt!2901 (__x!16883 Int)) )
))
(declare-datatypes ((Cell!11435 0))(
  ( (Cell!11436 (v!29268 MutLongMap!2902)) )
))
(declare-datatypes ((MutableMap!2816 0))(
  ( (MutableMapExt!2815 (__x!16884 Int)) (HashMap!2816 (underlying!6000 Cell!11435) (hashF!4739 Hashable!2816) (_size!5856 (_ BitVec 32)) (defaultValue!2978 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!990 0))(
  ( (CacheFurthestNullable!991 (cache!3197 MutableMap!2816) (totalInput!3310 BalanceConc!15836)) )
))
(declare-fun cacheFurthestNullable!118 () CacheFurthestNullable!990)

(declare-fun mapDefault!13727 () List!24882)

(assert (=> b!2153579 (= condMapEmpty!13727 (= (arr!4401 (_values!3182 (v!29267 (underlying!5999 (v!29268 (underlying!6000 (cache!3197 cacheFurthestNullable!118))))))) ((as const (Array (_ BitVec 32) List!24882)) mapDefault!13727)))))

(declare-fun b!2153580 () Bool)

(declare-fun e!1377395 () Bool)

(declare-fun totalInput!880 () BalanceConc!15836)

(declare-fun tp!669831 () Bool)

(declare-fun inv!32752 (Conc!8037) Bool)

(assert (=> b!2153580 (= e!1377395 (and (inv!32752 (c!341412 totalInput!880)) tp!669831))))

(declare-fun b!2153581 () Bool)

(declare-fun e!1377394 () Bool)

(declare-fun e!1377386 () Bool)

(assert (=> b!2153581 (= e!1377394 e!1377386)))

(declare-fun mapIsEmpty!13727 () Bool)

(assert (=> mapIsEmpty!13727 mapRes!13727))

(declare-fun setIsEmpty!17446 () Bool)

(declare-fun setRes!17446 () Bool)

(assert (=> setIsEmpty!17446 setRes!17446))

(declare-fun b!2153582 () Bool)

(declare-fun e!1377392 () Bool)

(declare-fun e!1377384 () Bool)

(assert (=> b!2153582 (= e!1377392 e!1377384)))

(declare-fun res!928562 () Bool)

(assert (=> b!2153582 (=> (not res!928562) (not e!1377384))))

(declare-fun lt!801361 () Int)

(assert (=> b!2153582 (= res!928562 (<= (from!2813 (h!30198 stack!12)) lt!801361))))

(declare-fun size!19378 (BalanceConc!15836) Int)

(assert (=> b!2153582 (= lt!801361 (size!19378 totalInput!880))))

(declare-fun b!2153583 () Bool)

(declare-fun e!1377387 () Bool)

(declare-fun tp!669826 () Bool)

(assert (=> b!2153583 (= e!1377387 (and (inv!32752 (c!341412 (totalInput!3310 cacheFurthestNullable!118))) tp!669826))))

(declare-fun b!2153584 () Bool)

(declare-fun e!1377390 () Bool)

(declare-fun tp!669823 () Bool)

(assert (=> b!2153584 (= e!1377390 (and (inv!32752 (c!341412 (totalInput!3309 (h!30198 stack!12)))) tp!669823))))

(declare-fun b!2153585 () Bool)

(assert (=> b!2153585 (= e!1377384 (not (= totalInput!880 (totalInput!3310 cacheFurthestNullable!118))))))

(declare-fun b!2153586 () Bool)

(declare-fun res!928563 () Bool)

(assert (=> b!2153586 (=> (not res!928563) (not e!1377389))))

(assert (=> b!2153586 (= res!928563 (= (totalInput!3310 cacheFurthestNullable!118) totalInput!880))))

(declare-fun e!1377385 () Bool)

(declare-fun e!1377393 () Bool)

(assert (=> b!2153587 (= e!1377385 (and e!1377393 tp!669830))))

(declare-fun b!2153588 () Bool)

(assert (=> b!2153588 (= e!1377389 e!1377392)))

(declare-fun res!928559 () Bool)

(assert (=> b!2153588 (=> (not res!928559) (not e!1377392))))

(declare-fun res!17610 () Int)

(assert (=> b!2153588 (= res!928559 (and (= (res!928564 (h!30198 stack!12)) res!17610) (>= (from!2813 (h!30198 stack!12)) 0)))))

(declare-datatypes ((Unit!37916 0))(
  ( (Unit!37917) )
))
(declare-fun lt!801362 () Unit!37916)

(declare-fun lemmaInvariant!389 (CacheFurthestNullable!990) Unit!37916)

(assert (=> b!2153588 (= lt!801362 (lemmaInvariant!389 cacheFurthestNullable!118))))

(declare-fun b!2153589 () Bool)

(declare-fun e!1377380 () Bool)

(assert (=> b!2153589 (= e!1377386 e!1377380)))

(declare-fun b!2153590 () Bool)

(declare-fun lt!801360 () MutLongMap!2902)

(assert (=> b!2153590 (= e!1377393 (and e!1377394 ((_ is LongMap!2902) lt!801360)))))

(assert (=> b!2153590 (= lt!801360 (v!29268 (underlying!6000 (cache!3197 cacheFurthestNullable!118))))))

(declare-fun tp!669822 () Bool)

(declare-fun tp!669824 () Bool)

(declare-fun array_inv!3154 (array!9857) Bool)

(declare-fun array_inv!3155 (array!9859) Bool)

(assert (=> b!2153591 (= e!1377380 (and tp!669832 tp!669822 tp!669824 (array_inv!3154 (_keys!3199 (v!29267 (underlying!5999 (v!29268 (underlying!6000 (cache!3197 cacheFurthestNullable!118))))))) (array_inv!3155 (_values!3182 (v!29267 (underlying!5999 (v!29268 (underlying!6000 (cache!3197 cacheFurthestNullable!118))))))) e!1377396))))

(declare-fun res!928557 () Bool)

(assert (=> b!2153592 (=> (not res!928557) (not e!1377389))))

(declare-fun forall!5081 (List!24881 Int) Bool)

(assert (=> b!2153592 (= res!928557 (forall!5081 stack!12 lambda!81179))))

(declare-fun b!2153593 () Bool)

(declare-fun e!1377391 () Bool)

(declare-fun tp!669833 () Bool)

(assert (=> b!2153593 (= e!1377391 tp!669833)))

(declare-fun b!2153594 () Bool)

(declare-fun e!1377388 () Bool)

(declare-fun inv!32753 (BalanceConc!15836) Bool)

(assert (=> b!2153594 (= e!1377388 (and e!1377385 (inv!32753 (totalInput!3310 cacheFurthestNullable!118)) e!1377387))))

(declare-fun mapNonEmpty!13727 () Bool)

(declare-fun tp!669821 () Bool)

(declare-fun tp!669825 () Bool)

(assert (=> mapNonEmpty!13727 (= mapRes!13727 (and tp!669821 tp!669825))))

(declare-fun mapValue!13727 () List!24882)

(declare-fun mapRest!13727 () (Array (_ BitVec 32) List!24882))

(declare-fun mapKey!13727 () (_ BitVec 32))

(assert (=> mapNonEmpty!13727 (= (arr!4401 (_values!3182 (v!29267 (underlying!5999 (v!29268 (underlying!6000 (cache!3197 cacheFurthestNullable!118))))))) (store mapRest!13727 mapKey!13727 mapValue!13727))))

(declare-fun res!928561 () Bool)

(assert (=> b!2153595 (=> (not res!928561) (not e!1377389))))

(assert (=> b!2153595 (= res!928561 (forall!5081 stack!12 lambda!81178))))

(declare-fun e!1377383 () Bool)

(declare-fun e!1377382 () Bool)

(declare-fun b!2153596 () Bool)

(declare-fun tp!669827 () Bool)

(declare-fun inv!32754 (StackFrame!336) Bool)

(assert (=> b!2153596 (= e!1377382 (and (inv!32754 (h!30198 stack!12)) e!1377383 tp!669827))))

(declare-fun b!2153597 () Bool)

(declare-fun res!928556 () Bool)

(assert (=> b!2153597 (=> (not res!928556) (not e!1377384))))

(declare-fun furthestNullablePosition!121 ((InoxSet Context!2942) Int BalanceConc!15836 Int Int) Int)

(assert (=> b!2153597 (= res!928556 (= res!17610 (furthestNullablePosition!121 (z!5971 (h!30198 stack!12)) (from!2813 (h!30198 stack!12)) totalInput!880 lt!801361 (lastNullablePos!500 (h!30198 stack!12)))))))

(declare-fun b!2153598 () Bool)

(assert (=> b!2153598 (= e!1377383 (and setRes!17446 (inv!32753 (totalInput!3309 (h!30198 stack!12))) e!1377390))))

(declare-fun condSetEmpty!17446 () Bool)

(assert (=> b!2153598 (= condSetEmpty!17446 (= (z!5971 (h!30198 stack!12)) ((as const (Array Context!2942 Bool)) false)))))

(declare-fun setNonEmpty!17446 () Bool)

(declare-fun setElem!17446 () Context!2942)

(declare-fun tp!669828 () Bool)

(declare-fun inv!32755 (Context!2942) Bool)

(assert (=> setNonEmpty!17446 (= setRes!17446 (and tp!669828 (inv!32755 setElem!17446) e!1377391))))

(declare-fun setRest!17446 () (InoxSet Context!2942))

(assert (=> setNonEmpty!17446 (= (z!5971 (h!30198 stack!12)) ((_ map or) (store ((as const (Array Context!2942 Bool)) false) setElem!17446 true) setRest!17446))))

(declare-fun res!928558 () Bool)

(assert (=> start!208932 (=> (not res!928558) (not e!1377389))))

(declare-fun valid!2238 (CacheFurthestNullable!990) Bool)

(assert (=> start!208932 (= res!928558 (valid!2238 cacheFurthestNullable!118))))

(assert (=> start!208932 e!1377389))

(declare-fun inv!32756 (CacheFurthestNullable!990) Bool)

(assert (=> start!208932 (and (inv!32756 cacheFurthestNullable!118) e!1377388)))

(assert (=> start!208932 true))

(assert (=> start!208932 (and (inv!32753 totalInput!880) e!1377395)))

(assert (=> start!208932 e!1377382))

(assert (= (and start!208932 res!928558) b!2153586))

(assert (= (and b!2153586 res!928563) b!2153595))

(assert (= (and b!2153595 res!928561) b!2153592))

(assert (= (and b!2153592 res!928557) b!2153578))

(assert (= (and b!2153578 res!928560) b!2153588))

(assert (= (and b!2153588 res!928559) b!2153582))

(assert (= (and b!2153582 res!928562) b!2153597))

(assert (= (and b!2153597 res!928556) b!2153585))

(assert (= (and b!2153579 condMapEmpty!13727) mapIsEmpty!13727))

(assert (= (and b!2153579 (not condMapEmpty!13727)) mapNonEmpty!13727))

(assert (= b!2153591 b!2153579))

(assert (= b!2153589 b!2153591))

(assert (= b!2153581 b!2153589))

(assert (= (and b!2153590 ((_ is LongMap!2902) (v!29268 (underlying!6000 (cache!3197 cacheFurthestNullable!118))))) b!2153581))

(assert (= b!2153587 b!2153590))

(assert (= (and b!2153594 ((_ is HashMap!2816) (cache!3197 cacheFurthestNullable!118))) b!2153587))

(assert (= b!2153594 b!2153583))

(assert (= start!208932 b!2153594))

(assert (= start!208932 b!2153580))

(assert (= (and b!2153598 condSetEmpty!17446) setIsEmpty!17446))

(assert (= (and b!2153598 (not condSetEmpty!17446)) setNonEmpty!17446))

(assert (= setNonEmpty!17446 b!2153593))

(assert (= b!2153598 b!2153584))

(assert (= b!2153596 b!2153598))

(assert (= (and start!208932 ((_ is Cons!24797) stack!12)) b!2153596))

(declare-fun m!2595266 () Bool)

(assert (=> b!2153595 m!2595266))

(declare-fun m!2595268 () Bool)

(assert (=> b!2153591 m!2595268))

(declare-fun m!2595270 () Bool)

(assert (=> b!2153591 m!2595270))

(declare-fun m!2595272 () Bool)

(assert (=> b!2153588 m!2595272))

(declare-fun m!2595274 () Bool)

(assert (=> mapNonEmpty!13727 m!2595274))

(declare-fun m!2595276 () Bool)

(assert (=> b!2153583 m!2595276))

(declare-fun m!2595278 () Bool)

(assert (=> b!2153580 m!2595278))

(declare-fun m!2595280 () Bool)

(assert (=> b!2153584 m!2595280))

(declare-fun m!2595282 () Bool)

(assert (=> b!2153598 m!2595282))

(declare-fun m!2595284 () Bool)

(assert (=> b!2153597 m!2595284))

(declare-fun m!2595286 () Bool)

(assert (=> b!2153582 m!2595286))

(declare-fun m!2595288 () Bool)

(assert (=> b!2153594 m!2595288))

(declare-fun m!2595290 () Bool)

(assert (=> start!208932 m!2595290))

(declare-fun m!2595292 () Bool)

(assert (=> start!208932 m!2595292))

(declare-fun m!2595294 () Bool)

(assert (=> start!208932 m!2595294))

(declare-fun m!2595296 () Bool)

(assert (=> setNonEmpty!17446 m!2595296))

(declare-fun m!2595298 () Bool)

(assert (=> b!2153592 m!2595298))

(declare-fun m!2595300 () Bool)

(assert (=> b!2153596 m!2595300))

(check-sat b_and!173215 (not b!2153580) (not start!208932) (not b!2153588) (not b!2153582) (not b!2153596) (not b!2153583) (not b!2153597) (not b!2153584) (not setNonEmpty!17446) (not b!2153595) (not b!2153592) b_and!173213 (not b!2153598) (not b!2153579) (not b!2153593) (not b_next!64303) (not b!2153594) (not b!2153591) (not mapNonEmpty!13727) (not b_next!64301))
(check-sat b_and!173213 b_and!173215 (not b_next!64301) (not b_next!64303))
