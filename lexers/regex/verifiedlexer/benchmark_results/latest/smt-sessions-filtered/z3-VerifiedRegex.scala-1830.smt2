; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91190 () Bool)

(assert start!91190)

(declare-fun b!1061142 () Bool)

(declare-fun e!673408 () Bool)

(declare-fun tp_is_empty!5481 () Bool)

(declare-fun tp!318785 () Bool)

(assert (=> b!1061142 (= e!673408 (and tp_is_empty!5481 tp!318785))))

(declare-fun b!1061143 () Bool)

(declare-fun e!673403 () Bool)

(declare-datatypes ((C!6408 0))(
  ( (C!6409 (val!3452 Int)) )
))
(declare-datatypes ((Regex!2919 0))(
  ( (ElementMatch!2919 (c!177844 C!6408)) (Concat!4752 (regOne!6350 Regex!2919) (regTwo!6350 Regex!2919)) (EmptyExpr!2919) (Star!2919 (reg!3248 Regex!2919)) (EmptyLang!2919) (Union!2919 (regOne!6351 Regex!2919) (regTwo!6351 Regex!2919)) )
))
(declare-fun lt!359822 () Regex!2919)

(declare-datatypes ((List!10149 0))(
  ( (Nil!10133) (Cons!10133 (h!15534 C!6408) (t!101195 List!10149)) )
))
(declare-fun s!10566 () List!10149)

(declare-fun matchR!1455 (Regex!2919 List!10149) Bool)

(assert (=> b!1061143 (= e!673403 (matchR!1455 lt!359822 s!10566))))

(declare-fun b!1061144 () Bool)

(declare-fun e!673401 () Bool)

(declare-fun e!673405 () Bool)

(assert (=> b!1061144 (= e!673401 e!673405)))

(declare-fun res!474199 () Bool)

(assert (=> b!1061144 (=> res!474199 e!673405)))

(declare-fun lt!359818 () Regex!2919)

(assert (=> b!1061144 (= res!474199 (not (matchR!1455 lt!359818 s!10566)))))

(declare-fun lt!359819 () Regex!2919)

(assert (=> b!1061144 (= lt!359818 (Union!2919 lt!359819 lt!359822))))

(declare-fun r!15766 () Regex!2919)

(declare-fun removeUselessConcat!468 (Regex!2919) Regex!2919)

(assert (=> b!1061144 (= lt!359822 (removeUselessConcat!468 (regTwo!6351 r!15766)))))

(assert (=> b!1061144 (= lt!359819 (removeUselessConcat!468 (regOne!6351 r!15766)))))

(declare-fun b!1061145 () Bool)

(declare-fun e!673407 () Bool)

(declare-fun e!673406 () Bool)

(assert (=> b!1061145 (= e!673407 e!673406)))

(declare-fun res!474196 () Bool)

(assert (=> b!1061145 (=> (not res!474196) (not e!673406))))

(declare-fun validRegex!1388 (Regex!2919) Bool)

(assert (=> b!1061145 (= res!474196 (validRegex!1388 (regTwo!6351 r!15766)))))

(assert (=> b!1061145 (matchR!1455 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766)) s!10566)))

(declare-datatypes ((Unit!15513 0))(
  ( (Unit!15514) )
))
(declare-fun lt!359817 () Unit!15513)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!26 (Regex!2919 Regex!2919 List!10149) Unit!15513)

(assert (=> b!1061145 (= lt!359817 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!26 (regTwo!6351 r!15766) (regOne!6351 r!15766) s!10566))))

(declare-fun b!1061146 () Bool)

(declare-fun e!673402 () Bool)

(declare-fun tp!318783 () Bool)

(assert (=> b!1061146 (= e!673402 tp!318783)))

(declare-fun b!1061147 () Bool)

(declare-fun e!673404 () Bool)

(assert (=> b!1061147 (= e!673405 e!673404)))

(declare-fun res!474198 () Bool)

(assert (=> b!1061147 (=> res!474198 e!673404)))

(declare-fun lt!359823 () Bool)

(assert (=> b!1061147 (= res!474198 lt!359823)))

(assert (=> b!1061147 e!673403))

(declare-fun res!474200 () Bool)

(assert (=> b!1061147 (=> res!474200 e!673403)))

(assert (=> b!1061147 (= res!474200 lt!359823)))

(assert (=> b!1061147 (= lt!359823 (matchR!1455 lt!359819 s!10566))))

(declare-fun lt!359821 () Unit!15513)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!98 (Regex!2919 Regex!2919 List!10149) Unit!15513)

(assert (=> b!1061147 (= lt!359821 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!98 lt!359819 lt!359822 s!10566))))

(declare-fun matchRSpec!718 (Regex!2919 List!10149) Bool)

(assert (=> b!1061147 (matchRSpec!718 lt!359818 s!10566)))

(declare-fun lt!359813 () Unit!15513)

(declare-fun mainMatchTheorem!718 (Regex!2919 List!10149) Unit!15513)

(assert (=> b!1061147 (= lt!359813 (mainMatchTheorem!718 lt!359818 s!10566))))

(declare-fun b!1061148 () Bool)

(declare-fun e!673409 () Bool)

(assert (=> b!1061148 (= e!673409 (not e!673401))))

(declare-fun res!474197 () Bool)

(assert (=> b!1061148 (=> res!474197 e!673401)))

(declare-fun lt!359816 () Bool)

(get-info :version)

(assert (=> b!1061148 (= res!474197 (or lt!359816 (and ((_ is Concat!4752) r!15766) ((_ is EmptyExpr!2919) (regOne!6350 r!15766))) (and ((_ is Concat!4752) r!15766) ((_ is EmptyExpr!2919) (regTwo!6350 r!15766))) ((_ is Concat!4752) r!15766) (not ((_ is Union!2919) r!15766))))))

(assert (=> b!1061148 (= lt!359816 (matchRSpec!718 r!15766 s!10566))))

(assert (=> b!1061148 (= lt!359816 (matchR!1455 r!15766 s!10566))))

(declare-fun lt!359815 () Unit!15513)

(assert (=> b!1061148 (= lt!359815 (mainMatchTheorem!718 r!15766 s!10566))))

(declare-fun b!1061149 () Bool)

(assert (=> b!1061149 (= e!673402 tp_is_empty!5481)))

(declare-fun b!1061150 () Bool)

(assert (=> b!1061150 (= e!673406 (validRegex!1388 (regOne!6351 r!15766)))))

(declare-fun res!474202 () Bool)

(assert (=> start!91190 (=> (not res!474202) (not e!673409))))

(assert (=> start!91190 (= res!474202 (validRegex!1388 r!15766))))

(assert (=> start!91190 e!673409))

(assert (=> start!91190 e!673402))

(assert (=> start!91190 e!673408))

(declare-fun b!1061151 () Bool)

(declare-fun tp!318787 () Bool)

(declare-fun tp!318786 () Bool)

(assert (=> b!1061151 (= e!673402 (and tp!318787 tp!318786))))

(declare-fun b!1061152 () Bool)

(assert (=> b!1061152 (= e!673404 e!673407)))

(declare-fun res!474201 () Bool)

(assert (=> b!1061152 (=> res!474201 e!673407)))

(declare-fun lt!359814 () Bool)

(assert (=> b!1061152 (= res!474201 (not lt!359814))))

(assert (=> b!1061152 (= lt!359814 (matchR!1455 lt!359822 s!10566))))

(assert (=> b!1061152 (= lt!359814 (matchR!1455 (regTwo!6351 r!15766) s!10566))))

(declare-fun lt!359820 () Unit!15513)

(declare-fun lemmaRemoveUselessConcatSound!278 (Regex!2919 List!10149) Unit!15513)

(assert (=> b!1061152 (= lt!359820 (lemmaRemoveUselessConcatSound!278 (regTwo!6351 r!15766) s!10566))))

(declare-fun b!1061153 () Bool)

(declare-fun tp!318784 () Bool)

(declare-fun tp!318788 () Bool)

(assert (=> b!1061153 (= e!673402 (and tp!318784 tp!318788))))

(assert (= (and start!91190 res!474202) b!1061148))

(assert (= (and b!1061148 (not res!474197)) b!1061144))

(assert (= (and b!1061144 (not res!474199)) b!1061147))

(assert (= (and b!1061147 (not res!474200)) b!1061143))

(assert (= (and b!1061147 (not res!474198)) b!1061152))

(assert (= (and b!1061152 (not res!474201)) b!1061145))

(assert (= (and b!1061145 res!474196) b!1061150))

(assert (= (and start!91190 ((_ is ElementMatch!2919) r!15766)) b!1061149))

(assert (= (and start!91190 ((_ is Concat!4752) r!15766)) b!1061153))

(assert (= (and start!91190 ((_ is Star!2919) r!15766)) b!1061146))

(assert (= (and start!91190 ((_ is Union!2919) r!15766)) b!1061151))

(assert (= (and start!91190 ((_ is Cons!10133) s!10566)) b!1061142))

(declare-fun m!1221085 () Bool)

(assert (=> b!1061148 m!1221085))

(declare-fun m!1221087 () Bool)

(assert (=> b!1061148 m!1221087))

(declare-fun m!1221089 () Bool)

(assert (=> b!1061148 m!1221089))

(declare-fun m!1221091 () Bool)

(assert (=> b!1061143 m!1221091))

(assert (=> b!1061152 m!1221091))

(declare-fun m!1221093 () Bool)

(assert (=> b!1061152 m!1221093))

(declare-fun m!1221095 () Bool)

(assert (=> b!1061152 m!1221095))

(declare-fun m!1221097 () Bool)

(assert (=> start!91190 m!1221097))

(declare-fun m!1221099 () Bool)

(assert (=> b!1061150 m!1221099))

(declare-fun m!1221101 () Bool)

(assert (=> b!1061144 m!1221101))

(declare-fun m!1221103 () Bool)

(assert (=> b!1061144 m!1221103))

(declare-fun m!1221105 () Bool)

(assert (=> b!1061144 m!1221105))

(declare-fun m!1221107 () Bool)

(assert (=> b!1061145 m!1221107))

(declare-fun m!1221109 () Bool)

(assert (=> b!1061145 m!1221109))

(declare-fun m!1221111 () Bool)

(assert (=> b!1061145 m!1221111))

(declare-fun m!1221113 () Bool)

(assert (=> b!1061147 m!1221113))

(declare-fun m!1221115 () Bool)

(assert (=> b!1061147 m!1221115))

(declare-fun m!1221117 () Bool)

(assert (=> b!1061147 m!1221117))

(declare-fun m!1221119 () Bool)

(assert (=> b!1061147 m!1221119))

(check-sat tp_is_empty!5481 (not b!1061152) (not b!1061143) (not b!1061145) (not b!1061142) (not b!1061148) (not b!1061153) (not b!1061147) (not b!1061146) (not b!1061150) (not b!1061151) (not b!1061144) (not start!91190))
(check-sat)
(get-model)

(declare-fun b!1061204 () Bool)

(declare-fun e!673444 () Bool)

(declare-fun e!673440 () Bool)

(assert (=> b!1061204 (= e!673444 e!673440)))

(declare-fun res!474231 () Bool)

(assert (=> b!1061204 (=> (not res!474231) (not e!673440))))

(declare-fun lt!359826 () Bool)

(assert (=> b!1061204 (= res!474231 (not lt!359826))))

(declare-fun b!1061205 () Bool)

(declare-fun res!474225 () Bool)

(declare-fun e!673438 () Bool)

(assert (=> b!1061205 (=> (not res!474225) (not e!673438))))

(declare-fun isEmpty!6551 (List!10149) Bool)

(declare-fun tail!1528 (List!10149) List!10149)

(assert (=> b!1061205 (= res!474225 (isEmpty!6551 (tail!1528 s!10566)))))

(declare-fun b!1061206 () Bool)

(declare-fun e!673442 () Bool)

(declare-fun derivativeStep!811 (Regex!2919 C!6408) Regex!2919)

(declare-fun head!1966 (List!10149) C!6408)

(assert (=> b!1061206 (= e!673442 (matchR!1455 (derivativeStep!811 lt!359822 (head!1966 s!10566)) (tail!1528 s!10566)))))

(declare-fun b!1061207 () Bool)

(assert (=> b!1061207 (= e!673438 (= (head!1966 s!10566) (c!177844 lt!359822)))))

(declare-fun b!1061208 () Bool)

(declare-fun e!673439 () Bool)

(declare-fun call!76284 () Bool)

(assert (=> b!1061208 (= e!673439 (= lt!359826 call!76284))))

(declare-fun b!1061209 () Bool)

(declare-fun res!474230 () Bool)

(assert (=> b!1061209 (=> res!474230 e!673444)))

(assert (=> b!1061209 (= res!474230 e!673438)))

(declare-fun res!474232 () Bool)

(assert (=> b!1061209 (=> (not res!474232) (not e!673438))))

(assert (=> b!1061209 (= res!474232 lt!359826)))

(declare-fun bm!76279 () Bool)

(assert (=> bm!76279 (= call!76284 (isEmpty!6551 s!10566))))

(declare-fun b!1061210 () Bool)

(declare-fun res!474228 () Bool)

(declare-fun e!673443 () Bool)

(assert (=> b!1061210 (=> res!474228 e!673443)))

(assert (=> b!1061210 (= res!474228 (not (isEmpty!6551 (tail!1528 s!10566))))))

(declare-fun b!1061211 () Bool)

(declare-fun nullable!1011 (Regex!2919) Bool)

(assert (=> b!1061211 (= e!673442 (nullable!1011 lt!359822))))

(declare-fun b!1061212 () Bool)

(assert (=> b!1061212 (= e!673443 (not (= (head!1966 s!10566) (c!177844 lt!359822))))))

(declare-fun b!1061213 () Bool)

(declare-fun res!474227 () Bool)

(assert (=> b!1061213 (=> res!474227 e!673444)))

(assert (=> b!1061213 (= res!474227 (not ((_ is ElementMatch!2919) lt!359822)))))

(declare-fun e!673441 () Bool)

(assert (=> b!1061213 (= e!673441 e!673444)))

(declare-fun b!1061215 () Bool)

(declare-fun res!474226 () Bool)

(assert (=> b!1061215 (=> (not res!474226) (not e!673438))))

(assert (=> b!1061215 (= res!474226 (not call!76284))))

(declare-fun b!1061216 () Bool)

(assert (=> b!1061216 (= e!673439 e!673441)))

(declare-fun c!177861 () Bool)

(assert (=> b!1061216 (= c!177861 ((_ is EmptyLang!2919) lt!359822))))

(declare-fun b!1061217 () Bool)

(assert (=> b!1061217 (= e!673441 (not lt!359826))))

(declare-fun b!1061214 () Bool)

(assert (=> b!1061214 (= e!673440 e!673443)))

(declare-fun res!474229 () Bool)

(assert (=> b!1061214 (=> res!474229 e!673443)))

(assert (=> b!1061214 (= res!474229 call!76284)))

(declare-fun d!300671 () Bool)

(assert (=> d!300671 e!673439))

(declare-fun c!177860 () Bool)

(assert (=> d!300671 (= c!177860 ((_ is EmptyExpr!2919) lt!359822))))

(assert (=> d!300671 (= lt!359826 e!673442)))

(declare-fun c!177859 () Bool)

(assert (=> d!300671 (= c!177859 (isEmpty!6551 s!10566))))

(assert (=> d!300671 (validRegex!1388 lt!359822)))

(assert (=> d!300671 (= (matchR!1455 lt!359822 s!10566) lt!359826)))

(assert (= (and d!300671 c!177859) b!1061211))

(assert (= (and d!300671 (not c!177859)) b!1061206))

(assert (= (and d!300671 c!177860) b!1061208))

(assert (= (and d!300671 (not c!177860)) b!1061216))

(assert (= (and b!1061216 c!177861) b!1061217))

(assert (= (and b!1061216 (not c!177861)) b!1061213))

(assert (= (and b!1061213 (not res!474227)) b!1061209))

(assert (= (and b!1061209 res!474232) b!1061215))

(assert (= (and b!1061215 res!474226) b!1061205))

(assert (= (and b!1061205 res!474225) b!1061207))

(assert (= (and b!1061209 (not res!474230)) b!1061204))

(assert (= (and b!1061204 res!474231) b!1061214))

(assert (= (and b!1061214 (not res!474229)) b!1061210))

(assert (= (and b!1061210 (not res!474228)) b!1061212))

(assert (= (or b!1061208 b!1061214 b!1061215) bm!76279))

(declare-fun m!1221121 () Bool)

(assert (=> bm!76279 m!1221121))

(assert (=> d!300671 m!1221121))

(declare-fun m!1221123 () Bool)

(assert (=> d!300671 m!1221123))

(declare-fun m!1221125 () Bool)

(assert (=> b!1061207 m!1221125))

(declare-fun m!1221127 () Bool)

(assert (=> b!1061205 m!1221127))

(assert (=> b!1061205 m!1221127))

(declare-fun m!1221129 () Bool)

(assert (=> b!1061205 m!1221129))

(assert (=> b!1061212 m!1221125))

(declare-fun m!1221131 () Bool)

(assert (=> b!1061211 m!1221131))

(assert (=> b!1061206 m!1221125))

(assert (=> b!1061206 m!1221125))

(declare-fun m!1221133 () Bool)

(assert (=> b!1061206 m!1221133))

(assert (=> b!1061206 m!1221127))

(assert (=> b!1061206 m!1221133))

(assert (=> b!1061206 m!1221127))

(declare-fun m!1221135 () Bool)

(assert (=> b!1061206 m!1221135))

(assert (=> b!1061210 m!1221127))

(assert (=> b!1061210 m!1221127))

(assert (=> b!1061210 m!1221129))

(assert (=> b!1061143 d!300671))

(declare-fun b!1061236 () Bool)

(declare-fun e!673463 () Bool)

(declare-fun e!673465 () Bool)

(assert (=> b!1061236 (= e!673463 e!673465)))

(declare-fun res!474243 () Bool)

(assert (=> b!1061236 (=> (not res!474243) (not e!673465))))

(declare-fun call!76292 () Bool)

(assert (=> b!1061236 (= res!474243 call!76292)))

(declare-fun b!1061237 () Bool)

(declare-fun e!673460 () Bool)

(declare-fun e!673459 () Bool)

(assert (=> b!1061237 (= e!673460 e!673459)))

(declare-fun c!177867 () Bool)

(assert (=> b!1061237 (= c!177867 ((_ is Union!2919) r!15766))))

(declare-fun b!1061238 () Bool)

(declare-fun e!673461 () Bool)

(assert (=> b!1061238 (= e!673461 e!673460)))

(declare-fun c!177866 () Bool)

(assert (=> b!1061238 (= c!177866 ((_ is Star!2919) r!15766))))

(declare-fun b!1061239 () Bool)

(declare-fun call!76293 () Bool)

(assert (=> b!1061239 (= e!673465 call!76293)))

(declare-fun d!300675 () Bool)

(declare-fun res!474244 () Bool)

(assert (=> d!300675 (=> res!474244 e!673461)))

(assert (=> d!300675 (= res!474244 ((_ is ElementMatch!2919) r!15766))))

(assert (=> d!300675 (= (validRegex!1388 r!15766) e!673461)))

(declare-fun b!1061240 () Bool)

(declare-fun e!673464 () Bool)

(assert (=> b!1061240 (= e!673464 call!76293)))

(declare-fun bm!76286 () Bool)

(declare-fun call!76291 () Bool)

(assert (=> bm!76286 (= call!76293 call!76291)))

(declare-fun bm!76287 () Bool)

(assert (=> bm!76287 (= call!76292 (validRegex!1388 (ite c!177867 (regOne!6351 r!15766) (regOne!6350 r!15766))))))

(declare-fun b!1061241 () Bool)

(declare-fun res!474246 () Bool)

(assert (=> b!1061241 (=> (not res!474246) (not e!673464))))

(assert (=> b!1061241 (= res!474246 call!76292)))

(assert (=> b!1061241 (= e!673459 e!673464)))

(declare-fun b!1061242 () Bool)

(declare-fun res!474245 () Bool)

(assert (=> b!1061242 (=> res!474245 e!673463)))

(assert (=> b!1061242 (= res!474245 (not ((_ is Concat!4752) r!15766)))))

(assert (=> b!1061242 (= e!673459 e!673463)))

(declare-fun b!1061243 () Bool)

(declare-fun e!673462 () Bool)

(assert (=> b!1061243 (= e!673460 e!673462)))

(declare-fun res!474247 () Bool)

(assert (=> b!1061243 (= res!474247 (not (nullable!1011 (reg!3248 r!15766))))))

(assert (=> b!1061243 (=> (not res!474247) (not e!673462))))

(declare-fun bm!76288 () Bool)

(assert (=> bm!76288 (= call!76291 (validRegex!1388 (ite c!177866 (reg!3248 r!15766) (ite c!177867 (regTwo!6351 r!15766) (regTwo!6350 r!15766)))))))

(declare-fun b!1061244 () Bool)

(assert (=> b!1061244 (= e!673462 call!76291)))

(assert (= (and d!300675 (not res!474244)) b!1061238))

(assert (= (and b!1061238 c!177866) b!1061243))

(assert (= (and b!1061238 (not c!177866)) b!1061237))

(assert (= (and b!1061243 res!474247) b!1061244))

(assert (= (and b!1061237 c!177867) b!1061241))

(assert (= (and b!1061237 (not c!177867)) b!1061242))

(assert (= (and b!1061241 res!474246) b!1061240))

(assert (= (and b!1061242 (not res!474245)) b!1061236))

(assert (= (and b!1061236 res!474243) b!1061239))

(assert (= (or b!1061240 b!1061239) bm!76286))

(assert (= (or b!1061241 b!1061236) bm!76287))

(assert (= (or b!1061244 bm!76286) bm!76288))

(declare-fun m!1221137 () Bool)

(assert (=> bm!76287 m!1221137))

(declare-fun m!1221139 () Bool)

(assert (=> b!1061243 m!1221139))

(declare-fun m!1221141 () Bool)

(assert (=> bm!76288 m!1221141))

(assert (=> start!91190 d!300675))

(declare-fun b!1061245 () Bool)

(declare-fun e!673472 () Bool)

(declare-fun e!673468 () Bool)

(assert (=> b!1061245 (= e!673472 e!673468)))

(declare-fun res!474254 () Bool)

(assert (=> b!1061245 (=> (not res!474254) (not e!673468))))

(declare-fun lt!359827 () Bool)

(assert (=> b!1061245 (= res!474254 (not lt!359827))))

(declare-fun b!1061246 () Bool)

(declare-fun res!474248 () Bool)

(declare-fun e!673466 () Bool)

(assert (=> b!1061246 (=> (not res!474248) (not e!673466))))

(assert (=> b!1061246 (= res!474248 (isEmpty!6551 (tail!1528 s!10566)))))

(declare-fun b!1061247 () Bool)

(declare-fun e!673470 () Bool)

(assert (=> b!1061247 (= e!673470 (matchR!1455 (derivativeStep!811 lt!359818 (head!1966 s!10566)) (tail!1528 s!10566)))))

(declare-fun b!1061248 () Bool)

(assert (=> b!1061248 (= e!673466 (= (head!1966 s!10566) (c!177844 lt!359818)))))

(declare-fun b!1061249 () Bool)

(declare-fun e!673467 () Bool)

(declare-fun call!76294 () Bool)

(assert (=> b!1061249 (= e!673467 (= lt!359827 call!76294))))

(declare-fun b!1061250 () Bool)

(declare-fun res!474253 () Bool)

(assert (=> b!1061250 (=> res!474253 e!673472)))

(assert (=> b!1061250 (= res!474253 e!673466)))

(declare-fun res!474255 () Bool)

(assert (=> b!1061250 (=> (not res!474255) (not e!673466))))

(assert (=> b!1061250 (= res!474255 lt!359827)))

(declare-fun bm!76289 () Bool)

(assert (=> bm!76289 (= call!76294 (isEmpty!6551 s!10566))))

(declare-fun b!1061251 () Bool)

(declare-fun res!474251 () Bool)

(declare-fun e!673471 () Bool)

(assert (=> b!1061251 (=> res!474251 e!673471)))

(assert (=> b!1061251 (= res!474251 (not (isEmpty!6551 (tail!1528 s!10566))))))

(declare-fun b!1061252 () Bool)

(assert (=> b!1061252 (= e!673470 (nullable!1011 lt!359818))))

(declare-fun b!1061253 () Bool)

(assert (=> b!1061253 (= e!673471 (not (= (head!1966 s!10566) (c!177844 lt!359818))))))

(declare-fun b!1061254 () Bool)

(declare-fun res!474250 () Bool)

(assert (=> b!1061254 (=> res!474250 e!673472)))

(assert (=> b!1061254 (= res!474250 (not ((_ is ElementMatch!2919) lt!359818)))))

(declare-fun e!673469 () Bool)

(assert (=> b!1061254 (= e!673469 e!673472)))

(declare-fun b!1061256 () Bool)

(declare-fun res!474249 () Bool)

(assert (=> b!1061256 (=> (not res!474249) (not e!673466))))

(assert (=> b!1061256 (= res!474249 (not call!76294))))

(declare-fun b!1061257 () Bool)

(assert (=> b!1061257 (= e!673467 e!673469)))

(declare-fun c!177870 () Bool)

(assert (=> b!1061257 (= c!177870 ((_ is EmptyLang!2919) lt!359818))))

(declare-fun b!1061258 () Bool)

(assert (=> b!1061258 (= e!673469 (not lt!359827))))

(declare-fun b!1061255 () Bool)

(assert (=> b!1061255 (= e!673468 e!673471)))

(declare-fun res!474252 () Bool)

(assert (=> b!1061255 (=> res!474252 e!673471)))

(assert (=> b!1061255 (= res!474252 call!76294)))

(declare-fun d!300677 () Bool)

(assert (=> d!300677 e!673467))

(declare-fun c!177869 () Bool)

(assert (=> d!300677 (= c!177869 ((_ is EmptyExpr!2919) lt!359818))))

(assert (=> d!300677 (= lt!359827 e!673470)))

(declare-fun c!177868 () Bool)

(assert (=> d!300677 (= c!177868 (isEmpty!6551 s!10566))))

(assert (=> d!300677 (validRegex!1388 lt!359818)))

(assert (=> d!300677 (= (matchR!1455 lt!359818 s!10566) lt!359827)))

(assert (= (and d!300677 c!177868) b!1061252))

(assert (= (and d!300677 (not c!177868)) b!1061247))

(assert (= (and d!300677 c!177869) b!1061249))

(assert (= (and d!300677 (not c!177869)) b!1061257))

(assert (= (and b!1061257 c!177870) b!1061258))

(assert (= (and b!1061257 (not c!177870)) b!1061254))

(assert (= (and b!1061254 (not res!474250)) b!1061250))

(assert (= (and b!1061250 res!474255) b!1061256))

(assert (= (and b!1061256 res!474249) b!1061246))

(assert (= (and b!1061246 res!474248) b!1061248))

(assert (= (and b!1061250 (not res!474253)) b!1061245))

(assert (= (and b!1061245 res!474254) b!1061255))

(assert (= (and b!1061255 (not res!474252)) b!1061251))

(assert (= (and b!1061251 (not res!474251)) b!1061253))

(assert (= (or b!1061249 b!1061255 b!1061256) bm!76289))

(assert (=> bm!76289 m!1221121))

(assert (=> d!300677 m!1221121))

(declare-fun m!1221143 () Bool)

(assert (=> d!300677 m!1221143))

(assert (=> b!1061248 m!1221125))

(assert (=> b!1061246 m!1221127))

(assert (=> b!1061246 m!1221127))

(assert (=> b!1061246 m!1221129))

(assert (=> b!1061253 m!1221125))

(declare-fun m!1221145 () Bool)

(assert (=> b!1061252 m!1221145))

(assert (=> b!1061247 m!1221125))

(assert (=> b!1061247 m!1221125))

(declare-fun m!1221147 () Bool)

(assert (=> b!1061247 m!1221147))

(assert (=> b!1061247 m!1221127))

(assert (=> b!1061247 m!1221147))

(assert (=> b!1061247 m!1221127))

(declare-fun m!1221149 () Bool)

(assert (=> b!1061247 m!1221149))

(assert (=> b!1061251 m!1221127))

(assert (=> b!1061251 m!1221127))

(assert (=> b!1061251 m!1221129))

(assert (=> b!1061144 d!300677))

(declare-fun b!1061281 () Bool)

(declare-fun e!673490 () Regex!2919)

(declare-fun call!76309 () Regex!2919)

(assert (=> b!1061281 (= e!673490 call!76309)))

(declare-fun d!300679 () Bool)

(declare-fun e!673487 () Bool)

(assert (=> d!300679 e!673487))

(declare-fun res!474258 () Bool)

(assert (=> d!300679 (=> (not res!474258) (not e!673487))))

(declare-fun lt!359830 () Regex!2919)

(assert (=> d!300679 (= res!474258 (validRegex!1388 lt!359830))))

(assert (=> d!300679 (= lt!359830 e!673490)))

(declare-fun c!177885 () Bool)

(assert (=> d!300679 (= c!177885 (and ((_ is Concat!4752) (regTwo!6351 r!15766)) ((_ is EmptyExpr!2919) (regOne!6350 (regTwo!6351 r!15766)))))))

(assert (=> d!300679 (validRegex!1388 (regTwo!6351 r!15766))))

(assert (=> d!300679 (= (removeUselessConcat!468 (regTwo!6351 r!15766)) lt!359830)))

(declare-fun b!1061282 () Bool)

(declare-fun e!673489 () Regex!2919)

(declare-fun call!76305 () Regex!2919)

(declare-fun call!76307 () Regex!2919)

(assert (=> b!1061282 (= e!673489 (Union!2919 call!76305 call!76307))))

(declare-fun bm!76300 () Bool)

(declare-fun call!76306 () Regex!2919)

(assert (=> bm!76300 (= call!76307 call!76306)))

(declare-fun b!1061283 () Bool)

(declare-fun e!673485 () Regex!2919)

(assert (=> b!1061283 (= e!673490 e!673485)))

(declare-fun c!177882 () Bool)

(assert (=> b!1061283 (= c!177882 (and ((_ is Concat!4752) (regTwo!6351 r!15766)) ((_ is EmptyExpr!2919) (regTwo!6350 (regTwo!6351 r!15766)))))))

(declare-fun b!1061284 () Bool)

(declare-fun e!673488 () Regex!2919)

(assert (=> b!1061284 (= e!673488 e!673489)))

(declare-fun c!177881 () Bool)

(assert (=> b!1061284 (= c!177881 ((_ is Union!2919) (regTwo!6351 r!15766)))))

(declare-fun bm!76301 () Bool)

(declare-fun call!76308 () Regex!2919)

(assert (=> bm!76301 (= call!76305 call!76308)))

(declare-fun b!1061285 () Bool)

(declare-fun c!177883 () Bool)

(assert (=> b!1061285 (= c!177883 ((_ is Concat!4752) (regTwo!6351 r!15766)))))

(assert (=> b!1061285 (= e!673485 e!673488)))

(declare-fun b!1061286 () Bool)

(assert (=> b!1061286 (= e!673488 (Concat!4752 call!76306 call!76305))))

(declare-fun bm!76302 () Bool)

(assert (=> bm!76302 (= call!76306 (removeUselessConcat!468 (ite c!177883 (regOne!6350 (regTwo!6351 r!15766)) (ite c!177881 (regTwo!6351 (regTwo!6351 r!15766)) (reg!3248 (regTwo!6351 r!15766))))))))

(declare-fun bm!76303 () Bool)

(assert (=> bm!76303 (= call!76309 (removeUselessConcat!468 (ite c!177885 (regTwo!6350 (regTwo!6351 r!15766)) (ite c!177882 (regOne!6350 (regTwo!6351 r!15766)) (ite c!177883 (regTwo!6350 (regTwo!6351 r!15766)) (regOne!6351 (regTwo!6351 r!15766)))))))))

(declare-fun b!1061287 () Bool)

(declare-fun c!177884 () Bool)

(assert (=> b!1061287 (= c!177884 ((_ is Star!2919) (regTwo!6351 r!15766)))))

(declare-fun e!673486 () Regex!2919)

(assert (=> b!1061287 (= e!673489 e!673486)))

(declare-fun b!1061288 () Bool)

(assert (=> b!1061288 (= e!673485 call!76308)))

(declare-fun bm!76304 () Bool)

(assert (=> bm!76304 (= call!76308 call!76309)))

(declare-fun b!1061289 () Bool)

(assert (=> b!1061289 (= e!673486 (regTwo!6351 r!15766))))

(declare-fun b!1061290 () Bool)

(assert (=> b!1061290 (= e!673486 (Star!2919 call!76307))))

(declare-fun b!1061291 () Bool)

(assert (=> b!1061291 (= e!673487 (= (nullable!1011 lt!359830) (nullable!1011 (regTwo!6351 r!15766))))))

(assert (= (and d!300679 c!177885) b!1061281))

(assert (= (and d!300679 (not c!177885)) b!1061283))

(assert (= (and b!1061283 c!177882) b!1061288))

(assert (= (and b!1061283 (not c!177882)) b!1061285))

(assert (= (and b!1061285 c!177883) b!1061286))

(assert (= (and b!1061285 (not c!177883)) b!1061284))

(assert (= (and b!1061284 c!177881) b!1061282))

(assert (= (and b!1061284 (not c!177881)) b!1061287))

(assert (= (and b!1061287 c!177884) b!1061290))

(assert (= (and b!1061287 (not c!177884)) b!1061289))

(assert (= (or b!1061282 b!1061290) bm!76300))

(assert (= (or b!1061286 b!1061282) bm!76301))

(assert (= (or b!1061286 bm!76300) bm!76302))

(assert (= (or b!1061288 bm!76301) bm!76304))

(assert (= (or b!1061281 bm!76304) bm!76303))

(assert (= (and d!300679 res!474258) b!1061291))

(declare-fun m!1221151 () Bool)

(assert (=> d!300679 m!1221151))

(assert (=> d!300679 m!1221107))

(declare-fun m!1221153 () Bool)

(assert (=> bm!76302 m!1221153))

(declare-fun m!1221155 () Bool)

(assert (=> bm!76303 m!1221155))

(declare-fun m!1221157 () Bool)

(assert (=> b!1061291 m!1221157))

(declare-fun m!1221159 () Bool)

(assert (=> b!1061291 m!1221159))

(assert (=> b!1061144 d!300679))

(declare-fun b!1061292 () Bool)

(declare-fun e!673496 () Regex!2919)

(declare-fun call!76314 () Regex!2919)

(assert (=> b!1061292 (= e!673496 call!76314)))

(declare-fun d!300681 () Bool)

(declare-fun e!673493 () Bool)

(assert (=> d!300681 e!673493))

(declare-fun res!474259 () Bool)

(assert (=> d!300681 (=> (not res!474259) (not e!673493))))

(declare-fun lt!359831 () Regex!2919)

(assert (=> d!300681 (= res!474259 (validRegex!1388 lt!359831))))

(assert (=> d!300681 (= lt!359831 e!673496)))

(declare-fun c!177890 () Bool)

(assert (=> d!300681 (= c!177890 (and ((_ is Concat!4752) (regOne!6351 r!15766)) ((_ is EmptyExpr!2919) (regOne!6350 (regOne!6351 r!15766)))))))

(assert (=> d!300681 (validRegex!1388 (regOne!6351 r!15766))))

(assert (=> d!300681 (= (removeUselessConcat!468 (regOne!6351 r!15766)) lt!359831)))

(declare-fun b!1061293 () Bool)

(declare-fun e!673495 () Regex!2919)

(declare-fun call!76310 () Regex!2919)

(declare-fun call!76312 () Regex!2919)

(assert (=> b!1061293 (= e!673495 (Union!2919 call!76310 call!76312))))

(declare-fun bm!76305 () Bool)

(declare-fun call!76311 () Regex!2919)

(assert (=> bm!76305 (= call!76312 call!76311)))

(declare-fun b!1061294 () Bool)

(declare-fun e!673491 () Regex!2919)

(assert (=> b!1061294 (= e!673496 e!673491)))

(declare-fun c!177887 () Bool)

(assert (=> b!1061294 (= c!177887 (and ((_ is Concat!4752) (regOne!6351 r!15766)) ((_ is EmptyExpr!2919) (regTwo!6350 (regOne!6351 r!15766)))))))

(declare-fun b!1061295 () Bool)

(declare-fun e!673494 () Regex!2919)

(assert (=> b!1061295 (= e!673494 e!673495)))

(declare-fun c!177886 () Bool)

(assert (=> b!1061295 (= c!177886 ((_ is Union!2919) (regOne!6351 r!15766)))))

(declare-fun bm!76306 () Bool)

(declare-fun call!76313 () Regex!2919)

(assert (=> bm!76306 (= call!76310 call!76313)))

(declare-fun b!1061296 () Bool)

(declare-fun c!177888 () Bool)

(assert (=> b!1061296 (= c!177888 ((_ is Concat!4752) (regOne!6351 r!15766)))))

(assert (=> b!1061296 (= e!673491 e!673494)))

(declare-fun b!1061297 () Bool)

(assert (=> b!1061297 (= e!673494 (Concat!4752 call!76311 call!76310))))

(declare-fun bm!76307 () Bool)

(assert (=> bm!76307 (= call!76311 (removeUselessConcat!468 (ite c!177888 (regOne!6350 (regOne!6351 r!15766)) (ite c!177886 (regTwo!6351 (regOne!6351 r!15766)) (reg!3248 (regOne!6351 r!15766))))))))

(declare-fun bm!76308 () Bool)

(assert (=> bm!76308 (= call!76314 (removeUselessConcat!468 (ite c!177890 (regTwo!6350 (regOne!6351 r!15766)) (ite c!177887 (regOne!6350 (regOne!6351 r!15766)) (ite c!177888 (regTwo!6350 (regOne!6351 r!15766)) (regOne!6351 (regOne!6351 r!15766)))))))))

(declare-fun b!1061298 () Bool)

(declare-fun c!177889 () Bool)

(assert (=> b!1061298 (= c!177889 ((_ is Star!2919) (regOne!6351 r!15766)))))

(declare-fun e!673492 () Regex!2919)

(assert (=> b!1061298 (= e!673495 e!673492)))

(declare-fun b!1061299 () Bool)

(assert (=> b!1061299 (= e!673491 call!76313)))

(declare-fun bm!76309 () Bool)

(assert (=> bm!76309 (= call!76313 call!76314)))

(declare-fun b!1061300 () Bool)

(assert (=> b!1061300 (= e!673492 (regOne!6351 r!15766))))

(declare-fun b!1061301 () Bool)

(assert (=> b!1061301 (= e!673492 (Star!2919 call!76312))))

(declare-fun b!1061302 () Bool)

(assert (=> b!1061302 (= e!673493 (= (nullable!1011 lt!359831) (nullable!1011 (regOne!6351 r!15766))))))

(assert (= (and d!300681 c!177890) b!1061292))

(assert (= (and d!300681 (not c!177890)) b!1061294))

(assert (= (and b!1061294 c!177887) b!1061299))

(assert (= (and b!1061294 (not c!177887)) b!1061296))

(assert (= (and b!1061296 c!177888) b!1061297))

(assert (= (and b!1061296 (not c!177888)) b!1061295))

(assert (= (and b!1061295 c!177886) b!1061293))

(assert (= (and b!1061295 (not c!177886)) b!1061298))

(assert (= (and b!1061298 c!177889) b!1061301))

(assert (= (and b!1061298 (not c!177889)) b!1061300))

(assert (= (or b!1061293 b!1061301) bm!76305))

(assert (= (or b!1061297 b!1061293) bm!76306))

(assert (= (or b!1061297 bm!76305) bm!76307))

(assert (= (or b!1061299 bm!76306) bm!76309))

(assert (= (or b!1061292 bm!76309) bm!76308))

(assert (= (and d!300681 res!474259) b!1061302))

(declare-fun m!1221161 () Bool)

(assert (=> d!300681 m!1221161))

(assert (=> d!300681 m!1221099))

(declare-fun m!1221163 () Bool)

(assert (=> bm!76307 m!1221163))

(declare-fun m!1221165 () Bool)

(assert (=> bm!76308 m!1221165))

(declare-fun m!1221167 () Bool)

(assert (=> b!1061302 m!1221167))

(declare-fun m!1221169 () Bool)

(assert (=> b!1061302 m!1221169))

(assert (=> b!1061144 d!300681))

(declare-fun b!1061303 () Bool)

(declare-fun e!673501 () Bool)

(declare-fun e!673503 () Bool)

(assert (=> b!1061303 (= e!673501 e!673503)))

(declare-fun res!474260 () Bool)

(assert (=> b!1061303 (=> (not res!474260) (not e!673503))))

(declare-fun call!76316 () Bool)

(assert (=> b!1061303 (= res!474260 call!76316)))

(declare-fun b!1061304 () Bool)

(declare-fun e!673498 () Bool)

(declare-fun e!673497 () Bool)

(assert (=> b!1061304 (= e!673498 e!673497)))

(declare-fun c!177892 () Bool)

(assert (=> b!1061304 (= c!177892 ((_ is Union!2919) (regOne!6351 r!15766)))))

(declare-fun b!1061305 () Bool)

(declare-fun e!673499 () Bool)

(assert (=> b!1061305 (= e!673499 e!673498)))

(declare-fun c!177891 () Bool)

(assert (=> b!1061305 (= c!177891 ((_ is Star!2919) (regOne!6351 r!15766)))))

(declare-fun b!1061306 () Bool)

(declare-fun call!76317 () Bool)

(assert (=> b!1061306 (= e!673503 call!76317)))

(declare-fun d!300683 () Bool)

(declare-fun res!474261 () Bool)

(assert (=> d!300683 (=> res!474261 e!673499)))

(assert (=> d!300683 (= res!474261 ((_ is ElementMatch!2919) (regOne!6351 r!15766)))))

(assert (=> d!300683 (= (validRegex!1388 (regOne!6351 r!15766)) e!673499)))

(declare-fun b!1061307 () Bool)

(declare-fun e!673502 () Bool)

(assert (=> b!1061307 (= e!673502 call!76317)))

(declare-fun bm!76310 () Bool)

(declare-fun call!76315 () Bool)

(assert (=> bm!76310 (= call!76317 call!76315)))

(declare-fun bm!76311 () Bool)

(assert (=> bm!76311 (= call!76316 (validRegex!1388 (ite c!177892 (regOne!6351 (regOne!6351 r!15766)) (regOne!6350 (regOne!6351 r!15766)))))))

(declare-fun b!1061308 () Bool)

(declare-fun res!474263 () Bool)

(assert (=> b!1061308 (=> (not res!474263) (not e!673502))))

(assert (=> b!1061308 (= res!474263 call!76316)))

(assert (=> b!1061308 (= e!673497 e!673502)))

(declare-fun b!1061309 () Bool)

(declare-fun res!474262 () Bool)

(assert (=> b!1061309 (=> res!474262 e!673501)))

(assert (=> b!1061309 (= res!474262 (not ((_ is Concat!4752) (regOne!6351 r!15766))))))

(assert (=> b!1061309 (= e!673497 e!673501)))

(declare-fun b!1061310 () Bool)

(declare-fun e!673500 () Bool)

(assert (=> b!1061310 (= e!673498 e!673500)))

(declare-fun res!474264 () Bool)

(assert (=> b!1061310 (= res!474264 (not (nullable!1011 (reg!3248 (regOne!6351 r!15766)))))))

(assert (=> b!1061310 (=> (not res!474264) (not e!673500))))

(declare-fun bm!76312 () Bool)

(assert (=> bm!76312 (= call!76315 (validRegex!1388 (ite c!177891 (reg!3248 (regOne!6351 r!15766)) (ite c!177892 (regTwo!6351 (regOne!6351 r!15766)) (regTwo!6350 (regOne!6351 r!15766))))))))

(declare-fun b!1061311 () Bool)

(assert (=> b!1061311 (= e!673500 call!76315)))

(assert (= (and d!300683 (not res!474261)) b!1061305))

(assert (= (and b!1061305 c!177891) b!1061310))

(assert (= (and b!1061305 (not c!177891)) b!1061304))

(assert (= (and b!1061310 res!474264) b!1061311))

(assert (= (and b!1061304 c!177892) b!1061308))

(assert (= (and b!1061304 (not c!177892)) b!1061309))

(assert (= (and b!1061308 res!474263) b!1061307))

(assert (= (and b!1061309 (not res!474262)) b!1061303))

(assert (= (and b!1061303 res!474260) b!1061306))

(assert (= (or b!1061307 b!1061306) bm!76310))

(assert (= (or b!1061308 b!1061303) bm!76311))

(assert (= (or b!1061311 bm!76310) bm!76312))

(declare-fun m!1221171 () Bool)

(assert (=> bm!76311 m!1221171))

(declare-fun m!1221173 () Bool)

(assert (=> b!1061310 m!1221173))

(declare-fun m!1221175 () Bool)

(assert (=> bm!76312 m!1221175))

(assert (=> b!1061150 d!300683))

(declare-fun b!1061312 () Bool)

(declare-fun e!673508 () Bool)

(declare-fun e!673510 () Bool)

(assert (=> b!1061312 (= e!673508 e!673510)))

(declare-fun res!474265 () Bool)

(assert (=> b!1061312 (=> (not res!474265) (not e!673510))))

(declare-fun call!76319 () Bool)

(assert (=> b!1061312 (= res!474265 call!76319)))

(declare-fun b!1061313 () Bool)

(declare-fun e!673505 () Bool)

(declare-fun e!673504 () Bool)

(assert (=> b!1061313 (= e!673505 e!673504)))

(declare-fun c!177894 () Bool)

(assert (=> b!1061313 (= c!177894 ((_ is Union!2919) (regTwo!6351 r!15766)))))

(declare-fun b!1061314 () Bool)

(declare-fun e!673506 () Bool)

(assert (=> b!1061314 (= e!673506 e!673505)))

(declare-fun c!177893 () Bool)

(assert (=> b!1061314 (= c!177893 ((_ is Star!2919) (regTwo!6351 r!15766)))))

(declare-fun b!1061315 () Bool)

(declare-fun call!76320 () Bool)

(assert (=> b!1061315 (= e!673510 call!76320)))

(declare-fun d!300685 () Bool)

(declare-fun res!474266 () Bool)

(assert (=> d!300685 (=> res!474266 e!673506)))

(assert (=> d!300685 (= res!474266 ((_ is ElementMatch!2919) (regTwo!6351 r!15766)))))

(assert (=> d!300685 (= (validRegex!1388 (regTwo!6351 r!15766)) e!673506)))

(declare-fun b!1061316 () Bool)

(declare-fun e!673509 () Bool)

(assert (=> b!1061316 (= e!673509 call!76320)))

(declare-fun bm!76313 () Bool)

(declare-fun call!76318 () Bool)

(assert (=> bm!76313 (= call!76320 call!76318)))

(declare-fun bm!76314 () Bool)

(assert (=> bm!76314 (= call!76319 (validRegex!1388 (ite c!177894 (regOne!6351 (regTwo!6351 r!15766)) (regOne!6350 (regTwo!6351 r!15766)))))))

(declare-fun b!1061317 () Bool)

(declare-fun res!474268 () Bool)

(assert (=> b!1061317 (=> (not res!474268) (not e!673509))))

(assert (=> b!1061317 (= res!474268 call!76319)))

(assert (=> b!1061317 (= e!673504 e!673509)))

(declare-fun b!1061318 () Bool)

(declare-fun res!474267 () Bool)

(assert (=> b!1061318 (=> res!474267 e!673508)))

(assert (=> b!1061318 (= res!474267 (not ((_ is Concat!4752) (regTwo!6351 r!15766))))))

(assert (=> b!1061318 (= e!673504 e!673508)))

(declare-fun b!1061319 () Bool)

(declare-fun e!673507 () Bool)

(assert (=> b!1061319 (= e!673505 e!673507)))

(declare-fun res!474269 () Bool)

(assert (=> b!1061319 (= res!474269 (not (nullable!1011 (reg!3248 (regTwo!6351 r!15766)))))))

(assert (=> b!1061319 (=> (not res!474269) (not e!673507))))

(declare-fun bm!76315 () Bool)

(assert (=> bm!76315 (= call!76318 (validRegex!1388 (ite c!177893 (reg!3248 (regTwo!6351 r!15766)) (ite c!177894 (regTwo!6351 (regTwo!6351 r!15766)) (regTwo!6350 (regTwo!6351 r!15766))))))))

(declare-fun b!1061320 () Bool)

(assert (=> b!1061320 (= e!673507 call!76318)))

(assert (= (and d!300685 (not res!474266)) b!1061314))

(assert (= (and b!1061314 c!177893) b!1061319))

(assert (= (and b!1061314 (not c!177893)) b!1061313))

(assert (= (and b!1061319 res!474269) b!1061320))

(assert (= (and b!1061313 c!177894) b!1061317))

(assert (= (and b!1061313 (not c!177894)) b!1061318))

(assert (= (and b!1061317 res!474268) b!1061316))

(assert (= (and b!1061318 (not res!474267)) b!1061312))

(assert (= (and b!1061312 res!474265) b!1061315))

(assert (= (or b!1061316 b!1061315) bm!76313))

(assert (= (or b!1061317 b!1061312) bm!76314))

(assert (= (or b!1061320 bm!76313) bm!76315))

(declare-fun m!1221177 () Bool)

(assert (=> bm!76314 m!1221177))

(declare-fun m!1221179 () Bool)

(assert (=> b!1061319 m!1221179))

(declare-fun m!1221181 () Bool)

(assert (=> bm!76315 m!1221181))

(assert (=> b!1061145 d!300685))

(declare-fun b!1061321 () Bool)

(declare-fun e!673517 () Bool)

(declare-fun e!673513 () Bool)

(assert (=> b!1061321 (= e!673517 e!673513)))

(declare-fun res!474276 () Bool)

(assert (=> b!1061321 (=> (not res!474276) (not e!673513))))

(declare-fun lt!359832 () Bool)

(assert (=> b!1061321 (= res!474276 (not lt!359832))))

(declare-fun b!1061322 () Bool)

(declare-fun res!474270 () Bool)

(declare-fun e!673511 () Bool)

(assert (=> b!1061322 (=> (not res!474270) (not e!673511))))

(assert (=> b!1061322 (= res!474270 (isEmpty!6551 (tail!1528 s!10566)))))

(declare-fun b!1061323 () Bool)

(declare-fun e!673515 () Bool)

(assert (=> b!1061323 (= e!673515 (matchR!1455 (derivativeStep!811 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766)) (head!1966 s!10566)) (tail!1528 s!10566)))))

(declare-fun b!1061324 () Bool)

(assert (=> b!1061324 (= e!673511 (= (head!1966 s!10566) (c!177844 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766)))))))

(declare-fun b!1061325 () Bool)

(declare-fun e!673512 () Bool)

(declare-fun call!76321 () Bool)

(assert (=> b!1061325 (= e!673512 (= lt!359832 call!76321))))

(declare-fun b!1061326 () Bool)

(declare-fun res!474275 () Bool)

(assert (=> b!1061326 (=> res!474275 e!673517)))

(assert (=> b!1061326 (= res!474275 e!673511)))

(declare-fun res!474277 () Bool)

(assert (=> b!1061326 (=> (not res!474277) (not e!673511))))

(assert (=> b!1061326 (= res!474277 lt!359832)))

(declare-fun bm!76316 () Bool)

(assert (=> bm!76316 (= call!76321 (isEmpty!6551 s!10566))))

(declare-fun b!1061327 () Bool)

(declare-fun res!474273 () Bool)

(declare-fun e!673516 () Bool)

(assert (=> b!1061327 (=> res!474273 e!673516)))

(assert (=> b!1061327 (= res!474273 (not (isEmpty!6551 (tail!1528 s!10566))))))

(declare-fun b!1061328 () Bool)

(assert (=> b!1061328 (= e!673515 (nullable!1011 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766))))))

(declare-fun b!1061329 () Bool)

(assert (=> b!1061329 (= e!673516 (not (= (head!1966 s!10566) (c!177844 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766))))))))

(declare-fun b!1061330 () Bool)

(declare-fun res!474272 () Bool)

(assert (=> b!1061330 (=> res!474272 e!673517)))

(assert (=> b!1061330 (= res!474272 (not ((_ is ElementMatch!2919) (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766)))))))

(declare-fun e!673514 () Bool)

(assert (=> b!1061330 (= e!673514 e!673517)))

(declare-fun b!1061332 () Bool)

(declare-fun res!474271 () Bool)

(assert (=> b!1061332 (=> (not res!474271) (not e!673511))))

(assert (=> b!1061332 (= res!474271 (not call!76321))))

(declare-fun b!1061333 () Bool)

(assert (=> b!1061333 (= e!673512 e!673514)))

(declare-fun c!177897 () Bool)

(assert (=> b!1061333 (= c!177897 ((_ is EmptyLang!2919) (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766))))))

(declare-fun b!1061334 () Bool)

(assert (=> b!1061334 (= e!673514 (not lt!359832))))

(declare-fun b!1061331 () Bool)

(assert (=> b!1061331 (= e!673513 e!673516)))

(declare-fun res!474274 () Bool)

(assert (=> b!1061331 (=> res!474274 e!673516)))

(assert (=> b!1061331 (= res!474274 call!76321)))

(declare-fun d!300687 () Bool)

(assert (=> d!300687 e!673512))

(declare-fun c!177896 () Bool)

(assert (=> d!300687 (= c!177896 ((_ is EmptyExpr!2919) (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766))))))

(assert (=> d!300687 (= lt!359832 e!673515)))

(declare-fun c!177895 () Bool)

(assert (=> d!300687 (= c!177895 (isEmpty!6551 s!10566))))

(assert (=> d!300687 (validRegex!1388 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766)))))

(assert (=> d!300687 (= (matchR!1455 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766)) s!10566) lt!359832)))

(assert (= (and d!300687 c!177895) b!1061328))

(assert (= (and d!300687 (not c!177895)) b!1061323))

(assert (= (and d!300687 c!177896) b!1061325))

(assert (= (and d!300687 (not c!177896)) b!1061333))

(assert (= (and b!1061333 c!177897) b!1061334))

(assert (= (and b!1061333 (not c!177897)) b!1061330))

(assert (= (and b!1061330 (not res!474272)) b!1061326))

(assert (= (and b!1061326 res!474277) b!1061332))

(assert (= (and b!1061332 res!474271) b!1061322))

(assert (= (and b!1061322 res!474270) b!1061324))

(assert (= (and b!1061326 (not res!474275)) b!1061321))

(assert (= (and b!1061321 res!474276) b!1061331))

(assert (= (and b!1061331 (not res!474274)) b!1061327))

(assert (= (and b!1061327 (not res!474273)) b!1061329))

(assert (= (or b!1061325 b!1061331 b!1061332) bm!76316))

(assert (=> bm!76316 m!1221121))

(assert (=> d!300687 m!1221121))

(declare-fun m!1221183 () Bool)

(assert (=> d!300687 m!1221183))

(assert (=> b!1061324 m!1221125))

(assert (=> b!1061322 m!1221127))

(assert (=> b!1061322 m!1221127))

(assert (=> b!1061322 m!1221129))

(assert (=> b!1061329 m!1221125))

(declare-fun m!1221185 () Bool)

(assert (=> b!1061328 m!1221185))

(assert (=> b!1061323 m!1221125))

(assert (=> b!1061323 m!1221125))

(declare-fun m!1221187 () Bool)

(assert (=> b!1061323 m!1221187))

(assert (=> b!1061323 m!1221127))

(assert (=> b!1061323 m!1221187))

(assert (=> b!1061323 m!1221127))

(declare-fun m!1221189 () Bool)

(assert (=> b!1061323 m!1221189))

(assert (=> b!1061327 m!1221127))

(assert (=> b!1061327 m!1221127))

(assert (=> b!1061327 m!1221129))

(assert (=> b!1061145 d!300687))

(declare-fun d!300689 () Bool)

(assert (=> d!300689 (matchR!1455 (Union!2919 (regTwo!6351 r!15766) (regOne!6351 r!15766)) s!10566)))

(declare-fun lt!359835 () Unit!15513)

(declare-fun choose!6762 (Regex!2919 Regex!2919 List!10149) Unit!15513)

(assert (=> d!300689 (= lt!359835 (choose!6762 (regTwo!6351 r!15766) (regOne!6351 r!15766) s!10566))))

(declare-fun e!673520 () Bool)

(assert (=> d!300689 e!673520))

(declare-fun res!474280 () Bool)

(assert (=> d!300689 (=> (not res!474280) (not e!673520))))

(assert (=> d!300689 (= res!474280 (validRegex!1388 (regTwo!6351 r!15766)))))

(assert (=> d!300689 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!26 (regTwo!6351 r!15766) (regOne!6351 r!15766) s!10566) lt!359835)))

(declare-fun b!1061337 () Bool)

(assert (=> b!1061337 (= e!673520 (validRegex!1388 (regOne!6351 r!15766)))))

(assert (= (and d!300689 res!474280) b!1061337))

(assert (=> d!300689 m!1221109))

(declare-fun m!1221191 () Bool)

(assert (=> d!300689 m!1221191))

(assert (=> d!300689 m!1221107))

(assert (=> b!1061337 m!1221099))

(assert (=> b!1061145 d!300689))

(assert (=> b!1061152 d!300671))

(declare-fun b!1061338 () Bool)

(declare-fun e!673527 () Bool)

(declare-fun e!673523 () Bool)

(assert (=> b!1061338 (= e!673527 e!673523)))

(declare-fun res!474287 () Bool)

(assert (=> b!1061338 (=> (not res!474287) (not e!673523))))

(declare-fun lt!359836 () Bool)

(assert (=> b!1061338 (= res!474287 (not lt!359836))))

(declare-fun b!1061339 () Bool)

(declare-fun res!474281 () Bool)

(declare-fun e!673521 () Bool)

(assert (=> b!1061339 (=> (not res!474281) (not e!673521))))

(assert (=> b!1061339 (= res!474281 (isEmpty!6551 (tail!1528 s!10566)))))

(declare-fun b!1061340 () Bool)

(declare-fun e!673525 () Bool)

(assert (=> b!1061340 (= e!673525 (matchR!1455 (derivativeStep!811 (regTwo!6351 r!15766) (head!1966 s!10566)) (tail!1528 s!10566)))))

(declare-fun b!1061341 () Bool)

(assert (=> b!1061341 (= e!673521 (= (head!1966 s!10566) (c!177844 (regTwo!6351 r!15766))))))

(declare-fun b!1061342 () Bool)

(declare-fun e!673522 () Bool)

(declare-fun call!76322 () Bool)

(assert (=> b!1061342 (= e!673522 (= lt!359836 call!76322))))

(declare-fun b!1061343 () Bool)

(declare-fun res!474286 () Bool)

(assert (=> b!1061343 (=> res!474286 e!673527)))

(assert (=> b!1061343 (= res!474286 e!673521)))

(declare-fun res!474288 () Bool)

(assert (=> b!1061343 (=> (not res!474288) (not e!673521))))

(assert (=> b!1061343 (= res!474288 lt!359836)))

(declare-fun bm!76317 () Bool)

(assert (=> bm!76317 (= call!76322 (isEmpty!6551 s!10566))))

(declare-fun b!1061344 () Bool)

(declare-fun res!474284 () Bool)

(declare-fun e!673526 () Bool)

(assert (=> b!1061344 (=> res!474284 e!673526)))

(assert (=> b!1061344 (= res!474284 (not (isEmpty!6551 (tail!1528 s!10566))))))

(declare-fun b!1061345 () Bool)

(assert (=> b!1061345 (= e!673525 (nullable!1011 (regTwo!6351 r!15766)))))

(declare-fun b!1061346 () Bool)

(assert (=> b!1061346 (= e!673526 (not (= (head!1966 s!10566) (c!177844 (regTwo!6351 r!15766)))))))

(declare-fun b!1061347 () Bool)

(declare-fun res!474283 () Bool)

(assert (=> b!1061347 (=> res!474283 e!673527)))

(assert (=> b!1061347 (= res!474283 (not ((_ is ElementMatch!2919) (regTwo!6351 r!15766))))))

(declare-fun e!673524 () Bool)

(assert (=> b!1061347 (= e!673524 e!673527)))

(declare-fun b!1061349 () Bool)

(declare-fun res!474282 () Bool)

(assert (=> b!1061349 (=> (not res!474282) (not e!673521))))

(assert (=> b!1061349 (= res!474282 (not call!76322))))

(declare-fun b!1061350 () Bool)

(assert (=> b!1061350 (= e!673522 e!673524)))

(declare-fun c!177900 () Bool)

(assert (=> b!1061350 (= c!177900 ((_ is EmptyLang!2919) (regTwo!6351 r!15766)))))

(declare-fun b!1061351 () Bool)

(assert (=> b!1061351 (= e!673524 (not lt!359836))))

(declare-fun b!1061348 () Bool)

(assert (=> b!1061348 (= e!673523 e!673526)))

(declare-fun res!474285 () Bool)

(assert (=> b!1061348 (=> res!474285 e!673526)))

(assert (=> b!1061348 (= res!474285 call!76322)))

(declare-fun d!300691 () Bool)

(assert (=> d!300691 e!673522))

(declare-fun c!177899 () Bool)

(assert (=> d!300691 (= c!177899 ((_ is EmptyExpr!2919) (regTwo!6351 r!15766)))))

(assert (=> d!300691 (= lt!359836 e!673525)))

(declare-fun c!177898 () Bool)

(assert (=> d!300691 (= c!177898 (isEmpty!6551 s!10566))))

(assert (=> d!300691 (validRegex!1388 (regTwo!6351 r!15766))))

(assert (=> d!300691 (= (matchR!1455 (regTwo!6351 r!15766) s!10566) lt!359836)))

(assert (= (and d!300691 c!177898) b!1061345))

(assert (= (and d!300691 (not c!177898)) b!1061340))

(assert (= (and d!300691 c!177899) b!1061342))

(assert (= (and d!300691 (not c!177899)) b!1061350))

(assert (= (and b!1061350 c!177900) b!1061351))

(assert (= (and b!1061350 (not c!177900)) b!1061347))

(assert (= (and b!1061347 (not res!474283)) b!1061343))

(assert (= (and b!1061343 res!474288) b!1061349))

(assert (= (and b!1061349 res!474282) b!1061339))

(assert (= (and b!1061339 res!474281) b!1061341))

(assert (= (and b!1061343 (not res!474286)) b!1061338))

(assert (= (and b!1061338 res!474287) b!1061348))

(assert (= (and b!1061348 (not res!474285)) b!1061344))

(assert (= (and b!1061344 (not res!474284)) b!1061346))

(assert (= (or b!1061342 b!1061348 b!1061349) bm!76317))

(assert (=> bm!76317 m!1221121))

(assert (=> d!300691 m!1221121))

(assert (=> d!300691 m!1221107))

(assert (=> b!1061341 m!1221125))

(assert (=> b!1061339 m!1221127))

(assert (=> b!1061339 m!1221127))

(assert (=> b!1061339 m!1221129))

(assert (=> b!1061346 m!1221125))

(assert (=> b!1061345 m!1221159))

(assert (=> b!1061340 m!1221125))

(assert (=> b!1061340 m!1221125))

(declare-fun m!1221193 () Bool)

(assert (=> b!1061340 m!1221193))

(assert (=> b!1061340 m!1221127))

(assert (=> b!1061340 m!1221193))

(assert (=> b!1061340 m!1221127))

(declare-fun m!1221195 () Bool)

(assert (=> b!1061340 m!1221195))

(assert (=> b!1061344 m!1221127))

(assert (=> b!1061344 m!1221127))

(assert (=> b!1061344 m!1221129))

(assert (=> b!1061152 d!300691))

(declare-fun d!300693 () Bool)

(assert (=> d!300693 (= (matchR!1455 (regTwo!6351 r!15766) s!10566) (matchR!1455 (removeUselessConcat!468 (regTwo!6351 r!15766)) s!10566))))

(declare-fun lt!359839 () Unit!15513)

(declare-fun choose!6763 (Regex!2919 List!10149) Unit!15513)

(assert (=> d!300693 (= lt!359839 (choose!6763 (regTwo!6351 r!15766) s!10566))))

(assert (=> d!300693 (validRegex!1388 (regTwo!6351 r!15766))))

(assert (=> d!300693 (= (lemmaRemoveUselessConcatSound!278 (regTwo!6351 r!15766) s!10566) lt!359839)))

(declare-fun bs!251838 () Bool)

(assert (= bs!251838 d!300693))

(assert (=> bs!251838 m!1221103))

(declare-fun m!1221197 () Bool)

(assert (=> bs!251838 m!1221197))

(assert (=> bs!251838 m!1221093))

(assert (=> bs!251838 m!1221103))

(declare-fun m!1221199 () Bool)

(assert (=> bs!251838 m!1221199))

(assert (=> bs!251838 m!1221107))

(assert (=> b!1061152 d!300693))

(declare-fun b!1061352 () Bool)

(declare-fun e!673534 () Bool)

(declare-fun e!673530 () Bool)

(assert (=> b!1061352 (= e!673534 e!673530)))

(declare-fun res!474295 () Bool)

(assert (=> b!1061352 (=> (not res!474295) (not e!673530))))

(declare-fun lt!359840 () Bool)

(assert (=> b!1061352 (= res!474295 (not lt!359840))))

(declare-fun b!1061353 () Bool)

(declare-fun res!474289 () Bool)

(declare-fun e!673528 () Bool)

(assert (=> b!1061353 (=> (not res!474289) (not e!673528))))

(assert (=> b!1061353 (= res!474289 (isEmpty!6551 (tail!1528 s!10566)))))

(declare-fun b!1061354 () Bool)

(declare-fun e!673532 () Bool)

(assert (=> b!1061354 (= e!673532 (matchR!1455 (derivativeStep!811 lt!359819 (head!1966 s!10566)) (tail!1528 s!10566)))))

(declare-fun b!1061355 () Bool)

(assert (=> b!1061355 (= e!673528 (= (head!1966 s!10566) (c!177844 lt!359819)))))

(declare-fun b!1061356 () Bool)

(declare-fun e!673529 () Bool)

(declare-fun call!76323 () Bool)

(assert (=> b!1061356 (= e!673529 (= lt!359840 call!76323))))

(declare-fun b!1061357 () Bool)

(declare-fun res!474294 () Bool)

(assert (=> b!1061357 (=> res!474294 e!673534)))

(assert (=> b!1061357 (= res!474294 e!673528)))

(declare-fun res!474296 () Bool)

(assert (=> b!1061357 (=> (not res!474296) (not e!673528))))

(assert (=> b!1061357 (= res!474296 lt!359840)))

(declare-fun bm!76318 () Bool)

(assert (=> bm!76318 (= call!76323 (isEmpty!6551 s!10566))))

(declare-fun b!1061358 () Bool)

(declare-fun res!474292 () Bool)

(declare-fun e!673533 () Bool)

(assert (=> b!1061358 (=> res!474292 e!673533)))

(assert (=> b!1061358 (= res!474292 (not (isEmpty!6551 (tail!1528 s!10566))))))

(declare-fun b!1061359 () Bool)

(assert (=> b!1061359 (= e!673532 (nullable!1011 lt!359819))))

(declare-fun b!1061360 () Bool)

(assert (=> b!1061360 (= e!673533 (not (= (head!1966 s!10566) (c!177844 lt!359819))))))

(declare-fun b!1061361 () Bool)

(declare-fun res!474291 () Bool)

(assert (=> b!1061361 (=> res!474291 e!673534)))

(assert (=> b!1061361 (= res!474291 (not ((_ is ElementMatch!2919) lt!359819)))))

(declare-fun e!673531 () Bool)

(assert (=> b!1061361 (= e!673531 e!673534)))

(declare-fun b!1061363 () Bool)

(declare-fun res!474290 () Bool)

(assert (=> b!1061363 (=> (not res!474290) (not e!673528))))

(assert (=> b!1061363 (= res!474290 (not call!76323))))

(declare-fun b!1061364 () Bool)

(assert (=> b!1061364 (= e!673529 e!673531)))

(declare-fun c!177903 () Bool)

(assert (=> b!1061364 (= c!177903 ((_ is EmptyLang!2919) lt!359819))))

(declare-fun b!1061365 () Bool)

(assert (=> b!1061365 (= e!673531 (not lt!359840))))

(declare-fun b!1061362 () Bool)

(assert (=> b!1061362 (= e!673530 e!673533)))

(declare-fun res!474293 () Bool)

(assert (=> b!1061362 (=> res!474293 e!673533)))

(assert (=> b!1061362 (= res!474293 call!76323)))

(declare-fun d!300695 () Bool)

(assert (=> d!300695 e!673529))

(declare-fun c!177902 () Bool)

(assert (=> d!300695 (= c!177902 ((_ is EmptyExpr!2919) lt!359819))))

(assert (=> d!300695 (= lt!359840 e!673532)))

(declare-fun c!177901 () Bool)

(assert (=> d!300695 (= c!177901 (isEmpty!6551 s!10566))))

(assert (=> d!300695 (validRegex!1388 lt!359819)))

(assert (=> d!300695 (= (matchR!1455 lt!359819 s!10566) lt!359840)))

(assert (= (and d!300695 c!177901) b!1061359))

(assert (= (and d!300695 (not c!177901)) b!1061354))

(assert (= (and d!300695 c!177902) b!1061356))

(assert (= (and d!300695 (not c!177902)) b!1061364))

(assert (= (and b!1061364 c!177903) b!1061365))

(assert (= (and b!1061364 (not c!177903)) b!1061361))

(assert (= (and b!1061361 (not res!474291)) b!1061357))

(assert (= (and b!1061357 res!474296) b!1061363))

(assert (= (and b!1061363 res!474290) b!1061353))

(assert (= (and b!1061353 res!474289) b!1061355))

(assert (= (and b!1061357 (not res!474294)) b!1061352))

(assert (= (and b!1061352 res!474295) b!1061362))

(assert (= (and b!1061362 (not res!474293)) b!1061358))

(assert (= (and b!1061358 (not res!474292)) b!1061360))

(assert (= (or b!1061356 b!1061362 b!1061363) bm!76318))

(assert (=> bm!76318 m!1221121))

(assert (=> d!300695 m!1221121))

(declare-fun m!1221201 () Bool)

(assert (=> d!300695 m!1221201))

(assert (=> b!1061355 m!1221125))

(assert (=> b!1061353 m!1221127))

(assert (=> b!1061353 m!1221127))

(assert (=> b!1061353 m!1221129))

(assert (=> b!1061360 m!1221125))

(declare-fun m!1221203 () Bool)

(assert (=> b!1061359 m!1221203))

(assert (=> b!1061354 m!1221125))

(assert (=> b!1061354 m!1221125))

(declare-fun m!1221205 () Bool)

(assert (=> b!1061354 m!1221205))

(assert (=> b!1061354 m!1221127))

(assert (=> b!1061354 m!1221205))

(assert (=> b!1061354 m!1221127))

(declare-fun m!1221207 () Bool)

(assert (=> b!1061354 m!1221207))

(assert (=> b!1061358 m!1221127))

(assert (=> b!1061358 m!1221127))

(assert (=> b!1061358 m!1221129))

(assert (=> b!1061147 d!300695))

(declare-fun d!300697 () Bool)

(declare-fun e!673539 () Bool)

(assert (=> d!300697 e!673539))

(declare-fun res!474302 () Bool)

(assert (=> d!300697 (=> res!474302 e!673539)))

(assert (=> d!300697 (= res!474302 (matchR!1455 lt!359819 s!10566))))

(declare-fun lt!359843 () Unit!15513)

(declare-fun choose!6764 (Regex!2919 Regex!2919 List!10149) Unit!15513)

(assert (=> d!300697 (= lt!359843 (choose!6764 lt!359819 lt!359822 s!10566))))

(declare-fun e!673540 () Bool)

(assert (=> d!300697 e!673540))

(declare-fun res!474301 () Bool)

(assert (=> d!300697 (=> (not res!474301) (not e!673540))))

(assert (=> d!300697 (= res!474301 (validRegex!1388 lt!359819))))

(assert (=> d!300697 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!98 lt!359819 lt!359822 s!10566) lt!359843)))

(declare-fun b!1061370 () Bool)

(assert (=> b!1061370 (= e!673540 (validRegex!1388 lt!359822))))

(declare-fun b!1061371 () Bool)

(assert (=> b!1061371 (= e!673539 (matchR!1455 lt!359822 s!10566))))

(assert (= (and d!300697 res!474301) b!1061370))

(assert (= (and d!300697 (not res!474302)) b!1061371))

(assert (=> d!300697 m!1221113))

(declare-fun m!1221209 () Bool)

(assert (=> d!300697 m!1221209))

(assert (=> d!300697 m!1221201))

(assert (=> b!1061370 m!1221123))

(assert (=> b!1061371 m!1221091))

(assert (=> b!1061147 d!300697))

(declare-fun b!1061688 () Bool)

(assert (=> b!1061688 true))

(assert (=> b!1061688 true))

(declare-fun bs!251848 () Bool)

(declare-fun b!1061685 () Bool)

(assert (= bs!251848 (and b!1061685 b!1061688)))

(declare-fun lambda!38346 () Int)

(declare-fun lambda!38345 () Int)

(assert (=> bs!251848 (not (= lambda!38346 lambda!38345))))

(assert (=> b!1061685 true))

(assert (=> b!1061685 true))

(declare-fun bm!76374 () Bool)

(declare-fun call!76380 () Bool)

(assert (=> bm!76374 (= call!76380 (isEmpty!6551 s!10566))))

(declare-fun e!673712 () Bool)

(declare-fun call!76379 () Bool)

(assert (=> b!1061685 (= e!673712 call!76379)))

(declare-fun b!1061686 () Bool)

(declare-fun e!673716 () Bool)

(assert (=> b!1061686 (= e!673716 call!76380)))

(declare-fun b!1061687 () Bool)

(declare-fun e!673711 () Bool)

(assert (=> b!1061687 (= e!673711 (= s!10566 (Cons!10133 (c!177844 lt!359818) Nil!10133)))))

(declare-fun c!177976 () Bool)

(declare-fun bm!76375 () Bool)

(declare-fun Exists!646 (Int) Bool)

(assert (=> bm!76375 (= call!76379 (Exists!646 (ite c!177976 lambda!38345 lambda!38346)))))

(declare-fun e!673715 () Bool)

(assert (=> b!1061688 (= e!673715 call!76379)))

(declare-fun b!1061689 () Bool)

(declare-fun e!673717 () Bool)

(assert (=> b!1061689 (= e!673717 e!673712)))

(assert (=> b!1061689 (= c!177976 ((_ is Star!2919) lt!359818))))

(declare-fun b!1061690 () Bool)

(declare-fun c!177975 () Bool)

(assert (=> b!1061690 (= c!177975 ((_ is ElementMatch!2919) lt!359818))))

(declare-fun e!673714 () Bool)

(assert (=> b!1061690 (= e!673714 e!673711)))

(declare-fun b!1061691 () Bool)

(declare-fun c!177974 () Bool)

(assert (=> b!1061691 (= c!177974 ((_ is Union!2919) lt!359818))))

(assert (=> b!1061691 (= e!673711 e!673717)))

(declare-fun d!300699 () Bool)

(declare-fun c!177977 () Bool)

(assert (=> d!300699 (= c!177977 ((_ is EmptyExpr!2919) lt!359818))))

(assert (=> d!300699 (= (matchRSpec!718 lt!359818 s!10566) e!673716)))

(declare-fun b!1061692 () Bool)

(declare-fun res!474438 () Bool)

(assert (=> b!1061692 (=> res!474438 e!673715)))

(assert (=> b!1061692 (= res!474438 call!76380)))

(assert (=> b!1061692 (= e!673712 e!673715)))

(declare-fun b!1061693 () Bool)

(declare-fun e!673713 () Bool)

(assert (=> b!1061693 (= e!673713 (matchRSpec!718 (regTwo!6351 lt!359818) s!10566))))

(declare-fun b!1061694 () Bool)

(assert (=> b!1061694 (= e!673716 e!673714)))

(declare-fun res!474439 () Bool)

(assert (=> b!1061694 (= res!474439 (not ((_ is EmptyLang!2919) lt!359818)))))

(assert (=> b!1061694 (=> (not res!474439) (not e!673714))))

(declare-fun b!1061695 () Bool)

(assert (=> b!1061695 (= e!673717 e!673713)))

(declare-fun res!474437 () Bool)

(assert (=> b!1061695 (= res!474437 (matchRSpec!718 (regOne!6351 lt!359818) s!10566))))

(assert (=> b!1061695 (=> res!474437 e!673713)))

(assert (= (and d!300699 c!177977) b!1061686))

(assert (= (and d!300699 (not c!177977)) b!1061694))

(assert (= (and b!1061694 res!474439) b!1061690))

(assert (= (and b!1061690 c!177975) b!1061687))

(assert (= (and b!1061690 (not c!177975)) b!1061691))

(assert (= (and b!1061691 c!177974) b!1061695))

(assert (= (and b!1061691 (not c!177974)) b!1061689))

(assert (= (and b!1061695 (not res!474437)) b!1061693))

(assert (= (and b!1061689 c!177976) b!1061692))

(assert (= (and b!1061689 (not c!177976)) b!1061685))

(assert (= (and b!1061692 (not res!474438)) b!1061688))

(assert (= (or b!1061688 b!1061685) bm!76375))

(assert (= (or b!1061686 b!1061692) bm!76374))

(assert (=> bm!76374 m!1221121))

(declare-fun m!1221323 () Bool)

(assert (=> bm!76375 m!1221323))

(declare-fun m!1221325 () Bool)

(assert (=> b!1061693 m!1221325))

(declare-fun m!1221327 () Bool)

(assert (=> b!1061695 m!1221327))

(assert (=> b!1061147 d!300699))

(declare-fun d!300735 () Bool)

(assert (=> d!300735 (= (matchR!1455 lt!359818 s!10566) (matchRSpec!718 lt!359818 s!10566))))

(declare-fun lt!359871 () Unit!15513)

(declare-fun choose!6765 (Regex!2919 List!10149) Unit!15513)

(assert (=> d!300735 (= lt!359871 (choose!6765 lt!359818 s!10566))))

(assert (=> d!300735 (validRegex!1388 lt!359818)))

(assert (=> d!300735 (= (mainMatchTheorem!718 lt!359818 s!10566) lt!359871)))

(declare-fun bs!251849 () Bool)

(assert (= bs!251849 d!300735))

(assert (=> bs!251849 m!1221101))

(assert (=> bs!251849 m!1221117))

(declare-fun m!1221329 () Bool)

(assert (=> bs!251849 m!1221329))

(assert (=> bs!251849 m!1221143))

(assert (=> b!1061147 d!300735))

(declare-fun bs!251850 () Bool)

(declare-fun b!1061703 () Bool)

(assert (= bs!251850 (and b!1061703 b!1061688)))

(declare-fun lambda!38347 () Int)

(assert (=> bs!251850 (= (and (= (reg!3248 r!15766) (reg!3248 lt!359818)) (= r!15766 lt!359818)) (= lambda!38347 lambda!38345))))

(declare-fun bs!251851 () Bool)

(assert (= bs!251851 (and b!1061703 b!1061685)))

(assert (=> bs!251851 (not (= lambda!38347 lambda!38346))))

(assert (=> b!1061703 true))

(assert (=> b!1061703 true))

(declare-fun bs!251852 () Bool)

(declare-fun b!1061700 () Bool)

(assert (= bs!251852 (and b!1061700 b!1061688)))

(declare-fun lambda!38348 () Int)

(assert (=> bs!251852 (not (= lambda!38348 lambda!38345))))

(declare-fun bs!251853 () Bool)

(assert (= bs!251853 (and b!1061700 b!1061685)))

(assert (=> bs!251853 (= (and (= (regOne!6350 r!15766) (regOne!6350 lt!359818)) (= (regTwo!6350 r!15766) (regTwo!6350 lt!359818))) (= lambda!38348 lambda!38346))))

(declare-fun bs!251854 () Bool)

(assert (= bs!251854 (and b!1061700 b!1061703)))

(assert (=> bs!251854 (not (= lambda!38348 lambda!38347))))

(assert (=> b!1061700 true))

(assert (=> b!1061700 true))

(declare-fun bm!76376 () Bool)

(declare-fun call!76382 () Bool)

(assert (=> bm!76376 (= call!76382 (isEmpty!6551 s!10566))))

(declare-fun e!673719 () Bool)

(declare-fun call!76381 () Bool)

(assert (=> b!1061700 (= e!673719 call!76381)))

(declare-fun b!1061701 () Bool)

(declare-fun e!673723 () Bool)

(assert (=> b!1061701 (= e!673723 call!76382)))

(declare-fun b!1061702 () Bool)

(declare-fun e!673718 () Bool)

(assert (=> b!1061702 (= e!673718 (= s!10566 (Cons!10133 (c!177844 r!15766) Nil!10133)))))

(declare-fun bm!76377 () Bool)

(declare-fun c!177980 () Bool)

(assert (=> bm!76377 (= call!76381 (Exists!646 (ite c!177980 lambda!38347 lambda!38348)))))

(declare-fun e!673722 () Bool)

(assert (=> b!1061703 (= e!673722 call!76381)))

(declare-fun b!1061704 () Bool)

(declare-fun e!673724 () Bool)

(assert (=> b!1061704 (= e!673724 e!673719)))

(assert (=> b!1061704 (= c!177980 ((_ is Star!2919) r!15766))))

(declare-fun b!1061705 () Bool)

(declare-fun c!177979 () Bool)

(assert (=> b!1061705 (= c!177979 ((_ is ElementMatch!2919) r!15766))))

(declare-fun e!673721 () Bool)

(assert (=> b!1061705 (= e!673721 e!673718)))

(declare-fun b!1061706 () Bool)

(declare-fun c!177978 () Bool)

(assert (=> b!1061706 (= c!177978 ((_ is Union!2919) r!15766))))

(assert (=> b!1061706 (= e!673718 e!673724)))

(declare-fun d!300737 () Bool)

(declare-fun c!177981 () Bool)

(assert (=> d!300737 (= c!177981 ((_ is EmptyExpr!2919) r!15766))))

(assert (=> d!300737 (= (matchRSpec!718 r!15766 s!10566) e!673723)))

(declare-fun b!1061707 () Bool)

(declare-fun res!474441 () Bool)

(assert (=> b!1061707 (=> res!474441 e!673722)))

(assert (=> b!1061707 (= res!474441 call!76382)))

(assert (=> b!1061707 (= e!673719 e!673722)))

(declare-fun b!1061708 () Bool)

(declare-fun e!673720 () Bool)

(assert (=> b!1061708 (= e!673720 (matchRSpec!718 (regTwo!6351 r!15766) s!10566))))

(declare-fun b!1061709 () Bool)

(assert (=> b!1061709 (= e!673723 e!673721)))

(declare-fun res!474442 () Bool)

(assert (=> b!1061709 (= res!474442 (not ((_ is EmptyLang!2919) r!15766)))))

(assert (=> b!1061709 (=> (not res!474442) (not e!673721))))

(declare-fun b!1061710 () Bool)

(assert (=> b!1061710 (= e!673724 e!673720)))

(declare-fun res!474440 () Bool)

(assert (=> b!1061710 (= res!474440 (matchRSpec!718 (regOne!6351 r!15766) s!10566))))

(assert (=> b!1061710 (=> res!474440 e!673720)))

(assert (= (and d!300737 c!177981) b!1061701))

(assert (= (and d!300737 (not c!177981)) b!1061709))

(assert (= (and b!1061709 res!474442) b!1061705))

(assert (= (and b!1061705 c!177979) b!1061702))

(assert (= (and b!1061705 (not c!177979)) b!1061706))

(assert (= (and b!1061706 c!177978) b!1061710))

(assert (= (and b!1061706 (not c!177978)) b!1061704))

(assert (= (and b!1061710 (not res!474440)) b!1061708))

(assert (= (and b!1061704 c!177980) b!1061707))

(assert (= (and b!1061704 (not c!177980)) b!1061700))

(assert (= (and b!1061707 (not res!474441)) b!1061703))

(assert (= (or b!1061703 b!1061700) bm!76377))

(assert (= (or b!1061701 b!1061707) bm!76376))

(assert (=> bm!76376 m!1221121))

(declare-fun m!1221331 () Bool)

(assert (=> bm!76377 m!1221331))

(declare-fun m!1221333 () Bool)

(assert (=> b!1061708 m!1221333))

(declare-fun m!1221335 () Bool)

(assert (=> b!1061710 m!1221335))

(assert (=> b!1061148 d!300737))

(declare-fun b!1061711 () Bool)

(declare-fun e!673731 () Bool)

(declare-fun e!673727 () Bool)

(assert (=> b!1061711 (= e!673731 e!673727)))

(declare-fun res!474449 () Bool)

(assert (=> b!1061711 (=> (not res!474449) (not e!673727))))

(declare-fun lt!359872 () Bool)

(assert (=> b!1061711 (= res!474449 (not lt!359872))))

(declare-fun b!1061712 () Bool)

(declare-fun res!474443 () Bool)

(declare-fun e!673725 () Bool)

(assert (=> b!1061712 (=> (not res!474443) (not e!673725))))

(assert (=> b!1061712 (= res!474443 (isEmpty!6551 (tail!1528 s!10566)))))

(declare-fun b!1061713 () Bool)

(declare-fun e!673729 () Bool)

(assert (=> b!1061713 (= e!673729 (matchR!1455 (derivativeStep!811 r!15766 (head!1966 s!10566)) (tail!1528 s!10566)))))

(declare-fun b!1061714 () Bool)

(assert (=> b!1061714 (= e!673725 (= (head!1966 s!10566) (c!177844 r!15766)))))

(declare-fun b!1061715 () Bool)

(declare-fun e!673726 () Bool)

(declare-fun call!76383 () Bool)

(assert (=> b!1061715 (= e!673726 (= lt!359872 call!76383))))

(declare-fun b!1061716 () Bool)

(declare-fun res!474448 () Bool)

(assert (=> b!1061716 (=> res!474448 e!673731)))

(assert (=> b!1061716 (= res!474448 e!673725)))

(declare-fun res!474450 () Bool)

(assert (=> b!1061716 (=> (not res!474450) (not e!673725))))

(assert (=> b!1061716 (= res!474450 lt!359872)))

(declare-fun bm!76378 () Bool)

(assert (=> bm!76378 (= call!76383 (isEmpty!6551 s!10566))))

(declare-fun b!1061717 () Bool)

(declare-fun res!474446 () Bool)

(declare-fun e!673730 () Bool)

(assert (=> b!1061717 (=> res!474446 e!673730)))

(assert (=> b!1061717 (= res!474446 (not (isEmpty!6551 (tail!1528 s!10566))))))

(declare-fun b!1061718 () Bool)

(assert (=> b!1061718 (= e!673729 (nullable!1011 r!15766))))

(declare-fun b!1061719 () Bool)

(assert (=> b!1061719 (= e!673730 (not (= (head!1966 s!10566) (c!177844 r!15766))))))

(declare-fun b!1061720 () Bool)

(declare-fun res!474445 () Bool)

(assert (=> b!1061720 (=> res!474445 e!673731)))

(assert (=> b!1061720 (= res!474445 (not ((_ is ElementMatch!2919) r!15766)))))

(declare-fun e!673728 () Bool)

(assert (=> b!1061720 (= e!673728 e!673731)))

(declare-fun b!1061722 () Bool)

(declare-fun res!474444 () Bool)

(assert (=> b!1061722 (=> (not res!474444) (not e!673725))))

(assert (=> b!1061722 (= res!474444 (not call!76383))))

(declare-fun b!1061723 () Bool)

(assert (=> b!1061723 (= e!673726 e!673728)))

(declare-fun c!177984 () Bool)

(assert (=> b!1061723 (= c!177984 ((_ is EmptyLang!2919) r!15766))))

(declare-fun b!1061724 () Bool)

(assert (=> b!1061724 (= e!673728 (not lt!359872))))

(declare-fun b!1061721 () Bool)

(assert (=> b!1061721 (= e!673727 e!673730)))

(declare-fun res!474447 () Bool)

(assert (=> b!1061721 (=> res!474447 e!673730)))

(assert (=> b!1061721 (= res!474447 call!76383)))

(declare-fun d!300739 () Bool)

(assert (=> d!300739 e!673726))

(declare-fun c!177983 () Bool)

(assert (=> d!300739 (= c!177983 ((_ is EmptyExpr!2919) r!15766))))

(assert (=> d!300739 (= lt!359872 e!673729)))

(declare-fun c!177982 () Bool)

(assert (=> d!300739 (= c!177982 (isEmpty!6551 s!10566))))

(assert (=> d!300739 (validRegex!1388 r!15766)))

(assert (=> d!300739 (= (matchR!1455 r!15766 s!10566) lt!359872)))

(assert (= (and d!300739 c!177982) b!1061718))

(assert (= (and d!300739 (not c!177982)) b!1061713))

(assert (= (and d!300739 c!177983) b!1061715))

(assert (= (and d!300739 (not c!177983)) b!1061723))

(assert (= (and b!1061723 c!177984) b!1061724))

(assert (= (and b!1061723 (not c!177984)) b!1061720))

(assert (= (and b!1061720 (not res!474445)) b!1061716))

(assert (= (and b!1061716 res!474450) b!1061722))

(assert (= (and b!1061722 res!474444) b!1061712))

(assert (= (and b!1061712 res!474443) b!1061714))

(assert (= (and b!1061716 (not res!474448)) b!1061711))

(assert (= (and b!1061711 res!474449) b!1061721))

(assert (= (and b!1061721 (not res!474447)) b!1061717))

(assert (= (and b!1061717 (not res!474446)) b!1061719))

(assert (= (or b!1061715 b!1061721 b!1061722) bm!76378))

(assert (=> bm!76378 m!1221121))

(assert (=> d!300739 m!1221121))

(assert (=> d!300739 m!1221097))

(assert (=> b!1061714 m!1221125))

(assert (=> b!1061712 m!1221127))

(assert (=> b!1061712 m!1221127))

(assert (=> b!1061712 m!1221129))

(assert (=> b!1061719 m!1221125))

(declare-fun m!1221337 () Bool)

(assert (=> b!1061718 m!1221337))

(assert (=> b!1061713 m!1221125))

(assert (=> b!1061713 m!1221125))

(declare-fun m!1221339 () Bool)

(assert (=> b!1061713 m!1221339))

(assert (=> b!1061713 m!1221127))

(assert (=> b!1061713 m!1221339))

(assert (=> b!1061713 m!1221127))

(declare-fun m!1221341 () Bool)

(assert (=> b!1061713 m!1221341))

(assert (=> b!1061717 m!1221127))

(assert (=> b!1061717 m!1221127))

(assert (=> b!1061717 m!1221129))

(assert (=> b!1061148 d!300739))

(declare-fun d!300741 () Bool)

(assert (=> d!300741 (= (matchR!1455 r!15766 s!10566) (matchRSpec!718 r!15766 s!10566))))

(declare-fun lt!359873 () Unit!15513)

(assert (=> d!300741 (= lt!359873 (choose!6765 r!15766 s!10566))))

(assert (=> d!300741 (validRegex!1388 r!15766)))

(assert (=> d!300741 (= (mainMatchTheorem!718 r!15766 s!10566) lt!359873)))

(declare-fun bs!251855 () Bool)

(assert (= bs!251855 d!300741))

(assert (=> bs!251855 m!1221087))

(assert (=> bs!251855 m!1221085))

(declare-fun m!1221343 () Bool)

(assert (=> bs!251855 m!1221343))

(assert (=> bs!251855 m!1221097))

(assert (=> b!1061148 d!300741))

(declare-fun e!673734 () Bool)

(assert (=> b!1061146 (= tp!318783 e!673734)))

(declare-fun b!1061737 () Bool)

(declare-fun tp!318838 () Bool)

(assert (=> b!1061737 (= e!673734 tp!318838)))

(declare-fun b!1061738 () Bool)

(declare-fun tp!318839 () Bool)

(declare-fun tp!318841 () Bool)

(assert (=> b!1061738 (= e!673734 (and tp!318839 tp!318841))))

(declare-fun b!1061735 () Bool)

(assert (=> b!1061735 (= e!673734 tp_is_empty!5481)))

(declare-fun b!1061736 () Bool)

(declare-fun tp!318837 () Bool)

(declare-fun tp!318840 () Bool)

(assert (=> b!1061736 (= e!673734 (and tp!318837 tp!318840))))

(assert (= (and b!1061146 ((_ is ElementMatch!2919) (reg!3248 r!15766))) b!1061735))

(assert (= (and b!1061146 ((_ is Concat!4752) (reg!3248 r!15766))) b!1061736))

(assert (= (and b!1061146 ((_ is Star!2919) (reg!3248 r!15766))) b!1061737))

(assert (= (and b!1061146 ((_ is Union!2919) (reg!3248 r!15766))) b!1061738))

(declare-fun e!673735 () Bool)

(assert (=> b!1061151 (= tp!318787 e!673735)))

(declare-fun b!1061741 () Bool)

(declare-fun tp!318843 () Bool)

(assert (=> b!1061741 (= e!673735 tp!318843)))

(declare-fun b!1061742 () Bool)

(declare-fun tp!318844 () Bool)

(declare-fun tp!318846 () Bool)

(assert (=> b!1061742 (= e!673735 (and tp!318844 tp!318846))))

(declare-fun b!1061739 () Bool)

(assert (=> b!1061739 (= e!673735 tp_is_empty!5481)))

(declare-fun b!1061740 () Bool)

(declare-fun tp!318842 () Bool)

(declare-fun tp!318845 () Bool)

(assert (=> b!1061740 (= e!673735 (and tp!318842 tp!318845))))

(assert (= (and b!1061151 ((_ is ElementMatch!2919) (regOne!6351 r!15766))) b!1061739))

(assert (= (and b!1061151 ((_ is Concat!4752) (regOne!6351 r!15766))) b!1061740))

(assert (= (and b!1061151 ((_ is Star!2919) (regOne!6351 r!15766))) b!1061741))

(assert (= (and b!1061151 ((_ is Union!2919) (regOne!6351 r!15766))) b!1061742))

(declare-fun e!673736 () Bool)

(assert (=> b!1061151 (= tp!318786 e!673736)))

(declare-fun b!1061745 () Bool)

(declare-fun tp!318848 () Bool)

(assert (=> b!1061745 (= e!673736 tp!318848)))

(declare-fun b!1061746 () Bool)

(declare-fun tp!318849 () Bool)

(declare-fun tp!318851 () Bool)

(assert (=> b!1061746 (= e!673736 (and tp!318849 tp!318851))))

(declare-fun b!1061743 () Bool)

(assert (=> b!1061743 (= e!673736 tp_is_empty!5481)))

(declare-fun b!1061744 () Bool)

(declare-fun tp!318847 () Bool)

(declare-fun tp!318850 () Bool)

(assert (=> b!1061744 (= e!673736 (and tp!318847 tp!318850))))

(assert (= (and b!1061151 ((_ is ElementMatch!2919) (regTwo!6351 r!15766))) b!1061743))

(assert (= (and b!1061151 ((_ is Concat!4752) (regTwo!6351 r!15766))) b!1061744))

(assert (= (and b!1061151 ((_ is Star!2919) (regTwo!6351 r!15766))) b!1061745))

(assert (= (and b!1061151 ((_ is Union!2919) (regTwo!6351 r!15766))) b!1061746))

(declare-fun b!1061751 () Bool)

(declare-fun e!673739 () Bool)

(declare-fun tp!318854 () Bool)

(assert (=> b!1061751 (= e!673739 (and tp_is_empty!5481 tp!318854))))

(assert (=> b!1061142 (= tp!318785 e!673739)))

(assert (= (and b!1061142 ((_ is Cons!10133) (t!101195 s!10566))) b!1061751))

(declare-fun e!673740 () Bool)

(assert (=> b!1061153 (= tp!318784 e!673740)))

(declare-fun b!1061754 () Bool)

(declare-fun tp!318856 () Bool)

(assert (=> b!1061754 (= e!673740 tp!318856)))

(declare-fun b!1061755 () Bool)

(declare-fun tp!318857 () Bool)

(declare-fun tp!318859 () Bool)

(assert (=> b!1061755 (= e!673740 (and tp!318857 tp!318859))))

(declare-fun b!1061752 () Bool)

(assert (=> b!1061752 (= e!673740 tp_is_empty!5481)))

(declare-fun b!1061753 () Bool)

(declare-fun tp!318855 () Bool)

(declare-fun tp!318858 () Bool)

(assert (=> b!1061753 (= e!673740 (and tp!318855 tp!318858))))

(assert (= (and b!1061153 ((_ is ElementMatch!2919) (regOne!6350 r!15766))) b!1061752))

(assert (= (and b!1061153 ((_ is Concat!4752) (regOne!6350 r!15766))) b!1061753))

(assert (= (and b!1061153 ((_ is Star!2919) (regOne!6350 r!15766))) b!1061754))

(assert (= (and b!1061153 ((_ is Union!2919) (regOne!6350 r!15766))) b!1061755))

(declare-fun e!673741 () Bool)

(assert (=> b!1061153 (= tp!318788 e!673741)))

(declare-fun b!1061758 () Bool)

(declare-fun tp!318861 () Bool)

(assert (=> b!1061758 (= e!673741 tp!318861)))

(declare-fun b!1061759 () Bool)

(declare-fun tp!318862 () Bool)

(declare-fun tp!318864 () Bool)

(assert (=> b!1061759 (= e!673741 (and tp!318862 tp!318864))))

(declare-fun b!1061756 () Bool)

(assert (=> b!1061756 (= e!673741 tp_is_empty!5481)))

(declare-fun b!1061757 () Bool)

(declare-fun tp!318860 () Bool)

(declare-fun tp!318863 () Bool)

(assert (=> b!1061757 (= e!673741 (and tp!318860 tp!318863))))

(assert (= (and b!1061153 ((_ is ElementMatch!2919) (regTwo!6350 r!15766))) b!1061756))

(assert (= (and b!1061153 ((_ is Concat!4752) (regTwo!6350 r!15766))) b!1061757))

(assert (= (and b!1061153 ((_ is Star!2919) (regTwo!6350 r!15766))) b!1061758))

(assert (= (and b!1061153 ((_ is Union!2919) (regTwo!6350 r!15766))) b!1061759))

(check-sat (not d!300741) tp_is_empty!5481 (not bm!76288) (not bm!76317) (not d!300739) (not b!1061714) (not b!1061253) (not b!1061337) (not bm!76377) (not bm!76374) (not d!300691) (not b!1061344) (not b!1061736) (not b!1061741) (not b!1061327) (not d!300693) (not bm!76375) (not b!1061371) (not d!300697) (not b!1061247) (not b!1061353) (not b!1061717) (not b!1061346) (not b!1061745) (not b!1061358) (not d!300695) (not b!1061718) (not b!1061310) (not bm!76314) (not b!1061719) (not b!1061693) (not d!300689) (not bm!76316) (not b!1061302) (not b!1061713) (not bm!76311) (not b!1061341) (not b!1061251) (not d!300681) (not d!300735) (not bm!76318) (not b!1061252) (not d!300679) (not b!1061710) (not b!1061740) (not b!1061243) (not b!1061340) (not b!1061206) (not bm!76279) (not b!1061322) (not b!1061744) (not b!1061751) (not bm!76287) (not b!1061360) (not b!1061328) (not b!1061319) (not b!1061345) (not b!1061339) (not b!1061329) (not b!1061355) (not b!1061207) (not b!1061695) (not bm!76312) (not b!1061323) (not b!1061246) (not b!1061291) (not b!1061738) (not b!1061205) (not b!1061354) (not b!1061359) (not b!1061324) (not b!1061753) (not bm!76308) (not b!1061708) (not bm!76302) (not b!1061211) (not b!1061742) (not bm!76376) (not d!300677) (not b!1061754) (not b!1061759) (not bm!76303) (not b!1061212) (not b!1061370) (not b!1061248) (not bm!76289) (not bm!76378) (not b!1061737) (not bm!76307) (not b!1061746) (not b!1061758) (not d!300671) (not b!1061755) (not b!1061712) (not bm!76315) (not b!1061210) (not b!1061757) (not d!300687))
(check-sat)
