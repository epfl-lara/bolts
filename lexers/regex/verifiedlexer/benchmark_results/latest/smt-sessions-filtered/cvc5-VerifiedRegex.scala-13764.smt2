; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734186 () Bool)

(assert start!734186)

(declare-fun b!7622721 () Bool)

(assert (=> b!7622721 true))

(assert (=> b!7622721 true))

(declare-fun b!7622708 () Bool)

(declare-fun e!4532490 () Bool)

(declare-fun e!4532488 () Bool)

(assert (=> b!7622708 (= e!4532490 e!4532488)))

(declare-fun res!3052072 () Bool)

(assert (=> b!7622708 (=> res!3052072 e!4532488)))

(declare-datatypes ((C!40970 0))(
  ( (C!40971 (val!30925 Int)) )
))
(declare-datatypes ((List!73175 0))(
  ( (Nil!73051) (Cons!73051 (h!79499 C!40970) (t!387910 List!73175)) )
))
(declare-datatypes ((tuple2!69206 0))(
  ( (tuple2!69207 (_1!37906 List!73175) (_2!37906 List!73175)) )
))
(declare-fun cut!9 () tuple2!69206)

(declare-fun s!9605 () List!73175)

(declare-fun ++!17628 (List!73175 List!73175) List!73175)

(assert (=> b!7622708 (= res!3052072 (not (= (++!17628 (_1!37906 cut!9) (_2!37906 cut!9)) s!9605)))))

(declare-datatypes ((Unit!167528 0))(
  ( (Unit!167529) )
))
(declare-fun lt!2657223 () Unit!167528)

(declare-fun e!4532491 () Unit!167528)

(assert (=> b!7622708 (= lt!2657223 e!4532491)))

(declare-fun c!1404799 () Bool)

(declare-datatypes ((Regex!20322 0))(
  ( (ElementMatch!20322 (c!1404800 C!40970)) (Concat!29167 (regOne!41156 Regex!20322) (regTwo!41156 Regex!20322)) (EmptyExpr!20322) (Star!20322 (reg!20651 Regex!20322)) (EmptyLang!20322) (Union!20322 (regOne!41157 Regex!20322) (regTwo!41157 Regex!20322)) )
))
(declare-fun r!14126 () Regex!20322)

(declare-fun matchR!9829 (Regex!20322 List!73175) Bool)

(assert (=> b!7622708 (= c!1404799 (matchR!9829 r!14126 s!9605))))

(declare-fun b!7622709 () Bool)

(declare-fun Unit!167530 () Unit!167528)

(assert (=> b!7622709 (= e!4532491 Unit!167530)))

(declare-fun b!7622710 () Bool)

(declare-fun e!4532492 () Bool)

(declare-fun tp_is_empty!50999 () Bool)

(assert (=> b!7622710 (= e!4532492 tp_is_empty!50999)))

(declare-fun b!7622711 () Bool)

(declare-fun tp!2225547 () Bool)

(assert (=> b!7622711 (= e!4532492 tp!2225547)))

(declare-fun b!7622712 () Bool)

(declare-fun e!4532493 () Bool)

(declare-fun tp!2225540 () Bool)

(assert (=> b!7622712 (= e!4532493 (and tp_is_empty!50999 tp!2225540))))

(declare-fun b!7622713 () Bool)

(declare-fun tp!2225542 () Bool)

(declare-fun tp!2225546 () Bool)

(assert (=> b!7622713 (= e!4532492 (and tp!2225542 tp!2225546))))

(declare-fun b!7622714 () Bool)

(declare-fun Unit!167531 () Unit!167528)

(assert (=> b!7622714 (= e!4532491 Unit!167531)))

(declare-fun lt!2657227 () Unit!167528)

(declare-fun lemmaStarAppConcat!3 (Regex!20322 List!73175) Unit!167528)

(assert (=> b!7622714 (= lt!2657227 (lemmaStarAppConcat!3 (reg!20651 r!14126) s!9605))))

(assert (=> b!7622714 (matchR!9829 (Concat!29167 (reg!20651 r!14126) r!14126) s!9605)))

(declare-fun lt!2657224 () Unit!167528)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!235 (Regex!20322 Regex!20322 List!73175) Unit!167528)

(assert (=> b!7622714 (= lt!2657224 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!235 (reg!20651 r!14126) r!14126 s!9605))))

(assert (=> b!7622714 false))

(declare-fun b!7622715 () Bool)

(declare-fun tp!2225543 () Bool)

(declare-fun tp!2225545 () Bool)

(assert (=> b!7622715 (= e!4532492 (and tp!2225543 tp!2225545))))

(declare-fun b!7622716 () Bool)

(declare-fun e!4532486 () Bool)

(declare-fun tp!2225544 () Bool)

(assert (=> b!7622716 (= e!4532486 (and tp_is_empty!50999 tp!2225544))))

(declare-fun b!7622717 () Bool)

(declare-fun validRegex!10742 (Regex!20322) Bool)

(assert (=> b!7622717 (= e!4532488 (validRegex!10742 (reg!20651 r!14126)))))

(declare-fun b!7622718 () Bool)

(declare-fun e!4532487 () Bool)

(declare-fun tp!2225541 () Bool)

(assert (=> b!7622718 (= e!4532487 (and tp_is_empty!50999 tp!2225541))))

(declare-fun b!7622719 () Bool)

(declare-fun res!3052069 () Bool)

(declare-fun e!4532489 () Bool)

(assert (=> b!7622719 (=> (not res!3052069) (not e!4532489))))

(declare-fun isEmpty!41673 (List!73175) Bool)

(assert (=> b!7622719 (= res!3052069 (not (isEmpty!41673 s!9605)))))

(declare-fun res!3052070 () Bool)

(assert (=> start!734186 (=> (not res!3052070) (not e!4532489))))

(assert (=> start!734186 (= res!3052070 (validRegex!10742 r!14126))))

(assert (=> start!734186 e!4532489))

(assert (=> start!734186 e!4532492))

(assert (=> start!734186 e!4532487))

(assert (=> start!734186 (and e!4532486 e!4532493)))

(declare-fun b!7622720 () Bool)

(declare-fun res!3052071 () Bool)

(assert (=> b!7622720 (=> (not res!3052071) (not e!4532489))))

(assert (=> b!7622720 (= res!3052071 (and (not (is-EmptyExpr!20322 r!14126)) (not (is-EmptyLang!20322 r!14126)) (not (is-ElementMatch!20322 r!14126)) (not (is-Union!20322 r!14126)) (is-Star!20322 r!14126)))))

(assert (=> b!7622721 (= e!4532489 (not e!4532490))))

(declare-fun res!3052073 () Bool)

(assert (=> b!7622721 (=> res!3052073 e!4532490)))

(declare-fun lt!2657226 () Bool)

(assert (=> b!7622721 (= res!3052073 lt!2657226)))

(declare-fun lambda!468554 () Int)

(declare-fun Exists!4478 (Int) Bool)

(assert (=> b!7622721 (= lt!2657226 (Exists!4478 lambda!468554))))

(declare-datatypes ((Option!17397 0))(
  ( (None!17396) (Some!17396 (v!54531 tuple2!69206)) )
))
(declare-fun isDefined!14013 (Option!17397) Bool)

(declare-fun findConcatSeparation!3427 (Regex!20322 Regex!20322 List!73175 List!73175 List!73175) Option!17397)

(assert (=> b!7622721 (= lt!2657226 (isDefined!14013 (findConcatSeparation!3427 (reg!20651 r!14126) r!14126 Nil!73051 s!9605 s!9605)))))

(declare-fun lt!2657225 () Unit!167528)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3185 (Regex!20322 Regex!20322 List!73175) Unit!167528)

(assert (=> b!7622721 (= lt!2657225 (lemmaFindConcatSeparationEquivalentToExists!3185 (reg!20651 r!14126) r!14126 s!9605))))

(assert (= (and start!734186 res!3052070) b!7622720))

(assert (= (and b!7622720 res!3052071) b!7622719))

(assert (= (and b!7622719 res!3052069) b!7622721))

(assert (= (and b!7622721 (not res!3052073)) b!7622708))

(assert (= (and b!7622708 c!1404799) b!7622714))

(assert (= (and b!7622708 (not c!1404799)) b!7622709))

(assert (= (and b!7622708 (not res!3052072)) b!7622717))

(assert (= (and start!734186 (is-ElementMatch!20322 r!14126)) b!7622710))

(assert (= (and start!734186 (is-Concat!29167 r!14126)) b!7622713))

(assert (= (and start!734186 (is-Star!20322 r!14126)) b!7622711))

(assert (= (and start!734186 (is-Union!20322 r!14126)) b!7622715))

(assert (= (and start!734186 (is-Cons!73051 s!9605)) b!7622718))

(assert (= (and start!734186 (is-Cons!73051 (_1!37906 cut!9))) b!7622716))

(assert (= (and start!734186 (is-Cons!73051 (_2!37906 cut!9))) b!7622712))

(declare-fun m!8153906 () Bool)

(assert (=> b!7622717 m!8153906))

(declare-fun m!8153908 () Bool)

(assert (=> b!7622708 m!8153908))

(declare-fun m!8153910 () Bool)

(assert (=> b!7622708 m!8153910))

(declare-fun m!8153912 () Bool)

(assert (=> b!7622721 m!8153912))

(declare-fun m!8153914 () Bool)

(assert (=> b!7622721 m!8153914))

(assert (=> b!7622721 m!8153914))

(declare-fun m!8153916 () Bool)

(assert (=> b!7622721 m!8153916))

(declare-fun m!8153918 () Bool)

(assert (=> b!7622721 m!8153918))

(declare-fun m!8153920 () Bool)

(assert (=> b!7622714 m!8153920))

(declare-fun m!8153922 () Bool)

(assert (=> b!7622714 m!8153922))

(declare-fun m!8153924 () Bool)

(assert (=> b!7622714 m!8153924))

(declare-fun m!8153926 () Bool)

(assert (=> b!7622719 m!8153926))

(declare-fun m!8153928 () Bool)

(assert (=> start!734186 m!8153928))

(push 1)

(assert (not b!7622718))

(assert (not start!734186))

(assert (not b!7622719))

(assert tp_is_empty!50999)

(assert (not b!7622708))

(assert (not b!7622717))

(assert (not b!7622712))

(assert (not b!7622713))

(assert (not b!7622716))

(assert (not b!7622714))

(assert (not b!7622711))

(assert (not b!7622721))

(assert (not b!7622715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2323431 () Bool)

(assert (=> d!2323431 (= (isEmpty!41673 s!9605) (is-Nil!73051 s!9605))))

(assert (=> b!7622719 d!2323431))

(declare-fun b!7622794 () Bool)

(declare-fun res!3052105 () Bool)

(declare-fun e!4532540 () Bool)

(assert (=> b!7622794 (=> (not res!3052105) (not e!4532540))))

(declare-fun call!700034 () Bool)

(assert (=> b!7622794 (= res!3052105 call!700034)))

(declare-fun e!4532534 () Bool)

(assert (=> b!7622794 (= e!4532534 e!4532540)))

(declare-fun d!2323433 () Bool)

(declare-fun res!3052107 () Bool)

(declare-fun e!4532537 () Bool)

(assert (=> d!2323433 (=> res!3052107 e!4532537)))

(assert (=> d!2323433 (= res!3052107 (is-ElementMatch!20322 r!14126))))

(assert (=> d!2323433 (= (validRegex!10742 r!14126) e!4532537)))

(declare-fun b!7622795 () Bool)

(declare-fun e!4532538 () Bool)

(assert (=> b!7622795 (= e!4532537 e!4532538)))

(declare-fun c!1404809 () Bool)

(assert (=> b!7622795 (= c!1404809 (is-Star!20322 r!14126))))

(declare-fun bm!700028 () Bool)

(declare-fun call!700033 () Bool)

(declare-fun c!1404810 () Bool)

(assert (=> bm!700028 (= call!700033 (validRegex!10742 (ite c!1404810 (regTwo!41157 r!14126) (regTwo!41156 r!14126))))))

(declare-fun bm!700029 () Bool)

(declare-fun call!700035 () Bool)

(assert (=> bm!700029 (= call!700034 call!700035)))

(declare-fun b!7622796 () Bool)

(declare-fun res!3052103 () Bool)

(declare-fun e!4532536 () Bool)

(assert (=> b!7622796 (=> res!3052103 e!4532536)))

(assert (=> b!7622796 (= res!3052103 (not (is-Concat!29167 r!14126)))))

(assert (=> b!7622796 (= e!4532534 e!4532536)))

(declare-fun b!7622797 () Bool)

(assert (=> b!7622797 (= e!4532540 call!700033)))

(declare-fun b!7622798 () Bool)

(declare-fun e!4532539 () Bool)

(assert (=> b!7622798 (= e!4532539 call!700033)))

(declare-fun b!7622799 () Bool)

(assert (=> b!7622799 (= e!4532538 e!4532534)))

(assert (=> b!7622799 (= c!1404810 (is-Union!20322 r!14126))))

(declare-fun b!7622800 () Bool)

(declare-fun e!4532535 () Bool)

(assert (=> b!7622800 (= e!4532538 e!4532535)))

(declare-fun res!3052104 () Bool)

(declare-fun nullable!8885 (Regex!20322) Bool)

(assert (=> b!7622800 (= res!3052104 (not (nullable!8885 (reg!20651 r!14126))))))

(assert (=> b!7622800 (=> (not res!3052104) (not e!4532535))))

(declare-fun bm!700030 () Bool)

(assert (=> bm!700030 (= call!700035 (validRegex!10742 (ite c!1404809 (reg!20651 r!14126) (ite c!1404810 (regOne!41157 r!14126) (regOne!41156 r!14126)))))))

(declare-fun b!7622801 () Bool)

(assert (=> b!7622801 (= e!4532535 call!700035)))

(declare-fun b!7622802 () Bool)

(assert (=> b!7622802 (= e!4532536 e!4532539)))

(declare-fun res!3052106 () Bool)

(assert (=> b!7622802 (=> (not res!3052106) (not e!4532539))))

(assert (=> b!7622802 (= res!3052106 call!700034)))

(assert (= (and d!2323433 (not res!3052107)) b!7622795))

(assert (= (and b!7622795 c!1404809) b!7622800))

(assert (= (and b!7622795 (not c!1404809)) b!7622799))

(assert (= (and b!7622800 res!3052104) b!7622801))

(assert (= (and b!7622799 c!1404810) b!7622794))

(assert (= (and b!7622799 (not c!1404810)) b!7622796))

(assert (= (and b!7622794 res!3052105) b!7622797))

(assert (= (and b!7622796 (not res!3052103)) b!7622802))

(assert (= (and b!7622802 res!3052106) b!7622798))

(assert (= (or b!7622794 b!7622802) bm!700029))

(assert (= (or b!7622797 b!7622798) bm!700028))

(assert (= (or b!7622801 bm!700029) bm!700030))

(declare-fun m!8153958 () Bool)

(assert (=> bm!700028 m!8153958))

(declare-fun m!8153960 () Bool)

(assert (=> b!7622800 m!8153960))

(declare-fun m!8153962 () Bool)

(assert (=> bm!700030 m!8153962))

(assert (=> start!734186 d!2323433))

(declare-fun d!2323435 () Bool)

(declare-fun e!4532543 () Bool)

(assert (=> d!2323435 e!4532543))

(declare-fun res!3052110 () Bool)

(assert (=> d!2323435 (=> res!3052110 e!4532543)))

(assert (=> d!2323435 (= res!3052110 (isEmpty!41673 s!9605))))

(declare-fun lt!2657245 () Unit!167528)

(declare-fun choose!58821 (Regex!20322 List!73175) Unit!167528)

(assert (=> d!2323435 (= lt!2657245 (choose!58821 (reg!20651 r!14126) s!9605))))

(assert (=> d!2323435 (validRegex!10742 (Star!20322 (reg!20651 r!14126)))))

(assert (=> d!2323435 (= (lemmaStarAppConcat!3 (reg!20651 r!14126) s!9605) lt!2657245)))

(declare-fun b!7622805 () Bool)

(assert (=> b!7622805 (= e!4532543 (matchR!9829 (Concat!29167 (reg!20651 r!14126) (Star!20322 (reg!20651 r!14126))) s!9605))))

(assert (= (and d!2323435 (not res!3052110)) b!7622805))

(assert (=> d!2323435 m!8153926))

(declare-fun m!8153964 () Bool)

(assert (=> d!2323435 m!8153964))

(declare-fun m!8153966 () Bool)

(assert (=> d!2323435 m!8153966))

(declare-fun m!8153968 () Bool)

(assert (=> b!7622805 m!8153968))

(assert (=> b!7622714 d!2323435))

(declare-fun b!7622852 () Bool)

(declare-fun res!3052141 () Bool)

(declare-fun e!4532571 () Bool)

(assert (=> b!7622852 (=> res!3052141 e!4532571)))

(declare-fun tail!15199 (List!73175) List!73175)

(assert (=> b!7622852 (= res!3052141 (not (isEmpty!41673 (tail!15199 s!9605))))))

(declare-fun b!7622853 () Bool)

(declare-fun e!4532569 () Bool)

(assert (=> b!7622853 (= e!4532569 (nullable!8885 (Concat!29167 (reg!20651 r!14126) r!14126)))))

(declare-fun b!7622854 () Bool)

(declare-fun derivativeStep!5859 (Regex!20322 C!40970) Regex!20322)

(declare-fun head!15659 (List!73175) C!40970)

(assert (=> b!7622854 (= e!4532569 (matchR!9829 (derivativeStep!5859 (Concat!29167 (reg!20651 r!14126) r!14126) (head!15659 s!9605)) (tail!15199 s!9605)))))

(declare-fun b!7622855 () Bool)

(declare-fun res!3052137 () Bool)

(declare-fun e!4532570 () Bool)

(assert (=> b!7622855 (=> res!3052137 e!4532570)))

(assert (=> b!7622855 (= res!3052137 (not (is-ElementMatch!20322 (Concat!29167 (reg!20651 r!14126) r!14126))))))

(declare-fun e!4532572 () Bool)

(assert (=> b!7622855 (= e!4532572 e!4532570)))

(declare-fun b!7622856 () Bool)

(declare-fun e!4532574 () Bool)

(assert (=> b!7622856 (= e!4532574 (= (head!15659 s!9605) (c!1404800 (Concat!29167 (reg!20651 r!14126) r!14126))))))

(declare-fun d!2323437 () Bool)

(declare-fun e!4532568 () Bool)

(assert (=> d!2323437 e!4532568))

(declare-fun c!1404823 () Bool)

(assert (=> d!2323437 (= c!1404823 (is-EmptyExpr!20322 (Concat!29167 (reg!20651 r!14126) r!14126)))))

(declare-fun lt!2657254 () Bool)

(assert (=> d!2323437 (= lt!2657254 e!4532569)))

(declare-fun c!1404821 () Bool)

(assert (=> d!2323437 (= c!1404821 (isEmpty!41673 s!9605))))

(assert (=> d!2323437 (validRegex!10742 (Concat!29167 (reg!20651 r!14126) r!14126))))

(assert (=> d!2323437 (= (matchR!9829 (Concat!29167 (reg!20651 r!14126) r!14126) s!9605) lt!2657254)))

(declare-fun b!7622857 () Bool)

(declare-fun res!3052143 () Bool)

(assert (=> b!7622857 (=> res!3052143 e!4532570)))

(assert (=> b!7622857 (= res!3052143 e!4532574)))

(declare-fun res!3052138 () Bool)

(assert (=> b!7622857 (=> (not res!3052138) (not e!4532574))))

(assert (=> b!7622857 (= res!3052138 lt!2657254)))

(declare-fun b!7622858 () Bool)

(declare-fun res!3052140 () Bool)

(assert (=> b!7622858 (=> (not res!3052140) (not e!4532574))))

(assert (=> b!7622858 (= res!3052140 (isEmpty!41673 (tail!15199 s!9605)))))

(declare-fun b!7622859 () Bool)

(declare-fun call!700038 () Bool)

(assert (=> b!7622859 (= e!4532568 (= lt!2657254 call!700038))))

(declare-fun b!7622860 () Bool)

(declare-fun e!4532573 () Bool)

(assert (=> b!7622860 (= e!4532570 e!4532573)))

(declare-fun res!3052139 () Bool)

(assert (=> b!7622860 (=> (not res!3052139) (not e!4532573))))

(assert (=> b!7622860 (= res!3052139 (not lt!2657254))))

(declare-fun b!7622861 () Bool)

(assert (=> b!7622861 (= e!4532568 e!4532572)))

(declare-fun c!1404822 () Bool)

(assert (=> b!7622861 (= c!1404822 (is-EmptyLang!20322 (Concat!29167 (reg!20651 r!14126) r!14126)))))

(declare-fun b!7622862 () Bool)

(assert (=> b!7622862 (= e!4532573 e!4532571)))

(declare-fun res!3052144 () Bool)

(assert (=> b!7622862 (=> res!3052144 e!4532571)))

(assert (=> b!7622862 (= res!3052144 call!700038)))

(declare-fun bm!700033 () Bool)

(assert (=> bm!700033 (= call!700038 (isEmpty!41673 s!9605))))

(declare-fun b!7622863 () Bool)

(assert (=> b!7622863 (= e!4532572 (not lt!2657254))))

(declare-fun b!7622864 () Bool)

(declare-fun res!3052142 () Bool)

(assert (=> b!7622864 (=> (not res!3052142) (not e!4532574))))

(assert (=> b!7622864 (= res!3052142 (not call!700038))))

(declare-fun b!7622865 () Bool)

(assert (=> b!7622865 (= e!4532571 (not (= (head!15659 s!9605) (c!1404800 (Concat!29167 (reg!20651 r!14126) r!14126)))))))

(assert (= (and d!2323437 c!1404821) b!7622853))

(assert (= (and d!2323437 (not c!1404821)) b!7622854))

(assert (= (and d!2323437 c!1404823) b!7622859))

(assert (= (and d!2323437 (not c!1404823)) b!7622861))

(assert (= (and b!7622861 c!1404822) b!7622863))

(assert (= (and b!7622861 (not c!1404822)) b!7622855))

(assert (= (and b!7622855 (not res!3052137)) b!7622857))

(assert (= (and b!7622857 res!3052138) b!7622864))

(assert (= (and b!7622864 res!3052142) b!7622858))

(assert (= (and b!7622858 res!3052140) b!7622856))

(assert (= (and b!7622857 (not res!3052143)) b!7622860))

(assert (= (and b!7622860 res!3052139) b!7622862))

(assert (= (and b!7622862 (not res!3052144)) b!7622852))

(assert (= (and b!7622852 (not res!3052141)) b!7622865))

(assert (= (or b!7622859 b!7622862 b!7622864) bm!700033))

(declare-fun m!8153970 () Bool)

(assert (=> b!7622858 m!8153970))

(assert (=> b!7622858 m!8153970))

(declare-fun m!8153972 () Bool)

(assert (=> b!7622858 m!8153972))

(assert (=> bm!700033 m!8153926))

(declare-fun m!8153974 () Bool)

(assert (=> b!7622865 m!8153974))

(assert (=> d!2323437 m!8153926))

(declare-fun m!8153976 () Bool)

(assert (=> d!2323437 m!8153976))

(assert (=> b!7622856 m!8153974))

(declare-fun m!8153978 () Bool)

(assert (=> b!7622853 m!8153978))

(assert (=> b!7622854 m!8153974))

(assert (=> b!7622854 m!8153974))

(declare-fun m!8153980 () Bool)

(assert (=> b!7622854 m!8153980))

(assert (=> b!7622854 m!8153970))

(assert (=> b!7622854 m!8153980))

(assert (=> b!7622854 m!8153970))

(declare-fun m!8153982 () Bool)

(assert (=> b!7622854 m!8153982))

(assert (=> b!7622852 m!8153970))

(assert (=> b!7622852 m!8153970))

(assert (=> b!7622852 m!8153972))

(assert (=> b!7622714 d!2323437))

(declare-fun d!2323439 () Bool)

(assert (=> d!2323439 (isDefined!14013 (findConcatSeparation!3427 (reg!20651 r!14126) r!14126 Nil!73051 s!9605 s!9605))))

(declare-fun lt!2657257 () Unit!167528)

(declare-fun choose!58822 (Regex!20322 Regex!20322 List!73175) Unit!167528)

(assert (=> d!2323439 (= lt!2657257 (choose!58822 (reg!20651 r!14126) r!14126 s!9605))))

(assert (=> d!2323439 (validRegex!10742 (reg!20651 r!14126))))

(assert (=> d!2323439 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!235 (reg!20651 r!14126) r!14126 s!9605) lt!2657257)))

(declare-fun bs!1943559 () Bool)

(assert (= bs!1943559 d!2323439))

(assert (=> bs!1943559 m!8153914))

(assert (=> bs!1943559 m!8153914))

(assert (=> bs!1943559 m!8153916))

(declare-fun m!8153984 () Bool)

(assert (=> bs!1943559 m!8153984))

(assert (=> bs!1943559 m!8153906))

(assert (=> b!7622714 d!2323439))

(declare-fun b!7622884 () Bool)

(declare-fun e!4532585 () List!73175)

(assert (=> b!7622884 (= e!4532585 (Cons!73051 (h!79499 (_1!37906 cut!9)) (++!17628 (t!387910 (_1!37906 cut!9)) (_2!37906 cut!9))))))

(declare-fun d!2323441 () Bool)

(declare-fun e!4532584 () Bool)

(assert (=> d!2323441 e!4532584))

(declare-fun res!3052155 () Bool)

(assert (=> d!2323441 (=> (not res!3052155) (not e!4532584))))

(declare-fun lt!2657263 () List!73175)

(declare-fun content!15446 (List!73175) (Set C!40970))

(assert (=> d!2323441 (= res!3052155 (= (content!15446 lt!2657263) (set.union (content!15446 (_1!37906 cut!9)) (content!15446 (_2!37906 cut!9)))))))

(assert (=> d!2323441 (= lt!2657263 e!4532585)))

(declare-fun c!1404828 () Bool)

(assert (=> d!2323441 (= c!1404828 (is-Nil!73051 (_1!37906 cut!9)))))

(assert (=> d!2323441 (= (++!17628 (_1!37906 cut!9) (_2!37906 cut!9)) lt!2657263)))

(declare-fun b!7622885 () Bool)

(declare-fun res!3052154 () Bool)

(assert (=> b!7622885 (=> (not res!3052154) (not e!4532584))))

(declare-fun size!42539 (List!73175) Int)

(assert (=> b!7622885 (= res!3052154 (= (size!42539 lt!2657263) (+ (size!42539 (_1!37906 cut!9)) (size!42539 (_2!37906 cut!9)))))))

(declare-fun b!7622883 () Bool)

(assert (=> b!7622883 (= e!4532585 (_2!37906 cut!9))))

(declare-fun b!7622886 () Bool)

(assert (=> b!7622886 (= e!4532584 (or (not (= (_2!37906 cut!9) Nil!73051)) (= lt!2657263 (_1!37906 cut!9))))))

(assert (= (and d!2323441 c!1404828) b!7622883))

(assert (= (and d!2323441 (not c!1404828)) b!7622884))

(assert (= (and d!2323441 res!3052155) b!7622885))

(assert (= (and b!7622885 res!3052154) b!7622886))

(declare-fun m!8153986 () Bool)

(assert (=> b!7622884 m!8153986))

(declare-fun m!8153988 () Bool)

(assert (=> d!2323441 m!8153988))

(declare-fun m!8153990 () Bool)

(assert (=> d!2323441 m!8153990))

(declare-fun m!8153992 () Bool)

(assert (=> d!2323441 m!8153992))

(declare-fun m!8153994 () Bool)

(assert (=> b!7622885 m!8153994))

(declare-fun m!8153996 () Bool)

(assert (=> b!7622885 m!8153996))

(declare-fun m!8153998 () Bool)

(assert (=> b!7622885 m!8153998))

(assert (=> b!7622708 d!2323441))

(declare-fun b!7622887 () Bool)

(declare-fun res!3052160 () Bool)

(declare-fun e!4532589 () Bool)

(assert (=> b!7622887 (=> res!3052160 e!4532589)))

(assert (=> b!7622887 (= res!3052160 (not (isEmpty!41673 (tail!15199 s!9605))))))

(declare-fun b!7622888 () Bool)

(declare-fun e!4532587 () Bool)

(assert (=> b!7622888 (= e!4532587 (nullable!8885 r!14126))))

(declare-fun b!7622889 () Bool)

(assert (=> b!7622889 (= e!4532587 (matchR!9829 (derivativeStep!5859 r!14126 (head!15659 s!9605)) (tail!15199 s!9605)))))

(declare-fun b!7622890 () Bool)

(declare-fun res!3052156 () Bool)

(declare-fun e!4532588 () Bool)

(assert (=> b!7622890 (=> res!3052156 e!4532588)))

(assert (=> b!7622890 (= res!3052156 (not (is-ElementMatch!20322 r!14126)))))

(declare-fun e!4532590 () Bool)

(assert (=> b!7622890 (= e!4532590 e!4532588)))

(declare-fun b!7622891 () Bool)

(declare-fun e!4532592 () Bool)

(assert (=> b!7622891 (= e!4532592 (= (head!15659 s!9605) (c!1404800 r!14126)))))

(declare-fun d!2323443 () Bool)

(declare-fun e!4532586 () Bool)

(assert (=> d!2323443 e!4532586))

(declare-fun c!1404831 () Bool)

(assert (=> d!2323443 (= c!1404831 (is-EmptyExpr!20322 r!14126))))

(declare-fun lt!2657264 () Bool)

(assert (=> d!2323443 (= lt!2657264 e!4532587)))

(declare-fun c!1404829 () Bool)

(assert (=> d!2323443 (= c!1404829 (isEmpty!41673 s!9605))))

(assert (=> d!2323443 (validRegex!10742 r!14126)))

(assert (=> d!2323443 (= (matchR!9829 r!14126 s!9605) lt!2657264)))

(declare-fun b!7622892 () Bool)

(declare-fun res!3052162 () Bool)

(assert (=> b!7622892 (=> res!3052162 e!4532588)))

(assert (=> b!7622892 (= res!3052162 e!4532592)))

(declare-fun res!3052157 () Bool)

(assert (=> b!7622892 (=> (not res!3052157) (not e!4532592))))

(assert (=> b!7622892 (= res!3052157 lt!2657264)))

(declare-fun b!7622893 () Bool)

(declare-fun res!3052159 () Bool)

(assert (=> b!7622893 (=> (not res!3052159) (not e!4532592))))

(assert (=> b!7622893 (= res!3052159 (isEmpty!41673 (tail!15199 s!9605)))))

(declare-fun b!7622894 () Bool)

(declare-fun call!700039 () Bool)

(assert (=> b!7622894 (= e!4532586 (= lt!2657264 call!700039))))

(declare-fun b!7622895 () Bool)

(declare-fun e!4532591 () Bool)

(assert (=> b!7622895 (= e!4532588 e!4532591)))

(declare-fun res!3052158 () Bool)

(assert (=> b!7622895 (=> (not res!3052158) (not e!4532591))))

(assert (=> b!7622895 (= res!3052158 (not lt!2657264))))

(declare-fun b!7622896 () Bool)

(assert (=> b!7622896 (= e!4532586 e!4532590)))

(declare-fun c!1404830 () Bool)

(assert (=> b!7622896 (= c!1404830 (is-EmptyLang!20322 r!14126))))

(declare-fun b!7622897 () Bool)

(assert (=> b!7622897 (= e!4532591 e!4532589)))

(declare-fun res!3052163 () Bool)

(assert (=> b!7622897 (=> res!3052163 e!4532589)))

(assert (=> b!7622897 (= res!3052163 call!700039)))

(declare-fun bm!700034 () Bool)

(assert (=> bm!700034 (= call!700039 (isEmpty!41673 s!9605))))

(declare-fun b!7622898 () Bool)

(assert (=> b!7622898 (= e!4532590 (not lt!2657264))))

(declare-fun b!7622899 () Bool)

(declare-fun res!3052161 () Bool)

(assert (=> b!7622899 (=> (not res!3052161) (not e!4532592))))

(assert (=> b!7622899 (= res!3052161 (not call!700039))))

(declare-fun b!7622900 () Bool)

(assert (=> b!7622900 (= e!4532589 (not (= (head!15659 s!9605) (c!1404800 r!14126))))))

(assert (= (and d!2323443 c!1404829) b!7622888))

(assert (= (and d!2323443 (not c!1404829)) b!7622889))

(assert (= (and d!2323443 c!1404831) b!7622894))

(assert (= (and d!2323443 (not c!1404831)) b!7622896))

(assert (= (and b!7622896 c!1404830) b!7622898))

(assert (= (and b!7622896 (not c!1404830)) b!7622890))

(assert (= (and b!7622890 (not res!3052156)) b!7622892))

(assert (= (and b!7622892 res!3052157) b!7622899))

(assert (= (and b!7622899 res!3052161) b!7622893))

(assert (= (and b!7622893 res!3052159) b!7622891))

(assert (= (and b!7622892 (not res!3052162)) b!7622895))

(assert (= (and b!7622895 res!3052158) b!7622897))

(assert (= (and b!7622897 (not res!3052163)) b!7622887))

(assert (= (and b!7622887 (not res!3052160)) b!7622900))

(assert (= (or b!7622894 b!7622897 b!7622899) bm!700034))

(assert (=> b!7622893 m!8153970))

(assert (=> b!7622893 m!8153970))

(assert (=> b!7622893 m!8153972))

(assert (=> bm!700034 m!8153926))

(assert (=> b!7622900 m!8153974))

(assert (=> d!2323443 m!8153926))

(assert (=> d!2323443 m!8153928))

(assert (=> b!7622891 m!8153974))

(declare-fun m!8154004 () Bool)

(assert (=> b!7622888 m!8154004))

(assert (=> b!7622889 m!8153974))

(assert (=> b!7622889 m!8153974))

(declare-fun m!8154006 () Bool)

(assert (=> b!7622889 m!8154006))

(assert (=> b!7622889 m!8153970))

(assert (=> b!7622889 m!8154006))

(assert (=> b!7622889 m!8153970))

(declare-fun m!8154010 () Bool)

(assert (=> b!7622889 m!8154010))

(assert (=> b!7622887 m!8153970))

(assert (=> b!7622887 m!8153970))

(assert (=> b!7622887 m!8153972))

(assert (=> b!7622708 d!2323443))

(declare-fun b!7622901 () Bool)

(declare-fun res!3052166 () Bool)

(declare-fun e!4532599 () Bool)

(assert (=> b!7622901 (=> (not res!3052166) (not e!4532599))))

(declare-fun call!700041 () Bool)

(assert (=> b!7622901 (= res!3052166 call!700041)))

(declare-fun e!4532593 () Bool)

(assert (=> b!7622901 (= e!4532593 e!4532599)))

(declare-fun d!2323445 () Bool)

(declare-fun res!3052168 () Bool)

(declare-fun e!4532596 () Bool)

(assert (=> d!2323445 (=> res!3052168 e!4532596)))

(assert (=> d!2323445 (= res!3052168 (is-ElementMatch!20322 (reg!20651 r!14126)))))

(assert (=> d!2323445 (= (validRegex!10742 (reg!20651 r!14126)) e!4532596)))

(declare-fun b!7622902 () Bool)

(declare-fun e!4532597 () Bool)

(assert (=> b!7622902 (= e!4532596 e!4532597)))

(declare-fun c!1404832 () Bool)

(assert (=> b!7622902 (= c!1404832 (is-Star!20322 (reg!20651 r!14126)))))

(declare-fun bm!700035 () Bool)

(declare-fun call!700040 () Bool)

(declare-fun c!1404833 () Bool)

(assert (=> bm!700035 (= call!700040 (validRegex!10742 (ite c!1404833 (regTwo!41157 (reg!20651 r!14126)) (regTwo!41156 (reg!20651 r!14126)))))))

(declare-fun bm!700036 () Bool)

(declare-fun call!700042 () Bool)

(assert (=> bm!700036 (= call!700041 call!700042)))

(declare-fun b!7622903 () Bool)

(declare-fun res!3052164 () Bool)

(declare-fun e!4532595 () Bool)

(assert (=> b!7622903 (=> res!3052164 e!4532595)))

(assert (=> b!7622903 (= res!3052164 (not (is-Concat!29167 (reg!20651 r!14126))))))

(assert (=> b!7622903 (= e!4532593 e!4532595)))

(declare-fun b!7622904 () Bool)

(assert (=> b!7622904 (= e!4532599 call!700040)))

(declare-fun b!7622905 () Bool)

(declare-fun e!4532598 () Bool)

(assert (=> b!7622905 (= e!4532598 call!700040)))

(declare-fun b!7622906 () Bool)

(assert (=> b!7622906 (= e!4532597 e!4532593)))

(assert (=> b!7622906 (= c!1404833 (is-Union!20322 (reg!20651 r!14126)))))

(declare-fun b!7622907 () Bool)

(declare-fun e!4532594 () Bool)

(assert (=> b!7622907 (= e!4532597 e!4532594)))

(declare-fun res!3052165 () Bool)

(assert (=> b!7622907 (= res!3052165 (not (nullable!8885 (reg!20651 (reg!20651 r!14126)))))))

(assert (=> b!7622907 (=> (not res!3052165) (not e!4532594))))

(declare-fun bm!700037 () Bool)

(assert (=> bm!700037 (= call!700042 (validRegex!10742 (ite c!1404832 (reg!20651 (reg!20651 r!14126)) (ite c!1404833 (regOne!41157 (reg!20651 r!14126)) (regOne!41156 (reg!20651 r!14126))))))))

(declare-fun b!7622908 () Bool)

(assert (=> b!7622908 (= e!4532594 call!700042)))

(declare-fun b!7622909 () Bool)

(assert (=> b!7622909 (= e!4532595 e!4532598)))

(declare-fun res!3052167 () Bool)

(assert (=> b!7622909 (=> (not res!3052167) (not e!4532598))))

(assert (=> b!7622909 (= res!3052167 call!700041)))

(assert (= (and d!2323445 (not res!3052168)) b!7622902))

(assert (= (and b!7622902 c!1404832) b!7622907))

(assert (= (and b!7622902 (not c!1404832)) b!7622906))

(assert (= (and b!7622907 res!3052165) b!7622908))

(assert (= (and b!7622906 c!1404833) b!7622901))

(assert (= (and b!7622906 (not c!1404833)) b!7622903))

(assert (= (and b!7622901 res!3052166) b!7622904))

(assert (= (and b!7622903 (not res!3052164)) b!7622909))

(assert (= (and b!7622909 res!3052167) b!7622905))

(assert (= (or b!7622901 b!7622909) bm!700036))

(assert (= (or b!7622904 b!7622905) bm!700035))

(assert (= (or b!7622908 bm!700036) bm!700037))

(declare-fun m!8154022 () Bool)

(assert (=> bm!700035 m!8154022))

(declare-fun m!8154026 () Bool)

(assert (=> b!7622907 m!8154026))

(declare-fun m!8154028 () Bool)

(assert (=> bm!700037 m!8154028))

(assert (=> b!7622717 d!2323445))

(declare-fun d!2323447 () Bool)

(declare-fun choose!58823 (Int) Bool)

(assert (=> d!2323447 (= (Exists!4478 lambda!468554) (choose!58823 lambda!468554))))

(declare-fun bs!1943560 () Bool)

(assert (= bs!1943560 d!2323447))

(declare-fun m!8154032 () Bool)

(assert (=> bs!1943560 m!8154032))

(assert (=> b!7622721 d!2323447))

(declare-fun d!2323451 () Bool)

(declare-fun isEmpty!41675 (Option!17397) Bool)

(assert (=> d!2323451 (= (isDefined!14013 (findConcatSeparation!3427 (reg!20651 r!14126) r!14126 Nil!73051 s!9605 s!9605)) (not (isEmpty!41675 (findConcatSeparation!3427 (reg!20651 r!14126) r!14126 Nil!73051 s!9605 s!9605))))))

(declare-fun bs!1943561 () Bool)

(assert (= bs!1943561 d!2323451))

(assert (=> bs!1943561 m!8153914))

(declare-fun m!8154034 () Bool)

(assert (=> bs!1943561 m!8154034))

(assert (=> b!7622721 d!2323451))

(declare-fun b!7622932 () Bool)

(declare-fun e!4532613 () Bool)

(declare-fun lt!2657273 () Option!17397)

(declare-fun get!25791 (Option!17397) tuple2!69206)

(assert (=> b!7622932 (= e!4532613 (= (++!17628 (_1!37906 (get!25791 lt!2657273)) (_2!37906 (get!25791 lt!2657273))) s!9605))))

(declare-fun b!7622933 () Bool)

(declare-fun e!4532614 () Bool)

(assert (=> b!7622933 (= e!4532614 (matchR!9829 r!14126 s!9605))))

(declare-fun d!2323453 () Bool)

(declare-fun e!4532615 () Bool)

(assert (=> d!2323453 e!4532615))

(declare-fun res!3052184 () Bool)

(assert (=> d!2323453 (=> res!3052184 e!4532615)))

(assert (=> d!2323453 (= res!3052184 e!4532613)))

(declare-fun res!3052186 () Bool)

(assert (=> d!2323453 (=> (not res!3052186) (not e!4532613))))

(assert (=> d!2323453 (= res!3052186 (isDefined!14013 lt!2657273))))

(declare-fun e!4532616 () Option!17397)

(assert (=> d!2323453 (= lt!2657273 e!4532616)))

(declare-fun c!1404838 () Bool)

(assert (=> d!2323453 (= c!1404838 e!4532614)))

(declare-fun res!3052187 () Bool)

(assert (=> d!2323453 (=> (not res!3052187) (not e!4532614))))

(assert (=> d!2323453 (= res!3052187 (matchR!9829 (reg!20651 r!14126) Nil!73051))))

(assert (=> d!2323453 (validRegex!10742 (reg!20651 r!14126))))

(assert (=> d!2323453 (= (findConcatSeparation!3427 (reg!20651 r!14126) r!14126 Nil!73051 s!9605 s!9605) lt!2657273)))

(declare-fun b!7622934 () Bool)

(declare-fun res!3052185 () Bool)

(assert (=> b!7622934 (=> (not res!3052185) (not e!4532613))))

(assert (=> b!7622934 (= res!3052185 (matchR!9829 r!14126 (_2!37906 (get!25791 lt!2657273))))))

(declare-fun b!7622935 () Bool)

(declare-fun e!4532612 () Option!17397)

(assert (=> b!7622935 (= e!4532616 e!4532612)))

(declare-fun c!1404839 () Bool)

(assert (=> b!7622935 (= c!1404839 (is-Nil!73051 s!9605))))

(declare-fun b!7622936 () Bool)

(assert (=> b!7622936 (= e!4532615 (not (isDefined!14013 lt!2657273)))))

(declare-fun b!7622937 () Bool)

(assert (=> b!7622937 (= e!4532616 (Some!17396 (tuple2!69207 Nil!73051 s!9605)))))

(declare-fun b!7622938 () Bool)

(declare-fun lt!2657274 () Unit!167528)

(declare-fun lt!2657275 () Unit!167528)

(assert (=> b!7622938 (= lt!2657274 lt!2657275)))

(assert (=> b!7622938 (= (++!17628 (++!17628 Nil!73051 (Cons!73051 (h!79499 s!9605) Nil!73051)) (t!387910 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3222 (List!73175 C!40970 List!73175 List!73175) Unit!167528)

(assert (=> b!7622938 (= lt!2657275 (lemmaMoveElementToOtherListKeepsConcatEq!3222 Nil!73051 (h!79499 s!9605) (t!387910 s!9605) s!9605))))

(assert (=> b!7622938 (= e!4532612 (findConcatSeparation!3427 (reg!20651 r!14126) r!14126 (++!17628 Nil!73051 (Cons!73051 (h!79499 s!9605) Nil!73051)) (t!387910 s!9605) s!9605))))

(declare-fun b!7622939 () Bool)

(declare-fun res!3052183 () Bool)

(assert (=> b!7622939 (=> (not res!3052183) (not e!4532613))))

(assert (=> b!7622939 (= res!3052183 (matchR!9829 (reg!20651 r!14126) (_1!37906 (get!25791 lt!2657273))))))

(declare-fun b!7622940 () Bool)

(assert (=> b!7622940 (= e!4532612 None!17396)))

(assert (= (and d!2323453 res!3052187) b!7622933))

(assert (= (and d!2323453 c!1404838) b!7622937))

(assert (= (and d!2323453 (not c!1404838)) b!7622935))

(assert (= (and b!7622935 c!1404839) b!7622940))

(assert (= (and b!7622935 (not c!1404839)) b!7622938))

(assert (= (and d!2323453 res!3052186) b!7622939))

(assert (= (and b!7622939 res!3052183) b!7622934))

(assert (= (and b!7622934 res!3052185) b!7622932))

(assert (= (and d!2323453 (not res!3052184)) b!7622936))

(declare-fun m!8154036 () Bool)

(assert (=> b!7622936 m!8154036))

(declare-fun m!8154038 () Bool)

(assert (=> b!7622932 m!8154038))

(declare-fun m!8154040 () Bool)

(assert (=> b!7622932 m!8154040))

(declare-fun m!8154042 () Bool)

(assert (=> b!7622938 m!8154042))

(assert (=> b!7622938 m!8154042))

(declare-fun m!8154044 () Bool)

(assert (=> b!7622938 m!8154044))

(declare-fun m!8154046 () Bool)

(assert (=> b!7622938 m!8154046))

(assert (=> b!7622938 m!8154042))

(declare-fun m!8154048 () Bool)

(assert (=> b!7622938 m!8154048))

(assert (=> b!7622934 m!8154038))

(declare-fun m!8154050 () Bool)

(assert (=> b!7622934 m!8154050))

(assert (=> d!2323453 m!8154036))

(declare-fun m!8154052 () Bool)

(assert (=> d!2323453 m!8154052))

(assert (=> d!2323453 m!8153906))

(assert (=> b!7622933 m!8153910))

(assert (=> b!7622939 m!8154038))

(declare-fun m!8154054 () Bool)

(assert (=> b!7622939 m!8154054))

(assert (=> b!7622721 d!2323453))

(declare-fun bs!1943564 () Bool)

(declare-fun d!2323455 () Bool)

(assert (= bs!1943564 (and d!2323455 b!7622721)))

(declare-fun lambda!468563 () Int)

(assert (=> bs!1943564 (= lambda!468563 lambda!468554)))

(assert (=> d!2323455 true))

(assert (=> d!2323455 true))

(assert (=> d!2323455 true))

(assert (=> d!2323455 (= (isDefined!14013 (findConcatSeparation!3427 (reg!20651 r!14126) r!14126 Nil!73051 s!9605 s!9605)) (Exists!4478 lambda!468563))))

(declare-fun lt!2657279 () Unit!167528)

(declare-fun choose!58825 (Regex!20322 Regex!20322 List!73175) Unit!167528)

(assert (=> d!2323455 (= lt!2657279 (choose!58825 (reg!20651 r!14126) r!14126 s!9605))))

(assert (=> d!2323455 (validRegex!10742 (reg!20651 r!14126))))

(assert (=> d!2323455 (= (lemmaFindConcatSeparationEquivalentToExists!3185 (reg!20651 r!14126) r!14126 s!9605) lt!2657279)))

(declare-fun bs!1943565 () Bool)

(assert (= bs!1943565 d!2323455))

(assert (=> bs!1943565 m!8153914))

(assert (=> bs!1943565 m!8153916))

(assert (=> bs!1943565 m!8153914))

(declare-fun m!8154060 () Bool)

(assert (=> bs!1943565 m!8154060))

(declare-fun m!8154062 () Bool)

(assert (=> bs!1943565 m!8154062))

(assert (=> bs!1943565 m!8153906))

(assert (=> b!7622721 d!2323455))

(declare-fun b!7622968 () Bool)

(declare-fun e!4532631 () Bool)

(declare-fun tp!2225584 () Bool)

(declare-fun tp!2225582 () Bool)

(assert (=> b!7622968 (= e!4532631 (and tp!2225584 tp!2225582))))

(declare-fun b!7622970 () Bool)

(declare-fun tp!2225586 () Bool)

(declare-fun tp!2225585 () Bool)

(assert (=> b!7622970 (= e!4532631 (and tp!2225586 tp!2225585))))

(declare-fun b!7622967 () Bool)

(assert (=> b!7622967 (= e!4532631 tp_is_empty!50999)))

(assert (=> b!7622713 (= tp!2225542 e!4532631)))

(declare-fun b!7622969 () Bool)

(declare-fun tp!2225583 () Bool)

(assert (=> b!7622969 (= e!4532631 tp!2225583)))

(assert (= (and b!7622713 (is-ElementMatch!20322 (regOne!41156 r!14126))) b!7622967))

(assert (= (and b!7622713 (is-Concat!29167 (regOne!41156 r!14126))) b!7622968))

(assert (= (and b!7622713 (is-Star!20322 (regOne!41156 r!14126))) b!7622969))

(assert (= (and b!7622713 (is-Union!20322 (regOne!41156 r!14126))) b!7622970))

(declare-fun b!7622976 () Bool)

(declare-fun e!4532636 () Bool)

(declare-fun tp!2225589 () Bool)

(declare-fun tp!2225587 () Bool)

(assert (=> b!7622976 (= e!4532636 (and tp!2225589 tp!2225587))))

(declare-fun b!7622978 () Bool)

(declare-fun tp!2225591 () Bool)

(declare-fun tp!2225590 () Bool)

(assert (=> b!7622978 (= e!4532636 (and tp!2225591 tp!2225590))))

(declare-fun b!7622975 () Bool)

(assert (=> b!7622975 (= e!4532636 tp_is_empty!50999)))

(assert (=> b!7622713 (= tp!2225546 e!4532636)))

(declare-fun b!7622977 () Bool)

(declare-fun tp!2225588 () Bool)

(assert (=> b!7622977 (= e!4532636 tp!2225588)))

(assert (= (and b!7622713 (is-ElementMatch!20322 (regTwo!41156 r!14126))) b!7622975))

(assert (= (and b!7622713 (is-Concat!29167 (regTwo!41156 r!14126))) b!7622976))

(assert (= (and b!7622713 (is-Star!20322 (regTwo!41156 r!14126))) b!7622977))

(assert (= (and b!7622713 (is-Union!20322 (regTwo!41156 r!14126))) b!7622978))

(declare-fun b!7622985 () Bool)

(declare-fun e!4532639 () Bool)

(declare-fun tp!2225594 () Bool)

(assert (=> b!7622985 (= e!4532639 (and tp_is_empty!50999 tp!2225594))))

(assert (=> b!7622718 (= tp!2225541 e!4532639)))

(assert (= (and b!7622718 (is-Cons!73051 (t!387910 s!9605))) b!7622985))

(declare-fun b!7622986 () Bool)

(declare-fun e!4532640 () Bool)

(declare-fun tp!2225595 () Bool)

(assert (=> b!7622986 (= e!4532640 (and tp_is_empty!50999 tp!2225595))))

(assert (=> b!7622712 (= tp!2225540 e!4532640)))

(assert (= (and b!7622712 (is-Cons!73051 (t!387910 (_2!37906 cut!9)))) b!7622986))

(declare-fun b!7622988 () Bool)

(declare-fun e!4532641 () Bool)

(declare-fun tp!2225598 () Bool)

(declare-fun tp!2225596 () Bool)

(assert (=> b!7622988 (= e!4532641 (and tp!2225598 tp!2225596))))

(declare-fun b!7622990 () Bool)

(declare-fun tp!2225600 () Bool)

(declare-fun tp!2225599 () Bool)

(assert (=> b!7622990 (= e!4532641 (and tp!2225600 tp!2225599))))

(declare-fun b!7622987 () Bool)

(assert (=> b!7622987 (= e!4532641 tp_is_empty!50999)))

(assert (=> b!7622711 (= tp!2225547 e!4532641)))

(declare-fun b!7622989 () Bool)

(declare-fun tp!2225597 () Bool)

(assert (=> b!7622989 (= e!4532641 tp!2225597)))

(assert (= (and b!7622711 (is-ElementMatch!20322 (reg!20651 r!14126))) b!7622987))

(assert (= (and b!7622711 (is-Concat!29167 (reg!20651 r!14126))) b!7622988))

(assert (= (and b!7622711 (is-Star!20322 (reg!20651 r!14126))) b!7622989))

(assert (= (and b!7622711 (is-Union!20322 (reg!20651 r!14126))) b!7622990))

(declare-fun b!7622991 () Bool)

(declare-fun e!4532642 () Bool)

(declare-fun tp!2225601 () Bool)

(assert (=> b!7622991 (= e!4532642 (and tp_is_empty!50999 tp!2225601))))

(assert (=> b!7622716 (= tp!2225544 e!4532642)))

(assert (= (and b!7622716 (is-Cons!73051 (t!387910 (_1!37906 cut!9)))) b!7622991))

(declare-fun b!7622993 () Bool)

(declare-fun e!4532643 () Bool)

(declare-fun tp!2225604 () Bool)

(declare-fun tp!2225602 () Bool)

(assert (=> b!7622993 (= e!4532643 (and tp!2225604 tp!2225602))))

(declare-fun b!7622995 () Bool)

(declare-fun tp!2225606 () Bool)

(declare-fun tp!2225605 () Bool)

(assert (=> b!7622995 (= e!4532643 (and tp!2225606 tp!2225605))))

(declare-fun b!7622992 () Bool)

(assert (=> b!7622992 (= e!4532643 tp_is_empty!50999)))

(assert (=> b!7622715 (= tp!2225543 e!4532643)))

(declare-fun b!7622994 () Bool)

(declare-fun tp!2225603 () Bool)

(assert (=> b!7622994 (= e!4532643 tp!2225603)))

(assert (= (and b!7622715 (is-ElementMatch!20322 (regOne!41157 r!14126))) b!7622992))

(assert (= (and b!7622715 (is-Concat!29167 (regOne!41157 r!14126))) b!7622993))

(assert (= (and b!7622715 (is-Star!20322 (regOne!41157 r!14126))) b!7622994))

(assert (= (and b!7622715 (is-Union!20322 (regOne!41157 r!14126))) b!7622995))

(declare-fun b!7622997 () Bool)

(declare-fun e!4532644 () Bool)

(declare-fun tp!2225609 () Bool)

(declare-fun tp!2225607 () Bool)

(assert (=> b!7622997 (= e!4532644 (and tp!2225609 tp!2225607))))

(declare-fun b!7622999 () Bool)

(declare-fun tp!2225611 () Bool)

(declare-fun tp!2225610 () Bool)

(assert (=> b!7622999 (= e!4532644 (and tp!2225611 tp!2225610))))

(declare-fun b!7622996 () Bool)

(assert (=> b!7622996 (= e!4532644 tp_is_empty!50999)))

(assert (=> b!7622715 (= tp!2225545 e!4532644)))

(declare-fun b!7622998 () Bool)

(declare-fun tp!2225608 () Bool)

(assert (=> b!7622998 (= e!4532644 tp!2225608)))

(assert (= (and b!7622715 (is-ElementMatch!20322 (regTwo!41157 r!14126))) b!7622996))

(assert (= (and b!7622715 (is-Concat!29167 (regTwo!41157 r!14126))) b!7622997))

(assert (= (and b!7622715 (is-Star!20322 (regTwo!41157 r!14126))) b!7622998))

(assert (= (and b!7622715 (is-Union!20322 (regTwo!41157 r!14126))) b!7622999))

(push 1)

(assert (not b!7622856))

(assert (not b!7622936))

(assert (not b!7622938))

(assert (not b!7622800))

(assert (not b!7622970))

(assert (not b!7622986))

(assert (not b!7622887))

(assert (not bm!700037))

(assert (not b!7622853))

(assert (not b!7622885))

(assert (not b!7622999))

(assert (not b!7622990))

(assert (not d!2323437))

(assert (not bm!700035))

(assert (not d!2323441))

(assert (not b!7622969))

(assert (not d!2323443))

(assert (not b!7622995))

(assert (not b!7622889))

(assert (not d!2323451))

(assert (not b!7622934))

(assert (not b!7622865))

(assert (not b!7622988))

(assert tp_is_empty!50999)

(assert (not b!7622968))

(assert (not b!7622907))

(assert (not b!7622932))

(assert (not b!7622891))

(assert (not b!7622893))

(assert (not b!7622978))

(assert (not bm!700030))

(assert (not b!7622993))

(assert (not bm!700028))

(assert (not d!2323453))

(assert (not b!7622939))

(assert (not b!7622805))

(assert (not bm!700034))

(assert (not b!7622900))

(assert (not b!7622997))

(assert (not b!7622989))

(assert (not d!2323435))

(assert (not b!7622884))

(assert (not b!7622985))

(assert (not b!7622991))

(assert (not bm!700033))

(assert (not b!7622977))

(assert (not b!7622888))

(assert (not d!2323439))

(assert (not b!7622852))

(assert (not b!7622994))

(assert (not d!2323455))

(assert (not b!7622854))

(assert (not b!7622998))

(assert (not b!7622933))

(assert (not b!7622858))

(assert (not d!2323447))

(assert (not b!7622976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

