; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43990 () Bool)

(assert start!43990)

(declare-fun b!485050 () Bool)

(declare-fun e!285592 () Bool)

(declare-datatypes ((B!1160 0))(
  ( (B!1161 (val!7032 Int)) )
))
(declare-datatypes ((tuple2!9262 0))(
  ( (tuple2!9263 (_1!4641 (_ BitVec 64)) (_2!4641 B!1160)) )
))
(declare-datatypes ((List!9331 0))(
  ( (Nil!9328) (Cons!9327 (h!10183 tuple2!9262) (t!15564 List!9331)) )
))
(declare-fun lt!219470 () List!9331)

(declare-fun l!956 () List!9331)

(declare-fun length!14 (List!9331) Int)

(assert (=> b!485050 (= e!285592 (not (= (length!14 lt!219470) (+ 1 (length!14 l!956)))))))

(declare-fun res!288945 () Bool)

(declare-fun e!285591 () Bool)

(assert (=> start!43990 (=> (not res!288945) (not e!285591))))

(declare-fun isStrictlySorted!431 (List!9331) Bool)

(assert (=> start!43990 (= res!288945 (isStrictlySorted!431 l!956))))

(assert (=> start!43990 e!285591))

(declare-fun e!285590 () Bool)

(assert (=> start!43990 e!285590))

(assert (=> start!43990 true))

(declare-fun tp_is_empty!13969 () Bool)

(assert (=> start!43990 tp_is_empty!13969))

(declare-fun b!485051 () Bool)

(declare-fun tp!43600 () Bool)

(assert (=> b!485051 (= e!285590 (and tp_is_empty!13969 tp!43600))))

(declare-fun b!485049 () Bool)

(assert (=> b!485049 (= e!285591 e!285592)))

(declare-fun res!288946 () Bool)

(assert (=> b!485049 (=> (not res!288946) (not e!285592))))

(declare-fun key!251 () (_ BitVec 64))

(assert (=> b!485049 (= res!288946 (and (or (not (is-Cons!9327 l!956)) (bvsge (_1!4641 (h!10183 l!956)) key!251)) (or (not (is-Cons!9327 l!956)) (not (= (_1!4641 (h!10183 l!956)) key!251)))))))

(declare-fun value!166 () B!1160)

(declare-fun insertStrictlySorted!250 (List!9331 (_ BitVec 64) B!1160) List!9331)

(assert (=> b!485049 (= lt!219470 (insertStrictlySorted!250 l!956 key!251 value!166))))

(declare-fun b!485048 () Bool)

(declare-fun res!288947 () Bool)

(assert (=> b!485048 (=> (not res!288947) (not e!285591))))

(declare-fun containsKey!397 (List!9331 (_ BitVec 64)) Bool)

(assert (=> b!485048 (= res!288947 (not (containsKey!397 l!956 key!251)))))

(assert (= (and start!43990 res!288945) b!485048))

(assert (= (and b!485048 res!288947) b!485049))

(assert (= (and b!485049 res!288946) b!485050))

(assert (= (and start!43990 (is-Cons!9327 l!956)) b!485051))

(declare-fun m!465307 () Bool)

(assert (=> b!485050 m!465307))

(declare-fun m!465309 () Bool)

(assert (=> b!485050 m!465309))

(declare-fun m!465311 () Bool)

(assert (=> start!43990 m!465311))

(declare-fun m!465313 () Bool)

(assert (=> b!485049 m!465313))

(declare-fun m!465315 () Bool)

(assert (=> b!485048 m!465315))

(push 1)

(assert tp_is_empty!13969)

(assert (not b!485049))

(assert (not b!485048))

(assert (not b!485050))

(assert (not start!43990))

(assert (not b!485051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77209 () Bool)

(declare-fun res!288970 () Bool)

(declare-fun e!285615 () Bool)

(assert (=> d!77209 (=> res!288970 e!285615)))

(assert (=> d!77209 (= res!288970 (and (is-Cons!9327 l!956) (= (_1!4641 (h!10183 l!956)) key!251)))))

(assert (=> d!77209 (= (containsKey!397 l!956 key!251) e!285615)))

(declare-fun b!485080 () Bool)

(declare-fun e!285616 () Bool)

(assert (=> b!485080 (= e!285615 e!285616)))

(declare-fun res!288971 () Bool)

(assert (=> b!485080 (=> (not res!288971) (not e!285616))))

(assert (=> b!485080 (= res!288971 (and (or (not (is-Cons!9327 l!956)) (bvsle (_1!4641 (h!10183 l!956)) key!251)) (is-Cons!9327 l!956) (bvslt (_1!4641 (h!10183 l!956)) key!251)))))

(declare-fun b!485081 () Bool)

(assert (=> b!485081 (= e!285616 (containsKey!397 (t!15564 l!956) key!251))))

(assert (= (and d!77209 (not res!288970)) b!485080))

(assert (= (and b!485080 res!288971) b!485081))

(declare-fun m!465337 () Bool)

(assert (=> b!485081 m!465337))

(assert (=> b!485048 d!77209))

(declare-fun e!285677 () List!9331)

(declare-fun b!485175 () Bool)

(assert (=> b!485175 (= e!285677 (insertStrictlySorted!250 (t!15564 l!956) key!251 value!166))))

(declare-fun b!485176 () Bool)

(declare-fun e!285675 () List!9331)

(declare-fun call!31239 () List!9331)

(assert (=> b!485176 (= e!285675 call!31239)))

(declare-fun b!485177 () Bool)

(declare-fun e!285673 () List!9331)

(declare-fun call!31240 () List!9331)

(assert (=> b!485177 (= e!285673 call!31240)))

(declare-fun b!485178 () Bool)

(declare-fun res!289004 () Bool)

(declare-fun e!285676 () Bool)

(assert (=> b!485178 (=> (not res!289004) (not e!285676))))

(declare-fun lt!219484 () List!9331)

(assert (=> b!485178 (= res!289004 (containsKey!397 lt!219484 key!251))))

(declare-fun b!485179 () Bool)

(declare-fun c!58363 () Bool)

(assert (=> b!485179 (= c!58363 (and (is-Cons!9327 l!956) (bvsgt (_1!4641 (h!10183 l!956)) key!251)))))

(declare-fun e!285674 () List!9331)

(assert (=> b!485179 (= e!285675 e!285674)))

(declare-fun bm!31237 () Bool)

(declare-fun call!31241 () List!9331)

(assert (=> bm!31237 (= call!31241 call!31239)))

(declare-fun b!485180 () Bool)

(assert (=> b!485180 (= e!285674 call!31241)))

(declare-fun b!485181 () Bool)

(assert (=> b!485181 (= e!285673 e!285675)))

(declare-fun c!58362 () Bool)

(assert (=> b!485181 (= c!58362 (and (is-Cons!9327 l!956) (= (_1!4641 (h!10183 l!956)) key!251)))))

(declare-fun b!485182 () Bool)

(assert (=> b!485182 (= e!285674 call!31241)))

(declare-fun b!485183 () Bool)

(declare-fun contains!2693 (List!9331 tuple2!9262) Bool)

(assert (=> b!485183 (= e!285676 (contains!2693 lt!219484 (tuple2!9263 key!251 value!166)))))

(declare-fun bm!31238 () Bool)

(assert (=> bm!31238 (= call!31239 call!31240)))

(declare-fun b!485184 () Bool)

(assert (=> b!485184 (= e!285677 (ite c!58362 (t!15564 l!956) (ite c!58363 (Cons!9327 (h!10183 l!956) (t!15564 l!956)) Nil!9328)))))

(declare-fun d!77213 () Bool)

(assert (=> d!77213 e!285676))

(declare-fun res!289005 () Bool)

(assert (=> d!77213 (=> (not res!289005) (not e!285676))))

(assert (=> d!77213 (= res!289005 (isStrictlySorted!431 lt!219484))))

(assert (=> d!77213 (= lt!219484 e!285673)))

(declare-fun c!58360 () Bool)

(assert (=> d!77213 (= c!58360 (and (is-Cons!9327 l!956) (bvslt (_1!4641 (h!10183 l!956)) key!251)))))

(assert (=> d!77213 (isStrictlySorted!431 l!956)))

(assert (=> d!77213 (= (insertStrictlySorted!250 l!956 key!251 value!166) lt!219484)))

(declare-fun bm!31236 () Bool)

(declare-fun $colon$colon!131 (List!9331 tuple2!9262) List!9331)

(assert (=> bm!31236 (= call!31240 ($colon$colon!131 e!285677 (ite c!58360 (h!10183 l!956) (tuple2!9263 key!251 value!166))))))

(declare-fun c!58361 () Bool)

(assert (=> bm!31236 (= c!58361 c!58360)))

(assert (= (and d!77213 c!58360) b!485177))

(assert (= (and d!77213 (not c!58360)) b!485181))

(assert (= (and b!485181 c!58362) b!485176))

(assert (= (and b!485181 (not c!58362)) b!485179))

(assert (= (and b!485179 c!58363) b!485182))

(assert (= (and b!485179 (not c!58363)) b!485180))

(assert (= (or b!485182 b!485180) bm!31237))

(assert (= (or b!485176 bm!31237) bm!31238))

(assert (= (or b!485177 bm!31238) bm!31236))

(assert (= (and bm!31236 c!58361) b!485175))

(assert (= (and bm!31236 (not c!58361)) b!485184))

(assert (= (and d!77213 res!289005) b!485178))

(assert (= (and b!485178 res!289004) b!485183))

(declare-fun m!465359 () Bool)

(assert (=> b!485178 m!465359))

(declare-fun m!465361 () Bool)

(assert (=> b!485183 m!465361))

(declare-fun m!465363 () Bool)

(assert (=> bm!31236 m!465363))

(declare-fun m!465365 () Bool)

(assert (=> d!77213 m!465365))

(assert (=> d!77213 m!465311))

(declare-fun m!465367 () Bool)

(assert (=> b!485175 m!465367))

(assert (=> b!485049 d!77213))

(declare-fun d!77225 () Bool)

(declare-fun size!15446 (List!9331) Int)

(assert (=> d!77225 (= (length!14 lt!219470) (size!15446 lt!219470))))

(declare-fun bs!15452 () Bool)

(assert (= bs!15452 d!77225))

(declare-fun m!465369 () Bool)

(assert (=> bs!15452 m!465369))

(assert (=> b!485050 d!77225))

(declare-fun d!77227 () Bool)

(assert (=> d!77227 (= (length!14 l!956) (size!15446 l!956))))

(declare-fun bs!15453 () Bool)

(assert (= bs!15453 d!77227))

(declare-fun m!465371 () Bool)

(assert (=> bs!15453 m!465371))

(assert (=> b!485050 d!77227))

(declare-fun d!77229 () Bool)

(declare-fun res!289012 () Bool)

(declare-fun e!285687 () Bool)

(assert (=> d!77229 (=> res!289012 e!285687)))

(assert (=> d!77229 (= res!289012 (or (is-Nil!9328 l!956) (is-Nil!9328 (t!15564 l!956))))))

(assert (=> d!77229 (= (isStrictlySorted!431 l!956) e!285687)))

(declare-fun b!485199 () Bool)

(declare-fun e!285688 () Bool)

(assert (=> b!485199 (= e!285687 e!285688)))

(declare-fun res!289013 () Bool)

(assert (=> b!485199 (=> (not res!289013) (not e!285688))))

(assert (=> b!485199 (= res!289013 (bvslt (_1!4641 (h!10183 l!956)) (_1!4641 (h!10183 (t!15564 l!956)))))))

(declare-fun b!485200 () Bool)

(assert (=> b!485200 (= e!285688 (isStrictlySorted!431 (t!15564 l!956)))))

(assert (= (and d!77229 (not res!289012)) b!485199))

(assert (= (and b!485199 res!289013) b!485200))

(declare-fun m!465387 () Bool)

(assert (=> b!485200 m!465387))

(assert (=> start!43990 d!77229))

(declare-fun b!485209 () Bool)

(declare-fun e!285695 () Bool)

(declare-fun tp!43612 () Bool)

(assert (=> b!485209 (= e!285695 (and tp_is_empty!13969 tp!43612))))

(assert (=> b!485051 (= tp!43600 e!285695)))

(assert (= (and b!485051 (is-Cons!9327 (t!15564 l!956))) b!485209))

(push 1)

(assert (not b!485200))

(assert tp_is_empty!13969)

(assert (not b!485175))

(assert (not d!77225))

(assert (not d!77213))

(assert (not b!485183))

(assert (not b!485081))

(assert (not bm!31236))

(assert (not b!485178))

(assert (not d!77227))

(assert (not b!485209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!285729 () List!9331)

(declare-fun b!485250 () Bool)

(assert (=> b!485250 (= e!285729 (insertStrictlySorted!250 (t!15564 (t!15564 l!956)) key!251 value!166))))

(declare-fun b!485251 () Bool)

(declare-fun e!285727 () List!9331)

(declare-fun call!31248 () List!9331)

(assert (=> b!485251 (= e!285727 call!31248)))

(declare-fun b!485252 () Bool)

(declare-fun e!285725 () List!9331)

(declare-fun call!31249 () List!9331)

(assert (=> b!485252 (= e!285725 call!31249)))

(declare-fun b!485253 () Bool)

(declare-fun res!289036 () Bool)

(declare-fun e!285728 () Bool)

(assert (=> b!485253 (=> (not res!289036) (not e!285728))))

(declare-fun lt!219494 () List!9331)

(assert (=> b!485253 (= res!289036 (containsKey!397 lt!219494 key!251))))

(declare-fun b!485254 () Bool)

(declare-fun c!58379 () Bool)

(assert (=> b!485254 (= c!58379 (and (is-Cons!9327 (t!15564 l!956)) (bvsgt (_1!4641 (h!10183 (t!15564 l!956))) key!251)))))

(declare-fun e!285726 () List!9331)

(assert (=> b!485254 (= e!285727 e!285726)))

(declare-fun bm!31246 () Bool)

(declare-fun call!31250 () List!9331)

(assert (=> bm!31246 (= call!31250 call!31248)))

(declare-fun b!485255 () Bool)

(assert (=> b!485255 (= e!285726 call!31250)))

(declare-fun b!485256 () Bool)

(assert (=> b!485256 (= e!285725 e!285727)))

(declare-fun c!58378 () Bool)

(assert (=> b!485256 (= c!58378 (and (is-Cons!9327 (t!15564 l!956)) (= (_1!4641 (h!10183 (t!15564 l!956))) key!251)))))

(declare-fun b!485257 () Bool)

(assert (=> b!485257 (= e!285726 call!31250)))

(declare-fun b!485258 () Bool)

(assert (=> b!485258 (= e!285728 (contains!2693 lt!219494 (tuple2!9263 key!251 value!166)))))

(declare-fun bm!31247 () Bool)

(assert (=> bm!31247 (= call!31248 call!31249)))

(declare-fun b!485259 () Bool)

(assert (=> b!485259 (= e!285729 (ite c!58378 (t!15564 (t!15564 l!956)) (ite c!58379 (Cons!9327 (h!10183 (t!15564 l!956)) (t!15564 (t!15564 l!956))) Nil!9328)))))

(declare-fun d!77255 () Bool)

(assert (=> d!77255 e!285728))

(declare-fun res!289037 () Bool)

(assert (=> d!77255 (=> (not res!289037) (not e!285728))))

(assert (=> d!77255 (= res!289037 (isStrictlySorted!431 lt!219494))))

(assert (=> d!77255 (= lt!219494 e!285725)))

(declare-fun c!58376 () Bool)

(assert (=> d!77255 (= c!58376 (and (is-Cons!9327 (t!15564 l!956)) (bvslt (_1!4641 (h!10183 (t!15564 l!956))) key!251)))))

(assert (=> d!77255 (isStrictlySorted!431 (t!15564 l!956))))

(assert (=> d!77255 (= (insertStrictlySorted!250 (t!15564 l!956) key!251 value!166) lt!219494)))

(declare-fun bm!31245 () Bool)

(assert (=> bm!31245 (= call!31249 ($colon$colon!131 e!285729 (ite c!58376 (h!10183 (t!15564 l!956)) (tuple2!9263 key!251 value!166))))))

(declare-fun c!58377 () Bool)

(assert (=> bm!31245 (= c!58377 c!58376)))

(assert (= (and d!77255 c!58376) b!485252))

(assert (= (and d!77255 (not c!58376)) b!485256))

(assert (= (and b!485256 c!58378) b!485251))

(assert (= (and b!485256 (not c!58378)) b!485254))

(assert (= (and b!485254 c!58379) b!485257))

(assert (= (and b!485254 (not c!58379)) b!485255))

(assert (= (or b!485257 b!485255) bm!31246))

(assert (= (or b!485251 bm!31246) bm!31247))

(assert (= (or b!485252 bm!31247) bm!31245))

(assert (= (and bm!31245 c!58377) b!485250))

(assert (= (and bm!31245 (not c!58377)) b!485259))

(assert (= (and d!77255 res!289037) b!485253))

(assert (= (and b!485253 res!289036) b!485258))

(declare-fun m!465419 () Bool)

(assert (=> b!485253 m!465419))

(declare-fun m!465421 () Bool)

(assert (=> b!485258 m!465421))

(declare-fun m!465423 () Bool)

(assert (=> bm!31245 m!465423))

(declare-fun m!465425 () Bool)

(assert (=> d!77255 m!465425))

(assert (=> d!77255 m!465387))

(declare-fun m!465427 () Bool)

(assert (=> b!485250 m!465427))

(assert (=> b!485175 d!77255))

(declare-fun d!77257 () Bool)

(declare-fun res!289038 () Bool)

(declare-fun e!285730 () Bool)

(assert (=> d!77257 (=> res!289038 e!285730)))

(assert (=> d!77257 (= res!289038 (or (is-Nil!9328 (t!15564 l!956)) (is-Nil!9328 (t!15564 (t!15564 l!956)))))))

(assert (=> d!77257 (= (isStrictlySorted!431 (t!15564 l!956)) e!285730)))

(declare-fun b!485260 () Bool)

(declare-fun e!285731 () Bool)

(assert (=> b!485260 (= e!285730 e!285731)))

(declare-fun res!289039 () Bool)

(assert (=> b!485260 (=> (not res!289039) (not e!285731))))

(assert (=> b!485260 (= res!289039 (bvslt (_1!4641 (h!10183 (t!15564 l!956))) (_1!4641 (h!10183 (t!15564 (t!15564 l!956))))))))

(declare-fun b!485261 () Bool)

(assert (=> b!485261 (= e!285731 (isStrictlySorted!431 (t!15564 (t!15564 l!956))))))

(assert (= (and d!77257 (not res!289038)) b!485260))

(assert (= (and b!485260 res!289039) b!485261))

(declare-fun m!465429 () Bool)

(assert (=> b!485261 m!465429))

(assert (=> b!485200 d!77257))

(declare-fun d!77259 () Bool)

(declare-fun res!289040 () Bool)

(declare-fun e!285732 () Bool)

(assert (=> d!77259 (=> res!289040 e!285732)))

(assert (=> d!77259 (= res!289040 (or (is-Nil!9328 lt!219484) (is-Nil!9328 (t!15564 lt!219484))))))

(assert (=> d!77259 (= (isStrictlySorted!431 lt!219484) e!285732)))

(declare-fun b!485262 () Bool)

(declare-fun e!285733 () Bool)

(assert (=> b!485262 (= e!285732 e!285733)))

(declare-fun res!289041 () Bool)

(assert (=> b!485262 (=> (not res!289041) (not e!285733))))

(assert (=> b!485262 (= res!289041 (bvslt (_1!4641 (h!10183 lt!219484)) (_1!4641 (h!10183 (t!15564 lt!219484)))))))

(declare-fun b!485263 () Bool)

(assert (=> b!485263 (= e!285733 (isStrictlySorted!431 (t!15564 lt!219484)))))

(assert (= (and d!77259 (not res!289040)) b!485262))

(assert (= (and b!485262 res!289041) b!485263))

(declare-fun m!465431 () Bool)

(assert (=> b!485263 m!465431))

(assert (=> d!77213 d!77259))

(assert (=> d!77213 d!77229))

(declare-fun d!77261 () Bool)

(assert (=> d!77261 (= ($colon$colon!131 e!285677 (ite c!58360 (h!10183 l!956) (tuple2!9263 key!251 value!166))) (Cons!9327 (ite c!58360 (h!10183 l!956) (tuple2!9263 key!251 value!166)) e!285677))))

(assert (=> bm!31236 d!77261))

(declare-fun d!77263 () Bool)

(declare-fun lt!219497 () Int)

(assert (=> d!77263 (>= lt!219497 0)))

(declare-fun e!285736 () Int)

(assert (=> d!77263 (= lt!219497 e!285736)))

(declare-fun c!58382 () Bool)

(assert (=> d!77263 (= c!58382 (is-Nil!9328 l!956))))

(assert (=> d!77263 (= (size!15446 l!956) lt!219497)))

(declare-fun b!485268 () Bool)

(assert (=> b!485268 (= e!285736 0)))

(declare-fun b!485269 () Bool)

(assert (=> b!485269 (= e!285736 (+ 1 (size!15446 (t!15564 l!956))))))

(assert (= (and d!77263 c!58382) b!485268))

(assert (= (and d!77263 (not c!58382)) b!485269))

(declare-fun m!465433 () Bool)

(assert (=> b!485269 m!465433))

(assert (=> d!77227 d!77263))

(declare-fun d!77265 () Bool)

(declare-fun lt!219498 () Int)

(assert (=> d!77265 (>= lt!219498 0)))

(declare-fun e!285737 () Int)

(assert (=> d!77265 (= lt!219498 e!285737)))

(declare-fun c!58383 () Bool)

(assert (=> d!77265 (= c!58383 (is-Nil!9328 lt!219470))))

(assert (=> d!77265 (= (size!15446 lt!219470) lt!219498)))

(declare-fun b!485270 () Bool)

(assert (=> b!485270 (= e!285737 0)))

(declare-fun b!485271 () Bool)

(assert (=> b!485271 (= e!285737 (+ 1 (size!15446 (t!15564 lt!219470))))))

(assert (= (and d!77265 c!58383) b!485270))

(assert (= (and d!77265 (not c!58383)) b!485271))

(declare-fun m!465435 () Bool)

(assert (=> b!485271 m!465435))

(assert (=> d!77225 d!77265))

(declare-fun d!77267 () Bool)

(declare-fun res!289042 () Bool)

(declare-fun e!285738 () Bool)

(assert (=> d!77267 (=> res!289042 e!285738)))

(assert (=> d!77267 (= res!289042 (and (is-Cons!9327 lt!219484) (= (_1!4641 (h!10183 lt!219484)) key!251)))))

(assert (=> d!77267 (= (containsKey!397 lt!219484 key!251) e!285738)))

(declare-fun b!485272 () Bool)

(declare-fun e!285739 () Bool)

(assert (=> b!485272 (= e!285738 e!285739)))

(declare-fun res!289043 () Bool)

(assert (=> b!485272 (=> (not res!289043) (not e!285739))))

(assert (=> b!485272 (= res!289043 (and (or (not (is-Cons!9327 lt!219484)) (bvsle (_1!4641 (h!10183 lt!219484)) key!251)) (is-Cons!9327 lt!219484) (bvslt (_1!4641 (h!10183 lt!219484)) key!251)))))

(declare-fun b!485273 () Bool)

(assert (=> b!485273 (= e!285739 (containsKey!397 (t!15564 lt!219484) key!251))))

(assert (= (and d!77267 (not res!289042)) b!485272))

(assert (= (and b!485272 res!289043) b!485273))

(declare-fun m!465437 () Bool)

(assert (=> b!485273 m!465437))

(assert (=> b!485178 d!77267))

(declare-fun lt!219501 () Bool)

(declare-fun d!77269 () Bool)

(declare-fun content!217 (List!9331) (Set tuple2!9262))

(assert (=> d!77269 (= lt!219501 (set.member (tuple2!9263 key!251 value!166) (content!217 lt!219484)))))

(declare-fun e!285744 () Bool)

(assert (=> d!77269 (= lt!219501 e!285744)))

(declare-fun res!289049 () Bool)

(assert (=> d!77269 (=> (not res!289049) (not e!285744))))

(assert (=> d!77269 (= res!289049 (is-Cons!9327 lt!219484))))

(assert (=> d!77269 (= (contains!2693 lt!219484 (tuple2!9263 key!251 value!166)) lt!219501)))

(declare-fun b!485278 () Bool)

(declare-fun e!285745 () Bool)

(assert (=> b!485278 (= e!285744 e!285745)))

(declare-fun res!289048 () Bool)

(assert (=> b!485278 (=> res!289048 e!285745)))

(assert (=> b!485278 (= res!289048 (= (h!10183 lt!219484) (tuple2!9263 key!251 value!166)))))

(declare-fun b!485279 () Bool)

(assert (=> b!485279 (= e!285745 (contains!2693 (t!15564 lt!219484) (tuple2!9263 key!251 value!166)))))

(assert (= (and d!77269 res!289049) b!485278))

(assert (= (and b!485278 (not res!289048)) b!485279))

(declare-fun m!465439 () Bool)

(assert (=> d!77269 m!465439))

(declare-fun m!465441 () Bool)

(assert (=> d!77269 m!465441))

(declare-fun m!465443 () Bool)

(assert (=> b!485279 m!465443))

(assert (=> b!485183 d!77269))

(declare-fun d!77271 () Bool)

(declare-fun res!289050 () Bool)

(declare-fun e!285746 () Bool)

(assert (=> d!77271 (=> res!289050 e!285746)))

(assert (=> d!77271 (= res!289050 (and (is-Cons!9327 (t!15564 l!956)) (= (_1!4641 (h!10183 (t!15564 l!956))) key!251)))))

(assert (=> d!77271 (= (containsKey!397 (t!15564 l!956) key!251) e!285746)))

(declare-fun b!485280 () Bool)

(declare-fun e!285747 () Bool)

(assert (=> b!485280 (= e!285746 e!285747)))

(declare-fun res!289051 () Bool)

(assert (=> b!485280 (=> (not res!289051) (not e!285747))))

(assert (=> b!485280 (= res!289051 (and (or (not (is-Cons!9327 (t!15564 l!956))) (bvsle (_1!4641 (h!10183 (t!15564 l!956))) key!251)) (is-Cons!9327 (t!15564 l!956)) (bvslt (_1!4641 (h!10183 (t!15564 l!956))) key!251)))))

(declare-fun b!485281 () Bool)

(assert (=> b!485281 (= e!285747 (containsKey!397 (t!15564 (t!15564 l!956)) key!251))))

(assert (= (and d!77271 (not res!289050)) b!485280))

(assert (= (and b!485280 res!289051) b!485281))

(declare-fun m!465445 () Bool)

(assert (=> b!485281 m!465445))

(assert (=> b!485081 d!77271))

(declare-fun b!485282 () Bool)

(declare-fun e!285748 () Bool)

(declare-fun tp!43617 () Bool)

(assert (=> b!485282 (= e!285748 (and tp_is_empty!13969 tp!43617))))

(assert (=> b!485209 (= tp!43612 e!285748)))

(assert (= (and b!485209 (is-Cons!9327 (t!15564 (t!15564 l!956)))) b!485282))

(push 1)

(assert (not b!485253))

(assert tp_is_empty!13969)

(assert (not b!485271))

(assert (not bm!31245))

(assert (not b!485279))

(assert (not b!485269))

(assert (not b!485261))

(assert (not d!77269))

(assert (not b!485263))

(assert (not b!485273))

(assert (not b!485250))

(assert (not b!485281))

(assert (not d!77255))

(assert (not b!485258))

(assert (not b!485282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

