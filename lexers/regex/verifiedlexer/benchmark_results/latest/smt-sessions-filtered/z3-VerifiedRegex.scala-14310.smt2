; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747482 () Bool)

(assert start!747482)

(declare-fun res!3141200 () Bool)

(declare-fun e!4671840 () Bool)

(assert (=> start!747482 (=> res!3141200 e!4671840)))

(declare-datatypes ((T!145510 0))(
  ( (T!145511 (val!32018 Int)) )
))
(declare-datatypes ((List!74530 0))(
  ( (Nil!74406) (Cons!74406 (h!80854 T!145510) (t!390009 List!74530)) )
))
(declare-datatypes ((IArray!31781 0))(
  ( (IArray!31782 (innerList!15948 List!74530)) )
))
(declare-datatypes ((Conc!15860 0))(
  ( (Node!15860 (left!56810 Conc!15860) (right!57140 Conc!15860) (csize!31950 Int) (cheight!16071 Int)) (Leaf!30171 (xs!19242 IArray!31781) (csize!31951 Int)) (Empty!15860) )
))
(declare-fun lt!2689381 () Conc!15860)

(declare-fun l!2277 () List!74530)

(declare-datatypes ((BalanceConc!30838 0))(
  ( (BalanceConc!30839 (c!1452188 Conc!15860)) )
))
(declare-fun list!19343 (BalanceConc!30838) List!74530)

(assert (=> start!747482 (= res!3141200 (not (= (list!19343 (BalanceConc!30839 lt!2689381)) l!2277)))))

(declare-fun fromList!971 (List!74530) Conc!15860)

(assert (=> start!747482 (= lt!2689381 (fromList!971 l!2277))))

(assert (=> start!747482 e!4671840))

(declare-fun e!4671839 () Bool)

(assert (=> start!747482 e!4671839))

(declare-fun b!7914419 () Bool)

(declare-fun isBalanced!4486 (Conc!15860) Bool)

(assert (=> b!7914419 (= e!4671840 (not (isBalanced!4486 lt!2689381)))))

(declare-fun b!7914420 () Bool)

(declare-fun tp_is_empty!53145 () Bool)

(declare-fun tp!2357158 () Bool)

(assert (=> b!7914420 (= e!4671839 (and tp_is_empty!53145 tp!2357158))))

(assert (= (and start!747482 (not res!3141200)) b!7914419))

(get-info :version)

(assert (= (and start!747482 ((_ is Cons!74406) l!2277)) b!7914420))

(declare-fun m!8288162 () Bool)

(assert (=> start!747482 m!8288162))

(declare-fun m!8288164 () Bool)

(assert (=> start!747482 m!8288164))

(declare-fun m!8288166 () Bool)

(assert (=> b!7914419 m!8288166))

(check-sat (not start!747482) (not b!7914419) (not b!7914420) tp_is_empty!53145)
(check-sat)
(get-model)

(declare-fun d!2361295 () Bool)

(declare-fun list!19344 (Conc!15860) List!74530)

(assert (=> d!2361295 (= (list!19343 (BalanceConc!30839 lt!2689381)) (list!19344 (c!1452188 (BalanceConc!30839 lt!2689381))))))

(declare-fun bs!1968423 () Bool)

(assert (= bs!1968423 d!2361295))

(declare-fun m!8288168 () Bool)

(assert (=> bs!1968423 m!8288168))

(assert (=> start!747482 d!2361295))

(declare-fun d!2361297 () Bool)

(declare-fun e!4671849 () Bool)

(assert (=> d!2361297 e!4671849))

(declare-fun res!3141221 () Bool)

(assert (=> d!2361297 (=> (not res!3141221) (not e!4671849))))

(declare-fun lt!2689384 () Conc!15860)

(assert (=> d!2361297 (= res!3141221 (= (list!19344 lt!2689384) l!2277))))

(declare-fun choose!59786 (List!74530) Conc!15860)

(assert (=> d!2361297 (= lt!2689384 (choose!59786 l!2277))))

(assert (=> d!2361297 (= (fromList!971 l!2277) lt!2689384)))

(declare-fun b!7914441 () Bool)

(assert (=> b!7914441 (= e!4671849 (isBalanced!4486 lt!2689384))))

(assert (= (and d!2361297 res!3141221) b!7914441))

(declare-fun m!8288170 () Bool)

(assert (=> d!2361297 m!8288170))

(declare-fun m!8288172 () Bool)

(assert (=> d!2361297 m!8288172))

(declare-fun m!8288174 () Bool)

(assert (=> b!7914441 m!8288174))

(assert (=> start!747482 d!2361297))

(declare-fun b!7914462 () Bool)

(declare-fun res!3141242 () Bool)

(declare-fun e!4671860 () Bool)

(assert (=> b!7914462 (=> (not res!3141242) (not e!4671860))))

(declare-fun height!2180 (Conc!15860) Int)

(assert (=> b!7914462 (= res!3141242 (<= (- (height!2180 (left!56810 lt!2689381)) (height!2180 (right!57140 lt!2689381))) 1))))

(declare-fun b!7914463 () Bool)

(declare-fun e!4671861 () Bool)

(assert (=> b!7914463 (= e!4671861 e!4671860)))

(declare-fun res!3141238 () Bool)

(assert (=> b!7914463 (=> (not res!3141238) (not e!4671860))))

(assert (=> b!7914463 (= res!3141238 (<= (- 1) (- (height!2180 (left!56810 lt!2689381)) (height!2180 (right!57140 lt!2689381)))))))

(declare-fun b!7914464 () Bool)

(declare-fun res!3141239 () Bool)

(assert (=> b!7914464 (=> (not res!3141239) (not e!4671860))))

(assert (=> b!7914464 (= res!3141239 (isBalanced!4486 (right!57140 lt!2689381)))))

(declare-fun b!7914465 () Bool)

(declare-fun res!3141241 () Bool)

(assert (=> b!7914465 (=> (not res!3141241) (not e!4671860))))

(declare-fun isEmpty!42723 (Conc!15860) Bool)

(assert (=> b!7914465 (= res!3141241 (not (isEmpty!42723 (left!56810 lt!2689381))))))

(declare-fun b!7914466 () Bool)

(declare-fun res!3141237 () Bool)

(assert (=> b!7914466 (=> (not res!3141237) (not e!4671860))))

(assert (=> b!7914466 (= res!3141237 (isBalanced!4486 (left!56810 lt!2689381)))))

(declare-fun b!7914467 () Bool)

(assert (=> b!7914467 (= e!4671860 (not (isEmpty!42723 (right!57140 lt!2689381))))))

(declare-fun d!2361299 () Bool)

(declare-fun res!3141240 () Bool)

(assert (=> d!2361299 (=> res!3141240 e!4671861)))

(assert (=> d!2361299 (= res!3141240 (not ((_ is Node!15860) lt!2689381)))))

(assert (=> d!2361299 (= (isBalanced!4486 lt!2689381) e!4671861)))

(assert (= (and d!2361299 (not res!3141240)) b!7914463))

(assert (= (and b!7914463 res!3141238) b!7914462))

(assert (= (and b!7914462 res!3141242) b!7914466))

(assert (= (and b!7914466 res!3141237) b!7914464))

(assert (= (and b!7914464 res!3141239) b!7914465))

(assert (= (and b!7914465 res!3141241) b!7914467))

(declare-fun m!8288196 () Bool)

(assert (=> b!7914466 m!8288196))

(declare-fun m!8288198 () Bool)

(assert (=> b!7914463 m!8288198))

(declare-fun m!8288200 () Bool)

(assert (=> b!7914463 m!8288200))

(declare-fun m!8288202 () Bool)

(assert (=> b!7914467 m!8288202))

(declare-fun m!8288204 () Bool)

(assert (=> b!7914464 m!8288204))

(assert (=> b!7914462 m!8288198))

(assert (=> b!7914462 m!8288200))

(declare-fun m!8288206 () Bool)

(assert (=> b!7914465 m!8288206))

(assert (=> b!7914419 d!2361299))

(declare-fun b!7914472 () Bool)

(declare-fun e!4671864 () Bool)

(declare-fun tp!2357164 () Bool)

(assert (=> b!7914472 (= e!4671864 (and tp_is_empty!53145 tp!2357164))))

(assert (=> b!7914420 (= tp!2357158 e!4671864)))

(assert (= (and b!7914420 ((_ is Cons!74406) (t!390009 l!2277))) b!7914472))

(check-sat (not b!7914441) (not b!7914464) (not d!2361295) tp_is_empty!53145 (not b!7914463) (not b!7914462) (not d!2361297) (not b!7914472) (not b!7914467) (not b!7914465) (not b!7914466))
(check-sat)
