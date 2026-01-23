; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534050 () Bool)

(assert start!534050)

(declare-fun b!5049313 () Bool)

(declare-fun res!2150534 () Bool)

(declare-fun e!3152608 () Bool)

(assert (=> b!5049313 (=> (not res!2150534) (not e!3152608))))

(declare-fun i!658 () Int)

(declare-datatypes ((T!104558 0))(
  ( (T!104559 (val!23568 Int)) )
))
(declare-datatypes ((List!58478 0))(
  ( (Nil!58354) (Cons!58354 (h!64802 T!104558) (t!371117 List!58478)) )
))
(declare-fun l!2763 () List!58478)

(declare-fun size!38979 (List!58478) Int)

(assert (=> b!5049313 (= res!2150534 (<= i!658 (size!38979 l!2763)))))

(declare-fun b!5049314 () Bool)

(declare-fun e!3152606 () Bool)

(assert (=> b!5049314 (= e!3152606 (> (- i!658 1) (size!38979 (t!371117 l!2763))))))

(declare-fun res!2150535 () Bool)

(assert (=> start!534050 (=> (not res!2150535) (not e!3152608))))

(assert (=> start!534050 (= res!2150535 (<= 0 i!658))))

(assert (=> start!534050 e!3152608))

(assert (=> start!534050 true))

(declare-fun e!3152607 () Bool)

(assert (=> start!534050 e!3152607))

(declare-fun b!5049315 () Bool)

(assert (=> b!5049315 (= e!3152608 e!3152606)))

(declare-fun res!2150537 () Bool)

(assert (=> b!5049315 (=> res!2150537 e!3152606)))

(assert (=> b!5049315 (= res!2150537 (> 0 (- i!658 1)))))

(declare-fun b!5049316 () Bool)

(declare-fun res!2150536 () Bool)

(assert (=> b!5049316 (=> (not res!2150536) (not e!3152608))))

(get-info :version)

(assert (=> b!5049316 (= res!2150536 (and (not ((_ is Nil!58354) l!2763)) (not (= i!658 0))))))

(declare-fun b!5049317 () Bool)

(declare-fun tp_is_empty!36891 () Bool)

(declare-fun tp!1412037 () Bool)

(assert (=> b!5049317 (= e!3152607 (and tp_is_empty!36891 tp!1412037))))

(assert (= (and start!534050 res!2150535) b!5049313))

(assert (= (and b!5049313 res!2150534) b!5049316))

(assert (= (and b!5049316 res!2150536) b!5049315))

(assert (= (and b!5049315 (not res!2150537)) b!5049314))

(assert (= (and start!534050 ((_ is Cons!58354) l!2763)) b!5049317))

(declare-fun m!6084178 () Bool)

(assert (=> b!5049313 m!6084178))

(declare-fun m!6084180 () Bool)

(assert (=> b!5049314 m!6084180))

(check-sat (not b!5049314) (not b!5049313) (not b!5049317) tp_is_empty!36891)
(check-sat)
(get-model)

(declare-fun d!1624783 () Bool)

(declare-fun lt!2086312 () Int)

(assert (=> d!1624783 (>= lt!2086312 0)))

(declare-fun e!3152613 () Int)

(assert (=> d!1624783 (= lt!2086312 e!3152613)))

(declare-fun c!865944 () Bool)

(assert (=> d!1624783 (= c!865944 ((_ is Nil!58354) (t!371117 l!2763)))))

(assert (=> d!1624783 (= (size!38979 (t!371117 l!2763)) lt!2086312)))

(declare-fun b!5049326 () Bool)

(assert (=> b!5049326 (= e!3152613 0)))

(declare-fun b!5049327 () Bool)

(assert (=> b!5049327 (= e!3152613 (+ 1 (size!38979 (t!371117 (t!371117 l!2763)))))))

(assert (= (and d!1624783 c!865944) b!5049326))

(assert (= (and d!1624783 (not c!865944)) b!5049327))

(declare-fun m!6084182 () Bool)

(assert (=> b!5049327 m!6084182))

(assert (=> b!5049314 d!1624783))

(declare-fun d!1624787 () Bool)

(declare-fun lt!2086313 () Int)

(assert (=> d!1624787 (>= lt!2086313 0)))

(declare-fun e!3152614 () Int)

(assert (=> d!1624787 (= lt!2086313 e!3152614)))

(declare-fun c!865945 () Bool)

(assert (=> d!1624787 (= c!865945 ((_ is Nil!58354) l!2763))))

(assert (=> d!1624787 (= (size!38979 l!2763) lt!2086313)))

(declare-fun b!5049328 () Bool)

(assert (=> b!5049328 (= e!3152614 0)))

(declare-fun b!5049329 () Bool)

(assert (=> b!5049329 (= e!3152614 (+ 1 (size!38979 (t!371117 l!2763))))))

(assert (= (and d!1624787 c!865945) b!5049328))

(assert (= (and d!1624787 (not c!865945)) b!5049329))

(assert (=> b!5049329 m!6084180))

(assert (=> b!5049313 d!1624787))

(declare-fun b!5049342 () Bool)

(declare-fun e!3152621 () Bool)

(declare-fun tp!1412040 () Bool)

(assert (=> b!5049342 (= e!3152621 (and tp_is_empty!36891 tp!1412040))))

(assert (=> b!5049317 (= tp!1412037 e!3152621)))

(assert (= (and b!5049317 ((_ is Cons!58354) (t!371117 l!2763))) b!5049342))

(check-sat (not b!5049327) (not b!5049329) (not b!5049342) tp_is_empty!36891)
(check-sat)
