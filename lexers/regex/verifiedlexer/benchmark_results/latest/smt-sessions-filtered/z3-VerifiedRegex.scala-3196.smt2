; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186396 () Bool)

(assert start!186396)

(declare-fun b!1863419 () Bool)

(declare-fun res!834401 () Bool)

(declare-fun e!1189719 () Bool)

(assert (=> b!1863419 (=> (not res!834401) (not e!1189719))))

(declare-datatypes ((T!33018 0))(
  ( (T!33019 (val!5928 Int)) )
))
(declare-datatypes ((List!20745 0))(
  ( (Nil!20663) (Cons!20663 (h!26064 T!33018) (t!172822 List!20745)) )
))
(declare-datatypes ((IArray!13721 0))(
  ( (IArray!13722 (innerList!6918 List!20745)) )
))
(declare-datatypes ((Conc!6858 0))(
  ( (Node!6858 (left!16640 Conc!6858) (right!16970 Conc!6858) (csize!13946 Int) (cheight!7069 Int)) (Leaf!10055 (xs!9734 IArray!13721) (csize!13947 Int)) (Empty!6858) )
))
(declare-fun t!4595 () Conc!6858)

(get-info :version)

(assert (=> b!1863419 (= res!834401 ((_ is Node!6858) t!4595))))

(declare-fun tp!530828 () Bool)

(declare-fun b!1863420 () Bool)

(declare-fun e!1189716 () Bool)

(declare-fun tp!530829 () Bool)

(declare-fun inv!27283 (Conc!6858) Bool)

(assert (=> b!1863420 (= e!1189716 (and (inv!27283 (left!16640 t!4595)) tp!530829 (inv!27283 (right!16970 t!4595)) tp!530828))))

(declare-fun b!1863421 () Bool)

(declare-fun res!834405 () Bool)

(assert (=> b!1863421 (=> (not res!834405) (not e!1189719))))

(declare-fun isEmpty!12871 (Conc!6858) Bool)

(assert (=> b!1863421 (= res!834405 (not (isEmpty!12871 t!4595)))))

(declare-fun b!1863422 () Bool)

(declare-fun isBalanced!2159 (Conc!6858) Bool)

(assert (=> b!1863422 (= e!1189719 (not (isBalanced!2159 (left!16640 t!4595))))))

(declare-fun lt!718120 () List!20745)

(declare-fun lt!718121 () List!20745)

(declare-fun tail!2815 (List!20745) List!20745)

(declare-fun ++!5586 (List!20745 List!20745) List!20745)

(assert (=> b!1863422 (= (tail!2815 (++!5586 lt!718120 lt!718121)) (++!5586 (tail!2815 lt!718120) lt!718121))))

(declare-datatypes ((Unit!35279 0))(
  ( (Unit!35280) )
))
(declare-fun lt!718119 () Unit!35279)

(declare-fun lemmaTailOfConcatIsTailConcat!30 (List!20745 List!20745) Unit!35279)

(assert (=> b!1863422 (= lt!718119 (lemmaTailOfConcatIsTailConcat!30 lt!718120 lt!718121))))

(declare-fun list!8432 (Conc!6858) List!20745)

(assert (=> b!1863422 (= lt!718121 (list!8432 (right!16970 t!4595)))))

(assert (=> b!1863422 (= lt!718120 (list!8432 (left!16640 t!4595)))))

(declare-fun b!1863423 () Bool)

(declare-fun e!1189717 () Bool)

(declare-fun inv!27284 (IArray!13721) Bool)

(assert (=> b!1863423 (= e!1189716 (and (inv!27284 (xs!9734 t!4595)) e!1189717))))

(declare-fun res!834400 () Bool)

(assert (=> start!186396 (=> (not res!834400) (not e!1189719))))

(assert (=> start!186396 (= res!834400 (isBalanced!2159 t!4595))))

(assert (=> start!186396 e!1189719))

(assert (=> start!186396 (and (inv!27283 t!4595) e!1189716)))

(declare-fun b!1863424 () Bool)

(declare-fun res!834402 () Bool)

(assert (=> b!1863424 (=> (not res!834402) (not e!1189719))))

(declare-fun e!1189718 () Bool)

(assert (=> b!1863424 (= res!834402 e!1189718)))

(declare-fun res!834404 () Bool)

(assert (=> b!1863424 (=> res!834404 e!1189718)))

(assert (=> b!1863424 (= res!834404 (not ((_ is Node!6858) t!4595)))))

(declare-fun b!1863425 () Bool)

(declare-fun res!834403 () Bool)

(assert (=> b!1863425 (=> (not res!834403) (not e!1189719))))

(assert (=> b!1863425 (= res!834403 (not ((_ is Leaf!10055) t!4595)))))

(declare-fun b!1863426 () Bool)

(declare-fun tp!530830 () Bool)

(assert (=> b!1863426 (= e!1189717 tp!530830)))

(declare-fun b!1863427 () Bool)

(assert (=> b!1863427 (= e!1189718 (not (isEmpty!12871 (left!16640 t!4595))))))

(assert (= (and start!186396 res!834400) b!1863421))

(assert (= (and b!1863421 res!834405) b!1863425))

(assert (= (and b!1863425 res!834403) b!1863424))

(assert (= (and b!1863424 (not res!834404)) b!1863427))

(assert (= (and b!1863424 res!834402) b!1863419))

(assert (= (and b!1863419 res!834401) b!1863422))

(assert (= (and start!186396 ((_ is Node!6858) t!4595)) b!1863420))

(assert (= b!1863423 b!1863426))

(assert (= (and start!186396 ((_ is Leaf!10055) t!4595)) b!1863423))

(declare-fun m!2287425 () Bool)

(assert (=> b!1863420 m!2287425))

(declare-fun m!2287427 () Bool)

(assert (=> b!1863420 m!2287427))

(declare-fun m!2287429 () Bool)

(assert (=> b!1863423 m!2287429))

(declare-fun m!2287431 () Bool)

(assert (=> b!1863421 m!2287431))

(declare-fun m!2287433 () Bool)

(assert (=> b!1863427 m!2287433))

(declare-fun m!2287435 () Bool)

(assert (=> start!186396 m!2287435))

(declare-fun m!2287437 () Bool)

(assert (=> start!186396 m!2287437))

(declare-fun m!2287439 () Bool)

(assert (=> b!1863422 m!2287439))

(declare-fun m!2287441 () Bool)

(assert (=> b!1863422 m!2287441))

(declare-fun m!2287443 () Bool)

(assert (=> b!1863422 m!2287443))

(declare-fun m!2287445 () Bool)

(assert (=> b!1863422 m!2287445))

(assert (=> b!1863422 m!2287445))

(declare-fun m!2287447 () Bool)

(assert (=> b!1863422 m!2287447))

(assert (=> b!1863422 m!2287443))

(declare-fun m!2287449 () Bool)

(assert (=> b!1863422 m!2287449))

(declare-fun m!2287451 () Bool)

(assert (=> b!1863422 m!2287451))

(declare-fun m!2287453 () Bool)

(assert (=> b!1863422 m!2287453))

(check-sat (not b!1863427) (not b!1863426) (not start!186396) (not b!1863423) (not b!1863421) (not b!1863420) (not b!1863422))
(check-sat)
(get-model)

(declare-fun b!1863452 () Bool)

(declare-fun e!1189733 () Bool)

(assert (=> b!1863452 (= e!1189733 (not (isEmpty!12871 (right!16970 t!4595))))))

(declare-fun b!1863453 () Bool)

(declare-fun res!834425 () Bool)

(assert (=> b!1863453 (=> (not res!834425) (not e!1189733))))

(assert (=> b!1863453 (= res!834425 (isBalanced!2159 (left!16640 t!4595)))))

(declare-fun b!1863454 () Bool)

(declare-fun e!1189732 () Bool)

(assert (=> b!1863454 (= e!1189732 e!1189733)))

(declare-fun res!834427 () Bool)

(assert (=> b!1863454 (=> (not res!834427) (not e!1189733))))

(declare-fun height!1048 (Conc!6858) Int)

(assert (=> b!1863454 (= res!834427 (<= (- 1) (- (height!1048 (left!16640 t!4595)) (height!1048 (right!16970 t!4595)))))))

(declare-fun d!568799 () Bool)

(declare-fun res!834422 () Bool)

(assert (=> d!568799 (=> res!834422 e!1189732)))

(assert (=> d!568799 (= res!834422 (not ((_ is Node!6858) t!4595)))))

(assert (=> d!568799 (= (isBalanced!2159 t!4595) e!1189732)))

(declare-fun b!1863455 () Bool)

(declare-fun res!834424 () Bool)

(assert (=> b!1863455 (=> (not res!834424) (not e!1189733))))

(assert (=> b!1863455 (= res!834424 (not (isEmpty!12871 (left!16640 t!4595))))))

(declare-fun b!1863456 () Bool)

(declare-fun res!834426 () Bool)

(assert (=> b!1863456 (=> (not res!834426) (not e!1189733))))

(assert (=> b!1863456 (= res!834426 (isBalanced!2159 (right!16970 t!4595)))))

(declare-fun b!1863457 () Bool)

(declare-fun res!834423 () Bool)

(assert (=> b!1863457 (=> (not res!834423) (not e!1189733))))

(assert (=> b!1863457 (= res!834423 (<= (- (height!1048 (left!16640 t!4595)) (height!1048 (right!16970 t!4595))) 1))))

(assert (= (and d!568799 (not res!834422)) b!1863454))

(assert (= (and b!1863454 res!834427) b!1863457))

(assert (= (and b!1863457 res!834423) b!1863453))

(assert (= (and b!1863453 res!834425) b!1863456))

(assert (= (and b!1863456 res!834426) b!1863455))

(assert (= (and b!1863455 res!834424) b!1863452))

(assert (=> b!1863455 m!2287433))

(declare-fun m!2287473 () Bool)

(assert (=> b!1863457 m!2287473))

(declare-fun m!2287475 () Bool)

(assert (=> b!1863457 m!2287475))

(declare-fun m!2287477 () Bool)

(assert (=> b!1863452 m!2287477))

(assert (=> b!1863453 m!2287453))

(assert (=> b!1863454 m!2287473))

(assert (=> b!1863454 m!2287475))

(declare-fun m!2287479 () Bool)

(assert (=> b!1863456 m!2287479))

(assert (=> start!186396 d!568799))

(declare-fun d!568809 () Bool)

(declare-fun c!303488 () Bool)

(assert (=> d!568809 (= c!303488 ((_ is Node!6858) t!4595))))

(declare-fun e!1189742 () Bool)

(assert (=> d!568809 (= (inv!27283 t!4595) e!1189742)))

(declare-fun b!1863472 () Bool)

(declare-fun inv!27287 (Conc!6858) Bool)

(assert (=> b!1863472 (= e!1189742 (inv!27287 t!4595))))

(declare-fun b!1863473 () Bool)

(declare-fun e!1189743 () Bool)

(assert (=> b!1863473 (= e!1189742 e!1189743)))

(declare-fun res!834434 () Bool)

(assert (=> b!1863473 (= res!834434 (not ((_ is Leaf!10055) t!4595)))))

(assert (=> b!1863473 (=> res!834434 e!1189743)))

(declare-fun b!1863474 () Bool)

(declare-fun inv!27288 (Conc!6858) Bool)

(assert (=> b!1863474 (= e!1189743 (inv!27288 t!4595))))

(assert (= (and d!568809 c!303488) b!1863472))

(assert (= (and d!568809 (not c!303488)) b!1863473))

(assert (= (and b!1863473 (not res!834434)) b!1863474))

(declare-fun m!2287481 () Bool)

(assert (=> b!1863472 m!2287481))

(declare-fun m!2287483 () Bool)

(assert (=> b!1863474 m!2287483))

(assert (=> start!186396 d!568809))

(declare-fun d!568811 () Bool)

(declare-fun lt!718131 () Bool)

(declare-fun isEmpty!12873 (List!20745) Bool)

(assert (=> d!568811 (= lt!718131 (isEmpty!12873 (list!8432 t!4595)))))

(declare-fun size!16362 (Conc!6858) Int)

(assert (=> d!568811 (= lt!718131 (= (size!16362 t!4595) 0))))

(assert (=> d!568811 (= (isEmpty!12871 t!4595) lt!718131)))

(declare-fun bs!411604 () Bool)

(assert (= bs!411604 d!568811))

(declare-fun m!2287499 () Bool)

(assert (=> bs!411604 m!2287499))

(assert (=> bs!411604 m!2287499))

(declare-fun m!2287501 () Bool)

(assert (=> bs!411604 m!2287501))

(declare-fun m!2287503 () Bool)

(assert (=> bs!411604 m!2287503))

(assert (=> b!1863421 d!568811))

(declare-fun b!1863500 () Bool)

(declare-fun e!1189756 () List!20745)

(declare-fun e!1189757 () List!20745)

(assert (=> b!1863500 (= e!1189756 e!1189757)))

(declare-fun c!303501 () Bool)

(assert (=> b!1863500 (= c!303501 ((_ is Leaf!10055) (right!16970 t!4595)))))

(declare-fun b!1863499 () Bool)

(assert (=> b!1863499 (= e!1189756 Nil!20663)))

(declare-fun b!1863501 () Bool)

(declare-fun list!8433 (IArray!13721) List!20745)

(assert (=> b!1863501 (= e!1189757 (list!8433 (xs!9734 (right!16970 t!4595))))))

(declare-fun d!568815 () Bool)

(declare-fun c!303500 () Bool)

(assert (=> d!568815 (= c!303500 ((_ is Empty!6858) (right!16970 t!4595)))))

(assert (=> d!568815 (= (list!8432 (right!16970 t!4595)) e!1189756)))

(declare-fun b!1863502 () Bool)

(assert (=> b!1863502 (= e!1189757 (++!5586 (list!8432 (left!16640 (right!16970 t!4595))) (list!8432 (right!16970 (right!16970 t!4595)))))))

(assert (= (and d!568815 c!303500) b!1863499))

(assert (= (and d!568815 (not c!303500)) b!1863500))

(assert (= (and b!1863500 c!303501) b!1863501))

(assert (= (and b!1863500 (not c!303501)) b!1863502))

(declare-fun m!2287513 () Bool)

(assert (=> b!1863501 m!2287513))

(declare-fun m!2287515 () Bool)

(assert (=> b!1863502 m!2287515))

(declare-fun m!2287517 () Bool)

(assert (=> b!1863502 m!2287517))

(assert (=> b!1863502 m!2287515))

(assert (=> b!1863502 m!2287517))

(declare-fun m!2287519 () Bool)

(assert (=> b!1863502 m!2287519))

(assert (=> b!1863422 d!568815))

(declare-fun b!1863519 () Bool)

(declare-fun res!834448 () Bool)

(declare-fun e!1189767 () Bool)

(assert (=> b!1863519 (=> (not res!834448) (not e!1189767))))

(declare-fun lt!718137 () List!20745)

(declare-fun size!16364 (List!20745) Int)

(assert (=> b!1863519 (= res!834448 (= (size!16364 lt!718137) (+ (size!16364 lt!718120) (size!16364 lt!718121))))))

(declare-fun b!1863517 () Bool)

(declare-fun e!1189766 () List!20745)

(assert (=> b!1863517 (= e!1189766 lt!718121)))

(declare-fun b!1863518 () Bool)

(assert (=> b!1863518 (= e!1189766 (Cons!20663 (h!26064 lt!718120) (++!5586 (t!172822 lt!718120) lt!718121)))))

(declare-fun d!568819 () Bool)

(assert (=> d!568819 e!1189767))

(declare-fun res!834447 () Bool)

(assert (=> d!568819 (=> (not res!834447) (not e!1189767))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3069 (List!20745) (InoxSet T!33018))

(assert (=> d!568819 (= res!834447 (= (content!3069 lt!718137) ((_ map or) (content!3069 lt!718120) (content!3069 lt!718121))))))

(assert (=> d!568819 (= lt!718137 e!1189766)))

(declare-fun c!303504 () Bool)

(assert (=> d!568819 (= c!303504 ((_ is Nil!20663) lt!718120))))

(assert (=> d!568819 (= (++!5586 lt!718120 lt!718121) lt!718137)))

(declare-fun b!1863520 () Bool)

(assert (=> b!1863520 (= e!1189767 (or (not (= lt!718121 Nil!20663)) (= lt!718137 lt!718120)))))

(assert (= (and d!568819 c!303504) b!1863517))

(assert (= (and d!568819 (not c!303504)) b!1863518))

(assert (= (and d!568819 res!834447) b!1863519))

(assert (= (and b!1863519 res!834448) b!1863520))

(declare-fun m!2287525 () Bool)

(assert (=> b!1863519 m!2287525))

(declare-fun m!2287527 () Bool)

(assert (=> b!1863519 m!2287527))

(declare-fun m!2287529 () Bool)

(assert (=> b!1863519 m!2287529))

(declare-fun m!2287531 () Bool)

(assert (=> b!1863518 m!2287531))

(declare-fun m!2287533 () Bool)

(assert (=> d!568819 m!2287533))

(declare-fun m!2287535 () Bool)

(assert (=> d!568819 m!2287535))

(declare-fun m!2287537 () Bool)

(assert (=> d!568819 m!2287537))

(assert (=> b!1863422 d!568819))

(declare-fun d!568823 () Bool)

(assert (=> d!568823 (= (tail!2815 (++!5586 lt!718120 lt!718121)) (++!5586 (tail!2815 lt!718120) lt!718121))))

(declare-fun lt!718140 () Unit!35279)

(declare-fun choose!11726 (List!20745 List!20745) Unit!35279)

(assert (=> d!568823 (= lt!718140 (choose!11726 lt!718120 lt!718121))))

(assert (=> d!568823 (not (isEmpty!12873 lt!718120))))

(assert (=> d!568823 (= (lemmaTailOfConcatIsTailConcat!30 lt!718120 lt!718121) lt!718140)))

(declare-fun bs!411606 () Bool)

(assert (= bs!411606 d!568823))

(declare-fun m!2287551 () Bool)

(assert (=> bs!411606 m!2287551))

(assert (=> bs!411606 m!2287443))

(assert (=> bs!411606 m!2287449))

(assert (=> bs!411606 m!2287445))

(assert (=> bs!411606 m!2287447))

(declare-fun m!2287553 () Bool)

(assert (=> bs!411606 m!2287553))

(assert (=> bs!411606 m!2287443))

(assert (=> bs!411606 m!2287445))

(assert (=> b!1863422 d!568823))

(declare-fun b!1863535 () Bool)

(declare-fun res!834462 () Bool)

(declare-fun e!1189771 () Bool)

(assert (=> b!1863535 (=> (not res!834462) (not e!1189771))))

(declare-fun lt!718141 () List!20745)

(assert (=> b!1863535 (= res!834462 (= (size!16364 lt!718141) (+ (size!16364 (tail!2815 lt!718120)) (size!16364 lt!718121))))))

(declare-fun b!1863533 () Bool)

(declare-fun e!1189770 () List!20745)

(assert (=> b!1863533 (= e!1189770 lt!718121)))

(declare-fun b!1863534 () Bool)

(assert (=> b!1863534 (= e!1189770 (Cons!20663 (h!26064 (tail!2815 lt!718120)) (++!5586 (t!172822 (tail!2815 lt!718120)) lt!718121)))))

(declare-fun d!568827 () Bool)

(assert (=> d!568827 e!1189771))

(declare-fun res!834461 () Bool)

(assert (=> d!568827 (=> (not res!834461) (not e!1189771))))

(assert (=> d!568827 (= res!834461 (= (content!3069 lt!718141) ((_ map or) (content!3069 (tail!2815 lt!718120)) (content!3069 lt!718121))))))

(assert (=> d!568827 (= lt!718141 e!1189770)))

(declare-fun c!303505 () Bool)

(assert (=> d!568827 (= c!303505 ((_ is Nil!20663) (tail!2815 lt!718120)))))

(assert (=> d!568827 (= (++!5586 (tail!2815 lt!718120) lt!718121) lt!718141)))

(declare-fun b!1863536 () Bool)

(assert (=> b!1863536 (= e!1189771 (or (not (= lt!718121 Nil!20663)) (= lt!718141 (tail!2815 lt!718120))))))

(assert (= (and d!568827 c!303505) b!1863533))

(assert (= (and d!568827 (not c!303505)) b!1863534))

(assert (= (and d!568827 res!834461) b!1863535))

(assert (= (and b!1863535 res!834462) b!1863536))

(declare-fun m!2287555 () Bool)

(assert (=> b!1863535 m!2287555))

(assert (=> b!1863535 m!2287443))

(declare-fun m!2287557 () Bool)

(assert (=> b!1863535 m!2287557))

(assert (=> b!1863535 m!2287529))

(declare-fun m!2287559 () Bool)

(assert (=> b!1863534 m!2287559))

(declare-fun m!2287561 () Bool)

(assert (=> d!568827 m!2287561))

(assert (=> d!568827 m!2287443))

(declare-fun m!2287563 () Bool)

(assert (=> d!568827 m!2287563))

(assert (=> d!568827 m!2287537))

(assert (=> b!1863422 d!568827))

(declare-fun b!1863541 () Bool)

(declare-fun e!1189775 () Bool)

(assert (=> b!1863541 (= e!1189775 (not (isEmpty!12871 (right!16970 (left!16640 t!4595)))))))

(declare-fun b!1863542 () Bool)

(declare-fun res!834466 () Bool)

(assert (=> b!1863542 (=> (not res!834466) (not e!1189775))))

(assert (=> b!1863542 (= res!834466 (isBalanced!2159 (left!16640 (left!16640 t!4595))))))

(declare-fun b!1863543 () Bool)

(declare-fun e!1189774 () Bool)

(assert (=> b!1863543 (= e!1189774 e!1189775)))

(declare-fun res!834468 () Bool)

(assert (=> b!1863543 (=> (not res!834468) (not e!1189775))))

(assert (=> b!1863543 (= res!834468 (<= (- 1) (- (height!1048 (left!16640 (left!16640 t!4595))) (height!1048 (right!16970 (left!16640 t!4595))))))))

(declare-fun d!568831 () Bool)

(declare-fun res!834463 () Bool)

(assert (=> d!568831 (=> res!834463 e!1189774)))

(assert (=> d!568831 (= res!834463 (not ((_ is Node!6858) (left!16640 t!4595))))))

(assert (=> d!568831 (= (isBalanced!2159 (left!16640 t!4595)) e!1189774)))

(declare-fun b!1863544 () Bool)

(declare-fun res!834465 () Bool)

(assert (=> b!1863544 (=> (not res!834465) (not e!1189775))))

(assert (=> b!1863544 (= res!834465 (not (isEmpty!12871 (left!16640 (left!16640 t!4595)))))))

(declare-fun b!1863545 () Bool)

(declare-fun res!834467 () Bool)

(assert (=> b!1863545 (=> (not res!834467) (not e!1189775))))

(assert (=> b!1863545 (= res!834467 (isBalanced!2159 (right!16970 (left!16640 t!4595))))))

(declare-fun b!1863546 () Bool)

(declare-fun res!834464 () Bool)

(assert (=> b!1863546 (=> (not res!834464) (not e!1189775))))

(assert (=> b!1863546 (= res!834464 (<= (- (height!1048 (left!16640 (left!16640 t!4595))) (height!1048 (right!16970 (left!16640 t!4595)))) 1))))

(assert (= (and d!568831 (not res!834463)) b!1863543))

(assert (= (and b!1863543 res!834468) b!1863546))

(assert (= (and b!1863546 res!834464) b!1863542))

(assert (= (and b!1863542 res!834466) b!1863545))

(assert (= (and b!1863545 res!834467) b!1863544))

(assert (= (and b!1863544 res!834465) b!1863541))

(declare-fun m!2287573 () Bool)

(assert (=> b!1863544 m!2287573))

(declare-fun m!2287575 () Bool)

(assert (=> b!1863546 m!2287575))

(declare-fun m!2287577 () Bool)

(assert (=> b!1863546 m!2287577))

(declare-fun m!2287579 () Bool)

(assert (=> b!1863541 m!2287579))

(declare-fun m!2287581 () Bool)

(assert (=> b!1863542 m!2287581))

(assert (=> b!1863543 m!2287575))

(assert (=> b!1863543 m!2287577))

(declare-fun m!2287587 () Bool)

(assert (=> b!1863545 m!2287587))

(assert (=> b!1863422 d!568831))

(declare-fun b!1863552 () Bool)

(declare-fun e!1189778 () List!20745)

(declare-fun e!1189779 () List!20745)

(assert (=> b!1863552 (= e!1189778 e!1189779)))

(declare-fun c!303510 () Bool)

(assert (=> b!1863552 (= c!303510 ((_ is Leaf!10055) (left!16640 t!4595)))))

(declare-fun b!1863551 () Bool)

(assert (=> b!1863551 (= e!1189778 Nil!20663)))

(declare-fun b!1863553 () Bool)

(assert (=> b!1863553 (= e!1189779 (list!8433 (xs!9734 (left!16640 t!4595))))))

(declare-fun d!568837 () Bool)

(declare-fun c!303509 () Bool)

(assert (=> d!568837 (= c!303509 ((_ is Empty!6858) (left!16640 t!4595)))))

(assert (=> d!568837 (= (list!8432 (left!16640 t!4595)) e!1189778)))

(declare-fun b!1863554 () Bool)

(assert (=> b!1863554 (= e!1189779 (++!5586 (list!8432 (left!16640 (left!16640 t!4595))) (list!8432 (right!16970 (left!16640 t!4595)))))))

(assert (= (and d!568837 c!303509) b!1863551))

(assert (= (and d!568837 (not c!303509)) b!1863552))

(assert (= (and b!1863552 c!303510) b!1863553))

(assert (= (and b!1863552 (not c!303510)) b!1863554))

(declare-fun m!2287595 () Bool)

(assert (=> b!1863553 m!2287595))

(declare-fun m!2287597 () Bool)

(assert (=> b!1863554 m!2287597))

(declare-fun m!2287599 () Bool)

(assert (=> b!1863554 m!2287599))

(assert (=> b!1863554 m!2287597))

(assert (=> b!1863554 m!2287599))

(declare-fun m!2287601 () Bool)

(assert (=> b!1863554 m!2287601))

(assert (=> b!1863422 d!568837))

(declare-fun d!568841 () Bool)

(assert (=> d!568841 (= (tail!2815 lt!718120) (t!172822 lt!718120))))

(assert (=> b!1863422 d!568841))

(declare-fun d!568845 () Bool)

(assert (=> d!568845 (= (tail!2815 (++!5586 lt!718120 lt!718121)) (t!172822 (++!5586 lt!718120 lt!718121)))))

(assert (=> b!1863422 d!568845))

(declare-fun d!568849 () Bool)

(declare-fun lt!718143 () Bool)

(assert (=> d!568849 (= lt!718143 (isEmpty!12873 (list!8432 (left!16640 t!4595))))))

(assert (=> d!568849 (= lt!718143 (= (size!16362 (left!16640 t!4595)) 0))))

(assert (=> d!568849 (= (isEmpty!12871 (left!16640 t!4595)) lt!718143)))

(declare-fun bs!411607 () Bool)

(assert (= bs!411607 d!568849))

(assert (=> bs!411607 m!2287439))

(assert (=> bs!411607 m!2287439))

(declare-fun m!2287615 () Bool)

(assert (=> bs!411607 m!2287615))

(declare-fun m!2287617 () Bool)

(assert (=> bs!411607 m!2287617))

(assert (=> b!1863427 d!568849))

(declare-fun d!568851 () Bool)

(assert (=> d!568851 (= (inv!27284 (xs!9734 t!4595)) (<= (size!16364 (innerList!6918 (xs!9734 t!4595))) 2147483647))))

(declare-fun bs!411609 () Bool)

(assert (= bs!411609 d!568851))

(declare-fun m!2287621 () Bool)

(assert (=> bs!411609 m!2287621))

(assert (=> b!1863423 d!568851))

(declare-fun d!568853 () Bool)

(declare-fun c!303512 () Bool)

(assert (=> d!568853 (= c!303512 ((_ is Node!6858) (left!16640 t!4595)))))

(declare-fun e!1189786 () Bool)

(assert (=> d!568853 (= (inv!27283 (left!16640 t!4595)) e!1189786)))

(declare-fun b!1863568 () Bool)

(assert (=> b!1863568 (= e!1189786 (inv!27287 (left!16640 t!4595)))))

(declare-fun b!1863569 () Bool)

(declare-fun e!1189787 () Bool)

(assert (=> b!1863569 (= e!1189786 e!1189787)))

(declare-fun res!834478 () Bool)

(assert (=> b!1863569 (= res!834478 (not ((_ is Leaf!10055) (left!16640 t!4595))))))

(assert (=> b!1863569 (=> res!834478 e!1189787)))

(declare-fun b!1863570 () Bool)

(assert (=> b!1863570 (= e!1189787 (inv!27288 (left!16640 t!4595)))))

(assert (= (and d!568853 c!303512) b!1863568))

(assert (= (and d!568853 (not c!303512)) b!1863569))

(assert (= (and b!1863569 (not res!834478)) b!1863570))

(declare-fun m!2287623 () Bool)

(assert (=> b!1863568 m!2287623))

(declare-fun m!2287625 () Bool)

(assert (=> b!1863570 m!2287625))

(assert (=> b!1863420 d!568853))

(declare-fun d!568855 () Bool)

(declare-fun c!303513 () Bool)

(assert (=> d!568855 (= c!303513 ((_ is Node!6858) (right!16970 t!4595)))))

(declare-fun e!1189790 () Bool)

(assert (=> d!568855 (= (inv!27283 (right!16970 t!4595)) e!1189790)))

(declare-fun b!1863575 () Bool)

(assert (=> b!1863575 (= e!1189790 (inv!27287 (right!16970 t!4595)))))

(declare-fun b!1863576 () Bool)

(declare-fun e!1189791 () Bool)

(assert (=> b!1863576 (= e!1189790 e!1189791)))

(declare-fun res!834479 () Bool)

(assert (=> b!1863576 (= res!834479 (not ((_ is Leaf!10055) (right!16970 t!4595))))))

(assert (=> b!1863576 (=> res!834479 e!1189791)))

(declare-fun b!1863577 () Bool)

(assert (=> b!1863577 (= e!1189791 (inv!27288 (right!16970 t!4595)))))

(assert (= (and d!568855 c!303513) b!1863575))

(assert (= (and d!568855 (not c!303513)) b!1863576))

(assert (= (and b!1863576 (not res!834479)) b!1863577))

(declare-fun m!2287627 () Bool)

(assert (=> b!1863575 m!2287627))

(declare-fun m!2287629 () Bool)

(assert (=> b!1863577 m!2287629))

(assert (=> b!1863420 d!568855))

(declare-fun b!1863582 () Bool)

(declare-fun e!1189794 () Bool)

(declare-fun tp_is_empty!8641 () Bool)

(declare-fun tp!530839 () Bool)

(assert (=> b!1863582 (= e!1189794 (and tp_is_empty!8641 tp!530839))))

(assert (=> b!1863426 (= tp!530830 e!1189794)))

(assert (= (and b!1863426 ((_ is Cons!20663) (innerList!6918 (xs!9734 t!4595)))) b!1863582))

(declare-fun tp!530855 () Bool)

(declare-fun tp!530857 () Bool)

(declare-fun e!1189806 () Bool)

(declare-fun b!1863602 () Bool)

(assert (=> b!1863602 (= e!1189806 (and (inv!27283 (left!16640 (left!16640 t!4595))) tp!530857 (inv!27283 (right!16970 (left!16640 t!4595))) tp!530855))))

(declare-fun b!1863604 () Bool)

(declare-fun e!1189807 () Bool)

(declare-fun tp!530856 () Bool)

(assert (=> b!1863604 (= e!1189807 tp!530856)))

(declare-fun b!1863603 () Bool)

(assert (=> b!1863603 (= e!1189806 (and (inv!27284 (xs!9734 (left!16640 t!4595))) e!1189807))))

(assert (=> b!1863420 (= tp!530829 (and (inv!27283 (left!16640 t!4595)) e!1189806))))

(assert (= (and b!1863420 ((_ is Node!6858) (left!16640 t!4595))) b!1863602))

(assert (= b!1863603 b!1863604))

(assert (= (and b!1863420 ((_ is Leaf!10055) (left!16640 t!4595))) b!1863603))

(declare-fun m!2287643 () Bool)

(assert (=> b!1863602 m!2287643))

(declare-fun m!2287645 () Bool)

(assert (=> b!1863602 m!2287645))

(declare-fun m!2287647 () Bool)

(assert (=> b!1863603 m!2287647))

(assert (=> b!1863420 m!2287425))

(declare-fun tp!530858 () Bool)

(declare-fun tp!530860 () Bool)

(declare-fun e!1189808 () Bool)

(declare-fun b!1863605 () Bool)

(assert (=> b!1863605 (= e!1189808 (and (inv!27283 (left!16640 (right!16970 t!4595))) tp!530860 (inv!27283 (right!16970 (right!16970 t!4595))) tp!530858))))

(declare-fun b!1863607 () Bool)

(declare-fun e!1189809 () Bool)

(declare-fun tp!530859 () Bool)

(assert (=> b!1863607 (= e!1189809 tp!530859)))

(declare-fun b!1863606 () Bool)

(assert (=> b!1863606 (= e!1189808 (and (inv!27284 (xs!9734 (right!16970 t!4595))) e!1189809))))

(assert (=> b!1863420 (= tp!530828 (and (inv!27283 (right!16970 t!4595)) e!1189808))))

(assert (= (and b!1863420 ((_ is Node!6858) (right!16970 t!4595))) b!1863605))

(assert (= b!1863606 b!1863607))

(assert (= (and b!1863420 ((_ is Leaf!10055) (right!16970 t!4595))) b!1863606))

(declare-fun m!2287649 () Bool)

(assert (=> b!1863605 m!2287649))

(declare-fun m!2287651 () Bool)

(assert (=> b!1863605 m!2287651))

(declare-fun m!2287653 () Bool)

(assert (=> b!1863606 m!2287653))

(assert (=> b!1863420 m!2287427))

(check-sat (not d!568811) (not b!1863502) (not b!1863453) (not d!568823) (not b!1863542) (not b!1863554) (not b!1863474) (not b!1863534) (not b!1863546) (not b!1863602) (not b!1863575) (not b!1863455) (not b!1863607) (not b!1863577) (not b!1863518) (not b!1863553) (not d!568827) (not b!1863457) (not b!1863501) (not b!1863605) (not b!1863603) (not b!1863570) tp_is_empty!8641 (not b!1863454) (not b!1863582) (not b!1863606) (not d!568819) (not b!1863545) (not b!1863472) (not b!1863568) (not b!1863519) (not b!1863452) (not b!1863543) (not d!568849) (not b!1863541) (not d!568851) (not b!1863544) (not b!1863456) (not b!1863420) (not b!1863535) (not b!1863604))
(check-sat)
