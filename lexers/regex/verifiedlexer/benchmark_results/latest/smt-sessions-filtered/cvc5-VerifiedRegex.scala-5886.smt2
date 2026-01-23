; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288354 () Bool)

(assert start!288354)

(declare-fun b!2984952 () Bool)

(declare-fun e!1876980 () Bool)

(declare-fun tp_is_empty!16207 () Bool)

(declare-fun tp!949729 () Bool)

(assert (=> b!2984952 (= e!1876980 (and tp_is_empty!16207 tp!949729))))

(declare-fun b!2984953 () Bool)

(declare-fun e!1876978 () Bool)

(declare-datatypes ((C!18830 0))(
  ( (C!18831 (val!11451 Int)) )
))
(declare-datatypes ((Regex!9322 0))(
  ( (ElementMatch!9322 (c!490448 C!18830)) (Concat!14643 (regOne!19156 Regex!9322) (regTwo!19156 Regex!9322)) (EmptyExpr!9322) (Star!9322 (reg!9651 Regex!9322)) (EmptyLang!9322) (Union!9322 (regOne!19157 Regex!9322) (regTwo!19157 Regex!9322)) )
))
(declare-fun r!17423 () Regex!9322)

(declare-fun validRegex!4055 (Regex!9322) Bool)

(declare-fun simplify!323 (Regex!9322) Regex!9322)

(assert (=> b!2984953 (= e!1876978 (validRegex!4055 (simplify!323 r!17423)))))

(declare-fun b!2984954 () Bool)

(declare-fun e!1876979 () Bool)

(declare-fun tp!949727 () Bool)

(declare-fun tp!949730 () Bool)

(assert (=> b!2984954 (= e!1876979 (and tp!949727 tp!949730))))

(declare-fun b!2984955 () Bool)

(declare-fun e!1876981 () Bool)

(assert (=> b!2984955 (= e!1876981 (not e!1876978))))

(declare-fun res!1230999 () Bool)

(assert (=> b!2984955 (=> res!1230999 e!1876978)))

(declare-fun lt!1039200 () Bool)

(assert (=> b!2984955 (= res!1230999 (or lt!1039200 (is-Concat!14643 r!17423) (is-Union!9322 r!17423) (is-Star!9322 r!17423)))))

(declare-datatypes ((List!35187 0))(
  ( (Nil!35063) (Cons!35063 (h!40483 C!18830) (t!234252 List!35187)) )
))
(declare-fun s!11993 () List!35187)

(declare-fun matchRSpec!1459 (Regex!9322 List!35187) Bool)

(assert (=> b!2984955 (= lt!1039200 (matchRSpec!1459 r!17423 s!11993))))

(declare-fun matchR!4204 (Regex!9322 List!35187) Bool)

(assert (=> b!2984955 (= lt!1039200 (matchR!4204 r!17423 s!11993))))

(declare-datatypes ((Unit!49047 0))(
  ( (Unit!49048) )
))
(declare-fun lt!1039199 () Unit!49047)

(declare-fun mainMatchTheorem!1459 (Regex!9322 List!35187) Unit!49047)

(assert (=> b!2984955 (= lt!1039199 (mainMatchTheorem!1459 r!17423 s!11993))))

(declare-fun b!2984956 () Bool)

(declare-fun tp!949728 () Bool)

(assert (=> b!2984956 (= e!1876979 tp!949728)))

(declare-fun b!2984957 () Bool)

(declare-fun tp!949731 () Bool)

(declare-fun tp!949726 () Bool)

(assert (=> b!2984957 (= e!1876979 (and tp!949731 tp!949726))))

(declare-fun res!1231000 () Bool)

(assert (=> start!288354 (=> (not res!1231000) (not e!1876981))))

(assert (=> start!288354 (= res!1231000 (validRegex!4055 r!17423))))

(assert (=> start!288354 e!1876981))

(assert (=> start!288354 e!1876979))

(assert (=> start!288354 e!1876980))

(declare-fun b!2984958 () Bool)

(assert (=> b!2984958 (= e!1876979 tp_is_empty!16207)))

(assert (= (and start!288354 res!1231000) b!2984955))

(assert (= (and b!2984955 (not res!1230999)) b!2984953))

(assert (= (and start!288354 (is-ElementMatch!9322 r!17423)) b!2984958))

(assert (= (and start!288354 (is-Concat!14643 r!17423)) b!2984954))

(assert (= (and start!288354 (is-Star!9322 r!17423)) b!2984956))

(assert (= (and start!288354 (is-Union!9322 r!17423)) b!2984957))

(assert (= (and start!288354 (is-Cons!35063 s!11993)) b!2984952))

(declare-fun m!3344369 () Bool)

(assert (=> b!2984953 m!3344369))

(assert (=> b!2984953 m!3344369))

(declare-fun m!3344371 () Bool)

(assert (=> b!2984953 m!3344371))

(declare-fun m!3344373 () Bool)

(assert (=> b!2984955 m!3344373))

(declare-fun m!3344375 () Bool)

(assert (=> b!2984955 m!3344375))

(declare-fun m!3344377 () Bool)

(assert (=> b!2984955 m!3344377))

(declare-fun m!3344379 () Bool)

(assert (=> start!288354 m!3344379))

(push 1)

(assert (not b!2984957))

(assert (not b!2984955))

(assert (not b!2984953))

(assert (not start!288354))

(assert (not b!2984954))

(assert (not b!2984956))

(assert (not b!2984952))

(assert tp_is_empty!16207)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2985154 () Bool)

(assert (=> b!2985154 true))

(assert (=> b!2985154 true))

(declare-fun bs!527364 () Bool)

(declare-fun b!2985152 () Bool)

(assert (= bs!527364 (and b!2985152 b!2985154)))

(declare-fun lambda!111400 () Int)

(declare-fun lambda!111399 () Int)

(assert (=> bs!527364 (not (= lambda!111400 lambda!111399))))

(assert (=> b!2985152 true))

(assert (=> b!2985152 true))

(declare-fun d!843985 () Bool)

(declare-fun c!490509 () Bool)

(assert (=> d!843985 (= c!490509 (is-EmptyExpr!9322 r!17423))))

(declare-fun e!1877099 () Bool)

(assert (=> d!843985 (= (matchRSpec!1459 r!17423 s!11993) e!1877099)))

(declare-fun b!2985145 () Bool)

(declare-fun e!1877097 () Bool)

(assert (=> b!2985145 (= e!1877097 (matchRSpec!1459 (regTwo!19157 r!17423) s!11993))))

(declare-fun b!2985146 () Bool)

(declare-fun e!1877102 () Bool)

(assert (=> b!2985146 (= e!1877102 (= s!11993 (Cons!35063 (c!490448 r!17423) Nil!35063)))))

(declare-fun b!2985147 () Bool)

(declare-fun c!490510 () Bool)

(assert (=> b!2985147 (= c!490510 (is-Union!9322 r!17423))))

(declare-fun e!1877101 () Bool)

(assert (=> b!2985147 (= e!1877102 e!1877101)))

(declare-fun b!2985148 () Bool)

(assert (=> b!2985148 (= e!1877101 e!1877097)))

(declare-fun res!1231058 () Bool)

(assert (=> b!2985148 (= res!1231058 (matchRSpec!1459 (regOne!19157 r!17423) s!11993))))

(assert (=> b!2985148 (=> res!1231058 e!1877097)))

(declare-fun b!2985149 () Bool)

(declare-fun c!490508 () Bool)

(assert (=> b!2985149 (= c!490508 (is-ElementMatch!9322 r!17423))))

(declare-fun e!1877096 () Bool)

(assert (=> b!2985149 (= e!1877096 e!1877102)))

(declare-fun b!2985150 () Bool)

(declare-fun res!1231060 () Bool)

(declare-fun e!1877098 () Bool)

(assert (=> b!2985150 (=> res!1231060 e!1877098)))

(declare-fun call!199547 () Bool)

(assert (=> b!2985150 (= res!1231060 call!199547)))

(declare-fun e!1877100 () Bool)

(assert (=> b!2985150 (= e!1877100 e!1877098)))

(declare-fun b!2985151 () Bool)

(assert (=> b!2985151 (= e!1877099 e!1877096)))

(declare-fun res!1231059 () Bool)

(assert (=> b!2985151 (= res!1231059 (not (is-EmptyLang!9322 r!17423)))))

(assert (=> b!2985151 (=> (not res!1231059) (not e!1877096))))

(declare-fun call!199546 () Bool)

(assert (=> b!2985152 (= e!1877100 call!199546)))

(declare-fun bm!199541 () Bool)

(declare-fun isEmpty!19324 (List!35187) Bool)

(assert (=> bm!199541 (= call!199547 (isEmpty!19324 s!11993))))

(declare-fun b!2985153 () Bool)

(assert (=> b!2985153 (= e!1877101 e!1877100)))

(declare-fun c!490507 () Bool)

(assert (=> b!2985153 (= c!490507 (is-Star!9322 r!17423))))

(assert (=> b!2985154 (= e!1877098 call!199546)))

(declare-fun b!2985155 () Bool)

(assert (=> b!2985155 (= e!1877099 call!199547)))

(declare-fun bm!199542 () Bool)

(declare-fun Exists!1600 (Int) Bool)

(assert (=> bm!199542 (= call!199546 (Exists!1600 (ite c!490507 lambda!111399 lambda!111400)))))

(assert (= (and d!843985 c!490509) b!2985155))

(assert (= (and d!843985 (not c!490509)) b!2985151))

(assert (= (and b!2985151 res!1231059) b!2985149))

(assert (= (and b!2985149 c!490508) b!2985146))

(assert (= (and b!2985149 (not c!490508)) b!2985147))

(assert (= (and b!2985147 c!490510) b!2985148))

(assert (= (and b!2985147 (not c!490510)) b!2985153))

(assert (= (and b!2985148 (not res!1231058)) b!2985145))

(assert (= (and b!2985153 c!490507) b!2985150))

(assert (= (and b!2985153 (not c!490507)) b!2985152))

(assert (= (and b!2985150 (not res!1231060)) b!2985154))

(assert (= (or b!2985154 b!2985152) bm!199542))

(assert (= (or b!2985155 b!2985150) bm!199541))

(declare-fun m!3344423 () Bool)

(assert (=> b!2985145 m!3344423))

(declare-fun m!3344425 () Bool)

(assert (=> b!2985148 m!3344425))

(declare-fun m!3344427 () Bool)

(assert (=> bm!199541 m!3344427))

(declare-fun m!3344429 () Bool)

(assert (=> bm!199542 m!3344429))

(assert (=> b!2984955 d!843985))

(declare-fun b!2985188 () Bool)

(declare-fun res!1231082 () Bool)

(declare-fun e!1877122 () Bool)

(assert (=> b!2985188 (=> res!1231082 e!1877122)))

(declare-fun e!1877121 () Bool)

(assert (=> b!2985188 (= res!1231082 e!1877121)))

(declare-fun res!1231081 () Bool)

(assert (=> b!2985188 (=> (not res!1231081) (not e!1877121))))

(declare-fun lt!1039227 () Bool)

(assert (=> b!2985188 (= res!1231081 lt!1039227)))

(declare-fun b!2985189 () Bool)

(declare-fun res!1231078 () Bool)

(assert (=> b!2985189 (=> (not res!1231078) (not e!1877121))))

(declare-fun call!199550 () Bool)

(assert (=> b!2985189 (= res!1231078 (not call!199550))))

(declare-fun b!2985190 () Bool)

(declare-fun res!1231080 () Bool)

(assert (=> b!2985190 (=> res!1231080 e!1877122)))

(assert (=> b!2985190 (= res!1231080 (not (is-ElementMatch!9322 r!17423)))))

(declare-fun e!1877117 () Bool)

(assert (=> b!2985190 (= e!1877117 e!1877122)))

(declare-fun b!2985191 () Bool)

(declare-fun e!1877119 () Bool)

(declare-fun nullable!2999 (Regex!9322) Bool)

(assert (=> b!2985191 (= e!1877119 (nullable!2999 r!17423))))

(declare-fun b!2985192 () Bool)

(declare-fun e!1877118 () Bool)

(declare-fun e!1877123 () Bool)

(assert (=> b!2985192 (= e!1877118 e!1877123)))

(declare-fun res!1231084 () Bool)

(assert (=> b!2985192 (=> res!1231084 e!1877123)))

(assert (=> b!2985192 (= res!1231084 call!199550)))

(declare-fun d!843995 () Bool)

(declare-fun e!1877120 () Bool)

(assert (=> d!843995 e!1877120))

(declare-fun c!490519 () Bool)

(assert (=> d!843995 (= c!490519 (is-EmptyExpr!9322 r!17423))))

(assert (=> d!843995 (= lt!1039227 e!1877119)))

(declare-fun c!490517 () Bool)

(assert (=> d!843995 (= c!490517 (isEmpty!19324 s!11993))))

(assert (=> d!843995 (validRegex!4055 r!17423)))

(assert (=> d!843995 (= (matchR!4204 r!17423 s!11993) lt!1039227)))

(declare-fun b!2985193 () Bool)

(assert (=> b!2985193 (= e!1877120 (= lt!1039227 call!199550))))

(declare-fun b!2985194 () Bool)

(assert (=> b!2985194 (= e!1877117 (not lt!1039227))))

(declare-fun b!2985195 () Bool)

(declare-fun head!6658 (List!35187) C!18830)

(assert (=> b!2985195 (= e!1877123 (not (= (head!6658 s!11993) (c!490448 r!17423))))))

(declare-fun bm!199545 () Bool)

(assert (=> bm!199545 (= call!199550 (isEmpty!19324 s!11993))))

(declare-fun b!2985196 () Bool)

(assert (=> b!2985196 (= e!1877120 e!1877117)))

(declare-fun c!490518 () Bool)

(assert (=> b!2985196 (= c!490518 (is-EmptyLang!9322 r!17423))))

(declare-fun b!2985197 () Bool)

(assert (=> b!2985197 (= e!1877121 (= (head!6658 s!11993) (c!490448 r!17423)))))

(declare-fun b!2985198 () Bool)

(declare-fun derivativeStep!2599 (Regex!9322 C!18830) Regex!9322)

(declare-fun tail!4884 (List!35187) List!35187)

(assert (=> b!2985198 (= e!1877119 (matchR!4204 (derivativeStep!2599 r!17423 (head!6658 s!11993)) (tail!4884 s!11993)))))

(declare-fun b!2985199 () Bool)

(declare-fun res!1231083 () Bool)

(assert (=> b!2985199 (=> res!1231083 e!1877123)))

(assert (=> b!2985199 (= res!1231083 (not (isEmpty!19324 (tail!4884 s!11993))))))

(declare-fun b!2985200 () Bool)

(declare-fun res!1231079 () Bool)

(assert (=> b!2985200 (=> (not res!1231079) (not e!1877121))))

(assert (=> b!2985200 (= res!1231079 (isEmpty!19324 (tail!4884 s!11993)))))

(declare-fun b!2985201 () Bool)

(assert (=> b!2985201 (= e!1877122 e!1877118)))

(declare-fun res!1231077 () Bool)

(assert (=> b!2985201 (=> (not res!1231077) (not e!1877118))))

(assert (=> b!2985201 (= res!1231077 (not lt!1039227))))

(assert (= (and d!843995 c!490517) b!2985191))

(assert (= (and d!843995 (not c!490517)) b!2985198))

(assert (= (and d!843995 c!490519) b!2985193))

(assert (= (and d!843995 (not c!490519)) b!2985196))

(assert (= (and b!2985196 c!490518) b!2985194))

(assert (= (and b!2985196 (not c!490518)) b!2985190))

(assert (= (and b!2985190 (not res!1231080)) b!2985188))

(assert (= (and b!2985188 res!1231081) b!2985189))

(assert (= (and b!2985189 res!1231078) b!2985200))

(assert (= (and b!2985200 res!1231079) b!2985197))

(assert (= (and b!2985188 (not res!1231082)) b!2985201))

(assert (= (and b!2985201 res!1231077) b!2985192))

(assert (= (and b!2985192 (not res!1231084)) b!2985199))

(assert (= (and b!2985199 (not res!1231083)) b!2985195))

(assert (= (or b!2985193 b!2985189 b!2985192) bm!199545))

(declare-fun m!3344431 () Bool)

(assert (=> b!2985191 m!3344431))

(declare-fun m!3344433 () Bool)

(assert (=> b!2985195 m!3344433))

(declare-fun m!3344435 () Bool)

(assert (=> b!2985200 m!3344435))

(assert (=> b!2985200 m!3344435))

(declare-fun m!3344437 () Bool)

(assert (=> b!2985200 m!3344437))

(assert (=> b!2985197 m!3344433))

(assert (=> d!843995 m!3344427))

(assert (=> d!843995 m!3344379))

(assert (=> b!2985198 m!3344433))

(assert (=> b!2985198 m!3344433))

(declare-fun m!3344439 () Bool)

(assert (=> b!2985198 m!3344439))

(assert (=> b!2985198 m!3344435))

(assert (=> b!2985198 m!3344439))

(assert (=> b!2985198 m!3344435))

(declare-fun m!3344441 () Bool)

(assert (=> b!2985198 m!3344441))

(assert (=> bm!199545 m!3344427))

(assert (=> b!2985199 m!3344435))

(assert (=> b!2985199 m!3344435))

(assert (=> b!2985199 m!3344437))

(assert (=> b!2984955 d!843995))

(declare-fun d!843997 () Bool)

(assert (=> d!843997 (= (matchR!4204 r!17423 s!11993) (matchRSpec!1459 r!17423 s!11993))))

(declare-fun lt!1039230 () Unit!49047)

(declare-fun choose!17689 (Regex!9322 List!35187) Unit!49047)

(assert (=> d!843997 (= lt!1039230 (choose!17689 r!17423 s!11993))))

(assert (=> d!843997 (validRegex!4055 r!17423)))

(assert (=> d!843997 (= (mainMatchTheorem!1459 r!17423 s!11993) lt!1039230)))

(declare-fun bs!527365 () Bool)

(assert (= bs!527365 d!843997))

(assert (=> bs!527365 m!3344375))

(assert (=> bs!527365 m!3344373))

(declare-fun m!3344443 () Bool)

(assert (=> bs!527365 m!3344443))

(assert (=> bs!527365 m!3344379))

(assert (=> b!2984955 d!843997))

(declare-fun b!2985220 () Bool)

(declare-fun e!1877141 () Bool)

(declare-fun e!1877143 () Bool)

(assert (=> b!2985220 (= e!1877141 e!1877143)))

(declare-fun res!1231096 () Bool)

(assert (=> b!2985220 (=> (not res!1231096) (not e!1877143))))

(declare-fun call!199559 () Bool)

(assert (=> b!2985220 (= res!1231096 call!199559)))

(declare-fun b!2985221 () Bool)

(declare-fun call!199557 () Bool)

(assert (=> b!2985221 (= e!1877143 call!199557)))

(declare-fun bm!199552 () Bool)

(declare-fun c!490525 () Bool)

(assert (=> bm!199552 (= call!199559 (validRegex!4055 (ite c!490525 (regTwo!19157 r!17423) (regOne!19156 r!17423))))))

(declare-fun b!2985222 () Bool)

(declare-fun res!1231098 () Bool)

(assert (=> b!2985222 (=> res!1231098 e!1877141)))

(assert (=> b!2985222 (= res!1231098 (not (is-Concat!14643 r!17423)))))

(declare-fun e!1877139 () Bool)

(assert (=> b!2985222 (= e!1877139 e!1877141)))

(declare-fun call!199558 () Bool)

(declare-fun bm!199553 () Bool)

(declare-fun c!490524 () Bool)

(assert (=> bm!199553 (= call!199558 (validRegex!4055 (ite c!490524 (reg!9651 r!17423) (ite c!490525 (regOne!19157 r!17423) (regTwo!19156 r!17423)))))))

(declare-fun b!2985223 () Bool)

(declare-fun e!1877142 () Bool)

(assert (=> b!2985223 (= e!1877142 call!199558)))

(declare-fun bm!199554 () Bool)

(assert (=> bm!199554 (= call!199557 call!199558)))

(declare-fun b!2985224 () Bool)

(declare-fun e!1877138 () Bool)

(assert (=> b!2985224 (= e!1877138 e!1877142)))

(declare-fun res!1231099 () Bool)

(assert (=> b!2985224 (= res!1231099 (not (nullable!2999 (reg!9651 r!17423))))))

(assert (=> b!2985224 (=> (not res!1231099) (not e!1877142))))

(declare-fun b!2985226 () Bool)

(declare-fun e!1877144 () Bool)

(assert (=> b!2985226 (= e!1877144 call!199559)))

(declare-fun b!2985227 () Bool)

(declare-fun res!1231097 () Bool)

(assert (=> b!2985227 (=> (not res!1231097) (not e!1877144))))

(assert (=> b!2985227 (= res!1231097 call!199557)))

(assert (=> b!2985227 (= e!1877139 e!1877144)))

(declare-fun b!2985228 () Bool)

(assert (=> b!2985228 (= e!1877138 e!1877139)))

(assert (=> b!2985228 (= c!490525 (is-Union!9322 r!17423))))

(declare-fun d!843999 () Bool)

(declare-fun res!1231095 () Bool)

(declare-fun e!1877140 () Bool)

(assert (=> d!843999 (=> res!1231095 e!1877140)))

(assert (=> d!843999 (= res!1231095 (is-ElementMatch!9322 r!17423))))

(assert (=> d!843999 (= (validRegex!4055 r!17423) e!1877140)))

(declare-fun b!2985225 () Bool)

(assert (=> b!2985225 (= e!1877140 e!1877138)))

(assert (=> b!2985225 (= c!490524 (is-Star!9322 r!17423))))

(assert (= (and d!843999 (not res!1231095)) b!2985225))

(assert (= (and b!2985225 c!490524) b!2985224))

(assert (= (and b!2985225 (not c!490524)) b!2985228))

(assert (= (and b!2985224 res!1231099) b!2985223))

(assert (= (and b!2985228 c!490525) b!2985227))

(assert (= (and b!2985228 (not c!490525)) b!2985222))

(assert (= (and b!2985227 res!1231097) b!2985226))

(assert (= (and b!2985222 (not res!1231098)) b!2985220))

(assert (= (and b!2985220 res!1231096) b!2985221))

(assert (= (or b!2985227 b!2985221) bm!199554))

(assert (= (or b!2985226 b!2985220) bm!199552))

(assert (= (or b!2985223 bm!199554) bm!199553))

(declare-fun m!3344445 () Bool)

(assert (=> bm!199552 m!3344445))

(declare-fun m!3344447 () Bool)

(assert (=> bm!199553 m!3344447))

(declare-fun m!3344449 () Bool)

(assert (=> b!2985224 m!3344449))

(assert (=> start!288354 d!843999))

(declare-fun b!2985229 () Bool)

(declare-fun e!1877148 () Bool)

(declare-fun e!1877150 () Bool)

(assert (=> b!2985229 (= e!1877148 e!1877150)))

(declare-fun res!1231101 () Bool)

(assert (=> b!2985229 (=> (not res!1231101) (not e!1877150))))

(declare-fun call!199562 () Bool)

(assert (=> b!2985229 (= res!1231101 call!199562)))

(declare-fun b!2985230 () Bool)

(declare-fun call!199560 () Bool)

(assert (=> b!2985230 (= e!1877150 call!199560)))

(declare-fun bm!199555 () Bool)

(declare-fun c!490527 () Bool)

(assert (=> bm!199555 (= call!199562 (validRegex!4055 (ite c!490527 (regTwo!19157 (simplify!323 r!17423)) (regOne!19156 (simplify!323 r!17423)))))))

(declare-fun b!2985231 () Bool)

(declare-fun res!1231103 () Bool)

(assert (=> b!2985231 (=> res!1231103 e!1877148)))

(assert (=> b!2985231 (= res!1231103 (not (is-Concat!14643 (simplify!323 r!17423))))))

(declare-fun e!1877146 () Bool)

(assert (=> b!2985231 (= e!1877146 e!1877148)))

(declare-fun c!490526 () Bool)

(declare-fun call!199561 () Bool)

(declare-fun bm!199556 () Bool)

(assert (=> bm!199556 (= call!199561 (validRegex!4055 (ite c!490526 (reg!9651 (simplify!323 r!17423)) (ite c!490527 (regOne!19157 (simplify!323 r!17423)) (regTwo!19156 (simplify!323 r!17423))))))))

(declare-fun b!2985232 () Bool)

(declare-fun e!1877149 () Bool)

(assert (=> b!2985232 (= e!1877149 call!199561)))

(declare-fun bm!199557 () Bool)

(assert (=> bm!199557 (= call!199560 call!199561)))

(declare-fun b!2985233 () Bool)

(declare-fun e!1877145 () Bool)

(assert (=> b!2985233 (= e!1877145 e!1877149)))

(declare-fun res!1231104 () Bool)

(assert (=> b!2985233 (= res!1231104 (not (nullable!2999 (reg!9651 (simplify!323 r!17423)))))))

(assert (=> b!2985233 (=> (not res!1231104) (not e!1877149))))

(declare-fun b!2985235 () Bool)

(declare-fun e!1877151 () Bool)

(assert (=> b!2985235 (= e!1877151 call!199562)))

(declare-fun b!2985236 () Bool)

(declare-fun res!1231102 () Bool)

(assert (=> b!2985236 (=> (not res!1231102) (not e!1877151))))

(assert (=> b!2985236 (= res!1231102 call!199560)))

(assert (=> b!2985236 (= e!1877146 e!1877151)))

(declare-fun b!2985237 () Bool)

(assert (=> b!2985237 (= e!1877145 e!1877146)))

(assert (=> b!2985237 (= c!490527 (is-Union!9322 (simplify!323 r!17423)))))

(declare-fun d!844001 () Bool)

(declare-fun res!1231100 () Bool)

(declare-fun e!1877147 () Bool)

(assert (=> d!844001 (=> res!1231100 e!1877147)))

(assert (=> d!844001 (= res!1231100 (is-ElementMatch!9322 (simplify!323 r!17423)))))

(assert (=> d!844001 (= (validRegex!4055 (simplify!323 r!17423)) e!1877147)))

(declare-fun b!2985234 () Bool)

(assert (=> b!2985234 (= e!1877147 e!1877145)))

(assert (=> b!2985234 (= c!490526 (is-Star!9322 (simplify!323 r!17423)))))

(assert (= (and d!844001 (not res!1231100)) b!2985234))

(assert (= (and b!2985234 c!490526) b!2985233))

(assert (= (and b!2985234 (not c!490526)) b!2985237))

(assert (= (and b!2985233 res!1231104) b!2985232))

(assert (= (and b!2985237 c!490527) b!2985236))

(assert (= (and b!2985237 (not c!490527)) b!2985231))

(assert (= (and b!2985236 res!1231102) b!2985235))

(assert (= (and b!2985231 (not res!1231103)) b!2985229))

(assert (= (and b!2985229 res!1231101) b!2985230))

(assert (= (or b!2985236 b!2985230) bm!199557))

(assert (= (or b!2985235 b!2985229) bm!199555))

(assert (= (or b!2985232 bm!199557) bm!199556))

(declare-fun m!3344451 () Bool)

(assert (=> bm!199555 m!3344451))

(declare-fun m!3344453 () Bool)

(assert (=> bm!199556 m!3344453))

(declare-fun m!3344455 () Bool)

(assert (=> b!2985233 m!3344455))

(assert (=> b!2984953 d!844001))

(declare-fun b!2985288 () Bool)

(declare-fun e!1877192 () Regex!9322)

(assert (=> b!2985288 (= e!1877192 EmptyExpr!9322)))

(declare-fun b!2985289 () Bool)

(declare-fun e!1877183 () Bool)

(declare-fun call!199583 () Bool)

(assert (=> b!2985289 (= e!1877183 call!199583)))

(declare-fun b!2985290 () Bool)

(declare-fun c!490556 () Bool)

(assert (=> b!2985290 (= c!490556 (is-EmptyExpr!9322 r!17423))))

(declare-fun e!1877189 () Regex!9322)

(assert (=> b!2985290 (= e!1877189 e!1877192)))

(declare-fun b!2985291 () Bool)

(declare-fun c!490550 () Bool)

(declare-fun lt!1039243 () Regex!9322)

(declare-fun isEmptyExpr!453 (Regex!9322) Bool)

(assert (=> b!2985291 (= c!490550 (isEmptyExpr!453 lt!1039243))))

(declare-fun e!1877182 () Regex!9322)

(declare-fun e!1877184 () Regex!9322)

(assert (=> b!2985291 (= e!1877182 e!1877184)))

(declare-fun b!2985292 () Bool)

(declare-fun lt!1039244 () Regex!9322)

(assert (=> b!2985292 (= e!1877184 lt!1039244)))

(declare-fun b!2985293 () Bool)

(declare-fun c!490552 () Bool)

(assert (=> b!2985293 (= c!490552 e!1877183)))

(declare-fun res!1231112 () Bool)

(assert (=> b!2985293 (=> res!1231112 e!1877183)))

(declare-fun call!199582 () Bool)

(assert (=> b!2985293 (= res!1231112 call!199582)))

(declare-fun lt!1039246 () Regex!9322)

(declare-fun call!199581 () Regex!9322)

(assert (=> b!2985293 (= lt!1039246 call!199581)))

(declare-fun e!1877181 () Regex!9322)

(declare-fun e!1877190 () Regex!9322)

(assert (=> b!2985293 (= e!1877181 e!1877190)))

(declare-fun c!490555 () Bool)

(declare-fun bm!199572 () Bool)

(assert (=> bm!199572 (= call!199583 (isEmptyExpr!453 (ite c!490555 lt!1039246 lt!1039244)))))

(declare-fun c!490560 () Bool)

(declare-fun bm!199573 () Bool)

(assert (=> bm!199573 (= call!199581 (simplify!323 (ite c!490555 (reg!9651 r!17423) (ite c!490560 (regOne!19157 r!17423) (regOne!19156 r!17423)))))))

(declare-fun b!2985294 () Bool)

(declare-fun e!1877187 () Regex!9322)

(declare-fun lt!1039245 () Regex!9322)

(assert (=> b!2985294 (= e!1877187 lt!1039245)))

(declare-fun b!2985295 () Bool)

(declare-fun e!1877186 () Regex!9322)

(assert (=> b!2985295 (= e!1877184 e!1877186)))

(declare-fun c!490557 () Bool)

(assert (=> b!2985295 (= c!490557 call!199583)))

(declare-fun b!2985296 () Bool)

(declare-fun lt!1039247 () Regex!9322)

(assert (=> b!2985296 (= e!1877187 (Union!9322 lt!1039245 lt!1039247))))

(declare-fun b!2985297 () Bool)

(assert (=> b!2985297 (= e!1877190 EmptyExpr!9322)))

(declare-fun b!2985298 () Bool)

(assert (=> b!2985298 (= c!490560 (is-Union!9322 r!17423))))

(declare-fun e!1877191 () Regex!9322)

(assert (=> b!2985298 (= e!1877181 e!1877191)))

(declare-fun b!2985299 () Bool)

(declare-fun e!1877185 () Bool)

(declare-fun call!199578 () Bool)

(assert (=> b!2985299 (= e!1877185 call!199578)))

(declare-fun b!2985300 () Bool)

(declare-fun e!1877193 () Regex!9322)

(assert (=> b!2985300 (= e!1877191 e!1877193)))

(declare-fun call!199577 () Regex!9322)

(assert (=> b!2985300 (= lt!1039245 call!199577)))

(declare-fun call!199579 () Regex!9322)

(assert (=> b!2985300 (= lt!1039247 call!199579)))

(declare-fun c!490553 () Bool)

(assert (=> b!2985300 (= c!490553 call!199578)))

(declare-fun b!2985301 () Bool)

(assert (=> b!2985301 (= e!1877189 r!17423)))

(declare-fun b!2985302 () Bool)

(assert (=> b!2985302 (= e!1877192 e!1877181)))

(assert (=> b!2985302 (= c!490555 (is-Star!9322 r!17423))))

(declare-fun b!2985303 () Bool)

(assert (=> b!2985303 (= e!1877191 e!1877182)))

(assert (=> b!2985303 (= lt!1039243 call!199577)))

(assert (=> b!2985303 (= lt!1039244 call!199579)))

(declare-fun res!1231111 () Bool)

(declare-fun call!199580 () Bool)

(assert (=> b!2985303 (= res!1231111 call!199580)))

(assert (=> b!2985303 (=> res!1231111 e!1877185)))

(declare-fun c!490559 () Bool)

(assert (=> b!2985303 (= c!490559 e!1877185)))

(declare-fun bm!199574 () Bool)

(declare-fun isEmptyLang!436 (Regex!9322) Bool)

(assert (=> bm!199574 (= call!199578 (isEmptyLang!436 (ite c!490560 lt!1039245 lt!1039244)))))

(declare-fun b!2985304 () Bool)

(assert (=> b!2985304 (= e!1877190 (Star!9322 lt!1039246))))

(declare-fun bm!199575 () Bool)

(assert (=> bm!199575 (= call!199582 (isEmptyLang!436 (ite c!490555 lt!1039246 (ite c!490560 lt!1039247 lt!1039243))))))

(declare-fun b!2985305 () Bool)

(declare-fun e!1877188 () Bool)

(declare-fun lt!1039248 () Regex!9322)

(assert (=> b!2985305 (= e!1877188 (= (nullable!2999 lt!1039248) (nullable!2999 r!17423)))))

(declare-fun d!844003 () Bool)

(assert (=> d!844003 e!1877188))

(declare-fun res!1231113 () Bool)

(assert (=> d!844003 (=> (not res!1231113) (not e!1877188))))

(assert (=> d!844003 (= res!1231113 (validRegex!4055 lt!1039248))))

(declare-fun e!1877180 () Regex!9322)

(assert (=> d!844003 (= lt!1039248 e!1877180)))

(declare-fun c!490554 () Bool)

(assert (=> d!844003 (= c!490554 (is-EmptyLang!9322 r!17423))))

(assert (=> d!844003 (validRegex!4055 r!17423)))

(assert (=> d!844003 (= (simplify!323 r!17423) lt!1039248)))

(declare-fun bm!199576 () Bool)

(assert (=> bm!199576 (= call!199580 call!199582)))

(declare-fun bm!199577 () Bool)

(assert (=> bm!199577 (= call!199579 (simplify!323 (ite c!490560 (regTwo!19157 r!17423) (regTwo!19156 r!17423))))))

(declare-fun b!2985306 () Bool)

(assert (=> b!2985306 (= e!1877182 EmptyLang!9322)))

(declare-fun b!2985307 () Bool)

(assert (=> b!2985307 (= e!1877193 lt!1039247)))

(declare-fun b!2985308 () Bool)

(assert (=> b!2985308 (= e!1877186 lt!1039243)))

(declare-fun b!2985309 () Bool)

(assert (=> b!2985309 (= e!1877180 EmptyLang!9322)))

(declare-fun bm!199578 () Bool)

(assert (=> bm!199578 (= call!199577 call!199581)))

(declare-fun b!2985310 () Bool)

(declare-fun c!490551 () Bool)

(assert (=> b!2985310 (= c!490551 call!199580)))

(assert (=> b!2985310 (= e!1877193 e!1877187)))

(declare-fun b!2985311 () Bool)

(assert (=> b!2985311 (= e!1877180 e!1877189)))

(declare-fun c!490558 () Bool)

(assert (=> b!2985311 (= c!490558 (is-ElementMatch!9322 r!17423))))

(declare-fun b!2985312 () Bool)

(assert (=> b!2985312 (= e!1877186 (Concat!14643 lt!1039243 lt!1039244))))

(assert (= (and d!844003 c!490554) b!2985309))

(assert (= (and d!844003 (not c!490554)) b!2985311))

(assert (= (and b!2985311 c!490558) b!2985301))

(assert (= (and b!2985311 (not c!490558)) b!2985290))

(assert (= (and b!2985290 c!490556) b!2985288))

(assert (= (and b!2985290 (not c!490556)) b!2985302))

(assert (= (and b!2985302 c!490555) b!2985293))

(assert (= (and b!2985302 (not c!490555)) b!2985298))

(assert (= (and b!2985293 (not res!1231112)) b!2985289))

(assert (= (and b!2985293 c!490552) b!2985297))

(assert (= (and b!2985293 (not c!490552)) b!2985304))

(assert (= (and b!2985298 c!490560) b!2985300))

(assert (= (and b!2985298 (not c!490560)) b!2985303))

(assert (= (and b!2985300 c!490553) b!2985307))

(assert (= (and b!2985300 (not c!490553)) b!2985310))

(assert (= (and b!2985310 c!490551) b!2985294))

(assert (= (and b!2985310 (not c!490551)) b!2985296))

(assert (= (and b!2985303 (not res!1231111)) b!2985299))

(assert (= (and b!2985303 c!490559) b!2985306))

(assert (= (and b!2985303 (not c!490559)) b!2985291))

(assert (= (and b!2985291 c!490550) b!2985292))

(assert (= (and b!2985291 (not c!490550)) b!2985295))

(assert (= (and b!2985295 c!490557) b!2985308))

(assert (= (and b!2985295 (not c!490557)) b!2985312))

(assert (= (or b!2985300 b!2985303) bm!199577))

(assert (= (or b!2985300 b!2985303) bm!199578))

(assert (= (or b!2985310 b!2985303) bm!199576))

(assert (= (or b!2985300 b!2985299) bm!199574))

(assert (= (or b!2985289 b!2985295) bm!199572))

(assert (= (or b!2985293 bm!199578) bm!199573))

(assert (= (or b!2985293 bm!199576) bm!199575))

(assert (= (and d!844003 res!1231113) b!2985305))

(declare-fun m!3344457 () Bool)

(assert (=> d!844003 m!3344457))

(assert (=> d!844003 m!3344379))

(declare-fun m!3344459 () Bool)

(assert (=> bm!199575 m!3344459))

(declare-fun m!3344461 () Bool)

(assert (=> bm!199577 m!3344461))

(declare-fun m!3344463 () Bool)

(assert (=> b!2985291 m!3344463))

(declare-fun m!3344465 () Bool)

(assert (=> bm!199574 m!3344465))

(declare-fun m!3344467 () Bool)

(assert (=> b!2985305 m!3344467))

(assert (=> b!2985305 m!3344431))

(declare-fun m!3344469 () Bool)

(assert (=> bm!199573 m!3344469))

(declare-fun m!3344471 () Bool)

(assert (=> bm!199572 m!3344471))

(assert (=> b!2984953 d!844003))

(declare-fun b!2985326 () Bool)

(declare-fun e!1877196 () Bool)

(declare-fun tp!949763 () Bool)

(declare-fun tp!949761 () Bool)

(assert (=> b!2985326 (= e!1877196 (and tp!949763 tp!949761))))

(declare-fun b!2985325 () Bool)

(declare-fun tp!949760 () Bool)

(assert (=> b!2985325 (= e!1877196 tp!949760)))

(declare-fun b!2985323 () Bool)

(assert (=> b!2985323 (= e!1877196 tp_is_empty!16207)))

(declare-fun b!2985324 () Bool)

(declare-fun tp!949762 () Bool)

(declare-fun tp!949764 () Bool)

(assert (=> b!2985324 (= e!1877196 (and tp!949762 tp!949764))))

(assert (=> b!2984956 (= tp!949728 e!1877196)))

(assert (= (and b!2984956 (is-ElementMatch!9322 (reg!9651 r!17423))) b!2985323))

(assert (= (and b!2984956 (is-Concat!14643 (reg!9651 r!17423))) b!2985324))

(assert (= (and b!2984956 (is-Star!9322 (reg!9651 r!17423))) b!2985325))

(assert (= (and b!2984956 (is-Union!9322 (reg!9651 r!17423))) b!2985326))

(declare-fun b!2985331 () Bool)

(declare-fun e!1877199 () Bool)

(declare-fun tp!949767 () Bool)

(assert (=> b!2985331 (= e!1877199 (and tp_is_empty!16207 tp!949767))))

(assert (=> b!2984952 (= tp!949729 e!1877199)))

(assert (= (and b!2984952 (is-Cons!35063 (t!234252 s!11993))) b!2985331))

(declare-fun b!2985335 () Bool)

(declare-fun e!1877200 () Bool)

(declare-fun tp!949771 () Bool)

(declare-fun tp!949769 () Bool)

(assert (=> b!2985335 (= e!1877200 (and tp!949771 tp!949769))))

(declare-fun b!2985334 () Bool)

(declare-fun tp!949768 () Bool)

(assert (=> b!2985334 (= e!1877200 tp!949768)))

(declare-fun b!2985332 () Bool)

(assert (=> b!2985332 (= e!1877200 tp_is_empty!16207)))

(declare-fun b!2985333 () Bool)

(declare-fun tp!949770 () Bool)

(declare-fun tp!949772 () Bool)

(assert (=> b!2985333 (= e!1877200 (and tp!949770 tp!949772))))

(assert (=> b!2984957 (= tp!949731 e!1877200)))

(assert (= (and b!2984957 (is-ElementMatch!9322 (regOne!19157 r!17423))) b!2985332))

(assert (= (and b!2984957 (is-Concat!14643 (regOne!19157 r!17423))) b!2985333))

(assert (= (and b!2984957 (is-Star!9322 (regOne!19157 r!17423))) b!2985334))

(assert (= (and b!2984957 (is-Union!9322 (regOne!19157 r!17423))) b!2985335))

(declare-fun b!2985339 () Bool)

(declare-fun e!1877201 () Bool)

(declare-fun tp!949776 () Bool)

(declare-fun tp!949774 () Bool)

(assert (=> b!2985339 (= e!1877201 (and tp!949776 tp!949774))))

(declare-fun b!2985338 () Bool)

(declare-fun tp!949773 () Bool)

(assert (=> b!2985338 (= e!1877201 tp!949773)))

(declare-fun b!2985336 () Bool)

(assert (=> b!2985336 (= e!1877201 tp_is_empty!16207)))

(declare-fun b!2985337 () Bool)

(declare-fun tp!949775 () Bool)

(declare-fun tp!949777 () Bool)

(assert (=> b!2985337 (= e!1877201 (and tp!949775 tp!949777))))

(assert (=> b!2984957 (= tp!949726 e!1877201)))

(assert (= (and b!2984957 (is-ElementMatch!9322 (regTwo!19157 r!17423))) b!2985336))

(assert (= (and b!2984957 (is-Concat!14643 (regTwo!19157 r!17423))) b!2985337))

(assert (= (and b!2984957 (is-Star!9322 (regTwo!19157 r!17423))) b!2985338))

(assert (= (and b!2984957 (is-Union!9322 (regTwo!19157 r!17423))) b!2985339))

(declare-fun b!2985343 () Bool)

(declare-fun e!1877202 () Bool)

(declare-fun tp!949781 () Bool)

(declare-fun tp!949779 () Bool)

(assert (=> b!2985343 (= e!1877202 (and tp!949781 tp!949779))))

(declare-fun b!2985342 () Bool)

(declare-fun tp!949778 () Bool)

(assert (=> b!2985342 (= e!1877202 tp!949778)))

(declare-fun b!2985340 () Bool)

(assert (=> b!2985340 (= e!1877202 tp_is_empty!16207)))

(declare-fun b!2985341 () Bool)

(declare-fun tp!949780 () Bool)

(declare-fun tp!949782 () Bool)

(assert (=> b!2985341 (= e!1877202 (and tp!949780 tp!949782))))

(assert (=> b!2984954 (= tp!949727 e!1877202)))

(assert (= (and b!2984954 (is-ElementMatch!9322 (regOne!19156 r!17423))) b!2985340))

(assert (= (and b!2984954 (is-Concat!14643 (regOne!19156 r!17423))) b!2985341))

(assert (= (and b!2984954 (is-Star!9322 (regOne!19156 r!17423))) b!2985342))

(assert (= (and b!2984954 (is-Union!9322 (regOne!19156 r!17423))) b!2985343))

(declare-fun b!2985347 () Bool)

(declare-fun e!1877203 () Bool)

(declare-fun tp!949786 () Bool)

(declare-fun tp!949784 () Bool)

(assert (=> b!2985347 (= e!1877203 (and tp!949786 tp!949784))))

(declare-fun b!2985346 () Bool)

(declare-fun tp!949783 () Bool)

(assert (=> b!2985346 (= e!1877203 tp!949783)))

(declare-fun b!2985344 () Bool)

(assert (=> b!2985344 (= e!1877203 tp_is_empty!16207)))

(declare-fun b!2985345 () Bool)

(declare-fun tp!949785 () Bool)

(declare-fun tp!949787 () Bool)

(assert (=> b!2985345 (= e!1877203 (and tp!949785 tp!949787))))

(assert (=> b!2984954 (= tp!949730 e!1877203)))

(assert (= (and b!2984954 (is-ElementMatch!9322 (regTwo!19156 r!17423))) b!2985344))

(assert (= (and b!2984954 (is-Concat!14643 (regTwo!19156 r!17423))) b!2985345))

(assert (= (and b!2984954 (is-Star!9322 (regTwo!19156 r!17423))) b!2985346))

(assert (= (and b!2984954 (is-Union!9322 (regTwo!19156 r!17423))) b!2985347))

(push 1)

(assert (not b!2985197))

(assert (not b!2985333))

(assert (not b!2985331))

(assert (not b!2985347))

(assert (not b!2985145))

(assert (not b!2985346))

(assert (not bm!199553))

(assert tp_is_empty!16207)

(assert (not b!2985335))

(assert (not b!2985334))

(assert (not bm!199541))

(assert (not bm!199545))

(assert (not b!2985291))

(assert (not bm!199552))

(assert (not b!2985199))

(assert (not b!2985325))

(assert (not b!2985341))

(assert (not d!843997))

(assert (not b!2985338))

(assert (not bm!199556))

(assert (not b!2985345))

(assert (not b!2985326))

(assert (not b!2985342))

(assert (not bm!199577))

(assert (not b!2985233))

(assert (not b!2985195))

(assert (not b!2985343))

(assert (not b!2985191))

(assert (not b!2985339))

(assert (not d!844003))

(assert (not bm!199573))

(assert (not b!2985198))

(assert (not b!2985224))

(assert (not d!843995))

(assert (not bm!199574))

(assert (not bm!199542))

(assert (not b!2985324))

(assert (not b!2985337))

(assert (not bm!199575))

(assert (not bm!199572))

(assert (not b!2985305))

(assert (not b!2985200))

(assert (not b!2985148))

(assert (not bm!199555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

