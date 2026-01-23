; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719694 () Bool)

(assert start!719694)

(declare-fun b!7375480 () Bool)

(declare-fun e!4415160 () Bool)

(declare-fun tp!2097245 () Bool)

(assert (=> b!7375480 (= e!4415160 tp!2097245)))

(declare-fun b!7375481 () Bool)

(declare-fun res!2975431 () Bool)

(declare-fun e!4415157 () Bool)

(assert (=> b!7375481 (=> (not res!2975431) (not e!4415157))))

(declare-datatypes ((C!38870 0))(
  ( (C!38871 (val!29795 Int)) )
))
(declare-datatypes ((Regex!19298 0))(
  ( (ElementMatch!19298 (c!1370822 C!38870)) (Concat!28143 (regOne!39108 Regex!19298) (regTwo!39108 Regex!19298)) (EmptyExpr!19298) (Star!19298 (reg!19627 Regex!19298)) (EmptyLang!19298) (Union!19298 (regOne!39109 Regex!19298) (regTwo!39109 Regex!19298)) )
))
(declare-fun r1!2370 () Regex!19298)

(assert (=> b!7375481 (= res!2975431 (is-Concat!28143 r1!2370))))

(declare-fun b!7375482 () Bool)

(declare-fun res!2975427 () Bool)

(assert (=> b!7375482 (=> (not res!2975427) (not e!4415157))))

(declare-fun validRegex!9894 (Regex!19298) Bool)

(assert (=> b!7375482 (= res!2975427 (validRegex!9894 (regTwo!39108 r1!2370)))))

(declare-fun b!7375483 () Bool)

(declare-fun res!2975428 () Bool)

(assert (=> b!7375483 (=> (not res!2975428) (not e!4415157))))

(declare-fun c!10362 () C!38870)

(declare-datatypes ((List!71794 0))(
  ( (Nil!71670) (Cons!71670 (h!78118 Regex!19298) (t!386269 List!71794)) )
))
(declare-datatypes ((Context!16476 0))(
  ( (Context!16477 (exprs!8738 List!71794)) )
))
(declare-fun lt!2616194 () (Set Context!16476))

(declare-fun ct1!282 () Context!16476)

(declare-fun derivationStepZipperDown!3124 (Regex!19298 Context!16476 C!38870) (Set Context!16476))

(declare-fun $colon$colon!3280 (List!71794 Regex!19298) List!71794)

(assert (=> b!7375483 (= res!2975428 (= lt!2616194 (derivationStepZipperDown!3124 (regOne!39108 r1!2370) (Context!16477 ($colon$colon!3280 (exprs!8738 ct1!282) (regTwo!39108 r1!2370))) c!10362)))))

(declare-fun b!7375484 () Bool)

(declare-fun res!2975432 () Bool)

(assert (=> b!7375484 (=> (not res!2975432) (not e!4415157))))

(declare-fun e!4415158 () Bool)

(assert (=> b!7375484 (= res!2975432 e!4415158)))

(declare-fun res!2975433 () Bool)

(assert (=> b!7375484 (=> res!2975433 e!4415158)))

(assert (=> b!7375484 (= res!2975433 (not (is-Concat!28143 r1!2370)))))

(declare-fun b!7375486 () Bool)

(declare-fun tp!2097248 () Bool)

(declare-fun tp!2097249 () Bool)

(assert (=> b!7375486 (= e!4415160 (and tp!2097248 tp!2097249))))

(declare-fun b!7375487 () Bool)

(declare-fun tp_is_empty!48841 () Bool)

(assert (=> b!7375487 (= e!4415160 tp_is_empty!48841)))

(declare-fun b!7375488 () Bool)

(declare-fun e!4415159 () Bool)

(assert (=> b!7375488 (= e!4415159 e!4415157)))

(declare-fun res!2975430 () Bool)

(assert (=> b!7375488 (=> (not res!2975430) (not e!4415157))))

(assert (=> b!7375488 (= res!2975430 (and (or (not (is-ElementMatch!19298 r1!2370)) (not (= c!10362 (c!1370822 r1!2370)))) (not (is-Union!19298 r1!2370))))))

(declare-fun lt!2616193 () (Set Context!16476))

(declare-fun ct2!378 () Context!16476)

(declare-fun ++!17114 (List!71794 List!71794) List!71794)

(assert (=> b!7375488 (= lt!2616193 (derivationStepZipperDown!3124 r1!2370 (Context!16477 (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165545 0))(
  ( (Unit!165546) )
))
(declare-fun lt!2616192 () Unit!165545)

(declare-fun lambda!458268 () Int)

(declare-fun lemmaConcatPreservesForall!1971 (List!71794 List!71794 Int) Unit!165545)

(assert (=> b!7375488 (= lt!2616192 (lemmaConcatPreservesForall!1971 (exprs!8738 ct1!282) (exprs!8738 ct2!378) lambda!458268))))

(declare-fun b!7375489 () Bool)

(assert (=> b!7375489 (= e!4415157 (not (validRegex!9894 (regOne!39108 r1!2370))))))

(declare-fun b!7375490 () Bool)

(declare-fun e!4415156 () Bool)

(declare-fun tp!2097247 () Bool)

(assert (=> b!7375490 (= e!4415156 tp!2097247)))

(declare-fun b!7375485 () Bool)

(declare-fun e!4415154 () Bool)

(declare-fun tp!2097246 () Bool)

(assert (=> b!7375485 (= e!4415154 tp!2097246)))

(declare-fun res!2975429 () Bool)

(declare-fun e!4415155 () Bool)

(assert (=> start!719694 (=> (not res!2975429) (not e!4415155))))

(assert (=> start!719694 (= res!2975429 (validRegex!9894 r1!2370))))

(assert (=> start!719694 e!4415155))

(assert (=> start!719694 tp_is_empty!48841))

(declare-fun cWitness!61 () Context!16476)

(declare-fun inv!91586 (Context!16476) Bool)

(assert (=> start!719694 (and (inv!91586 cWitness!61) e!4415154)))

(declare-fun e!4415153 () Bool)

(assert (=> start!719694 (and (inv!91586 ct1!282) e!4415153)))

(assert (=> start!719694 e!4415160))

(assert (=> start!719694 (and (inv!91586 ct2!378) e!4415156)))

(declare-fun b!7375491 () Bool)

(assert (=> b!7375491 (= e!4415155 e!4415159)))

(declare-fun res!2975434 () Bool)

(assert (=> b!7375491 (=> (not res!2975434) (not e!4415159))))

(assert (=> b!7375491 (= res!2975434 (set.member cWitness!61 lt!2616194))))

(assert (=> b!7375491 (= lt!2616194 (derivationStepZipperDown!3124 r1!2370 ct1!282 c!10362))))

(declare-fun b!7375492 () Bool)

(declare-fun nullable!8374 (Regex!19298) Bool)

(assert (=> b!7375492 (= e!4415158 (not (nullable!8374 (regOne!39108 r1!2370))))))

(declare-fun b!7375493 () Bool)

(declare-fun tp!2097242 () Bool)

(assert (=> b!7375493 (= e!4415153 tp!2097242)))

(declare-fun b!7375494 () Bool)

(declare-fun tp!2097243 () Bool)

(declare-fun tp!2097244 () Bool)

(assert (=> b!7375494 (= e!4415160 (and tp!2097243 tp!2097244))))

(assert (= (and start!719694 res!2975429) b!7375491))

(assert (= (and b!7375491 res!2975434) b!7375488))

(assert (= (and b!7375488 res!2975430) b!7375484))

(assert (= (and b!7375484 (not res!2975433)) b!7375492))

(assert (= (and b!7375484 res!2975432) b!7375481))

(assert (= (and b!7375481 res!2975431) b!7375482))

(assert (= (and b!7375482 res!2975427) b!7375483))

(assert (= (and b!7375483 res!2975428) b!7375489))

(assert (= start!719694 b!7375485))

(assert (= start!719694 b!7375493))

(assert (= (and start!719694 (is-ElementMatch!19298 r1!2370)) b!7375487))

(assert (= (and start!719694 (is-Concat!28143 r1!2370)) b!7375486))

(assert (= (and start!719694 (is-Star!19298 r1!2370)) b!7375480))

(assert (= (and start!719694 (is-Union!19298 r1!2370)) b!7375494))

(assert (= start!719694 b!7375490))

(declare-fun m!8027546 () Bool)

(assert (=> b!7375482 m!8027546))

(declare-fun m!8027548 () Bool)

(assert (=> b!7375492 m!8027548))

(declare-fun m!8027550 () Bool)

(assert (=> b!7375491 m!8027550))

(declare-fun m!8027552 () Bool)

(assert (=> b!7375491 m!8027552))

(declare-fun m!8027554 () Bool)

(assert (=> b!7375489 m!8027554))

(declare-fun m!8027556 () Bool)

(assert (=> start!719694 m!8027556))

(declare-fun m!8027558 () Bool)

(assert (=> start!719694 m!8027558))

(declare-fun m!8027560 () Bool)

(assert (=> start!719694 m!8027560))

(declare-fun m!8027562 () Bool)

(assert (=> start!719694 m!8027562))

(declare-fun m!8027564 () Bool)

(assert (=> b!7375483 m!8027564))

(declare-fun m!8027566 () Bool)

(assert (=> b!7375483 m!8027566))

(declare-fun m!8027568 () Bool)

(assert (=> b!7375488 m!8027568))

(declare-fun m!8027570 () Bool)

(assert (=> b!7375488 m!8027570))

(declare-fun m!8027572 () Bool)

(assert (=> b!7375488 m!8027572))

(push 1)

(assert (not b!7375483))

(assert (not b!7375480))

(assert (not b!7375486))

(assert (not b!7375488))

(assert (not start!719694))

(assert (not b!7375485))

(assert (not b!7375489))

(assert tp_is_empty!48841)

(assert (not b!7375491))

(assert (not b!7375494))

(assert (not b!7375493))

(assert (not b!7375482))

(assert (not b!7375490))

(assert (not b!7375492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!677925 () Bool)

(declare-fun call!677932 () Bool)

(declare-fun c!1370829 () Bool)

(assert (=> bm!677925 (= call!677932 (validRegex!9894 (ite c!1370829 (regOne!39109 (regTwo!39108 r1!2370)) (regTwo!39108 (regTwo!39108 r1!2370)))))))

(declare-fun d!2284568 () Bool)

(declare-fun res!2975473 () Bool)

(declare-fun e!4415202 () Bool)

(assert (=> d!2284568 (=> res!2975473 e!4415202)))

(assert (=> d!2284568 (= res!2975473 (is-ElementMatch!19298 (regTwo!39108 r1!2370)))))

(assert (=> d!2284568 (= (validRegex!9894 (regTwo!39108 r1!2370)) e!4415202)))

(declare-fun b!7375558 () Bool)

(declare-fun res!2975469 () Bool)

(declare-fun e!4415205 () Bool)

(assert (=> b!7375558 (=> res!2975469 e!4415205)))

(assert (=> b!7375558 (= res!2975469 (not (is-Concat!28143 (regTwo!39108 r1!2370))))))

(declare-fun e!4415199 () Bool)

(assert (=> b!7375558 (= e!4415199 e!4415205)))

(declare-fun b!7375559 () Bool)

(declare-fun e!4415203 () Bool)

(declare-fun e!4415201 () Bool)

(assert (=> b!7375559 (= e!4415203 e!4415201)))

(declare-fun res!2975470 () Bool)

(assert (=> b!7375559 (= res!2975470 (not (nullable!8374 (reg!19627 (regTwo!39108 r1!2370)))))))

(assert (=> b!7375559 (=> (not res!2975470) (not e!4415201))))

(declare-fun b!7375560 () Bool)

(declare-fun res!2975471 () Bool)

(declare-fun e!4415204 () Bool)

(assert (=> b!7375560 (=> (not res!2975471) (not e!4415204))))

(assert (=> b!7375560 (= res!2975471 call!677932)))

(assert (=> b!7375560 (= e!4415199 e!4415204)))

(declare-fun b!7375561 () Bool)

(declare-fun call!677930 () Bool)

(assert (=> b!7375561 (= e!4415201 call!677930)))

(declare-fun bm!677926 () Bool)

(declare-fun call!677931 () Bool)

(assert (=> bm!677926 (= call!677931 call!677930)))

(declare-fun b!7375562 () Bool)

(assert (=> b!7375562 (= e!4415203 e!4415199)))

(assert (=> b!7375562 (= c!1370829 (is-Union!19298 (regTwo!39108 r1!2370)))))

(declare-fun b!7375563 () Bool)

(assert (=> b!7375563 (= e!4415204 call!677931)))

(declare-fun b!7375564 () Bool)

(assert (=> b!7375564 (= e!4415202 e!4415203)))

(declare-fun c!1370828 () Bool)

(assert (=> b!7375564 (= c!1370828 (is-Star!19298 (regTwo!39108 r1!2370)))))

(declare-fun bm!677927 () Bool)

(assert (=> bm!677927 (= call!677930 (validRegex!9894 (ite c!1370828 (reg!19627 (regTwo!39108 r1!2370)) (ite c!1370829 (regTwo!39109 (regTwo!39108 r1!2370)) (regOne!39108 (regTwo!39108 r1!2370))))))))

(declare-fun b!7375565 () Bool)

(declare-fun e!4415200 () Bool)

(assert (=> b!7375565 (= e!4415200 call!677932)))

(declare-fun b!7375566 () Bool)

(assert (=> b!7375566 (= e!4415205 e!4415200)))

(declare-fun res!2975472 () Bool)

(assert (=> b!7375566 (=> (not res!2975472) (not e!4415200))))

(assert (=> b!7375566 (= res!2975472 call!677931)))

(assert (= (and d!2284568 (not res!2975473)) b!7375564))

(assert (= (and b!7375564 c!1370828) b!7375559))

(assert (= (and b!7375564 (not c!1370828)) b!7375562))

(assert (= (and b!7375559 res!2975470) b!7375561))

(assert (= (and b!7375562 c!1370829) b!7375560))

(assert (= (and b!7375562 (not c!1370829)) b!7375558))

(assert (= (and b!7375560 res!2975471) b!7375563))

(assert (= (and b!7375558 (not res!2975469)) b!7375566))

(assert (= (and b!7375566 res!2975472) b!7375565))

(assert (= (or b!7375560 b!7375565) bm!677925))

(assert (= (or b!7375563 b!7375566) bm!677926))

(assert (= (or b!7375561 bm!677926) bm!677927))

(declare-fun m!8027602 () Bool)

(assert (=> bm!677925 m!8027602))

(declare-fun m!8027604 () Bool)

(assert (=> b!7375559 m!8027604))

(declare-fun m!8027606 () Bool)

(assert (=> bm!677927 m!8027606))

(assert (=> b!7375482 d!2284568))

(declare-fun d!2284570 () Bool)

(declare-fun nullableFct!3353 (Regex!19298) Bool)

(assert (=> d!2284570 (= (nullable!8374 (regOne!39108 r1!2370)) (nullableFct!3353 (regOne!39108 r1!2370)))))

(declare-fun bs!1921212 () Bool)

(assert (= bs!1921212 d!2284570))

(declare-fun m!8027608 () Bool)

(assert (=> bs!1921212 m!8027608))

(assert (=> b!7375492 d!2284570))

(declare-fun b!7375589 () Bool)

(declare-fun e!4415220 () (Set Context!16476))

(declare-fun call!677948 () (Set Context!16476))

(declare-fun call!677947 () (Set Context!16476))

(assert (=> b!7375589 (= e!4415220 (set.union call!677948 call!677947))))

(declare-fun bm!677940 () Bool)

(declare-fun call!677950 () (Set Context!16476))

(assert (=> bm!677940 (= call!677950 call!677947)))

(declare-fun b!7375590 () Bool)

(declare-fun c!1370844 () Bool)

(assert (=> b!7375590 (= c!1370844 (is-Star!19298 (regOne!39108 r1!2370)))))

(declare-fun e!4415223 () (Set Context!16476))

(declare-fun e!4415218 () (Set Context!16476))

(assert (=> b!7375590 (= e!4415223 e!4415218)))

(declare-fun b!7375591 () Bool)

(declare-fun e!4415219 () Bool)

(assert (=> b!7375591 (= e!4415219 (nullable!8374 (regOne!39108 (regOne!39108 r1!2370))))))

(declare-fun b!7375592 () Bool)

(declare-fun e!4415221 () (Set Context!16476))

(declare-fun e!4415222 () (Set Context!16476))

(assert (=> b!7375592 (= e!4415221 e!4415222)))

(declare-fun c!1370841 () Bool)

(assert (=> b!7375592 (= c!1370841 (is-Union!19298 (regOne!39108 r1!2370)))))

(declare-fun d!2284572 () Bool)

(declare-fun c!1370843 () Bool)

(assert (=> d!2284572 (= c!1370843 (and (is-ElementMatch!19298 (regOne!39108 r1!2370)) (= (c!1370822 (regOne!39108 r1!2370)) c!10362)))))

(assert (=> d!2284572 (= (derivationStepZipperDown!3124 (regOne!39108 r1!2370) (Context!16477 ($colon$colon!3280 (exprs!8738 ct1!282) (regTwo!39108 r1!2370))) c!10362) e!4415221)))

(declare-fun bm!677941 () Bool)

(declare-fun call!677945 () (Set Context!16476))

(assert (=> bm!677941 (= call!677947 call!677945)))

(declare-fun b!7375593 () Bool)

(assert (=> b!7375593 (= e!4415220 e!4415223)))

(declare-fun c!1370842 () Bool)

(assert (=> b!7375593 (= c!1370842 (is-Concat!28143 (regOne!39108 r1!2370)))))

(declare-fun b!7375594 () Bool)

(assert (=> b!7375594 (= e!4415218 call!677950)))

(declare-fun b!7375595 () Bool)

(assert (=> b!7375595 (= e!4415222 (set.union call!677945 call!677948))))

(declare-fun bm!677942 () Bool)

(declare-fun call!677946 () List!71794)

(declare-fun call!677949 () List!71794)

(assert (=> bm!677942 (= call!677946 call!677949)))

(declare-fun bm!677943 () Bool)

(assert (=> bm!677943 (= call!677948 (derivationStepZipperDown!3124 (ite c!1370841 (regTwo!39109 (regOne!39108 r1!2370)) (regOne!39108 (regOne!39108 r1!2370))) (ite c!1370841 (Context!16477 ($colon$colon!3280 (exprs!8738 ct1!282) (regTwo!39108 r1!2370))) (Context!16477 call!677949)) c!10362))))

(declare-fun b!7375596 () Bool)

(declare-fun c!1370840 () Bool)

(assert (=> b!7375596 (= c!1370840 e!4415219)))

(declare-fun res!2975476 () Bool)

(assert (=> b!7375596 (=> (not res!2975476) (not e!4415219))))

(assert (=> b!7375596 (= res!2975476 (is-Concat!28143 (regOne!39108 r1!2370)))))

(assert (=> b!7375596 (= e!4415222 e!4415220)))

(declare-fun b!7375597 () Bool)

(assert (=> b!7375597 (= e!4415218 (as set.empty (Set Context!16476)))))

(declare-fun b!7375598 () Bool)

(assert (=> b!7375598 (= e!4415221 (set.insert (Context!16477 ($colon$colon!3280 (exprs!8738 ct1!282) (regTwo!39108 r1!2370))) (as set.empty (Set Context!16476))))))

(declare-fun b!7375599 () Bool)

(assert (=> b!7375599 (= e!4415223 call!677950)))

(declare-fun bm!677944 () Bool)

(assert (=> bm!677944 (= call!677945 (derivationStepZipperDown!3124 (ite c!1370841 (regOne!39109 (regOne!39108 r1!2370)) (ite c!1370840 (regTwo!39108 (regOne!39108 r1!2370)) (ite c!1370842 (regOne!39108 (regOne!39108 r1!2370)) (reg!19627 (regOne!39108 r1!2370))))) (ite (or c!1370841 c!1370840) (Context!16477 ($colon$colon!3280 (exprs!8738 ct1!282) (regTwo!39108 r1!2370))) (Context!16477 call!677946)) c!10362))))

(declare-fun bm!677945 () Bool)

(assert (=> bm!677945 (= call!677949 ($colon$colon!3280 (exprs!8738 (Context!16477 ($colon$colon!3280 (exprs!8738 ct1!282) (regTwo!39108 r1!2370)))) (ite (or c!1370840 c!1370842) (regTwo!39108 (regOne!39108 r1!2370)) (regOne!39108 r1!2370))))))

(assert (= (and d!2284572 c!1370843) b!7375598))

(assert (= (and d!2284572 (not c!1370843)) b!7375592))

(assert (= (and b!7375592 c!1370841) b!7375595))

(assert (= (and b!7375592 (not c!1370841)) b!7375596))

(assert (= (and b!7375596 res!2975476) b!7375591))

(assert (= (and b!7375596 c!1370840) b!7375589))

(assert (= (and b!7375596 (not c!1370840)) b!7375593))

(assert (= (and b!7375593 c!1370842) b!7375599))

(assert (= (and b!7375593 (not c!1370842)) b!7375590))

(assert (= (and b!7375590 c!1370844) b!7375594))

(assert (= (and b!7375590 (not c!1370844)) b!7375597))

(assert (= (or b!7375599 b!7375594) bm!677942))

(assert (= (or b!7375599 b!7375594) bm!677940))

(assert (= (or b!7375589 bm!677940) bm!677941))

(assert (= (or b!7375589 bm!677942) bm!677945))

(assert (= (or b!7375595 b!7375589) bm!677943))

(assert (= (or b!7375595 bm!677941) bm!677944))

(declare-fun m!8027610 () Bool)

(assert (=> b!7375591 m!8027610))

(declare-fun m!8027612 () Bool)

(assert (=> b!7375598 m!8027612))

(declare-fun m!8027614 () Bool)

(assert (=> bm!677943 m!8027614))

(declare-fun m!8027616 () Bool)

(assert (=> bm!677945 m!8027616))

(declare-fun m!8027618 () Bool)

(assert (=> bm!677944 m!8027618))

(assert (=> b!7375483 d!2284572))

(declare-fun d!2284576 () Bool)

(assert (=> d!2284576 (= ($colon$colon!3280 (exprs!8738 ct1!282) (regTwo!39108 r1!2370)) (Cons!71670 (regTwo!39108 r1!2370) (exprs!8738 ct1!282)))))

(assert (=> b!7375483 d!2284576))

(declare-fun b!7375600 () Bool)

(declare-fun e!4415226 () (Set Context!16476))

(declare-fun call!677954 () (Set Context!16476))

(declare-fun call!677953 () (Set Context!16476))

(assert (=> b!7375600 (= e!4415226 (set.union call!677954 call!677953))))

(declare-fun bm!677946 () Bool)

(declare-fun call!677956 () (Set Context!16476))

(assert (=> bm!677946 (= call!677956 call!677953)))

(declare-fun b!7375601 () Bool)

(declare-fun c!1370849 () Bool)

(assert (=> b!7375601 (= c!1370849 (is-Star!19298 r1!2370))))

(declare-fun e!4415229 () (Set Context!16476))

(declare-fun e!4415224 () (Set Context!16476))

(assert (=> b!7375601 (= e!4415229 e!4415224)))

(declare-fun b!7375602 () Bool)

(declare-fun e!4415225 () Bool)

(assert (=> b!7375602 (= e!4415225 (nullable!8374 (regOne!39108 r1!2370)))))

(declare-fun b!7375603 () Bool)

(declare-fun e!4415227 () (Set Context!16476))

(declare-fun e!4415228 () (Set Context!16476))

(assert (=> b!7375603 (= e!4415227 e!4415228)))

(declare-fun c!1370846 () Bool)

(assert (=> b!7375603 (= c!1370846 (is-Union!19298 r1!2370))))

(declare-fun d!2284578 () Bool)

(declare-fun c!1370848 () Bool)

(assert (=> d!2284578 (= c!1370848 (and (is-ElementMatch!19298 r1!2370) (= (c!1370822 r1!2370) c!10362)))))

(assert (=> d!2284578 (= (derivationStepZipperDown!3124 r1!2370 (Context!16477 (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378))) c!10362) e!4415227)))

(declare-fun bm!677947 () Bool)

(declare-fun call!677951 () (Set Context!16476))

(assert (=> bm!677947 (= call!677953 call!677951)))

(declare-fun b!7375604 () Bool)

(assert (=> b!7375604 (= e!4415226 e!4415229)))

(declare-fun c!1370847 () Bool)

(assert (=> b!7375604 (= c!1370847 (is-Concat!28143 r1!2370))))

(declare-fun b!7375605 () Bool)

(assert (=> b!7375605 (= e!4415224 call!677956)))

(declare-fun b!7375606 () Bool)

(assert (=> b!7375606 (= e!4415228 (set.union call!677951 call!677954))))

(declare-fun bm!677948 () Bool)

(declare-fun call!677952 () List!71794)

(declare-fun call!677955 () List!71794)

(assert (=> bm!677948 (= call!677952 call!677955)))

(declare-fun bm!677949 () Bool)

(assert (=> bm!677949 (= call!677954 (derivationStepZipperDown!3124 (ite c!1370846 (regTwo!39109 r1!2370) (regOne!39108 r1!2370)) (ite c!1370846 (Context!16477 (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378))) (Context!16477 call!677955)) c!10362))))

(declare-fun b!7375607 () Bool)

(declare-fun c!1370845 () Bool)

(assert (=> b!7375607 (= c!1370845 e!4415225)))

(declare-fun res!2975477 () Bool)

(assert (=> b!7375607 (=> (not res!2975477) (not e!4415225))))

(assert (=> b!7375607 (= res!2975477 (is-Concat!28143 r1!2370))))

(assert (=> b!7375607 (= e!4415228 e!4415226)))

(declare-fun b!7375608 () Bool)

(assert (=> b!7375608 (= e!4415224 (as set.empty (Set Context!16476)))))

(declare-fun b!7375609 () Bool)

(assert (=> b!7375609 (= e!4415227 (set.insert (Context!16477 (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378))) (as set.empty (Set Context!16476))))))

(declare-fun b!7375610 () Bool)

(assert (=> b!7375610 (= e!4415229 call!677956)))

(declare-fun bm!677950 () Bool)

(assert (=> bm!677950 (= call!677951 (derivationStepZipperDown!3124 (ite c!1370846 (regOne!39109 r1!2370) (ite c!1370845 (regTwo!39108 r1!2370) (ite c!1370847 (regOne!39108 r1!2370) (reg!19627 r1!2370)))) (ite (or c!1370846 c!1370845) (Context!16477 (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378))) (Context!16477 call!677952)) c!10362))))

(declare-fun bm!677951 () Bool)

(assert (=> bm!677951 (= call!677955 ($colon$colon!3280 (exprs!8738 (Context!16477 (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378)))) (ite (or c!1370845 c!1370847) (regTwo!39108 r1!2370) r1!2370)))))

(assert (= (and d!2284578 c!1370848) b!7375609))

(assert (= (and d!2284578 (not c!1370848)) b!7375603))

(assert (= (and b!7375603 c!1370846) b!7375606))

(assert (= (and b!7375603 (not c!1370846)) b!7375607))

(assert (= (and b!7375607 res!2975477) b!7375602))

(assert (= (and b!7375607 c!1370845) b!7375600))

(assert (= (and b!7375607 (not c!1370845)) b!7375604))

(assert (= (and b!7375604 c!1370847) b!7375610))

(assert (= (and b!7375604 (not c!1370847)) b!7375601))

(assert (= (and b!7375601 c!1370849) b!7375605))

(assert (= (and b!7375601 (not c!1370849)) b!7375608))

(assert (= (or b!7375610 b!7375605) bm!677948))

(assert (= (or b!7375610 b!7375605) bm!677946))

(assert (= (or b!7375600 bm!677946) bm!677947))

(assert (= (or b!7375600 bm!677948) bm!677951))

(assert (= (or b!7375606 b!7375600) bm!677949))

(assert (= (or b!7375606 bm!677947) bm!677950))

(assert (=> b!7375602 m!8027548))

(declare-fun m!8027620 () Bool)

(assert (=> b!7375609 m!8027620))

(declare-fun m!8027622 () Bool)

(assert (=> bm!677949 m!8027622))

(declare-fun m!8027624 () Bool)

(assert (=> bm!677951 m!8027624))

(declare-fun m!8027626 () Bool)

(assert (=> bm!677950 m!8027626))

(assert (=> b!7375488 d!2284578))

(declare-fun d!2284580 () Bool)

(declare-fun e!4415247 () Bool)

(assert (=> d!2284580 e!4415247))

(declare-fun res!2975484 () Bool)

(assert (=> d!2284580 (=> (not res!2975484) (not e!4415247))))

(declare-fun lt!2616206 () List!71794)

(declare-fun content!15170 (List!71794) (Set Regex!19298))

(assert (=> d!2284580 (= res!2975484 (= (content!15170 lt!2616206) (set.union (content!15170 (exprs!8738 ct1!282)) (content!15170 (exprs!8738 ct2!378)))))))

(declare-fun e!4415246 () List!71794)

(assert (=> d!2284580 (= lt!2616206 e!4415246)))

(declare-fun c!1370862 () Bool)

(assert (=> d!2284580 (= c!1370862 (is-Nil!71670 (exprs!8738 ct1!282)))))

(assert (=> d!2284580 (= (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378)) lt!2616206)))

(declare-fun b!7375641 () Bool)

(assert (=> b!7375641 (= e!4415246 (exprs!8738 ct2!378))))

(declare-fun b!7375643 () Bool)

(declare-fun res!2975485 () Bool)

(assert (=> b!7375643 (=> (not res!2975485) (not e!4415247))))

(declare-fun size!42148 (List!71794) Int)

(assert (=> b!7375643 (= res!2975485 (= (size!42148 lt!2616206) (+ (size!42148 (exprs!8738 ct1!282)) (size!42148 (exprs!8738 ct2!378)))))))

(declare-fun b!7375642 () Bool)

(assert (=> b!7375642 (= e!4415246 (Cons!71670 (h!78118 (exprs!8738 ct1!282)) (++!17114 (t!386269 (exprs!8738 ct1!282)) (exprs!8738 ct2!378))))))

(declare-fun b!7375644 () Bool)

(assert (=> b!7375644 (= e!4415247 (or (not (= (exprs!8738 ct2!378) Nil!71670)) (= lt!2616206 (exprs!8738 ct1!282))))))

(assert (= (and d!2284580 c!1370862) b!7375641))

(assert (= (and d!2284580 (not c!1370862)) b!7375642))

(assert (= (and d!2284580 res!2975484) b!7375643))

(assert (= (and b!7375643 res!2975485) b!7375644))

(declare-fun m!8027628 () Bool)

(assert (=> d!2284580 m!8027628))

(declare-fun m!8027630 () Bool)

(assert (=> d!2284580 m!8027630))

(declare-fun m!8027632 () Bool)

(assert (=> d!2284580 m!8027632))

(declare-fun m!8027634 () Bool)

(assert (=> b!7375643 m!8027634))

(declare-fun m!8027636 () Bool)

(assert (=> b!7375643 m!8027636))

(declare-fun m!8027638 () Bool)

(assert (=> b!7375643 m!8027638))

(declare-fun m!8027640 () Bool)

(assert (=> b!7375642 m!8027640))

(assert (=> b!7375488 d!2284580))

(declare-fun d!2284582 () Bool)

(declare-fun forall!18096 (List!71794 Int) Bool)

(assert (=> d!2284582 (forall!18096 (++!17114 (exprs!8738 ct1!282) (exprs!8738 ct2!378)) lambda!458268)))

(declare-fun lt!2616209 () Unit!165545)

(declare-fun choose!57324 (List!71794 List!71794 Int) Unit!165545)

(assert (=> d!2284582 (= lt!2616209 (choose!57324 (exprs!8738 ct1!282) (exprs!8738 ct2!378) lambda!458268))))

(assert (=> d!2284582 (forall!18096 (exprs!8738 ct1!282) lambda!458268)))

(assert (=> d!2284582 (= (lemmaConcatPreservesForall!1971 (exprs!8738 ct1!282) (exprs!8738 ct2!378) lambda!458268) lt!2616209)))

(declare-fun bs!1921213 () Bool)

(assert (= bs!1921213 d!2284582))

(assert (=> bs!1921213 m!8027568))

(assert (=> bs!1921213 m!8027568))

(declare-fun m!8027642 () Bool)

(assert (=> bs!1921213 m!8027642))

(declare-fun m!8027644 () Bool)

(assert (=> bs!1921213 m!8027644))

(declare-fun m!8027646 () Bool)

(assert (=> bs!1921213 m!8027646))

(assert (=> b!7375488 d!2284582))

(declare-fun bm!677964 () Bool)

(declare-fun call!677971 () Bool)

(declare-fun c!1370864 () Bool)

(assert (=> bm!677964 (= call!677971 (validRegex!9894 (ite c!1370864 (regOne!39109 (regOne!39108 r1!2370)) (regTwo!39108 (regOne!39108 r1!2370)))))))

(declare-fun d!2284584 () Bool)

(declare-fun res!2975490 () Bool)

(declare-fun e!4415251 () Bool)

(assert (=> d!2284584 (=> res!2975490 e!4415251)))

(assert (=> d!2284584 (= res!2975490 (is-ElementMatch!19298 (regOne!39108 r1!2370)))))

(assert (=> d!2284584 (= (validRegex!9894 (regOne!39108 r1!2370)) e!4415251)))

(declare-fun b!7375645 () Bool)

(declare-fun res!2975486 () Bool)

(declare-fun e!4415254 () Bool)

(assert (=> b!7375645 (=> res!2975486 e!4415254)))

(assert (=> b!7375645 (= res!2975486 (not (is-Concat!28143 (regOne!39108 r1!2370))))))

(declare-fun e!4415248 () Bool)

(assert (=> b!7375645 (= e!4415248 e!4415254)))

(declare-fun b!7375646 () Bool)

(declare-fun e!4415252 () Bool)

(declare-fun e!4415250 () Bool)

(assert (=> b!7375646 (= e!4415252 e!4415250)))

(declare-fun res!2975487 () Bool)

(assert (=> b!7375646 (= res!2975487 (not (nullable!8374 (reg!19627 (regOne!39108 r1!2370)))))))

(assert (=> b!7375646 (=> (not res!2975487) (not e!4415250))))

(declare-fun b!7375647 () Bool)

(declare-fun res!2975488 () Bool)

(declare-fun e!4415253 () Bool)

(assert (=> b!7375647 (=> (not res!2975488) (not e!4415253))))

(assert (=> b!7375647 (= res!2975488 call!677971)))

(assert (=> b!7375647 (= e!4415248 e!4415253)))

(declare-fun b!7375648 () Bool)

(declare-fun call!677969 () Bool)

(assert (=> b!7375648 (= e!4415250 call!677969)))

(declare-fun bm!677965 () Bool)

(declare-fun call!677970 () Bool)

(assert (=> bm!677965 (= call!677970 call!677969)))

(declare-fun b!7375649 () Bool)

(assert (=> b!7375649 (= e!4415252 e!4415248)))

(assert (=> b!7375649 (= c!1370864 (is-Union!19298 (regOne!39108 r1!2370)))))

(declare-fun b!7375650 () Bool)

(assert (=> b!7375650 (= e!4415253 call!677970)))

(declare-fun b!7375651 () Bool)

(assert (=> b!7375651 (= e!4415251 e!4415252)))

(declare-fun c!1370863 () Bool)

(assert (=> b!7375651 (= c!1370863 (is-Star!19298 (regOne!39108 r1!2370)))))

(declare-fun bm!677966 () Bool)

(assert (=> bm!677966 (= call!677969 (validRegex!9894 (ite c!1370863 (reg!19627 (regOne!39108 r1!2370)) (ite c!1370864 (regTwo!39109 (regOne!39108 r1!2370)) (regOne!39108 (regOne!39108 r1!2370))))))))

(declare-fun b!7375652 () Bool)

(declare-fun e!4415249 () Bool)

(assert (=> b!7375652 (= e!4415249 call!677971)))

(declare-fun b!7375653 () Bool)

(assert (=> b!7375653 (= e!4415254 e!4415249)))

(declare-fun res!2975489 () Bool)

(assert (=> b!7375653 (=> (not res!2975489) (not e!4415249))))

(assert (=> b!7375653 (= res!2975489 call!677970)))

(assert (= (and d!2284584 (not res!2975490)) b!7375651))

(assert (= (and b!7375651 c!1370863) b!7375646))

(assert (= (and b!7375651 (not c!1370863)) b!7375649))

(assert (= (and b!7375646 res!2975487) b!7375648))

(assert (= (and b!7375649 c!1370864) b!7375647))

(assert (= (and b!7375649 (not c!1370864)) b!7375645))

(assert (= (and b!7375647 res!2975488) b!7375650))

(assert (= (and b!7375645 (not res!2975486)) b!7375653))

(assert (= (and b!7375653 res!2975489) b!7375652))

(assert (= (or b!7375647 b!7375652) bm!677964))

(assert (= (or b!7375650 b!7375653) bm!677965))

(assert (= (or b!7375648 bm!677965) bm!677966))

(declare-fun m!8027648 () Bool)

(assert (=> bm!677964 m!8027648))

(declare-fun m!8027650 () Bool)

(assert (=> b!7375646 m!8027650))

(declare-fun m!8027652 () Bool)

(assert (=> bm!677966 m!8027652))

(assert (=> b!7375489 d!2284584))

(declare-fun b!7375654 () Bool)

(declare-fun e!4415257 () (Set Context!16476))

(declare-fun call!677975 () (Set Context!16476))

(declare-fun call!677974 () (Set Context!16476))

(assert (=> b!7375654 (= e!4415257 (set.union call!677975 call!677974))))

(declare-fun bm!677967 () Bool)

(declare-fun call!677977 () (Set Context!16476))

(assert (=> bm!677967 (= call!677977 call!677974)))

(declare-fun b!7375655 () Bool)

(declare-fun c!1370869 () Bool)

(assert (=> b!7375655 (= c!1370869 (is-Star!19298 r1!2370))))

(declare-fun e!4415260 () (Set Context!16476))

(declare-fun e!4415255 () (Set Context!16476))

(assert (=> b!7375655 (= e!4415260 e!4415255)))

(declare-fun b!7375656 () Bool)

(declare-fun e!4415256 () Bool)

(assert (=> b!7375656 (= e!4415256 (nullable!8374 (regOne!39108 r1!2370)))))

(declare-fun b!7375657 () Bool)

(declare-fun e!4415258 () (Set Context!16476))

(declare-fun e!4415259 () (Set Context!16476))

(assert (=> b!7375657 (= e!4415258 e!4415259)))

(declare-fun c!1370866 () Bool)

(assert (=> b!7375657 (= c!1370866 (is-Union!19298 r1!2370))))

(declare-fun d!2284586 () Bool)

(declare-fun c!1370868 () Bool)

(assert (=> d!2284586 (= c!1370868 (and (is-ElementMatch!19298 r1!2370) (= (c!1370822 r1!2370) c!10362)))))

(assert (=> d!2284586 (= (derivationStepZipperDown!3124 r1!2370 ct1!282 c!10362) e!4415258)))

(declare-fun bm!677968 () Bool)

(declare-fun call!677972 () (Set Context!16476))

(assert (=> bm!677968 (= call!677974 call!677972)))

(declare-fun b!7375658 () Bool)

(assert (=> b!7375658 (= e!4415257 e!4415260)))

(declare-fun c!1370867 () Bool)

(assert (=> b!7375658 (= c!1370867 (is-Concat!28143 r1!2370))))

(declare-fun b!7375659 () Bool)

(assert (=> b!7375659 (= e!4415255 call!677977)))

(declare-fun b!7375660 () Bool)

(assert (=> b!7375660 (= e!4415259 (set.union call!677972 call!677975))))

(declare-fun bm!677969 () Bool)

(declare-fun call!677973 () List!71794)

(declare-fun call!677976 () List!71794)

(assert (=> bm!677969 (= call!677973 call!677976)))

(declare-fun bm!677970 () Bool)

(assert (=> bm!677970 (= call!677975 (derivationStepZipperDown!3124 (ite c!1370866 (regTwo!39109 r1!2370) (regOne!39108 r1!2370)) (ite c!1370866 ct1!282 (Context!16477 call!677976)) c!10362))))

(declare-fun b!7375661 () Bool)

(declare-fun c!1370865 () Bool)

(assert (=> b!7375661 (= c!1370865 e!4415256)))

(declare-fun res!2975491 () Bool)

(assert (=> b!7375661 (=> (not res!2975491) (not e!4415256))))

(assert (=> b!7375661 (= res!2975491 (is-Concat!28143 r1!2370))))

(assert (=> b!7375661 (= e!4415259 e!4415257)))

(declare-fun b!7375662 () Bool)

(assert (=> b!7375662 (= e!4415255 (as set.empty (Set Context!16476)))))

(declare-fun b!7375663 () Bool)

(assert (=> b!7375663 (= e!4415258 (set.insert ct1!282 (as set.empty (Set Context!16476))))))

(declare-fun b!7375664 () Bool)

(assert (=> b!7375664 (= e!4415260 call!677977)))

(declare-fun bm!677971 () Bool)

(assert (=> bm!677971 (= call!677972 (derivationStepZipperDown!3124 (ite c!1370866 (regOne!39109 r1!2370) (ite c!1370865 (regTwo!39108 r1!2370) (ite c!1370867 (regOne!39108 r1!2370) (reg!19627 r1!2370)))) (ite (or c!1370866 c!1370865) ct1!282 (Context!16477 call!677973)) c!10362))))

(declare-fun bm!677972 () Bool)

(assert (=> bm!677972 (= call!677976 ($colon$colon!3280 (exprs!8738 ct1!282) (ite (or c!1370865 c!1370867) (regTwo!39108 r1!2370) r1!2370)))))

(assert (= (and d!2284586 c!1370868) b!7375663))

(assert (= (and d!2284586 (not c!1370868)) b!7375657))

(assert (= (and b!7375657 c!1370866) b!7375660))

(assert (= (and b!7375657 (not c!1370866)) b!7375661))

(assert (= (and b!7375661 res!2975491) b!7375656))

(assert (= (and b!7375661 c!1370865) b!7375654))

(assert (= (and b!7375661 (not c!1370865)) b!7375658))

(assert (= (and b!7375658 c!1370867) b!7375664))

(assert (= (and b!7375658 (not c!1370867)) b!7375655))

(assert (= (and b!7375655 c!1370869) b!7375659))

(assert (= (and b!7375655 (not c!1370869)) b!7375662))

(assert (= (or b!7375664 b!7375659) bm!677969))

(assert (= (or b!7375664 b!7375659) bm!677967))

(assert (= (or b!7375654 bm!677967) bm!677968))

(assert (= (or b!7375654 bm!677969) bm!677972))

(assert (= (or b!7375660 b!7375654) bm!677970))

(assert (= (or b!7375660 bm!677968) bm!677971))

(assert (=> b!7375656 m!8027548))

(declare-fun m!8027654 () Bool)

(assert (=> b!7375663 m!8027654))

(declare-fun m!8027656 () Bool)

(assert (=> bm!677970 m!8027656))

(declare-fun m!8027658 () Bool)

(assert (=> bm!677972 m!8027658))

(declare-fun m!8027660 () Bool)

(assert (=> bm!677971 m!8027660))

(assert (=> b!7375491 d!2284586))

(declare-fun bm!677973 () Bool)

(declare-fun call!677980 () Bool)

(declare-fun c!1370871 () Bool)

(assert (=> bm!677973 (= call!677980 (validRegex!9894 (ite c!1370871 (regOne!39109 r1!2370) (regTwo!39108 r1!2370))))))

(declare-fun d!2284588 () Bool)

(declare-fun res!2975496 () Bool)

(declare-fun e!4415264 () Bool)

(assert (=> d!2284588 (=> res!2975496 e!4415264)))

(assert (=> d!2284588 (= res!2975496 (is-ElementMatch!19298 r1!2370))))

(assert (=> d!2284588 (= (validRegex!9894 r1!2370) e!4415264)))

(declare-fun b!7375665 () Bool)

(declare-fun res!2975492 () Bool)

(declare-fun e!4415267 () Bool)

(assert (=> b!7375665 (=> res!2975492 e!4415267)))

(assert (=> b!7375665 (= res!2975492 (not (is-Concat!28143 r1!2370)))))

(declare-fun e!4415261 () Bool)

(assert (=> b!7375665 (= e!4415261 e!4415267)))

(declare-fun b!7375666 () Bool)

(declare-fun e!4415265 () Bool)

(declare-fun e!4415263 () Bool)

(assert (=> b!7375666 (= e!4415265 e!4415263)))

(declare-fun res!2975493 () Bool)

(assert (=> b!7375666 (= res!2975493 (not (nullable!8374 (reg!19627 r1!2370))))))

(assert (=> b!7375666 (=> (not res!2975493) (not e!4415263))))

(declare-fun b!7375667 () Bool)

(declare-fun res!2975494 () Bool)

(declare-fun e!4415266 () Bool)

(assert (=> b!7375667 (=> (not res!2975494) (not e!4415266))))

(assert (=> b!7375667 (= res!2975494 call!677980)))

(assert (=> b!7375667 (= e!4415261 e!4415266)))

(declare-fun b!7375668 () Bool)

(declare-fun call!677978 () Bool)

(assert (=> b!7375668 (= e!4415263 call!677978)))

(declare-fun bm!677974 () Bool)

(declare-fun call!677979 () Bool)

(assert (=> bm!677974 (= call!677979 call!677978)))

(declare-fun b!7375669 () Bool)

(assert (=> b!7375669 (= e!4415265 e!4415261)))

(assert (=> b!7375669 (= c!1370871 (is-Union!19298 r1!2370))))

(declare-fun b!7375670 () Bool)

(assert (=> b!7375670 (= e!4415266 call!677979)))

(declare-fun b!7375671 () Bool)

(assert (=> b!7375671 (= e!4415264 e!4415265)))

(declare-fun c!1370870 () Bool)

(assert (=> b!7375671 (= c!1370870 (is-Star!19298 r1!2370))))

(declare-fun bm!677975 () Bool)

(assert (=> bm!677975 (= call!677978 (validRegex!9894 (ite c!1370870 (reg!19627 r1!2370) (ite c!1370871 (regTwo!39109 r1!2370) (regOne!39108 r1!2370)))))))

(declare-fun b!7375672 () Bool)

(declare-fun e!4415262 () Bool)

(assert (=> b!7375672 (= e!4415262 call!677980)))

(declare-fun b!7375673 () Bool)

(assert (=> b!7375673 (= e!4415267 e!4415262)))

(declare-fun res!2975495 () Bool)

(assert (=> b!7375673 (=> (not res!2975495) (not e!4415262))))

(assert (=> b!7375673 (= res!2975495 call!677979)))

(assert (= (and d!2284588 (not res!2975496)) b!7375671))

(assert (= (and b!7375671 c!1370870) b!7375666))

(assert (= (and b!7375671 (not c!1370870)) b!7375669))

(assert (= (and b!7375666 res!2975493) b!7375668))

(assert (= (and b!7375669 c!1370871) b!7375667))

(assert (= (and b!7375669 (not c!1370871)) b!7375665))

(assert (= (and b!7375667 res!2975494) b!7375670))

(assert (= (and b!7375665 (not res!2975492)) b!7375673))

(assert (= (and b!7375673 res!2975495) b!7375672))

(assert (= (or b!7375667 b!7375672) bm!677973))

(assert (= (or b!7375670 b!7375673) bm!677974))

(assert (= (or b!7375668 bm!677974) bm!677975))

(declare-fun m!8027662 () Bool)

(assert (=> bm!677973 m!8027662))

(declare-fun m!8027664 () Bool)

(assert (=> b!7375666 m!8027664))

(declare-fun m!8027666 () Bool)

(assert (=> bm!677975 m!8027666))

(assert (=> start!719694 d!2284588))

(declare-fun bs!1921214 () Bool)

(declare-fun d!2284590 () Bool)

(assert (= bs!1921214 (and d!2284590 b!7375488)))

(declare-fun lambda!458274 () Int)

(assert (=> bs!1921214 (= lambda!458274 lambda!458268)))

(assert (=> d!2284590 (= (inv!91586 cWitness!61) (forall!18096 (exprs!8738 cWitness!61) lambda!458274))))

(declare-fun bs!1921215 () Bool)

(assert (= bs!1921215 d!2284590))

(declare-fun m!8027668 () Bool)

(assert (=> bs!1921215 m!8027668))

(assert (=> start!719694 d!2284590))

(declare-fun bs!1921216 () Bool)

(declare-fun d!2284592 () Bool)

(assert (= bs!1921216 (and d!2284592 b!7375488)))

(declare-fun lambda!458275 () Int)

(assert (=> bs!1921216 (= lambda!458275 lambda!458268)))

(declare-fun bs!1921217 () Bool)

(assert (= bs!1921217 (and d!2284592 d!2284590)))

(assert (=> bs!1921217 (= lambda!458275 lambda!458274)))

(assert (=> d!2284592 (= (inv!91586 ct1!282) (forall!18096 (exprs!8738 ct1!282) lambda!458275))))

(declare-fun bs!1921218 () Bool)

(assert (= bs!1921218 d!2284592))

(declare-fun m!8027670 () Bool)

(assert (=> bs!1921218 m!8027670))

(assert (=> start!719694 d!2284592))

(declare-fun bs!1921219 () Bool)

(declare-fun d!2284594 () Bool)

(assert (= bs!1921219 (and d!2284594 b!7375488)))

(declare-fun lambda!458276 () Int)

(assert (=> bs!1921219 (= lambda!458276 lambda!458268)))

(declare-fun bs!1921220 () Bool)

(assert (= bs!1921220 (and d!2284594 d!2284590)))

(assert (=> bs!1921220 (= lambda!458276 lambda!458274)))

(declare-fun bs!1921221 () Bool)

(assert (= bs!1921221 (and d!2284594 d!2284592)))

(assert (=> bs!1921221 (= lambda!458276 lambda!458275)))

(assert (=> d!2284594 (= (inv!91586 ct2!378) (forall!18096 (exprs!8738 ct2!378) lambda!458276))))

(declare-fun bs!1921222 () Bool)

(assert (= bs!1921222 d!2284594))

(declare-fun m!8027672 () Bool)

(assert (=> bs!1921222 m!8027672))

(assert (=> start!719694 d!2284594))

(declare-fun b!7375685 () Bool)

(declare-fun e!4415270 () Bool)

(declare-fun tp!2097286 () Bool)

(declare-fun tp!2097285 () Bool)

(assert (=> b!7375685 (= e!4415270 (and tp!2097286 tp!2097285))))

(declare-fun b!7375684 () Bool)

(assert (=> b!7375684 (= e!4415270 tp_is_empty!48841)))

(assert (=> b!7375494 (= tp!2097243 e!4415270)))

(declare-fun b!7375687 () Bool)

(declare-fun tp!2097287 () Bool)

(declare-fun tp!2097288 () Bool)

(assert (=> b!7375687 (= e!4415270 (and tp!2097287 tp!2097288))))

(declare-fun b!7375686 () Bool)

(declare-fun tp!2097284 () Bool)

(assert (=> b!7375686 (= e!4415270 tp!2097284)))

(assert (= (and b!7375494 (is-ElementMatch!19298 (regOne!39109 r1!2370))) b!7375684))

(assert (= (and b!7375494 (is-Concat!28143 (regOne!39109 r1!2370))) b!7375685))

(assert (= (and b!7375494 (is-Star!19298 (regOne!39109 r1!2370))) b!7375686))

(assert (= (and b!7375494 (is-Union!19298 (regOne!39109 r1!2370))) b!7375687))

(declare-fun b!7375689 () Bool)

(declare-fun e!4415271 () Bool)

(declare-fun tp!2097291 () Bool)

(declare-fun tp!2097290 () Bool)

(assert (=> b!7375689 (= e!4415271 (and tp!2097291 tp!2097290))))

(declare-fun b!7375688 () Bool)

(assert (=> b!7375688 (= e!4415271 tp_is_empty!48841)))

(assert (=> b!7375494 (= tp!2097244 e!4415271)))

(declare-fun b!7375691 () Bool)

(declare-fun tp!2097292 () Bool)

(declare-fun tp!2097293 () Bool)

(assert (=> b!7375691 (= e!4415271 (and tp!2097292 tp!2097293))))

(declare-fun b!7375690 () Bool)

(declare-fun tp!2097289 () Bool)

(assert (=> b!7375690 (= e!4415271 tp!2097289)))

(assert (= (and b!7375494 (is-ElementMatch!19298 (regTwo!39109 r1!2370))) b!7375688))

(assert (= (and b!7375494 (is-Concat!28143 (regTwo!39109 r1!2370))) b!7375689))

(assert (= (and b!7375494 (is-Star!19298 (regTwo!39109 r1!2370))) b!7375690))

(assert (= (and b!7375494 (is-Union!19298 (regTwo!39109 r1!2370))) b!7375691))

(declare-fun b!7375696 () Bool)

(declare-fun e!4415274 () Bool)

(declare-fun tp!2097298 () Bool)

(declare-fun tp!2097299 () Bool)

(assert (=> b!7375696 (= e!4415274 (and tp!2097298 tp!2097299))))

(assert (=> b!7375493 (= tp!2097242 e!4415274)))

(assert (= (and b!7375493 (is-Cons!71670 (exprs!8738 ct1!282))) b!7375696))

(declare-fun b!7375697 () Bool)

(declare-fun e!4415275 () Bool)

(declare-fun tp!2097300 () Bool)

(declare-fun tp!2097301 () Bool)

(assert (=> b!7375697 (= e!4415275 (and tp!2097300 tp!2097301))))

(assert (=> b!7375490 (= tp!2097247 e!4415275)))

(assert (= (and b!7375490 (is-Cons!71670 (exprs!8738 ct2!378))) b!7375697))

(declare-fun b!7375699 () Bool)

(declare-fun e!4415276 () Bool)

(declare-fun tp!2097304 () Bool)

(declare-fun tp!2097303 () Bool)

(assert (=> b!7375699 (= e!4415276 (and tp!2097304 tp!2097303))))

(declare-fun b!7375698 () Bool)

(assert (=> b!7375698 (= e!4415276 tp_is_empty!48841)))

(assert (=> b!7375486 (= tp!2097248 e!4415276)))

(declare-fun b!7375701 () Bool)

(declare-fun tp!2097305 () Bool)

(declare-fun tp!2097306 () Bool)

(assert (=> b!7375701 (= e!4415276 (and tp!2097305 tp!2097306))))

(declare-fun b!7375700 () Bool)

(declare-fun tp!2097302 () Bool)

(assert (=> b!7375700 (= e!4415276 tp!2097302)))

(assert (= (and b!7375486 (is-ElementMatch!19298 (regOne!39108 r1!2370))) b!7375698))

(assert (= (and b!7375486 (is-Concat!28143 (regOne!39108 r1!2370))) b!7375699))

(assert (= (and b!7375486 (is-Star!19298 (regOne!39108 r1!2370))) b!7375700))

(assert (= (and b!7375486 (is-Union!19298 (regOne!39108 r1!2370))) b!7375701))

(declare-fun b!7375703 () Bool)

(declare-fun e!4415277 () Bool)

(declare-fun tp!2097309 () Bool)

(declare-fun tp!2097308 () Bool)

(assert (=> b!7375703 (= e!4415277 (and tp!2097309 tp!2097308))))

(declare-fun b!7375702 () Bool)

(assert (=> b!7375702 (= e!4415277 tp_is_empty!48841)))

(assert (=> b!7375486 (= tp!2097249 e!4415277)))

(declare-fun b!7375705 () Bool)

(declare-fun tp!2097310 () Bool)

(declare-fun tp!2097311 () Bool)

(assert (=> b!7375705 (= e!4415277 (and tp!2097310 tp!2097311))))

(declare-fun b!7375704 () Bool)

(declare-fun tp!2097307 () Bool)

(assert (=> b!7375704 (= e!4415277 tp!2097307)))

(assert (= (and b!7375486 (is-ElementMatch!19298 (regTwo!39108 r1!2370))) b!7375702))

(assert (= (and b!7375486 (is-Concat!28143 (regTwo!39108 r1!2370))) b!7375703))

(assert (= (and b!7375486 (is-Star!19298 (regTwo!39108 r1!2370))) b!7375704))

(assert (= (and b!7375486 (is-Union!19298 (regTwo!39108 r1!2370))) b!7375705))

(declare-fun b!7375706 () Bool)

(declare-fun e!4415278 () Bool)

(declare-fun tp!2097312 () Bool)

(declare-fun tp!2097313 () Bool)

(assert (=> b!7375706 (= e!4415278 (and tp!2097312 tp!2097313))))

(assert (=> b!7375485 (= tp!2097246 e!4415278)))

(assert (= (and b!7375485 (is-Cons!71670 (exprs!8738 cWitness!61))) b!7375706))

(declare-fun b!7375708 () Bool)

(declare-fun e!4415279 () Bool)

(declare-fun tp!2097316 () Bool)

(declare-fun tp!2097315 () Bool)

(assert (=> b!7375708 (= e!4415279 (and tp!2097316 tp!2097315))))

(declare-fun b!7375707 () Bool)

(assert (=> b!7375707 (= e!4415279 tp_is_empty!48841)))

(assert (=> b!7375480 (= tp!2097245 e!4415279)))

(declare-fun b!7375710 () Bool)

(declare-fun tp!2097317 () Bool)

(declare-fun tp!2097318 () Bool)

(assert (=> b!7375710 (= e!4415279 (and tp!2097317 tp!2097318))))

(declare-fun b!7375709 () Bool)

(declare-fun tp!2097314 () Bool)

(assert (=> b!7375709 (= e!4415279 tp!2097314)))

(assert (= (and b!7375480 (is-ElementMatch!19298 (reg!19627 r1!2370))) b!7375707))

(assert (= (and b!7375480 (is-Concat!28143 (reg!19627 r1!2370))) b!7375708))

(assert (= (and b!7375480 (is-Star!19298 (reg!19627 r1!2370))) b!7375709))

(assert (= (and b!7375480 (is-Union!19298 (reg!19627 r1!2370))) b!7375710))

(push 1)

(assert (not b!7375710))

(assert (not b!7375591))

(assert (not b!7375700))

(assert (not bm!677964))

(assert (not bm!677975))

(assert (not b!7375708))

(assert (not bm!677950))

(assert (not b!7375690))

(assert (not b!7375689))

(assert (not b!7375691))

(assert (not b!7375697))

(assert (not bm!677972))

(assert (not b!7375646))

(assert (not b!7375704))

(assert (not bm!677943))

(assert (not b!7375685))

(assert (not b!7375706))

(assert (not b!7375701))

(assert (not b!7375602))

(assert (not bm!677945))

(assert (not b!7375705))

(assert (not b!7375686))

(assert (not bm!677949))

(assert (not b!7375703))

(assert (not b!7375687))

(assert (not b!7375643))

(assert (not b!7375642))

(assert (not d!2284580))

(assert (not b!7375709))

(assert (not d!2284590))

(assert (not bm!677944))

(assert (not bm!677970))

(assert (not bm!677966))

(assert (not b!7375656))

(assert (not d!2284582))

(assert (not b!7375666))

(assert (not d!2284594))

(assert (not b!7375696))

(assert (not bm!677927))

(assert (not b!7375559))

(assert (not bm!677971))

(assert (not d!2284570))

(assert (not b!7375699))

(assert (not d!2284592))

(assert (not bm!677973))

(assert (not bm!677951))

(assert (not bm!677925))

(assert tp_is_empty!48841)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

