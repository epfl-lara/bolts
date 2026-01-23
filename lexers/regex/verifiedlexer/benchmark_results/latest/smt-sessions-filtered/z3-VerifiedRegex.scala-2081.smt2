; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105724 () Bool)

(assert start!105724)

(declare-fun res!537635 () Bool)

(declare-fun e!765094 () Bool)

(assert (=> start!105724 (=> (not res!537635) (not e!765094))))

(declare-datatypes ((B!1281 0))(
  ( (B!1282 (val!3826 Int)) )
))
(declare-datatypes ((List!12010 0))(
  ( (Nil!11986) (Cons!11986 (h!17387 B!1281) (t!112216 List!12010)) )
))
(declare-fun l!2965 () List!12010)

(declare-fun i!770 () Int)

(get-info :version)

(assert (=> start!105724 (= res!537635 (and (not ((_ is Nil!11986) l!2965)) (<= i!770 0)))))

(assert (=> start!105724 e!765094))

(declare-fun e!765095 () Bool)

(assert (=> start!105724 e!765095))

(assert (=> start!105724 true))

(declare-fun b!1190076 () Bool)

(declare-fun subseq!345 (List!12010 List!12010) Bool)

(declare-fun drop!569 (List!12010 Int) List!12010)

(assert (=> b!1190076 (= e!765094 (not (subseq!345 (drop!569 l!2965 i!770) l!2965)))))

(assert (=> b!1190076 (subseq!345 l!2965 l!2965)))

(declare-datatypes ((Unit!18404 0))(
  ( (Unit!18405) )
))
(declare-fun lt!409132 () Unit!18404)

(declare-fun lemmaSubseqRefl!41 (List!12010) Unit!18404)

(assert (=> b!1190076 (= lt!409132 (lemmaSubseqRefl!41 l!2965))))

(declare-fun b!1190077 () Bool)

(declare-fun tp_is_empty!5871 () Bool)

(declare-fun tp!339664 () Bool)

(assert (=> b!1190077 (= e!765095 (and tp_is_empty!5871 tp!339664))))

(assert (= (and start!105724 res!537635) b!1190076))

(assert (= (and start!105724 ((_ is Cons!11986) l!2965)) b!1190077))

(declare-fun m!1365269 () Bool)

(assert (=> b!1190076 m!1365269))

(assert (=> b!1190076 m!1365269))

(declare-fun m!1365271 () Bool)

(assert (=> b!1190076 m!1365271))

(declare-fun m!1365273 () Bool)

(assert (=> b!1190076 m!1365273))

(declare-fun m!1365275 () Bool)

(assert (=> b!1190076 m!1365275))

(check-sat (not b!1190076) (not b!1190077) tp_is_empty!5871)
(check-sat)
(get-model)

(declare-fun b!1190101 () Bool)

(declare-fun e!765117 () Bool)

(assert (=> b!1190101 (= e!765117 (subseq!345 (drop!569 l!2965 i!770) (t!112216 l!2965)))))

(declare-fun b!1190100 () Bool)

(declare-fun e!765119 () Bool)

(assert (=> b!1190100 (= e!765119 (subseq!345 (t!112216 (drop!569 l!2965 i!770)) (t!112216 l!2965)))))

(declare-fun b!1190099 () Bool)

(declare-fun e!765116 () Bool)

(assert (=> b!1190099 (= e!765116 e!765117)))

(declare-fun res!537656 () Bool)

(assert (=> b!1190099 (=> res!537656 e!765117)))

(assert (=> b!1190099 (= res!537656 e!765119)))

(declare-fun res!537659 () Bool)

(assert (=> b!1190099 (=> (not res!537659) (not e!765119))))

(assert (=> b!1190099 (= res!537659 (= (h!17387 (drop!569 l!2965 i!770)) (h!17387 l!2965)))))

(declare-fun b!1190098 () Bool)

(declare-fun e!765118 () Bool)

(assert (=> b!1190098 (= e!765118 e!765116)))

(declare-fun res!537658 () Bool)

(assert (=> b!1190098 (=> (not res!537658) (not e!765116))))

(assert (=> b!1190098 (= res!537658 ((_ is Cons!11986) l!2965))))

(declare-fun d!340138 () Bool)

(declare-fun res!537657 () Bool)

(assert (=> d!340138 (=> res!537657 e!765118)))

(assert (=> d!340138 (= res!537657 ((_ is Nil!11986) (drop!569 l!2965 i!770)))))

(assert (=> d!340138 (= (subseq!345 (drop!569 l!2965 i!770) l!2965) e!765118)))

(assert (= (and d!340138 (not res!537657)) b!1190098))

(assert (= (and b!1190098 res!537658) b!1190099))

(assert (= (and b!1190099 res!537659) b!1190100))

(assert (= (and b!1190099 (not res!537656)) b!1190101))

(assert (=> b!1190101 m!1365269))

(declare-fun m!1365281 () Bool)

(assert (=> b!1190101 m!1365281))

(declare-fun m!1365283 () Bool)

(assert (=> b!1190100 m!1365283))

(assert (=> b!1190076 d!340138))

(declare-fun b!1190152 () Bool)

(declare-fun e!765152 () List!12010)

(assert (=> b!1190152 (= e!765152 l!2965)))

(declare-fun b!1190153 () Bool)

(assert (=> b!1190153 (= e!765152 (drop!569 (t!112216 l!2965) (- i!770 1)))))

(declare-fun b!1190154 () Bool)

(declare-fun e!765150 () List!12010)

(assert (=> b!1190154 (= e!765150 e!765152)))

(declare-fun c!197543 () Bool)

(assert (=> b!1190154 (= c!197543 (<= i!770 0))))

(declare-fun d!340142 () Bool)

(declare-fun e!765149 () Bool)

(assert (=> d!340142 e!765149))

(declare-fun res!537669 () Bool)

(assert (=> d!340142 (=> (not res!537669) (not e!765149))))

(declare-fun lt!409138 () List!12010)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1655 (List!12010) (InoxSet B!1281))

(assert (=> d!340142 (= res!537669 (= ((_ map implies) (content!1655 lt!409138) (content!1655 l!2965)) ((as const (InoxSet B!1281)) true)))))

(assert (=> d!340142 (= lt!409138 e!765150)))

(declare-fun c!197542 () Bool)

(assert (=> d!340142 (= c!197542 ((_ is Nil!11986) l!2965))))

(assert (=> d!340142 (= (drop!569 l!2965 i!770) lt!409138)))

(declare-fun b!1190151 () Bool)

(declare-fun e!765151 () Int)

(declare-fun e!765153 () Int)

(assert (=> b!1190151 (= e!765151 e!765153)))

(declare-fun c!197541 () Bool)

(declare-fun call!82674 () Int)

(assert (=> b!1190151 (= c!197541 (>= i!770 call!82674))))

(declare-fun b!1190155 () Bool)

(assert (=> b!1190155 (= e!765153 0)))

(declare-fun b!1190156 () Bool)

(assert (=> b!1190156 (= e!765153 (- call!82674 i!770))))

(declare-fun b!1190157 () Bool)

(declare-fun size!9449 (List!12010) Int)

(assert (=> b!1190157 (= e!765149 (= (size!9449 lt!409138) e!765151))))

(declare-fun c!197544 () Bool)

(assert (=> b!1190157 (= c!197544 (<= i!770 0))))

(declare-fun b!1190158 () Bool)

(assert (=> b!1190158 (= e!765150 Nil!11986)))

(declare-fun bm!82669 () Bool)

(assert (=> bm!82669 (= call!82674 (size!9449 l!2965))))

(declare-fun b!1190159 () Bool)

(assert (=> b!1190159 (= e!765151 call!82674)))

(assert (= (and d!340142 c!197542) b!1190158))

(assert (= (and d!340142 (not c!197542)) b!1190154))

(assert (= (and b!1190154 c!197543) b!1190152))

(assert (= (and b!1190154 (not c!197543)) b!1190153))

(assert (= (and d!340142 res!537669) b!1190157))

(assert (= (and b!1190157 c!197544) b!1190159))

(assert (= (and b!1190157 (not c!197544)) b!1190151))

(assert (= (and b!1190151 c!197541) b!1190155))

(assert (= (and b!1190151 (not c!197541)) b!1190156))

(assert (= (or b!1190159 b!1190151 b!1190156) bm!82669))

(declare-fun m!1365299 () Bool)

(assert (=> b!1190153 m!1365299))

(declare-fun m!1365301 () Bool)

(assert (=> d!340142 m!1365301))

(declare-fun m!1365303 () Bool)

(assert (=> d!340142 m!1365303))

(declare-fun m!1365305 () Bool)

(assert (=> b!1190157 m!1365305))

(declare-fun m!1365307 () Bool)

(assert (=> bm!82669 m!1365307))

(assert (=> b!1190076 d!340142))

(declare-fun b!1190163 () Bool)

(declare-fun e!765155 () Bool)

(assert (=> b!1190163 (= e!765155 (subseq!345 l!2965 (t!112216 l!2965)))))

(declare-fun b!1190162 () Bool)

(declare-fun e!765157 () Bool)

(assert (=> b!1190162 (= e!765157 (subseq!345 (t!112216 l!2965) (t!112216 l!2965)))))

(declare-fun b!1190161 () Bool)

(declare-fun e!765154 () Bool)

(assert (=> b!1190161 (= e!765154 e!765155)))

(declare-fun res!537670 () Bool)

(assert (=> b!1190161 (=> res!537670 e!765155)))

(assert (=> b!1190161 (= res!537670 e!765157)))

(declare-fun res!537673 () Bool)

(assert (=> b!1190161 (=> (not res!537673) (not e!765157))))

(assert (=> b!1190161 (= res!537673 (= (h!17387 l!2965) (h!17387 l!2965)))))

(declare-fun b!1190160 () Bool)

(declare-fun e!765156 () Bool)

(assert (=> b!1190160 (= e!765156 e!765154)))

(declare-fun res!537672 () Bool)

(assert (=> b!1190160 (=> (not res!537672) (not e!765154))))

(assert (=> b!1190160 (= res!537672 ((_ is Cons!11986) l!2965))))

(declare-fun d!340148 () Bool)

(declare-fun res!537671 () Bool)

(assert (=> d!340148 (=> res!537671 e!765156)))

(assert (=> d!340148 (= res!537671 ((_ is Nil!11986) l!2965))))

(assert (=> d!340148 (= (subseq!345 l!2965 l!2965) e!765156)))

(assert (= (and d!340148 (not res!537671)) b!1190160))

(assert (= (and b!1190160 res!537672) b!1190161))

(assert (= (and b!1190161 res!537673) b!1190162))

(assert (= (and b!1190161 (not res!537670)) b!1190163))

(declare-fun m!1365309 () Bool)

(assert (=> b!1190163 m!1365309))

(declare-fun m!1365311 () Bool)

(assert (=> b!1190162 m!1365311))

(assert (=> b!1190076 d!340148))

(declare-fun d!340150 () Bool)

(assert (=> d!340150 (subseq!345 l!2965 l!2965)))

(declare-fun lt!409144 () Unit!18404)

(declare-fun choose!7693 (List!12010) Unit!18404)

(assert (=> d!340150 (= lt!409144 (choose!7693 l!2965))))

(assert (=> d!340150 (= (lemmaSubseqRefl!41 l!2965) lt!409144)))

(declare-fun bs!287845 () Bool)

(assert (= bs!287845 d!340150))

(assert (=> bs!287845 m!1365273))

(declare-fun m!1365315 () Bool)

(assert (=> bs!287845 m!1365315))

(assert (=> b!1190076 d!340150))

(declare-fun b!1190173 () Bool)

(declare-fun e!765163 () Bool)

(declare-fun tp!339670 () Bool)

(assert (=> b!1190173 (= e!765163 (and tp_is_empty!5871 tp!339670))))

(assert (=> b!1190077 (= tp!339664 e!765163)))

(assert (= (and b!1190077 ((_ is Cons!11986) (t!112216 l!2965))) b!1190173))

(check-sat tp_is_empty!5871 (not bm!82669) (not b!1190173) (not b!1190162) (not b!1190100) (not b!1190163) (not b!1190153) (not b!1190101) (not d!340142) (not b!1190157) (not d!340150))
(check-sat)
