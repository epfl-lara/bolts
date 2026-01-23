; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749450 () Bool)

(assert start!749450)

(declare-fun res!3149920 () Bool)

(declare-fun e!4685155 () Bool)

(assert (=> start!749450 (=> (not res!3149920) (not e!4685155))))

(declare-datatypes ((B!4037 0))(
  ( (B!4038 (val!32108 Int)) )
))
(declare-datatypes ((List!74620 0))(
  ( (Nil!74496) (Cons!74496 (h!80944 B!4037) (t!390363 List!74620)) )
))
(declare-fun l!3025 () List!74620)

(get-info :version)

(assert (=> start!749450 (= res!3149920 (not ((_ is Cons!74496) l!3025)))))

(assert (=> start!749450 e!4685155))

(declare-fun e!4685156 () Bool)

(assert (=> start!749450 e!4685156))

(assert (=> start!749450 true))

(declare-fun b!7940275 () Bool)

(declare-fun acc!294 () Int)

(declare-fun sizeTr!487 (List!74620 Int) Int)

(declare-fun size!43330 (List!74620) Int)

(assert (=> b!7940275 (= e!4685155 (not (= (sizeTr!487 l!3025 acc!294) (+ (size!43330 l!3025) acc!294))))))

(declare-fun b!7940276 () Bool)

(declare-fun tp_is_empty!53325 () Bool)

(declare-fun tp!2360852 () Bool)

(assert (=> b!7940276 (= e!4685156 (and tp_is_empty!53325 tp!2360852))))

(assert (= (and start!749450 res!3149920) b!7940275))

(assert (= (and start!749450 ((_ is Cons!74496) l!3025)) b!7940276))

(declare-fun m!8329560 () Bool)

(assert (=> b!7940275 m!8329560))

(declare-fun m!8329562 () Bool)

(assert (=> b!7940275 m!8329562))

(check-sat (not b!7940275) (not b!7940276) tp_is_empty!53325)
(check-sat)
(get-model)

(declare-fun d!2374998 () Bool)

(declare-fun c!1458817 () Bool)

(assert (=> d!2374998 (= c!1458817 ((_ is Nil!74496) l!3025))))

(declare-fun e!4685159 () Int)

(assert (=> d!2374998 (= (sizeTr!487 l!3025 acc!294) e!4685159)))

(declare-fun b!7940281 () Bool)

(assert (=> b!7940281 (= e!4685159 acc!294)))

(declare-fun b!7940282 () Bool)

(assert (=> b!7940282 (= e!4685159 (sizeTr!487 (t!390363 l!3025) (+ acc!294 1)))))

(assert (= (and d!2374998 c!1458817) b!7940281))

(assert (= (and d!2374998 (not c!1458817)) b!7940282))

(declare-fun m!8329564 () Bool)

(assert (=> b!7940282 m!8329564))

(assert (=> b!7940275 d!2374998))

(declare-fun d!2375002 () Bool)

(declare-fun lt!2696087 () Int)

(assert (=> d!2375002 (>= lt!2696087 0)))

(declare-fun e!4685165 () Int)

(assert (=> d!2375002 (= lt!2696087 e!4685165)))

(declare-fun c!1458823 () Bool)

(assert (=> d!2375002 (= c!1458823 ((_ is Nil!74496) l!3025))))

(assert (=> d!2375002 (= (size!43330 l!3025) lt!2696087)))

(declare-fun b!7940293 () Bool)

(assert (=> b!7940293 (= e!4685165 0)))

(declare-fun b!7940294 () Bool)

(assert (=> b!7940294 (= e!4685165 (+ 1 (size!43330 (t!390363 l!3025))))))

(assert (= (and d!2375002 c!1458823) b!7940293))

(assert (= (and d!2375002 (not c!1458823)) b!7940294))

(declare-fun m!8329568 () Bool)

(assert (=> b!7940294 m!8329568))

(assert (=> b!7940275 d!2375002))

(declare-fun b!7940299 () Bool)

(declare-fun e!4685168 () Bool)

(declare-fun tp!2360855 () Bool)

(assert (=> b!7940299 (= e!4685168 (and tp_is_empty!53325 tp!2360855))))

(assert (=> b!7940276 (= tp!2360852 e!4685168)))

(assert (= (and b!7940276 ((_ is Cons!74496) (t!390363 l!3025))) b!7940299))

(check-sat (not b!7940282) (not b!7940294) (not b!7940299) tp_is_empty!53325)
(check-sat)
