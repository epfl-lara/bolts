; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407602 () Bool)

(assert start!407602)

(declare-datatypes ((T!79252 0))(
  ( (T!79253 (val!15192 Int)) )
))
(declare-fun x!5716 () T!79252)

(declare-datatypes ((List!47321 0))(
  ( (Nil!47197) (Cons!47197 (h!52617 T!79252) (t!352860 List!47321)) )
))
(declare-datatypes ((IArray!28423 0))(
  ( (IArray!28424 (innerList!14269 List!47321)) )
))
(declare-datatypes ((Conc!14209 0))(
  ( (Node!14209 (left!34974 Conc!14209) (right!35304 Conc!14209) (csize!28648 Int) (cheight!14420 Int)) (Leaf!21967 (xs!17515 IArray!28423) (csize!28649 Int)) (Empty!14209) )
))
(declare-fun inv!61991 (Conc!14209) Bool)

(declare-fun fill!215 (Int T!79252) IArray!28423)

(assert (=> start!407602 (not (inv!61991 (Leaf!21967 (fill!215 1 x!5716) 1)))))

(declare-fun tp_is_empty!22797 () Bool)

(assert (=> start!407602 tp_is_empty!22797))

(declare-fun bs!598795 () Bool)

(assert (= bs!598795 start!407602))

(declare-fun m!4840499 () Bool)

(assert (=> bs!598795 m!4840499))

(declare-fun m!4840501 () Bool)

(assert (=> bs!598795 m!4840501))

(check-sat (not start!407602) tp_is_empty!22797)
(check-sat)
(get-model)

(declare-fun d!1251346 () Bool)

(declare-fun c!722503 () Bool)

(get-info :version)

(assert (=> d!1251346 (= c!722503 ((_ is Node!14209) (Leaf!21967 (fill!215 1 x!5716) 1)))))

(declare-fun e!2643199 () Bool)

(assert (=> d!1251346 (= (inv!61991 (Leaf!21967 (fill!215 1 x!5716) 1)) e!2643199)))

(declare-fun b!4255422 () Bool)

(declare-fun inv!61993 (Conc!14209) Bool)

(assert (=> b!4255422 (= e!2643199 (inv!61993 (Leaf!21967 (fill!215 1 x!5716) 1)))))

(declare-fun b!4255423 () Bool)

(declare-fun e!2643200 () Bool)

(assert (=> b!4255423 (= e!2643199 e!2643200)))

(declare-fun res!1749321 () Bool)

(assert (=> b!4255423 (= res!1749321 (not ((_ is Leaf!21967) (Leaf!21967 (fill!215 1 x!5716) 1))))))

(assert (=> b!4255423 (=> res!1749321 e!2643200)))

(declare-fun b!4255424 () Bool)

(declare-fun inv!61995 (Conc!14209) Bool)

(assert (=> b!4255424 (= e!2643200 (inv!61995 (Leaf!21967 (fill!215 1 x!5716) 1)))))

(assert (= (and d!1251346 c!722503) b!4255422))

(assert (= (and d!1251346 (not c!722503)) b!4255423))

(assert (= (and b!4255423 (not res!1749321)) b!4255424))

(declare-fun m!4840507 () Bool)

(assert (=> b!4255422 m!4840507))

(declare-fun m!4840509 () Bool)

(assert (=> b!4255424 m!4840509))

(assert (=> start!407602 d!1251346))

(declare-fun d!1251352 () Bool)

(declare-fun lt!1509690 () IArray!28423)

(declare-fun fill!217 (Int T!79252) List!47321)

(assert (=> d!1251352 (= lt!1509690 (IArray!28424 (fill!217 1 x!5716)))))

(declare-fun choose!25965 (Int T!79252) IArray!28423)

(assert (=> d!1251352 (= lt!1509690 (choose!25965 1 x!5716))))

(assert (=> d!1251352 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1251352 (= (fill!215 1 x!5716) lt!1509690)))

(declare-fun bs!598797 () Bool)

(assert (= bs!598797 d!1251352))

(declare-fun m!4840515 () Bool)

(assert (=> bs!598797 m!4840515))

(declare-fun m!4840517 () Bool)

(assert (=> bs!598797 m!4840517))

(assert (=> start!407602 d!1251352))

(check-sat (not b!4255424) (not d!1251352) (not b!4255422) tp_is_empty!22797)
(check-sat)
(get-model)

(declare-fun d!1251354 () Bool)

(declare-fun res!1749326 () Bool)

(declare-fun e!2643203 () Bool)

(assert (=> d!1251354 (=> (not res!1749326) (not e!2643203))))

(declare-fun size!34539 (List!47321) Int)

(declare-fun list!17000 (IArray!28423) List!47321)

(assert (=> d!1251354 (= res!1749326 (<= (size!34539 (list!17000 (xs!17515 (Leaf!21967 (fill!215 1 x!5716) 1)))) 512))))

(assert (=> d!1251354 (= (inv!61995 (Leaf!21967 (fill!215 1 x!5716) 1)) e!2643203)))

(declare-fun b!4255429 () Bool)

(declare-fun res!1749327 () Bool)

(assert (=> b!4255429 (=> (not res!1749327) (not e!2643203))))

(assert (=> b!4255429 (= res!1749327 (= (csize!28649 (Leaf!21967 (fill!215 1 x!5716) 1)) (size!34539 (list!17000 (xs!17515 (Leaf!21967 (fill!215 1 x!5716) 1))))))))

(declare-fun b!4255430 () Bool)

(assert (=> b!4255430 (= e!2643203 (and (> (csize!28649 (Leaf!21967 (fill!215 1 x!5716) 1)) 0) (<= (csize!28649 (Leaf!21967 (fill!215 1 x!5716) 1)) 512)))))

(assert (= (and d!1251354 res!1749326) b!4255429))

(assert (= (and b!4255429 res!1749327) b!4255430))

(declare-fun m!4840519 () Bool)

(assert (=> d!1251354 m!4840519))

(assert (=> d!1251354 m!4840519))

(declare-fun m!4840521 () Bool)

(assert (=> d!1251354 m!4840521))

(assert (=> b!4255429 m!4840519))

(assert (=> b!4255429 m!4840519))

(assert (=> b!4255429 m!4840521))

(assert (=> b!4255424 d!1251354))

(declare-fun d!1251358 () Bool)

(declare-fun e!2643211 () Bool)

(assert (=> d!1251358 e!2643211))

(declare-fun res!1749339 () Bool)

(assert (=> d!1251358 (=> (not res!1749339) (not e!2643211))))

(declare-fun lt!1509693 () List!47321)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7415 (List!47321) (InoxSet T!79252))

(assert (=> d!1251358 (= res!1749339 (= (content!7415 lt!1509693) (ite (<= 1 0) ((as const (Array T!79252 Bool)) false) (store ((as const (Array T!79252 Bool)) false) x!5716 true))))))

(declare-fun e!2643212 () List!47321)

(assert (=> d!1251358 (= lt!1509693 e!2643212)))

(declare-fun c!722506 () Bool)

(assert (=> d!1251358 (= c!722506 (<= 1 0))))

(assert (=> d!1251358 (= (fill!217 1 x!5716) lt!1509693)))

(declare-fun b!4255446 () Bool)

(assert (=> b!4255446 (= e!2643212 Nil!47197)))

(declare-fun b!4255447 () Bool)

(assert (=> b!4255447 (= e!2643212 (Cons!47197 x!5716 (fill!217 (- 1 1) x!5716)))))

(declare-fun b!4255448 () Bool)

(assert (=> b!4255448 (= e!2643211 (= (size!34539 lt!1509693) (ite (<= 1 0) 0 1)))))

(assert (= (and d!1251358 c!722506) b!4255446))

(assert (= (and d!1251358 (not c!722506)) b!4255447))

(assert (= (and d!1251358 res!1749339) b!4255448))

(declare-fun m!4840533 () Bool)

(assert (=> d!1251358 m!4840533))

(declare-fun m!4840535 () Bool)

(assert (=> d!1251358 m!4840535))

(declare-fun m!4840537 () Bool)

(assert (=> b!4255447 m!4840537))

(declare-fun m!4840539 () Bool)

(assert (=> b!4255448 m!4840539))

(assert (=> d!1251352 d!1251358))

(declare-fun d!1251362 () Bool)

(declare-fun _$14!699 () IArray!28423)

(assert (=> d!1251362 (= _$14!699 (IArray!28424 (fill!217 1 x!5716)))))

(declare-fun e!2643217 () Bool)

(declare-fun inv!61996 (IArray!28423) Bool)

(assert (=> d!1251362 (and (inv!61996 _$14!699) e!2643217)))

(assert (=> d!1251362 (= (choose!25965 1 x!5716) _$14!699)))

(declare-fun b!4255455 () Bool)

(declare-fun tp!1306037 () Bool)

(assert (=> b!4255455 (= e!2643217 tp!1306037)))

(assert (= d!1251362 b!4255455))

(assert (=> d!1251362 m!4840515))

(declare-fun m!4840541 () Bool)

(assert (=> d!1251362 m!4840541))

(assert (=> d!1251352 d!1251362))

(declare-fun d!1251364 () Bool)

(declare-fun res!1749354 () Bool)

(declare-fun e!2643225 () Bool)

(assert (=> d!1251364 (=> (not res!1749354) (not e!2643225))))

(declare-fun size!34541 (Conc!14209) Int)

(assert (=> d!1251364 (= res!1749354 (= (csize!28648 (Leaf!21967 (fill!215 1 x!5716) 1)) (+ (size!34541 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) (size!34541 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))))))))

(assert (=> d!1251364 (= (inv!61993 (Leaf!21967 (fill!215 1 x!5716) 1)) e!2643225)))

(declare-fun b!4255470 () Bool)

(declare-fun res!1749355 () Bool)

(assert (=> b!4255470 (=> (not res!1749355) (not e!2643225))))

(assert (=> b!4255470 (= res!1749355 (and (not (= (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1)) Empty!14209)) (not (= (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1)) Empty!14209))))))

(declare-fun b!4255471 () Bool)

(declare-fun res!1749356 () Bool)

(assert (=> b!4255471 (=> (not res!1749356) (not e!2643225))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1838 (Conc!14209) Int)

(assert (=> b!4255471 (= res!1749356 (= (cheight!14420 (Leaf!21967 (fill!215 1 x!5716) 1)) (+ (max!0 (height!1838 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) (height!1838 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1)))) 1)))))

(declare-fun b!4255472 () Bool)

(assert (=> b!4255472 (= e!2643225 (<= 0 (cheight!14420 (Leaf!21967 (fill!215 1 x!5716) 1))))))

(assert (= (and d!1251364 res!1749354) b!4255470))

(assert (= (and b!4255470 res!1749355) b!4255471))

(assert (= (and b!4255471 res!1749356) b!4255472))

(declare-fun m!4840547 () Bool)

(assert (=> d!1251364 m!4840547))

(declare-fun m!4840549 () Bool)

(assert (=> d!1251364 m!4840549))

(declare-fun m!4840551 () Bool)

(assert (=> b!4255471 m!4840551))

(declare-fun m!4840553 () Bool)

(assert (=> b!4255471 m!4840553))

(assert (=> b!4255471 m!4840551))

(assert (=> b!4255471 m!4840553))

(declare-fun m!4840555 () Bool)

(assert (=> b!4255471 m!4840555))

(assert (=> b!4255422 d!1251364))

(check-sat tp_is_empty!22797 (not b!4255447) (not d!1251362) (not b!4255455) (not d!1251354) (not b!4255429) (not d!1251358) (not b!4255471) (not d!1251364) (not b!4255448))
(check-sat)
(get-model)

(declare-fun d!1251370 () Bool)

(declare-fun lt!1509699 () Int)

(assert (=> d!1251370 (>= lt!1509699 0)))

(declare-fun e!2643233 () Int)

(assert (=> d!1251370 (= lt!1509699 e!2643233)))

(declare-fun c!722512 () Bool)

(assert (=> d!1251370 (= c!722512 ((_ is Nil!47197) (list!17000 (xs!17515 (Leaf!21967 (fill!215 1 x!5716) 1)))))))

(assert (=> d!1251370 (= (size!34539 (list!17000 (xs!17515 (Leaf!21967 (fill!215 1 x!5716) 1)))) lt!1509699)))

(declare-fun b!4255483 () Bool)

(assert (=> b!4255483 (= e!2643233 0)))

(declare-fun b!4255484 () Bool)

(assert (=> b!4255484 (= e!2643233 (+ 1 (size!34539 (t!352860 (list!17000 (xs!17515 (Leaf!21967 (fill!215 1 x!5716) 1)))))))))

(assert (= (and d!1251370 c!722512) b!4255483))

(assert (= (and d!1251370 (not c!722512)) b!4255484))

(declare-fun m!4840567 () Bool)

(assert (=> b!4255484 m!4840567))

(assert (=> b!4255429 d!1251370))

(declare-fun d!1251372 () Bool)

(assert (=> d!1251372 (= (list!17000 (xs!17515 (Leaf!21967 (fill!215 1 x!5716) 1))) (innerList!14269 (xs!17515 (Leaf!21967 (fill!215 1 x!5716) 1))))))

(assert (=> b!4255429 d!1251372))

(assert (=> d!1251362 d!1251358))

(declare-fun d!1251374 () Bool)

(assert (=> d!1251374 (= (inv!61996 _$14!699) (<= (size!34539 (innerList!14269 _$14!699)) 2147483647))))

(declare-fun bs!598798 () Bool)

(assert (= bs!598798 d!1251374))

(declare-fun m!4840569 () Bool)

(assert (=> bs!598798 m!4840569))

(assert (=> d!1251362 d!1251374))

(declare-fun d!1251376 () Bool)

(declare-fun e!2643234 () Bool)

(assert (=> d!1251376 e!2643234))

(declare-fun res!1749358 () Bool)

(assert (=> d!1251376 (=> (not res!1749358) (not e!2643234))))

(declare-fun lt!1509700 () List!47321)

(assert (=> d!1251376 (= res!1749358 (= (content!7415 lt!1509700) (ite (<= (- 1 1) 0) ((as const (Array T!79252 Bool)) false) (store ((as const (Array T!79252 Bool)) false) x!5716 true))))))

(declare-fun e!2643235 () List!47321)

(assert (=> d!1251376 (= lt!1509700 e!2643235)))

(declare-fun c!722513 () Bool)

(assert (=> d!1251376 (= c!722513 (<= (- 1 1) 0))))

(assert (=> d!1251376 (= (fill!217 (- 1 1) x!5716) lt!1509700)))

(declare-fun b!4255485 () Bool)

(assert (=> b!4255485 (= e!2643235 Nil!47197)))

(declare-fun b!4255486 () Bool)

(assert (=> b!4255486 (= e!2643235 (Cons!47197 x!5716 (fill!217 (- (- 1 1) 1) x!5716)))))

(declare-fun b!4255487 () Bool)

(assert (=> b!4255487 (= e!2643234 (= (size!34539 lt!1509700) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!1251376 c!722513) b!4255485))

(assert (= (and d!1251376 (not c!722513)) b!4255486))

(assert (= (and d!1251376 res!1749358) b!4255487))

(declare-fun m!4840571 () Bool)

(assert (=> d!1251376 m!4840571))

(assert (=> d!1251376 m!4840535))

(declare-fun m!4840573 () Bool)

(assert (=> b!4255486 m!4840573))

(declare-fun m!4840575 () Bool)

(assert (=> b!4255487 m!4840575))

(assert (=> b!4255447 d!1251376))

(declare-fun d!1251378 () Bool)

(assert (=> d!1251378 (= (max!0 (height!1838 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) (height!1838 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1)))) (ite (< (height!1838 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) (height!1838 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1)))) (height!1838 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) (height!1838 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1)))))))

(assert (=> b!4255471 d!1251378))

(declare-fun d!1251380 () Bool)

(assert (=> d!1251380 (= (height!1838 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) (ite ((_ is Empty!14209) (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) 0 (ite ((_ is Leaf!21967) (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) 1 (cheight!14420 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))))))))

(assert (=> b!4255471 d!1251380))

(declare-fun d!1251382 () Bool)

(assert (=> d!1251382 (= (height!1838 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) (ite ((_ is Empty!14209) (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) 0 (ite ((_ is Leaf!21967) (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) 1 (cheight!14420 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))))))))

(assert (=> b!4255471 d!1251382))

(assert (=> d!1251354 d!1251370))

(assert (=> d!1251354 d!1251372))

(declare-fun d!1251384 () Bool)

(declare-fun lt!1509703 () Int)

(declare-fun list!17002 (Conc!14209) List!47321)

(assert (=> d!1251384 (= lt!1509703 (size!34539 (list!17002 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1)))))))

(assert (=> d!1251384 (= lt!1509703 (ite ((_ is Empty!14209) (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) 0 (ite ((_ is Leaf!21967) (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) (csize!28649 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) (csize!28648 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))))))))

(assert (=> d!1251384 (= (size!34541 (left!34974 (Leaf!21967 (fill!215 1 x!5716) 1))) lt!1509703)))

(declare-fun bs!598799 () Bool)

(assert (= bs!598799 d!1251384))

(declare-fun m!4840577 () Bool)

(assert (=> bs!598799 m!4840577))

(assert (=> bs!598799 m!4840577))

(declare-fun m!4840579 () Bool)

(assert (=> bs!598799 m!4840579))

(assert (=> d!1251364 d!1251384))

(declare-fun d!1251386 () Bool)

(declare-fun lt!1509704 () Int)

(assert (=> d!1251386 (= lt!1509704 (size!34539 (list!17002 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1)))))))

(assert (=> d!1251386 (= lt!1509704 (ite ((_ is Empty!14209) (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) 0 (ite ((_ is Leaf!21967) (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) (csize!28649 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) (csize!28648 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))))))))

(assert (=> d!1251386 (= (size!34541 (right!35304 (Leaf!21967 (fill!215 1 x!5716) 1))) lt!1509704)))

(declare-fun bs!598800 () Bool)

(assert (= bs!598800 d!1251386))

(declare-fun m!4840581 () Bool)

(assert (=> bs!598800 m!4840581))

(assert (=> bs!598800 m!4840581))

(declare-fun m!4840583 () Bool)

(assert (=> bs!598800 m!4840583))

(assert (=> d!1251364 d!1251386))

(declare-fun d!1251388 () Bool)

(declare-fun c!722516 () Bool)

(assert (=> d!1251388 (= c!722516 ((_ is Nil!47197) lt!1509693))))

(declare-fun e!2643238 () (InoxSet T!79252))

(assert (=> d!1251388 (= (content!7415 lt!1509693) e!2643238)))

(declare-fun b!4255492 () Bool)

(assert (=> b!4255492 (= e!2643238 ((as const (Array T!79252 Bool)) false))))

(declare-fun b!4255493 () Bool)

(assert (=> b!4255493 (= e!2643238 ((_ map or) (store ((as const (Array T!79252 Bool)) false) (h!52617 lt!1509693) true) (content!7415 (t!352860 lt!1509693))))))

(assert (= (and d!1251388 c!722516) b!4255492))

(assert (= (and d!1251388 (not c!722516)) b!4255493))

(declare-fun m!4840585 () Bool)

(assert (=> b!4255493 m!4840585))

(declare-fun m!4840587 () Bool)

(assert (=> b!4255493 m!4840587))

(assert (=> d!1251358 d!1251388))

(declare-fun d!1251390 () Bool)

(declare-fun lt!1509705 () Int)

(assert (=> d!1251390 (>= lt!1509705 0)))

(declare-fun e!2643239 () Int)

(assert (=> d!1251390 (= lt!1509705 e!2643239)))

(declare-fun c!722517 () Bool)

(assert (=> d!1251390 (= c!722517 ((_ is Nil!47197) lt!1509693))))

(assert (=> d!1251390 (= (size!34539 lt!1509693) lt!1509705)))

(declare-fun b!4255494 () Bool)

(assert (=> b!4255494 (= e!2643239 0)))

(declare-fun b!4255495 () Bool)

(assert (=> b!4255495 (= e!2643239 (+ 1 (size!34539 (t!352860 lt!1509693))))))

(assert (= (and d!1251390 c!722517) b!4255494))

(assert (= (and d!1251390 (not c!722517)) b!4255495))

(declare-fun m!4840589 () Bool)

(assert (=> b!4255495 m!4840589))

(assert (=> b!4255448 d!1251390))

(declare-fun b!4255503 () Bool)

(declare-fun e!2643244 () Bool)

(declare-fun tp!1306043 () Bool)

(assert (=> b!4255503 (= e!2643244 (and tp_is_empty!22797 tp!1306043))))

(assert (=> b!4255455 (= tp!1306037 e!2643244)))

(assert (= (and b!4255455 ((_ is Cons!47197) (innerList!14269 _$14!699))) b!4255503))

(check-sat tp_is_empty!22797 (not b!4255503) (not b!4255495) (not b!4255487) (not b!4255493) (not d!1251384) (not b!4255484) (not b!4255486) (not d!1251376) (not d!1251374) (not d!1251386))
(check-sat)
