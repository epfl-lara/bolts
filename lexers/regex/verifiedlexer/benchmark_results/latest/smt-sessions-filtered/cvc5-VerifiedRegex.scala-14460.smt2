; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!752930 () Bool)

(assert start!752930)

(declare-fun b!8002987 () Bool)

(declare-fun e!4714340 () Bool)

(declare-fun tp_is_empty!53743 () Bool)

(assert (=> b!8002987 (= e!4714340 tp_is_empty!53743)))

(declare-fun b!8002989 () Bool)

(declare-fun e!4714341 () Bool)

(declare-fun lt!2713836 () Int)

(declare-fun lt!2713837 () Int)

(assert (=> b!8002989 (= e!4714341 (>= lt!2713836 lt!2713837))))

(declare-fun b!8002990 () Bool)

(declare-fun e!4714347 () Bool)

(declare-fun tp!2394142 () Bool)

(assert (=> b!8002990 (= e!4714347 (and tp_is_empty!53743 tp!2394142))))

(declare-fun b!8002991 () Bool)

(declare-fun e!4714343 () Bool)

(declare-fun tp!2394141 () Bool)

(assert (=> b!8002991 (= e!4714343 (and tp_is_empty!53743 tp!2394141))))

(declare-fun b!8002992 () Bool)

(declare-fun e!4714344 () Bool)

(declare-fun e!4714346 () Bool)

(assert (=> b!8002992 (= e!4714344 e!4714346)))

(declare-fun res!3164609 () Bool)

(assert (=> b!8002992 (=> (not res!3164609) (not e!4714346))))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8002992 (= res!3164609 (= totalInputSize!629 lt!2713836))))

(declare-datatypes ((C!43538 0))(
  ( (C!43539 (val!32317 Int)) )
))
(declare-datatypes ((List!74829 0))(
  ( (Nil!74705) (Cons!74705 (h!81153 C!43538) (t!390572 List!74829)) )
))
(declare-fun totalInput!1349 () List!74829)

(declare-fun size!43502 (List!74829) Int)

(assert (=> b!8002992 (= lt!2713836 (size!43502 totalInput!1349))))

(declare-fun b!8002993 () Bool)

(declare-fun e!4714342 () Bool)

(declare-fun e!4714345 () Bool)

(assert (=> b!8002993 (= e!4714342 e!4714345)))

(declare-fun res!3164608 () Bool)

(assert (=> b!8002993 (=> (not res!3164608) (not e!4714345))))

(declare-fun lt!2713838 () List!74829)

(assert (=> b!8002993 (= res!3164608 (= lt!2713838 totalInput!1349))))

(declare-fun testedP!353 () List!74829)

(declare-fun testedSuffix!271 () List!74829)

(declare-fun ++!18426 (List!74829 List!74829) List!74829)

(assert (=> b!8002993 (= lt!2713838 (++!18426 testedP!353 testedSuffix!271))))

(declare-fun b!8002994 () Bool)

(declare-fun tp!2394140 () Bool)

(declare-fun tp!2394144 () Bool)

(assert (=> b!8002994 (= e!4714340 (and tp!2394140 tp!2394144))))

(declare-fun res!3164606 () Bool)

(assert (=> start!752930 (=> (not res!3164606) (not e!4714342))))

(declare-datatypes ((Regex!21600 0))(
  ( (ElementMatch!21600 (c!1469367 C!43538)) (Concat!30599 (regOne!43712 Regex!21600) (regTwo!43712 Regex!21600)) (EmptyExpr!21600) (Star!21600 (reg!21929 Regex!21600)) (EmptyLang!21600) (Union!21600 (regOne!43713 Regex!21600) (regTwo!43713 Regex!21600)) )
))
(declare-fun r!15422 () Regex!21600)

(declare-fun validRegex!11904 (Regex!21600) Bool)

(assert (=> start!752930 (= res!3164606 (validRegex!11904 r!15422))))

(assert (=> start!752930 e!4714342))

(assert (=> start!752930 e!4714347))

(assert (=> start!752930 true))

(assert (=> start!752930 e!4714343))

(assert (=> start!752930 e!4714340))

(declare-fun e!4714348 () Bool)

(assert (=> start!752930 e!4714348))

(declare-fun b!8002988 () Bool)

(assert (=> b!8002988 (= e!4714346 (not e!4714341))))

(declare-fun res!3164605 () Bool)

(assert (=> b!8002988 (=> res!3164605 e!4714341)))

(declare-fun isPrefix!6654 (List!74829 List!74829) Bool)

(assert (=> b!8002988 (= res!3164605 (not (isPrefix!6654 testedP!353 totalInput!1349)))))

(assert (=> b!8002988 (isPrefix!6654 testedP!353 lt!2713838)))

(declare-datatypes ((Unit!170594 0))(
  ( (Unit!170595) )
))
(declare-fun lt!2713839 () Unit!170594)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3885 (List!74829 List!74829) Unit!170594)

(assert (=> b!8002988 (= lt!2713839 (lemmaConcatTwoListThenFirstIsPrefix!3885 testedP!353 testedSuffix!271))))

(declare-fun b!8002995 () Bool)

(declare-fun tp!2394145 () Bool)

(declare-fun tp!2394146 () Bool)

(assert (=> b!8002995 (= e!4714340 (and tp!2394145 tp!2394146))))

(declare-fun b!8002996 () Bool)

(assert (=> b!8002996 (= e!4714345 e!4714344)))

(declare-fun res!3164607 () Bool)

(assert (=> b!8002996 (=> (not res!3164607) (not e!4714344))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8002996 (= res!3164607 (= testedPSize!271 lt!2713837))))

(assert (=> b!8002996 (= lt!2713837 (size!43502 testedP!353))))

(declare-fun b!8002997 () Bool)

(declare-fun tp!2394143 () Bool)

(assert (=> b!8002997 (= e!4714348 (and tp_is_empty!53743 tp!2394143))))

(declare-fun b!8002998 () Bool)

(declare-fun tp!2394139 () Bool)

(assert (=> b!8002998 (= e!4714340 tp!2394139)))

(assert (= (and start!752930 res!3164606) b!8002993))

(assert (= (and b!8002993 res!3164608) b!8002996))

(assert (= (and b!8002996 res!3164607) b!8002992))

(assert (= (and b!8002992 res!3164609) b!8002988))

(assert (= (and b!8002988 (not res!3164605)) b!8002989))

(assert (= (and start!752930 (is-Cons!74705 totalInput!1349)) b!8002990))

(assert (= (and start!752930 (is-Cons!74705 testedSuffix!271)) b!8002991))

(assert (= (and start!752930 (is-ElementMatch!21600 r!15422)) b!8002987))

(assert (= (and start!752930 (is-Concat!30599 r!15422)) b!8002994))

(assert (= (and start!752930 (is-Star!21600 r!15422)) b!8002998))

(assert (= (and start!752930 (is-Union!21600 r!15422)) b!8002995))

(assert (= (and start!752930 (is-Cons!74705 testedP!353)) b!8002997))

(declare-fun m!8369266 () Bool)

(assert (=> b!8002996 m!8369266))

(declare-fun m!8369268 () Bool)

(assert (=> b!8002992 m!8369268))

(declare-fun m!8369270 () Bool)

(assert (=> b!8002988 m!8369270))

(declare-fun m!8369272 () Bool)

(assert (=> b!8002988 m!8369272))

(declare-fun m!8369274 () Bool)

(assert (=> b!8002988 m!8369274))

(declare-fun m!8369276 () Bool)

(assert (=> b!8002993 m!8369276))

(declare-fun m!8369278 () Bool)

(assert (=> start!752930 m!8369278))

(push 1)

(assert (not b!8002993))

(assert (not b!8002988))

(assert (not b!8002995))

(assert (not b!8002997))

(assert (not b!8002990))

(assert (not b!8002996))

(assert (not b!8002994))

(assert (not b!8002991))

(assert tp_is_empty!53743)

(assert (not start!752930))

(assert (not b!8002992))

(assert (not b!8002998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2386957 () Bool)

(declare-fun lt!2713854 () Int)

(assert (=> d!2386957 (>= lt!2713854 0)))

(declare-fun e!4714378 () Int)

(assert (=> d!2386957 (= lt!2713854 e!4714378)))

(declare-fun c!1469371 () Bool)

(assert (=> d!2386957 (= c!1469371 (is-Nil!74705 testedP!353))))

(assert (=> d!2386957 (= (size!43502 testedP!353) lt!2713854)))

(declare-fun b!8003039 () Bool)

(assert (=> b!8003039 (= e!4714378 0)))

(declare-fun b!8003040 () Bool)

(assert (=> b!8003040 (= e!4714378 (+ 1 (size!43502 (t!390572 testedP!353))))))

(assert (= (and d!2386957 c!1469371) b!8003039))

(assert (= (and d!2386957 (not c!1469371)) b!8003040))

(declare-fun m!8369294 () Bool)

(assert (=> b!8003040 m!8369294))

(assert (=> b!8002996 d!2386957))

(declare-fun d!2386961 () Bool)

(declare-fun lt!2713855 () Int)

(assert (=> d!2386961 (>= lt!2713855 0)))

(declare-fun e!4714379 () Int)

(assert (=> d!2386961 (= lt!2713855 e!4714379)))

(declare-fun c!1469372 () Bool)

(assert (=> d!2386961 (= c!1469372 (is-Nil!74705 totalInput!1349))))

(assert (=> d!2386961 (= (size!43502 totalInput!1349) lt!2713855)))

(declare-fun b!8003041 () Bool)

(assert (=> b!8003041 (= e!4714379 0)))

(declare-fun b!8003042 () Bool)

(assert (=> b!8003042 (= e!4714379 (+ 1 (size!43502 (t!390572 totalInput!1349))))))

(assert (= (and d!2386961 c!1469372) b!8003041))

(assert (= (and d!2386961 (not c!1469372)) b!8003042))

(declare-fun m!8369296 () Bool)

(assert (=> b!8003042 m!8369296))

(assert (=> b!8002992 d!2386961))

(declare-fun b!8003059 () Bool)

(declare-fun e!4714393 () Bool)

(declare-fun e!4714392 () Bool)

(assert (=> b!8003059 (= e!4714393 e!4714392)))

(declare-fun res!3164643 () Bool)

(assert (=> b!8003059 (=> (not res!3164643) (not e!4714392))))

(assert (=> b!8003059 (= res!3164643 (not (is-Nil!74705 totalInput!1349)))))

(declare-fun d!2386963 () Bool)

(declare-fun e!4714394 () Bool)

(assert (=> d!2386963 e!4714394))

(declare-fun res!3164644 () Bool)

(assert (=> d!2386963 (=> res!3164644 e!4714394)))

(declare-fun lt!2713860 () Bool)

(assert (=> d!2386963 (= res!3164644 (not lt!2713860))))

(assert (=> d!2386963 (= lt!2713860 e!4714393)))

(declare-fun res!3164641 () Bool)

(assert (=> d!2386963 (=> res!3164641 e!4714393)))

(assert (=> d!2386963 (= res!3164641 (is-Nil!74705 testedP!353))))

(assert (=> d!2386963 (= (isPrefix!6654 testedP!353 totalInput!1349) lt!2713860)))

(declare-fun b!8003060 () Bool)

(declare-fun res!3164642 () Bool)

(assert (=> b!8003060 (=> (not res!3164642) (not e!4714392))))

(declare-fun head!16306 (List!74829) C!43538)

(assert (=> b!8003060 (= res!3164642 (= (head!16306 testedP!353) (head!16306 totalInput!1349)))))

(declare-fun b!8003062 () Bool)

(assert (=> b!8003062 (= e!4714394 (>= (size!43502 totalInput!1349) (size!43502 testedP!353)))))

(declare-fun b!8003061 () Bool)

(declare-fun tail!15833 (List!74829) List!74829)

(assert (=> b!8003061 (= e!4714392 (isPrefix!6654 (tail!15833 testedP!353) (tail!15833 totalInput!1349)))))

(assert (= (and d!2386963 (not res!3164641)) b!8003059))

(assert (= (and b!8003059 res!3164643) b!8003060))

(assert (= (and b!8003060 res!3164642) b!8003061))

(assert (= (and d!2386963 (not res!3164644)) b!8003062))

(declare-fun m!8369298 () Bool)

(assert (=> b!8003060 m!8369298))

(declare-fun m!8369300 () Bool)

(assert (=> b!8003060 m!8369300))

(assert (=> b!8003062 m!8369268))

(assert (=> b!8003062 m!8369266))

(declare-fun m!8369302 () Bool)

(assert (=> b!8003061 m!8369302))

(declare-fun m!8369304 () Bool)

(assert (=> b!8003061 m!8369304))

(assert (=> b!8003061 m!8369302))

(assert (=> b!8003061 m!8369304))

(declare-fun m!8369306 () Bool)

(assert (=> b!8003061 m!8369306))

(assert (=> b!8002988 d!2386963))

(declare-fun b!8003063 () Bool)

(declare-fun e!4714396 () Bool)

(declare-fun e!4714395 () Bool)

(assert (=> b!8003063 (= e!4714396 e!4714395)))

(declare-fun res!3164647 () Bool)

(assert (=> b!8003063 (=> (not res!3164647) (not e!4714395))))

(assert (=> b!8003063 (= res!3164647 (not (is-Nil!74705 lt!2713838)))))

(declare-fun d!2386965 () Bool)

(declare-fun e!4714397 () Bool)

(assert (=> d!2386965 e!4714397))

(declare-fun res!3164648 () Bool)

(assert (=> d!2386965 (=> res!3164648 e!4714397)))

(declare-fun lt!2713861 () Bool)

(assert (=> d!2386965 (= res!3164648 (not lt!2713861))))

(assert (=> d!2386965 (= lt!2713861 e!4714396)))

(declare-fun res!3164645 () Bool)

(assert (=> d!2386965 (=> res!3164645 e!4714396)))

(assert (=> d!2386965 (= res!3164645 (is-Nil!74705 testedP!353))))

(assert (=> d!2386965 (= (isPrefix!6654 testedP!353 lt!2713838) lt!2713861)))

(declare-fun b!8003064 () Bool)

(declare-fun res!3164646 () Bool)

(assert (=> b!8003064 (=> (not res!3164646) (not e!4714395))))

(assert (=> b!8003064 (= res!3164646 (= (head!16306 testedP!353) (head!16306 lt!2713838)))))

(declare-fun b!8003066 () Bool)

(assert (=> b!8003066 (= e!4714397 (>= (size!43502 lt!2713838) (size!43502 testedP!353)))))

(declare-fun b!8003065 () Bool)

(assert (=> b!8003065 (= e!4714395 (isPrefix!6654 (tail!15833 testedP!353) (tail!15833 lt!2713838)))))

(assert (= (and d!2386965 (not res!3164645)) b!8003063))

(assert (= (and b!8003063 res!3164647) b!8003064))

(assert (= (and b!8003064 res!3164646) b!8003065))

(assert (= (and d!2386965 (not res!3164648)) b!8003066))

(assert (=> b!8003064 m!8369298))

(declare-fun m!8369308 () Bool)

(assert (=> b!8003064 m!8369308))

(declare-fun m!8369310 () Bool)

(assert (=> b!8003066 m!8369310))

(assert (=> b!8003066 m!8369266))

(assert (=> b!8003065 m!8369302))

(declare-fun m!8369312 () Bool)

(assert (=> b!8003065 m!8369312))

(assert (=> b!8003065 m!8369302))

(assert (=> b!8003065 m!8369312))

(declare-fun m!8369314 () Bool)

(assert (=> b!8003065 m!8369314))

(assert (=> b!8002988 d!2386965))

(declare-fun d!2386967 () Bool)

(assert (=> d!2386967 (isPrefix!6654 testedP!353 (++!18426 testedP!353 testedSuffix!271))))

(declare-fun lt!2713864 () Unit!170594)

(declare-fun choose!60209 (List!74829 List!74829) Unit!170594)

(assert (=> d!2386967 (= lt!2713864 (choose!60209 testedP!353 testedSuffix!271))))

(assert (=> d!2386967 (= (lemmaConcatTwoListThenFirstIsPrefix!3885 testedP!353 testedSuffix!271) lt!2713864)))

(declare-fun bs!1970585 () Bool)

(assert (= bs!1970585 d!2386967))

(assert (=> bs!1970585 m!8369276))

(assert (=> bs!1970585 m!8369276))

(declare-fun m!8369316 () Bool)

(assert (=> bs!1970585 m!8369316))

(declare-fun m!8369318 () Bool)

(assert (=> bs!1970585 m!8369318))

(assert (=> b!8002988 d!2386967))

(declare-fun b!8003084 () Bool)

(declare-fun e!4714408 () List!74829)

(assert (=> b!8003084 (= e!4714408 (Cons!74705 (h!81153 testedP!353) (++!18426 (t!390572 testedP!353) testedSuffix!271)))))

(declare-fun d!2386969 () Bool)

(declare-fun e!4714409 () Bool)

(assert (=> d!2386969 e!4714409))

(declare-fun res!3164662 () Bool)

(assert (=> d!2386969 (=> (not res!3164662) (not e!4714409))))

(declare-fun lt!2713871 () List!74829)

(declare-fun content!15879 (List!74829) (Set C!43538))

(assert (=> d!2386969 (= res!3164662 (= (content!15879 lt!2713871) (set.union (content!15879 testedP!353) (content!15879 testedSuffix!271))))))

(assert (=> d!2386969 (= lt!2713871 e!4714408)))

(declare-fun c!1469375 () Bool)

(assert (=> d!2386969 (= c!1469375 (is-Nil!74705 testedP!353))))

(assert (=> d!2386969 (= (++!18426 testedP!353 testedSuffix!271) lt!2713871)))

(declare-fun b!8003085 () Bool)

(declare-fun res!3164661 () Bool)

(assert (=> b!8003085 (=> (not res!3164661) (not e!4714409))))

(assert (=> b!8003085 (= res!3164661 (= (size!43502 lt!2713871) (+ (size!43502 testedP!353) (size!43502 testedSuffix!271))))))

(declare-fun b!8003083 () Bool)

(assert (=> b!8003083 (= e!4714408 testedSuffix!271)))

(declare-fun b!8003086 () Bool)

(assert (=> b!8003086 (= e!4714409 (or (not (= testedSuffix!271 Nil!74705)) (= lt!2713871 testedP!353)))))

(assert (= (and d!2386969 c!1469375) b!8003083))

(assert (= (and d!2386969 (not c!1469375)) b!8003084))

(assert (= (and d!2386969 res!3164662) b!8003085))

(assert (= (and b!8003085 res!3164661) b!8003086))

(declare-fun m!8369342 () Bool)

(assert (=> b!8003084 m!8369342))

(declare-fun m!8369344 () Bool)

(assert (=> d!2386969 m!8369344))

(declare-fun m!8369346 () Bool)

(assert (=> d!2386969 m!8369346))

(declare-fun m!8369348 () Bool)

(assert (=> d!2386969 m!8369348))

(declare-fun m!8369350 () Bool)

(assert (=> b!8003085 m!8369350))

(assert (=> b!8003085 m!8369266))

(declare-fun m!8369352 () Bool)

(assert (=> b!8003085 m!8369352))

(assert (=> b!8002993 d!2386969))

(declare-fun b!8003113 () Bool)

(declare-fun e!4714430 () Bool)

(declare-fun e!4714434 () Bool)

(assert (=> b!8003113 (= e!4714430 e!4714434)))

(declare-fun c!1469384 () Bool)

(assert (=> b!8003113 (= c!1469384 (is-Union!21600 r!15422))))

(declare-fun b!8003114 () Bool)

(declare-fun res!3164676 () Bool)

(declare-fun e!4714433 () Bool)

(assert (=> b!8003114 (=> (not res!3164676) (not e!4714433))))

(declare-fun call!743629 () Bool)

(assert (=> b!8003114 (= res!3164676 call!743629)))

(assert (=> b!8003114 (= e!4714434 e!4714433)))

(declare-fun b!8003115 () Bool)

(declare-fun e!4714432 () Bool)

(assert (=> b!8003115 (= e!4714430 e!4714432)))

(declare-fun res!3164677 () Bool)

(declare-fun nullable!9680 (Regex!21600) Bool)

(assert (=> b!8003115 (= res!3164677 (not (nullable!9680 (reg!21929 r!15422))))))

(assert (=> b!8003115 (=> (not res!3164677) (not e!4714432))))

(declare-fun b!8003116 () Bool)

(declare-fun e!4714431 () Bool)

(declare-fun e!4714428 () Bool)

(assert (=> b!8003116 (= e!4714431 e!4714428)))

(declare-fun res!3164674 () Bool)

(assert (=> b!8003116 (=> (not res!3164674) (not e!4714428))))

(assert (=> b!8003116 (= res!3164674 call!743629)))

(declare-fun c!1469385 () Bool)

(declare-fun call!743631 () Bool)

(declare-fun bm!743624 () Bool)

(assert (=> bm!743624 (= call!743631 (validRegex!11904 (ite c!1469385 (reg!21929 r!15422) (ite c!1469384 (regOne!43713 r!15422) (regOne!43712 r!15422)))))))

(declare-fun bm!743625 () Bool)

(assert (=> bm!743625 (= call!743629 call!743631)))

(declare-fun b!8003118 () Bool)

(declare-fun res!3164673 () Bool)

(assert (=> b!8003118 (=> res!3164673 e!4714431)))

(assert (=> b!8003118 (= res!3164673 (not (is-Concat!30599 r!15422)))))

(assert (=> b!8003118 (= e!4714434 e!4714431)))

(declare-fun d!2386977 () Bool)

(declare-fun res!3164675 () Bool)

(declare-fun e!4714429 () Bool)

(assert (=> d!2386977 (=> res!3164675 e!4714429)))

(assert (=> d!2386977 (= res!3164675 (is-ElementMatch!21600 r!15422))))

(assert (=> d!2386977 (= (validRegex!11904 r!15422) e!4714429)))

(declare-fun b!8003117 () Bool)

(declare-fun call!743630 () Bool)

(assert (=> b!8003117 (= e!4714433 call!743630)))

(declare-fun b!8003119 () Bool)

(assert (=> b!8003119 (= e!4714428 call!743630)))

(declare-fun b!8003120 () Bool)

(assert (=> b!8003120 (= e!4714432 call!743631)))

(declare-fun b!8003121 () Bool)

(assert (=> b!8003121 (= e!4714429 e!4714430)))

(assert (=> b!8003121 (= c!1469385 (is-Star!21600 r!15422))))

(declare-fun bm!743626 () Bool)

(assert (=> bm!743626 (= call!743630 (validRegex!11904 (ite c!1469384 (regTwo!43713 r!15422) (regTwo!43712 r!15422))))))

(assert (= (and d!2386977 (not res!3164675)) b!8003121))

(assert (= (and b!8003121 c!1469385) b!8003115))

(assert (= (and b!8003121 (not c!1469385)) b!8003113))

(assert (= (and b!8003115 res!3164677) b!8003120))

(assert (= (and b!8003113 c!1469384) b!8003114))

(assert (= (and b!8003113 (not c!1469384)) b!8003118))

(assert (= (and b!8003114 res!3164676) b!8003117))

(assert (= (and b!8003118 (not res!3164673)) b!8003116))

(assert (= (and b!8003116 res!3164674) b!8003119))

(assert (= (or b!8003117 b!8003119) bm!743626))

(assert (= (or b!8003114 b!8003116) bm!743625))

(assert (= (or b!8003120 bm!743625) bm!743624))

(declare-fun m!8369358 () Bool)

(assert (=> b!8003115 m!8369358))

(declare-fun m!8369360 () Bool)

(assert (=> bm!743624 m!8369360))

(declare-fun m!8369362 () Bool)

(assert (=> bm!743626 m!8369362))

(assert (=> start!752930 d!2386977))

(declare-fun b!8003134 () Bool)

(declare-fun e!4714441 () Bool)

(declare-fun tp!2394173 () Bool)

(assert (=> b!8003134 (= e!4714441 (and tp_is_empty!53743 tp!2394173))))

(assert (=> b!8002990 (= tp!2394142 e!4714441)))

(assert (= (and b!8002990 (is-Cons!74705 (t!390572 totalInput!1349))) b!8003134))

(declare-fun b!8003147 () Bool)

(declare-fun e!4714444 () Bool)

(declare-fun tp!2394187 () Bool)

(assert (=> b!8003147 (= e!4714444 tp!2394187)))

(declare-fun b!8003148 () Bool)

(declare-fun tp!2394185 () Bool)

(declare-fun tp!2394188 () Bool)

(assert (=> b!8003148 (= e!4714444 (and tp!2394185 tp!2394188))))

(assert (=> b!8002995 (= tp!2394145 e!4714444)))

(declare-fun b!8003146 () Bool)

(declare-fun tp!2394186 () Bool)

(declare-fun tp!2394184 () Bool)

(assert (=> b!8003146 (= e!4714444 (and tp!2394186 tp!2394184))))

(declare-fun b!8003145 () Bool)

(assert (=> b!8003145 (= e!4714444 tp_is_empty!53743)))

(assert (= (and b!8002995 (is-ElementMatch!21600 (regOne!43713 r!15422))) b!8003145))

(assert (= (and b!8002995 (is-Concat!30599 (regOne!43713 r!15422))) b!8003146))

(assert (= (and b!8002995 (is-Star!21600 (regOne!43713 r!15422))) b!8003147))

(assert (= (and b!8002995 (is-Union!21600 (regOne!43713 r!15422))) b!8003148))

(declare-fun b!8003155 () Bool)

(declare-fun e!4714447 () Bool)

(declare-fun tp!2394192 () Bool)

(assert (=> b!8003155 (= e!4714447 tp!2394192)))

(declare-fun b!8003156 () Bool)

(declare-fun tp!2394190 () Bool)

(declare-fun tp!2394193 () Bool)

(assert (=> b!8003156 (= e!4714447 (and tp!2394190 tp!2394193))))

(assert (=> b!8002995 (= tp!2394146 e!4714447)))

(declare-fun b!8003154 () Bool)

(declare-fun tp!2394191 () Bool)

(declare-fun tp!2394189 () Bool)

(assert (=> b!8003154 (= e!4714447 (and tp!2394191 tp!2394189))))

(declare-fun b!8003153 () Bool)

(assert (=> b!8003153 (= e!4714447 tp_is_empty!53743)))

(assert (= (and b!8002995 (is-ElementMatch!21600 (regTwo!43713 r!15422))) b!8003153))

(assert (= (and b!8002995 (is-Concat!30599 (regTwo!43713 r!15422))) b!8003154))

(assert (= (and b!8002995 (is-Star!21600 (regTwo!43713 r!15422))) b!8003155))

(assert (= (and b!8002995 (is-Union!21600 (regTwo!43713 r!15422))) b!8003156))

(declare-fun b!8003157 () Bool)

(declare-fun e!4714448 () Bool)

(declare-fun tp!2394194 () Bool)

(assert (=> b!8003157 (= e!4714448 (and tp_is_empty!53743 tp!2394194))))

(assert (=> b!8002991 (= tp!2394141 e!4714448)))

(assert (= (and b!8002991 (is-Cons!74705 (t!390572 testedSuffix!271))) b!8003157))

(declare-fun b!8003158 () Bool)

(declare-fun e!4714449 () Bool)

(declare-fun tp!2394195 () Bool)

(assert (=> b!8003158 (= e!4714449 (and tp_is_empty!53743 tp!2394195))))

(assert (=> b!8002997 (= tp!2394143 e!4714449)))

(assert (= (and b!8002997 (is-Cons!74705 (t!390572 testedP!353))) b!8003158))

(declare-fun b!8003161 () Bool)

(declare-fun e!4714450 () Bool)

(declare-fun tp!2394199 () Bool)

(assert (=> b!8003161 (= e!4714450 tp!2394199)))

(declare-fun b!8003162 () Bool)

(declare-fun tp!2394197 () Bool)

(declare-fun tp!2394200 () Bool)

(assert (=> b!8003162 (= e!4714450 (and tp!2394197 tp!2394200))))

(assert (=> b!8002998 (= tp!2394139 e!4714450)))

(declare-fun b!8003160 () Bool)

(declare-fun tp!2394198 () Bool)

(declare-fun tp!2394196 () Bool)

(assert (=> b!8003160 (= e!4714450 (and tp!2394198 tp!2394196))))

(declare-fun b!8003159 () Bool)

(assert (=> b!8003159 (= e!4714450 tp_is_empty!53743)))

(assert (= (and b!8002998 (is-ElementMatch!21600 (reg!21929 r!15422))) b!8003159))

(assert (= (and b!8002998 (is-Concat!30599 (reg!21929 r!15422))) b!8003160))

(assert (= (and b!8002998 (is-Star!21600 (reg!21929 r!15422))) b!8003161))

(assert (= (and b!8002998 (is-Union!21600 (reg!21929 r!15422))) b!8003162))

(declare-fun b!8003165 () Bool)

(declare-fun e!4714451 () Bool)

(declare-fun tp!2394204 () Bool)

(assert (=> b!8003165 (= e!4714451 tp!2394204)))

(declare-fun b!8003166 () Bool)

(declare-fun tp!2394202 () Bool)

(declare-fun tp!2394205 () Bool)

(assert (=> b!8003166 (= e!4714451 (and tp!2394202 tp!2394205))))

(assert (=> b!8002994 (= tp!2394140 e!4714451)))

(declare-fun b!8003164 () Bool)

(declare-fun tp!2394203 () Bool)

(declare-fun tp!2394201 () Bool)

(assert (=> b!8003164 (= e!4714451 (and tp!2394203 tp!2394201))))

(declare-fun b!8003163 () Bool)

(assert (=> b!8003163 (= e!4714451 tp_is_empty!53743)))

(assert (= (and b!8002994 (is-ElementMatch!21600 (regOne!43712 r!15422))) b!8003163))

(assert (= (and b!8002994 (is-Concat!30599 (regOne!43712 r!15422))) b!8003164))

(assert (= (and b!8002994 (is-Star!21600 (regOne!43712 r!15422))) b!8003165))

(assert (= (and b!8002994 (is-Union!21600 (regOne!43712 r!15422))) b!8003166))

(declare-fun b!8003169 () Bool)

(declare-fun e!4714452 () Bool)

(declare-fun tp!2394209 () Bool)

(assert (=> b!8003169 (= e!4714452 tp!2394209)))

(declare-fun b!8003170 () Bool)

(declare-fun tp!2394207 () Bool)

(declare-fun tp!2394210 () Bool)

(assert (=> b!8003170 (= e!4714452 (and tp!2394207 tp!2394210))))

(assert (=> b!8002994 (= tp!2394144 e!4714452)))

(declare-fun b!8003168 () Bool)

(declare-fun tp!2394208 () Bool)

(declare-fun tp!2394206 () Bool)

(assert (=> b!8003168 (= e!4714452 (and tp!2394208 tp!2394206))))

(declare-fun b!8003167 () Bool)

(assert (=> b!8003167 (= e!4714452 tp_is_empty!53743)))

(assert (= (and b!8002994 (is-ElementMatch!21600 (regTwo!43712 r!15422))) b!8003167))

(assert (= (and b!8002994 (is-Concat!30599 (regTwo!43712 r!15422))) b!8003168))

(assert (= (and b!8002994 (is-Star!21600 (regTwo!43712 r!15422))) b!8003169))

(assert (= (and b!8002994 (is-Union!21600 (regTwo!43712 r!15422))) b!8003170))

(push 1)

(assert (not b!8003061))

(assert (not b!8003168))

(assert (not b!8003155))

(assert (not b!8003115))

(assert (not b!8003170))

(assert (not b!8003166))

(assert (not b!8003064))

(assert (not b!8003040))

(assert (not b!8003154))

(assert (not b!8003066))

(assert (not b!8003158))

(assert (not b!8003148))

(assert (not b!8003146))

(assert (not b!8003165))

(assert (not bm!743624))

(assert (not b!8003147))

(assert (not b!8003169))

(assert tp_is_empty!53743)

(assert (not b!8003160))

(assert (not b!8003134))

(assert (not b!8003084))

(assert (not b!8003065))

(assert (not d!2386967))

(assert (not b!8003161))

(assert (not b!8003162))

(assert (not b!8003060))

(assert (not bm!743626))

(assert (not b!8003164))

(assert (not b!8003062))

(assert (not d!2386969))

(assert (not b!8003085))

(assert (not b!8003156))

(assert (not b!8003042))

(assert (not b!8003157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

