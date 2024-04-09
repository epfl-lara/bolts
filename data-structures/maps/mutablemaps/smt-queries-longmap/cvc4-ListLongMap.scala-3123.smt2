; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43994 () Bool)

(assert start!43994)

(declare-fun b!485074 () Bool)

(declare-fun e!285608 () Bool)

(declare-datatypes ((B!1164 0))(
  ( (B!1165 (val!7034 Int)) )
))
(declare-datatypes ((tuple2!9266 0))(
  ( (tuple2!9267 (_1!4643 (_ BitVec 64)) (_2!4643 B!1164)) )
))
(declare-datatypes ((List!9333 0))(
  ( (Nil!9330) (Cons!9329 (h!10185 tuple2!9266) (t!15566 List!9333)) )
))
(declare-fun lt!219476 () List!9333)

(declare-fun l!956 () List!9333)

(declare-fun length!16 (List!9333) Int)

(assert (=> b!485074 (= e!285608 (not (= (length!16 lt!219476) (+ 1 (length!16 l!956)))))))

(declare-fun b!485075 () Bool)

(declare-fun e!285610 () Bool)

(declare-fun tp_is_empty!13973 () Bool)

(declare-fun tp!43606 () Bool)

(assert (=> b!485075 (= e!285610 (and tp_is_empty!13973 tp!43606))))

(declare-fun b!485073 () Bool)

(declare-fun e!285609 () Bool)

(assert (=> b!485073 (= e!285609 e!285608)))

(declare-fun res!288965 () Bool)

(assert (=> b!485073 (=> (not res!288965) (not e!285608))))

(declare-fun key!251 () (_ BitVec 64))

(assert (=> b!485073 (= res!288965 (and (or (not (is-Cons!9329 l!956)) (bvsge (_1!4643 (h!10185 l!956)) key!251)) (or (not (is-Cons!9329 l!956)) (not (= (_1!4643 (h!10185 l!956)) key!251)))))))

(declare-fun value!166 () B!1164)

(declare-fun insertStrictlySorted!252 (List!9333 (_ BitVec 64) B!1164) List!9333)

(assert (=> b!485073 (= lt!219476 (insertStrictlySorted!252 l!956 key!251 value!166))))

(declare-fun res!288963 () Bool)

(assert (=> start!43994 (=> (not res!288963) (not e!285609))))

(declare-fun isStrictlySorted!433 (List!9333) Bool)

(assert (=> start!43994 (= res!288963 (isStrictlySorted!433 l!956))))

(assert (=> start!43994 e!285609))

(assert (=> start!43994 e!285610))

(assert (=> start!43994 true))

(assert (=> start!43994 tp_is_empty!13973))

(declare-fun b!485072 () Bool)

(declare-fun res!288964 () Bool)

(assert (=> b!485072 (=> (not res!288964) (not e!285609))))

(declare-fun containsKey!399 (List!9333 (_ BitVec 64)) Bool)

(assert (=> b!485072 (= res!288964 (not (containsKey!399 l!956 key!251)))))

(assert (= (and start!43994 res!288963) b!485072))

(assert (= (and b!485072 res!288964) b!485073))

(assert (= (and b!485073 res!288965) b!485074))

(assert (= (and start!43994 (is-Cons!9329 l!956)) b!485075))

(declare-fun m!465327 () Bool)

(assert (=> b!485074 m!465327))

(declare-fun m!465329 () Bool)

(assert (=> b!485074 m!465329))

(declare-fun m!465331 () Bool)

(assert (=> b!485073 m!465331))

(declare-fun m!465333 () Bool)

(assert (=> start!43994 m!465333))

(declare-fun m!465335 () Bool)

(assert (=> b!485072 m!465335))

(push 1)

(assert (not b!485072))

(assert (not b!485074))

(assert (not b!485073))

(assert (not start!43994))

(assert tp_is_empty!13973)

(assert (not b!485075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77211 () Bool)

(declare-fun res!288976 () Bool)

(declare-fun e!285629 () Bool)

(assert (=> d!77211 (=> res!288976 e!285629)))

(assert (=> d!77211 (= res!288976 (and (is-Cons!9329 l!956) (= (_1!4643 (h!10185 l!956)) key!251)))))

(assert (=> d!77211 (= (containsKey!399 l!956 key!251) e!285629)))

(declare-fun b!485102 () Bool)

(declare-fun e!285630 () Bool)

(assert (=> b!485102 (= e!285629 e!285630)))

(declare-fun res!288977 () Bool)

(assert (=> b!485102 (=> (not res!288977) (not e!285630))))

(assert (=> b!485102 (= res!288977 (and (or (not (is-Cons!9329 l!956)) (bvsle (_1!4643 (h!10185 l!956)) key!251)) (is-Cons!9329 l!956) (bvslt (_1!4643 (h!10185 l!956)) key!251)))))

(declare-fun b!485103 () Bool)

(assert (=> b!485103 (= e!285630 (containsKey!399 (t!15566 l!956) key!251))))

(assert (= (and d!77211 (not res!288976)) b!485102))

(assert (= (and b!485102 res!288977) b!485103))

(declare-fun m!465339 () Bool)

(assert (=> b!485103 m!465339))

(assert (=> b!485072 d!77211))

(declare-fun bm!31239 () Bool)

(declare-fun call!31243 () List!9333)

(declare-fun call!31244 () List!9333)

(assert (=> bm!31239 (= call!31243 call!31244)))

(declare-fun b!485185 () Bool)

(declare-fun e!285679 () List!9333)

(declare-fun call!31242 () List!9333)

(assert (=> b!485185 (= e!285679 call!31242)))

(declare-fun bm!31240 () Bool)

(assert (=> bm!31240 (= call!31244 call!31242)))

(declare-fun c!58365 () Bool)

(declare-fun c!58364 () Bool)

(declare-fun e!285682 () List!9333)

(declare-fun b!485186 () Bool)

(assert (=> b!485186 (= e!285682 (ite c!58364 (t!15566 l!956) (ite c!58365 (Cons!9329 (h!10185 l!956) (t!15566 l!956)) Nil!9330)))))

(declare-fun b!485188 () Bool)

(declare-fun res!289007 () Bool)

(declare-fun e!285680 () Bool)

(assert (=> b!485188 (=> (not res!289007) (not e!285680))))

(declare-fun lt!219485 () List!9333)

(assert (=> b!485188 (= res!289007 (containsKey!399 lt!219485 key!251))))

(declare-fun b!485189 () Bool)

(declare-fun e!285681 () List!9333)

(assert (=> b!485189 (= e!285679 e!285681)))

(assert (=> b!485189 (= c!58364 (and (is-Cons!9329 l!956) (= (_1!4643 (h!10185 l!956)) key!251)))))

(declare-fun b!485190 () Bool)

(assert (=> b!485190 (= c!58365 (and (is-Cons!9329 l!956) (bvsgt (_1!4643 (h!10185 l!956)) key!251)))))

(declare-fun e!285678 () List!9333)

(assert (=> b!485190 (= e!285681 e!285678)))

(declare-fun b!485191 () Bool)

(assert (=> b!485191 (= e!285678 call!31243)))

(declare-fun c!58367 () Bool)

(declare-fun bm!31241 () Bool)

(declare-fun $colon$colon!132 (List!9333 tuple2!9266) List!9333)

(assert (=> bm!31241 (= call!31242 ($colon$colon!132 e!285682 (ite c!58367 (h!10185 l!956) (tuple2!9267 key!251 value!166))))))

(declare-fun c!58366 () Bool)

(assert (=> bm!31241 (= c!58366 c!58367)))

(declare-fun b!485187 () Bool)

(assert (=> b!485187 (= e!285678 call!31243)))

(declare-fun d!77215 () Bool)

(assert (=> d!77215 e!285680))

(declare-fun res!289006 () Bool)

(assert (=> d!77215 (=> (not res!289006) (not e!285680))))

(assert (=> d!77215 (= res!289006 (isStrictlySorted!433 lt!219485))))

(assert (=> d!77215 (= lt!219485 e!285679)))

(assert (=> d!77215 (= c!58367 (and (is-Cons!9329 l!956) (bvslt (_1!4643 (h!10185 l!956)) key!251)))))

(assert (=> d!77215 (isStrictlySorted!433 l!956)))

(assert (=> d!77215 (= (insertStrictlySorted!252 l!956 key!251 value!166) lt!219485)))

(declare-fun b!485192 () Bool)

(declare-fun contains!2694 (List!9333 tuple2!9266) Bool)

(assert (=> b!485192 (= e!285680 (contains!2694 lt!219485 (tuple2!9267 key!251 value!166)))))

(declare-fun b!485193 () Bool)

(assert (=> b!485193 (= e!285681 call!31244)))

(declare-fun b!485194 () Bool)

(assert (=> b!485194 (= e!285682 (insertStrictlySorted!252 (t!15566 l!956) key!251 value!166))))

(assert (= (and d!77215 c!58367) b!485185))

(assert (= (and d!77215 (not c!58367)) b!485189))

(assert (= (and b!485189 c!58364) b!485193))

(assert (= (and b!485189 (not c!58364)) b!485190))

(assert (= (and b!485190 c!58365) b!485187))

(assert (= (and b!485190 (not c!58365)) b!485191))

(assert (= (or b!485187 b!485191) bm!31239))

(assert (= (or b!485193 bm!31239) bm!31240))

(assert (= (or b!485185 bm!31240) bm!31241))

(assert (= (and bm!31241 c!58366) b!485194))

(assert (= (and bm!31241 (not c!58366)) b!485186))

(assert (= (and d!77215 res!289006) b!485188))

(assert (= (and b!485188 res!289007) b!485192))

(declare-fun m!465373 () Bool)

(assert (=> bm!31241 m!465373))

(declare-fun m!465375 () Bool)

(assert (=> d!77215 m!465375))

(assert (=> d!77215 m!465333))

(declare-fun m!465377 () Bool)

(assert (=> b!485188 m!465377))

(declare-fun m!465379 () Bool)

(assert (=> b!485192 m!465379))

(declare-fun m!465381 () Bool)

(assert (=> b!485194 m!465381))

(assert (=> b!485073 d!77215))

(declare-fun d!77231 () Bool)

(declare-fun size!15447 (List!9333) Int)

(assert (=> d!77231 (= (length!16 lt!219476) (size!15447 lt!219476))))

(declare-fun bs!15454 () Bool)

(assert (= bs!15454 d!77231))

(declare-fun m!465383 () Bool)

(assert (=> bs!15454 m!465383))

(assert (=> b!485074 d!77231))

(declare-fun d!77233 () Bool)

(assert (=> d!77233 (= (length!16 l!956) (size!15447 l!956))))

(declare-fun bs!15455 () Bool)

(assert (= bs!15455 d!77233))

(declare-fun m!465385 () Bool)

(assert (=> bs!15455 m!465385))

(assert (=> b!485074 d!77233))

(declare-fun d!77235 () Bool)

(declare-fun res!289018 () Bool)

(declare-fun e!285696 () Bool)

(assert (=> d!77235 (=> res!289018 e!285696)))

(assert (=> d!77235 (= res!289018 (or (is-Nil!9330 l!956) (is-Nil!9330 (t!15566 l!956))))))

(assert (=> d!77235 (= (isStrictlySorted!433 l!956) e!285696)))

(declare-fun b!485210 () Bool)

(declare-fun e!285697 () Bool)

(assert (=> b!485210 (= e!285696 e!285697)))

(declare-fun res!289019 () Bool)

(assert (=> b!485210 (=> (not res!289019) (not e!285697))))

(assert (=> b!485210 (= res!289019 (bvslt (_1!4643 (h!10185 l!956)) (_1!4643 (h!10185 (t!15566 l!956)))))))

(declare-fun b!485211 () Bool)

(assert (=> b!485211 (= e!285697 (isStrictlySorted!433 (t!15566 l!956)))))

(assert (= (and d!77235 (not res!289018)) b!485210))

(assert (= (and b!485210 res!289019) b!485211))

(declare-fun m!465389 () Bool)

(assert (=> b!485211 m!465389))

(assert (=> start!43994 d!77235))

(declare-fun b!485216 () Bool)

(declare-fun e!285700 () Bool)

(declare-fun tp!43615 () Bool)

(assert (=> b!485216 (= e!285700 (and tp_is_empty!13973 tp!43615))))

(assert (=> b!485075 (= tp!43606 e!285700)))

(assert (= (and b!485075 (is-Cons!9329 (t!15566 l!956))) b!485216))

(push 1)

(assert (not b!485216))

(assert (not bm!31241))

(assert (not b!485103))

(assert tp_is_empty!13973)

(assert (not d!77231))

(assert (not b!485188))

(assert (not b!485194))

(assert (not d!77215))

(assert (not b!485192))

(assert (not b!485211))

(assert (not d!77233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77273 () Bool)

(declare-fun lt!219504 () Bool)

(declare-fun content!218 (List!9333) (Set tuple2!9266))

(assert (=> d!77273 (= lt!219504 (member (tuple2!9267 key!251 value!166) (content!218 lt!219485)))))

(declare-fun e!285753 () Bool)

(assert (=> d!77273 (= lt!219504 e!285753)))

(declare-fun res!289056 () Bool)

(assert (=> d!77273 (=> (not res!289056) (not e!285753))))

(assert (=> d!77273 (= res!289056 (is-Cons!9329 lt!219485))))

(assert (=> d!77273 (= (contains!2694 lt!219485 (tuple2!9267 key!251 value!166)) lt!219504)))

(declare-fun b!485287 () Bool)

(declare-fun e!285754 () Bool)

(assert (=> b!485287 (= e!285753 e!285754)))

(declare-fun res!289057 () Bool)

(assert (=> b!485287 (=> res!289057 e!285754)))

(assert (=> b!485287 (= res!289057 (= (h!10185 lt!219485) (tuple2!9267 key!251 value!166)))))

(declare-fun b!485288 () Bool)

(assert (=> b!485288 (= e!285754 (contains!2694 (t!15566 lt!219485) (tuple2!9267 key!251 value!166)))))

(assert (= (and d!77273 res!289056) b!485287))

(assert (= (and b!485287 (not res!289057)) b!485288))

(declare-fun m!465447 () Bool)

(assert (=> d!77273 m!465447))

(declare-fun m!465449 () Bool)

(assert (=> d!77273 m!465449))

(declare-fun m!465451 () Bool)

(assert (=> b!485288 m!465451))

(assert (=> b!485192 d!77273))

(declare-fun d!77275 () Bool)

(declare-fun res!289058 () Bool)

(declare-fun e!285755 () Bool)

(assert (=> d!77275 (=> res!289058 e!285755)))

(assert (=> d!77275 (= res!289058 (or (is-Nil!9330 lt!219485) (is-Nil!9330 (t!15566 lt!219485))))))

(assert (=> d!77275 (= (isStrictlySorted!433 lt!219485) e!285755)))

(declare-fun b!485289 () Bool)

(declare-fun e!285756 () Bool)

(assert (=> b!485289 (= e!285755 e!285756)))

(declare-fun res!289059 () Bool)

(assert (=> b!485289 (=> (not res!289059) (not e!285756))))

(assert (=> b!485289 (= res!289059 (bvslt (_1!4643 (h!10185 lt!219485)) (_1!4643 (h!10185 (t!15566 lt!219485)))))))

(declare-fun b!485290 () Bool)

(assert (=> b!485290 (= e!285756 (isStrictlySorted!433 (t!15566 lt!219485)))))

(assert (= (and d!77275 (not res!289058)) b!485289))

(assert (= (and b!485289 res!289059) b!485290))

(declare-fun m!465453 () Bool)

(assert (=> b!485290 m!465453))

(assert (=> d!77215 d!77275))

(assert (=> d!77215 d!77235))

(declare-fun d!77277 () Bool)

(declare-fun res!289060 () Bool)

(declare-fun e!285757 () Bool)

(assert (=> d!77277 (=> res!289060 e!285757)))

(assert (=> d!77277 (= res!289060 (and (is-Cons!9329 lt!219485) (= (_1!4643 (h!10185 lt!219485)) key!251)))))

(assert (=> d!77277 (= (containsKey!399 lt!219485 key!251) e!285757)))

(declare-fun b!485291 () Bool)

(declare-fun e!285758 () Bool)

(assert (=> b!485291 (= e!285757 e!285758)))

(declare-fun res!289061 () Bool)

(assert (=> b!485291 (=> (not res!289061) (not e!285758))))

(assert (=> b!485291 (= res!289061 (and (or (not (is-Cons!9329 lt!219485)) (bvsle (_1!4643 (h!10185 lt!219485)) key!251)) (is-Cons!9329 lt!219485) (bvslt (_1!4643 (h!10185 lt!219485)) key!251)))))

(declare-fun b!485292 () Bool)

(assert (=> b!485292 (= e!285758 (containsKey!399 (t!15566 lt!219485) key!251))))

(assert (= (and d!77277 (not res!289060)) b!485291))

(assert (= (and b!485291 res!289061) b!485292))

(declare-fun m!465455 () Bool)

(assert (=> b!485292 m!465455))

(assert (=> b!485188 d!77277))

(declare-fun d!77279 () Bool)

(declare-fun res!289062 () Bool)

(declare-fun e!285759 () Bool)

(assert (=> d!77279 (=> res!289062 e!285759)))

(assert (=> d!77279 (= res!289062 (or (is-Nil!9330 (t!15566 l!956)) (is-Nil!9330 (t!15566 (t!15566 l!956)))))))

(assert (=> d!77279 (= (isStrictlySorted!433 (t!15566 l!956)) e!285759)))

(declare-fun b!485293 () Bool)

(declare-fun e!285760 () Bool)

(assert (=> b!485293 (= e!285759 e!285760)))

(declare-fun res!289063 () Bool)

(assert (=> b!485293 (=> (not res!289063) (not e!285760))))

(assert (=> b!485293 (= res!289063 (bvslt (_1!4643 (h!10185 (t!15566 l!956))) (_1!4643 (h!10185 (t!15566 (t!15566 l!956))))))))

(declare-fun b!485294 () Bool)

(assert (=> b!485294 (= e!285760 (isStrictlySorted!433 (t!15566 (t!15566 l!956))))))

(assert (= (and d!77279 (not res!289062)) b!485293))

(assert (= (and b!485293 res!289063) b!485294))

(declare-fun m!465457 () Bool)

(assert (=> b!485294 m!465457))

(assert (=> b!485211 d!77279))

(declare-fun d!77281 () Bool)

(declare-fun res!289064 () Bool)

(declare-fun e!285761 () Bool)

(assert (=> d!77281 (=> res!289064 e!285761)))

(assert (=> d!77281 (= res!289064 (and (is-Cons!9329 (t!15566 l!956)) (= (_1!4643 (h!10185 (t!15566 l!956))) key!251)))))

(assert (=> d!77281 (= (containsKey!399 (t!15566 l!956) key!251) e!285761)))

(declare-fun b!485295 () Bool)

(declare-fun e!285762 () Bool)

(assert (=> b!485295 (= e!285761 e!285762)))

(declare-fun res!289065 () Bool)

(assert (=> b!485295 (=> (not res!289065) (not e!285762))))

(assert (=> b!485295 (= res!289065 (and (or (not (is-Cons!9329 (t!15566 l!956))) (bvsle (_1!4643 (h!10185 (t!15566 l!956))) key!251)) (is-Cons!9329 (t!15566 l!956)) (bvslt (_1!4643 (h!10185 (t!15566 l!956))) key!251)))))

(declare-fun b!485296 () Bool)

(assert (=> b!485296 (= e!285762 (containsKey!399 (t!15566 (t!15566 l!956)) key!251))))

(assert (= (and d!77281 (not res!289064)) b!485295))

(assert (= (and b!485295 res!289065) b!485296))

(declare-fun m!465459 () Bool)

(assert (=> b!485296 m!465459))

(assert (=> b!485103 d!77281))

(declare-fun bm!31248 () Bool)

(declare-fun call!31252 () List!9333)

(declare-fun call!31253 () List!9333)

(assert (=> bm!31248 (= call!31252 call!31253)))

(declare-fun b!485297 () Bool)

(declare-fun e!285764 () List!9333)

(declare-fun call!31251 () List!9333)

(assert (=> b!485297 (= e!285764 call!31251)))

(declare-fun bm!31249 () Bool)

(assert (=> bm!31249 (= call!31253 call!31251)))

(declare-fun e!285767 () List!9333)

(declare-fun b!485298 () Bool)

(declare-fun c!58384 () Bool)

(declare-fun c!58385 () Bool)

(assert (=> b!485298 (= e!285767 (ite c!58384 (t!15566 (t!15566 l!956)) (ite c!58385 (Cons!9329 (h!10185 (t!15566 l!956)) (t!15566 (t!15566 l!956))) Nil!9330)))))

(declare-fun b!485300 () Bool)

(declare-fun res!289067 () Bool)

(declare-fun e!285765 () Bool)

(assert (=> b!485300 (=> (not res!289067) (not e!285765))))

(declare-fun lt!219505 () List!9333)

(assert (=> b!485300 (= res!289067 (containsKey!399 lt!219505 key!251))))

(declare-fun b!485301 () Bool)

(declare-fun e!285766 () List!9333)

(assert (=> b!485301 (= e!285764 e!285766)))

(assert (=> b!485301 (= c!58384 (and (is-Cons!9329 (t!15566 l!956)) (= (_1!4643 (h!10185 (t!15566 l!956))) key!251)))))

(declare-fun b!485302 () Bool)

(assert (=> b!485302 (= c!58385 (and (is-Cons!9329 (t!15566 l!956)) (bvsgt (_1!4643 (h!10185 (t!15566 l!956))) key!251)))))

(declare-fun e!285763 () List!9333)

(assert (=> b!485302 (= e!285766 e!285763)))

(declare-fun b!485303 () Bool)

(assert (=> b!485303 (= e!285763 call!31252)))

(declare-fun bm!31250 () Bool)

(declare-fun c!58387 () Bool)

(assert (=> bm!31250 (= call!31251 ($colon$colon!132 e!285767 (ite c!58387 (h!10185 (t!15566 l!956)) (tuple2!9267 key!251 value!166))))))

(declare-fun c!58386 () Bool)

(assert (=> bm!31250 (= c!58386 c!58387)))

(declare-fun b!485299 () Bool)

(assert (=> b!485299 (= e!285763 call!31252)))

(declare-fun d!77283 () Bool)

(assert (=> d!77283 e!285765))

(declare-fun res!289066 () Bool)

(assert (=> d!77283 (=> (not res!289066) (not e!285765))))

(assert (=> d!77283 (= res!289066 (isStrictlySorted!433 lt!219505))))

(assert (=> d!77283 (= lt!219505 e!285764)))

(assert (=> d!77283 (= c!58387 (and (is-Cons!9329 (t!15566 l!956)) (bvslt (_1!4643 (h!10185 (t!15566 l!956))) key!251)))))

(assert (=> d!77283 (isStrictlySorted!433 (t!15566 l!956))))

(assert (=> d!77283 (= (insertStrictlySorted!252 (t!15566 l!956) key!251 value!166) lt!219505)))

(declare-fun b!485304 () Bool)

(assert (=> b!485304 (= e!285765 (contains!2694 lt!219505 (tuple2!9267 key!251 value!166)))))

(declare-fun b!485305 () Bool)

(assert (=> b!485305 (= e!285766 call!31253)))

(declare-fun b!485306 () Bool)

(assert (=> b!485306 (= e!285767 (insertStrictlySorted!252 (t!15566 (t!15566 l!956)) key!251 value!166))))

(assert (= (and d!77283 c!58387) b!485297))

(assert (= (and d!77283 (not c!58387)) b!485301))

(assert (= (and b!485301 c!58384) b!485305))

(assert (= (and b!485301 (not c!58384)) b!485302))

(assert (= (and b!485302 c!58385) b!485299))

(assert (= (and b!485302 (not c!58385)) b!485303))

(assert (= (or b!485299 b!485303) bm!31248))

(assert (= (or b!485305 bm!31248) bm!31249))

(assert (= (or b!485297 bm!31249) bm!31250))

(assert (= (and bm!31250 c!58386) b!485306))

(assert (= (and bm!31250 (not c!58386)) b!485298))

(assert (= (and d!77283 res!289066) b!485300))

(assert (= (and b!485300 res!289067) b!485304))

