; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714784 () Bool)

(assert start!714784)

(declare-fun b!7323962 () Bool)

(declare-fun e!4385326 () Bool)

(declare-fun tp!2080186 () Bool)

(assert (=> b!7323962 (= e!4385326 tp!2080186)))

(declare-fun b!7323963 () Bool)

(declare-fun e!4385322 () Bool)

(declare-fun e!4385327 () Bool)

(assert (=> b!7323963 (= e!4385322 e!4385327)))

(declare-fun res!2960384 () Bool)

(assert (=> b!7323963 (=> (not res!2960384) (not e!4385327))))

(declare-datatypes ((C!38236 0))(
  ( (C!38237 (val!29478 Int)) )
))
(declare-datatypes ((Regex!18981 0))(
  ( (ElementMatch!18981 (c!1359268 C!38236)) (Concat!27826 (regOne!38474 Regex!18981) (regTwo!38474 Regex!18981)) (EmptyExpr!18981) (Star!18981 (reg!19310 Regex!18981)) (EmptyLang!18981) (Union!18981 (regOne!38475 Regex!18981) (regTwo!38475 Regex!18981)) )
))
(declare-datatypes ((List!71477 0))(
  ( (Nil!71353) (Cons!71353 (h!77801 Regex!18981) (t!385860 List!71477)) )
))
(declare-datatypes ((Context!15842 0))(
  ( (Context!15843 (exprs!8421 List!71477)) )
))
(declare-fun ct1!256 () Context!15842)

(declare-fun nullable!8085 (Regex!18981) Bool)

(assert (=> b!7323963 (= res!2960384 (nullable!8085 (h!77801 (exprs!8421 ct1!256))))))

(declare-fun c!10305 () C!38236)

(declare-fun lt!2605517 () Context!15842)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2605520 () (InoxSet Context!15842))

(declare-fun derivationStepZipperDown!2812 (Regex!18981 Context!15842 C!38236) (InoxSet Context!15842))

(assert (=> b!7323963 (= lt!2605520 (derivationStepZipperDown!2812 (h!77801 (exprs!8421 ct1!256)) lt!2605517 c!10305))))

(declare-fun lt!2605516 () List!71477)

(assert (=> b!7323963 (= lt!2605517 (Context!15843 lt!2605516))))

(declare-fun tail!14670 (List!71477) List!71477)

(assert (=> b!7323963 (= lt!2605516 (tail!14670 (exprs!8421 ct1!256)))))

(declare-fun b!7323964 () Bool)

(declare-fun res!2960390 () Bool)

(assert (=> b!7323964 (=> (not res!2960390) (not e!4385322))))

(declare-fun isEmpty!40899 (List!71477) Bool)

(assert (=> b!7323964 (= res!2960390 (not (isEmpty!40899 (exprs!8421 ct1!256))))))

(declare-fun b!7323965 () Bool)

(declare-fun e!4385325 () Bool)

(declare-fun tp!2080187 () Bool)

(assert (=> b!7323965 (= e!4385325 tp!2080187)))

(declare-fun b!7323966 () Bool)

(declare-fun e!4385329 () Bool)

(assert (=> b!7323966 (= e!4385329 e!4385322)))

(declare-fun res!2960388 () Bool)

(assert (=> b!7323966 (=> (not res!2960388) (not e!4385322))))

(get-info :version)

(assert (=> b!7323966 (= res!2960388 ((_ is Cons!71353) (exprs!8421 ct1!256)))))

(declare-fun lt!2605526 () List!71477)

(declare-fun ct2!352 () Context!15842)

(declare-fun ++!16805 (List!71477 List!71477) List!71477)

(assert (=> b!7323966 (= lt!2605526 (++!16805 (exprs!8421 ct1!256) (exprs!8421 ct2!352)))))

(declare-fun lambda!453848 () Int)

(declare-datatypes ((Unit!164927 0))(
  ( (Unit!164928) )
))
(declare-fun lt!2605525 () Unit!164927)

(declare-fun lemmaConcatPreservesForall!1662 (List!71477 List!71477 Int) Unit!164927)

(assert (=> b!7323966 (= lt!2605525 (lemmaConcatPreservesForall!1662 (exprs!8421 ct1!256) (exprs!8421 ct2!352) lambda!453848))))

(declare-fun res!2960385 () Bool)

(assert (=> start!714784 (=> (not res!2960385) (not e!4385329))))

(declare-fun cWitness!35 () Context!15842)

(declare-fun lt!2605523 () (InoxSet Context!15842))

(assert (=> start!714784 (= res!2960385 (select lt!2605523 cWitness!35))))

(declare-fun derivationStepZipperUp!2661 (Context!15842 C!38236) (InoxSet Context!15842))

(assert (=> start!714784 (= lt!2605523 (derivationStepZipperUp!2661 ct1!256 c!10305))))

(assert (=> start!714784 e!4385329))

(declare-fun tp_is_empty!48207 () Bool)

(assert (=> start!714784 tp_is_empty!48207))

(declare-fun inv!90792 (Context!15842) Bool)

(assert (=> start!714784 (and (inv!90792 cWitness!35) e!4385325)))

(assert (=> start!714784 (and (inv!90792 ct1!256) e!4385326)))

(declare-fun e!4385324 () Bool)

(assert (=> start!714784 (and (inv!90792 ct2!352) e!4385324)))

(declare-fun b!7323967 () Bool)

(declare-fun e!4385321 () Bool)

(declare-fun e!4385323 () Bool)

(assert (=> b!7323967 (= e!4385321 e!4385323)))

(declare-fun res!2960386 () Bool)

(assert (=> b!7323967 (=> res!2960386 e!4385323)))

(declare-fun forall!17835 (List!71477 Int) Bool)

(assert (=> b!7323967 (= res!2960386 (not (forall!17835 (exprs!8421 ct1!256) lambda!453848)))))

(declare-fun lt!2605521 () Unit!164927)

(assert (=> b!7323967 (= lt!2605521 (lemmaConcatPreservesForall!1662 (exprs!8421 cWitness!35) (exprs!8421 ct2!352) lambda!453848))))

(declare-fun b!7323968 () Bool)

(declare-fun e!4385328 () Bool)

(assert (=> b!7323968 (= e!4385328 (not e!4385321))))

(declare-fun res!2960387 () Bool)

(assert (=> b!7323968 (=> res!2960387 e!4385321)))

(declare-fun lt!2605524 () Context!15842)

(assert (=> b!7323968 (= res!2960387 (not (select (derivationStepZipperUp!2661 (Context!15843 lt!2605526) c!10305) lt!2605524)))))

(declare-fun lt!2605515 () Unit!164927)

(assert (=> b!7323968 (= lt!2605515 (lemmaConcatPreservesForall!1662 (exprs!8421 cWitness!35) (exprs!8421 ct2!352) lambda!453848))))

(assert (=> b!7323968 (select (derivationStepZipperUp!2661 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352))) c!10305) lt!2605524)))

(assert (=> b!7323968 (= lt!2605524 (Context!15843 (++!16805 (exprs!8421 cWitness!35) (exprs!8421 ct2!352))))))

(declare-fun lt!2605522 () Unit!164927)

(assert (=> b!7323968 (= lt!2605522 (lemmaConcatPreservesForall!1662 lt!2605516 (exprs!8421 ct2!352) lambda!453848))))

(declare-fun lt!2605518 () Unit!164927)

(assert (=> b!7323968 (= lt!2605518 (lemmaConcatPreservesForall!1662 (exprs!8421 cWitness!35) (exprs!8421 ct2!352) lambda!453848))))

(declare-fun lt!2605514 () Unit!164927)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!52 (Context!15842 Context!15842 Context!15842 C!38236) Unit!164927)

(assert (=> b!7323968 (= lt!2605514 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!52 lt!2605517 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7323969 () Bool)

(declare-fun tp!2080185 () Bool)

(assert (=> b!7323969 (= e!4385324 tp!2080185)))

(declare-fun b!7323970 () Bool)

(assert (=> b!7323970 (= e!4385323 (forall!17835 (exprs!8421 ct2!352) lambda!453848))))

(declare-fun b!7323971 () Bool)

(assert (=> b!7323971 (= e!4385327 e!4385328)))

(declare-fun res!2960389 () Bool)

(assert (=> b!7323971 (=> (not res!2960389) (not e!4385328))))

(declare-fun lt!2605519 () (InoxSet Context!15842))

(assert (=> b!7323971 (= res!2960389 (and (= lt!2605523 ((_ map or) lt!2605520 lt!2605519)) (or (select lt!2605520 cWitness!35) (select lt!2605519 cWitness!35)) (select lt!2605519 cWitness!35)))))

(assert (=> b!7323971 (= lt!2605519 (derivationStepZipperUp!2661 lt!2605517 c!10305))))

(assert (= (and start!714784 res!2960385) b!7323966))

(assert (= (and b!7323966 res!2960388) b!7323964))

(assert (= (and b!7323964 res!2960390) b!7323963))

(assert (= (and b!7323963 res!2960384) b!7323971))

(assert (= (and b!7323971 res!2960389) b!7323968))

(assert (= (and b!7323968 (not res!2960387)) b!7323967))

(assert (= (and b!7323967 (not res!2960386)) b!7323970))

(assert (= start!714784 b!7323965))

(assert (= start!714784 b!7323962))

(assert (= start!714784 b!7323969))

(declare-fun m!7989732 () Bool)

(assert (=> b!7323964 m!7989732))

(declare-fun m!7989734 () Bool)

(assert (=> b!7323968 m!7989734))

(declare-fun m!7989736 () Bool)

(assert (=> b!7323968 m!7989736))

(declare-fun m!7989738 () Bool)

(assert (=> b!7323968 m!7989738))

(declare-fun m!7989740 () Bool)

(assert (=> b!7323968 m!7989740))

(declare-fun m!7989742 () Bool)

(assert (=> b!7323968 m!7989742))

(declare-fun m!7989744 () Bool)

(assert (=> b!7323968 m!7989744))

(declare-fun m!7989746 () Bool)

(assert (=> b!7323968 m!7989746))

(assert (=> b!7323968 m!7989742))

(declare-fun m!7989748 () Bool)

(assert (=> b!7323968 m!7989748))

(declare-fun m!7989750 () Bool)

(assert (=> b!7323968 m!7989750))

(declare-fun m!7989752 () Bool)

(assert (=> b!7323963 m!7989752))

(declare-fun m!7989754 () Bool)

(assert (=> b!7323963 m!7989754))

(declare-fun m!7989756 () Bool)

(assert (=> b!7323963 m!7989756))

(declare-fun m!7989758 () Bool)

(assert (=> b!7323971 m!7989758))

(declare-fun m!7989760 () Bool)

(assert (=> b!7323971 m!7989760))

(declare-fun m!7989762 () Bool)

(assert (=> b!7323971 m!7989762))

(declare-fun m!7989764 () Bool)

(assert (=> b!7323967 m!7989764))

(assert (=> b!7323967 m!7989742))

(declare-fun m!7989766 () Bool)

(assert (=> b!7323970 m!7989766))

(declare-fun m!7989768 () Bool)

(assert (=> b!7323966 m!7989768))

(declare-fun m!7989770 () Bool)

(assert (=> b!7323966 m!7989770))

(declare-fun m!7989772 () Bool)

(assert (=> start!714784 m!7989772))

(declare-fun m!7989774 () Bool)

(assert (=> start!714784 m!7989774))

(declare-fun m!7989776 () Bool)

(assert (=> start!714784 m!7989776))

(declare-fun m!7989778 () Bool)

(assert (=> start!714784 m!7989778))

(declare-fun m!7989780 () Bool)

(assert (=> start!714784 m!7989780))

(check-sat tp_is_empty!48207 (not b!7323966) (not start!714784) (not b!7323971) (not b!7323965) (not b!7323967) (not b!7323963) (not b!7323970) (not b!7323962) (not b!7323968) (not b!7323969) (not b!7323964))
(check-sat)
(get-model)

(declare-fun b!7323980 () Bool)

(declare-fun e!4385334 () List!71477)

(assert (=> b!7323980 (= e!4385334 (exprs!8421 ct2!352))))

(declare-fun b!7323981 () Bool)

(assert (=> b!7323981 (= e!4385334 (Cons!71353 (h!77801 (exprs!8421 ct1!256)) (++!16805 (t!385860 (exprs!8421 ct1!256)) (exprs!8421 ct2!352))))))

(declare-fun d!2274387 () Bool)

(declare-fun e!4385335 () Bool)

(assert (=> d!2274387 e!4385335))

(declare-fun res!2960395 () Bool)

(assert (=> d!2274387 (=> (not res!2960395) (not e!4385335))))

(declare-fun lt!2605529 () List!71477)

(declare-fun content!14927 (List!71477) (InoxSet Regex!18981))

(assert (=> d!2274387 (= res!2960395 (= (content!14927 lt!2605529) ((_ map or) (content!14927 (exprs!8421 ct1!256)) (content!14927 (exprs!8421 ct2!352)))))))

(assert (=> d!2274387 (= lt!2605529 e!4385334)))

(declare-fun c!1359271 () Bool)

(assert (=> d!2274387 (= c!1359271 ((_ is Nil!71353) (exprs!8421 ct1!256)))))

(assert (=> d!2274387 (= (++!16805 (exprs!8421 ct1!256) (exprs!8421 ct2!352)) lt!2605529)))

(declare-fun b!7323982 () Bool)

(declare-fun res!2960396 () Bool)

(assert (=> b!7323982 (=> (not res!2960396) (not e!4385335))))

(declare-fun size!41904 (List!71477) Int)

(assert (=> b!7323982 (= res!2960396 (= (size!41904 lt!2605529) (+ (size!41904 (exprs!8421 ct1!256)) (size!41904 (exprs!8421 ct2!352)))))))

(declare-fun b!7323983 () Bool)

(assert (=> b!7323983 (= e!4385335 (or (not (= (exprs!8421 ct2!352) Nil!71353)) (= lt!2605529 (exprs!8421 ct1!256))))))

(assert (= (and d!2274387 c!1359271) b!7323980))

(assert (= (and d!2274387 (not c!1359271)) b!7323981))

(assert (= (and d!2274387 res!2960395) b!7323982))

(assert (= (and b!7323982 res!2960396) b!7323983))

(declare-fun m!7989782 () Bool)

(assert (=> b!7323981 m!7989782))

(declare-fun m!7989784 () Bool)

(assert (=> d!2274387 m!7989784))

(declare-fun m!7989786 () Bool)

(assert (=> d!2274387 m!7989786))

(declare-fun m!7989788 () Bool)

(assert (=> d!2274387 m!7989788))

(declare-fun m!7989790 () Bool)

(assert (=> b!7323982 m!7989790))

(declare-fun m!7989792 () Bool)

(assert (=> b!7323982 m!7989792))

(declare-fun m!7989794 () Bool)

(assert (=> b!7323982 m!7989794))

(assert (=> b!7323966 d!2274387))

(declare-fun d!2274389 () Bool)

(assert (=> d!2274389 (forall!17835 (++!16805 (exprs!8421 ct1!256) (exprs!8421 ct2!352)) lambda!453848)))

(declare-fun lt!2605532 () Unit!164927)

(declare-fun choose!56951 (List!71477 List!71477 Int) Unit!164927)

(assert (=> d!2274389 (= lt!2605532 (choose!56951 (exprs!8421 ct1!256) (exprs!8421 ct2!352) lambda!453848))))

(assert (=> d!2274389 (forall!17835 (exprs!8421 ct1!256) lambda!453848)))

(assert (=> d!2274389 (= (lemmaConcatPreservesForall!1662 (exprs!8421 ct1!256) (exprs!8421 ct2!352) lambda!453848) lt!2605532)))

(declare-fun bs!1916420 () Bool)

(assert (= bs!1916420 d!2274389))

(assert (=> bs!1916420 m!7989768))

(assert (=> bs!1916420 m!7989768))

(declare-fun m!7989796 () Bool)

(assert (=> bs!1916420 m!7989796))

(declare-fun m!7989798 () Bool)

(assert (=> bs!1916420 m!7989798))

(assert (=> bs!1916420 m!7989764))

(assert (=> b!7323966 d!2274389))

(declare-fun d!2274391 () Bool)

(declare-fun res!2960401 () Bool)

(declare-fun e!4385340 () Bool)

(assert (=> d!2274391 (=> res!2960401 e!4385340)))

(assert (=> d!2274391 (= res!2960401 ((_ is Nil!71353) (exprs!8421 ct1!256)))))

(assert (=> d!2274391 (= (forall!17835 (exprs!8421 ct1!256) lambda!453848) e!4385340)))

(declare-fun b!7323988 () Bool)

(declare-fun e!4385341 () Bool)

(assert (=> b!7323988 (= e!4385340 e!4385341)))

(declare-fun res!2960402 () Bool)

(assert (=> b!7323988 (=> (not res!2960402) (not e!4385341))))

(declare-fun dynLambda!29396 (Int Regex!18981) Bool)

(assert (=> b!7323988 (= res!2960402 (dynLambda!29396 lambda!453848 (h!77801 (exprs!8421 ct1!256))))))

(declare-fun b!7323989 () Bool)

(assert (=> b!7323989 (= e!4385341 (forall!17835 (t!385860 (exprs!8421 ct1!256)) lambda!453848))))

(assert (= (and d!2274391 (not res!2960401)) b!7323988))

(assert (= (and b!7323988 res!2960402) b!7323989))

(declare-fun b_lambda!283251 () Bool)

(assert (=> (not b_lambda!283251) (not b!7323988)))

(declare-fun m!7989800 () Bool)

(assert (=> b!7323988 m!7989800))

(declare-fun m!7989802 () Bool)

(assert (=> b!7323989 m!7989802))

(assert (=> b!7323967 d!2274391))

(declare-fun d!2274393 () Bool)

(assert (=> d!2274393 (forall!17835 (++!16805 (exprs!8421 cWitness!35) (exprs!8421 ct2!352)) lambda!453848)))

(declare-fun lt!2605533 () Unit!164927)

(assert (=> d!2274393 (= lt!2605533 (choose!56951 (exprs!8421 cWitness!35) (exprs!8421 ct2!352) lambda!453848))))

(assert (=> d!2274393 (forall!17835 (exprs!8421 cWitness!35) lambda!453848)))

(assert (=> d!2274393 (= (lemmaConcatPreservesForall!1662 (exprs!8421 cWitness!35) (exprs!8421 ct2!352) lambda!453848) lt!2605533)))

(declare-fun bs!1916421 () Bool)

(assert (= bs!1916421 d!2274393))

(assert (=> bs!1916421 m!7989738))

(assert (=> bs!1916421 m!7989738))

(declare-fun m!7989804 () Bool)

(assert (=> bs!1916421 m!7989804))

(declare-fun m!7989806 () Bool)

(assert (=> bs!1916421 m!7989806))

(declare-fun m!7989808 () Bool)

(assert (=> bs!1916421 m!7989808))

(assert (=> b!7323967 d!2274393))

(declare-fun d!2274395 () Bool)

(declare-fun res!2960403 () Bool)

(declare-fun e!4385342 () Bool)

(assert (=> d!2274395 (=> res!2960403 e!4385342)))

(assert (=> d!2274395 (= res!2960403 ((_ is Nil!71353) (exprs!8421 ct2!352)))))

(assert (=> d!2274395 (= (forall!17835 (exprs!8421 ct2!352) lambda!453848) e!4385342)))

(declare-fun b!7323990 () Bool)

(declare-fun e!4385343 () Bool)

(assert (=> b!7323990 (= e!4385342 e!4385343)))

(declare-fun res!2960404 () Bool)

(assert (=> b!7323990 (=> (not res!2960404) (not e!4385343))))

(assert (=> b!7323990 (= res!2960404 (dynLambda!29396 lambda!453848 (h!77801 (exprs!8421 ct2!352))))))

(declare-fun b!7323991 () Bool)

(assert (=> b!7323991 (= e!4385343 (forall!17835 (t!385860 (exprs!8421 ct2!352)) lambda!453848))))

(assert (= (and d!2274395 (not res!2960403)) b!7323990))

(assert (= (and b!7323990 res!2960404) b!7323991))

(declare-fun b_lambda!283253 () Bool)

(assert (=> (not b_lambda!283253) (not b!7323990)))

(declare-fun m!7989810 () Bool)

(assert (=> b!7323990 m!7989810))

(declare-fun m!7989812 () Bool)

(assert (=> b!7323991 m!7989812))

(assert (=> b!7323970 d!2274395))

(declare-fun b!7324008 () Bool)

(declare-fun call!666228 () (InoxSet Context!15842))

(declare-fun e!4385356 () (InoxSet Context!15842))

(assert (=> b!7324008 (= e!4385356 ((_ map or) call!666228 (derivationStepZipperUp!2661 (Context!15843 (t!385860 (exprs!8421 lt!2605517))) c!10305)))))

(declare-fun b!7324009 () Bool)

(declare-fun e!4385357 () (InoxSet Context!15842))

(assert (=> b!7324009 (= e!4385357 call!666228)))

(declare-fun bm!666223 () Bool)

(assert (=> bm!666223 (= call!666228 (derivationStepZipperDown!2812 (h!77801 (exprs!8421 lt!2605517)) (Context!15843 (t!385860 (exprs!8421 lt!2605517))) c!10305))))

(declare-fun b!7324010 () Bool)

(assert (=> b!7324010 (= e!4385356 e!4385357)))

(declare-fun c!1359277 () Bool)

(assert (=> b!7324010 (= c!1359277 ((_ is Cons!71353) (exprs!8421 lt!2605517)))))

(declare-fun b!7324011 () Bool)

(assert (=> b!7324011 (= e!4385357 ((as const (Array Context!15842 Bool)) false))))

(declare-fun b!7324012 () Bool)

(declare-fun e!4385358 () Bool)

(assert (=> b!7324012 (= e!4385358 (nullable!8085 (h!77801 (exprs!8421 lt!2605517))))))

(declare-fun d!2274397 () Bool)

(declare-fun c!1359276 () Bool)

(assert (=> d!2274397 (= c!1359276 e!4385358)))

(declare-fun res!2960413 () Bool)

(assert (=> d!2274397 (=> (not res!2960413) (not e!4385358))))

(assert (=> d!2274397 (= res!2960413 ((_ is Cons!71353) (exprs!8421 lt!2605517)))))

(assert (=> d!2274397 (= (derivationStepZipperUp!2661 lt!2605517 c!10305) e!4385356)))

(assert (= (and d!2274397 res!2960413) b!7324012))

(assert (= (and d!2274397 c!1359276) b!7324008))

(assert (= (and d!2274397 (not c!1359276)) b!7324010))

(assert (= (and b!7324010 c!1359277) b!7324009))

(assert (= (and b!7324010 (not c!1359277)) b!7324011))

(assert (= (or b!7324008 b!7324009) bm!666223))

(declare-fun m!7989818 () Bool)

(assert (=> b!7324008 m!7989818))

(declare-fun m!7989820 () Bool)

(assert (=> bm!666223 m!7989820))

(declare-fun m!7989822 () Bool)

(assert (=> b!7324012 m!7989822))

(assert (=> b!7323971 d!2274397))

(declare-fun d!2274403 () Bool)

(assert (=> d!2274403 (= (isEmpty!40899 (exprs!8421 ct1!256)) ((_ is Nil!71353) (exprs!8421 ct1!256)))))

(assert (=> b!7323964 d!2274403))

(declare-fun e!4385359 () (InoxSet Context!15842))

(declare-fun b!7324013 () Bool)

(declare-fun call!666229 () (InoxSet Context!15842))

(assert (=> b!7324013 (= e!4385359 ((_ map or) call!666229 (derivationStepZipperUp!2661 (Context!15843 (t!385860 (exprs!8421 ct1!256))) c!10305)))))

(declare-fun b!7324014 () Bool)

(declare-fun e!4385360 () (InoxSet Context!15842))

(assert (=> b!7324014 (= e!4385360 call!666229)))

(declare-fun bm!666224 () Bool)

(assert (=> bm!666224 (= call!666229 (derivationStepZipperDown!2812 (h!77801 (exprs!8421 ct1!256)) (Context!15843 (t!385860 (exprs!8421 ct1!256))) c!10305))))

(declare-fun b!7324015 () Bool)

(assert (=> b!7324015 (= e!4385359 e!4385360)))

(declare-fun c!1359279 () Bool)

(assert (=> b!7324015 (= c!1359279 ((_ is Cons!71353) (exprs!8421 ct1!256)))))

(declare-fun b!7324016 () Bool)

(assert (=> b!7324016 (= e!4385360 ((as const (Array Context!15842 Bool)) false))))

(declare-fun b!7324017 () Bool)

(declare-fun e!4385361 () Bool)

(assert (=> b!7324017 (= e!4385361 (nullable!8085 (h!77801 (exprs!8421 ct1!256))))))

(declare-fun d!2274407 () Bool)

(declare-fun c!1359278 () Bool)

(assert (=> d!2274407 (= c!1359278 e!4385361)))

(declare-fun res!2960414 () Bool)

(assert (=> d!2274407 (=> (not res!2960414) (not e!4385361))))

(assert (=> d!2274407 (= res!2960414 ((_ is Cons!71353) (exprs!8421 ct1!256)))))

(assert (=> d!2274407 (= (derivationStepZipperUp!2661 ct1!256 c!10305) e!4385359)))

(assert (= (and d!2274407 res!2960414) b!7324017))

(assert (= (and d!2274407 c!1359278) b!7324013))

(assert (= (and d!2274407 (not c!1359278)) b!7324015))

(assert (= (and b!7324015 c!1359279) b!7324014))

(assert (= (and b!7324015 (not c!1359279)) b!7324016))

(assert (= (or b!7324013 b!7324014) bm!666224))

(declare-fun m!7989830 () Bool)

(assert (=> b!7324013 m!7989830))

(declare-fun m!7989832 () Bool)

(assert (=> bm!666224 m!7989832))

(assert (=> b!7324017 m!7989752))

(assert (=> start!714784 d!2274407))

(declare-fun bs!1916423 () Bool)

(declare-fun d!2274409 () Bool)

(assert (= bs!1916423 (and d!2274409 b!7323966)))

(declare-fun lambda!453851 () Int)

(assert (=> bs!1916423 (= lambda!453851 lambda!453848)))

(assert (=> d!2274409 (= (inv!90792 cWitness!35) (forall!17835 (exprs!8421 cWitness!35) lambda!453851))))

(declare-fun bs!1916424 () Bool)

(assert (= bs!1916424 d!2274409))

(declare-fun m!7989834 () Bool)

(assert (=> bs!1916424 m!7989834))

(assert (=> start!714784 d!2274409))

(declare-fun bs!1916425 () Bool)

(declare-fun d!2274411 () Bool)

(assert (= bs!1916425 (and d!2274411 b!7323966)))

(declare-fun lambda!453852 () Int)

(assert (=> bs!1916425 (= lambda!453852 lambda!453848)))

(declare-fun bs!1916426 () Bool)

(assert (= bs!1916426 (and d!2274411 d!2274409)))

(assert (=> bs!1916426 (= lambda!453852 lambda!453851)))

(assert (=> d!2274411 (= (inv!90792 ct1!256) (forall!17835 (exprs!8421 ct1!256) lambda!453852))))

(declare-fun bs!1916427 () Bool)

(assert (= bs!1916427 d!2274411))

(declare-fun m!7989836 () Bool)

(assert (=> bs!1916427 m!7989836))

(assert (=> start!714784 d!2274411))

(declare-fun bs!1916428 () Bool)

(declare-fun d!2274413 () Bool)

(assert (= bs!1916428 (and d!2274413 b!7323966)))

(declare-fun lambda!453853 () Int)

(assert (=> bs!1916428 (= lambda!453853 lambda!453848)))

(declare-fun bs!1916429 () Bool)

(assert (= bs!1916429 (and d!2274413 d!2274409)))

(assert (=> bs!1916429 (= lambda!453853 lambda!453851)))

(declare-fun bs!1916430 () Bool)

(assert (= bs!1916430 (and d!2274413 d!2274411)))

(assert (=> bs!1916430 (= lambda!453853 lambda!453852)))

(assert (=> d!2274413 (= (inv!90792 ct2!352) (forall!17835 (exprs!8421 ct2!352) lambda!453853))))

(declare-fun bs!1916431 () Bool)

(assert (= bs!1916431 d!2274413))

(declare-fun m!7989838 () Bool)

(assert (=> bs!1916431 m!7989838))

(assert (=> start!714784 d!2274413))

(declare-fun call!666232 () (InoxSet Context!15842))

(declare-fun b!7324028 () Bool)

(declare-fun e!4385368 () (InoxSet Context!15842))

(assert (=> b!7324028 (= e!4385368 ((_ map or) call!666232 (derivationStepZipperUp!2661 (Context!15843 (t!385860 (exprs!8421 (Context!15843 lt!2605526)))) c!10305)))))

(declare-fun b!7324029 () Bool)

(declare-fun e!4385369 () (InoxSet Context!15842))

(assert (=> b!7324029 (= e!4385369 call!666232)))

(declare-fun bm!666227 () Bool)

(assert (=> bm!666227 (= call!666232 (derivationStepZipperDown!2812 (h!77801 (exprs!8421 (Context!15843 lt!2605526))) (Context!15843 (t!385860 (exprs!8421 (Context!15843 lt!2605526)))) c!10305))))

(declare-fun b!7324030 () Bool)

(assert (=> b!7324030 (= e!4385368 e!4385369)))

(declare-fun c!1359285 () Bool)

(assert (=> b!7324030 (= c!1359285 ((_ is Cons!71353) (exprs!8421 (Context!15843 lt!2605526))))))

(declare-fun b!7324031 () Bool)

(assert (=> b!7324031 (= e!4385369 ((as const (Array Context!15842 Bool)) false))))

(declare-fun b!7324032 () Bool)

(declare-fun e!4385370 () Bool)

(assert (=> b!7324032 (= e!4385370 (nullable!8085 (h!77801 (exprs!8421 (Context!15843 lt!2605526)))))))

(declare-fun d!2274415 () Bool)

(declare-fun c!1359284 () Bool)

(assert (=> d!2274415 (= c!1359284 e!4385370)))

(declare-fun res!2960417 () Bool)

(assert (=> d!2274415 (=> (not res!2960417) (not e!4385370))))

(assert (=> d!2274415 (= res!2960417 ((_ is Cons!71353) (exprs!8421 (Context!15843 lt!2605526))))))

(assert (=> d!2274415 (= (derivationStepZipperUp!2661 (Context!15843 lt!2605526) c!10305) e!4385368)))

(assert (= (and d!2274415 res!2960417) b!7324032))

(assert (= (and d!2274415 c!1359284) b!7324028))

(assert (= (and d!2274415 (not c!1359284)) b!7324030))

(assert (= (and b!7324030 c!1359285) b!7324029))

(assert (= (and b!7324030 (not c!1359285)) b!7324031))

(assert (= (or b!7324028 b!7324029) bm!666227))

(declare-fun m!7989840 () Bool)

(assert (=> b!7324028 m!7989840))

(declare-fun m!7989842 () Bool)

(assert (=> bm!666227 m!7989842))

(declare-fun m!7989844 () Bool)

(assert (=> b!7324032 m!7989844))

(assert (=> b!7323968 d!2274415))

(declare-fun bs!1916441 () Bool)

(declare-fun d!2274417 () Bool)

(assert (= bs!1916441 (and d!2274417 b!7323966)))

(declare-fun lambda!453863 () Int)

(assert (=> bs!1916441 (= lambda!453863 lambda!453848)))

(declare-fun bs!1916442 () Bool)

(assert (= bs!1916442 (and d!2274417 d!2274409)))

(assert (=> bs!1916442 (= lambda!453863 lambda!453851)))

(declare-fun bs!1916443 () Bool)

(assert (= bs!1916443 (and d!2274417 d!2274411)))

(assert (=> bs!1916443 (= lambda!453863 lambda!453852)))

(declare-fun bs!1916444 () Bool)

(assert (= bs!1916444 (and d!2274417 d!2274413)))

(assert (=> bs!1916444 (= lambda!453863 lambda!453853)))

(assert (=> d!2274417 (select (derivationStepZipperUp!2661 (Context!15843 (++!16805 (exprs!8421 lt!2605517) (exprs!8421 ct2!352))) c!10305) (Context!15843 (++!16805 (exprs!8421 cWitness!35) (exprs!8421 ct2!352))))))

(declare-fun lt!2605547 () Unit!164927)

(assert (=> d!2274417 (= lt!2605547 (lemmaConcatPreservesForall!1662 (exprs!8421 lt!2605517) (exprs!8421 ct2!352) lambda!453863))))

(declare-fun lt!2605546 () Unit!164927)

(assert (=> d!2274417 (= lt!2605546 (lemmaConcatPreservesForall!1662 (exprs!8421 cWitness!35) (exprs!8421 ct2!352) lambda!453863))))

(declare-fun lt!2605545 () Unit!164927)

(declare-fun choose!56954 (Context!15842 Context!15842 Context!15842 C!38236) Unit!164927)

(assert (=> d!2274417 (= lt!2605545 (choose!56954 lt!2605517 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2274417 (select (derivationStepZipperUp!2661 lt!2605517 c!10305) cWitness!35)))

(assert (=> d!2274417 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!52 lt!2605517 ct2!352 cWitness!35 c!10305) lt!2605545)))

(declare-fun bs!1916445 () Bool)

(assert (= bs!1916445 d!2274417))

(declare-fun m!7989866 () Bool)

(assert (=> bs!1916445 m!7989866))

(declare-fun m!7989868 () Bool)

(assert (=> bs!1916445 m!7989868))

(declare-fun m!7989870 () Bool)

(assert (=> bs!1916445 m!7989870))

(assert (=> bs!1916445 m!7989738))

(assert (=> bs!1916445 m!7989762))

(declare-fun m!7989872 () Bool)

(assert (=> bs!1916445 m!7989872))

(declare-fun m!7989874 () Bool)

(assert (=> bs!1916445 m!7989874))

(declare-fun m!7989876 () Bool)

(assert (=> bs!1916445 m!7989876))

(declare-fun m!7989878 () Bool)

(assert (=> bs!1916445 m!7989878))

(assert (=> b!7323968 d!2274417))

(assert (=> b!7323968 d!2274393))

(declare-fun b!7324057 () Bool)

(declare-fun call!666235 () (InoxSet Context!15842))

(declare-fun e!4385385 () (InoxSet Context!15842))

(assert (=> b!7324057 (= e!4385385 ((_ map or) call!666235 (derivationStepZipperUp!2661 (Context!15843 (t!385860 (exprs!8421 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352)))))) c!10305)))))

(declare-fun b!7324058 () Bool)

(declare-fun e!4385386 () (InoxSet Context!15842))

(assert (=> b!7324058 (= e!4385386 call!666235)))

(declare-fun bm!666230 () Bool)

(assert (=> bm!666230 (= call!666235 (derivationStepZipperDown!2812 (h!77801 (exprs!8421 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352))))) (Context!15843 (t!385860 (exprs!8421 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352)))))) c!10305))))

(declare-fun b!7324059 () Bool)

(assert (=> b!7324059 (= e!4385385 e!4385386)))

(declare-fun c!1359295 () Bool)

(assert (=> b!7324059 (= c!1359295 ((_ is Cons!71353) (exprs!8421 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352))))))))

(declare-fun b!7324060 () Bool)

(assert (=> b!7324060 (= e!4385386 ((as const (Array Context!15842 Bool)) false))))

(declare-fun b!7324061 () Bool)

(declare-fun e!4385387 () Bool)

(assert (=> b!7324061 (= e!4385387 (nullable!8085 (h!77801 (exprs!8421 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352)))))))))

(declare-fun d!2274431 () Bool)

(declare-fun c!1359294 () Bool)

(assert (=> d!2274431 (= c!1359294 e!4385387)))

(declare-fun res!2960428 () Bool)

(assert (=> d!2274431 (=> (not res!2960428) (not e!4385387))))

(assert (=> d!2274431 (= res!2960428 ((_ is Cons!71353) (exprs!8421 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352))))))))

(assert (=> d!2274431 (= (derivationStepZipperUp!2661 (Context!15843 (++!16805 lt!2605516 (exprs!8421 ct2!352))) c!10305) e!4385385)))

(assert (= (and d!2274431 res!2960428) b!7324061))

(assert (= (and d!2274431 c!1359294) b!7324057))

(assert (= (and d!2274431 (not c!1359294)) b!7324059))

(assert (= (and b!7324059 c!1359295) b!7324058))

(assert (= (and b!7324059 (not c!1359295)) b!7324060))

(assert (= (or b!7324057 b!7324058) bm!666230))

(declare-fun m!7989892 () Bool)

(assert (=> b!7324057 m!7989892))

(declare-fun m!7989896 () Bool)

(assert (=> bm!666230 m!7989896))

(declare-fun m!7989898 () Bool)

(assert (=> b!7324061 m!7989898))

(assert (=> b!7323968 d!2274431))

(declare-fun d!2274435 () Bool)

(assert (=> d!2274435 (forall!17835 (++!16805 lt!2605516 (exprs!8421 ct2!352)) lambda!453848)))

(declare-fun lt!2605550 () Unit!164927)

(assert (=> d!2274435 (= lt!2605550 (choose!56951 lt!2605516 (exprs!8421 ct2!352) lambda!453848))))

(assert (=> d!2274435 (forall!17835 lt!2605516 lambda!453848)))

(assert (=> d!2274435 (= (lemmaConcatPreservesForall!1662 lt!2605516 (exprs!8421 ct2!352) lambda!453848) lt!2605550)))

(declare-fun bs!1916447 () Bool)

(assert (= bs!1916447 d!2274435))

(assert (=> bs!1916447 m!7989736))

(assert (=> bs!1916447 m!7989736))

(declare-fun m!7989904 () Bool)

(assert (=> bs!1916447 m!7989904))

(declare-fun m!7989906 () Bool)

(assert (=> bs!1916447 m!7989906))

(declare-fun m!7989908 () Bool)

(assert (=> bs!1916447 m!7989908))

(assert (=> b!7323968 d!2274435))

(declare-fun b!7324062 () Bool)

(declare-fun e!4385388 () List!71477)

(assert (=> b!7324062 (= e!4385388 (exprs!8421 ct2!352))))

(declare-fun b!7324063 () Bool)

(assert (=> b!7324063 (= e!4385388 (Cons!71353 (h!77801 (exprs!8421 cWitness!35)) (++!16805 (t!385860 (exprs!8421 cWitness!35)) (exprs!8421 ct2!352))))))

(declare-fun d!2274439 () Bool)

(declare-fun e!4385389 () Bool)

(assert (=> d!2274439 e!4385389))

(declare-fun res!2960429 () Bool)

(assert (=> d!2274439 (=> (not res!2960429) (not e!4385389))))

(declare-fun lt!2605551 () List!71477)

(assert (=> d!2274439 (= res!2960429 (= (content!14927 lt!2605551) ((_ map or) (content!14927 (exprs!8421 cWitness!35)) (content!14927 (exprs!8421 ct2!352)))))))

(assert (=> d!2274439 (= lt!2605551 e!4385388)))

(declare-fun c!1359296 () Bool)

(assert (=> d!2274439 (= c!1359296 ((_ is Nil!71353) (exprs!8421 cWitness!35)))))

(assert (=> d!2274439 (= (++!16805 (exprs!8421 cWitness!35) (exprs!8421 ct2!352)) lt!2605551)))

(declare-fun b!7324064 () Bool)

(declare-fun res!2960430 () Bool)

(assert (=> b!7324064 (=> (not res!2960430) (not e!4385389))))

(assert (=> b!7324064 (= res!2960430 (= (size!41904 lt!2605551) (+ (size!41904 (exprs!8421 cWitness!35)) (size!41904 (exprs!8421 ct2!352)))))))

(declare-fun b!7324065 () Bool)

(assert (=> b!7324065 (= e!4385389 (or (not (= (exprs!8421 ct2!352) Nil!71353)) (= lt!2605551 (exprs!8421 cWitness!35))))))

(assert (= (and d!2274439 c!1359296) b!7324062))

(assert (= (and d!2274439 (not c!1359296)) b!7324063))

(assert (= (and d!2274439 res!2960429) b!7324064))

(assert (= (and b!7324064 res!2960430) b!7324065))

(declare-fun m!7989910 () Bool)

(assert (=> b!7324063 m!7989910))

(declare-fun m!7989912 () Bool)

(assert (=> d!2274439 m!7989912))

(declare-fun m!7989914 () Bool)

(assert (=> d!2274439 m!7989914))

(assert (=> d!2274439 m!7989788))

(declare-fun m!7989916 () Bool)

(assert (=> b!7324064 m!7989916))

(declare-fun m!7989918 () Bool)

(assert (=> b!7324064 m!7989918))

(assert (=> b!7324064 m!7989794))

(assert (=> b!7323968 d!2274439))

(declare-fun b!7324066 () Bool)

(declare-fun e!4385390 () List!71477)

(assert (=> b!7324066 (= e!4385390 (exprs!8421 ct2!352))))

(declare-fun b!7324067 () Bool)

(assert (=> b!7324067 (= e!4385390 (Cons!71353 (h!77801 lt!2605516) (++!16805 (t!385860 lt!2605516) (exprs!8421 ct2!352))))))

(declare-fun d!2274443 () Bool)

(declare-fun e!4385391 () Bool)

(assert (=> d!2274443 e!4385391))

(declare-fun res!2960431 () Bool)

(assert (=> d!2274443 (=> (not res!2960431) (not e!4385391))))

(declare-fun lt!2605552 () List!71477)

(assert (=> d!2274443 (= res!2960431 (= (content!14927 lt!2605552) ((_ map or) (content!14927 lt!2605516) (content!14927 (exprs!8421 ct2!352)))))))

(assert (=> d!2274443 (= lt!2605552 e!4385390)))

(declare-fun c!1359297 () Bool)

(assert (=> d!2274443 (= c!1359297 ((_ is Nil!71353) lt!2605516))))

(assert (=> d!2274443 (= (++!16805 lt!2605516 (exprs!8421 ct2!352)) lt!2605552)))

(declare-fun b!7324068 () Bool)

(declare-fun res!2960432 () Bool)

(assert (=> b!7324068 (=> (not res!2960432) (not e!4385391))))

(assert (=> b!7324068 (= res!2960432 (= (size!41904 lt!2605552) (+ (size!41904 lt!2605516) (size!41904 (exprs!8421 ct2!352)))))))

(declare-fun b!7324069 () Bool)

(assert (=> b!7324069 (= e!4385391 (or (not (= (exprs!8421 ct2!352) Nil!71353)) (= lt!2605552 lt!2605516)))))

(assert (= (and d!2274443 c!1359297) b!7324066))

(assert (= (and d!2274443 (not c!1359297)) b!7324067))

(assert (= (and d!2274443 res!2960431) b!7324068))

(assert (= (and b!7324068 res!2960432) b!7324069))

(declare-fun m!7989920 () Bool)

(assert (=> b!7324067 m!7989920))

(declare-fun m!7989922 () Bool)

(assert (=> d!2274443 m!7989922))

(declare-fun m!7989924 () Bool)

(assert (=> d!2274443 m!7989924))

(assert (=> d!2274443 m!7989788))

(declare-fun m!7989926 () Bool)

(assert (=> b!7324068 m!7989926))

(declare-fun m!7989928 () Bool)

(assert (=> b!7324068 m!7989928))

(assert (=> b!7324068 m!7989794))

(assert (=> b!7323968 d!2274443))

(declare-fun d!2274445 () Bool)

(declare-fun nullableFct!3201 (Regex!18981) Bool)

(assert (=> d!2274445 (= (nullable!8085 (h!77801 (exprs!8421 ct1!256))) (nullableFct!3201 (h!77801 (exprs!8421 ct1!256))))))

(declare-fun bs!1916449 () Bool)

(assert (= bs!1916449 d!2274445))

(declare-fun m!7989932 () Bool)

(assert (=> bs!1916449 m!7989932))

(assert (=> b!7323963 d!2274445))

(declare-fun bm!666261 () Bool)

(declare-fun call!666266 () List!71477)

(declare-fun call!666268 () List!71477)

(assert (=> bm!666261 (= call!666266 call!666268)))

(declare-fun d!2274449 () Bool)

(declare-fun c!1359324 () Bool)

(assert (=> d!2274449 (= c!1359324 (and ((_ is ElementMatch!18981) (h!77801 (exprs!8421 ct1!256))) (= (c!1359268 (h!77801 (exprs!8421 ct1!256))) c!10305)))))

(declare-fun e!4385426 () (InoxSet Context!15842))

(assert (=> d!2274449 (= (derivationStepZipperDown!2812 (h!77801 (exprs!8421 ct1!256)) lt!2605517 c!10305) e!4385426)))

(declare-fun bm!666262 () Bool)

(declare-fun call!666269 () (InoxSet Context!15842))

(declare-fun call!666267 () (InoxSet Context!15842))

(assert (=> bm!666262 (= call!666269 call!666267)))

(declare-fun c!1359327 () Bool)

(declare-fun c!1359326 () Bool)

(declare-fun bm!666263 () Bool)

(declare-fun $colon$colon!3017 (List!71477 Regex!18981) List!71477)

(assert (=> bm!666263 (= call!666268 ($colon$colon!3017 (exprs!8421 lt!2605517) (ite (or c!1359326 c!1359327) (regTwo!38474 (h!77801 (exprs!8421 ct1!256))) (h!77801 (exprs!8421 ct1!256)))))))

(declare-fun b!7324125 () Bool)

(declare-fun e!4385423 () (InoxSet Context!15842))

(declare-fun call!666270 () (InoxSet Context!15842))

(assert (=> b!7324125 (= e!4385423 call!666270)))

(declare-fun b!7324126 () Bool)

(declare-fun e!4385422 () (InoxSet Context!15842))

(declare-fun call!666271 () (InoxSet Context!15842))

(assert (=> b!7324126 (= e!4385422 ((_ map or) call!666271 call!666267))))

(declare-fun b!7324127 () Bool)

(assert (=> b!7324127 (= e!4385426 (store ((as const (Array Context!15842 Bool)) false) lt!2605517 true))))

(declare-fun bm!666264 () Bool)

(declare-fun c!1359323 () Bool)

(assert (=> bm!666264 (= call!666271 (derivationStepZipperDown!2812 (ite c!1359323 (regOne!38475 (h!77801 (exprs!8421 ct1!256))) (regOne!38474 (h!77801 (exprs!8421 ct1!256)))) (ite c!1359323 lt!2605517 (Context!15843 call!666268)) c!10305))))

(declare-fun b!7324128 () Bool)

(assert (=> b!7324128 (= e!4385423 ((as const (Array Context!15842 Bool)) false))))

(declare-fun b!7324129 () Bool)

(declare-fun e!4385427 () (InoxSet Context!15842))

(assert (=> b!7324129 (= e!4385427 call!666270)))

(declare-fun b!7324130 () Bool)

(declare-fun e!4385424 () Bool)

(assert (=> b!7324130 (= e!4385424 (nullable!8085 (regOne!38474 (h!77801 (exprs!8421 ct1!256)))))))

(declare-fun b!7324131 () Bool)

(declare-fun c!1359325 () Bool)

(assert (=> b!7324131 (= c!1359325 ((_ is Star!18981) (h!77801 (exprs!8421 ct1!256))))))

(assert (=> b!7324131 (= e!4385427 e!4385423)))

(declare-fun b!7324132 () Bool)

(assert (=> b!7324132 (= c!1359326 e!4385424)))

(declare-fun res!2960438 () Bool)

(assert (=> b!7324132 (=> (not res!2960438) (not e!4385424))))

(assert (=> b!7324132 (= res!2960438 ((_ is Concat!27826) (h!77801 (exprs!8421 ct1!256))))))

(declare-fun e!4385425 () (InoxSet Context!15842))

(assert (=> b!7324132 (= e!4385422 e!4385425)))

(declare-fun bm!666265 () Bool)

(assert (=> bm!666265 (= call!666270 call!666269)))

(declare-fun b!7324133 () Bool)

(assert (=> b!7324133 (= e!4385426 e!4385422)))

(assert (=> b!7324133 (= c!1359323 ((_ is Union!18981) (h!77801 (exprs!8421 ct1!256))))))

(declare-fun b!7324134 () Bool)

(assert (=> b!7324134 (= e!4385425 ((_ map or) call!666271 call!666269))))

(declare-fun bm!666266 () Bool)

(assert (=> bm!666266 (= call!666267 (derivationStepZipperDown!2812 (ite c!1359323 (regTwo!38475 (h!77801 (exprs!8421 ct1!256))) (ite c!1359326 (regTwo!38474 (h!77801 (exprs!8421 ct1!256))) (ite c!1359327 (regOne!38474 (h!77801 (exprs!8421 ct1!256))) (reg!19310 (h!77801 (exprs!8421 ct1!256)))))) (ite (or c!1359323 c!1359326) lt!2605517 (Context!15843 call!666266)) c!10305))))

(declare-fun b!7324135 () Bool)

(assert (=> b!7324135 (= e!4385425 e!4385427)))

(assert (=> b!7324135 (= c!1359327 ((_ is Concat!27826) (h!77801 (exprs!8421 ct1!256))))))

(assert (= (and d!2274449 c!1359324) b!7324127))

(assert (= (and d!2274449 (not c!1359324)) b!7324133))

(assert (= (and b!7324133 c!1359323) b!7324126))

(assert (= (and b!7324133 (not c!1359323)) b!7324132))

(assert (= (and b!7324132 res!2960438) b!7324130))

(assert (= (and b!7324132 c!1359326) b!7324134))

(assert (= (and b!7324132 (not c!1359326)) b!7324135))

(assert (= (and b!7324135 c!1359327) b!7324129))

(assert (= (and b!7324135 (not c!1359327)) b!7324131))

(assert (= (and b!7324131 c!1359325) b!7324125))

(assert (= (and b!7324131 (not c!1359325)) b!7324128))

(assert (= (or b!7324129 b!7324125) bm!666261))

(assert (= (or b!7324129 b!7324125) bm!666265))

(assert (= (or b!7324134 bm!666265) bm!666262))

(assert (= (or b!7324134 bm!666261) bm!666263))

(assert (= (or b!7324126 bm!666262) bm!666266))

(assert (= (or b!7324126 b!7324134) bm!666264))

(declare-fun m!7989944 () Bool)

(assert (=> bm!666266 m!7989944))

(declare-fun m!7989946 () Bool)

(assert (=> bm!666264 m!7989946))

(declare-fun m!7989948 () Bool)

(assert (=> b!7324130 m!7989948))

(declare-fun m!7989950 () Bool)

(assert (=> bm!666263 m!7989950))

(declare-fun m!7989952 () Bool)

(assert (=> b!7324127 m!7989952))

(assert (=> b!7323963 d!2274449))

(declare-fun d!2274455 () Bool)

(assert (=> d!2274455 (= (tail!14670 (exprs!8421 ct1!256)) (t!385860 (exprs!8421 ct1!256)))))

(assert (=> b!7323963 d!2274455))

(declare-fun b!7324140 () Bool)

(declare-fun e!4385430 () Bool)

(declare-fun tp!2080192 () Bool)

(declare-fun tp!2080193 () Bool)

(assert (=> b!7324140 (= e!4385430 (and tp!2080192 tp!2080193))))

(assert (=> b!7323965 (= tp!2080187 e!4385430)))

(assert (= (and b!7323965 ((_ is Cons!71353) (exprs!8421 cWitness!35))) b!7324140))

(declare-fun b!7324141 () Bool)

(declare-fun e!4385431 () Bool)

(declare-fun tp!2080194 () Bool)

(declare-fun tp!2080195 () Bool)

(assert (=> b!7324141 (= e!4385431 (and tp!2080194 tp!2080195))))

(assert (=> b!7323969 (= tp!2080185 e!4385431)))

(assert (= (and b!7323969 ((_ is Cons!71353) (exprs!8421 ct2!352))) b!7324141))

(declare-fun b!7324142 () Bool)

(declare-fun e!4385432 () Bool)

(declare-fun tp!2080196 () Bool)

(declare-fun tp!2080197 () Bool)

(assert (=> b!7324142 (= e!4385432 (and tp!2080196 tp!2080197))))

(assert (=> b!7323962 (= tp!2080186 e!4385432)))

(assert (= (and b!7323962 ((_ is Cons!71353) (exprs!8421 ct1!256))) b!7324142))

(declare-fun b_lambda!283259 () Bool)

(assert (= b_lambda!283253 (or b!7323966 b_lambda!283259)))

(declare-fun bs!1916450 () Bool)

(declare-fun d!2274457 () Bool)

(assert (= bs!1916450 (and d!2274457 b!7323966)))

(declare-fun validRegex!9625 (Regex!18981) Bool)

(assert (=> bs!1916450 (= (dynLambda!29396 lambda!453848 (h!77801 (exprs!8421 ct2!352))) (validRegex!9625 (h!77801 (exprs!8421 ct2!352))))))

(declare-fun m!7989954 () Bool)

(assert (=> bs!1916450 m!7989954))

(assert (=> b!7323990 d!2274457))

(declare-fun b_lambda!283261 () Bool)

(assert (= b_lambda!283251 (or b!7323966 b_lambda!283261)))

(declare-fun bs!1916451 () Bool)

(declare-fun d!2274459 () Bool)

(assert (= bs!1916451 (and d!2274459 b!7323966)))

(assert (=> bs!1916451 (= (dynLambda!29396 lambda!453848 (h!77801 (exprs!8421 ct1!256))) (validRegex!9625 (h!77801 (exprs!8421 ct1!256))))))

(declare-fun m!7989956 () Bool)

(assert (=> bs!1916451 m!7989956))

(assert (=> b!7323988 d!2274459))

(check-sat tp_is_empty!48207 (not bm!666263) (not d!2274445) (not b_lambda!283259) (not b_lambda!283261) (not b!7324142) (not d!2274435) (not b!7323989) (not bm!666230) (not d!2274439) (not d!2274393) (not b!7323981) (not b!7324013) (not d!2274409) (not bm!666266) (not bm!666227) (not b!7324141) (not bm!666223) (not b!7324140) (not b!7324068) (not d!2274389) (not b!7324012) (not bm!666224) (not b!7324067) (not b!7323991) (not bs!1916451) (not b!7324028) (not bs!1916450) (not d!2274387) (not d!2274413) (not d!2274417) (not d!2274443) (not b!7324061) (not b!7324063) (not b!7324064) (not b!7323982) (not b!7324057) (not bm!666264) (not b!7324130) (not d!2274411) (not b!7324032) (not b!7324017) (not b!7324008))
(check-sat)
