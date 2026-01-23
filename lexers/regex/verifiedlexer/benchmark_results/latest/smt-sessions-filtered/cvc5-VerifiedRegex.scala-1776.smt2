; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88656 () Bool)

(assert start!88656)

(declare-fun b!1018456 () Bool)

(assert (=> b!1018456 true))

(assert (=> b!1018456 true))

(declare-fun b!1018450 () Bool)

(declare-fun e!650667 () Bool)

(declare-fun tp_is_empty!5263 () Bool)

(assert (=> b!1018450 (= e!650667 tp_is_empty!5263)))

(declare-fun b!1018451 () Bool)

(declare-fun tp!309663 () Bool)

(declare-fun tp!309665 () Bool)

(assert (=> b!1018451 (= e!650667 (and tp!309663 tp!309665))))

(declare-fun b!1018452 () Bool)

(declare-fun e!650665 () Bool)

(declare-datatypes ((C!6190 0))(
  ( (C!6191 (val!3343 Int)) )
))
(declare-datatypes ((Regex!2810 0))(
  ( (ElementMatch!2810 (c!168747 C!6190)) (Concat!4643 (regOne!6132 Regex!2810) (regTwo!6132 Regex!2810)) (EmptyExpr!2810) (Star!2810 (reg!3139 Regex!2810)) (EmptyLang!2810) (Union!2810 (regOne!6133 Regex!2810) (regTwo!6133 Regex!2810)) )
))
(declare-fun r!15766 () Regex!2810)

(declare-fun validRegex!1279 (Regex!2810) Bool)

(assert (=> b!1018452 (= e!650665 (validRegex!1279 (regTwo!6132 r!15766)))))

(declare-fun b!1018453 () Bool)

(declare-fun e!650666 () Bool)

(declare-fun e!650668 () Bool)

(assert (=> b!1018453 (= e!650666 (not e!650668))))

(declare-fun res!457644 () Bool)

(assert (=> b!1018453 (=> res!457644 e!650668)))

(declare-fun lt!353904 () Bool)

(assert (=> b!1018453 (= res!457644 (or lt!353904 (not (is-Concat!4643 r!15766)) (not (is-EmptyExpr!2810 (regOne!6132 r!15766)))))))

(declare-datatypes ((List!10040 0))(
  ( (Nil!10024) (Cons!10024 (h!15425 C!6190) (t!101086 List!10040)) )
))
(declare-fun s!10566 () List!10040)

(declare-fun matchRSpec!609 (Regex!2810 List!10040) Bool)

(assert (=> b!1018453 (= lt!353904 (matchRSpec!609 r!15766 s!10566))))

(declare-fun matchR!1346 (Regex!2810 List!10040) Bool)

(assert (=> b!1018453 (= lt!353904 (matchR!1346 r!15766 s!10566))))

(declare-datatypes ((Unit!15295 0))(
  ( (Unit!15296) )
))
(declare-fun lt!353903 () Unit!15295)

(declare-fun mainMatchTheorem!609 (Regex!2810 List!10040) Unit!15295)

(assert (=> b!1018453 (= lt!353903 (mainMatchTheorem!609 r!15766 s!10566))))

(declare-fun res!457645 () Bool)

(assert (=> start!88656 (=> (not res!457645) (not e!650666))))

(assert (=> start!88656 (= res!457645 (validRegex!1279 r!15766))))

(assert (=> start!88656 e!650666))

(assert (=> start!88656 e!650667))

(declare-fun e!650664 () Bool)

(assert (=> start!88656 e!650664))

(declare-fun b!1018454 () Bool)

(declare-fun tp!309666 () Bool)

(assert (=> b!1018454 (= e!650667 tp!309666)))

(declare-fun b!1018455 () Bool)

(declare-fun tp!309661 () Bool)

(declare-fun tp!309662 () Bool)

(assert (=> b!1018455 (= e!650667 (and tp!309661 tp!309662))))

(assert (=> b!1018456 (= e!650668 e!650665)))

(declare-fun res!457643 () Bool)

(assert (=> b!1018456 (=> res!457643 e!650665)))

(assert (=> b!1018456 (= res!457643 false)))

(declare-fun lambda!36081 () Int)

(declare-datatypes ((tuple2!11402 0))(
  ( (tuple2!11403 (_1!6527 List!10040) (_2!6527 List!10040)) )
))
(declare-datatypes ((Option!2343 0))(
  ( (None!2342) (Some!2342 (v!19759 tuple2!11402)) )
))
(declare-fun isDefined!1985 (Option!2343) Bool)

(declare-fun findConcatSeparation!449 (Regex!2810 Regex!2810 List!10040 List!10040 List!10040) Option!2343)

(declare-fun Exists!539 (Int) Bool)

(assert (=> b!1018456 (= (isDefined!1985 (findConcatSeparation!449 EmptyExpr!2810 (regTwo!6132 r!15766) Nil!10024 s!10566 s!10566)) (Exists!539 lambda!36081))))

(declare-fun lt!353902 () Unit!15295)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!449 (Regex!2810 Regex!2810 List!10040) Unit!15295)

(assert (=> b!1018456 (= lt!353902 (lemmaFindConcatSeparationEquivalentToExists!449 EmptyExpr!2810 (regTwo!6132 r!15766) s!10566))))

(declare-fun b!1018457 () Bool)

(declare-fun tp!309664 () Bool)

(assert (=> b!1018457 (= e!650664 (and tp_is_empty!5263 tp!309664))))

(assert (= (and start!88656 res!457645) b!1018453))

(assert (= (and b!1018453 (not res!457644)) b!1018456))

(assert (= (and b!1018456 (not res!457643)) b!1018452))

(assert (= (and start!88656 (is-ElementMatch!2810 r!15766)) b!1018450))

(assert (= (and start!88656 (is-Concat!4643 r!15766)) b!1018451))

(assert (= (and start!88656 (is-Star!2810 r!15766)) b!1018454))

(assert (= (and start!88656 (is-Union!2810 r!15766)) b!1018455))

(assert (= (and start!88656 (is-Cons!10024 s!10566)) b!1018457))

(declare-fun m!1198941 () Bool)

(assert (=> b!1018452 m!1198941))

(declare-fun m!1198943 () Bool)

(assert (=> b!1018453 m!1198943))

(declare-fun m!1198945 () Bool)

(assert (=> b!1018453 m!1198945))

(declare-fun m!1198947 () Bool)

(assert (=> b!1018453 m!1198947))

(declare-fun m!1198949 () Bool)

(assert (=> start!88656 m!1198949))

(declare-fun m!1198951 () Bool)

(assert (=> b!1018456 m!1198951))

(assert (=> b!1018456 m!1198951))

(declare-fun m!1198953 () Bool)

(assert (=> b!1018456 m!1198953))

(declare-fun m!1198955 () Bool)

(assert (=> b!1018456 m!1198955))

(declare-fun m!1198957 () Bool)

(assert (=> b!1018456 m!1198957))

(push 1)

(assert (not b!1018452))

(assert (not b!1018455))

(assert (not b!1018453))

(assert (not b!1018457))

(assert (not start!88656))

(assert (not b!1018451))

(assert (not b!1018454))

(assert tp_is_empty!5263)

(assert (not b!1018456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!246530 () Bool)

(declare-fun b!1018548 () Bool)

(assert (= bs!246530 (and b!1018548 b!1018456)))

(declare-fun lambda!36089 () Int)

(assert (=> bs!246530 (not (= lambda!36089 lambda!36081))))

(assert (=> b!1018548 true))

(assert (=> b!1018548 true))

(declare-fun bs!246531 () Bool)

(declare-fun b!1018545 () Bool)

(assert (= bs!246531 (and b!1018545 b!1018456)))

(declare-fun lambda!36090 () Int)

(assert (=> bs!246531 (not (= lambda!36090 lambda!36081))))

(declare-fun bs!246532 () Bool)

(assert (= bs!246532 (and b!1018545 b!1018548)))

(assert (=> bs!246532 (not (= lambda!36090 lambda!36089))))

(assert (=> b!1018545 true))

(assert (=> b!1018545 true))

(declare-fun e!650718 () Bool)

(declare-fun call!69602 () Bool)

(assert (=> b!1018545 (= e!650718 call!69602)))

(declare-fun b!1018546 () Bool)

(declare-fun e!650721 () Bool)

(assert (=> b!1018546 (= e!650721 e!650718)))

(declare-fun c!168764 () Bool)

(assert (=> b!1018546 (= c!168764 (is-Star!2810 r!15766))))

(declare-fun b!1018547 () Bool)

(declare-fun e!650724 () Bool)

(declare-fun call!69603 () Bool)

(assert (=> b!1018547 (= e!650724 call!69603)))

(declare-fun e!650722 () Bool)

(assert (=> b!1018548 (= e!650722 call!69602)))

(declare-fun b!1018549 () Bool)

(declare-fun e!650723 () Bool)

(assert (=> b!1018549 (= e!650724 e!650723)))

(declare-fun res!457686 () Bool)

(assert (=> b!1018549 (= res!457686 (not (is-EmptyLang!2810 r!15766)))))

(assert (=> b!1018549 (=> (not res!457686) (not e!650723))))

(declare-fun b!1018550 () Bool)

(declare-fun c!168761 () Bool)

(assert (=> b!1018550 (= c!168761 (is-Union!2810 r!15766))))

(declare-fun e!650720 () Bool)

(assert (=> b!1018550 (= e!650720 e!650721)))

(declare-fun b!1018551 () Bool)

(declare-fun c!168762 () Bool)

(assert (=> b!1018551 (= c!168762 (is-ElementMatch!2810 r!15766))))

(assert (=> b!1018551 (= e!650723 e!650720)))

(declare-fun b!1018552 () Bool)

(declare-fun e!650719 () Bool)

(assert (=> b!1018552 (= e!650719 (matchRSpec!609 (regTwo!6133 r!15766) s!10566))))

(declare-fun d!294141 () Bool)

(declare-fun c!168763 () Bool)

(assert (=> d!294141 (= c!168763 (is-EmptyExpr!2810 r!15766))))

(assert (=> d!294141 (= (matchRSpec!609 r!15766 s!10566) e!650724)))

(declare-fun b!1018544 () Bool)

(assert (=> b!1018544 (= e!650721 e!650719)))

(declare-fun res!457687 () Bool)

(assert (=> b!1018544 (= res!457687 (matchRSpec!609 (regOne!6133 r!15766) s!10566))))

(assert (=> b!1018544 (=> res!457687 e!650719)))

(declare-fun bm!69597 () Bool)

(assert (=> bm!69597 (= call!69602 (Exists!539 (ite c!168764 lambda!36089 lambda!36090)))))

(declare-fun b!1018553 () Bool)

(declare-fun res!457685 () Bool)

(assert (=> b!1018553 (=> res!457685 e!650722)))

(assert (=> b!1018553 (= res!457685 call!69603)))

(assert (=> b!1018553 (= e!650718 e!650722)))

(declare-fun bm!69598 () Bool)

(declare-fun isEmpty!6370 (List!10040) Bool)

(assert (=> bm!69598 (= call!69603 (isEmpty!6370 s!10566))))

(declare-fun b!1018554 () Bool)

(assert (=> b!1018554 (= e!650720 (= s!10566 (Cons!10024 (c!168747 r!15766) Nil!10024)))))

(assert (= (and d!294141 c!168763) b!1018547))

(assert (= (and d!294141 (not c!168763)) b!1018549))

(assert (= (and b!1018549 res!457686) b!1018551))

(assert (= (and b!1018551 c!168762) b!1018554))

(assert (= (and b!1018551 (not c!168762)) b!1018550))

(assert (= (and b!1018550 c!168761) b!1018544))

(assert (= (and b!1018550 (not c!168761)) b!1018546))

(assert (= (and b!1018544 (not res!457687)) b!1018552))

(assert (= (and b!1018546 c!168764) b!1018553))

(assert (= (and b!1018546 (not c!168764)) b!1018545))

(assert (= (and b!1018553 (not res!457685)) b!1018548))

(assert (= (or b!1018548 b!1018545) bm!69597))

(assert (= (or b!1018547 b!1018553) bm!69598))

(declare-fun m!1198977 () Bool)

(assert (=> b!1018552 m!1198977))

(declare-fun m!1198979 () Bool)

(assert (=> b!1018544 m!1198979))

(declare-fun m!1198981 () Bool)

(assert (=> bm!69597 m!1198981))

(declare-fun m!1198983 () Bool)

(assert (=> bm!69598 m!1198983))

(assert (=> b!1018453 d!294141))

(declare-fun b!1018601 () Bool)

(declare-fun e!650755 () Bool)

(declare-fun lt!353916 () Bool)

(declare-fun call!69612 () Bool)

(assert (=> b!1018601 (= e!650755 (= lt!353916 call!69612))))

(declare-fun b!1018602 () Bool)

(declare-fun res!457718 () Bool)

(declare-fun e!650754 () Bool)

(assert (=> b!1018602 (=> res!457718 e!650754)))

(declare-fun tail!1435 (List!10040) List!10040)

(assert (=> b!1018602 (= res!457718 (not (isEmpty!6370 (tail!1435 s!10566))))))

(declare-fun b!1018603 () Bool)

(declare-fun e!650756 () Bool)

(declare-fun e!650758 () Bool)

(assert (=> b!1018603 (= e!650756 e!650758)))

(declare-fun res!457716 () Bool)

(assert (=> b!1018603 (=> (not res!457716) (not e!650758))))

(assert (=> b!1018603 (= res!457716 (not lt!353916))))

(declare-fun b!1018604 () Bool)

(declare-fun res!457719 () Bool)

(assert (=> b!1018604 (=> res!457719 e!650756)))

(assert (=> b!1018604 (= res!457719 (not (is-ElementMatch!2810 r!15766)))))

(declare-fun e!650757 () Bool)

(assert (=> b!1018604 (= e!650757 e!650756)))

(declare-fun b!1018605 () Bool)

(declare-fun res!457714 () Bool)

(declare-fun e!650753 () Bool)

(assert (=> b!1018605 (=> (not res!457714) (not e!650753))))

(assert (=> b!1018605 (= res!457714 (isEmpty!6370 (tail!1435 s!10566)))))

(declare-fun b!1018606 () Bool)

(assert (=> b!1018606 (= e!650755 e!650757)))

(declare-fun c!168777 () Bool)

(assert (=> b!1018606 (= c!168777 (is-EmptyLang!2810 r!15766))))

(declare-fun d!294145 () Bool)

(assert (=> d!294145 e!650755))

(declare-fun c!168775 () Bool)

(assert (=> d!294145 (= c!168775 (is-EmptyExpr!2810 r!15766))))

(declare-fun e!650759 () Bool)

(assert (=> d!294145 (= lt!353916 e!650759)))

(declare-fun c!168776 () Bool)

(assert (=> d!294145 (= c!168776 (isEmpty!6370 s!10566))))

(assert (=> d!294145 (validRegex!1279 r!15766)))

(assert (=> d!294145 (= (matchR!1346 r!15766 s!10566) lt!353916)))

(declare-fun b!1018607 () Bool)

(declare-fun derivativeStep!719 (Regex!2810 C!6190) Regex!2810)

(declare-fun head!1873 (List!10040) C!6190)

(assert (=> b!1018607 (= e!650759 (matchR!1346 (derivativeStep!719 r!15766 (head!1873 s!10566)) (tail!1435 s!10566)))))

(declare-fun b!1018608 () Bool)

(assert (=> b!1018608 (= e!650754 (not (= (head!1873 s!10566) (c!168747 r!15766))))))

(declare-fun bm!69607 () Bool)

(assert (=> bm!69607 (= call!69612 (isEmpty!6370 s!10566))))

(declare-fun b!1018609 () Bool)

(assert (=> b!1018609 (= e!650757 (not lt!353916))))

(declare-fun b!1018610 () Bool)

(declare-fun res!457715 () Bool)

(assert (=> b!1018610 (=> (not res!457715) (not e!650753))))

(assert (=> b!1018610 (= res!457715 (not call!69612))))

(declare-fun b!1018611 () Bool)

(declare-fun res!457717 () Bool)

(assert (=> b!1018611 (=> res!457717 e!650756)))

(assert (=> b!1018611 (= res!457717 e!650753)))

(declare-fun res!457720 () Bool)

(assert (=> b!1018611 (=> (not res!457720) (not e!650753))))

(assert (=> b!1018611 (= res!457720 lt!353916)))

(declare-fun b!1018612 () Bool)

(declare-fun nullable!916 (Regex!2810) Bool)

(assert (=> b!1018612 (= e!650759 (nullable!916 r!15766))))

(declare-fun b!1018613 () Bool)

(assert (=> b!1018613 (= e!650758 e!650754)))

(declare-fun res!457721 () Bool)

(assert (=> b!1018613 (=> res!457721 e!650754)))

(assert (=> b!1018613 (= res!457721 call!69612)))

(declare-fun b!1018614 () Bool)

(assert (=> b!1018614 (= e!650753 (= (head!1873 s!10566) (c!168747 r!15766)))))

(assert (= (and d!294145 c!168776) b!1018612))

(assert (= (and d!294145 (not c!168776)) b!1018607))

(assert (= (and d!294145 c!168775) b!1018601))

(assert (= (and d!294145 (not c!168775)) b!1018606))

(assert (= (and b!1018606 c!168777) b!1018609))

(assert (= (and b!1018606 (not c!168777)) b!1018604))

(assert (= (and b!1018604 (not res!457719)) b!1018611))

(assert (= (and b!1018611 res!457720) b!1018610))

(assert (= (and b!1018610 res!457715) b!1018605))

(assert (= (and b!1018605 res!457714) b!1018614))

(assert (= (and b!1018611 (not res!457717)) b!1018603))

(assert (= (and b!1018603 res!457716) b!1018613))

(assert (= (and b!1018613 (not res!457721)) b!1018602))

(assert (= (and b!1018602 (not res!457718)) b!1018608))

(assert (= (or b!1018601 b!1018610 b!1018613) bm!69607))

(assert (=> d!294145 m!1198983))

(assert (=> d!294145 m!1198949))

(declare-fun m!1198999 () Bool)

(assert (=> b!1018614 m!1198999))

(declare-fun m!1199001 () Bool)

(assert (=> b!1018602 m!1199001))

(assert (=> b!1018602 m!1199001))

(declare-fun m!1199003 () Bool)

(assert (=> b!1018602 m!1199003))

(assert (=> b!1018608 m!1198999))

(assert (=> b!1018607 m!1198999))

(assert (=> b!1018607 m!1198999))

(declare-fun m!1199005 () Bool)

(assert (=> b!1018607 m!1199005))

(assert (=> b!1018607 m!1199001))

(assert (=> b!1018607 m!1199005))

(assert (=> b!1018607 m!1199001))

(declare-fun m!1199007 () Bool)

(assert (=> b!1018607 m!1199007))

(assert (=> b!1018605 m!1199001))

(assert (=> b!1018605 m!1199001))

(assert (=> b!1018605 m!1199003))

(declare-fun m!1199009 () Bool)

(assert (=> b!1018612 m!1199009))

(assert (=> bm!69607 m!1198983))

(assert (=> b!1018453 d!294145))

(declare-fun d!294153 () Bool)

(assert (=> d!294153 (= (matchR!1346 r!15766 s!10566) (matchRSpec!609 r!15766 s!10566))))

(declare-fun lt!353919 () Unit!15295)

(declare-fun choose!6431 (Regex!2810 List!10040) Unit!15295)

(assert (=> d!294153 (= lt!353919 (choose!6431 r!15766 s!10566))))

(assert (=> d!294153 (validRegex!1279 r!15766)))

(assert (=> d!294153 (= (mainMatchTheorem!609 r!15766 s!10566) lt!353919)))

(declare-fun bs!246534 () Bool)

(assert (= bs!246534 d!294153))

(assert (=> bs!246534 m!1198945))

(assert (=> bs!246534 m!1198943))

(declare-fun m!1199011 () Bool)

(assert (=> bs!246534 m!1199011))

(assert (=> bs!246534 m!1198949))

(assert (=> b!1018453 d!294153))

(declare-fun bm!69614 () Bool)

(declare-fun call!69619 () Bool)

(declare-fun call!69620 () Bool)

(assert (=> bm!69614 (= call!69619 call!69620)))

(declare-fun d!294155 () Bool)

(declare-fun res!457732 () Bool)

(declare-fun e!650777 () Bool)

(assert (=> d!294155 (=> res!457732 e!650777)))

(assert (=> d!294155 (= res!457732 (is-ElementMatch!2810 (regTwo!6132 r!15766)))))

(assert (=> d!294155 (= (validRegex!1279 (regTwo!6132 r!15766)) e!650777)))

(declare-fun bm!69615 () Bool)

(declare-fun call!69621 () Bool)

(declare-fun c!168783 () Bool)

(assert (=> bm!69615 (= call!69621 (validRegex!1279 (ite c!168783 (regTwo!6133 (regTwo!6132 r!15766)) (regTwo!6132 (regTwo!6132 r!15766)))))))

(declare-fun b!1018633 () Bool)

(declare-fun e!650775 () Bool)

(assert (=> b!1018633 (= e!650775 call!69620)))

(declare-fun c!168782 () Bool)

(declare-fun bm!69616 () Bool)

(assert (=> bm!69616 (= call!69620 (validRegex!1279 (ite c!168782 (reg!3139 (regTwo!6132 r!15766)) (ite c!168783 (regOne!6133 (regTwo!6132 r!15766)) (regOne!6132 (regTwo!6132 r!15766))))))))

(declare-fun b!1018634 () Bool)

(declare-fun e!650778 () Bool)

(declare-fun e!650774 () Bool)

(assert (=> b!1018634 (= e!650778 e!650774)))

(declare-fun res!457735 () Bool)

(assert (=> b!1018634 (=> (not res!457735) (not e!650774))))

(assert (=> b!1018634 (= res!457735 call!69619)))

(declare-fun b!1018635 () Bool)

(assert (=> b!1018635 (= e!650774 call!69621)))

(declare-fun b!1018636 () Bool)

(declare-fun res!457733 () Bool)

(assert (=> b!1018636 (=> res!457733 e!650778)))

(assert (=> b!1018636 (= res!457733 (not (is-Concat!4643 (regTwo!6132 r!15766))))))

(declare-fun e!650776 () Bool)

(assert (=> b!1018636 (= e!650776 e!650778)))

(declare-fun b!1018637 () Bool)

(declare-fun e!650779 () Bool)

(assert (=> b!1018637 (= e!650777 e!650779)))

(assert (=> b!1018637 (= c!168782 (is-Star!2810 (regTwo!6132 r!15766)))))

(declare-fun b!1018638 () Bool)

(declare-fun e!650780 () Bool)

(assert (=> b!1018638 (= e!650780 call!69621)))

(declare-fun b!1018639 () Bool)

(assert (=> b!1018639 (= e!650779 e!650776)))

(assert (=> b!1018639 (= c!168783 (is-Union!2810 (regTwo!6132 r!15766)))))

(declare-fun b!1018640 () Bool)

(assert (=> b!1018640 (= e!650779 e!650775)))

(declare-fun res!457736 () Bool)

(assert (=> b!1018640 (= res!457736 (not (nullable!916 (reg!3139 (regTwo!6132 r!15766)))))))

(assert (=> b!1018640 (=> (not res!457736) (not e!650775))))

(declare-fun b!1018641 () Bool)

(declare-fun res!457734 () Bool)

(assert (=> b!1018641 (=> (not res!457734) (not e!650780))))

(assert (=> b!1018641 (= res!457734 call!69619)))

(assert (=> b!1018641 (= e!650776 e!650780)))

(assert (= (and d!294155 (not res!457732)) b!1018637))

(assert (= (and b!1018637 c!168782) b!1018640))

(assert (= (and b!1018637 (not c!168782)) b!1018639))

(assert (= (and b!1018640 res!457736) b!1018633))

(assert (= (and b!1018639 c!168783) b!1018641))

(assert (= (and b!1018639 (not c!168783)) b!1018636))

(assert (= (and b!1018641 res!457734) b!1018638))

(assert (= (and b!1018636 (not res!457733)) b!1018634))

(assert (= (and b!1018634 res!457735) b!1018635))

(assert (= (or b!1018638 b!1018635) bm!69615))

(assert (= (or b!1018641 b!1018634) bm!69614))

(assert (= (or b!1018633 bm!69614) bm!69616))

(declare-fun m!1199013 () Bool)

(assert (=> bm!69615 m!1199013))

(declare-fun m!1199015 () Bool)

(assert (=> bm!69616 m!1199015))

(declare-fun m!1199017 () Bool)

(assert (=> b!1018640 m!1199017))

(assert (=> b!1018452 d!294155))

(declare-fun d!294157 () Bool)

(declare-fun isEmpty!6371 (Option!2343) Bool)

(assert (=> d!294157 (= (isDefined!1985 (findConcatSeparation!449 EmptyExpr!2810 (regTwo!6132 r!15766) Nil!10024 s!10566 s!10566)) (not (isEmpty!6371 (findConcatSeparation!449 EmptyExpr!2810 (regTwo!6132 r!15766) Nil!10024 s!10566 s!10566))))))

(declare-fun bs!246535 () Bool)

(assert (= bs!246535 d!294157))

(assert (=> bs!246535 m!1198951))

(declare-fun m!1199019 () Bool)

(assert (=> bs!246535 m!1199019))

(assert (=> b!1018456 d!294157))

(declare-fun b!1018678 () Bool)

(declare-fun e!650804 () Option!2343)

(assert (=> b!1018678 (= e!650804 None!2342)))

(declare-fun b!1018679 () Bool)

(declare-fun e!650805 () Option!2343)

(assert (=> b!1018679 (= e!650805 e!650804)))

(declare-fun c!168792 () Bool)

(assert (=> b!1018679 (= c!168792 (is-Nil!10024 s!10566))))

(declare-fun b!1018680 () Bool)

(assert (=> b!1018680 (= e!650805 (Some!2342 (tuple2!11403 Nil!10024 s!10566)))))

(declare-fun b!1018681 () Bool)

(declare-fun e!650802 () Bool)

(assert (=> b!1018681 (= e!650802 (matchR!1346 (regTwo!6132 r!15766) s!10566))))

(declare-fun b!1018682 () Bool)

(declare-fun lt!353934 () Unit!15295)

(declare-fun lt!353932 () Unit!15295)

(assert (=> b!1018682 (= lt!353934 lt!353932)))

(declare-fun ++!2733 (List!10040 List!10040) List!10040)

(assert (=> b!1018682 (= (++!2733 (++!2733 Nil!10024 (Cons!10024 (h!15425 s!10566) Nil!10024)) (t!101086 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!333 (List!10040 C!6190 List!10040 List!10040) Unit!15295)

(assert (=> b!1018682 (= lt!353932 (lemmaMoveElementToOtherListKeepsConcatEq!333 Nil!10024 (h!15425 s!10566) (t!101086 s!10566) s!10566))))

(assert (=> b!1018682 (= e!650804 (findConcatSeparation!449 EmptyExpr!2810 (regTwo!6132 r!15766) (++!2733 Nil!10024 (Cons!10024 (h!15425 s!10566) Nil!10024)) (t!101086 s!10566) s!10566))))

(declare-fun b!1018684 () Bool)

(declare-fun e!650803 () Bool)

(declare-fun lt!353933 () Option!2343)

(assert (=> b!1018684 (= e!650803 (not (isDefined!1985 lt!353933)))))

(declare-fun b!1018685 () Bool)

(declare-fun e!650801 () Bool)

(declare-fun get!3522 (Option!2343) tuple2!11402)

(assert (=> b!1018685 (= e!650801 (= (++!2733 (_1!6527 (get!3522 lt!353933)) (_2!6527 (get!3522 lt!353933))) s!10566))))

(declare-fun b!1018686 () Bool)

(declare-fun res!457758 () Bool)

(assert (=> b!1018686 (=> (not res!457758) (not e!650801))))

(assert (=> b!1018686 (= res!457758 (matchR!1346 (regTwo!6132 r!15766) (_2!6527 (get!3522 lt!353933))))))

(declare-fun d!294159 () Bool)

(assert (=> d!294159 e!650803))

(declare-fun res!457760 () Bool)

(assert (=> d!294159 (=> res!457760 e!650803)))

(assert (=> d!294159 (= res!457760 e!650801)))

(declare-fun res!457757 () Bool)

(assert (=> d!294159 (=> (not res!457757) (not e!650801))))

(assert (=> d!294159 (= res!457757 (isDefined!1985 lt!353933))))

(assert (=> d!294159 (= lt!353933 e!650805)))

(declare-fun c!168793 () Bool)

(assert (=> d!294159 (= c!168793 e!650802)))

(declare-fun res!457759 () Bool)

(assert (=> d!294159 (=> (not res!457759) (not e!650802))))

(assert (=> d!294159 (= res!457759 (matchR!1346 EmptyExpr!2810 Nil!10024))))

(assert (=> d!294159 (validRegex!1279 EmptyExpr!2810)))

(assert (=> d!294159 (= (findConcatSeparation!449 EmptyExpr!2810 (regTwo!6132 r!15766) Nil!10024 s!10566 s!10566) lt!353933)))

(declare-fun b!1018683 () Bool)

(declare-fun res!457761 () Bool)

(assert (=> b!1018683 (=> (not res!457761) (not e!650801))))

(assert (=> b!1018683 (= res!457761 (matchR!1346 EmptyExpr!2810 (_1!6527 (get!3522 lt!353933))))))

(assert (= (and d!294159 res!457759) b!1018681))

(assert (= (and d!294159 c!168793) b!1018680))

(assert (= (and d!294159 (not c!168793)) b!1018679))

(assert (= (and b!1018679 c!168792) b!1018678))

(assert (= (and b!1018679 (not c!168792)) b!1018682))

(assert (= (and d!294159 res!457757) b!1018683))

(assert (= (and b!1018683 res!457761) b!1018686))

(assert (= (and b!1018686 res!457758) b!1018685))

(assert (= (and d!294159 (not res!457760)) b!1018684))

(declare-fun m!1199021 () Bool)

(assert (=> b!1018682 m!1199021))

(assert (=> b!1018682 m!1199021))

(declare-fun m!1199023 () Bool)

(assert (=> b!1018682 m!1199023))

(declare-fun m!1199025 () Bool)

(assert (=> b!1018682 m!1199025))

(assert (=> b!1018682 m!1199021))

(declare-fun m!1199027 () Bool)

(assert (=> b!1018682 m!1199027))

(declare-fun m!1199029 () Bool)

(assert (=> b!1018681 m!1199029))

(declare-fun m!1199031 () Bool)

(assert (=> b!1018684 m!1199031))

(assert (=> d!294159 m!1199031))

(declare-fun m!1199033 () Bool)

(assert (=> d!294159 m!1199033))

(declare-fun m!1199035 () Bool)

(assert (=> d!294159 m!1199035))

(declare-fun m!1199037 () Bool)

(assert (=> b!1018683 m!1199037))

(declare-fun m!1199039 () Bool)

(assert (=> b!1018683 m!1199039))

(assert (=> b!1018686 m!1199037))

(declare-fun m!1199041 () Bool)

(assert (=> b!1018686 m!1199041))

(assert (=> b!1018685 m!1199037))

(declare-fun m!1199043 () Bool)

(assert (=> b!1018685 m!1199043))

(assert (=> b!1018456 d!294159))

(declare-fun d!294161 () Bool)

(declare-fun choose!6432 (Int) Bool)

(assert (=> d!294161 (= (Exists!539 lambda!36081) (choose!6432 lambda!36081))))

(declare-fun bs!246536 () Bool)

(assert (= bs!246536 d!294161))

(declare-fun m!1199045 () Bool)

(assert (=> bs!246536 m!1199045))

(assert (=> b!1018456 d!294161))

(declare-fun bs!246537 () Bool)

(declare-fun d!294163 () Bool)

(assert (= bs!246537 (and d!294163 b!1018456)))

(declare-fun lambda!36093 () Int)

(assert (=> bs!246537 (= lambda!36093 lambda!36081)))

(declare-fun bs!246538 () Bool)

(assert (= bs!246538 (and d!294163 b!1018548)))

(assert (=> bs!246538 (not (= lambda!36093 lambda!36089))))

(declare-fun bs!246539 () Bool)

(assert (= bs!246539 (and d!294163 b!1018545)))

(assert (=> bs!246539 (not (= lambda!36093 lambda!36090))))

(assert (=> d!294163 true))

(assert (=> d!294163 true))

(assert (=> d!294163 true))

(assert (=> d!294163 (= (isDefined!1985 (findConcatSeparation!449 EmptyExpr!2810 (regTwo!6132 r!15766) Nil!10024 s!10566 s!10566)) (Exists!539 lambda!36093))))

(declare-fun lt!353940 () Unit!15295)

(declare-fun choose!6433 (Regex!2810 Regex!2810 List!10040) Unit!15295)

(assert (=> d!294163 (= lt!353940 (choose!6433 EmptyExpr!2810 (regTwo!6132 r!15766) s!10566))))

(assert (=> d!294163 (validRegex!1279 EmptyExpr!2810)))

(assert (=> d!294163 (= (lemmaFindConcatSeparationEquivalentToExists!449 EmptyExpr!2810 (regTwo!6132 r!15766) s!10566) lt!353940)))

(declare-fun bs!246541 () Bool)

(assert (= bs!246541 d!294163))

(assert (=> bs!246541 m!1198951))

(assert (=> bs!246541 m!1198953))

(declare-fun m!1199073 () Bool)

(assert (=> bs!246541 m!1199073))

(assert (=> bs!246541 m!1199035))

(assert (=> bs!246541 m!1198951))

(declare-fun m!1199075 () Bool)

(assert (=> bs!246541 m!1199075))

(assert (=> b!1018456 d!294163))

(declare-fun bm!69617 () Bool)

(declare-fun call!69622 () Bool)

(declare-fun call!69623 () Bool)

(assert (=> bm!69617 (= call!69622 call!69623)))

(declare-fun d!294169 () Bool)

(declare-fun res!457771 () Bool)

(declare-fun e!650816 () Bool)

(assert (=> d!294169 (=> res!457771 e!650816)))

(assert (=> d!294169 (= res!457771 (is-ElementMatch!2810 r!15766))))

(assert (=> d!294169 (= (validRegex!1279 r!15766) e!650816)))

(declare-fun bm!69618 () Bool)

(declare-fun call!69624 () Bool)

(declare-fun c!168797 () Bool)

(assert (=> bm!69618 (= call!69624 (validRegex!1279 (ite c!168797 (regTwo!6133 r!15766) (regTwo!6132 r!15766))))))

(declare-fun b!1018700 () Bool)

(declare-fun e!650814 () Bool)

(assert (=> b!1018700 (= e!650814 call!69623)))

(declare-fun bm!69619 () Bool)

(declare-fun c!168796 () Bool)

(assert (=> bm!69619 (= call!69623 (validRegex!1279 (ite c!168796 (reg!3139 r!15766) (ite c!168797 (regOne!6133 r!15766) (regOne!6132 r!15766)))))))

(declare-fun b!1018701 () Bool)

(declare-fun e!650817 () Bool)

(declare-fun e!650813 () Bool)

(assert (=> b!1018701 (= e!650817 e!650813)))

(declare-fun res!457774 () Bool)

(assert (=> b!1018701 (=> (not res!457774) (not e!650813))))

(assert (=> b!1018701 (= res!457774 call!69622)))

(declare-fun b!1018702 () Bool)

(assert (=> b!1018702 (= e!650813 call!69624)))

(declare-fun b!1018703 () Bool)

(declare-fun res!457772 () Bool)

(assert (=> b!1018703 (=> res!457772 e!650817)))

(assert (=> b!1018703 (= res!457772 (not (is-Concat!4643 r!15766)))))

(declare-fun e!650815 () Bool)

(assert (=> b!1018703 (= e!650815 e!650817)))

(declare-fun b!1018704 () Bool)

(declare-fun e!650818 () Bool)

(assert (=> b!1018704 (= e!650816 e!650818)))

(assert (=> b!1018704 (= c!168796 (is-Star!2810 r!15766))))

(declare-fun b!1018705 () Bool)

(declare-fun e!650819 () Bool)

(assert (=> b!1018705 (= e!650819 call!69624)))

(declare-fun b!1018706 () Bool)

(assert (=> b!1018706 (= e!650818 e!650815)))

(assert (=> b!1018706 (= c!168797 (is-Union!2810 r!15766))))

(declare-fun b!1018707 () Bool)

(assert (=> b!1018707 (= e!650818 e!650814)))

(declare-fun res!457775 () Bool)

(assert (=> b!1018707 (= res!457775 (not (nullable!916 (reg!3139 r!15766))))))

(assert (=> b!1018707 (=> (not res!457775) (not e!650814))))

(declare-fun b!1018708 () Bool)

(declare-fun res!457773 () Bool)

(assert (=> b!1018708 (=> (not res!457773) (not e!650819))))

(assert (=> b!1018708 (= res!457773 call!69622)))

(assert (=> b!1018708 (= e!650815 e!650819)))

(assert (= (and d!294169 (not res!457771)) b!1018704))

(assert (= (and b!1018704 c!168796) b!1018707))

(assert (= (and b!1018704 (not c!168796)) b!1018706))

(assert (= (and b!1018707 res!457775) b!1018700))

(assert (= (and b!1018706 c!168797) b!1018708))

(assert (= (and b!1018706 (not c!168797)) b!1018703))

(assert (= (and b!1018708 res!457773) b!1018705))

(assert (= (and b!1018703 (not res!457772)) b!1018701))

(assert (= (and b!1018701 res!457774) b!1018702))

(assert (= (or b!1018705 b!1018702) bm!69618))

(assert (= (or b!1018708 b!1018701) bm!69617))

(assert (= (or b!1018700 bm!69617) bm!69619))

(declare-fun m!1199077 () Bool)

(assert (=> bm!69618 m!1199077))

(declare-fun m!1199079 () Bool)

(assert (=> bm!69619 m!1199079))

(declare-fun m!1199081 () Bool)

(assert (=> b!1018707 m!1199081))

(assert (=> start!88656 d!294169))

(declare-fun b!1018719 () Bool)

(declare-fun e!650822 () Bool)

(assert (=> b!1018719 (= e!650822 tp_is_empty!5263)))

(declare-fun b!1018720 () Bool)

(declare-fun tp!309699 () Bool)

(declare-fun tp!309697 () Bool)

(assert (=> b!1018720 (= e!650822 (and tp!309699 tp!309697))))

(declare-fun b!1018722 () Bool)

(declare-fun tp!309695 () Bool)

(declare-fun tp!309698 () Bool)

(assert (=> b!1018722 (= e!650822 (and tp!309695 tp!309698))))

(assert (=> b!1018454 (= tp!309666 e!650822)))

(declare-fun b!1018721 () Bool)

(declare-fun tp!309696 () Bool)

(assert (=> b!1018721 (= e!650822 tp!309696)))

(assert (= (and b!1018454 (is-ElementMatch!2810 (reg!3139 r!15766))) b!1018719))

(assert (= (and b!1018454 (is-Concat!4643 (reg!3139 r!15766))) b!1018720))

(assert (= (and b!1018454 (is-Star!2810 (reg!3139 r!15766))) b!1018721))

(assert (= (and b!1018454 (is-Union!2810 (reg!3139 r!15766))) b!1018722))

(declare-fun b!1018727 () Bool)

(declare-fun e!650825 () Bool)

(declare-fun tp!309702 () Bool)

(assert (=> b!1018727 (= e!650825 (and tp_is_empty!5263 tp!309702))))

(assert (=> b!1018457 (= tp!309664 e!650825)))

(assert (= (and b!1018457 (is-Cons!10024 (t!101086 s!10566))) b!1018727))

(declare-fun b!1018728 () Bool)

(declare-fun e!650826 () Bool)

(assert (=> b!1018728 (= e!650826 tp_is_empty!5263)))

(declare-fun b!1018729 () Bool)

(declare-fun tp!309707 () Bool)

(declare-fun tp!309705 () Bool)

(assert (=> b!1018729 (= e!650826 (and tp!309707 tp!309705))))

(declare-fun b!1018731 () Bool)

(declare-fun tp!309703 () Bool)

(declare-fun tp!309706 () Bool)

(assert (=> b!1018731 (= e!650826 (and tp!309703 tp!309706))))

(assert (=> b!1018451 (= tp!309663 e!650826)))

(declare-fun b!1018730 () Bool)

(declare-fun tp!309704 () Bool)

(assert (=> b!1018730 (= e!650826 tp!309704)))

(assert (= (and b!1018451 (is-ElementMatch!2810 (regOne!6132 r!15766))) b!1018728))

(assert (= (and b!1018451 (is-Concat!4643 (regOne!6132 r!15766))) b!1018729))

(assert (= (and b!1018451 (is-Star!2810 (regOne!6132 r!15766))) b!1018730))

(assert (= (and b!1018451 (is-Union!2810 (regOne!6132 r!15766))) b!1018731))

(declare-fun b!1018732 () Bool)

(declare-fun e!650827 () Bool)

(assert (=> b!1018732 (= e!650827 tp_is_empty!5263)))

(declare-fun b!1018733 () Bool)

(declare-fun tp!309712 () Bool)

(declare-fun tp!309710 () Bool)

(assert (=> b!1018733 (= e!650827 (and tp!309712 tp!309710))))

(declare-fun b!1018735 () Bool)

(declare-fun tp!309708 () Bool)

(declare-fun tp!309711 () Bool)

(assert (=> b!1018735 (= e!650827 (and tp!309708 tp!309711))))

(assert (=> b!1018451 (= tp!309665 e!650827)))

(declare-fun b!1018734 () Bool)

(declare-fun tp!309709 () Bool)

(assert (=> b!1018734 (= e!650827 tp!309709)))

(assert (= (and b!1018451 (is-ElementMatch!2810 (regTwo!6132 r!15766))) b!1018732))

(assert (= (and b!1018451 (is-Concat!4643 (regTwo!6132 r!15766))) b!1018733))

(assert (= (and b!1018451 (is-Star!2810 (regTwo!6132 r!15766))) b!1018734))

(assert (= (and b!1018451 (is-Union!2810 (regTwo!6132 r!15766))) b!1018735))

(declare-fun b!1018736 () Bool)

(declare-fun e!650828 () Bool)

(assert (=> b!1018736 (= e!650828 tp_is_empty!5263)))

(declare-fun b!1018737 () Bool)

(declare-fun tp!309717 () Bool)

(declare-fun tp!309715 () Bool)

(assert (=> b!1018737 (= e!650828 (and tp!309717 tp!309715))))

(declare-fun b!1018739 () Bool)

(declare-fun tp!309713 () Bool)

(declare-fun tp!309716 () Bool)

(assert (=> b!1018739 (= e!650828 (and tp!309713 tp!309716))))

(assert (=> b!1018455 (= tp!309661 e!650828)))

(declare-fun b!1018738 () Bool)

(declare-fun tp!309714 () Bool)

(assert (=> b!1018738 (= e!650828 tp!309714)))

(assert (= (and b!1018455 (is-ElementMatch!2810 (regOne!6133 r!15766))) b!1018736))

(assert (= (and b!1018455 (is-Concat!4643 (regOne!6133 r!15766))) b!1018737))

(assert (= (and b!1018455 (is-Star!2810 (regOne!6133 r!15766))) b!1018738))

(assert (= (and b!1018455 (is-Union!2810 (regOne!6133 r!15766))) b!1018739))

(declare-fun b!1018740 () Bool)

(declare-fun e!650829 () Bool)

(assert (=> b!1018740 (= e!650829 tp_is_empty!5263)))

(declare-fun b!1018741 () Bool)

(declare-fun tp!309722 () Bool)

(declare-fun tp!309720 () Bool)

(assert (=> b!1018741 (= e!650829 (and tp!309722 tp!309720))))

(declare-fun b!1018743 () Bool)

(declare-fun tp!309718 () Bool)

(declare-fun tp!309721 () Bool)

(assert (=> b!1018743 (= e!650829 (and tp!309718 tp!309721))))

(assert (=> b!1018455 (= tp!309662 e!650829)))

(declare-fun b!1018742 () Bool)

(declare-fun tp!309719 () Bool)

(assert (=> b!1018742 (= e!650829 tp!309719)))

(assert (= (and b!1018455 (is-ElementMatch!2810 (regTwo!6133 r!15766))) b!1018740))

(assert (= (and b!1018455 (is-Concat!4643 (regTwo!6133 r!15766))) b!1018741))

(assert (= (and b!1018455 (is-Star!2810 (regTwo!6133 r!15766))) b!1018742))

(assert (= (and b!1018455 (is-Union!2810 (regTwo!6133 r!15766))) b!1018743))

(push 1)

(assert (not b!1018733))

(assert (not b!1018720))

(assert (not d!294163))

(assert (not bm!69615))

(assert (not b!1018608))

(assert (not b!1018683))

(assert (not b!1018722))

(assert (not b!1018544))

(assert (not b!1018741))

(assert (not d!294159))

(assert (not b!1018730))

(assert tp_is_empty!5263)

(assert (not b!1018686))

(assert (not b!1018739))

(assert (not b!1018738))

(assert (not b!1018737))

(assert (not b!1018614))

(assert (not d!294161))

(assert (not b!1018731))

(assert (not bm!69618))

(assert (not b!1018602))

(assert (not b!1018742))

(assert (not bm!69597))

(assert (not bm!69616))

(assert (not b!1018743))

(assert (not bm!69598))

(assert (not b!1018685))

(assert (not b!1018721))

(assert (not bm!69607))

(assert (not b!1018684))

(assert (not b!1018681))

(assert (not d!294153))

(assert (not b!1018612))

(assert (not b!1018607))

(assert (not b!1018640))

(assert (not b!1018552))

(assert (not b!1018682))

(assert (not d!294157))

(assert (not b!1018707))

(assert (not b!1018605))

(assert (not bm!69619))

(assert (not d!294145))

(assert (not b!1018729))

(assert (not b!1018734))

(assert (not b!1018727))

(assert (not b!1018735))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

