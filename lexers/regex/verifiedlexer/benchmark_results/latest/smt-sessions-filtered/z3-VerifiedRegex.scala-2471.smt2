; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130832 () Bool)

(assert start!130832)

(declare-fun res!643244 () Bool)

(declare-fun e!906783 () Bool)

(assert (=> start!130832 (=> (not res!643244) (not e!906783))))

(declare-datatypes ((T!25636 0))(
  ( (T!25637 (val!4514 Int)) )
))
(declare-datatypes ((List!14656 0))(
  ( (Nil!14590) (Cons!14590 (h!19991 T!25636) (t!124447 List!14656)) )
))
(declare-datatypes ((IArray!9823 0))(
  ( (IArray!9824 (innerList!4969 List!14656)) )
))
(declare-datatypes ((Conc!4909 0))(
  ( (Node!4909 (left!12482 Conc!4909) (right!12812 Conc!4909) (csize!10048 Int) (cheight!5120 Int)) (Leaf!7381 (xs!7638 IArray!9823) (csize!10049 Int)) (Empty!4909) )
))
(declare-datatypes ((BalanceConc!9758 0))(
  ( (BalanceConc!9759 (c!233544 Conc!4909)) )
))
(declare-fun thiss!5870 () BalanceConc!9758)

(declare-fun isEmpty!8998 (BalanceConc!9758) Bool)

(assert (=> start!130832 (= res!643244 (not (isEmpty!8998 thiss!5870)))))

(assert (=> start!130832 e!906783))

(declare-fun e!906781 () Bool)

(declare-fun inv!19305 (BalanceConc!9758) Bool)

(assert (=> start!130832 (and (inv!19305 thiss!5870) e!906781)))

(declare-fun b!1420694 () Bool)

(declare-fun e!906782 () Bool)

(assert (=> b!1420694 (= e!906783 e!906782)))

(declare-fun res!643243 () Bool)

(assert (=> b!1420694 (=> res!643243 e!906782)))

(declare-fun lt!479594 () Conc!4909)

(declare-fun isBalanced!1466 (Conc!4909) Bool)

(assert (=> b!1420694 (= res!643243 (not (isBalanced!1466 lt!479594)))))

(declare-fun tail!2129 (Conc!4909) Conc!4909)

(assert (=> b!1420694 (= lt!479594 (tail!2129 (c!233544 thiss!5870)))))

(declare-fun b!1420695 () Bool)

(declare-fun list!5771 (BalanceConc!9758) List!14656)

(declare-fun tail!2130 (List!14656) List!14656)

(assert (=> b!1420695 (= e!906782 (not (= (list!5771 (BalanceConc!9759 lt!479594)) (tail!2130 (list!5771 thiss!5870)))))))

(declare-fun b!1420696 () Bool)

(declare-fun tp!402720 () Bool)

(declare-fun inv!19306 (Conc!4909) Bool)

(assert (=> b!1420696 (= e!906781 (and (inv!19306 (c!233544 thiss!5870)) tp!402720))))

(assert (= (and start!130832 res!643244) b!1420694))

(assert (= (and b!1420694 (not res!643243)) b!1420695))

(assert (= start!130832 b!1420696))

(declare-fun m!1610401 () Bool)

(assert (=> start!130832 m!1610401))

(declare-fun m!1610403 () Bool)

(assert (=> start!130832 m!1610403))

(declare-fun m!1610405 () Bool)

(assert (=> b!1420694 m!1610405))

(declare-fun m!1610407 () Bool)

(assert (=> b!1420694 m!1610407))

(declare-fun m!1610409 () Bool)

(assert (=> b!1420695 m!1610409))

(declare-fun m!1610411 () Bool)

(assert (=> b!1420695 m!1610411))

(assert (=> b!1420695 m!1610411))

(declare-fun m!1610413 () Bool)

(assert (=> b!1420695 m!1610413))

(declare-fun m!1610415 () Bool)

(assert (=> b!1420696 m!1610415))

(check-sat (not b!1420694) (not start!130832) (not b!1420696) (not b!1420695))
(check-sat)
(get-model)

(declare-fun b!1420718 () Bool)

(declare-fun e!906794 () Bool)

(declare-fun isEmpty!9001 (Conc!4909) Bool)

(assert (=> b!1420718 (= e!906794 (not (isEmpty!9001 (right!12812 lt!479594))))))

(declare-fun b!1420719 () Bool)

(declare-fun res!643263 () Bool)

(assert (=> b!1420719 (=> (not res!643263) (not e!906794))))

(assert (=> b!1420719 (= res!643263 (isBalanced!1466 (left!12482 lt!479594)))))

(declare-fun b!1420720 () Bool)

(declare-fun res!643265 () Bool)

(assert (=> b!1420720 (=> (not res!643265) (not e!906794))))

(assert (=> b!1420720 (= res!643265 (not (isEmpty!9001 (left!12482 lt!479594))))))

(declare-fun b!1420721 () Bool)

(declare-fun e!906795 () Bool)

(assert (=> b!1420721 (= e!906795 e!906794)))

(declare-fun res!643264 () Bool)

(assert (=> b!1420721 (=> (not res!643264) (not e!906794))))

(declare-fun height!719 (Conc!4909) Int)

(assert (=> b!1420721 (= res!643264 (<= (- 1) (- (height!719 (left!12482 lt!479594)) (height!719 (right!12812 lt!479594)))))))

(declare-fun d!406984 () Bool)

(declare-fun res!643262 () Bool)

(assert (=> d!406984 (=> res!643262 e!906795)))

(get-info :version)

(assert (=> d!406984 (= res!643262 (not ((_ is Node!4909) lt!479594)))))

(assert (=> d!406984 (= (isBalanced!1466 lt!479594) e!906795)))

(declare-fun b!1420722 () Bool)

(declare-fun res!643261 () Bool)

(assert (=> b!1420722 (=> (not res!643261) (not e!906794))))

(assert (=> b!1420722 (= res!643261 (isBalanced!1466 (right!12812 lt!479594)))))

(declare-fun b!1420723 () Bool)

(declare-fun res!643260 () Bool)

(assert (=> b!1420723 (=> (not res!643260) (not e!906794))))

(assert (=> b!1420723 (= res!643260 (<= (- (height!719 (left!12482 lt!479594)) (height!719 (right!12812 lt!479594))) 1))))

(assert (= (and d!406984 (not res!643262)) b!1420721))

(assert (= (and b!1420721 res!643264) b!1420723))

(assert (= (and b!1420723 res!643260) b!1420719))

(assert (= (and b!1420719 res!643263) b!1420722))

(assert (= (and b!1420722 res!643261) b!1420720))

(assert (= (and b!1420720 res!643265) b!1420718))

(declare-fun m!1610427 () Bool)

(assert (=> b!1420722 m!1610427))

(declare-fun m!1610429 () Bool)

(assert (=> b!1420723 m!1610429))

(declare-fun m!1610431 () Bool)

(assert (=> b!1420723 m!1610431))

(declare-fun m!1610433 () Bool)

(assert (=> b!1420719 m!1610433))

(declare-fun m!1610435 () Bool)

(assert (=> b!1420718 m!1610435))

(declare-fun m!1610437 () Bool)

(assert (=> b!1420720 m!1610437))

(assert (=> b!1420721 m!1610429))

(assert (=> b!1420721 m!1610431))

(assert (=> b!1420694 d!406984))

(declare-fun b!1420774 () Bool)

(declare-datatypes ((Unit!21790 0))(
  ( (Unit!21791) )
))
(declare-fun lt!479634 () Unit!21790)

(declare-fun lt!479637 () Unit!21790)

(assert (=> b!1420774 (= lt!479634 lt!479637)))

(declare-fun call!97099 () List!14656)

(declare-fun lt!479631 () List!14656)

(declare-fun slice!554 (List!14656 Int Int) List!14656)

(declare-fun size!12044 (List!14656) Int)

(assert (=> b!1420774 (= call!97099 (slice!554 lt!479631 1 (size!12044 lt!479631)))))

(declare-fun sliceTailLemma!22 (List!14656) Unit!21790)

(assert (=> b!1420774 (= lt!479637 (sliceTailLemma!22 lt!479631))))

(declare-fun list!5774 (IArray!9823) List!14656)

(assert (=> b!1420774 (= lt!479631 (list!5774 (xs!7638 (c!233544 thiss!5870))))))

(declare-fun e!906826 () Conc!4909)

(declare-fun slice!555 (IArray!9823 Int Int) IArray!9823)

(assert (=> b!1420774 (= e!906826 (Leaf!7381 (slice!555 (xs!7638 (c!233544 thiss!5870)) 1 (csize!10049 (c!233544 thiss!5870))) (- (csize!10049 (c!233544 thiss!5870)) 1)))))

(declare-fun b!1420775 () Bool)

(declare-fun e!906824 () Conc!4909)

(declare-fun call!97098 () Conc!4909)

(assert (=> b!1420775 (= e!906824 call!97098)))

(declare-fun bm!97093 () Bool)

(declare-fun c!233560 () Bool)

(assert (=> bm!97093 (= call!97098 (tail!2129 (ite c!233560 (right!12812 (c!233544 thiss!5870)) (left!12482 (c!233544 thiss!5870)))))))

(declare-fun b!1420776 () Bool)

(declare-fun e!906825 () Conc!4909)

(assert (=> b!1420776 (= e!906825 e!906824)))

(declare-fun res!643293 () Bool)

(assert (=> b!1420776 (= res!643293 ((_ is Node!4909) (c!233544 thiss!5870)))))

(declare-fun e!906822 () Bool)

(assert (=> b!1420776 (=> (not res!643293) (not e!906822))))

(assert (=> b!1420776 (= c!233560 e!906822)))

(declare-fun b!1420777 () Bool)

(assert (=> b!1420777 (= e!906825 e!906826)))

(declare-fun c!233562 () Bool)

(assert (=> b!1420777 (= c!233562 (= (csize!10049 (c!233544 thiss!5870)) 1))))

(declare-fun b!1420778 () Bool)

(assert (=> b!1420778 (= e!906822 (isEmpty!9001 (left!12482 (c!233544 thiss!5870))))))

(declare-fun b!1420780 () Bool)

(declare-fun lt!479632 () Unit!21790)

(declare-fun lt!479635 () Unit!21790)

(assert (=> b!1420780 (= lt!479632 lt!479635)))

(declare-fun lt!479633 () List!14656)

(declare-fun lt!479630 () List!14656)

(declare-fun ++!3840 (List!14656 List!14656) List!14656)

(assert (=> b!1420780 (= (tail!2130 (++!3840 lt!479633 lt!479630)) (++!3840 call!97099 lt!479630))))

(declare-fun lemmaTailOfConcatIsTailConcat!22 (List!14656 List!14656) Unit!21790)

(assert (=> b!1420780 (= lt!479635 (lemmaTailOfConcatIsTailConcat!22 lt!479633 lt!479630))))

(declare-fun list!5775 (Conc!4909) List!14656)

(assert (=> b!1420780 (= lt!479630 (list!5775 (right!12812 (c!233544 thiss!5870))))))

(assert (=> b!1420780 (= lt!479633 (list!5775 (left!12482 (c!233544 thiss!5870))))))

(declare-fun ++!3841 (Conc!4909 Conc!4909) Conc!4909)

(assert (=> b!1420780 (= e!906824 (++!3841 call!97098 (right!12812 (c!233544 thiss!5870))))))

(declare-fun b!1420781 () Bool)

(assert (=> b!1420781 (= e!906826 Empty!4909)))

(declare-fun c!233561 () Bool)

(declare-fun bm!97094 () Bool)

(assert (=> bm!97094 (= call!97099 (tail!2130 (ite c!233561 lt!479631 lt!479633)))))

(declare-fun b!1420779 () Bool)

(declare-fun e!906823 () Bool)

(declare-fun lt!479636 () Conc!4909)

(assert (=> b!1420779 (= e!906823 (= (list!5775 lt!479636) (tail!2130 (list!5775 (c!233544 thiss!5870)))))))

(declare-fun d!406992 () Bool)

(assert (=> d!406992 e!906823))

(declare-fun res!643292 () Bool)

(assert (=> d!406992 (=> (not res!643292) (not e!906823))))

(assert (=> d!406992 (= res!643292 (isBalanced!1466 lt!479636))))

(assert (=> d!406992 (= lt!479636 e!906825)))

(assert (=> d!406992 (= c!233561 ((_ is Leaf!7381) (c!233544 thiss!5870)))))

(assert (=> d!406992 (isBalanced!1466 (c!233544 thiss!5870))))

(assert (=> d!406992 (= (tail!2129 (c!233544 thiss!5870)) lt!479636)))

(assert (= (and d!406992 c!233561) b!1420777))

(assert (= (and d!406992 (not c!233561)) b!1420776))

(assert (= (and b!1420777 c!233562) b!1420781))

(assert (= (and b!1420777 (not c!233562)) b!1420774))

(assert (= (and b!1420776 res!643293) b!1420778))

(assert (= (and b!1420776 c!233560) b!1420775))

(assert (= (and b!1420776 (not c!233560)) b!1420780))

(assert (= (or b!1420775 b!1420780) bm!97093))

(assert (= (or b!1420774 b!1420780) bm!97094))

(assert (= (and d!406992 res!643292) b!1420779))

(declare-fun m!1610455 () Bool)

(assert (=> bm!97094 m!1610455))

(declare-fun m!1610457 () Bool)

(assert (=> b!1420780 m!1610457))

(declare-fun m!1610459 () Bool)

(assert (=> b!1420780 m!1610459))

(declare-fun m!1610461 () Bool)

(assert (=> b!1420780 m!1610461))

(declare-fun m!1610463 () Bool)

(assert (=> b!1420780 m!1610463))

(declare-fun m!1610465 () Bool)

(assert (=> b!1420780 m!1610465))

(declare-fun m!1610467 () Bool)

(assert (=> b!1420780 m!1610467))

(assert (=> b!1420780 m!1610465))

(declare-fun m!1610469 () Bool)

(assert (=> b!1420780 m!1610469))

(declare-fun m!1610471 () Bool)

(assert (=> d!406992 m!1610471))

(declare-fun m!1610473 () Bool)

(assert (=> d!406992 m!1610473))

(declare-fun m!1610475 () Bool)

(assert (=> b!1420779 m!1610475))

(declare-fun m!1610477 () Bool)

(assert (=> b!1420779 m!1610477))

(assert (=> b!1420779 m!1610477))

(declare-fun m!1610479 () Bool)

(assert (=> b!1420779 m!1610479))

(declare-fun m!1610481 () Bool)

(assert (=> b!1420778 m!1610481))

(declare-fun m!1610483 () Bool)

(assert (=> b!1420774 m!1610483))

(declare-fun m!1610485 () Bool)

(assert (=> b!1420774 m!1610485))

(declare-fun m!1610487 () Bool)

(assert (=> b!1420774 m!1610487))

(declare-fun m!1610491 () Bool)

(assert (=> b!1420774 m!1610491))

(assert (=> b!1420774 m!1610487))

(declare-fun m!1610495 () Bool)

(assert (=> b!1420774 m!1610495))

(declare-fun m!1610499 () Bool)

(assert (=> bm!97093 m!1610499))

(assert (=> b!1420694 d!406992))

(declare-fun d!407002 () Bool)

(declare-fun lt!479648 () Bool)

(declare-fun isEmpty!9002 (List!14656) Bool)

(assert (=> d!407002 (= lt!479648 (isEmpty!9002 (list!5771 thiss!5870)))))

(assert (=> d!407002 (= lt!479648 (isEmpty!9001 (c!233544 thiss!5870)))))

(assert (=> d!407002 (= (isEmpty!8998 thiss!5870) lt!479648)))

(declare-fun bs!339757 () Bool)

(assert (= bs!339757 d!407002))

(assert (=> bs!339757 m!1610411))

(assert (=> bs!339757 m!1610411))

(declare-fun m!1610537 () Bool)

(assert (=> bs!339757 m!1610537))

(declare-fun m!1610539 () Bool)

(assert (=> bs!339757 m!1610539))

(assert (=> start!130832 d!407002))

(declare-fun d!407004 () Bool)

(assert (=> d!407004 (= (inv!19305 thiss!5870) (isBalanced!1466 (c!233544 thiss!5870)))))

(declare-fun bs!339758 () Bool)

(assert (= bs!339758 d!407004))

(assert (=> bs!339758 m!1610473))

(assert (=> start!130832 d!407004))

(declare-fun d!407006 () Bool)

(declare-fun c!233568 () Bool)

(assert (=> d!407006 (= c!233568 ((_ is Node!4909) (c!233544 thiss!5870)))))

(declare-fun e!906842 () Bool)

(assert (=> d!407006 (= (inv!19306 (c!233544 thiss!5870)) e!906842)))

(declare-fun b!1420807 () Bool)

(declare-fun inv!19310 (Conc!4909) Bool)

(assert (=> b!1420807 (= e!906842 (inv!19310 (c!233544 thiss!5870)))))

(declare-fun b!1420808 () Bool)

(declare-fun e!906843 () Bool)

(assert (=> b!1420808 (= e!906842 e!906843)))

(declare-fun res!643298 () Bool)

(assert (=> b!1420808 (= res!643298 (not ((_ is Leaf!7381) (c!233544 thiss!5870))))))

(assert (=> b!1420808 (=> res!643298 e!906843)))

(declare-fun b!1420809 () Bool)

(declare-fun inv!19311 (Conc!4909) Bool)

(assert (=> b!1420809 (= e!906843 (inv!19311 (c!233544 thiss!5870)))))

(assert (= (and d!407006 c!233568) b!1420807))

(assert (= (and d!407006 (not c!233568)) b!1420808))

(assert (= (and b!1420808 (not res!643298)) b!1420809))

(declare-fun m!1610541 () Bool)

(assert (=> b!1420807 m!1610541))

(declare-fun m!1610543 () Bool)

(assert (=> b!1420809 m!1610543))

(assert (=> b!1420696 d!407006))

(declare-fun d!407008 () Bool)

(assert (=> d!407008 (= (list!5771 (BalanceConc!9759 lt!479594)) (list!5775 (c!233544 (BalanceConc!9759 lt!479594))))))

(declare-fun bs!339759 () Bool)

(assert (= bs!339759 d!407008))

(declare-fun m!1610545 () Bool)

(assert (=> bs!339759 m!1610545))

(assert (=> b!1420695 d!407008))

(declare-fun d!407010 () Bool)

(assert (=> d!407010 (= (tail!2130 (list!5771 thiss!5870)) (t!124447 (list!5771 thiss!5870)))))

(assert (=> b!1420695 d!407010))

(declare-fun d!407012 () Bool)

(assert (=> d!407012 (= (list!5771 thiss!5870) (list!5775 (c!233544 thiss!5870)))))

(declare-fun bs!339760 () Bool)

(assert (= bs!339760 d!407012))

(assert (=> bs!339760 m!1610477))

(assert (=> b!1420695 d!407012))

(declare-fun tp!402737 () Bool)

(declare-fun tp!402736 () Bool)

(declare-fun b!1420818 () Bool)

(declare-fun e!906849 () Bool)

(assert (=> b!1420818 (= e!906849 (and (inv!19306 (left!12482 (c!233544 thiss!5870))) tp!402737 (inv!19306 (right!12812 (c!233544 thiss!5870))) tp!402736))))

(declare-fun b!1420820 () Bool)

(declare-fun e!906848 () Bool)

(declare-fun tp!402738 () Bool)

(assert (=> b!1420820 (= e!906848 tp!402738)))

(declare-fun b!1420819 () Bool)

(declare-fun inv!19312 (IArray!9823) Bool)

(assert (=> b!1420819 (= e!906849 (and (inv!19312 (xs!7638 (c!233544 thiss!5870))) e!906848))))

(assert (=> b!1420696 (= tp!402720 (and (inv!19306 (c!233544 thiss!5870)) e!906849))))

(assert (= (and b!1420696 ((_ is Node!4909) (c!233544 thiss!5870))) b!1420818))

(assert (= b!1420819 b!1420820))

(assert (= (and b!1420696 ((_ is Leaf!7381) (c!233544 thiss!5870))) b!1420819))

(declare-fun m!1610547 () Bool)

(assert (=> b!1420818 m!1610547))

(declare-fun m!1610549 () Bool)

(assert (=> b!1420818 m!1610549))

(declare-fun m!1610551 () Bool)

(assert (=> b!1420819 m!1610551))

(assert (=> b!1420696 m!1610415))

(check-sat (not b!1420778) (not b!1420780) (not d!407004) (not b!1420719) (not d!407008) (not b!1420807) (not b!1420696) (not b!1420809) (not b!1420722) (not bm!97094) (not b!1420774) (not b!1420718) (not b!1420721) (not b!1420818) (not bm!97093) (not b!1420820) (not d!407012) (not b!1420779) (not d!407002) (not b!1420723) (not d!406992) (not b!1420720) (not b!1420819))
(check-sat)
