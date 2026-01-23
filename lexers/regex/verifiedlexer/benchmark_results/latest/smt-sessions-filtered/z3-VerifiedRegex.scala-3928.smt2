; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215406 () Bool)

(assert start!215406)

(declare-fun res!950482 () Bool)

(declare-fun e!1412397 () Bool)

(assert (=> start!215406 (=> (not res!950482) (not e!1412397))))

(declare-datatypes ((T!40578 0))(
  ( (T!40579 (val!7382 Int)) )
))
(declare-datatypes ((List!25946 0))(
  ( (Nil!25862) (Cons!25862 (h!31263 T!40578) (t!198670 List!25946)) )
))
(declare-datatypes ((IArray!16923 0))(
  ( (IArray!16924 (innerList!8519 List!25946)) )
))
(declare-datatypes ((Conc!8459 0))(
  ( (Node!8459 (left!19891 Conc!8459) (right!20221 Conc!8459) (csize!17148 Int) (cheight!8670 Int)) (Leaf!12388 (xs!11401 IArray!16923) (csize!17149 Int)) (Empty!8459) )
))
(declare-fun t!4663 () Conc!8459)

(declare-fun isBalanced!2617 (Conc!8459) Bool)

(assert (=> start!215406 (= res!950482 (isBalanced!2617 t!4663))))

(assert (=> start!215406 e!1412397))

(declare-fun e!1412398 () Bool)

(declare-fun inv!35019 (Conc!8459) Bool)

(assert (=> start!215406 (and (inv!35019 t!4663) e!1412398)))

(declare-fun b!2211550 () Bool)

(declare-fun tp!687322 () Bool)

(declare-fun tp!687324 () Bool)

(assert (=> b!2211550 (= e!1412398 (and (inv!35019 (left!19891 t!4663)) tp!687324 (inv!35019 (right!20221 t!4663)) tp!687322))))

(declare-fun b!2211551 () Bool)

(declare-fun e!1412399 () Bool)

(declare-fun inv!35020 (IArray!16923) Bool)

(assert (=> b!2211551 (= e!1412398 (and (inv!35020 (xs!11401 t!4663)) e!1412399))))

(declare-fun b!2211552 () Bool)

(declare-fun tp!687323 () Bool)

(assert (=> b!2211552 (= e!1412399 tp!687323)))

(declare-fun b!2211553 () Bool)

(declare-fun res!950483 () Bool)

(assert (=> b!2211553 (=> (not res!950483) (not e!1412397))))

(declare-fun isEmpty!14807 (Conc!8459) Bool)

(assert (=> b!2211553 (= res!950483 (not (isEmpty!14807 t!4663)))))

(declare-fun b!2211554 () Bool)

(declare-fun res!950481 () Bool)

(assert (=> b!2211554 (=> (not res!950481) (not e!1412397))))

(get-info :version)

(assert (=> b!2211554 (= res!950481 ((_ is Leaf!12388) t!4663))))

(declare-fun b!2211555 () Bool)

(declare-fun apply!6407 (IArray!16923 Int) T!40578)

(declare-fun head!4723 (List!25946) T!40578)

(declare-fun list!10032 (Conc!8459) List!25946)

(assert (=> b!2211555 (= e!1412397 (not (= (apply!6407 (xs!11401 t!4663) 0) (head!4723 (list!10032 t!4663)))))))

(assert (= (and start!215406 res!950482) b!2211553))

(assert (= (and b!2211553 res!950483) b!2211554))

(assert (= (and b!2211554 res!950481) b!2211555))

(assert (= (and start!215406 ((_ is Node!8459) t!4663)) b!2211550))

(assert (= b!2211551 b!2211552))

(assert (= (and start!215406 ((_ is Leaf!12388) t!4663)) b!2211551))

(declare-fun m!2653389 () Bool)

(assert (=> b!2211551 m!2653389))

(declare-fun m!2653391 () Bool)

(assert (=> start!215406 m!2653391))

(declare-fun m!2653393 () Bool)

(assert (=> start!215406 m!2653393))

(declare-fun m!2653395 () Bool)

(assert (=> b!2211550 m!2653395))

(declare-fun m!2653397 () Bool)

(assert (=> b!2211550 m!2653397))

(declare-fun m!2653399 () Bool)

(assert (=> b!2211555 m!2653399))

(declare-fun m!2653401 () Bool)

(assert (=> b!2211555 m!2653401))

(assert (=> b!2211555 m!2653401))

(declare-fun m!2653403 () Bool)

(assert (=> b!2211555 m!2653403))

(declare-fun m!2653405 () Bool)

(assert (=> b!2211553 m!2653405))

(check-sat (not b!2211550) (not start!215406) (not b!2211552) (not b!2211555) (not b!2211551) (not b!2211553))
(check-sat)
(get-model)

(declare-fun d!661071 () Bool)

(declare-fun lt!826457 () T!40578)

(declare-fun apply!6408 (List!25946 Int) T!40578)

(declare-fun list!10033 (IArray!16923) List!25946)

(assert (=> d!661071 (= lt!826457 (apply!6408 (list!10033 (xs!11401 t!4663)) 0))))

(declare-fun choose!13053 (IArray!16923 Int) T!40578)

(assert (=> d!661071 (= lt!826457 (choose!13053 (xs!11401 t!4663) 0))))

(declare-fun e!1412402 () Bool)

(assert (=> d!661071 e!1412402))

(declare-fun res!950486 () Bool)

(assert (=> d!661071 (=> (not res!950486) (not e!1412402))))

(assert (=> d!661071 (= res!950486 (<= 0 0))))

(assert (=> d!661071 (= (apply!6407 (xs!11401 t!4663) 0) lt!826457)))

(declare-fun b!2211558 () Bool)

(declare-fun size!20174 (IArray!16923) Int)

(assert (=> b!2211558 (= e!1412402 (< 0 (size!20174 (xs!11401 t!4663))))))

(assert (= (and d!661071 res!950486) b!2211558))

(declare-fun m!2653409 () Bool)

(assert (=> d!661071 m!2653409))

(assert (=> d!661071 m!2653409))

(declare-fun m!2653411 () Bool)

(assert (=> d!661071 m!2653411))

(declare-fun m!2653413 () Bool)

(assert (=> d!661071 m!2653413))

(declare-fun m!2653415 () Bool)

(assert (=> b!2211558 m!2653415))

(assert (=> b!2211555 d!661071))

(declare-fun d!661077 () Bool)

(assert (=> d!661077 (= (head!4723 (list!10032 t!4663)) (h!31263 (list!10032 t!4663)))))

(assert (=> b!2211555 d!661077))

(declare-fun b!2211587 () Bool)

(declare-fun e!1412414 () List!25946)

(assert (=> b!2211587 (= e!1412414 (list!10033 (xs!11401 t!4663)))))

(declare-fun b!2211585 () Bool)

(declare-fun e!1412413 () List!25946)

(assert (=> b!2211585 (= e!1412413 Nil!25862)))

(declare-fun b!2211588 () Bool)

(declare-fun ++!6448 (List!25946 List!25946) List!25946)

(assert (=> b!2211588 (= e!1412414 (++!6448 (list!10032 (left!19891 t!4663)) (list!10032 (right!20221 t!4663))))))

(declare-fun d!661079 () Bool)

(declare-fun c!353456 () Bool)

(assert (=> d!661079 (= c!353456 ((_ is Empty!8459) t!4663))))

(assert (=> d!661079 (= (list!10032 t!4663) e!1412413)))

(declare-fun b!2211586 () Bool)

(assert (=> b!2211586 (= e!1412413 e!1412414)))

(declare-fun c!353457 () Bool)

(assert (=> b!2211586 (= c!353457 ((_ is Leaf!12388) t!4663))))

(assert (= (and d!661079 c!353456) b!2211585))

(assert (= (and d!661079 (not c!353456)) b!2211586))

(assert (= (and b!2211586 c!353457) b!2211587))

(assert (= (and b!2211586 (not c!353457)) b!2211588))

(assert (=> b!2211587 m!2653409))

(declare-fun m!2653429 () Bool)

(assert (=> b!2211588 m!2653429))

(declare-fun m!2653431 () Bool)

(assert (=> b!2211588 m!2653431))

(assert (=> b!2211588 m!2653429))

(assert (=> b!2211588 m!2653431))

(declare-fun m!2653433 () Bool)

(assert (=> b!2211588 m!2653433))

(assert (=> b!2211555 d!661079))

(declare-fun d!661083 () Bool)

(declare-fun c!353463 () Bool)

(assert (=> d!661083 (= c!353463 ((_ is Node!8459) (left!19891 t!4663)))))

(declare-fun e!1412425 () Bool)

(assert (=> d!661083 (= (inv!35019 (left!19891 t!4663)) e!1412425)))

(declare-fun b!2211604 () Bool)

(declare-fun inv!35021 (Conc!8459) Bool)

(assert (=> b!2211604 (= e!1412425 (inv!35021 (left!19891 t!4663)))))

(declare-fun b!2211605 () Bool)

(declare-fun e!1412426 () Bool)

(assert (=> b!2211605 (= e!1412425 e!1412426)))

(declare-fun res!950510 () Bool)

(assert (=> b!2211605 (= res!950510 (not ((_ is Leaf!12388) (left!19891 t!4663))))))

(assert (=> b!2211605 (=> res!950510 e!1412426)))

(declare-fun b!2211606 () Bool)

(declare-fun inv!35022 (Conc!8459) Bool)

(assert (=> b!2211606 (= e!1412426 (inv!35022 (left!19891 t!4663)))))

(assert (= (and d!661083 c!353463) b!2211604))

(assert (= (and d!661083 (not c!353463)) b!2211605))

(assert (= (and b!2211605 (not res!950510)) b!2211606))

(declare-fun m!2653439 () Bool)

(assert (=> b!2211604 m!2653439))

(declare-fun m!2653441 () Bool)

(assert (=> b!2211606 m!2653441))

(assert (=> b!2211550 d!661083))

(declare-fun d!661087 () Bool)

(declare-fun c!353464 () Bool)

(assert (=> d!661087 (= c!353464 ((_ is Node!8459) (right!20221 t!4663)))))

(declare-fun e!1412427 () Bool)

(assert (=> d!661087 (= (inv!35019 (right!20221 t!4663)) e!1412427)))

(declare-fun b!2211607 () Bool)

(assert (=> b!2211607 (= e!1412427 (inv!35021 (right!20221 t!4663)))))

(declare-fun b!2211608 () Bool)

(declare-fun e!1412428 () Bool)

(assert (=> b!2211608 (= e!1412427 e!1412428)))

(declare-fun res!950511 () Bool)

(assert (=> b!2211608 (= res!950511 (not ((_ is Leaf!12388) (right!20221 t!4663))))))

(assert (=> b!2211608 (=> res!950511 e!1412428)))

(declare-fun b!2211609 () Bool)

(assert (=> b!2211609 (= e!1412428 (inv!35022 (right!20221 t!4663)))))

(assert (= (and d!661087 c!353464) b!2211607))

(assert (= (and d!661087 (not c!353464)) b!2211608))

(assert (= (and b!2211608 (not res!950511)) b!2211609))

(declare-fun m!2653443 () Bool)

(assert (=> b!2211607 m!2653443))

(declare-fun m!2653445 () Bool)

(assert (=> b!2211609 m!2653445))

(assert (=> b!2211550 d!661087))

(declare-fun d!661089 () Bool)

(declare-fun size!20175 (List!25946) Int)

(assert (=> d!661089 (= (inv!35020 (xs!11401 t!4663)) (<= (size!20175 (innerList!8519 (xs!11401 t!4663))) 2147483647))))

(declare-fun bs!451435 () Bool)

(assert (= bs!451435 d!661089))

(declare-fun m!2653447 () Bool)

(assert (=> bs!451435 m!2653447))

(assert (=> b!2211551 d!661089))

(declare-fun b!2211625 () Bool)

(declare-fun res!950529 () Bool)

(declare-fun e!1412437 () Bool)

(assert (=> b!2211625 (=> (not res!950529) (not e!1412437))))

(assert (=> b!2211625 (= res!950529 (isBalanced!2617 (left!19891 t!4663)))))

(declare-fun b!2211626 () Bool)

(declare-fun res!950527 () Bool)

(assert (=> b!2211626 (=> (not res!950527) (not e!1412437))))

(assert (=> b!2211626 (= res!950527 (isBalanced!2617 (right!20221 t!4663)))))

(declare-fun b!2211627 () Bool)

(declare-fun res!950532 () Bool)

(assert (=> b!2211627 (=> (not res!950532) (not e!1412437))))

(assert (=> b!2211627 (= res!950532 (not (isEmpty!14807 (left!19891 t!4663))))))

(declare-fun b!2211628 () Bool)

(declare-fun res!950528 () Bool)

(assert (=> b!2211628 (=> (not res!950528) (not e!1412437))))

(declare-fun height!1283 (Conc!8459) Int)

(assert (=> b!2211628 (= res!950528 (<= (- (height!1283 (left!19891 t!4663)) (height!1283 (right!20221 t!4663))) 1))))

(declare-fun b!2211629 () Bool)

(assert (=> b!2211629 (= e!1412437 (not (isEmpty!14807 (right!20221 t!4663))))))

(declare-fun b!2211630 () Bool)

(declare-fun e!1412436 () Bool)

(assert (=> b!2211630 (= e!1412436 e!1412437)))

(declare-fun res!950530 () Bool)

(assert (=> b!2211630 (=> (not res!950530) (not e!1412437))))

(assert (=> b!2211630 (= res!950530 (<= (- 1) (- (height!1283 (left!19891 t!4663)) (height!1283 (right!20221 t!4663)))))))

(declare-fun d!661091 () Bool)

(declare-fun res!950531 () Bool)

(assert (=> d!661091 (=> res!950531 e!1412436)))

(assert (=> d!661091 (= res!950531 (not ((_ is Node!8459) t!4663)))))

(assert (=> d!661091 (= (isBalanced!2617 t!4663) e!1412436)))

(assert (= (and d!661091 (not res!950531)) b!2211630))

(assert (= (and b!2211630 res!950530) b!2211628))

(assert (= (and b!2211628 res!950528) b!2211625))

(assert (= (and b!2211625 res!950529) b!2211626))

(assert (= (and b!2211626 res!950527) b!2211627))

(assert (= (and b!2211627 res!950532) b!2211629))

(declare-fun m!2653461 () Bool)

(assert (=> b!2211625 m!2653461))

(declare-fun m!2653463 () Bool)

(assert (=> b!2211628 m!2653463))

(declare-fun m!2653465 () Bool)

(assert (=> b!2211628 m!2653465))

(declare-fun m!2653467 () Bool)

(assert (=> b!2211627 m!2653467))

(declare-fun m!2653469 () Bool)

(assert (=> b!2211626 m!2653469))

(assert (=> b!2211630 m!2653463))

(assert (=> b!2211630 m!2653465))

(declare-fun m!2653471 () Bool)

(assert (=> b!2211629 m!2653471))

(assert (=> start!215406 d!661091))

(declare-fun d!661099 () Bool)

(declare-fun c!353465 () Bool)

(assert (=> d!661099 (= c!353465 ((_ is Node!8459) t!4663))))

(declare-fun e!1412438 () Bool)

(assert (=> d!661099 (= (inv!35019 t!4663) e!1412438)))

(declare-fun b!2211631 () Bool)

(assert (=> b!2211631 (= e!1412438 (inv!35021 t!4663))))

(declare-fun b!2211632 () Bool)

(declare-fun e!1412439 () Bool)

(assert (=> b!2211632 (= e!1412438 e!1412439)))

(declare-fun res!950533 () Bool)

(assert (=> b!2211632 (= res!950533 (not ((_ is Leaf!12388) t!4663)))))

(assert (=> b!2211632 (=> res!950533 e!1412439)))

(declare-fun b!2211633 () Bool)

(assert (=> b!2211633 (= e!1412439 (inv!35022 t!4663))))

(assert (= (and d!661099 c!353465) b!2211631))

(assert (= (and d!661099 (not c!353465)) b!2211632))

(assert (= (and b!2211632 (not res!950533)) b!2211633))

(declare-fun m!2653473 () Bool)

(assert (=> b!2211631 m!2653473))

(declare-fun m!2653475 () Bool)

(assert (=> b!2211633 m!2653475))

(assert (=> start!215406 d!661099))

(declare-fun d!661101 () Bool)

(declare-fun lt!826466 () Bool)

(declare-fun isEmpty!14809 (List!25946) Bool)

(assert (=> d!661101 (= lt!826466 (isEmpty!14809 (list!10032 t!4663)))))

(declare-fun size!20178 (Conc!8459) Int)

(assert (=> d!661101 (= lt!826466 (= (size!20178 t!4663) 0))))

(assert (=> d!661101 (= (isEmpty!14807 t!4663) lt!826466)))

(declare-fun bs!451436 () Bool)

(assert (= bs!451436 d!661101))

(assert (=> bs!451436 m!2653401))

(assert (=> bs!451436 m!2653401))

(declare-fun m!2653477 () Bool)

(assert (=> bs!451436 m!2653477))

(declare-fun m!2653479 () Bool)

(assert (=> bs!451436 m!2653479))

(assert (=> b!2211553 d!661101))

(declare-fun tp!687338 () Bool)

(declare-fun tp!687337 () Bool)

(declare-fun b!2211668 () Bool)

(declare-fun e!1412459 () Bool)

(assert (=> b!2211668 (= e!1412459 (and (inv!35019 (left!19891 (left!19891 t!4663))) tp!687337 (inv!35019 (right!20221 (left!19891 t!4663))) tp!687338))))

(declare-fun b!2211670 () Bool)

(declare-fun e!1412458 () Bool)

(declare-fun tp!687339 () Bool)

(assert (=> b!2211670 (= e!1412458 tp!687339)))

(declare-fun b!2211669 () Bool)

(assert (=> b!2211669 (= e!1412459 (and (inv!35020 (xs!11401 (left!19891 t!4663))) e!1412458))))

(assert (=> b!2211550 (= tp!687324 (and (inv!35019 (left!19891 t!4663)) e!1412459))))

(assert (= (and b!2211550 ((_ is Node!8459) (left!19891 t!4663))) b!2211668))

(assert (= b!2211669 b!2211670))

(assert (= (and b!2211550 ((_ is Leaf!12388) (left!19891 t!4663))) b!2211669))

(declare-fun m!2653495 () Bool)

(assert (=> b!2211668 m!2653495))

(declare-fun m!2653497 () Bool)

(assert (=> b!2211668 m!2653497))

(declare-fun m!2653499 () Bool)

(assert (=> b!2211669 m!2653499))

(assert (=> b!2211550 m!2653395))

(declare-fun b!2211671 () Bool)

(declare-fun e!1412461 () Bool)

(declare-fun tp!687340 () Bool)

(declare-fun tp!687341 () Bool)

(assert (=> b!2211671 (= e!1412461 (and (inv!35019 (left!19891 (right!20221 t!4663))) tp!687340 (inv!35019 (right!20221 (right!20221 t!4663))) tp!687341))))

(declare-fun b!2211673 () Bool)

(declare-fun e!1412460 () Bool)

(declare-fun tp!687342 () Bool)

(assert (=> b!2211673 (= e!1412460 tp!687342)))

(declare-fun b!2211672 () Bool)

(assert (=> b!2211672 (= e!1412461 (and (inv!35020 (xs!11401 (right!20221 t!4663))) e!1412460))))

(assert (=> b!2211550 (= tp!687322 (and (inv!35019 (right!20221 t!4663)) e!1412461))))

(assert (= (and b!2211550 ((_ is Node!8459) (right!20221 t!4663))) b!2211671))

(assert (= b!2211672 b!2211673))

(assert (= (and b!2211550 ((_ is Leaf!12388) (right!20221 t!4663))) b!2211672))

(declare-fun m!2653501 () Bool)

(assert (=> b!2211671 m!2653501))

(declare-fun m!2653503 () Bool)

(assert (=> b!2211671 m!2653503))

(declare-fun m!2653505 () Bool)

(assert (=> b!2211672 m!2653505))

(assert (=> b!2211550 m!2653397))

(declare-fun b!2211681 () Bool)

(declare-fun e!1412466 () Bool)

(declare-fun tp_is_empty!9783 () Bool)

(declare-fun tp!687348 () Bool)

(assert (=> b!2211681 (= e!1412466 (and tp_is_empty!9783 tp!687348))))

(assert (=> b!2211552 (= tp!687323 e!1412466)))

(assert (= (and b!2211552 ((_ is Cons!25862) (innerList!8519 (xs!11401 t!4663)))) b!2211681))

(check-sat (not b!2211668) (not b!2211681) (not b!2211609) (not b!2211631) (not b!2211628) (not b!2211627) (not b!2211671) (not b!2211670) (not b!2211673) (not d!661071) (not b!2211669) (not d!661089) (not b!2211587) (not b!2211626) (not b!2211588) (not b!2211550) (not b!2211558) (not b!2211604) (not b!2211630) (not b!2211607) (not b!2211672) (not d!661101) (not b!2211625) tp_is_empty!9783 (not b!2211633) (not b!2211629) (not b!2211606))
(check-sat)
(get-model)

(declare-fun d!661107 () Bool)

(declare-fun res!950540 () Bool)

(declare-fun e!1412474 () Bool)

(assert (=> d!661107 (=> (not res!950540) (not e!1412474))))

(assert (=> d!661107 (= res!950540 (<= (size!20175 (list!10033 (xs!11401 (right!20221 t!4663)))) 512))))

(assert (=> d!661107 (= (inv!35022 (right!20221 t!4663)) e!1412474)))

(declare-fun b!2211694 () Bool)

(declare-fun res!950541 () Bool)

(assert (=> b!2211694 (=> (not res!950541) (not e!1412474))))

(assert (=> b!2211694 (= res!950541 (= (csize!17149 (right!20221 t!4663)) (size!20175 (list!10033 (xs!11401 (right!20221 t!4663))))))))

(declare-fun b!2211695 () Bool)

(assert (=> b!2211695 (= e!1412474 (and (> (csize!17149 (right!20221 t!4663)) 0) (<= (csize!17149 (right!20221 t!4663)) 512)))))

(assert (= (and d!661107 res!950540) b!2211694))

(assert (= (and b!2211694 res!950541) b!2211695))

(declare-fun m!2653519 () Bool)

(assert (=> d!661107 m!2653519))

(assert (=> d!661107 m!2653519))

(declare-fun m!2653521 () Bool)

(assert (=> d!661107 m!2653521))

(assert (=> b!2211694 m!2653519))

(assert (=> b!2211694 m!2653519))

(assert (=> b!2211694 m!2653521))

(assert (=> b!2211609 d!661107))

(assert (=> b!2211550 d!661083))

(assert (=> b!2211550 d!661087))

(declare-fun d!661109 () Bool)

(assert (=> d!661109 (= (isEmpty!14809 (list!10032 t!4663)) ((_ is Nil!25862) (list!10032 t!4663)))))

(assert (=> d!661101 d!661109))

(assert (=> d!661101 d!661079))

(declare-fun d!661111 () Bool)

(declare-fun lt!826469 () Int)

(assert (=> d!661111 (= lt!826469 (size!20175 (list!10032 t!4663)))))

(assert (=> d!661111 (= lt!826469 (ite ((_ is Empty!8459) t!4663) 0 (ite ((_ is Leaf!12388) t!4663) (csize!17149 t!4663) (csize!17148 t!4663))))))

(assert (=> d!661111 (= (size!20178 t!4663) lt!826469)))

(declare-fun bs!451437 () Bool)

(assert (= bs!451437 d!661111))

(assert (=> bs!451437 m!2653401))

(assert (=> bs!451437 m!2653401))

(declare-fun m!2653523 () Bool)

(assert (=> bs!451437 m!2653523))

(assert (=> d!661101 d!661111))

(declare-fun d!661113 () Bool)

(assert (=> d!661113 (= (inv!35020 (xs!11401 (left!19891 t!4663))) (<= (size!20175 (innerList!8519 (xs!11401 (left!19891 t!4663)))) 2147483647))))

(declare-fun bs!451438 () Bool)

(assert (= bs!451438 d!661113))

(declare-fun m!2653525 () Bool)

(assert (=> bs!451438 m!2653525))

(assert (=> b!2211669 d!661113))

(declare-fun d!661115 () Bool)

(declare-fun c!353474 () Bool)

(assert (=> d!661115 (= c!353474 ((_ is Node!8459) (left!19891 (left!19891 t!4663))))))

(declare-fun e!1412475 () Bool)

(assert (=> d!661115 (= (inv!35019 (left!19891 (left!19891 t!4663))) e!1412475)))

(declare-fun b!2211696 () Bool)

(assert (=> b!2211696 (= e!1412475 (inv!35021 (left!19891 (left!19891 t!4663))))))

(declare-fun b!2211697 () Bool)

(declare-fun e!1412476 () Bool)

(assert (=> b!2211697 (= e!1412475 e!1412476)))

(declare-fun res!950542 () Bool)

(assert (=> b!2211697 (= res!950542 (not ((_ is Leaf!12388) (left!19891 (left!19891 t!4663)))))))

(assert (=> b!2211697 (=> res!950542 e!1412476)))

(declare-fun b!2211698 () Bool)

(assert (=> b!2211698 (= e!1412476 (inv!35022 (left!19891 (left!19891 t!4663))))))

(assert (= (and d!661115 c!353474) b!2211696))

(assert (= (and d!661115 (not c!353474)) b!2211697))

(assert (= (and b!2211697 (not res!950542)) b!2211698))

(declare-fun m!2653527 () Bool)

(assert (=> b!2211696 m!2653527))

(declare-fun m!2653529 () Bool)

(assert (=> b!2211698 m!2653529))

(assert (=> b!2211668 d!661115))

(declare-fun d!661117 () Bool)

(declare-fun c!353475 () Bool)

(assert (=> d!661117 (= c!353475 ((_ is Node!8459) (right!20221 (left!19891 t!4663))))))

(declare-fun e!1412477 () Bool)

(assert (=> d!661117 (= (inv!35019 (right!20221 (left!19891 t!4663))) e!1412477)))

(declare-fun b!2211699 () Bool)

(assert (=> b!2211699 (= e!1412477 (inv!35021 (right!20221 (left!19891 t!4663))))))

(declare-fun b!2211700 () Bool)

(declare-fun e!1412478 () Bool)

(assert (=> b!2211700 (= e!1412477 e!1412478)))

(declare-fun res!950543 () Bool)

(assert (=> b!2211700 (= res!950543 (not ((_ is Leaf!12388) (right!20221 (left!19891 t!4663)))))))

(assert (=> b!2211700 (=> res!950543 e!1412478)))

(declare-fun b!2211701 () Bool)

(assert (=> b!2211701 (= e!1412478 (inv!35022 (right!20221 (left!19891 t!4663))))))

(assert (= (and d!661117 c!353475) b!2211699))

(assert (= (and d!661117 (not c!353475)) b!2211700))

(assert (= (and b!2211700 (not res!950543)) b!2211701))

(declare-fun m!2653531 () Bool)

(assert (=> b!2211699 m!2653531))

(declare-fun m!2653533 () Bool)

(assert (=> b!2211701 m!2653533))

(assert (=> b!2211668 d!661117))

(declare-fun d!661119 () Bool)

(declare-fun lt!826472 () Int)

(assert (=> d!661119 (>= lt!826472 0)))

(declare-fun e!1412481 () Int)

(assert (=> d!661119 (= lt!826472 e!1412481)))

(declare-fun c!353478 () Bool)

(assert (=> d!661119 (= c!353478 ((_ is Nil!25862) (innerList!8519 (xs!11401 t!4663))))))

(assert (=> d!661119 (= (size!20175 (innerList!8519 (xs!11401 t!4663))) lt!826472)))

(declare-fun b!2211706 () Bool)

(assert (=> b!2211706 (= e!1412481 0)))

(declare-fun b!2211707 () Bool)

(assert (=> b!2211707 (= e!1412481 (+ 1 (size!20175 (t!198670 (innerList!8519 (xs!11401 t!4663))))))))

(assert (= (and d!661119 c!353478) b!2211706))

(assert (= (and d!661119 (not c!353478)) b!2211707))

(declare-fun m!2653535 () Bool)

(assert (=> b!2211707 m!2653535))

(assert (=> d!661089 d!661119))

(declare-fun d!661121 () Bool)

(declare-fun res!950550 () Bool)

(declare-fun e!1412484 () Bool)

(assert (=> d!661121 (=> (not res!950550) (not e!1412484))))

(assert (=> d!661121 (= res!950550 (= (csize!17148 (left!19891 t!4663)) (+ (size!20178 (left!19891 (left!19891 t!4663))) (size!20178 (right!20221 (left!19891 t!4663))))))))

(assert (=> d!661121 (= (inv!35021 (left!19891 t!4663)) e!1412484)))

(declare-fun b!2211714 () Bool)

(declare-fun res!950551 () Bool)

(assert (=> b!2211714 (=> (not res!950551) (not e!1412484))))

(assert (=> b!2211714 (= res!950551 (and (not (= (left!19891 (left!19891 t!4663)) Empty!8459)) (not (= (right!20221 (left!19891 t!4663)) Empty!8459))))))

(declare-fun b!2211715 () Bool)

(declare-fun res!950552 () Bool)

(assert (=> b!2211715 (=> (not res!950552) (not e!1412484))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2211715 (= res!950552 (= (cheight!8670 (left!19891 t!4663)) (+ (max!0 (height!1283 (left!19891 (left!19891 t!4663))) (height!1283 (right!20221 (left!19891 t!4663)))) 1)))))

(declare-fun b!2211716 () Bool)

(assert (=> b!2211716 (= e!1412484 (<= 0 (cheight!8670 (left!19891 t!4663))))))

(assert (= (and d!661121 res!950550) b!2211714))

(assert (= (and b!2211714 res!950551) b!2211715))

(assert (= (and b!2211715 res!950552) b!2211716))

(declare-fun m!2653537 () Bool)

(assert (=> d!661121 m!2653537))

(declare-fun m!2653539 () Bool)

(assert (=> d!661121 m!2653539))

(declare-fun m!2653541 () Bool)

(assert (=> b!2211715 m!2653541))

(declare-fun m!2653543 () Bool)

(assert (=> b!2211715 m!2653543))

(assert (=> b!2211715 m!2653541))

(assert (=> b!2211715 m!2653543))

(declare-fun m!2653545 () Bool)

(assert (=> b!2211715 m!2653545))

(assert (=> b!2211604 d!661121))

(declare-fun d!661123 () Bool)

(declare-fun res!950553 () Bool)

(declare-fun e!1412485 () Bool)

(assert (=> d!661123 (=> (not res!950553) (not e!1412485))))

(assert (=> d!661123 (= res!950553 (<= (size!20175 (list!10033 (xs!11401 (left!19891 t!4663)))) 512))))

(assert (=> d!661123 (= (inv!35022 (left!19891 t!4663)) e!1412485)))

(declare-fun b!2211717 () Bool)

(declare-fun res!950554 () Bool)

(assert (=> b!2211717 (=> (not res!950554) (not e!1412485))))

(assert (=> b!2211717 (= res!950554 (= (csize!17149 (left!19891 t!4663)) (size!20175 (list!10033 (xs!11401 (left!19891 t!4663))))))))

(declare-fun b!2211718 () Bool)

(assert (=> b!2211718 (= e!1412485 (and (> (csize!17149 (left!19891 t!4663)) 0) (<= (csize!17149 (left!19891 t!4663)) 512)))))

(assert (= (and d!661123 res!950553) b!2211717))

(assert (= (and b!2211717 res!950554) b!2211718))

(declare-fun m!2653547 () Bool)

(assert (=> d!661123 m!2653547))

(assert (=> d!661123 m!2653547))

(declare-fun m!2653549 () Bool)

(assert (=> d!661123 m!2653549))

(assert (=> b!2211717 m!2653547))

(assert (=> b!2211717 m!2653547))

(assert (=> b!2211717 m!2653549))

(assert (=> b!2211606 d!661123))

(declare-fun d!661125 () Bool)

(assert (=> d!661125 (= (list!10033 (xs!11401 t!4663)) (innerList!8519 (xs!11401 t!4663)))))

(assert (=> b!2211587 d!661125))

(declare-fun d!661127 () Bool)

(assert (=> d!661127 (= (inv!35020 (xs!11401 (right!20221 t!4663))) (<= (size!20175 (innerList!8519 (xs!11401 (right!20221 t!4663)))) 2147483647))))

(declare-fun bs!451439 () Bool)

(assert (= bs!451439 d!661127))

(declare-fun m!2653551 () Bool)

(assert (=> bs!451439 m!2653551))

(assert (=> b!2211672 d!661127))

(declare-fun b!2211728 () Bool)

(declare-fun e!1412491 () List!25946)

(assert (=> b!2211728 (= e!1412491 (Cons!25862 (h!31263 (list!10032 (left!19891 t!4663))) (++!6448 (t!198670 (list!10032 (left!19891 t!4663))) (list!10032 (right!20221 t!4663)))))))

(declare-fun b!2211727 () Bool)

(assert (=> b!2211727 (= e!1412491 (list!10032 (right!20221 t!4663)))))

(declare-fun b!2211729 () Bool)

(declare-fun res!950560 () Bool)

(declare-fun e!1412490 () Bool)

(assert (=> b!2211729 (=> (not res!950560) (not e!1412490))))

(declare-fun lt!826475 () List!25946)

(assert (=> b!2211729 (= res!950560 (= (size!20175 lt!826475) (+ (size!20175 (list!10032 (left!19891 t!4663))) (size!20175 (list!10032 (right!20221 t!4663))))))))

(declare-fun b!2211730 () Bool)

(assert (=> b!2211730 (= e!1412490 (or (not (= (list!10032 (right!20221 t!4663)) Nil!25862)) (= lt!826475 (list!10032 (left!19891 t!4663)))))))

(declare-fun d!661129 () Bool)

(assert (=> d!661129 e!1412490))

(declare-fun res!950559 () Bool)

(assert (=> d!661129 (=> (not res!950559) (not e!1412490))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3515 (List!25946) (InoxSet T!40578))

(assert (=> d!661129 (= res!950559 (= (content!3515 lt!826475) ((_ map or) (content!3515 (list!10032 (left!19891 t!4663))) (content!3515 (list!10032 (right!20221 t!4663))))))))

(assert (=> d!661129 (= lt!826475 e!1412491)))

(declare-fun c!353481 () Bool)

(assert (=> d!661129 (= c!353481 ((_ is Nil!25862) (list!10032 (left!19891 t!4663))))))

(assert (=> d!661129 (= (++!6448 (list!10032 (left!19891 t!4663)) (list!10032 (right!20221 t!4663))) lt!826475)))

(assert (= (and d!661129 c!353481) b!2211727))

(assert (= (and d!661129 (not c!353481)) b!2211728))

(assert (= (and d!661129 res!950559) b!2211729))

(assert (= (and b!2211729 res!950560) b!2211730))

(assert (=> b!2211728 m!2653431))

(declare-fun m!2653553 () Bool)

(assert (=> b!2211728 m!2653553))

(declare-fun m!2653555 () Bool)

(assert (=> b!2211729 m!2653555))

(assert (=> b!2211729 m!2653429))

(declare-fun m!2653557 () Bool)

(assert (=> b!2211729 m!2653557))

(assert (=> b!2211729 m!2653431))

(declare-fun m!2653559 () Bool)

(assert (=> b!2211729 m!2653559))

(declare-fun m!2653561 () Bool)

(assert (=> d!661129 m!2653561))

(assert (=> d!661129 m!2653429))

(declare-fun m!2653563 () Bool)

(assert (=> d!661129 m!2653563))

(assert (=> d!661129 m!2653431))

(declare-fun m!2653565 () Bool)

(assert (=> d!661129 m!2653565))

(assert (=> b!2211588 d!661129))

(declare-fun b!2211733 () Bool)

(declare-fun e!1412493 () List!25946)

(assert (=> b!2211733 (= e!1412493 (list!10033 (xs!11401 (left!19891 t!4663))))))

(declare-fun b!2211731 () Bool)

(declare-fun e!1412492 () List!25946)

(assert (=> b!2211731 (= e!1412492 Nil!25862)))

(declare-fun b!2211734 () Bool)

(assert (=> b!2211734 (= e!1412493 (++!6448 (list!10032 (left!19891 (left!19891 t!4663))) (list!10032 (right!20221 (left!19891 t!4663)))))))

(declare-fun d!661131 () Bool)

(declare-fun c!353482 () Bool)

(assert (=> d!661131 (= c!353482 ((_ is Empty!8459) (left!19891 t!4663)))))

(assert (=> d!661131 (= (list!10032 (left!19891 t!4663)) e!1412492)))

(declare-fun b!2211732 () Bool)

(assert (=> b!2211732 (= e!1412492 e!1412493)))

(declare-fun c!353483 () Bool)

(assert (=> b!2211732 (= c!353483 ((_ is Leaf!12388) (left!19891 t!4663)))))

(assert (= (and d!661131 c!353482) b!2211731))

(assert (= (and d!661131 (not c!353482)) b!2211732))

(assert (= (and b!2211732 c!353483) b!2211733))

(assert (= (and b!2211732 (not c!353483)) b!2211734))

(assert (=> b!2211733 m!2653547))

(declare-fun m!2653567 () Bool)

(assert (=> b!2211734 m!2653567))

(declare-fun m!2653569 () Bool)

(assert (=> b!2211734 m!2653569))

(assert (=> b!2211734 m!2653567))

(assert (=> b!2211734 m!2653569))

(declare-fun m!2653571 () Bool)

(assert (=> b!2211734 m!2653571))

(assert (=> b!2211588 d!661131))

(declare-fun b!2211737 () Bool)

(declare-fun e!1412495 () List!25946)

(assert (=> b!2211737 (= e!1412495 (list!10033 (xs!11401 (right!20221 t!4663))))))

(declare-fun b!2211735 () Bool)

(declare-fun e!1412494 () List!25946)

(assert (=> b!2211735 (= e!1412494 Nil!25862)))

(declare-fun b!2211738 () Bool)

(assert (=> b!2211738 (= e!1412495 (++!6448 (list!10032 (left!19891 (right!20221 t!4663))) (list!10032 (right!20221 (right!20221 t!4663)))))))

(declare-fun d!661133 () Bool)

(declare-fun c!353484 () Bool)

(assert (=> d!661133 (= c!353484 ((_ is Empty!8459) (right!20221 t!4663)))))

(assert (=> d!661133 (= (list!10032 (right!20221 t!4663)) e!1412494)))

(declare-fun b!2211736 () Bool)

(assert (=> b!2211736 (= e!1412494 e!1412495)))

(declare-fun c!353485 () Bool)

(assert (=> b!2211736 (= c!353485 ((_ is Leaf!12388) (right!20221 t!4663)))))

(assert (= (and d!661133 c!353484) b!2211735))

(assert (= (and d!661133 (not c!353484)) b!2211736))

(assert (= (and b!2211736 c!353485) b!2211737))

(assert (= (and b!2211736 (not c!353485)) b!2211738))

(assert (=> b!2211737 m!2653519))

(declare-fun m!2653573 () Bool)

(assert (=> b!2211738 m!2653573))

(declare-fun m!2653575 () Bool)

(assert (=> b!2211738 m!2653575))

(assert (=> b!2211738 m!2653573))

(assert (=> b!2211738 m!2653575))

(declare-fun m!2653577 () Bool)

(assert (=> b!2211738 m!2653577))

(assert (=> b!2211588 d!661133))

(declare-fun d!661135 () Bool)

(declare-fun c!353486 () Bool)

(assert (=> d!661135 (= c!353486 ((_ is Node!8459) (left!19891 (right!20221 t!4663))))))

(declare-fun e!1412496 () Bool)

(assert (=> d!661135 (= (inv!35019 (left!19891 (right!20221 t!4663))) e!1412496)))

(declare-fun b!2211739 () Bool)

(assert (=> b!2211739 (= e!1412496 (inv!35021 (left!19891 (right!20221 t!4663))))))

(declare-fun b!2211740 () Bool)

(declare-fun e!1412497 () Bool)

(assert (=> b!2211740 (= e!1412496 e!1412497)))

(declare-fun res!950561 () Bool)

(assert (=> b!2211740 (= res!950561 (not ((_ is Leaf!12388) (left!19891 (right!20221 t!4663)))))))

(assert (=> b!2211740 (=> res!950561 e!1412497)))

(declare-fun b!2211741 () Bool)

(assert (=> b!2211741 (= e!1412497 (inv!35022 (left!19891 (right!20221 t!4663))))))

(assert (= (and d!661135 c!353486) b!2211739))

(assert (= (and d!661135 (not c!353486)) b!2211740))

(assert (= (and b!2211740 (not res!950561)) b!2211741))

(declare-fun m!2653579 () Bool)

(assert (=> b!2211739 m!2653579))

(declare-fun m!2653581 () Bool)

(assert (=> b!2211741 m!2653581))

(assert (=> b!2211671 d!661135))

(declare-fun d!661137 () Bool)

(declare-fun c!353487 () Bool)

(assert (=> d!661137 (= c!353487 ((_ is Node!8459) (right!20221 (right!20221 t!4663))))))

(declare-fun e!1412498 () Bool)

(assert (=> d!661137 (= (inv!35019 (right!20221 (right!20221 t!4663))) e!1412498)))

(declare-fun b!2211742 () Bool)

(assert (=> b!2211742 (= e!1412498 (inv!35021 (right!20221 (right!20221 t!4663))))))

(declare-fun b!2211743 () Bool)

(declare-fun e!1412499 () Bool)

(assert (=> b!2211743 (= e!1412498 e!1412499)))

(declare-fun res!950562 () Bool)

(assert (=> b!2211743 (= res!950562 (not ((_ is Leaf!12388) (right!20221 (right!20221 t!4663)))))))

(assert (=> b!2211743 (=> res!950562 e!1412499)))

(declare-fun b!2211744 () Bool)

(assert (=> b!2211744 (= e!1412499 (inv!35022 (right!20221 (right!20221 t!4663))))))

(assert (= (and d!661137 c!353487) b!2211742))

(assert (= (and d!661137 (not c!353487)) b!2211743))

(assert (= (and b!2211743 (not res!950562)) b!2211744))

(declare-fun m!2653583 () Bool)

(assert (=> b!2211742 m!2653583))

(declare-fun m!2653585 () Bool)

(assert (=> b!2211744 m!2653585))

(assert (=> b!2211671 d!661137))

(declare-fun d!661139 () Bool)

(declare-fun lt!826478 () T!40578)

(declare-fun contains!4293 (List!25946 T!40578) Bool)

(assert (=> d!661139 (contains!4293 (list!10033 (xs!11401 t!4663)) lt!826478)))

(declare-fun e!1412507 () T!40578)

(assert (=> d!661139 (= lt!826478 e!1412507)))

(declare-fun c!353490 () Bool)

(assert (=> d!661139 (= c!353490 (= 0 0))))

(declare-fun e!1412506 () Bool)

(assert (=> d!661139 e!1412506))

(declare-fun res!950569 () Bool)

(assert (=> d!661139 (=> (not res!950569) (not e!1412506))))

(assert (=> d!661139 (= res!950569 (<= 0 0))))

(assert (=> d!661139 (= (apply!6408 (list!10033 (xs!11401 t!4663)) 0) lt!826478)))

(declare-fun b!2211755 () Bool)

(assert (=> b!2211755 (= e!1412506 (< 0 (size!20175 (list!10033 (xs!11401 t!4663)))))))

(declare-fun b!2211756 () Bool)

(assert (=> b!2211756 (= e!1412507 (head!4723 (list!10033 (xs!11401 t!4663))))))

(declare-fun b!2211757 () Bool)

(declare-fun tail!3210 (List!25946) List!25946)

(assert (=> b!2211757 (= e!1412507 (apply!6408 (tail!3210 (list!10033 (xs!11401 t!4663))) (- 0 1)))))

(assert (= (and d!661139 res!950569) b!2211755))

(assert (= (and d!661139 c!353490) b!2211756))

(assert (= (and d!661139 (not c!353490)) b!2211757))

(assert (=> d!661139 m!2653409))

(declare-fun m!2653587 () Bool)

(assert (=> d!661139 m!2653587))

(assert (=> b!2211755 m!2653409))

(declare-fun m!2653589 () Bool)

(assert (=> b!2211755 m!2653589))

(assert (=> b!2211756 m!2653409))

(declare-fun m!2653591 () Bool)

(assert (=> b!2211756 m!2653591))

(assert (=> b!2211757 m!2653409))

(declare-fun m!2653593 () Bool)

(assert (=> b!2211757 m!2653593))

(assert (=> b!2211757 m!2653593))

(declare-fun m!2653595 () Bool)

(assert (=> b!2211757 m!2653595))

(assert (=> d!661071 d!661139))

(assert (=> d!661071 d!661125))

(declare-fun d!661143 () Bool)

(declare-fun _$3!417 () T!40578)

(assert (=> d!661143 (= _$3!417 (apply!6408 (list!10033 (xs!11401 t!4663)) 0))))

(assert (=> d!661143 tp_is_empty!9783))

(assert (=> d!661143 (= (choose!13053 (xs!11401 t!4663) 0) _$3!417)))

(declare-fun bs!451440 () Bool)

(assert (= bs!451440 d!661143))

(assert (=> bs!451440 m!2653409))

(assert (=> bs!451440 m!2653409))

(assert (=> bs!451440 m!2653411))

(assert (=> d!661071 d!661143))

(declare-fun b!2211760 () Bool)

(declare-fun res!950574 () Bool)

(declare-fun e!1412510 () Bool)

(assert (=> b!2211760 (=> (not res!950574) (not e!1412510))))

(assert (=> b!2211760 (= res!950574 (isBalanced!2617 (left!19891 (left!19891 t!4663))))))

(declare-fun b!2211761 () Bool)

(declare-fun res!950572 () Bool)

(assert (=> b!2211761 (=> (not res!950572) (not e!1412510))))

(assert (=> b!2211761 (= res!950572 (isBalanced!2617 (right!20221 (left!19891 t!4663))))))

(declare-fun b!2211762 () Bool)

(declare-fun res!950577 () Bool)

(assert (=> b!2211762 (=> (not res!950577) (not e!1412510))))

(assert (=> b!2211762 (= res!950577 (not (isEmpty!14807 (left!19891 (left!19891 t!4663)))))))

(declare-fun b!2211763 () Bool)

(declare-fun res!950573 () Bool)

(assert (=> b!2211763 (=> (not res!950573) (not e!1412510))))

(assert (=> b!2211763 (= res!950573 (<= (- (height!1283 (left!19891 (left!19891 t!4663))) (height!1283 (right!20221 (left!19891 t!4663)))) 1))))

(declare-fun b!2211764 () Bool)

(assert (=> b!2211764 (= e!1412510 (not (isEmpty!14807 (right!20221 (left!19891 t!4663)))))))

(declare-fun b!2211765 () Bool)

(declare-fun e!1412509 () Bool)

(assert (=> b!2211765 (= e!1412509 e!1412510)))

(declare-fun res!950575 () Bool)

(assert (=> b!2211765 (=> (not res!950575) (not e!1412510))))

(assert (=> b!2211765 (= res!950575 (<= (- 1) (- (height!1283 (left!19891 (left!19891 t!4663))) (height!1283 (right!20221 (left!19891 t!4663))))))))

(declare-fun d!661147 () Bool)

(declare-fun res!950576 () Bool)

(assert (=> d!661147 (=> res!950576 e!1412509)))

(assert (=> d!661147 (= res!950576 (not ((_ is Node!8459) (left!19891 t!4663))))))

(assert (=> d!661147 (= (isBalanced!2617 (left!19891 t!4663)) e!1412509)))

(assert (= (and d!661147 (not res!950576)) b!2211765))

(assert (= (and b!2211765 res!950575) b!2211763))

(assert (= (and b!2211763 res!950573) b!2211760))

(assert (= (and b!2211760 res!950574) b!2211761))

(assert (= (and b!2211761 res!950572) b!2211762))

(assert (= (and b!2211762 res!950577) b!2211764))

(declare-fun m!2653599 () Bool)

(assert (=> b!2211760 m!2653599))

(assert (=> b!2211763 m!2653541))

(assert (=> b!2211763 m!2653543))

(declare-fun m!2653601 () Bool)

(assert (=> b!2211762 m!2653601))

(declare-fun m!2653603 () Bool)

(assert (=> b!2211761 m!2653603))

(assert (=> b!2211765 m!2653541))

(assert (=> b!2211765 m!2653543))

(declare-fun m!2653605 () Bool)

(assert (=> b!2211764 m!2653605))

(assert (=> b!2211625 d!661147))

(declare-fun b!2211766 () Bool)

(declare-fun res!950580 () Bool)

(declare-fun e!1412512 () Bool)

(assert (=> b!2211766 (=> (not res!950580) (not e!1412512))))

(assert (=> b!2211766 (= res!950580 (isBalanced!2617 (left!19891 (right!20221 t!4663))))))

(declare-fun b!2211767 () Bool)

(declare-fun res!950578 () Bool)

(assert (=> b!2211767 (=> (not res!950578) (not e!1412512))))

(assert (=> b!2211767 (= res!950578 (isBalanced!2617 (right!20221 (right!20221 t!4663))))))

(declare-fun b!2211768 () Bool)

(declare-fun res!950583 () Bool)

(assert (=> b!2211768 (=> (not res!950583) (not e!1412512))))

(assert (=> b!2211768 (= res!950583 (not (isEmpty!14807 (left!19891 (right!20221 t!4663)))))))

(declare-fun b!2211769 () Bool)

(declare-fun res!950579 () Bool)

(assert (=> b!2211769 (=> (not res!950579) (not e!1412512))))

(assert (=> b!2211769 (= res!950579 (<= (- (height!1283 (left!19891 (right!20221 t!4663))) (height!1283 (right!20221 (right!20221 t!4663)))) 1))))

(declare-fun b!2211770 () Bool)

(assert (=> b!2211770 (= e!1412512 (not (isEmpty!14807 (right!20221 (right!20221 t!4663)))))))

(declare-fun b!2211771 () Bool)

(declare-fun e!1412511 () Bool)

(assert (=> b!2211771 (= e!1412511 e!1412512)))

(declare-fun res!950581 () Bool)

(assert (=> b!2211771 (=> (not res!950581) (not e!1412512))))

(assert (=> b!2211771 (= res!950581 (<= (- 1) (- (height!1283 (left!19891 (right!20221 t!4663))) (height!1283 (right!20221 (right!20221 t!4663))))))))

(declare-fun d!661149 () Bool)

(declare-fun res!950582 () Bool)

(assert (=> d!661149 (=> res!950582 e!1412511)))

(assert (=> d!661149 (= res!950582 (not ((_ is Node!8459) (right!20221 t!4663))))))

(assert (=> d!661149 (= (isBalanced!2617 (right!20221 t!4663)) e!1412511)))

(assert (= (and d!661149 (not res!950582)) b!2211771))

(assert (= (and b!2211771 res!950581) b!2211769))

(assert (= (and b!2211769 res!950579) b!2211766))

(assert (= (and b!2211766 res!950580) b!2211767))

(assert (= (and b!2211767 res!950578) b!2211768))

(assert (= (and b!2211768 res!950583) b!2211770))

(declare-fun m!2653607 () Bool)

(assert (=> b!2211766 m!2653607))

(declare-fun m!2653609 () Bool)

(assert (=> b!2211769 m!2653609))

(declare-fun m!2653611 () Bool)

(assert (=> b!2211769 m!2653611))

(declare-fun m!2653613 () Bool)

(assert (=> b!2211768 m!2653613))

(declare-fun m!2653615 () Bool)

(assert (=> b!2211767 m!2653615))

(assert (=> b!2211771 m!2653609))

(assert (=> b!2211771 m!2653611))

(declare-fun m!2653617 () Bool)

(assert (=> b!2211770 m!2653617))

(assert (=> b!2211626 d!661149))

(declare-fun d!661151 () Bool)

(declare-fun lt!826479 () Bool)

(assert (=> d!661151 (= lt!826479 (isEmpty!14809 (list!10032 (left!19891 t!4663))))))

(assert (=> d!661151 (= lt!826479 (= (size!20178 (left!19891 t!4663)) 0))))

(assert (=> d!661151 (= (isEmpty!14807 (left!19891 t!4663)) lt!826479)))

(declare-fun bs!451441 () Bool)

(assert (= bs!451441 d!661151))

(assert (=> bs!451441 m!2653429))

(assert (=> bs!451441 m!2653429))

(declare-fun m!2653619 () Bool)

(assert (=> bs!451441 m!2653619))

(declare-fun m!2653621 () Bool)

(assert (=> bs!451441 m!2653621))

(assert (=> b!2211627 d!661151))

(declare-fun d!661153 () Bool)

(declare-fun res!950584 () Bool)

(declare-fun e!1412513 () Bool)

(assert (=> d!661153 (=> (not res!950584) (not e!1412513))))

(assert (=> d!661153 (= res!950584 (= (csize!17148 t!4663) (+ (size!20178 (left!19891 t!4663)) (size!20178 (right!20221 t!4663)))))))

(assert (=> d!661153 (= (inv!35021 t!4663) e!1412513)))

(declare-fun b!2211772 () Bool)

(declare-fun res!950585 () Bool)

(assert (=> b!2211772 (=> (not res!950585) (not e!1412513))))

(assert (=> b!2211772 (= res!950585 (and (not (= (left!19891 t!4663) Empty!8459)) (not (= (right!20221 t!4663) Empty!8459))))))

(declare-fun b!2211773 () Bool)

(declare-fun res!950586 () Bool)

(assert (=> b!2211773 (=> (not res!950586) (not e!1412513))))

(assert (=> b!2211773 (= res!950586 (= (cheight!8670 t!4663) (+ (max!0 (height!1283 (left!19891 t!4663)) (height!1283 (right!20221 t!4663))) 1)))))

(declare-fun b!2211774 () Bool)

(assert (=> b!2211774 (= e!1412513 (<= 0 (cheight!8670 t!4663)))))

(assert (= (and d!661153 res!950584) b!2211772))

(assert (= (and b!2211772 res!950585) b!2211773))

(assert (= (and b!2211773 res!950586) b!2211774))

(assert (=> d!661153 m!2653621))

(declare-fun m!2653623 () Bool)

(assert (=> d!661153 m!2653623))

(assert (=> b!2211773 m!2653463))

(assert (=> b!2211773 m!2653465))

(assert (=> b!2211773 m!2653463))

(assert (=> b!2211773 m!2653465))

(declare-fun m!2653625 () Bool)

(assert (=> b!2211773 m!2653625))

(assert (=> b!2211631 d!661153))

(declare-fun d!661155 () Bool)

(assert (=> d!661155 (= (height!1283 (left!19891 t!4663)) (ite ((_ is Empty!8459) (left!19891 t!4663)) 0 (ite ((_ is Leaf!12388) (left!19891 t!4663)) 1 (cheight!8670 (left!19891 t!4663)))))))

(assert (=> b!2211628 d!661155))

(declare-fun d!661157 () Bool)

(assert (=> d!661157 (= (height!1283 (right!20221 t!4663)) (ite ((_ is Empty!8459) (right!20221 t!4663)) 0 (ite ((_ is Leaf!12388) (right!20221 t!4663)) 1 (cheight!8670 (right!20221 t!4663)))))))

(assert (=> b!2211628 d!661157))

(declare-fun d!661159 () Bool)

(declare-fun lt!826484 () Int)

(assert (=> d!661159 (= lt!826484 (size!20175 (list!10033 (xs!11401 t!4663))))))

(declare-fun choose!13055 (IArray!16923) Int)

(assert (=> d!661159 (= lt!826484 (choose!13055 (xs!11401 t!4663)))))

(assert (=> d!661159 (= (size!20174 (xs!11401 t!4663)) lt!826484)))

(declare-fun bs!451442 () Bool)

(assert (= bs!451442 d!661159))

(assert (=> bs!451442 m!2653409))

(assert (=> bs!451442 m!2653409))

(assert (=> bs!451442 m!2653589))

(declare-fun m!2653627 () Bool)

(assert (=> bs!451442 m!2653627))

(assert (=> b!2211558 d!661159))

(declare-fun d!661161 () Bool)

(declare-fun lt!826485 () Bool)

(assert (=> d!661161 (= lt!826485 (isEmpty!14809 (list!10032 (right!20221 t!4663))))))

(assert (=> d!661161 (= lt!826485 (= (size!20178 (right!20221 t!4663)) 0))))

(assert (=> d!661161 (= (isEmpty!14807 (right!20221 t!4663)) lt!826485)))

(declare-fun bs!451443 () Bool)

(assert (= bs!451443 d!661161))

(assert (=> bs!451443 m!2653431))

(assert (=> bs!451443 m!2653431))

(declare-fun m!2653629 () Bool)

(assert (=> bs!451443 m!2653629))

(assert (=> bs!451443 m!2653623))

(assert (=> b!2211629 d!661161))

(declare-fun d!661163 () Bool)

(declare-fun res!950591 () Bool)

(declare-fun e!1412518 () Bool)

(assert (=> d!661163 (=> (not res!950591) (not e!1412518))))

(assert (=> d!661163 (= res!950591 (<= (size!20175 (list!10033 (xs!11401 t!4663))) 512))))

(assert (=> d!661163 (= (inv!35022 t!4663) e!1412518)))

(declare-fun b!2211783 () Bool)

(declare-fun res!950592 () Bool)

(assert (=> b!2211783 (=> (not res!950592) (not e!1412518))))

(assert (=> b!2211783 (= res!950592 (= (csize!17149 t!4663) (size!20175 (list!10033 (xs!11401 t!4663)))))))

(declare-fun b!2211784 () Bool)

(assert (=> b!2211784 (= e!1412518 (and (> (csize!17149 t!4663) 0) (<= (csize!17149 t!4663) 512)))))

(assert (= (and d!661163 res!950591) b!2211783))

(assert (= (and b!2211783 res!950592) b!2211784))

(assert (=> d!661163 m!2653409))

(assert (=> d!661163 m!2653409))

(assert (=> d!661163 m!2653589))

(assert (=> b!2211783 m!2653409))

(assert (=> b!2211783 m!2653409))

(assert (=> b!2211783 m!2653589))

(assert (=> b!2211633 d!661163))

(assert (=> b!2211630 d!661155))

(assert (=> b!2211630 d!661157))

(declare-fun d!661165 () Bool)

(declare-fun res!950595 () Bool)

(declare-fun e!1412521 () Bool)

(assert (=> d!661165 (=> (not res!950595) (not e!1412521))))

(assert (=> d!661165 (= res!950595 (= (csize!17148 (right!20221 t!4663)) (+ (size!20178 (left!19891 (right!20221 t!4663))) (size!20178 (right!20221 (right!20221 t!4663))))))))

(assert (=> d!661165 (= (inv!35021 (right!20221 t!4663)) e!1412521)))

(declare-fun b!2211789 () Bool)

(declare-fun res!950596 () Bool)

(assert (=> b!2211789 (=> (not res!950596) (not e!1412521))))

(assert (=> b!2211789 (= res!950596 (and (not (= (left!19891 (right!20221 t!4663)) Empty!8459)) (not (= (right!20221 (right!20221 t!4663)) Empty!8459))))))

(declare-fun b!2211790 () Bool)

(declare-fun res!950597 () Bool)

(assert (=> b!2211790 (=> (not res!950597) (not e!1412521))))

(assert (=> b!2211790 (= res!950597 (= (cheight!8670 (right!20221 t!4663)) (+ (max!0 (height!1283 (left!19891 (right!20221 t!4663))) (height!1283 (right!20221 (right!20221 t!4663)))) 1)))))

(declare-fun b!2211791 () Bool)

(assert (=> b!2211791 (= e!1412521 (<= 0 (cheight!8670 (right!20221 t!4663))))))

(assert (= (and d!661165 res!950595) b!2211789))

(assert (= (and b!2211789 res!950596) b!2211790))

(assert (= (and b!2211790 res!950597) b!2211791))

(declare-fun m!2653631 () Bool)

(assert (=> d!661165 m!2653631))

(declare-fun m!2653633 () Bool)

(assert (=> d!661165 m!2653633))

(assert (=> b!2211790 m!2653609))

(assert (=> b!2211790 m!2653611))

(assert (=> b!2211790 m!2653609))

(assert (=> b!2211790 m!2653611))

(declare-fun m!2653639 () Bool)

(assert (=> b!2211790 m!2653639))

(assert (=> b!2211607 d!661165))

(declare-fun b!2211792 () Bool)

(declare-fun e!1412522 () Bool)

(declare-fun tp!687355 () Bool)

(assert (=> b!2211792 (= e!1412522 (and tp_is_empty!9783 tp!687355))))

(assert (=> b!2211681 (= tp!687348 e!1412522)))

(assert (= (and b!2211681 ((_ is Cons!25862) (t!198670 (innerList!8519 (xs!11401 t!4663))))) b!2211792))

(declare-fun tp!687356 () Bool)

(declare-fun b!2211793 () Bool)

(declare-fun e!1412525 () Bool)

(declare-fun tp!687357 () Bool)

(assert (=> b!2211793 (= e!1412525 (and (inv!35019 (left!19891 (left!19891 (right!20221 t!4663)))) tp!687356 (inv!35019 (right!20221 (left!19891 (right!20221 t!4663)))) tp!687357))))

(declare-fun b!2211796 () Bool)

(declare-fun e!1412524 () Bool)

(declare-fun tp!687358 () Bool)

(assert (=> b!2211796 (= e!1412524 tp!687358)))

(declare-fun b!2211794 () Bool)

(assert (=> b!2211794 (= e!1412525 (and (inv!35020 (xs!11401 (left!19891 (right!20221 t!4663)))) e!1412524))))

(assert (=> b!2211671 (= tp!687340 (and (inv!35019 (left!19891 (right!20221 t!4663))) e!1412525))))

(assert (= (and b!2211671 ((_ is Node!8459) (left!19891 (right!20221 t!4663)))) b!2211793))

(assert (= b!2211794 b!2211796))

(assert (= (and b!2211671 ((_ is Leaf!12388) (left!19891 (right!20221 t!4663)))) b!2211794))

(declare-fun m!2653651 () Bool)

(assert (=> b!2211793 m!2653651))

(declare-fun m!2653653 () Bool)

(assert (=> b!2211793 m!2653653))

(declare-fun m!2653655 () Bool)

(assert (=> b!2211794 m!2653655))

(assert (=> b!2211671 m!2653501))

(declare-fun e!1412528 () Bool)

(declare-fun tp!687359 () Bool)

(declare-fun tp!687360 () Bool)

(declare-fun b!2211800 () Bool)

(assert (=> b!2211800 (= e!1412528 (and (inv!35019 (left!19891 (right!20221 (right!20221 t!4663)))) tp!687359 (inv!35019 (right!20221 (right!20221 (right!20221 t!4663)))) tp!687360))))

(declare-fun b!2211802 () Bool)

(declare-fun e!1412527 () Bool)

(declare-fun tp!687361 () Bool)

(assert (=> b!2211802 (= e!1412527 tp!687361)))

(declare-fun b!2211801 () Bool)

(assert (=> b!2211801 (= e!1412528 (and (inv!35020 (xs!11401 (right!20221 (right!20221 t!4663)))) e!1412527))))

(assert (=> b!2211671 (= tp!687341 (and (inv!35019 (right!20221 (right!20221 t!4663))) e!1412528))))

(assert (= (and b!2211671 ((_ is Node!8459) (right!20221 (right!20221 t!4663)))) b!2211800))

(assert (= b!2211801 b!2211802))

(assert (= (and b!2211671 ((_ is Leaf!12388) (right!20221 (right!20221 t!4663)))) b!2211801))

(declare-fun m!2653665 () Bool)

(assert (=> b!2211800 m!2653665))

(declare-fun m!2653667 () Bool)

(assert (=> b!2211800 m!2653667))

(declare-fun m!2653669 () Bool)

(assert (=> b!2211801 m!2653669))

(assert (=> b!2211671 m!2653503))

(declare-fun b!2211807 () Bool)

(declare-fun e!1412531 () Bool)

(declare-fun tp!687362 () Bool)

(assert (=> b!2211807 (= e!1412531 (and tp_is_empty!9783 tp!687362))))

(assert (=> b!2211670 (= tp!687339 e!1412531)))

(assert (= (and b!2211670 ((_ is Cons!25862) (innerList!8519 (xs!11401 (left!19891 t!4663))))) b!2211807))

(declare-fun e!1412533 () Bool)

(declare-fun tp!687363 () Bool)

(declare-fun b!2211808 () Bool)

(declare-fun tp!687364 () Bool)

(assert (=> b!2211808 (= e!1412533 (and (inv!35019 (left!19891 (left!19891 (left!19891 t!4663)))) tp!687363 (inv!35019 (right!20221 (left!19891 (left!19891 t!4663)))) tp!687364))))

(declare-fun b!2211810 () Bool)

(declare-fun e!1412532 () Bool)

(declare-fun tp!687365 () Bool)

(assert (=> b!2211810 (= e!1412532 tp!687365)))

(declare-fun b!2211809 () Bool)

(assert (=> b!2211809 (= e!1412533 (and (inv!35020 (xs!11401 (left!19891 (left!19891 t!4663)))) e!1412532))))

(assert (=> b!2211668 (= tp!687337 (and (inv!35019 (left!19891 (left!19891 t!4663))) e!1412533))))

(assert (= (and b!2211668 ((_ is Node!8459) (left!19891 (left!19891 t!4663)))) b!2211808))

(assert (= b!2211809 b!2211810))

(assert (= (and b!2211668 ((_ is Leaf!12388) (left!19891 (left!19891 t!4663)))) b!2211809))

(declare-fun m!2653677 () Bool)

(assert (=> b!2211808 m!2653677))

(declare-fun m!2653681 () Bool)

(assert (=> b!2211808 m!2653681))

(declare-fun m!2653683 () Bool)

(assert (=> b!2211809 m!2653683))

(assert (=> b!2211668 m!2653495))

(declare-fun tp!687367 () Bool)

(declare-fun e!1412535 () Bool)

(declare-fun b!2211811 () Bool)

(declare-fun tp!687366 () Bool)

(assert (=> b!2211811 (= e!1412535 (and (inv!35019 (left!19891 (right!20221 (left!19891 t!4663)))) tp!687366 (inv!35019 (right!20221 (right!20221 (left!19891 t!4663)))) tp!687367))))

(declare-fun b!2211813 () Bool)

(declare-fun e!1412534 () Bool)

(declare-fun tp!687368 () Bool)

(assert (=> b!2211813 (= e!1412534 tp!687368)))

(declare-fun b!2211812 () Bool)

(assert (=> b!2211812 (= e!1412535 (and (inv!35020 (xs!11401 (right!20221 (left!19891 t!4663)))) e!1412534))))

(assert (=> b!2211668 (= tp!687338 (and (inv!35019 (right!20221 (left!19891 t!4663))) e!1412535))))

(assert (= (and b!2211668 ((_ is Node!8459) (right!20221 (left!19891 t!4663)))) b!2211811))

(assert (= b!2211812 b!2211813))

(assert (= (and b!2211668 ((_ is Leaf!12388) (right!20221 (left!19891 t!4663)))) b!2211812))

(declare-fun m!2653685 () Bool)

(assert (=> b!2211811 m!2653685))

(declare-fun m!2653687 () Bool)

(assert (=> b!2211811 m!2653687))

(declare-fun m!2653689 () Bool)

(assert (=> b!2211812 m!2653689))

(assert (=> b!2211668 m!2653497))

(declare-fun b!2211814 () Bool)

(declare-fun e!1412536 () Bool)

(declare-fun tp!687369 () Bool)

(assert (=> b!2211814 (= e!1412536 (and tp_is_empty!9783 tp!687369))))

(assert (=> b!2211673 (= tp!687342 e!1412536)))

(assert (= (and b!2211673 ((_ is Cons!25862) (innerList!8519 (xs!11401 (right!20221 t!4663))))) b!2211814))

(check-sat (not b!2211756) (not b!2211761) (not b!2211796) (not b!2211698) (not b!2211701) (not d!661129) (not b!2211715) (not b!2211792) (not b!2211790) (not d!661159) (not d!661165) (not b!2211738) (not b!2211737) (not b!2211807) (not b!2211760) (not b!2211794) (not b!2211783) (not b!2211729) (not b!2211668) (not b!2211765) (not b!2211814) (not b!2211810) (not b!2211770) (not d!661143) (not b!2211734) (not b!2211707) (not d!661161) (not b!2211812) (not b!2211764) (not b!2211773) (not b!2211769) (not b!2211793) (not b!2211733) (not b!2211802) (not d!661127) (not d!661151) (not b!2211742) (not d!661121) (not b!2211808) (not b!2211811) (not b!2211694) (not b!2211762) (not b!2211671) (not b!2211739) (not b!2211757) (not d!661113) (not d!661123) (not b!2211755) tp_is_empty!9783 (not b!2211766) (not b!2211809) (not b!2211771) (not b!2211728) (not d!661139) (not b!2211768) (not b!2211741) (not b!2211813) (not b!2211699) (not b!2211763) (not d!661163) (not b!2211767) (not b!2211696) (not d!661153) (not d!661107) (not b!2211717) (not b!2211800) (not b!2211801) (not d!661111) (not b!2211744))
(check-sat)
