; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291228 () Bool)

(assert start!291228)

(declare-fun b!3039014 () Bool)

(assert (=> b!3039014 true))

(assert (=> b!3039014 true))

(assert (=> b!3039014 true))

(declare-fun lambda!113354 () Int)

(declare-fun lambda!113353 () Int)

(assert (=> b!3039014 (not (= lambda!113354 lambda!113353))))

(assert (=> b!3039014 true))

(assert (=> b!3039014 true))

(assert (=> b!3039014 true))

(declare-fun b!3039013 () Bool)

(declare-fun res!1249970 () Bool)

(declare-fun e!1905325 () Bool)

(assert (=> b!3039013 (=> res!1249970 e!1905325)))

(declare-datatypes ((C!19084 0))(
  ( (C!19085 (val!11578 Int)) )
))
(declare-datatypes ((List!35314 0))(
  ( (Nil!35190) (Cons!35190 (h!40610 C!19084) (t!234379 List!35314)) )
))
(declare-fun s!11993 () List!35314)

(declare-fun isEmpty!19493 (List!35314) Bool)

(assert (=> b!3039013 (= res!1249970 (isEmpty!19493 s!11993))))

(declare-fun e!1905324 () Bool)

(assert (=> b!3039014 (= e!1905325 e!1905324)))

(declare-fun res!1249967 () Bool)

(assert (=> b!3039014 (=> res!1249967 e!1905324)))

(declare-fun lt!1047102 () Bool)

(assert (=> b!3039014 (= res!1249967 (not lt!1047102))))

(declare-fun Exists!1713 (Int) Bool)

(assert (=> b!3039014 (= (Exists!1713 lambda!113353) (Exists!1713 lambda!113354))))

(declare-datatypes ((Unit!49321 0))(
  ( (Unit!49322) )
))
(declare-fun lt!1047101 () Unit!49321)

(declare-datatypes ((Regex!9449 0))(
  ( (ElementMatch!9449 (c!502647 C!19084)) (Concat!14770 (regOne!19410 Regex!9449) (regTwo!19410 Regex!9449)) (EmptyExpr!9449) (Star!9449 (reg!9778 Regex!9449)) (EmptyLang!9449) (Union!9449 (regOne!19411 Regex!9449) (regTwo!19411 Regex!9449)) )
))
(declare-fun r!17423 () Regex!9449)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!330 (Regex!9449 List!35314) Unit!49321)

(assert (=> b!3039014 (= lt!1047101 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!330 (reg!9778 r!17423) s!11993))))

(assert (=> b!3039014 (= lt!1047102 (Exists!1713 lambda!113353))))

(declare-datatypes ((tuple2!34124 0))(
  ( (tuple2!34125 (_1!20194 List!35314) (_2!20194 List!35314)) )
))
(declare-datatypes ((Option!6794 0))(
  ( (None!6793) (Some!6793 (v!34927 tuple2!34124)) )
))
(declare-fun lt!1047095 () Option!6794)

(declare-fun isDefined!5345 (Option!6794) Bool)

(assert (=> b!3039014 (= lt!1047102 (isDefined!5345 lt!1047095))))

(declare-fun lt!1047099 () Regex!9449)

(declare-fun findConcatSeparation!1188 (Regex!9449 Regex!9449 List!35314 List!35314 List!35314) Option!6794)

(assert (=> b!3039014 (= lt!1047095 (findConcatSeparation!1188 (reg!9778 r!17423) lt!1047099 Nil!35190 s!11993 s!11993))))

(declare-fun lt!1047100 () Unit!49321)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!966 (Regex!9449 Regex!9449 List!35314) Unit!49321)

(assert (=> b!3039014 (= lt!1047100 (lemmaFindConcatSeparationEquivalentToExists!966 (reg!9778 r!17423) lt!1047099 s!11993))))

(assert (=> b!3039014 (= lt!1047099 (Star!9449 (reg!9778 r!17423)))))

(declare-fun b!3039015 () Bool)

(declare-fun e!1905328 () Bool)

(assert (=> b!3039015 (= e!1905324 e!1905328)))

(declare-fun res!1249971 () Bool)

(assert (=> b!3039015 (=> res!1249971 e!1905328)))

(declare-fun lt!1047096 () tuple2!34124)

(declare-fun matchR!4331 (Regex!9449 List!35314) Bool)

(assert (=> b!3039015 (= res!1249971 (not (matchR!4331 (reg!9778 r!17423) (_1!20194 lt!1047096))))))

(declare-fun get!10985 (Option!6794) tuple2!34124)

(assert (=> b!3039015 (= lt!1047096 (get!10985 lt!1047095))))

(declare-fun b!3039016 () Bool)

(declare-fun res!1249968 () Bool)

(assert (=> b!3039016 (=> res!1249968 e!1905328)))

(assert (=> b!3039016 (= res!1249968 (not (matchR!4331 lt!1047099 (_2!20194 lt!1047096))))))

(declare-fun b!3039017 () Bool)

(declare-fun e!1905329 () Bool)

(declare-fun tp_is_empty!16461 () Bool)

(declare-fun tp!962269 () Bool)

(assert (=> b!3039017 (= e!1905329 (and tp_is_empty!16461 tp!962269))))

(declare-fun b!3039018 () Bool)

(declare-fun e!1905327 () Bool)

(declare-fun tp!962268 () Bool)

(declare-fun tp!962264 () Bool)

(assert (=> b!3039018 (= e!1905327 (and tp!962268 tp!962264))))

(declare-fun b!3039019 () Bool)

(declare-fun tp!962267 () Bool)

(declare-fun tp!962266 () Bool)

(assert (=> b!3039019 (= e!1905327 (and tp!962267 tp!962266))))

(declare-fun b!3039020 () Bool)

(declare-fun validRegex!4182 (Regex!9449) Bool)

(assert (=> b!3039020 (= e!1905328 (validRegex!4182 (reg!9778 r!17423)))))

(declare-fun res!1249969 () Bool)

(declare-fun e!1905326 () Bool)

(assert (=> start!291228 (=> (not res!1249969) (not e!1905326))))

(assert (=> start!291228 (= res!1249969 (validRegex!4182 r!17423))))

(assert (=> start!291228 e!1905326))

(assert (=> start!291228 e!1905327))

(assert (=> start!291228 e!1905329))

(declare-fun b!3039021 () Bool)

(declare-fun tp!962265 () Bool)

(assert (=> b!3039021 (= e!1905327 tp!962265)))

(declare-fun b!3039022 () Bool)

(assert (=> b!3039022 (= e!1905327 tp_is_empty!16461)))

(declare-fun b!3039023 () Bool)

(assert (=> b!3039023 (= e!1905326 (not e!1905325))))

(declare-fun res!1249972 () Bool)

(assert (=> b!3039023 (=> res!1249972 e!1905325)))

(declare-fun lt!1047097 () Bool)

(get-info :version)

(assert (=> b!3039023 (= res!1249972 (or (not lt!1047097) ((_ is Concat!14770) r!17423) ((_ is Union!9449) r!17423) (not ((_ is Star!9449) r!17423))))))

(declare-fun matchRSpec!1586 (Regex!9449 List!35314) Bool)

(assert (=> b!3039023 (= lt!1047097 (matchRSpec!1586 r!17423 s!11993))))

(assert (=> b!3039023 (= lt!1047097 (matchR!4331 r!17423 s!11993))))

(declare-fun lt!1047098 () Unit!49321)

(declare-fun mainMatchTheorem!1586 (Regex!9449 List!35314) Unit!49321)

(assert (=> b!3039023 (= lt!1047098 (mainMatchTheorem!1586 r!17423 s!11993))))

(assert (= (and start!291228 res!1249969) b!3039023))

(assert (= (and b!3039023 (not res!1249972)) b!3039013))

(assert (= (and b!3039013 (not res!1249970)) b!3039014))

(assert (= (and b!3039014 (not res!1249967)) b!3039015))

(assert (= (and b!3039015 (not res!1249971)) b!3039016))

(assert (= (and b!3039016 (not res!1249968)) b!3039020))

(assert (= (and start!291228 ((_ is ElementMatch!9449) r!17423)) b!3039022))

(assert (= (and start!291228 ((_ is Concat!14770) r!17423)) b!3039019))

(assert (= (and start!291228 ((_ is Star!9449) r!17423)) b!3039021))

(assert (= (and start!291228 ((_ is Union!9449) r!17423)) b!3039018))

(assert (= (and start!291228 ((_ is Cons!35190) s!11993)) b!3039017))

(declare-fun m!3371219 () Bool)

(assert (=> b!3039016 m!3371219))

(declare-fun m!3371221 () Bool)

(assert (=> b!3039015 m!3371221))

(declare-fun m!3371223 () Bool)

(assert (=> b!3039015 m!3371223))

(declare-fun m!3371225 () Bool)

(assert (=> b!3039020 m!3371225))

(declare-fun m!3371227 () Bool)

(assert (=> b!3039014 m!3371227))

(declare-fun m!3371229 () Bool)

(assert (=> b!3039014 m!3371229))

(declare-fun m!3371231 () Bool)

(assert (=> b!3039014 m!3371231))

(declare-fun m!3371233 () Bool)

(assert (=> b!3039014 m!3371233))

(declare-fun m!3371235 () Bool)

(assert (=> b!3039014 m!3371235))

(declare-fun m!3371237 () Bool)

(assert (=> b!3039014 m!3371237))

(assert (=> b!3039014 m!3371231))

(declare-fun m!3371239 () Bool)

(assert (=> b!3039023 m!3371239))

(declare-fun m!3371241 () Bool)

(assert (=> b!3039023 m!3371241))

(declare-fun m!3371243 () Bool)

(assert (=> b!3039023 m!3371243))

(declare-fun m!3371245 () Bool)

(assert (=> start!291228 m!3371245))

(declare-fun m!3371247 () Bool)

(assert (=> b!3039013 m!3371247))

(check-sat (not b!3039017) tp_is_empty!16461 (not start!291228) (not b!3039013) (not b!3039018) (not b!3039016) (not b!3039014) (not b!3039015) (not b!3039020) (not b!3039023) (not b!3039021) (not b!3039019))
(check-sat)
(get-model)

(declare-fun d!852090 () Bool)

(assert (=> d!852090 (= (isEmpty!19493 s!11993) ((_ is Nil!35190) s!11993))))

(assert (=> b!3039013 d!852090))

(declare-fun bs!531062 () Bool)

(declare-fun b!3039140 () Bool)

(assert (= bs!531062 (and b!3039140 b!3039014)))

(declare-fun lambda!113362 () Int)

(assert (=> bs!531062 (not (= lambda!113362 lambda!113353))))

(assert (=> bs!531062 (= (= r!17423 lt!1047099) (= lambda!113362 lambda!113354))))

(assert (=> b!3039140 true))

(assert (=> b!3039140 true))

(declare-fun bs!531063 () Bool)

(declare-fun b!3039139 () Bool)

(assert (= bs!531063 (and b!3039139 b!3039014)))

(declare-fun lambda!113363 () Int)

(assert (=> bs!531063 (not (= lambda!113363 lambda!113353))))

(assert (=> bs!531063 (not (= lambda!113363 lambda!113354))))

(declare-fun bs!531064 () Bool)

(assert (= bs!531064 (and b!3039139 b!3039140)))

(assert (=> bs!531064 (not (= lambda!113363 lambda!113362))))

(assert (=> b!3039139 true))

(assert (=> b!3039139 true))

(declare-fun b!3039133 () Bool)

(declare-fun e!1905392 () Bool)

(assert (=> b!3039133 (= e!1905392 (matchRSpec!1586 (regTwo!19411 r!17423) s!11993))))

(declare-fun b!3039134 () Bool)

(declare-fun e!1905397 () Bool)

(assert (=> b!3039134 (= e!1905397 e!1905392)))

(declare-fun res!1250033 () Bool)

(assert (=> b!3039134 (= res!1250033 (matchRSpec!1586 (regOne!19411 r!17423) s!11993))))

(assert (=> b!3039134 (=> res!1250033 e!1905392)))

(declare-fun b!3039135 () Bool)

(declare-fun e!1905396 () Bool)

(assert (=> b!3039135 (= e!1905396 (= s!11993 (Cons!35190 (c!502647 r!17423) Nil!35190)))))

(declare-fun b!3039136 () Bool)

(declare-fun e!1905394 () Bool)

(assert (=> b!3039136 (= e!1905397 e!1905394)))

(declare-fun c!502671 () Bool)

(assert (=> b!3039136 (= c!502671 ((_ is Star!9449) r!17423))))

(declare-fun b!3039137 () Bool)

(declare-fun c!502672 () Bool)

(assert (=> b!3039137 (= c!502672 ((_ is Union!9449) r!17423))))

(assert (=> b!3039137 (= e!1905396 e!1905397)))

(declare-fun b!3039138 () Bool)

(declare-fun e!1905395 () Bool)

(declare-fun e!1905398 () Bool)

(assert (=> b!3039138 (= e!1905395 e!1905398)))

(declare-fun res!1250034 () Bool)

(assert (=> b!3039138 (= res!1250034 (not ((_ is EmptyLang!9449) r!17423)))))

(assert (=> b!3039138 (=> (not res!1250034) (not e!1905398))))

(declare-fun call!207733 () Bool)

(assert (=> b!3039139 (= e!1905394 call!207733)))

(declare-fun e!1905393 () Bool)

(assert (=> b!3039140 (= e!1905393 call!207733)))

(declare-fun b!3039141 () Bool)

(declare-fun res!1250032 () Bool)

(assert (=> b!3039141 (=> res!1250032 e!1905393)))

(declare-fun call!207734 () Bool)

(assert (=> b!3039141 (= res!1250032 call!207734)))

(assert (=> b!3039141 (= e!1905394 e!1905393)))

(declare-fun b!3039142 () Bool)

(assert (=> b!3039142 (= e!1905395 call!207734)))

(declare-fun d!852094 () Bool)

(declare-fun c!502673 () Bool)

(assert (=> d!852094 (= c!502673 ((_ is EmptyExpr!9449) r!17423))))

(assert (=> d!852094 (= (matchRSpec!1586 r!17423 s!11993) e!1905395)))

(declare-fun bm!207728 () Bool)

(assert (=> bm!207728 (= call!207733 (Exists!1713 (ite c!502671 lambda!113362 lambda!113363)))))

(declare-fun b!3039143 () Bool)

(declare-fun c!502674 () Bool)

(assert (=> b!3039143 (= c!502674 ((_ is ElementMatch!9449) r!17423))))

(assert (=> b!3039143 (= e!1905398 e!1905396)))

(declare-fun bm!207729 () Bool)

(assert (=> bm!207729 (= call!207734 (isEmpty!19493 s!11993))))

(assert (= (and d!852094 c!502673) b!3039142))

(assert (= (and d!852094 (not c!502673)) b!3039138))

(assert (= (and b!3039138 res!1250034) b!3039143))

(assert (= (and b!3039143 c!502674) b!3039135))

(assert (= (and b!3039143 (not c!502674)) b!3039137))

(assert (= (and b!3039137 c!502672) b!3039134))

(assert (= (and b!3039137 (not c!502672)) b!3039136))

(assert (= (and b!3039134 (not res!1250033)) b!3039133))

(assert (= (and b!3039136 c!502671) b!3039141))

(assert (= (and b!3039136 (not c!502671)) b!3039139))

(assert (= (and b!3039141 (not res!1250032)) b!3039140))

(assert (= (or b!3039140 b!3039139) bm!207728))

(assert (= (or b!3039142 b!3039141) bm!207729))

(declare-fun m!3371281 () Bool)

(assert (=> b!3039133 m!3371281))

(declare-fun m!3371283 () Bool)

(assert (=> b!3039134 m!3371283))

(declare-fun m!3371285 () Bool)

(assert (=> bm!207728 m!3371285))

(assert (=> bm!207729 m!3371247))

(assert (=> b!3039023 d!852094))

(declare-fun b!3039200 () Bool)

(declare-fun e!1905432 () Bool)

(declare-fun lt!1047120 () Bool)

(declare-fun call!207737 () Bool)

(assert (=> b!3039200 (= e!1905432 (= lt!1047120 call!207737))))

(declare-fun b!3039201 () Bool)

(declare-fun e!1905427 () Bool)

(declare-fun e!1905428 () Bool)

(assert (=> b!3039201 (= e!1905427 e!1905428)))

(declare-fun res!1250073 () Bool)

(assert (=> b!3039201 (=> (not res!1250073) (not e!1905428))))

(assert (=> b!3039201 (= res!1250073 (not lt!1047120))))

(declare-fun b!3039202 () Bool)

(declare-fun e!1905429 () Bool)

(declare-fun derivativeStep!2694 (Regex!9449 C!19084) Regex!9449)

(declare-fun head!6753 (List!35314) C!19084)

(declare-fun tail!4979 (List!35314) List!35314)

(assert (=> b!3039202 (= e!1905429 (matchR!4331 (derivativeStep!2694 r!17423 (head!6753 s!11993)) (tail!4979 s!11993)))))

(declare-fun b!3039203 () Bool)

(declare-fun res!1250072 () Bool)

(declare-fun e!1905431 () Bool)

(assert (=> b!3039203 (=> (not res!1250072) (not e!1905431))))

(assert (=> b!3039203 (= res!1250072 (isEmpty!19493 (tail!4979 s!11993)))))

(declare-fun d!852106 () Bool)

(assert (=> d!852106 e!1905432))

(declare-fun c!502686 () Bool)

(assert (=> d!852106 (= c!502686 ((_ is EmptyExpr!9449) r!17423))))

(assert (=> d!852106 (= lt!1047120 e!1905429)))

(declare-fun c!502687 () Bool)

(assert (=> d!852106 (= c!502687 (isEmpty!19493 s!11993))))

(assert (=> d!852106 (validRegex!4182 r!17423)))

(assert (=> d!852106 (= (matchR!4331 r!17423 s!11993) lt!1047120)))

(declare-fun b!3039204 () Bool)

(declare-fun e!1905430 () Bool)

(assert (=> b!3039204 (= e!1905432 e!1905430)))

(declare-fun c!502685 () Bool)

(assert (=> b!3039204 (= c!502685 ((_ is EmptyLang!9449) r!17423))))

(declare-fun b!3039205 () Bool)

(assert (=> b!3039205 (= e!1905431 (= (head!6753 s!11993) (c!502647 r!17423)))))

(declare-fun b!3039206 () Bool)

(declare-fun nullable!3097 (Regex!9449) Bool)

(assert (=> b!3039206 (= e!1905429 (nullable!3097 r!17423))))

(declare-fun b!3039207 () Bool)

(declare-fun e!1905433 () Bool)

(assert (=> b!3039207 (= e!1905433 (not (= (head!6753 s!11993) (c!502647 r!17423))))))

(declare-fun b!3039208 () Bool)

(assert (=> b!3039208 (= e!1905430 (not lt!1047120))))

(declare-fun b!3039209 () Bool)

(assert (=> b!3039209 (= e!1905428 e!1905433)))

(declare-fun res!1250076 () Bool)

(assert (=> b!3039209 (=> res!1250076 e!1905433)))

(assert (=> b!3039209 (= res!1250076 call!207737)))

(declare-fun b!3039210 () Bool)

(declare-fun res!1250071 () Bool)

(assert (=> b!3039210 (=> res!1250071 e!1905433)))

(assert (=> b!3039210 (= res!1250071 (not (isEmpty!19493 (tail!4979 s!11993))))))

(declare-fun bm!207732 () Bool)

(assert (=> bm!207732 (= call!207737 (isEmpty!19493 s!11993))))

(declare-fun b!3039211 () Bool)

(declare-fun res!1250074 () Bool)

(assert (=> b!3039211 (=> (not res!1250074) (not e!1905431))))

(assert (=> b!3039211 (= res!1250074 (not call!207737))))

(declare-fun b!3039212 () Bool)

(declare-fun res!1250075 () Bool)

(assert (=> b!3039212 (=> res!1250075 e!1905427)))

(assert (=> b!3039212 (= res!1250075 e!1905431)))

(declare-fun res!1250078 () Bool)

(assert (=> b!3039212 (=> (not res!1250078) (not e!1905431))))

(assert (=> b!3039212 (= res!1250078 lt!1047120)))

(declare-fun b!3039213 () Bool)

(declare-fun res!1250077 () Bool)

(assert (=> b!3039213 (=> res!1250077 e!1905427)))

(assert (=> b!3039213 (= res!1250077 (not ((_ is ElementMatch!9449) r!17423)))))

(assert (=> b!3039213 (= e!1905430 e!1905427)))

(assert (= (and d!852106 c!502687) b!3039206))

(assert (= (and d!852106 (not c!502687)) b!3039202))

(assert (= (and d!852106 c!502686) b!3039200))

(assert (= (and d!852106 (not c!502686)) b!3039204))

(assert (= (and b!3039204 c!502685) b!3039208))

(assert (= (and b!3039204 (not c!502685)) b!3039213))

(assert (= (and b!3039213 (not res!1250077)) b!3039212))

(assert (= (and b!3039212 res!1250078) b!3039211))

(assert (= (and b!3039211 res!1250074) b!3039203))

(assert (= (and b!3039203 res!1250072) b!3039205))

(assert (= (and b!3039212 (not res!1250075)) b!3039201))

(assert (= (and b!3039201 res!1250073) b!3039209))

(assert (= (and b!3039209 (not res!1250076)) b!3039210))

(assert (= (and b!3039210 (not res!1250071)) b!3039207))

(assert (= (or b!3039200 b!3039209 b!3039211) bm!207732))

(declare-fun m!3371293 () Bool)

(assert (=> b!3039202 m!3371293))

(assert (=> b!3039202 m!3371293))

(declare-fun m!3371295 () Bool)

(assert (=> b!3039202 m!3371295))

(declare-fun m!3371297 () Bool)

(assert (=> b!3039202 m!3371297))

(assert (=> b!3039202 m!3371295))

(assert (=> b!3039202 m!3371297))

(declare-fun m!3371299 () Bool)

(assert (=> b!3039202 m!3371299))

(assert (=> b!3039203 m!3371297))

(assert (=> b!3039203 m!3371297))

(declare-fun m!3371301 () Bool)

(assert (=> b!3039203 m!3371301))

(assert (=> d!852106 m!3371247))

(assert (=> d!852106 m!3371245))

(assert (=> b!3039210 m!3371297))

(assert (=> b!3039210 m!3371297))

(assert (=> b!3039210 m!3371301))

(assert (=> b!3039205 m!3371293))

(declare-fun m!3371303 () Bool)

(assert (=> b!3039206 m!3371303))

(assert (=> bm!207732 m!3371247))

(assert (=> b!3039207 m!3371293))

(assert (=> b!3039023 d!852106))

(declare-fun d!852110 () Bool)

(assert (=> d!852110 (= (matchR!4331 r!17423 s!11993) (matchRSpec!1586 r!17423 s!11993))))

(declare-fun lt!1047127 () Unit!49321)

(declare-fun choose!18034 (Regex!9449 List!35314) Unit!49321)

(assert (=> d!852110 (= lt!1047127 (choose!18034 r!17423 s!11993))))

(assert (=> d!852110 (validRegex!4182 r!17423)))

(assert (=> d!852110 (= (mainMatchTheorem!1586 r!17423 s!11993) lt!1047127)))

(declare-fun bs!531069 () Bool)

(assert (= bs!531069 d!852110))

(assert (=> bs!531069 m!3371241))

(assert (=> bs!531069 m!3371239))

(declare-fun m!3371347 () Bool)

(assert (=> bs!531069 m!3371347))

(assert (=> bs!531069 m!3371245))

(assert (=> b!3039023 d!852110))

(declare-fun bs!531077 () Bool)

(declare-fun d!852122 () Bool)

(assert (= bs!531077 (and d!852122 b!3039014)))

(declare-fun lambda!113380 () Int)

(assert (=> bs!531077 (= (= (Star!9449 (reg!9778 r!17423)) lt!1047099) (= lambda!113380 lambda!113353))))

(assert (=> bs!531077 (not (= lambda!113380 lambda!113354))))

(declare-fun bs!531079 () Bool)

(assert (= bs!531079 (and d!852122 b!3039140)))

(assert (=> bs!531079 (not (= lambda!113380 lambda!113362))))

(declare-fun bs!531080 () Bool)

(assert (= bs!531080 (and d!852122 b!3039139)))

(assert (=> bs!531080 (not (= lambda!113380 lambda!113363))))

(assert (=> d!852122 true))

(assert (=> d!852122 true))

(declare-fun lambda!113381 () Int)

(assert (=> bs!531080 (not (= lambda!113381 lambda!113363))))

(assert (=> bs!531077 (not (= lambda!113381 lambda!113353))))

(assert (=> bs!531079 (= (= (Star!9449 (reg!9778 r!17423)) r!17423) (= lambda!113381 lambda!113362))))

(declare-fun bs!531081 () Bool)

(assert (= bs!531081 d!852122))

(assert (=> bs!531081 (not (= lambda!113381 lambda!113380))))

(assert (=> bs!531077 (= (= (Star!9449 (reg!9778 r!17423)) lt!1047099) (= lambda!113381 lambda!113354))))

(assert (=> d!852122 true))

(assert (=> d!852122 true))

(assert (=> d!852122 (= (Exists!1713 lambda!113380) (Exists!1713 lambda!113381))))

(declare-fun lt!1047131 () Unit!49321)

(declare-fun choose!18036 (Regex!9449 List!35314) Unit!49321)

(assert (=> d!852122 (= lt!1047131 (choose!18036 (reg!9778 r!17423) s!11993))))

(assert (=> d!852122 (validRegex!4182 (reg!9778 r!17423))))

(assert (=> d!852122 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!330 (reg!9778 r!17423) s!11993) lt!1047131)))

(declare-fun m!3371369 () Bool)

(assert (=> bs!531081 m!3371369))

(declare-fun m!3371371 () Bool)

(assert (=> bs!531081 m!3371371))

(declare-fun m!3371373 () Bool)

(assert (=> bs!531081 m!3371373))

(assert (=> bs!531081 m!3371225))

(assert (=> b!3039014 d!852122))

(declare-fun bs!531082 () Bool)

(declare-fun d!852128 () Bool)

(assert (= bs!531082 (and d!852128 b!3039139)))

(declare-fun lambda!113384 () Int)

(assert (=> bs!531082 (not (= lambda!113384 lambda!113363))))

(declare-fun bs!531083 () Bool)

(assert (= bs!531083 (and d!852128 b!3039014)))

(assert (=> bs!531083 (= lambda!113384 lambda!113353)))

(declare-fun bs!531084 () Bool)

(assert (= bs!531084 (and d!852128 b!3039140)))

(assert (=> bs!531084 (not (= lambda!113384 lambda!113362))))

(declare-fun bs!531085 () Bool)

(assert (= bs!531085 (and d!852128 d!852122)))

(assert (=> bs!531085 (= (= lt!1047099 (Star!9449 (reg!9778 r!17423))) (= lambda!113384 lambda!113380))))

(assert (=> bs!531083 (not (= lambda!113384 lambda!113354))))

(assert (=> bs!531085 (not (= lambda!113384 lambda!113381))))

(assert (=> d!852128 true))

(assert (=> d!852128 true))

(assert (=> d!852128 true))

(assert (=> d!852128 (= (isDefined!5345 (findConcatSeparation!1188 (reg!9778 r!17423) lt!1047099 Nil!35190 s!11993 s!11993)) (Exists!1713 lambda!113384))))

(declare-fun lt!1047137 () Unit!49321)

(declare-fun choose!18037 (Regex!9449 Regex!9449 List!35314) Unit!49321)

(assert (=> d!852128 (= lt!1047137 (choose!18037 (reg!9778 r!17423) lt!1047099 s!11993))))

(assert (=> d!852128 (validRegex!4182 (reg!9778 r!17423))))

(assert (=> d!852128 (= (lemmaFindConcatSeparationEquivalentToExists!966 (reg!9778 r!17423) lt!1047099 s!11993) lt!1047137)))

(declare-fun bs!531086 () Bool)

(assert (= bs!531086 d!852128))

(assert (=> bs!531086 m!3371225))

(declare-fun m!3371375 () Bool)

(assert (=> bs!531086 m!3371375))

(assert (=> bs!531086 m!3371233))

(declare-fun m!3371377 () Bool)

(assert (=> bs!531086 m!3371377))

(declare-fun m!3371379 () Bool)

(assert (=> bs!531086 m!3371379))

(assert (=> bs!531086 m!3371233))

(assert (=> b!3039014 d!852128))

(declare-fun b!3039370 () Bool)

(declare-fun e!1905515 () Option!6794)

(declare-fun e!1905514 () Option!6794)

(assert (=> b!3039370 (= e!1905515 e!1905514)))

(declare-fun c!502714 () Bool)

(assert (=> b!3039370 (= c!502714 ((_ is Nil!35190) s!11993))))

(declare-fun b!3039371 () Bool)

(declare-fun res!1250148 () Bool)

(declare-fun e!1905513 () Bool)

(assert (=> b!3039371 (=> (not res!1250148) (not e!1905513))))

(declare-fun lt!1047145 () Option!6794)

(assert (=> b!3039371 (= res!1250148 (matchR!4331 lt!1047099 (_2!20194 (get!10985 lt!1047145))))))

(declare-fun d!852130 () Bool)

(declare-fun e!1905511 () Bool)

(assert (=> d!852130 e!1905511))

(declare-fun res!1250151 () Bool)

(assert (=> d!852130 (=> res!1250151 e!1905511)))

(assert (=> d!852130 (= res!1250151 e!1905513)))

(declare-fun res!1250150 () Bool)

(assert (=> d!852130 (=> (not res!1250150) (not e!1905513))))

(assert (=> d!852130 (= res!1250150 (isDefined!5345 lt!1047145))))

(assert (=> d!852130 (= lt!1047145 e!1905515)))

(declare-fun c!502715 () Bool)

(declare-fun e!1905512 () Bool)

(assert (=> d!852130 (= c!502715 e!1905512)))

(declare-fun res!1250149 () Bool)

(assert (=> d!852130 (=> (not res!1250149) (not e!1905512))))

(assert (=> d!852130 (= res!1250149 (matchR!4331 (reg!9778 r!17423) Nil!35190))))

(assert (=> d!852130 (validRegex!4182 (reg!9778 r!17423))))

(assert (=> d!852130 (= (findConcatSeparation!1188 (reg!9778 r!17423) lt!1047099 Nil!35190 s!11993 s!11993) lt!1047145)))

(declare-fun b!3039372 () Bool)

(assert (=> b!3039372 (= e!1905515 (Some!6793 (tuple2!34125 Nil!35190 s!11993)))))

(declare-fun b!3039373 () Bool)

(assert (=> b!3039373 (= e!1905512 (matchR!4331 lt!1047099 s!11993))))

(declare-fun b!3039374 () Bool)

(declare-fun ++!8440 (List!35314 List!35314) List!35314)

(assert (=> b!3039374 (= e!1905513 (= (++!8440 (_1!20194 (get!10985 lt!1047145)) (_2!20194 (get!10985 lt!1047145))) s!11993))))

(declare-fun b!3039375 () Bool)

(declare-fun res!1250152 () Bool)

(assert (=> b!3039375 (=> (not res!1250152) (not e!1905513))))

(assert (=> b!3039375 (= res!1250152 (matchR!4331 (reg!9778 r!17423) (_1!20194 (get!10985 lt!1047145))))))

(declare-fun b!3039376 () Bool)

(assert (=> b!3039376 (= e!1905511 (not (isDefined!5345 lt!1047145)))))

(declare-fun b!3039377 () Bool)

(declare-fun lt!1047144 () Unit!49321)

(declare-fun lt!1047146 () Unit!49321)

(assert (=> b!3039377 (= lt!1047144 lt!1047146)))

(assert (=> b!3039377 (= (++!8440 (++!8440 Nil!35190 (Cons!35190 (h!40610 s!11993) Nil!35190)) (t!234379 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1047 (List!35314 C!19084 List!35314 List!35314) Unit!49321)

(assert (=> b!3039377 (= lt!1047146 (lemmaMoveElementToOtherListKeepsConcatEq!1047 Nil!35190 (h!40610 s!11993) (t!234379 s!11993) s!11993))))

(assert (=> b!3039377 (= e!1905514 (findConcatSeparation!1188 (reg!9778 r!17423) lt!1047099 (++!8440 Nil!35190 (Cons!35190 (h!40610 s!11993) Nil!35190)) (t!234379 s!11993) s!11993))))

(declare-fun b!3039378 () Bool)

(assert (=> b!3039378 (= e!1905514 None!6793)))

(assert (= (and d!852130 res!1250149) b!3039373))

(assert (= (and d!852130 c!502715) b!3039372))

(assert (= (and d!852130 (not c!502715)) b!3039370))

(assert (= (and b!3039370 c!502714) b!3039378))

(assert (= (and b!3039370 (not c!502714)) b!3039377))

(assert (= (and d!852130 res!1250150) b!3039375))

(assert (= (and b!3039375 res!1250152) b!3039371))

(assert (= (and b!3039371 res!1250148) b!3039374))

(assert (= (and d!852130 (not res!1250151)) b!3039376))

(declare-fun m!3371381 () Bool)

(assert (=> b!3039375 m!3371381))

(declare-fun m!3371383 () Bool)

(assert (=> b!3039375 m!3371383))

(assert (=> b!3039371 m!3371381))

(declare-fun m!3371385 () Bool)

(assert (=> b!3039371 m!3371385))

(declare-fun m!3371387 () Bool)

(assert (=> b!3039376 m!3371387))

(declare-fun m!3371389 () Bool)

(assert (=> b!3039377 m!3371389))

(assert (=> b!3039377 m!3371389))

(declare-fun m!3371391 () Bool)

(assert (=> b!3039377 m!3371391))

(declare-fun m!3371393 () Bool)

(assert (=> b!3039377 m!3371393))

(assert (=> b!3039377 m!3371389))

(declare-fun m!3371395 () Bool)

(assert (=> b!3039377 m!3371395))

(assert (=> b!3039374 m!3371381))

(declare-fun m!3371397 () Bool)

(assert (=> b!3039374 m!3371397))

(assert (=> d!852130 m!3371387))

(declare-fun m!3371399 () Bool)

(assert (=> d!852130 m!3371399))

(assert (=> d!852130 m!3371225))

(declare-fun m!3371401 () Bool)

(assert (=> b!3039373 m!3371401))

(assert (=> b!3039014 d!852130))

(declare-fun d!852132 () Bool)

(declare-fun choose!18038 (Int) Bool)

(assert (=> d!852132 (= (Exists!1713 lambda!113354) (choose!18038 lambda!113354))))

(declare-fun bs!531087 () Bool)

(assert (= bs!531087 d!852132))

(declare-fun m!3371403 () Bool)

(assert (=> bs!531087 m!3371403))

(assert (=> b!3039014 d!852132))

(declare-fun d!852134 () Bool)

(assert (=> d!852134 (= (Exists!1713 lambda!113353) (choose!18038 lambda!113353))))

(declare-fun bs!531088 () Bool)

(assert (= bs!531088 d!852134))

(declare-fun m!3371405 () Bool)

(assert (=> bs!531088 m!3371405))

(assert (=> b!3039014 d!852134))

(declare-fun d!852136 () Bool)

(declare-fun isEmpty!19495 (Option!6794) Bool)

(assert (=> d!852136 (= (isDefined!5345 lt!1047095) (not (isEmpty!19495 lt!1047095)))))

(declare-fun bs!531089 () Bool)

(assert (= bs!531089 d!852136))

(declare-fun m!3371407 () Bool)

(assert (=> bs!531089 m!3371407))

(assert (=> b!3039014 d!852136))

(declare-fun b!3039379 () Bool)

(declare-fun e!1905521 () Bool)

(declare-fun lt!1047147 () Bool)

(declare-fun call!207749 () Bool)

(assert (=> b!3039379 (= e!1905521 (= lt!1047147 call!207749))))

(declare-fun b!3039380 () Bool)

(declare-fun e!1905516 () Bool)

(declare-fun e!1905517 () Bool)

(assert (=> b!3039380 (= e!1905516 e!1905517)))

(declare-fun res!1250155 () Bool)

(assert (=> b!3039380 (=> (not res!1250155) (not e!1905517))))

(assert (=> b!3039380 (= res!1250155 (not lt!1047147))))

(declare-fun b!3039381 () Bool)

(declare-fun e!1905518 () Bool)

(assert (=> b!3039381 (= e!1905518 (matchR!4331 (derivativeStep!2694 (reg!9778 r!17423) (head!6753 (_1!20194 lt!1047096))) (tail!4979 (_1!20194 lt!1047096))))))

(declare-fun b!3039382 () Bool)

(declare-fun res!1250154 () Bool)

(declare-fun e!1905520 () Bool)

(assert (=> b!3039382 (=> (not res!1250154) (not e!1905520))))

(assert (=> b!3039382 (= res!1250154 (isEmpty!19493 (tail!4979 (_1!20194 lt!1047096))))))

(declare-fun d!852138 () Bool)

(assert (=> d!852138 e!1905521))

(declare-fun c!502717 () Bool)

(assert (=> d!852138 (= c!502717 ((_ is EmptyExpr!9449) (reg!9778 r!17423)))))

(assert (=> d!852138 (= lt!1047147 e!1905518)))

(declare-fun c!502718 () Bool)

(assert (=> d!852138 (= c!502718 (isEmpty!19493 (_1!20194 lt!1047096)))))

(assert (=> d!852138 (validRegex!4182 (reg!9778 r!17423))))

(assert (=> d!852138 (= (matchR!4331 (reg!9778 r!17423) (_1!20194 lt!1047096)) lt!1047147)))

(declare-fun b!3039383 () Bool)

(declare-fun e!1905519 () Bool)

(assert (=> b!3039383 (= e!1905521 e!1905519)))

(declare-fun c!502716 () Bool)

(assert (=> b!3039383 (= c!502716 ((_ is EmptyLang!9449) (reg!9778 r!17423)))))

(declare-fun b!3039384 () Bool)

(assert (=> b!3039384 (= e!1905520 (= (head!6753 (_1!20194 lt!1047096)) (c!502647 (reg!9778 r!17423))))))

(declare-fun b!3039385 () Bool)

(assert (=> b!3039385 (= e!1905518 (nullable!3097 (reg!9778 r!17423)))))

(declare-fun b!3039386 () Bool)

(declare-fun e!1905522 () Bool)

(assert (=> b!3039386 (= e!1905522 (not (= (head!6753 (_1!20194 lt!1047096)) (c!502647 (reg!9778 r!17423)))))))

(declare-fun b!3039387 () Bool)

(assert (=> b!3039387 (= e!1905519 (not lt!1047147))))

(declare-fun b!3039388 () Bool)

(assert (=> b!3039388 (= e!1905517 e!1905522)))

(declare-fun res!1250158 () Bool)

(assert (=> b!3039388 (=> res!1250158 e!1905522)))

(assert (=> b!3039388 (= res!1250158 call!207749)))

(declare-fun b!3039389 () Bool)

(declare-fun res!1250153 () Bool)

(assert (=> b!3039389 (=> res!1250153 e!1905522)))

(assert (=> b!3039389 (= res!1250153 (not (isEmpty!19493 (tail!4979 (_1!20194 lt!1047096)))))))

(declare-fun bm!207744 () Bool)

(assert (=> bm!207744 (= call!207749 (isEmpty!19493 (_1!20194 lt!1047096)))))

(declare-fun b!3039390 () Bool)

(declare-fun res!1250156 () Bool)

(assert (=> b!3039390 (=> (not res!1250156) (not e!1905520))))

(assert (=> b!3039390 (= res!1250156 (not call!207749))))

(declare-fun b!3039391 () Bool)

(declare-fun res!1250157 () Bool)

(assert (=> b!3039391 (=> res!1250157 e!1905516)))

(assert (=> b!3039391 (= res!1250157 e!1905520)))

(declare-fun res!1250160 () Bool)

(assert (=> b!3039391 (=> (not res!1250160) (not e!1905520))))

(assert (=> b!3039391 (= res!1250160 lt!1047147)))

(declare-fun b!3039392 () Bool)

(declare-fun res!1250159 () Bool)

(assert (=> b!3039392 (=> res!1250159 e!1905516)))

(assert (=> b!3039392 (= res!1250159 (not ((_ is ElementMatch!9449) (reg!9778 r!17423))))))

(assert (=> b!3039392 (= e!1905519 e!1905516)))

(assert (= (and d!852138 c!502718) b!3039385))

(assert (= (and d!852138 (not c!502718)) b!3039381))

(assert (= (and d!852138 c!502717) b!3039379))

(assert (= (and d!852138 (not c!502717)) b!3039383))

(assert (= (and b!3039383 c!502716) b!3039387))

(assert (= (and b!3039383 (not c!502716)) b!3039392))

(assert (= (and b!3039392 (not res!1250159)) b!3039391))

(assert (= (and b!3039391 res!1250160) b!3039390))

(assert (= (and b!3039390 res!1250156) b!3039382))

(assert (= (and b!3039382 res!1250154) b!3039384))

(assert (= (and b!3039391 (not res!1250157)) b!3039380))

(assert (= (and b!3039380 res!1250155) b!3039388))

(assert (= (and b!3039388 (not res!1250158)) b!3039389))

(assert (= (and b!3039389 (not res!1250153)) b!3039386))

(assert (= (or b!3039379 b!3039388 b!3039390) bm!207744))

(declare-fun m!3371409 () Bool)

(assert (=> b!3039381 m!3371409))

(assert (=> b!3039381 m!3371409))

(declare-fun m!3371411 () Bool)

(assert (=> b!3039381 m!3371411))

(declare-fun m!3371413 () Bool)

(assert (=> b!3039381 m!3371413))

(assert (=> b!3039381 m!3371411))

(assert (=> b!3039381 m!3371413))

(declare-fun m!3371415 () Bool)

(assert (=> b!3039381 m!3371415))

(assert (=> b!3039382 m!3371413))

(assert (=> b!3039382 m!3371413))

(declare-fun m!3371417 () Bool)

(assert (=> b!3039382 m!3371417))

(declare-fun m!3371419 () Bool)

(assert (=> d!852138 m!3371419))

(assert (=> d!852138 m!3371225))

(assert (=> b!3039389 m!3371413))

(assert (=> b!3039389 m!3371413))

(assert (=> b!3039389 m!3371417))

(assert (=> b!3039384 m!3371409))

(declare-fun m!3371421 () Bool)

(assert (=> b!3039385 m!3371421))

(assert (=> bm!207744 m!3371419))

(assert (=> b!3039386 m!3371409))

(assert (=> b!3039015 d!852138))

(declare-fun d!852140 () Bool)

(assert (=> d!852140 (= (get!10985 lt!1047095) (v!34927 lt!1047095))))

(assert (=> b!3039015 d!852140))

(declare-fun d!852142 () Bool)

(declare-fun res!1250171 () Bool)

(declare-fun e!1905542 () Bool)

(assert (=> d!852142 (=> res!1250171 e!1905542)))

(assert (=> d!852142 (= res!1250171 ((_ is ElementMatch!9449) (reg!9778 r!17423)))))

(assert (=> d!852142 (= (validRegex!4182 (reg!9778 r!17423)) e!1905542)))

(declare-fun bm!207751 () Bool)

(declare-fun call!207756 () Bool)

(declare-fun c!502724 () Bool)

(assert (=> bm!207751 (= call!207756 (validRegex!4182 (ite c!502724 (regTwo!19411 (reg!9778 r!17423)) (regOne!19410 (reg!9778 r!17423)))))))

(declare-fun b!3039411 () Bool)

(declare-fun e!1905539 () Bool)

(assert (=> b!3039411 (= e!1905542 e!1905539)))

(declare-fun c!502723 () Bool)

(assert (=> b!3039411 (= c!502723 ((_ is Star!9449) (reg!9778 r!17423)))))

(declare-fun b!3039412 () Bool)

(declare-fun e!1905540 () Bool)

(declare-fun call!207758 () Bool)

(assert (=> b!3039412 (= e!1905540 call!207758)))

(declare-fun b!3039413 () Bool)

(declare-fun e!1905541 () Bool)

(assert (=> b!3039413 (= e!1905539 e!1905541)))

(assert (=> b!3039413 (= c!502724 ((_ is Union!9449) (reg!9778 r!17423)))))

(declare-fun bm!207752 () Bool)

(declare-fun call!207757 () Bool)

(assert (=> bm!207752 (= call!207758 call!207757)))

(declare-fun b!3039414 () Bool)

(declare-fun e!1905543 () Bool)

(assert (=> b!3039414 (= e!1905543 call!207757)))

(declare-fun b!3039415 () Bool)

(declare-fun res!1250175 () Bool)

(declare-fun e!1905538 () Bool)

(assert (=> b!3039415 (=> res!1250175 e!1905538)))

(assert (=> b!3039415 (= res!1250175 (not ((_ is Concat!14770) (reg!9778 r!17423))))))

(assert (=> b!3039415 (= e!1905541 e!1905538)))

(declare-fun b!3039416 () Bool)

(declare-fun e!1905537 () Bool)

(assert (=> b!3039416 (= e!1905537 call!207756)))

(declare-fun b!3039417 () Bool)

(assert (=> b!3039417 (= e!1905539 e!1905543)))

(declare-fun res!1250174 () Bool)

(assert (=> b!3039417 (= res!1250174 (not (nullable!3097 (reg!9778 (reg!9778 r!17423)))))))

(assert (=> b!3039417 (=> (not res!1250174) (not e!1905543))))

(declare-fun b!3039418 () Bool)

(assert (=> b!3039418 (= e!1905538 e!1905540)))

(declare-fun res!1250172 () Bool)

(assert (=> b!3039418 (=> (not res!1250172) (not e!1905540))))

(assert (=> b!3039418 (= res!1250172 call!207756)))

(declare-fun b!3039419 () Bool)

(declare-fun res!1250173 () Bool)

(assert (=> b!3039419 (=> (not res!1250173) (not e!1905537))))

(assert (=> b!3039419 (= res!1250173 call!207758)))

(assert (=> b!3039419 (= e!1905541 e!1905537)))

(declare-fun bm!207753 () Bool)

(assert (=> bm!207753 (= call!207757 (validRegex!4182 (ite c!502723 (reg!9778 (reg!9778 r!17423)) (ite c!502724 (regOne!19411 (reg!9778 r!17423)) (regTwo!19410 (reg!9778 r!17423))))))))

(assert (= (and d!852142 (not res!1250171)) b!3039411))

(assert (= (and b!3039411 c!502723) b!3039417))

(assert (= (and b!3039411 (not c!502723)) b!3039413))

(assert (= (and b!3039417 res!1250174) b!3039414))

(assert (= (and b!3039413 c!502724) b!3039419))

(assert (= (and b!3039413 (not c!502724)) b!3039415))

(assert (= (and b!3039419 res!1250173) b!3039416))

(assert (= (and b!3039415 (not res!1250175)) b!3039418))

(assert (= (and b!3039418 res!1250172) b!3039412))

(assert (= (or b!3039419 b!3039412) bm!207752))

(assert (= (or b!3039416 b!3039418) bm!207751))

(assert (= (or b!3039414 bm!207752) bm!207753))

(declare-fun m!3371423 () Bool)

(assert (=> bm!207751 m!3371423))

(declare-fun m!3371425 () Bool)

(assert (=> b!3039417 m!3371425))

(declare-fun m!3371427 () Bool)

(assert (=> bm!207753 m!3371427))

(assert (=> b!3039020 d!852142))

(declare-fun d!852144 () Bool)

(declare-fun res!1250176 () Bool)

(declare-fun e!1905549 () Bool)

(assert (=> d!852144 (=> res!1250176 e!1905549)))

(assert (=> d!852144 (= res!1250176 ((_ is ElementMatch!9449) r!17423))))

(assert (=> d!852144 (= (validRegex!4182 r!17423) e!1905549)))

(declare-fun bm!207754 () Bool)

(declare-fun call!207759 () Bool)

(declare-fun c!502726 () Bool)

(assert (=> bm!207754 (= call!207759 (validRegex!4182 (ite c!502726 (regTwo!19411 r!17423) (regOne!19410 r!17423))))))

(declare-fun b!3039420 () Bool)

(declare-fun e!1905546 () Bool)

(assert (=> b!3039420 (= e!1905549 e!1905546)))

(declare-fun c!502725 () Bool)

(assert (=> b!3039420 (= c!502725 ((_ is Star!9449) r!17423))))

(declare-fun b!3039421 () Bool)

(declare-fun e!1905547 () Bool)

(declare-fun call!207761 () Bool)

(assert (=> b!3039421 (= e!1905547 call!207761)))

(declare-fun b!3039422 () Bool)

(declare-fun e!1905548 () Bool)

(assert (=> b!3039422 (= e!1905546 e!1905548)))

(assert (=> b!3039422 (= c!502726 ((_ is Union!9449) r!17423))))

(declare-fun bm!207755 () Bool)

(declare-fun call!207760 () Bool)

(assert (=> bm!207755 (= call!207761 call!207760)))

(declare-fun b!3039423 () Bool)

(declare-fun e!1905550 () Bool)

(assert (=> b!3039423 (= e!1905550 call!207760)))

(declare-fun b!3039424 () Bool)

(declare-fun res!1250180 () Bool)

(declare-fun e!1905545 () Bool)

(assert (=> b!3039424 (=> res!1250180 e!1905545)))

(assert (=> b!3039424 (= res!1250180 (not ((_ is Concat!14770) r!17423)))))

(assert (=> b!3039424 (= e!1905548 e!1905545)))

(declare-fun b!3039425 () Bool)

(declare-fun e!1905544 () Bool)

(assert (=> b!3039425 (= e!1905544 call!207759)))

(declare-fun b!3039426 () Bool)

(assert (=> b!3039426 (= e!1905546 e!1905550)))

(declare-fun res!1250179 () Bool)

(assert (=> b!3039426 (= res!1250179 (not (nullable!3097 (reg!9778 r!17423))))))

(assert (=> b!3039426 (=> (not res!1250179) (not e!1905550))))

(declare-fun b!3039427 () Bool)

(assert (=> b!3039427 (= e!1905545 e!1905547)))

(declare-fun res!1250177 () Bool)

(assert (=> b!3039427 (=> (not res!1250177) (not e!1905547))))

(assert (=> b!3039427 (= res!1250177 call!207759)))

(declare-fun b!3039428 () Bool)

(declare-fun res!1250178 () Bool)

(assert (=> b!3039428 (=> (not res!1250178) (not e!1905544))))

(assert (=> b!3039428 (= res!1250178 call!207761)))

(assert (=> b!3039428 (= e!1905548 e!1905544)))

(declare-fun bm!207756 () Bool)

(assert (=> bm!207756 (= call!207760 (validRegex!4182 (ite c!502725 (reg!9778 r!17423) (ite c!502726 (regOne!19411 r!17423) (regTwo!19410 r!17423)))))))

(assert (= (and d!852144 (not res!1250176)) b!3039420))

(assert (= (and b!3039420 c!502725) b!3039426))

(assert (= (and b!3039420 (not c!502725)) b!3039422))

(assert (= (and b!3039426 res!1250179) b!3039423))

(assert (= (and b!3039422 c!502726) b!3039428))

(assert (= (and b!3039422 (not c!502726)) b!3039424))

(assert (= (and b!3039428 res!1250178) b!3039425))

(assert (= (and b!3039424 (not res!1250180)) b!3039427))

(assert (= (and b!3039427 res!1250177) b!3039421))

(assert (= (or b!3039428 b!3039421) bm!207755))

(assert (= (or b!3039425 b!3039427) bm!207754))

(assert (= (or b!3039423 bm!207755) bm!207756))

(declare-fun m!3371429 () Bool)

(assert (=> bm!207754 m!3371429))

(assert (=> b!3039426 m!3371421))

(declare-fun m!3371431 () Bool)

(assert (=> bm!207756 m!3371431))

(assert (=> start!291228 d!852144))

(declare-fun b!3039429 () Bool)

(declare-fun e!1905556 () Bool)

(declare-fun lt!1047148 () Bool)

(declare-fun call!207762 () Bool)

(assert (=> b!3039429 (= e!1905556 (= lt!1047148 call!207762))))

(declare-fun b!3039430 () Bool)

(declare-fun e!1905551 () Bool)

(declare-fun e!1905552 () Bool)

(assert (=> b!3039430 (= e!1905551 e!1905552)))

(declare-fun res!1250183 () Bool)

(assert (=> b!3039430 (=> (not res!1250183) (not e!1905552))))

(assert (=> b!3039430 (= res!1250183 (not lt!1047148))))

(declare-fun b!3039431 () Bool)

(declare-fun e!1905553 () Bool)

(assert (=> b!3039431 (= e!1905553 (matchR!4331 (derivativeStep!2694 lt!1047099 (head!6753 (_2!20194 lt!1047096))) (tail!4979 (_2!20194 lt!1047096))))))

(declare-fun b!3039432 () Bool)

(declare-fun res!1250182 () Bool)

(declare-fun e!1905555 () Bool)

(assert (=> b!3039432 (=> (not res!1250182) (not e!1905555))))

(assert (=> b!3039432 (= res!1250182 (isEmpty!19493 (tail!4979 (_2!20194 lt!1047096))))))

(declare-fun d!852146 () Bool)

(assert (=> d!852146 e!1905556))

(declare-fun c!502728 () Bool)

(assert (=> d!852146 (= c!502728 ((_ is EmptyExpr!9449) lt!1047099))))

(assert (=> d!852146 (= lt!1047148 e!1905553)))

(declare-fun c!502729 () Bool)

(assert (=> d!852146 (= c!502729 (isEmpty!19493 (_2!20194 lt!1047096)))))

(assert (=> d!852146 (validRegex!4182 lt!1047099)))

(assert (=> d!852146 (= (matchR!4331 lt!1047099 (_2!20194 lt!1047096)) lt!1047148)))

(declare-fun b!3039433 () Bool)

(declare-fun e!1905554 () Bool)

(assert (=> b!3039433 (= e!1905556 e!1905554)))

(declare-fun c!502727 () Bool)

(assert (=> b!3039433 (= c!502727 ((_ is EmptyLang!9449) lt!1047099))))

(declare-fun b!3039434 () Bool)

(assert (=> b!3039434 (= e!1905555 (= (head!6753 (_2!20194 lt!1047096)) (c!502647 lt!1047099)))))

(declare-fun b!3039435 () Bool)

(assert (=> b!3039435 (= e!1905553 (nullable!3097 lt!1047099))))

(declare-fun b!3039436 () Bool)

(declare-fun e!1905557 () Bool)

(assert (=> b!3039436 (= e!1905557 (not (= (head!6753 (_2!20194 lt!1047096)) (c!502647 lt!1047099))))))

(declare-fun b!3039437 () Bool)

(assert (=> b!3039437 (= e!1905554 (not lt!1047148))))

(declare-fun b!3039438 () Bool)

(assert (=> b!3039438 (= e!1905552 e!1905557)))

(declare-fun res!1250186 () Bool)

(assert (=> b!3039438 (=> res!1250186 e!1905557)))

(assert (=> b!3039438 (= res!1250186 call!207762)))

(declare-fun b!3039439 () Bool)

(declare-fun res!1250181 () Bool)

(assert (=> b!3039439 (=> res!1250181 e!1905557)))

(assert (=> b!3039439 (= res!1250181 (not (isEmpty!19493 (tail!4979 (_2!20194 lt!1047096)))))))

(declare-fun bm!207757 () Bool)

(assert (=> bm!207757 (= call!207762 (isEmpty!19493 (_2!20194 lt!1047096)))))

(declare-fun b!3039440 () Bool)

(declare-fun res!1250184 () Bool)

(assert (=> b!3039440 (=> (not res!1250184) (not e!1905555))))

(assert (=> b!3039440 (= res!1250184 (not call!207762))))

(declare-fun b!3039441 () Bool)

(declare-fun res!1250185 () Bool)

(assert (=> b!3039441 (=> res!1250185 e!1905551)))

(assert (=> b!3039441 (= res!1250185 e!1905555)))

(declare-fun res!1250188 () Bool)

(assert (=> b!3039441 (=> (not res!1250188) (not e!1905555))))

(assert (=> b!3039441 (= res!1250188 lt!1047148)))

(declare-fun b!3039442 () Bool)

(declare-fun res!1250187 () Bool)

(assert (=> b!3039442 (=> res!1250187 e!1905551)))

(assert (=> b!3039442 (= res!1250187 (not ((_ is ElementMatch!9449) lt!1047099)))))

(assert (=> b!3039442 (= e!1905554 e!1905551)))

(assert (= (and d!852146 c!502729) b!3039435))

(assert (= (and d!852146 (not c!502729)) b!3039431))

(assert (= (and d!852146 c!502728) b!3039429))

(assert (= (and d!852146 (not c!502728)) b!3039433))

(assert (= (and b!3039433 c!502727) b!3039437))

(assert (= (and b!3039433 (not c!502727)) b!3039442))

(assert (= (and b!3039442 (not res!1250187)) b!3039441))

(assert (= (and b!3039441 res!1250188) b!3039440))

(assert (= (and b!3039440 res!1250184) b!3039432))

(assert (= (and b!3039432 res!1250182) b!3039434))

(assert (= (and b!3039441 (not res!1250185)) b!3039430))

(assert (= (and b!3039430 res!1250183) b!3039438))

(assert (= (and b!3039438 (not res!1250186)) b!3039439))

(assert (= (and b!3039439 (not res!1250181)) b!3039436))

(assert (= (or b!3039429 b!3039438 b!3039440) bm!207757))

(declare-fun m!3371433 () Bool)

(assert (=> b!3039431 m!3371433))

(assert (=> b!3039431 m!3371433))

(declare-fun m!3371435 () Bool)

(assert (=> b!3039431 m!3371435))

(declare-fun m!3371437 () Bool)

(assert (=> b!3039431 m!3371437))

(assert (=> b!3039431 m!3371435))

(assert (=> b!3039431 m!3371437))

(declare-fun m!3371439 () Bool)

(assert (=> b!3039431 m!3371439))

(assert (=> b!3039432 m!3371437))

(assert (=> b!3039432 m!3371437))

(declare-fun m!3371441 () Bool)

(assert (=> b!3039432 m!3371441))

(declare-fun m!3371443 () Bool)

(assert (=> d!852146 m!3371443))

(declare-fun m!3371445 () Bool)

(assert (=> d!852146 m!3371445))

(assert (=> b!3039439 m!3371437))

(assert (=> b!3039439 m!3371437))

(assert (=> b!3039439 m!3371441))

(assert (=> b!3039434 m!3371433))

(declare-fun m!3371447 () Bool)

(assert (=> b!3039435 m!3371447))

(assert (=> bm!207757 m!3371443))

(assert (=> b!3039436 m!3371433))

(assert (=> b!3039016 d!852146))

(declare-fun b!3039456 () Bool)

(declare-fun e!1905560 () Bool)

(declare-fun tp!962322 () Bool)

(declare-fun tp!962321 () Bool)

(assert (=> b!3039456 (= e!1905560 (and tp!962322 tp!962321))))

(declare-fun b!3039455 () Bool)

(declare-fun tp!962320 () Bool)

(assert (=> b!3039455 (= e!1905560 tp!962320)))

(declare-fun b!3039454 () Bool)

(declare-fun tp!962319 () Bool)

(declare-fun tp!962318 () Bool)

(assert (=> b!3039454 (= e!1905560 (and tp!962319 tp!962318))))

(declare-fun b!3039453 () Bool)

(assert (=> b!3039453 (= e!1905560 tp_is_empty!16461)))

(assert (=> b!3039018 (= tp!962268 e!1905560)))

(assert (= (and b!3039018 ((_ is ElementMatch!9449) (regOne!19411 r!17423))) b!3039453))

(assert (= (and b!3039018 ((_ is Concat!14770) (regOne!19411 r!17423))) b!3039454))

(assert (= (and b!3039018 ((_ is Star!9449) (regOne!19411 r!17423))) b!3039455))

(assert (= (and b!3039018 ((_ is Union!9449) (regOne!19411 r!17423))) b!3039456))

(declare-fun b!3039460 () Bool)

(declare-fun e!1905561 () Bool)

(declare-fun tp!962327 () Bool)

(declare-fun tp!962326 () Bool)

(assert (=> b!3039460 (= e!1905561 (and tp!962327 tp!962326))))

(declare-fun b!3039459 () Bool)

(declare-fun tp!962325 () Bool)

(assert (=> b!3039459 (= e!1905561 tp!962325)))

(declare-fun b!3039458 () Bool)

(declare-fun tp!962324 () Bool)

(declare-fun tp!962323 () Bool)

(assert (=> b!3039458 (= e!1905561 (and tp!962324 tp!962323))))

(declare-fun b!3039457 () Bool)

(assert (=> b!3039457 (= e!1905561 tp_is_empty!16461)))

(assert (=> b!3039018 (= tp!962264 e!1905561)))

(assert (= (and b!3039018 ((_ is ElementMatch!9449) (regTwo!19411 r!17423))) b!3039457))

(assert (= (and b!3039018 ((_ is Concat!14770) (regTwo!19411 r!17423))) b!3039458))

(assert (= (and b!3039018 ((_ is Star!9449) (regTwo!19411 r!17423))) b!3039459))

(assert (= (and b!3039018 ((_ is Union!9449) (regTwo!19411 r!17423))) b!3039460))

(declare-fun b!3039464 () Bool)

(declare-fun e!1905562 () Bool)

(declare-fun tp!962332 () Bool)

(declare-fun tp!962331 () Bool)

(assert (=> b!3039464 (= e!1905562 (and tp!962332 tp!962331))))

(declare-fun b!3039463 () Bool)

(declare-fun tp!962330 () Bool)

(assert (=> b!3039463 (= e!1905562 tp!962330)))

(declare-fun b!3039462 () Bool)

(declare-fun tp!962329 () Bool)

(declare-fun tp!962328 () Bool)

(assert (=> b!3039462 (= e!1905562 (and tp!962329 tp!962328))))

(declare-fun b!3039461 () Bool)

(assert (=> b!3039461 (= e!1905562 tp_is_empty!16461)))

(assert (=> b!3039019 (= tp!962267 e!1905562)))

(assert (= (and b!3039019 ((_ is ElementMatch!9449) (regOne!19410 r!17423))) b!3039461))

(assert (= (and b!3039019 ((_ is Concat!14770) (regOne!19410 r!17423))) b!3039462))

(assert (= (and b!3039019 ((_ is Star!9449) (regOne!19410 r!17423))) b!3039463))

(assert (= (and b!3039019 ((_ is Union!9449) (regOne!19410 r!17423))) b!3039464))

(declare-fun b!3039468 () Bool)

(declare-fun e!1905563 () Bool)

(declare-fun tp!962337 () Bool)

(declare-fun tp!962336 () Bool)

(assert (=> b!3039468 (= e!1905563 (and tp!962337 tp!962336))))

(declare-fun b!3039467 () Bool)

(declare-fun tp!962335 () Bool)

(assert (=> b!3039467 (= e!1905563 tp!962335)))

(declare-fun b!3039466 () Bool)

(declare-fun tp!962334 () Bool)

(declare-fun tp!962333 () Bool)

(assert (=> b!3039466 (= e!1905563 (and tp!962334 tp!962333))))

(declare-fun b!3039465 () Bool)

(assert (=> b!3039465 (= e!1905563 tp_is_empty!16461)))

(assert (=> b!3039019 (= tp!962266 e!1905563)))

(assert (= (and b!3039019 ((_ is ElementMatch!9449) (regTwo!19410 r!17423))) b!3039465))

(assert (= (and b!3039019 ((_ is Concat!14770) (regTwo!19410 r!17423))) b!3039466))

(assert (= (and b!3039019 ((_ is Star!9449) (regTwo!19410 r!17423))) b!3039467))

(assert (= (and b!3039019 ((_ is Union!9449) (regTwo!19410 r!17423))) b!3039468))

(declare-fun b!3039472 () Bool)

(declare-fun e!1905564 () Bool)

(declare-fun tp!962342 () Bool)

(declare-fun tp!962341 () Bool)

(assert (=> b!3039472 (= e!1905564 (and tp!962342 tp!962341))))

(declare-fun b!3039471 () Bool)

(declare-fun tp!962340 () Bool)

(assert (=> b!3039471 (= e!1905564 tp!962340)))

(declare-fun b!3039470 () Bool)

(declare-fun tp!962339 () Bool)

(declare-fun tp!962338 () Bool)

(assert (=> b!3039470 (= e!1905564 (and tp!962339 tp!962338))))

(declare-fun b!3039469 () Bool)

(assert (=> b!3039469 (= e!1905564 tp_is_empty!16461)))

(assert (=> b!3039021 (= tp!962265 e!1905564)))

(assert (= (and b!3039021 ((_ is ElementMatch!9449) (reg!9778 r!17423))) b!3039469))

(assert (= (and b!3039021 ((_ is Concat!14770) (reg!9778 r!17423))) b!3039470))

(assert (= (and b!3039021 ((_ is Star!9449) (reg!9778 r!17423))) b!3039471))

(assert (= (and b!3039021 ((_ is Union!9449) (reg!9778 r!17423))) b!3039472))

(declare-fun b!3039477 () Bool)

(declare-fun e!1905567 () Bool)

(declare-fun tp!962345 () Bool)

(assert (=> b!3039477 (= e!1905567 (and tp_is_empty!16461 tp!962345))))

(assert (=> b!3039017 (= tp!962269 e!1905567)))

(assert (= (and b!3039017 ((_ is Cons!35190) (t!234379 s!11993))) b!3039477))

(check-sat (not b!3039203) (not b!3039471) (not d!852132) (not b!3039456) (not d!852134) (not b!3039459) (not b!3039436) (not b!3039382) (not d!852110) (not bm!207732) (not b!3039470) (not bm!207729) (not b!3039431) (not d!852106) (not b!3039385) (not b!3039462) (not b!3039384) (not b!3039455) tp_is_empty!16461 (not b!3039373) (not d!852146) (not b!3039381) (not d!852138) (not b!3039207) (not b!3039202) (not b!3039426) (not b!3039375) (not b!3039467) (not b!3039389) (not b!3039386) (not b!3039417) (not b!3039463) (not b!3039376) (not bm!207754) (not b!3039477) (not b!3039466) (not bm!207728) (not b!3039205) (not d!852122) (not d!852130) (not bm!207751) (not b!3039432) (not b!3039371) (not b!3039454) (not b!3039435) (not bm!207753) (not b!3039460) (not b!3039458) (not b!3039472) (not d!852136) (not b!3039468) (not d!852128) (not b!3039374) (not b!3039377) (not b!3039133) (not bm!207757) (not bm!207756) (not b!3039434) (not b!3039210) (not b!3039439) (not b!3039134) (not b!3039464) (not b!3039206) (not bm!207744))
(check-sat)
