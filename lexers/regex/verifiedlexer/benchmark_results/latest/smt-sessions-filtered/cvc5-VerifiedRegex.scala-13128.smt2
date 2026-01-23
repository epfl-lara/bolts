; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717450 () Bool)

(assert start!717450)

(declare-fun b!7346494 () Bool)

(declare-fun e!4398924 () Bool)

(declare-fun tp!2086428 () Bool)

(declare-fun tp!2086426 () Bool)

(assert (=> b!7346494 (= e!4398924 (and tp!2086428 tp!2086426))))

(declare-fun b!7346495 () Bool)

(declare-fun e!4398927 () Bool)

(declare-fun e!4398926 () Bool)

(assert (=> b!7346495 (= e!4398927 e!4398926)))

(declare-fun res!2967229 () Bool)

(assert (=> b!7346495 (=> (not res!2967229) (not e!4398926))))

(declare-datatypes ((C!38562 0))(
  ( (C!38563 (val!29641 Int)) )
))
(declare-datatypes ((Regex!19144 0))(
  ( (ElementMatch!19144 (c!1364728 C!38562)) (Concat!27989 (regOne!38800 Regex!19144) (regTwo!38800 Regex!19144)) (EmptyExpr!19144) (Star!19144 (reg!19473 Regex!19144)) (EmptyLang!19144) (Union!19144 (regOne!38801 Regex!19144) (regTwo!38801 Regex!19144)) )
))
(declare-datatypes ((List!71640 0))(
  ( (Nil!71516) (Cons!71516 (h!77964 Regex!19144) (t!386041 List!71640)) )
))
(declare-datatypes ((Context!16168 0))(
  ( (Context!16169 (exprs!8584 List!71640)) )
))
(declare-fun cWitness!61 () Context!16168)

(declare-fun lt!2611239 () (Set Context!16168))

(assert (=> b!7346495 (= res!2967229 (set.member cWitness!61 lt!2611239))))

(declare-fun r1!2370 () Regex!19144)

(declare-fun c!10362 () C!38562)

(declare-fun ct1!282 () Context!16168)

(declare-fun derivationStepZipperDown!2970 (Regex!19144 Context!16168 C!38562) (Set Context!16168))

(assert (=> b!7346495 (= lt!2611239 (derivationStepZipperDown!2970 r1!2370 ct1!282 c!10362))))

(declare-fun b!7346496 () Bool)

(declare-fun res!2967223 () Bool)

(declare-fun e!4398920 () Bool)

(assert (=> b!7346496 (=> (not res!2967223) (not e!4398920))))

(declare-fun validRegex!9740 (Regex!19144) Bool)

(assert (=> b!7346496 (= res!2967223 (validRegex!9740 (regTwo!38800 r1!2370)))))

(declare-fun b!7346497 () Bool)

(declare-fun tp_is_empty!48533 () Bool)

(assert (=> b!7346497 (= e!4398924 tp_is_empty!48533)))

(declare-fun b!7346498 () Bool)

(declare-fun e!4398919 () Bool)

(assert (=> b!7346498 (= e!4398920 e!4398919)))

(declare-fun res!2967225 () Bool)

(assert (=> b!7346498 (=> (not res!2967225) (not e!4398919))))

(declare-fun lt!2611238 () (Set Context!16168))

(assert (=> b!7346498 (= res!2967225 (= lt!2611239 (set.union lt!2611238 (derivationStepZipperDown!2970 (regTwo!38800 r1!2370) ct1!282 c!10362))))))

(declare-fun lt!2611246 () Context!16168)

(assert (=> b!7346498 (= lt!2611238 (derivationStepZipperDown!2970 (regOne!38800 r1!2370) lt!2611246 c!10362))))

(declare-fun lt!2611244 () List!71640)

(assert (=> b!7346498 (= lt!2611246 (Context!16169 lt!2611244))))

(declare-fun $colon$colon!3142 (List!71640 Regex!19144) List!71640)

(assert (=> b!7346498 (= lt!2611244 ($colon$colon!3142 (exprs!8584 ct1!282) (regTwo!38800 r1!2370)))))

(declare-fun b!7346499 () Bool)

(declare-fun e!4398925 () Bool)

(assert (=> b!7346499 (= e!4398919 (not e!4398925))))

(declare-fun res!2967224 () Bool)

(assert (=> b!7346499 (=> res!2967224 e!4398925)))

(declare-fun lt!2611241 () Context!16168)

(declare-fun lt!2611245 () (Set Context!16168))

(assert (=> b!7346499 (= res!2967224 (not (set.member lt!2611241 lt!2611245)))))

(declare-fun ct2!378 () Context!16168)

(declare-fun lambda!456140 () Int)

(declare-datatypes ((Unit!165241 0))(
  ( (Unit!165242) )
))
(declare-fun lt!2611240 () Unit!165241)

(declare-fun lemmaConcatPreservesForall!1819 (List!71640 List!71640 Int) Unit!165241)

(assert (=> b!7346499 (= lt!2611240 (lemmaConcatPreservesForall!1819 (exprs!8584 cWitness!61) (exprs!8584 ct2!378) lambda!456140))))

(declare-fun ++!16962 (List!71640 List!71640) List!71640)

(assert (=> b!7346499 (set.member lt!2611241 (derivationStepZipperDown!2970 (regOne!38800 r1!2370) (Context!16169 (++!16962 lt!2611244 (exprs!8584 ct2!378))) c!10362))))

(assert (=> b!7346499 (= lt!2611241 (Context!16169 (++!16962 (exprs!8584 cWitness!61) (exprs!8584 ct2!378))))))

(declare-fun lt!2611248 () Unit!165241)

(assert (=> b!7346499 (= lt!2611248 (lemmaConcatPreservesForall!1819 lt!2611244 (exprs!8584 ct2!378) lambda!456140))))

(declare-fun lt!2611247 () Unit!165241)

(assert (=> b!7346499 (= lt!2611247 (lemmaConcatPreservesForall!1819 (exprs!8584 cWitness!61) (exprs!8584 ct2!378) lambda!456140))))

(declare-fun lt!2611243 () Unit!165241)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!71 (Regex!19144 Context!16168 Context!16168 Context!16168 C!38562) Unit!165241)

(assert (=> b!7346499 (= lt!2611243 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!71 (regOne!38800 r1!2370) lt!2611246 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7346500 () Bool)

(declare-fun tp!2086431 () Bool)

(assert (=> b!7346500 (= e!4398924 tp!2086431)))

(declare-fun b!7346501 () Bool)

(declare-fun tp!2086433 () Bool)

(declare-fun tp!2086432 () Bool)

(assert (=> b!7346501 (= e!4398924 (and tp!2086433 tp!2086432))))

(declare-fun b!7346502 () Bool)

(declare-fun e!4398921 () Bool)

(declare-fun tp!2086430 () Bool)

(assert (=> b!7346502 (= e!4398921 tp!2086430)))

(declare-fun res!2967231 () Bool)

(assert (=> start!717450 (=> (not res!2967231) (not e!4398927))))

(assert (=> start!717450 (= res!2967231 (validRegex!9740 r1!2370))))

(assert (=> start!717450 e!4398927))

(assert (=> start!717450 tp_is_empty!48533))

(declare-fun inv!91201 (Context!16168) Bool)

(assert (=> start!717450 (and (inv!91201 cWitness!61) e!4398921)))

(declare-fun e!4398922 () Bool)

(assert (=> start!717450 (and (inv!91201 ct1!282) e!4398922)))

(assert (=> start!717450 e!4398924))

(declare-fun e!4398928 () Bool)

(assert (=> start!717450 (and (inv!91201 ct2!378) e!4398928)))

(declare-fun b!7346503 () Bool)

(declare-fun e!4398923 () Bool)

(declare-fun forall!17970 (List!71640 Int) Bool)

(assert (=> b!7346503 (= e!4398923 (forall!17970 (exprs!8584 ct2!378) lambda!456140))))

(declare-fun b!7346504 () Bool)

(assert (=> b!7346504 (= e!4398925 e!4398923)))

(declare-fun res!2967226 () Bool)

(assert (=> b!7346504 (=> res!2967226 e!4398923)))

(assert (=> b!7346504 (= res!2967226 (not (forall!17970 (exprs!8584 cWitness!61) lambda!456140)))))

(declare-fun b!7346505 () Bool)

(declare-fun tp!2086427 () Bool)

(assert (=> b!7346505 (= e!4398928 tp!2086427)))

(declare-fun b!7346506 () Bool)

(declare-fun res!2967230 () Bool)

(assert (=> b!7346506 (=> (not res!2967230) (not e!4398920))))

(declare-fun nullable!8235 (Regex!19144) Bool)

(assert (=> b!7346506 (= res!2967230 (nullable!8235 (regOne!38800 r1!2370)))))

(declare-fun b!7346507 () Bool)

(declare-fun res!2967227 () Bool)

(assert (=> b!7346507 (=> (not res!2967227) (not e!4398919))))

(assert (=> b!7346507 (= res!2967227 (set.member cWitness!61 lt!2611238))))

(declare-fun b!7346508 () Bool)

(declare-fun tp!2086429 () Bool)

(assert (=> b!7346508 (= e!4398922 tp!2086429)))

(declare-fun b!7346509 () Bool)

(assert (=> b!7346509 (= e!4398926 e!4398920)))

(declare-fun res!2967228 () Bool)

(assert (=> b!7346509 (=> (not res!2967228) (not e!4398920))))

(assert (=> b!7346509 (= res!2967228 (and (or (not (is-ElementMatch!19144 r1!2370)) (not (= c!10362 (c!1364728 r1!2370)))) (not (is-Union!19144 r1!2370)) (is-Concat!27989 r1!2370)))))

(assert (=> b!7346509 (= lt!2611245 (derivationStepZipperDown!2970 r1!2370 (Context!16169 (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378))) c!10362))))

(declare-fun lt!2611242 () Unit!165241)

(assert (=> b!7346509 (= lt!2611242 (lemmaConcatPreservesForall!1819 (exprs!8584 ct1!282) (exprs!8584 ct2!378) lambda!456140))))

(assert (= (and start!717450 res!2967231) b!7346495))

(assert (= (and b!7346495 res!2967229) b!7346509))

(assert (= (and b!7346509 res!2967228) b!7346506))

(assert (= (and b!7346506 res!2967230) b!7346496))

(assert (= (and b!7346496 res!2967223) b!7346498))

(assert (= (and b!7346498 res!2967225) b!7346507))

(assert (= (and b!7346507 res!2967227) b!7346499))

(assert (= (and b!7346499 (not res!2967224)) b!7346504))

(assert (= (and b!7346504 (not res!2967226)) b!7346503))

(assert (= start!717450 b!7346502))

(assert (= start!717450 b!7346508))

(assert (= (and start!717450 (is-ElementMatch!19144 r1!2370)) b!7346497))

(assert (= (and start!717450 (is-Concat!27989 r1!2370)) b!7346494))

(assert (= (and start!717450 (is-Star!19144 r1!2370)) b!7346500))

(assert (= (and start!717450 (is-Union!19144 r1!2370)) b!7346501))

(assert (= start!717450 b!7346505))

(declare-fun m!8008730 () Bool)

(assert (=> b!7346503 m!8008730))

(declare-fun m!8008732 () Bool)

(assert (=> b!7346499 m!8008732))

(declare-fun m!8008734 () Bool)

(assert (=> b!7346499 m!8008734))

(declare-fun m!8008736 () Bool)

(assert (=> b!7346499 m!8008736))

(declare-fun m!8008738 () Bool)

(assert (=> b!7346499 m!8008738))

(declare-fun m!8008740 () Bool)

(assert (=> b!7346499 m!8008740))

(assert (=> b!7346499 m!8008738))

(declare-fun m!8008742 () Bool)

(assert (=> b!7346499 m!8008742))

(declare-fun m!8008744 () Bool)

(assert (=> b!7346499 m!8008744))

(declare-fun m!8008746 () Bool)

(assert (=> b!7346499 m!8008746))

(declare-fun m!8008748 () Bool)

(assert (=> b!7346507 m!8008748))

(declare-fun m!8008750 () Bool)

(assert (=> b!7346509 m!8008750))

(declare-fun m!8008752 () Bool)

(assert (=> b!7346509 m!8008752))

(declare-fun m!8008754 () Bool)

(assert (=> b!7346509 m!8008754))

(declare-fun m!8008756 () Bool)

(assert (=> b!7346498 m!8008756))

(declare-fun m!8008758 () Bool)

(assert (=> b!7346498 m!8008758))

(declare-fun m!8008760 () Bool)

(assert (=> b!7346498 m!8008760))

(declare-fun m!8008762 () Bool)

(assert (=> b!7346495 m!8008762))

(declare-fun m!8008764 () Bool)

(assert (=> b!7346495 m!8008764))

(declare-fun m!8008766 () Bool)

(assert (=> b!7346504 m!8008766))

(declare-fun m!8008768 () Bool)

(assert (=> start!717450 m!8008768))

(declare-fun m!8008770 () Bool)

(assert (=> start!717450 m!8008770))

(declare-fun m!8008772 () Bool)

(assert (=> start!717450 m!8008772))

(declare-fun m!8008774 () Bool)

(assert (=> start!717450 m!8008774))

(declare-fun m!8008776 () Bool)

(assert (=> b!7346496 m!8008776))

(declare-fun m!8008778 () Bool)

(assert (=> b!7346506 m!8008778))

(push 1)

(assert (not b!7346503))

(assert (not b!7346500))

(assert (not b!7346509))

(assert (not b!7346499))

(assert (not b!7346502))

(assert (not b!7346494))

(assert (not start!717450))

(assert (not b!7346508))

(assert tp_is_empty!48533)

(assert (not b!7346505))

(assert (not b!7346498))

(assert (not b!7346496))

(assert (not b!7346495))

(assert (not b!7346504))

(assert (not b!7346501))

(assert (not b!7346506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2279715 () Bool)

(declare-fun res!2967263 () Bool)

(declare-fun e!4398963 () Bool)

(assert (=> d!2279715 (=> res!2967263 e!4398963)))

(assert (=> d!2279715 (= res!2967263 (is-Nil!71516 (exprs!8584 ct2!378)))))

(assert (=> d!2279715 (= (forall!17970 (exprs!8584 ct2!378) lambda!456140) e!4398963)))

(declare-fun b!7346562 () Bool)

(declare-fun e!4398964 () Bool)

(assert (=> b!7346562 (= e!4398963 e!4398964)))

(declare-fun res!2967264 () Bool)

(assert (=> b!7346562 (=> (not res!2967264) (not e!4398964))))

(declare-fun dynLambda!29475 (Int Regex!19144) Bool)

(assert (=> b!7346562 (= res!2967264 (dynLambda!29475 lambda!456140 (h!77964 (exprs!8584 ct2!378))))))

(declare-fun b!7346563 () Bool)

(assert (=> b!7346563 (= e!4398964 (forall!17970 (t!386041 (exprs!8584 ct2!378)) lambda!456140))))

(assert (= (and d!2279715 (not res!2967263)) b!7346562))

(assert (= (and b!7346562 res!2967264) b!7346563))

(declare-fun b_lambda!284011 () Bool)

(assert (=> (not b_lambda!284011) (not b!7346562)))

(declare-fun m!8008830 () Bool)

(assert (=> b!7346562 m!8008830))

(declare-fun m!8008832 () Bool)

(assert (=> b!7346563 m!8008832))

(assert (=> b!7346503 d!2279715))

(declare-fun bm!671329 () Bool)

(declare-fun c!1364735 () Bool)

(declare-fun c!1364734 () Bool)

(declare-fun call!671334 () Bool)

(assert (=> bm!671329 (= call!671334 (validRegex!9740 (ite c!1364734 (reg!19473 r1!2370) (ite c!1364735 (regTwo!38801 r1!2370) (regOne!38800 r1!2370)))))))

(declare-fun b!7346582 () Bool)

(declare-fun e!4398985 () Bool)

(declare-fun e!4398981 () Bool)

(assert (=> b!7346582 (= e!4398985 e!4398981)))

(assert (=> b!7346582 (= c!1364734 (is-Star!19144 r1!2370))))

(declare-fun b!7346583 () Bool)

(declare-fun e!4398982 () Bool)

(declare-fun e!4398980 () Bool)

(assert (=> b!7346583 (= e!4398982 e!4398980)))

(declare-fun res!2967278 () Bool)

(assert (=> b!7346583 (=> (not res!2967278) (not e!4398980))))

(declare-fun call!671336 () Bool)

(assert (=> b!7346583 (= res!2967278 call!671336)))

(declare-fun bm!671330 () Bool)

(assert (=> bm!671330 (= call!671336 call!671334)))

(declare-fun bm!671331 () Bool)

(declare-fun call!671335 () Bool)

(assert (=> bm!671331 (= call!671335 (validRegex!9740 (ite c!1364735 (regOne!38801 r1!2370) (regTwo!38800 r1!2370))))))

(declare-fun b!7346584 () Bool)

(declare-fun e!4398979 () Bool)

(assert (=> b!7346584 (= e!4398979 call!671336)))

(declare-fun b!7346585 () Bool)

(assert (=> b!7346585 (= e!4398980 call!671335)))

(declare-fun d!2279717 () Bool)

(declare-fun res!2967277 () Bool)

(assert (=> d!2279717 (=> res!2967277 e!4398985)))

(assert (=> d!2279717 (= res!2967277 (is-ElementMatch!19144 r1!2370))))

(assert (=> d!2279717 (= (validRegex!9740 r1!2370) e!4398985)))

(declare-fun b!7346586 () Bool)

(declare-fun res!2967276 () Bool)

(assert (=> b!7346586 (=> (not res!2967276) (not e!4398979))))

(assert (=> b!7346586 (= res!2967276 call!671335)))

(declare-fun e!4398983 () Bool)

(assert (=> b!7346586 (= e!4398983 e!4398979)))

(declare-fun b!7346587 () Bool)

(declare-fun res!2967275 () Bool)

(assert (=> b!7346587 (=> res!2967275 e!4398982)))

(assert (=> b!7346587 (= res!2967275 (not (is-Concat!27989 r1!2370)))))

(assert (=> b!7346587 (= e!4398983 e!4398982)))

(declare-fun b!7346588 () Bool)

(declare-fun e!4398984 () Bool)

(assert (=> b!7346588 (= e!4398984 call!671334)))

(declare-fun b!7346589 () Bool)

(assert (=> b!7346589 (= e!4398981 e!4398984)))

(declare-fun res!2967279 () Bool)

(assert (=> b!7346589 (= res!2967279 (not (nullable!8235 (reg!19473 r1!2370))))))

(assert (=> b!7346589 (=> (not res!2967279) (not e!4398984))))

(declare-fun b!7346590 () Bool)

(assert (=> b!7346590 (= e!4398981 e!4398983)))

(assert (=> b!7346590 (= c!1364735 (is-Union!19144 r1!2370))))

(assert (= (and d!2279717 (not res!2967277)) b!7346582))

(assert (= (and b!7346582 c!1364734) b!7346589))

(assert (= (and b!7346582 (not c!1364734)) b!7346590))

(assert (= (and b!7346589 res!2967279) b!7346588))

(assert (= (and b!7346590 c!1364735) b!7346586))

(assert (= (and b!7346590 (not c!1364735)) b!7346587))

(assert (= (and b!7346586 res!2967276) b!7346584))

(assert (= (and b!7346587 (not res!2967275)) b!7346583))

(assert (= (and b!7346583 res!2967278) b!7346585))

(assert (= (or b!7346586 b!7346585) bm!671331))

(assert (= (or b!7346584 b!7346583) bm!671330))

(assert (= (or b!7346588 bm!671330) bm!671329))

(declare-fun m!8008836 () Bool)

(assert (=> bm!671329 m!8008836))

(declare-fun m!8008838 () Bool)

(assert (=> bm!671331 m!8008838))

(declare-fun m!8008840 () Bool)

(assert (=> b!7346589 m!8008840))

(assert (=> start!717450 d!2279717))

(declare-fun bs!1918905 () Bool)

(declare-fun d!2279723 () Bool)

(assert (= bs!1918905 (and d!2279723 b!7346509)))

(declare-fun lambda!456154 () Int)

(assert (=> bs!1918905 (= lambda!456154 lambda!456140)))

(assert (=> d!2279723 (= (inv!91201 cWitness!61) (forall!17970 (exprs!8584 cWitness!61) lambda!456154))))

(declare-fun bs!1918906 () Bool)

(assert (= bs!1918906 d!2279723))

(declare-fun m!8008842 () Bool)

(assert (=> bs!1918906 m!8008842))

(assert (=> start!717450 d!2279723))

(declare-fun bs!1918907 () Bool)

(declare-fun d!2279725 () Bool)

(assert (= bs!1918907 (and d!2279725 b!7346509)))

(declare-fun lambda!456155 () Int)

(assert (=> bs!1918907 (= lambda!456155 lambda!456140)))

(declare-fun bs!1918908 () Bool)

(assert (= bs!1918908 (and d!2279725 d!2279723)))

(assert (=> bs!1918908 (= lambda!456155 lambda!456154)))

(assert (=> d!2279725 (= (inv!91201 ct1!282) (forall!17970 (exprs!8584 ct1!282) lambda!456155))))

(declare-fun bs!1918909 () Bool)

(assert (= bs!1918909 d!2279725))

(declare-fun m!8008844 () Bool)

(assert (=> bs!1918909 m!8008844))

(assert (=> start!717450 d!2279725))

(declare-fun bs!1918910 () Bool)

(declare-fun d!2279727 () Bool)

(assert (= bs!1918910 (and d!2279727 b!7346509)))

(declare-fun lambda!456156 () Int)

(assert (=> bs!1918910 (= lambda!456156 lambda!456140)))

(declare-fun bs!1918911 () Bool)

(assert (= bs!1918911 (and d!2279727 d!2279723)))

(assert (=> bs!1918911 (= lambda!456156 lambda!456154)))

(declare-fun bs!1918912 () Bool)

(assert (= bs!1918912 (and d!2279727 d!2279725)))

(assert (=> bs!1918912 (= lambda!456156 lambda!456155)))

(assert (=> d!2279727 (= (inv!91201 ct2!378) (forall!17970 (exprs!8584 ct2!378) lambda!456156))))

(declare-fun bs!1918913 () Bool)

(assert (= bs!1918913 d!2279727))

(declare-fun m!8008846 () Bool)

(assert (=> bs!1918913 m!8008846))

(assert (=> start!717450 d!2279727))

(declare-fun d!2279729 () Bool)

(declare-fun res!2967280 () Bool)

(declare-fun e!4398986 () Bool)

(assert (=> d!2279729 (=> res!2967280 e!4398986)))

(assert (=> d!2279729 (= res!2967280 (is-Nil!71516 (exprs!8584 cWitness!61)))))

(assert (=> d!2279729 (= (forall!17970 (exprs!8584 cWitness!61) lambda!456140) e!4398986)))

(declare-fun b!7346591 () Bool)

(declare-fun e!4398987 () Bool)

(assert (=> b!7346591 (= e!4398986 e!4398987)))

(declare-fun res!2967281 () Bool)

(assert (=> b!7346591 (=> (not res!2967281) (not e!4398987))))

(assert (=> b!7346591 (= res!2967281 (dynLambda!29475 lambda!456140 (h!77964 (exprs!8584 cWitness!61))))))

(declare-fun b!7346592 () Bool)

(assert (=> b!7346592 (= e!4398987 (forall!17970 (t!386041 (exprs!8584 cWitness!61)) lambda!456140))))

(assert (= (and d!2279729 (not res!2967280)) b!7346591))

(assert (= (and b!7346591 res!2967281) b!7346592))

(declare-fun b_lambda!284013 () Bool)

(assert (=> (not b_lambda!284013) (not b!7346591)))

(declare-fun m!8008848 () Bool)

(assert (=> b!7346591 m!8008848))

(declare-fun m!8008850 () Bool)

(assert (=> b!7346592 m!8008850))

(assert (=> b!7346504 d!2279729))

(declare-fun e!4398993 () Bool)

(declare-fun b!7346604 () Bool)

(declare-fun lt!2611284 () List!71640)

(assert (=> b!7346604 (= e!4398993 (or (not (= (exprs!8584 ct2!378) Nil!71516)) (= lt!2611284 (exprs!8584 cWitness!61))))))

(declare-fun b!7346602 () Bool)

(declare-fun e!4398992 () List!71640)

(assert (=> b!7346602 (= e!4398992 (Cons!71516 (h!77964 (exprs!8584 cWitness!61)) (++!16962 (t!386041 (exprs!8584 cWitness!61)) (exprs!8584 ct2!378))))))

(declare-fun d!2279731 () Bool)

(assert (=> d!2279731 e!4398993))

(declare-fun res!2967286 () Bool)

(assert (=> d!2279731 (=> (not res!2967286) (not e!4398993))))

(declare-fun content!15054 (List!71640) (Set Regex!19144))

(assert (=> d!2279731 (= res!2967286 (= (content!15054 lt!2611284) (set.union (content!15054 (exprs!8584 cWitness!61)) (content!15054 (exprs!8584 ct2!378)))))))

(assert (=> d!2279731 (= lt!2611284 e!4398992)))

(declare-fun c!1364738 () Bool)

(assert (=> d!2279731 (= c!1364738 (is-Nil!71516 (exprs!8584 cWitness!61)))))

(assert (=> d!2279731 (= (++!16962 (exprs!8584 cWitness!61) (exprs!8584 ct2!378)) lt!2611284)))

(declare-fun b!7346601 () Bool)

(assert (=> b!7346601 (= e!4398992 (exprs!8584 ct2!378))))

(declare-fun b!7346603 () Bool)

(declare-fun res!2967287 () Bool)

(assert (=> b!7346603 (=> (not res!2967287) (not e!4398993))))

(declare-fun size!42033 (List!71640) Int)

(assert (=> b!7346603 (= res!2967287 (= (size!42033 lt!2611284) (+ (size!42033 (exprs!8584 cWitness!61)) (size!42033 (exprs!8584 ct2!378)))))))

(assert (= (and d!2279731 c!1364738) b!7346601))

(assert (= (and d!2279731 (not c!1364738)) b!7346602))

(assert (= (and d!2279731 res!2967286) b!7346603))

(assert (= (and b!7346603 res!2967287) b!7346604))

(declare-fun m!8008852 () Bool)

(assert (=> b!7346602 m!8008852))

(declare-fun m!8008854 () Bool)

(assert (=> d!2279731 m!8008854))

(declare-fun m!8008856 () Bool)

(assert (=> d!2279731 m!8008856))

(declare-fun m!8008858 () Bool)

(assert (=> d!2279731 m!8008858))

(declare-fun m!8008860 () Bool)

(assert (=> b!7346603 m!8008860))

(declare-fun m!8008862 () Bool)

(assert (=> b!7346603 m!8008862))

(declare-fun m!8008864 () Bool)

(assert (=> b!7346603 m!8008864))

(assert (=> b!7346499 d!2279731))

(declare-fun b!7346627 () Bool)

(declare-fun e!4399011 () (Set Context!16168))

(declare-fun e!4399009 () (Set Context!16168))

(assert (=> b!7346627 (= e!4399011 e!4399009)))

(declare-fun c!1364753 () Bool)

(assert (=> b!7346627 (= c!1364753 (is-Union!19144 (regOne!38800 r1!2370)))))

(declare-fun b!7346628 () Bool)

(declare-fun e!4399008 () (Set Context!16168))

(declare-fun call!671350 () (Set Context!16168))

(assert (=> b!7346628 (= e!4399008 call!671350)))

(declare-fun call!671349 () (Set Context!16168))

(declare-fun call!671354 () List!71640)

(declare-fun bm!671344 () Bool)

(assert (=> bm!671344 (= call!671349 (derivationStepZipperDown!2970 (ite c!1364753 (regOne!38801 (regOne!38800 r1!2370)) (regOne!38800 (regOne!38800 r1!2370))) (ite c!1364753 (Context!16169 (++!16962 lt!2611244 (exprs!8584 ct2!378))) (Context!16169 call!671354)) c!10362))))

(declare-fun b!7346629 () Bool)

(declare-fun e!4399007 () (Set Context!16168))

(assert (=> b!7346629 (= e!4399007 call!671350)))

(declare-fun b!7346630 () Bool)

(declare-fun e!4399010 () Bool)

(assert (=> b!7346630 (= e!4399010 (nullable!8235 (regOne!38800 (regOne!38800 r1!2370))))))

(declare-fun d!2279733 () Bool)

(declare-fun c!1364752 () Bool)

(assert (=> d!2279733 (= c!1364752 (and (is-ElementMatch!19144 (regOne!38800 r1!2370)) (= (c!1364728 (regOne!38800 r1!2370)) c!10362)))))

(assert (=> d!2279733 (= (derivationStepZipperDown!2970 (regOne!38800 r1!2370) (Context!16169 (++!16962 lt!2611244 (exprs!8584 ct2!378))) c!10362) e!4399011)))

(declare-fun b!7346631 () Bool)

(declare-fun e!4399006 () (Set Context!16168))

(declare-fun call!671353 () (Set Context!16168))

(assert (=> b!7346631 (= e!4399006 (set.union call!671349 call!671353))))

(declare-fun bm!671345 () Bool)

(declare-fun call!671351 () (Set Context!16168))

(assert (=> bm!671345 (= call!671353 call!671351)))

(declare-fun b!7346632 () Bool)

(assert (=> b!7346632 (= e!4399006 e!4399008)))

(declare-fun c!1364750 () Bool)

(assert (=> b!7346632 (= c!1364750 (is-Concat!27989 (regOne!38800 r1!2370)))))

(declare-fun b!7346633 () Bool)

(assert (=> b!7346633 (= e!4399007 (as set.empty (Set Context!16168)))))

(declare-fun b!7346634 () Bool)

(declare-fun c!1364754 () Bool)

(assert (=> b!7346634 (= c!1364754 e!4399010)))

(declare-fun res!2967290 () Bool)

(assert (=> b!7346634 (=> (not res!2967290) (not e!4399010))))

(assert (=> b!7346634 (= res!2967290 (is-Concat!27989 (regOne!38800 r1!2370)))))

(assert (=> b!7346634 (= e!4399009 e!4399006)))

(declare-fun bm!671346 () Bool)

(declare-fun call!671352 () List!71640)

(assert (=> bm!671346 (= call!671352 call!671354)))

(declare-fun b!7346635 () Bool)

(assert (=> b!7346635 (= e!4399011 (set.insert (Context!16169 (++!16962 lt!2611244 (exprs!8584 ct2!378))) (as set.empty (Set Context!16168))))))

(declare-fun bm!671347 () Bool)

(assert (=> bm!671347 (= call!671350 call!671353)))

(declare-fun b!7346636 () Bool)

(declare-fun c!1364751 () Bool)

(assert (=> b!7346636 (= c!1364751 (is-Star!19144 (regOne!38800 r1!2370)))))

(assert (=> b!7346636 (= e!4399008 e!4399007)))

(declare-fun bm!671348 () Bool)

(assert (=> bm!671348 (= call!671354 ($colon$colon!3142 (exprs!8584 (Context!16169 (++!16962 lt!2611244 (exprs!8584 ct2!378)))) (ite (or c!1364754 c!1364750) (regTwo!38800 (regOne!38800 r1!2370)) (regOne!38800 r1!2370))))))

(declare-fun b!7346637 () Bool)

(assert (=> b!7346637 (= e!4399009 (set.union call!671349 call!671351))))

(declare-fun bm!671349 () Bool)

(assert (=> bm!671349 (= call!671351 (derivationStepZipperDown!2970 (ite c!1364753 (regTwo!38801 (regOne!38800 r1!2370)) (ite c!1364754 (regTwo!38800 (regOne!38800 r1!2370)) (ite c!1364750 (regOne!38800 (regOne!38800 r1!2370)) (reg!19473 (regOne!38800 r1!2370))))) (ite (or c!1364753 c!1364754) (Context!16169 (++!16962 lt!2611244 (exprs!8584 ct2!378))) (Context!16169 call!671352)) c!10362))))

(assert (= (and d!2279733 c!1364752) b!7346635))

(assert (= (and d!2279733 (not c!1364752)) b!7346627))

(assert (= (and b!7346627 c!1364753) b!7346637))

(assert (= (and b!7346627 (not c!1364753)) b!7346634))

(assert (= (and b!7346634 res!2967290) b!7346630))

(assert (= (and b!7346634 c!1364754) b!7346631))

(assert (= (and b!7346634 (not c!1364754)) b!7346632))

(assert (= (and b!7346632 c!1364750) b!7346628))

(assert (= (and b!7346632 (not c!1364750)) b!7346636))

(assert (= (and b!7346636 c!1364751) b!7346629))

(assert (= (and b!7346636 (not c!1364751)) b!7346633))

(assert (= (or b!7346628 b!7346629) bm!671346))

(assert (= (or b!7346628 b!7346629) bm!671347))

(assert (= (or b!7346631 bm!671347) bm!671345))

(assert (= (or b!7346631 bm!671346) bm!671348))

(assert (= (or b!7346637 bm!671345) bm!671349))

(assert (= (or b!7346637 b!7346631) bm!671344))

(declare-fun m!8008880 () Bool)

(assert (=> b!7346630 m!8008880))

(declare-fun m!8008882 () Bool)

(assert (=> b!7346635 m!8008882))

(declare-fun m!8008884 () Bool)

(assert (=> bm!671349 m!8008884))

(declare-fun m!8008886 () Bool)

(assert (=> bm!671344 m!8008886))

(declare-fun m!8008888 () Bool)

(assert (=> bm!671348 m!8008888))

(assert (=> b!7346499 d!2279733))

(declare-fun bs!1918916 () Bool)

(declare-fun d!2279737 () Bool)

(assert (= bs!1918916 (and d!2279737 b!7346509)))

(declare-fun lambda!456166 () Int)

(assert (=> bs!1918916 (= lambda!456166 lambda!456140)))

(declare-fun bs!1918917 () Bool)

(assert (= bs!1918917 (and d!2279737 d!2279723)))

(assert (=> bs!1918917 (= lambda!456166 lambda!456154)))

(declare-fun bs!1918918 () Bool)

(assert (= bs!1918918 (and d!2279737 d!2279725)))

(assert (=> bs!1918918 (= lambda!456166 lambda!456155)))

(declare-fun bs!1918919 () Bool)

(assert (= bs!1918919 (and d!2279737 d!2279727)))

(assert (=> bs!1918919 (= lambda!456166 lambda!456156)))

(assert (=> d!2279737 (set.member (Context!16169 (++!16962 (exprs!8584 cWitness!61) (exprs!8584 ct2!378))) (derivationStepZipperDown!2970 (regOne!38800 r1!2370) (Context!16169 (++!16962 (exprs!8584 lt!2611246) (exprs!8584 ct2!378))) c!10362))))

(declare-fun lt!2611304 () Unit!165241)

(assert (=> d!2279737 (= lt!2611304 (lemmaConcatPreservesForall!1819 (exprs!8584 lt!2611246) (exprs!8584 ct2!378) lambda!456166))))

(declare-fun lt!2611303 () Unit!165241)

(assert (=> d!2279737 (= lt!2611303 (lemmaConcatPreservesForall!1819 (exprs!8584 cWitness!61) (exprs!8584 ct2!378) lambda!456166))))

(declare-fun lt!2611302 () Unit!165241)

(declare-fun choose!57144 (Regex!19144 Context!16168 Context!16168 Context!16168 C!38562) Unit!165241)

(assert (=> d!2279737 (= lt!2611302 (choose!57144 (regOne!38800 r1!2370) lt!2611246 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279737 (validRegex!9740 (regOne!38800 r1!2370))))

(assert (=> d!2279737 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!71 (regOne!38800 r1!2370) lt!2611246 ct2!378 cWitness!61 c!10362) lt!2611302)))

(declare-fun bs!1918920 () Bool)

(assert (= bs!1918920 d!2279737))

(declare-fun m!8008890 () Bool)

(assert (=> bs!1918920 m!8008890))

(assert (=> bs!1918920 m!8008740))

(declare-fun m!8008892 () Bool)

(assert (=> bs!1918920 m!8008892))

(declare-fun m!8008894 () Bool)

(assert (=> bs!1918920 m!8008894))

(declare-fun m!8008896 () Bool)

(assert (=> bs!1918920 m!8008896))

(declare-fun m!8008898 () Bool)

(assert (=> bs!1918920 m!8008898))

(declare-fun m!8008900 () Bool)

(assert (=> bs!1918920 m!8008900))

(declare-fun m!8008902 () Bool)

(assert (=> bs!1918920 m!8008902))

(assert (=> b!7346499 d!2279737))

(declare-fun d!2279739 () Bool)

(assert (=> d!2279739 (forall!17970 (++!16962 lt!2611244 (exprs!8584 ct2!378)) lambda!456140)))

(declare-fun lt!2611308 () Unit!165241)

(declare-fun choose!57145 (List!71640 List!71640 Int) Unit!165241)

(assert (=> d!2279739 (= lt!2611308 (choose!57145 lt!2611244 (exprs!8584 ct2!378) lambda!456140))))

(assert (=> d!2279739 (forall!17970 lt!2611244 lambda!456140)))

(assert (=> d!2279739 (= (lemmaConcatPreservesForall!1819 lt!2611244 (exprs!8584 ct2!378) lambda!456140) lt!2611308)))

(declare-fun bs!1918921 () Bool)

(assert (= bs!1918921 d!2279739))

(assert (=> bs!1918921 m!8008734))

(assert (=> bs!1918921 m!8008734))

(declare-fun m!8008918 () Bool)

(assert (=> bs!1918921 m!8008918))

(declare-fun m!8008920 () Bool)

(assert (=> bs!1918921 m!8008920))

(declare-fun m!8008922 () Bool)

(assert (=> bs!1918921 m!8008922))

(assert (=> b!7346499 d!2279739))

(declare-fun lt!2611309 () List!71640)

(declare-fun b!7346653 () Bool)

(declare-fun e!4399019 () Bool)

(assert (=> b!7346653 (= e!4399019 (or (not (= (exprs!8584 ct2!378) Nil!71516)) (= lt!2611309 lt!2611244)))))

(declare-fun b!7346651 () Bool)

(declare-fun e!4399018 () List!71640)

(assert (=> b!7346651 (= e!4399018 (Cons!71516 (h!77964 lt!2611244) (++!16962 (t!386041 lt!2611244) (exprs!8584 ct2!378))))))

(declare-fun d!2279743 () Bool)

(assert (=> d!2279743 e!4399019))

(declare-fun res!2967297 () Bool)

(assert (=> d!2279743 (=> (not res!2967297) (not e!4399019))))

(assert (=> d!2279743 (= res!2967297 (= (content!15054 lt!2611309) (set.union (content!15054 lt!2611244) (content!15054 (exprs!8584 ct2!378)))))))

(assert (=> d!2279743 (= lt!2611309 e!4399018)))

(declare-fun c!1364759 () Bool)

(assert (=> d!2279743 (= c!1364759 (is-Nil!71516 lt!2611244))))

(assert (=> d!2279743 (= (++!16962 lt!2611244 (exprs!8584 ct2!378)) lt!2611309)))

(declare-fun b!7346650 () Bool)

(assert (=> b!7346650 (= e!4399018 (exprs!8584 ct2!378))))

(declare-fun b!7346652 () Bool)

(declare-fun res!2967298 () Bool)

(assert (=> b!7346652 (=> (not res!2967298) (not e!4399019))))

(assert (=> b!7346652 (= res!2967298 (= (size!42033 lt!2611309) (+ (size!42033 lt!2611244) (size!42033 (exprs!8584 ct2!378)))))))

(assert (= (and d!2279743 c!1364759) b!7346650))

(assert (= (and d!2279743 (not c!1364759)) b!7346651))

(assert (= (and d!2279743 res!2967297) b!7346652))

(assert (= (and b!7346652 res!2967298) b!7346653))

(declare-fun m!8008924 () Bool)

(assert (=> b!7346651 m!8008924))

(declare-fun m!8008926 () Bool)

(assert (=> d!2279743 m!8008926))

(declare-fun m!8008928 () Bool)

(assert (=> d!2279743 m!8008928))

(assert (=> d!2279743 m!8008858))

(declare-fun m!8008930 () Bool)

(assert (=> b!7346652 m!8008930))

(declare-fun m!8008932 () Bool)

(assert (=> b!7346652 m!8008932))

(assert (=> b!7346652 m!8008864))

(assert (=> b!7346499 d!2279743))

(declare-fun d!2279745 () Bool)

(assert (=> d!2279745 (forall!17970 (++!16962 (exprs!8584 cWitness!61) (exprs!8584 ct2!378)) lambda!456140)))

(declare-fun lt!2611310 () Unit!165241)

(assert (=> d!2279745 (= lt!2611310 (choose!57145 (exprs!8584 cWitness!61) (exprs!8584 ct2!378) lambda!456140))))

(assert (=> d!2279745 (forall!17970 (exprs!8584 cWitness!61) lambda!456140)))

(assert (=> d!2279745 (= (lemmaConcatPreservesForall!1819 (exprs!8584 cWitness!61) (exprs!8584 ct2!378) lambda!456140) lt!2611310)))

(declare-fun bs!1918922 () Bool)

(assert (= bs!1918922 d!2279745))

(assert (=> bs!1918922 m!8008740))

(assert (=> bs!1918922 m!8008740))

(declare-fun m!8008934 () Bool)

(assert (=> bs!1918922 m!8008934))

(declare-fun m!8008936 () Bool)

(assert (=> bs!1918922 m!8008936))

(assert (=> bs!1918922 m!8008766))

(assert (=> b!7346499 d!2279745))

(declare-fun b!7346654 () Bool)

(declare-fun e!4399025 () (Set Context!16168))

(declare-fun e!4399023 () (Set Context!16168))

(assert (=> b!7346654 (= e!4399025 e!4399023)))

(declare-fun c!1364763 () Bool)

(assert (=> b!7346654 (= c!1364763 (is-Union!19144 (regTwo!38800 r1!2370)))))

(declare-fun b!7346655 () Bool)

(declare-fun e!4399022 () (Set Context!16168))

(declare-fun call!671356 () (Set Context!16168))

(assert (=> b!7346655 (= e!4399022 call!671356)))

(declare-fun call!671355 () (Set Context!16168))

(declare-fun bm!671350 () Bool)

(declare-fun call!671360 () List!71640)

(assert (=> bm!671350 (= call!671355 (derivationStepZipperDown!2970 (ite c!1364763 (regOne!38801 (regTwo!38800 r1!2370)) (regOne!38800 (regTwo!38800 r1!2370))) (ite c!1364763 ct1!282 (Context!16169 call!671360)) c!10362))))

(declare-fun b!7346656 () Bool)

(declare-fun e!4399021 () (Set Context!16168))

(assert (=> b!7346656 (= e!4399021 call!671356)))

(declare-fun b!7346657 () Bool)

(declare-fun e!4399024 () Bool)

(assert (=> b!7346657 (= e!4399024 (nullable!8235 (regOne!38800 (regTwo!38800 r1!2370))))))

(declare-fun d!2279747 () Bool)

(declare-fun c!1364762 () Bool)

(assert (=> d!2279747 (= c!1364762 (and (is-ElementMatch!19144 (regTwo!38800 r1!2370)) (= (c!1364728 (regTwo!38800 r1!2370)) c!10362)))))

(assert (=> d!2279747 (= (derivationStepZipperDown!2970 (regTwo!38800 r1!2370) ct1!282 c!10362) e!4399025)))

(declare-fun b!7346658 () Bool)

(declare-fun e!4399020 () (Set Context!16168))

(declare-fun call!671359 () (Set Context!16168))

(assert (=> b!7346658 (= e!4399020 (set.union call!671355 call!671359))))

(declare-fun bm!671351 () Bool)

(declare-fun call!671357 () (Set Context!16168))

(assert (=> bm!671351 (= call!671359 call!671357)))

(declare-fun b!7346659 () Bool)

(assert (=> b!7346659 (= e!4399020 e!4399022)))

(declare-fun c!1364760 () Bool)

(assert (=> b!7346659 (= c!1364760 (is-Concat!27989 (regTwo!38800 r1!2370)))))

(declare-fun b!7346660 () Bool)

(assert (=> b!7346660 (= e!4399021 (as set.empty (Set Context!16168)))))

(declare-fun b!7346661 () Bool)

(declare-fun c!1364764 () Bool)

(assert (=> b!7346661 (= c!1364764 e!4399024)))

(declare-fun res!2967299 () Bool)

(assert (=> b!7346661 (=> (not res!2967299) (not e!4399024))))

(assert (=> b!7346661 (= res!2967299 (is-Concat!27989 (regTwo!38800 r1!2370)))))

(assert (=> b!7346661 (= e!4399023 e!4399020)))

(declare-fun bm!671352 () Bool)

(declare-fun call!671358 () List!71640)

(assert (=> bm!671352 (= call!671358 call!671360)))

(declare-fun b!7346662 () Bool)

(assert (=> b!7346662 (= e!4399025 (set.insert ct1!282 (as set.empty (Set Context!16168))))))

(declare-fun bm!671353 () Bool)

(assert (=> bm!671353 (= call!671356 call!671359)))

(declare-fun b!7346663 () Bool)

(declare-fun c!1364761 () Bool)

(assert (=> b!7346663 (= c!1364761 (is-Star!19144 (regTwo!38800 r1!2370)))))

(assert (=> b!7346663 (= e!4399022 e!4399021)))

(declare-fun bm!671354 () Bool)

(assert (=> bm!671354 (= call!671360 ($colon$colon!3142 (exprs!8584 ct1!282) (ite (or c!1364764 c!1364760) (regTwo!38800 (regTwo!38800 r1!2370)) (regTwo!38800 r1!2370))))))

(declare-fun b!7346664 () Bool)

(assert (=> b!7346664 (= e!4399023 (set.union call!671355 call!671357))))

(declare-fun bm!671355 () Bool)

(assert (=> bm!671355 (= call!671357 (derivationStepZipperDown!2970 (ite c!1364763 (regTwo!38801 (regTwo!38800 r1!2370)) (ite c!1364764 (regTwo!38800 (regTwo!38800 r1!2370)) (ite c!1364760 (regOne!38800 (regTwo!38800 r1!2370)) (reg!19473 (regTwo!38800 r1!2370))))) (ite (or c!1364763 c!1364764) ct1!282 (Context!16169 call!671358)) c!10362))))

(assert (= (and d!2279747 c!1364762) b!7346662))

(assert (= (and d!2279747 (not c!1364762)) b!7346654))

(assert (= (and b!7346654 c!1364763) b!7346664))

(assert (= (and b!7346654 (not c!1364763)) b!7346661))

(assert (= (and b!7346661 res!2967299) b!7346657))

(assert (= (and b!7346661 c!1364764) b!7346658))

(assert (= (and b!7346661 (not c!1364764)) b!7346659))

(assert (= (and b!7346659 c!1364760) b!7346655))

(assert (= (and b!7346659 (not c!1364760)) b!7346663))

(assert (= (and b!7346663 c!1364761) b!7346656))

(assert (= (and b!7346663 (not c!1364761)) b!7346660))

(assert (= (or b!7346655 b!7346656) bm!671352))

(assert (= (or b!7346655 b!7346656) bm!671353))

(assert (= (or b!7346658 bm!671353) bm!671351))

(assert (= (or b!7346658 bm!671352) bm!671354))

(assert (= (or b!7346664 bm!671351) bm!671355))

(assert (= (or b!7346664 b!7346658) bm!671350))

(declare-fun m!8008938 () Bool)

(assert (=> b!7346657 m!8008938))

(declare-fun m!8008940 () Bool)

(assert (=> b!7346662 m!8008940))

(declare-fun m!8008942 () Bool)

(assert (=> bm!671355 m!8008942))

(declare-fun m!8008944 () Bool)

(assert (=> bm!671350 m!8008944))

(declare-fun m!8008946 () Bool)

(assert (=> bm!671354 m!8008946))

(assert (=> b!7346498 d!2279747))

(declare-fun b!7346665 () Bool)

(declare-fun e!4399031 () (Set Context!16168))

(declare-fun e!4399029 () (Set Context!16168))

(assert (=> b!7346665 (= e!4399031 e!4399029)))

(declare-fun c!1364768 () Bool)

(assert (=> b!7346665 (= c!1364768 (is-Union!19144 (regOne!38800 r1!2370)))))

(declare-fun b!7346666 () Bool)

(declare-fun e!4399028 () (Set Context!16168))

(declare-fun call!671362 () (Set Context!16168))

(assert (=> b!7346666 (= e!4399028 call!671362)))

(declare-fun call!671361 () (Set Context!16168))

(declare-fun call!671366 () List!71640)

(declare-fun bm!671356 () Bool)

(assert (=> bm!671356 (= call!671361 (derivationStepZipperDown!2970 (ite c!1364768 (regOne!38801 (regOne!38800 r1!2370)) (regOne!38800 (regOne!38800 r1!2370))) (ite c!1364768 lt!2611246 (Context!16169 call!671366)) c!10362))))

(declare-fun b!7346667 () Bool)

(declare-fun e!4399027 () (Set Context!16168))

(assert (=> b!7346667 (= e!4399027 call!671362)))

(declare-fun b!7346668 () Bool)

(declare-fun e!4399030 () Bool)

(assert (=> b!7346668 (= e!4399030 (nullable!8235 (regOne!38800 (regOne!38800 r1!2370))))))

(declare-fun d!2279749 () Bool)

(declare-fun c!1364767 () Bool)

(assert (=> d!2279749 (= c!1364767 (and (is-ElementMatch!19144 (regOne!38800 r1!2370)) (= (c!1364728 (regOne!38800 r1!2370)) c!10362)))))

(assert (=> d!2279749 (= (derivationStepZipperDown!2970 (regOne!38800 r1!2370) lt!2611246 c!10362) e!4399031)))

(declare-fun b!7346669 () Bool)

(declare-fun e!4399026 () (Set Context!16168))

(declare-fun call!671365 () (Set Context!16168))

(assert (=> b!7346669 (= e!4399026 (set.union call!671361 call!671365))))

(declare-fun bm!671357 () Bool)

(declare-fun call!671363 () (Set Context!16168))

(assert (=> bm!671357 (= call!671365 call!671363)))

(declare-fun b!7346670 () Bool)

(assert (=> b!7346670 (= e!4399026 e!4399028)))

(declare-fun c!1364765 () Bool)

(assert (=> b!7346670 (= c!1364765 (is-Concat!27989 (regOne!38800 r1!2370)))))

(declare-fun b!7346671 () Bool)

(assert (=> b!7346671 (= e!4399027 (as set.empty (Set Context!16168)))))

(declare-fun b!7346672 () Bool)

(declare-fun c!1364769 () Bool)

(assert (=> b!7346672 (= c!1364769 e!4399030)))

(declare-fun res!2967300 () Bool)

(assert (=> b!7346672 (=> (not res!2967300) (not e!4399030))))

(assert (=> b!7346672 (= res!2967300 (is-Concat!27989 (regOne!38800 r1!2370)))))

(assert (=> b!7346672 (= e!4399029 e!4399026)))

(declare-fun bm!671358 () Bool)

(declare-fun call!671364 () List!71640)

(assert (=> bm!671358 (= call!671364 call!671366)))

(declare-fun b!7346673 () Bool)

(assert (=> b!7346673 (= e!4399031 (set.insert lt!2611246 (as set.empty (Set Context!16168))))))

(declare-fun bm!671359 () Bool)

(assert (=> bm!671359 (= call!671362 call!671365)))

(declare-fun b!7346674 () Bool)

(declare-fun c!1364766 () Bool)

(assert (=> b!7346674 (= c!1364766 (is-Star!19144 (regOne!38800 r1!2370)))))

(assert (=> b!7346674 (= e!4399028 e!4399027)))

(declare-fun bm!671360 () Bool)

(assert (=> bm!671360 (= call!671366 ($colon$colon!3142 (exprs!8584 lt!2611246) (ite (or c!1364769 c!1364765) (regTwo!38800 (regOne!38800 r1!2370)) (regOne!38800 r1!2370))))))

(declare-fun b!7346675 () Bool)

(assert (=> b!7346675 (= e!4399029 (set.union call!671361 call!671363))))

(declare-fun bm!671361 () Bool)

(assert (=> bm!671361 (= call!671363 (derivationStepZipperDown!2970 (ite c!1364768 (regTwo!38801 (regOne!38800 r1!2370)) (ite c!1364769 (regTwo!38800 (regOne!38800 r1!2370)) (ite c!1364765 (regOne!38800 (regOne!38800 r1!2370)) (reg!19473 (regOne!38800 r1!2370))))) (ite (or c!1364768 c!1364769) lt!2611246 (Context!16169 call!671364)) c!10362))))

(assert (= (and d!2279749 c!1364767) b!7346673))

(assert (= (and d!2279749 (not c!1364767)) b!7346665))

(assert (= (and b!7346665 c!1364768) b!7346675))

(assert (= (and b!7346665 (not c!1364768)) b!7346672))

(assert (= (and b!7346672 res!2967300) b!7346668))

(assert (= (and b!7346672 c!1364769) b!7346669))

(assert (= (and b!7346672 (not c!1364769)) b!7346670))

(assert (= (and b!7346670 c!1364765) b!7346666))

(assert (= (and b!7346670 (not c!1364765)) b!7346674))

(assert (= (and b!7346674 c!1364766) b!7346667))

(assert (= (and b!7346674 (not c!1364766)) b!7346671))

(assert (= (or b!7346666 b!7346667) bm!671358))

(assert (= (or b!7346666 b!7346667) bm!671359))

(assert (= (or b!7346669 bm!671359) bm!671357))

(assert (= (or b!7346669 bm!671358) bm!671360))

(assert (= (or b!7346675 bm!671357) bm!671361))

(assert (= (or b!7346675 b!7346669) bm!671356))

(assert (=> b!7346668 m!8008880))

(declare-fun m!8008948 () Bool)

(assert (=> b!7346673 m!8008948))

(declare-fun m!8008950 () Bool)

(assert (=> bm!671361 m!8008950))

(declare-fun m!8008952 () Bool)

(assert (=> bm!671356 m!8008952))

(declare-fun m!8008954 () Bool)

(assert (=> bm!671360 m!8008954))

(assert (=> b!7346498 d!2279749))

(declare-fun d!2279751 () Bool)

(assert (=> d!2279751 (= ($colon$colon!3142 (exprs!8584 ct1!282) (regTwo!38800 r1!2370)) (Cons!71516 (regTwo!38800 r1!2370) (exprs!8584 ct1!282)))))

(assert (=> b!7346498 d!2279751))

(declare-fun b!7346676 () Bool)

(declare-fun e!4399037 () (Set Context!16168))

(declare-fun e!4399035 () (Set Context!16168))

(assert (=> b!7346676 (= e!4399037 e!4399035)))

(declare-fun c!1364773 () Bool)

(assert (=> b!7346676 (= c!1364773 (is-Union!19144 r1!2370))))

(declare-fun b!7346677 () Bool)

(declare-fun e!4399034 () (Set Context!16168))

(declare-fun call!671368 () (Set Context!16168))

(assert (=> b!7346677 (= e!4399034 call!671368)))

(declare-fun bm!671362 () Bool)

(declare-fun call!671367 () (Set Context!16168))

(declare-fun call!671372 () List!71640)

(assert (=> bm!671362 (= call!671367 (derivationStepZipperDown!2970 (ite c!1364773 (regOne!38801 r1!2370) (regOne!38800 r1!2370)) (ite c!1364773 (Context!16169 (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378))) (Context!16169 call!671372)) c!10362))))

(declare-fun b!7346678 () Bool)

(declare-fun e!4399033 () (Set Context!16168))

(assert (=> b!7346678 (= e!4399033 call!671368)))

(declare-fun b!7346679 () Bool)

(declare-fun e!4399036 () Bool)

(assert (=> b!7346679 (= e!4399036 (nullable!8235 (regOne!38800 r1!2370)))))

(declare-fun d!2279753 () Bool)

(declare-fun c!1364772 () Bool)

(assert (=> d!2279753 (= c!1364772 (and (is-ElementMatch!19144 r1!2370) (= (c!1364728 r1!2370) c!10362)))))

(assert (=> d!2279753 (= (derivationStepZipperDown!2970 r1!2370 (Context!16169 (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378))) c!10362) e!4399037)))

(declare-fun b!7346680 () Bool)

(declare-fun e!4399032 () (Set Context!16168))

(declare-fun call!671371 () (Set Context!16168))

(assert (=> b!7346680 (= e!4399032 (set.union call!671367 call!671371))))

(declare-fun bm!671363 () Bool)

(declare-fun call!671369 () (Set Context!16168))

(assert (=> bm!671363 (= call!671371 call!671369)))

(declare-fun b!7346681 () Bool)

(assert (=> b!7346681 (= e!4399032 e!4399034)))

(declare-fun c!1364770 () Bool)

(assert (=> b!7346681 (= c!1364770 (is-Concat!27989 r1!2370))))

(declare-fun b!7346682 () Bool)

(assert (=> b!7346682 (= e!4399033 (as set.empty (Set Context!16168)))))

(declare-fun b!7346683 () Bool)

(declare-fun c!1364774 () Bool)

(assert (=> b!7346683 (= c!1364774 e!4399036)))

(declare-fun res!2967301 () Bool)

(assert (=> b!7346683 (=> (not res!2967301) (not e!4399036))))

(assert (=> b!7346683 (= res!2967301 (is-Concat!27989 r1!2370))))

(assert (=> b!7346683 (= e!4399035 e!4399032)))

(declare-fun bm!671364 () Bool)

(declare-fun call!671370 () List!71640)

(assert (=> bm!671364 (= call!671370 call!671372)))

(declare-fun b!7346684 () Bool)

(assert (=> b!7346684 (= e!4399037 (set.insert (Context!16169 (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378))) (as set.empty (Set Context!16168))))))

(declare-fun bm!671365 () Bool)

(assert (=> bm!671365 (= call!671368 call!671371)))

(declare-fun b!7346685 () Bool)

(declare-fun c!1364771 () Bool)

(assert (=> b!7346685 (= c!1364771 (is-Star!19144 r1!2370))))

(assert (=> b!7346685 (= e!4399034 e!4399033)))

(declare-fun bm!671366 () Bool)

(assert (=> bm!671366 (= call!671372 ($colon$colon!3142 (exprs!8584 (Context!16169 (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378)))) (ite (or c!1364774 c!1364770) (regTwo!38800 r1!2370) r1!2370)))))

(declare-fun b!7346686 () Bool)

(assert (=> b!7346686 (= e!4399035 (set.union call!671367 call!671369))))

(declare-fun bm!671367 () Bool)

(assert (=> bm!671367 (= call!671369 (derivationStepZipperDown!2970 (ite c!1364773 (regTwo!38801 r1!2370) (ite c!1364774 (regTwo!38800 r1!2370) (ite c!1364770 (regOne!38800 r1!2370) (reg!19473 r1!2370)))) (ite (or c!1364773 c!1364774) (Context!16169 (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378))) (Context!16169 call!671370)) c!10362))))

(assert (= (and d!2279753 c!1364772) b!7346684))

(assert (= (and d!2279753 (not c!1364772)) b!7346676))

(assert (= (and b!7346676 c!1364773) b!7346686))

(assert (= (and b!7346676 (not c!1364773)) b!7346683))

(assert (= (and b!7346683 res!2967301) b!7346679))

(assert (= (and b!7346683 c!1364774) b!7346680))

(assert (= (and b!7346683 (not c!1364774)) b!7346681))

(assert (= (and b!7346681 c!1364770) b!7346677))

(assert (= (and b!7346681 (not c!1364770)) b!7346685))

(assert (= (and b!7346685 c!1364771) b!7346678))

(assert (= (and b!7346685 (not c!1364771)) b!7346682))

(assert (= (or b!7346677 b!7346678) bm!671364))

(assert (= (or b!7346677 b!7346678) bm!671365))

(assert (= (or b!7346680 bm!671365) bm!671363))

(assert (= (or b!7346680 bm!671364) bm!671366))

(assert (= (or b!7346686 bm!671363) bm!671367))

(assert (= (or b!7346686 b!7346680) bm!671362))

(assert (=> b!7346679 m!8008778))

(declare-fun m!8008956 () Bool)

(assert (=> b!7346684 m!8008956))

(declare-fun m!8008958 () Bool)

(assert (=> bm!671367 m!8008958))

(declare-fun m!8008960 () Bool)

(assert (=> bm!671362 m!8008960))

(declare-fun m!8008962 () Bool)

(assert (=> bm!671366 m!8008962))

(assert (=> b!7346509 d!2279753))

(declare-fun b!7346690 () Bool)

(declare-fun e!4399039 () Bool)

(declare-fun lt!2611314 () List!71640)

(assert (=> b!7346690 (= e!4399039 (or (not (= (exprs!8584 ct2!378) Nil!71516)) (= lt!2611314 (exprs!8584 ct1!282))))))

(declare-fun b!7346688 () Bool)

(declare-fun e!4399038 () List!71640)

(assert (=> b!7346688 (= e!4399038 (Cons!71516 (h!77964 (exprs!8584 ct1!282)) (++!16962 (t!386041 (exprs!8584 ct1!282)) (exprs!8584 ct2!378))))))

(declare-fun d!2279755 () Bool)

(assert (=> d!2279755 e!4399039))

(declare-fun res!2967302 () Bool)

(assert (=> d!2279755 (=> (not res!2967302) (not e!4399039))))

(assert (=> d!2279755 (= res!2967302 (= (content!15054 lt!2611314) (set.union (content!15054 (exprs!8584 ct1!282)) (content!15054 (exprs!8584 ct2!378)))))))

(assert (=> d!2279755 (= lt!2611314 e!4399038)))

(declare-fun c!1364775 () Bool)

(assert (=> d!2279755 (= c!1364775 (is-Nil!71516 (exprs!8584 ct1!282)))))

(assert (=> d!2279755 (= (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378)) lt!2611314)))

(declare-fun b!7346687 () Bool)

(assert (=> b!7346687 (= e!4399038 (exprs!8584 ct2!378))))

(declare-fun b!7346689 () Bool)

(declare-fun res!2967303 () Bool)

(assert (=> b!7346689 (=> (not res!2967303) (not e!4399039))))

(assert (=> b!7346689 (= res!2967303 (= (size!42033 lt!2611314) (+ (size!42033 (exprs!8584 ct1!282)) (size!42033 (exprs!8584 ct2!378)))))))

(assert (= (and d!2279755 c!1364775) b!7346687))

(assert (= (and d!2279755 (not c!1364775)) b!7346688))

(assert (= (and d!2279755 res!2967302) b!7346689))

(assert (= (and b!7346689 res!2967303) b!7346690))

(declare-fun m!8008968 () Bool)

(assert (=> b!7346688 m!8008968))

(declare-fun m!8008970 () Bool)

(assert (=> d!2279755 m!8008970))

(declare-fun m!8008972 () Bool)

(assert (=> d!2279755 m!8008972))

(assert (=> d!2279755 m!8008858))

(declare-fun m!8008974 () Bool)

(assert (=> b!7346689 m!8008974))

(declare-fun m!8008976 () Bool)

(assert (=> b!7346689 m!8008976))

(assert (=> b!7346689 m!8008864))

(assert (=> b!7346509 d!2279755))

(declare-fun d!2279759 () Bool)

(assert (=> d!2279759 (forall!17970 (++!16962 (exprs!8584 ct1!282) (exprs!8584 ct2!378)) lambda!456140)))

(declare-fun lt!2611316 () Unit!165241)

(assert (=> d!2279759 (= lt!2611316 (choose!57145 (exprs!8584 ct1!282) (exprs!8584 ct2!378) lambda!456140))))

(assert (=> d!2279759 (forall!17970 (exprs!8584 ct1!282) lambda!456140)))

(assert (=> d!2279759 (= (lemmaConcatPreservesForall!1819 (exprs!8584 ct1!282) (exprs!8584 ct2!378) lambda!456140) lt!2611316)))

(declare-fun bs!1918924 () Bool)

(assert (= bs!1918924 d!2279759))

(assert (=> bs!1918924 m!8008750))

(assert (=> bs!1918924 m!8008750))

(declare-fun m!8008978 () Bool)

(assert (=> bs!1918924 m!8008978))

(declare-fun m!8008980 () Bool)

(assert (=> bs!1918924 m!8008980))

(declare-fun m!8008982 () Bool)

(assert (=> bs!1918924 m!8008982))

(assert (=> b!7346509 d!2279759))

(declare-fun b!7346695 () Bool)

(declare-fun e!4399047 () (Set Context!16168))

(declare-fun e!4399045 () (Set Context!16168))

(assert (=> b!7346695 (= e!4399047 e!4399045)))

(declare-fun c!1364780 () Bool)

(assert (=> b!7346695 (= c!1364780 (is-Union!19144 r1!2370))))

(declare-fun b!7346696 () Bool)

(declare-fun e!4399044 () (Set Context!16168))

(declare-fun call!671374 () (Set Context!16168))

(assert (=> b!7346696 (= e!4399044 call!671374)))

(declare-fun call!671378 () List!71640)

(declare-fun bm!671368 () Bool)

(declare-fun call!671373 () (Set Context!16168))

(assert (=> bm!671368 (= call!671373 (derivationStepZipperDown!2970 (ite c!1364780 (regOne!38801 r1!2370) (regOne!38800 r1!2370)) (ite c!1364780 ct1!282 (Context!16169 call!671378)) c!10362))))

(declare-fun b!7346697 () Bool)

(declare-fun e!4399043 () (Set Context!16168))

(assert (=> b!7346697 (= e!4399043 call!671374)))

(declare-fun b!7346698 () Bool)

(declare-fun e!4399046 () Bool)

(assert (=> b!7346698 (= e!4399046 (nullable!8235 (regOne!38800 r1!2370)))))

(declare-fun d!2279761 () Bool)

(declare-fun c!1364779 () Bool)

(assert (=> d!2279761 (= c!1364779 (and (is-ElementMatch!19144 r1!2370) (= (c!1364728 r1!2370) c!10362)))))

(assert (=> d!2279761 (= (derivationStepZipperDown!2970 r1!2370 ct1!282 c!10362) e!4399047)))

(declare-fun b!7346699 () Bool)

(declare-fun e!4399042 () (Set Context!16168))

(declare-fun call!671377 () (Set Context!16168))

(assert (=> b!7346699 (= e!4399042 (set.union call!671373 call!671377))))

(declare-fun bm!671369 () Bool)

(declare-fun call!671375 () (Set Context!16168))

(assert (=> bm!671369 (= call!671377 call!671375)))

(declare-fun b!7346700 () Bool)

(assert (=> b!7346700 (= e!4399042 e!4399044)))

(declare-fun c!1364777 () Bool)

(assert (=> b!7346700 (= c!1364777 (is-Concat!27989 r1!2370))))

(declare-fun b!7346701 () Bool)

(assert (=> b!7346701 (= e!4399043 (as set.empty (Set Context!16168)))))

(declare-fun b!7346702 () Bool)

(declare-fun c!1364781 () Bool)

(assert (=> b!7346702 (= c!1364781 e!4399046)))

(declare-fun res!2967306 () Bool)

(assert (=> b!7346702 (=> (not res!2967306) (not e!4399046))))

(assert (=> b!7346702 (= res!2967306 (is-Concat!27989 r1!2370))))

(assert (=> b!7346702 (= e!4399045 e!4399042)))

(declare-fun bm!671370 () Bool)

(declare-fun call!671376 () List!71640)

(assert (=> bm!671370 (= call!671376 call!671378)))

(declare-fun b!7346703 () Bool)

(assert (=> b!7346703 (= e!4399047 (set.insert ct1!282 (as set.empty (Set Context!16168))))))

(declare-fun bm!671371 () Bool)

(assert (=> bm!671371 (= call!671374 call!671377)))

(declare-fun b!7346704 () Bool)

(declare-fun c!1364778 () Bool)

(assert (=> b!7346704 (= c!1364778 (is-Star!19144 r1!2370))))

(assert (=> b!7346704 (= e!4399044 e!4399043)))

(declare-fun bm!671372 () Bool)

(assert (=> bm!671372 (= call!671378 ($colon$colon!3142 (exprs!8584 ct1!282) (ite (or c!1364781 c!1364777) (regTwo!38800 r1!2370) r1!2370)))))

(declare-fun b!7346705 () Bool)

(assert (=> b!7346705 (= e!4399045 (set.union call!671373 call!671375))))

(declare-fun bm!671373 () Bool)

(assert (=> bm!671373 (= call!671375 (derivationStepZipperDown!2970 (ite c!1364780 (regTwo!38801 r1!2370) (ite c!1364781 (regTwo!38800 r1!2370) (ite c!1364777 (regOne!38800 r1!2370) (reg!19473 r1!2370)))) (ite (or c!1364780 c!1364781) ct1!282 (Context!16169 call!671376)) c!10362))))

(assert (= (and d!2279761 c!1364779) b!7346703))

(assert (= (and d!2279761 (not c!1364779)) b!7346695))

(assert (= (and b!7346695 c!1364780) b!7346705))

(assert (= (and b!7346695 (not c!1364780)) b!7346702))

(assert (= (and b!7346702 res!2967306) b!7346698))

(assert (= (and b!7346702 c!1364781) b!7346699))

(assert (= (and b!7346702 (not c!1364781)) b!7346700))

(assert (= (and b!7346700 c!1364777) b!7346696))

(assert (= (and b!7346700 (not c!1364777)) b!7346704))

(assert (= (and b!7346704 c!1364778) b!7346697))

(assert (= (and b!7346704 (not c!1364778)) b!7346701))

(assert (= (or b!7346696 b!7346697) bm!671370))

(assert (= (or b!7346696 b!7346697) bm!671371))

(assert (= (or b!7346699 bm!671371) bm!671369))

(assert (= (or b!7346699 bm!671370) bm!671372))

(assert (= (or b!7346705 bm!671369) bm!671373))

(assert (= (or b!7346705 b!7346699) bm!671368))

(assert (=> b!7346698 m!8008778))

(assert (=> b!7346703 m!8008940))

(declare-fun m!8008992 () Bool)

(assert (=> bm!671373 m!8008992))

(declare-fun m!8008996 () Bool)

(assert (=> bm!671368 m!8008996))

(declare-fun m!8008998 () Bool)

(assert (=> bm!671372 m!8008998))

(assert (=> b!7346495 d!2279761))

(declare-fun call!671379 () Bool)

(declare-fun c!1364782 () Bool)

(declare-fun bm!671374 () Bool)

(declare-fun c!1364783 () Bool)

(assert (=> bm!671374 (= call!671379 (validRegex!9740 (ite c!1364782 (reg!19473 (regTwo!38800 r1!2370)) (ite c!1364783 (regTwo!38801 (regTwo!38800 r1!2370)) (regOne!38800 (regTwo!38800 r1!2370))))))))

(declare-fun b!7346706 () Bool)

(declare-fun e!4399054 () Bool)

(declare-fun e!4399050 () Bool)

(assert (=> b!7346706 (= e!4399054 e!4399050)))

(assert (=> b!7346706 (= c!1364782 (is-Star!19144 (regTwo!38800 r1!2370)))))

(declare-fun b!7346707 () Bool)

(declare-fun e!4399051 () Bool)

(declare-fun e!4399049 () Bool)

(assert (=> b!7346707 (= e!4399051 e!4399049)))

(declare-fun res!2967310 () Bool)

(assert (=> b!7346707 (=> (not res!2967310) (not e!4399049))))

(declare-fun call!671381 () Bool)

(assert (=> b!7346707 (= res!2967310 call!671381)))

(declare-fun bm!671375 () Bool)

(assert (=> bm!671375 (= call!671381 call!671379)))

(declare-fun bm!671376 () Bool)

(declare-fun call!671380 () Bool)

(assert (=> bm!671376 (= call!671380 (validRegex!9740 (ite c!1364783 (regOne!38801 (regTwo!38800 r1!2370)) (regTwo!38800 (regTwo!38800 r1!2370)))))))

(declare-fun b!7346708 () Bool)

(declare-fun e!4399048 () Bool)

(assert (=> b!7346708 (= e!4399048 call!671381)))

(declare-fun b!7346709 () Bool)

(assert (=> b!7346709 (= e!4399049 call!671380)))

(declare-fun d!2279765 () Bool)

(declare-fun res!2967309 () Bool)

(assert (=> d!2279765 (=> res!2967309 e!4399054)))

(assert (=> d!2279765 (= res!2967309 (is-ElementMatch!19144 (regTwo!38800 r1!2370)))))

(assert (=> d!2279765 (= (validRegex!9740 (regTwo!38800 r1!2370)) e!4399054)))

(declare-fun b!7346710 () Bool)

(declare-fun res!2967308 () Bool)

(assert (=> b!7346710 (=> (not res!2967308) (not e!4399048))))

(assert (=> b!7346710 (= res!2967308 call!671380)))

(declare-fun e!4399052 () Bool)

(assert (=> b!7346710 (= e!4399052 e!4399048)))

(declare-fun b!7346711 () Bool)

(declare-fun res!2967307 () Bool)

(assert (=> b!7346711 (=> res!2967307 e!4399051)))

(assert (=> b!7346711 (= res!2967307 (not (is-Concat!27989 (regTwo!38800 r1!2370))))))

(assert (=> b!7346711 (= e!4399052 e!4399051)))

(declare-fun b!7346712 () Bool)

(declare-fun e!4399053 () Bool)

(assert (=> b!7346712 (= e!4399053 call!671379)))

(declare-fun b!7346713 () Bool)

(assert (=> b!7346713 (= e!4399050 e!4399053)))

(declare-fun res!2967311 () Bool)

(assert (=> b!7346713 (= res!2967311 (not (nullable!8235 (reg!19473 (regTwo!38800 r1!2370)))))))

(assert (=> b!7346713 (=> (not res!2967311) (not e!4399053))))

(declare-fun b!7346714 () Bool)

(assert (=> b!7346714 (= e!4399050 e!4399052)))

(assert (=> b!7346714 (= c!1364783 (is-Union!19144 (regTwo!38800 r1!2370)))))

(assert (= (and d!2279765 (not res!2967309)) b!7346706))

(assert (= (and b!7346706 c!1364782) b!7346713))

(assert (= (and b!7346706 (not c!1364782)) b!7346714))

(assert (= (and b!7346713 res!2967311) b!7346712))

(assert (= (and b!7346714 c!1364783) b!7346710))

(assert (= (and b!7346714 (not c!1364783)) b!7346711))

(assert (= (and b!7346710 res!2967308) b!7346708))

(assert (= (and b!7346711 (not res!2967307)) b!7346707))

(assert (= (and b!7346707 res!2967310) b!7346709))

(assert (= (or b!7346710 b!7346709) bm!671376))

(assert (= (or b!7346708 b!7346707) bm!671375))

(assert (= (or b!7346712 bm!671375) bm!671374))

(declare-fun m!8009000 () Bool)

(assert (=> bm!671374 m!8009000))

(declare-fun m!8009002 () Bool)

(assert (=> bm!671376 m!8009002))

(declare-fun m!8009004 () Bool)

(assert (=> b!7346713 m!8009004))

(assert (=> b!7346496 d!2279765))

(declare-fun d!2279767 () Bool)

(declare-fun nullableFct!3276 (Regex!19144) Bool)

(assert (=> d!2279767 (= (nullable!8235 (regOne!38800 r1!2370)) (nullableFct!3276 (regOne!38800 r1!2370)))))

(declare-fun bs!1918925 () Bool)

(assert (= bs!1918925 d!2279767))

(declare-fun m!8009006 () Bool)

(assert (=> bs!1918925 m!8009006))

(assert (=> b!7346506 d!2279767))

(declare-fun b!7346719 () Bool)

(declare-fun e!4399057 () Bool)

(declare-fun tp!2086462 () Bool)

(declare-fun tp!2086463 () Bool)

(assert (=> b!7346719 (= e!4399057 (and tp!2086462 tp!2086463))))

(assert (=> b!7346508 (= tp!2086429 e!4399057)))

(assert (= (and b!7346508 (is-Cons!71516 (exprs!8584 ct1!282))) b!7346719))

(declare-fun b!7346720 () Bool)

(declare-fun e!4399058 () Bool)

(declare-fun tp!2086464 () Bool)

(declare-fun tp!2086465 () Bool)

(assert (=> b!7346720 (= e!4399058 (and tp!2086464 tp!2086465))))

(assert (=> b!7346502 (= tp!2086430 e!4399058)))

(assert (= (and b!7346502 (is-Cons!71516 (exprs!8584 cWitness!61))) b!7346720))

(declare-fun e!4399061 () Bool)

(assert (=> b!7346500 (= tp!2086431 e!4399061)))

(declare-fun b!7346733 () Bool)

(declare-fun tp!2086478 () Bool)

(assert (=> b!7346733 (= e!4399061 tp!2086478)))

(declare-fun b!7346731 () Bool)

(assert (=> b!7346731 (= e!4399061 tp_is_empty!48533)))

(declare-fun b!7346732 () Bool)

(declare-fun tp!2086476 () Bool)

(declare-fun tp!2086479 () Bool)

(assert (=> b!7346732 (= e!4399061 (and tp!2086476 tp!2086479))))

(declare-fun b!7346734 () Bool)

(declare-fun tp!2086480 () Bool)

(declare-fun tp!2086477 () Bool)

(assert (=> b!7346734 (= e!4399061 (and tp!2086480 tp!2086477))))

(assert (= (and b!7346500 (is-ElementMatch!19144 (reg!19473 r1!2370))) b!7346731))

(assert (= (and b!7346500 (is-Concat!27989 (reg!19473 r1!2370))) b!7346732))

(assert (= (and b!7346500 (is-Star!19144 (reg!19473 r1!2370))) b!7346733))

(assert (= (and b!7346500 (is-Union!19144 (reg!19473 r1!2370))) b!7346734))

(declare-fun e!4399062 () Bool)

(assert (=> b!7346494 (= tp!2086428 e!4399062)))

(declare-fun b!7346737 () Bool)

(declare-fun tp!2086483 () Bool)

(assert (=> b!7346737 (= e!4399062 tp!2086483)))

(declare-fun b!7346735 () Bool)

(assert (=> b!7346735 (= e!4399062 tp_is_empty!48533)))

(declare-fun b!7346736 () Bool)

(declare-fun tp!2086481 () Bool)

(declare-fun tp!2086484 () Bool)

(assert (=> b!7346736 (= e!4399062 (and tp!2086481 tp!2086484))))

(declare-fun b!7346738 () Bool)

(declare-fun tp!2086485 () Bool)

(declare-fun tp!2086482 () Bool)

(assert (=> b!7346738 (= e!4399062 (and tp!2086485 tp!2086482))))

(assert (= (and b!7346494 (is-ElementMatch!19144 (regOne!38800 r1!2370))) b!7346735))

(assert (= (and b!7346494 (is-Concat!27989 (regOne!38800 r1!2370))) b!7346736))

(assert (= (and b!7346494 (is-Star!19144 (regOne!38800 r1!2370))) b!7346737))

(assert (= (and b!7346494 (is-Union!19144 (regOne!38800 r1!2370))) b!7346738))

(declare-fun e!4399063 () Bool)

(assert (=> b!7346494 (= tp!2086426 e!4399063)))

(declare-fun b!7346741 () Bool)

(declare-fun tp!2086488 () Bool)

(assert (=> b!7346741 (= e!4399063 tp!2086488)))

(declare-fun b!7346739 () Bool)

(assert (=> b!7346739 (= e!4399063 tp_is_empty!48533)))

(declare-fun b!7346740 () Bool)

(declare-fun tp!2086486 () Bool)

(declare-fun tp!2086489 () Bool)

(assert (=> b!7346740 (= e!4399063 (and tp!2086486 tp!2086489))))

(declare-fun b!7346742 () Bool)

(declare-fun tp!2086490 () Bool)

(declare-fun tp!2086487 () Bool)

(assert (=> b!7346742 (= e!4399063 (and tp!2086490 tp!2086487))))

(assert (= (and b!7346494 (is-ElementMatch!19144 (regTwo!38800 r1!2370))) b!7346739))

(assert (= (and b!7346494 (is-Concat!27989 (regTwo!38800 r1!2370))) b!7346740))

(assert (= (and b!7346494 (is-Star!19144 (regTwo!38800 r1!2370))) b!7346741))

(assert (= (and b!7346494 (is-Union!19144 (regTwo!38800 r1!2370))) b!7346742))

(declare-fun b!7346743 () Bool)

(declare-fun e!4399064 () Bool)

(declare-fun tp!2086491 () Bool)

(declare-fun tp!2086492 () Bool)

(assert (=> b!7346743 (= e!4399064 (and tp!2086491 tp!2086492))))

(assert (=> b!7346505 (= tp!2086427 e!4399064)))

(assert (= (and b!7346505 (is-Cons!71516 (exprs!8584 ct2!378))) b!7346743))

(declare-fun e!4399065 () Bool)

(assert (=> b!7346501 (= tp!2086433 e!4399065)))

(declare-fun b!7346746 () Bool)

(declare-fun tp!2086495 () Bool)

(assert (=> b!7346746 (= e!4399065 tp!2086495)))

(declare-fun b!7346744 () Bool)

(assert (=> b!7346744 (= e!4399065 tp_is_empty!48533)))

(declare-fun b!7346745 () Bool)

(declare-fun tp!2086493 () Bool)

(declare-fun tp!2086496 () Bool)

(assert (=> b!7346745 (= e!4399065 (and tp!2086493 tp!2086496))))

(declare-fun b!7346747 () Bool)

(declare-fun tp!2086497 () Bool)

(declare-fun tp!2086494 () Bool)

(assert (=> b!7346747 (= e!4399065 (and tp!2086497 tp!2086494))))

(assert (= (and b!7346501 (is-ElementMatch!19144 (regOne!38801 r1!2370))) b!7346744))

(assert (= (and b!7346501 (is-Concat!27989 (regOne!38801 r1!2370))) b!7346745))

(assert (= (and b!7346501 (is-Star!19144 (regOne!38801 r1!2370))) b!7346746))

(assert (= (and b!7346501 (is-Union!19144 (regOne!38801 r1!2370))) b!7346747))

(declare-fun e!4399066 () Bool)

(assert (=> b!7346501 (= tp!2086432 e!4399066)))

(declare-fun b!7346750 () Bool)

(declare-fun tp!2086500 () Bool)

(assert (=> b!7346750 (= e!4399066 tp!2086500)))

(declare-fun b!7346748 () Bool)

(assert (=> b!7346748 (= e!4399066 tp_is_empty!48533)))

(declare-fun b!7346749 () Bool)

(declare-fun tp!2086498 () Bool)

(declare-fun tp!2086501 () Bool)

(assert (=> b!7346749 (= e!4399066 (and tp!2086498 tp!2086501))))

(declare-fun b!7346751 () Bool)

(declare-fun tp!2086502 () Bool)

(declare-fun tp!2086499 () Bool)

(assert (=> b!7346751 (= e!4399066 (and tp!2086502 tp!2086499))))

(assert (= (and b!7346501 (is-ElementMatch!19144 (regTwo!38801 r1!2370))) b!7346748))

(assert (= (and b!7346501 (is-Concat!27989 (regTwo!38801 r1!2370))) b!7346749))

(assert (= (and b!7346501 (is-Star!19144 (regTwo!38801 r1!2370))) b!7346750))

(assert (= (and b!7346501 (is-Union!19144 (regTwo!38801 r1!2370))) b!7346751))

(declare-fun b_lambda!284015 () Bool)

(assert (= b_lambda!284013 (or b!7346509 b_lambda!284015)))

(declare-fun bs!1918926 () Bool)

(declare-fun d!2279769 () Bool)

(assert (= bs!1918926 (and d!2279769 b!7346509)))

(assert (=> bs!1918926 (= (dynLambda!29475 lambda!456140 (h!77964 (exprs!8584 cWitness!61))) (validRegex!9740 (h!77964 (exprs!8584 cWitness!61))))))

(declare-fun m!8009008 () Bool)

(assert (=> bs!1918926 m!8009008))

(assert (=> b!7346591 d!2279769))

(declare-fun b_lambda!284017 () Bool)

(assert (= b_lambda!284011 (or b!7346509 b_lambda!284017)))

(declare-fun bs!1918927 () Bool)

(declare-fun d!2279771 () Bool)

(assert (= bs!1918927 (and d!2279771 b!7346509)))

(assert (=> bs!1918927 (= (dynLambda!29475 lambda!456140 (h!77964 (exprs!8584 ct2!378))) (validRegex!9740 (h!77964 (exprs!8584 ct2!378))))))

(declare-fun m!8009010 () Bool)

(assert (=> bs!1918927 m!8009010))

(assert (=> b!7346562 d!2279771))

(push 1)

(assert (not d!2279737))

(assert (not b!7346750))

(assert (not b!7346592))

(assert (not d!2279755))

(assert (not b_lambda!284015))

(assert (not b_lambda!284017))

(assert (not b!7346740))

(assert (not b!7346679))

(assert (not b!7346732))

(assert (not b!7346657))

(assert (not b!7346749))

(assert (not b!7346736))

(assert (not b!7346745))

(assert (not d!2279731))

(assert (not bm!671354))

(assert (not b!7346743))

(assert (not bm!671329))

(assert (not bm!671368))

(assert (not d!2279745))

(assert (not b!7346689))

(assert (not bm!671373))

(assert (not b!7346719))

(assert (not b!7346741))

(assert (not bs!1918926))

(assert (not d!2279727))

(assert (not bm!671349))

(assert (not b!7346652))

(assert (not b!7346589))

(assert (not bm!671372))

(assert (not d!2279759))

(assert (not b!7346630))

(assert (not bm!671360))

(assert (not d!2279723))

(assert (not bs!1918927))

(assert (not b!7346651))

(assert (not bm!671356))

(assert tp_is_empty!48533)

(assert (not bm!671350))

(assert (not bm!671374))

(assert (not bm!671331))

(assert (not bm!671355))

(assert (not b!7346602))

(assert (not b!7346698))

(assert (not bm!671366))

(assert (not bm!671348))

(assert (not b!7346733))

(assert (not d!2279725))

(assert (not b!7346747))

(assert (not b!7346603))

(assert (not b!7346688))

(assert (not bm!671361))

(assert (not b!7346563))

(assert (not b!7346720))

(assert (not d!2279739))

(assert (not b!7346738))

(assert (not bm!671376))

(assert (not b!7346742))

(assert (not bm!671367))

(assert (not d!2279767))

(assert (not b!7346734))

(assert (not b!7346746))

(assert (not d!2279743))

(assert (not bm!671344))

(assert (not b!7346737))

(assert (not b!7346713))

(assert (not b!7346668))

(assert (not bm!671362))

(assert (not b!7346751))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

