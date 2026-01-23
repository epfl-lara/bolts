; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!130698 () Bool)

(assert start!130698)

(declare-fun res!642973 () Bool)

(declare-fun e!906419 () Bool)

(assert (=> start!130698 (=> (not res!642973) (not e!906419))))

(declare-datatypes ((T!25592 0))(
  ( (T!25593 (val!4507 Int)) )
))
(declare-datatypes ((List!14649 0))(
  ( (Nil!14583) (Cons!14583 (h!19984 T!25592) (t!124424 List!14649)) )
))
(declare-datatypes ((IArray!9809 0))(
  ( (IArray!9810 (innerList!4962 List!14649)) )
))
(declare-datatypes ((Conc!4902 0))(
  ( (Node!4902 (left!12472 Conc!4902) (right!12802 Conc!4902) (csize!10034 Int) (cheight!5113 Int)) (Leaf!7371 (xs!7629 IArray!9809) (csize!10035 Int)) (Empty!4902) )
))
(declare-datatypes ((BalanceConc!9744 0))(
  ( (BalanceConc!9745 (c!233393 Conc!4902)) )
))
(declare-fun thiss!5870 () BalanceConc!9744)

(declare-fun isEmpty!8979 (BalanceConc!9744) Bool)

(assert (=> start!130698 (= res!642973 (not (isEmpty!8979 thiss!5870)))))

(assert (=> start!130698 e!906419))

(declare-fun e!906420 () Bool)

(declare-fun inv!19264 (BalanceConc!9744) Bool)

(assert (=> start!130698 (and (inv!19264 thiss!5870) e!906420)))

(declare-fun b!1420026 () Bool)

(declare-fun res!642972 () Bool)

(assert (=> b!1420026 (=> (not res!642972) (not e!906419))))

(declare-fun isBalanced!1459 (Conc!4902) Bool)

(assert (=> b!1420026 (= res!642972 (isBalanced!1459 (c!233393 thiss!5870)))))

(declare-fun b!1420027 () Bool)

(declare-fun isEmpty!8980 (Conc!4902) Bool)

(assert (=> b!1420027 (= e!906419 (isEmpty!8980 (c!233393 thiss!5870)))))

(declare-fun b!1420028 () Bool)

(declare-fun tp!402627 () Bool)

(declare-fun inv!19265 (Conc!4902) Bool)

(assert (=> b!1420028 (= e!906420 (and (inv!19265 (c!233393 thiss!5870)) tp!402627))))

(assert (= (and start!130698 res!642973) b!1420026))

(assert (= (and b!1420026 res!642972) b!1420027))

(assert (= start!130698 b!1420028))

(declare-fun m!1609625 () Bool)

(assert (=> start!130698 m!1609625))

(declare-fun m!1609627 () Bool)

(assert (=> start!130698 m!1609627))

(declare-fun m!1609629 () Bool)

(assert (=> b!1420026 m!1609629))

(declare-fun m!1609631 () Bool)

(assert (=> b!1420027 m!1609631))

(declare-fun m!1609633 () Bool)

(assert (=> b!1420028 m!1609633))

(push 1)

(assert (not b!1420026))

(assert (not start!130698))

(assert (not b!1420027))

(assert (not b!1420028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1420059 () Bool)

(declare-fun e!906437 () Bool)

(assert (=> b!1420059 (= e!906437 (not (isEmpty!8980 (right!12802 (c!233393 thiss!5870)))))))

(declare-fun b!1420060 () Bool)

(declare-fun res!642999 () Bool)

(assert (=> b!1420060 (=> (not res!642999) (not e!906437))))

(assert (=> b!1420060 (= res!642999 (isBalanced!1459 (left!12472 (c!233393 thiss!5870))))))

(declare-fun b!1420061 () Bool)

(declare-fun res!642998 () Bool)

(assert (=> b!1420061 (=> (not res!642998) (not e!906437))))

(assert (=> b!1420061 (= res!642998 (isBalanced!1459 (right!12802 (c!233393 thiss!5870))))))

(declare-fun d!406799 () Bool)

(declare-fun res!642995 () Bool)

(declare-fun e!906438 () Bool)

(assert (=> d!406799 (=> res!642995 e!906438)))

(assert (=> d!406799 (= res!642995 (not (is-Node!4902 (c!233393 thiss!5870))))))

(assert (=> d!406799 (= (isBalanced!1459 (c!233393 thiss!5870)) e!906438)))

(declare-fun b!1420062 () Bool)

(declare-fun res!642996 () Bool)

(assert (=> b!1420062 (=> (not res!642996) (not e!906437))))

(assert (=> b!1420062 (= res!642996 (not (isEmpty!8980 (left!12472 (c!233393 thiss!5870)))))))

(declare-fun b!1420063 () Bool)

(assert (=> b!1420063 (= e!906438 e!906437)))

(declare-fun res!643000 () Bool)

(assert (=> b!1420063 (=> (not res!643000) (not e!906437))))

(declare-fun height!714 (Conc!4902) Int)

(assert (=> b!1420063 (= res!643000 (<= (- 1) (- (height!714 (left!12472 (c!233393 thiss!5870))) (height!714 (right!12802 (c!233393 thiss!5870))))))))

(declare-fun b!1420064 () Bool)

(declare-fun res!642997 () Bool)

(assert (=> b!1420064 (=> (not res!642997) (not e!906437))))

(assert (=> b!1420064 (= res!642997 (<= (- (height!714 (left!12472 (c!233393 thiss!5870))) (height!714 (right!12802 (c!233393 thiss!5870)))) 1))))

(assert (= (and d!406799 (not res!642995)) b!1420063))

(assert (= (and b!1420063 res!643000) b!1420064))

(assert (= (and b!1420064 res!642997) b!1420060))

(assert (= (and b!1420060 res!642999) b!1420061))

(assert (= (and b!1420061 res!642998) b!1420062))

(assert (= (and b!1420062 res!642996) b!1420059))

(declare-fun m!1609649 () Bool)

(assert (=> b!1420063 m!1609649))

(declare-fun m!1609651 () Bool)

(assert (=> b!1420063 m!1609651))

(declare-fun m!1609653 () Bool)

(assert (=> b!1420061 m!1609653))

(declare-fun m!1609655 () Bool)

(assert (=> b!1420060 m!1609655))

(declare-fun m!1609657 () Bool)

(assert (=> b!1420059 m!1609657))

(declare-fun m!1609659 () Bool)

(assert (=> b!1420062 m!1609659))

(assert (=> b!1420064 m!1609649))

(assert (=> b!1420064 m!1609651))

(assert (=> b!1420026 d!406799))

(declare-fun d!406805 () Bool)

(declare-fun lt!479391 () Bool)

(declare-fun isEmpty!8983 (List!14649) Bool)

(declare-fun list!5754 (BalanceConc!9744) List!14649)

(assert (=> d!406805 (= lt!479391 (isEmpty!8983 (list!5754 thiss!5870)))))

(assert (=> d!406805 (= lt!479391 (isEmpty!8980 (c!233393 thiss!5870)))))

(assert (=> d!406805 (= (isEmpty!8979 thiss!5870) lt!479391)))

(declare-fun bs!339715 () Bool)

(assert (= bs!339715 d!406805))

(declare-fun m!1609661 () Bool)

(assert (=> bs!339715 m!1609661))

(assert (=> bs!339715 m!1609661))

(declare-fun m!1609663 () Bool)

(assert (=> bs!339715 m!1609663))

(assert (=> bs!339715 m!1609631))

(assert (=> start!130698 d!406805))

(declare-fun d!406807 () Bool)

(assert (=> d!406807 (= (inv!19264 thiss!5870) (isBalanced!1459 (c!233393 thiss!5870)))))

(declare-fun bs!339716 () Bool)

(assert (= bs!339716 d!406807))

(assert (=> bs!339716 m!1609629))

(assert (=> start!130698 d!406807))

(declare-fun d!406809 () Bool)

(declare-fun lt!479394 () Bool)

(declare-fun list!5755 (Conc!4902) List!14649)

(assert (=> d!406809 (= lt!479394 (isEmpty!8983 (list!5755 (c!233393 thiss!5870))))))

(declare-fun size!12035 (Conc!4902) Int)

(assert (=> d!406809 (= lt!479394 (= (size!12035 (c!233393 thiss!5870)) 0))))

(assert (=> d!406809 (= (isEmpty!8980 (c!233393 thiss!5870)) lt!479394)))

(declare-fun bs!339717 () Bool)

(assert (= bs!339717 d!406809))

(declare-fun m!1609665 () Bool)

(assert (=> bs!339717 m!1609665))

(assert (=> bs!339717 m!1609665))

(declare-fun m!1609667 () Bool)

(assert (=> bs!339717 m!1609667))

(declare-fun m!1609669 () Bool)

(assert (=> bs!339717 m!1609669))

(assert (=> b!1420027 d!406809))

(declare-fun d!406811 () Bool)

(declare-fun c!233400 () Bool)

(assert (=> d!406811 (= c!233400 (is-Node!4902 (c!233393 thiss!5870)))))

(declare-fun e!906449 () Bool)

(assert (=> d!406811 (= (inv!19265 (c!233393 thiss!5870)) e!906449)))

(declare-fun b!1420089 () Bool)

(declare-fun inv!19270 (Conc!4902) Bool)

(assert (=> b!1420089 (= e!906449 (inv!19270 (c!233393 thiss!5870)))))

(declare-fun b!1420090 () Bool)

(declare-fun e!906450 () Bool)

(assert (=> b!1420090 (= e!906449 e!906450)))

(declare-fun res!643021 () Bool)

(assert (=> b!1420090 (= res!643021 (not (is-Leaf!7371 (c!233393 thiss!5870))))))

(assert (=> b!1420090 (=> res!643021 e!906450)))

(declare-fun b!1420091 () Bool)

(declare-fun inv!19271 (Conc!4902) Bool)

(assert (=> b!1420091 (= e!906450 (inv!19271 (c!233393 thiss!5870)))))

(assert (= (and d!406811 c!233400) b!1420089))

(assert (= (and d!406811 (not c!233400)) b!1420090))

(assert (= (and b!1420090 (not res!643021)) b!1420091))

(declare-fun m!1609687 () Bool)

(assert (=> b!1420089 m!1609687))

(declare-fun m!1609689 () Bool)

(assert (=> b!1420091 m!1609689))

(assert (=> b!1420028 d!406811))

(declare-fun b!1420100 () Bool)

(declare-fun e!906455 () Bool)

(declare-fun tp!402638 () Bool)

(declare-fun tp!402639 () Bool)

(assert (=> b!1420100 (= e!906455 (and (inv!19265 (left!12472 (c!233393 thiss!5870))) tp!402638 (inv!19265 (right!12802 (c!233393 thiss!5870))) tp!402639))))

(declare-fun b!1420102 () Bool)

(declare-fun e!906456 () Bool)

(declare-fun tp!402637 () Bool)

(assert (=> b!1420102 (= e!906456 tp!402637)))

(declare-fun b!1420101 () Bool)

(declare-fun inv!19272 (IArray!9809) Bool)

(assert (=> b!1420101 (= e!906455 (and (inv!19272 (xs!7629 (c!233393 thiss!5870))) e!906456))))

(assert (=> b!1420028 (= tp!402627 (and (inv!19265 (c!233393 thiss!5870)) e!906455))))

(assert (= (and b!1420028 (is-Node!4902 (c!233393 thiss!5870))) b!1420100))

(assert (= b!1420101 b!1420102))

(assert (= (and b!1420028 (is-Leaf!7371 (c!233393 thiss!5870))) b!1420101))

(declare-fun m!1609691 () Bool)

(assert (=> b!1420100 m!1609691))

(declare-fun m!1609693 () Bool)

(assert (=> b!1420100 m!1609693))

(declare-fun m!1609695 () Bool)

(assert (=> b!1420101 m!1609695))

(assert (=> b!1420028 m!1609633))

(push 1)

(assert (not b!1420028))

(assert (not b!1420102))

(assert (not d!406807))

(assert (not d!406805))

(assert (not b!1420061))

(assert (not b!1420089))

(assert (not b!1420059))

(assert (not b!1420064))

(assert (not b!1420063))

(assert (not b!1420062))

(assert (not b!1420091))

(assert (not b!1420101))

(assert (not b!1420100))

(assert (not b!1420060))

(assert (not d!406809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

