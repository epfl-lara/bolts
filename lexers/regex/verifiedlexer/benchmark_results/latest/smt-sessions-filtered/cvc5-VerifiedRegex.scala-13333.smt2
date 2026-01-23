; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723808 () Bool)

(assert start!723808)

(declare-fun b!7460132 () Bool)

(assert (=> b!7460132 true))

(assert (=> b!7460132 true))

(assert (=> b!7460132 true))

(declare-fun lambda!461557 () Int)

(declare-fun lambda!461556 () Int)

(assert (=> b!7460132 (not (= lambda!461557 lambda!461556))))

(assert (=> b!7460132 true))

(assert (=> b!7460132 true))

(assert (=> b!7460132 true))

(declare-fun b!7460124 () Bool)

(declare-fun e!4452191 () Bool)

(declare-fun tp_is_empty!49345 () Bool)

(declare-fun tp!2162060 () Bool)

(assert (=> b!7460124 (= e!4452191 (and tp_is_empty!49345 tp!2162060))))

(declare-fun b!7460125 () Bool)

(declare-fun e!4452192 () Bool)

(declare-fun tp!2162069 () Bool)

(declare-fun tp!2162074 () Bool)

(assert (=> b!7460125 (= e!4452192 (and tp!2162069 tp!2162074))))

(declare-fun b!7460126 () Bool)

(assert (=> b!7460126 (= e!4452192 tp_is_empty!49345)))

(declare-fun b!7460127 () Bool)

(declare-fun res!2992420 () Bool)

(declare-fun e!4452193 () Bool)

(assert (=> b!7460127 (=> (not res!2992420) (not e!4452193))))

(declare-datatypes ((C!39330 0))(
  ( (C!39331 (val!30063 Int)) )
))
(declare-datatypes ((Regex!19528 0))(
  ( (ElementMatch!19528 (c!1379165 C!39330)) (Concat!28373 (regOne!39568 Regex!19528) (regTwo!39568 Regex!19528)) (EmptyExpr!19528) (Star!19528 (reg!19857 Regex!19528)) (EmptyLang!19528) (Union!19528 (regOne!39569 Regex!19528) (regTwo!39569 Regex!19528)) )
))
(declare-fun rTail!78 () Regex!19528)

(declare-fun validRegex!10042 (Regex!19528) Bool)

(assert (=> b!7460127 (= res!2992420 (validRegex!10042 rTail!78))))

(declare-fun b!7460128 () Bool)

(declare-fun e!4452190 () Bool)

(declare-fun tp!2162066 () Bool)

(assert (=> b!7460128 (= e!4452190 tp!2162066)))

(declare-fun b!7460129 () Bool)

(assert (=> b!7460129 (= e!4452190 tp_is_empty!49345)))

(declare-fun b!7460130 () Bool)

(declare-fun e!4452187 () Bool)

(declare-fun tp!2162062 () Bool)

(declare-fun tp!2162072 () Bool)

(assert (=> b!7460130 (= e!4452187 (and tp!2162062 tp!2162072))))

(declare-fun b!7460131 () Bool)

(declare-fun e!4452188 () Bool)

(assert (=> b!7460131 (= e!4452193 (not e!4452188))))

(declare-fun res!2992419 () Bool)

(assert (=> b!7460131 (=> res!2992419 e!4452188)))

(declare-fun lt!2622427 () Bool)

(assert (=> b!7460131 (= res!2992419 lt!2622427)))

(declare-fun lt!2622422 () Regex!19528)

(declare-datatypes ((List!72244 0))(
  ( (Nil!72120) (Cons!72120 (h!78568 C!39330) (t!386813 List!72244)) )
))
(declare-fun s!13591 () List!72244)

(declare-fun matchR!9292 (Regex!19528 List!72244) Bool)

(declare-fun matchRSpec!4207 (Regex!19528 List!72244) Bool)

(assert (=> b!7460131 (= (matchR!9292 lt!2622422 s!13591) (matchRSpec!4207 lt!2622422 s!13591))))

(declare-datatypes ((Unit!165891 0))(
  ( (Unit!165892) )
))
(declare-fun lt!2622425 () Unit!165891)

(declare-fun mainMatchTheorem!4201 (Regex!19528 List!72244) Unit!165891)

(assert (=> b!7460131 (= lt!2622425 (mainMatchTheorem!4201 lt!2622422 s!13591))))

(declare-fun lt!2622424 () Regex!19528)

(assert (=> b!7460131 (= lt!2622427 (matchRSpec!4207 lt!2622424 s!13591))))

(assert (=> b!7460131 (= lt!2622427 (matchR!9292 lt!2622424 s!13591))))

(declare-fun lt!2622426 () Unit!165891)

(assert (=> b!7460131 (= lt!2622426 (mainMatchTheorem!4201 lt!2622424 s!13591))))

(declare-fun r2!5783 () Regex!19528)

(declare-fun r1!5845 () Regex!19528)

(assert (=> b!7460131 (= lt!2622422 (Union!19528 (Concat!28373 r1!5845 rTail!78) (Concat!28373 r2!5783 rTail!78)))))

(declare-fun lt!2622421 () Regex!19528)

(assert (=> b!7460131 (= lt!2622424 (Concat!28373 lt!2622421 rTail!78))))

(assert (=> b!7460131 (= lt!2622421 (Union!19528 r1!5845 r2!5783))))

(declare-fun e!4452189 () Bool)

(assert (=> b!7460132 (= e!4452188 e!4452189)))

(declare-fun res!2992421 () Bool)

(assert (=> b!7460132 (=> res!2992421 e!4452189)))

(assert (=> b!7460132 (= res!2992421 (not (validRegex!10042 lt!2622421)))))

(declare-fun Exists!4147 (Int) Bool)

(assert (=> b!7460132 (= (Exists!4147 lambda!461556) (Exists!4147 lambda!461557))))

(declare-fun lt!2622420 () Unit!165891)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2481 (Regex!19528 Regex!19528 List!72244) Unit!165891)

(assert (=> b!7460132 (= lt!2622420 (lemmaExistCutMatchRandMatchRSpecEquivalent!2481 lt!2622421 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68506 0))(
  ( (tuple2!68507 (_1!37556 List!72244) (_2!37556 List!72244)) )
))
(declare-datatypes ((Option!17085 0))(
  ( (None!17084) (Some!17084 (v!54213 tuple2!68506)) )
))
(declare-fun isDefined!13774 (Option!17085) Bool)

(declare-fun findConcatSeparation!3207 (Regex!19528 Regex!19528 List!72244 List!72244 List!72244) Option!17085)

(assert (=> b!7460132 (= (isDefined!13774 (findConcatSeparation!3207 lt!2622421 rTail!78 Nil!72120 s!13591 s!13591)) (Exists!4147 lambda!461556))))

(declare-fun lt!2622423 () Unit!165891)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2965 (Regex!19528 Regex!19528 List!72244) Unit!165891)

(assert (=> b!7460132 (= lt!2622423 (lemmaFindConcatSeparationEquivalentToExists!2965 lt!2622421 rTail!78 s!13591))))

(declare-fun res!2992418 () Bool)

(assert (=> start!723808 (=> (not res!2992418) (not e!4452193))))

(assert (=> start!723808 (= res!2992418 (validRegex!10042 r1!5845))))

(assert (=> start!723808 e!4452193))

(assert (=> start!723808 e!4452187))

(assert (=> start!723808 e!4452190))

(assert (=> start!723808 e!4452192))

(assert (=> start!723808 e!4452191))

(declare-fun b!7460133 () Bool)

(assert (=> b!7460133 (= e!4452187 tp_is_empty!49345)))

(declare-fun b!7460134 () Bool)

(declare-fun tp!2162064 () Bool)

(declare-fun tp!2162067 () Bool)

(assert (=> b!7460134 (= e!4452192 (and tp!2162064 tp!2162067))))

(declare-fun b!7460135 () Bool)

(declare-fun ++!17180 (List!72244 List!72244) List!72244)

(assert (=> b!7460135 (= e!4452189 (= (++!17180 Nil!72120 s!13591) s!13591))))

(declare-fun b!7460136 () Bool)

(declare-fun res!2992417 () Bool)

(assert (=> b!7460136 (=> (not res!2992417) (not e!4452193))))

(assert (=> b!7460136 (= res!2992417 (validRegex!10042 r2!5783))))

(declare-fun b!7460137 () Bool)

(declare-fun tp!2162061 () Bool)

(declare-fun tp!2162065 () Bool)

(assert (=> b!7460137 (= e!4452187 (and tp!2162061 tp!2162065))))

(declare-fun b!7460138 () Bool)

(declare-fun tp!2162071 () Bool)

(declare-fun tp!2162075 () Bool)

(assert (=> b!7460138 (= e!4452190 (and tp!2162071 tp!2162075))))

(declare-fun b!7460139 () Bool)

(declare-fun tp!2162070 () Bool)

(assert (=> b!7460139 (= e!4452187 tp!2162070)))

(declare-fun b!7460140 () Bool)

(declare-fun tp!2162073 () Bool)

(declare-fun tp!2162063 () Bool)

(assert (=> b!7460140 (= e!4452190 (and tp!2162073 tp!2162063))))

(declare-fun b!7460141 () Bool)

(declare-fun tp!2162068 () Bool)

(assert (=> b!7460141 (= e!4452192 tp!2162068)))

(assert (= (and start!723808 res!2992418) b!7460136))

(assert (= (and b!7460136 res!2992417) b!7460127))

(assert (= (and b!7460127 res!2992420) b!7460131))

(assert (= (and b!7460131 (not res!2992419)) b!7460132))

(assert (= (and b!7460132 (not res!2992421)) b!7460135))

(assert (= (and start!723808 (is-ElementMatch!19528 r1!5845)) b!7460133))

(assert (= (and start!723808 (is-Concat!28373 r1!5845)) b!7460130))

(assert (= (and start!723808 (is-Star!19528 r1!5845)) b!7460139))

(assert (= (and start!723808 (is-Union!19528 r1!5845)) b!7460137))

(assert (= (and start!723808 (is-ElementMatch!19528 r2!5783)) b!7460129))

(assert (= (and start!723808 (is-Concat!28373 r2!5783)) b!7460140))

(assert (= (and start!723808 (is-Star!19528 r2!5783)) b!7460128))

(assert (= (and start!723808 (is-Union!19528 r2!5783)) b!7460138))

(assert (= (and start!723808 (is-ElementMatch!19528 rTail!78)) b!7460126))

(assert (= (and start!723808 (is-Concat!28373 rTail!78)) b!7460134))

(assert (= (and start!723808 (is-Star!19528 rTail!78)) b!7460141))

(assert (= (and start!723808 (is-Union!19528 rTail!78)) b!7460125))

(assert (= (and start!723808 (is-Cons!72120 s!13591)) b!7460124))

(declare-fun m!8062044 () Bool)

(assert (=> b!7460135 m!8062044))

(declare-fun m!8062046 () Bool)

(assert (=> b!7460132 m!8062046))

(declare-fun m!8062048 () Bool)

(assert (=> b!7460132 m!8062048))

(declare-fun m!8062050 () Bool)

(assert (=> b!7460132 m!8062050))

(assert (=> b!7460132 m!8062046))

(declare-fun m!8062052 () Bool)

(assert (=> b!7460132 m!8062052))

(declare-fun m!8062054 () Bool)

(assert (=> b!7460132 m!8062054))

(assert (=> b!7460132 m!8062052))

(declare-fun m!8062056 () Bool)

(assert (=> b!7460132 m!8062056))

(declare-fun m!8062058 () Bool)

(assert (=> b!7460132 m!8062058))

(declare-fun m!8062060 () Bool)

(assert (=> b!7460127 m!8062060))

(declare-fun m!8062062 () Bool)

(assert (=> start!723808 m!8062062))

(declare-fun m!8062064 () Bool)

(assert (=> b!7460136 m!8062064))

(declare-fun m!8062066 () Bool)

(assert (=> b!7460131 m!8062066))

(declare-fun m!8062068 () Bool)

(assert (=> b!7460131 m!8062068))

(declare-fun m!8062070 () Bool)

(assert (=> b!7460131 m!8062070))

(declare-fun m!8062072 () Bool)

(assert (=> b!7460131 m!8062072))

(declare-fun m!8062074 () Bool)

(assert (=> b!7460131 m!8062074))

(declare-fun m!8062076 () Bool)

(assert (=> b!7460131 m!8062076))

(push 1)

(assert (not b!7460141))

(assert (not b!7460136))

(assert (not b!7460128))

(assert (not b!7460135))

(assert (not b!7460131))

(assert (not b!7460127))

(assert (not b!7460140))

(assert (not b!7460139))

(assert tp_is_empty!49345)

(assert (not b!7460124))

(assert (not b!7460130))

(assert (not b!7460132))

(assert (not b!7460134))

(assert (not start!723808))

(assert (not b!7460125))

(assert (not b!7460137))

(assert (not b!7460138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7460234 () Bool)

(declare-fun e!4452236 () Bool)

(declare-fun e!4452241 () Bool)

(assert (=> b!7460234 (= e!4452236 e!4452241)))

(declare-fun res!2992461 () Bool)

(declare-fun nullable!8508 (Regex!19528) Bool)

(assert (=> b!7460234 (= res!2992461 (not (nullable!8508 (reg!19857 rTail!78))))))

(assert (=> b!7460234 (=> (not res!2992461) (not e!4452241))))

(declare-fun b!7460236 () Bool)

(declare-fun e!4452238 () Bool)

(assert (=> b!7460236 (= e!4452236 e!4452238)))

(declare-fun c!1379172 () Bool)

(assert (=> b!7460236 (= c!1379172 (is-Union!19528 rTail!78))))

(declare-fun b!7460237 () Bool)

(declare-fun res!2992459 () Bool)

(declare-fun e!4452237 () Bool)

(assert (=> b!7460237 (=> (not res!2992459) (not e!4452237))))

(declare-fun call!685332 () Bool)

(assert (=> b!7460237 (= res!2992459 call!685332)))

(assert (=> b!7460237 (= e!4452238 e!4452237)))

(declare-fun bm!685326 () Bool)

(assert (=> bm!685326 (= call!685332 (validRegex!10042 (ite c!1379172 (regOne!39569 rTail!78) (regOne!39568 rTail!78))))))

(declare-fun b!7460238 () Bool)

(declare-fun e!4452239 () Bool)

(assert (=> b!7460238 (= e!4452239 e!4452236)))

(declare-fun c!1379171 () Bool)

(assert (=> b!7460238 (= c!1379171 (is-Star!19528 rTail!78))))

(declare-fun b!7460239 () Bool)

(declare-fun call!685333 () Bool)

(assert (=> b!7460239 (= e!4452241 call!685333)))

(declare-fun b!7460240 () Bool)

(declare-fun e!4452235 () Bool)

(declare-fun e!4452240 () Bool)

(assert (=> b!7460240 (= e!4452235 e!4452240)))

(declare-fun res!2992463 () Bool)

(assert (=> b!7460240 (=> (not res!2992463) (not e!4452240))))

(assert (=> b!7460240 (= res!2992463 call!685332)))

(declare-fun bm!685327 () Bool)

(declare-fun call!685331 () Bool)

(assert (=> bm!685327 (= call!685331 call!685333)))

(declare-fun b!7460235 () Bool)

(declare-fun res!2992462 () Bool)

(assert (=> b!7460235 (=> res!2992462 e!4452235)))

(assert (=> b!7460235 (= res!2992462 (not (is-Concat!28373 rTail!78)))))

(assert (=> b!7460235 (= e!4452238 e!4452235)))

(declare-fun d!2298014 () Bool)

(declare-fun res!2992460 () Bool)

(assert (=> d!2298014 (=> res!2992460 e!4452239)))

(assert (=> d!2298014 (= res!2992460 (is-ElementMatch!19528 rTail!78))))

(assert (=> d!2298014 (= (validRegex!10042 rTail!78) e!4452239)))

(declare-fun b!7460241 () Bool)

(assert (=> b!7460241 (= e!4452240 call!685331)))

(declare-fun b!7460242 () Bool)

(assert (=> b!7460242 (= e!4452237 call!685331)))

(declare-fun bm!685328 () Bool)

(assert (=> bm!685328 (= call!685333 (validRegex!10042 (ite c!1379171 (reg!19857 rTail!78) (ite c!1379172 (regTwo!39569 rTail!78) (regTwo!39568 rTail!78)))))))

(assert (= (and d!2298014 (not res!2992460)) b!7460238))

(assert (= (and b!7460238 c!1379171) b!7460234))

(assert (= (and b!7460238 (not c!1379171)) b!7460236))

(assert (= (and b!7460234 res!2992461) b!7460239))

(assert (= (and b!7460236 c!1379172) b!7460237))

(assert (= (and b!7460236 (not c!1379172)) b!7460235))

(assert (= (and b!7460237 res!2992459) b!7460242))

(assert (= (and b!7460235 (not res!2992462)) b!7460240))

(assert (= (and b!7460240 res!2992463) b!7460241))

(assert (= (or b!7460242 b!7460241) bm!685327))

(assert (= (or b!7460237 b!7460240) bm!685326))

(assert (= (or b!7460239 bm!685327) bm!685328))

(declare-fun m!8062112 () Bool)

(assert (=> b!7460234 m!8062112))

(declare-fun m!8062114 () Bool)

(assert (=> bm!685326 m!8062114))

(declare-fun m!8062116 () Bool)

(assert (=> bm!685328 m!8062116))

(assert (=> b!7460127 d!2298014))

(declare-fun d!2298018 () Bool)

(declare-fun choose!57666 (Int) Bool)

(assert (=> d!2298018 (= (Exists!4147 lambda!461557) (choose!57666 lambda!461557))))

(declare-fun bs!1929344 () Bool)

(assert (= bs!1929344 d!2298018))

(declare-fun m!8062118 () Bool)

(assert (=> bs!1929344 m!8062118))

(assert (=> b!7460132 d!2298018))

(declare-fun d!2298020 () Bool)

(assert (=> d!2298020 (= (Exists!4147 lambda!461556) (choose!57666 lambda!461556))))

(declare-fun bs!1929345 () Bool)

(assert (= bs!1929345 d!2298020))

(declare-fun m!8062120 () Bool)

(assert (=> bs!1929345 m!8062120))

(assert (=> b!7460132 d!2298020))

(declare-fun bs!1929346 () Bool)

(declare-fun d!2298022 () Bool)

(assert (= bs!1929346 (and d!2298022 b!7460132)))

(declare-fun lambda!461568 () Int)

(assert (=> bs!1929346 (= lambda!461568 lambda!461556)))

(assert (=> bs!1929346 (not (= lambda!461568 lambda!461557))))

(assert (=> d!2298022 true))

(assert (=> d!2298022 true))

(assert (=> d!2298022 true))

(assert (=> d!2298022 (= (isDefined!13774 (findConcatSeparation!3207 lt!2622421 rTail!78 Nil!72120 s!13591 s!13591)) (Exists!4147 lambda!461568))))

(declare-fun lt!2622454 () Unit!165891)

(declare-fun choose!57667 (Regex!19528 Regex!19528 List!72244) Unit!165891)

(assert (=> d!2298022 (= lt!2622454 (choose!57667 lt!2622421 rTail!78 s!13591))))

(assert (=> d!2298022 (validRegex!10042 lt!2622421)))

(assert (=> d!2298022 (= (lemmaFindConcatSeparationEquivalentToExists!2965 lt!2622421 rTail!78 s!13591) lt!2622454)))

(declare-fun bs!1929347 () Bool)

(assert (= bs!1929347 d!2298022))

(declare-fun m!8062122 () Bool)

(assert (=> bs!1929347 m!8062122))

(assert (=> bs!1929347 m!8062046))

(assert (=> bs!1929347 m!8062048))

(declare-fun m!8062124 () Bool)

(assert (=> bs!1929347 m!8062124))

(assert (=> bs!1929347 m!8062054))

(assert (=> bs!1929347 m!8062046))

(assert (=> b!7460132 d!2298022))

(declare-fun d!2298024 () Bool)

(declare-fun isEmpty!41131 (Option!17085) Bool)

(assert (=> d!2298024 (= (isDefined!13774 (findConcatSeparation!3207 lt!2622421 rTail!78 Nil!72120 s!13591 s!13591)) (not (isEmpty!41131 (findConcatSeparation!3207 lt!2622421 rTail!78 Nil!72120 s!13591 s!13591))))))

(declare-fun bs!1929348 () Bool)

(assert (= bs!1929348 d!2298024))

(assert (=> bs!1929348 m!8062046))

(declare-fun m!8062126 () Bool)

(assert (=> bs!1929348 m!8062126))

(assert (=> b!7460132 d!2298024))

(declare-fun b!7460297 () Bool)

(declare-fun e!4452275 () Bool)

(declare-fun lt!2622461 () Option!17085)

(declare-fun get!25170 (Option!17085) tuple2!68506)

(assert (=> b!7460297 (= e!4452275 (= (++!17180 (_1!37556 (get!25170 lt!2622461)) (_2!37556 (get!25170 lt!2622461))) s!13591))))

(declare-fun b!7460298 () Bool)

(declare-fun e!4452274 () Option!17085)

(assert (=> b!7460298 (= e!4452274 None!17084)))

(declare-fun b!7460299 () Bool)

(declare-fun e!4452276 () Bool)

(assert (=> b!7460299 (= e!4452276 (matchR!9292 rTail!78 s!13591))))

(declare-fun b!7460300 () Bool)

(declare-fun e!4452272 () Option!17085)

(assert (=> b!7460300 (= e!4452272 (Some!17084 (tuple2!68507 Nil!72120 s!13591)))))

(declare-fun b!7460301 () Bool)

(assert (=> b!7460301 (= e!4452272 e!4452274)))

(declare-fun c!1379185 () Bool)

(assert (=> b!7460301 (= c!1379185 (is-Nil!72120 s!13591))))

(declare-fun b!7460302 () Bool)

(declare-fun res!2992496 () Bool)

(assert (=> b!7460302 (=> (not res!2992496) (not e!4452275))))

(assert (=> b!7460302 (= res!2992496 (matchR!9292 rTail!78 (_2!37556 (get!25170 lt!2622461))))))

(declare-fun b!7460303 () Bool)

(declare-fun e!4452273 () Bool)

(assert (=> b!7460303 (= e!4452273 (not (isDefined!13774 lt!2622461)))))

(declare-fun b!7460304 () Bool)

(declare-fun lt!2622462 () Unit!165891)

(declare-fun lt!2622463 () Unit!165891)

(assert (=> b!7460304 (= lt!2622462 lt!2622463)))

(assert (=> b!7460304 (= (++!17180 (++!17180 Nil!72120 (Cons!72120 (h!78568 s!13591) Nil!72120)) (t!386813 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3060 (List!72244 C!39330 List!72244 List!72244) Unit!165891)

(assert (=> b!7460304 (= lt!2622463 (lemmaMoveElementToOtherListKeepsConcatEq!3060 Nil!72120 (h!78568 s!13591) (t!386813 s!13591) s!13591))))

(assert (=> b!7460304 (= e!4452274 (findConcatSeparation!3207 lt!2622421 rTail!78 (++!17180 Nil!72120 (Cons!72120 (h!78568 s!13591) Nil!72120)) (t!386813 s!13591) s!13591))))

(declare-fun d!2298026 () Bool)

(assert (=> d!2298026 e!4452273))

(declare-fun res!2992495 () Bool)

(assert (=> d!2298026 (=> res!2992495 e!4452273)))

(assert (=> d!2298026 (= res!2992495 e!4452275)))

(declare-fun res!2992494 () Bool)

(assert (=> d!2298026 (=> (not res!2992494) (not e!4452275))))

(assert (=> d!2298026 (= res!2992494 (isDefined!13774 lt!2622461))))

(assert (=> d!2298026 (= lt!2622461 e!4452272)))

(declare-fun c!1379186 () Bool)

(assert (=> d!2298026 (= c!1379186 e!4452276)))

(declare-fun res!2992498 () Bool)

(assert (=> d!2298026 (=> (not res!2992498) (not e!4452276))))

(assert (=> d!2298026 (= res!2992498 (matchR!9292 lt!2622421 Nil!72120))))

(assert (=> d!2298026 (validRegex!10042 lt!2622421)))

(assert (=> d!2298026 (= (findConcatSeparation!3207 lt!2622421 rTail!78 Nil!72120 s!13591 s!13591) lt!2622461)))

(declare-fun b!7460305 () Bool)

(declare-fun res!2992497 () Bool)

(assert (=> b!7460305 (=> (not res!2992497) (not e!4452275))))

(assert (=> b!7460305 (= res!2992497 (matchR!9292 lt!2622421 (_1!37556 (get!25170 lt!2622461))))))

(assert (= (and d!2298026 res!2992498) b!7460299))

(assert (= (and d!2298026 c!1379186) b!7460300))

(assert (= (and d!2298026 (not c!1379186)) b!7460301))

(assert (= (and b!7460301 c!1379185) b!7460298))

(assert (= (and b!7460301 (not c!1379185)) b!7460304))

(assert (= (and d!2298026 res!2992494) b!7460305))

(assert (= (and b!7460305 res!2992497) b!7460302))

(assert (= (and b!7460302 res!2992496) b!7460297))

(assert (= (and d!2298026 (not res!2992495)) b!7460303))

(declare-fun m!8062128 () Bool)

(assert (=> d!2298026 m!8062128))

(declare-fun m!8062130 () Bool)

(assert (=> d!2298026 m!8062130))

(assert (=> d!2298026 m!8062054))

(declare-fun m!8062132 () Bool)

(assert (=> b!7460304 m!8062132))

(assert (=> b!7460304 m!8062132))

(declare-fun m!8062134 () Bool)

(assert (=> b!7460304 m!8062134))

(declare-fun m!8062136 () Bool)

(assert (=> b!7460304 m!8062136))

(assert (=> b!7460304 m!8062132))

(declare-fun m!8062138 () Bool)

(assert (=> b!7460304 m!8062138))

(declare-fun m!8062140 () Bool)

(assert (=> b!7460297 m!8062140))

(declare-fun m!8062142 () Bool)

(assert (=> b!7460297 m!8062142))

(assert (=> b!7460303 m!8062128))

(assert (=> b!7460302 m!8062140))

(declare-fun m!8062144 () Bool)

(assert (=> b!7460302 m!8062144))

(declare-fun m!8062146 () Bool)

(assert (=> b!7460299 m!8062146))

(assert (=> b!7460305 m!8062140))

(declare-fun m!8062148 () Bool)

(assert (=> b!7460305 m!8062148))

(assert (=> b!7460132 d!2298026))

(declare-fun b!7460306 () Bool)

(declare-fun e!4452278 () Bool)

(declare-fun e!4452283 () Bool)

(assert (=> b!7460306 (= e!4452278 e!4452283)))

(declare-fun res!2992501 () Bool)

(assert (=> b!7460306 (= res!2992501 (not (nullable!8508 (reg!19857 lt!2622421))))))

(assert (=> b!7460306 (=> (not res!2992501) (not e!4452283))))

(declare-fun b!7460308 () Bool)

(declare-fun e!4452280 () Bool)

(assert (=> b!7460308 (= e!4452278 e!4452280)))

(declare-fun c!1379188 () Bool)

(assert (=> b!7460308 (= c!1379188 (is-Union!19528 lt!2622421))))

(declare-fun b!7460309 () Bool)

(declare-fun res!2992499 () Bool)

(declare-fun e!4452279 () Bool)

(assert (=> b!7460309 (=> (not res!2992499) (not e!4452279))))

(declare-fun call!685339 () Bool)

(assert (=> b!7460309 (= res!2992499 call!685339)))

(assert (=> b!7460309 (= e!4452280 e!4452279)))

(declare-fun bm!685333 () Bool)

(assert (=> bm!685333 (= call!685339 (validRegex!10042 (ite c!1379188 (regOne!39569 lt!2622421) (regOne!39568 lt!2622421))))))

(declare-fun b!7460310 () Bool)

(declare-fun e!4452281 () Bool)

(assert (=> b!7460310 (= e!4452281 e!4452278)))

(declare-fun c!1379187 () Bool)

(assert (=> b!7460310 (= c!1379187 (is-Star!19528 lt!2622421))))

(declare-fun b!7460311 () Bool)

(declare-fun call!685340 () Bool)

(assert (=> b!7460311 (= e!4452283 call!685340)))

(declare-fun b!7460312 () Bool)

(declare-fun e!4452277 () Bool)

(declare-fun e!4452282 () Bool)

(assert (=> b!7460312 (= e!4452277 e!4452282)))

(declare-fun res!2992503 () Bool)

(assert (=> b!7460312 (=> (not res!2992503) (not e!4452282))))

(assert (=> b!7460312 (= res!2992503 call!685339)))

(declare-fun bm!685334 () Bool)

(declare-fun call!685338 () Bool)

(assert (=> bm!685334 (= call!685338 call!685340)))

(declare-fun b!7460307 () Bool)

(declare-fun res!2992502 () Bool)

(assert (=> b!7460307 (=> res!2992502 e!4452277)))

(assert (=> b!7460307 (= res!2992502 (not (is-Concat!28373 lt!2622421)))))

(assert (=> b!7460307 (= e!4452280 e!4452277)))

(declare-fun d!2298028 () Bool)

(declare-fun res!2992500 () Bool)

(assert (=> d!2298028 (=> res!2992500 e!4452281)))

(assert (=> d!2298028 (= res!2992500 (is-ElementMatch!19528 lt!2622421))))

(assert (=> d!2298028 (= (validRegex!10042 lt!2622421) e!4452281)))

(declare-fun b!7460313 () Bool)

(assert (=> b!7460313 (= e!4452282 call!685338)))

(declare-fun b!7460314 () Bool)

(assert (=> b!7460314 (= e!4452279 call!685338)))

(declare-fun bm!685335 () Bool)

(assert (=> bm!685335 (= call!685340 (validRegex!10042 (ite c!1379187 (reg!19857 lt!2622421) (ite c!1379188 (regTwo!39569 lt!2622421) (regTwo!39568 lt!2622421)))))))

(assert (= (and d!2298028 (not res!2992500)) b!7460310))

(assert (= (and b!7460310 c!1379187) b!7460306))

(assert (= (and b!7460310 (not c!1379187)) b!7460308))

(assert (= (and b!7460306 res!2992501) b!7460311))

(assert (= (and b!7460308 c!1379188) b!7460309))

(assert (= (and b!7460308 (not c!1379188)) b!7460307))

(assert (= (and b!7460309 res!2992499) b!7460314))

(assert (= (and b!7460307 (not res!2992502)) b!7460312))

(assert (= (and b!7460312 res!2992503) b!7460313))

(assert (= (or b!7460314 b!7460313) bm!685334))

(assert (= (or b!7460309 b!7460312) bm!685333))

(assert (= (or b!7460311 bm!685334) bm!685335))

(declare-fun m!8062150 () Bool)

(assert (=> b!7460306 m!8062150))

(declare-fun m!8062152 () Bool)

(assert (=> bm!685333 m!8062152))

(declare-fun m!8062154 () Bool)

(assert (=> bm!685335 m!8062154))

(assert (=> b!7460132 d!2298028))

(declare-fun bs!1929352 () Bool)

(declare-fun d!2298030 () Bool)

(assert (= bs!1929352 (and d!2298030 b!7460132)))

(declare-fun lambda!461579 () Int)

(assert (=> bs!1929352 (= lambda!461579 lambda!461556)))

(assert (=> bs!1929352 (not (= lambda!461579 lambda!461557))))

(declare-fun bs!1929353 () Bool)

(assert (= bs!1929353 (and d!2298030 d!2298022)))

(assert (=> bs!1929353 (= lambda!461579 lambda!461568)))

(assert (=> d!2298030 true))

(assert (=> d!2298030 true))

(assert (=> d!2298030 true))

(declare-fun lambda!461580 () Int)

(assert (=> bs!1929352 (not (= lambda!461580 lambda!461556))))

(assert (=> bs!1929352 (= lambda!461580 lambda!461557)))

(assert (=> bs!1929353 (not (= lambda!461580 lambda!461568))))

(declare-fun bs!1929354 () Bool)

(assert (= bs!1929354 d!2298030))

(assert (=> bs!1929354 (not (= lambda!461580 lambda!461579))))

(assert (=> d!2298030 true))

(assert (=> d!2298030 true))

(assert (=> d!2298030 true))

(assert (=> d!2298030 (= (Exists!4147 lambda!461579) (Exists!4147 lambda!461580))))

(declare-fun lt!2622466 () Unit!165891)

(declare-fun choose!57668 (Regex!19528 Regex!19528 List!72244) Unit!165891)

(assert (=> d!2298030 (= lt!2622466 (choose!57668 lt!2622421 rTail!78 s!13591))))

(assert (=> d!2298030 (validRegex!10042 lt!2622421)))

(assert (=> d!2298030 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2481 lt!2622421 rTail!78 s!13591) lt!2622466)))

(declare-fun m!8062164 () Bool)

(assert (=> bs!1929354 m!8062164))

(declare-fun m!8062166 () Bool)

(assert (=> bs!1929354 m!8062166))

(declare-fun m!8062168 () Bool)

(assert (=> bs!1929354 m!8062168))

(assert (=> bs!1929354 m!8062054))

(assert (=> b!7460132 d!2298030))

(declare-fun b!7460334 () Bool)

(declare-fun e!4452296 () Bool)

(declare-fun e!4452301 () Bool)

(assert (=> b!7460334 (= e!4452296 e!4452301)))

(declare-fun res!2992517 () Bool)

(assert (=> b!7460334 (= res!2992517 (not (nullable!8508 (reg!19857 r1!5845))))))

(assert (=> b!7460334 (=> (not res!2992517) (not e!4452301))))

(declare-fun b!7460336 () Bool)

(declare-fun e!4452298 () Bool)

(assert (=> b!7460336 (= e!4452296 e!4452298)))

(declare-fun c!1379194 () Bool)

(assert (=> b!7460336 (= c!1379194 (is-Union!19528 r1!5845))))

(declare-fun b!7460337 () Bool)

(declare-fun res!2992515 () Bool)

(declare-fun e!4452297 () Bool)

(assert (=> b!7460337 (=> (not res!2992515) (not e!4452297))))

(declare-fun call!685344 () Bool)

(assert (=> b!7460337 (= res!2992515 call!685344)))

(assert (=> b!7460337 (= e!4452298 e!4452297)))

(declare-fun bm!685338 () Bool)

(assert (=> bm!685338 (= call!685344 (validRegex!10042 (ite c!1379194 (regOne!39569 r1!5845) (regOne!39568 r1!5845))))))

(declare-fun b!7460338 () Bool)

(declare-fun e!4452299 () Bool)

(assert (=> b!7460338 (= e!4452299 e!4452296)))

(declare-fun c!1379193 () Bool)

(assert (=> b!7460338 (= c!1379193 (is-Star!19528 r1!5845))))

(declare-fun b!7460339 () Bool)

(declare-fun call!685345 () Bool)

(assert (=> b!7460339 (= e!4452301 call!685345)))

(declare-fun b!7460340 () Bool)

(declare-fun e!4452295 () Bool)

(declare-fun e!4452300 () Bool)

(assert (=> b!7460340 (= e!4452295 e!4452300)))

(declare-fun res!2992519 () Bool)

(assert (=> b!7460340 (=> (not res!2992519) (not e!4452300))))

(assert (=> b!7460340 (= res!2992519 call!685344)))

(declare-fun bm!685339 () Bool)

(declare-fun call!685343 () Bool)

(assert (=> bm!685339 (= call!685343 call!685345)))

(declare-fun b!7460335 () Bool)

(declare-fun res!2992518 () Bool)

(assert (=> b!7460335 (=> res!2992518 e!4452295)))

(assert (=> b!7460335 (= res!2992518 (not (is-Concat!28373 r1!5845)))))

(assert (=> b!7460335 (= e!4452298 e!4452295)))

(declare-fun d!2298034 () Bool)

(declare-fun res!2992516 () Bool)

(assert (=> d!2298034 (=> res!2992516 e!4452299)))

(assert (=> d!2298034 (= res!2992516 (is-ElementMatch!19528 r1!5845))))

(assert (=> d!2298034 (= (validRegex!10042 r1!5845) e!4452299)))

(declare-fun b!7460341 () Bool)

(assert (=> b!7460341 (= e!4452300 call!685343)))

(declare-fun b!7460342 () Bool)

(assert (=> b!7460342 (= e!4452297 call!685343)))

(declare-fun bm!685340 () Bool)

(assert (=> bm!685340 (= call!685345 (validRegex!10042 (ite c!1379193 (reg!19857 r1!5845) (ite c!1379194 (regTwo!39569 r1!5845) (regTwo!39568 r1!5845)))))))

(assert (= (and d!2298034 (not res!2992516)) b!7460338))

(assert (= (and b!7460338 c!1379193) b!7460334))

(assert (= (and b!7460338 (not c!1379193)) b!7460336))

(assert (= (and b!7460334 res!2992517) b!7460339))

(assert (= (and b!7460336 c!1379194) b!7460337))

(assert (= (and b!7460336 (not c!1379194)) b!7460335))

(assert (= (and b!7460337 res!2992515) b!7460342))

(assert (= (and b!7460335 (not res!2992518)) b!7460340))

(assert (= (and b!7460340 res!2992519) b!7460341))

(assert (= (or b!7460342 b!7460341) bm!685339))

(assert (= (or b!7460337 b!7460340) bm!685338))

(assert (= (or b!7460339 bm!685339) bm!685340))

(declare-fun m!8062170 () Bool)

(assert (=> b!7460334 m!8062170))

(declare-fun m!8062172 () Bool)

(assert (=> bm!685338 m!8062172))

(declare-fun m!8062174 () Bool)

(assert (=> bm!685340 m!8062174))

(assert (=> start!723808 d!2298034))

(declare-fun bs!1929356 () Bool)

(declare-fun b!7460375 () Bool)

(assert (= bs!1929356 (and b!7460375 b!7460132)))

(declare-fun lambda!461585 () Int)

(assert (=> bs!1929356 (not (= lambda!461585 lambda!461556))))

(declare-fun bs!1929357 () Bool)

(assert (= bs!1929357 (and b!7460375 d!2298030)))

(assert (=> bs!1929357 (not (= lambda!461585 lambda!461579))))

(declare-fun bs!1929358 () Bool)

(assert (= bs!1929358 (and b!7460375 d!2298022)))

(assert (=> bs!1929358 (not (= lambda!461585 lambda!461568))))

(assert (=> bs!1929357 (not (= lambda!461585 lambda!461580))))

(assert (=> bs!1929356 (not (= lambda!461585 lambda!461557))))

(assert (=> b!7460375 true))

(assert (=> b!7460375 true))

(declare-fun bs!1929359 () Bool)

(declare-fun b!7460380 () Bool)

(assert (= bs!1929359 (and b!7460380 b!7460375)))

(declare-fun lambda!461586 () Int)

(assert (=> bs!1929359 (not (= lambda!461586 lambda!461585))))

(declare-fun bs!1929360 () Bool)

(assert (= bs!1929360 (and b!7460380 b!7460132)))

(assert (=> bs!1929360 (not (= lambda!461586 lambda!461556))))

(declare-fun bs!1929361 () Bool)

(assert (= bs!1929361 (and b!7460380 d!2298030)))

(assert (=> bs!1929361 (not (= lambda!461586 lambda!461579))))

(declare-fun bs!1929362 () Bool)

(assert (= bs!1929362 (and b!7460380 d!2298022)))

(assert (=> bs!1929362 (not (= lambda!461586 lambda!461568))))

(assert (=> bs!1929361 (= (and (= (regOne!39568 lt!2622422) lt!2622421) (= (regTwo!39568 lt!2622422) rTail!78)) (= lambda!461586 lambda!461580))))

(assert (=> bs!1929360 (= (and (= (regOne!39568 lt!2622422) lt!2622421) (= (regTwo!39568 lt!2622422) rTail!78)) (= lambda!461586 lambda!461557))))

(assert (=> b!7460380 true))

(assert (=> b!7460380 true))

(declare-fun bm!685345 () Bool)

(declare-fun call!685351 () Bool)

(declare-fun isEmpty!41132 (List!72244) Bool)

(assert (=> bm!685345 (= call!685351 (isEmpty!41132 s!13591))))

(declare-fun e!4452325 () Bool)

(declare-fun call!685350 () Bool)

(assert (=> b!7460375 (= e!4452325 call!685350)))

(declare-fun b!7460376 () Bool)

(declare-fun c!1379204 () Bool)

(assert (=> b!7460376 (= c!1379204 (is-Union!19528 lt!2622422))))

(declare-fun e!4452322 () Bool)

(declare-fun e!4452323 () Bool)

(assert (=> b!7460376 (= e!4452322 e!4452323)))

(declare-fun b!7460377 () Bool)

(declare-fun res!2992536 () Bool)

(assert (=> b!7460377 (=> res!2992536 e!4452325)))

(assert (=> b!7460377 (= res!2992536 call!685351)))

(declare-fun e!4452324 () Bool)

(assert (=> b!7460377 (= e!4452324 e!4452325)))

(declare-fun b!7460378 () Bool)

(declare-fun e!4452326 () Bool)

(assert (=> b!7460378 (= e!4452326 (matchRSpec!4207 (regTwo!39569 lt!2622422) s!13591))))

(declare-fun c!1379206 () Bool)

(declare-fun bm!685346 () Bool)

(assert (=> bm!685346 (= call!685350 (Exists!4147 (ite c!1379206 lambda!461585 lambda!461586)))))

(declare-fun d!2298036 () Bool)

(declare-fun c!1379203 () Bool)

(assert (=> d!2298036 (= c!1379203 (is-EmptyExpr!19528 lt!2622422))))

(declare-fun e!4452320 () Bool)

(assert (=> d!2298036 (= (matchRSpec!4207 lt!2622422 s!13591) e!4452320)))

(declare-fun b!7460379 () Bool)

(assert (=> b!7460379 (= e!4452323 e!4452326)))

(declare-fun res!2992537 () Bool)

(assert (=> b!7460379 (= res!2992537 (matchRSpec!4207 (regOne!39569 lt!2622422) s!13591))))

(assert (=> b!7460379 (=> res!2992537 e!4452326)))

(assert (=> b!7460380 (= e!4452324 call!685350)))

(declare-fun b!7460381 () Bool)

(declare-fun e!4452321 () Bool)

(assert (=> b!7460381 (= e!4452320 e!4452321)))

(declare-fun res!2992538 () Bool)

(assert (=> b!7460381 (= res!2992538 (not (is-EmptyLang!19528 lt!2622422)))))

(assert (=> b!7460381 (=> (not res!2992538) (not e!4452321))))

(declare-fun b!7460382 () Bool)

(assert (=> b!7460382 (= e!4452320 call!685351)))

(declare-fun b!7460383 () Bool)

(assert (=> b!7460383 (= e!4452323 e!4452324)))

(assert (=> b!7460383 (= c!1379206 (is-Star!19528 lt!2622422))))

(declare-fun b!7460384 () Bool)

(assert (=> b!7460384 (= e!4452322 (= s!13591 (Cons!72120 (c!1379165 lt!2622422) Nil!72120)))))

(declare-fun b!7460385 () Bool)

(declare-fun c!1379205 () Bool)

(assert (=> b!7460385 (= c!1379205 (is-ElementMatch!19528 lt!2622422))))

(assert (=> b!7460385 (= e!4452321 e!4452322)))

(assert (= (and d!2298036 c!1379203) b!7460382))

(assert (= (and d!2298036 (not c!1379203)) b!7460381))

(assert (= (and b!7460381 res!2992538) b!7460385))

(assert (= (and b!7460385 c!1379205) b!7460384))

(assert (= (and b!7460385 (not c!1379205)) b!7460376))

(assert (= (and b!7460376 c!1379204) b!7460379))

(assert (= (and b!7460376 (not c!1379204)) b!7460383))

(assert (= (and b!7460379 (not res!2992537)) b!7460378))

(assert (= (and b!7460383 c!1379206) b!7460377))

(assert (= (and b!7460383 (not c!1379206)) b!7460380))

(assert (= (and b!7460377 (not res!2992536)) b!7460375))

(assert (= (or b!7460375 b!7460380) bm!685346))

(assert (= (or b!7460382 b!7460377) bm!685345))

(declare-fun m!8062180 () Bool)

(assert (=> bm!685345 m!8062180))

(declare-fun m!8062182 () Bool)

(assert (=> b!7460378 m!8062182))

(declare-fun m!8062184 () Bool)

(assert (=> bm!685346 m!8062184))

(declare-fun m!8062186 () Bool)

(assert (=> b!7460379 m!8062186))

(assert (=> b!7460131 d!2298036))

(declare-fun b!7460442 () Bool)

(declare-fun e!4452355 () Bool)

(declare-fun head!15307 (List!72244) C!39330)

(assert (=> b!7460442 (= e!4452355 (not (= (head!15307 s!13591) (c!1379165 lt!2622424))))))

(declare-fun b!7460443 () Bool)

(declare-fun e!4452358 () Bool)

(assert (=> b!7460443 (= e!4452358 (= (head!15307 s!13591) (c!1379165 lt!2622424)))))

(declare-fun bm!685351 () Bool)

(declare-fun call!685356 () Bool)

(assert (=> bm!685351 (= call!685356 (isEmpty!41132 s!13591))))

(declare-fun b!7460444 () Bool)

(declare-fun e!4452356 () Bool)

(declare-fun e!4452359 () Bool)

(assert (=> b!7460444 (= e!4452356 e!4452359)))

(declare-fun c!1379221 () Bool)

(assert (=> b!7460444 (= c!1379221 (is-EmptyLang!19528 lt!2622424))))

(declare-fun d!2298040 () Bool)

(assert (=> d!2298040 e!4452356))

(declare-fun c!1379220 () Bool)

(assert (=> d!2298040 (= c!1379220 (is-EmptyExpr!19528 lt!2622424))))

(declare-fun lt!2622474 () Bool)

(declare-fun e!4452361 () Bool)

(assert (=> d!2298040 (= lt!2622474 e!4452361)))

(declare-fun c!1379219 () Bool)

(assert (=> d!2298040 (= c!1379219 (isEmpty!41132 s!13591))))

(assert (=> d!2298040 (validRegex!10042 lt!2622424)))

(assert (=> d!2298040 (= (matchR!9292 lt!2622424 s!13591) lt!2622474)))

(declare-fun b!7460445 () Bool)

(declare-fun res!2992576 () Bool)

(assert (=> b!7460445 (=> (not res!2992576) (not e!4452358))))

(declare-fun tail!14876 (List!72244) List!72244)

(assert (=> b!7460445 (= res!2992576 (isEmpty!41132 (tail!14876 s!13591)))))

(declare-fun b!7460446 () Bool)

(declare-fun e!4452357 () Bool)

(assert (=> b!7460446 (= e!4452357 e!4452355)))

(declare-fun res!2992571 () Bool)

(assert (=> b!7460446 (=> res!2992571 e!4452355)))

(assert (=> b!7460446 (= res!2992571 call!685356)))

(declare-fun b!7460447 () Bool)

(declare-fun res!2992574 () Bool)

(assert (=> b!7460447 (=> (not res!2992574) (not e!4452358))))

(assert (=> b!7460447 (= res!2992574 (not call!685356))))

(declare-fun b!7460448 () Bool)

(declare-fun e!4452360 () Bool)

(assert (=> b!7460448 (= e!4452360 e!4452357)))

(declare-fun res!2992572 () Bool)

(assert (=> b!7460448 (=> (not res!2992572) (not e!4452357))))

(assert (=> b!7460448 (= res!2992572 (not lt!2622474))))

(declare-fun b!7460449 () Bool)

(declare-fun derivativeStep!5567 (Regex!19528 C!39330) Regex!19528)

(assert (=> b!7460449 (= e!4452361 (matchR!9292 (derivativeStep!5567 lt!2622424 (head!15307 s!13591)) (tail!14876 s!13591)))))

(declare-fun b!7460450 () Bool)

(assert (=> b!7460450 (= e!4452359 (not lt!2622474))))

(declare-fun b!7460451 () Bool)

(declare-fun res!2992577 () Bool)

(assert (=> b!7460451 (=> res!2992577 e!4452360)))

(assert (=> b!7460451 (= res!2992577 (not (is-ElementMatch!19528 lt!2622424)))))

(assert (=> b!7460451 (= e!4452359 e!4452360)))

(declare-fun b!7460452 () Bool)

(declare-fun res!2992575 () Bool)

(assert (=> b!7460452 (=> res!2992575 e!4452360)))

(assert (=> b!7460452 (= res!2992575 e!4452358)))

(declare-fun res!2992573 () Bool)

(assert (=> b!7460452 (=> (not res!2992573) (not e!4452358))))

(assert (=> b!7460452 (= res!2992573 lt!2622474)))

(declare-fun b!7460453 () Bool)

(assert (=> b!7460453 (= e!4452361 (nullable!8508 lt!2622424))))

(declare-fun b!7460454 () Bool)

(assert (=> b!7460454 (= e!4452356 (= lt!2622474 call!685356))))

(declare-fun b!7460455 () Bool)

(declare-fun res!2992578 () Bool)

(assert (=> b!7460455 (=> res!2992578 e!4452355)))

(assert (=> b!7460455 (= res!2992578 (not (isEmpty!41132 (tail!14876 s!13591))))))

(assert (= (and d!2298040 c!1379219) b!7460453))

(assert (= (and d!2298040 (not c!1379219)) b!7460449))

(assert (= (and d!2298040 c!1379220) b!7460454))

(assert (= (and d!2298040 (not c!1379220)) b!7460444))

(assert (= (and b!7460444 c!1379221) b!7460450))

(assert (= (and b!7460444 (not c!1379221)) b!7460451))

(assert (= (and b!7460451 (not res!2992577)) b!7460452))

(assert (= (and b!7460452 res!2992573) b!7460447))

(assert (= (and b!7460447 res!2992574) b!7460445))

(assert (= (and b!7460445 res!2992576) b!7460443))

(assert (= (and b!7460452 (not res!2992575)) b!7460448))

(assert (= (and b!7460448 res!2992572) b!7460446))

(assert (= (and b!7460446 (not res!2992571)) b!7460455))

(assert (= (and b!7460455 (not res!2992578)) b!7460442))

(assert (= (or b!7460454 b!7460446 b!7460447) bm!685351))

(declare-fun m!8062188 () Bool)

(assert (=> b!7460442 m!8062188))

(assert (=> b!7460443 m!8062188))

(assert (=> bm!685351 m!8062180))

(declare-fun m!8062190 () Bool)

(assert (=> b!7460453 m!8062190))

(declare-fun m!8062192 () Bool)

(assert (=> b!7460455 m!8062192))

(assert (=> b!7460455 m!8062192))

(declare-fun m!8062194 () Bool)

(assert (=> b!7460455 m!8062194))

(assert (=> b!7460449 m!8062188))

(assert (=> b!7460449 m!8062188))

(declare-fun m!8062196 () Bool)

(assert (=> b!7460449 m!8062196))

(assert (=> b!7460449 m!8062192))

(assert (=> b!7460449 m!8062196))

(assert (=> b!7460449 m!8062192))

(declare-fun m!8062198 () Bool)

(assert (=> b!7460449 m!8062198))

(assert (=> b!7460445 m!8062192))

(assert (=> b!7460445 m!8062192))

(assert (=> b!7460445 m!8062194))

(assert (=> d!2298040 m!8062180))

(declare-fun m!8062200 () Bool)

(assert (=> d!2298040 m!8062200))

(assert (=> b!7460131 d!2298040))

(declare-fun b!7460470 () Bool)

(declare-fun e!4452369 () Bool)

(assert (=> b!7460470 (= e!4452369 (not (= (head!15307 s!13591) (c!1379165 lt!2622422))))))

(declare-fun b!7460471 () Bool)

(declare-fun e!4452372 () Bool)

(assert (=> b!7460471 (= e!4452372 (= (head!15307 s!13591) (c!1379165 lt!2622422)))))

(declare-fun bm!685353 () Bool)

(declare-fun call!685358 () Bool)

(assert (=> bm!685353 (= call!685358 (isEmpty!41132 s!13591))))

(declare-fun b!7460472 () Bool)

(declare-fun e!4452370 () Bool)

(declare-fun e!4452373 () Bool)

(assert (=> b!7460472 (= e!4452370 e!4452373)))

(declare-fun c!1379227 () Bool)

(assert (=> b!7460472 (= c!1379227 (is-EmptyLang!19528 lt!2622422))))

(declare-fun d!2298042 () Bool)

(assert (=> d!2298042 e!4452370))

(declare-fun c!1379226 () Bool)

(assert (=> d!2298042 (= c!1379226 (is-EmptyExpr!19528 lt!2622422))))

(declare-fun lt!2622476 () Bool)

(declare-fun e!4452375 () Bool)

(assert (=> d!2298042 (= lt!2622476 e!4452375)))

(declare-fun c!1379225 () Bool)

(assert (=> d!2298042 (= c!1379225 (isEmpty!41132 s!13591))))

(assert (=> d!2298042 (validRegex!10042 lt!2622422)))

(assert (=> d!2298042 (= (matchR!9292 lt!2622422 s!13591) lt!2622476)))

(declare-fun b!7460473 () Bool)

(declare-fun res!2992592 () Bool)

(assert (=> b!7460473 (=> (not res!2992592) (not e!4452372))))

(assert (=> b!7460473 (= res!2992592 (isEmpty!41132 (tail!14876 s!13591)))))

(declare-fun b!7460474 () Bool)

(declare-fun e!4452371 () Bool)

(assert (=> b!7460474 (= e!4452371 e!4452369)))

(declare-fun res!2992587 () Bool)

(assert (=> b!7460474 (=> res!2992587 e!4452369)))

(assert (=> b!7460474 (= res!2992587 call!685358)))

(declare-fun b!7460475 () Bool)

(declare-fun res!2992590 () Bool)

(assert (=> b!7460475 (=> (not res!2992590) (not e!4452372))))

(assert (=> b!7460475 (= res!2992590 (not call!685358))))

(declare-fun b!7460476 () Bool)

(declare-fun e!4452374 () Bool)

(assert (=> b!7460476 (= e!4452374 e!4452371)))

(declare-fun res!2992588 () Bool)

(assert (=> b!7460476 (=> (not res!2992588) (not e!4452371))))

(assert (=> b!7460476 (= res!2992588 (not lt!2622476))))

(declare-fun b!7460477 () Bool)

(assert (=> b!7460477 (= e!4452375 (matchR!9292 (derivativeStep!5567 lt!2622422 (head!15307 s!13591)) (tail!14876 s!13591)))))

(declare-fun b!7460478 () Bool)

(assert (=> b!7460478 (= e!4452373 (not lt!2622476))))

(declare-fun b!7460479 () Bool)

(declare-fun res!2992593 () Bool)

(assert (=> b!7460479 (=> res!2992593 e!4452374)))

(assert (=> b!7460479 (= res!2992593 (not (is-ElementMatch!19528 lt!2622422)))))

(assert (=> b!7460479 (= e!4452373 e!4452374)))

(declare-fun b!7460480 () Bool)

(declare-fun res!2992591 () Bool)

(assert (=> b!7460480 (=> res!2992591 e!4452374)))

(assert (=> b!7460480 (= res!2992591 e!4452372)))

(declare-fun res!2992589 () Bool)

(assert (=> b!7460480 (=> (not res!2992589) (not e!4452372))))

(assert (=> b!7460480 (= res!2992589 lt!2622476)))

(declare-fun b!7460481 () Bool)

(assert (=> b!7460481 (= e!4452375 (nullable!8508 lt!2622422))))

(declare-fun b!7460482 () Bool)

(assert (=> b!7460482 (= e!4452370 (= lt!2622476 call!685358))))

(declare-fun b!7460483 () Bool)

(declare-fun res!2992594 () Bool)

(assert (=> b!7460483 (=> res!2992594 e!4452369)))

(assert (=> b!7460483 (= res!2992594 (not (isEmpty!41132 (tail!14876 s!13591))))))

(assert (= (and d!2298042 c!1379225) b!7460481))

(assert (= (and d!2298042 (not c!1379225)) b!7460477))

(assert (= (and d!2298042 c!1379226) b!7460482))

(assert (= (and d!2298042 (not c!1379226)) b!7460472))

(assert (= (and b!7460472 c!1379227) b!7460478))

(assert (= (and b!7460472 (not c!1379227)) b!7460479))

(assert (= (and b!7460479 (not res!2992593)) b!7460480))

(assert (= (and b!7460480 res!2992589) b!7460475))

(assert (= (and b!7460475 res!2992590) b!7460473))

(assert (= (and b!7460473 res!2992592) b!7460471))

(assert (= (and b!7460480 (not res!2992591)) b!7460476))

(assert (= (and b!7460476 res!2992588) b!7460474))

(assert (= (and b!7460474 (not res!2992587)) b!7460483))

(assert (= (and b!7460483 (not res!2992594)) b!7460470))

(assert (= (or b!7460482 b!7460474 b!7460475) bm!685353))

(assert (=> b!7460470 m!8062188))

(assert (=> b!7460471 m!8062188))

(assert (=> bm!685353 m!8062180))

(declare-fun m!8062202 () Bool)

(assert (=> b!7460481 m!8062202))

(assert (=> b!7460483 m!8062192))

(assert (=> b!7460483 m!8062192))

(assert (=> b!7460483 m!8062194))

(assert (=> b!7460477 m!8062188))

(assert (=> b!7460477 m!8062188))

(declare-fun m!8062204 () Bool)

(assert (=> b!7460477 m!8062204))

(assert (=> b!7460477 m!8062192))

(assert (=> b!7460477 m!8062204))

(assert (=> b!7460477 m!8062192))

(declare-fun m!8062208 () Bool)

(assert (=> b!7460477 m!8062208))

(assert (=> b!7460473 m!8062192))

(assert (=> b!7460473 m!8062192))

(assert (=> b!7460473 m!8062194))

(assert (=> d!2298042 m!8062180))

(declare-fun m!8062212 () Bool)

(assert (=> d!2298042 m!8062212))

(assert (=> b!7460131 d!2298042))

(declare-fun d!2298044 () Bool)

(assert (=> d!2298044 (= (matchR!9292 lt!2622424 s!13591) (matchRSpec!4207 lt!2622424 s!13591))))

(declare-fun lt!2622481 () Unit!165891)

(declare-fun choose!57669 (Regex!19528 List!72244) Unit!165891)

(assert (=> d!2298044 (= lt!2622481 (choose!57669 lt!2622424 s!13591))))

(assert (=> d!2298044 (validRegex!10042 lt!2622424)))

(assert (=> d!2298044 (= (mainMatchTheorem!4201 lt!2622424 s!13591) lt!2622481)))

(declare-fun bs!1929364 () Bool)

(assert (= bs!1929364 d!2298044))

(assert (=> bs!1929364 m!8062070))

(assert (=> bs!1929364 m!8062074))

(declare-fun m!8062230 () Bool)

(assert (=> bs!1929364 m!8062230))

(assert (=> bs!1929364 m!8062200))

(assert (=> b!7460131 d!2298044))

(declare-fun bs!1929365 () Bool)

(declare-fun b!7460498 () Bool)

(assert (= bs!1929365 (and b!7460498 b!7460375)))

(declare-fun lambda!461587 () Int)

(assert (=> bs!1929365 (= (and (= (reg!19857 lt!2622424) (reg!19857 lt!2622422)) (= lt!2622424 lt!2622422)) (= lambda!461587 lambda!461585))))

(declare-fun bs!1929366 () Bool)

(assert (= bs!1929366 (and b!7460498 b!7460132)))

(assert (=> bs!1929366 (not (= lambda!461587 lambda!461556))))

(declare-fun bs!1929367 () Bool)

(assert (= bs!1929367 (and b!7460498 d!2298030)))

(assert (=> bs!1929367 (not (= lambda!461587 lambda!461579))))

(declare-fun bs!1929368 () Bool)

(assert (= bs!1929368 (and b!7460498 d!2298022)))

(assert (=> bs!1929368 (not (= lambda!461587 lambda!461568))))

(assert (=> bs!1929366 (not (= lambda!461587 lambda!461557))))

(assert (=> bs!1929367 (not (= lambda!461587 lambda!461580))))

(declare-fun bs!1929369 () Bool)

(assert (= bs!1929369 (and b!7460498 b!7460380)))

(assert (=> bs!1929369 (not (= lambda!461587 lambda!461586))))

(assert (=> b!7460498 true))

(assert (=> b!7460498 true))

(declare-fun bs!1929371 () Bool)

(declare-fun b!7460503 () Bool)

(assert (= bs!1929371 (and b!7460503 b!7460375)))

(declare-fun lambda!461589 () Int)

(assert (=> bs!1929371 (not (= lambda!461589 lambda!461585))))

(declare-fun bs!1929372 () Bool)

(assert (= bs!1929372 (and b!7460503 b!7460132)))

(assert (=> bs!1929372 (not (= lambda!461589 lambda!461556))))

(declare-fun bs!1929373 () Bool)

(assert (= bs!1929373 (and b!7460503 b!7460498)))

(assert (=> bs!1929373 (not (= lambda!461589 lambda!461587))))

(declare-fun bs!1929374 () Bool)

(assert (= bs!1929374 (and b!7460503 d!2298030)))

(assert (=> bs!1929374 (not (= lambda!461589 lambda!461579))))

(declare-fun bs!1929376 () Bool)

(assert (= bs!1929376 (and b!7460503 d!2298022)))

(assert (=> bs!1929376 (not (= lambda!461589 lambda!461568))))

(assert (=> bs!1929372 (= (and (= (regOne!39568 lt!2622424) lt!2622421) (= (regTwo!39568 lt!2622424) rTail!78)) (= lambda!461589 lambda!461557))))

(assert (=> bs!1929374 (= (and (= (regOne!39568 lt!2622424) lt!2622421) (= (regTwo!39568 lt!2622424) rTail!78)) (= lambda!461589 lambda!461580))))

(declare-fun bs!1929378 () Bool)

(assert (= bs!1929378 (and b!7460503 b!7460380)))

(assert (=> bs!1929378 (= (and (= (regOne!39568 lt!2622424) (regOne!39568 lt!2622422)) (= (regTwo!39568 lt!2622424) (regTwo!39568 lt!2622422))) (= lambda!461589 lambda!461586))))

(assert (=> b!7460503 true))

(assert (=> b!7460503 true))

(declare-fun bm!685355 () Bool)

(declare-fun call!685361 () Bool)

(assert (=> bm!685355 (= call!685361 (isEmpty!41132 s!13591))))

(declare-fun e!4452388 () Bool)

(declare-fun call!685360 () Bool)

(assert (=> b!7460498 (= e!4452388 call!685360)))

(declare-fun b!7460499 () Bool)

(declare-fun c!1379232 () Bool)

(assert (=> b!7460499 (= c!1379232 (is-Union!19528 lt!2622424))))

(declare-fun e!4452385 () Bool)

(declare-fun e!4452386 () Bool)

(assert (=> b!7460499 (= e!4452385 e!4452386)))

(declare-fun b!7460500 () Bool)

(declare-fun res!2992603 () Bool)

(assert (=> b!7460500 (=> res!2992603 e!4452388)))

(assert (=> b!7460500 (= res!2992603 call!685361)))

(declare-fun e!4452387 () Bool)

(assert (=> b!7460500 (= e!4452387 e!4452388)))

(declare-fun b!7460501 () Bool)

(declare-fun e!4452389 () Bool)

(assert (=> b!7460501 (= e!4452389 (matchRSpec!4207 (regTwo!39569 lt!2622424) s!13591))))

(declare-fun c!1379234 () Bool)

(declare-fun bm!685356 () Bool)

(assert (=> bm!685356 (= call!685360 (Exists!4147 (ite c!1379234 lambda!461587 lambda!461589)))))

(declare-fun d!2298050 () Bool)

(declare-fun c!1379231 () Bool)

(assert (=> d!2298050 (= c!1379231 (is-EmptyExpr!19528 lt!2622424))))

(declare-fun e!4452383 () Bool)

(assert (=> d!2298050 (= (matchRSpec!4207 lt!2622424 s!13591) e!4452383)))

(declare-fun b!7460502 () Bool)

(assert (=> b!7460502 (= e!4452386 e!4452389)))

(declare-fun res!2992604 () Bool)

(assert (=> b!7460502 (= res!2992604 (matchRSpec!4207 (regOne!39569 lt!2622424) s!13591))))

(assert (=> b!7460502 (=> res!2992604 e!4452389)))

(assert (=> b!7460503 (= e!4452387 call!685360)))

(declare-fun b!7460504 () Bool)

(declare-fun e!4452384 () Bool)

(assert (=> b!7460504 (= e!4452383 e!4452384)))

(declare-fun res!2992605 () Bool)

(assert (=> b!7460504 (= res!2992605 (not (is-EmptyLang!19528 lt!2622424)))))

(assert (=> b!7460504 (=> (not res!2992605) (not e!4452384))))

(declare-fun b!7460505 () Bool)

(assert (=> b!7460505 (= e!4452383 call!685361)))

(declare-fun b!7460506 () Bool)

(assert (=> b!7460506 (= e!4452386 e!4452387)))

(assert (=> b!7460506 (= c!1379234 (is-Star!19528 lt!2622424))))

(declare-fun b!7460507 () Bool)

(assert (=> b!7460507 (= e!4452385 (= s!13591 (Cons!72120 (c!1379165 lt!2622424) Nil!72120)))))

(declare-fun b!7460508 () Bool)

(declare-fun c!1379233 () Bool)

(assert (=> b!7460508 (= c!1379233 (is-ElementMatch!19528 lt!2622424))))

(assert (=> b!7460508 (= e!4452384 e!4452385)))

(assert (= (and d!2298050 c!1379231) b!7460505))

(assert (= (and d!2298050 (not c!1379231)) b!7460504))

(assert (= (and b!7460504 res!2992605) b!7460508))

(assert (= (and b!7460508 c!1379233) b!7460507))

(assert (= (and b!7460508 (not c!1379233)) b!7460499))

(assert (= (and b!7460499 c!1379232) b!7460502))

(assert (= (and b!7460499 (not c!1379232)) b!7460506))

(assert (= (and b!7460502 (not res!2992604)) b!7460501))

(assert (= (and b!7460506 c!1379234) b!7460500))

(assert (= (and b!7460506 (not c!1379234)) b!7460503))

(assert (= (and b!7460500 (not res!2992603)) b!7460498))

(assert (= (or b!7460498 b!7460503) bm!685356))

(assert (= (or b!7460505 b!7460500) bm!685355))

(assert (=> bm!685355 m!8062180))

(declare-fun m!8062234 () Bool)

(assert (=> b!7460501 m!8062234))

(declare-fun m!8062236 () Bool)

(assert (=> bm!685356 m!8062236))

(declare-fun m!8062238 () Bool)

(assert (=> b!7460502 m!8062238))

(assert (=> b!7460131 d!2298050))

(declare-fun d!2298054 () Bool)

(assert (=> d!2298054 (= (matchR!9292 lt!2622422 s!13591) (matchRSpec!4207 lt!2622422 s!13591))))

(declare-fun lt!2622482 () Unit!165891)

(assert (=> d!2298054 (= lt!2622482 (choose!57669 lt!2622422 s!13591))))

(assert (=> d!2298054 (validRegex!10042 lt!2622422)))

(assert (=> d!2298054 (= (mainMatchTheorem!4201 lt!2622422 s!13591) lt!2622482)))

(declare-fun bs!1929379 () Bool)

(assert (= bs!1929379 d!2298054))

(assert (=> bs!1929379 m!8062072))

(assert (=> bs!1929379 m!8062066))

(declare-fun m!8062240 () Bool)

(assert (=> bs!1929379 m!8062240))

(assert (=> bs!1929379 m!8062212))

(assert (=> b!7460131 d!2298054))

(declare-fun b!7460520 () Bool)

(declare-fun e!4452398 () Bool)

(declare-fun e!4452403 () Bool)

(assert (=> b!7460520 (= e!4452398 e!4452403)))

(declare-fun res!2992611 () Bool)

(assert (=> b!7460520 (= res!2992611 (not (nullable!8508 (reg!19857 r2!5783))))))

(assert (=> b!7460520 (=> (not res!2992611) (not e!4452403))))

(declare-fun b!7460522 () Bool)

(declare-fun e!4452400 () Bool)

(assert (=> b!7460522 (= e!4452398 e!4452400)))

(declare-fun c!1379240 () Bool)

(assert (=> b!7460522 (= c!1379240 (is-Union!19528 r2!5783))))

(declare-fun b!7460523 () Bool)

(declare-fun res!2992609 () Bool)

(declare-fun e!4452399 () Bool)

(assert (=> b!7460523 (=> (not res!2992609) (not e!4452399))))

(declare-fun call!685365 () Bool)

(assert (=> b!7460523 (= res!2992609 call!685365)))

(assert (=> b!7460523 (= e!4452400 e!4452399)))

(declare-fun bm!685359 () Bool)

(assert (=> bm!685359 (= call!685365 (validRegex!10042 (ite c!1379240 (regOne!39569 r2!5783) (regOne!39568 r2!5783))))))

(declare-fun b!7460524 () Bool)

(declare-fun e!4452401 () Bool)

(assert (=> b!7460524 (= e!4452401 e!4452398)))

(declare-fun c!1379239 () Bool)

(assert (=> b!7460524 (= c!1379239 (is-Star!19528 r2!5783))))

(declare-fun b!7460525 () Bool)

(declare-fun call!685366 () Bool)

(assert (=> b!7460525 (= e!4452403 call!685366)))

(declare-fun b!7460526 () Bool)

(declare-fun e!4452397 () Bool)

(declare-fun e!4452402 () Bool)

(assert (=> b!7460526 (= e!4452397 e!4452402)))

(declare-fun res!2992613 () Bool)

(assert (=> b!7460526 (=> (not res!2992613) (not e!4452402))))

(assert (=> b!7460526 (= res!2992613 call!685365)))

(declare-fun bm!685360 () Bool)

(declare-fun call!685364 () Bool)

(assert (=> bm!685360 (= call!685364 call!685366)))

(declare-fun b!7460521 () Bool)

(declare-fun res!2992612 () Bool)

(assert (=> b!7460521 (=> res!2992612 e!4452397)))

(assert (=> b!7460521 (= res!2992612 (not (is-Concat!28373 r2!5783)))))

(assert (=> b!7460521 (= e!4452400 e!4452397)))

(declare-fun d!2298056 () Bool)

(declare-fun res!2992610 () Bool)

(assert (=> d!2298056 (=> res!2992610 e!4452401)))

(assert (=> d!2298056 (= res!2992610 (is-ElementMatch!19528 r2!5783))))

(assert (=> d!2298056 (= (validRegex!10042 r2!5783) e!4452401)))

(declare-fun b!7460527 () Bool)

(assert (=> b!7460527 (= e!4452402 call!685364)))

(declare-fun b!7460528 () Bool)

(assert (=> b!7460528 (= e!4452399 call!685364)))

(declare-fun bm!685361 () Bool)

(assert (=> bm!685361 (= call!685366 (validRegex!10042 (ite c!1379239 (reg!19857 r2!5783) (ite c!1379240 (regTwo!39569 r2!5783) (regTwo!39568 r2!5783)))))))

(assert (= (and d!2298056 (not res!2992610)) b!7460524))

(assert (= (and b!7460524 c!1379239) b!7460520))

(assert (= (and b!7460524 (not c!1379239)) b!7460522))

(assert (= (and b!7460520 res!2992611) b!7460525))

(assert (= (and b!7460522 c!1379240) b!7460523))

(assert (= (and b!7460522 (not c!1379240)) b!7460521))

(assert (= (and b!7460523 res!2992609) b!7460528))

(assert (= (and b!7460521 (not res!2992612)) b!7460526))

(assert (= (and b!7460526 res!2992613) b!7460527))

(assert (= (or b!7460528 b!7460527) bm!685360))

(assert (= (or b!7460523 b!7460526) bm!685359))

(assert (= (or b!7460525 bm!685360) bm!685361))

(declare-fun m!8062242 () Bool)

(assert (=> b!7460520 m!8062242))

(declare-fun m!8062244 () Bool)

(assert (=> bm!685359 m!8062244))

(declare-fun m!8062246 () Bool)

(assert (=> bm!685361 m!8062246))

(assert (=> b!7460136 d!2298056))

(declare-fun b!7460540 () Bool)

(declare-fun e!4452408 () Bool)

(declare-fun lt!2622485 () List!72244)

(assert (=> b!7460540 (= e!4452408 (or (not (= s!13591 Nil!72120)) (= lt!2622485 Nil!72120)))))

(declare-fun b!7460538 () Bool)

(declare-fun e!4452409 () List!72244)

(assert (=> b!7460538 (= e!4452409 (Cons!72120 (h!78568 Nil!72120) (++!17180 (t!386813 Nil!72120) s!13591)))))

(declare-fun b!7460539 () Bool)

(declare-fun res!2992619 () Bool)

(assert (=> b!7460539 (=> (not res!2992619) (not e!4452408))))

(declare-fun size!42193 (List!72244) Int)

(assert (=> b!7460539 (= res!2992619 (= (size!42193 lt!2622485) (+ (size!42193 Nil!72120) (size!42193 s!13591))))))

(declare-fun b!7460537 () Bool)

(assert (=> b!7460537 (= e!4452409 s!13591)))

(declare-fun d!2298058 () Bool)

(assert (=> d!2298058 e!4452408))

(declare-fun res!2992618 () Bool)

(assert (=> d!2298058 (=> (not res!2992618) (not e!4452408))))

(declare-fun content!15257 (List!72244) (Set C!39330))

(assert (=> d!2298058 (= res!2992618 (= (content!15257 lt!2622485) (set.union (content!15257 Nil!72120) (content!15257 s!13591))))))

(assert (=> d!2298058 (= lt!2622485 e!4452409)))

(declare-fun c!1379243 () Bool)

(assert (=> d!2298058 (= c!1379243 (is-Nil!72120 Nil!72120))))

(assert (=> d!2298058 (= (++!17180 Nil!72120 s!13591) lt!2622485)))

(assert (= (and d!2298058 c!1379243) b!7460537))

(assert (= (and d!2298058 (not c!1379243)) b!7460538))

(assert (= (and d!2298058 res!2992618) b!7460539))

(assert (= (and b!7460539 res!2992619) b!7460540))

(declare-fun m!8062254 () Bool)

(assert (=> b!7460538 m!8062254))

(declare-fun m!8062256 () Bool)

(assert (=> b!7460539 m!8062256))

(declare-fun m!8062258 () Bool)

(assert (=> b!7460539 m!8062258))

(declare-fun m!8062260 () Bool)

(assert (=> b!7460539 m!8062260))

(declare-fun m!8062262 () Bool)

(assert (=> d!2298058 m!8062262))

(declare-fun m!8062264 () Bool)

(assert (=> d!2298058 m!8062264))

(declare-fun m!8062266 () Bool)

(assert (=> d!2298058 m!8062266))

(assert (=> b!7460135 d!2298058))

(declare-fun b!7460553 () Bool)

(declare-fun e!4452412 () Bool)

(declare-fun tp!2162137 () Bool)

(assert (=> b!7460553 (= e!4452412 tp!2162137)))

(declare-fun b!7460551 () Bool)

(assert (=> b!7460551 (= e!4452412 tp_is_empty!49345)))

(declare-fun b!7460554 () Bool)

(declare-fun tp!2162135 () Bool)

(declare-fun tp!2162134 () Bool)

(assert (=> b!7460554 (= e!4452412 (and tp!2162135 tp!2162134))))

(assert (=> b!7460138 (= tp!2162071 e!4452412)))

(declare-fun b!7460552 () Bool)

(declare-fun tp!2162138 () Bool)

(declare-fun tp!2162136 () Bool)

(assert (=> b!7460552 (= e!4452412 (and tp!2162138 tp!2162136))))

(assert (= (and b!7460138 (is-ElementMatch!19528 (regOne!39569 r2!5783))) b!7460551))

(assert (= (and b!7460138 (is-Concat!28373 (regOne!39569 r2!5783))) b!7460552))

(assert (= (and b!7460138 (is-Star!19528 (regOne!39569 r2!5783))) b!7460553))

(assert (= (and b!7460138 (is-Union!19528 (regOne!39569 r2!5783))) b!7460554))

(declare-fun b!7460557 () Bool)

(declare-fun e!4452413 () Bool)

(declare-fun tp!2162142 () Bool)

(assert (=> b!7460557 (= e!4452413 tp!2162142)))

(declare-fun b!7460555 () Bool)

(assert (=> b!7460555 (= e!4452413 tp_is_empty!49345)))

(declare-fun b!7460558 () Bool)

(declare-fun tp!2162140 () Bool)

(declare-fun tp!2162139 () Bool)

(assert (=> b!7460558 (= e!4452413 (and tp!2162140 tp!2162139))))

(assert (=> b!7460138 (= tp!2162075 e!4452413)))

(declare-fun b!7460556 () Bool)

(declare-fun tp!2162143 () Bool)

(declare-fun tp!2162141 () Bool)

(assert (=> b!7460556 (= e!4452413 (and tp!2162143 tp!2162141))))

(assert (= (and b!7460138 (is-ElementMatch!19528 (regTwo!39569 r2!5783))) b!7460555))

(assert (= (and b!7460138 (is-Concat!28373 (regTwo!39569 r2!5783))) b!7460556))

(assert (= (and b!7460138 (is-Star!19528 (regTwo!39569 r2!5783))) b!7460557))

(assert (= (and b!7460138 (is-Union!19528 (regTwo!39569 r2!5783))) b!7460558))

(declare-fun b!7460561 () Bool)

(declare-fun e!4452414 () Bool)

(declare-fun tp!2162147 () Bool)

(assert (=> b!7460561 (= e!4452414 tp!2162147)))

(declare-fun b!7460559 () Bool)

(assert (=> b!7460559 (= e!4452414 tp_is_empty!49345)))

(declare-fun b!7460562 () Bool)

(declare-fun tp!2162145 () Bool)

(declare-fun tp!2162144 () Bool)

(assert (=> b!7460562 (= e!4452414 (and tp!2162145 tp!2162144))))

(assert (=> b!7460139 (= tp!2162070 e!4452414)))

(declare-fun b!7460560 () Bool)

(declare-fun tp!2162148 () Bool)

(declare-fun tp!2162146 () Bool)

(assert (=> b!7460560 (= e!4452414 (and tp!2162148 tp!2162146))))

(assert (= (and b!7460139 (is-ElementMatch!19528 (reg!19857 r1!5845))) b!7460559))

(assert (= (and b!7460139 (is-Concat!28373 (reg!19857 r1!5845))) b!7460560))

(assert (= (and b!7460139 (is-Star!19528 (reg!19857 r1!5845))) b!7460561))

(assert (= (and b!7460139 (is-Union!19528 (reg!19857 r1!5845))) b!7460562))

(declare-fun b!7460565 () Bool)

(declare-fun e!4452415 () Bool)

(declare-fun tp!2162152 () Bool)

(assert (=> b!7460565 (= e!4452415 tp!2162152)))

(declare-fun b!7460563 () Bool)

(assert (=> b!7460563 (= e!4452415 tp_is_empty!49345)))

(declare-fun b!7460566 () Bool)

(declare-fun tp!2162150 () Bool)

(declare-fun tp!2162149 () Bool)

(assert (=> b!7460566 (= e!4452415 (and tp!2162150 tp!2162149))))

(assert (=> b!7460128 (= tp!2162066 e!4452415)))

(declare-fun b!7460564 () Bool)

(declare-fun tp!2162153 () Bool)

(declare-fun tp!2162151 () Bool)

(assert (=> b!7460564 (= e!4452415 (and tp!2162153 tp!2162151))))

(assert (= (and b!7460128 (is-ElementMatch!19528 (reg!19857 r2!5783))) b!7460563))

(assert (= (and b!7460128 (is-Concat!28373 (reg!19857 r2!5783))) b!7460564))

(assert (= (and b!7460128 (is-Star!19528 (reg!19857 r2!5783))) b!7460565))

(assert (= (and b!7460128 (is-Union!19528 (reg!19857 r2!5783))) b!7460566))

(declare-fun b!7460569 () Bool)

(declare-fun e!4452416 () Bool)

(declare-fun tp!2162157 () Bool)

(assert (=> b!7460569 (= e!4452416 tp!2162157)))

(declare-fun b!7460567 () Bool)

(assert (=> b!7460567 (= e!4452416 tp_is_empty!49345)))

(declare-fun b!7460570 () Bool)

(declare-fun tp!2162155 () Bool)

(declare-fun tp!2162154 () Bool)

(assert (=> b!7460570 (= e!4452416 (and tp!2162155 tp!2162154))))

(assert (=> b!7460137 (= tp!2162061 e!4452416)))

(declare-fun b!7460568 () Bool)

(declare-fun tp!2162158 () Bool)

(declare-fun tp!2162156 () Bool)

(assert (=> b!7460568 (= e!4452416 (and tp!2162158 tp!2162156))))

(assert (= (and b!7460137 (is-ElementMatch!19528 (regOne!39569 r1!5845))) b!7460567))

(assert (= (and b!7460137 (is-Concat!28373 (regOne!39569 r1!5845))) b!7460568))

(assert (= (and b!7460137 (is-Star!19528 (regOne!39569 r1!5845))) b!7460569))

(assert (= (and b!7460137 (is-Union!19528 (regOne!39569 r1!5845))) b!7460570))

(declare-fun b!7460573 () Bool)

(declare-fun e!4452417 () Bool)

(declare-fun tp!2162162 () Bool)

(assert (=> b!7460573 (= e!4452417 tp!2162162)))

(declare-fun b!7460571 () Bool)

(assert (=> b!7460571 (= e!4452417 tp_is_empty!49345)))

(declare-fun b!7460574 () Bool)

(declare-fun tp!2162160 () Bool)

(declare-fun tp!2162159 () Bool)

(assert (=> b!7460574 (= e!4452417 (and tp!2162160 tp!2162159))))

(assert (=> b!7460137 (= tp!2162065 e!4452417)))

(declare-fun b!7460572 () Bool)

(declare-fun tp!2162163 () Bool)

(declare-fun tp!2162161 () Bool)

(assert (=> b!7460572 (= e!4452417 (and tp!2162163 tp!2162161))))

(assert (= (and b!7460137 (is-ElementMatch!19528 (regTwo!39569 r1!5845))) b!7460571))

(assert (= (and b!7460137 (is-Concat!28373 (regTwo!39569 r1!5845))) b!7460572))

(assert (= (and b!7460137 (is-Star!19528 (regTwo!39569 r1!5845))) b!7460573))

(assert (= (and b!7460137 (is-Union!19528 (regTwo!39569 r1!5845))) b!7460574))

(declare-fun b!7460579 () Bool)

(declare-fun e!4452420 () Bool)

(declare-fun tp!2162167 () Bool)

(assert (=> b!7460579 (= e!4452420 tp!2162167)))

(declare-fun b!7460577 () Bool)

(assert (=> b!7460577 (= e!4452420 tp_is_empty!49345)))

(declare-fun b!7460580 () Bool)

(declare-fun tp!2162165 () Bool)

(declare-fun tp!2162164 () Bool)

(assert (=> b!7460580 (= e!4452420 (and tp!2162165 tp!2162164))))

(assert (=> b!7460141 (= tp!2162068 e!4452420)))

(declare-fun b!7460578 () Bool)

(declare-fun tp!2162168 () Bool)

(declare-fun tp!2162166 () Bool)

(assert (=> b!7460578 (= e!4452420 (and tp!2162168 tp!2162166))))

(assert (= (and b!7460141 (is-ElementMatch!19528 (reg!19857 rTail!78))) b!7460577))

(assert (= (and b!7460141 (is-Concat!28373 (reg!19857 rTail!78))) b!7460578))

(assert (= (and b!7460141 (is-Star!19528 (reg!19857 rTail!78))) b!7460579))

(assert (= (and b!7460141 (is-Union!19528 (reg!19857 rTail!78))) b!7460580))

(declare-fun b!7460585 () Bool)

(declare-fun e!4452421 () Bool)

(declare-fun tp!2162172 () Bool)

(assert (=> b!7460585 (= e!4452421 tp!2162172)))

(declare-fun b!7460583 () Bool)

(assert (=> b!7460583 (= e!4452421 tp_is_empty!49345)))

(declare-fun b!7460586 () Bool)

(declare-fun tp!2162170 () Bool)

(declare-fun tp!2162169 () Bool)

(assert (=> b!7460586 (= e!4452421 (and tp!2162170 tp!2162169))))

(assert (=> b!7460130 (= tp!2162062 e!4452421)))

(declare-fun b!7460584 () Bool)

(declare-fun tp!2162173 () Bool)

(declare-fun tp!2162171 () Bool)

(assert (=> b!7460584 (= e!4452421 (and tp!2162173 tp!2162171))))

(assert (= (and b!7460130 (is-ElementMatch!19528 (regOne!39568 r1!5845))) b!7460583))

(assert (= (and b!7460130 (is-Concat!28373 (regOne!39568 r1!5845))) b!7460584))

(assert (= (and b!7460130 (is-Star!19528 (regOne!39568 r1!5845))) b!7460585))

(assert (= (and b!7460130 (is-Union!19528 (regOne!39568 r1!5845))) b!7460586))

(declare-fun b!7460591 () Bool)

(declare-fun e!4452424 () Bool)

(declare-fun tp!2162177 () Bool)

(assert (=> b!7460591 (= e!4452424 tp!2162177)))

(declare-fun b!7460589 () Bool)

(assert (=> b!7460589 (= e!4452424 tp_is_empty!49345)))

(declare-fun b!7460592 () Bool)

(declare-fun tp!2162175 () Bool)

(declare-fun tp!2162174 () Bool)

(assert (=> b!7460592 (= e!4452424 (and tp!2162175 tp!2162174))))

(assert (=> b!7460130 (= tp!2162072 e!4452424)))

(declare-fun b!7460590 () Bool)

(declare-fun tp!2162178 () Bool)

(declare-fun tp!2162176 () Bool)

(assert (=> b!7460590 (= e!4452424 (and tp!2162178 tp!2162176))))

(assert (= (and b!7460130 (is-ElementMatch!19528 (regTwo!39568 r1!5845))) b!7460589))

(assert (= (and b!7460130 (is-Concat!28373 (regTwo!39568 r1!5845))) b!7460590))

(assert (= (and b!7460130 (is-Star!19528 (regTwo!39568 r1!5845))) b!7460591))

(assert (= (and b!7460130 (is-Union!19528 (regTwo!39568 r1!5845))) b!7460592))

(declare-fun b!7460597 () Bool)

(declare-fun e!4452427 () Bool)

(declare-fun tp!2162182 () Bool)

(assert (=> b!7460597 (= e!4452427 tp!2162182)))

(declare-fun b!7460595 () Bool)

(assert (=> b!7460595 (= e!4452427 tp_is_empty!49345)))

(declare-fun b!7460598 () Bool)

(declare-fun tp!2162180 () Bool)

(declare-fun tp!2162179 () Bool)

(assert (=> b!7460598 (= e!4452427 (and tp!2162180 tp!2162179))))

(assert (=> b!7460125 (= tp!2162069 e!4452427)))

(declare-fun b!7460596 () Bool)

(declare-fun tp!2162183 () Bool)

(declare-fun tp!2162181 () Bool)

(assert (=> b!7460596 (= e!4452427 (and tp!2162183 tp!2162181))))

(assert (= (and b!7460125 (is-ElementMatch!19528 (regOne!39569 rTail!78))) b!7460595))

(assert (= (and b!7460125 (is-Concat!28373 (regOne!39569 rTail!78))) b!7460596))

(assert (= (and b!7460125 (is-Star!19528 (regOne!39569 rTail!78))) b!7460597))

(assert (= (and b!7460125 (is-Union!19528 (regOne!39569 rTail!78))) b!7460598))

(declare-fun b!7460607 () Bool)

(declare-fun e!4452432 () Bool)

(declare-fun tp!2162187 () Bool)

(assert (=> b!7460607 (= e!4452432 tp!2162187)))

(declare-fun b!7460605 () Bool)

(assert (=> b!7460605 (= e!4452432 tp_is_empty!49345)))

(declare-fun b!7460608 () Bool)

(declare-fun tp!2162185 () Bool)

(declare-fun tp!2162184 () Bool)

(assert (=> b!7460608 (= e!4452432 (and tp!2162185 tp!2162184))))

(assert (=> b!7460125 (= tp!2162074 e!4452432)))

(declare-fun b!7460606 () Bool)

(declare-fun tp!2162188 () Bool)

(declare-fun tp!2162186 () Bool)

(assert (=> b!7460606 (= e!4452432 (and tp!2162188 tp!2162186))))

(assert (= (and b!7460125 (is-ElementMatch!19528 (regTwo!39569 rTail!78))) b!7460605))

(assert (= (and b!7460125 (is-Concat!28373 (regTwo!39569 rTail!78))) b!7460606))

(assert (= (and b!7460125 (is-Star!19528 (regTwo!39569 rTail!78))) b!7460607))

(assert (= (and b!7460125 (is-Union!19528 (regTwo!39569 rTail!78))) b!7460608))

(declare-fun b!7460617 () Bool)

(declare-fun e!4452439 () Bool)

(declare-fun tp!2162191 () Bool)

(assert (=> b!7460617 (= e!4452439 (and tp_is_empty!49345 tp!2162191))))

(assert (=> b!7460124 (= tp!2162060 e!4452439)))

(assert (= (and b!7460124 (is-Cons!72120 (t!386813 s!13591))) b!7460617))

(declare-fun b!7460620 () Bool)

(declare-fun e!4452440 () Bool)

(declare-fun tp!2162195 () Bool)

(assert (=> b!7460620 (= e!4452440 tp!2162195)))

(declare-fun b!7460618 () Bool)

(assert (=> b!7460618 (= e!4452440 tp_is_empty!49345)))

(declare-fun b!7460621 () Bool)

(declare-fun tp!2162193 () Bool)

(declare-fun tp!2162192 () Bool)

(assert (=> b!7460621 (= e!4452440 (and tp!2162193 tp!2162192))))

(assert (=> b!7460134 (= tp!2162064 e!4452440)))

(declare-fun b!7460619 () Bool)

(declare-fun tp!2162196 () Bool)

(declare-fun tp!2162194 () Bool)

(assert (=> b!7460619 (= e!4452440 (and tp!2162196 tp!2162194))))

(assert (= (and b!7460134 (is-ElementMatch!19528 (regOne!39568 rTail!78))) b!7460618))

(assert (= (and b!7460134 (is-Concat!28373 (regOne!39568 rTail!78))) b!7460619))

(assert (= (and b!7460134 (is-Star!19528 (regOne!39568 rTail!78))) b!7460620))

(assert (= (and b!7460134 (is-Union!19528 (regOne!39568 rTail!78))) b!7460621))

(declare-fun b!7460624 () Bool)

(declare-fun e!4452441 () Bool)

(declare-fun tp!2162200 () Bool)

(assert (=> b!7460624 (= e!4452441 tp!2162200)))

(declare-fun b!7460622 () Bool)

(assert (=> b!7460622 (= e!4452441 tp_is_empty!49345)))

(declare-fun b!7460625 () Bool)

(declare-fun tp!2162198 () Bool)

(declare-fun tp!2162197 () Bool)

(assert (=> b!7460625 (= e!4452441 (and tp!2162198 tp!2162197))))

(assert (=> b!7460134 (= tp!2162067 e!4452441)))

(declare-fun b!7460623 () Bool)

(declare-fun tp!2162201 () Bool)

(declare-fun tp!2162199 () Bool)

(assert (=> b!7460623 (= e!4452441 (and tp!2162201 tp!2162199))))

(assert (= (and b!7460134 (is-ElementMatch!19528 (regTwo!39568 rTail!78))) b!7460622))

(assert (= (and b!7460134 (is-Concat!28373 (regTwo!39568 rTail!78))) b!7460623))

(assert (= (and b!7460134 (is-Star!19528 (regTwo!39568 rTail!78))) b!7460624))

(assert (= (and b!7460134 (is-Union!19528 (regTwo!39568 rTail!78))) b!7460625))

(declare-fun b!7460628 () Bool)

(declare-fun e!4452442 () Bool)

(declare-fun tp!2162205 () Bool)

(assert (=> b!7460628 (= e!4452442 tp!2162205)))

(declare-fun b!7460626 () Bool)

(assert (=> b!7460626 (= e!4452442 tp_is_empty!49345)))

(declare-fun b!7460629 () Bool)

(declare-fun tp!2162203 () Bool)

(declare-fun tp!2162202 () Bool)

(assert (=> b!7460629 (= e!4452442 (and tp!2162203 tp!2162202))))

(assert (=> b!7460140 (= tp!2162073 e!4452442)))

(declare-fun b!7460627 () Bool)

(declare-fun tp!2162206 () Bool)

(declare-fun tp!2162204 () Bool)

(assert (=> b!7460627 (= e!4452442 (and tp!2162206 tp!2162204))))

(assert (= (and b!7460140 (is-ElementMatch!19528 (regOne!39568 r2!5783))) b!7460626))

(assert (= (and b!7460140 (is-Concat!28373 (regOne!39568 r2!5783))) b!7460627))

(assert (= (and b!7460140 (is-Star!19528 (regOne!39568 r2!5783))) b!7460628))

(assert (= (and b!7460140 (is-Union!19528 (regOne!39568 r2!5783))) b!7460629))

(declare-fun b!7460632 () Bool)

(declare-fun e!4452443 () Bool)

(declare-fun tp!2162210 () Bool)

(assert (=> b!7460632 (= e!4452443 tp!2162210)))

(declare-fun b!7460630 () Bool)

(assert (=> b!7460630 (= e!4452443 tp_is_empty!49345)))

(declare-fun b!7460633 () Bool)

(declare-fun tp!2162208 () Bool)

(declare-fun tp!2162207 () Bool)

(assert (=> b!7460633 (= e!4452443 (and tp!2162208 tp!2162207))))

(assert (=> b!7460140 (= tp!2162063 e!4452443)))

(declare-fun b!7460631 () Bool)

(declare-fun tp!2162211 () Bool)

(declare-fun tp!2162209 () Bool)

(assert (=> b!7460631 (= e!4452443 (and tp!2162211 tp!2162209))))

(assert (= (and b!7460140 (is-ElementMatch!19528 (regTwo!39568 r2!5783))) b!7460630))

(assert (= (and b!7460140 (is-Concat!28373 (regTwo!39568 r2!5783))) b!7460631))

(assert (= (and b!7460140 (is-Star!19528 (regTwo!39568 r2!5783))) b!7460632))

(assert (= (and b!7460140 (is-Union!19528 (regTwo!39568 r2!5783))) b!7460633))

(push 1)

(assert (not b!7460596))

(assert (not d!2298018))

(assert (not b!7460560))

(assert (not bm!685335))

(assert (not b!7460625))

(assert (not b!7460621))

(assert (not d!2298042))

(assert (not b!7460539))

(assert (not b!7460569))

(assert (not b!7460379))

(assert (not bm!685326))

(assert (not b!7460573))

(assert (not b!7460561))

(assert (not b!7460502))

(assert (not b!7460592))

(assert (not b!7460591))

(assert (not b!7460304))

(assert (not b!7460579))

(assert (not b!7460445))

(assert (not d!2298044))

(assert (not bm!685361))

(assert (not b!7460633))

(assert (not b!7460234))

(assert (not b!7460520))

(assert (not b!7460557))

(assert (not bm!685355))

(assert (not b!7460623))

(assert (not b!7460624))

(assert (not b!7460538))

(assert (not b!7460566))

(assert (not b!7460584))

(assert (not b!7460629))

(assert (not d!2298022))

(assert (not bm!685345))

(assert (not b!7460481))

(assert (not b!7460568))

(assert (not b!7460606))

(assert (not b!7460303))

(assert (not b!7460590))

(assert (not b!7460455))

(assert (not b!7460299))

(assert (not b!7460470))

(assert (not bm!685351))

(assert (not b!7460574))

(assert (not bm!685359))

(assert (not b!7460598))

(assert (not b!7460580))

(assert (not b!7460443))

(assert (not b!7460302))

(assert (not b!7460617))

(assert (not d!2298040))

(assert (not b!7460449))

(assert (not b!7460556))

(assert (not bm!685328))

(assert (not b!7460554))

(assert (not b!7460608))

(assert (not b!7460570))

(assert (not b!7460572))

(assert (not bm!685353))

(assert (not b!7460305))

(assert (not d!2298024))

(assert (not b!7460442))

(assert (not b!7460628))

(assert (not b!7460306))

(assert (not d!2298030))

(assert (not bm!685356))

(assert (not b!7460483))

(assert (not bm!685340))

(assert (not b!7460564))

(assert (not b!7460619))

(assert (not d!2298058))

(assert (not b!7460552))

(assert (not d!2298026))

(assert (not d!2298054))

(assert (not b!7460378))

(assert (not b!7460631))

(assert tp_is_empty!49345)

(assert (not b!7460607))

(assert (not b!7460632))

(assert (not b!7460586))

(assert (not bm!685338))

(assert (not b!7460627))

(assert (not b!7460597))

(assert (not b!7460585))

(assert (not b!7460553))

(assert (not b!7460578))

(assert (not bm!685346))

(assert (not b!7460297))

(assert (not b!7460334))

(assert (not d!2298020))

(assert (not b!7460501))

(assert (not b!7460620))

(assert (not b!7460453))

(assert (not b!7460565))

(assert (not b!7460558))

(assert (not b!7460471))

(assert (not b!7460477))

(assert (not b!7460473))

(assert (not b!7460562))

(assert (not bm!685333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

