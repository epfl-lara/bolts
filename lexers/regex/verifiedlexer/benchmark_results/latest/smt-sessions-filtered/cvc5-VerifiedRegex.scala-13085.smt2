; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716166 () Bool)

(assert start!716166)

(declare-fun b!7332924 () Bool)

(declare-fun e!4391001 () Bool)

(declare-fun tp!2081820 () Bool)

(assert (=> b!7332924 (= e!4391001 tp!2081820)))

(declare-fun res!2963328 () Bool)

(declare-fun e!4391006 () Bool)

(assert (=> start!716166 (=> (not res!2963328) (not e!4391006))))

(declare-datatypes ((C!38390 0))(
  ( (C!38391 (val!29555 Int)) )
))
(declare-datatypes ((Regex!19058 0))(
  ( (ElementMatch!19058 (c!1361702 C!38390)) (Concat!27903 (regOne!38628 Regex!19058) (regTwo!38628 Regex!19058)) (EmptyExpr!19058) (Star!19058 (reg!19387 Regex!19058)) (EmptyLang!19058) (Union!19058 (regOne!38629 Regex!19058) (regTwo!38629 Regex!19058)) )
))
(declare-datatypes ((List!71554 0))(
  ( (Nil!71430) (Cons!71430 (h!77878 Regex!19058) (t!385945 List!71554)) )
))
(declare-datatypes ((Context!15996 0))(
  ( (Context!15997 (exprs!8498 List!71554)) )
))
(declare-fun cWitness!35 () Context!15996)

(declare-fun lt!2608413 () (Set Context!15996))

(assert (=> start!716166 (= res!2963328 (set.member cWitness!35 lt!2608413))))

(declare-fun ct1!256 () Context!15996)

(declare-fun c!10305 () C!38390)

(declare-fun derivationStepZipperUp!2738 (Context!15996 C!38390) (Set Context!15996))

(assert (=> start!716166 (= lt!2608413 (derivationStepZipperUp!2738 ct1!256 c!10305))))

(assert (=> start!716166 e!4391006))

(declare-fun tp_is_empty!48361 () Bool)

(assert (=> start!716166 tp_is_empty!48361))

(declare-fun e!4391005 () Bool)

(declare-fun inv!90986 (Context!15996) Bool)

(assert (=> start!716166 (and (inv!90986 cWitness!35) e!4391005)))

(declare-fun e!4390999 () Bool)

(assert (=> start!716166 (and (inv!90986 ct1!256) e!4390999)))

(declare-fun ct2!352 () Context!15996)

(assert (=> start!716166 (and (inv!90986 ct2!352) e!4391001)))

(declare-fun b!7332925 () Bool)

(declare-fun e!4391002 () Bool)

(declare-fun lt!2608412 () Context!15996)

(assert (=> b!7332925 (= e!4391002 (inv!90986 lt!2608412))))

(declare-datatypes ((Unit!165077 0))(
  ( (Unit!165078) )
))
(declare-fun lt!2608424 () Unit!165077)

(declare-fun lambda!454872 () Int)

(declare-fun lemmaConcatPreservesForall!1737 (List!71554 List!71554 Int) Unit!165077)

(assert (=> b!7332925 (= lt!2608424 (lemmaConcatPreservesForall!1737 (exprs!8498 ct1!256) (exprs!8498 ct2!352) lambda!454872))))

(declare-fun lt!2608420 () Unit!165077)

(assert (=> b!7332925 (= lt!2608420 (lemmaConcatPreservesForall!1737 (exprs!8498 cWitness!35) (exprs!8498 ct2!352) lambda!454872))))

(declare-fun b!7332926 () Bool)

(declare-fun res!2963330 () Bool)

(declare-fun e!4391003 () Bool)

(assert (=> b!7332926 (=> (not res!2963330) (not e!4391003))))

(declare-fun isEmpty!40970 (List!71554) Bool)

(assert (=> b!7332926 (= res!2963330 (not (isEmpty!40970 (exprs!8498 ct1!256))))))

(declare-fun b!7332927 () Bool)

(declare-fun e!4391000 () Bool)

(assert (=> b!7332927 (= e!4391000 (not e!4391002))))

(declare-fun res!2963331 () Bool)

(assert (=> b!7332927 (=> res!2963331 e!4391002)))

(declare-fun lt!2608423 () (Set Context!15996))

(assert (=> b!7332927 (= res!2963331 (not (set.member lt!2608412 lt!2608423)))))

(declare-fun lt!2608417 () Unit!165077)

(assert (=> b!7332927 (= lt!2608417 (lemmaConcatPreservesForall!1737 (exprs!8498 cWitness!35) (exprs!8498 ct2!352) lambda!454872))))

(declare-fun lt!2608418 () List!71554)

(declare-fun derivationStepZipperDown!2885 (Regex!19058 Context!15996 C!38390) (Set Context!15996))

(declare-fun ++!16880 (List!71554 List!71554) List!71554)

(assert (=> b!7332927 (set.member lt!2608412 (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) (Context!15997 (++!16880 lt!2608418 (exprs!8498 ct2!352))) c!10305))))

(assert (=> b!7332927 (= lt!2608412 (Context!15997 (++!16880 (exprs!8498 cWitness!35) (exprs!8498 ct2!352))))))

(declare-fun lt!2608415 () Unit!165077)

(assert (=> b!7332927 (= lt!2608415 (lemmaConcatPreservesForall!1737 lt!2608418 (exprs!8498 ct2!352) lambda!454872))))

(declare-fun lt!2608422 () Unit!165077)

(assert (=> b!7332927 (= lt!2608422 (lemmaConcatPreservesForall!1737 (exprs!8498 cWitness!35) (exprs!8498 ct2!352) lambda!454872))))

(declare-fun lt!2608419 () Unit!165077)

(declare-fun lt!2608414 () Context!15996)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!29 (Regex!19058 Context!15996 Context!15996 Context!15996 C!38390) Unit!165077)

(assert (=> b!7332927 (= lt!2608419 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!29 (h!77878 (exprs!8498 ct1!256)) lt!2608414 ct2!352 cWitness!35 c!10305))))

(declare-fun lt!2608410 () List!71554)

(declare-fun tail!14739 (List!71554) List!71554)

(assert (=> b!7332927 (= lt!2608423 (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) (Context!15997 (tail!14739 lt!2608410)) c!10305))))

(declare-fun b!7332928 () Bool)

(declare-fun tp!2081818 () Bool)

(assert (=> b!7332928 (= e!4391005 tp!2081818)))

(declare-fun b!7332929 () Bool)

(assert (=> b!7332929 (= e!4391006 e!4391003)))

(declare-fun res!2963333 () Bool)

(assert (=> b!7332929 (=> (not res!2963333) (not e!4391003))))

(assert (=> b!7332929 (= res!2963333 (is-Cons!71430 (exprs!8498 ct1!256)))))

(assert (=> b!7332929 (= lt!2608410 (++!16880 (exprs!8498 ct1!256) (exprs!8498 ct2!352)))))

(declare-fun lt!2608416 () Unit!165077)

(assert (=> b!7332929 (= lt!2608416 (lemmaConcatPreservesForall!1737 (exprs!8498 ct1!256) (exprs!8498 ct2!352) lambda!454872))))

(declare-fun b!7332930 () Bool)

(declare-fun tp!2081819 () Bool)

(assert (=> b!7332930 (= e!4390999 tp!2081819)))

(declare-fun b!7332931 () Bool)

(declare-fun e!4391004 () Bool)

(assert (=> b!7332931 (= e!4391003 e!4391004)))

(declare-fun res!2963327 () Bool)

(assert (=> b!7332931 (=> (not res!2963327) (not e!4391004))))

(declare-fun nullable!8159 (Regex!19058) Bool)

(assert (=> b!7332931 (= res!2963327 (nullable!8159 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun lt!2608421 () (Set Context!15996))

(assert (=> b!7332931 (= lt!2608421 (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) lt!2608414 c!10305))))

(assert (=> b!7332931 (= lt!2608414 (Context!15997 lt!2608418))))

(assert (=> b!7332931 (= lt!2608418 (tail!14739 (exprs!8498 ct1!256)))))

(declare-fun b!7332932 () Bool)

(declare-fun res!2963332 () Bool)

(assert (=> b!7332932 (=> (not res!2963332) (not e!4391000))))

(assert (=> b!7332932 (= res!2963332 (not (isEmpty!40970 lt!2608410)))))

(declare-fun b!7332933 () Bool)

(assert (=> b!7332933 (= e!4391004 e!4391000)))

(declare-fun res!2963329 () Bool)

(assert (=> b!7332933 (=> (not res!2963329) (not e!4391000))))

(declare-fun lt!2608411 () (Set Context!15996))

(assert (=> b!7332933 (= res!2963329 (and (= lt!2608413 (set.union lt!2608421 lt!2608411)) (or (set.member cWitness!35 lt!2608421) (set.member cWitness!35 lt!2608411)) (not (set.member cWitness!35 lt!2608411))))))

(assert (=> b!7332933 (= lt!2608411 (derivationStepZipperUp!2738 lt!2608414 c!10305))))

(assert (= (and start!716166 res!2963328) b!7332929))

(assert (= (and b!7332929 res!2963333) b!7332926))

(assert (= (and b!7332926 res!2963330) b!7332931))

(assert (= (and b!7332931 res!2963327) b!7332933))

(assert (= (and b!7332933 res!2963329) b!7332932))

(assert (= (and b!7332932 res!2963332) b!7332927))

(assert (= (and b!7332927 (not res!2963331)) b!7332925))

(assert (= start!716166 b!7332928))

(assert (= start!716166 b!7332930))

(assert (= start!716166 b!7332924))

(declare-fun m!7998930 () Bool)

(assert (=> b!7332925 m!7998930))

(declare-fun m!7998932 () Bool)

(assert (=> b!7332925 m!7998932))

(declare-fun m!7998934 () Bool)

(assert (=> b!7332925 m!7998934))

(declare-fun m!7998936 () Bool)

(assert (=> b!7332932 m!7998936))

(declare-fun m!7998938 () Bool)

(assert (=> b!7332926 m!7998938))

(declare-fun m!7998940 () Bool)

(assert (=> b!7332933 m!7998940))

(declare-fun m!7998942 () Bool)

(assert (=> b!7332933 m!7998942))

(declare-fun m!7998944 () Bool)

(assert (=> b!7332933 m!7998944))

(declare-fun m!7998946 () Bool)

(assert (=> b!7332931 m!7998946))

(declare-fun m!7998948 () Bool)

(assert (=> b!7332931 m!7998948))

(declare-fun m!7998950 () Bool)

(assert (=> b!7332931 m!7998950))

(declare-fun m!7998952 () Bool)

(assert (=> b!7332927 m!7998952))

(declare-fun m!7998954 () Bool)

(assert (=> b!7332927 m!7998954))

(declare-fun m!7998956 () Bool)

(assert (=> b!7332927 m!7998956))

(declare-fun m!7998958 () Bool)

(assert (=> b!7332927 m!7998958))

(declare-fun m!7998960 () Bool)

(assert (=> b!7332927 m!7998960))

(declare-fun m!7998962 () Bool)

(assert (=> b!7332927 m!7998962))

(declare-fun m!7998964 () Bool)

(assert (=> b!7332927 m!7998964))

(declare-fun m!7998966 () Bool)

(assert (=> b!7332927 m!7998966))

(assert (=> b!7332927 m!7998934))

(assert (=> b!7332927 m!7998934))

(declare-fun m!7998968 () Bool)

(assert (=> b!7332927 m!7998968))

(declare-fun m!7998970 () Bool)

(assert (=> b!7332929 m!7998970))

(assert (=> b!7332929 m!7998932))

(declare-fun m!7998972 () Bool)

(assert (=> start!716166 m!7998972))

(declare-fun m!7998974 () Bool)

(assert (=> start!716166 m!7998974))

(declare-fun m!7998976 () Bool)

(assert (=> start!716166 m!7998976))

(declare-fun m!7998978 () Bool)

(assert (=> start!716166 m!7998978))

(declare-fun m!7998980 () Bool)

(assert (=> start!716166 m!7998980))

(push 1)

(assert (not b!7332929))

(assert (not b!7332928))

(assert (not b!7332932))

(assert (not b!7332926))

(assert (not start!716166))

(assert (not b!7332931))

(assert (not b!7332930))

(assert (not b!7332925))

(assert (not b!7332927))

(assert tp_is_empty!48361)

(assert (not b!7332924))

(assert (not b!7332933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1917614 () Bool)

(declare-fun d!2277146 () Bool)

(assert (= bs!1917614 (and d!2277146 b!7332929)))

(declare-fun lambda!454888 () Int)

(assert (=> bs!1917614 (= lambda!454888 lambda!454872)))

(declare-fun forall!17895 (List!71554 Int) Bool)

(assert (=> d!2277146 (= (inv!90986 lt!2608412) (forall!17895 (exprs!8498 lt!2608412) lambda!454888))))

(declare-fun bs!1917615 () Bool)

(assert (= bs!1917615 d!2277146))

(declare-fun m!7999034 () Bool)

(assert (=> bs!1917615 m!7999034))

(assert (=> b!7332925 d!2277146))

(declare-fun d!2277148 () Bool)

(assert (=> d!2277148 (forall!17895 (++!16880 (exprs!8498 ct1!256) (exprs!8498 ct2!352)) lambda!454872)))

(declare-fun lt!2608472 () Unit!165077)

(declare-fun choose!57038 (List!71554 List!71554 Int) Unit!165077)

(assert (=> d!2277148 (= lt!2608472 (choose!57038 (exprs!8498 ct1!256) (exprs!8498 ct2!352) lambda!454872))))

(assert (=> d!2277148 (forall!17895 (exprs!8498 ct1!256) lambda!454872)))

(assert (=> d!2277148 (= (lemmaConcatPreservesForall!1737 (exprs!8498 ct1!256) (exprs!8498 ct2!352) lambda!454872) lt!2608472)))

(declare-fun bs!1917616 () Bool)

(assert (= bs!1917616 d!2277148))

(assert (=> bs!1917616 m!7998970))

(assert (=> bs!1917616 m!7998970))

(declare-fun m!7999036 () Bool)

(assert (=> bs!1917616 m!7999036))

(declare-fun m!7999038 () Bool)

(assert (=> bs!1917616 m!7999038))

(declare-fun m!7999040 () Bool)

(assert (=> bs!1917616 m!7999040))

(assert (=> b!7332925 d!2277148))

(declare-fun d!2277152 () Bool)

(assert (=> d!2277152 (forall!17895 (++!16880 (exprs!8498 cWitness!35) (exprs!8498 ct2!352)) lambda!454872)))

(declare-fun lt!2608473 () Unit!165077)

(assert (=> d!2277152 (= lt!2608473 (choose!57038 (exprs!8498 cWitness!35) (exprs!8498 ct2!352) lambda!454872))))

(assert (=> d!2277152 (forall!17895 (exprs!8498 cWitness!35) lambda!454872)))

(assert (=> d!2277152 (= (lemmaConcatPreservesForall!1737 (exprs!8498 cWitness!35) (exprs!8498 ct2!352) lambda!454872) lt!2608473)))

(declare-fun bs!1917617 () Bool)

(assert (= bs!1917617 d!2277152))

(assert (=> bs!1917617 m!7998960))

(assert (=> bs!1917617 m!7998960))

(declare-fun m!7999042 () Bool)

(assert (=> bs!1917617 m!7999042))

(declare-fun m!7999044 () Bool)

(assert (=> bs!1917617 m!7999044))

(declare-fun m!7999046 () Bool)

(assert (=> bs!1917617 m!7999046))

(assert (=> b!7332925 d!2277152))

(declare-fun d!2277154 () Bool)

(assert (=> d!2277154 (= (isEmpty!40970 (exprs!8498 ct1!256)) (is-Nil!71430 (exprs!8498 ct1!256)))))

(assert (=> b!7332926 d!2277154))

(declare-fun d!2277156 () Bool)

(declare-fun nullableFct!3251 (Regex!19058) Bool)

(assert (=> d!2277156 (= (nullable!8159 (h!77878 (exprs!8498 ct1!256))) (nullableFct!3251 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun bs!1917618 () Bool)

(assert (= bs!1917618 d!2277156))

(declare-fun m!7999048 () Bool)

(assert (=> bs!1917618 m!7999048))

(assert (=> b!7332931 d!2277156))

(declare-fun b!7332998 () Bool)

(declare-fun e!4391050 () (Set Context!15996))

(declare-fun call!668232 () (Set Context!15996))

(declare-fun call!668237 () (Set Context!15996))

(assert (=> b!7332998 (= e!4391050 (set.union call!668232 call!668237))))

(declare-fun b!7332999 () Bool)

(declare-fun e!4391052 () (Set Context!15996))

(declare-fun call!668235 () (Set Context!15996))

(assert (=> b!7332999 (= e!4391052 (set.union call!668232 call!668235))))

(declare-fun b!7333000 () Bool)

(declare-fun e!4391049 () (Set Context!15996))

(assert (=> b!7333000 (= e!4391052 e!4391049)))

(declare-fun c!1361721 () Bool)

(assert (=> b!7333000 (= c!1361721 (is-Concat!27903 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun b!7333001 () Bool)

(declare-fun e!4391053 () (Set Context!15996))

(assert (=> b!7333001 (= e!4391053 (set.insert lt!2608414 (as set.empty (Set Context!15996))))))

(declare-fun b!7333002 () Bool)

(assert (=> b!7333002 (= e!4391053 e!4391050)))

(declare-fun c!1361718 () Bool)

(assert (=> b!7333002 (= c!1361718 (is-Union!19058 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun b!7333003 () Bool)

(declare-fun e!4391054 () (Set Context!15996))

(assert (=> b!7333003 (= e!4391054 (as set.empty (Set Context!15996)))))

(declare-fun b!7333004 () Bool)

(declare-fun call!668233 () (Set Context!15996))

(assert (=> b!7333004 (= e!4391049 call!668233)))

(declare-fun d!2277160 () Bool)

(declare-fun c!1361720 () Bool)

(assert (=> d!2277160 (= c!1361720 (and (is-ElementMatch!19058 (h!77878 (exprs!8498 ct1!256))) (= (c!1361702 (h!77878 (exprs!8498 ct1!256))) c!10305)))))

(assert (=> d!2277160 (= (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) lt!2608414 c!10305) e!4391053)))

(declare-fun b!7333005 () Bool)

(declare-fun c!1361719 () Bool)

(assert (=> b!7333005 (= c!1361719 (is-Star!19058 (h!77878 (exprs!8498 ct1!256))))))

(assert (=> b!7333005 (= e!4391049 e!4391054)))

(declare-fun bm!668227 () Bool)

(assert (=> bm!668227 (= call!668235 call!668237)))

(declare-fun b!7333006 () Bool)

(declare-fun c!1361717 () Bool)

(declare-fun e!4391051 () Bool)

(assert (=> b!7333006 (= c!1361717 e!4391051)))

(declare-fun res!2963363 () Bool)

(assert (=> b!7333006 (=> (not res!2963363) (not e!4391051))))

(assert (=> b!7333006 (= res!2963363 (is-Concat!27903 (h!77878 (exprs!8498 ct1!256))))))

(assert (=> b!7333006 (= e!4391050 e!4391052)))

(declare-fun bm!668228 () Bool)

(declare-fun call!668236 () List!71554)

(declare-fun call!668234 () List!71554)

(assert (=> bm!668228 (= call!668236 call!668234)))

(declare-fun b!7333007 () Bool)

(assert (=> b!7333007 (= e!4391054 call!668233)))

(declare-fun b!7333008 () Bool)

(assert (=> b!7333008 (= e!4391051 (nullable!8159 (regOne!38628 (h!77878 (exprs!8498 ct1!256)))))))

(declare-fun bm!668229 () Bool)

(declare-fun $colon$colon!3068 (List!71554 Regex!19058) List!71554)

(assert (=> bm!668229 (= call!668234 ($colon$colon!3068 (exprs!8498 lt!2608414) (ite (or c!1361717 c!1361721) (regTwo!38628 (h!77878 (exprs!8498 ct1!256))) (h!77878 (exprs!8498 ct1!256)))))))

(declare-fun bm!668230 () Bool)

(assert (=> bm!668230 (= call!668233 call!668235)))

(declare-fun bm!668231 () Bool)

(assert (=> bm!668231 (= call!668232 (derivationStepZipperDown!2885 (ite c!1361718 (regOne!38629 (h!77878 (exprs!8498 ct1!256))) (regOne!38628 (h!77878 (exprs!8498 ct1!256)))) (ite c!1361718 lt!2608414 (Context!15997 call!668234)) c!10305))))

(declare-fun bm!668232 () Bool)

(assert (=> bm!668232 (= call!668237 (derivationStepZipperDown!2885 (ite c!1361718 (regTwo!38629 (h!77878 (exprs!8498 ct1!256))) (ite c!1361717 (regTwo!38628 (h!77878 (exprs!8498 ct1!256))) (ite c!1361721 (regOne!38628 (h!77878 (exprs!8498 ct1!256))) (reg!19387 (h!77878 (exprs!8498 ct1!256)))))) (ite (or c!1361718 c!1361717) lt!2608414 (Context!15997 call!668236)) c!10305))))

(assert (= (and d!2277160 c!1361720) b!7333001))

(assert (= (and d!2277160 (not c!1361720)) b!7333002))

(assert (= (and b!7333002 c!1361718) b!7332998))

(assert (= (and b!7333002 (not c!1361718)) b!7333006))

(assert (= (and b!7333006 res!2963363) b!7333008))

(assert (= (and b!7333006 c!1361717) b!7332999))

(assert (= (and b!7333006 (not c!1361717)) b!7333000))

(assert (= (and b!7333000 c!1361721) b!7333004))

(assert (= (and b!7333000 (not c!1361721)) b!7333005))

(assert (= (and b!7333005 c!1361719) b!7333007))

(assert (= (and b!7333005 (not c!1361719)) b!7333003))

(assert (= (or b!7333004 b!7333007) bm!668228))

(assert (= (or b!7333004 b!7333007) bm!668230))

(assert (= (or b!7332999 bm!668230) bm!668227))

(assert (= (or b!7332999 bm!668228) bm!668229))

(assert (= (or b!7332998 bm!668227) bm!668232))

(assert (= (or b!7332998 b!7332999) bm!668231))

(declare-fun m!7999064 () Bool)

(assert (=> bm!668231 m!7999064))

(declare-fun m!7999066 () Bool)

(assert (=> bm!668232 m!7999066))

(declare-fun m!7999068 () Bool)

(assert (=> b!7333001 m!7999068))

(declare-fun m!7999070 () Bool)

(assert (=> bm!668229 m!7999070))

(declare-fun m!7999072 () Bool)

(assert (=> b!7333008 m!7999072))

(assert (=> b!7332931 d!2277160))

(declare-fun d!2277164 () Bool)

(assert (=> d!2277164 (= (tail!14739 (exprs!8498 ct1!256)) (t!385945 (exprs!8498 ct1!256)))))

(assert (=> b!7332931 d!2277164))

(declare-fun b!7333020 () Bool)

(declare-fun e!4391062 () (Set Context!15996))

(assert (=> b!7333020 (= e!4391062 (as set.empty (Set Context!15996)))))

(declare-fun bm!668235 () Bool)

(declare-fun call!668240 () (Set Context!15996))

(assert (=> bm!668235 (= call!668240 (derivationStepZipperDown!2885 (h!77878 (exprs!8498 lt!2608414)) (Context!15997 (t!385945 (exprs!8498 lt!2608414))) c!10305))))

(declare-fun e!4391063 () (Set Context!15996))

(declare-fun b!7333021 () Bool)

(assert (=> b!7333021 (= e!4391063 (set.union call!668240 (derivationStepZipperUp!2738 (Context!15997 (t!385945 (exprs!8498 lt!2608414))) c!10305)))))

(declare-fun d!2277166 () Bool)

(declare-fun c!1361726 () Bool)

(declare-fun e!4391061 () Bool)

(assert (=> d!2277166 (= c!1361726 e!4391061)))

(declare-fun res!2963366 () Bool)

(assert (=> d!2277166 (=> (not res!2963366) (not e!4391061))))

(assert (=> d!2277166 (= res!2963366 (is-Cons!71430 (exprs!8498 lt!2608414)))))

(assert (=> d!2277166 (= (derivationStepZipperUp!2738 lt!2608414 c!10305) e!4391063)))

(declare-fun b!7333019 () Bool)

(assert (=> b!7333019 (= e!4391062 call!668240)))

(declare-fun b!7333022 () Bool)

(assert (=> b!7333022 (= e!4391063 e!4391062)))

(declare-fun c!1361727 () Bool)

(assert (=> b!7333022 (= c!1361727 (is-Cons!71430 (exprs!8498 lt!2608414)))))

(declare-fun b!7333023 () Bool)

(assert (=> b!7333023 (= e!4391061 (nullable!8159 (h!77878 (exprs!8498 lt!2608414))))))

(assert (= (and d!2277166 res!2963366) b!7333023))

(assert (= (and d!2277166 c!1361726) b!7333021))

(assert (= (and d!2277166 (not c!1361726)) b!7333022))

(assert (= (and b!7333022 c!1361727) b!7333019))

(assert (= (and b!7333022 (not c!1361727)) b!7333020))

(assert (= (or b!7333021 b!7333019) bm!668235))

(declare-fun m!7999080 () Bool)

(assert (=> bm!668235 m!7999080))

(declare-fun m!7999082 () Bool)

(assert (=> b!7333021 m!7999082))

(declare-fun m!7999084 () Bool)

(assert (=> b!7333023 m!7999084))

(assert (=> b!7332933 d!2277166))

(declare-fun d!2277170 () Bool)

(assert (=> d!2277170 (= (isEmpty!40970 lt!2608410) (is-Nil!71430 lt!2608410))))

(assert (=> b!7332932 d!2277170))

(declare-fun b!7333024 () Bool)

(declare-fun e!4391065 () (Set Context!15996))

(declare-fun call!668241 () (Set Context!15996))

(declare-fun call!668246 () (Set Context!15996))

(assert (=> b!7333024 (= e!4391065 (set.union call!668241 call!668246))))

(declare-fun b!7333025 () Bool)

(declare-fun e!4391067 () (Set Context!15996))

(declare-fun call!668244 () (Set Context!15996))

(assert (=> b!7333025 (= e!4391067 (set.union call!668241 call!668244))))

(declare-fun b!7333026 () Bool)

(declare-fun e!4391064 () (Set Context!15996))

(assert (=> b!7333026 (= e!4391067 e!4391064)))

(declare-fun c!1361732 () Bool)

(assert (=> b!7333026 (= c!1361732 (is-Concat!27903 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun b!7333027 () Bool)

(declare-fun e!4391068 () (Set Context!15996))

(assert (=> b!7333027 (= e!4391068 (set.insert (Context!15997 (++!16880 lt!2608418 (exprs!8498 ct2!352))) (as set.empty (Set Context!15996))))))

(declare-fun b!7333028 () Bool)

(assert (=> b!7333028 (= e!4391068 e!4391065)))

(declare-fun c!1361729 () Bool)

(assert (=> b!7333028 (= c!1361729 (is-Union!19058 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun b!7333029 () Bool)

(declare-fun e!4391069 () (Set Context!15996))

(assert (=> b!7333029 (= e!4391069 (as set.empty (Set Context!15996)))))

(declare-fun b!7333030 () Bool)

(declare-fun call!668242 () (Set Context!15996))

(assert (=> b!7333030 (= e!4391064 call!668242)))

(declare-fun d!2277172 () Bool)

(declare-fun c!1361731 () Bool)

(assert (=> d!2277172 (= c!1361731 (and (is-ElementMatch!19058 (h!77878 (exprs!8498 ct1!256))) (= (c!1361702 (h!77878 (exprs!8498 ct1!256))) c!10305)))))

(assert (=> d!2277172 (= (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) (Context!15997 (++!16880 lt!2608418 (exprs!8498 ct2!352))) c!10305) e!4391068)))

(declare-fun b!7333031 () Bool)

(declare-fun c!1361730 () Bool)

(assert (=> b!7333031 (= c!1361730 (is-Star!19058 (h!77878 (exprs!8498 ct1!256))))))

(assert (=> b!7333031 (= e!4391064 e!4391069)))

(declare-fun bm!668236 () Bool)

(assert (=> bm!668236 (= call!668244 call!668246)))

(declare-fun b!7333032 () Bool)

(declare-fun c!1361728 () Bool)

(declare-fun e!4391066 () Bool)

(assert (=> b!7333032 (= c!1361728 e!4391066)))

(declare-fun res!2963367 () Bool)

(assert (=> b!7333032 (=> (not res!2963367) (not e!4391066))))

(assert (=> b!7333032 (= res!2963367 (is-Concat!27903 (h!77878 (exprs!8498 ct1!256))))))

(assert (=> b!7333032 (= e!4391065 e!4391067)))

(declare-fun bm!668237 () Bool)

(declare-fun call!668245 () List!71554)

(declare-fun call!668243 () List!71554)

(assert (=> bm!668237 (= call!668245 call!668243)))

(declare-fun b!7333033 () Bool)

(assert (=> b!7333033 (= e!4391069 call!668242)))

(declare-fun b!7333034 () Bool)

(assert (=> b!7333034 (= e!4391066 (nullable!8159 (regOne!38628 (h!77878 (exprs!8498 ct1!256)))))))

(declare-fun bm!668238 () Bool)

(assert (=> bm!668238 (= call!668243 ($colon$colon!3068 (exprs!8498 (Context!15997 (++!16880 lt!2608418 (exprs!8498 ct2!352)))) (ite (or c!1361728 c!1361732) (regTwo!38628 (h!77878 (exprs!8498 ct1!256))) (h!77878 (exprs!8498 ct1!256)))))))

(declare-fun bm!668239 () Bool)

(assert (=> bm!668239 (= call!668242 call!668244)))

(declare-fun bm!668240 () Bool)

(assert (=> bm!668240 (= call!668241 (derivationStepZipperDown!2885 (ite c!1361729 (regOne!38629 (h!77878 (exprs!8498 ct1!256))) (regOne!38628 (h!77878 (exprs!8498 ct1!256)))) (ite c!1361729 (Context!15997 (++!16880 lt!2608418 (exprs!8498 ct2!352))) (Context!15997 call!668243)) c!10305))))

(declare-fun bm!668241 () Bool)

(assert (=> bm!668241 (= call!668246 (derivationStepZipperDown!2885 (ite c!1361729 (regTwo!38629 (h!77878 (exprs!8498 ct1!256))) (ite c!1361728 (regTwo!38628 (h!77878 (exprs!8498 ct1!256))) (ite c!1361732 (regOne!38628 (h!77878 (exprs!8498 ct1!256))) (reg!19387 (h!77878 (exprs!8498 ct1!256)))))) (ite (or c!1361729 c!1361728) (Context!15997 (++!16880 lt!2608418 (exprs!8498 ct2!352))) (Context!15997 call!668245)) c!10305))))

(assert (= (and d!2277172 c!1361731) b!7333027))

(assert (= (and d!2277172 (not c!1361731)) b!7333028))

(assert (= (and b!7333028 c!1361729) b!7333024))

(assert (= (and b!7333028 (not c!1361729)) b!7333032))

(assert (= (and b!7333032 res!2963367) b!7333034))

(assert (= (and b!7333032 c!1361728) b!7333025))

(assert (= (and b!7333032 (not c!1361728)) b!7333026))

(assert (= (and b!7333026 c!1361732) b!7333030))

(assert (= (and b!7333026 (not c!1361732)) b!7333031))

(assert (= (and b!7333031 c!1361730) b!7333033))

(assert (= (and b!7333031 (not c!1361730)) b!7333029))

(assert (= (or b!7333030 b!7333033) bm!668237))

(assert (= (or b!7333030 b!7333033) bm!668239))

(assert (= (or b!7333025 bm!668239) bm!668236))

(assert (= (or b!7333025 bm!668237) bm!668238))

(assert (= (or b!7333024 bm!668236) bm!668241))

(assert (= (or b!7333024 b!7333025) bm!668240))

(declare-fun m!7999086 () Bool)

(assert (=> bm!668240 m!7999086))

(declare-fun m!7999088 () Bool)

(assert (=> bm!668241 m!7999088))

(declare-fun m!7999090 () Bool)

(assert (=> b!7333027 m!7999090))

(declare-fun m!7999092 () Bool)

(assert (=> bm!668238 m!7999092))

(assert (=> b!7333034 m!7999072))

(assert (=> b!7332927 d!2277172))

(declare-fun bs!1917620 () Bool)

(declare-fun d!2277174 () Bool)

(assert (= bs!1917620 (and d!2277174 b!7332929)))

(declare-fun lambda!454893 () Int)

(assert (=> bs!1917620 (= lambda!454893 lambda!454872)))

(declare-fun bs!1917621 () Bool)

(assert (= bs!1917621 (and d!2277174 d!2277146)))

(assert (=> bs!1917621 (= lambda!454893 lambda!454888)))

(assert (=> d!2277174 (set.member (Context!15997 (++!16880 (exprs!8498 cWitness!35) (exprs!8498 ct2!352))) (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) (Context!15997 (++!16880 (exprs!8498 lt!2608414) (exprs!8498 ct2!352))) c!10305))))

(declare-fun lt!2608488 () Unit!165077)

(assert (=> d!2277174 (= lt!2608488 (lemmaConcatPreservesForall!1737 (exprs!8498 lt!2608414) (exprs!8498 ct2!352) lambda!454893))))

(declare-fun lt!2608487 () Unit!165077)

(assert (=> d!2277174 (= lt!2608487 (lemmaConcatPreservesForall!1737 (exprs!8498 cWitness!35) (exprs!8498 ct2!352) lambda!454893))))

(declare-fun lt!2608486 () Unit!165077)

(declare-fun choose!57039 (Regex!19058 Context!15996 Context!15996 Context!15996 C!38390) Unit!165077)

(assert (=> d!2277174 (= lt!2608486 (choose!57039 (h!77878 (exprs!8498 ct1!256)) lt!2608414 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9661 (Regex!19058) Bool)

(assert (=> d!2277174 (validRegex!9661 (h!77878 (exprs!8498 ct1!256)))))

(assert (=> d!2277174 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!29 (h!77878 (exprs!8498 ct1!256)) lt!2608414 ct2!352 cWitness!35 c!10305) lt!2608486)))

(declare-fun bs!1917622 () Bool)

(assert (= bs!1917622 d!2277174))

(declare-fun m!7999094 () Bool)

(assert (=> bs!1917622 m!7999094))

(declare-fun m!7999096 () Bool)

(assert (=> bs!1917622 m!7999096))

(declare-fun m!7999098 () Bool)

(assert (=> bs!1917622 m!7999098))

(assert (=> bs!1917622 m!7998960))

(declare-fun m!7999100 () Bool)

(assert (=> bs!1917622 m!7999100))

(declare-fun m!7999102 () Bool)

(assert (=> bs!1917622 m!7999102))

(declare-fun m!7999104 () Bool)

(assert (=> bs!1917622 m!7999104))

(declare-fun m!7999106 () Bool)

(assert (=> bs!1917622 m!7999106))

(assert (=> b!7332927 d!2277174))

(declare-fun d!2277176 () Bool)

(assert (=> d!2277176 (= (tail!14739 lt!2608410) (t!385945 lt!2608410))))

(assert (=> b!7332927 d!2277176))

(declare-fun b!7333060 () Bool)

(declare-fun res!2963376 () Bool)

(declare-fun e!4391084 () Bool)

(assert (=> b!7333060 (=> (not res!2963376) (not e!4391084))))

(declare-fun lt!2608491 () List!71554)

(declare-fun size!41965 (List!71554) Int)

(assert (=> b!7333060 (= res!2963376 (= (size!41965 lt!2608491) (+ (size!41965 (exprs!8498 cWitness!35)) (size!41965 (exprs!8498 ct2!352)))))))

(declare-fun b!7333059 () Bool)

(declare-fun e!4391083 () List!71554)

(assert (=> b!7333059 (= e!4391083 (Cons!71430 (h!77878 (exprs!8498 cWitness!35)) (++!16880 (t!385945 (exprs!8498 cWitness!35)) (exprs!8498 ct2!352))))))

(declare-fun b!7333061 () Bool)

(assert (=> b!7333061 (= e!4391084 (or (not (= (exprs!8498 ct2!352) Nil!71430)) (= lt!2608491 (exprs!8498 cWitness!35))))))

(declare-fun b!7333058 () Bool)

(assert (=> b!7333058 (= e!4391083 (exprs!8498 ct2!352))))

(declare-fun d!2277178 () Bool)

(assert (=> d!2277178 e!4391084))

(declare-fun res!2963375 () Bool)

(assert (=> d!2277178 (=> (not res!2963375) (not e!4391084))))

(declare-fun content!14986 (List!71554) (Set Regex!19058))

(assert (=> d!2277178 (= res!2963375 (= (content!14986 lt!2608491) (set.union (content!14986 (exprs!8498 cWitness!35)) (content!14986 (exprs!8498 ct2!352)))))))

(assert (=> d!2277178 (= lt!2608491 e!4391083)))

(declare-fun c!1361742 () Bool)

(assert (=> d!2277178 (= c!1361742 (is-Nil!71430 (exprs!8498 cWitness!35)))))

(assert (=> d!2277178 (= (++!16880 (exprs!8498 cWitness!35) (exprs!8498 ct2!352)) lt!2608491)))

(assert (= (and d!2277178 c!1361742) b!7333058))

(assert (= (and d!2277178 (not c!1361742)) b!7333059))

(assert (= (and d!2277178 res!2963375) b!7333060))

(assert (= (and b!7333060 res!2963376) b!7333061))

(declare-fun m!7999114 () Bool)

(assert (=> b!7333060 m!7999114))

(declare-fun m!7999116 () Bool)

(assert (=> b!7333060 m!7999116))

(declare-fun m!7999118 () Bool)

(assert (=> b!7333060 m!7999118))

(declare-fun m!7999120 () Bool)

(assert (=> b!7333059 m!7999120))

(declare-fun m!7999122 () Bool)

(assert (=> d!2277178 m!7999122))

(declare-fun m!7999124 () Bool)

(assert (=> d!2277178 m!7999124))

(declare-fun m!7999126 () Bool)

(assert (=> d!2277178 m!7999126))

(assert (=> b!7332927 d!2277178))

(declare-fun d!2277186 () Bool)

(assert (=> d!2277186 (forall!17895 (++!16880 lt!2608418 (exprs!8498 ct2!352)) lambda!454872)))

(declare-fun lt!2608492 () Unit!165077)

(assert (=> d!2277186 (= lt!2608492 (choose!57038 lt!2608418 (exprs!8498 ct2!352) lambda!454872))))

(assert (=> d!2277186 (forall!17895 lt!2608418 lambda!454872)))

(assert (=> d!2277186 (= (lemmaConcatPreservesForall!1737 lt!2608418 (exprs!8498 ct2!352) lambda!454872) lt!2608492)))

(declare-fun bs!1917623 () Bool)

(assert (= bs!1917623 d!2277186))

(assert (=> bs!1917623 m!7998962))

(assert (=> bs!1917623 m!7998962))

(declare-fun m!7999128 () Bool)

(assert (=> bs!1917623 m!7999128))

(declare-fun m!7999130 () Bool)

(assert (=> bs!1917623 m!7999130))

(declare-fun m!7999132 () Bool)

(assert (=> bs!1917623 m!7999132))

(assert (=> b!7332927 d!2277186))

(declare-fun b!7333062 () Bool)

(declare-fun e!4391086 () (Set Context!15996))

(declare-fun call!668250 () (Set Context!15996))

(declare-fun call!668255 () (Set Context!15996))

(assert (=> b!7333062 (= e!4391086 (set.union call!668250 call!668255))))

(declare-fun b!7333063 () Bool)

(declare-fun e!4391088 () (Set Context!15996))

(declare-fun call!668253 () (Set Context!15996))

(assert (=> b!7333063 (= e!4391088 (set.union call!668250 call!668253))))

(declare-fun b!7333064 () Bool)

(declare-fun e!4391085 () (Set Context!15996))

(assert (=> b!7333064 (= e!4391088 e!4391085)))

(declare-fun c!1361747 () Bool)

(assert (=> b!7333064 (= c!1361747 (is-Concat!27903 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun b!7333065 () Bool)

(declare-fun e!4391089 () (Set Context!15996))

(assert (=> b!7333065 (= e!4391089 (set.insert (Context!15997 (tail!14739 lt!2608410)) (as set.empty (Set Context!15996))))))

(declare-fun b!7333066 () Bool)

(assert (=> b!7333066 (= e!4391089 e!4391086)))

(declare-fun c!1361744 () Bool)

(assert (=> b!7333066 (= c!1361744 (is-Union!19058 (h!77878 (exprs!8498 ct1!256))))))

(declare-fun b!7333067 () Bool)

(declare-fun e!4391090 () (Set Context!15996))

(assert (=> b!7333067 (= e!4391090 (as set.empty (Set Context!15996)))))

(declare-fun b!7333068 () Bool)

(declare-fun call!668251 () (Set Context!15996))

(assert (=> b!7333068 (= e!4391085 call!668251)))

(declare-fun d!2277188 () Bool)

(declare-fun c!1361746 () Bool)

(assert (=> d!2277188 (= c!1361746 (and (is-ElementMatch!19058 (h!77878 (exprs!8498 ct1!256))) (= (c!1361702 (h!77878 (exprs!8498 ct1!256))) c!10305)))))

(assert (=> d!2277188 (= (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) (Context!15997 (tail!14739 lt!2608410)) c!10305) e!4391089)))

(declare-fun b!7333069 () Bool)

(declare-fun c!1361745 () Bool)

(assert (=> b!7333069 (= c!1361745 (is-Star!19058 (h!77878 (exprs!8498 ct1!256))))))

(assert (=> b!7333069 (= e!4391085 e!4391090)))

(declare-fun bm!668245 () Bool)

(assert (=> bm!668245 (= call!668253 call!668255)))

(declare-fun b!7333070 () Bool)

(declare-fun c!1361743 () Bool)

(declare-fun e!4391087 () Bool)

(assert (=> b!7333070 (= c!1361743 e!4391087)))

(declare-fun res!2963377 () Bool)

(assert (=> b!7333070 (=> (not res!2963377) (not e!4391087))))

(assert (=> b!7333070 (= res!2963377 (is-Concat!27903 (h!77878 (exprs!8498 ct1!256))))))

(assert (=> b!7333070 (= e!4391086 e!4391088)))

(declare-fun bm!668246 () Bool)

(declare-fun call!668254 () List!71554)

(declare-fun call!668252 () List!71554)

(assert (=> bm!668246 (= call!668254 call!668252)))

(declare-fun b!7333071 () Bool)

(assert (=> b!7333071 (= e!4391090 call!668251)))

(declare-fun b!7333072 () Bool)

(assert (=> b!7333072 (= e!4391087 (nullable!8159 (regOne!38628 (h!77878 (exprs!8498 ct1!256)))))))

(declare-fun bm!668247 () Bool)

(assert (=> bm!668247 (= call!668252 ($colon$colon!3068 (exprs!8498 (Context!15997 (tail!14739 lt!2608410))) (ite (or c!1361743 c!1361747) (regTwo!38628 (h!77878 (exprs!8498 ct1!256))) (h!77878 (exprs!8498 ct1!256)))))))

(declare-fun bm!668248 () Bool)

(assert (=> bm!668248 (= call!668251 call!668253)))

(declare-fun bm!668249 () Bool)

(assert (=> bm!668249 (= call!668250 (derivationStepZipperDown!2885 (ite c!1361744 (regOne!38629 (h!77878 (exprs!8498 ct1!256))) (regOne!38628 (h!77878 (exprs!8498 ct1!256)))) (ite c!1361744 (Context!15997 (tail!14739 lt!2608410)) (Context!15997 call!668252)) c!10305))))

(declare-fun bm!668250 () Bool)

(assert (=> bm!668250 (= call!668255 (derivationStepZipperDown!2885 (ite c!1361744 (regTwo!38629 (h!77878 (exprs!8498 ct1!256))) (ite c!1361743 (regTwo!38628 (h!77878 (exprs!8498 ct1!256))) (ite c!1361747 (regOne!38628 (h!77878 (exprs!8498 ct1!256))) (reg!19387 (h!77878 (exprs!8498 ct1!256)))))) (ite (or c!1361744 c!1361743) (Context!15997 (tail!14739 lt!2608410)) (Context!15997 call!668254)) c!10305))))

(assert (= (and d!2277188 c!1361746) b!7333065))

(assert (= (and d!2277188 (not c!1361746)) b!7333066))

(assert (= (and b!7333066 c!1361744) b!7333062))

(assert (= (and b!7333066 (not c!1361744)) b!7333070))

(assert (= (and b!7333070 res!2963377) b!7333072))

(assert (= (and b!7333070 c!1361743) b!7333063))

(assert (= (and b!7333070 (not c!1361743)) b!7333064))

(assert (= (and b!7333064 c!1361747) b!7333068))

(assert (= (and b!7333064 (not c!1361747)) b!7333069))

(assert (= (and b!7333069 c!1361745) b!7333071))

(assert (= (and b!7333069 (not c!1361745)) b!7333067))

(assert (= (or b!7333068 b!7333071) bm!668246))

(assert (= (or b!7333068 b!7333071) bm!668248))

(assert (= (or b!7333063 bm!668248) bm!668245))

(assert (= (or b!7333063 bm!668246) bm!668247))

(assert (= (or b!7333062 bm!668245) bm!668250))

(assert (= (or b!7333062 b!7333063) bm!668249))

(declare-fun m!7999134 () Bool)

(assert (=> bm!668249 m!7999134))

(declare-fun m!7999136 () Bool)

(assert (=> bm!668250 m!7999136))

(declare-fun m!7999138 () Bool)

(assert (=> b!7333065 m!7999138))

(declare-fun m!7999140 () Bool)

(assert (=> bm!668247 m!7999140))

(assert (=> b!7333072 m!7999072))

(assert (=> b!7332927 d!2277188))

(assert (=> b!7332927 d!2277152))

(declare-fun b!7333075 () Bool)

(declare-fun res!2963379 () Bool)

(declare-fun e!4391092 () Bool)

(assert (=> b!7333075 (=> (not res!2963379) (not e!4391092))))

(declare-fun lt!2608493 () List!71554)

(assert (=> b!7333075 (= res!2963379 (= (size!41965 lt!2608493) (+ (size!41965 lt!2608418) (size!41965 (exprs!8498 ct2!352)))))))

(declare-fun b!7333074 () Bool)

(declare-fun e!4391091 () List!71554)

(assert (=> b!7333074 (= e!4391091 (Cons!71430 (h!77878 lt!2608418) (++!16880 (t!385945 lt!2608418) (exprs!8498 ct2!352))))))

(declare-fun b!7333076 () Bool)

(assert (=> b!7333076 (= e!4391092 (or (not (= (exprs!8498 ct2!352) Nil!71430)) (= lt!2608493 lt!2608418)))))

(declare-fun b!7333073 () Bool)

(assert (=> b!7333073 (= e!4391091 (exprs!8498 ct2!352))))

(declare-fun d!2277190 () Bool)

(assert (=> d!2277190 e!4391092))

(declare-fun res!2963378 () Bool)

(assert (=> d!2277190 (=> (not res!2963378) (not e!4391092))))

(assert (=> d!2277190 (= res!2963378 (= (content!14986 lt!2608493) (set.union (content!14986 lt!2608418) (content!14986 (exprs!8498 ct2!352)))))))

(assert (=> d!2277190 (= lt!2608493 e!4391091)))

(declare-fun c!1361748 () Bool)

(assert (=> d!2277190 (= c!1361748 (is-Nil!71430 lt!2608418))))

(assert (=> d!2277190 (= (++!16880 lt!2608418 (exprs!8498 ct2!352)) lt!2608493)))

(assert (= (and d!2277190 c!1361748) b!7333073))

(assert (= (and d!2277190 (not c!1361748)) b!7333074))

(assert (= (and d!2277190 res!2963378) b!7333075))

(assert (= (and b!7333075 res!2963379) b!7333076))

(declare-fun m!7999142 () Bool)

(assert (=> b!7333075 m!7999142))

(declare-fun m!7999144 () Bool)

(assert (=> b!7333075 m!7999144))

(assert (=> b!7333075 m!7999118))

(declare-fun m!7999146 () Bool)

(assert (=> b!7333074 m!7999146))

(declare-fun m!7999148 () Bool)

(assert (=> d!2277190 m!7999148))

(declare-fun m!7999150 () Bool)

(assert (=> d!2277190 m!7999150))

(assert (=> d!2277190 m!7999126))

(assert (=> b!7332927 d!2277190))

(declare-fun b!7333078 () Bool)

(declare-fun e!4391094 () (Set Context!15996))

(assert (=> b!7333078 (= e!4391094 (as set.empty (Set Context!15996)))))

(declare-fun bm!668251 () Bool)

(declare-fun call!668256 () (Set Context!15996))

(assert (=> bm!668251 (= call!668256 (derivationStepZipperDown!2885 (h!77878 (exprs!8498 ct1!256)) (Context!15997 (t!385945 (exprs!8498 ct1!256))) c!10305))))

(declare-fun b!7333079 () Bool)

(declare-fun e!4391095 () (Set Context!15996))

(assert (=> b!7333079 (= e!4391095 (set.union call!668256 (derivationStepZipperUp!2738 (Context!15997 (t!385945 (exprs!8498 ct1!256))) c!10305)))))

(declare-fun d!2277192 () Bool)

(declare-fun c!1361749 () Bool)

(declare-fun e!4391093 () Bool)

(assert (=> d!2277192 (= c!1361749 e!4391093)))

(declare-fun res!2963380 () Bool)

(assert (=> d!2277192 (=> (not res!2963380) (not e!4391093))))

(assert (=> d!2277192 (= res!2963380 (is-Cons!71430 (exprs!8498 ct1!256)))))

(assert (=> d!2277192 (= (derivationStepZipperUp!2738 ct1!256 c!10305) e!4391095)))

(declare-fun b!7333077 () Bool)

(assert (=> b!7333077 (= e!4391094 call!668256)))

(declare-fun b!7333080 () Bool)

(assert (=> b!7333080 (= e!4391095 e!4391094)))

(declare-fun c!1361750 () Bool)

(assert (=> b!7333080 (= c!1361750 (is-Cons!71430 (exprs!8498 ct1!256)))))

(declare-fun b!7333081 () Bool)

(assert (=> b!7333081 (= e!4391093 (nullable!8159 (h!77878 (exprs!8498 ct1!256))))))

(assert (= (and d!2277192 res!2963380) b!7333081))

(assert (= (and d!2277192 c!1361749) b!7333079))

(assert (= (and d!2277192 (not c!1361749)) b!7333080))

(assert (= (and b!7333080 c!1361750) b!7333077))

(assert (= (and b!7333080 (not c!1361750)) b!7333078))

(assert (= (or b!7333079 b!7333077) bm!668251))

(declare-fun m!7999152 () Bool)

(assert (=> bm!668251 m!7999152))

(declare-fun m!7999154 () Bool)

(assert (=> b!7333079 m!7999154))

(assert (=> b!7333081 m!7998946))

(assert (=> start!716166 d!2277192))

(declare-fun bs!1917624 () Bool)

(declare-fun d!2277194 () Bool)

(assert (= bs!1917624 (and d!2277194 b!7332929)))

(declare-fun lambda!454894 () Int)

(assert (=> bs!1917624 (= lambda!454894 lambda!454872)))

(declare-fun bs!1917625 () Bool)

(assert (= bs!1917625 (and d!2277194 d!2277146)))

(assert (=> bs!1917625 (= lambda!454894 lambda!454888)))

(declare-fun bs!1917626 () Bool)

(assert (= bs!1917626 (and d!2277194 d!2277174)))

(assert (=> bs!1917626 (= lambda!454894 lambda!454893)))

(assert (=> d!2277194 (= (inv!90986 cWitness!35) (forall!17895 (exprs!8498 cWitness!35) lambda!454894))))

(declare-fun bs!1917627 () Bool)

(assert (= bs!1917627 d!2277194))

(declare-fun m!7999156 () Bool)

(assert (=> bs!1917627 m!7999156))

(assert (=> start!716166 d!2277194))

(declare-fun bs!1917628 () Bool)

(declare-fun d!2277196 () Bool)

(assert (= bs!1917628 (and d!2277196 b!7332929)))

(declare-fun lambda!454895 () Int)

(assert (=> bs!1917628 (= lambda!454895 lambda!454872)))

(declare-fun bs!1917629 () Bool)

(assert (= bs!1917629 (and d!2277196 d!2277146)))

(assert (=> bs!1917629 (= lambda!454895 lambda!454888)))

(declare-fun bs!1917630 () Bool)

(assert (= bs!1917630 (and d!2277196 d!2277174)))

(assert (=> bs!1917630 (= lambda!454895 lambda!454893)))

(declare-fun bs!1917631 () Bool)

(assert (= bs!1917631 (and d!2277196 d!2277194)))

(assert (=> bs!1917631 (= lambda!454895 lambda!454894)))

(assert (=> d!2277196 (= (inv!90986 ct1!256) (forall!17895 (exprs!8498 ct1!256) lambda!454895))))

(declare-fun bs!1917632 () Bool)

(assert (= bs!1917632 d!2277196))

(declare-fun m!7999158 () Bool)

(assert (=> bs!1917632 m!7999158))

(assert (=> start!716166 d!2277196))

(declare-fun bs!1917633 () Bool)

(declare-fun d!2277198 () Bool)

(assert (= bs!1917633 (and d!2277198 d!2277174)))

(declare-fun lambda!454896 () Int)

(assert (=> bs!1917633 (= lambda!454896 lambda!454893)))

(declare-fun bs!1917634 () Bool)

(assert (= bs!1917634 (and d!2277198 d!2277194)))

(assert (=> bs!1917634 (= lambda!454896 lambda!454894)))

(declare-fun bs!1917635 () Bool)

(assert (= bs!1917635 (and d!2277198 b!7332929)))

(assert (=> bs!1917635 (= lambda!454896 lambda!454872)))

(declare-fun bs!1917636 () Bool)

(assert (= bs!1917636 (and d!2277198 d!2277146)))

(assert (=> bs!1917636 (= lambda!454896 lambda!454888)))

(declare-fun bs!1917637 () Bool)

(assert (= bs!1917637 (and d!2277198 d!2277196)))

(assert (=> bs!1917637 (= lambda!454896 lambda!454895)))

(assert (=> d!2277198 (= (inv!90986 ct2!352) (forall!17895 (exprs!8498 ct2!352) lambda!454896))))

(declare-fun bs!1917638 () Bool)

(assert (= bs!1917638 d!2277198))

(declare-fun m!7999160 () Bool)

(assert (=> bs!1917638 m!7999160))

(assert (=> start!716166 d!2277198))

(declare-fun b!7333084 () Bool)

(declare-fun res!2963382 () Bool)

(declare-fun e!4391097 () Bool)

(assert (=> b!7333084 (=> (not res!2963382) (not e!4391097))))

(declare-fun lt!2608494 () List!71554)

(assert (=> b!7333084 (= res!2963382 (= (size!41965 lt!2608494) (+ (size!41965 (exprs!8498 ct1!256)) (size!41965 (exprs!8498 ct2!352)))))))

(declare-fun b!7333083 () Bool)

(declare-fun e!4391096 () List!71554)

(assert (=> b!7333083 (= e!4391096 (Cons!71430 (h!77878 (exprs!8498 ct1!256)) (++!16880 (t!385945 (exprs!8498 ct1!256)) (exprs!8498 ct2!352))))))

(declare-fun b!7333085 () Bool)

(assert (=> b!7333085 (= e!4391097 (or (not (= (exprs!8498 ct2!352) Nil!71430)) (= lt!2608494 (exprs!8498 ct1!256))))))

(declare-fun b!7333082 () Bool)

(assert (=> b!7333082 (= e!4391096 (exprs!8498 ct2!352))))

(declare-fun d!2277200 () Bool)

(assert (=> d!2277200 e!4391097))

(declare-fun res!2963381 () Bool)

(assert (=> d!2277200 (=> (not res!2963381) (not e!4391097))))

(assert (=> d!2277200 (= res!2963381 (= (content!14986 lt!2608494) (set.union (content!14986 (exprs!8498 ct1!256)) (content!14986 (exprs!8498 ct2!352)))))))

(assert (=> d!2277200 (= lt!2608494 e!4391096)))

(declare-fun c!1361751 () Bool)

(assert (=> d!2277200 (= c!1361751 (is-Nil!71430 (exprs!8498 ct1!256)))))

(assert (=> d!2277200 (= (++!16880 (exprs!8498 ct1!256) (exprs!8498 ct2!352)) lt!2608494)))

(assert (= (and d!2277200 c!1361751) b!7333082))

(assert (= (and d!2277200 (not c!1361751)) b!7333083))

(assert (= (and d!2277200 res!2963381) b!7333084))

(assert (= (and b!7333084 res!2963382) b!7333085))

(declare-fun m!7999162 () Bool)

(assert (=> b!7333084 m!7999162))

(declare-fun m!7999164 () Bool)

(assert (=> b!7333084 m!7999164))

(assert (=> b!7333084 m!7999118))

(declare-fun m!7999166 () Bool)

(assert (=> b!7333083 m!7999166))

(declare-fun m!7999168 () Bool)

(assert (=> d!2277200 m!7999168))

(declare-fun m!7999170 () Bool)

(assert (=> d!2277200 m!7999170))

(assert (=> d!2277200 m!7999126))

(assert (=> b!7332929 d!2277200))

(assert (=> b!7332929 d!2277148))

(declare-fun b!7333090 () Bool)

(declare-fun e!4391100 () Bool)

(declare-fun tp!2081834 () Bool)

(declare-fun tp!2081835 () Bool)

(assert (=> b!7333090 (= e!4391100 (and tp!2081834 tp!2081835))))

(assert (=> b!7332930 (= tp!2081819 e!4391100)))

(assert (= (and b!7332930 (is-Cons!71430 (exprs!8498 ct1!256))) b!7333090))

(declare-fun b!7333091 () Bool)

(declare-fun e!4391101 () Bool)

(declare-fun tp!2081836 () Bool)

(declare-fun tp!2081837 () Bool)

(assert (=> b!7333091 (= e!4391101 (and tp!2081836 tp!2081837))))

(assert (=> b!7332924 (= tp!2081820 e!4391101)))

(assert (= (and b!7332924 (is-Cons!71430 (exprs!8498 ct2!352))) b!7333091))

(declare-fun b!7333092 () Bool)

(declare-fun e!4391102 () Bool)

(declare-fun tp!2081838 () Bool)

(declare-fun tp!2081839 () Bool)

(assert (=> b!7333092 (= e!4391102 (and tp!2081838 tp!2081839))))

(assert (=> b!7332928 (= tp!2081818 e!4391102)))

(assert (= (and b!7332928 (is-Cons!71430 (exprs!8498 cWitness!35))) b!7333092))

(push 1)

(assert (not bm!668241))

(assert (not b!7333021))

(assert (not b!7333090))

(assert (not d!2277196))

(assert (not d!2277146))

(assert (not d!2277194))

(assert (not b!7333074))

(assert (not d!2277198))

(assert (not bm!668229))

(assert tp_is_empty!48361)

(assert (not b!7333075))

(assert (not b!7333034))

(assert (not bm!668235))

(assert (not d!2277200))

(assert (not bm!668250))

(assert (not bm!668251))

(assert (not d!2277174))

(assert (not d!2277190))

(assert (not d!2277156))

(assert (not bm!668231))

(assert (not b!7333059))

(assert (not b!7333084))

(assert (not b!7333081))

(assert (not b!7333083))

(assert (not b!7333079))

(assert (not d!2277178))

(assert (not bm!668249))

(assert (not b!7333060))

(assert (not d!2277152))

(assert (not b!7333072))

(assert (not bm!668232))

(assert (not bm!668238))

(assert (not b!7333008))

(assert (not b!7333092))

(assert (not d!2277186))

(assert (not b!7333023))

(assert (not bm!668247))

(assert (not bm!668240))

(assert (not d!2277148))

(assert (not b!7333091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

