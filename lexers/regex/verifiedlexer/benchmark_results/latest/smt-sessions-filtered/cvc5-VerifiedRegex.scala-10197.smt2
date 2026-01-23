; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532364 () Bool)

(assert start!532364)

(declare-fun res!2144624 () Bool)

(declare-fun e!3143788 () Bool)

(assert (=> start!532364 (=> (not res!2144624) (not e!3143788))))

(declare-datatypes ((T!103870 0))(
  ( (T!103871 (val!23469 Int)) )
))
(declare-datatypes ((List!58379 0))(
  ( (Nil!58255) (Cons!58255 (h!64703 T!103870) (t!370810 List!58379)) )
))
(declare-datatypes ((IArray!30995 0))(
  ( (IArray!30996 (innerList!15555 List!58379)) )
))
(declare-datatypes ((Conc!15467 0))(
  ( (Node!15467 (left!42630 Conc!15467) (right!42960 Conc!15467) (csize!31164 Int) (cheight!15678 Int)) (Leaf!25665 (xs!18793 IArray!30995) (csize!31165 Int)) (Empty!15467) )
))
(declare-datatypes ((BalanceConc!30364 0))(
  ( (BalanceConc!30365 (c!861746 Conc!15467)) )
))
(declare-fun thiss!5840 () BalanceConc!30364)

(declare-fun isBalanced!4329 (Conc!15467) Bool)

(assert (=> start!532364 (= res!2144624 (isBalanced!4329 (c!861746 thiss!5840)))))

(assert (=> start!532364 e!3143788))

(declare-fun e!3143787 () Bool)

(declare-fun inv!76918 (BalanceConc!30364) Bool)

(assert (=> start!532364 (and (inv!76918 thiss!5840) e!3143787)))

(assert (=> start!532364 true))

(declare-fun b!5032601 () Bool)

(declare-fun i!595 () Int)

(declare-datatypes ((tuple2!63140 0))(
  ( (tuple2!63141 (_1!34873 Conc!15467) (_2!34873 Conc!15467)) )
))
(declare-fun splitAt!470 (Conc!15467 Int) tuple2!63140)

(assert (=> b!5032601 (= e!3143788 (not (inv!76918 (BalanceConc!30365 (_1!34873 (splitAt!470 (c!861746 thiss!5840) i!595))))))))

(declare-fun b!5032599 () Bool)

(declare-fun res!2144626 () Bool)

(assert (=> b!5032599 (=> (not res!2144626) (not e!3143788))))

(assert (=> b!5032599 (= res!2144626 (<= 0 i!595))))

(declare-fun b!5032600 () Bool)

(declare-fun res!2144625 () Bool)

(assert (=> b!5032600 (=> (not res!2144625) (not e!3143788))))

(declare-fun size!38798 (BalanceConc!30364) Int)

(assert (=> b!5032600 (= res!2144625 (<= i!595 (size!38798 thiss!5840)))))

(declare-fun b!5032602 () Bool)

(declare-fun tp!1409849 () Bool)

(declare-fun inv!76919 (Conc!15467) Bool)

(assert (=> b!5032602 (= e!3143787 (and (inv!76919 (c!861746 thiss!5840)) tp!1409849))))

(assert (= (and start!532364 res!2144624) b!5032599))

(assert (= (and b!5032599 res!2144626) b!5032600))

(assert (= (and b!5032600 res!2144625) b!5032601))

(assert (= start!532364 b!5032602))

(declare-fun m!6067600 () Bool)

(assert (=> start!532364 m!6067600))

(declare-fun m!6067602 () Bool)

(assert (=> start!532364 m!6067602))

(declare-fun m!6067604 () Bool)

(assert (=> b!5032601 m!6067604))

(declare-fun m!6067606 () Bool)

(assert (=> b!5032601 m!6067606))

(declare-fun m!6067608 () Bool)

(assert (=> b!5032600 m!6067608))

(declare-fun m!6067610 () Bool)

(assert (=> b!5032602 m!6067610))

(push 1)

(assert (not b!5032600))

(assert (not start!532364))

(assert (not b!5032602))

(assert (not b!5032601))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1619472 () Bool)

(declare-fun lt!2082479 () Int)

(declare-fun size!38800 (List!58379) Int)

(declare-fun list!18828 (BalanceConc!30364) List!58379)

(assert (=> d!1619472 (= lt!2082479 (size!38800 (list!18828 thiss!5840)))))

(declare-fun size!38801 (Conc!15467) Int)

(assert (=> d!1619472 (= lt!2082479 (size!38801 (c!861746 thiss!5840)))))

(assert (=> d!1619472 (= (size!38798 thiss!5840) lt!2082479)))

(declare-fun bs!1188659 () Bool)

(assert (= bs!1188659 d!1619472))

(declare-fun m!6067624 () Bool)

(assert (=> bs!1188659 m!6067624))

(assert (=> bs!1188659 m!6067624))

(declare-fun m!6067626 () Bool)

(assert (=> bs!1188659 m!6067626))

(declare-fun m!6067628 () Bool)

(assert (=> bs!1188659 m!6067628))

(assert (=> b!5032600 d!1619472))

(declare-fun b!5032627 () Bool)

(declare-fun res!2144650 () Bool)

(declare-fun e!3143800 () Bool)

(assert (=> b!5032627 (=> (not res!2144650) (not e!3143800))))

(assert (=> b!5032627 (= res!2144650 (isBalanced!4329 (right!42960 (c!861746 thiss!5840))))))

(declare-fun b!5032628 () Bool)

(declare-fun res!2144651 () Bool)

(assert (=> b!5032628 (=> (not res!2144651) (not e!3143800))))

(assert (=> b!5032628 (= res!2144651 (isBalanced!4329 (left!42630 (c!861746 thiss!5840))))))

(declare-fun b!5032629 () Bool)

(declare-fun isEmpty!31490 (Conc!15467) Bool)

(assert (=> b!5032629 (= e!3143800 (not (isEmpty!31490 (right!42960 (c!861746 thiss!5840)))))))

(declare-fun b!5032631 () Bool)

(declare-fun res!2144652 () Bool)

(assert (=> b!5032631 (=> (not res!2144652) (not e!3143800))))

(assert (=> b!5032631 (= res!2144652 (not (isEmpty!31490 (left!42630 (c!861746 thiss!5840)))))))

(declare-fun b!5032632 () Bool)

(declare-fun res!2144648 () Bool)

(assert (=> b!5032632 (=> (not res!2144648) (not e!3143800))))

(declare-fun height!2054 (Conc!15467) Int)

(assert (=> b!5032632 (= res!2144648 (<= (- (height!2054 (left!42630 (c!861746 thiss!5840))) (height!2054 (right!42960 (c!861746 thiss!5840)))) 1))))

(declare-fun d!1619476 () Bool)

(declare-fun res!2144653 () Bool)

(declare-fun e!3143799 () Bool)

(assert (=> d!1619476 (=> res!2144653 e!3143799)))

(assert (=> d!1619476 (= res!2144653 (not (is-Node!15467 (c!861746 thiss!5840))))))

(assert (=> d!1619476 (= (isBalanced!4329 (c!861746 thiss!5840)) e!3143799)))

(declare-fun b!5032630 () Bool)

(assert (=> b!5032630 (= e!3143799 e!3143800)))

(declare-fun res!2144649 () Bool)

(assert (=> b!5032630 (=> (not res!2144649) (not e!3143800))))

(assert (=> b!5032630 (= res!2144649 (<= (- 1) (- (height!2054 (left!42630 (c!861746 thiss!5840))) (height!2054 (right!42960 (c!861746 thiss!5840))))))))

(assert (= (and d!1619476 (not res!2144653)) b!5032630))

(assert (= (and b!5032630 res!2144649) b!5032632))

(assert (= (and b!5032632 res!2144648) b!5032628))

(assert (= (and b!5032628 res!2144651) b!5032627))

(assert (= (and b!5032627 res!2144650) b!5032631))

(assert (= (and b!5032631 res!2144652) b!5032629))

(declare-fun m!6067632 () Bool)

(assert (=> b!5032629 m!6067632))

(declare-fun m!6067634 () Bool)

(assert (=> b!5032627 m!6067634))

(declare-fun m!6067636 () Bool)

(assert (=> b!5032628 m!6067636))

(declare-fun m!6067638 () Bool)

(assert (=> b!5032631 m!6067638))

(declare-fun m!6067640 () Bool)

(assert (=> b!5032632 m!6067640))

(declare-fun m!6067642 () Bool)

(assert (=> b!5032632 m!6067642))

(assert (=> b!5032630 m!6067640))

(assert (=> b!5032630 m!6067642))

(assert (=> start!532364 d!1619476))

(declare-fun d!1619480 () Bool)

(assert (=> d!1619480 (= (inv!76918 thiss!5840) (isBalanced!4329 (c!861746 thiss!5840)))))

(declare-fun bs!1188661 () Bool)

(assert (= bs!1188661 d!1619480))

(assert (=> bs!1188661 m!6067600))

(assert (=> start!532364 d!1619480))

(declare-fun d!1619482 () Bool)

(declare-fun c!861750 () Bool)

(assert (=> d!1619482 (= c!861750 (is-Node!15467 (c!861746 thiss!5840)))))

(declare-fun e!3143805 () Bool)

(assert (=> d!1619482 (= (inv!76919 (c!861746 thiss!5840)) e!3143805)))

(declare-fun b!5032639 () Bool)

(declare-fun inv!76922 (Conc!15467) Bool)

(assert (=> b!5032639 (= e!3143805 (inv!76922 (c!861746 thiss!5840)))))

(declare-fun b!5032640 () Bool)

(declare-fun e!3143806 () Bool)

(assert (=> b!5032640 (= e!3143805 e!3143806)))

(declare-fun res!2144656 () Bool)

(assert (=> b!5032640 (= res!2144656 (not (is-Leaf!25665 (c!861746 thiss!5840))))))

(assert (=> b!5032640 (=> res!2144656 e!3143806)))

(declare-fun b!5032641 () Bool)

(declare-fun inv!76923 (Conc!15467) Bool)

(assert (=> b!5032641 (= e!3143806 (inv!76923 (c!861746 thiss!5840)))))

(assert (= (and d!1619482 c!861750) b!5032639))

(assert (= (and d!1619482 (not c!861750)) b!5032640))

(assert (= (and b!5032640 (not res!2144656)) b!5032641))

(declare-fun m!6067644 () Bool)

(assert (=> b!5032639 m!6067644))

(declare-fun m!6067646 () Bool)

(assert (=> b!5032641 m!6067646))

(assert (=> b!5032602 d!1619482))

(declare-fun d!1619484 () Bool)

(assert (=> d!1619484 (= (inv!76918 (BalanceConc!30365 (_1!34873 (splitAt!470 (c!861746 thiss!5840) i!595)))) (isBalanced!4329 (c!861746 (BalanceConc!30365 (_1!34873 (splitAt!470 (c!861746 thiss!5840) i!595))))))))

(declare-fun bs!1188662 () Bool)

(assert (= bs!1188662 d!1619484))

(declare-fun m!6067648 () Bool)

(assert (=> bs!1188662 m!6067648))

(assert (=> b!5032601 d!1619484))

(declare-fun b!5032762 () Bool)

(declare-fun lt!2082552 () tuple2!63140)

(declare-fun call!351068 () tuple2!63140)

(assert (=> b!5032762 (= lt!2082552 call!351068)))

(declare-fun e!3143878 () tuple2!63140)

(declare-fun call!351070 () Conc!15467)

(assert (=> b!5032762 (= e!3143878 (tuple2!63141 call!351070 (_2!34873 lt!2082552)))))

(declare-fun b!5032763 () Bool)

(declare-fun e!3143874 () Int)

(assert (=> b!5032763 (= e!3143874 i!595)))

(declare-fun b!5032764 () Bool)

(declare-datatypes ((Unit!149437 0))(
  ( (Unit!149438) )
))
(declare-fun lt!2082547 () Unit!149437)

(declare-fun lt!2082548 () Unit!149437)

(assert (=> b!5032764 (= lt!2082547 lt!2082548)))

(declare-fun lt!2082545 () List!58379)

(declare-fun call!351069 () Int)

(declare-fun drop!2595 (List!58379 Int) List!58379)

(declare-fun slice!822 (List!58379 Int Int) List!58379)

(assert (=> b!5032764 (= (drop!2595 lt!2082545 i!595) (slice!822 lt!2082545 i!595 call!351069))))

(declare-fun dropLemma!53 (List!58379 Int) Unit!149437)

(assert (=> b!5032764 (= lt!2082548 (dropLemma!53 lt!2082545 i!595))))

(declare-fun list!18829 (IArray!30995) List!58379)

(assert (=> b!5032764 (= lt!2082545 (list!18829 (xs!18793 (c!861746 thiss!5840))))))

(declare-datatypes ((tuple2!63144 0))(
  ( (tuple2!63145 (_1!34875 List!58379) (_2!34875 List!58379)) )
))
(declare-fun lt!2082556 () tuple2!63144)

(declare-fun call!351065 () tuple2!63144)

(assert (=> b!5032764 (= lt!2082556 call!351065)))

(declare-fun e!3143872 () tuple2!63140)

(declare-fun slice!823 (IArray!30995 Int Int) IArray!30995)

(assert (=> b!5032764 (= e!3143872 (tuple2!63141 (Leaf!25665 (slice!823 (xs!18793 (c!861746 thiss!5840)) 0 i!595) i!595) (Leaf!25665 (slice!823 (xs!18793 (c!861746 thiss!5840)) i!595 (csize!31165 (c!861746 thiss!5840))) (- (csize!31165 (c!861746 thiss!5840)) i!595))))))

(declare-fun b!5032765 () Bool)

(declare-fun c!861806 () Bool)

(assert (=> b!5032765 (= c!861806 (<= i!595 0))))

(declare-fun e!3143871 () tuple2!63140)

(declare-fun e!3143876 () tuple2!63140)

(assert (=> b!5032765 (= e!3143871 e!3143876)))

(declare-fun b!5032766 () Bool)

(declare-fun lt!2082557 () tuple2!63144)

(declare-fun call!351067 () tuple2!63144)

(assert (=> b!5032766 (= lt!2082557 call!351067)))

(declare-fun e!3143870 () tuple2!63144)

(declare-fun call!351066 () List!58379)

(assert (=> b!5032766 (= e!3143870 (tuple2!63145 call!351066 (_2!34875 lt!2082557)))))

(declare-fun b!5032767 () Bool)

(assert (=> b!5032767 (= e!3143876 (tuple2!63141 Empty!15467 (c!861746 thiss!5840)))))

(declare-fun b!5032768 () Bool)

(declare-fun e!3143868 () List!58379)

(assert (=> b!5032768 (= e!3143868 (list!18829 (xs!18793 (c!861746 thiss!5840))))))

(declare-fun lt!2082555 () List!58379)

(declare-fun b!5032769 () Bool)

(declare-fun lt!2082550 () List!58379)

(declare-fun c!861814 () Bool)

(assert (=> b!5032769 (= e!3143868 (ite c!861814 lt!2082550 lt!2082555))))

(declare-fun b!5032770 () Bool)

(assert (=> b!5032770 (= e!3143872 (tuple2!63141 (c!861746 thiss!5840) Empty!15467))))

(declare-fun c!861811 () Bool)

(declare-fun bm!351060 () Bool)

(assert (=> bm!351060 (= call!351069 (size!38800 (ite c!861811 lt!2082545 lt!2082550)))))

(declare-fun b!5032771 () Bool)

(assert (=> b!5032771 (= e!3143874 (- i!595 call!351069))))

(declare-fun b!5032772 () Bool)

(declare-fun e!3143875 () tuple2!63140)

(assert (=> b!5032772 (= e!3143875 (tuple2!63141 (left!42630 (c!861746 thiss!5840)) (right!42960 (c!861746 thiss!5840))))))

(declare-fun b!5032773 () Bool)

(declare-fun e!3143877 () Int)

(assert (=> b!5032773 (= e!3143877 i!595)))

(declare-fun d!1619486 () Bool)

(declare-fun e!3143873 () Bool)

(assert (=> d!1619486 e!3143873))

(declare-fun res!2144668 () Bool)

(assert (=> d!1619486 (=> (not res!2144668) (not e!3143873))))

(declare-fun lt!2082546 () tuple2!63140)

(assert (=> d!1619486 (= res!2144668 (isBalanced!4329 (_1!34873 lt!2082546)))))

(declare-fun e!3143869 () tuple2!63140)

(assert (=> d!1619486 (= lt!2082546 e!3143869)))

(declare-fun c!861807 () Bool)

(assert (=> d!1619486 (= c!861807 (is-Empty!15467 (c!861746 thiss!5840)))))

(assert (=> d!1619486 (isBalanced!4329 (c!861746 thiss!5840))))

(assert (=> d!1619486 (= (splitAt!470 (c!861746 thiss!5840) i!595) lt!2082546)))

(declare-fun bm!351061 () Bool)

(declare-fun c!861808 () Bool)

(assert (=> bm!351061 (= c!861808 c!861814)))

(assert (=> bm!351061 (= call!351067 call!351065)))

(declare-fun b!5032774 () Bool)

(assert (=> b!5032774 (= e!3143876 e!3143872)))

(declare-fun c!861809 () Bool)

(assert (=> b!5032774 (= c!861809 (= i!595 (csize!31165 (c!861746 thiss!5840))))))

(declare-fun b!5032775 () Bool)

(assert (=> b!5032775 (= e!3143877 (- i!595 (size!38801 (left!42630 (c!861746 thiss!5840)))))))

(declare-fun b!5032776 () Bool)

(declare-fun res!2144667 () Bool)

(assert (=> b!5032776 (=> (not res!2144667) (not e!3143873))))

(assert (=> b!5032776 (= res!2144667 (isBalanced!4329 (_2!34873 lt!2082546)))))

(declare-fun bm!351062 () Bool)

(declare-fun c!861813 () Bool)

(assert (=> bm!351062 (= c!861813 c!861811)))

(declare-fun splitAtIndex!170 (List!58379 Int) tuple2!63144)

(assert (=> bm!351062 (= call!351065 (splitAtIndex!170 e!3143868 (ite c!861811 i!595 e!3143874)))))

(declare-fun bm!351063 () Bool)

(declare-fun lt!2082554 () tuple2!63144)

(declare-fun ++!12681 (List!58379 List!58379) List!58379)

(assert (=> bm!351063 (= call!351066 (++!12681 (ite c!861814 (_2!34875 lt!2082554) lt!2082550) (ite c!861814 lt!2082555 (_1!34875 lt!2082557))))))

(declare-fun bm!351064 () Bool)

(declare-fun c!861815 () Bool)

(declare-fun c!861810 () Bool)

(assert (=> bm!351064 (= c!861815 c!861810)))

(assert (=> bm!351064 (= call!351068 (splitAt!470 (ite c!861810 (left!42630 (c!861746 thiss!5840)) (right!42960 (c!861746 thiss!5840))) e!3143877))))

(declare-fun b!5032777 () Bool)

(declare-fun e!3143867 () tuple2!63144)

(assert (=> b!5032777 (= e!3143867 (tuple2!63145 lt!2082550 lt!2082555))))

(declare-fun b!5032778 () Bool)

(assert (=> b!5032778 (= e!3143875 e!3143878)))

(assert (=> b!5032778 (= c!861810 (< i!595 (size!38801 (left!42630 (c!861746 thiss!5840)))))))

(declare-fun b!5032779 () Bool)

(assert (=> b!5032779 (= e!3143867 e!3143870)))

(assert (=> b!5032779 (= c!861814 (< i!595 call!351069))))

(declare-fun b!5032780 () Bool)

(declare-fun lt!2082551 () tuple2!63140)

(assert (=> b!5032780 (= lt!2082551 call!351068)))

(assert (=> b!5032780 (= e!3143878 (tuple2!63141 (_1!34873 lt!2082551) call!351070))))

(declare-fun b!5032781 () Bool)

(declare-fun c!861816 () Bool)

(assert (=> b!5032781 (= c!861816 (= (size!38801 (left!42630 (c!861746 thiss!5840))) i!595))))

(declare-fun lt!2082549 () Unit!149437)

(declare-fun lt!2082553 () Unit!149437)

(assert (=> b!5032781 (= lt!2082549 lt!2082553)))

(assert (=> b!5032781 (= (splitAtIndex!170 (++!12681 lt!2082550 lt!2082555) i!595) e!3143867)))

(declare-fun c!861812 () Bool)

(assert (=> b!5032781 (= c!861812 (= call!351069 i!595))))

(declare-fun splitAtLemma!53 (List!58379 List!58379 Int) Unit!149437)

(assert (=> b!5032781 (= lt!2082553 (splitAtLemma!53 lt!2082550 lt!2082555 i!595))))

(declare-fun list!18832 (Conc!15467) List!58379)

(assert (=> b!5032781 (= lt!2082555 (list!18832 (right!42960 (c!861746 thiss!5840))))))

(assert (=> b!5032781 (= lt!2082550 (list!18832 (left!42630 (c!861746 thiss!5840))))))

(assert (=> b!5032781 (= e!3143871 e!3143875)))

(declare-fun b!5032782 () Bool)

(assert (=> b!5032782 (= e!3143869 e!3143871)))

(assert (=> b!5032782 (= c!861811 (is-Leaf!25665 (c!861746 thiss!5840)))))

(declare-fun b!5032783 () Bool)

(assert (=> b!5032783 (= lt!2082554 call!351067)))

(assert (=> b!5032783 (= e!3143870 (tuple2!63145 (_1!34875 lt!2082554) call!351066))))

(declare-fun bm!351065 () Bool)

(declare-fun ++!12683 (Conc!15467 Conc!15467) Conc!15467)

(assert (=> bm!351065 (= call!351070 (++!12683 (ite c!861810 (_2!34873 lt!2082551) (left!42630 (c!861746 thiss!5840))) (ite c!861810 (right!42960 (c!861746 thiss!5840)) (_1!34873 lt!2082552))))))

(declare-fun b!5032784 () Bool)

(assert (=> b!5032784 (= e!3143869 (tuple2!63141 (c!861746 thiss!5840) (c!861746 thiss!5840)))))

(declare-fun b!5032785 () Bool)

(assert (=> b!5032785 (= e!3143873 (= (tuple2!63145 (list!18832 (_1!34873 lt!2082546)) (list!18832 (_2!34873 lt!2082546))) (splitAtIndex!170 (list!18832 (c!861746 thiss!5840)) i!595)))))

(assert (= (and d!1619486 c!861807) b!5032784))

(assert (= (and d!1619486 (not c!861807)) b!5032782))

(assert (= (and b!5032782 c!861811) b!5032765))

(assert (= (and b!5032782 (not c!861811)) b!5032781))

(assert (= (and b!5032765 c!861806) b!5032767))

(assert (= (and b!5032765 (not c!861806)) b!5032774))

(assert (= (and b!5032774 c!861809) b!5032770))

(assert (= (and b!5032774 (not c!861809)) b!5032764))

(assert (= (and b!5032781 c!861812) b!5032777))

(assert (= (and b!5032781 (not c!861812)) b!5032779))

(assert (= (and b!5032779 c!861814) b!5032783))

(assert (= (and b!5032779 (not c!861814)) b!5032766))

(assert (= (or b!5032783 b!5032766) bm!351063))

(assert (= (or b!5032783 b!5032766) bm!351061))

(assert (= (and bm!351061 c!861808) b!5032763))

(assert (= (and bm!351061 (not c!861808)) b!5032771))

(assert (= (and b!5032781 c!861816) b!5032772))

(assert (= (and b!5032781 (not c!861816)) b!5032778))

(assert (= (and b!5032778 c!861810) b!5032780))

(assert (= (and b!5032778 (not c!861810)) b!5032762))

(assert (= (or b!5032780 b!5032762) bm!351065))

(assert (= (or b!5032780 b!5032762) bm!351064))

(assert (= (and bm!351064 c!861815) b!5032773))

(assert (= (and bm!351064 (not c!861815)) b!5032775))

(assert (= (or b!5032764 b!5032781 b!5032771 b!5032779) bm!351060))

(assert (= (or b!5032764 bm!351061) bm!351062))

(assert (= (and bm!351062 c!861813) b!5032768))

(assert (= (and bm!351062 (not c!861813)) b!5032769))

(assert (= (and d!1619486 res!2144668) b!5032776))

(assert (= (and b!5032776 res!2144667) b!5032785))

(declare-fun m!6067696 () Bool)

(assert (=> bm!351065 m!6067696))

(declare-fun m!6067698 () Bool)

(assert (=> b!5032768 m!6067698))

(declare-fun m!6067700 () Bool)

(assert (=> b!5032785 m!6067700))

(declare-fun m!6067702 () Bool)

(assert (=> b!5032785 m!6067702))

(declare-fun m!6067704 () Bool)

(assert (=> b!5032785 m!6067704))

(assert (=> b!5032785 m!6067704))

(declare-fun m!6067706 () Bool)

(assert (=> b!5032785 m!6067706))

(declare-fun m!6067708 () Bool)

(assert (=> bm!351063 m!6067708))

(declare-fun m!6067710 () Bool)

(assert (=> bm!351062 m!6067710))

(declare-fun m!6067712 () Bool)

(assert (=> b!5032778 m!6067712))

(declare-fun m!6067714 () Bool)

(assert (=> bm!351060 m!6067714))

(declare-fun m!6067716 () Bool)

(assert (=> b!5032781 m!6067716))

(declare-fun m!6067718 () Bool)

(assert (=> b!5032781 m!6067718))

(declare-fun m!6067720 () Bool)

(assert (=> b!5032781 m!6067720))

(assert (=> b!5032781 m!6067712))

(declare-fun m!6067722 () Bool)

(assert (=> b!5032781 m!6067722))

(assert (=> b!5032781 m!6067716))

(declare-fun m!6067724 () Bool)

(assert (=> b!5032781 m!6067724))

(declare-fun m!6067726 () Bool)

(assert (=> b!5032764 m!6067726))

(declare-fun m!6067728 () Bool)

(assert (=> b!5032764 m!6067728))

(declare-fun m!6067730 () Bool)

(assert (=> b!5032764 m!6067730))

(declare-fun m!6067732 () Bool)

(assert (=> b!5032764 m!6067732))

(assert (=> b!5032764 m!6067698))

(declare-fun m!6067734 () Bool)

(assert (=> b!5032764 m!6067734))

(assert (=> b!5032775 m!6067712))

(declare-fun m!6067736 () Bool)

(assert (=> b!5032776 m!6067736))

(declare-fun m!6067738 () Bool)

(assert (=> bm!351064 m!6067738))

(declare-fun m!6067740 () Bool)

(assert (=> d!1619486 m!6067740))

(assert (=> d!1619486 m!6067600))

(assert (=> b!5032601 d!1619486))

(declare-fun tp!1409861 () Bool)

(declare-fun b!5032803 () Bool)

(declare-fun tp!1409860 () Bool)

(declare-fun e!3143890 () Bool)

(assert (=> b!5032803 (= e!3143890 (and (inv!76919 (left!42630 (c!861746 thiss!5840))) tp!1409861 (inv!76919 (right!42960 (c!861746 thiss!5840))) tp!1409860))))

(declare-fun b!5032805 () Bool)

(declare-fun e!3143889 () Bool)

(declare-fun tp!1409859 () Bool)

(assert (=> b!5032805 (= e!3143889 tp!1409859)))

(declare-fun b!5032804 () Bool)

(declare-fun inv!76924 (IArray!30995) Bool)

(assert (=> b!5032804 (= e!3143890 (and (inv!76924 (xs!18793 (c!861746 thiss!5840))) e!3143889))))

(assert (=> b!5032602 (= tp!1409849 (and (inv!76919 (c!861746 thiss!5840)) e!3143890))))

(assert (= (and b!5032602 (is-Node!15467 (c!861746 thiss!5840))) b!5032803))

(assert (= b!5032804 b!5032805))

(assert (= (and b!5032602 (is-Leaf!25665 (c!861746 thiss!5840))) b!5032804))

(declare-fun m!6067746 () Bool)

(assert (=> b!5032803 m!6067746))

(declare-fun m!6067748 () Bool)

(assert (=> b!5032803 m!6067748))

(declare-fun m!6067750 () Bool)

(assert (=> b!5032804 m!6067750))

(assert (=> b!5032602 m!6067610))

(push 1)

(assert (not b!5032629))

(assert (not b!5032804))

(assert (not bm!351064))

(assert (not b!5032803))

(assert (not d!1619480))

(assert (not b!5032631))

(assert (not b!5032805))

(assert (not b!5032639))

(assert (not bm!351060))

(assert (not b!5032785))

(assert (not bm!351062))

(assert (not b!5032768))

(assert (not d!1619486))

(assert (not b!5032627))

(assert (not d!1619472))

(assert (not b!5032781))

(assert (not b!5032776))

(assert (not bm!351065))

(assert (not b!5032630))

(assert (not b!5032778))

(assert (not b!5032602))

(assert (not b!5032764))

(assert (not b!5032632))

(assert (not b!5032775))

(assert (not bm!351063))

(assert (not d!1619484))

(assert (not b!5032628))

(assert (not b!5032641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

