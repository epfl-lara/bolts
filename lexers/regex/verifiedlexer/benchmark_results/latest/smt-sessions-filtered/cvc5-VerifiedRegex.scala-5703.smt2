; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283786 () Bool)

(assert start!283786)

(declare-fun b!2912182 () Bool)

(assert (=> b!2912182 true))

(assert (=> b!2912182 true))

(declare-fun lambda!108136 () Int)

(declare-fun lambda!108135 () Int)

(assert (=> b!2912182 (not (= lambda!108136 lambda!108135))))

(assert (=> b!2912182 true))

(assert (=> b!2912182 true))

(declare-fun e!1838077 () Bool)

(declare-fun e!1838074 () Bool)

(assert (=> b!2912182 (= e!1838077 e!1838074)))

(declare-fun res!1202091 () Bool)

(assert (=> b!2912182 (=> res!1202091 e!1838074)))

(declare-datatypes ((C!18098 0))(
  ( (C!18099 (val!11085 Int)) )
))
(declare-datatypes ((Regex!8956 0))(
  ( (ElementMatch!8956 (c!474894 C!18098)) (Concat!14277 (regOne!18424 Regex!8956) (regTwo!18424 Regex!8956)) (EmptyExpr!8956) (Star!8956 (reg!9285 Regex!8956)) (EmptyLang!8956) (Union!8956 (regOne!18425 Regex!8956) (regTwo!18425 Regex!8956)) )
))
(declare-fun r!17423 () Regex!8956)

(declare-fun validRegex!3689 (Regex!8956) Bool)

(assert (=> b!2912182 (= res!1202091 (not (validRegex!3689 (regOne!18424 r!17423))))))

(declare-fun Exists!1336 (Int) Bool)

(assert (=> b!2912182 (= (Exists!1336 lambda!108135) (Exists!1336 lambda!108136))))

(declare-datatypes ((Unit!48251 0))(
  ( (Unit!48252) )
))
(declare-fun lt!1024006 () Unit!48251)

(declare-datatypes ((List!34821 0))(
  ( (Nil!34697) (Cons!34697 (h!40117 C!18098) (t!233886 List!34821)) )
))
(declare-fun s!11993 () List!34821)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!477 (Regex!8956 Regex!8956 List!34821) Unit!48251)

(assert (=> b!2912182 (= lt!1024006 (lemmaExistCutMatchRandMatchRSpecEquivalent!477 (regOne!18424 r!17423) (regTwo!18424 r!17423) s!11993))))

(declare-datatypes ((tuple2!33650 0))(
  ( (tuple2!33651 (_1!19957 List!34821) (_2!19957 List!34821)) )
))
(declare-datatypes ((Option!6557 0))(
  ( (None!6556) (Some!6556 (v!34690 tuple2!33650)) )
))
(declare-fun isDefined!5108 (Option!6557) Bool)

(declare-fun findConcatSeparation!951 (Regex!8956 Regex!8956 List!34821 List!34821 List!34821) Option!6557)

(assert (=> b!2912182 (= (isDefined!5108 (findConcatSeparation!951 (regOne!18424 r!17423) (regTwo!18424 r!17423) Nil!34697 s!11993 s!11993)) (Exists!1336 lambda!108135))))

(declare-fun lt!1024007 () Unit!48251)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!733 (Regex!8956 Regex!8956 List!34821) Unit!48251)

(assert (=> b!2912182 (= lt!1024007 (lemmaFindConcatSeparationEquivalentToExists!733 (regOne!18424 r!17423) (regTwo!18424 r!17423) s!11993))))

(declare-fun b!2912183 () Bool)

(declare-fun e!1838076 () Bool)

(declare-fun tp!935614 () Bool)

(declare-fun tp!935619 () Bool)

(assert (=> b!2912183 (= e!1838076 (and tp!935614 tp!935619))))

(declare-fun b!2912184 () Bool)

(declare-fun tp_is_empty!15475 () Bool)

(assert (=> b!2912184 (= e!1838076 tp_is_empty!15475)))

(declare-fun b!2912185 () Bool)

(declare-fun res!1202092 () Bool)

(assert (=> b!2912185 (=> res!1202092 e!1838077)))

(declare-fun isEmpty!18939 (List!34821) Bool)

(assert (=> b!2912185 (= res!1202092 (isEmpty!18939 s!11993))))

(declare-fun b!2912186 () Bool)

(declare-fun tp!935615 () Bool)

(assert (=> b!2912186 (= e!1838076 tp!935615)))

(declare-fun res!1202090 () Bool)

(declare-fun e!1838078 () Bool)

(assert (=> start!283786 (=> (not res!1202090) (not e!1838078))))

(assert (=> start!283786 (= res!1202090 (validRegex!3689 r!17423))))

(assert (=> start!283786 e!1838078))

(assert (=> start!283786 e!1838076))

(declare-fun e!1838075 () Bool)

(assert (=> start!283786 e!1838075))

(declare-fun b!2912187 () Bool)

(assert (=> b!2912187 (= e!1838078 (not e!1838077))))

(declare-fun res!1202089 () Bool)

(assert (=> b!2912187 (=> res!1202089 e!1838077)))

(declare-fun lt!1024005 () Bool)

(assert (=> b!2912187 (= res!1202089 (or (not lt!1024005) (not (is-Concat!14277 r!17423))))))

(declare-fun matchRSpec!1093 (Regex!8956 List!34821) Bool)

(assert (=> b!2912187 (= lt!1024005 (matchRSpec!1093 r!17423 s!11993))))

(declare-fun matchR!3838 (Regex!8956 List!34821) Bool)

(assert (=> b!2912187 (= lt!1024005 (matchR!3838 r!17423 s!11993))))

(declare-fun lt!1024004 () Unit!48251)

(declare-fun mainMatchTheorem!1093 (Regex!8956 List!34821) Unit!48251)

(assert (=> b!2912187 (= lt!1024004 (mainMatchTheorem!1093 r!17423 s!11993))))

(declare-fun b!2912188 () Bool)

(declare-fun tp!935616 () Bool)

(declare-fun tp!935617 () Bool)

(assert (=> b!2912188 (= e!1838076 (and tp!935616 tp!935617))))

(declare-fun b!2912189 () Bool)

(assert (=> b!2912189 (= e!1838074 (validRegex!3689 (regTwo!18424 r!17423)))))

(declare-fun b!2912190 () Bool)

(declare-fun tp!935618 () Bool)

(assert (=> b!2912190 (= e!1838075 (and tp_is_empty!15475 tp!935618))))

(assert (= (and start!283786 res!1202090) b!2912187))

(assert (= (and b!2912187 (not res!1202089)) b!2912185))

(assert (= (and b!2912185 (not res!1202092)) b!2912182))

(assert (= (and b!2912182 (not res!1202091)) b!2912189))

(assert (= (and start!283786 (is-ElementMatch!8956 r!17423)) b!2912184))

(assert (= (and start!283786 (is-Concat!14277 r!17423)) b!2912183))

(assert (= (and start!283786 (is-Star!8956 r!17423)) b!2912186))

(assert (= (and start!283786 (is-Union!8956 r!17423)) b!2912188))

(assert (= (and start!283786 (is-Cons!34697 s!11993)) b!2912190))

(declare-fun m!3312957 () Bool)

(assert (=> start!283786 m!3312957))

(declare-fun m!3312959 () Bool)

(assert (=> b!2912185 m!3312959))

(declare-fun m!3312961 () Bool)

(assert (=> b!2912187 m!3312961))

(declare-fun m!3312963 () Bool)

(assert (=> b!2912187 m!3312963))

(declare-fun m!3312965 () Bool)

(assert (=> b!2912187 m!3312965))

(declare-fun m!3312967 () Bool)

(assert (=> b!2912189 m!3312967))

(declare-fun m!3312969 () Bool)

(assert (=> b!2912182 m!3312969))

(declare-fun m!3312971 () Bool)

(assert (=> b!2912182 m!3312971))

(declare-fun m!3312973 () Bool)

(assert (=> b!2912182 m!3312973))

(declare-fun m!3312975 () Bool)

(assert (=> b!2912182 m!3312975))

(declare-fun m!3312977 () Bool)

(assert (=> b!2912182 m!3312977))

(assert (=> b!2912182 m!3312973))

(declare-fun m!3312979 () Bool)

(assert (=> b!2912182 m!3312979))

(assert (=> b!2912182 m!3312977))

(declare-fun m!3312981 () Bool)

(assert (=> b!2912182 m!3312981))

(push 1)

(assert (not b!2912182))

(assert (not start!283786))

(assert (not b!2912183))

(assert tp_is_empty!15475)

(assert (not b!2912186))

(assert (not b!2912190))

(assert (not b!2912188))

(assert (not b!2912185))

(assert (not b!2912187))

(assert (not b!2912189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837724 () Bool)

(declare-fun res!1202127 () Bool)

(declare-fun e!1838115 () Bool)

(assert (=> d!837724 (=> res!1202127 e!1838115)))

(assert (=> d!837724 (= res!1202127 (is-ElementMatch!8956 (regTwo!18424 r!17423)))))

(assert (=> d!837724 (= (validRegex!3689 (regTwo!18424 r!17423)) e!1838115)))

(declare-fun b!2912256 () Bool)

(declare-fun e!1838117 () Bool)

(declare-fun call!190131 () Bool)

(assert (=> b!2912256 (= e!1838117 call!190131)))

(declare-fun b!2912257 () Bool)

(declare-fun e!1838119 () Bool)

(declare-fun call!190133 () Bool)

(assert (=> b!2912257 (= e!1838119 call!190133)))

(declare-fun b!2912258 () Bool)

(declare-fun e!1838116 () Bool)

(declare-fun e!1838114 () Bool)

(assert (=> b!2912258 (= e!1838116 e!1838114)))

(declare-fun res!1202129 () Bool)

(declare-fun nullable!2794 (Regex!8956) Bool)

(assert (=> b!2912258 (= res!1202129 (not (nullable!2794 (reg!9285 (regTwo!18424 r!17423)))))))

(assert (=> b!2912258 (=> (not res!1202129) (not e!1838114))))

(declare-fun bm!190126 () Bool)

(declare-fun call!190132 () Bool)

(assert (=> bm!190126 (= call!190133 call!190132)))

(declare-fun b!2912259 () Bool)

(assert (=> b!2912259 (= e!1838115 e!1838116)))

(declare-fun c!474901 () Bool)

(assert (=> b!2912259 (= c!474901 (is-Star!8956 (regTwo!18424 r!17423)))))

(declare-fun b!2912260 () Bool)

(declare-fun res!1202130 () Bool)

(assert (=> b!2912260 (=> (not res!1202130) (not e!1838119))))

(assert (=> b!2912260 (= res!1202130 call!190131)))

(declare-fun e!1838118 () Bool)

(assert (=> b!2912260 (= e!1838118 e!1838119)))

(declare-fun bm!190127 () Bool)

(declare-fun c!474900 () Bool)

(assert (=> bm!190127 (= call!190131 (validRegex!3689 (ite c!474900 (regOne!18425 (regTwo!18424 r!17423)) (regTwo!18424 (regTwo!18424 r!17423)))))))

(declare-fun b!2912261 () Bool)

(declare-fun res!1202128 () Bool)

(declare-fun e!1838120 () Bool)

(assert (=> b!2912261 (=> res!1202128 e!1838120)))

(assert (=> b!2912261 (= res!1202128 (not (is-Concat!14277 (regTwo!18424 r!17423))))))

(assert (=> b!2912261 (= e!1838118 e!1838120)))

(declare-fun b!2912262 () Bool)

(assert (=> b!2912262 (= e!1838114 call!190132)))

(declare-fun b!2912263 () Bool)

(assert (=> b!2912263 (= e!1838120 e!1838117)))

(declare-fun res!1202131 () Bool)

(assert (=> b!2912263 (=> (not res!1202131) (not e!1838117))))

(assert (=> b!2912263 (= res!1202131 call!190133)))

(declare-fun b!2912264 () Bool)

(assert (=> b!2912264 (= e!1838116 e!1838118)))

(assert (=> b!2912264 (= c!474900 (is-Union!8956 (regTwo!18424 r!17423)))))

(declare-fun bm!190128 () Bool)

(assert (=> bm!190128 (= call!190132 (validRegex!3689 (ite c!474901 (reg!9285 (regTwo!18424 r!17423)) (ite c!474900 (regTwo!18425 (regTwo!18424 r!17423)) (regOne!18424 (regTwo!18424 r!17423))))))))

(assert (= (and d!837724 (not res!1202127)) b!2912259))

(assert (= (and b!2912259 c!474901) b!2912258))

(assert (= (and b!2912259 (not c!474901)) b!2912264))

(assert (= (and b!2912258 res!1202129) b!2912262))

(assert (= (and b!2912264 c!474900) b!2912260))

(assert (= (and b!2912264 (not c!474900)) b!2912261))

(assert (= (and b!2912260 res!1202130) b!2912257))

(assert (= (and b!2912261 (not res!1202128)) b!2912263))

(assert (= (and b!2912263 res!1202131) b!2912256))

(assert (= (or b!2912260 b!2912256) bm!190127))

(assert (= (or b!2912257 b!2912263) bm!190126))

(assert (= (or b!2912262 bm!190126) bm!190128))

(declare-fun m!3313009 () Bool)

(assert (=> b!2912258 m!3313009))

(declare-fun m!3313011 () Bool)

(assert (=> bm!190127 m!3313011))

(declare-fun m!3313013 () Bool)

(assert (=> bm!190128 m!3313013))

(assert (=> b!2912189 d!837724))

(declare-fun d!837726 () Bool)

(assert (=> d!837726 (= (isEmpty!18939 s!11993) (is-Nil!34697 s!11993))))

(assert (=> b!2912185 d!837726))

(declare-fun d!837728 () Bool)

(declare-fun choose!17127 (Int) Bool)

(assert (=> d!837728 (= (Exists!1336 lambda!108136) (choose!17127 lambda!108136))))

(declare-fun bs!524589 () Bool)

(assert (= bs!524589 d!837728))

(declare-fun m!3313015 () Bool)

(assert (=> bs!524589 m!3313015))

(assert (=> b!2912182 d!837728))

(declare-fun d!837730 () Bool)

(assert (=> d!837730 (= (Exists!1336 lambda!108135) (choose!17127 lambda!108135))))

(declare-fun bs!524590 () Bool)

(assert (= bs!524590 d!837730))

(declare-fun m!3313017 () Bool)

(assert (=> bs!524590 m!3313017))

(assert (=> b!2912182 d!837730))

(declare-fun d!837732 () Bool)

(declare-fun isEmpty!18941 (Option!6557) Bool)

(assert (=> d!837732 (= (isDefined!5108 (findConcatSeparation!951 (regOne!18424 r!17423) (regTwo!18424 r!17423) Nil!34697 s!11993 s!11993)) (not (isEmpty!18941 (findConcatSeparation!951 (regOne!18424 r!17423) (regTwo!18424 r!17423) Nil!34697 s!11993 s!11993))))))

(declare-fun bs!524591 () Bool)

(assert (= bs!524591 d!837732))

(assert (=> bs!524591 m!3312973))

(declare-fun m!3313019 () Bool)

(assert (=> bs!524591 m!3313019))

(assert (=> b!2912182 d!837732))

(declare-fun bs!524594 () Bool)

(declare-fun d!837734 () Bool)

(assert (= bs!524594 (and d!837734 b!2912182)))

(declare-fun lambda!108149 () Int)

(assert (=> bs!524594 (= lambda!108149 lambda!108135)))

(assert (=> bs!524594 (not (= lambda!108149 lambda!108136))))

(assert (=> d!837734 true))

(assert (=> d!837734 true))

(assert (=> d!837734 true))

(declare-fun lambda!108150 () Int)

(assert (=> bs!524594 (not (= lambda!108150 lambda!108135))))

(assert (=> bs!524594 (= lambda!108150 lambda!108136)))

(declare-fun bs!524596 () Bool)

(assert (= bs!524596 d!837734))

(assert (=> bs!524596 (not (= lambda!108150 lambda!108149))))

(assert (=> d!837734 true))

(assert (=> d!837734 true))

(assert (=> d!837734 true))

(assert (=> d!837734 (= (Exists!1336 lambda!108149) (Exists!1336 lambda!108150))))

(declare-fun lt!1024022 () Unit!48251)

(declare-fun choose!17128 (Regex!8956 Regex!8956 List!34821) Unit!48251)

(assert (=> d!837734 (= lt!1024022 (choose!17128 (regOne!18424 r!17423) (regTwo!18424 r!17423) s!11993))))

(assert (=> d!837734 (validRegex!3689 (regOne!18424 r!17423))))

(assert (=> d!837734 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!477 (regOne!18424 r!17423) (regTwo!18424 r!17423) s!11993) lt!1024022)))

(declare-fun m!3313027 () Bool)

(assert (=> bs!524596 m!3313027))

(declare-fun m!3313029 () Bool)

(assert (=> bs!524596 m!3313029))

(declare-fun m!3313031 () Bool)

(assert (=> bs!524596 m!3313031))

(assert (=> bs!524596 m!3312971))

(assert (=> b!2912182 d!837734))

(declare-fun d!837744 () Bool)

(declare-fun res!1202140 () Bool)

(declare-fun e!1838126 () Bool)

(assert (=> d!837744 (=> res!1202140 e!1838126)))

(assert (=> d!837744 (= res!1202140 (is-ElementMatch!8956 (regOne!18424 r!17423)))))

(assert (=> d!837744 (= (validRegex!3689 (regOne!18424 r!17423)) e!1838126)))

(declare-fun b!2912273 () Bool)

(declare-fun e!1838128 () Bool)

(declare-fun call!190134 () Bool)

(assert (=> b!2912273 (= e!1838128 call!190134)))

(declare-fun b!2912274 () Bool)

(declare-fun e!1838130 () Bool)

(declare-fun call!190136 () Bool)

(assert (=> b!2912274 (= e!1838130 call!190136)))

(declare-fun b!2912275 () Bool)

(declare-fun e!1838127 () Bool)

(declare-fun e!1838125 () Bool)

(assert (=> b!2912275 (= e!1838127 e!1838125)))

(declare-fun res!1202142 () Bool)

(assert (=> b!2912275 (= res!1202142 (not (nullable!2794 (reg!9285 (regOne!18424 r!17423)))))))

(assert (=> b!2912275 (=> (not res!1202142) (not e!1838125))))

(declare-fun bm!190129 () Bool)

(declare-fun call!190135 () Bool)

(assert (=> bm!190129 (= call!190136 call!190135)))

(declare-fun b!2912276 () Bool)

(assert (=> b!2912276 (= e!1838126 e!1838127)))

(declare-fun c!474903 () Bool)

(assert (=> b!2912276 (= c!474903 (is-Star!8956 (regOne!18424 r!17423)))))

(declare-fun b!2912277 () Bool)

(declare-fun res!1202143 () Bool)

(assert (=> b!2912277 (=> (not res!1202143) (not e!1838130))))

(assert (=> b!2912277 (= res!1202143 call!190134)))

(declare-fun e!1838129 () Bool)

(assert (=> b!2912277 (= e!1838129 e!1838130)))

(declare-fun bm!190130 () Bool)

(declare-fun c!474902 () Bool)

(assert (=> bm!190130 (= call!190134 (validRegex!3689 (ite c!474902 (regOne!18425 (regOne!18424 r!17423)) (regTwo!18424 (regOne!18424 r!17423)))))))

(declare-fun b!2912278 () Bool)

(declare-fun res!1202141 () Bool)

(declare-fun e!1838131 () Bool)

(assert (=> b!2912278 (=> res!1202141 e!1838131)))

(assert (=> b!2912278 (= res!1202141 (not (is-Concat!14277 (regOne!18424 r!17423))))))

(assert (=> b!2912278 (= e!1838129 e!1838131)))

(declare-fun b!2912279 () Bool)

(assert (=> b!2912279 (= e!1838125 call!190135)))

(declare-fun b!2912280 () Bool)

(assert (=> b!2912280 (= e!1838131 e!1838128)))

(declare-fun res!1202144 () Bool)

(assert (=> b!2912280 (=> (not res!1202144) (not e!1838128))))

(assert (=> b!2912280 (= res!1202144 call!190136)))

(declare-fun b!2912281 () Bool)

(assert (=> b!2912281 (= e!1838127 e!1838129)))

(assert (=> b!2912281 (= c!474902 (is-Union!8956 (regOne!18424 r!17423)))))

(declare-fun bm!190131 () Bool)

(assert (=> bm!190131 (= call!190135 (validRegex!3689 (ite c!474903 (reg!9285 (regOne!18424 r!17423)) (ite c!474902 (regTwo!18425 (regOne!18424 r!17423)) (regOne!18424 (regOne!18424 r!17423))))))))

(assert (= (and d!837744 (not res!1202140)) b!2912276))

(assert (= (and b!2912276 c!474903) b!2912275))

(assert (= (and b!2912276 (not c!474903)) b!2912281))

(assert (= (and b!2912275 res!1202142) b!2912279))

(assert (= (and b!2912281 c!474902) b!2912277))

(assert (= (and b!2912281 (not c!474902)) b!2912278))

(assert (= (and b!2912277 res!1202143) b!2912274))

(assert (= (and b!2912278 (not res!1202141)) b!2912280))

(assert (= (and b!2912280 res!1202144) b!2912273))

(assert (= (or b!2912277 b!2912273) bm!190130))

(assert (= (or b!2912274 b!2912280) bm!190129))

(assert (= (or b!2912279 bm!190129) bm!190131))

(declare-fun m!3313033 () Bool)

(assert (=> b!2912275 m!3313033))

(declare-fun m!3313035 () Bool)

(assert (=> bm!190130 m!3313035))

(declare-fun m!3313037 () Bool)

(assert (=> bm!190131 m!3313037))

(assert (=> b!2912182 d!837744))

(declare-fun b!2912302 () Bool)

(declare-fun e!1838145 () Bool)

(assert (=> b!2912302 (= e!1838145 (matchR!3838 (regTwo!18424 r!17423) s!11993))))

(declare-fun b!2912303 () Bool)

(declare-fun res!1202157 () Bool)

(declare-fun e!1838146 () Bool)

(assert (=> b!2912303 (=> (not res!1202157) (not e!1838146))))

(declare-fun lt!1024032 () Option!6557)

(declare-fun get!10538 (Option!6557) tuple2!33650)

(assert (=> b!2912303 (= res!1202157 (matchR!3838 (regTwo!18424 r!17423) (_2!19957 (get!10538 lt!1024032))))))

(declare-fun b!2912304 () Bool)

(declare-fun e!1838147 () Bool)

(assert (=> b!2912304 (= e!1838147 (not (isDefined!5108 lt!1024032)))))

(declare-fun b!2912305 () Bool)

(declare-fun lt!1024031 () Unit!48251)

(declare-fun lt!1024033 () Unit!48251)

(assert (=> b!2912305 (= lt!1024031 lt!1024033)))

(declare-fun ++!8269 (List!34821 List!34821) List!34821)

(assert (=> b!2912305 (= (++!8269 (++!8269 Nil!34697 (Cons!34697 (h!40117 s!11993) Nil!34697)) (t!233886 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!906 (List!34821 C!18098 List!34821 List!34821) Unit!48251)

(assert (=> b!2912305 (= lt!1024033 (lemmaMoveElementToOtherListKeepsConcatEq!906 Nil!34697 (h!40117 s!11993) (t!233886 s!11993) s!11993))))

(declare-fun e!1838148 () Option!6557)

(assert (=> b!2912305 (= e!1838148 (findConcatSeparation!951 (regOne!18424 r!17423) (regTwo!18424 r!17423) (++!8269 Nil!34697 (Cons!34697 (h!40117 s!11993) Nil!34697)) (t!233886 s!11993) s!11993))))

(declare-fun b!2912306 () Bool)

(declare-fun e!1838144 () Option!6557)

(assert (=> b!2912306 (= e!1838144 e!1838148)))

(declare-fun c!474909 () Bool)

(assert (=> b!2912306 (= c!474909 (is-Nil!34697 s!11993))))

(declare-fun d!837746 () Bool)

(assert (=> d!837746 e!1838147))

(declare-fun res!1202159 () Bool)

(assert (=> d!837746 (=> res!1202159 e!1838147)))

(assert (=> d!837746 (= res!1202159 e!1838146)))

(declare-fun res!1202161 () Bool)

(assert (=> d!837746 (=> (not res!1202161) (not e!1838146))))

(assert (=> d!837746 (= res!1202161 (isDefined!5108 lt!1024032))))

(assert (=> d!837746 (= lt!1024032 e!1838144)))

(declare-fun c!474908 () Bool)

(assert (=> d!837746 (= c!474908 e!1838145)))

(declare-fun res!1202158 () Bool)

(assert (=> d!837746 (=> (not res!1202158) (not e!1838145))))

(assert (=> d!837746 (= res!1202158 (matchR!3838 (regOne!18424 r!17423) Nil!34697))))

(assert (=> d!837746 (validRegex!3689 (regOne!18424 r!17423))))

(assert (=> d!837746 (= (findConcatSeparation!951 (regOne!18424 r!17423) (regTwo!18424 r!17423) Nil!34697 s!11993 s!11993) lt!1024032)))

(declare-fun b!2912307 () Bool)

(assert (=> b!2912307 (= e!1838146 (= (++!8269 (_1!19957 (get!10538 lt!1024032)) (_2!19957 (get!10538 lt!1024032))) s!11993))))

(declare-fun b!2912308 () Bool)

(declare-fun res!1202160 () Bool)

(assert (=> b!2912308 (=> (not res!1202160) (not e!1838146))))

(assert (=> b!2912308 (= res!1202160 (matchR!3838 (regOne!18424 r!17423) (_1!19957 (get!10538 lt!1024032))))))

(declare-fun b!2912309 () Bool)

(assert (=> b!2912309 (= e!1838144 (Some!6556 (tuple2!33651 Nil!34697 s!11993)))))

(declare-fun b!2912310 () Bool)

(assert (=> b!2912310 (= e!1838148 None!6556)))

(assert (= (and d!837746 res!1202158) b!2912302))

(assert (= (and d!837746 c!474908) b!2912309))

(assert (= (and d!837746 (not c!474908)) b!2912306))

(assert (= (and b!2912306 c!474909) b!2912310))

(assert (= (and b!2912306 (not c!474909)) b!2912305))

(assert (= (and d!837746 res!1202161) b!2912308))

(assert (= (and b!2912308 res!1202160) b!2912303))

(assert (= (and b!2912303 res!1202157) b!2912307))

(assert (= (and d!837746 (not res!1202159)) b!2912304))

(declare-fun m!3313039 () Bool)

(assert (=> b!2912305 m!3313039))

(assert (=> b!2912305 m!3313039))

(declare-fun m!3313041 () Bool)

(assert (=> b!2912305 m!3313041))

(declare-fun m!3313043 () Bool)

(assert (=> b!2912305 m!3313043))

(assert (=> b!2912305 m!3313039))

(declare-fun m!3313045 () Bool)

(assert (=> b!2912305 m!3313045))

(declare-fun m!3313047 () Bool)

(assert (=> d!837746 m!3313047))

(declare-fun m!3313049 () Bool)

(assert (=> d!837746 m!3313049))

(assert (=> d!837746 m!3312971))

(declare-fun m!3313051 () Bool)

(assert (=> b!2912302 m!3313051))

(declare-fun m!3313053 () Bool)

(assert (=> b!2912303 m!3313053))

(declare-fun m!3313055 () Bool)

(assert (=> b!2912303 m!3313055))

(assert (=> b!2912307 m!3313053))

(declare-fun m!3313057 () Bool)

(assert (=> b!2912307 m!3313057))

(assert (=> b!2912304 m!3313047))

(assert (=> b!2912308 m!3313053))

(declare-fun m!3313059 () Bool)

(assert (=> b!2912308 m!3313059))

(assert (=> b!2912182 d!837746))

(declare-fun bs!524597 () Bool)

(declare-fun d!837748 () Bool)

(assert (= bs!524597 (and d!837748 b!2912182)))

(declare-fun lambda!108157 () Int)

(assert (=> bs!524597 (= lambda!108157 lambda!108135)))

(assert (=> bs!524597 (not (= lambda!108157 lambda!108136))))

(declare-fun bs!524598 () Bool)

(assert (= bs!524598 (and d!837748 d!837734)))

(assert (=> bs!524598 (= lambda!108157 lambda!108149)))

(assert (=> bs!524598 (not (= lambda!108157 lambda!108150))))

(assert (=> d!837748 true))

(assert (=> d!837748 true))

(assert (=> d!837748 true))

(assert (=> d!837748 (= (isDefined!5108 (findConcatSeparation!951 (regOne!18424 r!17423) (regTwo!18424 r!17423) Nil!34697 s!11993 s!11993)) (Exists!1336 lambda!108157))))

(declare-fun lt!1024037 () Unit!48251)

(declare-fun choose!17129 (Regex!8956 Regex!8956 List!34821) Unit!48251)

(assert (=> d!837748 (= lt!1024037 (choose!17129 (regOne!18424 r!17423) (regTwo!18424 r!17423) s!11993))))

(assert (=> d!837748 (validRegex!3689 (regOne!18424 r!17423))))

(assert (=> d!837748 (= (lemmaFindConcatSeparationEquivalentToExists!733 (regOne!18424 r!17423) (regTwo!18424 r!17423) s!11993) lt!1024037)))

(declare-fun bs!524599 () Bool)

(assert (= bs!524599 d!837748))

(assert (=> bs!524599 m!3312973))

(assert (=> bs!524599 m!3312975))

(assert (=> bs!524599 m!3312971))

(assert (=> bs!524599 m!3312973))

(declare-fun m!3313061 () Bool)

(assert (=> bs!524599 m!3313061))

(declare-fun m!3313063 () Bool)

(assert (=> bs!524599 m!3313063))

(assert (=> b!2912182 d!837748))

(declare-fun bs!524602 () Bool)

(declare-fun b!2912376 () Bool)

(assert (= bs!524602 (and b!2912376 d!837734)))

(declare-fun lambda!108164 () Int)

(assert (=> bs!524602 (not (= lambda!108164 lambda!108149))))

(assert (=> bs!524602 (not (= lambda!108164 lambda!108150))))

(declare-fun bs!524603 () Bool)

(assert (= bs!524603 (and b!2912376 d!837748)))

(assert (=> bs!524603 (not (= lambda!108164 lambda!108157))))

(declare-fun bs!524604 () Bool)

(assert (= bs!524604 (and b!2912376 b!2912182)))

(assert (=> bs!524604 (not (= lambda!108164 lambda!108136))))

(assert (=> bs!524604 (not (= lambda!108164 lambda!108135))))

(assert (=> b!2912376 true))

(assert (=> b!2912376 true))

(declare-fun bs!524605 () Bool)

(declare-fun b!2912377 () Bool)

(assert (= bs!524605 (and b!2912377 d!837734)))

(declare-fun lambda!108165 () Int)

(assert (=> bs!524605 (not (= lambda!108165 lambda!108149))))

(assert (=> bs!524605 (= lambda!108165 lambda!108150)))

(declare-fun bs!524606 () Bool)

(assert (= bs!524606 (and b!2912377 b!2912376)))

(assert (=> bs!524606 (not (= lambda!108165 lambda!108164))))

(declare-fun bs!524607 () Bool)

(assert (= bs!524607 (and b!2912377 d!837748)))

(assert (=> bs!524607 (not (= lambda!108165 lambda!108157))))

(declare-fun bs!524608 () Bool)

(assert (= bs!524608 (and b!2912377 b!2912182)))

(assert (=> bs!524608 (= lambda!108165 lambda!108136)))

(assert (=> bs!524608 (not (= lambda!108165 lambda!108135))))

(assert (=> b!2912377 true))

(assert (=> b!2912377 true))

(declare-fun b!2912371 () Bool)

(declare-fun c!474923 () Bool)

(assert (=> b!2912371 (= c!474923 (is-Union!8956 r!17423))))

(declare-fun e!1838187 () Bool)

(declare-fun e!1838189 () Bool)

(assert (=> b!2912371 (= e!1838187 e!1838189)))

(declare-fun b!2912372 () Bool)

(declare-fun c!474922 () Bool)

(assert (=> b!2912372 (= c!474922 (is-ElementMatch!8956 r!17423))))

(declare-fun e!1838190 () Bool)

(assert (=> b!2912372 (= e!1838190 e!1838187)))

(declare-fun b!2912373 () Bool)

(declare-fun res!1202199 () Bool)

(declare-fun e!1838188 () Bool)

(assert (=> b!2912373 (=> res!1202199 e!1838188)))

(declare-fun call!190148 () Bool)

(assert (=> b!2912373 (= res!1202199 call!190148)))

(declare-fun e!1838186 () Bool)

(assert (=> b!2912373 (= e!1838186 e!1838188)))

(declare-fun b!2912374 () Bool)

(declare-fun e!1838185 () Bool)

(assert (=> b!2912374 (= e!1838185 e!1838190)))

(declare-fun res!1202198 () Bool)

(assert (=> b!2912374 (= res!1202198 (not (is-EmptyLang!8956 r!17423)))))

(assert (=> b!2912374 (=> (not res!1202198) (not e!1838190))))

(declare-fun b!2912375 () Bool)

(assert (=> b!2912375 (= e!1838187 (= s!11993 (Cons!34697 (c!474894 r!17423) Nil!34697)))))

(declare-fun bm!190142 () Bool)

(declare-fun c!474924 () Bool)

(declare-fun call!190147 () Bool)

(assert (=> bm!190142 (= call!190147 (Exists!1336 (ite c!474924 lambda!108164 lambda!108165)))))

(declare-fun bm!190143 () Bool)

(assert (=> bm!190143 (= call!190148 (isEmpty!18939 s!11993))))

(assert (=> b!2912376 (= e!1838188 call!190147)))

(assert (=> b!2912377 (= e!1838186 call!190147)))

(declare-fun d!837750 () Bool)

(declare-fun c!474925 () Bool)

(assert (=> d!837750 (= c!474925 (is-EmptyExpr!8956 r!17423))))

(assert (=> d!837750 (= (matchRSpec!1093 r!17423 s!11993) e!1838185)))

(declare-fun b!2912378 () Bool)

(assert (=> b!2912378 (= e!1838185 call!190148)))

(declare-fun b!2912379 () Bool)

(declare-fun e!1838191 () Bool)

(assert (=> b!2912379 (= e!1838189 e!1838191)))

(declare-fun res!1202200 () Bool)

(assert (=> b!2912379 (= res!1202200 (matchRSpec!1093 (regOne!18425 r!17423) s!11993))))

(assert (=> b!2912379 (=> res!1202200 e!1838191)))

(declare-fun b!2912380 () Bool)

(assert (=> b!2912380 (= e!1838191 (matchRSpec!1093 (regTwo!18425 r!17423) s!11993))))

(declare-fun b!2912381 () Bool)

(assert (=> b!2912381 (= e!1838189 e!1838186)))

(assert (=> b!2912381 (= c!474924 (is-Star!8956 r!17423))))

(assert (= (and d!837750 c!474925) b!2912378))

(assert (= (and d!837750 (not c!474925)) b!2912374))

(assert (= (and b!2912374 res!1202198) b!2912372))

(assert (= (and b!2912372 c!474922) b!2912375))

(assert (= (and b!2912372 (not c!474922)) b!2912371))

(assert (= (and b!2912371 c!474923) b!2912379))

(assert (= (and b!2912371 (not c!474923)) b!2912381))

(assert (= (and b!2912379 (not res!1202200)) b!2912380))

(assert (= (and b!2912381 c!474924) b!2912373))

(assert (= (and b!2912381 (not c!474924)) b!2912377))

(assert (= (and b!2912373 (not res!1202199)) b!2912376))

(assert (= (or b!2912376 b!2912377) bm!190142))

(assert (= (or b!2912378 b!2912373) bm!190143))

(declare-fun m!3313071 () Bool)

(assert (=> bm!190142 m!3313071))

(assert (=> bm!190143 m!3312959))

(declare-fun m!3313073 () Bool)

(assert (=> b!2912379 m!3313073))

(declare-fun m!3313075 () Bool)

(assert (=> b!2912380 m!3313075))

(assert (=> b!2912187 d!837750))

(declare-fun bm!190149 () Bool)

(declare-fun call!190154 () Bool)

(assert (=> bm!190149 (= call!190154 (isEmpty!18939 s!11993))))

(declare-fun b!2912419 () Bool)

(declare-fun e!1838219 () Bool)

(declare-fun lt!1024040 () Bool)

(assert (=> b!2912419 (= e!1838219 (= lt!1024040 call!190154))))

(declare-fun b!2912420 () Bool)

(declare-fun res!1202223 () Bool)

(declare-fun e!1838214 () Bool)

(assert (=> b!2912420 (=> res!1202223 e!1838214)))

(declare-fun e!1838216 () Bool)

(assert (=> b!2912420 (= res!1202223 e!1838216)))

(declare-fun res!1202222 () Bool)

(assert (=> b!2912420 (=> (not res!1202222) (not e!1838216))))

(assert (=> b!2912420 (= res!1202222 lt!1024040)))

(declare-fun d!837754 () Bool)

(assert (=> d!837754 e!1838219))

(declare-fun c!474934 () Bool)

(assert (=> d!837754 (= c!474934 (is-EmptyExpr!8956 r!17423))))

(declare-fun e!1838217 () Bool)

(assert (=> d!837754 (= lt!1024040 e!1838217)))

(declare-fun c!474936 () Bool)

(assert (=> d!837754 (= c!474936 (isEmpty!18939 s!11993))))

(assert (=> d!837754 (validRegex!3689 r!17423)))

(assert (=> d!837754 (= (matchR!3838 r!17423 s!11993) lt!1024040)))

(declare-fun b!2912421 () Bool)

(declare-fun res!1202228 () Bool)

(assert (=> b!2912421 (=> (not res!1202228) (not e!1838216))))

(declare-fun tail!4694 (List!34821) List!34821)

(assert (=> b!2912421 (= res!1202228 (isEmpty!18939 (tail!4694 s!11993)))))

(declare-fun b!2912422 () Bool)

(declare-fun e!1838215 () Bool)

(assert (=> b!2912422 (= e!1838214 e!1838215)))

(declare-fun res!1202226 () Bool)

(assert (=> b!2912422 (=> (not res!1202226) (not e!1838215))))

(assert (=> b!2912422 (= res!1202226 (not lt!1024040))))

(declare-fun b!2912423 () Bool)

(declare-fun derivativeStep!2409 (Regex!8956 C!18098) Regex!8956)

(declare-fun head!6467 (List!34821) C!18098)

(assert (=> b!2912423 (= e!1838217 (matchR!3838 (derivativeStep!2409 r!17423 (head!6467 s!11993)) (tail!4694 s!11993)))))

(declare-fun b!2912424 () Bool)

(declare-fun e!1838218 () Bool)

(assert (=> b!2912424 (= e!1838215 e!1838218)))

(declare-fun res!1202227 () Bool)

(assert (=> b!2912424 (=> res!1202227 e!1838218)))

(assert (=> b!2912424 (= res!1202227 call!190154)))

(declare-fun b!2912425 () Bool)

(declare-fun e!1838213 () Bool)

(assert (=> b!2912425 (= e!1838219 e!1838213)))

(declare-fun c!474935 () Bool)

(assert (=> b!2912425 (= c!474935 (is-EmptyLang!8956 r!17423))))

(declare-fun b!2912426 () Bool)

(assert (=> b!2912426 (= e!1838216 (= (head!6467 s!11993) (c!474894 r!17423)))))

(declare-fun b!2912427 () Bool)

(declare-fun res!1202229 () Bool)

(assert (=> b!2912427 (=> res!1202229 e!1838214)))

(assert (=> b!2912427 (= res!1202229 (not (is-ElementMatch!8956 r!17423)))))

(assert (=> b!2912427 (= e!1838213 e!1838214)))

(declare-fun b!2912428 () Bool)

(declare-fun res!1202224 () Bool)

(assert (=> b!2912428 (=> (not res!1202224) (not e!1838216))))

(assert (=> b!2912428 (= res!1202224 (not call!190154))))

(declare-fun b!2912429 () Bool)

(assert (=> b!2912429 (= e!1838218 (not (= (head!6467 s!11993) (c!474894 r!17423))))))

(declare-fun b!2912430 () Bool)

(assert (=> b!2912430 (= e!1838217 (nullable!2794 r!17423))))

(declare-fun b!2912431 () Bool)

(assert (=> b!2912431 (= e!1838213 (not lt!1024040))))

(declare-fun b!2912432 () Bool)

(declare-fun res!1202225 () Bool)

(assert (=> b!2912432 (=> res!1202225 e!1838218)))

(assert (=> b!2912432 (= res!1202225 (not (isEmpty!18939 (tail!4694 s!11993))))))

(assert (= (and d!837754 c!474936) b!2912430))

(assert (= (and d!837754 (not c!474936)) b!2912423))

(assert (= (and d!837754 c!474934) b!2912419))

(assert (= (and d!837754 (not c!474934)) b!2912425))

(assert (= (and b!2912425 c!474935) b!2912431))

(assert (= (and b!2912425 (not c!474935)) b!2912427))

(assert (= (and b!2912427 (not res!1202229)) b!2912420))

(assert (= (and b!2912420 res!1202222) b!2912428))

(assert (= (and b!2912428 res!1202224) b!2912421))

(assert (= (and b!2912421 res!1202228) b!2912426))

(assert (= (and b!2912420 (not res!1202223)) b!2912422))

(assert (= (and b!2912422 res!1202226) b!2912424))

(assert (= (and b!2912424 (not res!1202227)) b!2912432))

(assert (= (and b!2912432 (not res!1202225)) b!2912429))

(assert (= (or b!2912419 b!2912424 b!2912428) bm!190149))

(declare-fun m!3313083 () Bool)

(assert (=> b!2912423 m!3313083))

(assert (=> b!2912423 m!3313083))

(declare-fun m!3313085 () Bool)

(assert (=> b!2912423 m!3313085))

(declare-fun m!3313087 () Bool)

(assert (=> b!2912423 m!3313087))

(assert (=> b!2912423 m!3313085))

(assert (=> b!2912423 m!3313087))

(declare-fun m!3313089 () Bool)

(assert (=> b!2912423 m!3313089))

(declare-fun m!3313091 () Bool)

(assert (=> b!2912430 m!3313091))

(assert (=> bm!190149 m!3312959))

(assert (=> b!2912426 m!3313083))

(assert (=> b!2912421 m!3313087))

(assert (=> b!2912421 m!3313087))

(declare-fun m!3313093 () Bool)

(assert (=> b!2912421 m!3313093))

(assert (=> b!2912432 m!3313087))

(assert (=> b!2912432 m!3313087))

(assert (=> b!2912432 m!3313093))

(assert (=> b!2912429 m!3313083))

(assert (=> d!837754 m!3312959))

(assert (=> d!837754 m!3312957))

(assert (=> b!2912187 d!837754))

(declare-fun d!837758 () Bool)

(assert (=> d!837758 (= (matchR!3838 r!17423 s!11993) (matchRSpec!1093 r!17423 s!11993))))

(declare-fun lt!1024043 () Unit!48251)

(declare-fun choose!17130 (Regex!8956 List!34821) Unit!48251)

(assert (=> d!837758 (= lt!1024043 (choose!17130 r!17423 s!11993))))

(assert (=> d!837758 (validRegex!3689 r!17423)))

(assert (=> d!837758 (= (mainMatchTheorem!1093 r!17423 s!11993) lt!1024043)))

(declare-fun bs!524609 () Bool)

(assert (= bs!524609 d!837758))

(assert (=> bs!524609 m!3312963))

(assert (=> bs!524609 m!3312961))

(declare-fun m!3313095 () Bool)

(assert (=> bs!524609 m!3313095))

(assert (=> bs!524609 m!3312957))

(assert (=> b!2912187 d!837758))

(declare-fun d!837760 () Bool)

(declare-fun res!1202230 () Bool)

(declare-fun e!1838221 () Bool)

(assert (=> d!837760 (=> res!1202230 e!1838221)))

(assert (=> d!837760 (= res!1202230 (is-ElementMatch!8956 r!17423))))

(assert (=> d!837760 (= (validRegex!3689 r!17423) e!1838221)))

(declare-fun b!2912433 () Bool)

(declare-fun e!1838223 () Bool)

(declare-fun call!190155 () Bool)

(assert (=> b!2912433 (= e!1838223 call!190155)))

(declare-fun b!2912434 () Bool)

(declare-fun e!1838225 () Bool)

(declare-fun call!190157 () Bool)

(assert (=> b!2912434 (= e!1838225 call!190157)))

(declare-fun b!2912435 () Bool)

(declare-fun e!1838222 () Bool)

(declare-fun e!1838220 () Bool)

(assert (=> b!2912435 (= e!1838222 e!1838220)))

(declare-fun res!1202232 () Bool)

(assert (=> b!2912435 (= res!1202232 (not (nullable!2794 (reg!9285 r!17423))))))

(assert (=> b!2912435 (=> (not res!1202232) (not e!1838220))))

(declare-fun bm!190150 () Bool)

(declare-fun call!190156 () Bool)

(assert (=> bm!190150 (= call!190157 call!190156)))

(declare-fun b!2912436 () Bool)

(assert (=> b!2912436 (= e!1838221 e!1838222)))

(declare-fun c!474938 () Bool)

(assert (=> b!2912436 (= c!474938 (is-Star!8956 r!17423))))

(declare-fun b!2912437 () Bool)

(declare-fun res!1202233 () Bool)

(assert (=> b!2912437 (=> (not res!1202233) (not e!1838225))))

(assert (=> b!2912437 (= res!1202233 call!190155)))

(declare-fun e!1838224 () Bool)

(assert (=> b!2912437 (= e!1838224 e!1838225)))

(declare-fun bm!190151 () Bool)

(declare-fun c!474937 () Bool)

(assert (=> bm!190151 (= call!190155 (validRegex!3689 (ite c!474937 (regOne!18425 r!17423) (regTwo!18424 r!17423))))))

(declare-fun b!2912438 () Bool)

(declare-fun res!1202231 () Bool)

(declare-fun e!1838226 () Bool)

(assert (=> b!2912438 (=> res!1202231 e!1838226)))

(assert (=> b!2912438 (= res!1202231 (not (is-Concat!14277 r!17423)))))

(assert (=> b!2912438 (= e!1838224 e!1838226)))

(declare-fun b!2912439 () Bool)

(assert (=> b!2912439 (= e!1838220 call!190156)))

(declare-fun b!2912440 () Bool)

(assert (=> b!2912440 (= e!1838226 e!1838223)))

(declare-fun res!1202234 () Bool)

(assert (=> b!2912440 (=> (not res!1202234) (not e!1838223))))

(assert (=> b!2912440 (= res!1202234 call!190157)))

(declare-fun b!2912441 () Bool)

(assert (=> b!2912441 (= e!1838222 e!1838224)))

(assert (=> b!2912441 (= c!474937 (is-Union!8956 r!17423))))

(declare-fun bm!190152 () Bool)

(assert (=> bm!190152 (= call!190156 (validRegex!3689 (ite c!474938 (reg!9285 r!17423) (ite c!474937 (regTwo!18425 r!17423) (regOne!18424 r!17423)))))))

(assert (= (and d!837760 (not res!1202230)) b!2912436))

(assert (= (and b!2912436 c!474938) b!2912435))

(assert (= (and b!2912436 (not c!474938)) b!2912441))

(assert (= (and b!2912435 res!1202232) b!2912439))

(assert (= (and b!2912441 c!474937) b!2912437))

(assert (= (and b!2912441 (not c!474937)) b!2912438))

(assert (= (and b!2912437 res!1202233) b!2912434))

(assert (= (and b!2912438 (not res!1202231)) b!2912440))

(assert (= (and b!2912440 res!1202234) b!2912433))

(assert (= (or b!2912437 b!2912433) bm!190151))

(assert (= (or b!2912434 b!2912440) bm!190150))

(assert (= (or b!2912439 bm!190150) bm!190152))

(declare-fun m!3313097 () Bool)

(assert (=> b!2912435 m!3313097))

(declare-fun m!3313099 () Bool)

(assert (=> bm!190151 m!3313099))

(declare-fun m!3313101 () Bool)

(assert (=> bm!190152 m!3313101))

(assert (=> start!283786 d!837760))

(declare-fun e!1838229 () Bool)

(assert (=> b!2912183 (= tp!935614 e!1838229)))

(declare-fun b!2912452 () Bool)

(assert (=> b!2912452 (= e!1838229 tp_is_empty!15475)))

(declare-fun b!2912455 () Bool)

(declare-fun tp!935648 () Bool)

(declare-fun tp!935650 () Bool)

(assert (=> b!2912455 (= e!1838229 (and tp!935648 tp!935650))))

(declare-fun b!2912453 () Bool)

(declare-fun tp!935652 () Bool)

(declare-fun tp!935649 () Bool)

(assert (=> b!2912453 (= e!1838229 (and tp!935652 tp!935649))))

(declare-fun b!2912454 () Bool)

(declare-fun tp!935651 () Bool)

(assert (=> b!2912454 (= e!1838229 tp!935651)))

(assert (= (and b!2912183 (is-ElementMatch!8956 (regOne!18424 r!17423))) b!2912452))

(assert (= (and b!2912183 (is-Concat!14277 (regOne!18424 r!17423))) b!2912453))

(assert (= (and b!2912183 (is-Star!8956 (regOne!18424 r!17423))) b!2912454))

(assert (= (and b!2912183 (is-Union!8956 (regOne!18424 r!17423))) b!2912455))

(declare-fun e!1838230 () Bool)

(assert (=> b!2912183 (= tp!935619 e!1838230)))

(declare-fun b!2912456 () Bool)

(assert (=> b!2912456 (= e!1838230 tp_is_empty!15475)))

(declare-fun b!2912459 () Bool)

(declare-fun tp!935653 () Bool)

(declare-fun tp!935655 () Bool)

(assert (=> b!2912459 (= e!1838230 (and tp!935653 tp!935655))))

(declare-fun b!2912457 () Bool)

(declare-fun tp!935657 () Bool)

(declare-fun tp!935654 () Bool)

(assert (=> b!2912457 (= e!1838230 (and tp!935657 tp!935654))))

(declare-fun b!2912458 () Bool)

(declare-fun tp!935656 () Bool)

(assert (=> b!2912458 (= e!1838230 tp!935656)))

(assert (= (and b!2912183 (is-ElementMatch!8956 (regTwo!18424 r!17423))) b!2912456))

(assert (= (and b!2912183 (is-Concat!14277 (regTwo!18424 r!17423))) b!2912457))

(assert (= (and b!2912183 (is-Star!8956 (regTwo!18424 r!17423))) b!2912458))

(assert (= (and b!2912183 (is-Union!8956 (regTwo!18424 r!17423))) b!2912459))

(declare-fun b!2912464 () Bool)

(declare-fun e!1838233 () Bool)

(declare-fun tp!935660 () Bool)

(assert (=> b!2912464 (= e!1838233 (and tp_is_empty!15475 tp!935660))))

(assert (=> b!2912190 (= tp!935618 e!1838233)))

(assert (= (and b!2912190 (is-Cons!34697 (t!233886 s!11993))) b!2912464))

(declare-fun e!1838234 () Bool)

(assert (=> b!2912186 (= tp!935615 e!1838234)))

(declare-fun b!2912465 () Bool)

(assert (=> b!2912465 (= e!1838234 tp_is_empty!15475)))

(declare-fun b!2912468 () Bool)

(declare-fun tp!935661 () Bool)

(declare-fun tp!935663 () Bool)

(assert (=> b!2912468 (= e!1838234 (and tp!935661 tp!935663))))

(declare-fun b!2912466 () Bool)

(declare-fun tp!935665 () Bool)

(declare-fun tp!935662 () Bool)

(assert (=> b!2912466 (= e!1838234 (and tp!935665 tp!935662))))

(declare-fun b!2912467 () Bool)

(declare-fun tp!935664 () Bool)

(assert (=> b!2912467 (= e!1838234 tp!935664)))

(assert (= (and b!2912186 (is-ElementMatch!8956 (reg!9285 r!17423))) b!2912465))

(assert (= (and b!2912186 (is-Concat!14277 (reg!9285 r!17423))) b!2912466))

(assert (= (and b!2912186 (is-Star!8956 (reg!9285 r!17423))) b!2912467))

(assert (= (and b!2912186 (is-Union!8956 (reg!9285 r!17423))) b!2912468))

(declare-fun e!1838235 () Bool)

(assert (=> b!2912188 (= tp!935616 e!1838235)))

(declare-fun b!2912469 () Bool)

(assert (=> b!2912469 (= e!1838235 tp_is_empty!15475)))

(declare-fun b!2912472 () Bool)

(declare-fun tp!935666 () Bool)

(declare-fun tp!935668 () Bool)

(assert (=> b!2912472 (= e!1838235 (and tp!935666 tp!935668))))

(declare-fun b!2912470 () Bool)

(declare-fun tp!935670 () Bool)

(declare-fun tp!935667 () Bool)

(assert (=> b!2912470 (= e!1838235 (and tp!935670 tp!935667))))

(declare-fun b!2912471 () Bool)

(declare-fun tp!935669 () Bool)

(assert (=> b!2912471 (= e!1838235 tp!935669)))

(assert (= (and b!2912188 (is-ElementMatch!8956 (regOne!18425 r!17423))) b!2912469))

(assert (= (and b!2912188 (is-Concat!14277 (regOne!18425 r!17423))) b!2912470))

(assert (= (and b!2912188 (is-Star!8956 (regOne!18425 r!17423))) b!2912471))

(assert (= (and b!2912188 (is-Union!8956 (regOne!18425 r!17423))) b!2912472))

(declare-fun e!1838236 () Bool)

(assert (=> b!2912188 (= tp!935617 e!1838236)))

(declare-fun b!2912473 () Bool)

(assert (=> b!2912473 (= e!1838236 tp_is_empty!15475)))

(declare-fun b!2912476 () Bool)

(declare-fun tp!935671 () Bool)

(declare-fun tp!935673 () Bool)

(assert (=> b!2912476 (= e!1838236 (and tp!935671 tp!935673))))

(declare-fun b!2912474 () Bool)

(declare-fun tp!935675 () Bool)

(declare-fun tp!935672 () Bool)

(assert (=> b!2912474 (= e!1838236 (and tp!935675 tp!935672))))

(declare-fun b!2912475 () Bool)

(declare-fun tp!935674 () Bool)

(assert (=> b!2912475 (= e!1838236 tp!935674)))

(assert (= (and b!2912188 (is-ElementMatch!8956 (regTwo!18425 r!17423))) b!2912473))

(assert (= (and b!2912188 (is-Concat!14277 (regTwo!18425 r!17423))) b!2912474))

(assert (= (and b!2912188 (is-Star!8956 (regTwo!18425 r!17423))) b!2912475))

(assert (= (and b!2912188 (is-Union!8956 (regTwo!18425 r!17423))) b!2912476))

(push 1)

(assert (not d!837748))

(assert (not b!2912472))

(assert (not b!2912426))

(assert (not d!837734))

(assert (not d!837732))

(assert (not b!2912303))

(assert (not d!837728))

(assert (not b!2912430))

(assert (not b!2912468))

(assert (not bm!190127))

(assert (not bm!190131))

(assert (not b!2912308))

(assert (not b!2912307))

(assert (not b!2912470))

(assert (not b!2912467))

(assert (not b!2912423))

(assert (not b!2912421))

(assert (not b!2912457))

(assert (not bm!190128))

(assert (not b!2912455))

(assert (not d!837730))

(assert (not bm!190143))

(assert (not bm!190151))

(assert (not b!2912459))

(assert (not bm!190152))

(assert (not bm!190130))

(assert (not b!2912432))

(assert (not b!2912475))

(assert (not b!2912471))

(assert (not b!2912302))

(assert (not b!2912429))

(assert (not b!2912258))

(assert (not b!2912379))

(assert (not b!2912304))

(assert (not bm!190149))

(assert (not b!2912464))

(assert (not d!837758))

(assert (not bm!190142))

(assert (not b!2912466))

(assert (not d!837754))

(assert tp_is_empty!15475)

(assert (not d!837746))

(assert (not b!2912380))

(assert (not b!2912474))

(assert (not b!2912458))

(assert (not b!2912453))

(assert (not b!2912275))

(assert (not b!2912305))

(assert (not b!2912454))

(assert (not b!2912476))

(assert (not b!2912435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

