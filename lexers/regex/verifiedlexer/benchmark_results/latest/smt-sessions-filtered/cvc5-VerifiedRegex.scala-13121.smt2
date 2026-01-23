; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717262 () Bool)

(assert start!717262)

(declare-fun b!7344272 () Bool)

(declare-fun e!4397667 () Bool)

(declare-fun tp!2085646 () Bool)

(assert (=> b!7344272 (= e!4397667 tp!2085646)))

(declare-fun b!7344273 () Bool)

(declare-fun e!4397672 () Bool)

(declare-fun tp!2085643 () Bool)

(assert (=> b!7344273 (= e!4397672 tp!2085643)))

(declare-fun b!7344274 () Bool)

(declare-fun e!4397671 () Bool)

(declare-fun tp!2085642 () Bool)

(declare-fun tp!2085647 () Bool)

(assert (=> b!7344274 (= e!4397671 (and tp!2085642 tp!2085647))))

(declare-fun b!7344275 () Bool)

(declare-fun res!2966554 () Bool)

(declare-fun e!4397668 () Bool)

(assert (=> b!7344275 (=> (not res!2966554) (not e!4397668))))

(declare-datatypes ((C!38534 0))(
  ( (C!38535 (val!29627 Int)) )
))
(declare-datatypes ((Regex!19130 0))(
  ( (ElementMatch!19130 (c!1364262 C!38534)) (Concat!27975 (regOne!38772 Regex!19130) (regTwo!38772 Regex!19130)) (EmptyExpr!19130) (Star!19130 (reg!19459 Regex!19130)) (EmptyLang!19130) (Union!19130 (regOne!38773 Regex!19130) (regTwo!38773 Regex!19130)) )
))
(declare-datatypes ((List!71626 0))(
  ( (Nil!71502) (Cons!71502 (h!77950 Regex!19130) (t!386021 List!71626)) )
))
(declare-datatypes ((Context!16140 0))(
  ( (Context!16141 (exprs!8570 List!71626)) )
))
(declare-fun cWitness!61 () Context!16140)

(declare-fun lt!2610799 () (Set Context!16140))

(assert (=> b!7344275 (= res!2966554 (not (set.member cWitness!61 lt!2610799)))))

(declare-fun b!7344276 () Bool)

(declare-fun e!4397676 () Bool)

(declare-fun e!4397669 () Bool)

(assert (=> b!7344276 (= e!4397676 e!4397669)))

(declare-fun res!2966556 () Bool)

(assert (=> b!7344276 (=> (not res!2966556) (not e!4397669))))

(declare-fun lt!2610801 () (Set Context!16140))

(assert (=> b!7344276 (= res!2966556 (set.member cWitness!61 lt!2610801))))

(declare-fun r1!2370 () Regex!19130)

(declare-fun c!10362 () C!38534)

(declare-fun ct1!282 () Context!16140)

(declare-fun derivationStepZipperDown!2956 (Regex!19130 Context!16140 C!38534) (Set Context!16140))

(assert (=> b!7344276 (= lt!2610801 (derivationStepZipperDown!2956 r1!2370 ct1!282 c!10362))))

(declare-fun b!7344277 () Bool)

(declare-fun e!4397670 () Bool)

(declare-fun ct2!378 () Context!16140)

(declare-fun lambda!455950 () Int)

(declare-fun forall!17960 (List!71626 Int) Bool)

(assert (=> b!7344277 (= e!4397670 (forall!17960 (exprs!8570 ct2!378) lambda!455950))))

(declare-fun b!7344278 () Bool)

(declare-fun e!4397674 () Bool)

(assert (=> b!7344278 (= e!4397669 e!4397674)))

(declare-fun res!2966553 () Bool)

(assert (=> b!7344278 (=> (not res!2966553) (not e!4397674))))

(assert (=> b!7344278 (= res!2966553 (and (or (not (is-ElementMatch!19130 r1!2370)) (not (= c!10362 (c!1364262 r1!2370)))) (is-Union!19130 r1!2370)))))

(declare-fun lt!2610805 () (Set Context!16140))

(declare-fun lt!2610796 () Context!16140)

(assert (=> b!7344278 (= lt!2610805 (derivationStepZipperDown!2956 r1!2370 lt!2610796 c!10362))))

(declare-fun ++!16948 (List!71626 List!71626) List!71626)

(assert (=> b!7344278 (= lt!2610796 (Context!16141 (++!16948 (exprs!8570 ct1!282) (exprs!8570 ct2!378))))))

(declare-datatypes ((Unit!165213 0))(
  ( (Unit!165214) )
))
(declare-fun lt!2610806 () Unit!165213)

(declare-fun lemmaConcatPreservesForall!1805 (List!71626 List!71626 Int) Unit!165213)

(assert (=> b!7344278 (= lt!2610806 (lemmaConcatPreservesForall!1805 (exprs!8570 ct1!282) (exprs!8570 ct2!378) lambda!455950))))

(declare-fun b!7344279 () Bool)

(declare-fun e!4397673 () Bool)

(assert (=> b!7344279 (= e!4397673 e!4397670)))

(declare-fun res!2966557 () Bool)

(assert (=> b!7344279 (=> res!2966557 e!4397670)))

(assert (=> b!7344279 (= res!2966557 (not (forall!17960 (exprs!8570 ct1!282) lambda!455950)))))

(declare-fun lt!2610803 () Unit!165213)

(assert (=> b!7344279 (= lt!2610803 (lemmaConcatPreservesForall!1805 (exprs!8570 cWitness!61) (exprs!8570 ct2!378) lambda!455950))))

(declare-fun res!2966559 () Bool)

(assert (=> start!717262 (=> (not res!2966559) (not e!4397676))))

(declare-fun validRegex!9726 (Regex!19130) Bool)

(assert (=> start!717262 (= res!2966559 (validRegex!9726 r1!2370))))

(assert (=> start!717262 e!4397676))

(declare-fun tp_is_empty!48505 () Bool)

(assert (=> start!717262 tp_is_empty!48505))

(declare-fun inv!91166 (Context!16140) Bool)

(assert (=> start!717262 (and (inv!91166 cWitness!61) e!4397672)))

(declare-fun e!4397675 () Bool)

(assert (=> start!717262 (and (inv!91166 ct1!282) e!4397675)))

(assert (=> start!717262 e!4397671))

(assert (=> start!717262 (and (inv!91166 ct2!378) e!4397667)))

(declare-fun b!7344280 () Bool)

(declare-fun tp!2085641 () Bool)

(assert (=> b!7344280 (= e!4397675 tp!2085641)))

(declare-fun b!7344281 () Bool)

(assert (=> b!7344281 (= e!4397671 tp_is_empty!48505)))

(declare-fun b!7344282 () Bool)

(assert (=> b!7344282 (= e!4397668 (not e!4397673))))

(declare-fun res!2966558 () Bool)

(assert (=> b!7344282 (=> res!2966558 e!4397673)))

(declare-fun lt!2610800 () Context!16140)

(assert (=> b!7344282 (= res!2966558 (not (set.member lt!2610800 lt!2610805)))))

(declare-fun lt!2610804 () Unit!165213)

(assert (=> b!7344282 (= lt!2610804 (lemmaConcatPreservesForall!1805 (exprs!8570 cWitness!61) (exprs!8570 ct2!378) lambda!455950))))

(assert (=> b!7344282 (set.member lt!2610800 (derivationStepZipperDown!2956 (regTwo!38773 r1!2370) lt!2610796 c!10362))))

(assert (=> b!7344282 (= lt!2610800 (Context!16141 (++!16948 (exprs!8570 cWitness!61) (exprs!8570 ct2!378))))))

(declare-fun lt!2610802 () Unit!165213)

(assert (=> b!7344282 (= lt!2610802 (lemmaConcatPreservesForall!1805 (exprs!8570 ct1!282) (exprs!8570 ct2!378) lambda!455950))))

(declare-fun lt!2610797 () Unit!165213)

(assert (=> b!7344282 (= lt!2610797 (lemmaConcatPreservesForall!1805 (exprs!8570 cWitness!61) (exprs!8570 ct2!378) lambda!455950))))

(declare-fun lt!2610798 () Unit!165213)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!63 (Regex!19130 Context!16140 Context!16140 Context!16140 C!38534) Unit!165213)

(assert (=> b!7344282 (= lt!2610798 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!63 (regTwo!38773 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7344283 () Bool)

(assert (=> b!7344283 (= e!4397674 e!4397668)))

(declare-fun res!2966555 () Bool)

(assert (=> b!7344283 (=> (not res!2966555) (not e!4397668))))

(assert (=> b!7344283 (= res!2966555 (= lt!2610801 (set.union lt!2610799 (derivationStepZipperDown!2956 (regTwo!38773 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7344283 (= lt!2610799 (derivationStepZipperDown!2956 (regOne!38773 r1!2370) ct1!282 c!10362))))

(declare-fun b!7344284 () Bool)

(declare-fun tp!2085645 () Bool)

(assert (=> b!7344284 (= e!4397671 tp!2085645)))

(declare-fun b!7344285 () Bool)

(declare-fun tp!2085644 () Bool)

(declare-fun tp!2085640 () Bool)

(assert (=> b!7344285 (= e!4397671 (and tp!2085644 tp!2085640))))

(assert (= (and start!717262 res!2966559) b!7344276))

(assert (= (and b!7344276 res!2966556) b!7344278))

(assert (= (and b!7344278 res!2966553) b!7344283))

(assert (= (and b!7344283 res!2966555) b!7344275))

(assert (= (and b!7344275 res!2966554) b!7344282))

(assert (= (and b!7344282 (not res!2966558)) b!7344279))

(assert (= (and b!7344279 (not res!2966557)) b!7344277))

(assert (= start!717262 b!7344273))

(assert (= start!717262 b!7344280))

(assert (= (and start!717262 (is-ElementMatch!19130 r1!2370)) b!7344281))

(assert (= (and start!717262 (is-Concat!27975 r1!2370)) b!7344285))

(assert (= (and start!717262 (is-Star!19130 r1!2370)) b!7344284))

(assert (= (and start!717262 (is-Union!19130 r1!2370)) b!7344274))

(assert (= start!717262 b!7344272))

(declare-fun m!8007078 () Bool)

(assert (=> b!7344279 m!8007078))

(declare-fun m!8007080 () Bool)

(assert (=> b!7344279 m!8007080))

(declare-fun m!8007082 () Bool)

(assert (=> b!7344283 m!8007082))

(declare-fun m!8007084 () Bool)

(assert (=> b!7344283 m!8007084))

(declare-fun m!8007086 () Bool)

(assert (=> b!7344277 m!8007086))

(declare-fun m!8007088 () Bool)

(assert (=> b!7344278 m!8007088))

(declare-fun m!8007090 () Bool)

(assert (=> b!7344278 m!8007090))

(declare-fun m!8007092 () Bool)

(assert (=> b!7344278 m!8007092))

(declare-fun m!8007094 () Bool)

(assert (=> b!7344276 m!8007094))

(declare-fun m!8007096 () Bool)

(assert (=> b!7344276 m!8007096))

(assert (=> b!7344282 m!8007080))

(declare-fun m!8007098 () Bool)

(assert (=> b!7344282 m!8007098))

(assert (=> b!7344282 m!8007092))

(declare-fun m!8007100 () Bool)

(assert (=> b!7344282 m!8007100))

(declare-fun m!8007102 () Bool)

(assert (=> b!7344282 m!8007102))

(declare-fun m!8007104 () Bool)

(assert (=> b!7344282 m!8007104))

(declare-fun m!8007106 () Bool)

(assert (=> b!7344282 m!8007106))

(assert (=> b!7344282 m!8007080))

(declare-fun m!8007108 () Bool)

(assert (=> start!717262 m!8007108))

(declare-fun m!8007110 () Bool)

(assert (=> start!717262 m!8007110))

(declare-fun m!8007112 () Bool)

(assert (=> start!717262 m!8007112))

(declare-fun m!8007114 () Bool)

(assert (=> start!717262 m!8007114))

(declare-fun m!8007116 () Bool)

(assert (=> b!7344275 m!8007116))

(push 1)

(assert (not b!7344279))

(assert (not b!7344278))

(assert (not b!7344283))

(assert (not start!717262))

(assert tp_is_empty!48505)

(assert (not b!7344282))

(assert (not b!7344274))

(assert (not b!7344277))

(assert (not b!7344273))

(assert (not b!7344280))

(assert (not b!7344284))

(assert (not b!7344276))

(assert (not b!7344272))

(assert (not b!7344285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7344364 () Bool)

(declare-fun res!2966605 () Bool)

(declare-fun e!4397738 () Bool)

(assert (=> b!7344364 (=> (not res!2966605) (not e!4397738))))

(declare-fun call!670831 () Bool)

(assert (=> b!7344364 (= res!2966605 call!670831)))

(declare-fun e!4397735 () Bool)

(assert (=> b!7344364 (= e!4397735 e!4397738)))

(declare-fun b!7344365 () Bool)

(declare-fun e!4397736 () Bool)

(assert (=> b!7344365 (= e!4397736 call!670831)))

(declare-fun bm!670825 () Bool)

(declare-fun call!670830 () Bool)

(assert (=> bm!670825 (= call!670831 call!670830)))

(declare-fun b!7344366 () Bool)

(declare-fun e!4397740 () Bool)

(declare-fun e!4397741 () Bool)

(assert (=> b!7344366 (= e!4397740 e!4397741)))

(declare-fun c!1364273 () Bool)

(assert (=> b!7344366 (= c!1364273 (is-Star!19130 r1!2370))))

(declare-fun b!7344367 () Bool)

(declare-fun res!2966601 () Bool)

(declare-fun e!4397739 () Bool)

(assert (=> b!7344367 (=> res!2966601 e!4397739)))

(assert (=> b!7344367 (= res!2966601 (not (is-Concat!27975 r1!2370)))))

(assert (=> b!7344367 (= e!4397735 e!4397739)))

(declare-fun d!2279332 () Bool)

(declare-fun res!2966602 () Bool)

(assert (=> d!2279332 (=> res!2966602 e!4397740)))

(assert (=> d!2279332 (= res!2966602 (is-ElementMatch!19130 r1!2370))))

(assert (=> d!2279332 (= (validRegex!9726 r1!2370) e!4397740)))

(declare-fun b!7344368 () Bool)

(declare-fun e!4397737 () Bool)

(assert (=> b!7344368 (= e!4397741 e!4397737)))

(declare-fun res!2966604 () Bool)

(declare-fun nullable!8223 (Regex!19130) Bool)

(assert (=> b!7344368 (= res!2966604 (not (nullable!8223 (reg!19459 r1!2370))))))

(assert (=> b!7344368 (=> (not res!2966604) (not e!4397737))))

(declare-fun b!7344369 () Bool)

(assert (=> b!7344369 (= e!4397741 e!4397735)))

(declare-fun c!1364272 () Bool)

(assert (=> b!7344369 (= c!1364272 (is-Union!19130 r1!2370))))

(declare-fun b!7344370 () Bool)

(assert (=> b!7344370 (= e!4397739 e!4397736)))

(declare-fun res!2966603 () Bool)

(assert (=> b!7344370 (=> (not res!2966603) (not e!4397736))))

(declare-fun call!670832 () Bool)

(assert (=> b!7344370 (= res!2966603 call!670832)))

(declare-fun b!7344371 () Bool)

(assert (=> b!7344371 (= e!4397737 call!670830)))

(declare-fun bm!670826 () Bool)

(assert (=> bm!670826 (= call!670830 (validRegex!9726 (ite c!1364273 (reg!19459 r1!2370) (ite c!1364272 (regOne!38773 r1!2370) (regTwo!38772 r1!2370)))))))

(declare-fun b!7344372 () Bool)

(assert (=> b!7344372 (= e!4397738 call!670832)))

(declare-fun bm!670827 () Bool)

(assert (=> bm!670827 (= call!670832 (validRegex!9726 (ite c!1364272 (regTwo!38773 r1!2370) (regOne!38772 r1!2370))))))

(assert (= (and d!2279332 (not res!2966602)) b!7344366))

(assert (= (and b!7344366 c!1364273) b!7344368))

(assert (= (and b!7344366 (not c!1364273)) b!7344369))

(assert (= (and b!7344368 res!2966604) b!7344371))

(assert (= (and b!7344369 c!1364272) b!7344364))

(assert (= (and b!7344369 (not c!1364272)) b!7344367))

(assert (= (and b!7344364 res!2966605) b!7344372))

(assert (= (and b!7344367 (not res!2966601)) b!7344370))

(assert (= (and b!7344370 res!2966603) b!7344365))

(assert (= (or b!7344364 b!7344365) bm!670825))

(assert (= (or b!7344372 b!7344370) bm!670827))

(assert (= (or b!7344371 bm!670825) bm!670826))

(declare-fun m!8007158 () Bool)

(assert (=> b!7344368 m!8007158))

(declare-fun m!8007160 () Bool)

(assert (=> bm!670826 m!8007160))

(declare-fun m!8007162 () Bool)

(assert (=> bm!670827 m!8007162))

(assert (=> start!717262 d!2279332))

(declare-fun bs!1918716 () Bool)

(declare-fun d!2279336 () Bool)

(assert (= bs!1918716 (and d!2279336 b!7344278)))

(declare-fun lambda!455966 () Int)

(assert (=> bs!1918716 (= lambda!455966 lambda!455950)))

(assert (=> d!2279336 (= (inv!91166 cWitness!61) (forall!17960 (exprs!8570 cWitness!61) lambda!455966))))

(declare-fun bs!1918717 () Bool)

(assert (= bs!1918717 d!2279336))

(declare-fun m!8007164 () Bool)

(assert (=> bs!1918717 m!8007164))

(assert (=> start!717262 d!2279336))

(declare-fun bs!1918718 () Bool)

(declare-fun d!2279338 () Bool)

(assert (= bs!1918718 (and d!2279338 b!7344278)))

(declare-fun lambda!455967 () Int)

(assert (=> bs!1918718 (= lambda!455967 lambda!455950)))

(declare-fun bs!1918719 () Bool)

(assert (= bs!1918719 (and d!2279338 d!2279336)))

(assert (=> bs!1918719 (= lambda!455967 lambda!455966)))

(assert (=> d!2279338 (= (inv!91166 ct1!282) (forall!17960 (exprs!8570 ct1!282) lambda!455967))))

(declare-fun bs!1918720 () Bool)

(assert (= bs!1918720 d!2279338))

(declare-fun m!8007166 () Bool)

(assert (=> bs!1918720 m!8007166))

(assert (=> start!717262 d!2279338))

(declare-fun bs!1918721 () Bool)

(declare-fun d!2279340 () Bool)

(assert (= bs!1918721 (and d!2279340 b!7344278)))

(declare-fun lambda!455968 () Int)

(assert (=> bs!1918721 (= lambda!455968 lambda!455950)))

(declare-fun bs!1918722 () Bool)

(assert (= bs!1918722 (and d!2279340 d!2279336)))

(assert (=> bs!1918722 (= lambda!455968 lambda!455966)))

(declare-fun bs!1918723 () Bool)

(assert (= bs!1918723 (and d!2279340 d!2279338)))

(assert (=> bs!1918723 (= lambda!455968 lambda!455967)))

(assert (=> d!2279340 (= (inv!91166 ct2!378) (forall!17960 (exprs!8570 ct2!378) lambda!455968))))

(declare-fun bs!1918724 () Bool)

(assert (= bs!1918724 d!2279340))

(declare-fun m!8007168 () Bool)

(assert (=> bs!1918724 m!8007168))

(assert (=> start!717262 d!2279340))

(declare-fun bm!670849 () Bool)

(declare-fun call!670858 () (Set Context!16140))

(declare-fun call!670856 () (Set Context!16140))

(assert (=> bm!670849 (= call!670858 call!670856)))

(declare-fun bm!670850 () Bool)

(declare-fun call!670854 () (Set Context!16140))

(assert (=> bm!670850 (= call!670854 call!670858)))

(declare-fun b!7344404 () Bool)

(declare-fun c!1364287 () Bool)

(assert (=> b!7344404 (= c!1364287 (is-Star!19130 r1!2370))))

(declare-fun e!4397762 () (Set Context!16140))

(declare-fun e!4397764 () (Set Context!16140))

(assert (=> b!7344404 (= e!4397762 e!4397764)))

(declare-fun b!7344405 () Bool)

(declare-fun e!4397766 () (Set Context!16140))

(declare-fun call!670857 () (Set Context!16140))

(assert (=> b!7344405 (= e!4397766 (set.union call!670857 call!670858))))

(declare-fun d!2279342 () Bool)

(declare-fun c!1364289 () Bool)

(assert (=> d!2279342 (= c!1364289 (and (is-ElementMatch!19130 r1!2370) (= (c!1364262 r1!2370) c!10362)))))

(declare-fun e!4397763 () (Set Context!16140))

(assert (=> d!2279342 (= (derivationStepZipperDown!2956 r1!2370 ct1!282 c!10362) e!4397763)))

(declare-fun b!7344406 () Bool)

(assert (=> b!7344406 (= e!4397764 (as set.empty (Set Context!16140)))))

(declare-fun b!7344407 () Bool)

(assert (=> b!7344407 (= e!4397762 call!670854)))

(declare-fun b!7344408 () Bool)

(assert (=> b!7344408 (= e!4397763 (set.insert ct1!282 (as set.empty (Set Context!16140))))))

(declare-fun b!7344409 () Bool)

(declare-fun e!4397761 () Bool)

(assert (=> b!7344409 (= e!4397761 (nullable!8223 (regOne!38772 r1!2370)))))

(declare-fun b!7344410 () Bool)

(declare-fun c!1364288 () Bool)

(assert (=> b!7344410 (= c!1364288 e!4397761)))

(declare-fun res!2966613 () Bool)

(assert (=> b!7344410 (=> (not res!2966613) (not e!4397761))))

(assert (=> b!7344410 (= res!2966613 (is-Concat!27975 r1!2370))))

(declare-fun e!4397765 () (Set Context!16140))

(assert (=> b!7344410 (= e!4397765 e!4397766)))

(declare-fun call!670855 () List!71626)

(declare-fun bm!670851 () Bool)

(declare-fun c!1364286 () Bool)

(assert (=> bm!670851 (= call!670857 (derivationStepZipperDown!2956 (ite c!1364286 (regTwo!38773 r1!2370) (regOne!38772 r1!2370)) (ite c!1364286 ct1!282 (Context!16141 call!670855)) c!10362))))

(declare-fun b!7344411 () Bool)

(assert (=> b!7344411 (= e!4397766 e!4397762)))

(declare-fun c!1364290 () Bool)

(assert (=> b!7344411 (= c!1364290 (is-Concat!27975 r1!2370))))

(declare-fun bm!670852 () Bool)

(declare-fun call!670859 () List!71626)

(assert (=> bm!670852 (= call!670856 (derivationStepZipperDown!2956 (ite c!1364286 (regOne!38773 r1!2370) (ite c!1364288 (regTwo!38772 r1!2370) (ite c!1364290 (regOne!38772 r1!2370) (reg!19459 r1!2370)))) (ite (or c!1364286 c!1364288) ct1!282 (Context!16141 call!670859)) c!10362))))

(declare-fun b!7344412 () Bool)

(assert (=> b!7344412 (= e!4397763 e!4397765)))

(assert (=> b!7344412 (= c!1364286 (is-Union!19130 r1!2370))))

(declare-fun bm!670853 () Bool)

(assert (=> bm!670853 (= call!670859 call!670855)))

(declare-fun b!7344413 () Bool)

(assert (=> b!7344413 (= e!4397765 (set.union call!670856 call!670857))))

(declare-fun bm!670854 () Bool)

(declare-fun $colon$colon!3130 (List!71626 Regex!19130) List!71626)

(assert (=> bm!670854 (= call!670855 ($colon$colon!3130 (exprs!8570 ct1!282) (ite (or c!1364288 c!1364290) (regTwo!38772 r1!2370) r1!2370)))))

(declare-fun b!7344414 () Bool)

(assert (=> b!7344414 (= e!4397764 call!670854)))

(assert (= (and d!2279342 c!1364289) b!7344408))

(assert (= (and d!2279342 (not c!1364289)) b!7344412))

(assert (= (and b!7344412 c!1364286) b!7344413))

(assert (= (and b!7344412 (not c!1364286)) b!7344410))

(assert (= (and b!7344410 res!2966613) b!7344409))

(assert (= (and b!7344410 c!1364288) b!7344405))

(assert (= (and b!7344410 (not c!1364288)) b!7344411))

(assert (= (and b!7344411 c!1364290) b!7344407))

(assert (= (and b!7344411 (not c!1364290)) b!7344404))

(assert (= (and b!7344404 c!1364287) b!7344414))

(assert (= (and b!7344404 (not c!1364287)) b!7344406))

(assert (= (or b!7344407 b!7344414) bm!670853))

(assert (= (or b!7344407 b!7344414) bm!670850))

(assert (= (or b!7344405 bm!670850) bm!670849))

(assert (= (or b!7344405 bm!670853) bm!670854))

(assert (= (or b!7344413 b!7344405) bm!670851))

(assert (= (or b!7344413 bm!670849) bm!670852))

(declare-fun m!8007180 () Bool)

(assert (=> b!7344409 m!8007180))

(declare-fun m!8007182 () Bool)

(assert (=> bm!670854 m!8007182))

(declare-fun m!8007184 () Bool)

(assert (=> bm!670852 m!8007184))

(declare-fun m!8007186 () Bool)

(assert (=> bm!670851 m!8007186))

(declare-fun m!8007188 () Bool)

(assert (=> b!7344408 m!8007188))

(assert (=> b!7344276 d!2279342))

(declare-fun d!2279350 () Bool)

(declare-fun res!2966618 () Bool)

(declare-fun e!4397771 () Bool)

(assert (=> d!2279350 (=> res!2966618 e!4397771)))

(assert (=> d!2279350 (= res!2966618 (is-Nil!71502 (exprs!8570 ct1!282)))))

(assert (=> d!2279350 (= (forall!17960 (exprs!8570 ct1!282) lambda!455950) e!4397771)))

(declare-fun b!7344419 () Bool)

(declare-fun e!4397772 () Bool)

(assert (=> b!7344419 (= e!4397771 e!4397772)))

(declare-fun res!2966619 () Bool)

(assert (=> b!7344419 (=> (not res!2966619) (not e!4397772))))

(declare-fun dynLambda!29467 (Int Regex!19130) Bool)

(assert (=> b!7344419 (= res!2966619 (dynLambda!29467 lambda!455950 (h!77950 (exprs!8570 ct1!282))))))

(declare-fun b!7344420 () Bool)

(assert (=> b!7344420 (= e!4397772 (forall!17960 (t!386021 (exprs!8570 ct1!282)) lambda!455950))))

(assert (= (and d!2279350 (not res!2966618)) b!7344419))

(assert (= (and b!7344419 res!2966619) b!7344420))

(declare-fun b_lambda!283963 () Bool)

(assert (=> (not b_lambda!283963) (not b!7344419)))

(declare-fun m!8007192 () Bool)

(assert (=> b!7344419 m!8007192))

(declare-fun m!8007194 () Bool)

(assert (=> b!7344420 m!8007194))

(assert (=> b!7344279 d!2279350))

(declare-fun d!2279354 () Bool)

(assert (=> d!2279354 (forall!17960 (++!16948 (exprs!8570 cWitness!61) (exprs!8570 ct2!378)) lambda!455950)))

(declare-fun lt!2610842 () Unit!165213)

(declare-fun choose!57128 (List!71626 List!71626 Int) Unit!165213)

(assert (=> d!2279354 (= lt!2610842 (choose!57128 (exprs!8570 cWitness!61) (exprs!8570 ct2!378) lambda!455950))))

(assert (=> d!2279354 (forall!17960 (exprs!8570 cWitness!61) lambda!455950)))

(assert (=> d!2279354 (= (lemmaConcatPreservesForall!1805 (exprs!8570 cWitness!61) (exprs!8570 ct2!378) lambda!455950) lt!2610842)))

(declare-fun bs!1918734 () Bool)

(assert (= bs!1918734 d!2279354))

(assert (=> bs!1918734 m!8007100))

(assert (=> bs!1918734 m!8007100))

(declare-fun m!8007196 () Bool)

(assert (=> bs!1918734 m!8007196))

(declare-fun m!8007198 () Bool)

(assert (=> bs!1918734 m!8007198))

(declare-fun m!8007200 () Bool)

(assert (=> bs!1918734 m!8007200))

(assert (=> b!7344279 d!2279354))

(declare-fun bm!670855 () Bool)

(declare-fun call!670864 () (Set Context!16140))

(declare-fun call!670862 () (Set Context!16140))

(assert (=> bm!670855 (= call!670864 call!670862)))

(declare-fun bm!670856 () Bool)

(declare-fun call!670860 () (Set Context!16140))

(assert (=> bm!670856 (= call!670860 call!670864)))

(declare-fun b!7344421 () Bool)

(declare-fun c!1364292 () Bool)

(assert (=> b!7344421 (= c!1364292 (is-Star!19130 (regTwo!38773 r1!2370)))))

(declare-fun e!4397774 () (Set Context!16140))

(declare-fun e!4397776 () (Set Context!16140))

(assert (=> b!7344421 (= e!4397774 e!4397776)))

(declare-fun b!7344422 () Bool)

(declare-fun e!4397778 () (Set Context!16140))

(declare-fun call!670863 () (Set Context!16140))

(assert (=> b!7344422 (= e!4397778 (set.union call!670863 call!670864))))

(declare-fun d!2279356 () Bool)

(declare-fun c!1364294 () Bool)

(assert (=> d!2279356 (= c!1364294 (and (is-ElementMatch!19130 (regTwo!38773 r1!2370)) (= (c!1364262 (regTwo!38773 r1!2370)) c!10362)))))

(declare-fun e!4397775 () (Set Context!16140))

(assert (=> d!2279356 (= (derivationStepZipperDown!2956 (regTwo!38773 r1!2370) ct1!282 c!10362) e!4397775)))

(declare-fun b!7344423 () Bool)

(assert (=> b!7344423 (= e!4397776 (as set.empty (Set Context!16140)))))

(declare-fun b!7344424 () Bool)

(assert (=> b!7344424 (= e!4397774 call!670860)))

(declare-fun b!7344425 () Bool)

(assert (=> b!7344425 (= e!4397775 (set.insert ct1!282 (as set.empty (Set Context!16140))))))

(declare-fun b!7344426 () Bool)

(declare-fun e!4397773 () Bool)

(assert (=> b!7344426 (= e!4397773 (nullable!8223 (regOne!38772 (regTwo!38773 r1!2370))))))

(declare-fun b!7344427 () Bool)

(declare-fun c!1364293 () Bool)

(assert (=> b!7344427 (= c!1364293 e!4397773)))

(declare-fun res!2966620 () Bool)

(assert (=> b!7344427 (=> (not res!2966620) (not e!4397773))))

(assert (=> b!7344427 (= res!2966620 (is-Concat!27975 (regTwo!38773 r1!2370)))))

(declare-fun e!4397777 () (Set Context!16140))

(assert (=> b!7344427 (= e!4397777 e!4397778)))

(declare-fun call!670861 () List!71626)

(declare-fun bm!670857 () Bool)

(declare-fun c!1364291 () Bool)

(assert (=> bm!670857 (= call!670863 (derivationStepZipperDown!2956 (ite c!1364291 (regTwo!38773 (regTwo!38773 r1!2370)) (regOne!38772 (regTwo!38773 r1!2370))) (ite c!1364291 ct1!282 (Context!16141 call!670861)) c!10362))))

(declare-fun b!7344428 () Bool)

(assert (=> b!7344428 (= e!4397778 e!4397774)))

(declare-fun c!1364295 () Bool)

(assert (=> b!7344428 (= c!1364295 (is-Concat!27975 (regTwo!38773 r1!2370)))))

(declare-fun bm!670858 () Bool)

(declare-fun call!670865 () List!71626)

(assert (=> bm!670858 (= call!670862 (derivationStepZipperDown!2956 (ite c!1364291 (regOne!38773 (regTwo!38773 r1!2370)) (ite c!1364293 (regTwo!38772 (regTwo!38773 r1!2370)) (ite c!1364295 (regOne!38772 (regTwo!38773 r1!2370)) (reg!19459 (regTwo!38773 r1!2370))))) (ite (or c!1364291 c!1364293) ct1!282 (Context!16141 call!670865)) c!10362))))

(declare-fun b!7344429 () Bool)

(assert (=> b!7344429 (= e!4397775 e!4397777)))

(assert (=> b!7344429 (= c!1364291 (is-Union!19130 (regTwo!38773 r1!2370)))))

(declare-fun bm!670859 () Bool)

(assert (=> bm!670859 (= call!670865 call!670861)))

(declare-fun b!7344430 () Bool)

(assert (=> b!7344430 (= e!4397777 (set.union call!670862 call!670863))))

(declare-fun bm!670860 () Bool)

(assert (=> bm!670860 (= call!670861 ($colon$colon!3130 (exprs!8570 ct1!282) (ite (or c!1364293 c!1364295) (regTwo!38772 (regTwo!38773 r1!2370)) (regTwo!38773 r1!2370))))))

(declare-fun b!7344431 () Bool)

(assert (=> b!7344431 (= e!4397776 call!670860)))

(assert (= (and d!2279356 c!1364294) b!7344425))

(assert (= (and d!2279356 (not c!1364294)) b!7344429))

(assert (= (and b!7344429 c!1364291) b!7344430))

(assert (= (and b!7344429 (not c!1364291)) b!7344427))

(assert (= (and b!7344427 res!2966620) b!7344426))

(assert (= (and b!7344427 c!1364293) b!7344422))

(assert (= (and b!7344427 (not c!1364293)) b!7344428))

(assert (= (and b!7344428 c!1364295) b!7344424))

(assert (= (and b!7344428 (not c!1364295)) b!7344421))

(assert (= (and b!7344421 c!1364292) b!7344431))

(assert (= (and b!7344421 (not c!1364292)) b!7344423))

(assert (= (or b!7344424 b!7344431) bm!670859))

(assert (= (or b!7344424 b!7344431) bm!670856))

(assert (= (or b!7344422 bm!670856) bm!670855))

(assert (= (or b!7344422 bm!670859) bm!670860))

(assert (= (or b!7344430 b!7344422) bm!670857))

(assert (= (or b!7344430 bm!670855) bm!670858))

(declare-fun m!8007202 () Bool)

(assert (=> b!7344426 m!8007202))

(declare-fun m!8007204 () Bool)

(assert (=> bm!670860 m!8007204))

(declare-fun m!8007206 () Bool)

(assert (=> bm!670858 m!8007206))

(declare-fun m!8007208 () Bool)

(assert (=> bm!670857 m!8007208))

(assert (=> b!7344425 m!8007188))

(assert (=> b!7344283 d!2279356))

(declare-fun bm!670861 () Bool)

(declare-fun call!670870 () (Set Context!16140))

(declare-fun call!670868 () (Set Context!16140))

(assert (=> bm!670861 (= call!670870 call!670868)))

(declare-fun bm!670862 () Bool)

(declare-fun call!670866 () (Set Context!16140))

(assert (=> bm!670862 (= call!670866 call!670870)))

(declare-fun b!7344432 () Bool)

(declare-fun c!1364297 () Bool)

(assert (=> b!7344432 (= c!1364297 (is-Star!19130 (regOne!38773 r1!2370)))))

(declare-fun e!4397780 () (Set Context!16140))

(declare-fun e!4397782 () (Set Context!16140))

(assert (=> b!7344432 (= e!4397780 e!4397782)))

(declare-fun b!7344433 () Bool)

(declare-fun e!4397784 () (Set Context!16140))

(declare-fun call!670869 () (Set Context!16140))

(assert (=> b!7344433 (= e!4397784 (set.union call!670869 call!670870))))

(declare-fun d!2279358 () Bool)

(declare-fun c!1364299 () Bool)

(assert (=> d!2279358 (= c!1364299 (and (is-ElementMatch!19130 (regOne!38773 r1!2370)) (= (c!1364262 (regOne!38773 r1!2370)) c!10362)))))

(declare-fun e!4397781 () (Set Context!16140))

(assert (=> d!2279358 (= (derivationStepZipperDown!2956 (regOne!38773 r1!2370) ct1!282 c!10362) e!4397781)))

(declare-fun b!7344434 () Bool)

(assert (=> b!7344434 (= e!4397782 (as set.empty (Set Context!16140)))))

(declare-fun b!7344435 () Bool)

(assert (=> b!7344435 (= e!4397780 call!670866)))

(declare-fun b!7344436 () Bool)

(assert (=> b!7344436 (= e!4397781 (set.insert ct1!282 (as set.empty (Set Context!16140))))))

(declare-fun b!7344437 () Bool)

(declare-fun e!4397779 () Bool)

(assert (=> b!7344437 (= e!4397779 (nullable!8223 (regOne!38772 (regOne!38773 r1!2370))))))

(declare-fun b!7344438 () Bool)

(declare-fun c!1364298 () Bool)

(assert (=> b!7344438 (= c!1364298 e!4397779)))

(declare-fun res!2966621 () Bool)

(assert (=> b!7344438 (=> (not res!2966621) (not e!4397779))))

(assert (=> b!7344438 (= res!2966621 (is-Concat!27975 (regOne!38773 r1!2370)))))

(declare-fun e!4397783 () (Set Context!16140))

(assert (=> b!7344438 (= e!4397783 e!4397784)))

(declare-fun c!1364296 () Bool)

(declare-fun call!670867 () List!71626)

(declare-fun bm!670863 () Bool)

(assert (=> bm!670863 (= call!670869 (derivationStepZipperDown!2956 (ite c!1364296 (regTwo!38773 (regOne!38773 r1!2370)) (regOne!38772 (regOne!38773 r1!2370))) (ite c!1364296 ct1!282 (Context!16141 call!670867)) c!10362))))

(declare-fun b!7344439 () Bool)

(assert (=> b!7344439 (= e!4397784 e!4397780)))

(declare-fun c!1364300 () Bool)

(assert (=> b!7344439 (= c!1364300 (is-Concat!27975 (regOne!38773 r1!2370)))))

(declare-fun bm!670864 () Bool)

(declare-fun call!670871 () List!71626)

(assert (=> bm!670864 (= call!670868 (derivationStepZipperDown!2956 (ite c!1364296 (regOne!38773 (regOne!38773 r1!2370)) (ite c!1364298 (regTwo!38772 (regOne!38773 r1!2370)) (ite c!1364300 (regOne!38772 (regOne!38773 r1!2370)) (reg!19459 (regOne!38773 r1!2370))))) (ite (or c!1364296 c!1364298) ct1!282 (Context!16141 call!670871)) c!10362))))

(declare-fun b!7344440 () Bool)

(assert (=> b!7344440 (= e!4397781 e!4397783)))

(assert (=> b!7344440 (= c!1364296 (is-Union!19130 (regOne!38773 r1!2370)))))

(declare-fun bm!670865 () Bool)

(assert (=> bm!670865 (= call!670871 call!670867)))

(declare-fun b!7344441 () Bool)

(assert (=> b!7344441 (= e!4397783 (set.union call!670868 call!670869))))

(declare-fun bm!670866 () Bool)

(assert (=> bm!670866 (= call!670867 ($colon$colon!3130 (exprs!8570 ct1!282) (ite (or c!1364298 c!1364300) (regTwo!38772 (regOne!38773 r1!2370)) (regOne!38773 r1!2370))))))

(declare-fun b!7344442 () Bool)

(assert (=> b!7344442 (= e!4397782 call!670866)))

(assert (= (and d!2279358 c!1364299) b!7344436))

(assert (= (and d!2279358 (not c!1364299)) b!7344440))

(assert (= (and b!7344440 c!1364296) b!7344441))

(assert (= (and b!7344440 (not c!1364296)) b!7344438))

(assert (= (and b!7344438 res!2966621) b!7344437))

(assert (= (and b!7344438 c!1364298) b!7344433))

(assert (= (and b!7344438 (not c!1364298)) b!7344439))

(assert (= (and b!7344439 c!1364300) b!7344435))

(assert (= (and b!7344439 (not c!1364300)) b!7344432))

(assert (= (and b!7344432 c!1364297) b!7344442))

(assert (= (and b!7344432 (not c!1364297)) b!7344434))

(assert (= (or b!7344435 b!7344442) bm!670865))

(assert (= (or b!7344435 b!7344442) bm!670862))

(assert (= (or b!7344433 bm!670862) bm!670861))

(assert (= (or b!7344433 bm!670865) bm!670866))

(assert (= (or b!7344441 b!7344433) bm!670863))

(assert (= (or b!7344441 bm!670861) bm!670864))

(declare-fun m!8007210 () Bool)

(assert (=> b!7344437 m!8007210))

(declare-fun m!8007212 () Bool)

(assert (=> bm!670866 m!8007212))

(declare-fun m!8007214 () Bool)

(assert (=> bm!670864 m!8007214))

(declare-fun m!8007216 () Bool)

(assert (=> bm!670863 m!8007216))

(assert (=> b!7344436 m!8007188))

(assert (=> b!7344283 d!2279358))

(declare-fun bm!670867 () Bool)

(declare-fun call!670876 () (Set Context!16140))

(declare-fun call!670874 () (Set Context!16140))

(assert (=> bm!670867 (= call!670876 call!670874)))

(declare-fun bm!670868 () Bool)

(declare-fun call!670872 () (Set Context!16140))

(assert (=> bm!670868 (= call!670872 call!670876)))

(declare-fun b!7344443 () Bool)

(declare-fun c!1364302 () Bool)

(assert (=> b!7344443 (= c!1364302 (is-Star!19130 r1!2370))))

(declare-fun e!4397786 () (Set Context!16140))

(declare-fun e!4397788 () (Set Context!16140))

(assert (=> b!7344443 (= e!4397786 e!4397788)))

(declare-fun b!7344444 () Bool)

(declare-fun e!4397790 () (Set Context!16140))

(declare-fun call!670875 () (Set Context!16140))

(assert (=> b!7344444 (= e!4397790 (set.union call!670875 call!670876))))

(declare-fun d!2279360 () Bool)

(declare-fun c!1364304 () Bool)

(assert (=> d!2279360 (= c!1364304 (and (is-ElementMatch!19130 r1!2370) (= (c!1364262 r1!2370) c!10362)))))

(declare-fun e!4397787 () (Set Context!16140))

(assert (=> d!2279360 (= (derivationStepZipperDown!2956 r1!2370 lt!2610796 c!10362) e!4397787)))

(declare-fun b!7344445 () Bool)

(assert (=> b!7344445 (= e!4397788 (as set.empty (Set Context!16140)))))

(declare-fun b!7344446 () Bool)

(assert (=> b!7344446 (= e!4397786 call!670872)))

(declare-fun b!7344447 () Bool)

(assert (=> b!7344447 (= e!4397787 (set.insert lt!2610796 (as set.empty (Set Context!16140))))))

(declare-fun b!7344448 () Bool)

(declare-fun e!4397785 () Bool)

(assert (=> b!7344448 (= e!4397785 (nullable!8223 (regOne!38772 r1!2370)))))

(declare-fun b!7344449 () Bool)

(declare-fun c!1364303 () Bool)

(assert (=> b!7344449 (= c!1364303 e!4397785)))

(declare-fun res!2966622 () Bool)

(assert (=> b!7344449 (=> (not res!2966622) (not e!4397785))))

(assert (=> b!7344449 (= res!2966622 (is-Concat!27975 r1!2370))))

(declare-fun e!4397789 () (Set Context!16140))

(assert (=> b!7344449 (= e!4397789 e!4397790)))

(declare-fun call!670873 () List!71626)

(declare-fun bm!670869 () Bool)

(declare-fun c!1364301 () Bool)

(assert (=> bm!670869 (= call!670875 (derivationStepZipperDown!2956 (ite c!1364301 (regTwo!38773 r1!2370) (regOne!38772 r1!2370)) (ite c!1364301 lt!2610796 (Context!16141 call!670873)) c!10362))))

(declare-fun b!7344450 () Bool)

(assert (=> b!7344450 (= e!4397790 e!4397786)))

(declare-fun c!1364305 () Bool)

(assert (=> b!7344450 (= c!1364305 (is-Concat!27975 r1!2370))))

(declare-fun call!670877 () List!71626)

(declare-fun bm!670870 () Bool)

(assert (=> bm!670870 (= call!670874 (derivationStepZipperDown!2956 (ite c!1364301 (regOne!38773 r1!2370) (ite c!1364303 (regTwo!38772 r1!2370) (ite c!1364305 (regOne!38772 r1!2370) (reg!19459 r1!2370)))) (ite (or c!1364301 c!1364303) lt!2610796 (Context!16141 call!670877)) c!10362))))

(declare-fun b!7344451 () Bool)

(assert (=> b!7344451 (= e!4397787 e!4397789)))

(assert (=> b!7344451 (= c!1364301 (is-Union!19130 r1!2370))))

(declare-fun bm!670871 () Bool)

(assert (=> bm!670871 (= call!670877 call!670873)))

(declare-fun b!7344452 () Bool)

(assert (=> b!7344452 (= e!4397789 (set.union call!670874 call!670875))))

(declare-fun bm!670872 () Bool)

(assert (=> bm!670872 (= call!670873 ($colon$colon!3130 (exprs!8570 lt!2610796) (ite (or c!1364303 c!1364305) (regTwo!38772 r1!2370) r1!2370)))))

(declare-fun b!7344453 () Bool)

(assert (=> b!7344453 (= e!4397788 call!670872)))

(assert (= (and d!2279360 c!1364304) b!7344447))

(assert (= (and d!2279360 (not c!1364304)) b!7344451))

(assert (= (and b!7344451 c!1364301) b!7344452))

(assert (= (and b!7344451 (not c!1364301)) b!7344449))

(assert (= (and b!7344449 res!2966622) b!7344448))

(assert (= (and b!7344449 c!1364303) b!7344444))

(assert (= (and b!7344449 (not c!1364303)) b!7344450))

(assert (= (and b!7344450 c!1364305) b!7344446))

(assert (= (and b!7344450 (not c!1364305)) b!7344443))

(assert (= (and b!7344443 c!1364302) b!7344453))

(assert (= (and b!7344443 (not c!1364302)) b!7344445))

(assert (= (or b!7344446 b!7344453) bm!670871))

(assert (= (or b!7344446 b!7344453) bm!670868))

(assert (= (or b!7344444 bm!670868) bm!670867))

(assert (= (or b!7344444 bm!670871) bm!670872))

(assert (= (or b!7344452 b!7344444) bm!670869))

(assert (= (or b!7344452 bm!670867) bm!670870))

(assert (=> b!7344448 m!8007180))

(declare-fun m!8007218 () Bool)

(assert (=> bm!670872 m!8007218))

(declare-fun m!8007220 () Bool)

(assert (=> bm!670870 m!8007220))

(declare-fun m!8007222 () Bool)

(assert (=> bm!670869 m!8007222))

(declare-fun m!8007224 () Bool)

(assert (=> b!7344447 m!8007224))

(assert (=> b!7344278 d!2279360))

(declare-fun b!7344484 () Bool)

(declare-fun e!4397807 () List!71626)

(assert (=> b!7344484 (= e!4397807 (exprs!8570 ct2!378))))

(declare-fun d!2279362 () Bool)

(declare-fun e!4397808 () Bool)

(assert (=> d!2279362 e!4397808))

(declare-fun res!2966629 () Bool)

(assert (=> d!2279362 (=> (not res!2966629) (not e!4397808))))

(declare-fun lt!2610845 () List!71626)

(declare-fun content!15045 (List!71626) (Set Regex!19130))

(assert (=> d!2279362 (= res!2966629 (= (content!15045 lt!2610845) (set.union (content!15045 (exprs!8570 ct1!282)) (content!15045 (exprs!8570 ct2!378)))))))

(assert (=> d!2279362 (= lt!2610845 e!4397807)))

(declare-fun c!1364318 () Bool)

(assert (=> d!2279362 (= c!1364318 (is-Nil!71502 (exprs!8570 ct1!282)))))

(assert (=> d!2279362 (= (++!16948 (exprs!8570 ct1!282) (exprs!8570 ct2!378)) lt!2610845)))

(declare-fun b!7344487 () Bool)

(assert (=> b!7344487 (= e!4397808 (or (not (= (exprs!8570 ct2!378) Nil!71502)) (= lt!2610845 (exprs!8570 ct1!282))))))

(declare-fun b!7344485 () Bool)

(assert (=> b!7344485 (= e!4397807 (Cons!71502 (h!77950 (exprs!8570 ct1!282)) (++!16948 (t!386021 (exprs!8570 ct1!282)) (exprs!8570 ct2!378))))))

(declare-fun b!7344486 () Bool)

(declare-fun res!2966630 () Bool)

(assert (=> b!7344486 (=> (not res!2966630) (not e!4397808))))

(declare-fun size!42024 (List!71626) Int)

(assert (=> b!7344486 (= res!2966630 (= (size!42024 lt!2610845) (+ (size!42024 (exprs!8570 ct1!282)) (size!42024 (exprs!8570 ct2!378)))))))

(assert (= (and d!2279362 c!1364318) b!7344484))

(assert (= (and d!2279362 (not c!1364318)) b!7344485))

(assert (= (and d!2279362 res!2966629) b!7344486))

(assert (= (and b!7344486 res!2966630) b!7344487))

(declare-fun m!8007226 () Bool)

(assert (=> d!2279362 m!8007226))

(declare-fun m!8007228 () Bool)

(assert (=> d!2279362 m!8007228))

(declare-fun m!8007230 () Bool)

(assert (=> d!2279362 m!8007230))

(declare-fun m!8007232 () Bool)

(assert (=> b!7344485 m!8007232))

(declare-fun m!8007234 () Bool)

(assert (=> b!7344486 m!8007234))

(declare-fun m!8007236 () Bool)

(assert (=> b!7344486 m!8007236))

(declare-fun m!8007238 () Bool)

(assert (=> b!7344486 m!8007238))

(assert (=> b!7344278 d!2279362))

(declare-fun d!2279364 () Bool)

(assert (=> d!2279364 (forall!17960 (++!16948 (exprs!8570 ct1!282) (exprs!8570 ct2!378)) lambda!455950)))

(declare-fun lt!2610846 () Unit!165213)

(assert (=> d!2279364 (= lt!2610846 (choose!57128 (exprs!8570 ct1!282) (exprs!8570 ct2!378) lambda!455950))))

(assert (=> d!2279364 (forall!17960 (exprs!8570 ct1!282) lambda!455950)))

(assert (=> d!2279364 (= (lemmaConcatPreservesForall!1805 (exprs!8570 ct1!282) (exprs!8570 ct2!378) lambda!455950) lt!2610846)))

(declare-fun bs!1918735 () Bool)

(assert (= bs!1918735 d!2279364))

(assert (=> bs!1918735 m!8007090))

(assert (=> bs!1918735 m!8007090))

(declare-fun m!8007240 () Bool)

(assert (=> bs!1918735 m!8007240))

(declare-fun m!8007242 () Bool)

(assert (=> bs!1918735 m!8007242))

(assert (=> bs!1918735 m!8007078))

(assert (=> b!7344278 d!2279364))

(declare-fun bs!1918736 () Bool)

(declare-fun d!2279366 () Bool)

(assert (= bs!1918736 (and d!2279366 b!7344278)))

(declare-fun lambda!455978 () Int)

(assert (=> bs!1918736 (= lambda!455978 lambda!455950)))

(declare-fun bs!1918737 () Bool)

(assert (= bs!1918737 (and d!2279366 d!2279336)))

(assert (=> bs!1918737 (= lambda!455978 lambda!455966)))

(declare-fun bs!1918738 () Bool)

(assert (= bs!1918738 (and d!2279366 d!2279338)))

(assert (=> bs!1918738 (= lambda!455978 lambda!455967)))

(declare-fun bs!1918739 () Bool)

(assert (= bs!1918739 (and d!2279366 d!2279340)))

(assert (=> bs!1918739 (= lambda!455978 lambda!455968)))

(assert (=> d!2279366 (set.member (Context!16141 (++!16948 (exprs!8570 cWitness!61) (exprs!8570 ct2!378))) (derivationStepZipperDown!2956 (regTwo!38773 r1!2370) (Context!16141 (++!16948 (exprs!8570 ct1!282) (exprs!8570 ct2!378))) c!10362))))

(declare-fun lt!2610855 () Unit!165213)

(assert (=> d!2279366 (= lt!2610855 (lemmaConcatPreservesForall!1805 (exprs!8570 ct1!282) (exprs!8570 ct2!378) lambda!455978))))

(declare-fun lt!2610854 () Unit!165213)

(assert (=> d!2279366 (= lt!2610854 (lemmaConcatPreservesForall!1805 (exprs!8570 cWitness!61) (exprs!8570 ct2!378) lambda!455978))))

(declare-fun lt!2610853 () Unit!165213)

(declare-fun choose!57129 (Regex!19130 Context!16140 Context!16140 Context!16140 C!38534) Unit!165213)

(assert (=> d!2279366 (= lt!2610853 (choose!57129 (regTwo!38773 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279366 (validRegex!9726 (regTwo!38773 r1!2370))))

(assert (=> d!2279366 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!63 (regTwo!38773 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610853)))

(declare-fun bs!1918740 () Bool)

(assert (= bs!1918740 d!2279366))

(declare-fun m!8007244 () Bool)

(assert (=> bs!1918740 m!8007244))

(declare-fun m!8007246 () Bool)

(assert (=> bs!1918740 m!8007246))

(declare-fun m!8007248 () Bool)

(assert (=> bs!1918740 m!8007248))

(declare-fun m!8007250 () Bool)

(assert (=> bs!1918740 m!8007250))

(assert (=> bs!1918740 m!8007090))

(assert (=> bs!1918740 m!8007100))

(declare-fun m!8007252 () Bool)

(assert (=> bs!1918740 m!8007252))

(declare-fun m!8007254 () Bool)

(assert (=> bs!1918740 m!8007254))

(assert (=> b!7344282 d!2279366))

(assert (=> b!7344282 d!2279364))

(declare-fun b!7344488 () Bool)

(declare-fun e!4397809 () List!71626)

(assert (=> b!7344488 (= e!4397809 (exprs!8570 ct2!378))))

(declare-fun d!2279368 () Bool)

(declare-fun e!4397810 () Bool)

(assert (=> d!2279368 e!4397810))

(declare-fun res!2966631 () Bool)

(assert (=> d!2279368 (=> (not res!2966631) (not e!4397810))))

(declare-fun lt!2610856 () List!71626)

(assert (=> d!2279368 (= res!2966631 (= (content!15045 lt!2610856) (set.union (content!15045 (exprs!8570 cWitness!61)) (content!15045 (exprs!8570 ct2!378)))))))

(assert (=> d!2279368 (= lt!2610856 e!4397809)))

(declare-fun c!1364320 () Bool)

(assert (=> d!2279368 (= c!1364320 (is-Nil!71502 (exprs!8570 cWitness!61)))))

(assert (=> d!2279368 (= (++!16948 (exprs!8570 cWitness!61) (exprs!8570 ct2!378)) lt!2610856)))

(declare-fun b!7344491 () Bool)

(assert (=> b!7344491 (= e!4397810 (or (not (= (exprs!8570 ct2!378) Nil!71502)) (= lt!2610856 (exprs!8570 cWitness!61))))))

(declare-fun b!7344489 () Bool)

(assert (=> b!7344489 (= e!4397809 (Cons!71502 (h!77950 (exprs!8570 cWitness!61)) (++!16948 (t!386021 (exprs!8570 cWitness!61)) (exprs!8570 ct2!378))))))

(declare-fun b!7344490 () Bool)

(declare-fun res!2966632 () Bool)

(assert (=> b!7344490 (=> (not res!2966632) (not e!4397810))))

(assert (=> b!7344490 (= res!2966632 (= (size!42024 lt!2610856) (+ (size!42024 (exprs!8570 cWitness!61)) (size!42024 (exprs!8570 ct2!378)))))))

(assert (= (and d!2279368 c!1364320) b!7344488))

(assert (= (and d!2279368 (not c!1364320)) b!7344489))

(assert (= (and d!2279368 res!2966631) b!7344490))

(assert (= (and b!7344490 res!2966632) b!7344491))

(declare-fun m!8007256 () Bool)

(assert (=> d!2279368 m!8007256))

(declare-fun m!8007258 () Bool)

(assert (=> d!2279368 m!8007258))

(assert (=> d!2279368 m!8007230))

(declare-fun m!8007260 () Bool)

(assert (=> b!7344489 m!8007260))

(declare-fun m!8007262 () Bool)

(assert (=> b!7344490 m!8007262))

(declare-fun m!8007264 () Bool)

(assert (=> b!7344490 m!8007264))

(assert (=> b!7344490 m!8007238))

(assert (=> b!7344282 d!2279368))

(declare-fun bm!670885 () Bool)

(declare-fun call!670894 () (Set Context!16140))

(declare-fun call!670892 () (Set Context!16140))

(assert (=> bm!670885 (= call!670894 call!670892)))

(declare-fun bm!670886 () Bool)

(declare-fun call!670890 () (Set Context!16140))

(assert (=> bm!670886 (= call!670890 call!670894)))

(declare-fun b!7344492 () Bool)

(declare-fun c!1364322 () Bool)

(assert (=> b!7344492 (= c!1364322 (is-Star!19130 (regTwo!38773 r1!2370)))))

(declare-fun e!4397812 () (Set Context!16140))

(declare-fun e!4397814 () (Set Context!16140))

(assert (=> b!7344492 (= e!4397812 e!4397814)))

(declare-fun b!7344493 () Bool)

(declare-fun e!4397816 () (Set Context!16140))

(declare-fun call!670893 () (Set Context!16140))

(assert (=> b!7344493 (= e!4397816 (set.union call!670893 call!670894))))

(declare-fun d!2279370 () Bool)

(declare-fun c!1364324 () Bool)

(assert (=> d!2279370 (= c!1364324 (and (is-ElementMatch!19130 (regTwo!38773 r1!2370)) (= (c!1364262 (regTwo!38773 r1!2370)) c!10362)))))

(declare-fun e!4397813 () (Set Context!16140))

(assert (=> d!2279370 (= (derivationStepZipperDown!2956 (regTwo!38773 r1!2370) lt!2610796 c!10362) e!4397813)))

(declare-fun b!7344494 () Bool)

(assert (=> b!7344494 (= e!4397814 (as set.empty (Set Context!16140)))))

(declare-fun b!7344495 () Bool)

(assert (=> b!7344495 (= e!4397812 call!670890)))

(declare-fun b!7344496 () Bool)

(assert (=> b!7344496 (= e!4397813 (set.insert lt!2610796 (as set.empty (Set Context!16140))))))

(declare-fun b!7344497 () Bool)

(declare-fun e!4397811 () Bool)

(assert (=> b!7344497 (= e!4397811 (nullable!8223 (regOne!38772 (regTwo!38773 r1!2370))))))

(declare-fun b!7344498 () Bool)

(declare-fun c!1364323 () Bool)

(assert (=> b!7344498 (= c!1364323 e!4397811)))

(declare-fun res!2966633 () Bool)

(assert (=> b!7344498 (=> (not res!2966633) (not e!4397811))))

(assert (=> b!7344498 (= res!2966633 (is-Concat!27975 (regTwo!38773 r1!2370)))))

(declare-fun e!4397815 () (Set Context!16140))

(assert (=> b!7344498 (= e!4397815 e!4397816)))

(declare-fun c!1364321 () Bool)

(declare-fun call!670891 () List!71626)

(declare-fun bm!670887 () Bool)

(assert (=> bm!670887 (= call!670893 (derivationStepZipperDown!2956 (ite c!1364321 (regTwo!38773 (regTwo!38773 r1!2370)) (regOne!38772 (regTwo!38773 r1!2370))) (ite c!1364321 lt!2610796 (Context!16141 call!670891)) c!10362))))

(declare-fun b!7344499 () Bool)

(assert (=> b!7344499 (= e!4397816 e!4397812)))

(declare-fun c!1364325 () Bool)

(assert (=> b!7344499 (= c!1364325 (is-Concat!27975 (regTwo!38773 r1!2370)))))

(declare-fun bm!670888 () Bool)

(declare-fun call!670895 () List!71626)

(assert (=> bm!670888 (= call!670892 (derivationStepZipperDown!2956 (ite c!1364321 (regOne!38773 (regTwo!38773 r1!2370)) (ite c!1364323 (regTwo!38772 (regTwo!38773 r1!2370)) (ite c!1364325 (regOne!38772 (regTwo!38773 r1!2370)) (reg!19459 (regTwo!38773 r1!2370))))) (ite (or c!1364321 c!1364323) lt!2610796 (Context!16141 call!670895)) c!10362))))

(declare-fun b!7344500 () Bool)

(assert (=> b!7344500 (= e!4397813 e!4397815)))

(assert (=> b!7344500 (= c!1364321 (is-Union!19130 (regTwo!38773 r1!2370)))))

(declare-fun bm!670889 () Bool)

(assert (=> bm!670889 (= call!670895 call!670891)))

(declare-fun b!7344501 () Bool)

(assert (=> b!7344501 (= e!4397815 (set.union call!670892 call!670893))))

(declare-fun bm!670890 () Bool)

(assert (=> bm!670890 (= call!670891 ($colon$colon!3130 (exprs!8570 lt!2610796) (ite (or c!1364323 c!1364325) (regTwo!38772 (regTwo!38773 r1!2370)) (regTwo!38773 r1!2370))))))

(declare-fun b!7344502 () Bool)

(assert (=> b!7344502 (= e!4397814 call!670890)))

(assert (= (and d!2279370 c!1364324) b!7344496))

(assert (= (and d!2279370 (not c!1364324)) b!7344500))

(assert (= (and b!7344500 c!1364321) b!7344501))

(assert (= (and b!7344500 (not c!1364321)) b!7344498))

(assert (= (and b!7344498 res!2966633) b!7344497))

(assert (= (and b!7344498 c!1364323) b!7344493))

(assert (= (and b!7344498 (not c!1364323)) b!7344499))

(assert (= (and b!7344499 c!1364325) b!7344495))

(assert (= (and b!7344499 (not c!1364325)) b!7344492))

(assert (= (and b!7344492 c!1364322) b!7344502))

(assert (= (and b!7344492 (not c!1364322)) b!7344494))

(assert (= (or b!7344495 b!7344502) bm!670889))

(assert (= (or b!7344495 b!7344502) bm!670886))

(assert (= (or b!7344493 bm!670886) bm!670885))

(assert (= (or b!7344493 bm!670889) bm!670890))

(assert (= (or b!7344501 b!7344493) bm!670887))

(assert (= (or b!7344501 bm!670885) bm!670888))

(assert (=> b!7344497 m!8007202))

(declare-fun m!8007266 () Bool)

(assert (=> bm!670890 m!8007266))

(declare-fun m!8007268 () Bool)

(assert (=> bm!670888 m!8007268))

(declare-fun m!8007270 () Bool)

(assert (=> bm!670887 m!8007270))

(assert (=> b!7344496 m!8007224))

(assert (=> b!7344282 d!2279370))

(assert (=> b!7344282 d!2279354))

(declare-fun d!2279372 () Bool)

(declare-fun res!2966634 () Bool)

(declare-fun e!4397817 () Bool)

(assert (=> d!2279372 (=> res!2966634 e!4397817)))

(assert (=> d!2279372 (= res!2966634 (is-Nil!71502 (exprs!8570 ct2!378)))))

(assert (=> d!2279372 (= (forall!17960 (exprs!8570 ct2!378) lambda!455950) e!4397817)))

(declare-fun b!7344503 () Bool)

(declare-fun e!4397818 () Bool)

(assert (=> b!7344503 (= e!4397817 e!4397818)))

(declare-fun res!2966635 () Bool)

(assert (=> b!7344503 (=> (not res!2966635) (not e!4397818))))

(assert (=> b!7344503 (= res!2966635 (dynLambda!29467 lambda!455950 (h!77950 (exprs!8570 ct2!378))))))

(declare-fun b!7344504 () Bool)

(assert (=> b!7344504 (= e!4397818 (forall!17960 (t!386021 (exprs!8570 ct2!378)) lambda!455950))))

(assert (= (and d!2279372 (not res!2966634)) b!7344503))

(assert (= (and b!7344503 res!2966635) b!7344504))

(declare-fun b_lambda!283965 () Bool)

(assert (=> (not b_lambda!283965) (not b!7344503)))

(declare-fun m!8007272 () Bool)

(assert (=> b!7344503 m!8007272))

(declare-fun m!8007274 () Bool)

(assert (=> b!7344504 m!8007274))

(assert (=> b!7344277 d!2279372))

(declare-fun b!7344518 () Bool)

(declare-fun e!4397821 () Bool)

(declare-fun tp!2085682 () Bool)

(declare-fun tp!2085683 () Bool)

(assert (=> b!7344518 (= e!4397821 (and tp!2085682 tp!2085683))))

(declare-fun b!7344516 () Bool)

(declare-fun tp!2085685 () Bool)

(declare-fun tp!2085686 () Bool)

(assert (=> b!7344516 (= e!4397821 (and tp!2085685 tp!2085686))))

(assert (=> b!7344274 (= tp!2085642 e!4397821)))

(declare-fun b!7344515 () Bool)

(assert (=> b!7344515 (= e!4397821 tp_is_empty!48505)))

(declare-fun b!7344517 () Bool)

(declare-fun tp!2085684 () Bool)

(assert (=> b!7344517 (= e!4397821 tp!2085684)))

(assert (= (and b!7344274 (is-ElementMatch!19130 (regOne!38773 r1!2370))) b!7344515))

(assert (= (and b!7344274 (is-Concat!27975 (regOne!38773 r1!2370))) b!7344516))

(assert (= (and b!7344274 (is-Star!19130 (regOne!38773 r1!2370))) b!7344517))

(assert (= (and b!7344274 (is-Union!19130 (regOne!38773 r1!2370))) b!7344518))

(declare-fun b!7344522 () Bool)

(declare-fun e!4397822 () Bool)

(declare-fun tp!2085687 () Bool)

(declare-fun tp!2085688 () Bool)

(assert (=> b!7344522 (= e!4397822 (and tp!2085687 tp!2085688))))

(declare-fun b!7344520 () Bool)

(declare-fun tp!2085690 () Bool)

(declare-fun tp!2085691 () Bool)

(assert (=> b!7344520 (= e!4397822 (and tp!2085690 tp!2085691))))

(assert (=> b!7344274 (= tp!2085647 e!4397822)))

(declare-fun b!7344519 () Bool)

(assert (=> b!7344519 (= e!4397822 tp_is_empty!48505)))

(declare-fun b!7344521 () Bool)

(declare-fun tp!2085689 () Bool)

(assert (=> b!7344521 (= e!4397822 tp!2085689)))

(assert (= (and b!7344274 (is-ElementMatch!19130 (regTwo!38773 r1!2370))) b!7344519))

(assert (= (and b!7344274 (is-Concat!27975 (regTwo!38773 r1!2370))) b!7344520))

(assert (= (and b!7344274 (is-Star!19130 (regTwo!38773 r1!2370))) b!7344521))

(assert (= (and b!7344274 (is-Union!19130 (regTwo!38773 r1!2370))) b!7344522))

(declare-fun b!7344526 () Bool)

(declare-fun e!4397823 () Bool)

(declare-fun tp!2085692 () Bool)

(declare-fun tp!2085693 () Bool)

(assert (=> b!7344526 (= e!4397823 (and tp!2085692 tp!2085693))))

(declare-fun b!7344524 () Bool)

(declare-fun tp!2085695 () Bool)

(declare-fun tp!2085696 () Bool)

(assert (=> b!7344524 (= e!4397823 (and tp!2085695 tp!2085696))))

(assert (=> b!7344285 (= tp!2085644 e!4397823)))

(declare-fun b!7344523 () Bool)

(assert (=> b!7344523 (= e!4397823 tp_is_empty!48505)))

(declare-fun b!7344525 () Bool)

(declare-fun tp!2085694 () Bool)

(assert (=> b!7344525 (= e!4397823 tp!2085694)))

(assert (= (and b!7344285 (is-ElementMatch!19130 (regOne!38772 r1!2370))) b!7344523))

(assert (= (and b!7344285 (is-Concat!27975 (regOne!38772 r1!2370))) b!7344524))

(assert (= (and b!7344285 (is-Star!19130 (regOne!38772 r1!2370))) b!7344525))

(assert (= (and b!7344285 (is-Union!19130 (regOne!38772 r1!2370))) b!7344526))

(declare-fun b!7344530 () Bool)

(declare-fun e!4397824 () Bool)

(declare-fun tp!2085697 () Bool)

(declare-fun tp!2085698 () Bool)

(assert (=> b!7344530 (= e!4397824 (and tp!2085697 tp!2085698))))

(declare-fun b!7344528 () Bool)

(declare-fun tp!2085700 () Bool)

(declare-fun tp!2085701 () Bool)

(assert (=> b!7344528 (= e!4397824 (and tp!2085700 tp!2085701))))

(assert (=> b!7344285 (= tp!2085640 e!4397824)))

(declare-fun b!7344527 () Bool)

(assert (=> b!7344527 (= e!4397824 tp_is_empty!48505)))

(declare-fun b!7344529 () Bool)

(declare-fun tp!2085699 () Bool)

(assert (=> b!7344529 (= e!4397824 tp!2085699)))

(assert (= (and b!7344285 (is-ElementMatch!19130 (regTwo!38772 r1!2370))) b!7344527))

(assert (= (and b!7344285 (is-Concat!27975 (regTwo!38772 r1!2370))) b!7344528))

(assert (= (and b!7344285 (is-Star!19130 (regTwo!38772 r1!2370))) b!7344529))

(assert (= (and b!7344285 (is-Union!19130 (regTwo!38772 r1!2370))) b!7344530))

(declare-fun b!7344535 () Bool)

(declare-fun e!4397827 () Bool)

(declare-fun tp!2085706 () Bool)

(declare-fun tp!2085707 () Bool)

(assert (=> b!7344535 (= e!4397827 (and tp!2085706 tp!2085707))))

(assert (=> b!7344280 (= tp!2085641 e!4397827)))

(assert (= (and b!7344280 (is-Cons!71502 (exprs!8570 ct1!282))) b!7344535))

(declare-fun b!7344536 () Bool)

(declare-fun e!4397828 () Bool)

(declare-fun tp!2085708 () Bool)

(declare-fun tp!2085709 () Bool)

(assert (=> b!7344536 (= e!4397828 (and tp!2085708 tp!2085709))))

(assert (=> b!7344273 (= tp!2085643 e!4397828)))

(assert (= (and b!7344273 (is-Cons!71502 (exprs!8570 cWitness!61))) b!7344536))

(declare-fun b!7344540 () Bool)

(declare-fun e!4397829 () Bool)

(declare-fun tp!2085710 () Bool)

(declare-fun tp!2085711 () Bool)

(assert (=> b!7344540 (= e!4397829 (and tp!2085710 tp!2085711))))

(declare-fun b!7344538 () Bool)

(declare-fun tp!2085713 () Bool)

(declare-fun tp!2085714 () Bool)

(assert (=> b!7344538 (= e!4397829 (and tp!2085713 tp!2085714))))

(assert (=> b!7344284 (= tp!2085645 e!4397829)))

(declare-fun b!7344537 () Bool)

(assert (=> b!7344537 (= e!4397829 tp_is_empty!48505)))

(declare-fun b!7344539 () Bool)

(declare-fun tp!2085712 () Bool)

(assert (=> b!7344539 (= e!4397829 tp!2085712)))

(assert (= (and b!7344284 (is-ElementMatch!19130 (reg!19459 r1!2370))) b!7344537))

(assert (= (and b!7344284 (is-Concat!27975 (reg!19459 r1!2370))) b!7344538))

(assert (= (and b!7344284 (is-Star!19130 (reg!19459 r1!2370))) b!7344539))

(assert (= (and b!7344284 (is-Union!19130 (reg!19459 r1!2370))) b!7344540))

(declare-fun b!7344541 () Bool)

(declare-fun e!4397830 () Bool)

(declare-fun tp!2085715 () Bool)

(declare-fun tp!2085716 () Bool)

(assert (=> b!7344541 (= e!4397830 (and tp!2085715 tp!2085716))))

(assert (=> b!7344272 (= tp!2085646 e!4397830)))

(assert (= (and b!7344272 (is-Cons!71502 (exprs!8570 ct2!378))) b!7344541))

(declare-fun b_lambda!283967 () Bool)

(assert (= b_lambda!283963 (or b!7344278 b_lambda!283967)))

(declare-fun bs!1918741 () Bool)

(declare-fun d!2279374 () Bool)

(assert (= bs!1918741 (and d!2279374 b!7344278)))

(assert (=> bs!1918741 (= (dynLambda!29467 lambda!455950 (h!77950 (exprs!8570 ct1!282))) (validRegex!9726 (h!77950 (exprs!8570 ct1!282))))))

(declare-fun m!8007276 () Bool)

(assert (=> bs!1918741 m!8007276))

(assert (=> b!7344419 d!2279374))

(declare-fun b_lambda!283969 () Bool)

(assert (= b_lambda!283965 (or b!7344278 b_lambda!283969)))

(declare-fun bs!1918742 () Bool)

(declare-fun d!2279376 () Bool)

(assert (= bs!1918742 (and d!2279376 b!7344278)))

(assert (=> bs!1918742 (= (dynLambda!29467 lambda!455950 (h!77950 (exprs!8570 ct2!378))) (validRegex!9726 (h!77950 (exprs!8570 ct2!378))))))

(declare-fun m!8007278 () Bool)

(assert (=> bs!1918742 m!8007278))

(assert (=> b!7344503 d!2279376))

(push 1)

(assert (not bs!1918741))

(assert (not bm!670851))

(assert (not b!7344538))

(assert (not b!7344409))

(assert (not b!7344529))

(assert (not bm!670872))

(assert (not b!7344518))

(assert (not bm!670870))

(assert (not b!7344489))

(assert (not d!2279366))

(assert (not b!7344525))

(assert (not b_lambda!283969))

(assert (not b!7344504))

(assert (not b!7344437))

(assert (not b!7344522))

(assert (not d!2279354))

(assert (not b!7344528))

(assert (not d!2279340))

(assert (not b!7344486))

(assert (not bm!670869))

(assert (not b!7344540))

(assert (not bm!670826))

(assert (not bm!670827))

(assert (not d!2279336))

(assert (not bm!670864))

(assert (not bm!670852))

(assert (not b!7344535))

(assert tp_is_empty!48505)

(assert (not b!7344497))

(assert (not b!7344516))

(assert (not b!7344420))

(assert (not b!7344539))

(assert (not b!7344524))

(assert (not b!7344520))

(assert (not b!7344536))

(assert (not bm!670857))

(assert (not bm!670863))

(assert (not b!7344490))

(assert (not b!7344541))

(assert (not bm!670887))

(assert (not d!2279338))

(assert (not b_lambda!283967))

(assert (not bm!670860))

(assert (not b!7344530))

(assert (not d!2279362))

(assert (not bs!1918742))

(assert (not bm!670890))

(assert (not b!7344485))

(assert (not b!7344368))

(assert (not b!7344526))

(assert (not bm!670888))

(assert (not d!2279364))

(assert (not b!7344448))

(assert (not bm!670858))

(assert (not bm!670854))

(assert (not b!7344426))

(assert (not b!7344521))

(assert (not b!7344517))

(assert (not bm!670866))

(assert (not d!2279368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

