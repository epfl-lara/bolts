; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105784 () Bool)

(assert start!105784)

(declare-datatypes ((T!21432 0))(
  ( (T!21433 (val!3838 Int)) )
))
(declare-datatypes ((List!12017 0))(
  ( (Nil!11993) (Cons!11993 (h!17394 T!21432) (t!112223 List!12017)) )
))
(declare-datatypes ((IArray!7857 0))(
  ( (IArray!7858 (innerList!3986 List!12017)) )
))
(declare-datatypes ((Conc!3926 0))(
  ( (Node!3926 (left!10437 Conc!3926) (right!10767 Conc!3926) (csize!8082 Int) (cheight!4137 Int)) (Leaf!6014 (xs!6631 IArray!7857) (csize!8083 Int)) (Empty!3926) )
))
(declare-fun t!4115 () Conc!3926)

(declare-fun b!1190491 () Bool)

(declare-fun tp!339750 () Bool)

(declare-fun e!765407 () Bool)

(declare-fun tp!339751 () Bool)

(declare-fun inv!15856 (Conc!3926) Bool)

(assert (=> b!1190491 (= e!765407 (and (inv!15856 (left!10437 t!4115)) tp!339751 (inv!15856 (right!10767 t!4115)) tp!339750))))

(declare-fun b!1190492 () Bool)

(declare-fun res!537790 () Bool)

(declare-fun e!765408 () Bool)

(assert (=> b!1190492 (=> (not res!537790) (not e!765408))))

(declare-fun until!31 () Int)

(declare-fun size!9466 (Conc!3926) Int)

(assert (=> b!1190492 (= res!537790 (<= until!31 (size!9466 t!4115)))))

(declare-fun b!1190493 () Bool)

(declare-fun res!537794 () Bool)

(assert (=> b!1190493 (=> (not res!537794) (not e!765408))))

(declare-fun isBalanced!1111 (Conc!3926) Bool)

(assert (=> b!1190493 (= res!537794 (isBalanced!1111 t!4115))))

(declare-fun b!1190494 () Bool)

(declare-fun res!537792 () Bool)

(assert (=> b!1190494 (=> (not res!537792) (not e!765408))))

(assert (=> b!1190494 (= res!537792 (isBalanced!1111 Empty!3926))))

(declare-fun b!1190495 () Bool)

(declare-fun size!9467 (List!12017) Int)

(declare-fun list!4399 (Conc!3926) List!12017)

(assert (=> b!1190495 (= e!765408 (> until!31 (size!9467 (list!4399 t!4115))))))

(declare-fun b!1190496 () Bool)

(declare-fun e!765406 () Bool)

(declare-fun inv!15857 (IArray!7857) Bool)

(assert (=> b!1190496 (= e!765407 (and (inv!15857 (xs!6631 t!4115)) e!765406))))

(declare-fun b!1190497 () Bool)

(declare-fun tp!339749 () Bool)

(assert (=> b!1190497 (= e!765406 tp!339749)))

(declare-fun res!537793 () Bool)

(assert (=> start!105784 (=> (not res!537793) (not e!765408))))

(declare-fun from!553 () Int)

(assert (=> start!105784 (= res!537793 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105784 e!765408))

(assert (=> start!105784 true))

(assert (=> start!105784 (and (inv!15856 t!4115) e!765407)))

(declare-fun b!1190498 () Bool)

(declare-fun res!537791 () Bool)

(assert (=> b!1190498 (=> (not res!537791) (not e!765408))))

(assert (=> b!1190498 (= res!537791 (= from!553 until!31))))

(assert (= (and start!105784 res!537793) b!1190492))

(assert (= (and b!1190492 res!537790) b!1190493))

(assert (= (and b!1190493 res!537794) b!1190498))

(assert (= (and b!1190498 res!537791) b!1190494))

(assert (= (and b!1190494 res!537792) b!1190495))

(get-info :version)

(assert (= (and start!105784 ((_ is Node!3926) t!4115)) b!1190491))

(assert (= b!1190496 b!1190497))

(assert (= (and start!105784 ((_ is Leaf!6014) t!4115)) b!1190496))

(declare-fun m!1365489 () Bool)

(assert (=> b!1190492 m!1365489))

(declare-fun m!1365491 () Bool)

(assert (=> b!1190496 m!1365491))

(declare-fun m!1365493 () Bool)

(assert (=> b!1190495 m!1365493))

(assert (=> b!1190495 m!1365493))

(declare-fun m!1365495 () Bool)

(assert (=> b!1190495 m!1365495))

(declare-fun m!1365497 () Bool)

(assert (=> b!1190493 m!1365497))

(declare-fun m!1365499 () Bool)

(assert (=> b!1190491 m!1365499))

(declare-fun m!1365501 () Bool)

(assert (=> b!1190491 m!1365501))

(declare-fun m!1365503 () Bool)

(assert (=> start!105784 m!1365503))

(declare-fun m!1365505 () Bool)

(assert (=> b!1190494 m!1365505))

(check-sat (not b!1190495) (not b!1190493) (not b!1190494) (not b!1190492) (not start!105784) (not b!1190491) (not b!1190497) (not b!1190496))
(check-sat)
(get-model)

(declare-fun d!340194 () Bool)

(declare-fun lt!409189 () Int)

(assert (=> d!340194 (>= lt!409189 0)))

(declare-fun e!765411 () Int)

(assert (=> d!340194 (= lt!409189 e!765411)))

(declare-fun c!197587 () Bool)

(assert (=> d!340194 (= c!197587 ((_ is Nil!11993) (list!4399 t!4115)))))

(assert (=> d!340194 (= (size!9467 (list!4399 t!4115)) lt!409189)))

(declare-fun b!1190503 () Bool)

(assert (=> b!1190503 (= e!765411 0)))

(declare-fun b!1190504 () Bool)

(assert (=> b!1190504 (= e!765411 (+ 1 (size!9467 (t!112223 (list!4399 t!4115)))))))

(assert (= (and d!340194 c!197587) b!1190503))

(assert (= (and d!340194 (not c!197587)) b!1190504))

(declare-fun m!1365507 () Bool)

(assert (=> b!1190504 m!1365507))

(assert (=> b!1190495 d!340194))

(declare-fun b!1190519 () Bool)

(declare-fun e!765421 () List!12017)

(declare-fun list!4400 (IArray!7857) List!12017)

(assert (=> b!1190519 (= e!765421 (list!4400 (xs!6631 t!4115)))))

(declare-fun b!1190520 () Bool)

(declare-fun ++!3029 (List!12017 List!12017) List!12017)

(assert (=> b!1190520 (= e!765421 (++!3029 (list!4399 (left!10437 t!4115)) (list!4399 (right!10767 t!4115))))))

(declare-fun b!1190518 () Bool)

(declare-fun e!765420 () List!12017)

(assert (=> b!1190518 (= e!765420 e!765421)))

(declare-fun c!197593 () Bool)

(assert (=> b!1190518 (= c!197593 ((_ is Leaf!6014) t!4115))))

(declare-fun b!1190517 () Bool)

(assert (=> b!1190517 (= e!765420 Nil!11993)))

(declare-fun d!340198 () Bool)

(declare-fun c!197592 () Bool)

(assert (=> d!340198 (= c!197592 ((_ is Empty!3926) t!4115))))

(assert (=> d!340198 (= (list!4399 t!4115) e!765420)))

(assert (= (and d!340198 c!197592) b!1190517))

(assert (= (and d!340198 (not c!197592)) b!1190518))

(assert (= (and b!1190518 c!197593) b!1190519))

(assert (= (and b!1190518 (not c!197593)) b!1190520))

(declare-fun m!1365511 () Bool)

(assert (=> b!1190519 m!1365511))

(declare-fun m!1365513 () Bool)

(assert (=> b!1190520 m!1365513))

(declare-fun m!1365515 () Bool)

(assert (=> b!1190520 m!1365515))

(assert (=> b!1190520 m!1365513))

(assert (=> b!1190520 m!1365515))

(declare-fun m!1365517 () Bool)

(assert (=> b!1190520 m!1365517))

(assert (=> b!1190495 d!340198))

(declare-fun d!340204 () Bool)

(declare-fun c!197596 () Bool)

(assert (=> d!340204 (= c!197596 ((_ is Node!3926) t!4115))))

(declare-fun e!765430 () Bool)

(assert (=> d!340204 (= (inv!15856 t!4115) e!765430)))

(declare-fun b!1190547 () Bool)

(declare-fun inv!15858 (Conc!3926) Bool)

(assert (=> b!1190547 (= e!765430 (inv!15858 t!4115))))

(declare-fun b!1190548 () Bool)

(declare-fun e!765431 () Bool)

(assert (=> b!1190548 (= e!765430 e!765431)))

(declare-fun res!537821 () Bool)

(assert (=> b!1190548 (= res!537821 (not ((_ is Leaf!6014) t!4115)))))

(assert (=> b!1190548 (=> res!537821 e!765431)))

(declare-fun b!1190549 () Bool)

(declare-fun inv!15859 (Conc!3926) Bool)

(assert (=> b!1190549 (= e!765431 (inv!15859 t!4115))))

(assert (= (and d!340204 c!197596) b!1190547))

(assert (= (and d!340204 (not c!197596)) b!1190548))

(assert (= (and b!1190548 (not res!537821)) b!1190549))

(declare-fun m!1365543 () Bool)

(assert (=> b!1190547 m!1365543))

(declare-fun m!1365545 () Bool)

(assert (=> b!1190549 m!1365545))

(assert (=> start!105784 d!340204))

(declare-fun b!1190577 () Bool)

(declare-fun e!765443 () Bool)

(declare-fun e!765444 () Bool)

(assert (=> b!1190577 (= e!765443 e!765444)))

(declare-fun res!537835 () Bool)

(assert (=> b!1190577 (=> (not res!537835) (not e!765444))))

(declare-fun height!528 (Conc!3926) Int)

(assert (=> b!1190577 (= res!537835 (<= (- 1) (- (height!528 (left!10437 Empty!3926)) (height!528 (right!10767 Empty!3926)))))))

(declare-fun b!1190578 () Bool)

(declare-fun res!537838 () Bool)

(assert (=> b!1190578 (=> (not res!537838) (not e!765444))))

(assert (=> b!1190578 (= res!537838 (isBalanced!1111 (right!10767 Empty!3926)))))

(declare-fun b!1190579 () Bool)

(declare-fun isEmpty!7207 (Conc!3926) Bool)

(assert (=> b!1190579 (= e!765444 (not (isEmpty!7207 (right!10767 Empty!3926))))))

(declare-fun b!1190576 () Bool)

(declare-fun res!537839 () Bool)

(assert (=> b!1190576 (=> (not res!537839) (not e!765444))))

(assert (=> b!1190576 (= res!537839 (not (isEmpty!7207 (left!10437 Empty!3926))))))

(declare-fun d!340210 () Bool)

(declare-fun res!537834 () Bool)

(assert (=> d!340210 (=> res!537834 e!765443)))

(assert (=> d!340210 (= res!537834 (not ((_ is Node!3926) Empty!3926)))))

(assert (=> d!340210 (= (isBalanced!1111 Empty!3926) e!765443)))

(declare-fun b!1190581 () Bool)

(declare-fun res!537837 () Bool)

(assert (=> b!1190581 (=> (not res!537837) (not e!765444))))

(assert (=> b!1190581 (= res!537837 (isBalanced!1111 (left!10437 Empty!3926)))))

(declare-fun b!1190583 () Bool)

(declare-fun res!537836 () Bool)

(assert (=> b!1190583 (=> (not res!537836) (not e!765444))))

(assert (=> b!1190583 (= res!537836 (<= (- (height!528 (left!10437 Empty!3926)) (height!528 (right!10767 Empty!3926))) 1))))

(assert (= (and d!340210 (not res!537834)) b!1190577))

(assert (= (and b!1190577 res!537835) b!1190583))

(assert (= (and b!1190583 res!537836) b!1190581))

(assert (= (and b!1190581 res!537837) b!1190578))

(assert (= (and b!1190578 res!537838) b!1190576))

(assert (= (and b!1190576 res!537839) b!1190579))

(declare-fun m!1365557 () Bool)

(assert (=> b!1190583 m!1365557))

(declare-fun m!1365559 () Bool)

(assert (=> b!1190583 m!1365559))

(declare-fun m!1365561 () Bool)

(assert (=> b!1190576 m!1365561))

(assert (=> b!1190577 m!1365557))

(assert (=> b!1190577 m!1365559))

(declare-fun m!1365563 () Bool)

(assert (=> b!1190581 m!1365563))

(declare-fun m!1365565 () Bool)

(assert (=> b!1190579 m!1365565))

(declare-fun m!1365567 () Bool)

(assert (=> b!1190578 m!1365567))

(assert (=> b!1190494 d!340210))

(declare-fun d!340216 () Bool)

(declare-fun lt!409196 () Int)

(assert (=> d!340216 (= lt!409196 (size!9467 (list!4399 t!4115)))))

(assert (=> d!340216 (= lt!409196 (ite ((_ is Empty!3926) t!4115) 0 (ite ((_ is Leaf!6014) t!4115) (csize!8083 t!4115) (csize!8082 t!4115))))))

(assert (=> d!340216 (= (size!9466 t!4115) lt!409196)))

(declare-fun bs!287863 () Bool)

(assert (= bs!287863 d!340216))

(assert (=> bs!287863 m!1365493))

(assert (=> bs!287863 m!1365493))

(assert (=> bs!287863 m!1365495))

(assert (=> b!1190492 d!340216))

(declare-fun b!1190591 () Bool)

(declare-fun e!765449 () Bool)

(declare-fun e!765450 () Bool)

(assert (=> b!1190591 (= e!765449 e!765450)))

(declare-fun res!537841 () Bool)

(assert (=> b!1190591 (=> (not res!537841) (not e!765450))))

(assert (=> b!1190591 (= res!537841 (<= (- 1) (- (height!528 (left!10437 t!4115)) (height!528 (right!10767 t!4115)))))))

(declare-fun b!1190592 () Bool)

(declare-fun res!537844 () Bool)

(assert (=> b!1190592 (=> (not res!537844) (not e!765450))))

(assert (=> b!1190592 (= res!537844 (isBalanced!1111 (right!10767 t!4115)))))

(declare-fun b!1190593 () Bool)

(assert (=> b!1190593 (= e!765450 (not (isEmpty!7207 (right!10767 t!4115))))))

(declare-fun b!1190590 () Bool)

(declare-fun res!537845 () Bool)

(assert (=> b!1190590 (=> (not res!537845) (not e!765450))))

(assert (=> b!1190590 (= res!537845 (not (isEmpty!7207 (left!10437 t!4115))))))

(declare-fun d!340218 () Bool)

(declare-fun res!537840 () Bool)

(assert (=> d!340218 (=> res!537840 e!765449)))

(assert (=> d!340218 (= res!537840 (not ((_ is Node!3926) t!4115)))))

(assert (=> d!340218 (= (isBalanced!1111 t!4115) e!765449)))

(declare-fun b!1190594 () Bool)

(declare-fun res!537843 () Bool)

(assert (=> b!1190594 (=> (not res!537843) (not e!765450))))

(assert (=> b!1190594 (= res!537843 (isBalanced!1111 (left!10437 t!4115)))))

(declare-fun b!1190595 () Bool)

(declare-fun res!537842 () Bool)

(assert (=> b!1190595 (=> (not res!537842) (not e!765450))))

(assert (=> b!1190595 (= res!537842 (<= (- (height!528 (left!10437 t!4115)) (height!528 (right!10767 t!4115))) 1))))

(assert (= (and d!340218 (not res!537840)) b!1190591))

(assert (= (and b!1190591 res!537841) b!1190595))

(assert (= (and b!1190595 res!537842) b!1190594))

(assert (= (and b!1190594 res!537843) b!1190592))

(assert (= (and b!1190592 res!537844) b!1190590))

(assert (= (and b!1190590 res!537845) b!1190593))

(declare-fun m!1365569 () Bool)

(assert (=> b!1190595 m!1365569))

(declare-fun m!1365571 () Bool)

(assert (=> b!1190595 m!1365571))

(declare-fun m!1365573 () Bool)

(assert (=> b!1190590 m!1365573))

(assert (=> b!1190591 m!1365569))

(assert (=> b!1190591 m!1365571))

(declare-fun m!1365575 () Bool)

(assert (=> b!1190594 m!1365575))

(declare-fun m!1365577 () Bool)

(assert (=> b!1190593 m!1365577))

(declare-fun m!1365579 () Bool)

(assert (=> b!1190592 m!1365579))

(assert (=> b!1190493 d!340218))

(declare-fun d!340220 () Bool)

(declare-fun c!197608 () Bool)

(assert (=> d!340220 (= c!197608 ((_ is Node!3926) (left!10437 t!4115)))))

(declare-fun e!765453 () Bool)

(assert (=> d!340220 (= (inv!15856 (left!10437 t!4115)) e!765453)))

(declare-fun b!1190598 () Bool)

(assert (=> b!1190598 (= e!765453 (inv!15858 (left!10437 t!4115)))))

(declare-fun b!1190599 () Bool)

(declare-fun e!765454 () Bool)

(assert (=> b!1190599 (= e!765453 e!765454)))

(declare-fun res!537848 () Bool)

(assert (=> b!1190599 (= res!537848 (not ((_ is Leaf!6014) (left!10437 t!4115))))))

(assert (=> b!1190599 (=> res!537848 e!765454)))

(declare-fun b!1190600 () Bool)

(assert (=> b!1190600 (= e!765454 (inv!15859 (left!10437 t!4115)))))

(assert (= (and d!340220 c!197608) b!1190598))

(assert (= (and d!340220 (not c!197608)) b!1190599))

(assert (= (and b!1190599 (not res!537848)) b!1190600))

(declare-fun m!1365581 () Bool)

(assert (=> b!1190598 m!1365581))

(declare-fun m!1365583 () Bool)

(assert (=> b!1190600 m!1365583))

(assert (=> b!1190491 d!340220))

(declare-fun d!340222 () Bool)

(declare-fun c!197609 () Bool)

(assert (=> d!340222 (= c!197609 ((_ is Node!3926) (right!10767 t!4115)))))

(declare-fun e!765455 () Bool)

(assert (=> d!340222 (= (inv!15856 (right!10767 t!4115)) e!765455)))

(declare-fun b!1190601 () Bool)

(assert (=> b!1190601 (= e!765455 (inv!15858 (right!10767 t!4115)))))

(declare-fun b!1190602 () Bool)

(declare-fun e!765456 () Bool)

(assert (=> b!1190602 (= e!765455 e!765456)))

(declare-fun res!537849 () Bool)

(assert (=> b!1190602 (= res!537849 (not ((_ is Leaf!6014) (right!10767 t!4115))))))

(assert (=> b!1190602 (=> res!537849 e!765456)))

(declare-fun b!1190603 () Bool)

(assert (=> b!1190603 (= e!765456 (inv!15859 (right!10767 t!4115)))))

(assert (= (and d!340222 c!197609) b!1190601))

(assert (= (and d!340222 (not c!197609)) b!1190602))

(assert (= (and b!1190602 (not res!537849)) b!1190603))

(declare-fun m!1365585 () Bool)

(assert (=> b!1190601 m!1365585))

(declare-fun m!1365587 () Bool)

(assert (=> b!1190603 m!1365587))

(assert (=> b!1190491 d!340222))

(declare-fun d!340224 () Bool)

(assert (=> d!340224 (= (inv!15857 (xs!6631 t!4115)) (<= (size!9467 (innerList!3986 (xs!6631 t!4115))) 2147483647))))

(declare-fun bs!287864 () Bool)

(assert (= bs!287864 d!340224))

(declare-fun m!1365601 () Bool)

(assert (=> bs!287864 m!1365601))

(assert (=> b!1190496 d!340224))

(declare-fun tp!339767 () Bool)

(declare-fun e!765473 () Bool)

(declare-fun tp!339768 () Bool)

(declare-fun b!1190632 () Bool)

(assert (=> b!1190632 (= e!765473 (and (inv!15856 (left!10437 (left!10437 t!4115))) tp!339767 (inv!15856 (right!10767 (left!10437 t!4115))) tp!339768))))

(declare-fun b!1190634 () Bool)

(declare-fun e!765474 () Bool)

(declare-fun tp!339769 () Bool)

(assert (=> b!1190634 (= e!765474 tp!339769)))

(declare-fun b!1190633 () Bool)

(assert (=> b!1190633 (= e!765473 (and (inv!15857 (xs!6631 (left!10437 t!4115))) e!765474))))

(assert (=> b!1190491 (= tp!339751 (and (inv!15856 (left!10437 t!4115)) e!765473))))

(assert (= (and b!1190491 ((_ is Node!3926) (left!10437 t!4115))) b!1190632))

(assert (= b!1190633 b!1190634))

(assert (= (and b!1190491 ((_ is Leaf!6014) (left!10437 t!4115))) b!1190633))

(declare-fun m!1365609 () Bool)

(assert (=> b!1190632 m!1365609))

(declare-fun m!1365611 () Bool)

(assert (=> b!1190632 m!1365611))

(declare-fun m!1365613 () Bool)

(assert (=> b!1190633 m!1365613))

(assert (=> b!1190491 m!1365499))

(declare-fun b!1190638 () Bool)

(declare-fun tp!339773 () Bool)

(declare-fun tp!339774 () Bool)

(declare-fun e!765477 () Bool)

(assert (=> b!1190638 (= e!765477 (and (inv!15856 (left!10437 (right!10767 t!4115))) tp!339773 (inv!15856 (right!10767 (right!10767 t!4115))) tp!339774))))

(declare-fun b!1190640 () Bool)

(declare-fun e!765478 () Bool)

(declare-fun tp!339775 () Bool)

(assert (=> b!1190640 (= e!765478 tp!339775)))

(declare-fun b!1190639 () Bool)

(assert (=> b!1190639 (= e!765477 (and (inv!15857 (xs!6631 (right!10767 t!4115))) e!765478))))

(assert (=> b!1190491 (= tp!339750 (and (inv!15856 (right!10767 t!4115)) e!765477))))

(assert (= (and b!1190491 ((_ is Node!3926) (right!10767 t!4115))) b!1190638))

(assert (= b!1190639 b!1190640))

(assert (= (and b!1190491 ((_ is Leaf!6014) (right!10767 t!4115))) b!1190639))

(declare-fun m!1365621 () Bool)

(assert (=> b!1190638 m!1365621))

(declare-fun m!1365623 () Bool)

(assert (=> b!1190638 m!1365623))

(declare-fun m!1365625 () Bool)

(assert (=> b!1190639 m!1365625))

(assert (=> b!1190491 m!1365501))

(declare-fun b!1190650 () Bool)

(declare-fun e!765484 () Bool)

(declare-fun tp_is_empty!5895 () Bool)

(declare-fun tp!339781 () Bool)

(assert (=> b!1190650 (= e!765484 (and tp_is_empty!5895 tp!339781))))

(assert (=> b!1190497 (= tp!339749 e!765484)))

(assert (= (and b!1190497 ((_ is Cons!11993) (innerList!3986 (xs!6631 t!4115)))) b!1190650))

(check-sat (not b!1190633) (not b!1190632) (not b!1190592) (not b!1190598) (not b!1190519) (not b!1190595) (not b!1190583) (not b!1190504) (not b!1190639) (not b!1190650) (not b!1190594) (not b!1190638) (not b!1190577) (not b!1190600) (not b!1190579) (not b!1190520) (not b!1190549) (not b!1190640) (not b!1190593) (not d!340216) (not b!1190603) (not b!1190581) (not b!1190578) (not b!1190601) (not b!1190576) (not b!1190590) (not b!1190491) (not b!1190634) (not d!340224) (not b!1190591) (not b!1190547) tp_is_empty!5895)
(check-sat)
