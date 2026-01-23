; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536392 () Bool)

(assert start!536392)

(declare-fun b!5090545 () Bool)

(declare-fun e!3174730 () Bool)

(declare-fun tp!1419116 () Bool)

(assert (=> b!5090545 (= e!3174730 tp!1419116)))

(declare-fun b!5090546 () Bool)

(declare-fun e!3174729 () Bool)

(declare-datatypes ((T!105564 0))(
  ( (T!105565 (val!23715 Int)) )
))
(declare-datatypes ((List!58640 0))(
  ( (Nil!58516) (Cons!58516 (h!64964 T!105564) (t!371545 List!58640)) )
))
(declare-datatypes ((IArray!31323 0))(
  ( (IArray!31324 (innerList!15719 List!58640)) )
))
(declare-datatypes ((Conc!15631 0))(
  ( (Node!15631 (left!42919 Conc!15631) (right!43249 Conc!15631) (csize!31492 Int) (cheight!15842 Int)) (Leaf!25952 (xs!19013 IArray!31323) (csize!31493 Int)) (Empty!15631) )
))
(declare-fun t!3643 () Conc!15631)

(declare-fun inv!77914 (IArray!31323) Bool)

(assert (=> b!5090546 (= e!3174729 (and (inv!77914 (xs!19013 t!3643)) e!3174730))))

(declare-fun res!2166703 () Bool)

(declare-fun e!3174731 () Bool)

(assert (=> start!536392 (=> (not res!2166703) (not e!3174731))))

(declare-fun i!607 () Int)

(assert (=> start!536392 (= res!2166703 (<= 0 i!607))))

(assert (=> start!536392 e!3174731))

(assert (=> start!536392 true))

(declare-fun inv!77915 (Conc!15631) Bool)

(assert (=> start!536392 (and (inv!77915 t!3643) e!3174729)))

(declare-fun b!5090547 () Bool)

(declare-fun res!2166702 () Bool)

(assert (=> b!5090547 (=> (not res!2166702) (not e!3174731))))

(assert (=> b!5090547 (= res!2166702 (and (is-Leaf!25952 t!3643) (>= i!607 0) (< i!607 (csize!31493 t!3643))))))

(declare-fun b!5090548 () Bool)

(declare-fun size!39204 (List!58640) Int)

(declare-fun list!19093 (IArray!31323) List!58640)

(assert (=> b!5090548 (= e!3174731 (> (size!39204 (list!19093 (xs!19013 t!3643))) 512))))

(declare-fun b!5090549 () Bool)

(declare-fun res!2166701 () Bool)

(assert (=> b!5090549 (=> (not res!2166701) (not e!3174731))))

(declare-fun size!39205 (Conc!15631) Int)

(assert (=> b!5090549 (= res!2166701 (< i!607 (size!39205 t!3643)))))

(declare-fun tp!1419118 () Bool)

(declare-fun tp!1419117 () Bool)

(declare-fun b!5090550 () Bool)

(assert (=> b!5090550 (= e!3174729 (and (inv!77915 (left!42919 t!3643)) tp!1419117 (inv!77915 (right!43249 t!3643)) tp!1419118))))

(assert (= (and start!536392 res!2166703) b!5090549))

(assert (= (and b!5090549 res!2166701) b!5090547))

(assert (= (and b!5090547 res!2166702) b!5090548))

(assert (= (and start!536392 (is-Node!15631 t!3643)) b!5090550))

(assert (= b!5090546 b!5090545))

(assert (= (and start!536392 (is-Leaf!25952 t!3643)) b!5090546))

(declare-fun m!6148626 () Bool)

(assert (=> b!5090549 m!6148626))

(declare-fun m!6148628 () Bool)

(assert (=> b!5090546 m!6148628))

(declare-fun m!6148630 () Bool)

(assert (=> b!5090550 m!6148630))

(declare-fun m!6148632 () Bool)

(assert (=> b!5090550 m!6148632))

(declare-fun m!6148634 () Bool)

(assert (=> start!536392 m!6148634))

(declare-fun m!6148636 () Bool)

(assert (=> b!5090548 m!6148636))

(assert (=> b!5090548 m!6148636))

(declare-fun m!6148638 () Bool)

(assert (=> b!5090548 m!6148638))

(push 1)

(assert (not b!5090545))

(assert (not b!5090548))

(assert (not start!536392))

(assert (not b!5090546))

(assert (not b!5090550))

(assert (not b!5090549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1647805 () Bool)

(declare-fun lt!2092393 () Int)

(declare-fun list!19095 (Conc!15631) List!58640)

(assert (=> d!1647805 (= lt!2092393 (size!39204 (list!19095 t!3643)))))

(assert (=> d!1647805 (= lt!2092393 (ite (is-Empty!15631 t!3643) 0 (ite (is-Leaf!25952 t!3643) (csize!31493 t!3643) (csize!31492 t!3643))))))

(assert (=> d!1647805 (= (size!39205 t!3643) lt!2092393)))

(declare-fun bs!1191140 () Bool)

(assert (= bs!1191140 d!1647805))

(declare-fun m!6148654 () Bool)

(assert (=> bs!1191140 m!6148654))

(assert (=> bs!1191140 m!6148654))

(declare-fun m!6148656 () Bool)

(assert (=> bs!1191140 m!6148656))

(assert (=> b!5090549 d!1647805))

(declare-fun d!1647807 () Bool)

(declare-fun c!874815 () Bool)

(assert (=> d!1647807 (= c!874815 (is-Node!15631 (left!42919 t!3643)))))

(declare-fun e!3174745 () Bool)

(assert (=> d!1647807 (= (inv!77915 (left!42919 t!3643)) e!3174745)))

(declare-fun b!5090575 () Bool)

(declare-fun inv!77918 (Conc!15631) Bool)

(assert (=> b!5090575 (= e!3174745 (inv!77918 (left!42919 t!3643)))))

(declare-fun b!5090576 () Bool)

(declare-fun e!3174746 () Bool)

(assert (=> b!5090576 (= e!3174745 e!3174746)))

(declare-fun res!2166715 () Bool)

(assert (=> b!5090576 (= res!2166715 (not (is-Leaf!25952 (left!42919 t!3643))))))

(assert (=> b!5090576 (=> res!2166715 e!3174746)))

(declare-fun b!5090577 () Bool)

(declare-fun inv!77919 (Conc!15631) Bool)

(assert (=> b!5090577 (= e!3174746 (inv!77919 (left!42919 t!3643)))))

(assert (= (and d!1647807 c!874815) b!5090575))

(assert (= (and d!1647807 (not c!874815)) b!5090576))

(assert (= (and b!5090576 (not res!2166715)) b!5090577))

(declare-fun m!6148658 () Bool)

(assert (=> b!5090575 m!6148658))

(declare-fun m!6148660 () Bool)

(assert (=> b!5090577 m!6148660))

(assert (=> b!5090550 d!1647807))

(declare-fun d!1647811 () Bool)

(declare-fun c!874816 () Bool)

(assert (=> d!1647811 (= c!874816 (is-Node!15631 (right!43249 t!3643)))))

(declare-fun e!3174747 () Bool)

(assert (=> d!1647811 (= (inv!77915 (right!43249 t!3643)) e!3174747)))

(declare-fun b!5090578 () Bool)

(assert (=> b!5090578 (= e!3174747 (inv!77918 (right!43249 t!3643)))))

(declare-fun b!5090579 () Bool)

(declare-fun e!3174748 () Bool)

(assert (=> b!5090579 (= e!3174747 e!3174748)))

(declare-fun res!2166716 () Bool)

(assert (=> b!5090579 (= res!2166716 (not (is-Leaf!25952 (right!43249 t!3643))))))

(assert (=> b!5090579 (=> res!2166716 e!3174748)))

(declare-fun b!5090580 () Bool)

(assert (=> b!5090580 (= e!3174748 (inv!77919 (right!43249 t!3643)))))

(assert (= (and d!1647811 c!874816) b!5090578))

(assert (= (and d!1647811 (not c!874816)) b!5090579))

(assert (= (and b!5090579 (not res!2166716)) b!5090580))

(declare-fun m!6148662 () Bool)

(assert (=> b!5090578 m!6148662))

(declare-fun m!6148664 () Bool)

(assert (=> b!5090580 m!6148664))

(assert (=> b!5090550 d!1647811))

(declare-fun d!1647813 () Bool)

(assert (=> d!1647813 (= (inv!77914 (xs!19013 t!3643)) (<= (size!39204 (innerList!15719 (xs!19013 t!3643))) 2147483647))))

(declare-fun bs!1191141 () Bool)

(assert (= bs!1191141 d!1647813))

(declare-fun m!6148666 () Bool)

(assert (=> bs!1191141 m!6148666))

(assert (=> b!5090546 d!1647813))

(declare-fun d!1647815 () Bool)

(declare-fun c!874817 () Bool)

(assert (=> d!1647815 (= c!874817 (is-Node!15631 t!3643))))

(declare-fun e!3174749 () Bool)

(assert (=> d!1647815 (= (inv!77915 t!3643) e!3174749)))

(declare-fun b!5090581 () Bool)

(assert (=> b!5090581 (= e!3174749 (inv!77918 t!3643))))

(declare-fun b!5090582 () Bool)

(declare-fun e!3174750 () Bool)

(assert (=> b!5090582 (= e!3174749 e!3174750)))

(declare-fun res!2166717 () Bool)

(assert (=> b!5090582 (= res!2166717 (not (is-Leaf!25952 t!3643)))))

(assert (=> b!5090582 (=> res!2166717 e!3174750)))

(declare-fun b!5090583 () Bool)

(assert (=> b!5090583 (= e!3174750 (inv!77919 t!3643))))

(assert (= (and d!1647815 c!874817) b!5090581))

(assert (= (and d!1647815 (not c!874817)) b!5090582))

(assert (= (and b!5090582 (not res!2166717)) b!5090583))

(declare-fun m!6148668 () Bool)

(assert (=> b!5090581 m!6148668))

(declare-fun m!6148670 () Bool)

(assert (=> b!5090583 m!6148670))

(assert (=> start!536392 d!1647815))

(declare-fun d!1647817 () Bool)

(declare-fun lt!2092398 () Int)

(assert (=> d!1647817 (>= lt!2092398 0)))

(declare-fun e!3174753 () Int)

(assert (=> d!1647817 (= lt!2092398 e!3174753)))

(declare-fun c!874820 () Bool)

(assert (=> d!1647817 (= c!874820 (is-Nil!58516 (list!19093 (xs!19013 t!3643))))))

(assert (=> d!1647817 (= (size!39204 (list!19093 (xs!19013 t!3643))) lt!2092398)))

(declare-fun b!5090588 () Bool)

(assert (=> b!5090588 (= e!3174753 0)))

(declare-fun b!5090589 () Bool)

(assert (=> b!5090589 (= e!3174753 (+ 1 (size!39204 (t!371545 (list!19093 (xs!19013 t!3643))))))))

(assert (= (and d!1647817 c!874820) b!5090588))

(assert (= (and d!1647817 (not c!874820)) b!5090589))

(declare-fun m!6148672 () Bool)

(assert (=> b!5090589 m!6148672))

(assert (=> b!5090548 d!1647817))

(declare-fun d!1647819 () Bool)

(assert (=> d!1647819 (= (list!19093 (xs!19013 t!3643)) (innerList!15719 (xs!19013 t!3643)))))

(assert (=> b!5090548 d!1647819))

(declare-fun b!5090594 () Bool)

(declare-fun e!3174756 () Bool)

(declare-fun tp_is_empty!37141 () Bool)

(declare-fun tp!1419130 () Bool)

(assert (=> b!5090594 (= e!3174756 (and tp_is_empty!37141 tp!1419130))))

(assert (=> b!5090545 (= tp!1419116 e!3174756)))

(assert (= (and b!5090545 (is-Cons!58516 (innerList!15719 (xs!19013 t!3643)))) b!5090594))

(declare-fun b!5090603 () Bool)

(declare-fun tp!1419137 () Bool)

(declare-fun e!3174762 () Bool)

(declare-fun tp!1419139 () Bool)

(assert (=> b!5090603 (= e!3174762 (and (inv!77915 (left!42919 (left!42919 t!3643))) tp!1419137 (inv!77915 (right!43249 (left!42919 t!3643))) tp!1419139))))

(declare-fun b!5090605 () Bool)

(declare-fun e!3174761 () Bool)

(declare-fun tp!1419138 () Bool)

(assert (=> b!5090605 (= e!3174761 tp!1419138)))

(declare-fun b!5090604 () Bool)

(assert (=> b!5090604 (= e!3174762 (and (inv!77914 (xs!19013 (left!42919 t!3643))) e!3174761))))

(assert (=> b!5090550 (= tp!1419117 (and (inv!77915 (left!42919 t!3643)) e!3174762))))

(assert (= (and b!5090550 (is-Node!15631 (left!42919 t!3643))) b!5090603))

(assert (= b!5090604 b!5090605))

(assert (= (and b!5090550 (is-Leaf!25952 (left!42919 t!3643))) b!5090604))

(declare-fun m!6148678 () Bool)

(assert (=> b!5090603 m!6148678))

(declare-fun m!6148680 () Bool)

(assert (=> b!5090603 m!6148680))

(declare-fun m!6148682 () Bool)

(assert (=> b!5090604 m!6148682))

(assert (=> b!5090550 m!6148630))

(declare-fun tp!1419140 () Bool)

(declare-fun b!5090606 () Bool)

(declare-fun e!3174764 () Bool)

(declare-fun tp!1419142 () Bool)

(assert (=> b!5090606 (= e!3174764 (and (inv!77915 (left!42919 (right!43249 t!3643))) tp!1419140 (inv!77915 (right!43249 (right!43249 t!3643))) tp!1419142))))

(declare-fun b!5090608 () Bool)

(declare-fun e!3174763 () Bool)

(declare-fun tp!1419141 () Bool)

(assert (=> b!5090608 (= e!3174763 tp!1419141)))

(declare-fun b!5090607 () Bool)

(assert (=> b!5090607 (= e!3174764 (and (inv!77914 (xs!19013 (right!43249 t!3643))) e!3174763))))

(assert (=> b!5090550 (= tp!1419118 (and (inv!77915 (right!43249 t!3643)) e!3174764))))

(assert (= (and b!5090550 (is-Node!15631 (right!43249 t!3643))) b!5090606))

(assert (= b!5090607 b!5090608))

(assert (= (and b!5090550 (is-Leaf!25952 (right!43249 t!3643))) b!5090607))

(declare-fun m!6148684 () Bool)

(assert (=> b!5090606 m!6148684))

(declare-fun m!6148686 () Bool)

(assert (=> b!5090606 m!6148686))

(declare-fun m!6148688 () Bool)

(assert (=> b!5090607 m!6148688))

(assert (=> b!5090550 m!6148632))

(push 1)

(assert (not b!5090604))

(assert (not b!5090607))

(assert (not b!5090606))

(assert (not b!5090577))

(assert (not d!1647805))

(assert (not d!1647813))

(assert (not b!5090608))

(assert (not b!5090605))

(assert (not b!5090578))

(assert (not b!5090550))

(assert (not b!5090603))

(assert (not b!5090583))

(assert (not b!5090594))

(assert tp_is_empty!37141)

(assert (not b!5090575))

(assert (not b!5090589))

(assert (not b!5090580))

(assert (not b!5090581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1647833 () Bool)

(declare-fun res!2166727 () Bool)

(declare-fun e!3174791 () Bool)

(assert (=> d!1647833 (=> (not res!2166727) (not e!3174791))))

(assert (=> d!1647833 (= res!2166727 (<= (size!39204 (list!19093 (xs!19013 (right!43249 t!3643)))) 512))))

(assert (=> d!1647833 (= (inv!77919 (right!43249 t!3643)) e!3174791)))

(declare-fun b!5090653 () Bool)

(declare-fun res!2166728 () Bool)

(assert (=> b!5090653 (=> (not res!2166728) (not e!3174791))))

(assert (=> b!5090653 (= res!2166728 (= (csize!31493 (right!43249 t!3643)) (size!39204 (list!19093 (xs!19013 (right!43249 t!3643))))))))

(declare-fun b!5090654 () Bool)

(assert (=> b!5090654 (= e!3174791 (and (> (csize!31493 (right!43249 t!3643)) 0) (<= (csize!31493 (right!43249 t!3643)) 512)))))

(assert (= (and d!1647833 res!2166727) b!5090653))

(assert (= (and b!5090653 res!2166728) b!5090654))

(declare-fun m!6148718 () Bool)

(assert (=> d!1647833 m!6148718))

(assert (=> d!1647833 m!6148718))

(declare-fun m!6148720 () Bool)

(assert (=> d!1647833 m!6148720))

(assert (=> b!5090653 m!6148718))

(assert (=> b!5090653 m!6148718))

(assert (=> b!5090653 m!6148720))

(assert (=> b!5090580 d!1647833))

(declare-fun d!1647835 () Bool)

(declare-fun res!2166729 () Bool)

(declare-fun e!3174792 () Bool)

(assert (=> d!1647835 (=> (not res!2166729) (not e!3174792))))

(assert (=> d!1647835 (= res!2166729 (<= (size!39204 (list!19093 (xs!19013 t!3643))) 512))))

(assert (=> d!1647835 (= (inv!77919 t!3643) e!3174792)))

(declare-fun b!5090655 () Bool)

(declare-fun res!2166730 () Bool)

(assert (=> b!5090655 (=> (not res!2166730) (not e!3174792))))

(assert (=> b!5090655 (= res!2166730 (= (csize!31493 t!3643) (size!39204 (list!19093 (xs!19013 t!3643)))))))

(declare-fun b!5090656 () Bool)

(assert (=> b!5090656 (= e!3174792 (and (> (csize!31493 t!3643) 0) (<= (csize!31493 t!3643) 512)))))

(assert (= (and d!1647835 res!2166729) b!5090655))

(assert (= (and b!5090655 res!2166730) b!5090656))

(assert (=> d!1647835 m!6148636))

(assert (=> d!1647835 m!6148636))

(assert (=> d!1647835 m!6148638))

(assert (=> b!5090655 m!6148636))

(assert (=> b!5090655 m!6148636))

(assert (=> b!5090655 m!6148638))

(assert (=> b!5090583 d!1647835))

(assert (=> b!5090550 d!1647807))

(assert (=> b!5090550 d!1647811))

(declare-fun d!1647837 () Bool)

(declare-fun lt!2092403 () Int)

(assert (=> d!1647837 (>= lt!2092403 0)))

(declare-fun e!3174793 () Int)

(assert (=> d!1647837 (= lt!2092403 e!3174793)))

(declare-fun c!874829 () Bool)

(assert (=> d!1647837 (= c!874829 (is-Nil!58516 (list!19095 t!3643)))))

(assert (=> d!1647837 (= (size!39204 (list!19095 t!3643)) lt!2092403)))

(declare-fun b!5090657 () Bool)

(assert (=> b!5090657 (= e!3174793 0)))

(declare-fun b!5090658 () Bool)

(assert (=> b!5090658 (= e!3174793 (+ 1 (size!39204 (t!371545 (list!19095 t!3643)))))))

(assert (= (and d!1647837 c!874829) b!5090657))

(assert (= (and d!1647837 (not c!874829)) b!5090658))

(declare-fun m!6148722 () Bool)

(assert (=> b!5090658 m!6148722))

(assert (=> d!1647805 d!1647837))

(declare-fun b!5090670 () Bool)

(declare-fun e!3174799 () List!58640)

(declare-fun ++!12834 (List!58640 List!58640) List!58640)

(assert (=> b!5090670 (= e!3174799 (++!12834 (list!19095 (left!42919 t!3643)) (list!19095 (right!43249 t!3643))))))

(declare-fun d!1647839 () Bool)

(declare-fun c!874834 () Bool)

(assert (=> d!1647839 (= c!874834 (is-Empty!15631 t!3643))))

(declare-fun e!3174798 () List!58640)

(assert (=> d!1647839 (= (list!19095 t!3643) e!3174798)))

(declare-fun b!5090667 () Bool)

(assert (=> b!5090667 (= e!3174798 Nil!58516)))

(declare-fun b!5090669 () Bool)

(assert (=> b!5090669 (= e!3174799 (list!19093 (xs!19013 t!3643)))))

(declare-fun b!5090668 () Bool)

(assert (=> b!5090668 (= e!3174798 e!3174799)))

(declare-fun c!874835 () Bool)

(assert (=> b!5090668 (= c!874835 (is-Leaf!25952 t!3643))))

(assert (= (and d!1647839 c!874834) b!5090667))

(assert (= (and d!1647839 (not c!874834)) b!5090668))

(assert (= (and b!5090668 c!874835) b!5090669))

(assert (= (and b!5090668 (not c!874835)) b!5090670))

(declare-fun m!6148724 () Bool)

(assert (=> b!5090670 m!6148724))

(declare-fun m!6148726 () Bool)

(assert (=> b!5090670 m!6148726))

(assert (=> b!5090670 m!6148724))

(assert (=> b!5090670 m!6148726))

(declare-fun m!6148728 () Bool)

(assert (=> b!5090670 m!6148728))

(assert (=> b!5090669 m!6148636))

(assert (=> d!1647805 d!1647839))

(declare-fun d!1647841 () Bool)

(declare-fun lt!2092404 () Int)

(assert (=> d!1647841 (>= lt!2092404 0)))

(declare-fun e!3174800 () Int)

(assert (=> d!1647841 (= lt!2092404 e!3174800)))

(declare-fun c!874836 () Bool)

(assert (=> d!1647841 (= c!874836 (is-Nil!58516 (t!371545 (list!19093 (xs!19013 t!3643)))))))

(assert (=> d!1647841 (= (size!39204 (t!371545 (list!19093 (xs!19013 t!3643)))) lt!2092404)))

(declare-fun b!5090671 () Bool)

(assert (=> b!5090671 (= e!3174800 0)))

(declare-fun b!5090672 () Bool)

(assert (=> b!5090672 (= e!3174800 (+ 1 (size!39204 (t!371545 (t!371545 (list!19093 (xs!19013 t!3643)))))))))

(assert (= (and d!1647841 c!874836) b!5090671))

(assert (= (and d!1647841 (not c!874836)) b!5090672))

(declare-fun m!6148730 () Bool)

(assert (=> b!5090672 m!6148730))

(assert (=> b!5090589 d!1647841))

(declare-fun d!1647843 () Bool)

(assert (=> d!1647843 (= (inv!77914 (xs!19013 (right!43249 t!3643))) (<= (size!39204 (innerList!15719 (xs!19013 (right!43249 t!3643)))) 2147483647))))

(declare-fun bs!1191144 () Bool)

(assert (= bs!1191144 d!1647843))

(declare-fun m!6148732 () Bool)

(assert (=> bs!1191144 m!6148732))

(assert (=> b!5090607 d!1647843))

(declare-fun d!1647845 () Bool)

(declare-fun res!2166737 () Bool)

(declare-fun e!3174803 () Bool)

(assert (=> d!1647845 (=> (not res!2166737) (not e!3174803))))

(assert (=> d!1647845 (= res!2166737 (= (csize!31492 (right!43249 t!3643)) (+ (size!39205 (left!42919 (right!43249 t!3643))) (size!39205 (right!43249 (right!43249 t!3643))))))))

(assert (=> d!1647845 (= (inv!77918 (right!43249 t!3643)) e!3174803)))

(declare-fun b!5090679 () Bool)

(declare-fun res!2166738 () Bool)

(assert (=> b!5090679 (=> (not res!2166738) (not e!3174803))))

(assert (=> b!5090679 (= res!2166738 (and (not (= (left!42919 (right!43249 t!3643)) Empty!15631)) (not (= (right!43249 (right!43249 t!3643)) Empty!15631))))))

(declare-fun b!5090680 () Bool)

(declare-fun res!2166739 () Bool)

(assert (=> b!5090680 (=> (not res!2166739) (not e!3174803))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2172 (Conc!15631) Int)

(assert (=> b!5090680 (= res!2166739 (= (cheight!15842 (right!43249 t!3643)) (+ (max!0 (height!2172 (left!42919 (right!43249 t!3643))) (height!2172 (right!43249 (right!43249 t!3643)))) 1)))))

(declare-fun b!5090681 () Bool)

(assert (=> b!5090681 (= e!3174803 (<= 0 (cheight!15842 (right!43249 t!3643))))))

(assert (= (and d!1647845 res!2166737) b!5090679))

(assert (= (and b!5090679 res!2166738) b!5090680))

(assert (= (and b!5090680 res!2166739) b!5090681))

(declare-fun m!6148734 () Bool)

(assert (=> d!1647845 m!6148734))

(declare-fun m!6148736 () Bool)

(assert (=> d!1647845 m!6148736))

(declare-fun m!6148738 () Bool)

(assert (=> b!5090680 m!6148738))

(declare-fun m!6148740 () Bool)

(assert (=> b!5090680 m!6148740))

(assert (=> b!5090680 m!6148738))

(assert (=> b!5090680 m!6148740))

(declare-fun m!6148742 () Bool)

(assert (=> b!5090680 m!6148742))

(assert (=> b!5090578 d!1647845))

(declare-fun d!1647847 () Bool)

(declare-fun res!2166740 () Bool)

(declare-fun e!3174804 () Bool)

(assert (=> d!1647847 (=> (not res!2166740) (not e!3174804))))

(assert (=> d!1647847 (= res!2166740 (<= (size!39204 (list!19093 (xs!19013 (left!42919 t!3643)))) 512))))

(assert (=> d!1647847 (= (inv!77919 (left!42919 t!3643)) e!3174804)))

(declare-fun b!5090682 () Bool)

(declare-fun res!2166741 () Bool)

(assert (=> b!5090682 (=> (not res!2166741) (not e!3174804))))

(assert (=> b!5090682 (= res!2166741 (= (csize!31493 (left!42919 t!3643)) (size!39204 (list!19093 (xs!19013 (left!42919 t!3643))))))))

(declare-fun b!5090683 () Bool)

(assert (=> b!5090683 (= e!3174804 (and (> (csize!31493 (left!42919 t!3643)) 0) (<= (csize!31493 (left!42919 t!3643)) 512)))))

(assert (= (and d!1647847 res!2166740) b!5090682))

(assert (= (and b!5090682 res!2166741) b!5090683))

(declare-fun m!6148744 () Bool)

(assert (=> d!1647847 m!6148744))

(assert (=> d!1647847 m!6148744))

(declare-fun m!6148746 () Bool)

(assert (=> d!1647847 m!6148746))

(assert (=> b!5090682 m!6148744))

(assert (=> b!5090682 m!6148744))

(assert (=> b!5090682 m!6148746))

(assert (=> b!5090577 d!1647847))

(declare-fun d!1647849 () Bool)

(declare-fun res!2166742 () Bool)

(declare-fun e!3174805 () Bool)

(assert (=> d!1647849 (=> (not res!2166742) (not e!3174805))))

(assert (=> d!1647849 (= res!2166742 (= (csize!31492 t!3643) (+ (size!39205 (left!42919 t!3643)) (size!39205 (right!43249 t!3643)))))))

(assert (=> d!1647849 (= (inv!77918 t!3643) e!3174805)))

(declare-fun b!5090684 () Bool)

(declare-fun res!2166743 () Bool)

(assert (=> b!5090684 (=> (not res!2166743) (not e!3174805))))

(assert (=> b!5090684 (= res!2166743 (and (not (= (left!42919 t!3643) Empty!15631)) (not (= (right!43249 t!3643) Empty!15631))))))

(declare-fun b!5090685 () Bool)

(declare-fun res!2166744 () Bool)

(assert (=> b!5090685 (=> (not res!2166744) (not e!3174805))))

(assert (=> b!5090685 (= res!2166744 (= (cheight!15842 t!3643) (+ (max!0 (height!2172 (left!42919 t!3643)) (height!2172 (right!43249 t!3643))) 1)))))

(declare-fun b!5090686 () Bool)

(assert (=> b!5090686 (= e!3174805 (<= 0 (cheight!15842 t!3643)))))

(assert (= (and d!1647849 res!2166742) b!5090684))

(assert (= (and b!5090684 res!2166743) b!5090685))

(assert (= (and b!5090685 res!2166744) b!5090686))

(declare-fun m!6148748 () Bool)

(assert (=> d!1647849 m!6148748))

(declare-fun m!6148750 () Bool)

(assert (=> d!1647849 m!6148750))

(declare-fun m!6148752 () Bool)

(assert (=> b!5090685 m!6148752))

(declare-fun m!6148754 () Bool)

(assert (=> b!5090685 m!6148754))

(assert (=> b!5090685 m!6148752))

(assert (=> b!5090685 m!6148754))

(declare-fun m!6148756 () Bool)

(assert (=> b!5090685 m!6148756))

(assert (=> b!5090581 d!1647849))

(declare-fun d!1647851 () Bool)

(assert (=> d!1647851 (= (inv!77914 (xs!19013 (left!42919 t!3643))) (<= (size!39204 (innerList!15719 (xs!19013 (left!42919 t!3643)))) 2147483647))))

(declare-fun bs!1191145 () Bool)

(assert (= bs!1191145 d!1647851))

(declare-fun m!6148758 () Bool)

(assert (=> bs!1191145 m!6148758))

(assert (=> b!5090604 d!1647851))

(declare-fun d!1647853 () Bool)

(declare-fun lt!2092405 () Int)

(assert (=> d!1647853 (>= lt!2092405 0)))

(declare-fun e!3174806 () Int)

(assert (=> d!1647853 (= lt!2092405 e!3174806)))

(declare-fun c!874837 () Bool)

(assert (=> d!1647853 (= c!874837 (is-Nil!58516 (innerList!15719 (xs!19013 t!3643))))))

(assert (=> d!1647853 (= (size!39204 (innerList!15719 (xs!19013 t!3643))) lt!2092405)))

(declare-fun b!5090687 () Bool)

(assert (=> b!5090687 (= e!3174806 0)))

(declare-fun b!5090688 () Bool)

(assert (=> b!5090688 (= e!3174806 (+ 1 (size!39204 (t!371545 (innerList!15719 (xs!19013 t!3643))))))))

(assert (= (and d!1647853 c!874837) b!5090687))

(assert (= (and d!1647853 (not c!874837)) b!5090688))

(declare-fun m!6148760 () Bool)

(assert (=> b!5090688 m!6148760))

(assert (=> d!1647813 d!1647853))

(declare-fun d!1647855 () Bool)

(declare-fun c!874838 () Bool)

(assert (=> d!1647855 (= c!874838 (is-Node!15631 (left!42919 (right!43249 t!3643))))))

(declare-fun e!3174807 () Bool)

(assert (=> d!1647855 (= (inv!77915 (left!42919 (right!43249 t!3643))) e!3174807)))

(declare-fun b!5090689 () Bool)

(assert (=> b!5090689 (= e!3174807 (inv!77918 (left!42919 (right!43249 t!3643))))))

(declare-fun b!5090690 () Bool)

(declare-fun e!3174808 () Bool)

(assert (=> b!5090690 (= e!3174807 e!3174808)))

(declare-fun res!2166745 () Bool)

(assert (=> b!5090690 (= res!2166745 (not (is-Leaf!25952 (left!42919 (right!43249 t!3643)))))))

(assert (=> b!5090690 (=> res!2166745 e!3174808)))

(declare-fun b!5090691 () Bool)

(assert (=> b!5090691 (= e!3174808 (inv!77919 (left!42919 (right!43249 t!3643))))))

(assert (= (and d!1647855 c!874838) b!5090689))

(assert (= (and d!1647855 (not c!874838)) b!5090690))

(assert (= (and b!5090690 (not res!2166745)) b!5090691))

(declare-fun m!6148762 () Bool)

(assert (=> b!5090689 m!6148762))

(declare-fun m!6148764 () Bool)

(assert (=> b!5090691 m!6148764))

(assert (=> b!5090606 d!1647855))

(declare-fun d!1647857 () Bool)

(declare-fun c!874839 () Bool)

(assert (=> d!1647857 (= c!874839 (is-Node!15631 (right!43249 (right!43249 t!3643))))))

(declare-fun e!3174809 () Bool)

(assert (=> d!1647857 (= (inv!77915 (right!43249 (right!43249 t!3643))) e!3174809)))

(declare-fun b!5090692 () Bool)

(assert (=> b!5090692 (= e!3174809 (inv!77918 (right!43249 (right!43249 t!3643))))))

(declare-fun b!5090693 () Bool)

(declare-fun e!3174810 () Bool)

(assert (=> b!5090693 (= e!3174809 e!3174810)))

(declare-fun res!2166746 () Bool)

(assert (=> b!5090693 (= res!2166746 (not (is-Leaf!25952 (right!43249 (right!43249 t!3643)))))))

(assert (=> b!5090693 (=> res!2166746 e!3174810)))

(declare-fun b!5090694 () Bool)

(assert (=> b!5090694 (= e!3174810 (inv!77919 (right!43249 (right!43249 t!3643))))))

(assert (= (and d!1647857 c!874839) b!5090692))

(assert (= (and d!1647857 (not c!874839)) b!5090693))

(assert (= (and b!5090693 (not res!2166746)) b!5090694))

(declare-fun m!6148766 () Bool)

(assert (=> b!5090692 m!6148766))

(declare-fun m!6148768 () Bool)

(assert (=> b!5090694 m!6148768))

(assert (=> b!5090606 d!1647857))

(declare-fun d!1647859 () Bool)

(declare-fun res!2166747 () Bool)

(declare-fun e!3174811 () Bool)

(assert (=> d!1647859 (=> (not res!2166747) (not e!3174811))))

(assert (=> d!1647859 (= res!2166747 (= (csize!31492 (left!42919 t!3643)) (+ (size!39205 (left!42919 (left!42919 t!3643))) (size!39205 (right!43249 (left!42919 t!3643))))))))

(assert (=> d!1647859 (= (inv!77918 (left!42919 t!3643)) e!3174811)))

(declare-fun b!5090695 () Bool)

(declare-fun res!2166748 () Bool)

(assert (=> b!5090695 (=> (not res!2166748) (not e!3174811))))

(assert (=> b!5090695 (= res!2166748 (and (not (= (left!42919 (left!42919 t!3643)) Empty!15631)) (not (= (right!43249 (left!42919 t!3643)) Empty!15631))))))

(declare-fun b!5090696 () Bool)

(declare-fun res!2166749 () Bool)

(assert (=> b!5090696 (=> (not res!2166749) (not e!3174811))))

(assert (=> b!5090696 (= res!2166749 (= (cheight!15842 (left!42919 t!3643)) (+ (max!0 (height!2172 (left!42919 (left!42919 t!3643))) (height!2172 (right!43249 (left!42919 t!3643)))) 1)))))

(declare-fun b!5090697 () Bool)

(assert (=> b!5090697 (= e!3174811 (<= 0 (cheight!15842 (left!42919 t!3643))))))

(assert (= (and d!1647859 res!2166747) b!5090695))

(assert (= (and b!5090695 res!2166748) b!5090696))

(assert (= (and b!5090696 res!2166749) b!5090697))

(declare-fun m!6148770 () Bool)

(assert (=> d!1647859 m!6148770))

(declare-fun m!6148772 () Bool)

(assert (=> d!1647859 m!6148772))

(declare-fun m!6148774 () Bool)

(assert (=> b!5090696 m!6148774))

(declare-fun m!6148776 () Bool)

(assert (=> b!5090696 m!6148776))

(assert (=> b!5090696 m!6148774))

(assert (=> b!5090696 m!6148776))

(declare-fun m!6148778 () Bool)

(assert (=> b!5090696 m!6148778))

(assert (=> b!5090575 d!1647859))

(declare-fun d!1647861 () Bool)

(declare-fun c!874840 () Bool)

(assert (=> d!1647861 (= c!874840 (is-Node!15631 (left!42919 (left!42919 t!3643))))))

(declare-fun e!3174812 () Bool)

(assert (=> d!1647861 (= (inv!77915 (left!42919 (left!42919 t!3643))) e!3174812)))

(declare-fun b!5090698 () Bool)

(assert (=> b!5090698 (= e!3174812 (inv!77918 (left!42919 (left!42919 t!3643))))))

(declare-fun b!5090699 () Bool)

(declare-fun e!3174813 () Bool)

(assert (=> b!5090699 (= e!3174812 e!3174813)))

(declare-fun res!2166750 () Bool)

(assert (=> b!5090699 (= res!2166750 (not (is-Leaf!25952 (left!42919 (left!42919 t!3643)))))))

(assert (=> b!5090699 (=> res!2166750 e!3174813)))

(declare-fun b!5090700 () Bool)

(assert (=> b!5090700 (= e!3174813 (inv!77919 (left!42919 (left!42919 t!3643))))))

(assert (= (and d!1647861 c!874840) b!5090698))

(assert (= (and d!1647861 (not c!874840)) b!5090699))

(assert (= (and b!5090699 (not res!2166750)) b!5090700))

(declare-fun m!6148780 () Bool)

(assert (=> b!5090698 m!6148780))

(declare-fun m!6148782 () Bool)

(assert (=> b!5090700 m!6148782))

(assert (=> b!5090603 d!1647861))

(declare-fun d!1647863 () Bool)

(declare-fun c!874841 () Bool)

(assert (=> d!1647863 (= c!874841 (is-Node!15631 (right!43249 (left!42919 t!3643))))))

(declare-fun e!3174814 () Bool)

(assert (=> d!1647863 (= (inv!77915 (right!43249 (left!42919 t!3643))) e!3174814)))

(declare-fun b!5090701 () Bool)

(assert (=> b!5090701 (= e!3174814 (inv!77918 (right!43249 (left!42919 t!3643))))))

(declare-fun b!5090702 () Bool)

(declare-fun e!3174815 () Bool)

(assert (=> b!5090702 (= e!3174814 e!3174815)))

(declare-fun res!2166751 () Bool)

(assert (=> b!5090702 (= res!2166751 (not (is-Leaf!25952 (right!43249 (left!42919 t!3643)))))))

(assert (=> b!5090702 (=> res!2166751 e!3174815)))

(declare-fun b!5090703 () Bool)

(assert (=> b!5090703 (= e!3174815 (inv!77919 (right!43249 (left!42919 t!3643))))))

(assert (= (and d!1647863 c!874841) b!5090701))

(assert (= (and d!1647863 (not c!874841)) b!5090702))

(assert (= (and b!5090702 (not res!2166751)) b!5090703))

(declare-fun m!6148784 () Bool)

(assert (=> b!5090701 m!6148784))

(declare-fun m!6148786 () Bool)

(assert (=> b!5090703 m!6148786))

(assert (=> b!5090603 d!1647863))

(declare-fun b!5090704 () Bool)

(declare-fun e!3174816 () Bool)

(declare-fun tp!1419158 () Bool)

(assert (=> b!5090704 (= e!3174816 (and tp_is_empty!37141 tp!1419158))))

(assert (=> b!5090605 (= tp!1419138 e!3174816)))

(assert (= (and b!5090605 (is-Cons!58516 (innerList!15719 (xs!19013 (left!42919 t!3643))))) b!5090704))

(declare-fun b!5090705 () Bool)

(declare-fun e!3174817 () Bool)

(declare-fun tp!1419159 () Bool)

(assert (=> b!5090705 (= e!3174817 (and tp_is_empty!37141 tp!1419159))))

(assert (=> b!5090594 (= tp!1419130 e!3174817)))

(assert (= (and b!5090594 (is-Cons!58516 (t!371545 (innerList!15719 (xs!19013 t!3643))))) b!5090705))

(declare-fun tp!1419160 () Bool)

(declare-fun b!5090706 () Bool)

(declare-fun tp!1419162 () Bool)

(declare-fun e!3174819 () Bool)

(assert (=> b!5090706 (= e!3174819 (and (inv!77915 (left!42919 (left!42919 (right!43249 t!3643)))) tp!1419160 (inv!77915 (right!43249 (left!42919 (right!43249 t!3643)))) tp!1419162))))

(declare-fun b!5090708 () Bool)

(declare-fun e!3174818 () Bool)

(declare-fun tp!1419161 () Bool)

(assert (=> b!5090708 (= e!3174818 tp!1419161)))

(declare-fun b!5090707 () Bool)

(assert (=> b!5090707 (= e!3174819 (and (inv!77914 (xs!19013 (left!42919 (right!43249 t!3643)))) e!3174818))))

(assert (=> b!5090606 (= tp!1419140 (and (inv!77915 (left!42919 (right!43249 t!3643))) e!3174819))))

(assert (= (and b!5090606 (is-Node!15631 (left!42919 (right!43249 t!3643)))) b!5090706))

(assert (= b!5090707 b!5090708))

(assert (= (and b!5090606 (is-Leaf!25952 (left!42919 (right!43249 t!3643)))) b!5090707))

(declare-fun m!6148788 () Bool)

(assert (=> b!5090706 m!6148788))

(declare-fun m!6148790 () Bool)

(assert (=> b!5090706 m!6148790))

(declare-fun m!6148792 () Bool)

(assert (=> b!5090707 m!6148792))

(assert (=> b!5090606 m!6148684))

(declare-fun b!5090709 () Bool)

(declare-fun tp!1419165 () Bool)

(declare-fun tp!1419163 () Bool)

(declare-fun e!3174821 () Bool)

(assert (=> b!5090709 (= e!3174821 (and (inv!77915 (left!42919 (right!43249 (right!43249 t!3643)))) tp!1419163 (inv!77915 (right!43249 (right!43249 (right!43249 t!3643)))) tp!1419165))))

(declare-fun b!5090711 () Bool)

(declare-fun e!3174820 () Bool)

(declare-fun tp!1419164 () Bool)

(assert (=> b!5090711 (= e!3174820 tp!1419164)))

(declare-fun b!5090710 () Bool)

(assert (=> b!5090710 (= e!3174821 (and (inv!77914 (xs!19013 (right!43249 (right!43249 t!3643)))) e!3174820))))

(assert (=> b!5090606 (= tp!1419142 (and (inv!77915 (right!43249 (right!43249 t!3643))) e!3174821))))

(assert (= (and b!5090606 (is-Node!15631 (right!43249 (right!43249 t!3643)))) b!5090709))

(assert (= b!5090710 b!5090711))

(assert (= (and b!5090606 (is-Leaf!25952 (right!43249 (right!43249 t!3643)))) b!5090710))

(declare-fun m!6148794 () Bool)

(assert (=> b!5090709 m!6148794))

(declare-fun m!6148796 () Bool)

(assert (=> b!5090709 m!6148796))

(declare-fun m!6148798 () Bool)

(assert (=> b!5090710 m!6148798))

(assert (=> b!5090606 m!6148686))

(declare-fun b!5090712 () Bool)

(declare-fun e!3174822 () Bool)

(declare-fun tp!1419166 () Bool)

(assert (=> b!5090712 (= e!3174822 (and tp_is_empty!37141 tp!1419166))))

(assert (=> b!5090608 (= tp!1419141 e!3174822)))

(assert (= (and b!5090608 (is-Cons!58516 (innerList!15719 (xs!19013 (right!43249 t!3643))))) b!5090712))

(declare-fun tp!1419167 () Bool)

(declare-fun e!3174824 () Bool)

(declare-fun b!5090713 () Bool)

(declare-fun tp!1419169 () Bool)

(assert (=> b!5090713 (= e!3174824 (and (inv!77915 (left!42919 (left!42919 (left!42919 t!3643)))) tp!1419167 (inv!77915 (right!43249 (left!42919 (left!42919 t!3643)))) tp!1419169))))

(declare-fun b!5090715 () Bool)

(declare-fun e!3174823 () Bool)

(declare-fun tp!1419168 () Bool)

(assert (=> b!5090715 (= e!3174823 tp!1419168)))

(declare-fun b!5090714 () Bool)

(assert (=> b!5090714 (= e!3174824 (and (inv!77914 (xs!19013 (left!42919 (left!42919 t!3643)))) e!3174823))))

(assert (=> b!5090603 (= tp!1419137 (and (inv!77915 (left!42919 (left!42919 t!3643))) e!3174824))))

(assert (= (and b!5090603 (is-Node!15631 (left!42919 (left!42919 t!3643)))) b!5090713))

(assert (= b!5090714 b!5090715))

(assert (= (and b!5090603 (is-Leaf!25952 (left!42919 (left!42919 t!3643)))) b!5090714))

(declare-fun m!6148800 () Bool)

(assert (=> b!5090713 m!6148800))

(declare-fun m!6148802 () Bool)

(assert (=> b!5090713 m!6148802))

(declare-fun m!6148804 () Bool)

(assert (=> b!5090714 m!6148804))

(assert (=> b!5090603 m!6148678))

(declare-fun tp!1419170 () Bool)

(declare-fun tp!1419172 () Bool)

(declare-fun b!5090716 () Bool)

(declare-fun e!3174826 () Bool)

(assert (=> b!5090716 (= e!3174826 (and (inv!77915 (left!42919 (right!43249 (left!42919 t!3643)))) tp!1419170 (inv!77915 (right!43249 (right!43249 (left!42919 t!3643)))) tp!1419172))))

(declare-fun b!5090718 () Bool)

(declare-fun e!3174825 () Bool)

(declare-fun tp!1419171 () Bool)

(assert (=> b!5090718 (= e!3174825 tp!1419171)))

(declare-fun b!5090717 () Bool)

(assert (=> b!5090717 (= e!3174826 (and (inv!77914 (xs!19013 (right!43249 (left!42919 t!3643)))) e!3174825))))

(assert (=> b!5090603 (= tp!1419139 (and (inv!77915 (right!43249 (left!42919 t!3643))) e!3174826))))

(assert (= (and b!5090603 (is-Node!15631 (right!43249 (left!42919 t!3643)))) b!5090716))

(assert (= b!5090717 b!5090718))

(assert (= (and b!5090603 (is-Leaf!25952 (right!43249 (left!42919 t!3643)))) b!5090717))

(declare-fun m!6148806 () Bool)

(assert (=> b!5090716 m!6148806))

(declare-fun m!6148808 () Bool)

(assert (=> b!5090716 m!6148808))

(declare-fun m!6148810 () Bool)

(assert (=> b!5090717 m!6148810))

(assert (=> b!5090603 m!6148680))

(push 1)

(assert (not b!5090606))

(assert (not b!5090716))

(assert (not b!5090696))

(assert (not b!5090713))

(assert (not b!5090682))

(assert (not d!1647859))

(assert (not b!5090714))

(assert (not b!5090669))

(assert (not b!5090698))

(assert (not d!1647843))

(assert (not d!1647845))

(assert (not d!1647835))

(assert (not b!5090706))

(assert (not b!5090704))

(assert (not b!5090710))

(assert (not b!5090701))

(assert (not b!5090689))

(assert (not b!5090712))

(assert (not b!5090692))

(assert (not d!1647847))

(assert tp_is_empty!37141)

(assert (not b!5090700))

(assert (not b!5090711))

(assert (not b!5090705))

(assert (not b!5090718))

(assert (not b!5090688))

(assert (not b!5090709))

(assert (not d!1647849))

(assert (not b!5090691))

(assert (not b!5090672))

(assert (not b!5090708))

(assert (not d!1647851))

(assert (not b!5090658))

(assert (not b!5090655))

(assert (not d!1647833))

(assert (not b!5090703))

(assert (not b!5090680))

(assert (not b!5090603))

(assert (not b!5090715))

(assert (not b!5090653))

(assert (not b!5090685))

(assert (not b!5090707))

(assert (not b!5090717))

(assert (not b!5090694))

(assert (not b!5090670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

