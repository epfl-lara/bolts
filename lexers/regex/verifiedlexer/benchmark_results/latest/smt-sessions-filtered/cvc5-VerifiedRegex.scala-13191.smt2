; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719270 () Bool)

(assert start!719270)

(declare-fun b!7369226 () Bool)

(declare-fun e!4411773 () Bool)

(declare-fun e!4411774 () Bool)

(assert (=> b!7369226 (= e!4411773 e!4411774)))

(declare-fun res!2973738 () Bool)

(assert (=> b!7369226 (=> (not res!2973738) (not e!4411774))))

(declare-datatypes ((C!38814 0))(
  ( (C!38815 (val!29767 Int)) )
))
(declare-datatypes ((Regex!19270 0))(
  ( (ElementMatch!19270 (c!1369508 C!38814)) (Concat!28115 (regOne!39052 Regex!19270) (regTwo!39052 Regex!19270)) (EmptyExpr!19270) (Star!19270 (reg!19599 Regex!19270)) (EmptyLang!19270) (Union!19270 (regOne!39053 Regex!19270) (regTwo!39053 Regex!19270)) )
))
(declare-datatypes ((List!71766 0))(
  ( (Nil!71642) (Cons!71642 (h!78090 Regex!19270) (t!386223 List!71766)) )
))
(declare-datatypes ((Context!16420 0))(
  ( (Context!16421 (exprs!8710 List!71766)) )
))
(declare-fun cWitness!61 () Context!16420)

(declare-fun lt!2615192 () (Set Context!16420))

(assert (=> b!7369226 (= res!2973738 (set.member cWitness!61 lt!2615192))))

(declare-fun r1!2370 () Regex!19270)

(declare-fun c!10362 () C!38814)

(declare-fun ct1!282 () Context!16420)

(declare-fun derivationStepZipperDown!3096 (Regex!19270 Context!16420 C!38814) (Set Context!16420))

(assert (=> b!7369226 (= lt!2615192 (derivationStepZipperDown!3096 r1!2370 ct1!282 c!10362))))

(declare-fun b!7369227 () Bool)

(declare-fun res!2973741 () Bool)

(declare-fun e!4411776 () Bool)

(assert (=> b!7369227 (=> (not res!2973741) (not e!4411776))))

(declare-fun nullable!8346 (Regex!19270) Bool)

(assert (=> b!7369227 (= res!2973741 (nullable!8346 (regOne!39052 r1!2370)))))

(declare-fun b!7369228 () Bool)

(declare-fun e!4411772 () Bool)

(declare-fun tp!2094794 () Bool)

(assert (=> b!7369228 (= e!4411772 tp!2094794)))

(declare-fun b!7369229 () Bool)

(declare-fun tp_is_empty!48785 () Bool)

(assert (=> b!7369229 (= e!4411772 tp_is_empty!48785)))

(declare-fun res!2973739 () Bool)

(assert (=> start!719270 (=> (not res!2973739) (not e!4411773))))

(declare-fun validRegex!9866 (Regex!19270) Bool)

(assert (=> start!719270 (= res!2973739 (validRegex!9866 r1!2370))))

(assert (=> start!719270 e!4411773))

(assert (=> start!719270 tp_is_empty!48785))

(declare-fun e!4411775 () Bool)

(declare-fun inv!91516 (Context!16420) Bool)

(assert (=> start!719270 (and (inv!91516 cWitness!61) e!4411775)))

(declare-fun e!4411771 () Bool)

(assert (=> start!719270 (and (inv!91516 ct1!282) e!4411771)))

(assert (=> start!719270 e!4411772))

(declare-fun ct2!378 () Context!16420)

(declare-fun e!4411777 () Bool)

(assert (=> start!719270 (and (inv!91516 ct2!378) e!4411777)))

(declare-fun b!7369230 () Bool)

(declare-fun tp!2094799 () Bool)

(declare-fun tp!2094795 () Bool)

(assert (=> b!7369230 (= e!4411772 (and tp!2094799 tp!2094795))))

(declare-fun b!7369231 () Bool)

(declare-fun tp!2094801 () Bool)

(assert (=> b!7369231 (= e!4411777 tp!2094801)))

(declare-fun b!7369232 () Bool)

(declare-fun tp!2094800 () Bool)

(assert (=> b!7369232 (= e!4411775 tp!2094800)))

(declare-fun b!7369233 () Bool)

(declare-fun e!4411778 () Bool)

(declare-fun lt!2615199 () Context!16420)

(assert (=> b!7369233 (= e!4411778 (not (inv!91516 lt!2615199)))))

(declare-fun lambda!457880 () Int)

(declare-datatypes ((Unit!165489 0))(
  ( (Unit!165490) )
))
(declare-fun lt!2615194 () Unit!165489)

(declare-fun lemmaConcatPreservesForall!1943 (List!71766 List!71766 Int) Unit!165489)

(assert (=> b!7369233 (= lt!2615194 (lemmaConcatPreservesForall!1943 (exprs!8710 cWitness!61) (exprs!8710 ct2!378) lambda!457880))))

(declare-fun lt!2615201 () List!71766)

(declare-fun ++!17086 (List!71766 List!71766) List!71766)

(assert (=> b!7369233 (set.member lt!2615199 (derivationStepZipperDown!3096 (regOne!39052 r1!2370) (Context!16421 (++!17086 lt!2615201 (exprs!8710 ct2!378))) c!10362))))

(assert (=> b!7369233 (= lt!2615199 (Context!16421 (++!17086 (exprs!8710 cWitness!61) (exprs!8710 ct2!378))))))

(declare-fun lt!2615198 () Unit!165489)

(assert (=> b!7369233 (= lt!2615198 (lemmaConcatPreservesForall!1943 lt!2615201 (exprs!8710 ct2!378) lambda!457880))))

(declare-fun lt!2615202 () Unit!165489)

(assert (=> b!7369233 (= lt!2615202 (lemmaConcatPreservesForall!1943 (exprs!8710 cWitness!61) (exprs!8710 ct2!378) lambda!457880))))

(declare-fun lt!2615193 () Unit!165489)

(declare-fun lt!2615195 () Context!16420)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!129 (Regex!19270 Context!16420 Context!16420 Context!16420 C!38814) Unit!165489)

(assert (=> b!7369233 (= lt!2615193 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!129 (regOne!39052 r1!2370) lt!2615195 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7369234 () Bool)

(declare-fun res!2973736 () Bool)

(assert (=> b!7369234 (=> (not res!2973736) (not e!4411776))))

(assert (=> b!7369234 (= res!2973736 (validRegex!9866 (regTwo!39052 r1!2370)))))

(declare-fun b!7369235 () Bool)

(declare-fun res!2973740 () Bool)

(assert (=> b!7369235 (=> (not res!2973740) (not e!4411778))))

(declare-fun lt!2615196 () (Set Context!16420))

(assert (=> b!7369235 (= res!2973740 (set.member cWitness!61 lt!2615196))))

(declare-fun b!7369236 () Bool)

(assert (=> b!7369236 (= e!4411776 e!4411778)))

(declare-fun res!2973735 () Bool)

(assert (=> b!7369236 (=> (not res!2973735) (not e!4411778))))

(assert (=> b!7369236 (= res!2973735 (= lt!2615192 (set.union lt!2615196 (derivationStepZipperDown!3096 (regTwo!39052 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7369236 (= lt!2615196 (derivationStepZipperDown!3096 (regOne!39052 r1!2370) lt!2615195 c!10362))))

(assert (=> b!7369236 (= lt!2615195 (Context!16421 lt!2615201))))

(declare-fun $colon$colon!3252 (List!71766 Regex!19270) List!71766)

(assert (=> b!7369236 (= lt!2615201 ($colon$colon!3252 (exprs!8710 ct1!282) (regTwo!39052 r1!2370)))))

(declare-fun b!7369237 () Bool)

(declare-fun tp!2094797 () Bool)

(declare-fun tp!2094796 () Bool)

(assert (=> b!7369237 (= e!4411772 (and tp!2094797 tp!2094796))))

(declare-fun b!7369238 () Bool)

(declare-fun tp!2094798 () Bool)

(assert (=> b!7369238 (= e!4411771 tp!2094798)))

(declare-fun b!7369239 () Bool)

(assert (=> b!7369239 (= e!4411774 e!4411776)))

(declare-fun res!2973737 () Bool)

(assert (=> b!7369239 (=> (not res!2973737) (not e!4411776))))

(assert (=> b!7369239 (= res!2973737 (and (or (not (is-ElementMatch!19270 r1!2370)) (not (= c!10362 (c!1369508 r1!2370)))) (not (is-Union!19270 r1!2370)) (is-Concat!28115 r1!2370)))))

(declare-fun lt!2615200 () (Set Context!16420))

(assert (=> b!7369239 (= lt!2615200 (derivationStepZipperDown!3096 r1!2370 (Context!16421 (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378))) c!10362))))

(declare-fun lt!2615197 () Unit!165489)

(assert (=> b!7369239 (= lt!2615197 (lemmaConcatPreservesForall!1943 (exprs!8710 ct1!282) (exprs!8710 ct2!378) lambda!457880))))

(assert (= (and start!719270 res!2973739) b!7369226))

(assert (= (and b!7369226 res!2973738) b!7369239))

(assert (= (and b!7369239 res!2973737) b!7369227))

(assert (= (and b!7369227 res!2973741) b!7369234))

(assert (= (and b!7369234 res!2973736) b!7369236))

(assert (= (and b!7369236 res!2973735) b!7369235))

(assert (= (and b!7369235 res!2973740) b!7369233))

(assert (= start!719270 b!7369232))

(assert (= start!719270 b!7369238))

(assert (= (and start!719270 (is-ElementMatch!19270 r1!2370)) b!7369229))

(assert (= (and start!719270 (is-Concat!28115 r1!2370)) b!7369237))

(assert (= (and start!719270 (is-Star!19270 r1!2370)) b!7369228))

(assert (= (and start!719270 (is-Union!19270 r1!2370)) b!7369230))

(assert (= start!719270 b!7369231))

(declare-fun m!8023386 () Bool)

(assert (=> b!7369236 m!8023386))

(declare-fun m!8023388 () Bool)

(assert (=> b!7369236 m!8023388))

(declare-fun m!8023390 () Bool)

(assert (=> b!7369236 m!8023390))

(declare-fun m!8023392 () Bool)

(assert (=> b!7369227 m!8023392))

(declare-fun m!8023394 () Bool)

(assert (=> start!719270 m!8023394))

(declare-fun m!8023396 () Bool)

(assert (=> start!719270 m!8023396))

(declare-fun m!8023398 () Bool)

(assert (=> start!719270 m!8023398))

(declare-fun m!8023400 () Bool)

(assert (=> start!719270 m!8023400))

(declare-fun m!8023402 () Bool)

(assert (=> b!7369226 m!8023402))

(declare-fun m!8023404 () Bool)

(assert (=> b!7369226 m!8023404))

(declare-fun m!8023406 () Bool)

(assert (=> b!7369233 m!8023406))

(declare-fun m!8023408 () Bool)

(assert (=> b!7369233 m!8023408))

(declare-fun m!8023410 () Bool)

(assert (=> b!7369233 m!8023410))

(declare-fun m!8023412 () Bool)

(assert (=> b!7369233 m!8023412))

(declare-fun m!8023414 () Bool)

(assert (=> b!7369233 m!8023414))

(declare-fun m!8023416 () Bool)

(assert (=> b!7369233 m!8023416))

(declare-fun m!8023418 () Bool)

(assert (=> b!7369233 m!8023418))

(assert (=> b!7369233 m!8023410))

(declare-fun m!8023420 () Bool)

(assert (=> b!7369233 m!8023420))

(declare-fun m!8023422 () Bool)

(assert (=> b!7369234 m!8023422))

(declare-fun m!8023424 () Bool)

(assert (=> b!7369235 m!8023424))

(declare-fun m!8023426 () Bool)

(assert (=> b!7369239 m!8023426))

(declare-fun m!8023428 () Bool)

(assert (=> b!7369239 m!8023428))

(declare-fun m!8023430 () Bool)

(assert (=> b!7369239 m!8023430))

(push 1)

(assert (not b!7369226))

(assert (not b!7369230))

(assert tp_is_empty!48785)

(assert (not b!7369237))

(assert (not start!719270))

(assert (not b!7369238))

(assert (not b!7369236))

(assert (not b!7369239))

(assert (not b!7369233))

(assert (not b!7369232))

(assert (not b!7369227))

(assert (not b!7369231))

(assert (not b!7369234))

(assert (not b!7369228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!676537 () Bool)

(declare-fun call!676544 () List!71766)

(declare-fun call!676542 () List!71766)

(assert (=> bm!676537 (= call!676544 call!676542)))

(declare-fun b!7369304 () Bool)

(declare-fun e!4411817 () (Set Context!16420))

(declare-fun call!676547 () (Set Context!16420))

(declare-fun call!676543 () (Set Context!16420))

(assert (=> b!7369304 (= e!4411817 (set.union call!676547 call!676543))))

(declare-fun b!7369305 () Bool)

(declare-fun e!4411819 () (Set Context!16420))

(assert (=> b!7369305 (= e!4411819 (as set.empty (Set Context!16420)))))

(declare-fun b!7369306 () Bool)

(declare-fun e!4411816 () (Set Context!16420))

(declare-fun e!4411818 () (Set Context!16420))

(assert (=> b!7369306 (= e!4411816 e!4411818)))

(declare-fun c!1369523 () Bool)

(assert (=> b!7369306 (= c!1369523 (is-Union!19270 r1!2370))))

(declare-fun b!7369307 () Bool)

(declare-fun c!1369524 () Bool)

(declare-fun e!4411820 () Bool)

(assert (=> b!7369307 (= c!1369524 e!4411820)))

(declare-fun res!2973765 () Bool)

(assert (=> b!7369307 (=> (not res!2973765) (not e!4411820))))

(assert (=> b!7369307 (= res!2973765 (is-Concat!28115 r1!2370))))

(assert (=> b!7369307 (= e!4411818 e!4411817)))

(declare-fun b!7369308 () Bool)

(declare-fun e!4411815 () (Set Context!16420))

(assert (=> b!7369308 (= e!4411817 e!4411815)))

(declare-fun c!1369520 () Bool)

(assert (=> b!7369308 (= c!1369520 (is-Concat!28115 r1!2370))))

(declare-fun b!7369309 () Bool)

(declare-fun call!676545 () (Set Context!16420))

(assert (=> b!7369309 (= e!4411819 call!676545)))

(declare-fun bm!676538 () Bool)

(assert (=> bm!676538 (= call!676547 (derivationStepZipperDown!3096 (ite c!1369523 (regOne!39053 r1!2370) (regOne!39052 r1!2370)) (ite c!1369523 (Context!16421 (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378))) (Context!16421 call!676542)) c!10362))))

(declare-fun bm!676539 () Bool)

(declare-fun call!676546 () (Set Context!16420))

(assert (=> bm!676539 (= call!676546 (derivationStepZipperDown!3096 (ite c!1369523 (regTwo!39053 r1!2370) (ite c!1369524 (regTwo!39052 r1!2370) (ite c!1369520 (regOne!39052 r1!2370) (reg!19599 r1!2370)))) (ite (or c!1369523 c!1369524) (Context!16421 (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378))) (Context!16421 call!676544)) c!10362))))

(declare-fun b!7369310 () Bool)

(declare-fun c!1369521 () Bool)

(assert (=> b!7369310 (= c!1369521 (is-Star!19270 r1!2370))))

(assert (=> b!7369310 (= e!4411815 e!4411819)))

(declare-fun b!7369311 () Bool)

(assert (=> b!7369311 (= e!4411818 (set.union call!676547 call!676546))))

(declare-fun b!7369312 () Bool)

(assert (=> b!7369312 (= e!4411815 call!676545)))

(declare-fun d!2283354 () Bool)

(declare-fun c!1369522 () Bool)

(assert (=> d!2283354 (= c!1369522 (and (is-ElementMatch!19270 r1!2370) (= (c!1369508 r1!2370) c!10362)))))

(assert (=> d!2283354 (= (derivationStepZipperDown!3096 r1!2370 (Context!16421 (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378))) c!10362) e!4411816)))

(declare-fun b!7369313 () Bool)

(assert (=> b!7369313 (= e!4411820 (nullable!8346 (regOne!39052 r1!2370)))))

(declare-fun b!7369314 () Bool)

(assert (=> b!7369314 (= e!4411816 (set.insert (Context!16421 (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378))) (as set.empty (Set Context!16420))))))

(declare-fun bm!676540 () Bool)

(assert (=> bm!676540 (= call!676545 call!676543)))

(declare-fun bm!676541 () Bool)

(assert (=> bm!676541 (= call!676542 ($colon$colon!3252 (exprs!8710 (Context!16421 (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378)))) (ite (or c!1369524 c!1369520) (regTwo!39052 r1!2370) r1!2370)))))

(declare-fun bm!676542 () Bool)

(assert (=> bm!676542 (= call!676543 call!676546)))

(assert (= (and d!2283354 c!1369522) b!7369314))

(assert (= (and d!2283354 (not c!1369522)) b!7369306))

(assert (= (and b!7369306 c!1369523) b!7369311))

(assert (= (and b!7369306 (not c!1369523)) b!7369307))

(assert (= (and b!7369307 res!2973765) b!7369313))

(assert (= (and b!7369307 c!1369524) b!7369304))

(assert (= (and b!7369307 (not c!1369524)) b!7369308))

(assert (= (and b!7369308 c!1369520) b!7369312))

(assert (= (and b!7369308 (not c!1369520)) b!7369310))

(assert (= (and b!7369310 c!1369521) b!7369309))

(assert (= (and b!7369310 (not c!1369521)) b!7369305))

(assert (= (or b!7369312 b!7369309) bm!676537))

(assert (= (or b!7369312 b!7369309) bm!676540))

(assert (= (or b!7369304 bm!676540) bm!676542))

(assert (= (or b!7369304 bm!676537) bm!676541))

(assert (= (or b!7369311 bm!676542) bm!676539))

(assert (= (or b!7369311 b!7369304) bm!676538))

(declare-fun m!8023478 () Bool)

(assert (=> bm!676538 m!8023478))

(declare-fun m!8023480 () Bool)

(assert (=> b!7369314 m!8023480))

(declare-fun m!8023482 () Bool)

(assert (=> bm!676539 m!8023482))

(assert (=> b!7369313 m!8023392))

(declare-fun m!8023484 () Bool)

(assert (=> bm!676541 m!8023484))

(assert (=> b!7369239 d!2283354))

(declare-fun b!7369326 () Bool)

(declare-fun lt!2615238 () List!71766)

(declare-fun e!4411825 () Bool)

(assert (=> b!7369326 (= e!4411825 (or (not (= (exprs!8710 ct2!378) Nil!71642)) (= lt!2615238 (exprs!8710 ct1!282))))))

(declare-fun b!7369325 () Bool)

(declare-fun res!2973770 () Bool)

(assert (=> b!7369325 (=> (not res!2973770) (not e!4411825))))

(declare-fun size!42128 (List!71766) Int)

(assert (=> b!7369325 (= res!2973770 (= (size!42128 lt!2615238) (+ (size!42128 (exprs!8710 ct1!282)) (size!42128 (exprs!8710 ct2!378)))))))

(declare-fun b!7369323 () Bool)

(declare-fun e!4411826 () List!71766)

(assert (=> b!7369323 (= e!4411826 (exprs!8710 ct2!378))))

(declare-fun d!2283356 () Bool)

(assert (=> d!2283356 e!4411825))

(declare-fun res!2973771 () Bool)

(assert (=> d!2283356 (=> (not res!2973771) (not e!4411825))))

(declare-fun content!15150 (List!71766) (Set Regex!19270))

(assert (=> d!2283356 (= res!2973771 (= (content!15150 lt!2615238) (set.union (content!15150 (exprs!8710 ct1!282)) (content!15150 (exprs!8710 ct2!378)))))))

(assert (=> d!2283356 (= lt!2615238 e!4411826)))

(declare-fun c!1369527 () Bool)

(assert (=> d!2283356 (= c!1369527 (is-Nil!71642 (exprs!8710 ct1!282)))))

(assert (=> d!2283356 (= (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378)) lt!2615238)))

(declare-fun b!7369324 () Bool)

(assert (=> b!7369324 (= e!4411826 (Cons!71642 (h!78090 (exprs!8710 ct1!282)) (++!17086 (t!386223 (exprs!8710 ct1!282)) (exprs!8710 ct2!378))))))

(assert (= (and d!2283356 c!1369527) b!7369323))

(assert (= (and d!2283356 (not c!1369527)) b!7369324))

(assert (= (and d!2283356 res!2973771) b!7369325))

(assert (= (and b!7369325 res!2973770) b!7369326))

(declare-fun m!8023486 () Bool)

(assert (=> b!7369325 m!8023486))

(declare-fun m!8023488 () Bool)

(assert (=> b!7369325 m!8023488))

(declare-fun m!8023490 () Bool)

(assert (=> b!7369325 m!8023490))

(declare-fun m!8023492 () Bool)

(assert (=> d!2283356 m!8023492))

(declare-fun m!8023494 () Bool)

(assert (=> d!2283356 m!8023494))

(declare-fun m!8023496 () Bool)

(assert (=> d!2283356 m!8023496))

(declare-fun m!8023498 () Bool)

(assert (=> b!7369324 m!8023498))

(assert (=> b!7369239 d!2283356))

(declare-fun d!2283358 () Bool)

(declare-fun forall!18076 (List!71766 Int) Bool)

(assert (=> d!2283358 (forall!18076 (++!17086 (exprs!8710 ct1!282) (exprs!8710 ct2!378)) lambda!457880)))

(declare-fun lt!2615241 () Unit!165489)

(declare-fun choose!57293 (List!71766 List!71766 Int) Unit!165489)

(assert (=> d!2283358 (= lt!2615241 (choose!57293 (exprs!8710 ct1!282) (exprs!8710 ct2!378) lambda!457880))))

(assert (=> d!2283358 (forall!18076 (exprs!8710 ct1!282) lambda!457880)))

(assert (=> d!2283358 (= (lemmaConcatPreservesForall!1943 (exprs!8710 ct1!282) (exprs!8710 ct2!378) lambda!457880) lt!2615241)))

(declare-fun bs!1920732 () Bool)

(assert (= bs!1920732 d!2283358))

(assert (=> bs!1920732 m!8023426))

(assert (=> bs!1920732 m!8023426))

(declare-fun m!8023500 () Bool)

(assert (=> bs!1920732 m!8023500))

(declare-fun m!8023502 () Bool)

(assert (=> bs!1920732 m!8023502))

(declare-fun m!8023504 () Bool)

(assert (=> bs!1920732 m!8023504))

(assert (=> b!7369239 d!2283358))

(declare-fun d!2283360 () Bool)

(declare-fun res!2973783 () Bool)

(declare-fun e!4411847 () Bool)

(assert (=> d!2283360 (=> res!2973783 e!4411847)))

(assert (=> d!2283360 (= res!2973783 (is-ElementMatch!19270 (regTwo!39052 r1!2370)))))

(assert (=> d!2283360 (= (validRegex!9866 (regTwo!39052 r1!2370)) e!4411847)))

(declare-fun b!7369345 () Bool)

(declare-fun e!4411844 () Bool)

(declare-fun e!4411846 () Bool)

(assert (=> b!7369345 (= e!4411844 e!4411846)))

(declare-fun c!1369532 () Bool)

(assert (=> b!7369345 (= c!1369532 (is-Union!19270 (regTwo!39052 r1!2370)))))

(declare-fun b!7369346 () Bool)

(declare-fun e!4411843 () Bool)

(declare-fun call!676556 () Bool)

(assert (=> b!7369346 (= e!4411843 call!676556)))

(declare-fun b!7369347 () Bool)

(assert (=> b!7369347 (= e!4411847 e!4411844)))

(declare-fun c!1369533 () Bool)

(assert (=> b!7369347 (= c!1369533 (is-Star!19270 (regTwo!39052 r1!2370)))))

(declare-fun bm!676549 () Bool)

(declare-fun call!676555 () Bool)

(declare-fun call!676554 () Bool)

(assert (=> bm!676549 (= call!676555 call!676554)))

(declare-fun b!7369348 () Bool)

(declare-fun res!2973784 () Bool)

(assert (=> b!7369348 (=> (not res!2973784) (not e!4411843))))

(assert (=> b!7369348 (= res!2973784 call!676555)))

(assert (=> b!7369348 (= e!4411846 e!4411843)))

(declare-fun b!7369349 () Bool)

(declare-fun e!4411842 () Bool)

(assert (=> b!7369349 (= e!4411842 call!676555)))

(declare-fun b!7369350 () Bool)

(declare-fun e!4411845 () Bool)

(assert (=> b!7369350 (= e!4411845 e!4411842)))

(declare-fun res!2973785 () Bool)

(assert (=> b!7369350 (=> (not res!2973785) (not e!4411842))))

(assert (=> b!7369350 (= res!2973785 call!676556)))

(declare-fun b!7369351 () Bool)

(declare-fun e!4411841 () Bool)

(assert (=> b!7369351 (= e!4411844 e!4411841)))

(declare-fun res!2973782 () Bool)

(assert (=> b!7369351 (= res!2973782 (not (nullable!8346 (reg!19599 (regTwo!39052 r1!2370)))))))

(assert (=> b!7369351 (=> (not res!2973782) (not e!4411841))))

(declare-fun bm!676550 () Bool)

(assert (=> bm!676550 (= call!676556 (validRegex!9866 (ite c!1369532 (regTwo!39053 (regTwo!39052 r1!2370)) (regOne!39052 (regTwo!39052 r1!2370)))))))

(declare-fun b!7369352 () Bool)

(declare-fun res!2973786 () Bool)

(assert (=> b!7369352 (=> res!2973786 e!4411845)))

(assert (=> b!7369352 (= res!2973786 (not (is-Concat!28115 (regTwo!39052 r1!2370))))))

(assert (=> b!7369352 (= e!4411846 e!4411845)))

(declare-fun b!7369353 () Bool)

(assert (=> b!7369353 (= e!4411841 call!676554)))

(declare-fun bm!676551 () Bool)

(assert (=> bm!676551 (= call!676554 (validRegex!9866 (ite c!1369533 (reg!19599 (regTwo!39052 r1!2370)) (ite c!1369532 (regOne!39053 (regTwo!39052 r1!2370)) (regTwo!39052 (regTwo!39052 r1!2370))))))))

(assert (= (and d!2283360 (not res!2973783)) b!7369347))

(assert (= (and b!7369347 c!1369533) b!7369351))

(assert (= (and b!7369347 (not c!1369533)) b!7369345))

(assert (= (and b!7369351 res!2973782) b!7369353))

(assert (= (and b!7369345 c!1369532) b!7369348))

(assert (= (and b!7369345 (not c!1369532)) b!7369352))

(assert (= (and b!7369348 res!2973784) b!7369346))

(assert (= (and b!7369352 (not res!2973786)) b!7369350))

(assert (= (and b!7369350 res!2973785) b!7369349))

(assert (= (or b!7369348 b!7369349) bm!676549))

(assert (= (or b!7369346 b!7369350) bm!676550))

(assert (= (or b!7369353 bm!676549) bm!676551))

(declare-fun m!8023506 () Bool)

(assert (=> b!7369351 m!8023506))

(declare-fun m!8023508 () Bool)

(assert (=> bm!676550 m!8023508))

(declare-fun m!8023510 () Bool)

(assert (=> bm!676551 m!8023510))

(assert (=> b!7369234 d!2283360))

(declare-fun d!2283364 () Bool)

(declare-fun nullableFct!3335 (Regex!19270) Bool)

(assert (=> d!2283364 (= (nullable!8346 (regOne!39052 r1!2370)) (nullableFct!3335 (regOne!39052 r1!2370)))))

(declare-fun bs!1920733 () Bool)

(assert (= bs!1920733 d!2283364))

(declare-fun m!8023512 () Bool)

(assert (=> bs!1920733 m!8023512))

(assert (=> b!7369227 d!2283364))

(declare-fun d!2283366 () Bool)

(declare-fun res!2973788 () Bool)

(declare-fun e!4411854 () Bool)

(assert (=> d!2283366 (=> res!2973788 e!4411854)))

(assert (=> d!2283366 (= res!2973788 (is-ElementMatch!19270 r1!2370))))

(assert (=> d!2283366 (= (validRegex!9866 r1!2370) e!4411854)))

(declare-fun b!7369354 () Bool)

(declare-fun e!4411851 () Bool)

(declare-fun e!4411853 () Bool)

(assert (=> b!7369354 (= e!4411851 e!4411853)))

(declare-fun c!1369534 () Bool)

(assert (=> b!7369354 (= c!1369534 (is-Union!19270 r1!2370))))

(declare-fun b!7369355 () Bool)

(declare-fun e!4411850 () Bool)

(declare-fun call!676559 () Bool)

(assert (=> b!7369355 (= e!4411850 call!676559)))

(declare-fun b!7369356 () Bool)

(assert (=> b!7369356 (= e!4411854 e!4411851)))

(declare-fun c!1369535 () Bool)

(assert (=> b!7369356 (= c!1369535 (is-Star!19270 r1!2370))))

(declare-fun bm!676552 () Bool)

(declare-fun call!676558 () Bool)

(declare-fun call!676557 () Bool)

(assert (=> bm!676552 (= call!676558 call!676557)))

(declare-fun b!7369357 () Bool)

(declare-fun res!2973789 () Bool)

(assert (=> b!7369357 (=> (not res!2973789) (not e!4411850))))

(assert (=> b!7369357 (= res!2973789 call!676558)))

(assert (=> b!7369357 (= e!4411853 e!4411850)))

(declare-fun b!7369358 () Bool)

(declare-fun e!4411849 () Bool)

(assert (=> b!7369358 (= e!4411849 call!676558)))

(declare-fun b!7369359 () Bool)

(declare-fun e!4411852 () Bool)

(assert (=> b!7369359 (= e!4411852 e!4411849)))

(declare-fun res!2973790 () Bool)

(assert (=> b!7369359 (=> (not res!2973790) (not e!4411849))))

(assert (=> b!7369359 (= res!2973790 call!676559)))

(declare-fun b!7369360 () Bool)

(declare-fun e!4411848 () Bool)

(assert (=> b!7369360 (= e!4411851 e!4411848)))

(declare-fun res!2973787 () Bool)

(assert (=> b!7369360 (= res!2973787 (not (nullable!8346 (reg!19599 r1!2370))))))

(assert (=> b!7369360 (=> (not res!2973787) (not e!4411848))))

(declare-fun bm!676553 () Bool)

(assert (=> bm!676553 (= call!676559 (validRegex!9866 (ite c!1369534 (regTwo!39053 r1!2370) (regOne!39052 r1!2370))))))

(declare-fun b!7369361 () Bool)

(declare-fun res!2973791 () Bool)

(assert (=> b!7369361 (=> res!2973791 e!4411852)))

(assert (=> b!7369361 (= res!2973791 (not (is-Concat!28115 r1!2370)))))

(assert (=> b!7369361 (= e!4411853 e!4411852)))

(declare-fun b!7369362 () Bool)

(assert (=> b!7369362 (= e!4411848 call!676557)))

(declare-fun bm!676554 () Bool)

(assert (=> bm!676554 (= call!676557 (validRegex!9866 (ite c!1369535 (reg!19599 r1!2370) (ite c!1369534 (regOne!39053 r1!2370) (regTwo!39052 r1!2370)))))))

(assert (= (and d!2283366 (not res!2973788)) b!7369356))

(assert (= (and b!7369356 c!1369535) b!7369360))

(assert (= (and b!7369356 (not c!1369535)) b!7369354))

(assert (= (and b!7369360 res!2973787) b!7369362))

(assert (= (and b!7369354 c!1369534) b!7369357))

(assert (= (and b!7369354 (not c!1369534)) b!7369361))

(assert (= (and b!7369357 res!2973789) b!7369355))

(assert (= (and b!7369361 (not res!2973791)) b!7369359))

(assert (= (and b!7369359 res!2973790) b!7369358))

(assert (= (or b!7369357 b!7369358) bm!676552))

(assert (= (or b!7369355 b!7369359) bm!676553))

(assert (= (or b!7369362 bm!676552) bm!676554))

(declare-fun m!8023514 () Bool)

(assert (=> b!7369360 m!8023514))

(declare-fun m!8023516 () Bool)

(assert (=> bm!676553 m!8023516))

(declare-fun m!8023518 () Bool)

(assert (=> bm!676554 m!8023518))

(assert (=> start!719270 d!2283366))

(declare-fun bs!1920734 () Bool)

(declare-fun d!2283368 () Bool)

(assert (= bs!1920734 (and d!2283368 b!7369239)))

(declare-fun lambda!457892 () Int)

(assert (=> bs!1920734 (= lambda!457892 lambda!457880)))

(assert (=> d!2283368 (= (inv!91516 cWitness!61) (forall!18076 (exprs!8710 cWitness!61) lambda!457892))))

(declare-fun bs!1920735 () Bool)

(assert (= bs!1920735 d!2283368))

(declare-fun m!8023520 () Bool)

(assert (=> bs!1920735 m!8023520))

(assert (=> start!719270 d!2283368))

(declare-fun bs!1920736 () Bool)

(declare-fun d!2283370 () Bool)

(assert (= bs!1920736 (and d!2283370 b!7369239)))

(declare-fun lambda!457893 () Int)

(assert (=> bs!1920736 (= lambda!457893 lambda!457880)))

(declare-fun bs!1920737 () Bool)

(assert (= bs!1920737 (and d!2283370 d!2283368)))

(assert (=> bs!1920737 (= lambda!457893 lambda!457892)))

(assert (=> d!2283370 (= (inv!91516 ct1!282) (forall!18076 (exprs!8710 ct1!282) lambda!457893))))

(declare-fun bs!1920738 () Bool)

(assert (= bs!1920738 d!2283370))

(declare-fun m!8023522 () Bool)

(assert (=> bs!1920738 m!8023522))

(assert (=> start!719270 d!2283370))

(declare-fun bs!1920739 () Bool)

(declare-fun d!2283372 () Bool)

(assert (= bs!1920739 (and d!2283372 b!7369239)))

(declare-fun lambda!457894 () Int)

(assert (=> bs!1920739 (= lambda!457894 lambda!457880)))

(declare-fun bs!1920740 () Bool)

(assert (= bs!1920740 (and d!2283372 d!2283368)))

(assert (=> bs!1920740 (= lambda!457894 lambda!457892)))

(declare-fun bs!1920741 () Bool)

(assert (= bs!1920741 (and d!2283372 d!2283370)))

(assert (=> bs!1920741 (= lambda!457894 lambda!457893)))

(assert (=> d!2283372 (= (inv!91516 ct2!378) (forall!18076 (exprs!8710 ct2!378) lambda!457894))))

(declare-fun bs!1920742 () Bool)

(assert (= bs!1920742 d!2283372))

(declare-fun m!8023524 () Bool)

(assert (=> bs!1920742 m!8023524))

(assert (=> start!719270 d!2283372))

(declare-fun b!7369366 () Bool)

(declare-fun lt!2615244 () List!71766)

(declare-fun e!4411855 () Bool)

(assert (=> b!7369366 (= e!4411855 (or (not (= (exprs!8710 ct2!378) Nil!71642)) (= lt!2615244 (exprs!8710 cWitness!61))))))

(declare-fun b!7369365 () Bool)

(declare-fun res!2973792 () Bool)

(assert (=> b!7369365 (=> (not res!2973792) (not e!4411855))))

(assert (=> b!7369365 (= res!2973792 (= (size!42128 lt!2615244) (+ (size!42128 (exprs!8710 cWitness!61)) (size!42128 (exprs!8710 ct2!378)))))))

(declare-fun b!7369363 () Bool)

(declare-fun e!4411856 () List!71766)

(assert (=> b!7369363 (= e!4411856 (exprs!8710 ct2!378))))

(declare-fun d!2283374 () Bool)

(assert (=> d!2283374 e!4411855))

(declare-fun res!2973793 () Bool)

(assert (=> d!2283374 (=> (not res!2973793) (not e!4411855))))

(assert (=> d!2283374 (= res!2973793 (= (content!15150 lt!2615244) (set.union (content!15150 (exprs!8710 cWitness!61)) (content!15150 (exprs!8710 ct2!378)))))))

(assert (=> d!2283374 (= lt!2615244 e!4411856)))

(declare-fun c!1369536 () Bool)

(assert (=> d!2283374 (= c!1369536 (is-Nil!71642 (exprs!8710 cWitness!61)))))

(assert (=> d!2283374 (= (++!17086 (exprs!8710 cWitness!61) (exprs!8710 ct2!378)) lt!2615244)))

(declare-fun b!7369364 () Bool)

(assert (=> b!7369364 (= e!4411856 (Cons!71642 (h!78090 (exprs!8710 cWitness!61)) (++!17086 (t!386223 (exprs!8710 cWitness!61)) (exprs!8710 ct2!378))))))

(assert (= (and d!2283374 c!1369536) b!7369363))

(assert (= (and d!2283374 (not c!1369536)) b!7369364))

(assert (= (and d!2283374 res!2973793) b!7369365))

(assert (= (and b!7369365 res!2973792) b!7369366))

(declare-fun m!8023526 () Bool)

(assert (=> b!7369365 m!8023526))

(declare-fun m!8023528 () Bool)

(assert (=> b!7369365 m!8023528))

(assert (=> b!7369365 m!8023490))

(declare-fun m!8023530 () Bool)

(assert (=> d!2283374 m!8023530))

(declare-fun m!8023532 () Bool)

(assert (=> d!2283374 m!8023532))

(assert (=> d!2283374 m!8023496))

(declare-fun m!8023534 () Bool)

(assert (=> b!7369364 m!8023534))

(assert (=> b!7369233 d!2283374))

(declare-fun bs!1920743 () Bool)

(declare-fun d!2283376 () Bool)

(assert (= bs!1920743 (and d!2283376 b!7369239)))

(declare-fun lambda!457895 () Int)

(assert (=> bs!1920743 (= lambda!457895 lambda!457880)))

(declare-fun bs!1920744 () Bool)

(assert (= bs!1920744 (and d!2283376 d!2283368)))

(assert (=> bs!1920744 (= lambda!457895 lambda!457892)))

(declare-fun bs!1920745 () Bool)

(assert (= bs!1920745 (and d!2283376 d!2283370)))

(assert (=> bs!1920745 (= lambda!457895 lambda!457893)))

(declare-fun bs!1920746 () Bool)

(assert (= bs!1920746 (and d!2283376 d!2283372)))

(assert (=> bs!1920746 (= lambda!457895 lambda!457894)))

(assert (=> d!2283376 (= (inv!91516 lt!2615199) (forall!18076 (exprs!8710 lt!2615199) lambda!457895))))

(declare-fun bs!1920747 () Bool)

(assert (= bs!1920747 d!2283376))

(declare-fun m!8023536 () Bool)

(assert (=> bs!1920747 m!8023536))

(assert (=> b!7369233 d!2283376))

(declare-fun e!4411857 () Bool)

(declare-fun lt!2615246 () List!71766)

(declare-fun b!7369370 () Bool)

(assert (=> b!7369370 (= e!4411857 (or (not (= (exprs!8710 ct2!378) Nil!71642)) (= lt!2615246 lt!2615201)))))

(declare-fun b!7369369 () Bool)

(declare-fun res!2973794 () Bool)

(assert (=> b!7369369 (=> (not res!2973794) (not e!4411857))))

(assert (=> b!7369369 (= res!2973794 (= (size!42128 lt!2615246) (+ (size!42128 lt!2615201) (size!42128 (exprs!8710 ct2!378)))))))

(declare-fun b!7369367 () Bool)

(declare-fun e!4411858 () List!71766)

(assert (=> b!7369367 (= e!4411858 (exprs!8710 ct2!378))))

(declare-fun d!2283378 () Bool)

(assert (=> d!2283378 e!4411857))

(declare-fun res!2973795 () Bool)

(assert (=> d!2283378 (=> (not res!2973795) (not e!4411857))))

(assert (=> d!2283378 (= res!2973795 (= (content!15150 lt!2615246) (set.union (content!15150 lt!2615201) (content!15150 (exprs!8710 ct2!378)))))))

(assert (=> d!2283378 (= lt!2615246 e!4411858)))

(declare-fun c!1369537 () Bool)

(assert (=> d!2283378 (= c!1369537 (is-Nil!71642 lt!2615201))))

(assert (=> d!2283378 (= (++!17086 lt!2615201 (exprs!8710 ct2!378)) lt!2615246)))

(declare-fun b!7369368 () Bool)

(assert (=> b!7369368 (= e!4411858 (Cons!71642 (h!78090 lt!2615201) (++!17086 (t!386223 lt!2615201) (exprs!8710 ct2!378))))))

(assert (= (and d!2283378 c!1369537) b!7369367))

(assert (= (and d!2283378 (not c!1369537)) b!7369368))

(assert (= (and d!2283378 res!2973795) b!7369369))

(assert (= (and b!7369369 res!2973794) b!7369370))

(declare-fun m!8023538 () Bool)

(assert (=> b!7369369 m!8023538))

(declare-fun m!8023540 () Bool)

(assert (=> b!7369369 m!8023540))

(assert (=> b!7369369 m!8023490))

(declare-fun m!8023542 () Bool)

(assert (=> d!2283378 m!8023542))

(declare-fun m!8023544 () Bool)

(assert (=> d!2283378 m!8023544))

(assert (=> d!2283378 m!8023496))

(declare-fun m!8023546 () Bool)

(assert (=> b!7369368 m!8023546))

(assert (=> b!7369233 d!2283378))

(declare-fun bm!676555 () Bool)

(declare-fun call!676562 () List!71766)

(declare-fun call!676560 () List!71766)

(assert (=> bm!676555 (= call!676562 call!676560)))

(declare-fun b!7369371 () Bool)

(declare-fun e!4411861 () (Set Context!16420))

(declare-fun call!676565 () (Set Context!16420))

(declare-fun call!676561 () (Set Context!16420))

(assert (=> b!7369371 (= e!4411861 (set.union call!676565 call!676561))))

(declare-fun b!7369372 () Bool)

(declare-fun e!4411863 () (Set Context!16420))

(assert (=> b!7369372 (= e!4411863 (as set.empty (Set Context!16420)))))

(declare-fun b!7369373 () Bool)

(declare-fun e!4411860 () (Set Context!16420))

(declare-fun e!4411862 () (Set Context!16420))

(assert (=> b!7369373 (= e!4411860 e!4411862)))

(declare-fun c!1369541 () Bool)

(assert (=> b!7369373 (= c!1369541 (is-Union!19270 (regOne!39052 r1!2370)))))

(declare-fun b!7369374 () Bool)

(declare-fun c!1369542 () Bool)

(declare-fun e!4411864 () Bool)

(assert (=> b!7369374 (= c!1369542 e!4411864)))

(declare-fun res!2973796 () Bool)

(assert (=> b!7369374 (=> (not res!2973796) (not e!4411864))))

(assert (=> b!7369374 (= res!2973796 (is-Concat!28115 (regOne!39052 r1!2370)))))

(assert (=> b!7369374 (= e!4411862 e!4411861)))

(declare-fun b!7369375 () Bool)

(declare-fun e!4411859 () (Set Context!16420))

(assert (=> b!7369375 (= e!4411861 e!4411859)))

(declare-fun c!1369538 () Bool)

(assert (=> b!7369375 (= c!1369538 (is-Concat!28115 (regOne!39052 r1!2370)))))

(declare-fun b!7369376 () Bool)

(declare-fun call!676563 () (Set Context!16420))

(assert (=> b!7369376 (= e!4411863 call!676563)))

(declare-fun bm!676556 () Bool)

(assert (=> bm!676556 (= call!676565 (derivationStepZipperDown!3096 (ite c!1369541 (regOne!39053 (regOne!39052 r1!2370)) (regOne!39052 (regOne!39052 r1!2370))) (ite c!1369541 (Context!16421 (++!17086 lt!2615201 (exprs!8710 ct2!378))) (Context!16421 call!676560)) c!10362))))

(declare-fun call!676564 () (Set Context!16420))

(declare-fun bm!676557 () Bool)

(assert (=> bm!676557 (= call!676564 (derivationStepZipperDown!3096 (ite c!1369541 (regTwo!39053 (regOne!39052 r1!2370)) (ite c!1369542 (regTwo!39052 (regOne!39052 r1!2370)) (ite c!1369538 (regOne!39052 (regOne!39052 r1!2370)) (reg!19599 (regOne!39052 r1!2370))))) (ite (or c!1369541 c!1369542) (Context!16421 (++!17086 lt!2615201 (exprs!8710 ct2!378))) (Context!16421 call!676562)) c!10362))))

(declare-fun b!7369377 () Bool)

(declare-fun c!1369539 () Bool)

(assert (=> b!7369377 (= c!1369539 (is-Star!19270 (regOne!39052 r1!2370)))))

(assert (=> b!7369377 (= e!4411859 e!4411863)))

(declare-fun b!7369378 () Bool)

(assert (=> b!7369378 (= e!4411862 (set.union call!676565 call!676564))))

(declare-fun b!7369379 () Bool)

(assert (=> b!7369379 (= e!4411859 call!676563)))

(declare-fun d!2283380 () Bool)

(declare-fun c!1369540 () Bool)

(assert (=> d!2283380 (= c!1369540 (and (is-ElementMatch!19270 (regOne!39052 r1!2370)) (= (c!1369508 (regOne!39052 r1!2370)) c!10362)))))

(assert (=> d!2283380 (= (derivationStepZipperDown!3096 (regOne!39052 r1!2370) (Context!16421 (++!17086 lt!2615201 (exprs!8710 ct2!378))) c!10362) e!4411860)))

(declare-fun b!7369380 () Bool)

(assert (=> b!7369380 (= e!4411864 (nullable!8346 (regOne!39052 (regOne!39052 r1!2370))))))

(declare-fun b!7369381 () Bool)

(assert (=> b!7369381 (= e!4411860 (set.insert (Context!16421 (++!17086 lt!2615201 (exprs!8710 ct2!378))) (as set.empty (Set Context!16420))))))

(declare-fun bm!676558 () Bool)

(assert (=> bm!676558 (= call!676563 call!676561)))

(declare-fun bm!676559 () Bool)

(assert (=> bm!676559 (= call!676560 ($colon$colon!3252 (exprs!8710 (Context!16421 (++!17086 lt!2615201 (exprs!8710 ct2!378)))) (ite (or c!1369542 c!1369538) (regTwo!39052 (regOne!39052 r1!2370)) (regOne!39052 r1!2370))))))

(declare-fun bm!676560 () Bool)

(assert (=> bm!676560 (= call!676561 call!676564)))

(assert (= (and d!2283380 c!1369540) b!7369381))

(assert (= (and d!2283380 (not c!1369540)) b!7369373))

(assert (= (and b!7369373 c!1369541) b!7369378))

(assert (= (and b!7369373 (not c!1369541)) b!7369374))

(assert (= (and b!7369374 res!2973796) b!7369380))

(assert (= (and b!7369374 c!1369542) b!7369371))

(assert (= (and b!7369374 (not c!1369542)) b!7369375))

(assert (= (and b!7369375 c!1369538) b!7369379))

(assert (= (and b!7369375 (not c!1369538)) b!7369377))

(assert (= (and b!7369377 c!1369539) b!7369376))

(assert (= (and b!7369377 (not c!1369539)) b!7369372))

(assert (= (or b!7369379 b!7369376) bm!676555))

(assert (= (or b!7369379 b!7369376) bm!676558))

(assert (= (or b!7369371 bm!676558) bm!676560))

(assert (= (or b!7369371 bm!676555) bm!676559))

(assert (= (or b!7369378 bm!676560) bm!676557))

(assert (= (or b!7369378 b!7369371) bm!676556))

(declare-fun m!8023554 () Bool)

(assert (=> bm!676556 m!8023554))

(declare-fun m!8023556 () Bool)

(assert (=> b!7369381 m!8023556))

(declare-fun m!8023558 () Bool)

(assert (=> bm!676557 m!8023558))

(declare-fun m!8023560 () Bool)

(assert (=> b!7369380 m!8023560))

(declare-fun m!8023562 () Bool)

(assert (=> bm!676559 m!8023562))

(assert (=> b!7369233 d!2283380))

(declare-fun d!2283384 () Bool)

(assert (=> d!2283384 (forall!18076 (++!17086 (exprs!8710 cWitness!61) (exprs!8710 ct2!378)) lambda!457880)))

(declare-fun lt!2615247 () Unit!165489)

(assert (=> d!2283384 (= lt!2615247 (choose!57293 (exprs!8710 cWitness!61) (exprs!8710 ct2!378) lambda!457880))))

(assert (=> d!2283384 (forall!18076 (exprs!8710 cWitness!61) lambda!457880)))

(assert (=> d!2283384 (= (lemmaConcatPreservesForall!1943 (exprs!8710 cWitness!61) (exprs!8710 ct2!378) lambda!457880) lt!2615247)))

(declare-fun bs!1920749 () Bool)

(assert (= bs!1920749 d!2283384))

(assert (=> bs!1920749 m!8023414))

(assert (=> bs!1920749 m!8023414))

(declare-fun m!8023564 () Bool)

(assert (=> bs!1920749 m!8023564))

(declare-fun m!8023566 () Bool)

(assert (=> bs!1920749 m!8023566))

(declare-fun m!8023568 () Bool)

(assert (=> bs!1920749 m!8023568))

(assert (=> b!7369233 d!2283384))

(declare-fun bs!1920752 () Bool)

(declare-fun d!2283386 () Bool)

(assert (= bs!1920752 (and d!2283386 d!2283370)))

(declare-fun lambda!457903 () Int)

(assert (=> bs!1920752 (= lambda!457903 lambda!457893)))

(declare-fun bs!1920753 () Bool)

(assert (= bs!1920753 (and d!2283386 d!2283368)))

(assert (=> bs!1920753 (= lambda!457903 lambda!457892)))

(declare-fun bs!1920754 () Bool)

(assert (= bs!1920754 (and d!2283386 d!2283372)))

(assert (=> bs!1920754 (= lambda!457903 lambda!457894)))

(declare-fun bs!1920755 () Bool)

(assert (= bs!1920755 (and d!2283386 b!7369239)))

(assert (=> bs!1920755 (= lambda!457903 lambda!457880)))

(declare-fun bs!1920756 () Bool)

(assert (= bs!1920756 (and d!2283386 d!2283376)))

(assert (=> bs!1920756 (= lambda!457903 lambda!457895)))

(assert (=> d!2283386 (set.member (Context!16421 (++!17086 (exprs!8710 cWitness!61) (exprs!8710 ct2!378))) (derivationStepZipperDown!3096 (regOne!39052 r1!2370) (Context!16421 (++!17086 (exprs!8710 lt!2615195) (exprs!8710 ct2!378))) c!10362))))

(declare-fun lt!2615256 () Unit!165489)

(assert (=> d!2283386 (= lt!2615256 (lemmaConcatPreservesForall!1943 (exprs!8710 lt!2615195) (exprs!8710 ct2!378) lambda!457903))))

(declare-fun lt!2615255 () Unit!165489)

(assert (=> d!2283386 (= lt!2615255 (lemmaConcatPreservesForall!1943 (exprs!8710 cWitness!61) (exprs!8710 ct2!378) lambda!457903))))

(declare-fun lt!2615254 () Unit!165489)

(declare-fun choose!57294 (Regex!19270 Context!16420 Context!16420 Context!16420 C!38814) Unit!165489)

(assert (=> d!2283386 (= lt!2615254 (choose!57294 (regOne!39052 r1!2370) lt!2615195 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2283386 (validRegex!9866 (regOne!39052 r1!2370))))

(assert (=> d!2283386 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!129 (regOne!39052 r1!2370) lt!2615195 ct2!378 cWitness!61 c!10362) lt!2615254)))

(declare-fun bs!1920757 () Bool)

(assert (= bs!1920757 d!2283386))

(declare-fun m!8023572 () Bool)

(assert (=> bs!1920757 m!8023572))

(declare-fun m!8023574 () Bool)

(assert (=> bs!1920757 m!8023574))

(declare-fun m!8023576 () Bool)

(assert (=> bs!1920757 m!8023576))

(assert (=> bs!1920757 m!8023414))

(declare-fun m!8023578 () Bool)

(assert (=> bs!1920757 m!8023578))

(declare-fun m!8023580 () Bool)

(assert (=> bs!1920757 m!8023580))

(declare-fun m!8023582 () Bool)

(assert (=> bs!1920757 m!8023582))

(declare-fun m!8023584 () Bool)

(assert (=> bs!1920757 m!8023584))

(assert (=> b!7369233 d!2283386))

(declare-fun d!2283390 () Bool)

(assert (=> d!2283390 (forall!18076 (++!17086 lt!2615201 (exprs!8710 ct2!378)) lambda!457880)))

(declare-fun lt!2615257 () Unit!165489)

(assert (=> d!2283390 (= lt!2615257 (choose!57293 lt!2615201 (exprs!8710 ct2!378) lambda!457880))))

(assert (=> d!2283390 (forall!18076 lt!2615201 lambda!457880)))

(assert (=> d!2283390 (= (lemmaConcatPreservesForall!1943 lt!2615201 (exprs!8710 ct2!378) lambda!457880) lt!2615257)))

(declare-fun bs!1920758 () Bool)

(assert (= bs!1920758 d!2283390))

(assert (=> bs!1920758 m!8023412))

(assert (=> bs!1920758 m!8023412))

(declare-fun m!8023586 () Bool)

(assert (=> bs!1920758 m!8023586))

(declare-fun m!8023588 () Bool)

(assert (=> bs!1920758 m!8023588))

(declare-fun m!8023590 () Bool)

(assert (=> bs!1920758 m!8023590))

(assert (=> b!7369233 d!2283390))

(declare-fun bm!676561 () Bool)

(declare-fun call!676568 () List!71766)

(declare-fun call!676566 () List!71766)

(assert (=> bm!676561 (= call!676568 call!676566)))

(declare-fun b!7369382 () Bool)

(declare-fun e!4411867 () (Set Context!16420))

(declare-fun call!676571 () (Set Context!16420))

(declare-fun call!676567 () (Set Context!16420))

(assert (=> b!7369382 (= e!4411867 (set.union call!676571 call!676567))))

(declare-fun b!7369383 () Bool)

(declare-fun e!4411869 () (Set Context!16420))

(assert (=> b!7369383 (= e!4411869 (as set.empty (Set Context!16420)))))

(declare-fun b!7369384 () Bool)

(declare-fun e!4411866 () (Set Context!16420))

(declare-fun e!4411868 () (Set Context!16420))

(assert (=> b!7369384 (= e!4411866 e!4411868)))

(declare-fun c!1369547 () Bool)

(assert (=> b!7369384 (= c!1369547 (is-Union!19270 (regTwo!39052 r1!2370)))))

(declare-fun b!7369385 () Bool)

(declare-fun c!1369548 () Bool)

(declare-fun e!4411870 () Bool)

(assert (=> b!7369385 (= c!1369548 e!4411870)))

(declare-fun res!2973797 () Bool)

(assert (=> b!7369385 (=> (not res!2973797) (not e!4411870))))

(assert (=> b!7369385 (= res!2973797 (is-Concat!28115 (regTwo!39052 r1!2370)))))

(assert (=> b!7369385 (= e!4411868 e!4411867)))

(declare-fun b!7369386 () Bool)

(declare-fun e!4411865 () (Set Context!16420))

(assert (=> b!7369386 (= e!4411867 e!4411865)))

(declare-fun c!1369544 () Bool)

(assert (=> b!7369386 (= c!1369544 (is-Concat!28115 (regTwo!39052 r1!2370)))))

(declare-fun b!7369387 () Bool)

(declare-fun call!676569 () (Set Context!16420))

(assert (=> b!7369387 (= e!4411869 call!676569)))

(declare-fun bm!676562 () Bool)

(assert (=> bm!676562 (= call!676571 (derivationStepZipperDown!3096 (ite c!1369547 (regOne!39053 (regTwo!39052 r1!2370)) (regOne!39052 (regTwo!39052 r1!2370))) (ite c!1369547 ct1!282 (Context!16421 call!676566)) c!10362))))

(declare-fun call!676570 () (Set Context!16420))

(declare-fun bm!676563 () Bool)

(assert (=> bm!676563 (= call!676570 (derivationStepZipperDown!3096 (ite c!1369547 (regTwo!39053 (regTwo!39052 r1!2370)) (ite c!1369548 (regTwo!39052 (regTwo!39052 r1!2370)) (ite c!1369544 (regOne!39052 (regTwo!39052 r1!2370)) (reg!19599 (regTwo!39052 r1!2370))))) (ite (or c!1369547 c!1369548) ct1!282 (Context!16421 call!676568)) c!10362))))

(declare-fun b!7369388 () Bool)

(declare-fun c!1369545 () Bool)

(assert (=> b!7369388 (= c!1369545 (is-Star!19270 (regTwo!39052 r1!2370)))))

(assert (=> b!7369388 (= e!4411865 e!4411869)))

(declare-fun b!7369389 () Bool)

(assert (=> b!7369389 (= e!4411868 (set.union call!676571 call!676570))))

(declare-fun b!7369390 () Bool)

(assert (=> b!7369390 (= e!4411865 call!676569)))

(declare-fun d!2283392 () Bool)

(declare-fun c!1369546 () Bool)

(assert (=> d!2283392 (= c!1369546 (and (is-ElementMatch!19270 (regTwo!39052 r1!2370)) (= (c!1369508 (regTwo!39052 r1!2370)) c!10362)))))

(assert (=> d!2283392 (= (derivationStepZipperDown!3096 (regTwo!39052 r1!2370) ct1!282 c!10362) e!4411866)))

(declare-fun b!7369391 () Bool)

(assert (=> b!7369391 (= e!4411870 (nullable!8346 (regOne!39052 (regTwo!39052 r1!2370))))))

(declare-fun b!7369392 () Bool)

(assert (=> b!7369392 (= e!4411866 (set.insert ct1!282 (as set.empty (Set Context!16420))))))

(declare-fun bm!676564 () Bool)

(assert (=> bm!676564 (= call!676569 call!676567)))

(declare-fun bm!676565 () Bool)

(assert (=> bm!676565 (= call!676566 ($colon$colon!3252 (exprs!8710 ct1!282) (ite (or c!1369548 c!1369544) (regTwo!39052 (regTwo!39052 r1!2370)) (regTwo!39052 r1!2370))))))

(declare-fun bm!676566 () Bool)

(assert (=> bm!676566 (= call!676567 call!676570)))

(assert (= (and d!2283392 c!1369546) b!7369392))

(assert (= (and d!2283392 (not c!1369546)) b!7369384))

(assert (= (and b!7369384 c!1369547) b!7369389))

(assert (= (and b!7369384 (not c!1369547)) b!7369385))

(assert (= (and b!7369385 res!2973797) b!7369391))

(assert (= (and b!7369385 c!1369548) b!7369382))

(assert (= (and b!7369385 (not c!1369548)) b!7369386))

(assert (= (and b!7369386 c!1369544) b!7369390))

(assert (= (and b!7369386 (not c!1369544)) b!7369388))

(assert (= (and b!7369388 c!1369545) b!7369387))

(assert (= (and b!7369388 (not c!1369545)) b!7369383))

(assert (= (or b!7369390 b!7369387) bm!676561))

(assert (= (or b!7369390 b!7369387) bm!676564))

(assert (= (or b!7369382 bm!676564) bm!676566))

(assert (= (or b!7369382 bm!676561) bm!676565))

(assert (= (or b!7369389 bm!676566) bm!676563))

(assert (= (or b!7369389 b!7369382) bm!676562))

(declare-fun m!8023592 () Bool)

(assert (=> bm!676562 m!8023592))

(declare-fun m!8023594 () Bool)

(assert (=> b!7369392 m!8023594))

(declare-fun m!8023596 () Bool)

(assert (=> bm!676563 m!8023596))

(declare-fun m!8023598 () Bool)

(assert (=> b!7369391 m!8023598))

(declare-fun m!8023600 () Bool)

(assert (=> bm!676565 m!8023600))

(assert (=> b!7369236 d!2283392))

(declare-fun bm!676567 () Bool)

(declare-fun call!676574 () List!71766)

(declare-fun call!676572 () List!71766)

(assert (=> bm!676567 (= call!676574 call!676572)))

(declare-fun b!7369397 () Bool)

(declare-fun e!4411875 () (Set Context!16420))

(declare-fun call!676577 () (Set Context!16420))

(declare-fun call!676573 () (Set Context!16420))

(assert (=> b!7369397 (= e!4411875 (set.union call!676577 call!676573))))

(declare-fun b!7369398 () Bool)

(declare-fun e!4411877 () (Set Context!16420))

(assert (=> b!7369398 (= e!4411877 (as set.empty (Set Context!16420)))))

(declare-fun b!7369399 () Bool)

(declare-fun e!4411874 () (Set Context!16420))

(declare-fun e!4411876 () (Set Context!16420))

(assert (=> b!7369399 (= e!4411874 e!4411876)))

(declare-fun c!1369554 () Bool)

(assert (=> b!7369399 (= c!1369554 (is-Union!19270 (regOne!39052 r1!2370)))))

(declare-fun b!7369400 () Bool)

(declare-fun c!1369555 () Bool)

(declare-fun e!4411878 () Bool)

(assert (=> b!7369400 (= c!1369555 e!4411878)))

(declare-fun res!2973798 () Bool)

(assert (=> b!7369400 (=> (not res!2973798) (not e!4411878))))

(assert (=> b!7369400 (= res!2973798 (is-Concat!28115 (regOne!39052 r1!2370)))))

(assert (=> b!7369400 (= e!4411876 e!4411875)))

(declare-fun b!7369401 () Bool)

(declare-fun e!4411873 () (Set Context!16420))

(assert (=> b!7369401 (= e!4411875 e!4411873)))

(declare-fun c!1369551 () Bool)

(assert (=> b!7369401 (= c!1369551 (is-Concat!28115 (regOne!39052 r1!2370)))))

(declare-fun b!7369402 () Bool)

(declare-fun call!676575 () (Set Context!16420))

(assert (=> b!7369402 (= e!4411877 call!676575)))

(declare-fun bm!676568 () Bool)

(assert (=> bm!676568 (= call!676577 (derivationStepZipperDown!3096 (ite c!1369554 (regOne!39053 (regOne!39052 r1!2370)) (regOne!39052 (regOne!39052 r1!2370))) (ite c!1369554 lt!2615195 (Context!16421 call!676572)) c!10362))))

(declare-fun bm!676569 () Bool)

(declare-fun call!676576 () (Set Context!16420))

(assert (=> bm!676569 (= call!676576 (derivationStepZipperDown!3096 (ite c!1369554 (regTwo!39053 (regOne!39052 r1!2370)) (ite c!1369555 (regTwo!39052 (regOne!39052 r1!2370)) (ite c!1369551 (regOne!39052 (regOne!39052 r1!2370)) (reg!19599 (regOne!39052 r1!2370))))) (ite (or c!1369554 c!1369555) lt!2615195 (Context!16421 call!676574)) c!10362))))

(declare-fun b!7369403 () Bool)

(declare-fun c!1369552 () Bool)

(assert (=> b!7369403 (= c!1369552 (is-Star!19270 (regOne!39052 r1!2370)))))

(assert (=> b!7369403 (= e!4411873 e!4411877)))

(declare-fun b!7369404 () Bool)

(assert (=> b!7369404 (= e!4411876 (set.union call!676577 call!676576))))

(declare-fun b!7369405 () Bool)

(assert (=> b!7369405 (= e!4411873 call!676575)))

(declare-fun d!2283394 () Bool)

(declare-fun c!1369553 () Bool)

(assert (=> d!2283394 (= c!1369553 (and (is-ElementMatch!19270 (regOne!39052 r1!2370)) (= (c!1369508 (regOne!39052 r1!2370)) c!10362)))))

(assert (=> d!2283394 (= (derivationStepZipperDown!3096 (regOne!39052 r1!2370) lt!2615195 c!10362) e!4411874)))

(declare-fun b!7369406 () Bool)

(assert (=> b!7369406 (= e!4411878 (nullable!8346 (regOne!39052 (regOne!39052 r1!2370))))))

(declare-fun b!7369407 () Bool)

(assert (=> b!7369407 (= e!4411874 (set.insert lt!2615195 (as set.empty (Set Context!16420))))))

(declare-fun bm!676570 () Bool)

(assert (=> bm!676570 (= call!676575 call!676573)))

(declare-fun bm!676571 () Bool)

(assert (=> bm!676571 (= call!676572 ($colon$colon!3252 (exprs!8710 lt!2615195) (ite (or c!1369555 c!1369551) (regTwo!39052 (regOne!39052 r1!2370)) (regOne!39052 r1!2370))))))

(declare-fun bm!676572 () Bool)

(assert (=> bm!676572 (= call!676573 call!676576)))

(assert (= (and d!2283394 c!1369553) b!7369407))

(assert (= (and d!2283394 (not c!1369553)) b!7369399))

(assert (= (and b!7369399 c!1369554) b!7369404))

(assert (= (and b!7369399 (not c!1369554)) b!7369400))

(assert (= (and b!7369400 res!2973798) b!7369406))

(assert (= (and b!7369400 c!1369555) b!7369397))

(assert (= (and b!7369400 (not c!1369555)) b!7369401))

(assert (= (and b!7369401 c!1369551) b!7369405))

(assert (= (and b!7369401 (not c!1369551)) b!7369403))

(assert (= (and b!7369403 c!1369552) b!7369402))

(assert (= (and b!7369403 (not c!1369552)) b!7369398))

(assert (= (or b!7369405 b!7369402) bm!676567))

(assert (= (or b!7369405 b!7369402) bm!676570))

(assert (= (or b!7369397 bm!676570) bm!676572))

(assert (= (or b!7369397 bm!676567) bm!676571))

(assert (= (or b!7369404 bm!676572) bm!676569))

(assert (= (or b!7369404 b!7369397) bm!676568))

(declare-fun m!8023602 () Bool)

(assert (=> bm!676568 m!8023602))

(declare-fun m!8023604 () Bool)

(assert (=> b!7369407 m!8023604))

(declare-fun m!8023606 () Bool)

(assert (=> bm!676569 m!8023606))

(assert (=> b!7369406 m!8023560))

(declare-fun m!8023608 () Bool)

(assert (=> bm!676571 m!8023608))

(assert (=> b!7369236 d!2283394))

(declare-fun d!2283396 () Bool)

(assert (=> d!2283396 (= ($colon$colon!3252 (exprs!8710 ct1!282) (regTwo!39052 r1!2370)) (Cons!71642 (regTwo!39052 r1!2370) (exprs!8710 ct1!282)))))

(assert (=> b!7369236 d!2283396))

(declare-fun bm!676573 () Bool)

(declare-fun call!676580 () List!71766)

(declare-fun call!676578 () List!71766)

(assert (=> bm!676573 (= call!676580 call!676578)))

(declare-fun b!7369412 () Bool)

(declare-fun e!4411883 () (Set Context!16420))

(declare-fun call!676583 () (Set Context!16420))

(declare-fun call!676579 () (Set Context!16420))

(assert (=> b!7369412 (= e!4411883 (set.union call!676583 call!676579))))

(declare-fun b!7369413 () Bool)

(declare-fun e!4411885 () (Set Context!16420))

(assert (=> b!7369413 (= e!4411885 (as set.empty (Set Context!16420)))))

(declare-fun b!7369414 () Bool)

(declare-fun e!4411882 () (Set Context!16420))

(declare-fun e!4411884 () (Set Context!16420))

(assert (=> b!7369414 (= e!4411882 e!4411884)))

(declare-fun c!1369559 () Bool)

(assert (=> b!7369414 (= c!1369559 (is-Union!19270 r1!2370))))

(declare-fun b!7369415 () Bool)

(declare-fun c!1369560 () Bool)

(declare-fun e!4411886 () Bool)

(assert (=> b!7369415 (= c!1369560 e!4411886)))

(declare-fun res!2973803 () Bool)

(assert (=> b!7369415 (=> (not res!2973803) (not e!4411886))))

(assert (=> b!7369415 (= res!2973803 (is-Concat!28115 r1!2370))))

(assert (=> b!7369415 (= e!4411884 e!4411883)))

(declare-fun b!7369416 () Bool)

(declare-fun e!4411881 () (Set Context!16420))

(assert (=> b!7369416 (= e!4411883 e!4411881)))

(declare-fun c!1369556 () Bool)

(assert (=> b!7369416 (= c!1369556 (is-Concat!28115 r1!2370))))

(declare-fun b!7369417 () Bool)

(declare-fun call!676581 () (Set Context!16420))

(assert (=> b!7369417 (= e!4411885 call!676581)))

(declare-fun bm!676574 () Bool)

(assert (=> bm!676574 (= call!676583 (derivationStepZipperDown!3096 (ite c!1369559 (regOne!39053 r1!2370) (regOne!39052 r1!2370)) (ite c!1369559 ct1!282 (Context!16421 call!676578)) c!10362))))

(declare-fun bm!676575 () Bool)

(declare-fun call!676582 () (Set Context!16420))

(assert (=> bm!676575 (= call!676582 (derivationStepZipperDown!3096 (ite c!1369559 (regTwo!39053 r1!2370) (ite c!1369560 (regTwo!39052 r1!2370) (ite c!1369556 (regOne!39052 r1!2370) (reg!19599 r1!2370)))) (ite (or c!1369559 c!1369560) ct1!282 (Context!16421 call!676580)) c!10362))))

(declare-fun b!7369418 () Bool)

(declare-fun c!1369557 () Bool)

(assert (=> b!7369418 (= c!1369557 (is-Star!19270 r1!2370))))

(assert (=> b!7369418 (= e!4411881 e!4411885)))

(declare-fun b!7369419 () Bool)

(assert (=> b!7369419 (= e!4411884 (set.union call!676583 call!676582))))

(declare-fun b!7369420 () Bool)

(assert (=> b!7369420 (= e!4411881 call!676581)))

(declare-fun d!2283398 () Bool)

(declare-fun c!1369558 () Bool)

(assert (=> d!2283398 (= c!1369558 (and (is-ElementMatch!19270 r1!2370) (= (c!1369508 r1!2370) c!10362)))))

(assert (=> d!2283398 (= (derivationStepZipperDown!3096 r1!2370 ct1!282 c!10362) e!4411882)))

(declare-fun b!7369421 () Bool)

(assert (=> b!7369421 (= e!4411886 (nullable!8346 (regOne!39052 r1!2370)))))

(declare-fun b!7369422 () Bool)

(assert (=> b!7369422 (= e!4411882 (set.insert ct1!282 (as set.empty (Set Context!16420))))))

(declare-fun bm!676576 () Bool)

(assert (=> bm!676576 (= call!676581 call!676579)))

(declare-fun bm!676577 () Bool)

(assert (=> bm!676577 (= call!676578 ($colon$colon!3252 (exprs!8710 ct1!282) (ite (or c!1369560 c!1369556) (regTwo!39052 r1!2370) r1!2370)))))

(declare-fun bm!676578 () Bool)

(assert (=> bm!676578 (= call!676579 call!676582)))

(assert (= (and d!2283398 c!1369558) b!7369422))

(assert (= (and d!2283398 (not c!1369558)) b!7369414))

(assert (= (and b!7369414 c!1369559) b!7369419))

(assert (= (and b!7369414 (not c!1369559)) b!7369415))

(assert (= (and b!7369415 res!2973803) b!7369421))

(assert (= (and b!7369415 c!1369560) b!7369412))

(assert (= (and b!7369415 (not c!1369560)) b!7369416))

(assert (= (and b!7369416 c!1369556) b!7369420))

(assert (= (and b!7369416 (not c!1369556)) b!7369418))

(assert (= (and b!7369418 c!1369557) b!7369417))

(assert (= (and b!7369418 (not c!1369557)) b!7369413))

(assert (= (or b!7369420 b!7369417) bm!676573))

(assert (= (or b!7369420 b!7369417) bm!676576))

(assert (= (or b!7369412 bm!676576) bm!676578))

(assert (= (or b!7369412 bm!676573) bm!676577))

(assert (= (or b!7369419 bm!676578) bm!676575))

(assert (= (or b!7369419 b!7369412) bm!676574))

(declare-fun m!8023610 () Bool)

(assert (=> bm!676574 m!8023610))

(assert (=> b!7369422 m!8023594))

(declare-fun m!8023612 () Bool)

(assert (=> bm!676575 m!8023612))

(assert (=> b!7369421 m!8023392))

(declare-fun m!8023614 () Bool)

(assert (=> bm!676577 m!8023614))

(assert (=> b!7369226 d!2283398))

(declare-fun b!7369434 () Bool)

(declare-fun e!4411889 () Bool)

(declare-fun tp!2094837 () Bool)

(declare-fun tp!2094839 () Bool)

(assert (=> b!7369434 (= e!4411889 (and tp!2094837 tp!2094839))))

(declare-fun b!7369433 () Bool)

(assert (=> b!7369433 (= e!4411889 tp_is_empty!48785)))

(declare-fun b!7369435 () Bool)

(declare-fun tp!2094840 () Bool)

(assert (=> b!7369435 (= e!4411889 tp!2094840)))

(assert (=> b!7369228 (= tp!2094794 e!4411889)))

(declare-fun b!7369436 () Bool)

(declare-fun tp!2094836 () Bool)

(declare-fun tp!2094838 () Bool)

(assert (=> b!7369436 (= e!4411889 (and tp!2094836 tp!2094838))))

(assert (= (and b!7369228 (is-ElementMatch!19270 (reg!19599 r1!2370))) b!7369433))

(assert (= (and b!7369228 (is-Concat!28115 (reg!19599 r1!2370))) b!7369434))

(assert (= (and b!7369228 (is-Star!19270 (reg!19599 r1!2370))) b!7369435))

(assert (= (and b!7369228 (is-Union!19270 (reg!19599 r1!2370))) b!7369436))

(declare-fun b!7369441 () Bool)

(declare-fun e!4411892 () Bool)

(declare-fun tp!2094845 () Bool)

(declare-fun tp!2094846 () Bool)

(assert (=> b!7369441 (= e!4411892 (and tp!2094845 tp!2094846))))

(assert (=> b!7369232 (= tp!2094800 e!4411892)))

(assert (= (and b!7369232 (is-Cons!71642 (exprs!8710 cWitness!61))) b!7369441))

(declare-fun b!7369442 () Bool)

(declare-fun e!4411893 () Bool)

(declare-fun tp!2094847 () Bool)

(declare-fun tp!2094848 () Bool)

(assert (=> b!7369442 (= e!4411893 (and tp!2094847 tp!2094848))))

(assert (=> b!7369238 (= tp!2094798 e!4411893)))

(assert (= (and b!7369238 (is-Cons!71642 (exprs!8710 ct1!282))) b!7369442))

(declare-fun b!7369443 () Bool)

(declare-fun e!4411894 () Bool)

(declare-fun tp!2094849 () Bool)

(declare-fun tp!2094850 () Bool)

(assert (=> b!7369443 (= e!4411894 (and tp!2094849 tp!2094850))))

(assert (=> b!7369231 (= tp!2094801 e!4411894)))

(assert (= (and b!7369231 (is-Cons!71642 (exprs!8710 ct2!378))) b!7369443))

(declare-fun b!7369445 () Bool)

(declare-fun e!4411895 () Bool)

(declare-fun tp!2094852 () Bool)

(declare-fun tp!2094854 () Bool)

(assert (=> b!7369445 (= e!4411895 (and tp!2094852 tp!2094854))))

(declare-fun b!7369444 () Bool)

(assert (=> b!7369444 (= e!4411895 tp_is_empty!48785)))

(declare-fun b!7369446 () Bool)

(declare-fun tp!2094855 () Bool)

(assert (=> b!7369446 (= e!4411895 tp!2094855)))

(assert (=> b!7369237 (= tp!2094797 e!4411895)))

(declare-fun b!7369447 () Bool)

(declare-fun tp!2094851 () Bool)

(declare-fun tp!2094853 () Bool)

(assert (=> b!7369447 (= e!4411895 (and tp!2094851 tp!2094853))))

(assert (= (and b!7369237 (is-ElementMatch!19270 (regOne!39052 r1!2370))) b!7369444))

(assert (= (and b!7369237 (is-Concat!28115 (regOne!39052 r1!2370))) b!7369445))

(assert (= (and b!7369237 (is-Star!19270 (regOne!39052 r1!2370))) b!7369446))

(assert (= (and b!7369237 (is-Union!19270 (regOne!39052 r1!2370))) b!7369447))

(declare-fun b!7369449 () Bool)

(declare-fun e!4411896 () Bool)

(declare-fun tp!2094857 () Bool)

(declare-fun tp!2094859 () Bool)

(assert (=> b!7369449 (= e!4411896 (and tp!2094857 tp!2094859))))

(declare-fun b!7369448 () Bool)

(assert (=> b!7369448 (= e!4411896 tp_is_empty!48785)))

(declare-fun b!7369450 () Bool)

(declare-fun tp!2094860 () Bool)

(assert (=> b!7369450 (= e!4411896 tp!2094860)))

(assert (=> b!7369237 (= tp!2094796 e!4411896)))

(declare-fun b!7369451 () Bool)

(declare-fun tp!2094856 () Bool)

(declare-fun tp!2094858 () Bool)

(assert (=> b!7369451 (= e!4411896 (and tp!2094856 tp!2094858))))

(assert (= (and b!7369237 (is-ElementMatch!19270 (regTwo!39052 r1!2370))) b!7369448))

(assert (= (and b!7369237 (is-Concat!28115 (regTwo!39052 r1!2370))) b!7369449))

(assert (= (and b!7369237 (is-Star!19270 (regTwo!39052 r1!2370))) b!7369450))

(assert (= (and b!7369237 (is-Union!19270 (regTwo!39052 r1!2370))) b!7369451))

(declare-fun b!7369457 () Bool)

(declare-fun e!4411899 () Bool)

(declare-fun tp!2094862 () Bool)

(declare-fun tp!2094864 () Bool)

(assert (=> b!7369457 (= e!4411899 (and tp!2094862 tp!2094864))))

(declare-fun b!7369455 () Bool)

(assert (=> b!7369455 (= e!4411899 tp_is_empty!48785)))

(declare-fun b!7369458 () Bool)

(declare-fun tp!2094865 () Bool)

(assert (=> b!7369458 (= e!4411899 tp!2094865)))

(assert (=> b!7369230 (= tp!2094799 e!4411899)))

(declare-fun b!7369459 () Bool)

(declare-fun tp!2094861 () Bool)

(declare-fun tp!2094863 () Bool)

(assert (=> b!7369459 (= e!4411899 (and tp!2094861 tp!2094863))))

(assert (= (and b!7369230 (is-ElementMatch!19270 (regOne!39053 r1!2370))) b!7369455))

(assert (= (and b!7369230 (is-Concat!28115 (regOne!39053 r1!2370))) b!7369457))

(assert (= (and b!7369230 (is-Star!19270 (regOne!39053 r1!2370))) b!7369458))

(assert (= (and b!7369230 (is-Union!19270 (regOne!39053 r1!2370))) b!7369459))

(declare-fun b!7369461 () Bool)

(declare-fun e!4411900 () Bool)

(declare-fun tp!2094867 () Bool)

(declare-fun tp!2094869 () Bool)

(assert (=> b!7369461 (= e!4411900 (and tp!2094867 tp!2094869))))

(declare-fun b!7369460 () Bool)

(assert (=> b!7369460 (= e!4411900 tp_is_empty!48785)))

(declare-fun b!7369462 () Bool)

(declare-fun tp!2094870 () Bool)

(assert (=> b!7369462 (= e!4411900 tp!2094870)))

(assert (=> b!7369230 (= tp!2094795 e!4411900)))

(declare-fun b!7369463 () Bool)

(declare-fun tp!2094866 () Bool)

(declare-fun tp!2094868 () Bool)

(assert (=> b!7369463 (= e!4411900 (and tp!2094866 tp!2094868))))

(assert (= (and b!7369230 (is-ElementMatch!19270 (regTwo!39053 r1!2370))) b!7369460))

(assert (= (and b!7369230 (is-Concat!28115 (regTwo!39053 r1!2370))) b!7369461))

(assert (= (and b!7369230 (is-Star!19270 (regTwo!39053 r1!2370))) b!7369462))

(assert (= (and b!7369230 (is-Union!19270 (regTwo!39053 r1!2370))) b!7369463))

(push 1)

(assert (not b!7369457))

(assert (not bm!676539))

(assert (not b!7369445))

(assert (not b!7369406))

(assert (not b!7369443))

(assert (not bm!676556))

(assert (not b!7369459))

(assert (not b!7369435))

(assert (not b!7369436))

(assert (not bm!676538))

(assert (not b!7369421))

(assert (not d!2283368))

(assert (not bm!676541))

(assert (not b!7369461))

(assert (not d!2283374))

(assert (not d!2283376))

(assert (not d!2283356))

(assert (not bm!676569))

(assert tp_is_empty!48785)

(assert (not b!7369360))

(assert (not b!7369369))

(assert (not b!7369324))

(assert (not d!2283390))

(assert (not bm!676551))

(assert (not bm!676577))

(assert (not b!7369351))

(assert (not bm!676553))

(assert (not b!7369446))

(assert (not bm!676559))

(assert (not bm!676574))

(assert (not bm!676571))

(assert (not b!7369463))

(assert (not b!7369441))

(assert (not b!7369368))

(assert (not d!2283384))

(assert (not b!7369450))

(assert (not b!7369451))

(assert (not bm!676550))

(assert (not b!7369364))

(assert (not b!7369365))

(assert (not bm!676575))

(assert (not b!7369442))

(assert (not bm!676554))

(assert (not d!2283372))

(assert (not bm!676568))

(assert (not d!2283370))

(assert (not bm!676557))

(assert (not bm!676565))

(assert (not b!7369434))

(assert (not b!7369325))

(assert (not b!7369391))

(assert (not b!7369449))

(assert (not b!7369458))

(assert (not b!7369313))

(assert (not b!7369462))

(assert (not d!2283364))

(assert (not bm!676563))

(assert (not bm!676562))

(assert (not d!2283358))

(assert (not b!7369380))

(assert (not d!2283386))

(assert (not b!7369447))

(assert (not d!2283378))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

