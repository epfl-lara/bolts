; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724392 () Bool)

(assert start!724392)

(declare-fun b!7473662 () Bool)

(assert (=> b!7473662 true))

(assert (=> b!7473662 true))

(assert (=> b!7473662 true))

(declare-fun lambda!462989 () Int)

(declare-fun lambda!462988 () Int)

(assert (=> b!7473662 (not (= lambda!462989 lambda!462988))))

(assert (=> b!7473662 true))

(assert (=> b!7473662 true))

(assert (=> b!7473662 true))

(declare-fun res!2998356 () Bool)

(declare-fun e!4458660 () Bool)

(assert (=> start!724392 (=> (not res!2998356) (not e!4458660))))

(declare-datatypes ((C!39462 0))(
  ( (C!39463 (val!30129 Int)) )
))
(declare-datatypes ((Regex!19594 0))(
  ( (ElementMatch!19594 (c!1380709 C!39462)) (Concat!28439 (regOne!39700 Regex!19594) (regTwo!39700 Regex!19594)) (EmptyExpr!19594) (Star!19594 (reg!19923 Regex!19594)) (EmptyLang!19594) (Union!19594 (regOne!39701 Regex!19594) (regTwo!39701 Regex!19594)) )
))
(declare-fun r1!5845 () Regex!19594)

(declare-fun validRegex!10108 (Regex!19594) Bool)

(assert (=> start!724392 (= res!2998356 (validRegex!10108 r1!5845))))

(assert (=> start!724392 e!4458660))

(declare-fun e!4458664 () Bool)

(assert (=> start!724392 e!4458664))

(declare-fun e!4458659 () Bool)

(assert (=> start!724392 e!4458659))

(declare-fun e!4458665 () Bool)

(assert (=> start!724392 e!4458665))

(declare-fun e!4458661 () Bool)

(assert (=> start!724392 e!4458661))

(declare-fun b!7473654 () Bool)

(declare-fun tp!2167348 () Bool)

(assert (=> b!7473654 (= e!4458664 tp!2167348)))

(declare-fun b!7473655 () Bool)

(declare-fun tp_is_empty!49477 () Bool)

(assert (=> b!7473655 (= e!4458665 tp_is_empty!49477)))

(declare-fun b!7473656 () Bool)

(declare-fun tp!2167353 () Bool)

(assert (=> b!7473656 (= e!4458659 tp!2167353)))

(declare-fun b!7473657 () Bool)

(declare-fun res!2998354 () Bool)

(assert (=> b!7473657 (=> (not res!2998354) (not e!4458660))))

(declare-fun r2!5783 () Regex!19594)

(assert (=> b!7473657 (= res!2998354 (validRegex!10108 r2!5783))))

(declare-fun b!7473658 () Bool)

(declare-fun e!4458663 () Bool)

(assert (=> b!7473658 (= e!4458660 (not e!4458663))))

(declare-fun res!2998353 () Bool)

(assert (=> b!7473658 (=> res!2998353 e!4458663)))

(declare-fun lt!2626783 () Bool)

(assert (=> b!7473658 (= res!2998353 lt!2626783)))

(declare-fun lt!2626781 () Bool)

(declare-fun lt!2626784 () Regex!19594)

(declare-datatypes ((List!72310 0))(
  ( (Nil!72186) (Cons!72186 (h!78634 C!39462) (t!386879 List!72310)) )
))
(declare-fun s!13591 () List!72310)

(declare-fun matchRSpec!4273 (Regex!19594 List!72310) Bool)

(assert (=> b!7473658 (= lt!2626781 (matchRSpec!4273 lt!2626784 s!13591))))

(declare-fun matchR!9358 (Regex!19594 List!72310) Bool)

(assert (=> b!7473658 (= lt!2626781 (matchR!9358 lt!2626784 s!13591))))

(declare-datatypes ((Unit!166023 0))(
  ( (Unit!166024) )
))
(declare-fun lt!2626779 () Unit!166023)

(declare-fun mainMatchTheorem!4267 (Regex!19594 List!72310) Unit!166023)

(assert (=> b!7473658 (= lt!2626779 (mainMatchTheorem!4267 lt!2626784 s!13591))))

(declare-fun lt!2626787 () Regex!19594)

(assert (=> b!7473658 (= lt!2626783 (matchRSpec!4273 lt!2626787 s!13591))))

(assert (=> b!7473658 (= lt!2626783 (matchR!9358 lt!2626787 s!13591))))

(declare-fun lt!2626786 () Unit!166023)

(assert (=> b!7473658 (= lt!2626786 (mainMatchTheorem!4267 lt!2626787 s!13591))))

(declare-fun rTail!78 () Regex!19594)

(assert (=> b!7473658 (= lt!2626784 (Union!19594 (Concat!28439 r1!5845 rTail!78) (Concat!28439 r2!5783 rTail!78)))))

(declare-fun lt!2626782 () Regex!19594)

(assert (=> b!7473658 (= lt!2626787 (Concat!28439 lt!2626782 rTail!78))))

(assert (=> b!7473658 (= lt!2626782 (Union!19594 r1!5845 r2!5783))))

(declare-fun b!7473659 () Bool)

(declare-fun tp!2167340 () Bool)

(declare-fun tp!2167350 () Bool)

(assert (=> b!7473659 (= e!4458665 (and tp!2167340 tp!2167350))))

(declare-fun b!7473660 () Bool)

(declare-fun e!4458662 () Bool)

(assert (=> b!7473660 (= e!4458662 (validRegex!10108 lt!2626784))))

(declare-fun b!7473661 () Bool)

(assert (=> b!7473661 (= e!4458664 tp_is_empty!49477)))

(assert (=> b!7473662 (= e!4458663 e!4458662)))

(declare-fun res!2998355 () Bool)

(assert (=> b!7473662 (=> res!2998355 e!4458662)))

(declare-fun lt!2626778 () Bool)

(assert (=> b!7473662 (= res!2998355 (or lt!2626778 lt!2626781))))

(declare-fun Exists!4213 (Int) Bool)

(assert (=> b!7473662 (= (Exists!4213 lambda!462988) (Exists!4213 lambda!462989))))

(declare-fun lt!2626780 () Unit!166023)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2547 (Regex!19594 Regex!19594 List!72310) Unit!166023)

(assert (=> b!7473662 (= lt!2626780 (lemmaExistCutMatchRandMatchRSpecEquivalent!2547 lt!2626782 rTail!78 s!13591))))

(assert (=> b!7473662 (= lt!2626778 (Exists!4213 lambda!462988))))

(declare-datatypes ((tuple2!68638 0))(
  ( (tuple2!68639 (_1!37622 List!72310) (_2!37622 List!72310)) )
))
(declare-datatypes ((Option!17151 0))(
  ( (None!17150) (Some!17150 (v!54279 tuple2!68638)) )
))
(declare-fun isDefined!13840 (Option!17151) Bool)

(declare-fun findConcatSeparation!3273 (Regex!19594 Regex!19594 List!72310 List!72310 List!72310) Option!17151)

(assert (=> b!7473662 (= lt!2626778 (isDefined!13840 (findConcatSeparation!3273 lt!2626782 rTail!78 Nil!72186 s!13591 s!13591)))))

(declare-fun lt!2626785 () Unit!166023)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3031 (Regex!19594 Regex!19594 List!72310) Unit!166023)

(assert (=> b!7473662 (= lt!2626785 (lemmaFindConcatSeparationEquivalentToExists!3031 lt!2626782 rTail!78 s!13591))))

(declare-fun b!7473663 () Bool)

(assert (=> b!7473663 (= e!4458659 tp_is_empty!49477)))

(declare-fun b!7473664 () Bool)

(declare-fun tp!2167346 () Bool)

(declare-fun tp!2167355 () Bool)

(assert (=> b!7473664 (= e!4458664 (and tp!2167346 tp!2167355))))

(declare-fun b!7473665 () Bool)

(declare-fun tp!2167345 () Bool)

(assert (=> b!7473665 (= e!4458661 (and tp_is_empty!49477 tp!2167345))))

(declare-fun b!7473666 () Bool)

(declare-fun res!2998357 () Bool)

(assert (=> b!7473666 (=> (not res!2998357) (not e!4458660))))

(assert (=> b!7473666 (= res!2998357 (validRegex!10108 rTail!78))))

(declare-fun b!7473667 () Bool)

(declare-fun tp!2167343 () Bool)

(declare-fun tp!2167354 () Bool)

(assert (=> b!7473667 (= e!4458665 (and tp!2167343 tp!2167354))))

(declare-fun b!7473668 () Bool)

(declare-fun tp!2167349 () Bool)

(declare-fun tp!2167352 () Bool)

(assert (=> b!7473668 (= e!4458664 (and tp!2167349 tp!2167352))))

(declare-fun b!7473669 () Bool)

(declare-fun tp!2167341 () Bool)

(declare-fun tp!2167351 () Bool)

(assert (=> b!7473669 (= e!4458659 (and tp!2167341 tp!2167351))))

(declare-fun b!7473670 () Bool)

(declare-fun tp!2167347 () Bool)

(declare-fun tp!2167344 () Bool)

(assert (=> b!7473670 (= e!4458659 (and tp!2167347 tp!2167344))))

(declare-fun b!7473671 () Bool)

(declare-fun tp!2167342 () Bool)

(assert (=> b!7473671 (= e!4458665 tp!2167342)))

(assert (= (and start!724392 res!2998356) b!7473657))

(assert (= (and b!7473657 res!2998354) b!7473666))

(assert (= (and b!7473666 res!2998357) b!7473658))

(assert (= (and b!7473658 (not res!2998353)) b!7473662))

(assert (= (and b!7473662 (not res!2998355)) b!7473660))

(assert (= (and start!724392 (is-ElementMatch!19594 r1!5845)) b!7473661))

(assert (= (and start!724392 (is-Concat!28439 r1!5845)) b!7473664))

(assert (= (and start!724392 (is-Star!19594 r1!5845)) b!7473654))

(assert (= (and start!724392 (is-Union!19594 r1!5845)) b!7473668))

(assert (= (and start!724392 (is-ElementMatch!19594 r2!5783)) b!7473663))

(assert (= (and start!724392 (is-Concat!28439 r2!5783)) b!7473670))

(assert (= (and start!724392 (is-Star!19594 r2!5783)) b!7473656))

(assert (= (and start!724392 (is-Union!19594 r2!5783)) b!7473669))

(assert (= (and start!724392 (is-ElementMatch!19594 rTail!78)) b!7473655))

(assert (= (and start!724392 (is-Concat!28439 rTail!78)) b!7473667))

(assert (= (and start!724392 (is-Star!19594 rTail!78)) b!7473671))

(assert (= (and start!724392 (is-Union!19594 rTail!78)) b!7473659))

(assert (= (and start!724392 (is-Cons!72186 s!13591)) b!7473665))

(declare-fun m!8069544 () Bool)

(assert (=> b!7473657 m!8069544))

(declare-fun m!8069546 () Bool)

(assert (=> b!7473658 m!8069546))

(declare-fun m!8069548 () Bool)

(assert (=> b!7473658 m!8069548))

(declare-fun m!8069550 () Bool)

(assert (=> b!7473658 m!8069550))

(declare-fun m!8069552 () Bool)

(assert (=> b!7473658 m!8069552))

(declare-fun m!8069554 () Bool)

(assert (=> b!7473658 m!8069554))

(declare-fun m!8069556 () Bool)

(assert (=> b!7473658 m!8069556))

(declare-fun m!8069558 () Bool)

(assert (=> b!7473662 m!8069558))

(declare-fun m!8069560 () Bool)

(assert (=> b!7473662 m!8069560))

(declare-fun m!8069562 () Bool)

(assert (=> b!7473662 m!8069562))

(assert (=> b!7473662 m!8069560))

(declare-fun m!8069564 () Bool)

(assert (=> b!7473662 m!8069564))

(assert (=> b!7473662 m!8069562))

(declare-fun m!8069566 () Bool)

(assert (=> b!7473662 m!8069566))

(declare-fun m!8069568 () Bool)

(assert (=> b!7473662 m!8069568))

(declare-fun m!8069570 () Bool)

(assert (=> start!724392 m!8069570))

(declare-fun m!8069572 () Bool)

(assert (=> b!7473666 m!8069572))

(declare-fun m!8069574 () Bool)

(assert (=> b!7473660 m!8069574))

(push 1)

(assert tp_is_empty!49477)

(assert (not b!7473658))

(assert (not b!7473667))

(assert (not b!7473654))

(assert (not b!7473656))

(assert (not b!7473659))

(assert (not b!7473662))

(assert (not b!7473669))

(assert (not b!7473665))

(assert (not b!7473664))

(assert (not b!7473668))

(assert (not b!7473670))

(assert (not b!7473666))

(assert (not start!724392))

(assert (not b!7473671))

(assert (not b!7473660))

(assert (not b!7473657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7473764 () Bool)

(declare-fun e!4458712 () Bool)

(declare-fun e!4458711 () Bool)

(assert (=> b!7473764 (= e!4458712 e!4458711)))

(declare-fun res!2998399 () Bool)

(declare-fun nullable!8532 (Regex!19594) Bool)

(assert (=> b!7473764 (= res!2998399 (not (nullable!8532 (reg!19923 lt!2626784))))))

(assert (=> b!7473764 (=> (not res!2998399) (not e!4458711))))

(declare-fun b!7473765 () Bool)

(declare-fun e!4458713 () Bool)

(assert (=> b!7473765 (= e!4458712 e!4458713)))

(declare-fun c!1380715 () Bool)

(assert (=> b!7473765 (= c!1380715 (is-Union!19594 lt!2626784))))

(declare-fun b!7473766 () Bool)

(declare-fun e!4458707 () Bool)

(declare-fun e!4458709 () Bool)

(assert (=> b!7473766 (= e!4458707 e!4458709)))

(declare-fun res!2998396 () Bool)

(assert (=> b!7473766 (=> (not res!2998396) (not e!4458709))))

(declare-fun call!686176 () Bool)

(assert (=> b!7473766 (= res!2998396 call!686176)))

(declare-fun c!1380716 () Bool)

(declare-fun call!686175 () Bool)

(declare-fun bm!686170 () Bool)

(assert (=> bm!686170 (= call!686175 (validRegex!10108 (ite c!1380716 (reg!19923 lt!2626784) (ite c!1380715 (regOne!39701 lt!2626784) (regOne!39700 lt!2626784)))))))

(declare-fun b!7473767 () Bool)

(declare-fun res!2998397 () Bool)

(assert (=> b!7473767 (=> res!2998397 e!4458707)))

(assert (=> b!7473767 (= res!2998397 (not (is-Concat!28439 lt!2626784)))))

(assert (=> b!7473767 (= e!4458713 e!4458707)))

(declare-fun b!7473768 () Bool)

(declare-fun e!4458710 () Bool)

(assert (=> b!7473768 (= e!4458710 e!4458712)))

(assert (=> b!7473768 (= c!1380716 (is-Star!19594 lt!2626784))))

(declare-fun bm!686171 () Bool)

(declare-fun call!686177 () Bool)

(assert (=> bm!686171 (= call!686177 (validRegex!10108 (ite c!1380715 (regTwo!39701 lt!2626784) (regTwo!39700 lt!2626784))))))

(declare-fun b!7473770 () Bool)

(assert (=> b!7473770 (= e!4458709 call!686177)))

(declare-fun b!7473771 () Bool)

(declare-fun e!4458708 () Bool)

(assert (=> b!7473771 (= e!4458708 call!686177)))

(declare-fun b!7473772 () Bool)

(declare-fun res!2998395 () Bool)

(assert (=> b!7473772 (=> (not res!2998395) (not e!4458708))))

(assert (=> b!7473772 (= res!2998395 call!686176)))

(assert (=> b!7473772 (= e!4458713 e!4458708)))

(declare-fun bm!686172 () Bool)

(assert (=> bm!686172 (= call!686176 call!686175)))

(declare-fun d!2299259 () Bool)

(declare-fun res!2998398 () Bool)

(assert (=> d!2299259 (=> res!2998398 e!4458710)))

(assert (=> d!2299259 (= res!2998398 (is-ElementMatch!19594 lt!2626784))))

(assert (=> d!2299259 (= (validRegex!10108 lt!2626784) e!4458710)))

(declare-fun b!7473769 () Bool)

(assert (=> b!7473769 (= e!4458711 call!686175)))

(assert (= (and d!2299259 (not res!2998398)) b!7473768))

(assert (= (and b!7473768 c!1380716) b!7473764))

(assert (= (and b!7473768 (not c!1380716)) b!7473765))

(assert (= (and b!7473764 res!2998399) b!7473769))

(assert (= (and b!7473765 c!1380715) b!7473772))

(assert (= (and b!7473765 (not c!1380715)) b!7473767))

(assert (= (and b!7473772 res!2998395) b!7473771))

(assert (= (and b!7473767 (not res!2998397)) b!7473766))

(assert (= (and b!7473766 res!2998396) b!7473770))

(assert (= (or b!7473771 b!7473770) bm!686171))

(assert (= (or b!7473772 b!7473766) bm!686172))

(assert (= (or b!7473769 bm!686172) bm!686170))

(declare-fun m!8069608 () Bool)

(assert (=> b!7473764 m!8069608))

(declare-fun m!8069610 () Bool)

(assert (=> bm!686170 m!8069610))

(declare-fun m!8069612 () Bool)

(assert (=> bm!686171 m!8069612))

(assert (=> b!7473660 d!2299259))

(declare-fun b!7473777 () Bool)

(declare-fun e!4458721 () Bool)

(declare-fun e!4458720 () Bool)

(assert (=> b!7473777 (= e!4458721 e!4458720)))

(declare-fun res!2998406 () Bool)

(assert (=> b!7473777 (= res!2998406 (not (nullable!8532 (reg!19923 r1!5845))))))

(assert (=> b!7473777 (=> (not res!2998406) (not e!4458720))))

(declare-fun b!7473778 () Bool)

(declare-fun e!4458722 () Bool)

(assert (=> b!7473778 (= e!4458721 e!4458722)))

(declare-fun c!1380717 () Bool)

(assert (=> b!7473778 (= c!1380717 (is-Union!19594 r1!5845))))

(declare-fun b!7473779 () Bool)

(declare-fun e!4458716 () Bool)

(declare-fun e!4458718 () Bool)

(assert (=> b!7473779 (= e!4458716 e!4458718)))

(declare-fun res!2998403 () Bool)

(assert (=> b!7473779 (=> (not res!2998403) (not e!4458718))))

(declare-fun call!686179 () Bool)

(assert (=> b!7473779 (= res!2998403 call!686179)))

(declare-fun bm!686173 () Bool)

(declare-fun c!1380718 () Bool)

(declare-fun call!686178 () Bool)

(assert (=> bm!686173 (= call!686178 (validRegex!10108 (ite c!1380718 (reg!19923 r1!5845) (ite c!1380717 (regOne!39701 r1!5845) (regOne!39700 r1!5845)))))))

(declare-fun b!7473780 () Bool)

(declare-fun res!2998404 () Bool)

(assert (=> b!7473780 (=> res!2998404 e!4458716)))

(assert (=> b!7473780 (= res!2998404 (not (is-Concat!28439 r1!5845)))))

(assert (=> b!7473780 (= e!4458722 e!4458716)))

(declare-fun b!7473781 () Bool)

(declare-fun e!4458719 () Bool)

(assert (=> b!7473781 (= e!4458719 e!4458721)))

(assert (=> b!7473781 (= c!1380718 (is-Star!19594 r1!5845))))

(declare-fun bm!686174 () Bool)

(declare-fun call!686180 () Bool)

(assert (=> bm!686174 (= call!686180 (validRegex!10108 (ite c!1380717 (regTwo!39701 r1!5845) (regTwo!39700 r1!5845))))))

(declare-fun b!7473783 () Bool)

(assert (=> b!7473783 (= e!4458718 call!686180)))

(declare-fun b!7473784 () Bool)

(declare-fun e!4458717 () Bool)

(assert (=> b!7473784 (= e!4458717 call!686180)))

(declare-fun b!7473785 () Bool)

(declare-fun res!2998402 () Bool)

(assert (=> b!7473785 (=> (not res!2998402) (not e!4458717))))

(assert (=> b!7473785 (= res!2998402 call!686179)))

(assert (=> b!7473785 (= e!4458722 e!4458717)))

(declare-fun bm!686175 () Bool)

(assert (=> bm!686175 (= call!686179 call!686178)))

(declare-fun d!2299263 () Bool)

(declare-fun res!2998405 () Bool)

(assert (=> d!2299263 (=> res!2998405 e!4458719)))

(assert (=> d!2299263 (= res!2998405 (is-ElementMatch!19594 r1!5845))))

(assert (=> d!2299263 (= (validRegex!10108 r1!5845) e!4458719)))

(declare-fun b!7473782 () Bool)

(assert (=> b!7473782 (= e!4458720 call!686178)))

(assert (= (and d!2299263 (not res!2998405)) b!7473781))

(assert (= (and b!7473781 c!1380718) b!7473777))

(assert (= (and b!7473781 (not c!1380718)) b!7473778))

(assert (= (and b!7473777 res!2998406) b!7473782))

(assert (= (and b!7473778 c!1380717) b!7473785))

(assert (= (and b!7473778 (not c!1380717)) b!7473780))

(assert (= (and b!7473785 res!2998402) b!7473784))

(assert (= (and b!7473780 (not res!2998404)) b!7473779))

(assert (= (and b!7473779 res!2998403) b!7473783))

(assert (= (or b!7473784 b!7473783) bm!686174))

(assert (= (or b!7473785 b!7473779) bm!686175))

(assert (= (or b!7473782 bm!686175) bm!686173))

(declare-fun m!8069614 () Bool)

(assert (=> b!7473777 m!8069614))

(declare-fun m!8069616 () Bool)

(assert (=> bm!686173 m!8069616))

(declare-fun m!8069618 () Bool)

(assert (=> bm!686174 m!8069618))

(assert (=> start!724392 d!2299263))

(declare-fun b!7473796 () Bool)

(declare-fun e!4458736 () Bool)

(declare-fun e!4458735 () Bool)

(assert (=> b!7473796 (= e!4458736 e!4458735)))

(declare-fun res!2998415 () Bool)

(assert (=> b!7473796 (= res!2998415 (not (nullable!8532 (reg!19923 rTail!78))))))

(assert (=> b!7473796 (=> (not res!2998415) (not e!4458735))))

(declare-fun b!7473797 () Bool)

(declare-fun e!4458737 () Bool)

(assert (=> b!7473797 (= e!4458736 e!4458737)))

(declare-fun c!1380723 () Bool)

(assert (=> b!7473797 (= c!1380723 (is-Union!19594 rTail!78))))

(declare-fun b!7473798 () Bool)

(declare-fun e!4458731 () Bool)

(declare-fun e!4458733 () Bool)

(assert (=> b!7473798 (= e!4458731 e!4458733)))

(declare-fun res!2998412 () Bool)

(assert (=> b!7473798 (=> (not res!2998412) (not e!4458733))))

(declare-fun call!686182 () Bool)

(assert (=> b!7473798 (= res!2998412 call!686182)))

(declare-fun c!1380724 () Bool)

(declare-fun bm!686176 () Bool)

(declare-fun call!686181 () Bool)

(assert (=> bm!686176 (= call!686181 (validRegex!10108 (ite c!1380724 (reg!19923 rTail!78) (ite c!1380723 (regOne!39701 rTail!78) (regOne!39700 rTail!78)))))))

(declare-fun b!7473799 () Bool)

(declare-fun res!2998413 () Bool)

(assert (=> b!7473799 (=> res!2998413 e!4458731)))

(assert (=> b!7473799 (= res!2998413 (not (is-Concat!28439 rTail!78)))))

(assert (=> b!7473799 (= e!4458737 e!4458731)))

(declare-fun b!7473800 () Bool)

(declare-fun e!4458734 () Bool)

(assert (=> b!7473800 (= e!4458734 e!4458736)))

(assert (=> b!7473800 (= c!1380724 (is-Star!19594 rTail!78))))

(declare-fun bm!686177 () Bool)

(declare-fun call!686183 () Bool)

(assert (=> bm!686177 (= call!686183 (validRegex!10108 (ite c!1380723 (regTwo!39701 rTail!78) (regTwo!39700 rTail!78))))))

(declare-fun b!7473802 () Bool)

(assert (=> b!7473802 (= e!4458733 call!686183)))

(declare-fun b!7473803 () Bool)

(declare-fun e!4458732 () Bool)

(assert (=> b!7473803 (= e!4458732 call!686183)))

(declare-fun b!7473804 () Bool)

(declare-fun res!2998411 () Bool)

(assert (=> b!7473804 (=> (not res!2998411) (not e!4458732))))

(assert (=> b!7473804 (= res!2998411 call!686182)))

(assert (=> b!7473804 (= e!4458737 e!4458732)))

(declare-fun bm!686178 () Bool)

(assert (=> bm!686178 (= call!686182 call!686181)))

(declare-fun d!2299265 () Bool)

(declare-fun res!2998414 () Bool)

(assert (=> d!2299265 (=> res!2998414 e!4458734)))

(assert (=> d!2299265 (= res!2998414 (is-ElementMatch!19594 rTail!78))))

(assert (=> d!2299265 (= (validRegex!10108 rTail!78) e!4458734)))

(declare-fun b!7473801 () Bool)

(assert (=> b!7473801 (= e!4458735 call!686181)))

(assert (= (and d!2299265 (not res!2998414)) b!7473800))

(assert (= (and b!7473800 c!1380724) b!7473796))

(assert (= (and b!7473800 (not c!1380724)) b!7473797))

(assert (= (and b!7473796 res!2998415) b!7473801))

(assert (= (and b!7473797 c!1380723) b!7473804))

(assert (= (and b!7473797 (not c!1380723)) b!7473799))

(assert (= (and b!7473804 res!2998411) b!7473803))

(assert (= (and b!7473799 (not res!2998413)) b!7473798))

(assert (= (and b!7473798 res!2998412) b!7473802))

(assert (= (or b!7473803 b!7473802) bm!686177))

(assert (= (or b!7473804 b!7473798) bm!686178))

(assert (= (or b!7473801 bm!686178) bm!686176))

(declare-fun m!8069620 () Bool)

(assert (=> b!7473796 m!8069620))

(declare-fun m!8069622 () Bool)

(assert (=> bm!686176 m!8069622))

(declare-fun m!8069624 () Bool)

(assert (=> bm!686177 m!8069624))

(assert (=> b!7473666 d!2299265))

(declare-fun b!7473809 () Bool)

(declare-fun e!4458747 () Bool)

(declare-fun e!4458746 () Bool)

(assert (=> b!7473809 (= e!4458747 e!4458746)))

(declare-fun res!2998424 () Bool)

(assert (=> b!7473809 (= res!2998424 (not (nullable!8532 (reg!19923 r2!5783))))))

(assert (=> b!7473809 (=> (not res!2998424) (not e!4458746))))

(declare-fun b!7473810 () Bool)

(declare-fun e!4458748 () Bool)

(assert (=> b!7473810 (= e!4458747 e!4458748)))

(declare-fun c!1380725 () Bool)

(assert (=> b!7473810 (= c!1380725 (is-Union!19594 r2!5783))))

(declare-fun b!7473811 () Bool)

(declare-fun e!4458742 () Bool)

(declare-fun e!4458744 () Bool)

(assert (=> b!7473811 (= e!4458742 e!4458744)))

(declare-fun res!2998421 () Bool)

(assert (=> b!7473811 (=> (not res!2998421) (not e!4458744))))

(declare-fun call!686185 () Bool)

(assert (=> b!7473811 (= res!2998421 call!686185)))

(declare-fun c!1380726 () Bool)

(declare-fun call!686184 () Bool)

(declare-fun bm!686179 () Bool)

(assert (=> bm!686179 (= call!686184 (validRegex!10108 (ite c!1380726 (reg!19923 r2!5783) (ite c!1380725 (regOne!39701 r2!5783) (regOne!39700 r2!5783)))))))

(declare-fun b!7473812 () Bool)

(declare-fun res!2998422 () Bool)

(assert (=> b!7473812 (=> res!2998422 e!4458742)))

(assert (=> b!7473812 (= res!2998422 (not (is-Concat!28439 r2!5783)))))

(assert (=> b!7473812 (= e!4458748 e!4458742)))

(declare-fun b!7473813 () Bool)

(declare-fun e!4458745 () Bool)

(assert (=> b!7473813 (= e!4458745 e!4458747)))

(assert (=> b!7473813 (= c!1380726 (is-Star!19594 r2!5783))))

(declare-fun bm!686180 () Bool)

(declare-fun call!686186 () Bool)

(assert (=> bm!686180 (= call!686186 (validRegex!10108 (ite c!1380725 (regTwo!39701 r2!5783) (regTwo!39700 r2!5783))))))

(declare-fun b!7473815 () Bool)

(assert (=> b!7473815 (= e!4458744 call!686186)))

(declare-fun b!7473816 () Bool)

(declare-fun e!4458743 () Bool)

(assert (=> b!7473816 (= e!4458743 call!686186)))

(declare-fun b!7473817 () Bool)

(declare-fun res!2998420 () Bool)

(assert (=> b!7473817 (=> (not res!2998420) (not e!4458743))))

(assert (=> b!7473817 (= res!2998420 call!686185)))

(assert (=> b!7473817 (= e!4458748 e!4458743)))

(declare-fun bm!686181 () Bool)

(assert (=> bm!686181 (= call!686185 call!686184)))

(declare-fun d!2299267 () Bool)

(declare-fun res!2998423 () Bool)

(assert (=> d!2299267 (=> res!2998423 e!4458745)))

(assert (=> d!2299267 (= res!2998423 (is-ElementMatch!19594 r2!5783))))

(assert (=> d!2299267 (= (validRegex!10108 r2!5783) e!4458745)))

(declare-fun b!7473814 () Bool)

(assert (=> b!7473814 (= e!4458746 call!686184)))

(assert (= (and d!2299267 (not res!2998423)) b!7473813))

(assert (= (and b!7473813 c!1380726) b!7473809))

(assert (= (and b!7473813 (not c!1380726)) b!7473810))

(assert (= (and b!7473809 res!2998424) b!7473814))

(assert (= (and b!7473810 c!1380725) b!7473817))

(assert (= (and b!7473810 (not c!1380725)) b!7473812))

(assert (= (and b!7473817 res!2998420) b!7473816))

(assert (= (and b!7473812 (not res!2998422)) b!7473811))

(assert (= (and b!7473811 res!2998421) b!7473815))

(assert (= (or b!7473816 b!7473815) bm!686180))

(assert (= (or b!7473817 b!7473811) bm!686181))

(assert (= (or b!7473814 bm!686181) bm!686179))

(declare-fun m!8069626 () Bool)

(assert (=> b!7473809 m!8069626))

(declare-fun m!8069628 () Bool)

(assert (=> bm!686179 m!8069628))

(declare-fun m!8069630 () Bool)

(assert (=> bm!686180 m!8069630))

(assert (=> b!7473657 d!2299267))

(declare-fun b!7473845 () Bool)

(declare-fun res!2998441 () Bool)

(declare-fun e!4458766 () Bool)

(assert (=> b!7473845 (=> (not res!2998441) (not e!4458766))))

(declare-fun lt!2626825 () Option!17151)

(declare-fun get!25255 (Option!17151) tuple2!68638)

(assert (=> b!7473845 (= res!2998441 (matchR!9358 lt!2626782 (_1!37622 (get!25255 lt!2626825))))))

(declare-fun b!7473846 () Bool)

(declare-fun ++!17208 (List!72310 List!72310) List!72310)

(assert (=> b!7473846 (= e!4458766 (= (++!17208 (_1!37622 (get!25255 lt!2626825)) (_2!37622 (get!25255 lt!2626825))) s!13591))))

(declare-fun b!7473847 () Bool)

(declare-fun lt!2626824 () Unit!166023)

(declare-fun lt!2626826 () Unit!166023)

(assert (=> b!7473847 (= lt!2626824 lt!2626826)))

(assert (=> b!7473847 (= (++!17208 (++!17208 Nil!72186 (Cons!72186 (h!78634 s!13591) Nil!72186)) (t!386879 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3084 (List!72310 C!39462 List!72310 List!72310) Unit!166023)

(assert (=> b!7473847 (= lt!2626826 (lemmaMoveElementToOtherListKeepsConcatEq!3084 Nil!72186 (h!78634 s!13591) (t!386879 s!13591) s!13591))))

(declare-fun e!4458770 () Option!17151)

(assert (=> b!7473847 (= e!4458770 (findConcatSeparation!3273 lt!2626782 rTail!78 (++!17208 Nil!72186 (Cons!72186 (h!78634 s!13591) Nil!72186)) (t!386879 s!13591) s!13591))))

(declare-fun b!7473848 () Bool)

(assert (=> b!7473848 (= e!4458770 None!17150)))

(declare-fun b!7473849 () Bool)

(declare-fun e!4458767 () Bool)

(assert (=> b!7473849 (= e!4458767 (not (isDefined!13840 lt!2626825)))))

(declare-fun b!7473850 () Bool)

(declare-fun res!2998442 () Bool)

(assert (=> b!7473850 (=> (not res!2998442) (not e!4458766))))

(assert (=> b!7473850 (= res!2998442 (matchR!9358 rTail!78 (_2!37622 (get!25255 lt!2626825))))))

(declare-fun d!2299269 () Bool)

(assert (=> d!2299269 e!4458767))

(declare-fun res!2998440 () Bool)

(assert (=> d!2299269 (=> res!2998440 e!4458767)))

(assert (=> d!2299269 (= res!2998440 e!4458766)))

(declare-fun res!2998444 () Bool)

(assert (=> d!2299269 (=> (not res!2998444) (not e!4458766))))

(assert (=> d!2299269 (= res!2998444 (isDefined!13840 lt!2626825))))

(declare-fun e!4458768 () Option!17151)

(assert (=> d!2299269 (= lt!2626825 e!4458768)))

(declare-fun c!1380734 () Bool)

(declare-fun e!4458769 () Bool)

(assert (=> d!2299269 (= c!1380734 e!4458769)))

(declare-fun res!2998443 () Bool)

(assert (=> d!2299269 (=> (not res!2998443) (not e!4458769))))

(assert (=> d!2299269 (= res!2998443 (matchR!9358 lt!2626782 Nil!72186))))

(assert (=> d!2299269 (validRegex!10108 lt!2626782)))

(assert (=> d!2299269 (= (findConcatSeparation!3273 lt!2626782 rTail!78 Nil!72186 s!13591 s!13591) lt!2626825)))

(declare-fun b!7473851 () Bool)

(assert (=> b!7473851 (= e!4458768 (Some!17150 (tuple2!68639 Nil!72186 s!13591)))))

(declare-fun b!7473852 () Bool)

(assert (=> b!7473852 (= e!4458768 e!4458770)))

(declare-fun c!1380733 () Bool)

(assert (=> b!7473852 (= c!1380733 (is-Nil!72186 s!13591))))

(declare-fun b!7473853 () Bool)

(assert (=> b!7473853 (= e!4458769 (matchR!9358 rTail!78 s!13591))))

(assert (= (and d!2299269 res!2998443) b!7473853))

(assert (= (and d!2299269 c!1380734) b!7473851))

(assert (= (and d!2299269 (not c!1380734)) b!7473852))

(assert (= (and b!7473852 c!1380733) b!7473848))

(assert (= (and b!7473852 (not c!1380733)) b!7473847))

(assert (= (and d!2299269 res!2998444) b!7473845))

(assert (= (and b!7473845 res!2998441) b!7473850))

(assert (= (and b!7473850 res!2998442) b!7473846))

(assert (= (and d!2299269 (not res!2998440)) b!7473849))

(declare-fun m!8069638 () Bool)

(assert (=> b!7473853 m!8069638))

(declare-fun m!8069640 () Bool)

(assert (=> b!7473849 m!8069640))

(declare-fun m!8069642 () Bool)

(assert (=> b!7473846 m!8069642))

(declare-fun m!8069644 () Bool)

(assert (=> b!7473846 m!8069644))

(assert (=> b!7473845 m!8069642))

(declare-fun m!8069646 () Bool)

(assert (=> b!7473845 m!8069646))

(declare-fun m!8069648 () Bool)

(assert (=> b!7473847 m!8069648))

(assert (=> b!7473847 m!8069648))

(declare-fun m!8069650 () Bool)

(assert (=> b!7473847 m!8069650))

(declare-fun m!8069652 () Bool)

(assert (=> b!7473847 m!8069652))

(assert (=> b!7473847 m!8069648))

(declare-fun m!8069654 () Bool)

(assert (=> b!7473847 m!8069654))

(assert (=> d!2299269 m!8069640))

(declare-fun m!8069656 () Bool)

(assert (=> d!2299269 m!8069656))

(declare-fun m!8069658 () Bool)

(assert (=> d!2299269 m!8069658))

(assert (=> b!7473850 m!8069642))

(declare-fun m!8069660 () Bool)

(assert (=> b!7473850 m!8069660))

(assert (=> b!7473662 d!2299269))

(declare-fun d!2299273 () Bool)

(declare-fun isEmpty!41179 (Option!17151) Bool)

(assert (=> d!2299273 (= (isDefined!13840 (findConcatSeparation!3273 lt!2626782 rTail!78 Nil!72186 s!13591 s!13591)) (not (isEmpty!41179 (findConcatSeparation!3273 lt!2626782 rTail!78 Nil!72186 s!13591 s!13591))))))

(declare-fun bs!1931666 () Bool)

(assert (= bs!1931666 d!2299273))

(assert (=> bs!1931666 m!8069562))

(declare-fun m!8069662 () Bool)

(assert (=> bs!1931666 m!8069662))

(assert (=> b!7473662 d!2299273))

(declare-fun d!2299275 () Bool)

(declare-fun choose!57762 (Int) Bool)

(assert (=> d!2299275 (= (Exists!4213 lambda!462989) (choose!57762 lambda!462989))))

(declare-fun bs!1931667 () Bool)

(assert (= bs!1931667 d!2299275))

(declare-fun m!8069664 () Bool)

(assert (=> bs!1931667 m!8069664))

(assert (=> b!7473662 d!2299275))

(declare-fun bs!1931668 () Bool)

(declare-fun d!2299277 () Bool)

(assert (= bs!1931668 (and d!2299277 b!7473662)))

(declare-fun lambda!463004 () Int)

(assert (=> bs!1931668 (= lambda!463004 lambda!462988)))

(assert (=> bs!1931668 (not (= lambda!463004 lambda!462989))))

(assert (=> d!2299277 true))

(assert (=> d!2299277 true))

(assert (=> d!2299277 true))

(declare-fun lambda!463005 () Int)

(assert (=> bs!1931668 (not (= lambda!463005 lambda!462988))))

(assert (=> bs!1931668 (= lambda!463005 lambda!462989)))

(declare-fun bs!1931669 () Bool)

(assert (= bs!1931669 d!2299277))

(assert (=> bs!1931669 (not (= lambda!463005 lambda!463004))))

(assert (=> d!2299277 true))

(assert (=> d!2299277 true))

(assert (=> d!2299277 true))

(assert (=> d!2299277 (= (Exists!4213 lambda!463004) (Exists!4213 lambda!463005))))

(declare-fun lt!2626829 () Unit!166023)

(declare-fun choose!57763 (Regex!19594 Regex!19594 List!72310) Unit!166023)

(assert (=> d!2299277 (= lt!2626829 (choose!57763 lt!2626782 rTail!78 s!13591))))

(assert (=> d!2299277 (validRegex!10108 lt!2626782)))

(assert (=> d!2299277 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2547 lt!2626782 rTail!78 s!13591) lt!2626829)))

(declare-fun m!8069666 () Bool)

(assert (=> bs!1931669 m!8069666))

(declare-fun m!8069668 () Bool)

(assert (=> bs!1931669 m!8069668))

(declare-fun m!8069670 () Bool)

(assert (=> bs!1931669 m!8069670))

(assert (=> bs!1931669 m!8069658))

(assert (=> b!7473662 d!2299277))

(declare-fun d!2299279 () Bool)

(assert (=> d!2299279 (= (Exists!4213 lambda!462988) (choose!57762 lambda!462988))))

(declare-fun bs!1931670 () Bool)

(assert (= bs!1931670 d!2299279))

(declare-fun m!8069672 () Bool)

(assert (=> bs!1931670 m!8069672))

(assert (=> b!7473662 d!2299279))

(declare-fun bs!1931671 () Bool)

(declare-fun d!2299281 () Bool)

(assert (= bs!1931671 (and d!2299281 b!7473662)))

(declare-fun lambda!463010 () Int)

(assert (=> bs!1931671 (= lambda!463010 lambda!462988)))

(assert (=> bs!1931671 (not (= lambda!463010 lambda!462989))))

(declare-fun bs!1931672 () Bool)

(assert (= bs!1931672 (and d!2299281 d!2299277)))

(assert (=> bs!1931672 (= lambda!463010 lambda!463004)))

(assert (=> bs!1931672 (not (= lambda!463010 lambda!463005))))

(assert (=> d!2299281 true))

(assert (=> d!2299281 true))

(assert (=> d!2299281 true))

(assert (=> d!2299281 (= (isDefined!13840 (findConcatSeparation!3273 lt!2626782 rTail!78 Nil!72186 s!13591 s!13591)) (Exists!4213 lambda!463010))))

(declare-fun lt!2626832 () Unit!166023)

(declare-fun choose!57764 (Regex!19594 Regex!19594 List!72310) Unit!166023)

(assert (=> d!2299281 (= lt!2626832 (choose!57764 lt!2626782 rTail!78 s!13591))))

(assert (=> d!2299281 (validRegex!10108 lt!2626782)))

(assert (=> d!2299281 (= (lemmaFindConcatSeparationEquivalentToExists!3031 lt!2626782 rTail!78 s!13591) lt!2626832)))

(declare-fun bs!1931673 () Bool)

(assert (= bs!1931673 d!2299281))

(declare-fun m!8069674 () Bool)

(assert (=> bs!1931673 m!8069674))

(declare-fun m!8069676 () Bool)

(assert (=> bs!1931673 m!8069676))

(assert (=> bs!1931673 m!8069658))

(assert (=> bs!1931673 m!8069562))

(assert (=> bs!1931673 m!8069562))

(assert (=> bs!1931673 m!8069566))

(assert (=> b!7473662 d!2299281))

(declare-fun d!2299283 () Bool)

(assert (=> d!2299283 (= (matchR!9358 lt!2626784 s!13591) (matchRSpec!4273 lt!2626784 s!13591))))

(declare-fun lt!2626835 () Unit!166023)

(declare-fun choose!57765 (Regex!19594 List!72310) Unit!166023)

(assert (=> d!2299283 (= lt!2626835 (choose!57765 lt!2626784 s!13591))))

(assert (=> d!2299283 (validRegex!10108 lt!2626784)))

(assert (=> d!2299283 (= (mainMatchTheorem!4267 lt!2626784 s!13591) lt!2626835)))

(declare-fun bs!1931674 () Bool)

(assert (= bs!1931674 d!2299283))

(assert (=> bs!1931674 m!8069552))

(assert (=> bs!1931674 m!8069556))

(declare-fun m!8069678 () Bool)

(assert (=> bs!1931674 m!8069678))

(assert (=> bs!1931674 m!8069574))

(assert (=> b!7473658 d!2299283))

(declare-fun b!7473937 () Bool)

(declare-fun e!4458816 () Bool)

(declare-fun e!4458818 () Bool)

(assert (=> b!7473937 (= e!4458816 e!4458818)))

(declare-fun res!2998499 () Bool)

(assert (=> b!7473937 (=> (not res!2998499) (not e!4458818))))

(declare-fun lt!2626838 () Bool)

(assert (=> b!7473937 (= res!2998499 (not lt!2626838))))

(declare-fun b!7473938 () Bool)

(declare-fun e!4458822 () Bool)

(declare-fun head!15331 (List!72310) C!39462)

(assert (=> b!7473938 (= e!4458822 (= (head!15331 s!13591) (c!1380709 lt!2626784)))))

(declare-fun b!7473939 () Bool)

(declare-fun e!4458821 () Bool)

(declare-fun e!4458820 () Bool)

(assert (=> b!7473939 (= e!4458821 e!4458820)))

(declare-fun c!1380755 () Bool)

(assert (=> b!7473939 (= c!1380755 (is-EmptyLang!19594 lt!2626784))))

(declare-fun b!7473940 () Bool)

(declare-fun res!2998497 () Bool)

(declare-fun e!4458817 () Bool)

(assert (=> b!7473940 (=> res!2998497 e!4458817)))

(declare-fun isEmpty!41180 (List!72310) Bool)

(declare-fun tail!14900 (List!72310) List!72310)

(assert (=> b!7473940 (= res!2998497 (not (isEmpty!41180 (tail!14900 s!13591))))))

(declare-fun b!7473941 () Bool)

(declare-fun e!4458819 () Bool)

(declare-fun derivativeStep!5591 (Regex!19594 C!39462) Regex!19594)

(assert (=> b!7473941 (= e!4458819 (matchR!9358 (derivativeStep!5591 lt!2626784 (head!15331 s!13591)) (tail!14900 s!13591)))))

(declare-fun b!7473942 () Bool)

(assert (=> b!7473942 (= e!4458817 (not (= (head!15331 s!13591) (c!1380709 lt!2626784))))))

(declare-fun b!7473943 () Bool)

(declare-fun res!2998494 () Bool)

(assert (=> b!7473943 (=> (not res!2998494) (not e!4458822))))

(declare-fun call!686204 () Bool)

(assert (=> b!7473943 (= res!2998494 (not call!686204))))

(declare-fun b!7473944 () Bool)

(assert (=> b!7473944 (= e!4458821 (= lt!2626838 call!686204))))

(declare-fun b!7473945 () Bool)

(declare-fun res!2998493 () Bool)

(assert (=> b!7473945 (=> (not res!2998493) (not e!4458822))))

(assert (=> b!7473945 (= res!2998493 (isEmpty!41180 (tail!14900 s!13591)))))

(declare-fun b!7473946 () Bool)

(assert (=> b!7473946 (= e!4458820 (not lt!2626838))))

(declare-fun b!7473947 () Bool)

(declare-fun res!2998495 () Bool)

(assert (=> b!7473947 (=> res!2998495 e!4458816)))

(assert (=> b!7473947 (= res!2998495 (not (is-ElementMatch!19594 lt!2626784)))))

(assert (=> b!7473947 (= e!4458820 e!4458816)))

(declare-fun b!7473948 () Bool)

(declare-fun res!2998496 () Bool)

(assert (=> b!7473948 (=> res!2998496 e!4458816)))

(assert (=> b!7473948 (= res!2998496 e!4458822)))

(declare-fun res!2998492 () Bool)

(assert (=> b!7473948 (=> (not res!2998492) (not e!4458822))))

(assert (=> b!7473948 (= res!2998492 lt!2626838)))

(declare-fun b!7473949 () Bool)

(assert (=> b!7473949 (= e!4458819 (nullable!8532 lt!2626784))))

(declare-fun b!7473950 () Bool)

(assert (=> b!7473950 (= e!4458818 e!4458817)))

(declare-fun res!2998498 () Bool)

(assert (=> b!7473950 (=> res!2998498 e!4458817)))

(assert (=> b!7473950 (= res!2998498 call!686204)))

(declare-fun d!2299285 () Bool)

(assert (=> d!2299285 e!4458821))

(declare-fun c!1380753 () Bool)

(assert (=> d!2299285 (= c!1380753 (is-EmptyExpr!19594 lt!2626784))))

(assert (=> d!2299285 (= lt!2626838 e!4458819)))

(declare-fun c!1380754 () Bool)

(assert (=> d!2299285 (= c!1380754 (isEmpty!41180 s!13591))))

(assert (=> d!2299285 (validRegex!10108 lt!2626784)))

(assert (=> d!2299285 (= (matchR!9358 lt!2626784 s!13591) lt!2626838)))

(declare-fun bm!686199 () Bool)

(assert (=> bm!686199 (= call!686204 (isEmpty!41180 s!13591))))

(assert (= (and d!2299285 c!1380754) b!7473949))

(assert (= (and d!2299285 (not c!1380754)) b!7473941))

(assert (= (and d!2299285 c!1380753) b!7473944))

(assert (= (and d!2299285 (not c!1380753)) b!7473939))

(assert (= (and b!7473939 c!1380755) b!7473946))

(assert (= (and b!7473939 (not c!1380755)) b!7473947))

(assert (= (and b!7473947 (not res!2998495)) b!7473948))

(assert (= (and b!7473948 res!2998492) b!7473943))

(assert (= (and b!7473943 res!2998494) b!7473945))

(assert (= (and b!7473945 res!2998493) b!7473938))

(assert (= (and b!7473948 (not res!2998496)) b!7473937))

(assert (= (and b!7473937 res!2998499) b!7473950))

(assert (= (and b!7473950 (not res!2998498)) b!7473940))

(assert (= (and b!7473940 (not res!2998497)) b!7473942))

(assert (= (or b!7473944 b!7473943 b!7473950) bm!686199))

(declare-fun m!8069688 () Bool)

(assert (=> b!7473949 m!8069688))

(declare-fun m!8069690 () Bool)

(assert (=> b!7473940 m!8069690))

(assert (=> b!7473940 m!8069690))

(declare-fun m!8069692 () Bool)

(assert (=> b!7473940 m!8069692))

(declare-fun m!8069694 () Bool)

(assert (=> d!2299285 m!8069694))

(assert (=> d!2299285 m!8069574))

(assert (=> bm!686199 m!8069694))

(declare-fun m!8069696 () Bool)

(assert (=> b!7473938 m!8069696))

(assert (=> b!7473945 m!8069690))

(assert (=> b!7473945 m!8069690))

(assert (=> b!7473945 m!8069692))

(assert (=> b!7473941 m!8069696))

(assert (=> b!7473941 m!8069696))

(declare-fun m!8069698 () Bool)

(assert (=> b!7473941 m!8069698))

(assert (=> b!7473941 m!8069690))

(assert (=> b!7473941 m!8069698))

(assert (=> b!7473941 m!8069690))

(declare-fun m!8069700 () Bool)

(assert (=> b!7473941 m!8069700))

(assert (=> b!7473942 m!8069696))

(assert (=> b!7473658 d!2299285))

(declare-fun b!7473951 () Bool)

(declare-fun e!4458823 () Bool)

(declare-fun e!4458825 () Bool)

(assert (=> b!7473951 (= e!4458823 e!4458825)))

(declare-fun res!2998507 () Bool)

(assert (=> b!7473951 (=> (not res!2998507) (not e!4458825))))

(declare-fun lt!2626839 () Bool)

(assert (=> b!7473951 (= res!2998507 (not lt!2626839))))

(declare-fun b!7473952 () Bool)

(declare-fun e!4458829 () Bool)

(assert (=> b!7473952 (= e!4458829 (= (head!15331 s!13591) (c!1380709 lt!2626787)))))

(declare-fun b!7473953 () Bool)

(declare-fun e!4458828 () Bool)

(declare-fun e!4458827 () Bool)

(assert (=> b!7473953 (= e!4458828 e!4458827)))

(declare-fun c!1380758 () Bool)

(assert (=> b!7473953 (= c!1380758 (is-EmptyLang!19594 lt!2626787))))

(declare-fun b!7473954 () Bool)

(declare-fun res!2998505 () Bool)

(declare-fun e!4458824 () Bool)

(assert (=> b!7473954 (=> res!2998505 e!4458824)))

(assert (=> b!7473954 (= res!2998505 (not (isEmpty!41180 (tail!14900 s!13591))))))

(declare-fun b!7473955 () Bool)

(declare-fun e!4458826 () Bool)

(assert (=> b!7473955 (= e!4458826 (matchR!9358 (derivativeStep!5591 lt!2626787 (head!15331 s!13591)) (tail!14900 s!13591)))))

(declare-fun b!7473956 () Bool)

(assert (=> b!7473956 (= e!4458824 (not (= (head!15331 s!13591) (c!1380709 lt!2626787))))))

(declare-fun b!7473957 () Bool)

(declare-fun res!2998502 () Bool)

(assert (=> b!7473957 (=> (not res!2998502) (not e!4458829))))

(declare-fun call!686205 () Bool)

(assert (=> b!7473957 (= res!2998502 (not call!686205))))

(declare-fun b!7473958 () Bool)

(assert (=> b!7473958 (= e!4458828 (= lt!2626839 call!686205))))

(declare-fun b!7473959 () Bool)

(declare-fun res!2998501 () Bool)

(assert (=> b!7473959 (=> (not res!2998501) (not e!4458829))))

(assert (=> b!7473959 (= res!2998501 (isEmpty!41180 (tail!14900 s!13591)))))

(declare-fun b!7473960 () Bool)

(assert (=> b!7473960 (= e!4458827 (not lt!2626839))))

(declare-fun b!7473961 () Bool)

(declare-fun res!2998503 () Bool)

(assert (=> b!7473961 (=> res!2998503 e!4458823)))

(assert (=> b!7473961 (= res!2998503 (not (is-ElementMatch!19594 lt!2626787)))))

(assert (=> b!7473961 (= e!4458827 e!4458823)))

(declare-fun b!7473962 () Bool)

(declare-fun res!2998504 () Bool)

(assert (=> b!7473962 (=> res!2998504 e!4458823)))

(assert (=> b!7473962 (= res!2998504 e!4458829)))

(declare-fun res!2998500 () Bool)

(assert (=> b!7473962 (=> (not res!2998500) (not e!4458829))))

(assert (=> b!7473962 (= res!2998500 lt!2626839)))

(declare-fun b!7473963 () Bool)

(assert (=> b!7473963 (= e!4458826 (nullable!8532 lt!2626787))))

(declare-fun b!7473964 () Bool)

(assert (=> b!7473964 (= e!4458825 e!4458824)))

(declare-fun res!2998506 () Bool)

(assert (=> b!7473964 (=> res!2998506 e!4458824)))

(assert (=> b!7473964 (= res!2998506 call!686205)))

(declare-fun d!2299289 () Bool)

(assert (=> d!2299289 e!4458828))

(declare-fun c!1380756 () Bool)

(assert (=> d!2299289 (= c!1380756 (is-EmptyExpr!19594 lt!2626787))))

(assert (=> d!2299289 (= lt!2626839 e!4458826)))

(declare-fun c!1380757 () Bool)

(assert (=> d!2299289 (= c!1380757 (isEmpty!41180 s!13591))))

(assert (=> d!2299289 (validRegex!10108 lt!2626787)))

(assert (=> d!2299289 (= (matchR!9358 lt!2626787 s!13591) lt!2626839)))

(declare-fun bm!686200 () Bool)

(assert (=> bm!686200 (= call!686205 (isEmpty!41180 s!13591))))

(assert (= (and d!2299289 c!1380757) b!7473963))

(assert (= (and d!2299289 (not c!1380757)) b!7473955))

(assert (= (and d!2299289 c!1380756) b!7473958))

(assert (= (and d!2299289 (not c!1380756)) b!7473953))

(assert (= (and b!7473953 c!1380758) b!7473960))

(assert (= (and b!7473953 (not c!1380758)) b!7473961))

(assert (= (and b!7473961 (not res!2998503)) b!7473962))

(assert (= (and b!7473962 res!2998500) b!7473957))

(assert (= (and b!7473957 res!2998502) b!7473959))

(assert (= (and b!7473959 res!2998501) b!7473952))

(assert (= (and b!7473962 (not res!2998504)) b!7473951))

(assert (= (and b!7473951 res!2998507) b!7473964))

(assert (= (and b!7473964 (not res!2998506)) b!7473954))

(assert (= (and b!7473954 (not res!2998505)) b!7473956))

(assert (= (or b!7473958 b!7473957 b!7473964) bm!686200))

(declare-fun m!8069702 () Bool)

(assert (=> b!7473963 m!8069702))

(assert (=> b!7473954 m!8069690))

(assert (=> b!7473954 m!8069690))

(assert (=> b!7473954 m!8069692))

(assert (=> d!2299289 m!8069694))

(declare-fun m!8069704 () Bool)

(assert (=> d!2299289 m!8069704))

(assert (=> bm!686200 m!8069694))

(assert (=> b!7473952 m!8069696))

(assert (=> b!7473959 m!8069690))

(assert (=> b!7473959 m!8069690))

(assert (=> b!7473959 m!8069692))

(assert (=> b!7473955 m!8069696))

(assert (=> b!7473955 m!8069696))

(declare-fun m!8069706 () Bool)

(assert (=> b!7473955 m!8069706))

(assert (=> b!7473955 m!8069690))

(assert (=> b!7473955 m!8069706))

(assert (=> b!7473955 m!8069690))

(declare-fun m!8069708 () Bool)

(assert (=> b!7473955 m!8069708))

(assert (=> b!7473956 m!8069696))

(assert (=> b!7473658 d!2299289))

(declare-fun bs!1931678 () Bool)

(declare-fun b!7474031 () Bool)

(assert (= bs!1931678 (and b!7474031 b!7473662)))

(declare-fun lambda!463017 () Int)

(assert (=> bs!1931678 (not (= lambda!463017 lambda!462989))))

(assert (=> bs!1931678 (not (= lambda!463017 lambda!462988))))

(declare-fun bs!1931679 () Bool)

(assert (= bs!1931679 (and b!7474031 d!2299277)))

(assert (=> bs!1931679 (not (= lambda!463017 lambda!463004))))

(assert (=> bs!1931679 (not (= lambda!463017 lambda!463005))))

(declare-fun bs!1931680 () Bool)

(assert (= bs!1931680 (and b!7474031 d!2299281)))

(assert (=> bs!1931680 (not (= lambda!463017 lambda!463010))))

(assert (=> b!7474031 true))

(assert (=> b!7474031 true))

(declare-fun bs!1931681 () Bool)

(declare-fun b!7474027 () Bool)

(assert (= bs!1931681 (and b!7474027 b!7473662)))

(declare-fun lambda!463018 () Int)

(assert (=> bs!1931681 (= (and (= (regOne!39700 lt!2626787) lt!2626782) (= (regTwo!39700 lt!2626787) rTail!78)) (= lambda!463018 lambda!462989))))

(assert (=> bs!1931681 (not (= lambda!463018 lambda!462988))))

(declare-fun bs!1931682 () Bool)

(assert (= bs!1931682 (and b!7474027 d!2299277)))

(assert (=> bs!1931682 (not (= lambda!463018 lambda!463004))))

(assert (=> bs!1931682 (= (and (= (regOne!39700 lt!2626787) lt!2626782) (= (regTwo!39700 lt!2626787) rTail!78)) (= lambda!463018 lambda!463005))))

(declare-fun bs!1931683 () Bool)

(assert (= bs!1931683 (and b!7474027 d!2299281)))

(assert (=> bs!1931683 (not (= lambda!463018 lambda!463010))))

(declare-fun bs!1931684 () Bool)

(assert (= bs!1931684 (and b!7474027 b!7474031)))

(assert (=> bs!1931684 (not (= lambda!463018 lambda!463017))))

(assert (=> b!7474027 true))

(assert (=> b!7474027 true))

(declare-fun b!7474025 () Bool)

(declare-fun c!1380774 () Bool)

(assert (=> b!7474025 (= c!1380774 (is-Union!19594 lt!2626787))))

(declare-fun e!4458866 () Bool)

(declare-fun e!4458865 () Bool)

(assert (=> b!7474025 (= e!4458866 e!4458865)))

(declare-fun b!7474026 () Bool)

(declare-fun res!2998540 () Bool)

(declare-fun e!4458862 () Bool)

(assert (=> b!7474026 (=> res!2998540 e!4458862)))

(declare-fun call!686212 () Bool)

(assert (=> b!7474026 (= res!2998540 call!686212)))

(declare-fun e!4458867 () Bool)

(assert (=> b!7474026 (= e!4458867 e!4458862)))

(declare-fun d!2299291 () Bool)

(declare-fun c!1380773 () Bool)

(assert (=> d!2299291 (= c!1380773 (is-EmptyExpr!19594 lt!2626787))))

(declare-fun e!4458863 () Bool)

(assert (=> d!2299291 (= (matchRSpec!4273 lt!2626787 s!13591) e!4458863)))

(declare-fun call!686213 () Bool)

(assert (=> b!7474027 (= e!4458867 call!686213)))

(declare-fun b!7474028 () Bool)

(declare-fun e!4458868 () Bool)

(assert (=> b!7474028 (= e!4458865 e!4458868)))

(declare-fun res!2998541 () Bool)

(assert (=> b!7474028 (= res!2998541 (matchRSpec!4273 (regOne!39701 lt!2626787) s!13591))))

(assert (=> b!7474028 (=> res!2998541 e!4458868)))

(declare-fun b!7474029 () Bool)

(declare-fun c!1380775 () Bool)

(assert (=> b!7474029 (= c!1380775 (is-ElementMatch!19594 lt!2626787))))

(declare-fun e!4458864 () Bool)

(assert (=> b!7474029 (= e!4458864 e!4458866)))

(declare-fun b!7474030 () Bool)

(assert (=> b!7474030 (= e!4458863 e!4458864)))

(declare-fun res!2998542 () Bool)

(assert (=> b!7474030 (= res!2998542 (not (is-EmptyLang!19594 lt!2626787)))))

(assert (=> b!7474030 (=> (not res!2998542) (not e!4458864))))

(declare-fun bm!686207 () Bool)

(assert (=> bm!686207 (= call!686212 (isEmpty!41180 s!13591))))

(assert (=> b!7474031 (= e!4458862 call!686213)))

(declare-fun b!7474032 () Bool)

(assert (=> b!7474032 (= e!4458863 call!686212)))

(declare-fun b!7474033 () Bool)

(assert (=> b!7474033 (= e!4458865 e!4458867)))

(declare-fun c!1380776 () Bool)

(assert (=> b!7474033 (= c!1380776 (is-Star!19594 lt!2626787))))

(declare-fun b!7474034 () Bool)

(assert (=> b!7474034 (= e!4458866 (= s!13591 (Cons!72186 (c!1380709 lt!2626787) Nil!72186)))))

(declare-fun b!7474035 () Bool)

(assert (=> b!7474035 (= e!4458868 (matchRSpec!4273 (regTwo!39701 lt!2626787) s!13591))))

(declare-fun bm!686208 () Bool)

(assert (=> bm!686208 (= call!686213 (Exists!4213 (ite c!1380776 lambda!463017 lambda!463018)))))

(assert (= (and d!2299291 c!1380773) b!7474032))

(assert (= (and d!2299291 (not c!1380773)) b!7474030))

(assert (= (and b!7474030 res!2998542) b!7474029))

(assert (= (and b!7474029 c!1380775) b!7474034))

(assert (= (and b!7474029 (not c!1380775)) b!7474025))

(assert (= (and b!7474025 c!1380774) b!7474028))

(assert (= (and b!7474025 (not c!1380774)) b!7474033))

(assert (= (and b!7474028 (not res!2998541)) b!7474035))

(assert (= (and b!7474033 c!1380776) b!7474026))

(assert (= (and b!7474033 (not c!1380776)) b!7474027))

(assert (= (and b!7474026 (not res!2998540)) b!7474031))

(assert (= (or b!7474031 b!7474027) bm!686208))

(assert (= (or b!7474032 b!7474026) bm!686207))

(declare-fun m!8069710 () Bool)

(assert (=> b!7474028 m!8069710))

(assert (=> bm!686207 m!8069694))

(declare-fun m!8069712 () Bool)

(assert (=> b!7474035 m!8069712))

(declare-fun m!8069714 () Bool)

(assert (=> bm!686208 m!8069714))

(assert (=> b!7473658 d!2299291))

(declare-fun bs!1931685 () Bool)

(declare-fun b!7474042 () Bool)

(assert (= bs!1931685 (and b!7474042 b!7474027)))

(declare-fun lambda!463019 () Int)

(assert (=> bs!1931685 (not (= lambda!463019 lambda!463018))))

(declare-fun bs!1931686 () Bool)

(assert (= bs!1931686 (and b!7474042 b!7473662)))

(assert (=> bs!1931686 (not (= lambda!463019 lambda!462989))))

(assert (=> bs!1931686 (not (= lambda!463019 lambda!462988))))

(declare-fun bs!1931687 () Bool)

(assert (= bs!1931687 (and b!7474042 d!2299277)))

(assert (=> bs!1931687 (not (= lambda!463019 lambda!463004))))

(assert (=> bs!1931687 (not (= lambda!463019 lambda!463005))))

(declare-fun bs!1931688 () Bool)

(assert (= bs!1931688 (and b!7474042 d!2299281)))

(assert (=> bs!1931688 (not (= lambda!463019 lambda!463010))))

(declare-fun bs!1931689 () Bool)

(assert (= bs!1931689 (and b!7474042 b!7474031)))

(assert (=> bs!1931689 (= (and (= (reg!19923 lt!2626784) (reg!19923 lt!2626787)) (= lt!2626784 lt!2626787)) (= lambda!463019 lambda!463017))))

(assert (=> b!7474042 true))

(assert (=> b!7474042 true))

(declare-fun bs!1931690 () Bool)

(declare-fun b!7474038 () Bool)

(assert (= bs!1931690 (and b!7474038 b!7474027)))

(declare-fun lambda!463020 () Int)

(assert (=> bs!1931690 (= (and (= (regOne!39700 lt!2626784) (regOne!39700 lt!2626787)) (= (regTwo!39700 lt!2626784) (regTwo!39700 lt!2626787))) (= lambda!463020 lambda!463018))))

(declare-fun bs!1931691 () Bool)

(assert (= bs!1931691 (and b!7474038 b!7474042)))

(assert (=> bs!1931691 (not (= lambda!463020 lambda!463019))))

(declare-fun bs!1931692 () Bool)

(assert (= bs!1931692 (and b!7474038 b!7473662)))

(assert (=> bs!1931692 (= (and (= (regOne!39700 lt!2626784) lt!2626782) (= (regTwo!39700 lt!2626784) rTail!78)) (= lambda!463020 lambda!462989))))

(assert (=> bs!1931692 (not (= lambda!463020 lambda!462988))))

(declare-fun bs!1931693 () Bool)

(assert (= bs!1931693 (and b!7474038 d!2299277)))

(assert (=> bs!1931693 (not (= lambda!463020 lambda!463004))))

(assert (=> bs!1931693 (= (and (= (regOne!39700 lt!2626784) lt!2626782) (= (regTwo!39700 lt!2626784) rTail!78)) (= lambda!463020 lambda!463005))))

(declare-fun bs!1931694 () Bool)

(assert (= bs!1931694 (and b!7474038 d!2299281)))

(assert (=> bs!1931694 (not (= lambda!463020 lambda!463010))))

(declare-fun bs!1931695 () Bool)

(assert (= bs!1931695 (and b!7474038 b!7474031)))

(assert (=> bs!1931695 (not (= lambda!463020 lambda!463017))))

(assert (=> b!7474038 true))

(assert (=> b!7474038 true))

(declare-fun b!7474036 () Bool)

(declare-fun c!1380778 () Bool)

(assert (=> b!7474036 (= c!1380778 (is-Union!19594 lt!2626784))))

(declare-fun e!4458873 () Bool)

(declare-fun e!4458872 () Bool)

(assert (=> b!7474036 (= e!4458873 e!4458872)))

(declare-fun b!7474037 () Bool)

(declare-fun res!2998543 () Bool)

(declare-fun e!4458869 () Bool)

(assert (=> b!7474037 (=> res!2998543 e!4458869)))

(declare-fun call!686214 () Bool)

(assert (=> b!7474037 (= res!2998543 call!686214)))

(declare-fun e!4458874 () Bool)

(assert (=> b!7474037 (= e!4458874 e!4458869)))

(declare-fun d!2299293 () Bool)

(declare-fun c!1380777 () Bool)

(assert (=> d!2299293 (= c!1380777 (is-EmptyExpr!19594 lt!2626784))))

(declare-fun e!4458870 () Bool)

(assert (=> d!2299293 (= (matchRSpec!4273 lt!2626784 s!13591) e!4458870)))

(declare-fun call!686215 () Bool)

(assert (=> b!7474038 (= e!4458874 call!686215)))

(declare-fun b!7474039 () Bool)

(declare-fun e!4458875 () Bool)

(assert (=> b!7474039 (= e!4458872 e!4458875)))

(declare-fun res!2998544 () Bool)

(assert (=> b!7474039 (= res!2998544 (matchRSpec!4273 (regOne!39701 lt!2626784) s!13591))))

(assert (=> b!7474039 (=> res!2998544 e!4458875)))

(declare-fun b!7474040 () Bool)

(declare-fun c!1380779 () Bool)

(assert (=> b!7474040 (= c!1380779 (is-ElementMatch!19594 lt!2626784))))

(declare-fun e!4458871 () Bool)

(assert (=> b!7474040 (= e!4458871 e!4458873)))

(declare-fun b!7474041 () Bool)

(assert (=> b!7474041 (= e!4458870 e!4458871)))

(declare-fun res!2998545 () Bool)

(assert (=> b!7474041 (= res!2998545 (not (is-EmptyLang!19594 lt!2626784)))))

(assert (=> b!7474041 (=> (not res!2998545) (not e!4458871))))

(declare-fun bm!686209 () Bool)

(assert (=> bm!686209 (= call!686214 (isEmpty!41180 s!13591))))

(assert (=> b!7474042 (= e!4458869 call!686215)))

(declare-fun b!7474043 () Bool)

(assert (=> b!7474043 (= e!4458870 call!686214)))

(declare-fun b!7474044 () Bool)

(assert (=> b!7474044 (= e!4458872 e!4458874)))

(declare-fun c!1380780 () Bool)

(assert (=> b!7474044 (= c!1380780 (is-Star!19594 lt!2626784))))

(declare-fun b!7474045 () Bool)

(assert (=> b!7474045 (= e!4458873 (= s!13591 (Cons!72186 (c!1380709 lt!2626784) Nil!72186)))))

(declare-fun b!7474046 () Bool)

(assert (=> b!7474046 (= e!4458875 (matchRSpec!4273 (regTwo!39701 lt!2626784) s!13591))))

(declare-fun bm!686210 () Bool)

(assert (=> bm!686210 (= call!686215 (Exists!4213 (ite c!1380780 lambda!463019 lambda!463020)))))

(assert (= (and d!2299293 c!1380777) b!7474043))

(assert (= (and d!2299293 (not c!1380777)) b!7474041))

(assert (= (and b!7474041 res!2998545) b!7474040))

(assert (= (and b!7474040 c!1380779) b!7474045))

(assert (= (and b!7474040 (not c!1380779)) b!7474036))

(assert (= (and b!7474036 c!1380778) b!7474039))

(assert (= (and b!7474036 (not c!1380778)) b!7474044))

(assert (= (and b!7474039 (not res!2998544)) b!7474046))

(assert (= (and b!7474044 c!1380780) b!7474037))

(assert (= (and b!7474044 (not c!1380780)) b!7474038))

(assert (= (and b!7474037 (not res!2998543)) b!7474042))

(assert (= (or b!7474042 b!7474038) bm!686210))

(assert (= (or b!7474043 b!7474037) bm!686209))

(declare-fun m!8069728 () Bool)

(assert (=> b!7474039 m!8069728))

(assert (=> bm!686209 m!8069694))

(declare-fun m!8069730 () Bool)

(assert (=> b!7474046 m!8069730))

(declare-fun m!8069734 () Bool)

(assert (=> bm!686210 m!8069734))

(assert (=> b!7473658 d!2299293))

(declare-fun d!2299295 () Bool)

(assert (=> d!2299295 (= (matchR!9358 lt!2626787 s!13591) (matchRSpec!4273 lt!2626787 s!13591))))

(declare-fun lt!2626843 () Unit!166023)

(assert (=> d!2299295 (= lt!2626843 (choose!57765 lt!2626787 s!13591))))

(assert (=> d!2299295 (validRegex!10108 lt!2626787)))

(assert (=> d!2299295 (= (mainMatchTheorem!4267 lt!2626787 s!13591) lt!2626843)))

(declare-fun bs!1931696 () Bool)

(assert (= bs!1931696 d!2299295))

(assert (=> bs!1931696 m!8069550))

(assert (=> bs!1931696 m!8069546))

(declare-fun m!8069736 () Bool)

(assert (=> bs!1931696 m!8069736))

(assert (=> bs!1931696 m!8069704))

(assert (=> b!7473658 d!2299295))

(declare-fun b!7474072 () Bool)

(declare-fun e!4458885 () Bool)

(declare-fun tp!2167417 () Bool)

(declare-fun tp!2167416 () Bool)

(assert (=> b!7474072 (= e!4458885 (and tp!2167417 tp!2167416))))

(declare-fun b!7474071 () Bool)

(assert (=> b!7474071 (= e!4458885 tp_is_empty!49477)))

(declare-fun b!7474073 () Bool)

(declare-fun tp!2167418 () Bool)

(assert (=> b!7474073 (= e!4458885 tp!2167418)))

(declare-fun b!7474074 () Bool)

(declare-fun tp!2167414 () Bool)

(declare-fun tp!2167415 () Bool)

(assert (=> b!7474074 (= e!4458885 (and tp!2167414 tp!2167415))))

(assert (=> b!7473671 (= tp!2167342 e!4458885)))

(assert (= (and b!7473671 (is-ElementMatch!19594 (reg!19923 rTail!78))) b!7474071))

(assert (= (and b!7473671 (is-Concat!28439 (reg!19923 rTail!78))) b!7474072))

(assert (= (and b!7473671 (is-Star!19594 (reg!19923 rTail!78))) b!7474073))

(assert (= (and b!7473671 (is-Union!19594 (reg!19923 rTail!78))) b!7474074))

(declare-fun b!7474079 () Bool)

(declare-fun e!4458888 () Bool)

(declare-fun tp!2167421 () Bool)

(assert (=> b!7474079 (= e!4458888 (and tp_is_empty!49477 tp!2167421))))

(assert (=> b!7473665 (= tp!2167345 e!4458888)))

(assert (= (and b!7473665 (is-Cons!72186 (t!386879 s!13591))) b!7474079))

(declare-fun b!7474081 () Bool)

(declare-fun e!4458889 () Bool)

(declare-fun tp!2167425 () Bool)

(declare-fun tp!2167424 () Bool)

(assert (=> b!7474081 (= e!4458889 (and tp!2167425 tp!2167424))))

(declare-fun b!7474080 () Bool)

(assert (=> b!7474080 (= e!4458889 tp_is_empty!49477)))

(declare-fun b!7474082 () Bool)

(declare-fun tp!2167426 () Bool)

(assert (=> b!7474082 (= e!4458889 tp!2167426)))

(declare-fun b!7474083 () Bool)

(declare-fun tp!2167422 () Bool)

(declare-fun tp!2167423 () Bool)

(assert (=> b!7474083 (= e!4458889 (and tp!2167422 tp!2167423))))

(assert (=> b!7473654 (= tp!2167348 e!4458889)))

(assert (= (and b!7473654 (is-ElementMatch!19594 (reg!19923 r1!5845))) b!7474080))

(assert (= (and b!7473654 (is-Concat!28439 (reg!19923 r1!5845))) b!7474081))

(assert (= (and b!7473654 (is-Star!19594 (reg!19923 r1!5845))) b!7474082))

(assert (= (and b!7473654 (is-Union!19594 (reg!19923 r1!5845))) b!7474083))

(declare-fun b!7474085 () Bool)

(declare-fun e!4458890 () Bool)

(declare-fun tp!2167430 () Bool)

(declare-fun tp!2167429 () Bool)

(assert (=> b!7474085 (= e!4458890 (and tp!2167430 tp!2167429))))

(declare-fun b!7474084 () Bool)

(assert (=> b!7474084 (= e!4458890 tp_is_empty!49477)))

(declare-fun b!7474086 () Bool)

(declare-fun tp!2167431 () Bool)

(assert (=> b!7474086 (= e!4458890 tp!2167431)))

(declare-fun b!7474087 () Bool)

(declare-fun tp!2167427 () Bool)

(declare-fun tp!2167428 () Bool)

(assert (=> b!7474087 (= e!4458890 (and tp!2167427 tp!2167428))))

(assert (=> b!7473670 (= tp!2167347 e!4458890)))

(assert (= (and b!7473670 (is-ElementMatch!19594 (regOne!39700 r2!5783))) b!7474084))

(assert (= (and b!7473670 (is-Concat!28439 (regOne!39700 r2!5783))) b!7474085))

(assert (= (and b!7473670 (is-Star!19594 (regOne!39700 r2!5783))) b!7474086))

(assert (= (and b!7473670 (is-Union!19594 (regOne!39700 r2!5783))) b!7474087))

(declare-fun b!7474089 () Bool)

(declare-fun e!4458891 () Bool)

(declare-fun tp!2167435 () Bool)

(declare-fun tp!2167434 () Bool)

(assert (=> b!7474089 (= e!4458891 (and tp!2167435 tp!2167434))))

(declare-fun b!7474088 () Bool)

(assert (=> b!7474088 (= e!4458891 tp_is_empty!49477)))

(declare-fun b!7474090 () Bool)

(declare-fun tp!2167436 () Bool)

(assert (=> b!7474090 (= e!4458891 tp!2167436)))

(declare-fun b!7474091 () Bool)

(declare-fun tp!2167432 () Bool)

(declare-fun tp!2167433 () Bool)

(assert (=> b!7474091 (= e!4458891 (and tp!2167432 tp!2167433))))

(assert (=> b!7473670 (= tp!2167344 e!4458891)))

(assert (= (and b!7473670 (is-ElementMatch!19594 (regTwo!39700 r2!5783))) b!7474088))

(assert (= (and b!7473670 (is-Concat!28439 (regTwo!39700 r2!5783))) b!7474089))

(assert (= (and b!7473670 (is-Star!19594 (regTwo!39700 r2!5783))) b!7474090))

(assert (= (and b!7473670 (is-Union!19594 (regTwo!39700 r2!5783))) b!7474091))

(declare-fun b!7474093 () Bool)

(declare-fun e!4458892 () Bool)

(declare-fun tp!2167440 () Bool)

(declare-fun tp!2167439 () Bool)

(assert (=> b!7474093 (= e!4458892 (and tp!2167440 tp!2167439))))

(declare-fun b!7474092 () Bool)

(assert (=> b!7474092 (= e!4458892 tp_is_empty!49477)))

(declare-fun b!7474094 () Bool)

(declare-fun tp!2167441 () Bool)

(assert (=> b!7474094 (= e!4458892 tp!2167441)))

(declare-fun b!7474095 () Bool)

(declare-fun tp!2167437 () Bool)

(declare-fun tp!2167438 () Bool)

(assert (=> b!7474095 (= e!4458892 (and tp!2167437 tp!2167438))))

(assert (=> b!7473667 (= tp!2167343 e!4458892)))

(assert (= (and b!7473667 (is-ElementMatch!19594 (regOne!39700 rTail!78))) b!7474092))

(assert (= (and b!7473667 (is-Concat!28439 (regOne!39700 rTail!78))) b!7474093))

(assert (= (and b!7473667 (is-Star!19594 (regOne!39700 rTail!78))) b!7474094))

(assert (= (and b!7473667 (is-Union!19594 (regOne!39700 rTail!78))) b!7474095))

(declare-fun b!7474097 () Bool)

(declare-fun e!4458893 () Bool)

(declare-fun tp!2167445 () Bool)

(declare-fun tp!2167444 () Bool)

(assert (=> b!7474097 (= e!4458893 (and tp!2167445 tp!2167444))))

(declare-fun b!7474096 () Bool)

(assert (=> b!7474096 (= e!4458893 tp_is_empty!49477)))

(declare-fun b!7474098 () Bool)

(declare-fun tp!2167446 () Bool)

(assert (=> b!7474098 (= e!4458893 tp!2167446)))

(declare-fun b!7474099 () Bool)

(declare-fun tp!2167442 () Bool)

(declare-fun tp!2167443 () Bool)

(assert (=> b!7474099 (= e!4458893 (and tp!2167442 tp!2167443))))

(assert (=> b!7473667 (= tp!2167354 e!4458893)))

(assert (= (and b!7473667 (is-ElementMatch!19594 (regTwo!39700 rTail!78))) b!7474096))

(assert (= (and b!7473667 (is-Concat!28439 (regTwo!39700 rTail!78))) b!7474097))

(assert (= (and b!7473667 (is-Star!19594 (regTwo!39700 rTail!78))) b!7474098))

(assert (= (and b!7473667 (is-Union!19594 (regTwo!39700 rTail!78))) b!7474099))

(declare-fun b!7474101 () Bool)

(declare-fun e!4458894 () Bool)

(declare-fun tp!2167450 () Bool)

(declare-fun tp!2167449 () Bool)

(assert (=> b!7474101 (= e!4458894 (and tp!2167450 tp!2167449))))

(declare-fun b!7474100 () Bool)

(assert (=> b!7474100 (= e!4458894 tp_is_empty!49477)))

(declare-fun b!7474102 () Bool)

(declare-fun tp!2167451 () Bool)

(assert (=> b!7474102 (= e!4458894 tp!2167451)))

(declare-fun b!7474103 () Bool)

(declare-fun tp!2167447 () Bool)

(declare-fun tp!2167448 () Bool)

(assert (=> b!7474103 (= e!4458894 (and tp!2167447 tp!2167448))))

(assert (=> b!7473656 (= tp!2167353 e!4458894)))

(assert (= (and b!7473656 (is-ElementMatch!19594 (reg!19923 r2!5783))) b!7474100))

(assert (= (and b!7473656 (is-Concat!28439 (reg!19923 r2!5783))) b!7474101))

(assert (= (and b!7473656 (is-Star!19594 (reg!19923 r2!5783))) b!7474102))

(assert (= (and b!7473656 (is-Union!19594 (reg!19923 r2!5783))) b!7474103))

(declare-fun b!7474105 () Bool)

(declare-fun e!4458895 () Bool)

(declare-fun tp!2167455 () Bool)

(declare-fun tp!2167454 () Bool)

(assert (=> b!7474105 (= e!4458895 (and tp!2167455 tp!2167454))))

(declare-fun b!7474104 () Bool)

(assert (=> b!7474104 (= e!4458895 tp_is_empty!49477)))

(declare-fun b!7474106 () Bool)

(declare-fun tp!2167456 () Bool)

(assert (=> b!7474106 (= e!4458895 tp!2167456)))

(declare-fun b!7474107 () Bool)

(declare-fun tp!2167452 () Bool)

(declare-fun tp!2167453 () Bool)

(assert (=> b!7474107 (= e!4458895 (and tp!2167452 tp!2167453))))

(assert (=> b!7473668 (= tp!2167349 e!4458895)))

(assert (= (and b!7473668 (is-ElementMatch!19594 (regOne!39701 r1!5845))) b!7474104))

(assert (= (and b!7473668 (is-Concat!28439 (regOne!39701 r1!5845))) b!7474105))

(assert (= (and b!7473668 (is-Star!19594 (regOne!39701 r1!5845))) b!7474106))

(assert (= (and b!7473668 (is-Union!19594 (regOne!39701 r1!5845))) b!7474107))

(declare-fun b!7474109 () Bool)

(declare-fun e!4458896 () Bool)

(declare-fun tp!2167460 () Bool)

(declare-fun tp!2167459 () Bool)

(assert (=> b!7474109 (= e!4458896 (and tp!2167460 tp!2167459))))

(declare-fun b!7474108 () Bool)

(assert (=> b!7474108 (= e!4458896 tp_is_empty!49477)))

(declare-fun b!7474110 () Bool)

(declare-fun tp!2167461 () Bool)

(assert (=> b!7474110 (= e!4458896 tp!2167461)))

(declare-fun b!7474111 () Bool)

(declare-fun tp!2167457 () Bool)

(declare-fun tp!2167458 () Bool)

(assert (=> b!7474111 (= e!4458896 (and tp!2167457 tp!2167458))))

(assert (=> b!7473668 (= tp!2167352 e!4458896)))

(assert (= (and b!7473668 (is-ElementMatch!19594 (regTwo!39701 r1!5845))) b!7474108))

(assert (= (and b!7473668 (is-Concat!28439 (regTwo!39701 r1!5845))) b!7474109))

(assert (= (and b!7473668 (is-Star!19594 (regTwo!39701 r1!5845))) b!7474110))

(assert (= (and b!7473668 (is-Union!19594 (regTwo!39701 r1!5845))) b!7474111))

(declare-fun b!7474113 () Bool)

(declare-fun e!4458897 () Bool)

(declare-fun tp!2167465 () Bool)

(declare-fun tp!2167464 () Bool)

(assert (=> b!7474113 (= e!4458897 (and tp!2167465 tp!2167464))))

(declare-fun b!7474112 () Bool)

(assert (=> b!7474112 (= e!4458897 tp_is_empty!49477)))

(declare-fun b!7474114 () Bool)

(declare-fun tp!2167466 () Bool)

(assert (=> b!7474114 (= e!4458897 tp!2167466)))

(declare-fun b!7474115 () Bool)

(declare-fun tp!2167462 () Bool)

(declare-fun tp!2167463 () Bool)

(assert (=> b!7474115 (= e!4458897 (and tp!2167462 tp!2167463))))

(assert (=> b!7473659 (= tp!2167340 e!4458897)))

(assert (= (and b!7473659 (is-ElementMatch!19594 (regOne!39701 rTail!78))) b!7474112))

(assert (= (and b!7473659 (is-Concat!28439 (regOne!39701 rTail!78))) b!7474113))

(assert (= (and b!7473659 (is-Star!19594 (regOne!39701 rTail!78))) b!7474114))

(assert (= (and b!7473659 (is-Union!19594 (regOne!39701 rTail!78))) b!7474115))

(declare-fun b!7474117 () Bool)

(declare-fun e!4458898 () Bool)

(declare-fun tp!2167470 () Bool)

(declare-fun tp!2167469 () Bool)

(assert (=> b!7474117 (= e!4458898 (and tp!2167470 tp!2167469))))

(declare-fun b!7474116 () Bool)

(assert (=> b!7474116 (= e!4458898 tp_is_empty!49477)))

(declare-fun b!7474118 () Bool)

(declare-fun tp!2167471 () Bool)

(assert (=> b!7474118 (= e!4458898 tp!2167471)))

(declare-fun b!7474119 () Bool)

(declare-fun tp!2167467 () Bool)

(declare-fun tp!2167468 () Bool)

(assert (=> b!7474119 (= e!4458898 (and tp!2167467 tp!2167468))))

(assert (=> b!7473659 (= tp!2167350 e!4458898)))

(assert (= (and b!7473659 (is-ElementMatch!19594 (regTwo!39701 rTail!78))) b!7474116))

(assert (= (and b!7473659 (is-Concat!28439 (regTwo!39701 rTail!78))) b!7474117))

(assert (= (and b!7473659 (is-Star!19594 (regTwo!39701 rTail!78))) b!7474118))

(assert (= (and b!7473659 (is-Union!19594 (regTwo!39701 rTail!78))) b!7474119))

(declare-fun b!7474121 () Bool)

(declare-fun e!4458899 () Bool)

(declare-fun tp!2167475 () Bool)

(declare-fun tp!2167474 () Bool)

(assert (=> b!7474121 (= e!4458899 (and tp!2167475 tp!2167474))))

(declare-fun b!7474120 () Bool)

(assert (=> b!7474120 (= e!4458899 tp_is_empty!49477)))

(declare-fun b!7474122 () Bool)

(declare-fun tp!2167476 () Bool)

(assert (=> b!7474122 (= e!4458899 tp!2167476)))

(declare-fun b!7474123 () Bool)

(declare-fun tp!2167472 () Bool)

(declare-fun tp!2167473 () Bool)

(assert (=> b!7474123 (= e!4458899 (and tp!2167472 tp!2167473))))

(assert (=> b!7473664 (= tp!2167346 e!4458899)))

(assert (= (and b!7473664 (is-ElementMatch!19594 (regOne!39700 r1!5845))) b!7474120))

(assert (= (and b!7473664 (is-Concat!28439 (regOne!39700 r1!5845))) b!7474121))

(assert (= (and b!7473664 (is-Star!19594 (regOne!39700 r1!5845))) b!7474122))

(assert (= (and b!7473664 (is-Union!19594 (regOne!39700 r1!5845))) b!7474123))

(declare-fun b!7474125 () Bool)

(declare-fun e!4458900 () Bool)

(declare-fun tp!2167480 () Bool)

(declare-fun tp!2167479 () Bool)

(assert (=> b!7474125 (= e!4458900 (and tp!2167480 tp!2167479))))

(declare-fun b!7474124 () Bool)

(assert (=> b!7474124 (= e!4458900 tp_is_empty!49477)))

(declare-fun b!7474126 () Bool)

(declare-fun tp!2167481 () Bool)

(assert (=> b!7474126 (= e!4458900 tp!2167481)))

(declare-fun b!7474127 () Bool)

(declare-fun tp!2167477 () Bool)

(declare-fun tp!2167478 () Bool)

(assert (=> b!7474127 (= e!4458900 (and tp!2167477 tp!2167478))))

(assert (=> b!7473664 (= tp!2167355 e!4458900)))

(assert (= (and b!7473664 (is-ElementMatch!19594 (regTwo!39700 r1!5845))) b!7474124))

(assert (= (and b!7473664 (is-Concat!28439 (regTwo!39700 r1!5845))) b!7474125))

(assert (= (and b!7473664 (is-Star!19594 (regTwo!39700 r1!5845))) b!7474126))

(assert (= (and b!7473664 (is-Union!19594 (regTwo!39700 r1!5845))) b!7474127))

(declare-fun b!7474129 () Bool)

(declare-fun e!4458901 () Bool)

(declare-fun tp!2167485 () Bool)

(declare-fun tp!2167484 () Bool)

(assert (=> b!7474129 (= e!4458901 (and tp!2167485 tp!2167484))))

(declare-fun b!7474128 () Bool)

(assert (=> b!7474128 (= e!4458901 tp_is_empty!49477)))

(declare-fun b!7474130 () Bool)

(declare-fun tp!2167486 () Bool)

(assert (=> b!7474130 (= e!4458901 tp!2167486)))

(declare-fun b!7474131 () Bool)

(declare-fun tp!2167482 () Bool)

(declare-fun tp!2167483 () Bool)

(assert (=> b!7474131 (= e!4458901 (and tp!2167482 tp!2167483))))

(assert (=> b!7473669 (= tp!2167341 e!4458901)))

(assert (= (and b!7473669 (is-ElementMatch!19594 (regOne!39701 r2!5783))) b!7474128))

(assert (= (and b!7473669 (is-Concat!28439 (regOne!39701 r2!5783))) b!7474129))

(assert (= (and b!7473669 (is-Star!19594 (regOne!39701 r2!5783))) b!7474130))

(assert (= (and b!7473669 (is-Union!19594 (regOne!39701 r2!5783))) b!7474131))

(declare-fun b!7474133 () Bool)

(declare-fun e!4458902 () Bool)

(declare-fun tp!2167490 () Bool)

(declare-fun tp!2167489 () Bool)

(assert (=> b!7474133 (= e!4458902 (and tp!2167490 tp!2167489))))

(declare-fun b!7474132 () Bool)

(assert (=> b!7474132 (= e!4458902 tp_is_empty!49477)))

(declare-fun b!7474134 () Bool)

(declare-fun tp!2167491 () Bool)

(assert (=> b!7474134 (= e!4458902 tp!2167491)))

(declare-fun b!7474135 () Bool)

(declare-fun tp!2167487 () Bool)

(declare-fun tp!2167488 () Bool)

(assert (=> b!7474135 (= e!4458902 (and tp!2167487 tp!2167488))))

(assert (=> b!7473669 (= tp!2167351 e!4458902)))

(assert (= (and b!7473669 (is-ElementMatch!19594 (regTwo!39701 r2!5783))) b!7474132))

(assert (= (and b!7473669 (is-Concat!28439 (regTwo!39701 r2!5783))) b!7474133))

(assert (= (and b!7473669 (is-Star!19594 (regTwo!39701 r2!5783))) b!7474134))

(assert (= (and b!7473669 (is-Union!19594 (regTwo!39701 r2!5783))) b!7474135))

(push 1)

(assert (not b!7474090))

(assert (not b!7474114))

(assert (not bm!686199))

(assert (not d!2299283))

(assert (not b!7473949))

(assert (not b!7474091))

(assert (not b!7473959))

(assert (not b!7473850))

(assert (not bm!686180))

(assert (not bm!686170))

(assert (not b!7474130))

(assert (not b!7474107))

(assert (not b!7473853))

(assert (not b!7474082))

(assert (not b!7474103))

(assert tp_is_empty!49477)

(assert (not bm!686209))

(assert (not b!7473845))

(assert (not b!7473963))

(assert (not b!7473952))

(assert (not b!7474073))

(assert (not b!7473846))

(assert (not b!7474102))

(assert (not d!2299295))

(assert (not b!7474028))

(assert (not b!7473849))

(assert (not b!7474133))

(assert (not b!7474131))

(assert (not b!7473942))

(assert (not bm!686177))

(assert (not b!7474105))

(assert (not b!7474113))

(assert (not b!7473955))

(assert (not b!7473945))

(assert (not d!2299277))

(assert (not b!7474117))

(assert (not b!7474099))

(assert (not b!7474035))

(assert (not b!7473956))

(assert (not b!7474106))

(assert (not b!7474123))

(assert (not bm!686173))

(assert (not b!7474115))

(assert (not b!7474135))

(assert (not b!7474118))

(assert (not b!7474125))

(assert (not b!7474109))

(assert (not bm!686207))

(assert (not b!7473938))

(assert (not d!2299273))

(assert (not bm!686174))

(assert (not b!7474087))

(assert (not b!7474134))

(assert (not b!7473777))

(assert (not b!7474086))

(assert (not b!7474127))

(assert (not b!7474093))

(assert (not d!2299275))

(assert (not b!7474094))

(assert (not bm!686200))

(assert (not b!7473796))

(assert (not b!7474111))

(assert (not bm!686179))

(assert (not b!7473940))

(assert (not bm!686176))

(assert (not b!7473809))

(assert (not d!2299279))

(assert (not b!7474098))

(assert (not b!7474081))

(assert (not b!7474129))

(assert (not bm!686210))

(assert (not b!7474079))

(assert (not b!7474083))

(assert (not d!2299289))

(assert (not b!7474122))

(assert (not bm!686208))

(assert (not b!7474072))

(assert (not b!7473764))

(assert (not b!7474046))

(assert (not b!7473954))

(assert (not b!7473847))

(assert (not b!7474089))

(assert (not b!7473941))

(assert (not d!2299285))

(assert (not b!7474121))

(assert (not d!2299281))

(assert (not b!7474126))

(assert (not b!7474119))

(assert (not b!7474097))

(assert (not b!7474039))

(assert (not b!7474074))

(assert (not bm!686171))

(assert (not b!7474110))

(assert (not d!2299269))

(assert (not b!7474085))

(assert (not b!7474095))

(assert (not b!7474101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

