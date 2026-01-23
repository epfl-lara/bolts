; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510420 () Bool)

(assert start!510420)

(declare-datatypes ((T!99230 0))(
  ( (T!99231 (val!22548 Int)) )
))
(declare-datatypes ((List!56147 0))(
  ( (Nil!56023) (Cons!56023 (h!62471 T!99230) (t!364763 List!56147)) )
))
(declare-datatypes ((IArray!29277 0))(
  ( (IArray!29278 (innerList!14696 List!56147)) )
))
(declare-datatypes ((Conc!14608 0))(
  ( (Node!14608 (left!40698 Conc!14608) (right!41028 Conc!14608) (csize!29446 Int) (cheight!14819 Int)) (Leaf!24345 (xs!17918 IArray!29277) (csize!29447 Int)) (Empty!14608) )
))
(declare-datatypes ((BalanceConc!28658 0))(
  ( (BalanceConc!28659 (c!829754 Conc!14608)) )
))
(declare-fun inv!71970 (BalanceConc!28658) Bool)

(assert (=> start!510420 (not (inv!71970 (BalanceConc!28659 Empty!14608)))))

(declare-fun bs!1175258 () Bool)

(assert (= bs!1175258 start!510420))

(declare-fun m!5881498 () Bool)

(assert (=> bs!1175258 m!5881498))

(check-sat (not start!510420))
(check-sat)
(get-model)

(declare-fun d!1567481 () Bool)

(declare-fun isBalanced!3970 (Conc!14608) Bool)

(assert (=> d!1567481 (= (inv!71970 (BalanceConc!28659 Empty!14608)) (isBalanced!3970 (c!829754 (BalanceConc!28659 Empty!14608))))))

(declare-fun bs!1175260 () Bool)

(assert (= bs!1175260 d!1567481))

(declare-fun m!5881502 () Bool)

(assert (=> bs!1175260 m!5881502))

(assert (=> start!510420 d!1567481))

(check-sat (not d!1567481))
(check-sat)
(get-model)

(declare-fun b!4878604 () Bool)

(declare-fun e!3049118 () Bool)

(declare-fun isEmpty!30020 (Conc!14608) Bool)

(assert (=> b!4878604 (= e!3049118 (not (isEmpty!30020 (right!41028 (c!829754 (BalanceConc!28659 Empty!14608))))))))

(declare-fun b!4878605 () Bool)

(declare-fun res!2082514 () Bool)

(assert (=> b!4878605 (=> (not res!2082514) (not e!3049118))))

(declare-fun height!1942 (Conc!14608) Int)

(assert (=> b!4878605 (= res!2082514 (<= (- (height!1942 (left!40698 (c!829754 (BalanceConc!28659 Empty!14608)))) (height!1942 (right!41028 (c!829754 (BalanceConc!28659 Empty!14608))))) 1))))

(declare-fun b!4878606 () Bool)

(declare-fun e!3049119 () Bool)

(assert (=> b!4878606 (= e!3049119 e!3049118)))

(declare-fun res!2082513 () Bool)

(assert (=> b!4878606 (=> (not res!2082513) (not e!3049118))))

(assert (=> b!4878606 (= res!2082513 (<= (- 1) (- (height!1942 (left!40698 (c!829754 (BalanceConc!28659 Empty!14608)))) (height!1942 (right!41028 (c!829754 (BalanceConc!28659 Empty!14608)))))))))

(declare-fun d!1567485 () Bool)

(declare-fun res!2082510 () Bool)

(assert (=> d!1567485 (=> res!2082510 e!3049119)))

(get-info :version)

(assert (=> d!1567485 (= res!2082510 (not ((_ is Node!14608) (c!829754 (BalanceConc!28659 Empty!14608)))))))

(assert (=> d!1567485 (= (isBalanced!3970 (c!829754 (BalanceConc!28659 Empty!14608))) e!3049119)))

(declare-fun b!4878607 () Bool)

(declare-fun res!2082509 () Bool)

(assert (=> b!4878607 (=> (not res!2082509) (not e!3049118))))

(assert (=> b!4878607 (= res!2082509 (isBalanced!3970 (left!40698 (c!829754 (BalanceConc!28659 Empty!14608)))))))

(declare-fun b!4878608 () Bool)

(declare-fun res!2082512 () Bool)

(assert (=> b!4878608 (=> (not res!2082512) (not e!3049118))))

(assert (=> b!4878608 (= res!2082512 (isBalanced!3970 (right!41028 (c!829754 (BalanceConc!28659 Empty!14608)))))))

(declare-fun b!4878609 () Bool)

(declare-fun res!2082511 () Bool)

(assert (=> b!4878609 (=> (not res!2082511) (not e!3049118))))

(assert (=> b!4878609 (= res!2082511 (not (isEmpty!30020 (left!40698 (c!829754 (BalanceConc!28659 Empty!14608))))))))

(assert (= (and d!1567485 (not res!2082510)) b!4878606))

(assert (= (and b!4878606 res!2082513) b!4878605))

(assert (= (and b!4878605 res!2082514) b!4878607))

(assert (= (and b!4878607 res!2082509) b!4878608))

(assert (= (and b!4878608 res!2082512) b!4878609))

(assert (= (and b!4878609 res!2082511) b!4878604))

(declare-fun m!5881504 () Bool)

(assert (=> b!4878609 m!5881504))

(declare-fun m!5881506 () Bool)

(assert (=> b!4878607 m!5881506))

(declare-fun m!5881508 () Bool)

(assert (=> b!4878604 m!5881508))

(declare-fun m!5881510 () Bool)

(assert (=> b!4878605 m!5881510))

(declare-fun m!5881512 () Bool)

(assert (=> b!4878605 m!5881512))

(assert (=> b!4878606 m!5881510))

(assert (=> b!4878606 m!5881512))

(declare-fun m!5881514 () Bool)

(assert (=> b!4878608 m!5881514))

(assert (=> d!1567481 d!1567485))

(check-sat (not b!4878609) (not b!4878608) (not b!4878604) (not b!4878606) (not b!4878605) (not b!4878607))
(check-sat)
