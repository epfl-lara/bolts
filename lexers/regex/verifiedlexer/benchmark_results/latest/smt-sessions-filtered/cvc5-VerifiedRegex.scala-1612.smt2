; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82840 () Bool)

(assert start!82840)

(declare-fun b!922817 () Bool)

(assert (=> b!922817 true))

(assert (=> b!922817 true))

(declare-fun lambda!30184 () Int)

(declare-fun lambda!30183 () Int)

(assert (=> b!922817 (not (= lambda!30184 lambda!30183))))

(assert (=> b!922817 true))

(assert (=> b!922817 true))

(declare-fun bs!237068 () Bool)

(declare-fun b!922815 () Bool)

(assert (= bs!237068 (and b!922815 b!922817)))

(declare-datatypes ((C!5534 0))(
  ( (C!5535 (val!3015 Int)) )
))
(declare-datatypes ((Regex!2482 0))(
  ( (ElementMatch!2482 (c!149775 C!5534)) (Concat!4315 (regOne!5476 Regex!2482) (regTwo!5476 Regex!2482)) (EmptyExpr!2482) (Star!2482 (reg!2811 Regex!2482)) (EmptyLang!2482) (Union!2482 (regOne!5477 Regex!2482) (regTwo!5477 Regex!2482)) )
))
(declare-fun r!15766 () Regex!2482)

(declare-fun lt!338778 () Regex!2482)

(declare-fun lt!338781 () Regex!2482)

(declare-fun lambda!30185 () Int)

(assert (=> bs!237068 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30185 lambda!30183))))

(assert (=> bs!237068 (not (= lambda!30185 lambda!30184))))

(assert (=> b!922815 true))

(assert (=> b!922815 true))

(assert (=> b!922815 true))

(declare-fun lambda!30186 () Int)

(assert (=> bs!237068 (not (= lambda!30186 lambda!30183))))

(assert (=> bs!237068 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30186 lambda!30184))))

(assert (=> b!922815 (not (= lambda!30186 lambda!30185))))

(assert (=> b!922815 true))

(assert (=> b!922815 true))

(assert (=> b!922815 true))

(declare-fun b!922812 () Bool)

(declare-fun e!600655 () Bool)

(declare-fun tp!287216 () Bool)

(declare-fun tp!287217 () Bool)

(assert (=> b!922812 (= e!600655 (and tp!287216 tp!287217))))

(declare-fun b!922813 () Bool)

(declare-fun tp_is_empty!4607 () Bool)

(assert (=> b!922813 (= e!600655 tp_is_empty!4607)))

(declare-fun b!922814 () Bool)

(declare-fun e!600651 () Bool)

(declare-fun tp!287218 () Bool)

(assert (=> b!922814 (= e!600651 (and tp_is_empty!4607 tp!287218))))

(declare-fun res!419520 () Bool)

(declare-fun e!600656 () Bool)

(assert (=> start!82840 (=> (not res!419520) (not e!600656))))

(declare-fun validRegex!951 (Regex!2482) Bool)

(assert (=> start!82840 (= res!419520 (validRegex!951 r!15766))))

(assert (=> start!82840 e!600656))

(assert (=> start!82840 e!600655))

(assert (=> start!82840 e!600651))

(declare-fun e!600650 () Bool)

(declare-fun e!600654 () Bool)

(assert (=> b!922815 (= e!600650 e!600654)))

(declare-fun res!419521 () Bool)

(assert (=> b!922815 (=> res!419521 e!600654)))

(declare-fun lt!338780 () Bool)

(assert (=> b!922815 (= res!419521 (not lt!338780))))

(declare-fun Exists!253 (Int) Bool)

(assert (=> b!922815 (= (Exists!253 lambda!30185) (Exists!253 lambda!30186))))

(declare-datatypes ((Unit!14583 0))(
  ( (Unit!14584) )
))
(declare-fun lt!338779 () Unit!14583)

(declare-datatypes ((List!9712 0))(
  ( (Nil!9696) (Cons!9696 (h!15097 C!5534) (t!100758 List!9712)) )
))
(declare-fun s!10566 () List!9712)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!165 (Regex!2482 Regex!2482 List!9712) Unit!14583)

(assert (=> b!922815 (= lt!338779 (lemmaExistCutMatchRandMatchRSpecEquivalent!165 lt!338781 lt!338778 s!10566))))

(assert (=> b!922815 (= lt!338780 (Exists!253 lambda!30185))))

(declare-datatypes ((tuple2!10950 0))(
  ( (tuple2!10951 (_1!6301 List!9712) (_2!6301 List!9712)) )
))
(declare-datatypes ((Option!2117 0))(
  ( (None!2116) (Some!2116 (v!19533 tuple2!10950)) )
))
(declare-fun isDefined!1759 (Option!2117) Bool)

(declare-fun findConcatSeparation!223 (Regex!2482 Regex!2482 List!9712 List!9712 List!9712) Option!2117)

(assert (=> b!922815 (= lt!338780 (isDefined!1759 (findConcatSeparation!223 lt!338781 lt!338778 Nil!9696 s!10566 s!10566)))))

(declare-fun lt!338787 () Unit!14583)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!223 (Regex!2482 Regex!2482 List!9712) Unit!14583)

(assert (=> b!922815 (= lt!338787 (lemmaFindConcatSeparationEquivalentToExists!223 lt!338781 lt!338778 s!10566))))

(declare-fun lt!338785 () Regex!2482)

(declare-fun matchRSpec!283 (Regex!2482 List!9712) Bool)

(assert (=> b!922815 (matchRSpec!283 lt!338785 s!10566)))

(declare-fun lt!338782 () Unit!14583)

(declare-fun mainMatchTheorem!283 (Regex!2482 List!9712) Unit!14583)

(assert (=> b!922815 (= lt!338782 (mainMatchTheorem!283 lt!338785 s!10566))))

(declare-fun b!922816 () Bool)

(declare-fun tp!287213 () Bool)

(assert (=> b!922816 (= e!600655 tp!287213)))

(declare-fun e!600653 () Bool)

(declare-fun e!600652 () Bool)

(assert (=> b!922817 (= e!600653 e!600652)))

(declare-fun res!419519 () Bool)

(assert (=> b!922817 (=> res!419519 e!600652)))

(declare-fun isEmpty!5945 (List!9712) Bool)

(assert (=> b!922817 (= res!419519 (isEmpty!5945 s!10566))))

(assert (=> b!922817 (= (Exists!253 lambda!30183) (Exists!253 lambda!30184))))

(declare-fun lt!338788 () Unit!14583)

(assert (=> b!922817 (= lt!338788 (lemmaExistCutMatchRandMatchRSpecEquivalent!165 (regOne!5476 r!15766) (regTwo!5476 r!15766) s!10566))))

(assert (=> b!922817 (= (isDefined!1759 (findConcatSeparation!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) Nil!9696 s!10566 s!10566)) (Exists!253 lambda!30183))))

(declare-fun lt!338786 () Unit!14583)

(assert (=> b!922817 (= lt!338786 (lemmaFindConcatSeparationEquivalentToExists!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) s!10566))))

(declare-fun b!922818 () Bool)

(assert (=> b!922818 (= e!600652 e!600650)))

(declare-fun res!419518 () Bool)

(assert (=> b!922818 (=> res!419518 e!600650)))

(declare-fun matchR!1020 (Regex!2482 List!9712) Bool)

(assert (=> b!922818 (= res!419518 (not (matchR!1020 lt!338785 s!10566)))))

(assert (=> b!922818 (= lt!338785 (Concat!4315 lt!338781 lt!338778))))

(declare-fun removeUselessConcat!159 (Regex!2482) Regex!2482)

(assert (=> b!922818 (= lt!338778 (removeUselessConcat!159 (regTwo!5476 r!15766)))))

(assert (=> b!922818 (= lt!338781 (removeUselessConcat!159 (regOne!5476 r!15766)))))

(declare-fun b!922819 () Bool)

(assert (=> b!922819 (= e!600654 (validRegex!951 (regTwo!5476 r!15766)))))

(declare-fun b!922820 () Bool)

(assert (=> b!922820 (= e!600656 (not e!600653))))

(declare-fun res!419517 () Bool)

(assert (=> b!922820 (=> res!419517 e!600653)))

(declare-fun lt!338783 () Bool)

(assert (=> b!922820 (= res!419517 (or lt!338783 (and (is-Concat!4315 r!15766) (is-EmptyExpr!2482 (regOne!5476 r!15766))) (and (is-Concat!4315 r!15766) (is-EmptyExpr!2482 (regTwo!5476 r!15766))) (not (is-Concat!4315 r!15766))))))

(assert (=> b!922820 (= lt!338783 (matchRSpec!283 r!15766 s!10566))))

(assert (=> b!922820 (= lt!338783 (matchR!1020 r!15766 s!10566))))

(declare-fun lt!338784 () Unit!14583)

(assert (=> b!922820 (= lt!338784 (mainMatchTheorem!283 r!15766 s!10566))))

(declare-fun b!922821 () Bool)

(declare-fun tp!287214 () Bool)

(declare-fun tp!287215 () Bool)

(assert (=> b!922821 (= e!600655 (and tp!287214 tp!287215))))

(assert (= (and start!82840 res!419520) b!922820))

(assert (= (and b!922820 (not res!419517)) b!922817))

(assert (= (and b!922817 (not res!419519)) b!922818))

(assert (= (and b!922818 (not res!419518)) b!922815))

(assert (= (and b!922815 (not res!419521)) b!922819))

(assert (= (and start!82840 (is-ElementMatch!2482 r!15766)) b!922813))

(assert (= (and start!82840 (is-Concat!4315 r!15766)) b!922821))

(assert (= (and start!82840 (is-Star!2482 r!15766)) b!922816))

(assert (= (and start!82840 (is-Union!2482 r!15766)) b!922812))

(assert (= (and start!82840 (is-Cons!9696 s!10566)) b!922814))

(declare-fun m!1149273 () Bool)

(assert (=> b!922817 m!1149273))

(declare-fun m!1149275 () Bool)

(assert (=> b!922817 m!1149275))

(declare-fun m!1149277 () Bool)

(assert (=> b!922817 m!1149277))

(declare-fun m!1149279 () Bool)

(assert (=> b!922817 m!1149279))

(declare-fun m!1149281 () Bool)

(assert (=> b!922817 m!1149281))

(assert (=> b!922817 m!1149277))

(declare-fun m!1149283 () Bool)

(assert (=> b!922817 m!1149283))

(declare-fun m!1149285 () Bool)

(assert (=> b!922817 m!1149285))

(assert (=> b!922817 m!1149273))

(declare-fun m!1149287 () Bool)

(assert (=> b!922815 m!1149287))

(declare-fun m!1149289 () Bool)

(assert (=> b!922815 m!1149289))

(declare-fun m!1149291 () Bool)

(assert (=> b!922815 m!1149291))

(declare-fun m!1149293 () Bool)

(assert (=> b!922815 m!1149293))

(assert (=> b!922815 m!1149289))

(declare-fun m!1149295 () Bool)

(assert (=> b!922815 m!1149295))

(declare-fun m!1149297 () Bool)

(assert (=> b!922815 m!1149297))

(declare-fun m!1149299 () Bool)

(assert (=> b!922815 m!1149299))

(assert (=> b!922815 m!1149287))

(declare-fun m!1149301 () Bool)

(assert (=> b!922815 m!1149301))

(declare-fun m!1149303 () Bool)

(assert (=> b!922818 m!1149303))

(declare-fun m!1149305 () Bool)

(assert (=> b!922818 m!1149305))

(declare-fun m!1149307 () Bool)

(assert (=> b!922818 m!1149307))

(declare-fun m!1149309 () Bool)

(assert (=> b!922820 m!1149309))

(declare-fun m!1149311 () Bool)

(assert (=> b!922820 m!1149311))

(declare-fun m!1149313 () Bool)

(assert (=> b!922820 m!1149313))

(declare-fun m!1149315 () Bool)

(assert (=> b!922819 m!1149315))

(declare-fun m!1149317 () Bool)

(assert (=> start!82840 m!1149317))

(push 1)

(assert (not b!922812))

(assert tp_is_empty!4607)

(assert (not b!922820))

(assert (not b!922818))

(assert (not b!922815))

(assert (not start!82840))

(assert (not b!922819))

(assert (not b!922821))

(assert (not b!922817))

(assert (not b!922816))

(assert (not b!922814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!922929 () Bool)

(declare-fun e!600727 () Bool)

(declare-fun call!56269 () Bool)

(assert (=> b!922929 (= e!600727 call!56269)))

(declare-fun b!922930 () Bool)

(declare-fun e!600726 () Bool)

(assert (=> b!922930 (= e!600726 e!600727)))

(declare-fun res!419586 () Bool)

(declare-fun nullable!694 (Regex!2482) Bool)

(assert (=> b!922930 (= res!419586 (not (nullable!694 (reg!2811 r!15766))))))

(assert (=> b!922930 (=> (not res!419586) (not e!600727))))

(declare-fun d!280683 () Bool)

(declare-fun res!419588 () Bool)

(declare-fun e!600729 () Bool)

(assert (=> d!280683 (=> res!419588 e!600729)))

(assert (=> d!280683 (= res!419588 (is-ElementMatch!2482 r!15766))))

(assert (=> d!280683 (= (validRegex!951 r!15766) e!600729)))

(declare-fun b!922931 () Bool)

(declare-fun e!600725 () Bool)

(assert (=> b!922931 (= e!600726 e!600725)))

(declare-fun c!149787 () Bool)

(assert (=> b!922931 (= c!149787 (is-Union!2482 r!15766))))

(declare-fun b!922932 () Bool)

(declare-fun e!600730 () Bool)

(declare-fun e!600728 () Bool)

(assert (=> b!922932 (= e!600730 e!600728)))

(declare-fun res!419587 () Bool)

(assert (=> b!922932 (=> (not res!419587) (not e!600728))))

(declare-fun call!56270 () Bool)

(assert (=> b!922932 (= res!419587 call!56270)))

(declare-fun b!922933 () Bool)

(declare-fun res!419589 () Bool)

(assert (=> b!922933 (=> res!419589 e!600730)))

(assert (=> b!922933 (= res!419589 (not (is-Concat!4315 r!15766)))))

(assert (=> b!922933 (= e!600725 e!600730)))

(declare-fun b!922934 () Bool)

(declare-fun e!600731 () Bool)

(declare-fun call!56271 () Bool)

(assert (=> b!922934 (= e!600731 call!56271)))

(declare-fun b!922935 () Bool)

(assert (=> b!922935 (= e!600729 e!600726)))

(declare-fun c!149788 () Bool)

(assert (=> b!922935 (= c!149788 (is-Star!2482 r!15766))))

(declare-fun bm!56264 () Bool)

(assert (=> bm!56264 (= call!56269 (validRegex!951 (ite c!149788 (reg!2811 r!15766) (ite c!149787 (regTwo!5477 r!15766) (regTwo!5476 r!15766)))))))

(declare-fun bm!56265 () Bool)

(assert (=> bm!56265 (= call!56270 (validRegex!951 (ite c!149787 (regOne!5477 r!15766) (regOne!5476 r!15766))))))

(declare-fun bm!56266 () Bool)

(assert (=> bm!56266 (= call!56271 call!56269)))

(declare-fun b!922936 () Bool)

(assert (=> b!922936 (= e!600728 call!56271)))

(declare-fun b!922937 () Bool)

(declare-fun res!419590 () Bool)

(assert (=> b!922937 (=> (not res!419590) (not e!600731))))

(assert (=> b!922937 (= res!419590 call!56270)))

(assert (=> b!922937 (= e!600725 e!600731)))

(assert (= (and d!280683 (not res!419588)) b!922935))

(assert (= (and b!922935 c!149788) b!922930))

(assert (= (and b!922935 (not c!149788)) b!922931))

(assert (= (and b!922930 res!419586) b!922929))

(assert (= (and b!922931 c!149787) b!922937))

(assert (= (and b!922931 (not c!149787)) b!922933))

(assert (= (and b!922937 res!419590) b!922934))

(assert (= (and b!922933 (not res!419589)) b!922932))

(assert (= (and b!922932 res!419587) b!922936))

(assert (= (or b!922934 b!922936) bm!56266))

(assert (= (or b!922937 b!922932) bm!56265))

(assert (= (or b!922929 bm!56266) bm!56264))

(declare-fun m!1149371 () Bool)

(assert (=> b!922930 m!1149371))

(declare-fun m!1149373 () Bool)

(assert (=> bm!56264 m!1149373))

(declare-fun m!1149375 () Bool)

(assert (=> bm!56265 m!1149375))

(assert (=> start!82840 d!280683))

(declare-fun bs!237070 () Bool)

(declare-fun b!922986 () Bool)

(assert (= bs!237070 (and b!922986 b!922817)))

(declare-fun lambda!30208 () Int)

(assert (=> bs!237070 (not (= lambda!30208 lambda!30183))))

(assert (=> bs!237070 (not (= lambda!30208 lambda!30184))))

(declare-fun bs!237071 () Bool)

(assert (= bs!237071 (and b!922986 b!922815)))

(assert (=> bs!237071 (not (= lambda!30208 lambda!30185))))

(assert (=> bs!237071 (not (= lambda!30208 lambda!30186))))

(assert (=> b!922986 true))

(assert (=> b!922986 true))

(declare-fun bs!237072 () Bool)

(declare-fun b!922987 () Bool)

(assert (= bs!237072 (and b!922987 b!922815)))

(declare-fun lambda!30210 () Int)

(assert (=> bs!237072 (not (= lambda!30210 lambda!30185))))

(assert (=> bs!237072 (= (and (= (regOne!5476 r!15766) lt!338781) (= (regTwo!5476 r!15766) lt!338778)) (= lambda!30210 lambda!30186))))

(declare-fun bs!237073 () Bool)

(assert (= bs!237073 (and b!922987 b!922817)))

(assert (=> bs!237073 (= lambda!30210 lambda!30184)))

(declare-fun bs!237074 () Bool)

(assert (= bs!237074 (and b!922987 b!922986)))

(assert (=> bs!237074 (not (= lambda!30210 lambda!30208))))

(assert (=> bs!237073 (not (= lambda!30210 lambda!30183))))

(assert (=> b!922987 true))

(assert (=> b!922987 true))

(declare-fun b!922979 () Bool)

(declare-fun e!600763 () Bool)

(declare-fun call!56279 () Bool)

(assert (=> b!922979 (= e!600763 call!56279)))

(declare-fun b!922981 () Bool)

(declare-fun c!149800 () Bool)

(assert (=> b!922981 (= c!149800 (is-ElementMatch!2482 r!15766))))

(declare-fun e!600761 () Bool)

(declare-fun e!600758 () Bool)

(assert (=> b!922981 (= e!600761 e!600758)))

(declare-fun b!922982 () Bool)

(declare-fun c!149802 () Bool)

(assert (=> b!922982 (= c!149802 (is-Union!2482 r!15766))))

(declare-fun e!600762 () Bool)

(assert (=> b!922982 (= e!600758 e!600762)))

(declare-fun b!922983 () Bool)

(assert (=> b!922983 (= e!600763 e!600761)))

(declare-fun res!419613 () Bool)

(assert (=> b!922983 (= res!419613 (not (is-EmptyLang!2482 r!15766)))))

(assert (=> b!922983 (=> (not res!419613) (not e!600761))))

(declare-fun b!922984 () Bool)

(declare-fun e!600760 () Bool)

(assert (=> b!922984 (= e!600762 e!600760)))

(declare-fun c!149799 () Bool)

(assert (=> b!922984 (= c!149799 (is-Star!2482 r!15766))))

(declare-fun call!56280 () Bool)

(declare-fun bm!56274 () Bool)

(assert (=> bm!56274 (= call!56280 (Exists!253 (ite c!149799 lambda!30208 lambda!30210)))))

(declare-fun b!922985 () Bool)

(declare-fun e!600759 () Bool)

(assert (=> b!922985 (= e!600759 (matchRSpec!283 (regTwo!5477 r!15766) s!10566))))

(declare-fun bm!56275 () Bool)

(assert (=> bm!56275 (= call!56279 (isEmpty!5945 s!10566))))

(declare-fun b!922980 () Bool)

(assert (=> b!922980 (= e!600762 e!600759)))

(declare-fun res!419614 () Bool)

(assert (=> b!922980 (= res!419614 (matchRSpec!283 (regOne!5477 r!15766) s!10566))))

(assert (=> b!922980 (=> res!419614 e!600759)))

(declare-fun d!280687 () Bool)

(declare-fun c!149801 () Bool)

(assert (=> d!280687 (= c!149801 (is-EmptyExpr!2482 r!15766))))

(assert (=> d!280687 (= (matchRSpec!283 r!15766 s!10566) e!600763)))

(declare-fun e!600757 () Bool)

(assert (=> b!922986 (= e!600757 call!56280)))

(assert (=> b!922987 (= e!600760 call!56280)))

(declare-fun b!922988 () Bool)

(declare-fun res!419612 () Bool)

(assert (=> b!922988 (=> res!419612 e!600757)))

(assert (=> b!922988 (= res!419612 call!56279)))

(assert (=> b!922988 (= e!600760 e!600757)))

(declare-fun b!922989 () Bool)

(assert (=> b!922989 (= e!600758 (= s!10566 (Cons!9696 (c!149775 r!15766) Nil!9696)))))

(assert (= (and d!280687 c!149801) b!922979))

(assert (= (and d!280687 (not c!149801)) b!922983))

(assert (= (and b!922983 res!419613) b!922981))

(assert (= (and b!922981 c!149800) b!922989))

(assert (= (and b!922981 (not c!149800)) b!922982))

(assert (= (and b!922982 c!149802) b!922980))

(assert (= (and b!922982 (not c!149802)) b!922984))

(assert (= (and b!922980 (not res!419614)) b!922985))

(assert (= (and b!922984 c!149799) b!922988))

(assert (= (and b!922984 (not c!149799)) b!922987))

(assert (= (and b!922988 (not res!419612)) b!922986))

(assert (= (or b!922986 b!922987) bm!56274))

(assert (= (or b!922979 b!922988) bm!56275))

(declare-fun m!1149383 () Bool)

(assert (=> bm!56274 m!1149383))

(declare-fun m!1149385 () Bool)

(assert (=> b!922985 m!1149385))

(assert (=> bm!56275 m!1149281))

(declare-fun m!1149387 () Bool)

(assert (=> b!922980 m!1149387))

(assert (=> b!922820 d!280687))

(declare-fun b!923022 () Bool)

(declare-fun e!600786 () Bool)

(assert (=> b!923022 (= e!600786 (nullable!694 r!15766))))

(declare-fun b!923023 () Bool)

(declare-fun e!600785 () Bool)

(declare-fun lt!338827 () Bool)

(assert (=> b!923023 (= e!600785 (not lt!338827))))

(declare-fun b!923024 () Bool)

(declare-fun res!419635 () Bool)

(declare-fun e!600782 () Bool)

(assert (=> b!923024 (=> res!419635 e!600782)))

(declare-fun tail!1219 (List!9712) List!9712)

(assert (=> b!923024 (= res!419635 (not (isEmpty!5945 (tail!1219 s!10566))))))

(declare-fun b!923025 () Bool)

(declare-fun e!600784 () Bool)

(declare-fun call!56283 () Bool)

(assert (=> b!923025 (= e!600784 (= lt!338827 call!56283))))

(declare-fun b!923026 () Bool)

(assert (=> b!923026 (= e!600784 e!600785)))

(declare-fun c!149809 () Bool)

(assert (=> b!923026 (= c!149809 (is-EmptyLang!2482 r!15766))))

(declare-fun d!280691 () Bool)

(assert (=> d!280691 e!600784))

(declare-fun c!149810 () Bool)

(assert (=> d!280691 (= c!149810 (is-EmptyExpr!2482 r!15766))))

(assert (=> d!280691 (= lt!338827 e!600786)))

(declare-fun c!149811 () Bool)

(assert (=> d!280691 (= c!149811 (isEmpty!5945 s!10566))))

(assert (=> d!280691 (validRegex!951 r!15766)))

(assert (=> d!280691 (= (matchR!1020 r!15766 s!10566) lt!338827)))

(declare-fun b!923027 () Bool)

(declare-fun res!419638 () Bool)

(declare-fun e!600780 () Bool)

(assert (=> b!923027 (=> res!419638 e!600780)))

(declare-fun e!600783 () Bool)

(assert (=> b!923027 (= res!419638 e!600783)))

(declare-fun res!419642 () Bool)

(assert (=> b!923027 (=> (not res!419642) (not e!600783))))

(assert (=> b!923027 (= res!419642 lt!338827)))

(declare-fun b!923028 () Bool)

(declare-fun e!600781 () Bool)

(assert (=> b!923028 (= e!600781 e!600782)))

(declare-fun res!419637 () Bool)

(assert (=> b!923028 (=> res!419637 e!600782)))

(assert (=> b!923028 (= res!419637 call!56283)))

(declare-fun b!923029 () Bool)

(declare-fun head!1657 (List!9712) C!5534)

(assert (=> b!923029 (= e!600783 (= (head!1657 s!10566) (c!149775 r!15766)))))

(declare-fun b!923030 () Bool)

(assert (=> b!923030 (= e!600780 e!600781)))

(declare-fun res!419636 () Bool)

(assert (=> b!923030 (=> (not res!419636) (not e!600781))))

(assert (=> b!923030 (= res!419636 (not lt!338827))))

(declare-fun b!923031 () Bool)

(declare-fun res!419640 () Bool)

(assert (=> b!923031 (=> (not res!419640) (not e!600783))))

(assert (=> b!923031 (= res!419640 (not call!56283))))

(declare-fun bm!56278 () Bool)

(assert (=> bm!56278 (= call!56283 (isEmpty!5945 s!10566))))

(declare-fun b!923032 () Bool)

(declare-fun res!419641 () Bool)

(assert (=> b!923032 (=> (not res!419641) (not e!600783))))

(assert (=> b!923032 (= res!419641 (isEmpty!5945 (tail!1219 s!10566)))))

(declare-fun b!923033 () Bool)

(declare-fun derivativeStep!504 (Regex!2482 C!5534) Regex!2482)

(assert (=> b!923033 (= e!600786 (matchR!1020 (derivativeStep!504 r!15766 (head!1657 s!10566)) (tail!1219 s!10566)))))

(declare-fun b!923034 () Bool)

(assert (=> b!923034 (= e!600782 (not (= (head!1657 s!10566) (c!149775 r!15766))))))

(declare-fun b!923035 () Bool)

(declare-fun res!419639 () Bool)

(assert (=> b!923035 (=> res!419639 e!600780)))

(assert (=> b!923035 (= res!419639 (not (is-ElementMatch!2482 r!15766)))))

(assert (=> b!923035 (= e!600785 e!600780)))

(assert (= (and d!280691 c!149811) b!923022))

(assert (= (and d!280691 (not c!149811)) b!923033))

(assert (= (and d!280691 c!149810) b!923025))

(assert (= (and d!280691 (not c!149810)) b!923026))

(assert (= (and b!923026 c!149809) b!923023))

(assert (= (and b!923026 (not c!149809)) b!923035))

(assert (= (and b!923035 (not res!419639)) b!923027))

(assert (= (and b!923027 res!419642) b!923031))

(assert (= (and b!923031 res!419640) b!923032))

(assert (= (and b!923032 res!419641) b!923029))

(assert (= (and b!923027 (not res!419638)) b!923030))

(assert (= (and b!923030 res!419636) b!923028))

(assert (= (and b!923028 (not res!419637)) b!923024))

(assert (= (and b!923024 (not res!419635)) b!923034))

(assert (= (or b!923025 b!923028 b!923031) bm!56278))

(assert (=> bm!56278 m!1149281))

(declare-fun m!1149395 () Bool)

(assert (=> b!923022 m!1149395))

(declare-fun m!1149397 () Bool)

(assert (=> b!923024 m!1149397))

(assert (=> b!923024 m!1149397))

(declare-fun m!1149399 () Bool)

(assert (=> b!923024 m!1149399))

(assert (=> d!280691 m!1149281))

(assert (=> d!280691 m!1149317))

(declare-fun m!1149401 () Bool)

(assert (=> b!923034 m!1149401))

(assert (=> b!923032 m!1149397))

(assert (=> b!923032 m!1149397))

(assert (=> b!923032 m!1149399))

(assert (=> b!923029 m!1149401))

(assert (=> b!923033 m!1149401))

(assert (=> b!923033 m!1149401))

(declare-fun m!1149403 () Bool)

(assert (=> b!923033 m!1149403))

(assert (=> b!923033 m!1149397))

(assert (=> b!923033 m!1149403))

(assert (=> b!923033 m!1149397))

(declare-fun m!1149405 () Bool)

(assert (=> b!923033 m!1149405))

(assert (=> b!922820 d!280691))

(declare-fun d!280695 () Bool)

(assert (=> d!280695 (= (matchR!1020 r!15766 s!10566) (matchRSpec!283 r!15766 s!10566))))

(declare-fun lt!338833 () Unit!14583)

(declare-fun choose!5664 (Regex!2482 List!9712) Unit!14583)

(assert (=> d!280695 (= lt!338833 (choose!5664 r!15766 s!10566))))

(assert (=> d!280695 (validRegex!951 r!15766)))

(assert (=> d!280695 (= (mainMatchTheorem!283 r!15766 s!10566) lt!338833)))

(declare-fun bs!237079 () Bool)

(assert (= bs!237079 d!280695))

(assert (=> bs!237079 m!1149311))

(assert (=> bs!237079 m!1149309))

(declare-fun m!1149411 () Bool)

(assert (=> bs!237079 m!1149411))

(assert (=> bs!237079 m!1149317))

(assert (=> b!922820 d!280695))

(declare-fun b!923036 () Bool)

(declare-fun e!600789 () Bool)

(declare-fun call!56284 () Bool)

(assert (=> b!923036 (= e!600789 call!56284)))

(declare-fun b!923037 () Bool)

(declare-fun e!600788 () Bool)

(assert (=> b!923037 (= e!600788 e!600789)))

(declare-fun res!419643 () Bool)

(assert (=> b!923037 (= res!419643 (not (nullable!694 (reg!2811 (regTwo!5476 r!15766)))))))

(assert (=> b!923037 (=> (not res!419643) (not e!600789))))

(declare-fun d!280699 () Bool)

(declare-fun res!419645 () Bool)

(declare-fun e!600791 () Bool)

(assert (=> d!280699 (=> res!419645 e!600791)))

(assert (=> d!280699 (= res!419645 (is-ElementMatch!2482 (regTwo!5476 r!15766)))))

(assert (=> d!280699 (= (validRegex!951 (regTwo!5476 r!15766)) e!600791)))

(declare-fun b!923038 () Bool)

(declare-fun e!600787 () Bool)

(assert (=> b!923038 (= e!600788 e!600787)))

(declare-fun c!149812 () Bool)

(assert (=> b!923038 (= c!149812 (is-Union!2482 (regTwo!5476 r!15766)))))

(declare-fun b!923039 () Bool)

(declare-fun e!600792 () Bool)

(declare-fun e!600790 () Bool)

(assert (=> b!923039 (= e!600792 e!600790)))

(declare-fun res!419644 () Bool)

(assert (=> b!923039 (=> (not res!419644) (not e!600790))))

(declare-fun call!56285 () Bool)

(assert (=> b!923039 (= res!419644 call!56285)))

(declare-fun b!923040 () Bool)

(declare-fun res!419646 () Bool)

(assert (=> b!923040 (=> res!419646 e!600792)))

(assert (=> b!923040 (= res!419646 (not (is-Concat!4315 (regTwo!5476 r!15766))))))

(assert (=> b!923040 (= e!600787 e!600792)))

(declare-fun b!923041 () Bool)

(declare-fun e!600793 () Bool)

(declare-fun call!56286 () Bool)

(assert (=> b!923041 (= e!600793 call!56286)))

(declare-fun b!923042 () Bool)

(assert (=> b!923042 (= e!600791 e!600788)))

(declare-fun c!149813 () Bool)

(assert (=> b!923042 (= c!149813 (is-Star!2482 (regTwo!5476 r!15766)))))

(declare-fun bm!56279 () Bool)

(assert (=> bm!56279 (= call!56284 (validRegex!951 (ite c!149813 (reg!2811 (regTwo!5476 r!15766)) (ite c!149812 (regTwo!5477 (regTwo!5476 r!15766)) (regTwo!5476 (regTwo!5476 r!15766))))))))

(declare-fun bm!56280 () Bool)

(assert (=> bm!56280 (= call!56285 (validRegex!951 (ite c!149812 (regOne!5477 (regTwo!5476 r!15766)) (regOne!5476 (regTwo!5476 r!15766)))))))

(declare-fun bm!56281 () Bool)

(assert (=> bm!56281 (= call!56286 call!56284)))

(declare-fun b!923043 () Bool)

(assert (=> b!923043 (= e!600790 call!56286)))

(declare-fun b!923044 () Bool)

(declare-fun res!419647 () Bool)

(assert (=> b!923044 (=> (not res!419647) (not e!600793))))

(assert (=> b!923044 (= res!419647 call!56285)))

(assert (=> b!923044 (= e!600787 e!600793)))

(assert (= (and d!280699 (not res!419645)) b!923042))

(assert (= (and b!923042 c!149813) b!923037))

(assert (= (and b!923042 (not c!149813)) b!923038))

(assert (= (and b!923037 res!419643) b!923036))

(assert (= (and b!923038 c!149812) b!923044))

(assert (= (and b!923038 (not c!149812)) b!923040))

(assert (= (and b!923044 res!419647) b!923041))

(assert (= (and b!923040 (not res!419646)) b!923039))

(assert (= (and b!923039 res!419644) b!923043))

(assert (= (or b!923041 b!923043) bm!56281))

(assert (= (or b!923044 b!923039) bm!56280))

(assert (= (or b!923036 bm!56281) bm!56279))

(declare-fun m!1149415 () Bool)

(assert (=> b!923037 m!1149415))

(declare-fun m!1149417 () Bool)

(assert (=> bm!56279 m!1149417))

(declare-fun m!1149419 () Bool)

(assert (=> bm!56280 m!1149419))

(assert (=> b!922819 d!280699))

(declare-fun b!923045 () Bool)

(declare-fun e!600800 () Bool)

(assert (=> b!923045 (= e!600800 (nullable!694 lt!338785))))

(declare-fun b!923046 () Bool)

(declare-fun e!600799 () Bool)

(declare-fun lt!338834 () Bool)

(assert (=> b!923046 (= e!600799 (not lt!338834))))

(declare-fun b!923047 () Bool)

(declare-fun res!419648 () Bool)

(declare-fun e!600796 () Bool)

(assert (=> b!923047 (=> res!419648 e!600796)))

(assert (=> b!923047 (= res!419648 (not (isEmpty!5945 (tail!1219 s!10566))))))

(declare-fun b!923048 () Bool)

(declare-fun e!600798 () Bool)

(declare-fun call!56287 () Bool)

(assert (=> b!923048 (= e!600798 (= lt!338834 call!56287))))

(declare-fun b!923049 () Bool)

(assert (=> b!923049 (= e!600798 e!600799)))

(declare-fun c!149814 () Bool)

(assert (=> b!923049 (= c!149814 (is-EmptyLang!2482 lt!338785))))

(declare-fun d!280703 () Bool)

(assert (=> d!280703 e!600798))

(declare-fun c!149815 () Bool)

(assert (=> d!280703 (= c!149815 (is-EmptyExpr!2482 lt!338785))))

(assert (=> d!280703 (= lt!338834 e!600800)))

(declare-fun c!149816 () Bool)

(assert (=> d!280703 (= c!149816 (isEmpty!5945 s!10566))))

(assert (=> d!280703 (validRegex!951 lt!338785)))

(assert (=> d!280703 (= (matchR!1020 lt!338785 s!10566) lt!338834)))

(declare-fun b!923050 () Bool)

(declare-fun res!419651 () Bool)

(declare-fun e!600794 () Bool)

(assert (=> b!923050 (=> res!419651 e!600794)))

(declare-fun e!600797 () Bool)

(assert (=> b!923050 (= res!419651 e!600797)))

(declare-fun res!419655 () Bool)

(assert (=> b!923050 (=> (not res!419655) (not e!600797))))

(assert (=> b!923050 (= res!419655 lt!338834)))

(declare-fun b!923051 () Bool)

(declare-fun e!600795 () Bool)

(assert (=> b!923051 (= e!600795 e!600796)))

(declare-fun res!419650 () Bool)

(assert (=> b!923051 (=> res!419650 e!600796)))

(assert (=> b!923051 (= res!419650 call!56287)))

(declare-fun b!923052 () Bool)

(assert (=> b!923052 (= e!600797 (= (head!1657 s!10566) (c!149775 lt!338785)))))

(declare-fun b!923053 () Bool)

(assert (=> b!923053 (= e!600794 e!600795)))

(declare-fun res!419649 () Bool)

(assert (=> b!923053 (=> (not res!419649) (not e!600795))))

(assert (=> b!923053 (= res!419649 (not lt!338834))))

(declare-fun b!923054 () Bool)

(declare-fun res!419653 () Bool)

(assert (=> b!923054 (=> (not res!419653) (not e!600797))))

(assert (=> b!923054 (= res!419653 (not call!56287))))

(declare-fun bm!56282 () Bool)

(assert (=> bm!56282 (= call!56287 (isEmpty!5945 s!10566))))

(declare-fun b!923055 () Bool)

(declare-fun res!419654 () Bool)

(assert (=> b!923055 (=> (not res!419654) (not e!600797))))

(assert (=> b!923055 (= res!419654 (isEmpty!5945 (tail!1219 s!10566)))))

(declare-fun b!923056 () Bool)

(assert (=> b!923056 (= e!600800 (matchR!1020 (derivativeStep!504 lt!338785 (head!1657 s!10566)) (tail!1219 s!10566)))))

(declare-fun b!923057 () Bool)

(assert (=> b!923057 (= e!600796 (not (= (head!1657 s!10566) (c!149775 lt!338785))))))

(declare-fun b!923058 () Bool)

(declare-fun res!419652 () Bool)

(assert (=> b!923058 (=> res!419652 e!600794)))

(assert (=> b!923058 (= res!419652 (not (is-ElementMatch!2482 lt!338785)))))

(assert (=> b!923058 (= e!600799 e!600794)))

(assert (= (and d!280703 c!149816) b!923045))

(assert (= (and d!280703 (not c!149816)) b!923056))

(assert (= (and d!280703 c!149815) b!923048))

(assert (= (and d!280703 (not c!149815)) b!923049))

(assert (= (and b!923049 c!149814) b!923046))

(assert (= (and b!923049 (not c!149814)) b!923058))

(assert (= (and b!923058 (not res!419652)) b!923050))

(assert (= (and b!923050 res!419655) b!923054))

(assert (= (and b!923054 res!419653) b!923055))

(assert (= (and b!923055 res!419654) b!923052))

(assert (= (and b!923050 (not res!419651)) b!923053))

(assert (= (and b!923053 res!419649) b!923051))

(assert (= (and b!923051 (not res!419650)) b!923047))

(assert (= (and b!923047 (not res!419648)) b!923057))

(assert (= (or b!923048 b!923051 b!923054) bm!56282))

(assert (=> bm!56282 m!1149281))

(declare-fun m!1149421 () Bool)

(assert (=> b!923045 m!1149421))

(assert (=> b!923047 m!1149397))

(assert (=> b!923047 m!1149397))

(assert (=> b!923047 m!1149399))

(assert (=> d!280703 m!1149281))

(declare-fun m!1149423 () Bool)

(assert (=> d!280703 m!1149423))

(assert (=> b!923057 m!1149401))

(assert (=> b!923055 m!1149397))

(assert (=> b!923055 m!1149397))

(assert (=> b!923055 m!1149399))

(assert (=> b!923052 m!1149401))

(assert (=> b!923056 m!1149401))

(assert (=> b!923056 m!1149401))

(declare-fun m!1149425 () Bool)

(assert (=> b!923056 m!1149425))

(assert (=> b!923056 m!1149397))

(assert (=> b!923056 m!1149425))

(assert (=> b!923056 m!1149397))

(declare-fun m!1149427 () Bool)

(assert (=> b!923056 m!1149427))

(assert (=> b!922818 d!280703))

(declare-fun b!923081 () Bool)

(declare-fun e!600815 () Regex!2482)

(declare-fun call!56302 () Regex!2482)

(declare-fun call!56298 () Regex!2482)

(assert (=> b!923081 (= e!600815 (Union!2482 call!56302 call!56298))))

(declare-fun b!923082 () Bool)

(declare-fun e!600813 () Regex!2482)

(declare-fun e!600817 () Regex!2482)

(assert (=> b!923082 (= e!600813 e!600817)))

(declare-fun c!149830 () Bool)

(assert (=> b!923082 (= c!149830 (and (is-Concat!4315 (regTwo!5476 r!15766)) (is-EmptyExpr!2482 (regTwo!5476 (regTwo!5476 r!15766)))))))

(declare-fun b!923083 () Bool)

(declare-fun e!600818 () Regex!2482)

(assert (=> b!923083 (= e!600818 e!600815)))

(declare-fun c!149829 () Bool)

(assert (=> b!923083 (= c!149829 (is-Union!2482 (regTwo!5476 r!15766)))))

(declare-fun b!923084 () Bool)

(declare-fun c!149828 () Bool)

(assert (=> b!923084 (= c!149828 (is-Star!2482 (regTwo!5476 r!15766)))))

(declare-fun e!600816 () Regex!2482)

(assert (=> b!923084 (= e!600815 e!600816)))

(declare-fun b!923085 () Bool)

(declare-fun e!600814 () Bool)

(declare-fun lt!338837 () Regex!2482)

(assert (=> b!923085 (= e!600814 (= (nullable!694 lt!338837) (nullable!694 (regTwo!5476 r!15766))))))

(declare-fun b!923086 () Bool)

(declare-fun call!56299 () Regex!2482)

(assert (=> b!923086 (= e!600818 (Concat!4315 call!56302 call!56299))))

(declare-fun c!149827 () Bool)

(declare-fun c!149831 () Bool)

(declare-fun call!56301 () Regex!2482)

(declare-fun bm!56293 () Bool)

(assert (=> bm!56293 (= call!56301 (removeUselessConcat!159 (ite c!149827 (regTwo!5476 (regTwo!5476 r!15766)) (ite (or c!149830 c!149831) (regOne!5476 (regTwo!5476 r!15766)) (regOne!5477 (regTwo!5476 r!15766))))))))

(declare-fun b!923088 () Bool)

(assert (=> b!923088 (= c!149831 (is-Concat!4315 (regTwo!5476 r!15766)))))

(assert (=> b!923088 (= e!600817 e!600818)))

(declare-fun bm!56294 () Bool)

(declare-fun call!56300 () Regex!2482)

(assert (=> bm!56294 (= call!56302 call!56300)))

(declare-fun b!923089 () Bool)

(assert (=> b!923089 (= e!600816 (regTwo!5476 r!15766))))

(declare-fun b!923090 () Bool)

(assert (=> b!923090 (= e!600817 call!56300)))

(declare-fun bm!56295 () Bool)

(assert (=> bm!56295 (= call!56299 (removeUselessConcat!159 (ite c!149831 (regTwo!5476 (regTwo!5476 r!15766)) (ite c!149829 (regTwo!5477 (regTwo!5476 r!15766)) (reg!2811 (regTwo!5476 r!15766))))))))

(declare-fun bm!56296 () Bool)

(assert (=> bm!56296 (= call!56300 call!56301)))

(declare-fun b!923091 () Bool)

(assert (=> b!923091 (= e!600816 (Star!2482 call!56298))))

(declare-fun bm!56297 () Bool)

(assert (=> bm!56297 (= call!56298 call!56299)))

(declare-fun d!280705 () Bool)

(assert (=> d!280705 e!600814))

(declare-fun res!419658 () Bool)

(assert (=> d!280705 (=> (not res!419658) (not e!600814))))

(assert (=> d!280705 (= res!419658 (validRegex!951 lt!338837))))

(assert (=> d!280705 (= lt!338837 e!600813)))

(assert (=> d!280705 (= c!149827 (and (is-Concat!4315 (regTwo!5476 r!15766)) (is-EmptyExpr!2482 (regOne!5476 (regTwo!5476 r!15766)))))))

(assert (=> d!280705 (validRegex!951 (regTwo!5476 r!15766))))

(assert (=> d!280705 (= (removeUselessConcat!159 (regTwo!5476 r!15766)) lt!338837)))

(declare-fun b!923087 () Bool)

(assert (=> b!923087 (= e!600813 call!56301)))

(assert (= (and d!280705 c!149827) b!923087))

(assert (= (and d!280705 (not c!149827)) b!923082))

(assert (= (and b!923082 c!149830) b!923090))

(assert (= (and b!923082 (not c!149830)) b!923088))

(assert (= (and b!923088 c!149831) b!923086))

(assert (= (and b!923088 (not c!149831)) b!923083))

(assert (= (and b!923083 c!149829) b!923081))

(assert (= (and b!923083 (not c!149829)) b!923084))

(assert (= (and b!923084 c!149828) b!923091))

(assert (= (and b!923084 (not c!149828)) b!923089))

(assert (= (or b!923081 b!923091) bm!56297))

(assert (= (or b!923086 bm!56297) bm!56295))

(assert (= (or b!923086 b!923081) bm!56294))

(assert (= (or b!923090 bm!56294) bm!56296))

(assert (= (or b!923087 bm!56296) bm!56293))

(assert (= (and d!280705 res!419658) b!923085))

(declare-fun m!1149429 () Bool)

(assert (=> b!923085 m!1149429))

(declare-fun m!1149431 () Bool)

(assert (=> b!923085 m!1149431))

(declare-fun m!1149433 () Bool)

(assert (=> bm!56293 m!1149433))

(declare-fun m!1149435 () Bool)

(assert (=> bm!56295 m!1149435))

(declare-fun m!1149437 () Bool)

(assert (=> d!280705 m!1149437))

(assert (=> d!280705 m!1149315))

(assert (=> b!922818 d!280705))

(declare-fun b!923092 () Bool)

(declare-fun e!600821 () Regex!2482)

(declare-fun call!56307 () Regex!2482)

(declare-fun call!56303 () Regex!2482)

(assert (=> b!923092 (= e!600821 (Union!2482 call!56307 call!56303))))

(declare-fun b!923093 () Bool)

(declare-fun e!600819 () Regex!2482)

(declare-fun e!600823 () Regex!2482)

(assert (=> b!923093 (= e!600819 e!600823)))

(declare-fun c!149835 () Bool)

(assert (=> b!923093 (= c!149835 (and (is-Concat!4315 (regOne!5476 r!15766)) (is-EmptyExpr!2482 (regTwo!5476 (regOne!5476 r!15766)))))))

(declare-fun b!923094 () Bool)

(declare-fun e!600824 () Regex!2482)

(assert (=> b!923094 (= e!600824 e!600821)))

(declare-fun c!149834 () Bool)

(assert (=> b!923094 (= c!149834 (is-Union!2482 (regOne!5476 r!15766)))))

(declare-fun b!923095 () Bool)

(declare-fun c!149833 () Bool)

(assert (=> b!923095 (= c!149833 (is-Star!2482 (regOne!5476 r!15766)))))

(declare-fun e!600822 () Regex!2482)

(assert (=> b!923095 (= e!600821 e!600822)))

(declare-fun b!923096 () Bool)

(declare-fun e!600820 () Bool)

(declare-fun lt!338838 () Regex!2482)

(assert (=> b!923096 (= e!600820 (= (nullable!694 lt!338838) (nullable!694 (regOne!5476 r!15766))))))

(declare-fun b!923097 () Bool)

(declare-fun call!56304 () Regex!2482)

(assert (=> b!923097 (= e!600824 (Concat!4315 call!56307 call!56304))))

(declare-fun bm!56298 () Bool)

(declare-fun c!149832 () Bool)

(declare-fun call!56306 () Regex!2482)

(declare-fun c!149836 () Bool)

(assert (=> bm!56298 (= call!56306 (removeUselessConcat!159 (ite c!149832 (regTwo!5476 (regOne!5476 r!15766)) (ite (or c!149835 c!149836) (regOne!5476 (regOne!5476 r!15766)) (regOne!5477 (regOne!5476 r!15766))))))))

(declare-fun b!923099 () Bool)

(assert (=> b!923099 (= c!149836 (is-Concat!4315 (regOne!5476 r!15766)))))

(assert (=> b!923099 (= e!600823 e!600824)))

(declare-fun bm!56299 () Bool)

(declare-fun call!56305 () Regex!2482)

(assert (=> bm!56299 (= call!56307 call!56305)))

(declare-fun b!923100 () Bool)

(assert (=> b!923100 (= e!600822 (regOne!5476 r!15766))))

(declare-fun b!923101 () Bool)

(assert (=> b!923101 (= e!600823 call!56305)))

(declare-fun bm!56300 () Bool)

(assert (=> bm!56300 (= call!56304 (removeUselessConcat!159 (ite c!149836 (regTwo!5476 (regOne!5476 r!15766)) (ite c!149834 (regTwo!5477 (regOne!5476 r!15766)) (reg!2811 (regOne!5476 r!15766))))))))

(declare-fun bm!56301 () Bool)

(assert (=> bm!56301 (= call!56305 call!56306)))

(declare-fun b!923102 () Bool)

(assert (=> b!923102 (= e!600822 (Star!2482 call!56303))))

(declare-fun bm!56302 () Bool)

(assert (=> bm!56302 (= call!56303 call!56304)))

(declare-fun d!280707 () Bool)

(assert (=> d!280707 e!600820))

(declare-fun res!419659 () Bool)

(assert (=> d!280707 (=> (not res!419659) (not e!600820))))

(assert (=> d!280707 (= res!419659 (validRegex!951 lt!338838))))

(assert (=> d!280707 (= lt!338838 e!600819)))

(assert (=> d!280707 (= c!149832 (and (is-Concat!4315 (regOne!5476 r!15766)) (is-EmptyExpr!2482 (regOne!5476 (regOne!5476 r!15766)))))))

(assert (=> d!280707 (validRegex!951 (regOne!5476 r!15766))))

(assert (=> d!280707 (= (removeUselessConcat!159 (regOne!5476 r!15766)) lt!338838)))

(declare-fun b!923098 () Bool)

(assert (=> b!923098 (= e!600819 call!56306)))

(assert (= (and d!280707 c!149832) b!923098))

(assert (= (and d!280707 (not c!149832)) b!923093))

(assert (= (and b!923093 c!149835) b!923101))

(assert (= (and b!923093 (not c!149835)) b!923099))

(assert (= (and b!923099 c!149836) b!923097))

(assert (= (and b!923099 (not c!149836)) b!923094))

(assert (= (and b!923094 c!149834) b!923092))

(assert (= (and b!923094 (not c!149834)) b!923095))

(assert (= (and b!923095 c!149833) b!923102))

(assert (= (and b!923095 (not c!149833)) b!923100))

(assert (= (or b!923092 b!923102) bm!56302))

(assert (= (or b!923097 bm!56302) bm!56300))

(assert (= (or b!923097 b!923092) bm!56299))

(assert (= (or b!923101 bm!56299) bm!56301))

(assert (= (or b!923098 bm!56301) bm!56298))

(assert (= (and d!280707 res!419659) b!923096))

(declare-fun m!1149439 () Bool)

(assert (=> b!923096 m!1149439))

(declare-fun m!1149441 () Bool)

(assert (=> b!923096 m!1149441))

(declare-fun m!1149443 () Bool)

(assert (=> bm!56298 m!1149443))

(declare-fun m!1149445 () Bool)

(assert (=> bm!56300 m!1149445))

(declare-fun m!1149447 () Bool)

(assert (=> d!280707 m!1149447))

(declare-fun m!1149449 () Bool)

(assert (=> d!280707 m!1149449))

(assert (=> b!922818 d!280707))

(declare-fun d!280709 () Bool)

(assert (=> d!280709 (= (isEmpty!5945 s!10566) (is-Nil!9696 s!10566))))

(assert (=> b!922817 d!280709))

(declare-fun d!280711 () Bool)

(declare-fun isEmpty!5947 (Option!2117) Bool)

(assert (=> d!280711 (= (isDefined!1759 (findConcatSeparation!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) Nil!9696 s!10566 s!10566)) (not (isEmpty!5947 (findConcatSeparation!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) Nil!9696 s!10566 s!10566))))))

(declare-fun bs!237081 () Bool)

(assert (= bs!237081 d!280711))

(assert (=> bs!237081 m!1149273))

(declare-fun m!1149451 () Bool)

(assert (=> bs!237081 m!1149451))

(assert (=> b!922817 d!280711))

(declare-fun b!923139 () Bool)

(declare-fun e!600848 () Bool)

(declare-fun lt!338853 () Option!2117)

(declare-fun ++!2570 (List!9712 List!9712) List!9712)

(declare-fun get!3167 (Option!2117) tuple2!10950)

(assert (=> b!923139 (= e!600848 (= (++!2570 (_1!6301 (get!3167 lt!338853)) (_2!6301 (get!3167 lt!338853))) s!10566))))

(declare-fun b!923140 () Bool)

(declare-fun e!600845 () Option!2117)

(declare-fun e!600846 () Option!2117)

(assert (=> b!923140 (= e!600845 e!600846)))

(declare-fun c!149846 () Bool)

(assert (=> b!923140 (= c!149846 (is-Nil!9696 s!10566))))

(declare-fun b!923141 () Bool)

(declare-fun res!419683 () Bool)

(assert (=> b!923141 (=> (not res!419683) (not e!600848))))

(assert (=> b!923141 (= res!419683 (matchR!1020 (regTwo!5476 r!15766) (_2!6301 (get!3167 lt!338853))))))

(declare-fun b!923142 () Bool)

(declare-fun e!600849 () Bool)

(assert (=> b!923142 (= e!600849 (matchR!1020 (regTwo!5476 r!15766) s!10566))))

(declare-fun b!923143 () Bool)

(declare-fun lt!338852 () Unit!14583)

(declare-fun lt!338851 () Unit!14583)

(assert (=> b!923143 (= lt!338852 lt!338851)))

(assert (=> b!923143 (= (++!2570 (++!2570 Nil!9696 (Cons!9696 (h!15097 s!10566) Nil!9696)) (t!100758 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!185 (List!9712 C!5534 List!9712 List!9712) Unit!14583)

(assert (=> b!923143 (= lt!338851 (lemmaMoveElementToOtherListKeepsConcatEq!185 Nil!9696 (h!15097 s!10566) (t!100758 s!10566) s!10566))))

(assert (=> b!923143 (= e!600846 (findConcatSeparation!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) (++!2570 Nil!9696 (Cons!9696 (h!15097 s!10566) Nil!9696)) (t!100758 s!10566) s!10566))))

(declare-fun b!923144 () Bool)

(declare-fun res!419681 () Bool)

(assert (=> b!923144 (=> (not res!419681) (not e!600848))))

(assert (=> b!923144 (= res!419681 (matchR!1020 (regOne!5476 r!15766) (_1!6301 (get!3167 lt!338853))))))

(declare-fun b!923145 () Bool)

(assert (=> b!923145 (= e!600846 None!2116)))

(declare-fun d!280713 () Bool)

(declare-fun e!600847 () Bool)

(assert (=> d!280713 e!600847))

(declare-fun res!419682 () Bool)

(assert (=> d!280713 (=> res!419682 e!600847)))

(assert (=> d!280713 (= res!419682 e!600848)))

(declare-fun res!419684 () Bool)

(assert (=> d!280713 (=> (not res!419684) (not e!600848))))

(assert (=> d!280713 (= res!419684 (isDefined!1759 lt!338853))))

(assert (=> d!280713 (= lt!338853 e!600845)))

(declare-fun c!149845 () Bool)

(assert (=> d!280713 (= c!149845 e!600849)))

(declare-fun res!419680 () Bool)

(assert (=> d!280713 (=> (not res!419680) (not e!600849))))

(assert (=> d!280713 (= res!419680 (matchR!1020 (regOne!5476 r!15766) Nil!9696))))

(assert (=> d!280713 (validRegex!951 (regOne!5476 r!15766))))

(assert (=> d!280713 (= (findConcatSeparation!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) Nil!9696 s!10566 s!10566) lt!338853)))

(declare-fun b!923146 () Bool)

(assert (=> b!923146 (= e!600845 (Some!2116 (tuple2!10951 Nil!9696 s!10566)))))

(declare-fun b!923147 () Bool)

(assert (=> b!923147 (= e!600847 (not (isDefined!1759 lt!338853)))))

(assert (= (and d!280713 res!419680) b!923142))

(assert (= (and d!280713 c!149845) b!923146))

(assert (= (and d!280713 (not c!149845)) b!923140))

(assert (= (and b!923140 c!149846) b!923145))

(assert (= (and b!923140 (not c!149846)) b!923143))

(assert (= (and d!280713 res!419684) b!923144))

(assert (= (and b!923144 res!419681) b!923141))

(assert (= (and b!923141 res!419683) b!923139))

(assert (= (and d!280713 (not res!419682)) b!923147))

(declare-fun m!1149453 () Bool)

(assert (=> b!923141 m!1149453))

(declare-fun m!1149455 () Bool)

(assert (=> b!923141 m!1149455))

(declare-fun m!1149457 () Bool)

(assert (=> d!280713 m!1149457))

(declare-fun m!1149459 () Bool)

(assert (=> d!280713 m!1149459))

(assert (=> d!280713 m!1149449))

(declare-fun m!1149461 () Bool)

(assert (=> b!923143 m!1149461))

(assert (=> b!923143 m!1149461))

(declare-fun m!1149463 () Bool)

(assert (=> b!923143 m!1149463))

(declare-fun m!1149465 () Bool)

(assert (=> b!923143 m!1149465))

(assert (=> b!923143 m!1149461))

(declare-fun m!1149467 () Bool)

(assert (=> b!923143 m!1149467))

(declare-fun m!1149469 () Bool)

(assert (=> b!923142 m!1149469))

(assert (=> b!923144 m!1149453))

(declare-fun m!1149471 () Bool)

(assert (=> b!923144 m!1149471))

(assert (=> b!923147 m!1149457))

(assert (=> b!923139 m!1149453))

(declare-fun m!1149473 () Bool)

(assert (=> b!923139 m!1149473))

(assert (=> b!922817 d!280713))

(declare-fun bs!237082 () Bool)

(declare-fun d!280715 () Bool)

(assert (= bs!237082 (and d!280715 b!922815)))

(declare-fun lambda!30216 () Int)

(assert (=> bs!237082 (= (and (= (regOne!5476 r!15766) lt!338781) (= (regTwo!5476 r!15766) lt!338778)) (= lambda!30216 lambda!30185))))

(assert (=> bs!237082 (not (= lambda!30216 lambda!30186))))

(declare-fun bs!237083 () Bool)

(assert (= bs!237083 (and d!280715 b!922817)))

(assert (=> bs!237083 (not (= lambda!30216 lambda!30184))))

(declare-fun bs!237084 () Bool)

(assert (= bs!237084 (and d!280715 b!922986)))

(assert (=> bs!237084 (not (= lambda!30216 lambda!30208))))

(assert (=> bs!237083 (= lambda!30216 lambda!30183)))

(declare-fun bs!237085 () Bool)

(assert (= bs!237085 (and d!280715 b!922987)))

(assert (=> bs!237085 (not (= lambda!30216 lambda!30210))))

(assert (=> d!280715 true))

(assert (=> d!280715 true))

(assert (=> d!280715 true))

(declare-fun lambda!30217 () Int)

(assert (=> bs!237082 (not (= lambda!30217 lambda!30185))))

(assert (=> bs!237082 (= (and (= (regOne!5476 r!15766) lt!338781) (= (regTwo!5476 r!15766) lt!338778)) (= lambda!30217 lambda!30186))))

(assert (=> bs!237083 (= lambda!30217 lambda!30184)))

(assert (=> bs!237084 (not (= lambda!30217 lambda!30208))))

(assert (=> bs!237083 (not (= lambda!30217 lambda!30183))))

(declare-fun bs!237086 () Bool)

(assert (= bs!237086 d!280715))

(assert (=> bs!237086 (not (= lambda!30217 lambda!30216))))

(assert (=> bs!237085 (= lambda!30217 lambda!30210)))

(assert (=> d!280715 true))

(assert (=> d!280715 true))

(assert (=> d!280715 true))

(assert (=> d!280715 (= (Exists!253 lambda!30216) (Exists!253 lambda!30217))))

(declare-fun lt!338859 () Unit!14583)

(declare-fun choose!5665 (Regex!2482 Regex!2482 List!9712) Unit!14583)

(assert (=> d!280715 (= lt!338859 (choose!5665 (regOne!5476 r!15766) (regTwo!5476 r!15766) s!10566))))

(assert (=> d!280715 (validRegex!951 (regOne!5476 r!15766))))

(assert (=> d!280715 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!165 (regOne!5476 r!15766) (regTwo!5476 r!15766) s!10566) lt!338859)))

(declare-fun m!1149497 () Bool)

(assert (=> bs!237086 m!1149497))

(declare-fun m!1149499 () Bool)

(assert (=> bs!237086 m!1149499))

(declare-fun m!1149501 () Bool)

(assert (=> bs!237086 m!1149501))

(assert (=> bs!237086 m!1149449))

(assert (=> b!922817 d!280715))

(declare-fun d!280719 () Bool)

(declare-fun choose!5666 (Int) Bool)

(assert (=> d!280719 (= (Exists!253 lambda!30183) (choose!5666 lambda!30183))))

(declare-fun bs!237087 () Bool)

(assert (= bs!237087 d!280719))

(declare-fun m!1149503 () Bool)

(assert (=> bs!237087 m!1149503))

(assert (=> b!922817 d!280719))

(declare-fun bs!237088 () Bool)

(declare-fun d!280721 () Bool)

(assert (= bs!237088 (and d!280721 b!922815)))

(declare-fun lambda!30220 () Int)

(assert (=> bs!237088 (= (and (= (regOne!5476 r!15766) lt!338781) (= (regTwo!5476 r!15766) lt!338778)) (= lambda!30220 lambda!30185))))

(assert (=> bs!237088 (not (= lambda!30220 lambda!30186))))

(declare-fun bs!237089 () Bool)

(assert (= bs!237089 (and d!280721 b!922817)))

(assert (=> bs!237089 (not (= lambda!30220 lambda!30184))))

(declare-fun bs!237090 () Bool)

(assert (= bs!237090 (and d!280721 d!280715)))

(assert (=> bs!237090 (not (= lambda!30220 lambda!30217))))

(declare-fun bs!237091 () Bool)

(assert (= bs!237091 (and d!280721 b!922986)))

(assert (=> bs!237091 (not (= lambda!30220 lambda!30208))))

(assert (=> bs!237089 (= lambda!30220 lambda!30183)))

(assert (=> bs!237090 (= lambda!30220 lambda!30216)))

(declare-fun bs!237092 () Bool)

(assert (= bs!237092 (and d!280721 b!922987)))

(assert (=> bs!237092 (not (= lambda!30220 lambda!30210))))

(assert (=> d!280721 true))

(assert (=> d!280721 true))

(assert (=> d!280721 true))

(assert (=> d!280721 (= (isDefined!1759 (findConcatSeparation!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) Nil!9696 s!10566 s!10566)) (Exists!253 lambda!30220))))

(declare-fun lt!338864 () Unit!14583)

(declare-fun choose!5667 (Regex!2482 Regex!2482 List!9712) Unit!14583)

(assert (=> d!280721 (= lt!338864 (choose!5667 (regOne!5476 r!15766) (regTwo!5476 r!15766) s!10566))))

(assert (=> d!280721 (validRegex!951 (regOne!5476 r!15766))))

(assert (=> d!280721 (= (lemmaFindConcatSeparationEquivalentToExists!223 (regOne!5476 r!15766) (regTwo!5476 r!15766) s!10566) lt!338864)))

(declare-fun bs!237093 () Bool)

(assert (= bs!237093 d!280721))

(assert (=> bs!237093 m!1149273))

(assert (=> bs!237093 m!1149275))

(declare-fun m!1149505 () Bool)

(assert (=> bs!237093 m!1149505))

(assert (=> bs!237093 m!1149273))

(assert (=> bs!237093 m!1149449))

(declare-fun m!1149507 () Bool)

(assert (=> bs!237093 m!1149507))

(assert (=> b!922817 d!280721))

(declare-fun d!280723 () Bool)

(assert (=> d!280723 (= (Exists!253 lambda!30184) (choose!5666 lambda!30184))))

(declare-fun bs!237094 () Bool)

(assert (= bs!237094 d!280723))

(declare-fun m!1149509 () Bool)

(assert (=> bs!237094 m!1149509))

(assert (=> b!922817 d!280723))

(declare-fun bs!237095 () Bool)

(declare-fun d!280725 () Bool)

(assert (= bs!237095 (and d!280725 b!922815)))

(declare-fun lambda!30223 () Int)

(assert (=> bs!237095 (= lambda!30223 lambda!30185)))

(assert (=> bs!237095 (not (= lambda!30223 lambda!30186))))

(declare-fun bs!237096 () Bool)

(assert (= bs!237096 (and d!280725 b!922817)))

(assert (=> bs!237096 (not (= lambda!30223 lambda!30184))))

(declare-fun bs!237097 () Bool)

(assert (= bs!237097 (and d!280725 d!280715)))

(assert (=> bs!237097 (not (= lambda!30223 lambda!30217))))

(declare-fun bs!237098 () Bool)

(assert (= bs!237098 (and d!280725 b!922986)))

(assert (=> bs!237098 (not (= lambda!30223 lambda!30208))))

(declare-fun bs!237099 () Bool)

(assert (= bs!237099 (and d!280725 d!280721)))

(assert (=> bs!237099 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30223 lambda!30220))))

(assert (=> bs!237096 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30223 lambda!30183))))

(assert (=> bs!237097 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30223 lambda!30216))))

(declare-fun bs!237100 () Bool)

(assert (= bs!237100 (and d!280725 b!922987)))

(assert (=> bs!237100 (not (= lambda!30223 lambda!30210))))

(assert (=> d!280725 true))

(assert (=> d!280725 true))

(assert (=> d!280725 true))

(assert (=> d!280725 (= (isDefined!1759 (findConcatSeparation!223 lt!338781 lt!338778 Nil!9696 s!10566 s!10566)) (Exists!253 lambda!30223))))

(declare-fun lt!338865 () Unit!14583)

(assert (=> d!280725 (= lt!338865 (choose!5667 lt!338781 lt!338778 s!10566))))

(assert (=> d!280725 (validRegex!951 lt!338781)))

(assert (=> d!280725 (= (lemmaFindConcatSeparationEquivalentToExists!223 lt!338781 lt!338778 s!10566) lt!338865)))

(declare-fun bs!237101 () Bool)

(assert (= bs!237101 d!280725))

(assert (=> bs!237101 m!1149289))

(assert (=> bs!237101 m!1149291))

(declare-fun m!1149511 () Bool)

(assert (=> bs!237101 m!1149511))

(assert (=> bs!237101 m!1149289))

(declare-fun m!1149513 () Bool)

(assert (=> bs!237101 m!1149513))

(declare-fun m!1149515 () Bool)

(assert (=> bs!237101 m!1149515))

(assert (=> b!922815 d!280725))

(declare-fun d!280727 () Bool)

(assert (=> d!280727 (= (Exists!253 lambda!30186) (choose!5666 lambda!30186))))

(declare-fun bs!237102 () Bool)

(assert (= bs!237102 d!280727))

(declare-fun m!1149517 () Bool)

(assert (=> bs!237102 m!1149517))

(assert (=> b!922815 d!280727))

(declare-fun bs!237103 () Bool)

(declare-fun d!280729 () Bool)

(assert (= bs!237103 (and d!280729 b!922815)))

(declare-fun lambda!30224 () Int)

(assert (=> bs!237103 (= lambda!30224 lambda!30185)))

(assert (=> bs!237103 (not (= lambda!30224 lambda!30186))))

(declare-fun bs!237104 () Bool)

(assert (= bs!237104 (and d!280729 b!922817)))

(assert (=> bs!237104 (not (= lambda!30224 lambda!30184))))

(declare-fun bs!237105 () Bool)

(assert (= bs!237105 (and d!280729 d!280715)))

(assert (=> bs!237105 (not (= lambda!30224 lambda!30217))))

(declare-fun bs!237106 () Bool)

(assert (= bs!237106 (and d!280729 b!922986)))

(assert (=> bs!237106 (not (= lambda!30224 lambda!30208))))

(declare-fun bs!237107 () Bool)

(assert (= bs!237107 (and d!280729 d!280721)))

(assert (=> bs!237107 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30224 lambda!30220))))

(assert (=> bs!237104 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30224 lambda!30183))))

(assert (=> bs!237105 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30224 lambda!30216))))

(declare-fun bs!237108 () Bool)

(assert (= bs!237108 (and d!280729 d!280725)))

(assert (=> bs!237108 (= lambda!30224 lambda!30223)))

(declare-fun bs!237109 () Bool)

(assert (= bs!237109 (and d!280729 b!922987)))

(assert (=> bs!237109 (not (= lambda!30224 lambda!30210))))

(assert (=> d!280729 true))

(assert (=> d!280729 true))

(assert (=> d!280729 true))

(declare-fun lambda!30226 () Int)

(assert (=> bs!237103 (not (= lambda!30226 lambda!30185))))

(assert (=> bs!237104 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30226 lambda!30184))))

(assert (=> bs!237105 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30226 lambda!30217))))

(assert (=> bs!237106 (not (= lambda!30226 lambda!30208))))

(assert (=> bs!237107 (not (= lambda!30226 lambda!30220))))

(assert (=> bs!237104 (not (= lambda!30226 lambda!30183))))

(assert (=> bs!237103 (= lambda!30226 lambda!30186)))

(declare-fun bs!237110 () Bool)

(assert (= bs!237110 d!280729))

(assert (=> bs!237110 (not (= lambda!30226 lambda!30224))))

(assert (=> bs!237105 (not (= lambda!30226 lambda!30216))))

(assert (=> bs!237108 (not (= lambda!30226 lambda!30223))))

(assert (=> bs!237109 (= (and (= lt!338781 (regOne!5476 r!15766)) (= lt!338778 (regTwo!5476 r!15766))) (= lambda!30226 lambda!30210))))

(assert (=> d!280729 true))

(assert (=> d!280729 true))

(assert (=> d!280729 true))

(assert (=> d!280729 (= (Exists!253 lambda!30224) (Exists!253 lambda!30226))))

(declare-fun lt!338866 () Unit!14583)

(assert (=> d!280729 (= lt!338866 (choose!5665 lt!338781 lt!338778 s!10566))))

(assert (=> d!280729 (validRegex!951 lt!338781)))

(assert (=> d!280729 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!165 lt!338781 lt!338778 s!10566) lt!338866)))

(declare-fun m!1149519 () Bool)

(assert (=> bs!237110 m!1149519))

(declare-fun m!1149521 () Bool)

(assert (=> bs!237110 m!1149521))

(declare-fun m!1149523 () Bool)

(assert (=> bs!237110 m!1149523))

(assert (=> bs!237110 m!1149513))

(assert (=> b!922815 d!280729))

(declare-fun d!280731 () Bool)

(assert (=> d!280731 (= (isDefined!1759 (findConcatSeparation!223 lt!338781 lt!338778 Nil!9696 s!10566 s!10566)) (not (isEmpty!5947 (findConcatSeparation!223 lt!338781 lt!338778 Nil!9696 s!10566 s!10566))))))

(declare-fun bs!237111 () Bool)

(assert (= bs!237111 d!280731))

(assert (=> bs!237111 m!1149289))

(declare-fun m!1149525 () Bool)

(assert (=> bs!237111 m!1149525))

(assert (=> b!922815 d!280731))

(declare-fun b!923177 () Bool)

(declare-fun e!600868 () Bool)

(declare-fun lt!338869 () Option!2117)

(assert (=> b!923177 (= e!600868 (= (++!2570 (_1!6301 (get!3167 lt!338869)) (_2!6301 (get!3167 lt!338869))) s!10566))))

(declare-fun b!923178 () Bool)

(declare-fun e!600865 () Option!2117)

(declare-fun e!600866 () Option!2117)

(assert (=> b!923178 (= e!600865 e!600866)))

(declare-fun c!149850 () Bool)

(assert (=> b!923178 (= c!149850 (is-Nil!9696 s!10566))))

(declare-fun b!923179 () Bool)

(declare-fun res!419713 () Bool)

(assert (=> b!923179 (=> (not res!419713) (not e!600868))))

(assert (=> b!923179 (= res!419713 (matchR!1020 lt!338778 (_2!6301 (get!3167 lt!338869))))))

(declare-fun b!923180 () Bool)

(declare-fun e!600869 () Bool)

(assert (=> b!923180 (= e!600869 (matchR!1020 lt!338778 s!10566))))

(declare-fun b!923181 () Bool)

(declare-fun lt!338868 () Unit!14583)

(declare-fun lt!338867 () Unit!14583)

(assert (=> b!923181 (= lt!338868 lt!338867)))

(assert (=> b!923181 (= (++!2570 (++!2570 Nil!9696 (Cons!9696 (h!15097 s!10566) Nil!9696)) (t!100758 s!10566)) s!10566)))

(assert (=> b!923181 (= lt!338867 (lemmaMoveElementToOtherListKeepsConcatEq!185 Nil!9696 (h!15097 s!10566) (t!100758 s!10566) s!10566))))

(assert (=> b!923181 (= e!600866 (findConcatSeparation!223 lt!338781 lt!338778 (++!2570 Nil!9696 (Cons!9696 (h!15097 s!10566) Nil!9696)) (t!100758 s!10566) s!10566))))

(declare-fun b!923182 () Bool)

(declare-fun res!419711 () Bool)

(assert (=> b!923182 (=> (not res!419711) (not e!600868))))

(assert (=> b!923182 (= res!419711 (matchR!1020 lt!338781 (_1!6301 (get!3167 lt!338869))))))

(declare-fun b!923183 () Bool)

(assert (=> b!923183 (= e!600866 None!2116)))

(declare-fun d!280733 () Bool)

(declare-fun e!600867 () Bool)

(assert (=> d!280733 e!600867))

(declare-fun res!419712 () Bool)

(assert (=> d!280733 (=> res!419712 e!600867)))

(assert (=> d!280733 (= res!419712 e!600868)))

(declare-fun res!419714 () Bool)

(assert (=> d!280733 (=> (not res!419714) (not e!600868))))

(assert (=> d!280733 (= res!419714 (isDefined!1759 lt!338869))))

(assert (=> d!280733 (= lt!338869 e!600865)))

(declare-fun c!149849 () Bool)

(assert (=> d!280733 (= c!149849 e!600869)))

(declare-fun res!419710 () Bool)

(assert (=> d!280733 (=> (not res!419710) (not e!600869))))

(assert (=> d!280733 (= res!419710 (matchR!1020 lt!338781 Nil!9696))))

(assert (=> d!280733 (validRegex!951 lt!338781)))

(assert (=> d!280733 (= (findConcatSeparation!223 lt!338781 lt!338778 Nil!9696 s!10566 s!10566) lt!338869)))

(declare-fun b!923184 () Bool)

(assert (=> b!923184 (= e!600865 (Some!2116 (tuple2!10951 Nil!9696 s!10566)))))

(declare-fun b!923185 () Bool)

(assert (=> b!923185 (= e!600867 (not (isDefined!1759 lt!338869)))))

(assert (= (and d!280733 res!419710) b!923180))

(assert (= (and d!280733 c!149849) b!923184))

(assert (= (and d!280733 (not c!149849)) b!923178))

(assert (= (and b!923178 c!149850) b!923183))

(assert (= (and b!923178 (not c!149850)) b!923181))

(assert (= (and d!280733 res!419714) b!923182))

(assert (= (and b!923182 res!419711) b!923179))

(assert (= (and b!923179 res!419713) b!923177))

(assert (= (and d!280733 (not res!419712)) b!923185))

(declare-fun m!1149527 () Bool)

(assert (=> b!923179 m!1149527))

(declare-fun m!1149529 () Bool)

(assert (=> b!923179 m!1149529))

(declare-fun m!1149531 () Bool)

(assert (=> d!280733 m!1149531))

(declare-fun m!1149533 () Bool)

(assert (=> d!280733 m!1149533))

(assert (=> d!280733 m!1149513))

(assert (=> b!923181 m!1149461))

(assert (=> b!923181 m!1149461))

(assert (=> b!923181 m!1149463))

(assert (=> b!923181 m!1149465))

(assert (=> b!923181 m!1149461))

(declare-fun m!1149535 () Bool)

(assert (=> b!923181 m!1149535))

(declare-fun m!1149537 () Bool)

(assert (=> b!923180 m!1149537))

(assert (=> b!923182 m!1149527))

(declare-fun m!1149539 () Bool)

(assert (=> b!923182 m!1149539))

(assert (=> b!923185 m!1149531))

(assert (=> b!923177 m!1149527))

(declare-fun m!1149541 () Bool)

(assert (=> b!923177 m!1149541))

(assert (=> b!922815 d!280733))

(declare-fun bs!237112 () Bool)

(declare-fun b!923193 () Bool)

(assert (= bs!237112 (and b!923193 b!922815)))

(declare-fun lambda!30228 () Int)

(assert (=> bs!237112 (not (= lambda!30228 lambda!30185))))

(declare-fun bs!237113 () Bool)

(assert (= bs!237113 (and b!923193 b!922817)))

(assert (=> bs!237113 (not (= lambda!30228 lambda!30184))))

(declare-fun bs!237114 () Bool)

(assert (= bs!237114 (and b!923193 d!280715)))

(assert (=> bs!237114 (not (= lambda!30228 lambda!30217))))

(declare-fun bs!237115 () Bool)

(assert (= bs!237115 (and b!923193 b!922986)))

(assert (=> bs!237115 (= (and (= (reg!2811 lt!338785) (reg!2811 r!15766)) (= lt!338785 r!15766)) (= lambda!30228 lambda!30208))))

(declare-fun bs!237116 () Bool)

(assert (= bs!237116 (and b!923193 d!280721)))

(assert (=> bs!237116 (not (= lambda!30228 lambda!30220))))

(assert (=> bs!237113 (not (= lambda!30228 lambda!30183))))

(declare-fun bs!237118 () Bool)

(assert (= bs!237118 (and b!923193 d!280729)))

(assert (=> bs!237118 (not (= lambda!30228 lambda!30226))))

(assert (=> bs!237112 (not (= lambda!30228 lambda!30186))))

(assert (=> bs!237118 (not (= lambda!30228 lambda!30224))))

(assert (=> bs!237114 (not (= lambda!30228 lambda!30216))))

(declare-fun bs!237120 () Bool)

(assert (= bs!237120 (and b!923193 d!280725)))

(assert (=> bs!237120 (not (= lambda!30228 lambda!30223))))

(declare-fun bs!237122 () Bool)

(assert (= bs!237122 (and b!923193 b!922987)))

(assert (=> bs!237122 (not (= lambda!30228 lambda!30210))))

(assert (=> b!923193 true))

(assert (=> b!923193 true))

(declare-fun bs!237123 () Bool)

(declare-fun b!923194 () Bool)

(assert (= bs!237123 (and b!923194 b!922815)))

(declare-fun lambda!30230 () Int)

(assert (=> bs!237123 (not (= lambda!30230 lambda!30185))))

(declare-fun bs!237124 () Bool)

(assert (= bs!237124 (and b!923194 b!922817)))

(assert (=> bs!237124 (= (and (= (regOne!5476 lt!338785) (regOne!5476 r!15766)) (= (regTwo!5476 lt!338785) (regTwo!5476 r!15766))) (= lambda!30230 lambda!30184))))

(declare-fun bs!237125 () Bool)

(assert (= bs!237125 (and b!923194 d!280715)))

(assert (=> bs!237125 (= (and (= (regOne!5476 lt!338785) (regOne!5476 r!15766)) (= (regTwo!5476 lt!338785) (regTwo!5476 r!15766))) (= lambda!30230 lambda!30217))))

(declare-fun bs!237126 () Bool)

(assert (= bs!237126 (and b!923194 b!923193)))

(assert (=> bs!237126 (not (= lambda!30230 lambda!30228))))

(declare-fun bs!237127 () Bool)

(assert (= bs!237127 (and b!923194 b!922986)))

(assert (=> bs!237127 (not (= lambda!30230 lambda!30208))))

(declare-fun bs!237128 () Bool)

(assert (= bs!237128 (and b!923194 d!280721)))

(assert (=> bs!237128 (not (= lambda!30230 lambda!30220))))

(assert (=> bs!237124 (not (= lambda!30230 lambda!30183))))

(declare-fun bs!237129 () Bool)

(assert (= bs!237129 (and b!923194 d!280729)))

(assert (=> bs!237129 (= (and (= (regOne!5476 lt!338785) lt!338781) (= (regTwo!5476 lt!338785) lt!338778)) (= lambda!30230 lambda!30226))))

(assert (=> bs!237123 (= (and (= (regOne!5476 lt!338785) lt!338781) (= (regTwo!5476 lt!338785) lt!338778)) (= lambda!30230 lambda!30186))))

(assert (=> bs!237129 (not (= lambda!30230 lambda!30224))))

(assert (=> bs!237125 (not (= lambda!30230 lambda!30216))))

(declare-fun bs!237130 () Bool)

(assert (= bs!237130 (and b!923194 d!280725)))

(assert (=> bs!237130 (not (= lambda!30230 lambda!30223))))

(declare-fun bs!237131 () Bool)

(assert (= bs!237131 (and b!923194 b!922987)))

(assert (=> bs!237131 (= (and (= (regOne!5476 lt!338785) (regOne!5476 r!15766)) (= (regTwo!5476 lt!338785) (regTwo!5476 r!15766))) (= lambda!30230 lambda!30210))))

(assert (=> b!923194 true))

(assert (=> b!923194 true))

(declare-fun b!923186 () Bool)

(declare-fun e!600876 () Bool)

(declare-fun call!56308 () Bool)

(assert (=> b!923186 (= e!600876 call!56308)))

(declare-fun b!923188 () Bool)

(declare-fun c!149852 () Bool)

(assert (=> b!923188 (= c!149852 (is-ElementMatch!2482 lt!338785))))

(declare-fun e!600874 () Bool)

(declare-fun e!600871 () Bool)

(assert (=> b!923188 (= e!600874 e!600871)))

(declare-fun b!923189 () Bool)

(declare-fun c!149854 () Bool)

(assert (=> b!923189 (= c!149854 (is-Union!2482 lt!338785))))

(declare-fun e!600875 () Bool)

(assert (=> b!923189 (= e!600871 e!600875)))

(declare-fun b!923190 () Bool)

(assert (=> b!923190 (= e!600876 e!600874)))

(declare-fun res!419716 () Bool)

(assert (=> b!923190 (= res!419716 (not (is-EmptyLang!2482 lt!338785)))))

(assert (=> b!923190 (=> (not res!419716) (not e!600874))))

(declare-fun b!923191 () Bool)

(declare-fun e!600873 () Bool)

(assert (=> b!923191 (= e!600875 e!600873)))

(declare-fun c!149851 () Bool)

(assert (=> b!923191 (= c!149851 (is-Star!2482 lt!338785))))

(declare-fun call!56309 () Bool)

(declare-fun bm!56303 () Bool)

(assert (=> bm!56303 (= call!56309 (Exists!253 (ite c!149851 lambda!30228 lambda!30230)))))

(declare-fun b!923192 () Bool)

(declare-fun e!600872 () Bool)

(assert (=> b!923192 (= e!600872 (matchRSpec!283 (regTwo!5477 lt!338785) s!10566))))

(declare-fun bm!56304 () Bool)

(assert (=> bm!56304 (= call!56308 (isEmpty!5945 s!10566))))

(declare-fun b!923187 () Bool)

(assert (=> b!923187 (= e!600875 e!600872)))

(declare-fun res!419717 () Bool)

(assert (=> b!923187 (= res!419717 (matchRSpec!283 (regOne!5477 lt!338785) s!10566))))

(assert (=> b!923187 (=> res!419717 e!600872)))

(declare-fun d!280735 () Bool)

(declare-fun c!149853 () Bool)

(assert (=> d!280735 (= c!149853 (is-EmptyExpr!2482 lt!338785))))

(assert (=> d!280735 (= (matchRSpec!283 lt!338785 s!10566) e!600876)))

(declare-fun e!600870 () Bool)

(assert (=> b!923193 (= e!600870 call!56309)))

(assert (=> b!923194 (= e!600873 call!56309)))

(declare-fun b!923195 () Bool)

(declare-fun res!419715 () Bool)

(assert (=> b!923195 (=> res!419715 e!600870)))

(assert (=> b!923195 (= res!419715 call!56308)))

(assert (=> b!923195 (= e!600873 e!600870)))

(declare-fun b!923196 () Bool)

(assert (=> b!923196 (= e!600871 (= s!10566 (Cons!9696 (c!149775 lt!338785) Nil!9696)))))

(assert (= (and d!280735 c!149853) b!923186))

(assert (= (and d!280735 (not c!149853)) b!923190))

(assert (= (and b!923190 res!419716) b!923188))

(assert (= (and b!923188 c!149852) b!923196))

(assert (= (and b!923188 (not c!149852)) b!923189))

(assert (= (and b!923189 c!149854) b!923187))

(assert (= (and b!923189 (not c!149854)) b!923191))

(assert (= (and b!923187 (not res!419717)) b!923192))

(assert (= (and b!923191 c!149851) b!923195))

(assert (= (and b!923191 (not c!149851)) b!923194))

(assert (= (and b!923195 (not res!419715)) b!923193))

(assert (= (or b!923193 b!923194) bm!56303))

(assert (= (or b!923186 b!923195) bm!56304))

(declare-fun m!1149543 () Bool)

(assert (=> bm!56303 m!1149543))

(declare-fun m!1149545 () Bool)

(assert (=> b!923192 m!1149545))

(assert (=> bm!56304 m!1149281))

(declare-fun m!1149547 () Bool)

(assert (=> b!923187 m!1149547))

(assert (=> b!922815 d!280735))

(declare-fun d!280737 () Bool)

(assert (=> d!280737 (= (matchR!1020 lt!338785 s!10566) (matchRSpec!283 lt!338785 s!10566))))

(declare-fun lt!338871 () Unit!14583)

(assert (=> d!280737 (= lt!338871 (choose!5664 lt!338785 s!10566))))

(assert (=> d!280737 (validRegex!951 lt!338785)))

(assert (=> d!280737 (= (mainMatchTheorem!283 lt!338785 s!10566) lt!338871)))

(declare-fun bs!237133 () Bool)

(assert (= bs!237133 d!280737))

(assert (=> bs!237133 m!1149303))

(assert (=> bs!237133 m!1149295))

(declare-fun m!1149549 () Bool)

(assert (=> bs!237133 m!1149549))

(assert (=> bs!237133 m!1149423))

(assert (=> b!922815 d!280737))

(declare-fun d!280739 () Bool)

(assert (=> d!280739 (= (Exists!253 lambda!30185) (choose!5666 lambda!30185))))

(declare-fun bs!237134 () Bool)

(assert (= bs!237134 d!280739))

(declare-fun m!1149551 () Bool)

(assert (=> bs!237134 m!1149551))

(assert (=> b!922815 d!280739))

(declare-fun b!923201 () Bool)

(declare-fun e!600879 () Bool)

(declare-fun tp!287239 () Bool)

(assert (=> b!923201 (= e!600879 (and tp_is_empty!4607 tp!287239))))

(assert (=> b!922814 (= tp!287218 e!600879)))

(assert (= (and b!922814 (is-Cons!9696 (t!100758 s!10566))) b!923201))

(declare-fun b!923213 () Bool)

(declare-fun e!600882 () Bool)

(declare-fun tp!287254 () Bool)

(declare-fun tp!287253 () Bool)

(assert (=> b!923213 (= e!600882 (and tp!287254 tp!287253))))

(assert (=> b!922812 (= tp!287216 e!600882)))

(declare-fun b!923215 () Bool)

(declare-fun tp!287252 () Bool)

(declare-fun tp!287250 () Bool)

(assert (=> b!923215 (= e!600882 (and tp!287252 tp!287250))))

(declare-fun b!923214 () Bool)

(declare-fun tp!287251 () Bool)

(assert (=> b!923214 (= e!600882 tp!287251)))

(declare-fun b!923212 () Bool)

(assert (=> b!923212 (= e!600882 tp_is_empty!4607)))

(assert (= (and b!922812 (is-ElementMatch!2482 (regOne!5477 r!15766))) b!923212))

(assert (= (and b!922812 (is-Concat!4315 (regOne!5477 r!15766))) b!923213))

(assert (= (and b!922812 (is-Star!2482 (regOne!5477 r!15766))) b!923214))

(assert (= (and b!922812 (is-Union!2482 (regOne!5477 r!15766))) b!923215))

(declare-fun b!923217 () Bool)

(declare-fun e!600883 () Bool)

(declare-fun tp!287259 () Bool)

(declare-fun tp!287258 () Bool)

(assert (=> b!923217 (= e!600883 (and tp!287259 tp!287258))))

(assert (=> b!922812 (= tp!287217 e!600883)))

(declare-fun b!923219 () Bool)

(declare-fun tp!287257 () Bool)

(declare-fun tp!287255 () Bool)

(assert (=> b!923219 (= e!600883 (and tp!287257 tp!287255))))

(declare-fun b!923218 () Bool)

(declare-fun tp!287256 () Bool)

(assert (=> b!923218 (= e!600883 tp!287256)))

(declare-fun b!923216 () Bool)

(assert (=> b!923216 (= e!600883 tp_is_empty!4607)))

(assert (= (and b!922812 (is-ElementMatch!2482 (regTwo!5477 r!15766))) b!923216))

(assert (= (and b!922812 (is-Concat!4315 (regTwo!5477 r!15766))) b!923217))

(assert (= (and b!922812 (is-Star!2482 (regTwo!5477 r!15766))) b!923218))

(assert (= (and b!922812 (is-Union!2482 (regTwo!5477 r!15766))) b!923219))

(declare-fun b!923221 () Bool)

(declare-fun e!600884 () Bool)

(declare-fun tp!287264 () Bool)

(declare-fun tp!287263 () Bool)

(assert (=> b!923221 (= e!600884 (and tp!287264 tp!287263))))

(assert (=> b!922816 (= tp!287213 e!600884)))

(declare-fun b!923223 () Bool)

(declare-fun tp!287262 () Bool)

(declare-fun tp!287260 () Bool)

(assert (=> b!923223 (= e!600884 (and tp!287262 tp!287260))))

(declare-fun b!923222 () Bool)

(declare-fun tp!287261 () Bool)

(assert (=> b!923222 (= e!600884 tp!287261)))

(declare-fun b!923220 () Bool)

(assert (=> b!923220 (= e!600884 tp_is_empty!4607)))

(assert (= (and b!922816 (is-ElementMatch!2482 (reg!2811 r!15766))) b!923220))

(assert (= (and b!922816 (is-Concat!4315 (reg!2811 r!15766))) b!923221))

(assert (= (and b!922816 (is-Star!2482 (reg!2811 r!15766))) b!923222))

(assert (= (and b!922816 (is-Union!2482 (reg!2811 r!15766))) b!923223))

(declare-fun b!923225 () Bool)

(declare-fun e!600885 () Bool)

(declare-fun tp!287269 () Bool)

(declare-fun tp!287268 () Bool)

(assert (=> b!923225 (= e!600885 (and tp!287269 tp!287268))))

(assert (=> b!922821 (= tp!287214 e!600885)))

(declare-fun b!923227 () Bool)

(declare-fun tp!287267 () Bool)

(declare-fun tp!287265 () Bool)

(assert (=> b!923227 (= e!600885 (and tp!287267 tp!287265))))

(declare-fun b!923226 () Bool)

(declare-fun tp!287266 () Bool)

(assert (=> b!923226 (= e!600885 tp!287266)))

(declare-fun b!923224 () Bool)

(assert (=> b!923224 (= e!600885 tp_is_empty!4607)))

(assert (= (and b!922821 (is-ElementMatch!2482 (regOne!5476 r!15766))) b!923224))

(assert (= (and b!922821 (is-Concat!4315 (regOne!5476 r!15766))) b!923225))

(assert (= (and b!922821 (is-Star!2482 (regOne!5476 r!15766))) b!923226))

(assert (= (and b!922821 (is-Union!2482 (regOne!5476 r!15766))) b!923227))

(declare-fun b!923229 () Bool)

(declare-fun e!600886 () Bool)

(declare-fun tp!287274 () Bool)

(declare-fun tp!287273 () Bool)

(assert (=> b!923229 (= e!600886 (and tp!287274 tp!287273))))

(assert (=> b!922821 (= tp!287215 e!600886)))

(declare-fun b!923231 () Bool)

(declare-fun tp!287272 () Bool)

(declare-fun tp!287270 () Bool)

(assert (=> b!923231 (= e!600886 (and tp!287272 tp!287270))))

(declare-fun b!923230 () Bool)

(declare-fun tp!287271 () Bool)

(assert (=> b!923230 (= e!600886 tp!287271)))

(declare-fun b!923228 () Bool)

(assert (=> b!923228 (= e!600886 tp_is_empty!4607)))

(assert (= (and b!922821 (is-ElementMatch!2482 (regTwo!5476 r!15766))) b!923228))

(assert (= (and b!922821 (is-Concat!4315 (regTwo!5476 r!15766))) b!923229))

(assert (= (and b!922821 (is-Star!2482 (regTwo!5476 r!15766))) b!923230))

(assert (= (and b!922821 (is-Union!2482 (regTwo!5476 r!15766))) b!923231))

(push 1)

(assert (not b!923213))

(assert (not bm!56264))

(assert (not b!923056))

(assert (not b!923231))

(assert (not b!923225))

(assert (not bm!56274))

(assert (not b!922930))

(assert (not b!923227))

(assert (not d!280711))

(assert (not b!923221))

(assert (not b!923037))

(assert (not b!923222))

(assert (not bm!56279))

(assert (not b!923144))

(assert (not b!923141))

(assert (not d!280721))

(assert tp_is_empty!4607)

(assert (not bm!56280))

(assert (not b!923029))

(assert (not bm!56293))

(assert (not d!280707))

(assert (not d!280739))

(assert (not b!923047))

(assert (not b!923142))

(assert (not bm!56295))

(assert (not b!923024))

(assert (not d!280715))

(assert (not bm!56275))

(assert (not d!280719))

(assert (not d!280713))

(assert (not b!923214))

(assert (not b!923201))

(assert (not b!922980))

(assert (not bm!56304))

(assert (not bm!56300))

(assert (not b!923139))

(assert (not bm!56278))

(assert (not b!923179))

(assert (not d!280729))

(assert (not d!280695))

(assert (not d!280705))

(assert (not b!923045))

(assert (not d!280737))

(assert (not b!923147))

(assert (not b!923218))

(assert (not b!923226))

(assert (not b!923217))

(assert (not b!922985))

(assert (not bm!56282))

(assert (not d!280691))

(assert (not b!923215))

(assert (not bm!56298))

(assert (not b!923182))

(assert (not b!923055))

(assert (not b!923187))

(assert (not b!923033))

(assert (not d!280703))

(assert (not b!923230))

(assert (not b!923032))

(assert (not d!280733))

(assert (not b!923085))

(assert (not d!280723))

(assert (not d!280727))

(assert (not bm!56303))

(assert (not d!280731))

(assert (not b!923052))

(assert (not b!923022))

(assert (not bm!56265))

(assert (not d!280725))

(assert (not b!923219))

(assert (not b!923034))

(assert (not b!923143))

(assert (not b!923229))

(assert (not b!923223))

(assert (not b!923181))

(assert (not b!923057))

(assert (not b!923096))

(assert (not b!923185))

(assert (not b!923180))

(assert (not b!923177))

(assert (not b!923192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

