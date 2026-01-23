; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81100 () Bool)

(assert start!81100)

(declare-fun b!901137 () Bool)

(assert (=> b!901137 true))

(assert (=> b!901137 true))

(assert (=> b!901137 true))

(declare-fun lambda!28178 () Int)

(declare-fun lambda!28177 () Int)

(assert (=> b!901137 (not (= lambda!28178 lambda!28177))))

(assert (=> b!901137 true))

(assert (=> b!901137 true))

(assert (=> b!901137 true))

(declare-fun b!901132 () Bool)

(declare-fun e!589146 () Bool)

(declare-fun e!589149 () Bool)

(assert (=> b!901132 (= e!589146 e!589149)))

(declare-fun res!409751 () Bool)

(assert (=> b!901132 (=> res!409751 e!589149)))

(declare-datatypes ((C!5302 0))(
  ( (C!5303 (val!2899 Int)) )
))
(declare-datatypes ((Regex!2366 0))(
  ( (ElementMatch!2366 (c!145948 C!5302)) (Concat!4199 (regOne!5244 Regex!2366) (regTwo!5244 Regex!2366)) (EmptyExpr!2366) (Star!2366 (reg!2695 Regex!2366)) (EmptyLang!2366) (Union!2366 (regOne!5245 Regex!2366) (regTwo!5245 Regex!2366)) )
))
(declare-fun lt!334597 () Regex!2366)

(declare-fun lt!334595 () Regex!2366)

(assert (=> b!901132 (= res!409751 (not (= lt!334597 lt!334595)))))

(declare-fun lt!334601 () Regex!2366)

(assert (=> b!901132 (= lt!334595 (Star!2366 lt!334601))))

(declare-datatypes ((List!9596 0))(
  ( (Nil!9580) (Cons!9580 (h!14981 C!5302) (t!100642 List!9596)) )
))
(declare-datatypes ((tuple2!10734 0))(
  ( (tuple2!10735 (_1!6193 List!9596) (_2!6193 List!9596)) )
))
(declare-fun lt!334603 () tuple2!10734)

(declare-fun matchR!904 (Regex!2366 List!9596) Bool)

(assert (=> b!901132 (matchR!904 lt!334597 (_2!6193 lt!334603))))

(declare-fun lt!334600 () Regex!2366)

(declare-fun removeUselessConcat!79 (Regex!2366) Regex!2366)

(assert (=> b!901132 (= lt!334597 (removeUselessConcat!79 lt!334600))))

(declare-datatypes ((Unit!14331 0))(
  ( (Unit!14332) )
))
(declare-fun lt!334599 () Unit!14331)

(declare-fun lemmaRemoveUselessConcatSound!71 (Regex!2366 List!9596) Unit!14331)

(assert (=> b!901132 (= lt!334599 (lemmaRemoveUselessConcatSound!71 lt!334600 (_2!6193 lt!334603)))))

(declare-fun lt!334605 () Unit!14331)

(declare-fun e!589145 () Unit!14331)

(assert (=> b!901132 (= lt!334605 e!589145)))

(declare-fun c!145947 () Bool)

(declare-fun s!10566 () List!9596)

(declare-fun size!7871 (List!9596) Int)

(assert (=> b!901132 (= c!145947 (= (size!7871 (_2!6193 lt!334603)) (size!7871 s!10566)))))

(assert (=> b!901132 (matchR!904 lt!334601 (_1!6193 lt!334603))))

(declare-fun r!15766 () Regex!2366)

(assert (=> b!901132 (= lt!334601 (removeUselessConcat!79 (reg!2695 r!15766)))))

(declare-fun lt!334602 () Unit!14331)

(assert (=> b!901132 (= lt!334602 (lemmaRemoveUselessConcatSound!71 (reg!2695 r!15766) (_1!6193 lt!334603)))))

(declare-fun b!901133 () Bool)

(declare-fun res!409757 () Bool)

(declare-fun e!589142 () Bool)

(assert (=> b!901133 (=> res!409757 e!589142)))

(declare-fun lt!334598 () Bool)

(assert (=> b!901133 (= res!409757 (not lt!334598))))

(declare-fun b!901134 () Bool)

(declare-fun e!589144 () Bool)

(declare-fun tp_is_empty!4375 () Bool)

(declare-fun tp!282619 () Bool)

(assert (=> b!901134 (= e!589144 (and tp_is_empty!4375 tp!282619))))

(declare-fun b!901135 () Bool)

(assert (=> b!901135 (= e!589142 e!589146)))

(declare-fun res!409755 () Bool)

(assert (=> b!901135 (=> res!409755 e!589146)))

(assert (=> b!901135 (= res!409755 (not (matchR!904 (reg!2695 r!15766) (_1!6193 lt!334603))))))

(declare-datatypes ((Option!2009 0))(
  ( (None!2008) (Some!2008 (v!19425 tuple2!10734)) )
))
(declare-fun lt!334606 () Option!2009)

(declare-fun get!3048 (Option!2009) tuple2!10734)

(assert (=> b!901135 (= lt!334603 (get!3048 lt!334606))))

(declare-fun b!901136 () Bool)

(declare-fun res!409753 () Bool)

(assert (=> b!901136 (=> res!409753 e!589146)))

(assert (=> b!901136 (= res!409753 (not (matchR!904 lt!334600 (_2!6193 lt!334603))))))

(declare-fun e!589147 () Bool)

(assert (=> b!901137 (= e!589147 e!589142)))

(declare-fun res!409756 () Bool)

(assert (=> b!901137 (=> res!409756 e!589142)))

(declare-fun isEmpty!5783 (List!9596) Bool)

(assert (=> b!901137 (= res!409756 (isEmpty!5783 s!10566))))

(declare-fun Exists!143 (Int) Bool)

(assert (=> b!901137 (= (Exists!143 lambda!28177) (Exists!143 lambda!28178))))

(declare-fun lt!334592 () Unit!14331)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!35 (Regex!2366 List!9596) Unit!14331)

(assert (=> b!901137 (= lt!334592 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!35 (reg!2695 r!15766) s!10566))))

(assert (=> b!901137 (= lt!334598 (Exists!143 lambda!28177))))

(declare-fun isDefined!1651 (Option!2009) Bool)

(assert (=> b!901137 (= lt!334598 (isDefined!1651 lt!334606))))

(declare-fun findConcatSeparation!115 (Regex!2366 Regex!2366 List!9596 List!9596 List!9596) Option!2009)

(assert (=> b!901137 (= lt!334606 (findConcatSeparation!115 (reg!2695 r!15766) lt!334600 Nil!9580 s!10566 s!10566))))

(declare-fun lt!334594 () Unit!14331)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!115 (Regex!2366 Regex!2366 List!9596) Unit!14331)

(assert (=> b!901137 (= lt!334594 (lemmaFindConcatSeparationEquivalentToExists!115 (reg!2695 r!15766) lt!334600 s!10566))))

(assert (=> b!901137 (= lt!334600 (Star!2366 (reg!2695 r!15766)))))

(declare-fun b!901138 () Bool)

(declare-fun Unit!14333 () Unit!14331)

(assert (=> b!901138 (= e!589145 Unit!14333)))

(declare-fun lt!334593 () Unit!14331)

(declare-fun mainMatchTheorem!167 (Regex!2366 List!9596) Unit!14331)

(assert (=> b!901138 (= lt!334593 (mainMatchTheorem!167 (reg!2695 r!15766) (_1!6193 lt!334603)))))

(assert (=> b!901138 false))

(declare-fun b!901139 () Bool)

(declare-fun Unit!14334 () Unit!14331)

(assert (=> b!901139 (= e!589145 Unit!14334)))

(declare-fun b!901140 () Bool)

(declare-fun e!589143 () Bool)

(declare-fun tp!282622 () Bool)

(declare-fun tp!282617 () Bool)

(assert (=> b!901140 (= e!589143 (and tp!282622 tp!282617))))

(declare-fun b!901141 () Bool)

(declare-fun validRegex!835 (Regex!2366) Bool)

(assert (=> b!901141 (= e!589149 (validRegex!835 lt!334595))))

(declare-fun res!409754 () Bool)

(declare-fun e!589148 () Bool)

(assert (=> start!81100 (=> (not res!409754) (not e!589148))))

(assert (=> start!81100 (= res!409754 (validRegex!835 r!15766))))

(assert (=> start!81100 e!589148))

(assert (=> start!81100 e!589143))

(assert (=> start!81100 e!589144))

(declare-fun b!901142 () Bool)

(declare-fun tp!282620 () Bool)

(declare-fun tp!282618 () Bool)

(assert (=> b!901142 (= e!589143 (and tp!282620 tp!282618))))

(declare-fun b!901143 () Bool)

(assert (=> b!901143 (= e!589143 tp_is_empty!4375)))

(declare-fun b!901144 () Bool)

(declare-fun tp!282621 () Bool)

(assert (=> b!901144 (= e!589143 tp!282621)))

(declare-fun b!901145 () Bool)

(assert (=> b!901145 (= e!589148 (not e!589147))))

(declare-fun res!409752 () Bool)

(assert (=> b!901145 (=> res!409752 e!589147)))

(declare-fun lt!334596 () Bool)

(assert (=> b!901145 (= res!409752 (or (not lt!334596) (and (is-Concat!4199 r!15766) (is-EmptyExpr!2366 (regOne!5244 r!15766))) (and (is-Concat!4199 r!15766) (is-EmptyExpr!2366 (regTwo!5244 r!15766))) (is-Concat!4199 r!15766) (is-Union!2366 r!15766) (not (is-Star!2366 r!15766))))))

(declare-fun matchRSpec!167 (Regex!2366 List!9596) Bool)

(assert (=> b!901145 (= lt!334596 (matchRSpec!167 r!15766 s!10566))))

(assert (=> b!901145 (= lt!334596 (matchR!904 r!15766 s!10566))))

(declare-fun lt!334604 () Unit!14331)

(assert (=> b!901145 (= lt!334604 (mainMatchTheorem!167 r!15766 s!10566))))

(assert (= (and start!81100 res!409754) b!901145))

(assert (= (and b!901145 (not res!409752)) b!901137))

(assert (= (and b!901137 (not res!409756)) b!901133))

(assert (= (and b!901133 (not res!409757)) b!901135))

(assert (= (and b!901135 (not res!409755)) b!901136))

(assert (= (and b!901136 (not res!409753)) b!901132))

(assert (= (and b!901132 c!145947) b!901138))

(assert (= (and b!901132 (not c!145947)) b!901139))

(assert (= (and b!901132 (not res!409751)) b!901141))

(assert (= (and start!81100 (is-ElementMatch!2366 r!15766)) b!901143))

(assert (= (and start!81100 (is-Concat!4199 r!15766)) b!901140))

(assert (= (and start!81100 (is-Star!2366 r!15766)) b!901144))

(assert (= (and start!81100 (is-Union!2366 r!15766)) b!901142))

(assert (= (and start!81100 (is-Cons!9580 s!10566)) b!901134))

(declare-fun m!1138633 () Bool)

(assert (=> b!901137 m!1138633))

(declare-fun m!1138635 () Bool)

(assert (=> b!901137 m!1138635))

(declare-fun m!1138637 () Bool)

(assert (=> b!901137 m!1138637))

(declare-fun m!1138639 () Bool)

(assert (=> b!901137 m!1138639))

(declare-fun m!1138641 () Bool)

(assert (=> b!901137 m!1138641))

(declare-fun m!1138643 () Bool)

(assert (=> b!901137 m!1138643))

(assert (=> b!901137 m!1138641))

(declare-fun m!1138645 () Bool)

(assert (=> b!901137 m!1138645))

(declare-fun m!1138647 () Bool)

(assert (=> b!901145 m!1138647))

(declare-fun m!1138649 () Bool)

(assert (=> b!901145 m!1138649))

(declare-fun m!1138651 () Bool)

(assert (=> b!901145 m!1138651))

(declare-fun m!1138653 () Bool)

(assert (=> start!81100 m!1138653))

(declare-fun m!1138655 () Bool)

(assert (=> b!901138 m!1138655))

(declare-fun m!1138657 () Bool)

(assert (=> b!901136 m!1138657))

(declare-fun m!1138659 () Bool)

(assert (=> b!901135 m!1138659))

(declare-fun m!1138661 () Bool)

(assert (=> b!901135 m!1138661))

(declare-fun m!1138663 () Bool)

(assert (=> b!901141 m!1138663))

(declare-fun m!1138665 () Bool)

(assert (=> b!901132 m!1138665))

(declare-fun m!1138667 () Bool)

(assert (=> b!901132 m!1138667))

(declare-fun m!1138669 () Bool)

(assert (=> b!901132 m!1138669))

(declare-fun m!1138671 () Bool)

(assert (=> b!901132 m!1138671))

(declare-fun m!1138673 () Bool)

(assert (=> b!901132 m!1138673))

(declare-fun m!1138675 () Bool)

(assert (=> b!901132 m!1138675))

(declare-fun m!1138677 () Bool)

(assert (=> b!901132 m!1138677))

(declare-fun m!1138679 () Bool)

(assert (=> b!901132 m!1138679))

(push 1)

(assert (not b!901140))

(assert (not b!901142))

(assert (not b!901136))

(assert tp_is_empty!4375)

(assert (not b!901145))

(assert (not b!901141))

(assert (not b!901135))

(assert (not b!901132))

(assert (not start!81100))

(assert (not b!901134))

(assert (not b!901144))

(assert (not b!901137))

(assert (not b!901138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!901228 () Bool)

(declare-fun e!589195 () Bool)

(declare-fun e!589196 () Bool)

(assert (=> b!901228 (= e!589195 e!589196)))

(declare-fun c!145958 () Bool)

(assert (=> b!901228 (= c!145958 (is-Union!2366 lt!334595))))

(declare-fun b!901229 () Bool)

(declare-fun res!409805 () Bool)

(declare-fun e!589198 () Bool)

(assert (=> b!901229 (=> (not res!409805) (not e!589198))))

(declare-fun call!53739 () Bool)

(assert (=> b!901229 (= res!409805 call!53739)))

(assert (=> b!901229 (= e!589196 e!589198)))

(declare-fun c!145957 () Bool)

(declare-fun call!53738 () Bool)

(declare-fun bm!53733 () Bool)

(assert (=> bm!53733 (= call!53738 (validRegex!835 (ite c!145957 (reg!2695 lt!334595) (ite c!145958 (regOne!5245 lt!334595) (regOne!5244 lt!334595)))))))

(declare-fun b!901230 () Bool)

(declare-fun e!589199 () Bool)

(assert (=> b!901230 (= e!589199 call!53738)))

(declare-fun bm!53734 () Bool)

(declare-fun call!53740 () Bool)

(assert (=> bm!53734 (= call!53740 (validRegex!835 (ite c!145958 (regTwo!5245 lt!334595) (regTwo!5244 lt!334595))))))

(declare-fun b!901231 () Bool)

(declare-fun e!589200 () Bool)

(declare-fun e!589194 () Bool)

(assert (=> b!901231 (= e!589200 e!589194)))

(declare-fun res!409807 () Bool)

(assert (=> b!901231 (=> (not res!409807) (not e!589194))))

(assert (=> b!901231 (= res!409807 call!53739)))

(declare-fun b!901232 () Bool)

(assert (=> b!901232 (= e!589194 call!53740)))

(declare-fun b!901233 () Bool)

(declare-fun res!409804 () Bool)

(assert (=> b!901233 (=> res!409804 e!589200)))

(assert (=> b!901233 (= res!409804 (not (is-Concat!4199 lt!334595)))))

(assert (=> b!901233 (= e!589196 e!589200)))

(declare-fun d!278353 () Bool)

(declare-fun res!409806 () Bool)

(declare-fun e!589197 () Bool)

(assert (=> d!278353 (=> res!409806 e!589197)))

(assert (=> d!278353 (= res!409806 (is-ElementMatch!2366 lt!334595))))

(assert (=> d!278353 (= (validRegex!835 lt!334595) e!589197)))

(declare-fun b!901234 () Bool)

(assert (=> b!901234 (= e!589197 e!589195)))

(assert (=> b!901234 (= c!145957 (is-Star!2366 lt!334595))))

(declare-fun b!901235 () Bool)

(assert (=> b!901235 (= e!589195 e!589199)))

(declare-fun res!409803 () Bool)

(declare-fun nullable!631 (Regex!2366) Bool)

(assert (=> b!901235 (= res!409803 (not (nullable!631 (reg!2695 lt!334595))))))

(assert (=> b!901235 (=> (not res!409803) (not e!589199))))

(declare-fun b!901236 () Bool)

(assert (=> b!901236 (= e!589198 call!53740)))

(declare-fun bm!53735 () Bool)

(assert (=> bm!53735 (= call!53739 call!53738)))

(assert (= (and d!278353 (not res!409806)) b!901234))

(assert (= (and b!901234 c!145957) b!901235))

(assert (= (and b!901234 (not c!145957)) b!901228))

(assert (= (and b!901235 res!409803) b!901230))

(assert (= (and b!901228 c!145958) b!901229))

(assert (= (and b!901228 (not c!145958)) b!901233))

(assert (= (and b!901229 res!409805) b!901236))

(assert (= (and b!901233 (not res!409804)) b!901231))

(assert (= (and b!901231 res!409807) b!901232))

(assert (= (or b!901236 b!901232) bm!53734))

(assert (= (or b!901229 b!901231) bm!53735))

(assert (= (or b!901230 bm!53735) bm!53733))

(declare-fun m!1138729 () Bool)

(assert (=> bm!53733 m!1138729))

(declare-fun m!1138731 () Bool)

(assert (=> bm!53734 m!1138731))

(declare-fun m!1138733 () Bool)

(assert (=> b!901235 m!1138733))

(assert (=> b!901141 d!278353))

(declare-fun b!901293 () Bool)

(declare-fun e!589231 () Bool)

(declare-fun e!589229 () Bool)

(assert (=> b!901293 (= e!589231 e!589229)))

(declare-fun res!409845 () Bool)

(assert (=> b!901293 (=> res!409845 e!589229)))

(declare-fun call!53745 () Bool)

(assert (=> b!901293 (= res!409845 call!53745)))

(declare-fun d!278355 () Bool)

(declare-fun e!589232 () Bool)

(assert (=> d!278355 e!589232))

(declare-fun c!145973 () Bool)

(assert (=> d!278355 (= c!145973 (is-EmptyExpr!2366 (reg!2695 r!15766)))))

(declare-fun lt!334656 () Bool)

(declare-fun e!589233 () Bool)

(assert (=> d!278355 (= lt!334656 e!589233)))

(declare-fun c!145971 () Bool)

(assert (=> d!278355 (= c!145971 (isEmpty!5783 (_1!6193 lt!334603)))))

(assert (=> d!278355 (validRegex!835 (reg!2695 r!15766))))

(assert (=> d!278355 (= (matchR!904 (reg!2695 r!15766) (_1!6193 lt!334603)) lt!334656)))

(declare-fun b!901294 () Bool)

(declare-fun e!589235 () Bool)

(assert (=> b!901294 (= e!589235 (not lt!334656))))

(declare-fun b!901295 () Bool)

(declare-fun e!589234 () Bool)

(declare-fun head!1596 (List!9596) C!5302)

(assert (=> b!901295 (= e!589234 (= (head!1596 (_1!6193 lt!334603)) (c!145948 (reg!2695 r!15766))))))

(declare-fun b!901296 () Bool)

(declare-fun res!409841 () Bool)

(assert (=> b!901296 (=> (not res!409841) (not e!589234))))

(assert (=> b!901296 (= res!409841 (not call!53745))))

(declare-fun b!901297 () Bool)

(assert (=> b!901297 (= e!589229 (not (= (head!1596 (_1!6193 lt!334603)) (c!145948 (reg!2695 r!15766)))))))

(declare-fun b!901298 () Bool)

(declare-fun res!409843 () Bool)

(declare-fun e!589230 () Bool)

(assert (=> b!901298 (=> res!409843 e!589230)))

(assert (=> b!901298 (= res!409843 e!589234)))

(declare-fun res!409842 () Bool)

(assert (=> b!901298 (=> (not res!409842) (not e!589234))))

(assert (=> b!901298 (= res!409842 lt!334656)))

(declare-fun b!901299 () Bool)

(assert (=> b!901299 (= e!589232 (= lt!334656 call!53745))))

(declare-fun b!901300 () Bool)

(declare-fun derivativeStep!443 (Regex!2366 C!5302) Regex!2366)

(declare-fun tail!1158 (List!9596) List!9596)

(assert (=> b!901300 (= e!589233 (matchR!904 (derivativeStep!443 (reg!2695 r!15766) (head!1596 (_1!6193 lt!334603))) (tail!1158 (_1!6193 lt!334603))))))

(declare-fun b!901301 () Bool)

(declare-fun res!409840 () Bool)

(assert (=> b!901301 (=> (not res!409840) (not e!589234))))

(assert (=> b!901301 (= res!409840 (isEmpty!5783 (tail!1158 (_1!6193 lt!334603))))))

(declare-fun b!901302 () Bool)

(assert (=> b!901302 (= e!589232 e!589235)))

(declare-fun c!145972 () Bool)

(assert (=> b!901302 (= c!145972 (is-EmptyLang!2366 (reg!2695 r!15766)))))

(declare-fun b!901303 () Bool)

(declare-fun res!409846 () Bool)

(assert (=> b!901303 (=> res!409846 e!589230)))

(assert (=> b!901303 (= res!409846 (not (is-ElementMatch!2366 (reg!2695 r!15766))))))

(assert (=> b!901303 (= e!589235 e!589230)))

(declare-fun b!901304 () Bool)

(assert (=> b!901304 (= e!589230 e!589231)))

(declare-fun res!409844 () Bool)

(assert (=> b!901304 (=> (not res!409844) (not e!589231))))

(assert (=> b!901304 (= res!409844 (not lt!334656))))

(declare-fun bm!53740 () Bool)

(assert (=> bm!53740 (= call!53745 (isEmpty!5783 (_1!6193 lt!334603)))))

(declare-fun b!901305 () Bool)

(declare-fun res!409847 () Bool)

(assert (=> b!901305 (=> res!409847 e!589229)))

(assert (=> b!901305 (= res!409847 (not (isEmpty!5783 (tail!1158 (_1!6193 lt!334603)))))))

(declare-fun b!901306 () Bool)

(assert (=> b!901306 (= e!589233 (nullable!631 (reg!2695 r!15766)))))

(assert (= (and d!278355 c!145971) b!901306))

(assert (= (and d!278355 (not c!145971)) b!901300))

(assert (= (and d!278355 c!145973) b!901299))

(assert (= (and d!278355 (not c!145973)) b!901302))

(assert (= (and b!901302 c!145972) b!901294))

(assert (= (and b!901302 (not c!145972)) b!901303))

(assert (= (and b!901303 (not res!409846)) b!901298))

(assert (= (and b!901298 res!409842) b!901296))

(assert (= (and b!901296 res!409841) b!901301))

(assert (= (and b!901301 res!409840) b!901295))

(assert (= (and b!901298 (not res!409843)) b!901304))

(assert (= (and b!901304 res!409844) b!901293))

(assert (= (and b!901293 (not res!409845)) b!901305))

(assert (= (and b!901305 (not res!409847)) b!901297))

(assert (= (or b!901299 b!901293 b!901296) bm!53740))

(declare-fun m!1138735 () Bool)

(assert (=> b!901300 m!1138735))

(assert (=> b!901300 m!1138735))

(declare-fun m!1138737 () Bool)

(assert (=> b!901300 m!1138737))

(declare-fun m!1138739 () Bool)

(assert (=> b!901300 m!1138739))

(assert (=> b!901300 m!1138737))

(assert (=> b!901300 m!1138739))

(declare-fun m!1138741 () Bool)

(assert (=> b!901300 m!1138741))

(declare-fun m!1138743 () Bool)

(assert (=> d!278355 m!1138743))

(declare-fun m!1138745 () Bool)

(assert (=> d!278355 m!1138745))

(assert (=> bm!53740 m!1138743))

(assert (=> b!901305 m!1138739))

(assert (=> b!901305 m!1138739))

(declare-fun m!1138747 () Bool)

(assert (=> b!901305 m!1138747))

(assert (=> b!901301 m!1138739))

(assert (=> b!901301 m!1138739))

(assert (=> b!901301 m!1138747))

(assert (=> b!901297 m!1138735))

(declare-fun m!1138749 () Bool)

(assert (=> b!901306 m!1138749))

(assert (=> b!901295 m!1138735))

(assert (=> b!901135 d!278355))

(declare-fun d!278357 () Bool)

(assert (=> d!278357 (= (get!3048 lt!334606) (v!19425 lt!334606))))

(assert (=> b!901135 d!278357))

(declare-fun d!278359 () Bool)

(declare-fun choose!5437 (Int) Bool)

(assert (=> d!278359 (= (Exists!143 lambda!28177) (choose!5437 lambda!28177))))

(declare-fun bs!235234 () Bool)

(assert (= bs!235234 d!278359))

(declare-fun m!1138751 () Bool)

(assert (=> bs!235234 m!1138751))

(assert (=> b!901137 d!278359))

(declare-fun d!278361 () Bool)

(declare-fun isEmpty!5785 (Option!2009) Bool)

(assert (=> d!278361 (= (isDefined!1651 lt!334606) (not (isEmpty!5785 lt!334606)))))

(declare-fun bs!235235 () Bool)

(assert (= bs!235235 d!278361))

(declare-fun m!1138753 () Bool)

(assert (=> bs!235235 m!1138753))

(assert (=> b!901137 d!278361))

(declare-fun d!278363 () Bool)

(assert (=> d!278363 (= (isEmpty!5783 s!10566) (is-Nil!9580 s!10566))))

(assert (=> b!901137 d!278363))

(declare-fun b!901339 () Bool)

(declare-fun e!589256 () Option!2009)

(declare-fun e!589253 () Option!2009)

(assert (=> b!901339 (= e!589256 e!589253)))

(declare-fun c!145981 () Bool)

(assert (=> b!901339 (= c!145981 (is-Nil!9580 s!10566))))

(declare-fun b!901340 () Bool)

(declare-fun res!409868 () Bool)

(declare-fun e!589255 () Bool)

(assert (=> b!901340 (=> (not res!409868) (not e!589255))))

(declare-fun lt!334665 () Option!2009)

(assert (=> b!901340 (= res!409868 (matchR!904 lt!334600 (_2!6193 (get!3048 lt!334665))))))

(declare-fun b!901341 () Bool)

(assert (=> b!901341 (= e!589256 (Some!2008 (tuple2!10735 Nil!9580 s!10566)))))

(declare-fun d!278365 () Bool)

(declare-fun e!589254 () Bool)

(assert (=> d!278365 e!589254))

(declare-fun res!409866 () Bool)

(assert (=> d!278365 (=> res!409866 e!589254)))

(assert (=> d!278365 (= res!409866 e!589255)))

(declare-fun res!409869 () Bool)

(assert (=> d!278365 (=> (not res!409869) (not e!589255))))

(assert (=> d!278365 (= res!409869 (isDefined!1651 lt!334665))))

(assert (=> d!278365 (= lt!334665 e!589256)))

(declare-fun c!145982 () Bool)

(declare-fun e!589257 () Bool)

(assert (=> d!278365 (= c!145982 e!589257)))

(declare-fun res!409867 () Bool)

(assert (=> d!278365 (=> (not res!409867) (not e!589257))))

(assert (=> d!278365 (= res!409867 (matchR!904 (reg!2695 r!15766) Nil!9580))))

(assert (=> d!278365 (validRegex!835 (reg!2695 r!15766))))

(assert (=> d!278365 (= (findConcatSeparation!115 (reg!2695 r!15766) lt!334600 Nil!9580 s!10566 s!10566) lt!334665)))

(declare-fun b!901342 () Bool)

(assert (=> b!901342 (= e!589257 (matchR!904 lt!334600 s!10566))))

(declare-fun b!901343 () Bool)

(declare-fun ++!2506 (List!9596 List!9596) List!9596)

(assert (=> b!901343 (= e!589255 (= (++!2506 (_1!6193 (get!3048 lt!334665)) (_2!6193 (get!3048 lt!334665))) s!10566))))

(declare-fun b!901344 () Bool)

(assert (=> b!901344 (= e!589253 None!2008)))

(declare-fun b!901345 () Bool)

(declare-fun res!409870 () Bool)

(assert (=> b!901345 (=> (not res!409870) (not e!589255))))

(assert (=> b!901345 (= res!409870 (matchR!904 (reg!2695 r!15766) (_1!6193 (get!3048 lt!334665))))))

(declare-fun b!901346 () Bool)

(assert (=> b!901346 (= e!589254 (not (isDefined!1651 lt!334665)))))

(declare-fun b!901347 () Bool)

(declare-fun lt!334664 () Unit!14331)

(declare-fun lt!334666 () Unit!14331)

(assert (=> b!901347 (= lt!334664 lt!334666)))

(assert (=> b!901347 (= (++!2506 (++!2506 Nil!9580 (Cons!9580 (h!14981 s!10566) Nil!9580)) (t!100642 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!130 (List!9596 C!5302 List!9596 List!9596) Unit!14331)

(assert (=> b!901347 (= lt!334666 (lemmaMoveElementToOtherListKeepsConcatEq!130 Nil!9580 (h!14981 s!10566) (t!100642 s!10566) s!10566))))

(assert (=> b!901347 (= e!589253 (findConcatSeparation!115 (reg!2695 r!15766) lt!334600 (++!2506 Nil!9580 (Cons!9580 (h!14981 s!10566) Nil!9580)) (t!100642 s!10566) s!10566))))

(assert (= (and d!278365 res!409867) b!901342))

(assert (= (and d!278365 c!145982) b!901341))

(assert (= (and d!278365 (not c!145982)) b!901339))

(assert (= (and b!901339 c!145981) b!901344))

(assert (= (and b!901339 (not c!145981)) b!901347))

(assert (= (and d!278365 res!409869) b!901345))

(assert (= (and b!901345 res!409870) b!901340))

(assert (= (and b!901340 res!409868) b!901343))

(assert (= (and d!278365 (not res!409866)) b!901346))

(declare-fun m!1138771 () Bool)

(assert (=> b!901340 m!1138771))

(declare-fun m!1138773 () Bool)

(assert (=> b!901340 m!1138773))

(assert (=> b!901343 m!1138771))

(declare-fun m!1138775 () Bool)

(assert (=> b!901343 m!1138775))

(declare-fun m!1138777 () Bool)

(assert (=> b!901346 m!1138777))

(declare-fun m!1138779 () Bool)

(assert (=> b!901347 m!1138779))

(assert (=> b!901347 m!1138779))

(declare-fun m!1138781 () Bool)

(assert (=> b!901347 m!1138781))

(declare-fun m!1138783 () Bool)

(assert (=> b!901347 m!1138783))

(assert (=> b!901347 m!1138779))

(declare-fun m!1138785 () Bool)

(assert (=> b!901347 m!1138785))

(assert (=> b!901345 m!1138771))

(declare-fun m!1138787 () Bool)

(assert (=> b!901345 m!1138787))

(declare-fun m!1138789 () Bool)

(assert (=> b!901342 m!1138789))

(assert (=> d!278365 m!1138777))

(declare-fun m!1138791 () Bool)

(assert (=> d!278365 m!1138791))

(assert (=> d!278365 m!1138745))

(assert (=> b!901137 d!278365))

(declare-fun d!278369 () Bool)

(assert (=> d!278369 (= (Exists!143 lambda!28178) (choose!5437 lambda!28178))))

(declare-fun bs!235236 () Bool)

(assert (= bs!235236 d!278369))

(declare-fun m!1138793 () Bool)

(assert (=> bs!235236 m!1138793))

(assert (=> b!901137 d!278369))

(declare-fun bs!235237 () Bool)

(declare-fun d!278371 () Bool)

(assert (= bs!235237 (and d!278371 b!901137)))

(declare-fun lambda!28191 () Int)

(assert (=> bs!235237 (= lambda!28191 lambda!28177)))

(assert (=> bs!235237 (not (= lambda!28191 lambda!28178))))

(assert (=> d!278371 true))

(assert (=> d!278371 true))

(assert (=> d!278371 true))

(assert (=> d!278371 (= (isDefined!1651 (findConcatSeparation!115 (reg!2695 r!15766) lt!334600 Nil!9580 s!10566 s!10566)) (Exists!143 lambda!28191))))

(declare-fun lt!334669 () Unit!14331)

(declare-fun choose!5438 (Regex!2366 Regex!2366 List!9596) Unit!14331)

(assert (=> d!278371 (= lt!334669 (choose!5438 (reg!2695 r!15766) lt!334600 s!10566))))

(assert (=> d!278371 (validRegex!835 (reg!2695 r!15766))))

(assert (=> d!278371 (= (lemmaFindConcatSeparationEquivalentToExists!115 (reg!2695 r!15766) lt!334600 s!10566) lt!334669)))

(declare-fun bs!235238 () Bool)

(assert (= bs!235238 d!278371))

(declare-fun m!1138795 () Bool)

(assert (=> bs!235238 m!1138795))

(assert (=> bs!235238 m!1138745))

(declare-fun m!1138797 () Bool)

(assert (=> bs!235238 m!1138797))

(assert (=> bs!235238 m!1138639))

(assert (=> bs!235238 m!1138639))

(declare-fun m!1138799 () Bool)

(assert (=> bs!235238 m!1138799))

(assert (=> b!901137 d!278371))

(declare-fun bs!235239 () Bool)

(declare-fun d!278373 () Bool)

(assert (= bs!235239 (and d!278373 b!901137)))

(declare-fun lambda!28198 () Int)

(assert (=> bs!235239 (= (= (Star!2366 (reg!2695 r!15766)) lt!334600) (= lambda!28198 lambda!28177))))

(assert (=> bs!235239 (not (= lambda!28198 lambda!28178))))

(declare-fun bs!235240 () Bool)

(assert (= bs!235240 (and d!278373 d!278371)))

(assert (=> bs!235240 (= (= (Star!2366 (reg!2695 r!15766)) lt!334600) (= lambda!28198 lambda!28191))))

(assert (=> d!278373 true))

(assert (=> d!278373 true))

(declare-fun lambda!28199 () Int)

(assert (=> bs!235239 (not (= lambda!28199 lambda!28177))))

(assert (=> bs!235239 (= (= (Star!2366 (reg!2695 r!15766)) lt!334600) (= lambda!28199 lambda!28178))))

(assert (=> bs!235240 (not (= lambda!28199 lambda!28191))))

(declare-fun bs!235241 () Bool)

(assert (= bs!235241 d!278373))

(assert (=> bs!235241 (not (= lambda!28199 lambda!28198))))

(assert (=> d!278373 true))

(assert (=> d!278373 true))

(assert (=> d!278373 (= (Exists!143 lambda!28198) (Exists!143 lambda!28199))))

(declare-fun lt!334672 () Unit!14331)

(declare-fun choose!5439 (Regex!2366 List!9596) Unit!14331)

(assert (=> d!278373 (= lt!334672 (choose!5439 (reg!2695 r!15766) s!10566))))

(assert (=> d!278373 (validRegex!835 (reg!2695 r!15766))))

(assert (=> d!278373 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!35 (reg!2695 r!15766) s!10566) lt!334672)))

(declare-fun m!1138801 () Bool)

(assert (=> bs!235241 m!1138801))

(declare-fun m!1138803 () Bool)

(assert (=> bs!235241 m!1138803))

(declare-fun m!1138805 () Bool)

(assert (=> bs!235241 m!1138805))

(assert (=> bs!235241 m!1138745))

(assert (=> b!901137 d!278373))

(declare-fun b!901394 () Bool)

(declare-fun e!589284 () Bool)

(declare-fun e!589282 () Bool)

(assert (=> b!901394 (= e!589284 e!589282)))

(declare-fun res!409906 () Bool)

(assert (=> b!901394 (=> res!409906 e!589282)))

(declare-fun call!53751 () Bool)

(assert (=> b!901394 (= res!409906 call!53751)))

(declare-fun d!278375 () Bool)

(declare-fun e!589285 () Bool)

(assert (=> d!278375 e!589285))

(declare-fun c!145993 () Bool)

(assert (=> d!278375 (= c!145993 (is-EmptyExpr!2366 lt!334600))))

(declare-fun lt!334673 () Bool)

(declare-fun e!589286 () Bool)

(assert (=> d!278375 (= lt!334673 e!589286)))

(declare-fun c!145991 () Bool)

(assert (=> d!278375 (= c!145991 (isEmpty!5783 (_2!6193 lt!334603)))))

(assert (=> d!278375 (validRegex!835 lt!334600)))

(assert (=> d!278375 (= (matchR!904 lt!334600 (_2!6193 lt!334603)) lt!334673)))

(declare-fun b!901395 () Bool)

(declare-fun e!589288 () Bool)

(assert (=> b!901395 (= e!589288 (not lt!334673))))

(declare-fun b!901396 () Bool)

(declare-fun e!589287 () Bool)

(assert (=> b!901396 (= e!589287 (= (head!1596 (_2!6193 lt!334603)) (c!145948 lt!334600)))))

(declare-fun b!901397 () Bool)

(declare-fun res!409902 () Bool)

(assert (=> b!901397 (=> (not res!409902) (not e!589287))))

(assert (=> b!901397 (= res!409902 (not call!53751))))

(declare-fun b!901398 () Bool)

(assert (=> b!901398 (= e!589282 (not (= (head!1596 (_2!6193 lt!334603)) (c!145948 lt!334600))))))

(declare-fun b!901399 () Bool)

(declare-fun res!409904 () Bool)

(declare-fun e!589283 () Bool)

(assert (=> b!901399 (=> res!409904 e!589283)))

(assert (=> b!901399 (= res!409904 e!589287)))

(declare-fun res!409903 () Bool)

(assert (=> b!901399 (=> (not res!409903) (not e!589287))))

(assert (=> b!901399 (= res!409903 lt!334673)))

(declare-fun b!901400 () Bool)

(assert (=> b!901400 (= e!589285 (= lt!334673 call!53751))))

(declare-fun b!901401 () Bool)

(assert (=> b!901401 (= e!589286 (matchR!904 (derivativeStep!443 lt!334600 (head!1596 (_2!6193 lt!334603))) (tail!1158 (_2!6193 lt!334603))))))

(declare-fun b!901402 () Bool)

(declare-fun res!409901 () Bool)

(assert (=> b!901402 (=> (not res!409901) (not e!589287))))

(assert (=> b!901402 (= res!409901 (isEmpty!5783 (tail!1158 (_2!6193 lt!334603))))))

(declare-fun b!901403 () Bool)

(assert (=> b!901403 (= e!589285 e!589288)))

(declare-fun c!145992 () Bool)

(assert (=> b!901403 (= c!145992 (is-EmptyLang!2366 lt!334600))))

(declare-fun b!901404 () Bool)

(declare-fun res!409907 () Bool)

(assert (=> b!901404 (=> res!409907 e!589283)))

(assert (=> b!901404 (= res!409907 (not (is-ElementMatch!2366 lt!334600)))))

(assert (=> b!901404 (= e!589288 e!589283)))

(declare-fun b!901405 () Bool)

(assert (=> b!901405 (= e!589283 e!589284)))

(declare-fun res!409905 () Bool)

(assert (=> b!901405 (=> (not res!409905) (not e!589284))))

(assert (=> b!901405 (= res!409905 (not lt!334673))))

(declare-fun bm!53746 () Bool)

(assert (=> bm!53746 (= call!53751 (isEmpty!5783 (_2!6193 lt!334603)))))

(declare-fun b!901406 () Bool)

(declare-fun res!409908 () Bool)

(assert (=> b!901406 (=> res!409908 e!589282)))

(assert (=> b!901406 (= res!409908 (not (isEmpty!5783 (tail!1158 (_2!6193 lt!334603)))))))

(declare-fun b!901407 () Bool)

(assert (=> b!901407 (= e!589286 (nullable!631 lt!334600))))

(assert (= (and d!278375 c!145991) b!901407))

(assert (= (and d!278375 (not c!145991)) b!901401))

(assert (= (and d!278375 c!145993) b!901400))

(assert (= (and d!278375 (not c!145993)) b!901403))

(assert (= (and b!901403 c!145992) b!901395))

(assert (= (and b!901403 (not c!145992)) b!901404))

(assert (= (and b!901404 (not res!409907)) b!901399))

(assert (= (and b!901399 res!409903) b!901397))

(assert (= (and b!901397 res!409902) b!901402))

(assert (= (and b!901402 res!409901) b!901396))

(assert (= (and b!901399 (not res!409904)) b!901405))

(assert (= (and b!901405 res!409905) b!901394))

(assert (= (and b!901394 (not res!409906)) b!901406))

(assert (= (and b!901406 (not res!409908)) b!901398))

(assert (= (or b!901400 b!901394 b!901397) bm!53746))

(declare-fun m!1138807 () Bool)

(assert (=> b!901401 m!1138807))

(assert (=> b!901401 m!1138807))

(declare-fun m!1138809 () Bool)

(assert (=> b!901401 m!1138809))

(declare-fun m!1138811 () Bool)

(assert (=> b!901401 m!1138811))

(assert (=> b!901401 m!1138809))

(assert (=> b!901401 m!1138811))

(declare-fun m!1138813 () Bool)

(assert (=> b!901401 m!1138813))

(declare-fun m!1138815 () Bool)

(assert (=> d!278375 m!1138815))

(declare-fun m!1138817 () Bool)

(assert (=> d!278375 m!1138817))

(assert (=> bm!53746 m!1138815))

(assert (=> b!901406 m!1138811))

(assert (=> b!901406 m!1138811))

(declare-fun m!1138819 () Bool)

(assert (=> b!901406 m!1138819))

(assert (=> b!901402 m!1138811))

(assert (=> b!901402 m!1138811))

(assert (=> b!901402 m!1138819))

(assert (=> b!901398 m!1138807))

(declare-fun m!1138821 () Bool)

(assert (=> b!901407 m!1138821))

(assert (=> b!901396 m!1138807))

(assert (=> b!901136 d!278375))

(declare-fun d!278377 () Bool)

(assert (=> d!278377 (= (matchR!904 (reg!2695 r!15766) (_1!6193 lt!334603)) (matchRSpec!167 (reg!2695 r!15766) (_1!6193 lt!334603)))))

(declare-fun lt!334676 () Unit!14331)

(declare-fun choose!5440 (Regex!2366 List!9596) Unit!14331)

(assert (=> d!278377 (= lt!334676 (choose!5440 (reg!2695 r!15766) (_1!6193 lt!334603)))))

(assert (=> d!278377 (validRegex!835 (reg!2695 r!15766))))

(assert (=> d!278377 (= (mainMatchTheorem!167 (reg!2695 r!15766) (_1!6193 lt!334603)) lt!334676)))

(declare-fun bs!235242 () Bool)

(assert (= bs!235242 d!278377))

(assert (=> bs!235242 m!1138659))

(declare-fun m!1138823 () Bool)

(assert (=> bs!235242 m!1138823))

(declare-fun m!1138825 () Bool)

(assert (=> bs!235242 m!1138825))

(assert (=> bs!235242 m!1138745))

(assert (=> b!901138 d!278377))

(declare-fun bm!53760 () Bool)

(declare-fun call!53767 () Regex!2366)

(declare-fun call!53768 () Regex!2366)

(assert (=> bm!53760 (= call!53767 call!53768)))

(declare-fun b!901455 () Bool)

(declare-fun c!146012 () Bool)

(assert (=> b!901455 (= c!146012 (is-Star!2366 lt!334600))))

(declare-fun e!589319 () Regex!2366)

(declare-fun e!589316 () Regex!2366)

(assert (=> b!901455 (= e!589319 e!589316)))

(declare-fun bm!53761 () Bool)

(declare-fun call!53765 () Regex!2366)

(declare-fun call!53766 () Regex!2366)

(assert (=> bm!53761 (= call!53765 call!53766)))

(declare-fun b!901456 () Bool)

(declare-fun c!146013 () Bool)

(assert (=> b!901456 (= c!146013 (is-Concat!4199 lt!334600))))

(declare-fun e!589320 () Regex!2366)

(declare-fun e!589315 () Regex!2366)

(assert (=> b!901456 (= e!589320 e!589315)))

(declare-fun b!901457 () Bool)

(assert (=> b!901457 (= e!589320 call!53768)))

(declare-fun c!146014 () Bool)

(declare-fun bm!53762 () Bool)

(assert (=> bm!53762 (= call!53768 (removeUselessConcat!79 (ite c!146014 (regOne!5244 lt!334600) (ite c!146013 (regTwo!5244 lt!334600) (regOne!5245 lt!334600)))))))

(declare-fun b!901458 () Bool)

(declare-fun e!589318 () Regex!2366)

(assert (=> b!901458 (= e!589318 e!589320)))

(assert (=> b!901458 (= c!146014 (and (is-Concat!4199 lt!334600) (is-EmptyExpr!2366 (regTwo!5244 lt!334600))))))

(declare-fun d!278379 () Bool)

(declare-fun e!589317 () Bool)

(assert (=> d!278379 e!589317))

(declare-fun res!409922 () Bool)

(assert (=> d!278379 (=> (not res!409922) (not e!589317))))

(declare-fun lt!334680 () Regex!2366)

(assert (=> d!278379 (= res!409922 (validRegex!835 lt!334680))))

(assert (=> d!278379 (= lt!334680 e!589318)))

(declare-fun c!146015 () Bool)

(assert (=> d!278379 (= c!146015 (and (is-Concat!4199 lt!334600) (is-EmptyExpr!2366 (regOne!5244 lt!334600))))))

(assert (=> d!278379 (validRegex!835 lt!334600)))

(assert (=> d!278379 (= (removeUselessConcat!79 lt!334600) lt!334680)))

(declare-fun b!901459 () Bool)

(declare-fun call!53769 () Regex!2366)

(assert (=> b!901459 (= e!589319 (Union!2366 call!53767 call!53769))))

(declare-fun b!901460 () Bool)

(assert (=> b!901460 (= e!589316 lt!334600)))

(declare-fun b!901461 () Bool)

(assert (=> b!901461 (= e!589315 e!589319)))

(declare-fun c!146011 () Bool)

(assert (=> b!901461 (= c!146011 (is-Union!2366 lt!334600))))

(declare-fun bm!53763 () Bool)

(assert (=> bm!53763 (= call!53766 (removeUselessConcat!79 (ite c!146015 (regTwo!5244 lt!334600) (ite c!146013 (regOne!5244 lt!334600) (ite c!146011 (regTwo!5245 lt!334600) (reg!2695 lt!334600))))))))

(declare-fun b!901462 () Bool)

(assert (=> b!901462 (= e!589315 (Concat!4199 call!53765 call!53767))))

(declare-fun bm!53764 () Bool)

(assert (=> bm!53764 (= call!53769 call!53765)))

(declare-fun b!901463 () Bool)

(assert (=> b!901463 (= e!589317 (= (nullable!631 lt!334680) (nullable!631 lt!334600)))))

(declare-fun b!901464 () Bool)

(assert (=> b!901464 (= e!589316 (Star!2366 call!53769))))

(declare-fun b!901465 () Bool)

(assert (=> b!901465 (= e!589318 call!53766)))

(assert (= (and d!278379 c!146015) b!901465))

(assert (= (and d!278379 (not c!146015)) b!901458))

(assert (= (and b!901458 c!146014) b!901457))

(assert (= (and b!901458 (not c!146014)) b!901456))

(assert (= (and b!901456 c!146013) b!901462))

(assert (= (and b!901456 (not c!146013)) b!901461))

(assert (= (and b!901461 c!146011) b!901459))

(assert (= (and b!901461 (not c!146011)) b!901455))

(assert (= (and b!901455 c!146012) b!901464))

(assert (= (and b!901455 (not c!146012)) b!901460))

(assert (= (or b!901459 b!901464) bm!53764))

(assert (= (or b!901462 b!901459) bm!53760))

(assert (= (or b!901462 bm!53764) bm!53761))

(assert (= (or b!901457 bm!53760) bm!53762))

(assert (= (or b!901465 bm!53761) bm!53763))

(assert (= (and d!278379 res!409922) b!901463))

(declare-fun m!1138845 () Bool)

(assert (=> bm!53762 m!1138845))

(declare-fun m!1138847 () Bool)

(assert (=> d!278379 m!1138847))

(assert (=> d!278379 m!1138817))

(declare-fun m!1138849 () Bool)

(assert (=> bm!53763 m!1138849))

(declare-fun m!1138851 () Bool)

(assert (=> b!901463 m!1138851))

(assert (=> b!901463 m!1138821))

(assert (=> b!901132 d!278379))

(declare-fun b!901466 () Bool)

(declare-fun e!589323 () Bool)

(declare-fun e!589321 () Bool)

(assert (=> b!901466 (= e!589323 e!589321)))

(declare-fun res!409928 () Bool)

(assert (=> b!901466 (=> res!409928 e!589321)))

(declare-fun call!53770 () Bool)

(assert (=> b!901466 (= res!409928 call!53770)))

(declare-fun d!278385 () Bool)

(declare-fun e!589324 () Bool)

(assert (=> d!278385 e!589324))

(declare-fun c!146018 () Bool)

(assert (=> d!278385 (= c!146018 (is-EmptyExpr!2366 lt!334601))))

(declare-fun lt!334681 () Bool)

(declare-fun e!589325 () Bool)

(assert (=> d!278385 (= lt!334681 e!589325)))

(declare-fun c!146016 () Bool)

(assert (=> d!278385 (= c!146016 (isEmpty!5783 (_1!6193 lt!334603)))))

(assert (=> d!278385 (validRegex!835 lt!334601)))

(assert (=> d!278385 (= (matchR!904 lt!334601 (_1!6193 lt!334603)) lt!334681)))

(declare-fun b!901467 () Bool)

(declare-fun e!589327 () Bool)

(assert (=> b!901467 (= e!589327 (not lt!334681))))

(declare-fun b!901468 () Bool)

(declare-fun e!589326 () Bool)

(assert (=> b!901468 (= e!589326 (= (head!1596 (_1!6193 lt!334603)) (c!145948 lt!334601)))))

(declare-fun b!901469 () Bool)

(declare-fun res!409924 () Bool)

(assert (=> b!901469 (=> (not res!409924) (not e!589326))))

(assert (=> b!901469 (= res!409924 (not call!53770))))

(declare-fun b!901470 () Bool)

(assert (=> b!901470 (= e!589321 (not (= (head!1596 (_1!6193 lt!334603)) (c!145948 lt!334601))))))

(declare-fun b!901471 () Bool)

(declare-fun res!409926 () Bool)

(declare-fun e!589322 () Bool)

(assert (=> b!901471 (=> res!409926 e!589322)))

(assert (=> b!901471 (= res!409926 e!589326)))

(declare-fun res!409925 () Bool)

(assert (=> b!901471 (=> (not res!409925) (not e!589326))))

(assert (=> b!901471 (= res!409925 lt!334681)))

(declare-fun b!901472 () Bool)

(assert (=> b!901472 (= e!589324 (= lt!334681 call!53770))))

(declare-fun b!901473 () Bool)

(assert (=> b!901473 (= e!589325 (matchR!904 (derivativeStep!443 lt!334601 (head!1596 (_1!6193 lt!334603))) (tail!1158 (_1!6193 lt!334603))))))

(declare-fun b!901474 () Bool)

(declare-fun res!409923 () Bool)

(assert (=> b!901474 (=> (not res!409923) (not e!589326))))

(assert (=> b!901474 (= res!409923 (isEmpty!5783 (tail!1158 (_1!6193 lt!334603))))))

(declare-fun b!901475 () Bool)

(assert (=> b!901475 (= e!589324 e!589327)))

(declare-fun c!146017 () Bool)

(assert (=> b!901475 (= c!146017 (is-EmptyLang!2366 lt!334601))))

(declare-fun b!901476 () Bool)

(declare-fun res!409929 () Bool)

(assert (=> b!901476 (=> res!409929 e!589322)))

(assert (=> b!901476 (= res!409929 (not (is-ElementMatch!2366 lt!334601)))))

(assert (=> b!901476 (= e!589327 e!589322)))

(declare-fun b!901477 () Bool)

(assert (=> b!901477 (= e!589322 e!589323)))

(declare-fun res!409927 () Bool)

(assert (=> b!901477 (=> (not res!409927) (not e!589323))))

(assert (=> b!901477 (= res!409927 (not lt!334681))))

(declare-fun bm!53765 () Bool)

(assert (=> bm!53765 (= call!53770 (isEmpty!5783 (_1!6193 lt!334603)))))

(declare-fun b!901478 () Bool)

(declare-fun res!409930 () Bool)

(assert (=> b!901478 (=> res!409930 e!589321)))

(assert (=> b!901478 (= res!409930 (not (isEmpty!5783 (tail!1158 (_1!6193 lt!334603)))))))

(declare-fun b!901479 () Bool)

(assert (=> b!901479 (= e!589325 (nullable!631 lt!334601))))

(assert (= (and d!278385 c!146016) b!901479))

(assert (= (and d!278385 (not c!146016)) b!901473))

(assert (= (and d!278385 c!146018) b!901472))

(assert (= (and d!278385 (not c!146018)) b!901475))

(assert (= (and b!901475 c!146017) b!901467))

(assert (= (and b!901475 (not c!146017)) b!901476))

(assert (= (and b!901476 (not res!409929)) b!901471))

(assert (= (and b!901471 res!409925) b!901469))

(assert (= (and b!901469 res!409924) b!901474))

(assert (= (and b!901474 res!409923) b!901468))

(assert (= (and b!901471 (not res!409926)) b!901477))

(assert (= (and b!901477 res!409927) b!901466))

(assert (= (and b!901466 (not res!409928)) b!901478))

(assert (= (and b!901478 (not res!409930)) b!901470))

(assert (= (or b!901472 b!901466 b!901469) bm!53765))

(assert (=> b!901473 m!1138735))

(assert (=> b!901473 m!1138735))

(declare-fun m!1138853 () Bool)

(assert (=> b!901473 m!1138853))

(assert (=> b!901473 m!1138739))

(assert (=> b!901473 m!1138853))

(assert (=> b!901473 m!1138739))

(declare-fun m!1138855 () Bool)

(assert (=> b!901473 m!1138855))

(assert (=> d!278385 m!1138743))

(declare-fun m!1138857 () Bool)

(assert (=> d!278385 m!1138857))

(assert (=> bm!53765 m!1138743))

(assert (=> b!901478 m!1138739))

(assert (=> b!901478 m!1138739))

(assert (=> b!901478 m!1138747))

(assert (=> b!901474 m!1138739))

(assert (=> b!901474 m!1138739))

(assert (=> b!901474 m!1138747))

(assert (=> b!901470 m!1138735))

(declare-fun m!1138859 () Bool)

(assert (=> b!901479 m!1138859))

(assert (=> b!901468 m!1138735))

(assert (=> b!901132 d!278385))

(declare-fun d!278387 () Bool)

(declare-fun lt!334684 () Int)

(assert (=> d!278387 (>= lt!334684 0)))

(declare-fun e!589330 () Int)

(assert (=> d!278387 (= lt!334684 e!589330)))

(declare-fun c!146021 () Bool)

(assert (=> d!278387 (= c!146021 (is-Nil!9580 s!10566))))

(assert (=> d!278387 (= (size!7871 s!10566) lt!334684)))

(declare-fun b!901484 () Bool)

(assert (=> b!901484 (= e!589330 0)))

(declare-fun b!901485 () Bool)

(assert (=> b!901485 (= e!589330 (+ 1 (size!7871 (t!100642 s!10566))))))

(assert (= (and d!278387 c!146021) b!901484))

(assert (= (and d!278387 (not c!146021)) b!901485))

(declare-fun m!1138861 () Bool)

(assert (=> b!901485 m!1138861))

(assert (=> b!901132 d!278387))

(declare-fun d!278389 () Bool)

(assert (=> d!278389 (= (matchR!904 lt!334600 (_2!6193 lt!334603)) (matchR!904 (removeUselessConcat!79 lt!334600) (_2!6193 lt!334603)))))

(declare-fun lt!334690 () Unit!14331)

(declare-fun choose!5441 (Regex!2366 List!9596) Unit!14331)

(assert (=> d!278389 (= lt!334690 (choose!5441 lt!334600 (_2!6193 lt!334603)))))

(assert (=> d!278389 (validRegex!835 lt!334600)))

(assert (=> d!278389 (= (lemmaRemoveUselessConcatSound!71 lt!334600 (_2!6193 lt!334603)) lt!334690)))

(declare-fun bs!235247 () Bool)

(assert (= bs!235247 d!278389))

(declare-fun m!1138865 () Bool)

(assert (=> bs!235247 m!1138865))

(assert (=> bs!235247 m!1138675))

(assert (=> bs!235247 m!1138675))

(declare-fun m!1138867 () Bool)

(assert (=> bs!235247 m!1138867))

(assert (=> bs!235247 m!1138657))

(assert (=> bs!235247 m!1138817))

(assert (=> b!901132 d!278389))

(declare-fun b!901486 () Bool)

(declare-fun e!589333 () Bool)

(declare-fun e!589331 () Bool)

(assert (=> b!901486 (= e!589333 e!589331)))

(declare-fun res!409936 () Bool)

(assert (=> b!901486 (=> res!409936 e!589331)))

(declare-fun call!53771 () Bool)

(assert (=> b!901486 (= res!409936 call!53771)))

(declare-fun d!278393 () Bool)

(declare-fun e!589334 () Bool)

(assert (=> d!278393 e!589334))

(declare-fun c!146024 () Bool)

(assert (=> d!278393 (= c!146024 (is-EmptyExpr!2366 lt!334597))))

(declare-fun lt!334691 () Bool)

(declare-fun e!589335 () Bool)

(assert (=> d!278393 (= lt!334691 e!589335)))

(declare-fun c!146022 () Bool)

(assert (=> d!278393 (= c!146022 (isEmpty!5783 (_2!6193 lt!334603)))))

(assert (=> d!278393 (validRegex!835 lt!334597)))

(assert (=> d!278393 (= (matchR!904 lt!334597 (_2!6193 lt!334603)) lt!334691)))

(declare-fun b!901487 () Bool)

(declare-fun e!589337 () Bool)

(assert (=> b!901487 (= e!589337 (not lt!334691))))

(declare-fun b!901488 () Bool)

(declare-fun e!589336 () Bool)

(assert (=> b!901488 (= e!589336 (= (head!1596 (_2!6193 lt!334603)) (c!145948 lt!334597)))))

(declare-fun b!901489 () Bool)

(declare-fun res!409932 () Bool)

(assert (=> b!901489 (=> (not res!409932) (not e!589336))))

(assert (=> b!901489 (= res!409932 (not call!53771))))

(declare-fun b!901490 () Bool)

(assert (=> b!901490 (= e!589331 (not (= (head!1596 (_2!6193 lt!334603)) (c!145948 lt!334597))))))

(declare-fun b!901491 () Bool)

(declare-fun res!409934 () Bool)

(declare-fun e!589332 () Bool)

(assert (=> b!901491 (=> res!409934 e!589332)))

(assert (=> b!901491 (= res!409934 e!589336)))

(declare-fun res!409933 () Bool)

(assert (=> b!901491 (=> (not res!409933) (not e!589336))))

(assert (=> b!901491 (= res!409933 lt!334691)))

(declare-fun b!901492 () Bool)

(assert (=> b!901492 (= e!589334 (= lt!334691 call!53771))))

(declare-fun b!901493 () Bool)

(assert (=> b!901493 (= e!589335 (matchR!904 (derivativeStep!443 lt!334597 (head!1596 (_2!6193 lt!334603))) (tail!1158 (_2!6193 lt!334603))))))

(declare-fun b!901494 () Bool)

(declare-fun res!409931 () Bool)

(assert (=> b!901494 (=> (not res!409931) (not e!589336))))

(assert (=> b!901494 (= res!409931 (isEmpty!5783 (tail!1158 (_2!6193 lt!334603))))))

(declare-fun b!901495 () Bool)

(assert (=> b!901495 (= e!589334 e!589337)))

(declare-fun c!146023 () Bool)

(assert (=> b!901495 (= c!146023 (is-EmptyLang!2366 lt!334597))))

(declare-fun b!901496 () Bool)

(declare-fun res!409937 () Bool)

(assert (=> b!901496 (=> res!409937 e!589332)))

(assert (=> b!901496 (= res!409937 (not (is-ElementMatch!2366 lt!334597)))))

(assert (=> b!901496 (= e!589337 e!589332)))

(declare-fun b!901497 () Bool)

(assert (=> b!901497 (= e!589332 e!589333)))

(declare-fun res!409935 () Bool)

(assert (=> b!901497 (=> (not res!409935) (not e!589333))))

(assert (=> b!901497 (= res!409935 (not lt!334691))))

(declare-fun bm!53766 () Bool)

(assert (=> bm!53766 (= call!53771 (isEmpty!5783 (_2!6193 lt!334603)))))

(declare-fun b!901498 () Bool)

(declare-fun res!409938 () Bool)

(assert (=> b!901498 (=> res!409938 e!589331)))

(assert (=> b!901498 (= res!409938 (not (isEmpty!5783 (tail!1158 (_2!6193 lt!334603)))))))

(declare-fun b!901499 () Bool)

(assert (=> b!901499 (= e!589335 (nullable!631 lt!334597))))

(assert (= (and d!278393 c!146022) b!901499))

(assert (= (and d!278393 (not c!146022)) b!901493))

(assert (= (and d!278393 c!146024) b!901492))

(assert (= (and d!278393 (not c!146024)) b!901495))

(assert (= (and b!901495 c!146023) b!901487))

(assert (= (and b!901495 (not c!146023)) b!901496))

(assert (= (and b!901496 (not res!409937)) b!901491))

(assert (= (and b!901491 res!409933) b!901489))

(assert (= (and b!901489 res!409932) b!901494))

(assert (= (and b!901494 res!409931) b!901488))

(assert (= (and b!901491 (not res!409934)) b!901497))

(assert (= (and b!901497 res!409935) b!901486))

(assert (= (and b!901486 (not res!409936)) b!901498))

(assert (= (and b!901498 (not res!409938)) b!901490))

(assert (= (or b!901492 b!901486 b!901489) bm!53766))

(assert (=> b!901493 m!1138807))

(assert (=> b!901493 m!1138807))

(declare-fun m!1138871 () Bool)

(assert (=> b!901493 m!1138871))

(assert (=> b!901493 m!1138811))

(assert (=> b!901493 m!1138871))

(assert (=> b!901493 m!1138811))

(declare-fun m!1138873 () Bool)

(assert (=> b!901493 m!1138873))

(assert (=> d!278393 m!1138815))

(declare-fun m!1138875 () Bool)

(assert (=> d!278393 m!1138875))

(assert (=> bm!53766 m!1138815))

(assert (=> b!901498 m!1138811))

(assert (=> b!901498 m!1138811))

(assert (=> b!901498 m!1138819))

(assert (=> b!901494 m!1138811))

(assert (=> b!901494 m!1138811))

(assert (=> b!901494 m!1138819))

(assert (=> b!901490 m!1138807))

(declare-fun m!1138877 () Bool)

(assert (=> b!901499 m!1138877))

(assert (=> b!901488 m!1138807))

(assert (=> b!901132 d!278393))

(declare-fun bm!53767 () Bool)

(declare-fun call!53774 () Regex!2366)

(declare-fun call!53775 () Regex!2366)

(assert (=> bm!53767 (= call!53774 call!53775)))

(declare-fun b!901500 () Bool)

(declare-fun c!146026 () Bool)

(assert (=> b!901500 (= c!146026 (is-Star!2366 (reg!2695 r!15766)))))

(declare-fun e!589342 () Regex!2366)

(declare-fun e!589339 () Regex!2366)

(assert (=> b!901500 (= e!589342 e!589339)))

(declare-fun bm!53768 () Bool)

(declare-fun call!53772 () Regex!2366)

(declare-fun call!53773 () Regex!2366)

(assert (=> bm!53768 (= call!53772 call!53773)))

(declare-fun b!901501 () Bool)

(declare-fun c!146027 () Bool)

(assert (=> b!901501 (= c!146027 (is-Concat!4199 (reg!2695 r!15766)))))

(declare-fun e!589343 () Regex!2366)

(declare-fun e!589338 () Regex!2366)

(assert (=> b!901501 (= e!589343 e!589338)))

(declare-fun b!901502 () Bool)

(assert (=> b!901502 (= e!589343 call!53775)))

(declare-fun bm!53769 () Bool)

(declare-fun c!146028 () Bool)

(assert (=> bm!53769 (= call!53775 (removeUselessConcat!79 (ite c!146028 (regOne!5244 (reg!2695 r!15766)) (ite c!146027 (regTwo!5244 (reg!2695 r!15766)) (regOne!5245 (reg!2695 r!15766))))))))

(declare-fun b!901503 () Bool)

(declare-fun e!589341 () Regex!2366)

(assert (=> b!901503 (= e!589341 e!589343)))

(assert (=> b!901503 (= c!146028 (and (is-Concat!4199 (reg!2695 r!15766)) (is-EmptyExpr!2366 (regTwo!5244 (reg!2695 r!15766)))))))

(declare-fun d!278397 () Bool)

(declare-fun e!589340 () Bool)

(assert (=> d!278397 e!589340))

(declare-fun res!409939 () Bool)

(assert (=> d!278397 (=> (not res!409939) (not e!589340))))

(declare-fun lt!334692 () Regex!2366)

(assert (=> d!278397 (= res!409939 (validRegex!835 lt!334692))))

(assert (=> d!278397 (= lt!334692 e!589341)))

(declare-fun c!146029 () Bool)

(assert (=> d!278397 (= c!146029 (and (is-Concat!4199 (reg!2695 r!15766)) (is-EmptyExpr!2366 (regOne!5244 (reg!2695 r!15766)))))))

(assert (=> d!278397 (validRegex!835 (reg!2695 r!15766))))

(assert (=> d!278397 (= (removeUselessConcat!79 (reg!2695 r!15766)) lt!334692)))

(declare-fun b!901504 () Bool)

(declare-fun call!53776 () Regex!2366)

(assert (=> b!901504 (= e!589342 (Union!2366 call!53774 call!53776))))

(declare-fun b!901505 () Bool)

(assert (=> b!901505 (= e!589339 (reg!2695 r!15766))))

(declare-fun b!901506 () Bool)

(assert (=> b!901506 (= e!589338 e!589342)))

(declare-fun c!146025 () Bool)

(assert (=> b!901506 (= c!146025 (is-Union!2366 (reg!2695 r!15766)))))

(declare-fun bm!53770 () Bool)

(assert (=> bm!53770 (= call!53773 (removeUselessConcat!79 (ite c!146029 (regTwo!5244 (reg!2695 r!15766)) (ite c!146027 (regOne!5244 (reg!2695 r!15766)) (ite c!146025 (regTwo!5245 (reg!2695 r!15766)) (reg!2695 (reg!2695 r!15766)))))))))

(declare-fun b!901507 () Bool)

(assert (=> b!901507 (= e!589338 (Concat!4199 call!53772 call!53774))))

(declare-fun bm!53771 () Bool)

(assert (=> bm!53771 (= call!53776 call!53772)))

(declare-fun b!901508 () Bool)

(assert (=> b!901508 (= e!589340 (= (nullable!631 lt!334692) (nullable!631 (reg!2695 r!15766))))))

(declare-fun b!901509 () Bool)

(assert (=> b!901509 (= e!589339 (Star!2366 call!53776))))

(declare-fun b!901510 () Bool)

(assert (=> b!901510 (= e!589341 call!53773)))

(assert (= (and d!278397 c!146029) b!901510))

(assert (= (and d!278397 (not c!146029)) b!901503))

(assert (= (and b!901503 c!146028) b!901502))

(assert (= (and b!901503 (not c!146028)) b!901501))

(assert (= (and b!901501 c!146027) b!901507))

(assert (= (and b!901501 (not c!146027)) b!901506))

(assert (= (and b!901506 c!146025) b!901504))

(assert (= (and b!901506 (not c!146025)) b!901500))

(assert (= (and b!901500 c!146026) b!901509))

(assert (= (and b!901500 (not c!146026)) b!901505))

(assert (= (or b!901504 b!901509) bm!53771))

(assert (= (or b!901507 b!901504) bm!53767))

(assert (= (or b!901507 bm!53771) bm!53768))

(assert (= (or b!901502 bm!53767) bm!53769))

(assert (= (or b!901510 bm!53768) bm!53770))

(assert (= (and d!278397 res!409939) b!901508))

(declare-fun m!1138879 () Bool)

(assert (=> bm!53769 m!1138879))

(declare-fun m!1138881 () Bool)

(assert (=> d!278397 m!1138881))

(assert (=> d!278397 m!1138745))

(declare-fun m!1138883 () Bool)

(assert (=> bm!53770 m!1138883))

(declare-fun m!1138885 () Bool)

(assert (=> b!901508 m!1138885))

(assert (=> b!901508 m!1138749))

(assert (=> b!901132 d!278397))

(declare-fun d!278401 () Bool)

(assert (=> d!278401 (= (matchR!904 (reg!2695 r!15766) (_1!6193 lt!334603)) (matchR!904 (removeUselessConcat!79 (reg!2695 r!15766)) (_1!6193 lt!334603)))))

(declare-fun lt!334693 () Unit!14331)

(assert (=> d!278401 (= lt!334693 (choose!5441 (reg!2695 r!15766) (_1!6193 lt!334603)))))

(assert (=> d!278401 (validRegex!835 (reg!2695 r!15766))))

(assert (=> d!278401 (= (lemmaRemoveUselessConcatSound!71 (reg!2695 r!15766) (_1!6193 lt!334603)) lt!334693)))

(declare-fun bs!235249 () Bool)

(assert (= bs!235249 d!278401))

(declare-fun m!1138887 () Bool)

(assert (=> bs!235249 m!1138887))

(assert (=> bs!235249 m!1138669))

(assert (=> bs!235249 m!1138669))

(declare-fun m!1138889 () Bool)

(assert (=> bs!235249 m!1138889))

(assert (=> bs!235249 m!1138659))

(assert (=> bs!235249 m!1138745))

(assert (=> b!901132 d!278401))

(declare-fun d!278403 () Bool)

(declare-fun lt!334694 () Int)

(assert (=> d!278403 (>= lt!334694 0)))

(declare-fun e!589344 () Int)

(assert (=> d!278403 (= lt!334694 e!589344)))

(declare-fun c!146030 () Bool)

(assert (=> d!278403 (= c!146030 (is-Nil!9580 (_2!6193 lt!334603)))))

(assert (=> d!278403 (= (size!7871 (_2!6193 lt!334603)) lt!334694)))

(declare-fun b!901511 () Bool)

(assert (=> b!901511 (= e!589344 0)))

(declare-fun b!901512 () Bool)

(assert (=> b!901512 (= e!589344 (+ 1 (size!7871 (t!100642 (_2!6193 lt!334603)))))))

(assert (= (and d!278403 c!146030) b!901511))

(assert (= (and d!278403 (not c!146030)) b!901512))

(declare-fun m!1138891 () Bool)

(assert (=> b!901512 m!1138891))

(assert (=> b!901132 d!278403))

(declare-fun bs!235250 () Bool)

(declare-fun b!901553 () Bool)

(assert (= bs!235250 (and b!901553 b!901137)))

(declare-fun lambda!28208 () Int)

(assert (=> bs!235250 (= (= r!15766 lt!334600) (= lambda!28208 lambda!28178))))

(declare-fun bs!235251 () Bool)

(assert (= bs!235251 (and b!901553 d!278373)))

(assert (=> bs!235251 (not (= lambda!28208 lambda!28198))))

(assert (=> bs!235251 (= (= r!15766 (Star!2366 (reg!2695 r!15766))) (= lambda!28208 lambda!28199))))

(assert (=> bs!235250 (not (= lambda!28208 lambda!28177))))

(declare-fun bs!235252 () Bool)

(assert (= bs!235252 (and b!901553 d!278371)))

(assert (=> bs!235252 (not (= lambda!28208 lambda!28191))))

(assert (=> b!901553 true))

(assert (=> b!901553 true))

(declare-fun bs!235253 () Bool)

(declare-fun b!901557 () Bool)

(assert (= bs!235253 (and b!901557 b!901137)))

(declare-fun lambda!28209 () Int)

(assert (=> bs!235253 (not (= lambda!28209 lambda!28178))))

(declare-fun bs!235254 () Bool)

(assert (= bs!235254 (and b!901557 d!278373)))

(assert (=> bs!235254 (not (= lambda!28209 lambda!28198))))

(declare-fun bs!235255 () Bool)

(assert (= bs!235255 (and b!901557 b!901553)))

(assert (=> bs!235255 (not (= lambda!28209 lambda!28208))))

(assert (=> bs!235254 (not (= lambda!28209 lambda!28199))))

(assert (=> bs!235253 (not (= lambda!28209 lambda!28177))))

(declare-fun bs!235256 () Bool)

(assert (= bs!235256 (and b!901557 d!278371)))

(assert (=> bs!235256 (not (= lambda!28209 lambda!28191))))

(assert (=> b!901557 true))

(assert (=> b!901557 true))

(declare-fun b!901549 () Bool)

(declare-fun e!589371 () Bool)

(declare-fun call!53782 () Bool)

(assert (=> b!901549 (= e!589371 call!53782)))

(declare-fun b!901550 () Bool)

(declare-fun e!589369 () Bool)

(declare-fun e!589366 () Bool)

(assert (=> b!901550 (= e!589369 e!589366)))

(declare-fun c!146042 () Bool)

(assert (=> b!901550 (= c!146042 (is-Star!2366 r!15766))))

(declare-fun b!901551 () Bool)

(declare-fun e!589365 () Bool)

(assert (=> b!901551 (= e!589369 e!589365)))

(declare-fun res!409962 () Bool)

(assert (=> b!901551 (= res!409962 (matchRSpec!167 (regOne!5245 r!15766) s!10566))))

(assert (=> b!901551 (=> res!409962 e!589365)))

(declare-fun bm!53776 () Bool)

(declare-fun call!53781 () Bool)

(assert (=> bm!53776 (= call!53781 (Exists!143 (ite c!146042 lambda!28208 lambda!28209)))))

(declare-fun b!901552 () Bool)

(declare-fun c!146039 () Bool)

(assert (=> b!901552 (= c!146039 (is-ElementMatch!2366 r!15766))))

(declare-fun e!589367 () Bool)

(declare-fun e!589368 () Bool)

(assert (=> b!901552 (= e!589367 e!589368)))

(declare-fun e!589370 () Bool)

(assert (=> b!901553 (= e!589370 call!53781)))

(declare-fun b!901554 () Bool)

(assert (=> b!901554 (= e!589365 (matchRSpec!167 (regTwo!5245 r!15766) s!10566))))

(declare-fun b!901555 () Bool)

(declare-fun res!409961 () Bool)

(assert (=> b!901555 (=> res!409961 e!589370)))

(assert (=> b!901555 (= res!409961 call!53782)))

(assert (=> b!901555 (= e!589366 e!589370)))

(declare-fun d!278405 () Bool)

(declare-fun c!146041 () Bool)

(assert (=> d!278405 (= c!146041 (is-EmptyExpr!2366 r!15766))))

(assert (=> d!278405 (= (matchRSpec!167 r!15766 s!10566) e!589371)))

(declare-fun bm!53777 () Bool)

(assert (=> bm!53777 (= call!53782 (isEmpty!5783 s!10566))))

(declare-fun b!901556 () Bool)

(declare-fun c!146040 () Bool)

(assert (=> b!901556 (= c!146040 (is-Union!2366 r!15766))))

(assert (=> b!901556 (= e!589368 e!589369)))

(assert (=> b!901557 (= e!589366 call!53781)))

(declare-fun b!901558 () Bool)

(assert (=> b!901558 (= e!589371 e!589367)))

(declare-fun res!409960 () Bool)

(assert (=> b!901558 (= res!409960 (not (is-EmptyLang!2366 r!15766)))))

(assert (=> b!901558 (=> (not res!409960) (not e!589367))))

(declare-fun b!901559 () Bool)

(assert (=> b!901559 (= e!589368 (= s!10566 (Cons!9580 (c!145948 r!15766) Nil!9580)))))

(assert (= (and d!278405 c!146041) b!901549))

(assert (= (and d!278405 (not c!146041)) b!901558))

(assert (= (and b!901558 res!409960) b!901552))

(assert (= (and b!901552 c!146039) b!901559))

(assert (= (and b!901552 (not c!146039)) b!901556))

(assert (= (and b!901556 c!146040) b!901551))

(assert (= (and b!901556 (not c!146040)) b!901550))

(assert (= (and b!901551 (not res!409962)) b!901554))

(assert (= (and b!901550 c!146042) b!901555))

(assert (= (and b!901550 (not c!146042)) b!901557))

(assert (= (and b!901555 (not res!409961)) b!901553))

(assert (= (or b!901553 b!901557) bm!53776))

(assert (= (or b!901549 b!901555) bm!53777))

(declare-fun m!1138893 () Bool)

(assert (=> b!901551 m!1138893))

(declare-fun m!1138895 () Bool)

(assert (=> bm!53776 m!1138895))

(declare-fun m!1138897 () Bool)

(assert (=> b!901554 m!1138897))

(assert (=> bm!53777 m!1138637))

(assert (=> b!901145 d!278405))

(declare-fun b!901560 () Bool)

(declare-fun e!589374 () Bool)

(declare-fun e!589372 () Bool)

(assert (=> b!901560 (= e!589374 e!589372)))

(declare-fun res!409968 () Bool)

(assert (=> b!901560 (=> res!409968 e!589372)))

(declare-fun call!53783 () Bool)

(assert (=> b!901560 (= res!409968 call!53783)))

(declare-fun d!278407 () Bool)

(declare-fun e!589375 () Bool)

(assert (=> d!278407 e!589375))

(declare-fun c!146045 () Bool)

(assert (=> d!278407 (= c!146045 (is-EmptyExpr!2366 r!15766))))

(declare-fun lt!334697 () Bool)

(declare-fun e!589376 () Bool)

(assert (=> d!278407 (= lt!334697 e!589376)))

(declare-fun c!146043 () Bool)

(assert (=> d!278407 (= c!146043 (isEmpty!5783 s!10566))))

(assert (=> d!278407 (validRegex!835 r!15766)))

(assert (=> d!278407 (= (matchR!904 r!15766 s!10566) lt!334697)))

(declare-fun b!901561 () Bool)

(declare-fun e!589378 () Bool)

(assert (=> b!901561 (= e!589378 (not lt!334697))))

(declare-fun b!901562 () Bool)

(declare-fun e!589377 () Bool)

(assert (=> b!901562 (= e!589377 (= (head!1596 s!10566) (c!145948 r!15766)))))

(declare-fun b!901563 () Bool)

(declare-fun res!409964 () Bool)

(assert (=> b!901563 (=> (not res!409964) (not e!589377))))

(assert (=> b!901563 (= res!409964 (not call!53783))))

(declare-fun b!901564 () Bool)

(assert (=> b!901564 (= e!589372 (not (= (head!1596 s!10566) (c!145948 r!15766))))))

(declare-fun b!901565 () Bool)

(declare-fun res!409966 () Bool)

(declare-fun e!589373 () Bool)

(assert (=> b!901565 (=> res!409966 e!589373)))

(assert (=> b!901565 (= res!409966 e!589377)))

(declare-fun res!409965 () Bool)

(assert (=> b!901565 (=> (not res!409965) (not e!589377))))

(assert (=> b!901565 (= res!409965 lt!334697)))

(declare-fun b!901566 () Bool)

(assert (=> b!901566 (= e!589375 (= lt!334697 call!53783))))

(declare-fun b!901567 () Bool)

(assert (=> b!901567 (= e!589376 (matchR!904 (derivativeStep!443 r!15766 (head!1596 s!10566)) (tail!1158 s!10566)))))

(declare-fun b!901568 () Bool)

(declare-fun res!409963 () Bool)

(assert (=> b!901568 (=> (not res!409963) (not e!589377))))

(assert (=> b!901568 (= res!409963 (isEmpty!5783 (tail!1158 s!10566)))))

(declare-fun b!901569 () Bool)

(assert (=> b!901569 (= e!589375 e!589378)))

(declare-fun c!146044 () Bool)

(assert (=> b!901569 (= c!146044 (is-EmptyLang!2366 r!15766))))

(declare-fun b!901570 () Bool)

(declare-fun res!409969 () Bool)

(assert (=> b!901570 (=> res!409969 e!589373)))

(assert (=> b!901570 (= res!409969 (not (is-ElementMatch!2366 r!15766)))))

(assert (=> b!901570 (= e!589378 e!589373)))

(declare-fun b!901571 () Bool)

(assert (=> b!901571 (= e!589373 e!589374)))

(declare-fun res!409967 () Bool)

(assert (=> b!901571 (=> (not res!409967) (not e!589374))))

(assert (=> b!901571 (= res!409967 (not lt!334697))))

(declare-fun bm!53778 () Bool)

(assert (=> bm!53778 (= call!53783 (isEmpty!5783 s!10566))))

(declare-fun b!901572 () Bool)

(declare-fun res!409970 () Bool)

(assert (=> b!901572 (=> res!409970 e!589372)))

(assert (=> b!901572 (= res!409970 (not (isEmpty!5783 (tail!1158 s!10566))))))

(declare-fun b!901573 () Bool)

(assert (=> b!901573 (= e!589376 (nullable!631 r!15766))))

(assert (= (and d!278407 c!146043) b!901573))

(assert (= (and d!278407 (not c!146043)) b!901567))

(assert (= (and d!278407 c!146045) b!901566))

(assert (= (and d!278407 (not c!146045)) b!901569))

(assert (= (and b!901569 c!146044) b!901561))

(assert (= (and b!901569 (not c!146044)) b!901570))

(assert (= (and b!901570 (not res!409969)) b!901565))

(assert (= (and b!901565 res!409965) b!901563))

(assert (= (and b!901563 res!409964) b!901568))

(assert (= (and b!901568 res!409963) b!901562))

(assert (= (and b!901565 (not res!409966)) b!901571))

(assert (= (and b!901571 res!409967) b!901560))

(assert (= (and b!901560 (not res!409968)) b!901572))

(assert (= (and b!901572 (not res!409970)) b!901564))

(assert (= (or b!901566 b!901560 b!901563) bm!53778))

(declare-fun m!1138899 () Bool)

(assert (=> b!901567 m!1138899))

(assert (=> b!901567 m!1138899))

(declare-fun m!1138901 () Bool)

(assert (=> b!901567 m!1138901))

(declare-fun m!1138903 () Bool)

(assert (=> b!901567 m!1138903))

(assert (=> b!901567 m!1138901))

(assert (=> b!901567 m!1138903))

(declare-fun m!1138905 () Bool)

(assert (=> b!901567 m!1138905))

(assert (=> d!278407 m!1138637))

(assert (=> d!278407 m!1138653))

(assert (=> bm!53778 m!1138637))

(assert (=> b!901572 m!1138903))

(assert (=> b!901572 m!1138903))

(declare-fun m!1138907 () Bool)

(assert (=> b!901572 m!1138907))

(assert (=> b!901568 m!1138903))

(assert (=> b!901568 m!1138903))

(assert (=> b!901568 m!1138907))

(assert (=> b!901564 m!1138899))

(declare-fun m!1138909 () Bool)

(assert (=> b!901573 m!1138909))

(assert (=> b!901562 m!1138899))

(assert (=> b!901145 d!278407))

(declare-fun d!278409 () Bool)

(assert (=> d!278409 (= (matchR!904 r!15766 s!10566) (matchRSpec!167 r!15766 s!10566))))

(declare-fun lt!334698 () Unit!14331)

(assert (=> d!278409 (= lt!334698 (choose!5440 r!15766 s!10566))))

(assert (=> d!278409 (validRegex!835 r!15766)))

(assert (=> d!278409 (= (mainMatchTheorem!167 r!15766 s!10566) lt!334698)))

(declare-fun bs!235257 () Bool)

(assert (= bs!235257 d!278409))

(assert (=> bs!235257 m!1138649))

(assert (=> bs!235257 m!1138647))

(declare-fun m!1138911 () Bool)

(assert (=> bs!235257 m!1138911))

(assert (=> bs!235257 m!1138653))

(assert (=> b!901145 d!278409))

(declare-fun b!901580 () Bool)

(declare-fun e!589382 () Bool)

(declare-fun e!589383 () Bool)

(assert (=> b!901580 (= e!589382 e!589383)))

(declare-fun c!146047 () Bool)

(assert (=> b!901580 (= c!146047 (is-Union!2366 r!15766))))

(declare-fun b!901581 () Bool)

(declare-fun res!409979 () Bool)

(declare-fun e!589385 () Bool)

(assert (=> b!901581 (=> (not res!409979) (not e!589385))))

(declare-fun call!53785 () Bool)

(assert (=> b!901581 (= res!409979 call!53785)))

(assert (=> b!901581 (= e!589383 e!589385)))

(declare-fun c!146046 () Bool)

(declare-fun bm!53779 () Bool)

(declare-fun call!53784 () Bool)

(assert (=> bm!53779 (= call!53784 (validRegex!835 (ite c!146046 (reg!2695 r!15766) (ite c!146047 (regOne!5245 r!15766) (regOne!5244 r!15766)))))))

(declare-fun b!901582 () Bool)

(declare-fun e!589386 () Bool)

(assert (=> b!901582 (= e!589386 call!53784)))

(declare-fun bm!53780 () Bool)

(declare-fun call!53786 () Bool)

(assert (=> bm!53780 (= call!53786 (validRegex!835 (ite c!146047 (regTwo!5245 r!15766) (regTwo!5244 r!15766))))))

(declare-fun b!901583 () Bool)

(declare-fun e!589387 () Bool)

(declare-fun e!589381 () Bool)

(assert (=> b!901583 (= e!589387 e!589381)))

(declare-fun res!409981 () Bool)

(assert (=> b!901583 (=> (not res!409981) (not e!589381))))

(assert (=> b!901583 (= res!409981 call!53785)))

(declare-fun b!901584 () Bool)

(assert (=> b!901584 (= e!589381 call!53786)))

(declare-fun b!901585 () Bool)

(declare-fun res!409978 () Bool)

(assert (=> b!901585 (=> res!409978 e!589387)))

(assert (=> b!901585 (= res!409978 (not (is-Concat!4199 r!15766)))))

(assert (=> b!901585 (= e!589383 e!589387)))

(declare-fun d!278411 () Bool)

(declare-fun res!409980 () Bool)

(declare-fun e!589384 () Bool)

(assert (=> d!278411 (=> res!409980 e!589384)))

(assert (=> d!278411 (= res!409980 (is-ElementMatch!2366 r!15766))))

(assert (=> d!278411 (= (validRegex!835 r!15766) e!589384)))

(declare-fun b!901586 () Bool)

(assert (=> b!901586 (= e!589384 e!589382)))

(assert (=> b!901586 (= c!146046 (is-Star!2366 r!15766))))

(declare-fun b!901587 () Bool)

(assert (=> b!901587 (= e!589382 e!589386)))

(declare-fun res!409977 () Bool)

(assert (=> b!901587 (= res!409977 (not (nullable!631 (reg!2695 r!15766))))))

(assert (=> b!901587 (=> (not res!409977) (not e!589386))))

(declare-fun b!901588 () Bool)

(assert (=> b!901588 (= e!589385 call!53786)))

(declare-fun bm!53781 () Bool)

(assert (=> bm!53781 (= call!53785 call!53784)))

(assert (= (and d!278411 (not res!409980)) b!901586))

(assert (= (and b!901586 c!146046) b!901587))

(assert (= (and b!901586 (not c!146046)) b!901580))

(assert (= (and b!901587 res!409977) b!901582))

(assert (= (and b!901580 c!146047) b!901581))

(assert (= (and b!901580 (not c!146047)) b!901585))

(assert (= (and b!901581 res!409979) b!901588))

(assert (= (and b!901585 (not res!409978)) b!901583))

(assert (= (and b!901583 res!409981) b!901584))

(assert (= (or b!901588 b!901584) bm!53780))

(assert (= (or b!901581 b!901583) bm!53781))

(assert (= (or b!901582 bm!53781) bm!53779))

(declare-fun m!1138913 () Bool)

(assert (=> bm!53779 m!1138913))

(declare-fun m!1138915 () Bool)

(assert (=> bm!53780 m!1138915))

(assert (=> b!901587 m!1138749))

(assert (=> start!81100 d!278411))

(declare-fun e!589390 () Bool)

(assert (=> b!901140 (= tp!282622 e!589390)))

(declare-fun b!901601 () Bool)

(declare-fun tp!282652 () Bool)

(assert (=> b!901601 (= e!589390 tp!282652)))

(declare-fun b!901602 () Bool)

(declare-fun tp!282653 () Bool)

(declare-fun tp!282651 () Bool)

(assert (=> b!901602 (= e!589390 (and tp!282653 tp!282651))))

(declare-fun b!901600 () Bool)

(declare-fun tp!282655 () Bool)

(declare-fun tp!282654 () Bool)

(assert (=> b!901600 (= e!589390 (and tp!282655 tp!282654))))

(declare-fun b!901599 () Bool)

(assert (=> b!901599 (= e!589390 tp_is_empty!4375)))

(assert (= (and b!901140 (is-ElementMatch!2366 (regOne!5244 r!15766))) b!901599))

(assert (= (and b!901140 (is-Concat!4199 (regOne!5244 r!15766))) b!901600))

(assert (= (and b!901140 (is-Star!2366 (regOne!5244 r!15766))) b!901601))

(assert (= (and b!901140 (is-Union!2366 (regOne!5244 r!15766))) b!901602))

(declare-fun e!589391 () Bool)

(assert (=> b!901140 (= tp!282617 e!589391)))

(declare-fun b!901605 () Bool)

(declare-fun tp!282657 () Bool)

(assert (=> b!901605 (= e!589391 tp!282657)))

(declare-fun b!901606 () Bool)

(declare-fun tp!282658 () Bool)

(declare-fun tp!282656 () Bool)

(assert (=> b!901606 (= e!589391 (and tp!282658 tp!282656))))

(declare-fun b!901604 () Bool)

(declare-fun tp!282660 () Bool)

(declare-fun tp!282659 () Bool)

(assert (=> b!901604 (= e!589391 (and tp!282660 tp!282659))))

(declare-fun b!901603 () Bool)

(assert (=> b!901603 (= e!589391 tp_is_empty!4375)))

(assert (= (and b!901140 (is-ElementMatch!2366 (regTwo!5244 r!15766))) b!901603))

(assert (= (and b!901140 (is-Concat!4199 (regTwo!5244 r!15766))) b!901604))

(assert (= (and b!901140 (is-Star!2366 (regTwo!5244 r!15766))) b!901605))

(assert (= (and b!901140 (is-Union!2366 (regTwo!5244 r!15766))) b!901606))

(declare-fun e!589392 () Bool)

(assert (=> b!901142 (= tp!282620 e!589392)))

(declare-fun b!901609 () Bool)

(declare-fun tp!282662 () Bool)

(assert (=> b!901609 (= e!589392 tp!282662)))

(declare-fun b!901610 () Bool)

(declare-fun tp!282663 () Bool)

(declare-fun tp!282661 () Bool)

(assert (=> b!901610 (= e!589392 (and tp!282663 tp!282661))))

(declare-fun b!901608 () Bool)

(declare-fun tp!282665 () Bool)

(declare-fun tp!282664 () Bool)

(assert (=> b!901608 (= e!589392 (and tp!282665 tp!282664))))

(declare-fun b!901607 () Bool)

(assert (=> b!901607 (= e!589392 tp_is_empty!4375)))

(assert (= (and b!901142 (is-ElementMatch!2366 (regOne!5245 r!15766))) b!901607))

(assert (= (and b!901142 (is-Concat!4199 (regOne!5245 r!15766))) b!901608))

(assert (= (and b!901142 (is-Star!2366 (regOne!5245 r!15766))) b!901609))

(assert (= (and b!901142 (is-Union!2366 (regOne!5245 r!15766))) b!901610))

(declare-fun e!589393 () Bool)

(assert (=> b!901142 (= tp!282618 e!589393)))

(declare-fun b!901613 () Bool)

(declare-fun tp!282667 () Bool)

(assert (=> b!901613 (= e!589393 tp!282667)))

(declare-fun b!901614 () Bool)

(declare-fun tp!282668 () Bool)

(declare-fun tp!282666 () Bool)

(assert (=> b!901614 (= e!589393 (and tp!282668 tp!282666))))

(declare-fun b!901612 () Bool)

(declare-fun tp!282670 () Bool)

(declare-fun tp!282669 () Bool)

(assert (=> b!901612 (= e!589393 (and tp!282670 tp!282669))))

(declare-fun b!901611 () Bool)

(assert (=> b!901611 (= e!589393 tp_is_empty!4375)))

(assert (= (and b!901142 (is-ElementMatch!2366 (regTwo!5245 r!15766))) b!901611))

(assert (= (and b!901142 (is-Concat!4199 (regTwo!5245 r!15766))) b!901612))

(assert (= (and b!901142 (is-Star!2366 (regTwo!5245 r!15766))) b!901613))

(assert (= (and b!901142 (is-Union!2366 (regTwo!5245 r!15766))) b!901614))

(declare-fun b!901619 () Bool)

(declare-fun e!589396 () Bool)

(declare-fun tp!282673 () Bool)

(assert (=> b!901619 (= e!589396 (and tp_is_empty!4375 tp!282673))))

(assert (=> b!901134 (= tp!282619 e!589396)))

(assert (= (and b!901134 (is-Cons!9580 (t!100642 s!10566))) b!901619))

(declare-fun e!589397 () Bool)

(assert (=> b!901144 (= tp!282621 e!589397)))

(declare-fun b!901622 () Bool)

(declare-fun tp!282675 () Bool)

(assert (=> b!901622 (= e!589397 tp!282675)))

(declare-fun b!901623 () Bool)

(declare-fun tp!282676 () Bool)

(declare-fun tp!282674 () Bool)

(assert (=> b!901623 (= e!589397 (and tp!282676 tp!282674))))

(declare-fun b!901621 () Bool)

(declare-fun tp!282678 () Bool)

(declare-fun tp!282677 () Bool)

(assert (=> b!901621 (= e!589397 (and tp!282678 tp!282677))))

(declare-fun b!901620 () Bool)

(assert (=> b!901620 (= e!589397 tp_is_empty!4375)))

(assert (= (and b!901144 (is-ElementMatch!2366 (reg!2695 r!15766))) b!901620))

(assert (= (and b!901144 (is-Concat!4199 (reg!2695 r!15766))) b!901621))

(assert (= (and b!901144 (is-Star!2366 (reg!2695 r!15766))) b!901622))

(assert (= (and b!901144 (is-Union!2366 (reg!2695 r!15766))) b!901623))

(push 1)

(assert (not b!901614))

(assert (not d!278361))

(assert (not d!278365))

(assert (not b!901494))

(assert (not d!278355))

(assert (not b!901610))

(assert (not bm!53766))

(assert (not b!901470))

(assert (not b!901493))

(assert (not bm!53778))

(assert (not b!901342))

(assert (not d!278369))

(assert (not b!901488))

(assert (not b!901551))

(assert (not d!278359))

(assert (not b!901345))

(assert (not b!901600))

(assert (not bm!53780))

(assert (not b!901609))

(assert (not b!901606))

(assert (not bm!53734))

(assert (not d!278385))

(assert (not b!901612))

(assert (not b!901343))

(assert (not bm!53740))

(assert (not b!901407))

(assert (not b!901479))

(assert (not bm!53779))

(assert (not b!901347))

(assert (not b!901602))

(assert (not b!901490))

(assert (not bm!53763))

(assert (not b!901623))

(assert (not b!901485))

(assert (not b!901398))

(assert (not b!901613))

(assert (not d!278371))

(assert (not b!901573))

(assert (not d!278409))

(assert (not b!901621))

(assert (not b!901567))

(assert (not b!901306))

(assert (not b!901396))

(assert (not bm!53733))

(assert (not b!901297))

(assert (not b!901619))

(assert (not bm!53770))

(assert (not b!901604))

(assert (not b!901572))

(assert (not d!278377))

(assert tp_is_empty!4375)

(assert (not d!278379))

(assert (not bm!53746))

(assert (not d!278407))

(assert (not b!901554))

(assert (not d!278397))

(assert (not d!278389))

(assert (not b!901463))

(assert (not bm!53765))

(assert (not b!901295))

(assert (not b!901301))

(assert (not b!901601))

(assert (not b!901622))

(assert (not b!901468))

(assert (not b!901235))

(assert (not d!278375))

(assert (not b!901564))

(assert (not b!901473))

(assert (not b!901478))

(assert (not bm!53777))

(assert (not b!901340))

(assert (not b!901346))

(assert (not bm!53769))

(assert (not d!278393))

(assert (not b!901508))

(assert (not b!901474))

(assert (not b!901562))

(assert (not b!901402))

(assert (not b!901498))

(assert (not b!901605))

(assert (not d!278401))

(assert (not b!901608))

(assert (not b!901300))

(assert (not b!901568))

(assert (not b!901512))

(assert (not b!901587))

(assert (not b!901401))

(assert (not b!901499))

(assert (not bm!53762))

(assert (not bm!53776))

(assert (not b!901406))

(assert (not b!901305))

(assert (not d!278373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

