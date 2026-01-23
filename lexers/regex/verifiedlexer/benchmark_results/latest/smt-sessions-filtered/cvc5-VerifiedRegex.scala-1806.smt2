; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90004 () Bool)

(assert start!90004)

(declare-fun b!1034216 () Bool)

(assert (=> b!1034216 true))

(assert (=> b!1034216 true))

(declare-fun e!658895 () Bool)

(declare-datatypes ((C!6310 0))(
  ( (C!6311 (val!3403 Int)) )
))
(declare-datatypes ((Regex!2870 0))(
  ( (ElementMatch!2870 (c!171629 C!6310)) (Concat!4703 (regOne!6252 Regex!2870) (regTwo!6252 Regex!2870)) (EmptyExpr!2870) (Star!2870 (reg!3199 Regex!2870)) (EmptyLang!2870) (Union!2870 (regOne!6253 Regex!2870) (regTwo!6253 Regex!2870)) )
))
(declare-fun r!15766 () Regex!2870)

(declare-fun validRegex!1339 (Regex!2870) Bool)

(assert (=> b!1034216 (= e!658895 (validRegex!1339 (regOne!6252 r!15766)))))

(declare-datatypes ((List!10100 0))(
  ( (Nil!10084) (Cons!10084 (h!15485 C!6310) (t!101146 List!10100)) )
))
(declare-fun s!10566 () List!10100)

(declare-fun lambda!37161 () Int)

(declare-datatypes ((tuple2!11506 0))(
  ( (tuple2!11507 (_1!6579 List!10100) (_2!6579 List!10100)) )
))
(declare-datatypes ((Option!2395 0))(
  ( (None!2394) (Some!2394 (v!19811 tuple2!11506)) )
))
(declare-fun isDefined!2037 (Option!2395) Bool)

(declare-fun findConcatSeparation!501 (Regex!2870 Regex!2870 List!10100 List!10100 List!10100) Option!2395)

(declare-fun Exists!597 (Int) Bool)

(assert (=> b!1034216 (= (isDefined!2037 (findConcatSeparation!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) Nil!10084 s!10566 s!10566)) (Exists!597 lambda!37161))))

(declare-datatypes ((Unit!15415 0))(
  ( (Unit!15416) )
))
(declare-fun lt!356525 () Unit!15415)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!501 (Regex!2870 Regex!2870 List!10100) Unit!15415)

(assert (=> b!1034216 (= lt!356525 (lemmaFindConcatSeparationEquivalentToExists!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) s!10566))))

(declare-fun b!1034217 () Bool)

(declare-fun e!658897 () Bool)

(declare-fun tp!313072 () Bool)

(declare-fun tp!313069 () Bool)

(assert (=> b!1034217 (= e!658897 (and tp!313072 tp!313069))))

(declare-fun res!464566 () Bool)

(declare-fun e!658896 () Bool)

(assert (=> start!90004 (=> (not res!464566) (not e!658896))))

(assert (=> start!90004 (= res!464566 (validRegex!1339 r!15766))))

(assert (=> start!90004 e!658896))

(assert (=> start!90004 e!658897))

(declare-fun e!658894 () Bool)

(assert (=> start!90004 e!658894))

(declare-fun b!1034218 () Bool)

(declare-fun tp_is_empty!5383 () Bool)

(declare-fun tp!313074 () Bool)

(assert (=> b!1034218 (= e!658894 (and tp_is_empty!5383 tp!313074))))

(declare-fun b!1034219 () Bool)

(assert (=> b!1034219 (= e!658897 tp_is_empty!5383)))

(declare-fun b!1034220 () Bool)

(declare-fun tp!313071 () Bool)

(assert (=> b!1034220 (= e!658897 tp!313071)))

(declare-fun b!1034221 () Bool)

(declare-fun tp!313070 () Bool)

(declare-fun tp!313073 () Bool)

(assert (=> b!1034221 (= e!658897 (and tp!313070 tp!313073))))

(declare-fun b!1034222 () Bool)

(assert (=> b!1034222 (= e!658896 (not e!658895))))

(declare-fun res!464565 () Bool)

(assert (=> b!1034222 (=> res!464565 e!658895)))

(declare-fun lt!356526 () Bool)

(assert (=> b!1034222 (= res!464565 (or lt!356526 (and (is-Concat!4703 r!15766) (is-EmptyExpr!2870 (regOne!6252 r!15766))) (and (is-Concat!4703 r!15766) (is-EmptyExpr!2870 (regTwo!6252 r!15766))) (not (is-Concat!4703 r!15766))))))

(declare-fun matchRSpec!669 (Regex!2870 List!10100) Bool)

(assert (=> b!1034222 (= lt!356526 (matchRSpec!669 r!15766 s!10566))))

(declare-fun matchR!1406 (Regex!2870 List!10100) Bool)

(assert (=> b!1034222 (= lt!356526 (matchR!1406 r!15766 s!10566))))

(declare-fun lt!356524 () Unit!15415)

(declare-fun mainMatchTheorem!669 (Regex!2870 List!10100) Unit!15415)

(assert (=> b!1034222 (= lt!356524 (mainMatchTheorem!669 r!15766 s!10566))))

(assert (= (and start!90004 res!464566) b!1034222))

(assert (= (and b!1034222 (not res!464565)) b!1034216))

(assert (= (and start!90004 (is-ElementMatch!2870 r!15766)) b!1034219))

(assert (= (and start!90004 (is-Concat!4703 r!15766)) b!1034217))

(assert (= (and start!90004 (is-Star!2870 r!15766)) b!1034220))

(assert (= (and start!90004 (is-Union!2870 r!15766)) b!1034221))

(assert (= (and start!90004 (is-Cons!10084 s!10566)) b!1034218))

(declare-fun m!1206113 () Bool)

(assert (=> b!1034216 m!1206113))

(declare-fun m!1206115 () Bool)

(assert (=> b!1034216 m!1206115))

(declare-fun m!1206117 () Bool)

(assert (=> b!1034216 m!1206117))

(declare-fun m!1206119 () Bool)

(assert (=> b!1034216 m!1206119))

(declare-fun m!1206121 () Bool)

(assert (=> b!1034216 m!1206121))

(assert (=> b!1034216 m!1206113))

(declare-fun m!1206123 () Bool)

(assert (=> start!90004 m!1206123))

(declare-fun m!1206125 () Bool)

(assert (=> b!1034222 m!1206125))

(declare-fun m!1206127 () Bool)

(assert (=> b!1034222 m!1206127))

(declare-fun m!1206129 () Bool)

(assert (=> b!1034222 m!1206129))

(push 1)

(assert (not b!1034221))

(assert (not start!90004))

(assert (not b!1034216))

(assert (not b!1034217))

(assert tp_is_empty!5383)

(assert (not b!1034218))

(assert (not b!1034220))

(assert (not b!1034222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1034274 () Bool)

(declare-fun res!464589 () Bool)

(declare-fun e!658930 () Bool)

(assert (=> b!1034274 (=> res!464589 e!658930)))

(assert (=> b!1034274 (= res!464589 (not (is-Concat!4703 (regOne!6252 r!15766))))))

(declare-fun e!658926 () Bool)

(assert (=> b!1034274 (= e!658926 e!658930)))

(declare-fun bm!71453 () Bool)

(declare-fun call!71458 () Bool)

(declare-fun c!171635 () Bool)

(assert (=> bm!71453 (= call!71458 (validRegex!1339 (ite c!171635 (regOne!6253 (regOne!6252 r!15766)) (regOne!6252 (regOne!6252 r!15766)))))))

(declare-fun b!1034275 () Bool)

(declare-fun e!658932 () Bool)

(declare-fun e!658927 () Bool)

(assert (=> b!1034275 (= e!658932 e!658927)))

(declare-fun c!171636 () Bool)

(assert (=> b!1034275 (= c!171636 (is-Star!2870 (regOne!6252 r!15766)))))

(declare-fun b!1034276 () Bool)

(declare-fun e!658928 () Bool)

(declare-fun call!71460 () Bool)

(assert (=> b!1034276 (= e!658928 call!71460)))

(declare-fun b!1034277 () Bool)

(assert (=> b!1034277 (= e!658927 e!658928)))

(declare-fun res!464587 () Bool)

(declare-fun nullable!963 (Regex!2870) Bool)

(assert (=> b!1034277 (= res!464587 (not (nullable!963 (reg!3199 (regOne!6252 r!15766)))))))

(assert (=> b!1034277 (=> (not res!464587) (not e!658928))))

(declare-fun b!1034278 () Bool)

(declare-fun e!658929 () Bool)

(assert (=> b!1034278 (= e!658930 e!658929)))

(declare-fun res!464590 () Bool)

(assert (=> b!1034278 (=> (not res!464590) (not e!658929))))

(assert (=> b!1034278 (= res!464590 call!71458)))

(declare-fun b!1034279 () Bool)

(assert (=> b!1034279 (= e!658927 e!658926)))

(assert (=> b!1034279 (= c!171635 (is-Union!2870 (regOne!6252 r!15766)))))

(declare-fun bm!71455 () Bool)

(declare-fun call!71459 () Bool)

(assert (=> bm!71455 (= call!71459 call!71460)))

(declare-fun b!1034280 () Bool)

(declare-fun res!464591 () Bool)

(declare-fun e!658931 () Bool)

(assert (=> b!1034280 (=> (not res!464591) (not e!658931))))

(assert (=> b!1034280 (= res!464591 call!71458)))

(assert (=> b!1034280 (= e!658926 e!658931)))

(declare-fun b!1034281 () Bool)

(assert (=> b!1034281 (= e!658931 call!71459)))

(declare-fun b!1034282 () Bool)

(assert (=> b!1034282 (= e!658929 call!71459)))

(declare-fun d!296115 () Bool)

(declare-fun res!464588 () Bool)

(assert (=> d!296115 (=> res!464588 e!658932)))

(assert (=> d!296115 (= res!464588 (is-ElementMatch!2870 (regOne!6252 r!15766)))))

(assert (=> d!296115 (= (validRegex!1339 (regOne!6252 r!15766)) e!658932)))

(declare-fun bm!71454 () Bool)

(assert (=> bm!71454 (= call!71460 (validRegex!1339 (ite c!171636 (reg!3199 (regOne!6252 r!15766)) (ite c!171635 (regTwo!6253 (regOne!6252 r!15766)) (regTwo!6252 (regOne!6252 r!15766))))))))

(assert (= (and d!296115 (not res!464588)) b!1034275))

(assert (= (and b!1034275 c!171636) b!1034277))

(assert (= (and b!1034275 (not c!171636)) b!1034279))

(assert (= (and b!1034277 res!464587) b!1034276))

(assert (= (and b!1034279 c!171635) b!1034280))

(assert (= (and b!1034279 (not c!171635)) b!1034274))

(assert (= (and b!1034280 res!464591) b!1034281))

(assert (= (and b!1034274 (not res!464589)) b!1034278))

(assert (= (and b!1034278 res!464590) b!1034282))

(assert (= (or b!1034281 b!1034282) bm!71455))

(assert (= (or b!1034280 b!1034278) bm!71453))

(assert (= (or b!1034276 bm!71455) bm!71454))

(declare-fun m!1206149 () Bool)

(assert (=> bm!71453 m!1206149))

(declare-fun m!1206151 () Bool)

(assert (=> b!1034277 m!1206151))

(declare-fun m!1206153 () Bool)

(assert (=> bm!71454 m!1206153))

(assert (=> b!1034216 d!296115))

(declare-fun bs!247528 () Bool)

(declare-fun d!296117 () Bool)

(assert (= bs!247528 (and d!296117 b!1034216)))

(declare-fun lambda!37167 () Int)

(assert (=> bs!247528 (= lambda!37167 lambda!37161)))

(assert (=> d!296117 true))

(assert (=> d!296117 true))

(assert (=> d!296117 true))

(assert (=> d!296117 (= (isDefined!2037 (findConcatSeparation!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) Nil!10084 s!10566 s!10566)) (Exists!597 lambda!37167))))

(declare-fun lt!356538 () Unit!15415)

(declare-fun choose!6595 (Regex!2870 Regex!2870 List!10100) Unit!15415)

(assert (=> d!296117 (= lt!356538 (choose!6595 (regOne!6252 r!15766) (regTwo!6252 r!15766) s!10566))))

(assert (=> d!296117 (validRegex!1339 (regOne!6252 r!15766))))

(assert (=> d!296117 (= (lemmaFindConcatSeparationEquivalentToExists!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) s!10566) lt!356538)))

(declare-fun bs!247529 () Bool)

(assert (= bs!247529 d!296117))

(assert (=> bs!247529 m!1206113))

(declare-fun m!1206155 () Bool)

(assert (=> bs!247529 m!1206155))

(assert (=> bs!247529 m!1206117))

(assert (=> bs!247529 m!1206113))

(assert (=> bs!247529 m!1206115))

(declare-fun m!1206157 () Bool)

(assert (=> bs!247529 m!1206157))

(assert (=> b!1034216 d!296117))

(declare-fun b!1034333 () Bool)

(declare-fun e!658965 () Bool)

(declare-fun lt!356546 () Option!2395)

(declare-fun ++!2773 (List!10100 List!10100) List!10100)

(declare-fun get!3586 (Option!2395) tuple2!11506)

(assert (=> b!1034333 (= e!658965 (= (++!2773 (_1!6579 (get!3586 lt!356546)) (_2!6579 (get!3586 lt!356546))) s!10566))))

(declare-fun b!1034334 () Bool)

(declare-fun res!464622 () Bool)

(assert (=> b!1034334 (=> (not res!464622) (not e!658965))))

(assert (=> b!1034334 (= res!464622 (matchR!1406 (regTwo!6252 r!15766) (_2!6579 (get!3586 lt!356546))))))

(declare-fun b!1034335 () Bool)

(declare-fun e!658963 () Bool)

(assert (=> b!1034335 (= e!658963 (matchR!1406 (regTwo!6252 r!15766) s!10566))))

(declare-fun b!1034337 () Bool)

(declare-fun res!464620 () Bool)

(assert (=> b!1034337 (=> (not res!464620) (not e!658965))))

(assert (=> b!1034337 (= res!464620 (matchR!1406 (regOne!6252 r!15766) (_1!6579 (get!3586 lt!356546))))))

(declare-fun b!1034338 () Bool)

(declare-fun e!658962 () Bool)

(assert (=> b!1034338 (= e!658962 (not (isDefined!2037 lt!356546)))))

(declare-fun b!1034339 () Bool)

(declare-fun e!658964 () Option!2395)

(assert (=> b!1034339 (= e!658964 (Some!2394 (tuple2!11507 Nil!10084 s!10566)))))

(declare-fun b!1034336 () Bool)

(declare-fun e!658961 () Option!2395)

(assert (=> b!1034336 (= e!658961 None!2394)))

(declare-fun d!296121 () Bool)

(assert (=> d!296121 e!658962))

(declare-fun res!464618 () Bool)

(assert (=> d!296121 (=> res!464618 e!658962)))

(assert (=> d!296121 (= res!464618 e!658965)))

(declare-fun res!464621 () Bool)

(assert (=> d!296121 (=> (not res!464621) (not e!658965))))

(assert (=> d!296121 (= res!464621 (isDefined!2037 lt!356546))))

(assert (=> d!296121 (= lt!356546 e!658964)))

(declare-fun c!171650 () Bool)

(assert (=> d!296121 (= c!171650 e!658963)))

(declare-fun res!464619 () Bool)

(assert (=> d!296121 (=> (not res!464619) (not e!658963))))

(assert (=> d!296121 (= res!464619 (matchR!1406 (regOne!6252 r!15766) Nil!10084))))

(assert (=> d!296121 (validRegex!1339 (regOne!6252 r!15766))))

(assert (=> d!296121 (= (findConcatSeparation!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) Nil!10084 s!10566 s!10566) lt!356546)))

(declare-fun b!1034340 () Bool)

(assert (=> b!1034340 (= e!658964 e!658961)))

(declare-fun c!171649 () Bool)

(assert (=> b!1034340 (= c!171649 (is-Nil!10084 s!10566))))

(declare-fun b!1034341 () Bool)

(declare-fun lt!356547 () Unit!15415)

(declare-fun lt!356545 () Unit!15415)

(assert (=> b!1034341 (= lt!356547 lt!356545)))

(assert (=> b!1034341 (= (++!2773 (++!2773 Nil!10084 (Cons!10084 (h!15485 s!10566) Nil!10084)) (t!101146 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!366 (List!10100 C!6310 List!10100 List!10100) Unit!15415)

(assert (=> b!1034341 (= lt!356545 (lemmaMoveElementToOtherListKeepsConcatEq!366 Nil!10084 (h!15485 s!10566) (t!101146 s!10566) s!10566))))

(assert (=> b!1034341 (= e!658961 (findConcatSeparation!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) (++!2773 Nil!10084 (Cons!10084 (h!15485 s!10566) Nil!10084)) (t!101146 s!10566) s!10566))))

(assert (= (and d!296121 res!464619) b!1034335))

(assert (= (and d!296121 c!171650) b!1034339))

(assert (= (and d!296121 (not c!171650)) b!1034340))

(assert (= (and b!1034340 c!171649) b!1034336))

(assert (= (and b!1034340 (not c!171649)) b!1034341))

(assert (= (and d!296121 res!464621) b!1034337))

(assert (= (and b!1034337 res!464620) b!1034334))

(assert (= (and b!1034334 res!464622) b!1034333))

(assert (= (and d!296121 (not res!464618)) b!1034338))

(declare-fun m!1206159 () Bool)

(assert (=> b!1034338 m!1206159))

(declare-fun m!1206161 () Bool)

(assert (=> b!1034334 m!1206161))

(declare-fun m!1206163 () Bool)

(assert (=> b!1034334 m!1206163))

(declare-fun m!1206165 () Bool)

(assert (=> b!1034341 m!1206165))

(assert (=> b!1034341 m!1206165))

(declare-fun m!1206167 () Bool)

(assert (=> b!1034341 m!1206167))

(declare-fun m!1206169 () Bool)

(assert (=> b!1034341 m!1206169))

(assert (=> b!1034341 m!1206165))

(declare-fun m!1206171 () Bool)

(assert (=> b!1034341 m!1206171))

(assert (=> d!296121 m!1206159))

(declare-fun m!1206173 () Bool)

(assert (=> d!296121 m!1206173))

(assert (=> d!296121 m!1206117))

(declare-fun m!1206175 () Bool)

(assert (=> b!1034335 m!1206175))

(assert (=> b!1034333 m!1206161))

(declare-fun m!1206177 () Bool)

(assert (=> b!1034333 m!1206177))

(assert (=> b!1034337 m!1206161))

(declare-fun m!1206179 () Bool)

(assert (=> b!1034337 m!1206179))

(assert (=> b!1034216 d!296121))

(declare-fun d!296123 () Bool)

(declare-fun isEmpty!6473 (Option!2395) Bool)

(assert (=> d!296123 (= (isDefined!2037 (findConcatSeparation!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) Nil!10084 s!10566 s!10566)) (not (isEmpty!6473 (findConcatSeparation!501 (regOne!6252 r!15766) (regTwo!6252 r!15766) Nil!10084 s!10566 s!10566))))))

(declare-fun bs!247530 () Bool)

(assert (= bs!247530 d!296123))

(assert (=> bs!247530 m!1206113))

(declare-fun m!1206181 () Bool)

(assert (=> bs!247530 m!1206181))

(assert (=> b!1034216 d!296123))

(declare-fun d!296125 () Bool)

(declare-fun choose!6596 (Int) Bool)

(assert (=> d!296125 (= (Exists!597 lambda!37161) (choose!6596 lambda!37161))))

(declare-fun bs!247531 () Bool)

(assert (= bs!247531 d!296125))

(declare-fun m!1206183 () Bool)

(assert (=> bs!247531 m!1206183))

(assert (=> b!1034216 d!296125))

(declare-fun bs!247532 () Bool)

(declare-fun b!1034395 () Bool)

(assert (= bs!247532 (and b!1034395 b!1034216)))

(declare-fun lambda!37176 () Int)

(assert (=> bs!247532 (not (= lambda!37176 lambda!37161))))

(declare-fun bs!247533 () Bool)

(assert (= bs!247533 (and b!1034395 d!296117)))

(assert (=> bs!247533 (not (= lambda!37176 lambda!37167))))

(assert (=> b!1034395 true))

(assert (=> b!1034395 true))

(declare-fun bs!247535 () Bool)

(declare-fun b!1034393 () Bool)

(assert (= bs!247535 (and b!1034393 b!1034216)))

(declare-fun lambda!37178 () Int)

(assert (=> bs!247535 (not (= lambda!37178 lambda!37161))))

(declare-fun bs!247536 () Bool)

(assert (= bs!247536 (and b!1034393 d!296117)))

(assert (=> bs!247536 (not (= lambda!37178 lambda!37167))))

(declare-fun bs!247537 () Bool)

(assert (= bs!247537 (and b!1034393 b!1034395)))

(assert (=> bs!247537 (not (= lambda!37178 lambda!37176))))

(assert (=> b!1034393 true))

(assert (=> b!1034393 true))

(declare-fun b!1034389 () Bool)

(declare-fun e!658997 () Bool)

(declare-fun e!658999 () Bool)

(assert (=> b!1034389 (= e!658997 e!658999)))

(declare-fun res!464646 () Bool)

(assert (=> b!1034389 (= res!464646 (matchRSpec!669 (regOne!6253 r!15766) s!10566))))

(assert (=> b!1034389 (=> res!464646 e!658999)))

(declare-fun b!1034390 () Bool)

(declare-fun res!464647 () Bool)

(declare-fun e!658996 () Bool)

(assert (=> b!1034390 (=> res!464647 e!658996)))

(declare-fun call!71472 () Bool)

(assert (=> b!1034390 (= res!464647 call!71472)))

(declare-fun e!658995 () Bool)

(assert (=> b!1034390 (= e!658995 e!658996)))

(declare-fun bm!71466 () Bool)

(declare-fun call!71471 () Bool)

(declare-fun c!171664 () Bool)

(assert (=> bm!71466 (= call!71471 (Exists!597 (ite c!171664 lambda!37176 lambda!37178)))))

(declare-fun b!1034391 () Bool)

(assert (=> b!1034391 (= e!658997 e!658995)))

(assert (=> b!1034391 (= c!171664 (is-Star!2870 r!15766))))

(declare-fun b!1034392 () Bool)

(assert (=> b!1034392 (= e!658999 (matchRSpec!669 (regTwo!6253 r!15766) s!10566))))

(assert (=> b!1034393 (= e!658995 call!71471)))

(declare-fun b!1034394 () Bool)

(declare-fun e!658993 () Bool)

(declare-fun e!658994 () Bool)

(assert (=> b!1034394 (= e!658993 e!658994)))

(declare-fun res!464648 () Bool)

(assert (=> b!1034394 (= res!464648 (not (is-EmptyLang!2870 r!15766)))))

(assert (=> b!1034394 (=> (not res!464648) (not e!658994))))

(assert (=> b!1034395 (= e!658996 call!71471)))

(declare-fun b!1034396 () Bool)

(declare-fun c!171663 () Bool)

(assert (=> b!1034396 (= c!171663 (is-ElementMatch!2870 r!15766))))

(declare-fun e!658998 () Bool)

(assert (=> b!1034396 (= e!658994 e!658998)))

(declare-fun b!1034397 () Bool)

(declare-fun c!171666 () Bool)

(assert (=> b!1034397 (= c!171666 (is-Union!2870 r!15766))))

(assert (=> b!1034397 (= e!658998 e!658997)))

(declare-fun b!1034398 () Bool)

(assert (=> b!1034398 (= e!658993 call!71472)))

(declare-fun b!1034399 () Bool)

(assert (=> b!1034399 (= e!658998 (= s!10566 (Cons!10084 (c!171629 r!15766) Nil!10084)))))

(declare-fun bm!71467 () Bool)

(declare-fun isEmpty!6474 (List!10100) Bool)

(assert (=> bm!71467 (= call!71472 (isEmpty!6474 s!10566))))

(declare-fun d!296127 () Bool)

(declare-fun c!171665 () Bool)

(assert (=> d!296127 (= c!171665 (is-EmptyExpr!2870 r!15766))))

(assert (=> d!296127 (= (matchRSpec!669 r!15766 s!10566) e!658993)))

(assert (= (and d!296127 c!171665) b!1034398))

(assert (= (and d!296127 (not c!171665)) b!1034394))

(assert (= (and b!1034394 res!464648) b!1034396))

(assert (= (and b!1034396 c!171663) b!1034399))

(assert (= (and b!1034396 (not c!171663)) b!1034397))

(assert (= (and b!1034397 c!171666) b!1034389))

(assert (= (and b!1034397 (not c!171666)) b!1034391))

(assert (= (and b!1034389 (not res!464646)) b!1034392))

(assert (= (and b!1034391 c!171664) b!1034390))

(assert (= (and b!1034391 (not c!171664)) b!1034393))

(assert (= (and b!1034390 (not res!464647)) b!1034395))

(assert (= (or b!1034395 b!1034393) bm!71466))

(assert (= (or b!1034398 b!1034390) bm!71467))

(declare-fun m!1206185 () Bool)

(assert (=> b!1034389 m!1206185))

(declare-fun m!1206187 () Bool)

(assert (=> bm!71466 m!1206187))

(declare-fun m!1206189 () Bool)

(assert (=> b!1034392 m!1206189))

(declare-fun m!1206191 () Bool)

(assert (=> bm!71467 m!1206191))

(assert (=> b!1034222 d!296127))

(declare-fun b!1034428 () Bool)

(declare-fun e!659020 () Bool)

(assert (=> b!1034428 (= e!659020 (nullable!963 r!15766))))

(declare-fun b!1034429 () Bool)

(declare-fun res!464665 () Bool)

(declare-fun e!659019 () Bool)

(assert (=> b!1034429 (=> (not res!464665) (not e!659019))))

(declare-fun call!71475 () Bool)

(assert (=> b!1034429 (= res!464665 (not call!71475))))

(declare-fun d!296129 () Bool)

(declare-fun e!659014 () Bool)

(assert (=> d!296129 e!659014))

(declare-fun c!171673 () Bool)

(assert (=> d!296129 (= c!171673 (is-EmptyExpr!2870 r!15766))))

(declare-fun lt!356550 () Bool)

(assert (=> d!296129 (= lt!356550 e!659020)))

(declare-fun c!171674 () Bool)

(assert (=> d!296129 (= c!171674 (isEmpty!6474 s!10566))))

(assert (=> d!296129 (validRegex!1339 r!15766)))

(assert (=> d!296129 (= (matchR!1406 r!15766 s!10566) lt!356550)))

(declare-fun b!1034430 () Bool)

(declare-fun derivativeStep!763 (Regex!2870 C!6310) Regex!2870)

(declare-fun head!1918 (List!10100) C!6310)

(declare-fun tail!1480 (List!10100) List!10100)

(assert (=> b!1034430 (= e!659020 (matchR!1406 (derivativeStep!763 r!15766 (head!1918 s!10566)) (tail!1480 s!10566)))))

(declare-fun b!1034431 () Bool)

(declare-fun res!464667 () Bool)

(declare-fun e!659016 () Bool)

(assert (=> b!1034431 (=> res!464667 e!659016)))

(assert (=> b!1034431 (= res!464667 (not (is-ElementMatch!2870 r!15766)))))

(declare-fun e!659017 () Bool)

(assert (=> b!1034431 (= e!659017 e!659016)))

(declare-fun bm!71470 () Bool)

(assert (=> bm!71470 (= call!71475 (isEmpty!6474 s!10566))))

(declare-fun b!1034432 () Bool)

(assert (=> b!1034432 (= e!659017 (not lt!356550))))

(declare-fun b!1034433 () Bool)

(declare-fun e!659015 () Bool)

(declare-fun e!659018 () Bool)

(assert (=> b!1034433 (= e!659015 e!659018)))

(declare-fun res!464672 () Bool)

(assert (=> b!1034433 (=> res!464672 e!659018)))

(assert (=> b!1034433 (= res!464672 call!71475)))

(declare-fun b!1034434 () Bool)

(declare-fun res!464668 () Bool)

(assert (=> b!1034434 (=> res!464668 e!659018)))

(assert (=> b!1034434 (= res!464668 (not (isEmpty!6474 (tail!1480 s!10566))))))

(declare-fun b!1034435 () Bool)

(assert (=> b!1034435 (= e!659016 e!659015)))

(declare-fun res!464666 () Bool)

(assert (=> b!1034435 (=> (not res!464666) (not e!659015))))

(assert (=> b!1034435 (= res!464666 (not lt!356550))))

(declare-fun b!1034436 () Bool)

(assert (=> b!1034436 (= e!659018 (not (= (head!1918 s!10566) (c!171629 r!15766))))))

(declare-fun b!1034437 () Bool)

(assert (=> b!1034437 (= e!659014 (= lt!356550 call!71475))))

(declare-fun b!1034438 () Bool)

(assert (=> b!1034438 (= e!659014 e!659017)))

(declare-fun c!171675 () Bool)

(assert (=> b!1034438 (= c!171675 (is-EmptyLang!2870 r!15766))))

(declare-fun b!1034439 () Bool)

(assert (=> b!1034439 (= e!659019 (= (head!1918 s!10566) (c!171629 r!15766)))))

(declare-fun b!1034440 () Bool)

(declare-fun res!464671 () Bool)

(assert (=> b!1034440 (=> res!464671 e!659016)))

(assert (=> b!1034440 (= res!464671 e!659019)))

(declare-fun res!464670 () Bool)

(assert (=> b!1034440 (=> (not res!464670) (not e!659019))))

(assert (=> b!1034440 (= res!464670 lt!356550)))

(declare-fun b!1034441 () Bool)

(declare-fun res!464669 () Bool)

(assert (=> b!1034441 (=> (not res!464669) (not e!659019))))

(assert (=> b!1034441 (= res!464669 (isEmpty!6474 (tail!1480 s!10566)))))

(assert (= (and d!296129 c!171674) b!1034428))

(assert (= (and d!296129 (not c!171674)) b!1034430))

(assert (= (and d!296129 c!171673) b!1034437))

(assert (= (and d!296129 (not c!171673)) b!1034438))

(assert (= (and b!1034438 c!171675) b!1034432))

(assert (= (and b!1034438 (not c!171675)) b!1034431))

(assert (= (and b!1034431 (not res!464667)) b!1034440))

(assert (= (and b!1034440 res!464670) b!1034429))

(assert (= (and b!1034429 res!464665) b!1034441))

(assert (= (and b!1034441 res!464669) b!1034439))

(assert (= (and b!1034440 (not res!464671)) b!1034435))

(assert (= (and b!1034435 res!464666) b!1034433))

(assert (= (and b!1034433 (not res!464672)) b!1034434))

(assert (= (and b!1034434 (not res!464668)) b!1034436))

(assert (= (or b!1034437 b!1034429 b!1034433) bm!71470))

(declare-fun m!1206201 () Bool)

(assert (=> b!1034436 m!1206201))

(assert (=> b!1034430 m!1206201))

(assert (=> b!1034430 m!1206201))

(declare-fun m!1206203 () Bool)

(assert (=> b!1034430 m!1206203))

(declare-fun m!1206205 () Bool)

(assert (=> b!1034430 m!1206205))

(assert (=> b!1034430 m!1206203))

(assert (=> b!1034430 m!1206205))

(declare-fun m!1206207 () Bool)

(assert (=> b!1034430 m!1206207))

(assert (=> d!296129 m!1206191))

(assert (=> d!296129 m!1206123))

(assert (=> bm!71470 m!1206191))

(assert (=> b!1034439 m!1206201))

(assert (=> b!1034441 m!1206205))

(assert (=> b!1034441 m!1206205))

(declare-fun m!1206209 () Bool)

(assert (=> b!1034441 m!1206209))

(declare-fun m!1206211 () Bool)

(assert (=> b!1034428 m!1206211))

(assert (=> b!1034434 m!1206205))

(assert (=> b!1034434 m!1206205))

(assert (=> b!1034434 m!1206209))

(assert (=> b!1034222 d!296129))

(declare-fun d!296133 () Bool)

(assert (=> d!296133 (= (matchR!1406 r!15766 s!10566) (matchRSpec!669 r!15766 s!10566))))

(declare-fun lt!356555 () Unit!15415)

(declare-fun choose!6597 (Regex!2870 List!10100) Unit!15415)

(assert (=> d!296133 (= lt!356555 (choose!6597 r!15766 s!10566))))

(assert (=> d!296133 (validRegex!1339 r!15766)))

(assert (=> d!296133 (= (mainMatchTheorem!669 r!15766 s!10566) lt!356555)))

(declare-fun bs!247540 () Bool)

(assert (= bs!247540 d!296133))

(assert (=> bs!247540 m!1206127))

(assert (=> bs!247540 m!1206125))

(declare-fun m!1206213 () Bool)

(assert (=> bs!247540 m!1206213))

(assert (=> bs!247540 m!1206123))

(assert (=> b!1034222 d!296133))

(declare-fun b!1034446 () Bool)

(declare-fun res!464675 () Bool)

(declare-fun e!659027 () Bool)

(assert (=> b!1034446 (=> res!464675 e!659027)))

(assert (=> b!1034446 (= res!464675 (not (is-Concat!4703 r!15766)))))

(declare-fun e!659023 () Bool)

(assert (=> b!1034446 (= e!659023 e!659027)))

(declare-fun bm!71471 () Bool)

(declare-fun call!71476 () Bool)

(declare-fun c!171678 () Bool)

(assert (=> bm!71471 (= call!71476 (validRegex!1339 (ite c!171678 (regOne!6253 r!15766) (regOne!6252 r!15766))))))

(declare-fun b!1034447 () Bool)

(declare-fun e!659029 () Bool)

(declare-fun e!659024 () Bool)

(assert (=> b!1034447 (= e!659029 e!659024)))

(declare-fun c!171679 () Bool)

(assert (=> b!1034447 (= c!171679 (is-Star!2870 r!15766))))

(declare-fun b!1034448 () Bool)

(declare-fun e!659025 () Bool)

(declare-fun call!71478 () Bool)

(assert (=> b!1034448 (= e!659025 call!71478)))

(declare-fun b!1034449 () Bool)

(assert (=> b!1034449 (= e!659024 e!659025)))

(declare-fun res!464673 () Bool)

(assert (=> b!1034449 (= res!464673 (not (nullable!963 (reg!3199 r!15766))))))

(assert (=> b!1034449 (=> (not res!464673) (not e!659025))))

(declare-fun b!1034450 () Bool)

(declare-fun e!659026 () Bool)

(assert (=> b!1034450 (= e!659027 e!659026)))

(declare-fun res!464676 () Bool)

(assert (=> b!1034450 (=> (not res!464676) (not e!659026))))

(assert (=> b!1034450 (= res!464676 call!71476)))

(declare-fun b!1034451 () Bool)

(assert (=> b!1034451 (= e!659024 e!659023)))

(assert (=> b!1034451 (= c!171678 (is-Union!2870 r!15766))))

(declare-fun bm!71473 () Bool)

(declare-fun call!71477 () Bool)

(assert (=> bm!71473 (= call!71477 call!71478)))

(declare-fun b!1034452 () Bool)

(declare-fun res!464677 () Bool)

(declare-fun e!659028 () Bool)

(assert (=> b!1034452 (=> (not res!464677) (not e!659028))))

(assert (=> b!1034452 (= res!464677 call!71476)))

(assert (=> b!1034452 (= e!659023 e!659028)))

(declare-fun b!1034453 () Bool)

(assert (=> b!1034453 (= e!659028 call!71477)))

(declare-fun b!1034454 () Bool)

(assert (=> b!1034454 (= e!659026 call!71477)))

(declare-fun d!296135 () Bool)

(declare-fun res!464674 () Bool)

(assert (=> d!296135 (=> res!464674 e!659029)))

(assert (=> d!296135 (= res!464674 (is-ElementMatch!2870 r!15766))))

(assert (=> d!296135 (= (validRegex!1339 r!15766) e!659029)))

(declare-fun bm!71472 () Bool)

(assert (=> bm!71472 (= call!71478 (validRegex!1339 (ite c!171679 (reg!3199 r!15766) (ite c!171678 (regTwo!6253 r!15766) (regTwo!6252 r!15766)))))))

(assert (= (and d!296135 (not res!464674)) b!1034447))

(assert (= (and b!1034447 c!171679) b!1034449))

(assert (= (and b!1034447 (not c!171679)) b!1034451))

(assert (= (and b!1034449 res!464673) b!1034448))

(assert (= (and b!1034451 c!171678) b!1034452))

(assert (= (and b!1034451 (not c!171678)) b!1034446))

(assert (= (and b!1034452 res!464677) b!1034453))

(assert (= (and b!1034446 (not res!464675)) b!1034450))

(assert (= (and b!1034450 res!464676) b!1034454))

(assert (= (or b!1034453 b!1034454) bm!71473))

(assert (= (or b!1034452 b!1034450) bm!71471))

(assert (= (or b!1034448 bm!71473) bm!71472))

(declare-fun m!1206215 () Bool)

(assert (=> bm!71471 m!1206215))

(declare-fun m!1206217 () Bool)

(assert (=> b!1034449 m!1206217))

(declare-fun m!1206219 () Bool)

(assert (=> bm!71472 m!1206219))

(assert (=> start!90004 d!296135))

(declare-fun b!1034489 () Bool)

(declare-fun e!659044 () Bool)

(declare-fun tp!313106 () Bool)

(assert (=> b!1034489 (= e!659044 tp!313106)))

(assert (=> b!1034221 (= tp!313070 e!659044)))

(declare-fun b!1034490 () Bool)

(declare-fun tp!313107 () Bool)

(declare-fun tp!313105 () Bool)

(assert (=> b!1034490 (= e!659044 (and tp!313107 tp!313105))))

(declare-fun b!1034487 () Bool)

(assert (=> b!1034487 (= e!659044 tp_is_empty!5383)))

(declare-fun b!1034488 () Bool)

(declare-fun tp!313103 () Bool)

(declare-fun tp!313104 () Bool)

(assert (=> b!1034488 (= e!659044 (and tp!313103 tp!313104))))

(assert (= (and b!1034221 (is-ElementMatch!2870 (regOne!6253 r!15766))) b!1034487))

(assert (= (and b!1034221 (is-Concat!4703 (regOne!6253 r!15766))) b!1034488))

(assert (= (and b!1034221 (is-Star!2870 (regOne!6253 r!15766))) b!1034489))

(assert (= (and b!1034221 (is-Union!2870 (regOne!6253 r!15766))) b!1034490))

(declare-fun b!1034495 () Bool)

(declare-fun e!659045 () Bool)

(declare-fun tp!313111 () Bool)

(assert (=> b!1034495 (= e!659045 tp!313111)))

(assert (=> b!1034221 (= tp!313073 e!659045)))

(declare-fun b!1034496 () Bool)

(declare-fun tp!313112 () Bool)

(declare-fun tp!313110 () Bool)

(assert (=> b!1034496 (= e!659045 (and tp!313112 tp!313110))))

(declare-fun b!1034493 () Bool)

(assert (=> b!1034493 (= e!659045 tp_is_empty!5383)))

(declare-fun b!1034494 () Bool)

(declare-fun tp!313108 () Bool)

(declare-fun tp!313109 () Bool)

(assert (=> b!1034494 (= e!659045 (and tp!313108 tp!313109))))

(assert (= (and b!1034221 (is-ElementMatch!2870 (regTwo!6253 r!15766))) b!1034493))

(assert (= (and b!1034221 (is-Concat!4703 (regTwo!6253 r!15766))) b!1034494))

(assert (= (and b!1034221 (is-Star!2870 (regTwo!6253 r!15766))) b!1034495))

(assert (= (and b!1034221 (is-Union!2870 (regTwo!6253 r!15766))) b!1034496))

(declare-fun b!1034499 () Bool)

(declare-fun e!659046 () Bool)

(declare-fun tp!313116 () Bool)

(assert (=> b!1034499 (= e!659046 tp!313116)))

(assert (=> b!1034217 (= tp!313072 e!659046)))

(declare-fun b!1034500 () Bool)

(declare-fun tp!313117 () Bool)

(declare-fun tp!313115 () Bool)

(assert (=> b!1034500 (= e!659046 (and tp!313117 tp!313115))))

(declare-fun b!1034497 () Bool)

(assert (=> b!1034497 (= e!659046 tp_is_empty!5383)))

(declare-fun b!1034498 () Bool)

(declare-fun tp!313113 () Bool)

(declare-fun tp!313114 () Bool)

(assert (=> b!1034498 (= e!659046 (and tp!313113 tp!313114))))

(assert (= (and b!1034217 (is-ElementMatch!2870 (regOne!6252 r!15766))) b!1034497))

(assert (= (and b!1034217 (is-Concat!4703 (regOne!6252 r!15766))) b!1034498))

(assert (= (and b!1034217 (is-Star!2870 (regOne!6252 r!15766))) b!1034499))

(assert (= (and b!1034217 (is-Union!2870 (regOne!6252 r!15766))) b!1034500))

(declare-fun b!1034503 () Bool)

(declare-fun e!659047 () Bool)

(declare-fun tp!313121 () Bool)

(assert (=> b!1034503 (= e!659047 tp!313121)))

(assert (=> b!1034217 (= tp!313069 e!659047)))

(declare-fun b!1034504 () Bool)

(declare-fun tp!313122 () Bool)

(declare-fun tp!313120 () Bool)

(assert (=> b!1034504 (= e!659047 (and tp!313122 tp!313120))))

(declare-fun b!1034501 () Bool)

(assert (=> b!1034501 (= e!659047 tp_is_empty!5383)))

(declare-fun b!1034502 () Bool)

(declare-fun tp!313118 () Bool)

(declare-fun tp!313119 () Bool)

(assert (=> b!1034502 (= e!659047 (and tp!313118 tp!313119))))

(assert (= (and b!1034217 (is-ElementMatch!2870 (regTwo!6252 r!15766))) b!1034501))

(assert (= (and b!1034217 (is-Concat!4703 (regTwo!6252 r!15766))) b!1034502))

(assert (= (and b!1034217 (is-Star!2870 (regTwo!6252 r!15766))) b!1034503))

(assert (= (and b!1034217 (is-Union!2870 (regTwo!6252 r!15766))) b!1034504))

(declare-fun b!1034509 () Bool)

(declare-fun e!659050 () Bool)

(declare-fun tp!313125 () Bool)

(assert (=> b!1034509 (= e!659050 (and tp_is_empty!5383 tp!313125))))

(assert (=> b!1034218 (= tp!313074 e!659050)))

(assert (= (and b!1034218 (is-Cons!10084 (t!101146 s!10566))) b!1034509))

(declare-fun b!1034512 () Bool)

(declare-fun e!659051 () Bool)

(declare-fun tp!313129 () Bool)

(assert (=> b!1034512 (= e!659051 tp!313129)))

(assert (=> b!1034220 (= tp!313071 e!659051)))

(declare-fun b!1034513 () Bool)

(declare-fun tp!313130 () Bool)

(declare-fun tp!313128 () Bool)

(assert (=> b!1034513 (= e!659051 (and tp!313130 tp!313128))))

(declare-fun b!1034510 () Bool)

(assert (=> b!1034510 (= e!659051 tp_is_empty!5383)))

(declare-fun b!1034511 () Bool)

(declare-fun tp!313126 () Bool)

(declare-fun tp!313127 () Bool)

(assert (=> b!1034511 (= e!659051 (and tp!313126 tp!313127))))

(assert (= (and b!1034220 (is-ElementMatch!2870 (reg!3199 r!15766))) b!1034510))

(assert (= (and b!1034220 (is-Concat!4703 (reg!3199 r!15766))) b!1034511))

(assert (= (and b!1034220 (is-Star!2870 (reg!3199 r!15766))) b!1034512))

(assert (= (and b!1034220 (is-Union!2870 (reg!3199 r!15766))) b!1034513))

(push 1)

(assert (not b!1034389))

(assert (not b!1034504))

(assert (not b!1034513))

(assert (not b!1034488))

(assert (not d!296129))

(assert (not b!1034436))

(assert (not b!1034428))

(assert (not b!1034509))

(assert (not b!1034500))

(assert (not b!1034430))

(assert (not d!296125))

(assert (not b!1034434))

(assert (not b!1034499))

(assert (not b!1034337))

(assert (not b!1034341))

(assert (not b!1034334))

(assert (not bm!71454))

(assert (not d!296117))

(assert (not b!1034502))

(assert (not d!296121))

(assert (not bm!71472))

(assert (not bm!71466))

(assert (not b!1034503))

(assert (not b!1034496))

(assert (not b!1034511))

(assert (not d!296123))

(assert (not b!1034489))

(assert (not b!1034490))

(assert (not b!1034338))

(assert (not b!1034494))

(assert (not b!1034498))

(assert (not b!1034333))

(assert (not b!1034277))

(assert (not b!1034392))

(assert tp_is_empty!5383)

(assert (not bm!71471))

(assert (not b!1034439))

(assert (not b!1034495))

(assert (not b!1034335))

(assert (not d!296133))

(assert (not b!1034449))

(assert (not bm!71453))

(assert (not b!1034512))

(assert (not bm!71470))

(assert (not b!1034441))

(assert (not bm!71467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

