; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!228496 () Bool)

(assert start!228496)

(declare-fun res!989410 () Bool)

(declare-fun e!1484580 () Bool)

(assert (=> start!228496 (=> (not res!989410) (not e!1484580))))

(declare-datatypes ((T!43612 0))(
  ( (T!43613 (val!7937 Int)) )
))
(declare-datatypes ((List!27723 0))(
  ( (Nil!27625) (Cons!27625 (h!33026 T!43612) (t!207335 List!27723)) )
))
(declare-datatypes ((IArray!18065 0))(
  ( (IArray!18066 (innerList!9090 List!27723)) )
))
(declare-datatypes ((Conc!9030 0))(
  ( (Node!9030 (left!20942 Conc!9030) (right!21272 Conc!9030) (csize!18290 Int) (cheight!9241 Int)) (Leaf!13255 (xs!11974 IArray!18065) (csize!18291 Int)) (Empty!9030) )
))
(declare-fun acc!252 () Conc!9030)

(declare-fun isBalanced!2724 (Conc!9030) Bool)

(assert (=> start!228496 (= res!989410 (isBalanced!2724 acc!252))))

(assert (=> start!228496 e!1484580))

(declare-fun e!1484581 () Bool)

(declare-fun inv!37442 (Conc!9030) Bool)

(assert (=> start!228496 (and (inv!37442 acc!252) e!1484581)))

(declare-fun arr!18 () IArray!18065)

(declare-fun e!1484584 () Bool)

(declare-fun inv!37443 (IArray!18065) Bool)

(assert (=> start!228496 (and (inv!37443 arr!18) e!1484584)))

(declare-fun b!2315650 () Bool)

(declare-fun e!1484582 () Bool)

(declare-fun tp!735532 () Bool)

(assert (=> b!2315650 (= e!1484582 tp!735532)))

(declare-fun b!2315651 () Bool)

(declare-fun tp!735535 () Bool)

(assert (=> b!2315651 (= e!1484584 tp!735535)))

(declare-fun b!2315652 () Bool)

(declare-fun e!1484583 () Bool)

(assert (=> b!2315652 (= e!1484580 e!1484583)))

(declare-fun res!989409 () Bool)

(assert (=> b!2315652 (=> (not res!989409) (not e!1484583))))

(declare-fun lt!858466 () Int)

(assert (=> b!2315652 (= res!989409 (> lt!858466 512))))

(declare-fun size!21845 (IArray!18065) Int)

(assert (=> b!2315652 (= lt!858466 (size!21845 arr!18))))

(declare-fun b!2315653 () Bool)

(declare-fun lt!858468 () IArray!18065)

(assert (=> b!2315653 (= e!1484583 (not (isBalanced!2724 (Leaf!13255 lt!858468 512))))))

(declare-fun lt!858467 () IArray!18065)

(declare-fun slice!642 (IArray!18065 Int Int) IArray!18065)

(assert (=> b!2315653 (= lt!858467 (slice!642 arr!18 512 lt!858466))))

(assert (=> b!2315653 (= lt!858468 (slice!642 arr!18 0 512))))

(declare-fun b!2315654 () Bool)

(declare-fun tp!735533 () Bool)

(declare-fun tp!735534 () Bool)

(assert (=> b!2315654 (= e!1484581 (and (inv!37442 (left!20942 acc!252)) tp!735533 (inv!37442 (right!21272 acc!252)) tp!735534))))

(declare-fun b!2315655 () Bool)

(assert (=> b!2315655 (= e!1484581 (and (inv!37443 (xs!11974 acc!252)) e!1484582))))

(assert (= (and start!228496 res!989410) b!2315652))

(assert (= (and b!2315652 res!989409) b!2315653))

(assert (= (and start!228496 (is-Node!9030 acc!252)) b!2315654))

(assert (= b!2315655 b!2315650))

(assert (= (and start!228496 (is-Leaf!13255 acc!252)) b!2315655))

(assert (= start!228496 b!2315651))

(declare-fun m!2742731 () Bool)

(assert (=> b!2315655 m!2742731))

(declare-fun m!2742733 () Bool)

(assert (=> b!2315653 m!2742733))

(declare-fun m!2742735 () Bool)

(assert (=> b!2315653 m!2742735))

(declare-fun m!2742737 () Bool)

(assert (=> b!2315653 m!2742737))

(declare-fun m!2742739 () Bool)

(assert (=> b!2315654 m!2742739))

(declare-fun m!2742741 () Bool)

(assert (=> b!2315654 m!2742741))

(declare-fun m!2742743 () Bool)

(assert (=> start!228496 m!2742743))

(declare-fun m!2742745 () Bool)

(assert (=> start!228496 m!2742745))

(declare-fun m!2742747 () Bool)

(assert (=> start!228496 m!2742747))

(declare-fun m!2742749 () Bool)

(assert (=> b!2315652 m!2742749))

(push 1)

(assert (not b!2315651))

(assert (not b!2315653))

(assert (not b!2315650))

(assert (not b!2315654))

(assert (not b!2315655))

(assert (not b!2315652))

(assert (not start!228496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!684721 () Bool)

(declare-fun lt!858480 () Int)

(declare-fun size!21847 (List!27723) Int)

(declare-fun list!10934 (IArray!18065) List!27723)

(assert (=> d!684721 (= lt!858480 (size!21847 (list!10934 arr!18)))))

(declare-fun choose!13543 (IArray!18065) Int)

(assert (=> d!684721 (= lt!858480 (choose!13543 arr!18))))

(assert (=> d!684721 (= (size!21845 arr!18) lt!858480)))

(declare-fun bs!458822 () Bool)

(assert (= bs!458822 d!684721))

(declare-fun m!2742771 () Bool)

(assert (=> bs!458822 m!2742771))

(assert (=> bs!458822 m!2742771))

(declare-fun m!2742773 () Bool)

(assert (=> bs!458822 m!2742773))

(declare-fun m!2742775 () Bool)

(assert (=> bs!458822 m!2742775))

(assert (=> b!2315652 d!684721))

(declare-fun b!2315699 () Bool)

(declare-fun res!989442 () Bool)

(declare-fun e!1484609 () Bool)

(assert (=> b!2315699 (=> (not res!989442) (not e!1484609))))

(assert (=> b!2315699 (= res!989442 (isBalanced!2724 (right!21272 (Leaf!13255 lt!858468 512))))))

(declare-fun b!2315700 () Bool)

(declare-fun res!989445 () Bool)

(assert (=> b!2315700 (=> (not res!989445) (not e!1484609))))

(declare-fun isEmpty!15761 (Conc!9030) Bool)

(assert (=> b!2315700 (= res!989445 (not (isEmpty!15761 (left!20942 (Leaf!13255 lt!858468 512)))))))

(declare-fun b!2315701 () Bool)

(declare-fun res!989443 () Bool)

(assert (=> b!2315701 (=> (not res!989443) (not e!1484609))))

(assert (=> b!2315701 (= res!989443 (isBalanced!2724 (left!20942 (Leaf!13255 lt!858468 512))))))

(declare-fun b!2315702 () Bool)

(assert (=> b!2315702 (= e!1484609 (not (isEmpty!15761 (right!21272 (Leaf!13255 lt!858468 512)))))))

(declare-fun b!2315703 () Bool)

(declare-fun res!989446 () Bool)

(assert (=> b!2315703 (=> (not res!989446) (not e!1484609))))

(declare-fun height!1308 (Conc!9030) Int)

(assert (=> b!2315703 (= res!989446 (<= (- (height!1308 (left!20942 (Leaf!13255 lt!858468 512))) (height!1308 (right!21272 (Leaf!13255 lt!858468 512)))) 1))))

(declare-fun b!2315698 () Bool)

(declare-fun e!1484608 () Bool)

(assert (=> b!2315698 (= e!1484608 e!1484609)))

(declare-fun res!989441 () Bool)

(assert (=> b!2315698 (=> (not res!989441) (not e!1484609))))

(assert (=> b!2315698 (= res!989441 (<= (- 1) (- (height!1308 (left!20942 (Leaf!13255 lt!858468 512))) (height!1308 (right!21272 (Leaf!13255 lt!858468 512))))))))

(declare-fun d!684725 () Bool)

(declare-fun res!989444 () Bool)

(assert (=> d!684725 (=> res!989444 e!1484608)))

(assert (=> d!684725 (= res!989444 (not (is-Node!9030 (Leaf!13255 lt!858468 512))))))

(assert (=> d!684725 (= (isBalanced!2724 (Leaf!13255 lt!858468 512)) e!1484608)))

(assert (= (and d!684725 (not res!989444)) b!2315698))

(assert (= (and b!2315698 res!989441) b!2315703))

(assert (= (and b!2315703 res!989446) b!2315701))

(assert (= (and b!2315701 res!989443) b!2315699))

(assert (= (and b!2315699 res!989442) b!2315700))

(assert (= (and b!2315700 res!989445) b!2315702))

(declare-fun m!2742777 () Bool)

(assert (=> b!2315699 m!2742777))

(declare-fun m!2742779 () Bool)

(assert (=> b!2315701 m!2742779))

(declare-fun m!2742781 () Bool)

(assert (=> b!2315700 m!2742781))

(declare-fun m!2742783 () Bool)

(assert (=> b!2315702 m!2742783))

(declare-fun m!2742785 () Bool)

(assert (=> b!2315703 m!2742785))

(declare-fun m!2742787 () Bool)

(assert (=> b!2315703 m!2742787))

(assert (=> b!2315698 m!2742785))

(assert (=> b!2315698 m!2742787))

(assert (=> b!2315653 d!684725))

(declare-fun d!684727 () Bool)

(declare-fun lt!858485 () IArray!18065)

(declare-fun slice!644 (List!27723 Int Int) List!27723)

(assert (=> d!684727 (= lt!858485 (IArray!18066 (slice!644 (list!10934 arr!18) 512 lt!858466)))))

(declare-fun choose!13544 (IArray!18065 Int Int) IArray!18065)

(assert (=> d!684727 (= lt!858485 (choose!13544 arr!18 512 lt!858466))))

(declare-fun e!1484616 () Bool)

(assert (=> d!684727 e!1484616))

(declare-fun res!989457 () Bool)

(assert (=> d!684727 (=> (not res!989457) (not e!1484616))))

(assert (=> d!684727 (= res!989457 (and (<= 0 512) (<= 512 lt!858466)))))

(assert (=> d!684727 (= (slice!642 arr!18 512 lt!858466) lt!858485)))

(declare-fun b!2315714 () Bool)

(assert (=> b!2315714 (= e!1484616 (<= lt!858466 (size!21845 arr!18)))))

(assert (= (and d!684727 res!989457) b!2315714))

(assert (=> d!684727 m!2742771))

(assert (=> d!684727 m!2742771))

(declare-fun m!2742801 () Bool)

(assert (=> d!684727 m!2742801))

(declare-fun m!2742803 () Bool)

(assert (=> d!684727 m!2742803))

(assert (=> b!2315714 m!2742749))

(assert (=> b!2315653 d!684727))

(declare-fun d!684731 () Bool)

(declare-fun lt!858486 () IArray!18065)

(assert (=> d!684731 (= lt!858486 (IArray!18066 (slice!644 (list!10934 arr!18) 0 512)))))

(assert (=> d!684731 (= lt!858486 (choose!13544 arr!18 0 512))))

(declare-fun e!1484617 () Bool)

(assert (=> d!684731 e!1484617))

(declare-fun res!989458 () Bool)

(assert (=> d!684731 (=> (not res!989458) (not e!1484617))))

(assert (=> d!684731 (= res!989458 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!684731 (= (slice!642 arr!18 0 512) lt!858486)))

(declare-fun b!2315715 () Bool)

(assert (=> b!2315715 (= e!1484617 (<= 512 (size!21845 arr!18)))))

(assert (= (and d!684731 res!989458) b!2315715))

(assert (=> d!684731 m!2742771))

(assert (=> d!684731 m!2742771))

(declare-fun m!2742805 () Bool)

(assert (=> d!684731 m!2742805))

(declare-fun m!2742807 () Bool)

(assert (=> d!684731 m!2742807))

(assert (=> b!2315715 m!2742749))

(assert (=> b!2315653 d!684731))

(declare-fun b!2315718 () Bool)

(declare-fun res!989461 () Bool)

(declare-fun e!1484620 () Bool)

(assert (=> b!2315718 (=> (not res!989461) (not e!1484620))))

(assert (=> b!2315718 (= res!989461 (isBalanced!2724 (right!21272 acc!252)))))

(declare-fun b!2315719 () Bool)

(declare-fun res!989464 () Bool)

(assert (=> b!2315719 (=> (not res!989464) (not e!1484620))))

(assert (=> b!2315719 (= res!989464 (not (isEmpty!15761 (left!20942 acc!252))))))

(declare-fun b!2315720 () Bool)

(declare-fun res!989462 () Bool)

(assert (=> b!2315720 (=> (not res!989462) (not e!1484620))))

(assert (=> b!2315720 (= res!989462 (isBalanced!2724 (left!20942 acc!252)))))

(declare-fun b!2315721 () Bool)

(assert (=> b!2315721 (= e!1484620 (not (isEmpty!15761 (right!21272 acc!252))))))

(declare-fun b!2315722 () Bool)

(declare-fun res!989465 () Bool)

(assert (=> b!2315722 (=> (not res!989465) (not e!1484620))))

(assert (=> b!2315722 (= res!989465 (<= (- (height!1308 (left!20942 acc!252)) (height!1308 (right!21272 acc!252))) 1))))

(declare-fun b!2315717 () Bool)

(declare-fun e!1484619 () Bool)

(assert (=> b!2315717 (= e!1484619 e!1484620)))

(declare-fun res!989460 () Bool)

(assert (=> b!2315717 (=> (not res!989460) (not e!1484620))))

(assert (=> b!2315717 (= res!989460 (<= (- 1) (- (height!1308 (left!20942 acc!252)) (height!1308 (right!21272 acc!252)))))))

(declare-fun d!684733 () Bool)

(declare-fun res!989463 () Bool)

(assert (=> d!684733 (=> res!989463 e!1484619)))

(assert (=> d!684733 (= res!989463 (not (is-Node!9030 acc!252)))))

(assert (=> d!684733 (= (isBalanced!2724 acc!252) e!1484619)))

(assert (= (and d!684733 (not res!989463)) b!2315717))

(assert (= (and b!2315717 res!989460) b!2315722))

(assert (= (and b!2315722 res!989465) b!2315720))

(assert (= (and b!2315720 res!989462) b!2315718))

(assert (= (and b!2315718 res!989461) b!2315719))

(assert (= (and b!2315719 res!989464) b!2315721))

(declare-fun m!2742815 () Bool)

(assert (=> b!2315718 m!2742815))

(declare-fun m!2742817 () Bool)

(assert (=> b!2315720 m!2742817))

(declare-fun m!2742819 () Bool)

(assert (=> b!2315719 m!2742819))

(declare-fun m!2742821 () Bool)

(assert (=> b!2315721 m!2742821))

(declare-fun m!2742823 () Bool)

(assert (=> b!2315722 m!2742823))

(declare-fun m!2742825 () Bool)

(assert (=> b!2315722 m!2742825))

(assert (=> b!2315717 m!2742823))

(assert (=> b!2315717 m!2742825))

(assert (=> start!228496 d!684733))

(declare-fun d!684737 () Bool)

(declare-fun c!367040 () Bool)

(assert (=> d!684737 (= c!367040 (is-Node!9030 acc!252))))

(declare-fun e!1484630 () Bool)

(assert (=> d!684737 (= (inv!37442 acc!252) e!1484630)))

(declare-fun b!2315736 () Bool)

(declare-fun inv!37448 (Conc!9030) Bool)

(assert (=> b!2315736 (= e!1484630 (inv!37448 acc!252))))

(declare-fun b!2315737 () Bool)

(declare-fun e!1484631 () Bool)

(assert (=> b!2315737 (= e!1484630 e!1484631)))

(declare-fun res!989471 () Bool)

(assert (=> b!2315737 (= res!989471 (not (is-Leaf!13255 acc!252)))))

(assert (=> b!2315737 (=> res!989471 e!1484631)))

(declare-fun b!2315738 () Bool)

(declare-fun inv!37449 (Conc!9030) Bool)

(assert (=> b!2315738 (= e!1484631 (inv!37449 acc!252))))

(assert (= (and d!684737 c!367040) b!2315736))

(assert (= (and d!684737 (not c!367040)) b!2315737))

(assert (= (and b!2315737 (not res!989471)) b!2315738))

(declare-fun m!2742831 () Bool)

(assert (=> b!2315736 m!2742831))

(declare-fun m!2742833 () Bool)

(assert (=> b!2315738 m!2742833))

(assert (=> start!228496 d!684737))

(declare-fun d!684741 () Bool)

(assert (=> d!684741 (= (inv!37443 arr!18) (<= (size!21847 (innerList!9090 arr!18)) 2147483647))))

(declare-fun bs!458823 () Bool)

(assert (= bs!458823 d!684741))

(declare-fun m!2742843 () Bool)

(assert (=> bs!458823 m!2742843))

(assert (=> start!228496 d!684741))

(declare-fun d!684747 () Bool)

(declare-fun c!367043 () Bool)

(assert (=> d!684747 (= c!367043 (is-Node!9030 (left!20942 acc!252)))))

(declare-fun e!1484638 () Bool)

(assert (=> d!684747 (= (inv!37442 (left!20942 acc!252)) e!1484638)))

(declare-fun b!2315751 () Bool)

(assert (=> b!2315751 (= e!1484638 (inv!37448 (left!20942 acc!252)))))

(declare-fun b!2315752 () Bool)

(declare-fun e!1484639 () Bool)

(assert (=> b!2315752 (= e!1484638 e!1484639)))

(declare-fun res!989480 () Bool)

(assert (=> b!2315752 (= res!989480 (not (is-Leaf!13255 (left!20942 acc!252))))))

(assert (=> b!2315752 (=> res!989480 e!1484639)))

(declare-fun b!2315753 () Bool)

(assert (=> b!2315753 (= e!1484639 (inv!37449 (left!20942 acc!252)))))

(assert (= (and d!684747 c!367043) b!2315751))

(assert (= (and d!684747 (not c!367043)) b!2315752))

(assert (= (and b!2315752 (not res!989480)) b!2315753))

(declare-fun m!2742857 () Bool)

(assert (=> b!2315751 m!2742857))

(declare-fun m!2742859 () Bool)

(assert (=> b!2315753 m!2742859))

(assert (=> b!2315654 d!684747))

(declare-fun d!684751 () Bool)

(declare-fun c!367045 () Bool)

(assert (=> d!684751 (= c!367045 (is-Node!9030 (right!21272 acc!252)))))

(declare-fun e!1484642 () Bool)

(assert (=> d!684751 (= (inv!37442 (right!21272 acc!252)) e!1484642)))

(declare-fun b!2315757 () Bool)

(assert (=> b!2315757 (= e!1484642 (inv!37448 (right!21272 acc!252)))))

(declare-fun b!2315758 () Bool)

(declare-fun e!1484643 () Bool)

(assert (=> b!2315758 (= e!1484642 e!1484643)))

(declare-fun res!989482 () Bool)

(assert (=> b!2315758 (= res!989482 (not (is-Leaf!13255 (right!21272 acc!252))))))

(assert (=> b!2315758 (=> res!989482 e!1484643)))

(declare-fun b!2315759 () Bool)

(assert (=> b!2315759 (= e!1484643 (inv!37449 (right!21272 acc!252)))))

(assert (= (and d!684751 c!367045) b!2315757))

(assert (= (and d!684751 (not c!367045)) b!2315758))

(assert (= (and b!2315758 (not res!989482)) b!2315759))

(declare-fun m!2742865 () Bool)

(assert (=> b!2315757 m!2742865))

(declare-fun m!2742867 () Bool)

(assert (=> b!2315759 m!2742867))

(assert (=> b!2315654 d!684751))

(declare-fun d!684755 () Bool)

(assert (=> d!684755 (= (inv!37443 (xs!11974 acc!252)) (<= (size!21847 (innerList!9090 (xs!11974 acc!252))) 2147483647))))

(declare-fun bs!458824 () Bool)

(assert (= bs!458824 d!684755))

(declare-fun m!2742869 () Bool)

(assert (=> bs!458824 m!2742869))

(assert (=> b!2315655 d!684755))

(declare-fun e!1484648 () Bool)

(declare-fun tp!735555 () Bool)

(declare-fun tp!735554 () Bool)

(declare-fun b!2315768 () Bool)

(assert (=> b!2315768 (= e!1484648 (and (inv!37442 (left!20942 (left!20942 acc!252))) tp!735555 (inv!37442 (right!21272 (left!20942 acc!252))) tp!735554))))

(declare-fun b!2315770 () Bool)

(declare-fun e!1484649 () Bool)

(declare-fun tp!735556 () Bool)

(assert (=> b!2315770 (= e!1484649 tp!735556)))

(declare-fun b!2315769 () Bool)

(assert (=> b!2315769 (= e!1484648 (and (inv!37443 (xs!11974 (left!20942 acc!252))) e!1484649))))

(assert (=> b!2315654 (= tp!735533 (and (inv!37442 (left!20942 acc!252)) e!1484648))))

(assert (= (and b!2315654 (is-Node!9030 (left!20942 acc!252))) b!2315768))

(assert (= b!2315769 b!2315770))

(assert (= (and b!2315654 (is-Leaf!13255 (left!20942 acc!252))) b!2315769))

(declare-fun m!2742873 () Bool)

(assert (=> b!2315768 m!2742873))

(declare-fun m!2742875 () Bool)

(assert (=> b!2315768 m!2742875))

(declare-fun m!2742877 () Bool)

(assert (=> b!2315769 m!2742877))

(assert (=> b!2315654 m!2742739))

(declare-fun tp!735557 () Bool)

(declare-fun b!2315771 () Bool)

(declare-fun e!1484650 () Bool)

(declare-fun tp!735558 () Bool)

(assert (=> b!2315771 (= e!1484650 (and (inv!37442 (left!20942 (right!21272 acc!252))) tp!735558 (inv!37442 (right!21272 (right!21272 acc!252))) tp!735557))))

(declare-fun b!2315773 () Bool)

(declare-fun e!1484651 () Bool)

(declare-fun tp!735559 () Bool)

(assert (=> b!2315773 (= e!1484651 tp!735559)))

(declare-fun b!2315772 () Bool)

(assert (=> b!2315772 (= e!1484650 (and (inv!37443 (xs!11974 (right!21272 acc!252))) e!1484651))))

(assert (=> b!2315654 (= tp!735534 (and (inv!37442 (right!21272 acc!252)) e!1484650))))

(assert (= (and b!2315654 (is-Node!9030 (right!21272 acc!252))) b!2315771))

(assert (= b!2315772 b!2315773))

(assert (= (and b!2315654 (is-Leaf!13255 (right!21272 acc!252))) b!2315772))

(declare-fun m!2742879 () Bool)

(assert (=> b!2315771 m!2742879))

(declare-fun m!2742881 () Bool)

(assert (=> b!2315771 m!2742881))

(declare-fun m!2742883 () Bool)

(assert (=> b!2315772 m!2742883))

(assert (=> b!2315654 m!2742741))

(declare-fun b!2315782 () Bool)

(declare-fun e!1484656 () Bool)

(declare-fun tp_is_empty!10779 () Bool)

(declare-fun tp!735564 () Bool)

(assert (=> b!2315782 (= e!1484656 (and tp_is_empty!10779 tp!735564))))

(assert (=> b!2315650 (= tp!735532 e!1484656)))

(assert (= (and b!2315650 (is-Cons!27625 (innerList!9090 (xs!11974 acc!252)))) b!2315782))

(declare-fun b!2315783 () Bool)

(declare-fun e!1484657 () Bool)

(declare-fun tp!735565 () Bool)

(assert (=> b!2315783 (= e!1484657 (and tp_is_empty!10779 tp!735565))))

(assert (=> b!2315651 (= tp!735535 e!1484657)))

(assert (= (and b!2315651 (is-Cons!27625 (innerList!9090 arr!18))) b!2315783))

(push 1)

(assert (not b!2315720))

(assert (not b!2315719))

(assert (not b!2315757))

(assert (not b!2315721))

(assert (not b!2315722))

(assert (not b!2315717))

(assert (not b!2315698))

(assert (not b!2315654))

(assert (not d!684741))

(assert (not d!684731))

(assert (not b!2315700))

(assert (not b!2315770))

(assert (not b!2315701))

(assert (not b!2315753))

(assert (not b!2315738))

(assert (not b!2315782))

(assert (not d!684727))

(assert tp_is_empty!10779)

(assert (not d!684755))

(assert (not b!2315751))

(assert (not b!2315772))

(assert (not b!2315715))

(assert (not b!2315718))

(assert (not d!684721))

(assert (not b!2315714))

(assert (not b!2315699))

(assert (not b!2315773))

(assert (not b!2315783))

(assert (not b!2315759))

(assert (not b!2315768))

(assert (not b!2315771))

(assert (not b!2315769))

(assert (not b!2315703))

(assert (not b!2315736))

(assert (not b!2315702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

