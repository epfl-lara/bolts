; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187260 () Bool)

(assert start!187260)

(declare-fun b!1870494 () Bool)

(declare-fun e!1193393 () Bool)

(declare-datatypes ((T!33270 0))(
  ( (T!33271 (val!5964 Int)) )
))
(declare-datatypes ((List!20781 0))(
  ( (Nil!20699) (Cons!20699 (h!26100 T!33270) (t!172988 List!20781)) )
))
(declare-datatypes ((IArray!13793 0))(
  ( (IArray!13794 (innerList!6954 List!20781)) )
))
(declare-datatypes ((Conc!6894 0))(
  ( (Node!6894 (left!16694 Conc!6894) (right!17024 Conc!6894) (csize!14018 Int) (cheight!7105 Int)) (Leaf!10109 (xs!9778 IArray!13793) (csize!14019 Int)) (Empty!6894) )
))
(declare-fun t!4595 () Conc!6894)

(declare-fun isEmpty!12939 (Conc!6894) Bool)

(assert (=> b!1870494 (= e!1193393 (not (isEmpty!12939 (left!16694 t!4595))))))

(declare-fun b!1870495 () Bool)

(declare-fun e!1193388 () Bool)

(declare-fun tp!532150 () Bool)

(assert (=> b!1870495 (= e!1193388 tp!532150)))

(declare-fun e!1193390 () Bool)

(declare-fun b!1870496 () Bool)

(declare-fun tp!532155 () Bool)

(declare-fun tp!532154 () Bool)

(declare-fun inv!27473 (Conc!6894) Bool)

(assert (=> b!1870496 (= e!1193390 (and (inv!27473 (left!16694 t!4595)) tp!532154 (inv!27473 (right!17024 t!4595)) tp!532155))))

(declare-fun b!1870497 () Bool)

(declare-fun e!1193387 () Bool)

(declare-fun tp!532153 () Bool)

(assert (=> b!1870497 (= e!1193387 tp!532153)))

(declare-fun b!1870498 () Bool)

(declare-fun res!837377 () Bool)

(declare-fun e!1193392 () Bool)

(assert (=> b!1870498 (=> (not res!837377) (not e!1193392))))

(assert (=> b!1870498 (= res!837377 e!1193393)))

(declare-fun res!837379 () Bool)

(assert (=> b!1870498 (=> res!837379 e!1193393)))

(get-info :version)

(assert (=> b!1870498 (= res!837379 (not ((_ is Node!6894) t!4595)))))

(declare-fun b!1870499 () Bool)

(declare-fun res!837382 () Bool)

(assert (=> b!1870499 (=> (not res!837382) (not e!1193392))))

(assert (=> b!1870499 (= res!837382 (not ((_ is Leaf!10109) t!4595)))))

(declare-fun b!1870500 () Bool)

(declare-fun e!1193389 () Bool)

(declare-fun lt!719243 () Conc!6894)

(declare-fun list!8494 (Conc!6894) List!20781)

(declare-fun tail!2845 (List!20781) List!20781)

(assert (=> b!1870500 (= e!1193389 (not (= (list!8494 lt!719243) (tail!2845 (list!8494 t!4595)))))))

(declare-fun b!1870501 () Bool)

(declare-fun res!837380 () Bool)

(assert (=> b!1870501 (=> (not res!837380) (not e!1193392))))

(assert (=> b!1870501 (= res!837380 (not (isEmpty!12939 t!4595)))))

(declare-fun tp!532152 () Bool)

(declare-fun err!3137 () Conc!6894)

(declare-fun b!1870502 () Bool)

(declare-fun e!1193391 () Bool)

(declare-fun tp!532151 () Bool)

(assert (=> b!1870502 (= e!1193391 (and (inv!27473 (left!16694 err!3137)) tp!532151 (inv!27473 (right!17024 err!3137)) tp!532152))))

(declare-fun res!837378 () Bool)

(assert (=> start!187260 (=> (not res!837378) (not e!1193392))))

(declare-fun isBalanced!2195 (Conc!6894) Bool)

(assert (=> start!187260 (= res!837378 (isBalanced!2195 t!4595))))

(assert (=> start!187260 e!1193392))

(assert (=> start!187260 (and (inv!27473 t!4595) e!1193390)))

(declare-fun b!1870503 () Bool)

(declare-fun res!837383 () Bool)

(assert (=> b!1870503 (=> (not res!837383) (not e!1193392))))

(assert (=> b!1870503 (= res!837383 (not ((_ is Node!6894) t!4595)))))

(declare-fun b!1870504 () Bool)

(declare-fun inv!27474 (IArray!13793) Bool)

(assert (=> b!1870504 (= e!1193390 (and (inv!27474 (xs!9778 t!4595)) e!1193387))))

(declare-fun b!1870505 () Bool)

(assert (=> b!1870505 (= e!1193391 (and (inv!27474 (xs!9778 err!3137)) e!1193388))))

(declare-fun b!1870506 () Bool)

(assert (=> b!1870506 (= e!1193392 e!1193389)))

(declare-fun res!837381 () Bool)

(assert (=> b!1870506 (=> res!837381 e!1193389)))

(assert (=> b!1870506 (= res!837381 (not (isBalanced!2195 lt!719243)))))

(assert (=> b!1870506 (= lt!719243 err!3137)))

(assert (=> b!1870506 true))

(assert (=> b!1870506 (and (inv!27473 err!3137) e!1193391)))

(assert (= (and start!187260 res!837378) b!1870501))

(assert (= (and b!1870501 res!837380) b!1870499))

(assert (= (and b!1870499 res!837382) b!1870498))

(assert (= (and b!1870498 (not res!837379)) b!1870494))

(assert (= (and b!1870498 res!837377) b!1870503))

(assert (= (and b!1870503 res!837383) b!1870506))

(assert (= (and b!1870506 ((_ is Node!6894) err!3137)) b!1870502))

(assert (= b!1870505 b!1870495))

(assert (= (and b!1870506 ((_ is Leaf!10109) err!3137)) b!1870505))

(assert (= (and b!1870506 (not res!837381)) b!1870500))

(assert (= (and start!187260 ((_ is Node!6894) t!4595)) b!1870496))

(assert (= b!1870504 b!1870497))

(assert (= (and start!187260 ((_ is Leaf!10109) t!4595)) b!1870504))

(declare-fun m!2296369 () Bool)

(assert (=> b!1870506 m!2296369))

(declare-fun m!2296371 () Bool)

(assert (=> b!1870506 m!2296371))

(declare-fun m!2296373 () Bool)

(assert (=> start!187260 m!2296373))

(declare-fun m!2296375 () Bool)

(assert (=> start!187260 m!2296375))

(declare-fun m!2296377 () Bool)

(assert (=> b!1870496 m!2296377))

(declare-fun m!2296379 () Bool)

(assert (=> b!1870496 m!2296379))

(declare-fun m!2296381 () Bool)

(assert (=> b!1870504 m!2296381))

(declare-fun m!2296383 () Bool)

(assert (=> b!1870494 m!2296383))

(declare-fun m!2296385 () Bool)

(assert (=> b!1870502 m!2296385))

(declare-fun m!2296387 () Bool)

(assert (=> b!1870502 m!2296387))

(declare-fun m!2296389 () Bool)

(assert (=> b!1870501 m!2296389))

(declare-fun m!2296391 () Bool)

(assert (=> b!1870505 m!2296391))

(declare-fun m!2296393 () Bool)

(assert (=> b!1870500 m!2296393))

(declare-fun m!2296395 () Bool)

(assert (=> b!1870500 m!2296395))

(assert (=> b!1870500 m!2296395))

(declare-fun m!2296397 () Bool)

(assert (=> b!1870500 m!2296397))

(check-sat (not b!1870502) (not start!187260) (not b!1870500) (not b!1870505) (not b!1870501) (not b!1870494) (not b!1870504) (not b!1870506) (not b!1870496) (not b!1870495) (not b!1870497))
(check-sat)
(get-model)

(declare-fun d!571783 () Bool)

(declare-fun size!16429 (List!20781) Int)

(assert (=> d!571783 (= (inv!27474 (xs!9778 t!4595)) (<= (size!16429 (innerList!6954 (xs!9778 t!4595))) 2147483647))))

(declare-fun bs!411954 () Bool)

(assert (= bs!411954 d!571783))

(declare-fun m!2296399 () Bool)

(assert (=> bs!411954 m!2296399))

(assert (=> b!1870504 d!571783))

(declare-fun d!571787 () Bool)

(assert (=> d!571787 (= (inv!27474 (xs!9778 err!3137)) (<= (size!16429 (innerList!6954 (xs!9778 err!3137))) 2147483647))))

(declare-fun bs!411955 () Bool)

(assert (= bs!411955 d!571787))

(declare-fun m!2296401 () Bool)

(assert (=> bs!411955 m!2296401))

(assert (=> b!1870505 d!571787))

(declare-fun d!571789 () Bool)

(declare-fun c!304808 () Bool)

(assert (=> d!571789 (= c!304808 ((_ is Empty!6894) lt!719243))))

(declare-fun e!1193398 () List!20781)

(assert (=> d!571789 (= (list!8494 lt!719243) e!1193398)))

(declare-fun b!1870517 () Bool)

(declare-fun e!1193399 () List!20781)

(declare-fun list!8495 (IArray!13793) List!20781)

(assert (=> b!1870517 (= e!1193399 (list!8495 (xs!9778 lt!719243)))))

(declare-fun b!1870516 () Bool)

(assert (=> b!1870516 (= e!1193398 e!1193399)))

(declare-fun c!304809 () Bool)

(assert (=> b!1870516 (= c!304809 ((_ is Leaf!10109) lt!719243))))

(declare-fun b!1870518 () Bool)

(declare-fun ++!5623 (List!20781 List!20781) List!20781)

(assert (=> b!1870518 (= e!1193399 (++!5623 (list!8494 (left!16694 lt!719243)) (list!8494 (right!17024 lt!719243))))))

(declare-fun b!1870515 () Bool)

(assert (=> b!1870515 (= e!1193398 Nil!20699)))

(assert (= (and d!571789 c!304808) b!1870515))

(assert (= (and d!571789 (not c!304808)) b!1870516))

(assert (= (and b!1870516 c!304809) b!1870517))

(assert (= (and b!1870516 (not c!304809)) b!1870518))

(declare-fun m!2296417 () Bool)

(assert (=> b!1870517 m!2296417))

(declare-fun m!2296419 () Bool)

(assert (=> b!1870518 m!2296419))

(declare-fun m!2296421 () Bool)

(assert (=> b!1870518 m!2296421))

(assert (=> b!1870518 m!2296419))

(assert (=> b!1870518 m!2296421))

(declare-fun m!2296423 () Bool)

(assert (=> b!1870518 m!2296423))

(assert (=> b!1870500 d!571789))

(declare-fun d!571799 () Bool)

(assert (=> d!571799 (= (tail!2845 (list!8494 t!4595)) (t!172988 (list!8494 t!4595)))))

(assert (=> b!1870500 d!571799))

(declare-fun d!571801 () Bool)

(declare-fun c!304810 () Bool)

(assert (=> d!571801 (= c!304810 ((_ is Empty!6894) t!4595))))

(declare-fun e!1193400 () List!20781)

(assert (=> d!571801 (= (list!8494 t!4595) e!1193400)))

(declare-fun b!1870521 () Bool)

(declare-fun e!1193401 () List!20781)

(assert (=> b!1870521 (= e!1193401 (list!8495 (xs!9778 t!4595)))))

(declare-fun b!1870520 () Bool)

(assert (=> b!1870520 (= e!1193400 e!1193401)))

(declare-fun c!304811 () Bool)

(assert (=> b!1870520 (= c!304811 ((_ is Leaf!10109) t!4595))))

(declare-fun b!1870522 () Bool)

(assert (=> b!1870522 (= e!1193401 (++!5623 (list!8494 (left!16694 t!4595)) (list!8494 (right!17024 t!4595))))))

(declare-fun b!1870519 () Bool)

(assert (=> b!1870519 (= e!1193400 Nil!20699)))

(assert (= (and d!571801 c!304810) b!1870519))

(assert (= (and d!571801 (not c!304810)) b!1870520))

(assert (= (and b!1870520 c!304811) b!1870521))

(assert (= (and b!1870520 (not c!304811)) b!1870522))

(declare-fun m!2296425 () Bool)

(assert (=> b!1870521 m!2296425))

(declare-fun m!2296427 () Bool)

(assert (=> b!1870522 m!2296427))

(declare-fun m!2296429 () Bool)

(assert (=> b!1870522 m!2296429))

(assert (=> b!1870522 m!2296427))

(assert (=> b!1870522 m!2296429))

(declare-fun m!2296431 () Bool)

(assert (=> b!1870522 m!2296431))

(assert (=> b!1870500 d!571801))

(declare-fun d!571803 () Bool)

(declare-fun lt!719250 () Bool)

(declare-fun isEmpty!12941 (List!20781) Bool)

(assert (=> d!571803 (= lt!719250 (isEmpty!12941 (list!8494 (left!16694 t!4595))))))

(declare-fun size!16432 (Conc!6894) Int)

(assert (=> d!571803 (= lt!719250 (= (size!16432 (left!16694 t!4595)) 0))))

(assert (=> d!571803 (= (isEmpty!12939 (left!16694 t!4595)) lt!719250)))

(declare-fun bs!411960 () Bool)

(assert (= bs!411960 d!571803))

(assert (=> bs!411960 m!2296427))

(assert (=> bs!411960 m!2296427))

(declare-fun m!2296441 () Bool)

(assert (=> bs!411960 m!2296441))

(declare-fun m!2296443 () Bool)

(assert (=> bs!411960 m!2296443))

(assert (=> b!1870494 d!571803))

(declare-fun d!571809 () Bool)

(declare-fun lt!719251 () Bool)

(assert (=> d!571809 (= lt!719251 (isEmpty!12941 (list!8494 t!4595)))))

(assert (=> d!571809 (= lt!719251 (= (size!16432 t!4595) 0))))

(assert (=> d!571809 (= (isEmpty!12939 t!4595) lt!719251)))

(declare-fun bs!411961 () Bool)

(assert (= bs!411961 d!571809))

(assert (=> bs!411961 m!2296395))

(assert (=> bs!411961 m!2296395))

(declare-fun m!2296445 () Bool)

(assert (=> bs!411961 m!2296445))

(declare-fun m!2296447 () Bool)

(assert (=> bs!411961 m!2296447))

(assert (=> b!1870501 d!571809))

(declare-fun d!571811 () Bool)

(declare-fun c!304818 () Bool)

(assert (=> d!571811 (= c!304818 ((_ is Node!6894) (left!16694 t!4595)))))

(declare-fun e!1193418 () Bool)

(assert (=> d!571811 (= (inv!27473 (left!16694 t!4595)) e!1193418)))

(declare-fun b!1870553 () Bool)

(declare-fun inv!27476 (Conc!6894) Bool)

(assert (=> b!1870553 (= e!1193418 (inv!27476 (left!16694 t!4595)))))

(declare-fun b!1870554 () Bool)

(declare-fun e!1193419 () Bool)

(assert (=> b!1870554 (= e!1193418 e!1193419)))

(declare-fun res!837402 () Bool)

(assert (=> b!1870554 (= res!837402 (not ((_ is Leaf!10109) (left!16694 t!4595))))))

(assert (=> b!1870554 (=> res!837402 e!1193419)))

(declare-fun b!1870555 () Bool)

(declare-fun inv!27478 (Conc!6894) Bool)

(assert (=> b!1870555 (= e!1193419 (inv!27478 (left!16694 t!4595)))))

(assert (= (and d!571811 c!304818) b!1870553))

(assert (= (and d!571811 (not c!304818)) b!1870554))

(assert (= (and b!1870554 (not res!837402)) b!1870555))

(declare-fun m!2296449 () Bool)

(assert (=> b!1870553 m!2296449))

(declare-fun m!2296451 () Bool)

(assert (=> b!1870555 m!2296451))

(assert (=> b!1870496 d!571811))

(declare-fun d!571813 () Bool)

(declare-fun c!304819 () Bool)

(assert (=> d!571813 (= c!304819 ((_ is Node!6894) (right!17024 t!4595)))))

(declare-fun e!1193420 () Bool)

(assert (=> d!571813 (= (inv!27473 (right!17024 t!4595)) e!1193420)))

(declare-fun b!1870556 () Bool)

(assert (=> b!1870556 (= e!1193420 (inv!27476 (right!17024 t!4595)))))

(declare-fun b!1870557 () Bool)

(declare-fun e!1193421 () Bool)

(assert (=> b!1870557 (= e!1193420 e!1193421)))

(declare-fun res!837403 () Bool)

(assert (=> b!1870557 (= res!837403 (not ((_ is Leaf!10109) (right!17024 t!4595))))))

(assert (=> b!1870557 (=> res!837403 e!1193421)))

(declare-fun b!1870558 () Bool)

(assert (=> b!1870558 (= e!1193421 (inv!27478 (right!17024 t!4595)))))

(assert (= (and d!571813 c!304819) b!1870556))

(assert (= (and d!571813 (not c!304819)) b!1870557))

(assert (= (and b!1870557 (not res!837403)) b!1870558))

(declare-fun m!2296453 () Bool)

(assert (=> b!1870556 m!2296453))

(declare-fun m!2296455 () Bool)

(assert (=> b!1870558 m!2296455))

(assert (=> b!1870496 d!571813))

(declare-fun b!1870595 () Bool)

(declare-fun res!837432 () Bool)

(declare-fun e!1193439 () Bool)

(assert (=> b!1870595 (=> (not res!837432) (not e!1193439))))

(declare-fun height!1080 (Conc!6894) Int)

(assert (=> b!1870595 (= res!837432 (<= (- (height!1080 (left!16694 lt!719243)) (height!1080 (right!17024 lt!719243))) 1))))

(declare-fun b!1870596 () Bool)

(declare-fun e!1193438 () Bool)

(assert (=> b!1870596 (= e!1193438 e!1193439)))

(declare-fun res!837434 () Bool)

(assert (=> b!1870596 (=> (not res!837434) (not e!1193439))))

(assert (=> b!1870596 (= res!837434 (<= (- 1) (- (height!1080 (left!16694 lt!719243)) (height!1080 (right!17024 lt!719243)))))))

(declare-fun b!1870597 () Bool)

(declare-fun res!837433 () Bool)

(assert (=> b!1870597 (=> (not res!837433) (not e!1193439))))

(assert (=> b!1870597 (= res!837433 (isBalanced!2195 (left!16694 lt!719243)))))

(declare-fun d!571815 () Bool)

(declare-fun res!837435 () Bool)

(assert (=> d!571815 (=> res!837435 e!1193438)))

(assert (=> d!571815 (= res!837435 (not ((_ is Node!6894) lt!719243)))))

(assert (=> d!571815 (= (isBalanced!2195 lt!719243) e!1193438)))

(declare-fun b!1870598 () Bool)

(declare-fun res!837436 () Bool)

(assert (=> b!1870598 (=> (not res!837436) (not e!1193439))))

(assert (=> b!1870598 (= res!837436 (not (isEmpty!12939 (left!16694 lt!719243))))))

(declare-fun b!1870599 () Bool)

(assert (=> b!1870599 (= e!1193439 (not (isEmpty!12939 (right!17024 lt!719243))))))

(declare-fun b!1870600 () Bool)

(declare-fun res!837437 () Bool)

(assert (=> b!1870600 (=> (not res!837437) (not e!1193439))))

(assert (=> b!1870600 (= res!837437 (isBalanced!2195 (right!17024 lt!719243)))))

(assert (= (and d!571815 (not res!837435)) b!1870596))

(assert (= (and b!1870596 res!837434) b!1870595))

(assert (= (and b!1870595 res!837432) b!1870597))

(assert (= (and b!1870597 res!837433) b!1870600))

(assert (= (and b!1870600 res!837437) b!1870598))

(assert (= (and b!1870598 res!837436) b!1870599))

(declare-fun m!2296495 () Bool)

(assert (=> b!1870597 m!2296495))

(declare-fun m!2296497 () Bool)

(assert (=> b!1870596 m!2296497))

(declare-fun m!2296499 () Bool)

(assert (=> b!1870596 m!2296499))

(declare-fun m!2296501 () Bool)

(assert (=> b!1870599 m!2296501))

(assert (=> b!1870595 m!2296497))

(assert (=> b!1870595 m!2296499))

(declare-fun m!2296503 () Bool)

(assert (=> b!1870598 m!2296503))

(declare-fun m!2296505 () Bool)

(assert (=> b!1870600 m!2296505))

(assert (=> b!1870506 d!571815))

(declare-fun d!571829 () Bool)

(declare-fun c!304824 () Bool)

(assert (=> d!571829 (= c!304824 ((_ is Node!6894) err!3137))))

(declare-fun e!1193440 () Bool)

(assert (=> d!571829 (= (inv!27473 err!3137) e!1193440)))

(declare-fun b!1870601 () Bool)

(assert (=> b!1870601 (= e!1193440 (inv!27476 err!3137))))

(declare-fun b!1870602 () Bool)

(declare-fun e!1193441 () Bool)

(assert (=> b!1870602 (= e!1193440 e!1193441)))

(declare-fun res!837438 () Bool)

(assert (=> b!1870602 (= res!837438 (not ((_ is Leaf!10109) err!3137)))))

(assert (=> b!1870602 (=> res!837438 e!1193441)))

(declare-fun b!1870603 () Bool)

(assert (=> b!1870603 (= e!1193441 (inv!27478 err!3137))))

(assert (= (and d!571829 c!304824) b!1870601))

(assert (= (and d!571829 (not c!304824)) b!1870602))

(assert (= (and b!1870602 (not res!837438)) b!1870603))

(declare-fun m!2296507 () Bool)

(assert (=> b!1870601 m!2296507))

(declare-fun m!2296509 () Bool)

(assert (=> b!1870603 m!2296509))

(assert (=> b!1870506 d!571829))

(declare-fun b!1870604 () Bool)

(declare-fun res!837439 () Bool)

(declare-fun e!1193443 () Bool)

(assert (=> b!1870604 (=> (not res!837439) (not e!1193443))))

(assert (=> b!1870604 (= res!837439 (<= (- (height!1080 (left!16694 t!4595)) (height!1080 (right!17024 t!4595))) 1))))

(declare-fun b!1870605 () Bool)

(declare-fun e!1193442 () Bool)

(assert (=> b!1870605 (= e!1193442 e!1193443)))

(declare-fun res!837441 () Bool)

(assert (=> b!1870605 (=> (not res!837441) (not e!1193443))))

(assert (=> b!1870605 (= res!837441 (<= (- 1) (- (height!1080 (left!16694 t!4595)) (height!1080 (right!17024 t!4595)))))))

(declare-fun b!1870606 () Bool)

(declare-fun res!837440 () Bool)

(assert (=> b!1870606 (=> (not res!837440) (not e!1193443))))

(assert (=> b!1870606 (= res!837440 (isBalanced!2195 (left!16694 t!4595)))))

(declare-fun d!571831 () Bool)

(declare-fun res!837442 () Bool)

(assert (=> d!571831 (=> res!837442 e!1193442)))

(assert (=> d!571831 (= res!837442 (not ((_ is Node!6894) t!4595)))))

(assert (=> d!571831 (= (isBalanced!2195 t!4595) e!1193442)))

(declare-fun b!1870607 () Bool)

(declare-fun res!837443 () Bool)

(assert (=> b!1870607 (=> (not res!837443) (not e!1193443))))

(assert (=> b!1870607 (= res!837443 (not (isEmpty!12939 (left!16694 t!4595))))))

(declare-fun b!1870608 () Bool)

(assert (=> b!1870608 (= e!1193443 (not (isEmpty!12939 (right!17024 t!4595))))))

(declare-fun b!1870609 () Bool)

(declare-fun res!837444 () Bool)

(assert (=> b!1870609 (=> (not res!837444) (not e!1193443))))

(assert (=> b!1870609 (= res!837444 (isBalanced!2195 (right!17024 t!4595)))))

(assert (= (and d!571831 (not res!837442)) b!1870605))

(assert (= (and b!1870605 res!837441) b!1870604))

(assert (= (and b!1870604 res!837439) b!1870606))

(assert (= (and b!1870606 res!837440) b!1870609))

(assert (= (and b!1870609 res!837444) b!1870607))

(assert (= (and b!1870607 res!837443) b!1870608))

(declare-fun m!2296511 () Bool)

(assert (=> b!1870606 m!2296511))

(declare-fun m!2296513 () Bool)

(assert (=> b!1870605 m!2296513))

(declare-fun m!2296515 () Bool)

(assert (=> b!1870605 m!2296515))

(declare-fun m!2296517 () Bool)

(assert (=> b!1870608 m!2296517))

(assert (=> b!1870604 m!2296513))

(assert (=> b!1870604 m!2296515))

(assert (=> b!1870607 m!2296383))

(declare-fun m!2296519 () Bool)

(assert (=> b!1870609 m!2296519))

(assert (=> start!187260 d!571831))

(declare-fun d!571833 () Bool)

(declare-fun c!304825 () Bool)

(assert (=> d!571833 (= c!304825 ((_ is Node!6894) t!4595))))

(declare-fun e!1193444 () Bool)

(assert (=> d!571833 (= (inv!27473 t!4595) e!1193444)))

(declare-fun b!1870610 () Bool)

(assert (=> b!1870610 (= e!1193444 (inv!27476 t!4595))))

(declare-fun b!1870611 () Bool)

(declare-fun e!1193445 () Bool)

(assert (=> b!1870611 (= e!1193444 e!1193445)))

(declare-fun res!837445 () Bool)

(assert (=> b!1870611 (= res!837445 (not ((_ is Leaf!10109) t!4595)))))

(assert (=> b!1870611 (=> res!837445 e!1193445)))

(declare-fun b!1870612 () Bool)

(assert (=> b!1870612 (= e!1193445 (inv!27478 t!4595))))

(assert (= (and d!571833 c!304825) b!1870610))

(assert (= (and d!571833 (not c!304825)) b!1870611))

(assert (= (and b!1870611 (not res!837445)) b!1870612))

(declare-fun m!2296521 () Bool)

(assert (=> b!1870610 m!2296521))

(declare-fun m!2296523 () Bool)

(assert (=> b!1870612 m!2296523))

(assert (=> start!187260 d!571833))

(declare-fun d!571835 () Bool)

(declare-fun c!304826 () Bool)

(assert (=> d!571835 (= c!304826 ((_ is Node!6894) (left!16694 err!3137)))))

(declare-fun e!1193446 () Bool)

(assert (=> d!571835 (= (inv!27473 (left!16694 err!3137)) e!1193446)))

(declare-fun b!1870613 () Bool)

(assert (=> b!1870613 (= e!1193446 (inv!27476 (left!16694 err!3137)))))

(declare-fun b!1870614 () Bool)

(declare-fun e!1193447 () Bool)

(assert (=> b!1870614 (= e!1193446 e!1193447)))

(declare-fun res!837446 () Bool)

(assert (=> b!1870614 (= res!837446 (not ((_ is Leaf!10109) (left!16694 err!3137))))))

(assert (=> b!1870614 (=> res!837446 e!1193447)))

(declare-fun b!1870615 () Bool)

(assert (=> b!1870615 (= e!1193447 (inv!27478 (left!16694 err!3137)))))

(assert (= (and d!571835 c!304826) b!1870613))

(assert (= (and d!571835 (not c!304826)) b!1870614))

(assert (= (and b!1870614 (not res!837446)) b!1870615))

(declare-fun m!2296525 () Bool)

(assert (=> b!1870613 m!2296525))

(declare-fun m!2296527 () Bool)

(assert (=> b!1870615 m!2296527))

(assert (=> b!1870502 d!571835))

(declare-fun d!571837 () Bool)

(declare-fun c!304827 () Bool)

(assert (=> d!571837 (= c!304827 ((_ is Node!6894) (right!17024 err!3137)))))

(declare-fun e!1193448 () Bool)

(assert (=> d!571837 (= (inv!27473 (right!17024 err!3137)) e!1193448)))

(declare-fun b!1870616 () Bool)

(assert (=> b!1870616 (= e!1193448 (inv!27476 (right!17024 err!3137)))))

(declare-fun b!1870617 () Bool)

(declare-fun e!1193449 () Bool)

(assert (=> b!1870617 (= e!1193448 e!1193449)))

(declare-fun res!837447 () Bool)

(assert (=> b!1870617 (= res!837447 (not ((_ is Leaf!10109) (right!17024 err!3137))))))

(assert (=> b!1870617 (=> res!837447 e!1193449)))

(declare-fun b!1870618 () Bool)

(assert (=> b!1870618 (= e!1193449 (inv!27478 (right!17024 err!3137)))))

(assert (= (and d!571837 c!304827) b!1870616))

(assert (= (and d!571837 (not c!304827)) b!1870617))

(assert (= (and b!1870617 (not res!837447)) b!1870618))

(declare-fun m!2296529 () Bool)

(assert (=> b!1870616 m!2296529))

(declare-fun m!2296531 () Bool)

(assert (=> b!1870618 m!2296531))

(assert (=> b!1870502 d!571837))

(declare-fun tp!532163 () Bool)

(declare-fun e!1193459 () Bool)

(declare-fun tp!532164 () Bool)

(declare-fun b!1870635 () Bool)

(assert (=> b!1870635 (= e!1193459 (and (inv!27473 (left!16694 (left!16694 t!4595))) tp!532164 (inv!27473 (right!17024 (left!16694 t!4595))) tp!532163))))

(declare-fun b!1870637 () Bool)

(declare-fun e!1193458 () Bool)

(declare-fun tp!532162 () Bool)

(assert (=> b!1870637 (= e!1193458 tp!532162)))

(declare-fun b!1870636 () Bool)

(assert (=> b!1870636 (= e!1193459 (and (inv!27474 (xs!9778 (left!16694 t!4595))) e!1193458))))

(assert (=> b!1870496 (= tp!532154 (and (inv!27473 (left!16694 t!4595)) e!1193459))))

(assert (= (and b!1870496 ((_ is Node!6894) (left!16694 t!4595))) b!1870635))

(assert (= b!1870636 b!1870637))

(assert (= (and b!1870496 ((_ is Leaf!10109) (left!16694 t!4595))) b!1870636))

(declare-fun m!2296533 () Bool)

(assert (=> b!1870635 m!2296533))

(declare-fun m!2296535 () Bool)

(assert (=> b!1870635 m!2296535))

(declare-fun m!2296537 () Bool)

(assert (=> b!1870636 m!2296537))

(assert (=> b!1870496 m!2296377))

(declare-fun e!1193461 () Bool)

(declare-fun tp!532167 () Bool)

(declare-fun b!1870638 () Bool)

(declare-fun tp!532166 () Bool)

(assert (=> b!1870638 (= e!1193461 (and (inv!27473 (left!16694 (right!17024 t!4595))) tp!532167 (inv!27473 (right!17024 (right!17024 t!4595))) tp!532166))))

(declare-fun b!1870640 () Bool)

(declare-fun e!1193460 () Bool)

(declare-fun tp!532165 () Bool)

(assert (=> b!1870640 (= e!1193460 tp!532165)))

(declare-fun b!1870639 () Bool)

(assert (=> b!1870639 (= e!1193461 (and (inv!27474 (xs!9778 (right!17024 t!4595))) e!1193460))))

(assert (=> b!1870496 (= tp!532155 (and (inv!27473 (right!17024 t!4595)) e!1193461))))

(assert (= (and b!1870496 ((_ is Node!6894) (right!17024 t!4595))) b!1870638))

(assert (= b!1870639 b!1870640))

(assert (= (and b!1870496 ((_ is Leaf!10109) (right!17024 t!4595))) b!1870639))

(declare-fun m!2296539 () Bool)

(assert (=> b!1870638 m!2296539))

(declare-fun m!2296541 () Bool)

(assert (=> b!1870638 m!2296541))

(declare-fun m!2296543 () Bool)

(assert (=> b!1870639 m!2296543))

(assert (=> b!1870496 m!2296379))

(declare-fun b!1870649 () Bool)

(declare-fun e!1193466 () Bool)

(declare-fun tp_is_empty!8705 () Bool)

(declare-fun tp!532170 () Bool)

(assert (=> b!1870649 (= e!1193466 (and tp_is_empty!8705 tp!532170))))

(assert (=> b!1870495 (= tp!532150 e!1193466)))

(assert (= (and b!1870495 ((_ is Cons!20699) (innerList!6954 (xs!9778 err!3137)))) b!1870649))

(declare-fun b!1870650 () Bool)

(declare-fun e!1193467 () Bool)

(declare-fun tp!532171 () Bool)

(assert (=> b!1870650 (= e!1193467 (and tp_is_empty!8705 tp!532171))))

(assert (=> b!1870497 (= tp!532153 e!1193467)))

(assert (= (and b!1870497 ((_ is Cons!20699) (innerList!6954 (xs!9778 t!4595)))) b!1870650))

(declare-fun e!1193469 () Bool)

(declare-fun tp!532174 () Bool)

(declare-fun b!1870651 () Bool)

(declare-fun tp!532173 () Bool)

(assert (=> b!1870651 (= e!1193469 (and (inv!27473 (left!16694 (left!16694 err!3137))) tp!532174 (inv!27473 (right!17024 (left!16694 err!3137))) tp!532173))))

(declare-fun b!1870653 () Bool)

(declare-fun e!1193468 () Bool)

(declare-fun tp!532172 () Bool)

(assert (=> b!1870653 (= e!1193468 tp!532172)))

(declare-fun b!1870652 () Bool)

(assert (=> b!1870652 (= e!1193469 (and (inv!27474 (xs!9778 (left!16694 err!3137))) e!1193468))))

(assert (=> b!1870502 (= tp!532151 (and (inv!27473 (left!16694 err!3137)) e!1193469))))

(assert (= (and b!1870502 ((_ is Node!6894) (left!16694 err!3137))) b!1870651))

(assert (= b!1870652 b!1870653))

(assert (= (and b!1870502 ((_ is Leaf!10109) (left!16694 err!3137))) b!1870652))

(declare-fun m!2296551 () Bool)

(assert (=> b!1870651 m!2296551))

(declare-fun m!2296553 () Bool)

(assert (=> b!1870651 m!2296553))

(declare-fun m!2296557 () Bool)

(assert (=> b!1870652 m!2296557))

(assert (=> b!1870502 m!2296385))

(declare-fun e!1193471 () Bool)

(declare-fun tp!532177 () Bool)

(declare-fun b!1870654 () Bool)

(declare-fun tp!532176 () Bool)

(assert (=> b!1870654 (= e!1193471 (and (inv!27473 (left!16694 (right!17024 err!3137))) tp!532177 (inv!27473 (right!17024 (right!17024 err!3137))) tp!532176))))

(declare-fun b!1870656 () Bool)

(declare-fun e!1193470 () Bool)

(declare-fun tp!532175 () Bool)

(assert (=> b!1870656 (= e!1193470 tp!532175)))

(declare-fun b!1870655 () Bool)

(assert (=> b!1870655 (= e!1193471 (and (inv!27474 (xs!9778 (right!17024 err!3137))) e!1193470))))

(assert (=> b!1870502 (= tp!532152 (and (inv!27473 (right!17024 err!3137)) e!1193471))))

(assert (= (and b!1870502 ((_ is Node!6894) (right!17024 err!3137))) b!1870654))

(assert (= b!1870655 b!1870656))

(assert (= (and b!1870502 ((_ is Leaf!10109) (right!17024 err!3137))) b!1870655))

(declare-fun m!2296559 () Bool)

(assert (=> b!1870654 m!2296559))

(declare-fun m!2296561 () Bool)

(assert (=> b!1870654 m!2296561))

(declare-fun m!2296563 () Bool)

(assert (=> b!1870655 m!2296563))

(assert (=> b!1870502 m!2296387))

(check-sat (not b!1870610) (not b!1870558) (not b!1870598) (not b!1870636) (not b!1870517) (not d!571783) (not b!1870606) (not b!1870655) (not b!1870616) (not b!1870502) (not b!1870553) (not b!1870595) (not b!1870654) (not b!1870496) (not d!571787) (not b!1870555) (not b!1870640) (not b!1870609) (not b!1870521) (not b!1870522) (not b!1870618) (not b!1870656) (not b!1870607) (not b!1870518) (not b!1870603) (not b!1870605) (not b!1870615) (not b!1870635) (not b!1870597) (not b!1870650) (not b!1870613) (not d!571803) (not b!1870653) (not b!1870612) (not b!1870599) (not b!1870556) (not b!1870600) (not b!1870596) (not b!1870652) (not b!1870651) (not b!1870637) (not b!1870608) tp_is_empty!8705 (not d!571809) (not b!1870639) (not b!1870638) (not b!1870601) (not b!1870649) (not b!1870604))
(check-sat)
(get-model)

(declare-fun d!571843 () Bool)

(declare-fun res!837452 () Bool)

(declare-fun e!1193492 () Bool)

(assert (=> d!571843 (=> (not res!837452) (not e!1193492))))

(assert (=> d!571843 (= res!837452 (<= (size!16429 (list!8495 (xs!9778 (left!16694 err!3137)))) 512))))

(assert (=> d!571843 (= (inv!27478 (left!16694 err!3137)) e!1193492)))

(declare-fun b!1870691 () Bool)

(declare-fun res!837453 () Bool)

(assert (=> b!1870691 (=> (not res!837453) (not e!1193492))))

(assert (=> b!1870691 (= res!837453 (= (csize!14019 (left!16694 err!3137)) (size!16429 (list!8495 (xs!9778 (left!16694 err!3137))))))))

(declare-fun b!1870692 () Bool)

(assert (=> b!1870692 (= e!1193492 (and (> (csize!14019 (left!16694 err!3137)) 0) (<= (csize!14019 (left!16694 err!3137)) 512)))))

(assert (= (and d!571843 res!837452) b!1870691))

(assert (= (and b!1870691 res!837453) b!1870692))

(declare-fun m!2296595 () Bool)

(assert (=> d!571843 m!2296595))

(assert (=> d!571843 m!2296595))

(declare-fun m!2296597 () Bool)

(assert (=> d!571843 m!2296597))

(assert (=> b!1870691 m!2296595))

(assert (=> b!1870691 m!2296595))

(assert (=> b!1870691 m!2296597))

(assert (=> b!1870615 d!571843))

(declare-fun d!571845 () Bool)

(declare-fun c!304836 () Bool)

(assert (=> d!571845 (= c!304836 ((_ is Node!6894) (left!16694 (left!16694 t!4595))))))

(declare-fun e!1193493 () Bool)

(assert (=> d!571845 (= (inv!27473 (left!16694 (left!16694 t!4595))) e!1193493)))

(declare-fun b!1870693 () Bool)

(assert (=> b!1870693 (= e!1193493 (inv!27476 (left!16694 (left!16694 t!4595))))))

(declare-fun b!1870694 () Bool)

(declare-fun e!1193494 () Bool)

(assert (=> b!1870694 (= e!1193493 e!1193494)))

(declare-fun res!837454 () Bool)

(assert (=> b!1870694 (= res!837454 (not ((_ is Leaf!10109) (left!16694 (left!16694 t!4595)))))))

(assert (=> b!1870694 (=> res!837454 e!1193494)))

(declare-fun b!1870695 () Bool)

(assert (=> b!1870695 (= e!1193494 (inv!27478 (left!16694 (left!16694 t!4595))))))

(assert (= (and d!571845 c!304836) b!1870693))

(assert (= (and d!571845 (not c!304836)) b!1870694))

(assert (= (and b!1870694 (not res!837454)) b!1870695))

(declare-fun m!2296599 () Bool)

(assert (=> b!1870693 m!2296599))

(declare-fun m!2296601 () Bool)

(assert (=> b!1870695 m!2296601))

(assert (=> b!1870635 d!571845))

(declare-fun d!571847 () Bool)

(declare-fun c!304837 () Bool)

(assert (=> d!571847 (= c!304837 ((_ is Node!6894) (right!17024 (left!16694 t!4595))))))

(declare-fun e!1193495 () Bool)

(assert (=> d!571847 (= (inv!27473 (right!17024 (left!16694 t!4595))) e!1193495)))

(declare-fun b!1870696 () Bool)

(assert (=> b!1870696 (= e!1193495 (inv!27476 (right!17024 (left!16694 t!4595))))))

(declare-fun b!1870697 () Bool)

(declare-fun e!1193496 () Bool)

(assert (=> b!1870697 (= e!1193495 e!1193496)))

(declare-fun res!837455 () Bool)

(assert (=> b!1870697 (= res!837455 (not ((_ is Leaf!10109) (right!17024 (left!16694 t!4595)))))))

(assert (=> b!1870697 (=> res!837455 e!1193496)))

(declare-fun b!1870698 () Bool)

(assert (=> b!1870698 (= e!1193496 (inv!27478 (right!17024 (left!16694 t!4595))))))

(assert (= (and d!571847 c!304837) b!1870696))

(assert (= (and d!571847 (not c!304837)) b!1870697))

(assert (= (and b!1870697 (not res!837455)) b!1870698))

(declare-fun m!2296603 () Bool)

(assert (=> b!1870696 m!2296603))

(declare-fun m!2296605 () Bool)

(assert (=> b!1870698 m!2296605))

(assert (=> b!1870635 d!571847))

(declare-fun d!571849 () Bool)

(declare-fun lt!719254 () Int)

(assert (=> d!571849 (>= lt!719254 0)))

(declare-fun e!1193499 () Int)

(assert (=> d!571849 (= lt!719254 e!1193499)))

(declare-fun c!304840 () Bool)

(assert (=> d!571849 (= c!304840 ((_ is Nil!20699) (innerList!6954 (xs!9778 t!4595))))))

(assert (=> d!571849 (= (size!16429 (innerList!6954 (xs!9778 t!4595))) lt!719254)))

(declare-fun b!1870703 () Bool)

(assert (=> b!1870703 (= e!1193499 0)))

(declare-fun b!1870704 () Bool)

(assert (=> b!1870704 (= e!1193499 (+ 1 (size!16429 (t!172988 (innerList!6954 (xs!9778 t!4595))))))))

(assert (= (and d!571849 c!304840) b!1870703))

(assert (= (and d!571849 (not c!304840)) b!1870704))

(declare-fun m!2296607 () Bool)

(assert (=> b!1870704 m!2296607))

(assert (=> d!571783 d!571849))

(declare-fun d!571851 () Bool)

(assert (=> d!571851 (= (isEmpty!12941 (list!8494 (left!16694 t!4595))) ((_ is Nil!20699) (list!8494 (left!16694 t!4595))))))

(assert (=> d!571803 d!571851))

(declare-fun d!571853 () Bool)

(declare-fun c!304841 () Bool)

(assert (=> d!571853 (= c!304841 ((_ is Empty!6894) (left!16694 t!4595)))))

(declare-fun e!1193500 () List!20781)

(assert (=> d!571853 (= (list!8494 (left!16694 t!4595)) e!1193500)))

(declare-fun b!1870707 () Bool)

(declare-fun e!1193501 () List!20781)

(assert (=> b!1870707 (= e!1193501 (list!8495 (xs!9778 (left!16694 t!4595))))))

(declare-fun b!1870706 () Bool)

(assert (=> b!1870706 (= e!1193500 e!1193501)))

(declare-fun c!304842 () Bool)

(assert (=> b!1870706 (= c!304842 ((_ is Leaf!10109) (left!16694 t!4595)))))

(declare-fun b!1870708 () Bool)

(assert (=> b!1870708 (= e!1193501 (++!5623 (list!8494 (left!16694 (left!16694 t!4595))) (list!8494 (right!17024 (left!16694 t!4595)))))))

(declare-fun b!1870705 () Bool)

(assert (=> b!1870705 (= e!1193500 Nil!20699)))

(assert (= (and d!571853 c!304841) b!1870705))

(assert (= (and d!571853 (not c!304841)) b!1870706))

(assert (= (and b!1870706 c!304842) b!1870707))

(assert (= (and b!1870706 (not c!304842)) b!1870708))

(declare-fun m!2296609 () Bool)

(assert (=> b!1870707 m!2296609))

(declare-fun m!2296611 () Bool)

(assert (=> b!1870708 m!2296611))

(declare-fun m!2296613 () Bool)

(assert (=> b!1870708 m!2296613))

(assert (=> b!1870708 m!2296611))

(assert (=> b!1870708 m!2296613))

(declare-fun m!2296615 () Bool)

(assert (=> b!1870708 m!2296615))

(assert (=> d!571803 d!571853))

(declare-fun d!571855 () Bool)

(declare-fun lt!719257 () Int)

(assert (=> d!571855 (= lt!719257 (size!16429 (list!8494 (left!16694 t!4595))))))

(assert (=> d!571855 (= lt!719257 (ite ((_ is Empty!6894) (left!16694 t!4595)) 0 (ite ((_ is Leaf!10109) (left!16694 t!4595)) (csize!14019 (left!16694 t!4595)) (csize!14018 (left!16694 t!4595)))))))

(assert (=> d!571855 (= (size!16432 (left!16694 t!4595)) lt!719257)))

(declare-fun bs!411962 () Bool)

(assert (= bs!411962 d!571855))

(assert (=> bs!411962 m!2296427))

(assert (=> bs!411962 m!2296427))

(declare-fun m!2296617 () Bool)

(assert (=> bs!411962 m!2296617))

(assert (=> d!571803 d!571855))

(declare-fun d!571857 () Bool)

(assert (=> d!571857 (= (inv!27474 (xs!9778 (right!17024 err!3137))) (<= (size!16429 (innerList!6954 (xs!9778 (right!17024 err!3137)))) 2147483647))))

(declare-fun bs!411963 () Bool)

(assert (= bs!411963 d!571857))

(declare-fun m!2296619 () Bool)

(assert (=> bs!411963 m!2296619))

(assert (=> b!1870655 d!571857))

(declare-fun d!571859 () Bool)

(declare-fun res!837462 () Bool)

(declare-fun e!1193504 () Bool)

(assert (=> d!571859 (=> (not res!837462) (not e!1193504))))

(assert (=> d!571859 (= res!837462 (= (csize!14018 (left!16694 err!3137)) (+ (size!16432 (left!16694 (left!16694 err!3137))) (size!16432 (right!17024 (left!16694 err!3137))))))))

(assert (=> d!571859 (= (inv!27476 (left!16694 err!3137)) e!1193504)))

(declare-fun b!1870715 () Bool)

(declare-fun res!837463 () Bool)

(assert (=> b!1870715 (=> (not res!837463) (not e!1193504))))

(assert (=> b!1870715 (= res!837463 (and (not (= (left!16694 (left!16694 err!3137)) Empty!6894)) (not (= (right!17024 (left!16694 err!3137)) Empty!6894))))))

(declare-fun b!1870716 () Bool)

(declare-fun res!837464 () Bool)

(assert (=> b!1870716 (=> (not res!837464) (not e!1193504))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1870716 (= res!837464 (= (cheight!7105 (left!16694 err!3137)) (+ (max!0 (height!1080 (left!16694 (left!16694 err!3137))) (height!1080 (right!17024 (left!16694 err!3137)))) 1)))))

(declare-fun b!1870717 () Bool)

(assert (=> b!1870717 (= e!1193504 (<= 0 (cheight!7105 (left!16694 err!3137))))))

(assert (= (and d!571859 res!837462) b!1870715))

(assert (= (and b!1870715 res!837463) b!1870716))

(assert (= (and b!1870716 res!837464) b!1870717))

(declare-fun m!2296621 () Bool)

(assert (=> d!571859 m!2296621))

(declare-fun m!2296623 () Bool)

(assert (=> d!571859 m!2296623))

(declare-fun m!2296625 () Bool)

(assert (=> b!1870716 m!2296625))

(declare-fun m!2296627 () Bool)

(assert (=> b!1870716 m!2296627))

(assert (=> b!1870716 m!2296625))

(assert (=> b!1870716 m!2296627))

(declare-fun m!2296629 () Bool)

(assert (=> b!1870716 m!2296629))

(assert (=> b!1870613 d!571859))

(assert (=> b!1870502 d!571835))

(assert (=> b!1870502 d!571837))

(declare-fun d!571861 () Bool)

(assert (=> d!571861 (= (inv!27474 (xs!9778 (right!17024 t!4595))) (<= (size!16429 (innerList!6954 (xs!9778 (right!17024 t!4595)))) 2147483647))))

(declare-fun bs!411964 () Bool)

(assert (= bs!411964 d!571861))

(declare-fun m!2296631 () Bool)

(assert (=> bs!411964 m!2296631))

(assert (=> b!1870639 d!571861))

(declare-fun d!571863 () Bool)

(assert (=> d!571863 (= (inv!27474 (xs!9778 (left!16694 err!3137))) (<= (size!16429 (innerList!6954 (xs!9778 (left!16694 err!3137)))) 2147483647))))

(declare-fun bs!411965 () Bool)

(assert (= bs!411965 d!571863))

(declare-fun m!2296633 () Bool)

(assert (=> bs!411965 m!2296633))

(assert (=> b!1870652 d!571863))

(declare-fun d!571865 () Bool)

(declare-fun c!304843 () Bool)

(assert (=> d!571865 (= c!304843 ((_ is Node!6894) (left!16694 (right!17024 err!3137))))))

(declare-fun e!1193505 () Bool)

(assert (=> d!571865 (= (inv!27473 (left!16694 (right!17024 err!3137))) e!1193505)))

(declare-fun b!1870718 () Bool)

(assert (=> b!1870718 (= e!1193505 (inv!27476 (left!16694 (right!17024 err!3137))))))

(declare-fun b!1870719 () Bool)

(declare-fun e!1193506 () Bool)

(assert (=> b!1870719 (= e!1193505 e!1193506)))

(declare-fun res!837465 () Bool)

(assert (=> b!1870719 (= res!837465 (not ((_ is Leaf!10109) (left!16694 (right!17024 err!3137)))))))

(assert (=> b!1870719 (=> res!837465 e!1193506)))

(declare-fun b!1870720 () Bool)

(assert (=> b!1870720 (= e!1193506 (inv!27478 (left!16694 (right!17024 err!3137))))))

(assert (= (and d!571865 c!304843) b!1870718))

(assert (= (and d!571865 (not c!304843)) b!1870719))

(assert (= (and b!1870719 (not res!837465)) b!1870720))

(declare-fun m!2296635 () Bool)

(assert (=> b!1870718 m!2296635))

(declare-fun m!2296637 () Bool)

(assert (=> b!1870720 m!2296637))

(assert (=> b!1870654 d!571865))

(declare-fun d!571867 () Bool)

(declare-fun c!304844 () Bool)

(assert (=> d!571867 (= c!304844 ((_ is Node!6894) (right!17024 (right!17024 err!3137))))))

(declare-fun e!1193507 () Bool)

(assert (=> d!571867 (= (inv!27473 (right!17024 (right!17024 err!3137))) e!1193507)))

(declare-fun b!1870721 () Bool)

(assert (=> b!1870721 (= e!1193507 (inv!27476 (right!17024 (right!17024 err!3137))))))

(declare-fun b!1870722 () Bool)

(declare-fun e!1193508 () Bool)

(assert (=> b!1870722 (= e!1193507 e!1193508)))

(declare-fun res!837466 () Bool)

(assert (=> b!1870722 (= res!837466 (not ((_ is Leaf!10109) (right!17024 (right!17024 err!3137)))))))

(assert (=> b!1870722 (=> res!837466 e!1193508)))

(declare-fun b!1870723 () Bool)

(assert (=> b!1870723 (= e!1193508 (inv!27478 (right!17024 (right!17024 err!3137))))))

(assert (= (and d!571867 c!304844) b!1870721))

(assert (= (and d!571867 (not c!304844)) b!1870722))

(assert (= (and b!1870722 (not res!837466)) b!1870723))

(declare-fun m!2296639 () Bool)

(assert (=> b!1870721 m!2296639))

(declare-fun m!2296641 () Bool)

(assert (=> b!1870723 m!2296641))

(assert (=> b!1870654 d!571867))

(declare-fun b!1870724 () Bool)

(declare-fun res!837467 () Bool)

(declare-fun e!1193510 () Bool)

(assert (=> b!1870724 (=> (not res!837467) (not e!1193510))))

(assert (=> b!1870724 (= res!837467 (<= (- (height!1080 (left!16694 (right!17024 lt!719243))) (height!1080 (right!17024 (right!17024 lt!719243)))) 1))))

(declare-fun b!1870725 () Bool)

(declare-fun e!1193509 () Bool)

(assert (=> b!1870725 (= e!1193509 e!1193510)))

(declare-fun res!837469 () Bool)

(assert (=> b!1870725 (=> (not res!837469) (not e!1193510))))

(assert (=> b!1870725 (= res!837469 (<= (- 1) (- (height!1080 (left!16694 (right!17024 lt!719243))) (height!1080 (right!17024 (right!17024 lt!719243))))))))

(declare-fun b!1870726 () Bool)

(declare-fun res!837468 () Bool)

(assert (=> b!1870726 (=> (not res!837468) (not e!1193510))))

(assert (=> b!1870726 (= res!837468 (isBalanced!2195 (left!16694 (right!17024 lt!719243))))))

(declare-fun d!571869 () Bool)

(declare-fun res!837470 () Bool)

(assert (=> d!571869 (=> res!837470 e!1193509)))

(assert (=> d!571869 (= res!837470 (not ((_ is Node!6894) (right!17024 lt!719243))))))

(assert (=> d!571869 (= (isBalanced!2195 (right!17024 lt!719243)) e!1193509)))

(declare-fun b!1870727 () Bool)

(declare-fun res!837471 () Bool)

(assert (=> b!1870727 (=> (not res!837471) (not e!1193510))))

(assert (=> b!1870727 (= res!837471 (not (isEmpty!12939 (left!16694 (right!17024 lt!719243)))))))

(declare-fun b!1870728 () Bool)

(assert (=> b!1870728 (= e!1193510 (not (isEmpty!12939 (right!17024 (right!17024 lt!719243)))))))

(declare-fun b!1870729 () Bool)

(declare-fun res!837472 () Bool)

(assert (=> b!1870729 (=> (not res!837472) (not e!1193510))))

(assert (=> b!1870729 (= res!837472 (isBalanced!2195 (right!17024 (right!17024 lt!719243))))))

(assert (= (and d!571869 (not res!837470)) b!1870725))

(assert (= (and b!1870725 res!837469) b!1870724))

(assert (= (and b!1870724 res!837467) b!1870726))

(assert (= (and b!1870726 res!837468) b!1870729))

(assert (= (and b!1870729 res!837472) b!1870727))

(assert (= (and b!1870727 res!837471) b!1870728))

(declare-fun m!2296643 () Bool)

(assert (=> b!1870726 m!2296643))

(declare-fun m!2296645 () Bool)

(assert (=> b!1870725 m!2296645))

(declare-fun m!2296647 () Bool)

(assert (=> b!1870725 m!2296647))

(declare-fun m!2296649 () Bool)

(assert (=> b!1870728 m!2296649))

(assert (=> b!1870724 m!2296645))

(assert (=> b!1870724 m!2296647))

(declare-fun m!2296651 () Bool)

(assert (=> b!1870727 m!2296651))

(declare-fun m!2296653 () Bool)

(assert (=> b!1870729 m!2296653))

(assert (=> b!1870600 d!571869))

(assert (=> b!1870496 d!571811))

(assert (=> b!1870496 d!571813))

(declare-fun d!571871 () Bool)

(declare-fun e!1193515 () Bool)

(assert (=> d!571871 e!1193515))

(declare-fun res!837477 () Bool)

(assert (=> d!571871 (=> (not res!837477) (not e!1193515))))

(declare-fun lt!719260 () List!20781)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3086 (List!20781) (InoxSet T!33270))

(assert (=> d!571871 (= res!837477 (= (content!3086 lt!719260) ((_ map or) (content!3086 (list!8494 (left!16694 t!4595))) (content!3086 (list!8494 (right!17024 t!4595))))))))

(declare-fun e!1193516 () List!20781)

(assert (=> d!571871 (= lt!719260 e!1193516)))

(declare-fun c!304847 () Bool)

(assert (=> d!571871 (= c!304847 ((_ is Nil!20699) (list!8494 (left!16694 t!4595))))))

(assert (=> d!571871 (= (++!5623 (list!8494 (left!16694 t!4595)) (list!8494 (right!17024 t!4595))) lt!719260)))

(declare-fun b!1870740 () Bool)

(declare-fun res!837478 () Bool)

(assert (=> b!1870740 (=> (not res!837478) (not e!1193515))))

(assert (=> b!1870740 (= res!837478 (= (size!16429 lt!719260) (+ (size!16429 (list!8494 (left!16694 t!4595))) (size!16429 (list!8494 (right!17024 t!4595))))))))

(declare-fun b!1870738 () Bool)

(assert (=> b!1870738 (= e!1193516 (list!8494 (right!17024 t!4595)))))

(declare-fun b!1870739 () Bool)

(assert (=> b!1870739 (= e!1193516 (Cons!20699 (h!26100 (list!8494 (left!16694 t!4595))) (++!5623 (t!172988 (list!8494 (left!16694 t!4595))) (list!8494 (right!17024 t!4595)))))))

(declare-fun b!1870741 () Bool)

(assert (=> b!1870741 (= e!1193515 (or (not (= (list!8494 (right!17024 t!4595)) Nil!20699)) (= lt!719260 (list!8494 (left!16694 t!4595)))))))

(assert (= (and d!571871 c!304847) b!1870738))

(assert (= (and d!571871 (not c!304847)) b!1870739))

(assert (= (and d!571871 res!837477) b!1870740))

(assert (= (and b!1870740 res!837478) b!1870741))

(declare-fun m!2296655 () Bool)

(assert (=> d!571871 m!2296655))

(assert (=> d!571871 m!2296427))

(declare-fun m!2296657 () Bool)

(assert (=> d!571871 m!2296657))

(assert (=> d!571871 m!2296429))

(declare-fun m!2296659 () Bool)

(assert (=> d!571871 m!2296659))

(declare-fun m!2296661 () Bool)

(assert (=> b!1870740 m!2296661))

(assert (=> b!1870740 m!2296427))

(assert (=> b!1870740 m!2296617))

(assert (=> b!1870740 m!2296429))

(declare-fun m!2296663 () Bool)

(assert (=> b!1870740 m!2296663))

(assert (=> b!1870739 m!2296429))

(declare-fun m!2296665 () Bool)

(assert (=> b!1870739 m!2296665))

(assert (=> b!1870522 d!571871))

(assert (=> b!1870522 d!571853))

(declare-fun d!571873 () Bool)

(declare-fun c!304848 () Bool)

(assert (=> d!571873 (= c!304848 ((_ is Empty!6894) (right!17024 t!4595)))))

(declare-fun e!1193517 () List!20781)

(assert (=> d!571873 (= (list!8494 (right!17024 t!4595)) e!1193517)))

(declare-fun b!1870744 () Bool)

(declare-fun e!1193518 () List!20781)

(assert (=> b!1870744 (= e!1193518 (list!8495 (xs!9778 (right!17024 t!4595))))))

(declare-fun b!1870743 () Bool)

(assert (=> b!1870743 (= e!1193517 e!1193518)))

(declare-fun c!304849 () Bool)

(assert (=> b!1870743 (= c!304849 ((_ is Leaf!10109) (right!17024 t!4595)))))

(declare-fun b!1870745 () Bool)

(assert (=> b!1870745 (= e!1193518 (++!5623 (list!8494 (left!16694 (right!17024 t!4595))) (list!8494 (right!17024 (right!17024 t!4595)))))))

(declare-fun b!1870742 () Bool)

(assert (=> b!1870742 (= e!1193517 Nil!20699)))

(assert (= (and d!571873 c!304848) b!1870742))

(assert (= (and d!571873 (not c!304848)) b!1870743))

(assert (= (and b!1870743 c!304849) b!1870744))

(assert (= (and b!1870743 (not c!304849)) b!1870745))

(declare-fun m!2296667 () Bool)

(assert (=> b!1870744 m!2296667))

(declare-fun m!2296669 () Bool)

(assert (=> b!1870745 m!2296669))

(declare-fun m!2296671 () Bool)

(assert (=> b!1870745 m!2296671))

(assert (=> b!1870745 m!2296669))

(assert (=> b!1870745 m!2296671))

(declare-fun m!2296673 () Bool)

(assert (=> b!1870745 m!2296673))

(assert (=> b!1870522 d!571873))

(declare-fun d!571875 () Bool)

(declare-fun res!837479 () Bool)

(declare-fun e!1193519 () Bool)

(assert (=> d!571875 (=> (not res!837479) (not e!1193519))))

(assert (=> d!571875 (= res!837479 (<= (size!16429 (list!8495 (xs!9778 err!3137))) 512))))

(assert (=> d!571875 (= (inv!27478 err!3137) e!1193519)))

(declare-fun b!1870746 () Bool)

(declare-fun res!837480 () Bool)

(assert (=> b!1870746 (=> (not res!837480) (not e!1193519))))

(assert (=> b!1870746 (= res!837480 (= (csize!14019 err!3137) (size!16429 (list!8495 (xs!9778 err!3137)))))))

(declare-fun b!1870747 () Bool)

(assert (=> b!1870747 (= e!1193519 (and (> (csize!14019 err!3137) 0) (<= (csize!14019 err!3137) 512)))))

(assert (= (and d!571875 res!837479) b!1870746))

(assert (= (and b!1870746 res!837480) b!1870747))

(declare-fun m!2296675 () Bool)

(assert (=> d!571875 m!2296675))

(assert (=> d!571875 m!2296675))

(declare-fun m!2296677 () Bool)

(assert (=> d!571875 m!2296677))

(assert (=> b!1870746 m!2296675))

(assert (=> b!1870746 m!2296675))

(assert (=> b!1870746 m!2296677))

(assert (=> b!1870603 d!571875))

(declare-fun d!571877 () Bool)

(assert (=> d!571877 (= (isEmpty!12941 (list!8494 t!4595)) ((_ is Nil!20699) (list!8494 t!4595)))))

(assert (=> d!571809 d!571877))

(assert (=> d!571809 d!571801))

(declare-fun d!571879 () Bool)

(declare-fun lt!719261 () Int)

(assert (=> d!571879 (= lt!719261 (size!16429 (list!8494 t!4595)))))

(assert (=> d!571879 (= lt!719261 (ite ((_ is Empty!6894) t!4595) 0 (ite ((_ is Leaf!10109) t!4595) (csize!14019 t!4595) (csize!14018 t!4595))))))

(assert (=> d!571879 (= (size!16432 t!4595) lt!719261)))

(declare-fun bs!411966 () Bool)

(assert (= bs!411966 d!571879))

(assert (=> bs!411966 m!2296395))

(assert (=> bs!411966 m!2296395))

(declare-fun m!2296679 () Bool)

(assert (=> bs!411966 m!2296679))

(assert (=> d!571809 d!571879))

(declare-fun d!571881 () Bool)

(declare-fun c!304850 () Bool)

(assert (=> d!571881 (= c!304850 ((_ is Node!6894) (left!16694 (right!17024 t!4595))))))

(declare-fun e!1193520 () Bool)

(assert (=> d!571881 (= (inv!27473 (left!16694 (right!17024 t!4595))) e!1193520)))

(declare-fun b!1870748 () Bool)

(assert (=> b!1870748 (= e!1193520 (inv!27476 (left!16694 (right!17024 t!4595))))))

(declare-fun b!1870749 () Bool)

(declare-fun e!1193521 () Bool)

(assert (=> b!1870749 (= e!1193520 e!1193521)))

(declare-fun res!837481 () Bool)

(assert (=> b!1870749 (= res!837481 (not ((_ is Leaf!10109) (left!16694 (right!17024 t!4595)))))))

(assert (=> b!1870749 (=> res!837481 e!1193521)))

(declare-fun b!1870750 () Bool)

(assert (=> b!1870750 (= e!1193521 (inv!27478 (left!16694 (right!17024 t!4595))))))

(assert (= (and d!571881 c!304850) b!1870748))

(assert (= (and d!571881 (not c!304850)) b!1870749))

(assert (= (and b!1870749 (not res!837481)) b!1870750))

(declare-fun m!2296681 () Bool)

(assert (=> b!1870748 m!2296681))

(declare-fun m!2296683 () Bool)

(assert (=> b!1870750 m!2296683))

(assert (=> b!1870638 d!571881))

(declare-fun d!571883 () Bool)

(declare-fun c!304851 () Bool)

(assert (=> d!571883 (= c!304851 ((_ is Node!6894) (right!17024 (right!17024 t!4595))))))

(declare-fun e!1193522 () Bool)

(assert (=> d!571883 (= (inv!27473 (right!17024 (right!17024 t!4595))) e!1193522)))

(declare-fun b!1870751 () Bool)

(assert (=> b!1870751 (= e!1193522 (inv!27476 (right!17024 (right!17024 t!4595))))))

(declare-fun b!1870752 () Bool)

(declare-fun e!1193523 () Bool)

(assert (=> b!1870752 (= e!1193522 e!1193523)))

(declare-fun res!837482 () Bool)

(assert (=> b!1870752 (= res!837482 (not ((_ is Leaf!10109) (right!17024 (right!17024 t!4595)))))))

(assert (=> b!1870752 (=> res!837482 e!1193523)))

(declare-fun b!1870753 () Bool)

(assert (=> b!1870753 (= e!1193523 (inv!27478 (right!17024 (right!17024 t!4595))))))

(assert (= (and d!571883 c!304851) b!1870751))

(assert (= (and d!571883 (not c!304851)) b!1870752))

(assert (= (and b!1870752 (not res!837482)) b!1870753))

(declare-fun m!2296685 () Bool)

(assert (=> b!1870751 m!2296685))

(declare-fun m!2296687 () Bool)

(assert (=> b!1870753 m!2296687))

(assert (=> b!1870638 d!571883))

(declare-fun d!571885 () Bool)

(declare-fun res!837483 () Bool)

(declare-fun e!1193524 () Bool)

(assert (=> d!571885 (=> (not res!837483) (not e!1193524))))

(assert (=> d!571885 (= res!837483 (<= (size!16429 (list!8495 (xs!9778 (left!16694 t!4595)))) 512))))

(assert (=> d!571885 (= (inv!27478 (left!16694 t!4595)) e!1193524)))

(declare-fun b!1870754 () Bool)

(declare-fun res!837484 () Bool)

(assert (=> b!1870754 (=> (not res!837484) (not e!1193524))))

(assert (=> b!1870754 (= res!837484 (= (csize!14019 (left!16694 t!4595)) (size!16429 (list!8495 (xs!9778 (left!16694 t!4595))))))))

(declare-fun b!1870755 () Bool)

(assert (=> b!1870755 (= e!1193524 (and (> (csize!14019 (left!16694 t!4595)) 0) (<= (csize!14019 (left!16694 t!4595)) 512)))))

(assert (= (and d!571885 res!837483) b!1870754))

(assert (= (and b!1870754 res!837484) b!1870755))

(assert (=> d!571885 m!2296609))

(assert (=> d!571885 m!2296609))

(declare-fun m!2296689 () Bool)

(assert (=> d!571885 m!2296689))

(assert (=> b!1870754 m!2296609))

(assert (=> b!1870754 m!2296609))

(assert (=> b!1870754 m!2296689))

(assert (=> b!1870555 d!571885))

(declare-fun d!571887 () Bool)

(declare-fun res!837485 () Bool)

(declare-fun e!1193525 () Bool)

(assert (=> d!571887 (=> (not res!837485) (not e!1193525))))

(assert (=> d!571887 (= res!837485 (<= (size!16429 (list!8495 (xs!9778 (right!17024 err!3137)))) 512))))

(assert (=> d!571887 (= (inv!27478 (right!17024 err!3137)) e!1193525)))

(declare-fun b!1870756 () Bool)

(declare-fun res!837486 () Bool)

(assert (=> b!1870756 (=> (not res!837486) (not e!1193525))))

(assert (=> b!1870756 (= res!837486 (= (csize!14019 (right!17024 err!3137)) (size!16429 (list!8495 (xs!9778 (right!17024 err!3137))))))))

(declare-fun b!1870757 () Bool)

(assert (=> b!1870757 (= e!1193525 (and (> (csize!14019 (right!17024 err!3137)) 0) (<= (csize!14019 (right!17024 err!3137)) 512)))))

(assert (= (and d!571887 res!837485) b!1870756))

(assert (= (and b!1870756 res!837486) b!1870757))

(declare-fun m!2296691 () Bool)

(assert (=> d!571887 m!2296691))

(assert (=> d!571887 m!2296691))

(declare-fun m!2296693 () Bool)

(assert (=> d!571887 m!2296693))

(assert (=> b!1870756 m!2296691))

(assert (=> b!1870756 m!2296691))

(assert (=> b!1870756 m!2296693))

(assert (=> b!1870618 d!571887))

(declare-fun d!571889 () Bool)

(declare-fun c!304852 () Bool)

(assert (=> d!571889 (= c!304852 ((_ is Node!6894) (left!16694 (left!16694 err!3137))))))

(declare-fun e!1193526 () Bool)

(assert (=> d!571889 (= (inv!27473 (left!16694 (left!16694 err!3137))) e!1193526)))

(declare-fun b!1870758 () Bool)

(assert (=> b!1870758 (= e!1193526 (inv!27476 (left!16694 (left!16694 err!3137))))))

(declare-fun b!1870759 () Bool)

(declare-fun e!1193527 () Bool)

(assert (=> b!1870759 (= e!1193526 e!1193527)))

(declare-fun res!837487 () Bool)

(assert (=> b!1870759 (= res!837487 (not ((_ is Leaf!10109) (left!16694 (left!16694 err!3137)))))))

(assert (=> b!1870759 (=> res!837487 e!1193527)))

(declare-fun b!1870760 () Bool)

(assert (=> b!1870760 (= e!1193527 (inv!27478 (left!16694 (left!16694 err!3137))))))

(assert (= (and d!571889 c!304852) b!1870758))

(assert (= (and d!571889 (not c!304852)) b!1870759))

(assert (= (and b!1870759 (not res!837487)) b!1870760))

(declare-fun m!2296695 () Bool)

(assert (=> b!1870758 m!2296695))

(declare-fun m!2296697 () Bool)

(assert (=> b!1870760 m!2296697))

(assert (=> b!1870651 d!571889))

(declare-fun d!571891 () Bool)

(declare-fun c!304853 () Bool)

(assert (=> d!571891 (= c!304853 ((_ is Node!6894) (right!17024 (left!16694 err!3137))))))

(declare-fun e!1193528 () Bool)

(assert (=> d!571891 (= (inv!27473 (right!17024 (left!16694 err!3137))) e!1193528)))

(declare-fun b!1870761 () Bool)

(assert (=> b!1870761 (= e!1193528 (inv!27476 (right!17024 (left!16694 err!3137))))))

(declare-fun b!1870762 () Bool)

(declare-fun e!1193529 () Bool)

(assert (=> b!1870762 (= e!1193528 e!1193529)))

(declare-fun res!837488 () Bool)

(assert (=> b!1870762 (= res!837488 (not ((_ is Leaf!10109) (right!17024 (left!16694 err!3137)))))))

(assert (=> b!1870762 (=> res!837488 e!1193529)))

(declare-fun b!1870763 () Bool)

(assert (=> b!1870763 (= e!1193529 (inv!27478 (right!17024 (left!16694 err!3137))))))

(assert (= (and d!571891 c!304853) b!1870761))

(assert (= (and d!571891 (not c!304853)) b!1870762))

(assert (= (and b!1870762 (not res!837488)) b!1870763))

(declare-fun m!2296699 () Bool)

(assert (=> b!1870761 m!2296699))

(declare-fun m!2296701 () Bool)

(assert (=> b!1870763 m!2296701))

(assert (=> b!1870651 d!571891))

(declare-fun d!571893 () Bool)

(declare-fun lt!719262 () Bool)

(assert (=> d!571893 (= lt!719262 (isEmpty!12941 (list!8494 (right!17024 t!4595))))))

(assert (=> d!571893 (= lt!719262 (= (size!16432 (right!17024 t!4595)) 0))))

(assert (=> d!571893 (= (isEmpty!12939 (right!17024 t!4595)) lt!719262)))

(declare-fun bs!411967 () Bool)

(assert (= bs!411967 d!571893))

(assert (=> bs!411967 m!2296429))

(assert (=> bs!411967 m!2296429))

(declare-fun m!2296703 () Bool)

(assert (=> bs!411967 m!2296703))

(declare-fun m!2296705 () Bool)

(assert (=> bs!411967 m!2296705))

(assert (=> b!1870608 d!571893))

(declare-fun d!571895 () Bool)

(declare-fun res!837489 () Bool)

(declare-fun e!1193530 () Bool)

(assert (=> d!571895 (=> (not res!837489) (not e!1193530))))

(assert (=> d!571895 (= res!837489 (= (csize!14018 err!3137) (+ (size!16432 (left!16694 err!3137)) (size!16432 (right!17024 err!3137)))))))

(assert (=> d!571895 (= (inv!27476 err!3137) e!1193530)))

(declare-fun b!1870764 () Bool)

(declare-fun res!837490 () Bool)

(assert (=> b!1870764 (=> (not res!837490) (not e!1193530))))

(assert (=> b!1870764 (= res!837490 (and (not (= (left!16694 err!3137) Empty!6894)) (not (= (right!17024 err!3137) Empty!6894))))))

(declare-fun b!1870765 () Bool)

(declare-fun res!837491 () Bool)

(assert (=> b!1870765 (=> (not res!837491) (not e!1193530))))

(assert (=> b!1870765 (= res!837491 (= (cheight!7105 err!3137) (+ (max!0 (height!1080 (left!16694 err!3137)) (height!1080 (right!17024 err!3137))) 1)))))

(declare-fun b!1870766 () Bool)

(assert (=> b!1870766 (= e!1193530 (<= 0 (cheight!7105 err!3137)))))

(assert (= (and d!571895 res!837489) b!1870764))

(assert (= (and b!1870764 res!837490) b!1870765))

(assert (= (and b!1870765 res!837491) b!1870766))

(declare-fun m!2296707 () Bool)

(assert (=> d!571895 m!2296707))

(declare-fun m!2296709 () Bool)

(assert (=> d!571895 m!2296709))

(declare-fun m!2296711 () Bool)

(assert (=> b!1870765 m!2296711))

(declare-fun m!2296713 () Bool)

(assert (=> b!1870765 m!2296713))

(assert (=> b!1870765 m!2296711))

(assert (=> b!1870765 m!2296713))

(declare-fun m!2296715 () Bool)

(assert (=> b!1870765 m!2296715))

(assert (=> b!1870601 d!571895))

(declare-fun d!571897 () Bool)

(assert (=> d!571897 (= (list!8495 (xs!9778 lt!719243)) (innerList!6954 (xs!9778 lt!719243)))))

(assert (=> b!1870517 d!571897))

(declare-fun b!1870767 () Bool)

(declare-fun res!837492 () Bool)

(declare-fun e!1193532 () Bool)

(assert (=> b!1870767 (=> (not res!837492) (not e!1193532))))

(assert (=> b!1870767 (= res!837492 (<= (- (height!1080 (left!16694 (left!16694 lt!719243))) (height!1080 (right!17024 (left!16694 lt!719243)))) 1))))

(declare-fun b!1870768 () Bool)

(declare-fun e!1193531 () Bool)

(assert (=> b!1870768 (= e!1193531 e!1193532)))

(declare-fun res!837494 () Bool)

(assert (=> b!1870768 (=> (not res!837494) (not e!1193532))))

(assert (=> b!1870768 (= res!837494 (<= (- 1) (- (height!1080 (left!16694 (left!16694 lt!719243))) (height!1080 (right!17024 (left!16694 lt!719243))))))))

(declare-fun b!1870769 () Bool)

(declare-fun res!837493 () Bool)

(assert (=> b!1870769 (=> (not res!837493) (not e!1193532))))

(assert (=> b!1870769 (= res!837493 (isBalanced!2195 (left!16694 (left!16694 lt!719243))))))

(declare-fun d!571899 () Bool)

(declare-fun res!837495 () Bool)

(assert (=> d!571899 (=> res!837495 e!1193531)))

(assert (=> d!571899 (= res!837495 (not ((_ is Node!6894) (left!16694 lt!719243))))))

(assert (=> d!571899 (= (isBalanced!2195 (left!16694 lt!719243)) e!1193531)))

(declare-fun b!1870770 () Bool)

(declare-fun res!837496 () Bool)

(assert (=> b!1870770 (=> (not res!837496) (not e!1193532))))

(assert (=> b!1870770 (= res!837496 (not (isEmpty!12939 (left!16694 (left!16694 lt!719243)))))))

(declare-fun b!1870771 () Bool)

(assert (=> b!1870771 (= e!1193532 (not (isEmpty!12939 (right!17024 (left!16694 lt!719243)))))))

(declare-fun b!1870772 () Bool)

(declare-fun res!837497 () Bool)

(assert (=> b!1870772 (=> (not res!837497) (not e!1193532))))

(assert (=> b!1870772 (= res!837497 (isBalanced!2195 (right!17024 (left!16694 lt!719243))))))

(assert (= (and d!571899 (not res!837495)) b!1870768))

(assert (= (and b!1870768 res!837494) b!1870767))

(assert (= (and b!1870767 res!837492) b!1870769))

(assert (= (and b!1870769 res!837493) b!1870772))

(assert (= (and b!1870772 res!837497) b!1870770))

(assert (= (and b!1870770 res!837496) b!1870771))

(declare-fun m!2296717 () Bool)

(assert (=> b!1870769 m!2296717))

(declare-fun m!2296719 () Bool)

(assert (=> b!1870768 m!2296719))

(declare-fun m!2296721 () Bool)

(assert (=> b!1870768 m!2296721))

(declare-fun m!2296723 () Bool)

(assert (=> b!1870771 m!2296723))

(assert (=> b!1870767 m!2296719))

(assert (=> b!1870767 m!2296721))

(declare-fun m!2296725 () Bool)

(assert (=> b!1870770 m!2296725))

(declare-fun m!2296727 () Bool)

(assert (=> b!1870772 m!2296727))

(assert (=> b!1870597 d!571899))

(declare-fun d!571901 () Bool)

(assert (=> d!571901 (= (list!8495 (xs!9778 t!4595)) (innerList!6954 (xs!9778 t!4595)))))

(assert (=> b!1870521 d!571901))

(declare-fun d!571903 () Bool)

(declare-fun res!837498 () Bool)

(declare-fun e!1193533 () Bool)

(assert (=> d!571903 (=> (not res!837498) (not e!1193533))))

(assert (=> d!571903 (= res!837498 (= (csize!14018 (left!16694 t!4595)) (+ (size!16432 (left!16694 (left!16694 t!4595))) (size!16432 (right!17024 (left!16694 t!4595))))))))

(assert (=> d!571903 (= (inv!27476 (left!16694 t!4595)) e!1193533)))

(declare-fun b!1870773 () Bool)

(declare-fun res!837499 () Bool)

(assert (=> b!1870773 (=> (not res!837499) (not e!1193533))))

(assert (=> b!1870773 (= res!837499 (and (not (= (left!16694 (left!16694 t!4595)) Empty!6894)) (not (= (right!17024 (left!16694 t!4595)) Empty!6894))))))

(declare-fun b!1870774 () Bool)

(declare-fun res!837500 () Bool)

(assert (=> b!1870774 (=> (not res!837500) (not e!1193533))))

(assert (=> b!1870774 (= res!837500 (= (cheight!7105 (left!16694 t!4595)) (+ (max!0 (height!1080 (left!16694 (left!16694 t!4595))) (height!1080 (right!17024 (left!16694 t!4595)))) 1)))))

(declare-fun b!1870775 () Bool)

(assert (=> b!1870775 (= e!1193533 (<= 0 (cheight!7105 (left!16694 t!4595))))))

(assert (= (and d!571903 res!837498) b!1870773))

(assert (= (and b!1870773 res!837499) b!1870774))

(assert (= (and b!1870774 res!837500) b!1870775))

(declare-fun m!2296729 () Bool)

(assert (=> d!571903 m!2296729))

(declare-fun m!2296731 () Bool)

(assert (=> d!571903 m!2296731))

(declare-fun m!2296733 () Bool)

(assert (=> b!1870774 m!2296733))

(declare-fun m!2296735 () Bool)

(assert (=> b!1870774 m!2296735))

(assert (=> b!1870774 m!2296733))

(assert (=> b!1870774 m!2296735))

(declare-fun m!2296737 () Bool)

(assert (=> b!1870774 m!2296737))

(assert (=> b!1870553 d!571903))

(declare-fun d!571905 () Bool)

(declare-fun res!837501 () Bool)

(declare-fun e!1193534 () Bool)

(assert (=> d!571905 (=> (not res!837501) (not e!1193534))))

(assert (=> d!571905 (= res!837501 (= (csize!14018 (right!17024 err!3137)) (+ (size!16432 (left!16694 (right!17024 err!3137))) (size!16432 (right!17024 (right!17024 err!3137))))))))

(assert (=> d!571905 (= (inv!27476 (right!17024 err!3137)) e!1193534)))

(declare-fun b!1870776 () Bool)

(declare-fun res!837502 () Bool)

(assert (=> b!1870776 (=> (not res!837502) (not e!1193534))))

(assert (=> b!1870776 (= res!837502 (and (not (= (left!16694 (right!17024 err!3137)) Empty!6894)) (not (= (right!17024 (right!17024 err!3137)) Empty!6894))))))

(declare-fun b!1870777 () Bool)

(declare-fun res!837503 () Bool)

(assert (=> b!1870777 (=> (not res!837503) (not e!1193534))))

(assert (=> b!1870777 (= res!837503 (= (cheight!7105 (right!17024 err!3137)) (+ (max!0 (height!1080 (left!16694 (right!17024 err!3137))) (height!1080 (right!17024 (right!17024 err!3137)))) 1)))))

(declare-fun b!1870778 () Bool)

(assert (=> b!1870778 (= e!1193534 (<= 0 (cheight!7105 (right!17024 err!3137))))))

(assert (= (and d!571905 res!837501) b!1870776))

(assert (= (and b!1870776 res!837502) b!1870777))

(assert (= (and b!1870777 res!837503) b!1870778))

(declare-fun m!2296739 () Bool)

(assert (=> d!571905 m!2296739))

(declare-fun m!2296741 () Bool)

(assert (=> d!571905 m!2296741))

(declare-fun m!2296743 () Bool)

(assert (=> b!1870777 m!2296743))

(declare-fun m!2296745 () Bool)

(assert (=> b!1870777 m!2296745))

(assert (=> b!1870777 m!2296743))

(assert (=> b!1870777 m!2296745))

(declare-fun m!2296747 () Bool)

(assert (=> b!1870777 m!2296747))

(assert (=> b!1870616 d!571905))

(declare-fun d!571907 () Bool)

(declare-fun lt!719263 () Bool)

(assert (=> d!571907 (= lt!719263 (isEmpty!12941 (list!8494 (right!17024 lt!719243))))))

(assert (=> d!571907 (= lt!719263 (= (size!16432 (right!17024 lt!719243)) 0))))

(assert (=> d!571907 (= (isEmpty!12939 (right!17024 lt!719243)) lt!719263)))

(declare-fun bs!411968 () Bool)

(assert (= bs!411968 d!571907))

(assert (=> bs!411968 m!2296421))

(assert (=> bs!411968 m!2296421))

(declare-fun m!2296749 () Bool)

(assert (=> bs!411968 m!2296749))

(declare-fun m!2296751 () Bool)

(assert (=> bs!411968 m!2296751))

(assert (=> b!1870599 d!571907))

(declare-fun d!571909 () Bool)

(declare-fun e!1193535 () Bool)

(assert (=> d!571909 e!1193535))

(declare-fun res!837504 () Bool)

(assert (=> d!571909 (=> (not res!837504) (not e!1193535))))

(declare-fun lt!719264 () List!20781)

(assert (=> d!571909 (= res!837504 (= (content!3086 lt!719264) ((_ map or) (content!3086 (list!8494 (left!16694 lt!719243))) (content!3086 (list!8494 (right!17024 lt!719243))))))))

(declare-fun e!1193536 () List!20781)

(assert (=> d!571909 (= lt!719264 e!1193536)))

(declare-fun c!304854 () Bool)

(assert (=> d!571909 (= c!304854 ((_ is Nil!20699) (list!8494 (left!16694 lt!719243))))))

(assert (=> d!571909 (= (++!5623 (list!8494 (left!16694 lt!719243)) (list!8494 (right!17024 lt!719243))) lt!719264)))

(declare-fun b!1870781 () Bool)

(declare-fun res!837505 () Bool)

(assert (=> b!1870781 (=> (not res!837505) (not e!1193535))))

(assert (=> b!1870781 (= res!837505 (= (size!16429 lt!719264) (+ (size!16429 (list!8494 (left!16694 lt!719243))) (size!16429 (list!8494 (right!17024 lt!719243))))))))

(declare-fun b!1870779 () Bool)

(assert (=> b!1870779 (= e!1193536 (list!8494 (right!17024 lt!719243)))))

(declare-fun b!1870780 () Bool)

(assert (=> b!1870780 (= e!1193536 (Cons!20699 (h!26100 (list!8494 (left!16694 lt!719243))) (++!5623 (t!172988 (list!8494 (left!16694 lt!719243))) (list!8494 (right!17024 lt!719243)))))))

(declare-fun b!1870782 () Bool)

(assert (=> b!1870782 (= e!1193535 (or (not (= (list!8494 (right!17024 lt!719243)) Nil!20699)) (= lt!719264 (list!8494 (left!16694 lt!719243)))))))

(assert (= (and d!571909 c!304854) b!1870779))

(assert (= (and d!571909 (not c!304854)) b!1870780))

(assert (= (and d!571909 res!837504) b!1870781))

(assert (= (and b!1870781 res!837505) b!1870782))

(declare-fun m!2296753 () Bool)

(assert (=> d!571909 m!2296753))

(assert (=> d!571909 m!2296419))

(declare-fun m!2296755 () Bool)

(assert (=> d!571909 m!2296755))

(assert (=> d!571909 m!2296421))

(declare-fun m!2296757 () Bool)

(assert (=> d!571909 m!2296757))

(declare-fun m!2296759 () Bool)

(assert (=> b!1870781 m!2296759))

(assert (=> b!1870781 m!2296419))

(declare-fun m!2296761 () Bool)

(assert (=> b!1870781 m!2296761))

(assert (=> b!1870781 m!2296421))

(declare-fun m!2296763 () Bool)

(assert (=> b!1870781 m!2296763))

(assert (=> b!1870780 m!2296421))

(declare-fun m!2296765 () Bool)

(assert (=> b!1870780 m!2296765))

(assert (=> b!1870518 d!571909))

(declare-fun d!571911 () Bool)

(declare-fun c!304855 () Bool)

(assert (=> d!571911 (= c!304855 ((_ is Empty!6894) (left!16694 lt!719243)))))

(declare-fun e!1193537 () List!20781)

(assert (=> d!571911 (= (list!8494 (left!16694 lt!719243)) e!1193537)))

(declare-fun b!1870785 () Bool)

(declare-fun e!1193538 () List!20781)

(assert (=> b!1870785 (= e!1193538 (list!8495 (xs!9778 (left!16694 lt!719243))))))

(declare-fun b!1870784 () Bool)

(assert (=> b!1870784 (= e!1193537 e!1193538)))

(declare-fun c!304856 () Bool)

(assert (=> b!1870784 (= c!304856 ((_ is Leaf!10109) (left!16694 lt!719243)))))

(declare-fun b!1870786 () Bool)

(assert (=> b!1870786 (= e!1193538 (++!5623 (list!8494 (left!16694 (left!16694 lt!719243))) (list!8494 (right!17024 (left!16694 lt!719243)))))))

(declare-fun b!1870783 () Bool)

(assert (=> b!1870783 (= e!1193537 Nil!20699)))

(assert (= (and d!571911 c!304855) b!1870783))

(assert (= (and d!571911 (not c!304855)) b!1870784))

(assert (= (and b!1870784 c!304856) b!1870785))

(assert (= (and b!1870784 (not c!304856)) b!1870786))

(declare-fun m!2296767 () Bool)

(assert (=> b!1870785 m!2296767))

(declare-fun m!2296769 () Bool)

(assert (=> b!1870786 m!2296769))

(declare-fun m!2296771 () Bool)

(assert (=> b!1870786 m!2296771))

(assert (=> b!1870786 m!2296769))

(assert (=> b!1870786 m!2296771))

(declare-fun m!2296773 () Bool)

(assert (=> b!1870786 m!2296773))

(assert (=> b!1870518 d!571911))

(declare-fun d!571913 () Bool)

(declare-fun c!304857 () Bool)

(assert (=> d!571913 (= c!304857 ((_ is Empty!6894) (right!17024 lt!719243)))))

(declare-fun e!1193539 () List!20781)

(assert (=> d!571913 (= (list!8494 (right!17024 lt!719243)) e!1193539)))

(declare-fun b!1870789 () Bool)

(declare-fun e!1193540 () List!20781)

(assert (=> b!1870789 (= e!1193540 (list!8495 (xs!9778 (right!17024 lt!719243))))))

(declare-fun b!1870788 () Bool)

(assert (=> b!1870788 (= e!1193539 e!1193540)))

(declare-fun c!304858 () Bool)

(assert (=> b!1870788 (= c!304858 ((_ is Leaf!10109) (right!17024 lt!719243)))))

(declare-fun b!1870790 () Bool)

(assert (=> b!1870790 (= e!1193540 (++!5623 (list!8494 (left!16694 (right!17024 lt!719243))) (list!8494 (right!17024 (right!17024 lt!719243)))))))

(declare-fun b!1870787 () Bool)

(assert (=> b!1870787 (= e!1193539 Nil!20699)))

(assert (= (and d!571913 c!304857) b!1870787))

(assert (= (and d!571913 (not c!304857)) b!1870788))

(assert (= (and b!1870788 c!304858) b!1870789))

(assert (= (and b!1870788 (not c!304858)) b!1870790))

(declare-fun m!2296775 () Bool)

(assert (=> b!1870789 m!2296775))

(declare-fun m!2296777 () Bool)

(assert (=> b!1870790 m!2296777))

(declare-fun m!2296779 () Bool)

(assert (=> b!1870790 m!2296779))

(assert (=> b!1870790 m!2296777))

(assert (=> b!1870790 m!2296779))

(declare-fun m!2296781 () Bool)

(assert (=> b!1870790 m!2296781))

(assert (=> b!1870518 d!571913))

(declare-fun d!571915 () Bool)

(declare-fun lt!719265 () Bool)

(assert (=> d!571915 (= lt!719265 (isEmpty!12941 (list!8494 (left!16694 lt!719243))))))

(assert (=> d!571915 (= lt!719265 (= (size!16432 (left!16694 lt!719243)) 0))))

(assert (=> d!571915 (= (isEmpty!12939 (left!16694 lt!719243)) lt!719265)))

(declare-fun bs!411969 () Bool)

(assert (= bs!411969 d!571915))

(assert (=> bs!411969 m!2296419))

(assert (=> bs!411969 m!2296419))

(declare-fun m!2296783 () Bool)

(assert (=> bs!411969 m!2296783))

(declare-fun m!2296785 () Bool)

(assert (=> bs!411969 m!2296785))

(assert (=> b!1870598 d!571915))

(declare-fun b!1870791 () Bool)

(declare-fun res!837506 () Bool)

(declare-fun e!1193542 () Bool)

(assert (=> b!1870791 (=> (not res!837506) (not e!1193542))))

(assert (=> b!1870791 (= res!837506 (<= (- (height!1080 (left!16694 (right!17024 t!4595))) (height!1080 (right!17024 (right!17024 t!4595)))) 1))))

(declare-fun b!1870792 () Bool)

(declare-fun e!1193541 () Bool)

(assert (=> b!1870792 (= e!1193541 e!1193542)))

(declare-fun res!837508 () Bool)

(assert (=> b!1870792 (=> (not res!837508) (not e!1193542))))

(assert (=> b!1870792 (= res!837508 (<= (- 1) (- (height!1080 (left!16694 (right!17024 t!4595))) (height!1080 (right!17024 (right!17024 t!4595))))))))

(declare-fun b!1870793 () Bool)

(declare-fun res!837507 () Bool)

(assert (=> b!1870793 (=> (not res!837507) (not e!1193542))))

(assert (=> b!1870793 (= res!837507 (isBalanced!2195 (left!16694 (right!17024 t!4595))))))

(declare-fun d!571917 () Bool)

(declare-fun res!837509 () Bool)

(assert (=> d!571917 (=> res!837509 e!1193541)))

(assert (=> d!571917 (= res!837509 (not ((_ is Node!6894) (right!17024 t!4595))))))

(assert (=> d!571917 (= (isBalanced!2195 (right!17024 t!4595)) e!1193541)))

(declare-fun b!1870794 () Bool)

(declare-fun res!837510 () Bool)

(assert (=> b!1870794 (=> (not res!837510) (not e!1193542))))

(assert (=> b!1870794 (= res!837510 (not (isEmpty!12939 (left!16694 (right!17024 t!4595)))))))

(declare-fun b!1870795 () Bool)

(assert (=> b!1870795 (= e!1193542 (not (isEmpty!12939 (right!17024 (right!17024 t!4595)))))))

(declare-fun b!1870796 () Bool)

(declare-fun res!837511 () Bool)

(assert (=> b!1870796 (=> (not res!837511) (not e!1193542))))

(assert (=> b!1870796 (= res!837511 (isBalanced!2195 (right!17024 (right!17024 t!4595))))))

(assert (= (and d!571917 (not res!837509)) b!1870792))

(assert (= (and b!1870792 res!837508) b!1870791))

(assert (= (and b!1870791 res!837506) b!1870793))

(assert (= (and b!1870793 res!837507) b!1870796))

(assert (= (and b!1870796 res!837511) b!1870794))

(assert (= (and b!1870794 res!837510) b!1870795))

(declare-fun m!2296787 () Bool)

(assert (=> b!1870793 m!2296787))

(declare-fun m!2296789 () Bool)

(assert (=> b!1870792 m!2296789))

(declare-fun m!2296791 () Bool)

(assert (=> b!1870792 m!2296791))

(declare-fun m!2296793 () Bool)

(assert (=> b!1870795 m!2296793))

(assert (=> b!1870791 m!2296789))

(assert (=> b!1870791 m!2296791))

(declare-fun m!2296795 () Bool)

(assert (=> b!1870794 m!2296795))

(declare-fun m!2296797 () Bool)

(assert (=> b!1870796 m!2296797))

(assert (=> b!1870609 d!571917))

(declare-fun d!571919 () Bool)

(assert (=> d!571919 (= (height!1080 (left!16694 lt!719243)) (ite ((_ is Empty!6894) (left!16694 lt!719243)) 0 (ite ((_ is Leaf!10109) (left!16694 lt!719243)) 1 (cheight!7105 (left!16694 lt!719243)))))))

(assert (=> b!1870595 d!571919))

(declare-fun d!571921 () Bool)

(assert (=> d!571921 (= (height!1080 (right!17024 lt!719243)) (ite ((_ is Empty!6894) (right!17024 lt!719243)) 0 (ite ((_ is Leaf!10109) (right!17024 lt!719243)) 1 (cheight!7105 (right!17024 lt!719243)))))))

(assert (=> b!1870595 d!571921))

(declare-fun d!571923 () Bool)

(declare-fun lt!719266 () Int)

(assert (=> d!571923 (>= lt!719266 0)))

(declare-fun e!1193543 () Int)

(assert (=> d!571923 (= lt!719266 e!1193543)))

(declare-fun c!304859 () Bool)

(assert (=> d!571923 (= c!304859 ((_ is Nil!20699) (innerList!6954 (xs!9778 err!3137))))))

(assert (=> d!571923 (= (size!16429 (innerList!6954 (xs!9778 err!3137))) lt!719266)))

(declare-fun b!1870797 () Bool)

(assert (=> b!1870797 (= e!1193543 0)))

(declare-fun b!1870798 () Bool)

(assert (=> b!1870798 (= e!1193543 (+ 1 (size!16429 (t!172988 (innerList!6954 (xs!9778 err!3137))))))))

(assert (= (and d!571923 c!304859) b!1870797))

(assert (= (and d!571923 (not c!304859)) b!1870798))

(declare-fun m!2296799 () Bool)

(assert (=> b!1870798 m!2296799))

(assert (=> d!571787 d!571923))

(declare-fun d!571925 () Bool)

(declare-fun res!837512 () Bool)

(declare-fun e!1193544 () Bool)

(assert (=> d!571925 (=> (not res!837512) (not e!1193544))))

(assert (=> d!571925 (= res!837512 (= (csize!14018 t!4595) (+ (size!16432 (left!16694 t!4595)) (size!16432 (right!17024 t!4595)))))))

(assert (=> d!571925 (= (inv!27476 t!4595) e!1193544)))

(declare-fun b!1870799 () Bool)

(declare-fun res!837513 () Bool)

(assert (=> b!1870799 (=> (not res!837513) (not e!1193544))))

(assert (=> b!1870799 (= res!837513 (and (not (= (left!16694 t!4595) Empty!6894)) (not (= (right!17024 t!4595) Empty!6894))))))

(declare-fun b!1870800 () Bool)

(declare-fun res!837514 () Bool)

(assert (=> b!1870800 (=> (not res!837514) (not e!1193544))))

(assert (=> b!1870800 (= res!837514 (= (cheight!7105 t!4595) (+ (max!0 (height!1080 (left!16694 t!4595)) (height!1080 (right!17024 t!4595))) 1)))))

(declare-fun b!1870801 () Bool)

(assert (=> b!1870801 (= e!1193544 (<= 0 (cheight!7105 t!4595)))))

(assert (= (and d!571925 res!837512) b!1870799))

(assert (= (and b!1870799 res!837513) b!1870800))

(assert (= (and b!1870800 res!837514) b!1870801))

(assert (=> d!571925 m!2296443))

(assert (=> d!571925 m!2296705))

(assert (=> b!1870800 m!2296513))

(assert (=> b!1870800 m!2296515))

(assert (=> b!1870800 m!2296513))

(assert (=> b!1870800 m!2296515))

(declare-fun m!2296801 () Bool)

(assert (=> b!1870800 m!2296801))

(assert (=> b!1870610 d!571925))

(declare-fun d!571927 () Bool)

(assert (=> d!571927 (= (height!1080 (left!16694 t!4595)) (ite ((_ is Empty!6894) (left!16694 t!4595)) 0 (ite ((_ is Leaf!10109) (left!16694 t!4595)) 1 (cheight!7105 (left!16694 t!4595)))))))

(assert (=> b!1870605 d!571927))

(declare-fun d!571929 () Bool)

(assert (=> d!571929 (= (height!1080 (right!17024 t!4595)) (ite ((_ is Empty!6894) (right!17024 t!4595)) 0 (ite ((_ is Leaf!10109) (right!17024 t!4595)) 1 (cheight!7105 (right!17024 t!4595)))))))

(assert (=> b!1870605 d!571929))

(declare-fun d!571931 () Bool)

(declare-fun res!837515 () Bool)

(declare-fun e!1193545 () Bool)

(assert (=> d!571931 (=> (not res!837515) (not e!1193545))))

(assert (=> d!571931 (= res!837515 (<= (size!16429 (list!8495 (xs!9778 t!4595))) 512))))

(assert (=> d!571931 (= (inv!27478 t!4595) e!1193545)))

(declare-fun b!1870802 () Bool)

(declare-fun res!837516 () Bool)

(assert (=> b!1870802 (=> (not res!837516) (not e!1193545))))

(assert (=> b!1870802 (= res!837516 (= (csize!14019 t!4595) (size!16429 (list!8495 (xs!9778 t!4595)))))))

(declare-fun b!1870803 () Bool)

(assert (=> b!1870803 (= e!1193545 (and (> (csize!14019 t!4595) 0) (<= (csize!14019 t!4595) 512)))))

(assert (= (and d!571931 res!837515) b!1870802))

(assert (= (and b!1870802 res!837516) b!1870803))

(assert (=> d!571931 m!2296425))

(assert (=> d!571931 m!2296425))

(declare-fun m!2296803 () Bool)

(assert (=> d!571931 m!2296803))

(assert (=> b!1870802 m!2296425))

(assert (=> b!1870802 m!2296425))

(assert (=> b!1870802 m!2296803))

(assert (=> b!1870612 d!571931))

(assert (=> b!1870596 d!571919))

(assert (=> b!1870596 d!571921))

(assert (=> b!1870607 d!571803))

(declare-fun b!1870804 () Bool)

(declare-fun res!837517 () Bool)

(declare-fun e!1193547 () Bool)

(assert (=> b!1870804 (=> (not res!837517) (not e!1193547))))

(assert (=> b!1870804 (= res!837517 (<= (- (height!1080 (left!16694 (left!16694 t!4595))) (height!1080 (right!17024 (left!16694 t!4595)))) 1))))

(declare-fun b!1870805 () Bool)

(declare-fun e!1193546 () Bool)

(assert (=> b!1870805 (= e!1193546 e!1193547)))

(declare-fun res!837519 () Bool)

(assert (=> b!1870805 (=> (not res!837519) (not e!1193547))))

(assert (=> b!1870805 (= res!837519 (<= (- 1) (- (height!1080 (left!16694 (left!16694 t!4595))) (height!1080 (right!17024 (left!16694 t!4595))))))))

(declare-fun b!1870806 () Bool)

(declare-fun res!837518 () Bool)

(assert (=> b!1870806 (=> (not res!837518) (not e!1193547))))

(assert (=> b!1870806 (= res!837518 (isBalanced!2195 (left!16694 (left!16694 t!4595))))))

(declare-fun d!571933 () Bool)

(declare-fun res!837520 () Bool)

(assert (=> d!571933 (=> res!837520 e!1193546)))

(assert (=> d!571933 (= res!837520 (not ((_ is Node!6894) (left!16694 t!4595))))))

(assert (=> d!571933 (= (isBalanced!2195 (left!16694 t!4595)) e!1193546)))

(declare-fun b!1870807 () Bool)

(declare-fun res!837521 () Bool)

(assert (=> b!1870807 (=> (not res!837521) (not e!1193547))))

(assert (=> b!1870807 (= res!837521 (not (isEmpty!12939 (left!16694 (left!16694 t!4595)))))))

(declare-fun b!1870808 () Bool)

(assert (=> b!1870808 (= e!1193547 (not (isEmpty!12939 (right!17024 (left!16694 t!4595)))))))

(declare-fun b!1870809 () Bool)

(declare-fun res!837522 () Bool)

(assert (=> b!1870809 (=> (not res!837522) (not e!1193547))))

(assert (=> b!1870809 (= res!837522 (isBalanced!2195 (right!17024 (left!16694 t!4595))))))

(assert (= (and d!571933 (not res!837520)) b!1870805))

(assert (= (and b!1870805 res!837519) b!1870804))

(assert (= (and b!1870804 res!837517) b!1870806))

(assert (= (and b!1870806 res!837518) b!1870809))

(assert (= (and b!1870809 res!837522) b!1870807))

(assert (= (and b!1870807 res!837521) b!1870808))

(declare-fun m!2296805 () Bool)

(assert (=> b!1870806 m!2296805))

(assert (=> b!1870805 m!2296733))

(assert (=> b!1870805 m!2296735))

(declare-fun m!2296807 () Bool)

(assert (=> b!1870808 m!2296807))

(assert (=> b!1870804 m!2296733))

(assert (=> b!1870804 m!2296735))

(declare-fun m!2296809 () Bool)

(assert (=> b!1870807 m!2296809))

(declare-fun m!2296811 () Bool)

(assert (=> b!1870809 m!2296811))

(assert (=> b!1870606 d!571933))

(declare-fun d!571935 () Bool)

(declare-fun res!837523 () Bool)

(declare-fun e!1193548 () Bool)

(assert (=> d!571935 (=> (not res!837523) (not e!1193548))))

(assert (=> d!571935 (= res!837523 (<= (size!16429 (list!8495 (xs!9778 (right!17024 t!4595)))) 512))))

(assert (=> d!571935 (= (inv!27478 (right!17024 t!4595)) e!1193548)))

(declare-fun b!1870810 () Bool)

(declare-fun res!837524 () Bool)

(assert (=> b!1870810 (=> (not res!837524) (not e!1193548))))

(assert (=> b!1870810 (= res!837524 (= (csize!14019 (right!17024 t!4595)) (size!16429 (list!8495 (xs!9778 (right!17024 t!4595))))))))

(declare-fun b!1870811 () Bool)

(assert (=> b!1870811 (= e!1193548 (and (> (csize!14019 (right!17024 t!4595)) 0) (<= (csize!14019 (right!17024 t!4595)) 512)))))

(assert (= (and d!571935 res!837523) b!1870810))

(assert (= (and b!1870810 res!837524) b!1870811))

(assert (=> d!571935 m!2296667))

(assert (=> d!571935 m!2296667))

(declare-fun m!2296813 () Bool)

(assert (=> d!571935 m!2296813))

(assert (=> b!1870810 m!2296667))

(assert (=> b!1870810 m!2296667))

(assert (=> b!1870810 m!2296813))

(assert (=> b!1870558 d!571935))

(assert (=> b!1870604 d!571927))

(assert (=> b!1870604 d!571929))

(declare-fun d!571937 () Bool)

(assert (=> d!571937 (= (inv!27474 (xs!9778 (left!16694 t!4595))) (<= (size!16429 (innerList!6954 (xs!9778 (left!16694 t!4595)))) 2147483647))))

(declare-fun bs!411970 () Bool)

(assert (= bs!411970 d!571937))

(declare-fun m!2296815 () Bool)

(assert (=> bs!411970 m!2296815))

(assert (=> b!1870636 d!571937))

(declare-fun d!571939 () Bool)

(declare-fun res!837525 () Bool)

(declare-fun e!1193549 () Bool)

(assert (=> d!571939 (=> (not res!837525) (not e!1193549))))

(assert (=> d!571939 (= res!837525 (= (csize!14018 (right!17024 t!4595)) (+ (size!16432 (left!16694 (right!17024 t!4595))) (size!16432 (right!17024 (right!17024 t!4595))))))))

(assert (=> d!571939 (= (inv!27476 (right!17024 t!4595)) e!1193549)))

(declare-fun b!1870812 () Bool)

(declare-fun res!837526 () Bool)

(assert (=> b!1870812 (=> (not res!837526) (not e!1193549))))

(assert (=> b!1870812 (= res!837526 (and (not (= (left!16694 (right!17024 t!4595)) Empty!6894)) (not (= (right!17024 (right!17024 t!4595)) Empty!6894))))))

(declare-fun b!1870813 () Bool)

(declare-fun res!837527 () Bool)

(assert (=> b!1870813 (=> (not res!837527) (not e!1193549))))

(assert (=> b!1870813 (= res!837527 (= (cheight!7105 (right!17024 t!4595)) (+ (max!0 (height!1080 (left!16694 (right!17024 t!4595))) (height!1080 (right!17024 (right!17024 t!4595)))) 1)))))

(declare-fun b!1870814 () Bool)

(assert (=> b!1870814 (= e!1193549 (<= 0 (cheight!7105 (right!17024 t!4595))))))

(assert (= (and d!571939 res!837525) b!1870812))

(assert (= (and b!1870812 res!837526) b!1870813))

(assert (= (and b!1870813 res!837527) b!1870814))

(declare-fun m!2296817 () Bool)

(assert (=> d!571939 m!2296817))

(declare-fun m!2296819 () Bool)

(assert (=> d!571939 m!2296819))

(assert (=> b!1870813 m!2296789))

(assert (=> b!1870813 m!2296791))

(assert (=> b!1870813 m!2296789))

(assert (=> b!1870813 m!2296791))

(declare-fun m!2296821 () Bool)

(assert (=> b!1870813 m!2296821))

(assert (=> b!1870556 d!571939))

(declare-fun b!1870815 () Bool)

(declare-fun e!1193550 () Bool)

(declare-fun tp!532200 () Bool)

(assert (=> b!1870815 (= e!1193550 (and tp_is_empty!8705 tp!532200))))

(assert (=> b!1870649 (= tp!532170 e!1193550)))

(assert (= (and b!1870649 ((_ is Cons!20699) (t!172988 (innerList!6954 (xs!9778 err!3137))))) b!1870815))

(declare-fun b!1870816 () Bool)

(declare-fun e!1193551 () Bool)

(declare-fun tp!532201 () Bool)

(assert (=> b!1870816 (= e!1193551 (and tp_is_empty!8705 tp!532201))))

(assert (=> b!1870653 (= tp!532172 e!1193551)))

(assert (= (and b!1870653 ((_ is Cons!20699) (innerList!6954 (xs!9778 (left!16694 err!3137))))) b!1870816))

(declare-fun tp!532203 () Bool)

(declare-fun e!1193553 () Bool)

(declare-fun tp!532204 () Bool)

(declare-fun b!1870817 () Bool)

(assert (=> b!1870817 (= e!1193553 (and (inv!27473 (left!16694 (left!16694 (right!17024 err!3137)))) tp!532204 (inv!27473 (right!17024 (left!16694 (right!17024 err!3137)))) tp!532203))))

(declare-fun b!1870819 () Bool)

(declare-fun e!1193552 () Bool)

(declare-fun tp!532202 () Bool)

(assert (=> b!1870819 (= e!1193552 tp!532202)))

(declare-fun b!1870818 () Bool)

(assert (=> b!1870818 (= e!1193553 (and (inv!27474 (xs!9778 (left!16694 (right!17024 err!3137)))) e!1193552))))

(assert (=> b!1870654 (= tp!532177 (and (inv!27473 (left!16694 (right!17024 err!3137))) e!1193553))))

(assert (= (and b!1870654 ((_ is Node!6894) (left!16694 (right!17024 err!3137)))) b!1870817))

(assert (= b!1870818 b!1870819))

(assert (= (and b!1870654 ((_ is Leaf!10109) (left!16694 (right!17024 err!3137)))) b!1870818))

(declare-fun m!2296823 () Bool)

(assert (=> b!1870817 m!2296823))

(declare-fun m!2296825 () Bool)

(assert (=> b!1870817 m!2296825))

(declare-fun m!2296827 () Bool)

(assert (=> b!1870818 m!2296827))

(assert (=> b!1870654 m!2296559))

(declare-fun b!1870820 () Bool)

(declare-fun tp!532207 () Bool)

(declare-fun e!1193555 () Bool)

(declare-fun tp!532206 () Bool)

(assert (=> b!1870820 (= e!1193555 (and (inv!27473 (left!16694 (right!17024 (right!17024 err!3137)))) tp!532207 (inv!27473 (right!17024 (right!17024 (right!17024 err!3137)))) tp!532206))))

(declare-fun b!1870822 () Bool)

(declare-fun e!1193554 () Bool)

(declare-fun tp!532205 () Bool)

(assert (=> b!1870822 (= e!1193554 tp!532205)))

(declare-fun b!1870821 () Bool)

(assert (=> b!1870821 (= e!1193555 (and (inv!27474 (xs!9778 (right!17024 (right!17024 err!3137)))) e!1193554))))

(assert (=> b!1870654 (= tp!532176 (and (inv!27473 (right!17024 (right!17024 err!3137))) e!1193555))))

(assert (= (and b!1870654 ((_ is Node!6894) (right!17024 (right!17024 err!3137)))) b!1870820))

(assert (= b!1870821 b!1870822))

(assert (= (and b!1870654 ((_ is Leaf!10109) (right!17024 (right!17024 err!3137)))) b!1870821))

(declare-fun m!2296829 () Bool)

(assert (=> b!1870820 m!2296829))

(declare-fun m!2296831 () Bool)

(assert (=> b!1870820 m!2296831))

(declare-fun m!2296833 () Bool)

(assert (=> b!1870821 m!2296833))

(assert (=> b!1870654 m!2296561))

(declare-fun b!1870823 () Bool)

(declare-fun tp!532209 () Bool)

(declare-fun tp!532210 () Bool)

(declare-fun e!1193557 () Bool)

(assert (=> b!1870823 (= e!1193557 (and (inv!27473 (left!16694 (left!16694 (left!16694 t!4595)))) tp!532210 (inv!27473 (right!17024 (left!16694 (left!16694 t!4595)))) tp!532209))))

(declare-fun b!1870825 () Bool)

(declare-fun e!1193556 () Bool)

(declare-fun tp!532208 () Bool)

(assert (=> b!1870825 (= e!1193556 tp!532208)))

(declare-fun b!1870824 () Bool)

(assert (=> b!1870824 (= e!1193557 (and (inv!27474 (xs!9778 (left!16694 (left!16694 t!4595)))) e!1193556))))

(assert (=> b!1870635 (= tp!532164 (and (inv!27473 (left!16694 (left!16694 t!4595))) e!1193557))))

(assert (= (and b!1870635 ((_ is Node!6894) (left!16694 (left!16694 t!4595)))) b!1870823))

(assert (= b!1870824 b!1870825))

(assert (= (and b!1870635 ((_ is Leaf!10109) (left!16694 (left!16694 t!4595)))) b!1870824))

(declare-fun m!2296835 () Bool)

(assert (=> b!1870823 m!2296835))

(declare-fun m!2296837 () Bool)

(assert (=> b!1870823 m!2296837))

(declare-fun m!2296839 () Bool)

(assert (=> b!1870824 m!2296839))

(assert (=> b!1870635 m!2296533))

(declare-fun b!1870826 () Bool)

(declare-fun tp!532213 () Bool)

(declare-fun tp!532212 () Bool)

(declare-fun e!1193559 () Bool)

(assert (=> b!1870826 (= e!1193559 (and (inv!27473 (left!16694 (right!17024 (left!16694 t!4595)))) tp!532213 (inv!27473 (right!17024 (right!17024 (left!16694 t!4595)))) tp!532212))))

(declare-fun b!1870828 () Bool)

(declare-fun e!1193558 () Bool)

(declare-fun tp!532211 () Bool)

(assert (=> b!1870828 (= e!1193558 tp!532211)))

(declare-fun b!1870827 () Bool)

(assert (=> b!1870827 (= e!1193559 (and (inv!27474 (xs!9778 (right!17024 (left!16694 t!4595)))) e!1193558))))

(assert (=> b!1870635 (= tp!532163 (and (inv!27473 (right!17024 (left!16694 t!4595))) e!1193559))))

(assert (= (and b!1870635 ((_ is Node!6894) (right!17024 (left!16694 t!4595)))) b!1870826))

(assert (= b!1870827 b!1870828))

(assert (= (and b!1870635 ((_ is Leaf!10109) (right!17024 (left!16694 t!4595)))) b!1870827))

(declare-fun m!2296841 () Bool)

(assert (=> b!1870826 m!2296841))

(declare-fun m!2296843 () Bool)

(assert (=> b!1870826 m!2296843))

(declare-fun m!2296845 () Bool)

(assert (=> b!1870827 m!2296845))

(assert (=> b!1870635 m!2296535))

(declare-fun b!1870829 () Bool)

(declare-fun e!1193560 () Bool)

(declare-fun tp!532214 () Bool)

(assert (=> b!1870829 (= e!1193560 (and tp_is_empty!8705 tp!532214))))

(assert (=> b!1870640 (= tp!532165 e!1193560)))

(assert (= (and b!1870640 ((_ is Cons!20699) (innerList!6954 (xs!9778 (right!17024 t!4595))))) b!1870829))

(declare-fun b!1870830 () Bool)

(declare-fun e!1193561 () Bool)

(declare-fun tp!532215 () Bool)

(assert (=> b!1870830 (= e!1193561 (and tp_is_empty!8705 tp!532215))))

(assert (=> b!1870656 (= tp!532175 e!1193561)))

(assert (= (and b!1870656 ((_ is Cons!20699) (innerList!6954 (xs!9778 (right!17024 err!3137))))) b!1870830))

(declare-fun b!1870831 () Bool)

(declare-fun e!1193562 () Bool)

(declare-fun tp!532216 () Bool)

(assert (=> b!1870831 (= e!1193562 (and tp_is_empty!8705 tp!532216))))

(assert (=> b!1870650 (= tp!532171 e!1193562)))

(assert (= (and b!1870650 ((_ is Cons!20699) (t!172988 (innerList!6954 (xs!9778 t!4595))))) b!1870831))

(declare-fun b!1870832 () Bool)

(declare-fun e!1193563 () Bool)

(declare-fun tp!532217 () Bool)

(assert (=> b!1870832 (= e!1193563 (and tp_is_empty!8705 tp!532217))))

(assert (=> b!1870637 (= tp!532162 e!1193563)))

(assert (= (and b!1870637 ((_ is Cons!20699) (innerList!6954 (xs!9778 (left!16694 t!4595))))) b!1870832))

(declare-fun tp!532220 () Bool)

(declare-fun b!1870833 () Bool)

(declare-fun e!1193565 () Bool)

(declare-fun tp!532219 () Bool)

(assert (=> b!1870833 (= e!1193565 (and (inv!27473 (left!16694 (left!16694 (right!17024 t!4595)))) tp!532220 (inv!27473 (right!17024 (left!16694 (right!17024 t!4595)))) tp!532219))))

(declare-fun b!1870835 () Bool)

(declare-fun e!1193564 () Bool)

(declare-fun tp!532218 () Bool)

(assert (=> b!1870835 (= e!1193564 tp!532218)))

(declare-fun b!1870834 () Bool)

(assert (=> b!1870834 (= e!1193565 (and (inv!27474 (xs!9778 (left!16694 (right!17024 t!4595)))) e!1193564))))

(assert (=> b!1870638 (= tp!532167 (and (inv!27473 (left!16694 (right!17024 t!4595))) e!1193565))))

(assert (= (and b!1870638 ((_ is Node!6894) (left!16694 (right!17024 t!4595)))) b!1870833))

(assert (= b!1870834 b!1870835))

(assert (= (and b!1870638 ((_ is Leaf!10109) (left!16694 (right!17024 t!4595)))) b!1870834))

(declare-fun m!2296847 () Bool)

(assert (=> b!1870833 m!2296847))

(declare-fun m!2296849 () Bool)

(assert (=> b!1870833 m!2296849))

(declare-fun m!2296851 () Bool)

(assert (=> b!1870834 m!2296851))

(assert (=> b!1870638 m!2296539))

(declare-fun tp!532223 () Bool)

(declare-fun tp!532222 () Bool)

(declare-fun e!1193567 () Bool)

(declare-fun b!1870836 () Bool)

(assert (=> b!1870836 (= e!1193567 (and (inv!27473 (left!16694 (right!17024 (right!17024 t!4595)))) tp!532223 (inv!27473 (right!17024 (right!17024 (right!17024 t!4595)))) tp!532222))))

(declare-fun b!1870838 () Bool)

(declare-fun e!1193566 () Bool)

(declare-fun tp!532221 () Bool)

(assert (=> b!1870838 (= e!1193566 tp!532221)))

(declare-fun b!1870837 () Bool)

(assert (=> b!1870837 (= e!1193567 (and (inv!27474 (xs!9778 (right!17024 (right!17024 t!4595)))) e!1193566))))

(assert (=> b!1870638 (= tp!532166 (and (inv!27473 (right!17024 (right!17024 t!4595))) e!1193567))))

(assert (= (and b!1870638 ((_ is Node!6894) (right!17024 (right!17024 t!4595)))) b!1870836))

(assert (= b!1870837 b!1870838))

(assert (= (and b!1870638 ((_ is Leaf!10109) (right!17024 (right!17024 t!4595)))) b!1870837))

(declare-fun m!2296853 () Bool)

(assert (=> b!1870836 m!2296853))

(declare-fun m!2296855 () Bool)

(assert (=> b!1870836 m!2296855))

(declare-fun m!2296857 () Bool)

(assert (=> b!1870837 m!2296857))

(assert (=> b!1870638 m!2296541))

(declare-fun e!1193569 () Bool)

(declare-fun b!1870839 () Bool)

(declare-fun tp!532226 () Bool)

(declare-fun tp!532225 () Bool)

(assert (=> b!1870839 (= e!1193569 (and (inv!27473 (left!16694 (left!16694 (left!16694 err!3137)))) tp!532226 (inv!27473 (right!17024 (left!16694 (left!16694 err!3137)))) tp!532225))))

(declare-fun b!1870841 () Bool)

(declare-fun e!1193568 () Bool)

(declare-fun tp!532224 () Bool)

(assert (=> b!1870841 (= e!1193568 tp!532224)))

(declare-fun b!1870840 () Bool)

(assert (=> b!1870840 (= e!1193569 (and (inv!27474 (xs!9778 (left!16694 (left!16694 err!3137)))) e!1193568))))

(assert (=> b!1870651 (= tp!532174 (and (inv!27473 (left!16694 (left!16694 err!3137))) e!1193569))))

(assert (= (and b!1870651 ((_ is Node!6894) (left!16694 (left!16694 err!3137)))) b!1870839))

(assert (= b!1870840 b!1870841))

(assert (= (and b!1870651 ((_ is Leaf!10109) (left!16694 (left!16694 err!3137)))) b!1870840))

(declare-fun m!2296859 () Bool)

(assert (=> b!1870839 m!2296859))

(declare-fun m!2296861 () Bool)

(assert (=> b!1870839 m!2296861))

(declare-fun m!2296863 () Bool)

(assert (=> b!1870840 m!2296863))

(assert (=> b!1870651 m!2296551))

(declare-fun b!1870842 () Bool)

(declare-fun tp!532228 () Bool)

(declare-fun e!1193571 () Bool)

(declare-fun tp!532229 () Bool)

(assert (=> b!1870842 (= e!1193571 (and (inv!27473 (left!16694 (right!17024 (left!16694 err!3137)))) tp!532229 (inv!27473 (right!17024 (right!17024 (left!16694 err!3137)))) tp!532228))))

(declare-fun b!1870844 () Bool)

(declare-fun e!1193570 () Bool)

(declare-fun tp!532227 () Bool)

(assert (=> b!1870844 (= e!1193570 tp!532227)))

(declare-fun b!1870843 () Bool)

(assert (=> b!1870843 (= e!1193571 (and (inv!27474 (xs!9778 (right!17024 (left!16694 err!3137)))) e!1193570))))

(assert (=> b!1870651 (= tp!532173 (and (inv!27473 (right!17024 (left!16694 err!3137))) e!1193571))))

(assert (= (and b!1870651 ((_ is Node!6894) (right!17024 (left!16694 err!3137)))) b!1870842))

(assert (= b!1870843 b!1870844))

(assert (= (and b!1870651 ((_ is Leaf!10109) (right!17024 (left!16694 err!3137)))) b!1870843))

(declare-fun m!2296865 () Bool)

(assert (=> b!1870842 m!2296865))

(declare-fun m!2296867 () Bool)

(assert (=> b!1870842 m!2296867))

(declare-fun m!2296869 () Bool)

(assert (=> b!1870843 m!2296869))

(assert (=> b!1870651 m!2296553))

(check-sat (not d!571855) (not b!1870826) (not b!1870781) (not d!571893) (not d!571903) (not b!1870786) (not b!1870825) (not b!1870729) (not b!1870728) (not d!571937) (not b!1870654) (not b!1870822) (not b!1870831) (not b!1870839) (not b!1870805) (not b!1870751) (not d!571925) (not b!1870806) (not b!1870802) (not b!1870819) (not b!1870837) (not b!1870769) (not d!571907) (not b!1870716) (not b!1870767) (not b!1870724) (not b!1870718) (not b!1870844) (not b!1870771) (not d!571931) (not d!571857) (not b!1870800) (not b!1870777) (not b!1870841) (not b!1870836) (not b!1870829) (not b!1870760) (not d!571939) (not b!1870746) (not b!1870780) (not b!1870804) (not b!1870807) (not b!1870774) (not b!1870763) (not d!571915) (not b!1870823) (not b!1870691) (not b!1870824) (not b!1870635) (not b!1870817) (not b!1870809) (not d!571879) (not b!1870772) (not b!1870827) (not d!571843) (not b!1870834) (not d!571885) (not b!1870821) (not b!1870842) (not d!571863) (not b!1870790) (not b!1870765) (not d!571875) (not b!1870813) (not b!1870815) (not b!1870794) (not b!1870739) (not b!1870707) (not b!1870704) (not b!1870756) (not d!571861) (not b!1870768) (not b!1870695) (not b!1870748) (not b!1870810) (not b!1870725) (not b!1870761) (not b!1870754) (not d!571895) (not b!1870798) (not b!1870708) (not b!1870820) (not b!1870833) (not d!571905) (not b!1870830) (not b!1870750) (not b!1870832) (not b!1870698) (not b!1870651) (not b!1870816) (not d!571935) (not d!571871) tp_is_empty!8705 (not b!1870793) (not b!1870740) (not b!1870818) (not b!1870720) (not b!1870838) (not b!1870843) (not b!1870796) (not b!1870744) (not b!1870840) (not b!1870791) (not b!1870721) (not b!1870758) (not b!1870693) (not b!1870795) (not b!1870789) (not b!1870835) (not b!1870745) (not d!571909) (not b!1870638) (not b!1870753) (not b!1870696) (not b!1870723) (not d!571887) (not b!1870808) (not d!571859) (not b!1870726) (not b!1870727) (not b!1870770) (not b!1870828) (not b!1870792) (not b!1870785))
(check-sat)
