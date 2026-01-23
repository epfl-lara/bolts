; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232658 () Bool)

(assert start!232658)

(declare-fun b!2370760 () Bool)

(assert (=> b!2370760 true))

(assert (=> b!2370760 true))

(declare-fun lambda!87762 () Int)

(declare-fun lambda!87761 () Int)

(assert (=> b!2370760 (not (= lambda!87762 lambda!87761))))

(assert (=> b!2370760 true))

(assert (=> b!2370760 true))

(declare-fun b!2370747 () Bool)

(declare-fun e!1513152 () Bool)

(declare-fun tp!757834 () Bool)

(declare-fun tp!757839 () Bool)

(assert (=> b!2370747 (= e!1513152 (and tp!757834 tp!757839))))

(declare-fun b!2370748 () Bool)

(declare-fun e!1513150 () Bool)

(declare-datatypes ((C!14050 0))(
  ( (C!14051 (val!8267 Int)) )
))
(declare-datatypes ((Regex!6946 0))(
  ( (ElementMatch!6946 (c!376808 C!14050)) (Concat!11582 (regOne!14404 Regex!6946) (regTwo!14404 Regex!6946)) (EmptyExpr!6946) (Star!6946 (reg!7275 Regex!6946)) (EmptyLang!6946) (Union!6946 (regOne!14405 Regex!6946) (regTwo!14405 Regex!6946)) )
))
(declare-fun lt!866052 () Regex!6946)

(declare-datatypes ((List!28130 0))(
  ( (Nil!28032) (Cons!28032 (h!33433 C!14050) (t!208107 List!28130)) )
))
(declare-fun s!9460 () List!28130)

(declare-fun matchR!3063 (Regex!6946 List!28130) Bool)

(assert (=> b!2370748 (= e!1513150 (matchR!3063 lt!866052 s!9460))))

(declare-fun b!2370749 () Bool)

(declare-fun e!1513149 () Bool)

(declare-fun e!1513147 () Bool)

(assert (=> b!2370749 (= e!1513149 (not e!1513147))))

(declare-fun res!1006299 () Bool)

(assert (=> b!2370749 (=> res!1006299 e!1513147)))

(declare-fun r!13927 () Regex!6946)

(assert (=> b!2370749 (= res!1006299 (not (is-Concat!11582 r!13927)))))

(declare-fun lt!866047 () Bool)

(declare-fun lt!866045 () Bool)

(assert (=> b!2370749 (= lt!866047 lt!866045)))

(declare-fun matchRSpec!795 (Regex!6946 List!28130) Bool)

(assert (=> b!2370749 (= lt!866045 (matchRSpec!795 r!13927 s!9460))))

(assert (=> b!2370749 (= lt!866047 (matchR!3063 r!13927 s!9460))))

(declare-datatypes ((Unit!40927 0))(
  ( (Unit!40928) )
))
(declare-fun lt!866044 () Unit!40927)

(declare-fun mainMatchTheorem!795 (Regex!6946 List!28130) Unit!40927)

(assert (=> b!2370749 (= lt!866044 (mainMatchTheorem!795 r!13927 s!9460))))

(declare-fun b!2370750 () Bool)

(declare-fun e!1513148 () Bool)

(declare-fun tp_is_empty!11305 () Bool)

(declare-fun tp!757832 () Bool)

(assert (=> b!2370750 (= e!1513148 (and tp_is_empty!11305 tp!757832))))

(declare-fun b!2370751 () Bool)

(declare-fun e!1513155 () Bool)

(assert (=> b!2370751 (= e!1513155 tp_is_empty!11305)))

(declare-fun b!2370752 () Bool)

(declare-fun e!1513151 () Bool)

(declare-fun e!1513153 () Bool)

(assert (=> b!2370752 (= e!1513151 e!1513153)))

(declare-fun res!1006297 () Bool)

(assert (=> b!2370752 (=> res!1006297 e!1513153)))

(declare-fun lt!866048 () Regex!6946)

(assert (=> b!2370752 (= res!1006297 (not (matchR!3063 lt!866048 s!9460)))))

(declare-datatypes ((List!28131 0))(
  ( (Nil!28033) (Cons!28033 (h!33434 Regex!6946) (t!208108 List!28131)) )
))
(declare-fun l!9164 () List!28131)

(declare-fun head!5131 (List!28131) Regex!6946)

(assert (=> b!2370752 (= lt!866048 (head!5131 l!9164))))

(declare-fun b!2370753 () Bool)

(declare-fun res!1006305 () Bool)

(assert (=> b!2370753 (=> res!1006305 e!1513151)))

(declare-fun lt!866053 () List!28131)

(declare-fun generalisedConcat!47 (List!28131) Regex!6946)

(assert (=> b!2370753 (= res!1006305 (not (= (generalisedConcat!47 lt!866053) EmptyExpr!6946)))))

(declare-fun b!2370754 () Bool)

(declare-fun tp!757838 () Bool)

(declare-fun tp!757835 () Bool)

(assert (=> b!2370754 (= e!1513155 (and tp!757838 tp!757835))))

(declare-fun b!2370755 () Bool)

(declare-fun res!1006302 () Bool)

(assert (=> b!2370755 (=> (not res!1006302) (not e!1513149))))

(assert (=> b!2370755 (= res!1006302 (= r!13927 (generalisedConcat!47 l!9164)))))

(declare-fun b!2370756 () Bool)

(declare-fun tp!757837 () Bool)

(assert (=> b!2370756 (= e!1513155 tp!757837)))

(declare-fun b!2370758 () Bool)

(declare-fun res!1006298 () Bool)

(declare-fun e!1513154 () Bool)

(assert (=> b!2370758 (=> res!1006298 e!1513154)))

(declare-fun isEmpty!15961 (List!28131) Bool)

(assert (=> b!2370758 (= res!1006298 (isEmpty!15961 l!9164))))

(declare-fun b!2370759 () Bool)

(assert (=> b!2370759 (= e!1513154 e!1513151)))

(declare-fun res!1006301 () Bool)

(assert (=> b!2370759 (=> res!1006301 e!1513151)))

(assert (=> b!2370759 (= res!1006301 (not (isEmpty!15961 lt!866053)))))

(declare-fun tail!3401 (List!28131) List!28131)

(assert (=> b!2370759 (= lt!866053 (tail!3401 l!9164))))

(assert (=> b!2370760 (= e!1513147 e!1513154)))

(declare-fun res!1006303 () Bool)

(assert (=> b!2370760 (=> res!1006303 e!1513154)))

(declare-fun lt!866046 () Bool)

(assert (=> b!2370760 (= res!1006303 (not (= lt!866045 lt!866046)))))

(declare-fun Exists!1008 (Int) Bool)

(assert (=> b!2370760 (= (Exists!1008 lambda!87761) (Exists!1008 lambda!87762))))

(declare-fun lt!866049 () Unit!40927)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!347 (Regex!6946 Regex!6946 List!28130) Unit!40927)

(assert (=> b!2370760 (= lt!866049 (lemmaExistCutMatchRandMatchRSpecEquivalent!347 (regOne!14404 r!13927) (regTwo!14404 r!13927) s!9460))))

(assert (=> b!2370760 (= lt!866046 (Exists!1008 lambda!87761))))

(declare-datatypes ((tuple2!27756 0))(
  ( (tuple2!27757 (_1!16419 List!28130) (_2!16419 List!28130)) )
))
(declare-datatypes ((Option!5489 0))(
  ( (None!5488) (Some!5488 (v!30896 tuple2!27756)) )
))
(declare-fun isDefined!4317 (Option!5489) Bool)

(declare-fun findConcatSeparation!597 (Regex!6946 Regex!6946 List!28130 List!28130 List!28130) Option!5489)

(assert (=> b!2370760 (= lt!866046 (isDefined!4317 (findConcatSeparation!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) Nil!28032 s!9460 s!9460)))))

(declare-fun lt!866043 () Unit!40927)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!597 (Regex!6946 Regex!6946 List!28130) Unit!40927)

(assert (=> b!2370760 (= lt!866043 (lemmaFindConcatSeparationEquivalentToExists!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) s!9460))))

(declare-fun b!2370761 () Bool)

(assert (=> b!2370761 (= e!1513153 (not (= l!9164 Nil!28033)))))

(assert (=> b!2370761 (isDefined!4317 (findConcatSeparation!597 lt!866048 EmptyExpr!6946 Nil!28032 s!9460 s!9460))))

(declare-fun lt!866051 () Unit!40927)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!1 (Regex!6946 Regex!6946 List!28130) Unit!40927)

(assert (=> b!2370761 (= lt!866051 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!1 lt!866048 EmptyExpr!6946 s!9460))))

(assert (=> b!2370761 e!1513150))

(declare-fun res!1006300 () Bool)

(assert (=> b!2370761 (=> (not res!1006300) (not e!1513150))))

(declare-fun ++!6906 (List!28130 List!28130) List!28130)

(assert (=> b!2370761 (= res!1006300 (matchR!3063 lt!866052 (++!6906 s!9460 Nil!28032)))))

(assert (=> b!2370761 (= lt!866052 (Concat!11582 lt!866048 EmptyExpr!6946))))

(declare-fun lt!866050 () Unit!40927)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!19 (Regex!6946 Regex!6946 List!28130 List!28130) Unit!40927)

(assert (=> b!2370761 (= lt!866050 (lemmaTwoRegexMatchThenConcatMatchesConcatString!19 lt!866048 EmptyExpr!6946 s!9460 Nil!28032))))

(declare-fun res!1006304 () Bool)

(assert (=> start!232658 (=> (not res!1006304) (not e!1513149))))

(declare-fun lambda!87760 () Int)

(declare-fun forall!5580 (List!28131 Int) Bool)

(assert (=> start!232658 (= res!1006304 (forall!5580 l!9164 lambda!87760))))

(assert (=> start!232658 e!1513149))

(assert (=> start!232658 e!1513152))

(assert (=> start!232658 e!1513155))

(assert (=> start!232658 e!1513148))

(declare-fun b!2370757 () Bool)

(declare-fun tp!757836 () Bool)

(declare-fun tp!757833 () Bool)

(assert (=> b!2370757 (= e!1513155 (and tp!757836 tp!757833))))

(assert (= (and start!232658 res!1006304) b!2370755))

(assert (= (and b!2370755 res!1006302) b!2370749))

(assert (= (and b!2370749 (not res!1006299)) b!2370760))

(assert (= (and b!2370760 (not res!1006303)) b!2370758))

(assert (= (and b!2370758 (not res!1006298)) b!2370759))

(assert (= (and b!2370759 (not res!1006301)) b!2370753))

(assert (= (and b!2370753 (not res!1006305)) b!2370752))

(assert (= (and b!2370752 (not res!1006297)) b!2370761))

(assert (= (and b!2370761 res!1006300) b!2370748))

(assert (= (and start!232658 (is-Cons!28033 l!9164)) b!2370747))

(assert (= (and start!232658 (is-ElementMatch!6946 r!13927)) b!2370751))

(assert (= (and start!232658 (is-Concat!11582 r!13927)) b!2370754))

(assert (= (and start!232658 (is-Star!6946 r!13927)) b!2370756))

(assert (= (and start!232658 (is-Union!6946 r!13927)) b!2370757))

(assert (= (and start!232658 (is-Cons!28032 s!9460)) b!2370750))

(declare-fun m!2778611 () Bool)

(assert (=> b!2370761 m!2778611))

(declare-fun m!2778613 () Bool)

(assert (=> b!2370761 m!2778613))

(assert (=> b!2370761 m!2778611))

(declare-fun m!2778615 () Bool)

(assert (=> b!2370761 m!2778615))

(declare-fun m!2778617 () Bool)

(assert (=> b!2370761 m!2778617))

(assert (=> b!2370761 m!2778617))

(declare-fun m!2778619 () Bool)

(assert (=> b!2370761 m!2778619))

(declare-fun m!2778621 () Bool)

(assert (=> b!2370761 m!2778621))

(declare-fun m!2778623 () Bool)

(assert (=> b!2370758 m!2778623))

(declare-fun m!2778625 () Bool)

(assert (=> b!2370749 m!2778625))

(declare-fun m!2778627 () Bool)

(assert (=> b!2370749 m!2778627))

(declare-fun m!2778629 () Bool)

(assert (=> b!2370749 m!2778629))

(declare-fun m!2778631 () Bool)

(assert (=> b!2370753 m!2778631))

(declare-fun m!2778633 () Bool)

(assert (=> b!2370752 m!2778633))

(declare-fun m!2778635 () Bool)

(assert (=> b!2370752 m!2778635))

(declare-fun m!2778637 () Bool)

(assert (=> b!2370748 m!2778637))

(declare-fun m!2778639 () Bool)

(assert (=> b!2370759 m!2778639))

(declare-fun m!2778641 () Bool)

(assert (=> b!2370759 m!2778641))

(declare-fun m!2778643 () Bool)

(assert (=> b!2370755 m!2778643))

(declare-fun m!2778645 () Bool)

(assert (=> start!232658 m!2778645))

(declare-fun m!2778647 () Bool)

(assert (=> b!2370760 m!2778647))

(declare-fun m!2778649 () Bool)

(assert (=> b!2370760 m!2778649))

(declare-fun m!2778651 () Bool)

(assert (=> b!2370760 m!2778651))

(assert (=> b!2370760 m!2778647))

(declare-fun m!2778653 () Bool)

(assert (=> b!2370760 m!2778653))

(declare-fun m!2778655 () Bool)

(assert (=> b!2370760 m!2778655))

(assert (=> b!2370760 m!2778653))

(declare-fun m!2778657 () Bool)

(assert (=> b!2370760 m!2778657))

(push 1)

(assert (not b!2370760))

(assert (not b!2370747))

(assert (not b!2370748))

(assert (not b!2370753))

(assert (not b!2370756))

(assert (not b!2370752))

(assert (not b!2370755))

(assert tp_is_empty!11305)

(assert (not b!2370757))

(assert (not b!2370754))

(assert (not start!232658))

(assert (not b!2370759))

(assert (not b!2370758))

(assert (not b!2370749))

(assert (not b!2370761))

(assert (not b!2370750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!695302 () Bool)

(declare-fun isEmpty!15963 (Option!5489) Bool)

(assert (=> d!695302 (= (isDefined!4317 (findConcatSeparation!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) Nil!28032 s!9460 s!9460)) (not (isEmpty!15963 (findConcatSeparation!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) Nil!28032 s!9460 s!9460))))))

(declare-fun bs!461223 () Bool)

(assert (= bs!461223 d!695302))

(assert (=> bs!461223 m!2778647))

(declare-fun m!2778707 () Bool)

(assert (=> bs!461223 m!2778707))

(assert (=> b!2370760 d!695302))

(declare-fun d!695304 () Bool)

(declare-fun choose!13791 (Int) Bool)

(assert (=> d!695304 (= (Exists!1008 lambda!87761) (choose!13791 lambda!87761))))

(declare-fun bs!461224 () Bool)

(assert (= bs!461224 d!695304))

(declare-fun m!2778709 () Bool)

(assert (=> bs!461224 m!2778709))

(assert (=> b!2370760 d!695304))

(declare-fun bs!461225 () Bool)

(declare-fun d!695306 () Bool)

(assert (= bs!461225 (and d!695306 b!2370760)))

(declare-fun lambda!87776 () Int)

(assert (=> bs!461225 (= lambda!87776 lambda!87761)))

(assert (=> bs!461225 (not (= lambda!87776 lambda!87762))))

(assert (=> d!695306 true))

(assert (=> d!695306 true))

(assert (=> d!695306 true))

(assert (=> d!695306 (= (isDefined!4317 (findConcatSeparation!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) Nil!28032 s!9460 s!9460)) (Exists!1008 lambda!87776))))

(declare-fun lt!866089 () Unit!40927)

(declare-fun choose!13792 (Regex!6946 Regex!6946 List!28130) Unit!40927)

(assert (=> d!695306 (= lt!866089 (choose!13792 (regOne!14404 r!13927) (regTwo!14404 r!13927) s!9460))))

(declare-fun validRegex!2673 (Regex!6946) Bool)

(assert (=> d!695306 (validRegex!2673 (regOne!14404 r!13927))))

(assert (=> d!695306 (= (lemmaFindConcatSeparationEquivalentToExists!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) s!9460) lt!866089)))

(declare-fun bs!461226 () Bool)

(assert (= bs!461226 d!695306))

(assert (=> bs!461226 m!2778647))

(assert (=> bs!461226 m!2778649))

(declare-fun m!2778711 () Bool)

(assert (=> bs!461226 m!2778711))

(assert (=> bs!461226 m!2778647))

(declare-fun m!2778713 () Bool)

(assert (=> bs!461226 m!2778713))

(declare-fun m!2778715 () Bool)

(assert (=> bs!461226 m!2778715))

(assert (=> b!2370760 d!695306))

(declare-fun bs!461227 () Bool)

(declare-fun d!695308 () Bool)

(assert (= bs!461227 (and d!695308 b!2370760)))

(declare-fun lambda!87781 () Int)

(assert (=> bs!461227 (= lambda!87781 lambda!87761)))

(assert (=> bs!461227 (not (= lambda!87781 lambda!87762))))

(declare-fun bs!461228 () Bool)

(assert (= bs!461228 (and d!695308 d!695306)))

(assert (=> bs!461228 (= lambda!87781 lambda!87776)))

(assert (=> d!695308 true))

(assert (=> d!695308 true))

(assert (=> d!695308 true))

(declare-fun lambda!87782 () Int)

(assert (=> bs!461227 (not (= lambda!87782 lambda!87761))))

(assert (=> bs!461227 (= lambda!87782 lambda!87762)))

(assert (=> bs!461228 (not (= lambda!87782 lambda!87776))))

(declare-fun bs!461229 () Bool)

(assert (= bs!461229 d!695308))

(assert (=> bs!461229 (not (= lambda!87782 lambda!87781))))

(assert (=> d!695308 true))

(assert (=> d!695308 true))

(assert (=> d!695308 true))

(assert (=> d!695308 (= (Exists!1008 lambda!87781) (Exists!1008 lambda!87782))))

(declare-fun lt!866092 () Unit!40927)

(declare-fun choose!13793 (Regex!6946 Regex!6946 List!28130) Unit!40927)

(assert (=> d!695308 (= lt!866092 (choose!13793 (regOne!14404 r!13927) (regTwo!14404 r!13927) s!9460))))

(assert (=> d!695308 (validRegex!2673 (regOne!14404 r!13927))))

(assert (=> d!695308 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!347 (regOne!14404 r!13927) (regTwo!14404 r!13927) s!9460) lt!866092)))

(declare-fun m!2778717 () Bool)

(assert (=> bs!461229 m!2778717))

(declare-fun m!2778719 () Bool)

(assert (=> bs!461229 m!2778719))

(declare-fun m!2778721 () Bool)

(assert (=> bs!461229 m!2778721))

(assert (=> bs!461229 m!2778711))

(assert (=> b!2370760 d!695308))

(declare-fun b!2370863 () Bool)

(declare-fun e!1513211 () Option!5489)

(assert (=> b!2370863 (= e!1513211 None!5488)))

(declare-fun b!2370864 () Bool)

(declare-fun res!1006373 () Bool)

(declare-fun e!1513214 () Bool)

(assert (=> b!2370864 (=> (not res!1006373) (not e!1513214))))

(declare-fun lt!866099 () Option!5489)

(declare-fun get!8523 (Option!5489) tuple2!27756)

(assert (=> b!2370864 (= res!1006373 (matchR!3063 (regTwo!14404 r!13927) (_2!16419 (get!8523 lt!866099))))))

(declare-fun b!2370865 () Bool)

(declare-fun e!1513212 () Option!5489)

(assert (=> b!2370865 (= e!1513212 e!1513211)))

(declare-fun c!376815 () Bool)

(assert (=> b!2370865 (= c!376815 (is-Nil!28032 s!9460))))

(declare-fun b!2370866 () Bool)

(declare-fun res!1006377 () Bool)

(assert (=> b!2370866 (=> (not res!1006377) (not e!1513214))))

(assert (=> b!2370866 (= res!1006377 (matchR!3063 (regOne!14404 r!13927) (_1!16419 (get!8523 lt!866099))))))

(declare-fun b!2370867 () Bool)

(declare-fun lt!866101 () Unit!40927)

(declare-fun lt!866100 () Unit!40927)

(assert (=> b!2370867 (= lt!866101 lt!866100)))

(assert (=> b!2370867 (= (++!6906 (++!6906 Nil!28032 (Cons!28032 (h!33433 s!9460) Nil!28032)) (t!208107 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!550 (List!28130 C!14050 List!28130 List!28130) Unit!40927)

(assert (=> b!2370867 (= lt!866100 (lemmaMoveElementToOtherListKeepsConcatEq!550 Nil!28032 (h!33433 s!9460) (t!208107 s!9460) s!9460))))

(assert (=> b!2370867 (= e!1513211 (findConcatSeparation!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) (++!6906 Nil!28032 (Cons!28032 (h!33433 s!9460) Nil!28032)) (t!208107 s!9460) s!9460))))

(declare-fun b!2370868 () Bool)

(declare-fun e!1513213 () Bool)

(assert (=> b!2370868 (= e!1513213 (matchR!3063 (regTwo!14404 r!13927) s!9460))))

(declare-fun b!2370870 () Bool)

(declare-fun e!1513215 () Bool)

(assert (=> b!2370870 (= e!1513215 (not (isDefined!4317 lt!866099)))))

(declare-fun b!2370871 () Bool)

(assert (=> b!2370871 (= e!1513212 (Some!5488 (tuple2!27757 Nil!28032 s!9460)))))

(declare-fun d!695312 () Bool)

(assert (=> d!695312 e!1513215))

(declare-fun res!1006376 () Bool)

(assert (=> d!695312 (=> res!1006376 e!1513215)))

(assert (=> d!695312 (= res!1006376 e!1513214)))

(declare-fun res!1006374 () Bool)

(assert (=> d!695312 (=> (not res!1006374) (not e!1513214))))

(assert (=> d!695312 (= res!1006374 (isDefined!4317 lt!866099))))

(assert (=> d!695312 (= lt!866099 e!1513212)))

(declare-fun c!376814 () Bool)

(assert (=> d!695312 (= c!376814 e!1513213)))

(declare-fun res!1006375 () Bool)

(assert (=> d!695312 (=> (not res!1006375) (not e!1513213))))

(assert (=> d!695312 (= res!1006375 (matchR!3063 (regOne!14404 r!13927) Nil!28032))))

(assert (=> d!695312 (validRegex!2673 (regOne!14404 r!13927))))

(assert (=> d!695312 (= (findConcatSeparation!597 (regOne!14404 r!13927) (regTwo!14404 r!13927) Nil!28032 s!9460 s!9460) lt!866099)))

(declare-fun b!2370869 () Bool)

(assert (=> b!2370869 (= e!1513214 (= (++!6906 (_1!16419 (get!8523 lt!866099)) (_2!16419 (get!8523 lt!866099))) s!9460))))

(assert (= (and d!695312 res!1006375) b!2370868))

(assert (= (and d!695312 c!376814) b!2370871))

(assert (= (and d!695312 (not c!376814)) b!2370865))

(assert (= (and b!2370865 c!376815) b!2370863))

(assert (= (and b!2370865 (not c!376815)) b!2370867))

(assert (= (and d!695312 res!1006374) b!2370866))

(assert (= (and b!2370866 res!1006377) b!2370864))

(assert (= (and b!2370864 res!1006373) b!2370869))

(assert (= (and d!695312 (not res!1006376)) b!2370870))

(declare-fun m!2778727 () Bool)

(assert (=> b!2370868 m!2778727))

(declare-fun m!2778729 () Bool)

(assert (=> d!695312 m!2778729))

(declare-fun m!2778731 () Bool)

(assert (=> d!695312 m!2778731))

(assert (=> d!695312 m!2778711))

(declare-fun m!2778733 () Bool)

(assert (=> b!2370866 m!2778733))

(declare-fun m!2778735 () Bool)

(assert (=> b!2370866 m!2778735))

(declare-fun m!2778737 () Bool)

(assert (=> b!2370867 m!2778737))

(assert (=> b!2370867 m!2778737))

(declare-fun m!2778739 () Bool)

(assert (=> b!2370867 m!2778739))

(declare-fun m!2778741 () Bool)

(assert (=> b!2370867 m!2778741))

(assert (=> b!2370867 m!2778737))

(declare-fun m!2778743 () Bool)

(assert (=> b!2370867 m!2778743))

(assert (=> b!2370864 m!2778733))

(declare-fun m!2778745 () Bool)

(assert (=> b!2370864 m!2778745))

(assert (=> b!2370870 m!2778729))

(assert (=> b!2370869 m!2778733))

(declare-fun m!2778747 () Bool)

(assert (=> b!2370869 m!2778747))

(assert (=> b!2370760 d!695312))

(declare-fun d!695320 () Bool)

(assert (=> d!695320 (= (Exists!1008 lambda!87762) (choose!13791 lambda!87762))))

(declare-fun bs!461230 () Bool)

(assert (= bs!461230 d!695320))

(declare-fun m!2778749 () Bool)

(assert (=> bs!461230 m!2778749))

(assert (=> b!2370760 d!695320))

(declare-fun bs!461231 () Bool)

(declare-fun d!695322 () Bool)

(assert (= bs!461231 (and d!695322 start!232658)))

(declare-fun lambda!87787 () Int)

(assert (=> bs!461231 (= lambda!87787 lambda!87760)))

(declare-fun b!2370912 () Bool)

(declare-fun e!1513240 () Bool)

(declare-fun e!1513245 () Bool)

(assert (=> b!2370912 (= e!1513240 e!1513245)))

(declare-fun c!376835 () Bool)

(assert (=> b!2370912 (= c!376835 (isEmpty!15961 l!9164))))

(declare-fun b!2370913 () Bool)

(declare-fun e!1513243 () Regex!6946)

(assert (=> b!2370913 (= e!1513243 (Concat!11582 (h!33434 l!9164) (generalisedConcat!47 (t!208108 l!9164))))))

(declare-fun b!2370914 () Bool)

(declare-fun e!1513241 () Regex!6946)

(assert (=> b!2370914 (= e!1513241 e!1513243)))

(declare-fun c!376832 () Bool)

(assert (=> b!2370914 (= c!376832 (is-Cons!28033 l!9164))))

(assert (=> d!695322 e!1513240))

(declare-fun res!1006386 () Bool)

(assert (=> d!695322 (=> (not res!1006386) (not e!1513240))))

(declare-fun lt!866106 () Regex!6946)

(assert (=> d!695322 (= res!1006386 (validRegex!2673 lt!866106))))

(assert (=> d!695322 (= lt!866106 e!1513241)))

(declare-fun c!376833 () Bool)

(declare-fun e!1513242 () Bool)

(assert (=> d!695322 (= c!376833 e!1513242)))

(declare-fun res!1006387 () Bool)

(assert (=> d!695322 (=> (not res!1006387) (not e!1513242))))

(assert (=> d!695322 (= res!1006387 (is-Cons!28033 l!9164))))

(assert (=> d!695322 (forall!5580 l!9164 lambda!87787)))

(assert (=> d!695322 (= (generalisedConcat!47 l!9164) lt!866106)))

(declare-fun b!2370915 () Bool)

(declare-fun e!1513244 () Bool)

(assert (=> b!2370915 (= e!1513245 e!1513244)))

(declare-fun c!376834 () Bool)

(assert (=> b!2370915 (= c!376834 (isEmpty!15961 (tail!3401 l!9164)))))

(declare-fun b!2370916 () Bool)

(declare-fun isEmptyExpr!25 (Regex!6946) Bool)

(assert (=> b!2370916 (= e!1513245 (isEmptyExpr!25 lt!866106))))

(declare-fun b!2370917 () Bool)

(assert (=> b!2370917 (= e!1513241 (h!33434 l!9164))))

(declare-fun b!2370918 () Bool)

(declare-fun isConcat!25 (Regex!6946) Bool)

(assert (=> b!2370918 (= e!1513244 (isConcat!25 lt!866106))))

(declare-fun b!2370919 () Bool)

(assert (=> b!2370919 (= e!1513242 (isEmpty!15961 (t!208108 l!9164)))))

(declare-fun b!2370920 () Bool)

(assert (=> b!2370920 (= e!1513243 EmptyExpr!6946)))

(declare-fun b!2370921 () Bool)

(assert (=> b!2370921 (= e!1513244 (= lt!866106 (head!5131 l!9164)))))

(assert (= (and d!695322 res!1006387) b!2370919))

(assert (= (and d!695322 c!376833) b!2370917))

(assert (= (and d!695322 (not c!376833)) b!2370914))

(assert (= (and b!2370914 c!376832) b!2370913))

(assert (= (and b!2370914 (not c!376832)) b!2370920))

(assert (= (and d!695322 res!1006386) b!2370912))

(assert (= (and b!2370912 c!376835) b!2370916))

(assert (= (and b!2370912 (not c!376835)) b!2370915))

(assert (= (and b!2370915 c!376834) b!2370921))

(assert (= (and b!2370915 (not c!376834)) b!2370918))

(declare-fun m!2778751 () Bool)

(assert (=> b!2370913 m!2778751))

(declare-fun m!2778753 () Bool)

(assert (=> d!695322 m!2778753))

(declare-fun m!2778755 () Bool)

(assert (=> d!695322 m!2778755))

(declare-fun m!2778757 () Bool)

(assert (=> b!2370916 m!2778757))

(assert (=> b!2370912 m!2778623))

(assert (=> b!2370921 m!2778635))

(declare-fun m!2778759 () Bool)

(assert (=> b!2370918 m!2778759))

(assert (=> b!2370915 m!2778641))

(assert (=> b!2370915 m!2778641))

(declare-fun m!2778761 () Bool)

(assert (=> b!2370915 m!2778761))

(declare-fun m!2778763 () Bool)

(assert (=> b!2370919 m!2778763))

(assert (=> b!2370755 d!695322))

(declare-fun bs!461233 () Bool)

(declare-fun b!2370970 () Bool)

(assert (= bs!461233 (and b!2370970 b!2370760)))

(declare-fun lambda!87793 () Int)

(assert (=> bs!461233 (not (= lambda!87793 lambda!87762))))

(assert (=> bs!461233 (not (= lambda!87793 lambda!87761))))

(declare-fun bs!461234 () Bool)

(assert (= bs!461234 (and b!2370970 d!695308)))

(assert (=> bs!461234 (not (= lambda!87793 lambda!87781))))

(assert (=> bs!461234 (not (= lambda!87793 lambda!87782))))

(declare-fun bs!461235 () Bool)

(assert (= bs!461235 (and b!2370970 d!695306)))

(assert (=> bs!461235 (not (= lambda!87793 lambda!87776))))

(assert (=> b!2370970 true))

(assert (=> b!2370970 true))

(declare-fun bs!461236 () Bool)

(declare-fun b!2370972 () Bool)

(assert (= bs!461236 (and b!2370972 b!2370760)))

(declare-fun lambda!87794 () Int)

(assert (=> bs!461236 (= lambda!87794 lambda!87762)))

(assert (=> bs!461236 (not (= lambda!87794 lambda!87761))))

(declare-fun bs!461237 () Bool)

(assert (= bs!461237 (and b!2370972 d!695308)))

(assert (=> bs!461237 (not (= lambda!87794 lambda!87781))))

(declare-fun bs!461238 () Bool)

(assert (= bs!461238 (and b!2370972 b!2370970)))

(assert (=> bs!461238 (not (= lambda!87794 lambda!87793))))

(assert (=> bs!461237 (= lambda!87794 lambda!87782)))

(declare-fun bs!461239 () Bool)

(assert (= bs!461239 (and b!2370972 d!695306)))

(assert (=> bs!461239 (not (= lambda!87794 lambda!87776))))

(assert (=> b!2370972 true))

(assert (=> b!2370972 true))

(declare-fun d!695324 () Bool)

(declare-fun c!376848 () Bool)

(assert (=> d!695324 (= c!376848 (is-EmptyExpr!6946 r!13927))))

(declare-fun e!1513273 () Bool)

(assert (=> d!695324 (= (matchRSpec!795 r!13927 s!9460) e!1513273)))

(declare-fun b!2370964 () Bool)

(declare-fun c!376850 () Bool)

(assert (=> b!2370964 (= c!376850 (is-Union!6946 r!13927))))

(declare-fun e!1513276 () Bool)

(declare-fun e!1513274 () Bool)

(assert (=> b!2370964 (= e!1513276 e!1513274)))

(declare-fun b!2370965 () Bool)

(declare-fun res!1006408 () Bool)

(declare-fun e!1513272 () Bool)

(assert (=> b!2370965 (=> res!1006408 e!1513272)))

(declare-fun call!144142 () Bool)

(assert (=> b!2370965 (= res!1006408 call!144142)))

(declare-fun e!1513271 () Bool)

(assert (=> b!2370965 (= e!1513271 e!1513272)))

(declare-fun b!2370966 () Bool)

(declare-fun c!376851 () Bool)

(assert (=> b!2370966 (= c!376851 (is-ElementMatch!6946 r!13927))))

(declare-fun e!1513275 () Bool)

(assert (=> b!2370966 (= e!1513275 e!1513276)))

(declare-fun b!2370967 () Bool)

(assert (=> b!2370967 (= e!1513274 e!1513271)))

(declare-fun c!376849 () Bool)

(assert (=> b!2370967 (= c!376849 (is-Star!6946 r!13927))))

(declare-fun bm!144136 () Bool)

(declare-fun isEmpty!15964 (List!28130) Bool)

(assert (=> bm!144136 (= call!144142 (isEmpty!15964 s!9460))))

(declare-fun b!2370968 () Bool)

(declare-fun e!1513270 () Bool)

(assert (=> b!2370968 (= e!1513270 (matchRSpec!795 (regTwo!14405 r!13927) s!9460))))

(declare-fun b!2370969 () Bool)

(assert (=> b!2370969 (= e!1513273 e!1513275)))

(declare-fun res!1006407 () Bool)

(assert (=> b!2370969 (= res!1006407 (not (is-EmptyLang!6946 r!13927)))))

(assert (=> b!2370969 (=> (not res!1006407) (not e!1513275))))

(declare-fun call!144141 () Bool)

(assert (=> b!2370970 (= e!1513272 call!144141)))

(declare-fun b!2370971 () Bool)

(assert (=> b!2370971 (= e!1513273 call!144142)))

(assert (=> b!2370972 (= e!1513271 call!144141)))

(declare-fun b!2370973 () Bool)

(assert (=> b!2370973 (= e!1513276 (= s!9460 (Cons!28032 (c!376808 r!13927) Nil!28032)))))

(declare-fun bm!144137 () Bool)

(assert (=> bm!144137 (= call!144141 (Exists!1008 (ite c!376849 lambda!87793 lambda!87794)))))

(declare-fun b!2370974 () Bool)

(assert (=> b!2370974 (= e!1513274 e!1513270)))

(declare-fun res!1006406 () Bool)

(assert (=> b!2370974 (= res!1006406 (matchRSpec!795 (regOne!14405 r!13927) s!9460))))

(assert (=> b!2370974 (=> res!1006406 e!1513270)))

(assert (= (and d!695324 c!376848) b!2370971))

(assert (= (and d!695324 (not c!376848)) b!2370969))

(assert (= (and b!2370969 res!1006407) b!2370966))

(assert (= (and b!2370966 c!376851) b!2370973))

(assert (= (and b!2370966 (not c!376851)) b!2370964))

(assert (= (and b!2370964 c!376850) b!2370974))

(assert (= (and b!2370964 (not c!376850)) b!2370967))

(assert (= (and b!2370974 (not res!1006406)) b!2370968))

(assert (= (and b!2370967 c!376849) b!2370965))

(assert (= (and b!2370967 (not c!376849)) b!2370972))

(assert (= (and b!2370965 (not res!1006408)) b!2370970))

(assert (= (or b!2370970 b!2370972) bm!144137))

(assert (= (or b!2370971 b!2370965) bm!144136))

(declare-fun m!2778779 () Bool)

(assert (=> bm!144136 m!2778779))

(declare-fun m!2778781 () Bool)

(assert (=> b!2370968 m!2778781))

(declare-fun m!2778783 () Bool)

(assert (=> bm!144137 m!2778783))

(declare-fun m!2778785 () Bool)

(assert (=> b!2370974 m!2778785))

(assert (=> b!2370749 d!695324))

(declare-fun b!2371031 () Bool)

(declare-fun e!1513308 () Bool)

(declare-fun head!5133 (List!28130) C!14050)

(assert (=> b!2371031 (= e!1513308 (= (head!5133 s!9460) (c!376808 r!13927)))))

(declare-fun b!2371032 () Bool)

(declare-fun res!1006448 () Bool)

(declare-fun e!1513307 () Bool)

(assert (=> b!2371032 (=> res!1006448 e!1513307)))

(assert (=> b!2371032 (= res!1006448 (not (is-ElementMatch!6946 r!13927)))))

(declare-fun e!1513306 () Bool)

(assert (=> b!2371032 (= e!1513306 e!1513307)))

(declare-fun b!2371033 () Bool)

(declare-fun e!1513305 () Bool)

(declare-fun e!1513311 () Bool)

(assert (=> b!2371033 (= e!1513305 e!1513311)))

(declare-fun res!1006445 () Bool)

(assert (=> b!2371033 (=> res!1006445 e!1513311)))

(declare-fun call!144147 () Bool)

(assert (=> b!2371033 (= res!1006445 call!144147)))

(declare-fun b!2371034 () Bool)

(declare-fun res!1006447 () Bool)

(assert (=> b!2371034 (=> (not res!1006447) (not e!1513308))))

(declare-fun tail!3403 (List!28130) List!28130)

(assert (=> b!2371034 (= res!1006447 (isEmpty!15964 (tail!3403 s!9460)))))

(declare-fun b!2371035 () Bool)

(declare-fun res!1006446 () Bool)

(assert (=> b!2371035 (=> res!1006446 e!1513311)))

(assert (=> b!2371035 (= res!1006446 (not (isEmpty!15964 (tail!3403 s!9460))))))

(declare-fun d!695328 () Bool)

(declare-fun e!1513309 () Bool)

(assert (=> d!695328 e!1513309))

(declare-fun c!376865 () Bool)

(assert (=> d!695328 (= c!376865 (is-EmptyExpr!6946 r!13927))))

(declare-fun lt!866112 () Bool)

(declare-fun e!1513310 () Bool)

(assert (=> d!695328 (= lt!866112 e!1513310)))

(declare-fun c!376866 () Bool)

(assert (=> d!695328 (= c!376866 (isEmpty!15964 s!9460))))

(assert (=> d!695328 (validRegex!2673 r!13927)))

(assert (=> d!695328 (= (matchR!3063 r!13927 s!9460) lt!866112)))

(declare-fun b!2371036 () Bool)

(declare-fun derivativeStep!1660 (Regex!6946 C!14050) Regex!6946)

(assert (=> b!2371036 (= e!1513310 (matchR!3063 (derivativeStep!1660 r!13927 (head!5133 s!9460)) (tail!3403 s!9460)))))

(declare-fun b!2371037 () Bool)

(assert (=> b!2371037 (= e!1513309 (= lt!866112 call!144147))))

(declare-fun b!2371038 () Bool)

(assert (=> b!2371038 (= e!1513306 (not lt!866112))))

(declare-fun b!2371039 () Bool)

(assert (=> b!2371039 (= e!1513309 e!1513306)))

(declare-fun c!376864 () Bool)

(assert (=> b!2371039 (= c!376864 (is-EmptyLang!6946 r!13927))))

(declare-fun b!2371040 () Bool)

(declare-fun nullable!2002 (Regex!6946) Bool)

(assert (=> b!2371040 (= e!1513310 (nullable!2002 r!13927))))

(declare-fun b!2371041 () Bool)

(declare-fun res!1006441 () Bool)

(assert (=> b!2371041 (=> res!1006441 e!1513307)))

(assert (=> b!2371041 (= res!1006441 e!1513308)))

(declare-fun res!1006442 () Bool)

(assert (=> b!2371041 (=> (not res!1006442) (not e!1513308))))

(assert (=> b!2371041 (= res!1006442 lt!866112)))

(declare-fun b!2371042 () Bool)

(declare-fun res!1006444 () Bool)

(assert (=> b!2371042 (=> (not res!1006444) (not e!1513308))))

(assert (=> b!2371042 (= res!1006444 (not call!144147))))

(declare-fun b!2371043 () Bool)

(assert (=> b!2371043 (= e!1513307 e!1513305)))

(declare-fun res!1006443 () Bool)

(assert (=> b!2371043 (=> (not res!1006443) (not e!1513305))))

(assert (=> b!2371043 (= res!1006443 (not lt!866112))))

(declare-fun bm!144142 () Bool)

(assert (=> bm!144142 (= call!144147 (isEmpty!15964 s!9460))))

(declare-fun b!2371044 () Bool)

(assert (=> b!2371044 (= e!1513311 (not (= (head!5133 s!9460) (c!376808 r!13927))))))

(assert (= (and d!695328 c!376866) b!2371040))

(assert (= (and d!695328 (not c!376866)) b!2371036))

(assert (= (and d!695328 c!376865) b!2371037))

(assert (= (and d!695328 (not c!376865)) b!2371039))

(assert (= (and b!2371039 c!376864) b!2371038))

(assert (= (and b!2371039 (not c!376864)) b!2371032))

(assert (= (and b!2371032 (not res!1006448)) b!2371041))

(assert (= (and b!2371041 res!1006442) b!2371042))

(assert (= (and b!2371042 res!1006444) b!2371034))

(assert (= (and b!2371034 res!1006447) b!2371031))

(assert (= (and b!2371041 (not res!1006441)) b!2371043))

(assert (= (and b!2371043 res!1006443) b!2371033))

(assert (= (and b!2371033 (not res!1006445)) b!2371035))

(assert (= (and b!2371035 (not res!1006446)) b!2371044))

(assert (= (or b!2371037 b!2371033 b!2371042) bm!144142))

(declare-fun m!2778787 () Bool)

(assert (=> b!2371031 m!2778787))

(declare-fun m!2778789 () Bool)

(assert (=> b!2371034 m!2778789))

(assert (=> b!2371034 m!2778789))

(declare-fun m!2778791 () Bool)

(assert (=> b!2371034 m!2778791))

(assert (=> d!695328 m!2778779))

(declare-fun m!2778793 () Bool)

(assert (=> d!695328 m!2778793))

(assert (=> b!2371044 m!2778787))

(assert (=> b!2371036 m!2778787))

(assert (=> b!2371036 m!2778787))

(declare-fun m!2778795 () Bool)

(assert (=> b!2371036 m!2778795))

(assert (=> b!2371036 m!2778789))

(assert (=> b!2371036 m!2778795))

(assert (=> b!2371036 m!2778789))

(declare-fun m!2778797 () Bool)

(assert (=> b!2371036 m!2778797))

(assert (=> bm!144142 m!2778779))

(declare-fun m!2778799 () Bool)

(assert (=> b!2371040 m!2778799))

(assert (=> b!2371035 m!2778789))

(assert (=> b!2371035 m!2778789))

(assert (=> b!2371035 m!2778791))

(assert (=> b!2370749 d!695328))

(declare-fun d!695330 () Bool)

(assert (=> d!695330 (= (matchR!3063 r!13927 s!9460) (matchRSpec!795 r!13927 s!9460))))

(declare-fun lt!866116 () Unit!40927)

(declare-fun choose!13794 (Regex!6946 List!28130) Unit!40927)

(assert (=> d!695330 (= lt!866116 (choose!13794 r!13927 s!9460))))

(assert (=> d!695330 (validRegex!2673 r!13927)))

(assert (=> d!695330 (= (mainMatchTheorem!795 r!13927 s!9460) lt!866116)))

(declare-fun bs!461240 () Bool)

(assert (= bs!461240 d!695330))

(assert (=> bs!461240 m!2778627))

(assert (=> bs!461240 m!2778625))

(declare-fun m!2778817 () Bool)

(assert (=> bs!461240 m!2778817))

(assert (=> bs!461240 m!2778793))

(assert (=> b!2370749 d!695330))

(declare-fun b!2371059 () Bool)

(declare-fun e!1513322 () Bool)

(assert (=> b!2371059 (= e!1513322 (= (head!5133 s!9460) (c!376808 lt!866052)))))

(declare-fun b!2371060 () Bool)

(declare-fun res!1006464 () Bool)

(declare-fun e!1513321 () Bool)

(assert (=> b!2371060 (=> res!1006464 e!1513321)))

(assert (=> b!2371060 (= res!1006464 (not (is-ElementMatch!6946 lt!866052)))))

(declare-fun e!1513320 () Bool)

(assert (=> b!2371060 (= e!1513320 e!1513321)))

(declare-fun b!2371061 () Bool)

(declare-fun e!1513319 () Bool)

(declare-fun e!1513325 () Bool)

(assert (=> b!2371061 (= e!1513319 e!1513325)))

(declare-fun res!1006461 () Bool)

(assert (=> b!2371061 (=> res!1006461 e!1513325)))

(declare-fun call!144149 () Bool)

(assert (=> b!2371061 (= res!1006461 call!144149)))

(declare-fun b!2371062 () Bool)

(declare-fun res!1006463 () Bool)

(assert (=> b!2371062 (=> (not res!1006463) (not e!1513322))))

(assert (=> b!2371062 (= res!1006463 (isEmpty!15964 (tail!3403 s!9460)))))

(declare-fun b!2371063 () Bool)

(declare-fun res!1006462 () Bool)

(assert (=> b!2371063 (=> res!1006462 e!1513325)))

(assert (=> b!2371063 (= res!1006462 (not (isEmpty!15964 (tail!3403 s!9460))))))

(declare-fun d!695334 () Bool)

(declare-fun e!1513323 () Bool)

(assert (=> d!695334 e!1513323))

(declare-fun c!376871 () Bool)

(assert (=> d!695334 (= c!376871 (is-EmptyExpr!6946 lt!866052))))

(declare-fun lt!866117 () Bool)

(declare-fun e!1513324 () Bool)

(assert (=> d!695334 (= lt!866117 e!1513324)))

(declare-fun c!376872 () Bool)

(assert (=> d!695334 (= c!376872 (isEmpty!15964 s!9460))))

(assert (=> d!695334 (validRegex!2673 lt!866052)))

(assert (=> d!695334 (= (matchR!3063 lt!866052 s!9460) lt!866117)))

(declare-fun b!2371064 () Bool)

(assert (=> b!2371064 (= e!1513324 (matchR!3063 (derivativeStep!1660 lt!866052 (head!5133 s!9460)) (tail!3403 s!9460)))))

(declare-fun b!2371065 () Bool)

(assert (=> b!2371065 (= e!1513323 (= lt!866117 call!144149))))

(declare-fun b!2371066 () Bool)

(assert (=> b!2371066 (= e!1513320 (not lt!866117))))

(declare-fun b!2371067 () Bool)

(assert (=> b!2371067 (= e!1513323 e!1513320)))

(declare-fun c!376870 () Bool)

(assert (=> b!2371067 (= c!376870 (is-EmptyLang!6946 lt!866052))))

(declare-fun b!2371068 () Bool)

(assert (=> b!2371068 (= e!1513324 (nullable!2002 lt!866052))))

(declare-fun b!2371069 () Bool)

(declare-fun res!1006457 () Bool)

(assert (=> b!2371069 (=> res!1006457 e!1513321)))

(assert (=> b!2371069 (= res!1006457 e!1513322)))

(declare-fun res!1006458 () Bool)

(assert (=> b!2371069 (=> (not res!1006458) (not e!1513322))))

(assert (=> b!2371069 (= res!1006458 lt!866117)))

(declare-fun b!2371070 () Bool)

(declare-fun res!1006460 () Bool)

(assert (=> b!2371070 (=> (not res!1006460) (not e!1513322))))

(assert (=> b!2371070 (= res!1006460 (not call!144149))))

(declare-fun b!2371071 () Bool)

(assert (=> b!2371071 (= e!1513321 e!1513319)))

(declare-fun res!1006459 () Bool)

(assert (=> b!2371071 (=> (not res!1006459) (not e!1513319))))

(assert (=> b!2371071 (= res!1006459 (not lt!866117))))

(declare-fun bm!144144 () Bool)

(assert (=> bm!144144 (= call!144149 (isEmpty!15964 s!9460))))

(declare-fun b!2371072 () Bool)

(assert (=> b!2371072 (= e!1513325 (not (= (head!5133 s!9460) (c!376808 lt!866052))))))

(assert (= (and d!695334 c!376872) b!2371068))

(assert (= (and d!695334 (not c!376872)) b!2371064))

(assert (= (and d!695334 c!376871) b!2371065))

(assert (= (and d!695334 (not c!376871)) b!2371067))

(assert (= (and b!2371067 c!376870) b!2371066))

(assert (= (and b!2371067 (not c!376870)) b!2371060))

(assert (= (and b!2371060 (not res!1006464)) b!2371069))

(assert (= (and b!2371069 res!1006458) b!2371070))

(assert (= (and b!2371070 res!1006460) b!2371062))

(assert (= (and b!2371062 res!1006463) b!2371059))

(assert (= (and b!2371069 (not res!1006457)) b!2371071))

(assert (= (and b!2371071 res!1006459) b!2371061))

(assert (= (and b!2371061 (not res!1006461)) b!2371063))

(assert (= (and b!2371063 (not res!1006462)) b!2371072))

(assert (= (or b!2371065 b!2371061 b!2371070) bm!144144))

(assert (=> b!2371059 m!2778787))

(assert (=> b!2371062 m!2778789))

(assert (=> b!2371062 m!2778789))

(assert (=> b!2371062 m!2778791))

(assert (=> d!695334 m!2778779))

(declare-fun m!2778819 () Bool)

(assert (=> d!695334 m!2778819))

(assert (=> b!2371072 m!2778787))

(assert (=> b!2371064 m!2778787))

(assert (=> b!2371064 m!2778787))

(declare-fun m!2778821 () Bool)

(assert (=> b!2371064 m!2778821))

(assert (=> b!2371064 m!2778789))

(assert (=> b!2371064 m!2778821))

(assert (=> b!2371064 m!2778789))

(declare-fun m!2778823 () Bool)

(assert (=> b!2371064 m!2778823))

(assert (=> bm!144144 m!2778779))

(declare-fun m!2778825 () Bool)

(assert (=> b!2371068 m!2778825))

(assert (=> b!2371063 m!2778789))

(assert (=> b!2371063 m!2778789))

(assert (=> b!2371063 m!2778791))

(assert (=> b!2370748 d!695334))

(declare-fun d!695336 () Bool)

(declare-fun res!1006469 () Bool)

(declare-fun e!1513330 () Bool)

(assert (=> d!695336 (=> res!1006469 e!1513330)))

(assert (=> d!695336 (= res!1006469 (is-Nil!28033 l!9164))))

(assert (=> d!695336 (= (forall!5580 l!9164 lambda!87760) e!1513330)))

(declare-fun b!2371077 () Bool)

(declare-fun e!1513331 () Bool)

(assert (=> b!2371077 (= e!1513330 e!1513331)))

(declare-fun res!1006470 () Bool)

(assert (=> b!2371077 (=> (not res!1006470) (not e!1513331))))

(declare-fun dynLambda!12071 (Int Regex!6946) Bool)

(assert (=> b!2371077 (= res!1006470 (dynLambda!12071 lambda!87760 (h!33434 l!9164)))))

(declare-fun b!2371078 () Bool)

(assert (=> b!2371078 (= e!1513331 (forall!5580 (t!208108 l!9164) lambda!87760))))

(assert (= (and d!695336 (not res!1006469)) b!2371077))

(assert (= (and b!2371077 res!1006470) b!2371078))

(declare-fun b_lambda!73933 () Bool)

(assert (=> (not b_lambda!73933) (not b!2371077)))

(declare-fun m!2778827 () Bool)

(assert (=> b!2371077 m!2778827))

(declare-fun m!2778829 () Bool)

(assert (=> b!2371078 m!2778829))

(assert (=> start!232658 d!695336))

(declare-fun d!695338 () Bool)

(assert (=> d!695338 (= (isEmpty!15961 lt!866053) (is-Nil!28033 lt!866053))))

(assert (=> b!2370759 d!695338))

(declare-fun d!695340 () Bool)

(assert (=> d!695340 (= (tail!3401 l!9164) (t!208108 l!9164))))

(assert (=> b!2370759 d!695340))

(declare-fun d!695342 () Bool)

(assert (=> d!695342 (= (isEmpty!15961 l!9164) (is-Nil!28033 l!9164))))

(assert (=> b!2370758 d!695342))

(declare-fun bs!461241 () Bool)

(declare-fun d!695344 () Bool)

(assert (= bs!461241 (and d!695344 start!232658)))

(declare-fun lambda!87795 () Int)

(assert (=> bs!461241 (= lambda!87795 lambda!87760)))

(declare-fun bs!461242 () Bool)

(assert (= bs!461242 (and d!695344 d!695322)))

(assert (=> bs!461242 (= lambda!87795 lambda!87787)))

(declare-fun b!2371079 () Bool)

(declare-fun e!1513332 () Bool)

(declare-fun e!1513337 () Bool)

(assert (=> b!2371079 (= e!1513332 e!1513337)))

(declare-fun c!376876 () Bool)

(assert (=> b!2371079 (= c!376876 (isEmpty!15961 lt!866053))))

(declare-fun b!2371080 () Bool)

(declare-fun e!1513335 () Regex!6946)

(assert (=> b!2371080 (= e!1513335 (Concat!11582 (h!33434 lt!866053) (generalisedConcat!47 (t!208108 lt!866053))))))

(declare-fun b!2371081 () Bool)

(declare-fun e!1513333 () Regex!6946)

(assert (=> b!2371081 (= e!1513333 e!1513335)))

(declare-fun c!376873 () Bool)

(assert (=> b!2371081 (= c!376873 (is-Cons!28033 lt!866053))))

(assert (=> d!695344 e!1513332))

(declare-fun res!1006471 () Bool)

(assert (=> d!695344 (=> (not res!1006471) (not e!1513332))))

(declare-fun lt!866118 () Regex!6946)

(assert (=> d!695344 (= res!1006471 (validRegex!2673 lt!866118))))

(assert (=> d!695344 (= lt!866118 e!1513333)))

(declare-fun c!376874 () Bool)

(declare-fun e!1513334 () Bool)

(assert (=> d!695344 (= c!376874 e!1513334)))

(declare-fun res!1006472 () Bool)

(assert (=> d!695344 (=> (not res!1006472) (not e!1513334))))

(assert (=> d!695344 (= res!1006472 (is-Cons!28033 lt!866053))))

(assert (=> d!695344 (forall!5580 lt!866053 lambda!87795)))

(assert (=> d!695344 (= (generalisedConcat!47 lt!866053) lt!866118)))

(declare-fun b!2371082 () Bool)

(declare-fun e!1513336 () Bool)

(assert (=> b!2371082 (= e!1513337 e!1513336)))

(declare-fun c!376875 () Bool)

(assert (=> b!2371082 (= c!376875 (isEmpty!15961 (tail!3401 lt!866053)))))

(declare-fun b!2371083 () Bool)

(assert (=> b!2371083 (= e!1513337 (isEmptyExpr!25 lt!866118))))

(declare-fun b!2371084 () Bool)

(assert (=> b!2371084 (= e!1513333 (h!33434 lt!866053))))

(declare-fun b!2371085 () Bool)

(assert (=> b!2371085 (= e!1513336 (isConcat!25 lt!866118))))

(declare-fun b!2371086 () Bool)

(assert (=> b!2371086 (= e!1513334 (isEmpty!15961 (t!208108 lt!866053)))))

(declare-fun b!2371087 () Bool)

(assert (=> b!2371087 (= e!1513335 EmptyExpr!6946)))

(declare-fun b!2371088 () Bool)

(assert (=> b!2371088 (= e!1513336 (= lt!866118 (head!5131 lt!866053)))))

(assert (= (and d!695344 res!1006472) b!2371086))

(assert (= (and d!695344 c!376874) b!2371084))

(assert (= (and d!695344 (not c!376874)) b!2371081))

(assert (= (and b!2371081 c!376873) b!2371080))

(assert (= (and b!2371081 (not c!376873)) b!2371087))

(assert (= (and d!695344 res!1006471) b!2371079))

(assert (= (and b!2371079 c!376876) b!2371083))

(assert (= (and b!2371079 (not c!376876)) b!2371082))

(assert (= (and b!2371082 c!376875) b!2371088))

(assert (= (and b!2371082 (not c!376875)) b!2371085))

(declare-fun m!2778831 () Bool)

(assert (=> b!2371080 m!2778831))

(declare-fun m!2778833 () Bool)

(assert (=> d!695344 m!2778833))

(declare-fun m!2778835 () Bool)

(assert (=> d!695344 m!2778835))

(declare-fun m!2778837 () Bool)

(assert (=> b!2371083 m!2778837))

(assert (=> b!2371079 m!2778639))

(declare-fun m!2778839 () Bool)

(assert (=> b!2371088 m!2778839))

(declare-fun m!2778841 () Bool)

(assert (=> b!2371085 m!2778841))

(declare-fun m!2778843 () Bool)

(assert (=> b!2371082 m!2778843))

(assert (=> b!2371082 m!2778843))

(declare-fun m!2778845 () Bool)

(assert (=> b!2371082 m!2778845))

(declare-fun m!2778847 () Bool)

(assert (=> b!2371086 m!2778847))

(assert (=> b!2370753 d!695344))

(declare-fun b!2371089 () Bool)

(declare-fun e!1513341 () Bool)

(assert (=> b!2371089 (= e!1513341 (= (head!5133 s!9460) (c!376808 lt!866048)))))

(declare-fun b!2371090 () Bool)

(declare-fun res!1006480 () Bool)

(declare-fun e!1513340 () Bool)

(assert (=> b!2371090 (=> res!1006480 e!1513340)))

(assert (=> b!2371090 (= res!1006480 (not (is-ElementMatch!6946 lt!866048)))))

(declare-fun e!1513339 () Bool)

(assert (=> b!2371090 (= e!1513339 e!1513340)))

(declare-fun b!2371091 () Bool)

(declare-fun e!1513338 () Bool)

(declare-fun e!1513344 () Bool)

(assert (=> b!2371091 (= e!1513338 e!1513344)))

(declare-fun res!1006477 () Bool)

(assert (=> b!2371091 (=> res!1006477 e!1513344)))

(declare-fun call!144150 () Bool)

(assert (=> b!2371091 (= res!1006477 call!144150)))

(declare-fun b!2371092 () Bool)

(declare-fun res!1006479 () Bool)

(assert (=> b!2371092 (=> (not res!1006479) (not e!1513341))))

(assert (=> b!2371092 (= res!1006479 (isEmpty!15964 (tail!3403 s!9460)))))

(declare-fun b!2371093 () Bool)

(declare-fun res!1006478 () Bool)

(assert (=> b!2371093 (=> res!1006478 e!1513344)))

(assert (=> b!2371093 (= res!1006478 (not (isEmpty!15964 (tail!3403 s!9460))))))

(declare-fun d!695346 () Bool)

(declare-fun e!1513342 () Bool)

(assert (=> d!695346 e!1513342))

(declare-fun c!376878 () Bool)

(assert (=> d!695346 (= c!376878 (is-EmptyExpr!6946 lt!866048))))

(declare-fun lt!866119 () Bool)

(declare-fun e!1513343 () Bool)

(assert (=> d!695346 (= lt!866119 e!1513343)))

(declare-fun c!376879 () Bool)

(assert (=> d!695346 (= c!376879 (isEmpty!15964 s!9460))))

(assert (=> d!695346 (validRegex!2673 lt!866048)))

(assert (=> d!695346 (= (matchR!3063 lt!866048 s!9460) lt!866119)))

(declare-fun b!2371094 () Bool)

(assert (=> b!2371094 (= e!1513343 (matchR!3063 (derivativeStep!1660 lt!866048 (head!5133 s!9460)) (tail!3403 s!9460)))))

(declare-fun b!2371095 () Bool)

(assert (=> b!2371095 (= e!1513342 (= lt!866119 call!144150))))

(declare-fun b!2371096 () Bool)

(assert (=> b!2371096 (= e!1513339 (not lt!866119))))

(declare-fun b!2371097 () Bool)

(assert (=> b!2371097 (= e!1513342 e!1513339)))

(declare-fun c!376877 () Bool)

(assert (=> b!2371097 (= c!376877 (is-EmptyLang!6946 lt!866048))))

(declare-fun b!2371098 () Bool)

(assert (=> b!2371098 (= e!1513343 (nullable!2002 lt!866048))))

(declare-fun b!2371099 () Bool)

(declare-fun res!1006473 () Bool)

(assert (=> b!2371099 (=> res!1006473 e!1513340)))

(assert (=> b!2371099 (= res!1006473 e!1513341)))

(declare-fun res!1006474 () Bool)

(assert (=> b!2371099 (=> (not res!1006474) (not e!1513341))))

(assert (=> b!2371099 (= res!1006474 lt!866119)))

(declare-fun b!2371100 () Bool)

(declare-fun res!1006476 () Bool)

(assert (=> b!2371100 (=> (not res!1006476) (not e!1513341))))

(assert (=> b!2371100 (= res!1006476 (not call!144150))))

(declare-fun b!2371101 () Bool)

(assert (=> b!2371101 (= e!1513340 e!1513338)))

(declare-fun res!1006475 () Bool)

(assert (=> b!2371101 (=> (not res!1006475) (not e!1513338))))

(assert (=> b!2371101 (= res!1006475 (not lt!866119))))

(declare-fun bm!144145 () Bool)

(assert (=> bm!144145 (= call!144150 (isEmpty!15964 s!9460))))

(declare-fun b!2371102 () Bool)

(assert (=> b!2371102 (= e!1513344 (not (= (head!5133 s!9460) (c!376808 lt!866048))))))

(assert (= (and d!695346 c!376879) b!2371098))

(assert (= (and d!695346 (not c!376879)) b!2371094))

(assert (= (and d!695346 c!376878) b!2371095))

(assert (= (and d!695346 (not c!376878)) b!2371097))

(assert (= (and b!2371097 c!376877) b!2371096))

(assert (= (and b!2371097 (not c!376877)) b!2371090))

(assert (= (and b!2371090 (not res!1006480)) b!2371099))

(assert (= (and b!2371099 res!1006474) b!2371100))

(assert (= (and b!2371100 res!1006476) b!2371092))

(assert (= (and b!2371092 res!1006479) b!2371089))

(assert (= (and b!2371099 (not res!1006473)) b!2371101))

(assert (= (and b!2371101 res!1006475) b!2371091))

(assert (= (and b!2371091 (not res!1006477)) b!2371093))

(assert (= (and b!2371093 (not res!1006478)) b!2371102))

(assert (= (or b!2371095 b!2371091 b!2371100) bm!144145))

(assert (=> b!2371089 m!2778787))

(assert (=> b!2371092 m!2778789))

(assert (=> b!2371092 m!2778789))

(assert (=> b!2371092 m!2778791))

(assert (=> d!695346 m!2778779))

(declare-fun m!2778849 () Bool)

(assert (=> d!695346 m!2778849))

(assert (=> b!2371102 m!2778787))

(assert (=> b!2371094 m!2778787))

(assert (=> b!2371094 m!2778787))

(declare-fun m!2778851 () Bool)

(assert (=> b!2371094 m!2778851))

(assert (=> b!2371094 m!2778789))

(assert (=> b!2371094 m!2778851))

(assert (=> b!2371094 m!2778789))

(declare-fun m!2778853 () Bool)

(assert (=> b!2371094 m!2778853))

(assert (=> bm!144145 m!2778779))

(declare-fun m!2778855 () Bool)

(assert (=> b!2371098 m!2778855))

(assert (=> b!2371093 m!2778789))

(assert (=> b!2371093 m!2778789))

(assert (=> b!2371093 m!2778791))

(assert (=> b!2370752 d!695346))

(declare-fun d!695348 () Bool)

(assert (=> d!695348 (= (head!5131 l!9164) (h!33434 l!9164))))

(assert (=> b!2370752 d!695348))

(declare-fun d!695350 () Bool)

(assert (=> d!695350 (isDefined!4317 (findConcatSeparation!597 lt!866048 EmptyExpr!6946 Nil!28032 s!9460 s!9460))))

(declare-fun lt!866122 () Unit!40927)

(declare-fun choose!13795 (Regex!6946 Regex!6946 List!28130) Unit!40927)

(assert (=> d!695350 (= lt!866122 (choose!13795 lt!866048 EmptyExpr!6946 s!9460))))

(assert (=> d!695350 (validRegex!2673 lt!866048)))

(assert (=> d!695350 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!1 lt!866048 EmptyExpr!6946 s!9460) lt!866122)))

(declare-fun bs!461243 () Bool)

(assert (= bs!461243 d!695350))

(assert (=> bs!461243 m!2778617))

(assert (=> bs!461243 m!2778617))

(assert (=> bs!461243 m!2778619))

(declare-fun m!2778857 () Bool)

(assert (=> bs!461243 m!2778857))

(assert (=> bs!461243 m!2778849))

(assert (=> b!2370761 d!695350))

(declare-fun d!695352 () Bool)

(assert (=> d!695352 (matchR!3063 (Concat!11582 lt!866048 EmptyExpr!6946) (++!6906 s!9460 Nil!28032))))

(declare-fun lt!866125 () Unit!40927)

(declare-fun choose!13796 (Regex!6946 Regex!6946 List!28130 List!28130) Unit!40927)

(assert (=> d!695352 (= lt!866125 (choose!13796 lt!866048 EmptyExpr!6946 s!9460 Nil!28032))))

(declare-fun e!1513347 () Bool)

(assert (=> d!695352 e!1513347))

(declare-fun res!1006483 () Bool)

(assert (=> d!695352 (=> (not res!1006483) (not e!1513347))))

(assert (=> d!695352 (= res!1006483 (validRegex!2673 lt!866048))))

(assert (=> d!695352 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!19 lt!866048 EmptyExpr!6946 s!9460 Nil!28032) lt!866125)))

(declare-fun b!2371105 () Bool)

(assert (=> b!2371105 (= e!1513347 (validRegex!2673 EmptyExpr!6946))))

(assert (= (and d!695352 res!1006483) b!2371105))

(assert (=> d!695352 m!2778611))

(assert (=> d!695352 m!2778611))

(declare-fun m!2778859 () Bool)

(assert (=> d!695352 m!2778859))

(declare-fun m!2778861 () Bool)

(assert (=> d!695352 m!2778861))

(assert (=> d!695352 m!2778849))

(declare-fun m!2778863 () Bool)

(assert (=> b!2371105 m!2778863))

(assert (=> b!2370761 d!695352))

(declare-fun d!695354 () Bool)

(assert (=> d!695354 (= (isDefined!4317 (findConcatSeparation!597 lt!866048 EmptyExpr!6946 Nil!28032 s!9460 s!9460)) (not (isEmpty!15963 (findConcatSeparation!597 lt!866048 EmptyExpr!6946 Nil!28032 s!9460 s!9460))))))

(declare-fun bs!461244 () Bool)

(assert (= bs!461244 d!695354))

(assert (=> bs!461244 m!2778617))

(declare-fun m!2778865 () Bool)

(assert (=> bs!461244 m!2778865))

(assert (=> b!2370761 d!695354))

(declare-fun d!695356 () Bool)

(declare-fun e!1513353 () Bool)

(assert (=> d!695356 e!1513353))

(declare-fun res!1006489 () Bool)

(assert (=> d!695356 (=> (not res!1006489) (not e!1513353))))

(declare-fun lt!866128 () List!28130)

(declare-fun content!3809 (List!28130) (Set C!14050))

(assert (=> d!695356 (= res!1006489 (= (content!3809 lt!866128) (set.union (content!3809 s!9460) (content!3809 Nil!28032))))))

(declare-fun e!1513352 () List!28130)

(assert (=> d!695356 (= lt!866128 e!1513352)))

(declare-fun c!376882 () Bool)

(assert (=> d!695356 (= c!376882 (is-Nil!28032 s!9460))))

(assert (=> d!695356 (= (++!6906 s!9460 Nil!28032) lt!866128)))

(declare-fun b!2371115 () Bool)

(assert (=> b!2371115 (= e!1513352 (Cons!28032 (h!33433 s!9460) (++!6906 (t!208107 s!9460) Nil!28032)))))

(declare-fun b!2371117 () Bool)

(assert (=> b!2371117 (= e!1513353 (or (not (= Nil!28032 Nil!28032)) (= lt!866128 s!9460)))))

(declare-fun b!2371116 () Bool)

(declare-fun res!1006488 () Bool)

(assert (=> b!2371116 (=> (not res!1006488) (not e!1513353))))

(declare-fun size!22147 (List!28130) Int)

(assert (=> b!2371116 (= res!1006488 (= (size!22147 lt!866128) (+ (size!22147 s!9460) (size!22147 Nil!28032))))))

(declare-fun b!2371114 () Bool)

(assert (=> b!2371114 (= e!1513352 Nil!28032)))

(assert (= (and d!695356 c!376882) b!2371114))

(assert (= (and d!695356 (not c!376882)) b!2371115))

(assert (= (and d!695356 res!1006489) b!2371116))

(assert (= (and b!2371116 res!1006488) b!2371117))

(declare-fun m!2778867 () Bool)

(assert (=> d!695356 m!2778867))

(declare-fun m!2778869 () Bool)

(assert (=> d!695356 m!2778869))

(declare-fun m!2778871 () Bool)

(assert (=> d!695356 m!2778871))

(declare-fun m!2778873 () Bool)

(assert (=> b!2371115 m!2778873))

(declare-fun m!2778875 () Bool)

(assert (=> b!2371116 m!2778875))

(declare-fun m!2778877 () Bool)

(assert (=> b!2371116 m!2778877))

(declare-fun m!2778879 () Bool)

(assert (=> b!2371116 m!2778879))

(assert (=> b!2370761 d!695356))

(declare-fun b!2371120 () Bool)

(declare-fun e!1513357 () Bool)

(assert (=> b!2371120 (= e!1513357 (= (head!5133 (++!6906 s!9460 Nil!28032)) (c!376808 lt!866052)))))

(declare-fun b!2371121 () Bool)

(declare-fun res!1006497 () Bool)

(declare-fun e!1513356 () Bool)

(assert (=> b!2371121 (=> res!1006497 e!1513356)))

(assert (=> b!2371121 (= res!1006497 (not (is-ElementMatch!6946 lt!866052)))))

(declare-fun e!1513355 () Bool)

(assert (=> b!2371121 (= e!1513355 e!1513356)))

(declare-fun b!2371122 () Bool)

(declare-fun e!1513354 () Bool)

(declare-fun e!1513360 () Bool)

(assert (=> b!2371122 (= e!1513354 e!1513360)))

(declare-fun res!1006494 () Bool)

(assert (=> b!2371122 (=> res!1006494 e!1513360)))

(declare-fun call!144151 () Bool)

(assert (=> b!2371122 (= res!1006494 call!144151)))

(declare-fun b!2371123 () Bool)

(declare-fun res!1006496 () Bool)

(assert (=> b!2371123 (=> (not res!1006496) (not e!1513357))))

(assert (=> b!2371123 (= res!1006496 (isEmpty!15964 (tail!3403 (++!6906 s!9460 Nil!28032))))))

(declare-fun b!2371124 () Bool)

(declare-fun res!1006495 () Bool)

(assert (=> b!2371124 (=> res!1006495 e!1513360)))

(assert (=> b!2371124 (= res!1006495 (not (isEmpty!15964 (tail!3403 (++!6906 s!9460 Nil!28032)))))))

(declare-fun d!695358 () Bool)

(declare-fun e!1513358 () Bool)

(assert (=> d!695358 e!1513358))

(declare-fun c!376884 () Bool)

(assert (=> d!695358 (= c!376884 (is-EmptyExpr!6946 lt!866052))))

(declare-fun lt!866131 () Bool)

(declare-fun e!1513359 () Bool)

(assert (=> d!695358 (= lt!866131 e!1513359)))

(declare-fun c!376885 () Bool)

(assert (=> d!695358 (= c!376885 (isEmpty!15964 (++!6906 s!9460 Nil!28032)))))

(assert (=> d!695358 (validRegex!2673 lt!866052)))

(assert (=> d!695358 (= (matchR!3063 lt!866052 (++!6906 s!9460 Nil!28032)) lt!866131)))

(declare-fun b!2371125 () Bool)

(assert (=> b!2371125 (= e!1513359 (matchR!3063 (derivativeStep!1660 lt!866052 (head!5133 (++!6906 s!9460 Nil!28032))) (tail!3403 (++!6906 s!9460 Nil!28032))))))

(declare-fun b!2371126 () Bool)

(assert (=> b!2371126 (= e!1513358 (= lt!866131 call!144151))))

(declare-fun b!2371127 () Bool)

(assert (=> b!2371127 (= e!1513355 (not lt!866131))))

(declare-fun b!2371128 () Bool)

(assert (=> b!2371128 (= e!1513358 e!1513355)))

(declare-fun c!376883 () Bool)

(assert (=> b!2371128 (= c!376883 (is-EmptyLang!6946 lt!866052))))

(declare-fun b!2371129 () Bool)

(assert (=> b!2371129 (= e!1513359 (nullable!2002 lt!866052))))

(declare-fun b!2371130 () Bool)

(declare-fun res!1006490 () Bool)

(assert (=> b!2371130 (=> res!1006490 e!1513356)))

(assert (=> b!2371130 (= res!1006490 e!1513357)))

(declare-fun res!1006491 () Bool)

(assert (=> b!2371130 (=> (not res!1006491) (not e!1513357))))

(assert (=> b!2371130 (= res!1006491 lt!866131)))

(declare-fun b!2371131 () Bool)

(declare-fun res!1006493 () Bool)

(assert (=> b!2371131 (=> (not res!1006493) (not e!1513357))))

(assert (=> b!2371131 (= res!1006493 (not call!144151))))

(declare-fun b!2371132 () Bool)

(assert (=> b!2371132 (= e!1513356 e!1513354)))

(declare-fun res!1006492 () Bool)

(assert (=> b!2371132 (=> (not res!1006492) (not e!1513354))))

(assert (=> b!2371132 (= res!1006492 (not lt!866131))))

(declare-fun bm!144146 () Bool)

(assert (=> bm!144146 (= call!144151 (isEmpty!15964 (++!6906 s!9460 Nil!28032)))))

(declare-fun b!2371133 () Bool)

(assert (=> b!2371133 (= e!1513360 (not (= (head!5133 (++!6906 s!9460 Nil!28032)) (c!376808 lt!866052))))))

(assert (= (and d!695358 c!376885) b!2371129))

(assert (= (and d!695358 (not c!376885)) b!2371125))

(assert (= (and d!695358 c!376884) b!2371126))

(assert (= (and d!695358 (not c!376884)) b!2371128))

(assert (= (and b!2371128 c!376883) b!2371127))

(assert (= (and b!2371128 (not c!376883)) b!2371121))

(assert (= (and b!2371121 (not res!1006497)) b!2371130))

(assert (= (and b!2371130 res!1006491) b!2371131))

(assert (= (and b!2371131 res!1006493) b!2371123))

(assert (= (and b!2371123 res!1006496) b!2371120))

(assert (= (and b!2371130 (not res!1006490)) b!2371132))

(assert (= (and b!2371132 res!1006492) b!2371122))

(assert (= (and b!2371122 (not res!1006494)) b!2371124))

(assert (= (and b!2371124 (not res!1006495)) b!2371133))

(assert (= (or b!2371126 b!2371122 b!2371131) bm!144146))

(assert (=> b!2371120 m!2778611))

(declare-fun m!2778881 () Bool)

(assert (=> b!2371120 m!2778881))

(assert (=> b!2371123 m!2778611))

(declare-fun m!2778883 () Bool)

(assert (=> b!2371123 m!2778883))

(assert (=> b!2371123 m!2778883))

(declare-fun m!2778885 () Bool)

(assert (=> b!2371123 m!2778885))

(assert (=> d!695358 m!2778611))

(declare-fun m!2778887 () Bool)

(assert (=> d!695358 m!2778887))

(assert (=> d!695358 m!2778819))

(assert (=> b!2371133 m!2778611))

(assert (=> b!2371133 m!2778881))

(assert (=> b!2371125 m!2778611))

(assert (=> b!2371125 m!2778881))

(assert (=> b!2371125 m!2778881))

(declare-fun m!2778889 () Bool)

(assert (=> b!2371125 m!2778889))

(assert (=> b!2371125 m!2778611))

(assert (=> b!2371125 m!2778883))

(assert (=> b!2371125 m!2778889))

(assert (=> b!2371125 m!2778883))

(declare-fun m!2778891 () Bool)

(assert (=> b!2371125 m!2778891))

(assert (=> bm!144146 m!2778611))

(assert (=> bm!144146 m!2778887))

(assert (=> b!2371129 m!2778825))

(assert (=> b!2371124 m!2778611))

(assert (=> b!2371124 m!2778883))

(assert (=> b!2371124 m!2778883))

(assert (=> b!2371124 m!2778885))

(assert (=> b!2370761 d!695358))

(declare-fun b!2371142 () Bool)

(declare-fun e!1513367 () Option!5489)

(assert (=> b!2371142 (= e!1513367 None!5488)))

(declare-fun b!2371143 () Bool)

(declare-fun res!1006500 () Bool)

(declare-fun e!1513370 () Bool)

(assert (=> b!2371143 (=> (not res!1006500) (not e!1513370))))

(declare-fun lt!866136 () Option!5489)

(assert (=> b!2371143 (= res!1006500 (matchR!3063 EmptyExpr!6946 (_2!16419 (get!8523 lt!866136))))))

(declare-fun b!2371144 () Bool)

(declare-fun e!1513368 () Option!5489)

(assert (=> b!2371144 (= e!1513368 e!1513367)))

(declare-fun c!376891 () Bool)

(assert (=> b!2371144 (= c!376891 (is-Nil!28032 s!9460))))

(declare-fun b!2371145 () Bool)

(declare-fun res!1006504 () Bool)

(assert (=> b!2371145 (=> (not res!1006504) (not e!1513370))))

(assert (=> b!2371145 (= res!1006504 (matchR!3063 lt!866048 (_1!16419 (get!8523 lt!866136))))))

(declare-fun b!2371146 () Bool)

(declare-fun lt!866138 () Unit!40927)

(declare-fun lt!866137 () Unit!40927)

(assert (=> b!2371146 (= lt!866138 lt!866137)))

(assert (=> b!2371146 (= (++!6906 (++!6906 Nil!28032 (Cons!28032 (h!33433 s!9460) Nil!28032)) (t!208107 s!9460)) s!9460)))

(assert (=> b!2371146 (= lt!866137 (lemmaMoveElementToOtherListKeepsConcatEq!550 Nil!28032 (h!33433 s!9460) (t!208107 s!9460) s!9460))))

(assert (=> b!2371146 (= e!1513367 (findConcatSeparation!597 lt!866048 EmptyExpr!6946 (++!6906 Nil!28032 (Cons!28032 (h!33433 s!9460) Nil!28032)) (t!208107 s!9460) s!9460))))

(declare-fun b!2371147 () Bool)

(declare-fun e!1513369 () Bool)

(assert (=> b!2371147 (= e!1513369 (matchR!3063 EmptyExpr!6946 s!9460))))

(declare-fun b!2371149 () Bool)

(declare-fun e!1513371 () Bool)

(assert (=> b!2371149 (= e!1513371 (not (isDefined!4317 lt!866136)))))

(declare-fun b!2371150 () Bool)

(assert (=> b!2371150 (= e!1513368 (Some!5488 (tuple2!27757 Nil!28032 s!9460)))))

(declare-fun d!695360 () Bool)

(assert (=> d!695360 e!1513371))

(declare-fun res!1006503 () Bool)

(assert (=> d!695360 (=> res!1006503 e!1513371)))

(assert (=> d!695360 (= res!1006503 e!1513370)))

(declare-fun res!1006501 () Bool)

(assert (=> d!695360 (=> (not res!1006501) (not e!1513370))))

(assert (=> d!695360 (= res!1006501 (isDefined!4317 lt!866136))))

(assert (=> d!695360 (= lt!866136 e!1513368)))

(declare-fun c!376890 () Bool)

(assert (=> d!695360 (= c!376890 e!1513369)))

(declare-fun res!1006502 () Bool)

(assert (=> d!695360 (=> (not res!1006502) (not e!1513369))))

(assert (=> d!695360 (= res!1006502 (matchR!3063 lt!866048 Nil!28032))))

(assert (=> d!695360 (validRegex!2673 lt!866048)))

(assert (=> d!695360 (= (findConcatSeparation!597 lt!866048 EmptyExpr!6946 Nil!28032 s!9460 s!9460) lt!866136)))

(declare-fun b!2371148 () Bool)

(assert (=> b!2371148 (= e!1513370 (= (++!6906 (_1!16419 (get!8523 lt!866136)) (_2!16419 (get!8523 lt!866136))) s!9460))))

(assert (= (and d!695360 res!1006502) b!2371147))

(assert (= (and d!695360 c!376890) b!2371150))

(assert (= (and d!695360 (not c!376890)) b!2371144))

(assert (= (and b!2371144 c!376891) b!2371142))

(assert (= (and b!2371144 (not c!376891)) b!2371146))

(assert (= (and d!695360 res!1006501) b!2371145))

(assert (= (and b!2371145 res!1006504) b!2371143))

(assert (= (and b!2371143 res!1006500) b!2371148))

(assert (= (and d!695360 (not res!1006503)) b!2371149))

(declare-fun m!2778893 () Bool)

(assert (=> b!2371147 m!2778893))

(declare-fun m!2778895 () Bool)

(assert (=> d!695360 m!2778895))

(declare-fun m!2778897 () Bool)

(assert (=> d!695360 m!2778897))

(assert (=> d!695360 m!2778849))

(declare-fun m!2778899 () Bool)

(assert (=> b!2371145 m!2778899))

(declare-fun m!2778901 () Bool)

(assert (=> b!2371145 m!2778901))

(assert (=> b!2371146 m!2778737))

(assert (=> b!2371146 m!2778737))

(assert (=> b!2371146 m!2778739))

(assert (=> b!2371146 m!2778741))

(assert (=> b!2371146 m!2778737))

(declare-fun m!2778903 () Bool)

(assert (=> b!2371146 m!2778903))

(assert (=> b!2371143 m!2778899))

(declare-fun m!2778905 () Bool)

(assert (=> b!2371143 m!2778905))

(assert (=> b!2371149 m!2778895))

(assert (=> b!2371148 m!2778899))

(declare-fun m!2778907 () Bool)

(assert (=> b!2371148 m!2778907))

(assert (=> b!2370761 d!695360))

(declare-fun b!2371170 () Bool)

(declare-fun e!1513378 () Bool)

(declare-fun tp!757877 () Bool)

(declare-fun tp!757878 () Bool)

(assert (=> b!2371170 (= e!1513378 (and tp!757877 tp!757878))))

(declare-fun b!2371169 () Bool)

(assert (=> b!2371169 (= e!1513378 tp_is_empty!11305)))

(declare-fun b!2371171 () Bool)

(declare-fun tp!757874 () Bool)

(assert (=> b!2371171 (= e!1513378 tp!757874)))

(assert (=> b!2370754 (= tp!757838 e!1513378)))

(declare-fun b!2371172 () Bool)

(declare-fun tp!757876 () Bool)

(declare-fun tp!757875 () Bool)

(assert (=> b!2371172 (= e!1513378 (and tp!757876 tp!757875))))

(assert (= (and b!2370754 (is-ElementMatch!6946 (regOne!14404 r!13927))) b!2371169))

(assert (= (and b!2370754 (is-Concat!11582 (regOne!14404 r!13927))) b!2371170))

(assert (= (and b!2370754 (is-Star!6946 (regOne!14404 r!13927))) b!2371171))

(assert (= (and b!2370754 (is-Union!6946 (regOne!14404 r!13927))) b!2371172))

(declare-fun b!2371174 () Bool)

(declare-fun e!1513379 () Bool)

(declare-fun tp!757882 () Bool)

(declare-fun tp!757883 () Bool)

(assert (=> b!2371174 (= e!1513379 (and tp!757882 tp!757883))))

(declare-fun b!2371173 () Bool)

(assert (=> b!2371173 (= e!1513379 tp_is_empty!11305)))

(declare-fun b!2371175 () Bool)

(declare-fun tp!757879 () Bool)

(assert (=> b!2371175 (= e!1513379 tp!757879)))

(assert (=> b!2370754 (= tp!757835 e!1513379)))

(declare-fun b!2371176 () Bool)

(declare-fun tp!757881 () Bool)

(declare-fun tp!757880 () Bool)

(assert (=> b!2371176 (= e!1513379 (and tp!757881 tp!757880))))

(assert (= (and b!2370754 (is-ElementMatch!6946 (regTwo!14404 r!13927))) b!2371173))

(assert (= (and b!2370754 (is-Concat!11582 (regTwo!14404 r!13927))) b!2371174))

(assert (= (and b!2370754 (is-Star!6946 (regTwo!14404 r!13927))) b!2371175))

(assert (= (and b!2370754 (is-Union!6946 (regTwo!14404 r!13927))) b!2371176))

(declare-fun b!2371178 () Bool)

(declare-fun e!1513380 () Bool)

(declare-fun tp!757887 () Bool)

(declare-fun tp!757888 () Bool)

(assert (=> b!2371178 (= e!1513380 (and tp!757887 tp!757888))))

(declare-fun b!2371177 () Bool)

(assert (=> b!2371177 (= e!1513380 tp_is_empty!11305)))

(declare-fun b!2371179 () Bool)

(declare-fun tp!757884 () Bool)

(assert (=> b!2371179 (= e!1513380 tp!757884)))

(assert (=> b!2370747 (= tp!757834 e!1513380)))

(declare-fun b!2371180 () Bool)

(declare-fun tp!757886 () Bool)

(declare-fun tp!757885 () Bool)

(assert (=> b!2371180 (= e!1513380 (and tp!757886 tp!757885))))

(assert (= (and b!2370747 (is-ElementMatch!6946 (h!33434 l!9164))) b!2371177))

(assert (= (and b!2370747 (is-Concat!11582 (h!33434 l!9164))) b!2371178))

(assert (= (and b!2370747 (is-Star!6946 (h!33434 l!9164))) b!2371179))

(assert (= (and b!2370747 (is-Union!6946 (h!33434 l!9164))) b!2371180))

(declare-fun b!2371185 () Bool)

(declare-fun e!1513383 () Bool)

(declare-fun tp!757893 () Bool)

(declare-fun tp!757894 () Bool)

(assert (=> b!2371185 (= e!1513383 (and tp!757893 tp!757894))))

(assert (=> b!2370747 (= tp!757839 e!1513383)))

(assert (= (and b!2370747 (is-Cons!28033 (t!208108 l!9164))) b!2371185))

(declare-fun b!2371187 () Bool)

(declare-fun e!1513384 () Bool)

(declare-fun tp!757898 () Bool)

(declare-fun tp!757899 () Bool)

(assert (=> b!2371187 (= e!1513384 (and tp!757898 tp!757899))))

(declare-fun b!2371186 () Bool)

(assert (=> b!2371186 (= e!1513384 tp_is_empty!11305)))

(declare-fun b!2371188 () Bool)

(declare-fun tp!757895 () Bool)

(assert (=> b!2371188 (= e!1513384 tp!757895)))

(assert (=> b!2370757 (= tp!757836 e!1513384)))

(declare-fun b!2371189 () Bool)

(declare-fun tp!757897 () Bool)

(declare-fun tp!757896 () Bool)

(assert (=> b!2371189 (= e!1513384 (and tp!757897 tp!757896))))

(assert (= (and b!2370757 (is-ElementMatch!6946 (regOne!14405 r!13927))) b!2371186))

(assert (= (and b!2370757 (is-Concat!11582 (regOne!14405 r!13927))) b!2371187))

(assert (= (and b!2370757 (is-Star!6946 (regOne!14405 r!13927))) b!2371188))

(assert (= (and b!2370757 (is-Union!6946 (regOne!14405 r!13927))) b!2371189))

(declare-fun b!2371191 () Bool)

(declare-fun e!1513385 () Bool)

(declare-fun tp!757903 () Bool)

(declare-fun tp!757904 () Bool)

(assert (=> b!2371191 (= e!1513385 (and tp!757903 tp!757904))))

(declare-fun b!2371190 () Bool)

(assert (=> b!2371190 (= e!1513385 tp_is_empty!11305)))

(declare-fun b!2371192 () Bool)

(declare-fun tp!757900 () Bool)

(assert (=> b!2371192 (= e!1513385 tp!757900)))

(assert (=> b!2370757 (= tp!757833 e!1513385)))

(declare-fun b!2371193 () Bool)

(declare-fun tp!757902 () Bool)

(declare-fun tp!757901 () Bool)

(assert (=> b!2371193 (= e!1513385 (and tp!757902 tp!757901))))

(assert (= (and b!2370757 (is-ElementMatch!6946 (regTwo!14405 r!13927))) b!2371190))

(assert (= (and b!2370757 (is-Concat!11582 (regTwo!14405 r!13927))) b!2371191))

(assert (= (and b!2370757 (is-Star!6946 (regTwo!14405 r!13927))) b!2371192))

(assert (= (and b!2370757 (is-Union!6946 (regTwo!14405 r!13927))) b!2371193))

(declare-fun b!2371195 () Bool)

(declare-fun e!1513386 () Bool)

(declare-fun tp!757908 () Bool)

(declare-fun tp!757909 () Bool)

(assert (=> b!2371195 (= e!1513386 (and tp!757908 tp!757909))))

(declare-fun b!2371194 () Bool)

(assert (=> b!2371194 (= e!1513386 tp_is_empty!11305)))

(declare-fun b!2371196 () Bool)

(declare-fun tp!757905 () Bool)

(assert (=> b!2371196 (= e!1513386 tp!757905)))

(assert (=> b!2370756 (= tp!757837 e!1513386)))

(declare-fun b!2371197 () Bool)

(declare-fun tp!757907 () Bool)

(declare-fun tp!757906 () Bool)

(assert (=> b!2371197 (= e!1513386 (and tp!757907 tp!757906))))

(assert (= (and b!2370756 (is-ElementMatch!6946 (reg!7275 r!13927))) b!2371194))

(assert (= (and b!2370756 (is-Concat!11582 (reg!7275 r!13927))) b!2371195))

(assert (= (and b!2370756 (is-Star!6946 (reg!7275 r!13927))) b!2371196))

(assert (= (and b!2370756 (is-Union!6946 (reg!7275 r!13927))) b!2371197))

(declare-fun b!2371202 () Bool)

(declare-fun e!1513389 () Bool)

(declare-fun tp!757912 () Bool)

(assert (=> b!2371202 (= e!1513389 (and tp_is_empty!11305 tp!757912))))

(assert (=> b!2370750 (= tp!757832 e!1513389)))

(assert (= (and b!2370750 (is-Cons!28032 (t!208107 s!9460))) b!2371202))

(declare-fun b_lambda!73935 () Bool)

(assert (= b_lambda!73933 (or start!232658 b_lambda!73935)))

(declare-fun bs!461245 () Bool)

(declare-fun d!695362 () Bool)

(assert (= bs!461245 (and d!695362 start!232658)))

(assert (=> bs!461245 (= (dynLambda!12071 lambda!87760 (h!33434 l!9164)) (validRegex!2673 (h!33434 l!9164)))))

(declare-fun m!2778909 () Bool)

(assert (=> bs!461245 m!2778909))

(assert (=> b!2371077 d!695362))

(push 1)

(assert (not b!2371174))

(assert (not b!2371148))

(assert (not b!2371146))

(assert (not b!2371082))

(assert (not b!2371035))

(assert (not d!695356))

(assert (not b!2371036))

(assert (not b!2371143))

(assert (not b!2371078))

(assert (not b!2371083))

(assert (not d!695312))

(assert (not bm!144142))

(assert (not d!695354))

(assert (not bm!144137))

(assert (not b!2371093))

(assert (not b!2370869))

(assert (not b!2371180))

(assert (not b!2371178))

(assert (not b!2371185))

(assert (not b!2371170))

(assert (not b!2371147))

(assert (not b!2370866))

(assert (not b!2370916))

(assert (not b!2371189))

(assert (not b!2371175))

(assert (not b!2370921))

(assert (not b!2371187))

(assert (not d!695322))

(assert (not b!2370864))

(assert (not b!2371105))

(assert (not b!2370968))

(assert (not b!2371098))

(assert (not b!2371197))

(assert (not d!695360))

(assert (not b!2371193))

(assert (not d!695320))

(assert (not b!2371123))

(assert (not d!695352))

(assert (not b!2371062))

(assert (not d!695350))

(assert (not b!2371079))

(assert (not b!2370918))

(assert (not bm!144144))

(assert (not d!695304))

(assert (not d!695308))

(assert (not b!2370919))

(assert (not b!2371040))

(assert (not b!2370867))

(assert (not b!2371059))

(assert (not d!695358))

(assert (not bm!144136))

(assert (not d!695328))

(assert (not b!2371080))

(assert (not d!695306))

(assert (not b!2371129))

(assert (not b!2370913))

(assert (not b!2371179))

(assert (not b!2371094))

(assert (not b!2370915))

(assert (not bs!461245))

(assert (not d!695346))

(assert (not b!2371171))

(assert (not b!2371092))

(assert (not b!2371102))

(assert (not b!2371034))

(assert (not b!2371063))

(assert (not b!2371120))

(assert (not b!2371202))

(assert (not b!2371085))

(assert (not b!2371116))

(assert (not b!2371192))

(assert (not b!2371072))

(assert (not b!2371089))

(assert (not b!2371191))

(assert (not b!2371176))

(assert (not b!2370912))

(assert (not d!695334))

(assert (not d!695302))

(assert (not b_lambda!73935))

(assert (not b!2371196))

(assert (not b!2371088))

(assert (not b!2371195))

(assert tp_is_empty!11305)

(assert (not b!2371133))

(assert (not b!2370868))

(assert (not d!695344))

(assert (not b!2371068))

(assert (not b!2371172))

(assert (not b!2371115))

(assert (not b!2371149))

(assert (not d!695330))

(assert (not bm!144145))

(assert (not b!2371188))

(assert (not b!2371031))

(assert (not bm!144146))

(assert (not b!2371124))

(assert (not b!2370974))

(assert (not b!2371125))

(assert (not b!2371064))

(assert (not b!2371086))

(assert (not b!2371044))

(assert (not b!2370870))

(assert (not b!2371145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

