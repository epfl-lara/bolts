; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716714 () Bool)

(assert start!716714)

(declare-fun b!7337326 () Bool)

(declare-fun e!4393624 () Bool)

(declare-fun tp_is_empty!48425 () Bool)

(assert (=> b!7337326 (= e!4393624 tp_is_empty!48425)))

(declare-fun res!2964605 () Bool)

(declare-fun e!4393625 () Bool)

(assert (=> start!716714 (=> (not res!2964605) (not e!4393625))))

(declare-datatypes ((C!38454 0))(
  ( (C!38455 (val!29587 Int)) )
))
(declare-datatypes ((Regex!19090 0))(
  ( (ElementMatch!19090 (c!1362788 C!38454)) (Concat!27935 (regOne!38692 Regex!19090) (regTwo!38692 Regex!19090)) (EmptyExpr!19090) (Star!19090 (reg!19419 Regex!19090)) (EmptyLang!19090) (Union!19090 (regOne!38693 Regex!19090) (regTwo!38693 Regex!19090)) )
))
(declare-fun r1!2370 () Regex!19090)

(declare-fun validRegex!9686 (Regex!19090) Bool)

(assert (=> start!716714 (= res!2964605 (validRegex!9686 r1!2370))))

(assert (=> start!716714 e!4393625))

(assert (=> start!716714 tp_is_empty!48425))

(declare-datatypes ((List!71586 0))(
  ( (Nil!71462) (Cons!71462 (h!77910 Regex!19090) (t!385981 List!71586)) )
))
(declare-datatypes ((Context!16060 0))(
  ( (Context!16061 (exprs!8530 List!71586)) )
))
(declare-fun cWitness!61 () Context!16060)

(declare-fun e!4393626 () Bool)

(declare-fun inv!91066 (Context!16060) Bool)

(assert (=> start!716714 (and (inv!91066 cWitness!61) e!4393626)))

(declare-fun ct1!282 () Context!16060)

(declare-fun e!4393623 () Bool)

(assert (=> start!716714 (and (inv!91066 ct1!282) e!4393623)))

(assert (=> start!716714 e!4393624))

(declare-fun ct2!378 () Context!16060)

(declare-fun e!4393629 () Bool)

(assert (=> start!716714 (and (inv!91066 ct2!378) e!4393629)))

(declare-fun b!7337327 () Bool)

(declare-fun tp!2083062 () Bool)

(declare-fun tp!2083063 () Bool)

(assert (=> b!7337327 (= e!4393624 (and tp!2083062 tp!2083063))))

(declare-fun b!7337328 () Bool)

(declare-fun e!4393631 () Bool)

(declare-fun lambda!455298 () Int)

(declare-fun forall!17924 (List!71586 Int) Bool)

(assert (=> b!7337328 (= e!4393631 (not (forall!17924 (exprs!8530 ct2!378) lambda!455298)))))

(declare-fun b!7337329 () Bool)

(declare-fun tp!2083064 () Bool)

(assert (=> b!7337329 (= e!4393626 tp!2083064)))

(declare-fun b!7337330 () Bool)

(declare-fun tp!2083066 () Bool)

(assert (=> b!7337330 (= e!4393629 tp!2083066)))

(declare-fun b!7337331 () Bool)

(declare-fun e!4393628 () Bool)

(assert (=> b!7337331 (= e!4393628 e!4393631)))

(declare-fun res!2964607 () Bool)

(assert (=> b!7337331 (=> (not res!2964607) (not e!4393631))))

(assert (=> b!7337331 (= res!2964607 (forall!17924 (exprs!8530 cWitness!61) lambda!455298))))

(declare-fun b!7337332 () Bool)

(declare-fun tp!2083061 () Bool)

(assert (=> b!7337332 (= e!4393623 tp!2083061)))

(declare-fun b!7337333 () Bool)

(declare-fun tp!2083060 () Bool)

(assert (=> b!7337333 (= e!4393624 tp!2083060)))

(declare-fun b!7337334 () Bool)

(declare-fun e!4393630 () Bool)

(declare-fun e!4393632 () Bool)

(assert (=> b!7337334 (= e!4393630 e!4393632)))

(declare-fun res!2964606 () Bool)

(assert (=> b!7337334 (=> (not res!2964606) (not e!4393632))))

(declare-fun lt!2609410 () (Set Context!16060))

(declare-fun lt!2609407 () (Set Context!16060))

(assert (=> b!7337334 (= res!2964606 (and (= lt!2609410 lt!2609407) (set.member cWitness!61 lt!2609407) (= cWitness!61 ct1!282)))))

(assert (=> b!7337334 (= lt!2609407 (set.insert ct1!282 (as set.empty (Set Context!16060))))))

(declare-fun b!7337335 () Bool)

(assert (=> b!7337335 (= e!4393632 e!4393628)))

(declare-fun res!2964608 () Bool)

(assert (=> b!7337335 (=> (not res!2964608) (not e!4393628))))

(declare-fun lt!2609409 () (Set Context!16060))

(declare-fun lt!2609408 () Context!16060)

(assert (=> b!7337335 (= res!2964608 (= lt!2609409 (set.insert lt!2609408 (as set.empty (Set Context!16060)))))))

(declare-datatypes ((Unit!165133 0))(
  ( (Unit!165134) )
))
(declare-fun lt!2609411 () Unit!165133)

(declare-fun lemmaConcatPreservesForall!1765 (List!71586 List!71586 Int) Unit!165133)

(assert (=> b!7337335 (= lt!2609411 (lemmaConcatPreservesForall!1765 (exprs!8530 ct1!282) (exprs!8530 ct2!378) lambda!455298))))

(declare-fun b!7337336 () Bool)

(declare-fun tp!2083065 () Bool)

(declare-fun tp!2083067 () Bool)

(assert (=> b!7337336 (= e!4393624 (and tp!2083065 tp!2083067))))

(declare-fun b!7337337 () Bool)

(declare-fun e!4393627 () Bool)

(assert (=> b!7337337 (= e!4393627 e!4393630)))

(declare-fun res!2964604 () Bool)

(assert (=> b!7337337 (=> (not res!2964604) (not e!4393630))))

(declare-fun c!10362 () C!38454)

(assert (=> b!7337337 (= res!2964604 (and (is-ElementMatch!19090 r1!2370) (= c!10362 (c!1362788 r1!2370))))))

(declare-fun derivationStepZipperDown!2916 (Regex!19090 Context!16060 C!38454) (Set Context!16060))

(assert (=> b!7337337 (= lt!2609409 (derivationStepZipperDown!2916 r1!2370 lt!2609408 c!10362))))

(declare-fun ++!16908 (List!71586 List!71586) List!71586)

(assert (=> b!7337337 (= lt!2609408 (Context!16061 (++!16908 (exprs!8530 ct1!282) (exprs!8530 ct2!378))))))

(declare-fun lt!2609406 () Unit!165133)

(assert (=> b!7337337 (= lt!2609406 (lemmaConcatPreservesForall!1765 (exprs!8530 ct1!282) (exprs!8530 ct2!378) lambda!455298))))

(declare-fun b!7337338 () Bool)

(assert (=> b!7337338 (= e!4393625 e!4393627)))

(declare-fun res!2964603 () Bool)

(assert (=> b!7337338 (=> (not res!2964603) (not e!4393627))))

(assert (=> b!7337338 (= res!2964603 (set.member cWitness!61 lt!2609410))))

(assert (=> b!7337338 (= lt!2609410 (derivationStepZipperDown!2916 r1!2370 ct1!282 c!10362))))

(assert (= (and start!716714 res!2964605) b!7337338))

(assert (= (and b!7337338 res!2964603) b!7337337))

(assert (= (and b!7337337 res!2964604) b!7337334))

(assert (= (and b!7337334 res!2964606) b!7337335))

(assert (= (and b!7337335 res!2964608) b!7337331))

(assert (= (and b!7337331 res!2964607) b!7337328))

(assert (= start!716714 b!7337329))

(assert (= start!716714 b!7337332))

(assert (= (and start!716714 (is-ElementMatch!19090 r1!2370)) b!7337326))

(assert (= (and start!716714 (is-Concat!27935 r1!2370)) b!7337336))

(assert (= (and start!716714 (is-Star!19090 r1!2370)) b!7337333))

(assert (= (and start!716714 (is-Union!19090 r1!2370)) b!7337327))

(assert (= start!716714 b!7337330))

(declare-fun m!8002510 () Bool)

(assert (=> b!7337335 m!8002510))

(declare-fun m!8002512 () Bool)

(assert (=> b!7337335 m!8002512))

(declare-fun m!8002514 () Bool)

(assert (=> start!716714 m!8002514))

(declare-fun m!8002516 () Bool)

(assert (=> start!716714 m!8002516))

(declare-fun m!8002518 () Bool)

(assert (=> start!716714 m!8002518))

(declare-fun m!8002520 () Bool)

(assert (=> start!716714 m!8002520))

(declare-fun m!8002522 () Bool)

(assert (=> b!7337338 m!8002522))

(declare-fun m!8002524 () Bool)

(assert (=> b!7337338 m!8002524))

(declare-fun m!8002526 () Bool)

(assert (=> b!7337328 m!8002526))

(declare-fun m!8002528 () Bool)

(assert (=> b!7337334 m!8002528))

(declare-fun m!8002530 () Bool)

(assert (=> b!7337334 m!8002530))

(declare-fun m!8002532 () Bool)

(assert (=> b!7337331 m!8002532))

(declare-fun m!8002534 () Bool)

(assert (=> b!7337337 m!8002534))

(declare-fun m!8002536 () Bool)

(assert (=> b!7337337 m!8002536))

(assert (=> b!7337337 m!8002512))

(push 1)

(assert (not b!7337327))

(assert (not b!7337338))

(assert (not b!7337329))

(assert tp_is_empty!48425)

(assert (not b!7337337))

(assert (not b!7337331))

(assert (not b!7337330))

(assert (not b!7337333))

(assert (not b!7337332))

(assert (not b!7337328))

(assert (not start!716714))

(assert (not b!7337336))

(assert (not b!7337335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7337400 () Bool)

(declare-fun e!4393681 () Bool)

(declare-fun e!4393684 () Bool)

(assert (=> b!7337400 (= e!4393681 e!4393684)))

(declare-fun c!1362795 () Bool)

(assert (=> b!7337400 (= c!1362795 (is-Union!19090 r1!2370))))

(declare-fun b!7337401 () Bool)

(declare-fun e!4393685 () Bool)

(declare-fun e!4393687 () Bool)

(assert (=> b!7337401 (= e!4393685 e!4393687)))

(declare-fun res!2964641 () Bool)

(assert (=> b!7337401 (=> (not res!2964641) (not e!4393687))))

(declare-fun call!669236 () Bool)

(assert (=> b!7337401 (= res!2964641 call!669236)))

(declare-fun c!1362794 () Bool)

(declare-fun call!669234 () Bool)

(declare-fun bm!669229 () Bool)

(assert (=> bm!669229 (= call!669234 (validRegex!9686 (ite c!1362794 (reg!19419 r1!2370) (ite c!1362795 (regTwo!38693 r1!2370) (regOne!38692 r1!2370)))))))

(declare-fun bm!669230 () Bool)

(declare-fun call!669235 () Bool)

(assert (=> bm!669230 (= call!669235 (validRegex!9686 (ite c!1362795 (regOne!38693 r1!2370) (regTwo!38692 r1!2370))))))

(declare-fun b!7337402 () Bool)

(declare-fun e!4393682 () Bool)

(assert (=> b!7337402 (= e!4393682 call!669234)))

(declare-fun b!7337403 () Bool)

(declare-fun res!2964643 () Bool)

(declare-fun e!4393683 () Bool)

(assert (=> b!7337403 (=> (not res!2964643) (not e!4393683))))

(assert (=> b!7337403 (= res!2964643 call!669235)))

(assert (=> b!7337403 (= e!4393684 e!4393683)))

(declare-fun d!2278240 () Bool)

(declare-fun res!2964642 () Bool)

(declare-fun e!4393686 () Bool)

(assert (=> d!2278240 (=> res!2964642 e!4393686)))

(assert (=> d!2278240 (= res!2964642 (is-ElementMatch!19090 r1!2370))))

(assert (=> d!2278240 (= (validRegex!9686 r1!2370) e!4393686)))

(declare-fun bm!669231 () Bool)

(assert (=> bm!669231 (= call!669236 call!669234)))

(declare-fun b!7337404 () Bool)

(declare-fun res!2964645 () Bool)

(assert (=> b!7337404 (=> res!2964645 e!4393685)))

(assert (=> b!7337404 (= res!2964645 (not (is-Concat!27935 r1!2370)))))

(assert (=> b!7337404 (= e!4393684 e!4393685)))

(declare-fun b!7337405 () Bool)

(assert (=> b!7337405 (= e!4393686 e!4393681)))

(assert (=> b!7337405 (= c!1362794 (is-Star!19090 r1!2370))))

(declare-fun b!7337406 () Bool)

(assert (=> b!7337406 (= e!4393681 e!4393682)))

(declare-fun res!2964644 () Bool)

(declare-fun nullable!8187 (Regex!19090) Bool)

(assert (=> b!7337406 (= res!2964644 (not (nullable!8187 (reg!19419 r1!2370))))))

(assert (=> b!7337406 (=> (not res!2964644) (not e!4393682))))

(declare-fun b!7337407 () Bool)

(assert (=> b!7337407 (= e!4393683 call!669236)))

(declare-fun b!7337408 () Bool)

(assert (=> b!7337408 (= e!4393687 call!669235)))

(assert (= (and d!2278240 (not res!2964642)) b!7337405))

(assert (= (and b!7337405 c!1362794) b!7337406))

(assert (= (and b!7337405 (not c!1362794)) b!7337400))

(assert (= (and b!7337406 res!2964644) b!7337402))

(assert (= (and b!7337400 c!1362795) b!7337403))

(assert (= (and b!7337400 (not c!1362795)) b!7337404))

(assert (= (and b!7337403 res!2964643) b!7337407))

(assert (= (and b!7337404 (not res!2964645)) b!7337401))

(assert (= (and b!7337401 res!2964641) b!7337408))

(assert (= (or b!7337403 b!7337408) bm!669230))

(assert (= (or b!7337407 b!7337401) bm!669231))

(assert (= (or b!7337402 bm!669231) bm!669229))

(declare-fun m!8002566 () Bool)

(assert (=> bm!669229 m!8002566))

(declare-fun m!8002568 () Bool)

(assert (=> bm!669230 m!8002568))

(declare-fun m!8002570 () Bool)

(assert (=> b!7337406 m!8002570))

(assert (=> start!716714 d!2278240))

(declare-fun bs!1918128 () Bool)

(declare-fun d!2278244 () Bool)

(assert (= bs!1918128 (and d!2278244 b!7337337)))

(declare-fun lambda!455308 () Int)

(assert (=> bs!1918128 (= lambda!455308 lambda!455298)))

(assert (=> d!2278244 (= (inv!91066 cWitness!61) (forall!17924 (exprs!8530 cWitness!61) lambda!455308))))

(declare-fun bs!1918129 () Bool)

(assert (= bs!1918129 d!2278244))

(declare-fun m!8002572 () Bool)

(assert (=> bs!1918129 m!8002572))

(assert (=> start!716714 d!2278244))

(declare-fun bs!1918130 () Bool)

(declare-fun d!2278246 () Bool)

(assert (= bs!1918130 (and d!2278246 b!7337337)))

(declare-fun lambda!455309 () Int)

(assert (=> bs!1918130 (= lambda!455309 lambda!455298)))

(declare-fun bs!1918131 () Bool)

(assert (= bs!1918131 (and d!2278246 d!2278244)))

(assert (=> bs!1918131 (= lambda!455309 lambda!455308)))

(assert (=> d!2278246 (= (inv!91066 ct1!282) (forall!17924 (exprs!8530 ct1!282) lambda!455309))))

(declare-fun bs!1918132 () Bool)

(assert (= bs!1918132 d!2278246))

(declare-fun m!8002574 () Bool)

(assert (=> bs!1918132 m!8002574))

(assert (=> start!716714 d!2278246))

(declare-fun bs!1918133 () Bool)

(declare-fun d!2278248 () Bool)

(assert (= bs!1918133 (and d!2278248 b!7337337)))

(declare-fun lambda!455310 () Int)

(assert (=> bs!1918133 (= lambda!455310 lambda!455298)))

(declare-fun bs!1918134 () Bool)

(assert (= bs!1918134 (and d!2278248 d!2278244)))

(assert (=> bs!1918134 (= lambda!455310 lambda!455308)))

(declare-fun bs!1918135 () Bool)

(assert (= bs!1918135 (and d!2278248 d!2278246)))

(assert (=> bs!1918135 (= lambda!455310 lambda!455309)))

(assert (=> d!2278248 (= (inv!91066 ct2!378) (forall!17924 (exprs!8530 ct2!378) lambda!455310))))

(declare-fun bs!1918136 () Bool)

(assert (= bs!1918136 d!2278248))

(declare-fun m!8002580 () Bool)

(assert (=> bs!1918136 m!8002580))

(assert (=> start!716714 d!2278248))

(declare-fun d!2278252 () Bool)

(assert (=> d!2278252 (forall!17924 (++!16908 (exprs!8530 ct1!282) (exprs!8530 ct2!378)) lambda!455298)))

(declare-fun lt!2609432 () Unit!165133)

(declare-fun choose!57071 (List!71586 List!71586 Int) Unit!165133)

(assert (=> d!2278252 (= lt!2609432 (choose!57071 (exprs!8530 ct1!282) (exprs!8530 ct2!378) lambda!455298))))

(assert (=> d!2278252 (forall!17924 (exprs!8530 ct1!282) lambda!455298)))

(assert (=> d!2278252 (= (lemmaConcatPreservesForall!1765 (exprs!8530 ct1!282) (exprs!8530 ct2!378) lambda!455298) lt!2609432)))

(declare-fun bs!1918137 () Bool)

(assert (= bs!1918137 d!2278252))

(assert (=> bs!1918137 m!8002536))

(assert (=> bs!1918137 m!8002536))

(declare-fun m!8002586 () Bool)

(assert (=> bs!1918137 m!8002586))

(declare-fun m!8002588 () Bool)

(assert (=> bs!1918137 m!8002588))

(declare-fun m!8002590 () Bool)

(assert (=> bs!1918137 m!8002590))

(assert (=> b!7337335 d!2278252))

(declare-fun b!7337457 () Bool)

(declare-fun e!4393721 () (Set Context!16060))

(declare-fun call!669258 () (Set Context!16060))

(declare-fun call!669255 () (Set Context!16060))

(assert (=> b!7337457 (= e!4393721 (set.union call!669258 call!669255))))

(declare-fun b!7337458 () Bool)

(declare-fun e!4393716 () (Set Context!16060))

(assert (=> b!7337458 (= e!4393721 e!4393716)))

(declare-fun c!1362817 () Bool)

(assert (=> b!7337458 (= c!1362817 (is-Concat!27935 r1!2370))))

(declare-fun d!2278256 () Bool)

(declare-fun c!1362820 () Bool)

(assert (=> d!2278256 (= c!1362820 (and (is-ElementMatch!19090 r1!2370) (= (c!1362788 r1!2370) c!10362)))))

(declare-fun e!4393718 () (Set Context!16060))

(assert (=> d!2278256 (= (derivationStepZipperDown!2916 r1!2370 ct1!282 c!10362) e!4393718)))

(declare-fun bm!669248 () Bool)

(declare-fun call!669253 () (Set Context!16060))

(assert (=> bm!669248 (= call!669253 call!669255)))

(declare-fun b!7337459 () Bool)

(assert (=> b!7337459 (= e!4393718 (set.insert ct1!282 (as set.empty (Set Context!16060))))))

(declare-fun bm!669249 () Bool)

(declare-fun call!669256 () List!71586)

(declare-fun call!669257 () List!71586)

(assert (=> bm!669249 (= call!669256 call!669257)))

(declare-fun b!7337460 () Bool)

(declare-fun e!4393719 () (Set Context!16060))

(assert (=> b!7337460 (= e!4393719 (as set.empty (Set Context!16060)))))

(declare-fun call!669254 () (Set Context!16060))

(declare-fun c!1362816 () Bool)

(declare-fun c!1362819 () Bool)

(declare-fun bm!669250 () Bool)

(assert (=> bm!669250 (= call!669254 (derivationStepZipperDown!2916 (ite c!1362819 (regTwo!38693 r1!2370) (ite c!1362816 (regTwo!38692 r1!2370) (ite c!1362817 (regOne!38692 r1!2370) (reg!19419 r1!2370)))) (ite (or c!1362819 c!1362816) ct1!282 (Context!16061 call!669256)) c!10362))))

(declare-fun b!7337461 () Bool)

(declare-fun e!4393717 () Bool)

(assert (=> b!7337461 (= e!4393717 (nullable!8187 (regOne!38692 r1!2370)))))

(declare-fun b!7337462 () Bool)

(assert (=> b!7337462 (= e!4393719 call!669253)))

(declare-fun bm!669251 () Bool)

(assert (=> bm!669251 (= call!669258 (derivationStepZipperDown!2916 (ite c!1362819 (regOne!38693 r1!2370) (regOne!38692 r1!2370)) (ite c!1362819 ct1!282 (Context!16061 call!669257)) c!10362))))

(declare-fun b!7337463 () Bool)

(declare-fun e!4393720 () (Set Context!16060))

(assert (=> b!7337463 (= e!4393720 (set.union call!669258 call!669254))))

(declare-fun b!7337464 () Bool)

(assert (=> b!7337464 (= e!4393718 e!4393720)))

(assert (=> b!7337464 (= c!1362819 (is-Union!19090 r1!2370))))

(declare-fun b!7337465 () Bool)

(assert (=> b!7337465 (= e!4393716 call!669253)))

(declare-fun b!7337466 () Bool)

(assert (=> b!7337466 (= c!1362816 e!4393717)))

(declare-fun res!2964654 () Bool)

(assert (=> b!7337466 (=> (not res!2964654) (not e!4393717))))

(assert (=> b!7337466 (= res!2964654 (is-Concat!27935 r1!2370))))

(assert (=> b!7337466 (= e!4393720 e!4393721)))

(declare-fun b!7337467 () Bool)

(declare-fun c!1362818 () Bool)

(assert (=> b!7337467 (= c!1362818 (is-Star!19090 r1!2370))))

(assert (=> b!7337467 (= e!4393716 e!4393719)))

(declare-fun bm!669252 () Bool)

(assert (=> bm!669252 (= call!669255 call!669254)))

(declare-fun bm!669253 () Bool)

(declare-fun $colon$colon!3094 (List!71586 Regex!19090) List!71586)

(assert (=> bm!669253 (= call!669257 ($colon$colon!3094 (exprs!8530 ct1!282) (ite (or c!1362816 c!1362817) (regTwo!38692 r1!2370) r1!2370)))))

(assert (= (and d!2278256 c!1362820) b!7337459))

(assert (= (and d!2278256 (not c!1362820)) b!7337464))

(assert (= (and b!7337464 c!1362819) b!7337463))

(assert (= (and b!7337464 (not c!1362819)) b!7337466))

(assert (= (and b!7337466 res!2964654) b!7337461))

(assert (= (and b!7337466 c!1362816) b!7337457))

(assert (= (and b!7337466 (not c!1362816)) b!7337458))

(assert (= (and b!7337458 c!1362817) b!7337465))

(assert (= (and b!7337458 (not c!1362817)) b!7337467))

(assert (= (and b!7337467 c!1362818) b!7337462))

(assert (= (and b!7337467 (not c!1362818)) b!7337460))

(assert (= (or b!7337465 b!7337462) bm!669249))

(assert (= (or b!7337465 b!7337462) bm!669248))

(assert (= (or b!7337457 bm!669248) bm!669252))

(assert (= (or b!7337457 bm!669249) bm!669253))

(assert (= (or b!7337463 bm!669252) bm!669250))

(assert (= (or b!7337463 b!7337457) bm!669251))

(declare-fun m!8002592 () Bool)

(assert (=> bm!669251 m!8002592))

(declare-fun m!8002594 () Bool)

(assert (=> bm!669253 m!8002594))

(assert (=> b!7337459 m!8002530))

(declare-fun m!8002596 () Bool)

(assert (=> b!7337461 m!8002596))

(declare-fun m!8002598 () Bool)

(assert (=> bm!669250 m!8002598))

(assert (=> b!7337338 d!2278256))

(declare-fun d!2278258 () Bool)

(declare-fun res!2964659 () Bool)

(declare-fun e!4393726 () Bool)

(assert (=> d!2278258 (=> res!2964659 e!4393726)))

(assert (=> d!2278258 (= res!2964659 (is-Nil!71462 (exprs!8530 ct2!378)))))

(assert (=> d!2278258 (= (forall!17924 (exprs!8530 ct2!378) lambda!455298) e!4393726)))

(declare-fun b!7337472 () Bool)

(declare-fun e!4393727 () Bool)

(assert (=> b!7337472 (= e!4393726 e!4393727)))

(declare-fun res!2964660 () Bool)

(assert (=> b!7337472 (=> (not res!2964660) (not e!4393727))))

(declare-fun dynLambda!29438 (Int Regex!19090) Bool)

(assert (=> b!7337472 (= res!2964660 (dynLambda!29438 lambda!455298 (h!77910 (exprs!8530 ct2!378))))))

(declare-fun b!7337473 () Bool)

(assert (=> b!7337473 (= e!4393727 (forall!17924 (t!385981 (exprs!8530 ct2!378)) lambda!455298))))

(assert (= (and d!2278258 (not res!2964659)) b!7337472))

(assert (= (and b!7337472 res!2964660) b!7337473))

(declare-fun b_lambda!283775 () Bool)

(assert (=> (not b_lambda!283775) (not b!7337472)))

(declare-fun m!8002600 () Bool)

(assert (=> b!7337472 m!8002600))

(declare-fun m!8002602 () Bool)

(assert (=> b!7337473 m!8002602))

(assert (=> b!7337328 d!2278258))

(declare-fun d!2278260 () Bool)

(declare-fun res!2964661 () Bool)

(declare-fun e!4393728 () Bool)

(assert (=> d!2278260 (=> res!2964661 e!4393728)))

(assert (=> d!2278260 (= res!2964661 (is-Nil!71462 (exprs!8530 cWitness!61)))))

(assert (=> d!2278260 (= (forall!17924 (exprs!8530 cWitness!61) lambda!455298) e!4393728)))

(declare-fun b!7337474 () Bool)

(declare-fun e!4393729 () Bool)

(assert (=> b!7337474 (= e!4393728 e!4393729)))

(declare-fun res!2964662 () Bool)

(assert (=> b!7337474 (=> (not res!2964662) (not e!4393729))))

(assert (=> b!7337474 (= res!2964662 (dynLambda!29438 lambda!455298 (h!77910 (exprs!8530 cWitness!61))))))

(declare-fun b!7337475 () Bool)

(assert (=> b!7337475 (= e!4393729 (forall!17924 (t!385981 (exprs!8530 cWitness!61)) lambda!455298))))

(assert (= (and d!2278260 (not res!2964661)) b!7337474))

(assert (= (and b!7337474 res!2964662) b!7337475))

(declare-fun b_lambda!283777 () Bool)

(assert (=> (not b_lambda!283777) (not b!7337474)))

(declare-fun m!8002604 () Bool)

(assert (=> b!7337474 m!8002604))

(declare-fun m!8002606 () Bool)

(assert (=> b!7337475 m!8002606))

(assert (=> b!7337331 d!2278260))

(declare-fun b!7337476 () Bool)

(declare-fun e!4393735 () (Set Context!16060))

(declare-fun call!669270 () (Set Context!16060))

(declare-fun call!669267 () (Set Context!16060))

(assert (=> b!7337476 (= e!4393735 (set.union call!669270 call!669267))))

(declare-fun b!7337477 () Bool)

(declare-fun e!4393730 () (Set Context!16060))

(assert (=> b!7337477 (= e!4393735 e!4393730)))

(declare-fun c!1362822 () Bool)

(assert (=> b!7337477 (= c!1362822 (is-Concat!27935 r1!2370))))

(declare-fun d!2278262 () Bool)

(declare-fun c!1362825 () Bool)

(assert (=> d!2278262 (= c!1362825 (and (is-ElementMatch!19090 r1!2370) (= (c!1362788 r1!2370) c!10362)))))

(declare-fun e!4393732 () (Set Context!16060))

(assert (=> d!2278262 (= (derivationStepZipperDown!2916 r1!2370 lt!2609408 c!10362) e!4393732)))

(declare-fun bm!669260 () Bool)

(declare-fun call!669265 () (Set Context!16060))

(assert (=> bm!669260 (= call!669265 call!669267)))

(declare-fun b!7337478 () Bool)

(assert (=> b!7337478 (= e!4393732 (set.insert lt!2609408 (as set.empty (Set Context!16060))))))

(declare-fun bm!669261 () Bool)

(declare-fun call!669268 () List!71586)

(declare-fun call!669269 () List!71586)

(assert (=> bm!669261 (= call!669268 call!669269)))

(declare-fun b!7337479 () Bool)

(declare-fun e!4393733 () (Set Context!16060))

(assert (=> b!7337479 (= e!4393733 (as set.empty (Set Context!16060)))))

(declare-fun c!1362821 () Bool)

(declare-fun c!1362824 () Bool)

(declare-fun bm!669262 () Bool)

(declare-fun call!669266 () (Set Context!16060))

(assert (=> bm!669262 (= call!669266 (derivationStepZipperDown!2916 (ite c!1362824 (regTwo!38693 r1!2370) (ite c!1362821 (regTwo!38692 r1!2370) (ite c!1362822 (regOne!38692 r1!2370) (reg!19419 r1!2370)))) (ite (or c!1362824 c!1362821) lt!2609408 (Context!16061 call!669268)) c!10362))))

(declare-fun b!7337480 () Bool)

(declare-fun e!4393731 () Bool)

(assert (=> b!7337480 (= e!4393731 (nullable!8187 (regOne!38692 r1!2370)))))

(declare-fun b!7337481 () Bool)

(assert (=> b!7337481 (= e!4393733 call!669265)))

(declare-fun bm!669263 () Bool)

(assert (=> bm!669263 (= call!669270 (derivationStepZipperDown!2916 (ite c!1362824 (regOne!38693 r1!2370) (regOne!38692 r1!2370)) (ite c!1362824 lt!2609408 (Context!16061 call!669269)) c!10362))))

(declare-fun b!7337482 () Bool)

(declare-fun e!4393734 () (Set Context!16060))

(assert (=> b!7337482 (= e!4393734 (set.union call!669270 call!669266))))

(declare-fun b!7337483 () Bool)

(assert (=> b!7337483 (= e!4393732 e!4393734)))

(assert (=> b!7337483 (= c!1362824 (is-Union!19090 r1!2370))))

(declare-fun b!7337484 () Bool)

(assert (=> b!7337484 (= e!4393730 call!669265)))

(declare-fun b!7337485 () Bool)

(assert (=> b!7337485 (= c!1362821 e!4393731)))

(declare-fun res!2964663 () Bool)

(assert (=> b!7337485 (=> (not res!2964663) (not e!4393731))))

(assert (=> b!7337485 (= res!2964663 (is-Concat!27935 r1!2370))))

(assert (=> b!7337485 (= e!4393734 e!4393735)))

(declare-fun b!7337486 () Bool)

(declare-fun c!1362823 () Bool)

(assert (=> b!7337486 (= c!1362823 (is-Star!19090 r1!2370))))

(assert (=> b!7337486 (= e!4393730 e!4393733)))

(declare-fun bm!669264 () Bool)

(assert (=> bm!669264 (= call!669267 call!669266)))

(declare-fun bm!669265 () Bool)

(assert (=> bm!669265 (= call!669269 ($colon$colon!3094 (exprs!8530 lt!2609408) (ite (or c!1362821 c!1362822) (regTwo!38692 r1!2370) r1!2370)))))

(assert (= (and d!2278262 c!1362825) b!7337478))

(assert (= (and d!2278262 (not c!1362825)) b!7337483))

(assert (= (and b!7337483 c!1362824) b!7337482))

(assert (= (and b!7337483 (not c!1362824)) b!7337485))

(assert (= (and b!7337485 res!2964663) b!7337480))

(assert (= (and b!7337485 c!1362821) b!7337476))

(assert (= (and b!7337485 (not c!1362821)) b!7337477))

(assert (= (and b!7337477 c!1362822) b!7337484))

(assert (= (and b!7337477 (not c!1362822)) b!7337486))

(assert (= (and b!7337486 c!1362823) b!7337481))

(assert (= (and b!7337486 (not c!1362823)) b!7337479))

(assert (= (or b!7337484 b!7337481) bm!669261))

(assert (= (or b!7337484 b!7337481) bm!669260))

(assert (= (or b!7337476 bm!669260) bm!669264))

(assert (= (or b!7337476 bm!669261) bm!669265))

(assert (= (or b!7337482 bm!669264) bm!669262))

(assert (= (or b!7337482 b!7337476) bm!669263))

(declare-fun m!8002608 () Bool)

(assert (=> bm!669263 m!8002608))

(declare-fun m!8002610 () Bool)

(assert (=> bm!669265 m!8002610))

(assert (=> b!7337478 m!8002510))

(assert (=> b!7337480 m!8002596))

(declare-fun m!8002612 () Bool)

(assert (=> bm!669262 m!8002612))

(assert (=> b!7337337 d!2278262))

(declare-fun b!7337496 () Bool)

(declare-fun e!4393741 () List!71586)

(assert (=> b!7337496 (= e!4393741 (Cons!71462 (h!77910 (exprs!8530 ct1!282)) (++!16908 (t!385981 (exprs!8530 ct1!282)) (exprs!8530 ct2!378))))))

(declare-fun b!7337495 () Bool)

(assert (=> b!7337495 (= e!4393741 (exprs!8530 ct2!378))))

(declare-fun b!7337497 () Bool)

(declare-fun res!2964668 () Bool)

(declare-fun e!4393740 () Bool)

(assert (=> b!7337497 (=> (not res!2964668) (not e!4393740))))

(declare-fun lt!2609435 () List!71586)

(declare-fun size!41988 (List!71586) Int)

(assert (=> b!7337497 (= res!2964668 (= (size!41988 lt!2609435) (+ (size!41988 (exprs!8530 ct1!282)) (size!41988 (exprs!8530 ct2!378)))))))

(declare-fun d!2278264 () Bool)

(assert (=> d!2278264 e!4393740))

(declare-fun res!2964669 () Bool)

(assert (=> d!2278264 (=> (not res!2964669) (not e!4393740))))

(declare-fun content!15009 (List!71586) (Set Regex!19090))

(assert (=> d!2278264 (= res!2964669 (= (content!15009 lt!2609435) (set.union (content!15009 (exprs!8530 ct1!282)) (content!15009 (exprs!8530 ct2!378)))))))

(assert (=> d!2278264 (= lt!2609435 e!4393741)))

(declare-fun c!1362828 () Bool)

(assert (=> d!2278264 (= c!1362828 (is-Nil!71462 (exprs!8530 ct1!282)))))

(assert (=> d!2278264 (= (++!16908 (exprs!8530 ct1!282) (exprs!8530 ct2!378)) lt!2609435)))

(declare-fun b!7337498 () Bool)

(assert (=> b!7337498 (= e!4393740 (or (not (= (exprs!8530 ct2!378) Nil!71462)) (= lt!2609435 (exprs!8530 ct1!282))))))

(assert (= (and d!2278264 c!1362828) b!7337495))

(assert (= (and d!2278264 (not c!1362828)) b!7337496))

(assert (= (and d!2278264 res!2964669) b!7337497))

(assert (= (and b!7337497 res!2964668) b!7337498))

(declare-fun m!8002614 () Bool)

(assert (=> b!7337496 m!8002614))

(declare-fun m!8002616 () Bool)

(assert (=> b!7337497 m!8002616))

(declare-fun m!8002618 () Bool)

(assert (=> b!7337497 m!8002618))

(declare-fun m!8002620 () Bool)

(assert (=> b!7337497 m!8002620))

(declare-fun m!8002622 () Bool)

(assert (=> d!2278264 m!8002622))

(declare-fun m!8002624 () Bool)

(assert (=> d!2278264 m!8002624))

(declare-fun m!8002626 () Bool)

(assert (=> d!2278264 m!8002626))

(assert (=> b!7337337 d!2278264))

(assert (=> b!7337337 d!2278252))

(declare-fun b!7337503 () Bool)

(declare-fun e!4393744 () Bool)

(declare-fun tp!2083096 () Bool)

(declare-fun tp!2083097 () Bool)

(assert (=> b!7337503 (= e!4393744 (and tp!2083096 tp!2083097))))

(assert (=> b!7337330 (= tp!2083066 e!4393744)))

(assert (= (and b!7337330 (is-Cons!71462 (exprs!8530 ct2!378))) b!7337503))

(declare-fun b!7337516 () Bool)

(declare-fun e!4393747 () Bool)

(declare-fun tp!2083108 () Bool)

(assert (=> b!7337516 (= e!4393747 tp!2083108)))

(declare-fun b!7337515 () Bool)

(declare-fun tp!2083112 () Bool)

(declare-fun tp!2083111 () Bool)

(assert (=> b!7337515 (= e!4393747 (and tp!2083112 tp!2083111))))

(declare-fun b!7337514 () Bool)

(assert (=> b!7337514 (= e!4393747 tp_is_empty!48425)))

(declare-fun b!7337517 () Bool)

(declare-fun tp!2083110 () Bool)

(declare-fun tp!2083109 () Bool)

(assert (=> b!7337517 (= e!4393747 (and tp!2083110 tp!2083109))))

(assert (=> b!7337336 (= tp!2083065 e!4393747)))

(assert (= (and b!7337336 (is-ElementMatch!19090 (regOne!38692 r1!2370))) b!7337514))

(assert (= (and b!7337336 (is-Concat!27935 (regOne!38692 r1!2370))) b!7337515))

(assert (= (and b!7337336 (is-Star!19090 (regOne!38692 r1!2370))) b!7337516))

(assert (= (and b!7337336 (is-Union!19090 (regOne!38692 r1!2370))) b!7337517))

(declare-fun b!7337520 () Bool)

(declare-fun e!4393748 () Bool)

(declare-fun tp!2083113 () Bool)

(assert (=> b!7337520 (= e!4393748 tp!2083113)))

(declare-fun b!7337519 () Bool)

(declare-fun tp!2083117 () Bool)

(declare-fun tp!2083116 () Bool)

(assert (=> b!7337519 (= e!4393748 (and tp!2083117 tp!2083116))))

(declare-fun b!7337518 () Bool)

(assert (=> b!7337518 (= e!4393748 tp_is_empty!48425)))

(declare-fun b!7337521 () Bool)

(declare-fun tp!2083115 () Bool)

(declare-fun tp!2083114 () Bool)

(assert (=> b!7337521 (= e!4393748 (and tp!2083115 tp!2083114))))

(assert (=> b!7337336 (= tp!2083067 e!4393748)))

(assert (= (and b!7337336 (is-ElementMatch!19090 (regTwo!38692 r1!2370))) b!7337518))

(assert (= (and b!7337336 (is-Concat!27935 (regTwo!38692 r1!2370))) b!7337519))

(assert (= (and b!7337336 (is-Star!19090 (regTwo!38692 r1!2370))) b!7337520))

(assert (= (and b!7337336 (is-Union!19090 (regTwo!38692 r1!2370))) b!7337521))

(declare-fun b!7337522 () Bool)

(declare-fun e!4393749 () Bool)

(declare-fun tp!2083118 () Bool)

(declare-fun tp!2083119 () Bool)

(assert (=> b!7337522 (= e!4393749 (and tp!2083118 tp!2083119))))

(assert (=> b!7337329 (= tp!2083064 e!4393749)))

(assert (= (and b!7337329 (is-Cons!71462 (exprs!8530 cWitness!61))) b!7337522))

(declare-fun b!7337525 () Bool)

(declare-fun e!4393750 () Bool)

(declare-fun tp!2083120 () Bool)

(assert (=> b!7337525 (= e!4393750 tp!2083120)))

(declare-fun b!7337524 () Bool)

(declare-fun tp!2083124 () Bool)

(declare-fun tp!2083123 () Bool)

(assert (=> b!7337524 (= e!4393750 (and tp!2083124 tp!2083123))))

(declare-fun b!7337523 () Bool)

(assert (=> b!7337523 (= e!4393750 tp_is_empty!48425)))

(declare-fun b!7337526 () Bool)

(declare-fun tp!2083122 () Bool)

(declare-fun tp!2083121 () Bool)

(assert (=> b!7337526 (= e!4393750 (and tp!2083122 tp!2083121))))

(assert (=> b!7337327 (= tp!2083062 e!4393750)))

(assert (= (and b!7337327 (is-ElementMatch!19090 (regOne!38693 r1!2370))) b!7337523))

(assert (= (and b!7337327 (is-Concat!27935 (regOne!38693 r1!2370))) b!7337524))

(assert (= (and b!7337327 (is-Star!19090 (regOne!38693 r1!2370))) b!7337525))

(assert (= (and b!7337327 (is-Union!19090 (regOne!38693 r1!2370))) b!7337526))

(declare-fun b!7337529 () Bool)

(declare-fun e!4393751 () Bool)

(declare-fun tp!2083125 () Bool)

(assert (=> b!7337529 (= e!4393751 tp!2083125)))

(declare-fun b!7337528 () Bool)

(declare-fun tp!2083129 () Bool)

(declare-fun tp!2083128 () Bool)

(assert (=> b!7337528 (= e!4393751 (and tp!2083129 tp!2083128))))

(declare-fun b!7337527 () Bool)

(assert (=> b!7337527 (= e!4393751 tp_is_empty!48425)))

(declare-fun b!7337530 () Bool)

(declare-fun tp!2083127 () Bool)

(declare-fun tp!2083126 () Bool)

(assert (=> b!7337530 (= e!4393751 (and tp!2083127 tp!2083126))))

(assert (=> b!7337327 (= tp!2083063 e!4393751)))

(assert (= (and b!7337327 (is-ElementMatch!19090 (regTwo!38693 r1!2370))) b!7337527))

(assert (= (and b!7337327 (is-Concat!27935 (regTwo!38693 r1!2370))) b!7337528))

(assert (= (and b!7337327 (is-Star!19090 (regTwo!38693 r1!2370))) b!7337529))

(assert (= (and b!7337327 (is-Union!19090 (regTwo!38693 r1!2370))) b!7337530))

(declare-fun b!7337533 () Bool)

(declare-fun e!4393752 () Bool)

(declare-fun tp!2083130 () Bool)

(assert (=> b!7337533 (= e!4393752 tp!2083130)))

(declare-fun b!7337532 () Bool)

(declare-fun tp!2083134 () Bool)

(declare-fun tp!2083133 () Bool)

(assert (=> b!7337532 (= e!4393752 (and tp!2083134 tp!2083133))))

(declare-fun b!7337531 () Bool)

(assert (=> b!7337531 (= e!4393752 tp_is_empty!48425)))

(declare-fun b!7337534 () Bool)

(declare-fun tp!2083132 () Bool)

(declare-fun tp!2083131 () Bool)

(assert (=> b!7337534 (= e!4393752 (and tp!2083132 tp!2083131))))

(assert (=> b!7337333 (= tp!2083060 e!4393752)))

(assert (= (and b!7337333 (is-ElementMatch!19090 (reg!19419 r1!2370))) b!7337531))

(assert (= (and b!7337333 (is-Concat!27935 (reg!19419 r1!2370))) b!7337532))

(assert (= (and b!7337333 (is-Star!19090 (reg!19419 r1!2370))) b!7337533))

(assert (= (and b!7337333 (is-Union!19090 (reg!19419 r1!2370))) b!7337534))

(declare-fun b!7337535 () Bool)

(declare-fun e!4393753 () Bool)

(declare-fun tp!2083135 () Bool)

(declare-fun tp!2083136 () Bool)

(assert (=> b!7337535 (= e!4393753 (and tp!2083135 tp!2083136))))

(assert (=> b!7337332 (= tp!2083061 e!4393753)))

(assert (= (and b!7337332 (is-Cons!71462 (exprs!8530 ct1!282))) b!7337535))

(declare-fun b_lambda!283779 () Bool)

(assert (= b_lambda!283775 (or b!7337337 b_lambda!283779)))

(declare-fun bs!1918138 () Bool)

(declare-fun d!2278266 () Bool)

(assert (= bs!1918138 (and d!2278266 b!7337337)))

(assert (=> bs!1918138 (= (dynLambda!29438 lambda!455298 (h!77910 (exprs!8530 ct2!378))) (validRegex!9686 (h!77910 (exprs!8530 ct2!378))))))

(declare-fun m!8002628 () Bool)

(assert (=> bs!1918138 m!8002628))

(assert (=> b!7337472 d!2278266))

(declare-fun b_lambda!283781 () Bool)

(assert (= b_lambda!283777 (or b!7337337 b_lambda!283781)))

(declare-fun bs!1918139 () Bool)

(declare-fun d!2278268 () Bool)

(assert (= bs!1918139 (and d!2278268 b!7337337)))

(assert (=> bs!1918139 (= (dynLambda!29438 lambda!455298 (h!77910 (exprs!8530 cWitness!61))) (validRegex!9686 (h!77910 (exprs!8530 cWitness!61))))))

(declare-fun m!8002630 () Bool)

(assert (=> bs!1918139 m!8002630))

(assert (=> b!7337474 d!2278268))

(push 1)

(assert (not b!7337526))

(assert (not b!7337406))

(assert (not b_lambda!283779))

(assert (not d!2278246))

(assert (not b!7337530))

(assert (not bm!669230))

(assert (not bm!669265))

(assert (not b!7337480))

(assert (not d!2278248))

(assert (not b!7337533))

(assert (not bm!669229))

(assert (not b!7337520))

(assert (not b!7337516))

(assert (not b!7337515))

(assert (not bs!1918138))

(assert (not d!2278264))

(assert (not b!7337532))

(assert (not b!7337535))

(assert (not b!7337461))

(assert (not bm!669262))

(assert tp_is_empty!48425)

(assert (not b!7337473))

(assert (not b!7337534))

(assert (not b!7337519))

(assert (not b!7337528))

(assert (not bm!669263))

(assert (not b!7337522))

(assert (not bm!669251))

(assert (not d!2278244))

(assert (not b!7337497))

(assert (not b!7337521))

(assert (not b!7337517))

(assert (not b!7337529))

(assert (not b!7337524))

(assert (not b_lambda!283781))

(assert (not bm!669250))

(assert (not b!7337525))

(assert (not b!7337475))

(assert (not b!7337503))

(assert (not b!7337496))

(assert (not d!2278252))

(assert (not bs!1918139))

(assert (not bm!669253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

