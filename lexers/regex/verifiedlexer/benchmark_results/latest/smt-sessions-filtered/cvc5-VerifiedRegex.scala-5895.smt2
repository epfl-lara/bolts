; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288626 () Bool)

(assert start!288626)

(declare-fun b!2988174 () Bool)

(assert (=> b!2988174 true))

(assert (=> b!2988174 true))

(assert (=> b!2988174 true))

(declare-fun lambda!111660 () Int)

(declare-fun lambda!111659 () Int)

(assert (=> b!2988174 (not (= lambda!111660 lambda!111659))))

(assert (=> b!2988174 true))

(assert (=> b!2988174 true))

(assert (=> b!2988174 true))

(declare-fun b!2988164 () Bool)

(declare-fun res!1232485 () Bool)

(declare-fun e!1878652 () Bool)

(assert (=> b!2988164 (=> res!1232485 e!1878652)))

(declare-datatypes ((C!18866 0))(
  ( (C!18867 (val!11469 Int)) )
))
(declare-datatypes ((Regex!9340 0))(
  ( (ElementMatch!9340 (c!490956 C!18866)) (Concat!14661 (regOne!19192 Regex!9340) (regTwo!19192 Regex!9340)) (EmptyExpr!9340) (Star!9340 (reg!9669 Regex!9340)) (EmptyLang!9340) (Union!9340 (regOne!19193 Regex!9340) (regTwo!19193 Regex!9340)) )
))
(declare-fun lt!1039820 () Regex!9340)

(declare-datatypes ((List!35205 0))(
  ( (Nil!35081) (Cons!35081 (h!40501 C!18866) (t!234270 List!35205)) )
))
(declare-datatypes ((tuple2!33998 0))(
  ( (tuple2!33999 (_1!20131 List!35205) (_2!20131 List!35205)) )
))
(declare-fun lt!1039814 () tuple2!33998)

(declare-fun matchR!4222 (Regex!9340 List!35205) Bool)

(assert (=> b!2988164 (= res!1232485 (not (matchR!4222 lt!1039820 (_2!20131 lt!1039814))))))

(declare-fun b!2988165 () Bool)

(declare-fun e!1878650 () Bool)

(assert (=> b!2988165 (= e!1878652 e!1878650)))

(declare-fun res!1232489 () Bool)

(assert (=> b!2988165 (=> res!1232489 e!1878650)))

(declare-fun s!11993 () List!35205)

(declare-fun size!26490 (List!35205) Int)

(assert (=> b!2988165 (= res!1232489 (not (= (size!26490 (_2!20131 lt!1039814)) (size!26490 s!11993))))))

(declare-fun r!17423 () Regex!9340)

(declare-fun simplify!331 (Regex!9340) Regex!9340)

(assert (=> b!2988165 (matchR!4222 (simplify!331 (reg!9669 r!17423)) (_1!20131 lt!1039814))))

(declare-datatypes ((Unit!49083 0))(
  ( (Unit!49084) )
))
(declare-fun lt!1039813 () Unit!49083)

(declare-fun lemmaSimplifySound!189 (Regex!9340 List!35205) Unit!49083)

(assert (=> b!2988165 (= lt!1039813 (lemmaSimplifySound!189 (reg!9669 r!17423) (_1!20131 lt!1039814)))))

(declare-fun res!1232487 () Bool)

(declare-fun e!1878649 () Bool)

(assert (=> start!288626 (=> (not res!1232487) (not e!1878649))))

(declare-fun validRegex!4073 (Regex!9340) Bool)

(assert (=> start!288626 (= res!1232487 (validRegex!4073 r!17423))))

(assert (=> start!288626 e!1878649))

(declare-fun e!1878651 () Bool)

(assert (=> start!288626 e!1878651))

(declare-fun e!1878653 () Bool)

(assert (=> start!288626 e!1878653))

(declare-fun b!2988166 () Bool)

(declare-fun ++!8384 (List!35205 List!35205) List!35205)

(assert (=> b!2988166 (= e!1878650 (= (++!8384 (_1!20131 lt!1039814) (_2!20131 lt!1039814)) s!11993))))

(declare-fun b!2988167 () Bool)

(declare-fun tp_is_empty!16243 () Bool)

(assert (=> b!2988167 (= e!1878651 tp_is_empty!16243)))

(declare-fun b!2988168 () Bool)

(declare-fun tp!950508 () Bool)

(declare-fun tp!950507 () Bool)

(assert (=> b!2988168 (= e!1878651 (and tp!950508 tp!950507))))

(declare-fun b!2988169 () Bool)

(declare-fun e!1878648 () Bool)

(assert (=> b!2988169 (= e!1878648 e!1878652)))

(declare-fun res!1232490 () Bool)

(assert (=> b!2988169 (=> res!1232490 e!1878652)))

(assert (=> b!2988169 (= res!1232490 (not (matchR!4222 (reg!9669 r!17423) (_1!20131 lt!1039814))))))

(declare-datatypes ((Option!6731 0))(
  ( (None!6730) (Some!6730 (v!34864 tuple2!33998)) )
))
(declare-fun lt!1039821 () Option!6731)

(declare-fun get!10869 (Option!6731) tuple2!33998)

(assert (=> b!2988169 (= lt!1039814 (get!10869 lt!1039821))))

(declare-fun b!2988170 () Bool)

(declare-fun e!1878654 () Bool)

(assert (=> b!2988170 (= e!1878649 (not e!1878654))))

(declare-fun res!1232488 () Bool)

(assert (=> b!2988170 (=> res!1232488 e!1878654)))

(declare-fun lt!1039816 () Bool)

(assert (=> b!2988170 (= res!1232488 (or (not lt!1039816) (is-Concat!14661 r!17423) (is-Union!9340 r!17423) (not (is-Star!9340 r!17423))))))

(declare-fun matchRSpec!1477 (Regex!9340 List!35205) Bool)

(assert (=> b!2988170 (= lt!1039816 (matchRSpec!1477 r!17423 s!11993))))

(assert (=> b!2988170 (= lt!1039816 (matchR!4222 r!17423 s!11993))))

(declare-fun lt!1039819 () Unit!49083)

(declare-fun mainMatchTheorem!1477 (Regex!9340 List!35205) Unit!49083)

(assert (=> b!2988170 (= lt!1039819 (mainMatchTheorem!1477 r!17423 s!11993))))

(declare-fun b!2988171 () Bool)

(declare-fun tp!950511 () Bool)

(assert (=> b!2988171 (= e!1878653 (and tp_is_empty!16243 tp!950511))))

(declare-fun b!2988172 () Bool)

(declare-fun tp!950506 () Bool)

(assert (=> b!2988172 (= e!1878651 tp!950506)))

(declare-fun b!2988173 () Bool)

(declare-fun res!1232486 () Bool)

(assert (=> b!2988173 (=> res!1232486 e!1878654)))

(declare-fun isEmpty!19345 (List!35205) Bool)

(assert (=> b!2988173 (= res!1232486 (isEmpty!19345 s!11993))))

(assert (=> b!2988174 (= e!1878654 e!1878648)))

(declare-fun res!1232491 () Bool)

(assert (=> b!2988174 (=> res!1232491 e!1878648)))

(declare-fun lt!1039817 () Bool)

(assert (=> b!2988174 (= res!1232491 (not lt!1039817))))

(declare-fun Exists!1613 (Int) Bool)

(assert (=> b!2988174 (= (Exists!1613 lambda!111659) (Exists!1613 lambda!111660))))

(declare-fun lt!1039815 () Unit!49083)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!289 (Regex!9340 List!35205) Unit!49083)

(assert (=> b!2988174 (= lt!1039815 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!289 (reg!9669 r!17423) s!11993))))

(assert (=> b!2988174 (= lt!1039817 (Exists!1613 lambda!111659))))

(declare-fun isDefined!5282 (Option!6731) Bool)

(assert (=> b!2988174 (= lt!1039817 (isDefined!5282 lt!1039821))))

(declare-fun findConcatSeparation!1125 (Regex!9340 Regex!9340 List!35205 List!35205 List!35205) Option!6731)

(assert (=> b!2988174 (= lt!1039821 (findConcatSeparation!1125 (reg!9669 r!17423) lt!1039820 Nil!35081 s!11993 s!11993))))

(declare-fun lt!1039818 () Unit!49083)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!903 (Regex!9340 Regex!9340 List!35205) Unit!49083)

(assert (=> b!2988174 (= lt!1039818 (lemmaFindConcatSeparationEquivalentToExists!903 (reg!9669 r!17423) lt!1039820 s!11993))))

(assert (=> b!2988174 (= lt!1039820 (Star!9340 (reg!9669 r!17423)))))

(declare-fun b!2988175 () Bool)

(declare-fun tp!950509 () Bool)

(declare-fun tp!950510 () Bool)

(assert (=> b!2988175 (= e!1878651 (and tp!950509 tp!950510))))

(assert (= (and start!288626 res!1232487) b!2988170))

(assert (= (and b!2988170 (not res!1232488)) b!2988173))

(assert (= (and b!2988173 (not res!1232486)) b!2988174))

(assert (= (and b!2988174 (not res!1232491)) b!2988169))

(assert (= (and b!2988169 (not res!1232490)) b!2988164))

(assert (= (and b!2988164 (not res!1232485)) b!2988165))

(assert (= (and b!2988165 (not res!1232489)) b!2988166))

(assert (= (and start!288626 (is-ElementMatch!9340 r!17423)) b!2988167))

(assert (= (and start!288626 (is-Concat!14661 r!17423)) b!2988175))

(assert (= (and start!288626 (is-Star!9340 r!17423)) b!2988172))

(assert (= (and start!288626 (is-Union!9340 r!17423)) b!2988168))

(assert (= (and start!288626 (is-Cons!35081 s!11993)) b!2988171))

(declare-fun m!3345757 () Bool)

(assert (=> b!2988170 m!3345757))

(declare-fun m!3345759 () Bool)

(assert (=> b!2988170 m!3345759))

(declare-fun m!3345761 () Bool)

(assert (=> b!2988170 m!3345761))

(declare-fun m!3345763 () Bool)

(assert (=> b!2988165 m!3345763))

(declare-fun m!3345765 () Bool)

(assert (=> b!2988165 m!3345765))

(declare-fun m!3345767 () Bool)

(assert (=> b!2988165 m!3345767))

(declare-fun m!3345769 () Bool)

(assert (=> b!2988165 m!3345769))

(assert (=> b!2988165 m!3345763))

(declare-fun m!3345771 () Bool)

(assert (=> b!2988165 m!3345771))

(declare-fun m!3345773 () Bool)

(assert (=> b!2988164 m!3345773))

(declare-fun m!3345775 () Bool)

(assert (=> b!2988169 m!3345775))

(declare-fun m!3345777 () Bool)

(assert (=> b!2988169 m!3345777))

(declare-fun m!3345779 () Bool)

(assert (=> b!2988173 m!3345779))

(declare-fun m!3345781 () Bool)

(assert (=> b!2988166 m!3345781))

(declare-fun m!3345783 () Bool)

(assert (=> b!2988174 m!3345783))

(declare-fun m!3345785 () Bool)

(assert (=> b!2988174 m!3345785))

(declare-fun m!3345787 () Bool)

(assert (=> b!2988174 m!3345787))

(assert (=> b!2988174 m!3345785))

(declare-fun m!3345789 () Bool)

(assert (=> b!2988174 m!3345789))

(declare-fun m!3345791 () Bool)

(assert (=> b!2988174 m!3345791))

(declare-fun m!3345793 () Bool)

(assert (=> b!2988174 m!3345793))

(declare-fun m!3345795 () Bool)

(assert (=> start!288626 m!3345795))

(push 1)

(assert (not b!2988174))

(assert (not b!2988169))

(assert (not start!288626))

(assert (not b!2988166))

(assert (not b!2988164))

(assert (not b!2988172))

(assert (not b!2988170))

(assert (not b!2988165))

(assert (not b!2988175))

(assert (not b!2988168))

(assert (not b!2988171))

(assert tp_is_empty!16243)

(assert (not b!2988173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!844278 () Bool)

(assert (=> d!844278 (= (isEmpty!19345 s!11993) (is-Nil!35081 s!11993))))

(assert (=> b!2988173 d!844278))

(declare-fun bm!199786 () Bool)

(declare-fun call!199792 () Bool)

(declare-fun c!490963 () Bool)

(assert (=> bm!199786 (= call!199792 (validRegex!4073 (ite c!490963 (regTwo!19193 r!17423) (regOne!19192 r!17423))))))

(declare-fun b!2988252 () Bool)

(declare-fun res!1232539 () Bool)

(declare-fun e!1878698 () Bool)

(assert (=> b!2988252 (=> (not res!1232539) (not e!1878698))))

(declare-fun call!199791 () Bool)

(assert (=> b!2988252 (= res!1232539 call!199791)))

(declare-fun e!1878697 () Bool)

(assert (=> b!2988252 (= e!1878697 e!1878698)))

(declare-fun b!2988253 () Bool)

(declare-fun e!1878702 () Bool)

(declare-fun e!1878696 () Bool)

(assert (=> b!2988253 (= e!1878702 e!1878696)))

(declare-fun res!1232540 () Bool)

(assert (=> b!2988253 (=> (not res!1232540) (not e!1878696))))

(assert (=> b!2988253 (= res!1232540 call!199792)))

(declare-fun b!2988255 () Bool)

(assert (=> b!2988255 (= e!1878696 call!199791)))

(declare-fun bm!199787 () Bool)

(declare-fun call!199793 () Bool)

(assert (=> bm!199787 (= call!199791 call!199793)))

(declare-fun b!2988256 () Bool)

(declare-fun e!1878700 () Bool)

(declare-fun e!1878701 () Bool)

(assert (=> b!2988256 (= e!1878700 e!1878701)))

(declare-fun res!1232541 () Bool)

(declare-fun nullable!3011 (Regex!9340) Bool)

(assert (=> b!2988256 (= res!1232541 (not (nullable!3011 (reg!9669 r!17423))))))

(assert (=> b!2988256 (=> (not res!1232541) (not e!1878701))))

(declare-fun bm!199788 () Bool)

(declare-fun c!490962 () Bool)

(assert (=> bm!199788 (= call!199793 (validRegex!4073 (ite c!490962 (reg!9669 r!17423) (ite c!490963 (regOne!19193 r!17423) (regTwo!19192 r!17423)))))))

(declare-fun b!2988257 () Bool)

(assert (=> b!2988257 (= e!1878700 e!1878697)))

(assert (=> b!2988257 (= c!490963 (is-Union!9340 r!17423))))

(declare-fun b!2988258 () Bool)

(assert (=> b!2988258 (= e!1878698 call!199792)))

(declare-fun b!2988254 () Bool)

(declare-fun e!1878699 () Bool)

(assert (=> b!2988254 (= e!1878699 e!1878700)))

(assert (=> b!2988254 (= c!490962 (is-Star!9340 r!17423))))

(declare-fun d!844280 () Bool)

(declare-fun res!1232537 () Bool)

(assert (=> d!844280 (=> res!1232537 e!1878699)))

(assert (=> d!844280 (= res!1232537 (is-ElementMatch!9340 r!17423))))

(assert (=> d!844280 (= (validRegex!4073 r!17423) e!1878699)))

(declare-fun b!2988259 () Bool)

(assert (=> b!2988259 (= e!1878701 call!199793)))

(declare-fun b!2988260 () Bool)

(declare-fun res!1232538 () Bool)

(assert (=> b!2988260 (=> res!1232538 e!1878702)))

(assert (=> b!2988260 (= res!1232538 (not (is-Concat!14661 r!17423)))))

(assert (=> b!2988260 (= e!1878697 e!1878702)))

(assert (= (and d!844280 (not res!1232537)) b!2988254))

(assert (= (and b!2988254 c!490962) b!2988256))

(assert (= (and b!2988254 (not c!490962)) b!2988257))

(assert (= (and b!2988256 res!1232541) b!2988259))

(assert (= (and b!2988257 c!490963) b!2988252))

(assert (= (and b!2988257 (not c!490963)) b!2988260))

(assert (= (and b!2988252 res!1232539) b!2988258))

(assert (= (and b!2988260 (not res!1232538)) b!2988253))

(assert (= (and b!2988253 res!1232540) b!2988255))

(assert (= (or b!2988252 b!2988255) bm!199787))

(assert (= (or b!2988258 b!2988253) bm!199786))

(assert (= (or b!2988259 bm!199787) bm!199788))

(declare-fun m!3345837 () Bool)

(assert (=> bm!199786 m!3345837))

(declare-fun m!3345839 () Bool)

(assert (=> b!2988256 m!3345839))

(declare-fun m!3345841 () Bool)

(assert (=> bm!199788 m!3345841))

(assert (=> start!288626 d!844280))

(declare-fun d!844284 () Bool)

(declare-fun e!1878712 () Bool)

(assert (=> d!844284 e!1878712))

(declare-fun res!1232550 () Bool)

(assert (=> d!844284 (=> (not res!1232550) (not e!1878712))))

(declare-fun lt!1039853 () List!35205)

(declare-fun content!4767 (List!35205) (Set C!18866))

(assert (=> d!844284 (= res!1232550 (= (content!4767 lt!1039853) (set.union (content!4767 (_1!20131 lt!1039814)) (content!4767 (_2!20131 lt!1039814)))))))

(declare-fun e!1878711 () List!35205)

(assert (=> d!844284 (= lt!1039853 e!1878711)))

(declare-fun c!490968 () Bool)

(assert (=> d!844284 (= c!490968 (is-Nil!35081 (_1!20131 lt!1039814)))))

(assert (=> d!844284 (= (++!8384 (_1!20131 lt!1039814) (_2!20131 lt!1039814)) lt!1039853)))

(declare-fun b!2988280 () Bool)

(assert (=> b!2988280 (= e!1878712 (or (not (= (_2!20131 lt!1039814) Nil!35081)) (= lt!1039853 (_1!20131 lt!1039814))))))

(declare-fun b!2988278 () Bool)

(assert (=> b!2988278 (= e!1878711 (Cons!35081 (h!40501 (_1!20131 lt!1039814)) (++!8384 (t!234270 (_1!20131 lt!1039814)) (_2!20131 lt!1039814))))))

(declare-fun b!2988277 () Bool)

(assert (=> b!2988277 (= e!1878711 (_2!20131 lt!1039814))))

(declare-fun b!2988279 () Bool)

(declare-fun res!1232551 () Bool)

(assert (=> b!2988279 (=> (not res!1232551) (not e!1878712))))

(assert (=> b!2988279 (= res!1232551 (= (size!26490 lt!1039853) (+ (size!26490 (_1!20131 lt!1039814)) (size!26490 (_2!20131 lt!1039814)))))))

(assert (= (and d!844284 c!490968) b!2988277))

(assert (= (and d!844284 (not c!490968)) b!2988278))

(assert (= (and d!844284 res!1232550) b!2988279))

(assert (= (and b!2988279 res!1232551) b!2988280))

(declare-fun m!3345843 () Bool)

(assert (=> d!844284 m!3345843))

(declare-fun m!3345845 () Bool)

(assert (=> d!844284 m!3345845))

(declare-fun m!3345847 () Bool)

(assert (=> d!844284 m!3345847))

(declare-fun m!3345849 () Bool)

(assert (=> b!2988278 m!3345849))

(declare-fun m!3345851 () Bool)

(assert (=> b!2988279 m!3345851))

(declare-fun m!3345853 () Bool)

(assert (=> b!2988279 m!3345853))

(assert (=> b!2988279 m!3345769))

(assert (=> b!2988166 d!844284))

(declare-fun bs!527547 () Bool)

(declare-fun b!2988326 () Bool)

(assert (= bs!527547 (and b!2988326 b!2988174)))

(declare-fun lambda!111673 () Int)

(assert (=> bs!527547 (not (= lambda!111673 lambda!111659))))

(assert (=> bs!527547 (= (= r!17423 lt!1039820) (= lambda!111673 lambda!111660))))

(assert (=> b!2988326 true))

(assert (=> b!2988326 true))

(declare-fun bs!527548 () Bool)

(declare-fun b!2988330 () Bool)

(assert (= bs!527548 (and b!2988330 b!2988174)))

(declare-fun lambda!111674 () Int)

(assert (=> bs!527548 (not (= lambda!111674 lambda!111659))))

(assert (=> bs!527548 (not (= lambda!111674 lambda!111660))))

(declare-fun bs!527549 () Bool)

(assert (= bs!527549 (and b!2988330 b!2988326)))

(assert (=> bs!527549 (not (= lambda!111674 lambda!111673))))

(assert (=> b!2988330 true))

(assert (=> b!2988330 true))

(declare-fun c!490980 () Bool)

(declare-fun bm!199793 () Bool)

(declare-fun call!199799 () Bool)

(assert (=> bm!199793 (= call!199799 (Exists!1613 (ite c!490980 lambda!111673 lambda!111674)))))

(declare-fun d!844286 () Bool)

(declare-fun c!490981 () Bool)

(assert (=> d!844286 (= c!490981 (is-EmptyExpr!9340 r!17423))))

(declare-fun e!1878735 () Bool)

(assert (=> d!844286 (= (matchRSpec!1477 r!17423 s!11993) e!1878735)))

(declare-fun b!2988321 () Bool)

(declare-fun e!1878739 () Bool)

(assert (=> b!2988321 (= e!1878739 (matchRSpec!1477 (regTwo!19193 r!17423) s!11993))))

(declare-fun b!2988322 () Bool)

(declare-fun call!199798 () Bool)

(assert (=> b!2988322 (= e!1878735 call!199798)))

(declare-fun b!2988323 () Bool)

(declare-fun e!1878736 () Bool)

(assert (=> b!2988323 (= e!1878736 (= s!11993 (Cons!35081 (c!490956 r!17423) Nil!35081)))))

(declare-fun b!2988324 () Bool)

(declare-fun e!1878738 () Bool)

(assert (=> b!2988324 (= e!1878735 e!1878738)))

(declare-fun res!1232570 () Bool)

(assert (=> b!2988324 (= res!1232570 (not (is-EmptyLang!9340 r!17423)))))

(assert (=> b!2988324 (=> (not res!1232570) (not e!1878738))))

(declare-fun b!2988325 () Bool)

(declare-fun e!1878737 () Bool)

(assert (=> b!2988325 (= e!1878737 e!1878739)))

(declare-fun res!1232572 () Bool)

(assert (=> b!2988325 (= res!1232572 (matchRSpec!1477 (regOne!19193 r!17423) s!11993))))

(assert (=> b!2988325 (=> res!1232572 e!1878739)))

(declare-fun e!1878740 () Bool)

(assert (=> b!2988326 (= e!1878740 call!199799)))

(declare-fun b!2988327 () Bool)

(declare-fun e!1878741 () Bool)

(assert (=> b!2988327 (= e!1878737 e!1878741)))

(assert (=> b!2988327 (= c!490980 (is-Star!9340 r!17423))))

(declare-fun b!2988328 () Bool)

(declare-fun c!490982 () Bool)

(assert (=> b!2988328 (= c!490982 (is-ElementMatch!9340 r!17423))))

(assert (=> b!2988328 (= e!1878738 e!1878736)))

(declare-fun b!2988329 () Bool)

(declare-fun res!1232571 () Bool)

(assert (=> b!2988329 (=> res!1232571 e!1878740)))

(assert (=> b!2988329 (= res!1232571 call!199798)))

(assert (=> b!2988329 (= e!1878741 e!1878740)))

(assert (=> b!2988330 (= e!1878741 call!199799)))

(declare-fun bm!199794 () Bool)

(assert (=> bm!199794 (= call!199798 (isEmpty!19345 s!11993))))

(declare-fun b!2988331 () Bool)

(declare-fun c!490983 () Bool)

(assert (=> b!2988331 (= c!490983 (is-Union!9340 r!17423))))

(assert (=> b!2988331 (= e!1878736 e!1878737)))

(assert (= (and d!844286 c!490981) b!2988322))

(assert (= (and d!844286 (not c!490981)) b!2988324))

(assert (= (and b!2988324 res!1232570) b!2988328))

(assert (= (and b!2988328 c!490982) b!2988323))

(assert (= (and b!2988328 (not c!490982)) b!2988331))

(assert (= (and b!2988331 c!490983) b!2988325))

(assert (= (and b!2988331 (not c!490983)) b!2988327))

(assert (= (and b!2988325 (not res!1232572)) b!2988321))

(assert (= (and b!2988327 c!490980) b!2988329))

(assert (= (and b!2988327 (not c!490980)) b!2988330))

(assert (= (and b!2988329 (not res!1232571)) b!2988326))

(assert (= (or b!2988326 b!2988330) bm!199793))

(assert (= (or b!2988322 b!2988329) bm!199794))

(declare-fun m!3345873 () Bool)

(assert (=> bm!199793 m!3345873))

(declare-fun m!3345875 () Bool)

(assert (=> b!2988321 m!3345875))

(declare-fun m!3345877 () Bool)

(assert (=> b!2988325 m!3345877))

(assert (=> bm!199794 m!3345779))

(assert (=> b!2988170 d!844286))

(declare-fun b!2988362 () Bool)

(declare-fun e!1878760 () Bool)

(assert (=> b!2988362 (= e!1878760 (nullable!3011 r!17423))))

(declare-fun b!2988363 () Bool)

(declare-fun e!1878758 () Bool)

(declare-fun lt!1039863 () Bool)

(assert (=> b!2988363 (= e!1878758 (not lt!1039863))))

(declare-fun b!2988364 () Bool)

(declare-fun res!1232594 () Bool)

(declare-fun e!1878759 () Bool)

(assert (=> b!2988364 (=> (not res!1232594) (not e!1878759))))

(declare-fun tail!4894 (List!35205) List!35205)

(assert (=> b!2988364 (= res!1232594 (isEmpty!19345 (tail!4894 s!11993)))))

(declare-fun b!2988365 () Bool)

(declare-fun e!1878763 () Bool)

(declare-fun e!1878761 () Bool)

(assert (=> b!2988365 (= e!1878763 e!1878761)))

(declare-fun res!1232593 () Bool)

(assert (=> b!2988365 (=> (not res!1232593) (not e!1878761))))

(assert (=> b!2988365 (= res!1232593 (not lt!1039863))))

(declare-fun b!2988366 () Bool)

(declare-fun head!6668 (List!35205) C!18866)

(assert (=> b!2988366 (= e!1878759 (= (head!6668 s!11993) (c!490956 r!17423)))))

(declare-fun b!2988367 () Bool)

(declare-fun res!1232590 () Bool)

(assert (=> b!2988367 (=> res!1232590 e!1878763)))

(assert (=> b!2988367 (= res!1232590 e!1878759)))

(declare-fun res!1232591 () Bool)

(assert (=> b!2988367 (=> (not res!1232591) (not e!1878759))))

(assert (=> b!2988367 (= res!1232591 lt!1039863)))

(declare-fun b!2988368 () Bool)

(declare-fun e!1878757 () Bool)

(assert (=> b!2988368 (= e!1878757 e!1878758)))

(declare-fun c!490991 () Bool)

(assert (=> b!2988368 (= c!490991 (is-EmptyLang!9340 r!17423))))

(declare-fun b!2988369 () Bool)

(declare-fun call!199802 () Bool)

(assert (=> b!2988369 (= e!1878757 (= lt!1039863 call!199802))))

(declare-fun b!2988370 () Bool)

(declare-fun res!1232592 () Bool)

(assert (=> b!2988370 (=> (not res!1232592) (not e!1878759))))

(assert (=> b!2988370 (= res!1232592 (not call!199802))))

(declare-fun b!2988371 () Bool)

(declare-fun e!1878762 () Bool)

(assert (=> b!2988371 (= e!1878762 (not (= (head!6668 s!11993) (c!490956 r!17423))))))

(declare-fun b!2988373 () Bool)

(assert (=> b!2988373 (= e!1878761 e!1878762)))

(declare-fun res!1232596 () Bool)

(assert (=> b!2988373 (=> res!1232596 e!1878762)))

(assert (=> b!2988373 (= res!1232596 call!199802)))

(declare-fun b!2988374 () Bool)

(declare-fun derivativeStep!2609 (Regex!9340 C!18866) Regex!9340)

(assert (=> b!2988374 (= e!1878760 (matchR!4222 (derivativeStep!2609 r!17423 (head!6668 s!11993)) (tail!4894 s!11993)))))

(declare-fun b!2988375 () Bool)

(declare-fun res!1232595 () Bool)

(assert (=> b!2988375 (=> res!1232595 e!1878762)))

(assert (=> b!2988375 (= res!1232595 (not (isEmpty!19345 (tail!4894 s!11993))))))

(declare-fun bm!199797 () Bool)

(assert (=> bm!199797 (= call!199802 (isEmpty!19345 s!11993))))

(declare-fun b!2988372 () Bool)

(declare-fun res!1232589 () Bool)

(assert (=> b!2988372 (=> res!1232589 e!1878763)))

(assert (=> b!2988372 (= res!1232589 (not (is-ElementMatch!9340 r!17423)))))

(assert (=> b!2988372 (= e!1878758 e!1878763)))

(declare-fun d!844294 () Bool)

(assert (=> d!844294 e!1878757))

(declare-fun c!490992 () Bool)

(assert (=> d!844294 (= c!490992 (is-EmptyExpr!9340 r!17423))))

(assert (=> d!844294 (= lt!1039863 e!1878760)))

(declare-fun c!490993 () Bool)

(assert (=> d!844294 (= c!490993 (isEmpty!19345 s!11993))))

(assert (=> d!844294 (validRegex!4073 r!17423)))

(assert (=> d!844294 (= (matchR!4222 r!17423 s!11993) lt!1039863)))

(assert (= (and d!844294 c!490993) b!2988362))

(assert (= (and d!844294 (not c!490993)) b!2988374))

(assert (= (and d!844294 c!490992) b!2988369))

(assert (= (and d!844294 (not c!490992)) b!2988368))

(assert (= (and b!2988368 c!490991) b!2988363))

(assert (= (and b!2988368 (not c!490991)) b!2988372))

(assert (= (and b!2988372 (not res!1232589)) b!2988367))

(assert (= (and b!2988367 res!1232591) b!2988370))

(assert (= (and b!2988370 res!1232592) b!2988364))

(assert (= (and b!2988364 res!1232594) b!2988366))

(assert (= (and b!2988367 (not res!1232590)) b!2988365))

(assert (= (and b!2988365 res!1232593) b!2988373))

(assert (= (and b!2988373 (not res!1232596)) b!2988375))

(assert (= (and b!2988375 (not res!1232595)) b!2988371))

(assert (= (or b!2988369 b!2988370 b!2988373) bm!199797))

(declare-fun m!3345879 () Bool)

(assert (=> b!2988364 m!3345879))

(assert (=> b!2988364 m!3345879))

(declare-fun m!3345881 () Bool)

(assert (=> b!2988364 m!3345881))

(assert (=> d!844294 m!3345779))

(assert (=> d!844294 m!3345795))

(declare-fun m!3345883 () Bool)

(assert (=> b!2988371 m!3345883))

(assert (=> b!2988366 m!3345883))

(assert (=> bm!199797 m!3345779))

(assert (=> b!2988375 m!3345879))

(assert (=> b!2988375 m!3345879))

(assert (=> b!2988375 m!3345881))

(assert (=> b!2988374 m!3345883))

(assert (=> b!2988374 m!3345883))

(declare-fun m!3345885 () Bool)

(assert (=> b!2988374 m!3345885))

(assert (=> b!2988374 m!3345879))

(assert (=> b!2988374 m!3345885))

(assert (=> b!2988374 m!3345879))

(declare-fun m!3345887 () Bool)

(assert (=> b!2988374 m!3345887))

(declare-fun m!3345889 () Bool)

(assert (=> b!2988362 m!3345889))

(assert (=> b!2988170 d!844294))

(declare-fun d!844296 () Bool)

(assert (=> d!844296 (= (matchR!4222 r!17423 s!11993) (matchRSpec!1477 r!17423 s!11993))))

(declare-fun lt!1039868 () Unit!49083)

(declare-fun choose!17721 (Regex!9340 List!35205) Unit!49083)

(assert (=> d!844296 (= lt!1039868 (choose!17721 r!17423 s!11993))))

(assert (=> d!844296 (validRegex!4073 r!17423)))

(assert (=> d!844296 (= (mainMatchTheorem!1477 r!17423 s!11993) lt!1039868)))

(declare-fun bs!527550 () Bool)

(assert (= bs!527550 d!844296))

(assert (=> bs!527550 m!3345759))

(assert (=> bs!527550 m!3345757))

(declare-fun m!3345891 () Bool)

(assert (=> bs!527550 m!3345891))

(assert (=> bs!527550 m!3345795))

(assert (=> b!2988170 d!844296))

(declare-fun c!491044 () Bool)

(declare-fun bm!199826 () Bool)

(declare-fun call!199836 () Regex!9340)

(declare-fun c!491042 () Bool)

(assert (=> bm!199826 (= call!199836 (simplify!331 (ite c!491042 (reg!9669 (reg!9669 r!17423)) (ite c!491044 (regTwo!19193 (reg!9669 r!17423)) (regOne!19192 (reg!9669 r!17423))))))))

(declare-fun b!2988476 () Bool)

(declare-fun e!1878829 () Regex!9340)

(declare-fun lt!1039893 () Regex!9340)

(declare-fun lt!1039894 () Regex!9340)

(assert (=> b!2988476 (= e!1878829 (Concat!14661 lt!1039893 lt!1039894))))

(declare-fun d!844298 () Bool)

(declare-fun e!1878827 () Bool)

(assert (=> d!844298 e!1878827))

(declare-fun res!1232609 () Bool)

(assert (=> d!844298 (=> (not res!1232609) (not e!1878827))))

(declare-fun lt!1039895 () Regex!9340)

(assert (=> d!844298 (= res!1232609 (validRegex!4073 lt!1039895))))

(declare-fun e!1878830 () Regex!9340)

(assert (=> d!844298 (= lt!1039895 e!1878830)))

(declare-fun c!491039 () Bool)

(assert (=> d!844298 (= c!491039 (is-EmptyLang!9340 (reg!9669 r!17423)))))

(assert (=> d!844298 (validRegex!4073 (reg!9669 r!17423))))

(assert (=> d!844298 (= (simplify!331 (reg!9669 r!17423)) lt!1039895)))

(declare-fun bm!199827 () Bool)

(declare-fun call!199835 () Regex!9340)

(assert (=> bm!199827 (= call!199835 (simplify!331 (ite c!491044 (regOne!19193 (reg!9669 r!17423)) (regTwo!19192 (reg!9669 r!17423)))))))

(declare-fun b!2988477 () Bool)

(assert (=> b!2988477 (= c!491044 (is-Union!9340 (reg!9669 r!17423)))))

(declare-fun e!1878828 () Regex!9340)

(declare-fun e!1878831 () Regex!9340)

(assert (=> b!2988477 (= e!1878828 e!1878831)))

(declare-fun b!2988478 () Bool)

(declare-fun e!1878826 () Regex!9340)

(assert (=> b!2988478 (= e!1878831 e!1878826)))

(declare-fun call!199833 () Regex!9340)

(assert (=> b!2988478 (= lt!1039893 call!199833)))

(assert (=> b!2988478 (= lt!1039894 call!199835)))

(declare-fun res!1232610 () Bool)

(declare-fun call!199834 () Bool)

(assert (=> b!2988478 (= res!1232610 call!199834)))

(declare-fun e!1878821 () Bool)

(assert (=> b!2988478 (=> res!1232610 e!1878821)))

(declare-fun c!491047 () Bool)

(assert (=> b!2988478 (= c!491047 e!1878821)))

(declare-fun b!2988479 () Bool)

(declare-fun e!1878824 () Regex!9340)

(assert (=> b!2988479 (= e!1878830 e!1878824)))

(declare-fun c!491040 () Bool)

(assert (=> b!2988479 (= c!491040 (is-ElementMatch!9340 (reg!9669 r!17423)))))

(declare-fun bm!199828 () Bool)

(declare-fun call!199831 () Bool)

(declare-fun call!199837 () Bool)

(assert (=> bm!199828 (= call!199831 call!199837)))

(declare-fun bm!199829 () Bool)

(assert (=> bm!199829 (= call!199833 call!199836)))

(declare-fun b!2988480 () Bool)

(assert (=> b!2988480 (= e!1878824 (reg!9669 r!17423))))

(declare-fun b!2988481 () Bool)

(assert (=> b!2988481 (= e!1878826 EmptyLang!9340)))

(declare-fun b!2988482 () Bool)

(declare-fun e!1878833 () Regex!9340)

(assert (=> b!2988482 (= e!1878831 e!1878833)))

(declare-fun lt!1039892 () Regex!9340)

(assert (=> b!2988482 (= lt!1039892 call!199835)))

(declare-fun lt!1039891 () Regex!9340)

(assert (=> b!2988482 (= lt!1039891 call!199833)))

(declare-fun c!491043 () Bool)

(assert (=> b!2988482 (= c!491043 call!199831)))

(declare-fun bm!199830 () Bool)

(declare-fun isEmptyLang!438 (Regex!9340) Bool)

(assert (=> bm!199830 (= call!199834 (isEmptyLang!438 (ite c!491044 lt!1039891 lt!1039893)))))

(declare-fun lt!1039896 () Regex!9340)

(declare-fun bm!199831 () Bool)

(assert (=> bm!199831 (= call!199837 (isEmptyLang!438 (ite c!491042 lt!1039896 (ite c!491044 lt!1039892 lt!1039894))))))

(declare-fun b!2988483 () Bool)

(declare-fun c!491046 () Bool)

(assert (=> b!2988483 (= c!491046 call!199834)))

(declare-fun e!1878825 () Regex!9340)

(assert (=> b!2988483 (= e!1878833 e!1878825)))

(declare-fun b!2988484 () Bool)

(assert (=> b!2988484 (= e!1878830 EmptyLang!9340)))

(declare-fun b!2988485 () Bool)

(declare-fun e!1878832 () Regex!9340)

(assert (=> b!2988485 (= e!1878832 EmptyExpr!9340)))

(declare-fun b!2988486 () Bool)

(assert (=> b!2988486 (= e!1878827 (= (nullable!3011 lt!1039895) (nullable!3011 (reg!9669 r!17423))))))

(declare-fun b!2988487 () Bool)

(assert (=> b!2988487 (= e!1878833 lt!1039891)))

(declare-fun b!2988488 () Bool)

(declare-fun e!1878823 () Regex!9340)

(assert (=> b!2988488 (= e!1878823 e!1878828)))

(assert (=> b!2988488 (= c!491042 (is-Star!9340 (reg!9669 r!17423)))))

(declare-fun b!2988489 () Bool)

(assert (=> b!2988489 (= e!1878829 lt!1039893)))

(declare-fun b!2988490 () Bool)

(assert (=> b!2988490 (= e!1878832 (Star!9340 lt!1039896))))

(declare-fun b!2988491 () Bool)

(assert (=> b!2988491 (= e!1878821 call!199831)))

(declare-fun b!2988492 () Bool)

(assert (=> b!2988492 (= e!1878825 lt!1039892)))

(declare-fun b!2988493 () Bool)

(declare-fun c!491038 () Bool)

(declare-fun e!1878822 () Bool)

(assert (=> b!2988493 (= c!491038 e!1878822)))

(declare-fun res!1232611 () Bool)

(assert (=> b!2988493 (=> res!1232611 e!1878822)))

(assert (=> b!2988493 (= res!1232611 call!199837)))

(assert (=> b!2988493 (= lt!1039896 call!199836)))

(assert (=> b!2988493 (= e!1878828 e!1878832)))

(declare-fun bm!199832 () Bool)

(declare-fun call!199832 () Bool)

(declare-fun isEmptyExpr!455 (Regex!9340) Bool)

(assert (=> bm!199832 (= call!199832 (isEmptyExpr!455 (ite c!491042 lt!1039896 lt!1039894)))))

(declare-fun b!2988494 () Bool)

(declare-fun c!491041 () Bool)

(assert (=> b!2988494 (= c!491041 (isEmptyExpr!455 lt!1039893))))

(declare-fun e!1878820 () Regex!9340)

(assert (=> b!2988494 (= e!1878826 e!1878820)))

(declare-fun b!2988495 () Bool)

(assert (=> b!2988495 (= e!1878825 (Union!9340 lt!1039892 lt!1039891))))

(declare-fun b!2988496 () Bool)

(assert (=> b!2988496 (= e!1878822 call!199832)))

(declare-fun b!2988497 () Bool)

(declare-fun c!491048 () Bool)

(assert (=> b!2988497 (= c!491048 (is-EmptyExpr!9340 (reg!9669 r!17423)))))

(assert (=> b!2988497 (= e!1878824 e!1878823)))

(declare-fun b!2988498 () Bool)

(assert (=> b!2988498 (= e!1878820 e!1878829)))

(declare-fun c!491045 () Bool)

(assert (=> b!2988498 (= c!491045 call!199832)))

(declare-fun b!2988499 () Bool)

(assert (=> b!2988499 (= e!1878820 lt!1039894)))

(declare-fun b!2988500 () Bool)

(assert (=> b!2988500 (= e!1878823 EmptyExpr!9340)))

(assert (= (and d!844298 c!491039) b!2988484))

(assert (= (and d!844298 (not c!491039)) b!2988479))

(assert (= (and b!2988479 c!491040) b!2988480))

(assert (= (and b!2988479 (not c!491040)) b!2988497))

(assert (= (and b!2988497 c!491048) b!2988500))

(assert (= (and b!2988497 (not c!491048)) b!2988488))

(assert (= (and b!2988488 c!491042) b!2988493))

(assert (= (and b!2988488 (not c!491042)) b!2988477))

(assert (= (and b!2988493 (not res!1232611)) b!2988496))

(assert (= (and b!2988493 c!491038) b!2988485))

(assert (= (and b!2988493 (not c!491038)) b!2988490))

(assert (= (and b!2988477 c!491044) b!2988482))

(assert (= (and b!2988477 (not c!491044)) b!2988478))

(assert (= (and b!2988482 c!491043) b!2988487))

(assert (= (and b!2988482 (not c!491043)) b!2988483))

(assert (= (and b!2988483 c!491046) b!2988492))

(assert (= (and b!2988483 (not c!491046)) b!2988495))

(assert (= (and b!2988478 (not res!1232610)) b!2988491))

(assert (= (and b!2988478 c!491047) b!2988481))

(assert (= (and b!2988478 (not c!491047)) b!2988494))

(assert (= (and b!2988494 c!491041) b!2988499))

(assert (= (and b!2988494 (not c!491041)) b!2988498))

(assert (= (and b!2988498 c!491045) b!2988489))

(assert (= (and b!2988498 (not c!491045)) b!2988476))

(assert (= (or b!2988482 b!2988478) bm!199827))

(assert (= (or b!2988482 b!2988478) bm!199829))

(assert (= (or b!2988482 b!2988491) bm!199828))

(assert (= (or b!2988483 b!2988478) bm!199830))

(assert (= (or b!2988496 b!2988498) bm!199832))

(assert (= (or b!2988493 bm!199829) bm!199826))

(assert (= (or b!2988493 bm!199828) bm!199831))

(assert (= (and d!844298 res!1232609) b!2988486))

(declare-fun m!3345893 () Bool)

(assert (=> bm!199831 m!3345893))

(declare-fun m!3345895 () Bool)

(assert (=> bm!199827 m!3345895))

(declare-fun m!3345897 () Bool)

(assert (=> d!844298 m!3345897))

(declare-fun m!3345899 () Bool)

(assert (=> d!844298 m!3345899))

(declare-fun m!3345901 () Bool)

(assert (=> bm!199832 m!3345901))

(declare-fun m!3345903 () Bool)

(assert (=> bm!199826 m!3345903))

(declare-fun m!3345905 () Bool)

(assert (=> b!2988486 m!3345905))

(assert (=> b!2988486 m!3345839))

(declare-fun m!3345907 () Bool)

(assert (=> b!2988494 m!3345907))

(declare-fun m!3345909 () Bool)

(assert (=> bm!199830 m!3345909))

(assert (=> b!2988165 d!844298))

(declare-fun d!844300 () Bool)

(declare-fun lt!1039899 () Int)

(assert (=> d!844300 (>= lt!1039899 0)))

(declare-fun e!1878836 () Int)

(assert (=> d!844300 (= lt!1039899 e!1878836)))

(declare-fun c!491051 () Bool)

(assert (=> d!844300 (= c!491051 (is-Nil!35081 s!11993))))

(assert (=> d!844300 (= (size!26490 s!11993) lt!1039899)))

(declare-fun b!2988505 () Bool)

(assert (=> b!2988505 (= e!1878836 0)))

(declare-fun b!2988506 () Bool)

(assert (=> b!2988506 (= e!1878836 (+ 1 (size!26490 (t!234270 s!11993))))))

(assert (= (and d!844300 c!491051) b!2988505))

(assert (= (and d!844300 (not c!491051)) b!2988506))

(declare-fun m!3345911 () Bool)

(assert (=> b!2988506 m!3345911))

(assert (=> b!2988165 d!844300))

(declare-fun d!844302 () Bool)

(declare-fun lt!1039900 () Int)

(assert (=> d!844302 (>= lt!1039900 0)))

(declare-fun e!1878837 () Int)

(assert (=> d!844302 (= lt!1039900 e!1878837)))

(declare-fun c!491052 () Bool)

(assert (=> d!844302 (= c!491052 (is-Nil!35081 (_2!20131 lt!1039814)))))

(assert (=> d!844302 (= (size!26490 (_2!20131 lt!1039814)) lt!1039900)))

(declare-fun b!2988507 () Bool)

(assert (=> b!2988507 (= e!1878837 0)))

(declare-fun b!2988508 () Bool)

(assert (=> b!2988508 (= e!1878837 (+ 1 (size!26490 (t!234270 (_2!20131 lt!1039814)))))))

(assert (= (and d!844302 c!491052) b!2988507))

(assert (= (and d!844302 (not c!491052)) b!2988508))

(declare-fun m!3345913 () Bool)

(assert (=> b!2988508 m!3345913))

(assert (=> b!2988165 d!844302))

(declare-fun d!844304 () Bool)

(assert (=> d!844304 (= (matchR!4222 (reg!9669 r!17423) (_1!20131 lt!1039814)) (matchR!4222 (simplify!331 (reg!9669 r!17423)) (_1!20131 lt!1039814)))))

(declare-fun lt!1039903 () Unit!49083)

(declare-fun choose!17722 (Regex!9340 List!35205) Unit!49083)

(assert (=> d!844304 (= lt!1039903 (choose!17722 (reg!9669 r!17423) (_1!20131 lt!1039814)))))

(assert (=> d!844304 (validRegex!4073 (reg!9669 r!17423))))

(assert (=> d!844304 (= (lemmaSimplifySound!189 (reg!9669 r!17423) (_1!20131 lt!1039814)) lt!1039903)))

(declare-fun bs!527551 () Bool)

(assert (= bs!527551 d!844304))

(assert (=> bs!527551 m!3345899))

(assert (=> bs!527551 m!3345775))

(assert (=> bs!527551 m!3345763))

(declare-fun m!3345915 () Bool)

(assert (=> bs!527551 m!3345915))

(assert (=> bs!527551 m!3345763))

(assert (=> bs!527551 m!3345771))

(assert (=> b!2988165 d!844304))

(declare-fun b!2988509 () Bool)

(declare-fun e!1878841 () Bool)

(assert (=> b!2988509 (= e!1878841 (nullable!3011 (simplify!331 (reg!9669 r!17423))))))

(declare-fun b!2988510 () Bool)

(declare-fun e!1878839 () Bool)

(declare-fun lt!1039904 () Bool)

(assert (=> b!2988510 (= e!1878839 (not lt!1039904))))

(declare-fun b!2988511 () Bool)

(declare-fun res!1232617 () Bool)

(declare-fun e!1878840 () Bool)

(assert (=> b!2988511 (=> (not res!1232617) (not e!1878840))))

(assert (=> b!2988511 (= res!1232617 (isEmpty!19345 (tail!4894 (_1!20131 lt!1039814))))))

(declare-fun b!2988512 () Bool)

(declare-fun e!1878844 () Bool)

(declare-fun e!1878842 () Bool)

(assert (=> b!2988512 (= e!1878844 e!1878842)))

(declare-fun res!1232616 () Bool)

(assert (=> b!2988512 (=> (not res!1232616) (not e!1878842))))

(assert (=> b!2988512 (= res!1232616 (not lt!1039904))))

(declare-fun b!2988513 () Bool)

(assert (=> b!2988513 (= e!1878840 (= (head!6668 (_1!20131 lt!1039814)) (c!490956 (simplify!331 (reg!9669 r!17423)))))))

(declare-fun b!2988514 () Bool)

(declare-fun res!1232613 () Bool)

(assert (=> b!2988514 (=> res!1232613 e!1878844)))

(assert (=> b!2988514 (= res!1232613 e!1878840)))

(declare-fun res!1232614 () Bool)

(assert (=> b!2988514 (=> (not res!1232614) (not e!1878840))))

(assert (=> b!2988514 (= res!1232614 lt!1039904)))

(declare-fun b!2988515 () Bool)

(declare-fun e!1878838 () Bool)

(assert (=> b!2988515 (= e!1878838 e!1878839)))

(declare-fun c!491053 () Bool)

(assert (=> b!2988515 (= c!491053 (is-EmptyLang!9340 (simplify!331 (reg!9669 r!17423))))))

(declare-fun b!2988516 () Bool)

(declare-fun call!199838 () Bool)

(assert (=> b!2988516 (= e!1878838 (= lt!1039904 call!199838))))

(declare-fun b!2988517 () Bool)

(declare-fun res!1232615 () Bool)

(assert (=> b!2988517 (=> (not res!1232615) (not e!1878840))))

(assert (=> b!2988517 (= res!1232615 (not call!199838))))

(declare-fun b!2988518 () Bool)

(declare-fun e!1878843 () Bool)

(assert (=> b!2988518 (= e!1878843 (not (= (head!6668 (_1!20131 lt!1039814)) (c!490956 (simplify!331 (reg!9669 r!17423))))))))

(declare-fun b!2988520 () Bool)

(assert (=> b!2988520 (= e!1878842 e!1878843)))

(declare-fun res!1232619 () Bool)

(assert (=> b!2988520 (=> res!1232619 e!1878843)))

(assert (=> b!2988520 (= res!1232619 call!199838)))

(declare-fun b!2988521 () Bool)

(assert (=> b!2988521 (= e!1878841 (matchR!4222 (derivativeStep!2609 (simplify!331 (reg!9669 r!17423)) (head!6668 (_1!20131 lt!1039814))) (tail!4894 (_1!20131 lt!1039814))))))

(declare-fun b!2988522 () Bool)

(declare-fun res!1232618 () Bool)

(assert (=> b!2988522 (=> res!1232618 e!1878843)))

(assert (=> b!2988522 (= res!1232618 (not (isEmpty!19345 (tail!4894 (_1!20131 lt!1039814)))))))

(declare-fun bm!199833 () Bool)

(assert (=> bm!199833 (= call!199838 (isEmpty!19345 (_1!20131 lt!1039814)))))

(declare-fun b!2988519 () Bool)

(declare-fun res!1232612 () Bool)

(assert (=> b!2988519 (=> res!1232612 e!1878844)))

(assert (=> b!2988519 (= res!1232612 (not (is-ElementMatch!9340 (simplify!331 (reg!9669 r!17423)))))))

(assert (=> b!2988519 (= e!1878839 e!1878844)))

(declare-fun d!844306 () Bool)

(assert (=> d!844306 e!1878838))

(declare-fun c!491054 () Bool)

(assert (=> d!844306 (= c!491054 (is-EmptyExpr!9340 (simplify!331 (reg!9669 r!17423))))))

(assert (=> d!844306 (= lt!1039904 e!1878841)))

(declare-fun c!491055 () Bool)

(assert (=> d!844306 (= c!491055 (isEmpty!19345 (_1!20131 lt!1039814)))))

(assert (=> d!844306 (validRegex!4073 (simplify!331 (reg!9669 r!17423)))))

(assert (=> d!844306 (= (matchR!4222 (simplify!331 (reg!9669 r!17423)) (_1!20131 lt!1039814)) lt!1039904)))

(assert (= (and d!844306 c!491055) b!2988509))

(assert (= (and d!844306 (not c!491055)) b!2988521))

(assert (= (and d!844306 c!491054) b!2988516))

(assert (= (and d!844306 (not c!491054)) b!2988515))

(assert (= (and b!2988515 c!491053) b!2988510))

(assert (= (and b!2988515 (not c!491053)) b!2988519))

(assert (= (and b!2988519 (not res!1232612)) b!2988514))

(assert (= (and b!2988514 res!1232614) b!2988517))

(assert (= (and b!2988517 res!1232615) b!2988511))

(assert (= (and b!2988511 res!1232617) b!2988513))

(assert (= (and b!2988514 (not res!1232613)) b!2988512))

(assert (= (and b!2988512 res!1232616) b!2988520))

(assert (= (and b!2988520 (not res!1232619)) b!2988522))

(assert (= (and b!2988522 (not res!1232618)) b!2988518))

(assert (= (or b!2988516 b!2988517 b!2988520) bm!199833))

(declare-fun m!3345917 () Bool)

(assert (=> b!2988511 m!3345917))

(assert (=> b!2988511 m!3345917))

(declare-fun m!3345919 () Bool)

(assert (=> b!2988511 m!3345919))

(declare-fun m!3345921 () Bool)

(assert (=> d!844306 m!3345921))

(assert (=> d!844306 m!3345763))

(declare-fun m!3345923 () Bool)

(assert (=> d!844306 m!3345923))

(declare-fun m!3345925 () Bool)

(assert (=> b!2988518 m!3345925))

(assert (=> b!2988513 m!3345925))

(assert (=> bm!199833 m!3345921))

(assert (=> b!2988522 m!3345917))

(assert (=> b!2988522 m!3345917))

(assert (=> b!2988522 m!3345919))

(assert (=> b!2988521 m!3345925))

(assert (=> b!2988521 m!3345763))

(assert (=> b!2988521 m!3345925))

(declare-fun m!3345927 () Bool)

(assert (=> b!2988521 m!3345927))

(assert (=> b!2988521 m!3345917))

(assert (=> b!2988521 m!3345927))

(assert (=> b!2988521 m!3345917))

(declare-fun m!3345929 () Bool)

(assert (=> b!2988521 m!3345929))

(assert (=> b!2988509 m!3345763))

(declare-fun m!3345931 () Bool)

(assert (=> b!2988509 m!3345931))

(assert (=> b!2988165 d!844306))

(declare-fun b!2988523 () Bool)

(declare-fun e!1878848 () Bool)

(assert (=> b!2988523 (= e!1878848 (nullable!3011 lt!1039820))))

(declare-fun b!2988524 () Bool)

(declare-fun e!1878846 () Bool)

(declare-fun lt!1039905 () Bool)

(assert (=> b!2988524 (= e!1878846 (not lt!1039905))))

(declare-fun b!2988525 () Bool)

(declare-fun res!1232625 () Bool)

(declare-fun e!1878847 () Bool)

(assert (=> b!2988525 (=> (not res!1232625) (not e!1878847))))

(assert (=> b!2988525 (= res!1232625 (isEmpty!19345 (tail!4894 (_2!20131 lt!1039814))))))

(declare-fun b!2988526 () Bool)

(declare-fun e!1878851 () Bool)

(declare-fun e!1878849 () Bool)

(assert (=> b!2988526 (= e!1878851 e!1878849)))

(declare-fun res!1232624 () Bool)

(assert (=> b!2988526 (=> (not res!1232624) (not e!1878849))))

(assert (=> b!2988526 (= res!1232624 (not lt!1039905))))

(declare-fun b!2988527 () Bool)

(assert (=> b!2988527 (= e!1878847 (= (head!6668 (_2!20131 lt!1039814)) (c!490956 lt!1039820)))))

(declare-fun b!2988528 () Bool)

(declare-fun res!1232621 () Bool)

(assert (=> b!2988528 (=> res!1232621 e!1878851)))

(assert (=> b!2988528 (= res!1232621 e!1878847)))

(declare-fun res!1232622 () Bool)

(assert (=> b!2988528 (=> (not res!1232622) (not e!1878847))))

(assert (=> b!2988528 (= res!1232622 lt!1039905)))

(declare-fun b!2988529 () Bool)

(declare-fun e!1878845 () Bool)

(assert (=> b!2988529 (= e!1878845 e!1878846)))

(declare-fun c!491056 () Bool)

(assert (=> b!2988529 (= c!491056 (is-EmptyLang!9340 lt!1039820))))

(declare-fun b!2988530 () Bool)

(declare-fun call!199839 () Bool)

(assert (=> b!2988530 (= e!1878845 (= lt!1039905 call!199839))))

(declare-fun b!2988531 () Bool)

(declare-fun res!1232623 () Bool)

(assert (=> b!2988531 (=> (not res!1232623) (not e!1878847))))

(assert (=> b!2988531 (= res!1232623 (not call!199839))))

(declare-fun b!2988532 () Bool)

(declare-fun e!1878850 () Bool)

(assert (=> b!2988532 (= e!1878850 (not (= (head!6668 (_2!20131 lt!1039814)) (c!490956 lt!1039820))))))

(declare-fun b!2988534 () Bool)

(assert (=> b!2988534 (= e!1878849 e!1878850)))

(declare-fun res!1232627 () Bool)

(assert (=> b!2988534 (=> res!1232627 e!1878850)))

(assert (=> b!2988534 (= res!1232627 call!199839)))

(declare-fun b!2988535 () Bool)

(assert (=> b!2988535 (= e!1878848 (matchR!4222 (derivativeStep!2609 lt!1039820 (head!6668 (_2!20131 lt!1039814))) (tail!4894 (_2!20131 lt!1039814))))))

(declare-fun b!2988536 () Bool)

(declare-fun res!1232626 () Bool)

(assert (=> b!2988536 (=> res!1232626 e!1878850)))

(assert (=> b!2988536 (= res!1232626 (not (isEmpty!19345 (tail!4894 (_2!20131 lt!1039814)))))))

(declare-fun bm!199834 () Bool)

(assert (=> bm!199834 (= call!199839 (isEmpty!19345 (_2!20131 lt!1039814)))))

(declare-fun b!2988533 () Bool)

(declare-fun res!1232620 () Bool)

(assert (=> b!2988533 (=> res!1232620 e!1878851)))

(assert (=> b!2988533 (= res!1232620 (not (is-ElementMatch!9340 lt!1039820)))))

(assert (=> b!2988533 (= e!1878846 e!1878851)))

(declare-fun d!844308 () Bool)

(assert (=> d!844308 e!1878845))

(declare-fun c!491057 () Bool)

(assert (=> d!844308 (= c!491057 (is-EmptyExpr!9340 lt!1039820))))

(assert (=> d!844308 (= lt!1039905 e!1878848)))

(declare-fun c!491058 () Bool)

(assert (=> d!844308 (= c!491058 (isEmpty!19345 (_2!20131 lt!1039814)))))

(assert (=> d!844308 (validRegex!4073 lt!1039820)))

(assert (=> d!844308 (= (matchR!4222 lt!1039820 (_2!20131 lt!1039814)) lt!1039905)))

(assert (= (and d!844308 c!491058) b!2988523))

(assert (= (and d!844308 (not c!491058)) b!2988535))

(assert (= (and d!844308 c!491057) b!2988530))

(assert (= (and d!844308 (not c!491057)) b!2988529))

(assert (= (and b!2988529 c!491056) b!2988524))

(assert (= (and b!2988529 (not c!491056)) b!2988533))

(assert (= (and b!2988533 (not res!1232620)) b!2988528))

(assert (= (and b!2988528 res!1232622) b!2988531))

(assert (= (and b!2988531 res!1232623) b!2988525))

(assert (= (and b!2988525 res!1232625) b!2988527))

(assert (= (and b!2988528 (not res!1232621)) b!2988526))

(assert (= (and b!2988526 res!1232624) b!2988534))

(assert (= (and b!2988534 (not res!1232627)) b!2988536))

(assert (= (and b!2988536 (not res!1232626)) b!2988532))

(assert (= (or b!2988530 b!2988531 b!2988534) bm!199834))

(declare-fun m!3345933 () Bool)

(assert (=> b!2988525 m!3345933))

(assert (=> b!2988525 m!3345933))

(declare-fun m!3345935 () Bool)

(assert (=> b!2988525 m!3345935))

(declare-fun m!3345937 () Bool)

(assert (=> d!844308 m!3345937))

(declare-fun m!3345939 () Bool)

(assert (=> d!844308 m!3345939))

(declare-fun m!3345941 () Bool)

(assert (=> b!2988532 m!3345941))

(assert (=> b!2988527 m!3345941))

(assert (=> bm!199834 m!3345937))

(assert (=> b!2988536 m!3345933))

(assert (=> b!2988536 m!3345933))

(assert (=> b!2988536 m!3345935))

(assert (=> b!2988535 m!3345941))

(assert (=> b!2988535 m!3345941))

(declare-fun m!3345943 () Bool)

(assert (=> b!2988535 m!3345943))

(assert (=> b!2988535 m!3345933))

(assert (=> b!2988535 m!3345943))

(assert (=> b!2988535 m!3345933))

(declare-fun m!3345945 () Bool)

(assert (=> b!2988535 m!3345945))

(declare-fun m!3345947 () Bool)

(assert (=> b!2988523 m!3345947))

(assert (=> b!2988164 d!844308))

(declare-fun d!844310 () Bool)

(declare-fun choose!17724 (Int) Bool)

(assert (=> d!844310 (= (Exists!1613 lambda!111659) (choose!17724 lambda!111659))))

(declare-fun bs!527552 () Bool)

(assert (= bs!527552 d!844310))

(declare-fun m!3345949 () Bool)

(assert (=> bs!527552 m!3345949))

(assert (=> b!2988174 d!844310))

(declare-fun bs!527553 () Bool)

(declare-fun d!844312 () Bool)

(assert (= bs!527553 (and d!844312 b!2988174)))

(declare-fun lambda!111679 () Int)

(assert (=> bs!527553 (= (= (Star!9340 (reg!9669 r!17423)) lt!1039820) (= lambda!111679 lambda!111659))))

(assert (=> bs!527553 (not (= lambda!111679 lambda!111660))))

(declare-fun bs!527554 () Bool)

(assert (= bs!527554 (and d!844312 b!2988326)))

(assert (=> bs!527554 (not (= lambda!111679 lambda!111673))))

(declare-fun bs!527555 () Bool)

(assert (= bs!527555 (and d!844312 b!2988330)))

(assert (=> bs!527555 (not (= lambda!111679 lambda!111674))))

(assert (=> d!844312 true))

(assert (=> d!844312 true))

(declare-fun bs!527556 () Bool)

(assert (= bs!527556 d!844312))

(declare-fun lambda!111680 () Int)

(assert (=> bs!527556 (not (= lambda!111680 lambda!111679))))

(assert (=> bs!527555 (not (= lambda!111680 lambda!111674))))

(assert (=> bs!527553 (= (= (Star!9340 (reg!9669 r!17423)) lt!1039820) (= lambda!111680 lambda!111660))))

(assert (=> bs!527553 (not (= lambda!111680 lambda!111659))))

(assert (=> bs!527554 (= (= (Star!9340 (reg!9669 r!17423)) r!17423) (= lambda!111680 lambda!111673))))

(assert (=> d!844312 true))

(assert (=> d!844312 true))

(assert (=> d!844312 (= (Exists!1613 lambda!111679) (Exists!1613 lambda!111680))))

(declare-fun lt!1039915 () Unit!49083)

(declare-fun choose!17725 (Regex!9340 List!35205) Unit!49083)

(assert (=> d!844312 (= lt!1039915 (choose!17725 (reg!9669 r!17423) s!11993))))

(assert (=> d!844312 (validRegex!4073 (reg!9669 r!17423))))

(assert (=> d!844312 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!289 (reg!9669 r!17423) s!11993) lt!1039915)))

(declare-fun m!3345971 () Bool)

(assert (=> bs!527556 m!3345971))

(declare-fun m!3345973 () Bool)

(assert (=> bs!527556 m!3345973))

(declare-fun m!3345975 () Bool)

(assert (=> bs!527556 m!3345975))

(assert (=> bs!527556 m!3345899))

(assert (=> b!2988174 d!844312))

(declare-fun bs!527557 () Bool)

(declare-fun d!844318 () Bool)

(assert (= bs!527557 (and d!844318 d!844312)))

(declare-fun lambda!111683 () Int)

(assert (=> bs!527557 (not (= lambda!111683 lambda!111680))))

(assert (=> bs!527557 (= (= lt!1039820 (Star!9340 (reg!9669 r!17423))) (= lambda!111683 lambda!111679))))

(declare-fun bs!527558 () Bool)

(assert (= bs!527558 (and d!844318 b!2988330)))

(assert (=> bs!527558 (not (= lambda!111683 lambda!111674))))

(declare-fun bs!527559 () Bool)

(assert (= bs!527559 (and d!844318 b!2988174)))

(assert (=> bs!527559 (not (= lambda!111683 lambda!111660))))

(assert (=> bs!527559 (= lambda!111683 lambda!111659)))

(declare-fun bs!527560 () Bool)

(assert (= bs!527560 (and d!844318 b!2988326)))

(assert (=> bs!527560 (not (= lambda!111683 lambda!111673))))

(assert (=> d!844318 true))

(assert (=> d!844318 true))

(assert (=> d!844318 true))

(assert (=> d!844318 (= (isDefined!5282 (findConcatSeparation!1125 (reg!9669 r!17423) lt!1039820 Nil!35081 s!11993 s!11993)) (Exists!1613 lambda!111683))))

(declare-fun lt!1039920 () Unit!49083)

(declare-fun choose!17726 (Regex!9340 Regex!9340 List!35205) Unit!49083)

(assert (=> d!844318 (= lt!1039920 (choose!17726 (reg!9669 r!17423) lt!1039820 s!11993))))

(assert (=> d!844318 (validRegex!4073 (reg!9669 r!17423))))

(assert (=> d!844318 (= (lemmaFindConcatSeparationEquivalentToExists!903 (reg!9669 r!17423) lt!1039820 s!11993) lt!1039920)))

(declare-fun bs!527561 () Bool)

(assert (= bs!527561 d!844318))

(assert (=> bs!527561 m!3345783))

(assert (=> bs!527561 m!3345899))

(assert (=> bs!527561 m!3345783))

(declare-fun m!3345977 () Bool)

(assert (=> bs!527561 m!3345977))

(declare-fun m!3345979 () Bool)

(assert (=> bs!527561 m!3345979))

(declare-fun m!3345981 () Bool)

(assert (=> bs!527561 m!3345981))

(assert (=> b!2988174 d!844318))

(declare-fun b!2988638 () Bool)

(declare-fun e!1878904 () Option!6731)

(declare-fun e!1878905 () Option!6731)

(assert (=> b!2988638 (= e!1878904 e!1878905)))

(declare-fun c!491085 () Bool)

(assert (=> b!2988638 (= c!491085 (is-Nil!35081 s!11993))))

(declare-fun b!2988639 () Bool)

(declare-fun res!1232679 () Bool)

(declare-fun e!1878906 () Bool)

(assert (=> b!2988639 (=> (not res!1232679) (not e!1878906))))

(declare-fun lt!1039930 () Option!6731)

(assert (=> b!2988639 (= res!1232679 (matchR!4222 (reg!9669 r!17423) (_1!20131 (get!10869 lt!1039930))))))

(declare-fun b!2988640 () Bool)

(declare-fun e!1878907 () Bool)

(assert (=> b!2988640 (= e!1878907 (matchR!4222 lt!1039820 s!11993))))

(declare-fun b!2988641 () Bool)

(assert (=> b!2988641 (= e!1878904 (Some!6730 (tuple2!33999 Nil!35081 s!11993)))))

(declare-fun b!2988642 () Bool)

(declare-fun lt!1039929 () Unit!49083)

(declare-fun lt!1039928 () Unit!49083)

(assert (=> b!2988642 (= lt!1039929 lt!1039928)))

(assert (=> b!2988642 (= (++!8384 (++!8384 Nil!35081 (Cons!35081 (h!40501 s!11993) Nil!35081)) (t!234270 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!999 (List!35205 C!18866 List!35205 List!35205) Unit!49083)

(assert (=> b!2988642 (= lt!1039928 (lemmaMoveElementToOtherListKeepsConcatEq!999 Nil!35081 (h!40501 s!11993) (t!234270 s!11993) s!11993))))

(assert (=> b!2988642 (= e!1878905 (findConcatSeparation!1125 (reg!9669 r!17423) lt!1039820 (++!8384 Nil!35081 (Cons!35081 (h!40501 s!11993) Nil!35081)) (t!234270 s!11993) s!11993))))

(declare-fun b!2988643 () Bool)

(declare-fun e!1878908 () Bool)

(assert (=> b!2988643 (= e!1878908 (not (isDefined!5282 lt!1039930)))))

(declare-fun b!2988644 () Bool)

(declare-fun res!1232681 () Bool)

(assert (=> b!2988644 (=> (not res!1232681) (not e!1878906))))

(assert (=> b!2988644 (= res!1232681 (matchR!4222 lt!1039820 (_2!20131 (get!10869 lt!1039930))))))

(declare-fun b!2988645 () Bool)

(assert (=> b!2988645 (= e!1878905 None!6730)))

(declare-fun b!2988646 () Bool)

(assert (=> b!2988646 (= e!1878906 (= (++!8384 (_1!20131 (get!10869 lt!1039930)) (_2!20131 (get!10869 lt!1039930))) s!11993))))

(declare-fun d!844320 () Bool)

(assert (=> d!844320 e!1878908))

(declare-fun res!1232680 () Bool)

(assert (=> d!844320 (=> res!1232680 e!1878908)))

(assert (=> d!844320 (= res!1232680 e!1878906)))

(declare-fun res!1232683 () Bool)

(assert (=> d!844320 (=> (not res!1232683) (not e!1878906))))

(assert (=> d!844320 (= res!1232683 (isDefined!5282 lt!1039930))))

(assert (=> d!844320 (= lt!1039930 e!1878904)))

(declare-fun c!491084 () Bool)

(assert (=> d!844320 (= c!491084 e!1878907)))

(declare-fun res!1232682 () Bool)

(assert (=> d!844320 (=> (not res!1232682) (not e!1878907))))

(assert (=> d!844320 (= res!1232682 (matchR!4222 (reg!9669 r!17423) Nil!35081))))

(assert (=> d!844320 (validRegex!4073 (reg!9669 r!17423))))

(assert (=> d!844320 (= (findConcatSeparation!1125 (reg!9669 r!17423) lt!1039820 Nil!35081 s!11993 s!11993) lt!1039930)))

(assert (= (and d!844320 res!1232682) b!2988640))

(assert (= (and d!844320 c!491084) b!2988641))

(assert (= (and d!844320 (not c!491084)) b!2988638))

(assert (= (and b!2988638 c!491085) b!2988645))

(assert (= (and b!2988638 (not c!491085)) b!2988642))

(assert (= (and d!844320 res!1232683) b!2988639))

(assert (= (and b!2988639 res!1232679) b!2988644))

(assert (= (and b!2988644 res!1232681) b!2988646))

(assert (= (and d!844320 (not res!1232680)) b!2988643))

(declare-fun m!3345999 () Bool)

(assert (=> b!2988644 m!3345999))

(declare-fun m!3346001 () Bool)

(assert (=> b!2988644 m!3346001))

(declare-fun m!3346003 () Bool)

(assert (=> b!2988643 m!3346003))

(assert (=> b!2988639 m!3345999))

(declare-fun m!3346005 () Bool)

(assert (=> b!2988639 m!3346005))

(assert (=> d!844320 m!3346003))

(declare-fun m!3346007 () Bool)

(assert (=> d!844320 m!3346007))

(assert (=> d!844320 m!3345899))

(declare-fun m!3346009 () Bool)

(assert (=> b!2988642 m!3346009))

(assert (=> b!2988642 m!3346009))

(declare-fun m!3346011 () Bool)

(assert (=> b!2988642 m!3346011))

(declare-fun m!3346013 () Bool)

(assert (=> b!2988642 m!3346013))

(assert (=> b!2988642 m!3346009))

(declare-fun m!3346015 () Bool)

(assert (=> b!2988642 m!3346015))

(assert (=> b!2988646 m!3345999))

(declare-fun m!3346017 () Bool)

(assert (=> b!2988646 m!3346017))

(declare-fun m!3346019 () Bool)

(assert (=> b!2988640 m!3346019))

(assert (=> b!2988174 d!844320))

(declare-fun d!844324 () Bool)

(assert (=> d!844324 (= (Exists!1613 lambda!111660) (choose!17724 lambda!111660))))

(declare-fun bs!527562 () Bool)

(assert (= bs!527562 d!844324))

(declare-fun m!3346021 () Bool)

(assert (=> bs!527562 m!3346021))

(assert (=> b!2988174 d!844324))

(declare-fun d!844326 () Bool)

(declare-fun isEmpty!19347 (Option!6731) Bool)

(assert (=> d!844326 (= (isDefined!5282 lt!1039821) (not (isEmpty!19347 lt!1039821)))))

(declare-fun bs!527563 () Bool)

(assert (= bs!527563 d!844326))

(declare-fun m!3346023 () Bool)

(assert (=> bs!527563 m!3346023))

(assert (=> b!2988174 d!844326))

(declare-fun b!2988647 () Bool)

(declare-fun e!1878912 () Bool)

(assert (=> b!2988647 (= e!1878912 (nullable!3011 (reg!9669 r!17423)))))

(declare-fun b!2988648 () Bool)

(declare-fun e!1878910 () Bool)

(declare-fun lt!1039931 () Bool)

(assert (=> b!2988648 (= e!1878910 (not lt!1039931))))

(declare-fun b!2988649 () Bool)

(declare-fun res!1232689 () Bool)

(declare-fun e!1878911 () Bool)

(assert (=> b!2988649 (=> (not res!1232689) (not e!1878911))))

(assert (=> b!2988649 (= res!1232689 (isEmpty!19345 (tail!4894 (_1!20131 lt!1039814))))))

(declare-fun b!2988650 () Bool)

(declare-fun e!1878915 () Bool)

(declare-fun e!1878913 () Bool)

(assert (=> b!2988650 (= e!1878915 e!1878913)))

(declare-fun res!1232688 () Bool)

(assert (=> b!2988650 (=> (not res!1232688) (not e!1878913))))

(assert (=> b!2988650 (= res!1232688 (not lt!1039931))))

(declare-fun b!2988651 () Bool)

(assert (=> b!2988651 (= e!1878911 (= (head!6668 (_1!20131 lt!1039814)) (c!490956 (reg!9669 r!17423))))))

(declare-fun b!2988652 () Bool)

(declare-fun res!1232685 () Bool)

(assert (=> b!2988652 (=> res!1232685 e!1878915)))

(assert (=> b!2988652 (= res!1232685 e!1878911)))

(declare-fun res!1232686 () Bool)

(assert (=> b!2988652 (=> (not res!1232686) (not e!1878911))))

(assert (=> b!2988652 (= res!1232686 lt!1039931)))

(declare-fun b!2988653 () Bool)

(declare-fun e!1878909 () Bool)

(assert (=> b!2988653 (= e!1878909 e!1878910)))

(declare-fun c!491086 () Bool)

(assert (=> b!2988653 (= c!491086 (is-EmptyLang!9340 (reg!9669 r!17423)))))

(declare-fun b!2988654 () Bool)

(declare-fun call!199850 () Bool)

(assert (=> b!2988654 (= e!1878909 (= lt!1039931 call!199850))))

(declare-fun b!2988655 () Bool)

(declare-fun res!1232687 () Bool)

(assert (=> b!2988655 (=> (not res!1232687) (not e!1878911))))

(assert (=> b!2988655 (= res!1232687 (not call!199850))))

(declare-fun b!2988656 () Bool)

(declare-fun e!1878914 () Bool)

(assert (=> b!2988656 (= e!1878914 (not (= (head!6668 (_1!20131 lt!1039814)) (c!490956 (reg!9669 r!17423)))))))

(declare-fun b!2988658 () Bool)

(assert (=> b!2988658 (= e!1878913 e!1878914)))

(declare-fun res!1232691 () Bool)

(assert (=> b!2988658 (=> res!1232691 e!1878914)))

(assert (=> b!2988658 (= res!1232691 call!199850)))

(declare-fun b!2988659 () Bool)

(assert (=> b!2988659 (= e!1878912 (matchR!4222 (derivativeStep!2609 (reg!9669 r!17423) (head!6668 (_1!20131 lt!1039814))) (tail!4894 (_1!20131 lt!1039814))))))

(declare-fun b!2988660 () Bool)

(declare-fun res!1232690 () Bool)

(assert (=> b!2988660 (=> res!1232690 e!1878914)))

(assert (=> b!2988660 (= res!1232690 (not (isEmpty!19345 (tail!4894 (_1!20131 lt!1039814)))))))

(declare-fun bm!199845 () Bool)

(assert (=> bm!199845 (= call!199850 (isEmpty!19345 (_1!20131 lt!1039814)))))

(declare-fun b!2988657 () Bool)

(declare-fun res!1232684 () Bool)

(assert (=> b!2988657 (=> res!1232684 e!1878915)))

(assert (=> b!2988657 (= res!1232684 (not (is-ElementMatch!9340 (reg!9669 r!17423))))))

(assert (=> b!2988657 (= e!1878910 e!1878915)))

(declare-fun d!844328 () Bool)

(assert (=> d!844328 e!1878909))

(declare-fun c!491087 () Bool)

(assert (=> d!844328 (= c!491087 (is-EmptyExpr!9340 (reg!9669 r!17423)))))

(assert (=> d!844328 (= lt!1039931 e!1878912)))

(declare-fun c!491088 () Bool)

(assert (=> d!844328 (= c!491088 (isEmpty!19345 (_1!20131 lt!1039814)))))

(assert (=> d!844328 (validRegex!4073 (reg!9669 r!17423))))

(assert (=> d!844328 (= (matchR!4222 (reg!9669 r!17423) (_1!20131 lt!1039814)) lt!1039931)))

(assert (= (and d!844328 c!491088) b!2988647))

(assert (= (and d!844328 (not c!491088)) b!2988659))

(assert (= (and d!844328 c!491087) b!2988654))

(assert (= (and d!844328 (not c!491087)) b!2988653))

(assert (= (and b!2988653 c!491086) b!2988648))

(assert (= (and b!2988653 (not c!491086)) b!2988657))

(assert (= (and b!2988657 (not res!1232684)) b!2988652))

(assert (= (and b!2988652 res!1232686) b!2988655))

(assert (= (and b!2988655 res!1232687) b!2988649))

(assert (= (and b!2988649 res!1232689) b!2988651))

(assert (= (and b!2988652 (not res!1232685)) b!2988650))

(assert (= (and b!2988650 res!1232688) b!2988658))

(assert (= (and b!2988658 (not res!1232691)) b!2988660))

(assert (= (and b!2988660 (not res!1232690)) b!2988656))

(assert (= (or b!2988654 b!2988655 b!2988658) bm!199845))

(assert (=> b!2988649 m!3345917))

(assert (=> b!2988649 m!3345917))

(assert (=> b!2988649 m!3345919))

(assert (=> d!844328 m!3345921))

(assert (=> d!844328 m!3345899))

(assert (=> b!2988656 m!3345925))

(assert (=> b!2988651 m!3345925))

(assert (=> bm!199845 m!3345921))

(assert (=> b!2988660 m!3345917))

(assert (=> b!2988660 m!3345917))

(assert (=> b!2988660 m!3345919))

(assert (=> b!2988659 m!3345925))

(assert (=> b!2988659 m!3345925))

(declare-fun m!3346025 () Bool)

(assert (=> b!2988659 m!3346025))

(assert (=> b!2988659 m!3345917))

(assert (=> b!2988659 m!3346025))

(assert (=> b!2988659 m!3345917))

(declare-fun m!3346027 () Bool)

(assert (=> b!2988659 m!3346027))

(assert (=> b!2988647 m!3345839))

(assert (=> b!2988169 d!844328))

(declare-fun d!844330 () Bool)

(assert (=> d!844330 (= (get!10869 lt!1039821) (v!34864 lt!1039821))))

(assert (=> b!2988169 d!844330))

(declare-fun b!2988675 () Bool)

(declare-fun e!1878919 () Bool)

(assert (=> b!2988675 (= e!1878919 tp_is_empty!16243)))

(declare-fun b!2988678 () Bool)

(declare-fun tp!950541 () Bool)

(declare-fun tp!950543 () Bool)

(assert (=> b!2988678 (= e!1878919 (and tp!950541 tp!950543))))

(assert (=> b!2988172 (= tp!950506 e!1878919)))

(declare-fun b!2988677 () Bool)

(declare-fun tp!950542 () Bool)

(assert (=> b!2988677 (= e!1878919 tp!950542)))

(declare-fun b!2988676 () Bool)

(declare-fun tp!950540 () Bool)

(declare-fun tp!950544 () Bool)

(assert (=> b!2988676 (= e!1878919 (and tp!950540 tp!950544))))

(assert (= (and b!2988172 (is-ElementMatch!9340 (reg!9669 r!17423))) b!2988675))

(assert (= (and b!2988172 (is-Concat!14661 (reg!9669 r!17423))) b!2988676))

(assert (= (and b!2988172 (is-Star!9340 (reg!9669 r!17423))) b!2988677))

(assert (= (and b!2988172 (is-Union!9340 (reg!9669 r!17423))) b!2988678))

(declare-fun b!2988689 () Bool)

(declare-fun e!1878927 () Bool)

(declare-fun tp!950547 () Bool)

(assert (=> b!2988689 (= e!1878927 (and tp_is_empty!16243 tp!950547))))

(assert (=> b!2988171 (= tp!950511 e!1878927)))

(assert (= (and b!2988171 (is-Cons!35081 (t!234270 s!11993))) b!2988689))

(declare-fun b!2988694 () Bool)

(declare-fun e!1878930 () Bool)

(assert (=> b!2988694 (= e!1878930 tp_is_empty!16243)))

(declare-fun b!2988697 () Bool)

(declare-fun tp!950549 () Bool)

(declare-fun tp!950551 () Bool)

(assert (=> b!2988697 (= e!1878930 (and tp!950549 tp!950551))))

(assert (=> b!2988175 (= tp!950509 e!1878930)))

(declare-fun b!2988696 () Bool)

(declare-fun tp!950550 () Bool)

(assert (=> b!2988696 (= e!1878930 tp!950550)))

(declare-fun b!2988695 () Bool)

(declare-fun tp!950548 () Bool)

(declare-fun tp!950552 () Bool)

(assert (=> b!2988695 (= e!1878930 (and tp!950548 tp!950552))))

(assert (= (and b!2988175 (is-ElementMatch!9340 (regOne!19192 r!17423))) b!2988694))

(assert (= (and b!2988175 (is-Concat!14661 (regOne!19192 r!17423))) b!2988695))

(assert (= (and b!2988175 (is-Star!9340 (regOne!19192 r!17423))) b!2988696))

(assert (= (and b!2988175 (is-Union!9340 (regOne!19192 r!17423))) b!2988697))

(declare-fun b!2988703 () Bool)

(declare-fun e!1878933 () Bool)

(assert (=> b!2988703 (= e!1878933 tp_is_empty!16243)))

(declare-fun b!2988707 () Bool)

(declare-fun tp!950554 () Bool)

(declare-fun tp!950556 () Bool)

(assert (=> b!2988707 (= e!1878933 (and tp!950554 tp!950556))))

(assert (=> b!2988175 (= tp!950510 e!1878933)))

(declare-fun b!2988706 () Bool)

(declare-fun tp!950555 () Bool)

(assert (=> b!2988706 (= e!1878933 tp!950555)))

(declare-fun b!2988705 () Bool)

(declare-fun tp!950553 () Bool)

(declare-fun tp!950557 () Bool)

(assert (=> b!2988705 (= e!1878933 (and tp!950553 tp!950557))))

(assert (= (and b!2988175 (is-ElementMatch!9340 (regTwo!19192 r!17423))) b!2988703))

(assert (= (and b!2988175 (is-Concat!14661 (regTwo!19192 r!17423))) b!2988705))

(assert (= (and b!2988175 (is-Star!9340 (regTwo!19192 r!17423))) b!2988706))

(assert (= (and b!2988175 (is-Union!9340 (regTwo!19192 r!17423))) b!2988707))

(declare-fun b!2988710 () Bool)

(declare-fun e!1878938 () Bool)

(assert (=> b!2988710 (= e!1878938 tp_is_empty!16243)))

(declare-fun b!2988713 () Bool)

(declare-fun tp!950559 () Bool)

(declare-fun tp!950561 () Bool)

(assert (=> b!2988713 (= e!1878938 (and tp!950559 tp!950561))))

(assert (=> b!2988168 (= tp!950508 e!1878938)))

(declare-fun b!2988712 () Bool)

(declare-fun tp!950560 () Bool)

(assert (=> b!2988712 (= e!1878938 tp!950560)))

(declare-fun b!2988711 () Bool)

(declare-fun tp!950558 () Bool)

(declare-fun tp!950562 () Bool)

(assert (=> b!2988711 (= e!1878938 (and tp!950558 tp!950562))))

(assert (= (and b!2988168 (is-ElementMatch!9340 (regOne!19193 r!17423))) b!2988710))

(assert (= (and b!2988168 (is-Concat!14661 (regOne!19193 r!17423))) b!2988711))

(assert (= (and b!2988168 (is-Star!9340 (regOne!19193 r!17423))) b!2988712))

(assert (= (and b!2988168 (is-Union!9340 (regOne!19193 r!17423))) b!2988713))

(declare-fun b!2988714 () Bool)

(declare-fun e!1878939 () Bool)

(assert (=> b!2988714 (= e!1878939 tp_is_empty!16243)))

(declare-fun b!2988717 () Bool)

(declare-fun tp!950564 () Bool)

(declare-fun tp!950566 () Bool)

(assert (=> b!2988717 (= e!1878939 (and tp!950564 tp!950566))))

(assert (=> b!2988168 (= tp!950507 e!1878939)))

(declare-fun b!2988716 () Bool)

(declare-fun tp!950565 () Bool)

(assert (=> b!2988716 (= e!1878939 tp!950565)))

(declare-fun b!2988715 () Bool)

(declare-fun tp!950563 () Bool)

(declare-fun tp!950567 () Bool)

(assert (=> b!2988715 (= e!1878939 (and tp!950563 tp!950567))))

(assert (= (and b!2988168 (is-ElementMatch!9340 (regTwo!19193 r!17423))) b!2988714))

(assert (= (and b!2988168 (is-Concat!14661 (regTwo!19193 r!17423))) b!2988715))

(assert (= (and b!2988168 (is-Star!9340 (regTwo!19193 r!17423))) b!2988716))

(assert (= (and b!2988168 (is-Union!9340 (regTwo!19193 r!17423))) b!2988717))

(push 1)

(assert (not bm!199831))

(assert (not b!2988532))

(assert (not bm!199797))

(assert (not b!2988706))

(assert (not b!2988486))

(assert (not b!2988676))

(assert (not b!2988646))

(assert (not bm!199832))

(assert (not d!844294))

(assert (not b!2988696))

(assert (not bm!199826))

(assert (not b!2988523))

(assert (not d!844296))

(assert (not b!2988511))

(assert (not b!2988649))

(assert (not d!844310))

(assert (not b!2988362))

(assert (not b!2988494))

(assert (not b!2988639))

(assert (not b!2988640))

(assert (not b!2988707))

(assert (not b!2988279))

(assert (not b!2988697))

(assert (not b!2988656))

(assert (not b!2988689))

(assert (not d!844324))

(assert (not bm!199834))

(assert (not b!2988325))

(assert (not b!2988522))

(assert (not b!2988644))

(assert (not b!2988375))

(assert (not b!2988711))

(assert (not bm!199833))

(assert (not b!2988364))

(assert (not b!2988642))

(assert (not b!2988321))

(assert (not b!2988659))

(assert (not b!2988518))

(assert (not b!2988366))

(assert (not b!2988717))

(assert (not b!2988643))

(assert (not b!2988695))

(assert (not d!844318))

(assert (not b!2988513))

(assert (not b!2988374))

(assert (not b!2988712))

(assert (not bm!199845))

(assert (not b!2988715))

(assert (not b!2988536))

(assert (not b!2988521))

(assert (not d!844308))

(assert (not d!844306))

(assert (not d!844312))

(assert (not bm!199793))

(assert (not bm!199786))

(assert (not b!2988660))

(assert (not bm!199827))

(assert (not b!2988678))

(assert (not d!844304))

(assert (not d!844328))

(assert (not b!2988677))

(assert (not d!844320))

(assert tp_is_empty!16243)

(assert (not b!2988716))

(assert (not b!2988525))

(assert (not d!844326))

(assert (not b!2988506))

(assert (not b!2988278))

(assert (not bm!199830))

(assert (not b!2988527))

(assert (not b!2988705))

(assert (not b!2988509))

(assert (not b!2988371))

(assert (not b!2988647))

(assert (not d!844284))

(assert (not b!2988508))

(assert (not b!2988713))

(assert (not bm!199788))

(assert (not bm!199794))

(assert (not b!2988651))

(assert (not d!844298))

(assert (not b!2988256))

(assert (not b!2988535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

