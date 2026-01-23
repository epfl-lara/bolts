; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80976 () Bool)

(assert start!80976)

(declare-fun b!899567 () Bool)

(assert (=> b!899567 true))

(assert (=> b!899567 true))

(assert (=> b!899567 true))

(declare-fun lambda!28070 () Int)

(declare-fun lambda!28069 () Int)

(assert (=> b!899567 (not (= lambda!28070 lambda!28069))))

(assert (=> b!899567 true))

(assert (=> b!899567 true))

(assert (=> b!899567 true))

(declare-fun b!899562 () Bool)

(declare-fun e!588329 () Bool)

(declare-fun tp!282361 () Bool)

(assert (=> b!899562 (= e!588329 tp!282361)))

(declare-fun b!899563 () Bool)

(declare-datatypes ((Unit!14307 0))(
  ( (Unit!14308) )
))
(declare-fun e!588330 () Unit!14307)

(declare-fun Unit!14309 () Unit!14307)

(assert (=> b!899563 (= e!588330 Unit!14309)))

(declare-fun b!899564 () Bool)

(declare-fun e!588332 () Bool)

(declare-fun e!588331 () Bool)

(assert (=> b!899564 (= e!588332 e!588331)))

(declare-fun res!409042 () Bool)

(assert (=> b!899564 (=> res!409042 e!588331)))

(declare-datatypes ((C!5290 0))(
  ( (C!5291 (val!2893 Int)) )
))
(declare-datatypes ((Regex!2360 0))(
  ( (ElementMatch!2360 (c!145640 C!5290)) (Concat!4193 (regOne!5232 Regex!2360) (regTwo!5232 Regex!2360)) (EmptyExpr!2360) (Star!2360 (reg!2689 Regex!2360)) (EmptyLang!2360) (Union!2360 (regOne!5233 Regex!2360) (regTwo!5233 Regex!2360)) )
))
(declare-fun r!15766 () Regex!2360)

(declare-datatypes ((List!9590 0))(
  ( (Nil!9574) (Cons!9574 (h!14975 C!5290) (t!100636 List!9590)) )
))
(declare-datatypes ((tuple2!10722 0))(
  ( (tuple2!10723 (_1!6187 List!9590) (_2!6187 List!9590)) )
))
(declare-fun lt!334207 () tuple2!10722)

(declare-fun matchR!898 (Regex!2360 List!9590) Bool)

(assert (=> b!899564 (= res!409042 (not (matchR!898 (reg!2689 r!15766) (_1!6187 lt!334207))))))

(declare-datatypes ((Option!2003 0))(
  ( (None!2002) (Some!2002 (v!19419 tuple2!10722)) )
))
(declare-fun lt!334213 () Option!2003)

(declare-fun get!3039 (Option!2003) tuple2!10722)

(assert (=> b!899564 (= lt!334207 (get!3039 lt!334213))))

(declare-fun b!899565 () Bool)

(declare-fun res!409039 () Bool)

(assert (=> b!899565 (=> res!409039 e!588332)))

(declare-fun lt!334209 () Bool)

(assert (=> b!899565 (= res!409039 (not lt!334209))))

(declare-fun b!899566 () Bool)

(declare-fun lt!334206 () Regex!2360)

(declare-fun validRegex!829 (Regex!2360) Bool)

(assert (=> b!899566 (= e!588331 (validRegex!829 lt!334206))))

(declare-fun lt!334212 () Regex!2360)

(declare-fun removeUselessConcat!73 (Regex!2360) Regex!2360)

(assert (=> b!899566 (matchR!898 (removeUselessConcat!73 lt!334212) (_2!6187 lt!334207))))

(declare-fun lt!334203 () Unit!14307)

(declare-fun lemmaRemoveUselessConcatSound!65 (Regex!2360 List!9590) Unit!14307)

(assert (=> b!899566 (= lt!334203 (lemmaRemoveUselessConcatSound!65 lt!334212 (_2!6187 lt!334207)))))

(declare-fun lt!334210 () Unit!14307)

(assert (=> b!899566 (= lt!334210 e!588330)))

(declare-fun c!145639 () Bool)

(declare-fun s!10566 () List!9590)

(declare-fun size!7865 (List!9590) Int)

(assert (=> b!899566 (= c!145639 (= (size!7865 (_2!6187 lt!334207)) (size!7865 s!10566)))))

(assert (=> b!899566 (matchR!898 lt!334206 (_1!6187 lt!334207))))

(assert (=> b!899566 (= lt!334206 (removeUselessConcat!73 (reg!2689 r!15766)))))

(declare-fun lt!334208 () Unit!14307)

(assert (=> b!899566 (= lt!334208 (lemmaRemoveUselessConcatSound!65 (reg!2689 r!15766) (_1!6187 lt!334207)))))

(declare-fun e!588334 () Bool)

(assert (=> b!899567 (= e!588334 e!588332)))

(declare-fun res!409041 () Bool)

(assert (=> b!899567 (=> res!409041 e!588332)))

(declare-fun isEmpty!5773 (List!9590) Bool)

(assert (=> b!899567 (= res!409041 (isEmpty!5773 s!10566))))

(declare-fun Exists!137 (Int) Bool)

(assert (=> b!899567 (= (Exists!137 lambda!28069) (Exists!137 lambda!28070))))

(declare-fun lt!334202 () Unit!14307)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!29 (Regex!2360 List!9590) Unit!14307)

(assert (=> b!899567 (= lt!334202 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!29 (reg!2689 r!15766) s!10566))))

(assert (=> b!899567 (= lt!334209 (Exists!137 lambda!28069))))

(declare-fun isDefined!1645 (Option!2003) Bool)

(assert (=> b!899567 (= lt!334209 (isDefined!1645 lt!334213))))

(declare-fun findConcatSeparation!109 (Regex!2360 Regex!2360 List!9590 List!9590 List!9590) Option!2003)

(assert (=> b!899567 (= lt!334213 (findConcatSeparation!109 (reg!2689 r!15766) lt!334212 Nil!9574 s!10566 s!10566))))

(declare-fun lt!334211 () Unit!14307)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!109 (Regex!2360 Regex!2360 List!9590) Unit!14307)

(assert (=> b!899567 (= lt!334211 (lemmaFindConcatSeparationEquivalentToExists!109 (reg!2689 r!15766) lt!334212 s!10566))))

(assert (=> b!899567 (= lt!334212 (Star!2360 (reg!2689 r!15766)))))

(declare-fun b!899569 () Bool)

(declare-fun tp!282360 () Bool)

(declare-fun tp!282358 () Bool)

(assert (=> b!899569 (= e!588329 (and tp!282360 tp!282358))))

(declare-fun b!899570 () Bool)

(declare-fun Unit!14310 () Unit!14307)

(assert (=> b!899570 (= e!588330 Unit!14310)))

(declare-fun lt!334205 () Unit!14307)

(declare-fun mainMatchTheorem!161 (Regex!2360 List!9590) Unit!14307)

(assert (=> b!899570 (= lt!334205 (mainMatchTheorem!161 (reg!2689 r!15766) (_1!6187 lt!334207)))))

(assert (=> b!899570 false))

(declare-fun b!899571 () Bool)

(declare-fun tp!282357 () Bool)

(declare-fun tp!282362 () Bool)

(assert (=> b!899571 (= e!588329 (and tp!282357 tp!282362))))

(declare-fun b!899572 () Bool)

(declare-fun res!409044 () Bool)

(assert (=> b!899572 (=> res!409044 e!588331)))

(assert (=> b!899572 (= res!409044 (not (matchR!898 lt!334212 (_2!6187 lt!334207))))))

(declare-fun res!409043 () Bool)

(declare-fun e!588328 () Bool)

(assert (=> start!80976 (=> (not res!409043) (not e!588328))))

(assert (=> start!80976 (= res!409043 (validRegex!829 r!15766))))

(assert (=> start!80976 e!588328))

(assert (=> start!80976 e!588329))

(declare-fun e!588333 () Bool)

(assert (=> start!80976 e!588333))

(declare-fun b!899568 () Bool)

(assert (=> b!899568 (= e!588328 (not e!588334))))

(declare-fun res!409040 () Bool)

(assert (=> b!899568 (=> res!409040 e!588334)))

(declare-fun lt!334204 () Bool)

(assert (=> b!899568 (= res!409040 (or (not lt!334204) (and (is-Concat!4193 r!15766) (is-EmptyExpr!2360 (regOne!5232 r!15766))) (and (is-Concat!4193 r!15766) (is-EmptyExpr!2360 (regTwo!5232 r!15766))) (is-Concat!4193 r!15766) (is-Union!2360 r!15766) (not (is-Star!2360 r!15766))))))

(declare-fun matchRSpec!161 (Regex!2360 List!9590) Bool)

(assert (=> b!899568 (= lt!334204 (matchRSpec!161 r!15766 s!10566))))

(assert (=> b!899568 (= lt!334204 (matchR!898 r!15766 s!10566))))

(declare-fun lt!334214 () Unit!14307)

(assert (=> b!899568 (= lt!334214 (mainMatchTheorem!161 r!15766 s!10566))))

(declare-fun b!899573 () Bool)

(declare-fun tp_is_empty!4363 () Bool)

(assert (=> b!899573 (= e!588329 tp_is_empty!4363)))

(declare-fun b!899574 () Bool)

(declare-fun tp!282359 () Bool)

(assert (=> b!899574 (= e!588333 (and tp_is_empty!4363 tp!282359))))

(assert (= (and start!80976 res!409043) b!899568))

(assert (= (and b!899568 (not res!409040)) b!899567))

(assert (= (and b!899567 (not res!409041)) b!899565))

(assert (= (and b!899565 (not res!409039)) b!899564))

(assert (= (and b!899564 (not res!409042)) b!899572))

(assert (= (and b!899572 (not res!409044)) b!899566))

(assert (= (and b!899566 c!145639) b!899570))

(assert (= (and b!899566 (not c!145639)) b!899563))

(assert (= (and start!80976 (is-ElementMatch!2360 r!15766)) b!899573))

(assert (= (and start!80976 (is-Concat!4193 r!15766)) b!899571))

(assert (= (and start!80976 (is-Star!2360 r!15766)) b!899562))

(assert (= (and start!80976 (is-Union!2360 r!15766)) b!899569))

(assert (= (and start!80976 (is-Cons!9574 s!10566)) b!899574))

(declare-fun m!1137757 () Bool)

(assert (=> start!80976 m!1137757))

(declare-fun m!1137759 () Bool)

(assert (=> b!899566 m!1137759))

(declare-fun m!1137761 () Bool)

(assert (=> b!899566 m!1137761))

(declare-fun m!1137763 () Bool)

(assert (=> b!899566 m!1137763))

(declare-fun m!1137765 () Bool)

(assert (=> b!899566 m!1137765))

(declare-fun m!1137767 () Bool)

(assert (=> b!899566 m!1137767))

(declare-fun m!1137769 () Bool)

(assert (=> b!899566 m!1137769))

(declare-fun m!1137771 () Bool)

(assert (=> b!899566 m!1137771))

(assert (=> b!899566 m!1137765))

(declare-fun m!1137773 () Bool)

(assert (=> b!899566 m!1137773))

(declare-fun m!1137775 () Bool)

(assert (=> b!899566 m!1137775))

(declare-fun m!1137777 () Bool)

(assert (=> b!899567 m!1137777))

(declare-fun m!1137779 () Bool)

(assert (=> b!899567 m!1137779))

(declare-fun m!1137781 () Bool)

(assert (=> b!899567 m!1137781))

(declare-fun m!1137783 () Bool)

(assert (=> b!899567 m!1137783))

(declare-fun m!1137785 () Bool)

(assert (=> b!899567 m!1137785))

(declare-fun m!1137787 () Bool)

(assert (=> b!899567 m!1137787))

(assert (=> b!899567 m!1137785))

(declare-fun m!1137789 () Bool)

(assert (=> b!899567 m!1137789))

(declare-fun m!1137791 () Bool)

(assert (=> b!899564 m!1137791))

(declare-fun m!1137793 () Bool)

(assert (=> b!899564 m!1137793))

(declare-fun m!1137795 () Bool)

(assert (=> b!899568 m!1137795))

(declare-fun m!1137797 () Bool)

(assert (=> b!899568 m!1137797))

(declare-fun m!1137799 () Bool)

(assert (=> b!899568 m!1137799))

(declare-fun m!1137801 () Bool)

(assert (=> b!899570 m!1137801))

(declare-fun m!1137803 () Bool)

(assert (=> b!899572 m!1137803))

(push 1)

(assert (not b!899572))

(assert (not b!899574))

(assert (not b!899571))

(assert (not b!899567))

(assert (not b!899562))

(assert (not b!899570))

(assert (not b!899568))

(assert (not start!80976))

(assert (not b!899566))

(assert (not b!899569))

(assert tp_is_empty!4363)

(assert (not b!899564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!899664 () Bool)

(declare-fun e!588380 () Bool)

(declare-fun e!588382 () Bool)

(assert (=> b!899664 (= e!588380 e!588382)))

(declare-fun c!145651 () Bool)

(assert (=> b!899664 (= c!145651 (is-EmptyLang!2360 lt!334206))))

(declare-fun b!899665 () Bool)

(declare-fun e!588381 () Bool)

(declare-fun head!1592 (List!9590) C!5290)

(assert (=> b!899665 (= e!588381 (= (head!1592 (_1!6187 lt!334207)) (c!145640 lt!334206)))))

(declare-fun b!899666 () Bool)

(declare-fun lt!334256 () Bool)

(assert (=> b!899666 (= e!588382 (not lt!334256))))

(declare-fun b!899667 () Bool)

(declare-fun res!409093 () Bool)

(declare-fun e!588377 () Bool)

(assert (=> b!899667 (=> res!409093 e!588377)))

(declare-fun tail!1154 (List!9590) List!9590)

(assert (=> b!899667 (= res!409093 (not (isEmpty!5773 (tail!1154 (_1!6187 lt!334207)))))))

(declare-fun b!899668 () Bool)

(declare-fun e!588378 () Bool)

(declare-fun nullable!627 (Regex!2360) Bool)

(assert (=> b!899668 (= e!588378 (nullable!627 lt!334206))))

(declare-fun bm!53549 () Bool)

(declare-fun call!53554 () Bool)

(assert (=> bm!53549 (= call!53554 (isEmpty!5773 (_1!6187 lt!334207)))))

(declare-fun b!899669 () Bool)

(declare-fun e!588379 () Bool)

(assert (=> b!899669 (= e!588379 e!588377)))

(declare-fun res!409095 () Bool)

(assert (=> b!899669 (=> res!409095 e!588377)))

(assert (=> b!899669 (= res!409095 call!53554)))

(declare-fun b!899670 () Bool)

(assert (=> b!899670 (= e!588377 (not (= (head!1592 (_1!6187 lt!334207)) (c!145640 lt!334206))))))

(declare-fun b!899671 () Bool)

(declare-fun e!588376 () Bool)

(assert (=> b!899671 (= e!588376 e!588379)))

(declare-fun res!409096 () Bool)

(assert (=> b!899671 (=> (not res!409096) (not e!588379))))

(assert (=> b!899671 (= res!409096 (not lt!334256))))

(declare-fun b!899673 () Bool)

(declare-fun res!409094 () Bool)

(assert (=> b!899673 (=> res!409094 e!588376)))

(assert (=> b!899673 (= res!409094 e!588381)))

(declare-fun res!409098 () Bool)

(assert (=> b!899673 (=> (not res!409098) (not e!588381))))

(assert (=> b!899673 (= res!409098 lt!334256)))

(declare-fun b!899674 () Bool)

(assert (=> b!899674 (= e!588380 (= lt!334256 call!53554))))

(declare-fun b!899675 () Bool)

(declare-fun res!409097 () Bool)

(assert (=> b!899675 (=> res!409097 e!588376)))

(assert (=> b!899675 (= res!409097 (not (is-ElementMatch!2360 lt!334206)))))

(assert (=> b!899675 (= e!588382 e!588376)))

(declare-fun b!899672 () Bool)

(declare-fun derivativeStep!439 (Regex!2360 C!5290) Regex!2360)

(assert (=> b!899672 (= e!588378 (matchR!898 (derivativeStep!439 lt!334206 (head!1592 (_1!6187 lt!334207))) (tail!1154 (_1!6187 lt!334207))))))

(declare-fun d!278156 () Bool)

(assert (=> d!278156 e!588380))

(declare-fun c!145653 () Bool)

(assert (=> d!278156 (= c!145653 (is-EmptyExpr!2360 lt!334206))))

(assert (=> d!278156 (= lt!334256 e!588378)))

(declare-fun c!145652 () Bool)

(assert (=> d!278156 (= c!145652 (isEmpty!5773 (_1!6187 lt!334207)))))

(assert (=> d!278156 (validRegex!829 lt!334206)))

(assert (=> d!278156 (= (matchR!898 lt!334206 (_1!6187 lt!334207)) lt!334256)))

(declare-fun b!899676 () Bool)

(declare-fun res!409100 () Bool)

(assert (=> b!899676 (=> (not res!409100) (not e!588381))))

(assert (=> b!899676 (= res!409100 (isEmpty!5773 (tail!1154 (_1!6187 lt!334207))))))

(declare-fun b!899677 () Bool)

(declare-fun res!409099 () Bool)

(assert (=> b!899677 (=> (not res!409099) (not e!588381))))

(assert (=> b!899677 (= res!409099 (not call!53554))))

(assert (= (and d!278156 c!145652) b!899668))

(assert (= (and d!278156 (not c!145652)) b!899672))

(assert (= (and d!278156 c!145653) b!899674))

(assert (= (and d!278156 (not c!145653)) b!899664))

(assert (= (and b!899664 c!145651) b!899666))

(assert (= (and b!899664 (not c!145651)) b!899675))

(assert (= (and b!899675 (not res!409097)) b!899673))

(assert (= (and b!899673 res!409098) b!899677))

(assert (= (and b!899677 res!409099) b!899676))

(assert (= (and b!899676 res!409100) b!899665))

(assert (= (and b!899673 (not res!409094)) b!899671))

(assert (= (and b!899671 res!409096) b!899669))

(assert (= (and b!899669 (not res!409095)) b!899667))

(assert (= (and b!899667 (not res!409093)) b!899670))

(assert (= (or b!899674 b!899669 b!899677) bm!53549))

(declare-fun m!1137853 () Bool)

(assert (=> b!899668 m!1137853))

(declare-fun m!1137855 () Bool)

(assert (=> bm!53549 m!1137855))

(declare-fun m!1137857 () Bool)

(assert (=> b!899665 m!1137857))

(declare-fun m!1137859 () Bool)

(assert (=> b!899676 m!1137859))

(assert (=> b!899676 m!1137859))

(declare-fun m!1137861 () Bool)

(assert (=> b!899676 m!1137861))

(assert (=> b!899670 m!1137857))

(assert (=> d!278156 m!1137855))

(assert (=> d!278156 m!1137775))

(assert (=> b!899667 m!1137859))

(assert (=> b!899667 m!1137859))

(assert (=> b!899667 m!1137861))

(assert (=> b!899672 m!1137857))

(assert (=> b!899672 m!1137857))

(declare-fun m!1137863 () Bool)

(assert (=> b!899672 m!1137863))

(assert (=> b!899672 m!1137859))

(assert (=> b!899672 m!1137863))

(assert (=> b!899672 m!1137859))

(declare-fun m!1137865 () Bool)

(assert (=> b!899672 m!1137865))

(assert (=> b!899566 d!278156))

(declare-fun b!899678 () Bool)

(declare-fun e!588387 () Bool)

(declare-fun e!588389 () Bool)

(assert (=> b!899678 (= e!588387 e!588389)))

(declare-fun c!145654 () Bool)

(assert (=> b!899678 (= c!145654 (is-EmptyLang!2360 (removeUselessConcat!73 lt!334212)))))

(declare-fun b!899679 () Bool)

(declare-fun e!588388 () Bool)

(assert (=> b!899679 (= e!588388 (= (head!1592 (_2!6187 lt!334207)) (c!145640 (removeUselessConcat!73 lt!334212))))))

(declare-fun b!899680 () Bool)

(declare-fun lt!334257 () Bool)

(assert (=> b!899680 (= e!588389 (not lt!334257))))

(declare-fun b!899681 () Bool)

(declare-fun res!409101 () Bool)

(declare-fun e!588384 () Bool)

(assert (=> b!899681 (=> res!409101 e!588384)))

(assert (=> b!899681 (= res!409101 (not (isEmpty!5773 (tail!1154 (_2!6187 lt!334207)))))))

(declare-fun b!899682 () Bool)

(declare-fun e!588385 () Bool)

(assert (=> b!899682 (= e!588385 (nullable!627 (removeUselessConcat!73 lt!334212)))))

(declare-fun bm!53550 () Bool)

(declare-fun call!53555 () Bool)

(assert (=> bm!53550 (= call!53555 (isEmpty!5773 (_2!6187 lt!334207)))))

(declare-fun b!899683 () Bool)

(declare-fun e!588386 () Bool)

(assert (=> b!899683 (= e!588386 e!588384)))

(declare-fun res!409103 () Bool)

(assert (=> b!899683 (=> res!409103 e!588384)))

(assert (=> b!899683 (= res!409103 call!53555)))

(declare-fun b!899684 () Bool)

(assert (=> b!899684 (= e!588384 (not (= (head!1592 (_2!6187 lt!334207)) (c!145640 (removeUselessConcat!73 lt!334212)))))))

(declare-fun b!899685 () Bool)

(declare-fun e!588383 () Bool)

(assert (=> b!899685 (= e!588383 e!588386)))

(declare-fun res!409104 () Bool)

(assert (=> b!899685 (=> (not res!409104) (not e!588386))))

(assert (=> b!899685 (= res!409104 (not lt!334257))))

(declare-fun b!899687 () Bool)

(declare-fun res!409102 () Bool)

(assert (=> b!899687 (=> res!409102 e!588383)))

(assert (=> b!899687 (= res!409102 e!588388)))

(declare-fun res!409106 () Bool)

(assert (=> b!899687 (=> (not res!409106) (not e!588388))))

(assert (=> b!899687 (= res!409106 lt!334257)))

(declare-fun b!899688 () Bool)

(assert (=> b!899688 (= e!588387 (= lt!334257 call!53555))))

(declare-fun b!899689 () Bool)

(declare-fun res!409105 () Bool)

(assert (=> b!899689 (=> res!409105 e!588383)))

(assert (=> b!899689 (= res!409105 (not (is-ElementMatch!2360 (removeUselessConcat!73 lt!334212))))))

(assert (=> b!899689 (= e!588389 e!588383)))

(declare-fun b!899686 () Bool)

(assert (=> b!899686 (= e!588385 (matchR!898 (derivativeStep!439 (removeUselessConcat!73 lt!334212) (head!1592 (_2!6187 lt!334207))) (tail!1154 (_2!6187 lt!334207))))))

(declare-fun d!278158 () Bool)

(assert (=> d!278158 e!588387))

(declare-fun c!145656 () Bool)

(assert (=> d!278158 (= c!145656 (is-EmptyExpr!2360 (removeUselessConcat!73 lt!334212)))))

(assert (=> d!278158 (= lt!334257 e!588385)))

(declare-fun c!145655 () Bool)

(assert (=> d!278158 (= c!145655 (isEmpty!5773 (_2!6187 lt!334207)))))

(assert (=> d!278158 (validRegex!829 (removeUselessConcat!73 lt!334212))))

(assert (=> d!278158 (= (matchR!898 (removeUselessConcat!73 lt!334212) (_2!6187 lt!334207)) lt!334257)))

(declare-fun b!899690 () Bool)

(declare-fun res!409108 () Bool)

(assert (=> b!899690 (=> (not res!409108) (not e!588388))))

(assert (=> b!899690 (= res!409108 (isEmpty!5773 (tail!1154 (_2!6187 lt!334207))))))

(declare-fun b!899691 () Bool)

(declare-fun res!409107 () Bool)

(assert (=> b!899691 (=> (not res!409107) (not e!588388))))

(assert (=> b!899691 (= res!409107 (not call!53555))))

(assert (= (and d!278158 c!145655) b!899682))

(assert (= (and d!278158 (not c!145655)) b!899686))

(assert (= (and d!278158 c!145656) b!899688))

(assert (= (and d!278158 (not c!145656)) b!899678))

(assert (= (and b!899678 c!145654) b!899680))

(assert (= (and b!899678 (not c!145654)) b!899689))

(assert (= (and b!899689 (not res!409105)) b!899687))

(assert (= (and b!899687 res!409106) b!899691))

(assert (= (and b!899691 res!409107) b!899690))

(assert (= (and b!899690 res!409108) b!899679))

(assert (= (and b!899687 (not res!409102)) b!899685))

(assert (= (and b!899685 res!409104) b!899683))

(assert (= (and b!899683 (not res!409103)) b!899681))

(assert (= (and b!899681 (not res!409101)) b!899684))

(assert (= (or b!899688 b!899683 b!899691) bm!53550))

(assert (=> b!899682 m!1137765))

(declare-fun m!1137867 () Bool)

(assert (=> b!899682 m!1137867))

(declare-fun m!1137869 () Bool)

(assert (=> bm!53550 m!1137869))

(declare-fun m!1137871 () Bool)

(assert (=> b!899679 m!1137871))

(declare-fun m!1137873 () Bool)

(assert (=> b!899690 m!1137873))

(assert (=> b!899690 m!1137873))

(declare-fun m!1137875 () Bool)

(assert (=> b!899690 m!1137875))

(assert (=> b!899684 m!1137871))

(assert (=> d!278158 m!1137869))

(assert (=> d!278158 m!1137765))

(declare-fun m!1137877 () Bool)

(assert (=> d!278158 m!1137877))

(assert (=> b!899681 m!1137873))

(assert (=> b!899681 m!1137873))

(assert (=> b!899681 m!1137875))

(assert (=> b!899686 m!1137871))

(assert (=> b!899686 m!1137765))

(assert (=> b!899686 m!1137871))

(declare-fun m!1137879 () Bool)

(assert (=> b!899686 m!1137879))

(assert (=> b!899686 m!1137873))

(assert (=> b!899686 m!1137879))

(assert (=> b!899686 m!1137873))

(declare-fun m!1137881 () Bool)

(assert (=> b!899686 m!1137881))

(assert (=> b!899566 d!278158))

(declare-fun d!278160 () Bool)

(declare-fun lt!334260 () Int)

(assert (=> d!278160 (>= lt!334260 0)))

(declare-fun e!588392 () Int)

(assert (=> d!278160 (= lt!334260 e!588392)))

(declare-fun c!145659 () Bool)

(assert (=> d!278160 (= c!145659 (is-Nil!9574 (_2!6187 lt!334207)))))

(assert (=> d!278160 (= (size!7865 (_2!6187 lt!334207)) lt!334260)))

(declare-fun b!899696 () Bool)

(assert (=> b!899696 (= e!588392 0)))

(declare-fun b!899697 () Bool)

(assert (=> b!899697 (= e!588392 (+ 1 (size!7865 (t!100636 (_2!6187 lt!334207)))))))

(assert (= (and d!278160 c!145659) b!899696))

(assert (= (and d!278160 (not c!145659)) b!899697))

(declare-fun m!1137883 () Bool)

(assert (=> b!899697 m!1137883))

(assert (=> b!899566 d!278160))

(declare-fun b!899738 () Bool)

(declare-fun e!588423 () Bool)

(declare-fun lt!334263 () Regex!2360)

(assert (=> b!899738 (= e!588423 (= (nullable!627 lt!334263) (nullable!627 (reg!2689 r!15766))))))

(declare-fun b!899739 () Bool)

(declare-fun e!588422 () Regex!2360)

(declare-fun call!53576 () Regex!2360)

(assert (=> b!899739 (= e!588422 call!53576)))

(declare-fun bm!53566 () Bool)

(declare-fun call!53573 () Regex!2360)

(assert (=> bm!53566 (= call!53573 call!53576)))

(declare-fun d!278162 () Bool)

(assert (=> d!278162 e!588423))

(declare-fun res!409121 () Bool)

(assert (=> d!278162 (=> (not res!409121) (not e!588423))))

(assert (=> d!278162 (= res!409121 (validRegex!829 lt!334263))))

(declare-fun e!588424 () Regex!2360)

(assert (=> d!278162 (= lt!334263 e!588424)))

(declare-fun c!145678 () Bool)

(assert (=> d!278162 (= c!145678 (and (is-Concat!4193 (reg!2689 r!15766)) (is-EmptyExpr!2360 (regOne!5232 (reg!2689 r!15766)))))))

(assert (=> d!278162 (validRegex!829 (reg!2689 r!15766))))

(assert (=> d!278162 (= (removeUselessConcat!73 (reg!2689 r!15766)) lt!334263)))

(declare-fun b!899740 () Bool)

(declare-fun call!53575 () Regex!2360)

(assert (=> b!899740 (= e!588424 call!53575)))

(declare-fun b!899741 () Bool)

(declare-fun c!145677 () Bool)

(assert (=> b!899741 (= c!145677 (is-Star!2360 (reg!2689 r!15766)))))

(declare-fun e!588421 () Regex!2360)

(declare-fun e!588419 () Regex!2360)

(assert (=> b!899741 (= e!588421 e!588419)))

(declare-fun b!899742 () Bool)

(declare-fun call!53572 () Regex!2360)

(assert (=> b!899742 (= e!588421 (Union!2360 call!53573 call!53572))))

(declare-fun b!899743 () Bool)

(assert (=> b!899743 (= e!588424 e!588422)))

(declare-fun c!145676 () Bool)

(assert (=> b!899743 (= c!145676 (and (is-Concat!4193 (reg!2689 r!15766)) (is-EmptyExpr!2360 (regTwo!5232 (reg!2689 r!15766)))))))

(declare-fun b!899744 () Bool)

(declare-fun e!588420 () Regex!2360)

(assert (=> b!899744 (= e!588420 e!588421)))

(declare-fun c!145674 () Bool)

(assert (=> b!899744 (= c!145674 (is-Union!2360 (reg!2689 r!15766)))))

(declare-fun b!899745 () Bool)

(assert (=> b!899745 (= e!588419 (reg!2689 r!15766))))

(declare-fun bm!53568 () Bool)

(declare-fun call!53574 () Regex!2360)

(assert (=> bm!53568 (= call!53572 call!53574)))

(declare-fun bm!53569 () Bool)

(assert (=> bm!53569 (= call!53576 call!53575)))

(declare-fun b!899746 () Bool)

(assert (=> b!899746 (= e!588419 (Star!2360 call!53572))))

(declare-fun bm!53570 () Bool)

(declare-fun c!145675 () Bool)

(assert (=> bm!53570 (= call!53574 (removeUselessConcat!73 (ite c!145675 (regTwo!5232 (reg!2689 r!15766)) (ite c!145674 (regTwo!5233 (reg!2689 r!15766)) (reg!2689 (reg!2689 r!15766))))))))

(declare-fun b!899747 () Bool)

(assert (=> b!899747 (= c!145675 (is-Concat!4193 (reg!2689 r!15766)))))

(assert (=> b!899747 (= e!588422 e!588420)))

(declare-fun b!899748 () Bool)

(assert (=> b!899748 (= e!588420 (Concat!4193 call!53573 call!53574))))

(declare-fun bm!53571 () Bool)

(assert (=> bm!53571 (= call!53575 (removeUselessConcat!73 (ite c!145678 (regTwo!5232 (reg!2689 r!15766)) (ite (or c!145676 c!145675) (regOne!5232 (reg!2689 r!15766)) (regOne!5233 (reg!2689 r!15766))))))))

(assert (= (and d!278162 c!145678) b!899740))

(assert (= (and d!278162 (not c!145678)) b!899743))

(assert (= (and b!899743 c!145676) b!899739))

(assert (= (and b!899743 (not c!145676)) b!899747))

(assert (= (and b!899747 c!145675) b!899748))

(assert (= (and b!899747 (not c!145675)) b!899744))

(assert (= (and b!899744 c!145674) b!899742))

(assert (= (and b!899744 (not c!145674)) b!899741))

(assert (= (and b!899741 c!145677) b!899746))

(assert (= (and b!899741 (not c!145677)) b!899745))

(assert (= (or b!899742 b!899746) bm!53568))

(assert (= (or b!899748 bm!53568) bm!53570))

(assert (= (or b!899748 b!899742) bm!53566))

(assert (= (or b!899739 bm!53566) bm!53569))

(assert (= (or b!899740 bm!53569) bm!53571))

(assert (= (and d!278162 res!409121) b!899738))

(declare-fun m!1137885 () Bool)

(assert (=> b!899738 m!1137885))

(declare-fun m!1137887 () Bool)

(assert (=> b!899738 m!1137887))

(declare-fun m!1137889 () Bool)

(assert (=> d!278162 m!1137889))

(declare-fun m!1137891 () Bool)

(assert (=> d!278162 m!1137891))

(declare-fun m!1137893 () Bool)

(assert (=> bm!53570 m!1137893))

(declare-fun m!1137895 () Bool)

(assert (=> bm!53571 m!1137895))

(assert (=> b!899566 d!278162))

(declare-fun d!278166 () Bool)

(assert (=> d!278166 (= (matchR!898 (reg!2689 r!15766) (_1!6187 lt!334207)) (matchR!898 (removeUselessConcat!73 (reg!2689 r!15766)) (_1!6187 lt!334207)))))

(declare-fun lt!334266 () Unit!14307)

(declare-fun choose!5418 (Regex!2360 List!9590) Unit!14307)

(assert (=> d!278166 (= lt!334266 (choose!5418 (reg!2689 r!15766) (_1!6187 lt!334207)))))

(assert (=> d!278166 (validRegex!829 (reg!2689 r!15766))))

(assert (=> d!278166 (= (lemmaRemoveUselessConcatSound!65 (reg!2689 r!15766) (_1!6187 lt!334207)) lt!334266)))

(declare-fun bs!235152 () Bool)

(assert (= bs!235152 d!278166))

(declare-fun m!1137897 () Bool)

(assert (=> bs!235152 m!1137897))

(assert (=> bs!235152 m!1137891))

(assert (=> bs!235152 m!1137759))

(declare-fun m!1137899 () Bool)

(assert (=> bs!235152 m!1137899))

(assert (=> bs!235152 m!1137759))

(assert (=> bs!235152 m!1137791))

(assert (=> b!899566 d!278166))

(declare-fun d!278168 () Bool)

(assert (=> d!278168 (= (matchR!898 lt!334212 (_2!6187 lt!334207)) (matchR!898 (removeUselessConcat!73 lt!334212) (_2!6187 lt!334207)))))

(declare-fun lt!334267 () Unit!14307)

(assert (=> d!278168 (= lt!334267 (choose!5418 lt!334212 (_2!6187 lt!334207)))))

(assert (=> d!278168 (validRegex!829 lt!334212)))

(assert (=> d!278168 (= (lemmaRemoveUselessConcatSound!65 lt!334212 (_2!6187 lt!334207)) lt!334267)))

(declare-fun bs!235153 () Bool)

(assert (= bs!235153 d!278168))

(declare-fun m!1137901 () Bool)

(assert (=> bs!235153 m!1137901))

(declare-fun m!1137903 () Bool)

(assert (=> bs!235153 m!1137903))

(assert (=> bs!235153 m!1137765))

(assert (=> bs!235153 m!1137767))

(assert (=> bs!235153 m!1137765))

(assert (=> bs!235153 m!1137803))

(assert (=> b!899566 d!278168))

(declare-fun b!899776 () Bool)

(declare-fun e!588450 () Bool)

(declare-fun call!53586 () Bool)

(assert (=> b!899776 (= e!588450 call!53586)))

(declare-fun b!899777 () Bool)

(declare-fun e!588449 () Bool)

(declare-fun call!53587 () Bool)

(assert (=> b!899777 (= e!588449 call!53587)))

(declare-fun b!899778 () Bool)

(declare-fun res!409140 () Bool)

(assert (=> b!899778 (=> (not res!409140) (not e!588449))))

(declare-fun call!53588 () Bool)

(assert (=> b!899778 (= res!409140 call!53588)))

(declare-fun e!588452 () Bool)

(assert (=> b!899778 (= e!588452 e!588449)))

(declare-fun b!899779 () Bool)

(declare-fun e!588451 () Bool)

(assert (=> b!899779 (= e!588451 e!588450)))

(declare-fun res!409139 () Bool)

(assert (=> b!899779 (= res!409139 (not (nullable!627 (reg!2689 lt!334206))))))

(assert (=> b!899779 (=> (not res!409139) (not e!588450))))

(declare-fun b!899780 () Bool)

(declare-fun res!409138 () Bool)

(declare-fun e!588446 () Bool)

(assert (=> b!899780 (=> res!409138 e!588446)))

(assert (=> b!899780 (= res!409138 (not (is-Concat!4193 lt!334206)))))

(assert (=> b!899780 (= e!588452 e!588446)))

(declare-fun d!278170 () Bool)

(declare-fun res!409137 () Bool)

(declare-fun e!588448 () Bool)

(assert (=> d!278170 (=> res!409137 e!588448)))

(assert (=> d!278170 (= res!409137 (is-ElementMatch!2360 lt!334206))))

(assert (=> d!278170 (= (validRegex!829 lt!334206) e!588448)))

(declare-fun b!899781 () Bool)

(assert (=> b!899781 (= e!588451 e!588452)))

(declare-fun c!145686 () Bool)

(assert (=> b!899781 (= c!145686 (is-Union!2360 lt!334206))))

(declare-fun b!899782 () Bool)

(assert (=> b!899782 (= e!588448 e!588451)))

(declare-fun c!145685 () Bool)

(assert (=> b!899782 (= c!145685 (is-Star!2360 lt!334206))))

(declare-fun bm!53581 () Bool)

(assert (=> bm!53581 (= call!53588 (validRegex!829 (ite c!145686 (regOne!5233 lt!334206) (regOne!5232 lt!334206))))))

(declare-fun b!899783 () Bool)

(declare-fun e!588447 () Bool)

(assert (=> b!899783 (= e!588447 call!53587)))

(declare-fun b!899784 () Bool)

(assert (=> b!899784 (= e!588446 e!588447)))

(declare-fun res!409141 () Bool)

(assert (=> b!899784 (=> (not res!409141) (not e!588447))))

(assert (=> b!899784 (= res!409141 call!53588)))

(declare-fun bm!53582 () Bool)

(assert (=> bm!53582 (= call!53587 call!53586)))

(declare-fun bm!53583 () Bool)

(assert (=> bm!53583 (= call!53586 (validRegex!829 (ite c!145685 (reg!2689 lt!334206) (ite c!145686 (regTwo!5233 lt!334206) (regTwo!5232 lt!334206)))))))

(assert (= (and d!278170 (not res!409137)) b!899782))

(assert (= (and b!899782 c!145685) b!899779))

(assert (= (and b!899782 (not c!145685)) b!899781))

(assert (= (and b!899779 res!409139) b!899776))

(assert (= (and b!899781 c!145686) b!899778))

(assert (= (and b!899781 (not c!145686)) b!899780))

(assert (= (and b!899778 res!409140) b!899777))

(assert (= (and b!899780 (not res!409138)) b!899784))

(assert (= (and b!899784 res!409141) b!899783))

(assert (= (or b!899777 b!899783) bm!53582))

(assert (= (or b!899778 b!899784) bm!53581))

(assert (= (or b!899776 bm!53582) bm!53583))

(declare-fun m!1137911 () Bool)

(assert (=> b!899779 m!1137911))

(declare-fun m!1137913 () Bool)

(assert (=> bm!53581 m!1137913))

(declare-fun m!1137915 () Bool)

(assert (=> bm!53583 m!1137915))

(assert (=> b!899566 d!278170))

(declare-fun b!899785 () Bool)

(declare-fun e!588457 () Bool)

(declare-fun lt!334268 () Regex!2360)

(assert (=> b!899785 (= e!588457 (= (nullable!627 lt!334268) (nullable!627 lt!334212)))))

(declare-fun b!899786 () Bool)

(declare-fun e!588456 () Regex!2360)

(declare-fun call!53593 () Regex!2360)

(assert (=> b!899786 (= e!588456 call!53593)))

(declare-fun bm!53584 () Bool)

(declare-fun call!53590 () Regex!2360)

(assert (=> bm!53584 (= call!53590 call!53593)))

(declare-fun d!278174 () Bool)

(assert (=> d!278174 e!588457))

(declare-fun res!409142 () Bool)

(assert (=> d!278174 (=> (not res!409142) (not e!588457))))

(assert (=> d!278174 (= res!409142 (validRegex!829 lt!334268))))

(declare-fun e!588458 () Regex!2360)

(assert (=> d!278174 (= lt!334268 e!588458)))

(declare-fun c!145691 () Bool)

(assert (=> d!278174 (= c!145691 (and (is-Concat!4193 lt!334212) (is-EmptyExpr!2360 (regOne!5232 lt!334212))))))

(assert (=> d!278174 (validRegex!829 lt!334212)))

(assert (=> d!278174 (= (removeUselessConcat!73 lt!334212) lt!334268)))

(declare-fun b!899787 () Bool)

(declare-fun call!53592 () Regex!2360)

(assert (=> b!899787 (= e!588458 call!53592)))

(declare-fun b!899788 () Bool)

(declare-fun c!145690 () Bool)

(assert (=> b!899788 (= c!145690 (is-Star!2360 lt!334212))))

(declare-fun e!588455 () Regex!2360)

(declare-fun e!588453 () Regex!2360)

(assert (=> b!899788 (= e!588455 e!588453)))

(declare-fun b!899789 () Bool)

(declare-fun call!53589 () Regex!2360)

(assert (=> b!899789 (= e!588455 (Union!2360 call!53590 call!53589))))

(declare-fun b!899790 () Bool)

(assert (=> b!899790 (= e!588458 e!588456)))

(declare-fun c!145689 () Bool)

(assert (=> b!899790 (= c!145689 (and (is-Concat!4193 lt!334212) (is-EmptyExpr!2360 (regTwo!5232 lt!334212))))))

(declare-fun b!899791 () Bool)

(declare-fun e!588454 () Regex!2360)

(assert (=> b!899791 (= e!588454 e!588455)))

(declare-fun c!145687 () Bool)

(assert (=> b!899791 (= c!145687 (is-Union!2360 lt!334212))))

(declare-fun b!899792 () Bool)

(assert (=> b!899792 (= e!588453 lt!334212)))

(declare-fun bm!53585 () Bool)

(declare-fun call!53591 () Regex!2360)

(assert (=> bm!53585 (= call!53589 call!53591)))

(declare-fun bm!53586 () Bool)

(assert (=> bm!53586 (= call!53593 call!53592)))

(declare-fun b!899793 () Bool)

(assert (=> b!899793 (= e!588453 (Star!2360 call!53589))))

(declare-fun bm!53587 () Bool)

(declare-fun c!145688 () Bool)

(assert (=> bm!53587 (= call!53591 (removeUselessConcat!73 (ite c!145688 (regTwo!5232 lt!334212) (ite c!145687 (regTwo!5233 lt!334212) (reg!2689 lt!334212)))))))

(declare-fun b!899794 () Bool)

(assert (=> b!899794 (= c!145688 (is-Concat!4193 lt!334212))))

(assert (=> b!899794 (= e!588456 e!588454)))

(declare-fun b!899795 () Bool)

(assert (=> b!899795 (= e!588454 (Concat!4193 call!53590 call!53591))))

(declare-fun bm!53588 () Bool)

(assert (=> bm!53588 (= call!53592 (removeUselessConcat!73 (ite c!145691 (regTwo!5232 lt!334212) (ite (or c!145689 c!145688) (regOne!5232 lt!334212) (regOne!5233 lt!334212)))))))

(assert (= (and d!278174 c!145691) b!899787))

(assert (= (and d!278174 (not c!145691)) b!899790))

(assert (= (and b!899790 c!145689) b!899786))

(assert (= (and b!899790 (not c!145689)) b!899794))

(assert (= (and b!899794 c!145688) b!899795))

(assert (= (and b!899794 (not c!145688)) b!899791))

(assert (= (and b!899791 c!145687) b!899789))

(assert (= (and b!899791 (not c!145687)) b!899788))

(assert (= (and b!899788 c!145690) b!899793))

(assert (= (and b!899788 (not c!145690)) b!899792))

(assert (= (or b!899789 b!899793) bm!53585))

(assert (= (or b!899795 bm!53585) bm!53587))

(assert (= (or b!899795 b!899789) bm!53584))

(assert (= (or b!899786 bm!53584) bm!53586))

(assert (= (or b!899787 bm!53586) bm!53588))

(assert (= (and d!278174 res!409142) b!899785))

(declare-fun m!1137917 () Bool)

(assert (=> b!899785 m!1137917))

(declare-fun m!1137919 () Bool)

(assert (=> b!899785 m!1137919))

(declare-fun m!1137921 () Bool)

(assert (=> d!278174 m!1137921))

(assert (=> d!278174 m!1137903))

(declare-fun m!1137923 () Bool)

(assert (=> bm!53587 m!1137923))

(declare-fun m!1137925 () Bool)

(assert (=> bm!53588 m!1137925))

(assert (=> b!899566 d!278174))

(declare-fun d!278176 () Bool)

(declare-fun lt!334269 () Int)

(assert (=> d!278176 (>= lt!334269 0)))

(declare-fun e!588459 () Int)

(assert (=> d!278176 (= lt!334269 e!588459)))

(declare-fun c!145692 () Bool)

(assert (=> d!278176 (= c!145692 (is-Nil!9574 s!10566))))

(assert (=> d!278176 (= (size!7865 s!10566) lt!334269)))

(declare-fun b!899796 () Bool)

(assert (=> b!899796 (= e!588459 0)))

(declare-fun b!899797 () Bool)

(assert (=> b!899797 (= e!588459 (+ 1 (size!7865 (t!100636 s!10566))))))

(assert (= (and d!278176 c!145692) b!899796))

(assert (= (and d!278176 (not c!145692)) b!899797))

(declare-fun m!1137927 () Bool)

(assert (=> b!899797 m!1137927))

(assert (=> b!899566 d!278176))

(declare-fun b!899798 () Bool)

(declare-fun e!588464 () Bool)

(declare-fun call!53594 () Bool)

(assert (=> b!899798 (= e!588464 call!53594)))

(declare-fun b!899799 () Bool)

(declare-fun e!588463 () Bool)

(declare-fun call!53595 () Bool)

(assert (=> b!899799 (= e!588463 call!53595)))

(declare-fun b!899800 () Bool)

(declare-fun res!409146 () Bool)

(assert (=> b!899800 (=> (not res!409146) (not e!588463))))

(declare-fun call!53596 () Bool)

(assert (=> b!899800 (= res!409146 call!53596)))

(declare-fun e!588466 () Bool)

(assert (=> b!899800 (= e!588466 e!588463)))

(declare-fun b!899801 () Bool)

(declare-fun e!588465 () Bool)

(assert (=> b!899801 (= e!588465 e!588464)))

(declare-fun res!409145 () Bool)

(assert (=> b!899801 (= res!409145 (not (nullable!627 (reg!2689 r!15766))))))

(assert (=> b!899801 (=> (not res!409145) (not e!588464))))

(declare-fun b!899802 () Bool)

(declare-fun res!409144 () Bool)

(declare-fun e!588460 () Bool)

(assert (=> b!899802 (=> res!409144 e!588460)))

(assert (=> b!899802 (= res!409144 (not (is-Concat!4193 r!15766)))))

(assert (=> b!899802 (= e!588466 e!588460)))

(declare-fun d!278178 () Bool)

(declare-fun res!409143 () Bool)

(declare-fun e!588462 () Bool)

(assert (=> d!278178 (=> res!409143 e!588462)))

(assert (=> d!278178 (= res!409143 (is-ElementMatch!2360 r!15766))))

(assert (=> d!278178 (= (validRegex!829 r!15766) e!588462)))

(declare-fun b!899803 () Bool)

(assert (=> b!899803 (= e!588465 e!588466)))

(declare-fun c!145694 () Bool)

(assert (=> b!899803 (= c!145694 (is-Union!2360 r!15766))))

(declare-fun b!899804 () Bool)

(assert (=> b!899804 (= e!588462 e!588465)))

(declare-fun c!145693 () Bool)

(assert (=> b!899804 (= c!145693 (is-Star!2360 r!15766))))

(declare-fun bm!53589 () Bool)

(assert (=> bm!53589 (= call!53596 (validRegex!829 (ite c!145694 (regOne!5233 r!15766) (regOne!5232 r!15766))))))

(declare-fun b!899805 () Bool)

(declare-fun e!588461 () Bool)

(assert (=> b!899805 (= e!588461 call!53595)))

(declare-fun b!899806 () Bool)

(assert (=> b!899806 (= e!588460 e!588461)))

(declare-fun res!409147 () Bool)

(assert (=> b!899806 (=> (not res!409147) (not e!588461))))

(assert (=> b!899806 (= res!409147 call!53596)))

(declare-fun bm!53590 () Bool)

(assert (=> bm!53590 (= call!53595 call!53594)))

(declare-fun bm!53591 () Bool)

(assert (=> bm!53591 (= call!53594 (validRegex!829 (ite c!145693 (reg!2689 r!15766) (ite c!145694 (regTwo!5233 r!15766) (regTwo!5232 r!15766)))))))

(assert (= (and d!278178 (not res!409143)) b!899804))

(assert (= (and b!899804 c!145693) b!899801))

(assert (= (and b!899804 (not c!145693)) b!899803))

(assert (= (and b!899801 res!409145) b!899798))

(assert (= (and b!899803 c!145694) b!899800))

(assert (= (and b!899803 (not c!145694)) b!899802))

(assert (= (and b!899800 res!409146) b!899799))

(assert (= (and b!899802 (not res!409144)) b!899806))

(assert (= (and b!899806 res!409147) b!899805))

(assert (= (or b!899799 b!899805) bm!53590))

(assert (= (or b!899800 b!899806) bm!53589))

(assert (= (or b!899798 bm!53590) bm!53591))

(assert (=> b!899801 m!1137887))

(declare-fun m!1137929 () Bool)

(assert (=> bm!53589 m!1137929))

(declare-fun m!1137931 () Bool)

(assert (=> bm!53591 m!1137931))

(assert (=> start!80976 d!278178))

(declare-fun b!899807 () Bool)

(declare-fun e!588471 () Bool)

(declare-fun e!588473 () Bool)

(assert (=> b!899807 (= e!588471 e!588473)))

(declare-fun c!145695 () Bool)

(assert (=> b!899807 (= c!145695 (is-EmptyLang!2360 lt!334212))))

(declare-fun b!899808 () Bool)

(declare-fun e!588472 () Bool)

(assert (=> b!899808 (= e!588472 (= (head!1592 (_2!6187 lt!334207)) (c!145640 lt!334212)))))

(declare-fun b!899809 () Bool)

(declare-fun lt!334270 () Bool)

(assert (=> b!899809 (= e!588473 (not lt!334270))))

(declare-fun b!899810 () Bool)

(declare-fun res!409148 () Bool)

(declare-fun e!588468 () Bool)

(assert (=> b!899810 (=> res!409148 e!588468)))

(assert (=> b!899810 (= res!409148 (not (isEmpty!5773 (tail!1154 (_2!6187 lt!334207)))))))

(declare-fun b!899811 () Bool)

(declare-fun e!588469 () Bool)

(assert (=> b!899811 (= e!588469 (nullable!627 lt!334212))))

(declare-fun bm!53592 () Bool)

(declare-fun call!53597 () Bool)

(assert (=> bm!53592 (= call!53597 (isEmpty!5773 (_2!6187 lt!334207)))))

(declare-fun b!899812 () Bool)

(declare-fun e!588470 () Bool)

(assert (=> b!899812 (= e!588470 e!588468)))

(declare-fun res!409150 () Bool)

(assert (=> b!899812 (=> res!409150 e!588468)))

(assert (=> b!899812 (= res!409150 call!53597)))

(declare-fun b!899813 () Bool)

(assert (=> b!899813 (= e!588468 (not (= (head!1592 (_2!6187 lt!334207)) (c!145640 lt!334212))))))

(declare-fun b!899814 () Bool)

(declare-fun e!588467 () Bool)

(assert (=> b!899814 (= e!588467 e!588470)))

(declare-fun res!409151 () Bool)

(assert (=> b!899814 (=> (not res!409151) (not e!588470))))

(assert (=> b!899814 (= res!409151 (not lt!334270))))

(declare-fun b!899816 () Bool)

(declare-fun res!409149 () Bool)

(assert (=> b!899816 (=> res!409149 e!588467)))

(assert (=> b!899816 (= res!409149 e!588472)))

(declare-fun res!409153 () Bool)

(assert (=> b!899816 (=> (not res!409153) (not e!588472))))

(assert (=> b!899816 (= res!409153 lt!334270)))

(declare-fun b!899817 () Bool)

(assert (=> b!899817 (= e!588471 (= lt!334270 call!53597))))

(declare-fun b!899818 () Bool)

(declare-fun res!409152 () Bool)

(assert (=> b!899818 (=> res!409152 e!588467)))

(assert (=> b!899818 (= res!409152 (not (is-ElementMatch!2360 lt!334212)))))

(assert (=> b!899818 (= e!588473 e!588467)))

(declare-fun b!899815 () Bool)

(assert (=> b!899815 (= e!588469 (matchR!898 (derivativeStep!439 lt!334212 (head!1592 (_2!6187 lt!334207))) (tail!1154 (_2!6187 lt!334207))))))

(declare-fun d!278180 () Bool)

(assert (=> d!278180 e!588471))

(declare-fun c!145697 () Bool)

(assert (=> d!278180 (= c!145697 (is-EmptyExpr!2360 lt!334212))))

(assert (=> d!278180 (= lt!334270 e!588469)))

(declare-fun c!145696 () Bool)

(assert (=> d!278180 (= c!145696 (isEmpty!5773 (_2!6187 lt!334207)))))

(assert (=> d!278180 (validRegex!829 lt!334212)))

(assert (=> d!278180 (= (matchR!898 lt!334212 (_2!6187 lt!334207)) lt!334270)))

(declare-fun b!899819 () Bool)

(declare-fun res!409155 () Bool)

(assert (=> b!899819 (=> (not res!409155) (not e!588472))))

(assert (=> b!899819 (= res!409155 (isEmpty!5773 (tail!1154 (_2!6187 lt!334207))))))

(declare-fun b!899820 () Bool)

(declare-fun res!409154 () Bool)

(assert (=> b!899820 (=> (not res!409154) (not e!588472))))

(assert (=> b!899820 (= res!409154 (not call!53597))))

(assert (= (and d!278180 c!145696) b!899811))

(assert (= (and d!278180 (not c!145696)) b!899815))

(assert (= (and d!278180 c!145697) b!899817))

(assert (= (and d!278180 (not c!145697)) b!899807))

(assert (= (and b!899807 c!145695) b!899809))

(assert (= (and b!899807 (not c!145695)) b!899818))

(assert (= (and b!899818 (not res!409152)) b!899816))

(assert (= (and b!899816 res!409153) b!899820))

(assert (= (and b!899820 res!409154) b!899819))

(assert (= (and b!899819 res!409155) b!899808))

(assert (= (and b!899816 (not res!409149)) b!899814))

(assert (= (and b!899814 res!409151) b!899812))

(assert (= (and b!899812 (not res!409150)) b!899810))

(assert (= (and b!899810 (not res!409148)) b!899813))

(assert (= (or b!899817 b!899812 b!899820) bm!53592))

(assert (=> b!899811 m!1137919))

(assert (=> bm!53592 m!1137869))

(assert (=> b!899808 m!1137871))

(assert (=> b!899819 m!1137873))

(assert (=> b!899819 m!1137873))

(assert (=> b!899819 m!1137875))

(assert (=> b!899813 m!1137871))

(assert (=> d!278180 m!1137869))

(assert (=> d!278180 m!1137903))

(assert (=> b!899810 m!1137873))

(assert (=> b!899810 m!1137873))

(assert (=> b!899810 m!1137875))

(assert (=> b!899815 m!1137871))

(assert (=> b!899815 m!1137871))

(declare-fun m!1137933 () Bool)

(assert (=> b!899815 m!1137933))

(assert (=> b!899815 m!1137873))

(assert (=> b!899815 m!1137933))

(assert (=> b!899815 m!1137873))

(declare-fun m!1137935 () Bool)

(assert (=> b!899815 m!1137935))

(assert (=> b!899572 d!278180))

(declare-fun b!899867 () Bool)

(declare-fun lt!334281 () Unit!14307)

(declare-fun lt!334279 () Unit!14307)

(assert (=> b!899867 (= lt!334281 lt!334279)))

(declare-fun ++!2502 (List!9590 List!9590) List!9590)

(assert (=> b!899867 (= (++!2502 (++!2502 Nil!9574 (Cons!9574 (h!14975 s!10566) Nil!9574)) (t!100636 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!126 (List!9590 C!5290 List!9590 List!9590) Unit!14307)

(assert (=> b!899867 (= lt!334279 (lemmaMoveElementToOtherListKeepsConcatEq!126 Nil!9574 (h!14975 s!10566) (t!100636 s!10566) s!10566))))

(declare-fun e!588498 () Option!2003)

(assert (=> b!899867 (= e!588498 (findConcatSeparation!109 (reg!2689 r!15766) lt!334212 (++!2502 Nil!9574 (Cons!9574 (h!14975 s!10566) Nil!9574)) (t!100636 s!10566) s!10566))))

(declare-fun b!899868 () Bool)

(assert (=> b!899868 (= e!588498 None!2002)))

(declare-fun b!899869 () Bool)

(declare-fun e!588499 () Option!2003)

(assert (=> b!899869 (= e!588499 e!588498)))

(declare-fun c!145708 () Bool)

(assert (=> b!899869 (= c!145708 (is-Nil!9574 s!10566))))

(declare-fun b!899870 () Bool)

(declare-fun e!588501 () Bool)

(assert (=> b!899870 (= e!588501 (matchR!898 lt!334212 s!10566))))

(declare-fun d!278182 () Bool)

(declare-fun e!588500 () Bool)

(assert (=> d!278182 e!588500))

(declare-fun res!409186 () Bool)

(assert (=> d!278182 (=> res!409186 e!588500)))

(declare-fun e!588502 () Bool)

(assert (=> d!278182 (= res!409186 e!588502)))

(declare-fun res!409184 () Bool)

(assert (=> d!278182 (=> (not res!409184) (not e!588502))))

(declare-fun lt!334280 () Option!2003)

(assert (=> d!278182 (= res!409184 (isDefined!1645 lt!334280))))

(assert (=> d!278182 (= lt!334280 e!588499)))

(declare-fun c!145709 () Bool)

(assert (=> d!278182 (= c!145709 e!588501)))

(declare-fun res!409182 () Bool)

(assert (=> d!278182 (=> (not res!409182) (not e!588501))))

(assert (=> d!278182 (= res!409182 (matchR!898 (reg!2689 r!15766) Nil!9574))))

(assert (=> d!278182 (validRegex!829 (reg!2689 r!15766))))

(assert (=> d!278182 (= (findConcatSeparation!109 (reg!2689 r!15766) lt!334212 Nil!9574 s!10566 s!10566) lt!334280)))

(declare-fun b!899871 () Bool)

(assert (=> b!899871 (= e!588500 (not (isDefined!1645 lt!334280)))))

(declare-fun b!899872 () Bool)

(declare-fun res!409185 () Bool)

(assert (=> b!899872 (=> (not res!409185) (not e!588502))))

(assert (=> b!899872 (= res!409185 (matchR!898 (reg!2689 r!15766) (_1!6187 (get!3039 lt!334280))))))

(declare-fun b!899873 () Bool)

(assert (=> b!899873 (= e!588499 (Some!2002 (tuple2!10723 Nil!9574 s!10566)))))

(declare-fun b!899874 () Bool)

(assert (=> b!899874 (= e!588502 (= (++!2502 (_1!6187 (get!3039 lt!334280)) (_2!6187 (get!3039 lt!334280))) s!10566))))

(declare-fun b!899875 () Bool)

(declare-fun res!409183 () Bool)

(assert (=> b!899875 (=> (not res!409183) (not e!588502))))

(assert (=> b!899875 (= res!409183 (matchR!898 lt!334212 (_2!6187 (get!3039 lt!334280))))))

(assert (= (and d!278182 res!409182) b!899870))

(assert (= (and d!278182 c!145709) b!899873))

(assert (= (and d!278182 (not c!145709)) b!899869))

(assert (= (and b!899869 c!145708) b!899868))

(assert (= (and b!899869 (not c!145708)) b!899867))

(assert (= (and d!278182 res!409184) b!899872))

(assert (= (and b!899872 res!409185) b!899875))

(assert (= (and b!899875 res!409183) b!899874))

(assert (= (and d!278182 (not res!409186)) b!899871))

(declare-fun m!1137937 () Bool)

(assert (=> b!899872 m!1137937))

(declare-fun m!1137939 () Bool)

(assert (=> b!899872 m!1137939))

(declare-fun m!1137941 () Bool)

(assert (=> d!278182 m!1137941))

(declare-fun m!1137943 () Bool)

(assert (=> d!278182 m!1137943))

(assert (=> d!278182 m!1137891))

(declare-fun m!1137945 () Bool)

(assert (=> b!899867 m!1137945))

(assert (=> b!899867 m!1137945))

(declare-fun m!1137947 () Bool)

(assert (=> b!899867 m!1137947))

(declare-fun m!1137949 () Bool)

(assert (=> b!899867 m!1137949))

(assert (=> b!899867 m!1137945))

(declare-fun m!1137951 () Bool)

(assert (=> b!899867 m!1137951))

(assert (=> b!899871 m!1137941))

(assert (=> b!899874 m!1137937))

(declare-fun m!1137953 () Bool)

(assert (=> b!899874 m!1137953))

(declare-fun m!1137955 () Bool)

(assert (=> b!899870 m!1137955))

(assert (=> b!899875 m!1137937))

(declare-fun m!1137957 () Bool)

(assert (=> b!899875 m!1137957))

(assert (=> b!899567 d!278182))

(declare-fun d!278184 () Bool)

(assert (=> d!278184 (= (isEmpty!5773 s!10566) (is-Nil!9574 s!10566))))

(assert (=> b!899567 d!278184))

(declare-fun d!278186 () Bool)

(declare-fun choose!5419 (Int) Bool)

(assert (=> d!278186 (= (Exists!137 lambda!28070) (choose!5419 lambda!28070))))

(declare-fun bs!235154 () Bool)

(assert (= bs!235154 d!278186))

(declare-fun m!1137959 () Bool)

(assert (=> bs!235154 m!1137959))

(assert (=> b!899567 d!278186))

(declare-fun bs!235156 () Bool)

(declare-fun d!278188 () Bool)

(assert (= bs!235156 (and d!278188 b!899567)))

(declare-fun lambda!28083 () Int)

(assert (=> bs!235156 (= (= (Star!2360 (reg!2689 r!15766)) lt!334212) (= lambda!28083 lambda!28069))))

(assert (=> bs!235156 (not (= lambda!28083 lambda!28070))))

(assert (=> d!278188 true))

(assert (=> d!278188 true))

(declare-fun lambda!28084 () Int)

(assert (=> bs!235156 (not (= lambda!28084 lambda!28069))))

(assert (=> bs!235156 (= (= (Star!2360 (reg!2689 r!15766)) lt!334212) (= lambda!28084 lambda!28070))))

(declare-fun bs!235157 () Bool)

(assert (= bs!235157 d!278188))

(assert (=> bs!235157 (not (= lambda!28084 lambda!28083))))

(assert (=> d!278188 true))

(assert (=> d!278188 true))

(assert (=> d!278188 (= (Exists!137 lambda!28083) (Exists!137 lambda!28084))))

(declare-fun lt!334286 () Unit!14307)

(declare-fun choose!5420 (Regex!2360 List!9590) Unit!14307)

(assert (=> d!278188 (= lt!334286 (choose!5420 (reg!2689 r!15766) s!10566))))

(assert (=> d!278188 (validRegex!829 (reg!2689 r!15766))))

(assert (=> d!278188 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!29 (reg!2689 r!15766) s!10566) lt!334286)))

(declare-fun m!1137993 () Bool)

(assert (=> bs!235157 m!1137993))

(declare-fun m!1137995 () Bool)

(assert (=> bs!235157 m!1137995))

(declare-fun m!1137997 () Bool)

(assert (=> bs!235157 m!1137997))

(assert (=> bs!235157 m!1137891))

(assert (=> b!899567 d!278188))

(declare-fun bs!235158 () Bool)

(declare-fun d!278198 () Bool)

(assert (= bs!235158 (and d!278198 b!899567)))

(declare-fun lambda!28087 () Int)

(assert (=> bs!235158 (= lambda!28087 lambda!28069)))

(assert (=> bs!235158 (not (= lambda!28087 lambda!28070))))

(declare-fun bs!235159 () Bool)

(assert (= bs!235159 (and d!278198 d!278188)))

(assert (=> bs!235159 (= (= lt!334212 (Star!2360 (reg!2689 r!15766))) (= lambda!28087 lambda!28083))))

(assert (=> bs!235159 (not (= lambda!28087 lambda!28084))))

(assert (=> d!278198 true))

(assert (=> d!278198 true))

(assert (=> d!278198 true))

(assert (=> d!278198 (= (isDefined!1645 (findConcatSeparation!109 (reg!2689 r!15766) lt!334212 Nil!9574 s!10566 s!10566)) (Exists!137 lambda!28087))))

(declare-fun lt!334289 () Unit!14307)

(declare-fun choose!5421 (Regex!2360 Regex!2360 List!9590) Unit!14307)

(assert (=> d!278198 (= lt!334289 (choose!5421 (reg!2689 r!15766) lt!334212 s!10566))))

(assert (=> d!278198 (validRegex!829 (reg!2689 r!15766))))

(assert (=> d!278198 (= (lemmaFindConcatSeparationEquivalentToExists!109 (reg!2689 r!15766) lt!334212 s!10566) lt!334289)))

(declare-fun bs!235160 () Bool)

(assert (= bs!235160 d!278198))

(assert (=> bs!235160 m!1137779))

(assert (=> bs!235160 m!1137891))

(assert (=> bs!235160 m!1137779))

(declare-fun m!1137999 () Bool)

(assert (=> bs!235160 m!1137999))

(declare-fun m!1138001 () Bool)

(assert (=> bs!235160 m!1138001))

(declare-fun m!1138003 () Bool)

(assert (=> bs!235160 m!1138003))

(assert (=> b!899567 d!278198))

(declare-fun d!278200 () Bool)

(declare-fun isEmpty!5775 (Option!2003) Bool)

(assert (=> d!278200 (= (isDefined!1645 lt!334213) (not (isEmpty!5775 lt!334213)))))

(declare-fun bs!235161 () Bool)

(assert (= bs!235161 d!278200))

(declare-fun m!1138005 () Bool)

(assert (=> bs!235161 m!1138005))

(assert (=> b!899567 d!278200))

(declare-fun d!278202 () Bool)

(assert (=> d!278202 (= (Exists!137 lambda!28069) (choose!5419 lambda!28069))))

(declare-fun bs!235162 () Bool)

(assert (= bs!235162 d!278202))

(declare-fun m!1138007 () Bool)

(assert (=> bs!235162 m!1138007))

(assert (=> b!899567 d!278202))

(declare-fun bs!235163 () Bool)

(declare-fun b!899973 () Bool)

(assert (= bs!235163 (and b!899973 b!899567)))

(declare-fun lambda!28092 () Int)

(assert (=> bs!235163 (= (= r!15766 lt!334212) (= lambda!28092 lambda!28070))))

(declare-fun bs!235164 () Bool)

(assert (= bs!235164 (and b!899973 d!278188)))

(assert (=> bs!235164 (not (= lambda!28092 lambda!28083))))

(assert (=> bs!235163 (not (= lambda!28092 lambda!28069))))

(declare-fun bs!235165 () Bool)

(assert (= bs!235165 (and b!899973 d!278198)))

(assert (=> bs!235165 (not (= lambda!28092 lambda!28087))))

(assert (=> bs!235164 (= (= r!15766 (Star!2360 (reg!2689 r!15766))) (= lambda!28092 lambda!28084))))

(assert (=> b!899973 true))

(assert (=> b!899973 true))

(declare-fun bs!235166 () Bool)

(declare-fun b!899978 () Bool)

(assert (= bs!235166 (and b!899978 b!899567)))

(declare-fun lambda!28093 () Int)

(assert (=> bs!235166 (not (= lambda!28093 lambda!28070))))

(declare-fun bs!235167 () Bool)

(assert (= bs!235167 (and b!899978 d!278188)))

(assert (=> bs!235167 (not (= lambda!28093 lambda!28083))))

(assert (=> bs!235166 (not (= lambda!28093 lambda!28069))))

(declare-fun bs!235168 () Bool)

(assert (= bs!235168 (and b!899978 d!278198)))

(assert (=> bs!235168 (not (= lambda!28093 lambda!28087))))

(declare-fun bs!235169 () Bool)

(assert (= bs!235169 (and b!899978 b!899973)))

(assert (=> bs!235169 (not (= lambda!28093 lambda!28092))))

(assert (=> bs!235167 (not (= lambda!28093 lambda!28084))))

(assert (=> b!899978 true))

(assert (=> b!899978 true))

(declare-fun b!899968 () Bool)

(declare-fun c!145730 () Bool)

(assert (=> b!899968 (= c!145730 (is-Union!2360 r!15766))))

(declare-fun e!588556 () Bool)

(declare-fun e!588551 () Bool)

(assert (=> b!899968 (= e!588556 e!588551)))

(declare-fun b!899969 () Bool)

(declare-fun c!145731 () Bool)

(assert (=> b!899969 (= c!145731 (is-ElementMatch!2360 r!15766))))

(declare-fun e!588557 () Bool)

(assert (=> b!899969 (= e!588557 e!588556)))

(declare-fun b!899970 () Bool)

(declare-fun e!588552 () Bool)

(assert (=> b!899970 (= e!588552 (matchRSpec!161 (regTwo!5233 r!15766) s!10566))))

(declare-fun b!899971 () Bool)

(declare-fun e!588554 () Bool)

(assert (=> b!899971 (= e!588551 e!588554)))

(declare-fun c!145729 () Bool)

(assert (=> b!899971 (= c!145729 (is-Star!2360 r!15766))))

(declare-fun bm!53601 () Bool)

(declare-fun call!53607 () Bool)

(assert (=> bm!53601 (= call!53607 (isEmpty!5773 s!10566))))

(declare-fun b!899972 () Bool)

(assert (=> b!899972 (= e!588556 (= s!10566 (Cons!9574 (c!145640 r!15766) Nil!9574)))))

(declare-fun e!588553 () Bool)

(declare-fun call!53606 () Bool)

(assert (=> b!899973 (= e!588553 call!53606)))

(declare-fun b!899974 () Bool)

(assert (=> b!899974 (= e!588551 e!588552)))

(declare-fun res!409245 () Bool)

(assert (=> b!899974 (= res!409245 (matchRSpec!161 (regOne!5233 r!15766) s!10566))))

(assert (=> b!899974 (=> res!409245 e!588552)))

(declare-fun b!899975 () Bool)

(declare-fun res!409243 () Bool)

(assert (=> b!899975 (=> res!409243 e!588553)))

(assert (=> b!899975 (= res!409243 call!53607)))

(assert (=> b!899975 (= e!588554 e!588553)))

(declare-fun b!899976 () Bool)

(declare-fun e!588555 () Bool)

(assert (=> b!899976 (= e!588555 call!53607)))

(declare-fun d!278204 () Bool)

(declare-fun c!145728 () Bool)

(assert (=> d!278204 (= c!145728 (is-EmptyExpr!2360 r!15766))))

(assert (=> d!278204 (= (matchRSpec!161 r!15766 s!10566) e!588555)))

(declare-fun bm!53602 () Bool)

(assert (=> bm!53602 (= call!53606 (Exists!137 (ite c!145729 lambda!28092 lambda!28093)))))

(declare-fun b!899977 () Bool)

(assert (=> b!899977 (= e!588555 e!588557)))

(declare-fun res!409244 () Bool)

(assert (=> b!899977 (= res!409244 (not (is-EmptyLang!2360 r!15766)))))

(assert (=> b!899977 (=> (not res!409244) (not e!588557))))

(assert (=> b!899978 (= e!588554 call!53606)))

(assert (= (and d!278204 c!145728) b!899976))

(assert (= (and d!278204 (not c!145728)) b!899977))

(assert (= (and b!899977 res!409244) b!899969))

(assert (= (and b!899969 c!145731) b!899972))

(assert (= (and b!899969 (not c!145731)) b!899968))

(assert (= (and b!899968 c!145730) b!899974))

(assert (= (and b!899968 (not c!145730)) b!899971))

(assert (= (and b!899974 (not res!409245)) b!899970))

(assert (= (and b!899971 c!145729) b!899975))

(assert (= (and b!899971 (not c!145729)) b!899978))

(assert (= (and b!899975 (not res!409243)) b!899973))

(assert (= (or b!899973 b!899978) bm!53602))

(assert (= (or b!899976 b!899975) bm!53601))

(declare-fun m!1138009 () Bool)

(assert (=> b!899970 m!1138009))

(assert (=> bm!53601 m!1137787))

(declare-fun m!1138011 () Bool)

(assert (=> b!899974 m!1138011))

(declare-fun m!1138013 () Bool)

(assert (=> bm!53602 m!1138013))

(assert (=> b!899568 d!278204))

(declare-fun b!899979 () Bool)

(declare-fun e!588562 () Bool)

(declare-fun e!588564 () Bool)

(assert (=> b!899979 (= e!588562 e!588564)))

(declare-fun c!145732 () Bool)

(assert (=> b!899979 (= c!145732 (is-EmptyLang!2360 r!15766))))

(declare-fun b!899980 () Bool)

(declare-fun e!588563 () Bool)

(assert (=> b!899980 (= e!588563 (= (head!1592 s!10566) (c!145640 r!15766)))))

(declare-fun b!899981 () Bool)

(declare-fun lt!334296 () Bool)

(assert (=> b!899981 (= e!588564 (not lt!334296))))

(declare-fun b!899982 () Bool)

(declare-fun res!409246 () Bool)

(declare-fun e!588559 () Bool)

(assert (=> b!899982 (=> res!409246 e!588559)))

(assert (=> b!899982 (= res!409246 (not (isEmpty!5773 (tail!1154 s!10566))))))

(declare-fun b!899983 () Bool)

(declare-fun e!588560 () Bool)

(assert (=> b!899983 (= e!588560 (nullable!627 r!15766))))

(declare-fun bm!53603 () Bool)

(declare-fun call!53608 () Bool)

(assert (=> bm!53603 (= call!53608 (isEmpty!5773 s!10566))))

(declare-fun b!899984 () Bool)

(declare-fun e!588561 () Bool)

(assert (=> b!899984 (= e!588561 e!588559)))

(declare-fun res!409248 () Bool)

(assert (=> b!899984 (=> res!409248 e!588559)))

(assert (=> b!899984 (= res!409248 call!53608)))

(declare-fun b!899985 () Bool)

(assert (=> b!899985 (= e!588559 (not (= (head!1592 s!10566) (c!145640 r!15766))))))

(declare-fun b!899986 () Bool)

(declare-fun e!588558 () Bool)

(assert (=> b!899986 (= e!588558 e!588561)))

(declare-fun res!409249 () Bool)

(assert (=> b!899986 (=> (not res!409249) (not e!588561))))

(assert (=> b!899986 (= res!409249 (not lt!334296))))

(declare-fun b!899988 () Bool)

(declare-fun res!409247 () Bool)

(assert (=> b!899988 (=> res!409247 e!588558)))

(assert (=> b!899988 (= res!409247 e!588563)))

(declare-fun res!409251 () Bool)

(assert (=> b!899988 (=> (not res!409251) (not e!588563))))

(assert (=> b!899988 (= res!409251 lt!334296)))

(declare-fun b!899989 () Bool)

(assert (=> b!899989 (= e!588562 (= lt!334296 call!53608))))

(declare-fun b!899990 () Bool)

(declare-fun res!409250 () Bool)

(assert (=> b!899990 (=> res!409250 e!588558)))

(assert (=> b!899990 (= res!409250 (not (is-ElementMatch!2360 r!15766)))))

(assert (=> b!899990 (= e!588564 e!588558)))

(declare-fun b!899987 () Bool)

(assert (=> b!899987 (= e!588560 (matchR!898 (derivativeStep!439 r!15766 (head!1592 s!10566)) (tail!1154 s!10566)))))

(declare-fun d!278206 () Bool)

(assert (=> d!278206 e!588562))

(declare-fun c!145734 () Bool)

(assert (=> d!278206 (= c!145734 (is-EmptyExpr!2360 r!15766))))

(assert (=> d!278206 (= lt!334296 e!588560)))

(declare-fun c!145733 () Bool)

(assert (=> d!278206 (= c!145733 (isEmpty!5773 s!10566))))

(assert (=> d!278206 (validRegex!829 r!15766)))

(assert (=> d!278206 (= (matchR!898 r!15766 s!10566) lt!334296)))

(declare-fun b!899991 () Bool)

(declare-fun res!409253 () Bool)

(assert (=> b!899991 (=> (not res!409253) (not e!588563))))

(assert (=> b!899991 (= res!409253 (isEmpty!5773 (tail!1154 s!10566)))))

(declare-fun b!899992 () Bool)

(declare-fun res!409252 () Bool)

(assert (=> b!899992 (=> (not res!409252) (not e!588563))))

(assert (=> b!899992 (= res!409252 (not call!53608))))

(assert (= (and d!278206 c!145733) b!899983))

(assert (= (and d!278206 (not c!145733)) b!899987))

(assert (= (and d!278206 c!145734) b!899989))

(assert (= (and d!278206 (not c!145734)) b!899979))

(assert (= (and b!899979 c!145732) b!899981))

(assert (= (and b!899979 (not c!145732)) b!899990))

(assert (= (and b!899990 (not res!409250)) b!899988))

(assert (= (and b!899988 res!409251) b!899992))

(assert (= (and b!899992 res!409252) b!899991))

(assert (= (and b!899991 res!409253) b!899980))

(assert (= (and b!899988 (not res!409247)) b!899986))

(assert (= (and b!899986 res!409249) b!899984))

(assert (= (and b!899984 (not res!409248)) b!899982))

(assert (= (and b!899982 (not res!409246)) b!899985))

(assert (= (or b!899989 b!899984 b!899992) bm!53603))

(declare-fun m!1138015 () Bool)

(assert (=> b!899983 m!1138015))

(assert (=> bm!53603 m!1137787))

(declare-fun m!1138017 () Bool)

(assert (=> b!899980 m!1138017))

(declare-fun m!1138019 () Bool)

(assert (=> b!899991 m!1138019))

(assert (=> b!899991 m!1138019))

(declare-fun m!1138021 () Bool)

(assert (=> b!899991 m!1138021))

(assert (=> b!899985 m!1138017))

(assert (=> d!278206 m!1137787))

(assert (=> d!278206 m!1137757))

(assert (=> b!899982 m!1138019))

(assert (=> b!899982 m!1138019))

(assert (=> b!899982 m!1138021))

(assert (=> b!899987 m!1138017))

(assert (=> b!899987 m!1138017))

(declare-fun m!1138023 () Bool)

(assert (=> b!899987 m!1138023))

(assert (=> b!899987 m!1138019))

(assert (=> b!899987 m!1138023))

(assert (=> b!899987 m!1138019))

(declare-fun m!1138025 () Bool)

(assert (=> b!899987 m!1138025))

(assert (=> b!899568 d!278206))

(declare-fun d!278208 () Bool)

(assert (=> d!278208 (= (matchR!898 r!15766 s!10566) (matchRSpec!161 r!15766 s!10566))))

(declare-fun lt!334302 () Unit!14307)

(declare-fun choose!5423 (Regex!2360 List!9590) Unit!14307)

(assert (=> d!278208 (= lt!334302 (choose!5423 r!15766 s!10566))))

(assert (=> d!278208 (validRegex!829 r!15766)))

(assert (=> d!278208 (= (mainMatchTheorem!161 r!15766 s!10566) lt!334302)))

(declare-fun bs!235170 () Bool)

(assert (= bs!235170 d!278208))

(assert (=> bs!235170 m!1137797))

(assert (=> bs!235170 m!1137795))

(declare-fun m!1138027 () Bool)

(assert (=> bs!235170 m!1138027))

(assert (=> bs!235170 m!1137757))

(assert (=> b!899568 d!278208))

(declare-fun b!900002 () Bool)

(declare-fun e!588574 () Bool)

(declare-fun e!588576 () Bool)

(assert (=> b!900002 (= e!588574 e!588576)))

(declare-fun c!145737 () Bool)

(assert (=> b!900002 (= c!145737 (is-EmptyLang!2360 (reg!2689 r!15766)))))

(declare-fun b!900003 () Bool)

(declare-fun e!588575 () Bool)

(assert (=> b!900003 (= e!588575 (= (head!1592 (_1!6187 lt!334207)) (c!145640 (reg!2689 r!15766))))))

(declare-fun b!900004 () Bool)

(declare-fun lt!334303 () Bool)

(assert (=> b!900004 (= e!588576 (not lt!334303))))

(declare-fun b!900005 () Bool)

(declare-fun res!409259 () Bool)

(declare-fun e!588571 () Bool)

(assert (=> b!900005 (=> res!409259 e!588571)))

(assert (=> b!900005 (= res!409259 (not (isEmpty!5773 (tail!1154 (_1!6187 lt!334207)))))))

(declare-fun b!900006 () Bool)

(declare-fun e!588572 () Bool)

(assert (=> b!900006 (= e!588572 (nullable!627 (reg!2689 r!15766)))))

(declare-fun bm!53604 () Bool)

(declare-fun call!53609 () Bool)

(assert (=> bm!53604 (= call!53609 (isEmpty!5773 (_1!6187 lt!334207)))))

(declare-fun b!900007 () Bool)

(declare-fun e!588573 () Bool)

(assert (=> b!900007 (= e!588573 e!588571)))

(declare-fun res!409261 () Bool)

(assert (=> b!900007 (=> res!409261 e!588571)))

(assert (=> b!900007 (= res!409261 call!53609)))

(declare-fun b!900008 () Bool)

(assert (=> b!900008 (= e!588571 (not (= (head!1592 (_1!6187 lt!334207)) (c!145640 (reg!2689 r!15766)))))))

(declare-fun b!900009 () Bool)

(declare-fun e!588570 () Bool)

(assert (=> b!900009 (= e!588570 e!588573)))

(declare-fun res!409262 () Bool)

(assert (=> b!900009 (=> (not res!409262) (not e!588573))))

(assert (=> b!900009 (= res!409262 (not lt!334303))))

(declare-fun b!900011 () Bool)

(declare-fun res!409260 () Bool)

(assert (=> b!900011 (=> res!409260 e!588570)))

(assert (=> b!900011 (= res!409260 e!588575)))

(declare-fun res!409264 () Bool)

(assert (=> b!900011 (=> (not res!409264) (not e!588575))))

(assert (=> b!900011 (= res!409264 lt!334303)))

(declare-fun b!900012 () Bool)

(assert (=> b!900012 (= e!588574 (= lt!334303 call!53609))))

(declare-fun b!900013 () Bool)

(declare-fun res!409263 () Bool)

(assert (=> b!900013 (=> res!409263 e!588570)))

(assert (=> b!900013 (= res!409263 (not (is-ElementMatch!2360 (reg!2689 r!15766))))))

(assert (=> b!900013 (= e!588576 e!588570)))

(declare-fun b!900010 () Bool)

(assert (=> b!900010 (= e!588572 (matchR!898 (derivativeStep!439 (reg!2689 r!15766) (head!1592 (_1!6187 lt!334207))) (tail!1154 (_1!6187 lt!334207))))))

(declare-fun d!278210 () Bool)

(assert (=> d!278210 e!588574))

(declare-fun c!145739 () Bool)

(assert (=> d!278210 (= c!145739 (is-EmptyExpr!2360 (reg!2689 r!15766)))))

(assert (=> d!278210 (= lt!334303 e!588572)))

(declare-fun c!145738 () Bool)

(assert (=> d!278210 (= c!145738 (isEmpty!5773 (_1!6187 lt!334207)))))

(assert (=> d!278210 (validRegex!829 (reg!2689 r!15766))))

(assert (=> d!278210 (= (matchR!898 (reg!2689 r!15766) (_1!6187 lt!334207)) lt!334303)))

(declare-fun b!900014 () Bool)

(declare-fun res!409266 () Bool)

(assert (=> b!900014 (=> (not res!409266) (not e!588575))))

(assert (=> b!900014 (= res!409266 (isEmpty!5773 (tail!1154 (_1!6187 lt!334207))))))

(declare-fun b!900015 () Bool)

(declare-fun res!409265 () Bool)

(assert (=> b!900015 (=> (not res!409265) (not e!588575))))

(assert (=> b!900015 (= res!409265 (not call!53609))))

(assert (= (and d!278210 c!145738) b!900006))

(assert (= (and d!278210 (not c!145738)) b!900010))

(assert (= (and d!278210 c!145739) b!900012))

(assert (= (and d!278210 (not c!145739)) b!900002))

(assert (= (and b!900002 c!145737) b!900004))

(assert (= (and b!900002 (not c!145737)) b!900013))

(assert (= (and b!900013 (not res!409263)) b!900011))

(assert (= (and b!900011 res!409264) b!900015))

(assert (= (and b!900015 res!409265) b!900014))

(assert (= (and b!900014 res!409266) b!900003))

(assert (= (and b!900011 (not res!409260)) b!900009))

(assert (= (and b!900009 res!409262) b!900007))

(assert (= (and b!900007 (not res!409261)) b!900005))

(assert (= (and b!900005 (not res!409259)) b!900008))

(assert (= (or b!900012 b!900007 b!900015) bm!53604))

(assert (=> b!900006 m!1137887))

(assert (=> bm!53604 m!1137855))

(assert (=> b!900003 m!1137857))

(assert (=> b!900014 m!1137859))

(assert (=> b!900014 m!1137859))

(assert (=> b!900014 m!1137861))

(assert (=> b!900008 m!1137857))

(assert (=> d!278210 m!1137855))

(assert (=> d!278210 m!1137891))

(assert (=> b!900005 m!1137859))

(assert (=> b!900005 m!1137859))

(assert (=> b!900005 m!1137861))

(assert (=> b!900010 m!1137857))

(assert (=> b!900010 m!1137857))

(declare-fun m!1138035 () Bool)

(assert (=> b!900010 m!1138035))

(assert (=> b!900010 m!1137859))

(assert (=> b!900010 m!1138035))

(assert (=> b!900010 m!1137859))

(declare-fun m!1138037 () Bool)

(assert (=> b!900010 m!1138037))

(assert (=> b!899564 d!278210))

(declare-fun d!278212 () Bool)

(assert (=> d!278212 (= (get!3039 lt!334213) (v!19419 lt!334213))))

(assert (=> b!899564 d!278212))

(declare-fun d!278214 () Bool)

(assert (=> d!278214 (= (matchR!898 (reg!2689 r!15766) (_1!6187 lt!334207)) (matchRSpec!161 (reg!2689 r!15766) (_1!6187 lt!334207)))))

(declare-fun lt!334304 () Unit!14307)

(assert (=> d!278214 (= lt!334304 (choose!5423 (reg!2689 r!15766) (_1!6187 lt!334207)))))

(assert (=> d!278214 (validRegex!829 (reg!2689 r!15766))))

(assert (=> d!278214 (= (mainMatchTheorem!161 (reg!2689 r!15766) (_1!6187 lt!334207)) lt!334304)))

(declare-fun bs!235171 () Bool)

(assert (= bs!235171 d!278214))

(assert (=> bs!235171 m!1137791))

(declare-fun m!1138053 () Bool)

(assert (=> bs!235171 m!1138053))

(declare-fun m!1138057 () Bool)

(assert (=> bs!235171 m!1138057))

(assert (=> bs!235171 m!1137891))

(assert (=> b!899570 d!278214))

(declare-fun b!900026 () Bool)

(declare-fun e!588579 () Bool)

(assert (=> b!900026 (= e!588579 tp_is_empty!4363)))

(assert (=> b!899562 (= tp!282361 e!588579)))

(declare-fun b!900028 () Bool)

(declare-fun tp!282392 () Bool)

(assert (=> b!900028 (= e!588579 tp!282392)))

(declare-fun b!900029 () Bool)

(declare-fun tp!282393 () Bool)

(declare-fun tp!282391 () Bool)

(assert (=> b!900029 (= e!588579 (and tp!282393 tp!282391))))

(declare-fun b!900027 () Bool)

(declare-fun tp!282394 () Bool)

(declare-fun tp!282395 () Bool)

(assert (=> b!900027 (= e!588579 (and tp!282394 tp!282395))))

(assert (= (and b!899562 (is-ElementMatch!2360 (reg!2689 r!15766))) b!900026))

(assert (= (and b!899562 (is-Concat!4193 (reg!2689 r!15766))) b!900027))

(assert (= (and b!899562 (is-Star!2360 (reg!2689 r!15766))) b!900028))

(assert (= (and b!899562 (is-Union!2360 (reg!2689 r!15766))) b!900029))

(declare-fun b!900034 () Bool)

(declare-fun e!588582 () Bool)

(declare-fun tp!282398 () Bool)

(assert (=> b!900034 (= e!588582 (and tp_is_empty!4363 tp!282398))))

(assert (=> b!899574 (= tp!282359 e!588582)))

(assert (= (and b!899574 (is-Cons!9574 (t!100636 s!10566))) b!900034))

(declare-fun b!900035 () Bool)

(declare-fun e!588583 () Bool)

(assert (=> b!900035 (= e!588583 tp_is_empty!4363)))

(assert (=> b!899569 (= tp!282360 e!588583)))

(declare-fun b!900037 () Bool)

(declare-fun tp!282400 () Bool)

(assert (=> b!900037 (= e!588583 tp!282400)))

(declare-fun b!900038 () Bool)

(declare-fun tp!282401 () Bool)

(declare-fun tp!282399 () Bool)

(assert (=> b!900038 (= e!588583 (and tp!282401 tp!282399))))

(declare-fun b!900036 () Bool)

(declare-fun tp!282402 () Bool)

(declare-fun tp!282403 () Bool)

(assert (=> b!900036 (= e!588583 (and tp!282402 tp!282403))))

(assert (= (and b!899569 (is-ElementMatch!2360 (regOne!5233 r!15766))) b!900035))

(assert (= (and b!899569 (is-Concat!4193 (regOne!5233 r!15766))) b!900036))

(assert (= (and b!899569 (is-Star!2360 (regOne!5233 r!15766))) b!900037))

(assert (= (and b!899569 (is-Union!2360 (regOne!5233 r!15766))) b!900038))

(declare-fun b!900039 () Bool)

(declare-fun e!588584 () Bool)

(assert (=> b!900039 (= e!588584 tp_is_empty!4363)))

(assert (=> b!899569 (= tp!282358 e!588584)))

(declare-fun b!900041 () Bool)

(declare-fun tp!282405 () Bool)

(assert (=> b!900041 (= e!588584 tp!282405)))

(declare-fun b!900042 () Bool)

(declare-fun tp!282406 () Bool)

(declare-fun tp!282404 () Bool)

(assert (=> b!900042 (= e!588584 (and tp!282406 tp!282404))))

(declare-fun b!900040 () Bool)

(declare-fun tp!282407 () Bool)

(declare-fun tp!282408 () Bool)

(assert (=> b!900040 (= e!588584 (and tp!282407 tp!282408))))

(assert (= (and b!899569 (is-ElementMatch!2360 (regTwo!5233 r!15766))) b!900039))

(assert (= (and b!899569 (is-Concat!4193 (regTwo!5233 r!15766))) b!900040))

(assert (= (and b!899569 (is-Star!2360 (regTwo!5233 r!15766))) b!900041))

(assert (= (and b!899569 (is-Union!2360 (regTwo!5233 r!15766))) b!900042))

(declare-fun b!900043 () Bool)

(declare-fun e!588585 () Bool)

(assert (=> b!900043 (= e!588585 tp_is_empty!4363)))

(assert (=> b!899571 (= tp!282357 e!588585)))

(declare-fun b!900045 () Bool)

(declare-fun tp!282410 () Bool)

(assert (=> b!900045 (= e!588585 tp!282410)))

(declare-fun b!900046 () Bool)

(declare-fun tp!282411 () Bool)

(declare-fun tp!282409 () Bool)

(assert (=> b!900046 (= e!588585 (and tp!282411 tp!282409))))

(declare-fun b!900044 () Bool)

(declare-fun tp!282412 () Bool)

(declare-fun tp!282413 () Bool)

(assert (=> b!900044 (= e!588585 (and tp!282412 tp!282413))))

(assert (= (and b!899571 (is-ElementMatch!2360 (regOne!5232 r!15766))) b!900043))

(assert (= (and b!899571 (is-Concat!4193 (regOne!5232 r!15766))) b!900044))

(assert (= (and b!899571 (is-Star!2360 (regOne!5232 r!15766))) b!900045))

(assert (= (and b!899571 (is-Union!2360 (regOne!5232 r!15766))) b!900046))

(declare-fun b!900047 () Bool)

(declare-fun e!588586 () Bool)

(assert (=> b!900047 (= e!588586 tp_is_empty!4363)))

(assert (=> b!899571 (= tp!282362 e!588586)))

(declare-fun b!900049 () Bool)

(declare-fun tp!282415 () Bool)

(assert (=> b!900049 (= e!588586 tp!282415)))

(declare-fun b!900050 () Bool)

(declare-fun tp!282416 () Bool)

(declare-fun tp!282414 () Bool)

(assert (=> b!900050 (= e!588586 (and tp!282416 tp!282414))))

(declare-fun b!900048 () Bool)

(declare-fun tp!282417 () Bool)

(declare-fun tp!282418 () Bool)

(assert (=> b!900048 (= e!588586 (and tp!282417 tp!282418))))

(assert (= (and b!899571 (is-ElementMatch!2360 (regTwo!5232 r!15766))) b!900047))

(assert (= (and b!899571 (is-Concat!4193 (regTwo!5232 r!15766))) b!900048))

(assert (= (and b!899571 (is-Star!2360 (regTwo!5232 r!15766))) b!900049))

(assert (= (and b!899571 (is-Union!2360 (regTwo!5232 r!15766))) b!900050))

(push 1)

(assert (not b!899991))

(assert (not b!899870))

(assert (not bm!53603))

(assert (not b!899667))

(assert (not b!899779))

(assert (not b!899875))

(assert (not b!899670))

(assert (not b!899974))

(assert (not b!899690))

(assert (not b!899970))

(assert (not b!900014))

(assert (not bm!53549))

(assert (not d!278208))

(assert (not b!899810))

(assert (not b!899681))

(assert (not d!278174))

(assert (not bm!53604))

(assert (not b!899815))

(assert (not b!900046))

(assert (not b!900044))

(assert (not b!899686))

(assert (not bm!53581))

(assert (not d!278162))

(assert (not b!900049))

(assert (not b!899874))

(assert (not b!899980))

(assert (not b!899668))

(assert (not b!899813))

(assert (not b!900045))

(assert (not b!900040))

(assert (not b!899697))

(assert (not b!899797))

(assert (not d!278186))

(assert (not bm!53602))

(assert (not b!899682))

(assert (not bm!53587))

(assert (not d!278198))

(assert (not b!899987))

(assert (not d!278158))

(assert (not b!899867))

(assert (not b!899785))

(assert (not b!900010))

(assert (not d!278188))

(assert (not b!900034))

(assert (not b!899872))

(assert (not bm!53601))

(assert (not bm!53571))

(assert (not d!278200))

(assert (not b!899985))

(assert (not b!900036))

(assert (not b!899811))

(assert (not bm!53570))

(assert (not b!900029))

(assert (not b!900037))

(assert tp_is_empty!4363)

(assert (not b!899871))

(assert (not b!899679))

(assert (not d!278180))

(assert (not b!899983))

(assert (not b!900042))

(assert (not b!899982))

(assert (not b!900006))

(assert (not b!900027))

(assert (not b!899676))

(assert (not b!899684))

(assert (not d!278168))

(assert (not b!900028))

(assert (not b!899819))

(assert (not b!900005))

(assert (not b!899808))

(assert (not bm!53588))

(assert (not bm!53589))

(assert (not b!900050))

(assert (not d!278210))

(assert (not b!900038))

(assert (not b!899665))

(assert (not b!900048))

(assert (not bm!53591))

(assert (not b!899672))

(assert (not d!278156))

(assert (not bm!53592))

(assert (not bm!53583))

(assert (not d!278166))

(assert (not b!900041))

(assert (not d!278214))

(assert (not d!278206))

(assert (not b!899738))

(assert (not b!899801))

(assert (not b!900003))

(assert (not d!278182))

(assert (not b!900008))

(assert (not d!278202))

(assert (not bm!53550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

