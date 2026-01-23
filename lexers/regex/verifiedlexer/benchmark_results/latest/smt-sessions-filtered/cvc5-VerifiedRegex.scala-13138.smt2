; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717814 () Bool)

(assert start!717814)

(declare-fun b!7350530 () Bool)

(declare-fun e!4401214 () Bool)

(declare-datatypes ((C!38602 0))(
  ( (C!38603 (val!29661 Int)) )
))
(declare-datatypes ((Regex!19164 0))(
  ( (ElementMatch!19164 (c!1365618 C!38602)) (Concat!28009 (regOne!38840 Regex!19164) (regTwo!38840 Regex!19164)) (EmptyExpr!19164) (Star!19164 (reg!19493 Regex!19164)) (EmptyLang!19164) (Union!19164 (regOne!38841 Regex!19164) (regTwo!38841 Regex!19164)) )
))
(declare-fun r1!2370 () Regex!19164)

(declare-fun validRegex!9760 (Regex!19164) Bool)

(assert (=> b!7350530 (= e!4401214 (not (validRegex!9760 (regOne!38840 r1!2370))))))

(declare-fun b!7350531 () Bool)

(declare-fun e!4401213 () Bool)

(declare-fun tp!2087723 () Bool)

(assert (=> b!7350531 (= e!4401213 tp!2087723)))

(declare-fun b!7350532 () Bool)

(declare-fun tp_is_empty!48573 () Bool)

(assert (=> b!7350532 (= e!4401213 tp_is_empty!48573)))

(declare-fun b!7350533 () Bool)

(declare-fun e!4401218 () Bool)

(declare-fun tp!2087722 () Bool)

(assert (=> b!7350533 (= e!4401218 tp!2087722)))

(declare-fun b!7350534 () Bool)

(declare-fun e!4401219 () Bool)

(declare-fun tp!2087720 () Bool)

(assert (=> b!7350534 (= e!4401219 tp!2087720)))

(declare-fun b!7350535 () Bool)

(declare-fun e!4401216 () Bool)

(declare-fun tp!2087717 () Bool)

(assert (=> b!7350535 (= e!4401216 tp!2087717)))

(declare-fun b!7350536 () Bool)

(declare-fun tp!2087721 () Bool)

(declare-fun tp!2087718 () Bool)

(assert (=> b!7350536 (= e!4401213 (and tp!2087721 tp!2087718))))

(declare-fun b!7350537 () Bool)

(declare-fun e!4401215 () Bool)

(declare-fun nullable!8255 (Regex!19164) Bool)

(assert (=> b!7350537 (= e!4401215 (not (nullable!8255 (regOne!38840 r1!2370))))))

(declare-fun b!7350538 () Bool)

(declare-fun res!2968470 () Bool)

(assert (=> b!7350538 (=> (not res!2968470) (not e!4401214))))

(assert (=> b!7350538 (= res!2968470 (validRegex!9760 (regTwo!38840 r1!2370)))))

(declare-fun b!7350539 () Bool)

(declare-fun res!2968469 () Bool)

(declare-fun e!4401217 () Bool)

(assert (=> b!7350539 (=> (not res!2968469) (not e!4401217))))

(declare-fun c!10362 () C!38602)

(declare-datatypes ((List!71660 0))(
  ( (Nil!71536) (Cons!71536 (h!77984 Regex!19164) (t!386079 List!71660)) )
))
(declare-datatypes ((Context!16208 0))(
  ( (Context!16209 (exprs!8604 List!71660)) )
))
(declare-fun cWitness!61 () Context!16208)

(declare-fun ct1!282 () Context!16208)

(declare-fun derivationStepZipperDown!2990 (Regex!19164 Context!16208 C!38602) (Set Context!16208))

(assert (=> b!7350539 (= res!2968469 (set.member cWitness!61 (derivationStepZipperDown!2990 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7350540 () Bool)

(declare-fun res!2968475 () Bool)

(assert (=> b!7350540 (=> (not res!2968475) (not e!4401214))))

(assert (=> b!7350540 (= res!2968475 e!4401215)))

(declare-fun res!2968471 () Bool)

(assert (=> b!7350540 (=> res!2968471 e!4401215)))

(assert (=> b!7350540 (= res!2968471 (not (is-Concat!28009 r1!2370)))))

(declare-fun b!7350541 () Bool)

(declare-fun tp!2087719 () Bool)

(declare-fun tp!2087716 () Bool)

(assert (=> b!7350541 (= e!4401213 (and tp!2087719 tp!2087716))))

(declare-fun b!7350542 () Bool)

(declare-fun res!2968473 () Bool)

(assert (=> b!7350542 (=> (not res!2968473) (not e!4401214))))

(assert (=> b!7350542 (= res!2968473 (is-Concat!28009 r1!2370))))

(declare-fun b!7350543 () Bool)

(assert (=> b!7350543 (= e!4401217 e!4401214)))

(declare-fun res!2968472 () Bool)

(assert (=> b!7350543 (=> (not res!2968472) (not e!4401214))))

(assert (=> b!7350543 (= res!2968472 (and (or (not (is-ElementMatch!19164 r1!2370)) (not (= c!10362 (c!1365618 r1!2370)))) (not (is-Union!19164 r1!2370))))))

(declare-fun ct2!378 () Context!16208)

(declare-fun lt!2612121 () (Set Context!16208))

(declare-fun ++!16982 (List!71660 List!71660) List!71660)

(assert (=> b!7350543 (= lt!2612121 (derivationStepZipperDown!2990 r1!2370 (Context!16209 (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165281 0))(
  ( (Unit!165282) )
))
(declare-fun lt!2612120 () Unit!165281)

(declare-fun lambda!456524 () Int)

(declare-fun lemmaConcatPreservesForall!1839 (List!71660 List!71660 Int) Unit!165281)

(assert (=> b!7350543 (= lt!2612120 (lemmaConcatPreservesForall!1839 (exprs!8604 ct1!282) (exprs!8604 ct2!378) lambda!456524))))

(declare-fun res!2968474 () Bool)

(assert (=> start!717814 (=> (not res!2968474) (not e!4401217))))

(assert (=> start!717814 (= res!2968474 (validRegex!9760 r1!2370))))

(assert (=> start!717814 e!4401217))

(assert (=> start!717814 tp_is_empty!48573))

(declare-fun inv!91251 (Context!16208) Bool)

(assert (=> start!717814 (and (inv!91251 cWitness!61) e!4401218)))

(assert (=> start!717814 (and (inv!91251 ct1!282) e!4401219)))

(assert (=> start!717814 e!4401213))

(assert (=> start!717814 (and (inv!91251 ct2!378) e!4401216)))

(assert (= (and start!717814 res!2968474) b!7350539))

(assert (= (and b!7350539 res!2968469) b!7350543))

(assert (= (and b!7350543 res!2968472) b!7350540))

(assert (= (and b!7350540 (not res!2968471)) b!7350537))

(assert (= (and b!7350540 res!2968475) b!7350542))

(assert (= (and b!7350542 res!2968473) b!7350538))

(assert (= (and b!7350538 res!2968470) b!7350530))

(assert (= start!717814 b!7350533))

(assert (= start!717814 b!7350534))

(assert (= (and start!717814 (is-ElementMatch!19164 r1!2370)) b!7350532))

(assert (= (and start!717814 (is-Concat!28009 r1!2370)) b!7350541))

(assert (= (and start!717814 (is-Star!19164 r1!2370)) b!7350531))

(assert (= (and start!717814 (is-Union!19164 r1!2370)) b!7350536))

(assert (= start!717814 b!7350535))

(declare-fun m!8011786 () Bool)

(assert (=> b!7350530 m!8011786))

(declare-fun m!8011788 () Bool)

(assert (=> b!7350537 m!8011788))

(declare-fun m!8011790 () Bool)

(assert (=> b!7350538 m!8011790))

(declare-fun m!8011792 () Bool)

(assert (=> b!7350543 m!8011792))

(declare-fun m!8011794 () Bool)

(assert (=> b!7350543 m!8011794))

(declare-fun m!8011796 () Bool)

(assert (=> b!7350543 m!8011796))

(declare-fun m!8011798 () Bool)

(assert (=> start!717814 m!8011798))

(declare-fun m!8011800 () Bool)

(assert (=> start!717814 m!8011800))

(declare-fun m!8011802 () Bool)

(assert (=> start!717814 m!8011802))

(declare-fun m!8011804 () Bool)

(assert (=> start!717814 m!8011804))

(declare-fun m!8011806 () Bool)

(assert (=> b!7350539 m!8011806))

(declare-fun m!8011808 () Bool)

(assert (=> b!7350539 m!8011808))

(push 1)

(assert (not start!717814))

(assert (not b!7350535))

(assert (not b!7350537))

(assert (not b!7350536))

(assert (not b!7350541))

(assert (not b!7350538))

(assert (not b!7350543))

(assert tp_is_empty!48573)

(assert (not b!7350531))

(assert (not b!7350530))

(assert (not b!7350539))

(assert (not b!7350534))

(assert (not b!7350533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1365633 () Bool)

(declare-fun c!1365631 () Bool)

(declare-fun bm!672307 () Bool)

(declare-fun call!672313 () List!71660)

(declare-fun $colon$colon!3162 (List!71660 Regex!19164) List!71660)

(assert (=> bm!672307 (= call!672313 ($colon$colon!3162 (exprs!8604 (Context!16209 (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378)))) (ite (or c!1365633 c!1365631) (regTwo!38840 r1!2370) r1!2370)))))

(declare-fun d!2280473 () Bool)

(declare-fun c!1365632 () Bool)

(assert (=> d!2280473 (= c!1365632 (and (is-ElementMatch!19164 r1!2370) (= (c!1365618 r1!2370) c!10362)))))

(declare-fun e!4401256 () (Set Context!16208))

(assert (=> d!2280473 (= (derivationStepZipperDown!2990 r1!2370 (Context!16209 (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378))) c!10362) e!4401256)))

(declare-fun b!7350608 () Bool)

(declare-fun e!4401254 () (Set Context!16208))

(declare-fun e!4401257 () (Set Context!16208))

(assert (=> b!7350608 (= e!4401254 e!4401257)))

(assert (=> b!7350608 (= c!1365631 (is-Concat!28009 r1!2370))))

(declare-fun b!7350609 () Bool)

(declare-fun e!4401255 () Bool)

(assert (=> b!7350609 (= c!1365633 e!4401255)))

(declare-fun res!2968499 () Bool)

(assert (=> b!7350609 (=> (not res!2968499) (not e!4401255))))

(assert (=> b!7350609 (= res!2968499 (is-Concat!28009 r1!2370))))

(declare-fun e!4401253 () (Set Context!16208))

(assert (=> b!7350609 (= e!4401253 e!4401254)))

(declare-fun b!7350610 () Bool)

(declare-fun e!4401258 () (Set Context!16208))

(declare-fun call!672312 () (Set Context!16208))

(assert (=> b!7350610 (= e!4401258 call!672312)))

(declare-fun b!7350611 () Bool)

(declare-fun c!1365630 () Bool)

(assert (=> b!7350611 (= c!1365630 (is-Star!19164 r1!2370))))

(assert (=> b!7350611 (= e!4401257 e!4401258)))

(declare-fun b!7350612 () Bool)

(declare-fun call!672314 () (Set Context!16208))

(declare-fun call!672315 () (Set Context!16208))

(assert (=> b!7350612 (= e!4401253 (set.union call!672314 call!672315))))

(declare-fun b!7350613 () Bool)

(assert (=> b!7350613 (= e!4401256 (set.insert (Context!16209 (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378))) (as set.empty (Set Context!16208))))))

(declare-fun b!7350614 () Bool)

(assert (=> b!7350614 (= e!4401255 (nullable!8255 (regOne!38840 r1!2370)))))

(declare-fun b!7350615 () Bool)

(declare-fun call!672317 () (Set Context!16208))

(assert (=> b!7350615 (= e!4401254 (set.union call!672315 call!672317))))

(declare-fun bm!672308 () Bool)

(declare-fun call!672316 () List!71660)

(assert (=> bm!672308 (= call!672316 call!672313)))

(declare-fun b!7350616 () Bool)

(assert (=> b!7350616 (= e!4401258 (as set.empty (Set Context!16208)))))

(declare-fun bm!672309 () Bool)

(assert (=> bm!672309 (= call!672317 call!672314)))

(declare-fun c!1365634 () Bool)

(declare-fun bm!672310 () Bool)

(assert (=> bm!672310 (= call!672315 (derivationStepZipperDown!2990 (ite c!1365634 (regTwo!38841 r1!2370) (regOne!38840 r1!2370)) (ite c!1365634 (Context!16209 (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378))) (Context!16209 call!672313)) c!10362))))

(declare-fun bm!672311 () Bool)

(assert (=> bm!672311 (= call!672312 call!672317)))

(declare-fun b!7350617 () Bool)

(assert (=> b!7350617 (= e!4401257 call!672312)))

(declare-fun b!7350618 () Bool)

(assert (=> b!7350618 (= e!4401256 e!4401253)))

(assert (=> b!7350618 (= c!1365634 (is-Union!19164 r1!2370))))

(declare-fun bm!672312 () Bool)

(assert (=> bm!672312 (= call!672314 (derivationStepZipperDown!2990 (ite c!1365634 (regOne!38841 r1!2370) (ite c!1365633 (regTwo!38840 r1!2370) (ite c!1365631 (regOne!38840 r1!2370) (reg!19493 r1!2370)))) (ite (or c!1365634 c!1365633) (Context!16209 (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378))) (Context!16209 call!672316)) c!10362))))

(assert (= (and d!2280473 c!1365632) b!7350613))

(assert (= (and d!2280473 (not c!1365632)) b!7350618))

(assert (= (and b!7350618 c!1365634) b!7350612))

(assert (= (and b!7350618 (not c!1365634)) b!7350609))

(assert (= (and b!7350609 res!2968499) b!7350614))

(assert (= (and b!7350609 c!1365633) b!7350615))

(assert (= (and b!7350609 (not c!1365633)) b!7350608))

(assert (= (and b!7350608 c!1365631) b!7350617))

(assert (= (and b!7350608 (not c!1365631)) b!7350611))

(assert (= (and b!7350611 c!1365630) b!7350610))

(assert (= (and b!7350611 (not c!1365630)) b!7350616))

(assert (= (or b!7350617 b!7350610) bm!672308))

(assert (= (or b!7350617 b!7350610) bm!672311))

(assert (= (or b!7350615 bm!672311) bm!672309))

(assert (= (or b!7350615 bm!672308) bm!672307))

(assert (= (or b!7350612 b!7350615) bm!672310))

(assert (= (or b!7350612 bm!672309) bm!672312))

(declare-fun m!8011834 () Bool)

(assert (=> bm!672310 m!8011834))

(assert (=> b!7350614 m!8011788))

(declare-fun m!8011836 () Bool)

(assert (=> bm!672312 m!8011836))

(declare-fun m!8011838 () Bool)

(assert (=> b!7350613 m!8011838))

(declare-fun m!8011840 () Bool)

(assert (=> bm!672307 m!8011840))

(assert (=> b!7350543 d!2280473))

(declare-fun b!7350645 () Bool)

(declare-fun e!4401278 () List!71660)

(assert (=> b!7350645 (= e!4401278 (exprs!8604 ct2!378))))

(declare-fun lt!2612130 () List!71660)

(declare-fun e!4401277 () Bool)

(declare-fun b!7350648 () Bool)

(assert (=> b!7350648 (= e!4401277 (or (not (= (exprs!8604 ct2!378) Nil!71536)) (= lt!2612130 (exprs!8604 ct1!282))))))

(declare-fun d!2280477 () Bool)

(assert (=> d!2280477 e!4401277))

(declare-fun res!2968514 () Bool)

(assert (=> d!2280477 (=> (not res!2968514) (not e!4401277))))

(declare-fun content!15072 (List!71660) (Set Regex!19164))

(assert (=> d!2280477 (= res!2968514 (= (content!15072 lt!2612130) (set.union (content!15072 (exprs!8604 ct1!282)) (content!15072 (exprs!8604 ct2!378)))))))

(assert (=> d!2280477 (= lt!2612130 e!4401278)))

(declare-fun c!1365641 () Bool)

(assert (=> d!2280477 (= c!1365641 (is-Nil!71536 (exprs!8604 ct1!282)))))

(assert (=> d!2280477 (= (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378)) lt!2612130)))

(declare-fun b!7350647 () Bool)

(declare-fun res!2968515 () Bool)

(assert (=> b!7350647 (=> (not res!2968515) (not e!4401277))))

(declare-fun size!42051 (List!71660) Int)

(assert (=> b!7350647 (= res!2968515 (= (size!42051 lt!2612130) (+ (size!42051 (exprs!8604 ct1!282)) (size!42051 (exprs!8604 ct2!378)))))))

(declare-fun b!7350646 () Bool)

(assert (=> b!7350646 (= e!4401278 (Cons!71536 (h!77984 (exprs!8604 ct1!282)) (++!16982 (t!386079 (exprs!8604 ct1!282)) (exprs!8604 ct2!378))))))

(assert (= (and d!2280477 c!1365641) b!7350645))

(assert (= (and d!2280477 (not c!1365641)) b!7350646))

(assert (= (and d!2280477 res!2968514) b!7350647))

(assert (= (and b!7350647 res!2968515) b!7350648))

(declare-fun m!8011842 () Bool)

(assert (=> d!2280477 m!8011842))

(declare-fun m!8011844 () Bool)

(assert (=> d!2280477 m!8011844))

(declare-fun m!8011846 () Bool)

(assert (=> d!2280477 m!8011846))

(declare-fun m!8011848 () Bool)

(assert (=> b!7350647 m!8011848))

(declare-fun m!8011850 () Bool)

(assert (=> b!7350647 m!8011850))

(declare-fun m!8011852 () Bool)

(assert (=> b!7350647 m!8011852))

(declare-fun m!8011854 () Bool)

(assert (=> b!7350646 m!8011854))

(assert (=> b!7350543 d!2280477))

(declare-fun d!2280479 () Bool)

(declare-fun forall!17988 (List!71660 Int) Bool)

(assert (=> d!2280479 (forall!17988 (++!16982 (exprs!8604 ct1!282) (exprs!8604 ct2!378)) lambda!456524)))

(declare-fun lt!2612133 () Unit!165281)

(declare-fun choose!57179 (List!71660 List!71660 Int) Unit!165281)

(assert (=> d!2280479 (= lt!2612133 (choose!57179 (exprs!8604 ct1!282) (exprs!8604 ct2!378) lambda!456524))))

(assert (=> d!2280479 (forall!17988 (exprs!8604 ct1!282) lambda!456524)))

(assert (=> d!2280479 (= (lemmaConcatPreservesForall!1839 (exprs!8604 ct1!282) (exprs!8604 ct2!378) lambda!456524) lt!2612133)))

(declare-fun bs!1919264 () Bool)

(assert (= bs!1919264 d!2280479))

(assert (=> bs!1919264 m!8011792))

(assert (=> bs!1919264 m!8011792))

(declare-fun m!8011856 () Bool)

(assert (=> bs!1919264 m!8011856))

(declare-fun m!8011858 () Bool)

(assert (=> bs!1919264 m!8011858))

(declare-fun m!8011860 () Bool)

(assert (=> bs!1919264 m!8011860))

(assert (=> b!7350543 d!2280479))

(declare-fun d!2280481 () Bool)

(declare-fun nullableFct!3292 (Regex!19164) Bool)

(assert (=> d!2280481 (= (nullable!8255 (regOne!38840 r1!2370)) (nullableFct!3292 (regOne!38840 r1!2370)))))

(declare-fun bs!1919265 () Bool)

(assert (= bs!1919265 d!2280481))

(declare-fun m!8011862 () Bool)

(assert (=> bs!1919265 m!8011862))

(assert (=> b!7350537 d!2280481))

(declare-fun b!7350676 () Bool)

(declare-fun e!4401300 () Bool)

(declare-fun e!4401305 () Bool)

(assert (=> b!7350676 (= e!4401300 e!4401305)))

(declare-fun res!2968531 () Bool)

(assert (=> b!7350676 (=> (not res!2968531) (not e!4401305))))

(declare-fun call!672335 () Bool)

(assert (=> b!7350676 (= res!2968531 call!672335)))

(declare-fun bm!672328 () Bool)

(declare-fun call!672333 () Bool)

(declare-fun c!1365649 () Bool)

(assert (=> bm!672328 (= call!672333 (validRegex!9760 (ite c!1365649 (regOne!38841 r1!2370) (regTwo!38840 r1!2370))))))

(declare-fun b!7350678 () Bool)

(assert (=> b!7350678 (= e!4401305 call!672333)))

(declare-fun b!7350679 () Bool)

(declare-fun e!4401304 () Bool)

(declare-fun call!672334 () Bool)

(assert (=> b!7350679 (= e!4401304 call!672334)))

(declare-fun b!7350680 () Bool)

(declare-fun e!4401303 () Bool)

(declare-fun e!4401306 () Bool)

(assert (=> b!7350680 (= e!4401303 e!4401306)))

(declare-fun c!1365648 () Bool)

(assert (=> b!7350680 (= c!1365648 (is-Star!19164 r1!2370))))

(declare-fun b!7350681 () Bool)

(declare-fun e!4401301 () Bool)

(assert (=> b!7350681 (= e!4401306 e!4401301)))

(assert (=> b!7350681 (= c!1365649 (is-Union!19164 r1!2370))))

(declare-fun b!7350682 () Bool)

(declare-fun res!2968534 () Bool)

(assert (=> b!7350682 (=> res!2968534 e!4401300)))

(assert (=> b!7350682 (= res!2968534 (not (is-Concat!28009 r1!2370)))))

(assert (=> b!7350682 (= e!4401301 e!4401300)))

(declare-fun bm!672329 () Bool)

(assert (=> bm!672329 (= call!672334 (validRegex!9760 (ite c!1365648 (reg!19493 r1!2370) (ite c!1365649 (regTwo!38841 r1!2370) (regOne!38840 r1!2370)))))))

(declare-fun bm!672330 () Bool)

(assert (=> bm!672330 (= call!672335 call!672334)))

(declare-fun b!7350677 () Bool)

(assert (=> b!7350677 (= e!4401306 e!4401304)))

(declare-fun res!2968533 () Bool)

(assert (=> b!7350677 (= res!2968533 (not (nullable!8255 (reg!19493 r1!2370))))))

(assert (=> b!7350677 (=> (not res!2968533) (not e!4401304))))

(declare-fun d!2280483 () Bool)

(declare-fun res!2968532 () Bool)

(assert (=> d!2280483 (=> res!2968532 e!4401303)))

(assert (=> d!2280483 (= res!2968532 (is-ElementMatch!19164 r1!2370))))

(assert (=> d!2280483 (= (validRegex!9760 r1!2370) e!4401303)))

(declare-fun b!7350683 () Bool)

(declare-fun res!2968535 () Bool)

(declare-fun e!4401302 () Bool)

(assert (=> b!7350683 (=> (not res!2968535) (not e!4401302))))

(assert (=> b!7350683 (= res!2968535 call!672333)))

(assert (=> b!7350683 (= e!4401301 e!4401302)))

(declare-fun b!7350684 () Bool)

(assert (=> b!7350684 (= e!4401302 call!672335)))

(assert (= (and d!2280483 (not res!2968532)) b!7350680))

(assert (= (and b!7350680 c!1365648) b!7350677))

(assert (= (and b!7350680 (not c!1365648)) b!7350681))

(assert (= (and b!7350677 res!2968533) b!7350679))

(assert (= (and b!7350681 c!1365649) b!7350683))

(assert (= (and b!7350681 (not c!1365649)) b!7350682))

(assert (= (and b!7350683 res!2968535) b!7350684))

(assert (= (and b!7350682 (not res!2968534)) b!7350676))

(assert (= (and b!7350676 res!2968531) b!7350678))

(assert (= (or b!7350683 b!7350678) bm!672328))

(assert (= (or b!7350684 b!7350676) bm!672330))

(assert (= (or b!7350679 bm!672330) bm!672329))

(declare-fun m!8011870 () Bool)

(assert (=> bm!672328 m!8011870))

(declare-fun m!8011872 () Bool)

(assert (=> bm!672329 m!8011872))

(declare-fun m!8011874 () Bool)

(assert (=> b!7350677 m!8011874))

(assert (=> start!717814 d!2280483))

(declare-fun bs!1919266 () Bool)

(declare-fun d!2280487 () Bool)

(assert (= bs!1919266 (and d!2280487 b!7350543)))

(declare-fun lambda!456530 () Int)

(assert (=> bs!1919266 (= lambda!456530 lambda!456524)))

(assert (=> d!2280487 (= (inv!91251 cWitness!61) (forall!17988 (exprs!8604 cWitness!61) lambda!456530))))

(declare-fun bs!1919267 () Bool)

(assert (= bs!1919267 d!2280487))

(declare-fun m!8011876 () Bool)

(assert (=> bs!1919267 m!8011876))

(assert (=> start!717814 d!2280487))

(declare-fun bs!1919268 () Bool)

(declare-fun d!2280489 () Bool)

(assert (= bs!1919268 (and d!2280489 b!7350543)))

(declare-fun lambda!456531 () Int)

(assert (=> bs!1919268 (= lambda!456531 lambda!456524)))

(declare-fun bs!1919269 () Bool)

(assert (= bs!1919269 (and d!2280489 d!2280487)))

(assert (=> bs!1919269 (= lambda!456531 lambda!456530)))

(assert (=> d!2280489 (= (inv!91251 ct1!282) (forall!17988 (exprs!8604 ct1!282) lambda!456531))))

(declare-fun bs!1919270 () Bool)

(assert (= bs!1919270 d!2280489))

(declare-fun m!8011878 () Bool)

(assert (=> bs!1919270 m!8011878))

(assert (=> start!717814 d!2280489))

(declare-fun bs!1919271 () Bool)

(declare-fun d!2280491 () Bool)

(assert (= bs!1919271 (and d!2280491 b!7350543)))

(declare-fun lambda!456532 () Int)

(assert (=> bs!1919271 (= lambda!456532 lambda!456524)))

(declare-fun bs!1919272 () Bool)

(assert (= bs!1919272 (and d!2280491 d!2280487)))

(assert (=> bs!1919272 (= lambda!456532 lambda!456530)))

(declare-fun bs!1919273 () Bool)

(assert (= bs!1919273 (and d!2280491 d!2280489)))

(assert (=> bs!1919273 (= lambda!456532 lambda!456531)))

(assert (=> d!2280491 (= (inv!91251 ct2!378) (forall!17988 (exprs!8604 ct2!378) lambda!456532))))

(declare-fun bs!1919274 () Bool)

(assert (= bs!1919274 d!2280491))

(declare-fun m!8011880 () Bool)

(assert (=> bs!1919274 m!8011880))

(assert (=> start!717814 d!2280491))

(declare-fun b!7350685 () Bool)

(declare-fun e!4401307 () Bool)

(declare-fun e!4401312 () Bool)

(assert (=> b!7350685 (= e!4401307 e!4401312)))

(declare-fun res!2968536 () Bool)

(assert (=> b!7350685 (=> (not res!2968536) (not e!4401312))))

(declare-fun call!672338 () Bool)

(assert (=> b!7350685 (= res!2968536 call!672338)))

(declare-fun bm!672331 () Bool)

(declare-fun call!672336 () Bool)

(declare-fun c!1365651 () Bool)

(assert (=> bm!672331 (= call!672336 (validRegex!9760 (ite c!1365651 (regOne!38841 (regOne!38840 r1!2370)) (regTwo!38840 (regOne!38840 r1!2370)))))))

(declare-fun b!7350687 () Bool)

(assert (=> b!7350687 (= e!4401312 call!672336)))

(declare-fun b!7350688 () Bool)

(declare-fun e!4401311 () Bool)

(declare-fun call!672337 () Bool)

(assert (=> b!7350688 (= e!4401311 call!672337)))

(declare-fun b!7350689 () Bool)

(declare-fun e!4401310 () Bool)

(declare-fun e!4401313 () Bool)

(assert (=> b!7350689 (= e!4401310 e!4401313)))

(declare-fun c!1365650 () Bool)

(assert (=> b!7350689 (= c!1365650 (is-Star!19164 (regOne!38840 r1!2370)))))

(declare-fun b!7350690 () Bool)

(declare-fun e!4401308 () Bool)

(assert (=> b!7350690 (= e!4401313 e!4401308)))

(assert (=> b!7350690 (= c!1365651 (is-Union!19164 (regOne!38840 r1!2370)))))

(declare-fun b!7350691 () Bool)

(declare-fun res!2968539 () Bool)

(assert (=> b!7350691 (=> res!2968539 e!4401307)))

(assert (=> b!7350691 (= res!2968539 (not (is-Concat!28009 (regOne!38840 r1!2370))))))

(assert (=> b!7350691 (= e!4401308 e!4401307)))

(declare-fun bm!672332 () Bool)

(assert (=> bm!672332 (= call!672337 (validRegex!9760 (ite c!1365650 (reg!19493 (regOne!38840 r1!2370)) (ite c!1365651 (regTwo!38841 (regOne!38840 r1!2370)) (regOne!38840 (regOne!38840 r1!2370))))))))

(declare-fun bm!672333 () Bool)

(assert (=> bm!672333 (= call!672338 call!672337)))

(declare-fun b!7350686 () Bool)

(assert (=> b!7350686 (= e!4401313 e!4401311)))

(declare-fun res!2968538 () Bool)

(assert (=> b!7350686 (= res!2968538 (not (nullable!8255 (reg!19493 (regOne!38840 r1!2370)))))))

(assert (=> b!7350686 (=> (not res!2968538) (not e!4401311))))

(declare-fun d!2280493 () Bool)

(declare-fun res!2968537 () Bool)

(assert (=> d!2280493 (=> res!2968537 e!4401310)))

(assert (=> d!2280493 (= res!2968537 (is-ElementMatch!19164 (regOne!38840 r1!2370)))))

(assert (=> d!2280493 (= (validRegex!9760 (regOne!38840 r1!2370)) e!4401310)))

(declare-fun b!7350692 () Bool)

(declare-fun res!2968540 () Bool)

(declare-fun e!4401309 () Bool)

(assert (=> b!7350692 (=> (not res!2968540) (not e!4401309))))

(assert (=> b!7350692 (= res!2968540 call!672336)))

(assert (=> b!7350692 (= e!4401308 e!4401309)))

(declare-fun b!7350693 () Bool)

(assert (=> b!7350693 (= e!4401309 call!672338)))

(assert (= (and d!2280493 (not res!2968537)) b!7350689))

(assert (= (and b!7350689 c!1365650) b!7350686))

(assert (= (and b!7350689 (not c!1365650)) b!7350690))

(assert (= (and b!7350686 res!2968538) b!7350688))

(assert (= (and b!7350690 c!1365651) b!7350692))

(assert (= (and b!7350690 (not c!1365651)) b!7350691))

(assert (= (and b!7350692 res!2968540) b!7350693))

(assert (= (and b!7350691 (not res!2968539)) b!7350685))

(assert (= (and b!7350685 res!2968536) b!7350687))

(assert (= (or b!7350692 b!7350687) bm!672331))

(assert (= (or b!7350693 b!7350685) bm!672333))

(assert (= (or b!7350688 bm!672333) bm!672332))

(declare-fun m!8011882 () Bool)

(assert (=> bm!672331 m!8011882))

(declare-fun m!8011884 () Bool)

(assert (=> bm!672332 m!8011884))

(declare-fun m!8011886 () Bool)

(assert (=> b!7350686 m!8011886))

(assert (=> b!7350530 d!2280493))

(declare-fun c!1365655 () Bool)

(declare-fun bm!672334 () Bool)

(declare-fun c!1365653 () Bool)

(declare-fun call!672340 () List!71660)

(assert (=> bm!672334 (= call!672340 ($colon$colon!3162 (exprs!8604 ct1!282) (ite (or c!1365655 c!1365653) (regTwo!38840 r1!2370) r1!2370)))))

(declare-fun d!2280495 () Bool)

(declare-fun c!1365654 () Bool)

(assert (=> d!2280495 (= c!1365654 (and (is-ElementMatch!19164 r1!2370) (= (c!1365618 r1!2370) c!10362)))))

(declare-fun e!4401317 () (Set Context!16208))

(assert (=> d!2280495 (= (derivationStepZipperDown!2990 r1!2370 ct1!282 c!10362) e!4401317)))

(declare-fun b!7350694 () Bool)

(declare-fun e!4401315 () (Set Context!16208))

(declare-fun e!4401318 () (Set Context!16208))

(assert (=> b!7350694 (= e!4401315 e!4401318)))

(assert (=> b!7350694 (= c!1365653 (is-Concat!28009 r1!2370))))

(declare-fun b!7350695 () Bool)

(declare-fun e!4401316 () Bool)

(assert (=> b!7350695 (= c!1365655 e!4401316)))

(declare-fun res!2968541 () Bool)

(assert (=> b!7350695 (=> (not res!2968541) (not e!4401316))))

(assert (=> b!7350695 (= res!2968541 (is-Concat!28009 r1!2370))))

(declare-fun e!4401314 () (Set Context!16208))

(assert (=> b!7350695 (= e!4401314 e!4401315)))

(declare-fun b!7350696 () Bool)

(declare-fun e!4401319 () (Set Context!16208))

(declare-fun call!672339 () (Set Context!16208))

(assert (=> b!7350696 (= e!4401319 call!672339)))

(declare-fun b!7350697 () Bool)

(declare-fun c!1365652 () Bool)

(assert (=> b!7350697 (= c!1365652 (is-Star!19164 r1!2370))))

(assert (=> b!7350697 (= e!4401318 e!4401319)))

(declare-fun b!7350698 () Bool)

(declare-fun call!672341 () (Set Context!16208))

(declare-fun call!672342 () (Set Context!16208))

(assert (=> b!7350698 (= e!4401314 (set.union call!672341 call!672342))))

(declare-fun b!7350699 () Bool)

(assert (=> b!7350699 (= e!4401317 (set.insert ct1!282 (as set.empty (Set Context!16208))))))

(declare-fun b!7350700 () Bool)

(assert (=> b!7350700 (= e!4401316 (nullable!8255 (regOne!38840 r1!2370)))))

(declare-fun b!7350701 () Bool)

(declare-fun call!672344 () (Set Context!16208))

(assert (=> b!7350701 (= e!4401315 (set.union call!672342 call!672344))))

(declare-fun bm!672335 () Bool)

(declare-fun call!672343 () List!71660)

(assert (=> bm!672335 (= call!672343 call!672340)))

(declare-fun b!7350702 () Bool)

(assert (=> b!7350702 (= e!4401319 (as set.empty (Set Context!16208)))))

(declare-fun bm!672336 () Bool)

(assert (=> bm!672336 (= call!672344 call!672341)))

(declare-fun c!1365656 () Bool)

(declare-fun bm!672337 () Bool)

(assert (=> bm!672337 (= call!672342 (derivationStepZipperDown!2990 (ite c!1365656 (regTwo!38841 r1!2370) (regOne!38840 r1!2370)) (ite c!1365656 ct1!282 (Context!16209 call!672340)) c!10362))))

(declare-fun bm!672338 () Bool)

(assert (=> bm!672338 (= call!672339 call!672344)))

(declare-fun b!7350703 () Bool)

(assert (=> b!7350703 (= e!4401318 call!672339)))

(declare-fun b!7350704 () Bool)

(assert (=> b!7350704 (= e!4401317 e!4401314)))

(assert (=> b!7350704 (= c!1365656 (is-Union!19164 r1!2370))))

(declare-fun bm!672339 () Bool)

(assert (=> bm!672339 (= call!672341 (derivationStepZipperDown!2990 (ite c!1365656 (regOne!38841 r1!2370) (ite c!1365655 (regTwo!38840 r1!2370) (ite c!1365653 (regOne!38840 r1!2370) (reg!19493 r1!2370)))) (ite (or c!1365656 c!1365655) ct1!282 (Context!16209 call!672343)) c!10362))))

(assert (= (and d!2280495 c!1365654) b!7350699))

(assert (= (and d!2280495 (not c!1365654)) b!7350704))

(assert (= (and b!7350704 c!1365656) b!7350698))

(assert (= (and b!7350704 (not c!1365656)) b!7350695))

(assert (= (and b!7350695 res!2968541) b!7350700))

(assert (= (and b!7350695 c!1365655) b!7350701))

(assert (= (and b!7350695 (not c!1365655)) b!7350694))

(assert (= (and b!7350694 c!1365653) b!7350703))

(assert (= (and b!7350694 (not c!1365653)) b!7350697))

(assert (= (and b!7350697 c!1365652) b!7350696))

(assert (= (and b!7350697 (not c!1365652)) b!7350702))

(assert (= (or b!7350703 b!7350696) bm!672335))

(assert (= (or b!7350703 b!7350696) bm!672338))

(assert (= (or b!7350701 bm!672338) bm!672336))

(assert (= (or b!7350701 bm!672335) bm!672334))

(assert (= (or b!7350698 b!7350701) bm!672337))

(assert (= (or b!7350698 bm!672336) bm!672339))

(declare-fun m!8011888 () Bool)

(assert (=> bm!672337 m!8011888))

(assert (=> b!7350700 m!8011788))

(declare-fun m!8011890 () Bool)

(assert (=> bm!672339 m!8011890))

(declare-fun m!8011892 () Bool)

(assert (=> b!7350699 m!8011892))

(declare-fun m!8011894 () Bool)

(assert (=> bm!672334 m!8011894))

(assert (=> b!7350539 d!2280495))

(declare-fun b!7350705 () Bool)

(declare-fun e!4401320 () Bool)

(declare-fun e!4401325 () Bool)

(assert (=> b!7350705 (= e!4401320 e!4401325)))

(declare-fun res!2968542 () Bool)

(assert (=> b!7350705 (=> (not res!2968542) (not e!4401325))))

(declare-fun call!672347 () Bool)

(assert (=> b!7350705 (= res!2968542 call!672347)))

(declare-fun bm!672340 () Bool)

(declare-fun call!672345 () Bool)

(declare-fun c!1365658 () Bool)

(assert (=> bm!672340 (= call!672345 (validRegex!9760 (ite c!1365658 (regOne!38841 (regTwo!38840 r1!2370)) (regTwo!38840 (regTwo!38840 r1!2370)))))))

(declare-fun b!7350707 () Bool)

(assert (=> b!7350707 (= e!4401325 call!672345)))

(declare-fun b!7350708 () Bool)

(declare-fun e!4401324 () Bool)

(declare-fun call!672346 () Bool)

(assert (=> b!7350708 (= e!4401324 call!672346)))

(declare-fun b!7350709 () Bool)

(declare-fun e!4401323 () Bool)

(declare-fun e!4401326 () Bool)

(assert (=> b!7350709 (= e!4401323 e!4401326)))

(declare-fun c!1365657 () Bool)

(assert (=> b!7350709 (= c!1365657 (is-Star!19164 (regTwo!38840 r1!2370)))))

(declare-fun b!7350710 () Bool)

(declare-fun e!4401321 () Bool)

(assert (=> b!7350710 (= e!4401326 e!4401321)))

(assert (=> b!7350710 (= c!1365658 (is-Union!19164 (regTwo!38840 r1!2370)))))

(declare-fun b!7350711 () Bool)

(declare-fun res!2968545 () Bool)

(assert (=> b!7350711 (=> res!2968545 e!4401320)))

(assert (=> b!7350711 (= res!2968545 (not (is-Concat!28009 (regTwo!38840 r1!2370))))))

(assert (=> b!7350711 (= e!4401321 e!4401320)))

(declare-fun bm!672341 () Bool)

(assert (=> bm!672341 (= call!672346 (validRegex!9760 (ite c!1365657 (reg!19493 (regTwo!38840 r1!2370)) (ite c!1365658 (regTwo!38841 (regTwo!38840 r1!2370)) (regOne!38840 (regTwo!38840 r1!2370))))))))

(declare-fun bm!672342 () Bool)

(assert (=> bm!672342 (= call!672347 call!672346)))

(declare-fun b!7350706 () Bool)

(assert (=> b!7350706 (= e!4401326 e!4401324)))

(declare-fun res!2968544 () Bool)

(assert (=> b!7350706 (= res!2968544 (not (nullable!8255 (reg!19493 (regTwo!38840 r1!2370)))))))

(assert (=> b!7350706 (=> (not res!2968544) (not e!4401324))))

(declare-fun d!2280497 () Bool)

(declare-fun res!2968543 () Bool)

(assert (=> d!2280497 (=> res!2968543 e!4401323)))

(assert (=> d!2280497 (= res!2968543 (is-ElementMatch!19164 (regTwo!38840 r1!2370)))))

(assert (=> d!2280497 (= (validRegex!9760 (regTwo!38840 r1!2370)) e!4401323)))

(declare-fun b!7350712 () Bool)

(declare-fun res!2968546 () Bool)

(declare-fun e!4401322 () Bool)

(assert (=> b!7350712 (=> (not res!2968546) (not e!4401322))))

(assert (=> b!7350712 (= res!2968546 call!672345)))

(assert (=> b!7350712 (= e!4401321 e!4401322)))

(declare-fun b!7350713 () Bool)

(assert (=> b!7350713 (= e!4401322 call!672347)))

(assert (= (and d!2280497 (not res!2968543)) b!7350709))

(assert (= (and b!7350709 c!1365657) b!7350706))

(assert (= (and b!7350709 (not c!1365657)) b!7350710))

(assert (= (and b!7350706 res!2968544) b!7350708))

(assert (= (and b!7350710 c!1365658) b!7350712))

(assert (= (and b!7350710 (not c!1365658)) b!7350711))

(assert (= (and b!7350712 res!2968546) b!7350713))

(assert (= (and b!7350711 (not res!2968545)) b!7350705))

(assert (= (and b!7350705 res!2968542) b!7350707))

(assert (= (or b!7350712 b!7350707) bm!672340))

(assert (= (or b!7350713 b!7350705) bm!672342))

(assert (= (or b!7350708 bm!672342) bm!672341))

(declare-fun m!8011896 () Bool)

(assert (=> bm!672340 m!8011896))

(declare-fun m!8011898 () Bool)

(assert (=> bm!672341 m!8011898))

(declare-fun m!8011900 () Bool)

(assert (=> b!7350706 m!8011900))

(assert (=> b!7350538 d!2280497))

(declare-fun e!4401329 () Bool)

(assert (=> b!7350531 (= tp!2087723 e!4401329)))

(declare-fun b!7350727 () Bool)

(declare-fun tp!2087760 () Bool)

(declare-fun tp!2087761 () Bool)

(assert (=> b!7350727 (= e!4401329 (and tp!2087760 tp!2087761))))

(declare-fun b!7350726 () Bool)

(declare-fun tp!2087759 () Bool)

(assert (=> b!7350726 (= e!4401329 tp!2087759)))

(declare-fun b!7350724 () Bool)

(assert (=> b!7350724 (= e!4401329 tp_is_empty!48573)))

(declare-fun b!7350725 () Bool)

(declare-fun tp!2087758 () Bool)

(declare-fun tp!2087762 () Bool)

(assert (=> b!7350725 (= e!4401329 (and tp!2087758 tp!2087762))))

(assert (= (and b!7350531 (is-ElementMatch!19164 (reg!19493 r1!2370))) b!7350724))

(assert (= (and b!7350531 (is-Concat!28009 (reg!19493 r1!2370))) b!7350725))

(assert (= (and b!7350531 (is-Star!19164 (reg!19493 r1!2370))) b!7350726))

(assert (= (and b!7350531 (is-Union!19164 (reg!19493 r1!2370))) b!7350727))

(declare-fun e!4401330 () Bool)

(assert (=> b!7350536 (= tp!2087721 e!4401330)))

(declare-fun b!7350731 () Bool)

(declare-fun tp!2087765 () Bool)

(declare-fun tp!2087766 () Bool)

(assert (=> b!7350731 (= e!4401330 (and tp!2087765 tp!2087766))))

(declare-fun b!7350730 () Bool)

(declare-fun tp!2087764 () Bool)

(assert (=> b!7350730 (= e!4401330 tp!2087764)))

(declare-fun b!7350728 () Bool)

(assert (=> b!7350728 (= e!4401330 tp_is_empty!48573)))

(declare-fun b!7350729 () Bool)

(declare-fun tp!2087763 () Bool)

(declare-fun tp!2087767 () Bool)

(assert (=> b!7350729 (= e!4401330 (and tp!2087763 tp!2087767))))

(assert (= (and b!7350536 (is-ElementMatch!19164 (regOne!38841 r1!2370))) b!7350728))

(assert (= (and b!7350536 (is-Concat!28009 (regOne!38841 r1!2370))) b!7350729))

(assert (= (and b!7350536 (is-Star!19164 (regOne!38841 r1!2370))) b!7350730))

(assert (= (and b!7350536 (is-Union!19164 (regOne!38841 r1!2370))) b!7350731))

(declare-fun e!4401331 () Bool)

(assert (=> b!7350536 (= tp!2087718 e!4401331)))

(declare-fun b!7350735 () Bool)

(declare-fun tp!2087770 () Bool)

(declare-fun tp!2087771 () Bool)

(assert (=> b!7350735 (= e!4401331 (and tp!2087770 tp!2087771))))

(declare-fun b!7350734 () Bool)

(declare-fun tp!2087769 () Bool)

(assert (=> b!7350734 (= e!4401331 tp!2087769)))

(declare-fun b!7350732 () Bool)

(assert (=> b!7350732 (= e!4401331 tp_is_empty!48573)))

(declare-fun b!7350733 () Bool)

(declare-fun tp!2087768 () Bool)

(declare-fun tp!2087772 () Bool)

(assert (=> b!7350733 (= e!4401331 (and tp!2087768 tp!2087772))))

(assert (= (and b!7350536 (is-ElementMatch!19164 (regTwo!38841 r1!2370))) b!7350732))

(assert (= (and b!7350536 (is-Concat!28009 (regTwo!38841 r1!2370))) b!7350733))

(assert (= (and b!7350536 (is-Star!19164 (regTwo!38841 r1!2370))) b!7350734))

(assert (= (and b!7350536 (is-Union!19164 (regTwo!38841 r1!2370))) b!7350735))

(declare-fun e!4401332 () Bool)

(assert (=> b!7350541 (= tp!2087719 e!4401332)))

(declare-fun b!7350739 () Bool)

(declare-fun tp!2087775 () Bool)

(declare-fun tp!2087776 () Bool)

(assert (=> b!7350739 (= e!4401332 (and tp!2087775 tp!2087776))))

(declare-fun b!7350738 () Bool)

(declare-fun tp!2087774 () Bool)

(assert (=> b!7350738 (= e!4401332 tp!2087774)))

(declare-fun b!7350736 () Bool)

(assert (=> b!7350736 (= e!4401332 tp_is_empty!48573)))

(declare-fun b!7350737 () Bool)

(declare-fun tp!2087773 () Bool)

(declare-fun tp!2087777 () Bool)

(assert (=> b!7350737 (= e!4401332 (and tp!2087773 tp!2087777))))

(assert (= (and b!7350541 (is-ElementMatch!19164 (regOne!38840 r1!2370))) b!7350736))

(assert (= (and b!7350541 (is-Concat!28009 (regOne!38840 r1!2370))) b!7350737))

(assert (= (and b!7350541 (is-Star!19164 (regOne!38840 r1!2370))) b!7350738))

(assert (= (and b!7350541 (is-Union!19164 (regOne!38840 r1!2370))) b!7350739))

(declare-fun e!4401333 () Bool)

(assert (=> b!7350541 (= tp!2087716 e!4401333)))

(declare-fun b!7350743 () Bool)

(declare-fun tp!2087780 () Bool)

(declare-fun tp!2087781 () Bool)

(assert (=> b!7350743 (= e!4401333 (and tp!2087780 tp!2087781))))

(declare-fun b!7350742 () Bool)

(declare-fun tp!2087779 () Bool)

(assert (=> b!7350742 (= e!4401333 tp!2087779)))

(declare-fun b!7350740 () Bool)

(assert (=> b!7350740 (= e!4401333 tp_is_empty!48573)))

(declare-fun b!7350741 () Bool)

(declare-fun tp!2087778 () Bool)

(declare-fun tp!2087782 () Bool)

(assert (=> b!7350741 (= e!4401333 (and tp!2087778 tp!2087782))))

(assert (= (and b!7350541 (is-ElementMatch!19164 (regTwo!38840 r1!2370))) b!7350740))

(assert (= (and b!7350541 (is-Concat!28009 (regTwo!38840 r1!2370))) b!7350741))

(assert (= (and b!7350541 (is-Star!19164 (regTwo!38840 r1!2370))) b!7350742))

(assert (= (and b!7350541 (is-Union!19164 (regTwo!38840 r1!2370))) b!7350743))

(declare-fun b!7350748 () Bool)

(declare-fun e!4401336 () Bool)

(declare-fun tp!2087787 () Bool)

(declare-fun tp!2087788 () Bool)

(assert (=> b!7350748 (= e!4401336 (and tp!2087787 tp!2087788))))

(assert (=> b!7350535 (= tp!2087717 e!4401336)))

(assert (= (and b!7350535 (is-Cons!71536 (exprs!8604 ct2!378))) b!7350748))

(declare-fun b!7350749 () Bool)

(declare-fun e!4401337 () Bool)

(declare-fun tp!2087789 () Bool)

(declare-fun tp!2087790 () Bool)

(assert (=> b!7350749 (= e!4401337 (and tp!2087789 tp!2087790))))

(assert (=> b!7350534 (= tp!2087720 e!4401337)))

(assert (= (and b!7350534 (is-Cons!71536 (exprs!8604 ct1!282))) b!7350749))

(declare-fun b!7350750 () Bool)

(declare-fun e!4401338 () Bool)

(declare-fun tp!2087791 () Bool)

(declare-fun tp!2087792 () Bool)

(assert (=> b!7350750 (= e!4401338 (and tp!2087791 tp!2087792))))

(assert (=> b!7350533 (= tp!2087722 e!4401338)))

(assert (= (and b!7350533 (is-Cons!71536 (exprs!8604 cWitness!61))) b!7350750))

(push 1)

(assert (not d!2280477))

(assert (not d!2280489))

(assert (not bm!672340))

(assert (not b!7350742))

(assert (not b!7350727))

(assert (not d!2280481))

(assert (not b!7350725))

(assert (not d!2280491))

(assert (not b!7350614))

(assert (not b!7350726))

(assert (not b!7350738))

(assert (not b!7350733))

(assert (not bm!672341))

(assert (not b!7350739))

(assert (not bm!672329))

(assert (not b!7350677))

(assert (not bm!672331))

(assert tp_is_empty!48573)

(assert (not bm!672307))

(assert (not b!7350686))

(assert (not b!7350750))

(assert (not bm!672339))

(assert (not b!7350647))

(assert (not b!7350646))

(assert (not bm!672328))

(assert (not b!7350737))

(assert (not b!7350743))

(assert (not b!7350706))

(assert (not bm!672332))

(assert (not bm!672337))

(assert (not b!7350700))

(assert (not bm!672312))

(assert (not d!2280487))

(assert (not d!2280479))

(assert (not b!7350731))

(assert (not bm!672334))

(assert (not b!7350748))

(assert (not b!7350729))

(assert (not b!7350741))

(assert (not b!7350735))

(assert (not b!7350734))

(assert (not bm!672310))

(assert (not b!7350730))

(assert (not b!7350749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

