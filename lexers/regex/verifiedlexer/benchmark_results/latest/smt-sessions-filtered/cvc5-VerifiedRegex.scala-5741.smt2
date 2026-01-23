; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284786 () Bool)

(assert start!284786)

(declare-fun b!2928174 () Bool)

(assert (=> b!2928174 true))

(assert (=> b!2928174 true))

(assert (=> b!2928174 true))

(declare-fun lambda!108838 () Int)

(declare-fun lambda!108837 () Int)

(assert (=> b!2928174 (not (= lambda!108838 lambda!108837))))

(assert (=> b!2928174 true))

(assert (=> b!2928174 true))

(assert (=> b!2928174 true))

(declare-fun b!2928166 () Bool)

(declare-fun res!1208590 () Bool)

(declare-fun e!1846758 () Bool)

(assert (=> b!2928166 (=> res!1208590 e!1846758)))

(declare-datatypes ((C!18250 0))(
  ( (C!18251 (val!11161 Int)) )
))
(declare-datatypes ((Regex!9032 0))(
  ( (ElementMatch!9032 (c!478222 C!18250)) (Concat!14353 (regOne!18576 Regex!9032) (regTwo!18576 Regex!9032)) (EmptyExpr!9032) (Star!9032 (reg!9361 Regex!9032)) (EmptyLang!9032) (Union!9032 (regOne!18577 Regex!9032) (regTwo!18577 Regex!9032)) )
))
(declare-fun lt!1027189 () Regex!9032)

(declare-fun validRegex!3765 (Regex!9032) Bool)

(assert (=> b!2928166 (= res!1208590 (not (validRegex!3765 lt!1027189)))))

(declare-fun b!2928167 () Bool)

(declare-fun e!1846756 () Bool)

(declare-fun e!1846754 () Bool)

(assert (=> b!2928167 (= e!1846756 (not e!1846754))))

(declare-fun res!1208589 () Bool)

(assert (=> b!2928167 (=> res!1208589 e!1846754)))

(declare-fun lt!1027188 () Bool)

(declare-fun r!17423 () Regex!9032)

(assert (=> b!2928167 (= res!1208589 (or (not lt!1027188) (is-Concat!14353 r!17423) (is-Union!9032 r!17423) (not (is-Star!9032 r!17423))))))

(declare-datatypes ((List!34897 0))(
  ( (Nil!34773) (Cons!34773 (h!40193 C!18250) (t!233962 List!34897)) )
))
(declare-fun s!11993 () List!34897)

(declare-fun matchRSpec!1169 (Regex!9032 List!34897) Bool)

(assert (=> b!2928167 (= lt!1027188 (matchRSpec!1169 r!17423 s!11993))))

(declare-fun matchR!3914 (Regex!9032 List!34897) Bool)

(assert (=> b!2928167 (= lt!1027188 (matchR!3914 r!17423 s!11993))))

(declare-datatypes ((Unit!48403 0))(
  ( (Unit!48404) )
))
(declare-fun lt!1027192 () Unit!48403)

(declare-fun mainMatchTheorem!1169 (Regex!9032 List!34897) Unit!48403)

(assert (=> b!2928167 (= lt!1027192 (mainMatchTheorem!1169 r!17423 s!11993))))

(declare-fun b!2928168 () Bool)

(declare-fun res!1208588 () Bool)

(assert (=> b!2928168 (=> res!1208588 e!1846754)))

(declare-fun isEmpty!19016 (List!34897) Bool)

(assert (=> b!2928168 (= res!1208588 (isEmpty!19016 s!11993))))

(declare-fun b!2928169 () Bool)

(declare-fun e!1846757 () Bool)

(declare-fun tp_is_empty!15627 () Bool)

(declare-fun tp!938731 () Bool)

(assert (=> b!2928169 (= e!1846757 (and tp_is_empty!15627 tp!938731))))

(declare-fun b!2928170 () Bool)

(declare-fun e!1846755 () Bool)

(declare-fun tp!938730 () Bool)

(declare-fun tp!938732 () Bool)

(assert (=> b!2928170 (= e!1846755 (and tp!938730 tp!938732))))

(declare-fun b!2928171 () Bool)

(declare-fun ++!8290 (List!34897 List!34897) List!34897)

(assert (=> b!2928171 (= e!1846758 (= (++!8290 Nil!34773 s!11993) s!11993))))

(declare-fun b!2928172 () Bool)

(declare-fun tp!938734 () Bool)

(assert (=> b!2928172 (= e!1846755 tp!938734)))

(declare-fun b!2928173 () Bool)

(declare-fun tp!938733 () Bool)

(declare-fun tp!938735 () Bool)

(assert (=> b!2928173 (= e!1846755 (and tp!938733 tp!938735))))

(assert (=> b!2928174 (= e!1846754 e!1846758)))

(declare-fun res!1208587 () Bool)

(assert (=> b!2928174 (=> res!1208587 e!1846758)))

(assert (=> b!2928174 (= res!1208587 (not (validRegex!3765 (reg!9361 r!17423))))))

(declare-fun Exists!1394 (Int) Bool)

(assert (=> b!2928174 (= (Exists!1394 lambda!108837) (Exists!1394 lambda!108838))))

(declare-fun lt!1027190 () Unit!48403)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!205 (Regex!9032 List!34897) Unit!48403)

(assert (=> b!2928174 (= lt!1027190 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!205 (reg!9361 r!17423) s!11993))))

(declare-datatypes ((tuple2!33714 0))(
  ( (tuple2!33715 (_1!19989 List!34897) (_2!19989 List!34897)) )
))
(declare-datatypes ((Option!6589 0))(
  ( (None!6588) (Some!6588 (v!34722 tuple2!33714)) )
))
(declare-fun isDefined!5140 (Option!6589) Bool)

(declare-fun findConcatSeparation!983 (Regex!9032 Regex!9032 List!34897 List!34897 List!34897) Option!6589)

(assert (=> b!2928174 (= (isDefined!5140 (findConcatSeparation!983 (reg!9361 r!17423) lt!1027189 Nil!34773 s!11993 s!11993)) (Exists!1394 lambda!108837))))

(declare-fun lt!1027191 () Unit!48403)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!765 (Regex!9032 Regex!9032 List!34897) Unit!48403)

(assert (=> b!2928174 (= lt!1027191 (lemmaFindConcatSeparationEquivalentToExists!765 (reg!9361 r!17423) lt!1027189 s!11993))))

(assert (=> b!2928174 (= lt!1027189 (Star!9032 (reg!9361 r!17423)))))

(declare-fun res!1208591 () Bool)

(assert (=> start!284786 (=> (not res!1208591) (not e!1846756))))

(assert (=> start!284786 (= res!1208591 (validRegex!3765 r!17423))))

(assert (=> start!284786 e!1846756))

(assert (=> start!284786 e!1846755))

(assert (=> start!284786 e!1846757))

(declare-fun b!2928175 () Bool)

(assert (=> b!2928175 (= e!1846755 tp_is_empty!15627)))

(assert (= (and start!284786 res!1208591) b!2928167))

(assert (= (and b!2928167 (not res!1208589)) b!2928168))

(assert (= (and b!2928168 (not res!1208588)) b!2928174))

(assert (= (and b!2928174 (not res!1208587)) b!2928166))

(assert (= (and b!2928166 (not res!1208590)) b!2928171))

(assert (= (and start!284786 (is-ElementMatch!9032 r!17423)) b!2928175))

(assert (= (and start!284786 (is-Concat!14353 r!17423)) b!2928173))

(assert (= (and start!284786 (is-Star!9032 r!17423)) b!2928172))

(assert (= (and start!284786 (is-Union!9032 r!17423)) b!2928170))

(assert (= (and start!284786 (is-Cons!34773 s!11993)) b!2928169))

(declare-fun m!3319741 () Bool)

(assert (=> b!2928166 m!3319741))

(declare-fun m!3319743 () Bool)

(assert (=> b!2928167 m!3319743))

(declare-fun m!3319745 () Bool)

(assert (=> b!2928167 m!3319745))

(declare-fun m!3319747 () Bool)

(assert (=> b!2928167 m!3319747))

(declare-fun m!3319749 () Bool)

(assert (=> b!2928171 m!3319749))

(declare-fun m!3319751 () Bool)

(assert (=> b!2928174 m!3319751))

(declare-fun m!3319753 () Bool)

(assert (=> b!2928174 m!3319753))

(declare-fun m!3319755 () Bool)

(assert (=> b!2928174 m!3319755))

(declare-fun m!3319757 () Bool)

(assert (=> b!2928174 m!3319757))

(declare-fun m!3319759 () Bool)

(assert (=> b!2928174 m!3319759))

(assert (=> b!2928174 m!3319759))

(assert (=> b!2928174 m!3319757))

(declare-fun m!3319761 () Bool)

(assert (=> b!2928174 m!3319761))

(declare-fun m!3319763 () Bool)

(assert (=> b!2928174 m!3319763))

(declare-fun m!3319765 () Bool)

(assert (=> start!284786 m!3319765))

(declare-fun m!3319767 () Bool)

(assert (=> b!2928168 m!3319767))

(push 1)

(assert (not b!2928166))

(assert tp_is_empty!15627)

(assert (not b!2928167))

(assert (not start!284786))

(assert (not b!2928170))

(assert (not b!2928174))

(assert (not b!2928169))

(assert (not b!2928172))

(assert (not b!2928171))

(assert (not b!2928168))

(assert (not b!2928173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2928246 () Bool)

(declare-fun res!1208635 () Bool)

(declare-fun e!1846797 () Bool)

(assert (=> b!2928246 (=> res!1208635 e!1846797)))

(assert (=> b!2928246 (= res!1208635 (not (is-Concat!14353 r!17423)))))

(declare-fun e!1846794 () Bool)

(assert (=> b!2928246 (= e!1846794 e!1846797)))

(declare-fun b!2928247 () Bool)

(declare-fun e!1846795 () Bool)

(declare-fun call!192146 () Bool)

(assert (=> b!2928247 (= e!1846795 call!192146)))

(declare-fun b!2928248 () Bool)

(declare-fun e!1846799 () Bool)

(declare-fun e!1846800 () Bool)

(assert (=> b!2928248 (= e!1846799 e!1846800)))

(declare-fun res!1208631 () Bool)

(declare-fun nullable!2840 (Regex!9032) Bool)

(assert (=> b!2928248 (= res!1208631 (not (nullable!2840 (reg!9361 r!17423))))))

(assert (=> b!2928248 (=> (not res!1208631) (not e!1846800))))

(declare-fun b!2928249 () Bool)

(assert (=> b!2928249 (= e!1846797 e!1846795)))

(declare-fun res!1208632 () Bool)

(assert (=> b!2928249 (=> (not res!1208632) (not e!1846795))))

(declare-fun call!192147 () Bool)

(assert (=> b!2928249 (= res!1208632 call!192147)))

(declare-fun b!2928251 () Bool)

(declare-fun e!1846798 () Bool)

(assert (=> b!2928251 (= e!1846798 e!1846799)))

(declare-fun c!478228 () Bool)

(assert (=> b!2928251 (= c!478228 (is-Star!9032 r!17423))))

(declare-fun bm!192140 () Bool)

(declare-fun c!478229 () Bool)

(assert (=> bm!192140 (= call!192147 (validRegex!3765 (ite c!478229 (regTwo!18577 r!17423) (regOne!18576 r!17423))))))

(declare-fun b!2928252 () Bool)

(declare-fun e!1846796 () Bool)

(assert (=> b!2928252 (= e!1846796 call!192147)))

(declare-fun bm!192141 () Bool)

(declare-fun call!192145 () Bool)

(assert (=> bm!192141 (= call!192146 call!192145)))

(declare-fun b!2928253 () Bool)

(assert (=> b!2928253 (= e!1846800 call!192145)))

(declare-fun bm!192142 () Bool)

(assert (=> bm!192142 (= call!192145 (validRegex!3765 (ite c!478228 (reg!9361 r!17423) (ite c!478229 (regOne!18577 r!17423) (regTwo!18576 r!17423)))))))

(declare-fun b!2928254 () Bool)

(declare-fun res!1208633 () Bool)

(assert (=> b!2928254 (=> (not res!1208633) (not e!1846796))))

(assert (=> b!2928254 (= res!1208633 call!192146)))

(assert (=> b!2928254 (= e!1846794 e!1846796)))

(declare-fun d!839086 () Bool)

(declare-fun res!1208634 () Bool)

(assert (=> d!839086 (=> res!1208634 e!1846798)))

(assert (=> d!839086 (= res!1208634 (is-ElementMatch!9032 r!17423))))

(assert (=> d!839086 (= (validRegex!3765 r!17423) e!1846798)))

(declare-fun b!2928250 () Bool)

(assert (=> b!2928250 (= e!1846799 e!1846794)))

(assert (=> b!2928250 (= c!478229 (is-Union!9032 r!17423))))

(assert (= (and d!839086 (not res!1208634)) b!2928251))

(assert (= (and b!2928251 c!478228) b!2928248))

(assert (= (and b!2928251 (not c!478228)) b!2928250))

(assert (= (and b!2928248 res!1208631) b!2928253))

(assert (= (and b!2928250 c!478229) b!2928254))

(assert (= (and b!2928250 (not c!478229)) b!2928246))

(assert (= (and b!2928254 res!1208633) b!2928252))

(assert (= (and b!2928246 (not res!1208635)) b!2928249))

(assert (= (and b!2928249 res!1208632) b!2928247))

(assert (= (or b!2928254 b!2928247) bm!192141))

(assert (= (or b!2928252 b!2928249) bm!192140))

(assert (= (or b!2928253 bm!192141) bm!192142))

(declare-fun m!3319797 () Bool)

(assert (=> b!2928248 m!3319797))

(declare-fun m!3319799 () Bool)

(assert (=> bm!192140 m!3319799))

(declare-fun m!3319801 () Bool)

(assert (=> bm!192142 m!3319801))

(assert (=> start!284786 d!839086))

(declare-fun b!2928266 () Bool)

(declare-fun e!1846805 () Bool)

(declare-fun lt!1027210 () List!34897)

(assert (=> b!2928266 (= e!1846805 (or (not (= s!11993 Nil!34773)) (= lt!1027210 Nil!34773)))))

(declare-fun d!839088 () Bool)

(assert (=> d!839088 e!1846805))

(declare-fun res!1208640 () Bool)

(assert (=> d!839088 (=> (not res!1208640) (not e!1846805))))

(declare-fun content!4750 (List!34897) (Set C!18250))

(assert (=> d!839088 (= res!1208640 (= (content!4750 lt!1027210) (set.union (content!4750 Nil!34773) (content!4750 s!11993))))))

(declare-fun e!1846806 () List!34897)

(assert (=> d!839088 (= lt!1027210 e!1846806)))

(declare-fun c!478232 () Bool)

(assert (=> d!839088 (= c!478232 (is-Nil!34773 Nil!34773))))

(assert (=> d!839088 (= (++!8290 Nil!34773 s!11993) lt!1027210)))

(declare-fun b!2928265 () Bool)

(declare-fun res!1208641 () Bool)

(assert (=> b!2928265 (=> (not res!1208641) (not e!1846805))))

(declare-fun size!26439 (List!34897) Int)

(assert (=> b!2928265 (= res!1208641 (= (size!26439 lt!1027210) (+ (size!26439 Nil!34773) (size!26439 s!11993))))))

(declare-fun b!2928264 () Bool)

(assert (=> b!2928264 (= e!1846806 (Cons!34773 (h!40193 Nil!34773) (++!8290 (t!233962 Nil!34773) s!11993)))))

(declare-fun b!2928263 () Bool)

(assert (=> b!2928263 (= e!1846806 s!11993)))

(assert (= (and d!839088 c!478232) b!2928263))

(assert (= (and d!839088 (not c!478232)) b!2928264))

(assert (= (and d!839088 res!1208640) b!2928265))

(assert (= (and b!2928265 res!1208641) b!2928266))

(declare-fun m!3319805 () Bool)

(assert (=> d!839088 m!3319805))

(declare-fun m!3319807 () Bool)

(assert (=> d!839088 m!3319807))

(declare-fun m!3319809 () Bool)

(assert (=> d!839088 m!3319809))

(declare-fun m!3319811 () Bool)

(assert (=> b!2928265 m!3319811))

(declare-fun m!3319813 () Bool)

(assert (=> b!2928265 m!3319813))

(declare-fun m!3319815 () Bool)

(assert (=> b!2928265 m!3319815))

(declare-fun m!3319817 () Bool)

(assert (=> b!2928264 m!3319817))

(assert (=> b!2928171 d!839088))

(declare-fun b!2928289 () Bool)

(declare-fun e!1846823 () Option!6589)

(assert (=> b!2928289 (= e!1846823 (Some!6588 (tuple2!33715 Nil!34773 s!11993)))))

(declare-fun b!2928290 () Bool)

(declare-fun res!1208659 () Bool)

(declare-fun e!1846820 () Bool)

(assert (=> b!2928290 (=> (not res!1208659) (not e!1846820))))

(declare-fun lt!1027220 () Option!6589)

(declare-fun get!10602 (Option!6589) tuple2!33714)

(assert (=> b!2928290 (= res!1208659 (matchR!3914 lt!1027189 (_2!19989 (get!10602 lt!1027220))))))

(declare-fun b!2928291 () Bool)

(declare-fun res!1208658 () Bool)

(assert (=> b!2928291 (=> (not res!1208658) (not e!1846820))))

(assert (=> b!2928291 (= res!1208658 (matchR!3914 (reg!9361 r!17423) (_1!19989 (get!10602 lt!1027220))))))

(declare-fun b!2928292 () Bool)

(declare-fun e!1846821 () Bool)

(assert (=> b!2928292 (= e!1846821 (matchR!3914 lt!1027189 s!11993))))

(declare-fun b!2928293 () Bool)

(assert (=> b!2928293 (= e!1846820 (= (++!8290 (_1!19989 (get!10602 lt!1027220)) (_2!19989 (get!10602 lt!1027220))) s!11993))))

(declare-fun b!2928295 () Bool)

(declare-fun e!1846822 () Bool)

(assert (=> b!2928295 (= e!1846822 (not (isDefined!5140 lt!1027220)))))

(declare-fun b!2928296 () Bool)

(declare-fun lt!1027221 () Unit!48403)

(declare-fun lt!1027219 () Unit!48403)

(assert (=> b!2928296 (= lt!1027221 lt!1027219)))

(assert (=> b!2928296 (= (++!8290 (++!8290 Nil!34773 (Cons!34773 (h!40193 s!11993) Nil!34773)) (t!233962 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!924 (List!34897 C!18250 List!34897 List!34897) Unit!48403)

(assert (=> b!2928296 (= lt!1027219 (lemmaMoveElementToOtherListKeepsConcatEq!924 Nil!34773 (h!40193 s!11993) (t!233962 s!11993) s!11993))))

(declare-fun e!1846819 () Option!6589)

(assert (=> b!2928296 (= e!1846819 (findConcatSeparation!983 (reg!9361 r!17423) lt!1027189 (++!8290 Nil!34773 (Cons!34773 (h!40193 s!11993) Nil!34773)) (t!233962 s!11993) s!11993))))

(declare-fun b!2928297 () Bool)

(assert (=> b!2928297 (= e!1846823 e!1846819)))

(declare-fun c!478237 () Bool)

(assert (=> b!2928297 (= c!478237 (is-Nil!34773 s!11993))))

(declare-fun b!2928294 () Bool)

(assert (=> b!2928294 (= e!1846819 None!6588)))

(declare-fun d!839094 () Bool)

(assert (=> d!839094 e!1846822))

(declare-fun res!1208657 () Bool)

(assert (=> d!839094 (=> res!1208657 e!1846822)))

(assert (=> d!839094 (= res!1208657 e!1846820)))

(declare-fun res!1208656 () Bool)

(assert (=> d!839094 (=> (not res!1208656) (not e!1846820))))

(assert (=> d!839094 (= res!1208656 (isDefined!5140 lt!1027220))))

(assert (=> d!839094 (= lt!1027220 e!1846823)))

(declare-fun c!478238 () Bool)

(assert (=> d!839094 (= c!478238 e!1846821)))

(declare-fun res!1208660 () Bool)

(assert (=> d!839094 (=> (not res!1208660) (not e!1846821))))

(assert (=> d!839094 (= res!1208660 (matchR!3914 (reg!9361 r!17423) Nil!34773))))

(assert (=> d!839094 (validRegex!3765 (reg!9361 r!17423))))

(assert (=> d!839094 (= (findConcatSeparation!983 (reg!9361 r!17423) lt!1027189 Nil!34773 s!11993 s!11993) lt!1027220)))

(assert (= (and d!839094 res!1208660) b!2928292))

(assert (= (and d!839094 c!478238) b!2928289))

(assert (= (and d!839094 (not c!478238)) b!2928297))

(assert (= (and b!2928297 c!478237) b!2928294))

(assert (= (and b!2928297 (not c!478237)) b!2928296))

(assert (= (and d!839094 res!1208656) b!2928291))

(assert (= (and b!2928291 res!1208658) b!2928290))

(assert (= (and b!2928290 res!1208659) b!2928293))

(assert (= (and d!839094 (not res!1208657)) b!2928295))

(declare-fun m!3319819 () Bool)

(assert (=> b!2928295 m!3319819))

(declare-fun m!3319821 () Bool)

(assert (=> b!2928290 m!3319821))

(declare-fun m!3319823 () Bool)

(assert (=> b!2928290 m!3319823))

(declare-fun m!3319825 () Bool)

(assert (=> b!2928292 m!3319825))

(assert (=> b!2928291 m!3319821))

(declare-fun m!3319827 () Bool)

(assert (=> b!2928291 m!3319827))

(assert (=> d!839094 m!3319819))

(declare-fun m!3319829 () Bool)

(assert (=> d!839094 m!3319829))

(assert (=> d!839094 m!3319753))

(declare-fun m!3319831 () Bool)

(assert (=> b!2928296 m!3319831))

(assert (=> b!2928296 m!3319831))

(declare-fun m!3319833 () Bool)

(assert (=> b!2928296 m!3319833))

(declare-fun m!3319835 () Bool)

(assert (=> b!2928296 m!3319835))

(assert (=> b!2928296 m!3319831))

(declare-fun m!3319837 () Bool)

(assert (=> b!2928296 m!3319837))

(assert (=> b!2928293 m!3319821))

(declare-fun m!3319839 () Bool)

(assert (=> b!2928293 m!3319839))

(assert (=> b!2928174 d!839094))

(declare-fun bs!525082 () Bool)

(declare-fun d!839096 () Bool)

(assert (= bs!525082 (and d!839096 b!2928174)))

(declare-fun lambda!108857 () Int)

(assert (=> bs!525082 (= (= (Star!9032 (reg!9361 r!17423)) lt!1027189) (= lambda!108857 lambda!108837))))

(assert (=> bs!525082 (not (= lambda!108857 lambda!108838))))

(assert (=> d!839096 true))

(assert (=> d!839096 true))

(declare-fun lambda!108858 () Int)

(assert (=> bs!525082 (not (= lambda!108858 lambda!108837))))

(assert (=> bs!525082 (= (= (Star!9032 (reg!9361 r!17423)) lt!1027189) (= lambda!108858 lambda!108838))))

(declare-fun bs!525083 () Bool)

(assert (= bs!525083 d!839096))

(assert (=> bs!525083 (not (= lambda!108858 lambda!108857))))

(assert (=> d!839096 true))

(assert (=> d!839096 true))

(assert (=> d!839096 (= (Exists!1394 lambda!108857) (Exists!1394 lambda!108858))))

(declare-fun lt!1027225 () Unit!48403)

(declare-fun choose!17289 (Regex!9032 List!34897) Unit!48403)

(assert (=> d!839096 (= lt!1027225 (choose!17289 (reg!9361 r!17423) s!11993))))

(assert (=> d!839096 (validRegex!3765 (reg!9361 r!17423))))

(assert (=> d!839096 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!205 (reg!9361 r!17423) s!11993) lt!1027225)))

(declare-fun m!3319847 () Bool)

(assert (=> bs!525083 m!3319847))

(declare-fun m!3319849 () Bool)

(assert (=> bs!525083 m!3319849))

(declare-fun m!3319851 () Bool)

(assert (=> bs!525083 m!3319851))

(assert (=> bs!525083 m!3319753))

(assert (=> b!2928174 d!839096))

(declare-fun d!839100 () Bool)

(declare-fun isEmpty!19018 (Option!6589) Bool)

(assert (=> d!839100 (= (isDefined!5140 (findConcatSeparation!983 (reg!9361 r!17423) lt!1027189 Nil!34773 s!11993 s!11993)) (not (isEmpty!19018 (findConcatSeparation!983 (reg!9361 r!17423) lt!1027189 Nil!34773 s!11993 s!11993))))))

(declare-fun bs!525084 () Bool)

(assert (= bs!525084 d!839100))

(assert (=> bs!525084 m!3319757))

(declare-fun m!3319853 () Bool)

(assert (=> bs!525084 m!3319853))

(assert (=> b!2928174 d!839100))

(declare-fun d!839102 () Bool)

(declare-fun choose!17290 (Int) Bool)

(assert (=> d!839102 (= (Exists!1394 lambda!108837) (choose!17290 lambda!108837))))

(declare-fun bs!525087 () Bool)

(assert (= bs!525087 d!839102))

(declare-fun m!3319859 () Bool)

(assert (=> bs!525087 m!3319859))

(assert (=> b!2928174 d!839102))

(declare-fun b!2928314 () Bool)

(declare-fun res!1208681 () Bool)

(declare-fun e!1846833 () Bool)

(assert (=> b!2928314 (=> res!1208681 e!1846833)))

(assert (=> b!2928314 (= res!1208681 (not (is-Concat!14353 (reg!9361 r!17423))))))

(declare-fun e!1846830 () Bool)

(assert (=> b!2928314 (= e!1846830 e!1846833)))

(declare-fun b!2928315 () Bool)

(declare-fun e!1846831 () Bool)

(declare-fun call!192149 () Bool)

(assert (=> b!2928315 (= e!1846831 call!192149)))

(declare-fun b!2928316 () Bool)

(declare-fun e!1846835 () Bool)

(declare-fun e!1846836 () Bool)

(assert (=> b!2928316 (= e!1846835 e!1846836)))

(declare-fun res!1208677 () Bool)

(assert (=> b!2928316 (= res!1208677 (not (nullable!2840 (reg!9361 (reg!9361 r!17423)))))))

(assert (=> b!2928316 (=> (not res!1208677) (not e!1846836))))

(declare-fun b!2928317 () Bool)

(assert (=> b!2928317 (= e!1846833 e!1846831)))

(declare-fun res!1208678 () Bool)

(assert (=> b!2928317 (=> (not res!1208678) (not e!1846831))))

(declare-fun call!192150 () Bool)

(assert (=> b!2928317 (= res!1208678 call!192150)))

(declare-fun b!2928319 () Bool)

(declare-fun e!1846834 () Bool)

(assert (=> b!2928319 (= e!1846834 e!1846835)))

(declare-fun c!478239 () Bool)

(assert (=> b!2928319 (= c!478239 (is-Star!9032 (reg!9361 r!17423)))))

(declare-fun bm!192143 () Bool)

(declare-fun c!478240 () Bool)

(assert (=> bm!192143 (= call!192150 (validRegex!3765 (ite c!478240 (regTwo!18577 (reg!9361 r!17423)) (regOne!18576 (reg!9361 r!17423)))))))

(declare-fun b!2928320 () Bool)

(declare-fun e!1846832 () Bool)

(assert (=> b!2928320 (= e!1846832 call!192150)))

(declare-fun bm!192144 () Bool)

(declare-fun call!192148 () Bool)

(assert (=> bm!192144 (= call!192149 call!192148)))

(declare-fun b!2928321 () Bool)

(assert (=> b!2928321 (= e!1846836 call!192148)))

(declare-fun bm!192145 () Bool)

(assert (=> bm!192145 (= call!192148 (validRegex!3765 (ite c!478239 (reg!9361 (reg!9361 r!17423)) (ite c!478240 (regOne!18577 (reg!9361 r!17423)) (regTwo!18576 (reg!9361 r!17423))))))))

(declare-fun b!2928322 () Bool)

(declare-fun res!1208679 () Bool)

(assert (=> b!2928322 (=> (not res!1208679) (not e!1846832))))

(assert (=> b!2928322 (= res!1208679 call!192149)))

(assert (=> b!2928322 (= e!1846830 e!1846832)))

(declare-fun d!839108 () Bool)

(declare-fun res!1208680 () Bool)

(assert (=> d!839108 (=> res!1208680 e!1846834)))

(assert (=> d!839108 (= res!1208680 (is-ElementMatch!9032 (reg!9361 r!17423)))))

(assert (=> d!839108 (= (validRegex!3765 (reg!9361 r!17423)) e!1846834)))

(declare-fun b!2928318 () Bool)

(assert (=> b!2928318 (= e!1846835 e!1846830)))

(assert (=> b!2928318 (= c!478240 (is-Union!9032 (reg!9361 r!17423)))))

(assert (= (and d!839108 (not res!1208680)) b!2928319))

(assert (= (and b!2928319 c!478239) b!2928316))

(assert (= (and b!2928319 (not c!478239)) b!2928318))

(assert (= (and b!2928316 res!1208677) b!2928321))

(assert (= (and b!2928318 c!478240) b!2928322))

(assert (= (and b!2928318 (not c!478240)) b!2928314))

(assert (= (and b!2928322 res!1208679) b!2928320))

(assert (= (and b!2928314 (not res!1208681)) b!2928317))

(assert (= (and b!2928317 res!1208678) b!2928315))

(assert (= (or b!2928322 b!2928315) bm!192144))

(assert (= (or b!2928320 b!2928317) bm!192143))

(assert (= (or b!2928321 bm!192144) bm!192145))

(declare-fun m!3319861 () Bool)

(assert (=> b!2928316 m!3319861))

(declare-fun m!3319863 () Bool)

(assert (=> bm!192143 m!3319863))

(declare-fun m!3319865 () Bool)

(assert (=> bm!192145 m!3319865))

(assert (=> b!2928174 d!839108))

(declare-fun bs!525088 () Bool)

(declare-fun d!839110 () Bool)

(assert (= bs!525088 (and d!839110 b!2928174)))

(declare-fun lambda!108861 () Int)

(assert (=> bs!525088 (= lambda!108861 lambda!108837)))

(assert (=> bs!525088 (not (= lambda!108861 lambda!108838))))

(declare-fun bs!525089 () Bool)

(assert (= bs!525089 (and d!839110 d!839096)))

(assert (=> bs!525089 (= (= lt!1027189 (Star!9032 (reg!9361 r!17423))) (= lambda!108861 lambda!108857))))

(assert (=> bs!525089 (not (= lambda!108861 lambda!108858))))

(assert (=> d!839110 true))

(assert (=> d!839110 true))

(assert (=> d!839110 true))

(assert (=> d!839110 (= (isDefined!5140 (findConcatSeparation!983 (reg!9361 r!17423) lt!1027189 Nil!34773 s!11993 s!11993)) (Exists!1394 lambda!108861))))

(declare-fun lt!1027228 () Unit!48403)

(declare-fun choose!17291 (Regex!9032 Regex!9032 List!34897) Unit!48403)

(assert (=> d!839110 (= lt!1027228 (choose!17291 (reg!9361 r!17423) lt!1027189 s!11993))))

(assert (=> d!839110 (validRegex!3765 (reg!9361 r!17423))))

(assert (=> d!839110 (= (lemmaFindConcatSeparationEquivalentToExists!765 (reg!9361 r!17423) lt!1027189 s!11993) lt!1027228)))

(declare-fun bs!525090 () Bool)

(assert (= bs!525090 d!839110))

(assert (=> bs!525090 m!3319753))

(assert (=> bs!525090 m!3319757))

(declare-fun m!3319867 () Bool)

(assert (=> bs!525090 m!3319867))

(declare-fun m!3319869 () Bool)

(assert (=> bs!525090 m!3319869))

(assert (=> bs!525090 m!3319757))

(assert (=> bs!525090 m!3319761))

(assert (=> b!2928174 d!839110))

(declare-fun d!839112 () Bool)

(assert (=> d!839112 (= (Exists!1394 lambda!108838) (choose!17290 lambda!108838))))

(declare-fun bs!525091 () Bool)

(assert (= bs!525091 d!839112))

(declare-fun m!3319871 () Bool)

(assert (=> bs!525091 m!3319871))

(assert (=> b!2928174 d!839112))

(declare-fun d!839114 () Bool)

(assert (=> d!839114 (= (isEmpty!19016 s!11993) (is-Nil!34773 s!11993))))

(assert (=> b!2928168 d!839114))

(declare-fun b!2928327 () Bool)

(declare-fun res!1208690 () Bool)

(declare-fun e!1846842 () Bool)

(assert (=> b!2928327 (=> res!1208690 e!1846842)))

(assert (=> b!2928327 (= res!1208690 (not (is-Concat!14353 lt!1027189)))))

(declare-fun e!1846839 () Bool)

(assert (=> b!2928327 (= e!1846839 e!1846842)))

(declare-fun b!2928328 () Bool)

(declare-fun e!1846840 () Bool)

(declare-fun call!192152 () Bool)

(assert (=> b!2928328 (= e!1846840 call!192152)))

(declare-fun b!2928329 () Bool)

(declare-fun e!1846844 () Bool)

(declare-fun e!1846845 () Bool)

(assert (=> b!2928329 (= e!1846844 e!1846845)))

(declare-fun res!1208686 () Bool)

(assert (=> b!2928329 (= res!1208686 (not (nullable!2840 (reg!9361 lt!1027189))))))

(assert (=> b!2928329 (=> (not res!1208686) (not e!1846845))))

(declare-fun b!2928330 () Bool)

(assert (=> b!2928330 (= e!1846842 e!1846840)))

(declare-fun res!1208687 () Bool)

(assert (=> b!2928330 (=> (not res!1208687) (not e!1846840))))

(declare-fun call!192153 () Bool)

(assert (=> b!2928330 (= res!1208687 call!192153)))

(declare-fun b!2928332 () Bool)

(declare-fun e!1846843 () Bool)

(assert (=> b!2928332 (= e!1846843 e!1846844)))

(declare-fun c!478241 () Bool)

(assert (=> b!2928332 (= c!478241 (is-Star!9032 lt!1027189))))

(declare-fun bm!192146 () Bool)

(declare-fun c!478242 () Bool)

(assert (=> bm!192146 (= call!192153 (validRegex!3765 (ite c!478242 (regTwo!18577 lt!1027189) (regOne!18576 lt!1027189))))))

(declare-fun b!2928333 () Bool)

(declare-fun e!1846841 () Bool)

(assert (=> b!2928333 (= e!1846841 call!192153)))

(declare-fun bm!192147 () Bool)

(declare-fun call!192151 () Bool)

(assert (=> bm!192147 (= call!192152 call!192151)))

(declare-fun b!2928334 () Bool)

(assert (=> b!2928334 (= e!1846845 call!192151)))

(declare-fun bm!192148 () Bool)

(assert (=> bm!192148 (= call!192151 (validRegex!3765 (ite c!478241 (reg!9361 lt!1027189) (ite c!478242 (regOne!18577 lt!1027189) (regTwo!18576 lt!1027189)))))))

(declare-fun b!2928335 () Bool)

(declare-fun res!1208688 () Bool)

(assert (=> b!2928335 (=> (not res!1208688) (not e!1846841))))

(assert (=> b!2928335 (= res!1208688 call!192152)))

(assert (=> b!2928335 (= e!1846839 e!1846841)))

(declare-fun d!839116 () Bool)

(declare-fun res!1208689 () Bool)

(assert (=> d!839116 (=> res!1208689 e!1846843)))

(assert (=> d!839116 (= res!1208689 (is-ElementMatch!9032 lt!1027189))))

(assert (=> d!839116 (= (validRegex!3765 lt!1027189) e!1846843)))

(declare-fun b!2928331 () Bool)

(assert (=> b!2928331 (= e!1846844 e!1846839)))

(assert (=> b!2928331 (= c!478242 (is-Union!9032 lt!1027189))))

(assert (= (and d!839116 (not res!1208689)) b!2928332))

(assert (= (and b!2928332 c!478241) b!2928329))

(assert (= (and b!2928332 (not c!478241)) b!2928331))

(assert (= (and b!2928329 res!1208686) b!2928334))

(assert (= (and b!2928331 c!478242) b!2928335))

(assert (= (and b!2928331 (not c!478242)) b!2928327))

(assert (= (and b!2928335 res!1208688) b!2928333))

(assert (= (and b!2928327 (not res!1208690)) b!2928330))

(assert (= (and b!2928330 res!1208687) b!2928328))

(assert (= (or b!2928335 b!2928328) bm!192147))

(assert (= (or b!2928333 b!2928330) bm!192146))

(assert (= (or b!2928334 bm!192147) bm!192148))

(declare-fun m!3319873 () Bool)

(assert (=> b!2928329 m!3319873))

(declare-fun m!3319875 () Bool)

(assert (=> bm!192146 m!3319875))

(declare-fun m!3319877 () Bool)

(assert (=> bm!192148 m!3319877))

(assert (=> b!2928166 d!839116))

(declare-fun bs!525095 () Bool)

(declare-fun b!2928381 () Bool)

(assert (= bs!525095 (and b!2928381 b!2928174)))

(declare-fun lambda!108869 () Int)

(assert (=> bs!525095 (not (= lambda!108869 lambda!108837))))

(declare-fun bs!525096 () Bool)

(assert (= bs!525096 (and b!2928381 d!839110)))

(assert (=> bs!525096 (not (= lambda!108869 lambda!108861))))

(declare-fun bs!525097 () Bool)

(assert (= bs!525097 (and b!2928381 d!839096)))

(assert (=> bs!525097 (= (= r!17423 (Star!9032 (reg!9361 r!17423))) (= lambda!108869 lambda!108858))))

(assert (=> bs!525097 (not (= lambda!108869 lambda!108857))))

(assert (=> bs!525095 (= (= r!17423 lt!1027189) (= lambda!108869 lambda!108838))))

(assert (=> b!2928381 true))

(assert (=> b!2928381 true))

(declare-fun bs!525098 () Bool)

(declare-fun b!2928374 () Bool)

(assert (= bs!525098 (and b!2928374 b!2928174)))

(declare-fun lambda!108870 () Int)

(assert (=> bs!525098 (not (= lambda!108870 lambda!108837))))

(declare-fun bs!525099 () Bool)

(assert (= bs!525099 (and b!2928374 d!839110)))

(assert (=> bs!525099 (not (= lambda!108870 lambda!108861))))

(declare-fun bs!525100 () Bool)

(assert (= bs!525100 (and b!2928374 d!839096)))

(assert (=> bs!525100 (not (= lambda!108870 lambda!108858))))

(declare-fun bs!525101 () Bool)

(assert (= bs!525101 (and b!2928374 b!2928381)))

(assert (=> bs!525101 (not (= lambda!108870 lambda!108869))))

(assert (=> bs!525100 (not (= lambda!108870 lambda!108857))))

(assert (=> bs!525098 (not (= lambda!108870 lambda!108838))))

(assert (=> b!2928374 true))

(assert (=> b!2928374 true))

(declare-fun d!839118 () Bool)

(declare-fun c!478254 () Bool)

(assert (=> d!839118 (= c!478254 (is-EmptyExpr!9032 r!17423))))

(declare-fun e!1846869 () Bool)

(assert (=> d!839118 (= (matchRSpec!1169 r!17423 s!11993) e!1846869)))

(declare-fun b!2928372 () Bool)

(declare-fun e!1846870 () Bool)

(declare-fun e!1846866 () Bool)

(assert (=> b!2928372 (= e!1846870 e!1846866)))

(declare-fun res!1208713 () Bool)

(assert (=> b!2928372 (= res!1208713 (matchRSpec!1169 (regOne!18577 r!17423) s!11993))))

(assert (=> b!2928372 (=> res!1208713 e!1846866)))

(declare-fun b!2928373 () Bool)

(declare-fun e!1846868 () Bool)

(assert (=> b!2928373 (= e!1846868 (= s!11993 (Cons!34773 (c!478222 r!17423) Nil!34773)))))

(declare-fun e!1846871 () Bool)

(declare-fun call!192159 () Bool)

(assert (=> b!2928374 (= e!1846871 call!192159)))

(declare-fun b!2928375 () Bool)

(declare-fun c!478251 () Bool)

(assert (=> b!2928375 (= c!478251 (is-ElementMatch!9032 r!17423))))

(declare-fun e!1846867 () Bool)

(assert (=> b!2928375 (= e!1846867 e!1846868)))

(declare-fun bm!192153 () Bool)

(declare-fun c!478253 () Bool)

(assert (=> bm!192153 (= call!192159 (Exists!1394 (ite c!478253 lambda!108869 lambda!108870)))))

(declare-fun b!2928376 () Bool)

(declare-fun call!192158 () Bool)

(assert (=> b!2928376 (= e!1846869 call!192158)))

(declare-fun b!2928377 () Bool)

(assert (=> b!2928377 (= e!1846866 (matchRSpec!1169 (regTwo!18577 r!17423) s!11993))))

(declare-fun b!2928378 () Bool)

(assert (=> b!2928378 (= e!1846870 e!1846871)))

(assert (=> b!2928378 (= c!478253 (is-Star!9032 r!17423))))

(declare-fun b!2928379 () Bool)

(declare-fun c!478252 () Bool)

(assert (=> b!2928379 (= c!478252 (is-Union!9032 r!17423))))

(assert (=> b!2928379 (= e!1846868 e!1846870)))

(declare-fun b!2928380 () Bool)

(assert (=> b!2928380 (= e!1846869 e!1846867)))

(declare-fun res!1208712 () Bool)

(assert (=> b!2928380 (= res!1208712 (not (is-EmptyLang!9032 r!17423)))))

(assert (=> b!2928380 (=> (not res!1208712) (not e!1846867))))

(declare-fun e!1846872 () Bool)

(assert (=> b!2928381 (= e!1846872 call!192159)))

(declare-fun bm!192154 () Bool)

(assert (=> bm!192154 (= call!192158 (isEmpty!19016 s!11993))))

(declare-fun b!2928382 () Bool)

(declare-fun res!1208711 () Bool)

(assert (=> b!2928382 (=> res!1208711 e!1846872)))

(assert (=> b!2928382 (= res!1208711 call!192158)))

(assert (=> b!2928382 (= e!1846871 e!1846872)))

(assert (= (and d!839118 c!478254) b!2928376))

(assert (= (and d!839118 (not c!478254)) b!2928380))

(assert (= (and b!2928380 res!1208712) b!2928375))

(assert (= (and b!2928375 c!478251) b!2928373))

(assert (= (and b!2928375 (not c!478251)) b!2928379))

(assert (= (and b!2928379 c!478252) b!2928372))

(assert (= (and b!2928379 (not c!478252)) b!2928378))

(assert (= (and b!2928372 (not res!1208713)) b!2928377))

(assert (= (and b!2928378 c!478253) b!2928382))

(assert (= (and b!2928378 (not c!478253)) b!2928374))

(assert (= (and b!2928382 (not res!1208711)) b!2928381))

(assert (= (or b!2928381 b!2928374) bm!192153))

(assert (= (or b!2928376 b!2928382) bm!192154))

(declare-fun m!3319883 () Bool)

(assert (=> b!2928372 m!3319883))

(declare-fun m!3319885 () Bool)

(assert (=> bm!192153 m!3319885))

(declare-fun m!3319887 () Bool)

(assert (=> b!2928377 m!3319887))

(assert (=> bm!192154 m!3319767))

(assert (=> b!2928167 d!839118))

(declare-fun b!2928438 () Bool)

(declare-fun e!1846914 () Bool)

(declare-fun head!6512 (List!34897) C!18250)

(assert (=> b!2928438 (= e!1846914 (not (= (head!6512 s!11993) (c!478222 r!17423))))))

(declare-fun b!2928439 () Bool)

(declare-fun e!1846909 () Bool)

(assert (=> b!2928439 (= e!1846909 (= (head!6512 s!11993) (c!478222 r!17423)))))

(declare-fun b!2928440 () Bool)

(declare-fun res!1208752 () Bool)

(assert (=> b!2928440 (=> (not res!1208752) (not e!1846909))))

(declare-fun call!192171 () Bool)

(assert (=> b!2928440 (= res!1208752 (not call!192171))))

(declare-fun b!2928441 () Bool)

(declare-fun e!1846910 () Bool)

(declare-fun lt!1027234 () Bool)

(assert (=> b!2928441 (= e!1846910 (= lt!1027234 call!192171))))

(declare-fun b!2928442 () Bool)

(declare-fun e!1846913 () Bool)

(assert (=> b!2928442 (= e!1846913 (nullable!2840 r!17423))))

(declare-fun b!2928443 () Bool)

(declare-fun res!1208745 () Bool)

(assert (=> b!2928443 (=> (not res!1208745) (not e!1846909))))

(declare-fun tail!4738 (List!34897) List!34897)

(assert (=> b!2928443 (= res!1208745 (isEmpty!19016 (tail!4738 s!11993)))))

(declare-fun bm!192166 () Bool)

(assert (=> bm!192166 (= call!192171 (isEmpty!19016 s!11993))))

(declare-fun b!2928445 () Bool)

(declare-fun e!1846908 () Bool)

(assert (=> b!2928445 (= e!1846910 e!1846908)))

(declare-fun c!478269 () Bool)

(assert (=> b!2928445 (= c!478269 (is-EmptyLang!9032 r!17423))))

(declare-fun b!2928446 () Bool)

(declare-fun e!1846912 () Bool)

(declare-fun e!1846911 () Bool)

(assert (=> b!2928446 (= e!1846912 e!1846911)))

(declare-fun res!1208748 () Bool)

(assert (=> b!2928446 (=> (not res!1208748) (not e!1846911))))

(assert (=> b!2928446 (= res!1208748 (not lt!1027234))))

(declare-fun b!2928447 () Bool)

(declare-fun res!1208746 () Bool)

(assert (=> b!2928447 (=> res!1208746 e!1846912)))

(assert (=> b!2928447 (= res!1208746 e!1846909)))

(declare-fun res!1208749 () Bool)

(assert (=> b!2928447 (=> (not res!1208749) (not e!1846909))))

(assert (=> b!2928447 (= res!1208749 lt!1027234)))

(declare-fun b!2928448 () Bool)

(declare-fun res!1208751 () Bool)

(assert (=> b!2928448 (=> res!1208751 e!1846914)))

(assert (=> b!2928448 (= res!1208751 (not (isEmpty!19016 (tail!4738 s!11993))))))

(declare-fun b!2928449 () Bool)

(declare-fun res!1208750 () Bool)

(assert (=> b!2928449 (=> res!1208750 e!1846912)))

(assert (=> b!2928449 (= res!1208750 (not (is-ElementMatch!9032 r!17423)))))

(assert (=> b!2928449 (= e!1846908 e!1846912)))

(declare-fun b!2928450 () Bool)

(assert (=> b!2928450 (= e!1846908 (not lt!1027234))))

(declare-fun b!2928451 () Bool)

(assert (=> b!2928451 (= e!1846911 e!1846914)))

(declare-fun res!1208747 () Bool)

(assert (=> b!2928451 (=> res!1208747 e!1846914)))

(assert (=> b!2928451 (= res!1208747 call!192171)))

(declare-fun b!2928444 () Bool)

(declare-fun derivativeStep!2453 (Regex!9032 C!18250) Regex!9032)

(assert (=> b!2928444 (= e!1846913 (matchR!3914 (derivativeStep!2453 r!17423 (head!6512 s!11993)) (tail!4738 s!11993)))))

(declare-fun d!839122 () Bool)

(assert (=> d!839122 e!1846910))

(declare-fun c!478268 () Bool)

(assert (=> d!839122 (= c!478268 (is-EmptyExpr!9032 r!17423))))

(assert (=> d!839122 (= lt!1027234 e!1846913)))

(declare-fun c!478267 () Bool)

(assert (=> d!839122 (= c!478267 (isEmpty!19016 s!11993))))

(assert (=> d!839122 (validRegex!3765 r!17423)))

(assert (=> d!839122 (= (matchR!3914 r!17423 s!11993) lt!1027234)))

(assert (= (and d!839122 c!478267) b!2928442))

(assert (= (and d!839122 (not c!478267)) b!2928444))

(assert (= (and d!839122 c!478268) b!2928441))

(assert (= (and d!839122 (not c!478268)) b!2928445))

(assert (= (and b!2928445 c!478269) b!2928450))

(assert (= (and b!2928445 (not c!478269)) b!2928449))

(assert (= (and b!2928449 (not res!1208750)) b!2928447))

(assert (= (and b!2928447 res!1208749) b!2928440))

(assert (= (and b!2928440 res!1208752) b!2928443))

(assert (= (and b!2928443 res!1208745) b!2928439))

(assert (= (and b!2928447 (not res!1208746)) b!2928446))

(assert (= (and b!2928446 res!1208748) b!2928451))

(assert (= (and b!2928451 (not res!1208747)) b!2928448))

(assert (= (and b!2928448 (not res!1208751)) b!2928438))

(assert (= (or b!2928441 b!2928440 b!2928451) bm!192166))

(assert (=> bm!192166 m!3319767))

(declare-fun m!3319895 () Bool)

(assert (=> b!2928448 m!3319895))

(assert (=> b!2928448 m!3319895))

(declare-fun m!3319897 () Bool)

(assert (=> b!2928448 m!3319897))

(declare-fun m!3319899 () Bool)

(assert (=> b!2928444 m!3319899))

(assert (=> b!2928444 m!3319899))

(declare-fun m!3319901 () Bool)

(assert (=> b!2928444 m!3319901))

(assert (=> b!2928444 m!3319895))

(assert (=> b!2928444 m!3319901))

(assert (=> b!2928444 m!3319895))

(declare-fun m!3319903 () Bool)

(assert (=> b!2928444 m!3319903))

(declare-fun m!3319905 () Bool)

(assert (=> b!2928442 m!3319905))

(assert (=> b!2928439 m!3319899))

(assert (=> b!2928443 m!3319895))

(assert (=> b!2928443 m!3319895))

(assert (=> b!2928443 m!3319897))

(assert (=> d!839122 m!3319767))

(assert (=> d!839122 m!3319765))

(assert (=> b!2928438 m!3319899))

(assert (=> b!2928167 d!839122))

(declare-fun d!839126 () Bool)

(assert (=> d!839126 (= (matchR!3914 r!17423 s!11993) (matchRSpec!1169 r!17423 s!11993))))

(declare-fun lt!1027237 () Unit!48403)

(declare-fun choose!17292 (Regex!9032 List!34897) Unit!48403)

(assert (=> d!839126 (= lt!1027237 (choose!17292 r!17423 s!11993))))

(assert (=> d!839126 (validRegex!3765 r!17423)))

(assert (=> d!839126 (= (mainMatchTheorem!1169 r!17423 s!11993) lt!1027237)))

(declare-fun bs!525102 () Bool)

(assert (= bs!525102 d!839126))

(assert (=> bs!525102 m!3319745))

(assert (=> bs!525102 m!3319743))

(declare-fun m!3319907 () Bool)

(assert (=> bs!525102 m!3319907))

(assert (=> bs!525102 m!3319765))

(assert (=> b!2928167 d!839126))

(declare-fun b!2928462 () Bool)

(declare-fun e!1846917 () Bool)

(assert (=> b!2928462 (= e!1846917 tp_is_empty!15627)))

(declare-fun b!2928463 () Bool)

(declare-fun tp!938766 () Bool)

(declare-fun tp!938768 () Bool)

(assert (=> b!2928463 (= e!1846917 (and tp!938766 tp!938768))))

(declare-fun b!2928465 () Bool)

(declare-fun tp!938764 () Bool)

(declare-fun tp!938767 () Bool)

(assert (=> b!2928465 (= e!1846917 (and tp!938764 tp!938767))))

(declare-fun b!2928464 () Bool)

(declare-fun tp!938765 () Bool)

(assert (=> b!2928464 (= e!1846917 tp!938765)))

(assert (=> b!2928170 (= tp!938730 e!1846917)))

(assert (= (and b!2928170 (is-ElementMatch!9032 (regOne!18577 r!17423))) b!2928462))

(assert (= (and b!2928170 (is-Concat!14353 (regOne!18577 r!17423))) b!2928463))

(assert (= (and b!2928170 (is-Star!9032 (regOne!18577 r!17423))) b!2928464))

(assert (= (and b!2928170 (is-Union!9032 (regOne!18577 r!17423))) b!2928465))

(declare-fun b!2928466 () Bool)

(declare-fun e!1846918 () Bool)

(assert (=> b!2928466 (= e!1846918 tp_is_empty!15627)))

(declare-fun b!2928467 () Bool)

(declare-fun tp!938771 () Bool)

(declare-fun tp!938773 () Bool)

(assert (=> b!2928467 (= e!1846918 (and tp!938771 tp!938773))))

(declare-fun b!2928469 () Bool)

(declare-fun tp!938769 () Bool)

(declare-fun tp!938772 () Bool)

(assert (=> b!2928469 (= e!1846918 (and tp!938769 tp!938772))))

(declare-fun b!2928468 () Bool)

(declare-fun tp!938770 () Bool)

(assert (=> b!2928468 (= e!1846918 tp!938770)))

(assert (=> b!2928170 (= tp!938732 e!1846918)))

(assert (= (and b!2928170 (is-ElementMatch!9032 (regTwo!18577 r!17423))) b!2928466))

(assert (= (and b!2928170 (is-Concat!14353 (regTwo!18577 r!17423))) b!2928467))

(assert (= (and b!2928170 (is-Star!9032 (regTwo!18577 r!17423))) b!2928468))

(assert (= (and b!2928170 (is-Union!9032 (regTwo!18577 r!17423))) b!2928469))

(declare-fun b!2928474 () Bool)

(declare-fun e!1846921 () Bool)

(declare-fun tp!938776 () Bool)

(assert (=> b!2928474 (= e!1846921 (and tp_is_empty!15627 tp!938776))))

(assert (=> b!2928169 (= tp!938731 e!1846921)))

(assert (= (and b!2928169 (is-Cons!34773 (t!233962 s!11993))) b!2928474))

(declare-fun b!2928475 () Bool)

(declare-fun e!1846922 () Bool)

(assert (=> b!2928475 (= e!1846922 tp_is_empty!15627)))

(declare-fun b!2928476 () Bool)

(declare-fun tp!938779 () Bool)

(declare-fun tp!938781 () Bool)

(assert (=> b!2928476 (= e!1846922 (and tp!938779 tp!938781))))

(declare-fun b!2928478 () Bool)

(declare-fun tp!938777 () Bool)

(declare-fun tp!938780 () Bool)

(assert (=> b!2928478 (= e!1846922 (and tp!938777 tp!938780))))

(declare-fun b!2928477 () Bool)

(declare-fun tp!938778 () Bool)

(assert (=> b!2928477 (= e!1846922 tp!938778)))

(assert (=> b!2928173 (= tp!938733 e!1846922)))

(assert (= (and b!2928173 (is-ElementMatch!9032 (regOne!18576 r!17423))) b!2928475))

(assert (= (and b!2928173 (is-Concat!14353 (regOne!18576 r!17423))) b!2928476))

(assert (= (and b!2928173 (is-Star!9032 (regOne!18576 r!17423))) b!2928477))

(assert (= (and b!2928173 (is-Union!9032 (regOne!18576 r!17423))) b!2928478))

(declare-fun b!2928479 () Bool)

(declare-fun e!1846923 () Bool)

(assert (=> b!2928479 (= e!1846923 tp_is_empty!15627)))

(declare-fun b!2928480 () Bool)

(declare-fun tp!938784 () Bool)

(declare-fun tp!938786 () Bool)

(assert (=> b!2928480 (= e!1846923 (and tp!938784 tp!938786))))

(declare-fun b!2928482 () Bool)

(declare-fun tp!938782 () Bool)

(declare-fun tp!938785 () Bool)

(assert (=> b!2928482 (= e!1846923 (and tp!938782 tp!938785))))

(declare-fun b!2928481 () Bool)

(declare-fun tp!938783 () Bool)

(assert (=> b!2928481 (= e!1846923 tp!938783)))

(assert (=> b!2928173 (= tp!938735 e!1846923)))

(assert (= (and b!2928173 (is-ElementMatch!9032 (regTwo!18576 r!17423))) b!2928479))

(assert (= (and b!2928173 (is-Concat!14353 (regTwo!18576 r!17423))) b!2928480))

(assert (= (and b!2928173 (is-Star!9032 (regTwo!18576 r!17423))) b!2928481))

(assert (= (and b!2928173 (is-Union!9032 (regTwo!18576 r!17423))) b!2928482))

(declare-fun b!2928483 () Bool)

(declare-fun e!1846924 () Bool)

(assert (=> b!2928483 (= e!1846924 tp_is_empty!15627)))

(declare-fun b!2928484 () Bool)

(declare-fun tp!938789 () Bool)

(declare-fun tp!938791 () Bool)

(assert (=> b!2928484 (= e!1846924 (and tp!938789 tp!938791))))

(declare-fun b!2928486 () Bool)

(declare-fun tp!938787 () Bool)

(declare-fun tp!938790 () Bool)

(assert (=> b!2928486 (= e!1846924 (and tp!938787 tp!938790))))

(declare-fun b!2928485 () Bool)

(declare-fun tp!938788 () Bool)

(assert (=> b!2928485 (= e!1846924 tp!938788)))

(assert (=> b!2928172 (= tp!938734 e!1846924)))

(assert (= (and b!2928172 (is-ElementMatch!9032 (reg!9361 r!17423))) b!2928483))

(assert (= (and b!2928172 (is-Concat!14353 (reg!9361 r!17423))) b!2928484))

(assert (= (and b!2928172 (is-Star!9032 (reg!9361 r!17423))) b!2928485))

(assert (= (and b!2928172 (is-Union!9032 (reg!9361 r!17423))) b!2928486))

(push 1)

(assert (not b!2928291))

(assert (not b!2928438))

(assert (not b!2928329))

(assert (not d!839110))

(assert (not d!839094))

(assert (not d!839112))

(assert (not bm!192140))

(assert (not b!2928480))

(assert (not b!2928468))

(assert (not b!2928296))

(assert (not bm!192166))

(assert (not b!2928248))

(assert (not b!2928484))

(assert (not b!2928444))

(assert (not b!2928292))

(assert (not bm!192142))

(assert (not b!2928476))

(assert (not b!2928465))

(assert (not b!2928295))

(assert (not b!2928482))

(assert (not b!2928464))

(assert (not bm!192143))

(assert tp_is_empty!15627)

(assert (not b!2928474))

(assert (not d!839126))

(assert (not b!2928477))

(assert (not b!2928316))

(assert (not bm!192154))

(assert (not b!2928469))

(assert (not d!839102))

(assert (not b!2928478))

(assert (not bm!192148))

(assert (not b!2928293))

(assert (not b!2928372))

(assert (not bm!192153))

(assert (not b!2928264))

(assert (not d!839122))

(assert (not bm!192145))

(assert (not b!2928481))

(assert (not b!2928290))

(assert (not b!2928467))

(assert (not b!2928439))

(assert (not b!2928443))

(assert (not d!839100))

(assert (not b!2928442))

(assert (not b!2928448))

(assert (not b!2928463))

(assert (not d!839096))

(assert (not b!2928485))

(assert (not bm!192146))

(assert (not b!2928377))

(assert (not d!839088))

(assert (not b!2928265))

(assert (not b!2928486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

