; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749434 () Bool)

(assert start!749434)

(declare-fun res!3149914 () Bool)

(declare-fun e!4685122 () Bool)

(assert (=> start!749434 (=> (not res!3149914) (not e!4685122))))

(declare-datatypes ((B!4033 0))(
  ( (B!4034 (val!32106 Int)) )
))
(declare-datatypes ((List!74618 0))(
  ( (Nil!74494) (Cons!74494 (h!80942 B!4033) (t!390361 List!74618)) )
))
(declare-fun l!3025 () List!74618)

(get-info :version)

(assert (=> start!749434 (= res!3149914 ((_ is Cons!74494) l!3025))))

(assert (=> start!749434 e!4685122))

(declare-fun e!4685121 () Bool)

(assert (=> start!749434 e!4685121))

(assert (=> start!749434 true))

(declare-fun b!7940221 () Bool)

(declare-fun acc!294 () Int)

(declare-fun sizeTr!485 (List!74618 Int) Int)

(declare-fun size!43328 (List!74618) Int)

(assert (=> b!7940221 (= e!4685122 (not (= (sizeTr!485 l!3025 acc!294) (+ (size!43328 l!3025) acc!294))))))

(assert (=> b!7940221 (= (sizeTr!485 (t!390361 l!3025) (+ 1 acc!294)) (+ 1 acc!294 (size!43328 (t!390361 l!3025))))))

(declare-datatypes ((Unit!169611 0))(
  ( (Unit!169612) )
))
(declare-fun lt!2696070 () Unit!169611)

(declare-fun lemmaSizeTrEqualsSize!484 (List!74618 Int) Unit!169611)

(assert (=> b!7940221 (= lt!2696070 (lemmaSizeTrEqualsSize!484 (t!390361 l!3025) (+ 1 acc!294)))))

(declare-fun b!7940222 () Bool)

(declare-fun tp_is_empty!53321 () Bool)

(declare-fun tp!2360840 () Bool)

(assert (=> b!7940222 (= e!4685121 (and tp_is_empty!53321 tp!2360840))))

(assert (= (and start!749434 res!3149914) b!7940221))

(assert (= (and start!749434 ((_ is Cons!74494) l!3025)) b!7940222))

(declare-fun m!8329530 () Bool)

(assert (=> b!7940221 m!8329530))

(declare-fun m!8329532 () Bool)

(assert (=> b!7940221 m!8329532))

(declare-fun m!8329534 () Bool)

(assert (=> b!7940221 m!8329534))

(declare-fun m!8329536 () Bool)

(assert (=> b!7940221 m!8329536))

(declare-fun m!8329538 () Bool)

(assert (=> b!7940221 m!8329538))

(check-sat (not b!7940221) (not b!7940222) tp_is_empty!53321)
(check-sat)
(get-model)

(declare-fun d!2374977 () Bool)

(declare-fun lt!2696075 () Int)

(assert (=> d!2374977 (>= lt!2696075 0)))

(declare-fun e!4685127 () Int)

(assert (=> d!2374977 (= lt!2696075 e!4685127)))

(declare-fun c!1458803 () Bool)

(assert (=> d!2374977 (= c!1458803 ((_ is Nil!74494) l!3025))))

(assert (=> d!2374977 (= (size!43328 l!3025) lt!2696075)))

(declare-fun b!7940231 () Bool)

(assert (=> b!7940231 (= e!4685127 0)))

(declare-fun b!7940232 () Bool)

(assert (=> b!7940232 (= e!4685127 (+ 1 (size!43328 (t!390361 l!3025))))))

(assert (= (and d!2374977 c!1458803) b!7940231))

(assert (= (and d!2374977 (not c!1458803)) b!7940232))

(assert (=> b!7940232 m!8329536))

(assert (=> b!7940221 d!2374977))

(declare-fun d!2374981 () Bool)

(declare-fun c!1458807 () Bool)

(assert (=> d!2374981 (= c!1458807 ((_ is Nil!74494) (t!390361 l!3025)))))

(declare-fun e!4685131 () Int)

(assert (=> d!2374981 (= (sizeTr!485 (t!390361 l!3025) (+ 1 acc!294)) e!4685131)))

(declare-fun b!7940239 () Bool)

(assert (=> b!7940239 (= e!4685131 (+ 1 acc!294))))

(declare-fun b!7940240 () Bool)

(assert (=> b!7940240 (= e!4685131 (sizeTr!485 (t!390361 (t!390361 l!3025)) (+ 1 acc!294 1)))))

(assert (= (and d!2374981 c!1458807) b!7940239))

(assert (= (and d!2374981 (not c!1458807)) b!7940240))

(declare-fun m!8329540 () Bool)

(assert (=> b!7940240 m!8329540))

(assert (=> b!7940221 d!2374981))

(declare-fun d!2374985 () Bool)

(declare-fun lt!2696077 () Int)

(assert (=> d!2374985 (>= lt!2696077 0)))

(declare-fun e!4685132 () Int)

(assert (=> d!2374985 (= lt!2696077 e!4685132)))

(declare-fun c!1458808 () Bool)

(assert (=> d!2374985 (= c!1458808 ((_ is Nil!74494) (t!390361 l!3025)))))

(assert (=> d!2374985 (= (size!43328 (t!390361 l!3025)) lt!2696077)))

(declare-fun b!7940241 () Bool)

(assert (=> b!7940241 (= e!4685132 0)))

(declare-fun b!7940242 () Bool)

(assert (=> b!7940242 (= e!4685132 (+ 1 (size!43328 (t!390361 (t!390361 l!3025)))))))

(assert (= (and d!2374985 c!1458808) b!7940241))

(assert (= (and d!2374985 (not c!1458808)) b!7940242))

(declare-fun m!8329542 () Bool)

(assert (=> b!7940242 m!8329542))

(assert (=> b!7940221 d!2374985))

(declare-fun d!2374987 () Bool)

(assert (=> d!2374987 (= (sizeTr!485 (t!390361 l!3025) (+ 1 acc!294)) (+ (size!43328 (t!390361 l!3025)) 1 acc!294))))

(declare-fun lt!2696081 () Unit!169611)

(declare-fun choose!59870 (List!74618 Int) Unit!169611)

(assert (=> d!2374987 (= lt!2696081 (choose!59870 (t!390361 l!3025) (+ 1 acc!294)))))

(assert (=> d!2374987 (= (lemmaSizeTrEqualsSize!484 (t!390361 l!3025) (+ 1 acc!294)) lt!2696081)))

(declare-fun bs!1969387 () Bool)

(assert (= bs!1969387 d!2374987))

(assert (=> bs!1969387 m!8329538))

(assert (=> bs!1969387 m!8329536))

(declare-fun m!8329548 () Bool)

(assert (=> bs!1969387 m!8329548))

(assert (=> b!7940221 d!2374987))

(declare-fun d!2374993 () Bool)

(declare-fun c!1458813 () Bool)

(assert (=> d!2374993 (= c!1458813 ((_ is Nil!74494) l!3025))))

(declare-fun e!4685137 () Int)

(assert (=> d!2374993 (= (sizeTr!485 l!3025 acc!294) e!4685137)))

(declare-fun b!7940251 () Bool)

(assert (=> b!7940251 (= e!4685137 acc!294)))

(declare-fun b!7940252 () Bool)

(assert (=> b!7940252 (= e!4685137 (sizeTr!485 (t!390361 l!3025) (+ acc!294 1)))))

(assert (= (and d!2374993 c!1458813) b!7940251))

(assert (= (and d!2374993 (not c!1458813)) b!7940252))

(declare-fun m!8329550 () Bool)

(assert (=> b!7940252 m!8329550))

(assert (=> b!7940221 d!2374993))

(declare-fun b!7940257 () Bool)

(declare-fun e!4685140 () Bool)

(declare-fun tp!2360843 () Bool)

(assert (=> b!7940257 (= e!4685140 (and tp_is_empty!53321 tp!2360843))))

(assert (=> b!7940222 (= tp!2360840 e!4685140)))

(assert (= (and b!7940222 ((_ is Cons!74494) (t!390361 l!3025))) b!7940257))

(check-sat (not b!7940232) (not b!7940242) (not b!7940240) (not b!7940252) (not b!7940257) tp_is_empty!53321 (not d!2374987))
(check-sat)
