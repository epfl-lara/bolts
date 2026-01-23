; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90076 () Bool)

(assert start!90076)

(declare-fun b!1035120 () Bool)

(assert (=> b!1035120 true))

(assert (=> b!1035120 true))

(declare-fun lambda!37214 () Int)

(declare-fun lambda!37213 () Int)

(assert (=> b!1035120 (not (= lambda!37214 lambda!37213))))

(assert (=> b!1035120 true))

(assert (=> b!1035120 true))

(declare-fun b!1035114 () Bool)

(declare-fun e!659383 () Bool)

(declare-fun tp!313293 () Bool)

(declare-fun tp!313297 () Bool)

(assert (=> b!1035114 (= e!659383 (and tp!313293 tp!313297))))

(declare-fun b!1035115 () Bool)

(declare-fun e!659384 () Bool)

(declare-datatypes ((C!6318 0))(
  ( (C!6319 (val!3407 Int)) )
))
(declare-datatypes ((Regex!2874 0))(
  ( (ElementMatch!2874 (c!171777 C!6318)) (Concat!4707 (regOne!6260 Regex!2874) (regTwo!6260 Regex!2874)) (EmptyExpr!2874) (Star!2874 (reg!3203 Regex!2874)) (EmptyLang!2874) (Union!2874 (regOne!6261 Regex!2874) (regTwo!6261 Regex!2874)) )
))
(declare-fun r!15766 () Regex!2874)

(declare-datatypes ((List!10104 0))(
  ( (Nil!10088) (Cons!10088 (h!15489 C!6318) (t!101150 List!10104)) )
))
(declare-fun s!10566 () List!10104)

(declare-fun matchR!1410 (Regex!2874 List!10104) Bool)

(declare-fun removeUselessConcat!423 (Regex!2874) Regex!2874)

(assert (=> b!1035115 (= e!659384 (not (matchR!1410 (removeUselessConcat!423 r!15766) s!10566)))))

(declare-fun b!1035116 () Bool)

(declare-fun tp!313294 () Bool)

(assert (=> b!1035116 (= e!659383 tp!313294)))

(declare-fun res!464960 () Bool)

(declare-fun e!659380 () Bool)

(assert (=> start!90076 (=> (not res!464960) (not e!659380))))

(declare-fun validRegex!1343 (Regex!2874) Bool)

(assert (=> start!90076 (= res!464960 (validRegex!1343 r!15766))))

(assert (=> start!90076 e!659380))

(assert (=> start!90076 e!659383))

(declare-fun e!659381 () Bool)

(assert (=> start!90076 e!659381))

(declare-fun b!1035117 () Bool)

(declare-fun e!659382 () Bool)

(assert (=> b!1035117 (= e!659380 (not e!659382))))

(declare-fun res!464959 () Bool)

(assert (=> b!1035117 (=> res!464959 e!659382)))

(declare-fun lt!356635 () Bool)

(assert (=> b!1035117 (= res!464959 (or lt!356635 (and (is-Concat!4707 r!15766) (is-EmptyExpr!2874 (regOne!6260 r!15766))) (and (is-Concat!4707 r!15766) (is-EmptyExpr!2874 (regTwo!6260 r!15766))) (not (is-Concat!4707 r!15766))))))

(declare-fun matchRSpec!673 (Regex!2874 List!10104) Bool)

(assert (=> b!1035117 (= lt!356635 (matchRSpec!673 r!15766 s!10566))))

(assert (=> b!1035117 (= lt!356635 (matchR!1410 r!15766 s!10566))))

(declare-datatypes ((Unit!15423 0))(
  ( (Unit!15424) )
))
(declare-fun lt!356637 () Unit!15423)

(declare-fun mainMatchTheorem!673 (Regex!2874 List!10104) Unit!15423)

(assert (=> b!1035117 (= lt!356637 (mainMatchTheorem!673 r!15766 s!10566))))

(declare-fun b!1035118 () Bool)

(declare-fun tp_is_empty!5391 () Bool)

(assert (=> b!1035118 (= e!659383 tp_is_empty!5391)))

(declare-fun b!1035119 () Bool)

(declare-fun tp!313295 () Bool)

(declare-fun tp!313298 () Bool)

(assert (=> b!1035119 (= e!659383 (and tp!313295 tp!313298))))

(assert (=> b!1035120 (= e!659382 e!659384)))

(declare-fun res!464961 () Bool)

(assert (=> b!1035120 (=> res!464961 e!659384)))

(declare-fun isEmpty!6479 (List!10104) Bool)

(assert (=> b!1035120 (= res!464961 (not (isEmpty!6479 s!10566)))))

(declare-fun Exists!601 (Int) Bool)

(assert (=> b!1035120 (= (Exists!601 lambda!37213) (Exists!601 lambda!37214))))

(declare-fun lt!356636 () Unit!15423)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!289 (Regex!2874 Regex!2874 List!10104) Unit!15423)

(assert (=> b!1035120 (= lt!356636 (lemmaExistCutMatchRandMatchRSpecEquivalent!289 (regOne!6260 r!15766) (regTwo!6260 r!15766) s!10566))))

(declare-datatypes ((tuple2!11514 0))(
  ( (tuple2!11515 (_1!6583 List!10104) (_2!6583 List!10104)) )
))
(declare-datatypes ((Option!2399 0))(
  ( (None!2398) (Some!2398 (v!19815 tuple2!11514)) )
))
(declare-fun isDefined!2041 (Option!2399) Bool)

(declare-fun findConcatSeparation!505 (Regex!2874 Regex!2874 List!10104 List!10104 List!10104) Option!2399)

(assert (=> b!1035120 (= (isDefined!2041 (findConcatSeparation!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) Nil!10088 s!10566 s!10566)) (Exists!601 lambda!37213))))

(declare-fun lt!356634 () Unit!15423)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!505 (Regex!2874 Regex!2874 List!10104) Unit!15423)

(assert (=> b!1035120 (= lt!356634 (lemmaFindConcatSeparationEquivalentToExists!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) s!10566))))

(declare-fun b!1035121 () Bool)

(declare-fun tp!313296 () Bool)

(assert (=> b!1035121 (= e!659381 (and tp_is_empty!5391 tp!313296))))

(assert (= (and start!90076 res!464960) b!1035117))

(assert (= (and b!1035117 (not res!464959)) b!1035120))

(assert (= (and b!1035120 (not res!464961)) b!1035115))

(assert (= (and start!90076 (is-ElementMatch!2874 r!15766)) b!1035118))

(assert (= (and start!90076 (is-Concat!4707 r!15766)) b!1035114))

(assert (= (and start!90076 (is-Star!2874 r!15766)) b!1035116))

(assert (= (and start!90076 (is-Union!2874 r!15766)) b!1035119))

(assert (= (and start!90076 (is-Cons!10088 s!10566)) b!1035121))

(declare-fun m!1206457 () Bool)

(assert (=> b!1035115 m!1206457))

(assert (=> b!1035115 m!1206457))

(declare-fun m!1206459 () Bool)

(assert (=> b!1035115 m!1206459))

(declare-fun m!1206461 () Bool)

(assert (=> start!90076 m!1206461))

(declare-fun m!1206463 () Bool)

(assert (=> b!1035117 m!1206463))

(declare-fun m!1206465 () Bool)

(assert (=> b!1035117 m!1206465))

(declare-fun m!1206467 () Bool)

(assert (=> b!1035117 m!1206467))

(declare-fun m!1206469 () Bool)

(assert (=> b!1035120 m!1206469))

(declare-fun m!1206471 () Bool)

(assert (=> b!1035120 m!1206471))

(declare-fun m!1206473 () Bool)

(assert (=> b!1035120 m!1206473))

(declare-fun m!1206475 () Bool)

(assert (=> b!1035120 m!1206475))

(declare-fun m!1206477 () Bool)

(assert (=> b!1035120 m!1206477))

(declare-fun m!1206479 () Bool)

(assert (=> b!1035120 m!1206479))

(declare-fun m!1206481 () Bool)

(assert (=> b!1035120 m!1206481))

(assert (=> b!1035120 m!1206479))

(assert (=> b!1035120 m!1206469))

(push 1)

(assert (not b!1035121))

(assert (not b!1035117))

(assert (not b!1035114))

(assert (not b!1035116))

(assert (not b!1035115))

(assert (not b!1035119))

(assert (not start!90076))

(assert tp_is_empty!5391)

(assert (not b!1035120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!247572 () Bool)

(declare-fun b!1035201 () Bool)

(assert (= bs!247572 (and b!1035201 b!1035120)))

(declare-fun lambda!37227 () Int)

(assert (=> bs!247572 (not (= lambda!37227 lambda!37213))))

(assert (=> bs!247572 (not (= lambda!37227 lambda!37214))))

(assert (=> b!1035201 true))

(assert (=> b!1035201 true))

(declare-fun bs!247573 () Bool)

(declare-fun b!1035208 () Bool)

(assert (= bs!247573 (and b!1035208 b!1035120)))

(declare-fun lambda!37228 () Int)

(assert (=> bs!247573 (not (= lambda!37228 lambda!37213))))

(assert (=> bs!247573 (= lambda!37228 lambda!37214)))

(declare-fun bs!247574 () Bool)

(assert (= bs!247574 (and b!1035208 b!1035201)))

(assert (=> bs!247574 (not (= lambda!37228 lambda!37227))))

(assert (=> b!1035208 true))

(assert (=> b!1035208 true))

(declare-fun b!1035198 () Bool)

(declare-fun e!659424 () Bool)

(assert (=> b!1035198 (= e!659424 (= s!10566 (Cons!10088 (c!171777 r!15766) Nil!10088)))))

(declare-fun b!1035199 () Bool)

(declare-fun c!171788 () Bool)

(assert (=> b!1035199 (= c!171788 (is-Union!2874 r!15766))))

(declare-fun e!659430 () Bool)

(assert (=> b!1035199 (= e!659424 e!659430)))

(declare-fun b!1035200 () Bool)

(declare-fun e!659426 () Bool)

(declare-fun e!659425 () Bool)

(assert (=> b!1035200 (= e!659426 e!659425)))

(declare-fun res!465000 () Bool)

(assert (=> b!1035200 (= res!465000 (not (is-EmptyLang!2874 r!15766)))))

(assert (=> b!1035200 (=> (not res!465000) (not e!659425))))

(declare-fun d!296193 () Bool)

(declare-fun c!171789 () Bool)

(assert (=> d!296193 (= c!171789 (is-EmptyExpr!2874 r!15766))))

(assert (=> d!296193 (= (matchRSpec!673 r!15766 s!10566) e!659426)))

(declare-fun e!659429 () Bool)

(declare-fun call!71546 () Bool)

(assert (=> b!1035201 (= e!659429 call!71546)))

(declare-fun bm!71541 () Bool)

(declare-fun call!71547 () Bool)

(assert (=> bm!71541 (= call!71547 (isEmpty!6479 s!10566))))

(declare-fun b!1035202 () Bool)

(declare-fun e!659427 () Bool)

(assert (=> b!1035202 (= e!659430 e!659427)))

(declare-fun c!171790 () Bool)

(assert (=> b!1035202 (= c!171790 (is-Star!2874 r!15766))))

(declare-fun b!1035203 () Bool)

(declare-fun res!464999 () Bool)

(assert (=> b!1035203 (=> res!464999 e!659429)))

(assert (=> b!1035203 (= res!464999 call!71547)))

(assert (=> b!1035203 (= e!659427 e!659429)))

(declare-fun b!1035204 () Bool)

(declare-fun e!659428 () Bool)

(assert (=> b!1035204 (= e!659428 (matchRSpec!673 (regTwo!6261 r!15766) s!10566))))

(declare-fun b!1035205 () Bool)

(declare-fun c!171787 () Bool)

(assert (=> b!1035205 (= c!171787 (is-ElementMatch!2874 r!15766))))

(assert (=> b!1035205 (= e!659425 e!659424)))

(declare-fun b!1035206 () Bool)

(assert (=> b!1035206 (= e!659430 e!659428)))

(declare-fun res!465001 () Bool)

(assert (=> b!1035206 (= res!465001 (matchRSpec!673 (regOne!6261 r!15766) s!10566))))

(assert (=> b!1035206 (=> res!465001 e!659428)))

(declare-fun b!1035207 () Bool)

(assert (=> b!1035207 (= e!659426 call!71547)))

(assert (=> b!1035208 (= e!659427 call!71546)))

(declare-fun bm!71542 () Bool)

(assert (=> bm!71542 (= call!71546 (Exists!601 (ite c!171790 lambda!37227 lambda!37228)))))

(assert (= (and d!296193 c!171789) b!1035207))

(assert (= (and d!296193 (not c!171789)) b!1035200))

(assert (= (and b!1035200 res!465000) b!1035205))

(assert (= (and b!1035205 c!171787) b!1035198))

(assert (= (and b!1035205 (not c!171787)) b!1035199))

(assert (= (and b!1035199 c!171788) b!1035206))

(assert (= (and b!1035199 (not c!171788)) b!1035202))

(assert (= (and b!1035206 (not res!465001)) b!1035204))

(assert (= (and b!1035202 c!171790) b!1035203))

(assert (= (and b!1035202 (not c!171790)) b!1035208))

(assert (= (and b!1035203 (not res!464999)) b!1035201))

(assert (= (or b!1035201 b!1035208) bm!71542))

(assert (= (or b!1035207 b!1035203) bm!71541))

(assert (=> bm!71541 m!1206475))

(declare-fun m!1206509 () Bool)

(assert (=> b!1035204 m!1206509))

(declare-fun m!1206511 () Bool)

(assert (=> b!1035206 m!1206511))

(declare-fun m!1206513 () Bool)

(assert (=> bm!71542 m!1206513))

(assert (=> b!1035117 d!296193))

(declare-fun b!1035237 () Bool)

(declare-fun e!659451 () Bool)

(declare-fun nullable!966 (Regex!2874) Bool)

(assert (=> b!1035237 (= e!659451 (nullable!966 r!15766))))

(declare-fun d!296195 () Bool)

(declare-fun e!659445 () Bool)

(assert (=> d!296195 e!659445))

(declare-fun c!171798 () Bool)

(assert (=> d!296195 (= c!171798 (is-EmptyExpr!2874 r!15766))))

(declare-fun lt!356652 () Bool)

(assert (=> d!296195 (= lt!356652 e!659451)))

(declare-fun c!171797 () Bool)

(assert (=> d!296195 (= c!171797 (isEmpty!6479 s!10566))))

(assert (=> d!296195 (validRegex!1343 r!15766)))

(assert (=> d!296195 (= (matchR!1410 r!15766 s!10566) lt!356652)))

(declare-fun b!1035238 () Bool)

(declare-fun res!465022 () Bool)

(declare-fun e!659446 () Bool)

(assert (=> b!1035238 (=> res!465022 e!659446)))

(assert (=> b!1035238 (= res!465022 (not (is-ElementMatch!2874 r!15766)))))

(declare-fun e!659449 () Bool)

(assert (=> b!1035238 (= e!659449 e!659446)))

(declare-fun b!1035239 () Bool)

(assert (=> b!1035239 (= e!659449 (not lt!356652))))

(declare-fun b!1035240 () Bool)

(declare-fun res!465023 () Bool)

(declare-fun e!659450 () Bool)

(assert (=> b!1035240 (=> res!465023 e!659450)))

(declare-fun tail!1483 (List!10104) List!10104)

(assert (=> b!1035240 (= res!465023 (not (isEmpty!6479 (tail!1483 s!10566))))))

(declare-fun b!1035241 () Bool)

(declare-fun e!659448 () Bool)

(assert (=> b!1035241 (= e!659448 e!659450)))

(declare-fun res!465021 () Bool)

(assert (=> b!1035241 (=> res!465021 e!659450)))

(declare-fun call!71550 () Bool)

(assert (=> b!1035241 (= res!465021 call!71550)))

(declare-fun b!1035242 () Bool)

(declare-fun head!1921 (List!10104) C!6318)

(assert (=> b!1035242 (= e!659450 (not (= (head!1921 s!10566) (c!171777 r!15766))))))

(declare-fun b!1035243 () Bool)

(declare-fun res!465024 () Bool)

(declare-fun e!659447 () Bool)

(assert (=> b!1035243 (=> (not res!465024) (not e!659447))))

(assert (=> b!1035243 (= res!465024 (not call!71550))))

(declare-fun b!1035244 () Bool)

(assert (=> b!1035244 (= e!659445 e!659449)))

(declare-fun c!171799 () Bool)

(assert (=> b!1035244 (= c!171799 (is-EmptyLang!2874 r!15766))))

(declare-fun b!1035245 () Bool)

(assert (=> b!1035245 (= e!659446 e!659448)))

(declare-fun res!465019 () Bool)

(assert (=> b!1035245 (=> (not res!465019) (not e!659448))))

(assert (=> b!1035245 (= res!465019 (not lt!356652))))

(declare-fun b!1035246 () Bool)

(declare-fun res!465018 () Bool)

(assert (=> b!1035246 (=> res!465018 e!659446)))

(assert (=> b!1035246 (= res!465018 e!659447)))

(declare-fun res!465025 () Bool)

(assert (=> b!1035246 (=> (not res!465025) (not e!659447))))

(assert (=> b!1035246 (= res!465025 lt!356652)))

(declare-fun b!1035247 () Bool)

(assert (=> b!1035247 (= e!659445 (= lt!356652 call!71550))))

(declare-fun bm!71545 () Bool)

(assert (=> bm!71545 (= call!71550 (isEmpty!6479 s!10566))))

(declare-fun b!1035248 () Bool)

(assert (=> b!1035248 (= e!659447 (= (head!1921 s!10566) (c!171777 r!15766)))))

(declare-fun b!1035249 () Bool)

(declare-fun res!465020 () Bool)

(assert (=> b!1035249 (=> (not res!465020) (not e!659447))))

(assert (=> b!1035249 (= res!465020 (isEmpty!6479 (tail!1483 s!10566)))))

(declare-fun b!1035250 () Bool)

(declare-fun derivativeStep!766 (Regex!2874 C!6318) Regex!2874)

(assert (=> b!1035250 (= e!659451 (matchR!1410 (derivativeStep!766 r!15766 (head!1921 s!10566)) (tail!1483 s!10566)))))

(assert (= (and d!296195 c!171797) b!1035237))

(assert (= (and d!296195 (not c!171797)) b!1035250))

(assert (= (and d!296195 c!171798) b!1035247))

(assert (= (and d!296195 (not c!171798)) b!1035244))

(assert (= (and b!1035244 c!171799) b!1035239))

(assert (= (and b!1035244 (not c!171799)) b!1035238))

(assert (= (and b!1035238 (not res!465022)) b!1035246))

(assert (= (and b!1035246 res!465025) b!1035243))

(assert (= (and b!1035243 res!465024) b!1035249))

(assert (= (and b!1035249 res!465020) b!1035248))

(assert (= (and b!1035246 (not res!465018)) b!1035245))

(assert (= (and b!1035245 res!465019) b!1035241))

(assert (= (and b!1035241 (not res!465021)) b!1035240))

(assert (= (and b!1035240 (not res!465023)) b!1035242))

(assert (= (or b!1035247 b!1035241 b!1035243) bm!71545))

(declare-fun m!1206521 () Bool)

(assert (=> b!1035240 m!1206521))

(assert (=> b!1035240 m!1206521))

(declare-fun m!1206523 () Bool)

(assert (=> b!1035240 m!1206523))

(assert (=> bm!71545 m!1206475))

(declare-fun m!1206525 () Bool)

(assert (=> b!1035242 m!1206525))

(declare-fun m!1206527 () Bool)

(assert (=> b!1035237 m!1206527))

(assert (=> d!296195 m!1206475))

(assert (=> d!296195 m!1206461))

(assert (=> b!1035248 m!1206525))

(assert (=> b!1035249 m!1206521))

(assert (=> b!1035249 m!1206521))

(assert (=> b!1035249 m!1206523))

(assert (=> b!1035250 m!1206525))

(assert (=> b!1035250 m!1206525))

(declare-fun m!1206529 () Bool)

(assert (=> b!1035250 m!1206529))

(assert (=> b!1035250 m!1206521))

(assert (=> b!1035250 m!1206529))

(assert (=> b!1035250 m!1206521))

(declare-fun m!1206531 () Bool)

(assert (=> b!1035250 m!1206531))

(assert (=> b!1035117 d!296195))

(declare-fun d!296207 () Bool)

(assert (=> d!296207 (= (matchR!1410 r!15766 s!10566) (matchRSpec!673 r!15766 s!10566))))

(declare-fun lt!356655 () Unit!15423)

(declare-fun choose!6602 (Regex!2874 List!10104) Unit!15423)

(assert (=> d!296207 (= lt!356655 (choose!6602 r!15766 s!10566))))

(assert (=> d!296207 (validRegex!1343 r!15766)))

(assert (=> d!296207 (= (mainMatchTheorem!673 r!15766 s!10566) lt!356655)))

(declare-fun bs!247578 () Bool)

(assert (= bs!247578 d!296207))

(assert (=> bs!247578 m!1206465))

(assert (=> bs!247578 m!1206463))

(declare-fun m!1206533 () Bool)

(assert (=> bs!247578 m!1206533))

(assert (=> bs!247578 m!1206461))

(assert (=> b!1035117 d!296207))

(declare-fun d!296209 () Bool)

(assert (=> d!296209 (= (isEmpty!6479 s!10566) (is-Nil!10088 s!10566))))

(assert (=> b!1035120 d!296209))

(declare-fun d!296211 () Bool)

(declare-fun isEmpty!6481 (Option!2399) Bool)

(assert (=> d!296211 (= (isDefined!2041 (findConcatSeparation!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) Nil!10088 s!10566 s!10566)) (not (isEmpty!6481 (findConcatSeparation!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) Nil!10088 s!10566 s!10566))))))

(declare-fun bs!247579 () Bool)

(assert (= bs!247579 d!296211))

(assert (=> bs!247579 m!1206469))

(declare-fun m!1206535 () Bool)

(assert (=> bs!247579 m!1206535))

(assert (=> b!1035120 d!296211))

(declare-fun d!296213 () Bool)

(declare-fun choose!6603 (Int) Bool)

(assert (=> d!296213 (= (Exists!601 lambda!37214) (choose!6603 lambda!37214))))

(declare-fun bs!247580 () Bool)

(assert (= bs!247580 d!296213))

(declare-fun m!1206537 () Bool)

(assert (=> bs!247580 m!1206537))

(assert (=> b!1035120 d!296213))

(declare-fun d!296215 () Bool)

(assert (=> d!296215 (= (Exists!601 lambda!37213) (choose!6603 lambda!37213))))

(declare-fun bs!247581 () Bool)

(assert (= bs!247581 d!296215))

(declare-fun m!1206539 () Bool)

(assert (=> bs!247581 m!1206539))

(assert (=> b!1035120 d!296215))

(declare-fun bs!247582 () Bool)

(declare-fun d!296217 () Bool)

(assert (= bs!247582 (and d!296217 b!1035120)))

(declare-fun lambda!37233 () Int)

(assert (=> bs!247582 (= lambda!37233 lambda!37213)))

(assert (=> bs!247582 (not (= lambda!37233 lambda!37214))))

(declare-fun bs!247583 () Bool)

(assert (= bs!247583 (and d!296217 b!1035201)))

(assert (=> bs!247583 (not (= lambda!37233 lambda!37227))))

(declare-fun bs!247584 () Bool)

(assert (= bs!247584 (and d!296217 b!1035208)))

(assert (=> bs!247584 (not (= lambda!37233 lambda!37228))))

(assert (=> d!296217 true))

(assert (=> d!296217 true))

(assert (=> d!296217 true))

(assert (=> d!296217 (= (isDefined!2041 (findConcatSeparation!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) Nil!10088 s!10566 s!10566)) (Exists!601 lambda!37233))))

(declare-fun lt!356660 () Unit!15423)

(declare-fun choose!6604 (Regex!2874 Regex!2874 List!10104) Unit!15423)

(assert (=> d!296217 (= lt!356660 (choose!6604 (regOne!6260 r!15766) (regTwo!6260 r!15766) s!10566))))

(assert (=> d!296217 (validRegex!1343 (regOne!6260 r!15766))))

(assert (=> d!296217 (= (lemmaFindConcatSeparationEquivalentToExists!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) s!10566) lt!356660)))

(declare-fun bs!247585 () Bool)

(assert (= bs!247585 d!296217))

(declare-fun m!1206541 () Bool)

(assert (=> bs!247585 m!1206541))

(assert (=> bs!247585 m!1206469))

(declare-fun m!1206543 () Bool)

(assert (=> bs!247585 m!1206543))

(declare-fun m!1206545 () Bool)

(assert (=> bs!247585 m!1206545))

(assert (=> bs!247585 m!1206469))

(assert (=> bs!247585 m!1206471))

(assert (=> b!1035120 d!296217))

(declare-fun b!1035277 () Bool)

(declare-fun res!465046 () Bool)

(declare-fun e!659469 () Bool)

(assert (=> b!1035277 (=> (not res!465046) (not e!659469))))

(declare-fun lt!356670 () Option!2399)

(declare-fun get!3590 (Option!2399) tuple2!11514)

(assert (=> b!1035277 (= res!465046 (matchR!1410 (regTwo!6260 r!15766) (_2!6583 (get!3590 lt!356670))))))

(declare-fun b!1035278 () Bool)

(declare-fun e!659467 () Option!2399)

(assert (=> b!1035278 (= e!659467 (Some!2398 (tuple2!11515 Nil!10088 s!10566)))))

(declare-fun b!1035279 () Bool)

(declare-fun e!659468 () Bool)

(assert (=> b!1035279 (= e!659468 (not (isDefined!2041 lt!356670)))))

(declare-fun b!1035280 () Bool)

(declare-fun res!465045 () Bool)

(assert (=> b!1035280 (=> (not res!465045) (not e!659469))))

(assert (=> b!1035280 (= res!465045 (matchR!1410 (regOne!6260 r!15766) (_1!6583 (get!3590 lt!356670))))))

(declare-fun b!1035282 () Bool)

(declare-fun e!659470 () Option!2399)

(assert (=> b!1035282 (= e!659467 e!659470)))

(declare-fun c!171805 () Bool)

(assert (=> b!1035282 (= c!171805 (is-Nil!10088 s!10566))))

(declare-fun b!1035283 () Bool)

(assert (=> b!1035283 (= e!659470 None!2398)))

(declare-fun b!1035284 () Bool)

(declare-fun e!659466 () Bool)

(assert (=> b!1035284 (= e!659466 (matchR!1410 (regTwo!6260 r!15766) s!10566))))

(declare-fun b!1035285 () Bool)

(declare-fun lt!356669 () Unit!15423)

(declare-fun lt!356668 () Unit!15423)

(assert (=> b!1035285 (= lt!356669 lt!356668)))

(declare-fun ++!2775 (List!10104 List!10104) List!10104)

(assert (=> b!1035285 (= (++!2775 (++!2775 Nil!10088 (Cons!10088 (h!15489 s!10566) Nil!10088)) (t!101150 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!368 (List!10104 C!6318 List!10104 List!10104) Unit!15423)

(assert (=> b!1035285 (= lt!356668 (lemmaMoveElementToOtherListKeepsConcatEq!368 Nil!10088 (h!15489 s!10566) (t!101150 s!10566) s!10566))))

(assert (=> b!1035285 (= e!659470 (findConcatSeparation!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) (++!2775 Nil!10088 (Cons!10088 (h!15489 s!10566) Nil!10088)) (t!101150 s!10566) s!10566))))

(declare-fun b!1035281 () Bool)

(assert (=> b!1035281 (= e!659469 (= (++!2775 (_1!6583 (get!3590 lt!356670)) (_2!6583 (get!3590 lt!356670))) s!10566))))

(declare-fun d!296219 () Bool)

(assert (=> d!296219 e!659468))

(declare-fun res!465044 () Bool)

(assert (=> d!296219 (=> res!465044 e!659468)))

(assert (=> d!296219 (= res!465044 e!659469)))

(declare-fun res!465047 () Bool)

(assert (=> d!296219 (=> (not res!465047) (not e!659469))))

(assert (=> d!296219 (= res!465047 (isDefined!2041 lt!356670))))

(assert (=> d!296219 (= lt!356670 e!659467)))

(declare-fun c!171804 () Bool)

(assert (=> d!296219 (= c!171804 e!659466)))

(declare-fun res!465048 () Bool)

(assert (=> d!296219 (=> (not res!465048) (not e!659466))))

(assert (=> d!296219 (= res!465048 (matchR!1410 (regOne!6260 r!15766) Nil!10088))))

(assert (=> d!296219 (validRegex!1343 (regOne!6260 r!15766))))

(assert (=> d!296219 (= (findConcatSeparation!505 (regOne!6260 r!15766) (regTwo!6260 r!15766) Nil!10088 s!10566 s!10566) lt!356670)))

(assert (= (and d!296219 res!465048) b!1035284))

(assert (= (and d!296219 c!171804) b!1035278))

(assert (= (and d!296219 (not c!171804)) b!1035282))

(assert (= (and b!1035282 c!171805) b!1035283))

(assert (= (and b!1035282 (not c!171805)) b!1035285))

(assert (= (and d!296219 res!465047) b!1035280))

(assert (= (and b!1035280 res!465045) b!1035277))

(assert (= (and b!1035277 res!465046) b!1035281))

(assert (= (and d!296219 (not res!465044)) b!1035279))

(declare-fun m!1206553 () Bool)

(assert (=> b!1035284 m!1206553))

(declare-fun m!1206555 () Bool)

(assert (=> b!1035285 m!1206555))

(assert (=> b!1035285 m!1206555))

(declare-fun m!1206557 () Bool)

(assert (=> b!1035285 m!1206557))

(declare-fun m!1206559 () Bool)

(assert (=> b!1035285 m!1206559))

(assert (=> b!1035285 m!1206555))

(declare-fun m!1206561 () Bool)

(assert (=> b!1035285 m!1206561))

(declare-fun m!1206563 () Bool)

(assert (=> b!1035279 m!1206563))

(declare-fun m!1206565 () Bool)

(assert (=> b!1035281 m!1206565))

(declare-fun m!1206567 () Bool)

(assert (=> b!1035281 m!1206567))

(assert (=> b!1035277 m!1206565))

(declare-fun m!1206569 () Bool)

(assert (=> b!1035277 m!1206569))

(assert (=> d!296219 m!1206563))

(declare-fun m!1206571 () Bool)

(assert (=> d!296219 m!1206571))

(assert (=> d!296219 m!1206541))

(assert (=> b!1035280 m!1206565))

(declare-fun m!1206573 () Bool)

(assert (=> b!1035280 m!1206573))

(assert (=> b!1035120 d!296219))

(declare-fun bs!247588 () Bool)

(declare-fun d!296223 () Bool)

(assert (= bs!247588 (and d!296223 b!1035201)))

(declare-fun lambda!37239 () Int)

(assert (=> bs!247588 (not (= lambda!37239 lambda!37227))))

(declare-fun bs!247589 () Bool)

(assert (= bs!247589 (and d!296223 b!1035120)))

(assert (=> bs!247589 (= lambda!37239 lambda!37213)))

(declare-fun bs!247590 () Bool)

(assert (= bs!247590 (and d!296223 b!1035208)))

(assert (=> bs!247590 (not (= lambda!37239 lambda!37228))))

(assert (=> bs!247589 (not (= lambda!37239 lambda!37214))))

(declare-fun bs!247591 () Bool)

(assert (= bs!247591 (and d!296223 d!296217)))

(assert (=> bs!247591 (= lambda!37239 lambda!37233)))

(assert (=> d!296223 true))

(assert (=> d!296223 true))

(assert (=> d!296223 true))

(declare-fun lambda!37240 () Int)

(assert (=> bs!247588 (not (= lambda!37240 lambda!37227))))

(assert (=> bs!247589 (not (= lambda!37240 lambda!37213))))

(declare-fun bs!247592 () Bool)

(assert (= bs!247592 d!296223))

(assert (=> bs!247592 (not (= lambda!37240 lambda!37239))))

(assert (=> bs!247590 (= lambda!37240 lambda!37228)))

(assert (=> bs!247589 (= lambda!37240 lambda!37214)))

(assert (=> bs!247591 (not (= lambda!37240 lambda!37233))))

(assert (=> d!296223 true))

(assert (=> d!296223 true))

(assert (=> d!296223 true))

(assert (=> d!296223 (= (Exists!601 lambda!37239) (Exists!601 lambda!37240))))

(declare-fun lt!356673 () Unit!15423)

(declare-fun choose!6605 (Regex!2874 Regex!2874 List!10104) Unit!15423)

(assert (=> d!296223 (= lt!356673 (choose!6605 (regOne!6260 r!15766) (regTwo!6260 r!15766) s!10566))))

(assert (=> d!296223 (validRegex!1343 (regOne!6260 r!15766))))

(assert (=> d!296223 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!289 (regOne!6260 r!15766) (regTwo!6260 r!15766) s!10566) lt!356673)))

(declare-fun m!1206575 () Bool)

(assert (=> bs!247592 m!1206575))

(declare-fun m!1206577 () Bool)

(assert (=> bs!247592 m!1206577))

(declare-fun m!1206579 () Bool)

(assert (=> bs!247592 m!1206579))

(assert (=> bs!247592 m!1206541))

(assert (=> b!1035120 d!296223))

(declare-fun b!1035294 () Bool)

(declare-fun e!659481 () Bool)

(assert (=> b!1035294 (= e!659481 (nullable!966 (removeUselessConcat!423 r!15766)))))

(declare-fun d!296225 () Bool)

(declare-fun e!659475 () Bool)

(assert (=> d!296225 e!659475))

(declare-fun c!171807 () Bool)

(assert (=> d!296225 (= c!171807 (is-EmptyExpr!2874 (removeUselessConcat!423 r!15766)))))

(declare-fun lt!356674 () Bool)

(assert (=> d!296225 (= lt!356674 e!659481)))

(declare-fun c!171806 () Bool)

(assert (=> d!296225 (= c!171806 (isEmpty!6479 s!10566))))

(assert (=> d!296225 (validRegex!1343 (removeUselessConcat!423 r!15766))))

(assert (=> d!296225 (= (matchR!1410 (removeUselessConcat!423 r!15766) s!10566) lt!356674)))

(declare-fun b!1035295 () Bool)

(declare-fun res!465061 () Bool)

(declare-fun e!659476 () Bool)

(assert (=> b!1035295 (=> res!465061 e!659476)))

(assert (=> b!1035295 (= res!465061 (not (is-ElementMatch!2874 (removeUselessConcat!423 r!15766))))))

(declare-fun e!659479 () Bool)

(assert (=> b!1035295 (= e!659479 e!659476)))

(declare-fun b!1035296 () Bool)

(assert (=> b!1035296 (= e!659479 (not lt!356674))))

(declare-fun b!1035297 () Bool)

(declare-fun res!465062 () Bool)

(declare-fun e!659480 () Bool)

(assert (=> b!1035297 (=> res!465062 e!659480)))

(assert (=> b!1035297 (= res!465062 (not (isEmpty!6479 (tail!1483 s!10566))))))

(declare-fun b!1035298 () Bool)

(declare-fun e!659478 () Bool)

(assert (=> b!1035298 (= e!659478 e!659480)))

(declare-fun res!465060 () Bool)

(assert (=> b!1035298 (=> res!465060 e!659480)))

(declare-fun call!71551 () Bool)

(assert (=> b!1035298 (= res!465060 call!71551)))

(declare-fun b!1035299 () Bool)

(assert (=> b!1035299 (= e!659480 (not (= (head!1921 s!10566) (c!171777 (removeUselessConcat!423 r!15766)))))))

(declare-fun b!1035300 () Bool)

(declare-fun res!465063 () Bool)

(declare-fun e!659477 () Bool)

(assert (=> b!1035300 (=> (not res!465063) (not e!659477))))

(assert (=> b!1035300 (= res!465063 (not call!71551))))

(declare-fun b!1035301 () Bool)

(assert (=> b!1035301 (= e!659475 e!659479)))

(declare-fun c!171808 () Bool)

(assert (=> b!1035301 (= c!171808 (is-EmptyLang!2874 (removeUselessConcat!423 r!15766)))))

(declare-fun b!1035302 () Bool)

(assert (=> b!1035302 (= e!659476 e!659478)))

(declare-fun res!465058 () Bool)

(assert (=> b!1035302 (=> (not res!465058) (not e!659478))))

(assert (=> b!1035302 (= res!465058 (not lt!356674))))

(declare-fun b!1035303 () Bool)

(declare-fun res!465057 () Bool)

(assert (=> b!1035303 (=> res!465057 e!659476)))

(assert (=> b!1035303 (= res!465057 e!659477)))

(declare-fun res!465064 () Bool)

(assert (=> b!1035303 (=> (not res!465064) (not e!659477))))

(assert (=> b!1035303 (= res!465064 lt!356674)))

(declare-fun b!1035304 () Bool)

(assert (=> b!1035304 (= e!659475 (= lt!356674 call!71551))))

(declare-fun bm!71546 () Bool)

(assert (=> bm!71546 (= call!71551 (isEmpty!6479 s!10566))))

(declare-fun b!1035305 () Bool)

(assert (=> b!1035305 (= e!659477 (= (head!1921 s!10566) (c!171777 (removeUselessConcat!423 r!15766))))))

(declare-fun b!1035306 () Bool)

(declare-fun res!465059 () Bool)

(assert (=> b!1035306 (=> (not res!465059) (not e!659477))))

(assert (=> b!1035306 (= res!465059 (isEmpty!6479 (tail!1483 s!10566)))))

(declare-fun b!1035307 () Bool)

(assert (=> b!1035307 (= e!659481 (matchR!1410 (derivativeStep!766 (removeUselessConcat!423 r!15766) (head!1921 s!10566)) (tail!1483 s!10566)))))

(assert (= (and d!296225 c!171806) b!1035294))

(assert (= (and d!296225 (not c!171806)) b!1035307))

(assert (= (and d!296225 c!171807) b!1035304))

(assert (= (and d!296225 (not c!171807)) b!1035301))

(assert (= (and b!1035301 c!171808) b!1035296))

(assert (= (and b!1035301 (not c!171808)) b!1035295))

(assert (= (and b!1035295 (not res!465061)) b!1035303))

(assert (= (and b!1035303 res!465064) b!1035300))

(assert (= (and b!1035300 res!465063) b!1035306))

(assert (= (and b!1035306 res!465059) b!1035305))

(assert (= (and b!1035303 (not res!465057)) b!1035302))

(assert (= (and b!1035302 res!465058) b!1035298))

(assert (= (and b!1035298 (not res!465060)) b!1035297))

(assert (= (and b!1035297 (not res!465062)) b!1035299))

(assert (= (or b!1035304 b!1035298 b!1035300) bm!71546))

(assert (=> b!1035297 m!1206521))

(assert (=> b!1035297 m!1206521))

(assert (=> b!1035297 m!1206523))

(assert (=> bm!71546 m!1206475))

(assert (=> b!1035299 m!1206525))

(assert (=> b!1035294 m!1206457))

(declare-fun m!1206581 () Bool)

(assert (=> b!1035294 m!1206581))

(assert (=> d!296225 m!1206475))

(assert (=> d!296225 m!1206457))

(declare-fun m!1206583 () Bool)

(assert (=> d!296225 m!1206583))

(assert (=> b!1035305 m!1206525))

(assert (=> b!1035306 m!1206521))

(assert (=> b!1035306 m!1206521))

(assert (=> b!1035306 m!1206523))

(assert (=> b!1035307 m!1206525))

(assert (=> b!1035307 m!1206457))

(assert (=> b!1035307 m!1206525))

(declare-fun m!1206585 () Bool)

(assert (=> b!1035307 m!1206585))

(assert (=> b!1035307 m!1206521))

(assert (=> b!1035307 m!1206585))

(assert (=> b!1035307 m!1206521))

(declare-fun m!1206587 () Bool)

(assert (=> b!1035307 m!1206587))

(assert (=> b!1035115 d!296225))

(declare-fun bm!71557 () Bool)

(declare-fun call!71562 () Regex!2874)

(declare-fun call!71566 () Regex!2874)

(assert (=> bm!71557 (= call!71562 call!71566)))

(declare-fun bm!71558 () Bool)

(declare-fun call!71565 () Regex!2874)

(declare-fun call!71564 () Regex!2874)

(assert (=> bm!71558 (= call!71565 call!71564)))

(declare-fun b!1035348 () Bool)

(declare-fun e!659509 () Regex!2874)

(assert (=> b!1035348 (= e!659509 r!15766)))

(declare-fun b!1035349 () Bool)

(declare-fun e!659505 () Regex!2874)

(declare-fun call!71563 () Regex!2874)

(assert (=> b!1035349 (= e!659505 (Union!2874 call!71565 call!71563))))

(declare-fun bm!71559 () Bool)

(assert (=> bm!71559 (= call!71563 call!71562)))

(declare-fun b!1035350 () Bool)

(declare-fun e!659508 () Regex!2874)

(assert (=> b!1035350 (= e!659508 e!659505)))

(declare-fun c!171827 () Bool)

(assert (=> b!1035350 (= c!171827 (is-Union!2874 r!15766))))

(declare-fun c!171825 () Bool)

(declare-fun bm!71560 () Bool)

(declare-fun c!171826 () Bool)

(assert (=> bm!71560 (= call!71564 (removeUselessConcat!423 (ite (or c!171825 c!171826) (regOne!6260 r!15766) (regOne!6261 r!15766))))))

(declare-fun b!1035351 () Bool)

(declare-fun e!659504 () Regex!2874)

(assert (=> b!1035351 (= e!659504 call!71566)))

(declare-fun b!1035352 () Bool)

(assert (=> b!1035352 (= e!659509 (Star!2874 call!71563))))

(declare-fun b!1035353 () Bool)

(assert (=> b!1035353 (= e!659508 (Concat!4707 call!71565 call!71562))))

(declare-fun b!1035354 () Bool)

(declare-fun e!659507 () Bool)

(declare-fun lt!356683 () Regex!2874)

(assert (=> b!1035354 (= e!659507 (= (nullable!966 lt!356683) (nullable!966 r!15766)))))

(declare-fun b!1035355 () Bool)

(declare-fun c!171824 () Bool)

(assert (=> b!1035355 (= c!171824 (is-Star!2874 r!15766))))

(assert (=> b!1035355 (= e!659505 e!659509)))

(declare-fun c!171823 () Bool)

(declare-fun bm!71561 () Bool)

(assert (=> bm!71561 (= call!71566 (removeUselessConcat!423 (ite (or c!171823 c!171826) (regTwo!6260 r!15766) (ite c!171827 (regTwo!6261 r!15766) (reg!3203 r!15766)))))))

(declare-fun b!1035356 () Bool)

(declare-fun e!659506 () Regex!2874)

(assert (=> b!1035356 (= e!659506 call!71564)))

(declare-fun d!296227 () Bool)

(assert (=> d!296227 e!659507))

(declare-fun res!465077 () Bool)

(assert (=> d!296227 (=> (not res!465077) (not e!659507))))

(assert (=> d!296227 (= res!465077 (validRegex!1343 lt!356683))))

(assert (=> d!296227 (= lt!356683 e!659504)))

(assert (=> d!296227 (= c!171823 (and (is-Concat!4707 r!15766) (is-EmptyExpr!2874 (regOne!6260 r!15766))))))

(assert (=> d!296227 (validRegex!1343 r!15766)))

(assert (=> d!296227 (= (removeUselessConcat!423 r!15766) lt!356683)))

(declare-fun b!1035357 () Bool)

(assert (=> b!1035357 (= e!659504 e!659506)))

(assert (=> b!1035357 (= c!171825 (and (is-Concat!4707 r!15766) (is-EmptyExpr!2874 (regTwo!6260 r!15766))))))

(declare-fun b!1035358 () Bool)

(assert (=> b!1035358 (= c!171826 (is-Concat!4707 r!15766))))

(assert (=> b!1035358 (= e!659506 e!659508)))

(assert (= (and d!296227 c!171823) b!1035351))

(assert (= (and d!296227 (not c!171823)) b!1035357))

(assert (= (and b!1035357 c!171825) b!1035356))

(assert (= (and b!1035357 (not c!171825)) b!1035358))

(assert (= (and b!1035358 c!171826) b!1035353))

(assert (= (and b!1035358 (not c!171826)) b!1035350))

(assert (= (and b!1035350 c!171827) b!1035349))

(assert (= (and b!1035350 (not c!171827)) b!1035355))

(assert (= (and b!1035355 c!171824) b!1035352))

(assert (= (and b!1035355 (not c!171824)) b!1035348))

(assert (= (or b!1035349 b!1035352) bm!71559))

(assert (= (or b!1035353 bm!71559) bm!71557))

(assert (= (or b!1035353 b!1035349) bm!71558))

(assert (= (or b!1035356 bm!71558) bm!71560))

(assert (= (or b!1035351 bm!71557) bm!71561))

(assert (= (and d!296227 res!465077) b!1035354))

(declare-fun m!1206589 () Bool)

(assert (=> bm!71560 m!1206589))

(declare-fun m!1206591 () Bool)

(assert (=> b!1035354 m!1206591))

(assert (=> b!1035354 m!1206527))

(declare-fun m!1206593 () Bool)

(assert (=> bm!71561 m!1206593))

(declare-fun m!1206595 () Bool)

(assert (=> d!296227 m!1206595))

(assert (=> d!296227 m!1206461))

(assert (=> b!1035115 d!296227))

(declare-fun c!171835 () Bool)

(declare-fun call!71575 () Bool)

(declare-fun c!171834 () Bool)

(declare-fun bm!71568 () Bool)

(assert (=> bm!71568 (= call!71575 (validRegex!1343 (ite c!171834 (reg!3203 r!15766) (ite c!171835 (regTwo!6261 r!15766) (regTwo!6260 r!15766)))))))

(declare-fun b!1035387 () Bool)

(declare-fun e!659532 () Bool)

(declare-fun e!659531 () Bool)

(assert (=> b!1035387 (= e!659532 e!659531)))

(declare-fun res!465093 () Bool)

(assert (=> b!1035387 (= res!465093 (not (nullable!966 (reg!3203 r!15766))))))

(assert (=> b!1035387 (=> (not res!465093) (not e!659531))))

(declare-fun b!1035388 () Bool)

(declare-fun e!659530 () Bool)

(declare-fun call!71573 () Bool)

(assert (=> b!1035388 (= e!659530 call!71573)))

(declare-fun b!1035389 () Bool)

(assert (=> b!1035389 (= e!659531 call!71575)))

(declare-fun bm!71569 () Bool)

(declare-fun call!71574 () Bool)

(assert (=> bm!71569 (= call!71574 (validRegex!1343 (ite c!171835 (regOne!6261 r!15766) (regOne!6260 r!15766))))))

(declare-fun b!1035390 () Bool)

(declare-fun e!659535 () Bool)

(assert (=> b!1035390 (= e!659535 call!71573)))

(declare-fun b!1035391 () Bool)

(declare-fun res!465094 () Bool)

(assert (=> b!1035391 (=> (not res!465094) (not e!659535))))

(assert (=> b!1035391 (= res!465094 call!71574)))

(declare-fun e!659533 () Bool)

(assert (=> b!1035391 (= e!659533 e!659535)))

(declare-fun b!1035392 () Bool)

(declare-fun e!659534 () Bool)

(assert (=> b!1035392 (= e!659534 e!659530)))

(declare-fun res!465097 () Bool)

(assert (=> b!1035392 (=> (not res!465097) (not e!659530))))

(assert (=> b!1035392 (= res!465097 call!71574)))

(declare-fun b!1035393 () Bool)

(assert (=> b!1035393 (= e!659532 e!659533)))

(assert (=> b!1035393 (= c!171835 (is-Union!2874 r!15766))))

(declare-fun bm!71570 () Bool)

(assert (=> bm!71570 (= call!71573 call!71575)))

(declare-fun b!1035394 () Bool)

(declare-fun res!465096 () Bool)

(assert (=> b!1035394 (=> res!465096 e!659534)))

(assert (=> b!1035394 (= res!465096 (not (is-Concat!4707 r!15766)))))

(assert (=> b!1035394 (= e!659533 e!659534)))

(declare-fun b!1035386 () Bool)

(declare-fun e!659529 () Bool)

(assert (=> b!1035386 (= e!659529 e!659532)))

(assert (=> b!1035386 (= c!171834 (is-Star!2874 r!15766))))

(declare-fun d!296229 () Bool)

(declare-fun res!465095 () Bool)

(assert (=> d!296229 (=> res!465095 e!659529)))

(assert (=> d!296229 (= res!465095 (is-ElementMatch!2874 r!15766))))

(assert (=> d!296229 (= (validRegex!1343 r!15766) e!659529)))

(assert (= (and d!296229 (not res!465095)) b!1035386))

(assert (= (and b!1035386 c!171834) b!1035387))

(assert (= (and b!1035386 (not c!171834)) b!1035393))

(assert (= (and b!1035387 res!465093) b!1035389))

(assert (= (and b!1035393 c!171835) b!1035391))

(assert (= (and b!1035393 (not c!171835)) b!1035394))

(assert (= (and b!1035391 res!465094) b!1035390))

(assert (= (and b!1035394 (not res!465096)) b!1035392))

(assert (= (and b!1035392 res!465097) b!1035388))

(assert (= (or b!1035390 b!1035388) bm!71570))

(assert (= (or b!1035391 b!1035392) bm!71569))

(assert (= (or b!1035389 bm!71570) bm!71568))

(declare-fun m!1206619 () Bool)

(assert (=> bm!71568 m!1206619))

(declare-fun m!1206621 () Bool)

(assert (=> b!1035387 m!1206621))

(declare-fun m!1206623 () Bool)

(assert (=> bm!71569 m!1206623))

(assert (=> start!90076 d!296229))

(declare-fun b!1035407 () Bool)

(declare-fun e!659538 () Bool)

(declare-fun tp!313327 () Bool)

(assert (=> b!1035407 (= e!659538 tp!313327)))

(declare-fun b!1035408 () Bool)

(declare-fun tp!313330 () Bool)

(declare-fun tp!313329 () Bool)

(assert (=> b!1035408 (= e!659538 (and tp!313330 tp!313329))))

(declare-fun b!1035405 () Bool)

(assert (=> b!1035405 (= e!659538 tp_is_empty!5391)))

(declare-fun b!1035406 () Bool)

(declare-fun tp!313331 () Bool)

(declare-fun tp!313328 () Bool)

(assert (=> b!1035406 (= e!659538 (and tp!313331 tp!313328))))

(assert (=> b!1035119 (= tp!313295 e!659538)))

(assert (= (and b!1035119 (is-ElementMatch!2874 (regOne!6261 r!15766))) b!1035405))

(assert (= (and b!1035119 (is-Concat!4707 (regOne!6261 r!15766))) b!1035406))

(assert (= (and b!1035119 (is-Star!2874 (regOne!6261 r!15766))) b!1035407))

(assert (= (and b!1035119 (is-Union!2874 (regOne!6261 r!15766))) b!1035408))

(declare-fun b!1035411 () Bool)

(declare-fun e!659539 () Bool)

(declare-fun tp!313332 () Bool)

(assert (=> b!1035411 (= e!659539 tp!313332)))

(declare-fun b!1035412 () Bool)

(declare-fun tp!313335 () Bool)

(declare-fun tp!313334 () Bool)

(assert (=> b!1035412 (= e!659539 (and tp!313335 tp!313334))))

(declare-fun b!1035409 () Bool)

(assert (=> b!1035409 (= e!659539 tp_is_empty!5391)))

(declare-fun b!1035410 () Bool)

(declare-fun tp!313336 () Bool)

(declare-fun tp!313333 () Bool)

(assert (=> b!1035410 (= e!659539 (and tp!313336 tp!313333))))

(assert (=> b!1035119 (= tp!313298 e!659539)))

(assert (= (and b!1035119 (is-ElementMatch!2874 (regTwo!6261 r!15766))) b!1035409))

(assert (= (and b!1035119 (is-Concat!4707 (regTwo!6261 r!15766))) b!1035410))

(assert (= (and b!1035119 (is-Star!2874 (regTwo!6261 r!15766))) b!1035411))

(assert (= (and b!1035119 (is-Union!2874 (regTwo!6261 r!15766))) b!1035412))

(declare-fun b!1035415 () Bool)

(declare-fun e!659540 () Bool)

(declare-fun tp!313337 () Bool)

(assert (=> b!1035415 (= e!659540 tp!313337)))

(declare-fun b!1035416 () Bool)

(declare-fun tp!313340 () Bool)

(declare-fun tp!313339 () Bool)

(assert (=> b!1035416 (= e!659540 (and tp!313340 tp!313339))))

(declare-fun b!1035413 () Bool)

(assert (=> b!1035413 (= e!659540 tp_is_empty!5391)))

(declare-fun b!1035414 () Bool)

(declare-fun tp!313341 () Bool)

(declare-fun tp!313338 () Bool)

(assert (=> b!1035414 (= e!659540 (and tp!313341 tp!313338))))

(assert (=> b!1035116 (= tp!313294 e!659540)))

(assert (= (and b!1035116 (is-ElementMatch!2874 (reg!3203 r!15766))) b!1035413))

(assert (= (and b!1035116 (is-Concat!4707 (reg!3203 r!15766))) b!1035414))

(assert (= (and b!1035116 (is-Star!2874 (reg!3203 r!15766))) b!1035415))

(assert (= (and b!1035116 (is-Union!2874 (reg!3203 r!15766))) b!1035416))

(declare-fun b!1035421 () Bool)

(declare-fun e!659543 () Bool)

(declare-fun tp!313344 () Bool)

(assert (=> b!1035421 (= e!659543 (and tp_is_empty!5391 tp!313344))))

(assert (=> b!1035121 (= tp!313296 e!659543)))

(assert (= (and b!1035121 (is-Cons!10088 (t!101150 s!10566))) b!1035421))

(declare-fun b!1035424 () Bool)

(declare-fun e!659544 () Bool)

(declare-fun tp!313345 () Bool)

(assert (=> b!1035424 (= e!659544 tp!313345)))

(declare-fun b!1035425 () Bool)

(declare-fun tp!313348 () Bool)

(declare-fun tp!313347 () Bool)

(assert (=> b!1035425 (= e!659544 (and tp!313348 tp!313347))))

(declare-fun b!1035422 () Bool)

(assert (=> b!1035422 (= e!659544 tp_is_empty!5391)))

(declare-fun b!1035423 () Bool)

(declare-fun tp!313349 () Bool)

(declare-fun tp!313346 () Bool)

(assert (=> b!1035423 (= e!659544 (and tp!313349 tp!313346))))

(assert (=> b!1035114 (= tp!313293 e!659544)))

(assert (= (and b!1035114 (is-ElementMatch!2874 (regOne!6260 r!15766))) b!1035422))

(assert (= (and b!1035114 (is-Concat!4707 (regOne!6260 r!15766))) b!1035423))

(assert (= (and b!1035114 (is-Star!2874 (regOne!6260 r!15766))) b!1035424))

(assert (= (and b!1035114 (is-Union!2874 (regOne!6260 r!15766))) b!1035425))

(declare-fun b!1035428 () Bool)

(declare-fun e!659545 () Bool)

(declare-fun tp!313350 () Bool)

(assert (=> b!1035428 (= e!659545 tp!313350)))

(declare-fun b!1035429 () Bool)

(declare-fun tp!313353 () Bool)

(declare-fun tp!313352 () Bool)

(assert (=> b!1035429 (= e!659545 (and tp!313353 tp!313352))))

(declare-fun b!1035426 () Bool)

(assert (=> b!1035426 (= e!659545 tp_is_empty!5391)))

(declare-fun b!1035427 () Bool)

(declare-fun tp!313354 () Bool)

(declare-fun tp!313351 () Bool)

(assert (=> b!1035427 (= e!659545 (and tp!313354 tp!313351))))

(assert (=> b!1035114 (= tp!313297 e!659545)))

(assert (= (and b!1035114 (is-ElementMatch!2874 (regTwo!6260 r!15766))) b!1035426))

(assert (= (and b!1035114 (is-Concat!4707 (regTwo!6260 r!15766))) b!1035427))

(assert (= (and b!1035114 (is-Star!2874 (regTwo!6260 r!15766))) b!1035428))

(assert (= (and b!1035114 (is-Union!2874 (regTwo!6260 r!15766))) b!1035429))

(push 1)

(assert (not b!1035248))

(assert (not b!1035423))

(assert (not b!1035307))

(assert (not b!1035425))

(assert (not b!1035204))

(assert (not b!1035416))

(assert (not b!1035242))

(assert (not d!296223))

(assert (not b!1035240))

(assert (not d!296215))

(assert (not b!1035410))

(assert (not b!1035387))

(assert (not d!296227))

(assert (not bm!71546))

(assert (not d!296207))

(assert (not b!1035354))

(assert (not b!1035285))

(assert (not b!1035429))

(assert (not b!1035284))

(assert tp_is_empty!5391)

(assert (not b!1035411))

(assert (not bm!71569))

(assert (not b!1035421))

(assert (not bm!71545))

(assert (not b!1035250))

(assert (not b!1035281))

(assert (not b!1035280))

(assert (not d!296195))

(assert (not d!296219))

(assert (not b!1035294))

(assert (not bm!71561))

(assert (not b!1035277))

(assert (not b!1035407))

(assert (not b!1035415))

(assert (not b!1035412))

(assert (not b!1035237))

(assert (not b!1035406))

(assert (not b!1035408))

(assert (not b!1035306))

(assert (not b!1035249))

(assert (not d!296225))

(assert (not bm!71542))

(assert (not bm!71560))

(assert (not d!296213))

(assert (not b!1035279))

(assert (not bm!71541))

(assert (not b!1035305))

(assert (not bm!71568))

(assert (not b!1035428))

(assert (not d!296217))

(assert (not b!1035297))

(assert (not b!1035427))

(assert (not b!1035299))

(assert (not d!296211))

(assert (not b!1035414))

(assert (not b!1035424))

(assert (not b!1035206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

