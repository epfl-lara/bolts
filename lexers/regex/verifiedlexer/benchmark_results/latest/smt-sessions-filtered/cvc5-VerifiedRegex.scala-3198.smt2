; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!186434 () Bool)

(assert start!186434)

(declare-fun tp!530887 () Bool)

(declare-fun b!1863688 () Bool)

(declare-fun e!1189853 () Bool)

(declare-datatypes ((T!33044 0))(
  ( (T!33045 (val!5931 Int)) )
))
(declare-datatypes ((List!20748 0))(
  ( (Nil!20666) (Cons!20666 (h!26067 T!33044) (t!172831 List!20748)) )
))
(declare-datatypes ((IArray!13727 0))(
  ( (IArray!13728 (innerList!6921 List!20748)) )
))
(declare-datatypes ((Conc!6861 0))(
  ( (Node!6861 (left!16645 Conc!6861) (right!16975 Conc!6861) (csize!13952 Int) (cheight!7072 Int)) (Leaf!10060 (xs!9737 IArray!13727) (csize!13953 Int)) (Empty!6861) )
))
(declare-fun t!4595 () Conc!6861)

(declare-fun tp!530885 () Bool)

(declare-fun inv!27299 (Conc!6861) Bool)

(assert (=> b!1863688 (= e!1189853 (and (inv!27299 (left!16645 t!4595)) tp!530885 (inv!27299 (right!16975 t!4595)) tp!530887))))

(declare-fun b!1863689 () Bool)

(declare-fun res!834540 () Bool)

(declare-fun e!1189852 () Bool)

(assert (=> b!1863689 (=> (not res!834540) (not e!1189852))))

(declare-fun e!1189851 () Bool)

(assert (=> b!1863689 (= res!834540 e!1189851)))

(declare-fun res!834541 () Bool)

(assert (=> b!1863689 (=> res!834541 e!1189851)))

(assert (=> b!1863689 (= res!834541 (not (is-Node!6861 t!4595)))))

(declare-fun b!1863690 () Bool)

(declare-fun res!834542 () Bool)

(assert (=> b!1863690 (=> (not res!834542) (not e!1189852))))

(assert (=> b!1863690 (= res!834542 (is-Node!6861 t!4595))))

(declare-fun res!834539 () Bool)

(assert (=> start!186434 (=> (not res!834539) (not e!1189852))))

(declare-fun isBalanced!2162 (Conc!6861) Bool)

(assert (=> start!186434 (= res!834539 (isBalanced!2162 t!4595))))

(assert (=> start!186434 e!1189852))

(assert (=> start!186434 (and (inv!27299 t!4595) e!1189853)))

(declare-fun b!1863691 () Bool)

(declare-fun res!834536 () Bool)

(assert (=> b!1863691 (=> (not res!834536) (not e!1189852))))

(assert (=> b!1863691 (= res!834536 (not (is-Leaf!10060 t!4595)))))

(declare-fun b!1863692 () Bool)

(declare-fun e!1189850 () Bool)

(assert (=> b!1863692 (= e!1189852 (not e!1189850))))

(declare-fun res!834537 () Bool)

(assert (=> b!1863692 (=> (not res!834537) (not e!1189850))))

(declare-fun tail!2818 (Conc!6861) Conc!6861)

(assert (=> b!1863692 (= res!834537 (isBalanced!2162 (tail!2818 (left!16645 t!4595))))))

(declare-fun lt!718169 () List!20748)

(declare-fun lt!718170 () List!20748)

(declare-fun tail!2819 (List!20748) List!20748)

(declare-fun ++!5589 (List!20748 List!20748) List!20748)

(assert (=> b!1863692 (= (tail!2819 (++!5589 lt!718169 lt!718170)) (++!5589 (tail!2819 lt!718169) lt!718170))))

(declare-datatypes ((Unit!35285 0))(
  ( (Unit!35286) )
))
(declare-fun lt!718168 () Unit!35285)

(declare-fun lemmaTailOfConcatIsTailConcat!33 (List!20748 List!20748) Unit!35285)

(assert (=> b!1863692 (= lt!718168 (lemmaTailOfConcatIsTailConcat!33 lt!718169 lt!718170))))

(declare-fun list!8437 (Conc!6861) List!20748)

(assert (=> b!1863692 (= lt!718170 (list!8437 (right!16975 t!4595)))))

(assert (=> b!1863692 (= lt!718169 (list!8437 (left!16645 t!4595)))))

(declare-fun b!1863693 () Bool)

(declare-fun e!1189854 () Bool)

(declare-fun tp!530886 () Bool)

(assert (=> b!1863693 (= e!1189854 tp!530886)))

(declare-fun b!1863694 () Bool)

(declare-fun res!834538 () Bool)

(assert (=> b!1863694 (=> (not res!834538) (not e!1189852))))

(declare-fun isEmpty!12876 (Conc!6861) Bool)

(assert (=> b!1863694 (= res!834538 (not (isEmpty!12876 t!4595)))))

(declare-fun b!1863695 () Bool)

(assert (=> b!1863695 (= e!1189850 (isBalanced!2162 (right!16975 t!4595)))))

(declare-fun b!1863696 () Bool)

(declare-fun inv!27300 (IArray!13727) Bool)

(assert (=> b!1863696 (= e!1189853 (and (inv!27300 (xs!9737 t!4595)) e!1189854))))

(declare-fun b!1863697 () Bool)

(assert (=> b!1863697 (= e!1189851 (not (isEmpty!12876 (left!16645 t!4595))))))

(assert (= (and start!186434 res!834539) b!1863694))

(assert (= (and b!1863694 res!834538) b!1863691))

(assert (= (and b!1863691 res!834536) b!1863689))

(assert (= (and b!1863689 (not res!834541)) b!1863697))

(assert (= (and b!1863689 res!834540) b!1863690))

(assert (= (and b!1863690 res!834542) b!1863692))

(assert (= (and b!1863692 res!834537) b!1863695))

(assert (= (and start!186434 (is-Node!6861 t!4595)) b!1863688))

(assert (= b!1863696 b!1863693))

(assert (= (and start!186434 (is-Leaf!10060 t!4595)) b!1863696))

(declare-fun m!2287715 () Bool)

(assert (=> b!1863696 m!2287715))

(declare-fun m!2287717 () Bool)

(assert (=> b!1863692 m!2287717))

(declare-fun m!2287719 () Bool)

(assert (=> b!1863692 m!2287719))

(declare-fun m!2287721 () Bool)

(assert (=> b!1863692 m!2287721))

(declare-fun m!2287723 () Bool)

(assert (=> b!1863692 m!2287723))

(declare-fun m!2287725 () Bool)

(assert (=> b!1863692 m!2287725))

(assert (=> b!1863692 m!2287719))

(declare-fun m!2287727 () Bool)

(assert (=> b!1863692 m!2287727))

(declare-fun m!2287729 () Bool)

(assert (=> b!1863692 m!2287729))

(assert (=> b!1863692 m!2287717))

(declare-fun m!2287731 () Bool)

(assert (=> b!1863692 m!2287731))

(assert (=> b!1863692 m!2287727))

(declare-fun m!2287733 () Bool)

(assert (=> b!1863692 m!2287733))

(declare-fun m!2287735 () Bool)

(assert (=> b!1863694 m!2287735))

(declare-fun m!2287737 () Bool)

(assert (=> b!1863695 m!2287737))

(declare-fun m!2287739 () Bool)

(assert (=> start!186434 m!2287739))

(declare-fun m!2287741 () Bool)

(assert (=> start!186434 m!2287741))

(declare-fun m!2287743 () Bool)

(assert (=> b!1863688 m!2287743))

(declare-fun m!2287745 () Bool)

(assert (=> b!1863688 m!2287745))

(declare-fun m!2287747 () Bool)

(assert (=> b!1863697 m!2287747))

(push 1)

(assert (not b!1863693))

(assert (not b!1863695))

(assert (not b!1863692))

(assert (not start!186434))

(assert (not b!1863694))

(assert (not b!1863696))

(assert (not b!1863697))

(assert (not b!1863688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!568861 () Bool)

(declare-fun c!303516 () Bool)

(assert (=> d!568861 (= c!303516 (is-Node!6861 (left!16645 t!4595)))))

(declare-fun e!1189874 () Bool)

(assert (=> d!568861 (= (inv!27299 (left!16645 t!4595)) e!1189874)))

(declare-fun b!1863734 () Bool)

(declare-fun inv!27303 (Conc!6861) Bool)

(assert (=> b!1863734 (= e!1189874 (inv!27303 (left!16645 t!4595)))))

(declare-fun b!1863735 () Bool)

(declare-fun e!1189875 () Bool)

(assert (=> b!1863735 (= e!1189874 e!1189875)))

(declare-fun res!834566 () Bool)

(assert (=> b!1863735 (= res!834566 (not (is-Leaf!10060 (left!16645 t!4595))))))

(assert (=> b!1863735 (=> res!834566 e!1189875)))

(declare-fun b!1863736 () Bool)

(declare-fun inv!27304 (Conc!6861) Bool)

(assert (=> b!1863736 (= e!1189875 (inv!27304 (left!16645 t!4595)))))

(assert (= (and d!568861 c!303516) b!1863734))

(assert (= (and d!568861 (not c!303516)) b!1863735))

(assert (= (and b!1863735 (not res!834566)) b!1863736))

(declare-fun m!2287783 () Bool)

(assert (=> b!1863734 m!2287783))

(declare-fun m!2287785 () Bool)

(assert (=> b!1863736 m!2287785))

(assert (=> b!1863688 d!568861))

(declare-fun d!568863 () Bool)

(declare-fun c!303517 () Bool)

(assert (=> d!568863 (= c!303517 (is-Node!6861 (right!16975 t!4595)))))

(declare-fun e!1189876 () Bool)

(assert (=> d!568863 (= (inv!27299 (right!16975 t!4595)) e!1189876)))

(declare-fun b!1863737 () Bool)

(assert (=> b!1863737 (= e!1189876 (inv!27303 (right!16975 t!4595)))))

(declare-fun b!1863738 () Bool)

(declare-fun e!1189877 () Bool)

(assert (=> b!1863738 (= e!1189876 e!1189877)))

(declare-fun res!834567 () Bool)

(assert (=> b!1863738 (= res!834567 (not (is-Leaf!10060 (right!16975 t!4595))))))

(assert (=> b!1863738 (=> res!834567 e!1189877)))

(declare-fun b!1863739 () Bool)

(assert (=> b!1863739 (= e!1189877 (inv!27304 (right!16975 t!4595)))))

(assert (= (and d!568863 c!303517) b!1863737))

(assert (= (and d!568863 (not c!303517)) b!1863738))

(assert (= (and b!1863738 (not res!834567)) b!1863739))

(declare-fun m!2287787 () Bool)

(assert (=> b!1863737 m!2287787))

(declare-fun m!2287789 () Bool)

(assert (=> b!1863739 m!2287789))

(assert (=> b!1863688 d!568863))

(declare-fun b!1863752 () Bool)

(declare-fun res!834581 () Bool)

(declare-fun e!1189883 () Bool)

(assert (=> b!1863752 (=> (not res!834581) (not e!1189883))))

(assert (=> b!1863752 (= res!834581 (not (isEmpty!12876 (left!16645 t!4595))))))

(declare-fun d!568865 () Bool)

(declare-fun res!834583 () Bool)

(declare-fun e!1189882 () Bool)

(assert (=> d!568865 (=> res!834583 e!1189882)))

(assert (=> d!568865 (= res!834583 (not (is-Node!6861 t!4595)))))

(assert (=> d!568865 (= (isBalanced!2162 t!4595) e!1189882)))

(declare-fun b!1863753 () Bool)

(declare-fun res!834582 () Bool)

(assert (=> b!1863753 (=> (not res!834582) (not e!1189883))))

(assert (=> b!1863753 (= res!834582 (isBalanced!2162 (right!16975 t!4595)))))

(declare-fun b!1863754 () Bool)

(assert (=> b!1863754 (= e!1189882 e!1189883)))

(declare-fun res!834580 () Bool)

(assert (=> b!1863754 (=> (not res!834580) (not e!1189883))))

(declare-fun height!1050 (Conc!6861) Int)

(assert (=> b!1863754 (= res!834580 (<= (- 1) (- (height!1050 (left!16645 t!4595)) (height!1050 (right!16975 t!4595)))))))

(declare-fun b!1863755 () Bool)

(declare-fun res!834585 () Bool)

(assert (=> b!1863755 (=> (not res!834585) (not e!1189883))))

(assert (=> b!1863755 (= res!834585 (<= (- (height!1050 (left!16645 t!4595)) (height!1050 (right!16975 t!4595))) 1))))

(declare-fun b!1863756 () Bool)

(declare-fun res!834584 () Bool)

(assert (=> b!1863756 (=> (not res!834584) (not e!1189883))))

(assert (=> b!1863756 (= res!834584 (isBalanced!2162 (left!16645 t!4595)))))

(declare-fun b!1863757 () Bool)

(assert (=> b!1863757 (= e!1189883 (not (isEmpty!12876 (right!16975 t!4595))))))

(assert (= (and d!568865 (not res!834583)) b!1863754))

(assert (= (and b!1863754 res!834580) b!1863755))

(assert (= (and b!1863755 res!834585) b!1863756))

(assert (= (and b!1863756 res!834584) b!1863753))

(assert (= (and b!1863753 res!834582) b!1863752))

(assert (= (and b!1863752 res!834581) b!1863757))

(assert (=> b!1863752 m!2287747))

(declare-fun m!2287795 () Bool)

(assert (=> b!1863754 m!2287795))

(declare-fun m!2287797 () Bool)

(assert (=> b!1863754 m!2287797))

(assert (=> b!1863755 m!2287795))

(assert (=> b!1863755 m!2287797))

(declare-fun m!2287799 () Bool)

(assert (=> b!1863756 m!2287799))

(declare-fun m!2287801 () Bool)

(assert (=> b!1863757 m!2287801))

(assert (=> b!1863753 m!2287737))

(assert (=> start!186434 d!568865))

(declare-fun d!568869 () Bool)

(declare-fun c!303518 () Bool)

(assert (=> d!568869 (= c!303518 (is-Node!6861 t!4595))))

(declare-fun e!1189884 () Bool)

(assert (=> d!568869 (= (inv!27299 t!4595) e!1189884)))

(declare-fun b!1863758 () Bool)

(assert (=> b!1863758 (= e!1189884 (inv!27303 t!4595))))

(declare-fun b!1863759 () Bool)

(declare-fun e!1189885 () Bool)

(assert (=> b!1863759 (= e!1189884 e!1189885)))

(declare-fun res!834586 () Bool)

(assert (=> b!1863759 (= res!834586 (not (is-Leaf!10060 t!4595)))))

(assert (=> b!1863759 (=> res!834586 e!1189885)))

(declare-fun b!1863760 () Bool)

(assert (=> b!1863760 (= e!1189885 (inv!27304 t!4595))))

(assert (= (and d!568869 c!303518) b!1863758))

(assert (= (and d!568869 (not c!303518)) b!1863759))

(assert (= (and b!1863759 (not res!834586)) b!1863760))

(declare-fun m!2287803 () Bool)

(assert (=> b!1863758 m!2287803))

(declare-fun m!2287805 () Bool)

(assert (=> b!1863760 m!2287805))

(assert (=> start!186434 d!568869))

(declare-fun b!1863761 () Bool)

(declare-fun res!834588 () Bool)

(declare-fun e!1189887 () Bool)

(assert (=> b!1863761 (=> (not res!834588) (not e!1189887))))

(assert (=> b!1863761 (= res!834588 (not (isEmpty!12876 (left!16645 (right!16975 t!4595)))))))

(declare-fun d!568871 () Bool)

(declare-fun res!834590 () Bool)

(declare-fun e!1189886 () Bool)

(assert (=> d!568871 (=> res!834590 e!1189886)))

(assert (=> d!568871 (= res!834590 (not (is-Node!6861 (right!16975 t!4595))))))

(assert (=> d!568871 (= (isBalanced!2162 (right!16975 t!4595)) e!1189886)))

(declare-fun b!1863762 () Bool)

(declare-fun res!834589 () Bool)

(assert (=> b!1863762 (=> (not res!834589) (not e!1189887))))

(assert (=> b!1863762 (= res!834589 (isBalanced!2162 (right!16975 (right!16975 t!4595))))))

(declare-fun b!1863763 () Bool)

(assert (=> b!1863763 (= e!1189886 e!1189887)))

(declare-fun res!834587 () Bool)

(assert (=> b!1863763 (=> (not res!834587) (not e!1189887))))

(assert (=> b!1863763 (= res!834587 (<= (- 1) (- (height!1050 (left!16645 (right!16975 t!4595))) (height!1050 (right!16975 (right!16975 t!4595))))))))

(declare-fun b!1863764 () Bool)

(declare-fun res!834592 () Bool)

(assert (=> b!1863764 (=> (not res!834592) (not e!1189887))))

(assert (=> b!1863764 (= res!834592 (<= (- (height!1050 (left!16645 (right!16975 t!4595))) (height!1050 (right!16975 (right!16975 t!4595)))) 1))))

(declare-fun b!1863765 () Bool)

(declare-fun res!834591 () Bool)

(assert (=> b!1863765 (=> (not res!834591) (not e!1189887))))

(assert (=> b!1863765 (= res!834591 (isBalanced!2162 (left!16645 (right!16975 t!4595))))))

(declare-fun b!1863766 () Bool)

(assert (=> b!1863766 (= e!1189887 (not (isEmpty!12876 (right!16975 (right!16975 t!4595)))))))

(assert (= (and d!568871 (not res!834590)) b!1863763))

(assert (= (and b!1863763 res!834587) b!1863764))

(assert (= (and b!1863764 res!834592) b!1863765))

(assert (= (and b!1863765 res!834591) b!1863762))

(assert (= (and b!1863762 res!834589) b!1863761))

(assert (= (and b!1863761 res!834588) b!1863766))

(declare-fun m!2287807 () Bool)

(assert (=> b!1863761 m!2287807))

(declare-fun m!2287809 () Bool)

(assert (=> b!1863763 m!2287809))

(declare-fun m!2287811 () Bool)

(assert (=> b!1863763 m!2287811))

(assert (=> b!1863764 m!2287809))

(assert (=> b!1863764 m!2287811))

(declare-fun m!2287813 () Bool)

(assert (=> b!1863765 m!2287813))

(declare-fun m!2287815 () Bool)

(assert (=> b!1863766 m!2287815))

(declare-fun m!2287817 () Bool)

(assert (=> b!1863762 m!2287817))

(assert (=> b!1863695 d!568871))

(declare-fun d!568873 () Bool)

(declare-fun lt!718185 () Bool)

(declare-fun isEmpty!12878 (List!20748) Bool)

(assert (=> d!568873 (= lt!718185 (isEmpty!12878 (list!8437 t!4595)))))

(declare-fun size!16365 (Conc!6861) Int)

(assert (=> d!568873 (= lt!718185 (= (size!16365 t!4595) 0))))

(assert (=> d!568873 (= (isEmpty!12876 t!4595) lt!718185)))

(declare-fun bs!411615 () Bool)

(assert (= bs!411615 d!568873))

(declare-fun m!2287819 () Bool)

(assert (=> bs!411615 m!2287819))

(assert (=> bs!411615 m!2287819))

(declare-fun m!2287821 () Bool)

(assert (=> bs!411615 m!2287821))

(declare-fun m!2287823 () Bool)

(assert (=> bs!411615 m!2287823))

(assert (=> b!1863694 d!568873))

(declare-fun d!568875 () Bool)

(declare-fun size!16366 (List!20748) Int)

(assert (=> d!568875 (= (inv!27300 (xs!9737 t!4595)) (<= (size!16366 (innerList!6921 (xs!9737 t!4595))) 2147483647))))

(declare-fun bs!411616 () Bool)

(assert (= bs!411616 d!568875))

(declare-fun m!2287825 () Bool)

(assert (=> bs!411616 m!2287825))

(assert (=> b!1863696 d!568875))

(declare-fun d!568877 () Bool)

(assert (=> d!568877 (= (tail!2819 (++!5589 lt!718169 lt!718170)) (t!172831 (++!5589 lt!718169 lt!718170)))))

(assert (=> b!1863692 d!568877))

(declare-fun d!568879 () Bool)

(assert (=> d!568879 (= (tail!2819 (++!5589 lt!718169 lt!718170)) (++!5589 (tail!2819 lt!718169) lt!718170))))

(declare-fun lt!718188 () Unit!35285)

(declare-fun choose!11728 (List!20748 List!20748) Unit!35285)

(assert (=> d!568879 (= lt!718188 (choose!11728 lt!718169 lt!718170))))

(assert (=> d!568879 (not (isEmpty!12878 lt!718169))))

(assert (=> d!568879 (= (lemmaTailOfConcatIsTailConcat!33 lt!718169 lt!718170) lt!718188)))

(declare-fun bs!411617 () Bool)

(assert (= bs!411617 d!568879))

(assert (=> bs!411617 m!2287719))

(assert (=> bs!411617 m!2287717))

(assert (=> bs!411617 m!2287731))

(declare-fun m!2287827 () Bool)

(assert (=> bs!411617 m!2287827))

(declare-fun m!2287829 () Bool)

(assert (=> bs!411617 m!2287829))

(assert (=> bs!411617 m!2287717))

(assert (=> bs!411617 m!2287719))

(assert (=> bs!411617 m!2287721))

(assert (=> b!1863692 d!568879))

(declare-fun d!568881 () Bool)

(assert (=> d!568881 (= (tail!2819 lt!718169) (t!172831 lt!718169))))

(assert (=> b!1863692 d!568881))

(declare-fun d!568883 () Bool)

(declare-fun e!1189916 () Bool)

(assert (=> d!568883 e!1189916))

(declare-fun res!834628 () Bool)

(assert (=> d!568883 (=> (not res!834628) (not e!1189916))))

(declare-fun lt!718209 () Conc!6861)

(assert (=> d!568883 (= res!834628 (isBalanced!2162 lt!718209))))

(declare-fun e!1189920 () Conc!6861)

(assert (=> d!568883 (= lt!718209 e!1189920)))

(declare-fun c!303531 () Bool)

(assert (=> d!568883 (= c!303531 (is-Leaf!10060 (left!16645 t!4595)))))

(assert (=> d!568883 (isBalanced!2162 (left!16645 t!4595))))

(assert (=> d!568883 (= (tail!2818 (left!16645 t!4595)) lt!718209)))

(declare-fun b!1863824 () Bool)

(declare-fun e!1189917 () Conc!6861)

(assert (=> b!1863824 (= e!1189920 e!1189917)))

(declare-fun c!303532 () Bool)

(assert (=> b!1863824 (= c!303532 (= (csize!13953 (left!16645 t!4595)) 1))))

(declare-fun b!1863825 () Bool)

(declare-fun lt!718211 () Unit!35285)

(declare-fun lt!718214 () Unit!35285)

(assert (=> b!1863825 (= lt!718211 lt!718214)))

(declare-fun call!115711 () List!20748)

(declare-fun lt!718207 () List!20748)

(declare-fun slice!566 (List!20748 Int Int) List!20748)

(assert (=> b!1863825 (= call!115711 (slice!566 lt!718207 1 (size!16366 lt!718207)))))

(declare-fun sliceTailLemma!29 (List!20748) Unit!35285)

(assert (=> b!1863825 (= lt!718214 (sliceTailLemma!29 lt!718207))))

(declare-fun list!8439 (IArray!13727) List!20748)

(assert (=> b!1863825 (= lt!718207 (list!8439 (xs!9737 (left!16645 t!4595))))))

(declare-fun slice!567 (IArray!13727 Int Int) IArray!13727)

(assert (=> b!1863825 (= e!1189917 (Leaf!10060 (slice!567 (xs!9737 (left!16645 t!4595)) 1 (csize!13953 (left!16645 t!4595))) (- (csize!13953 (left!16645 t!4595)) 1)))))

(declare-fun b!1863826 () Bool)

(assert (=> b!1863826 (= e!1189916 (= (list!8437 lt!718209) (tail!2819 (list!8437 (left!16645 t!4595)))))))

(declare-fun b!1863827 () Bool)

(assert (=> b!1863827 (= e!1189917 Empty!6861)))

(declare-fun b!1863828 () Bool)

(declare-fun e!1189919 () Bool)

(assert (=> b!1863828 (= e!1189919 (isEmpty!12876 (left!16645 (left!16645 t!4595))))))

(declare-fun b!1863829 () Bool)

(declare-fun e!1189918 () Conc!6861)

(assert (=> b!1863829 (= e!1189920 e!1189918)))

(declare-fun res!834629 () Bool)

(assert (=> b!1863829 (= res!834629 (is-Node!6861 (left!16645 t!4595)))))

(assert (=> b!1863829 (=> (not res!834629) (not e!1189919))))

(declare-fun c!303530 () Bool)

(assert (=> b!1863829 (= c!303530 e!1189919)))

(declare-fun b!1863830 () Bool)

(declare-fun lt!718213 () Unit!35285)

(declare-fun lt!718212 () Unit!35285)

(assert (=> b!1863830 (= lt!718213 lt!718212)))

(declare-fun lt!718210 () List!20748)

(declare-fun lt!718208 () List!20748)

(assert (=> b!1863830 (= (tail!2819 (++!5589 lt!718210 lt!718208)) (++!5589 call!115711 lt!718208))))

(assert (=> b!1863830 (= lt!718212 (lemmaTailOfConcatIsTailConcat!33 lt!718210 lt!718208))))

(assert (=> b!1863830 (= lt!718208 (list!8437 (right!16975 (left!16645 t!4595))))))

(assert (=> b!1863830 (= lt!718210 (list!8437 (left!16645 (left!16645 t!4595))))))

(declare-fun call!115710 () Conc!6861)

(declare-fun ++!5591 (Conc!6861 Conc!6861) Conc!6861)

(assert (=> b!1863830 (= e!1189918 (++!5591 call!115710 (right!16975 (left!16645 t!4595))))))

(declare-fun bm!115705 () Bool)

(assert (=> bm!115705 (= call!115710 (tail!2818 (ite c!303530 (right!16975 (left!16645 t!4595)) (left!16645 (left!16645 t!4595)))))))

(declare-fun b!1863831 () Bool)

(assert (=> b!1863831 (= e!1189918 call!115710)))

(declare-fun bm!115706 () Bool)

(assert (=> bm!115706 (= call!115711 (tail!2819 (ite c!303531 lt!718207 lt!718210)))))

(assert (= (and d!568883 c!303531) b!1863824))

(assert (= (and d!568883 (not c!303531)) b!1863829))

(assert (= (and b!1863824 c!303532) b!1863827))

(assert (= (and b!1863824 (not c!303532)) b!1863825))

(assert (= (and b!1863829 res!834629) b!1863828))

(assert (= (and b!1863829 c!303530) b!1863831))

(assert (= (and b!1863829 (not c!303530)) b!1863830))

(assert (= (or b!1863831 b!1863830) bm!115705))

(assert (= (or b!1863825 b!1863830) bm!115706))

(assert (= (and d!568883 res!834628) b!1863826))

(declare-fun m!2287855 () Bool)

(assert (=> bm!115706 m!2287855))

(declare-fun m!2287857 () Bool)

(assert (=> b!1863826 m!2287857))

(assert (=> b!1863826 m!2287725))

(assert (=> b!1863826 m!2287725))

(declare-fun m!2287859 () Bool)

(assert (=> b!1863826 m!2287859))

(declare-fun m!2287861 () Bool)

(assert (=> b!1863828 m!2287861))

(declare-fun m!2287863 () Bool)

(assert (=> b!1863830 m!2287863))

(declare-fun m!2287865 () Bool)

(assert (=> b!1863830 m!2287865))

(declare-fun m!2287867 () Bool)

(assert (=> b!1863830 m!2287867))

(declare-fun m!2287869 () Bool)

(assert (=> b!1863830 m!2287869))

(assert (=> b!1863830 m!2287865))

(declare-fun m!2287871 () Bool)

(assert (=> b!1863830 m!2287871))

(declare-fun m!2287873 () Bool)

(assert (=> b!1863830 m!2287873))

(declare-fun m!2287875 () Bool)

(assert (=> b!1863830 m!2287875))

(declare-fun m!2287877 () Bool)

(assert (=> d!568883 m!2287877))

(assert (=> d!568883 m!2287799))

(declare-fun m!2287879 () Bool)

(assert (=> bm!115705 m!2287879))

(declare-fun m!2287881 () Bool)

(assert (=> b!1863825 m!2287881))

(declare-fun m!2287883 () Bool)

(assert (=> b!1863825 m!2287883))

(declare-fun m!2287885 () Bool)

(assert (=> b!1863825 m!2287885))

(declare-fun m!2287887 () Bool)

(assert (=> b!1863825 m!2287887))

(declare-fun m!2287889 () Bool)

(assert (=> b!1863825 m!2287889))

(assert (=> b!1863825 m!2287887))

(assert (=> b!1863692 d!568883))

(declare-fun d!568891 () Bool)

(declare-fun e!1189928 () Bool)

(assert (=> d!568891 e!1189928))

(declare-fun res!834636 () Bool)

(assert (=> d!568891 (=> (not res!834636) (not e!1189928))))

(declare-fun lt!718218 () List!20748)

(declare-fun content!3070 (List!20748) (Set T!33044))

(assert (=> d!568891 (= res!834636 (= (content!3070 lt!718218) (set.union (content!3070 lt!718169) (content!3070 lt!718170))))))

(declare-fun e!1189927 () List!20748)

(assert (=> d!568891 (= lt!718218 e!1189927)))

(declare-fun c!303536 () Bool)

(assert (=> d!568891 (= c!303536 (is-Nil!20666 lt!718169))))

(assert (=> d!568891 (= (++!5589 lt!718169 lt!718170) lt!718218)))

(declare-fun b!1863844 () Bool)

(assert (=> b!1863844 (= e!1189927 lt!718170)))

(declare-fun b!1863845 () Bool)

(assert (=> b!1863845 (= e!1189927 (Cons!20666 (h!26067 lt!718169) (++!5589 (t!172831 lt!718169) lt!718170)))))

(declare-fun b!1863846 () Bool)

(declare-fun res!834637 () Bool)

(assert (=> b!1863846 (=> (not res!834637) (not e!1189928))))

(assert (=> b!1863846 (= res!834637 (= (size!16366 lt!718218) (+ (size!16366 lt!718169) (size!16366 lt!718170))))))

(declare-fun b!1863847 () Bool)

(assert (=> b!1863847 (= e!1189928 (or (not (= lt!718170 Nil!20666)) (= lt!718218 lt!718169)))))

(assert (= (and d!568891 c!303536) b!1863844))

(assert (= (and d!568891 (not c!303536)) b!1863845))

(assert (= (and d!568891 res!834636) b!1863846))

(assert (= (and b!1863846 res!834637) b!1863847))

(declare-fun m!2287905 () Bool)

(assert (=> d!568891 m!2287905))

(declare-fun m!2287907 () Bool)

(assert (=> d!568891 m!2287907))

(declare-fun m!2287909 () Bool)

(assert (=> d!568891 m!2287909))

(declare-fun m!2287911 () Bool)

(assert (=> b!1863845 m!2287911))

(declare-fun m!2287913 () Bool)

(assert (=> b!1863846 m!2287913))

(declare-fun m!2287915 () Bool)

(assert (=> b!1863846 m!2287915))

(declare-fun m!2287917 () Bool)

(assert (=> b!1863846 m!2287917))

(assert (=> b!1863692 d!568891))

(declare-fun b!1863848 () Bool)

(declare-fun res!834639 () Bool)

(declare-fun e!1189930 () Bool)

(assert (=> b!1863848 (=> (not res!834639) (not e!1189930))))

(assert (=> b!1863848 (= res!834639 (not (isEmpty!12876 (left!16645 (tail!2818 (left!16645 t!4595))))))))

(declare-fun d!568895 () Bool)

(declare-fun res!834641 () Bool)

(declare-fun e!1189929 () Bool)

(assert (=> d!568895 (=> res!834641 e!1189929)))

(assert (=> d!568895 (= res!834641 (not (is-Node!6861 (tail!2818 (left!16645 t!4595)))))))

(assert (=> d!568895 (= (isBalanced!2162 (tail!2818 (left!16645 t!4595))) e!1189929)))

(declare-fun b!1863849 () Bool)

(declare-fun res!834640 () Bool)

(assert (=> b!1863849 (=> (not res!834640) (not e!1189930))))

(assert (=> b!1863849 (= res!834640 (isBalanced!2162 (right!16975 (tail!2818 (left!16645 t!4595)))))))

(declare-fun b!1863850 () Bool)

(assert (=> b!1863850 (= e!1189929 e!1189930)))

(declare-fun res!834638 () Bool)

(assert (=> b!1863850 (=> (not res!834638) (not e!1189930))))

(assert (=> b!1863850 (= res!834638 (<= (- 1) (- (height!1050 (left!16645 (tail!2818 (left!16645 t!4595)))) (height!1050 (right!16975 (tail!2818 (left!16645 t!4595)))))))))

(declare-fun b!1863851 () Bool)

(declare-fun res!834643 () Bool)

(assert (=> b!1863851 (=> (not res!834643) (not e!1189930))))

(assert (=> b!1863851 (= res!834643 (<= (- (height!1050 (left!16645 (tail!2818 (left!16645 t!4595)))) (height!1050 (right!16975 (tail!2818 (left!16645 t!4595))))) 1))))

(declare-fun b!1863852 () Bool)

(declare-fun res!834642 () Bool)

(assert (=> b!1863852 (=> (not res!834642) (not e!1189930))))

(assert (=> b!1863852 (= res!834642 (isBalanced!2162 (left!16645 (tail!2818 (left!16645 t!4595)))))))

(declare-fun b!1863853 () Bool)

(assert (=> b!1863853 (= e!1189930 (not (isEmpty!12876 (right!16975 (tail!2818 (left!16645 t!4595))))))))

(assert (= (and d!568895 (not res!834641)) b!1863850))

(assert (= (and b!1863850 res!834638) b!1863851))

(assert (= (and b!1863851 res!834643) b!1863852))

(assert (= (and b!1863852 res!834642) b!1863849))

(assert (= (and b!1863849 res!834640) b!1863848))

(assert (= (and b!1863848 res!834639) b!1863853))

(declare-fun m!2287919 () Bool)

(assert (=> b!1863848 m!2287919))

(declare-fun m!2287921 () Bool)

(assert (=> b!1863850 m!2287921))

(declare-fun m!2287923 () Bool)

(assert (=> b!1863850 m!2287923))

(assert (=> b!1863851 m!2287921))

(assert (=> b!1863851 m!2287923))

(declare-fun m!2287925 () Bool)

(assert (=> b!1863852 m!2287925))

(declare-fun m!2287927 () Bool)

(assert (=> b!1863853 m!2287927))

(declare-fun m!2287929 () Bool)

(assert (=> b!1863849 m!2287929))

(assert (=> b!1863692 d!568895))

(declare-fun b!1863871 () Bool)

(declare-fun e!1189939 () List!20748)

(declare-fun e!1189940 () List!20748)

(assert (=> b!1863871 (= e!1189939 e!1189940)))

(declare-fun c!303546 () Bool)

(assert (=> b!1863871 (= c!303546 (is-Leaf!10060 (left!16645 t!4595)))))

(declare-fun d!568897 () Bool)

(declare-fun c!303545 () Bool)

(assert (=> d!568897 (= c!303545 (is-Empty!6861 (left!16645 t!4595)))))

(assert (=> d!568897 (= (list!8437 (left!16645 t!4595)) e!1189939)))

(declare-fun b!1863870 () Bool)

(assert (=> b!1863870 (= e!1189939 Nil!20666)))

(declare-fun b!1863873 () Bool)

(assert (=> b!1863873 (= e!1189940 (++!5589 (list!8437 (left!16645 (left!16645 t!4595))) (list!8437 (right!16975 (left!16645 t!4595)))))))

(declare-fun b!1863872 () Bool)

(assert (=> b!1863872 (= e!1189940 (list!8439 (xs!9737 (left!16645 t!4595))))))

(assert (= (and d!568897 c!303545) b!1863870))

(assert (= (and d!568897 (not c!303545)) b!1863871))

(assert (= (and b!1863871 c!303546) b!1863872))

(assert (= (and b!1863871 (not c!303546)) b!1863873))

(assert (=> b!1863873 m!2287869))

(assert (=> b!1863873 m!2287873))

(assert (=> b!1863873 m!2287869))

(assert (=> b!1863873 m!2287873))

(declare-fun m!2287931 () Bool)

(assert (=> b!1863873 m!2287931))

(assert (=> b!1863872 m!2287881))

(assert (=> b!1863692 d!568897))

(declare-fun d!568899 () Bool)

(declare-fun e!1189942 () Bool)

(assert (=> d!568899 e!1189942))

(declare-fun res!834644 () Bool)

(assert (=> d!568899 (=> (not res!834644) (not e!1189942))))

(declare-fun lt!718219 () List!20748)

(assert (=> d!568899 (= res!834644 (= (content!3070 lt!718219) (set.union (content!3070 (tail!2819 lt!718169)) (content!3070 lt!718170))))))

(declare-fun e!1189941 () List!20748)

(assert (=> d!568899 (= lt!718219 e!1189941)))

(declare-fun c!303547 () Bool)

(assert (=> d!568899 (= c!303547 (is-Nil!20666 (tail!2819 lt!718169)))))

(assert (=> d!568899 (= (++!5589 (tail!2819 lt!718169) lt!718170) lt!718219)))

(declare-fun b!1863874 () Bool)

(assert (=> b!1863874 (= e!1189941 lt!718170)))

(declare-fun b!1863875 () Bool)

(assert (=> b!1863875 (= e!1189941 (Cons!20666 (h!26067 (tail!2819 lt!718169)) (++!5589 (t!172831 (tail!2819 lt!718169)) lt!718170)))))

(declare-fun b!1863876 () Bool)

(declare-fun res!834645 () Bool)

(assert (=> b!1863876 (=> (not res!834645) (not e!1189942))))

(assert (=> b!1863876 (= res!834645 (= (size!16366 lt!718219) (+ (size!16366 (tail!2819 lt!718169)) (size!16366 lt!718170))))))

(declare-fun b!1863877 () Bool)

(assert (=> b!1863877 (= e!1189942 (or (not (= lt!718170 Nil!20666)) (= lt!718219 (tail!2819 lt!718169))))))

(assert (= (and d!568899 c!303547) b!1863874))

(assert (= (and d!568899 (not c!303547)) b!1863875))

(assert (= (and d!568899 res!834644) b!1863876))

(assert (= (and b!1863876 res!834645) b!1863877))

(declare-fun m!2287933 () Bool)

(assert (=> d!568899 m!2287933))

(assert (=> d!568899 m!2287717))

(declare-fun m!2287935 () Bool)

(assert (=> d!568899 m!2287935))

(assert (=> d!568899 m!2287909))

(declare-fun m!2287937 () Bool)

(assert (=> b!1863875 m!2287937))

(declare-fun m!2287939 () Bool)

(assert (=> b!1863876 m!2287939))

(assert (=> b!1863876 m!2287717))

(declare-fun m!2287941 () Bool)

(assert (=> b!1863876 m!2287941))

(assert (=> b!1863876 m!2287917))

(assert (=> b!1863692 d!568899))

(declare-fun b!1863883 () Bool)

(declare-fun e!1189945 () List!20748)

(declare-fun e!1189946 () List!20748)

(assert (=> b!1863883 (= e!1189945 e!1189946)))

(declare-fun c!303551 () Bool)

(assert (=> b!1863883 (= c!303551 (is-Leaf!10060 (right!16975 t!4595)))))

(declare-fun d!568901 () Bool)

(declare-fun c!303550 () Bool)

(assert (=> d!568901 (= c!303550 (is-Empty!6861 (right!16975 t!4595)))))

(assert (=> d!568901 (= (list!8437 (right!16975 t!4595)) e!1189945)))

(declare-fun b!1863882 () Bool)

(assert (=> b!1863882 (= e!1189945 Nil!20666)))

(declare-fun b!1863885 () Bool)

(assert (=> b!1863885 (= e!1189946 (++!5589 (list!8437 (left!16645 (right!16975 t!4595))) (list!8437 (right!16975 (right!16975 t!4595)))))))

(declare-fun b!1863884 () Bool)

(assert (=> b!1863884 (= e!1189946 (list!8439 (xs!9737 (right!16975 t!4595))))))

(assert (= (and d!568901 c!303550) b!1863882))

(assert (= (and d!568901 (not c!303550)) b!1863883))

(assert (= (and b!1863883 c!303551) b!1863884))

(assert (= (and b!1863883 (not c!303551)) b!1863885))

(declare-fun m!2287943 () Bool)

(assert (=> b!1863885 m!2287943))

(declare-fun m!2287945 () Bool)

(assert (=> b!1863885 m!2287945))

(assert (=> b!1863885 m!2287943))

(assert (=> b!1863885 m!2287945))

(declare-fun m!2287949 () Bool)

(assert (=> b!1863885 m!2287949))

(declare-fun m!2287953 () Bool)

(assert (=> b!1863884 m!2287953))

(assert (=> b!1863692 d!568901))

(declare-fun d!568903 () Bool)

(declare-fun lt!718220 () Bool)

(assert (=> d!568903 (= lt!718220 (isEmpty!12878 (list!8437 (left!16645 t!4595))))))

(assert (=> d!568903 (= lt!718220 (= (size!16365 (left!16645 t!4595)) 0))))

(assert (=> d!568903 (= (isEmpty!12876 (left!16645 t!4595)) lt!718220)))

(declare-fun bs!411618 () Bool)

(assert (= bs!411618 d!568903))

(assert (=> bs!411618 m!2287725))

(assert (=> bs!411618 m!2287725))

(declare-fun m!2287959 () Bool)

(assert (=> bs!411618 m!2287959))

(declare-fun m!2287961 () Bool)

(assert (=> bs!411618 m!2287961))

(assert (=> b!1863697 d!568903))

(declare-fun b!1863898 () Bool)

(declare-fun tp!530905 () Bool)

(declare-fun e!1189954 () Bool)

(declare-fun tp!530904 () Bool)

(assert (=> b!1863898 (= e!1189954 (and (inv!27299 (left!16645 (left!16645 t!4595))) tp!530905 (inv!27299 (right!16975 (left!16645 t!4595))) tp!530904))))

(declare-fun b!1863900 () Bool)

(declare-fun e!1189953 () Bool)

(declare-fun tp!530903 () Bool)

(assert (=> b!1863900 (= e!1189953 tp!530903)))

(declare-fun b!1863899 () Bool)

(assert (=> b!1863899 (= e!1189954 (and (inv!27300 (xs!9737 (left!16645 t!4595))) e!1189953))))

(assert (=> b!1863688 (= tp!530885 (and (inv!27299 (left!16645 t!4595)) e!1189954))))

(assert (= (and b!1863688 (is-Node!6861 (left!16645 t!4595))) b!1863898))

(assert (= b!1863899 b!1863900))

(assert (= (and b!1863688 (is-Leaf!10060 (left!16645 t!4595))) b!1863899))

(declare-fun m!2287973 () Bool)

(assert (=> b!1863898 m!2287973))

(declare-fun m!2287975 () Bool)

(assert (=> b!1863898 m!2287975))

(declare-fun m!2287977 () Bool)

(assert (=> b!1863899 m!2287977))

(assert (=> b!1863688 m!2287743))

(declare-fun tp!530908 () Bool)

(declare-fun tp!530907 () Bool)

(declare-fun b!1863901 () Bool)

(declare-fun e!1189956 () Bool)

(assert (=> b!1863901 (= e!1189956 (and (inv!27299 (left!16645 (right!16975 t!4595))) tp!530908 (inv!27299 (right!16975 (right!16975 t!4595))) tp!530907))))

(declare-fun b!1863903 () Bool)

(declare-fun e!1189955 () Bool)

(declare-fun tp!530906 () Bool)

(assert (=> b!1863903 (= e!1189955 tp!530906)))

(declare-fun b!1863902 () Bool)

(assert (=> b!1863902 (= e!1189956 (and (inv!27300 (xs!9737 (right!16975 t!4595))) e!1189955))))

(assert (=> b!1863688 (= tp!530887 (and (inv!27299 (right!16975 t!4595)) e!1189956))))

(assert (= (and b!1863688 (is-Node!6861 (right!16975 t!4595))) b!1863901))

(assert (= b!1863902 b!1863903))

(assert (= (and b!1863688 (is-Leaf!10060 (right!16975 t!4595))) b!1863902))

(declare-fun m!2287979 () Bool)

(assert (=> b!1863901 m!2287979))

(declare-fun m!2287981 () Bool)

(assert (=> b!1863901 m!2287981))

(declare-fun m!2287983 () Bool)

(assert (=> b!1863902 m!2287983))

(assert (=> b!1863688 m!2287745))

(declare-fun b!1863908 () Bool)

(declare-fun e!1189959 () Bool)

(declare-fun tp_is_empty!8645 () Bool)

(declare-fun tp!530911 () Bool)

(assert (=> b!1863908 (= e!1189959 (and tp_is_empty!8645 tp!530911))))

(assert (=> b!1863693 (= tp!530886 e!1189959)))

(assert (= (and b!1863693 (is-Cons!20666 (innerList!6921 (xs!9737 t!4595)))) b!1863908))

(push 1)

(assert (not b!1863753))

(assert (not d!568899))

(assert (not b!1863761))

(assert (not b!1863765))

(assert (not b!1863903))

(assert (not b!1863757))

(assert (not bm!115706))

(assert (not b!1863899))

(assert (not b!1863876))

(assert (not d!568903))

(assert (not b!1863900))

(assert (not b!1863763))

(assert (not b!1863758))

(assert (not b!1863898))

(assert (not b!1863734))

(assert (not b!1863885))

(assert (not bm!115705))

(assert (not b!1863828))

(assert (not b!1863873))

(assert (not b!1863875))

(assert (not b!1863853))

(assert (not b!1863825))

(assert (not b!1863901))

(assert (not b!1863752))

(assert (not b!1863849))

(assert (not b!1863760))

(assert (not b!1863846))

(assert (not b!1863850))

(assert (not b!1863766))

(assert (not b!1863737))

(assert (not d!568879))

(assert (not d!568875))

(assert (not b!1863755))

(assert (not b!1863908))

(assert (not b!1863764))

(assert (not b!1863884))

(assert (not b!1863826))

(assert (not d!568873))

(assert (not b!1863848))

(assert (not b!1863902))

(assert (not b!1863872))

(assert (not b!1863851))

(assert (not b!1863736))

(assert (not b!1863762))

(assert (not b!1863754))

(assert (not b!1863852))

(assert tp_is_empty!8645)

(assert (not d!568891))

(assert (not b!1863845))

(assert (not b!1863756))

(assert (not b!1863830))

(assert (not b!1863688))

(assert (not d!568883))

(assert (not b!1863739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

