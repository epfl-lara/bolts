; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718894 () Bool)

(assert start!718894)

(declare-fun b!7363448 () Bool)

(declare-fun e!4408587 () Bool)

(declare-fun tp!2092553 () Bool)

(assert (=> b!7363448 (= e!4408587 tp!2092553)))

(declare-fun b!7363449 () Bool)

(declare-fun e!4408590 () Bool)

(declare-fun tp!2092548 () Bool)

(declare-fun tp!2092554 () Bool)

(assert (=> b!7363449 (= e!4408590 (and tp!2092548 tp!2092554))))

(declare-fun b!7363450 () Bool)

(declare-fun e!4408589 () Bool)

(declare-fun tp!2092551 () Bool)

(assert (=> b!7363450 (= e!4408589 tp!2092551)))

(declare-fun b!7363451 () Bool)

(declare-fun e!4408588 () Bool)

(declare-fun tp!2092552 () Bool)

(assert (=> b!7363451 (= e!4408588 tp!2092552)))

(declare-fun b!7363452 () Bool)

(declare-fun tp!2092550 () Bool)

(declare-fun tp!2092555 () Bool)

(assert (=> b!7363452 (= e!4408590 (and tp!2092550 tp!2092555))))

(declare-fun b!7363453 () Bool)

(declare-fun e!4408592 () Bool)

(declare-fun e!4408593 () Bool)

(assert (=> b!7363453 (= e!4408592 e!4408593)))

(declare-fun res!2972264 () Bool)

(assert (=> b!7363453 (=> (not res!2972264) (not e!4408593))))

(declare-datatypes ((C!38758 0))(
  ( (C!38759 (val!29739 Int)) )
))
(declare-datatypes ((Regex!19242 0))(
  ( (ElementMatch!19242 (c!1368250 C!38758)) (Concat!28087 (regOne!38996 Regex!19242) (regTwo!38996 Regex!19242)) (EmptyExpr!19242) (Star!19242 (reg!19571 Regex!19242)) (EmptyLang!19242) (Union!19242 (regOne!38997 Regex!19242) (regTwo!38997 Regex!19242)) )
))
(declare-fun r1!2370 () Regex!19242)

(declare-fun c!10362 () C!38758)

(assert (=> b!7363453 (= res!2972264 (and (or (not (is-ElementMatch!19242 r1!2370)) (not (= c!10362 (c!1368250 r1!2370)))) (is-Union!19242 r1!2370)))))

(declare-datatypes ((List!71738 0))(
  ( (Nil!71614) (Cons!71614 (h!78062 Regex!19242) (t!386187 List!71738)) )
))
(declare-datatypes ((Context!16364 0))(
  ( (Context!16365 (exprs!8682 List!71738)) )
))
(declare-fun lt!2614342 () (Set Context!16364))

(declare-fun lt!2614351 () Context!16364)

(declare-fun derivationStepZipperDown!3068 (Regex!19242 Context!16364 C!38758) (Set Context!16364))

(assert (=> b!7363453 (= lt!2614342 (derivationStepZipperDown!3068 r1!2370 lt!2614351 c!10362))))

(declare-fun ct1!282 () Context!16364)

(declare-fun ct2!378 () Context!16364)

(declare-fun ++!17058 (List!71738 List!71738) List!71738)

(assert (=> b!7363453 (= lt!2614351 (Context!16365 (++!17058 (exprs!8682 ct1!282) (exprs!8682 ct2!378))))))

(declare-datatypes ((Unit!165433 0))(
  ( (Unit!165434) )
))
(declare-fun lt!2614350 () Unit!165433)

(declare-fun lambda!457536 () Int)

(declare-fun lemmaConcatPreservesForall!1915 (List!71738 List!71738 Int) Unit!165433)

(assert (=> b!7363453 (= lt!2614350 (lemmaConcatPreservesForall!1915 (exprs!8682 ct1!282) (exprs!8682 ct2!378) lambda!457536))))

(declare-fun b!7363454 () Bool)

(declare-fun e!4408585 () Bool)

(assert (=> b!7363454 (= e!4408593 e!4408585)))

(declare-fun res!2972265 () Bool)

(assert (=> b!7363454 (=> (not res!2972265) (not e!4408585))))

(declare-fun lt!2614343 () (Set Context!16364))

(declare-fun lt!2614349 () (Set Context!16364))

(assert (=> b!7363454 (= res!2972265 (= lt!2614343 (set.union lt!2614349 (derivationStepZipperDown!3068 (regTwo!38997 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7363454 (= lt!2614349 (derivationStepZipperDown!3068 (regOne!38997 r1!2370) ct1!282 c!10362))))

(declare-fun b!7363455 () Bool)

(declare-fun e!4408591 () Bool)

(assert (=> b!7363455 (= e!4408585 (not e!4408591))))

(declare-fun res!2972268 () Bool)

(assert (=> b!7363455 (=> res!2972268 e!4408591)))

(declare-fun lt!2614344 () Context!16364)

(assert (=> b!7363455 (= res!2972268 (not (set.member lt!2614344 lt!2614342)))))

(declare-fun cWitness!61 () Context!16364)

(declare-fun lt!2614341 () Unit!165433)

(assert (=> b!7363455 (= lt!2614341 (lemmaConcatPreservesForall!1915 (exprs!8682 cWitness!61) (exprs!8682 ct2!378) lambda!457536))))

(assert (=> b!7363455 (set.member lt!2614344 (derivationStepZipperDown!3068 (regOne!38997 r1!2370) lt!2614351 c!10362))))

(assert (=> b!7363455 (= lt!2614344 (Context!16365 (++!17058 (exprs!8682 cWitness!61) (exprs!8682 ct2!378))))))

(declare-fun lt!2614347 () Unit!165433)

(assert (=> b!7363455 (= lt!2614347 (lemmaConcatPreservesForall!1915 (exprs!8682 ct1!282) (exprs!8682 ct2!378) lambda!457536))))

(declare-fun lt!2614345 () Unit!165433)

(assert (=> b!7363455 (= lt!2614345 (lemmaConcatPreservesForall!1915 (exprs!8682 cWitness!61) (exprs!8682 ct2!378) lambda!457536))))

(declare-fun lt!2614346 () Unit!165433)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!117 (Regex!19242 Context!16364 Context!16364 Context!16364 C!38758) Unit!165433)

(assert (=> b!7363455 (= lt!2614346 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!117 (regOne!38997 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7363456 () Bool)

(declare-fun res!2972267 () Bool)

(assert (=> b!7363456 (=> (not res!2972267) (not e!4408585))))

(assert (=> b!7363456 (= res!2972267 (set.member cWitness!61 lt!2614349))))

(declare-fun b!7363457 () Bool)

(declare-fun tp_is_empty!48729 () Bool)

(assert (=> b!7363457 (= e!4408590 tp_is_empty!48729)))

(declare-fun res!2972263 () Bool)

(declare-fun e!4408586 () Bool)

(assert (=> start!718894 (=> (not res!2972263) (not e!4408586))))

(declare-fun validRegex!9838 (Regex!19242) Bool)

(assert (=> start!718894 (= res!2972263 (validRegex!9838 r1!2370))))

(assert (=> start!718894 e!4408586))

(assert (=> start!718894 tp_is_empty!48729))

(declare-fun inv!91446 (Context!16364) Bool)

(assert (=> start!718894 (and (inv!91446 cWitness!61) e!4408587)))

(assert (=> start!718894 (and (inv!91446 ct1!282) e!4408588)))

(assert (=> start!718894 e!4408590))

(assert (=> start!718894 (and (inv!91446 ct2!378) e!4408589)))

(declare-fun b!7363458 () Bool)

(assert (=> b!7363458 (= e!4408591 (inv!91446 lt!2614344))))

(declare-fun lt!2614348 () Unit!165433)

(assert (=> b!7363458 (= lt!2614348 (lemmaConcatPreservesForall!1915 (exprs!8682 ct1!282) (exprs!8682 ct2!378) lambda!457536))))

(declare-fun lt!2614340 () Unit!165433)

(assert (=> b!7363458 (= lt!2614340 (lemmaConcatPreservesForall!1915 (exprs!8682 cWitness!61) (exprs!8682 ct2!378) lambda!457536))))

(declare-fun b!7363459 () Bool)

(declare-fun tp!2092549 () Bool)

(assert (=> b!7363459 (= e!4408590 tp!2092549)))

(declare-fun b!7363460 () Bool)

(assert (=> b!7363460 (= e!4408586 e!4408592)))

(declare-fun res!2972266 () Bool)

(assert (=> b!7363460 (=> (not res!2972266) (not e!4408592))))

(assert (=> b!7363460 (= res!2972266 (set.member cWitness!61 lt!2614343))))

(assert (=> b!7363460 (= lt!2614343 (derivationStepZipperDown!3068 r1!2370 ct1!282 c!10362))))

(assert (= (and start!718894 res!2972263) b!7363460))

(assert (= (and b!7363460 res!2972266) b!7363453))

(assert (= (and b!7363453 res!2972264) b!7363454))

(assert (= (and b!7363454 res!2972265) b!7363456))

(assert (= (and b!7363456 res!2972267) b!7363455))

(assert (= (and b!7363455 (not res!2972268)) b!7363458))

(assert (= start!718894 b!7363448))

(assert (= start!718894 b!7363451))

(assert (= (and start!718894 (is-ElementMatch!19242 r1!2370)) b!7363457))

(assert (= (and start!718894 (is-Concat!28087 r1!2370)) b!7363449))

(assert (= (and start!718894 (is-Star!19242 r1!2370)) b!7363459))

(assert (= (and start!718894 (is-Union!19242 r1!2370)) b!7363452))

(assert (= start!718894 b!7363450))

(declare-fun m!8019990 () Bool)

(assert (=> b!7363460 m!8019990))

(declare-fun m!8019992 () Bool)

(assert (=> b!7363460 m!8019992))

(declare-fun m!8019994 () Bool)

(assert (=> start!718894 m!8019994))

(declare-fun m!8019996 () Bool)

(assert (=> start!718894 m!8019996))

(declare-fun m!8019998 () Bool)

(assert (=> start!718894 m!8019998))

(declare-fun m!8020000 () Bool)

(assert (=> start!718894 m!8020000))

(declare-fun m!8020002 () Bool)

(assert (=> b!7363455 m!8020002))

(declare-fun m!8020004 () Bool)

(assert (=> b!7363455 m!8020004))

(declare-fun m!8020006 () Bool)

(assert (=> b!7363455 m!8020006))

(declare-fun m!8020008 () Bool)

(assert (=> b!7363455 m!8020008))

(assert (=> b!7363455 m!8020002))

(declare-fun m!8020010 () Bool)

(assert (=> b!7363455 m!8020010))

(declare-fun m!8020012 () Bool)

(assert (=> b!7363455 m!8020012))

(declare-fun m!8020014 () Bool)

(assert (=> b!7363455 m!8020014))

(declare-fun m!8020016 () Bool)

(assert (=> b!7363454 m!8020016))

(declare-fun m!8020018 () Bool)

(assert (=> b!7363454 m!8020018))

(declare-fun m!8020020 () Bool)

(assert (=> b!7363456 m!8020020))

(declare-fun m!8020022 () Bool)

(assert (=> b!7363458 m!8020022))

(assert (=> b!7363458 m!8020004))

(assert (=> b!7363458 m!8020002))

(declare-fun m!8020024 () Bool)

(assert (=> b!7363453 m!8020024))

(declare-fun m!8020026 () Bool)

(assert (=> b!7363453 m!8020026))

(assert (=> b!7363453 m!8020004))

(push 1)

(assert (not b!7363449))

(assert (not b!7363448))

(assert (not b!7363453))

(assert (not b!7363454))

(assert (not b!7363455))

(assert (not b!7363452))

(assert (not start!718894))

(assert (not b!7363451))

(assert (not b!7363450))

(assert tp_is_empty!48729)

(assert (not b!7363460))

(assert (not b!7363458))

(assert (not b!7363459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7363522 () Bool)

(declare-fun e!4408634 () (Set Context!16364))

(assert (=> b!7363522 (= e!4408634 (set.insert ct1!282 (as set.empty (Set Context!16364))))))

(declare-fun bm!675165 () Bool)

(declare-fun call!675171 () (Set Context!16364))

(declare-fun call!675175 () (Set Context!16364))

(assert (=> bm!675165 (= call!675171 call!675175)))

(declare-fun b!7363523 () Bool)

(declare-fun e!4408637 () Bool)

(declare-fun nullable!8324 (Regex!19242) Bool)

(assert (=> b!7363523 (= e!4408637 (nullable!8324 (regOne!38996 r1!2370)))))

(declare-fun c!1368262 () Bool)

(declare-fun c!1368266 () Bool)

(declare-fun call!675174 () List!71738)

(declare-fun c!1368265 () Bool)

(declare-fun bm!675166 () Bool)

(assert (=> bm!675166 (= call!675175 (derivationStepZipperDown!3068 (ite c!1368265 (regOne!38997 r1!2370) (ite c!1368262 (regTwo!38996 r1!2370) (ite c!1368266 (regOne!38996 r1!2370) (reg!19571 r1!2370)))) (ite (or c!1368265 c!1368262) ct1!282 (Context!16365 call!675174)) c!10362))))

(declare-fun bm!675167 () Bool)

(declare-fun call!675170 () List!71738)

(assert (=> bm!675167 (= call!675174 call!675170)))

(declare-fun bm!675168 () Bool)

(declare-fun call!675173 () (Set Context!16364))

(assert (=> bm!675168 (= call!675173 (derivationStepZipperDown!3068 (ite c!1368265 (regTwo!38997 r1!2370) (regOne!38996 r1!2370)) (ite c!1368265 ct1!282 (Context!16365 call!675170)) c!10362))))

(declare-fun b!7363525 () Bool)

(declare-fun e!4408638 () (Set Context!16364))

(declare-fun e!4408635 () (Set Context!16364))

(assert (=> b!7363525 (= e!4408638 e!4408635)))

(assert (=> b!7363525 (= c!1368266 (is-Concat!28087 r1!2370))))

(declare-fun b!7363526 () Bool)

(assert (=> b!7363526 (= e!4408638 (set.union call!675173 call!675171))))

(declare-fun d!2282448 () Bool)

(declare-fun c!1368263 () Bool)

(assert (=> d!2282448 (= c!1368263 (and (is-ElementMatch!19242 r1!2370) (= (c!1368250 r1!2370) c!10362)))))

(assert (=> d!2282448 (= (derivationStepZipperDown!3068 r1!2370 ct1!282 c!10362) e!4408634)))

(declare-fun b!7363524 () Bool)

(declare-fun c!1368264 () Bool)

(assert (=> b!7363524 (= c!1368264 (is-Star!19242 r1!2370))))

(declare-fun e!4408633 () (Set Context!16364))

(assert (=> b!7363524 (= e!4408635 e!4408633)))

(declare-fun b!7363527 () Bool)

(declare-fun e!4408636 () (Set Context!16364))

(assert (=> b!7363527 (= e!4408636 (set.union call!675175 call!675173))))

(declare-fun bm!675169 () Bool)

(declare-fun $colon$colon!3230 (List!71738 Regex!19242) List!71738)

(assert (=> bm!675169 (= call!675170 ($colon$colon!3230 (exprs!8682 ct1!282) (ite (or c!1368262 c!1368266) (regTwo!38996 r1!2370) r1!2370)))))

(declare-fun b!7363528 () Bool)

(declare-fun call!675172 () (Set Context!16364))

(assert (=> b!7363528 (= e!4408633 call!675172)))

(declare-fun bm!675170 () Bool)

(assert (=> bm!675170 (= call!675172 call!675171)))

(declare-fun b!7363529 () Bool)

(assert (=> b!7363529 (= e!4408635 call!675172)))

(declare-fun b!7363530 () Bool)

(assert (=> b!7363530 (= e!4408634 e!4408636)))

(assert (=> b!7363530 (= c!1368265 (is-Union!19242 r1!2370))))

(declare-fun b!7363531 () Bool)

(assert (=> b!7363531 (= c!1368262 e!4408637)))

(declare-fun res!2972289 () Bool)

(assert (=> b!7363531 (=> (not res!2972289) (not e!4408637))))

(assert (=> b!7363531 (= res!2972289 (is-Concat!28087 r1!2370))))

(assert (=> b!7363531 (= e!4408636 e!4408638)))

(declare-fun b!7363532 () Bool)

(assert (=> b!7363532 (= e!4408633 (as set.empty (Set Context!16364)))))

(assert (= (and d!2282448 c!1368263) b!7363522))

(assert (= (and d!2282448 (not c!1368263)) b!7363530))

(assert (= (and b!7363530 c!1368265) b!7363527))

(assert (= (and b!7363530 (not c!1368265)) b!7363531))

(assert (= (and b!7363531 res!2972289) b!7363523))

(assert (= (and b!7363531 c!1368262) b!7363526))

(assert (= (and b!7363531 (not c!1368262)) b!7363525))

(assert (= (and b!7363525 c!1368266) b!7363529))

(assert (= (and b!7363525 (not c!1368266)) b!7363524))

(assert (= (and b!7363524 c!1368264) b!7363528))

(assert (= (and b!7363524 (not c!1368264)) b!7363532))

(assert (= (or b!7363529 b!7363528) bm!675167))

(assert (= (or b!7363529 b!7363528) bm!675170))

(assert (= (or b!7363526 bm!675170) bm!675165))

(assert (= (or b!7363526 bm!675167) bm!675169))

(assert (= (or b!7363527 b!7363526) bm!675168))

(assert (= (or b!7363527 bm!675165) bm!675166))

(declare-fun m!8020066 () Bool)

(assert (=> b!7363522 m!8020066))

(declare-fun m!8020068 () Bool)

(assert (=> bm!675169 m!8020068))

(declare-fun m!8020070 () Bool)

(assert (=> b!7363523 m!8020070))

(declare-fun m!8020072 () Bool)

(assert (=> bm!675168 m!8020072))

(declare-fun m!8020074 () Bool)

(assert (=> bm!675166 m!8020074))

(assert (=> b!7363460 d!2282448))

(declare-fun d!2282452 () Bool)

(declare-fun forall!18054 (List!71738 Int) Bool)

(assert (=> d!2282452 (forall!18054 (++!17058 (exprs!8682 cWitness!61) (exprs!8682 ct2!378)) lambda!457536)))

(declare-fun lt!2614390 () Unit!165433)

(declare-fun choose!57265 (List!71738 List!71738 Int) Unit!165433)

(assert (=> d!2282452 (= lt!2614390 (choose!57265 (exprs!8682 cWitness!61) (exprs!8682 ct2!378) lambda!457536))))

(assert (=> d!2282452 (forall!18054 (exprs!8682 cWitness!61) lambda!457536)))

(assert (=> d!2282452 (= (lemmaConcatPreservesForall!1915 (exprs!8682 cWitness!61) (exprs!8682 ct2!378) lambda!457536) lt!2614390)))

(declare-fun bs!1920330 () Bool)

(assert (= bs!1920330 d!2282452))

(assert (=> bs!1920330 m!8020006))

(assert (=> bs!1920330 m!8020006))

(declare-fun m!8020076 () Bool)

(assert (=> bs!1920330 m!8020076))

(declare-fun m!8020078 () Bool)

(assert (=> bs!1920330 m!8020078))

(declare-fun m!8020080 () Bool)

(assert (=> bs!1920330 m!8020080))

(assert (=> b!7363455 d!2282452))

(declare-fun d!2282454 () Bool)

(assert (=> d!2282454 (forall!18054 (++!17058 (exprs!8682 ct1!282) (exprs!8682 ct2!378)) lambda!457536)))

(declare-fun lt!2614395 () Unit!165433)

(assert (=> d!2282454 (= lt!2614395 (choose!57265 (exprs!8682 ct1!282) (exprs!8682 ct2!378) lambda!457536))))

(assert (=> d!2282454 (forall!18054 (exprs!8682 ct1!282) lambda!457536)))

(assert (=> d!2282454 (= (lemmaConcatPreservesForall!1915 (exprs!8682 ct1!282) (exprs!8682 ct2!378) lambda!457536) lt!2614395)))

(declare-fun bs!1920331 () Bool)

(assert (= bs!1920331 d!2282454))

(assert (=> bs!1920331 m!8020026))

(assert (=> bs!1920331 m!8020026))

(declare-fun m!8020082 () Bool)

(assert (=> bs!1920331 m!8020082))

(declare-fun m!8020084 () Bool)

(assert (=> bs!1920331 m!8020084))

(declare-fun m!8020086 () Bool)

(assert (=> bs!1920331 m!8020086))

(assert (=> b!7363455 d!2282454))

(declare-fun d!2282456 () Bool)

(declare-fun e!4408644 () Bool)

(assert (=> d!2282456 e!4408644))

(declare-fun res!2972294 () Bool)

(assert (=> d!2282456 (=> (not res!2972294) (not e!4408644))))

(declare-fun lt!2614400 () List!71738)

(declare-fun content!15130 (List!71738) (Set Regex!19242))

(assert (=> d!2282456 (= res!2972294 (= (content!15130 lt!2614400) (set.union (content!15130 (exprs!8682 cWitness!61)) (content!15130 (exprs!8682 ct2!378)))))))

(declare-fun e!4408643 () List!71738)

(assert (=> d!2282456 (= lt!2614400 e!4408643)))

(declare-fun c!1368270 () Bool)

(assert (=> d!2282456 (= c!1368270 (is-Nil!71614 (exprs!8682 cWitness!61)))))

(assert (=> d!2282456 (= (++!17058 (exprs!8682 cWitness!61) (exprs!8682 ct2!378)) lt!2614400)))

(declare-fun b!7363544 () Bool)

(assert (=> b!7363544 (= e!4408644 (or (not (= (exprs!8682 ct2!378) Nil!71614)) (= lt!2614400 (exprs!8682 cWitness!61))))))

(declare-fun b!7363541 () Bool)

(assert (=> b!7363541 (= e!4408643 (exprs!8682 ct2!378))))

(declare-fun b!7363543 () Bool)

(declare-fun res!2972295 () Bool)

(assert (=> b!7363543 (=> (not res!2972295) (not e!4408644))))

(declare-fun size!42108 (List!71738) Int)

(assert (=> b!7363543 (= res!2972295 (= (size!42108 lt!2614400) (+ (size!42108 (exprs!8682 cWitness!61)) (size!42108 (exprs!8682 ct2!378)))))))

(declare-fun b!7363542 () Bool)

(assert (=> b!7363542 (= e!4408643 (Cons!71614 (h!78062 (exprs!8682 cWitness!61)) (++!17058 (t!386187 (exprs!8682 cWitness!61)) (exprs!8682 ct2!378))))))

(assert (= (and d!2282456 c!1368270) b!7363541))

(assert (= (and d!2282456 (not c!1368270)) b!7363542))

(assert (= (and d!2282456 res!2972294) b!7363543))

(assert (= (and b!7363543 res!2972295) b!7363544))

(declare-fun m!8020088 () Bool)

(assert (=> d!2282456 m!8020088))

(declare-fun m!8020090 () Bool)

(assert (=> d!2282456 m!8020090))

(declare-fun m!8020092 () Bool)

(assert (=> d!2282456 m!8020092))

(declare-fun m!8020094 () Bool)

(assert (=> b!7363543 m!8020094))

(declare-fun m!8020096 () Bool)

(assert (=> b!7363543 m!8020096))

(declare-fun m!8020098 () Bool)

(assert (=> b!7363543 m!8020098))

(declare-fun m!8020100 () Bool)

(assert (=> b!7363542 m!8020100))

(assert (=> b!7363455 d!2282456))

(declare-fun bs!1920334 () Bool)

(declare-fun d!2282458 () Bool)

(assert (= bs!1920334 (and d!2282458 b!7363453)))

(declare-fun lambda!457559 () Int)

(assert (=> bs!1920334 (= lambda!457559 lambda!457536)))

(assert (=> d!2282458 (set.member (Context!16365 (++!17058 (exprs!8682 cWitness!61) (exprs!8682 ct2!378))) (derivationStepZipperDown!3068 (regOne!38997 r1!2370) (Context!16365 (++!17058 (exprs!8682 ct1!282) (exprs!8682 ct2!378))) c!10362))))

(declare-fun lt!2614414 () Unit!165433)

(assert (=> d!2282458 (= lt!2614414 (lemmaConcatPreservesForall!1915 (exprs!8682 ct1!282) (exprs!8682 ct2!378) lambda!457559))))

(declare-fun lt!2614413 () Unit!165433)

(assert (=> d!2282458 (= lt!2614413 (lemmaConcatPreservesForall!1915 (exprs!8682 cWitness!61) (exprs!8682 ct2!378) lambda!457559))))

(declare-fun lt!2614412 () Unit!165433)

(declare-fun choose!57266 (Regex!19242 Context!16364 Context!16364 Context!16364 C!38758) Unit!165433)

(assert (=> d!2282458 (= lt!2614412 (choose!57266 (regOne!38997 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2282458 (validRegex!9838 (regOne!38997 r1!2370))))

(assert (=> d!2282458 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!117 (regOne!38997 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2614412)))

(declare-fun bs!1920335 () Bool)

(assert (= bs!1920335 d!2282458))

(declare-fun m!8020114 () Bool)

(assert (=> bs!1920335 m!8020114))

(declare-fun m!8020116 () Bool)

(assert (=> bs!1920335 m!8020116))

(assert (=> bs!1920335 m!8020026))

(declare-fun m!8020118 () Bool)

(assert (=> bs!1920335 m!8020118))

(declare-fun m!8020120 () Bool)

(assert (=> bs!1920335 m!8020120))

(assert (=> bs!1920335 m!8020006))

(declare-fun m!8020122 () Bool)

(assert (=> bs!1920335 m!8020122))

(declare-fun m!8020124 () Bool)

(assert (=> bs!1920335 m!8020124))

(assert (=> b!7363455 d!2282458))

(declare-fun b!7363545 () Bool)

(declare-fun e!4408646 () (Set Context!16364))

(assert (=> b!7363545 (= e!4408646 (set.insert lt!2614351 (as set.empty (Set Context!16364))))))

(declare-fun bm!675171 () Bool)

(declare-fun call!675177 () (Set Context!16364))

(declare-fun call!675181 () (Set Context!16364))

(assert (=> bm!675171 (= call!675177 call!675181)))

(declare-fun b!7363546 () Bool)

(declare-fun e!4408649 () Bool)

(assert (=> b!7363546 (= e!4408649 (nullable!8324 (regOne!38996 (regOne!38997 r1!2370))))))

(declare-fun call!675180 () List!71738)

(declare-fun bm!675172 () Bool)

(declare-fun c!1368275 () Bool)

(declare-fun c!1368272 () Bool)

(declare-fun c!1368276 () Bool)

(assert (=> bm!675172 (= call!675181 (derivationStepZipperDown!3068 (ite c!1368275 (regOne!38997 (regOne!38997 r1!2370)) (ite c!1368272 (regTwo!38996 (regOne!38997 r1!2370)) (ite c!1368276 (regOne!38996 (regOne!38997 r1!2370)) (reg!19571 (regOne!38997 r1!2370))))) (ite (or c!1368275 c!1368272) lt!2614351 (Context!16365 call!675180)) c!10362))))

(declare-fun bm!675173 () Bool)

(declare-fun call!675176 () List!71738)

(assert (=> bm!675173 (= call!675180 call!675176)))

(declare-fun bm!675174 () Bool)

(declare-fun call!675179 () (Set Context!16364))

(assert (=> bm!675174 (= call!675179 (derivationStepZipperDown!3068 (ite c!1368275 (regTwo!38997 (regOne!38997 r1!2370)) (regOne!38996 (regOne!38997 r1!2370))) (ite c!1368275 lt!2614351 (Context!16365 call!675176)) c!10362))))

(declare-fun b!7363548 () Bool)

(declare-fun e!4408650 () (Set Context!16364))

(declare-fun e!4408647 () (Set Context!16364))

(assert (=> b!7363548 (= e!4408650 e!4408647)))

(assert (=> b!7363548 (= c!1368276 (is-Concat!28087 (regOne!38997 r1!2370)))))

(declare-fun b!7363549 () Bool)

(assert (=> b!7363549 (= e!4408650 (set.union call!675179 call!675177))))

(declare-fun d!2282462 () Bool)

(declare-fun c!1368273 () Bool)

(assert (=> d!2282462 (= c!1368273 (and (is-ElementMatch!19242 (regOne!38997 r1!2370)) (= (c!1368250 (regOne!38997 r1!2370)) c!10362)))))

(assert (=> d!2282462 (= (derivationStepZipperDown!3068 (regOne!38997 r1!2370) lt!2614351 c!10362) e!4408646)))

(declare-fun b!7363547 () Bool)

(declare-fun c!1368274 () Bool)

(assert (=> b!7363547 (= c!1368274 (is-Star!19242 (regOne!38997 r1!2370)))))

(declare-fun e!4408645 () (Set Context!16364))

(assert (=> b!7363547 (= e!4408647 e!4408645)))

(declare-fun b!7363550 () Bool)

(declare-fun e!4408648 () (Set Context!16364))

(assert (=> b!7363550 (= e!4408648 (set.union call!675181 call!675179))))

(declare-fun bm!675175 () Bool)

(assert (=> bm!675175 (= call!675176 ($colon$colon!3230 (exprs!8682 lt!2614351) (ite (or c!1368272 c!1368276) (regTwo!38996 (regOne!38997 r1!2370)) (regOne!38997 r1!2370))))))

(declare-fun b!7363551 () Bool)

(declare-fun call!675178 () (Set Context!16364))

(assert (=> b!7363551 (= e!4408645 call!675178)))

(declare-fun bm!675176 () Bool)

(assert (=> bm!675176 (= call!675178 call!675177)))

(declare-fun b!7363552 () Bool)

(assert (=> b!7363552 (= e!4408647 call!675178)))

(declare-fun b!7363553 () Bool)

(assert (=> b!7363553 (= e!4408646 e!4408648)))

(assert (=> b!7363553 (= c!1368275 (is-Union!19242 (regOne!38997 r1!2370)))))

(declare-fun b!7363554 () Bool)

(assert (=> b!7363554 (= c!1368272 e!4408649)))

(declare-fun res!2972296 () Bool)

(assert (=> b!7363554 (=> (not res!2972296) (not e!4408649))))

(assert (=> b!7363554 (= res!2972296 (is-Concat!28087 (regOne!38997 r1!2370)))))

(assert (=> b!7363554 (= e!4408648 e!4408650)))

(declare-fun b!7363555 () Bool)

(assert (=> b!7363555 (= e!4408645 (as set.empty (Set Context!16364)))))

(assert (= (and d!2282462 c!1368273) b!7363545))

(assert (= (and d!2282462 (not c!1368273)) b!7363553))

(assert (= (and b!7363553 c!1368275) b!7363550))

(assert (= (and b!7363553 (not c!1368275)) b!7363554))

(assert (= (and b!7363554 res!2972296) b!7363546))

(assert (= (and b!7363554 c!1368272) b!7363549))

(assert (= (and b!7363554 (not c!1368272)) b!7363548))

(assert (= (and b!7363548 c!1368276) b!7363552))

(assert (= (and b!7363548 (not c!1368276)) b!7363547))

(assert (= (and b!7363547 c!1368274) b!7363551))

(assert (= (and b!7363547 (not c!1368274)) b!7363555))

(assert (= (or b!7363552 b!7363551) bm!675173))

(assert (= (or b!7363552 b!7363551) bm!675176))

(assert (= (or b!7363549 bm!675176) bm!675171))

(assert (= (or b!7363549 bm!675173) bm!675175))

(assert (= (or b!7363550 b!7363549) bm!675174))

(assert (= (or b!7363550 bm!675171) bm!675172))

(declare-fun m!8020132 () Bool)

(assert (=> b!7363545 m!8020132))

(declare-fun m!8020134 () Bool)

(assert (=> bm!675175 m!8020134))

(declare-fun m!8020136 () Bool)

(assert (=> b!7363546 m!8020136))

(declare-fun m!8020138 () Bool)

(assert (=> bm!675174 m!8020138))

(declare-fun m!8020140 () Bool)

(assert (=> bm!675172 m!8020140))

(assert (=> b!7363455 d!2282462))

(declare-fun b!7363556 () Bool)

(declare-fun e!4408652 () (Set Context!16364))

(assert (=> b!7363556 (= e!4408652 (set.insert ct1!282 (as set.empty (Set Context!16364))))))

(declare-fun bm!675177 () Bool)

(declare-fun call!675183 () (Set Context!16364))

(declare-fun call!675187 () (Set Context!16364))

(assert (=> bm!675177 (= call!675183 call!675187)))

(declare-fun b!7363557 () Bool)

(declare-fun e!4408655 () Bool)

(assert (=> b!7363557 (= e!4408655 (nullable!8324 (regOne!38996 (regTwo!38997 r1!2370))))))

(declare-fun c!1368277 () Bool)

(declare-fun call!675186 () List!71738)

(declare-fun c!1368281 () Bool)

(declare-fun c!1368280 () Bool)

(declare-fun bm!675178 () Bool)

(assert (=> bm!675178 (= call!675187 (derivationStepZipperDown!3068 (ite c!1368280 (regOne!38997 (regTwo!38997 r1!2370)) (ite c!1368277 (regTwo!38996 (regTwo!38997 r1!2370)) (ite c!1368281 (regOne!38996 (regTwo!38997 r1!2370)) (reg!19571 (regTwo!38997 r1!2370))))) (ite (or c!1368280 c!1368277) ct1!282 (Context!16365 call!675186)) c!10362))))

(declare-fun bm!675179 () Bool)

(declare-fun call!675182 () List!71738)

(assert (=> bm!675179 (= call!675186 call!675182)))

(declare-fun bm!675180 () Bool)

(declare-fun call!675185 () (Set Context!16364))

(assert (=> bm!675180 (= call!675185 (derivationStepZipperDown!3068 (ite c!1368280 (regTwo!38997 (regTwo!38997 r1!2370)) (regOne!38996 (regTwo!38997 r1!2370))) (ite c!1368280 ct1!282 (Context!16365 call!675182)) c!10362))))

(declare-fun b!7363559 () Bool)

(declare-fun e!4408656 () (Set Context!16364))

(declare-fun e!4408653 () (Set Context!16364))

(assert (=> b!7363559 (= e!4408656 e!4408653)))

(assert (=> b!7363559 (= c!1368281 (is-Concat!28087 (regTwo!38997 r1!2370)))))

(declare-fun b!7363560 () Bool)

(assert (=> b!7363560 (= e!4408656 (set.union call!675185 call!675183))))

(declare-fun d!2282466 () Bool)

(declare-fun c!1368278 () Bool)

(assert (=> d!2282466 (= c!1368278 (and (is-ElementMatch!19242 (regTwo!38997 r1!2370)) (= (c!1368250 (regTwo!38997 r1!2370)) c!10362)))))

(assert (=> d!2282466 (= (derivationStepZipperDown!3068 (regTwo!38997 r1!2370) ct1!282 c!10362) e!4408652)))

(declare-fun b!7363558 () Bool)

(declare-fun c!1368279 () Bool)

(assert (=> b!7363558 (= c!1368279 (is-Star!19242 (regTwo!38997 r1!2370)))))

(declare-fun e!4408651 () (Set Context!16364))

(assert (=> b!7363558 (= e!4408653 e!4408651)))

(declare-fun b!7363561 () Bool)

(declare-fun e!4408654 () (Set Context!16364))

(assert (=> b!7363561 (= e!4408654 (set.union call!675187 call!675185))))

(declare-fun bm!675181 () Bool)

(assert (=> bm!675181 (= call!675182 ($colon$colon!3230 (exprs!8682 ct1!282) (ite (or c!1368277 c!1368281) (regTwo!38996 (regTwo!38997 r1!2370)) (regTwo!38997 r1!2370))))))

(declare-fun b!7363562 () Bool)

(declare-fun call!675184 () (Set Context!16364))

(assert (=> b!7363562 (= e!4408651 call!675184)))

(declare-fun bm!675182 () Bool)

(assert (=> bm!675182 (= call!675184 call!675183)))

(declare-fun b!7363563 () Bool)

(assert (=> b!7363563 (= e!4408653 call!675184)))

(declare-fun b!7363564 () Bool)

(assert (=> b!7363564 (= e!4408652 e!4408654)))

(assert (=> b!7363564 (= c!1368280 (is-Union!19242 (regTwo!38997 r1!2370)))))

(declare-fun b!7363565 () Bool)

(assert (=> b!7363565 (= c!1368277 e!4408655)))

(declare-fun res!2972297 () Bool)

(assert (=> b!7363565 (=> (not res!2972297) (not e!4408655))))

(assert (=> b!7363565 (= res!2972297 (is-Concat!28087 (regTwo!38997 r1!2370)))))

(assert (=> b!7363565 (= e!4408654 e!4408656)))

(declare-fun b!7363566 () Bool)

(assert (=> b!7363566 (= e!4408651 (as set.empty (Set Context!16364)))))

(assert (= (and d!2282466 c!1368278) b!7363556))

(assert (= (and d!2282466 (not c!1368278)) b!7363564))

(assert (= (and b!7363564 c!1368280) b!7363561))

(assert (= (and b!7363564 (not c!1368280)) b!7363565))

(assert (= (and b!7363565 res!2972297) b!7363557))

(assert (= (and b!7363565 c!1368277) b!7363560))

(assert (= (and b!7363565 (not c!1368277)) b!7363559))

(assert (= (and b!7363559 c!1368281) b!7363563))

(assert (= (and b!7363559 (not c!1368281)) b!7363558))

(assert (= (and b!7363558 c!1368279) b!7363562))

(assert (= (and b!7363558 (not c!1368279)) b!7363566))

(assert (= (or b!7363563 b!7363562) bm!675179))

(assert (= (or b!7363563 b!7363562) bm!675182))

(assert (= (or b!7363560 bm!675182) bm!675177))

(assert (= (or b!7363560 bm!675179) bm!675181))

(assert (= (or b!7363561 b!7363560) bm!675180))

(assert (= (or b!7363561 bm!675177) bm!675178))

(assert (=> b!7363556 m!8020066))

(declare-fun m!8020142 () Bool)

(assert (=> bm!675181 m!8020142))

(declare-fun m!8020144 () Bool)

(assert (=> b!7363557 m!8020144))

(declare-fun m!8020146 () Bool)

(assert (=> bm!675180 m!8020146))

(declare-fun m!8020148 () Bool)

(assert (=> bm!675178 m!8020148))

(assert (=> b!7363454 d!2282466))

(declare-fun b!7363567 () Bool)

(declare-fun e!4408658 () (Set Context!16364))

(assert (=> b!7363567 (= e!4408658 (set.insert ct1!282 (as set.empty (Set Context!16364))))))

(declare-fun bm!675183 () Bool)

(declare-fun call!675189 () (Set Context!16364))

(declare-fun call!675193 () (Set Context!16364))

(assert (=> bm!675183 (= call!675189 call!675193)))

(declare-fun b!7363568 () Bool)

(declare-fun e!4408661 () Bool)

(assert (=> b!7363568 (= e!4408661 (nullable!8324 (regOne!38996 (regOne!38997 r1!2370))))))

(declare-fun c!1368282 () Bool)

(declare-fun call!675192 () List!71738)

(declare-fun c!1368286 () Bool)

(declare-fun bm!675184 () Bool)

(declare-fun c!1368285 () Bool)

(assert (=> bm!675184 (= call!675193 (derivationStepZipperDown!3068 (ite c!1368285 (regOne!38997 (regOne!38997 r1!2370)) (ite c!1368282 (regTwo!38996 (regOne!38997 r1!2370)) (ite c!1368286 (regOne!38996 (regOne!38997 r1!2370)) (reg!19571 (regOne!38997 r1!2370))))) (ite (or c!1368285 c!1368282) ct1!282 (Context!16365 call!675192)) c!10362))))

(declare-fun bm!675185 () Bool)

(declare-fun call!675188 () List!71738)

(assert (=> bm!675185 (= call!675192 call!675188)))

(declare-fun bm!675186 () Bool)

(declare-fun call!675191 () (Set Context!16364))

(assert (=> bm!675186 (= call!675191 (derivationStepZipperDown!3068 (ite c!1368285 (regTwo!38997 (regOne!38997 r1!2370)) (regOne!38996 (regOne!38997 r1!2370))) (ite c!1368285 ct1!282 (Context!16365 call!675188)) c!10362))))

(declare-fun b!7363570 () Bool)

(declare-fun e!4408662 () (Set Context!16364))

(declare-fun e!4408659 () (Set Context!16364))

(assert (=> b!7363570 (= e!4408662 e!4408659)))

(assert (=> b!7363570 (= c!1368286 (is-Concat!28087 (regOne!38997 r1!2370)))))

(declare-fun b!7363571 () Bool)

(assert (=> b!7363571 (= e!4408662 (set.union call!675191 call!675189))))

(declare-fun d!2282468 () Bool)

(declare-fun c!1368283 () Bool)

(assert (=> d!2282468 (= c!1368283 (and (is-ElementMatch!19242 (regOne!38997 r1!2370)) (= (c!1368250 (regOne!38997 r1!2370)) c!10362)))))

(assert (=> d!2282468 (= (derivationStepZipperDown!3068 (regOne!38997 r1!2370) ct1!282 c!10362) e!4408658)))

(declare-fun b!7363569 () Bool)

(declare-fun c!1368284 () Bool)

(assert (=> b!7363569 (= c!1368284 (is-Star!19242 (regOne!38997 r1!2370)))))

(declare-fun e!4408657 () (Set Context!16364))

(assert (=> b!7363569 (= e!4408659 e!4408657)))

(declare-fun b!7363572 () Bool)

(declare-fun e!4408660 () (Set Context!16364))

(assert (=> b!7363572 (= e!4408660 (set.union call!675193 call!675191))))

(declare-fun bm!675187 () Bool)

(assert (=> bm!675187 (= call!675188 ($colon$colon!3230 (exprs!8682 ct1!282) (ite (or c!1368282 c!1368286) (regTwo!38996 (regOne!38997 r1!2370)) (regOne!38997 r1!2370))))))

(declare-fun b!7363573 () Bool)

(declare-fun call!675190 () (Set Context!16364))

(assert (=> b!7363573 (= e!4408657 call!675190)))

(declare-fun bm!675188 () Bool)

(assert (=> bm!675188 (= call!675190 call!675189)))

(declare-fun b!7363574 () Bool)

(assert (=> b!7363574 (= e!4408659 call!675190)))

(declare-fun b!7363575 () Bool)

(assert (=> b!7363575 (= e!4408658 e!4408660)))

(assert (=> b!7363575 (= c!1368285 (is-Union!19242 (regOne!38997 r1!2370)))))

(declare-fun b!7363576 () Bool)

(assert (=> b!7363576 (= c!1368282 e!4408661)))

(declare-fun res!2972298 () Bool)

(assert (=> b!7363576 (=> (not res!2972298) (not e!4408661))))

(assert (=> b!7363576 (= res!2972298 (is-Concat!28087 (regOne!38997 r1!2370)))))

(assert (=> b!7363576 (= e!4408660 e!4408662)))

(declare-fun b!7363577 () Bool)

(assert (=> b!7363577 (= e!4408657 (as set.empty (Set Context!16364)))))

(assert (= (and d!2282468 c!1368283) b!7363567))

(assert (= (and d!2282468 (not c!1368283)) b!7363575))

(assert (= (and b!7363575 c!1368285) b!7363572))

(assert (= (and b!7363575 (not c!1368285)) b!7363576))

(assert (= (and b!7363576 res!2972298) b!7363568))

(assert (= (and b!7363576 c!1368282) b!7363571))

(assert (= (and b!7363576 (not c!1368282)) b!7363570))

(assert (= (and b!7363570 c!1368286) b!7363574))

(assert (= (and b!7363570 (not c!1368286)) b!7363569))

(assert (= (and b!7363569 c!1368284) b!7363573))

(assert (= (and b!7363569 (not c!1368284)) b!7363577))

(assert (= (or b!7363574 b!7363573) bm!675185))

(assert (= (or b!7363574 b!7363573) bm!675188))

(assert (= (or b!7363571 bm!675188) bm!675183))

(assert (= (or b!7363571 bm!675185) bm!675187))

(assert (= (or b!7363572 b!7363571) bm!675186))

(assert (= (or b!7363572 bm!675183) bm!675184))

(assert (=> b!7363567 m!8020066))

(declare-fun m!8020150 () Bool)

(assert (=> bm!675187 m!8020150))

(assert (=> b!7363568 m!8020136))

(declare-fun m!8020152 () Bool)

(assert (=> bm!675186 m!8020152))

(declare-fun m!8020154 () Bool)

(assert (=> bm!675184 m!8020154))

(assert (=> b!7363454 d!2282468))

(declare-fun bs!1920337 () Bool)

(declare-fun d!2282470 () Bool)

(assert (= bs!1920337 (and d!2282470 b!7363453)))

(declare-fun lambda!457562 () Int)

(assert (=> bs!1920337 (= lambda!457562 lambda!457536)))

(declare-fun bs!1920338 () Bool)

(assert (= bs!1920338 (and d!2282470 d!2282458)))

(assert (=> bs!1920338 (= lambda!457562 lambda!457559)))

(assert (=> d!2282470 (= (inv!91446 lt!2614344) (forall!18054 (exprs!8682 lt!2614344) lambda!457562))))

(declare-fun bs!1920339 () Bool)

(assert (= bs!1920339 d!2282470))

(declare-fun m!8020156 () Bool)

(assert (=> bs!1920339 m!8020156))

(assert (=> b!7363458 d!2282470))

(assert (=> b!7363458 d!2282454))

(assert (=> b!7363458 d!2282452))

(declare-fun b!7363578 () Bool)

(declare-fun e!4408664 () (Set Context!16364))

(assert (=> b!7363578 (= e!4408664 (set.insert lt!2614351 (as set.empty (Set Context!16364))))))

(declare-fun bm!675189 () Bool)

(declare-fun call!675195 () (Set Context!16364))

(declare-fun call!675199 () (Set Context!16364))

(assert (=> bm!675189 (= call!675195 call!675199)))

(declare-fun b!7363579 () Bool)

(declare-fun e!4408667 () Bool)

(assert (=> b!7363579 (= e!4408667 (nullable!8324 (regOne!38996 r1!2370)))))

(declare-fun bm!675190 () Bool)

(declare-fun c!1368291 () Bool)

(declare-fun c!1368287 () Bool)

(declare-fun c!1368290 () Bool)

(declare-fun call!675198 () List!71738)

(assert (=> bm!675190 (= call!675199 (derivationStepZipperDown!3068 (ite c!1368290 (regOne!38997 r1!2370) (ite c!1368287 (regTwo!38996 r1!2370) (ite c!1368291 (regOne!38996 r1!2370) (reg!19571 r1!2370)))) (ite (or c!1368290 c!1368287) lt!2614351 (Context!16365 call!675198)) c!10362))))

(declare-fun bm!675191 () Bool)

(declare-fun call!675194 () List!71738)

(assert (=> bm!675191 (= call!675198 call!675194)))

(declare-fun bm!675192 () Bool)

(declare-fun call!675197 () (Set Context!16364))

(assert (=> bm!675192 (= call!675197 (derivationStepZipperDown!3068 (ite c!1368290 (regTwo!38997 r1!2370) (regOne!38996 r1!2370)) (ite c!1368290 lt!2614351 (Context!16365 call!675194)) c!10362))))

(declare-fun b!7363581 () Bool)

(declare-fun e!4408668 () (Set Context!16364))

(declare-fun e!4408665 () (Set Context!16364))

(assert (=> b!7363581 (= e!4408668 e!4408665)))

(assert (=> b!7363581 (= c!1368291 (is-Concat!28087 r1!2370))))

(declare-fun b!7363582 () Bool)

(assert (=> b!7363582 (= e!4408668 (set.union call!675197 call!675195))))

(declare-fun d!2282472 () Bool)

(declare-fun c!1368288 () Bool)

(assert (=> d!2282472 (= c!1368288 (and (is-ElementMatch!19242 r1!2370) (= (c!1368250 r1!2370) c!10362)))))

(assert (=> d!2282472 (= (derivationStepZipperDown!3068 r1!2370 lt!2614351 c!10362) e!4408664)))

(declare-fun b!7363580 () Bool)

(declare-fun c!1368289 () Bool)

(assert (=> b!7363580 (= c!1368289 (is-Star!19242 r1!2370))))

(declare-fun e!4408663 () (Set Context!16364))

(assert (=> b!7363580 (= e!4408665 e!4408663)))

(declare-fun b!7363583 () Bool)

(declare-fun e!4408666 () (Set Context!16364))

(assert (=> b!7363583 (= e!4408666 (set.union call!675199 call!675197))))

(declare-fun bm!675193 () Bool)

(assert (=> bm!675193 (= call!675194 ($colon$colon!3230 (exprs!8682 lt!2614351) (ite (or c!1368287 c!1368291) (regTwo!38996 r1!2370) r1!2370)))))

(declare-fun b!7363584 () Bool)

(declare-fun call!675196 () (Set Context!16364))

(assert (=> b!7363584 (= e!4408663 call!675196)))

(declare-fun bm!675194 () Bool)

(assert (=> bm!675194 (= call!675196 call!675195)))

(declare-fun b!7363585 () Bool)

(assert (=> b!7363585 (= e!4408665 call!675196)))

(declare-fun b!7363586 () Bool)

(assert (=> b!7363586 (= e!4408664 e!4408666)))

(assert (=> b!7363586 (= c!1368290 (is-Union!19242 r1!2370))))

(declare-fun b!7363587 () Bool)

(assert (=> b!7363587 (= c!1368287 e!4408667)))

(declare-fun res!2972299 () Bool)

(assert (=> b!7363587 (=> (not res!2972299) (not e!4408667))))

(assert (=> b!7363587 (= res!2972299 (is-Concat!28087 r1!2370))))

(assert (=> b!7363587 (= e!4408666 e!4408668)))

(declare-fun b!7363588 () Bool)

(assert (=> b!7363588 (= e!4408663 (as set.empty (Set Context!16364)))))

(assert (= (and d!2282472 c!1368288) b!7363578))

(assert (= (and d!2282472 (not c!1368288)) b!7363586))

(assert (= (and b!7363586 c!1368290) b!7363583))

(assert (= (and b!7363586 (not c!1368290)) b!7363587))

(assert (= (and b!7363587 res!2972299) b!7363579))

(assert (= (and b!7363587 c!1368287) b!7363582))

(assert (= (and b!7363587 (not c!1368287)) b!7363581))

(assert (= (and b!7363581 c!1368291) b!7363585))

(assert (= (and b!7363581 (not c!1368291)) b!7363580))

(assert (= (and b!7363580 c!1368289) b!7363584))

(assert (= (and b!7363580 (not c!1368289)) b!7363588))

(assert (= (or b!7363585 b!7363584) bm!675191))

(assert (= (or b!7363585 b!7363584) bm!675194))

(assert (= (or b!7363582 bm!675194) bm!675189))

(assert (= (or b!7363582 bm!675191) bm!675193))

(assert (= (or b!7363583 b!7363582) bm!675192))

(assert (= (or b!7363583 bm!675189) bm!675190))

(assert (=> b!7363578 m!8020132))

(declare-fun m!8020158 () Bool)

(assert (=> bm!675193 m!8020158))

(assert (=> b!7363579 m!8020070))

(declare-fun m!8020160 () Bool)

(assert (=> bm!675192 m!8020160))

(declare-fun m!8020162 () Bool)

(assert (=> bm!675190 m!8020162))

(assert (=> b!7363453 d!2282472))

(declare-fun d!2282474 () Bool)

(declare-fun e!4408670 () Bool)

(assert (=> d!2282474 e!4408670))

(declare-fun res!2972300 () Bool)

(assert (=> d!2282474 (=> (not res!2972300) (not e!4408670))))

(declare-fun lt!2614418 () List!71738)

(assert (=> d!2282474 (= res!2972300 (= (content!15130 lt!2614418) (set.union (content!15130 (exprs!8682 ct1!282)) (content!15130 (exprs!8682 ct2!378)))))))

(declare-fun e!4408669 () List!71738)

(assert (=> d!2282474 (= lt!2614418 e!4408669)))

(declare-fun c!1368292 () Bool)

(assert (=> d!2282474 (= c!1368292 (is-Nil!71614 (exprs!8682 ct1!282)))))

(assert (=> d!2282474 (= (++!17058 (exprs!8682 ct1!282) (exprs!8682 ct2!378)) lt!2614418)))

(declare-fun b!7363594 () Bool)

(assert (=> b!7363594 (= e!4408670 (or (not (= (exprs!8682 ct2!378) Nil!71614)) (= lt!2614418 (exprs!8682 ct1!282))))))

(declare-fun b!7363591 () Bool)

(assert (=> b!7363591 (= e!4408669 (exprs!8682 ct2!378))))

(declare-fun b!7363593 () Bool)

(declare-fun res!2972301 () Bool)

(assert (=> b!7363593 (=> (not res!2972301) (not e!4408670))))

(assert (=> b!7363593 (= res!2972301 (= (size!42108 lt!2614418) (+ (size!42108 (exprs!8682 ct1!282)) (size!42108 (exprs!8682 ct2!378)))))))

(declare-fun b!7363592 () Bool)

(assert (=> b!7363592 (= e!4408669 (Cons!71614 (h!78062 (exprs!8682 ct1!282)) (++!17058 (t!386187 (exprs!8682 ct1!282)) (exprs!8682 ct2!378))))))

(assert (= (and d!2282474 c!1368292) b!7363591))

(assert (= (and d!2282474 (not c!1368292)) b!7363592))

(assert (= (and d!2282474 res!2972300) b!7363593))

(assert (= (and b!7363593 res!2972301) b!7363594))

(declare-fun m!8020164 () Bool)

(assert (=> d!2282474 m!8020164))

(declare-fun m!8020166 () Bool)

(assert (=> d!2282474 m!8020166))

(assert (=> d!2282474 m!8020092))

(declare-fun m!8020168 () Bool)

(assert (=> b!7363593 m!8020168))

(declare-fun m!8020170 () Bool)

(assert (=> b!7363593 m!8020170))

(assert (=> b!7363593 m!8020098))

(declare-fun m!8020172 () Bool)

(assert (=> b!7363592 m!8020172))

(assert (=> b!7363453 d!2282474))

(assert (=> b!7363453 d!2282454))

(declare-fun b!7363623 () Bool)

(declare-fun e!4408697 () Bool)

(declare-fun e!4408695 () Bool)

(assert (=> b!7363623 (= e!4408697 e!4408695)))

(declare-fun c!1368301 () Bool)

(assert (=> b!7363623 (= c!1368301 (is-Union!19242 r1!2370))))

(declare-fun b!7363624 () Bool)

(declare-fun e!4408694 () Bool)

(assert (=> b!7363624 (= e!4408694 e!4408697)))

(declare-fun c!1368300 () Bool)

(assert (=> b!7363624 (= c!1368300 (is-Star!19242 r1!2370))))

(declare-fun b!7363625 () Bool)

(declare-fun e!4408691 () Bool)

(assert (=> b!7363625 (= e!4408697 e!4408691)))

(declare-fun res!2972319 () Bool)

(assert (=> b!7363625 (= res!2972319 (not (nullable!8324 (reg!19571 r1!2370))))))

(assert (=> b!7363625 (=> (not res!2972319) (not e!4408691))))

(declare-fun b!7363626 () Bool)

(declare-fun e!4408696 () Bool)

(declare-fun e!4408692 () Bool)

(assert (=> b!7363626 (= e!4408696 e!4408692)))

(declare-fun res!2972320 () Bool)

(assert (=> b!7363626 (=> (not res!2972320) (not e!4408692))))

(declare-fun call!675207 () Bool)

(assert (=> b!7363626 (= res!2972320 call!675207)))

(declare-fun bm!675201 () Bool)

(declare-fun call!675206 () Bool)

(assert (=> bm!675201 (= call!675206 (validRegex!9838 (ite c!1368301 (regOne!38997 r1!2370) (regTwo!38996 r1!2370))))))

(declare-fun d!2282476 () Bool)

(declare-fun res!2972318 () Bool)

(assert (=> d!2282476 (=> res!2972318 e!4408694)))

(assert (=> d!2282476 (= res!2972318 (is-ElementMatch!19242 r1!2370))))

(assert (=> d!2282476 (= (validRegex!9838 r1!2370) e!4408694)))

(declare-fun bm!675202 () Bool)

(declare-fun call!675208 () Bool)

(assert (=> bm!675202 (= call!675208 (validRegex!9838 (ite c!1368300 (reg!19571 r1!2370) (ite c!1368301 (regTwo!38997 r1!2370) (regOne!38996 r1!2370)))))))

(declare-fun b!7363627 () Bool)

(assert (=> b!7363627 (= e!4408692 call!675206)))

(declare-fun bm!675203 () Bool)

(assert (=> bm!675203 (= call!675207 call!675208)))

(declare-fun b!7363628 () Bool)

(declare-fun res!2972321 () Bool)

(assert (=> b!7363628 (=> res!2972321 e!4408696)))

(assert (=> b!7363628 (= res!2972321 (not (is-Concat!28087 r1!2370)))))

(assert (=> b!7363628 (= e!4408695 e!4408696)))

(declare-fun b!7363629 () Bool)

(declare-fun res!2972322 () Bool)

(declare-fun e!4408693 () Bool)

(assert (=> b!7363629 (=> (not res!2972322) (not e!4408693))))

(assert (=> b!7363629 (= res!2972322 call!675206)))

(assert (=> b!7363629 (= e!4408695 e!4408693)))

(declare-fun b!7363630 () Bool)

(assert (=> b!7363630 (= e!4408691 call!675208)))

(declare-fun b!7363631 () Bool)

(assert (=> b!7363631 (= e!4408693 call!675207)))

(assert (= (and d!2282476 (not res!2972318)) b!7363624))

(assert (= (and b!7363624 c!1368300) b!7363625))

(assert (= (and b!7363624 (not c!1368300)) b!7363623))

(assert (= (and b!7363625 res!2972319) b!7363630))

(assert (= (and b!7363623 c!1368301) b!7363629))

(assert (= (and b!7363623 (not c!1368301)) b!7363628))

(assert (= (and b!7363629 res!2972322) b!7363631))

(assert (= (and b!7363628 (not res!2972321)) b!7363626))

(assert (= (and b!7363626 res!2972320) b!7363627))

(assert (= (or b!7363629 b!7363627) bm!675201))

(assert (= (or b!7363631 b!7363626) bm!675203))

(assert (= (or b!7363630 bm!675203) bm!675202))

(declare-fun m!8020192 () Bool)

(assert (=> b!7363625 m!8020192))

(declare-fun m!8020194 () Bool)

(assert (=> bm!675201 m!8020194))

(declare-fun m!8020198 () Bool)

(assert (=> bm!675202 m!8020198))

(assert (=> start!718894 d!2282476))

(declare-fun bs!1920341 () Bool)

(declare-fun d!2282482 () Bool)

(assert (= bs!1920341 (and d!2282482 b!7363453)))

(declare-fun lambda!457563 () Int)

(assert (=> bs!1920341 (= lambda!457563 lambda!457536)))

(declare-fun bs!1920342 () Bool)

(assert (= bs!1920342 (and d!2282482 d!2282458)))

(assert (=> bs!1920342 (= lambda!457563 lambda!457559)))

(declare-fun bs!1920343 () Bool)

(assert (= bs!1920343 (and d!2282482 d!2282470)))

(assert (=> bs!1920343 (= lambda!457563 lambda!457562)))

(assert (=> d!2282482 (= (inv!91446 cWitness!61) (forall!18054 (exprs!8682 cWitness!61) lambda!457563))))

(declare-fun bs!1920344 () Bool)

(assert (= bs!1920344 d!2282482))

(declare-fun m!8020200 () Bool)

(assert (=> bs!1920344 m!8020200))

(assert (=> start!718894 d!2282482))

(declare-fun bs!1920345 () Bool)

(declare-fun d!2282484 () Bool)

(assert (= bs!1920345 (and d!2282484 b!7363453)))

(declare-fun lambda!457564 () Int)

(assert (=> bs!1920345 (= lambda!457564 lambda!457536)))

(declare-fun bs!1920346 () Bool)

(assert (= bs!1920346 (and d!2282484 d!2282458)))

(assert (=> bs!1920346 (= lambda!457564 lambda!457559)))

(declare-fun bs!1920347 () Bool)

(assert (= bs!1920347 (and d!2282484 d!2282470)))

(assert (=> bs!1920347 (= lambda!457564 lambda!457562)))

(declare-fun bs!1920348 () Bool)

(assert (= bs!1920348 (and d!2282484 d!2282482)))

(assert (=> bs!1920348 (= lambda!457564 lambda!457563)))

(assert (=> d!2282484 (= (inv!91446 ct1!282) (forall!18054 (exprs!8682 ct1!282) lambda!457564))))

(declare-fun bs!1920349 () Bool)

(assert (= bs!1920349 d!2282484))

(declare-fun m!8020202 () Bool)

(assert (=> bs!1920349 m!8020202))

(assert (=> start!718894 d!2282484))

(declare-fun bs!1920350 () Bool)

(declare-fun d!2282486 () Bool)

(assert (= bs!1920350 (and d!2282486 d!2282458)))

(declare-fun lambda!457565 () Int)

(assert (=> bs!1920350 (= lambda!457565 lambda!457559)))

(declare-fun bs!1920351 () Bool)

(assert (= bs!1920351 (and d!2282486 d!2282482)))

(assert (=> bs!1920351 (= lambda!457565 lambda!457563)))

(declare-fun bs!1920352 () Bool)

(assert (= bs!1920352 (and d!2282486 d!2282484)))

(assert (=> bs!1920352 (= lambda!457565 lambda!457564)))

(declare-fun bs!1920353 () Bool)

(assert (= bs!1920353 (and d!2282486 d!2282470)))

(assert (=> bs!1920353 (= lambda!457565 lambda!457562)))

(declare-fun bs!1920354 () Bool)

(assert (= bs!1920354 (and d!2282486 b!7363453)))

(assert (=> bs!1920354 (= lambda!457565 lambda!457536)))

(assert (=> d!2282486 (= (inv!91446 ct2!378) (forall!18054 (exprs!8682 ct2!378) lambda!457565))))

(declare-fun bs!1920355 () Bool)

(assert (= bs!1920355 d!2282486))

(declare-fun m!8020204 () Bool)

(assert (=> bs!1920355 m!8020204))

(assert (=> start!718894 d!2282486))

(declare-fun b!7363636 () Bool)

(declare-fun e!4408700 () Bool)

(declare-fun tp!2092584 () Bool)

(declare-fun tp!2092585 () Bool)

(assert (=> b!7363636 (= e!4408700 (and tp!2092584 tp!2092585))))

(assert (=> b!7363450 (= tp!2092551 e!4408700)))

(assert (= (and b!7363450 (is-Cons!71614 (exprs!8682 ct2!378))) b!7363636))

(declare-fun e!4408703 () Bool)

(assert (=> b!7363449 (= tp!2092548 e!4408703)))

(declare-fun b!7363648 () Bool)

(declare-fun tp!2092598 () Bool)

(declare-fun tp!2092599 () Bool)

(assert (=> b!7363648 (= e!4408703 (and tp!2092598 tp!2092599))))

(declare-fun b!7363647 () Bool)

(assert (=> b!7363647 (= e!4408703 tp_is_empty!48729)))

(declare-fun b!7363650 () Bool)

(declare-fun tp!2092597 () Bool)

(declare-fun tp!2092596 () Bool)

(assert (=> b!7363650 (= e!4408703 (and tp!2092597 tp!2092596))))

(declare-fun b!7363649 () Bool)

(declare-fun tp!2092600 () Bool)

(assert (=> b!7363649 (= e!4408703 tp!2092600)))

(assert (= (and b!7363449 (is-ElementMatch!19242 (regOne!38996 r1!2370))) b!7363647))

(assert (= (and b!7363449 (is-Concat!28087 (regOne!38996 r1!2370))) b!7363648))

(assert (= (and b!7363449 (is-Star!19242 (regOne!38996 r1!2370))) b!7363649))

(assert (= (and b!7363449 (is-Union!19242 (regOne!38996 r1!2370))) b!7363650))

(declare-fun e!4408704 () Bool)

(assert (=> b!7363449 (= tp!2092554 e!4408704)))

(declare-fun b!7363652 () Bool)

(declare-fun tp!2092603 () Bool)

(declare-fun tp!2092604 () Bool)

(assert (=> b!7363652 (= e!4408704 (and tp!2092603 tp!2092604))))

(declare-fun b!7363651 () Bool)

(assert (=> b!7363651 (= e!4408704 tp_is_empty!48729)))

(declare-fun b!7363654 () Bool)

(declare-fun tp!2092602 () Bool)

(declare-fun tp!2092601 () Bool)

(assert (=> b!7363654 (= e!4408704 (and tp!2092602 tp!2092601))))

(declare-fun b!7363653 () Bool)

(declare-fun tp!2092605 () Bool)

(assert (=> b!7363653 (= e!4408704 tp!2092605)))

(assert (= (and b!7363449 (is-ElementMatch!19242 (regTwo!38996 r1!2370))) b!7363651))

(assert (= (and b!7363449 (is-Concat!28087 (regTwo!38996 r1!2370))) b!7363652))

(assert (= (and b!7363449 (is-Star!19242 (regTwo!38996 r1!2370))) b!7363653))

(assert (= (and b!7363449 (is-Union!19242 (regTwo!38996 r1!2370))) b!7363654))

(declare-fun b!7363655 () Bool)

(declare-fun e!4408705 () Bool)

(declare-fun tp!2092606 () Bool)

(declare-fun tp!2092607 () Bool)

(assert (=> b!7363655 (= e!4408705 (and tp!2092606 tp!2092607))))

(assert (=> b!7363448 (= tp!2092553 e!4408705)))

(assert (= (and b!7363448 (is-Cons!71614 (exprs!8682 cWitness!61))) b!7363655))

(declare-fun e!4408706 () Bool)

(assert (=> b!7363459 (= tp!2092549 e!4408706)))

(declare-fun b!7363657 () Bool)

(declare-fun tp!2092610 () Bool)

(declare-fun tp!2092611 () Bool)

(assert (=> b!7363657 (= e!4408706 (and tp!2092610 tp!2092611))))

(declare-fun b!7363656 () Bool)

(assert (=> b!7363656 (= e!4408706 tp_is_empty!48729)))

(declare-fun b!7363659 () Bool)

(declare-fun tp!2092609 () Bool)

(declare-fun tp!2092608 () Bool)

(assert (=> b!7363659 (= e!4408706 (and tp!2092609 tp!2092608))))

(declare-fun b!7363658 () Bool)

(declare-fun tp!2092612 () Bool)

(assert (=> b!7363658 (= e!4408706 tp!2092612)))

(assert (= (and b!7363459 (is-ElementMatch!19242 (reg!19571 r1!2370))) b!7363656))

(assert (= (and b!7363459 (is-Concat!28087 (reg!19571 r1!2370))) b!7363657))

(assert (= (and b!7363459 (is-Star!19242 (reg!19571 r1!2370))) b!7363658))

(assert (= (and b!7363459 (is-Union!19242 (reg!19571 r1!2370))) b!7363659))

(declare-fun e!4408707 () Bool)

(assert (=> b!7363452 (= tp!2092550 e!4408707)))

(declare-fun b!7363661 () Bool)

(declare-fun tp!2092615 () Bool)

(declare-fun tp!2092616 () Bool)

(assert (=> b!7363661 (= e!4408707 (and tp!2092615 tp!2092616))))

(declare-fun b!7363660 () Bool)

(assert (=> b!7363660 (= e!4408707 tp_is_empty!48729)))

(declare-fun b!7363663 () Bool)

(declare-fun tp!2092614 () Bool)

(declare-fun tp!2092613 () Bool)

(assert (=> b!7363663 (= e!4408707 (and tp!2092614 tp!2092613))))

(declare-fun b!7363662 () Bool)

(declare-fun tp!2092617 () Bool)

(assert (=> b!7363662 (= e!4408707 tp!2092617)))

(assert (= (and b!7363452 (is-ElementMatch!19242 (regOne!38997 r1!2370))) b!7363660))

(assert (= (and b!7363452 (is-Concat!28087 (regOne!38997 r1!2370))) b!7363661))

(assert (= (and b!7363452 (is-Star!19242 (regOne!38997 r1!2370))) b!7363662))

(assert (= (and b!7363452 (is-Union!19242 (regOne!38997 r1!2370))) b!7363663))

(declare-fun e!4408708 () Bool)

(assert (=> b!7363452 (= tp!2092555 e!4408708)))

(declare-fun b!7363665 () Bool)

(declare-fun tp!2092620 () Bool)

(declare-fun tp!2092621 () Bool)

(assert (=> b!7363665 (= e!4408708 (and tp!2092620 tp!2092621))))

(declare-fun b!7363664 () Bool)

(assert (=> b!7363664 (= e!4408708 tp_is_empty!48729)))

(declare-fun b!7363667 () Bool)

(declare-fun tp!2092619 () Bool)

(declare-fun tp!2092618 () Bool)

(assert (=> b!7363667 (= e!4408708 (and tp!2092619 tp!2092618))))

(declare-fun b!7363666 () Bool)

(declare-fun tp!2092622 () Bool)

(assert (=> b!7363666 (= e!4408708 tp!2092622)))

(assert (= (and b!7363452 (is-ElementMatch!19242 (regTwo!38997 r1!2370))) b!7363664))

(assert (= (and b!7363452 (is-Concat!28087 (regTwo!38997 r1!2370))) b!7363665))

(assert (= (and b!7363452 (is-Star!19242 (regTwo!38997 r1!2370))) b!7363666))

(assert (= (and b!7363452 (is-Union!19242 (regTwo!38997 r1!2370))) b!7363667))

(declare-fun b!7363668 () Bool)

(declare-fun e!4408709 () Bool)

(declare-fun tp!2092623 () Bool)

(declare-fun tp!2092624 () Bool)

(assert (=> b!7363668 (= e!4408709 (and tp!2092623 tp!2092624))))

(assert (=> b!7363451 (= tp!2092552 e!4408709)))

(assert (= (and b!7363451 (is-Cons!71614 (exprs!8682 ct1!282))) b!7363668))

(push 1)

(assert (not b!7363568))

(assert (not b!7363592))

(assert (not b!7363653))

(assert (not d!2282458))

(assert (not d!2282454))

(assert (not bm!675175))

(assert (not bm!675202))

(assert (not bm!675180))

(assert (not bm!675172))

(assert (not b!7363659))

(assert (not bm!675190))

(assert (not b!7363636))

(assert (not b!7363662))

(assert (not b!7363652))

(assert (not b!7363649))

(assert (not bm!675201))

(assert (not b!7363579))

(assert (not b!7363665))

(assert (not b!7363666))

(assert (not bm!675168))

(assert (not bm!675186))

(assert (not d!2282452))

(assert (not b!7363546))

(assert (not d!2282456))

(assert (not b!7363661))

(assert (not bm!675178))

(assert tp_is_empty!48729)

(assert (not bm!675174))

(assert (not bm!675181))

(assert (not b!7363658))

(assert (not b!7363625))

(assert (not b!7363543))

(assert (not b!7363655))

(assert (not b!7363663))

(assert (not b!7363593))

(assert (not d!2282484))

(assert (not bm!675192))

(assert (not b!7363654))

(assert (not b!7363668))

(assert (not b!7363557))

(assert (not d!2282486))

(assert (not b!7363542))

(assert (not bm!675193))

(assert (not b!7363648))

(assert (not bm!675184))

(assert (not bm!675169))

(assert (not bm!675187))

(assert (not bm!675166))

(assert (not d!2282474))

(assert (not d!2282482))

(assert (not d!2282470))

(assert (not b!7363667))

(assert (not b!7363650))

(assert (not b!7363523))

(assert (not b!7363657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

