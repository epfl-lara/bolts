; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724608 () Bool)

(assert start!724608)

(declare-fun b!7477668 () Bool)

(assert (=> b!7477668 true))

(assert (=> b!7477668 true))

(assert (=> b!7477668 true))

(declare-fun lambda!463279 () Int)

(declare-fun lambda!463278 () Int)

(assert (=> b!7477668 (not (= lambda!463279 lambda!463278))))

(assert (=> b!7477668 true))

(assert (=> b!7477668 true))

(assert (=> b!7477668 true))

(declare-fun b!7477656 () Bool)

(declare-fun e!4460626 () Bool)

(declare-fun tp!2168706 () Bool)

(declare-fun tp!2168715 () Bool)

(assert (=> b!7477656 (= e!4460626 (and tp!2168706 tp!2168715))))

(declare-fun b!7477657 () Bool)

(declare-fun e!4460627 () Bool)

(declare-fun tp!2168711 () Bool)

(declare-fun tp!2168710 () Bool)

(assert (=> b!7477657 (= e!4460627 (and tp!2168711 tp!2168710))))

(declare-fun b!7477658 () Bool)

(declare-fun e!4460628 () Bool)

(declare-fun tp!2168700 () Bool)

(assert (=> b!7477658 (= e!4460628 tp!2168700)))

(declare-fun b!7477659 () Bool)

(declare-fun tp!2168704 () Bool)

(declare-fun tp!2168705 () Bool)

(assert (=> b!7477659 (= e!4460626 (and tp!2168704 tp!2168705))))

(declare-fun b!7477660 () Bool)

(declare-fun tp_is_empty!49497 () Bool)

(assert (=> b!7477660 (= e!4460627 tp_is_empty!49497)))

(declare-fun b!7477661 () Bool)

(declare-fun e!4460624 () Bool)

(declare-fun tp!2168714 () Bool)

(assert (=> b!7477661 (= e!4460624 (and tp_is_empty!49497 tp!2168714))))

(declare-fun res!2999972 () Bool)

(declare-fun e!4460625 () Bool)

(assert (=> start!724608 (=> (not res!2999972) (not e!4460625))))

(declare-datatypes ((C!39482 0))(
  ( (C!39483 (val!30139 Int)) )
))
(declare-datatypes ((Regex!19604 0))(
  ( (ElementMatch!19604 (c!1381321 C!39482)) (Concat!28449 (regOne!39720 Regex!19604) (regTwo!39720 Regex!19604)) (EmptyExpr!19604) (Star!19604 (reg!19933 Regex!19604)) (EmptyLang!19604) (Union!19604 (regOne!39721 Regex!19604) (regTwo!39721 Regex!19604)) )
))
(declare-fun r1!5845 () Regex!19604)

(declare-fun validRegex!10118 (Regex!19604) Bool)

(assert (=> start!724608 (= res!2999972 (validRegex!10118 r1!5845))))

(assert (=> start!724608 e!4460625))

(assert (=> start!724608 e!4460626))

(assert (=> start!724608 e!4460627))

(assert (=> start!724608 e!4460628))

(assert (=> start!724608 e!4460624))

(declare-fun b!7477662 () Bool)

(declare-fun tp!2168701 () Bool)

(declare-fun tp!2168708 () Bool)

(assert (=> b!7477662 (= e!4460628 (and tp!2168701 tp!2168708))))

(declare-fun b!7477663 () Bool)

(declare-fun tp!2168709 () Bool)

(assert (=> b!7477663 (= e!4460626 tp!2168709)))

(declare-fun b!7477664 () Bool)

(declare-fun tp!2168713 () Bool)

(declare-fun tp!2168702 () Bool)

(assert (=> b!7477664 (= e!4460628 (and tp!2168713 tp!2168702))))

(declare-fun b!7477665 () Bool)

(declare-fun tp!2168712 () Bool)

(assert (=> b!7477665 (= e!4460627 tp!2168712)))

(declare-fun b!7477666 () Bool)

(declare-fun res!2999973 () Bool)

(assert (=> b!7477666 (=> (not res!2999973) (not e!4460625))))

(declare-fun rTail!78 () Regex!19604)

(assert (=> b!7477666 (= res!2999973 (validRegex!10118 rTail!78))))

(declare-fun b!7477667 () Bool)

(assert (=> b!7477667 (= e!4460628 tp_is_empty!49497)))

(declare-fun e!4460623 () Bool)

(declare-fun lt!2627461 () Bool)

(assert (=> b!7477668 (= e!4460623 (not lt!2627461))))

(declare-fun Exists!4223 (Int) Bool)

(assert (=> b!7477668 (= (Exists!4223 lambda!463278) (Exists!4223 lambda!463279))))

(declare-datatypes ((List!72320 0))(
  ( (Nil!72196) (Cons!72196 (h!78644 C!39482) (t!386889 List!72320)) )
))
(declare-fun s!13591 () List!72320)

(declare-fun lt!2627463 () Regex!19604)

(declare-datatypes ((Unit!166043 0))(
  ( (Unit!166044) )
))
(declare-fun lt!2627467 () Unit!166043)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2557 (Regex!19604 Regex!19604 List!72320) Unit!166043)

(assert (=> b!7477668 (= lt!2627467 (lemmaExistCutMatchRandMatchRSpecEquivalent!2557 lt!2627463 rTail!78 s!13591))))

(assert (=> b!7477668 (= lt!2627461 (Exists!4223 lambda!463278))))

(declare-datatypes ((tuple2!68658 0))(
  ( (tuple2!68659 (_1!37632 List!72320) (_2!37632 List!72320)) )
))
(declare-datatypes ((Option!17161 0))(
  ( (None!17160) (Some!17160 (v!54289 tuple2!68658)) )
))
(declare-fun isDefined!13850 (Option!17161) Bool)

(declare-fun findConcatSeparation!3283 (Regex!19604 Regex!19604 List!72320 List!72320 List!72320) Option!17161)

(assert (=> b!7477668 (= lt!2627461 (isDefined!13850 (findConcatSeparation!3283 lt!2627463 rTail!78 Nil!72196 s!13591 s!13591)))))

(declare-fun lt!2627462 () Unit!166043)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3041 (Regex!19604 Regex!19604 List!72320) Unit!166043)

(assert (=> b!7477668 (= lt!2627462 (lemmaFindConcatSeparationEquivalentToExists!3041 lt!2627463 rTail!78 s!13591))))

(declare-fun b!7477669 () Bool)

(declare-fun res!2999971 () Bool)

(assert (=> b!7477669 (=> (not res!2999971) (not e!4460625))))

(declare-fun r2!5783 () Regex!19604)

(assert (=> b!7477669 (= res!2999971 (validRegex!10118 r2!5783))))

(declare-fun b!7477670 () Bool)

(assert (=> b!7477670 (= e!4460626 tp_is_empty!49497)))

(declare-fun b!7477671 () Bool)

(assert (=> b!7477671 (= e!4460625 (not e!4460623))))

(declare-fun res!2999974 () Bool)

(assert (=> b!7477671 (=> res!2999974 e!4460623)))

(declare-fun lt!2627464 () Bool)

(assert (=> b!7477671 (= res!2999974 lt!2627464)))

(declare-fun lt!2627468 () Regex!19604)

(declare-fun matchR!9368 (Regex!19604 List!72320) Bool)

(declare-fun matchRSpec!4283 (Regex!19604 List!72320) Bool)

(assert (=> b!7477671 (= (matchR!9368 lt!2627468 s!13591) (matchRSpec!4283 lt!2627468 s!13591))))

(declare-fun lt!2627460 () Unit!166043)

(declare-fun mainMatchTheorem!4277 (Regex!19604 List!72320) Unit!166043)

(assert (=> b!7477671 (= lt!2627460 (mainMatchTheorem!4277 lt!2627468 s!13591))))

(declare-fun lt!2627465 () Regex!19604)

(assert (=> b!7477671 (= lt!2627464 (matchRSpec!4283 lt!2627465 s!13591))))

(assert (=> b!7477671 (= lt!2627464 (matchR!9368 lt!2627465 s!13591))))

(declare-fun lt!2627466 () Unit!166043)

(assert (=> b!7477671 (= lt!2627466 (mainMatchTheorem!4277 lt!2627465 s!13591))))

(assert (=> b!7477671 (= lt!2627468 (Union!19604 (Concat!28449 r1!5845 rTail!78) (Concat!28449 r2!5783 rTail!78)))))

(assert (=> b!7477671 (= lt!2627465 (Concat!28449 lt!2627463 rTail!78))))

(assert (=> b!7477671 (= lt!2627463 (Union!19604 r1!5845 r2!5783))))

(declare-fun b!7477672 () Bool)

(declare-fun tp!2168707 () Bool)

(declare-fun tp!2168703 () Bool)

(assert (=> b!7477672 (= e!4460627 (and tp!2168707 tp!2168703))))

(assert (= (and start!724608 res!2999972) b!7477669))

(assert (= (and b!7477669 res!2999971) b!7477666))

(assert (= (and b!7477666 res!2999973) b!7477671))

(assert (= (and b!7477671 (not res!2999974)) b!7477668))

(assert (= (and start!724608 (is-ElementMatch!19604 r1!5845)) b!7477670))

(assert (= (and start!724608 (is-Concat!28449 r1!5845)) b!7477659))

(assert (= (and start!724608 (is-Star!19604 r1!5845)) b!7477663))

(assert (= (and start!724608 (is-Union!19604 r1!5845)) b!7477656))

(assert (= (and start!724608 (is-ElementMatch!19604 r2!5783)) b!7477660))

(assert (= (and start!724608 (is-Concat!28449 r2!5783)) b!7477657))

(assert (= (and start!724608 (is-Star!19604 r2!5783)) b!7477665))

(assert (= (and start!724608 (is-Union!19604 r2!5783)) b!7477672))

(assert (= (and start!724608 (is-ElementMatch!19604 rTail!78)) b!7477667))

(assert (= (and start!724608 (is-Concat!28449 rTail!78)) b!7477664))

(assert (= (and start!724608 (is-Star!19604 rTail!78)) b!7477658))

(assert (= (and start!724608 (is-Union!19604 rTail!78)) b!7477662))

(assert (= (and start!724608 (is-Cons!72196 s!13591)) b!7477661))

(declare-fun m!8071436 () Bool)

(assert (=> b!7477666 m!8071436))

(declare-fun m!8071438 () Bool)

(assert (=> b!7477671 m!8071438))

(declare-fun m!8071440 () Bool)

(assert (=> b!7477671 m!8071440))

(declare-fun m!8071442 () Bool)

(assert (=> b!7477671 m!8071442))

(declare-fun m!8071444 () Bool)

(assert (=> b!7477671 m!8071444))

(declare-fun m!8071446 () Bool)

(assert (=> b!7477671 m!8071446))

(declare-fun m!8071448 () Bool)

(assert (=> b!7477671 m!8071448))

(declare-fun m!8071450 () Bool)

(assert (=> start!724608 m!8071450))

(declare-fun m!8071452 () Bool)

(assert (=> b!7477669 m!8071452))

(declare-fun m!8071454 () Bool)

(assert (=> b!7477668 m!8071454))

(declare-fun m!8071456 () Bool)

(assert (=> b!7477668 m!8071456))

(declare-fun m!8071458 () Bool)

(assert (=> b!7477668 m!8071458))

(declare-fun m!8071460 () Bool)

(assert (=> b!7477668 m!8071460))

(declare-fun m!8071462 () Bool)

(assert (=> b!7477668 m!8071462))

(assert (=> b!7477668 m!8071458))

(declare-fun m!8071464 () Bool)

(assert (=> b!7477668 m!8071464))

(assert (=> b!7477668 m!8071454))

(push 1)

(assert (not b!7477666))

(assert (not b!7477672))

(assert (not b!7477661))

(assert (not b!7477671))

(assert (not b!7477669))

(assert (not b!7477658))

(assert (not b!7477668))

(assert (not b!7477664))

(assert tp_is_empty!49497)

(assert (not b!7477659))

(assert (not b!7477665))

(assert (not b!7477663))

(assert (not b!7477657))

(assert (not b!7477656))

(assert (not start!724608))

(assert (not b!7477662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7477762 () Bool)

(declare-fun e!4460667 () Bool)

(declare-fun e!4460668 () Bool)

(assert (=> b!7477762 (= e!4460667 e!4460668)))

(declare-fun res!3000009 () Bool)

(assert (=> b!7477762 (=> (not res!3000009) (not e!4460668))))

(declare-fun call!686519 () Bool)

(assert (=> b!7477762 (= res!3000009 call!686519)))

(declare-fun b!7477763 () Bool)

(declare-fun e!4460670 () Bool)

(declare-fun e!4460671 () Bool)

(assert (=> b!7477763 (= e!4460670 e!4460671)))

(declare-fun res!3000011 () Bool)

(declare-fun nullable!8542 (Regex!19604) Bool)

(assert (=> b!7477763 (= res!3000011 (not (nullable!8542 (reg!19933 r2!5783))))))

(assert (=> b!7477763 (=> (not res!3000011) (not e!4460671))))

(declare-fun bm!686512 () Bool)

(declare-fun call!686518 () Bool)

(declare-fun call!686517 () Bool)

(assert (=> bm!686512 (= call!686518 call!686517)))

(declare-fun b!7477764 () Bool)

(declare-fun e!4460669 () Bool)

(assert (=> b!7477764 (= e!4460670 e!4460669)))

(declare-fun c!1381327 () Bool)

(assert (=> b!7477764 (= c!1381327 (is-Union!19604 r2!5783))))

(declare-fun c!1381328 () Bool)

(declare-fun bm!686513 () Bool)

(assert (=> bm!686513 (= call!686517 (validRegex!10118 (ite c!1381328 (reg!19933 r2!5783) (ite c!1381327 (regTwo!39721 r2!5783) (regTwo!39720 r2!5783)))))))

(declare-fun bm!686514 () Bool)

(assert (=> bm!686514 (= call!686519 (validRegex!10118 (ite c!1381327 (regOne!39721 r2!5783) (regOne!39720 r2!5783))))))

(declare-fun b!7477765 () Bool)

(declare-fun e!4460672 () Bool)

(assert (=> b!7477765 (= e!4460672 e!4460670)))

(assert (=> b!7477765 (= c!1381328 (is-Star!19604 r2!5783))))

(declare-fun b!7477767 () Bool)

(declare-fun res!3000010 () Bool)

(declare-fun e!4460673 () Bool)

(assert (=> b!7477767 (=> (not res!3000010) (not e!4460673))))

(assert (=> b!7477767 (= res!3000010 call!686519)))

(assert (=> b!7477767 (= e!4460669 e!4460673)))

(declare-fun b!7477768 () Bool)

(assert (=> b!7477768 (= e!4460673 call!686518)))

(declare-fun b!7477769 () Bool)

(assert (=> b!7477769 (= e!4460671 call!686517)))

(declare-fun b!7477770 () Bool)

(assert (=> b!7477770 (= e!4460668 call!686518)))

(declare-fun b!7477766 () Bool)

(declare-fun res!3000013 () Bool)

(assert (=> b!7477766 (=> res!3000013 e!4460667)))

(assert (=> b!7477766 (= res!3000013 (not (is-Concat!28449 r2!5783)))))

(assert (=> b!7477766 (= e!4460669 e!4460667)))

(declare-fun d!2299716 () Bool)

(declare-fun res!3000012 () Bool)

(assert (=> d!2299716 (=> res!3000012 e!4460672)))

(assert (=> d!2299716 (= res!3000012 (is-ElementMatch!19604 r2!5783))))

(assert (=> d!2299716 (= (validRegex!10118 r2!5783) e!4460672)))

(assert (= (and d!2299716 (not res!3000012)) b!7477765))

(assert (= (and b!7477765 c!1381328) b!7477763))

(assert (= (and b!7477765 (not c!1381328)) b!7477764))

(assert (= (and b!7477763 res!3000011) b!7477769))

(assert (= (and b!7477764 c!1381327) b!7477767))

(assert (= (and b!7477764 (not c!1381327)) b!7477766))

(assert (= (and b!7477767 res!3000010) b!7477768))

(assert (= (and b!7477766 (not res!3000013)) b!7477762))

(assert (= (and b!7477762 res!3000009) b!7477770))

(assert (= (or b!7477768 b!7477770) bm!686512))

(assert (= (or b!7477767 b!7477762) bm!686514))

(assert (= (or b!7477769 bm!686512) bm!686513))

(declare-fun m!8071502 () Bool)

(assert (=> b!7477763 m!8071502))

(declare-fun m!8071504 () Bool)

(assert (=> bm!686513 m!8071504))

(declare-fun m!8071506 () Bool)

(assert (=> bm!686514 m!8071506))

(assert (=> b!7477669 d!2299716))

(declare-fun bs!1932447 () Bool)

(declare-fun d!2299726 () Bool)

(assert (= bs!1932447 (and d!2299726 b!7477668)))

(declare-fun lambda!463292 () Int)

(assert (=> bs!1932447 (= lambda!463292 lambda!463278)))

(assert (=> bs!1932447 (not (= lambda!463292 lambda!463279))))

(assert (=> d!2299726 true))

(assert (=> d!2299726 true))

(assert (=> d!2299726 true))

(declare-fun lambda!463293 () Int)

(assert (=> bs!1932447 (not (= lambda!463293 lambda!463278))))

(assert (=> bs!1932447 (= lambda!463293 lambda!463279)))

(declare-fun bs!1932448 () Bool)

(assert (= bs!1932448 d!2299726))

(assert (=> bs!1932448 (not (= lambda!463293 lambda!463292))))

(assert (=> d!2299726 true))

(assert (=> d!2299726 true))

(assert (=> d!2299726 true))

(assert (=> d!2299726 (= (Exists!4223 lambda!463292) (Exists!4223 lambda!463293))))

(declare-fun lt!2627498 () Unit!166043)

(declare-fun choose!57802 (Regex!19604 Regex!19604 List!72320) Unit!166043)

(assert (=> d!2299726 (= lt!2627498 (choose!57802 lt!2627463 rTail!78 s!13591))))

(assert (=> d!2299726 (validRegex!10118 lt!2627463)))

(assert (=> d!2299726 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2557 lt!2627463 rTail!78 s!13591) lt!2627498)))

(declare-fun m!8071508 () Bool)

(assert (=> bs!1932448 m!8071508))

(declare-fun m!8071510 () Bool)

(assert (=> bs!1932448 m!8071510))

(declare-fun m!8071512 () Bool)

(assert (=> bs!1932448 m!8071512))

(declare-fun m!8071514 () Bool)

(assert (=> bs!1932448 m!8071514))

(assert (=> b!7477668 d!2299726))

(declare-fun d!2299728 () Bool)

(declare-fun choose!57803 (Int) Bool)

(assert (=> d!2299728 (= (Exists!4223 lambda!463279) (choose!57803 lambda!463279))))

(declare-fun bs!1932449 () Bool)

(assert (= bs!1932449 d!2299728))

(declare-fun m!8071516 () Bool)

(assert (=> bs!1932449 m!8071516))

(assert (=> b!7477668 d!2299728))

(declare-fun d!2299730 () Bool)

(assert (=> d!2299730 (= (Exists!4223 lambda!463278) (choose!57803 lambda!463278))))

(declare-fun bs!1932450 () Bool)

(assert (= bs!1932450 d!2299730))

(declare-fun m!8071518 () Bool)

(assert (=> bs!1932450 m!8071518))

(assert (=> b!7477668 d!2299730))

(declare-fun d!2299732 () Bool)

(declare-fun isEmpty!41199 (Option!17161) Bool)

(assert (=> d!2299732 (= (isDefined!13850 (findConcatSeparation!3283 lt!2627463 rTail!78 Nil!72196 s!13591 s!13591)) (not (isEmpty!41199 (findConcatSeparation!3283 lt!2627463 rTail!78 Nil!72196 s!13591 s!13591))))))

(declare-fun bs!1932451 () Bool)

(assert (= bs!1932451 d!2299732))

(assert (=> bs!1932451 m!8071458))

(declare-fun m!8071520 () Bool)

(assert (=> bs!1932451 m!8071520))

(assert (=> b!7477668 d!2299732))

(declare-fun d!2299734 () Bool)

(declare-fun e!4460699 () Bool)

(assert (=> d!2299734 e!4460699))

(declare-fun res!3000042 () Bool)

(assert (=> d!2299734 (=> res!3000042 e!4460699)))

(declare-fun e!4460700 () Bool)

(assert (=> d!2299734 (= res!3000042 e!4460700)))

(declare-fun res!3000045 () Bool)

(assert (=> d!2299734 (=> (not res!3000045) (not e!4460700))))

(declare-fun lt!2627511 () Option!17161)

(assert (=> d!2299734 (= res!3000045 (isDefined!13850 lt!2627511))))

(declare-fun e!4460701 () Option!17161)

(assert (=> d!2299734 (= lt!2627511 e!4460701)))

(declare-fun c!1381338 () Bool)

(declare-fun e!4460702 () Bool)

(assert (=> d!2299734 (= c!1381338 e!4460702)))

(declare-fun res!3000043 () Bool)

(assert (=> d!2299734 (=> (not res!3000043) (not e!4460702))))

(assert (=> d!2299734 (= res!3000043 (matchR!9368 lt!2627463 Nil!72196))))

(assert (=> d!2299734 (validRegex!10118 lt!2627463)))

(assert (=> d!2299734 (= (findConcatSeparation!3283 lt!2627463 rTail!78 Nil!72196 s!13591 s!13591) lt!2627511)))

(declare-fun b!7477815 () Bool)

(declare-fun e!4460698 () Option!17161)

(assert (=> b!7477815 (= e!4460701 e!4460698)))

(declare-fun c!1381337 () Bool)

(assert (=> b!7477815 (= c!1381337 (is-Nil!72196 s!13591))))

(declare-fun b!7477816 () Bool)

(assert (=> b!7477816 (= e!4460699 (not (isDefined!13850 lt!2627511)))))

(declare-fun b!7477817 () Bool)

(assert (=> b!7477817 (= e!4460701 (Some!17160 (tuple2!68659 Nil!72196 s!13591)))))

(declare-fun b!7477818 () Bool)

(declare-fun lt!2627512 () Unit!166043)

(declare-fun lt!2627513 () Unit!166043)

(assert (=> b!7477818 (= lt!2627512 lt!2627513)))

(declare-fun ++!17218 (List!72320 List!72320) List!72320)

(assert (=> b!7477818 (= (++!17218 (++!17218 Nil!72196 (Cons!72196 (h!78644 s!13591) Nil!72196)) (t!386889 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3094 (List!72320 C!39482 List!72320 List!72320) Unit!166043)

(assert (=> b!7477818 (= lt!2627513 (lemmaMoveElementToOtherListKeepsConcatEq!3094 Nil!72196 (h!78644 s!13591) (t!386889 s!13591) s!13591))))

(assert (=> b!7477818 (= e!4460698 (findConcatSeparation!3283 lt!2627463 rTail!78 (++!17218 Nil!72196 (Cons!72196 (h!78644 s!13591) Nil!72196)) (t!386889 s!13591) s!13591))))

(declare-fun b!7477819 () Bool)

(declare-fun res!3000044 () Bool)

(assert (=> b!7477819 (=> (not res!3000044) (not e!4460700))))

(declare-fun get!25270 (Option!17161) tuple2!68658)

(assert (=> b!7477819 (= res!3000044 (matchR!9368 lt!2627463 (_1!37632 (get!25270 lt!2627511))))))

(declare-fun b!7477820 () Bool)

(declare-fun res!3000046 () Bool)

(assert (=> b!7477820 (=> (not res!3000046) (not e!4460700))))

(assert (=> b!7477820 (= res!3000046 (matchR!9368 rTail!78 (_2!37632 (get!25270 lt!2627511))))))

(declare-fun b!7477821 () Bool)

(assert (=> b!7477821 (= e!4460700 (= (++!17218 (_1!37632 (get!25270 lt!2627511)) (_2!37632 (get!25270 lt!2627511))) s!13591))))

(declare-fun b!7477822 () Bool)

(assert (=> b!7477822 (= e!4460702 (matchR!9368 rTail!78 s!13591))))

(declare-fun b!7477823 () Bool)

(assert (=> b!7477823 (= e!4460698 None!17160)))

(assert (= (and d!2299734 res!3000043) b!7477822))

(assert (= (and d!2299734 c!1381338) b!7477817))

(assert (= (and d!2299734 (not c!1381338)) b!7477815))

(assert (= (and b!7477815 c!1381337) b!7477823))

(assert (= (and b!7477815 (not c!1381337)) b!7477818))

(assert (= (and d!2299734 res!3000045) b!7477819))

(assert (= (and b!7477819 res!3000044) b!7477820))

(assert (= (and b!7477820 res!3000046) b!7477821))

(assert (= (and d!2299734 (not res!3000042)) b!7477816))

(declare-fun m!8071522 () Bool)

(assert (=> b!7477822 m!8071522))

(declare-fun m!8071524 () Bool)

(assert (=> b!7477820 m!8071524))

(declare-fun m!8071526 () Bool)

(assert (=> b!7477820 m!8071526))

(declare-fun m!8071528 () Bool)

(assert (=> b!7477816 m!8071528))

(assert (=> b!7477819 m!8071524))

(declare-fun m!8071530 () Bool)

(assert (=> b!7477819 m!8071530))

(assert (=> b!7477821 m!8071524))

(declare-fun m!8071532 () Bool)

(assert (=> b!7477821 m!8071532))

(declare-fun m!8071534 () Bool)

(assert (=> b!7477818 m!8071534))

(assert (=> b!7477818 m!8071534))

(declare-fun m!8071536 () Bool)

(assert (=> b!7477818 m!8071536))

(declare-fun m!8071538 () Bool)

(assert (=> b!7477818 m!8071538))

(assert (=> b!7477818 m!8071534))

(declare-fun m!8071540 () Bool)

(assert (=> b!7477818 m!8071540))

(assert (=> d!2299734 m!8071528))

(declare-fun m!8071542 () Bool)

(assert (=> d!2299734 m!8071542))

(assert (=> d!2299734 m!8071514))

(assert (=> b!7477668 d!2299734))

(declare-fun bs!1932452 () Bool)

(declare-fun d!2299736 () Bool)

(assert (= bs!1932452 (and d!2299736 b!7477668)))

(declare-fun lambda!463296 () Int)

(assert (=> bs!1932452 (= lambda!463296 lambda!463278)))

(assert (=> bs!1932452 (not (= lambda!463296 lambda!463279))))

(declare-fun bs!1932453 () Bool)

(assert (= bs!1932453 (and d!2299736 d!2299726)))

(assert (=> bs!1932453 (= lambda!463296 lambda!463292)))

(assert (=> bs!1932453 (not (= lambda!463296 lambda!463293))))

(assert (=> d!2299736 true))

(assert (=> d!2299736 true))

(assert (=> d!2299736 true))

(assert (=> d!2299736 (= (isDefined!13850 (findConcatSeparation!3283 lt!2627463 rTail!78 Nil!72196 s!13591 s!13591)) (Exists!4223 lambda!463296))))

(declare-fun lt!2627519 () Unit!166043)

(declare-fun choose!57804 (Regex!19604 Regex!19604 List!72320) Unit!166043)

(assert (=> d!2299736 (= lt!2627519 (choose!57804 lt!2627463 rTail!78 s!13591))))

(assert (=> d!2299736 (validRegex!10118 lt!2627463)))

(assert (=> d!2299736 (= (lemmaFindConcatSeparationEquivalentToExists!3041 lt!2627463 rTail!78 s!13591) lt!2627519)))

(declare-fun bs!1932454 () Bool)

(assert (= bs!1932454 d!2299736))

(assert (=> bs!1932454 m!8071458))

(assert (=> bs!1932454 m!8071464))

(assert (=> bs!1932454 m!8071514))

(declare-fun m!8071568 () Bool)

(assert (=> bs!1932454 m!8071568))

(declare-fun m!8071570 () Bool)

(assert (=> bs!1932454 m!8071570))

(assert (=> bs!1932454 m!8071458))

(assert (=> b!7477668 d!2299736))

(declare-fun b!7477837 () Bool)

(declare-fun e!4460710 () Bool)

(declare-fun e!4460711 () Bool)

(assert (=> b!7477837 (= e!4460710 e!4460711)))

(declare-fun res!3000056 () Bool)

(assert (=> b!7477837 (=> (not res!3000056) (not e!4460711))))

(declare-fun call!686522 () Bool)

(assert (=> b!7477837 (= res!3000056 call!686522)))

(declare-fun b!7477838 () Bool)

(declare-fun e!4460713 () Bool)

(declare-fun e!4460714 () Bool)

(assert (=> b!7477838 (= e!4460713 e!4460714)))

(declare-fun res!3000058 () Bool)

(assert (=> b!7477838 (= res!3000058 (not (nullable!8542 (reg!19933 rTail!78))))))

(assert (=> b!7477838 (=> (not res!3000058) (not e!4460714))))

(declare-fun bm!686515 () Bool)

(declare-fun call!686521 () Bool)

(declare-fun call!686520 () Bool)

(assert (=> bm!686515 (= call!686521 call!686520)))

(declare-fun b!7477839 () Bool)

(declare-fun e!4460712 () Bool)

(assert (=> b!7477839 (= e!4460713 e!4460712)))

(declare-fun c!1381341 () Bool)

(assert (=> b!7477839 (= c!1381341 (is-Union!19604 rTail!78))))

(declare-fun bm!686516 () Bool)

(declare-fun c!1381342 () Bool)

(assert (=> bm!686516 (= call!686520 (validRegex!10118 (ite c!1381342 (reg!19933 rTail!78) (ite c!1381341 (regTwo!39721 rTail!78) (regTwo!39720 rTail!78)))))))

(declare-fun bm!686517 () Bool)

(assert (=> bm!686517 (= call!686522 (validRegex!10118 (ite c!1381341 (regOne!39721 rTail!78) (regOne!39720 rTail!78))))))

(declare-fun b!7477840 () Bool)

(declare-fun e!4460715 () Bool)

(assert (=> b!7477840 (= e!4460715 e!4460713)))

(assert (=> b!7477840 (= c!1381342 (is-Star!19604 rTail!78))))

(declare-fun b!7477842 () Bool)

(declare-fun res!3000057 () Bool)

(declare-fun e!4460716 () Bool)

(assert (=> b!7477842 (=> (not res!3000057) (not e!4460716))))

(assert (=> b!7477842 (= res!3000057 call!686522)))

(assert (=> b!7477842 (= e!4460712 e!4460716)))

(declare-fun b!7477843 () Bool)

(assert (=> b!7477843 (= e!4460716 call!686521)))

(declare-fun b!7477844 () Bool)

(assert (=> b!7477844 (= e!4460714 call!686520)))

(declare-fun b!7477845 () Bool)

(assert (=> b!7477845 (= e!4460711 call!686521)))

(declare-fun b!7477841 () Bool)

(declare-fun res!3000060 () Bool)

(assert (=> b!7477841 (=> res!3000060 e!4460710)))

(assert (=> b!7477841 (= res!3000060 (not (is-Concat!28449 rTail!78)))))

(assert (=> b!7477841 (= e!4460712 e!4460710)))

(declare-fun d!2299740 () Bool)

(declare-fun res!3000059 () Bool)

(assert (=> d!2299740 (=> res!3000059 e!4460715)))

(assert (=> d!2299740 (= res!3000059 (is-ElementMatch!19604 rTail!78))))

(assert (=> d!2299740 (= (validRegex!10118 rTail!78) e!4460715)))

(assert (= (and d!2299740 (not res!3000059)) b!7477840))

(assert (= (and b!7477840 c!1381342) b!7477838))

(assert (= (and b!7477840 (not c!1381342)) b!7477839))

(assert (= (and b!7477838 res!3000058) b!7477844))

(assert (= (and b!7477839 c!1381341) b!7477842))

(assert (= (and b!7477839 (not c!1381341)) b!7477841))

(assert (= (and b!7477842 res!3000057) b!7477843))

(assert (= (and b!7477841 (not res!3000060)) b!7477837))

(assert (= (and b!7477837 res!3000056) b!7477845))

(assert (= (or b!7477843 b!7477845) bm!686515))

(assert (= (or b!7477842 b!7477837) bm!686517))

(assert (= (or b!7477844 bm!686515) bm!686516))

(declare-fun m!8071572 () Bool)

(assert (=> b!7477838 m!8071572))

(declare-fun m!8071574 () Bool)

(assert (=> bm!686516 m!8071574))

(declare-fun m!8071576 () Bool)

(assert (=> bm!686517 m!8071576))

(assert (=> b!7477666 d!2299740))

(declare-fun b!7477846 () Bool)

(declare-fun e!4460717 () Bool)

(declare-fun e!4460718 () Bool)

(assert (=> b!7477846 (= e!4460717 e!4460718)))

(declare-fun res!3000061 () Bool)

(assert (=> b!7477846 (=> (not res!3000061) (not e!4460718))))

(declare-fun call!686525 () Bool)

(assert (=> b!7477846 (= res!3000061 call!686525)))

(declare-fun b!7477847 () Bool)

(declare-fun e!4460720 () Bool)

(declare-fun e!4460721 () Bool)

(assert (=> b!7477847 (= e!4460720 e!4460721)))

(declare-fun res!3000063 () Bool)

(assert (=> b!7477847 (= res!3000063 (not (nullable!8542 (reg!19933 r1!5845))))))

(assert (=> b!7477847 (=> (not res!3000063) (not e!4460721))))

(declare-fun bm!686518 () Bool)

(declare-fun call!686524 () Bool)

(declare-fun call!686523 () Bool)

(assert (=> bm!686518 (= call!686524 call!686523)))

(declare-fun b!7477848 () Bool)

(declare-fun e!4460719 () Bool)

(assert (=> b!7477848 (= e!4460720 e!4460719)))

(declare-fun c!1381343 () Bool)

(assert (=> b!7477848 (= c!1381343 (is-Union!19604 r1!5845))))

(declare-fun c!1381344 () Bool)

(declare-fun bm!686519 () Bool)

(assert (=> bm!686519 (= call!686523 (validRegex!10118 (ite c!1381344 (reg!19933 r1!5845) (ite c!1381343 (regTwo!39721 r1!5845) (regTwo!39720 r1!5845)))))))

(declare-fun bm!686520 () Bool)

(assert (=> bm!686520 (= call!686525 (validRegex!10118 (ite c!1381343 (regOne!39721 r1!5845) (regOne!39720 r1!5845))))))

(declare-fun b!7477849 () Bool)

(declare-fun e!4460722 () Bool)

(assert (=> b!7477849 (= e!4460722 e!4460720)))

(assert (=> b!7477849 (= c!1381344 (is-Star!19604 r1!5845))))

(declare-fun b!7477851 () Bool)

(declare-fun res!3000062 () Bool)

(declare-fun e!4460723 () Bool)

(assert (=> b!7477851 (=> (not res!3000062) (not e!4460723))))

(assert (=> b!7477851 (= res!3000062 call!686525)))

(assert (=> b!7477851 (= e!4460719 e!4460723)))

(declare-fun b!7477852 () Bool)

(assert (=> b!7477852 (= e!4460723 call!686524)))

(declare-fun b!7477853 () Bool)

(assert (=> b!7477853 (= e!4460721 call!686523)))

(declare-fun b!7477854 () Bool)

(assert (=> b!7477854 (= e!4460718 call!686524)))

(declare-fun b!7477850 () Bool)

(declare-fun res!3000065 () Bool)

(assert (=> b!7477850 (=> res!3000065 e!4460717)))

(assert (=> b!7477850 (= res!3000065 (not (is-Concat!28449 r1!5845)))))

(assert (=> b!7477850 (= e!4460719 e!4460717)))

(declare-fun d!2299742 () Bool)

(declare-fun res!3000064 () Bool)

(assert (=> d!2299742 (=> res!3000064 e!4460722)))

(assert (=> d!2299742 (= res!3000064 (is-ElementMatch!19604 r1!5845))))

(assert (=> d!2299742 (= (validRegex!10118 r1!5845) e!4460722)))

(assert (= (and d!2299742 (not res!3000064)) b!7477849))

(assert (= (and b!7477849 c!1381344) b!7477847))

(assert (= (and b!7477849 (not c!1381344)) b!7477848))

(assert (= (and b!7477847 res!3000063) b!7477853))

(assert (= (and b!7477848 c!1381343) b!7477851))

(assert (= (and b!7477848 (not c!1381343)) b!7477850))

(assert (= (and b!7477851 res!3000062) b!7477852))

(assert (= (and b!7477850 (not res!3000065)) b!7477846))

(assert (= (and b!7477846 res!3000061) b!7477854))

(assert (= (or b!7477852 b!7477854) bm!686518))

(assert (= (or b!7477851 b!7477846) bm!686520))

(assert (= (or b!7477853 bm!686518) bm!686519))

(declare-fun m!8071578 () Bool)

(assert (=> b!7477847 m!8071578))

(declare-fun m!8071580 () Bool)

(assert (=> bm!686519 m!8071580))

(declare-fun m!8071582 () Bool)

(assert (=> bm!686520 m!8071582))

(assert (=> start!724608 d!2299742))

(declare-fun b!7477887 () Bool)

(declare-fun e!4460742 () Bool)

(declare-fun head!15341 (List!72320) C!39482)

(assert (=> b!7477887 (= e!4460742 (= (head!15341 s!13591) (c!1381321 lt!2627468)))))

(declare-fun b!7477888 () Bool)

(declare-fun res!3000088 () Bool)

(declare-fun e!4460745 () Bool)

(assert (=> b!7477888 (=> res!3000088 e!4460745)))

(declare-fun isEmpty!41200 (List!72320) Bool)

(declare-fun tail!14910 (List!72320) List!72320)

(assert (=> b!7477888 (= res!3000088 (not (isEmpty!41200 (tail!14910 s!13591))))))

(declare-fun b!7477889 () Bool)

(declare-fun e!4460741 () Bool)

(assert (=> b!7477889 (= e!4460741 e!4460745)))

(declare-fun res!3000091 () Bool)

(assert (=> b!7477889 (=> res!3000091 e!4460745)))

(declare-fun call!686528 () Bool)

(assert (=> b!7477889 (= res!3000091 call!686528)))

(declare-fun b!7477890 () Bool)

(declare-fun res!3000086 () Bool)

(declare-fun e!4460744 () Bool)

(assert (=> b!7477890 (=> res!3000086 e!4460744)))

(assert (=> b!7477890 (= res!3000086 e!4460742)))

(declare-fun res!3000092 () Bool)

(assert (=> b!7477890 (=> (not res!3000092) (not e!4460742))))

(declare-fun lt!2627524 () Bool)

(assert (=> b!7477890 (= res!3000092 lt!2627524)))

(declare-fun b!7477891 () Bool)

(declare-fun e!4460740 () Bool)

(declare-fun e!4460746 () Bool)

(assert (=> b!7477891 (= e!4460740 e!4460746)))

(declare-fun c!1381353 () Bool)

(assert (=> b!7477891 (= c!1381353 (is-EmptyLang!19604 lt!2627468))))

(declare-fun b!7477892 () Bool)

(assert (=> b!7477892 (= e!4460746 (not lt!2627524))))

(declare-fun b!7477893 () Bool)

(assert (=> b!7477893 (= e!4460740 (= lt!2627524 call!686528))))

(declare-fun d!2299744 () Bool)

(assert (=> d!2299744 e!4460740))

(declare-fun c!1381351 () Bool)

(assert (=> d!2299744 (= c!1381351 (is-EmptyExpr!19604 lt!2627468))))

(declare-fun e!4460743 () Bool)

(assert (=> d!2299744 (= lt!2627524 e!4460743)))

(declare-fun c!1381352 () Bool)

(assert (=> d!2299744 (= c!1381352 (isEmpty!41200 s!13591))))

(assert (=> d!2299744 (validRegex!10118 lt!2627468)))

(assert (=> d!2299744 (= (matchR!9368 lt!2627468 s!13591) lt!2627524)))

(declare-fun bm!686523 () Bool)

(assert (=> bm!686523 (= call!686528 (isEmpty!41200 s!13591))))

(declare-fun b!7477894 () Bool)

(assert (=> b!7477894 (= e!4460744 e!4460741)))

(declare-fun res!3000090 () Bool)

(assert (=> b!7477894 (=> (not res!3000090) (not e!4460741))))

(assert (=> b!7477894 (= res!3000090 (not lt!2627524))))

(declare-fun b!7477895 () Bool)

(declare-fun res!3000089 () Bool)

(assert (=> b!7477895 (=> res!3000089 e!4460744)))

(assert (=> b!7477895 (= res!3000089 (not (is-ElementMatch!19604 lt!2627468)))))

(assert (=> b!7477895 (= e!4460746 e!4460744)))

(declare-fun b!7477896 () Bool)

(assert (=> b!7477896 (= e!4460743 (nullable!8542 lt!2627468))))

(declare-fun b!7477897 () Bool)

(declare-fun res!3000093 () Bool)

(assert (=> b!7477897 (=> (not res!3000093) (not e!4460742))))

(assert (=> b!7477897 (= res!3000093 (not call!686528))))

(declare-fun b!7477898 () Bool)

(assert (=> b!7477898 (= e!4460745 (not (= (head!15341 s!13591) (c!1381321 lt!2627468))))))

(declare-fun b!7477899 () Bool)

(declare-fun res!3000087 () Bool)

(assert (=> b!7477899 (=> (not res!3000087) (not e!4460742))))

(assert (=> b!7477899 (= res!3000087 (isEmpty!41200 (tail!14910 s!13591)))))

(declare-fun b!7477900 () Bool)

(declare-fun derivativeStep!5601 (Regex!19604 C!39482) Regex!19604)

(assert (=> b!7477900 (= e!4460743 (matchR!9368 (derivativeStep!5601 lt!2627468 (head!15341 s!13591)) (tail!14910 s!13591)))))

(assert (= (and d!2299744 c!1381352) b!7477896))

(assert (= (and d!2299744 (not c!1381352)) b!7477900))

(assert (= (and d!2299744 c!1381351) b!7477893))

(assert (= (and d!2299744 (not c!1381351)) b!7477891))

(assert (= (and b!7477891 c!1381353) b!7477892))

(assert (= (and b!7477891 (not c!1381353)) b!7477895))

(assert (= (and b!7477895 (not res!3000089)) b!7477890))

(assert (= (and b!7477890 res!3000092) b!7477897))

(assert (= (and b!7477897 res!3000093) b!7477899))

(assert (= (and b!7477899 res!3000087) b!7477887))

(assert (= (and b!7477890 (not res!3000086)) b!7477894))

(assert (= (and b!7477894 res!3000090) b!7477889))

(assert (= (and b!7477889 (not res!3000091)) b!7477888))

(assert (= (and b!7477888 (not res!3000088)) b!7477898))

(assert (= (or b!7477893 b!7477889 b!7477897) bm!686523))

(declare-fun m!8071584 () Bool)

(assert (=> b!7477898 m!8071584))

(declare-fun m!8071586 () Bool)

(assert (=> d!2299744 m!8071586))

(declare-fun m!8071588 () Bool)

(assert (=> d!2299744 m!8071588))

(declare-fun m!8071590 () Bool)

(assert (=> b!7477896 m!8071590))

(assert (=> b!7477887 m!8071584))

(assert (=> bm!686523 m!8071586))

(assert (=> b!7477900 m!8071584))

(assert (=> b!7477900 m!8071584))

(declare-fun m!8071592 () Bool)

(assert (=> b!7477900 m!8071592))

(declare-fun m!8071594 () Bool)

(assert (=> b!7477900 m!8071594))

(assert (=> b!7477900 m!8071592))

(assert (=> b!7477900 m!8071594))

(declare-fun m!8071596 () Bool)

(assert (=> b!7477900 m!8071596))

(assert (=> b!7477888 m!8071594))

(assert (=> b!7477888 m!8071594))

(declare-fun m!8071598 () Bool)

(assert (=> b!7477888 m!8071598))

(assert (=> b!7477899 m!8071594))

(assert (=> b!7477899 m!8071594))

(assert (=> b!7477899 m!8071598))

(assert (=> b!7477671 d!2299744))

(declare-fun d!2299746 () Bool)

(assert (=> d!2299746 (= (matchR!9368 lt!2627468 s!13591) (matchRSpec!4283 lt!2627468 s!13591))))

(declare-fun lt!2627527 () Unit!166043)

(declare-fun choose!57805 (Regex!19604 List!72320) Unit!166043)

(assert (=> d!2299746 (= lt!2627527 (choose!57805 lt!2627468 s!13591))))

(assert (=> d!2299746 (validRegex!10118 lt!2627468)))

(assert (=> d!2299746 (= (mainMatchTheorem!4277 lt!2627468 s!13591) lt!2627527)))

(declare-fun bs!1932455 () Bool)

(assert (= bs!1932455 d!2299746))

(assert (=> bs!1932455 m!8071438))

(assert (=> bs!1932455 m!8071442))

(declare-fun m!8071600 () Bool)

(assert (=> bs!1932455 m!8071600))

(assert (=> bs!1932455 m!8071588))

(assert (=> b!7477671 d!2299746))

(declare-fun b!7477905 () Bool)

(declare-fun e!4460751 () Bool)

(assert (=> b!7477905 (= e!4460751 (= (head!15341 s!13591) (c!1381321 lt!2627465)))))

(declare-fun b!7477906 () Bool)

(declare-fun res!3000100 () Bool)

(declare-fun e!4460754 () Bool)

(assert (=> b!7477906 (=> res!3000100 e!4460754)))

(assert (=> b!7477906 (= res!3000100 (not (isEmpty!41200 (tail!14910 s!13591))))))

(declare-fun b!7477907 () Bool)

(declare-fun e!4460750 () Bool)

(assert (=> b!7477907 (= e!4460750 e!4460754)))

(declare-fun res!3000103 () Bool)

(assert (=> b!7477907 (=> res!3000103 e!4460754)))

(declare-fun call!686529 () Bool)

(assert (=> b!7477907 (= res!3000103 call!686529)))

(declare-fun b!7477908 () Bool)

(declare-fun res!3000098 () Bool)

(declare-fun e!4460753 () Bool)

(assert (=> b!7477908 (=> res!3000098 e!4460753)))

(assert (=> b!7477908 (= res!3000098 e!4460751)))

(declare-fun res!3000104 () Bool)

(assert (=> b!7477908 (=> (not res!3000104) (not e!4460751))))

(declare-fun lt!2627528 () Bool)

(assert (=> b!7477908 (= res!3000104 lt!2627528)))

(declare-fun b!7477909 () Bool)

(declare-fun e!4460749 () Bool)

(declare-fun e!4460755 () Bool)

(assert (=> b!7477909 (= e!4460749 e!4460755)))

(declare-fun c!1381356 () Bool)

(assert (=> b!7477909 (= c!1381356 (is-EmptyLang!19604 lt!2627465))))

(declare-fun b!7477910 () Bool)

(assert (=> b!7477910 (= e!4460755 (not lt!2627528))))

(declare-fun b!7477911 () Bool)

(assert (=> b!7477911 (= e!4460749 (= lt!2627528 call!686529))))

(declare-fun d!2299748 () Bool)

(assert (=> d!2299748 e!4460749))

(declare-fun c!1381354 () Bool)

(assert (=> d!2299748 (= c!1381354 (is-EmptyExpr!19604 lt!2627465))))

(declare-fun e!4460752 () Bool)

(assert (=> d!2299748 (= lt!2627528 e!4460752)))

(declare-fun c!1381355 () Bool)

(assert (=> d!2299748 (= c!1381355 (isEmpty!41200 s!13591))))

(assert (=> d!2299748 (validRegex!10118 lt!2627465)))

(assert (=> d!2299748 (= (matchR!9368 lt!2627465 s!13591) lt!2627528)))

(declare-fun bm!686524 () Bool)

(assert (=> bm!686524 (= call!686529 (isEmpty!41200 s!13591))))

(declare-fun b!7477912 () Bool)

(assert (=> b!7477912 (= e!4460753 e!4460750)))

(declare-fun res!3000102 () Bool)

(assert (=> b!7477912 (=> (not res!3000102) (not e!4460750))))

(assert (=> b!7477912 (= res!3000102 (not lt!2627528))))

(declare-fun b!7477913 () Bool)

(declare-fun res!3000101 () Bool)

(assert (=> b!7477913 (=> res!3000101 e!4460753)))

(assert (=> b!7477913 (= res!3000101 (not (is-ElementMatch!19604 lt!2627465)))))

(assert (=> b!7477913 (= e!4460755 e!4460753)))

(declare-fun b!7477914 () Bool)

(assert (=> b!7477914 (= e!4460752 (nullable!8542 lt!2627465))))

(declare-fun b!7477915 () Bool)

(declare-fun res!3000105 () Bool)

(assert (=> b!7477915 (=> (not res!3000105) (not e!4460751))))

(assert (=> b!7477915 (= res!3000105 (not call!686529))))

(declare-fun b!7477916 () Bool)

(assert (=> b!7477916 (= e!4460754 (not (= (head!15341 s!13591) (c!1381321 lt!2627465))))))

(declare-fun b!7477917 () Bool)

(declare-fun res!3000099 () Bool)

(assert (=> b!7477917 (=> (not res!3000099) (not e!4460751))))

(assert (=> b!7477917 (= res!3000099 (isEmpty!41200 (tail!14910 s!13591)))))

(declare-fun b!7477918 () Bool)

(assert (=> b!7477918 (= e!4460752 (matchR!9368 (derivativeStep!5601 lt!2627465 (head!15341 s!13591)) (tail!14910 s!13591)))))

(assert (= (and d!2299748 c!1381355) b!7477914))

(assert (= (and d!2299748 (not c!1381355)) b!7477918))

(assert (= (and d!2299748 c!1381354) b!7477911))

(assert (= (and d!2299748 (not c!1381354)) b!7477909))

(assert (= (and b!7477909 c!1381356) b!7477910))

(assert (= (and b!7477909 (not c!1381356)) b!7477913))

(assert (= (and b!7477913 (not res!3000101)) b!7477908))

(assert (= (and b!7477908 res!3000104) b!7477915))

(assert (= (and b!7477915 res!3000105) b!7477917))

(assert (= (and b!7477917 res!3000099) b!7477905))

(assert (= (and b!7477908 (not res!3000098)) b!7477912))

(assert (= (and b!7477912 res!3000102) b!7477907))

(assert (= (and b!7477907 (not res!3000103)) b!7477906))

(assert (= (and b!7477906 (not res!3000100)) b!7477916))

(assert (= (or b!7477911 b!7477907 b!7477915) bm!686524))

(assert (=> b!7477916 m!8071584))

(assert (=> d!2299748 m!8071586))

(declare-fun m!8071602 () Bool)

(assert (=> d!2299748 m!8071602))

(declare-fun m!8071604 () Bool)

(assert (=> b!7477914 m!8071604))

(assert (=> b!7477905 m!8071584))

(assert (=> bm!686524 m!8071586))

(assert (=> b!7477918 m!8071584))

(assert (=> b!7477918 m!8071584))

(declare-fun m!8071606 () Bool)

(assert (=> b!7477918 m!8071606))

(assert (=> b!7477918 m!8071594))

(assert (=> b!7477918 m!8071606))

(assert (=> b!7477918 m!8071594))

(declare-fun m!8071608 () Bool)

(assert (=> b!7477918 m!8071608))

(assert (=> b!7477906 m!8071594))

(assert (=> b!7477906 m!8071594))

(assert (=> b!7477906 m!8071598))

(assert (=> b!7477917 m!8071594))

(assert (=> b!7477917 m!8071594))

(assert (=> b!7477917 m!8071598))

(assert (=> b!7477671 d!2299748))

(declare-fun d!2299750 () Bool)

(assert (=> d!2299750 (= (matchR!9368 lt!2627465 s!13591) (matchRSpec!4283 lt!2627465 s!13591))))

(declare-fun lt!2627529 () Unit!166043)

(assert (=> d!2299750 (= lt!2627529 (choose!57805 lt!2627465 s!13591))))

(assert (=> d!2299750 (validRegex!10118 lt!2627465)))

(assert (=> d!2299750 (= (mainMatchTheorem!4277 lt!2627465 s!13591) lt!2627529)))

(declare-fun bs!1932456 () Bool)

(assert (= bs!1932456 d!2299750))

(assert (=> bs!1932456 m!8071446))

(assert (=> bs!1932456 m!8071440))

(declare-fun m!8071610 () Bool)

(assert (=> bs!1932456 m!8071610))

(assert (=> bs!1932456 m!8071602))

(assert (=> b!7477671 d!2299750))

(declare-fun bs!1932459 () Bool)

(declare-fun b!7477953 () Bool)

(assert (= bs!1932459 (and b!7477953 d!2299726)))

(declare-fun lambda!463307 () Int)

(assert (=> bs!1932459 (not (= lambda!463307 lambda!463293))))

(declare-fun bs!1932460 () Bool)

(assert (= bs!1932460 (and b!7477953 b!7477668)))

(assert (=> bs!1932460 (not (= lambda!463307 lambda!463278))))

(assert (=> bs!1932459 (not (= lambda!463307 lambda!463292))))

(declare-fun bs!1932461 () Bool)

(assert (= bs!1932461 (and b!7477953 d!2299736)))

(assert (=> bs!1932461 (not (= lambda!463307 lambda!463296))))

(assert (=> bs!1932460 (not (= lambda!463307 lambda!463279))))

(assert (=> b!7477953 true))

(assert (=> b!7477953 true))

(declare-fun bs!1932462 () Bool)

(declare-fun b!7477960 () Bool)

(assert (= bs!1932462 (and b!7477960 d!2299726)))

(declare-fun lambda!463308 () Int)

(assert (=> bs!1932462 (= (and (= (regOne!39720 lt!2627468) lt!2627463) (= (regTwo!39720 lt!2627468) rTail!78)) (= lambda!463308 lambda!463293))))

(declare-fun bs!1932463 () Bool)

(assert (= bs!1932463 (and b!7477960 b!7477668)))

(assert (=> bs!1932463 (not (= lambda!463308 lambda!463278))))

(assert (=> bs!1932462 (not (= lambda!463308 lambda!463292))))

(declare-fun bs!1932464 () Bool)

(assert (= bs!1932464 (and b!7477960 b!7477953)))

(assert (=> bs!1932464 (not (= lambda!463308 lambda!463307))))

(declare-fun bs!1932465 () Bool)

(assert (= bs!1932465 (and b!7477960 d!2299736)))

(assert (=> bs!1932465 (not (= lambda!463308 lambda!463296))))

(assert (=> bs!1932463 (= (and (= (regOne!39720 lt!2627468) lt!2627463) (= (regTwo!39720 lt!2627468) rTail!78)) (= lambda!463308 lambda!463279))))

(assert (=> b!7477960 true))

(assert (=> b!7477960 true))

(declare-fun b!7477951 () Bool)

(declare-fun e!4460776 () Bool)

(declare-fun e!4460779 () Bool)

(assert (=> b!7477951 (= e!4460776 e!4460779)))

(declare-fun res!3000122 () Bool)

(assert (=> b!7477951 (= res!3000122 (not (is-EmptyLang!19604 lt!2627468)))))

(assert (=> b!7477951 (=> (not res!3000122) (not e!4460779))))

(declare-fun b!7477952 () Bool)

(declare-fun e!4460780 () Bool)

(assert (=> b!7477952 (= e!4460780 (matchRSpec!4283 (regTwo!39721 lt!2627468) s!13591))))

(declare-fun e!4460778 () Bool)

(declare-fun call!686535 () Bool)

(assert (=> b!7477953 (= e!4460778 call!686535)))

(declare-fun b!7477954 () Bool)

(declare-fun c!1381366 () Bool)

(assert (=> b!7477954 (= c!1381366 (is-ElementMatch!19604 lt!2627468))))

(declare-fun e!4460774 () Bool)

(assert (=> b!7477954 (= e!4460779 e!4460774)))

(declare-fun b!7477955 () Bool)

(declare-fun res!3000124 () Bool)

(assert (=> b!7477955 (=> res!3000124 e!4460778)))

(declare-fun call!686534 () Bool)

(assert (=> b!7477955 (= res!3000124 call!686534)))

(declare-fun e!4460775 () Bool)

(assert (=> b!7477955 (= e!4460775 e!4460778)))

(declare-fun b!7477956 () Bool)

(assert (=> b!7477956 (= e!4460774 (= s!13591 (Cons!72196 (c!1381321 lt!2627468) Nil!72196)))))

(declare-fun b!7477957 () Bool)

(assert (=> b!7477957 (= e!4460776 call!686534)))

(declare-fun b!7477958 () Bool)

(declare-fun e!4460777 () Bool)

(assert (=> b!7477958 (= e!4460777 e!4460775)))

(declare-fun c!1381367 () Bool)

(assert (=> b!7477958 (= c!1381367 (is-Star!19604 lt!2627468))))

(declare-fun bm!686530 () Bool)

(assert (=> bm!686530 (= call!686535 (Exists!4223 (ite c!1381367 lambda!463307 lambda!463308)))))

(declare-fun b!7477959 () Bool)

(declare-fun c!1381365 () Bool)

(assert (=> b!7477959 (= c!1381365 (is-Union!19604 lt!2627468))))

(assert (=> b!7477959 (= e!4460774 e!4460777)))

(assert (=> b!7477960 (= e!4460775 call!686535)))

(declare-fun b!7477961 () Bool)

(assert (=> b!7477961 (= e!4460777 e!4460780)))

(declare-fun res!3000123 () Bool)

(assert (=> b!7477961 (= res!3000123 (matchRSpec!4283 (regOne!39721 lt!2627468) s!13591))))

(assert (=> b!7477961 (=> res!3000123 e!4460780)))

(declare-fun d!2299752 () Bool)

(declare-fun c!1381368 () Bool)

(assert (=> d!2299752 (= c!1381368 (is-EmptyExpr!19604 lt!2627468))))

(assert (=> d!2299752 (= (matchRSpec!4283 lt!2627468 s!13591) e!4460776)))

(declare-fun bm!686529 () Bool)

(assert (=> bm!686529 (= call!686534 (isEmpty!41200 s!13591))))

(assert (= (and d!2299752 c!1381368) b!7477957))

(assert (= (and d!2299752 (not c!1381368)) b!7477951))

(assert (= (and b!7477951 res!3000122) b!7477954))

(assert (= (and b!7477954 c!1381366) b!7477956))

(assert (= (and b!7477954 (not c!1381366)) b!7477959))

(assert (= (and b!7477959 c!1381365) b!7477961))

(assert (= (and b!7477959 (not c!1381365)) b!7477958))

(assert (= (and b!7477961 (not res!3000123)) b!7477952))

(assert (= (and b!7477958 c!1381367) b!7477955))

(assert (= (and b!7477958 (not c!1381367)) b!7477960))

(assert (= (and b!7477955 (not res!3000124)) b!7477953))

(assert (= (or b!7477953 b!7477960) bm!686530))

(assert (= (or b!7477957 b!7477955) bm!686529))

(declare-fun m!8071618 () Bool)

(assert (=> b!7477952 m!8071618))

(declare-fun m!8071620 () Bool)

(assert (=> bm!686530 m!8071620))

(declare-fun m!8071622 () Bool)

(assert (=> b!7477961 m!8071622))

(assert (=> bm!686529 m!8071586))

(assert (=> b!7477671 d!2299752))

(declare-fun bs!1932466 () Bool)

(declare-fun b!7477964 () Bool)

(assert (= bs!1932466 (and b!7477964 b!7477668)))

(declare-fun lambda!463309 () Int)

(assert (=> bs!1932466 (not (= lambda!463309 lambda!463278))))

(declare-fun bs!1932467 () Bool)

(assert (= bs!1932467 (and b!7477964 d!2299726)))

(assert (=> bs!1932467 (not (= lambda!463309 lambda!463292))))

(declare-fun bs!1932468 () Bool)

(assert (= bs!1932468 (and b!7477964 b!7477953)))

(assert (=> bs!1932468 (= (and (= (reg!19933 lt!2627465) (reg!19933 lt!2627468)) (= lt!2627465 lt!2627468)) (= lambda!463309 lambda!463307))))

(declare-fun bs!1932469 () Bool)

(assert (= bs!1932469 (and b!7477964 d!2299736)))

(assert (=> bs!1932469 (not (= lambda!463309 lambda!463296))))

(assert (=> bs!1932466 (not (= lambda!463309 lambda!463279))))

(assert (=> bs!1932467 (not (= lambda!463309 lambda!463293))))

(declare-fun bs!1932470 () Bool)

(assert (= bs!1932470 (and b!7477964 b!7477960)))

(assert (=> bs!1932470 (not (= lambda!463309 lambda!463308))))

(assert (=> b!7477964 true))

(assert (=> b!7477964 true))

(declare-fun bs!1932471 () Bool)

(declare-fun b!7477971 () Bool)

(assert (= bs!1932471 (and b!7477971 b!7477668)))

(declare-fun lambda!463311 () Int)

(assert (=> bs!1932471 (not (= lambda!463311 lambda!463278))))

(declare-fun bs!1932472 () Bool)

(assert (= bs!1932472 (and b!7477971 b!7477964)))

(assert (=> bs!1932472 (not (= lambda!463311 lambda!463309))))

(declare-fun bs!1932473 () Bool)

(assert (= bs!1932473 (and b!7477971 d!2299726)))

(assert (=> bs!1932473 (not (= lambda!463311 lambda!463292))))

(declare-fun bs!1932474 () Bool)

(assert (= bs!1932474 (and b!7477971 b!7477953)))

(assert (=> bs!1932474 (not (= lambda!463311 lambda!463307))))

(declare-fun bs!1932475 () Bool)

(assert (= bs!1932475 (and b!7477971 d!2299736)))

(assert (=> bs!1932475 (not (= lambda!463311 lambda!463296))))

(assert (=> bs!1932471 (= (and (= (regOne!39720 lt!2627465) lt!2627463) (= (regTwo!39720 lt!2627465) rTail!78)) (= lambda!463311 lambda!463279))))

(assert (=> bs!1932473 (= (and (= (regOne!39720 lt!2627465) lt!2627463) (= (regTwo!39720 lt!2627465) rTail!78)) (= lambda!463311 lambda!463293))))

(declare-fun bs!1932476 () Bool)

(assert (= bs!1932476 (and b!7477971 b!7477960)))

(assert (=> bs!1932476 (= (and (= (regOne!39720 lt!2627465) (regOne!39720 lt!2627468)) (= (regTwo!39720 lt!2627465) (regTwo!39720 lt!2627468))) (= lambda!463311 lambda!463308))))

(assert (=> b!7477971 true))

(assert (=> b!7477971 true))

(declare-fun b!7477962 () Bool)

(declare-fun e!4460783 () Bool)

(declare-fun e!4460786 () Bool)

(assert (=> b!7477962 (= e!4460783 e!4460786)))

(declare-fun res!3000125 () Bool)

(assert (=> b!7477962 (= res!3000125 (not (is-EmptyLang!19604 lt!2627465)))))

(assert (=> b!7477962 (=> (not res!3000125) (not e!4460786))))

(declare-fun b!7477963 () Bool)

(declare-fun e!4460787 () Bool)

(assert (=> b!7477963 (= e!4460787 (matchRSpec!4283 (regTwo!39721 lt!2627465) s!13591))))

(declare-fun e!4460785 () Bool)

(declare-fun call!686537 () Bool)

(assert (=> b!7477964 (= e!4460785 call!686537)))

(declare-fun b!7477965 () Bool)

(declare-fun c!1381370 () Bool)

(assert (=> b!7477965 (= c!1381370 (is-ElementMatch!19604 lt!2627465))))

(declare-fun e!4460781 () Bool)

(assert (=> b!7477965 (= e!4460786 e!4460781)))

(declare-fun b!7477966 () Bool)

(declare-fun res!3000127 () Bool)

(assert (=> b!7477966 (=> res!3000127 e!4460785)))

(declare-fun call!686536 () Bool)

(assert (=> b!7477966 (= res!3000127 call!686536)))

(declare-fun e!4460782 () Bool)

(assert (=> b!7477966 (= e!4460782 e!4460785)))

(declare-fun b!7477967 () Bool)

(assert (=> b!7477967 (= e!4460781 (= s!13591 (Cons!72196 (c!1381321 lt!2627465) Nil!72196)))))

(declare-fun b!7477968 () Bool)

(assert (=> b!7477968 (= e!4460783 call!686536)))

(declare-fun b!7477969 () Bool)

(declare-fun e!4460784 () Bool)

(assert (=> b!7477969 (= e!4460784 e!4460782)))

(declare-fun c!1381371 () Bool)

(assert (=> b!7477969 (= c!1381371 (is-Star!19604 lt!2627465))))

(declare-fun bm!686532 () Bool)

(assert (=> bm!686532 (= call!686537 (Exists!4223 (ite c!1381371 lambda!463309 lambda!463311)))))

(declare-fun b!7477970 () Bool)

(declare-fun c!1381369 () Bool)

(assert (=> b!7477970 (= c!1381369 (is-Union!19604 lt!2627465))))

(assert (=> b!7477970 (= e!4460781 e!4460784)))

(assert (=> b!7477971 (= e!4460782 call!686537)))

(declare-fun b!7477972 () Bool)

(assert (=> b!7477972 (= e!4460784 e!4460787)))

(declare-fun res!3000126 () Bool)

(assert (=> b!7477972 (= res!3000126 (matchRSpec!4283 (regOne!39721 lt!2627465) s!13591))))

(assert (=> b!7477972 (=> res!3000126 e!4460787)))

(declare-fun d!2299756 () Bool)

(declare-fun c!1381372 () Bool)

(assert (=> d!2299756 (= c!1381372 (is-EmptyExpr!19604 lt!2627465))))

(assert (=> d!2299756 (= (matchRSpec!4283 lt!2627465 s!13591) e!4460783)))

(declare-fun bm!686531 () Bool)

(assert (=> bm!686531 (= call!686536 (isEmpty!41200 s!13591))))

(assert (= (and d!2299756 c!1381372) b!7477968))

(assert (= (and d!2299756 (not c!1381372)) b!7477962))

(assert (= (and b!7477962 res!3000125) b!7477965))

(assert (= (and b!7477965 c!1381370) b!7477967))

(assert (= (and b!7477965 (not c!1381370)) b!7477970))

(assert (= (and b!7477970 c!1381369) b!7477972))

(assert (= (and b!7477970 (not c!1381369)) b!7477969))

(assert (= (and b!7477972 (not res!3000126)) b!7477963))

(assert (= (and b!7477969 c!1381371) b!7477966))

(assert (= (and b!7477969 (not c!1381371)) b!7477971))

(assert (= (and b!7477966 (not res!3000127)) b!7477964))

(assert (= (or b!7477964 b!7477971) bm!686532))

(assert (= (or b!7477968 b!7477966) bm!686531))

(declare-fun m!8071624 () Bool)

(assert (=> b!7477963 m!8071624))

(declare-fun m!8071626 () Bool)

(assert (=> bm!686532 m!8071626))

(declare-fun m!8071628 () Bool)

(assert (=> b!7477972 m!8071628))

(assert (=> bm!686531 m!8071586))

(assert (=> b!7477671 d!2299756))

(declare-fun b!7477988 () Bool)

(declare-fun e!4460792 () Bool)

(declare-fun tp!2168775 () Bool)

(declare-fun tp!2168778 () Bool)

(assert (=> b!7477988 (= e!4460792 (and tp!2168775 tp!2168778))))

(declare-fun b!7477990 () Bool)

(declare-fun tp!2168776 () Bool)

(declare-fun tp!2168777 () Bool)

(assert (=> b!7477990 (= e!4460792 (and tp!2168776 tp!2168777))))

(declare-fun b!7477987 () Bool)

(assert (=> b!7477987 (= e!4460792 tp_is_empty!49497)))

(declare-fun b!7477989 () Bool)

(declare-fun tp!2168774 () Bool)

(assert (=> b!7477989 (= e!4460792 tp!2168774)))

(assert (=> b!7477658 (= tp!2168700 e!4460792)))

(assert (= (and b!7477658 (is-ElementMatch!19604 (reg!19933 rTail!78))) b!7477987))

(assert (= (and b!7477658 (is-Concat!28449 (reg!19933 rTail!78))) b!7477988))

(assert (= (and b!7477658 (is-Star!19604 (reg!19933 rTail!78))) b!7477989))

(assert (= (and b!7477658 (is-Union!19604 (reg!19933 rTail!78))) b!7477990))

(declare-fun b!7477992 () Bool)

(declare-fun e!4460793 () Bool)

(declare-fun tp!2168780 () Bool)

(declare-fun tp!2168783 () Bool)

(assert (=> b!7477992 (= e!4460793 (and tp!2168780 tp!2168783))))

(declare-fun b!7477994 () Bool)

(declare-fun tp!2168781 () Bool)

(declare-fun tp!2168782 () Bool)

(assert (=> b!7477994 (= e!4460793 (and tp!2168781 tp!2168782))))

(declare-fun b!7477991 () Bool)

(assert (=> b!7477991 (= e!4460793 tp_is_empty!49497)))

(declare-fun b!7477993 () Bool)

(declare-fun tp!2168779 () Bool)

(assert (=> b!7477993 (= e!4460793 tp!2168779)))

(assert (=> b!7477664 (= tp!2168713 e!4460793)))

(assert (= (and b!7477664 (is-ElementMatch!19604 (regOne!39720 rTail!78))) b!7477991))

(assert (= (and b!7477664 (is-Concat!28449 (regOne!39720 rTail!78))) b!7477992))

(assert (= (and b!7477664 (is-Star!19604 (regOne!39720 rTail!78))) b!7477993))

(assert (= (and b!7477664 (is-Union!19604 (regOne!39720 rTail!78))) b!7477994))

(declare-fun b!7477996 () Bool)

(declare-fun e!4460794 () Bool)

(declare-fun tp!2168785 () Bool)

(declare-fun tp!2168788 () Bool)

(assert (=> b!7477996 (= e!4460794 (and tp!2168785 tp!2168788))))

(declare-fun b!7477998 () Bool)

(declare-fun tp!2168786 () Bool)

(declare-fun tp!2168787 () Bool)

(assert (=> b!7477998 (= e!4460794 (and tp!2168786 tp!2168787))))

(declare-fun b!7477995 () Bool)

(assert (=> b!7477995 (= e!4460794 tp_is_empty!49497)))

(declare-fun b!7477997 () Bool)

(declare-fun tp!2168784 () Bool)

(assert (=> b!7477997 (= e!4460794 tp!2168784)))

(assert (=> b!7477664 (= tp!2168702 e!4460794)))

(assert (= (and b!7477664 (is-ElementMatch!19604 (regTwo!39720 rTail!78))) b!7477995))

(assert (= (and b!7477664 (is-Concat!28449 (regTwo!39720 rTail!78))) b!7477996))

(assert (= (and b!7477664 (is-Star!19604 (regTwo!39720 rTail!78))) b!7477997))

(assert (= (and b!7477664 (is-Union!19604 (regTwo!39720 rTail!78))) b!7477998))

(declare-fun b!7478000 () Bool)

(declare-fun e!4460795 () Bool)

(declare-fun tp!2168790 () Bool)

(declare-fun tp!2168793 () Bool)

(assert (=> b!7478000 (= e!4460795 (and tp!2168790 tp!2168793))))

(declare-fun b!7478002 () Bool)

(declare-fun tp!2168791 () Bool)

(declare-fun tp!2168792 () Bool)

(assert (=> b!7478002 (= e!4460795 (and tp!2168791 tp!2168792))))

(declare-fun b!7477999 () Bool)

(assert (=> b!7477999 (= e!4460795 tp_is_empty!49497)))

(declare-fun b!7478001 () Bool)

(declare-fun tp!2168789 () Bool)

(assert (=> b!7478001 (= e!4460795 tp!2168789)))

(assert (=> b!7477659 (= tp!2168704 e!4460795)))

(assert (= (and b!7477659 (is-ElementMatch!19604 (regOne!39720 r1!5845))) b!7477999))

(assert (= (and b!7477659 (is-Concat!28449 (regOne!39720 r1!5845))) b!7478000))

(assert (= (and b!7477659 (is-Star!19604 (regOne!39720 r1!5845))) b!7478001))

(assert (= (and b!7477659 (is-Union!19604 (regOne!39720 r1!5845))) b!7478002))

(declare-fun b!7478004 () Bool)

(declare-fun e!4460796 () Bool)

(declare-fun tp!2168795 () Bool)

(declare-fun tp!2168798 () Bool)

(assert (=> b!7478004 (= e!4460796 (and tp!2168795 tp!2168798))))

(declare-fun b!7478006 () Bool)

(declare-fun tp!2168796 () Bool)

(declare-fun tp!2168797 () Bool)

(assert (=> b!7478006 (= e!4460796 (and tp!2168796 tp!2168797))))

(declare-fun b!7478003 () Bool)

(assert (=> b!7478003 (= e!4460796 tp_is_empty!49497)))

(declare-fun b!7478005 () Bool)

(declare-fun tp!2168794 () Bool)

(assert (=> b!7478005 (= e!4460796 tp!2168794)))

(assert (=> b!7477659 (= tp!2168705 e!4460796)))

(assert (= (and b!7477659 (is-ElementMatch!19604 (regTwo!39720 r1!5845))) b!7478003))

(assert (= (and b!7477659 (is-Concat!28449 (regTwo!39720 r1!5845))) b!7478004))

(assert (= (and b!7477659 (is-Star!19604 (regTwo!39720 r1!5845))) b!7478005))

(assert (= (and b!7477659 (is-Union!19604 (regTwo!39720 r1!5845))) b!7478006))

(declare-fun b!7478008 () Bool)

(declare-fun e!4460797 () Bool)

(declare-fun tp!2168800 () Bool)

(declare-fun tp!2168803 () Bool)

(assert (=> b!7478008 (= e!4460797 (and tp!2168800 tp!2168803))))

(declare-fun b!7478010 () Bool)

(declare-fun tp!2168801 () Bool)

(declare-fun tp!2168802 () Bool)

(assert (=> b!7478010 (= e!4460797 (and tp!2168801 tp!2168802))))

(declare-fun b!7478007 () Bool)

(assert (=> b!7478007 (= e!4460797 tp_is_empty!49497)))

(declare-fun b!7478009 () Bool)

(declare-fun tp!2168799 () Bool)

(assert (=> b!7478009 (= e!4460797 tp!2168799)))

(assert (=> b!7477662 (= tp!2168701 e!4460797)))

(assert (= (and b!7477662 (is-ElementMatch!19604 (regOne!39721 rTail!78))) b!7478007))

(assert (= (and b!7477662 (is-Concat!28449 (regOne!39721 rTail!78))) b!7478008))

(assert (= (and b!7477662 (is-Star!19604 (regOne!39721 rTail!78))) b!7478009))

(assert (= (and b!7477662 (is-Union!19604 (regOne!39721 rTail!78))) b!7478010))

(declare-fun b!7478012 () Bool)

(declare-fun e!4460798 () Bool)

(declare-fun tp!2168805 () Bool)

(declare-fun tp!2168808 () Bool)

(assert (=> b!7478012 (= e!4460798 (and tp!2168805 tp!2168808))))

(declare-fun b!7478014 () Bool)

(declare-fun tp!2168806 () Bool)

(declare-fun tp!2168807 () Bool)

(assert (=> b!7478014 (= e!4460798 (and tp!2168806 tp!2168807))))

(declare-fun b!7478011 () Bool)

(assert (=> b!7478011 (= e!4460798 tp_is_empty!49497)))

(declare-fun b!7478013 () Bool)

(declare-fun tp!2168804 () Bool)

(assert (=> b!7478013 (= e!4460798 tp!2168804)))

(assert (=> b!7477662 (= tp!2168708 e!4460798)))

(assert (= (and b!7477662 (is-ElementMatch!19604 (regTwo!39721 rTail!78))) b!7478011))

(assert (= (and b!7477662 (is-Concat!28449 (regTwo!39721 rTail!78))) b!7478012))

(assert (= (and b!7477662 (is-Star!19604 (regTwo!39721 rTail!78))) b!7478013))

(assert (= (and b!7477662 (is-Union!19604 (regTwo!39721 rTail!78))) b!7478014))

(declare-fun b!7478016 () Bool)

(declare-fun e!4460799 () Bool)

(declare-fun tp!2168810 () Bool)

(declare-fun tp!2168813 () Bool)

(assert (=> b!7478016 (= e!4460799 (and tp!2168810 tp!2168813))))

(declare-fun b!7478018 () Bool)

(declare-fun tp!2168811 () Bool)

(declare-fun tp!2168812 () Bool)

(assert (=> b!7478018 (= e!4460799 (and tp!2168811 tp!2168812))))

(declare-fun b!7478015 () Bool)

(assert (=> b!7478015 (= e!4460799 tp_is_empty!49497)))

(declare-fun b!7478017 () Bool)

(declare-fun tp!2168809 () Bool)

(assert (=> b!7478017 (= e!4460799 tp!2168809)))

(assert (=> b!7477657 (= tp!2168711 e!4460799)))

(assert (= (and b!7477657 (is-ElementMatch!19604 (regOne!39720 r2!5783))) b!7478015))

(assert (= (and b!7477657 (is-Concat!28449 (regOne!39720 r2!5783))) b!7478016))

(assert (= (and b!7477657 (is-Star!19604 (regOne!39720 r2!5783))) b!7478017))

(assert (= (and b!7477657 (is-Union!19604 (regOne!39720 r2!5783))) b!7478018))

(declare-fun b!7478020 () Bool)

(declare-fun e!4460800 () Bool)

(declare-fun tp!2168815 () Bool)

(declare-fun tp!2168818 () Bool)

(assert (=> b!7478020 (= e!4460800 (and tp!2168815 tp!2168818))))

(declare-fun b!7478022 () Bool)

(declare-fun tp!2168816 () Bool)

(declare-fun tp!2168817 () Bool)

(assert (=> b!7478022 (= e!4460800 (and tp!2168816 tp!2168817))))

(declare-fun b!7478019 () Bool)

(assert (=> b!7478019 (= e!4460800 tp_is_empty!49497)))

(declare-fun b!7478021 () Bool)

(declare-fun tp!2168814 () Bool)

(assert (=> b!7478021 (= e!4460800 tp!2168814)))

(assert (=> b!7477657 (= tp!2168710 e!4460800)))

(assert (= (and b!7477657 (is-ElementMatch!19604 (regTwo!39720 r2!5783))) b!7478019))

(assert (= (and b!7477657 (is-Concat!28449 (regTwo!39720 r2!5783))) b!7478020))

(assert (= (and b!7477657 (is-Star!19604 (regTwo!39720 r2!5783))) b!7478021))

(assert (= (and b!7477657 (is-Union!19604 (regTwo!39720 r2!5783))) b!7478022))

(declare-fun b!7478024 () Bool)

(declare-fun e!4460801 () Bool)

(declare-fun tp!2168820 () Bool)

(declare-fun tp!2168823 () Bool)

(assert (=> b!7478024 (= e!4460801 (and tp!2168820 tp!2168823))))

(declare-fun b!7478026 () Bool)

(declare-fun tp!2168821 () Bool)

(declare-fun tp!2168822 () Bool)

(assert (=> b!7478026 (= e!4460801 (and tp!2168821 tp!2168822))))

(declare-fun b!7478023 () Bool)

(assert (=> b!7478023 (= e!4460801 tp_is_empty!49497)))

(declare-fun b!7478025 () Bool)

(declare-fun tp!2168819 () Bool)

(assert (=> b!7478025 (= e!4460801 tp!2168819)))

(assert (=> b!7477663 (= tp!2168709 e!4460801)))

(assert (= (and b!7477663 (is-ElementMatch!19604 (reg!19933 r1!5845))) b!7478023))

(assert (= (and b!7477663 (is-Concat!28449 (reg!19933 r1!5845))) b!7478024))

(assert (= (and b!7477663 (is-Star!19604 (reg!19933 r1!5845))) b!7478025))

(assert (= (and b!7477663 (is-Union!19604 (reg!19933 r1!5845))) b!7478026))

(declare-fun b!7478031 () Bool)

(declare-fun e!4460804 () Bool)

(declare-fun tp!2168826 () Bool)

(assert (=> b!7478031 (= e!4460804 (and tp_is_empty!49497 tp!2168826))))

(assert (=> b!7477661 (= tp!2168714 e!4460804)))

(assert (= (and b!7477661 (is-Cons!72196 (t!386889 s!13591))) b!7478031))

(declare-fun b!7478033 () Bool)

(declare-fun e!4460805 () Bool)

(declare-fun tp!2168828 () Bool)

(declare-fun tp!2168831 () Bool)

(assert (=> b!7478033 (= e!4460805 (and tp!2168828 tp!2168831))))

(declare-fun b!7478035 () Bool)

(declare-fun tp!2168829 () Bool)

(declare-fun tp!2168830 () Bool)

(assert (=> b!7478035 (= e!4460805 (and tp!2168829 tp!2168830))))

(declare-fun b!7478032 () Bool)

(assert (=> b!7478032 (= e!4460805 tp_is_empty!49497)))

(declare-fun b!7478034 () Bool)

(declare-fun tp!2168827 () Bool)

(assert (=> b!7478034 (= e!4460805 tp!2168827)))

(assert (=> b!7477656 (= tp!2168706 e!4460805)))

(assert (= (and b!7477656 (is-ElementMatch!19604 (regOne!39721 r1!5845))) b!7478032))

(assert (= (and b!7477656 (is-Concat!28449 (regOne!39721 r1!5845))) b!7478033))

(assert (= (and b!7477656 (is-Star!19604 (regOne!39721 r1!5845))) b!7478034))

(assert (= (and b!7477656 (is-Union!19604 (regOne!39721 r1!5845))) b!7478035))

(declare-fun b!7478037 () Bool)

(declare-fun e!4460806 () Bool)

(declare-fun tp!2168833 () Bool)

(declare-fun tp!2168836 () Bool)

(assert (=> b!7478037 (= e!4460806 (and tp!2168833 tp!2168836))))

(declare-fun b!7478039 () Bool)

(declare-fun tp!2168834 () Bool)

(declare-fun tp!2168835 () Bool)

(assert (=> b!7478039 (= e!4460806 (and tp!2168834 tp!2168835))))

(declare-fun b!7478036 () Bool)

(assert (=> b!7478036 (= e!4460806 tp_is_empty!49497)))

(declare-fun b!7478038 () Bool)

(declare-fun tp!2168832 () Bool)

(assert (=> b!7478038 (= e!4460806 tp!2168832)))

(assert (=> b!7477656 (= tp!2168715 e!4460806)))

(assert (= (and b!7477656 (is-ElementMatch!19604 (regTwo!39721 r1!5845))) b!7478036))

(assert (= (and b!7477656 (is-Concat!28449 (regTwo!39721 r1!5845))) b!7478037))

(assert (= (and b!7477656 (is-Star!19604 (regTwo!39721 r1!5845))) b!7478038))

(assert (= (and b!7477656 (is-Union!19604 (regTwo!39721 r1!5845))) b!7478039))

(declare-fun b!7478041 () Bool)

(declare-fun e!4460807 () Bool)

(declare-fun tp!2168838 () Bool)

(declare-fun tp!2168841 () Bool)

(assert (=> b!7478041 (= e!4460807 (and tp!2168838 tp!2168841))))

(declare-fun b!7478043 () Bool)

(declare-fun tp!2168839 () Bool)

(declare-fun tp!2168840 () Bool)

(assert (=> b!7478043 (= e!4460807 (and tp!2168839 tp!2168840))))

(declare-fun b!7478040 () Bool)

(assert (=> b!7478040 (= e!4460807 tp_is_empty!49497)))

(declare-fun b!7478042 () Bool)

(declare-fun tp!2168837 () Bool)

(assert (=> b!7478042 (= e!4460807 tp!2168837)))

(assert (=> b!7477672 (= tp!2168707 e!4460807)))

(assert (= (and b!7477672 (is-ElementMatch!19604 (regOne!39721 r2!5783))) b!7478040))

(assert (= (and b!7477672 (is-Concat!28449 (regOne!39721 r2!5783))) b!7478041))

(assert (= (and b!7477672 (is-Star!19604 (regOne!39721 r2!5783))) b!7478042))

(assert (= (and b!7477672 (is-Union!19604 (regOne!39721 r2!5783))) b!7478043))

(declare-fun b!7478045 () Bool)

(declare-fun e!4460808 () Bool)

(declare-fun tp!2168843 () Bool)

(declare-fun tp!2168846 () Bool)

(assert (=> b!7478045 (= e!4460808 (and tp!2168843 tp!2168846))))

(declare-fun b!7478047 () Bool)

(declare-fun tp!2168844 () Bool)

(declare-fun tp!2168845 () Bool)

(assert (=> b!7478047 (= e!4460808 (and tp!2168844 tp!2168845))))

(declare-fun b!7478044 () Bool)

(assert (=> b!7478044 (= e!4460808 tp_is_empty!49497)))

(declare-fun b!7478046 () Bool)

(declare-fun tp!2168842 () Bool)

(assert (=> b!7478046 (= e!4460808 tp!2168842)))

(assert (=> b!7477672 (= tp!2168703 e!4460808)))

(assert (= (and b!7477672 (is-ElementMatch!19604 (regTwo!39721 r2!5783))) b!7478044))

(assert (= (and b!7477672 (is-Concat!28449 (regTwo!39721 r2!5783))) b!7478045))

(assert (= (and b!7477672 (is-Star!19604 (regTwo!39721 r2!5783))) b!7478046))

(assert (= (and b!7477672 (is-Union!19604 (regTwo!39721 r2!5783))) b!7478047))

(declare-fun b!7478049 () Bool)

(declare-fun e!4460809 () Bool)

(declare-fun tp!2168848 () Bool)

(declare-fun tp!2168851 () Bool)

(assert (=> b!7478049 (= e!4460809 (and tp!2168848 tp!2168851))))

(declare-fun b!7478051 () Bool)

(declare-fun tp!2168849 () Bool)

(declare-fun tp!2168850 () Bool)

(assert (=> b!7478051 (= e!4460809 (and tp!2168849 tp!2168850))))

(declare-fun b!7478048 () Bool)

(assert (=> b!7478048 (= e!4460809 tp_is_empty!49497)))

(declare-fun b!7478050 () Bool)

(declare-fun tp!2168847 () Bool)

(assert (=> b!7478050 (= e!4460809 tp!2168847)))

(assert (=> b!7477665 (= tp!2168712 e!4460809)))

(assert (= (and b!7477665 (is-ElementMatch!19604 (reg!19933 r2!5783))) b!7478048))

(assert (= (and b!7477665 (is-Concat!28449 (reg!19933 r2!5783))) b!7478049))

(assert (= (and b!7477665 (is-Star!19604 (reg!19933 r2!5783))) b!7478050))

(assert (= (and b!7477665 (is-Union!19604 (reg!19933 r2!5783))) b!7478051))

(push 1)

(assert (not b!7478000))

(assert (not b!7478008))

(assert (not b!7478026))

(assert (not b!7478004))

(assert (not b!7477998))

(assert (not b!7477914))

(assert (not b!7477896))

(assert (not bm!686531))

(assert (not bm!686520))

(assert (not b!7478050))

(assert (not bm!686513))

(assert (not b!7478034))

(assert (not b!7478021))

(assert (not b!7477952))

(assert (not d!2299726))

(assert (not b!7478031))

(assert (not b!7477887))

(assert (not b!7478043))

(assert (not b!7477961))

(assert (not b!7477989))

(assert (not b!7477905))

(assert (not d!2299746))

(assert (not b!7477820))

(assert (not bm!686524))

(assert (not b!7478005))

(assert (not bm!686529))

(assert (not b!7478037))

(assert (not b!7477847))

(assert (not b!7478049))

(assert (not b!7477900))

(assert (not b!7478038))

(assert (not b!7477994))

(assert (not b!7477916))

(assert (not b!7478045))

(assert (not b!7478014))

(assert (not b!7478009))

(assert (not b!7477993))

(assert (not b!7478017))

(assert (not d!2299732))

(assert (not b!7477888))

(assert (not b!7477899))

(assert (not b!7478010))

(assert (not b!7477763))

(assert (not b!7477996))

(assert (not bm!686516))

(assert (not b!7478006))

(assert (not b!7477819))

(assert (not b!7478047))

(assert (not d!2299750))

(assert (not b!7478001))

(assert (not d!2299744))

(assert (not b!7477822))

(assert (not d!2299728))

(assert (not bm!686519))

(assert (not b!7478012))

(assert (not b!7477918))

(assert (not b!7478039))

(assert (not d!2299730))

(assert (not b!7478022))

(assert (not b!7478024))

(assert (not b!7478002))

(assert (not d!2299736))

(assert (not b!7477997))

(assert (not b!7477821))

(assert (not b!7478051))

(assert (not b!7478033))

(assert (not b!7477816))

(assert (not b!7478025))

(assert (not d!2299734))

(assert (not b!7478046))

(assert (not bm!686523))

(assert (not bm!686530))

(assert (not b!7477818))

(assert (not b!7478016))

(assert (not b!7477898))

(assert (not b!7477990))

(assert (not b!7477988))

(assert (not b!7478013))

(assert (not b!7478020))

(assert (not b!7478018))

(assert (not bm!686514))

(assert (not b!7477906))

(assert (not b!7477838))

(assert (not d!2299748))

(assert (not b!7477992))

(assert (not bm!686532))

(assert (not bm!686517))

(assert (not b!7477917))

(assert (not b!7478041))

(assert (not b!7478042))

(assert (not b!7477972))

(assert (not b!7478035))

(assert (not b!7477963))

(assert tp_is_empty!49497)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

