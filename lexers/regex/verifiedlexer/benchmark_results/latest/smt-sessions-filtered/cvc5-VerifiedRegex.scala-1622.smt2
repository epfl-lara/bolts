; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83060 () Bool)

(assert start!83060)

(declare-fun b!926178 () Bool)

(assert (=> b!926178 true))

(assert (=> b!926178 true))

(declare-fun lambda!30642 () Int)

(declare-fun lambda!30641 () Int)

(assert (=> b!926178 (not (= lambda!30642 lambda!30641))))

(assert (=> b!926178 true))

(assert (=> b!926178 true))

(declare-fun b!926172 () Bool)

(declare-fun e!602490 () Bool)

(declare-fun e!602488 () Bool)

(assert (=> b!926172 (= e!602490 (not e!602488))))

(declare-fun res!421165 () Bool)

(assert (=> b!926172 (=> res!421165 e!602488)))

(declare-fun lt!339711 () Bool)

(declare-datatypes ((C!5574 0))(
  ( (C!5575 (val!3035 Int)) )
))
(declare-datatypes ((Regex!2502 0))(
  ( (ElementMatch!2502 (c!150321 C!5574)) (Concat!4335 (regOne!5516 Regex!2502) (regTwo!5516 Regex!2502)) (EmptyExpr!2502) (Star!2502 (reg!2831 Regex!2502)) (EmptyLang!2502) (Union!2502 (regOne!5517 Regex!2502) (regTwo!5517 Regex!2502)) )
))
(declare-fun r!15766 () Regex!2502)

(assert (=> b!926172 (= res!421165 (or lt!339711 (and (is-Concat!4335 r!15766) (is-EmptyExpr!2502 (regOne!5516 r!15766))) (and (is-Concat!4335 r!15766) (is-EmptyExpr!2502 (regTwo!5516 r!15766))) (not (is-Concat!4335 r!15766))))))

(declare-datatypes ((List!9732 0))(
  ( (Nil!9716) (Cons!9716 (h!15117 C!5574) (t!100778 List!9732)) )
))
(declare-fun s!10566 () List!9732)

(declare-fun matchRSpec!303 (Regex!2502 List!9732) Bool)

(assert (=> b!926172 (= lt!339711 (matchRSpec!303 r!15766 s!10566))))

(declare-fun matchR!1040 (Regex!2502 List!9732) Bool)

(assert (=> b!926172 (= lt!339711 (matchR!1040 r!15766 s!10566))))

(declare-datatypes ((Unit!14623 0))(
  ( (Unit!14624) )
))
(declare-fun lt!339710 () Unit!14623)

(declare-fun mainMatchTheorem!303 (Regex!2502 List!9732) Unit!14623)

(assert (=> b!926172 (= lt!339710 (mainMatchTheorem!303 r!15766 s!10566))))

(declare-fun b!926173 () Bool)

(declare-fun e!602491 () Bool)

(declare-fun tp!287880 () Bool)

(assert (=> b!926173 (= e!602491 tp!287880)))

(declare-fun b!926174 () Bool)

(declare-fun e!602492 () Bool)

(declare-fun validRegex!971 (Regex!2502) Bool)

(declare-fun removeUselessConcat!179 (Regex!2502) Regex!2502)

(assert (=> b!926174 (= e!602492 (validRegex!971 (removeUselessConcat!179 r!15766)))))

(declare-fun b!926175 () Bool)

(declare-fun e!602489 () Bool)

(declare-fun tp_is_empty!4647 () Bool)

(declare-fun tp!287879 () Bool)

(assert (=> b!926175 (= e!602489 (and tp_is_empty!4647 tp!287879))))

(declare-fun b!926176 () Bool)

(declare-fun res!421166 () Bool)

(assert (=> b!926176 (=> res!421166 e!602492)))

(assert (=> b!926176 (= res!421166 (matchR!1040 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766))) s!10566))))

(declare-fun b!926177 () Bool)

(assert (=> b!926177 (= e!602491 tp_is_empty!4647)))

(assert (=> b!926178 (= e!602488 e!602492)))

(declare-fun res!421167 () Bool)

(assert (=> b!926178 (=> res!421167 e!602492)))

(declare-fun isEmpty!5973 (List!9732) Bool)

(assert (=> b!926178 (= res!421167 (isEmpty!5973 s!10566))))

(declare-fun Exists!273 (Int) Bool)

(assert (=> b!926178 (= (Exists!273 lambda!30641) (Exists!273 lambda!30642))))

(declare-fun lt!339713 () Unit!14623)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!185 (Regex!2502 Regex!2502 List!9732) Unit!14623)

(assert (=> b!926178 (= lt!339713 (lemmaExistCutMatchRandMatchRSpecEquivalent!185 (regOne!5516 r!15766) (regTwo!5516 r!15766) s!10566))))

(declare-datatypes ((tuple2!10990 0))(
  ( (tuple2!10991 (_1!6321 List!9732) (_2!6321 List!9732)) )
))
(declare-datatypes ((Option!2137 0))(
  ( (None!2136) (Some!2136 (v!19553 tuple2!10990)) )
))
(declare-fun isDefined!1779 (Option!2137) Bool)

(declare-fun findConcatSeparation!243 (Regex!2502 Regex!2502 List!9732 List!9732 List!9732) Option!2137)

(assert (=> b!926178 (= (isDefined!1779 (findConcatSeparation!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) Nil!9716 s!10566 s!10566)) (Exists!273 lambda!30641))))

(declare-fun lt!339712 () Unit!14623)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!243 (Regex!2502 Regex!2502 List!9732) Unit!14623)

(assert (=> b!926178 (= lt!339712 (lemmaFindConcatSeparationEquivalentToExists!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) s!10566))))

(declare-fun b!926179 () Bool)

(declare-fun tp!287878 () Bool)

(declare-fun tp!287881 () Bool)

(assert (=> b!926179 (= e!602491 (and tp!287878 tp!287881))))

(declare-fun res!421168 () Bool)

(assert (=> start!83060 (=> (not res!421168) (not e!602490))))

(assert (=> start!83060 (= res!421168 (validRegex!971 r!15766))))

(assert (=> start!83060 e!602490))

(assert (=> start!83060 e!602491))

(assert (=> start!83060 e!602489))

(declare-fun b!926180 () Bool)

(declare-fun tp!287877 () Bool)

(declare-fun tp!287882 () Bool)

(assert (=> b!926180 (= e!602491 (and tp!287877 tp!287882))))

(assert (= (and start!83060 res!421168) b!926172))

(assert (= (and b!926172 (not res!421165)) b!926178))

(assert (= (and b!926178 (not res!421167)) b!926176))

(assert (= (and b!926176 (not res!421166)) b!926174))

(assert (= (and start!83060 (is-ElementMatch!2502 r!15766)) b!926177))

(assert (= (and start!83060 (is-Concat!4335 r!15766)) b!926180))

(assert (= (and start!83060 (is-Star!2502 r!15766)) b!926173))

(assert (= (and start!83060 (is-Union!2502 r!15766)) b!926179))

(assert (= (and start!83060 (is-Cons!9716 s!10566)) b!926175))

(declare-fun m!1151421 () Bool)

(assert (=> start!83060 m!1151421))

(declare-fun m!1151423 () Bool)

(assert (=> b!926172 m!1151423))

(declare-fun m!1151425 () Bool)

(assert (=> b!926172 m!1151425))

(declare-fun m!1151427 () Bool)

(assert (=> b!926172 m!1151427))

(declare-fun m!1151429 () Bool)

(assert (=> b!926178 m!1151429))

(declare-fun m!1151431 () Bool)

(assert (=> b!926178 m!1151431))

(declare-fun m!1151433 () Bool)

(assert (=> b!926178 m!1151433))

(declare-fun m!1151435 () Bool)

(assert (=> b!926178 m!1151435))

(declare-fun m!1151437 () Bool)

(assert (=> b!926178 m!1151437))

(declare-fun m!1151439 () Bool)

(assert (=> b!926178 m!1151439))

(declare-fun m!1151441 () Bool)

(assert (=> b!926178 m!1151441))

(assert (=> b!926178 m!1151429))

(assert (=> b!926178 m!1151433))

(declare-fun m!1151443 () Bool)

(assert (=> b!926176 m!1151443))

(declare-fun m!1151445 () Bool)

(assert (=> b!926176 m!1151445))

(declare-fun m!1151447 () Bool)

(assert (=> b!926176 m!1151447))

(declare-fun m!1151449 () Bool)

(assert (=> b!926174 m!1151449))

(assert (=> b!926174 m!1151449))

(declare-fun m!1151451 () Bool)

(assert (=> b!926174 m!1151451))

(push 1)

(assert (not b!926173))

(assert tp_is_empty!4647)

(assert (not b!926175))

(assert (not start!83060))

(assert (not b!926179))

(assert (not b!926180))

(assert (not b!926178))

(assert (not b!926172))

(assert (not b!926176))

(assert (not b!926174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!237554 () Bool)

(declare-fun b!926267 () Bool)

(assert (= bs!237554 (and b!926267 b!926178)))

(declare-fun lambda!30655 () Int)

(assert (=> bs!237554 (not (= lambda!30655 lambda!30641))))

(assert (=> bs!237554 (not (= lambda!30655 lambda!30642))))

(assert (=> b!926267 true))

(assert (=> b!926267 true))

(declare-fun bs!237555 () Bool)

(declare-fun b!926265 () Bool)

(assert (= bs!237555 (and b!926265 b!926178)))

(declare-fun lambda!30656 () Int)

(assert (=> bs!237555 (not (= lambda!30656 lambda!30641))))

(assert (=> bs!237555 (= lambda!30656 lambda!30642)))

(declare-fun bs!237556 () Bool)

(assert (= bs!237556 (and b!926265 b!926267)))

(assert (=> bs!237556 (not (= lambda!30656 lambda!30655))))

(assert (=> b!926265 true))

(assert (=> b!926265 true))

(declare-fun bm!56617 () Bool)

(declare-fun c!150334 () Bool)

(declare-fun call!56623 () Bool)

(assert (=> bm!56617 (= call!56623 (Exists!273 (ite c!150334 lambda!30655 lambda!30656)))))

(declare-fun b!926261 () Bool)

(declare-fun c!150331 () Bool)

(assert (=> b!926261 (= c!150331 (is-Union!2502 r!15766))))

(declare-fun e!602538 () Bool)

(declare-fun e!602537 () Bool)

(assert (=> b!926261 (= e!602538 e!602537)))

(declare-fun b!926262 () Bool)

(declare-fun e!602536 () Bool)

(assert (=> b!926262 (= e!602537 e!602536)))

(declare-fun res!421211 () Bool)

(assert (=> b!926262 (= res!421211 (matchRSpec!303 (regOne!5517 r!15766) s!10566))))

(assert (=> b!926262 (=> res!421211 e!602536)))

(declare-fun b!926263 () Bool)

(declare-fun e!602534 () Bool)

(assert (=> b!926263 (= e!602537 e!602534)))

(assert (=> b!926263 (= c!150334 (is-Star!2502 r!15766))))

(declare-fun b!926264 () Bool)

(declare-fun res!421209 () Bool)

(declare-fun e!602532 () Bool)

(assert (=> b!926264 (=> res!421209 e!602532)))

(declare-fun call!56622 () Bool)

(assert (=> b!926264 (= res!421209 call!56622)))

(assert (=> b!926264 (= e!602534 e!602532)))

(assert (=> b!926265 (= e!602534 call!56623)))

(declare-fun b!926260 () Bool)

(assert (=> b!926260 (= e!602536 (matchRSpec!303 (regTwo!5517 r!15766) s!10566))))

(declare-fun d!281071 () Bool)

(declare-fun c!150332 () Bool)

(assert (=> d!281071 (= c!150332 (is-EmptyExpr!2502 r!15766))))

(declare-fun e!602533 () Bool)

(assert (=> d!281071 (= (matchRSpec!303 r!15766 s!10566) e!602533)))

(declare-fun bm!56618 () Bool)

(assert (=> bm!56618 (= call!56622 (isEmpty!5973 s!10566))))

(declare-fun b!926266 () Bool)

(declare-fun c!150333 () Bool)

(assert (=> b!926266 (= c!150333 (is-ElementMatch!2502 r!15766))))

(declare-fun e!602535 () Bool)

(assert (=> b!926266 (= e!602535 e!602538)))

(assert (=> b!926267 (= e!602532 call!56623)))

(declare-fun b!926268 () Bool)

(assert (=> b!926268 (= e!602533 e!602535)))

(declare-fun res!421210 () Bool)

(assert (=> b!926268 (= res!421210 (not (is-EmptyLang!2502 r!15766)))))

(assert (=> b!926268 (=> (not res!421210) (not e!602535))))

(declare-fun b!926269 () Bool)

(assert (=> b!926269 (= e!602538 (= s!10566 (Cons!9716 (c!150321 r!15766) Nil!9716)))))

(declare-fun b!926270 () Bool)

(assert (=> b!926270 (= e!602533 call!56622)))

(assert (= (and d!281071 c!150332) b!926270))

(assert (= (and d!281071 (not c!150332)) b!926268))

(assert (= (and b!926268 res!421210) b!926266))

(assert (= (and b!926266 c!150333) b!926269))

(assert (= (and b!926266 (not c!150333)) b!926261))

(assert (= (and b!926261 c!150331) b!926262))

(assert (= (and b!926261 (not c!150331)) b!926263))

(assert (= (and b!926262 (not res!421211)) b!926260))

(assert (= (and b!926263 c!150334) b!926264))

(assert (= (and b!926263 (not c!150334)) b!926265))

(assert (= (and b!926264 (not res!421209)) b!926267))

(assert (= (or b!926267 b!926265) bm!56617))

(assert (= (or b!926270 b!926264) bm!56618))

(declare-fun m!1151485 () Bool)

(assert (=> bm!56617 m!1151485))

(declare-fun m!1151487 () Bool)

(assert (=> b!926262 m!1151487))

(declare-fun m!1151489 () Bool)

(assert (=> b!926260 m!1151489))

(assert (=> bm!56618 m!1151439))

(assert (=> b!926172 d!281071))

(declare-fun b!926317 () Bool)

(declare-fun e!602573 () Bool)

(declare-fun derivativeStep!512 (Regex!2502 C!5574) Regex!2502)

(declare-fun head!1665 (List!9732) C!5574)

(declare-fun tail!1227 (List!9732) List!9732)

(assert (=> b!926317 (= e!602573 (matchR!1040 (derivativeStep!512 r!15766 (head!1665 s!10566)) (tail!1227 s!10566)))))

(declare-fun b!926318 () Bool)

(declare-fun e!602571 () Bool)

(declare-fun lt!339728 () Bool)

(declare-fun call!56632 () Bool)

(assert (=> b!926318 (= e!602571 (= lt!339728 call!56632))))

(declare-fun bm!56627 () Bool)

(assert (=> bm!56627 (= call!56632 (isEmpty!5973 s!10566))))

(declare-fun b!926319 () Bool)

(declare-fun e!602567 () Bool)

(assert (=> b!926319 (= e!602571 e!602567)))

(declare-fun c!150345 () Bool)

(assert (=> b!926319 (= c!150345 (is-EmptyLang!2502 r!15766))))

(declare-fun b!926320 () Bool)

(declare-fun e!602570 () Bool)

(assert (=> b!926320 (= e!602570 (not (= (head!1665 s!10566) (c!150321 r!15766))))))

(declare-fun d!281075 () Bool)

(assert (=> d!281075 e!602571))

(declare-fun c!150346 () Bool)

(assert (=> d!281075 (= c!150346 (is-EmptyExpr!2502 r!15766))))

(assert (=> d!281075 (= lt!339728 e!602573)))

(declare-fun c!150347 () Bool)

(assert (=> d!281075 (= c!150347 (isEmpty!5973 s!10566))))

(assert (=> d!281075 (validRegex!971 r!15766)))

(assert (=> d!281075 (= (matchR!1040 r!15766 s!10566) lt!339728)))

(declare-fun b!926321 () Bool)

(declare-fun e!602572 () Bool)

(declare-fun e!602568 () Bool)

(assert (=> b!926321 (= e!602572 e!602568)))

(declare-fun res!421241 () Bool)

(assert (=> b!926321 (=> (not res!421241) (not e!602568))))

(assert (=> b!926321 (= res!421241 (not lt!339728))))

(declare-fun b!926322 () Bool)

(declare-fun res!421239 () Bool)

(assert (=> b!926322 (=> res!421239 e!602570)))

(assert (=> b!926322 (= res!421239 (not (isEmpty!5973 (tail!1227 s!10566))))))

(declare-fun b!926323 () Bool)

(declare-fun res!421245 () Bool)

(declare-fun e!602569 () Bool)

(assert (=> b!926323 (=> (not res!421245) (not e!602569))))

(assert (=> b!926323 (= res!421245 (not call!56632))))

(declare-fun b!926324 () Bool)

(declare-fun res!421240 () Bool)

(assert (=> b!926324 (=> res!421240 e!602572)))

(assert (=> b!926324 (= res!421240 e!602569)))

(declare-fun res!421242 () Bool)

(assert (=> b!926324 (=> (not res!421242) (not e!602569))))

(assert (=> b!926324 (= res!421242 lt!339728)))

(declare-fun b!926325 () Bool)

(assert (=> b!926325 (= e!602568 e!602570)))

(declare-fun res!421244 () Bool)

(assert (=> b!926325 (=> res!421244 e!602570)))

(assert (=> b!926325 (= res!421244 call!56632)))

(declare-fun b!926326 () Bool)

(declare-fun nullable!702 (Regex!2502) Bool)

(assert (=> b!926326 (= e!602573 (nullable!702 r!15766))))

(declare-fun b!926327 () Bool)

(assert (=> b!926327 (= e!602567 (not lt!339728))))

(declare-fun b!926328 () Bool)

(assert (=> b!926328 (= e!602569 (= (head!1665 s!10566) (c!150321 r!15766)))))

(declare-fun b!926329 () Bool)

(declare-fun res!421238 () Bool)

(assert (=> b!926329 (=> res!421238 e!602572)))

(assert (=> b!926329 (= res!421238 (not (is-ElementMatch!2502 r!15766)))))

(assert (=> b!926329 (= e!602567 e!602572)))

(declare-fun b!926330 () Bool)

(declare-fun res!421243 () Bool)

(assert (=> b!926330 (=> (not res!421243) (not e!602569))))

(assert (=> b!926330 (= res!421243 (isEmpty!5973 (tail!1227 s!10566)))))

(assert (= (and d!281075 c!150347) b!926326))

(assert (= (and d!281075 (not c!150347)) b!926317))

(assert (= (and d!281075 c!150346) b!926318))

(assert (= (and d!281075 (not c!150346)) b!926319))

(assert (= (and b!926319 c!150345) b!926327))

(assert (= (and b!926319 (not c!150345)) b!926329))

(assert (= (and b!926329 (not res!421238)) b!926324))

(assert (= (and b!926324 res!421242) b!926323))

(assert (= (and b!926323 res!421245) b!926330))

(assert (= (and b!926330 res!421243) b!926328))

(assert (= (and b!926324 (not res!421240)) b!926321))

(assert (= (and b!926321 res!421241) b!926325))

(assert (= (and b!926325 (not res!421244)) b!926322))

(assert (= (and b!926322 (not res!421239)) b!926320))

(assert (= (or b!926318 b!926323 b!926325) bm!56627))

(declare-fun m!1151491 () Bool)

(assert (=> b!926317 m!1151491))

(assert (=> b!926317 m!1151491))

(declare-fun m!1151493 () Bool)

(assert (=> b!926317 m!1151493))

(declare-fun m!1151495 () Bool)

(assert (=> b!926317 m!1151495))

(assert (=> b!926317 m!1151493))

(assert (=> b!926317 m!1151495))

(declare-fun m!1151497 () Bool)

(assert (=> b!926317 m!1151497))

(declare-fun m!1151499 () Bool)

(assert (=> b!926326 m!1151499))

(assert (=> b!926330 m!1151495))

(assert (=> b!926330 m!1151495))

(declare-fun m!1151501 () Bool)

(assert (=> b!926330 m!1151501))

(assert (=> b!926322 m!1151495))

(assert (=> b!926322 m!1151495))

(assert (=> b!926322 m!1151501))

(assert (=> d!281075 m!1151439))

(assert (=> d!281075 m!1151421))

(assert (=> b!926320 m!1151491))

(assert (=> bm!56627 m!1151439))

(assert (=> b!926328 m!1151491))

(assert (=> b!926172 d!281075))

(declare-fun d!281077 () Bool)

(assert (=> d!281077 (= (matchR!1040 r!15766 s!10566) (matchRSpec!303 r!15766 s!10566))))

(declare-fun lt!339731 () Unit!14623)

(declare-fun choose!5696 (Regex!2502 List!9732) Unit!14623)

(assert (=> d!281077 (= lt!339731 (choose!5696 r!15766 s!10566))))

(assert (=> d!281077 (validRegex!971 r!15766)))

(assert (=> d!281077 (= (mainMatchTheorem!303 r!15766 s!10566) lt!339731)))

(declare-fun bs!237557 () Bool)

(assert (= bs!237557 d!281077))

(assert (=> bs!237557 m!1151425))

(assert (=> bs!237557 m!1151423))

(declare-fun m!1151503 () Bool)

(assert (=> bs!237557 m!1151503))

(assert (=> bs!237557 m!1151421))

(assert (=> b!926172 d!281077))

(declare-fun b!926358 () Bool)

(declare-fun e!602596 () Bool)

(declare-fun e!602600 () Bool)

(assert (=> b!926358 (= e!602596 e!602600)))

(declare-fun res!421265 () Bool)

(assert (=> b!926358 (=> (not res!421265) (not e!602600))))

(declare-fun call!56643 () Bool)

(assert (=> b!926358 (= res!421265 call!56643)))

(declare-fun b!926359 () Bool)

(declare-fun e!602595 () Bool)

(declare-fun e!602601 () Bool)

(assert (=> b!926359 (= e!602595 e!602601)))

(declare-fun c!150354 () Bool)

(assert (=> b!926359 (= c!150354 (is-Star!2502 r!15766))))

(declare-fun b!926360 () Bool)

(declare-fun e!602599 () Bool)

(assert (=> b!926360 (= e!602601 e!602599)))

(declare-fun res!421261 () Bool)

(assert (=> b!926360 (= res!421261 (not (nullable!702 (reg!2831 r!15766))))))

(assert (=> b!926360 (=> (not res!421261) (not e!602599))))

(declare-fun b!926361 () Bool)

(declare-fun call!56644 () Bool)

(assert (=> b!926361 (= e!602599 call!56644)))

(declare-fun b!926362 () Bool)

(declare-fun call!56642 () Bool)

(assert (=> b!926362 (= e!602600 call!56642)))

(declare-fun b!926363 () Bool)

(declare-fun e!602597 () Bool)

(assert (=> b!926363 (= e!602601 e!602597)))

(declare-fun c!150355 () Bool)

(assert (=> b!926363 (= c!150355 (is-Union!2502 r!15766))))

(declare-fun bm!56637 () Bool)

(assert (=> bm!56637 (= call!56644 (validRegex!971 (ite c!150354 (reg!2831 r!15766) (ite c!150355 (regOne!5517 r!15766) (regOne!5516 r!15766)))))))

(declare-fun d!281079 () Bool)

(declare-fun res!421262 () Bool)

(assert (=> d!281079 (=> res!421262 e!602595)))

(assert (=> d!281079 (= res!421262 (is-ElementMatch!2502 r!15766))))

(assert (=> d!281079 (= (validRegex!971 r!15766) e!602595)))

(declare-fun b!926364 () Bool)

(declare-fun res!421264 () Bool)

(assert (=> b!926364 (=> res!421264 e!602596)))

(assert (=> b!926364 (= res!421264 (not (is-Concat!4335 r!15766)))))

(assert (=> b!926364 (= e!602597 e!602596)))

(declare-fun bm!56638 () Bool)

(assert (=> bm!56638 (= call!56642 (validRegex!971 (ite c!150355 (regTwo!5517 r!15766) (regTwo!5516 r!15766))))))

(declare-fun b!926365 () Bool)

(declare-fun res!421263 () Bool)

(declare-fun e!602598 () Bool)

(assert (=> b!926365 (=> (not res!421263) (not e!602598))))

(assert (=> b!926365 (= res!421263 call!56643)))

(assert (=> b!926365 (= e!602597 e!602598)))

(declare-fun bm!56639 () Bool)

(assert (=> bm!56639 (= call!56643 call!56644)))

(declare-fun b!926366 () Bool)

(assert (=> b!926366 (= e!602598 call!56642)))

(assert (= (and d!281079 (not res!421262)) b!926359))

(assert (= (and b!926359 c!150354) b!926360))

(assert (= (and b!926359 (not c!150354)) b!926363))

(assert (= (and b!926360 res!421261) b!926361))

(assert (= (and b!926363 c!150355) b!926365))

(assert (= (and b!926363 (not c!150355)) b!926364))

(assert (= (and b!926365 res!421263) b!926366))

(assert (= (and b!926364 (not res!421264)) b!926358))

(assert (= (and b!926358 res!421265) b!926362))

(assert (= (or b!926366 b!926362) bm!56638))

(assert (= (or b!926365 b!926358) bm!56639))

(assert (= (or b!926361 bm!56639) bm!56637))

(declare-fun m!1151511 () Bool)

(assert (=> b!926360 m!1151511))

(declare-fun m!1151513 () Bool)

(assert (=> bm!56637 m!1151513))

(declare-fun m!1151515 () Bool)

(assert (=> bm!56638 m!1151515))

(assert (=> start!83060 d!281079))

(declare-fun d!281083 () Bool)

(assert (=> d!281083 (= (isEmpty!5973 s!10566) (is-Nil!9716 s!10566))))

(assert (=> b!926178 d!281083))

(declare-fun d!281085 () Bool)

(declare-fun isEmpty!5975 (Option!2137) Bool)

(assert (=> d!281085 (= (isDefined!1779 (findConcatSeparation!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) Nil!9716 s!10566 s!10566)) (not (isEmpty!5975 (findConcatSeparation!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) Nil!9716 s!10566 s!10566))))))

(declare-fun bs!237558 () Bool)

(assert (= bs!237558 d!281085))

(assert (=> bs!237558 m!1151433))

(declare-fun m!1151517 () Bool)

(assert (=> bs!237558 m!1151517))

(assert (=> b!926178 d!281085))

(declare-fun d!281087 () Bool)

(declare-fun choose!5697 (Int) Bool)

(assert (=> d!281087 (= (Exists!273 lambda!30642) (choose!5697 lambda!30642))))

(declare-fun bs!237559 () Bool)

(assert (= bs!237559 d!281087))

(declare-fun m!1151519 () Bool)

(assert (=> bs!237559 m!1151519))

(assert (=> b!926178 d!281087))

(declare-fun bs!237560 () Bool)

(declare-fun d!281089 () Bool)

(assert (= bs!237560 (and d!281089 b!926178)))

(declare-fun lambda!30659 () Int)

(assert (=> bs!237560 (= lambda!30659 lambda!30641)))

(assert (=> bs!237560 (not (= lambda!30659 lambda!30642))))

(declare-fun bs!237561 () Bool)

(assert (= bs!237561 (and d!281089 b!926267)))

(assert (=> bs!237561 (not (= lambda!30659 lambda!30655))))

(declare-fun bs!237562 () Bool)

(assert (= bs!237562 (and d!281089 b!926265)))

(assert (=> bs!237562 (not (= lambda!30659 lambda!30656))))

(assert (=> d!281089 true))

(assert (=> d!281089 true))

(assert (=> d!281089 true))

(assert (=> d!281089 (= (isDefined!1779 (findConcatSeparation!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) Nil!9716 s!10566 s!10566)) (Exists!273 lambda!30659))))

(declare-fun lt!339734 () Unit!14623)

(declare-fun choose!5698 (Regex!2502 Regex!2502 List!9732) Unit!14623)

(assert (=> d!281089 (= lt!339734 (choose!5698 (regOne!5516 r!15766) (regTwo!5516 r!15766) s!10566))))

(assert (=> d!281089 (validRegex!971 (regOne!5516 r!15766))))

(assert (=> d!281089 (= (lemmaFindConcatSeparationEquivalentToExists!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) s!10566) lt!339734)))

(declare-fun bs!237563 () Bool)

(assert (= bs!237563 d!281089))

(assert (=> bs!237563 m!1151433))

(assert (=> bs!237563 m!1151435))

(declare-fun m!1151521 () Bool)

(assert (=> bs!237563 m!1151521))

(assert (=> bs!237563 m!1151433))

(declare-fun m!1151523 () Bool)

(assert (=> bs!237563 m!1151523))

(declare-fun m!1151525 () Bool)

(assert (=> bs!237563 m!1151525))

(assert (=> b!926178 d!281089))

(declare-fun b!926421 () Bool)

(declare-fun res!421296 () Bool)

(declare-fun e!602632 () Bool)

(assert (=> b!926421 (=> (not res!421296) (not e!602632))))

(declare-fun lt!339743 () Option!2137)

(declare-fun get!3191 (Option!2137) tuple2!10990)

(assert (=> b!926421 (= res!421296 (matchR!1040 (regOne!5516 r!15766) (_1!6321 (get!3191 lt!339743))))))

(declare-fun b!926422 () Bool)

(declare-fun lt!339742 () Unit!14623)

(declare-fun lt!339741 () Unit!14623)

(assert (=> b!926422 (= lt!339742 lt!339741)))

(declare-fun ++!2580 (List!9732 List!9732) List!9732)

(assert (=> b!926422 (= (++!2580 (++!2580 Nil!9716 (Cons!9716 (h!15117 s!10566) Nil!9716)) (t!100778 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!193 (List!9732 C!5574 List!9732 List!9732) Unit!14623)

(assert (=> b!926422 (= lt!339741 (lemmaMoveElementToOtherListKeepsConcatEq!193 Nil!9716 (h!15117 s!10566) (t!100778 s!10566) s!10566))))

(declare-fun e!602636 () Option!2137)

(assert (=> b!926422 (= e!602636 (findConcatSeparation!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) (++!2580 Nil!9716 (Cons!9716 (h!15117 s!10566) Nil!9716)) (t!100778 s!10566) s!10566))))

(declare-fun b!926424 () Bool)

(declare-fun e!602633 () Bool)

(assert (=> b!926424 (= e!602633 (matchR!1040 (regTwo!5516 r!15766) s!10566))))

(declare-fun b!926425 () Bool)

(declare-fun res!421300 () Bool)

(assert (=> b!926425 (=> (not res!421300) (not e!602632))))

(assert (=> b!926425 (= res!421300 (matchR!1040 (regTwo!5516 r!15766) (_2!6321 (get!3191 lt!339743))))))

(declare-fun b!926426 () Bool)

(assert (=> b!926426 (= e!602632 (= (++!2580 (_1!6321 (get!3191 lt!339743)) (_2!6321 (get!3191 lt!339743))) s!10566))))

(declare-fun b!926427 () Bool)

(assert (=> b!926427 (= e!602636 None!2136)))

(declare-fun b!926428 () Bool)

(declare-fun e!602634 () Bool)

(assert (=> b!926428 (= e!602634 (not (isDefined!1779 lt!339743)))))

(declare-fun b!926429 () Bool)

(declare-fun e!602635 () Option!2137)

(assert (=> b!926429 (= e!602635 e!602636)))

(declare-fun c!150369 () Bool)

(assert (=> b!926429 (= c!150369 (is-Nil!9716 s!10566))))

(declare-fun b!926423 () Bool)

(assert (=> b!926423 (= e!602635 (Some!2136 (tuple2!10991 Nil!9716 s!10566)))))

(declare-fun d!281091 () Bool)

(assert (=> d!281091 e!602634))

(declare-fun res!421298 () Bool)

(assert (=> d!281091 (=> res!421298 e!602634)))

(assert (=> d!281091 (= res!421298 e!602632)))

(declare-fun res!421297 () Bool)

(assert (=> d!281091 (=> (not res!421297) (not e!602632))))

(assert (=> d!281091 (= res!421297 (isDefined!1779 lt!339743))))

(assert (=> d!281091 (= lt!339743 e!602635)))

(declare-fun c!150368 () Bool)

(assert (=> d!281091 (= c!150368 e!602633)))

(declare-fun res!421299 () Bool)

(assert (=> d!281091 (=> (not res!421299) (not e!602633))))

(assert (=> d!281091 (= res!421299 (matchR!1040 (regOne!5516 r!15766) Nil!9716))))

(assert (=> d!281091 (validRegex!971 (regOne!5516 r!15766))))

(assert (=> d!281091 (= (findConcatSeparation!243 (regOne!5516 r!15766) (regTwo!5516 r!15766) Nil!9716 s!10566 s!10566) lt!339743)))

(assert (= (and d!281091 res!421299) b!926424))

(assert (= (and d!281091 c!150368) b!926423))

(assert (= (and d!281091 (not c!150368)) b!926429))

(assert (= (and b!926429 c!150369) b!926427))

(assert (= (and b!926429 (not c!150369)) b!926422))

(assert (= (and d!281091 res!421297) b!926421))

(assert (= (and b!926421 res!421296) b!926425))

(assert (= (and b!926425 res!421300) b!926426))

(assert (= (and d!281091 (not res!421298)) b!926428))

(declare-fun m!1151527 () Bool)

(assert (=> b!926424 m!1151527))

(declare-fun m!1151529 () Bool)

(assert (=> b!926428 m!1151529))

(declare-fun m!1151531 () Bool)

(assert (=> b!926421 m!1151531))

(declare-fun m!1151533 () Bool)

(assert (=> b!926421 m!1151533))

(declare-fun m!1151535 () Bool)

(assert (=> b!926422 m!1151535))

(assert (=> b!926422 m!1151535))

(declare-fun m!1151537 () Bool)

(assert (=> b!926422 m!1151537))

(declare-fun m!1151539 () Bool)

(assert (=> b!926422 m!1151539))

(assert (=> b!926422 m!1151535))

(declare-fun m!1151541 () Bool)

(assert (=> b!926422 m!1151541))

(assert (=> d!281091 m!1151529))

(declare-fun m!1151543 () Bool)

(assert (=> d!281091 m!1151543))

(assert (=> d!281091 m!1151523))

(assert (=> b!926425 m!1151531))

(declare-fun m!1151545 () Bool)

(assert (=> b!926425 m!1151545))

(assert (=> b!926426 m!1151531))

(declare-fun m!1151547 () Bool)

(assert (=> b!926426 m!1151547))

(assert (=> b!926178 d!281091))

(declare-fun bs!237565 () Bool)

(declare-fun d!281093 () Bool)

(assert (= bs!237565 (and d!281093 b!926178)))

(declare-fun lambda!30670 () Int)

(assert (=> bs!237565 (= lambda!30670 lambda!30641)))

(declare-fun bs!237567 () Bool)

(assert (= bs!237567 (and d!281093 b!926267)))

(assert (=> bs!237567 (not (= lambda!30670 lambda!30655))))

(declare-fun bs!237568 () Bool)

(assert (= bs!237568 (and d!281093 d!281089)))

(assert (=> bs!237568 (= lambda!30670 lambda!30659)))

(assert (=> bs!237565 (not (= lambda!30670 lambda!30642))))

(declare-fun bs!237569 () Bool)

(assert (= bs!237569 (and d!281093 b!926265)))

(assert (=> bs!237569 (not (= lambda!30670 lambda!30656))))

(assert (=> d!281093 true))

(assert (=> d!281093 true))

(assert (=> d!281093 true))

(declare-fun lambda!30671 () Int)

(assert (=> bs!237565 (not (= lambda!30671 lambda!30641))))

(assert (=> bs!237567 (not (= lambda!30671 lambda!30655))))

(declare-fun bs!237571 () Bool)

(assert (= bs!237571 d!281093))

(assert (=> bs!237571 (not (= lambda!30671 lambda!30670))))

(assert (=> bs!237568 (not (= lambda!30671 lambda!30659))))

(assert (=> bs!237565 (= lambda!30671 lambda!30642)))

(assert (=> bs!237569 (= lambda!30671 lambda!30656)))

(assert (=> d!281093 true))

(assert (=> d!281093 true))

(assert (=> d!281093 true))

(assert (=> d!281093 (= (Exists!273 lambda!30670) (Exists!273 lambda!30671))))

(declare-fun lt!339746 () Unit!14623)

(declare-fun choose!5699 (Regex!2502 Regex!2502 List!9732) Unit!14623)

(assert (=> d!281093 (= lt!339746 (choose!5699 (regOne!5516 r!15766) (regTwo!5516 r!15766) s!10566))))

(assert (=> d!281093 (validRegex!971 (regOne!5516 r!15766))))

(assert (=> d!281093 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!185 (regOne!5516 r!15766) (regTwo!5516 r!15766) s!10566) lt!339746)))

(declare-fun m!1151549 () Bool)

(assert (=> bs!237571 m!1151549))

(declare-fun m!1151551 () Bool)

(assert (=> bs!237571 m!1151551))

(declare-fun m!1151553 () Bool)

(assert (=> bs!237571 m!1151553))

(assert (=> bs!237571 m!1151523))

(assert (=> b!926178 d!281093))

(declare-fun d!281095 () Bool)

(assert (=> d!281095 (= (Exists!273 lambda!30641) (choose!5697 lambda!30641))))

(declare-fun bs!237572 () Bool)

(assert (= bs!237572 d!281095))

(declare-fun m!1151555 () Bool)

(assert (=> bs!237572 m!1151555))

(assert (=> b!926178 d!281095))

(declare-fun b!926449 () Bool)

(declare-fun e!602649 () Bool)

(declare-fun e!602653 () Bool)

(assert (=> b!926449 (= e!602649 e!602653)))

(declare-fun res!421316 () Bool)

(assert (=> b!926449 (=> (not res!421316) (not e!602653))))

(declare-fun call!56652 () Bool)

(assert (=> b!926449 (= res!421316 call!56652)))

(declare-fun b!926450 () Bool)

(declare-fun e!602648 () Bool)

(declare-fun e!602654 () Bool)

(assert (=> b!926450 (= e!602648 e!602654)))

(declare-fun c!150374 () Bool)

(assert (=> b!926450 (= c!150374 (is-Star!2502 (removeUselessConcat!179 r!15766)))))

(declare-fun b!926451 () Bool)

(declare-fun e!602652 () Bool)

(assert (=> b!926451 (= e!602654 e!602652)))

(declare-fun res!421312 () Bool)

(assert (=> b!926451 (= res!421312 (not (nullable!702 (reg!2831 (removeUselessConcat!179 r!15766)))))))

(assert (=> b!926451 (=> (not res!421312) (not e!602652))))

(declare-fun b!926452 () Bool)

(declare-fun call!56653 () Bool)

(assert (=> b!926452 (= e!602652 call!56653)))

(declare-fun b!926453 () Bool)

(declare-fun call!56651 () Bool)

(assert (=> b!926453 (= e!602653 call!56651)))

(declare-fun b!926454 () Bool)

(declare-fun e!602650 () Bool)

(assert (=> b!926454 (= e!602654 e!602650)))

(declare-fun c!150375 () Bool)

(assert (=> b!926454 (= c!150375 (is-Union!2502 (removeUselessConcat!179 r!15766)))))

(declare-fun bm!56646 () Bool)

(assert (=> bm!56646 (= call!56653 (validRegex!971 (ite c!150374 (reg!2831 (removeUselessConcat!179 r!15766)) (ite c!150375 (regOne!5517 (removeUselessConcat!179 r!15766)) (regOne!5516 (removeUselessConcat!179 r!15766))))))))

(declare-fun d!281097 () Bool)

(declare-fun res!421313 () Bool)

(assert (=> d!281097 (=> res!421313 e!602648)))

(assert (=> d!281097 (= res!421313 (is-ElementMatch!2502 (removeUselessConcat!179 r!15766)))))

(assert (=> d!281097 (= (validRegex!971 (removeUselessConcat!179 r!15766)) e!602648)))

(declare-fun b!926455 () Bool)

(declare-fun res!421315 () Bool)

(assert (=> b!926455 (=> res!421315 e!602649)))

(assert (=> b!926455 (= res!421315 (not (is-Concat!4335 (removeUselessConcat!179 r!15766))))))

(assert (=> b!926455 (= e!602650 e!602649)))

(declare-fun bm!56647 () Bool)

(assert (=> bm!56647 (= call!56651 (validRegex!971 (ite c!150375 (regTwo!5517 (removeUselessConcat!179 r!15766)) (regTwo!5516 (removeUselessConcat!179 r!15766)))))))

(declare-fun b!926456 () Bool)

(declare-fun res!421314 () Bool)

(declare-fun e!602651 () Bool)

(assert (=> b!926456 (=> (not res!421314) (not e!602651))))

(assert (=> b!926456 (= res!421314 call!56652)))

(assert (=> b!926456 (= e!602650 e!602651)))

(declare-fun bm!56648 () Bool)

(assert (=> bm!56648 (= call!56652 call!56653)))

(declare-fun b!926457 () Bool)

(assert (=> b!926457 (= e!602651 call!56651)))

(assert (= (and d!281097 (not res!421313)) b!926450))

(assert (= (and b!926450 c!150374) b!926451))

(assert (= (and b!926450 (not c!150374)) b!926454))

(assert (= (and b!926451 res!421312) b!926452))

(assert (= (and b!926454 c!150375) b!926456))

(assert (= (and b!926454 (not c!150375)) b!926455))

(assert (= (and b!926456 res!421314) b!926457))

(assert (= (and b!926455 (not res!421315)) b!926449))

(assert (= (and b!926449 res!421316) b!926453))

(assert (= (or b!926457 b!926453) bm!56647))

(assert (= (or b!926456 b!926449) bm!56648))

(assert (= (or b!926452 bm!56648) bm!56646))

(declare-fun m!1151563 () Bool)

(assert (=> b!926451 m!1151563))

(declare-fun m!1151565 () Bool)

(assert (=> bm!56646 m!1151565))

(declare-fun m!1151567 () Bool)

(assert (=> bm!56647 m!1151567))

(assert (=> b!926174 d!281097))

(declare-fun b!926480 () Bool)

(declare-fun e!602669 () Bool)

(declare-fun lt!339749 () Regex!2502)

(assert (=> b!926480 (= e!602669 (= (nullable!702 lt!339749) (nullable!702 r!15766)))))

(declare-fun b!926481 () Bool)

(declare-fun e!602668 () Regex!2502)

(declare-fun e!602667 () Regex!2502)

(assert (=> b!926481 (= e!602668 e!602667)))

(declare-fun c!150386 () Bool)

(assert (=> b!926481 (= c!150386 (is-Union!2502 r!15766))))

(declare-fun bm!56659 () Bool)

(declare-fun call!56666 () Regex!2502)

(declare-fun call!56664 () Regex!2502)

(assert (=> bm!56659 (= call!56666 call!56664)))

(declare-fun bm!56660 () Bool)

(declare-fun call!56667 () Regex!2502)

(assert (=> bm!56660 (= call!56664 call!56667)))

(declare-fun c!150388 () Bool)

(declare-fun bm!56661 () Bool)

(declare-fun c!150387 () Bool)

(declare-fun call!56665 () Regex!2502)

(declare-fun c!150389 () Bool)

(assert (=> bm!56661 (= call!56665 (removeUselessConcat!179 (ite c!150387 (regTwo!5516 r!15766) (ite c!150388 (regOne!5516 r!15766) (ite c!150389 (regTwo!5516 r!15766) (ite c!150386 (regTwo!5517 r!15766) (reg!2831 r!15766)))))))))

(declare-fun b!926483 () Bool)

(declare-fun c!150390 () Bool)

(assert (=> b!926483 (= c!150390 (is-Star!2502 r!15766))))

(declare-fun e!602671 () Regex!2502)

(assert (=> b!926483 (= e!602667 e!602671)))

(declare-fun b!926484 () Bool)

(declare-fun e!602672 () Regex!2502)

(assert (=> b!926484 (= e!602672 call!56667)))

(declare-fun b!926485 () Bool)

(assert (=> b!926485 (= c!150389 (is-Concat!4335 r!15766))))

(assert (=> b!926485 (= e!602672 e!602668)))

(declare-fun b!926486 () Bool)

(assert (=> b!926486 (= e!602671 r!15766)))

(declare-fun b!926487 () Bool)

(declare-fun call!56668 () Regex!2502)

(assert (=> b!926487 (= e!602668 (Concat!4335 call!56668 call!56664))))

(declare-fun b!926488 () Bool)

(assert (=> b!926488 (= e!602667 (Union!2502 call!56668 call!56666))))

(declare-fun b!926482 () Bool)

(declare-fun e!602670 () Regex!2502)

(assert (=> b!926482 (= e!602670 e!602672)))

(assert (=> b!926482 (= c!150388 (and (is-Concat!4335 r!15766) (is-EmptyExpr!2502 (regTwo!5516 r!15766))))))

(declare-fun d!281101 () Bool)

(assert (=> d!281101 e!602669))

(declare-fun res!421319 () Bool)

(assert (=> d!281101 (=> (not res!421319) (not e!602669))))

(assert (=> d!281101 (= res!421319 (validRegex!971 lt!339749))))

(assert (=> d!281101 (= lt!339749 e!602670)))

(assert (=> d!281101 (= c!150387 (and (is-Concat!4335 r!15766) (is-EmptyExpr!2502 (regOne!5516 r!15766))))))

(assert (=> d!281101 (validRegex!971 r!15766)))

(assert (=> d!281101 (= (removeUselessConcat!179 r!15766) lt!339749)))

(declare-fun b!926489 () Bool)

(assert (=> b!926489 (= e!602671 (Star!2502 call!56666))))

(declare-fun bm!56662 () Bool)

(assert (=> bm!56662 (= call!56668 (removeUselessConcat!179 (ite c!150389 (regOne!5516 r!15766) (regOne!5517 r!15766))))))

(declare-fun b!926490 () Bool)

(assert (=> b!926490 (= e!602670 call!56665)))

(declare-fun bm!56663 () Bool)

(assert (=> bm!56663 (= call!56667 call!56665)))

(assert (= (and d!281101 c!150387) b!926490))

(assert (= (and d!281101 (not c!150387)) b!926482))

(assert (= (and b!926482 c!150388) b!926484))

(assert (= (and b!926482 (not c!150388)) b!926485))

(assert (= (and b!926485 c!150389) b!926487))

(assert (= (and b!926485 (not c!150389)) b!926481))

(assert (= (and b!926481 c!150386) b!926488))

(assert (= (and b!926481 (not c!150386)) b!926483))

(assert (= (and b!926483 c!150390) b!926489))

(assert (= (and b!926483 (not c!150390)) b!926486))

(assert (= (or b!926488 b!926489) bm!56659))

(assert (= (or b!926487 bm!56659) bm!56660))

(assert (= (or b!926487 b!926488) bm!56662))

(assert (= (or b!926484 bm!56660) bm!56663))

(assert (= (or b!926490 bm!56663) bm!56661))

(assert (= (and d!281101 res!421319) b!926480))

(declare-fun m!1151569 () Bool)

(assert (=> b!926480 m!1151569))

(assert (=> b!926480 m!1151499))

(declare-fun m!1151571 () Bool)

(assert (=> bm!56661 m!1151571))

(declare-fun m!1151573 () Bool)

(assert (=> d!281101 m!1151573))

(assert (=> d!281101 m!1151421))

(declare-fun m!1151575 () Bool)

(assert (=> bm!56662 m!1151575))

(assert (=> b!926174 d!281101))

(declare-fun b!926491 () Bool)

(declare-fun e!602679 () Bool)

(assert (=> b!926491 (= e!602679 (matchR!1040 (derivativeStep!512 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766))) (head!1665 s!10566)) (tail!1227 s!10566)))))

(declare-fun b!926492 () Bool)

(declare-fun e!602677 () Bool)

(declare-fun lt!339750 () Bool)

(declare-fun call!56669 () Bool)

(assert (=> b!926492 (= e!602677 (= lt!339750 call!56669))))

(declare-fun bm!56664 () Bool)

(assert (=> bm!56664 (= call!56669 (isEmpty!5973 s!10566))))

(declare-fun b!926493 () Bool)

(declare-fun e!602673 () Bool)

(assert (=> b!926493 (= e!602677 e!602673)))

(declare-fun c!150391 () Bool)

(assert (=> b!926493 (= c!150391 (is-EmptyLang!2502 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766)))))))

(declare-fun b!926494 () Bool)

(declare-fun e!602676 () Bool)

(assert (=> b!926494 (= e!602676 (not (= (head!1665 s!10566) (c!150321 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766)))))))))

(declare-fun d!281103 () Bool)

(assert (=> d!281103 e!602677))

(declare-fun c!150392 () Bool)

(assert (=> d!281103 (= c!150392 (is-EmptyExpr!2502 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766)))))))

(assert (=> d!281103 (= lt!339750 e!602679)))

(declare-fun c!150393 () Bool)

(assert (=> d!281103 (= c!150393 (isEmpty!5973 s!10566))))

(assert (=> d!281103 (validRegex!971 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766))))))

(assert (=> d!281103 (= (matchR!1040 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766))) s!10566) lt!339750)))

(declare-fun b!926495 () Bool)

(declare-fun e!602678 () Bool)

(declare-fun e!602674 () Bool)

(assert (=> b!926495 (= e!602678 e!602674)))

(declare-fun res!421323 () Bool)

(assert (=> b!926495 (=> (not res!421323) (not e!602674))))

(assert (=> b!926495 (= res!421323 (not lt!339750))))

(declare-fun b!926496 () Bool)

(declare-fun res!421321 () Bool)

(assert (=> b!926496 (=> res!421321 e!602676)))

(assert (=> b!926496 (= res!421321 (not (isEmpty!5973 (tail!1227 s!10566))))))

(declare-fun b!926497 () Bool)

(declare-fun res!421327 () Bool)

(declare-fun e!602675 () Bool)

(assert (=> b!926497 (=> (not res!421327) (not e!602675))))

(assert (=> b!926497 (= res!421327 (not call!56669))))

(declare-fun b!926498 () Bool)

(declare-fun res!421322 () Bool)

(assert (=> b!926498 (=> res!421322 e!602678)))

(assert (=> b!926498 (= res!421322 e!602675)))

(declare-fun res!421324 () Bool)

(assert (=> b!926498 (=> (not res!421324) (not e!602675))))

(assert (=> b!926498 (= res!421324 lt!339750)))

(declare-fun b!926499 () Bool)

(assert (=> b!926499 (= e!602674 e!602676)))

(declare-fun res!421326 () Bool)

(assert (=> b!926499 (=> res!421326 e!602676)))

(assert (=> b!926499 (= res!421326 call!56669)))

(declare-fun b!926500 () Bool)

(assert (=> b!926500 (= e!602679 (nullable!702 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766)))))))

(declare-fun b!926501 () Bool)

(assert (=> b!926501 (= e!602673 (not lt!339750))))

(declare-fun b!926502 () Bool)

(assert (=> b!926502 (= e!602675 (= (head!1665 s!10566) (c!150321 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766))))))))

(declare-fun b!926503 () Bool)

(declare-fun res!421320 () Bool)

(assert (=> b!926503 (=> res!421320 e!602678)))

(assert (=> b!926503 (= res!421320 (not (is-ElementMatch!2502 (Concat!4335 (removeUselessConcat!179 (regOne!5516 r!15766)) (removeUselessConcat!179 (regTwo!5516 r!15766))))))))

(assert (=> b!926503 (= e!602673 e!602678)))

(declare-fun b!926504 () Bool)

(declare-fun res!421325 () Bool)

(assert (=> b!926504 (=> (not res!421325) (not e!602675))))

(assert (=> b!926504 (= res!421325 (isEmpty!5973 (tail!1227 s!10566)))))

(assert (= (and d!281103 c!150393) b!926500))

(assert (= (and d!281103 (not c!150393)) b!926491))

(assert (= (and d!281103 c!150392) b!926492))

(assert (= (and d!281103 (not c!150392)) b!926493))

(assert (= (and b!926493 c!150391) b!926501))

(assert (= (and b!926493 (not c!150391)) b!926503))

(assert (= (and b!926503 (not res!421320)) b!926498))

(assert (= (and b!926498 res!421324) b!926497))

(assert (= (and b!926497 res!421327) b!926504))

(assert (= (and b!926504 res!421325) b!926502))

(assert (= (and b!926498 (not res!421322)) b!926495))

(assert (= (and b!926495 res!421323) b!926499))

(assert (= (and b!926499 (not res!421326)) b!926496))

(assert (= (and b!926496 (not res!421321)) b!926494))

(assert (= (or b!926492 b!926497 b!926499) bm!56664))

(assert (=> b!926491 m!1151491))

(assert (=> b!926491 m!1151491))

(declare-fun m!1151577 () Bool)

(assert (=> b!926491 m!1151577))

(assert (=> b!926491 m!1151495))

(assert (=> b!926491 m!1151577))

(assert (=> b!926491 m!1151495))

(declare-fun m!1151579 () Bool)

(assert (=> b!926491 m!1151579))

(declare-fun m!1151581 () Bool)

(assert (=> b!926500 m!1151581))

(assert (=> b!926504 m!1151495))

(assert (=> b!926504 m!1151495))

(assert (=> b!926504 m!1151501))

(assert (=> b!926496 m!1151495))

(assert (=> b!926496 m!1151495))

(assert (=> b!926496 m!1151501))

(assert (=> d!281103 m!1151439))

(declare-fun m!1151583 () Bool)

(assert (=> d!281103 m!1151583))

(assert (=> b!926494 m!1151491))

(assert (=> bm!56664 m!1151439))

(assert (=> b!926502 m!1151491))

(assert (=> b!926176 d!281103))

(declare-fun b!926505 () Bool)

(declare-fun e!602682 () Bool)

(declare-fun lt!339751 () Regex!2502)

(assert (=> b!926505 (= e!602682 (= (nullable!702 lt!339751) (nullable!702 (regOne!5516 r!15766))))))

(declare-fun b!926506 () Bool)

(declare-fun e!602681 () Regex!2502)

(declare-fun e!602680 () Regex!2502)

(assert (=> b!926506 (= e!602681 e!602680)))

(declare-fun c!150394 () Bool)

(assert (=> b!926506 (= c!150394 (is-Union!2502 (regOne!5516 r!15766)))))

(declare-fun bm!56665 () Bool)

(declare-fun call!56672 () Regex!2502)

(declare-fun call!56670 () Regex!2502)

(assert (=> bm!56665 (= call!56672 call!56670)))

(declare-fun bm!56666 () Bool)

(declare-fun call!56673 () Regex!2502)

(assert (=> bm!56666 (= call!56670 call!56673)))

(declare-fun bm!56667 () Bool)

(declare-fun c!150396 () Bool)

(declare-fun call!56671 () Regex!2502)

(declare-fun c!150397 () Bool)

(declare-fun c!150395 () Bool)

(assert (=> bm!56667 (= call!56671 (removeUselessConcat!179 (ite c!150395 (regTwo!5516 (regOne!5516 r!15766)) (ite c!150396 (regOne!5516 (regOne!5516 r!15766)) (ite c!150397 (regTwo!5516 (regOne!5516 r!15766)) (ite c!150394 (regTwo!5517 (regOne!5516 r!15766)) (reg!2831 (regOne!5516 r!15766))))))))))

(declare-fun b!926508 () Bool)

(declare-fun c!150398 () Bool)

(assert (=> b!926508 (= c!150398 (is-Star!2502 (regOne!5516 r!15766)))))

(declare-fun e!602684 () Regex!2502)

(assert (=> b!926508 (= e!602680 e!602684)))

(declare-fun b!926509 () Bool)

(declare-fun e!602685 () Regex!2502)

(assert (=> b!926509 (= e!602685 call!56673)))

(declare-fun b!926510 () Bool)

(assert (=> b!926510 (= c!150397 (is-Concat!4335 (regOne!5516 r!15766)))))

(assert (=> b!926510 (= e!602685 e!602681)))

(declare-fun b!926511 () Bool)

(assert (=> b!926511 (= e!602684 (regOne!5516 r!15766))))

(declare-fun b!926512 () Bool)

(declare-fun call!56674 () Regex!2502)

(assert (=> b!926512 (= e!602681 (Concat!4335 call!56674 call!56670))))

(declare-fun b!926513 () Bool)

(assert (=> b!926513 (= e!602680 (Union!2502 call!56674 call!56672))))

(declare-fun b!926507 () Bool)

(declare-fun e!602683 () Regex!2502)

(assert (=> b!926507 (= e!602683 e!602685)))

(assert (=> b!926507 (= c!150396 (and (is-Concat!4335 (regOne!5516 r!15766)) (is-EmptyExpr!2502 (regTwo!5516 (regOne!5516 r!15766)))))))

(declare-fun d!281105 () Bool)

(assert (=> d!281105 e!602682))

(declare-fun res!421328 () Bool)

(assert (=> d!281105 (=> (not res!421328) (not e!602682))))

(assert (=> d!281105 (= res!421328 (validRegex!971 lt!339751))))

(assert (=> d!281105 (= lt!339751 e!602683)))

(assert (=> d!281105 (= c!150395 (and (is-Concat!4335 (regOne!5516 r!15766)) (is-EmptyExpr!2502 (regOne!5516 (regOne!5516 r!15766)))))))

(assert (=> d!281105 (validRegex!971 (regOne!5516 r!15766))))

(assert (=> d!281105 (= (removeUselessConcat!179 (regOne!5516 r!15766)) lt!339751)))

(declare-fun b!926514 () Bool)

(assert (=> b!926514 (= e!602684 (Star!2502 call!56672))))

(declare-fun bm!56668 () Bool)

(assert (=> bm!56668 (= call!56674 (removeUselessConcat!179 (ite c!150397 (regOne!5516 (regOne!5516 r!15766)) (regOne!5517 (regOne!5516 r!15766)))))))

(declare-fun b!926515 () Bool)

(assert (=> b!926515 (= e!602683 call!56671)))

(declare-fun bm!56669 () Bool)

(assert (=> bm!56669 (= call!56673 call!56671)))

(assert (= (and d!281105 c!150395) b!926515))

(assert (= (and d!281105 (not c!150395)) b!926507))

(assert (= (and b!926507 c!150396) b!926509))

(assert (= (and b!926507 (not c!150396)) b!926510))

(assert (= (and b!926510 c!150397) b!926512))

(assert (= (and b!926510 (not c!150397)) b!926506))

(assert (= (and b!926506 c!150394) b!926513))

(assert (= (and b!926506 (not c!150394)) b!926508))

(assert (= (and b!926508 c!150398) b!926514))

(assert (= (and b!926508 (not c!150398)) b!926511))

(assert (= (or b!926513 b!926514) bm!56665))

(assert (= (or b!926512 bm!56665) bm!56666))

(assert (= (or b!926512 b!926513) bm!56668))

(assert (= (or b!926509 bm!56666) bm!56669))

(assert (= (or b!926515 bm!56669) bm!56667))

(assert (= (and d!281105 res!421328) b!926505))

(declare-fun m!1151585 () Bool)

(assert (=> b!926505 m!1151585))

(declare-fun m!1151587 () Bool)

(assert (=> b!926505 m!1151587))

(declare-fun m!1151589 () Bool)

(assert (=> bm!56667 m!1151589))

(declare-fun m!1151591 () Bool)

(assert (=> d!281105 m!1151591))

(assert (=> d!281105 m!1151523))

(declare-fun m!1151593 () Bool)

(assert (=> bm!56668 m!1151593))

(assert (=> b!926176 d!281105))

(declare-fun b!926520 () Bool)

(declare-fun e!602690 () Bool)

(declare-fun lt!339754 () Regex!2502)

(assert (=> b!926520 (= e!602690 (= (nullable!702 lt!339754) (nullable!702 (regTwo!5516 r!15766))))))

(declare-fun b!926521 () Bool)

(declare-fun e!602689 () Regex!2502)

(declare-fun e!602688 () Regex!2502)

(assert (=> b!926521 (= e!602689 e!602688)))

(declare-fun c!150401 () Bool)

(assert (=> b!926521 (= c!150401 (is-Union!2502 (regTwo!5516 r!15766)))))

(declare-fun bm!56670 () Bool)

(declare-fun call!56677 () Regex!2502)

(declare-fun call!56675 () Regex!2502)

(assert (=> bm!56670 (= call!56677 call!56675)))

(declare-fun bm!56671 () Bool)

(declare-fun call!56678 () Regex!2502)

(assert (=> bm!56671 (= call!56675 call!56678)))

(declare-fun c!150403 () Bool)

(declare-fun c!150402 () Bool)

(declare-fun c!150404 () Bool)

(declare-fun bm!56672 () Bool)

(declare-fun call!56676 () Regex!2502)

(assert (=> bm!56672 (= call!56676 (removeUselessConcat!179 (ite c!150402 (regTwo!5516 (regTwo!5516 r!15766)) (ite c!150403 (regOne!5516 (regTwo!5516 r!15766)) (ite c!150404 (regTwo!5516 (regTwo!5516 r!15766)) (ite c!150401 (regTwo!5517 (regTwo!5516 r!15766)) (reg!2831 (regTwo!5516 r!15766))))))))))

(declare-fun b!926523 () Bool)

(declare-fun c!150405 () Bool)

(assert (=> b!926523 (= c!150405 (is-Star!2502 (regTwo!5516 r!15766)))))

(declare-fun e!602692 () Regex!2502)

(assert (=> b!926523 (= e!602688 e!602692)))

(declare-fun b!926524 () Bool)

(declare-fun e!602693 () Regex!2502)

(assert (=> b!926524 (= e!602693 call!56678)))

(declare-fun b!926525 () Bool)

(assert (=> b!926525 (= c!150404 (is-Concat!4335 (regTwo!5516 r!15766)))))

(assert (=> b!926525 (= e!602693 e!602689)))

(declare-fun b!926526 () Bool)

(assert (=> b!926526 (= e!602692 (regTwo!5516 r!15766))))

(declare-fun b!926527 () Bool)

(declare-fun call!56679 () Regex!2502)

(assert (=> b!926527 (= e!602689 (Concat!4335 call!56679 call!56675))))

(declare-fun b!926528 () Bool)

(assert (=> b!926528 (= e!602688 (Union!2502 call!56679 call!56677))))

(declare-fun b!926522 () Bool)

(declare-fun e!602691 () Regex!2502)

(assert (=> b!926522 (= e!602691 e!602693)))

(assert (=> b!926522 (= c!150403 (and (is-Concat!4335 (regTwo!5516 r!15766)) (is-EmptyExpr!2502 (regTwo!5516 (regTwo!5516 r!15766)))))))

(declare-fun d!281107 () Bool)

(assert (=> d!281107 e!602690))

(declare-fun res!421329 () Bool)

(assert (=> d!281107 (=> (not res!421329) (not e!602690))))

(assert (=> d!281107 (= res!421329 (validRegex!971 lt!339754))))

(assert (=> d!281107 (= lt!339754 e!602691)))

(assert (=> d!281107 (= c!150402 (and (is-Concat!4335 (regTwo!5516 r!15766)) (is-EmptyExpr!2502 (regOne!5516 (regTwo!5516 r!15766)))))))

(assert (=> d!281107 (validRegex!971 (regTwo!5516 r!15766))))

(assert (=> d!281107 (= (removeUselessConcat!179 (regTwo!5516 r!15766)) lt!339754)))

(declare-fun b!926529 () Bool)

(assert (=> b!926529 (= e!602692 (Star!2502 call!56677))))

(declare-fun bm!56673 () Bool)

(assert (=> bm!56673 (= call!56679 (removeUselessConcat!179 (ite c!150404 (regOne!5516 (regTwo!5516 r!15766)) (regOne!5517 (regTwo!5516 r!15766)))))))

(declare-fun b!926530 () Bool)

(assert (=> b!926530 (= e!602691 call!56676)))

(declare-fun bm!56674 () Bool)

(assert (=> bm!56674 (= call!56678 call!56676)))

(assert (= (and d!281107 c!150402) b!926530))

(assert (= (and d!281107 (not c!150402)) b!926522))

(assert (= (and b!926522 c!150403) b!926524))

(assert (= (and b!926522 (not c!150403)) b!926525))

(assert (= (and b!926525 c!150404) b!926527))

(assert (= (and b!926525 (not c!150404)) b!926521))

(assert (= (and b!926521 c!150401) b!926528))

(assert (= (and b!926521 (not c!150401)) b!926523))

(assert (= (and b!926523 c!150405) b!926529))

(assert (= (and b!926523 (not c!150405)) b!926526))

(assert (= (or b!926528 b!926529) bm!56670))

(assert (= (or b!926527 bm!56670) bm!56671))

(assert (= (or b!926527 b!926528) bm!56673))

(assert (= (or b!926524 bm!56671) bm!56674))

(assert (= (or b!926530 bm!56674) bm!56672))

(assert (= (and d!281107 res!421329) b!926520))

(declare-fun m!1151595 () Bool)

(assert (=> b!926520 m!1151595))

(declare-fun m!1151597 () Bool)

(assert (=> b!926520 m!1151597))

(declare-fun m!1151599 () Bool)

(assert (=> bm!56672 m!1151599))

(declare-fun m!1151601 () Bool)

(assert (=> d!281107 m!1151601))

(declare-fun m!1151603 () Bool)

(assert (=> d!281107 m!1151603))

(declare-fun m!1151605 () Bool)

(assert (=> bm!56673 m!1151605))

(assert (=> b!926176 d!281107))

(declare-fun b!926561 () Bool)

(declare-fun e!602708 () Bool)

(assert (=> b!926561 (= e!602708 tp_is_empty!4647)))

(declare-fun b!926562 () Bool)

(declare-fun tp!287912 () Bool)

(declare-fun tp!287911 () Bool)

(assert (=> b!926562 (= e!602708 (and tp!287912 tp!287911))))

(declare-fun b!926564 () Bool)

(declare-fun tp!287914 () Bool)

(assert (=> b!926564 (= e!602708 tp!287914)))

(assert (=> b!926173 (= tp!287880 e!602708)))

(declare-fun b!926566 () Bool)

(declare-fun tp!287915 () Bool)

(declare-fun tp!287913 () Bool)

(assert (=> b!926566 (= e!602708 (and tp!287915 tp!287913))))

(assert (= (and b!926173 (is-ElementMatch!2502 (reg!2831 r!15766))) b!926561))

(assert (= (and b!926173 (is-Concat!4335 (reg!2831 r!15766))) b!926562))

(assert (= (and b!926173 (is-Star!2502 (reg!2831 r!15766))) b!926564))

(assert (= (and b!926173 (is-Union!2502 (reg!2831 r!15766))) b!926566))

(declare-fun b!926569 () Bool)

(declare-fun e!602709 () Bool)

(assert (=> b!926569 (= e!602709 tp_is_empty!4647)))

(declare-fun b!926570 () Bool)

(declare-fun tp!287917 () Bool)

(declare-fun tp!287916 () Bool)

(assert (=> b!926570 (= e!602709 (and tp!287917 tp!287916))))

(declare-fun b!926571 () Bool)

(declare-fun tp!287919 () Bool)

(assert (=> b!926571 (= e!602709 tp!287919)))

(assert (=> b!926179 (= tp!287878 e!602709)))

(declare-fun b!926572 () Bool)

(declare-fun tp!287920 () Bool)

(declare-fun tp!287918 () Bool)

(assert (=> b!926572 (= e!602709 (and tp!287920 tp!287918))))

(assert (= (and b!926179 (is-ElementMatch!2502 (regOne!5517 r!15766))) b!926569))

(assert (= (and b!926179 (is-Concat!4335 (regOne!5517 r!15766))) b!926570))

(assert (= (and b!926179 (is-Star!2502 (regOne!5517 r!15766))) b!926571))

(assert (= (and b!926179 (is-Union!2502 (regOne!5517 r!15766))) b!926572))

(declare-fun b!926573 () Bool)

(declare-fun e!602710 () Bool)

(assert (=> b!926573 (= e!602710 tp_is_empty!4647)))

(declare-fun b!926574 () Bool)

(declare-fun tp!287922 () Bool)

(declare-fun tp!287921 () Bool)

(assert (=> b!926574 (= e!602710 (and tp!287922 tp!287921))))

(declare-fun b!926575 () Bool)

(declare-fun tp!287924 () Bool)

(assert (=> b!926575 (= e!602710 tp!287924)))

(assert (=> b!926179 (= tp!287881 e!602710)))

(declare-fun b!926576 () Bool)

(declare-fun tp!287925 () Bool)

(declare-fun tp!287923 () Bool)

(assert (=> b!926576 (= e!602710 (and tp!287925 tp!287923))))

(assert (= (and b!926179 (is-ElementMatch!2502 (regTwo!5517 r!15766))) b!926573))

(assert (= (and b!926179 (is-Concat!4335 (regTwo!5517 r!15766))) b!926574))

(assert (= (and b!926179 (is-Star!2502 (regTwo!5517 r!15766))) b!926575))

(assert (= (and b!926179 (is-Union!2502 (regTwo!5517 r!15766))) b!926576))

(declare-fun b!926577 () Bool)

(declare-fun e!602711 () Bool)

(assert (=> b!926577 (= e!602711 tp_is_empty!4647)))

(declare-fun b!926578 () Bool)

(declare-fun tp!287927 () Bool)

(declare-fun tp!287926 () Bool)

(assert (=> b!926578 (= e!602711 (and tp!287927 tp!287926))))

(declare-fun b!926579 () Bool)

(declare-fun tp!287929 () Bool)

(assert (=> b!926579 (= e!602711 tp!287929)))

(assert (=> b!926180 (= tp!287877 e!602711)))

(declare-fun b!926580 () Bool)

(declare-fun tp!287930 () Bool)

(declare-fun tp!287928 () Bool)

(assert (=> b!926580 (= e!602711 (and tp!287930 tp!287928))))

(assert (= (and b!926180 (is-ElementMatch!2502 (regOne!5516 r!15766))) b!926577))

(assert (= (and b!926180 (is-Concat!4335 (regOne!5516 r!15766))) b!926578))

(assert (= (and b!926180 (is-Star!2502 (regOne!5516 r!15766))) b!926579))

(assert (= (and b!926180 (is-Union!2502 (regOne!5516 r!15766))) b!926580))

(declare-fun b!926581 () Bool)

(declare-fun e!602712 () Bool)

(assert (=> b!926581 (= e!602712 tp_is_empty!4647)))

(declare-fun b!926582 () Bool)

(declare-fun tp!287932 () Bool)

(declare-fun tp!287931 () Bool)

(assert (=> b!926582 (= e!602712 (and tp!287932 tp!287931))))

(declare-fun b!926583 () Bool)

(declare-fun tp!287934 () Bool)

(assert (=> b!926583 (= e!602712 tp!287934)))

(assert (=> b!926180 (= tp!287882 e!602712)))

(declare-fun b!926584 () Bool)

(declare-fun tp!287935 () Bool)

(declare-fun tp!287933 () Bool)

(assert (=> b!926584 (= e!602712 (and tp!287935 tp!287933))))

(assert (= (and b!926180 (is-ElementMatch!2502 (regTwo!5516 r!15766))) b!926581))

(assert (= (and b!926180 (is-Concat!4335 (regTwo!5516 r!15766))) b!926582))

(assert (= (and b!926180 (is-Star!2502 (regTwo!5516 r!15766))) b!926583))

(assert (= (and b!926180 (is-Union!2502 (regTwo!5516 r!15766))) b!926584))

(declare-fun b!926589 () Bool)

(declare-fun e!602715 () Bool)

(declare-fun tp!287938 () Bool)

(assert (=> b!926589 (= e!602715 (and tp_is_empty!4647 tp!287938))))

(assert (=> b!926175 (= tp!287879 e!602715)))

(assert (= (and b!926175 (is-Cons!9716 (t!100778 s!10566))) b!926589))

(push 1)

(assert (not b!926566))

(assert (not b!926320))

(assert (not b!926576))

(assert (not bm!56667))

(assert (not b!926421))

(assert (not d!281075))

(assert (not d!281087))

(assert (not b!926579))

(assert (not b!926578))

(assert (not b!926504))

(assert (not b!926424))

(assert (not b!926500))

(assert (not b!926575))

(assert (not b!926422))

(assert (not b!926491))

(assert (not bm!56627))

(assert (not d!281093))

(assert (not d!281089))

(assert (not b!926564))

(assert (not b!926583))

(assert (not b!926505))

(assert (not d!281101))

(assert (not b!926582))

(assert tp_is_empty!4647)

(assert (not d!281085))

(assert (not b!926425))

(assert (not bm!56672))

(assert (not b!926328))

(assert (not b!926584))

(assert (not b!926426))

(assert (not bm!56673))

(assert (not d!281103))

(assert (not b!926570))

(assert (not b!926451))

(assert (not bm!56617))

(assert (not d!281095))

(assert (not b!926262))

(assert (not b!926317))

(assert (not b!926322))

(assert (not b!926502))

(assert (not d!281107))

(assert (not bm!56618))

(assert (not b!926496))

(assert (not bm!56637))

(assert (not d!281091))

(assert (not bm!56647))

(assert (not b!926571))

(assert (not bm!56661))

(assert (not b!926326))

(assert (not b!926330))

(assert (not bm!56638))

(assert (not b!926562))

(assert (not d!281077))

(assert (not b!926480))

(assert (not bm!56664))

(assert (not b!926520))

(assert (not bm!56668))

(assert (not b!926360))

(assert (not b!926494))

(assert (not b!926580))

(assert (not b!926428))

(assert (not b!926574))

(assert (not b!926589))

(assert (not b!926260))

(assert (not d!281105))

(assert (not bm!56646))

(assert (not bm!56662))

(assert (not b!926572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

