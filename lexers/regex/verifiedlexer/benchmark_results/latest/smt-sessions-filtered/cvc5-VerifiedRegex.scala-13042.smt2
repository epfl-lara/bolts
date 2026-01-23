; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714608 () Bool)

(assert start!714608)

(declare-fun b!7322942 () Bool)

(declare-fun e!4384640 () Bool)

(declare-fun e!4384641 () Bool)

(assert (=> b!7322942 (= e!4384640 e!4384641)))

(declare-fun res!2960010 () Bool)

(assert (=> b!7322942 (=> (not res!2960010) (not e!4384641))))

(declare-datatypes ((C!38218 0))(
  ( (C!38219 (val!29469 Int)) )
))
(declare-datatypes ((Regex!18972 0))(
  ( (ElementMatch!18972 (c!1358999 C!38218)) (Concat!27817 (regOne!38456 Regex!18972) (regTwo!38456 Regex!18972)) (EmptyExpr!18972) (Star!18972 (reg!19301 Regex!18972)) (EmptyLang!18972) (Union!18972 (regOne!38457 Regex!18972) (regTwo!38457 Regex!18972)) )
))
(declare-datatypes ((List!71468 0))(
  ( (Nil!71344) (Cons!71344 (h!77792 Regex!18972) (t!385851 List!71468)) )
))
(declare-datatypes ((Context!15824 0))(
  ( (Context!15825 (exprs!8412 List!71468)) )
))
(declare-fun ct1!256 () Context!15824)

(assert (=> b!7322942 (= res!2960010 (is-Cons!71344 (exprs!8412 ct1!256)))))

(declare-fun lt!2605042 () List!71468)

(declare-fun ct2!352 () Context!15824)

(declare-fun ++!16796 (List!71468 List!71468) List!71468)

(assert (=> b!7322942 (= lt!2605042 (++!16796 (exprs!8412 ct1!256) (exprs!8412 ct2!352)))))

(declare-fun lambda!453663 () Int)

(declare-datatypes ((Unit!164909 0))(
  ( (Unit!164910) )
))
(declare-fun lt!2605035 () Unit!164909)

(declare-fun lemmaConcatPreservesForall!1653 (List!71468 List!71468 Int) Unit!164909)

(assert (=> b!7322942 (= lt!2605035 (lemmaConcatPreservesForall!1653 (exprs!8412 ct1!256) (exprs!8412 ct2!352) lambda!453663))))

(declare-fun b!7322943 () Bool)

(declare-fun e!4384639 () Bool)

(declare-fun forall!17826 (List!71468 Int) Bool)

(assert (=> b!7322943 (= e!4384639 (forall!17826 (exprs!8412 ct2!352) lambda!453663))))

(declare-fun res!2960005 () Bool)

(assert (=> start!714608 (=> (not res!2960005) (not e!4384640))))

(declare-fun cWitness!35 () Context!15824)

(declare-fun lt!2605040 () (Set Context!15824))

(assert (=> start!714608 (= res!2960005 (set.member cWitness!35 lt!2605040))))

(declare-fun c!10305 () C!38218)

(declare-fun derivationStepZipperUp!2652 (Context!15824 C!38218) (Set Context!15824))

(assert (=> start!714608 (= lt!2605040 (derivationStepZipperUp!2652 ct1!256 c!10305))))

(assert (=> start!714608 e!4384640))

(declare-fun tp_is_empty!48189 () Bool)

(assert (=> start!714608 tp_is_empty!48189))

(declare-fun e!4384643 () Bool)

(declare-fun inv!90771 (Context!15824) Bool)

(assert (=> start!714608 (and (inv!90771 cWitness!35) e!4384643)))

(declare-fun e!4384636 () Bool)

(assert (=> start!714608 (and (inv!90771 ct1!256) e!4384636)))

(declare-fun e!4384642 () Bool)

(assert (=> start!714608 (and (inv!90771 ct2!352) e!4384642)))

(declare-fun b!7322944 () Bool)

(declare-fun e!4384637 () Bool)

(assert (=> b!7322944 (= e!4384637 (not e!4384639))))

(declare-fun res!2960007 () Bool)

(assert (=> b!7322944 (=> res!2960007 e!4384639)))

(assert (=> b!7322944 (= res!2960007 (not (forall!17826 (exprs!8412 cWitness!35) lambda!453663)))))

(declare-fun lt!2605044 () List!71468)

(assert (=> b!7322944 (set.member (Context!15825 (++!16796 (exprs!8412 cWitness!35) (exprs!8412 ct2!352))) (derivationStepZipperUp!2652 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352))) c!10305))))

(declare-fun lt!2605041 () Unit!164909)

(assert (=> b!7322944 (= lt!2605041 (lemmaConcatPreservesForall!1653 lt!2605044 (exprs!8412 ct2!352) lambda!453663))))

(declare-fun lt!2605039 () Unit!164909)

(assert (=> b!7322944 (= lt!2605039 (lemmaConcatPreservesForall!1653 (exprs!8412 cWitness!35) (exprs!8412 ct2!352) lambda!453663))))

(declare-fun lt!2605043 () Unit!164909)

(declare-fun lt!2605037 () Context!15824)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!43 (Context!15824 Context!15824 Context!15824 C!38218) Unit!164909)

(assert (=> b!7322944 (= lt!2605043 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!43 lt!2605037 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7322945 () Bool)

(declare-fun e!4384638 () Bool)

(assert (=> b!7322945 (= e!4384638 e!4384637)))

(declare-fun res!2960009 () Bool)

(assert (=> b!7322945 (=> (not res!2960009) (not e!4384637))))

(declare-fun lt!2605038 () (Set Context!15824))

(declare-fun lt!2605036 () (Set Context!15824))

(assert (=> b!7322945 (= res!2960009 (and (= lt!2605040 (set.union lt!2605036 lt!2605038)) (or (set.member cWitness!35 lt!2605036) (set.member cWitness!35 lt!2605038)) (set.member cWitness!35 lt!2605038)))))

(assert (=> b!7322945 (= lt!2605038 (derivationStepZipperUp!2652 lt!2605037 c!10305))))

(declare-fun b!7322946 () Bool)

(declare-fun tp!2080026 () Bool)

(assert (=> b!7322946 (= e!4384642 tp!2080026)))

(declare-fun b!7322947 () Bool)

(declare-fun res!2960008 () Bool)

(assert (=> b!7322947 (=> (not res!2960008) (not e!4384641))))

(declare-fun isEmpty!40890 (List!71468) Bool)

(assert (=> b!7322947 (= res!2960008 (not (isEmpty!40890 (exprs!8412 ct1!256))))))

(declare-fun b!7322948 () Bool)

(assert (=> b!7322948 (= e!4384641 e!4384638)))

(declare-fun res!2960006 () Bool)

(assert (=> b!7322948 (=> (not res!2960006) (not e!4384638))))

(declare-fun nullable!8076 (Regex!18972) Bool)

(assert (=> b!7322948 (= res!2960006 (nullable!8076 (h!77792 (exprs!8412 ct1!256))))))

(declare-fun derivationStepZipperDown!2803 (Regex!18972 Context!15824 C!38218) (Set Context!15824))

(assert (=> b!7322948 (= lt!2605036 (derivationStepZipperDown!2803 (h!77792 (exprs!8412 ct1!256)) lt!2605037 c!10305))))

(assert (=> b!7322948 (= lt!2605037 (Context!15825 lt!2605044))))

(declare-fun tail!14661 (List!71468) List!71468)

(assert (=> b!7322948 (= lt!2605044 (tail!14661 (exprs!8412 ct1!256)))))

(declare-fun b!7322949 () Bool)

(declare-fun tp!2080024 () Bool)

(assert (=> b!7322949 (= e!4384643 tp!2080024)))

(declare-fun b!7322950 () Bool)

(declare-fun tp!2080025 () Bool)

(assert (=> b!7322950 (= e!4384636 tp!2080025)))

(assert (= (and start!714608 res!2960005) b!7322942))

(assert (= (and b!7322942 res!2960010) b!7322947))

(assert (= (and b!7322947 res!2960008) b!7322948))

(assert (= (and b!7322948 res!2960006) b!7322945))

(assert (= (and b!7322945 res!2960009) b!7322944))

(assert (= (and b!7322944 (not res!2960007)) b!7322943))

(assert (= start!714608 b!7322949))

(assert (= start!714608 b!7322950))

(assert (= start!714608 b!7322946))

(declare-fun m!7988420 () Bool)

(assert (=> b!7322945 m!7988420))

(declare-fun m!7988422 () Bool)

(assert (=> b!7322945 m!7988422))

(declare-fun m!7988424 () Bool)

(assert (=> b!7322945 m!7988424))

(declare-fun m!7988426 () Bool)

(assert (=> b!7322944 m!7988426))

(declare-fun m!7988428 () Bool)

(assert (=> b!7322944 m!7988428))

(declare-fun m!7988430 () Bool)

(assert (=> b!7322944 m!7988430))

(declare-fun m!7988432 () Bool)

(assert (=> b!7322944 m!7988432))

(declare-fun m!7988434 () Bool)

(assert (=> b!7322944 m!7988434))

(declare-fun m!7988436 () Bool)

(assert (=> b!7322944 m!7988436))

(declare-fun m!7988438 () Bool)

(assert (=> b!7322944 m!7988438))

(declare-fun m!7988440 () Bool)

(assert (=> b!7322944 m!7988440))

(declare-fun m!7988442 () Bool)

(assert (=> b!7322947 m!7988442))

(declare-fun m!7988444 () Bool)

(assert (=> b!7322942 m!7988444))

(declare-fun m!7988446 () Bool)

(assert (=> b!7322942 m!7988446))

(declare-fun m!7988448 () Bool)

(assert (=> b!7322943 m!7988448))

(declare-fun m!7988450 () Bool)

(assert (=> start!714608 m!7988450))

(declare-fun m!7988452 () Bool)

(assert (=> start!714608 m!7988452))

(declare-fun m!7988454 () Bool)

(assert (=> start!714608 m!7988454))

(declare-fun m!7988456 () Bool)

(assert (=> start!714608 m!7988456))

(declare-fun m!7988458 () Bool)

(assert (=> start!714608 m!7988458))

(declare-fun m!7988460 () Bool)

(assert (=> b!7322948 m!7988460))

(declare-fun m!7988462 () Bool)

(assert (=> b!7322948 m!7988462))

(declare-fun m!7988464 () Bool)

(assert (=> b!7322948 m!7988464))

(push 1)

(assert (not b!7322944))

(assert (not b!7322949))

(assert (not b!7322947))

(assert (not b!7322950))

(assert (not b!7322945))

(assert tp_is_empty!48189)

(assert (not b!7322943))

(assert (not b!7322948))

(assert (not b!7322946))

(assert (not b!7322942))

(assert (not start!714608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2274057 () Bool)

(assert (=> d!2274057 (= (isEmpty!40890 (exprs!8412 ct1!256)) (is-Nil!71344 (exprs!8412 ct1!256)))))

(assert (=> b!7322947 d!2274057))

(declare-fun b!7322987 () Bool)

(declare-fun e!4384672 () List!71468)

(assert (=> b!7322987 (= e!4384672 (Cons!71344 (h!77792 (exprs!8412 ct1!256)) (++!16796 (t!385851 (exprs!8412 ct1!256)) (exprs!8412 ct2!352))))))

(declare-fun b!7322988 () Bool)

(declare-fun res!2960033 () Bool)

(declare-fun e!4384673 () Bool)

(assert (=> b!7322988 (=> (not res!2960033) (not e!4384673))))

(declare-fun lt!2605077 () List!71468)

(declare-fun size!41899 (List!71468) Int)

(assert (=> b!7322988 (= res!2960033 (= (size!41899 lt!2605077) (+ (size!41899 (exprs!8412 ct1!256)) (size!41899 (exprs!8412 ct2!352)))))))

(declare-fun b!7322986 () Bool)

(assert (=> b!7322986 (= e!4384672 (exprs!8412 ct2!352))))

(declare-fun b!7322989 () Bool)

(assert (=> b!7322989 (= e!4384673 (or (not (= (exprs!8412 ct2!352) Nil!71344)) (= lt!2605077 (exprs!8412 ct1!256))))))

(declare-fun d!2274059 () Bool)

(assert (=> d!2274059 e!4384673))

(declare-fun res!2960034 () Bool)

(assert (=> d!2274059 (=> (not res!2960034) (not e!4384673))))

(declare-fun content!14922 (List!71468) (Set Regex!18972))

(assert (=> d!2274059 (= res!2960034 (= (content!14922 lt!2605077) (set.union (content!14922 (exprs!8412 ct1!256)) (content!14922 (exprs!8412 ct2!352)))))))

(assert (=> d!2274059 (= lt!2605077 e!4384672)))

(declare-fun c!1359003 () Bool)

(assert (=> d!2274059 (= c!1359003 (is-Nil!71344 (exprs!8412 ct1!256)))))

(assert (=> d!2274059 (= (++!16796 (exprs!8412 ct1!256) (exprs!8412 ct2!352)) lt!2605077)))

(assert (= (and d!2274059 c!1359003) b!7322986))

(assert (= (and d!2274059 (not c!1359003)) b!7322987))

(assert (= (and d!2274059 res!2960034) b!7322988))

(assert (= (and b!7322988 res!2960033) b!7322989))

(declare-fun m!7988512 () Bool)

(assert (=> b!7322987 m!7988512))

(declare-fun m!7988514 () Bool)

(assert (=> b!7322988 m!7988514))

(declare-fun m!7988516 () Bool)

(assert (=> b!7322988 m!7988516))

(declare-fun m!7988518 () Bool)

(assert (=> b!7322988 m!7988518))

(declare-fun m!7988520 () Bool)

(assert (=> d!2274059 m!7988520))

(declare-fun m!7988522 () Bool)

(assert (=> d!2274059 m!7988522))

(declare-fun m!7988524 () Bool)

(assert (=> d!2274059 m!7988524))

(assert (=> b!7322942 d!2274059))

(declare-fun d!2274061 () Bool)

(assert (=> d!2274061 (forall!17826 (++!16796 (exprs!8412 ct1!256) (exprs!8412 ct2!352)) lambda!453663)))

(declare-fun lt!2605080 () Unit!164909)

(declare-fun choose!56942 (List!71468 List!71468 Int) Unit!164909)

(assert (=> d!2274061 (= lt!2605080 (choose!56942 (exprs!8412 ct1!256) (exprs!8412 ct2!352) lambda!453663))))

(assert (=> d!2274061 (forall!17826 (exprs!8412 ct1!256) lambda!453663)))

(assert (=> d!2274061 (= (lemmaConcatPreservesForall!1653 (exprs!8412 ct1!256) (exprs!8412 ct2!352) lambda!453663) lt!2605080)))

(declare-fun bs!1916258 () Bool)

(assert (= bs!1916258 d!2274061))

(assert (=> bs!1916258 m!7988444))

(assert (=> bs!1916258 m!7988444))

(declare-fun m!7988526 () Bool)

(assert (=> bs!1916258 m!7988526))

(declare-fun m!7988528 () Bool)

(assert (=> bs!1916258 m!7988528))

(declare-fun m!7988530 () Bool)

(assert (=> bs!1916258 m!7988530))

(assert (=> b!7322942 d!2274061))

(declare-fun d!2274063 () Bool)

(declare-fun res!2960039 () Bool)

(declare-fun e!4384678 () Bool)

(assert (=> d!2274063 (=> res!2960039 e!4384678)))

(assert (=> d!2274063 (= res!2960039 (is-Nil!71344 (exprs!8412 ct2!352)))))

(assert (=> d!2274063 (= (forall!17826 (exprs!8412 ct2!352) lambda!453663) e!4384678)))

(declare-fun b!7322994 () Bool)

(declare-fun e!4384679 () Bool)

(assert (=> b!7322994 (= e!4384678 e!4384679)))

(declare-fun res!2960040 () Bool)

(assert (=> b!7322994 (=> (not res!2960040) (not e!4384679))))

(declare-fun dynLambda!29390 (Int Regex!18972) Bool)

(assert (=> b!7322994 (= res!2960040 (dynLambda!29390 lambda!453663 (h!77792 (exprs!8412 ct2!352))))))

(declare-fun b!7322995 () Bool)

(assert (=> b!7322995 (= e!4384679 (forall!17826 (t!385851 (exprs!8412 ct2!352)) lambda!453663))))

(assert (= (and d!2274063 (not res!2960039)) b!7322994))

(assert (= (and b!7322994 res!2960040) b!7322995))

(declare-fun b_lambda!283203 () Bool)

(assert (=> (not b_lambda!283203) (not b!7322994)))

(declare-fun m!7988532 () Bool)

(assert (=> b!7322994 m!7988532))

(declare-fun m!7988534 () Bool)

(assert (=> b!7322995 m!7988534))

(assert (=> b!7322943 d!2274063))

(declare-fun bm!666033 () Bool)

(declare-fun call!666038 () (Set Context!15824))

(assert (=> bm!666033 (= call!666038 (derivationStepZipperDown!2803 (h!77792 (exprs!8412 ct1!256)) (Context!15825 (t!385851 (exprs!8412 ct1!256))) c!10305))))

(declare-fun b!7323006 () Bool)

(declare-fun e!4384688 () (Set Context!15824))

(assert (=> b!7323006 (= e!4384688 call!666038)))

(declare-fun d!2274065 () Bool)

(declare-fun c!1359009 () Bool)

(declare-fun e!4384686 () Bool)

(assert (=> d!2274065 (= c!1359009 e!4384686)))

(declare-fun res!2960043 () Bool)

(assert (=> d!2274065 (=> (not res!2960043) (not e!4384686))))

(assert (=> d!2274065 (= res!2960043 (is-Cons!71344 (exprs!8412 ct1!256)))))

(declare-fun e!4384687 () (Set Context!15824))

(assert (=> d!2274065 (= (derivationStepZipperUp!2652 ct1!256 c!10305) e!4384687)))

(declare-fun b!7323007 () Bool)

(assert (=> b!7323007 (= e!4384686 (nullable!8076 (h!77792 (exprs!8412 ct1!256))))))

(declare-fun b!7323008 () Bool)

(assert (=> b!7323008 (= e!4384688 (as set.empty (Set Context!15824)))))

(declare-fun b!7323009 () Bool)

(assert (=> b!7323009 (= e!4384687 (set.union call!666038 (derivationStepZipperUp!2652 (Context!15825 (t!385851 (exprs!8412 ct1!256))) c!10305)))))

(declare-fun b!7323010 () Bool)

(assert (=> b!7323010 (= e!4384687 e!4384688)))

(declare-fun c!1359008 () Bool)

(assert (=> b!7323010 (= c!1359008 (is-Cons!71344 (exprs!8412 ct1!256)))))

(assert (= (and d!2274065 res!2960043) b!7323007))

(assert (= (and d!2274065 c!1359009) b!7323009))

(assert (= (and d!2274065 (not c!1359009)) b!7323010))

(assert (= (and b!7323010 c!1359008) b!7323006))

(assert (= (and b!7323010 (not c!1359008)) b!7323008))

(assert (= (or b!7323009 b!7323006) bm!666033))

(declare-fun m!7988536 () Bool)

(assert (=> bm!666033 m!7988536))

(assert (=> b!7323007 m!7988460))

(declare-fun m!7988538 () Bool)

(assert (=> b!7323009 m!7988538))

(assert (=> start!714608 d!2274065))

(declare-fun bs!1916260 () Bool)

(declare-fun d!2274069 () Bool)

(assert (= bs!1916260 (and d!2274069 b!7322942)))

(declare-fun lambda!453675 () Int)

(assert (=> bs!1916260 (= lambda!453675 lambda!453663)))

(assert (=> d!2274069 (= (inv!90771 cWitness!35) (forall!17826 (exprs!8412 cWitness!35) lambda!453675))))

(declare-fun bs!1916261 () Bool)

(assert (= bs!1916261 d!2274069))

(declare-fun m!7988542 () Bool)

(assert (=> bs!1916261 m!7988542))

(assert (=> start!714608 d!2274069))

(declare-fun bs!1916262 () Bool)

(declare-fun d!2274073 () Bool)

(assert (= bs!1916262 (and d!2274073 b!7322942)))

(declare-fun lambda!453676 () Int)

(assert (=> bs!1916262 (= lambda!453676 lambda!453663)))

(declare-fun bs!1916263 () Bool)

(assert (= bs!1916263 (and d!2274073 d!2274069)))

(assert (=> bs!1916263 (= lambda!453676 lambda!453675)))

(assert (=> d!2274073 (= (inv!90771 ct1!256) (forall!17826 (exprs!8412 ct1!256) lambda!453676))))

(declare-fun bs!1916264 () Bool)

(assert (= bs!1916264 d!2274073))

(declare-fun m!7988544 () Bool)

(assert (=> bs!1916264 m!7988544))

(assert (=> start!714608 d!2274073))

(declare-fun bs!1916265 () Bool)

(declare-fun d!2274075 () Bool)

(assert (= bs!1916265 (and d!2274075 b!7322942)))

(declare-fun lambda!453677 () Int)

(assert (=> bs!1916265 (= lambda!453677 lambda!453663)))

(declare-fun bs!1916266 () Bool)

(assert (= bs!1916266 (and d!2274075 d!2274069)))

(assert (=> bs!1916266 (= lambda!453677 lambda!453675)))

(declare-fun bs!1916267 () Bool)

(assert (= bs!1916267 (and d!2274075 d!2274073)))

(assert (=> bs!1916267 (= lambda!453677 lambda!453676)))

(assert (=> d!2274075 (= (inv!90771 ct2!352) (forall!17826 (exprs!8412 ct2!352) lambda!453677))))

(declare-fun bs!1916268 () Bool)

(assert (= bs!1916268 d!2274075))

(declare-fun m!7988546 () Bool)

(assert (=> bs!1916268 m!7988546))

(assert (=> start!714608 d!2274075))

(declare-fun d!2274077 () Bool)

(declare-fun nullableFct!3194 (Regex!18972) Bool)

(assert (=> d!2274077 (= (nullable!8076 (h!77792 (exprs!8412 ct1!256))) (nullableFct!3194 (h!77792 (exprs!8412 ct1!256))))))

(declare-fun bs!1916269 () Bool)

(assert (= bs!1916269 d!2274077))

(declare-fun m!7988548 () Bool)

(assert (=> bs!1916269 m!7988548))

(assert (=> b!7322948 d!2274077))

(declare-fun bm!666050 () Bool)

(declare-fun call!666055 () List!71468)

(declare-fun c!1359031 () Bool)

(declare-fun call!666060 () (Set Context!15824))

(assert (=> bm!666050 (= call!666060 (derivationStepZipperDown!2803 (ite c!1359031 (regOne!38457 (h!77792 (exprs!8412 ct1!256))) (regOne!38456 (h!77792 (exprs!8412 ct1!256)))) (ite c!1359031 lt!2605037 (Context!15825 call!666055)) c!10305))))

(declare-fun c!1359032 () Bool)

(declare-fun bm!666051 () Bool)

(declare-fun call!666058 () List!71468)

(declare-fun c!1359033 () Bool)

(declare-fun call!666056 () (Set Context!15824))

(assert (=> bm!666051 (= call!666056 (derivationStepZipperDown!2803 (ite c!1359031 (regTwo!38457 (h!77792 (exprs!8412 ct1!256))) (ite c!1359032 (regTwo!38456 (h!77792 (exprs!8412 ct1!256))) (ite c!1359033 (regOne!38456 (h!77792 (exprs!8412 ct1!256))) (reg!19301 (h!77792 (exprs!8412 ct1!256)))))) (ite (or c!1359031 c!1359032) lt!2605037 (Context!15825 call!666058)) c!10305))))

(declare-fun b!7323055 () Bool)

(declare-fun e!4384718 () Bool)

(assert (=> b!7323055 (= e!4384718 (nullable!8076 (regOne!38456 (h!77792 (exprs!8412 ct1!256)))))))

(declare-fun bm!666052 () Bool)

(assert (=> bm!666052 (= call!666058 call!666055)))

(declare-fun b!7323056 () Bool)

(declare-fun e!4384714 () (Set Context!15824))

(declare-fun e!4384717 () (Set Context!15824))

(assert (=> b!7323056 (= e!4384714 e!4384717)))

(assert (=> b!7323056 (= c!1359033 (is-Concat!27817 (h!77792 (exprs!8412 ct1!256))))))

(declare-fun bm!666053 () Bool)

(declare-fun call!666059 () (Set Context!15824))

(declare-fun call!666057 () (Set Context!15824))

(assert (=> bm!666053 (= call!666059 call!666057)))

(declare-fun d!2274079 () Bool)

(declare-fun c!1359034 () Bool)

(assert (=> d!2274079 (= c!1359034 (and (is-ElementMatch!18972 (h!77792 (exprs!8412 ct1!256))) (= (c!1358999 (h!77792 (exprs!8412 ct1!256))) c!10305)))))

(declare-fun e!4384716 () (Set Context!15824))

(assert (=> d!2274079 (= (derivationStepZipperDown!2803 (h!77792 (exprs!8412 ct1!256)) lt!2605037 c!10305) e!4384716)))

(declare-fun b!7323057 () Bool)

(assert (=> b!7323057 (= c!1359032 e!4384718)))

(declare-fun res!2960048 () Bool)

(assert (=> b!7323057 (=> (not res!2960048) (not e!4384718))))

(assert (=> b!7323057 (= res!2960048 (is-Concat!27817 (h!77792 (exprs!8412 ct1!256))))))

(declare-fun e!4384715 () (Set Context!15824))

(assert (=> b!7323057 (= e!4384715 e!4384714)))

(declare-fun bm!666054 () Bool)

(declare-fun $colon$colon!3010 (List!71468 Regex!18972) List!71468)

(assert (=> bm!666054 (= call!666055 ($colon$colon!3010 (exprs!8412 lt!2605037) (ite (or c!1359032 c!1359033) (regTwo!38456 (h!77792 (exprs!8412 ct1!256))) (h!77792 (exprs!8412 ct1!256)))))))

(declare-fun b!7323058 () Bool)

(assert (=> b!7323058 (= e!4384716 (set.insert lt!2605037 (as set.empty (Set Context!15824))))))

(declare-fun bm!666055 () Bool)

(assert (=> bm!666055 (= call!666057 call!666056)))

(declare-fun b!7323059 () Bool)

(assert (=> b!7323059 (= e!4384716 e!4384715)))

(assert (=> b!7323059 (= c!1359031 (is-Union!18972 (h!77792 (exprs!8412 ct1!256))))))

(declare-fun b!7323060 () Bool)

(declare-fun c!1359030 () Bool)

(assert (=> b!7323060 (= c!1359030 (is-Star!18972 (h!77792 (exprs!8412 ct1!256))))))

(declare-fun e!4384713 () (Set Context!15824))

(assert (=> b!7323060 (= e!4384717 e!4384713)))

(declare-fun b!7323061 () Bool)

(assert (=> b!7323061 (= e!4384715 (set.union call!666060 call!666056))))

(declare-fun b!7323062 () Bool)

(assert (=> b!7323062 (= e!4384713 (as set.empty (Set Context!15824)))))

(declare-fun b!7323063 () Bool)

(assert (=> b!7323063 (= e!4384714 (set.union call!666060 call!666057))))

(declare-fun b!7323064 () Bool)

(assert (=> b!7323064 (= e!4384713 call!666059)))

(declare-fun b!7323065 () Bool)

(assert (=> b!7323065 (= e!4384717 call!666059)))

(assert (= (and d!2274079 c!1359034) b!7323058))

(assert (= (and d!2274079 (not c!1359034)) b!7323059))

(assert (= (and b!7323059 c!1359031) b!7323061))

(assert (= (and b!7323059 (not c!1359031)) b!7323057))

(assert (= (and b!7323057 res!2960048) b!7323055))

(assert (= (and b!7323057 c!1359032) b!7323063))

(assert (= (and b!7323057 (not c!1359032)) b!7323056))

(assert (= (and b!7323056 c!1359033) b!7323065))

(assert (= (and b!7323056 (not c!1359033)) b!7323060))

(assert (= (and b!7323060 c!1359030) b!7323064))

(assert (= (and b!7323060 (not c!1359030)) b!7323062))

(assert (= (or b!7323065 b!7323064) bm!666052))

(assert (= (or b!7323065 b!7323064) bm!666053))

(assert (= (or b!7323063 bm!666053) bm!666055))

(assert (= (or b!7323063 bm!666052) bm!666054))

(assert (= (or b!7323061 bm!666055) bm!666051))

(assert (= (or b!7323061 b!7323063) bm!666050))

(declare-fun m!7988550 () Bool)

(assert (=> b!7323058 m!7988550))

(declare-fun m!7988552 () Bool)

(assert (=> bm!666054 m!7988552))

(declare-fun m!7988554 () Bool)

(assert (=> b!7323055 m!7988554))

(declare-fun m!7988556 () Bool)

(assert (=> bm!666050 m!7988556))

(declare-fun m!7988558 () Bool)

(assert (=> bm!666051 m!7988558))

(assert (=> b!7322948 d!2274079))

(declare-fun d!2274081 () Bool)

(assert (=> d!2274081 (= (tail!14661 (exprs!8412 ct1!256)) (t!385851 (exprs!8412 ct1!256)))))

(assert (=> b!7322948 d!2274081))

(declare-fun d!2274083 () Bool)

(declare-fun res!2960049 () Bool)

(declare-fun e!4384719 () Bool)

(assert (=> d!2274083 (=> res!2960049 e!4384719)))

(assert (=> d!2274083 (= res!2960049 (is-Nil!71344 (exprs!8412 cWitness!35)))))

(assert (=> d!2274083 (= (forall!17826 (exprs!8412 cWitness!35) lambda!453663) e!4384719)))

(declare-fun b!7323066 () Bool)

(declare-fun e!4384720 () Bool)

(assert (=> b!7323066 (= e!4384719 e!4384720)))

(declare-fun res!2960050 () Bool)

(assert (=> b!7323066 (=> (not res!2960050) (not e!4384720))))

(assert (=> b!7323066 (= res!2960050 (dynLambda!29390 lambda!453663 (h!77792 (exprs!8412 cWitness!35))))))

(declare-fun b!7323067 () Bool)

(assert (=> b!7323067 (= e!4384720 (forall!17826 (t!385851 (exprs!8412 cWitness!35)) lambda!453663))))

(assert (= (and d!2274083 (not res!2960049)) b!7323066))

(assert (= (and b!7323066 res!2960050) b!7323067))

(declare-fun b_lambda!283205 () Bool)

(assert (=> (not b_lambda!283205) (not b!7323066)))

(declare-fun m!7988560 () Bool)

(assert (=> b!7323066 m!7988560))

(declare-fun m!7988562 () Bool)

(assert (=> b!7323067 m!7988562))

(assert (=> b!7322944 d!2274083))

(declare-fun bs!1916270 () Bool)

(declare-fun d!2274085 () Bool)

(assert (= bs!1916270 (and d!2274085 b!7322942)))

(declare-fun lambda!453682 () Int)

(assert (=> bs!1916270 (= lambda!453682 lambda!453663)))

(declare-fun bs!1916271 () Bool)

(assert (= bs!1916271 (and d!2274085 d!2274069)))

(assert (=> bs!1916271 (= lambda!453682 lambda!453675)))

(declare-fun bs!1916272 () Bool)

(assert (= bs!1916272 (and d!2274085 d!2274073)))

(assert (=> bs!1916272 (= lambda!453682 lambda!453676)))

(declare-fun bs!1916273 () Bool)

(assert (= bs!1916273 (and d!2274085 d!2274075)))

(assert (=> bs!1916273 (= lambda!453682 lambda!453677)))

(assert (=> d!2274085 (set.member (Context!15825 (++!16796 (exprs!8412 cWitness!35) (exprs!8412 ct2!352))) (derivationStepZipperUp!2652 (Context!15825 (++!16796 (exprs!8412 lt!2605037) (exprs!8412 ct2!352))) c!10305))))

(declare-fun lt!2605089 () Unit!164909)

(assert (=> d!2274085 (= lt!2605089 (lemmaConcatPreservesForall!1653 (exprs!8412 lt!2605037) (exprs!8412 ct2!352) lambda!453682))))

(declare-fun lt!2605088 () Unit!164909)

(assert (=> d!2274085 (= lt!2605088 (lemmaConcatPreservesForall!1653 (exprs!8412 cWitness!35) (exprs!8412 ct2!352) lambda!453682))))

(declare-fun lt!2605087 () Unit!164909)

(declare-fun choose!56943 (Context!15824 Context!15824 Context!15824 C!38218) Unit!164909)

(assert (=> d!2274085 (= lt!2605087 (choose!56943 lt!2605037 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2274085 (set.member cWitness!35 (derivationStepZipperUp!2652 lt!2605037 c!10305))))

(assert (=> d!2274085 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!43 lt!2605037 ct2!352 cWitness!35 c!10305) lt!2605087)))

(declare-fun bs!1916274 () Bool)

(assert (= bs!1916274 d!2274085))

(assert (=> bs!1916274 m!7988424))

(declare-fun m!7988564 () Bool)

(assert (=> bs!1916274 m!7988564))

(declare-fun m!7988566 () Bool)

(assert (=> bs!1916274 m!7988566))

(assert (=> bs!1916274 m!7988430))

(declare-fun m!7988568 () Bool)

(assert (=> bs!1916274 m!7988568))

(declare-fun m!7988570 () Bool)

(assert (=> bs!1916274 m!7988570))

(declare-fun m!7988572 () Bool)

(assert (=> bs!1916274 m!7988572))

(declare-fun m!7988574 () Bool)

(assert (=> bs!1916274 m!7988574))

(declare-fun m!7988576 () Bool)

(assert (=> bs!1916274 m!7988576))

(assert (=> b!7322944 d!2274085))

(declare-fun call!666069 () (Set Context!15824))

(declare-fun bm!666064 () Bool)

(assert (=> bm!666064 (= call!666069 (derivationStepZipperDown!2803 (h!77792 (exprs!8412 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352))))) (Context!15825 (t!385851 (exprs!8412 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352)))))) c!10305))))

(declare-fun b!7323068 () Bool)

(declare-fun e!4384723 () (Set Context!15824))

(assert (=> b!7323068 (= e!4384723 call!666069)))

(declare-fun d!2274087 () Bool)

(declare-fun c!1359037 () Bool)

(declare-fun e!4384721 () Bool)

(assert (=> d!2274087 (= c!1359037 e!4384721)))

(declare-fun res!2960051 () Bool)

(assert (=> d!2274087 (=> (not res!2960051) (not e!4384721))))

(assert (=> d!2274087 (= res!2960051 (is-Cons!71344 (exprs!8412 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352))))))))

(declare-fun e!4384722 () (Set Context!15824))

(assert (=> d!2274087 (= (derivationStepZipperUp!2652 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352))) c!10305) e!4384722)))

(declare-fun b!7323069 () Bool)

(assert (=> b!7323069 (= e!4384721 (nullable!8076 (h!77792 (exprs!8412 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352)))))))))

(declare-fun b!7323070 () Bool)

(assert (=> b!7323070 (= e!4384723 (as set.empty (Set Context!15824)))))

(declare-fun b!7323071 () Bool)

(assert (=> b!7323071 (= e!4384722 (set.union call!666069 (derivationStepZipperUp!2652 (Context!15825 (t!385851 (exprs!8412 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352)))))) c!10305)))))

(declare-fun b!7323072 () Bool)

(assert (=> b!7323072 (= e!4384722 e!4384723)))

(declare-fun c!1359036 () Bool)

(assert (=> b!7323072 (= c!1359036 (is-Cons!71344 (exprs!8412 (Context!15825 (++!16796 lt!2605044 (exprs!8412 ct2!352))))))))

(assert (= (and d!2274087 res!2960051) b!7323069))

(assert (= (and d!2274087 c!1359037) b!7323071))

(assert (= (and d!2274087 (not c!1359037)) b!7323072))

(assert (= (and b!7323072 c!1359036) b!7323068))

(assert (= (and b!7323072 (not c!1359036)) b!7323070))

(assert (= (or b!7323071 b!7323068) bm!666064))

(declare-fun m!7988578 () Bool)

(assert (=> bm!666064 m!7988578))

(declare-fun m!7988580 () Bool)

(assert (=> b!7323069 m!7988580))

(declare-fun m!7988582 () Bool)

(assert (=> b!7323071 m!7988582))

(assert (=> b!7322944 d!2274087))

(declare-fun d!2274089 () Bool)

(assert (=> d!2274089 (forall!17826 (++!16796 (exprs!8412 cWitness!35) (exprs!8412 ct2!352)) lambda!453663)))

(declare-fun lt!2605090 () Unit!164909)

(assert (=> d!2274089 (= lt!2605090 (choose!56942 (exprs!8412 cWitness!35) (exprs!8412 ct2!352) lambda!453663))))

(assert (=> d!2274089 (forall!17826 (exprs!8412 cWitness!35) lambda!453663)))

(assert (=> d!2274089 (= (lemmaConcatPreservesForall!1653 (exprs!8412 cWitness!35) (exprs!8412 ct2!352) lambda!453663) lt!2605090)))

(declare-fun bs!1916275 () Bool)

(assert (= bs!1916275 d!2274089))

(assert (=> bs!1916275 m!7988430))

(assert (=> bs!1916275 m!7988430))

(declare-fun m!7988584 () Bool)

(assert (=> bs!1916275 m!7988584))

(declare-fun m!7988586 () Bool)

(assert (=> bs!1916275 m!7988586))

(assert (=> bs!1916275 m!7988440))

(assert (=> b!7322944 d!2274089))

(declare-fun d!2274091 () Bool)

(assert (=> d!2274091 (forall!17826 (++!16796 lt!2605044 (exprs!8412 ct2!352)) lambda!453663)))

(declare-fun lt!2605091 () Unit!164909)

(assert (=> d!2274091 (= lt!2605091 (choose!56942 lt!2605044 (exprs!8412 ct2!352) lambda!453663))))

(assert (=> d!2274091 (forall!17826 lt!2605044 lambda!453663)))

(assert (=> d!2274091 (= (lemmaConcatPreservesForall!1653 lt!2605044 (exprs!8412 ct2!352) lambda!453663) lt!2605091)))

(declare-fun bs!1916276 () Bool)

(assert (= bs!1916276 d!2274091))

(assert (=> bs!1916276 m!7988426))

(assert (=> bs!1916276 m!7988426))

(declare-fun m!7988588 () Bool)

(assert (=> bs!1916276 m!7988588))

(declare-fun m!7988590 () Bool)

(assert (=> bs!1916276 m!7988590))

(declare-fun m!7988592 () Bool)

(assert (=> bs!1916276 m!7988592))

(assert (=> b!7322944 d!2274091))

(declare-fun b!7323074 () Bool)

(declare-fun e!4384724 () List!71468)

(assert (=> b!7323074 (= e!4384724 (Cons!71344 (h!77792 (exprs!8412 cWitness!35)) (++!16796 (t!385851 (exprs!8412 cWitness!35)) (exprs!8412 ct2!352))))))

(declare-fun b!7323075 () Bool)

(declare-fun res!2960052 () Bool)

(declare-fun e!4384725 () Bool)

(assert (=> b!7323075 (=> (not res!2960052) (not e!4384725))))

(declare-fun lt!2605092 () List!71468)

(assert (=> b!7323075 (= res!2960052 (= (size!41899 lt!2605092) (+ (size!41899 (exprs!8412 cWitness!35)) (size!41899 (exprs!8412 ct2!352)))))))

(declare-fun b!7323073 () Bool)

(assert (=> b!7323073 (= e!4384724 (exprs!8412 ct2!352))))

(declare-fun b!7323076 () Bool)

(assert (=> b!7323076 (= e!4384725 (or (not (= (exprs!8412 ct2!352) Nil!71344)) (= lt!2605092 (exprs!8412 cWitness!35))))))

(declare-fun d!2274093 () Bool)

(assert (=> d!2274093 e!4384725))

(declare-fun res!2960053 () Bool)

(assert (=> d!2274093 (=> (not res!2960053) (not e!4384725))))

(assert (=> d!2274093 (= res!2960053 (= (content!14922 lt!2605092) (set.union (content!14922 (exprs!8412 cWitness!35)) (content!14922 (exprs!8412 ct2!352)))))))

(assert (=> d!2274093 (= lt!2605092 e!4384724)))

(declare-fun c!1359038 () Bool)

(assert (=> d!2274093 (= c!1359038 (is-Nil!71344 (exprs!8412 cWitness!35)))))

(assert (=> d!2274093 (= (++!16796 (exprs!8412 cWitness!35) (exprs!8412 ct2!352)) lt!2605092)))

(assert (= (and d!2274093 c!1359038) b!7323073))

(assert (= (and d!2274093 (not c!1359038)) b!7323074))

(assert (= (and d!2274093 res!2960053) b!7323075))

(assert (= (and b!7323075 res!2960052) b!7323076))

(declare-fun m!7988594 () Bool)

(assert (=> b!7323074 m!7988594))

(declare-fun m!7988596 () Bool)

(assert (=> b!7323075 m!7988596))

(declare-fun m!7988598 () Bool)

(assert (=> b!7323075 m!7988598))

(assert (=> b!7323075 m!7988518))

(declare-fun m!7988600 () Bool)

(assert (=> d!2274093 m!7988600))

(declare-fun m!7988602 () Bool)

(assert (=> d!2274093 m!7988602))

(assert (=> d!2274093 m!7988524))

(assert (=> b!7322944 d!2274093))

(declare-fun b!7323078 () Bool)

(declare-fun e!4384726 () List!71468)

(assert (=> b!7323078 (= e!4384726 (Cons!71344 (h!77792 lt!2605044) (++!16796 (t!385851 lt!2605044) (exprs!8412 ct2!352))))))

(declare-fun b!7323079 () Bool)

(declare-fun res!2960054 () Bool)

(declare-fun e!4384727 () Bool)

(assert (=> b!7323079 (=> (not res!2960054) (not e!4384727))))

(declare-fun lt!2605093 () List!71468)

(assert (=> b!7323079 (= res!2960054 (= (size!41899 lt!2605093) (+ (size!41899 lt!2605044) (size!41899 (exprs!8412 ct2!352)))))))

(declare-fun b!7323077 () Bool)

(assert (=> b!7323077 (= e!4384726 (exprs!8412 ct2!352))))

(declare-fun b!7323080 () Bool)

(assert (=> b!7323080 (= e!4384727 (or (not (= (exprs!8412 ct2!352) Nil!71344)) (= lt!2605093 lt!2605044)))))

(declare-fun d!2274095 () Bool)

(assert (=> d!2274095 e!4384727))

(declare-fun res!2960055 () Bool)

(assert (=> d!2274095 (=> (not res!2960055) (not e!4384727))))

(assert (=> d!2274095 (= res!2960055 (= (content!14922 lt!2605093) (set.union (content!14922 lt!2605044) (content!14922 (exprs!8412 ct2!352)))))))

(assert (=> d!2274095 (= lt!2605093 e!4384726)))

(declare-fun c!1359039 () Bool)

(assert (=> d!2274095 (= c!1359039 (is-Nil!71344 lt!2605044))))

(assert (=> d!2274095 (= (++!16796 lt!2605044 (exprs!8412 ct2!352)) lt!2605093)))

(assert (= (and d!2274095 c!1359039) b!7323077))

(assert (= (and d!2274095 (not c!1359039)) b!7323078))

(assert (= (and d!2274095 res!2960055) b!7323079))

(assert (= (and b!7323079 res!2960054) b!7323080))

(declare-fun m!7988604 () Bool)

(assert (=> b!7323078 m!7988604))

(declare-fun m!7988606 () Bool)

(assert (=> b!7323079 m!7988606))

(declare-fun m!7988608 () Bool)

(assert (=> b!7323079 m!7988608))

(assert (=> b!7323079 m!7988518))

(declare-fun m!7988610 () Bool)

(assert (=> d!2274095 m!7988610))

(declare-fun m!7988612 () Bool)

(assert (=> d!2274095 m!7988612))

(assert (=> d!2274095 m!7988524))

(assert (=> b!7322944 d!2274095))

(declare-fun bm!666065 () Bool)

(declare-fun call!666070 () (Set Context!15824))

(assert (=> bm!666065 (= call!666070 (derivationStepZipperDown!2803 (h!77792 (exprs!8412 lt!2605037)) (Context!15825 (t!385851 (exprs!8412 lt!2605037))) c!10305))))

(declare-fun b!7323081 () Bool)

(declare-fun e!4384730 () (Set Context!15824))

(assert (=> b!7323081 (= e!4384730 call!666070)))

(declare-fun d!2274097 () Bool)

(declare-fun c!1359041 () Bool)

(declare-fun e!4384728 () Bool)

(assert (=> d!2274097 (= c!1359041 e!4384728)))

(declare-fun res!2960056 () Bool)

(assert (=> d!2274097 (=> (not res!2960056) (not e!4384728))))

(assert (=> d!2274097 (= res!2960056 (is-Cons!71344 (exprs!8412 lt!2605037)))))

(declare-fun e!4384729 () (Set Context!15824))

(assert (=> d!2274097 (= (derivationStepZipperUp!2652 lt!2605037 c!10305) e!4384729)))

(declare-fun b!7323082 () Bool)

(assert (=> b!7323082 (= e!4384728 (nullable!8076 (h!77792 (exprs!8412 lt!2605037))))))

(declare-fun b!7323083 () Bool)

(assert (=> b!7323083 (= e!4384730 (as set.empty (Set Context!15824)))))

(declare-fun b!7323084 () Bool)

(assert (=> b!7323084 (= e!4384729 (set.union call!666070 (derivationStepZipperUp!2652 (Context!15825 (t!385851 (exprs!8412 lt!2605037))) c!10305)))))

(declare-fun b!7323085 () Bool)

(assert (=> b!7323085 (= e!4384729 e!4384730)))

(declare-fun c!1359040 () Bool)

(assert (=> b!7323085 (= c!1359040 (is-Cons!71344 (exprs!8412 lt!2605037)))))

(assert (= (and d!2274097 res!2960056) b!7323082))

(assert (= (and d!2274097 c!1359041) b!7323084))

(assert (= (and d!2274097 (not c!1359041)) b!7323085))

(assert (= (and b!7323085 c!1359040) b!7323081))

(assert (= (and b!7323085 (not c!1359040)) b!7323083))

(assert (= (or b!7323084 b!7323081) bm!666065))

(declare-fun m!7988614 () Bool)

(assert (=> bm!666065 m!7988614))

(declare-fun m!7988616 () Bool)

(assert (=> b!7323082 m!7988616))

(declare-fun m!7988618 () Bool)

(assert (=> b!7323084 m!7988618))

(assert (=> b!7322945 d!2274097))

(declare-fun b!7323098 () Bool)

(declare-fun e!4384739 () Bool)

(declare-fun tp!2080040 () Bool)

(declare-fun tp!2080041 () Bool)

(assert (=> b!7323098 (= e!4384739 (and tp!2080040 tp!2080041))))

(assert (=> b!7322950 (= tp!2080025 e!4384739)))

(assert (= (and b!7322950 (is-Cons!71344 (exprs!8412 ct1!256))) b!7323098))

(declare-fun b!7323102 () Bool)

(declare-fun e!4384740 () Bool)

(declare-fun tp!2080042 () Bool)

(declare-fun tp!2080043 () Bool)

(assert (=> b!7323102 (= e!4384740 (and tp!2080042 tp!2080043))))

(assert (=> b!7322949 (= tp!2080024 e!4384740)))

(assert (= (and b!7322949 (is-Cons!71344 (exprs!8412 cWitness!35))) b!7323102))

(declare-fun b!7323103 () Bool)

(declare-fun e!4384741 () Bool)

(declare-fun tp!2080044 () Bool)

(declare-fun tp!2080045 () Bool)

(assert (=> b!7323103 (= e!4384741 (and tp!2080044 tp!2080045))))

(assert (=> b!7322946 (= tp!2080026 e!4384741)))

(assert (= (and b!7322946 (is-Cons!71344 (exprs!8412 ct2!352))) b!7323103))

(declare-fun b_lambda!283207 () Bool)

(assert (= b_lambda!283203 (or b!7322942 b_lambda!283207)))

(declare-fun bs!1916277 () Bool)

(declare-fun d!2274099 () Bool)

(assert (= bs!1916277 (and d!2274099 b!7322942)))

(declare-fun validRegex!9620 (Regex!18972) Bool)

(assert (=> bs!1916277 (= (dynLambda!29390 lambda!453663 (h!77792 (exprs!8412 ct2!352))) (validRegex!9620 (h!77792 (exprs!8412 ct2!352))))))

(declare-fun m!7988620 () Bool)

(assert (=> bs!1916277 m!7988620))

(assert (=> b!7322994 d!2274099))

(declare-fun b_lambda!283209 () Bool)

(assert (= b_lambda!283205 (or b!7322942 b_lambda!283209)))

(declare-fun bs!1916278 () Bool)

(declare-fun d!2274101 () Bool)

(assert (= bs!1916278 (and d!2274101 b!7322942)))

(assert (=> bs!1916278 (= (dynLambda!29390 lambda!453663 (h!77792 (exprs!8412 cWitness!35))) (validRegex!9620 (h!77792 (exprs!8412 cWitness!35))))))

(declare-fun m!7988622 () Bool)

(assert (=> bs!1916278 m!7988622))

(assert (=> b!7323066 d!2274101))

(push 1)

(assert (not b!7323055))

(assert (not d!2274073))

(assert (not b!7323069))

(assert (not d!2274069))

(assert (not bm!666064))

(assert (not bm!666033))

(assert (not bs!1916277))

(assert (not bm!666054))

(assert (not b!7323074))

(assert (not b!7323071))

(assert (not b!7323084))

(assert (not d!2274095))

(assert (not bm!666065))

(assert (not b!7323082))

(assert (not b!7322988))

(assert (not d!2274059))

(assert (not b!7323009))

(assert (not b!7322987))

(assert (not d!2274089))

(assert tp_is_empty!48189)

(assert (not d!2274093))

(assert (not b!7323102))

(assert (not b!7323067))

(assert (not b!7323007))

(assert (not d!2274061))

(assert (not d!2274075))

(assert (not d!2274091))

(assert (not b!7322995))

(assert (not b!7323098))

(assert (not b!7323075))

(assert (not b!7323078))

(assert (not bm!666050))

(assert (not b!7323079))

(assert (not d!2274085))

(assert (not b!7323103))

(assert (not bm!666051))

(assert (not b_lambda!283207))

(assert (not d!2274077))

(assert (not bs!1916278))

(assert (not b_lambda!283209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

