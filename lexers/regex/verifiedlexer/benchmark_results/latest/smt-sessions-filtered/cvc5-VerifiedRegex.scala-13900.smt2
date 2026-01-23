; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738766 () Bool)

(assert start!738766)

(declare-fun b!7748486 () Bool)

(assert (=> b!7748486 true))

(assert (=> b!7748486 true))

(declare-fun bs!1965703 () Bool)

(declare-fun b!7748490 () Bool)

(assert (= bs!1965703 (and b!7748490 b!7748486)))

(declare-fun lambda!471847 () Int)

(declare-fun lambda!471846 () Int)

(assert (=> bs!1965703 (not (= lambda!471847 lambda!471846))))

(assert (=> b!7748490 true))

(assert (=> b!7748490 true))

(declare-fun b!7748484 () Bool)

(declare-datatypes ((Unit!168300 0))(
  ( (Unit!168301) )
))
(declare-fun e!4593677 () Unit!168300)

(declare-fun Unit!168302 () Unit!168300)

(assert (=> b!7748484 (= e!4593677 Unit!168302)))

(declare-fun b!7748485 () Bool)

(declare-fun res!3089595 () Bool)

(declare-fun e!4593674 () Bool)

(assert (=> b!7748485 (=> res!3089595 e!4593674)))

(declare-datatypes ((C!41514 0))(
  ( (C!41515 (val!31197 Int)) )
))
(declare-datatypes ((List!73441 0))(
  ( (Nil!73317) (Cons!73317 (h!79765 C!41514) (t!388176 List!73441)) )
))
(declare-datatypes ((tuple2!69642 0))(
  ( (tuple2!69643 (_1!38124 List!73441) (_2!38124 List!73441)) )
))
(declare-fun lt!2669063 () tuple2!69642)

(declare-fun s!9605 () List!73441)

(declare-fun ++!17793 (List!73441 List!73441) List!73441)

(assert (=> b!7748485 (= res!3089595 (not (= (++!17793 (_1!38124 lt!2669063) (_2!38124 lt!2669063)) s!9605)))))

(declare-fun e!4593675 () Bool)

(declare-fun e!4593676 () Bool)

(assert (=> b!7748486 (= e!4593675 (not e!4593676))))

(declare-fun res!3089592 () Bool)

(assert (=> b!7748486 (=> res!3089592 e!4593676)))

(declare-datatypes ((Regex!20594 0))(
  ( (ElementMatch!20594 (c!1429156 C!41514)) (Concat!29439 (regOne!41700 Regex!20594) (regTwo!41700 Regex!20594)) (EmptyExpr!20594) (Star!20594 (reg!20923 Regex!20594)) (EmptyLang!20594) (Union!20594 (regOne!41701 Regex!20594) (regTwo!41701 Regex!20594)) )
))
(declare-fun r!14126 () Regex!20594)

(declare-fun matchR!10086 (Regex!20594 List!73441) Bool)

(assert (=> b!7748486 (= res!3089592 (matchR!10086 r!14126 s!9605))))

(declare-fun lt!2669064 () Bool)

(declare-fun Exists!4715 (Int) Bool)

(assert (=> b!7748486 (= lt!2669064 (Exists!4715 lambda!471846))))

(declare-datatypes ((Option!17615 0))(
  ( (None!17614) (Some!17614 (v!54749 tuple2!69642)) )
))
(declare-fun lt!2669062 () Option!17615)

(declare-fun isDefined!14231 (Option!17615) Bool)

(assert (=> b!7748486 (= lt!2669064 (isDefined!14231 lt!2669062))))

(declare-fun findConcatSeparation!3645 (Regex!20594 Regex!20594 List!73441 List!73441 List!73441) Option!17615)

(assert (=> b!7748486 (= lt!2669062 (findConcatSeparation!3645 (regOne!41700 r!14126) (regTwo!41700 r!14126) Nil!73317 s!9605 s!9605))))

(declare-fun lt!2669065 () Unit!168300)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3403 (Regex!20594 Regex!20594 List!73441) Unit!168300)

(assert (=> b!7748486 (= lt!2669065 (lemmaFindConcatSeparationEquivalentToExists!3403 (regOne!41700 r!14126) (regTwo!41700 r!14126) s!9605))))

(declare-fun b!7748487 () Bool)

(declare-fun e!4593680 () Bool)

(declare-fun tp_is_empty!51543 () Bool)

(declare-fun tp!2273317 () Bool)

(assert (=> b!7748487 (= e!4593680 (and tp_is_empty!51543 tp!2273317))))

(declare-fun b!7748488 () Bool)

(declare-fun res!3089599 () Bool)

(assert (=> b!7748488 (=> (not res!3089599) (not e!4593675))))

(assert (=> b!7748488 (= res!3089599 (and (not (is-EmptyExpr!20594 r!14126)) (not (is-EmptyLang!20594 r!14126)) (not (is-ElementMatch!20594 r!14126)) (not (is-Union!20594 r!14126)) (not (is-Star!20594 r!14126))))))

(declare-fun b!7748489 () Bool)

(declare-fun lt!2669061 () Bool)

(declare-fun lt!2669060 () Bool)

(assert (=> b!7748489 (= e!4593674 (or (not lt!2669061) lt!2669060))))

(declare-fun res!3089596 () Bool)

(declare-fun e!4593678 () Bool)

(assert (=> b!7748490 (=> res!3089596 e!4593678)))

(assert (=> b!7748490 (= res!3089596 (not (Exists!4715 lambda!471847)))))

(declare-fun b!7748491 () Bool)

(declare-fun Unit!168303 () Unit!168300)

(assert (=> b!7748491 (= e!4593677 Unit!168303)))

(declare-fun lt!2669058 () tuple2!69642)

(declare-fun get!26082 (Option!17615) tuple2!69642)

(assert (=> b!7748491 (= lt!2669058 (get!26082 lt!2669062))))

(declare-fun lt!2669057 () Unit!168300)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!219 (Regex!20594 Regex!20594 List!73441 List!73441 List!73441) Unit!168300)

(assert (=> b!7748491 (= lt!2669057 (lemmaFindSeparationIsDefinedThenConcatMatches!219 (regOne!41700 r!14126) (regTwo!41700 r!14126) (_1!38124 lt!2669058) (_2!38124 lt!2669058) s!9605))))

(declare-fun res!3089591 () Bool)

(assert (=> b!7748491 (= res!3089591 (matchR!10086 r!14126 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058))))))

(declare-fun e!4593681 () Bool)

(assert (=> b!7748491 (=> (not res!3089591) (not e!4593681))))

(assert (=> b!7748491 e!4593681))

(declare-fun res!3089600 () Bool)

(assert (=> start!738766 (=> (not res!3089600) (not e!4593675))))

(declare-fun validRegex!11012 (Regex!20594) Bool)

(assert (=> start!738766 (= res!3089600 (validRegex!11012 r!14126))))

(assert (=> start!738766 e!4593675))

(declare-fun e!4593679 () Bool)

(assert (=> start!738766 e!4593679))

(assert (=> start!738766 e!4593680))

(declare-fun b!7748492 () Bool)

(declare-fun tp!2273314 () Bool)

(declare-fun tp!2273316 () Bool)

(assert (=> b!7748492 (= e!4593679 (and tp!2273314 tp!2273316))))

(declare-fun b!7748493 () Bool)

(declare-fun res!3089601 () Bool)

(assert (=> b!7748493 (=> res!3089601 e!4593674)))

(assert (=> b!7748493 (= res!3089601 (not (validRegex!11012 (regTwo!41700 r!14126))))))

(declare-fun b!7748494 () Bool)

(assert (=> b!7748494 (= e!4593681 false)))

(declare-fun b!7748495 () Bool)

(assert (=> b!7748495 (= e!4593678 e!4593674)))

(declare-fun res!3089593 () Bool)

(assert (=> b!7748495 (=> res!3089593 e!4593674)))

(assert (=> b!7748495 (= res!3089593 (not (validRegex!11012 (regOne!41700 r!14126))))))

(declare-fun matchRSpec!4659 (Regex!20594 List!73441) Bool)

(assert (=> b!7748495 (= lt!2669060 (matchRSpec!4659 (regTwo!41700 r!14126) (_2!38124 lt!2669063)))))

(assert (=> b!7748495 (= lt!2669060 (matchR!10086 (regTwo!41700 r!14126) (_2!38124 lt!2669063)))))

(declare-fun lt!2669059 () Unit!168300)

(declare-fun mainMatchTheorem!4629 (Regex!20594 List!73441) Unit!168300)

(assert (=> b!7748495 (= lt!2669059 (mainMatchTheorem!4629 (regTwo!41700 r!14126) (_2!38124 lt!2669063)))))

(assert (=> b!7748495 (= lt!2669061 (matchRSpec!4659 (regOne!41700 r!14126) (_1!38124 lt!2669063)))))

(assert (=> b!7748495 (= lt!2669061 (matchR!10086 (regOne!41700 r!14126) (_1!38124 lt!2669063)))))

(declare-fun lt!2669066 () Unit!168300)

(assert (=> b!7748495 (= lt!2669066 (mainMatchTheorem!4629 (regOne!41700 r!14126) (_1!38124 lt!2669063)))))

(declare-fun pickWitness!551 (Int) tuple2!69642)

(assert (=> b!7748495 (= lt!2669063 (pickWitness!551 lambda!471847))))

(declare-fun b!7748496 () Bool)

(assert (=> b!7748496 (= e!4593679 tp_is_empty!51543)))

(declare-fun b!7748497 () Bool)

(declare-fun res!3089598 () Bool)

(assert (=> b!7748497 (=> res!3089598 e!4593674)))

(declare-fun isPrefix!6238 (List!73441 List!73441) Bool)

(assert (=> b!7748497 (= res!3089598 (not (isPrefix!6238 Nil!73317 (_1!38124 lt!2669063))))))

(declare-fun b!7748498 () Bool)

(assert (=> b!7748498 (= e!4593676 e!4593678)))

(declare-fun res!3089594 () Bool)

(assert (=> b!7748498 (=> res!3089594 e!4593678)))

(assert (=> b!7748498 (= res!3089594 (Exists!4715 lambda!471846))))

(declare-fun lt!2669067 () Unit!168300)

(assert (=> b!7748498 (= lt!2669067 e!4593677)))

(declare-fun c!1429155 () Bool)

(assert (=> b!7748498 (= c!1429155 lt!2669064)))

(declare-fun b!7748499 () Bool)

(declare-fun tp!2273318 () Bool)

(assert (=> b!7748499 (= e!4593679 tp!2273318)))

(declare-fun b!7748500 () Bool)

(declare-fun tp!2273315 () Bool)

(declare-fun tp!2273319 () Bool)

(assert (=> b!7748500 (= e!4593679 (and tp!2273315 tp!2273319))))

(declare-fun b!7748501 () Bool)

(declare-fun res!3089597 () Bool)

(assert (=> b!7748501 (=> res!3089597 e!4593674)))

(assert (=> b!7748501 (= res!3089597 (not (= (++!17793 Nil!73317 s!9605) s!9605)))))

(assert (= (and start!738766 res!3089600) b!7748488))

(assert (= (and b!7748488 res!3089599) b!7748486))

(assert (= (and b!7748486 (not res!3089592)) b!7748498))

(assert (= (and b!7748498 c!1429155) b!7748491))

(assert (= (and b!7748498 (not c!1429155)) b!7748484))

(assert (= (and b!7748491 res!3089591) b!7748494))

(assert (= (and b!7748498 (not res!3089594)) b!7748490))

(assert (= (and b!7748490 (not res!3089596)) b!7748495))

(assert (= (and b!7748495 (not res!3089593)) b!7748493))

(assert (= (and b!7748493 (not res!3089601)) b!7748485))

(assert (= (and b!7748485 (not res!3089595)) b!7748497))

(assert (= (and b!7748497 (not res!3089598)) b!7748501))

(assert (= (and b!7748501 (not res!3089597)) b!7748489))

(assert (= (and start!738766 (is-ElementMatch!20594 r!14126)) b!7748496))

(assert (= (and start!738766 (is-Concat!29439 r!14126)) b!7748500))

(assert (= (and start!738766 (is-Star!20594 r!14126)) b!7748499))

(assert (= (and start!738766 (is-Union!20594 r!14126)) b!7748492))

(assert (= (and start!738766 (is-Cons!73317 s!9605)) b!7748487))

(declare-fun m!8215522 () Bool)

(assert (=> b!7748491 m!8215522))

(declare-fun m!8215524 () Bool)

(assert (=> b!7748491 m!8215524))

(declare-fun m!8215526 () Bool)

(assert (=> b!7748491 m!8215526))

(assert (=> b!7748491 m!8215526))

(declare-fun m!8215528 () Bool)

(assert (=> b!7748491 m!8215528))

(declare-fun m!8215530 () Bool)

(assert (=> b!7748486 m!8215530))

(declare-fun m!8215532 () Bool)

(assert (=> b!7748486 m!8215532))

(declare-fun m!8215534 () Bool)

(assert (=> b!7748486 m!8215534))

(declare-fun m!8215536 () Bool)

(assert (=> b!7748486 m!8215536))

(declare-fun m!8215538 () Bool)

(assert (=> b!7748486 m!8215538))

(declare-fun m!8215540 () Bool)

(assert (=> b!7748490 m!8215540))

(declare-fun m!8215542 () Bool)

(assert (=> b!7748495 m!8215542))

(declare-fun m!8215544 () Bool)

(assert (=> b!7748495 m!8215544))

(declare-fun m!8215546 () Bool)

(assert (=> b!7748495 m!8215546))

(declare-fun m!8215548 () Bool)

(assert (=> b!7748495 m!8215548))

(declare-fun m!8215550 () Bool)

(assert (=> b!7748495 m!8215550))

(declare-fun m!8215552 () Bool)

(assert (=> b!7748495 m!8215552))

(declare-fun m!8215554 () Bool)

(assert (=> b!7748495 m!8215554))

(declare-fun m!8215556 () Bool)

(assert (=> b!7748495 m!8215556))

(declare-fun m!8215558 () Bool)

(assert (=> b!7748485 m!8215558))

(assert (=> b!7748498 m!8215538))

(declare-fun m!8215560 () Bool)

(assert (=> start!738766 m!8215560))

(declare-fun m!8215562 () Bool)

(assert (=> b!7748493 m!8215562))

(declare-fun m!8215564 () Bool)

(assert (=> b!7748497 m!8215564))

(declare-fun m!8215566 () Bool)

(assert (=> b!7748501 m!8215566))

(push 1)

(assert (not b!7748485))

(assert (not b!7748500))

(assert (not b!7748495))

(assert (not b!7748487))

(assert (not b!7748497))

(assert tp_is_empty!51543)

(assert (not b!7748493))

(assert (not b!7748498))

(assert (not b!7748491))

(assert (not b!7748501))

(assert (not b!7748490))

(assert (not b!7748492))

(assert (not b!7748486))

(assert (not b!7748499))

(assert (not start!738766))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7748598 () Bool)

(declare-fun e!4593730 () Bool)

(declare-fun call!718120 () Bool)

(assert (=> b!7748598 (= e!4593730 call!718120)))

(declare-fun b!7748599 () Bool)

(declare-fun e!4593732 () Bool)

(declare-fun e!4593731 () Bool)

(assert (=> b!7748599 (= e!4593732 e!4593731)))

(declare-fun c!1429166 () Bool)

(assert (=> b!7748599 (= c!1429166 (is-Union!20594 (regTwo!41700 r!14126)))))

(declare-fun b!7748600 () Bool)

(declare-fun res!3089664 () Bool)

(declare-fun e!4593728 () Bool)

(assert (=> b!7748600 (=> (not res!3089664) (not e!4593728))))

(declare-fun call!718121 () Bool)

(assert (=> b!7748600 (= res!3089664 call!718121)))

(assert (=> b!7748600 (= e!4593731 e!4593728)))

(declare-fun b!7748601 () Bool)

(declare-fun res!3089661 () Bool)

(declare-fun e!4593733 () Bool)

(assert (=> b!7748601 (=> res!3089661 e!4593733)))

(assert (=> b!7748601 (= res!3089661 (not (is-Concat!29439 (regTwo!41700 r!14126))))))

(assert (=> b!7748601 (= e!4593731 e!4593733)))

(declare-fun b!7748602 () Bool)

(assert (=> b!7748602 (= e!4593732 e!4593730)))

(declare-fun res!3089663 () Bool)

(declare-fun nullable!9067 (Regex!20594) Bool)

(assert (=> b!7748602 (= res!3089663 (not (nullable!9067 (reg!20923 (regTwo!41700 r!14126)))))))

(assert (=> b!7748602 (=> (not res!3089663) (not e!4593730))))

(declare-fun d!2342489 () Bool)

(declare-fun res!3089665 () Bool)

(declare-fun e!4593729 () Bool)

(assert (=> d!2342489 (=> res!3089665 e!4593729)))

(assert (=> d!2342489 (= res!3089665 (is-ElementMatch!20594 (regTwo!41700 r!14126)))))

(assert (=> d!2342489 (= (validRegex!11012 (regTwo!41700 r!14126)) e!4593729)))

(declare-fun b!7748603 () Bool)

(declare-fun e!4593734 () Bool)

(declare-fun call!718119 () Bool)

(assert (=> b!7748603 (= e!4593734 call!718119)))

(declare-fun b!7748604 () Bool)

(assert (=> b!7748604 (= e!4593729 e!4593732)))

(declare-fun c!1429165 () Bool)

(assert (=> b!7748604 (= c!1429165 (is-Star!20594 (regTwo!41700 r!14126)))))

(declare-fun b!7748605 () Bool)

(assert (=> b!7748605 (= e!4593733 e!4593734)))

(declare-fun res!3089662 () Bool)

(assert (=> b!7748605 (=> (not res!3089662) (not e!4593734))))

(assert (=> b!7748605 (= res!3089662 call!718121)))

(declare-fun bm!718114 () Bool)

(assert (=> bm!718114 (= call!718121 (validRegex!11012 (ite c!1429166 (regOne!41701 (regTwo!41700 r!14126)) (regOne!41700 (regTwo!41700 r!14126)))))))

(declare-fun bm!718115 () Bool)

(assert (=> bm!718115 (= call!718120 (validRegex!11012 (ite c!1429165 (reg!20923 (regTwo!41700 r!14126)) (ite c!1429166 (regTwo!41701 (regTwo!41700 r!14126)) (regTwo!41700 (regTwo!41700 r!14126))))))))

(declare-fun bm!718116 () Bool)

(assert (=> bm!718116 (= call!718119 call!718120)))

(declare-fun b!7748606 () Bool)

(assert (=> b!7748606 (= e!4593728 call!718119)))

(assert (= (and d!2342489 (not res!3089665)) b!7748604))

(assert (= (and b!7748604 c!1429165) b!7748602))

(assert (= (and b!7748604 (not c!1429165)) b!7748599))

(assert (= (and b!7748602 res!3089663) b!7748598))

(assert (= (and b!7748599 c!1429166) b!7748600))

(assert (= (and b!7748599 (not c!1429166)) b!7748601))

(assert (= (and b!7748600 res!3089664) b!7748606))

(assert (= (and b!7748601 (not res!3089661)) b!7748605))

(assert (= (and b!7748605 res!3089662) b!7748603))

(assert (= (or b!7748600 b!7748605) bm!718114))

(assert (= (or b!7748606 b!7748603) bm!718116))

(assert (= (or b!7748598 bm!718116) bm!718115))

(declare-fun m!8215614 () Bool)

(assert (=> b!7748602 m!8215614))

(declare-fun m!8215616 () Bool)

(assert (=> bm!718114 m!8215616))

(declare-fun m!8215618 () Bool)

(assert (=> bm!718115 m!8215618))

(assert (=> b!7748493 d!2342489))

(declare-fun d!2342491 () Bool)

(declare-fun choose!59416 (Int) Bool)

(assert (=> d!2342491 (= (Exists!4715 lambda!471847) (choose!59416 lambda!471847))))

(declare-fun bs!1965705 () Bool)

(assert (= bs!1965705 d!2342491))

(declare-fun m!8215620 () Bool)

(assert (=> bs!1965705 m!8215620))

(assert (=> b!7748490 d!2342491))

(declare-fun b!7748635 () Bool)

(declare-fun e!4593753 () Bool)

(declare-fun lt!2669103 () Bool)

(declare-fun call!718124 () Bool)

(assert (=> b!7748635 (= e!4593753 (= lt!2669103 call!718124))))

(declare-fun b!7748636 () Bool)

(declare-fun e!4593755 () Bool)

(assert (=> b!7748636 (= e!4593755 (not lt!2669103))))

(declare-fun b!7748637 () Bool)

(assert (=> b!7748637 (= e!4593753 e!4593755)))

(declare-fun c!1429173 () Bool)

(assert (=> b!7748637 (= c!1429173 (is-EmptyLang!20594 (regTwo!41700 r!14126)))))

(declare-fun b!7748638 () Bool)

(declare-fun e!4593750 () Bool)

(declare-fun head!15826 (List!73441) C!41514)

(assert (=> b!7748638 (= e!4593750 (not (= (head!15826 (_2!38124 lt!2669063)) (c!1429156 (regTwo!41700 r!14126)))))))

(declare-fun b!7748639 () Bool)

(declare-fun e!4593751 () Bool)

(assert (=> b!7748639 (= e!4593751 (= (head!15826 (_2!38124 lt!2669063)) (c!1429156 (regTwo!41700 r!14126))))))

(declare-fun b!7748640 () Bool)

(declare-fun res!3089684 () Bool)

(declare-fun e!4593752 () Bool)

(assert (=> b!7748640 (=> res!3089684 e!4593752)))

(assert (=> b!7748640 (= res!3089684 (not (is-ElementMatch!20594 (regTwo!41700 r!14126))))))

(assert (=> b!7748640 (= e!4593755 e!4593752)))

(declare-fun b!7748641 () Bool)

(declare-fun res!3089686 () Bool)

(assert (=> b!7748641 (=> res!3089686 e!4593752)))

(assert (=> b!7748641 (= res!3089686 e!4593751)))

(declare-fun res!3089688 () Bool)

(assert (=> b!7748641 (=> (not res!3089688) (not e!4593751))))

(assert (=> b!7748641 (= res!3089688 lt!2669103)))

(declare-fun b!7748642 () Bool)

(declare-fun e!4593749 () Bool)

(assert (=> b!7748642 (= e!4593749 e!4593750)))

(declare-fun res!3089685 () Bool)

(assert (=> b!7748642 (=> res!3089685 e!4593750)))

(assert (=> b!7748642 (= res!3089685 call!718124)))

(declare-fun b!7748643 () Bool)

(declare-fun e!4593754 () Bool)

(declare-fun derivativeStep!6026 (Regex!20594 C!41514) Regex!20594)

(declare-fun tail!15366 (List!73441) List!73441)

(assert (=> b!7748643 (= e!4593754 (matchR!10086 (derivativeStep!6026 (regTwo!41700 r!14126) (head!15826 (_2!38124 lt!2669063))) (tail!15366 (_2!38124 lt!2669063))))))

(declare-fun b!7748645 () Bool)

(assert (=> b!7748645 (= e!4593752 e!4593749)))

(declare-fun res!3089687 () Bool)

(assert (=> b!7748645 (=> (not res!3089687) (not e!4593749))))

(assert (=> b!7748645 (= res!3089687 (not lt!2669103))))

(declare-fun b!7748646 () Bool)

(declare-fun res!3089689 () Bool)

(assert (=> b!7748646 (=> res!3089689 e!4593750)))

(declare-fun isEmpty!42013 (List!73441) Bool)

(assert (=> b!7748646 (= res!3089689 (not (isEmpty!42013 (tail!15366 (_2!38124 lt!2669063)))))))

(declare-fun bm!718119 () Bool)

(assert (=> bm!718119 (= call!718124 (isEmpty!42013 (_2!38124 lt!2669063)))))

(declare-fun b!7748647 () Bool)

(declare-fun res!3089683 () Bool)

(assert (=> b!7748647 (=> (not res!3089683) (not e!4593751))))

(assert (=> b!7748647 (= res!3089683 (not call!718124))))

(declare-fun b!7748648 () Bool)

(assert (=> b!7748648 (= e!4593754 (nullable!9067 (regTwo!41700 r!14126)))))

(declare-fun b!7748644 () Bool)

(declare-fun res!3089682 () Bool)

(assert (=> b!7748644 (=> (not res!3089682) (not e!4593751))))

(assert (=> b!7748644 (= res!3089682 (isEmpty!42013 (tail!15366 (_2!38124 lt!2669063))))))

(declare-fun d!2342493 () Bool)

(assert (=> d!2342493 e!4593753))

(declare-fun c!1429174 () Bool)

(assert (=> d!2342493 (= c!1429174 (is-EmptyExpr!20594 (regTwo!41700 r!14126)))))

(assert (=> d!2342493 (= lt!2669103 e!4593754)))

(declare-fun c!1429175 () Bool)

(assert (=> d!2342493 (= c!1429175 (isEmpty!42013 (_2!38124 lt!2669063)))))

(assert (=> d!2342493 (validRegex!11012 (regTwo!41700 r!14126))))

(assert (=> d!2342493 (= (matchR!10086 (regTwo!41700 r!14126) (_2!38124 lt!2669063)) lt!2669103)))

(assert (= (and d!2342493 c!1429175) b!7748648))

(assert (= (and d!2342493 (not c!1429175)) b!7748643))

(assert (= (and d!2342493 c!1429174) b!7748635))

(assert (= (and d!2342493 (not c!1429174)) b!7748637))

(assert (= (and b!7748637 c!1429173) b!7748636))

(assert (= (and b!7748637 (not c!1429173)) b!7748640))

(assert (= (and b!7748640 (not res!3089684)) b!7748641))

(assert (= (and b!7748641 res!3089688) b!7748647))

(assert (= (and b!7748647 res!3089683) b!7748644))

(assert (= (and b!7748644 res!3089682) b!7748639))

(assert (= (and b!7748641 (not res!3089686)) b!7748645))

(assert (= (and b!7748645 res!3089687) b!7748642))

(assert (= (and b!7748642 (not res!3089685)) b!7748646))

(assert (= (and b!7748646 (not res!3089689)) b!7748638))

(assert (= (or b!7748635 b!7748647 b!7748642) bm!718119))

(declare-fun m!8215624 () Bool)

(assert (=> b!7748648 m!8215624))

(declare-fun m!8215626 () Bool)

(assert (=> bm!718119 m!8215626))

(declare-fun m!8215628 () Bool)

(assert (=> b!7748638 m!8215628))

(assert (=> b!7748639 m!8215628))

(declare-fun m!8215630 () Bool)

(assert (=> b!7748646 m!8215630))

(assert (=> b!7748646 m!8215630))

(declare-fun m!8215632 () Bool)

(assert (=> b!7748646 m!8215632))

(assert (=> b!7748644 m!8215630))

(assert (=> b!7748644 m!8215630))

(assert (=> b!7748644 m!8215632))

(assert (=> b!7748643 m!8215628))

(assert (=> b!7748643 m!8215628))

(declare-fun m!8215634 () Bool)

(assert (=> b!7748643 m!8215634))

(assert (=> b!7748643 m!8215630))

(assert (=> b!7748643 m!8215634))

(assert (=> b!7748643 m!8215630))

(declare-fun m!8215636 () Bool)

(assert (=> b!7748643 m!8215636))

(assert (=> d!2342493 m!8215626))

(assert (=> d!2342493 m!8215562))

(assert (=> b!7748495 d!2342493))

(declare-fun d!2342499 () Bool)

(declare-fun lt!2669106 () tuple2!69642)

(declare-fun dynLambda!29986 (Int tuple2!69642) Bool)

(assert (=> d!2342499 (dynLambda!29986 lambda!471847 lt!2669106)))

(declare-fun choose!59417 (Int) tuple2!69642)

(assert (=> d!2342499 (= lt!2669106 (choose!59417 lambda!471847))))

(assert (=> d!2342499 (Exists!4715 lambda!471847)))

(assert (=> d!2342499 (= (pickWitness!551 lambda!471847) lt!2669106)))

(declare-fun b_lambda!289427 () Bool)

(assert (=> (not b_lambda!289427) (not d!2342499)))

(declare-fun bs!1965707 () Bool)

(assert (= bs!1965707 d!2342499))

(declare-fun m!8215638 () Bool)

(assert (=> bs!1965707 m!8215638))

(declare-fun m!8215640 () Bool)

(assert (=> bs!1965707 m!8215640))

(assert (=> bs!1965707 m!8215540))

(assert (=> b!7748495 d!2342499))

(declare-fun bs!1965709 () Bool)

(declare-fun b!7748713 () Bool)

(assert (= bs!1965709 (and b!7748713 b!7748486)))

(declare-fun lambda!471862 () Int)

(assert (=> bs!1965709 (not (= lambda!471862 lambda!471846))))

(declare-fun bs!1965710 () Bool)

(assert (= bs!1965710 (and b!7748713 b!7748490)))

(assert (=> bs!1965710 (not (= lambda!471862 lambda!471847))))

(assert (=> b!7748713 true))

(assert (=> b!7748713 true))

(declare-fun bs!1965711 () Bool)

(declare-fun b!7748709 () Bool)

(assert (= bs!1965711 (and b!7748709 b!7748486)))

(declare-fun lambda!471863 () Int)

(assert (=> bs!1965711 (not (= lambda!471863 lambda!471846))))

(declare-fun bs!1965712 () Bool)

(assert (= bs!1965712 (and b!7748709 b!7748490)))

(assert (=> bs!1965712 (= (and (= (_1!38124 lt!2669063) s!9605) (= (regOne!41700 (regOne!41700 r!14126)) (regOne!41700 r!14126)) (= (regTwo!41700 (regOne!41700 r!14126)) (regTwo!41700 r!14126))) (= lambda!471863 lambda!471847))))

(declare-fun bs!1965713 () Bool)

(assert (= bs!1965713 (and b!7748709 b!7748713)))

(assert (=> bs!1965713 (not (= lambda!471863 lambda!471862))))

(assert (=> b!7748709 true))

(assert (=> b!7748709 true))

(declare-fun b!7748708 () Bool)

(declare-fun e!4593798 () Bool)

(declare-fun e!4593801 () Bool)

(assert (=> b!7748708 (= e!4593798 e!4593801)))

(declare-fun res!3089723 () Bool)

(assert (=> b!7748708 (= res!3089723 (matchRSpec!4659 (regOne!41701 (regOne!41700 r!14126)) (_1!38124 lt!2669063)))))

(assert (=> b!7748708 (=> res!3089723 e!4593801)))

(declare-fun e!4593797 () Bool)

(declare-fun call!718138 () Bool)

(assert (=> b!7748709 (= e!4593797 call!718138)))

(declare-fun b!7748710 () Bool)

(declare-fun e!4593800 () Bool)

(declare-fun call!718139 () Bool)

(assert (=> b!7748710 (= e!4593800 call!718139)))

(declare-fun b!7748711 () Bool)

(declare-fun e!4593795 () Bool)

(assert (=> b!7748711 (= e!4593800 e!4593795)))

(declare-fun res!3089721 () Bool)

(assert (=> b!7748711 (= res!3089721 (not (is-EmptyLang!20594 (regOne!41700 r!14126))))))

(assert (=> b!7748711 (=> (not res!3089721) (not e!4593795))))

(declare-fun b!7748712 () Bool)

(declare-fun res!3089722 () Bool)

(declare-fun e!4593796 () Bool)

(assert (=> b!7748712 (=> res!3089722 e!4593796)))

(assert (=> b!7748712 (= res!3089722 call!718139)))

(assert (=> b!7748712 (= e!4593797 e!4593796)))

(assert (=> b!7748713 (= e!4593796 call!718138)))

(declare-fun b!7748714 () Bool)

(assert (=> b!7748714 (= e!4593801 (matchRSpec!4659 (regTwo!41701 (regOne!41700 r!14126)) (_1!38124 lt!2669063)))))

(declare-fun bm!718133 () Bool)

(assert (=> bm!718133 (= call!718139 (isEmpty!42013 (_1!38124 lt!2669063)))))

(declare-fun d!2342501 () Bool)

(declare-fun c!1429192 () Bool)

(assert (=> d!2342501 (= c!1429192 (is-EmptyExpr!20594 (regOne!41700 r!14126)))))

(assert (=> d!2342501 (= (matchRSpec!4659 (regOne!41700 r!14126) (_1!38124 lt!2669063)) e!4593800)))

(declare-fun b!7748715 () Bool)

(assert (=> b!7748715 (= e!4593798 e!4593797)))

(declare-fun c!1429191 () Bool)

(assert (=> b!7748715 (= c!1429191 (is-Star!20594 (regOne!41700 r!14126)))))

(declare-fun b!7748716 () Bool)

(declare-fun c!1429190 () Bool)

(assert (=> b!7748716 (= c!1429190 (is-ElementMatch!20594 (regOne!41700 r!14126)))))

(declare-fun e!4593799 () Bool)

(assert (=> b!7748716 (= e!4593795 e!4593799)))

(declare-fun b!7748717 () Bool)

(declare-fun c!1429193 () Bool)

(assert (=> b!7748717 (= c!1429193 (is-Union!20594 (regOne!41700 r!14126)))))

(assert (=> b!7748717 (= e!4593799 e!4593798)))

(declare-fun b!7748718 () Bool)

(assert (=> b!7748718 (= e!4593799 (= (_1!38124 lt!2669063) (Cons!73317 (c!1429156 (regOne!41700 r!14126)) Nil!73317)))))

(declare-fun bm!718134 () Bool)

(assert (=> bm!718134 (= call!718138 (Exists!4715 (ite c!1429191 lambda!471862 lambda!471863)))))

(assert (= (and d!2342501 c!1429192) b!7748710))

(assert (= (and d!2342501 (not c!1429192)) b!7748711))

(assert (= (and b!7748711 res!3089721) b!7748716))

(assert (= (and b!7748716 c!1429190) b!7748718))

(assert (= (and b!7748716 (not c!1429190)) b!7748717))

(assert (= (and b!7748717 c!1429193) b!7748708))

(assert (= (and b!7748717 (not c!1429193)) b!7748715))

(assert (= (and b!7748708 (not res!3089723)) b!7748714))

(assert (= (and b!7748715 c!1429191) b!7748712))

(assert (= (and b!7748715 (not c!1429191)) b!7748709))

(assert (= (and b!7748712 (not res!3089722)) b!7748713))

(assert (= (or b!7748713 b!7748709) bm!718134))

(assert (= (or b!7748710 b!7748712) bm!718133))

(declare-fun m!8215650 () Bool)

(assert (=> b!7748708 m!8215650))

(declare-fun m!8215652 () Bool)

(assert (=> b!7748714 m!8215652))

(declare-fun m!8215654 () Bool)

(assert (=> bm!718133 m!8215654))

(declare-fun m!8215656 () Bool)

(assert (=> bm!718134 m!8215656))

(assert (=> b!7748495 d!2342501))

(declare-fun b!7748719 () Bool)

(declare-fun e!4593806 () Bool)

(declare-fun lt!2669107 () Bool)

(declare-fun call!718140 () Bool)

(assert (=> b!7748719 (= e!4593806 (= lt!2669107 call!718140))))

(declare-fun b!7748720 () Bool)

(declare-fun e!4593808 () Bool)

(assert (=> b!7748720 (= e!4593808 (not lt!2669107))))

(declare-fun b!7748721 () Bool)

(assert (=> b!7748721 (= e!4593806 e!4593808)))

(declare-fun c!1429194 () Bool)

(assert (=> b!7748721 (= c!1429194 (is-EmptyLang!20594 (regOne!41700 r!14126)))))

(declare-fun b!7748722 () Bool)

(declare-fun e!4593803 () Bool)

(assert (=> b!7748722 (= e!4593803 (not (= (head!15826 (_1!38124 lt!2669063)) (c!1429156 (regOne!41700 r!14126)))))))

(declare-fun b!7748723 () Bool)

(declare-fun e!4593804 () Bool)

(assert (=> b!7748723 (= e!4593804 (= (head!15826 (_1!38124 lt!2669063)) (c!1429156 (regOne!41700 r!14126))))))

(declare-fun b!7748724 () Bool)

(declare-fun res!3089726 () Bool)

(declare-fun e!4593805 () Bool)

(assert (=> b!7748724 (=> res!3089726 e!4593805)))

(assert (=> b!7748724 (= res!3089726 (not (is-ElementMatch!20594 (regOne!41700 r!14126))))))

(assert (=> b!7748724 (= e!4593808 e!4593805)))

(declare-fun b!7748725 () Bool)

(declare-fun res!3089728 () Bool)

(assert (=> b!7748725 (=> res!3089728 e!4593805)))

(assert (=> b!7748725 (= res!3089728 e!4593804)))

(declare-fun res!3089730 () Bool)

(assert (=> b!7748725 (=> (not res!3089730) (not e!4593804))))

(assert (=> b!7748725 (= res!3089730 lt!2669107)))

(declare-fun b!7748726 () Bool)

(declare-fun e!4593802 () Bool)

(assert (=> b!7748726 (= e!4593802 e!4593803)))

(declare-fun res!3089727 () Bool)

(assert (=> b!7748726 (=> res!3089727 e!4593803)))

(assert (=> b!7748726 (= res!3089727 call!718140)))

(declare-fun b!7748727 () Bool)

(declare-fun e!4593807 () Bool)

(assert (=> b!7748727 (= e!4593807 (matchR!10086 (derivativeStep!6026 (regOne!41700 r!14126) (head!15826 (_1!38124 lt!2669063))) (tail!15366 (_1!38124 lt!2669063))))))

(declare-fun b!7748729 () Bool)

(assert (=> b!7748729 (= e!4593805 e!4593802)))

(declare-fun res!3089729 () Bool)

(assert (=> b!7748729 (=> (not res!3089729) (not e!4593802))))

(assert (=> b!7748729 (= res!3089729 (not lt!2669107))))

(declare-fun b!7748730 () Bool)

(declare-fun res!3089731 () Bool)

(assert (=> b!7748730 (=> res!3089731 e!4593803)))

(assert (=> b!7748730 (= res!3089731 (not (isEmpty!42013 (tail!15366 (_1!38124 lt!2669063)))))))

(declare-fun bm!718135 () Bool)

(assert (=> bm!718135 (= call!718140 (isEmpty!42013 (_1!38124 lt!2669063)))))

(declare-fun b!7748731 () Bool)

(declare-fun res!3089725 () Bool)

(assert (=> b!7748731 (=> (not res!3089725) (not e!4593804))))

(assert (=> b!7748731 (= res!3089725 (not call!718140))))

(declare-fun b!7748732 () Bool)

(assert (=> b!7748732 (= e!4593807 (nullable!9067 (regOne!41700 r!14126)))))

(declare-fun b!7748728 () Bool)

(declare-fun res!3089724 () Bool)

(assert (=> b!7748728 (=> (not res!3089724) (not e!4593804))))

(assert (=> b!7748728 (= res!3089724 (isEmpty!42013 (tail!15366 (_1!38124 lt!2669063))))))

(declare-fun d!2342507 () Bool)

(assert (=> d!2342507 e!4593806))

(declare-fun c!1429195 () Bool)

(assert (=> d!2342507 (= c!1429195 (is-EmptyExpr!20594 (regOne!41700 r!14126)))))

(assert (=> d!2342507 (= lt!2669107 e!4593807)))

(declare-fun c!1429196 () Bool)

(assert (=> d!2342507 (= c!1429196 (isEmpty!42013 (_1!38124 lt!2669063)))))

(assert (=> d!2342507 (validRegex!11012 (regOne!41700 r!14126))))

(assert (=> d!2342507 (= (matchR!10086 (regOne!41700 r!14126) (_1!38124 lt!2669063)) lt!2669107)))

(assert (= (and d!2342507 c!1429196) b!7748732))

(assert (= (and d!2342507 (not c!1429196)) b!7748727))

(assert (= (and d!2342507 c!1429195) b!7748719))

(assert (= (and d!2342507 (not c!1429195)) b!7748721))

(assert (= (and b!7748721 c!1429194) b!7748720))

(assert (= (and b!7748721 (not c!1429194)) b!7748724))

(assert (= (and b!7748724 (not res!3089726)) b!7748725))

(assert (= (and b!7748725 res!3089730) b!7748731))

(assert (= (and b!7748731 res!3089725) b!7748728))

(assert (= (and b!7748728 res!3089724) b!7748723))

(assert (= (and b!7748725 (not res!3089728)) b!7748729))

(assert (= (and b!7748729 res!3089729) b!7748726))

(assert (= (and b!7748726 (not res!3089727)) b!7748730))

(assert (= (and b!7748730 (not res!3089731)) b!7748722))

(assert (= (or b!7748719 b!7748731 b!7748726) bm!718135))

(declare-fun m!8215658 () Bool)

(assert (=> b!7748732 m!8215658))

(assert (=> bm!718135 m!8215654))

(declare-fun m!8215660 () Bool)

(assert (=> b!7748722 m!8215660))

(assert (=> b!7748723 m!8215660))

(declare-fun m!8215662 () Bool)

(assert (=> b!7748730 m!8215662))

(assert (=> b!7748730 m!8215662))

(declare-fun m!8215664 () Bool)

(assert (=> b!7748730 m!8215664))

(assert (=> b!7748728 m!8215662))

(assert (=> b!7748728 m!8215662))

(assert (=> b!7748728 m!8215664))

(assert (=> b!7748727 m!8215660))

(assert (=> b!7748727 m!8215660))

(declare-fun m!8215666 () Bool)

(assert (=> b!7748727 m!8215666))

(assert (=> b!7748727 m!8215662))

(assert (=> b!7748727 m!8215666))

(assert (=> b!7748727 m!8215662))

(declare-fun m!8215668 () Bool)

(assert (=> b!7748727 m!8215668))

(assert (=> d!2342507 m!8215654))

(assert (=> d!2342507 m!8215552))

(assert (=> b!7748495 d!2342507))

(declare-fun d!2342509 () Bool)

(assert (=> d!2342509 (= (matchR!10086 (regOne!41700 r!14126) (_1!38124 lt!2669063)) (matchRSpec!4659 (regOne!41700 r!14126) (_1!38124 lt!2669063)))))

(declare-fun lt!2669110 () Unit!168300)

(declare-fun choose!59418 (Regex!20594 List!73441) Unit!168300)

(assert (=> d!2342509 (= lt!2669110 (choose!59418 (regOne!41700 r!14126) (_1!38124 lt!2669063)))))

(assert (=> d!2342509 (validRegex!11012 (regOne!41700 r!14126))))

(assert (=> d!2342509 (= (mainMatchTheorem!4629 (regOne!41700 r!14126) (_1!38124 lt!2669063)) lt!2669110)))

(declare-fun bs!1965714 () Bool)

(assert (= bs!1965714 d!2342509))

(assert (=> bs!1965714 m!8215542))

(assert (=> bs!1965714 m!8215554))

(declare-fun m!8215670 () Bool)

(assert (=> bs!1965714 m!8215670))

(assert (=> bs!1965714 m!8215552))

(assert (=> b!7748495 d!2342509))

(declare-fun d!2342511 () Bool)

(assert (=> d!2342511 (= (matchR!10086 (regTwo!41700 r!14126) (_2!38124 lt!2669063)) (matchRSpec!4659 (regTwo!41700 r!14126) (_2!38124 lt!2669063)))))

(declare-fun lt!2669111 () Unit!168300)

(assert (=> d!2342511 (= lt!2669111 (choose!59418 (regTwo!41700 r!14126) (_2!38124 lt!2669063)))))

(assert (=> d!2342511 (validRegex!11012 (regTwo!41700 r!14126))))

(assert (=> d!2342511 (= (mainMatchTheorem!4629 (regTwo!41700 r!14126) (_2!38124 lt!2669063)) lt!2669111)))

(declare-fun bs!1965715 () Bool)

(assert (= bs!1965715 d!2342511))

(assert (=> bs!1965715 m!8215556))

(assert (=> bs!1965715 m!8215550))

(declare-fun m!8215672 () Bool)

(assert (=> bs!1965715 m!8215672))

(assert (=> bs!1965715 m!8215562))

(assert (=> b!7748495 d!2342511))

(declare-fun b!7748733 () Bool)

(declare-fun e!4593811 () Bool)

(declare-fun call!718142 () Bool)

(assert (=> b!7748733 (= e!4593811 call!718142)))

(declare-fun b!7748734 () Bool)

(declare-fun e!4593813 () Bool)

(declare-fun e!4593812 () Bool)

(assert (=> b!7748734 (= e!4593813 e!4593812)))

(declare-fun c!1429198 () Bool)

(assert (=> b!7748734 (= c!1429198 (is-Union!20594 (regOne!41700 r!14126)))))

(declare-fun b!7748735 () Bool)

(declare-fun res!3089735 () Bool)

(declare-fun e!4593809 () Bool)

(assert (=> b!7748735 (=> (not res!3089735) (not e!4593809))))

(declare-fun call!718143 () Bool)

(assert (=> b!7748735 (= res!3089735 call!718143)))

(assert (=> b!7748735 (= e!4593812 e!4593809)))

(declare-fun b!7748736 () Bool)

(declare-fun res!3089732 () Bool)

(declare-fun e!4593814 () Bool)

(assert (=> b!7748736 (=> res!3089732 e!4593814)))

(assert (=> b!7748736 (= res!3089732 (not (is-Concat!29439 (regOne!41700 r!14126))))))

(assert (=> b!7748736 (= e!4593812 e!4593814)))

(declare-fun b!7748737 () Bool)

(assert (=> b!7748737 (= e!4593813 e!4593811)))

(declare-fun res!3089734 () Bool)

(assert (=> b!7748737 (= res!3089734 (not (nullable!9067 (reg!20923 (regOne!41700 r!14126)))))))

(assert (=> b!7748737 (=> (not res!3089734) (not e!4593811))))

(declare-fun d!2342513 () Bool)

(declare-fun res!3089736 () Bool)

(declare-fun e!4593810 () Bool)

(assert (=> d!2342513 (=> res!3089736 e!4593810)))

(assert (=> d!2342513 (= res!3089736 (is-ElementMatch!20594 (regOne!41700 r!14126)))))

(assert (=> d!2342513 (= (validRegex!11012 (regOne!41700 r!14126)) e!4593810)))

(declare-fun b!7748738 () Bool)

(declare-fun e!4593815 () Bool)

(declare-fun call!718141 () Bool)

(assert (=> b!7748738 (= e!4593815 call!718141)))

(declare-fun b!7748739 () Bool)

(assert (=> b!7748739 (= e!4593810 e!4593813)))

(declare-fun c!1429197 () Bool)

(assert (=> b!7748739 (= c!1429197 (is-Star!20594 (regOne!41700 r!14126)))))

(declare-fun b!7748740 () Bool)

(assert (=> b!7748740 (= e!4593814 e!4593815)))

(declare-fun res!3089733 () Bool)

(assert (=> b!7748740 (=> (not res!3089733) (not e!4593815))))

(assert (=> b!7748740 (= res!3089733 call!718143)))

(declare-fun bm!718136 () Bool)

(assert (=> bm!718136 (= call!718143 (validRegex!11012 (ite c!1429198 (regOne!41701 (regOne!41700 r!14126)) (regOne!41700 (regOne!41700 r!14126)))))))

(declare-fun bm!718137 () Bool)

(assert (=> bm!718137 (= call!718142 (validRegex!11012 (ite c!1429197 (reg!20923 (regOne!41700 r!14126)) (ite c!1429198 (regTwo!41701 (regOne!41700 r!14126)) (regTwo!41700 (regOne!41700 r!14126))))))))

(declare-fun bm!718138 () Bool)

(assert (=> bm!718138 (= call!718141 call!718142)))

(declare-fun b!7748741 () Bool)

(assert (=> b!7748741 (= e!4593809 call!718141)))

(assert (= (and d!2342513 (not res!3089736)) b!7748739))

(assert (= (and b!7748739 c!1429197) b!7748737))

(assert (= (and b!7748739 (not c!1429197)) b!7748734))

(assert (= (and b!7748737 res!3089734) b!7748733))

(assert (= (and b!7748734 c!1429198) b!7748735))

(assert (= (and b!7748734 (not c!1429198)) b!7748736))

(assert (= (and b!7748735 res!3089735) b!7748741))

(assert (= (and b!7748736 (not res!3089732)) b!7748740))

(assert (= (and b!7748740 res!3089733) b!7748738))

(assert (= (or b!7748735 b!7748740) bm!718136))

(assert (= (or b!7748741 b!7748738) bm!718138))

(assert (= (or b!7748733 bm!718138) bm!718137))

(declare-fun m!8215674 () Bool)

(assert (=> b!7748737 m!8215674))

(declare-fun m!8215676 () Bool)

(assert (=> bm!718136 m!8215676))

(declare-fun m!8215678 () Bool)

(assert (=> bm!718137 m!8215678))

(assert (=> b!7748495 d!2342513))

(declare-fun bs!1965716 () Bool)

(declare-fun b!7748747 () Bool)

(assert (= bs!1965716 (and b!7748747 b!7748486)))

(declare-fun lambda!471864 () Int)

(assert (=> bs!1965716 (not (= lambda!471864 lambda!471846))))

(declare-fun bs!1965717 () Bool)

(assert (= bs!1965717 (and b!7748747 b!7748490)))

(assert (=> bs!1965717 (not (= lambda!471864 lambda!471847))))

(declare-fun bs!1965718 () Bool)

(assert (= bs!1965718 (and b!7748747 b!7748713)))

(assert (=> bs!1965718 (= (and (= (_2!38124 lt!2669063) (_1!38124 lt!2669063)) (= (reg!20923 (regTwo!41700 r!14126)) (reg!20923 (regOne!41700 r!14126))) (= (regTwo!41700 r!14126) (regOne!41700 r!14126))) (= lambda!471864 lambda!471862))))

(declare-fun bs!1965719 () Bool)

(assert (= bs!1965719 (and b!7748747 b!7748709)))

(assert (=> bs!1965719 (not (= lambda!471864 lambda!471863))))

(assert (=> b!7748747 true))

(assert (=> b!7748747 true))

(declare-fun bs!1965720 () Bool)

(declare-fun b!7748743 () Bool)

(assert (= bs!1965720 (and b!7748743 b!7748490)))

(declare-fun lambda!471865 () Int)

(assert (=> bs!1965720 (= (and (= (_2!38124 lt!2669063) s!9605) (= (regOne!41700 (regTwo!41700 r!14126)) (regOne!41700 r!14126)) (= (regTwo!41700 (regTwo!41700 r!14126)) (regTwo!41700 r!14126))) (= lambda!471865 lambda!471847))))

(declare-fun bs!1965721 () Bool)

(assert (= bs!1965721 (and b!7748743 b!7748709)))

(assert (=> bs!1965721 (= (and (= (_2!38124 lt!2669063) (_1!38124 lt!2669063)) (= (regOne!41700 (regTwo!41700 r!14126)) (regOne!41700 (regOne!41700 r!14126))) (= (regTwo!41700 (regTwo!41700 r!14126)) (regTwo!41700 (regOne!41700 r!14126)))) (= lambda!471865 lambda!471863))))

(declare-fun bs!1965722 () Bool)

(assert (= bs!1965722 (and b!7748743 b!7748486)))

(assert (=> bs!1965722 (not (= lambda!471865 lambda!471846))))

(declare-fun bs!1965723 () Bool)

(assert (= bs!1965723 (and b!7748743 b!7748747)))

(assert (=> bs!1965723 (not (= lambda!471865 lambda!471864))))

(declare-fun bs!1965724 () Bool)

(assert (= bs!1965724 (and b!7748743 b!7748713)))

(assert (=> bs!1965724 (not (= lambda!471865 lambda!471862))))

(assert (=> b!7748743 true))

(assert (=> b!7748743 true))

(declare-fun b!7748742 () Bool)

(declare-fun e!4593819 () Bool)

(declare-fun e!4593822 () Bool)

(assert (=> b!7748742 (= e!4593819 e!4593822)))

(declare-fun res!3089739 () Bool)

(assert (=> b!7748742 (= res!3089739 (matchRSpec!4659 (regOne!41701 (regTwo!41700 r!14126)) (_2!38124 lt!2669063)))))

(assert (=> b!7748742 (=> res!3089739 e!4593822)))

(declare-fun e!4593818 () Bool)

(declare-fun call!718144 () Bool)

(assert (=> b!7748743 (= e!4593818 call!718144)))

(declare-fun b!7748744 () Bool)

(declare-fun e!4593821 () Bool)

(declare-fun call!718145 () Bool)

(assert (=> b!7748744 (= e!4593821 call!718145)))

(declare-fun b!7748745 () Bool)

(declare-fun e!4593816 () Bool)

(assert (=> b!7748745 (= e!4593821 e!4593816)))

(declare-fun res!3089737 () Bool)

(assert (=> b!7748745 (= res!3089737 (not (is-EmptyLang!20594 (regTwo!41700 r!14126))))))

(assert (=> b!7748745 (=> (not res!3089737) (not e!4593816))))

(declare-fun b!7748746 () Bool)

(declare-fun res!3089738 () Bool)

(declare-fun e!4593817 () Bool)

(assert (=> b!7748746 (=> res!3089738 e!4593817)))

(assert (=> b!7748746 (= res!3089738 call!718145)))

(assert (=> b!7748746 (= e!4593818 e!4593817)))

(assert (=> b!7748747 (= e!4593817 call!718144)))

(declare-fun b!7748748 () Bool)

(assert (=> b!7748748 (= e!4593822 (matchRSpec!4659 (regTwo!41701 (regTwo!41700 r!14126)) (_2!38124 lt!2669063)))))

(declare-fun bm!718139 () Bool)

(assert (=> bm!718139 (= call!718145 (isEmpty!42013 (_2!38124 lt!2669063)))))

(declare-fun d!2342515 () Bool)

(declare-fun c!1429201 () Bool)

(assert (=> d!2342515 (= c!1429201 (is-EmptyExpr!20594 (regTwo!41700 r!14126)))))

(assert (=> d!2342515 (= (matchRSpec!4659 (regTwo!41700 r!14126) (_2!38124 lt!2669063)) e!4593821)))

(declare-fun b!7748749 () Bool)

(assert (=> b!7748749 (= e!4593819 e!4593818)))

(declare-fun c!1429200 () Bool)

(assert (=> b!7748749 (= c!1429200 (is-Star!20594 (regTwo!41700 r!14126)))))

(declare-fun b!7748750 () Bool)

(declare-fun c!1429199 () Bool)

(assert (=> b!7748750 (= c!1429199 (is-ElementMatch!20594 (regTwo!41700 r!14126)))))

(declare-fun e!4593820 () Bool)

(assert (=> b!7748750 (= e!4593816 e!4593820)))

(declare-fun b!7748751 () Bool)

(declare-fun c!1429202 () Bool)

(assert (=> b!7748751 (= c!1429202 (is-Union!20594 (regTwo!41700 r!14126)))))

(assert (=> b!7748751 (= e!4593820 e!4593819)))

(declare-fun b!7748752 () Bool)

(assert (=> b!7748752 (= e!4593820 (= (_2!38124 lt!2669063) (Cons!73317 (c!1429156 (regTwo!41700 r!14126)) Nil!73317)))))

(declare-fun bm!718140 () Bool)

(assert (=> bm!718140 (= call!718144 (Exists!4715 (ite c!1429200 lambda!471864 lambda!471865)))))

(assert (= (and d!2342515 c!1429201) b!7748744))

(assert (= (and d!2342515 (not c!1429201)) b!7748745))

(assert (= (and b!7748745 res!3089737) b!7748750))

(assert (= (and b!7748750 c!1429199) b!7748752))

(assert (= (and b!7748750 (not c!1429199)) b!7748751))

(assert (= (and b!7748751 c!1429202) b!7748742))

(assert (= (and b!7748751 (not c!1429202)) b!7748749))

(assert (= (and b!7748742 (not res!3089739)) b!7748748))

(assert (= (and b!7748749 c!1429200) b!7748746))

(assert (= (and b!7748749 (not c!1429200)) b!7748743))

(assert (= (and b!7748746 (not res!3089738)) b!7748747))

(assert (= (or b!7748747 b!7748743) bm!718140))

(assert (= (or b!7748744 b!7748746) bm!718139))

(declare-fun m!8215680 () Bool)

(assert (=> b!7748742 m!8215680))

(declare-fun m!8215682 () Bool)

(assert (=> b!7748748 m!8215682))

(assert (=> bm!718139 m!8215626))

(declare-fun m!8215684 () Bool)

(assert (=> bm!718140 m!8215684))

(assert (=> b!7748495 d!2342515))

(declare-fun b!7748790 () Bool)

(declare-fun e!4593843 () List!73441)

(assert (=> b!7748790 (= e!4593843 (Cons!73317 (h!79765 Nil!73317) (++!17793 (t!388176 Nil!73317) s!9605)))))

(declare-fun d!2342517 () Bool)

(declare-fun e!4593844 () Bool)

(assert (=> d!2342517 e!4593844))

(declare-fun res!3089757 () Bool)

(assert (=> d!2342517 (=> (not res!3089757) (not e!4593844))))

(declare-fun lt!2669114 () List!73441)

(declare-fun content!15549 (List!73441) (Set C!41514))

(assert (=> d!2342517 (= res!3089757 (= (content!15549 lt!2669114) (set.union (content!15549 Nil!73317) (content!15549 s!9605))))))

(assert (=> d!2342517 (= lt!2669114 e!4593843)))

(declare-fun c!1429213 () Bool)

(assert (=> d!2342517 (= c!1429213 (is-Nil!73317 Nil!73317))))

(assert (=> d!2342517 (= (++!17793 Nil!73317 s!9605) lt!2669114)))

(declare-fun b!7748789 () Bool)

(assert (=> b!7748789 (= e!4593843 s!9605)))

(declare-fun b!7748791 () Bool)

(declare-fun res!3089756 () Bool)

(assert (=> b!7748791 (=> (not res!3089756) (not e!4593844))))

(declare-fun size!42652 (List!73441) Int)

(assert (=> b!7748791 (= res!3089756 (= (size!42652 lt!2669114) (+ (size!42652 Nil!73317) (size!42652 s!9605))))))

(declare-fun b!7748792 () Bool)

(assert (=> b!7748792 (= e!4593844 (or (not (= s!9605 Nil!73317)) (= lt!2669114 Nil!73317)))))

(assert (= (and d!2342517 c!1429213) b!7748789))

(assert (= (and d!2342517 (not c!1429213)) b!7748790))

(assert (= (and d!2342517 res!3089757) b!7748791))

(assert (= (and b!7748791 res!3089756) b!7748792))

(declare-fun m!8215686 () Bool)

(assert (=> b!7748790 m!8215686))

(declare-fun m!8215688 () Bool)

(assert (=> d!2342517 m!8215688))

(declare-fun m!8215690 () Bool)

(assert (=> d!2342517 m!8215690))

(declare-fun m!8215692 () Bool)

(assert (=> d!2342517 m!8215692))

(declare-fun m!8215694 () Bool)

(assert (=> b!7748791 m!8215694))

(declare-fun m!8215696 () Bool)

(assert (=> b!7748791 m!8215696))

(declare-fun m!8215698 () Bool)

(assert (=> b!7748791 m!8215698))

(assert (=> b!7748501 d!2342517))

(declare-fun b!7748794 () Bool)

(declare-fun e!4593845 () List!73441)

(assert (=> b!7748794 (= e!4593845 (Cons!73317 (h!79765 (_1!38124 lt!2669063)) (++!17793 (t!388176 (_1!38124 lt!2669063)) (_2!38124 lt!2669063))))))

(declare-fun d!2342519 () Bool)

(declare-fun e!4593846 () Bool)

(assert (=> d!2342519 e!4593846))

(declare-fun res!3089759 () Bool)

(assert (=> d!2342519 (=> (not res!3089759) (not e!4593846))))

(declare-fun lt!2669115 () List!73441)

(assert (=> d!2342519 (= res!3089759 (= (content!15549 lt!2669115) (set.union (content!15549 (_1!38124 lt!2669063)) (content!15549 (_2!38124 lt!2669063)))))))

(assert (=> d!2342519 (= lt!2669115 e!4593845)))

(declare-fun c!1429214 () Bool)

(assert (=> d!2342519 (= c!1429214 (is-Nil!73317 (_1!38124 lt!2669063)))))

(assert (=> d!2342519 (= (++!17793 (_1!38124 lt!2669063) (_2!38124 lt!2669063)) lt!2669115)))

(declare-fun b!7748793 () Bool)

(assert (=> b!7748793 (= e!4593845 (_2!38124 lt!2669063))))

(declare-fun b!7748795 () Bool)

(declare-fun res!3089758 () Bool)

(assert (=> b!7748795 (=> (not res!3089758) (not e!4593846))))

(assert (=> b!7748795 (= res!3089758 (= (size!42652 lt!2669115) (+ (size!42652 (_1!38124 lt!2669063)) (size!42652 (_2!38124 lt!2669063)))))))

(declare-fun b!7748796 () Bool)

(assert (=> b!7748796 (= e!4593846 (or (not (= (_2!38124 lt!2669063) Nil!73317)) (= lt!2669115 (_1!38124 lt!2669063))))))

(assert (= (and d!2342519 c!1429214) b!7748793))

(assert (= (and d!2342519 (not c!1429214)) b!7748794))

(assert (= (and d!2342519 res!3089759) b!7748795))

(assert (= (and b!7748795 res!3089758) b!7748796))

(declare-fun m!8215700 () Bool)

(assert (=> b!7748794 m!8215700))

(declare-fun m!8215702 () Bool)

(assert (=> d!2342519 m!8215702))

(declare-fun m!8215704 () Bool)

(assert (=> d!2342519 m!8215704))

(declare-fun m!8215706 () Bool)

(assert (=> d!2342519 m!8215706))

(declare-fun m!8215708 () Bool)

(assert (=> b!7748795 m!8215708))

(declare-fun m!8215710 () Bool)

(assert (=> b!7748795 m!8215710))

(declare-fun m!8215712 () Bool)

(assert (=> b!7748795 m!8215712))

(assert (=> b!7748485 d!2342519))

(declare-fun b!7748797 () Bool)

(declare-fun e!4593849 () Bool)

(declare-fun call!718147 () Bool)

(assert (=> b!7748797 (= e!4593849 call!718147)))

(declare-fun b!7748798 () Bool)

(declare-fun e!4593851 () Bool)

(declare-fun e!4593850 () Bool)

(assert (=> b!7748798 (= e!4593851 e!4593850)))

(declare-fun c!1429216 () Bool)

(assert (=> b!7748798 (= c!1429216 (is-Union!20594 r!14126))))

(declare-fun b!7748799 () Bool)

(declare-fun res!3089763 () Bool)

(declare-fun e!4593847 () Bool)

(assert (=> b!7748799 (=> (not res!3089763) (not e!4593847))))

(declare-fun call!718148 () Bool)

(assert (=> b!7748799 (= res!3089763 call!718148)))

(assert (=> b!7748799 (= e!4593850 e!4593847)))

(declare-fun b!7748800 () Bool)

(declare-fun res!3089760 () Bool)

(declare-fun e!4593852 () Bool)

(assert (=> b!7748800 (=> res!3089760 e!4593852)))

(assert (=> b!7748800 (= res!3089760 (not (is-Concat!29439 r!14126)))))

(assert (=> b!7748800 (= e!4593850 e!4593852)))

(declare-fun b!7748801 () Bool)

(assert (=> b!7748801 (= e!4593851 e!4593849)))

(declare-fun res!3089762 () Bool)

(assert (=> b!7748801 (= res!3089762 (not (nullable!9067 (reg!20923 r!14126))))))

(assert (=> b!7748801 (=> (not res!3089762) (not e!4593849))))

(declare-fun d!2342521 () Bool)

(declare-fun res!3089764 () Bool)

(declare-fun e!4593848 () Bool)

(assert (=> d!2342521 (=> res!3089764 e!4593848)))

(assert (=> d!2342521 (= res!3089764 (is-ElementMatch!20594 r!14126))))

(assert (=> d!2342521 (= (validRegex!11012 r!14126) e!4593848)))

(declare-fun b!7748802 () Bool)

(declare-fun e!4593853 () Bool)

(declare-fun call!718146 () Bool)

(assert (=> b!7748802 (= e!4593853 call!718146)))

(declare-fun b!7748803 () Bool)

(assert (=> b!7748803 (= e!4593848 e!4593851)))

(declare-fun c!1429215 () Bool)

(assert (=> b!7748803 (= c!1429215 (is-Star!20594 r!14126))))

(declare-fun b!7748804 () Bool)

(assert (=> b!7748804 (= e!4593852 e!4593853)))

(declare-fun res!3089761 () Bool)

(assert (=> b!7748804 (=> (not res!3089761) (not e!4593853))))

(assert (=> b!7748804 (= res!3089761 call!718148)))

(declare-fun bm!718141 () Bool)

(assert (=> bm!718141 (= call!718148 (validRegex!11012 (ite c!1429216 (regOne!41701 r!14126) (regOne!41700 r!14126))))))

(declare-fun bm!718142 () Bool)

(assert (=> bm!718142 (= call!718147 (validRegex!11012 (ite c!1429215 (reg!20923 r!14126) (ite c!1429216 (regTwo!41701 r!14126) (regTwo!41700 r!14126)))))))

(declare-fun bm!718143 () Bool)

(assert (=> bm!718143 (= call!718146 call!718147)))

(declare-fun b!7748805 () Bool)

(assert (=> b!7748805 (= e!4593847 call!718146)))

(assert (= (and d!2342521 (not res!3089764)) b!7748803))

(assert (= (and b!7748803 c!1429215) b!7748801))

(assert (= (and b!7748803 (not c!1429215)) b!7748798))

(assert (= (and b!7748801 res!3089762) b!7748797))

(assert (= (and b!7748798 c!1429216) b!7748799))

(assert (= (and b!7748798 (not c!1429216)) b!7748800))

(assert (= (and b!7748799 res!3089763) b!7748805))

(assert (= (and b!7748800 (not res!3089760)) b!7748804))

(assert (= (and b!7748804 res!3089761) b!7748802))

(assert (= (or b!7748799 b!7748804) bm!718141))

(assert (= (or b!7748805 b!7748802) bm!718143))

(assert (= (or b!7748797 bm!718143) bm!718142))

(declare-fun m!8215714 () Bool)

(assert (=> b!7748801 m!8215714))

(declare-fun m!8215716 () Bool)

(assert (=> bm!718141 m!8215716))

(declare-fun m!8215718 () Bool)

(assert (=> bm!718142 m!8215718))

(assert (=> start!738766 d!2342521))

(declare-fun b!7748806 () Bool)

(declare-fun e!4593858 () Bool)

(declare-fun lt!2669116 () Bool)

(declare-fun call!718149 () Bool)

(assert (=> b!7748806 (= e!4593858 (= lt!2669116 call!718149))))

(declare-fun b!7748807 () Bool)

(declare-fun e!4593860 () Bool)

(assert (=> b!7748807 (= e!4593860 (not lt!2669116))))

(declare-fun b!7748808 () Bool)

(assert (=> b!7748808 (= e!4593858 e!4593860)))

(declare-fun c!1429217 () Bool)

(assert (=> b!7748808 (= c!1429217 (is-EmptyLang!20594 r!14126))))

(declare-fun b!7748809 () Bool)

(declare-fun e!4593855 () Bool)

(assert (=> b!7748809 (= e!4593855 (not (= (head!15826 s!9605) (c!1429156 r!14126))))))

(declare-fun b!7748810 () Bool)

(declare-fun e!4593856 () Bool)

(assert (=> b!7748810 (= e!4593856 (= (head!15826 s!9605) (c!1429156 r!14126)))))

(declare-fun b!7748811 () Bool)

(declare-fun res!3089767 () Bool)

(declare-fun e!4593857 () Bool)

(assert (=> b!7748811 (=> res!3089767 e!4593857)))

(assert (=> b!7748811 (= res!3089767 (not (is-ElementMatch!20594 r!14126)))))

(assert (=> b!7748811 (= e!4593860 e!4593857)))

(declare-fun b!7748812 () Bool)

(declare-fun res!3089769 () Bool)

(assert (=> b!7748812 (=> res!3089769 e!4593857)))

(assert (=> b!7748812 (= res!3089769 e!4593856)))

(declare-fun res!3089771 () Bool)

(assert (=> b!7748812 (=> (not res!3089771) (not e!4593856))))

(assert (=> b!7748812 (= res!3089771 lt!2669116)))

(declare-fun b!7748813 () Bool)

(declare-fun e!4593854 () Bool)

(assert (=> b!7748813 (= e!4593854 e!4593855)))

(declare-fun res!3089768 () Bool)

(assert (=> b!7748813 (=> res!3089768 e!4593855)))

(assert (=> b!7748813 (= res!3089768 call!718149)))

(declare-fun b!7748814 () Bool)

(declare-fun e!4593859 () Bool)

(assert (=> b!7748814 (= e!4593859 (matchR!10086 (derivativeStep!6026 r!14126 (head!15826 s!9605)) (tail!15366 s!9605)))))

(declare-fun b!7748816 () Bool)

(assert (=> b!7748816 (= e!4593857 e!4593854)))

(declare-fun res!3089770 () Bool)

(assert (=> b!7748816 (=> (not res!3089770) (not e!4593854))))

(assert (=> b!7748816 (= res!3089770 (not lt!2669116))))

(declare-fun b!7748817 () Bool)

(declare-fun res!3089772 () Bool)

(assert (=> b!7748817 (=> res!3089772 e!4593855)))

(assert (=> b!7748817 (= res!3089772 (not (isEmpty!42013 (tail!15366 s!9605))))))

(declare-fun bm!718144 () Bool)

(assert (=> bm!718144 (= call!718149 (isEmpty!42013 s!9605))))

(declare-fun b!7748818 () Bool)

(declare-fun res!3089766 () Bool)

(assert (=> b!7748818 (=> (not res!3089766) (not e!4593856))))

(assert (=> b!7748818 (= res!3089766 (not call!718149))))

(declare-fun b!7748819 () Bool)

(assert (=> b!7748819 (= e!4593859 (nullable!9067 r!14126))))

(declare-fun b!7748815 () Bool)

(declare-fun res!3089765 () Bool)

(assert (=> b!7748815 (=> (not res!3089765) (not e!4593856))))

(assert (=> b!7748815 (= res!3089765 (isEmpty!42013 (tail!15366 s!9605)))))

(declare-fun d!2342523 () Bool)

(assert (=> d!2342523 e!4593858))

(declare-fun c!1429218 () Bool)

(assert (=> d!2342523 (= c!1429218 (is-EmptyExpr!20594 r!14126))))

(assert (=> d!2342523 (= lt!2669116 e!4593859)))

(declare-fun c!1429219 () Bool)

(assert (=> d!2342523 (= c!1429219 (isEmpty!42013 s!9605))))

(assert (=> d!2342523 (validRegex!11012 r!14126)))

(assert (=> d!2342523 (= (matchR!10086 r!14126 s!9605) lt!2669116)))

(assert (= (and d!2342523 c!1429219) b!7748819))

(assert (= (and d!2342523 (not c!1429219)) b!7748814))

(assert (= (and d!2342523 c!1429218) b!7748806))

(assert (= (and d!2342523 (not c!1429218)) b!7748808))

(assert (= (and b!7748808 c!1429217) b!7748807))

(assert (= (and b!7748808 (not c!1429217)) b!7748811))

(assert (= (and b!7748811 (not res!3089767)) b!7748812))

(assert (= (and b!7748812 res!3089771) b!7748818))

(assert (= (and b!7748818 res!3089766) b!7748815))

(assert (= (and b!7748815 res!3089765) b!7748810))

(assert (= (and b!7748812 (not res!3089769)) b!7748816))

(assert (= (and b!7748816 res!3089770) b!7748813))

(assert (= (and b!7748813 (not res!3089768)) b!7748817))

(assert (= (and b!7748817 (not res!3089772)) b!7748809))

(assert (= (or b!7748806 b!7748818 b!7748813) bm!718144))

(declare-fun m!8215720 () Bool)

(assert (=> b!7748819 m!8215720))

(declare-fun m!8215722 () Bool)

(assert (=> bm!718144 m!8215722))

(declare-fun m!8215724 () Bool)

(assert (=> b!7748809 m!8215724))

(assert (=> b!7748810 m!8215724))

(declare-fun m!8215726 () Bool)

(assert (=> b!7748817 m!8215726))

(assert (=> b!7748817 m!8215726))

(declare-fun m!8215728 () Bool)

(assert (=> b!7748817 m!8215728))

(assert (=> b!7748815 m!8215726))

(assert (=> b!7748815 m!8215726))

(assert (=> b!7748815 m!8215728))

(assert (=> b!7748814 m!8215724))

(assert (=> b!7748814 m!8215724))

(declare-fun m!8215730 () Bool)

(assert (=> b!7748814 m!8215730))

(assert (=> b!7748814 m!8215726))

(assert (=> b!7748814 m!8215730))

(assert (=> b!7748814 m!8215726))

(declare-fun m!8215732 () Bool)

(assert (=> b!7748814 m!8215732))

(assert (=> d!2342523 m!8215722))

(assert (=> d!2342523 m!8215560))

(assert (=> b!7748486 d!2342523))

(declare-fun d!2342525 () Bool)

(assert (=> d!2342525 (= (Exists!4715 lambda!471846) (choose!59416 lambda!471846))))

(declare-fun bs!1965725 () Bool)

(assert (= bs!1965725 d!2342525))

(declare-fun m!8215734 () Bool)

(assert (=> bs!1965725 m!8215734))

(assert (=> b!7748486 d!2342525))

(declare-fun bs!1965726 () Bool)

(declare-fun d!2342527 () Bool)

(assert (= bs!1965726 (and d!2342527 b!7748490)))

(declare-fun lambda!471872 () Int)

(assert (=> bs!1965726 (not (= lambda!471872 lambda!471847))))

(declare-fun bs!1965727 () Bool)

(assert (= bs!1965727 (and d!2342527 b!7748709)))

(assert (=> bs!1965727 (not (= lambda!471872 lambda!471863))))

(declare-fun bs!1965728 () Bool)

(assert (= bs!1965728 (and d!2342527 b!7748486)))

(assert (=> bs!1965728 (= lambda!471872 lambda!471846)))

(declare-fun bs!1965729 () Bool)

(assert (= bs!1965729 (and d!2342527 b!7748743)))

(assert (=> bs!1965729 (not (= lambda!471872 lambda!471865))))

(declare-fun bs!1965730 () Bool)

(assert (= bs!1965730 (and d!2342527 b!7748747)))

(assert (=> bs!1965730 (not (= lambda!471872 lambda!471864))))

(declare-fun bs!1965731 () Bool)

(assert (= bs!1965731 (and d!2342527 b!7748713)))

(assert (=> bs!1965731 (not (= lambda!471872 lambda!471862))))

(assert (=> d!2342527 true))

(assert (=> d!2342527 true))

(assert (=> d!2342527 true))

(assert (=> d!2342527 (= (isDefined!14231 (findConcatSeparation!3645 (regOne!41700 r!14126) (regTwo!41700 r!14126) Nil!73317 s!9605 s!9605)) (Exists!4715 lambda!471872))))

(declare-fun lt!2669119 () Unit!168300)

(declare-fun choose!59420 (Regex!20594 Regex!20594 List!73441) Unit!168300)

(assert (=> d!2342527 (= lt!2669119 (choose!59420 (regOne!41700 r!14126) (regTwo!41700 r!14126) s!9605))))

(assert (=> d!2342527 (validRegex!11012 (regOne!41700 r!14126))))

(assert (=> d!2342527 (= (lemmaFindConcatSeparationEquivalentToExists!3403 (regOne!41700 r!14126) (regTwo!41700 r!14126) s!9605) lt!2669119)))

(declare-fun bs!1965732 () Bool)

(assert (= bs!1965732 d!2342527))

(assert (=> bs!1965732 m!8215532))

(declare-fun m!8215736 () Bool)

(assert (=> bs!1965732 m!8215736))

(declare-fun m!8215738 () Bool)

(assert (=> bs!1965732 m!8215738))

(declare-fun m!8215740 () Bool)

(assert (=> bs!1965732 m!8215740))

(assert (=> bs!1965732 m!8215532))

(assert (=> bs!1965732 m!8215552))

(assert (=> b!7748486 d!2342527))

(declare-fun d!2342529 () Bool)

(declare-fun isEmpty!42014 (Option!17615) Bool)

(assert (=> d!2342529 (= (isDefined!14231 lt!2669062) (not (isEmpty!42014 lt!2669062)))))

(declare-fun bs!1965733 () Bool)

(assert (= bs!1965733 d!2342529))

(declare-fun m!8215742 () Bool)

(assert (=> bs!1965733 m!8215742))

(assert (=> b!7748486 d!2342529))

(declare-fun d!2342531 () Bool)

(declare-fun e!4593884 () Bool)

(assert (=> d!2342531 e!4593884))

(declare-fun res!3089798 () Bool)

(assert (=> d!2342531 (=> res!3089798 e!4593884)))

(declare-fun e!4593883 () Bool)

(assert (=> d!2342531 (= res!3089798 e!4593883)))

(declare-fun res!3089797 () Bool)

(assert (=> d!2342531 (=> (not res!3089797) (not e!4593883))))

(declare-fun lt!2669127 () Option!17615)

(assert (=> d!2342531 (= res!3089797 (isDefined!14231 lt!2669127))))

(declare-fun e!4593882 () Option!17615)

(assert (=> d!2342531 (= lt!2669127 e!4593882)))

(declare-fun c!1429228 () Bool)

(declare-fun e!4593886 () Bool)

(assert (=> d!2342531 (= c!1429228 e!4593886)))

(declare-fun res!3089796 () Bool)

(assert (=> d!2342531 (=> (not res!3089796) (not e!4593886))))

(assert (=> d!2342531 (= res!3089796 (matchR!10086 (regOne!41700 r!14126) Nil!73317))))

(assert (=> d!2342531 (validRegex!11012 (regOne!41700 r!14126))))

(assert (=> d!2342531 (= (findConcatSeparation!3645 (regOne!41700 r!14126) (regTwo!41700 r!14126) Nil!73317 s!9605 s!9605) lt!2669127)))

(declare-fun b!7748857 () Bool)

(declare-fun lt!2669128 () Unit!168300)

(declare-fun lt!2669126 () Unit!168300)

(assert (=> b!7748857 (= lt!2669128 lt!2669126)))

(assert (=> b!7748857 (= (++!17793 (++!17793 Nil!73317 (Cons!73317 (h!79765 s!9605) Nil!73317)) (t!388176 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3339 (List!73441 C!41514 List!73441 List!73441) Unit!168300)

(assert (=> b!7748857 (= lt!2669126 (lemmaMoveElementToOtherListKeepsConcatEq!3339 Nil!73317 (h!79765 s!9605) (t!388176 s!9605) s!9605))))

(declare-fun e!4593885 () Option!17615)

(assert (=> b!7748857 (= e!4593885 (findConcatSeparation!3645 (regOne!41700 r!14126) (regTwo!41700 r!14126) (++!17793 Nil!73317 (Cons!73317 (h!79765 s!9605) Nil!73317)) (t!388176 s!9605) s!9605))))

(declare-fun b!7748858 () Bool)

(declare-fun res!3089794 () Bool)

(assert (=> b!7748858 (=> (not res!3089794) (not e!4593883))))

(assert (=> b!7748858 (= res!3089794 (matchR!10086 (regOne!41700 r!14126) (_1!38124 (get!26082 lt!2669127))))))

(declare-fun b!7748859 () Bool)

(assert (=> b!7748859 (= e!4593886 (matchR!10086 (regTwo!41700 r!14126) s!9605))))

(declare-fun b!7748860 () Bool)

(assert (=> b!7748860 (= e!4593882 (Some!17614 (tuple2!69643 Nil!73317 s!9605)))))

(declare-fun b!7748861 () Bool)

(assert (=> b!7748861 (= e!4593884 (not (isDefined!14231 lt!2669127)))))

(declare-fun b!7748862 () Bool)

(declare-fun res!3089795 () Bool)

(assert (=> b!7748862 (=> (not res!3089795) (not e!4593883))))

(assert (=> b!7748862 (= res!3089795 (matchR!10086 (regTwo!41700 r!14126) (_2!38124 (get!26082 lt!2669127))))))

(declare-fun b!7748863 () Bool)

(assert (=> b!7748863 (= e!4593882 e!4593885)))

(declare-fun c!1429229 () Bool)

(assert (=> b!7748863 (= c!1429229 (is-Nil!73317 s!9605))))

(declare-fun b!7748864 () Bool)

(assert (=> b!7748864 (= e!4593883 (= (++!17793 (_1!38124 (get!26082 lt!2669127)) (_2!38124 (get!26082 lt!2669127))) s!9605))))

(declare-fun b!7748865 () Bool)

(assert (=> b!7748865 (= e!4593885 None!17614)))

(assert (= (and d!2342531 res!3089796) b!7748859))

(assert (= (and d!2342531 c!1429228) b!7748860))

(assert (= (and d!2342531 (not c!1429228)) b!7748863))

(assert (= (and b!7748863 c!1429229) b!7748865))

(assert (= (and b!7748863 (not c!1429229)) b!7748857))

(assert (= (and d!2342531 res!3089797) b!7748858))

(assert (= (and b!7748858 res!3089794) b!7748862))

(assert (= (and b!7748862 res!3089795) b!7748864))

(assert (= (and d!2342531 (not res!3089798)) b!7748861))

(declare-fun m!8215752 () Bool)

(assert (=> b!7748857 m!8215752))

(assert (=> b!7748857 m!8215752))

(declare-fun m!8215754 () Bool)

(assert (=> b!7748857 m!8215754))

(declare-fun m!8215756 () Bool)

(assert (=> b!7748857 m!8215756))

(assert (=> b!7748857 m!8215752))

(declare-fun m!8215758 () Bool)

(assert (=> b!7748857 m!8215758))

(declare-fun m!8215760 () Bool)

(assert (=> b!7748858 m!8215760))

(declare-fun m!8215762 () Bool)

(assert (=> b!7748858 m!8215762))

(assert (=> b!7748864 m!8215760))

(declare-fun m!8215764 () Bool)

(assert (=> b!7748864 m!8215764))

(assert (=> b!7748862 m!8215760))

(declare-fun m!8215766 () Bool)

(assert (=> b!7748862 m!8215766))

(declare-fun m!8215768 () Bool)

(assert (=> b!7748859 m!8215768))

(declare-fun m!8215770 () Bool)

(assert (=> b!7748861 m!8215770))

(assert (=> d!2342531 m!8215770))

(declare-fun m!8215772 () Bool)

(assert (=> d!2342531 m!8215772))

(assert (=> d!2342531 m!8215552))

(assert (=> b!7748486 d!2342531))

(declare-fun d!2342535 () Bool)

(assert (=> d!2342535 (= (get!26082 lt!2669062) (v!54749 lt!2669062))))

(assert (=> b!7748491 d!2342535))

(declare-fun d!2342537 () Bool)

(assert (=> d!2342537 (matchR!10086 (Concat!29439 (regOne!41700 r!14126) (regTwo!41700 r!14126)) (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058)))))

(declare-fun lt!2669134 () Unit!168300)

(declare-fun choose!59422 (Regex!20594 Regex!20594 List!73441 List!73441 List!73441) Unit!168300)

(assert (=> d!2342537 (= lt!2669134 (choose!59422 (regOne!41700 r!14126) (regTwo!41700 r!14126) (_1!38124 lt!2669058) (_2!38124 lt!2669058) s!9605))))

(assert (=> d!2342537 (validRegex!11012 (regOne!41700 r!14126))))

(assert (=> d!2342537 (= (lemmaFindSeparationIsDefinedThenConcatMatches!219 (regOne!41700 r!14126) (regTwo!41700 r!14126) (_1!38124 lt!2669058) (_2!38124 lt!2669058) s!9605) lt!2669134)))

(declare-fun bs!1965740 () Bool)

(assert (= bs!1965740 d!2342537))

(assert (=> bs!1965740 m!8215526))

(assert (=> bs!1965740 m!8215526))

(declare-fun m!8215776 () Bool)

(assert (=> bs!1965740 m!8215776))

(declare-fun m!8215778 () Bool)

(assert (=> bs!1965740 m!8215778))

(assert (=> bs!1965740 m!8215552))

(assert (=> b!7748491 d!2342537))

(declare-fun b!7748877 () Bool)

(declare-fun e!4593898 () Bool)

(declare-fun lt!2669135 () Bool)

(declare-fun call!718158 () Bool)

(assert (=> b!7748877 (= e!4593898 (= lt!2669135 call!718158))))

(declare-fun b!7748878 () Bool)

(declare-fun e!4593900 () Bool)

(assert (=> b!7748878 (= e!4593900 (not lt!2669135))))

(declare-fun b!7748879 () Bool)

(assert (=> b!7748879 (= e!4593898 e!4593900)))

(declare-fun c!1429234 () Bool)

(assert (=> b!7748879 (= c!1429234 (is-EmptyLang!20594 r!14126))))

(declare-fun b!7748880 () Bool)

(declare-fun e!4593895 () Bool)

(assert (=> b!7748880 (= e!4593895 (not (= (head!15826 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058))) (c!1429156 r!14126))))))

(declare-fun b!7748881 () Bool)

(declare-fun e!4593896 () Bool)

(assert (=> b!7748881 (= e!4593896 (= (head!15826 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058))) (c!1429156 r!14126)))))

(declare-fun b!7748882 () Bool)

(declare-fun res!3089804 () Bool)

(declare-fun e!4593897 () Bool)

(assert (=> b!7748882 (=> res!3089804 e!4593897)))

(assert (=> b!7748882 (= res!3089804 (not (is-ElementMatch!20594 r!14126)))))

(assert (=> b!7748882 (= e!4593900 e!4593897)))

(declare-fun b!7748883 () Bool)

(declare-fun res!3089806 () Bool)

(assert (=> b!7748883 (=> res!3089806 e!4593897)))

(assert (=> b!7748883 (= res!3089806 e!4593896)))

(declare-fun res!3089808 () Bool)

(assert (=> b!7748883 (=> (not res!3089808) (not e!4593896))))

(assert (=> b!7748883 (= res!3089808 lt!2669135)))

(declare-fun b!7748884 () Bool)

(declare-fun e!4593894 () Bool)

(assert (=> b!7748884 (= e!4593894 e!4593895)))

(declare-fun res!3089805 () Bool)

(assert (=> b!7748884 (=> res!3089805 e!4593895)))

(assert (=> b!7748884 (= res!3089805 call!718158)))

(declare-fun b!7748885 () Bool)

(declare-fun e!4593899 () Bool)

(assert (=> b!7748885 (= e!4593899 (matchR!10086 (derivativeStep!6026 r!14126 (head!15826 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058)))) (tail!15366 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058)))))))

(declare-fun b!7748887 () Bool)

(assert (=> b!7748887 (= e!4593897 e!4593894)))

(declare-fun res!3089807 () Bool)

(assert (=> b!7748887 (=> (not res!3089807) (not e!4593894))))

(assert (=> b!7748887 (= res!3089807 (not lt!2669135))))

(declare-fun b!7748888 () Bool)

(declare-fun res!3089809 () Bool)

(assert (=> b!7748888 (=> res!3089809 e!4593895)))

(assert (=> b!7748888 (= res!3089809 (not (isEmpty!42013 (tail!15366 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058))))))))

(declare-fun bm!718153 () Bool)

(assert (=> bm!718153 (= call!718158 (isEmpty!42013 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058))))))

(declare-fun b!7748889 () Bool)

(declare-fun res!3089803 () Bool)

(assert (=> b!7748889 (=> (not res!3089803) (not e!4593896))))

(assert (=> b!7748889 (= res!3089803 (not call!718158))))

(declare-fun b!7748890 () Bool)

(assert (=> b!7748890 (= e!4593899 (nullable!9067 r!14126))))

(declare-fun b!7748886 () Bool)

(declare-fun res!3089802 () Bool)

(assert (=> b!7748886 (=> (not res!3089802) (not e!4593896))))

(assert (=> b!7748886 (= res!3089802 (isEmpty!42013 (tail!15366 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058)))))))

(declare-fun d!2342541 () Bool)

(assert (=> d!2342541 e!4593898))

(declare-fun c!1429235 () Bool)

(assert (=> d!2342541 (= c!1429235 (is-EmptyExpr!20594 r!14126))))

(assert (=> d!2342541 (= lt!2669135 e!4593899)))

(declare-fun c!1429236 () Bool)

(assert (=> d!2342541 (= c!1429236 (isEmpty!42013 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058))))))

(assert (=> d!2342541 (validRegex!11012 r!14126)))

(assert (=> d!2342541 (= (matchR!10086 r!14126 (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058))) lt!2669135)))

(assert (= (and d!2342541 c!1429236) b!7748890))

(assert (= (and d!2342541 (not c!1429236)) b!7748885))

(assert (= (and d!2342541 c!1429235) b!7748877))

(assert (= (and d!2342541 (not c!1429235)) b!7748879))

(assert (= (and b!7748879 c!1429234) b!7748878))

(assert (= (and b!7748879 (not c!1429234)) b!7748882))

(assert (= (and b!7748882 (not res!3089804)) b!7748883))

(assert (= (and b!7748883 res!3089808) b!7748889))

(assert (= (and b!7748889 res!3089803) b!7748886))

(assert (= (and b!7748886 res!3089802) b!7748881))

(assert (= (and b!7748883 (not res!3089806)) b!7748887))

(assert (= (and b!7748887 res!3089807) b!7748884))

(assert (= (and b!7748884 (not res!3089805)) b!7748888))

(assert (= (and b!7748888 (not res!3089809)) b!7748880))

(assert (= (or b!7748877 b!7748889 b!7748884) bm!718153))

(assert (=> b!7748890 m!8215720))

(assert (=> bm!718153 m!8215526))

(declare-fun m!8215780 () Bool)

(assert (=> bm!718153 m!8215780))

(assert (=> b!7748880 m!8215526))

(declare-fun m!8215782 () Bool)

(assert (=> b!7748880 m!8215782))

(assert (=> b!7748881 m!8215526))

(assert (=> b!7748881 m!8215782))

(assert (=> b!7748888 m!8215526))

(declare-fun m!8215784 () Bool)

(assert (=> b!7748888 m!8215784))

(assert (=> b!7748888 m!8215784))

(declare-fun m!8215786 () Bool)

(assert (=> b!7748888 m!8215786))

(assert (=> b!7748886 m!8215526))

(assert (=> b!7748886 m!8215784))

(assert (=> b!7748886 m!8215784))

(assert (=> b!7748886 m!8215786))

(assert (=> b!7748885 m!8215526))

(assert (=> b!7748885 m!8215782))

(assert (=> b!7748885 m!8215782))

(declare-fun m!8215788 () Bool)

(assert (=> b!7748885 m!8215788))

(assert (=> b!7748885 m!8215526))

(assert (=> b!7748885 m!8215784))

(assert (=> b!7748885 m!8215788))

(assert (=> b!7748885 m!8215784))

(declare-fun m!8215790 () Bool)

(assert (=> b!7748885 m!8215790))

(assert (=> d!2342541 m!8215526))

(assert (=> d!2342541 m!8215780))

(assert (=> d!2342541 m!8215560))

(assert (=> b!7748491 d!2342541))

(declare-fun b!7748892 () Bool)

(declare-fun e!4593901 () List!73441)

(assert (=> b!7748892 (= e!4593901 (Cons!73317 (h!79765 (_1!38124 lt!2669058)) (++!17793 (t!388176 (_1!38124 lt!2669058)) (_2!38124 lt!2669058))))))

(declare-fun d!2342543 () Bool)

(declare-fun e!4593902 () Bool)

(assert (=> d!2342543 e!4593902))

(declare-fun res!3089811 () Bool)

(assert (=> d!2342543 (=> (not res!3089811) (not e!4593902))))

(declare-fun lt!2669136 () List!73441)

(assert (=> d!2342543 (= res!3089811 (= (content!15549 lt!2669136) (set.union (content!15549 (_1!38124 lt!2669058)) (content!15549 (_2!38124 lt!2669058)))))))

(assert (=> d!2342543 (= lt!2669136 e!4593901)))

(declare-fun c!1429237 () Bool)

(assert (=> d!2342543 (= c!1429237 (is-Nil!73317 (_1!38124 lt!2669058)))))

(assert (=> d!2342543 (= (++!17793 (_1!38124 lt!2669058) (_2!38124 lt!2669058)) lt!2669136)))

(declare-fun b!7748891 () Bool)

(assert (=> b!7748891 (= e!4593901 (_2!38124 lt!2669058))))

(declare-fun b!7748893 () Bool)

(declare-fun res!3089810 () Bool)

(assert (=> b!7748893 (=> (not res!3089810) (not e!4593902))))

(assert (=> b!7748893 (= res!3089810 (= (size!42652 lt!2669136) (+ (size!42652 (_1!38124 lt!2669058)) (size!42652 (_2!38124 lt!2669058)))))))

(declare-fun b!7748894 () Bool)

(assert (=> b!7748894 (= e!4593902 (or (not (= (_2!38124 lt!2669058) Nil!73317)) (= lt!2669136 (_1!38124 lt!2669058))))))

(assert (= (and d!2342543 c!1429237) b!7748891))

(assert (= (and d!2342543 (not c!1429237)) b!7748892))

(assert (= (and d!2342543 res!3089811) b!7748893))

(assert (= (and b!7748893 res!3089810) b!7748894))

(declare-fun m!8215792 () Bool)

(assert (=> b!7748892 m!8215792))

(declare-fun m!8215794 () Bool)

(assert (=> d!2342543 m!8215794))

(declare-fun m!8215796 () Bool)

(assert (=> d!2342543 m!8215796))

(declare-fun m!8215798 () Bool)

(assert (=> d!2342543 m!8215798))

(declare-fun m!8215800 () Bool)

(assert (=> b!7748893 m!8215800))

(declare-fun m!8215802 () Bool)

(assert (=> b!7748893 m!8215802))

(declare-fun m!8215804 () Bool)

(assert (=> b!7748893 m!8215804))

(assert (=> b!7748491 d!2342543))

(declare-fun b!7748906 () Bool)

(declare-fun e!4593911 () Bool)

(assert (=> b!7748906 (= e!4593911 (>= (size!42652 (_1!38124 lt!2669063)) (size!42652 Nil!73317)))))

(declare-fun b!7748903 () Bool)

(declare-fun e!4593910 () Bool)

(declare-fun e!4593909 () Bool)

(assert (=> b!7748903 (= e!4593910 e!4593909)))

(declare-fun res!3089821 () Bool)

(assert (=> b!7748903 (=> (not res!3089821) (not e!4593909))))

(assert (=> b!7748903 (= res!3089821 (not (is-Nil!73317 (_1!38124 lt!2669063))))))

(declare-fun b!7748905 () Bool)

(assert (=> b!7748905 (= e!4593909 (isPrefix!6238 (tail!15366 Nil!73317) (tail!15366 (_1!38124 lt!2669063))))))

(declare-fun d!2342545 () Bool)

(assert (=> d!2342545 e!4593911))

(declare-fun res!3089823 () Bool)

(assert (=> d!2342545 (=> res!3089823 e!4593911)))

(declare-fun lt!2669139 () Bool)

(assert (=> d!2342545 (= res!3089823 (not lt!2669139))))

(assert (=> d!2342545 (= lt!2669139 e!4593910)))

(declare-fun res!3089820 () Bool)

(assert (=> d!2342545 (=> res!3089820 e!4593910)))

(assert (=> d!2342545 (= res!3089820 (is-Nil!73317 Nil!73317))))

(assert (=> d!2342545 (= (isPrefix!6238 Nil!73317 (_1!38124 lt!2669063)) lt!2669139)))

(declare-fun b!7748904 () Bool)

(declare-fun res!3089822 () Bool)

(assert (=> b!7748904 (=> (not res!3089822) (not e!4593909))))

(assert (=> b!7748904 (= res!3089822 (= (head!15826 Nil!73317) (head!15826 (_1!38124 lt!2669063))))))

(assert (= (and d!2342545 (not res!3089820)) b!7748903))

(assert (= (and b!7748903 res!3089821) b!7748904))

(assert (= (and b!7748904 res!3089822) b!7748905))

(assert (= (and d!2342545 (not res!3089823)) b!7748906))

(assert (=> b!7748906 m!8215710))

(assert (=> b!7748906 m!8215696))

(declare-fun m!8215814 () Bool)

(assert (=> b!7748905 m!8215814))

(assert (=> b!7748905 m!8215662))

(assert (=> b!7748905 m!8215814))

(assert (=> b!7748905 m!8215662))

(declare-fun m!8215816 () Bool)

(assert (=> b!7748905 m!8215816))

(declare-fun m!8215818 () Bool)

(assert (=> b!7748904 m!8215818))

(assert (=> b!7748904 m!8215660))

(assert (=> b!7748497 d!2342545))

(assert (=> b!7748498 d!2342525))

(declare-fun e!4593914 () Bool)

(assert (=> b!7748499 (= tp!2273318 e!4593914)))

(declare-fun b!7748920 () Bool)

(declare-fun tp!2273351 () Bool)

(declare-fun tp!2273348 () Bool)

(assert (=> b!7748920 (= e!4593914 (and tp!2273351 tp!2273348))))

(declare-fun b!7748918 () Bool)

(declare-fun tp!2273349 () Bool)

(declare-fun tp!2273352 () Bool)

(assert (=> b!7748918 (= e!4593914 (and tp!2273349 tp!2273352))))

(declare-fun b!7748919 () Bool)

(declare-fun tp!2273350 () Bool)

(assert (=> b!7748919 (= e!4593914 tp!2273350)))

(declare-fun b!7748917 () Bool)

(assert (=> b!7748917 (= e!4593914 tp_is_empty!51543)))

(assert (= (and b!7748499 (is-ElementMatch!20594 (reg!20923 r!14126))) b!7748917))

(assert (= (and b!7748499 (is-Concat!29439 (reg!20923 r!14126))) b!7748918))

(assert (= (and b!7748499 (is-Star!20594 (reg!20923 r!14126))) b!7748919))

(assert (= (and b!7748499 (is-Union!20594 (reg!20923 r!14126))) b!7748920))

(declare-fun e!4593915 () Bool)

(assert (=> b!7748500 (= tp!2273315 e!4593915)))

(declare-fun b!7748924 () Bool)

(declare-fun tp!2273356 () Bool)

(declare-fun tp!2273353 () Bool)

(assert (=> b!7748924 (= e!4593915 (and tp!2273356 tp!2273353))))

(declare-fun b!7748922 () Bool)

(declare-fun tp!2273354 () Bool)

(declare-fun tp!2273357 () Bool)

(assert (=> b!7748922 (= e!4593915 (and tp!2273354 tp!2273357))))

(declare-fun b!7748923 () Bool)

(declare-fun tp!2273355 () Bool)

(assert (=> b!7748923 (= e!4593915 tp!2273355)))

(declare-fun b!7748921 () Bool)

(assert (=> b!7748921 (= e!4593915 tp_is_empty!51543)))

(assert (= (and b!7748500 (is-ElementMatch!20594 (regOne!41700 r!14126))) b!7748921))

(assert (= (and b!7748500 (is-Concat!29439 (regOne!41700 r!14126))) b!7748922))

(assert (= (and b!7748500 (is-Star!20594 (regOne!41700 r!14126))) b!7748923))

(assert (= (and b!7748500 (is-Union!20594 (regOne!41700 r!14126))) b!7748924))

(declare-fun e!4593916 () Bool)

(assert (=> b!7748500 (= tp!2273319 e!4593916)))

(declare-fun b!7748928 () Bool)

(declare-fun tp!2273361 () Bool)

(declare-fun tp!2273358 () Bool)

(assert (=> b!7748928 (= e!4593916 (and tp!2273361 tp!2273358))))

(declare-fun b!7748926 () Bool)

(declare-fun tp!2273359 () Bool)

(declare-fun tp!2273362 () Bool)

(assert (=> b!7748926 (= e!4593916 (and tp!2273359 tp!2273362))))

(declare-fun b!7748927 () Bool)

(declare-fun tp!2273360 () Bool)

(assert (=> b!7748927 (= e!4593916 tp!2273360)))

(declare-fun b!7748925 () Bool)

(assert (=> b!7748925 (= e!4593916 tp_is_empty!51543)))

(assert (= (and b!7748500 (is-ElementMatch!20594 (regTwo!41700 r!14126))) b!7748925))

(assert (= (and b!7748500 (is-Concat!29439 (regTwo!41700 r!14126))) b!7748926))

(assert (= (and b!7748500 (is-Star!20594 (regTwo!41700 r!14126))) b!7748927))

(assert (= (and b!7748500 (is-Union!20594 (regTwo!41700 r!14126))) b!7748928))

(declare-fun e!4593917 () Bool)

(assert (=> b!7748492 (= tp!2273314 e!4593917)))

(declare-fun b!7748932 () Bool)

(declare-fun tp!2273366 () Bool)

(declare-fun tp!2273363 () Bool)

(assert (=> b!7748932 (= e!4593917 (and tp!2273366 tp!2273363))))

(declare-fun b!7748930 () Bool)

(declare-fun tp!2273364 () Bool)

(declare-fun tp!2273367 () Bool)

(assert (=> b!7748930 (= e!4593917 (and tp!2273364 tp!2273367))))

(declare-fun b!7748931 () Bool)

(declare-fun tp!2273365 () Bool)

(assert (=> b!7748931 (= e!4593917 tp!2273365)))

(declare-fun b!7748929 () Bool)

(assert (=> b!7748929 (= e!4593917 tp_is_empty!51543)))

(assert (= (and b!7748492 (is-ElementMatch!20594 (regOne!41701 r!14126))) b!7748929))

(assert (= (and b!7748492 (is-Concat!29439 (regOne!41701 r!14126))) b!7748930))

(assert (= (and b!7748492 (is-Star!20594 (regOne!41701 r!14126))) b!7748931))

(assert (= (and b!7748492 (is-Union!20594 (regOne!41701 r!14126))) b!7748932))

(declare-fun e!4593918 () Bool)

(assert (=> b!7748492 (= tp!2273316 e!4593918)))

(declare-fun b!7748936 () Bool)

(declare-fun tp!2273371 () Bool)

(declare-fun tp!2273368 () Bool)

(assert (=> b!7748936 (= e!4593918 (and tp!2273371 tp!2273368))))

(declare-fun b!7748934 () Bool)

(declare-fun tp!2273369 () Bool)

(declare-fun tp!2273372 () Bool)

(assert (=> b!7748934 (= e!4593918 (and tp!2273369 tp!2273372))))

(declare-fun b!7748935 () Bool)

(declare-fun tp!2273370 () Bool)

(assert (=> b!7748935 (= e!4593918 tp!2273370)))

(declare-fun b!7748933 () Bool)

(assert (=> b!7748933 (= e!4593918 tp_is_empty!51543)))

(assert (= (and b!7748492 (is-ElementMatch!20594 (regTwo!41701 r!14126))) b!7748933))

(assert (= (and b!7748492 (is-Concat!29439 (regTwo!41701 r!14126))) b!7748934))

(assert (= (and b!7748492 (is-Star!20594 (regTwo!41701 r!14126))) b!7748935))

(assert (= (and b!7748492 (is-Union!20594 (regTwo!41701 r!14126))) b!7748936))

(declare-fun b!7748941 () Bool)

(declare-fun e!4593921 () Bool)

(declare-fun tp!2273375 () Bool)

(assert (=> b!7748941 (= e!4593921 (and tp_is_empty!51543 tp!2273375))))

(assert (=> b!7748487 (= tp!2273317 e!4593921)))

(assert (= (and b!7748487 (is-Cons!73317 (t!388176 s!9605))) b!7748941))

(declare-fun b_lambda!289429 () Bool)

(assert (= b_lambda!289427 (or b!7748490 b_lambda!289429)))

(declare-fun bs!1965750 () Bool)

(declare-fun d!2342549 () Bool)

(assert (= bs!1965750 (and d!2342549 b!7748490)))

(declare-fun res!3089824 () Bool)

(declare-fun e!4593922 () Bool)

(assert (=> bs!1965750 (=> (not res!3089824) (not e!4593922))))

(assert (=> bs!1965750 (= res!3089824 (= (++!17793 (_1!38124 lt!2669106) (_2!38124 lt!2669106)) s!9605))))

(assert (=> bs!1965750 (= (dynLambda!29986 lambda!471847 lt!2669106) e!4593922)))

(declare-fun b!7748942 () Bool)

(declare-fun res!3089825 () Bool)

(assert (=> b!7748942 (=> (not res!3089825) (not e!4593922))))

(assert (=> b!7748942 (= res!3089825 (matchRSpec!4659 (regOne!41700 r!14126) (_1!38124 lt!2669106)))))

(declare-fun b!7748943 () Bool)

(assert (=> b!7748943 (= e!4593922 (matchRSpec!4659 (regTwo!41700 r!14126) (_2!38124 lt!2669106)))))

(assert (= (and bs!1965750 res!3089824) b!7748942))

(assert (= (and b!7748942 res!3089825) b!7748943))

(declare-fun m!8215820 () Bool)

(assert (=> bs!1965750 m!8215820))

(declare-fun m!8215822 () Bool)

(assert (=> b!7748942 m!8215822))

(declare-fun m!8215824 () Bool)

(assert (=> b!7748943 m!8215824))

(assert (=> d!2342499 d!2342549))

(push 1)

(assert (not d!2342517))

(assert (not b_lambda!289429))

(assert (not bm!718134))

(assert (not b!7748814))

(assert (not b!7748930))

(assert (not d!2342511))

(assert (not b!7748644))

(assert (not d!2342491))

(assert (not b!7748858))

(assert (not b!7748714))

(assert (not d!2342537))

(assert (not b!7748886))

(assert (not b!7748934))

(assert (not b!7748861))

(assert (not d!2342493))

(assert (not d!2342507))

(assert (not b!7748906))

(assert (not b!7748737))

(assert (not b!7748639))

(assert (not b!7748941))

(assert (not b!7748926))

(assert (not d!2342527))

(assert (not bm!718153))

(assert (not b!7748723))

(assert (not b!7748727))

(assert (not b!7748880))

(assert (not b!7748728))

(assert (not b!7748923))

(assert (not b!7748791))

(assert (not b!7748602))

(assert (not b!7748819))

(assert (not b!7748942))

(assert (not b!7748935))

(assert (not b!7748924))

(assert (not b!7748732))

(assert (not b!7748932))

(assert (not bs!1965750))

(assert (not bm!718136))

(assert (not b!7748936))

(assert (not bm!718137))

(assert (not b!7748922))

(assert (not b!7748817))

(assert (not bm!718144))

(assert (not b!7748943))

(assert (not b!7748794))

(assert (not bm!718135))

(assert (not d!2342531))

(assert (not b!7748810))

(assert (not d!2342523))

(assert (not b!7748722))

(assert (not b!7748742))

(assert (not b!7748643))

(assert (not b!7748919))

(assert (not b!7748801))

(assert (not b!7748748))

(assert (not b!7748790))

(assert (not bm!718114))

(assert (not d!2342529))

(assert (not bm!718133))

(assert (not b!7748931))

(assert (not b!7748859))

(assert (not b!7748638))

(assert (not b!7748795))

(assert (not b!7748885))

(assert (not d!2342541))

(assert (not b!7748888))

(assert (not b!7748928))

(assert (not b!7748864))

(assert (not bm!718139))

(assert (not d!2342519))

(assert (not b!7748905))

(assert (not b!7748904))

(assert (not bm!718140))

(assert (not b!7748730))

(assert (not b!7748809))

(assert (not d!2342543))

(assert tp_is_empty!51543)

(assert (not d!2342499))

(assert (not bm!718119))

(assert (not b!7748708))

(assert (not b!7748881))

(assert (not b!7748862))

(assert (not bm!718142))

(assert (not bm!718141))

(assert (not d!2342525))

(assert (not b!7748927))

(assert (not b!7748646))

(assert (not b!7748918))

(assert (not b!7748648))

(assert (not d!2342509))

(assert (not b!7748890))

(assert (not b!7748815))

(assert (not b!7748857))

(assert (not bm!718115))

(assert (not b!7748892))

(assert (not b!7748920))

(assert (not b!7748893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

