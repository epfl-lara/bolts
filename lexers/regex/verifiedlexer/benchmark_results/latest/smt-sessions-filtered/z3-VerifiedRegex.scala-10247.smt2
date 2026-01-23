; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534058 () Bool)

(assert start!534058)

(declare-fun b!5049369 () Bool)

(declare-fun res!2150561 () Bool)

(declare-fun e!3152633 () Bool)

(assert (=> b!5049369 (=> (not res!2150561) (not e!3152633))))

(declare-fun i!658 () Int)

(declare-datatypes ((T!104572 0))(
  ( (T!104573 (val!23570 Int)) )
))
(declare-datatypes ((List!58480 0))(
  ( (Nil!58356) (Cons!58356 (h!64804 T!104572) (t!371119 List!58480)) )
))
(declare-fun l!2763 () List!58480)

(declare-fun size!38981 (List!58480) Int)

(assert (=> b!5049369 (= res!2150561 (<= (- i!658 1) (size!38981 (t!371119 l!2763))))))

(declare-fun b!5049370 () Bool)

(declare-fun res!2150558 () Bool)

(assert (=> b!5049370 (=> (not res!2150558) (not e!3152633))))

(get-info :version)

(assert (=> b!5049370 (= res!2150558 (and (not ((_ is Nil!58356) l!2763)) (not (= i!658 0)) (<= 0 (- i!658 1))))))

(declare-fun b!5049371 () Bool)

(declare-fun res!2150560 () Bool)

(assert (=> b!5049371 (=> (not res!2150560) (not e!3152633))))

(assert (=> b!5049371 (= res!2150560 (<= i!658 (size!38981 l!2763)))))

(declare-fun b!5049372 () Bool)

(declare-fun ListPrimitiveSize!387 (List!58480) Int)

(assert (=> b!5049372 (= e!3152633 (>= (ListPrimitiveSize!387 (t!371119 l!2763)) (ListPrimitiveSize!387 l!2763)))))

(declare-fun b!5049373 () Bool)

(declare-fun e!3152634 () Bool)

(declare-fun tp_is_empty!36895 () Bool)

(declare-fun tp!1412049 () Bool)

(assert (=> b!5049373 (= e!3152634 (and tp_is_empty!36895 tp!1412049))))

(declare-fun res!2150559 () Bool)

(assert (=> start!534058 (=> (not res!2150559) (not e!3152633))))

(assert (=> start!534058 (= res!2150559 (<= 0 i!658))))

(assert (=> start!534058 e!3152633))

(assert (=> start!534058 true))

(assert (=> start!534058 e!3152634))

(assert (= (and start!534058 res!2150559) b!5049371))

(assert (= (and b!5049371 res!2150560) b!5049370))

(assert (= (and b!5049370 res!2150558) b!5049369))

(assert (= (and b!5049369 res!2150561) b!5049372))

(assert (= (and start!534058 ((_ is Cons!58356) l!2763)) b!5049373))

(declare-fun m!6084194 () Bool)

(assert (=> b!5049369 m!6084194))

(declare-fun m!6084196 () Bool)

(assert (=> b!5049371 m!6084196))

(declare-fun m!6084198 () Bool)

(assert (=> b!5049372 m!6084198))

(declare-fun m!6084200 () Bool)

(assert (=> b!5049372 m!6084200))

(check-sat tp_is_empty!36895 (not b!5049372) (not b!5049373) (not b!5049369) (not b!5049371))
(check-sat)
(get-model)

(declare-fun d!1624792 () Bool)

(declare-fun lt!2086318 () Int)

(assert (=> d!1624792 (>= lt!2086318 0)))

(declare-fun e!3152637 () Int)

(assert (=> d!1624792 (= lt!2086318 e!3152637)))

(declare-fun c!865950 () Bool)

(assert (=> d!1624792 (= c!865950 ((_ is Nil!58356) (t!371119 l!2763)))))

(assert (=> d!1624792 (= (size!38981 (t!371119 l!2763)) lt!2086318)))

(declare-fun b!5049378 () Bool)

(assert (=> b!5049378 (= e!3152637 0)))

(declare-fun b!5049379 () Bool)

(assert (=> b!5049379 (= e!3152637 (+ 1 (size!38981 (t!371119 (t!371119 l!2763)))))))

(assert (= (and d!1624792 c!865950) b!5049378))

(assert (= (and d!1624792 (not c!865950)) b!5049379))

(declare-fun m!6084202 () Bool)

(assert (=> b!5049379 m!6084202))

(assert (=> b!5049369 d!1624792))

(declare-fun d!1624794 () Bool)

(declare-fun lt!2086323 () Int)

(assert (=> d!1624794 (>= lt!2086323 0)))

(declare-fun e!3152642 () Int)

(assert (=> d!1624794 (= lt!2086323 e!3152642)))

(declare-fun c!865955 () Bool)

(assert (=> d!1624794 (= c!865955 ((_ is Nil!58356) (t!371119 l!2763)))))

(assert (=> d!1624794 (= (ListPrimitiveSize!387 (t!371119 l!2763)) lt!2086323)))

(declare-fun b!5049388 () Bool)

(assert (=> b!5049388 (= e!3152642 0)))

(declare-fun b!5049389 () Bool)

(assert (=> b!5049389 (= e!3152642 (+ 1 (ListPrimitiveSize!387 (t!371119 (t!371119 l!2763)))))))

(assert (= (and d!1624794 c!865955) b!5049388))

(assert (= (and d!1624794 (not c!865955)) b!5049389))

(declare-fun m!6084204 () Bool)

(assert (=> b!5049389 m!6084204))

(assert (=> b!5049372 d!1624794))

(declare-fun d!1624798 () Bool)

(declare-fun lt!2086324 () Int)

(assert (=> d!1624798 (>= lt!2086324 0)))

(declare-fun e!3152643 () Int)

(assert (=> d!1624798 (= lt!2086324 e!3152643)))

(declare-fun c!865956 () Bool)

(assert (=> d!1624798 (= c!865956 ((_ is Nil!58356) l!2763))))

(assert (=> d!1624798 (= (ListPrimitiveSize!387 l!2763) lt!2086324)))

(declare-fun b!5049390 () Bool)

(assert (=> b!5049390 (= e!3152643 0)))

(declare-fun b!5049391 () Bool)

(assert (=> b!5049391 (= e!3152643 (+ 1 (ListPrimitiveSize!387 (t!371119 l!2763))))))

(assert (= (and d!1624798 c!865956) b!5049390))

(assert (= (and d!1624798 (not c!865956)) b!5049391))

(assert (=> b!5049391 m!6084198))

(assert (=> b!5049372 d!1624798))

(declare-fun d!1624800 () Bool)

(declare-fun lt!2086326 () Int)

(assert (=> d!1624800 (>= lt!2086326 0)))

(declare-fun e!3152645 () Int)

(assert (=> d!1624800 (= lt!2086326 e!3152645)))

(declare-fun c!865958 () Bool)

(assert (=> d!1624800 (= c!865958 ((_ is Nil!58356) l!2763))))

(assert (=> d!1624800 (= (size!38981 l!2763) lt!2086326)))

(declare-fun b!5049394 () Bool)

(assert (=> b!5049394 (= e!3152645 0)))

(declare-fun b!5049395 () Bool)

(assert (=> b!5049395 (= e!3152645 (+ 1 (size!38981 (t!371119 l!2763))))))

(assert (= (and d!1624800 c!865958) b!5049394))

(assert (= (and d!1624800 (not c!865958)) b!5049395))

(assert (=> b!5049395 m!6084194))

(assert (=> b!5049371 d!1624800))

(declare-fun b!5049400 () Bool)

(declare-fun e!3152648 () Bool)

(declare-fun tp!1412052 () Bool)

(assert (=> b!5049400 (= e!3152648 (and tp_is_empty!36895 tp!1412052))))

(assert (=> b!5049373 (= tp!1412049 e!3152648)))

(assert (= (and b!5049373 ((_ is Cons!58356) (t!371119 l!2763))) b!5049400))

(check-sat (not b!5049389) tp_is_empty!36895 (not b!5049400) (not b!5049395) (not b!5049391) (not b!5049379))
(check-sat)
