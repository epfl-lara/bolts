; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535598 () Bool)

(assert start!535598)

(declare-fun b!5077638 () Bool)

(declare-fun res!2161862 () Bool)

(declare-fun e!3167698 () Bool)

(assert (=> b!5077638 (=> (not res!2161862) (not e!3167698))))

(declare-datatypes ((T!105230 0))(
  ( (T!105231 (val!23664 Int)) )
))
(declare-datatypes ((List!58574 0))(
  ( (Nil!58450) (Cons!58450 (h!64898 T!105230) (t!371381 List!58574)) )
))
(declare-datatypes ((IArray!31221 0))(
  ( (IArray!31222 (innerList!15668 List!58574)) )
))
(declare-datatypes ((Conc!15580 0))(
  ( (Node!15580 (left!42840 Conc!15580) (right!43170 Conc!15580) (csize!31390 Int) (cheight!15791 Int)) (Leaf!25875 (xs!18946 IArray!31221) (csize!31391 Int)) (Empty!15580) )
))
(declare-fun ys!41 () Conc!15580)

(get-info :version)

(assert (=> b!5077638 (= res!2161862 ((_ is Node!15580) (left!42840 ys!41)))))

(declare-fun xs!286 () Conc!15580)

(declare-fun e!3167695 () Bool)

(declare-fun tp!1416777 () Bool)

(declare-fun tp!1416774 () Bool)

(declare-fun b!5077639 () Bool)

(declare-fun inv!77643 (Conc!15580) Bool)

(assert (=> b!5077639 (= e!3167695 (and (inv!77643 (left!42840 xs!286)) tp!1416777 (inv!77643 (right!43170 xs!286)) tp!1416774))))

(declare-fun b!5077640 () Bool)

(declare-fun e!3167693 () Bool)

(assert (=> b!5077640 (= e!3167698 e!3167693)))

(declare-fun res!2161866 () Bool)

(assert (=> b!5077640 (=> (not res!2161866) (not e!3167693))))

(declare-fun lt!2090455 () Conc!15580)

(declare-fun lt!2090451 () Int)

(declare-fun height!2157 (Conc!15580) Int)

(assert (=> b!5077640 (= res!2161866 (= (height!2157 lt!2090455) (- lt!2090451 3)))))

(declare-fun ++!12806 (Conc!15580 Conc!15580) Conc!15580)

(assert (=> b!5077640 (= lt!2090455 (++!12806 xs!286 (left!42840 (left!42840 ys!41))))))

(declare-fun res!2161865 () Bool)

(declare-fun e!3167696 () Bool)

(assert (=> start!535598 (=> (not res!2161865) (not e!3167696))))

(declare-fun isBalanced!4442 (Conc!15580) Bool)

(assert (=> start!535598 (= res!2161865 (isBalanced!4442 xs!286))))

(assert (=> start!535598 e!3167696))

(assert (=> start!535598 (and (inv!77643 xs!286) e!3167695)))

(declare-fun e!3167700 () Bool)

(assert (=> start!535598 (and (inv!77643 ys!41) e!3167700)))

(declare-fun b!5077641 () Bool)

(declare-fun res!2161860 () Bool)

(declare-fun e!3167699 () Bool)

(assert (=> b!5077641 (=> res!2161860 e!3167699)))

(declare-fun lt!2090452 () Conc!15580)

(assert (=> b!5077641 (= res!2161860 (not (isBalanced!4442 lt!2090452)))))

(declare-fun b!5077642 () Bool)

(declare-fun e!3167694 () Bool)

(declare-fun tp!1416779 () Bool)

(assert (=> b!5077642 (= e!3167694 tp!1416779)))

(declare-fun b!5077643 () Bool)

(declare-fun e!3167697 () Bool)

(assert (=> b!5077643 (= e!3167699 e!3167697)))

(declare-fun res!2161867 () Bool)

(assert (=> b!5077643 (=> res!2161867 e!3167697)))

(declare-fun lt!2090449 () Int)

(declare-fun lt!2090453 () Int)

(assert (=> b!5077643 (= res!2161867 (or (> lt!2090449 (+ 1 lt!2090453)) (< lt!2090449 lt!2090453)))))

(assert (=> b!5077643 (= lt!2090449 (height!2157 lt!2090452))))

(declare-fun lt!2090450 () Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5077643 (= lt!2090453 (max!0 lt!2090450 lt!2090451))))

(declare-fun b!5077644 () Bool)

(declare-fun e!3167692 () Bool)

(declare-fun inv!77644 (IArray!31221) Bool)

(assert (=> b!5077644 (= e!3167695 (and (inv!77644 (xs!18946 xs!286)) e!3167692))))

(declare-fun b!5077645 () Bool)

(declare-fun list!19021 (Conc!15580) List!58574)

(declare-fun ++!12807 (List!58574 List!58574) List!58574)

(assert (=> b!5077645 (= e!3167697 (not (= (list!19021 lt!2090452) (++!12807 (list!19021 xs!286) (list!19021 ys!41)))))))

(declare-fun tp!1416778 () Bool)

(declare-fun tp!1416775 () Bool)

(declare-fun b!5077646 () Bool)

(assert (=> b!5077646 (= e!3167700 (and (inv!77643 (left!42840 ys!41)) tp!1416778 (inv!77643 (right!43170 ys!41)) tp!1416775))))

(declare-fun b!5077647 () Bool)

(assert (=> b!5077647 (= e!3167700 (and (inv!77644 (xs!18946 ys!41)) e!3167694))))

(declare-fun b!5077648 () Bool)

(declare-fun tp!1416776 () Bool)

(assert (=> b!5077648 (= e!3167692 tp!1416776)))

(declare-fun b!5077649 () Bool)

(declare-fun res!2161861 () Bool)

(assert (=> b!5077649 (=> (not res!2161861) (not e!3167698))))

(assert (=> b!5077649 (= res!2161861 (< (height!2157 (right!43170 ys!41)) (height!2157 (left!42840 ys!41))))))

(declare-fun b!5077650 () Bool)

(declare-fun res!2161859 () Bool)

(assert (=> b!5077650 (=> (not res!2161859) (not e!3167696))))

(assert (=> b!5077650 (= res!2161859 (isBalanced!4442 ys!41))))

(declare-fun b!5077651 () Bool)

(declare-fun res!2161863 () Bool)

(assert (=> b!5077651 (=> (not res!2161863) (not e!3167696))))

(assert (=> b!5077651 (= res!2161863 (and (not (= xs!286 Empty!15580)) (not (= ys!41 Empty!15580))))))

(declare-fun b!5077652 () Bool)

(assert (=> b!5077652 (= e!3167696 e!3167698)))

(declare-fun res!2161864 () Bool)

(assert (=> b!5077652 (=> (not res!2161864) (not e!3167698))))

(declare-fun lt!2090454 () Int)

(assert (=> b!5077652 (= res!2161864 (and (or (> (- 1) lt!2090454) (> lt!2090454 1)) (>= lt!2090454 (- 1)) ((_ is Node!15580) ys!41)))))

(assert (=> b!5077652 (= lt!2090454 (- lt!2090451 lt!2090450))))

(assert (=> b!5077652 (= lt!2090450 (height!2157 xs!286))))

(assert (=> b!5077652 (= lt!2090451 (height!2157 ys!41))))

(declare-fun b!5077653 () Bool)

(assert (=> b!5077653 (= e!3167693 e!3167699)))

(declare-fun res!2161858 () Bool)

(assert (=> b!5077653 (=> res!2161858 e!3167699)))

(declare-fun appendAssocInst!918 (Conc!15580 Conc!15580) Bool)

(assert (=> b!5077653 (= res!2161858 (not (appendAssocInst!918 xs!286 ys!41)))))

(declare-fun <>!400 (Conc!15580 Conc!15580) Conc!15580)

(assert (=> b!5077653 (= lt!2090452 (<>!400 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))) (right!43170 ys!41)))))

(assert (= (and start!535598 res!2161865) b!5077650))

(assert (= (and b!5077650 res!2161859) b!5077651))

(assert (= (and b!5077651 res!2161863) b!5077652))

(assert (= (and b!5077652 res!2161864) b!5077649))

(assert (= (and b!5077649 res!2161861) b!5077638))

(assert (= (and b!5077638 res!2161862) b!5077640))

(assert (= (and b!5077640 res!2161866) b!5077653))

(assert (= (and b!5077653 (not res!2161858)) b!5077641))

(assert (= (and b!5077641 (not res!2161860)) b!5077643))

(assert (= (and b!5077643 (not res!2161867)) b!5077645))

(assert (= (and start!535598 ((_ is Node!15580) xs!286)) b!5077639))

(assert (= b!5077644 b!5077648))

(assert (= (and start!535598 ((_ is Leaf!25875) xs!286)) b!5077644))

(assert (= (and start!535598 ((_ is Node!15580) ys!41)) b!5077646))

(assert (= b!5077647 b!5077642))

(assert (= (and start!535598 ((_ is Leaf!25875) ys!41)) b!5077647))

(declare-fun m!6128042 () Bool)

(assert (=> b!5077653 m!6128042))

(declare-fun m!6128044 () Bool)

(assert (=> b!5077653 m!6128044))

(assert (=> b!5077653 m!6128044))

(declare-fun m!6128046 () Bool)

(assert (=> b!5077653 m!6128046))

(declare-fun m!6128048 () Bool)

(assert (=> b!5077640 m!6128048))

(declare-fun m!6128050 () Bool)

(assert (=> b!5077640 m!6128050))

(declare-fun m!6128052 () Bool)

(assert (=> b!5077639 m!6128052))

(declare-fun m!6128054 () Bool)

(assert (=> b!5077639 m!6128054))

(declare-fun m!6128056 () Bool)

(assert (=> b!5077650 m!6128056))

(declare-fun m!6128058 () Bool)

(assert (=> b!5077643 m!6128058))

(declare-fun m!6128060 () Bool)

(assert (=> b!5077643 m!6128060))

(declare-fun m!6128062 () Bool)

(assert (=> b!5077644 m!6128062))

(declare-fun m!6128064 () Bool)

(assert (=> b!5077652 m!6128064))

(declare-fun m!6128066 () Bool)

(assert (=> b!5077652 m!6128066))

(declare-fun m!6128068 () Bool)

(assert (=> b!5077646 m!6128068))

(declare-fun m!6128070 () Bool)

(assert (=> b!5077646 m!6128070))

(declare-fun m!6128072 () Bool)

(assert (=> b!5077647 m!6128072))

(declare-fun m!6128074 () Bool)

(assert (=> b!5077649 m!6128074))

(declare-fun m!6128076 () Bool)

(assert (=> b!5077649 m!6128076))

(declare-fun m!6128078 () Bool)

(assert (=> b!5077641 m!6128078))

(declare-fun m!6128080 () Bool)

(assert (=> start!535598 m!6128080))

(declare-fun m!6128082 () Bool)

(assert (=> start!535598 m!6128082))

(declare-fun m!6128084 () Bool)

(assert (=> start!535598 m!6128084))

(declare-fun m!6128086 () Bool)

(assert (=> b!5077645 m!6128086))

(declare-fun m!6128088 () Bool)

(assert (=> b!5077645 m!6128088))

(declare-fun m!6128090 () Bool)

(assert (=> b!5077645 m!6128090))

(assert (=> b!5077645 m!6128088))

(assert (=> b!5077645 m!6128090))

(declare-fun m!6128092 () Bool)

(assert (=> b!5077645 m!6128092))

(check-sat (not b!5077643) (not b!5077644) (not b!5077639) (not b!5077640) (not b!5077648) (not start!535598) (not b!5077652) (not b!5077641) (not b!5077653) (not b!5077645) (not b!5077642) (not b!5077646) (not b!5077650) (not b!5077649) (not b!5077647))
(check-sat)
(get-model)

(declare-fun b!5077684 () Bool)

(declare-fun res!2161891 () Bool)

(declare-fun e!3167718 () Bool)

(assert (=> b!5077684 (=> (not res!2161891) (not e!3167718))))

(assert (=> b!5077684 (= res!2161891 (isBalanced!4442 (left!42840 ys!41)))))

(declare-fun b!5077685 () Bool)

(declare-fun res!2161887 () Bool)

(assert (=> b!5077685 (=> (not res!2161887) (not e!3167718))))

(assert (=> b!5077685 (= res!2161887 (<= (- (height!2157 (left!42840 ys!41)) (height!2157 (right!43170 ys!41))) 1))))

(declare-fun d!1640657 () Bool)

(declare-fun res!2161890 () Bool)

(declare-fun e!3167717 () Bool)

(assert (=> d!1640657 (=> res!2161890 e!3167717)))

(assert (=> d!1640657 (= res!2161890 (not ((_ is Node!15580) ys!41)))))

(assert (=> d!1640657 (= (isBalanced!4442 ys!41) e!3167717)))

(declare-fun b!5077686 () Bool)

(declare-fun res!2161888 () Bool)

(assert (=> b!5077686 (=> (not res!2161888) (not e!3167718))))

(assert (=> b!5077686 (= res!2161888 (isBalanced!4442 (right!43170 ys!41)))))

(declare-fun b!5077687 () Bool)

(declare-fun isEmpty!31663 (Conc!15580) Bool)

(assert (=> b!5077687 (= e!3167718 (not (isEmpty!31663 (right!43170 ys!41))))))

(declare-fun b!5077688 () Bool)

(declare-fun res!2161886 () Bool)

(assert (=> b!5077688 (=> (not res!2161886) (not e!3167718))))

(assert (=> b!5077688 (= res!2161886 (not (isEmpty!31663 (left!42840 ys!41))))))

(declare-fun b!5077689 () Bool)

(assert (=> b!5077689 (= e!3167717 e!3167718)))

(declare-fun res!2161889 () Bool)

(assert (=> b!5077689 (=> (not res!2161889) (not e!3167718))))

(assert (=> b!5077689 (= res!2161889 (<= (- 1) (- (height!2157 (left!42840 ys!41)) (height!2157 (right!43170 ys!41)))))))

(assert (= (and d!1640657 (not res!2161890)) b!5077689))

(assert (= (and b!5077689 res!2161889) b!5077685))

(assert (= (and b!5077685 res!2161887) b!5077684))

(assert (= (and b!5077684 res!2161891) b!5077686))

(assert (= (and b!5077686 res!2161888) b!5077688))

(assert (= (and b!5077688 res!2161886) b!5077687))

(declare-fun m!6128112 () Bool)

(assert (=> b!5077686 m!6128112))

(declare-fun m!6128114 () Bool)

(assert (=> b!5077688 m!6128114))

(declare-fun m!6128116 () Bool)

(assert (=> b!5077687 m!6128116))

(assert (=> b!5077689 m!6128076))

(assert (=> b!5077689 m!6128074))

(declare-fun m!6128118 () Bool)

(assert (=> b!5077684 m!6128118))

(assert (=> b!5077685 m!6128076))

(assert (=> b!5077685 m!6128074))

(assert (=> b!5077650 d!1640657))

(declare-fun d!1640677 () Bool)

(assert (=> d!1640677 (= (height!2157 lt!2090455) (ite ((_ is Empty!15580) lt!2090455) 0 (ite ((_ is Leaf!25875) lt!2090455) 1 (cheight!15791 lt!2090455))))))

(assert (=> b!5077640 d!1640677))

(declare-fun b!5077799 () Bool)

(declare-fun e!3167783 () Conc!15580)

(declare-fun call!353752 () Conc!15580)

(assert (=> b!5077799 (= e!3167783 call!353752)))

(declare-fun bm!353745 () Bool)

(declare-fun call!353759 () Conc!15580)

(assert (=> bm!353745 (= call!353752 call!353759)))

(declare-fun bm!353746 () Bool)

(declare-fun call!353758 () Conc!15580)

(declare-fun c!871981 () Bool)

(declare-fun c!871976 () Bool)

(declare-fun c!871977 () Bool)

(assert (=> bm!353746 (= call!353758 (++!12806 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(declare-fun bm!353747 () Bool)

(declare-fun call!353756 () Conc!15580)

(declare-fun call!353753 () Conc!15580)

(assert (=> bm!353747 (= call!353756 call!353753)))

(declare-fun b!5077800 () Bool)

(declare-fun call!353755 () Int)

(declare-fun call!353750 () Int)

(assert (=> b!5077800 (= c!871976 (>= call!353755 call!353750))))

(declare-fun e!3167791 () Conc!15580)

(declare-fun e!3167784 () Conc!15580)

(assert (=> b!5077800 (= e!3167791 e!3167784)))

(declare-fun d!1640679 () Bool)

(declare-fun e!3167787 () Bool)

(assert (=> d!1640679 e!3167787))

(declare-fun res!2161954 () Bool)

(assert (=> d!1640679 (=> (not res!2161954) (not e!3167787))))

(assert (=> d!1640679 (= res!2161954 (appendAssocInst!918 xs!286 (left!42840 (left!42840 ys!41))))))

(declare-fun lt!2090471 () Conc!15580)

(declare-fun e!3167785 () Conc!15580)

(assert (=> d!1640679 (= lt!2090471 e!3167785)))

(declare-fun c!871983 () Bool)

(assert (=> d!1640679 (= c!871983 (= xs!286 Empty!15580))))

(declare-fun e!3167789 () Bool)

(assert (=> d!1640679 e!3167789))

(declare-fun res!2161955 () Bool)

(assert (=> d!1640679 (=> (not res!2161955) (not e!3167789))))

(assert (=> d!1640679 (= res!2161955 (isBalanced!4442 xs!286))))

(assert (=> d!1640679 (= (++!12806 xs!286 (left!42840 (left!42840 ys!41))) lt!2090471)))

(declare-fun bm!353748 () Bool)

(declare-fun call!353763 () Conc!15580)

(assert (=> bm!353748 (= call!353763 call!353758)))

(declare-fun b!5077801 () Bool)

(assert (=> b!5077801 (= e!3167787 (= (list!19021 lt!2090471) (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))))))

(declare-fun lt!2090468 () Conc!15580)

(declare-fun bm!353749 () Bool)

(assert (=> bm!353749 (= call!353755 (height!2157 (ite c!871981 (left!42840 xs!286) lt!2090468)))))

(declare-fun bm!353750 () Bool)

(declare-fun call!353761 () Conc!15580)

(declare-fun call!353764 () Conc!15580)

(assert (=> bm!353750 (= call!353761 call!353764)))

(declare-fun bm!353751 () Bool)

(assert (=> bm!353751 (= call!353750 (height!2157 (ite c!871981 (right!43170 xs!286) (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5077802 () Bool)

(declare-fun e!3167782 () Conc!15580)

(assert (=> b!5077802 (= e!3167784 e!3167782)))

(declare-fun lt!2090469 () Conc!15580)

(declare-fun call!353757 () Conc!15580)

(assert (=> b!5077802 (= lt!2090469 call!353757)))

(declare-fun c!871979 () Bool)

(declare-fun call!353754 () Int)

(declare-fun call!353765 () Int)

(assert (=> b!5077802 (= c!871979 (= call!353754 (- call!353765 3)))))

(declare-fun c!871980 () Bool)

(declare-fun bm!353752 () Bool)

(declare-fun call!353751 () Conc!15580)

(declare-fun c!871978 () Bool)

(assert (=> bm!353752 (= call!353751 (<>!400 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))

(declare-fun b!5077803 () Bool)

(declare-fun res!2161953 () Bool)

(assert (=> b!5077803 (=> (not res!2161953) (not e!3167787))))

(assert (=> b!5077803 (= res!2161953 (<= (height!2157 lt!2090471) (+ (max!0 (height!2157 xs!286) (height!2157 (left!42840 (left!42840 ys!41)))) 1)))))

(declare-fun b!5077804 () Bool)

(declare-fun res!2161956 () Bool)

(assert (=> b!5077804 (=> (not res!2161956) (not e!3167787))))

(assert (=> b!5077804 (= res!2161956 (isBalanced!4442 lt!2090471))))

(declare-fun call!353762 () Conc!15580)

(declare-fun bm!353753 () Bool)

(declare-fun call!353760 () Conc!15580)

(assert (=> bm!353753 (= call!353753 (<>!400 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))

(declare-fun b!5077805 () Bool)

(declare-fun e!3167790 () Conc!15580)

(assert (=> b!5077805 (= e!3167790 e!3167783)))

(assert (=> b!5077805 (= lt!2090468 call!353763)))

(assert (=> b!5077805 (= c!871980 (= call!353755 (- call!353750 3)))))

(declare-fun bm!353754 () Bool)

(assert (=> bm!353754 (= call!353760 call!353764)))

(declare-fun b!5077806 () Bool)

(assert (=> b!5077806 (= e!3167783 call!353752)))

(declare-fun bm!353755 () Bool)

(assert (=> bm!353755 (= call!353759 call!353753)))

(declare-fun b!5077807 () Bool)

(assert (=> b!5077807 (= e!3167785 (left!42840 (left!42840 ys!41)))))

(declare-fun b!5077808 () Bool)

(declare-fun e!3167786 () Conc!15580)

(assert (=> b!5077808 (= e!3167786 xs!286)))

(declare-fun bm!353756 () Bool)

(assert (=> bm!353756 (= call!353757 call!353758)))

(declare-fun b!5077809 () Bool)

(declare-fun lt!2090470 () Int)

(assert (=> b!5077809 (= c!871978 (and (<= (- 1) lt!2090470) (<= lt!2090470 1)))))

(assert (=> b!5077809 (= lt!2090470 (- (height!2157 (left!42840 (left!42840 ys!41))) (height!2157 xs!286)))))

(declare-fun e!3167788 () Conc!15580)

(assert (=> b!5077809 (= e!3167786 e!3167788)))

(declare-fun bm!353757 () Bool)

(assert (=> bm!353757 (= call!353754 (height!2157 (ite c!871981 lt!2090469 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5077810 () Bool)

(assert (=> b!5077810 (= e!3167782 call!353756)))

(declare-fun b!5077811 () Bool)

(assert (=> b!5077811 (= e!3167785 e!3167786)))

(declare-fun c!871982 () Bool)

(assert (=> b!5077811 (= c!871982 (= (left!42840 (left!42840 ys!41)) Empty!15580))))

(declare-fun b!5077812 () Bool)

(assert (=> b!5077812 (= e!3167789 (isBalanced!4442 (left!42840 (left!42840 ys!41))))))

(declare-fun bm!353758 () Bool)

(assert (=> bm!353758 (= call!353765 (height!2157 (ite c!871981 xs!286 (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5077813 () Bool)

(assert (=> b!5077813 (= c!871977 (>= call!353754 call!353765))))

(assert (=> b!5077813 (= e!3167791 e!3167790)))

(declare-fun b!5077814 () Bool)

(assert (=> b!5077814 (= e!3167788 call!353751)))

(declare-fun b!5077815 () Bool)

(assert (=> b!5077815 (= e!3167782 call!353756)))

(declare-fun bm!353759 () Bool)

(assert (=> bm!353759 (= call!353762 call!353761)))

(declare-fun b!5077816 () Bool)

(declare-fun res!2161957 () Bool)

(assert (=> b!5077816 (=> (not res!2161957) (not e!3167787))))

(assert (=> b!5077816 (= res!2161957 (>= (height!2157 lt!2090471) (max!0 (height!2157 xs!286) (height!2157 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5077817 () Bool)

(assert (=> b!5077817 (= e!3167788 e!3167791)))

(assert (=> b!5077817 (= c!871981 (< lt!2090470 (- 1)))))

(declare-fun bm!353760 () Bool)

(assert (=> bm!353760 (= call!353764 call!353751)))

(declare-fun b!5077818 () Bool)

(assert (=> b!5077818 (= e!3167790 call!353759)))

(declare-fun b!5077819 () Bool)

(assert (=> b!5077819 (= e!3167784 call!353761)))

(assert (= (and d!1640679 res!2161955) b!5077812))

(assert (= (and d!1640679 c!871983) b!5077807))

(assert (= (and d!1640679 (not c!871983)) b!5077811))

(assert (= (and b!5077811 c!871982) b!5077808))

(assert (= (and b!5077811 (not c!871982)) b!5077809))

(assert (= (and b!5077809 c!871978) b!5077814))

(assert (= (and b!5077809 (not c!871978)) b!5077817))

(assert (= (and b!5077817 c!871981) b!5077800))

(assert (= (and b!5077817 (not c!871981)) b!5077813))

(assert (= (and b!5077800 c!871976) b!5077819))

(assert (= (and b!5077800 (not c!871976)) b!5077802))

(assert (= (and b!5077802 c!871979) b!5077815))

(assert (= (and b!5077802 (not c!871979)) b!5077810))

(assert (= (or b!5077815 b!5077810) bm!353759))

(assert (= (or b!5077815 b!5077810) bm!353747))

(assert (= (or b!5077819 b!5077802) bm!353756))

(assert (= (or b!5077819 bm!353759) bm!353750))

(assert (= (and b!5077813 c!871977) b!5077818))

(assert (= (and b!5077813 (not c!871977)) b!5077805))

(assert (= (and b!5077805 c!871980) b!5077806))

(assert (= (and b!5077805 (not c!871980)) b!5077799))

(assert (= (or b!5077806 b!5077799) bm!353754))

(assert (= (or b!5077806 b!5077799) bm!353745))

(assert (= (or b!5077818 b!5077805) bm!353748))

(assert (= (or b!5077818 bm!353745) bm!353755))

(assert (= (or bm!353750 bm!353754) bm!353760))

(assert (= (or bm!353756 bm!353748) bm!353746))

(assert (= (or b!5077800 b!5077805) bm!353751))

(assert (= (or b!5077800 b!5077805) bm!353749))

(assert (= (or b!5077802 b!5077813) bm!353757))

(assert (= (or bm!353747 bm!353755) bm!353753))

(assert (= (or b!5077802 b!5077813) bm!353758))

(assert (= (or b!5077814 bm!353760) bm!353752))

(assert (= (and d!1640679 res!2161954) b!5077804))

(assert (= (and b!5077804 res!2161956) b!5077803))

(assert (= (and b!5077803 res!2161953) b!5077816))

(assert (= (and b!5077816 res!2161957) b!5077801))

(declare-fun m!6128202 () Bool)

(assert (=> bm!353752 m!6128202))

(declare-fun m!6128204 () Bool)

(assert (=> bm!353758 m!6128204))

(declare-fun m!6128206 () Bool)

(assert (=> bm!353751 m!6128206))

(declare-fun m!6128208 () Bool)

(assert (=> b!5077816 m!6128208))

(assert (=> b!5077816 m!6128064))

(declare-fun m!6128210 () Bool)

(assert (=> b!5077816 m!6128210))

(assert (=> b!5077816 m!6128064))

(assert (=> b!5077816 m!6128210))

(declare-fun m!6128212 () Bool)

(assert (=> b!5077816 m!6128212))

(declare-fun m!6128214 () Bool)

(assert (=> bm!353757 m!6128214))

(assert (=> b!5077809 m!6128210))

(assert (=> b!5077809 m!6128064))

(declare-fun m!6128216 () Bool)

(assert (=> d!1640679 m!6128216))

(assert (=> d!1640679 m!6128080))

(declare-fun m!6128218 () Bool)

(assert (=> bm!353749 m!6128218))

(assert (=> b!5077803 m!6128208))

(assert (=> b!5077803 m!6128064))

(assert (=> b!5077803 m!6128210))

(assert (=> b!5077803 m!6128064))

(assert (=> b!5077803 m!6128210))

(assert (=> b!5077803 m!6128212))

(declare-fun m!6128220 () Bool)

(assert (=> bm!353753 m!6128220))

(declare-fun m!6128222 () Bool)

(assert (=> bm!353746 m!6128222))

(declare-fun m!6128224 () Bool)

(assert (=> b!5077804 m!6128224))

(declare-fun m!6128226 () Bool)

(assert (=> b!5077801 m!6128226))

(assert (=> b!5077801 m!6128088))

(declare-fun m!6128228 () Bool)

(assert (=> b!5077801 m!6128228))

(assert (=> b!5077801 m!6128088))

(assert (=> b!5077801 m!6128228))

(declare-fun m!6128230 () Bool)

(assert (=> b!5077801 m!6128230))

(declare-fun m!6128232 () Bool)

(assert (=> b!5077812 m!6128232))

(assert (=> b!5077640 d!1640679))

(declare-fun b!5077854 () Bool)

(declare-fun res!2161965 () Bool)

(declare-fun e!3167811 () Bool)

(assert (=> b!5077854 (=> (not res!2161965) (not e!3167811))))

(assert (=> b!5077854 (= res!2161965 (isBalanced!4442 (left!42840 lt!2090452)))))

(declare-fun b!5077855 () Bool)

(declare-fun res!2161961 () Bool)

(assert (=> b!5077855 (=> (not res!2161961) (not e!3167811))))

(assert (=> b!5077855 (= res!2161961 (<= (- (height!2157 (left!42840 lt!2090452)) (height!2157 (right!43170 lt!2090452))) 1))))

(declare-fun d!1640699 () Bool)

(declare-fun res!2161964 () Bool)

(declare-fun e!3167810 () Bool)

(assert (=> d!1640699 (=> res!2161964 e!3167810)))

(assert (=> d!1640699 (= res!2161964 (not ((_ is Node!15580) lt!2090452)))))

(assert (=> d!1640699 (= (isBalanced!4442 lt!2090452) e!3167810)))

(declare-fun b!5077856 () Bool)

(declare-fun res!2161962 () Bool)

(assert (=> b!5077856 (=> (not res!2161962) (not e!3167811))))

(assert (=> b!5077856 (= res!2161962 (isBalanced!4442 (right!43170 lt!2090452)))))

(declare-fun b!5077857 () Bool)

(assert (=> b!5077857 (= e!3167811 (not (isEmpty!31663 (right!43170 lt!2090452))))))

(declare-fun b!5077858 () Bool)

(declare-fun res!2161960 () Bool)

(assert (=> b!5077858 (=> (not res!2161960) (not e!3167811))))

(assert (=> b!5077858 (= res!2161960 (not (isEmpty!31663 (left!42840 lt!2090452))))))

(declare-fun b!5077859 () Bool)

(assert (=> b!5077859 (= e!3167810 e!3167811)))

(declare-fun res!2161963 () Bool)

(assert (=> b!5077859 (=> (not res!2161963) (not e!3167811))))

(assert (=> b!5077859 (= res!2161963 (<= (- 1) (- (height!2157 (left!42840 lt!2090452)) (height!2157 (right!43170 lt!2090452)))))))

(assert (= (and d!1640699 (not res!2161964)) b!5077859))

(assert (= (and b!5077859 res!2161963) b!5077855))

(assert (= (and b!5077855 res!2161961) b!5077854))

(assert (= (and b!5077854 res!2161965) b!5077856))

(assert (= (and b!5077856 res!2161962) b!5077858))

(assert (= (and b!5077858 res!2161960) b!5077857))

(declare-fun m!6128234 () Bool)

(assert (=> b!5077856 m!6128234))

(declare-fun m!6128236 () Bool)

(assert (=> b!5077858 m!6128236))

(declare-fun m!6128238 () Bool)

(assert (=> b!5077857 m!6128238))

(declare-fun m!6128240 () Bool)

(assert (=> b!5077859 m!6128240))

(declare-fun m!6128242 () Bool)

(assert (=> b!5077859 m!6128242))

(declare-fun m!6128244 () Bool)

(assert (=> b!5077854 m!6128244))

(assert (=> b!5077855 m!6128240))

(assert (=> b!5077855 m!6128242))

(assert (=> b!5077641 d!1640699))

(declare-fun d!1640701 () Bool)

(assert (=> d!1640701 (= (height!2157 xs!286) (ite ((_ is Empty!15580) xs!286) 0 (ite ((_ is Leaf!25875) xs!286) 1 (cheight!15791 xs!286))))))

(assert (=> b!5077652 d!1640701))

(declare-fun d!1640703 () Bool)

(assert (=> d!1640703 (= (height!2157 ys!41) (ite ((_ is Empty!15580) ys!41) 0 (ite ((_ is Leaf!25875) ys!41) 1 (cheight!15791 ys!41))))))

(assert (=> b!5077652 d!1640703))

(declare-fun b!5077860 () Bool)

(declare-fun res!2161971 () Bool)

(declare-fun e!3167813 () Bool)

(assert (=> b!5077860 (=> (not res!2161971) (not e!3167813))))

(assert (=> b!5077860 (= res!2161971 (isBalanced!4442 (left!42840 xs!286)))))

(declare-fun b!5077861 () Bool)

(declare-fun res!2161967 () Bool)

(assert (=> b!5077861 (=> (not res!2161967) (not e!3167813))))

(assert (=> b!5077861 (= res!2161967 (<= (- (height!2157 (left!42840 xs!286)) (height!2157 (right!43170 xs!286))) 1))))

(declare-fun d!1640705 () Bool)

(declare-fun res!2161970 () Bool)

(declare-fun e!3167812 () Bool)

(assert (=> d!1640705 (=> res!2161970 e!3167812)))

(assert (=> d!1640705 (= res!2161970 (not ((_ is Node!15580) xs!286)))))

(assert (=> d!1640705 (= (isBalanced!4442 xs!286) e!3167812)))

(declare-fun b!5077862 () Bool)

(declare-fun res!2161968 () Bool)

(assert (=> b!5077862 (=> (not res!2161968) (not e!3167813))))

(assert (=> b!5077862 (= res!2161968 (isBalanced!4442 (right!43170 xs!286)))))

(declare-fun b!5077863 () Bool)

(assert (=> b!5077863 (= e!3167813 (not (isEmpty!31663 (right!43170 xs!286))))))

(declare-fun b!5077864 () Bool)

(declare-fun res!2161966 () Bool)

(assert (=> b!5077864 (=> (not res!2161966) (not e!3167813))))

(assert (=> b!5077864 (= res!2161966 (not (isEmpty!31663 (left!42840 xs!286))))))

(declare-fun b!5077865 () Bool)

(assert (=> b!5077865 (= e!3167812 e!3167813)))

(declare-fun res!2161969 () Bool)

(assert (=> b!5077865 (=> (not res!2161969) (not e!3167813))))

(assert (=> b!5077865 (= res!2161969 (<= (- 1) (- (height!2157 (left!42840 xs!286)) (height!2157 (right!43170 xs!286)))))))

(assert (= (and d!1640705 (not res!2161970)) b!5077865))

(assert (= (and b!5077865 res!2161969) b!5077861))

(assert (= (and b!5077861 res!2161967) b!5077860))

(assert (= (and b!5077860 res!2161971) b!5077862))

(assert (= (and b!5077862 res!2161968) b!5077864))

(assert (= (and b!5077864 res!2161966) b!5077863))

(declare-fun m!6128246 () Bool)

(assert (=> b!5077862 m!6128246))

(declare-fun m!6128248 () Bool)

(assert (=> b!5077864 m!6128248))

(declare-fun m!6128250 () Bool)

(assert (=> b!5077863 m!6128250))

(declare-fun m!6128252 () Bool)

(assert (=> b!5077865 m!6128252))

(declare-fun m!6128254 () Bool)

(assert (=> b!5077865 m!6128254))

(declare-fun m!6128256 () Bool)

(assert (=> b!5077860 m!6128256))

(assert (=> b!5077861 m!6128252))

(assert (=> b!5077861 m!6128254))

(assert (=> start!535598 d!1640705))

(declare-fun d!1640707 () Bool)

(declare-fun c!872002 () Bool)

(assert (=> d!1640707 (= c!872002 ((_ is Node!15580) xs!286))))

(declare-fun e!3167820 () Bool)

(assert (=> d!1640707 (= (inv!77643 xs!286) e!3167820)))

(declare-fun b!5077880 () Bool)

(declare-fun inv!77647 (Conc!15580) Bool)

(assert (=> b!5077880 (= e!3167820 (inv!77647 xs!286))))

(declare-fun b!5077881 () Bool)

(declare-fun e!3167821 () Bool)

(assert (=> b!5077881 (= e!3167820 e!3167821)))

(declare-fun res!2161982 () Bool)

(assert (=> b!5077881 (= res!2161982 (not ((_ is Leaf!25875) xs!286)))))

(assert (=> b!5077881 (=> res!2161982 e!3167821)))

(declare-fun b!5077882 () Bool)

(declare-fun inv!77648 (Conc!15580) Bool)

(assert (=> b!5077882 (= e!3167821 (inv!77648 xs!286))))

(assert (= (and d!1640707 c!872002) b!5077880))

(assert (= (and d!1640707 (not c!872002)) b!5077881))

(assert (= (and b!5077881 (not res!2161982)) b!5077882))

(declare-fun m!6128258 () Bool)

(assert (=> b!5077880 m!6128258))

(declare-fun m!6128260 () Bool)

(assert (=> b!5077882 m!6128260))

(assert (=> start!535598 d!1640707))

(declare-fun d!1640709 () Bool)

(declare-fun c!872003 () Bool)

(assert (=> d!1640709 (= c!872003 ((_ is Node!15580) ys!41))))

(declare-fun e!3167822 () Bool)

(assert (=> d!1640709 (= (inv!77643 ys!41) e!3167822)))

(declare-fun b!5077883 () Bool)

(assert (=> b!5077883 (= e!3167822 (inv!77647 ys!41))))

(declare-fun b!5077884 () Bool)

(declare-fun e!3167823 () Bool)

(assert (=> b!5077884 (= e!3167822 e!3167823)))

(declare-fun res!2161983 () Bool)

(assert (=> b!5077884 (= res!2161983 (not ((_ is Leaf!25875) ys!41)))))

(assert (=> b!5077884 (=> res!2161983 e!3167823)))

(declare-fun b!5077885 () Bool)

(assert (=> b!5077885 (= e!3167823 (inv!77648 ys!41))))

(assert (= (and d!1640709 c!872003) b!5077883))

(assert (= (and d!1640709 (not c!872003)) b!5077884))

(assert (= (and b!5077884 (not res!2161983)) b!5077885))

(declare-fun m!6128262 () Bool)

(assert (=> b!5077883 m!6128262))

(declare-fun m!6128264 () Bool)

(assert (=> b!5077885 m!6128264))

(assert (=> start!535598 d!1640709))

(declare-fun d!1640711 () Bool)

(assert (=> d!1640711 (= (height!2157 (right!43170 ys!41)) (ite ((_ is Empty!15580) (right!43170 ys!41)) 0 (ite ((_ is Leaf!25875) (right!43170 ys!41)) 1 (cheight!15791 (right!43170 ys!41)))))))

(assert (=> b!5077649 d!1640711))

(declare-fun d!1640713 () Bool)

(assert (=> d!1640713 (= (height!2157 (left!42840 ys!41)) (ite ((_ is Empty!15580) (left!42840 ys!41)) 0 (ite ((_ is Leaf!25875) (left!42840 ys!41)) 1 (cheight!15791 (left!42840 ys!41)))))))

(assert (=> b!5077649 d!1640713))

(declare-fun d!1640715 () Bool)

(declare-fun c!872004 () Bool)

(assert (=> d!1640715 (= c!872004 ((_ is Node!15580) (left!42840 xs!286)))))

(declare-fun e!3167824 () Bool)

(assert (=> d!1640715 (= (inv!77643 (left!42840 xs!286)) e!3167824)))

(declare-fun b!5077886 () Bool)

(assert (=> b!5077886 (= e!3167824 (inv!77647 (left!42840 xs!286)))))

(declare-fun b!5077887 () Bool)

(declare-fun e!3167825 () Bool)

(assert (=> b!5077887 (= e!3167824 e!3167825)))

(declare-fun res!2161984 () Bool)

(assert (=> b!5077887 (= res!2161984 (not ((_ is Leaf!25875) (left!42840 xs!286))))))

(assert (=> b!5077887 (=> res!2161984 e!3167825)))

(declare-fun b!5077888 () Bool)

(assert (=> b!5077888 (= e!3167825 (inv!77648 (left!42840 xs!286)))))

(assert (= (and d!1640715 c!872004) b!5077886))

(assert (= (and d!1640715 (not c!872004)) b!5077887))

(assert (= (and b!5077887 (not res!2161984)) b!5077888))

(declare-fun m!6128266 () Bool)

(assert (=> b!5077886 m!6128266))

(declare-fun m!6128268 () Bool)

(assert (=> b!5077888 m!6128268))

(assert (=> b!5077639 d!1640715))

(declare-fun d!1640717 () Bool)

(declare-fun c!872005 () Bool)

(assert (=> d!1640717 (= c!872005 ((_ is Node!15580) (right!43170 xs!286)))))

(declare-fun e!3167826 () Bool)

(assert (=> d!1640717 (= (inv!77643 (right!43170 xs!286)) e!3167826)))

(declare-fun b!5077889 () Bool)

(assert (=> b!5077889 (= e!3167826 (inv!77647 (right!43170 xs!286)))))

(declare-fun b!5077890 () Bool)

(declare-fun e!3167827 () Bool)

(assert (=> b!5077890 (= e!3167826 e!3167827)))

(declare-fun res!2161985 () Bool)

(assert (=> b!5077890 (= res!2161985 (not ((_ is Leaf!25875) (right!43170 xs!286))))))

(assert (=> b!5077890 (=> res!2161985 e!3167827)))

(declare-fun b!5077891 () Bool)

(assert (=> b!5077891 (= e!3167827 (inv!77648 (right!43170 xs!286)))))

(assert (= (and d!1640717 c!872005) b!5077889))

(assert (= (and d!1640717 (not c!872005)) b!5077890))

(assert (= (and b!5077890 (not res!2161985)) b!5077891))

(declare-fun m!6128270 () Bool)

(assert (=> b!5077889 m!6128270))

(declare-fun m!6128272 () Bool)

(assert (=> b!5077891 m!6128272))

(assert (=> b!5077639 d!1640717))

(declare-fun b!5077921 () Bool)

(declare-fun e!3167842 () List!58574)

(assert (=> b!5077921 (= e!3167842 Nil!58450)))

(declare-fun b!5077924 () Bool)

(declare-fun e!3167843 () List!58574)

(assert (=> b!5077924 (= e!3167843 (++!12807 (list!19021 (left!42840 lt!2090452)) (list!19021 (right!43170 lt!2090452))))))

(declare-fun b!5077923 () Bool)

(declare-fun list!19023 (IArray!31221) List!58574)

(assert (=> b!5077923 (= e!3167843 (list!19023 (xs!18946 lt!2090452)))))

(declare-fun d!1640719 () Bool)

(declare-fun c!872018 () Bool)

(assert (=> d!1640719 (= c!872018 ((_ is Empty!15580) lt!2090452))))

(assert (=> d!1640719 (= (list!19021 lt!2090452) e!3167842)))

(declare-fun b!5077922 () Bool)

(assert (=> b!5077922 (= e!3167842 e!3167843)))

(declare-fun c!872019 () Bool)

(assert (=> b!5077922 (= c!872019 ((_ is Leaf!25875) lt!2090452))))

(assert (= (and d!1640719 c!872018) b!5077921))

(assert (= (and d!1640719 (not c!872018)) b!5077922))

(assert (= (and b!5077922 c!872019) b!5077923))

(assert (= (and b!5077922 (not c!872019)) b!5077924))

(declare-fun m!6128274 () Bool)

(assert (=> b!5077924 m!6128274))

(declare-fun m!6128276 () Bool)

(assert (=> b!5077924 m!6128276))

(assert (=> b!5077924 m!6128274))

(assert (=> b!5077924 m!6128276))

(declare-fun m!6128278 () Bool)

(assert (=> b!5077924 m!6128278))

(declare-fun m!6128280 () Bool)

(assert (=> b!5077923 m!6128280))

(assert (=> b!5077645 d!1640719))

(declare-fun b!5077948 () Bool)

(declare-fun lt!2090486 () List!58574)

(declare-fun e!3167855 () Bool)

(assert (=> b!5077948 (= e!3167855 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090486 (list!19021 xs!286))))))

(declare-fun d!1640721 () Bool)

(assert (=> d!1640721 e!3167855))

(declare-fun res!2161995 () Bool)

(assert (=> d!1640721 (=> (not res!2161995) (not e!3167855))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10426 (List!58574) (InoxSet T!105230))

(assert (=> d!1640721 (= res!2161995 (= (content!10426 lt!2090486) ((_ map or) (content!10426 (list!19021 xs!286)) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3167854 () List!58574)

(assert (=> d!1640721 (= lt!2090486 e!3167854)))

(declare-fun c!872028 () Bool)

(assert (=> d!1640721 (= c!872028 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1640721 (= (++!12807 (list!19021 xs!286) (list!19021 ys!41)) lt!2090486)))

(declare-fun b!5077945 () Bool)

(assert (=> b!5077945 (= e!3167854 (list!19021 ys!41))))

(declare-fun b!5077947 () Bool)

(declare-fun res!2161996 () Bool)

(assert (=> b!5077947 (=> (not res!2161996) (not e!3167855))))

(declare-fun size!39108 (List!58574) Int)

(assert (=> b!5077947 (= res!2161996 (= (size!39108 lt!2090486) (+ (size!39108 (list!19021 xs!286)) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5077946 () Bool)

(assert (=> b!5077946 (= e!3167854 (Cons!58450 (h!64898 (list!19021 xs!286)) (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 ys!41))))))

(assert (= (and d!1640721 c!872028) b!5077945))

(assert (= (and d!1640721 (not c!872028)) b!5077946))

(assert (= (and d!1640721 res!2161995) b!5077947))

(assert (= (and b!5077947 res!2161996) b!5077948))

(declare-fun m!6128318 () Bool)

(assert (=> d!1640721 m!6128318))

(assert (=> d!1640721 m!6128088))

(declare-fun m!6128320 () Bool)

(assert (=> d!1640721 m!6128320))

(assert (=> d!1640721 m!6128090))

(declare-fun m!6128322 () Bool)

(assert (=> d!1640721 m!6128322))

(declare-fun m!6128324 () Bool)

(assert (=> b!5077947 m!6128324))

(assert (=> b!5077947 m!6128088))

(declare-fun m!6128326 () Bool)

(assert (=> b!5077947 m!6128326))

(assert (=> b!5077947 m!6128090))

(declare-fun m!6128328 () Bool)

(assert (=> b!5077947 m!6128328))

(assert (=> b!5077946 m!6128090))

(declare-fun m!6128330 () Bool)

(assert (=> b!5077946 m!6128330))

(assert (=> b!5077645 d!1640721))

(declare-fun b!5077957 () Bool)

(declare-fun e!3167860 () List!58574)

(assert (=> b!5077957 (= e!3167860 Nil!58450)))

(declare-fun b!5077960 () Bool)

(declare-fun e!3167861 () List!58574)

(assert (=> b!5077960 (= e!3167861 (++!12807 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286))))))

(declare-fun b!5077959 () Bool)

(assert (=> b!5077959 (= e!3167861 (list!19023 (xs!18946 xs!286)))))

(declare-fun d!1640727 () Bool)

(declare-fun c!872031 () Bool)

(assert (=> d!1640727 (= c!872031 ((_ is Empty!15580) xs!286))))

(assert (=> d!1640727 (= (list!19021 xs!286) e!3167860)))

(declare-fun b!5077958 () Bool)

(assert (=> b!5077958 (= e!3167860 e!3167861)))

(declare-fun c!872032 () Bool)

(assert (=> b!5077958 (= c!872032 ((_ is Leaf!25875) xs!286))))

(assert (= (and d!1640727 c!872031) b!5077957))

(assert (= (and d!1640727 (not c!872031)) b!5077958))

(assert (= (and b!5077958 c!872032) b!5077959))

(assert (= (and b!5077958 (not c!872032)) b!5077960))

(declare-fun m!6128332 () Bool)

(assert (=> b!5077960 m!6128332))

(declare-fun m!6128334 () Bool)

(assert (=> b!5077960 m!6128334))

(assert (=> b!5077960 m!6128332))

(assert (=> b!5077960 m!6128334))

(declare-fun m!6128336 () Bool)

(assert (=> b!5077960 m!6128336))

(declare-fun m!6128338 () Bool)

(assert (=> b!5077959 m!6128338))

(assert (=> b!5077645 d!1640727))

(declare-fun b!5077961 () Bool)

(declare-fun e!3167862 () List!58574)

(assert (=> b!5077961 (= e!3167862 Nil!58450)))

(declare-fun b!5077964 () Bool)

(declare-fun e!3167863 () List!58574)

(assert (=> b!5077964 (= e!3167863 (++!12807 (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))))))

(declare-fun b!5077963 () Bool)

(assert (=> b!5077963 (= e!3167863 (list!19023 (xs!18946 ys!41)))))

(declare-fun d!1640729 () Bool)

(declare-fun c!872033 () Bool)

(assert (=> d!1640729 (= c!872033 ((_ is Empty!15580) ys!41))))

(assert (=> d!1640729 (= (list!19021 ys!41) e!3167862)))

(declare-fun b!5077962 () Bool)

(assert (=> b!5077962 (= e!3167862 e!3167863)))

(declare-fun c!872034 () Bool)

(assert (=> b!5077962 (= c!872034 ((_ is Leaf!25875) ys!41))))

(assert (= (and d!1640729 c!872033) b!5077961))

(assert (= (and d!1640729 (not c!872033)) b!5077962))

(assert (= (and b!5077962 c!872034) b!5077963))

(assert (= (and b!5077962 (not c!872034)) b!5077964))

(declare-fun m!6128340 () Bool)

(assert (=> b!5077964 m!6128340))

(declare-fun m!6128342 () Bool)

(assert (=> b!5077964 m!6128342))

(assert (=> b!5077964 m!6128340))

(assert (=> b!5077964 m!6128342))

(declare-fun m!6128344 () Bool)

(assert (=> b!5077964 m!6128344))

(declare-fun m!6128346 () Bool)

(assert (=> b!5077963 m!6128346))

(assert (=> b!5077645 d!1640729))

(declare-fun d!1640731 () Bool)

(declare-fun c!872036 () Bool)

(assert (=> d!1640731 (= c!872036 ((_ is Node!15580) (left!42840 ys!41)))))

(declare-fun e!3167866 () Bool)

(assert (=> d!1640731 (= (inv!77643 (left!42840 ys!41)) e!3167866)))

(declare-fun b!5077969 () Bool)

(assert (=> b!5077969 (= e!3167866 (inv!77647 (left!42840 ys!41)))))

(declare-fun b!5077970 () Bool)

(declare-fun e!3167867 () Bool)

(assert (=> b!5077970 (= e!3167866 e!3167867)))

(declare-fun res!2162003 () Bool)

(assert (=> b!5077970 (= res!2162003 (not ((_ is Leaf!25875) (left!42840 ys!41))))))

(assert (=> b!5077970 (=> res!2162003 e!3167867)))

(declare-fun b!5077971 () Bool)

(assert (=> b!5077971 (= e!3167867 (inv!77648 (left!42840 ys!41)))))

(assert (= (and d!1640731 c!872036) b!5077969))

(assert (= (and d!1640731 (not c!872036)) b!5077970))

(assert (= (and b!5077970 (not res!2162003)) b!5077971))

(declare-fun m!6128362 () Bool)

(assert (=> b!5077969 m!6128362))

(declare-fun m!6128364 () Bool)

(assert (=> b!5077971 m!6128364))

(assert (=> b!5077646 d!1640731))

(declare-fun d!1640735 () Bool)

(declare-fun c!872039 () Bool)

(assert (=> d!1640735 (= c!872039 ((_ is Node!15580) (right!43170 ys!41)))))

(declare-fun e!3167870 () Bool)

(assert (=> d!1640735 (= (inv!77643 (right!43170 ys!41)) e!3167870)))

(declare-fun b!5077976 () Bool)

(assert (=> b!5077976 (= e!3167870 (inv!77647 (right!43170 ys!41)))))

(declare-fun b!5077977 () Bool)

(declare-fun e!3167871 () Bool)

(assert (=> b!5077977 (= e!3167870 e!3167871)))

(declare-fun res!2162004 () Bool)

(assert (=> b!5077977 (= res!2162004 (not ((_ is Leaf!25875) (right!43170 ys!41))))))

(assert (=> b!5077977 (=> res!2162004 e!3167871)))

(declare-fun b!5077978 () Bool)

(assert (=> b!5077978 (= e!3167871 (inv!77648 (right!43170 ys!41)))))

(assert (= (and d!1640735 c!872039) b!5077976))

(assert (= (and d!1640735 (not c!872039)) b!5077977))

(assert (= (and b!5077977 (not res!2162004)) b!5077978))

(declare-fun m!6128368 () Bool)

(assert (=> b!5077976 m!6128368))

(declare-fun m!6128372 () Bool)

(assert (=> b!5077978 m!6128372))

(assert (=> b!5077646 d!1640735))

(declare-fun d!1640739 () Bool)

(assert (=> d!1640739 (= (inv!77644 (xs!18946 ys!41)) (<= (size!39108 (innerList!15668 (xs!18946 ys!41))) 2147483647))))

(declare-fun bs!1190518 () Bool)

(assert (= bs!1190518 d!1640739))

(declare-fun m!6128390 () Bool)

(assert (=> bs!1190518 m!6128390))

(assert (=> b!5077647 d!1640739))

(declare-fun b!5078039 () Bool)

(declare-fun e!3167918 () Bool)

(declare-fun e!3167915 () Bool)

(assert (=> b!5078039 (= e!3167918 e!3167915)))

(declare-fun res!2162034 () Bool)

(assert (=> b!5078039 (=> (not res!2162034) (not e!3167915))))

(declare-fun appendAssoc!310 (List!58574 List!58574 List!58574) Bool)

(assert (=> b!5078039 (= res!2162034 (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5078040 () Bool)

(declare-fun e!3167920 () Bool)

(declare-fun e!3167916 () Bool)

(assert (=> b!5078040 (= e!3167920 e!3167916)))

(declare-fun res!2162038 () Bool)

(assert (=> b!5078040 (=> (not res!2162038) (not e!3167916))))

(assert (=> b!5078040 (= res!2162038 (appendAssoc!310 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))

(declare-fun d!1640745 () Bool)

(declare-fun e!3167914 () Bool)

(assert (=> d!1640745 e!3167914))

(declare-fun res!2162037 () Bool)

(assert (=> d!1640745 (=> (not res!2162037) (not e!3167914))))

(declare-fun e!3167917 () Bool)

(assert (=> d!1640745 (= res!2162037 e!3167917)))

(declare-fun res!2162036 () Bool)

(assert (=> d!1640745 (=> res!2162036 e!3167917)))

(assert (=> d!1640745 (= res!2162036 (not ((_ is Node!15580) xs!286)))))

(assert (=> d!1640745 (= (appendAssocInst!918 xs!286 ys!41) true)))

(declare-fun b!5078041 () Bool)

(declare-fun e!3167922 () Bool)

(declare-fun e!3167919 () Bool)

(assert (=> b!5078041 (= e!3167922 e!3167919)))

(declare-fun res!2162031 () Bool)

(assert (=> b!5078041 (=> (not res!2162031) (not e!3167919))))

(assert (=> b!5078041 (= res!2162031 (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))))))

(declare-fun b!5078042 () Bool)

(assert (=> b!5078042 (= e!3167916 (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))

(declare-fun b!5078043 () Bool)

(declare-fun e!3167921 () Bool)

(assert (=> b!5078043 (= e!3167917 e!3167921)))

(declare-fun res!2162032 () Bool)

(assert (=> b!5078043 (=> (not res!2162032) (not e!3167921))))

(assert (=> b!5078043 (= res!2162032 (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286)) (list!19021 ys!41)))))

(declare-fun b!5078044 () Bool)

(assert (=> b!5078044 (= e!3167915 (appendAssoc!310 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))))))

(declare-fun b!5078045 () Bool)

(assert (=> b!5078045 (= e!3167921 e!3167920)))

(declare-fun res!2162039 () Bool)

(assert (=> b!5078045 (=> res!2162039 e!3167920)))

(assert (=> b!5078045 (= res!2162039 (not ((_ is Node!15580) (right!43170 xs!286))))))

(declare-fun b!5078046 () Bool)

(assert (=> b!5078046 (= e!3167919 e!3167918)))

(declare-fun res!2162035 () Bool)

(assert (=> b!5078046 (=> res!2162035 e!3167918)))

(assert (=> b!5078046 (= res!2162035 (not ((_ is Node!15580) (left!42840 ys!41))))))

(declare-fun b!5078047 () Bool)

(assert (=> b!5078047 (= e!3167914 e!3167922)))

(declare-fun res!2162033 () Bool)

(assert (=> b!5078047 (=> res!2162033 e!3167922)))

(assert (=> b!5078047 (= res!2162033 (not ((_ is Node!15580) ys!41)))))

(assert (= (and d!1640745 (not res!2162036)) b!5078043))

(assert (= (and b!5078043 res!2162032) b!5078045))

(assert (= (and b!5078045 (not res!2162039)) b!5078040))

(assert (= (and b!5078040 res!2162038) b!5078042))

(assert (= (and d!1640745 res!2162037) b!5078047))

(assert (= (and b!5078047 (not res!2162033)) b!5078041))

(assert (= (and b!5078041 res!2162031) b!5078046))

(assert (= (and b!5078046 (not res!2162035)) b!5078039))

(assert (= (and b!5078039 res!2162034) b!5078044))

(declare-fun m!6128424 () Bool)

(assert (=> b!5078040 m!6128424))

(declare-fun m!6128426 () Bool)

(assert (=> b!5078040 m!6128426))

(assert (=> b!5078040 m!6128090))

(assert (=> b!5078040 m!6128424))

(assert (=> b!5078040 m!6128426))

(assert (=> b!5078040 m!6128090))

(declare-fun m!6128428 () Bool)

(assert (=> b!5078040 m!6128428))

(assert (=> b!5078042 m!6128332))

(assert (=> b!5078042 m!6128426))

(assert (=> b!5078042 m!6128424))

(assert (=> b!5078042 m!6128090))

(assert (=> b!5078042 m!6128332))

(assert (=> b!5078042 m!6128424))

(declare-fun m!6128430 () Bool)

(assert (=> b!5078042 m!6128430))

(declare-fun m!6128432 () Bool)

(assert (=> b!5078042 m!6128432))

(assert (=> b!5078042 m!6128426))

(assert (=> b!5078042 m!6128090))

(assert (=> b!5078042 m!6128430))

(assert (=> b!5078041 m!6128088))

(assert (=> b!5078041 m!6128340))

(assert (=> b!5078041 m!6128342))

(assert (=> b!5078041 m!6128088))

(assert (=> b!5078041 m!6128340))

(assert (=> b!5078041 m!6128342))

(declare-fun m!6128434 () Bool)

(assert (=> b!5078041 m!6128434))

(assert (=> b!5078039 m!6128088))

(assert (=> b!5078039 m!6128228))

(declare-fun m!6128436 () Bool)

(assert (=> b!5078039 m!6128436))

(assert (=> b!5078039 m!6128088))

(assert (=> b!5078039 m!6128228))

(assert (=> b!5078039 m!6128436))

(declare-fun m!6128438 () Bool)

(assert (=> b!5078039 m!6128438))

(assert (=> b!5078043 m!6128332))

(assert (=> b!5078043 m!6128334))

(assert (=> b!5078043 m!6128090))

(assert (=> b!5078043 m!6128332))

(assert (=> b!5078043 m!6128334))

(assert (=> b!5078043 m!6128090))

(declare-fun m!6128440 () Bool)

(assert (=> b!5078043 m!6128440))

(assert (=> b!5078044 m!6128230))

(assert (=> b!5078044 m!6128436))

(assert (=> b!5078044 m!6128342))

(declare-fun m!6128442 () Bool)

(assert (=> b!5078044 m!6128442))

(assert (=> b!5078044 m!6128228))

(assert (=> b!5078044 m!6128436))

(assert (=> b!5078044 m!6128342))

(assert (=> b!5078044 m!6128088))

(assert (=> b!5078044 m!6128228))

(assert (=> b!5078044 m!6128230))

(assert (=> b!5078044 m!6128088))

(assert (=> b!5077653 d!1640745))

(declare-fun d!1640749 () Bool)

(declare-fun lt!2090492 () Conc!15580)

(assert (=> d!1640749 (= (list!19021 lt!2090492) (++!12807 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (list!19021 (right!43170 ys!41))))))

(declare-fun e!3167927 () Conc!15580)

(assert (=> d!1640749 (= lt!2090492 e!3167927)))

(declare-fun c!872048 () Bool)

(assert (=> d!1640749 (= c!872048 (= (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))) Empty!15580))))

(assert (=> d!1640749 (= (<>!400 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))) (right!43170 ys!41)) lt!2090492)))

(declare-fun b!5078058 () Bool)

(declare-fun e!3167928 () Conc!15580)

(assert (=> b!5078058 (= e!3167928 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5078059 () Bool)

(declare-fun size!39109 (Conc!15580) Int)

(assert (=> b!5078059 (= e!3167928 (Node!15580 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))) (right!43170 ys!41) (+ (size!39109 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (size!39109 (right!43170 ys!41))) (+ (max!0 (height!2157 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 ys!41))) 1)))))

(declare-fun b!5078056 () Bool)

(assert (=> b!5078056 (= e!3167927 (right!43170 ys!41))))

(declare-fun b!5078057 () Bool)

(assert (=> b!5078057 (= e!3167927 e!3167928)))

(declare-fun c!872049 () Bool)

(assert (=> b!5078057 (= c!872049 (= (right!43170 ys!41) Empty!15580))))

(assert (= (and d!1640749 c!872048) b!5078056))

(assert (= (and d!1640749 (not c!872048)) b!5078057))

(assert (= (and b!5078057 c!872049) b!5078058))

(assert (= (and b!5078057 (not c!872049)) b!5078059))

(declare-fun m!6128444 () Bool)

(assert (=> d!1640749 m!6128444))

(assert (=> d!1640749 m!6128044))

(declare-fun m!6128446 () Bool)

(assert (=> d!1640749 m!6128446))

(assert (=> d!1640749 m!6128342))

(assert (=> d!1640749 m!6128446))

(assert (=> d!1640749 m!6128342))

(declare-fun m!6128448 () Bool)

(assert (=> d!1640749 m!6128448))

(declare-fun m!6128450 () Bool)

(assert (=> b!5078059 m!6128450))

(assert (=> b!5078059 m!6128074))

(assert (=> b!5078059 m!6128044))

(declare-fun m!6128452 () Bool)

(assert (=> b!5078059 m!6128452))

(assert (=> b!5078059 m!6128044))

(declare-fun m!6128454 () Bool)

(assert (=> b!5078059 m!6128454))

(assert (=> b!5078059 m!6128452))

(assert (=> b!5078059 m!6128074))

(declare-fun m!6128456 () Bool)

(assert (=> b!5078059 m!6128456))

(assert (=> b!5077653 d!1640749))

(declare-fun d!1640751 () Bool)

(declare-fun lt!2090493 () Conc!15580)

(assert (=> d!1640751 (= (list!19021 lt!2090493) (++!12807 (list!19021 lt!2090455) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun e!3167929 () Conc!15580)

(assert (=> d!1640751 (= lt!2090493 e!3167929)))

(declare-fun c!872050 () Bool)

(assert (=> d!1640751 (= c!872050 (= lt!2090455 Empty!15580))))

(assert (=> d!1640751 (= (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))) lt!2090493)))

(declare-fun b!5078062 () Bool)

(declare-fun e!3167930 () Conc!15580)

(assert (=> b!5078062 (= e!3167930 lt!2090455)))

(declare-fun b!5078063 () Bool)

(assert (=> b!5078063 (= e!3167930 (Node!15580 lt!2090455 (right!43170 (left!42840 ys!41)) (+ (size!39109 lt!2090455) (size!39109 (right!43170 (left!42840 ys!41)))) (+ (max!0 (height!2157 lt!2090455) (height!2157 (right!43170 (left!42840 ys!41)))) 1)))))

(declare-fun b!5078060 () Bool)

(assert (=> b!5078060 (= e!3167929 (right!43170 (left!42840 ys!41)))))

(declare-fun b!5078061 () Bool)

(assert (=> b!5078061 (= e!3167929 e!3167930)))

(declare-fun c!872051 () Bool)

(assert (=> b!5078061 (= c!872051 (= (right!43170 (left!42840 ys!41)) Empty!15580))))

(assert (= (and d!1640751 c!872050) b!5078060))

(assert (= (and d!1640751 (not c!872050)) b!5078061))

(assert (= (and b!5078061 c!872051) b!5078062))

(assert (= (and b!5078061 (not c!872051)) b!5078063))

(declare-fun m!6128458 () Bool)

(assert (=> d!1640751 m!6128458))

(declare-fun m!6128460 () Bool)

(assert (=> d!1640751 m!6128460))

(assert (=> d!1640751 m!6128436))

(assert (=> d!1640751 m!6128460))

(assert (=> d!1640751 m!6128436))

(declare-fun m!6128462 () Bool)

(assert (=> d!1640751 m!6128462))

(declare-fun m!6128464 () Bool)

(assert (=> b!5078063 m!6128464))

(declare-fun m!6128466 () Bool)

(assert (=> b!5078063 m!6128466))

(assert (=> b!5078063 m!6128048))

(declare-fun m!6128468 () Bool)

(assert (=> b!5078063 m!6128468))

(assert (=> b!5078063 m!6128048))

(assert (=> b!5078063 m!6128466))

(declare-fun m!6128470 () Bool)

(assert (=> b!5078063 m!6128470))

(assert (=> b!5077653 d!1640751))

(declare-fun d!1640753 () Bool)

(assert (=> d!1640753 (= (height!2157 lt!2090452) (ite ((_ is Empty!15580) lt!2090452) 0 (ite ((_ is Leaf!25875) lt!2090452) 1 (cheight!15791 lt!2090452))))))

(assert (=> b!5077643 d!1640753))

(declare-fun d!1640755 () Bool)

(assert (=> d!1640755 (= (max!0 lt!2090450 lt!2090451) (ite (< lt!2090450 lt!2090451) lt!2090451 lt!2090450))))

(assert (=> b!5077643 d!1640755))

(declare-fun d!1640757 () Bool)

(assert (=> d!1640757 (= (inv!77644 (xs!18946 xs!286)) (<= (size!39108 (innerList!15668 (xs!18946 xs!286))) 2147483647))))

(declare-fun bs!1190519 () Bool)

(assert (= bs!1190519 d!1640757))

(declare-fun m!6128472 () Bool)

(assert (=> bs!1190519 m!6128472))

(assert (=> b!5077644 d!1640757))

(declare-fun e!3167935 () Bool)

(declare-fun tp!1416808 () Bool)

(declare-fun tp!1416810 () Bool)

(declare-fun b!5078072 () Bool)

(assert (=> b!5078072 (= e!3167935 (and (inv!77643 (left!42840 (left!42840 ys!41))) tp!1416808 (inv!77643 (right!43170 (left!42840 ys!41))) tp!1416810))))

(declare-fun b!5078074 () Bool)

(declare-fun e!3167936 () Bool)

(declare-fun tp!1416809 () Bool)

(assert (=> b!5078074 (= e!3167936 tp!1416809)))

(declare-fun b!5078073 () Bool)

(assert (=> b!5078073 (= e!3167935 (and (inv!77644 (xs!18946 (left!42840 ys!41))) e!3167936))))

(assert (=> b!5077646 (= tp!1416778 (and (inv!77643 (left!42840 ys!41)) e!3167935))))

(assert (= (and b!5077646 ((_ is Node!15580) (left!42840 ys!41))) b!5078072))

(assert (= b!5078073 b!5078074))

(assert (= (and b!5077646 ((_ is Leaf!25875) (left!42840 ys!41))) b!5078073))

(declare-fun m!6128474 () Bool)

(assert (=> b!5078072 m!6128474))

(declare-fun m!6128476 () Bool)

(assert (=> b!5078072 m!6128476))

(declare-fun m!6128478 () Bool)

(assert (=> b!5078073 m!6128478))

(assert (=> b!5077646 m!6128068))

(declare-fun b!5078075 () Bool)

(declare-fun tp!1416813 () Bool)

(declare-fun tp!1416811 () Bool)

(declare-fun e!3167937 () Bool)

(assert (=> b!5078075 (= e!3167937 (and (inv!77643 (left!42840 (right!43170 ys!41))) tp!1416811 (inv!77643 (right!43170 (right!43170 ys!41))) tp!1416813))))

(declare-fun b!5078077 () Bool)

(declare-fun e!3167938 () Bool)

(declare-fun tp!1416812 () Bool)

(assert (=> b!5078077 (= e!3167938 tp!1416812)))

(declare-fun b!5078076 () Bool)

(assert (=> b!5078076 (= e!3167937 (and (inv!77644 (xs!18946 (right!43170 ys!41))) e!3167938))))

(assert (=> b!5077646 (= tp!1416775 (and (inv!77643 (right!43170 ys!41)) e!3167937))))

(assert (= (and b!5077646 ((_ is Node!15580) (right!43170 ys!41))) b!5078075))

(assert (= b!5078076 b!5078077))

(assert (= (and b!5077646 ((_ is Leaf!25875) (right!43170 ys!41))) b!5078076))

(declare-fun m!6128480 () Bool)

(assert (=> b!5078075 m!6128480))

(declare-fun m!6128482 () Bool)

(assert (=> b!5078075 m!6128482))

(declare-fun m!6128484 () Bool)

(assert (=> b!5078076 m!6128484))

(assert (=> b!5077646 m!6128070))

(declare-fun b!5078082 () Bool)

(declare-fun e!3167941 () Bool)

(declare-fun tp_is_empty!37083 () Bool)

(declare-fun tp!1416816 () Bool)

(assert (=> b!5078082 (= e!3167941 (and tp_is_empty!37083 tp!1416816))))

(assert (=> b!5077642 (= tp!1416779 e!3167941)))

(assert (= (and b!5077642 ((_ is Cons!58450) (innerList!15668 (xs!18946 ys!41)))) b!5078082))

(declare-fun b!5078083 () Bool)

(declare-fun e!3167942 () Bool)

(declare-fun tp!1416817 () Bool)

(assert (=> b!5078083 (= e!3167942 (and tp_is_empty!37083 tp!1416817))))

(assert (=> b!5077648 (= tp!1416776 e!3167942)))

(assert (= (and b!5077648 ((_ is Cons!58450) (innerList!15668 (xs!18946 xs!286)))) b!5078083))

(declare-fun b!5078084 () Bool)

(declare-fun tp!1416818 () Bool)

(declare-fun tp!1416820 () Bool)

(declare-fun e!3167943 () Bool)

(assert (=> b!5078084 (= e!3167943 (and (inv!77643 (left!42840 (left!42840 xs!286))) tp!1416818 (inv!77643 (right!43170 (left!42840 xs!286))) tp!1416820))))

(declare-fun b!5078086 () Bool)

(declare-fun e!3167944 () Bool)

(declare-fun tp!1416819 () Bool)

(assert (=> b!5078086 (= e!3167944 tp!1416819)))

(declare-fun b!5078085 () Bool)

(assert (=> b!5078085 (= e!3167943 (and (inv!77644 (xs!18946 (left!42840 xs!286))) e!3167944))))

(assert (=> b!5077639 (= tp!1416777 (and (inv!77643 (left!42840 xs!286)) e!3167943))))

(assert (= (and b!5077639 ((_ is Node!15580) (left!42840 xs!286))) b!5078084))

(assert (= b!5078085 b!5078086))

(assert (= (and b!5077639 ((_ is Leaf!25875) (left!42840 xs!286))) b!5078085))

(declare-fun m!6128486 () Bool)

(assert (=> b!5078084 m!6128486))

(declare-fun m!6128488 () Bool)

(assert (=> b!5078084 m!6128488))

(declare-fun m!6128490 () Bool)

(assert (=> b!5078085 m!6128490))

(assert (=> b!5077639 m!6128052))

(declare-fun tp!1416821 () Bool)

(declare-fun b!5078087 () Bool)

(declare-fun e!3167945 () Bool)

(declare-fun tp!1416823 () Bool)

(assert (=> b!5078087 (= e!3167945 (and (inv!77643 (left!42840 (right!43170 xs!286))) tp!1416821 (inv!77643 (right!43170 (right!43170 xs!286))) tp!1416823))))

(declare-fun b!5078089 () Bool)

(declare-fun e!3167946 () Bool)

(declare-fun tp!1416822 () Bool)

(assert (=> b!5078089 (= e!3167946 tp!1416822)))

(declare-fun b!5078088 () Bool)

(assert (=> b!5078088 (= e!3167945 (and (inv!77644 (xs!18946 (right!43170 xs!286))) e!3167946))))

(assert (=> b!5077639 (= tp!1416774 (and (inv!77643 (right!43170 xs!286)) e!3167945))))

(assert (= (and b!5077639 ((_ is Node!15580) (right!43170 xs!286))) b!5078087))

(assert (= b!5078088 b!5078089))

(assert (= (and b!5077639 ((_ is Leaf!25875) (right!43170 xs!286))) b!5078088))

(declare-fun m!6128492 () Bool)

(assert (=> b!5078087 m!6128492))

(declare-fun m!6128494 () Bool)

(assert (=> b!5078087 m!6128494))

(declare-fun m!6128496 () Bool)

(assert (=> b!5078088 m!6128496))

(assert (=> b!5077639 m!6128054))

(check-sat (not b!5078059) (not b!5077888) (not b!5077688) (not b!5078085) (not b!5077885) (not b!5078086) (not bm!353757) (not b!5078083) (not b!5077969) (not b!5077857) (not bm!353749) (not b!5077804) (not b!5077862) (not b!5077883) (not d!1640721) (not b!5078039) (not b!5077959) (not b!5077976) (not d!1640757) (not b!5077809) (not b!5077803) (not b!5078042) (not b!5077639) (not b!5077687) (not d!1640679) (not b!5077686) (not b!5078063) (not b!5078077) (not bm!353753) (not b!5077880) (not b!5078041) (not b!5078089) (not d!1640749) (not b!5078076) (not b!5078044) (not b!5077924) (not b!5077689) (not b!5077923) (not b!5077863) (not b!5078073) (not b!5078088) (not b!5077854) (not b!5077860) (not b!5077960) (not b!5077859) (not bm!353751) (not b!5077858) (not b!5077964) (not b!5077882) (not b!5078043) (not b!5077812) (not b!5078074) (not b!5078040) (not b!5077963) (not bm!353752) (not b!5077886) (not b!5078087) (not b!5077856) (not b!5077684) (not b!5077646) (not b!5077889) (not b!5078075) (not b!5077947) (not d!1640751) (not b!5077861) (not b!5078082) (not b!5077865) (not d!1640739) (not b!5077978) (not b!5077864) (not b!5077801) (not b!5078084) (not b!5077816) (not bm!353758) (not b!5077946) (not b!5077891) (not b!5077855) (not bm!353746) (not b!5077971) (not b!5077685) tp_is_empty!37083 (not b!5078072))
(check-sat)
(get-model)

(declare-fun b!5078090 () Bool)

(declare-fun res!2162045 () Bool)

(declare-fun e!3167948 () Bool)

(assert (=> b!5078090 (=> (not res!2162045) (not e!3167948))))

(assert (=> b!5078090 (= res!2162045 (isBalanced!4442 (left!42840 lt!2090471)))))

(declare-fun b!5078091 () Bool)

(declare-fun res!2162041 () Bool)

(assert (=> b!5078091 (=> (not res!2162041) (not e!3167948))))

(assert (=> b!5078091 (= res!2162041 (<= (- (height!2157 (left!42840 lt!2090471)) (height!2157 (right!43170 lt!2090471))) 1))))

(declare-fun d!1640759 () Bool)

(declare-fun res!2162044 () Bool)

(declare-fun e!3167947 () Bool)

(assert (=> d!1640759 (=> res!2162044 e!3167947)))

(assert (=> d!1640759 (= res!2162044 (not ((_ is Node!15580) lt!2090471)))))

(assert (=> d!1640759 (= (isBalanced!4442 lt!2090471) e!3167947)))

(declare-fun b!5078092 () Bool)

(declare-fun res!2162042 () Bool)

(assert (=> b!5078092 (=> (not res!2162042) (not e!3167948))))

(assert (=> b!5078092 (= res!2162042 (isBalanced!4442 (right!43170 lt!2090471)))))

(declare-fun b!5078093 () Bool)

(assert (=> b!5078093 (= e!3167948 (not (isEmpty!31663 (right!43170 lt!2090471))))))

(declare-fun b!5078094 () Bool)

(declare-fun res!2162040 () Bool)

(assert (=> b!5078094 (=> (not res!2162040) (not e!3167948))))

(assert (=> b!5078094 (= res!2162040 (not (isEmpty!31663 (left!42840 lt!2090471))))))

(declare-fun b!5078095 () Bool)

(assert (=> b!5078095 (= e!3167947 e!3167948)))

(declare-fun res!2162043 () Bool)

(assert (=> b!5078095 (=> (not res!2162043) (not e!3167948))))

(assert (=> b!5078095 (= res!2162043 (<= (- 1) (- (height!2157 (left!42840 lt!2090471)) (height!2157 (right!43170 lt!2090471)))))))

(assert (= (and d!1640759 (not res!2162044)) b!5078095))

(assert (= (and b!5078095 res!2162043) b!5078091))

(assert (= (and b!5078091 res!2162041) b!5078090))

(assert (= (and b!5078090 res!2162045) b!5078092))

(assert (= (and b!5078092 res!2162042) b!5078094))

(assert (= (and b!5078094 res!2162040) b!5078093))

(declare-fun m!6128498 () Bool)

(assert (=> b!5078092 m!6128498))

(declare-fun m!6128500 () Bool)

(assert (=> b!5078094 m!6128500))

(declare-fun m!6128502 () Bool)

(assert (=> b!5078093 m!6128502))

(declare-fun m!6128504 () Bool)

(assert (=> b!5078095 m!6128504))

(declare-fun m!6128506 () Bool)

(assert (=> b!5078095 m!6128506))

(declare-fun m!6128508 () Bool)

(assert (=> b!5078090 m!6128508))

(assert (=> b!5078091 m!6128504))

(assert (=> b!5078091 m!6128506))

(assert (=> b!5077804 d!1640759))

(declare-fun b!5078099 () Bool)

(declare-fun e!3167950 () Bool)

(declare-fun lt!2090494 () List!58574)

(assert (=> b!5078099 (= e!3167950 (or (not (= (list!19021 (right!43170 ys!41)) Nil!58450)) (= lt!2090494 (list!19021 (left!42840 ys!41)))))))

(declare-fun d!1640761 () Bool)

(assert (=> d!1640761 e!3167950))

(declare-fun res!2162046 () Bool)

(assert (=> d!1640761 (=> (not res!2162046) (not e!3167950))))

(assert (=> d!1640761 (= res!2162046 (= (content!10426 lt!2090494) ((_ map or) (content!10426 (list!19021 (left!42840 ys!41))) (content!10426 (list!19021 (right!43170 ys!41))))))))

(declare-fun e!3167949 () List!58574)

(assert (=> d!1640761 (= lt!2090494 e!3167949)))

(declare-fun c!872052 () Bool)

(assert (=> d!1640761 (= c!872052 ((_ is Nil!58450) (list!19021 (left!42840 ys!41))))))

(assert (=> d!1640761 (= (++!12807 (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))) lt!2090494)))

(declare-fun b!5078096 () Bool)

(assert (=> b!5078096 (= e!3167949 (list!19021 (right!43170 ys!41)))))

(declare-fun b!5078098 () Bool)

(declare-fun res!2162047 () Bool)

(assert (=> b!5078098 (=> (not res!2162047) (not e!3167950))))

(assert (=> b!5078098 (= res!2162047 (= (size!39108 lt!2090494) (+ (size!39108 (list!19021 (left!42840 ys!41))) (size!39108 (list!19021 (right!43170 ys!41))))))))

(declare-fun b!5078097 () Bool)

(assert (=> b!5078097 (= e!3167949 (Cons!58450 (h!64898 (list!19021 (left!42840 ys!41))) (++!12807 (t!371381 (list!19021 (left!42840 ys!41))) (list!19021 (right!43170 ys!41)))))))

(assert (= (and d!1640761 c!872052) b!5078096))

(assert (= (and d!1640761 (not c!872052)) b!5078097))

(assert (= (and d!1640761 res!2162046) b!5078098))

(assert (= (and b!5078098 res!2162047) b!5078099))

(declare-fun m!6128510 () Bool)

(assert (=> d!1640761 m!6128510))

(assert (=> d!1640761 m!6128340))

(declare-fun m!6128512 () Bool)

(assert (=> d!1640761 m!6128512))

(assert (=> d!1640761 m!6128342))

(declare-fun m!6128514 () Bool)

(assert (=> d!1640761 m!6128514))

(declare-fun m!6128516 () Bool)

(assert (=> b!5078098 m!6128516))

(assert (=> b!5078098 m!6128340))

(declare-fun m!6128518 () Bool)

(assert (=> b!5078098 m!6128518))

(assert (=> b!5078098 m!6128342))

(declare-fun m!6128522 () Bool)

(assert (=> b!5078098 m!6128522))

(assert (=> b!5078097 m!6128342))

(declare-fun m!6128524 () Bool)

(assert (=> b!5078097 m!6128524))

(assert (=> b!5077964 d!1640761))

(declare-fun b!5078100 () Bool)

(declare-fun e!3167951 () List!58574)

(assert (=> b!5078100 (= e!3167951 Nil!58450)))

(declare-fun b!5078103 () Bool)

(declare-fun e!3167952 () List!58574)

(assert (=> b!5078103 (= e!3167952 (++!12807 (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5078102 () Bool)

(assert (=> b!5078102 (= e!3167952 (list!19023 (xs!18946 (left!42840 ys!41))))))

(declare-fun d!1640767 () Bool)

(declare-fun c!872053 () Bool)

(assert (=> d!1640767 (= c!872053 ((_ is Empty!15580) (left!42840 ys!41)))))

(assert (=> d!1640767 (= (list!19021 (left!42840 ys!41)) e!3167951)))

(declare-fun b!5078101 () Bool)

(assert (=> b!5078101 (= e!3167951 e!3167952)))

(declare-fun c!872054 () Bool)

(assert (=> b!5078101 (= c!872054 ((_ is Leaf!25875) (left!42840 ys!41)))))

(assert (= (and d!1640767 c!872053) b!5078100))

(assert (= (and d!1640767 (not c!872053)) b!5078101))

(assert (= (and b!5078101 c!872054) b!5078102))

(assert (= (and b!5078101 (not c!872054)) b!5078103))

(assert (=> b!5078103 m!6128228))

(assert (=> b!5078103 m!6128436))

(assert (=> b!5078103 m!6128228))

(assert (=> b!5078103 m!6128436))

(declare-fun m!6128526 () Bool)

(assert (=> b!5078103 m!6128526))

(declare-fun m!6128528 () Bool)

(assert (=> b!5078102 m!6128528))

(assert (=> b!5077964 d!1640767))

(declare-fun b!5078104 () Bool)

(declare-fun e!3167953 () List!58574)

(assert (=> b!5078104 (= e!3167953 Nil!58450)))

(declare-fun b!5078107 () Bool)

(declare-fun e!3167954 () List!58574)

(assert (=> b!5078107 (= e!3167954 (++!12807 (list!19021 (left!42840 (right!43170 ys!41))) (list!19021 (right!43170 (right!43170 ys!41)))))))

(declare-fun b!5078106 () Bool)

(assert (=> b!5078106 (= e!3167954 (list!19023 (xs!18946 (right!43170 ys!41))))))

(declare-fun d!1640771 () Bool)

(declare-fun c!872055 () Bool)

(assert (=> d!1640771 (= c!872055 ((_ is Empty!15580) (right!43170 ys!41)))))

(assert (=> d!1640771 (= (list!19021 (right!43170 ys!41)) e!3167953)))

(declare-fun b!5078105 () Bool)

(assert (=> b!5078105 (= e!3167953 e!3167954)))

(declare-fun c!872056 () Bool)

(assert (=> b!5078105 (= c!872056 ((_ is Leaf!25875) (right!43170 ys!41)))))

(assert (= (and d!1640771 c!872055) b!5078104))

(assert (= (and d!1640771 (not c!872055)) b!5078105))

(assert (= (and b!5078105 c!872056) b!5078106))

(assert (= (and b!5078105 (not c!872056)) b!5078107))

(declare-fun m!6128530 () Bool)

(assert (=> b!5078107 m!6128530))

(declare-fun m!6128532 () Bool)

(assert (=> b!5078107 m!6128532))

(assert (=> b!5078107 m!6128530))

(assert (=> b!5078107 m!6128532))

(declare-fun m!6128534 () Bool)

(assert (=> b!5078107 m!6128534))

(declare-fun m!6128536 () Bool)

(assert (=> b!5078106 m!6128536))

(assert (=> b!5077964 d!1640771))

(declare-fun d!1640773 () Bool)

(declare-fun c!872057 () Bool)

(assert (=> d!1640773 (= c!872057 ((_ is Node!15580) (left!42840 (right!43170 xs!286))))))

(declare-fun e!3167955 () Bool)

(assert (=> d!1640773 (= (inv!77643 (left!42840 (right!43170 xs!286))) e!3167955)))

(declare-fun b!5078108 () Bool)

(assert (=> b!5078108 (= e!3167955 (inv!77647 (left!42840 (right!43170 xs!286))))))

(declare-fun b!5078109 () Bool)

(declare-fun e!3167956 () Bool)

(assert (=> b!5078109 (= e!3167955 e!3167956)))

(declare-fun res!2162048 () Bool)

(assert (=> b!5078109 (= res!2162048 (not ((_ is Leaf!25875) (left!42840 (right!43170 xs!286)))))))

(assert (=> b!5078109 (=> res!2162048 e!3167956)))

(declare-fun b!5078110 () Bool)

(assert (=> b!5078110 (= e!3167956 (inv!77648 (left!42840 (right!43170 xs!286))))))

(assert (= (and d!1640773 c!872057) b!5078108))

(assert (= (and d!1640773 (not c!872057)) b!5078109))

(assert (= (and b!5078109 (not res!2162048)) b!5078110))

(declare-fun m!6128538 () Bool)

(assert (=> b!5078108 m!6128538))

(declare-fun m!6128540 () Bool)

(assert (=> b!5078110 m!6128540))

(assert (=> b!5078087 d!1640773))

(declare-fun d!1640775 () Bool)

(declare-fun c!872058 () Bool)

(assert (=> d!1640775 (= c!872058 ((_ is Node!15580) (right!43170 (right!43170 xs!286))))))

(declare-fun e!3167957 () Bool)

(assert (=> d!1640775 (= (inv!77643 (right!43170 (right!43170 xs!286))) e!3167957)))

(declare-fun b!5078111 () Bool)

(assert (=> b!5078111 (= e!3167957 (inv!77647 (right!43170 (right!43170 xs!286))))))

(declare-fun b!5078112 () Bool)

(declare-fun e!3167958 () Bool)

(assert (=> b!5078112 (= e!3167957 e!3167958)))

(declare-fun res!2162049 () Bool)

(assert (=> b!5078112 (= res!2162049 (not ((_ is Leaf!25875) (right!43170 (right!43170 xs!286)))))))

(assert (=> b!5078112 (=> res!2162049 e!3167958)))

(declare-fun b!5078113 () Bool)

(assert (=> b!5078113 (= e!3167958 (inv!77648 (right!43170 (right!43170 xs!286))))))

(assert (= (and d!1640775 c!872058) b!5078111))

(assert (= (and d!1640775 (not c!872058)) b!5078112))

(assert (= (and b!5078112 (not res!2162049)) b!5078113))

(declare-fun m!6128542 () Bool)

(assert (=> b!5078111 m!6128542))

(declare-fun m!6128544 () Bool)

(assert (=> b!5078113 m!6128544))

(assert (=> b!5078087 d!1640775))

(declare-fun d!1640777 () Bool)

(declare-fun res!2162068 () Bool)

(declare-fun e!3167972 () Bool)

(assert (=> d!1640777 (=> (not res!2162068) (not e!3167972))))

(assert (=> d!1640777 (= res!2162068 (= (csize!31390 (left!42840 ys!41)) (+ (size!39109 (left!42840 (left!42840 ys!41))) (size!39109 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1640777 (= (inv!77647 (left!42840 ys!41)) e!3167972)))

(declare-fun b!5078140 () Bool)

(declare-fun res!2162069 () Bool)

(assert (=> b!5078140 (=> (not res!2162069) (not e!3167972))))

(assert (=> b!5078140 (= res!2162069 (and (not (= (left!42840 (left!42840 ys!41)) Empty!15580)) (not (= (right!43170 (left!42840 ys!41)) Empty!15580))))))

(declare-fun b!5078141 () Bool)

(declare-fun res!2162070 () Bool)

(assert (=> b!5078141 (=> (not res!2162070) (not e!3167972))))

(assert (=> b!5078141 (= res!2162070 (= (cheight!15791 (left!42840 ys!41)) (+ (max!0 (height!2157 (left!42840 (left!42840 ys!41))) (height!2157 (right!43170 (left!42840 ys!41)))) 1)))))

(declare-fun b!5078142 () Bool)

(assert (=> b!5078142 (= e!3167972 (<= 0 (cheight!15791 (left!42840 ys!41))))))

(assert (= (and d!1640777 res!2162068) b!5078140))

(assert (= (and b!5078140 res!2162069) b!5078141))

(assert (= (and b!5078141 res!2162070) b!5078142))

(declare-fun m!6128582 () Bool)

(assert (=> d!1640777 m!6128582))

(assert (=> d!1640777 m!6128464))

(assert (=> b!5078141 m!6128210))

(assert (=> b!5078141 m!6128466))

(assert (=> b!5078141 m!6128210))

(assert (=> b!5078141 m!6128466))

(declare-fun m!6128584 () Bool)

(assert (=> b!5078141 m!6128584))

(assert (=> b!5077969 d!1640777))

(declare-fun d!1640793 () Bool)

(assert (=> d!1640793 (= (height!2157 lt!2090471) (ite ((_ is Empty!15580) lt!2090471) 0 (ite ((_ is Leaf!25875) lt!2090471) 1 (cheight!15791 lt!2090471))))))

(assert (=> b!5077816 d!1640793))

(declare-fun d!1640795 () Bool)

(assert (=> d!1640795 (= (max!0 (height!2157 xs!286) (height!2157 (left!42840 (left!42840 ys!41)))) (ite (< (height!2157 xs!286) (height!2157 (left!42840 (left!42840 ys!41)))) (height!2157 (left!42840 (left!42840 ys!41))) (height!2157 xs!286)))))

(assert (=> b!5077816 d!1640795))

(assert (=> b!5077816 d!1640701))

(declare-fun d!1640797 () Bool)

(assert (=> d!1640797 (= (height!2157 (left!42840 (left!42840 ys!41))) (ite ((_ is Empty!15580) (left!42840 (left!42840 ys!41))) 0 (ite ((_ is Leaf!25875) (left!42840 (left!42840 ys!41))) 1 (cheight!15791 (left!42840 (left!42840 ys!41))))))))

(assert (=> b!5077816 d!1640797))

(declare-fun d!1640799 () Bool)

(declare-fun lt!2090496 () Conc!15580)

(assert (=> d!1640799 (= (list!19021 lt!2090496) (++!12807 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun e!3167973 () Conc!15580)

(assert (=> d!1640799 (= lt!2090496 e!3167973)))

(declare-fun c!872063 () Bool)

(assert (=> d!1640799 (= c!872063 (= (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))) Empty!15580))))

(assert (=> d!1640799 (= (<>!400 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) lt!2090496)))

(declare-fun b!5078145 () Bool)

(declare-fun e!3167974 () Conc!15580)

(assert (=> b!5078145 (= e!3167974 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(declare-fun b!5078146 () Bool)

(assert (=> b!5078146 (= e!3167974 (Node!15580 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))) (+ (size!39109 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (size!39109 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))) (+ (max!0 (height!2157 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (height!2157 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))) 1)))))

(declare-fun b!5078143 () Bool)

(assert (=> b!5078143 (= e!3167973 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078144 () Bool)

(assert (=> b!5078144 (= e!3167973 e!3167974)))

(declare-fun c!872064 () Bool)

(assert (=> b!5078144 (= c!872064 (= (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))) Empty!15580))))

(assert (= (and d!1640799 c!872063) b!5078143))

(assert (= (and d!1640799 (not c!872063)) b!5078144))

(assert (= (and b!5078144 c!872064) b!5078145))

(assert (= (and b!5078144 (not c!872064)) b!5078146))

(declare-fun m!6128586 () Bool)

(assert (=> d!1640799 m!6128586))

(declare-fun m!6128588 () Bool)

(assert (=> d!1640799 m!6128588))

(declare-fun m!6128590 () Bool)

(assert (=> d!1640799 m!6128590))

(assert (=> d!1640799 m!6128588))

(assert (=> d!1640799 m!6128590))

(declare-fun m!6128592 () Bool)

(assert (=> d!1640799 m!6128592))

(declare-fun m!6128594 () Bool)

(assert (=> b!5078146 m!6128594))

(declare-fun m!6128596 () Bool)

(assert (=> b!5078146 m!6128596))

(declare-fun m!6128598 () Bool)

(assert (=> b!5078146 m!6128598))

(declare-fun m!6128600 () Bool)

(assert (=> b!5078146 m!6128600))

(assert (=> b!5078146 m!6128598))

(assert (=> b!5078146 m!6128596))

(declare-fun m!6128602 () Bool)

(assert (=> b!5078146 m!6128602))

(assert (=> bm!353752 d!1640799))

(declare-fun d!1640801 () Bool)

(assert (=> d!1640801 (= (inv!77644 (xs!18946 (left!42840 ys!41))) (<= (size!39108 (innerList!15668 (xs!18946 (left!42840 ys!41)))) 2147483647))))

(declare-fun bs!1190522 () Bool)

(assert (= bs!1190522 d!1640801))

(declare-fun m!6128604 () Bool)

(assert (=> bs!1190522 m!6128604))

(assert (=> b!5078073 d!1640801))

(declare-fun d!1640803 () Bool)

(assert (=> d!1640803 (= (list!19023 (xs!18946 xs!286)) (innerList!15668 (xs!18946 xs!286)))))

(assert (=> b!5077959 d!1640803))

(declare-fun b!5078147 () Bool)

(declare-fun e!3167975 () List!58574)

(assert (=> b!5078147 (= e!3167975 Nil!58450)))

(declare-fun b!5078150 () Bool)

(declare-fun e!3167976 () List!58574)

(assert (=> b!5078150 (= e!3167976 (++!12807 (list!19021 (left!42840 lt!2090493)) (list!19021 (right!43170 lt!2090493))))))

(declare-fun b!5078149 () Bool)

(assert (=> b!5078149 (= e!3167976 (list!19023 (xs!18946 lt!2090493)))))

(declare-fun d!1640807 () Bool)

(declare-fun c!872065 () Bool)

(assert (=> d!1640807 (= c!872065 ((_ is Empty!15580) lt!2090493))))

(assert (=> d!1640807 (= (list!19021 lt!2090493) e!3167975)))

(declare-fun b!5078148 () Bool)

(assert (=> b!5078148 (= e!3167975 e!3167976)))

(declare-fun c!872066 () Bool)

(assert (=> b!5078148 (= c!872066 ((_ is Leaf!25875) lt!2090493))))

(assert (= (and d!1640807 c!872065) b!5078147))

(assert (= (and d!1640807 (not c!872065)) b!5078148))

(assert (= (and b!5078148 c!872066) b!5078149))

(assert (= (and b!5078148 (not c!872066)) b!5078150))

(declare-fun m!6128610 () Bool)

(assert (=> b!5078150 m!6128610))

(declare-fun m!6128612 () Bool)

(assert (=> b!5078150 m!6128612))

(assert (=> b!5078150 m!6128610))

(assert (=> b!5078150 m!6128612))

(declare-fun m!6128614 () Bool)

(assert (=> b!5078150 m!6128614))

(declare-fun m!6128616 () Bool)

(assert (=> b!5078149 m!6128616))

(assert (=> d!1640751 d!1640807))

(declare-fun b!5078158 () Bool)

(declare-fun e!3167980 () Bool)

(declare-fun lt!2090500 () List!58574)

(assert (=> b!5078158 (= e!3167980 (or (not (= (list!19021 (right!43170 (left!42840 ys!41))) Nil!58450)) (= lt!2090500 (list!19021 lt!2090455))))))

(declare-fun d!1640809 () Bool)

(assert (=> d!1640809 e!3167980))

(declare-fun res!2162071 () Bool)

(assert (=> d!1640809 (=> (not res!2162071) (not e!3167980))))

(assert (=> d!1640809 (= res!2162071 (= (content!10426 lt!2090500) ((_ map or) (content!10426 (list!19021 lt!2090455)) (content!10426 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun e!3167979 () List!58574)

(assert (=> d!1640809 (= lt!2090500 e!3167979)))

(declare-fun c!872069 () Bool)

(assert (=> d!1640809 (= c!872069 ((_ is Nil!58450) (list!19021 lt!2090455)))))

(assert (=> d!1640809 (= (++!12807 (list!19021 lt!2090455) (list!19021 (right!43170 (left!42840 ys!41)))) lt!2090500)))

(declare-fun b!5078155 () Bool)

(assert (=> b!5078155 (= e!3167979 (list!19021 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5078157 () Bool)

(declare-fun res!2162072 () Bool)

(assert (=> b!5078157 (=> (not res!2162072) (not e!3167980))))

(assert (=> b!5078157 (= res!2162072 (= (size!39108 lt!2090500) (+ (size!39108 (list!19021 lt!2090455)) (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5078156 () Bool)

(assert (=> b!5078156 (= e!3167979 (Cons!58450 (h!64898 (list!19021 lt!2090455)) (++!12807 (t!371381 (list!19021 lt!2090455)) (list!19021 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1640809 c!872069) b!5078155))

(assert (= (and d!1640809 (not c!872069)) b!5078156))

(assert (= (and d!1640809 res!2162071) b!5078157))

(assert (= (and b!5078157 res!2162072) b!5078158))

(declare-fun m!6128618 () Bool)

(assert (=> d!1640809 m!6128618))

(assert (=> d!1640809 m!6128460))

(declare-fun m!6128620 () Bool)

(assert (=> d!1640809 m!6128620))

(assert (=> d!1640809 m!6128436))

(declare-fun m!6128622 () Bool)

(assert (=> d!1640809 m!6128622))

(declare-fun m!6128624 () Bool)

(assert (=> b!5078157 m!6128624))

(assert (=> b!5078157 m!6128460))

(declare-fun m!6128626 () Bool)

(assert (=> b!5078157 m!6128626))

(assert (=> b!5078157 m!6128436))

(declare-fun m!6128628 () Bool)

(assert (=> b!5078157 m!6128628))

(assert (=> b!5078156 m!6128436))

(declare-fun m!6128630 () Bool)

(assert (=> b!5078156 m!6128630))

(assert (=> d!1640751 d!1640809))

(declare-fun b!5078159 () Bool)

(declare-fun e!3167981 () List!58574)

(assert (=> b!5078159 (= e!3167981 Nil!58450)))

(declare-fun b!5078162 () Bool)

(declare-fun e!3167982 () List!58574)

(assert (=> b!5078162 (= e!3167982 (++!12807 (list!19021 (left!42840 lt!2090455)) (list!19021 (right!43170 lt!2090455))))))

(declare-fun b!5078161 () Bool)

(assert (=> b!5078161 (= e!3167982 (list!19023 (xs!18946 lt!2090455)))))

(declare-fun d!1640811 () Bool)

(declare-fun c!872070 () Bool)

(assert (=> d!1640811 (= c!872070 ((_ is Empty!15580) lt!2090455))))

(assert (=> d!1640811 (= (list!19021 lt!2090455) e!3167981)))

(declare-fun b!5078160 () Bool)

(assert (=> b!5078160 (= e!3167981 e!3167982)))

(declare-fun c!872071 () Bool)

(assert (=> b!5078160 (= c!872071 ((_ is Leaf!25875) lt!2090455))))

(assert (= (and d!1640811 c!872070) b!5078159))

(assert (= (and d!1640811 (not c!872070)) b!5078160))

(assert (= (and b!5078160 c!872071) b!5078161))

(assert (= (and b!5078160 (not c!872071)) b!5078162))

(declare-fun m!6128632 () Bool)

(assert (=> b!5078162 m!6128632))

(declare-fun m!6128634 () Bool)

(assert (=> b!5078162 m!6128634))

(assert (=> b!5078162 m!6128632))

(assert (=> b!5078162 m!6128634))

(declare-fun m!6128638 () Bool)

(assert (=> b!5078162 m!6128638))

(declare-fun m!6128640 () Bool)

(assert (=> b!5078161 m!6128640))

(assert (=> d!1640751 d!1640811))

(declare-fun b!5078165 () Bool)

(declare-fun e!3167984 () List!58574)

(assert (=> b!5078165 (= e!3167984 Nil!58450)))

(declare-fun b!5078168 () Bool)

(declare-fun e!3167985 () List!58574)

(assert (=> b!5078168 (= e!3167985 (++!12807 (list!19021 (left!42840 (right!43170 (left!42840 ys!41)))) (list!19021 (right!43170 (right!43170 (left!42840 ys!41))))))))

(declare-fun b!5078167 () Bool)

(assert (=> b!5078167 (= e!3167985 (list!19023 (xs!18946 (right!43170 (left!42840 ys!41)))))))

(declare-fun d!1640813 () Bool)

(declare-fun c!872073 () Bool)

(assert (=> d!1640813 (= c!872073 ((_ is Empty!15580) (right!43170 (left!42840 ys!41))))))

(assert (=> d!1640813 (= (list!19021 (right!43170 (left!42840 ys!41))) e!3167984)))

(declare-fun b!5078166 () Bool)

(assert (=> b!5078166 (= e!3167984 e!3167985)))

(declare-fun c!872074 () Bool)

(assert (=> b!5078166 (= c!872074 ((_ is Leaf!25875) (right!43170 (left!42840 ys!41))))))

(assert (= (and d!1640813 c!872073) b!5078165))

(assert (= (and d!1640813 (not c!872073)) b!5078166))

(assert (= (and b!5078166 c!872074) b!5078167))

(assert (= (and b!5078166 (not c!872074)) b!5078168))

(declare-fun m!6128648 () Bool)

(assert (=> b!5078168 m!6128648))

(declare-fun m!6128650 () Bool)

(assert (=> b!5078168 m!6128650))

(assert (=> b!5078168 m!6128648))

(assert (=> b!5078168 m!6128650))

(declare-fun m!6128652 () Bool)

(assert (=> b!5078168 m!6128652))

(declare-fun m!6128654 () Bool)

(assert (=> b!5078167 m!6128654))

(assert (=> d!1640751 d!1640813))

(declare-fun b!5078173 () Bool)

(declare-fun e!3167992 () Bool)

(declare-fun e!3167989 () Bool)

(assert (=> b!5078173 (= e!3167992 e!3167989)))

(declare-fun res!2162076 () Bool)

(assert (=> b!5078173 (=> (not res!2162076) (not e!3167989))))

(assert (=> b!5078173 (= res!2162076 (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078174 () Bool)

(declare-fun e!3167994 () Bool)

(declare-fun e!3167990 () Bool)

(assert (=> b!5078174 (= e!3167994 e!3167990)))

(declare-fun res!2162080 () Bool)

(assert (=> b!5078174 (=> (not res!2162080) (not e!3167990))))

(assert (=> b!5078174 (= res!2162080 (appendAssoc!310 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun d!1640819 () Bool)

(declare-fun e!3167988 () Bool)

(assert (=> d!1640819 e!3167988))

(declare-fun res!2162079 () Bool)

(assert (=> d!1640819 (=> (not res!2162079) (not e!3167988))))

(declare-fun e!3167991 () Bool)

(assert (=> d!1640819 (= res!2162079 e!3167991)))

(declare-fun res!2162078 () Bool)

(assert (=> d!1640819 (=> res!2162078 e!3167991)))

(assert (=> d!1640819 (= res!2162078 (not ((_ is Node!15580) xs!286)))))

(assert (=> d!1640819 (= (appendAssocInst!918 xs!286 (left!42840 (left!42840 ys!41))) true)))

(declare-fun b!5078175 () Bool)

(declare-fun e!3167996 () Bool)

(declare-fun e!3167993 () Bool)

(assert (=> b!5078175 (= e!3167996 e!3167993)))

(declare-fun res!2162073 () Bool)

(assert (=> b!5078175 (=> (not res!2162073) (not e!3167993))))

(assert (=> b!5078175 (= res!2162073 (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078176 () Bool)

(assert (=> b!5078176 (= e!3167990 (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078177 () Bool)

(declare-fun e!3167995 () Bool)

(assert (=> b!5078177 (= e!3167991 e!3167995)))

(declare-fun res!2162074 () Bool)

(assert (=> b!5078177 (=> (not res!2162074) (not e!3167995))))

(assert (=> b!5078177 (= res!2162074 (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286)) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5078178 () Bool)

(assert (=> b!5078178 (= e!3167989 (appendAssoc!310 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078179 () Bool)

(assert (=> b!5078179 (= e!3167995 e!3167994)))

(declare-fun res!2162081 () Bool)

(assert (=> b!5078179 (=> res!2162081 e!3167994)))

(assert (=> b!5078179 (= res!2162081 (not ((_ is Node!15580) (right!43170 xs!286))))))

(declare-fun b!5078180 () Bool)

(assert (=> b!5078180 (= e!3167993 e!3167992)))

(declare-fun res!2162077 () Bool)

(assert (=> b!5078180 (=> res!2162077 e!3167992)))

(assert (=> b!5078180 (= res!2162077 (not ((_ is Node!15580) (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078181 () Bool)

(assert (=> b!5078181 (= e!3167988 e!3167996)))

(declare-fun res!2162075 () Bool)

(assert (=> b!5078181 (=> res!2162075 e!3167996)))

(assert (=> b!5078181 (= res!2162075 (not ((_ is Node!15580) (left!42840 (left!42840 ys!41)))))))

(assert (= (and d!1640819 (not res!2162078)) b!5078177))

(assert (= (and b!5078177 res!2162074) b!5078179))

(assert (= (and b!5078179 (not res!2162081)) b!5078174))

(assert (= (and b!5078174 res!2162080) b!5078176))

(assert (= (and d!1640819 res!2162079) b!5078181))

(assert (= (and b!5078181 (not res!2162075)) b!5078175))

(assert (= (and b!5078175 res!2162073) b!5078180))

(assert (= (and b!5078180 (not res!2162077)) b!5078173))

(assert (= (and b!5078173 res!2162076) b!5078178))

(assert (=> b!5078174 m!6128424))

(assert (=> b!5078174 m!6128426))

(assert (=> b!5078174 m!6128228))

(assert (=> b!5078174 m!6128424))

(assert (=> b!5078174 m!6128426))

(assert (=> b!5078174 m!6128228))

(declare-fun m!6128662 () Bool)

(assert (=> b!5078174 m!6128662))

(assert (=> b!5078176 m!6128332))

(assert (=> b!5078176 m!6128426))

(assert (=> b!5078176 m!6128424))

(assert (=> b!5078176 m!6128228))

(assert (=> b!5078176 m!6128332))

(assert (=> b!5078176 m!6128424))

(declare-fun m!6128664 () Bool)

(assert (=> b!5078176 m!6128664))

(declare-fun m!6128666 () Bool)

(assert (=> b!5078176 m!6128666))

(assert (=> b!5078176 m!6128426))

(assert (=> b!5078176 m!6128228))

(assert (=> b!5078176 m!6128664))

(assert (=> b!5078175 m!6128088))

(declare-fun m!6128668 () Bool)

(assert (=> b!5078175 m!6128668))

(declare-fun m!6128670 () Bool)

(assert (=> b!5078175 m!6128670))

(assert (=> b!5078175 m!6128088))

(assert (=> b!5078175 m!6128668))

(assert (=> b!5078175 m!6128670))

(declare-fun m!6128672 () Bool)

(assert (=> b!5078175 m!6128672))

(assert (=> b!5078173 m!6128088))

(declare-fun m!6128674 () Bool)

(assert (=> b!5078173 m!6128674))

(declare-fun m!6128676 () Bool)

(assert (=> b!5078173 m!6128676))

(assert (=> b!5078173 m!6128088))

(assert (=> b!5078173 m!6128674))

(assert (=> b!5078173 m!6128676))

(declare-fun m!6128678 () Bool)

(assert (=> b!5078173 m!6128678))

(assert (=> b!5078177 m!6128332))

(assert (=> b!5078177 m!6128334))

(assert (=> b!5078177 m!6128228))

(assert (=> b!5078177 m!6128332))

(assert (=> b!5078177 m!6128334))

(assert (=> b!5078177 m!6128228))

(declare-fun m!6128680 () Bool)

(assert (=> b!5078177 m!6128680))

(declare-fun m!6128682 () Bool)

(assert (=> b!5078178 m!6128682))

(assert (=> b!5078178 m!6128676))

(assert (=> b!5078178 m!6128670))

(declare-fun m!6128684 () Bool)

(assert (=> b!5078178 m!6128684))

(assert (=> b!5078178 m!6128674))

(assert (=> b!5078178 m!6128676))

(assert (=> b!5078178 m!6128670))

(assert (=> b!5078178 m!6128088))

(assert (=> b!5078178 m!6128674))

(assert (=> b!5078178 m!6128682))

(assert (=> b!5078178 m!6128088))

(assert (=> d!1640679 d!1640819))

(assert (=> d!1640679 d!1640705))

(declare-fun d!1640829 () Bool)

(declare-fun res!2162097 () Bool)

(declare-fun e!3168004 () Bool)

(assert (=> d!1640829 (=> (not res!2162097) (not e!3168004))))

(assert (=> d!1640829 (= res!2162097 (<= (size!39108 (list!19023 (xs!18946 (right!43170 xs!286)))) 512))))

(assert (=> d!1640829 (= (inv!77648 (right!43170 xs!286)) e!3168004)))

(declare-fun b!5078199 () Bool)

(declare-fun res!2162098 () Bool)

(assert (=> b!5078199 (=> (not res!2162098) (not e!3168004))))

(assert (=> b!5078199 (= res!2162098 (= (csize!31391 (right!43170 xs!286)) (size!39108 (list!19023 (xs!18946 (right!43170 xs!286))))))))

(declare-fun b!5078200 () Bool)

(assert (=> b!5078200 (= e!3168004 (and (> (csize!31391 (right!43170 xs!286)) 0) (<= (csize!31391 (right!43170 xs!286)) 512)))))

(assert (= (and d!1640829 res!2162097) b!5078199))

(assert (= (and b!5078199 res!2162098) b!5078200))

(declare-fun m!6128690 () Bool)

(assert (=> d!1640829 m!6128690))

(assert (=> d!1640829 m!6128690))

(declare-fun m!6128692 () Bool)

(assert (=> d!1640829 m!6128692))

(assert (=> b!5078199 m!6128690))

(assert (=> b!5078199 m!6128690))

(assert (=> b!5078199 m!6128692))

(assert (=> b!5077891 d!1640829))

(declare-fun b!5078217 () Bool)

(declare-fun e!3168013 () Bool)

(declare-fun call!353825 () List!58574)

(declare-fun call!353823 () List!58574)

(assert (=> b!5078217 (= e!3168013 (= call!353825 call!353823))))

(declare-fun b!5078218 () Bool)

(assert (=> b!5078218 (= e!3168013 (= call!353825 call!353823))))

(declare-fun lt!2090510 () Bool)

(assert (=> b!5078218 (= lt!2090510 (appendAssoc!310 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun bm!353817 () Bool)

(declare-fun call!353824 () List!58574)

(assert (=> bm!353817 (= call!353824 (++!12807 (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun bm!353818 () Bool)

(declare-fun call!353822 () List!58574)

(assert (=> bm!353818 (= call!353825 (++!12807 call!353822 (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun bm!353819 () Bool)

(assert (=> bm!353819 (= call!353822 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun d!1640833 () Bool)

(assert (=> d!1640833 e!3168013))

(declare-fun c!872082 () Bool)

(assert (=> d!1640833 (= c!872082 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1640833 (= (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))) true)))

(declare-fun bm!353820 () Bool)

(assert (=> bm!353820 (= call!353823 (++!12807 (list!19021 xs!286) call!353824))))

(assert (= (and d!1640833 c!872082) b!5078217))

(assert (= (and d!1640833 (not c!872082)) b!5078218))

(assert (= (or b!5078217 b!5078218) bm!353819))

(assert (= (or b!5078217 b!5078218) bm!353817))

(assert (= (or b!5078217 b!5078218) bm!353820))

(assert (= (or b!5078217 b!5078218) bm!353818))

(assert (=> bm!353820 m!6128088))

(declare-fun m!6128732 () Bool)

(assert (=> bm!353820 m!6128732))

(assert (=> bm!353818 m!6128436))

(declare-fun m!6128734 () Bool)

(assert (=> bm!353818 m!6128734))

(assert (=> bm!353817 m!6128228))

(assert (=> bm!353817 m!6128436))

(assert (=> bm!353817 m!6128526))

(assert (=> b!5078218 m!6128228))

(assert (=> b!5078218 m!6128436))

(declare-fun m!6128736 () Bool)

(assert (=> b!5078218 m!6128736))

(assert (=> bm!353819 m!6128088))

(assert (=> bm!353819 m!6128228))

(assert (=> bm!353819 m!6128230))

(assert (=> b!5078039 d!1640833))

(assert (=> b!5078039 d!1640727))

(declare-fun b!5078219 () Bool)

(declare-fun e!3168014 () List!58574)

(assert (=> b!5078219 (= e!3168014 Nil!58450)))

(declare-fun b!5078222 () Bool)

(declare-fun e!3168015 () List!58574)

(assert (=> b!5078222 (= e!3168015 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078221 () Bool)

(assert (=> b!5078221 (= e!3168015 (list!19023 (xs!18946 (left!42840 (left!42840 ys!41)))))))

(declare-fun d!1640863 () Bool)

(declare-fun c!872083 () Bool)

(assert (=> d!1640863 (= c!872083 ((_ is Empty!15580) (left!42840 (left!42840 ys!41))))))

(assert (=> d!1640863 (= (list!19021 (left!42840 (left!42840 ys!41))) e!3168014)))

(declare-fun b!5078220 () Bool)

(assert (=> b!5078220 (= e!3168014 e!3168015)))

(declare-fun c!872084 () Bool)

(assert (=> b!5078220 (= c!872084 ((_ is Leaf!25875) (left!42840 (left!42840 ys!41))))))

(assert (= (and d!1640863 c!872083) b!5078219))

(assert (= (and d!1640863 (not c!872083)) b!5078220))

(assert (= (and b!5078220 c!872084) b!5078221))

(assert (= (and b!5078220 (not c!872084)) b!5078222))

(assert (=> b!5078222 m!6128668))

(assert (=> b!5078222 m!6128670))

(assert (=> b!5078222 m!6128668))

(assert (=> b!5078222 m!6128670))

(declare-fun m!6128738 () Bool)

(assert (=> b!5078222 m!6128738))

(declare-fun m!6128740 () Bool)

(assert (=> b!5078221 m!6128740))

(assert (=> b!5078039 d!1640863))

(assert (=> b!5078039 d!1640813))

(declare-fun d!1640865 () Bool)

(assert (=> d!1640865 (= (inv!77644 (xs!18946 (left!42840 xs!286))) (<= (size!39108 (innerList!15668 (xs!18946 (left!42840 xs!286)))) 2147483647))))

(declare-fun bs!1190528 () Bool)

(assert (= bs!1190528 d!1640865))

(declare-fun m!6128742 () Bool)

(assert (=> bs!1190528 m!6128742))

(assert (=> b!5078085 d!1640865))

(declare-fun d!1640867 () Bool)

(declare-fun res!2162107 () Bool)

(declare-fun e!3168016 () Bool)

(assert (=> d!1640867 (=> (not res!2162107) (not e!3168016))))

(assert (=> d!1640867 (= res!2162107 (<= (size!39108 (list!19023 (xs!18946 (left!42840 ys!41)))) 512))))

(assert (=> d!1640867 (= (inv!77648 (left!42840 ys!41)) e!3168016)))

(declare-fun b!5078223 () Bool)

(declare-fun res!2162108 () Bool)

(assert (=> b!5078223 (=> (not res!2162108) (not e!3168016))))

(assert (=> b!5078223 (= res!2162108 (= (csize!31391 (left!42840 ys!41)) (size!39108 (list!19023 (xs!18946 (left!42840 ys!41))))))))

(declare-fun b!5078224 () Bool)

(assert (=> b!5078224 (= e!3168016 (and (> (csize!31391 (left!42840 ys!41)) 0) (<= (csize!31391 (left!42840 ys!41)) 512)))))

(assert (= (and d!1640867 res!2162107) b!5078223))

(assert (= (and b!5078223 res!2162108) b!5078224))

(assert (=> d!1640867 m!6128528))

(assert (=> d!1640867 m!6128528))

(declare-fun m!6128744 () Bool)

(assert (=> d!1640867 m!6128744))

(assert (=> b!5078223 m!6128528))

(assert (=> b!5078223 m!6128528))

(assert (=> b!5078223 m!6128744))

(assert (=> b!5077971 d!1640867))

(declare-fun d!1640869 () Bool)

(declare-fun res!2162109 () Bool)

(declare-fun e!3168017 () Bool)

(assert (=> d!1640869 (=> (not res!2162109) (not e!3168017))))

(assert (=> d!1640869 (= res!2162109 (= (csize!31390 (right!43170 xs!286)) (+ (size!39109 (left!42840 (right!43170 xs!286))) (size!39109 (right!43170 (right!43170 xs!286))))))))

(assert (=> d!1640869 (= (inv!77647 (right!43170 xs!286)) e!3168017)))

(declare-fun b!5078225 () Bool)

(declare-fun res!2162110 () Bool)

(assert (=> b!5078225 (=> (not res!2162110) (not e!3168017))))

(assert (=> b!5078225 (= res!2162110 (and (not (= (left!42840 (right!43170 xs!286)) Empty!15580)) (not (= (right!43170 (right!43170 xs!286)) Empty!15580))))))

(declare-fun b!5078226 () Bool)

(declare-fun res!2162111 () Bool)

(assert (=> b!5078226 (=> (not res!2162111) (not e!3168017))))

(assert (=> b!5078226 (= res!2162111 (= (cheight!15791 (right!43170 xs!286)) (+ (max!0 (height!2157 (left!42840 (right!43170 xs!286))) (height!2157 (right!43170 (right!43170 xs!286)))) 1)))))

(declare-fun b!5078227 () Bool)

(assert (=> b!5078227 (= e!3168017 (<= 0 (cheight!15791 (right!43170 xs!286))))))

(assert (= (and d!1640869 res!2162109) b!5078225))

(assert (= (and b!5078225 res!2162110) b!5078226))

(assert (= (and b!5078226 res!2162111) b!5078227))

(declare-fun m!6128746 () Bool)

(assert (=> d!1640869 m!6128746))

(declare-fun m!6128748 () Bool)

(assert (=> d!1640869 m!6128748))

(declare-fun m!6128750 () Bool)

(assert (=> b!5078226 m!6128750))

(declare-fun m!6128752 () Bool)

(assert (=> b!5078226 m!6128752))

(assert (=> b!5078226 m!6128750))

(assert (=> b!5078226 m!6128752))

(declare-fun m!6128754 () Bool)

(assert (=> b!5078226 m!6128754))

(assert (=> b!5077889 d!1640869))

(declare-fun d!1640871 () Bool)

(declare-fun lt!2090515 () Bool)

(declare-fun isEmpty!31665 (List!58574) Bool)

(assert (=> d!1640871 (= lt!2090515 (isEmpty!31665 (list!19021 (right!43170 ys!41))))))

(assert (=> d!1640871 (= lt!2090515 (= (size!39109 (right!43170 ys!41)) 0))))

(assert (=> d!1640871 (= (isEmpty!31663 (right!43170 ys!41)) lt!2090515)))

(declare-fun bs!1190529 () Bool)

(assert (= bs!1190529 d!1640871))

(assert (=> bs!1190529 m!6128342))

(assert (=> bs!1190529 m!6128342))

(declare-fun m!6128756 () Bool)

(assert (=> bs!1190529 m!6128756))

(assert (=> bs!1190529 m!6128450))

(assert (=> b!5077687 d!1640871))

(declare-fun b!5078234 () Bool)

(declare-fun e!3168021 () Conc!15580)

(declare-fun call!353836 () Conc!15580)

(assert (=> b!5078234 (= e!3168021 call!353836)))

(declare-fun bm!353833 () Bool)

(declare-fun call!353843 () Conc!15580)

(assert (=> bm!353833 (= call!353836 call!353843)))

(declare-fun c!872088 () Bool)

(declare-fun c!872087 () Bool)

(declare-fun bm!353834 () Bool)

(declare-fun call!353842 () Conc!15580)

(declare-fun c!872092 () Bool)

(assert (=> bm!353834 (= call!353842 (++!12806 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))

(declare-fun bm!353835 () Bool)

(declare-fun call!353840 () Conc!15580)

(declare-fun call!353837 () Conc!15580)

(assert (=> bm!353835 (= call!353840 call!353837)))

(declare-fun b!5078235 () Bool)

(declare-fun call!353839 () Int)

(declare-fun call!353834 () Int)

(assert (=> b!5078235 (= c!872087 (>= call!353839 call!353834))))

(declare-fun e!3168030 () Conc!15580)

(declare-fun e!3168022 () Conc!15580)

(assert (=> b!5078235 (= e!3168030 e!3168022)))

(declare-fun d!1640873 () Bool)

(declare-fun e!3168025 () Bool)

(assert (=> d!1640873 e!3168025))

(declare-fun res!2162113 () Bool)

(assert (=> d!1640873 (=> (not res!2162113) (not e!3168025))))

(assert (=> d!1640873 (= res!2162113 (appendAssocInst!918 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(declare-fun lt!2090519 () Conc!15580)

(declare-fun e!3168023 () Conc!15580)

(assert (=> d!1640873 (= lt!2090519 e!3168023)))

(declare-fun c!872094 () Bool)

(assert (=> d!1640873 (= c!872094 (= (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) Empty!15580))))

(declare-fun e!3168028 () Bool)

(assert (=> d!1640873 e!3168028))

(declare-fun res!2162114 () Bool)

(assert (=> d!1640873 (=> (not res!2162114) (not e!3168028))))

(assert (=> d!1640873 (= res!2162114 (isBalanced!4442 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))

(assert (=> d!1640873 (= (++!12806 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) lt!2090519)))

(declare-fun bm!353836 () Bool)

(declare-fun call!353851 () Conc!15580)

(assert (=> bm!353836 (= call!353851 call!353842)))

(declare-fun b!5078236 () Bool)

(assert (=> b!5078236 (= e!3168025 (= (list!19021 lt!2090519) (++!12807 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun bm!353837 () Bool)

(declare-fun lt!2090516 () Conc!15580)

(assert (=> bm!353837 (= call!353839 (height!2157 (ite c!872092 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) lt!2090516)))))

(declare-fun bm!353838 () Bool)

(declare-fun call!353845 () Conc!15580)

(declare-fun call!353852 () Conc!15580)

(assert (=> bm!353838 (= call!353845 call!353852)))

(declare-fun bm!353839 () Bool)

(assert (=> bm!353839 (= call!353834 (height!2157 (ite c!872092 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun b!5078237 () Bool)

(declare-fun e!3168020 () Conc!15580)

(assert (=> b!5078237 (= e!3168022 e!3168020)))

(declare-fun lt!2090517 () Conc!15580)

(declare-fun call!353841 () Conc!15580)

(assert (=> b!5078237 (= lt!2090517 call!353841)))

(declare-fun c!872090 () Bool)

(declare-fun call!353838 () Int)

(declare-fun call!353853 () Int)

(assert (=> b!5078237 (= c!872090 (= call!353838 (- call!353853 3)))))

(declare-fun c!872089 () Bool)

(declare-fun call!353835 () Conc!15580)

(declare-fun bm!353840 () Bool)

(declare-fun c!872091 () Bool)

(assert (=> bm!353840 (= call!353835 (<>!400 (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))

(declare-fun b!5078238 () Bool)

(declare-fun res!2162112 () Bool)

(assert (=> b!5078238 (=> (not res!2162112) (not e!3168025))))

(assert (=> b!5078238 (= res!2162112 (<= (height!2157 lt!2090519) (+ (max!0 (height!2157 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (height!2157 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) 1)))))

(declare-fun b!5078239 () Bool)

(declare-fun res!2162115 () Bool)

(assert (=> b!5078239 (=> (not res!2162115) (not e!3168025))))

(assert (=> b!5078239 (= res!2162115 (isBalanced!4442 lt!2090519))))

(declare-fun call!353844 () Conc!15580)

(declare-fun call!353849 () Conc!15580)

(declare-fun bm!353841 () Bool)

(assert (=> bm!353841 (= call!353837 (<>!400 (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516))) (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844))))))

(declare-fun b!5078240 () Bool)

(declare-fun e!3168029 () Conc!15580)

(assert (=> b!5078240 (= e!3168029 e!3168021)))

(assert (=> b!5078240 (= lt!2090516 call!353851)))

(assert (=> b!5078240 (= c!872091 (= call!353839 (- call!353834 3)))))

(declare-fun bm!353842 () Bool)

(assert (=> bm!353842 (= call!353844 call!353852)))

(declare-fun b!5078241 () Bool)

(assert (=> b!5078241 (= e!3168021 call!353836)))

(declare-fun bm!353843 () Bool)

(assert (=> bm!353843 (= call!353843 call!353837)))

(declare-fun b!5078242 () Bool)

(assert (=> b!5078242 (= e!3168023 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078243 () Bool)

(declare-fun e!3168024 () Conc!15580)

(assert (=> b!5078243 (= e!3168024 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))

(declare-fun bm!353844 () Bool)

(assert (=> bm!353844 (= call!353841 call!353842)))

(declare-fun b!5078244 () Bool)

(declare-fun lt!2090518 () Int)

(assert (=> b!5078244 (= c!872089 (and (<= (- 1) lt!2090518) (<= lt!2090518 1)))))

(assert (=> b!5078244 (= lt!2090518 (- (height!2157 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (height!2157 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(declare-fun e!3168026 () Conc!15580)

(assert (=> b!5078244 (= e!3168024 e!3168026)))

(declare-fun bm!353845 () Bool)

(assert (=> bm!353845 (= call!353838 (height!2157 (ite c!872092 lt!2090517 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5078245 () Bool)

(assert (=> b!5078245 (= e!3168020 call!353840)))

(declare-fun b!5078246 () Bool)

(assert (=> b!5078246 (= e!3168023 e!3168024)))

(declare-fun c!872093 () Bool)

(assert (=> b!5078246 (= c!872093 (= (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) Empty!15580))))

(declare-fun b!5078247 () Bool)

(assert (=> b!5078247 (= e!3168028 (isBalanced!4442 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(declare-fun bm!353846 () Bool)

(assert (=> bm!353846 (= call!353853 (height!2157 (ite c!872092 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5078248 () Bool)

(assert (=> b!5078248 (= c!872088 (>= call!353838 call!353853))))

(assert (=> b!5078248 (= e!3168030 e!3168029)))

(declare-fun b!5078249 () Bool)

(assert (=> b!5078249 (= e!3168026 call!353835)))

(declare-fun b!5078250 () Bool)

(assert (=> b!5078250 (= e!3168020 call!353840)))

(declare-fun bm!353847 () Bool)

(assert (=> bm!353847 (= call!353849 call!353845)))

(declare-fun b!5078251 () Bool)

(declare-fun res!2162116 () Bool)

(assert (=> b!5078251 (=> (not res!2162116) (not e!3168025))))

(assert (=> b!5078251 (= res!2162116 (>= (height!2157 lt!2090519) (max!0 (height!2157 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (height!2157 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5078252 () Bool)

(assert (=> b!5078252 (= e!3168026 e!3168030)))

(assert (=> b!5078252 (= c!872092 (< lt!2090518 (- 1)))))

(declare-fun bm!353848 () Bool)

(assert (=> bm!353848 (= call!353852 call!353835)))

(declare-fun b!5078253 () Bool)

(assert (=> b!5078253 (= e!3168029 call!353843)))

(declare-fun b!5078254 () Bool)

(assert (=> b!5078254 (= e!3168022 call!353845)))

(assert (= (and d!1640873 res!2162114) b!5078247))

(assert (= (and d!1640873 c!872094) b!5078242))

(assert (= (and d!1640873 (not c!872094)) b!5078246))

(assert (= (and b!5078246 c!872093) b!5078243))

(assert (= (and b!5078246 (not c!872093)) b!5078244))

(assert (= (and b!5078244 c!872089) b!5078249))

(assert (= (and b!5078244 (not c!872089)) b!5078252))

(assert (= (and b!5078252 c!872092) b!5078235))

(assert (= (and b!5078252 (not c!872092)) b!5078248))

(assert (= (and b!5078235 c!872087) b!5078254))

(assert (= (and b!5078235 (not c!872087)) b!5078237))

(assert (= (and b!5078237 c!872090) b!5078250))

(assert (= (and b!5078237 (not c!872090)) b!5078245))

(assert (= (or b!5078250 b!5078245) bm!353847))

(assert (= (or b!5078250 b!5078245) bm!353835))

(assert (= (or b!5078254 b!5078237) bm!353844))

(assert (= (or b!5078254 bm!353847) bm!353838))

(assert (= (and b!5078248 c!872088) b!5078253))

(assert (= (and b!5078248 (not c!872088)) b!5078240))

(assert (= (and b!5078240 c!872091) b!5078241))

(assert (= (and b!5078240 (not c!872091)) b!5078234))

(assert (= (or b!5078241 b!5078234) bm!353842))

(assert (= (or b!5078241 b!5078234) bm!353833))

(assert (= (or b!5078253 b!5078240) bm!353836))

(assert (= (or b!5078253 bm!353833) bm!353843))

(assert (= (or bm!353838 bm!353842) bm!353848))

(assert (= (or bm!353844 bm!353836) bm!353834))

(assert (= (or b!5078235 b!5078240) bm!353839))

(assert (= (or b!5078235 b!5078240) bm!353837))

(assert (= (or b!5078237 b!5078248) bm!353845))

(assert (= (or bm!353835 bm!353843) bm!353841))

(assert (= (or b!5078237 b!5078248) bm!353846))

(assert (= (or b!5078249 bm!353848) bm!353840))

(assert (= (and d!1640873 res!2162113) b!5078239))

(assert (= (and b!5078239 res!2162115) b!5078238))

(assert (= (and b!5078238 res!2162112) b!5078251))

(assert (= (and b!5078251 res!2162116) b!5078236))

(declare-fun m!6128780 () Bool)

(assert (=> bm!353840 m!6128780))

(declare-fun m!6128782 () Bool)

(assert (=> bm!353846 m!6128782))

(declare-fun m!6128784 () Bool)

(assert (=> bm!353839 m!6128784))

(declare-fun m!6128786 () Bool)

(assert (=> b!5078251 m!6128786))

(declare-fun m!6128788 () Bool)

(assert (=> b!5078251 m!6128788))

(declare-fun m!6128790 () Bool)

(assert (=> b!5078251 m!6128790))

(assert (=> b!5078251 m!6128788))

(assert (=> b!5078251 m!6128790))

(declare-fun m!6128792 () Bool)

(assert (=> b!5078251 m!6128792))

(declare-fun m!6128794 () Bool)

(assert (=> bm!353845 m!6128794))

(assert (=> b!5078244 m!6128790))

(assert (=> b!5078244 m!6128788))

(declare-fun m!6128800 () Bool)

(assert (=> d!1640873 m!6128800))

(declare-fun m!6128802 () Bool)

(assert (=> d!1640873 m!6128802))

(declare-fun m!6128806 () Bool)

(assert (=> bm!353837 m!6128806))

(assert (=> b!5078238 m!6128786))

(assert (=> b!5078238 m!6128788))

(assert (=> b!5078238 m!6128790))

(assert (=> b!5078238 m!6128788))

(assert (=> b!5078238 m!6128790))

(assert (=> b!5078238 m!6128792))

(declare-fun m!6128810 () Bool)

(assert (=> bm!353841 m!6128810))

(declare-fun m!6128814 () Bool)

(assert (=> bm!353834 m!6128814))

(declare-fun m!6128818 () Bool)

(assert (=> b!5078239 m!6128818))

(declare-fun m!6128822 () Bool)

(assert (=> b!5078236 m!6128822))

(declare-fun m!6128824 () Bool)

(assert (=> b!5078236 m!6128824))

(declare-fun m!6128826 () Bool)

(assert (=> b!5078236 m!6128826))

(assert (=> b!5078236 m!6128824))

(assert (=> b!5078236 m!6128826))

(declare-fun m!6128830 () Bool)

(assert (=> b!5078236 m!6128830))

(declare-fun m!6128832 () Bool)

(assert (=> b!5078247 m!6128832))

(assert (=> bm!353746 d!1640873))

(declare-fun b!5078276 () Bool)

(declare-fun res!2162125 () Bool)

(declare-fun e!3168042 () Bool)

(assert (=> b!5078276 (=> (not res!2162125) (not e!3168042))))

(assert (=> b!5078276 (= res!2162125 (isBalanced!4442 (left!42840 (right!43170 xs!286))))))

(declare-fun b!5078277 () Bool)

(declare-fun res!2162121 () Bool)

(assert (=> b!5078277 (=> (not res!2162121) (not e!3168042))))

(assert (=> b!5078277 (= res!2162121 (<= (- (height!2157 (left!42840 (right!43170 xs!286))) (height!2157 (right!43170 (right!43170 xs!286)))) 1))))

(declare-fun d!1640901 () Bool)

(declare-fun res!2162124 () Bool)

(declare-fun e!3168041 () Bool)

(assert (=> d!1640901 (=> res!2162124 e!3168041)))

(assert (=> d!1640901 (= res!2162124 (not ((_ is Node!15580) (right!43170 xs!286))))))

(assert (=> d!1640901 (= (isBalanced!4442 (right!43170 xs!286)) e!3168041)))

(declare-fun b!5078278 () Bool)

(declare-fun res!2162122 () Bool)

(assert (=> b!5078278 (=> (not res!2162122) (not e!3168042))))

(assert (=> b!5078278 (= res!2162122 (isBalanced!4442 (right!43170 (right!43170 xs!286))))))

(declare-fun b!5078279 () Bool)

(assert (=> b!5078279 (= e!3168042 (not (isEmpty!31663 (right!43170 (right!43170 xs!286)))))))

(declare-fun b!5078280 () Bool)

(declare-fun res!2162120 () Bool)

(assert (=> b!5078280 (=> (not res!2162120) (not e!3168042))))

(assert (=> b!5078280 (= res!2162120 (not (isEmpty!31663 (left!42840 (right!43170 xs!286)))))))

(declare-fun b!5078281 () Bool)

(assert (=> b!5078281 (= e!3168041 e!3168042)))

(declare-fun res!2162123 () Bool)

(assert (=> b!5078281 (=> (not res!2162123) (not e!3168042))))

(assert (=> b!5078281 (= res!2162123 (<= (- 1) (- (height!2157 (left!42840 (right!43170 xs!286))) (height!2157 (right!43170 (right!43170 xs!286))))))))

(assert (= (and d!1640901 (not res!2162124)) b!5078281))

(assert (= (and b!5078281 res!2162123) b!5078277))

(assert (= (and b!5078277 res!2162121) b!5078276))

(assert (= (and b!5078276 res!2162125) b!5078278))

(assert (= (and b!5078278 res!2162122) b!5078280))

(assert (= (and b!5078280 res!2162120) b!5078279))

(declare-fun m!6128846 () Bool)

(assert (=> b!5078278 m!6128846))

(declare-fun m!6128848 () Bool)

(assert (=> b!5078280 m!6128848))

(declare-fun m!6128850 () Bool)

(assert (=> b!5078279 m!6128850))

(assert (=> b!5078281 m!6128750))

(assert (=> b!5078281 m!6128752))

(declare-fun m!6128852 () Bool)

(assert (=> b!5078276 m!6128852))

(assert (=> b!5078277 m!6128750))

(assert (=> b!5078277 m!6128752))

(assert (=> b!5077862 d!1640901))

(declare-fun b!5078284 () Bool)

(declare-fun res!2162131 () Bool)

(declare-fun e!3168045 () Bool)

(assert (=> b!5078284 (=> (not res!2162131) (not e!3168045))))

(assert (=> b!5078284 (= res!2162131 (isBalanced!4442 (left!42840 (right!43170 lt!2090452))))))

(declare-fun b!5078285 () Bool)

(declare-fun res!2162127 () Bool)

(assert (=> b!5078285 (=> (not res!2162127) (not e!3168045))))

(assert (=> b!5078285 (= res!2162127 (<= (- (height!2157 (left!42840 (right!43170 lt!2090452))) (height!2157 (right!43170 (right!43170 lt!2090452)))) 1))))

(declare-fun d!1640907 () Bool)

(declare-fun res!2162130 () Bool)

(declare-fun e!3168044 () Bool)

(assert (=> d!1640907 (=> res!2162130 e!3168044)))

(assert (=> d!1640907 (= res!2162130 (not ((_ is Node!15580) (right!43170 lt!2090452))))))

(assert (=> d!1640907 (= (isBalanced!4442 (right!43170 lt!2090452)) e!3168044)))

(declare-fun b!5078286 () Bool)

(declare-fun res!2162128 () Bool)

(assert (=> b!5078286 (=> (not res!2162128) (not e!3168045))))

(assert (=> b!5078286 (= res!2162128 (isBalanced!4442 (right!43170 (right!43170 lt!2090452))))))

(declare-fun b!5078287 () Bool)

(assert (=> b!5078287 (= e!3168045 (not (isEmpty!31663 (right!43170 (right!43170 lt!2090452)))))))

(declare-fun b!5078288 () Bool)

(declare-fun res!2162126 () Bool)

(assert (=> b!5078288 (=> (not res!2162126) (not e!3168045))))

(assert (=> b!5078288 (= res!2162126 (not (isEmpty!31663 (left!42840 (right!43170 lt!2090452)))))))

(declare-fun b!5078289 () Bool)

(assert (=> b!5078289 (= e!3168044 e!3168045)))

(declare-fun res!2162129 () Bool)

(assert (=> b!5078289 (=> (not res!2162129) (not e!3168045))))

(assert (=> b!5078289 (= res!2162129 (<= (- 1) (- (height!2157 (left!42840 (right!43170 lt!2090452))) (height!2157 (right!43170 (right!43170 lt!2090452))))))))

(assert (= (and d!1640907 (not res!2162130)) b!5078289))

(assert (= (and b!5078289 res!2162129) b!5078285))

(assert (= (and b!5078285 res!2162127) b!5078284))

(assert (= (and b!5078284 res!2162131) b!5078286))

(assert (= (and b!5078286 res!2162128) b!5078288))

(assert (= (and b!5078288 res!2162126) b!5078287))

(declare-fun m!6128858 () Bool)

(assert (=> b!5078286 m!6128858))

(declare-fun m!6128862 () Bool)

(assert (=> b!5078288 m!6128862))

(declare-fun m!6128864 () Bool)

(assert (=> b!5078287 m!6128864))

(declare-fun m!6128866 () Bool)

(assert (=> b!5078289 m!6128866))

(declare-fun m!6128868 () Bool)

(assert (=> b!5078289 m!6128868))

(declare-fun m!6128870 () Bool)

(assert (=> b!5078284 m!6128870))

(assert (=> b!5078285 m!6128866))

(assert (=> b!5078285 m!6128868))

(assert (=> b!5077856 d!1640907))

(declare-fun b!5078294 () Bool)

(declare-fun e!3168048 () Bool)

(declare-fun call!353865 () List!58574)

(declare-fun call!353863 () List!58574)

(assert (=> b!5078294 (= e!3168048 (= call!353865 call!353863))))

(declare-fun b!5078295 () Bool)

(assert (=> b!5078295 (= e!3168048 (= call!353865 call!353863))))

(declare-fun lt!2090526 () Bool)

(assert (=> b!5078295 (= lt!2090526 (appendAssoc!310 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353857 () Bool)

(declare-fun call!353864 () List!58574)

(assert (=> bm!353857 (= call!353864 (++!12807 (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353858 () Bool)

(declare-fun call!353862 () List!58574)

(assert (=> bm!353858 (= call!353865 (++!12807 call!353862 (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353859 () Bool)

(assert (=> bm!353859 (= call!353862 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 ys!41))))))

(declare-fun d!1640911 () Bool)

(assert (=> d!1640911 e!3168048))

(declare-fun c!872108 () Bool)

(assert (=> d!1640911 (= c!872108 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1640911 (= (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))) true)))

(declare-fun bm!353860 () Bool)

(assert (=> bm!353860 (= call!353863 (++!12807 (list!19021 xs!286) call!353864))))

(assert (= (and d!1640911 c!872108) b!5078294))

(assert (= (and d!1640911 (not c!872108)) b!5078295))

(assert (= (or b!5078294 b!5078295) bm!353859))

(assert (= (or b!5078294 b!5078295) bm!353857))

(assert (= (or b!5078294 b!5078295) bm!353860))

(assert (= (or b!5078294 b!5078295) bm!353858))

(assert (=> bm!353860 m!6128088))

(declare-fun m!6128880 () Bool)

(assert (=> bm!353860 m!6128880))

(assert (=> bm!353858 m!6128342))

(declare-fun m!6128882 () Bool)

(assert (=> bm!353858 m!6128882))

(assert (=> bm!353857 m!6128340))

(assert (=> bm!353857 m!6128342))

(assert (=> bm!353857 m!6128344))

(assert (=> b!5078295 m!6128340))

(assert (=> b!5078295 m!6128342))

(declare-fun m!6128884 () Bool)

(assert (=> b!5078295 m!6128884))

(assert (=> bm!353859 m!6128088))

(assert (=> bm!353859 m!6128340))

(declare-fun m!6128886 () Bool)

(assert (=> bm!353859 m!6128886))

(assert (=> b!5078041 d!1640911))

(assert (=> b!5078041 d!1640727))

(assert (=> b!5078041 d!1640767))

(assert (=> b!5078041 d!1640771))

(assert (=> b!5077689 d!1640713))

(assert (=> b!5077689 d!1640711))

(declare-fun d!1640915 () Bool)

(declare-fun lt!2090527 () Bool)

(assert (=> d!1640915 (= lt!2090527 (isEmpty!31665 (list!19021 (left!42840 xs!286))))))

(assert (=> d!1640915 (= lt!2090527 (= (size!39109 (left!42840 xs!286)) 0))))

(assert (=> d!1640915 (= (isEmpty!31663 (left!42840 xs!286)) lt!2090527)))

(declare-fun bs!1190533 () Bool)

(assert (= bs!1190533 d!1640915))

(assert (=> bs!1190533 m!6128332))

(assert (=> bs!1190533 m!6128332))

(declare-fun m!6128888 () Bool)

(assert (=> bs!1190533 m!6128888))

(declare-fun m!6128890 () Bool)

(assert (=> bs!1190533 m!6128890))

(assert (=> b!5077864 d!1640915))

(assert (=> b!5077685 d!1640713))

(assert (=> b!5077685 d!1640711))

(declare-fun b!5078300 () Bool)

(declare-fun res!2162137 () Bool)

(declare-fun e!3168052 () Bool)

(assert (=> b!5078300 (=> (not res!2162137) (not e!3168052))))

(assert (=> b!5078300 (= res!2162137 (isBalanced!4442 (left!42840 (left!42840 xs!286))))))

(declare-fun b!5078301 () Bool)

(declare-fun res!2162133 () Bool)

(assert (=> b!5078301 (=> (not res!2162133) (not e!3168052))))

(assert (=> b!5078301 (= res!2162133 (<= (- (height!2157 (left!42840 (left!42840 xs!286))) (height!2157 (right!43170 (left!42840 xs!286)))) 1))))

(declare-fun d!1640917 () Bool)

(declare-fun res!2162136 () Bool)

(declare-fun e!3168051 () Bool)

(assert (=> d!1640917 (=> res!2162136 e!3168051)))

(assert (=> d!1640917 (= res!2162136 (not ((_ is Node!15580) (left!42840 xs!286))))))

(assert (=> d!1640917 (= (isBalanced!4442 (left!42840 xs!286)) e!3168051)))

(declare-fun b!5078302 () Bool)

(declare-fun res!2162134 () Bool)

(assert (=> b!5078302 (=> (not res!2162134) (not e!3168052))))

(assert (=> b!5078302 (= res!2162134 (isBalanced!4442 (right!43170 (left!42840 xs!286))))))

(declare-fun b!5078303 () Bool)

(assert (=> b!5078303 (= e!3168052 (not (isEmpty!31663 (right!43170 (left!42840 xs!286)))))))

(declare-fun b!5078304 () Bool)

(declare-fun res!2162132 () Bool)

(assert (=> b!5078304 (=> (not res!2162132) (not e!3168052))))

(assert (=> b!5078304 (= res!2162132 (not (isEmpty!31663 (left!42840 (left!42840 xs!286)))))))

(declare-fun b!5078305 () Bool)

(assert (=> b!5078305 (= e!3168051 e!3168052)))

(declare-fun res!2162135 () Bool)

(assert (=> b!5078305 (=> (not res!2162135) (not e!3168052))))

(assert (=> b!5078305 (= res!2162135 (<= (- 1) (- (height!2157 (left!42840 (left!42840 xs!286))) (height!2157 (right!43170 (left!42840 xs!286))))))))

(assert (= (and d!1640917 (not res!2162136)) b!5078305))

(assert (= (and b!5078305 res!2162135) b!5078301))

(assert (= (and b!5078301 res!2162133) b!5078300))

(assert (= (and b!5078300 res!2162137) b!5078302))

(assert (= (and b!5078302 res!2162134) b!5078304))

(assert (= (and b!5078304 res!2162132) b!5078303))

(declare-fun m!6128900 () Bool)

(assert (=> b!5078302 m!6128900))

(declare-fun m!6128902 () Bool)

(assert (=> b!5078304 m!6128902))

(declare-fun m!6128904 () Bool)

(assert (=> b!5078303 m!6128904))

(declare-fun m!6128906 () Bool)

(assert (=> b!5078305 m!6128906))

(declare-fun m!6128908 () Bool)

(assert (=> b!5078305 m!6128908))

(declare-fun m!6128910 () Bool)

(assert (=> b!5078300 m!6128910))

(assert (=> b!5078301 m!6128906))

(assert (=> b!5078301 m!6128908))

(assert (=> b!5077860 d!1640917))

(declare-fun d!1640923 () Bool)

(declare-fun lt!2090530 () Int)

(assert (=> d!1640923 (>= lt!2090530 0)))

(declare-fun e!3168060 () Int)

(assert (=> d!1640923 (= lt!2090530 e!3168060)))

(declare-fun c!872115 () Bool)

(assert (=> d!1640923 (= c!872115 ((_ is Nil!58450) (innerList!15668 (xs!18946 xs!286))))))

(assert (=> d!1640923 (= (size!39108 (innerList!15668 (xs!18946 xs!286))) lt!2090530)))

(declare-fun b!5078322 () Bool)

(assert (=> b!5078322 (= e!3168060 0)))

(declare-fun b!5078323 () Bool)

(assert (=> b!5078323 (= e!3168060 (+ 1 (size!39108 (t!371381 (innerList!15668 (xs!18946 xs!286))))))))

(assert (= (and d!1640923 c!872115) b!5078322))

(assert (= (and d!1640923 (not c!872115)) b!5078323))

(declare-fun m!6128934 () Bool)

(assert (=> b!5078323 m!6128934))

(assert (=> d!1640757 d!1640923))

(declare-fun b!5078324 () Bool)

(declare-fun res!2162151 () Bool)

(declare-fun e!3168062 () Bool)

(assert (=> b!5078324 (=> (not res!2162151) (not e!3168062))))

(assert (=> b!5078324 (= res!2162151 (isBalanced!4442 (left!42840 (left!42840 lt!2090452))))))

(declare-fun b!5078325 () Bool)

(declare-fun res!2162147 () Bool)

(assert (=> b!5078325 (=> (not res!2162147) (not e!3168062))))

(assert (=> b!5078325 (= res!2162147 (<= (- (height!2157 (left!42840 (left!42840 lt!2090452))) (height!2157 (right!43170 (left!42840 lt!2090452)))) 1))))

(declare-fun d!1640931 () Bool)

(declare-fun res!2162150 () Bool)

(declare-fun e!3168061 () Bool)

(assert (=> d!1640931 (=> res!2162150 e!3168061)))

(assert (=> d!1640931 (= res!2162150 (not ((_ is Node!15580) (left!42840 lt!2090452))))))

(assert (=> d!1640931 (= (isBalanced!4442 (left!42840 lt!2090452)) e!3168061)))

(declare-fun b!5078326 () Bool)

(declare-fun res!2162148 () Bool)

(assert (=> b!5078326 (=> (not res!2162148) (not e!3168062))))

(assert (=> b!5078326 (= res!2162148 (isBalanced!4442 (right!43170 (left!42840 lt!2090452))))))

(declare-fun b!5078327 () Bool)

(assert (=> b!5078327 (= e!3168062 (not (isEmpty!31663 (right!43170 (left!42840 lt!2090452)))))))

(declare-fun b!5078328 () Bool)

(declare-fun res!2162146 () Bool)

(assert (=> b!5078328 (=> (not res!2162146) (not e!3168062))))

(assert (=> b!5078328 (= res!2162146 (not (isEmpty!31663 (left!42840 (left!42840 lt!2090452)))))))

(declare-fun b!5078329 () Bool)

(assert (=> b!5078329 (= e!3168061 e!3168062)))

(declare-fun res!2162149 () Bool)

(assert (=> b!5078329 (=> (not res!2162149) (not e!3168062))))

(assert (=> b!5078329 (= res!2162149 (<= (- 1) (- (height!2157 (left!42840 (left!42840 lt!2090452))) (height!2157 (right!43170 (left!42840 lt!2090452))))))))

(assert (= (and d!1640931 (not res!2162150)) b!5078329))

(assert (= (and b!5078329 res!2162149) b!5078325))

(assert (= (and b!5078325 res!2162147) b!5078324))

(assert (= (and b!5078324 res!2162151) b!5078326))

(assert (= (and b!5078326 res!2162148) b!5078328))

(assert (= (and b!5078328 res!2162146) b!5078327))

(declare-fun m!6128936 () Bool)

(assert (=> b!5078326 m!6128936))

(declare-fun m!6128938 () Bool)

(assert (=> b!5078328 m!6128938))

(declare-fun m!6128940 () Bool)

(assert (=> b!5078327 m!6128940))

(declare-fun m!6128942 () Bool)

(assert (=> b!5078329 m!6128942))

(declare-fun m!6128944 () Bool)

(assert (=> b!5078329 m!6128944))

(declare-fun m!6128946 () Bool)

(assert (=> b!5078324 m!6128946))

(assert (=> b!5078325 m!6128942))

(assert (=> b!5078325 m!6128944))

(assert (=> b!5077854 d!1640931))

(declare-fun b!5078334 () Bool)

(declare-fun e!3168065 () Bool)

(declare-fun call!353869 () List!58574)

(declare-fun call!353867 () List!58574)

(assert (=> b!5078334 (= e!3168065 (= call!353869 call!353867))))

(declare-fun b!5078335 () Bool)

(assert (=> b!5078335 (= e!3168065 (= call!353869 call!353867))))

(declare-fun lt!2090532 () Bool)

(assert (=> b!5078335 (= lt!2090532 (appendAssoc!310 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (right!43170 xs!286)) (list!19021 ys!41)))))

(declare-fun bm!353861 () Bool)

(declare-fun call!353868 () List!58574)

(assert (=> bm!353861 (= call!353868 (++!12807 (list!19021 (right!43170 xs!286)) (list!19021 ys!41)))))

(declare-fun bm!353862 () Bool)

(declare-fun call!353866 () List!58574)

(assert (=> bm!353862 (= call!353869 (++!12807 call!353866 (list!19021 ys!41)))))

(declare-fun bm!353863 () Bool)

(assert (=> bm!353863 (= call!353866 (++!12807 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286))))))

(declare-fun d!1640933 () Bool)

(assert (=> d!1640933 e!3168065))

(declare-fun c!872117 () Bool)

(assert (=> d!1640933 (= c!872117 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1640933 (= (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286)) (list!19021 ys!41)) true)))

(declare-fun bm!353864 () Bool)

(assert (=> bm!353864 (= call!353867 (++!12807 (list!19021 (left!42840 xs!286)) call!353868))))

(assert (= (and d!1640933 c!872117) b!5078334))

(assert (= (and d!1640933 (not c!872117)) b!5078335))

(assert (= (or b!5078334 b!5078335) bm!353863))

(assert (= (or b!5078334 b!5078335) bm!353861))

(assert (= (or b!5078334 b!5078335) bm!353864))

(assert (= (or b!5078334 b!5078335) bm!353862))

(assert (=> bm!353864 m!6128332))

(declare-fun m!6128958 () Bool)

(assert (=> bm!353864 m!6128958))

(assert (=> bm!353862 m!6128090))

(declare-fun m!6128960 () Bool)

(assert (=> bm!353862 m!6128960))

(assert (=> bm!353861 m!6128334))

(assert (=> bm!353861 m!6128090))

(declare-fun m!6128962 () Bool)

(assert (=> bm!353861 m!6128962))

(assert (=> b!5078335 m!6128334))

(assert (=> b!5078335 m!6128090))

(declare-fun m!6128964 () Bool)

(assert (=> b!5078335 m!6128964))

(assert (=> bm!353863 m!6128332))

(assert (=> bm!353863 m!6128334))

(assert (=> bm!353863 m!6128336))

(assert (=> b!5078043 d!1640933))

(declare-fun b!5078340 () Bool)

(declare-fun e!3168068 () List!58574)

(assert (=> b!5078340 (= e!3168068 Nil!58450)))

(declare-fun b!5078343 () Bool)

(declare-fun e!3168069 () List!58574)

(assert (=> b!5078343 (= e!3168069 (++!12807 (list!19021 (left!42840 (left!42840 xs!286))) (list!19021 (right!43170 (left!42840 xs!286)))))))

(declare-fun b!5078342 () Bool)

(assert (=> b!5078342 (= e!3168069 (list!19023 (xs!18946 (left!42840 xs!286))))))

(declare-fun d!1640939 () Bool)

(declare-fun c!872120 () Bool)

(assert (=> d!1640939 (= c!872120 ((_ is Empty!15580) (left!42840 xs!286)))))

(assert (=> d!1640939 (= (list!19021 (left!42840 xs!286)) e!3168068)))

(declare-fun b!5078341 () Bool)

(assert (=> b!5078341 (= e!3168068 e!3168069)))

(declare-fun c!872121 () Bool)

(assert (=> b!5078341 (= c!872121 ((_ is Leaf!25875) (left!42840 xs!286)))))

(assert (= (and d!1640939 c!872120) b!5078340))

(assert (= (and d!1640939 (not c!872120)) b!5078341))

(assert (= (and b!5078341 c!872121) b!5078342))

(assert (= (and b!5078341 (not c!872121)) b!5078343))

(declare-fun m!6128968 () Bool)

(assert (=> b!5078343 m!6128968))

(declare-fun m!6128970 () Bool)

(assert (=> b!5078343 m!6128970))

(assert (=> b!5078343 m!6128968))

(assert (=> b!5078343 m!6128970))

(declare-fun m!6128976 () Bool)

(assert (=> b!5078343 m!6128976))

(declare-fun m!6128978 () Bool)

(assert (=> b!5078342 m!6128978))

(assert (=> b!5078043 d!1640939))

(declare-fun b!5078344 () Bool)

(declare-fun e!3168070 () List!58574)

(assert (=> b!5078344 (= e!3168070 Nil!58450)))

(declare-fun b!5078347 () Bool)

(declare-fun e!3168071 () List!58574)

(assert (=> b!5078347 (= e!3168071 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286)))))))

(declare-fun b!5078346 () Bool)

(assert (=> b!5078346 (= e!3168071 (list!19023 (xs!18946 (right!43170 xs!286))))))

(declare-fun d!1640941 () Bool)

(declare-fun c!872122 () Bool)

(assert (=> d!1640941 (= c!872122 ((_ is Empty!15580) (right!43170 xs!286)))))

(assert (=> d!1640941 (= (list!19021 (right!43170 xs!286)) e!3168070)))

(declare-fun b!5078345 () Bool)

(assert (=> b!5078345 (= e!3168070 e!3168071)))

(declare-fun c!872123 () Bool)

(assert (=> b!5078345 (= c!872123 ((_ is Leaf!25875) (right!43170 xs!286)))))

(assert (= (and d!1640941 c!872122) b!5078344))

(assert (= (and d!1640941 (not c!872122)) b!5078345))

(assert (= (and b!5078345 c!872123) b!5078346))

(assert (= (and b!5078345 (not c!872123)) b!5078347))

(assert (=> b!5078347 m!6128424))

(assert (=> b!5078347 m!6128426))

(assert (=> b!5078347 m!6128424))

(assert (=> b!5078347 m!6128426))

(declare-fun m!6128982 () Bool)

(assert (=> b!5078347 m!6128982))

(assert (=> b!5078346 m!6128690))

(assert (=> b!5078043 d!1640941))

(assert (=> b!5078043 d!1640729))

(declare-fun d!1640945 () Bool)

(declare-fun lt!2090534 () Int)

(assert (=> d!1640945 (>= lt!2090534 0)))

(declare-fun e!3168073 () Int)

(assert (=> d!1640945 (= lt!2090534 e!3168073)))

(declare-fun c!872125 () Bool)

(assert (=> d!1640945 (= c!872125 ((_ is Nil!58450) (innerList!15668 (xs!18946 ys!41))))))

(assert (=> d!1640945 (= (size!39108 (innerList!15668 (xs!18946 ys!41))) lt!2090534)))

(declare-fun b!5078350 () Bool)

(assert (=> b!5078350 (= e!3168073 0)))

(declare-fun b!5078351 () Bool)

(assert (=> b!5078351 (= e!3168073 (+ 1 (size!39108 (t!371381 (innerList!15668 (xs!18946 ys!41))))))))

(assert (= (and d!1640945 c!872125) b!5078350))

(assert (= (and d!1640945 (not c!872125)) b!5078351))

(declare-fun m!6128984 () Bool)

(assert (=> b!5078351 m!6128984))

(assert (=> d!1640739 d!1640945))

(assert (=> b!5077639 d!1640715))

(assert (=> b!5077639 d!1640717))

(declare-fun d!1640947 () Bool)

(assert (=> d!1640947 (= (height!2157 (ite c!871981 lt!2090469 (right!43170 (left!42840 (left!42840 ys!41))))) (ite ((_ is Empty!15580) (ite c!871981 lt!2090469 (right!43170 (left!42840 (left!42840 ys!41))))) 0 (ite ((_ is Leaf!25875) (ite c!871981 lt!2090469 (right!43170 (left!42840 (left!42840 ys!41))))) 1 (cheight!15791 (ite c!871981 lt!2090469 (right!43170 (left!42840 (left!42840 ys!41))))))))))

(assert (=> bm!353757 d!1640947))

(declare-fun b!5078355 () Bool)

(declare-fun lt!2090535 () List!58574)

(declare-fun e!3168075 () Bool)

(assert (=> b!5078355 (= e!3168075 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090535 (t!371381 (list!19021 xs!286)))))))

(declare-fun d!1640949 () Bool)

(assert (=> d!1640949 e!3168075))

(declare-fun res!2162154 () Bool)

(assert (=> d!1640949 (=> (not res!2162154) (not e!3168075))))

(assert (=> d!1640949 (= res!2162154 (= (content!10426 lt!2090535) ((_ map or) (content!10426 (t!371381 (list!19021 xs!286))) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3168074 () List!58574)

(assert (=> d!1640949 (= lt!2090535 e!3168074)))

(declare-fun c!872126 () Bool)

(assert (=> d!1640949 (= c!872126 ((_ is Nil!58450) (t!371381 (list!19021 xs!286))))))

(assert (=> d!1640949 (= (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 ys!41)) lt!2090535)))

(declare-fun b!5078352 () Bool)

(assert (=> b!5078352 (= e!3168074 (list!19021 ys!41))))

(declare-fun b!5078354 () Bool)

(declare-fun res!2162155 () Bool)

(assert (=> b!5078354 (=> (not res!2162155) (not e!3168075))))

(assert (=> b!5078354 (= res!2162155 (= (size!39108 lt!2090535) (+ (size!39108 (t!371381 (list!19021 xs!286))) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5078353 () Bool)

(assert (=> b!5078353 (= e!3168074 (Cons!58450 (h!64898 (t!371381 (list!19021 xs!286))) (++!12807 (t!371381 (t!371381 (list!19021 xs!286))) (list!19021 ys!41))))))

(assert (= (and d!1640949 c!872126) b!5078352))

(assert (= (and d!1640949 (not c!872126)) b!5078353))

(assert (= (and d!1640949 res!2162154) b!5078354))

(assert (= (and b!5078354 res!2162155) b!5078355))

(declare-fun m!6128992 () Bool)

(assert (=> d!1640949 m!6128992))

(declare-fun m!6128994 () Bool)

(assert (=> d!1640949 m!6128994))

(assert (=> d!1640949 m!6128090))

(assert (=> d!1640949 m!6128322))

(declare-fun m!6128998 () Bool)

(assert (=> b!5078354 m!6128998))

(declare-fun m!6129000 () Bool)

(assert (=> b!5078354 m!6129000))

(assert (=> b!5078354 m!6128090))

(assert (=> b!5078354 m!6128328))

(assert (=> b!5078353 m!6128090))

(declare-fun m!6129004 () Bool)

(assert (=> b!5078353 m!6129004))

(assert (=> b!5077946 d!1640949))

(declare-fun d!1640953 () Bool)

(assert (=> d!1640953 (= (inv!77644 (xs!18946 (right!43170 ys!41))) (<= (size!39108 (innerList!15668 (xs!18946 (right!43170 ys!41)))) 2147483647))))

(declare-fun bs!1190534 () Bool)

(assert (= bs!1190534 d!1640953))

(declare-fun m!6129006 () Bool)

(assert (=> bs!1190534 m!6129006))

(assert (=> b!5078076 d!1640953))

(declare-fun d!1640955 () Bool)

(declare-fun res!2162158 () Bool)

(declare-fun e!3168078 () Bool)

(assert (=> d!1640955 (=> (not res!2162158) (not e!3168078))))

(assert (=> d!1640955 (= res!2162158 (= (csize!31390 ys!41) (+ (size!39109 (left!42840 ys!41)) (size!39109 (right!43170 ys!41)))))))

(assert (=> d!1640955 (= (inv!77647 ys!41) e!3168078)))

(declare-fun b!5078360 () Bool)

(declare-fun res!2162159 () Bool)

(assert (=> b!5078360 (=> (not res!2162159) (not e!3168078))))

(assert (=> b!5078360 (= res!2162159 (and (not (= (left!42840 ys!41) Empty!15580)) (not (= (right!43170 ys!41) Empty!15580))))))

(declare-fun b!5078361 () Bool)

(declare-fun res!2162160 () Bool)

(assert (=> b!5078361 (=> (not res!2162160) (not e!3168078))))

(assert (=> b!5078361 (= res!2162160 (= (cheight!15791 ys!41) (+ (max!0 (height!2157 (left!42840 ys!41)) (height!2157 (right!43170 ys!41))) 1)))))

(declare-fun b!5078362 () Bool)

(assert (=> b!5078362 (= e!3168078 (<= 0 (cheight!15791 ys!41)))))

(assert (= (and d!1640955 res!2162158) b!5078360))

(assert (= (and b!5078360 res!2162159) b!5078361))

(assert (= (and b!5078361 res!2162160) b!5078362))

(declare-fun m!6129008 () Bool)

(assert (=> d!1640955 m!6129008))

(assert (=> d!1640955 m!6128450))

(assert (=> b!5078361 m!6128076))

(assert (=> b!5078361 m!6128074))

(assert (=> b!5078361 m!6128076))

(assert (=> b!5078361 m!6128074))

(declare-fun m!6129010 () Bool)

(assert (=> b!5078361 m!6129010))

(assert (=> b!5077883 d!1640955))

(declare-fun b!5078366 () Bool)

(declare-fun e!3168080 () Bool)

(declare-fun lt!2090537 () List!58574)

(assert (=> b!5078366 (= e!3168080 (or (not (= (list!19021 (right!43170 lt!2090452)) Nil!58450)) (= lt!2090537 (list!19021 (left!42840 lt!2090452)))))))

(declare-fun d!1640957 () Bool)

(assert (=> d!1640957 e!3168080))

(declare-fun res!2162161 () Bool)

(assert (=> d!1640957 (=> (not res!2162161) (not e!3168080))))

(assert (=> d!1640957 (= res!2162161 (= (content!10426 lt!2090537) ((_ map or) (content!10426 (list!19021 (left!42840 lt!2090452))) (content!10426 (list!19021 (right!43170 lt!2090452))))))))

(declare-fun e!3168079 () List!58574)

(assert (=> d!1640957 (= lt!2090537 e!3168079)))

(declare-fun c!872128 () Bool)

(assert (=> d!1640957 (= c!872128 ((_ is Nil!58450) (list!19021 (left!42840 lt!2090452))))))

(assert (=> d!1640957 (= (++!12807 (list!19021 (left!42840 lt!2090452)) (list!19021 (right!43170 lt!2090452))) lt!2090537)))

(declare-fun b!5078363 () Bool)

(assert (=> b!5078363 (= e!3168079 (list!19021 (right!43170 lt!2090452)))))

(declare-fun b!5078365 () Bool)

(declare-fun res!2162162 () Bool)

(assert (=> b!5078365 (=> (not res!2162162) (not e!3168080))))

(assert (=> b!5078365 (= res!2162162 (= (size!39108 lt!2090537) (+ (size!39108 (list!19021 (left!42840 lt!2090452))) (size!39108 (list!19021 (right!43170 lt!2090452))))))))

(declare-fun b!5078364 () Bool)

(assert (=> b!5078364 (= e!3168079 (Cons!58450 (h!64898 (list!19021 (left!42840 lt!2090452))) (++!12807 (t!371381 (list!19021 (left!42840 lt!2090452))) (list!19021 (right!43170 lt!2090452)))))))

(assert (= (and d!1640957 c!872128) b!5078363))

(assert (= (and d!1640957 (not c!872128)) b!5078364))

(assert (= (and d!1640957 res!2162161) b!5078365))

(assert (= (and b!5078365 res!2162162) b!5078366))

(declare-fun m!6129022 () Bool)

(assert (=> d!1640957 m!6129022))

(assert (=> d!1640957 m!6128274))

(declare-fun m!6129024 () Bool)

(assert (=> d!1640957 m!6129024))

(assert (=> d!1640957 m!6128276))

(declare-fun m!6129026 () Bool)

(assert (=> d!1640957 m!6129026))

(declare-fun m!6129028 () Bool)

(assert (=> b!5078365 m!6129028))

(assert (=> b!5078365 m!6128274))

(declare-fun m!6129030 () Bool)

(assert (=> b!5078365 m!6129030))

(assert (=> b!5078365 m!6128276))

(declare-fun m!6129032 () Bool)

(assert (=> b!5078365 m!6129032))

(assert (=> b!5078364 m!6128276))

(declare-fun m!6129034 () Bool)

(assert (=> b!5078364 m!6129034))

(assert (=> b!5077924 d!1640957))

(declare-fun b!5078370 () Bool)

(declare-fun e!3168083 () List!58574)

(assert (=> b!5078370 (= e!3168083 Nil!58450)))

(declare-fun b!5078373 () Bool)

(declare-fun e!3168084 () List!58574)

(assert (=> b!5078373 (= e!3168084 (++!12807 (list!19021 (left!42840 (left!42840 lt!2090452))) (list!19021 (right!43170 (left!42840 lt!2090452)))))))

(declare-fun b!5078372 () Bool)

(assert (=> b!5078372 (= e!3168084 (list!19023 (xs!18946 (left!42840 lt!2090452))))))

(declare-fun d!1640961 () Bool)

(declare-fun c!872130 () Bool)

(assert (=> d!1640961 (= c!872130 ((_ is Empty!15580) (left!42840 lt!2090452)))))

(assert (=> d!1640961 (= (list!19021 (left!42840 lt!2090452)) e!3168083)))

(declare-fun b!5078371 () Bool)

(assert (=> b!5078371 (= e!3168083 e!3168084)))

(declare-fun c!872131 () Bool)

(assert (=> b!5078371 (= c!872131 ((_ is Leaf!25875) (left!42840 lt!2090452)))))

(assert (= (and d!1640961 c!872130) b!5078370))

(assert (= (and d!1640961 (not c!872130)) b!5078371))

(assert (= (and b!5078371 c!872131) b!5078372))

(assert (= (and b!5078371 (not c!872131)) b!5078373))

(declare-fun m!6129040 () Bool)

(assert (=> b!5078373 m!6129040))

(declare-fun m!6129042 () Bool)

(assert (=> b!5078373 m!6129042))

(assert (=> b!5078373 m!6129040))

(assert (=> b!5078373 m!6129042))

(declare-fun m!6129044 () Bool)

(assert (=> b!5078373 m!6129044))

(declare-fun m!6129046 () Bool)

(assert (=> b!5078372 m!6129046))

(assert (=> b!5077924 d!1640961))

(declare-fun b!5078377 () Bool)

(declare-fun e!3168087 () List!58574)

(assert (=> b!5078377 (= e!3168087 Nil!58450)))

(declare-fun b!5078380 () Bool)

(declare-fun e!3168088 () List!58574)

(assert (=> b!5078380 (= e!3168088 (++!12807 (list!19021 (left!42840 (right!43170 lt!2090452))) (list!19021 (right!43170 (right!43170 lt!2090452)))))))

(declare-fun b!5078379 () Bool)

(assert (=> b!5078379 (= e!3168088 (list!19023 (xs!18946 (right!43170 lt!2090452))))))

(declare-fun d!1640965 () Bool)

(declare-fun c!872133 () Bool)

(assert (=> d!1640965 (= c!872133 ((_ is Empty!15580) (right!43170 lt!2090452)))))

(assert (=> d!1640965 (= (list!19021 (right!43170 lt!2090452)) e!3168087)))

(declare-fun b!5078378 () Bool)

(assert (=> b!5078378 (= e!3168087 e!3168088)))

(declare-fun c!872134 () Bool)

(assert (=> b!5078378 (= c!872134 ((_ is Leaf!25875) (right!43170 lt!2090452)))))

(assert (= (and d!1640965 c!872133) b!5078377))

(assert (= (and d!1640965 (not c!872133)) b!5078378))

(assert (= (and b!5078378 c!872134) b!5078379))

(assert (= (and b!5078378 (not c!872134)) b!5078380))

(declare-fun m!6129052 () Bool)

(assert (=> b!5078380 m!6129052))

(declare-fun m!6129054 () Bool)

(assert (=> b!5078380 m!6129054))

(assert (=> b!5078380 m!6129052))

(assert (=> b!5078380 m!6129054))

(declare-fun m!6129056 () Bool)

(assert (=> b!5078380 m!6129056))

(declare-fun m!6129060 () Bool)

(assert (=> b!5078379 m!6129060))

(assert (=> b!5077924 d!1640965))

(declare-fun d!1640969 () Bool)

(declare-fun res!2162165 () Bool)

(declare-fun e!3168089 () Bool)

(assert (=> d!1640969 (=> (not res!2162165) (not e!3168089))))

(assert (=> d!1640969 (= res!2162165 (= (csize!31390 (left!42840 xs!286)) (+ (size!39109 (left!42840 (left!42840 xs!286))) (size!39109 (right!43170 (left!42840 xs!286))))))))

(assert (=> d!1640969 (= (inv!77647 (left!42840 xs!286)) e!3168089)))

(declare-fun b!5078381 () Bool)

(declare-fun res!2162166 () Bool)

(assert (=> b!5078381 (=> (not res!2162166) (not e!3168089))))

(assert (=> b!5078381 (= res!2162166 (and (not (= (left!42840 (left!42840 xs!286)) Empty!15580)) (not (= (right!43170 (left!42840 xs!286)) Empty!15580))))))

(declare-fun b!5078382 () Bool)

(declare-fun res!2162167 () Bool)

(assert (=> b!5078382 (=> (not res!2162167) (not e!3168089))))

(assert (=> b!5078382 (= res!2162167 (= (cheight!15791 (left!42840 xs!286)) (+ (max!0 (height!2157 (left!42840 (left!42840 xs!286))) (height!2157 (right!43170 (left!42840 xs!286)))) 1)))))

(declare-fun b!5078383 () Bool)

(assert (=> b!5078383 (= e!3168089 (<= 0 (cheight!15791 (left!42840 xs!286))))))

(assert (= (and d!1640969 res!2162165) b!5078381))

(assert (= (and b!5078381 res!2162166) b!5078382))

(assert (= (and b!5078382 res!2162167) b!5078383))

(declare-fun m!6129062 () Bool)

(assert (=> d!1640969 m!6129062))

(declare-fun m!6129064 () Bool)

(assert (=> d!1640969 m!6129064))

(assert (=> b!5078382 m!6128906))

(assert (=> b!5078382 m!6128908))

(assert (=> b!5078382 m!6128906))

(assert (=> b!5078382 m!6128908))

(declare-fun m!6129066 () Bool)

(assert (=> b!5078382 m!6129066))

(assert (=> b!5077886 d!1640969))

(declare-fun d!1640973 () Bool)

(declare-fun lt!2090538 () Bool)

(assert (=> d!1640973 (= lt!2090538 (isEmpty!31665 (list!19021 (left!42840 lt!2090452))))))

(assert (=> d!1640973 (= lt!2090538 (= (size!39109 (left!42840 lt!2090452)) 0))))

(assert (=> d!1640973 (= (isEmpty!31663 (left!42840 lt!2090452)) lt!2090538)))

(declare-fun bs!1190536 () Bool)

(assert (= bs!1190536 d!1640973))

(assert (=> bs!1190536 m!6128274))

(assert (=> bs!1190536 m!6128274))

(declare-fun m!6129068 () Bool)

(assert (=> bs!1190536 m!6129068))

(declare-fun m!6129070 () Bool)

(assert (=> bs!1190536 m!6129070))

(assert (=> b!5077858 d!1640973))

(declare-fun d!1640975 () Bool)

(declare-fun res!2162177 () Bool)

(declare-fun e!3168099 () Bool)

(assert (=> d!1640975 (=> (not res!2162177) (not e!3168099))))

(assert (=> d!1640975 (= res!2162177 (= (csize!31390 (right!43170 ys!41)) (+ (size!39109 (left!42840 (right!43170 ys!41))) (size!39109 (right!43170 (right!43170 ys!41))))))))

(assert (=> d!1640975 (= (inv!77647 (right!43170 ys!41)) e!3168099)))

(declare-fun b!5078393 () Bool)

(declare-fun res!2162178 () Bool)

(assert (=> b!5078393 (=> (not res!2162178) (not e!3168099))))

(assert (=> b!5078393 (= res!2162178 (and (not (= (left!42840 (right!43170 ys!41)) Empty!15580)) (not (= (right!43170 (right!43170 ys!41)) Empty!15580))))))

(declare-fun b!5078394 () Bool)

(declare-fun res!2162179 () Bool)

(assert (=> b!5078394 (=> (not res!2162179) (not e!3168099))))

(assert (=> b!5078394 (= res!2162179 (= (cheight!15791 (right!43170 ys!41)) (+ (max!0 (height!2157 (left!42840 (right!43170 ys!41))) (height!2157 (right!43170 (right!43170 ys!41)))) 1)))))

(declare-fun b!5078395 () Bool)

(assert (=> b!5078395 (= e!3168099 (<= 0 (cheight!15791 (right!43170 ys!41))))))

(assert (= (and d!1640975 res!2162177) b!5078393))

(assert (= (and b!5078393 res!2162178) b!5078394))

(assert (= (and b!5078394 res!2162179) b!5078395))

(declare-fun m!6129072 () Bool)

(assert (=> d!1640975 m!6129072))

(declare-fun m!6129074 () Bool)

(assert (=> d!1640975 m!6129074))

(declare-fun m!6129076 () Bool)

(assert (=> b!5078394 m!6129076))

(declare-fun m!6129078 () Bool)

(assert (=> b!5078394 m!6129078))

(assert (=> b!5078394 m!6129076))

(assert (=> b!5078394 m!6129078))

(declare-fun m!6129080 () Bool)

(assert (=> b!5078394 m!6129080))

(assert (=> b!5077976 d!1640975))

(declare-fun d!1640977 () Bool)

(assert (=> d!1640977 (= (height!2157 (ite c!871981 xs!286 (left!42840 (left!42840 (left!42840 ys!41))))) (ite ((_ is Empty!15580) (ite c!871981 xs!286 (left!42840 (left!42840 (left!42840 ys!41))))) 0 (ite ((_ is Leaf!25875) (ite c!871981 xs!286 (left!42840 (left!42840 (left!42840 ys!41))))) 1 (cheight!15791 (ite c!871981 xs!286 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(assert (=> bm!353758 d!1640977))

(declare-fun b!5078396 () Bool)

(declare-fun e!3168100 () List!58574)

(assert (=> b!5078396 (= e!3168100 Nil!58450)))

(declare-fun b!5078399 () Bool)

(declare-fun e!3168101 () List!58574)

(assert (=> b!5078399 (= e!3168101 (++!12807 (list!19021 (left!42840 lt!2090471)) (list!19021 (right!43170 lt!2090471))))))

(declare-fun b!5078398 () Bool)

(assert (=> b!5078398 (= e!3168101 (list!19023 (xs!18946 lt!2090471)))))

(declare-fun d!1640979 () Bool)

(declare-fun c!872135 () Bool)

(assert (=> d!1640979 (= c!872135 ((_ is Empty!15580) lt!2090471))))

(assert (=> d!1640979 (= (list!19021 lt!2090471) e!3168100)))

(declare-fun b!5078397 () Bool)

(assert (=> b!5078397 (= e!3168100 e!3168101)))

(declare-fun c!872136 () Bool)

(assert (=> b!5078397 (= c!872136 ((_ is Leaf!25875) lt!2090471))))

(assert (= (and d!1640979 c!872135) b!5078396))

(assert (= (and d!1640979 (not c!872135)) b!5078397))

(assert (= (and b!5078397 c!872136) b!5078398))

(assert (= (and b!5078397 (not c!872136)) b!5078399))

(declare-fun m!6129082 () Bool)

(assert (=> b!5078399 m!6129082))

(declare-fun m!6129084 () Bool)

(assert (=> b!5078399 m!6129084))

(assert (=> b!5078399 m!6129082))

(assert (=> b!5078399 m!6129084))

(declare-fun m!6129086 () Bool)

(assert (=> b!5078399 m!6129086))

(declare-fun m!6129088 () Bool)

(assert (=> b!5078398 m!6129088))

(assert (=> b!5077801 d!1640979))

(declare-fun e!3168103 () Bool)

(declare-fun b!5078403 () Bool)

(declare-fun lt!2090539 () List!58574)

(assert (=> b!5078403 (= e!3168103 (or (not (= (list!19021 (left!42840 (left!42840 ys!41))) Nil!58450)) (= lt!2090539 (list!19021 xs!286))))))

(declare-fun d!1640981 () Bool)

(assert (=> d!1640981 e!3168103))

(declare-fun res!2162180 () Bool)

(assert (=> d!1640981 (=> (not res!2162180) (not e!3168103))))

(assert (=> d!1640981 (= res!2162180 (= (content!10426 lt!2090539) ((_ map or) (content!10426 (list!19021 xs!286)) (content!10426 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun e!3168102 () List!58574)

(assert (=> d!1640981 (= lt!2090539 e!3168102)))

(declare-fun c!872137 () Bool)

(assert (=> d!1640981 (= c!872137 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1640981 (= (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))) lt!2090539)))

(declare-fun b!5078400 () Bool)

(assert (=> b!5078400 (= e!3168102 (list!19021 (left!42840 (left!42840 ys!41))))))

(declare-fun b!5078402 () Bool)

(declare-fun res!2162181 () Bool)

(assert (=> b!5078402 (=> (not res!2162181) (not e!3168103))))

(assert (=> b!5078402 (= res!2162181 (= (size!39108 lt!2090539) (+ (size!39108 (list!19021 xs!286)) (size!39108 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078401 () Bool)

(assert (=> b!5078401 (= e!3168102 (Cons!58450 (h!64898 (list!19021 xs!286)) (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 ys!41))))))))

(assert (= (and d!1640981 c!872137) b!5078400))

(assert (= (and d!1640981 (not c!872137)) b!5078401))

(assert (= (and d!1640981 res!2162180) b!5078402))

(assert (= (and b!5078402 res!2162181) b!5078403))

(declare-fun m!6129090 () Bool)

(assert (=> d!1640981 m!6129090))

(assert (=> d!1640981 m!6128088))

(assert (=> d!1640981 m!6128320))

(assert (=> d!1640981 m!6128228))

(declare-fun m!6129092 () Bool)

(assert (=> d!1640981 m!6129092))

(declare-fun m!6129094 () Bool)

(assert (=> b!5078402 m!6129094))

(assert (=> b!5078402 m!6128088))

(assert (=> b!5078402 m!6128326))

(assert (=> b!5078402 m!6128228))

(declare-fun m!6129096 () Bool)

(assert (=> b!5078402 m!6129096))

(assert (=> b!5078401 m!6128228))

(declare-fun m!6129098 () Bool)

(assert (=> b!5078401 m!6129098))

(assert (=> b!5077801 d!1640981))

(assert (=> b!5077801 d!1640727))

(assert (=> b!5077801 d!1640863))

(declare-fun d!1640983 () Bool)

(declare-fun res!2162182 () Bool)

(declare-fun e!3168104 () Bool)

(assert (=> d!1640983 (=> (not res!2162182) (not e!3168104))))

(assert (=> d!1640983 (= res!2162182 (<= (size!39108 (list!19023 (xs!18946 (left!42840 xs!286)))) 512))))

(assert (=> d!1640983 (= (inv!77648 (left!42840 xs!286)) e!3168104)))

(declare-fun b!5078404 () Bool)

(declare-fun res!2162183 () Bool)

(assert (=> b!5078404 (=> (not res!2162183) (not e!3168104))))

(assert (=> b!5078404 (= res!2162183 (= (csize!31391 (left!42840 xs!286)) (size!39108 (list!19023 (xs!18946 (left!42840 xs!286))))))))

(declare-fun b!5078405 () Bool)

(assert (=> b!5078405 (= e!3168104 (and (> (csize!31391 (left!42840 xs!286)) 0) (<= (csize!31391 (left!42840 xs!286)) 512)))))

(assert (= (and d!1640983 res!2162182) b!5078404))

(assert (= (and b!5078404 res!2162183) b!5078405))

(assert (=> d!1640983 m!6128978))

(assert (=> d!1640983 m!6128978))

(declare-fun m!6129104 () Bool)

(assert (=> d!1640983 m!6129104))

(assert (=> b!5078404 m!6128978))

(assert (=> b!5078404 m!6128978))

(assert (=> b!5078404 m!6129104))

(assert (=> b!5077888 d!1640983))

(declare-fun d!1640985 () Bool)

(assert (=> d!1640985 (= (inv!77644 (xs!18946 (right!43170 xs!286))) (<= (size!39108 (innerList!15668 (xs!18946 (right!43170 xs!286)))) 2147483647))))

(declare-fun bs!1190537 () Bool)

(assert (= bs!1190537 d!1640985))

(declare-fun m!6129108 () Bool)

(assert (=> bs!1190537 m!6129108))

(assert (=> b!5078088 d!1640985))

(declare-fun d!1640987 () Bool)

(declare-fun lt!2090540 () Conc!15580)

(assert (=> d!1640987 (= (list!19021 lt!2090540) (++!12807 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))))))

(declare-fun e!3168105 () Conc!15580)

(assert (=> d!1640987 (= lt!2090540 e!3168105)))

(declare-fun c!872138 () Bool)

(assert (=> d!1640987 (= c!872138 (= (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))) Empty!15580))))

(assert (=> d!1640987 (= (<>!400 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) lt!2090540)))

(declare-fun e!3168106 () Conc!15580)

(declare-fun b!5078408 () Bool)

(assert (=> b!5078408 (= e!3168106 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))))

(declare-fun b!5078409 () Bool)

(assert (=> b!5078409 (= e!3168106 (Node!15580 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)) (+ (size!39109 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (size!39109 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))) (+ (max!0 (height!2157 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (height!2157 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))) 1)))))

(declare-fun b!5078406 () Bool)

(assert (=> b!5078406 (= e!3168105 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))))

(declare-fun b!5078407 () Bool)

(assert (=> b!5078407 (= e!3168105 e!3168106)))

(declare-fun c!872139 () Bool)

(assert (=> b!5078407 (= c!872139 (= (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)) Empty!15580))))

(assert (= (and d!1640987 c!872138) b!5078406))

(assert (= (and d!1640987 (not c!872138)) b!5078407))

(assert (= (and b!5078407 c!872139) b!5078408))

(assert (= (and b!5078407 (not c!872139)) b!5078409))

(declare-fun m!6129116 () Bool)

(assert (=> d!1640987 m!6129116))

(declare-fun m!6129118 () Bool)

(assert (=> d!1640987 m!6129118))

(declare-fun m!6129120 () Bool)

(assert (=> d!1640987 m!6129120))

(assert (=> d!1640987 m!6129118))

(assert (=> d!1640987 m!6129120))

(declare-fun m!6129122 () Bool)

(assert (=> d!1640987 m!6129122))

(declare-fun m!6129124 () Bool)

(assert (=> b!5078409 m!6129124))

(declare-fun m!6129126 () Bool)

(assert (=> b!5078409 m!6129126))

(declare-fun m!6129130 () Bool)

(assert (=> b!5078409 m!6129130))

(declare-fun m!6129132 () Bool)

(assert (=> b!5078409 m!6129132))

(assert (=> b!5078409 m!6129130))

(assert (=> b!5078409 m!6129126))

(declare-fun m!6129134 () Bool)

(assert (=> b!5078409 m!6129134))

(assert (=> bm!353753 d!1640987))

(declare-fun d!1640989 () Bool)

(declare-fun res!2162184 () Bool)

(declare-fun e!3168107 () Bool)

(assert (=> d!1640989 (=> (not res!2162184) (not e!3168107))))

(assert (=> d!1640989 (= res!2162184 (<= (size!39108 (list!19023 (xs!18946 (right!43170 ys!41)))) 512))))

(assert (=> d!1640989 (= (inv!77648 (right!43170 ys!41)) e!3168107)))

(declare-fun b!5078410 () Bool)

(declare-fun res!2162185 () Bool)

(assert (=> b!5078410 (=> (not res!2162185) (not e!3168107))))

(assert (=> b!5078410 (= res!2162185 (= (csize!31391 (right!43170 ys!41)) (size!39108 (list!19023 (xs!18946 (right!43170 ys!41))))))))

(declare-fun b!5078411 () Bool)

(assert (=> b!5078411 (= e!3168107 (and (> (csize!31391 (right!43170 ys!41)) 0) (<= (csize!31391 (right!43170 ys!41)) 512)))))

(assert (= (and d!1640989 res!2162184) b!5078410))

(assert (= (and b!5078410 res!2162185) b!5078411))

(assert (=> d!1640989 m!6128536))

(assert (=> d!1640989 m!6128536))

(declare-fun m!6129138 () Bool)

(assert (=> d!1640989 m!6129138))

(assert (=> b!5078410 m!6128536))

(assert (=> b!5078410 m!6128536))

(assert (=> b!5078410 m!6129138))

(assert (=> b!5077978 d!1640989))

(declare-fun d!1640991 () Bool)

(assert (=> d!1640991 (= (list!19023 (xs!18946 ys!41)) (innerList!15668 (xs!18946 ys!41)))))

(assert (=> b!5077963 d!1640991))

(declare-fun d!1640993 () Bool)

(declare-fun c!872145 () Bool)

(assert (=> d!1640993 (= c!872145 ((_ is Nil!58450) lt!2090486))))

(declare-fun e!3168113 () (InoxSet T!105230))

(assert (=> d!1640993 (= (content!10426 lt!2090486) e!3168113)))

(declare-fun b!5078422 () Bool)

(assert (=> b!5078422 (= e!3168113 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078423 () Bool)

(assert (=> b!5078423 (= e!3168113 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090486) true) (content!10426 (t!371381 lt!2090486))))))

(assert (= (and d!1640993 c!872145) b!5078422))

(assert (= (and d!1640993 (not c!872145)) b!5078423))

(declare-fun m!6129162 () Bool)

(assert (=> b!5078423 m!6129162))

(declare-fun m!6129164 () Bool)

(assert (=> b!5078423 m!6129164))

(assert (=> d!1640721 d!1640993))

(declare-fun d!1641001 () Bool)

(declare-fun c!872147 () Bool)

(assert (=> d!1641001 (= c!872147 ((_ is Nil!58450) (list!19021 xs!286)))))

(declare-fun e!3168116 () (InoxSet T!105230))

(assert (=> d!1641001 (= (content!10426 (list!19021 xs!286)) e!3168116)))

(declare-fun b!5078428 () Bool)

(assert (=> b!5078428 (= e!3168116 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078429 () Bool)

(assert (=> b!5078429 (= e!3168116 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 xs!286)) true) (content!10426 (t!371381 (list!19021 xs!286)))))))

(assert (= (and d!1641001 c!872147) b!5078428))

(assert (= (and d!1641001 (not c!872147)) b!5078429))

(declare-fun m!6129166 () Bool)

(assert (=> b!5078429 m!6129166))

(assert (=> b!5078429 m!6128994))

(assert (=> d!1640721 d!1641001))

(declare-fun d!1641003 () Bool)

(declare-fun c!872148 () Bool)

(assert (=> d!1641003 (= c!872148 ((_ is Nil!58450) (list!19021 ys!41)))))

(declare-fun e!3168117 () (InoxSet T!105230))

(assert (=> d!1641003 (= (content!10426 (list!19021 ys!41)) e!3168117)))

(declare-fun b!5078430 () Bool)

(assert (=> b!5078430 (= e!3168117 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078431 () Bool)

(assert (=> b!5078431 (= e!3168117 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 ys!41)) true) (content!10426 (t!371381 (list!19021 ys!41)))))))

(assert (= (and d!1641003 c!872148) b!5078430))

(assert (= (and d!1641003 (not c!872148)) b!5078431))

(declare-fun m!6129176 () Bool)

(assert (=> b!5078431 m!6129176))

(declare-fun m!6129178 () Bool)

(assert (=> b!5078431 m!6129178))

(assert (=> d!1640721 d!1641003))

(declare-fun b!5078439 () Bool)

(declare-fun e!3168121 () Bool)

(declare-fun lt!2090543 () List!58574)

(assert (=> b!5078439 (= e!3168121 (or (not (= (list!19021 (right!43170 xs!286)) Nil!58450)) (= lt!2090543 (list!19021 (left!42840 xs!286)))))))

(declare-fun d!1641005 () Bool)

(assert (=> d!1641005 e!3168121))

(declare-fun res!2162188 () Bool)

(assert (=> d!1641005 (=> (not res!2162188) (not e!3168121))))

(assert (=> d!1641005 (= res!2162188 (= (content!10426 lt!2090543) ((_ map or) (content!10426 (list!19021 (left!42840 xs!286))) (content!10426 (list!19021 (right!43170 xs!286))))))))

(declare-fun e!3168119 () List!58574)

(assert (=> d!1641005 (= lt!2090543 e!3168119)))

(declare-fun c!872149 () Bool)

(assert (=> d!1641005 (= c!872149 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641005 (= (++!12807 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286))) lt!2090543)))

(declare-fun b!5078433 () Bool)

(assert (=> b!5078433 (= e!3168119 (list!19021 (right!43170 xs!286)))))

(declare-fun b!5078437 () Bool)

(declare-fun res!2162189 () Bool)

(assert (=> b!5078437 (=> (not res!2162189) (not e!3168121))))

(assert (=> b!5078437 (= res!2162189 (= (size!39108 lt!2090543) (+ (size!39108 (list!19021 (left!42840 xs!286))) (size!39108 (list!19021 (right!43170 xs!286))))))))

(declare-fun b!5078435 () Bool)

(assert (=> b!5078435 (= e!3168119 (Cons!58450 (h!64898 (list!19021 (left!42840 xs!286))) (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (right!43170 xs!286)))))))

(assert (= (and d!1641005 c!872149) b!5078433))

(assert (= (and d!1641005 (not c!872149)) b!5078435))

(assert (= (and d!1641005 res!2162188) b!5078437))

(assert (= (and b!5078437 res!2162189) b!5078439))

(declare-fun m!6129186 () Bool)

(assert (=> d!1641005 m!6129186))

(assert (=> d!1641005 m!6128332))

(declare-fun m!6129190 () Bool)

(assert (=> d!1641005 m!6129190))

(assert (=> d!1641005 m!6128334))

(declare-fun m!6129192 () Bool)

(assert (=> d!1641005 m!6129192))

(declare-fun m!6129194 () Bool)

(assert (=> b!5078437 m!6129194))

(assert (=> b!5078437 m!6128332))

(declare-fun m!6129198 () Bool)

(assert (=> b!5078437 m!6129198))

(assert (=> b!5078437 m!6128334))

(declare-fun m!6129200 () Bool)

(assert (=> b!5078437 m!6129200))

(assert (=> b!5078435 m!6128334))

(declare-fun m!6129202 () Bool)

(assert (=> b!5078435 m!6129202))

(assert (=> b!5077960 d!1641005))

(assert (=> b!5077960 d!1640939))

(assert (=> b!5077960 d!1640941))

(declare-fun d!1641011 () Bool)

(declare-fun res!2162192 () Bool)

(declare-fun e!3168123 () Bool)

(assert (=> d!1641011 (=> (not res!2162192) (not e!3168123))))

(assert (=> d!1641011 (= res!2162192 (<= (size!39108 (list!19023 (xs!18946 ys!41))) 512))))

(assert (=> d!1641011 (= (inv!77648 ys!41) e!3168123)))

(declare-fun b!5078442 () Bool)

(declare-fun res!2162193 () Bool)

(assert (=> b!5078442 (=> (not res!2162193) (not e!3168123))))

(assert (=> b!5078442 (= res!2162193 (= (csize!31391 ys!41) (size!39108 (list!19023 (xs!18946 ys!41)))))))

(declare-fun b!5078443 () Bool)

(assert (=> b!5078443 (= e!3168123 (and (> (csize!31391 ys!41) 0) (<= (csize!31391 ys!41) 512)))))

(assert (= (and d!1641011 res!2162192) b!5078442))

(assert (= (and b!5078442 res!2162193) b!5078443))

(assert (=> d!1641011 m!6128346))

(assert (=> d!1641011 m!6128346))

(declare-fun m!6129208 () Bool)

(assert (=> d!1641011 m!6129208))

(assert (=> b!5078442 m!6128346))

(assert (=> b!5078442 m!6128346))

(assert (=> b!5078442 m!6129208))

(assert (=> b!5077885 d!1641011))

(assert (=> b!5077803 d!1640793))

(assert (=> b!5077803 d!1640795))

(assert (=> b!5077803 d!1640701))

(assert (=> b!5077803 d!1640797))

(declare-fun d!1641015 () Bool)

(declare-fun c!872152 () Bool)

(assert (=> d!1641015 (= c!872152 ((_ is Node!15580) (left!42840 (left!42840 ys!41))))))

(declare-fun e!3168126 () Bool)

(assert (=> d!1641015 (= (inv!77643 (left!42840 (left!42840 ys!41))) e!3168126)))

(declare-fun b!5078450 () Bool)

(assert (=> b!5078450 (= e!3168126 (inv!77647 (left!42840 (left!42840 ys!41))))))

(declare-fun b!5078451 () Bool)

(declare-fun e!3168127 () Bool)

(assert (=> b!5078451 (= e!3168126 e!3168127)))

(declare-fun res!2162200 () Bool)

(assert (=> b!5078451 (= res!2162200 (not ((_ is Leaf!25875) (left!42840 (left!42840 ys!41)))))))

(assert (=> b!5078451 (=> res!2162200 e!3168127)))

(declare-fun b!5078452 () Bool)

(assert (=> b!5078452 (= e!3168127 (inv!77648 (left!42840 (left!42840 ys!41))))))

(assert (= (and d!1641015 c!872152) b!5078450))

(assert (= (and d!1641015 (not c!872152)) b!5078451))

(assert (= (and b!5078451 (not res!2162200)) b!5078452))

(declare-fun m!6129210 () Bool)

(assert (=> b!5078450 m!6129210))

(declare-fun m!6129212 () Bool)

(assert (=> b!5078452 m!6129212))

(assert (=> b!5078072 d!1641015))

(declare-fun d!1641017 () Bool)

(declare-fun c!872153 () Bool)

(assert (=> d!1641017 (= c!872153 ((_ is Node!15580) (right!43170 (left!42840 ys!41))))))

(declare-fun e!3168128 () Bool)

(assert (=> d!1641017 (= (inv!77643 (right!43170 (left!42840 ys!41))) e!3168128)))

(declare-fun b!5078453 () Bool)

(assert (=> b!5078453 (= e!3168128 (inv!77647 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5078454 () Bool)

(declare-fun e!3168129 () Bool)

(assert (=> b!5078454 (= e!3168128 e!3168129)))

(declare-fun res!2162201 () Bool)

(assert (=> b!5078454 (= res!2162201 (not ((_ is Leaf!25875) (right!43170 (left!42840 ys!41)))))))

(assert (=> b!5078454 (=> res!2162201 e!3168129)))

(declare-fun b!5078455 () Bool)

(assert (=> b!5078455 (= e!3168129 (inv!77648 (right!43170 (left!42840 ys!41))))))

(assert (= (and d!1641017 c!872153) b!5078453))

(assert (= (and d!1641017 (not c!872153)) b!5078454))

(assert (= (and b!5078454 (not res!2162201)) b!5078455))

(declare-fun m!6129216 () Bool)

(assert (=> b!5078453 m!6129216))

(declare-fun m!6129220 () Bool)

(assert (=> b!5078455 m!6129220))

(assert (=> b!5078072 d!1641017))

(declare-fun d!1641019 () Bool)

(declare-fun res!2162202 () Bool)

(declare-fun e!3168130 () Bool)

(assert (=> d!1641019 (=> (not res!2162202) (not e!3168130))))

(assert (=> d!1641019 (= res!2162202 (<= (size!39108 (list!19023 (xs!18946 xs!286))) 512))))

(assert (=> d!1641019 (= (inv!77648 xs!286) e!3168130)))

(declare-fun b!5078456 () Bool)

(declare-fun res!2162203 () Bool)

(assert (=> b!5078456 (=> (not res!2162203) (not e!3168130))))

(assert (=> b!5078456 (= res!2162203 (= (csize!31391 xs!286) (size!39108 (list!19023 (xs!18946 xs!286)))))))

(declare-fun b!5078457 () Bool)

(assert (=> b!5078457 (= e!3168130 (and (> (csize!31391 xs!286) 0) (<= (csize!31391 xs!286) 512)))))

(assert (= (and d!1641019 res!2162202) b!5078456))

(assert (= (and b!5078456 res!2162203) b!5078457))

(assert (=> d!1641019 m!6128338))

(assert (=> d!1641019 m!6128338))

(declare-fun m!6129230 () Bool)

(assert (=> d!1641019 m!6129230))

(assert (=> b!5078456 m!6128338))

(assert (=> b!5078456 m!6128338))

(assert (=> b!5078456 m!6129230))

(assert (=> b!5077882 d!1641019))

(declare-fun b!5078458 () Bool)

(declare-fun res!2162209 () Bool)

(declare-fun e!3168132 () Bool)

(assert (=> b!5078458 (=> (not res!2162209) (not e!3168132))))

(assert (=> b!5078458 (= res!2162209 (isBalanced!4442 (left!42840 (left!42840 ys!41))))))

(declare-fun b!5078459 () Bool)

(declare-fun res!2162205 () Bool)

(assert (=> b!5078459 (=> (not res!2162205) (not e!3168132))))

(assert (=> b!5078459 (= res!2162205 (<= (- (height!2157 (left!42840 (left!42840 ys!41))) (height!2157 (right!43170 (left!42840 ys!41)))) 1))))

(declare-fun d!1641023 () Bool)

(declare-fun res!2162208 () Bool)

(declare-fun e!3168131 () Bool)

(assert (=> d!1641023 (=> res!2162208 e!3168131)))

(assert (=> d!1641023 (= res!2162208 (not ((_ is Node!15580) (left!42840 ys!41))))))

(assert (=> d!1641023 (= (isBalanced!4442 (left!42840 ys!41)) e!3168131)))

(declare-fun b!5078460 () Bool)

(declare-fun res!2162206 () Bool)

(assert (=> b!5078460 (=> (not res!2162206) (not e!3168132))))

(assert (=> b!5078460 (= res!2162206 (isBalanced!4442 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5078461 () Bool)

(assert (=> b!5078461 (= e!3168132 (not (isEmpty!31663 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5078462 () Bool)

(declare-fun res!2162204 () Bool)

(assert (=> b!5078462 (=> (not res!2162204) (not e!3168132))))

(assert (=> b!5078462 (= res!2162204 (not (isEmpty!31663 (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5078463 () Bool)

(assert (=> b!5078463 (= e!3168131 e!3168132)))

(declare-fun res!2162207 () Bool)

(assert (=> b!5078463 (=> (not res!2162207) (not e!3168132))))

(assert (=> b!5078463 (= res!2162207 (<= (- 1) (- (height!2157 (left!42840 (left!42840 ys!41))) (height!2157 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1641023 (not res!2162208)) b!5078463))

(assert (= (and b!5078463 res!2162207) b!5078459))

(assert (= (and b!5078459 res!2162205) b!5078458))

(assert (= (and b!5078458 res!2162209) b!5078460))

(assert (= (and b!5078460 res!2162206) b!5078462))

(assert (= (and b!5078462 res!2162204) b!5078461))

(declare-fun m!6129232 () Bool)

(assert (=> b!5078460 m!6129232))

(declare-fun m!6129234 () Bool)

(assert (=> b!5078462 m!6129234))

(declare-fun m!6129236 () Bool)

(assert (=> b!5078461 m!6129236))

(assert (=> b!5078463 m!6128210))

(assert (=> b!5078463 m!6128466))

(assert (=> b!5078458 m!6128232))

(assert (=> b!5078459 m!6128210))

(assert (=> b!5078459 m!6128466))

(assert (=> b!5077684 d!1641023))

(declare-fun d!1641025 () Bool)

(declare-fun res!2162210 () Bool)

(declare-fun e!3168133 () Bool)

(assert (=> d!1641025 (=> (not res!2162210) (not e!3168133))))

(assert (=> d!1641025 (= res!2162210 (= (csize!31390 xs!286) (+ (size!39109 (left!42840 xs!286)) (size!39109 (right!43170 xs!286)))))))

(assert (=> d!1641025 (= (inv!77647 xs!286) e!3168133)))

(declare-fun b!5078464 () Bool)

(declare-fun res!2162211 () Bool)

(assert (=> b!5078464 (=> (not res!2162211) (not e!3168133))))

(assert (=> b!5078464 (= res!2162211 (and (not (= (left!42840 xs!286) Empty!15580)) (not (= (right!43170 xs!286) Empty!15580))))))

(declare-fun b!5078465 () Bool)

(declare-fun res!2162212 () Bool)

(assert (=> b!5078465 (=> (not res!2162212) (not e!3168133))))

(assert (=> b!5078465 (= res!2162212 (= (cheight!15791 xs!286) (+ (max!0 (height!2157 (left!42840 xs!286)) (height!2157 (right!43170 xs!286))) 1)))))

(declare-fun b!5078466 () Bool)

(assert (=> b!5078466 (= e!3168133 (<= 0 (cheight!15791 xs!286)))))

(assert (= (and d!1641025 res!2162210) b!5078464))

(assert (= (and b!5078464 res!2162211) b!5078465))

(assert (= (and b!5078465 res!2162212) b!5078466))

(assert (=> d!1641025 m!6128890))

(declare-fun m!6129238 () Bool)

(assert (=> d!1641025 m!6129238))

(assert (=> b!5078465 m!6128252))

(assert (=> b!5078465 m!6128254))

(assert (=> b!5078465 m!6128252))

(assert (=> b!5078465 m!6128254))

(declare-fun m!6129240 () Bool)

(assert (=> b!5078465 m!6129240))

(assert (=> b!5077880 d!1641025))

(declare-fun d!1641027 () Bool)

(declare-fun c!872156 () Bool)

(assert (=> d!1641027 (= c!872156 ((_ is Node!15580) (left!42840 (left!42840 xs!286))))))

(declare-fun e!3168136 () Bool)

(assert (=> d!1641027 (= (inv!77643 (left!42840 (left!42840 xs!286))) e!3168136)))

(declare-fun b!5078471 () Bool)

(assert (=> b!5078471 (= e!3168136 (inv!77647 (left!42840 (left!42840 xs!286))))))

(declare-fun b!5078472 () Bool)

(declare-fun e!3168137 () Bool)

(assert (=> b!5078472 (= e!3168136 e!3168137)))

(declare-fun res!2162213 () Bool)

(assert (=> b!5078472 (= res!2162213 (not ((_ is Leaf!25875) (left!42840 (left!42840 xs!286)))))))

(assert (=> b!5078472 (=> res!2162213 e!3168137)))

(declare-fun b!5078473 () Bool)

(assert (=> b!5078473 (= e!3168137 (inv!77648 (left!42840 (left!42840 xs!286))))))

(assert (= (and d!1641027 c!872156) b!5078471))

(assert (= (and d!1641027 (not c!872156)) b!5078472))

(assert (= (and b!5078472 (not res!2162213)) b!5078473))

(declare-fun m!6129242 () Bool)

(assert (=> b!5078471 m!6129242))

(declare-fun m!6129244 () Bool)

(assert (=> b!5078473 m!6129244))

(assert (=> b!5078084 d!1641027))

(declare-fun d!1641029 () Bool)

(declare-fun c!872157 () Bool)

(assert (=> d!1641029 (= c!872157 ((_ is Node!15580) (right!43170 (left!42840 xs!286))))))

(declare-fun e!3168138 () Bool)

(assert (=> d!1641029 (= (inv!77643 (right!43170 (left!42840 xs!286))) e!3168138)))

(declare-fun b!5078474 () Bool)

(assert (=> b!5078474 (= e!3168138 (inv!77647 (right!43170 (left!42840 xs!286))))))

(declare-fun b!5078475 () Bool)

(declare-fun e!3168139 () Bool)

(assert (=> b!5078475 (= e!3168138 e!3168139)))

(declare-fun res!2162214 () Bool)

(assert (=> b!5078475 (= res!2162214 (not ((_ is Leaf!25875) (right!43170 (left!42840 xs!286)))))))

(assert (=> b!5078475 (=> res!2162214 e!3168139)))

(declare-fun b!5078476 () Bool)

(assert (=> b!5078476 (= e!3168139 (inv!77648 (right!43170 (left!42840 xs!286))))))

(assert (= (and d!1641029 c!872157) b!5078474))

(assert (= (and d!1641029 (not c!872157)) b!5078475))

(assert (= (and b!5078475 (not res!2162214)) b!5078476))

(declare-fun m!6129246 () Bool)

(assert (=> b!5078474 m!6129246))

(declare-fun m!6129248 () Bool)

(assert (=> b!5078476 m!6129248))

(assert (=> b!5078084 d!1641029))

(assert (=> b!5078059 d!1640711))

(declare-fun d!1641031 () Bool)

(declare-fun lt!2090552 () Int)

(assert (=> d!1641031 (= lt!2090552 (size!39108 (list!19021 (right!43170 ys!41))))))

(assert (=> d!1641031 (= lt!2090552 (ite ((_ is Empty!15580) (right!43170 ys!41)) 0 (ite ((_ is Leaf!25875) (right!43170 ys!41)) (csize!31391 (right!43170 ys!41)) (csize!31390 (right!43170 ys!41)))))))

(assert (=> d!1641031 (= (size!39109 (right!43170 ys!41)) lt!2090552)))

(declare-fun bs!1190539 () Bool)

(assert (= bs!1190539 d!1641031))

(assert (=> bs!1190539 m!6128342))

(assert (=> bs!1190539 m!6128342))

(assert (=> bs!1190539 m!6128522))

(assert (=> b!5078059 d!1641031))

(declare-fun d!1641045 () Bool)

(declare-fun lt!2090553 () Int)

(assert (=> d!1641045 (= lt!2090553 (size!39108 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1641045 (= lt!2090553 (ite ((_ is Empty!15580) (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) 0 (ite ((_ is Leaf!25875) (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (csize!31391 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (csize!31390 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(assert (=> d!1641045 (= (size!39109 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) lt!2090553)))

(declare-fun bs!1190540 () Bool)

(assert (= bs!1190540 d!1641045))

(assert (=> bs!1190540 m!6128044))

(assert (=> bs!1190540 m!6128446))

(assert (=> bs!1190540 m!6128446))

(declare-fun m!6129270 () Bool)

(assert (=> bs!1190540 m!6129270))

(assert (=> b!5078059 d!1641045))

(declare-fun d!1641047 () Bool)

(assert (=> d!1641047 (= (max!0 (height!2157 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 ys!41))) (ite (< (height!2157 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 ys!41))) (height!2157 (right!43170 ys!41)) (height!2157 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (=> b!5078059 d!1641047))

(declare-fun d!1641049 () Bool)

(assert (=> d!1641049 (= (height!2157 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (ite ((_ is Empty!15580) (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) 0 (ite ((_ is Leaf!25875) (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) 1 (cheight!15791 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(assert (=> b!5078059 d!1641049))

(declare-fun d!1641051 () Bool)

(assert (=> d!1641051 (= (height!2157 (left!42840 lt!2090452)) (ite ((_ is Empty!15580) (left!42840 lt!2090452)) 0 (ite ((_ is Leaf!25875) (left!42840 lt!2090452)) 1 (cheight!15791 (left!42840 lt!2090452)))))))

(assert (=> b!5077855 d!1641051))

(declare-fun d!1641055 () Bool)

(assert (=> d!1641055 (= (height!2157 (right!43170 lt!2090452)) (ite ((_ is Empty!15580) (right!43170 lt!2090452)) 0 (ite ((_ is Leaf!25875) (right!43170 lt!2090452)) 1 (cheight!15791 (right!43170 lt!2090452)))))))

(assert (=> b!5077855 d!1641055))

(assert (=> b!5078042 d!1640729))

(assert (=> b!5078042 d!1640939))

(declare-fun b!5078500 () Bool)

(declare-fun e!3168150 () List!58574)

(assert (=> b!5078500 (= e!3168150 Nil!58450)))

(declare-fun b!5078503 () Bool)

(declare-fun e!3168151 () List!58574)

(assert (=> b!5078503 (= e!3168151 (++!12807 (list!19021 (left!42840 (right!43170 (right!43170 xs!286)))) (list!19021 (right!43170 (right!43170 (right!43170 xs!286))))))))

(declare-fun b!5078502 () Bool)

(assert (=> b!5078502 (= e!3168151 (list!19023 (xs!18946 (right!43170 (right!43170 xs!286)))))))

(declare-fun d!1641057 () Bool)

(declare-fun c!872164 () Bool)

(assert (=> d!1641057 (= c!872164 ((_ is Empty!15580) (right!43170 (right!43170 xs!286))))))

(assert (=> d!1641057 (= (list!19021 (right!43170 (right!43170 xs!286))) e!3168150)))

(declare-fun b!5078501 () Bool)

(assert (=> b!5078501 (= e!3168150 e!3168151)))

(declare-fun c!872165 () Bool)

(assert (=> b!5078501 (= c!872165 ((_ is Leaf!25875) (right!43170 (right!43170 xs!286))))))

(assert (= (and d!1641057 c!872164) b!5078500))

(assert (= (and d!1641057 (not c!872164)) b!5078501))

(assert (= (and b!5078501 c!872165) b!5078502))

(assert (= (and b!5078501 (not c!872165)) b!5078503))

(declare-fun m!6129278 () Bool)

(assert (=> b!5078503 m!6129278))

(declare-fun m!6129280 () Bool)

(assert (=> b!5078503 m!6129280))

(assert (=> b!5078503 m!6129278))

(assert (=> b!5078503 m!6129280))

(declare-fun m!6129284 () Bool)

(assert (=> b!5078503 m!6129284))

(declare-fun m!6129290 () Bool)

(assert (=> b!5078502 m!6129290))

(assert (=> b!5078042 d!1641057))

(declare-fun b!5078510 () Bool)

(declare-fun e!3168154 () Bool)

(declare-fun call!353881 () List!58574)

(declare-fun call!353879 () List!58574)

(assert (=> b!5078510 (= e!3168154 (= call!353881 call!353879))))

(declare-fun b!5078511 () Bool)

(assert (=> b!5078511 (= e!3168154 (= call!353881 call!353879))))

(declare-fun lt!2090554 () Bool)

(assert (=> b!5078511 (= lt!2090554 (appendAssoc!310 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))

(declare-fun bm!353873 () Bool)

(declare-fun call!353880 () List!58574)

(assert (=> bm!353873 (= call!353880 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))

(declare-fun call!353878 () List!58574)

(declare-fun bm!353874 () Bool)

(assert (=> bm!353874 (= call!353881 (++!12807 call!353878 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))

(declare-fun bm!353875 () Bool)

(assert (=> bm!353875 (= call!353878 (++!12807 (list!19021 (left!42840 xs!286)) (list!19021 (left!42840 (right!43170 xs!286)))))))

(declare-fun d!1641059 () Bool)

(assert (=> d!1641059 e!3168154))

(declare-fun c!872166 () Bool)

(assert (=> d!1641059 (= c!872166 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641059 (= (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))) true)))

(declare-fun bm!353876 () Bool)

(assert (=> bm!353876 (= call!353879 (++!12807 (list!19021 (left!42840 xs!286)) call!353880))))

(assert (= (and d!1641059 c!872166) b!5078510))

(assert (= (and d!1641059 (not c!872166)) b!5078511))

(assert (= (or b!5078510 b!5078511) bm!353875))

(assert (= (or b!5078510 b!5078511) bm!353873))

(assert (= (or b!5078510 b!5078511) bm!353876))

(assert (= (or b!5078510 b!5078511) bm!353874))

(assert (=> bm!353876 m!6128332))

(declare-fun m!6129300 () Bool)

(assert (=> bm!353876 m!6129300))

(assert (=> bm!353874 m!6128430))

(declare-fun m!6129306 () Bool)

(assert (=> bm!353874 m!6129306))

(assert (=> bm!353873 m!6128424))

(assert (=> bm!353873 m!6128430))

(declare-fun m!6129310 () Bool)

(assert (=> bm!353873 m!6129310))

(assert (=> b!5078511 m!6128424))

(assert (=> b!5078511 m!6128430))

(declare-fun m!6129316 () Bool)

(assert (=> b!5078511 m!6129316))

(assert (=> bm!353875 m!6128332))

(assert (=> bm!353875 m!6128424))

(declare-fun m!6129318 () Bool)

(assert (=> bm!353875 m!6129318))

(assert (=> b!5078042 d!1641059))

(declare-fun b!5078514 () Bool)

(declare-fun e!3168156 () List!58574)

(assert (=> b!5078514 (= e!3168156 Nil!58450)))

(declare-fun b!5078517 () Bool)

(declare-fun e!3168157 () List!58574)

(assert (=> b!5078517 (= e!3168157 (++!12807 (list!19021 (left!42840 (left!42840 (right!43170 xs!286)))) (list!19021 (right!43170 (left!42840 (right!43170 xs!286))))))))

(declare-fun b!5078516 () Bool)

(assert (=> b!5078516 (= e!3168157 (list!19023 (xs!18946 (left!42840 (right!43170 xs!286)))))))

(declare-fun d!1641065 () Bool)

(declare-fun c!872168 () Bool)

(assert (=> d!1641065 (= c!872168 ((_ is Empty!15580) (left!42840 (right!43170 xs!286))))))

(assert (=> d!1641065 (= (list!19021 (left!42840 (right!43170 xs!286))) e!3168156)))

(declare-fun b!5078515 () Bool)

(assert (=> b!5078515 (= e!3168156 e!3168157)))

(declare-fun c!872169 () Bool)

(assert (=> b!5078515 (= c!872169 ((_ is Leaf!25875) (left!42840 (right!43170 xs!286))))))

(assert (= (and d!1641065 c!872168) b!5078514))

(assert (= (and d!1641065 (not c!872168)) b!5078515))

(assert (= (and b!5078515 c!872169) b!5078516))

(assert (= (and b!5078515 (not c!872169)) b!5078517))

(declare-fun m!6129322 () Bool)

(assert (=> b!5078517 m!6129322))

(declare-fun m!6129324 () Bool)

(assert (=> b!5078517 m!6129324))

(assert (=> b!5078517 m!6129322))

(assert (=> b!5078517 m!6129324))

(declare-fun m!6129326 () Bool)

(assert (=> b!5078517 m!6129326))

(declare-fun m!6129328 () Bool)

(assert (=> b!5078516 m!6129328))

(assert (=> b!5078042 d!1641065))

(declare-fun b!5078525 () Bool)

(declare-fun lt!2090557 () List!58574)

(declare-fun e!3168161 () Bool)

(assert (=> b!5078525 (= e!3168161 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090557 (list!19021 (right!43170 (right!43170 xs!286))))))))

(declare-fun d!1641069 () Bool)

(assert (=> d!1641069 e!3168161))

(declare-fun res!2162234 () Bool)

(assert (=> d!1641069 (=> (not res!2162234) (not e!3168161))))

(assert (=> d!1641069 (= res!2162234 (= (content!10426 lt!2090557) ((_ map or) (content!10426 (list!19021 (right!43170 (right!43170 xs!286)))) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3168160 () List!58574)

(assert (=> d!1641069 (= lt!2090557 e!3168160)))

(declare-fun c!872171 () Bool)

(assert (=> d!1641069 (= c!872171 ((_ is Nil!58450) (list!19021 (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641069 (= (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)) lt!2090557)))

(declare-fun b!5078522 () Bool)

(assert (=> b!5078522 (= e!3168160 (list!19021 ys!41))))

(declare-fun b!5078524 () Bool)

(declare-fun res!2162235 () Bool)

(assert (=> b!5078524 (=> (not res!2162235) (not e!3168161))))

(assert (=> b!5078524 (= res!2162235 (= (size!39108 lt!2090557) (+ (size!39108 (list!19021 (right!43170 (right!43170 xs!286)))) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5078523 () Bool)

(assert (=> b!5078523 (= e!3168160 (Cons!58450 (h!64898 (list!19021 (right!43170 (right!43170 xs!286)))) (++!12807 (t!371381 (list!19021 (right!43170 (right!43170 xs!286)))) (list!19021 ys!41))))))

(assert (= (and d!1641069 c!872171) b!5078522))

(assert (= (and d!1641069 (not c!872171)) b!5078523))

(assert (= (and d!1641069 res!2162234) b!5078524))

(assert (= (and b!5078524 res!2162235) b!5078525))

(declare-fun m!6129344 () Bool)

(assert (=> d!1641069 m!6129344))

(assert (=> d!1641069 m!6128426))

(declare-fun m!6129346 () Bool)

(assert (=> d!1641069 m!6129346))

(assert (=> d!1641069 m!6128090))

(assert (=> d!1641069 m!6128322))

(declare-fun m!6129348 () Bool)

(assert (=> b!5078524 m!6129348))

(assert (=> b!5078524 m!6128426))

(declare-fun m!6129350 () Bool)

(assert (=> b!5078524 m!6129350))

(assert (=> b!5078524 m!6128090))

(assert (=> b!5078524 m!6128328))

(assert (=> b!5078523 m!6128090))

(declare-fun m!6129354 () Bool)

(assert (=> b!5078523 m!6129354))

(assert (=> b!5078042 d!1641069))

(declare-fun d!1641073 () Bool)

(declare-fun lt!2090558 () Bool)

(assert (=> d!1641073 (= lt!2090558 (isEmpty!31665 (list!19021 (left!42840 ys!41))))))

(assert (=> d!1641073 (= lt!2090558 (= (size!39109 (left!42840 ys!41)) 0))))

(assert (=> d!1641073 (= (isEmpty!31663 (left!42840 ys!41)) lt!2090558)))

(declare-fun bs!1190541 () Bool)

(assert (= bs!1190541 d!1641073))

(assert (=> bs!1190541 m!6128340))

(assert (=> bs!1190541 m!6128340))

(declare-fun m!6129362 () Bool)

(assert (=> bs!1190541 m!6129362))

(assert (=> bs!1190541 m!6129008))

(assert (=> b!5077688 d!1641073))

(declare-fun d!1641077 () Bool)

(declare-fun lt!2090559 () Bool)

(assert (=> d!1641077 (= lt!2090559 (isEmpty!31665 (list!19021 (right!43170 xs!286))))))

(assert (=> d!1641077 (= lt!2090559 (= (size!39109 (right!43170 xs!286)) 0))))

(assert (=> d!1641077 (= (isEmpty!31663 (right!43170 xs!286)) lt!2090559)))

(declare-fun bs!1190542 () Bool)

(assert (= bs!1190542 d!1641077))

(assert (=> bs!1190542 m!6128334))

(assert (=> bs!1190542 m!6128334))

(declare-fun m!6129364 () Bool)

(assert (=> bs!1190542 m!6129364))

(assert (=> bs!1190542 m!6129238))

(assert (=> b!5077863 d!1641077))

(assert (=> b!5078063 d!1640677))

(declare-fun d!1641079 () Bool)

(assert (=> d!1641079 (= (height!2157 (right!43170 (left!42840 ys!41))) (ite ((_ is Empty!15580) (right!43170 (left!42840 ys!41))) 0 (ite ((_ is Leaf!25875) (right!43170 (left!42840 ys!41))) 1 (cheight!15791 (right!43170 (left!42840 ys!41))))))))

(assert (=> b!5078063 d!1641079))

(declare-fun d!1641081 () Bool)

(declare-fun lt!2090560 () Int)

(assert (=> d!1641081 (= lt!2090560 (size!39108 (list!19021 lt!2090455)))))

(assert (=> d!1641081 (= lt!2090560 (ite ((_ is Empty!15580) lt!2090455) 0 (ite ((_ is Leaf!25875) lt!2090455) (csize!31391 lt!2090455) (csize!31390 lt!2090455))))))

(assert (=> d!1641081 (= (size!39109 lt!2090455) lt!2090560)))

(declare-fun bs!1190543 () Bool)

(assert (= bs!1190543 d!1641081))

(assert (=> bs!1190543 m!6128460))

(assert (=> bs!1190543 m!6128460))

(assert (=> bs!1190543 m!6128626))

(assert (=> b!5078063 d!1641081))

(declare-fun d!1641085 () Bool)

(declare-fun lt!2090561 () Int)

(assert (=> d!1641085 (= lt!2090561 (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641085 (= lt!2090561 (ite ((_ is Empty!15580) (right!43170 (left!42840 ys!41))) 0 (ite ((_ is Leaf!25875) (right!43170 (left!42840 ys!41))) (csize!31391 (right!43170 (left!42840 ys!41))) (csize!31390 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1641085 (= (size!39109 (right!43170 (left!42840 ys!41))) lt!2090561)))

(declare-fun bs!1190544 () Bool)

(assert (= bs!1190544 d!1641085))

(assert (=> bs!1190544 m!6128436))

(assert (=> bs!1190544 m!6128436))

(assert (=> bs!1190544 m!6128628))

(assert (=> b!5078063 d!1641085))

(declare-fun d!1641087 () Bool)

(assert (=> d!1641087 (= (max!0 (height!2157 lt!2090455) (height!2157 (right!43170 (left!42840 ys!41)))) (ite (< (height!2157 lt!2090455) (height!2157 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 (left!42840 ys!41))) (height!2157 lt!2090455)))))

(assert (=> b!5078063 d!1641087))

(declare-fun d!1641089 () Bool)

(assert (=> d!1641089 (= (list!19023 (xs!18946 lt!2090452)) (innerList!15668 (xs!18946 lt!2090452)))))

(assert (=> b!5077923 d!1641089))

(declare-fun d!1641091 () Bool)

(declare-fun lt!2090562 () Bool)

(assert (=> d!1641091 (= lt!2090562 (isEmpty!31665 (list!19021 (right!43170 lt!2090452))))))

(assert (=> d!1641091 (= lt!2090562 (= (size!39109 (right!43170 lt!2090452)) 0))))

(assert (=> d!1641091 (= (isEmpty!31663 (right!43170 lt!2090452)) lt!2090562)))

(declare-fun bs!1190545 () Bool)

(assert (= bs!1190545 d!1641091))

(assert (=> bs!1190545 m!6128276))

(assert (=> bs!1190545 m!6128276))

(declare-fun m!6129380 () Bool)

(assert (=> bs!1190545 m!6129380))

(declare-fun m!6129382 () Bool)

(assert (=> bs!1190545 m!6129382))

(assert (=> b!5077857 d!1641091))

(declare-fun b!5078537 () Bool)

(declare-fun e!3168169 () Bool)

(declare-fun call!353889 () List!58574)

(declare-fun call!353886 () List!58574)

(assert (=> b!5078537 (= e!3168169 (= call!353889 call!353886))))

(declare-fun b!5078538 () Bool)

(assert (=> b!5078538 (= e!3168169 (= call!353889 call!353886))))

(declare-fun lt!2090565 () Bool)

(assert (=> b!5078538 (= lt!2090565 (appendAssoc!310 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))

(declare-fun bm!353877 () Bool)

(declare-fun call!353887 () List!58574)

(assert (=> bm!353877 (= call!353887 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))

(declare-fun bm!353878 () Bool)

(declare-fun call!353884 () List!58574)

(assert (=> bm!353878 (= call!353889 (++!12807 call!353884 (list!19021 ys!41)))))

(declare-fun bm!353879 () Bool)

(assert (=> bm!353879 (= call!353884 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286)))))))

(declare-fun d!1641095 () Bool)

(assert (=> d!1641095 e!3168169))

(declare-fun c!872178 () Bool)

(assert (=> d!1641095 (= c!872178 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641095 (= (appendAssoc!310 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)) true)))

(declare-fun bm!353880 () Bool)

(assert (=> bm!353880 (= call!353886 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) call!353887))))

(assert (= (and d!1641095 c!872178) b!5078537))

(assert (= (and d!1641095 (not c!872178)) b!5078538))

(assert (= (or b!5078537 b!5078538) bm!353879))

(assert (= (or b!5078537 b!5078538) bm!353877))

(assert (= (or b!5078537 b!5078538) bm!353880))

(assert (= (or b!5078537 b!5078538) bm!353878))

(assert (=> bm!353880 m!6128424))

(declare-fun m!6129384 () Bool)

(assert (=> bm!353880 m!6129384))

(assert (=> bm!353878 m!6128090))

(declare-fun m!6129386 () Bool)

(assert (=> bm!353878 m!6129386))

(assert (=> bm!353877 m!6128426))

(assert (=> bm!353877 m!6128090))

(assert (=> bm!353877 m!6128430))

(assert (=> b!5078538 m!6128426))

(assert (=> b!5078538 m!6128090))

(declare-fun m!6129388 () Bool)

(assert (=> b!5078538 m!6129388))

(assert (=> bm!353879 m!6128424))

(assert (=> bm!353879 m!6128426))

(assert (=> bm!353879 m!6128982))

(assert (=> b!5078040 d!1641095))

(assert (=> b!5078040 d!1641065))

(assert (=> b!5078040 d!1641057))

(assert (=> b!5078040 d!1640729))

(assert (=> b!5078044 d!1640727))

(assert (=> b!5078044 d!1640771))

(assert (=> b!5078044 d!1640813))

(declare-fun b!5078560 () Bool)

(declare-fun e!3168178 () Bool)

(declare-fun call!353905 () List!58574)

(declare-fun call!353903 () List!58574)

(assert (=> b!5078560 (= e!3168178 (= call!353905 call!353903))))

(declare-fun b!5078561 () Bool)

(assert (=> b!5078561 (= e!3168178 (= call!353905 call!353903))))

(declare-fun lt!2090568 () Bool)

(assert (=> b!5078561 (= lt!2090568 (appendAssoc!310 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353897 () Bool)

(declare-fun call!353904 () List!58574)

(assert (=> bm!353897 (= call!353904 (++!12807 (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353898 () Bool)

(declare-fun call!353902 () List!58574)

(assert (=> bm!353898 (= call!353905 (++!12807 call!353902 (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353899 () Bool)

(assert (=> bm!353899 (= call!353902 (++!12807 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun d!1641097 () Bool)

(assert (=> d!1641097 e!3168178))

(declare-fun c!872185 () Bool)

(assert (=> d!1641097 (= c!872185 ((_ is Nil!58450) (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641097 (= (appendAssoc!310 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))) true)))

(declare-fun bm!353900 () Bool)

(assert (=> bm!353900 (= call!353903 (++!12807 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))) call!353904))))

(assert (= (and d!1641097 c!872185) b!5078560))

(assert (= (and d!1641097 (not c!872185)) b!5078561))

(assert (= (or b!5078560 b!5078561) bm!353899))

(assert (= (or b!5078560 b!5078561) bm!353897))

(assert (= (or b!5078560 b!5078561) bm!353900))

(assert (= (or b!5078560 b!5078561) bm!353898))

(assert (=> bm!353900 m!6128230))

(declare-fun m!6129390 () Bool)

(assert (=> bm!353900 m!6129390))

(assert (=> bm!353898 m!6128342))

(declare-fun m!6129392 () Bool)

(assert (=> bm!353898 m!6129392))

(assert (=> bm!353897 m!6128436))

(assert (=> bm!353897 m!6128342))

(declare-fun m!6129394 () Bool)

(assert (=> bm!353897 m!6129394))

(assert (=> b!5078561 m!6128436))

(assert (=> b!5078561 m!6128342))

(declare-fun m!6129396 () Bool)

(assert (=> b!5078561 m!6129396))

(assert (=> bm!353899 m!6128230))

(assert (=> bm!353899 m!6128436))

(declare-fun m!6129398 () Bool)

(assert (=> bm!353899 m!6129398))

(assert (=> b!5078044 d!1641097))

(assert (=> b!5078044 d!1640981))

(assert (=> b!5078044 d!1640863))

(assert (=> b!5077809 d!1640797))

(assert (=> b!5077809 d!1640701))

(declare-fun b!5078562 () Bool)

(declare-fun res!2162249 () Bool)

(declare-fun e!3168180 () Bool)

(assert (=> b!5078562 (=> (not res!2162249) (not e!3168180))))

(assert (=> b!5078562 (= res!2162249 (isBalanced!4442 (left!42840 (right!43170 ys!41))))))

(declare-fun b!5078563 () Bool)

(declare-fun res!2162245 () Bool)

(assert (=> b!5078563 (=> (not res!2162245) (not e!3168180))))

(assert (=> b!5078563 (= res!2162245 (<= (- (height!2157 (left!42840 (right!43170 ys!41))) (height!2157 (right!43170 (right!43170 ys!41)))) 1))))

(declare-fun d!1641099 () Bool)

(declare-fun res!2162248 () Bool)

(declare-fun e!3168179 () Bool)

(assert (=> d!1641099 (=> res!2162248 e!3168179)))

(assert (=> d!1641099 (= res!2162248 (not ((_ is Node!15580) (right!43170 ys!41))))))

(assert (=> d!1641099 (= (isBalanced!4442 (right!43170 ys!41)) e!3168179)))

(declare-fun b!5078564 () Bool)

(declare-fun res!2162246 () Bool)

(assert (=> b!5078564 (=> (not res!2162246) (not e!3168180))))

(assert (=> b!5078564 (= res!2162246 (isBalanced!4442 (right!43170 (right!43170 ys!41))))))

(declare-fun b!5078565 () Bool)

(assert (=> b!5078565 (= e!3168180 (not (isEmpty!31663 (right!43170 (right!43170 ys!41)))))))

(declare-fun b!5078566 () Bool)

(declare-fun res!2162244 () Bool)

(assert (=> b!5078566 (=> (not res!2162244) (not e!3168180))))

(assert (=> b!5078566 (= res!2162244 (not (isEmpty!31663 (left!42840 (right!43170 ys!41)))))))

(declare-fun b!5078567 () Bool)

(assert (=> b!5078567 (= e!3168179 e!3168180)))

(declare-fun res!2162247 () Bool)

(assert (=> b!5078567 (=> (not res!2162247) (not e!3168180))))

(assert (=> b!5078567 (= res!2162247 (<= (- 1) (- (height!2157 (left!42840 (right!43170 ys!41))) (height!2157 (right!43170 (right!43170 ys!41))))))))

(assert (= (and d!1641099 (not res!2162248)) b!5078567))

(assert (= (and b!5078567 res!2162247) b!5078563))

(assert (= (and b!5078563 res!2162245) b!5078562))

(assert (= (and b!5078562 res!2162249) b!5078564))

(assert (= (and b!5078564 res!2162246) b!5078566))

(assert (= (and b!5078566 res!2162244) b!5078565))

(declare-fun m!6129400 () Bool)

(assert (=> b!5078564 m!6129400))

(declare-fun m!6129402 () Bool)

(assert (=> b!5078566 m!6129402))

(declare-fun m!6129404 () Bool)

(assert (=> b!5078565 m!6129404))

(assert (=> b!5078567 m!6129076))

(assert (=> b!5078567 m!6129078))

(declare-fun m!6129406 () Bool)

(assert (=> b!5078562 m!6129406))

(assert (=> b!5078563 m!6129076))

(assert (=> b!5078563 m!6129078))

(assert (=> b!5077686 d!1641099))

(declare-fun d!1641101 () Bool)

(assert (=> d!1641101 (= (height!2157 (left!42840 xs!286)) (ite ((_ is Empty!15580) (left!42840 xs!286)) 0 (ite ((_ is Leaf!25875) (left!42840 xs!286)) 1 (cheight!15791 (left!42840 xs!286)))))))

(assert (=> b!5077861 d!1641101))

(declare-fun d!1641103 () Bool)

(assert (=> d!1641103 (= (height!2157 (right!43170 xs!286)) (ite ((_ is Empty!15580) (right!43170 xs!286)) 0 (ite ((_ is Leaf!25875) (right!43170 xs!286)) 1 (cheight!15791 (right!43170 xs!286)))))))

(assert (=> b!5077861 d!1641103))

(assert (=> b!5077646 d!1640731))

(assert (=> b!5077646 d!1640735))

(declare-fun d!1641105 () Bool)

(assert (=> d!1641105 (= (height!2157 (ite c!871981 (right!43170 xs!286) (left!42840 (left!42840 ys!41)))) (ite ((_ is Empty!15580) (ite c!871981 (right!43170 xs!286) (left!42840 (left!42840 ys!41)))) 0 (ite ((_ is Leaf!25875) (ite c!871981 (right!43170 xs!286) (left!42840 (left!42840 ys!41)))) 1 (cheight!15791 (ite c!871981 (right!43170 xs!286) (left!42840 (left!42840 ys!41)))))))))

(assert (=> bm!353751 d!1641105))

(declare-fun d!1641107 () Bool)

(declare-fun c!872186 () Bool)

(assert (=> d!1641107 (= c!872186 ((_ is Node!15580) (left!42840 (right!43170 ys!41))))))

(declare-fun e!3168181 () Bool)

(assert (=> d!1641107 (= (inv!77643 (left!42840 (right!43170 ys!41))) e!3168181)))

(declare-fun b!5078568 () Bool)

(assert (=> b!5078568 (= e!3168181 (inv!77647 (left!42840 (right!43170 ys!41))))))

(declare-fun b!5078569 () Bool)

(declare-fun e!3168182 () Bool)

(assert (=> b!5078569 (= e!3168181 e!3168182)))

(declare-fun res!2162250 () Bool)

(assert (=> b!5078569 (= res!2162250 (not ((_ is Leaf!25875) (left!42840 (right!43170 ys!41)))))))

(assert (=> b!5078569 (=> res!2162250 e!3168182)))

(declare-fun b!5078570 () Bool)

(assert (=> b!5078570 (= e!3168182 (inv!77648 (left!42840 (right!43170 ys!41))))))

(assert (= (and d!1641107 c!872186) b!5078568))

(assert (= (and d!1641107 (not c!872186)) b!5078569))

(assert (= (and b!5078569 (not res!2162250)) b!5078570))

(declare-fun m!6129408 () Bool)

(assert (=> b!5078568 m!6129408))

(declare-fun m!6129410 () Bool)

(assert (=> b!5078570 m!6129410))

(assert (=> b!5078075 d!1641107))

(declare-fun d!1641109 () Bool)

(declare-fun c!872187 () Bool)

(assert (=> d!1641109 (= c!872187 ((_ is Node!15580) (right!43170 (right!43170 ys!41))))))

(declare-fun e!3168183 () Bool)

(assert (=> d!1641109 (= (inv!77643 (right!43170 (right!43170 ys!41))) e!3168183)))

(declare-fun b!5078571 () Bool)

(assert (=> b!5078571 (= e!3168183 (inv!77647 (right!43170 (right!43170 ys!41))))))

(declare-fun b!5078572 () Bool)

(declare-fun e!3168184 () Bool)

(assert (=> b!5078572 (= e!3168183 e!3168184)))

(declare-fun res!2162251 () Bool)

(assert (=> b!5078572 (= res!2162251 (not ((_ is Leaf!25875) (right!43170 (right!43170 ys!41)))))))

(assert (=> b!5078572 (=> res!2162251 e!3168184)))

(declare-fun b!5078573 () Bool)

(assert (=> b!5078573 (= e!3168184 (inv!77648 (right!43170 (right!43170 ys!41))))))

(assert (= (and d!1641109 c!872187) b!5078571))

(assert (= (and d!1641109 (not c!872187)) b!5078572))

(assert (= (and b!5078572 (not res!2162251)) b!5078573))

(declare-fun m!6129412 () Bool)

(assert (=> b!5078571 m!6129412))

(declare-fun m!6129414 () Bool)

(assert (=> b!5078573 m!6129414))

(assert (=> b!5078075 d!1641109))

(declare-fun b!5078574 () Bool)

(declare-fun res!2162257 () Bool)

(declare-fun e!3168186 () Bool)

(assert (=> b!5078574 (=> (not res!2162257) (not e!3168186))))

(assert (=> b!5078574 (= res!2162257 (isBalanced!4442 (left!42840 (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5078575 () Bool)

(declare-fun res!2162253 () Bool)

(assert (=> b!5078575 (=> (not res!2162253) (not e!3168186))))

(assert (=> b!5078575 (= res!2162253 (<= (- (height!2157 (left!42840 (left!42840 (left!42840 ys!41)))) (height!2157 (right!43170 (left!42840 (left!42840 ys!41))))) 1))))

(declare-fun d!1641111 () Bool)

(declare-fun res!2162256 () Bool)

(declare-fun e!3168185 () Bool)

(assert (=> d!1641111 (=> res!2162256 e!3168185)))

(assert (=> d!1641111 (= res!2162256 (not ((_ is Node!15580) (left!42840 (left!42840 ys!41)))))))

(assert (=> d!1641111 (= (isBalanced!4442 (left!42840 (left!42840 ys!41))) e!3168185)))

(declare-fun b!5078576 () Bool)

(declare-fun res!2162254 () Bool)

(assert (=> b!5078576 (=> (not res!2162254) (not e!3168186))))

(assert (=> b!5078576 (= res!2162254 (isBalanced!4442 (right!43170 (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5078577 () Bool)

(assert (=> b!5078577 (= e!3168186 (not (isEmpty!31663 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078578 () Bool)

(declare-fun res!2162252 () Bool)

(assert (=> b!5078578 (=> (not res!2162252) (not e!3168186))))

(assert (=> b!5078578 (= res!2162252 (not (isEmpty!31663 (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078579 () Bool)

(assert (=> b!5078579 (= e!3168185 e!3168186)))

(declare-fun res!2162255 () Bool)

(assert (=> b!5078579 (=> (not res!2162255) (not e!3168186))))

(assert (=> b!5078579 (= res!2162255 (<= (- 1) (- (height!2157 (left!42840 (left!42840 (left!42840 ys!41)))) (height!2157 (right!43170 (left!42840 (left!42840 ys!41)))))))))

(assert (= (and d!1641111 (not res!2162256)) b!5078579))

(assert (= (and b!5078579 res!2162255) b!5078575))

(assert (= (and b!5078575 res!2162253) b!5078574))

(assert (= (and b!5078574 res!2162257) b!5078576))

(assert (= (and b!5078576 res!2162254) b!5078578))

(assert (= (and b!5078578 res!2162252) b!5078577))

(declare-fun m!6129436 () Bool)

(assert (=> b!5078576 m!6129436))

(declare-fun m!6129440 () Bool)

(assert (=> b!5078578 m!6129440))

(declare-fun m!6129444 () Bool)

(assert (=> b!5078577 m!6129444))

(declare-fun m!6129448 () Bool)

(assert (=> b!5078579 m!6129448))

(declare-fun m!6129450 () Bool)

(assert (=> b!5078579 m!6129450))

(declare-fun m!6129452 () Bool)

(assert (=> b!5078574 m!6129452))

(assert (=> b!5078575 m!6129448))

(assert (=> b!5078575 m!6129450))

(assert (=> b!5077812 d!1641111))

(assert (=> b!5077865 d!1641101))

(assert (=> b!5077865 d!1641103))

(assert (=> b!5077859 d!1641051))

(assert (=> b!5077859 d!1641055))

(declare-fun d!1641113 () Bool)

(declare-fun lt!2090569 () Int)

(assert (=> d!1641113 (>= lt!2090569 0)))

(declare-fun e!3168187 () Int)

(assert (=> d!1641113 (= lt!2090569 e!3168187)))

(declare-fun c!872188 () Bool)

(assert (=> d!1641113 (= c!872188 ((_ is Nil!58450) lt!2090486))))

(assert (=> d!1641113 (= (size!39108 lt!2090486) lt!2090569)))

(declare-fun b!5078580 () Bool)

(assert (=> b!5078580 (= e!3168187 0)))

(declare-fun b!5078581 () Bool)

(assert (=> b!5078581 (= e!3168187 (+ 1 (size!39108 (t!371381 lt!2090486))))))

(assert (= (and d!1641113 c!872188) b!5078580))

(assert (= (and d!1641113 (not c!872188)) b!5078581))

(declare-fun m!6129458 () Bool)

(assert (=> b!5078581 m!6129458))

(assert (=> b!5077947 d!1641113))

(declare-fun d!1641115 () Bool)

(declare-fun lt!2090570 () Int)

(assert (=> d!1641115 (>= lt!2090570 0)))

(declare-fun e!3168188 () Int)

(assert (=> d!1641115 (= lt!2090570 e!3168188)))

(declare-fun c!872189 () Bool)

(assert (=> d!1641115 (= c!872189 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1641115 (= (size!39108 (list!19021 xs!286)) lt!2090570)))

(declare-fun b!5078582 () Bool)

(assert (=> b!5078582 (= e!3168188 0)))

(declare-fun b!5078583 () Bool)

(assert (=> b!5078583 (= e!3168188 (+ 1 (size!39108 (t!371381 (list!19021 xs!286)))))))

(assert (= (and d!1641115 c!872189) b!5078582))

(assert (= (and d!1641115 (not c!872189)) b!5078583))

(assert (=> b!5078583 m!6129000))

(assert (=> b!5077947 d!1641115))

(declare-fun d!1641117 () Bool)

(declare-fun lt!2090571 () Int)

(assert (=> d!1641117 (>= lt!2090571 0)))

(declare-fun e!3168189 () Int)

(assert (=> d!1641117 (= lt!2090571 e!3168189)))

(declare-fun c!872190 () Bool)

(assert (=> d!1641117 (= c!872190 ((_ is Nil!58450) (list!19021 ys!41)))))

(assert (=> d!1641117 (= (size!39108 (list!19021 ys!41)) lt!2090571)))

(declare-fun b!5078584 () Bool)

(assert (=> b!5078584 (= e!3168189 0)))

(declare-fun b!5078585 () Bool)

(assert (=> b!5078585 (= e!3168189 (+ 1 (size!39108 (t!371381 (list!19021 ys!41)))))))

(assert (= (and d!1641117 c!872190) b!5078584))

(assert (= (and d!1641117 (not c!872190)) b!5078585))

(declare-fun m!6129468 () Bool)

(assert (=> b!5078585 m!6129468))

(assert (=> b!5077947 d!1641117))

(declare-fun d!1641119 () Bool)

(assert (=> d!1641119 (= (height!2157 (ite c!871981 (left!42840 xs!286) lt!2090468)) (ite ((_ is Empty!15580) (ite c!871981 (left!42840 xs!286) lt!2090468)) 0 (ite ((_ is Leaf!25875) (ite c!871981 (left!42840 xs!286) lt!2090468)) 1 (cheight!15791 (ite c!871981 (left!42840 xs!286) lt!2090468)))))))

(assert (=> bm!353749 d!1641119))

(declare-fun b!5078589 () Bool)

(declare-fun e!3168192 () List!58574)

(assert (=> b!5078589 (= e!3168192 Nil!58450)))

(declare-fun b!5078592 () Bool)

(declare-fun e!3168193 () List!58574)

(assert (=> b!5078592 (= e!3168193 (++!12807 (list!19021 (left!42840 lt!2090492)) (list!19021 (right!43170 lt!2090492))))))

(declare-fun b!5078591 () Bool)

(assert (=> b!5078591 (= e!3168193 (list!19023 (xs!18946 lt!2090492)))))

(declare-fun d!1641123 () Bool)

(declare-fun c!872192 () Bool)

(assert (=> d!1641123 (= c!872192 ((_ is Empty!15580) lt!2090492))))

(assert (=> d!1641123 (= (list!19021 lt!2090492) e!3168192)))

(declare-fun b!5078590 () Bool)

(assert (=> b!5078590 (= e!3168192 e!3168193)))

(declare-fun c!872193 () Bool)

(assert (=> b!5078590 (= c!872193 ((_ is Leaf!25875) lt!2090492))))

(assert (= (and d!1641123 c!872192) b!5078589))

(assert (= (and d!1641123 (not c!872192)) b!5078590))

(assert (= (and b!5078590 c!872193) b!5078591))

(assert (= (and b!5078590 (not c!872193)) b!5078592))

(declare-fun m!6129474 () Bool)

(assert (=> b!5078592 m!6129474))

(declare-fun m!6129476 () Bool)

(assert (=> b!5078592 m!6129476))

(assert (=> b!5078592 m!6129474))

(assert (=> b!5078592 m!6129476))

(declare-fun m!6129478 () Bool)

(assert (=> b!5078592 m!6129478))

(declare-fun m!6129480 () Bool)

(assert (=> b!5078591 m!6129480))

(assert (=> d!1640749 d!1641123))

(declare-fun lt!2090572 () List!58574)

(declare-fun e!3168197 () Bool)

(declare-fun b!5078599 () Bool)

(assert (=> b!5078599 (= e!3168197 (or (not (= (list!19021 (right!43170 ys!41)) Nil!58450)) (= lt!2090572 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(declare-fun d!1641127 () Bool)

(assert (=> d!1641127 e!3168197))

(declare-fun res!2162260 () Bool)

(assert (=> d!1641127 (=> (not res!2162260) (not e!3168197))))

(assert (=> d!1641127 (= res!2162260 (= (content!10426 lt!2090572) ((_ map or) (content!10426 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (content!10426 (list!19021 (right!43170 ys!41))))))))

(declare-fun e!3168196 () List!58574)

(assert (=> d!1641127 (= lt!2090572 e!3168196)))

(declare-fun c!872195 () Bool)

(assert (=> d!1641127 (= c!872195 ((_ is Nil!58450) (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1641127 (= (++!12807 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) (list!19021 (right!43170 ys!41))) lt!2090572)))

(declare-fun b!5078596 () Bool)

(assert (=> b!5078596 (= e!3168196 (list!19021 (right!43170 ys!41)))))

(declare-fun b!5078598 () Bool)

(declare-fun res!2162261 () Bool)

(assert (=> b!5078598 (=> (not res!2162261) (not e!3168197))))

(assert (=> b!5078598 (= res!2162261 (= (size!39108 lt!2090572) (+ (size!39108 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (size!39108 (list!19021 (right!43170 ys!41))))))))

(declare-fun b!5078597 () Bool)

(assert (=> b!5078597 (= e!3168196 (Cons!58450 (h!64898 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (++!12807 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (list!19021 (right!43170 ys!41)))))))

(assert (= (and d!1641127 c!872195) b!5078596))

(assert (= (and d!1641127 (not c!872195)) b!5078597))

(assert (= (and d!1641127 res!2162260) b!5078598))

(assert (= (and b!5078598 res!2162261) b!5078599))

(declare-fun m!6129488 () Bool)

(assert (=> d!1641127 m!6129488))

(assert (=> d!1641127 m!6128446))

(declare-fun m!6129494 () Bool)

(assert (=> d!1641127 m!6129494))

(assert (=> d!1641127 m!6128342))

(assert (=> d!1641127 m!6128514))

(declare-fun m!6129498 () Bool)

(assert (=> b!5078598 m!6129498))

(assert (=> b!5078598 m!6128446))

(assert (=> b!5078598 m!6129270))

(assert (=> b!5078598 m!6128342))

(assert (=> b!5078598 m!6128522))

(assert (=> b!5078597 m!6128342))

(declare-fun m!6129500 () Bool)

(assert (=> b!5078597 m!6129500))

(assert (=> d!1640749 d!1641127))

(declare-fun b!5078608 () Bool)

(declare-fun e!3168202 () List!58574)

(assert (=> b!5078608 (= e!3168202 Nil!58450)))

(declare-fun b!5078611 () Bool)

(declare-fun e!3168203 () List!58574)

(assert (=> b!5078611 (= e!3168203 (++!12807 (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5078610 () Bool)

(assert (=> b!5078610 (= e!3168203 (list!19023 (xs!18946 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(declare-fun d!1641133 () Bool)

(declare-fun c!872199 () Bool)

(assert (=> d!1641133 (= c!872199 ((_ is Empty!15580) (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641133 (= (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))) e!3168202)))

(declare-fun b!5078609 () Bool)

(assert (=> b!5078609 (= e!3168202 e!3168203)))

(declare-fun c!872200 () Bool)

(assert (=> b!5078609 (= c!872200 ((_ is Leaf!25875) (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))

(assert (= (and d!1641133 c!872199) b!5078608))

(assert (= (and d!1641133 (not c!872199)) b!5078609))

(assert (= (and b!5078609 c!872200) b!5078610))

(assert (= (and b!5078609 (not c!872200)) b!5078611))

(declare-fun m!6129502 () Bool)

(assert (=> b!5078611 m!6129502))

(declare-fun m!6129504 () Bool)

(assert (=> b!5078611 m!6129504))

(assert (=> b!5078611 m!6129502))

(assert (=> b!5078611 m!6129504))

(declare-fun m!6129510 () Bool)

(assert (=> b!5078611 m!6129510))

(declare-fun m!6129514 () Bool)

(assert (=> b!5078610 m!6129514))

(assert (=> d!1640749 d!1641133))

(assert (=> d!1640749 d!1640771))

(declare-fun b!5078616 () Bool)

(declare-fun e!3168206 () Bool)

(declare-fun tp!1416824 () Bool)

(assert (=> b!5078616 (= e!3168206 (and tp_is_empty!37083 tp!1416824))))

(assert (=> b!5078083 (= tp!1416817 e!3168206)))

(assert (= (and b!5078083 ((_ is Cons!58450) (t!371381 (innerList!15668 (xs!18946 xs!286))))) b!5078616))

(declare-fun e!3168207 () Bool)

(declare-fun tp!1416827 () Bool)

(declare-fun tp!1416825 () Bool)

(declare-fun b!5078617 () Bool)

(assert (=> b!5078617 (= e!3168207 (and (inv!77643 (left!42840 (left!42840 (right!43170 xs!286)))) tp!1416825 (inv!77643 (right!43170 (left!42840 (right!43170 xs!286)))) tp!1416827))))

(declare-fun b!5078619 () Bool)

(declare-fun e!3168208 () Bool)

(declare-fun tp!1416826 () Bool)

(assert (=> b!5078619 (= e!3168208 tp!1416826)))

(declare-fun b!5078618 () Bool)

(assert (=> b!5078618 (= e!3168207 (and (inv!77644 (xs!18946 (left!42840 (right!43170 xs!286)))) e!3168208))))

(assert (=> b!5078087 (= tp!1416821 (and (inv!77643 (left!42840 (right!43170 xs!286))) e!3168207))))

(assert (= (and b!5078087 ((_ is Node!15580) (left!42840 (right!43170 xs!286)))) b!5078617))

(assert (= b!5078618 b!5078619))

(assert (= (and b!5078087 ((_ is Leaf!25875) (left!42840 (right!43170 xs!286)))) b!5078618))

(declare-fun m!6129528 () Bool)

(assert (=> b!5078617 m!6129528))

(declare-fun m!6129530 () Bool)

(assert (=> b!5078617 m!6129530))

(declare-fun m!6129532 () Bool)

(assert (=> b!5078618 m!6129532))

(assert (=> b!5078087 m!6128492))

(declare-fun tp!1416828 () Bool)

(declare-fun b!5078626 () Bool)

(declare-fun e!3168211 () Bool)

(declare-fun tp!1416830 () Bool)

(assert (=> b!5078626 (= e!3168211 (and (inv!77643 (left!42840 (right!43170 (right!43170 xs!286)))) tp!1416828 (inv!77643 (right!43170 (right!43170 (right!43170 xs!286)))) tp!1416830))))

(declare-fun b!5078628 () Bool)

(declare-fun e!3168212 () Bool)

(declare-fun tp!1416829 () Bool)

(assert (=> b!5078628 (= e!3168212 tp!1416829)))

(declare-fun b!5078627 () Bool)

(assert (=> b!5078627 (= e!3168211 (and (inv!77644 (xs!18946 (right!43170 (right!43170 xs!286)))) e!3168212))))

(assert (=> b!5078087 (= tp!1416823 (and (inv!77643 (right!43170 (right!43170 xs!286))) e!3168211))))

(assert (= (and b!5078087 ((_ is Node!15580) (right!43170 (right!43170 xs!286)))) b!5078626))

(assert (= b!5078627 b!5078628))

(assert (= (and b!5078087 ((_ is Leaf!25875) (right!43170 (right!43170 xs!286)))) b!5078627))

(declare-fun m!6129534 () Bool)

(assert (=> b!5078626 m!6129534))

(declare-fun m!6129538 () Bool)

(assert (=> b!5078626 m!6129538))

(declare-fun m!6129540 () Bool)

(assert (=> b!5078627 m!6129540))

(assert (=> b!5078087 m!6128494))

(declare-fun tp!1416831 () Bool)

(declare-fun tp!1416833 () Bool)

(declare-fun b!5078629 () Bool)

(declare-fun e!3168213 () Bool)

(assert (=> b!5078629 (= e!3168213 (and (inv!77643 (left!42840 (left!42840 (right!43170 ys!41)))) tp!1416831 (inv!77643 (right!43170 (left!42840 (right!43170 ys!41)))) tp!1416833))))

(declare-fun b!5078631 () Bool)

(declare-fun e!3168214 () Bool)

(declare-fun tp!1416832 () Bool)

(assert (=> b!5078631 (= e!3168214 tp!1416832)))

(declare-fun b!5078630 () Bool)

(assert (=> b!5078630 (= e!3168213 (and (inv!77644 (xs!18946 (left!42840 (right!43170 ys!41)))) e!3168214))))

(assert (=> b!5078075 (= tp!1416811 (and (inv!77643 (left!42840 (right!43170 ys!41))) e!3168213))))

(assert (= (and b!5078075 ((_ is Node!15580) (left!42840 (right!43170 ys!41)))) b!5078629))

(assert (= b!5078630 b!5078631))

(assert (= (and b!5078075 ((_ is Leaf!25875) (left!42840 (right!43170 ys!41)))) b!5078630))

(declare-fun m!6129546 () Bool)

(assert (=> b!5078629 m!6129546))

(declare-fun m!6129548 () Bool)

(assert (=> b!5078629 m!6129548))

(declare-fun m!6129550 () Bool)

(assert (=> b!5078630 m!6129550))

(assert (=> b!5078075 m!6128480))

(declare-fun tp!1416834 () Bool)

(declare-fun tp!1416836 () Bool)

(declare-fun e!3168217 () Bool)

(declare-fun b!5078638 () Bool)

(assert (=> b!5078638 (= e!3168217 (and (inv!77643 (left!42840 (right!43170 (right!43170 ys!41)))) tp!1416834 (inv!77643 (right!43170 (right!43170 (right!43170 ys!41)))) tp!1416836))))

(declare-fun b!5078640 () Bool)

(declare-fun e!3168218 () Bool)

(declare-fun tp!1416835 () Bool)

(assert (=> b!5078640 (= e!3168218 tp!1416835)))

(declare-fun b!5078639 () Bool)

(assert (=> b!5078639 (= e!3168217 (and (inv!77644 (xs!18946 (right!43170 (right!43170 ys!41)))) e!3168218))))

(assert (=> b!5078075 (= tp!1416813 (and (inv!77643 (right!43170 (right!43170 ys!41))) e!3168217))))

(assert (= (and b!5078075 ((_ is Node!15580) (right!43170 (right!43170 ys!41)))) b!5078638))

(assert (= b!5078639 b!5078640))

(assert (= (and b!5078075 ((_ is Leaf!25875) (right!43170 (right!43170 ys!41)))) b!5078639))

(declare-fun m!6129552 () Bool)

(assert (=> b!5078638 m!6129552))

(declare-fun m!6129554 () Bool)

(assert (=> b!5078638 m!6129554))

(declare-fun m!6129556 () Bool)

(assert (=> b!5078639 m!6129556))

(assert (=> b!5078075 m!6128482))

(declare-fun b!5078641 () Bool)

(declare-fun e!3168219 () Bool)

(declare-fun tp!1416837 () Bool)

(assert (=> b!5078641 (= e!3168219 (and tp_is_empty!37083 tp!1416837))))

(assert (=> b!5078086 (= tp!1416819 e!3168219)))

(assert (= (and b!5078086 ((_ is Cons!58450) (innerList!15668 (xs!18946 (left!42840 xs!286))))) b!5078641))

(declare-fun b!5078642 () Bool)

(declare-fun e!3168220 () Bool)

(declare-fun tp!1416838 () Bool)

(assert (=> b!5078642 (= e!3168220 (and tp_is_empty!37083 tp!1416838))))

(assert (=> b!5078074 (= tp!1416809 e!3168220)))

(assert (= (and b!5078074 ((_ is Cons!58450) (innerList!15668 (xs!18946 (left!42840 ys!41))))) b!5078642))

(declare-fun b!5078643 () Bool)

(declare-fun e!3168221 () Bool)

(declare-fun tp!1416839 () Bool)

(assert (=> b!5078643 (= e!3168221 (and tp_is_empty!37083 tp!1416839))))

(assert (=> b!5078082 (= tp!1416816 e!3168221)))

(assert (= (and b!5078082 ((_ is Cons!58450) (t!371381 (innerList!15668 (xs!18946 ys!41))))) b!5078643))

(declare-fun b!5078644 () Bool)

(declare-fun e!3168222 () Bool)

(declare-fun tp!1416840 () Bool)

(assert (=> b!5078644 (= e!3168222 (and tp_is_empty!37083 tp!1416840))))

(assert (=> b!5078089 (= tp!1416822 e!3168222)))

(assert (= (and b!5078089 ((_ is Cons!58450) (innerList!15668 (xs!18946 (right!43170 xs!286))))) b!5078644))

(declare-fun b!5078645 () Bool)

(declare-fun tp!1416843 () Bool)

(declare-fun tp!1416841 () Bool)

(declare-fun e!3168223 () Bool)

(assert (=> b!5078645 (= e!3168223 (and (inv!77643 (left!42840 (left!42840 (left!42840 xs!286)))) tp!1416841 (inv!77643 (right!43170 (left!42840 (left!42840 xs!286)))) tp!1416843))))

(declare-fun b!5078647 () Bool)

(declare-fun e!3168224 () Bool)

(declare-fun tp!1416842 () Bool)

(assert (=> b!5078647 (= e!3168224 tp!1416842)))

(declare-fun b!5078646 () Bool)

(assert (=> b!5078646 (= e!3168223 (and (inv!77644 (xs!18946 (left!42840 (left!42840 xs!286)))) e!3168224))))

(assert (=> b!5078084 (= tp!1416818 (and (inv!77643 (left!42840 (left!42840 xs!286))) e!3168223))))

(assert (= (and b!5078084 ((_ is Node!15580) (left!42840 (left!42840 xs!286)))) b!5078645))

(assert (= b!5078646 b!5078647))

(assert (= (and b!5078084 ((_ is Leaf!25875) (left!42840 (left!42840 xs!286)))) b!5078646))

(declare-fun m!6129574 () Bool)

(assert (=> b!5078645 m!6129574))

(declare-fun m!6129576 () Bool)

(assert (=> b!5078645 m!6129576))

(declare-fun m!6129578 () Bool)

(assert (=> b!5078646 m!6129578))

(assert (=> b!5078084 m!6128486))

(declare-fun b!5078648 () Bool)

(declare-fun tp!1416844 () Bool)

(declare-fun tp!1416846 () Bool)

(declare-fun e!3168225 () Bool)

(assert (=> b!5078648 (= e!3168225 (and (inv!77643 (left!42840 (right!43170 (left!42840 xs!286)))) tp!1416844 (inv!77643 (right!43170 (right!43170 (left!42840 xs!286)))) tp!1416846))))

(declare-fun b!5078650 () Bool)

(declare-fun e!3168226 () Bool)

(declare-fun tp!1416845 () Bool)

(assert (=> b!5078650 (= e!3168226 tp!1416845)))

(declare-fun b!5078649 () Bool)

(assert (=> b!5078649 (= e!3168225 (and (inv!77644 (xs!18946 (right!43170 (left!42840 xs!286)))) e!3168226))))

(assert (=> b!5078084 (= tp!1416820 (and (inv!77643 (right!43170 (left!42840 xs!286))) e!3168225))))

(assert (= (and b!5078084 ((_ is Node!15580) (right!43170 (left!42840 xs!286)))) b!5078648))

(assert (= b!5078649 b!5078650))

(assert (= (and b!5078084 ((_ is Leaf!25875) (right!43170 (left!42840 xs!286)))) b!5078649))

(declare-fun m!6129580 () Bool)

(assert (=> b!5078648 m!6129580))

(declare-fun m!6129582 () Bool)

(assert (=> b!5078648 m!6129582))

(declare-fun m!6129584 () Bool)

(assert (=> b!5078649 m!6129584))

(assert (=> b!5078084 m!6128488))

(declare-fun b!5078655 () Bool)

(declare-fun e!3168229 () Bool)

(declare-fun tp!1416847 () Bool)

(assert (=> b!5078655 (= e!3168229 (and tp_is_empty!37083 tp!1416847))))

(assert (=> b!5078077 (= tp!1416812 e!3168229)))

(assert (= (and b!5078077 ((_ is Cons!58450) (innerList!15668 (xs!18946 (right!43170 ys!41))))) b!5078655))

(declare-fun tp!1416848 () Bool)

(declare-fun e!3168230 () Bool)

(declare-fun tp!1416850 () Bool)

(declare-fun b!5078656 () Bool)

(assert (=> b!5078656 (= e!3168230 (and (inv!77643 (left!42840 (left!42840 (left!42840 ys!41)))) tp!1416848 (inv!77643 (right!43170 (left!42840 (left!42840 ys!41)))) tp!1416850))))

(declare-fun b!5078658 () Bool)

(declare-fun e!3168231 () Bool)

(declare-fun tp!1416849 () Bool)

(assert (=> b!5078658 (= e!3168231 tp!1416849)))

(declare-fun b!5078657 () Bool)

(assert (=> b!5078657 (= e!3168230 (and (inv!77644 (xs!18946 (left!42840 (left!42840 ys!41)))) e!3168231))))

(assert (=> b!5078072 (= tp!1416808 (and (inv!77643 (left!42840 (left!42840 ys!41))) e!3168230))))

(assert (= (and b!5078072 ((_ is Node!15580) (left!42840 (left!42840 ys!41)))) b!5078656))

(assert (= b!5078657 b!5078658))

(assert (= (and b!5078072 ((_ is Leaf!25875) (left!42840 (left!42840 ys!41)))) b!5078657))

(declare-fun m!6129588 () Bool)

(assert (=> b!5078656 m!6129588))

(declare-fun m!6129592 () Bool)

(assert (=> b!5078656 m!6129592))

(declare-fun m!6129594 () Bool)

(assert (=> b!5078657 m!6129594))

(assert (=> b!5078072 m!6128474))

(declare-fun tp!1416853 () Bool)

(declare-fun b!5078659 () Bool)

(declare-fun e!3168232 () Bool)

(declare-fun tp!1416851 () Bool)

(assert (=> b!5078659 (= e!3168232 (and (inv!77643 (left!42840 (right!43170 (left!42840 ys!41)))) tp!1416851 (inv!77643 (right!43170 (right!43170 (left!42840 ys!41)))) tp!1416853))))

(declare-fun b!5078661 () Bool)

(declare-fun e!3168233 () Bool)

(declare-fun tp!1416852 () Bool)

(assert (=> b!5078661 (= e!3168233 tp!1416852)))

(declare-fun b!5078660 () Bool)

(assert (=> b!5078660 (= e!3168232 (and (inv!77644 (xs!18946 (right!43170 (left!42840 ys!41)))) e!3168233))))

(assert (=> b!5078072 (= tp!1416810 (and (inv!77643 (right!43170 (left!42840 ys!41))) e!3168232))))

(assert (= (and b!5078072 ((_ is Node!15580) (right!43170 (left!42840 ys!41)))) b!5078659))

(assert (= b!5078660 b!5078661))

(assert (= (and b!5078072 ((_ is Leaf!25875) (right!43170 (left!42840 ys!41)))) b!5078660))

(declare-fun m!6129606 () Bool)

(assert (=> b!5078659 m!6129606))

(declare-fun m!6129610 () Bool)

(assert (=> b!5078659 m!6129610))

(declare-fun m!6129612 () Bool)

(assert (=> b!5078660 m!6129612))

(assert (=> b!5078072 m!6128476))

(check-sat (not b!5078460) (not b!5078279) (not b!5078661) (not b!5078476) (not d!1640873) (not b!5078563) (not b!5078627) (not b!5078285) (not b!5078354) (not b!5078471) (not b!5078222) (not d!1641069) (not b!5078178) (not b!5078657) (not b!5078473) (not b!5078351) (not d!1641005) (not bm!353874) (not b!5078561) (not b!5078437) (not b!5078113) (not bm!353861) (not b!5078176) (not b!5078398) (not b!5078565) (not b!5078626) (not bm!353818) (not b!5078655) (not bm!353879) (not b!5078173) (not b!5078107) (not b!5078630) (not b!5078579) (not b!5078452) (not d!1641073) (not b!5078303) (not b!5078177) (not d!1640987) (not d!1640777) (not b!5078108) (not bm!353846) (not b!5078450) (not d!1641011) (not b!5078646) (not bm!353864) (not d!1640969) (not b!5078394) (not b!5078103) (not d!1640871) (not b!5078639) (not b!5078277) (not bm!353845) (not d!1640869) (not b!5078516) (not b!5078644) (not b!5078238) (not b!5078156) (not d!1640915) (not d!1640953) (not bm!353898) (not bm!353880) (not b!5078346) (not b!5078353) (not b!5078647) (not b!5078458) (not b!5078329) (not d!1641025) (not b!5078462) (not bm!353873) (not d!1640983) (not b!5078281) (not b!5078239) (not b!5078168) (not bm!353840) (not d!1641081) (not d!1641091) (not d!1641127) (not b!5078098) (not b!5078161) (not bm!353859) (not d!1641019) (not b!5078244) (not bm!353899) (not b!5078327) (not d!1640865) (not bm!353878) (not b!5078628) (not bm!353819) (not b!5078401) (not b!5078611) (not b!5078570) (not b!5078581) (not b!5078326) (not b!5078409) (not b!5078343) (not b!5078221) (not b!5078643) (not b!5078567) (not b!5078631) (not b!5078342) (not b!5078365) (not b!5078474) (not b!5078463) (not b!5078658) (not b!5078431) (not b!5078574) (not d!1641077) (not b!5078284) (not b!5078300) (not bm!353900) (not b!5078280) (not b!5078092) (not b!5078523) (not b!5078141) (not b!5078402) (not b!5078656) (not b!5078511) (not b!5078442) (not d!1641085) (not b!5078226) (not b!5078640) (not bm!353857) (not b!5078110) (not b!5078218) (not d!1640973) (not d!1640989) (not b!5078648) (not b!5078328) (not b!5078456) (not b!5078568) (not b!5078094) (not b!5078617) (not b!5078592) (not b!5078380) (not b!5078461) (not b!5078659) (not b!5078578) (not b!5078649) (not b!5078162) (not b!5078573) (not bm!353860) (not b!5078102) (not b!5078435) (not b!5078223) (not b!5078157) (not b!5078410) (not d!1640799) (not b!5078278) (not d!1640867) (not b!5078304) (not b!5078641) (not bm!353863) (not b!5078087) (not b!5078399) (not b!5078576) (not b!5078453) (not b!5078091) (not b!5078286) (not b!5078564) (not bm!353862) (not d!1640985) (not bm!353897) (not d!1640957) (not d!1640809) (not b!5078562) (not b!5078575) (not b!5078642) (not d!1641031) (not bm!353817) (not b!5078325) (not b!5078149) (not b!5078075) (not b!5078324) (not b!5078146) (not b!5078650) (not d!1640955) (not b!5078106) (not b!5078335) (not bm!353820) (not b!5078379) (not b!5078591) (not b!5078598) (not b!5078095) (not b!5078199) (not b!5078175) (not b!5078583) (not d!1640981) (not b!5078364) (not b!5078629) (not b!5078660) (not b!5078455) (not d!1640761) (not b!5078305) (not b!5078247) (not b!5078372) (not b!5078276) (not d!1640829) (not b!5078111) (not b!5078503) (not bm!353841) (not b!5078347) (not bm!353875) (not b!5078597) (not b!5078236) (not b!5078502) (not bm!353834) (not b!5078288) (not b!5078638) (not b!5078251) (not b!5078610) (not b!5078566) (not b!5078429) (not b!5078093) (not b!5078459) (not b!5078084) (not b!5078524) (not bm!353837) (not b!5078301) (not b!5078585) (not b!5078287) (not bm!353876) (not b!5078619) (not b!5078517) (not b!5078645) (not b!5078571) (not bm!353839) (not d!1641045) (not b!5078382) (not bm!353877) (not b!5078423) (not b!5078174) (not b!5078295) (not b!5078150) (not b!5078404) (not bm!353858) (not d!1640801) (not b!5078361) (not b!5078323) (not b!5078618) (not b!5078616) (not b!5078090) (not d!1640949) (not b!5078302) (not b!5078289) (not d!1640975) (not b!5078465) tp_is_empty!37083 (not b!5078072) (not b!5078577) (not b!5078097) (not b!5078167) (not b!5078373) (not b!5078538))
(check-sat)
(get-model)

(declare-fun d!1641163 () Bool)

(declare-fun c!872208 () Bool)

(assert (=> d!1641163 (= c!872208 ((_ is Nil!58450) lt!2090539))))

(declare-fun e!3168265 () (InoxSet T!105230))

(assert (=> d!1641163 (= (content!10426 lt!2090539) e!3168265)))

(declare-fun b!5078714 () Bool)

(assert (=> b!5078714 (= e!3168265 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078715 () Bool)

(assert (=> b!5078715 (= e!3168265 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090539) true) (content!10426 (t!371381 lt!2090539))))))

(assert (= (and d!1641163 c!872208) b!5078714))

(assert (= (and d!1641163 (not c!872208)) b!5078715))

(declare-fun m!6129710 () Bool)

(assert (=> b!5078715 m!6129710))

(declare-fun m!6129712 () Bool)

(assert (=> b!5078715 m!6129712))

(assert (=> d!1640981 d!1641163))

(assert (=> d!1640981 d!1641001))

(declare-fun d!1641165 () Bool)

(declare-fun c!872209 () Bool)

(assert (=> d!1641165 (= c!872209 ((_ is Nil!58450) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun e!3168266 () (InoxSet T!105230))

(assert (=> d!1641165 (= (content!10426 (list!19021 (left!42840 (left!42840 ys!41)))) e!3168266)))

(declare-fun b!5078716 () Bool)

(assert (=> b!5078716 (= e!3168266 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078717 () Bool)

(assert (=> b!5078717 (= e!3168266 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (left!42840 (left!42840 ys!41)))) true) (content!10426 (t!371381 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(assert (= (and d!1641165 c!872209) b!5078716))

(assert (= (and d!1641165 (not c!872209)) b!5078717))

(declare-fun m!6129714 () Bool)

(assert (=> b!5078717 m!6129714))

(declare-fun m!6129716 () Bool)

(assert (=> b!5078717 m!6129716))

(assert (=> d!1640981 d!1641165))

(declare-fun d!1641167 () Bool)

(declare-fun lt!2090580 () Int)

(assert (=> d!1641167 (= lt!2090580 (size!39108 (list!19021 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641167 (= lt!2090580 (ite ((_ is Empty!15580) (left!42840 (right!43170 xs!286))) 0 (ite ((_ is Leaf!25875) (left!42840 (right!43170 xs!286))) (csize!31391 (left!42840 (right!43170 xs!286))) (csize!31390 (left!42840 (right!43170 xs!286))))))))

(assert (=> d!1641167 (= (size!39109 (left!42840 (right!43170 xs!286))) lt!2090580)))

(declare-fun bs!1190548 () Bool)

(assert (= bs!1190548 d!1641167))

(assert (=> bs!1190548 m!6128424))

(assert (=> bs!1190548 m!6128424))

(declare-fun m!6129718 () Bool)

(assert (=> bs!1190548 m!6129718))

(assert (=> d!1640869 d!1641167))

(declare-fun d!1641169 () Bool)

(declare-fun lt!2090581 () Int)

(assert (=> d!1641169 (= lt!2090581 (size!39108 (list!19021 (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641169 (= lt!2090581 (ite ((_ is Empty!15580) (right!43170 (right!43170 xs!286))) 0 (ite ((_ is Leaf!25875) (right!43170 (right!43170 xs!286))) (csize!31391 (right!43170 (right!43170 xs!286))) (csize!31390 (right!43170 (right!43170 xs!286))))))))

(assert (=> d!1641169 (= (size!39109 (right!43170 (right!43170 xs!286))) lt!2090581)))

(declare-fun bs!1190549 () Bool)

(assert (= bs!1190549 d!1641169))

(assert (=> bs!1190549 m!6128426))

(assert (=> bs!1190549 m!6128426))

(assert (=> bs!1190549 m!6129350))

(assert (=> d!1640869 d!1641169))

(declare-fun b!5078718 () Bool)

(declare-fun e!3168267 () List!58574)

(assert (=> b!5078718 (= e!3168267 Nil!58450)))

(declare-fun b!5078721 () Bool)

(declare-fun e!3168268 () List!58574)

(assert (=> b!5078721 (= e!3168268 (++!12807 (list!19021 (left!42840 lt!2090540)) (list!19021 (right!43170 lt!2090540))))))

(declare-fun b!5078720 () Bool)

(assert (=> b!5078720 (= e!3168268 (list!19023 (xs!18946 lt!2090540)))))

(declare-fun d!1641171 () Bool)

(declare-fun c!872210 () Bool)

(assert (=> d!1641171 (= c!872210 ((_ is Empty!15580) lt!2090540))))

(assert (=> d!1641171 (= (list!19021 lt!2090540) e!3168267)))

(declare-fun b!5078719 () Bool)

(assert (=> b!5078719 (= e!3168267 e!3168268)))

(declare-fun c!872211 () Bool)

(assert (=> b!5078719 (= c!872211 ((_ is Leaf!25875) lt!2090540))))

(assert (= (and d!1641171 c!872210) b!5078718))

(assert (= (and d!1641171 (not c!872210)) b!5078719))

(assert (= (and b!5078719 c!872211) b!5078720))

(assert (= (and b!5078719 (not c!872211)) b!5078721))

(declare-fun m!6129720 () Bool)

(assert (=> b!5078721 m!6129720))

(declare-fun m!6129722 () Bool)

(assert (=> b!5078721 m!6129722))

(assert (=> b!5078721 m!6129720))

(assert (=> b!5078721 m!6129722))

(declare-fun m!6129724 () Bool)

(assert (=> b!5078721 m!6129724))

(declare-fun m!6129726 () Bool)

(assert (=> b!5078720 m!6129726))

(assert (=> d!1640987 d!1641171))

(declare-fun b!5078725 () Bool)

(declare-fun e!3168270 () Bool)

(declare-fun lt!2090582 () List!58574)

(assert (=> b!5078725 (= e!3168270 (or (not (= (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) Nil!58450)) (= lt!2090582 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))))))))

(declare-fun d!1641173 () Bool)

(assert (=> d!1641173 e!3168270))

(declare-fun res!2162292 () Bool)

(assert (=> d!1641173 (=> (not res!2162292) (not e!3168270))))

(assert (=> d!1641173 (= res!2162292 (= (content!10426 lt!2090582) ((_ map or) (content!10426 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))) (content!10426 (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))))))))

(declare-fun e!3168269 () List!58574)

(assert (=> d!1641173 (= lt!2090582 e!3168269)))

(declare-fun c!872212 () Bool)

(assert (=> d!1641173 (= c!872212 ((_ is Nil!58450) (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))))))

(assert (=> d!1641173 (= (++!12807 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))) lt!2090582)))

(declare-fun b!5078722 () Bool)

(assert (=> b!5078722 (= e!3168269 (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))

(declare-fun b!5078724 () Bool)

(declare-fun res!2162293 () Bool)

(assert (=> b!5078724 (=> (not res!2162293) (not e!3168270))))

(assert (=> b!5078724 (= res!2162293 (= (size!39108 lt!2090582) (+ (size!39108 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))) (size!39108 (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))))))))

(declare-fun b!5078723 () Bool)

(assert (=> b!5078723 (= e!3168269 (Cons!58450 (h!64898 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))) (++!12807 (t!371381 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))) (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))))

(assert (= (and d!1641173 c!872212) b!5078722))

(assert (= (and d!1641173 (not c!872212)) b!5078723))

(assert (= (and d!1641173 res!2162292) b!5078724))

(assert (= (and b!5078724 res!2162293) b!5078725))

(declare-fun m!6129728 () Bool)

(assert (=> d!1641173 m!6129728))

(assert (=> d!1641173 m!6129118))

(declare-fun m!6129730 () Bool)

(assert (=> d!1641173 m!6129730))

(assert (=> d!1641173 m!6129120))

(declare-fun m!6129732 () Bool)

(assert (=> d!1641173 m!6129732))

(declare-fun m!6129734 () Bool)

(assert (=> b!5078724 m!6129734))

(assert (=> b!5078724 m!6129118))

(declare-fun m!6129736 () Bool)

(assert (=> b!5078724 m!6129736))

(assert (=> b!5078724 m!6129120))

(declare-fun m!6129738 () Bool)

(assert (=> b!5078724 m!6129738))

(assert (=> b!5078723 m!6129120))

(declare-fun m!6129740 () Bool)

(assert (=> b!5078723 m!6129740))

(assert (=> d!1640987 d!1641173))

(declare-fun b!5078726 () Bool)

(declare-fun e!3168271 () List!58574)

(assert (=> b!5078726 (= e!3168271 Nil!58450)))

(declare-fun b!5078729 () Bool)

(declare-fun e!3168272 () List!58574)

(assert (=> b!5078729 (= e!3168272 (++!12807 (list!19021 (left!42840 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))) (list!19021 (right!43170 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))))))))

(declare-fun b!5078728 () Bool)

(assert (=> b!5078728 (= e!3168272 (list!19023 (xs!18946 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))))))

(declare-fun d!1641175 () Bool)

(declare-fun c!872213 () Bool)

(assert (=> d!1641175 (= c!872213 ((_ is Empty!15580) (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))))))

(assert (=> d!1641175 (= (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) e!3168271)))

(declare-fun b!5078727 () Bool)

(assert (=> b!5078727 (= e!3168271 e!3168272)))

(declare-fun c!872214 () Bool)

(assert (=> b!5078727 (= c!872214 ((_ is Leaf!25875) (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))))))

(assert (= (and d!1641175 c!872213) b!5078726))

(assert (= (and d!1641175 (not c!872213)) b!5078727))

(assert (= (and b!5078727 c!872214) b!5078728))

(assert (= (and b!5078727 (not c!872214)) b!5078729))

(declare-fun m!6129742 () Bool)

(assert (=> b!5078729 m!6129742))

(declare-fun m!6129744 () Bool)

(assert (=> b!5078729 m!6129744))

(assert (=> b!5078729 m!6129742))

(assert (=> b!5078729 m!6129744))

(declare-fun m!6129746 () Bool)

(assert (=> b!5078729 m!6129746))

(declare-fun m!6129748 () Bool)

(assert (=> b!5078728 m!6129748))

(assert (=> d!1640987 d!1641175))

(declare-fun b!5078730 () Bool)

(declare-fun e!3168273 () List!58574)

(assert (=> b!5078730 (= e!3168273 Nil!58450)))

(declare-fun b!5078733 () Bool)

(declare-fun e!3168274 () List!58574)

(assert (=> b!5078733 (= e!3168274 (++!12807 (list!19021 (left!42840 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))) (list!19021 (right!43170 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))))

(declare-fun b!5078732 () Bool)

(assert (=> b!5078732 (= e!3168274 (list!19023 (xs!18946 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))))))

(declare-fun c!872215 () Bool)

(declare-fun d!1641177 () Bool)

(assert (=> d!1641177 (= c!872215 ((_ is Empty!15580) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))

(assert (=> d!1641177 (= (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) e!3168273)))

(declare-fun b!5078731 () Bool)

(assert (=> b!5078731 (= e!3168273 e!3168274)))

(declare-fun c!872216 () Bool)

(assert (=> b!5078731 (= c!872216 ((_ is Leaf!25875) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))

(assert (= (and d!1641177 c!872215) b!5078730))

(assert (= (and d!1641177 (not c!872215)) b!5078731))

(assert (= (and b!5078731 c!872216) b!5078732))

(assert (= (and b!5078731 (not c!872216)) b!5078733))

(declare-fun m!6129750 () Bool)

(assert (=> b!5078733 m!6129750))

(declare-fun m!6129752 () Bool)

(assert (=> b!5078733 m!6129752))

(assert (=> b!5078733 m!6129750))

(assert (=> b!5078733 m!6129752))

(declare-fun m!6129754 () Bool)

(assert (=> b!5078733 m!6129754))

(declare-fun m!6129756 () Bool)

(assert (=> b!5078732 m!6129756))

(assert (=> d!1640987 d!1641177))

(declare-fun b!5078737 () Bool)

(declare-fun e!3168276 () Bool)

(declare-fun lt!2090583 () List!58574)

(assert (=> b!5078737 (= e!3168276 (or (not (= (list!19021 (left!42840 (right!43170 xs!286))) Nil!58450)) (= lt!2090583 (list!19021 (left!42840 xs!286)))))))

(declare-fun d!1641179 () Bool)

(assert (=> d!1641179 e!3168276))

(declare-fun res!2162294 () Bool)

(assert (=> d!1641179 (=> (not res!2162294) (not e!3168276))))

(assert (=> d!1641179 (= res!2162294 (= (content!10426 lt!2090583) ((_ map or) (content!10426 (list!19021 (left!42840 xs!286))) (content!10426 (list!19021 (left!42840 (right!43170 xs!286)))))))))

(declare-fun e!3168275 () List!58574)

(assert (=> d!1641179 (= lt!2090583 e!3168275)))

(declare-fun c!872217 () Bool)

(assert (=> d!1641179 (= c!872217 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641179 (= (++!12807 (list!19021 (left!42840 xs!286)) (list!19021 (left!42840 (right!43170 xs!286)))) lt!2090583)))

(declare-fun b!5078734 () Bool)

(assert (=> b!5078734 (= e!3168275 (list!19021 (left!42840 (right!43170 xs!286))))))

(declare-fun b!5078736 () Bool)

(declare-fun res!2162295 () Bool)

(assert (=> b!5078736 (=> (not res!2162295) (not e!3168276))))

(assert (=> b!5078736 (= res!2162295 (= (size!39108 lt!2090583) (+ (size!39108 (list!19021 (left!42840 xs!286))) (size!39108 (list!19021 (left!42840 (right!43170 xs!286)))))))))

(declare-fun b!5078735 () Bool)

(assert (=> b!5078735 (= e!3168275 (Cons!58450 (h!64898 (list!19021 (left!42840 xs!286))) (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (left!42840 (right!43170 xs!286))))))))

(assert (= (and d!1641179 c!872217) b!5078734))

(assert (= (and d!1641179 (not c!872217)) b!5078735))

(assert (= (and d!1641179 res!2162294) b!5078736))

(assert (= (and b!5078736 res!2162295) b!5078737))

(declare-fun m!6129758 () Bool)

(assert (=> d!1641179 m!6129758))

(assert (=> d!1641179 m!6128332))

(assert (=> d!1641179 m!6129190))

(assert (=> d!1641179 m!6128424))

(declare-fun m!6129760 () Bool)

(assert (=> d!1641179 m!6129760))

(declare-fun m!6129762 () Bool)

(assert (=> b!5078736 m!6129762))

(assert (=> b!5078736 m!6128332))

(assert (=> b!5078736 m!6129198))

(assert (=> b!5078736 m!6128424))

(assert (=> b!5078736 m!6129718))

(assert (=> b!5078735 m!6128424))

(declare-fun m!6129764 () Bool)

(assert (=> b!5078735 m!6129764))

(assert (=> bm!353875 d!1641179))

(declare-fun d!1641181 () Bool)

(declare-fun res!2162296 () Bool)

(declare-fun e!3168277 () Bool)

(assert (=> d!1641181 (=> (not res!2162296) (not e!3168277))))

(assert (=> d!1641181 (= res!2162296 (= (csize!31390 (right!43170 (right!43170 ys!41))) (+ (size!39109 (left!42840 (right!43170 (right!43170 ys!41)))) (size!39109 (right!43170 (right!43170 (right!43170 ys!41)))))))))

(assert (=> d!1641181 (= (inv!77647 (right!43170 (right!43170 ys!41))) e!3168277)))

(declare-fun b!5078738 () Bool)

(declare-fun res!2162297 () Bool)

(assert (=> b!5078738 (=> (not res!2162297) (not e!3168277))))

(assert (=> b!5078738 (= res!2162297 (and (not (= (left!42840 (right!43170 (right!43170 ys!41))) Empty!15580)) (not (= (right!43170 (right!43170 (right!43170 ys!41))) Empty!15580))))))

(declare-fun b!5078739 () Bool)

(declare-fun res!2162298 () Bool)

(assert (=> b!5078739 (=> (not res!2162298) (not e!3168277))))

(assert (=> b!5078739 (= res!2162298 (= (cheight!15791 (right!43170 (right!43170 ys!41))) (+ (max!0 (height!2157 (left!42840 (right!43170 (right!43170 ys!41)))) (height!2157 (right!43170 (right!43170 (right!43170 ys!41))))) 1)))))

(declare-fun b!5078740 () Bool)

(assert (=> b!5078740 (= e!3168277 (<= 0 (cheight!15791 (right!43170 (right!43170 ys!41)))))))

(assert (= (and d!1641181 res!2162296) b!5078738))

(assert (= (and b!5078738 res!2162297) b!5078739))

(assert (= (and b!5078739 res!2162298) b!5078740))

(declare-fun m!6129766 () Bool)

(assert (=> d!1641181 m!6129766))

(declare-fun m!6129768 () Bool)

(assert (=> d!1641181 m!6129768))

(declare-fun m!6129770 () Bool)

(assert (=> b!5078739 m!6129770))

(declare-fun m!6129772 () Bool)

(assert (=> b!5078739 m!6129772))

(assert (=> b!5078739 m!6129770))

(assert (=> b!5078739 m!6129772))

(declare-fun m!6129774 () Bool)

(assert (=> b!5078739 m!6129774))

(assert (=> b!5078571 d!1641181))

(declare-fun d!1641183 () Bool)

(declare-fun lt!2090584 () Bool)

(assert (=> d!1641183 (= lt!2090584 (isEmpty!31665 (list!19021 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641183 (= lt!2090584 (= (size!39109 (left!42840 (right!43170 xs!286))) 0))))

(assert (=> d!1641183 (= (isEmpty!31663 (left!42840 (right!43170 xs!286))) lt!2090584)))

(declare-fun bs!1190550 () Bool)

(assert (= bs!1190550 d!1641183))

(assert (=> bs!1190550 m!6128424))

(assert (=> bs!1190550 m!6128424))

(declare-fun m!6129776 () Bool)

(assert (=> bs!1190550 m!6129776))

(assert (=> bs!1190550 m!6128746))

(assert (=> b!5078280 d!1641183))

(declare-fun d!1641185 () Bool)

(declare-fun c!872218 () Bool)

(assert (=> d!1641185 (= c!872218 ((_ is Nil!58450) (t!371381 (list!19021 xs!286))))))

(declare-fun e!3168278 () (InoxSet T!105230))

(assert (=> d!1641185 (= (content!10426 (t!371381 (list!19021 xs!286))) e!3168278)))

(declare-fun b!5078741 () Bool)

(assert (=> b!5078741 (= e!3168278 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078742 () Bool)

(assert (=> b!5078742 (= e!3168278 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (t!371381 (list!19021 xs!286))) true) (content!10426 (t!371381 (t!371381 (list!19021 xs!286))))))))

(assert (= (and d!1641185 c!872218) b!5078741))

(assert (= (and d!1641185 (not c!872218)) b!5078742))

(declare-fun m!6129778 () Bool)

(assert (=> b!5078742 m!6129778))

(declare-fun m!6129780 () Bool)

(assert (=> b!5078742 m!6129780))

(assert (=> b!5078429 d!1641185))

(declare-fun b!5078743 () Bool)

(declare-fun e!3168279 () List!58574)

(assert (=> b!5078743 (= e!3168279 Nil!58450)))

(declare-fun b!5078746 () Bool)

(declare-fun e!3168280 () List!58574)

(assert (=> b!5078746 (= e!3168280 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(declare-fun b!5078745 () Bool)

(assert (=> b!5078745 (= e!3168280 (list!19023 (xs!18946 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun d!1641187 () Bool)

(declare-fun c!872219 () Bool)

(assert (=> d!1641187 (= c!872219 ((_ is Empty!15580) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641187 (= (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) e!3168279)))

(declare-fun b!5078744 () Bool)

(assert (=> b!5078744 (= e!3168279 e!3168280)))

(declare-fun c!872220 () Bool)

(assert (=> b!5078744 (= c!872220 ((_ is Leaf!25875) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (= (and d!1641187 c!872219) b!5078743))

(assert (= (and d!1641187 (not c!872219)) b!5078744))

(assert (= (and b!5078744 c!872220) b!5078745))

(assert (= (and b!5078744 (not c!872220)) b!5078746))

(declare-fun m!6129782 () Bool)

(assert (=> b!5078746 m!6129782))

(declare-fun m!6129784 () Bool)

(assert (=> b!5078746 m!6129784))

(assert (=> b!5078746 m!6129782))

(assert (=> b!5078746 m!6129784))

(declare-fun m!6129786 () Bool)

(assert (=> b!5078746 m!6129786))

(declare-fun m!6129788 () Bool)

(assert (=> b!5078745 m!6129788))

(assert (=> b!5078178 d!1641187))

(assert (=> b!5078178 d!1640727))

(declare-fun b!5078747 () Bool)

(declare-fun e!3168281 () List!58574)

(assert (=> b!5078747 (= e!3168281 Nil!58450)))

(declare-fun b!5078750 () Bool)

(declare-fun e!3168282 () List!58574)

(assert (=> b!5078750 (= e!3168282 (++!12807 (list!19021 (left!42840 (right!43170 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (right!43170 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078749 () Bool)

(assert (=> b!5078749 (= e!3168282 (list!19023 (xs!18946 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun d!1641189 () Bool)

(declare-fun c!872221 () Bool)

(assert (=> d!1641189 (= c!872221 ((_ is Empty!15580) (right!43170 (left!42840 (left!42840 ys!41)))))))

(assert (=> d!1641189 (= (list!19021 (right!43170 (left!42840 (left!42840 ys!41)))) e!3168281)))

(declare-fun b!5078748 () Bool)

(assert (=> b!5078748 (= e!3168281 e!3168282)))

(declare-fun c!872222 () Bool)

(assert (=> b!5078748 (= c!872222 ((_ is Leaf!25875) (right!43170 (left!42840 (left!42840 ys!41)))))))

(assert (= (and d!1641189 c!872221) b!5078747))

(assert (= (and d!1641189 (not c!872221)) b!5078748))

(assert (= (and b!5078748 c!872222) b!5078749))

(assert (= (and b!5078748 (not c!872222)) b!5078750))

(declare-fun m!6129790 () Bool)

(assert (=> b!5078750 m!6129790))

(declare-fun m!6129792 () Bool)

(assert (=> b!5078750 m!6129792))

(assert (=> b!5078750 m!6129790))

(assert (=> b!5078750 m!6129792))

(declare-fun m!6129794 () Bool)

(assert (=> b!5078750 m!6129794))

(declare-fun m!6129796 () Bool)

(assert (=> b!5078749 m!6129796))

(assert (=> b!5078178 d!1641189))

(declare-fun b!5078754 () Bool)

(declare-fun e!3168284 () Bool)

(declare-fun lt!2090585 () List!58574)

(assert (=> b!5078754 (= e!3168284 (or (not (= (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) Nil!58450)) (= lt!2090585 (list!19021 xs!286))))))

(declare-fun d!1641191 () Bool)

(assert (=> d!1641191 e!3168284))

(declare-fun res!2162299 () Bool)

(assert (=> d!1641191 (=> (not res!2162299) (not e!3168284))))

(assert (=> d!1641191 (= res!2162299 (= (content!10426 lt!2090585) ((_ map or) (content!10426 (list!19021 xs!286)) (content!10426 (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun e!3168283 () List!58574)

(assert (=> d!1641191 (= lt!2090585 e!3168283)))

(declare-fun c!872223 () Bool)

(assert (=> d!1641191 (= c!872223 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1641191 (= (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) lt!2090585)))

(declare-fun b!5078751 () Bool)

(assert (=> b!5078751 (= e!3168283 (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078753 () Bool)

(declare-fun res!2162300 () Bool)

(assert (=> b!5078753 (=> (not res!2162300) (not e!3168284))))

(assert (=> b!5078753 (= res!2162300 (= (size!39108 lt!2090585) (+ (size!39108 (list!19021 xs!286)) (size!39108 (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun b!5078752 () Bool)

(assert (=> b!5078752 (= e!3168283 (Cons!58450 (h!64898 (list!19021 xs!286)) (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(assert (= (and d!1641191 c!872223) b!5078751))

(assert (= (and d!1641191 (not c!872223)) b!5078752))

(assert (= (and d!1641191 res!2162299) b!5078753))

(assert (= (and b!5078753 res!2162300) b!5078754))

(declare-fun m!6129798 () Bool)

(assert (=> d!1641191 m!6129798))

(assert (=> d!1641191 m!6128088))

(assert (=> d!1641191 m!6128320))

(assert (=> d!1641191 m!6128674))

(declare-fun m!6129800 () Bool)

(assert (=> d!1641191 m!6129800))

(declare-fun m!6129802 () Bool)

(assert (=> b!5078753 m!6129802))

(assert (=> b!5078753 m!6128088))

(assert (=> b!5078753 m!6128326))

(assert (=> b!5078753 m!6128674))

(declare-fun m!6129804 () Bool)

(assert (=> b!5078753 m!6129804))

(assert (=> b!5078752 m!6128674))

(declare-fun m!6129806 () Bool)

(assert (=> b!5078752 m!6129806))

(assert (=> b!5078178 d!1641191))

(declare-fun b!5078755 () Bool)

(declare-fun e!3168285 () List!58574)

(assert (=> b!5078755 (= e!3168285 Nil!58450)))

(declare-fun b!5078758 () Bool)

(declare-fun e!3168286 () List!58574)

(assert (=> b!5078758 (= e!3168286 (++!12807 (list!19021 (left!42840 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))) (list!19021 (right!43170 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(declare-fun b!5078757 () Bool)

(assert (=> b!5078757 (= e!3168286 (list!19023 (xs!18946 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun d!1641193 () Bool)

(declare-fun c!872224 () Bool)

(assert (=> d!1641193 (= c!872224 ((_ is Empty!15580) (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641193 (= (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))) e!3168285)))

(declare-fun b!5078756 () Bool)

(assert (=> b!5078756 (= e!3168285 e!3168286)))

(declare-fun c!872225 () Bool)

(assert (=> b!5078756 (= c!872225 ((_ is Leaf!25875) (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (= (and d!1641193 c!872224) b!5078755))

(assert (= (and d!1641193 (not c!872224)) b!5078756))

(assert (= (and b!5078756 c!872225) b!5078757))

(assert (= (and b!5078756 (not c!872225)) b!5078758))

(declare-fun m!6129808 () Bool)

(assert (=> b!5078758 m!6129808))

(declare-fun m!6129810 () Bool)

(assert (=> b!5078758 m!6129810))

(assert (=> b!5078758 m!6129808))

(assert (=> b!5078758 m!6129810))

(declare-fun m!6129812 () Bool)

(assert (=> b!5078758 m!6129812))

(declare-fun m!6129814 () Bool)

(assert (=> b!5078757 m!6129814))

(assert (=> b!5078178 d!1641193))

(declare-fun b!5078759 () Bool)

(declare-fun e!3168287 () Bool)

(declare-fun call!353913 () List!58574)

(declare-fun call!353911 () List!58574)

(assert (=> b!5078759 (= e!3168287 (= call!353913 call!353911))))

(declare-fun b!5078760 () Bool)

(assert (=> b!5078760 (= e!3168287 (= call!353913 call!353911))))

(declare-fun lt!2090586 () Bool)

(assert (=> b!5078760 (= lt!2090586 (appendAssoc!310 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353905 () Bool)

(declare-fun call!353912 () List!58574)

(assert (=> bm!353905 (= call!353912 (++!12807 (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353906 () Bool)

(declare-fun call!353910 () List!58574)

(assert (=> bm!353906 (= call!353913 (++!12807 call!353910 (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353907 () Bool)

(assert (=> bm!353907 (= call!353910 (++!12807 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun d!1641195 () Bool)

(assert (=> d!1641195 e!3168287))

(declare-fun c!872226 () Bool)

(assert (=> d!1641195 (= c!872226 ((_ is Nil!58450) (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(assert (=> d!1641195 (= (appendAssoc!310 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))) true)))

(declare-fun bm!353908 () Bool)

(assert (=> bm!353908 (= call!353911 (++!12807 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) call!353912))))

(assert (= (and d!1641195 c!872226) b!5078759))

(assert (= (and d!1641195 (not c!872226)) b!5078760))

(assert (= (or b!5078759 b!5078760) bm!353907))

(assert (= (or b!5078759 b!5078760) bm!353905))

(assert (= (or b!5078759 b!5078760) bm!353908))

(assert (= (or b!5078759 b!5078760) bm!353906))

(assert (=> bm!353908 m!6128682))

(declare-fun m!6129816 () Bool)

(assert (=> bm!353908 m!6129816))

(assert (=> bm!353906 m!6128670))

(declare-fun m!6129818 () Bool)

(assert (=> bm!353906 m!6129818))

(assert (=> bm!353905 m!6128676))

(assert (=> bm!353905 m!6128670))

(declare-fun m!6129820 () Bool)

(assert (=> bm!353905 m!6129820))

(assert (=> b!5078760 m!6128676))

(assert (=> b!5078760 m!6128670))

(declare-fun m!6129822 () Bool)

(assert (=> b!5078760 m!6129822))

(assert (=> bm!353907 m!6128682))

(assert (=> bm!353907 m!6128676))

(declare-fun m!6129824 () Bool)

(assert (=> bm!353907 m!6129824))

(assert (=> b!5078178 d!1641195))

(declare-fun d!1641197 () Bool)

(declare-fun lt!2090587 () Int)

(assert (=> d!1641197 (>= lt!2090587 0)))

(declare-fun e!3168288 () Int)

(assert (=> d!1641197 (= lt!2090587 e!3168288)))

(declare-fun c!872227 () Bool)

(assert (=> d!1641197 (= c!872227 ((_ is Nil!58450) lt!2090543))))

(assert (=> d!1641197 (= (size!39108 lt!2090543) lt!2090587)))

(declare-fun b!5078761 () Bool)

(assert (=> b!5078761 (= e!3168288 0)))

(declare-fun b!5078762 () Bool)

(assert (=> b!5078762 (= e!3168288 (+ 1 (size!39108 (t!371381 lt!2090543))))))

(assert (= (and d!1641197 c!872227) b!5078761))

(assert (= (and d!1641197 (not c!872227)) b!5078762))

(declare-fun m!6129826 () Bool)

(assert (=> b!5078762 m!6129826))

(assert (=> b!5078437 d!1641197))

(declare-fun d!1641199 () Bool)

(declare-fun lt!2090588 () Int)

(assert (=> d!1641199 (>= lt!2090588 0)))

(declare-fun e!3168289 () Int)

(assert (=> d!1641199 (= lt!2090588 e!3168289)))

(declare-fun c!872228 () Bool)

(assert (=> d!1641199 (= c!872228 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641199 (= (size!39108 (list!19021 (left!42840 xs!286))) lt!2090588)))

(declare-fun b!5078763 () Bool)

(assert (=> b!5078763 (= e!3168289 0)))

(declare-fun b!5078764 () Bool)

(assert (=> b!5078764 (= e!3168289 (+ 1 (size!39108 (t!371381 (list!19021 (left!42840 xs!286))))))))

(assert (= (and d!1641199 c!872228) b!5078763))

(assert (= (and d!1641199 (not c!872228)) b!5078764))

(declare-fun m!6129828 () Bool)

(assert (=> b!5078764 m!6129828))

(assert (=> b!5078437 d!1641199))

(declare-fun d!1641201 () Bool)

(declare-fun lt!2090589 () Int)

(assert (=> d!1641201 (>= lt!2090589 0)))

(declare-fun e!3168290 () Int)

(assert (=> d!1641201 (= lt!2090589 e!3168290)))

(declare-fun c!872229 () Bool)

(assert (=> d!1641201 (= c!872229 ((_ is Nil!58450) (list!19021 (right!43170 xs!286))))))

(assert (=> d!1641201 (= (size!39108 (list!19021 (right!43170 xs!286))) lt!2090589)))

(declare-fun b!5078765 () Bool)

(assert (=> b!5078765 (= e!3168290 0)))

(declare-fun b!5078766 () Bool)

(assert (=> b!5078766 (= e!3168290 (+ 1 (size!39108 (t!371381 (list!19021 (right!43170 xs!286))))))))

(assert (= (and d!1641201 c!872229) b!5078765))

(assert (= (and d!1641201 (not c!872229)) b!5078766))

(declare-fun m!6129830 () Bool)

(assert (=> b!5078766 m!6129830))

(assert (=> b!5078437 d!1641201))

(declare-fun e!3168292 () Bool)

(declare-fun b!5078770 () Bool)

(declare-fun lt!2090590 () List!58574)

(assert (=> b!5078770 (= e!3168292 (or (not (= (list!19021 (left!42840 (left!42840 ys!41))) Nil!58450)) (= lt!2090590 (t!371381 (list!19021 xs!286)))))))

(declare-fun d!1641203 () Bool)

(assert (=> d!1641203 e!3168292))

(declare-fun res!2162301 () Bool)

(assert (=> d!1641203 (=> (not res!2162301) (not e!3168292))))

(assert (=> d!1641203 (= res!2162301 (= (content!10426 lt!2090590) ((_ map or) (content!10426 (t!371381 (list!19021 xs!286))) (content!10426 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun e!3168291 () List!58574)

(assert (=> d!1641203 (= lt!2090590 e!3168291)))

(declare-fun c!872230 () Bool)

(assert (=> d!1641203 (= c!872230 ((_ is Nil!58450) (t!371381 (list!19021 xs!286))))))

(assert (=> d!1641203 (= (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 ys!41)))) lt!2090590)))

(declare-fun b!5078767 () Bool)

(assert (=> b!5078767 (= e!3168291 (list!19021 (left!42840 (left!42840 ys!41))))))

(declare-fun b!5078769 () Bool)

(declare-fun res!2162302 () Bool)

(assert (=> b!5078769 (=> (not res!2162302) (not e!3168292))))

(assert (=> b!5078769 (= res!2162302 (= (size!39108 lt!2090590) (+ (size!39108 (t!371381 (list!19021 xs!286))) (size!39108 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078768 () Bool)

(assert (=> b!5078768 (= e!3168291 (Cons!58450 (h!64898 (t!371381 (list!19021 xs!286))) (++!12807 (t!371381 (t!371381 (list!19021 xs!286))) (list!19021 (left!42840 (left!42840 ys!41))))))))

(assert (= (and d!1641203 c!872230) b!5078767))

(assert (= (and d!1641203 (not c!872230)) b!5078768))

(assert (= (and d!1641203 res!2162301) b!5078769))

(assert (= (and b!5078769 res!2162302) b!5078770))

(declare-fun m!6129832 () Bool)

(assert (=> d!1641203 m!6129832))

(assert (=> d!1641203 m!6128994))

(assert (=> d!1641203 m!6128228))

(assert (=> d!1641203 m!6129092))

(declare-fun m!6129834 () Bool)

(assert (=> b!5078769 m!6129834))

(assert (=> b!5078769 m!6129000))

(assert (=> b!5078769 m!6128228))

(assert (=> b!5078769 m!6129096))

(assert (=> b!5078768 m!6128228))

(declare-fun m!6129836 () Bool)

(assert (=> b!5078768 m!6129836))

(assert (=> b!5078401 d!1641203))

(declare-fun d!1641205 () Bool)

(declare-fun lt!2090591 () Bool)

(assert (=> d!1641205 (= lt!2090591 (isEmpty!31665 (list!19021 (right!43170 (left!42840 xs!286)))))))

(assert (=> d!1641205 (= lt!2090591 (= (size!39109 (right!43170 (left!42840 xs!286))) 0))))

(assert (=> d!1641205 (= (isEmpty!31663 (right!43170 (left!42840 xs!286))) lt!2090591)))

(declare-fun bs!1190551 () Bool)

(assert (= bs!1190551 d!1641205))

(assert (=> bs!1190551 m!6128970))

(assert (=> bs!1190551 m!6128970))

(declare-fun m!6129838 () Bool)

(assert (=> bs!1190551 m!6129838))

(assert (=> bs!1190551 m!6129064))

(assert (=> b!5078303 d!1641205))

(declare-fun d!1641207 () Bool)

(assert (=> d!1641207 (= (isEmpty!31665 (list!19021 (right!43170 xs!286))) ((_ is Nil!58450) (list!19021 (right!43170 xs!286))))))

(assert (=> d!1641077 d!1641207))

(assert (=> d!1641077 d!1640941))

(declare-fun d!1641209 () Bool)

(declare-fun lt!2090592 () Int)

(assert (=> d!1641209 (= lt!2090592 (size!39108 (list!19021 (right!43170 xs!286))))))

(assert (=> d!1641209 (= lt!2090592 (ite ((_ is Empty!15580) (right!43170 xs!286)) 0 (ite ((_ is Leaf!25875) (right!43170 xs!286)) (csize!31391 (right!43170 xs!286)) (csize!31390 (right!43170 xs!286)))))))

(assert (=> d!1641209 (= (size!39109 (right!43170 xs!286)) lt!2090592)))

(declare-fun bs!1190552 () Bool)

(assert (= bs!1190552 d!1641209))

(assert (=> bs!1190552 m!6128334))

(assert (=> bs!1190552 m!6128334))

(assert (=> bs!1190552 m!6129200))

(assert (=> d!1641077 d!1641209))

(declare-fun d!1641211 () Bool)

(declare-fun res!2162303 () Bool)

(declare-fun e!3168293 () Bool)

(assert (=> d!1641211 (=> (not res!2162303) (not e!3168293))))

(assert (=> d!1641211 (= res!2162303 (= (csize!31390 (left!42840 (left!42840 ys!41))) (+ (size!39109 (left!42840 (left!42840 (left!42840 ys!41)))) (size!39109 (right!43170 (left!42840 (left!42840 ys!41)))))))))

(assert (=> d!1641211 (= (inv!77647 (left!42840 (left!42840 ys!41))) e!3168293)))

(declare-fun b!5078771 () Bool)

(declare-fun res!2162304 () Bool)

(assert (=> b!5078771 (=> (not res!2162304) (not e!3168293))))

(assert (=> b!5078771 (= res!2162304 (and (not (= (left!42840 (left!42840 (left!42840 ys!41))) Empty!15580)) (not (= (right!43170 (left!42840 (left!42840 ys!41))) Empty!15580))))))

(declare-fun b!5078772 () Bool)

(declare-fun res!2162305 () Bool)

(assert (=> b!5078772 (=> (not res!2162305) (not e!3168293))))

(assert (=> b!5078772 (= res!2162305 (= (cheight!15791 (left!42840 (left!42840 ys!41))) (+ (max!0 (height!2157 (left!42840 (left!42840 (left!42840 ys!41)))) (height!2157 (right!43170 (left!42840 (left!42840 ys!41))))) 1)))))

(declare-fun b!5078773 () Bool)

(assert (=> b!5078773 (= e!3168293 (<= 0 (cheight!15791 (left!42840 (left!42840 ys!41)))))))

(assert (= (and d!1641211 res!2162303) b!5078771))

(assert (= (and b!5078771 res!2162304) b!5078772))

(assert (= (and b!5078772 res!2162305) b!5078773))

(declare-fun m!6129840 () Bool)

(assert (=> d!1641211 m!6129840))

(declare-fun m!6129842 () Bool)

(assert (=> d!1641211 m!6129842))

(assert (=> b!5078772 m!6129448))

(assert (=> b!5078772 m!6129450))

(assert (=> b!5078772 m!6129448))

(assert (=> b!5078772 m!6129450))

(declare-fun m!6129844 () Bool)

(assert (=> b!5078772 m!6129844))

(assert (=> b!5078450 d!1641211))

(declare-fun b!5078777 () Bool)

(declare-fun e!3168295 () Bool)

(declare-fun lt!2090593 () List!58574)

(assert (=> b!5078777 (= e!3168295 (or (not (= (list!19021 (right!43170 (right!43170 xs!286))) Nil!58450)) (= lt!2090593 (list!19021 (left!42840 (right!43170 xs!286))))))))

(declare-fun d!1641213 () Bool)

(assert (=> d!1641213 e!3168295))

(declare-fun res!2162306 () Bool)

(assert (=> d!1641213 (=> (not res!2162306) (not e!3168295))))

(assert (=> d!1641213 (= res!2162306 (= (content!10426 lt!2090593) ((_ map or) (content!10426 (list!19021 (left!42840 (right!43170 xs!286)))) (content!10426 (list!19021 (right!43170 (right!43170 xs!286)))))))))

(declare-fun e!3168294 () List!58574)

(assert (=> d!1641213 (= lt!2090593 e!3168294)))

(declare-fun c!872231 () Bool)

(assert (=> d!1641213 (= c!872231 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641213 (= (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286)))) lt!2090593)))

(declare-fun b!5078774 () Bool)

(assert (=> b!5078774 (= e!3168294 (list!19021 (right!43170 (right!43170 xs!286))))))

(declare-fun b!5078776 () Bool)

(declare-fun res!2162307 () Bool)

(assert (=> b!5078776 (=> (not res!2162307) (not e!3168295))))

(assert (=> b!5078776 (= res!2162307 (= (size!39108 lt!2090593) (+ (size!39108 (list!19021 (left!42840 (right!43170 xs!286)))) (size!39108 (list!19021 (right!43170 (right!43170 xs!286)))))))))

(declare-fun b!5078775 () Bool)

(assert (=> b!5078775 (= e!3168294 (Cons!58450 (h!64898 (list!19021 (left!42840 (right!43170 xs!286)))) (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) (list!19021 (right!43170 (right!43170 xs!286))))))))

(assert (= (and d!1641213 c!872231) b!5078774))

(assert (= (and d!1641213 (not c!872231)) b!5078775))

(assert (= (and d!1641213 res!2162306) b!5078776))

(assert (= (and b!5078776 res!2162307) b!5078777))

(declare-fun m!6129846 () Bool)

(assert (=> d!1641213 m!6129846))

(assert (=> d!1641213 m!6128424))

(assert (=> d!1641213 m!6129760))

(assert (=> d!1641213 m!6128426))

(assert (=> d!1641213 m!6129346))

(declare-fun m!6129848 () Bool)

(assert (=> b!5078776 m!6129848))

(assert (=> b!5078776 m!6128424))

(assert (=> b!5078776 m!6129718))

(assert (=> b!5078776 m!6128426))

(assert (=> b!5078776 m!6129350))

(assert (=> b!5078775 m!6128426))

(declare-fun m!6129850 () Bool)

(assert (=> b!5078775 m!6129850))

(assert (=> bm!353879 d!1641213))

(declare-fun d!1641215 () Bool)

(declare-fun c!872232 () Bool)

(assert (=> d!1641215 (= c!872232 ((_ is Node!15580) (left!42840 (right!43170 (left!42840 ys!41)))))))

(declare-fun e!3168296 () Bool)

(assert (=> d!1641215 (= (inv!77643 (left!42840 (right!43170 (left!42840 ys!41)))) e!3168296)))

(declare-fun b!5078778 () Bool)

(assert (=> b!5078778 (= e!3168296 (inv!77647 (left!42840 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5078779 () Bool)

(declare-fun e!3168297 () Bool)

(assert (=> b!5078779 (= e!3168296 e!3168297)))

(declare-fun res!2162308 () Bool)

(assert (=> b!5078779 (= res!2162308 (not ((_ is Leaf!25875) (left!42840 (right!43170 (left!42840 ys!41))))))))

(assert (=> b!5078779 (=> res!2162308 e!3168297)))

(declare-fun b!5078780 () Bool)

(assert (=> b!5078780 (= e!3168297 (inv!77648 (left!42840 (right!43170 (left!42840 ys!41)))))))

(assert (= (and d!1641215 c!872232) b!5078778))

(assert (= (and d!1641215 (not c!872232)) b!5078779))

(assert (= (and b!5078779 (not res!2162308)) b!5078780))

(declare-fun m!6129852 () Bool)

(assert (=> b!5078778 m!6129852))

(declare-fun m!6129854 () Bool)

(assert (=> b!5078780 m!6129854))

(assert (=> b!5078659 d!1641215))

(declare-fun d!1641217 () Bool)

(declare-fun c!872233 () Bool)

(assert (=> d!1641217 (= c!872233 ((_ is Node!15580) (right!43170 (right!43170 (left!42840 ys!41)))))))

(declare-fun e!3168298 () Bool)

(assert (=> d!1641217 (= (inv!77643 (right!43170 (right!43170 (left!42840 ys!41)))) e!3168298)))

(declare-fun b!5078781 () Bool)

(assert (=> b!5078781 (= e!3168298 (inv!77647 (right!43170 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5078782 () Bool)

(declare-fun e!3168299 () Bool)

(assert (=> b!5078782 (= e!3168298 e!3168299)))

(declare-fun res!2162309 () Bool)

(assert (=> b!5078782 (= res!2162309 (not ((_ is Leaf!25875) (right!43170 (right!43170 (left!42840 ys!41))))))))

(assert (=> b!5078782 (=> res!2162309 e!3168299)))

(declare-fun b!5078783 () Bool)

(assert (=> b!5078783 (= e!3168299 (inv!77648 (right!43170 (right!43170 (left!42840 ys!41)))))))

(assert (= (and d!1641217 c!872233) b!5078781))

(assert (= (and d!1641217 (not c!872233)) b!5078782))

(assert (= (and b!5078782 (not res!2162309)) b!5078783))

(declare-fun m!6129856 () Bool)

(assert (=> b!5078781 m!6129856))

(declare-fun m!6129858 () Bool)

(assert (=> b!5078783 m!6129858))

(assert (=> b!5078659 d!1641217))

(declare-fun d!1641219 () Bool)

(declare-fun lt!2090594 () Int)

(assert (=> d!1641219 (>= lt!2090594 0)))

(declare-fun e!3168300 () Int)

(assert (=> d!1641219 (= lt!2090594 e!3168300)))

(declare-fun c!872234 () Bool)

(assert (=> d!1641219 (= c!872234 ((_ is Nil!58450) (list!19023 (xs!18946 (left!42840 ys!41)))))))

(assert (=> d!1641219 (= (size!39108 (list!19023 (xs!18946 (left!42840 ys!41)))) lt!2090594)))

(declare-fun b!5078784 () Bool)

(assert (=> b!5078784 (= e!3168300 0)))

(declare-fun b!5078785 () Bool)

(assert (=> b!5078785 (= e!3168300 (+ 1 (size!39108 (t!371381 (list!19023 (xs!18946 (left!42840 ys!41)))))))))

(assert (= (and d!1641219 c!872234) b!5078784))

(assert (= (and d!1641219 (not c!872234)) b!5078785))

(declare-fun m!6129860 () Bool)

(assert (=> b!5078785 m!6129860))

(assert (=> d!1640867 d!1641219))

(declare-fun d!1641221 () Bool)

(assert (=> d!1641221 (= (list!19023 (xs!18946 (left!42840 ys!41))) (innerList!15668 (xs!18946 (left!42840 ys!41))))))

(assert (=> d!1640867 d!1641221))

(declare-fun d!1641223 () Bool)

(assert (=> d!1641223 (= (list!19023 (xs!18946 lt!2090492)) (innerList!15668 (xs!18946 lt!2090492)))))

(assert (=> b!5078591 d!1641223))

(declare-fun d!1641225 () Bool)

(assert (=> d!1641225 (= (height!2157 (left!42840 (right!43170 ys!41))) (ite ((_ is Empty!15580) (left!42840 (right!43170 ys!41))) 0 (ite ((_ is Leaf!25875) (left!42840 (right!43170 ys!41))) 1 (cheight!15791 (left!42840 (right!43170 ys!41))))))))

(assert (=> b!5078567 d!1641225))

(declare-fun d!1641227 () Bool)

(assert (=> d!1641227 (= (height!2157 (right!43170 (right!43170 ys!41))) (ite ((_ is Empty!15580) (right!43170 (right!43170 ys!41))) 0 (ite ((_ is Leaf!25875) (right!43170 (right!43170 ys!41))) 1 (cheight!15791 (right!43170 (right!43170 ys!41))))))))

(assert (=> b!5078567 d!1641227))

(declare-fun b!5078789 () Bool)

(declare-fun e!3168302 () Bool)

(declare-fun lt!2090595 () List!58574)

(assert (=> b!5078789 (= e!3168302 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090595 (list!19021 (right!43170 xs!286)))))))

(declare-fun d!1641229 () Bool)

(assert (=> d!1641229 e!3168302))

(declare-fun res!2162310 () Bool)

(assert (=> d!1641229 (=> (not res!2162310) (not e!3168302))))

(assert (=> d!1641229 (= res!2162310 (= (content!10426 lt!2090595) ((_ map or) (content!10426 (list!19021 (right!43170 xs!286))) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3168301 () List!58574)

(assert (=> d!1641229 (= lt!2090595 e!3168301)))

(declare-fun c!872235 () Bool)

(assert (=> d!1641229 (= c!872235 ((_ is Nil!58450) (list!19021 (right!43170 xs!286))))))

(assert (=> d!1641229 (= (++!12807 (list!19021 (right!43170 xs!286)) (list!19021 ys!41)) lt!2090595)))

(declare-fun b!5078786 () Bool)

(assert (=> b!5078786 (= e!3168301 (list!19021 ys!41))))

(declare-fun b!5078788 () Bool)

(declare-fun res!2162311 () Bool)

(assert (=> b!5078788 (=> (not res!2162311) (not e!3168302))))

(assert (=> b!5078788 (= res!2162311 (= (size!39108 lt!2090595) (+ (size!39108 (list!19021 (right!43170 xs!286))) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5078787 () Bool)

(assert (=> b!5078787 (= e!3168301 (Cons!58450 (h!64898 (list!19021 (right!43170 xs!286))) (++!12807 (t!371381 (list!19021 (right!43170 xs!286))) (list!19021 ys!41))))))

(assert (= (and d!1641229 c!872235) b!5078786))

(assert (= (and d!1641229 (not c!872235)) b!5078787))

(assert (= (and d!1641229 res!2162310) b!5078788))

(assert (= (and b!5078788 res!2162311) b!5078789))

(declare-fun m!6129862 () Bool)

(assert (=> d!1641229 m!6129862))

(assert (=> d!1641229 m!6128334))

(assert (=> d!1641229 m!6129192))

(assert (=> d!1641229 m!6128090))

(assert (=> d!1641229 m!6128322))

(declare-fun m!6129864 () Bool)

(assert (=> b!5078788 m!6129864))

(assert (=> b!5078788 m!6128334))

(assert (=> b!5078788 m!6129200))

(assert (=> b!5078788 m!6128090))

(assert (=> b!5078788 m!6128328))

(assert (=> b!5078787 m!6128090))

(declare-fun m!6129866 () Bool)

(assert (=> b!5078787 m!6129866))

(assert (=> bm!353861 d!1641229))

(declare-fun d!1641231 () Bool)

(declare-fun res!2162312 () Bool)

(declare-fun e!3168303 () Bool)

(assert (=> d!1641231 (=> (not res!2162312) (not e!3168303))))

(assert (=> d!1641231 (= res!2162312 (= (csize!31390 (left!42840 (right!43170 xs!286))) (+ (size!39109 (left!42840 (left!42840 (right!43170 xs!286)))) (size!39109 (right!43170 (left!42840 (right!43170 xs!286)))))))))

(assert (=> d!1641231 (= (inv!77647 (left!42840 (right!43170 xs!286))) e!3168303)))

(declare-fun b!5078790 () Bool)

(declare-fun res!2162313 () Bool)

(assert (=> b!5078790 (=> (not res!2162313) (not e!3168303))))

(assert (=> b!5078790 (= res!2162313 (and (not (= (left!42840 (left!42840 (right!43170 xs!286))) Empty!15580)) (not (= (right!43170 (left!42840 (right!43170 xs!286))) Empty!15580))))))

(declare-fun b!5078791 () Bool)

(declare-fun res!2162314 () Bool)

(assert (=> b!5078791 (=> (not res!2162314) (not e!3168303))))

(assert (=> b!5078791 (= res!2162314 (= (cheight!15791 (left!42840 (right!43170 xs!286))) (+ (max!0 (height!2157 (left!42840 (left!42840 (right!43170 xs!286)))) (height!2157 (right!43170 (left!42840 (right!43170 xs!286))))) 1)))))

(declare-fun b!5078792 () Bool)

(assert (=> b!5078792 (= e!3168303 (<= 0 (cheight!15791 (left!42840 (right!43170 xs!286)))))))

(assert (= (and d!1641231 res!2162312) b!5078790))

(assert (= (and b!5078790 res!2162313) b!5078791))

(assert (= (and b!5078791 res!2162314) b!5078792))

(declare-fun m!6129868 () Bool)

(assert (=> d!1641231 m!6129868))

(declare-fun m!6129870 () Bool)

(assert (=> d!1641231 m!6129870))

(declare-fun m!6129872 () Bool)

(assert (=> b!5078791 m!6129872))

(declare-fun m!6129874 () Bool)

(assert (=> b!5078791 m!6129874))

(assert (=> b!5078791 m!6129872))

(assert (=> b!5078791 m!6129874))

(declare-fun m!6129876 () Bool)

(assert (=> b!5078791 m!6129876))

(assert (=> b!5078108 d!1641231))

(assert (=> b!5078347 d!1641213))

(assert (=> b!5078347 d!1641065))

(assert (=> b!5078347 d!1641057))

(declare-fun d!1641233 () Bool)

(declare-fun lt!2090596 () Int)

(assert (=> d!1641233 (>= lt!2090596 0)))

(declare-fun e!3168304 () Int)

(assert (=> d!1641233 (= lt!2090596 e!3168304)))

(declare-fun c!872236 () Bool)

(assert (=> d!1641233 (= c!872236 ((_ is Nil!58450) (list!19023 (xs!18946 ys!41))))))

(assert (=> d!1641233 (= (size!39108 (list!19023 (xs!18946 ys!41))) lt!2090596)))

(declare-fun b!5078793 () Bool)

(assert (=> b!5078793 (= e!3168304 0)))

(declare-fun b!5078794 () Bool)

(assert (=> b!5078794 (= e!3168304 (+ 1 (size!39108 (t!371381 (list!19023 (xs!18946 ys!41))))))))

(assert (= (and d!1641233 c!872236) b!5078793))

(assert (= (and d!1641233 (not c!872236)) b!5078794))

(declare-fun m!6129878 () Bool)

(assert (=> b!5078794 m!6129878))

(assert (=> d!1641011 d!1641233))

(assert (=> d!1641011 d!1640991))

(declare-fun d!1641235 () Bool)

(assert (=> d!1641235 (= (list!19023 (xs!18946 (right!43170 (right!43170 xs!286)))) (innerList!15668 (xs!18946 (right!43170 (right!43170 xs!286)))))))

(assert (=> b!5078502 d!1641235))

(declare-fun d!1641237 () Bool)

(declare-fun lt!2090597 () Int)

(assert (=> d!1641237 (>= lt!2090597 0)))

(declare-fun e!3168305 () Int)

(assert (=> d!1641237 (= lt!2090597 e!3168305)))

(declare-fun c!872237 () Bool)

(assert (=> d!1641237 (= c!872237 ((_ is Nil!58450) (innerList!15668 (xs!18946 (left!42840 ys!41)))))))

(assert (=> d!1641237 (= (size!39108 (innerList!15668 (xs!18946 (left!42840 ys!41)))) lt!2090597)))

(declare-fun b!5078795 () Bool)

(assert (=> b!5078795 (= e!3168305 0)))

(declare-fun b!5078796 () Bool)

(assert (=> b!5078796 (= e!3168305 (+ 1 (size!39108 (t!371381 (innerList!15668 (xs!18946 (left!42840 ys!41)))))))))

(assert (= (and d!1641237 c!872237) b!5078795))

(assert (= (and d!1641237 (not c!872237)) b!5078796))

(declare-fun m!6129880 () Bool)

(assert (=> b!5078796 m!6129880))

(assert (=> d!1640801 d!1641237))

(declare-fun d!1641239 () Bool)

(declare-fun lt!2090598 () Int)

(assert (=> d!1641239 (>= lt!2090598 0)))

(declare-fun e!3168306 () Int)

(assert (=> d!1641239 (= lt!2090598 e!3168306)))

(declare-fun c!872238 () Bool)

(assert (=> d!1641239 (= c!872238 ((_ is Nil!58450) (list!19023 (xs!18946 (right!43170 ys!41)))))))

(assert (=> d!1641239 (= (size!39108 (list!19023 (xs!18946 (right!43170 ys!41)))) lt!2090598)))

(declare-fun b!5078797 () Bool)

(assert (=> b!5078797 (= e!3168306 0)))

(declare-fun b!5078798 () Bool)

(assert (=> b!5078798 (= e!3168306 (+ 1 (size!39108 (t!371381 (list!19023 (xs!18946 (right!43170 ys!41)))))))))

(assert (= (and d!1641239 c!872238) b!5078797))

(assert (= (and d!1641239 (not c!872238)) b!5078798))

(declare-fun m!6129882 () Bool)

(assert (=> b!5078798 m!6129882))

(assert (=> b!5078410 d!1641239))

(declare-fun d!1641241 () Bool)

(assert (=> d!1641241 (= (list!19023 (xs!18946 (right!43170 ys!41))) (innerList!15668 (xs!18946 (right!43170 ys!41))))))

(assert (=> b!5078410 d!1641241))

(declare-fun d!1641243 () Bool)

(declare-fun c!872239 () Bool)

(assert (=> d!1641243 (= c!872239 ((_ is Nil!58450) lt!2090537))))

(declare-fun e!3168307 () (InoxSet T!105230))

(assert (=> d!1641243 (= (content!10426 lt!2090537) e!3168307)))

(declare-fun b!5078799 () Bool)

(assert (=> b!5078799 (= e!3168307 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078800 () Bool)

(assert (=> b!5078800 (= e!3168307 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090537) true) (content!10426 (t!371381 lt!2090537))))))

(assert (= (and d!1641243 c!872239) b!5078799))

(assert (= (and d!1641243 (not c!872239)) b!5078800))

(declare-fun m!6129884 () Bool)

(assert (=> b!5078800 m!6129884))

(declare-fun m!6129886 () Bool)

(assert (=> b!5078800 m!6129886))

(assert (=> d!1640957 d!1641243))

(declare-fun d!1641245 () Bool)

(declare-fun c!872240 () Bool)

(assert (=> d!1641245 (= c!872240 ((_ is Nil!58450) (list!19021 (left!42840 lt!2090452))))))

(declare-fun e!3168308 () (InoxSet T!105230))

(assert (=> d!1641245 (= (content!10426 (list!19021 (left!42840 lt!2090452))) e!3168308)))

(declare-fun b!5078801 () Bool)

(assert (=> b!5078801 (= e!3168308 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078802 () Bool)

(assert (=> b!5078802 (= e!3168308 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (left!42840 lt!2090452))) true) (content!10426 (t!371381 (list!19021 (left!42840 lt!2090452))))))))

(assert (= (and d!1641245 c!872240) b!5078801))

(assert (= (and d!1641245 (not c!872240)) b!5078802))

(declare-fun m!6129888 () Bool)

(assert (=> b!5078802 m!6129888))

(declare-fun m!6129890 () Bool)

(assert (=> b!5078802 m!6129890))

(assert (=> d!1640957 d!1641245))

(declare-fun d!1641247 () Bool)

(declare-fun c!872241 () Bool)

(assert (=> d!1641247 (= c!872241 ((_ is Nil!58450) (list!19021 (right!43170 lt!2090452))))))

(declare-fun e!3168309 () (InoxSet T!105230))

(assert (=> d!1641247 (= (content!10426 (list!19021 (right!43170 lt!2090452))) e!3168309)))

(declare-fun b!5078803 () Bool)

(assert (=> b!5078803 (= e!3168309 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5078804 () Bool)

(assert (=> b!5078804 (= e!3168309 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (right!43170 lt!2090452))) true) (content!10426 (t!371381 (list!19021 (right!43170 lt!2090452))))))))

(assert (= (and d!1641247 c!872241) b!5078803))

(assert (= (and d!1641247 (not c!872241)) b!5078804))

(declare-fun m!6129892 () Bool)

(assert (=> b!5078804 m!6129892))

(declare-fun m!6129894 () Bool)

(assert (=> b!5078804 m!6129894))

(assert (=> d!1640957 d!1641247))

(declare-fun b!5078808 () Bool)

(declare-fun e!3168311 () Bool)

(declare-fun lt!2090599 () List!58574)

(assert (=> b!5078808 (= e!3168311 (or (not (= (list!19021 (right!43170 lt!2090493)) Nil!58450)) (= lt!2090599 (list!19021 (left!42840 lt!2090493)))))))

(declare-fun d!1641249 () Bool)

(assert (=> d!1641249 e!3168311))

(declare-fun res!2162315 () Bool)

(assert (=> d!1641249 (=> (not res!2162315) (not e!3168311))))

(assert (=> d!1641249 (= res!2162315 (= (content!10426 lt!2090599) ((_ map or) (content!10426 (list!19021 (left!42840 lt!2090493))) (content!10426 (list!19021 (right!43170 lt!2090493))))))))

(declare-fun e!3168310 () List!58574)

(assert (=> d!1641249 (= lt!2090599 e!3168310)))

(declare-fun c!872242 () Bool)

(assert (=> d!1641249 (= c!872242 ((_ is Nil!58450) (list!19021 (left!42840 lt!2090493))))))

(assert (=> d!1641249 (= (++!12807 (list!19021 (left!42840 lt!2090493)) (list!19021 (right!43170 lt!2090493))) lt!2090599)))

(declare-fun b!5078805 () Bool)

(assert (=> b!5078805 (= e!3168310 (list!19021 (right!43170 lt!2090493)))))

(declare-fun b!5078807 () Bool)

(declare-fun res!2162316 () Bool)

(assert (=> b!5078807 (=> (not res!2162316) (not e!3168311))))

(assert (=> b!5078807 (= res!2162316 (= (size!39108 lt!2090599) (+ (size!39108 (list!19021 (left!42840 lt!2090493))) (size!39108 (list!19021 (right!43170 lt!2090493))))))))

(declare-fun b!5078806 () Bool)

(assert (=> b!5078806 (= e!3168310 (Cons!58450 (h!64898 (list!19021 (left!42840 lt!2090493))) (++!12807 (t!371381 (list!19021 (left!42840 lt!2090493))) (list!19021 (right!43170 lt!2090493)))))))

(assert (= (and d!1641249 c!872242) b!5078805))

(assert (= (and d!1641249 (not c!872242)) b!5078806))

(assert (= (and d!1641249 res!2162315) b!5078807))

(assert (= (and b!5078807 res!2162316) b!5078808))

(declare-fun m!6129896 () Bool)

(assert (=> d!1641249 m!6129896))

(assert (=> d!1641249 m!6128610))

(declare-fun m!6129898 () Bool)

(assert (=> d!1641249 m!6129898))

(assert (=> d!1641249 m!6128612))

(declare-fun m!6129900 () Bool)

(assert (=> d!1641249 m!6129900))

(declare-fun m!6129902 () Bool)

(assert (=> b!5078807 m!6129902))

(assert (=> b!5078807 m!6128610))

(declare-fun m!6129904 () Bool)

(assert (=> b!5078807 m!6129904))

(assert (=> b!5078807 m!6128612))

(declare-fun m!6129906 () Bool)

(assert (=> b!5078807 m!6129906))

(assert (=> b!5078806 m!6128612))

(declare-fun m!6129908 () Bool)

(assert (=> b!5078806 m!6129908))

(assert (=> b!5078150 d!1641249))

(declare-fun b!5078809 () Bool)

(declare-fun e!3168312 () List!58574)

(assert (=> b!5078809 (= e!3168312 Nil!58450)))

(declare-fun b!5078812 () Bool)

(declare-fun e!3168313 () List!58574)

(assert (=> b!5078812 (= e!3168313 (++!12807 (list!19021 (left!42840 (left!42840 lt!2090493))) (list!19021 (right!43170 (left!42840 lt!2090493)))))))

(declare-fun b!5078811 () Bool)

(assert (=> b!5078811 (= e!3168313 (list!19023 (xs!18946 (left!42840 lt!2090493))))))

(declare-fun d!1641251 () Bool)

(declare-fun c!872243 () Bool)

(assert (=> d!1641251 (= c!872243 ((_ is Empty!15580) (left!42840 lt!2090493)))))

(assert (=> d!1641251 (= (list!19021 (left!42840 lt!2090493)) e!3168312)))

(declare-fun b!5078810 () Bool)

(assert (=> b!5078810 (= e!3168312 e!3168313)))

(declare-fun c!872244 () Bool)

(assert (=> b!5078810 (= c!872244 ((_ is Leaf!25875) (left!42840 lt!2090493)))))

(assert (= (and d!1641251 c!872243) b!5078809))

(assert (= (and d!1641251 (not c!872243)) b!5078810))

(assert (= (and b!5078810 c!872244) b!5078811))

(assert (= (and b!5078810 (not c!872244)) b!5078812))

(declare-fun m!6129910 () Bool)

(assert (=> b!5078812 m!6129910))

(declare-fun m!6129912 () Bool)

(assert (=> b!5078812 m!6129912))

(assert (=> b!5078812 m!6129910))

(assert (=> b!5078812 m!6129912))

(declare-fun m!6129914 () Bool)

(assert (=> b!5078812 m!6129914))

(declare-fun m!6129916 () Bool)

(assert (=> b!5078811 m!6129916))

(assert (=> b!5078150 d!1641251))

(declare-fun b!5078813 () Bool)

(declare-fun e!3168314 () List!58574)

(assert (=> b!5078813 (= e!3168314 Nil!58450)))

(declare-fun b!5078816 () Bool)

(declare-fun e!3168315 () List!58574)

(assert (=> b!5078816 (= e!3168315 (++!12807 (list!19021 (left!42840 (right!43170 lt!2090493))) (list!19021 (right!43170 (right!43170 lt!2090493)))))))

(declare-fun b!5078815 () Bool)

(assert (=> b!5078815 (= e!3168315 (list!19023 (xs!18946 (right!43170 lt!2090493))))))

(declare-fun d!1641253 () Bool)

(declare-fun c!872245 () Bool)

(assert (=> d!1641253 (= c!872245 ((_ is Empty!15580) (right!43170 lt!2090493)))))

(assert (=> d!1641253 (= (list!19021 (right!43170 lt!2090493)) e!3168314)))

(declare-fun b!5078814 () Bool)

(assert (=> b!5078814 (= e!3168314 e!3168315)))

(declare-fun c!872246 () Bool)

(assert (=> b!5078814 (= c!872246 ((_ is Leaf!25875) (right!43170 lt!2090493)))))

(assert (= (and d!1641253 c!872245) b!5078813))

(assert (= (and d!1641253 (not c!872245)) b!5078814))

(assert (= (and b!5078814 c!872246) b!5078815))

(assert (= (and b!5078814 (not c!872246)) b!5078816))

(declare-fun m!6129918 () Bool)

(assert (=> b!5078816 m!6129918))

(declare-fun m!6129920 () Bool)

(assert (=> b!5078816 m!6129920))

(assert (=> b!5078816 m!6129918))

(assert (=> b!5078816 m!6129920))

(declare-fun m!6129922 () Bool)

(assert (=> b!5078816 m!6129922))

(declare-fun m!6129924 () Bool)

(assert (=> b!5078815 m!6129924))

(assert (=> b!5078150 d!1641253))

(declare-fun d!1641255 () Bool)

(assert (=> d!1641255 (= (height!2157 (ite c!872092 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) lt!2090516)) (ite ((_ is Empty!15580) (ite c!872092 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) lt!2090516)) 0 (ite ((_ is Leaf!25875) (ite c!872092 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) lt!2090516)) 1 (cheight!15791 (ite c!872092 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) lt!2090516)))))))

(assert (=> bm!353837 d!1641255))

(declare-fun b!5078820 () Bool)

(declare-fun e!3168317 () Bool)

(declare-fun lt!2090600 () List!58574)

(assert (=> b!5078820 (= e!3168317 (or (not (= (list!19021 (right!43170 (right!43170 lt!2090452))) Nil!58450)) (= lt!2090600 (list!19021 (left!42840 (right!43170 lt!2090452))))))))

(declare-fun d!1641257 () Bool)

(assert (=> d!1641257 e!3168317))

(declare-fun res!2162317 () Bool)

(assert (=> d!1641257 (=> (not res!2162317) (not e!3168317))))

(assert (=> d!1641257 (= res!2162317 (= (content!10426 lt!2090600) ((_ map or) (content!10426 (list!19021 (left!42840 (right!43170 lt!2090452)))) (content!10426 (list!19021 (right!43170 (right!43170 lt!2090452)))))))))

(declare-fun e!3168316 () List!58574)

(assert (=> d!1641257 (= lt!2090600 e!3168316)))

(declare-fun c!872247 () Bool)

(assert (=> d!1641257 (= c!872247 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 lt!2090452)))))))

(assert (=> d!1641257 (= (++!12807 (list!19021 (left!42840 (right!43170 lt!2090452))) (list!19021 (right!43170 (right!43170 lt!2090452)))) lt!2090600)))

(declare-fun b!5078817 () Bool)

(assert (=> b!5078817 (= e!3168316 (list!19021 (right!43170 (right!43170 lt!2090452))))))

(declare-fun b!5078819 () Bool)

(declare-fun res!2162318 () Bool)

(assert (=> b!5078819 (=> (not res!2162318) (not e!3168317))))

(assert (=> b!5078819 (= res!2162318 (= (size!39108 lt!2090600) (+ (size!39108 (list!19021 (left!42840 (right!43170 lt!2090452)))) (size!39108 (list!19021 (right!43170 (right!43170 lt!2090452)))))))))

(declare-fun b!5078818 () Bool)

(assert (=> b!5078818 (= e!3168316 (Cons!58450 (h!64898 (list!19021 (left!42840 (right!43170 lt!2090452)))) (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 lt!2090452)))) (list!19021 (right!43170 (right!43170 lt!2090452))))))))

(assert (= (and d!1641257 c!872247) b!5078817))

(assert (= (and d!1641257 (not c!872247)) b!5078818))

(assert (= (and d!1641257 res!2162317) b!5078819))

(assert (= (and b!5078819 res!2162318) b!5078820))

(declare-fun m!6129926 () Bool)

(assert (=> d!1641257 m!6129926))

(assert (=> d!1641257 m!6129052))

(declare-fun m!6129928 () Bool)

(assert (=> d!1641257 m!6129928))

(assert (=> d!1641257 m!6129054))

(declare-fun m!6129930 () Bool)

(assert (=> d!1641257 m!6129930))

(declare-fun m!6129932 () Bool)

(assert (=> b!5078819 m!6129932))

(assert (=> b!5078819 m!6129052))

(declare-fun m!6129934 () Bool)

(assert (=> b!5078819 m!6129934))

(assert (=> b!5078819 m!6129054))

(declare-fun m!6129936 () Bool)

(assert (=> b!5078819 m!6129936))

(assert (=> b!5078818 m!6129054))

(declare-fun m!6129938 () Bool)

(assert (=> b!5078818 m!6129938))

(assert (=> b!5078380 d!1641257))

(declare-fun b!5078821 () Bool)

(declare-fun e!3168318 () List!58574)

(assert (=> b!5078821 (= e!3168318 Nil!58450)))

(declare-fun b!5078824 () Bool)

(declare-fun e!3168319 () List!58574)

(assert (=> b!5078824 (= e!3168319 (++!12807 (list!19021 (left!42840 (left!42840 (right!43170 lt!2090452)))) (list!19021 (right!43170 (left!42840 (right!43170 lt!2090452))))))))

(declare-fun b!5078823 () Bool)

(assert (=> b!5078823 (= e!3168319 (list!19023 (xs!18946 (left!42840 (right!43170 lt!2090452)))))))

(declare-fun d!1641259 () Bool)

(declare-fun c!872248 () Bool)

(assert (=> d!1641259 (= c!872248 ((_ is Empty!15580) (left!42840 (right!43170 lt!2090452))))))

(assert (=> d!1641259 (= (list!19021 (left!42840 (right!43170 lt!2090452))) e!3168318)))

(declare-fun b!5078822 () Bool)

(assert (=> b!5078822 (= e!3168318 e!3168319)))

(declare-fun c!872249 () Bool)

(assert (=> b!5078822 (= c!872249 ((_ is Leaf!25875) (left!42840 (right!43170 lt!2090452))))))

(assert (= (and d!1641259 c!872248) b!5078821))

(assert (= (and d!1641259 (not c!872248)) b!5078822))

(assert (= (and b!5078822 c!872249) b!5078823))

(assert (= (and b!5078822 (not c!872249)) b!5078824))

(declare-fun m!6129940 () Bool)

(assert (=> b!5078824 m!6129940))

(declare-fun m!6129942 () Bool)

(assert (=> b!5078824 m!6129942))

(assert (=> b!5078824 m!6129940))

(assert (=> b!5078824 m!6129942))

(declare-fun m!6129944 () Bool)

(assert (=> b!5078824 m!6129944))

(declare-fun m!6129946 () Bool)

(assert (=> b!5078823 m!6129946))

(assert (=> b!5078380 d!1641259))

(declare-fun b!5078825 () Bool)

(declare-fun e!3168320 () List!58574)

(assert (=> b!5078825 (= e!3168320 Nil!58450)))

(declare-fun b!5078828 () Bool)

(declare-fun e!3168321 () List!58574)

(assert (=> b!5078828 (= e!3168321 (++!12807 (list!19021 (left!42840 (right!43170 (right!43170 lt!2090452)))) (list!19021 (right!43170 (right!43170 (right!43170 lt!2090452))))))))

(declare-fun b!5078827 () Bool)

(assert (=> b!5078827 (= e!3168321 (list!19023 (xs!18946 (right!43170 (right!43170 lt!2090452)))))))

(declare-fun d!1641261 () Bool)

(declare-fun c!872250 () Bool)

(assert (=> d!1641261 (= c!872250 ((_ is Empty!15580) (right!43170 (right!43170 lt!2090452))))))

(assert (=> d!1641261 (= (list!19021 (right!43170 (right!43170 lt!2090452))) e!3168320)))

(declare-fun b!5078826 () Bool)

(assert (=> b!5078826 (= e!3168320 e!3168321)))

(declare-fun c!872251 () Bool)

(assert (=> b!5078826 (= c!872251 ((_ is Leaf!25875) (right!43170 (right!43170 lt!2090452))))))

(assert (= (and d!1641261 c!872250) b!5078825))

(assert (= (and d!1641261 (not c!872250)) b!5078826))

(assert (= (and b!5078826 c!872251) b!5078827))

(assert (= (and b!5078826 (not c!872251)) b!5078828))

(declare-fun m!6129948 () Bool)

(assert (=> b!5078828 m!6129948))

(declare-fun m!6129950 () Bool)

(assert (=> b!5078828 m!6129950))

(assert (=> b!5078828 m!6129948))

(assert (=> b!5078828 m!6129950))

(declare-fun m!6129952 () Bool)

(assert (=> b!5078828 m!6129952))

(declare-fun m!6129954 () Bool)

(assert (=> b!5078827 m!6129954))

(assert (=> b!5078380 d!1641261))

(declare-fun b!5078832 () Bool)

(declare-fun e!3168323 () Bool)

(declare-fun lt!2090601 () List!58574)

(assert (=> b!5078832 (= e!3168323 (or (not (= (list!19021 (right!43170 (right!43170 ys!41))) Nil!58450)) (= lt!2090601 (list!19021 (left!42840 (right!43170 ys!41))))))))

(declare-fun d!1641263 () Bool)

(assert (=> d!1641263 e!3168323))

(declare-fun res!2162319 () Bool)

(assert (=> d!1641263 (=> (not res!2162319) (not e!3168323))))

(assert (=> d!1641263 (= res!2162319 (= (content!10426 lt!2090601) ((_ map or) (content!10426 (list!19021 (left!42840 (right!43170 ys!41)))) (content!10426 (list!19021 (right!43170 (right!43170 ys!41)))))))))

(declare-fun e!3168322 () List!58574)

(assert (=> d!1641263 (= lt!2090601 e!3168322)))

(declare-fun c!872252 () Bool)

(assert (=> d!1641263 (= c!872252 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 ys!41)))))))

(assert (=> d!1641263 (= (++!12807 (list!19021 (left!42840 (right!43170 ys!41))) (list!19021 (right!43170 (right!43170 ys!41)))) lt!2090601)))

(declare-fun b!5078829 () Bool)

(assert (=> b!5078829 (= e!3168322 (list!19021 (right!43170 (right!43170 ys!41))))))

(declare-fun b!5078831 () Bool)

(declare-fun res!2162320 () Bool)

(assert (=> b!5078831 (=> (not res!2162320) (not e!3168323))))

(assert (=> b!5078831 (= res!2162320 (= (size!39108 lt!2090601) (+ (size!39108 (list!19021 (left!42840 (right!43170 ys!41)))) (size!39108 (list!19021 (right!43170 (right!43170 ys!41)))))))))

(declare-fun b!5078830 () Bool)

(assert (=> b!5078830 (= e!3168322 (Cons!58450 (h!64898 (list!19021 (left!42840 (right!43170 ys!41)))) (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 ys!41)))) (list!19021 (right!43170 (right!43170 ys!41))))))))

(assert (= (and d!1641263 c!872252) b!5078829))

(assert (= (and d!1641263 (not c!872252)) b!5078830))

(assert (= (and d!1641263 res!2162319) b!5078831))

(assert (= (and b!5078831 res!2162320) b!5078832))

(declare-fun m!6129956 () Bool)

(assert (=> d!1641263 m!6129956))

(assert (=> d!1641263 m!6128530))

(declare-fun m!6129958 () Bool)

(assert (=> d!1641263 m!6129958))

(assert (=> d!1641263 m!6128532))

(declare-fun m!6129960 () Bool)

(assert (=> d!1641263 m!6129960))

(declare-fun m!6129962 () Bool)

(assert (=> b!5078831 m!6129962))

(assert (=> b!5078831 m!6128530))

(declare-fun m!6129964 () Bool)

(assert (=> b!5078831 m!6129964))

(assert (=> b!5078831 m!6128532))

(declare-fun m!6129966 () Bool)

(assert (=> b!5078831 m!6129966))

(assert (=> b!5078830 m!6128532))

(declare-fun m!6129968 () Bool)

(assert (=> b!5078830 m!6129968))

(assert (=> b!5078107 d!1641263))

(declare-fun b!5078833 () Bool)

(declare-fun e!3168324 () List!58574)

(assert (=> b!5078833 (= e!3168324 Nil!58450)))

(declare-fun b!5078836 () Bool)

(declare-fun e!3168325 () List!58574)

(assert (=> b!5078836 (= e!3168325 (++!12807 (list!19021 (left!42840 (left!42840 (right!43170 ys!41)))) (list!19021 (right!43170 (left!42840 (right!43170 ys!41))))))))

(declare-fun b!5078835 () Bool)

(assert (=> b!5078835 (= e!3168325 (list!19023 (xs!18946 (left!42840 (right!43170 ys!41)))))))

(declare-fun d!1641265 () Bool)

(declare-fun c!872253 () Bool)

(assert (=> d!1641265 (= c!872253 ((_ is Empty!15580) (left!42840 (right!43170 ys!41))))))

(assert (=> d!1641265 (= (list!19021 (left!42840 (right!43170 ys!41))) e!3168324)))

(declare-fun b!5078834 () Bool)

(assert (=> b!5078834 (= e!3168324 e!3168325)))

(declare-fun c!872254 () Bool)

(assert (=> b!5078834 (= c!872254 ((_ is Leaf!25875) (left!42840 (right!43170 ys!41))))))

(assert (= (and d!1641265 c!872253) b!5078833))

(assert (= (and d!1641265 (not c!872253)) b!5078834))

(assert (= (and b!5078834 c!872254) b!5078835))

(assert (= (and b!5078834 (not c!872254)) b!5078836))

(declare-fun m!6129970 () Bool)

(assert (=> b!5078836 m!6129970))

(declare-fun m!6129972 () Bool)

(assert (=> b!5078836 m!6129972))

(assert (=> b!5078836 m!6129970))

(assert (=> b!5078836 m!6129972))

(declare-fun m!6129974 () Bool)

(assert (=> b!5078836 m!6129974))

(declare-fun m!6129976 () Bool)

(assert (=> b!5078835 m!6129976))

(assert (=> b!5078107 d!1641265))

(declare-fun b!5078837 () Bool)

(declare-fun e!3168326 () List!58574)

(assert (=> b!5078837 (= e!3168326 Nil!58450)))

(declare-fun b!5078840 () Bool)

(declare-fun e!3168327 () List!58574)

(assert (=> b!5078840 (= e!3168327 (++!12807 (list!19021 (left!42840 (right!43170 (right!43170 ys!41)))) (list!19021 (right!43170 (right!43170 (right!43170 ys!41))))))))

(declare-fun b!5078839 () Bool)

(assert (=> b!5078839 (= e!3168327 (list!19023 (xs!18946 (right!43170 (right!43170 ys!41)))))))

(declare-fun d!1641267 () Bool)

(declare-fun c!872255 () Bool)

(assert (=> d!1641267 (= c!872255 ((_ is Empty!15580) (right!43170 (right!43170 ys!41))))))

(assert (=> d!1641267 (= (list!19021 (right!43170 (right!43170 ys!41))) e!3168326)))

(declare-fun b!5078838 () Bool)

(assert (=> b!5078838 (= e!3168326 e!3168327)))

(declare-fun c!872256 () Bool)

(assert (=> b!5078838 (= c!872256 ((_ is Leaf!25875) (right!43170 (right!43170 ys!41))))))

(assert (= (and d!1641267 c!872255) b!5078837))

(assert (= (and d!1641267 (not c!872255)) b!5078838))

(assert (= (and b!5078838 c!872256) b!5078839))

(assert (= (and b!5078838 (not c!872256)) b!5078840))

(declare-fun m!6129978 () Bool)

(assert (=> b!5078840 m!6129978))

(declare-fun m!6129980 () Bool)

(assert (=> b!5078840 m!6129980))

(assert (=> b!5078840 m!6129978))

(assert (=> b!5078840 m!6129980))

(declare-fun m!6129982 () Bool)

(assert (=> b!5078840 m!6129982))

(declare-fun m!6129984 () Bool)

(assert (=> b!5078839 m!6129984))

(assert (=> b!5078107 d!1641267))

(assert (=> b!5078102 d!1641221))

(declare-fun d!1641269 () Bool)

(declare-fun c!872257 () Bool)

(assert (=> d!1641269 (= c!872257 ((_ is Node!15580) (left!42840 (right!43170 (right!43170 xs!286)))))))

(declare-fun e!3168328 () Bool)

(assert (=> d!1641269 (= (inv!77643 (left!42840 (right!43170 (right!43170 xs!286)))) e!3168328)))

(declare-fun b!5078841 () Bool)

(assert (=> b!5078841 (= e!3168328 (inv!77647 (left!42840 (right!43170 (right!43170 xs!286)))))))

(declare-fun b!5078842 () Bool)

(declare-fun e!3168329 () Bool)

(assert (=> b!5078842 (= e!3168328 e!3168329)))

(declare-fun res!2162321 () Bool)

(assert (=> b!5078842 (= res!2162321 (not ((_ is Leaf!25875) (left!42840 (right!43170 (right!43170 xs!286))))))))

(assert (=> b!5078842 (=> res!2162321 e!3168329)))

(declare-fun b!5078843 () Bool)

(assert (=> b!5078843 (= e!3168329 (inv!77648 (left!42840 (right!43170 (right!43170 xs!286)))))))

(assert (= (and d!1641269 c!872257) b!5078841))

(assert (= (and d!1641269 (not c!872257)) b!5078842))

(assert (= (and b!5078842 (not res!2162321)) b!5078843))

(declare-fun m!6129986 () Bool)

(assert (=> b!5078841 m!6129986))

(declare-fun m!6129988 () Bool)

(assert (=> b!5078843 m!6129988))

(assert (=> b!5078626 d!1641269))

(declare-fun d!1641271 () Bool)

(declare-fun c!872258 () Bool)

(assert (=> d!1641271 (= c!872258 ((_ is Node!15580) (right!43170 (right!43170 (right!43170 xs!286)))))))

(declare-fun e!3168330 () Bool)

(assert (=> d!1641271 (= (inv!77643 (right!43170 (right!43170 (right!43170 xs!286)))) e!3168330)))

(declare-fun b!5078844 () Bool)

(assert (=> b!5078844 (= e!3168330 (inv!77647 (right!43170 (right!43170 (right!43170 xs!286)))))))

(declare-fun b!5078845 () Bool)

(declare-fun e!3168331 () Bool)

(assert (=> b!5078845 (= e!3168330 e!3168331)))

(declare-fun res!2162322 () Bool)

(assert (=> b!5078845 (= res!2162322 (not ((_ is Leaf!25875) (right!43170 (right!43170 (right!43170 xs!286))))))))

(assert (=> b!5078845 (=> res!2162322 e!3168331)))

(declare-fun b!5078846 () Bool)

(assert (=> b!5078846 (= e!3168331 (inv!77648 (right!43170 (right!43170 (right!43170 xs!286)))))))

(assert (= (and d!1641271 c!872258) b!5078844))

(assert (= (and d!1641271 (not c!872258)) b!5078845))

(assert (= (and b!5078845 (not res!2162322)) b!5078846))

(declare-fun m!6129990 () Bool)

(assert (=> b!5078844 m!6129990))

(declare-fun m!6129992 () Bool)

(assert (=> b!5078846 m!6129992))

(assert (=> b!5078626 d!1641271))

(assert (=> b!5078072 d!1641015))

(assert (=> b!5078072 d!1641017))

(declare-fun d!1641273 () Bool)

(assert (=> d!1641273 (= (isEmpty!31665 (list!19021 (left!42840 xs!286))) ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1640915 d!1641273))

(assert (=> d!1640915 d!1640939))

(declare-fun d!1641275 () Bool)

(declare-fun lt!2090602 () Int)

(assert (=> d!1641275 (= lt!2090602 (size!39108 (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641275 (= lt!2090602 (ite ((_ is Empty!15580) (left!42840 xs!286)) 0 (ite ((_ is Leaf!25875) (left!42840 xs!286)) (csize!31391 (left!42840 xs!286)) (csize!31390 (left!42840 xs!286)))))))

(assert (=> d!1641275 (= (size!39109 (left!42840 xs!286)) lt!2090602)))

(declare-fun bs!1190553 () Bool)

(assert (= bs!1190553 d!1641275))

(assert (=> bs!1190553 m!6128332))

(assert (=> bs!1190553 m!6128332))

(assert (=> bs!1190553 m!6129198))

(assert (=> d!1640915 d!1641275))

(declare-fun lt!2090603 () List!58574)

(declare-fun e!3168333 () Bool)

(declare-fun b!5078850 () Bool)

(assert (=> b!5078850 (= e!3168333 (or (not (= call!353880 Nil!58450)) (= lt!2090603 (list!19021 (left!42840 xs!286)))))))

(declare-fun d!1641277 () Bool)

(assert (=> d!1641277 e!3168333))

(declare-fun res!2162323 () Bool)

(assert (=> d!1641277 (=> (not res!2162323) (not e!3168333))))

(assert (=> d!1641277 (= res!2162323 (= (content!10426 lt!2090603) ((_ map or) (content!10426 (list!19021 (left!42840 xs!286))) (content!10426 call!353880))))))

(declare-fun e!3168332 () List!58574)

(assert (=> d!1641277 (= lt!2090603 e!3168332)))

(declare-fun c!872259 () Bool)

(assert (=> d!1641277 (= c!872259 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641277 (= (++!12807 (list!19021 (left!42840 xs!286)) call!353880) lt!2090603)))

(declare-fun b!5078847 () Bool)

(assert (=> b!5078847 (= e!3168332 call!353880)))

(declare-fun b!5078849 () Bool)

(declare-fun res!2162324 () Bool)

(assert (=> b!5078849 (=> (not res!2162324) (not e!3168333))))

(assert (=> b!5078849 (= res!2162324 (= (size!39108 lt!2090603) (+ (size!39108 (list!19021 (left!42840 xs!286))) (size!39108 call!353880))))))

(declare-fun b!5078848 () Bool)

(assert (=> b!5078848 (= e!3168332 (Cons!58450 (h!64898 (list!19021 (left!42840 xs!286))) (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) call!353880)))))

(assert (= (and d!1641277 c!872259) b!5078847))

(assert (= (and d!1641277 (not c!872259)) b!5078848))

(assert (= (and d!1641277 res!2162323) b!5078849))

(assert (= (and b!5078849 res!2162324) b!5078850))

(declare-fun m!6129994 () Bool)

(assert (=> d!1641277 m!6129994))

(assert (=> d!1641277 m!6128332))

(assert (=> d!1641277 m!6129190))

(declare-fun m!6129996 () Bool)

(assert (=> d!1641277 m!6129996))

(declare-fun m!6129998 () Bool)

(assert (=> b!5078849 m!6129998))

(assert (=> b!5078849 m!6128332))

(assert (=> b!5078849 m!6129198))

(declare-fun m!6130000 () Bool)

(assert (=> b!5078849 m!6130000))

(declare-fun m!6130002 () Bool)

(assert (=> b!5078848 m!6130002))

(assert (=> bm!353876 d!1641277))

(declare-fun d!1641279 () Bool)

(declare-fun lt!2090604 () Int)

(assert (=> d!1641279 (>= lt!2090604 0)))

(declare-fun e!3168334 () Int)

(assert (=> d!1641279 (= lt!2090604 e!3168334)))

(declare-fun c!872260 () Bool)

(assert (=> d!1641279 (= c!872260 ((_ is Nil!58450) (list!19023 (xs!18946 (left!42840 xs!286)))))))

(assert (=> d!1641279 (= (size!39108 (list!19023 (xs!18946 (left!42840 xs!286)))) lt!2090604)))

(declare-fun b!5078851 () Bool)

(assert (=> b!5078851 (= e!3168334 0)))

(declare-fun b!5078852 () Bool)

(assert (=> b!5078852 (= e!3168334 (+ 1 (size!39108 (t!371381 (list!19023 (xs!18946 (left!42840 xs!286)))))))))

(assert (= (and d!1641279 c!872260) b!5078851))

(assert (= (and d!1641279 (not c!872260)) b!5078852))

(declare-fun m!6130004 () Bool)

(assert (=> b!5078852 m!6130004))

(assert (=> b!5078404 d!1641279))

(declare-fun d!1641281 () Bool)

(assert (=> d!1641281 (= (list!19023 (xs!18946 (left!42840 xs!286))) (innerList!15668 (xs!18946 (left!42840 xs!286))))))

(assert (=> b!5078404 d!1641281))

(declare-fun d!1641283 () Bool)

(declare-fun lt!2090605 () Bool)

(assert (=> d!1641283 (= lt!2090605 (isEmpty!31665 (list!19021 (left!42840 (left!42840 xs!286)))))))

(assert (=> d!1641283 (= lt!2090605 (= (size!39109 (left!42840 (left!42840 xs!286))) 0))))

(assert (=> d!1641283 (= (isEmpty!31663 (left!42840 (left!42840 xs!286))) lt!2090605)))

(declare-fun bs!1190554 () Bool)

(assert (= bs!1190554 d!1641283))

(assert (=> bs!1190554 m!6128968))

(assert (=> bs!1190554 m!6128968))

(declare-fun m!6130006 () Bool)

(assert (=> bs!1190554 m!6130006))

(assert (=> bs!1190554 m!6129062))

(assert (=> b!5078304 d!1641283))

(declare-fun b!5078856 () Bool)

(declare-fun e!3168336 () Bool)

(declare-fun lt!2090606 () List!58574)

(assert (=> b!5078856 (= e!3168336 (or (not (= (list!19021 (right!43170 lt!2090452)) Nil!58450)) (= lt!2090606 (t!371381 (list!19021 (left!42840 lt!2090452))))))))

(declare-fun d!1641285 () Bool)

(assert (=> d!1641285 e!3168336))

(declare-fun res!2162325 () Bool)

(assert (=> d!1641285 (=> (not res!2162325) (not e!3168336))))

(assert (=> d!1641285 (= res!2162325 (= (content!10426 lt!2090606) ((_ map or) (content!10426 (t!371381 (list!19021 (left!42840 lt!2090452)))) (content!10426 (list!19021 (right!43170 lt!2090452))))))))

(declare-fun e!3168335 () List!58574)

(assert (=> d!1641285 (= lt!2090606 e!3168335)))

(declare-fun c!872261 () Bool)

(assert (=> d!1641285 (= c!872261 ((_ is Nil!58450) (t!371381 (list!19021 (left!42840 lt!2090452)))))))

(assert (=> d!1641285 (= (++!12807 (t!371381 (list!19021 (left!42840 lt!2090452))) (list!19021 (right!43170 lt!2090452))) lt!2090606)))

(declare-fun b!5078853 () Bool)

(assert (=> b!5078853 (= e!3168335 (list!19021 (right!43170 lt!2090452)))))

(declare-fun b!5078855 () Bool)

(declare-fun res!2162326 () Bool)

(assert (=> b!5078855 (=> (not res!2162326) (not e!3168336))))

(assert (=> b!5078855 (= res!2162326 (= (size!39108 lt!2090606) (+ (size!39108 (t!371381 (list!19021 (left!42840 lt!2090452)))) (size!39108 (list!19021 (right!43170 lt!2090452))))))))

(declare-fun b!5078854 () Bool)

(assert (=> b!5078854 (= e!3168335 (Cons!58450 (h!64898 (t!371381 (list!19021 (left!42840 lt!2090452)))) (++!12807 (t!371381 (t!371381 (list!19021 (left!42840 lt!2090452)))) (list!19021 (right!43170 lt!2090452)))))))

(assert (= (and d!1641285 c!872261) b!5078853))

(assert (= (and d!1641285 (not c!872261)) b!5078854))

(assert (= (and d!1641285 res!2162325) b!5078855))

(assert (= (and b!5078855 res!2162326) b!5078856))

(declare-fun m!6130008 () Bool)

(assert (=> d!1641285 m!6130008))

(assert (=> d!1641285 m!6129890))

(assert (=> d!1641285 m!6128276))

(assert (=> d!1641285 m!6129026))

(declare-fun m!6130010 () Bool)

(assert (=> b!5078855 m!6130010))

(declare-fun m!6130012 () Bool)

(assert (=> b!5078855 m!6130012))

(assert (=> b!5078855 m!6128276))

(assert (=> b!5078855 m!6129032))

(assert (=> b!5078854 m!6128276))

(declare-fun m!6130014 () Bool)

(assert (=> b!5078854 m!6130014))

(assert (=> b!5078364 d!1641285))

(declare-fun d!1641287 () Bool)

(declare-fun lt!2090607 () Int)

(assert (=> d!1641287 (>= lt!2090607 0)))

(declare-fun e!3168337 () Int)

(assert (=> d!1641287 (= lt!2090607 e!3168337)))

(declare-fun c!872262 () Bool)

(assert (=> d!1641287 (= c!872262 ((_ is Nil!58450) lt!2090539))))

(assert (=> d!1641287 (= (size!39108 lt!2090539) lt!2090607)))

(declare-fun b!5078857 () Bool)

(assert (=> b!5078857 (= e!3168337 0)))

(declare-fun b!5078858 () Bool)

(assert (=> b!5078858 (= e!3168337 (+ 1 (size!39108 (t!371381 lt!2090539))))))

(assert (= (and d!1641287 c!872262) b!5078857))

(assert (= (and d!1641287 (not c!872262)) b!5078858))

(declare-fun m!6130016 () Bool)

(assert (=> b!5078858 m!6130016))

(assert (=> b!5078402 d!1641287))

(assert (=> b!5078402 d!1641115))

(declare-fun d!1641289 () Bool)

(declare-fun lt!2090608 () Int)

(assert (=> d!1641289 (>= lt!2090608 0)))

(declare-fun e!3168338 () Int)

(assert (=> d!1641289 (= lt!2090608 e!3168338)))

(declare-fun c!872263 () Bool)

(assert (=> d!1641289 (= c!872263 ((_ is Nil!58450) (list!19021 (left!42840 (left!42840 ys!41)))))))

(assert (=> d!1641289 (= (size!39108 (list!19021 (left!42840 (left!42840 ys!41)))) lt!2090608)))

(declare-fun b!5078859 () Bool)

(assert (=> b!5078859 (= e!3168338 0)))

(declare-fun b!5078860 () Bool)

(assert (=> b!5078860 (= e!3168338 (+ 1 (size!39108 (t!371381 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(assert (= (and d!1641289 c!872263) b!5078859))

(assert (= (and d!1641289 (not c!872263)) b!5078860))

(declare-fun m!6130018 () Bool)

(assert (=> b!5078860 m!6130018))

(assert (=> b!5078402 d!1641289))

(declare-fun d!1641291 () Bool)

(declare-fun c!872264 () Bool)

(assert (=> d!1641291 (= c!872264 ((_ is Node!15580) (left!42840 (left!42840 (left!42840 xs!286)))))))

(declare-fun e!3168339 () Bool)

(assert (=> d!1641291 (= (inv!77643 (left!42840 (left!42840 (left!42840 xs!286)))) e!3168339)))

(declare-fun b!5078861 () Bool)

(assert (=> b!5078861 (= e!3168339 (inv!77647 (left!42840 (left!42840 (left!42840 xs!286)))))))

(declare-fun b!5078862 () Bool)

(declare-fun e!3168340 () Bool)

(assert (=> b!5078862 (= e!3168339 e!3168340)))

(declare-fun res!2162327 () Bool)

(assert (=> b!5078862 (= res!2162327 (not ((_ is Leaf!25875) (left!42840 (left!42840 (left!42840 xs!286))))))))

(assert (=> b!5078862 (=> res!2162327 e!3168340)))

(declare-fun b!5078863 () Bool)

(assert (=> b!5078863 (= e!3168340 (inv!77648 (left!42840 (left!42840 (left!42840 xs!286)))))))

(assert (= (and d!1641291 c!872264) b!5078861))

(assert (= (and d!1641291 (not c!872264)) b!5078862))

(assert (= (and b!5078862 (not res!2162327)) b!5078863))

(declare-fun m!6130020 () Bool)

(assert (=> b!5078861 m!6130020))

(declare-fun m!6130022 () Bool)

(assert (=> b!5078863 m!6130022))

(assert (=> b!5078645 d!1641291))

(declare-fun d!1641293 () Bool)

(declare-fun c!872265 () Bool)

(assert (=> d!1641293 (= c!872265 ((_ is Node!15580) (right!43170 (left!42840 (left!42840 xs!286)))))))

(declare-fun e!3168341 () Bool)

(assert (=> d!1641293 (= (inv!77643 (right!43170 (left!42840 (left!42840 xs!286)))) e!3168341)))

(declare-fun b!5078864 () Bool)

(assert (=> b!5078864 (= e!3168341 (inv!77647 (right!43170 (left!42840 (left!42840 xs!286)))))))

(declare-fun b!5078865 () Bool)

(declare-fun e!3168342 () Bool)

(assert (=> b!5078865 (= e!3168341 e!3168342)))

(declare-fun res!2162328 () Bool)

(assert (=> b!5078865 (= res!2162328 (not ((_ is Leaf!25875) (right!43170 (left!42840 (left!42840 xs!286))))))))

(assert (=> b!5078865 (=> res!2162328 e!3168342)))

(declare-fun b!5078866 () Bool)

(assert (=> b!5078866 (= e!3168342 (inv!77648 (right!43170 (left!42840 (left!42840 xs!286)))))))

(assert (= (and d!1641293 c!872265) b!5078864))

(assert (= (and d!1641293 (not c!872265)) b!5078865))

(assert (= (and b!5078865 (not res!2162328)) b!5078866))

(declare-fun m!6130024 () Bool)

(assert (=> b!5078864 m!6130024))

(declare-fun m!6130026 () Bool)

(assert (=> b!5078866 m!6130026))

(assert (=> b!5078645 d!1641293))

(declare-fun b!5078867 () Bool)

(declare-fun res!2162334 () Bool)

(declare-fun e!3168344 () Bool)

(assert (=> b!5078867 (=> (not res!2162334) (not e!3168344))))

(assert (=> b!5078867 (= res!2162334 (isBalanced!4442 (left!42840 (left!42840 lt!2090471))))))

(declare-fun b!5078868 () Bool)

(declare-fun res!2162330 () Bool)

(assert (=> b!5078868 (=> (not res!2162330) (not e!3168344))))

(assert (=> b!5078868 (= res!2162330 (<= (- (height!2157 (left!42840 (left!42840 lt!2090471))) (height!2157 (right!43170 (left!42840 lt!2090471)))) 1))))

(declare-fun d!1641295 () Bool)

(declare-fun res!2162333 () Bool)

(declare-fun e!3168343 () Bool)

(assert (=> d!1641295 (=> res!2162333 e!3168343)))

(assert (=> d!1641295 (= res!2162333 (not ((_ is Node!15580) (left!42840 lt!2090471))))))

(assert (=> d!1641295 (= (isBalanced!4442 (left!42840 lt!2090471)) e!3168343)))

(declare-fun b!5078869 () Bool)

(declare-fun res!2162331 () Bool)

(assert (=> b!5078869 (=> (not res!2162331) (not e!3168344))))

(assert (=> b!5078869 (= res!2162331 (isBalanced!4442 (right!43170 (left!42840 lt!2090471))))))

(declare-fun b!5078870 () Bool)

(assert (=> b!5078870 (= e!3168344 (not (isEmpty!31663 (right!43170 (left!42840 lt!2090471)))))))

(declare-fun b!5078871 () Bool)

(declare-fun res!2162329 () Bool)

(assert (=> b!5078871 (=> (not res!2162329) (not e!3168344))))

(assert (=> b!5078871 (= res!2162329 (not (isEmpty!31663 (left!42840 (left!42840 lt!2090471)))))))

(declare-fun b!5078872 () Bool)

(assert (=> b!5078872 (= e!3168343 e!3168344)))

(declare-fun res!2162332 () Bool)

(assert (=> b!5078872 (=> (not res!2162332) (not e!3168344))))

(assert (=> b!5078872 (= res!2162332 (<= (- 1) (- (height!2157 (left!42840 (left!42840 lt!2090471))) (height!2157 (right!43170 (left!42840 lt!2090471))))))))

(assert (= (and d!1641295 (not res!2162333)) b!5078872))

(assert (= (and b!5078872 res!2162332) b!5078868))

(assert (= (and b!5078868 res!2162330) b!5078867))

(assert (= (and b!5078867 res!2162334) b!5078869))

(assert (= (and b!5078869 res!2162331) b!5078871))

(assert (= (and b!5078871 res!2162329) b!5078870))

(declare-fun m!6130028 () Bool)

(assert (=> b!5078869 m!6130028))

(declare-fun m!6130030 () Bool)

(assert (=> b!5078871 m!6130030))

(declare-fun m!6130032 () Bool)

(assert (=> b!5078870 m!6130032))

(declare-fun m!6130034 () Bool)

(assert (=> b!5078872 m!6130034))

(declare-fun m!6130036 () Bool)

(assert (=> b!5078872 m!6130036))

(declare-fun m!6130038 () Bool)

(assert (=> b!5078867 m!6130038))

(assert (=> b!5078868 m!6130034))

(assert (=> b!5078868 m!6130036))

(assert (=> b!5078090 d!1641295))

(declare-fun d!1641297 () Bool)

(declare-fun lt!2090609 () Int)

(assert (=> d!1641297 (>= lt!2090609 0)))

(declare-fun e!3168345 () Int)

(assert (=> d!1641297 (= lt!2090609 e!3168345)))

(declare-fun c!872266 () Bool)

(assert (=> d!1641297 (= c!872266 ((_ is Nil!58450) (t!371381 (list!19021 ys!41))))))

(assert (=> d!1641297 (= (size!39108 (t!371381 (list!19021 ys!41))) lt!2090609)))

(declare-fun b!5078873 () Bool)

(assert (=> b!5078873 (= e!3168345 0)))

(declare-fun b!5078874 () Bool)

(assert (=> b!5078874 (= e!3168345 (+ 1 (size!39108 (t!371381 (t!371381 (list!19021 ys!41))))))))

(assert (= (and d!1641297 c!872266) b!5078873))

(assert (= (and d!1641297 (not c!872266)) b!5078874))

(declare-fun m!6130040 () Bool)

(assert (=> b!5078874 m!6130040))

(assert (=> b!5078585 d!1641297))

(declare-fun d!1641299 () Bool)

(assert (=> d!1641299 (= (height!2157 (left!42840 (right!43170 xs!286))) (ite ((_ is Empty!15580) (left!42840 (right!43170 xs!286))) 0 (ite ((_ is Leaf!25875) (left!42840 (right!43170 xs!286))) 1 (cheight!15791 (left!42840 (right!43170 xs!286))))))))

(assert (=> b!5078281 d!1641299))

(declare-fun d!1641301 () Bool)

(assert (=> d!1641301 (= (height!2157 (right!43170 (right!43170 xs!286))) (ite ((_ is Empty!15580) (right!43170 (right!43170 xs!286))) 0 (ite ((_ is Leaf!25875) (right!43170 (right!43170 xs!286))) 1 (cheight!15791 (right!43170 (right!43170 xs!286))))))))

(assert (=> b!5078281 d!1641301))

(declare-fun d!1641303 () Bool)

(assert (=> d!1641303 (= (list!19023 (xs!18946 (left!42840 lt!2090452))) (innerList!15668 (xs!18946 (left!42840 lt!2090452))))))

(assert (=> b!5078372 d!1641303))

(declare-fun b!5078875 () Bool)

(declare-fun res!2162340 () Bool)

(declare-fun e!3168347 () Bool)

(assert (=> b!5078875 (=> (not res!2162340) (not e!3168347))))

(assert (=> b!5078875 (= res!2162340 (isBalanced!4442 (left!42840 (left!42840 (left!42840 lt!2090452)))))))

(declare-fun b!5078876 () Bool)

(declare-fun res!2162336 () Bool)

(assert (=> b!5078876 (=> (not res!2162336) (not e!3168347))))

(assert (=> b!5078876 (= res!2162336 (<= (- (height!2157 (left!42840 (left!42840 (left!42840 lt!2090452)))) (height!2157 (right!43170 (left!42840 (left!42840 lt!2090452))))) 1))))

(declare-fun d!1641305 () Bool)

(declare-fun res!2162339 () Bool)

(declare-fun e!3168346 () Bool)

(assert (=> d!1641305 (=> res!2162339 e!3168346)))

(assert (=> d!1641305 (= res!2162339 (not ((_ is Node!15580) (left!42840 (left!42840 lt!2090452)))))))

(assert (=> d!1641305 (= (isBalanced!4442 (left!42840 (left!42840 lt!2090452))) e!3168346)))

(declare-fun b!5078877 () Bool)

(declare-fun res!2162337 () Bool)

(assert (=> b!5078877 (=> (not res!2162337) (not e!3168347))))

(assert (=> b!5078877 (= res!2162337 (isBalanced!4442 (right!43170 (left!42840 (left!42840 lt!2090452)))))))

(declare-fun b!5078878 () Bool)

(assert (=> b!5078878 (= e!3168347 (not (isEmpty!31663 (right!43170 (left!42840 (left!42840 lt!2090452))))))))

(declare-fun b!5078879 () Bool)

(declare-fun res!2162335 () Bool)

(assert (=> b!5078879 (=> (not res!2162335) (not e!3168347))))

(assert (=> b!5078879 (= res!2162335 (not (isEmpty!31663 (left!42840 (left!42840 (left!42840 lt!2090452))))))))

(declare-fun b!5078880 () Bool)

(assert (=> b!5078880 (= e!3168346 e!3168347)))

(declare-fun res!2162338 () Bool)

(assert (=> b!5078880 (=> (not res!2162338) (not e!3168347))))

(assert (=> b!5078880 (= res!2162338 (<= (- 1) (- (height!2157 (left!42840 (left!42840 (left!42840 lt!2090452)))) (height!2157 (right!43170 (left!42840 (left!42840 lt!2090452)))))))))

(assert (= (and d!1641305 (not res!2162339)) b!5078880))

(assert (= (and b!5078880 res!2162338) b!5078876))

(assert (= (and b!5078876 res!2162336) b!5078875))

(assert (= (and b!5078875 res!2162340) b!5078877))

(assert (= (and b!5078877 res!2162337) b!5078879))

(assert (= (and b!5078879 res!2162335) b!5078878))

(declare-fun m!6130042 () Bool)

(assert (=> b!5078877 m!6130042))

(declare-fun m!6130044 () Bool)

(assert (=> b!5078879 m!6130044))

(declare-fun m!6130046 () Bool)

(assert (=> b!5078878 m!6130046))

(declare-fun m!6130048 () Bool)

(assert (=> b!5078880 m!6130048))

(declare-fun m!6130050 () Bool)

(assert (=> b!5078880 m!6130050))

(declare-fun m!6130052 () Bool)

(assert (=> b!5078875 m!6130052))

(assert (=> b!5078876 m!6130048))

(assert (=> b!5078876 m!6130050))

(assert (=> b!5078324 d!1641305))

(declare-fun d!1641307 () Bool)

(declare-fun res!2162341 () Bool)

(declare-fun e!3168348 () Bool)

(assert (=> d!1641307 (=> (not res!2162341) (not e!3168348))))

(assert (=> d!1641307 (= res!2162341 (= (csize!31390 (right!43170 (left!42840 xs!286))) (+ (size!39109 (left!42840 (right!43170 (left!42840 xs!286)))) (size!39109 (right!43170 (right!43170 (left!42840 xs!286)))))))))

(assert (=> d!1641307 (= (inv!77647 (right!43170 (left!42840 xs!286))) e!3168348)))

(declare-fun b!5078881 () Bool)

(declare-fun res!2162342 () Bool)

(assert (=> b!5078881 (=> (not res!2162342) (not e!3168348))))

(assert (=> b!5078881 (= res!2162342 (and (not (= (left!42840 (right!43170 (left!42840 xs!286))) Empty!15580)) (not (= (right!43170 (right!43170 (left!42840 xs!286))) Empty!15580))))))

(declare-fun b!5078882 () Bool)

(declare-fun res!2162343 () Bool)

(assert (=> b!5078882 (=> (not res!2162343) (not e!3168348))))

(assert (=> b!5078882 (= res!2162343 (= (cheight!15791 (right!43170 (left!42840 xs!286))) (+ (max!0 (height!2157 (left!42840 (right!43170 (left!42840 xs!286)))) (height!2157 (right!43170 (right!43170 (left!42840 xs!286))))) 1)))))

(declare-fun b!5078883 () Bool)

(assert (=> b!5078883 (= e!3168348 (<= 0 (cheight!15791 (right!43170 (left!42840 xs!286)))))))

(assert (= (and d!1641307 res!2162341) b!5078881))

(assert (= (and b!5078881 res!2162342) b!5078882))

(assert (= (and b!5078882 res!2162343) b!5078883))

(declare-fun m!6130054 () Bool)

(assert (=> d!1641307 m!6130054))

(declare-fun m!6130056 () Bool)

(assert (=> d!1641307 m!6130056))

(declare-fun m!6130058 () Bool)

(assert (=> b!5078882 m!6130058))

(declare-fun m!6130060 () Bool)

(assert (=> b!5078882 m!6130060))

(assert (=> b!5078882 m!6130058))

(assert (=> b!5078882 m!6130060))

(declare-fun m!6130062 () Bool)

(assert (=> b!5078882 m!6130062))

(assert (=> b!5078474 d!1641307))

(declare-fun d!1641309 () Bool)

(declare-fun c!872267 () Bool)

(assert (=> d!1641309 (= c!872267 ((_ is Node!15580) (left!42840 (left!42840 (right!43170 xs!286)))))))

(declare-fun e!3168349 () Bool)

(assert (=> d!1641309 (= (inv!77643 (left!42840 (left!42840 (right!43170 xs!286)))) e!3168349)))

(declare-fun b!5078884 () Bool)

(assert (=> b!5078884 (= e!3168349 (inv!77647 (left!42840 (left!42840 (right!43170 xs!286)))))))

(declare-fun b!5078885 () Bool)

(declare-fun e!3168350 () Bool)

(assert (=> b!5078885 (= e!3168349 e!3168350)))

(declare-fun res!2162344 () Bool)

(assert (=> b!5078885 (= res!2162344 (not ((_ is Leaf!25875) (left!42840 (left!42840 (right!43170 xs!286))))))))

(assert (=> b!5078885 (=> res!2162344 e!3168350)))

(declare-fun b!5078886 () Bool)

(assert (=> b!5078886 (= e!3168350 (inv!77648 (left!42840 (left!42840 (right!43170 xs!286)))))))

(assert (= (and d!1641309 c!872267) b!5078884))

(assert (= (and d!1641309 (not c!872267)) b!5078885))

(assert (= (and b!5078885 (not res!2162344)) b!5078886))

(declare-fun m!6130064 () Bool)

(assert (=> b!5078884 m!6130064))

(declare-fun m!6130066 () Bool)

(assert (=> b!5078886 m!6130066))

(assert (=> b!5078617 d!1641309))

(declare-fun d!1641311 () Bool)

(declare-fun c!872268 () Bool)

(assert (=> d!1641311 (= c!872268 ((_ is Node!15580) (right!43170 (left!42840 (right!43170 xs!286)))))))

(declare-fun e!3168351 () Bool)

(assert (=> d!1641311 (= (inv!77643 (right!43170 (left!42840 (right!43170 xs!286)))) e!3168351)))

(declare-fun b!5078887 () Bool)

(assert (=> b!5078887 (= e!3168351 (inv!77647 (right!43170 (left!42840 (right!43170 xs!286)))))))

(declare-fun b!5078888 () Bool)

(declare-fun e!3168352 () Bool)

(assert (=> b!5078888 (= e!3168351 e!3168352)))

(declare-fun res!2162345 () Bool)

(assert (=> b!5078888 (= res!2162345 (not ((_ is Leaf!25875) (right!43170 (left!42840 (right!43170 xs!286))))))))

(assert (=> b!5078888 (=> res!2162345 e!3168352)))

(declare-fun b!5078889 () Bool)

(assert (=> b!5078889 (= e!3168352 (inv!77648 (right!43170 (left!42840 (right!43170 xs!286)))))))

(assert (= (and d!1641311 c!872268) b!5078887))

(assert (= (and d!1641311 (not c!872268)) b!5078888))

(assert (= (and b!5078888 (not res!2162345)) b!5078889))

(declare-fun m!6130068 () Bool)

(assert (=> b!5078887 m!6130068))

(declare-fun m!6130070 () Bool)

(assert (=> b!5078889 m!6130070))

(assert (=> b!5078617 d!1641311))

(declare-fun b!5078893 () Bool)

(declare-fun e!3168354 () Bool)

(declare-fun lt!2090610 () List!58574)

(assert (=> b!5078893 (= e!3168354 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090610 call!353866)))))

(declare-fun d!1641313 () Bool)

(assert (=> d!1641313 e!3168354))

(declare-fun res!2162346 () Bool)

(assert (=> d!1641313 (=> (not res!2162346) (not e!3168354))))

(assert (=> d!1641313 (= res!2162346 (= (content!10426 lt!2090610) ((_ map or) (content!10426 call!353866) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3168353 () List!58574)

(assert (=> d!1641313 (= lt!2090610 e!3168353)))

(declare-fun c!872269 () Bool)

(assert (=> d!1641313 (= c!872269 ((_ is Nil!58450) call!353866))))

(assert (=> d!1641313 (= (++!12807 call!353866 (list!19021 ys!41)) lt!2090610)))

(declare-fun b!5078890 () Bool)

(assert (=> b!5078890 (= e!3168353 (list!19021 ys!41))))

(declare-fun b!5078892 () Bool)

(declare-fun res!2162347 () Bool)

(assert (=> b!5078892 (=> (not res!2162347) (not e!3168354))))

(assert (=> b!5078892 (= res!2162347 (= (size!39108 lt!2090610) (+ (size!39108 call!353866) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5078891 () Bool)

(assert (=> b!5078891 (= e!3168353 (Cons!58450 (h!64898 call!353866) (++!12807 (t!371381 call!353866) (list!19021 ys!41))))))

(assert (= (and d!1641313 c!872269) b!5078890))

(assert (= (and d!1641313 (not c!872269)) b!5078891))

(assert (= (and d!1641313 res!2162346) b!5078892))

(assert (= (and b!5078892 res!2162347) b!5078893))

(declare-fun m!6130072 () Bool)

(assert (=> d!1641313 m!6130072))

(declare-fun m!6130074 () Bool)

(assert (=> d!1641313 m!6130074))

(assert (=> d!1641313 m!6128090))

(assert (=> d!1641313 m!6128322))

(declare-fun m!6130076 () Bool)

(assert (=> b!5078892 m!6130076))

(declare-fun m!6130078 () Bool)

(assert (=> b!5078892 m!6130078))

(assert (=> b!5078892 m!6128090))

(assert (=> b!5078892 m!6128328))

(assert (=> b!5078891 m!6128090))

(declare-fun m!6130080 () Bool)

(assert (=> b!5078891 m!6130080))

(assert (=> bm!353862 d!1641313))

(declare-fun d!1641315 () Bool)

(assert (=> d!1641315 (= (list!19023 (xs!18946 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (innerList!15668 (xs!18946 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (=> b!5078610 d!1641315))

(declare-fun d!1641317 () Bool)

(assert (=> d!1641317 (= (inv!77644 (xs!18946 (right!43170 (left!42840 ys!41)))) (<= (size!39108 (innerList!15668 (xs!18946 (right!43170 (left!42840 ys!41))))) 2147483647))))

(declare-fun bs!1190555 () Bool)

(assert (= bs!1190555 d!1641317))

(declare-fun m!6130082 () Bool)

(assert (=> bs!1190555 m!6130082))

(assert (=> b!5078660 d!1641317))

(declare-fun d!1641319 () Bool)

(assert (=> d!1641319 (= (max!0 (height!2157 (left!42840 (right!43170 ys!41))) (height!2157 (right!43170 (right!43170 ys!41)))) (ite (< (height!2157 (left!42840 (right!43170 ys!41))) (height!2157 (right!43170 (right!43170 ys!41)))) (height!2157 (right!43170 (right!43170 ys!41))) (height!2157 (left!42840 (right!43170 ys!41)))))))

(assert (=> b!5078394 d!1641319))

(assert (=> b!5078394 d!1641225))

(assert (=> b!5078394 d!1641227))

(declare-fun d!1641321 () Bool)

(declare-fun c!872270 () Bool)

(assert (=> d!1641321 (= c!872270 ((_ is Node!15580) (left!42840 (right!43170 (right!43170 ys!41)))))))

(declare-fun e!3168355 () Bool)

(assert (=> d!1641321 (= (inv!77643 (left!42840 (right!43170 (right!43170 ys!41)))) e!3168355)))

(declare-fun b!5078894 () Bool)

(assert (=> b!5078894 (= e!3168355 (inv!77647 (left!42840 (right!43170 (right!43170 ys!41)))))))

(declare-fun b!5078895 () Bool)

(declare-fun e!3168356 () Bool)

(assert (=> b!5078895 (= e!3168355 e!3168356)))

(declare-fun res!2162348 () Bool)

(assert (=> b!5078895 (= res!2162348 (not ((_ is Leaf!25875) (left!42840 (right!43170 (right!43170 ys!41))))))))

(assert (=> b!5078895 (=> res!2162348 e!3168356)))

(declare-fun b!5078896 () Bool)

(assert (=> b!5078896 (= e!3168356 (inv!77648 (left!42840 (right!43170 (right!43170 ys!41)))))))

(assert (= (and d!1641321 c!872270) b!5078894))

(assert (= (and d!1641321 (not c!872270)) b!5078895))

(assert (= (and b!5078895 (not res!2162348)) b!5078896))

(declare-fun m!6130084 () Bool)

(assert (=> b!5078894 m!6130084))

(declare-fun m!6130086 () Bool)

(assert (=> b!5078896 m!6130086))

(assert (=> b!5078638 d!1641321))

(declare-fun d!1641323 () Bool)

(declare-fun c!872271 () Bool)

(assert (=> d!1641323 (= c!872271 ((_ is Node!15580) (right!43170 (right!43170 (right!43170 ys!41)))))))

(declare-fun e!3168357 () Bool)

(assert (=> d!1641323 (= (inv!77643 (right!43170 (right!43170 (right!43170 ys!41)))) e!3168357)))

(declare-fun b!5078897 () Bool)

(assert (=> b!5078897 (= e!3168357 (inv!77647 (right!43170 (right!43170 (right!43170 ys!41)))))))

(declare-fun b!5078898 () Bool)

(declare-fun e!3168358 () Bool)

(assert (=> b!5078898 (= e!3168357 e!3168358)))

(declare-fun res!2162349 () Bool)

(assert (=> b!5078898 (= res!2162349 (not ((_ is Leaf!25875) (right!43170 (right!43170 (right!43170 ys!41))))))))

(assert (=> b!5078898 (=> res!2162349 e!3168358)))

(declare-fun b!5078899 () Bool)

(assert (=> b!5078899 (= e!3168358 (inv!77648 (right!43170 (right!43170 (right!43170 ys!41)))))))

(assert (= (and d!1641323 c!872271) b!5078897))

(assert (= (and d!1641323 (not c!872271)) b!5078898))

(assert (= (and b!5078898 (not res!2162349)) b!5078899))

(declare-fun m!6130088 () Bool)

(assert (=> b!5078897 m!6130088))

(declare-fun m!6130090 () Bool)

(assert (=> b!5078899 m!6130090))

(assert (=> b!5078638 d!1641323))

(declare-fun d!1641325 () Bool)

(assert (=> d!1641325 (= (max!0 (height!2157 (left!42840 ys!41)) (height!2157 (right!43170 ys!41))) (ite (< (height!2157 (left!42840 ys!41)) (height!2157 (right!43170 ys!41))) (height!2157 (right!43170 ys!41)) (height!2157 (left!42840 ys!41))))))

(assert (=> b!5078361 d!1641325))

(assert (=> b!5078361 d!1640713))

(assert (=> b!5078361 d!1640711))

(declare-fun d!1641327 () Bool)

(assert (=> d!1641327 (= (isEmpty!31665 (list!19021 (right!43170 ys!41))) ((_ is Nil!58450) (list!19021 (right!43170 ys!41))))))

(assert (=> d!1640871 d!1641327))

(assert (=> d!1640871 d!1640771))

(assert (=> d!1640871 d!1641031))

(declare-fun b!5078903 () Bool)

(declare-fun e!3168360 () Bool)

(declare-fun lt!2090611 () List!58574)

(assert (=> b!5078903 (= e!3168360 (or (not (= (list!19021 (right!43170 lt!2090492)) Nil!58450)) (= lt!2090611 (list!19021 (left!42840 lt!2090492)))))))

(declare-fun d!1641329 () Bool)

(assert (=> d!1641329 e!3168360))

(declare-fun res!2162350 () Bool)

(assert (=> d!1641329 (=> (not res!2162350) (not e!3168360))))

(assert (=> d!1641329 (= res!2162350 (= (content!10426 lt!2090611) ((_ map or) (content!10426 (list!19021 (left!42840 lt!2090492))) (content!10426 (list!19021 (right!43170 lt!2090492))))))))

(declare-fun e!3168359 () List!58574)

(assert (=> d!1641329 (= lt!2090611 e!3168359)))

(declare-fun c!872272 () Bool)

(assert (=> d!1641329 (= c!872272 ((_ is Nil!58450) (list!19021 (left!42840 lt!2090492))))))

(assert (=> d!1641329 (= (++!12807 (list!19021 (left!42840 lt!2090492)) (list!19021 (right!43170 lt!2090492))) lt!2090611)))

(declare-fun b!5078900 () Bool)

(assert (=> b!5078900 (= e!3168359 (list!19021 (right!43170 lt!2090492)))))

(declare-fun b!5078902 () Bool)

(declare-fun res!2162351 () Bool)

(assert (=> b!5078902 (=> (not res!2162351) (not e!3168360))))

(assert (=> b!5078902 (= res!2162351 (= (size!39108 lt!2090611) (+ (size!39108 (list!19021 (left!42840 lt!2090492))) (size!39108 (list!19021 (right!43170 lt!2090492))))))))

(declare-fun b!5078901 () Bool)

(assert (=> b!5078901 (= e!3168359 (Cons!58450 (h!64898 (list!19021 (left!42840 lt!2090492))) (++!12807 (t!371381 (list!19021 (left!42840 lt!2090492))) (list!19021 (right!43170 lt!2090492)))))))

(assert (= (and d!1641329 c!872272) b!5078900))

(assert (= (and d!1641329 (not c!872272)) b!5078901))

(assert (= (and d!1641329 res!2162350) b!5078902))

(assert (= (and b!5078902 res!2162351) b!5078903))

(declare-fun m!6130092 () Bool)

(assert (=> d!1641329 m!6130092))

(assert (=> d!1641329 m!6129474))

(declare-fun m!6130094 () Bool)

(assert (=> d!1641329 m!6130094))

(assert (=> d!1641329 m!6129476))

(declare-fun m!6130096 () Bool)

(assert (=> d!1641329 m!6130096))

(declare-fun m!6130098 () Bool)

(assert (=> b!5078902 m!6130098))

(assert (=> b!5078902 m!6129474))

(declare-fun m!6130100 () Bool)

(assert (=> b!5078902 m!6130100))

(assert (=> b!5078902 m!6129476))

(declare-fun m!6130102 () Bool)

(assert (=> b!5078902 m!6130102))

(assert (=> b!5078901 m!6129476))

(declare-fun m!6130104 () Bool)

(assert (=> b!5078901 m!6130104))

(assert (=> b!5078592 d!1641329))

(declare-fun b!5078904 () Bool)

(declare-fun e!3168361 () List!58574)

(assert (=> b!5078904 (= e!3168361 Nil!58450)))

(declare-fun b!5078907 () Bool)

(declare-fun e!3168362 () List!58574)

(assert (=> b!5078907 (= e!3168362 (++!12807 (list!19021 (left!42840 (left!42840 lt!2090492))) (list!19021 (right!43170 (left!42840 lt!2090492)))))))

(declare-fun b!5078906 () Bool)

(assert (=> b!5078906 (= e!3168362 (list!19023 (xs!18946 (left!42840 lt!2090492))))))

(declare-fun d!1641331 () Bool)

(declare-fun c!872273 () Bool)

(assert (=> d!1641331 (= c!872273 ((_ is Empty!15580) (left!42840 lt!2090492)))))

(assert (=> d!1641331 (= (list!19021 (left!42840 lt!2090492)) e!3168361)))

(declare-fun b!5078905 () Bool)

(assert (=> b!5078905 (= e!3168361 e!3168362)))

(declare-fun c!872274 () Bool)

(assert (=> b!5078905 (= c!872274 ((_ is Leaf!25875) (left!42840 lt!2090492)))))

(assert (= (and d!1641331 c!872273) b!5078904))

(assert (= (and d!1641331 (not c!872273)) b!5078905))

(assert (= (and b!5078905 c!872274) b!5078906))

(assert (= (and b!5078905 (not c!872274)) b!5078907))

(declare-fun m!6130106 () Bool)

(assert (=> b!5078907 m!6130106))

(declare-fun m!6130108 () Bool)

(assert (=> b!5078907 m!6130108))

(assert (=> b!5078907 m!6130106))

(assert (=> b!5078907 m!6130108))

(declare-fun m!6130110 () Bool)

(assert (=> b!5078907 m!6130110))

(declare-fun m!6130112 () Bool)

(assert (=> b!5078906 m!6130112))

(assert (=> b!5078592 d!1641331))

(declare-fun b!5078908 () Bool)

(declare-fun e!3168363 () List!58574)

(assert (=> b!5078908 (= e!3168363 Nil!58450)))

(declare-fun b!5078911 () Bool)

(declare-fun e!3168364 () List!58574)

(assert (=> b!5078911 (= e!3168364 (++!12807 (list!19021 (left!42840 (right!43170 lt!2090492))) (list!19021 (right!43170 (right!43170 lt!2090492)))))))

(declare-fun b!5078910 () Bool)

(assert (=> b!5078910 (= e!3168364 (list!19023 (xs!18946 (right!43170 lt!2090492))))))

(declare-fun d!1641333 () Bool)

(declare-fun c!872275 () Bool)

(assert (=> d!1641333 (= c!872275 ((_ is Empty!15580) (right!43170 lt!2090492)))))

(assert (=> d!1641333 (= (list!19021 (right!43170 lt!2090492)) e!3168363)))

(declare-fun b!5078909 () Bool)

(assert (=> b!5078909 (= e!3168363 e!3168364)))

(declare-fun c!872276 () Bool)

(assert (=> b!5078909 (= c!872276 ((_ is Leaf!25875) (right!43170 lt!2090492)))))

(assert (= (and d!1641333 c!872275) b!5078908))

(assert (= (and d!1641333 (not c!872275)) b!5078909))

(assert (= (and b!5078909 c!872276) b!5078910))

(assert (= (and b!5078909 (not c!872276)) b!5078911))

(declare-fun m!6130114 () Bool)

(assert (=> b!5078911 m!6130114))

(declare-fun m!6130116 () Bool)

(assert (=> b!5078911 m!6130116))

(assert (=> b!5078911 m!6130114))

(assert (=> b!5078911 m!6130116))

(declare-fun m!6130118 () Bool)

(assert (=> b!5078911 m!6130118))

(declare-fun m!6130120 () Bool)

(assert (=> b!5078910 m!6130120))

(assert (=> b!5078592 d!1641333))

(declare-fun b!5078915 () Bool)

(declare-fun e!3168366 () Bool)

(declare-fun lt!2090612 () List!58574)

(assert (=> b!5078915 (= e!3168366 (or (not (= (list!19021 (right!43170 (right!43170 (right!43170 xs!286)))) Nil!58450)) (= lt!2090612 (list!19021 (left!42840 (right!43170 (right!43170 xs!286)))))))))

(declare-fun d!1641335 () Bool)

(assert (=> d!1641335 e!3168366))

(declare-fun res!2162352 () Bool)

(assert (=> d!1641335 (=> (not res!2162352) (not e!3168366))))

(assert (=> d!1641335 (= res!2162352 (= (content!10426 lt!2090612) ((_ map or) (content!10426 (list!19021 (left!42840 (right!43170 (right!43170 xs!286))))) (content!10426 (list!19021 (right!43170 (right!43170 (right!43170 xs!286))))))))))

(declare-fun e!3168365 () List!58574)

(assert (=> d!1641335 (= lt!2090612 e!3168365)))

(declare-fun c!872277 () Bool)

(assert (=> d!1641335 (= c!872277 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 (right!43170 xs!286))))))))

(assert (=> d!1641335 (= (++!12807 (list!19021 (left!42840 (right!43170 (right!43170 xs!286)))) (list!19021 (right!43170 (right!43170 (right!43170 xs!286))))) lt!2090612)))

(declare-fun b!5078912 () Bool)

(assert (=> b!5078912 (= e!3168365 (list!19021 (right!43170 (right!43170 (right!43170 xs!286)))))))

(declare-fun b!5078914 () Bool)

(declare-fun res!2162353 () Bool)

(assert (=> b!5078914 (=> (not res!2162353) (not e!3168366))))

(assert (=> b!5078914 (= res!2162353 (= (size!39108 lt!2090612) (+ (size!39108 (list!19021 (left!42840 (right!43170 (right!43170 xs!286))))) (size!39108 (list!19021 (right!43170 (right!43170 (right!43170 xs!286))))))))))

(declare-fun b!5078913 () Bool)

(assert (=> b!5078913 (= e!3168365 (Cons!58450 (h!64898 (list!19021 (left!42840 (right!43170 (right!43170 xs!286))))) (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 (right!43170 xs!286))))) (list!19021 (right!43170 (right!43170 (right!43170 xs!286)))))))))

(assert (= (and d!1641335 c!872277) b!5078912))

(assert (= (and d!1641335 (not c!872277)) b!5078913))

(assert (= (and d!1641335 res!2162352) b!5078914))

(assert (= (and b!5078914 res!2162353) b!5078915))

(declare-fun m!6130122 () Bool)

(assert (=> d!1641335 m!6130122))

(assert (=> d!1641335 m!6129278))

(declare-fun m!6130124 () Bool)

(assert (=> d!1641335 m!6130124))

(assert (=> d!1641335 m!6129280))

(declare-fun m!6130126 () Bool)

(assert (=> d!1641335 m!6130126))

(declare-fun m!6130128 () Bool)

(assert (=> b!5078914 m!6130128))

(assert (=> b!5078914 m!6129278))

(declare-fun m!6130130 () Bool)

(assert (=> b!5078914 m!6130130))

(assert (=> b!5078914 m!6129280))

(declare-fun m!6130132 () Bool)

(assert (=> b!5078914 m!6130132))

(assert (=> b!5078913 m!6129280))

(declare-fun m!6130134 () Bool)

(assert (=> b!5078913 m!6130134))

(assert (=> b!5078503 d!1641335))

(declare-fun b!5078916 () Bool)

(declare-fun e!3168367 () List!58574)

(assert (=> b!5078916 (= e!3168367 Nil!58450)))

(declare-fun b!5078919 () Bool)

(declare-fun e!3168368 () List!58574)

(assert (=> b!5078919 (= e!3168368 (++!12807 (list!19021 (left!42840 (left!42840 (right!43170 (right!43170 xs!286))))) (list!19021 (right!43170 (left!42840 (right!43170 (right!43170 xs!286)))))))))

(declare-fun b!5078918 () Bool)

(assert (=> b!5078918 (= e!3168368 (list!19023 (xs!18946 (left!42840 (right!43170 (right!43170 xs!286))))))))

(declare-fun d!1641337 () Bool)

(declare-fun c!872278 () Bool)

(assert (=> d!1641337 (= c!872278 ((_ is Empty!15580) (left!42840 (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641337 (= (list!19021 (left!42840 (right!43170 (right!43170 xs!286)))) e!3168367)))

(declare-fun b!5078917 () Bool)

(assert (=> b!5078917 (= e!3168367 e!3168368)))

(declare-fun c!872279 () Bool)

(assert (=> b!5078917 (= c!872279 ((_ is Leaf!25875) (left!42840 (right!43170 (right!43170 xs!286)))))))

(assert (= (and d!1641337 c!872278) b!5078916))

(assert (= (and d!1641337 (not c!872278)) b!5078917))

(assert (= (and b!5078917 c!872279) b!5078918))

(assert (= (and b!5078917 (not c!872279)) b!5078919))

(declare-fun m!6130136 () Bool)

(assert (=> b!5078919 m!6130136))

(declare-fun m!6130138 () Bool)

(assert (=> b!5078919 m!6130138))

(assert (=> b!5078919 m!6130136))

(assert (=> b!5078919 m!6130138))

(declare-fun m!6130140 () Bool)

(assert (=> b!5078919 m!6130140))

(declare-fun m!6130142 () Bool)

(assert (=> b!5078918 m!6130142))

(assert (=> b!5078503 d!1641337))

(declare-fun b!5078920 () Bool)

(declare-fun e!3168369 () List!58574)

(assert (=> b!5078920 (= e!3168369 Nil!58450)))

(declare-fun b!5078923 () Bool)

(declare-fun e!3168370 () List!58574)

(assert (=> b!5078923 (= e!3168370 (++!12807 (list!19021 (left!42840 (right!43170 (right!43170 (right!43170 xs!286))))) (list!19021 (right!43170 (right!43170 (right!43170 (right!43170 xs!286)))))))))

(declare-fun b!5078922 () Bool)

(assert (=> b!5078922 (= e!3168370 (list!19023 (xs!18946 (right!43170 (right!43170 (right!43170 xs!286))))))))

(declare-fun d!1641339 () Bool)

(declare-fun c!872280 () Bool)

(assert (=> d!1641339 (= c!872280 ((_ is Empty!15580) (right!43170 (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641339 (= (list!19021 (right!43170 (right!43170 (right!43170 xs!286)))) e!3168369)))

(declare-fun b!5078921 () Bool)

(assert (=> b!5078921 (= e!3168369 e!3168370)))

(declare-fun c!872281 () Bool)

(assert (=> b!5078921 (= c!872281 ((_ is Leaf!25875) (right!43170 (right!43170 (right!43170 xs!286)))))))

(assert (= (and d!1641339 c!872280) b!5078920))

(assert (= (and d!1641339 (not c!872280)) b!5078921))

(assert (= (and b!5078921 c!872281) b!5078922))

(assert (= (and b!5078921 (not c!872281)) b!5078923))

(declare-fun m!6130144 () Bool)

(assert (=> b!5078923 m!6130144))

(declare-fun m!6130146 () Bool)

(assert (=> b!5078923 m!6130146))

(assert (=> b!5078923 m!6130144))

(assert (=> b!5078923 m!6130146))

(declare-fun m!6130148 () Bool)

(assert (=> b!5078923 m!6130148))

(declare-fun m!6130150 () Bool)

(assert (=> b!5078922 m!6130150))

(assert (=> b!5078503 d!1641339))

(declare-fun b!5078924 () Bool)

(declare-fun res!2162359 () Bool)

(declare-fun e!3168372 () Bool)

(assert (=> b!5078924 (=> (not res!2162359) (not e!3168372))))

(assert (=> b!5078924 (= res!2162359 (isBalanced!4442 (left!42840 (left!42840 (right!43170 lt!2090452)))))))

(declare-fun b!5078925 () Bool)

(declare-fun res!2162355 () Bool)

(assert (=> b!5078925 (=> (not res!2162355) (not e!3168372))))

(assert (=> b!5078925 (= res!2162355 (<= (- (height!2157 (left!42840 (left!42840 (right!43170 lt!2090452)))) (height!2157 (right!43170 (left!42840 (right!43170 lt!2090452))))) 1))))

(declare-fun d!1641341 () Bool)

(declare-fun res!2162358 () Bool)

(declare-fun e!3168371 () Bool)

(assert (=> d!1641341 (=> res!2162358 e!3168371)))

(assert (=> d!1641341 (= res!2162358 (not ((_ is Node!15580) (left!42840 (right!43170 lt!2090452)))))))

(assert (=> d!1641341 (= (isBalanced!4442 (left!42840 (right!43170 lt!2090452))) e!3168371)))

(declare-fun b!5078926 () Bool)

(declare-fun res!2162356 () Bool)

(assert (=> b!5078926 (=> (not res!2162356) (not e!3168372))))

(assert (=> b!5078926 (= res!2162356 (isBalanced!4442 (right!43170 (left!42840 (right!43170 lt!2090452)))))))

(declare-fun b!5078927 () Bool)

(assert (=> b!5078927 (= e!3168372 (not (isEmpty!31663 (right!43170 (left!42840 (right!43170 lt!2090452))))))))

(declare-fun b!5078928 () Bool)

(declare-fun res!2162354 () Bool)

(assert (=> b!5078928 (=> (not res!2162354) (not e!3168372))))

(assert (=> b!5078928 (= res!2162354 (not (isEmpty!31663 (left!42840 (left!42840 (right!43170 lt!2090452))))))))

(declare-fun b!5078929 () Bool)

(assert (=> b!5078929 (= e!3168371 e!3168372)))

(declare-fun res!2162357 () Bool)

(assert (=> b!5078929 (=> (not res!2162357) (not e!3168372))))

(assert (=> b!5078929 (= res!2162357 (<= (- 1) (- (height!2157 (left!42840 (left!42840 (right!43170 lt!2090452)))) (height!2157 (right!43170 (left!42840 (right!43170 lt!2090452)))))))))

(assert (= (and d!1641341 (not res!2162358)) b!5078929))

(assert (= (and b!5078929 res!2162357) b!5078925))

(assert (= (and b!5078925 res!2162355) b!5078924))

(assert (= (and b!5078924 res!2162359) b!5078926))

(assert (= (and b!5078926 res!2162356) b!5078928))

(assert (= (and b!5078928 res!2162354) b!5078927))

(declare-fun m!6130152 () Bool)

(assert (=> b!5078926 m!6130152))

(declare-fun m!6130154 () Bool)

(assert (=> b!5078928 m!6130154))

(declare-fun m!6130156 () Bool)

(assert (=> b!5078927 m!6130156))

(declare-fun m!6130158 () Bool)

(assert (=> b!5078929 m!6130158))

(declare-fun m!6130160 () Bool)

(assert (=> b!5078929 m!6130160))

(declare-fun m!6130162 () Bool)

(assert (=> b!5078924 m!6130162))

(assert (=> b!5078925 m!6130158))

(assert (=> b!5078925 m!6130160))

(assert (=> b!5078284 d!1641341))

(declare-fun d!1641343 () Bool)

(declare-fun lt!2090613 () Int)

(assert (=> d!1641343 (>= lt!2090613 0)))

(declare-fun e!3168373 () Int)

(assert (=> d!1641343 (= lt!2090613 e!3168373)))

(declare-fun c!872282 () Bool)

(assert (=> d!1641343 (= c!872282 ((_ is Nil!58450) (list!19021 (right!43170 ys!41))))))

(assert (=> d!1641343 (= (size!39108 (list!19021 (right!43170 ys!41))) lt!2090613)))

(declare-fun b!5078930 () Bool)

(assert (=> b!5078930 (= e!3168373 0)))

(declare-fun b!5078931 () Bool)

(assert (=> b!5078931 (= e!3168373 (+ 1 (size!39108 (t!371381 (list!19021 (right!43170 ys!41))))))))

(assert (= (and d!1641343 c!872282) b!5078930))

(assert (= (and d!1641343 (not c!872282)) b!5078931))

(declare-fun m!6130164 () Bool)

(assert (=> b!5078931 m!6130164))

(assert (=> d!1641031 d!1641343))

(assert (=> d!1641031 d!1640771))

(assert (=> b!5078106 d!1641241))

(declare-fun d!1641345 () Bool)

(declare-fun c!872283 () Bool)

(assert (=> d!1641345 (= c!872283 ((_ is Node!15580) (left!42840 (left!42840 (right!43170 ys!41)))))))

(declare-fun e!3168374 () Bool)

(assert (=> d!1641345 (= (inv!77643 (left!42840 (left!42840 (right!43170 ys!41)))) e!3168374)))

(declare-fun b!5078932 () Bool)

(assert (=> b!5078932 (= e!3168374 (inv!77647 (left!42840 (left!42840 (right!43170 ys!41)))))))

(declare-fun b!5078933 () Bool)

(declare-fun e!3168375 () Bool)

(assert (=> b!5078933 (= e!3168374 e!3168375)))

(declare-fun res!2162360 () Bool)

(assert (=> b!5078933 (= res!2162360 (not ((_ is Leaf!25875) (left!42840 (left!42840 (right!43170 ys!41))))))))

(assert (=> b!5078933 (=> res!2162360 e!3168375)))

(declare-fun b!5078934 () Bool)

(assert (=> b!5078934 (= e!3168375 (inv!77648 (left!42840 (left!42840 (right!43170 ys!41)))))))

(assert (= (and d!1641345 c!872283) b!5078932))

(assert (= (and d!1641345 (not c!872283)) b!5078933))

(assert (= (and b!5078933 (not res!2162360)) b!5078934))

(declare-fun m!6130166 () Bool)

(assert (=> b!5078932 m!6130166))

(declare-fun m!6130168 () Bool)

(assert (=> b!5078934 m!6130168))

(assert (=> b!5078629 d!1641345))

(declare-fun d!1641347 () Bool)

(declare-fun c!872284 () Bool)

(assert (=> d!1641347 (= c!872284 ((_ is Node!15580) (right!43170 (left!42840 (right!43170 ys!41)))))))

(declare-fun e!3168376 () Bool)

(assert (=> d!1641347 (= (inv!77643 (right!43170 (left!42840 (right!43170 ys!41)))) e!3168376)))

(declare-fun b!5078935 () Bool)

(assert (=> b!5078935 (= e!3168376 (inv!77647 (right!43170 (left!42840 (right!43170 ys!41)))))))

(declare-fun b!5078936 () Bool)

(declare-fun e!3168377 () Bool)

(assert (=> b!5078936 (= e!3168376 e!3168377)))

(declare-fun res!2162361 () Bool)

(assert (=> b!5078936 (= res!2162361 (not ((_ is Leaf!25875) (right!43170 (left!42840 (right!43170 ys!41))))))))

(assert (=> b!5078936 (=> res!2162361 e!3168377)))

(declare-fun b!5078937 () Bool)

(assert (=> b!5078937 (= e!3168377 (inv!77648 (right!43170 (left!42840 (right!43170 ys!41)))))))

(assert (= (and d!1641347 c!872284) b!5078935))

(assert (= (and d!1641347 (not c!872284)) b!5078936))

(assert (= (and b!5078936 (not res!2162361)) b!5078937))

(declare-fun m!6130170 () Bool)

(assert (=> b!5078935 m!6130170))

(declare-fun m!6130172 () Bool)

(assert (=> b!5078937 m!6130172))

(assert (=> b!5078629 d!1641347))

(declare-fun b!5078938 () Bool)

(declare-fun res!2162367 () Bool)

(declare-fun e!3168379 () Bool)

(assert (=> b!5078938 (=> (not res!2162367) (not e!3168379))))

(assert (=> b!5078938 (= res!2162367 (isBalanced!4442 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078939 () Bool)

(declare-fun res!2162363 () Bool)

(assert (=> b!5078939 (=> (not res!2162363) (not e!3168379))))

(assert (=> b!5078939 (= res!2162363 (<= (- (height!2157 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) (height!2157 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))) 1))))

(declare-fun d!1641349 () Bool)

(declare-fun res!2162366 () Bool)

(declare-fun e!3168378 () Bool)

(assert (=> d!1641349 (=> res!2162366 e!3168378)))

(assert (=> d!1641349 (= res!2162366 (not ((_ is Node!15580) (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641349 (= (isBalanced!4442 (left!42840 (left!42840 (left!42840 ys!41)))) e!3168378)))

(declare-fun b!5078940 () Bool)

(declare-fun res!2162364 () Bool)

(assert (=> b!5078940 (=> (not res!2162364) (not e!3168379))))

(assert (=> b!5078940 (= res!2162364 (isBalanced!4442 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078941 () Bool)

(assert (=> b!5078941 (= e!3168379 (not (isEmpty!31663 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078942 () Bool)

(declare-fun res!2162362 () Bool)

(assert (=> b!5078942 (=> (not res!2162362) (not e!3168379))))

(assert (=> b!5078942 (= res!2162362 (not (isEmpty!31663 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078943 () Bool)

(assert (=> b!5078943 (= e!3168378 e!3168379)))

(declare-fun res!2162365 () Bool)

(assert (=> b!5078943 (=> (not res!2162365) (not e!3168379))))

(assert (=> b!5078943 (= res!2162365 (<= (- 1) (- (height!2157 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) (height!2157 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(assert (= (and d!1641349 (not res!2162366)) b!5078943))

(assert (= (and b!5078943 res!2162365) b!5078939))

(assert (= (and b!5078939 res!2162363) b!5078938))

(assert (= (and b!5078938 res!2162367) b!5078940))

(assert (= (and b!5078940 res!2162364) b!5078942))

(assert (= (and b!5078942 res!2162362) b!5078941))

(declare-fun m!6130174 () Bool)

(assert (=> b!5078940 m!6130174))

(declare-fun m!6130176 () Bool)

(assert (=> b!5078942 m!6130176))

(declare-fun m!6130178 () Bool)

(assert (=> b!5078941 m!6130178))

(declare-fun m!6130180 () Bool)

(assert (=> b!5078943 m!6130180))

(declare-fun m!6130182 () Bool)

(assert (=> b!5078943 m!6130182))

(declare-fun m!6130184 () Bool)

(assert (=> b!5078938 m!6130184))

(assert (=> b!5078939 m!6130180))

(assert (=> b!5078939 m!6130182))

(assert (=> b!5078574 d!1641349))

(declare-fun b!5078944 () Bool)

(declare-fun res!2162373 () Bool)

(declare-fun e!3168381 () Bool)

(assert (=> b!5078944 (=> (not res!2162373) (not e!3168381))))

(assert (=> b!5078944 (= res!2162373 (isBalanced!4442 (left!42840 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078945 () Bool)

(declare-fun res!2162369 () Bool)

(assert (=> b!5078945 (=> (not res!2162369) (not e!3168381))))

(assert (=> b!5078945 (= res!2162369 (<= (- (height!2157 (left!42840 (right!43170 (left!42840 (left!42840 ys!41))))) (height!2157 (right!43170 (right!43170 (left!42840 (left!42840 ys!41)))))) 1))))

(declare-fun d!1641351 () Bool)

(declare-fun res!2162372 () Bool)

(declare-fun e!3168380 () Bool)

(assert (=> d!1641351 (=> res!2162372 e!3168380)))

(assert (=> d!1641351 (= res!2162372 (not ((_ is Node!15580) (right!43170 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641351 (= (isBalanced!4442 (right!43170 (left!42840 (left!42840 ys!41)))) e!3168380)))

(declare-fun b!5078946 () Bool)

(declare-fun res!2162370 () Bool)

(assert (=> b!5078946 (=> (not res!2162370) (not e!3168381))))

(assert (=> b!5078946 (= res!2162370 (isBalanced!4442 (right!43170 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun b!5078947 () Bool)

(assert (=> b!5078947 (= e!3168381 (not (isEmpty!31663 (right!43170 (right!43170 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078948 () Bool)

(declare-fun res!2162368 () Bool)

(assert (=> b!5078948 (=> (not res!2162368) (not e!3168381))))

(assert (=> b!5078948 (= res!2162368 (not (isEmpty!31663 (left!42840 (right!43170 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078949 () Bool)

(assert (=> b!5078949 (= e!3168380 e!3168381)))

(declare-fun res!2162371 () Bool)

(assert (=> b!5078949 (=> (not res!2162371) (not e!3168381))))

(assert (=> b!5078949 (= res!2162371 (<= (- 1) (- (height!2157 (left!42840 (right!43170 (left!42840 (left!42840 ys!41))))) (height!2157 (right!43170 (right!43170 (left!42840 (left!42840 ys!41))))))))))

(assert (= (and d!1641351 (not res!2162372)) b!5078949))

(assert (= (and b!5078949 res!2162371) b!5078945))

(assert (= (and b!5078945 res!2162369) b!5078944))

(assert (= (and b!5078944 res!2162373) b!5078946))

(assert (= (and b!5078946 res!2162370) b!5078948))

(assert (= (and b!5078948 res!2162368) b!5078947))

(declare-fun m!6130186 () Bool)

(assert (=> b!5078946 m!6130186))

(declare-fun m!6130188 () Bool)

(assert (=> b!5078948 m!6130188))

(declare-fun m!6130190 () Bool)

(assert (=> b!5078947 m!6130190))

(declare-fun m!6130192 () Bool)

(assert (=> b!5078949 m!6130192))

(declare-fun m!6130194 () Bool)

(assert (=> b!5078949 m!6130194))

(declare-fun m!6130196 () Bool)

(assert (=> b!5078944 m!6130196))

(assert (=> b!5078945 m!6130192))

(assert (=> b!5078945 m!6130194))

(assert (=> b!5078576 d!1641351))

(declare-fun d!1641353 () Bool)

(declare-fun lt!2090614 () Int)

(assert (=> d!1641353 (= lt!2090614 (size!39108 (list!19021 (left!42840 (left!42840 ys!41)))))))

(assert (=> d!1641353 (= lt!2090614 (ite ((_ is Empty!15580) (left!42840 (left!42840 ys!41))) 0 (ite ((_ is Leaf!25875) (left!42840 (left!42840 ys!41))) (csize!31391 (left!42840 (left!42840 ys!41))) (csize!31390 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641353 (= (size!39109 (left!42840 (left!42840 ys!41))) lt!2090614)))

(declare-fun bs!1190556 () Bool)

(assert (= bs!1190556 d!1641353))

(assert (=> bs!1190556 m!6128228))

(assert (=> bs!1190556 m!6128228))

(assert (=> bs!1190556 m!6129096))

(assert (=> d!1640777 d!1641353))

(assert (=> d!1640777 d!1641085))

(declare-fun d!1641355 () Bool)

(assert (=> d!1641355 (= (inv!77644 (xs!18946 (right!43170 (right!43170 xs!286)))) (<= (size!39108 (innerList!15668 (xs!18946 (right!43170 (right!43170 xs!286))))) 2147483647))))

(declare-fun bs!1190557 () Bool)

(assert (= bs!1190557 d!1641355))

(declare-fun m!6130198 () Bool)

(assert (=> bs!1190557 m!6130198))

(assert (=> b!5078627 d!1641355))

(declare-fun d!1641357 () Bool)

(declare-fun res!2162374 () Bool)

(declare-fun e!3168382 () Bool)

(assert (=> d!1641357 (=> (not res!2162374) (not e!3168382))))

(assert (=> d!1641357 (= res!2162374 (<= (size!39108 (list!19023 (xs!18946 (right!43170 (right!43170 ys!41))))) 512))))

(assert (=> d!1641357 (= (inv!77648 (right!43170 (right!43170 ys!41))) e!3168382)))

(declare-fun b!5078950 () Bool)

(declare-fun res!2162375 () Bool)

(assert (=> b!5078950 (=> (not res!2162375) (not e!3168382))))

(assert (=> b!5078950 (= res!2162375 (= (csize!31391 (right!43170 (right!43170 ys!41))) (size!39108 (list!19023 (xs!18946 (right!43170 (right!43170 ys!41)))))))))

(declare-fun b!5078951 () Bool)

(assert (=> b!5078951 (= e!3168382 (and (> (csize!31391 (right!43170 (right!43170 ys!41))) 0) (<= (csize!31391 (right!43170 (right!43170 ys!41))) 512)))))

(assert (= (and d!1641357 res!2162374) b!5078950))

(assert (= (and b!5078950 res!2162375) b!5078951))

(assert (=> d!1641357 m!6129984))

(assert (=> d!1641357 m!6129984))

(declare-fun m!6130200 () Bool)

(assert (=> d!1641357 m!6130200))

(assert (=> b!5078950 m!6129984))

(assert (=> b!5078950 m!6129984))

(assert (=> b!5078950 m!6130200))

(assert (=> b!5078573 d!1641357))

(declare-fun b!5078952 () Bool)

(declare-fun e!3168383 () Bool)

(declare-fun call!353917 () List!58574)

(declare-fun call!353915 () List!58574)

(assert (=> b!5078952 (= e!3168383 (= call!353917 call!353915))))

(declare-fun b!5078953 () Bool)

(assert (=> b!5078953 (= e!3168383 (= call!353917 call!353915))))

(declare-fun lt!2090615 () Bool)

(assert (=> b!5078953 (= lt!2090615 (appendAssoc!310 (t!371381 (t!371381 (list!19021 (left!42840 (right!43170 xs!286))))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))

(declare-fun bm!353909 () Bool)

(declare-fun call!353916 () List!58574)

(assert (=> bm!353909 (= call!353916 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))

(declare-fun bm!353910 () Bool)

(declare-fun call!353914 () List!58574)

(assert (=> bm!353910 (= call!353917 (++!12807 call!353914 (list!19021 ys!41)))))

(declare-fun bm!353911 () Bool)

(assert (=> bm!353911 (= call!353914 (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) (list!19021 (right!43170 (right!43170 xs!286)))))))

(declare-fun d!1641359 () Bool)

(assert (=> d!1641359 e!3168383))

(declare-fun c!872285 () Bool)

(assert (=> d!1641359 (= c!872285 ((_ is Nil!58450) (t!371381 (list!19021 (left!42840 (right!43170 xs!286))))))))

(assert (=> d!1641359 (= (appendAssoc!310 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)) true)))

(declare-fun bm!353912 () Bool)

(assert (=> bm!353912 (= call!353915 (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) call!353916))))

(assert (= (and d!1641359 c!872285) b!5078952))

(assert (= (and d!1641359 (not c!872285)) b!5078953))

(assert (= (or b!5078952 b!5078953) bm!353911))

(assert (= (or b!5078952 b!5078953) bm!353909))

(assert (= (or b!5078952 b!5078953) bm!353912))

(assert (= (or b!5078952 b!5078953) bm!353910))

(declare-fun m!6130202 () Bool)

(assert (=> bm!353912 m!6130202))

(assert (=> bm!353910 m!6128090))

(declare-fun m!6130204 () Bool)

(assert (=> bm!353910 m!6130204))

(assert (=> bm!353909 m!6128426))

(assert (=> bm!353909 m!6128090))

(assert (=> bm!353909 m!6128430))

(assert (=> b!5078953 m!6128426))

(assert (=> b!5078953 m!6128090))

(declare-fun m!6130206 () Bool)

(assert (=> b!5078953 m!6130206))

(assert (=> bm!353911 m!6128426))

(assert (=> bm!353911 m!6129850))

(assert (=> b!5078538 d!1641359))

(declare-fun d!1641361 () Bool)

(declare-fun lt!2090616 () Int)

(assert (=> d!1641361 (>= lt!2090616 0)))

(declare-fun e!3168384 () Int)

(assert (=> d!1641361 (= lt!2090616 e!3168384)))

(declare-fun c!872286 () Bool)

(assert (=> d!1641361 (= c!872286 ((_ is Nil!58450) (t!371381 lt!2090486)))))

(assert (=> d!1641361 (= (size!39108 (t!371381 lt!2090486)) lt!2090616)))

(declare-fun b!5078954 () Bool)

(assert (=> b!5078954 (= e!3168384 0)))

(declare-fun b!5078955 () Bool)

(assert (=> b!5078955 (= e!3168384 (+ 1 (size!39108 (t!371381 (t!371381 lt!2090486)))))))

(assert (= (and d!1641361 c!872286) b!5078954))

(assert (= (and d!1641361 (not c!872286)) b!5078955))

(declare-fun m!6130208 () Bool)

(assert (=> b!5078955 m!6130208))

(assert (=> b!5078581 d!1641361))

(declare-fun b!5078959 () Bool)

(declare-fun e!3168386 () Bool)

(declare-fun lt!2090617 () List!58574)

(assert (=> b!5078959 (= e!3168386 (or (not (= (list!19021 (right!43170 (left!42840 ys!41))) Nil!58450)) (= lt!2090617 (list!19021 (left!42840 (left!42840 ys!41))))))))

(declare-fun d!1641363 () Bool)

(assert (=> d!1641363 e!3168386))

(declare-fun res!2162376 () Bool)

(assert (=> d!1641363 (=> (not res!2162376) (not e!3168386))))

(assert (=> d!1641363 (= res!2162376 (= (content!10426 lt!2090617) ((_ map or) (content!10426 (list!19021 (left!42840 (left!42840 ys!41)))) (content!10426 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun e!3168385 () List!58574)

(assert (=> d!1641363 (= lt!2090617 e!3168385)))

(declare-fun c!872287 () Bool)

(assert (=> d!1641363 (= c!872287 ((_ is Nil!58450) (list!19021 (left!42840 (left!42840 ys!41)))))))

(assert (=> d!1641363 (= (++!12807 (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))) lt!2090617)))

(declare-fun b!5078956 () Bool)

(assert (=> b!5078956 (= e!3168385 (list!19021 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5078958 () Bool)

(declare-fun res!2162377 () Bool)

(assert (=> b!5078958 (=> (not res!2162377) (not e!3168386))))

(assert (=> b!5078958 (= res!2162377 (= (size!39108 lt!2090617) (+ (size!39108 (list!19021 (left!42840 (left!42840 ys!41)))) (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5078957 () Bool)

(assert (=> b!5078957 (= e!3168385 (Cons!58450 (h!64898 (list!19021 (left!42840 (left!42840 ys!41)))) (++!12807 (t!371381 (list!19021 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1641363 c!872287) b!5078956))

(assert (= (and d!1641363 (not c!872287)) b!5078957))

(assert (= (and d!1641363 res!2162376) b!5078958))

(assert (= (and b!5078958 res!2162377) b!5078959))

(declare-fun m!6130210 () Bool)

(assert (=> d!1641363 m!6130210))

(assert (=> d!1641363 m!6128228))

(assert (=> d!1641363 m!6129092))

(assert (=> d!1641363 m!6128436))

(assert (=> d!1641363 m!6128622))

(declare-fun m!6130212 () Bool)

(assert (=> b!5078958 m!6130212))

(assert (=> b!5078958 m!6128228))

(assert (=> b!5078958 m!6129096))

(assert (=> b!5078958 m!6128436))

(assert (=> b!5078958 m!6128628))

(assert (=> b!5078957 m!6128436))

(declare-fun m!6130214 () Bool)

(assert (=> b!5078957 m!6130214))

(assert (=> b!5078103 d!1641363))

(assert (=> b!5078103 d!1640863))

(assert (=> b!5078103 d!1640813))

(declare-fun lt!2090618 () List!58574)

(declare-fun e!3168388 () Bool)

(declare-fun b!5078963 () Bool)

(assert (=> b!5078963 (= e!3168388 (or (not (= (list!19021 (right!43170 ys!41)) Nil!58450)) (= lt!2090618 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))))

(declare-fun d!1641365 () Bool)

(assert (=> d!1641365 e!3168388))

(declare-fun res!2162378 () Bool)

(assert (=> d!1641365 (=> (not res!2162378) (not e!3168388))))

(assert (=> d!1641365 (= res!2162378 (= (content!10426 lt!2090618) ((_ map or) (content!10426 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (content!10426 (list!19021 (right!43170 ys!41))))))))

(declare-fun e!3168387 () List!58574)

(assert (=> d!1641365 (= lt!2090618 e!3168387)))

(declare-fun c!872288 () Bool)

(assert (=> d!1641365 (= c!872288 ((_ is Nil!58450) (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(assert (=> d!1641365 (= (++!12807 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (list!19021 (right!43170 ys!41))) lt!2090618)))

(declare-fun b!5078960 () Bool)

(assert (=> b!5078960 (= e!3168387 (list!19021 (right!43170 ys!41)))))

(declare-fun b!5078962 () Bool)

(declare-fun res!2162379 () Bool)

(assert (=> b!5078962 (=> (not res!2162379) (not e!3168388))))

(assert (=> b!5078962 (= res!2162379 (= (size!39108 lt!2090618) (+ (size!39108 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (size!39108 (list!19021 (right!43170 ys!41))))))))

(declare-fun b!5078961 () Bool)

(assert (=> b!5078961 (= e!3168387 (Cons!58450 (h!64898 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (++!12807 (t!371381 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (list!19021 (right!43170 ys!41)))))))

(assert (= (and d!1641365 c!872288) b!5078960))

(assert (= (and d!1641365 (not c!872288)) b!5078961))

(assert (= (and d!1641365 res!2162378) b!5078962))

(assert (= (and b!5078962 res!2162379) b!5078963))

(declare-fun m!6130216 () Bool)

(assert (=> d!1641365 m!6130216))

(declare-fun m!6130218 () Bool)

(assert (=> d!1641365 m!6130218))

(assert (=> d!1641365 m!6128342))

(assert (=> d!1641365 m!6128514))

(declare-fun m!6130220 () Bool)

(assert (=> b!5078962 m!6130220))

(declare-fun m!6130222 () Bool)

(assert (=> b!5078962 m!6130222))

(assert (=> b!5078962 m!6128342))

(assert (=> b!5078962 m!6128522))

(assert (=> b!5078961 m!6128342))

(declare-fun m!6130224 () Bool)

(assert (=> b!5078961 m!6130224))

(assert (=> b!5078597 d!1641365))

(declare-fun d!1641367 () Bool)

(assert (=> d!1641367 (= (height!2157 (left!42840 lt!2090471)) (ite ((_ is Empty!15580) (left!42840 lt!2090471)) 0 (ite ((_ is Leaf!25875) (left!42840 lt!2090471)) 1 (cheight!15791 (left!42840 lt!2090471)))))))

(assert (=> b!5078091 d!1641367))

(declare-fun d!1641369 () Bool)

(assert (=> d!1641369 (= (height!2157 (right!43170 lt!2090471)) (ite ((_ is Empty!15580) (right!43170 lt!2090471)) 0 (ite ((_ is Leaf!25875) (right!43170 lt!2090471)) 1 (cheight!15791 (right!43170 lt!2090471)))))))

(assert (=> b!5078091 d!1641369))

(declare-fun b!5078967 () Bool)

(declare-fun e!3168390 () Bool)

(declare-fun lt!2090619 () List!58574)

(assert (=> b!5078967 (= e!3168390 (or (not (= (list!19021 (right!43170 (left!42840 lt!2090452))) Nil!58450)) (= lt!2090619 (list!19021 (left!42840 (left!42840 lt!2090452))))))))

(declare-fun d!1641371 () Bool)

(assert (=> d!1641371 e!3168390))

(declare-fun res!2162380 () Bool)

(assert (=> d!1641371 (=> (not res!2162380) (not e!3168390))))

(assert (=> d!1641371 (= res!2162380 (= (content!10426 lt!2090619) ((_ map or) (content!10426 (list!19021 (left!42840 (left!42840 lt!2090452)))) (content!10426 (list!19021 (right!43170 (left!42840 lt!2090452)))))))))

(declare-fun e!3168389 () List!58574)

(assert (=> d!1641371 (= lt!2090619 e!3168389)))

(declare-fun c!872289 () Bool)

(assert (=> d!1641371 (= c!872289 ((_ is Nil!58450) (list!19021 (left!42840 (left!42840 lt!2090452)))))))

(assert (=> d!1641371 (= (++!12807 (list!19021 (left!42840 (left!42840 lt!2090452))) (list!19021 (right!43170 (left!42840 lt!2090452)))) lt!2090619)))

(declare-fun b!5078964 () Bool)

(assert (=> b!5078964 (= e!3168389 (list!19021 (right!43170 (left!42840 lt!2090452))))))

(declare-fun b!5078966 () Bool)

(declare-fun res!2162381 () Bool)

(assert (=> b!5078966 (=> (not res!2162381) (not e!3168390))))

(assert (=> b!5078966 (= res!2162381 (= (size!39108 lt!2090619) (+ (size!39108 (list!19021 (left!42840 (left!42840 lt!2090452)))) (size!39108 (list!19021 (right!43170 (left!42840 lt!2090452)))))))))

(declare-fun b!5078965 () Bool)

(assert (=> b!5078965 (= e!3168389 (Cons!58450 (h!64898 (list!19021 (left!42840 (left!42840 lt!2090452)))) (++!12807 (t!371381 (list!19021 (left!42840 (left!42840 lt!2090452)))) (list!19021 (right!43170 (left!42840 lt!2090452))))))))

(assert (= (and d!1641371 c!872289) b!5078964))

(assert (= (and d!1641371 (not c!872289)) b!5078965))

(assert (= (and d!1641371 res!2162380) b!5078966))

(assert (= (and b!5078966 res!2162381) b!5078967))

(declare-fun m!6130226 () Bool)

(assert (=> d!1641371 m!6130226))

(assert (=> d!1641371 m!6129040))

(declare-fun m!6130228 () Bool)

(assert (=> d!1641371 m!6130228))

(assert (=> d!1641371 m!6129042))

(declare-fun m!6130230 () Bool)

(assert (=> d!1641371 m!6130230))

(declare-fun m!6130232 () Bool)

(assert (=> b!5078966 m!6130232))

(assert (=> b!5078966 m!6129040))

(declare-fun m!6130234 () Bool)

(assert (=> b!5078966 m!6130234))

(assert (=> b!5078966 m!6129042))

(declare-fun m!6130236 () Bool)

(assert (=> b!5078966 m!6130236))

(assert (=> b!5078965 m!6129042))

(declare-fun m!6130238 () Bool)

(assert (=> b!5078965 m!6130238))

(assert (=> b!5078373 d!1641371))

(declare-fun b!5078968 () Bool)

(declare-fun e!3168391 () List!58574)

(assert (=> b!5078968 (= e!3168391 Nil!58450)))

(declare-fun b!5078971 () Bool)

(declare-fun e!3168392 () List!58574)

(assert (=> b!5078971 (= e!3168392 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 lt!2090452)))) (list!19021 (right!43170 (left!42840 (left!42840 lt!2090452))))))))

(declare-fun b!5078970 () Bool)

(assert (=> b!5078970 (= e!3168392 (list!19023 (xs!18946 (left!42840 (left!42840 lt!2090452)))))))

(declare-fun d!1641373 () Bool)

(declare-fun c!872290 () Bool)

(assert (=> d!1641373 (= c!872290 ((_ is Empty!15580) (left!42840 (left!42840 lt!2090452))))))

(assert (=> d!1641373 (= (list!19021 (left!42840 (left!42840 lt!2090452))) e!3168391)))

(declare-fun b!5078969 () Bool)

(assert (=> b!5078969 (= e!3168391 e!3168392)))

(declare-fun c!872291 () Bool)

(assert (=> b!5078969 (= c!872291 ((_ is Leaf!25875) (left!42840 (left!42840 lt!2090452))))))

(assert (= (and d!1641373 c!872290) b!5078968))

(assert (= (and d!1641373 (not c!872290)) b!5078969))

(assert (= (and b!5078969 c!872291) b!5078970))

(assert (= (and b!5078969 (not c!872291)) b!5078971))

(declare-fun m!6130240 () Bool)

(assert (=> b!5078971 m!6130240))

(declare-fun m!6130242 () Bool)

(assert (=> b!5078971 m!6130242))

(assert (=> b!5078971 m!6130240))

(assert (=> b!5078971 m!6130242))

(declare-fun m!6130244 () Bool)

(assert (=> b!5078971 m!6130244))

(declare-fun m!6130246 () Bool)

(assert (=> b!5078970 m!6130246))

(assert (=> b!5078373 d!1641373))

(declare-fun b!5078972 () Bool)

(declare-fun e!3168393 () List!58574)

(assert (=> b!5078972 (= e!3168393 Nil!58450)))

(declare-fun b!5078975 () Bool)

(declare-fun e!3168394 () List!58574)

(assert (=> b!5078975 (= e!3168394 (++!12807 (list!19021 (left!42840 (right!43170 (left!42840 lt!2090452)))) (list!19021 (right!43170 (right!43170 (left!42840 lt!2090452))))))))

(declare-fun b!5078974 () Bool)

(assert (=> b!5078974 (= e!3168394 (list!19023 (xs!18946 (right!43170 (left!42840 lt!2090452)))))))

(declare-fun d!1641375 () Bool)

(declare-fun c!872292 () Bool)

(assert (=> d!1641375 (= c!872292 ((_ is Empty!15580) (right!43170 (left!42840 lt!2090452))))))

(assert (=> d!1641375 (= (list!19021 (right!43170 (left!42840 lt!2090452))) e!3168393)))

(declare-fun b!5078973 () Bool)

(assert (=> b!5078973 (= e!3168393 e!3168394)))

(declare-fun c!872293 () Bool)

(assert (=> b!5078973 (= c!872293 ((_ is Leaf!25875) (right!43170 (left!42840 lt!2090452))))))

(assert (= (and d!1641375 c!872292) b!5078972))

(assert (= (and d!1641375 (not c!872292)) b!5078973))

(assert (= (and b!5078973 c!872293) b!5078974))

(assert (= (and b!5078973 (not c!872293)) b!5078975))

(declare-fun m!6130248 () Bool)

(assert (=> b!5078975 m!6130248))

(declare-fun m!6130250 () Bool)

(assert (=> b!5078975 m!6130250))

(assert (=> b!5078975 m!6130248))

(assert (=> b!5078975 m!6130250))

(declare-fun m!6130252 () Bool)

(assert (=> b!5078975 m!6130252))

(declare-fun m!6130254 () Bool)

(assert (=> b!5078974 m!6130254))

(assert (=> b!5078373 d!1641375))

(declare-fun d!1641377 () Bool)

(declare-fun lt!2090620 () Int)

(assert (=> d!1641377 (>= lt!2090620 0)))

(declare-fun e!3168395 () Int)

(assert (=> d!1641377 (= lt!2090620 e!3168395)))

(declare-fun c!872294 () Bool)

(assert (=> d!1641377 (= c!872294 ((_ is Nil!58450) lt!2090537))))

(assert (=> d!1641377 (= (size!39108 lt!2090537) lt!2090620)))

(declare-fun b!5078976 () Bool)

(assert (=> b!5078976 (= e!3168395 0)))

(declare-fun b!5078977 () Bool)

(assert (=> b!5078977 (= e!3168395 (+ 1 (size!39108 (t!371381 lt!2090537))))))

(assert (= (and d!1641377 c!872294) b!5078976))

(assert (= (and d!1641377 (not c!872294)) b!5078977))

(declare-fun m!6130256 () Bool)

(assert (=> b!5078977 m!6130256))

(assert (=> b!5078365 d!1641377))

(declare-fun d!1641379 () Bool)

(declare-fun lt!2090621 () Int)

(assert (=> d!1641379 (>= lt!2090621 0)))

(declare-fun e!3168396 () Int)

(assert (=> d!1641379 (= lt!2090621 e!3168396)))

(declare-fun c!872295 () Bool)

(assert (=> d!1641379 (= c!872295 ((_ is Nil!58450) (list!19021 (left!42840 lt!2090452))))))

(assert (=> d!1641379 (= (size!39108 (list!19021 (left!42840 lt!2090452))) lt!2090621)))

(declare-fun b!5078978 () Bool)

(assert (=> b!5078978 (= e!3168396 0)))

(declare-fun b!5078979 () Bool)

(assert (=> b!5078979 (= e!3168396 (+ 1 (size!39108 (t!371381 (list!19021 (left!42840 lt!2090452))))))))

(assert (= (and d!1641379 c!872295) b!5078978))

(assert (= (and d!1641379 (not c!872295)) b!5078979))

(assert (=> b!5078979 m!6130012))

(assert (=> b!5078365 d!1641379))

(declare-fun d!1641381 () Bool)

(declare-fun lt!2090622 () Int)

(assert (=> d!1641381 (>= lt!2090622 0)))

(declare-fun e!3168397 () Int)

(assert (=> d!1641381 (= lt!2090622 e!3168397)))

(declare-fun c!872296 () Bool)

(assert (=> d!1641381 (= c!872296 ((_ is Nil!58450) (list!19021 (right!43170 lt!2090452))))))

(assert (=> d!1641381 (= (size!39108 (list!19021 (right!43170 lt!2090452))) lt!2090622)))

(declare-fun b!5078980 () Bool)

(assert (=> b!5078980 (= e!3168397 0)))

(declare-fun b!5078981 () Bool)

(assert (=> b!5078981 (= e!3168397 (+ 1 (size!39108 (t!371381 (list!19021 (right!43170 lt!2090452))))))))

(assert (= (and d!1641381 c!872296) b!5078980))

(assert (= (and d!1641381 (not c!872296)) b!5078981))

(declare-fun m!6130258 () Bool)

(assert (=> b!5078981 m!6130258))

(assert (=> b!5078365 d!1641381))

(assert (=> bm!353863 d!1641005))

(declare-fun d!1641383 () Bool)

(assert (=> d!1641383 (= (height!2157 (left!42840 (left!42840 xs!286))) (ite ((_ is Empty!15580) (left!42840 (left!42840 xs!286))) 0 (ite ((_ is Leaf!25875) (left!42840 (left!42840 xs!286))) 1 (cheight!15791 (left!42840 (left!42840 xs!286))))))))

(assert (=> b!5078305 d!1641383))

(declare-fun d!1641385 () Bool)

(assert (=> d!1641385 (= (height!2157 (right!43170 (left!42840 xs!286))) (ite ((_ is Empty!15580) (right!43170 (left!42840 xs!286))) 0 (ite ((_ is Leaf!25875) (right!43170 (left!42840 xs!286))) 1 (cheight!15791 (right!43170 (left!42840 xs!286))))))))

(assert (=> b!5078305 d!1641385))

(declare-fun d!1641387 () Bool)

(declare-fun res!2162382 () Bool)

(declare-fun e!3168398 () Bool)

(assert (=> d!1641387 (=> (not res!2162382) (not e!3168398))))

(assert (=> d!1641387 (= res!2162382 (<= (size!39108 (list!19023 (xs!18946 (left!42840 (left!42840 ys!41))))) 512))))

(assert (=> d!1641387 (= (inv!77648 (left!42840 (left!42840 ys!41))) e!3168398)))

(declare-fun b!5078982 () Bool)

(declare-fun res!2162383 () Bool)

(assert (=> b!5078982 (=> (not res!2162383) (not e!3168398))))

(assert (=> b!5078982 (= res!2162383 (= (csize!31391 (left!42840 (left!42840 ys!41))) (size!39108 (list!19023 (xs!18946 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5078983 () Bool)

(assert (=> b!5078983 (= e!3168398 (and (> (csize!31391 (left!42840 (left!42840 ys!41))) 0) (<= (csize!31391 (left!42840 (left!42840 ys!41))) 512)))))

(assert (= (and d!1641387 res!2162382) b!5078982))

(assert (= (and b!5078982 res!2162383) b!5078983))

(assert (=> d!1641387 m!6128740))

(assert (=> d!1641387 m!6128740))

(declare-fun m!6130260 () Bool)

(assert (=> d!1641387 m!6130260))

(assert (=> b!5078982 m!6128740))

(assert (=> b!5078982 m!6128740))

(assert (=> b!5078982 m!6130260))

(assert (=> b!5078452 d!1641387))

(declare-fun lt!2090623 () List!58574)

(declare-fun b!5078987 () Bool)

(declare-fun e!3168400 () Bool)

(assert (=> b!5078987 (= e!3168400 (or (not (= call!353887 Nil!58450)) (= lt!2090623 (list!19021 (left!42840 (right!43170 xs!286))))))))

(declare-fun d!1641389 () Bool)

(assert (=> d!1641389 e!3168400))

(declare-fun res!2162384 () Bool)

(assert (=> d!1641389 (=> (not res!2162384) (not e!3168400))))

(assert (=> d!1641389 (= res!2162384 (= (content!10426 lt!2090623) ((_ map or) (content!10426 (list!19021 (left!42840 (right!43170 xs!286)))) (content!10426 call!353887))))))

(declare-fun e!3168399 () List!58574)

(assert (=> d!1641389 (= lt!2090623 e!3168399)))

(declare-fun c!872297 () Bool)

(assert (=> d!1641389 (= c!872297 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641389 (= (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) call!353887) lt!2090623)))

(declare-fun b!5078984 () Bool)

(assert (=> b!5078984 (= e!3168399 call!353887)))

(declare-fun b!5078986 () Bool)

(declare-fun res!2162385 () Bool)

(assert (=> b!5078986 (=> (not res!2162385) (not e!3168400))))

(assert (=> b!5078986 (= res!2162385 (= (size!39108 lt!2090623) (+ (size!39108 (list!19021 (left!42840 (right!43170 xs!286)))) (size!39108 call!353887))))))

(declare-fun b!5078985 () Bool)

(assert (=> b!5078985 (= e!3168399 (Cons!58450 (h!64898 (list!19021 (left!42840 (right!43170 xs!286)))) (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) call!353887)))))

(assert (= (and d!1641389 c!872297) b!5078984))

(assert (= (and d!1641389 (not c!872297)) b!5078985))

(assert (= (and d!1641389 res!2162384) b!5078986))

(assert (= (and b!5078986 res!2162385) b!5078987))

(declare-fun m!6130262 () Bool)

(assert (=> d!1641389 m!6130262))

(assert (=> d!1641389 m!6128424))

(assert (=> d!1641389 m!6129760))

(declare-fun m!6130264 () Bool)

(assert (=> d!1641389 m!6130264))

(declare-fun m!6130266 () Bool)

(assert (=> b!5078986 m!6130266))

(assert (=> b!5078986 m!6128424))

(assert (=> b!5078986 m!6129718))

(declare-fun m!6130268 () Bool)

(assert (=> b!5078986 m!6130268))

(declare-fun m!6130270 () Bool)

(assert (=> b!5078985 m!6130270))

(assert (=> bm!353880 d!1641389))

(declare-fun d!1641391 () Bool)

(assert (=> d!1641391 (= (inv!77644 (xs!18946 (left!42840 (left!42840 xs!286)))) (<= (size!39108 (innerList!15668 (xs!18946 (left!42840 (left!42840 xs!286))))) 2147483647))))

(declare-fun bs!1190558 () Bool)

(assert (= bs!1190558 d!1641391))

(declare-fun m!6130272 () Bool)

(assert (=> bs!1190558 m!6130272))

(assert (=> b!5078646 d!1641391))

(declare-fun d!1641393 () Bool)

(assert (=> d!1641393 (= (max!0 (height!2157 (left!42840 (left!42840 ys!41))) (height!2157 (right!43170 (left!42840 ys!41)))) (ite (< (height!2157 (left!42840 (left!42840 ys!41))) (height!2157 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 (left!42840 ys!41))) (height!2157 (left!42840 (left!42840 ys!41)))))))

(assert (=> b!5078141 d!1641393))

(assert (=> b!5078141 d!1640797))

(assert (=> b!5078141 d!1641079))

(declare-fun d!1641395 () Bool)

(assert (=> d!1641395 (= (inv!77644 (xs!18946 (right!43170 (right!43170 ys!41)))) (<= (size!39108 (innerList!15668 (xs!18946 (right!43170 (right!43170 ys!41))))) 2147483647))))

(declare-fun bs!1190559 () Bool)

(assert (= bs!1190559 d!1641395))

(declare-fun m!6130274 () Bool)

(assert (=> bs!1190559 m!6130274))

(assert (=> b!5078639 d!1641395))

(declare-fun d!1641397 () Bool)

(declare-fun lt!2090624 () Int)

(assert (=> d!1641397 (>= lt!2090624 0)))

(declare-fun e!3168401 () Int)

(assert (=> d!1641397 (= lt!2090624 e!3168401)))

(declare-fun c!872298 () Bool)

(assert (=> d!1641397 (= c!872298 ((_ is Nil!58450) (list!19023 (xs!18946 xs!286))))))

(assert (=> d!1641397 (= (size!39108 (list!19023 (xs!18946 xs!286))) lt!2090624)))

(declare-fun b!5078988 () Bool)

(assert (=> b!5078988 (= e!3168401 0)))

(declare-fun b!5078989 () Bool)

(assert (=> b!5078989 (= e!3168401 (+ 1 (size!39108 (t!371381 (list!19023 (xs!18946 xs!286))))))))

(assert (= (and d!1641397 c!872298) b!5078988))

(assert (= (and d!1641397 (not c!872298)) b!5078989))

(declare-fun m!6130276 () Bool)

(assert (=> b!5078989 m!6130276))

(assert (=> d!1641019 d!1641397))

(assert (=> d!1641019 d!1640803))

(declare-fun e!3168403 () Bool)

(declare-fun lt!2090625 () List!58574)

(declare-fun b!5078993 () Bool)

(assert (=> b!5078993 (= e!3168403 (or (not (= (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) Nil!58450)) (= lt!2090625 (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))))

(declare-fun d!1641399 () Bool)

(assert (=> d!1641399 e!3168403))

(declare-fun res!2162386 () Bool)

(assert (=> d!1641399 (=> (not res!2162386) (not e!3168403))))

(assert (=> d!1641399 (= res!2162386 (= (content!10426 lt!2090625) ((_ map or) (content!10426 (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (content!10426 (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))))

(declare-fun e!3168402 () List!58574)

(assert (=> d!1641399 (= lt!2090625 e!3168402)))

(declare-fun c!872299 () Bool)

(assert (=> d!1641399 (= c!872299 ((_ is Nil!58450) (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(assert (=> d!1641399 (= (++!12807 (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) lt!2090625)))

(declare-fun b!5078990 () Bool)

(assert (=> b!5078990 (= e!3168402 (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(declare-fun b!5078992 () Bool)

(declare-fun res!2162387 () Bool)

(assert (=> b!5078992 (=> (not res!2162387) (not e!3168403))))

(assert (=> b!5078992 (= res!2162387 (= (size!39108 lt!2090625) (+ (size!39108 (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (size!39108 (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))))

(declare-fun b!5078991 () Bool)

(assert (=> b!5078991 (= e!3168402 (Cons!58450 (h!64898 (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (++!12807 (t!371381 (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))))

(assert (= (and d!1641399 c!872299) b!5078990))

(assert (= (and d!1641399 (not c!872299)) b!5078991))

(assert (= (and d!1641399 res!2162386) b!5078992))

(assert (= (and b!5078992 res!2162387) b!5078993))

(declare-fun m!6130278 () Bool)

(assert (=> d!1641399 m!6130278))

(assert (=> d!1641399 m!6129502))

(declare-fun m!6130280 () Bool)

(assert (=> d!1641399 m!6130280))

(assert (=> d!1641399 m!6129504))

(declare-fun m!6130282 () Bool)

(assert (=> d!1641399 m!6130282))

(declare-fun m!6130284 () Bool)

(assert (=> b!5078992 m!6130284))

(assert (=> b!5078992 m!6129502))

(declare-fun m!6130286 () Bool)

(assert (=> b!5078992 m!6130286))

(assert (=> b!5078992 m!6129504))

(declare-fun m!6130288 () Bool)

(assert (=> b!5078992 m!6130288))

(assert (=> b!5078991 m!6129504))

(declare-fun m!6130290 () Bool)

(assert (=> b!5078991 m!6130290))

(assert (=> b!5078611 d!1641399))

(declare-fun b!5078994 () Bool)

(declare-fun e!3168404 () List!58574)

(assert (=> b!5078994 (= e!3168404 Nil!58450)))

(declare-fun b!5078997 () Bool)

(declare-fun e!3168405 () List!58574)

(assert (=> b!5078997 (= e!3168405 (++!12807 (list!19021 (left!42840 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (list!19021 (right!43170 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))))

(declare-fun b!5078996 () Bool)

(assert (=> b!5078996 (= e!3168405 (list!19023 (xs!18946 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(declare-fun d!1641401 () Bool)

(declare-fun c!872300 () Bool)

(assert (=> d!1641401 (= c!872300 ((_ is Empty!15580) (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1641401 (= (list!19021 (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) e!3168404)))

(declare-fun b!5078995 () Bool)

(assert (=> b!5078995 (= e!3168404 e!3168405)))

(declare-fun c!872301 () Bool)

(assert (=> b!5078995 (= c!872301 ((_ is Leaf!25875) (left!42840 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1641401 c!872300) b!5078994))

(assert (= (and d!1641401 (not c!872300)) b!5078995))

(assert (= (and b!5078995 c!872301) b!5078996))

(assert (= (and b!5078995 (not c!872301)) b!5078997))

(declare-fun m!6130292 () Bool)

(assert (=> b!5078997 m!6130292))

(declare-fun m!6130294 () Bool)

(assert (=> b!5078997 m!6130294))

(assert (=> b!5078997 m!6130292))

(assert (=> b!5078997 m!6130294))

(declare-fun m!6130296 () Bool)

(assert (=> b!5078997 m!6130296))

(declare-fun m!6130298 () Bool)

(assert (=> b!5078996 m!6130298))

(assert (=> b!5078611 d!1641401))

(declare-fun b!5078998 () Bool)

(declare-fun e!3168406 () List!58574)

(assert (=> b!5078998 (= e!3168406 Nil!58450)))

(declare-fun b!5079001 () Bool)

(declare-fun e!3168407 () List!58574)

(assert (=> b!5079001 (= e!3168407 (++!12807 (list!19021 (left!42840 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))) (list!19021 (right!43170 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))))

(declare-fun b!5079000 () Bool)

(assert (=> b!5079000 (= e!3168407 (list!19023 (xs!18946 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41)))))))))

(declare-fun d!1641403 () Bool)

(declare-fun c!872302 () Bool)

(assert (=> d!1641403 (= c!872302 ((_ is Empty!15580) (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1641403 (= (list!19021 (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) e!3168406)))

(declare-fun b!5078999 () Bool)

(assert (=> b!5078999 (= e!3168406 e!3168407)))

(declare-fun c!872303 () Bool)

(assert (=> b!5078999 (= c!872303 ((_ is Leaf!25875) (right!43170 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1641403 c!872302) b!5078998))

(assert (= (and d!1641403 (not c!872302)) b!5078999))

(assert (= (and b!5078999 c!872303) b!5079000))

(assert (= (and b!5078999 (not c!872303)) b!5079001))

(declare-fun m!6130300 () Bool)

(assert (=> b!5079001 m!6130300))

(declare-fun m!6130302 () Bool)

(assert (=> b!5079001 m!6130302))

(assert (=> b!5079001 m!6130300))

(assert (=> b!5079001 m!6130302))

(declare-fun m!6130304 () Bool)

(assert (=> b!5079001 m!6130304))

(declare-fun m!6130306 () Bool)

(assert (=> b!5079000 m!6130306))

(assert (=> b!5078611 d!1641403))

(declare-fun d!1641405 () Bool)

(assert (=> d!1641405 (= (height!2157 (left!42840 (left!42840 lt!2090452))) (ite ((_ is Empty!15580) (left!42840 (left!42840 lt!2090452))) 0 (ite ((_ is Leaf!25875) (left!42840 (left!42840 lt!2090452))) 1 (cheight!15791 (left!42840 (left!42840 lt!2090452))))))))

(assert (=> b!5078325 d!1641405))

(declare-fun d!1641407 () Bool)

(assert (=> d!1641407 (= (height!2157 (right!43170 (left!42840 lt!2090452))) (ite ((_ is Empty!15580) (right!43170 (left!42840 lt!2090452))) 0 (ite ((_ is Leaf!25875) (right!43170 (left!42840 lt!2090452))) 1 (cheight!15791 (right!43170 (left!42840 lt!2090452))))))))

(assert (=> b!5078325 d!1641407))

(declare-fun d!1641409 () Bool)

(declare-fun res!2162388 () Bool)

(declare-fun e!3168408 () Bool)

(assert (=> d!1641409 (=> (not res!2162388) (not e!3168408))))

(assert (=> d!1641409 (= res!2162388 (<= (size!39108 (list!19023 (xs!18946 (left!42840 (right!43170 xs!286))))) 512))))

(assert (=> d!1641409 (= (inv!77648 (left!42840 (right!43170 xs!286))) e!3168408)))

(declare-fun b!5079002 () Bool)

(declare-fun res!2162389 () Bool)

(assert (=> b!5079002 (=> (not res!2162389) (not e!3168408))))

(assert (=> b!5079002 (= res!2162389 (= (csize!31391 (left!42840 (right!43170 xs!286))) (size!39108 (list!19023 (xs!18946 (left!42840 (right!43170 xs!286)))))))))

(declare-fun b!5079003 () Bool)

(assert (=> b!5079003 (= e!3168408 (and (> (csize!31391 (left!42840 (right!43170 xs!286))) 0) (<= (csize!31391 (left!42840 (right!43170 xs!286))) 512)))))

(assert (= (and d!1641409 res!2162388) b!5079002))

(assert (= (and b!5079002 res!2162389) b!5079003))

(assert (=> d!1641409 m!6129328))

(assert (=> d!1641409 m!6129328))

(declare-fun m!6130308 () Bool)

(assert (=> d!1641409 m!6130308))

(assert (=> b!5079002 m!6129328))

(assert (=> b!5079002 m!6129328))

(assert (=> b!5079002 m!6130308))

(assert (=> b!5078110 d!1641409))

(declare-fun b!5079004 () Bool)

(declare-fun res!2162395 () Bool)

(declare-fun e!3168410 () Bool)

(assert (=> b!5079004 (=> (not res!2162395) (not e!3168410))))

(assert (=> b!5079004 (= res!2162395 (isBalanced!4442 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun b!5079005 () Bool)

(declare-fun res!2162391 () Bool)

(assert (=> b!5079005 (=> (not res!2162391) (not e!3168410))))

(assert (=> b!5079005 (= res!2162391 (<= (- (height!2157 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (height!2157 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) 1))))

(declare-fun d!1641411 () Bool)

(declare-fun res!2162394 () Bool)

(declare-fun e!3168409 () Bool)

(assert (=> d!1641411 (=> res!2162394 e!3168409)))

(assert (=> d!1641411 (= res!2162394 (not ((_ is Node!15580) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(assert (=> d!1641411 (= (isBalanced!4442 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) e!3168409)))

(declare-fun b!5079006 () Bool)

(declare-fun res!2162392 () Bool)

(assert (=> b!5079006 (=> (not res!2162392) (not e!3168410))))

(assert (=> b!5079006 (= res!2162392 (isBalanced!4442 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun b!5079007 () Bool)

(assert (=> b!5079007 (= e!3168410 (not (isEmpty!31663 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079008 () Bool)

(declare-fun res!2162390 () Bool)

(assert (=> b!5079008 (=> (not res!2162390) (not e!3168410))))

(assert (=> b!5079008 (= res!2162390 (not (isEmpty!31663 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079009 () Bool)

(assert (=> b!5079009 (= e!3168409 e!3168410)))

(declare-fun res!2162393 () Bool)

(assert (=> b!5079009 (=> (not res!2162393) (not e!3168410))))

(assert (=> b!5079009 (= res!2162393 (<= (- 1) (- (height!2157 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (height!2157 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(assert (= (and d!1641411 (not res!2162394)) b!5079009))

(assert (= (and b!5079009 res!2162393) b!5079005))

(assert (= (and b!5079005 res!2162391) b!5079004))

(assert (= (and b!5079004 res!2162395) b!5079006))

(assert (= (and b!5079006 res!2162392) b!5079008))

(assert (= (and b!5079008 res!2162390) b!5079007))

(declare-fun m!6130310 () Bool)

(assert (=> b!5079006 m!6130310))

(declare-fun m!6130312 () Bool)

(assert (=> b!5079008 m!6130312))

(declare-fun m!6130314 () Bool)

(assert (=> b!5079007 m!6130314))

(declare-fun m!6130316 () Bool)

(assert (=> b!5079009 m!6130316))

(declare-fun m!6130318 () Bool)

(assert (=> b!5079009 m!6130318))

(declare-fun m!6130320 () Bool)

(assert (=> b!5079004 m!6130320))

(assert (=> b!5079005 m!6130316))

(assert (=> b!5079005 m!6130318))

(assert (=> b!5078247 d!1641411))

(declare-fun d!1641413 () Bool)

(assert (=> d!1641413 (= (height!2157 (left!42840 (right!43170 lt!2090452))) (ite ((_ is Empty!15580) (left!42840 (right!43170 lt!2090452))) 0 (ite ((_ is Leaf!25875) (left!42840 (right!43170 lt!2090452))) 1 (cheight!15791 (left!42840 (right!43170 lt!2090452))))))))

(assert (=> b!5078285 d!1641413))

(declare-fun d!1641415 () Bool)

(assert (=> d!1641415 (= (height!2157 (right!43170 (right!43170 lt!2090452))) (ite ((_ is Empty!15580) (right!43170 (right!43170 lt!2090452))) 0 (ite ((_ is Leaf!25875) (right!43170 (right!43170 lt!2090452))) 1 (cheight!15791 (right!43170 (right!43170 lt!2090452))))))))

(assert (=> b!5078285 d!1641415))

(declare-fun d!1641417 () Bool)

(declare-fun lt!2090626 () Int)

(assert (=> d!1641417 (= lt!2090626 (size!39108 (list!19021 (left!42840 (left!42840 xs!286)))))))

(assert (=> d!1641417 (= lt!2090626 (ite ((_ is Empty!15580) (left!42840 (left!42840 xs!286))) 0 (ite ((_ is Leaf!25875) (left!42840 (left!42840 xs!286))) (csize!31391 (left!42840 (left!42840 xs!286))) (csize!31390 (left!42840 (left!42840 xs!286))))))))

(assert (=> d!1641417 (= (size!39109 (left!42840 (left!42840 xs!286))) lt!2090626)))

(declare-fun bs!1190560 () Bool)

(assert (= bs!1190560 d!1641417))

(assert (=> bs!1190560 m!6128968))

(assert (=> bs!1190560 m!6128968))

(declare-fun m!6130322 () Bool)

(assert (=> bs!1190560 m!6130322))

(assert (=> d!1640969 d!1641417))

(declare-fun d!1641419 () Bool)

(declare-fun lt!2090627 () Int)

(assert (=> d!1641419 (= lt!2090627 (size!39108 (list!19021 (right!43170 (left!42840 xs!286)))))))

(assert (=> d!1641419 (= lt!2090627 (ite ((_ is Empty!15580) (right!43170 (left!42840 xs!286))) 0 (ite ((_ is Leaf!25875) (right!43170 (left!42840 xs!286))) (csize!31391 (right!43170 (left!42840 xs!286))) (csize!31390 (right!43170 (left!42840 xs!286))))))))

(assert (=> d!1641419 (= (size!39109 (right!43170 (left!42840 xs!286))) lt!2090627)))

(declare-fun bs!1190561 () Bool)

(assert (= bs!1190561 d!1641419))

(assert (=> bs!1190561 m!6128970))

(assert (=> bs!1190561 m!6128970))

(declare-fun m!6130324 () Bool)

(assert (=> bs!1190561 m!6130324))

(assert (=> d!1640969 d!1641419))

(declare-fun d!1641421 () Bool)

(declare-fun c!872304 () Bool)

(assert (=> d!1641421 (= c!872304 ((_ is Nil!58450) (t!371381 (list!19021 ys!41))))))

(declare-fun e!3168411 () (InoxSet T!105230))

(assert (=> d!1641421 (= (content!10426 (t!371381 (list!19021 ys!41))) e!3168411)))

(declare-fun b!5079010 () Bool)

(assert (=> b!5079010 (= e!3168411 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079011 () Bool)

(assert (=> b!5079011 (= e!3168411 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (t!371381 (list!19021 ys!41))) true) (content!10426 (t!371381 (t!371381 (list!19021 ys!41))))))))

(assert (= (and d!1641421 c!872304) b!5079010))

(assert (= (and d!1641421 (not c!872304)) b!5079011))

(declare-fun m!6130326 () Bool)

(assert (=> b!5079011 m!6130326))

(declare-fun m!6130328 () Bool)

(assert (=> b!5079011 m!6130328))

(assert (=> b!5078431 d!1641421))

(declare-fun d!1641423 () Bool)

(assert (=> d!1641423 (= (height!2157 (ite c!872092 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (ite ((_ is Empty!15580) (ite c!872092 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) 0 (ite ((_ is Leaf!25875) (ite c!872092 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) 1 (cheight!15791 (ite c!872092 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(assert (=> bm!353839 d!1641423))

(declare-fun d!1641425 () Bool)

(assert (=> d!1641425 (= (inv!77644 (xs!18946 (left!42840 (right!43170 ys!41)))) (<= (size!39108 (innerList!15668 (xs!18946 (left!42840 (right!43170 ys!41))))) 2147483647))))

(declare-fun bs!1190562 () Bool)

(assert (= bs!1190562 d!1641425))

(declare-fun m!6130330 () Bool)

(assert (=> bs!1190562 m!6130330))

(assert (=> b!5078630 d!1641425))

(declare-fun d!1641427 () Bool)

(assert (=> d!1641427 (= (height!2157 (left!42840 (left!42840 (left!42840 ys!41)))) (ite ((_ is Empty!15580) (left!42840 (left!42840 (left!42840 ys!41)))) 0 (ite ((_ is Leaf!25875) (left!42840 (left!42840 (left!42840 ys!41)))) 1 (cheight!15791 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(assert (=> b!5078575 d!1641427))

(declare-fun d!1641429 () Bool)

(assert (=> d!1641429 (= (height!2157 (right!43170 (left!42840 (left!42840 ys!41)))) (ite ((_ is Empty!15580) (right!43170 (left!42840 (left!42840 ys!41)))) 0 (ite ((_ is Leaf!25875) (right!43170 (left!42840 (left!42840 ys!41)))) 1 (cheight!15791 (right!43170 (left!42840 (left!42840 ys!41)))))))))

(assert (=> b!5078575 d!1641429))

(declare-fun d!1641431 () Bool)

(declare-fun lt!2090628 () Bool)

(assert (=> d!1641431 (= lt!2090628 (isEmpty!31665 (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641431 (= lt!2090628 (= (size!39109 (right!43170 (left!42840 (left!42840 ys!41)))) 0))))

(assert (=> d!1641431 (= (isEmpty!31663 (right!43170 (left!42840 (left!42840 ys!41)))) lt!2090628)))

(declare-fun bs!1190563 () Bool)

(assert (= bs!1190563 d!1641431))

(assert (=> bs!1190563 m!6128670))

(assert (=> bs!1190563 m!6128670))

(declare-fun m!6130332 () Bool)

(assert (=> bs!1190563 m!6130332))

(assert (=> bs!1190563 m!6129842))

(assert (=> b!5078577 d!1641431))

(declare-fun d!1641433 () Bool)

(declare-fun lt!2090629 () Conc!15580)

(assert (=> d!1641433 (= (list!19021 lt!2090629) (++!12807 (list!19021 (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))) (list!19021 (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))))

(declare-fun e!3168412 () Conc!15580)

(assert (=> d!1641433 (= lt!2090629 e!3168412)))

(declare-fun c!872305 () Bool)

(assert (=> d!1641433 (= c!872305 (= (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) Empty!15580))))

(assert (=> d!1641433 (= (<>!400 (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) lt!2090629)))

(declare-fun b!5079014 () Bool)

(declare-fun e!3168413 () Conc!15580)

(assert (=> b!5079014 (= e!3168413 (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))

(declare-fun b!5079015 () Bool)

(assert (=> b!5079015 (= e!3168413 (Node!15580 (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))) (+ (size!39109 (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))) (size!39109 (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))) (+ (max!0 (height!2157 (ite c!872089 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!872092 (ite c!872087 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872090 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!872091 lt!2090516 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))) (height!2157 (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))) 1)))))

(declare-fun b!5079012 () Bool)

(assert (=> b!5079012 (= e!3168412 (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun b!5079013 () Bool)

(assert (=> b!5079013 (= e!3168412 e!3168413)))

(declare-fun c!872306 () Bool)

(assert (=> b!5079013 (= c!872306 (= (ite c!872089 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872092 (ite c!872087 call!353841 (ite c!872090 lt!2090517 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872091 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))) Empty!15580))))

(assert (= (and d!1641433 c!872305) b!5079012))

(assert (= (and d!1641433 (not c!872305)) b!5079013))

(assert (= (and b!5079013 c!872306) b!5079014))

(assert (= (and b!5079013 (not c!872306)) b!5079015))

(declare-fun m!6130334 () Bool)

(assert (=> d!1641433 m!6130334))

(declare-fun m!6130336 () Bool)

(assert (=> d!1641433 m!6130336))

(declare-fun m!6130338 () Bool)

(assert (=> d!1641433 m!6130338))

(assert (=> d!1641433 m!6130336))

(assert (=> d!1641433 m!6130338))

(declare-fun m!6130340 () Bool)

(assert (=> d!1641433 m!6130340))

(declare-fun m!6130342 () Bool)

(assert (=> b!5079015 m!6130342))

(declare-fun m!6130344 () Bool)

(assert (=> b!5079015 m!6130344))

(declare-fun m!6130346 () Bool)

(assert (=> b!5079015 m!6130346))

(declare-fun m!6130348 () Bool)

(assert (=> b!5079015 m!6130348))

(assert (=> b!5079015 m!6130346))

(assert (=> b!5079015 m!6130344))

(declare-fun m!6130350 () Bool)

(assert (=> b!5079015 m!6130350))

(assert (=> bm!353840 d!1641433))

(assert (=> b!5078442 d!1641233))

(assert (=> b!5078442 d!1640991))

(declare-fun d!1641435 () Bool)

(declare-fun lt!2090630 () Int)

(assert (=> d!1641435 (>= lt!2090630 0)))

(declare-fun e!3168414 () Int)

(assert (=> d!1641435 (= lt!2090630 e!3168414)))

(declare-fun c!872307 () Bool)

(assert (=> d!1641435 (= c!872307 ((_ is Nil!58450) (list!19021 lt!2090455)))))

(assert (=> d!1641435 (= (size!39108 (list!19021 lt!2090455)) lt!2090630)))

(declare-fun b!5079016 () Bool)

(assert (=> b!5079016 (= e!3168414 0)))

(declare-fun b!5079017 () Bool)

(assert (=> b!5079017 (= e!3168414 (+ 1 (size!39108 (t!371381 (list!19021 lt!2090455)))))))

(assert (= (and d!1641435 c!872307) b!5079016))

(assert (= (and d!1641435 (not c!872307)) b!5079017))

(declare-fun m!6130352 () Bool)

(assert (=> b!5079017 m!6130352))

(assert (=> d!1641081 d!1641435))

(assert (=> d!1641081 d!1640811))

(declare-fun b!5079018 () Bool)

(declare-fun e!3168415 () Bool)

(declare-fun call!353921 () List!58574)

(declare-fun call!353919 () List!58574)

(assert (=> b!5079018 (= e!3168415 (= call!353921 call!353919))))

(declare-fun b!5079019 () Bool)

(assert (=> b!5079019 (= e!3168415 (= call!353921 call!353919))))

(declare-fun lt!2090631 () Bool)

(assert (=> b!5079019 (= lt!2090631 (appendAssoc!310 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun bm!353913 () Bool)

(declare-fun call!353920 () List!58574)

(assert (=> bm!353913 (= call!353920 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun bm!353914 () Bool)

(declare-fun call!353918 () List!58574)

(assert (=> bm!353914 (= call!353921 (++!12807 call!353918 (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun bm!353915 () Bool)

(assert (=> bm!353915 (= call!353918 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun d!1641437 () Bool)

(assert (=> d!1641437 e!3168415))

(declare-fun c!872308 () Bool)

(assert (=> d!1641437 (= c!872308 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1641437 (= (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))) true)))

(declare-fun bm!353916 () Bool)

(assert (=> bm!353916 (= call!353919 (++!12807 (list!19021 xs!286) call!353920))))

(assert (= (and d!1641437 c!872308) b!5079018))

(assert (= (and d!1641437 (not c!872308)) b!5079019))

(assert (= (or b!5079018 b!5079019) bm!353915))

(assert (= (or b!5079018 b!5079019) bm!353913))

(assert (= (or b!5079018 b!5079019) bm!353916))

(assert (= (or b!5079018 b!5079019) bm!353914))

(assert (=> bm!353916 m!6128088))

(declare-fun m!6130354 () Bool)

(assert (=> bm!353916 m!6130354))

(assert (=> bm!353914 m!6128676))

(declare-fun m!6130356 () Bool)

(assert (=> bm!353914 m!6130356))

(assert (=> bm!353913 m!6128674))

(assert (=> bm!353913 m!6128676))

(declare-fun m!6130358 () Bool)

(assert (=> bm!353913 m!6130358))

(assert (=> b!5079019 m!6128674))

(assert (=> b!5079019 m!6128676))

(declare-fun m!6130360 () Bool)

(assert (=> b!5079019 m!6130360))

(assert (=> bm!353915 m!6128088))

(assert (=> bm!353915 m!6128674))

(assert (=> bm!353915 m!6128682))

(assert (=> b!5078173 d!1641437))

(assert (=> b!5078173 d!1640727))

(assert (=> b!5078173 d!1641187))

(assert (=> b!5078173 d!1641193))

(declare-fun d!1641439 () Bool)

(declare-fun lt!2090632 () Int)

(assert (=> d!1641439 (= lt!2090632 (size!39108 (list!19021 (left!42840 (right!43170 ys!41)))))))

(assert (=> d!1641439 (= lt!2090632 (ite ((_ is Empty!15580) (left!42840 (right!43170 ys!41))) 0 (ite ((_ is Leaf!25875) (left!42840 (right!43170 ys!41))) (csize!31391 (left!42840 (right!43170 ys!41))) (csize!31390 (left!42840 (right!43170 ys!41))))))))

(assert (=> d!1641439 (= (size!39109 (left!42840 (right!43170 ys!41))) lt!2090632)))

(declare-fun bs!1190564 () Bool)

(assert (= bs!1190564 d!1641439))

(assert (=> bs!1190564 m!6128530))

(assert (=> bs!1190564 m!6128530))

(assert (=> bs!1190564 m!6129964))

(assert (=> d!1640975 d!1641439))

(declare-fun d!1641441 () Bool)

(declare-fun lt!2090633 () Int)

(assert (=> d!1641441 (= lt!2090633 (size!39108 (list!19021 (right!43170 (right!43170 ys!41)))))))

(assert (=> d!1641441 (= lt!2090633 (ite ((_ is Empty!15580) (right!43170 (right!43170 ys!41))) 0 (ite ((_ is Leaf!25875) (right!43170 (right!43170 ys!41))) (csize!31391 (right!43170 (right!43170 ys!41))) (csize!31390 (right!43170 (right!43170 ys!41))))))))

(assert (=> d!1641441 (= (size!39109 (right!43170 (right!43170 ys!41))) lt!2090633)))

(declare-fun bs!1190565 () Bool)

(assert (= bs!1190565 d!1641441))

(assert (=> bs!1190565 m!6128532))

(assert (=> bs!1190565 m!6128532))

(assert (=> bs!1190565 m!6129966))

(assert (=> d!1640975 d!1641441))

(declare-fun b!5079020 () Bool)

(declare-fun e!3168416 () Bool)

(declare-fun call!353925 () List!58574)

(declare-fun call!353923 () List!58574)

(assert (=> b!5079020 (= e!3168416 (= call!353925 call!353923))))

(declare-fun b!5079021 () Bool)

(assert (=> b!5079021 (= e!3168416 (= call!353925 call!353923))))

(declare-fun lt!2090634 () Bool)

(assert (=> b!5079021 (= lt!2090634 (appendAssoc!310 (t!371381 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))))) (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353917 () Bool)

(declare-fun call!353924 () List!58574)

(assert (=> bm!353917 (= call!353924 (++!12807 (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353918 () Bool)

(declare-fun call!353922 () List!58574)

(assert (=> bm!353918 (= call!353925 (++!12807 call!353922 (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353919 () Bool)

(assert (=> bm!353919 (= call!353922 (++!12807 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun d!1641443 () Bool)

(assert (=> d!1641443 e!3168416))

(declare-fun c!872309 () Bool)

(assert (=> d!1641443 (= c!872309 ((_ is Nil!58450) (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))))))))

(assert (=> d!1641443 (= (appendAssoc!310 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))) true)))

(declare-fun bm!353920 () Bool)

(assert (=> bm!353920 (= call!353923 (++!12807 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) call!353924))))

(assert (= (and d!1641443 c!872309) b!5079020))

(assert (= (and d!1641443 (not c!872309)) b!5079021))

(assert (= (or b!5079020 b!5079021) bm!353919))

(assert (= (or b!5079020 b!5079021) bm!353917))

(assert (= (or b!5079020 b!5079021) bm!353920))

(assert (= (or b!5079020 b!5079021) bm!353918))

(declare-fun m!6130362 () Bool)

(assert (=> bm!353920 m!6130362))

(assert (=> bm!353918 m!6128342))

(declare-fun m!6130364 () Bool)

(assert (=> bm!353918 m!6130364))

(assert (=> bm!353917 m!6128436))

(assert (=> bm!353917 m!6128342))

(assert (=> bm!353917 m!6129394))

(assert (=> b!5079021 m!6128436))

(assert (=> b!5079021 m!6128342))

(declare-fun m!6130366 () Bool)

(assert (=> b!5079021 m!6130366))

(assert (=> bm!353919 m!6128436))

(declare-fun m!6130368 () Bool)

(assert (=> bm!353919 m!6130368))

(assert (=> b!5078561 d!1641443))

(declare-fun d!1641445 () Bool)

(declare-fun c!872310 () Bool)

(assert (=> d!1641445 (= c!872310 ((_ is Nil!58450) lt!2090494))))

(declare-fun e!3168417 () (InoxSet T!105230))

(assert (=> d!1641445 (= (content!10426 lt!2090494) e!3168417)))

(declare-fun b!5079022 () Bool)

(assert (=> b!5079022 (= e!3168417 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079023 () Bool)

(assert (=> b!5079023 (= e!3168417 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090494) true) (content!10426 (t!371381 lt!2090494))))))

(assert (= (and d!1641445 c!872310) b!5079022))

(assert (= (and d!1641445 (not c!872310)) b!5079023))

(declare-fun m!6130370 () Bool)

(assert (=> b!5079023 m!6130370))

(declare-fun m!6130372 () Bool)

(assert (=> b!5079023 m!6130372))

(assert (=> d!1640761 d!1641445))

(declare-fun d!1641447 () Bool)

(declare-fun c!872311 () Bool)

(assert (=> d!1641447 (= c!872311 ((_ is Nil!58450) (list!19021 (left!42840 ys!41))))))

(declare-fun e!3168418 () (InoxSet T!105230))

(assert (=> d!1641447 (= (content!10426 (list!19021 (left!42840 ys!41))) e!3168418)))

(declare-fun b!5079024 () Bool)

(assert (=> b!5079024 (= e!3168418 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079025 () Bool)

(assert (=> b!5079025 (= e!3168418 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (left!42840 ys!41))) true) (content!10426 (t!371381 (list!19021 (left!42840 ys!41))))))))

(assert (= (and d!1641447 c!872311) b!5079024))

(assert (= (and d!1641447 (not c!872311)) b!5079025))

(declare-fun m!6130374 () Bool)

(assert (=> b!5079025 m!6130374))

(declare-fun m!6130376 () Bool)

(assert (=> b!5079025 m!6130376))

(assert (=> d!1640761 d!1641447))

(declare-fun d!1641449 () Bool)

(declare-fun c!872312 () Bool)

(assert (=> d!1641449 (= c!872312 ((_ is Nil!58450) (list!19021 (right!43170 ys!41))))))

(declare-fun e!3168419 () (InoxSet T!105230))

(assert (=> d!1641449 (= (content!10426 (list!19021 (right!43170 ys!41))) e!3168419)))

(declare-fun b!5079026 () Bool)

(assert (=> b!5079026 (= e!3168419 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079027 () Bool)

(assert (=> b!5079027 (= e!3168419 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (right!43170 ys!41))) true) (content!10426 (t!371381 (list!19021 (right!43170 ys!41))))))))

(assert (= (and d!1641449 c!872312) b!5079026))

(assert (= (and d!1641449 (not c!872312)) b!5079027))

(declare-fun m!6130378 () Bool)

(assert (=> b!5079027 m!6130378))

(declare-fun m!6130380 () Bool)

(assert (=> b!5079027 m!6130380))

(assert (=> d!1640761 d!1641449))

(declare-fun d!1641451 () Bool)

(declare-fun lt!2090635 () Int)

(assert (=> d!1641451 (= lt!2090635 (size!39108 (list!19021 (left!42840 ys!41))))))

(assert (=> d!1641451 (= lt!2090635 (ite ((_ is Empty!15580) (left!42840 ys!41)) 0 (ite ((_ is Leaf!25875) (left!42840 ys!41)) (csize!31391 (left!42840 ys!41)) (csize!31390 (left!42840 ys!41)))))))

(assert (=> d!1641451 (= (size!39109 (left!42840 ys!41)) lt!2090635)))

(declare-fun bs!1190566 () Bool)

(assert (= bs!1190566 d!1641451))

(assert (=> bs!1190566 m!6128340))

(assert (=> bs!1190566 m!6128340))

(assert (=> bs!1190566 m!6128518))

(assert (=> d!1640955 d!1641451))

(assert (=> d!1640955 d!1641031))

(declare-fun d!1641453 () Bool)

(declare-fun lt!2090636 () Int)

(assert (=> d!1641453 (>= lt!2090636 0)))

(declare-fun e!3168420 () Int)

(assert (=> d!1641453 (= lt!2090636 e!3168420)))

(declare-fun c!872313 () Bool)

(assert (=> d!1641453 (= c!872313 ((_ is Nil!58450) lt!2090572))))

(assert (=> d!1641453 (= (size!39108 lt!2090572) lt!2090636)))

(declare-fun b!5079028 () Bool)

(assert (=> b!5079028 (= e!3168420 0)))

(declare-fun b!5079029 () Bool)

(assert (=> b!5079029 (= e!3168420 (+ 1 (size!39108 (t!371381 lt!2090572))))))

(assert (= (and d!1641453 c!872313) b!5079028))

(assert (= (and d!1641453 (not c!872313)) b!5079029))

(declare-fun m!6130382 () Bool)

(assert (=> b!5079029 m!6130382))

(assert (=> b!5078598 d!1641453))

(declare-fun d!1641455 () Bool)

(declare-fun lt!2090637 () Int)

(assert (=> d!1641455 (>= lt!2090637 0)))

(declare-fun e!3168421 () Int)

(assert (=> d!1641455 (= lt!2090637 e!3168421)))

(declare-fun c!872314 () Bool)

(assert (=> d!1641455 (= c!872314 ((_ is Nil!58450) (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1641455 (= (size!39108 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) lt!2090637)))

(declare-fun b!5079030 () Bool)

(assert (=> b!5079030 (= e!3168421 0)))

(declare-fun b!5079031 () Bool)

(assert (=> b!5079031 (= e!3168421 (+ 1 (size!39108 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))))

(assert (= (and d!1641455 c!872314) b!5079030))

(assert (= (and d!1641455 (not c!872314)) b!5079031))

(assert (=> b!5079031 m!6130222))

(assert (=> b!5078598 d!1641455))

(assert (=> b!5078598 d!1641343))

(declare-fun lt!2090638 () List!58574)

(declare-fun b!5079035 () Bool)

(declare-fun e!3168423 () Bool)

(assert (=> b!5079035 (= e!3168423 (or (not (= (list!19021 (right!43170 (left!42840 ys!41))) Nil!58450)) (= lt!2090638 (t!371381 (list!19021 lt!2090455)))))))

(declare-fun d!1641457 () Bool)

(assert (=> d!1641457 e!3168423))

(declare-fun res!2162396 () Bool)

(assert (=> d!1641457 (=> (not res!2162396) (not e!3168423))))

(assert (=> d!1641457 (= res!2162396 (= (content!10426 lt!2090638) ((_ map or) (content!10426 (t!371381 (list!19021 lt!2090455))) (content!10426 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun e!3168422 () List!58574)

(assert (=> d!1641457 (= lt!2090638 e!3168422)))

(declare-fun c!872315 () Bool)

(assert (=> d!1641457 (= c!872315 ((_ is Nil!58450) (t!371381 (list!19021 lt!2090455))))))

(assert (=> d!1641457 (= (++!12807 (t!371381 (list!19021 lt!2090455)) (list!19021 (right!43170 (left!42840 ys!41)))) lt!2090638)))

(declare-fun b!5079032 () Bool)

(assert (=> b!5079032 (= e!3168422 (list!19021 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5079034 () Bool)

(declare-fun res!2162397 () Bool)

(assert (=> b!5079034 (=> (not res!2162397) (not e!3168423))))

(assert (=> b!5079034 (= res!2162397 (= (size!39108 lt!2090638) (+ (size!39108 (t!371381 (list!19021 lt!2090455))) (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5079033 () Bool)

(assert (=> b!5079033 (= e!3168422 (Cons!58450 (h!64898 (t!371381 (list!19021 lt!2090455))) (++!12807 (t!371381 (t!371381 (list!19021 lt!2090455))) (list!19021 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1641457 c!872315) b!5079032))

(assert (= (and d!1641457 (not c!872315)) b!5079033))

(assert (= (and d!1641457 res!2162396) b!5079034))

(assert (= (and b!5079034 res!2162397) b!5079035))

(declare-fun m!6130384 () Bool)

(assert (=> d!1641457 m!6130384))

(declare-fun m!6130386 () Bool)

(assert (=> d!1641457 m!6130386))

(assert (=> d!1641457 m!6128436))

(assert (=> d!1641457 m!6128622))

(declare-fun m!6130388 () Bool)

(assert (=> b!5079034 m!6130388))

(assert (=> b!5079034 m!6130352))

(assert (=> b!5079034 m!6128436))

(assert (=> b!5079034 m!6128628))

(assert (=> b!5079033 m!6128436))

(declare-fun m!6130390 () Bool)

(assert (=> b!5079033 m!6130390))

(assert (=> b!5078156 d!1641457))

(declare-fun d!1641459 () Bool)

(declare-fun c!872316 () Bool)

(assert (=> d!1641459 (= c!872316 ((_ is Nil!58450) (t!371381 lt!2090486)))))

(declare-fun e!3168424 () (InoxSet T!105230))

(assert (=> d!1641459 (= (content!10426 (t!371381 lt!2090486)) e!3168424)))

(declare-fun b!5079036 () Bool)

(assert (=> b!5079036 (= e!3168424 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079037 () Bool)

(assert (=> b!5079037 (= e!3168424 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (t!371381 lt!2090486)) true) (content!10426 (t!371381 (t!371381 lt!2090486)))))))

(assert (= (and d!1641459 c!872316) b!5079036))

(assert (= (and d!1641459 (not c!872316)) b!5079037))

(declare-fun m!6130392 () Bool)

(assert (=> b!5079037 m!6130392))

(declare-fun m!6130394 () Bool)

(assert (=> b!5079037 m!6130394))

(assert (=> b!5078423 d!1641459))

(declare-fun b!5079038 () Bool)

(declare-fun res!2162403 () Bool)

(declare-fun e!3168426 () Bool)

(assert (=> b!5079038 (=> (not res!2162403) (not e!3168426))))

(assert (=> b!5079038 (= res!2162403 (isBalanced!4442 (left!42840 (left!42840 (right!43170 ys!41)))))))

(declare-fun b!5079039 () Bool)

(declare-fun res!2162399 () Bool)

(assert (=> b!5079039 (=> (not res!2162399) (not e!3168426))))

(assert (=> b!5079039 (= res!2162399 (<= (- (height!2157 (left!42840 (left!42840 (right!43170 ys!41)))) (height!2157 (right!43170 (left!42840 (right!43170 ys!41))))) 1))))

(declare-fun d!1641461 () Bool)

(declare-fun res!2162402 () Bool)

(declare-fun e!3168425 () Bool)

(assert (=> d!1641461 (=> res!2162402 e!3168425)))

(assert (=> d!1641461 (= res!2162402 (not ((_ is Node!15580) (left!42840 (right!43170 ys!41)))))))

(assert (=> d!1641461 (= (isBalanced!4442 (left!42840 (right!43170 ys!41))) e!3168425)))

(declare-fun b!5079040 () Bool)

(declare-fun res!2162400 () Bool)

(assert (=> b!5079040 (=> (not res!2162400) (not e!3168426))))

(assert (=> b!5079040 (= res!2162400 (isBalanced!4442 (right!43170 (left!42840 (right!43170 ys!41)))))))

(declare-fun b!5079041 () Bool)

(assert (=> b!5079041 (= e!3168426 (not (isEmpty!31663 (right!43170 (left!42840 (right!43170 ys!41))))))))

(declare-fun b!5079042 () Bool)

(declare-fun res!2162398 () Bool)

(assert (=> b!5079042 (=> (not res!2162398) (not e!3168426))))

(assert (=> b!5079042 (= res!2162398 (not (isEmpty!31663 (left!42840 (left!42840 (right!43170 ys!41))))))))

(declare-fun b!5079043 () Bool)

(assert (=> b!5079043 (= e!3168425 e!3168426)))

(declare-fun res!2162401 () Bool)

(assert (=> b!5079043 (=> (not res!2162401) (not e!3168426))))

(assert (=> b!5079043 (= res!2162401 (<= (- 1) (- (height!2157 (left!42840 (left!42840 (right!43170 ys!41)))) (height!2157 (right!43170 (left!42840 (right!43170 ys!41)))))))))

(assert (= (and d!1641461 (not res!2162402)) b!5079043))

(assert (= (and b!5079043 res!2162401) b!5079039))

(assert (= (and b!5079039 res!2162399) b!5079038))

(assert (= (and b!5079038 res!2162403) b!5079040))

(assert (= (and b!5079040 res!2162400) b!5079042))

(assert (= (and b!5079042 res!2162398) b!5079041))

(declare-fun m!6130396 () Bool)

(assert (=> b!5079040 m!6130396))

(declare-fun m!6130398 () Bool)

(assert (=> b!5079042 m!6130398))

(declare-fun m!6130400 () Bool)

(assert (=> b!5079041 m!6130400))

(declare-fun m!6130402 () Bool)

(assert (=> b!5079043 m!6130402))

(declare-fun m!6130404 () Bool)

(assert (=> b!5079043 m!6130404))

(declare-fun m!6130406 () Bool)

(assert (=> b!5079038 m!6130406))

(assert (=> b!5079039 m!6130402))

(assert (=> b!5079039 m!6130404))

(assert (=> b!5078562 d!1641461))

(declare-fun d!1641463 () Bool)

(assert (=> d!1641463 (= (list!19023 (xs!18946 lt!2090455)) (innerList!15668 (xs!18946 lt!2090455)))))

(assert (=> b!5078161 d!1641463))

(declare-fun d!1641465 () Bool)

(declare-fun lt!2090639 () Int)

(assert (=> d!1641465 (>= lt!2090639 0)))

(declare-fun e!3168427 () Int)

(assert (=> d!1641465 (= lt!2090639 e!3168427)))

(declare-fun c!872317 () Bool)

(assert (=> d!1641465 (= c!872317 ((_ is Nil!58450) (innerList!15668 (xs!18946 (left!42840 xs!286)))))))

(assert (=> d!1641465 (= (size!39108 (innerList!15668 (xs!18946 (left!42840 xs!286)))) lt!2090639)))

(declare-fun b!5079044 () Bool)

(assert (=> b!5079044 (= e!3168427 0)))

(declare-fun b!5079045 () Bool)

(assert (=> b!5079045 (= e!3168427 (+ 1 (size!39108 (t!371381 (innerList!15668 (xs!18946 (left!42840 xs!286)))))))))

(assert (= (and d!1641465 c!872317) b!5079044))

(assert (= (and d!1641465 (not c!872317)) b!5079045))

(declare-fun m!6130408 () Bool)

(assert (=> b!5079045 m!6130408))

(assert (=> d!1640865 d!1641465))

(declare-fun b!5079046 () Bool)

(declare-fun res!2162409 () Bool)

(declare-fun e!3168429 () Bool)

(assert (=> b!5079046 (=> (not res!2162409) (not e!3168429))))

(assert (=> b!5079046 (= res!2162409 (isBalanced!4442 (left!42840 (right!43170 lt!2090471))))))

(declare-fun b!5079047 () Bool)

(declare-fun res!2162405 () Bool)

(assert (=> b!5079047 (=> (not res!2162405) (not e!3168429))))

(assert (=> b!5079047 (= res!2162405 (<= (- (height!2157 (left!42840 (right!43170 lt!2090471))) (height!2157 (right!43170 (right!43170 lt!2090471)))) 1))))

(declare-fun d!1641467 () Bool)

(declare-fun res!2162408 () Bool)

(declare-fun e!3168428 () Bool)

(assert (=> d!1641467 (=> res!2162408 e!3168428)))

(assert (=> d!1641467 (= res!2162408 (not ((_ is Node!15580) (right!43170 lt!2090471))))))

(assert (=> d!1641467 (= (isBalanced!4442 (right!43170 lt!2090471)) e!3168428)))

(declare-fun b!5079048 () Bool)

(declare-fun res!2162406 () Bool)

(assert (=> b!5079048 (=> (not res!2162406) (not e!3168429))))

(assert (=> b!5079048 (= res!2162406 (isBalanced!4442 (right!43170 (right!43170 lt!2090471))))))

(declare-fun b!5079049 () Bool)

(assert (=> b!5079049 (= e!3168429 (not (isEmpty!31663 (right!43170 (right!43170 lt!2090471)))))))

(declare-fun b!5079050 () Bool)

(declare-fun res!2162404 () Bool)

(assert (=> b!5079050 (=> (not res!2162404) (not e!3168429))))

(assert (=> b!5079050 (= res!2162404 (not (isEmpty!31663 (left!42840 (right!43170 lt!2090471)))))))

(declare-fun b!5079051 () Bool)

(assert (=> b!5079051 (= e!3168428 e!3168429)))

(declare-fun res!2162407 () Bool)

(assert (=> b!5079051 (=> (not res!2162407) (not e!3168429))))

(assert (=> b!5079051 (= res!2162407 (<= (- 1) (- (height!2157 (left!42840 (right!43170 lt!2090471))) (height!2157 (right!43170 (right!43170 lt!2090471))))))))

(assert (= (and d!1641467 (not res!2162408)) b!5079051))

(assert (= (and b!5079051 res!2162407) b!5079047))

(assert (= (and b!5079047 res!2162405) b!5079046))

(assert (= (and b!5079046 res!2162409) b!5079048))

(assert (= (and b!5079048 res!2162406) b!5079050))

(assert (= (and b!5079050 res!2162404) b!5079049))

(declare-fun m!6130410 () Bool)

(assert (=> b!5079048 m!6130410))

(declare-fun m!6130412 () Bool)

(assert (=> b!5079050 m!6130412))

(declare-fun m!6130414 () Bool)

(assert (=> b!5079049 m!6130414))

(declare-fun m!6130416 () Bool)

(assert (=> b!5079051 m!6130416))

(declare-fun m!6130418 () Bool)

(assert (=> b!5079051 m!6130418))

(declare-fun m!6130420 () Bool)

(assert (=> b!5079046 m!6130420))

(assert (=> b!5079047 m!6130416))

(assert (=> b!5079047 m!6130418))

(assert (=> b!5078092 d!1641467))

(declare-fun d!1641469 () Bool)

(declare-fun lt!2090640 () Int)

(assert (=> d!1641469 (= lt!2090640 (size!39108 (list!19021 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))))))

(assert (=> d!1641469 (= lt!2090640 (ite ((_ is Empty!15580) (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) 0 (ite ((_ is Leaf!25875) (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (csize!31391 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (csize!31390 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))))))))

(assert (=> d!1641469 (= (size!39109 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) lt!2090640)))

(declare-fun bs!1190567 () Bool)

(assert (= bs!1190567 d!1641469))

(assert (=> bs!1190567 m!6129118))

(assert (=> bs!1190567 m!6129118))

(assert (=> bs!1190567 m!6129736))

(assert (=> b!5078409 d!1641469))

(declare-fun d!1641471 () Bool)

(assert (=> d!1641471 (= (height!2157 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) (ite ((_ is Empty!15580) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) 0 (ite ((_ is Leaf!25875) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) 1 (cheight!15791 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))))

(assert (=> b!5078409 d!1641471))

(declare-fun d!1641473 () Bool)

(declare-fun lt!2090641 () Int)

(assert (=> d!1641473 (= lt!2090641 (size!39108 (list!19021 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))))))

(assert (=> d!1641473 (= lt!2090641 (ite ((_ is Empty!15580) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) 0 (ite ((_ is Leaf!25875) (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) (csize!31391 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) (csize!31390 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))))))))

(assert (=> d!1641473 (= (size!39109 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) lt!2090641)))

(declare-fun bs!1190568 () Bool)

(assert (= bs!1190568 d!1641473))

(assert (=> bs!1190568 m!6129120))

(assert (=> bs!1190568 m!6129120))

(assert (=> bs!1190568 m!6129738))

(assert (=> b!5078409 d!1641473))

(declare-fun d!1641475 () Bool)

(assert (=> d!1641475 (= (max!0 (height!2157 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (height!2157 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))) (ite (< (height!2157 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (height!2157 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760)))) (height!2157 (ite c!871981 (ite c!871979 call!353762 lt!2090469) (ite (or c!871977 c!871980) (right!43170 (left!42840 (left!42840 ys!41))) call!353760))) (height!2157 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468))))))))

(assert (=> b!5078409 d!1641475))

(declare-fun d!1641477 () Bool)

(assert (=> d!1641477 (= (height!2157 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) (ite ((_ is Empty!15580) (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) 0 (ite ((_ is Leaf!25875) (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))) 1 (cheight!15791 (ite c!871981 (ite c!871979 (left!42840 xs!286) call!353762) (ite c!871977 call!353763 (ite c!871980 call!353760 lt!2090468)))))))))

(assert (=> b!5078409 d!1641477))

(declare-fun b!5079055 () Bool)

(declare-fun e!3168431 () Bool)

(declare-fun lt!2090642 () List!58574)

(assert (=> b!5079055 (= e!3168431 (or (not (= (list!19021 (right!43170 ys!41)) Nil!58450)) (= lt!2090642 (t!371381 (list!19021 (left!42840 ys!41))))))))

(declare-fun d!1641479 () Bool)

(assert (=> d!1641479 e!3168431))

(declare-fun res!2162410 () Bool)

(assert (=> d!1641479 (=> (not res!2162410) (not e!3168431))))

(assert (=> d!1641479 (= res!2162410 (= (content!10426 lt!2090642) ((_ map or) (content!10426 (t!371381 (list!19021 (left!42840 ys!41)))) (content!10426 (list!19021 (right!43170 ys!41))))))))

(declare-fun e!3168430 () List!58574)

(assert (=> d!1641479 (= lt!2090642 e!3168430)))

(declare-fun c!872318 () Bool)

(assert (=> d!1641479 (= c!872318 ((_ is Nil!58450) (t!371381 (list!19021 (left!42840 ys!41)))))))

(assert (=> d!1641479 (= (++!12807 (t!371381 (list!19021 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))) lt!2090642)))

(declare-fun b!5079052 () Bool)

(assert (=> b!5079052 (= e!3168430 (list!19021 (right!43170 ys!41)))))

(declare-fun b!5079054 () Bool)

(declare-fun res!2162411 () Bool)

(assert (=> b!5079054 (=> (not res!2162411) (not e!3168431))))

(assert (=> b!5079054 (= res!2162411 (= (size!39108 lt!2090642) (+ (size!39108 (t!371381 (list!19021 (left!42840 ys!41)))) (size!39108 (list!19021 (right!43170 ys!41))))))))

(declare-fun b!5079053 () Bool)

(assert (=> b!5079053 (= e!3168430 (Cons!58450 (h!64898 (t!371381 (list!19021 (left!42840 ys!41)))) (++!12807 (t!371381 (t!371381 (list!19021 (left!42840 ys!41)))) (list!19021 (right!43170 ys!41)))))))

(assert (= (and d!1641479 c!872318) b!5079052))

(assert (= (and d!1641479 (not c!872318)) b!5079053))

(assert (= (and d!1641479 res!2162410) b!5079054))

(assert (= (and b!5079054 res!2162411) b!5079055))

(declare-fun m!6130422 () Bool)

(assert (=> d!1641479 m!6130422))

(assert (=> d!1641479 m!6130376))

(assert (=> d!1641479 m!6128342))

(assert (=> d!1641479 m!6128514))

(declare-fun m!6130424 () Bool)

(assert (=> b!5079054 m!6130424))

(declare-fun m!6130426 () Bool)

(assert (=> b!5079054 m!6130426))

(assert (=> b!5079054 m!6128342))

(assert (=> b!5079054 m!6128522))

(assert (=> b!5079053 m!6128342))

(declare-fun m!6130428 () Bool)

(assert (=> b!5079053 m!6130428))

(assert (=> b!5078097 d!1641479))

(declare-fun b!5079056 () Bool)

(declare-fun res!2162417 () Bool)

(declare-fun e!3168433 () Bool)

(assert (=> b!5079056 (=> (not res!2162417) (not e!3168433))))

(assert (=> b!5079056 (= res!2162417 (isBalanced!4442 (left!42840 (right!43170 (left!42840 lt!2090452)))))))

(declare-fun b!5079057 () Bool)

(declare-fun res!2162413 () Bool)

(assert (=> b!5079057 (=> (not res!2162413) (not e!3168433))))

(assert (=> b!5079057 (= res!2162413 (<= (- (height!2157 (left!42840 (right!43170 (left!42840 lt!2090452)))) (height!2157 (right!43170 (right!43170 (left!42840 lt!2090452))))) 1))))

(declare-fun d!1641481 () Bool)

(declare-fun res!2162416 () Bool)

(declare-fun e!3168432 () Bool)

(assert (=> d!1641481 (=> res!2162416 e!3168432)))

(assert (=> d!1641481 (= res!2162416 (not ((_ is Node!15580) (right!43170 (left!42840 lt!2090452)))))))

(assert (=> d!1641481 (= (isBalanced!4442 (right!43170 (left!42840 lt!2090452))) e!3168432)))

(declare-fun b!5079058 () Bool)

(declare-fun res!2162414 () Bool)

(assert (=> b!5079058 (=> (not res!2162414) (not e!3168433))))

(assert (=> b!5079058 (= res!2162414 (isBalanced!4442 (right!43170 (right!43170 (left!42840 lt!2090452)))))))

(declare-fun b!5079059 () Bool)

(assert (=> b!5079059 (= e!3168433 (not (isEmpty!31663 (right!43170 (right!43170 (left!42840 lt!2090452))))))))

(declare-fun b!5079060 () Bool)

(declare-fun res!2162412 () Bool)

(assert (=> b!5079060 (=> (not res!2162412) (not e!3168433))))

(assert (=> b!5079060 (= res!2162412 (not (isEmpty!31663 (left!42840 (right!43170 (left!42840 lt!2090452))))))))

(declare-fun b!5079061 () Bool)

(assert (=> b!5079061 (= e!3168432 e!3168433)))

(declare-fun res!2162415 () Bool)

(assert (=> b!5079061 (=> (not res!2162415) (not e!3168433))))

(assert (=> b!5079061 (= res!2162415 (<= (- 1) (- (height!2157 (left!42840 (right!43170 (left!42840 lt!2090452)))) (height!2157 (right!43170 (right!43170 (left!42840 lt!2090452)))))))))

(assert (= (and d!1641481 (not res!2162416)) b!5079061))

(assert (= (and b!5079061 res!2162415) b!5079057))

(assert (= (and b!5079057 res!2162413) b!5079056))

(assert (= (and b!5079056 res!2162417) b!5079058))

(assert (= (and b!5079058 res!2162414) b!5079060))

(assert (= (and b!5079060 res!2162412) b!5079059))

(declare-fun m!6130430 () Bool)

(assert (=> b!5079058 m!6130430))

(declare-fun m!6130432 () Bool)

(assert (=> b!5079060 m!6130432))

(declare-fun m!6130434 () Bool)

(assert (=> b!5079059 m!6130434))

(declare-fun m!6130436 () Bool)

(assert (=> b!5079061 m!6130436))

(declare-fun m!6130438 () Bool)

(assert (=> b!5079061 m!6130438))

(declare-fun m!6130440 () Bool)

(assert (=> b!5079056 m!6130440))

(assert (=> b!5079057 m!6130436))

(assert (=> b!5079057 m!6130438))

(assert (=> b!5078326 d!1641481))

(declare-fun b!5079062 () Bool)

(declare-fun e!3168435 () Conc!15580)

(declare-fun call!353928 () Conc!15580)

(assert (=> b!5079062 (= e!3168435 call!353928)))

(declare-fun bm!353921 () Bool)

(declare-fun call!353935 () Conc!15580)

(assert (=> bm!353921 (= call!353928 call!353935)))

(declare-fun c!872324 () Bool)

(declare-fun c!872319 () Bool)

(declare-fun c!872320 () Bool)

(declare-fun call!353934 () Conc!15580)

(declare-fun bm!353922 () Bool)

(assert (=> bm!353922 (= call!353934 (++!12806 (ite c!872324 (ite c!872319 (right!43170 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (right!43170 (right!43170 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (ite c!872324 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))) (ite c!872320 (left!42840 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) (left!42840 (left!42840 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))))))

(declare-fun bm!353923 () Bool)

(declare-fun call!353932 () Conc!15580)

(declare-fun call!353929 () Conc!15580)

(assert (=> bm!353923 (= call!353932 call!353929)))

(declare-fun b!5079063 () Bool)

(declare-fun call!353931 () Int)

(declare-fun call!353926 () Int)

(assert (=> b!5079063 (= c!872319 (>= call!353931 call!353926))))

(declare-fun e!3168443 () Conc!15580)

(declare-fun e!3168436 () Conc!15580)

(assert (=> b!5079063 (= e!3168443 e!3168436)))

(declare-fun d!1641483 () Bool)

(declare-fun e!3168439 () Bool)

(assert (=> d!1641483 e!3168439))

(declare-fun res!2162419 () Bool)

(assert (=> d!1641483 (=> (not res!2162419) (not e!3168439))))

(assert (=> d!1641483 (= res!2162419 (appendAssocInst!918 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))

(declare-fun lt!2090646 () Conc!15580)

(declare-fun e!3168437 () Conc!15580)

(assert (=> d!1641483 (= lt!2090646 e!3168437)))

(declare-fun c!872326 () Bool)

(assert (=> d!1641483 (= c!872326 (= (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) Empty!15580))))

(declare-fun e!3168441 () Bool)

(assert (=> d!1641483 e!3168441))

(declare-fun res!2162420 () Bool)

(assert (=> d!1641483 (=> (not res!2162420) (not e!3168441))))

(assert (=> d!1641483 (= res!2162420 (isBalanced!4442 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(assert (=> d!1641483 (= (++!12806 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) lt!2090646)))

(declare-fun bm!353924 () Bool)

(declare-fun call!353939 () Conc!15580)

(assert (=> bm!353924 (= call!353939 call!353934)))

(declare-fun b!5079064 () Bool)

(assert (=> b!5079064 (= e!3168439 (= (list!19021 lt!2090646) (++!12807 (list!19021 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (list!19021 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))))

(declare-fun bm!353925 () Bool)

(declare-fun lt!2090643 () Conc!15580)

(assert (=> bm!353925 (= call!353931 (height!2157 (ite c!872324 (left!42840 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) lt!2090643)))))

(declare-fun bm!353926 () Bool)

(declare-fun call!353937 () Conc!15580)

(declare-fun call!353940 () Conc!15580)

(assert (=> bm!353926 (= call!353937 call!353940)))

(declare-fun bm!353927 () Bool)

(assert (=> bm!353927 (= call!353926 (height!2157 (ite c!872324 (right!43170 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))))

(declare-fun b!5079065 () Bool)

(declare-fun e!3168434 () Conc!15580)

(assert (=> b!5079065 (= e!3168436 e!3168434)))

(declare-fun lt!2090644 () Conc!15580)

(declare-fun call!353933 () Conc!15580)

(assert (=> b!5079065 (= lt!2090644 call!353933)))

(declare-fun c!872322 () Bool)

(declare-fun call!353930 () Int)

(declare-fun call!353941 () Int)

(assert (=> b!5079065 (= c!872322 (= call!353930 (- call!353941 3)))))

(declare-fun call!353927 () Conc!15580)

(declare-fun c!872323 () Bool)

(declare-fun c!872321 () Bool)

(declare-fun bm!353928 () Bool)

(assert (=> bm!353928 (= call!353927 (<>!400 (ite c!872321 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite c!872324 (ite c!872319 (left!42840 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (ite c!872322 (left!42840 (right!43170 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (left!42840 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))) (ite c!872323 lt!2090643 (right!43170 (left!42840 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))) (ite c!872321 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))) (ite c!872324 (ite c!872319 call!353933 (ite c!872322 lt!2090644 (left!42840 (right!43170 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))) (ite c!872323 (right!43170 (left!42840 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))) (right!43170 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))))))

(declare-fun b!5079066 () Bool)

(declare-fun res!2162418 () Bool)

(assert (=> b!5079066 (=> (not res!2162418) (not e!3168439))))

(assert (=> b!5079066 (= res!2162418 (<= (height!2157 lt!2090646) (+ (max!0 (height!2157 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (height!2157 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))) 1)))))

(declare-fun b!5079067 () Bool)

(declare-fun res!2162421 () Bool)

(assert (=> b!5079067 (=> (not res!2162421) (not e!3168439))))

(assert (=> b!5079067 (= res!2162421 (isBalanced!4442 lt!2090646))))

(declare-fun bm!353929 () Bool)

(declare-fun call!353938 () Conc!15580)

(declare-fun call!353936 () Conc!15580)

(assert (=> bm!353929 (= call!353929 (<>!400 (ite c!872324 (ite c!872322 (left!42840 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) call!353938) (ite c!872320 call!353939 (ite c!872323 call!353936 lt!2090643))) (ite c!872324 (ite c!872322 call!353938 lt!2090644) (ite (or c!872320 c!872323) (right!43170 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) call!353936))))))

(declare-fun b!5079068 () Bool)

(declare-fun e!3168442 () Conc!15580)

(assert (=> b!5079068 (= e!3168442 e!3168435)))

(assert (=> b!5079068 (= lt!2090643 call!353939)))

(assert (=> b!5079068 (= c!872323 (= call!353931 (- call!353926 3)))))

(declare-fun bm!353930 () Bool)

(assert (=> bm!353930 (= call!353936 call!353940)))

(declare-fun b!5079069 () Bool)

(assert (=> b!5079069 (= e!3168435 call!353928)))

(declare-fun bm!353931 () Bool)

(assert (=> bm!353931 (= call!353935 call!353929)))

(declare-fun b!5079070 () Bool)

(assert (=> b!5079070 (= e!3168437 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun e!3168438 () Conc!15580)

(declare-fun b!5079071 () Bool)

(assert (=> b!5079071 (= e!3168438 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))

(declare-fun bm!353932 () Bool)

(assert (=> bm!353932 (= call!353933 call!353934)))

(declare-fun b!5079072 () Bool)

(declare-fun lt!2090645 () Int)

(assert (=> b!5079072 (= c!872321 (and (<= (- 1) lt!2090645) (<= lt!2090645 1)))))

(assert (=> b!5079072 (= lt!2090645 (- (height!2157 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))) (height!2157 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))))

(declare-fun e!3168440 () Conc!15580)

(assert (=> b!5079072 (= e!3168438 e!3168440)))

(declare-fun bm!353933 () Bool)

(assert (=> bm!353933 (= call!353930 (height!2157 (ite c!872324 lt!2090644 (right!43170 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))))

(declare-fun b!5079073 () Bool)

(assert (=> b!5079073 (= e!3168434 call!353932)))

(declare-fun b!5079074 () Bool)

(assert (=> b!5079074 (= e!3168437 e!3168438)))

(declare-fun c!872325 () Bool)

(assert (=> b!5079074 (= c!872325 (= (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))) Empty!15580))))

(declare-fun b!5079075 () Bool)

(assert (=> b!5079075 (= e!3168441 (isBalanced!4442 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))

(declare-fun bm!353934 () Bool)

(assert (=> bm!353934 (= call!353941 (height!2157 (ite c!872324 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (left!42840 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))))

(declare-fun b!5079076 () Bool)

(assert (=> b!5079076 (= c!872320 (>= call!353930 call!353941))))

(assert (=> b!5079076 (= e!3168443 e!3168442)))

(declare-fun b!5079077 () Bool)

(assert (=> b!5079077 (= e!3168440 call!353927)))

(declare-fun b!5079078 () Bool)

(assert (=> b!5079078 (= e!3168434 call!353932)))

(declare-fun bm!353935 () Bool)

(assert (=> bm!353935 (= call!353938 call!353937)))

(declare-fun b!5079079 () Bool)

(declare-fun res!2162422 () Bool)

(assert (=> b!5079079 (=> (not res!2162422) (not e!3168439))))

(assert (=> b!5079079 (= res!2162422 (>= (height!2157 lt!2090646) (max!0 (height!2157 (ite c!872092 (ite c!872087 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (height!2157 (ite c!872092 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))) (ite c!872088 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))))

(declare-fun b!5079080 () Bool)

(assert (=> b!5079080 (= e!3168440 e!3168443)))

(assert (=> b!5079080 (= c!872324 (< lt!2090645 (- 1)))))

(declare-fun bm!353936 () Bool)

(assert (=> bm!353936 (= call!353940 call!353927)))

(declare-fun b!5079081 () Bool)

(assert (=> b!5079081 (= e!3168442 call!353935)))

(declare-fun b!5079082 () Bool)

(assert (=> b!5079082 (= e!3168436 call!353937)))

(assert (= (and d!1641483 res!2162420) b!5079075))

(assert (= (and d!1641483 c!872326) b!5079070))

(assert (= (and d!1641483 (not c!872326)) b!5079074))

(assert (= (and b!5079074 c!872325) b!5079071))

(assert (= (and b!5079074 (not c!872325)) b!5079072))

(assert (= (and b!5079072 c!872321) b!5079077))

(assert (= (and b!5079072 (not c!872321)) b!5079080))

(assert (= (and b!5079080 c!872324) b!5079063))

(assert (= (and b!5079080 (not c!872324)) b!5079076))

(assert (= (and b!5079063 c!872319) b!5079082))

(assert (= (and b!5079063 (not c!872319)) b!5079065))

(assert (= (and b!5079065 c!872322) b!5079078))

(assert (= (and b!5079065 (not c!872322)) b!5079073))

(assert (= (or b!5079078 b!5079073) bm!353935))

(assert (= (or b!5079078 b!5079073) bm!353923))

(assert (= (or b!5079082 b!5079065) bm!353932))

(assert (= (or b!5079082 bm!353935) bm!353926))

(assert (= (and b!5079076 c!872320) b!5079081))

(assert (= (and b!5079076 (not c!872320)) b!5079068))

(assert (= (and b!5079068 c!872323) b!5079069))

(assert (= (and b!5079068 (not c!872323)) b!5079062))

(assert (= (or b!5079069 b!5079062) bm!353930))

(assert (= (or b!5079069 b!5079062) bm!353921))

(assert (= (or b!5079081 b!5079068) bm!353924))

(assert (= (or b!5079081 bm!353921) bm!353931))

(assert (= (or bm!353926 bm!353930) bm!353936))

(assert (= (or bm!353932 bm!353924) bm!353922))

(assert (= (or b!5079063 b!5079068) bm!353927))

(assert (= (or b!5079063 b!5079068) bm!353925))

(assert (= (or b!5079065 b!5079076) bm!353933))

(assert (= (or bm!353923 bm!353931) bm!353929))

(assert (= (or b!5079065 b!5079076) bm!353934))

(assert (= (or b!5079077 bm!353936) bm!353928))

(assert (= (and d!1641483 res!2162419) b!5079067))

(assert (= (and b!5079067 res!2162421) b!5079066))

(assert (= (and b!5079066 res!2162418) b!5079079))

(assert (= (and b!5079079 res!2162422) b!5079064))

(declare-fun m!6130442 () Bool)

(assert (=> bm!353928 m!6130442))

(declare-fun m!6130444 () Bool)

(assert (=> bm!353934 m!6130444))

(declare-fun m!6130446 () Bool)

(assert (=> bm!353927 m!6130446))

(declare-fun m!6130448 () Bool)

(assert (=> b!5079079 m!6130448))

(declare-fun m!6130450 () Bool)

(assert (=> b!5079079 m!6130450))

(declare-fun m!6130452 () Bool)

(assert (=> b!5079079 m!6130452))

(assert (=> b!5079079 m!6130450))

(assert (=> b!5079079 m!6130452))

(declare-fun m!6130454 () Bool)

(assert (=> b!5079079 m!6130454))

(declare-fun m!6130456 () Bool)

(assert (=> bm!353933 m!6130456))

(assert (=> b!5079072 m!6130452))

(assert (=> b!5079072 m!6130450))

(declare-fun m!6130458 () Bool)

(assert (=> d!1641483 m!6130458))

(declare-fun m!6130460 () Bool)

(assert (=> d!1641483 m!6130460))

(declare-fun m!6130462 () Bool)

(assert (=> bm!353925 m!6130462))

(assert (=> b!5079066 m!6130448))

(assert (=> b!5079066 m!6130450))

(assert (=> b!5079066 m!6130452))

(assert (=> b!5079066 m!6130450))

(assert (=> b!5079066 m!6130452))

(assert (=> b!5079066 m!6130454))

(declare-fun m!6130464 () Bool)

(assert (=> bm!353929 m!6130464))

(declare-fun m!6130466 () Bool)

(assert (=> bm!353922 m!6130466))

(declare-fun m!6130468 () Bool)

(assert (=> b!5079067 m!6130468))

(declare-fun m!6130470 () Bool)

(assert (=> b!5079064 m!6130470))

(declare-fun m!6130472 () Bool)

(assert (=> b!5079064 m!6130472))

(declare-fun m!6130474 () Bool)

(assert (=> b!5079064 m!6130474))

(assert (=> b!5079064 m!6130472))

(assert (=> b!5079064 m!6130474))

(declare-fun m!6130476 () Bool)

(assert (=> b!5079064 m!6130476))

(declare-fun m!6130478 () Bool)

(assert (=> b!5079075 m!6130478))

(assert (=> bm!353834 d!1641483))

(declare-fun lt!2090647 () List!58574)

(declare-fun b!5079086 () Bool)

(declare-fun e!3168445 () Bool)

(assert (=> b!5079086 (= e!3168445 (or (not (= call!353868 Nil!58450)) (= lt!2090647 (list!19021 (left!42840 xs!286)))))))

(declare-fun d!1641485 () Bool)

(assert (=> d!1641485 e!3168445))

(declare-fun res!2162423 () Bool)

(assert (=> d!1641485 (=> (not res!2162423) (not e!3168445))))

(assert (=> d!1641485 (= res!2162423 (= (content!10426 lt!2090647) ((_ map or) (content!10426 (list!19021 (left!42840 xs!286))) (content!10426 call!353868))))))

(declare-fun e!3168444 () List!58574)

(assert (=> d!1641485 (= lt!2090647 e!3168444)))

(declare-fun c!872327 () Bool)

(assert (=> d!1641485 (= c!872327 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641485 (= (++!12807 (list!19021 (left!42840 xs!286)) call!353868) lt!2090647)))

(declare-fun b!5079083 () Bool)

(assert (=> b!5079083 (= e!3168444 call!353868)))

(declare-fun b!5079085 () Bool)

(declare-fun res!2162424 () Bool)

(assert (=> b!5079085 (=> (not res!2162424) (not e!3168445))))

(assert (=> b!5079085 (= res!2162424 (= (size!39108 lt!2090647) (+ (size!39108 (list!19021 (left!42840 xs!286))) (size!39108 call!353868))))))

(declare-fun b!5079084 () Bool)

(assert (=> b!5079084 (= e!3168444 (Cons!58450 (h!64898 (list!19021 (left!42840 xs!286))) (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) call!353868)))))

(assert (= (and d!1641485 c!872327) b!5079083))

(assert (= (and d!1641485 (not c!872327)) b!5079084))

(assert (= (and d!1641485 res!2162423) b!5079085))

(assert (= (and b!5079085 res!2162424) b!5079086))

(declare-fun m!6130480 () Bool)

(assert (=> d!1641485 m!6130480))

(assert (=> d!1641485 m!6128332))

(assert (=> d!1641485 m!6129190))

(declare-fun m!6130482 () Bool)

(assert (=> d!1641485 m!6130482))

(declare-fun m!6130484 () Bool)

(assert (=> b!5079085 m!6130484))

(assert (=> b!5079085 m!6128332))

(assert (=> b!5079085 m!6129198))

(declare-fun m!6130486 () Bool)

(assert (=> b!5079085 m!6130486))

(declare-fun m!6130488 () Bool)

(assert (=> b!5079084 m!6130488))

(assert (=> bm!353864 d!1641485))

(declare-fun d!1641487 () Bool)

(declare-fun res!2162425 () Bool)

(declare-fun e!3168446 () Bool)

(assert (=> d!1641487 (=> (not res!2162425) (not e!3168446))))

(assert (=> d!1641487 (= res!2162425 (<= (size!39108 (list!19023 (xs!18946 (right!43170 (left!42840 xs!286))))) 512))))

(assert (=> d!1641487 (= (inv!77648 (right!43170 (left!42840 xs!286))) e!3168446)))

(declare-fun b!5079087 () Bool)

(declare-fun res!2162426 () Bool)

(assert (=> b!5079087 (=> (not res!2162426) (not e!3168446))))

(assert (=> b!5079087 (= res!2162426 (= (csize!31391 (right!43170 (left!42840 xs!286))) (size!39108 (list!19023 (xs!18946 (right!43170 (left!42840 xs!286)))))))))

(declare-fun b!5079088 () Bool)

(assert (=> b!5079088 (= e!3168446 (and (> (csize!31391 (right!43170 (left!42840 xs!286))) 0) (<= (csize!31391 (right!43170 (left!42840 xs!286))) 512)))))

(assert (= (and d!1641487 res!2162425) b!5079087))

(assert (= (and b!5079087 res!2162426) b!5079088))

(declare-fun m!6130490 () Bool)

(assert (=> d!1641487 m!6130490))

(assert (=> d!1641487 m!6130490))

(declare-fun m!6130492 () Bool)

(assert (=> d!1641487 m!6130492))

(assert (=> b!5079087 m!6130490))

(assert (=> b!5079087 m!6130490))

(assert (=> b!5079087 m!6130492))

(assert (=> b!5078476 d!1641487))

(declare-fun b!5079089 () Bool)

(declare-fun res!2162432 () Bool)

(declare-fun e!3168448 () Bool)

(assert (=> b!5079089 (=> (not res!2162432) (not e!3168448))))

(assert (=> b!5079089 (= res!2162432 (isBalanced!4442 (left!42840 (right!43170 (right!43170 lt!2090452)))))))

(declare-fun b!5079090 () Bool)

(declare-fun res!2162428 () Bool)

(assert (=> b!5079090 (=> (not res!2162428) (not e!3168448))))

(assert (=> b!5079090 (= res!2162428 (<= (- (height!2157 (left!42840 (right!43170 (right!43170 lt!2090452)))) (height!2157 (right!43170 (right!43170 (right!43170 lt!2090452))))) 1))))

(declare-fun d!1641489 () Bool)

(declare-fun res!2162431 () Bool)

(declare-fun e!3168447 () Bool)

(assert (=> d!1641489 (=> res!2162431 e!3168447)))

(assert (=> d!1641489 (= res!2162431 (not ((_ is Node!15580) (right!43170 (right!43170 lt!2090452)))))))

(assert (=> d!1641489 (= (isBalanced!4442 (right!43170 (right!43170 lt!2090452))) e!3168447)))

(declare-fun b!5079091 () Bool)

(declare-fun res!2162429 () Bool)

(assert (=> b!5079091 (=> (not res!2162429) (not e!3168448))))

(assert (=> b!5079091 (= res!2162429 (isBalanced!4442 (right!43170 (right!43170 (right!43170 lt!2090452)))))))

(declare-fun b!5079092 () Bool)

(assert (=> b!5079092 (= e!3168448 (not (isEmpty!31663 (right!43170 (right!43170 (right!43170 lt!2090452))))))))

(declare-fun b!5079093 () Bool)

(declare-fun res!2162427 () Bool)

(assert (=> b!5079093 (=> (not res!2162427) (not e!3168448))))

(assert (=> b!5079093 (= res!2162427 (not (isEmpty!31663 (left!42840 (right!43170 (right!43170 lt!2090452))))))))

(declare-fun b!5079094 () Bool)

(assert (=> b!5079094 (= e!3168447 e!3168448)))

(declare-fun res!2162430 () Bool)

(assert (=> b!5079094 (=> (not res!2162430) (not e!3168448))))

(assert (=> b!5079094 (= res!2162430 (<= (- 1) (- (height!2157 (left!42840 (right!43170 (right!43170 lt!2090452)))) (height!2157 (right!43170 (right!43170 (right!43170 lt!2090452)))))))))

(assert (= (and d!1641489 (not res!2162431)) b!5079094))

(assert (= (and b!5079094 res!2162430) b!5079090))

(assert (= (and b!5079090 res!2162428) b!5079089))

(assert (= (and b!5079089 res!2162432) b!5079091))

(assert (= (and b!5079091 res!2162429) b!5079093))

(assert (= (and b!5079093 res!2162427) b!5079092))

(declare-fun m!6130494 () Bool)

(assert (=> b!5079091 m!6130494))

(declare-fun m!6130496 () Bool)

(assert (=> b!5079093 m!6130496))

(declare-fun m!6130498 () Bool)

(assert (=> b!5079092 m!6130498))

(declare-fun m!6130500 () Bool)

(assert (=> b!5079094 m!6130500))

(declare-fun m!6130502 () Bool)

(assert (=> b!5079094 m!6130502))

(declare-fun m!6130504 () Bool)

(assert (=> b!5079089 m!6130504))

(assert (=> b!5079090 m!6130500))

(assert (=> b!5079090 m!6130502))

(assert (=> b!5078286 d!1641489))

(declare-fun b!5079095 () Bool)

(declare-fun e!3168449 () Bool)

(declare-fun call!353945 () List!58574)

(declare-fun call!353943 () List!58574)

(assert (=> b!5079095 (= e!3168449 (= call!353945 call!353943))))

(declare-fun b!5079096 () Bool)

(assert (=> b!5079096 (= e!3168449 (= call!353945 call!353943))))

(declare-fun lt!2090648 () Bool)

(assert (=> b!5079096 (= lt!2090648 (appendAssoc!310 (t!371381 (t!371381 (list!19021 xs!286))) (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353937 () Bool)

(declare-fun call!353944 () List!58574)

(assert (=> bm!353937 (= call!353944 (++!12807 (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353938 () Bool)

(declare-fun call!353942 () List!58574)

(assert (=> bm!353938 (= call!353945 (++!12807 call!353942 (list!19021 (right!43170 ys!41))))))

(declare-fun bm!353939 () Bool)

(assert (=> bm!353939 (= call!353942 (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 ys!41))))))

(declare-fun d!1641491 () Bool)

(assert (=> d!1641491 e!3168449))

(declare-fun c!872328 () Bool)

(assert (=> d!1641491 (= c!872328 ((_ is Nil!58450) (t!371381 (list!19021 xs!286))))))

(assert (=> d!1641491 (= (appendAssoc!310 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 ys!41)) (list!19021 (right!43170 ys!41))) true)))

(declare-fun bm!353940 () Bool)

(assert (=> bm!353940 (= call!353943 (++!12807 (t!371381 (list!19021 xs!286)) call!353944))))

(assert (= (and d!1641491 c!872328) b!5079095))

(assert (= (and d!1641491 (not c!872328)) b!5079096))

(assert (= (or b!5079095 b!5079096) bm!353939))

(assert (= (or b!5079095 b!5079096) bm!353937))

(assert (= (or b!5079095 b!5079096) bm!353940))

(assert (= (or b!5079095 b!5079096) bm!353938))

(declare-fun m!6130506 () Bool)

(assert (=> bm!353940 m!6130506))

(assert (=> bm!353938 m!6128342))

(declare-fun m!6130508 () Bool)

(assert (=> bm!353938 m!6130508))

(assert (=> bm!353937 m!6128340))

(assert (=> bm!353937 m!6128342))

(assert (=> bm!353937 m!6128344))

(assert (=> b!5079096 m!6128340))

(assert (=> b!5079096 m!6128342))

(declare-fun m!6130510 () Bool)

(assert (=> b!5079096 m!6130510))

(assert (=> bm!353939 m!6128340))

(declare-fun m!6130512 () Bool)

(assert (=> bm!353939 m!6130512))

(assert (=> b!5078295 d!1641491))

(declare-fun d!1641493 () Bool)

(assert (=> d!1641493 (= (height!2157 (ite c!872092 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) (ite ((_ is Empty!15580) (ite c!872092 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) 0 (ite ((_ is Leaf!25875) (ite c!872092 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) 1 (cheight!15791 (ite c!872092 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))

(assert (=> bm!353846 d!1641493))

(declare-fun b!5079097 () Bool)

(declare-fun e!3168454 () Bool)

(declare-fun e!3168451 () Bool)

(assert (=> b!5079097 (= e!3168454 e!3168451)))

(declare-fun res!2162436 () Bool)

(assert (=> b!5079097 (=> (not res!2162436) (not e!3168451))))

(assert (=> b!5079097 (= res!2162436 (appendAssoc!310 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (list!19021 (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) (list!19021 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun b!5079098 () Bool)

(declare-fun e!3168456 () Bool)

(declare-fun e!3168452 () Bool)

(assert (=> b!5079098 (= e!3168456 e!3168452)))

(declare-fun res!2162440 () Bool)

(assert (=> b!5079098 (=> (not res!2162440) (not e!3168452))))

(assert (=> b!5079098 (= res!2162440 (appendAssoc!310 (list!19021 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (list!19021 (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun d!1641495 () Bool)

(declare-fun e!3168450 () Bool)

(assert (=> d!1641495 e!3168450))

(declare-fun res!2162439 () Bool)

(assert (=> d!1641495 (=> (not res!2162439) (not e!3168450))))

(declare-fun e!3168453 () Bool)

(assert (=> d!1641495 (= res!2162439 e!3168453)))

(declare-fun res!2162438 () Bool)

(assert (=> d!1641495 (=> res!2162438 e!3168453)))

(assert (=> d!1641495 (= res!2162438 (not ((_ is Node!15580) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(assert (=> d!1641495 (= (appendAssocInst!918 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) true)))

(declare-fun b!5079099 () Bool)

(declare-fun e!3168458 () Bool)

(declare-fun e!3168455 () Bool)

(assert (=> b!5079099 (= e!3168458 e!3168455)))

(declare-fun res!2162433 () Bool)

(assert (=> b!5079099 (=> (not res!2162433) (not e!3168455))))

(assert (=> b!5079099 (= res!2162433 (appendAssoc!310 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (list!19021 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (list!19021 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079100 () Bool)

(assert (=> b!5079100 (= e!3168452 (appendAssoc!310 (list!19021 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (list!19021 (left!42840 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (++!12807 (list!19021 (right!43170 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079101 () Bool)

(declare-fun e!3168457 () Bool)

(assert (=> b!5079101 (= e!3168453 e!3168457)))

(declare-fun res!2162434 () Bool)

(assert (=> b!5079101 (=> (not res!2162434) (not e!3168457))))

(assert (=> b!5079101 (= res!2162434 (appendAssoc!310 (list!19021 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (list!19021 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun b!5079102 () Bool)

(assert (=> b!5079102 (= e!3168451 (appendAssoc!310 (++!12807 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (list!19021 (left!42840 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))) (list!19021 (right!43170 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) (list!19021 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079103 () Bool)

(assert (=> b!5079103 (= e!3168457 e!3168456)))

(declare-fun res!2162441 () Bool)

(assert (=> b!5079103 (=> res!2162441 e!3168456)))

(assert (=> b!5079103 (= res!2162441 (not ((_ is Node!15580) (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))))

(declare-fun b!5079104 () Bool)

(assert (=> b!5079104 (= e!3168455 e!3168454)))

(declare-fun res!2162437 () Bool)

(assert (=> b!5079104 (=> res!2162437 e!3168454)))

(assert (=> b!5079104 (= res!2162437 (not ((_ is Node!15580) (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079105 () Bool)

(assert (=> b!5079105 (= e!3168450 e!3168458)))

(declare-fun res!2162435 () Bool)

(assert (=> b!5079105 (=> res!2162435 e!3168458)))

(assert (=> b!5079105 (= res!2162435 (not ((_ is Node!15580) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(assert (= (and d!1641495 (not res!2162438)) b!5079101))

(assert (= (and b!5079101 res!2162434) b!5079103))

(assert (= (and b!5079103 (not res!2162441)) b!5079098))

(assert (= (and b!5079098 res!2162440) b!5079100))

(assert (= (and d!1641495 res!2162439) b!5079105))

(assert (= (and b!5079105 (not res!2162435)) b!5079099))

(assert (= (and b!5079099 res!2162433) b!5079104))

(assert (= (and b!5079104 (not res!2162437)) b!5079097))

(assert (= (and b!5079097 res!2162436) b!5079102))

(declare-fun m!6130514 () Bool)

(assert (=> b!5079098 m!6130514))

(declare-fun m!6130516 () Bool)

(assert (=> b!5079098 m!6130516))

(assert (=> b!5079098 m!6128826))

(assert (=> b!5079098 m!6130514))

(assert (=> b!5079098 m!6130516))

(assert (=> b!5079098 m!6128826))

(declare-fun m!6130518 () Bool)

(assert (=> b!5079098 m!6130518))

(declare-fun m!6130520 () Bool)

(assert (=> b!5079100 m!6130520))

(assert (=> b!5079100 m!6130516))

(assert (=> b!5079100 m!6130514))

(assert (=> b!5079100 m!6128826))

(assert (=> b!5079100 m!6130520))

(assert (=> b!5079100 m!6130514))

(declare-fun m!6130522 () Bool)

(assert (=> b!5079100 m!6130522))

(declare-fun m!6130524 () Bool)

(assert (=> b!5079100 m!6130524))

(assert (=> b!5079100 m!6130516))

(assert (=> b!5079100 m!6128826))

(assert (=> b!5079100 m!6130522))

(assert (=> b!5079099 m!6128824))

(declare-fun m!6130526 () Bool)

(assert (=> b!5079099 m!6130526))

(declare-fun m!6130528 () Bool)

(assert (=> b!5079099 m!6130528))

(assert (=> b!5079099 m!6128824))

(assert (=> b!5079099 m!6130526))

(assert (=> b!5079099 m!6130528))

(declare-fun m!6130530 () Bool)

(assert (=> b!5079099 m!6130530))

(assert (=> b!5079097 m!6128824))

(declare-fun m!6130532 () Bool)

(assert (=> b!5079097 m!6130532))

(declare-fun m!6130534 () Bool)

(assert (=> b!5079097 m!6130534))

(assert (=> b!5079097 m!6128824))

(assert (=> b!5079097 m!6130532))

(assert (=> b!5079097 m!6130534))

(declare-fun m!6130536 () Bool)

(assert (=> b!5079097 m!6130536))

(assert (=> b!5079101 m!6130520))

(declare-fun m!6130538 () Bool)

(assert (=> b!5079101 m!6130538))

(assert (=> b!5079101 m!6128826))

(assert (=> b!5079101 m!6130520))

(assert (=> b!5079101 m!6130538))

(assert (=> b!5079101 m!6128826))

(declare-fun m!6130540 () Bool)

(assert (=> b!5079101 m!6130540))

(declare-fun m!6130542 () Bool)

(assert (=> b!5079102 m!6130542))

(assert (=> b!5079102 m!6130534))

(assert (=> b!5079102 m!6130528))

(declare-fun m!6130544 () Bool)

(assert (=> b!5079102 m!6130544))

(assert (=> b!5079102 m!6130532))

(assert (=> b!5079102 m!6130534))

(assert (=> b!5079102 m!6130528))

(assert (=> b!5079102 m!6128824))

(assert (=> b!5079102 m!6130532))

(assert (=> b!5079102 m!6130542))

(assert (=> b!5079102 m!6128824))

(assert (=> d!1640873 d!1641495))

(declare-fun b!5079106 () Bool)

(declare-fun res!2162447 () Bool)

(declare-fun e!3168460 () Bool)

(assert (=> b!5079106 (=> (not res!2162447) (not e!3168460))))

(assert (=> b!5079106 (= res!2162447 (isBalanced!4442 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(declare-fun b!5079107 () Bool)

(declare-fun res!2162443 () Bool)

(assert (=> b!5079107 (=> (not res!2162443) (not e!3168460))))

(assert (=> b!5079107 (= res!2162443 (<= (- (height!2157 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (height!2157 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))) 1))))

(declare-fun d!1641497 () Bool)

(declare-fun res!2162446 () Bool)

(declare-fun e!3168459 () Bool)

(assert (=> d!1641497 (=> res!2162446 e!3168459)))

(assert (=> d!1641497 (= res!2162446 (not ((_ is Node!15580) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(assert (=> d!1641497 (= (isBalanced!4442 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) e!3168459)))

(declare-fun b!5079108 () Bool)

(declare-fun res!2162444 () Bool)

(assert (=> b!5079108 (=> (not res!2162444) (not e!3168460))))

(assert (=> b!5079108 (= res!2162444 (isBalanced!4442 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(declare-fun b!5079109 () Bool)

(assert (=> b!5079109 (= e!3168460 (not (isEmpty!31663 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))))

(declare-fun b!5079110 () Bool)

(declare-fun res!2162442 () Bool)

(assert (=> b!5079110 (=> (not res!2162442) (not e!3168460))))

(assert (=> b!5079110 (= res!2162442 (not (isEmpty!31663 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))))

(declare-fun b!5079111 () Bool)

(assert (=> b!5079111 (= e!3168459 e!3168460)))

(declare-fun res!2162445 () Bool)

(assert (=> b!5079111 (=> (not res!2162445) (not e!3168460))))

(assert (=> b!5079111 (= res!2162445 (<= (- 1) (- (height!2157 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (height!2157 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))))

(assert (= (and d!1641497 (not res!2162446)) b!5079111))

(assert (= (and b!5079111 res!2162445) b!5079107))

(assert (= (and b!5079107 res!2162443) b!5079106))

(assert (= (and b!5079106 res!2162447) b!5079108))

(assert (= (and b!5079108 res!2162444) b!5079110))

(assert (= (and b!5079110 res!2162442) b!5079109))

(declare-fun m!6130546 () Bool)

(assert (=> b!5079108 m!6130546))

(declare-fun m!6130548 () Bool)

(assert (=> b!5079110 m!6130548))

(declare-fun m!6130550 () Bool)

(assert (=> b!5079109 m!6130550))

(declare-fun m!6130552 () Bool)

(assert (=> b!5079111 m!6130552))

(declare-fun m!6130554 () Bool)

(assert (=> b!5079111 m!6130554))

(declare-fun m!6130556 () Bool)

(assert (=> b!5079106 m!6130556))

(assert (=> b!5079107 m!6130552))

(assert (=> b!5079107 m!6130554))

(assert (=> d!1640873 d!1641497))

(assert (=> b!5078458 d!1641111))

(declare-fun d!1641499 () Bool)

(declare-fun c!872329 () Bool)

(assert (=> d!1641499 (= c!872329 ((_ is Nil!58450) lt!2090535))))

(declare-fun e!3168461 () (InoxSet T!105230))

(assert (=> d!1641499 (= (content!10426 lt!2090535) e!3168461)))

(declare-fun b!5079112 () Bool)

(assert (=> b!5079112 (= e!3168461 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079113 () Bool)

(assert (=> b!5079113 (= e!3168461 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090535) true) (content!10426 (t!371381 lt!2090535))))))

(assert (= (and d!1641499 c!872329) b!5079112))

(assert (= (and d!1641499 (not c!872329)) b!5079113))

(declare-fun m!6130558 () Bool)

(assert (=> b!5079113 m!6130558))

(declare-fun m!6130560 () Bool)

(assert (=> b!5079113 m!6130560))

(assert (=> d!1640949 d!1641499))

(assert (=> d!1640949 d!1641185))

(assert (=> d!1640949 d!1641003))

(declare-fun b!5079114 () Bool)

(declare-fun e!3168462 () Bool)

(declare-fun call!353949 () List!58574)

(declare-fun call!353947 () List!58574)

(assert (=> b!5079114 (= e!3168462 (= call!353949 call!353947))))

(declare-fun b!5079115 () Bool)

(assert (=> b!5079115 (= e!3168462 (= call!353949 call!353947))))

(declare-fun lt!2090649 () Bool)

(assert (=> b!5079115 (= lt!2090649 (appendAssoc!310 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun bm!353941 () Bool)

(declare-fun call!353948 () List!58574)

(assert (=> bm!353941 (= call!353948 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun bm!353942 () Bool)

(declare-fun call!353946 () List!58574)

(assert (=> bm!353942 (= call!353949 (++!12807 call!353946 (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun bm!353943 () Bool)

(assert (=> bm!353943 (= call!353946 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286)))))))

(declare-fun d!1641501 () Bool)

(assert (=> d!1641501 e!3168462))

(declare-fun c!872330 () Bool)

(assert (=> d!1641501 (= c!872330 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641501 (= (appendAssoc!310 (list!19021 (left!42840 (right!43170 xs!286))) (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41)))) true)))

(declare-fun bm!353944 () Bool)

(assert (=> bm!353944 (= call!353947 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) call!353948))))

(assert (= (and d!1641501 c!872330) b!5079114))

(assert (= (and d!1641501 (not c!872330)) b!5079115))

(assert (= (or b!5079114 b!5079115) bm!353943))

(assert (= (or b!5079114 b!5079115) bm!353941))

(assert (= (or b!5079114 b!5079115) bm!353944))

(assert (= (or b!5079114 b!5079115) bm!353942))

(assert (=> bm!353944 m!6128424))

(declare-fun m!6130562 () Bool)

(assert (=> bm!353944 m!6130562))

(assert (=> bm!353942 m!6128228))

(declare-fun m!6130564 () Bool)

(assert (=> bm!353942 m!6130564))

(assert (=> bm!353941 m!6128426))

(assert (=> bm!353941 m!6128228))

(assert (=> bm!353941 m!6128664))

(assert (=> b!5079115 m!6128426))

(assert (=> b!5079115 m!6128228))

(declare-fun m!6130566 () Bool)

(assert (=> b!5079115 m!6130566))

(assert (=> bm!353943 m!6128424))

(assert (=> bm!353943 m!6128426))

(assert (=> bm!353943 m!6128982))

(assert (=> b!5078174 d!1641501))

(assert (=> b!5078174 d!1641065))

(assert (=> b!5078174 d!1641057))

(assert (=> b!5078174 d!1640863))

(declare-fun d!1641503 () Bool)

(declare-fun lt!2090650 () Bool)

(assert (=> d!1641503 (= lt!2090650 (isEmpty!31665 (list!19021 (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641503 (= lt!2090650 (= (size!39109 (left!42840 (left!42840 (left!42840 ys!41)))) 0))))

(assert (=> d!1641503 (= (isEmpty!31663 (left!42840 (left!42840 (left!42840 ys!41)))) lt!2090650)))

(declare-fun bs!1190569 () Bool)

(assert (= bs!1190569 d!1641503))

(assert (=> bs!1190569 m!6128668))

(assert (=> bs!1190569 m!6128668))

(declare-fun m!6130568 () Bool)

(assert (=> bs!1190569 m!6130568))

(assert (=> bs!1190569 m!6129840))

(assert (=> b!5078578 d!1641503))

(assert (=> b!5078087 d!1640773))

(assert (=> b!5078087 d!1640775))

(declare-fun d!1641505 () Bool)

(assert (=> d!1641505 (= (list!19023 (xs!18946 (left!42840 (left!42840 ys!41)))) (innerList!15668 (xs!18946 (left!42840 (left!42840 ys!41)))))))

(assert (=> b!5078221 d!1641505))

(declare-fun b!5079116 () Bool)

(declare-fun res!2162453 () Bool)

(declare-fun e!3168464 () Bool)

(assert (=> b!5079116 (=> (not res!2162453) (not e!3168464))))

(assert (=> b!5079116 (= res!2162453 (isBalanced!4442 (left!42840 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5079117 () Bool)

(declare-fun res!2162449 () Bool)

(assert (=> b!5079117 (=> (not res!2162449) (not e!3168464))))

(assert (=> b!5079117 (= res!2162449 (<= (- (height!2157 (left!42840 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 (right!43170 (left!42840 ys!41))))) 1))))

(declare-fun d!1641507 () Bool)

(declare-fun res!2162452 () Bool)

(declare-fun e!3168463 () Bool)

(assert (=> d!1641507 (=> res!2162452 e!3168463)))

(assert (=> d!1641507 (= res!2162452 (not ((_ is Node!15580) (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641507 (= (isBalanced!4442 (right!43170 (left!42840 ys!41))) e!3168463)))

(declare-fun b!5079118 () Bool)

(declare-fun res!2162450 () Bool)

(assert (=> b!5079118 (=> (not res!2162450) (not e!3168464))))

(assert (=> b!5079118 (= res!2162450 (isBalanced!4442 (right!43170 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5079119 () Bool)

(assert (=> b!5079119 (= e!3168464 (not (isEmpty!31663 (right!43170 (right!43170 (left!42840 ys!41))))))))

(declare-fun b!5079120 () Bool)

(declare-fun res!2162448 () Bool)

(assert (=> b!5079120 (=> (not res!2162448) (not e!3168464))))

(assert (=> b!5079120 (= res!2162448 (not (isEmpty!31663 (left!42840 (right!43170 (left!42840 ys!41))))))))

(declare-fun b!5079121 () Bool)

(assert (=> b!5079121 (= e!3168463 e!3168464)))

(declare-fun res!2162451 () Bool)

(assert (=> b!5079121 (=> (not res!2162451) (not e!3168464))))

(assert (=> b!5079121 (= res!2162451 (<= (- 1) (- (height!2157 (left!42840 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 (right!43170 (left!42840 ys!41)))))))))

(assert (= (and d!1641507 (not res!2162452)) b!5079121))

(assert (= (and b!5079121 res!2162451) b!5079117))

(assert (= (and b!5079117 res!2162449) b!5079116))

(assert (= (and b!5079116 res!2162453) b!5079118))

(assert (= (and b!5079118 res!2162450) b!5079120))

(assert (= (and b!5079120 res!2162448) b!5079119))

(declare-fun m!6130570 () Bool)

(assert (=> b!5079118 m!6130570))

(declare-fun m!6130572 () Bool)

(assert (=> b!5079120 m!6130572))

(declare-fun m!6130574 () Bool)

(assert (=> b!5079119 m!6130574))

(declare-fun m!6130576 () Bool)

(assert (=> b!5079121 m!6130576))

(declare-fun m!6130578 () Bool)

(assert (=> b!5079121 m!6130578))

(declare-fun m!6130580 () Bool)

(assert (=> b!5079116 m!6130580))

(assert (=> b!5079117 m!6130576))

(assert (=> b!5079117 m!6130578))

(assert (=> b!5078460 d!1641507))

(declare-fun d!1641509 () Bool)

(declare-fun res!2162454 () Bool)

(declare-fun e!3168465 () Bool)

(assert (=> d!1641509 (=> (not res!2162454) (not e!3168465))))

(assert (=> d!1641509 (= res!2162454 (= (csize!31390 (right!43170 (left!42840 ys!41))) (+ (size!39109 (left!42840 (right!43170 (left!42840 ys!41)))) (size!39109 (right!43170 (right!43170 (left!42840 ys!41)))))))))

(assert (=> d!1641509 (= (inv!77647 (right!43170 (left!42840 ys!41))) e!3168465)))

(declare-fun b!5079122 () Bool)

(declare-fun res!2162455 () Bool)

(assert (=> b!5079122 (=> (not res!2162455) (not e!3168465))))

(assert (=> b!5079122 (= res!2162455 (and (not (= (left!42840 (right!43170 (left!42840 ys!41))) Empty!15580)) (not (= (right!43170 (right!43170 (left!42840 ys!41))) Empty!15580))))))

(declare-fun b!5079123 () Bool)

(declare-fun res!2162456 () Bool)

(assert (=> b!5079123 (=> (not res!2162456) (not e!3168465))))

(assert (=> b!5079123 (= res!2162456 (= (cheight!15791 (right!43170 (left!42840 ys!41))) (+ (max!0 (height!2157 (left!42840 (right!43170 (left!42840 ys!41)))) (height!2157 (right!43170 (right!43170 (left!42840 ys!41))))) 1)))))

(declare-fun b!5079124 () Bool)

(assert (=> b!5079124 (= e!3168465 (<= 0 (cheight!15791 (right!43170 (left!42840 ys!41)))))))

(assert (= (and d!1641509 res!2162454) b!5079122))

(assert (= (and b!5079122 res!2162455) b!5079123))

(assert (= (and b!5079123 res!2162456) b!5079124))

(declare-fun m!6130582 () Bool)

(assert (=> d!1641509 m!6130582))

(declare-fun m!6130584 () Bool)

(assert (=> d!1641509 m!6130584))

(assert (=> b!5079123 m!6130576))

(assert (=> b!5079123 m!6130578))

(assert (=> b!5079123 m!6130576))

(assert (=> b!5079123 m!6130578))

(declare-fun m!6130586 () Bool)

(assert (=> b!5079123 m!6130586))

(assert (=> b!5078453 d!1641509))

(assert (=> bm!353877 d!1641069))

(declare-fun b!5079125 () Bool)

(declare-fun res!2162462 () Bool)

(declare-fun e!3168467 () Bool)

(assert (=> b!5079125 (=> (not res!2162462) (not e!3168467))))

(assert (=> b!5079125 (= res!2162462 (isBalanced!4442 (left!42840 (left!42840 (right!43170 xs!286)))))))

(declare-fun b!5079126 () Bool)

(declare-fun res!2162458 () Bool)

(assert (=> b!5079126 (=> (not res!2162458) (not e!3168467))))

(assert (=> b!5079126 (= res!2162458 (<= (- (height!2157 (left!42840 (left!42840 (right!43170 xs!286)))) (height!2157 (right!43170 (left!42840 (right!43170 xs!286))))) 1))))

(declare-fun d!1641511 () Bool)

(declare-fun res!2162461 () Bool)

(declare-fun e!3168466 () Bool)

(assert (=> d!1641511 (=> res!2162461 e!3168466)))

(assert (=> d!1641511 (= res!2162461 (not ((_ is Node!15580) (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641511 (= (isBalanced!4442 (left!42840 (right!43170 xs!286))) e!3168466)))

(declare-fun b!5079127 () Bool)

(declare-fun res!2162459 () Bool)

(assert (=> b!5079127 (=> (not res!2162459) (not e!3168467))))

(assert (=> b!5079127 (= res!2162459 (isBalanced!4442 (right!43170 (left!42840 (right!43170 xs!286)))))))

(declare-fun b!5079128 () Bool)

(assert (=> b!5079128 (= e!3168467 (not (isEmpty!31663 (right!43170 (left!42840 (right!43170 xs!286))))))))

(declare-fun b!5079129 () Bool)

(declare-fun res!2162457 () Bool)

(assert (=> b!5079129 (=> (not res!2162457) (not e!3168467))))

(assert (=> b!5079129 (= res!2162457 (not (isEmpty!31663 (left!42840 (left!42840 (right!43170 xs!286))))))))

(declare-fun b!5079130 () Bool)

(assert (=> b!5079130 (= e!3168466 e!3168467)))

(declare-fun res!2162460 () Bool)

(assert (=> b!5079130 (=> (not res!2162460) (not e!3168467))))

(assert (=> b!5079130 (= res!2162460 (<= (- 1) (- (height!2157 (left!42840 (left!42840 (right!43170 xs!286)))) (height!2157 (right!43170 (left!42840 (right!43170 xs!286)))))))))

(assert (= (and d!1641511 (not res!2162461)) b!5079130))

(assert (= (and b!5079130 res!2162460) b!5079126))

(assert (= (and b!5079126 res!2162458) b!5079125))

(assert (= (and b!5079125 res!2162462) b!5079127))

(assert (= (and b!5079127 res!2162459) b!5079129))

(assert (= (and b!5079129 res!2162457) b!5079128))

(declare-fun m!6130588 () Bool)

(assert (=> b!5079127 m!6130588))

(declare-fun m!6130590 () Bool)

(assert (=> b!5079129 m!6130590))

(declare-fun m!6130592 () Bool)

(assert (=> b!5079128 m!6130592))

(assert (=> b!5079130 m!6129872))

(assert (=> b!5079130 m!6129874))

(declare-fun m!6130594 () Bool)

(assert (=> b!5079125 m!6130594))

(assert (=> b!5079126 m!6129872))

(assert (=> b!5079126 m!6129874))

(assert (=> b!5078276 d!1641511))

(declare-fun d!1641513 () Bool)

(assert (=> d!1641513 (= (height!2157 lt!2090519) (ite ((_ is Empty!15580) lt!2090519) 0 (ite ((_ is Leaf!25875) lt!2090519) 1 (cheight!15791 lt!2090519))))))

(assert (=> b!5078238 d!1641513))

(declare-fun d!1641515 () Bool)

(assert (=> d!1641515 (= (max!0 (height!2157 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (height!2157 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (ite (< (height!2157 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (height!2157 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (height!2157 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (height!2157 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(assert (=> b!5078238 d!1641515))

(declare-fun d!1641517 () Bool)

(assert (=> d!1641517 (= (height!2157 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (ite ((_ is Empty!15580) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) 0 (ite ((_ is Leaf!25875) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) 1 (cheight!15791 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))))

(assert (=> b!5078238 d!1641517))

(declare-fun d!1641519 () Bool)

(assert (=> d!1641519 (= (height!2157 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) (ite ((_ is Empty!15580) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) 0 (ite ((_ is Leaf!25875) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) 1 (cheight!15791 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(assert (=> b!5078238 d!1641519))

(declare-fun b!5079134 () Bool)

(declare-fun e!3168469 () Bool)

(declare-fun lt!2090651 () List!58574)

(assert (=> b!5079134 (= e!3168469 (or (not (= (list!19021 (right!43170 ys!41)) Nil!58450)) (= lt!2090651 (list!19021 (right!43170 (left!42840 ys!41))))))))

(declare-fun d!1641521 () Bool)

(assert (=> d!1641521 e!3168469))

(declare-fun res!2162463 () Bool)

(assert (=> d!1641521 (=> (not res!2162463) (not e!3168469))))

(assert (=> d!1641521 (= res!2162463 (= (content!10426 lt!2090651) ((_ map or) (content!10426 (list!19021 (right!43170 (left!42840 ys!41)))) (content!10426 (list!19021 (right!43170 ys!41))))))))

(declare-fun e!3168468 () List!58574)

(assert (=> d!1641521 (= lt!2090651 e!3168468)))

(declare-fun c!872331 () Bool)

(assert (=> d!1641521 (= c!872331 ((_ is Nil!58450) (list!19021 (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641521 (= (++!12807 (list!19021 (right!43170 (left!42840 ys!41))) (list!19021 (right!43170 ys!41))) lt!2090651)))

(declare-fun b!5079131 () Bool)

(assert (=> b!5079131 (= e!3168468 (list!19021 (right!43170 ys!41)))))

(declare-fun b!5079133 () Bool)

(declare-fun res!2162464 () Bool)

(assert (=> b!5079133 (=> (not res!2162464) (not e!3168469))))

(assert (=> b!5079133 (= res!2162464 (= (size!39108 lt!2090651) (+ (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))) (size!39108 (list!19021 (right!43170 ys!41))))))))

(declare-fun b!5079132 () Bool)

(assert (=> b!5079132 (= e!3168468 (Cons!58450 (h!64898 (list!19021 (right!43170 (left!42840 ys!41)))) (++!12807 (t!371381 (list!19021 (right!43170 (left!42840 ys!41)))) (list!19021 (right!43170 ys!41)))))))

(assert (= (and d!1641521 c!872331) b!5079131))

(assert (= (and d!1641521 (not c!872331)) b!5079132))

(assert (= (and d!1641521 res!2162463) b!5079133))

(assert (= (and b!5079133 res!2162464) b!5079134))

(declare-fun m!6130596 () Bool)

(assert (=> d!1641521 m!6130596))

(assert (=> d!1641521 m!6128436))

(assert (=> d!1641521 m!6128622))

(assert (=> d!1641521 m!6128342))

(assert (=> d!1641521 m!6128514))

(declare-fun m!6130598 () Bool)

(assert (=> b!5079133 m!6130598))

(assert (=> b!5079133 m!6128436))

(assert (=> b!5079133 m!6128628))

(assert (=> b!5079133 m!6128342))

(assert (=> b!5079133 m!6128522))

(assert (=> b!5079132 m!6128342))

(declare-fun m!6130600 () Bool)

(assert (=> b!5079132 m!6130600))

(assert (=> bm!353897 d!1641521))

(declare-fun d!1641523 () Bool)

(declare-fun lt!2090652 () Int)

(assert (=> d!1641523 (>= lt!2090652 0)))

(declare-fun e!3168470 () Int)

(assert (=> d!1641523 (= lt!2090652 e!3168470)))

(declare-fun c!872332 () Bool)

(assert (=> d!1641523 (= c!872332 ((_ is Nil!58450) lt!2090500))))

(assert (=> d!1641523 (= (size!39108 lt!2090500) lt!2090652)))

(declare-fun b!5079135 () Bool)

(assert (=> b!5079135 (= e!3168470 0)))

(declare-fun b!5079136 () Bool)

(assert (=> b!5079136 (= e!3168470 (+ 1 (size!39108 (t!371381 lt!2090500))))))

(assert (= (and d!1641523 c!872332) b!5079135))

(assert (= (and d!1641523 (not c!872332)) b!5079136))

(declare-fun m!6130602 () Bool)

(assert (=> b!5079136 m!6130602))

(assert (=> b!5078157 d!1641523))

(assert (=> b!5078157 d!1641435))

(declare-fun d!1641525 () Bool)

(declare-fun lt!2090653 () Int)

(assert (=> d!1641525 (>= lt!2090653 0)))

(declare-fun e!3168471 () Int)

(assert (=> d!1641525 (= lt!2090653 e!3168471)))

(declare-fun c!872333 () Bool)

(assert (=> d!1641525 (= c!872333 ((_ is Nil!58450) (list!19021 (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641525 (= (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))) lt!2090653)))

(declare-fun b!5079137 () Bool)

(assert (=> b!5079137 (= e!3168471 0)))

(declare-fun b!5079138 () Bool)

(assert (=> b!5079138 (= e!3168471 (+ 1 (size!39108 (t!371381 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(assert (= (and d!1641525 c!872333) b!5079137))

(assert (= (and d!1641525 (not c!872333)) b!5079138))

(declare-fun m!6130604 () Bool)

(assert (=> b!5079138 m!6130604))

(assert (=> b!5078157 d!1641525))

(assert (=> b!5078563 d!1641225))

(assert (=> b!5078563 d!1641227))

(declare-fun d!1641527 () Bool)

(declare-fun res!2162465 () Bool)

(declare-fun e!3168472 () Bool)

(assert (=> d!1641527 (=> (not res!2162465) (not e!3168472))))

(assert (=> d!1641527 (= res!2162465 (= (csize!31390 (right!43170 (right!43170 xs!286))) (+ (size!39109 (left!42840 (right!43170 (right!43170 xs!286)))) (size!39109 (right!43170 (right!43170 (right!43170 xs!286)))))))))

(assert (=> d!1641527 (= (inv!77647 (right!43170 (right!43170 xs!286))) e!3168472)))

(declare-fun b!5079139 () Bool)

(declare-fun res!2162466 () Bool)

(assert (=> b!5079139 (=> (not res!2162466) (not e!3168472))))

(assert (=> b!5079139 (= res!2162466 (and (not (= (left!42840 (right!43170 (right!43170 xs!286))) Empty!15580)) (not (= (right!43170 (right!43170 (right!43170 xs!286))) Empty!15580))))))

(declare-fun b!5079140 () Bool)

(declare-fun res!2162467 () Bool)

(assert (=> b!5079140 (=> (not res!2162467) (not e!3168472))))

(assert (=> b!5079140 (= res!2162467 (= (cheight!15791 (right!43170 (right!43170 xs!286))) (+ (max!0 (height!2157 (left!42840 (right!43170 (right!43170 xs!286)))) (height!2157 (right!43170 (right!43170 (right!43170 xs!286))))) 1)))))

(declare-fun b!5079141 () Bool)

(assert (=> b!5079141 (= e!3168472 (<= 0 (cheight!15791 (right!43170 (right!43170 xs!286)))))))

(assert (= (and d!1641527 res!2162465) b!5079139))

(assert (= (and b!5079139 res!2162466) b!5079140))

(assert (= (and b!5079140 res!2162467) b!5079141))

(declare-fun m!6130606 () Bool)

(assert (=> d!1641527 m!6130606))

(declare-fun m!6130608 () Bool)

(assert (=> d!1641527 m!6130608))

(declare-fun m!6130610 () Bool)

(assert (=> b!5079140 m!6130610))

(declare-fun m!6130612 () Bool)

(assert (=> b!5079140 m!6130612))

(assert (=> b!5079140 m!6130610))

(assert (=> b!5079140 m!6130612))

(declare-fun m!6130614 () Bool)

(assert (=> b!5079140 m!6130614))

(assert (=> b!5078111 d!1641527))

(declare-fun b!5079145 () Bool)

(declare-fun e!3168474 () Bool)

(declare-fun lt!2090654 () List!58574)

(assert (=> b!5079145 (= e!3168474 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090654 (t!371381 (t!371381 (list!19021 xs!286))))))))

(declare-fun d!1641529 () Bool)

(assert (=> d!1641529 e!3168474))

(declare-fun res!2162468 () Bool)

(assert (=> d!1641529 (=> (not res!2162468) (not e!3168474))))

(assert (=> d!1641529 (= res!2162468 (= (content!10426 lt!2090654) ((_ map or) (content!10426 (t!371381 (t!371381 (list!19021 xs!286)))) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3168473 () List!58574)

(assert (=> d!1641529 (= lt!2090654 e!3168473)))

(declare-fun c!872334 () Bool)

(assert (=> d!1641529 (= c!872334 ((_ is Nil!58450) (t!371381 (t!371381 (list!19021 xs!286)))))))

(assert (=> d!1641529 (= (++!12807 (t!371381 (t!371381 (list!19021 xs!286))) (list!19021 ys!41)) lt!2090654)))

(declare-fun b!5079142 () Bool)

(assert (=> b!5079142 (= e!3168473 (list!19021 ys!41))))

(declare-fun b!5079144 () Bool)

(declare-fun res!2162469 () Bool)

(assert (=> b!5079144 (=> (not res!2162469) (not e!3168474))))

(assert (=> b!5079144 (= res!2162469 (= (size!39108 lt!2090654) (+ (size!39108 (t!371381 (t!371381 (list!19021 xs!286)))) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5079143 () Bool)

(assert (=> b!5079143 (= e!3168473 (Cons!58450 (h!64898 (t!371381 (t!371381 (list!19021 xs!286)))) (++!12807 (t!371381 (t!371381 (t!371381 (list!19021 xs!286)))) (list!19021 ys!41))))))

(assert (= (and d!1641529 c!872334) b!5079142))

(assert (= (and d!1641529 (not c!872334)) b!5079143))

(assert (= (and d!1641529 res!2162468) b!5079144))

(assert (= (and b!5079144 res!2162469) b!5079145))

(declare-fun m!6130616 () Bool)

(assert (=> d!1641529 m!6130616))

(assert (=> d!1641529 m!6129780))

(assert (=> d!1641529 m!6128090))

(assert (=> d!1641529 m!6128322))

(declare-fun m!6130618 () Bool)

(assert (=> b!5079144 m!6130618))

(declare-fun m!6130620 () Bool)

(assert (=> b!5079144 m!6130620))

(assert (=> b!5079144 m!6128090))

(assert (=> b!5079144 m!6128328))

(assert (=> b!5079143 m!6128090))

(declare-fun m!6130622 () Bool)

(assert (=> b!5079143 m!6130622))

(assert (=> b!5078353 d!1641529))

(declare-fun d!1641531 () Bool)

(declare-fun c!872335 () Bool)

(assert (=> d!1641531 (= c!872335 ((_ is Node!15580) (left!42840 (right!43170 (left!42840 xs!286)))))))

(declare-fun e!3168475 () Bool)

(assert (=> d!1641531 (= (inv!77643 (left!42840 (right!43170 (left!42840 xs!286)))) e!3168475)))

(declare-fun b!5079146 () Bool)

(assert (=> b!5079146 (= e!3168475 (inv!77647 (left!42840 (right!43170 (left!42840 xs!286)))))))

(declare-fun b!5079147 () Bool)

(declare-fun e!3168476 () Bool)

(assert (=> b!5079147 (= e!3168475 e!3168476)))

(declare-fun res!2162470 () Bool)

(assert (=> b!5079147 (= res!2162470 (not ((_ is Leaf!25875) (left!42840 (right!43170 (left!42840 xs!286))))))))

(assert (=> b!5079147 (=> res!2162470 e!3168476)))

(declare-fun b!5079148 () Bool)

(assert (=> b!5079148 (= e!3168476 (inv!77648 (left!42840 (right!43170 (left!42840 xs!286)))))))

(assert (= (and d!1641531 c!872335) b!5079146))

(assert (= (and d!1641531 (not c!872335)) b!5079147))

(assert (= (and b!5079147 (not res!2162470)) b!5079148))

(declare-fun m!6130624 () Bool)

(assert (=> b!5079146 m!6130624))

(declare-fun m!6130626 () Bool)

(assert (=> b!5079148 m!6130626))

(assert (=> b!5078648 d!1641531))

(declare-fun d!1641533 () Bool)

(declare-fun c!872336 () Bool)

(assert (=> d!1641533 (= c!872336 ((_ is Node!15580) (right!43170 (right!43170 (left!42840 xs!286)))))))

(declare-fun e!3168477 () Bool)

(assert (=> d!1641533 (= (inv!77643 (right!43170 (right!43170 (left!42840 xs!286)))) e!3168477)))

(declare-fun b!5079149 () Bool)

(assert (=> b!5079149 (= e!3168477 (inv!77647 (right!43170 (right!43170 (left!42840 xs!286)))))))

(declare-fun b!5079150 () Bool)

(declare-fun e!3168478 () Bool)

(assert (=> b!5079150 (= e!3168477 e!3168478)))

(declare-fun res!2162471 () Bool)

(assert (=> b!5079150 (= res!2162471 (not ((_ is Leaf!25875) (right!43170 (right!43170 (left!42840 xs!286))))))))

(assert (=> b!5079150 (=> res!2162471 e!3168478)))

(declare-fun b!5079151 () Bool)

(assert (=> b!5079151 (= e!3168478 (inv!77648 (right!43170 (right!43170 (left!42840 xs!286)))))))

(assert (= (and d!1641533 c!872336) b!5079149))

(assert (= (and d!1641533 (not c!872336)) b!5079150))

(assert (= (and b!5079150 (not res!2162471)) b!5079151))

(declare-fun m!6130628 () Bool)

(assert (=> b!5079149 m!6130628))

(declare-fun m!6130630 () Bool)

(assert (=> b!5079151 m!6130630))

(assert (=> b!5078648 d!1641533))

(declare-fun d!1641535 () Bool)

(declare-fun lt!2090655 () Bool)

(assert (=> d!1641535 (= lt!2090655 (isEmpty!31665 (list!19021 (right!43170 lt!2090471))))))

(assert (=> d!1641535 (= lt!2090655 (= (size!39109 (right!43170 lt!2090471)) 0))))

(assert (=> d!1641535 (= (isEmpty!31663 (right!43170 lt!2090471)) lt!2090655)))

(declare-fun bs!1190570 () Bool)

(assert (= bs!1190570 d!1641535))

(assert (=> bs!1190570 m!6129084))

(assert (=> bs!1190570 m!6129084))

(declare-fun m!6130632 () Bool)

(assert (=> bs!1190570 m!6130632))

(declare-fun m!6130634 () Bool)

(assert (=> bs!1190570 m!6130634))

(assert (=> b!5078093 d!1641535))

(declare-fun d!1641537 () Bool)

(declare-fun res!2162472 () Bool)

(declare-fun e!3168479 () Bool)

(assert (=> d!1641537 (=> (not res!2162472) (not e!3168479))))

(assert (=> d!1641537 (= res!2162472 (= (csize!31390 (left!42840 (right!43170 ys!41))) (+ (size!39109 (left!42840 (left!42840 (right!43170 ys!41)))) (size!39109 (right!43170 (left!42840 (right!43170 ys!41)))))))))

(assert (=> d!1641537 (= (inv!77647 (left!42840 (right!43170 ys!41))) e!3168479)))

(declare-fun b!5079152 () Bool)

(declare-fun res!2162473 () Bool)

(assert (=> b!5079152 (=> (not res!2162473) (not e!3168479))))

(assert (=> b!5079152 (= res!2162473 (and (not (= (left!42840 (left!42840 (right!43170 ys!41))) Empty!15580)) (not (= (right!43170 (left!42840 (right!43170 ys!41))) Empty!15580))))))

(declare-fun b!5079153 () Bool)

(declare-fun res!2162474 () Bool)

(assert (=> b!5079153 (=> (not res!2162474) (not e!3168479))))

(assert (=> b!5079153 (= res!2162474 (= (cheight!15791 (left!42840 (right!43170 ys!41))) (+ (max!0 (height!2157 (left!42840 (left!42840 (right!43170 ys!41)))) (height!2157 (right!43170 (left!42840 (right!43170 ys!41))))) 1)))))

(declare-fun b!5079154 () Bool)

(assert (=> b!5079154 (= e!3168479 (<= 0 (cheight!15791 (left!42840 (right!43170 ys!41)))))))

(assert (= (and d!1641537 res!2162472) b!5079152))

(assert (= (and b!5079152 res!2162473) b!5079153))

(assert (= (and b!5079153 res!2162474) b!5079154))

(declare-fun m!6130636 () Bool)

(assert (=> d!1641537 m!6130636))

(declare-fun m!6130638 () Bool)

(assert (=> d!1641537 m!6130638))

(assert (=> b!5079153 m!6130402))

(assert (=> b!5079153 m!6130404))

(assert (=> b!5079153 m!6130402))

(assert (=> b!5079153 m!6130404))

(declare-fun m!6130640 () Bool)

(assert (=> b!5079153 m!6130640))

(assert (=> b!5078568 d!1641537))

(declare-fun b!5079158 () Bool)

(declare-fun e!3168481 () Bool)

(declare-fun lt!2090656 () List!58574)

(assert (=> b!5079158 (= e!3168481 (or (not (= (list!19021 (right!43170 lt!2090455)) Nil!58450)) (= lt!2090656 (list!19021 (left!42840 lt!2090455)))))))

(declare-fun d!1641539 () Bool)

(assert (=> d!1641539 e!3168481))

(declare-fun res!2162475 () Bool)

(assert (=> d!1641539 (=> (not res!2162475) (not e!3168481))))

(assert (=> d!1641539 (= res!2162475 (= (content!10426 lt!2090656) ((_ map or) (content!10426 (list!19021 (left!42840 lt!2090455))) (content!10426 (list!19021 (right!43170 lt!2090455))))))))

(declare-fun e!3168480 () List!58574)

(assert (=> d!1641539 (= lt!2090656 e!3168480)))

(declare-fun c!872337 () Bool)

(assert (=> d!1641539 (= c!872337 ((_ is Nil!58450) (list!19021 (left!42840 lt!2090455))))))

(assert (=> d!1641539 (= (++!12807 (list!19021 (left!42840 lt!2090455)) (list!19021 (right!43170 lt!2090455))) lt!2090656)))

(declare-fun b!5079155 () Bool)

(assert (=> b!5079155 (= e!3168480 (list!19021 (right!43170 lt!2090455)))))

(declare-fun b!5079157 () Bool)

(declare-fun res!2162476 () Bool)

(assert (=> b!5079157 (=> (not res!2162476) (not e!3168481))))

(assert (=> b!5079157 (= res!2162476 (= (size!39108 lt!2090656) (+ (size!39108 (list!19021 (left!42840 lt!2090455))) (size!39108 (list!19021 (right!43170 lt!2090455))))))))

(declare-fun b!5079156 () Bool)

(assert (=> b!5079156 (= e!3168480 (Cons!58450 (h!64898 (list!19021 (left!42840 lt!2090455))) (++!12807 (t!371381 (list!19021 (left!42840 lt!2090455))) (list!19021 (right!43170 lt!2090455)))))))

(assert (= (and d!1641539 c!872337) b!5079155))

(assert (= (and d!1641539 (not c!872337)) b!5079156))

(assert (= (and d!1641539 res!2162475) b!5079157))

(assert (= (and b!5079157 res!2162476) b!5079158))

(declare-fun m!6130642 () Bool)

(assert (=> d!1641539 m!6130642))

(assert (=> d!1641539 m!6128632))

(declare-fun m!6130644 () Bool)

(assert (=> d!1641539 m!6130644))

(assert (=> d!1641539 m!6128634))

(declare-fun m!6130646 () Bool)

(assert (=> d!1641539 m!6130646))

(declare-fun m!6130648 () Bool)

(assert (=> b!5079157 m!6130648))

(assert (=> b!5079157 m!6128632))

(declare-fun m!6130650 () Bool)

(assert (=> b!5079157 m!6130650))

(assert (=> b!5079157 m!6128634))

(declare-fun m!6130652 () Bool)

(assert (=> b!5079157 m!6130652))

(assert (=> b!5079156 m!6128634))

(declare-fun m!6130654 () Bool)

(assert (=> b!5079156 m!6130654))

(assert (=> b!5078162 d!1641539))

(declare-fun b!5079159 () Bool)

(declare-fun e!3168482 () List!58574)

(assert (=> b!5079159 (= e!3168482 Nil!58450)))

(declare-fun b!5079162 () Bool)

(declare-fun e!3168483 () List!58574)

(assert (=> b!5079162 (= e!3168483 (++!12807 (list!19021 (left!42840 (left!42840 lt!2090455))) (list!19021 (right!43170 (left!42840 lt!2090455)))))))

(declare-fun b!5079161 () Bool)

(assert (=> b!5079161 (= e!3168483 (list!19023 (xs!18946 (left!42840 lt!2090455))))))

(declare-fun d!1641541 () Bool)

(declare-fun c!872338 () Bool)

(assert (=> d!1641541 (= c!872338 ((_ is Empty!15580) (left!42840 lt!2090455)))))

(assert (=> d!1641541 (= (list!19021 (left!42840 lt!2090455)) e!3168482)))

(declare-fun b!5079160 () Bool)

(assert (=> b!5079160 (= e!3168482 e!3168483)))

(declare-fun c!872339 () Bool)

(assert (=> b!5079160 (= c!872339 ((_ is Leaf!25875) (left!42840 lt!2090455)))))

(assert (= (and d!1641541 c!872338) b!5079159))

(assert (= (and d!1641541 (not c!872338)) b!5079160))

(assert (= (and b!5079160 c!872339) b!5079161))

(assert (= (and b!5079160 (not c!872339)) b!5079162))

(declare-fun m!6130656 () Bool)

(assert (=> b!5079162 m!6130656))

(declare-fun m!6130658 () Bool)

(assert (=> b!5079162 m!6130658))

(assert (=> b!5079162 m!6130656))

(assert (=> b!5079162 m!6130658))

(declare-fun m!6130660 () Bool)

(assert (=> b!5079162 m!6130660))

(declare-fun m!6130662 () Bool)

(assert (=> b!5079161 m!6130662))

(assert (=> b!5078162 d!1641541))

(declare-fun b!5079163 () Bool)

(declare-fun e!3168484 () List!58574)

(assert (=> b!5079163 (= e!3168484 Nil!58450)))

(declare-fun b!5079166 () Bool)

(declare-fun e!3168485 () List!58574)

(assert (=> b!5079166 (= e!3168485 (++!12807 (list!19021 (left!42840 (right!43170 lt!2090455))) (list!19021 (right!43170 (right!43170 lt!2090455)))))))

(declare-fun b!5079165 () Bool)

(assert (=> b!5079165 (= e!3168485 (list!19023 (xs!18946 (right!43170 lt!2090455))))))

(declare-fun d!1641543 () Bool)

(declare-fun c!872340 () Bool)

(assert (=> d!1641543 (= c!872340 ((_ is Empty!15580) (right!43170 lt!2090455)))))

(assert (=> d!1641543 (= (list!19021 (right!43170 lt!2090455)) e!3168484)))

(declare-fun b!5079164 () Bool)

(assert (=> b!5079164 (= e!3168484 e!3168485)))

(declare-fun c!872341 () Bool)

(assert (=> b!5079164 (= c!872341 ((_ is Leaf!25875) (right!43170 lt!2090455)))))

(assert (= (and d!1641543 c!872340) b!5079163))

(assert (= (and d!1641543 (not c!872340)) b!5079164))

(assert (= (and b!5079164 c!872341) b!5079165))

(assert (= (and b!5079164 (not c!872341)) b!5079166))

(declare-fun m!6130664 () Bool)

(assert (=> b!5079166 m!6130664))

(declare-fun m!6130666 () Bool)

(assert (=> b!5079166 m!6130666))

(assert (=> b!5079166 m!6130664))

(assert (=> b!5079166 m!6130666))

(declare-fun m!6130668 () Bool)

(assert (=> b!5079166 m!6130668))

(declare-fun m!6130670 () Bool)

(assert (=> b!5079165 m!6130670))

(assert (=> b!5078162 d!1641543))

(declare-fun d!1641545 () Bool)

(declare-fun lt!2090657 () Bool)

(assert (=> d!1641545 (= lt!2090657 (isEmpty!31665 (list!19021 (right!43170 (left!42840 lt!2090452)))))))

(assert (=> d!1641545 (= lt!2090657 (= (size!39109 (right!43170 (left!42840 lt!2090452))) 0))))

(assert (=> d!1641545 (= (isEmpty!31663 (right!43170 (left!42840 lt!2090452))) lt!2090657)))

(declare-fun bs!1190571 () Bool)

(assert (= bs!1190571 d!1641545))

(assert (=> bs!1190571 m!6129042))

(assert (=> bs!1190571 m!6129042))

(declare-fun m!6130672 () Bool)

(assert (=> bs!1190571 m!6130672))

(declare-fun m!6130674 () Bool)

(assert (=> bs!1190571 m!6130674))

(assert (=> b!5078327 d!1641545))

(declare-fun d!1641547 () Bool)

(assert (=> d!1641547 (= (inv!77644 (xs!18946 (left!42840 (right!43170 xs!286)))) (<= (size!39108 (innerList!15668 (xs!18946 (left!42840 (right!43170 xs!286))))) 2147483647))))

(declare-fun bs!1190572 () Bool)

(assert (= bs!1190572 d!1641547))

(declare-fun m!6130676 () Bool)

(assert (=> bs!1190572 m!6130676))

(assert (=> b!5078618 d!1641547))

(assert (=> bm!353857 d!1640761))

(declare-fun d!1641549 () Bool)

(assert (=> d!1641549 (= (isEmpty!31665 (list!19021 (left!42840 lt!2090452))) ((_ is Nil!58450) (list!19021 (left!42840 lt!2090452))))))

(assert (=> d!1640973 d!1641549))

(assert (=> d!1640973 d!1640961))

(declare-fun d!1641551 () Bool)

(declare-fun lt!2090658 () Int)

(assert (=> d!1641551 (= lt!2090658 (size!39108 (list!19021 (left!42840 lt!2090452))))))

(assert (=> d!1641551 (= lt!2090658 (ite ((_ is Empty!15580) (left!42840 lt!2090452)) 0 (ite ((_ is Leaf!25875) (left!42840 lt!2090452)) (csize!31391 (left!42840 lt!2090452)) (csize!31390 (left!42840 lt!2090452)))))))

(assert (=> d!1641551 (= (size!39109 (left!42840 lt!2090452)) lt!2090658)))

(declare-fun bs!1190573 () Bool)

(assert (= bs!1190573 d!1641551))

(assert (=> bs!1190573 m!6128274))

(assert (=> bs!1190573 m!6128274))

(assert (=> bs!1190573 m!6129030))

(assert (=> d!1640973 d!1641551))

(declare-fun b!5079167 () Bool)

(declare-fun e!3168486 () Bool)

(declare-fun call!353953 () List!58574)

(declare-fun call!353951 () List!58574)

(assert (=> b!5079167 (= e!3168486 (= call!353953 call!353951))))

(declare-fun b!5079168 () Bool)

(assert (=> b!5079168 (= e!3168486 (= call!353953 call!353951))))

(declare-fun lt!2090659 () Bool)

(assert (=> b!5079168 (= lt!2090659 (appendAssoc!310 (t!371381 (t!371381 (list!19021 xs!286))) (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun bm!353945 () Bool)

(declare-fun call!353952 () List!58574)

(assert (=> bm!353945 (= call!353952 (++!12807 (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun bm!353946 () Bool)

(declare-fun call!353950 () List!58574)

(assert (=> bm!353946 (= call!353953 (++!12807 call!353950 (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun bm!353947 () Bool)

(assert (=> bm!353947 (= call!353950 (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun d!1641553 () Bool)

(assert (=> d!1641553 e!3168486))

(declare-fun c!872342 () Bool)

(assert (=> d!1641553 (= c!872342 ((_ is Nil!58450) (t!371381 (list!19021 xs!286))))))

(assert (=> d!1641553 (= (appendAssoc!310 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 ys!41))) (list!19021 (right!43170 (left!42840 ys!41)))) true)))

(declare-fun bm!353948 () Bool)

(assert (=> bm!353948 (= call!353951 (++!12807 (t!371381 (list!19021 xs!286)) call!353952))))

(assert (= (and d!1641553 c!872342) b!5079167))

(assert (= (and d!1641553 (not c!872342)) b!5079168))

(assert (= (or b!5079167 b!5079168) bm!353947))

(assert (= (or b!5079167 b!5079168) bm!353945))

(assert (= (or b!5079167 b!5079168) bm!353948))

(assert (= (or b!5079167 b!5079168) bm!353946))

(declare-fun m!6130678 () Bool)

(assert (=> bm!353948 m!6130678))

(assert (=> bm!353946 m!6128436))

(declare-fun m!6130680 () Bool)

(assert (=> bm!353946 m!6130680))

(assert (=> bm!353945 m!6128228))

(assert (=> bm!353945 m!6128436))

(assert (=> bm!353945 m!6128526))

(assert (=> b!5079168 m!6128228))

(assert (=> b!5079168 m!6128436))

(declare-fun m!6130682 () Bool)

(assert (=> b!5079168 m!6130682))

(assert (=> bm!353947 m!6128228))

(assert (=> bm!353947 m!6129098))

(assert (=> b!5078218 d!1641553))

(assert (=> d!1641085 d!1641525))

(assert (=> d!1641085 d!1640813))

(assert (=> d!1640989 d!1641239))

(assert (=> d!1640989 d!1641241))

(assert (=> b!5078223 d!1641219))

(assert (=> b!5078223 d!1641221))

(declare-fun d!1641555 () Bool)

(declare-fun lt!2090660 () Int)

(assert (=> d!1641555 (>= lt!2090660 0)))

(declare-fun e!3168487 () Int)

(assert (=> d!1641555 (= lt!2090660 e!3168487)))

(declare-fun c!872343 () Bool)

(assert (=> d!1641555 (= c!872343 ((_ is Nil!58450) (innerList!15668 (xs!18946 (right!43170 xs!286)))))))

(assert (=> d!1641555 (= (size!39108 (innerList!15668 (xs!18946 (right!43170 xs!286)))) lt!2090660)))

(declare-fun b!5079169 () Bool)

(assert (=> b!5079169 (= e!3168487 0)))

(declare-fun b!5079170 () Bool)

(assert (=> b!5079170 (= e!3168487 (+ 1 (size!39108 (t!371381 (innerList!15668 (xs!18946 (right!43170 xs!286)))))))))

(assert (= (and d!1641555 c!872343) b!5079169))

(assert (= (and d!1641555 (not c!872343)) b!5079170))

(declare-fun m!6130684 () Bool)

(assert (=> b!5079170 m!6130684))

(assert (=> d!1640985 d!1641555))

(declare-fun d!1641557 () Bool)

(declare-fun lt!2090661 () Int)

(assert (=> d!1641557 (>= lt!2090661 0)))

(declare-fun e!3168488 () Int)

(assert (=> d!1641557 (= lt!2090661 e!3168488)))

(declare-fun c!872344 () Bool)

(assert (=> d!1641557 (= c!872344 ((_ is Nil!58450) lt!2090494))))

(assert (=> d!1641557 (= (size!39108 lt!2090494) lt!2090661)))

(declare-fun b!5079171 () Bool)

(assert (=> b!5079171 (= e!3168488 0)))

(declare-fun b!5079172 () Bool)

(assert (=> b!5079172 (= e!3168488 (+ 1 (size!39108 (t!371381 lt!2090494))))))

(assert (= (and d!1641557 c!872344) b!5079171))

(assert (= (and d!1641557 (not c!872344)) b!5079172))

(declare-fun m!6130686 () Bool)

(assert (=> b!5079172 m!6130686))

(assert (=> b!5078098 d!1641557))

(declare-fun d!1641559 () Bool)

(declare-fun lt!2090662 () Int)

(assert (=> d!1641559 (>= lt!2090662 0)))

(declare-fun e!3168489 () Int)

(assert (=> d!1641559 (= lt!2090662 e!3168489)))

(declare-fun c!872345 () Bool)

(assert (=> d!1641559 (= c!872345 ((_ is Nil!58450) (list!19021 (left!42840 ys!41))))))

(assert (=> d!1641559 (= (size!39108 (list!19021 (left!42840 ys!41))) lt!2090662)))

(declare-fun b!5079173 () Bool)

(assert (=> b!5079173 (= e!3168489 0)))

(declare-fun b!5079174 () Bool)

(assert (=> b!5079174 (= e!3168489 (+ 1 (size!39108 (t!371381 (list!19021 (left!42840 ys!41))))))))

(assert (= (and d!1641559 c!872345) b!5079173))

(assert (= (and d!1641559 (not c!872345)) b!5079174))

(assert (=> b!5079174 m!6130426))

(assert (=> b!5078098 d!1641559))

(assert (=> b!5078098 d!1641343))

(assert (=> b!5078459 d!1640797))

(assert (=> b!5078459 d!1641079))

(declare-fun d!1641561 () Bool)

(declare-fun c!872346 () Bool)

(assert (=> d!1641561 (= c!872346 ((_ is Nil!58450) lt!2090500))))

(declare-fun e!3168490 () (InoxSet T!105230))

(assert (=> d!1641561 (= (content!10426 lt!2090500) e!3168490)))

(declare-fun b!5079175 () Bool)

(assert (=> b!5079175 (= e!3168490 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079176 () Bool)

(assert (=> b!5079176 (= e!3168490 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090500) true) (content!10426 (t!371381 lt!2090500))))))

(assert (= (and d!1641561 c!872346) b!5079175))

(assert (= (and d!1641561 (not c!872346)) b!5079176))

(declare-fun m!6130688 () Bool)

(assert (=> b!5079176 m!6130688))

(declare-fun m!6130690 () Bool)

(assert (=> b!5079176 m!6130690))

(assert (=> d!1640809 d!1641561))

(declare-fun d!1641563 () Bool)

(declare-fun c!872347 () Bool)

(assert (=> d!1641563 (= c!872347 ((_ is Nil!58450) (list!19021 lt!2090455)))))

(declare-fun e!3168491 () (InoxSet T!105230))

(assert (=> d!1641563 (= (content!10426 (list!19021 lt!2090455)) e!3168491)))

(declare-fun b!5079177 () Bool)

(assert (=> b!5079177 (= e!3168491 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079178 () Bool)

(assert (=> b!5079178 (= e!3168491 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 lt!2090455)) true) (content!10426 (t!371381 (list!19021 lt!2090455)))))))

(assert (= (and d!1641563 c!872347) b!5079177))

(assert (= (and d!1641563 (not c!872347)) b!5079178))

(declare-fun m!6130692 () Bool)

(assert (=> b!5079178 m!6130692))

(assert (=> b!5079178 m!6130386))

(assert (=> d!1640809 d!1641563))

(declare-fun d!1641565 () Bool)

(declare-fun c!872348 () Bool)

(assert (=> d!1641565 (= c!872348 ((_ is Nil!58450) (list!19021 (right!43170 (left!42840 ys!41)))))))

(declare-fun e!3168492 () (InoxSet T!105230))

(assert (=> d!1641565 (= (content!10426 (list!19021 (right!43170 (left!42840 ys!41)))) e!3168492)))

(declare-fun b!5079179 () Bool)

(assert (=> b!5079179 (= e!3168492 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079180 () Bool)

(assert (=> b!5079180 (= e!3168492 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (right!43170 (left!42840 ys!41)))) true) (content!10426 (t!371381 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(assert (= (and d!1641565 c!872348) b!5079179))

(assert (= (and d!1641565 (not c!872348)) b!5079180))

(declare-fun m!6130694 () Bool)

(assert (=> b!5079180 m!6130694))

(declare-fun m!6130696 () Bool)

(assert (=> b!5079180 m!6130696))

(assert (=> d!1640809 d!1641565))

(declare-fun d!1641567 () Bool)

(declare-fun lt!2090663 () Bool)

(assert (=> d!1641567 (= lt!2090663 (isEmpty!31665 (list!19021 (right!43170 (right!43170 lt!2090452)))))))

(assert (=> d!1641567 (= lt!2090663 (= (size!39109 (right!43170 (right!43170 lt!2090452))) 0))))

(assert (=> d!1641567 (= (isEmpty!31663 (right!43170 (right!43170 lt!2090452))) lt!2090663)))

(declare-fun bs!1190574 () Bool)

(assert (= bs!1190574 d!1641567))

(assert (=> bs!1190574 m!6129054))

(assert (=> bs!1190574 m!6129054))

(declare-fun m!6130698 () Bool)

(assert (=> bs!1190574 m!6130698))

(declare-fun m!6130700 () Bool)

(assert (=> bs!1190574 m!6130700))

(assert (=> b!5078287 d!1641567))

(declare-fun b!5079184 () Bool)

(declare-fun e!3168494 () Bool)

(declare-fun lt!2090664 () List!58574)

(assert (=> b!5079184 (= e!3168494 (or (not (= (list!19021 (right!43170 (left!42840 (left!42840 ys!41)))) Nil!58450)) (= lt!2090664 (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun d!1641569 () Bool)

(assert (=> d!1641569 e!3168494))

(declare-fun res!2162477 () Bool)

(assert (=> d!1641569 (=> (not res!2162477) (not e!3168494))))

(assert (=> d!1641569 (= res!2162477 (= (content!10426 lt!2090664) ((_ map or) (content!10426 (list!19021 (left!42840 (left!42840 (left!42840 ys!41))))) (content!10426 (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))))

(declare-fun e!3168493 () List!58574)

(assert (=> d!1641569 (= lt!2090664 e!3168493)))

(declare-fun c!872349 () Bool)

(assert (=> d!1641569 (= c!872349 ((_ is Nil!58450) (list!19021 (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641569 (= (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))) lt!2090664)))

(declare-fun b!5079181 () Bool)

(assert (=> b!5079181 (= e!3168493 (list!19021 (right!43170 (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5079183 () Bool)

(declare-fun res!2162478 () Bool)

(assert (=> b!5079183 (=> (not res!2162478) (not e!3168494))))

(assert (=> b!5079183 (= res!2162478 (= (size!39108 lt!2090664) (+ (size!39108 (list!19021 (left!42840 (left!42840 (left!42840 ys!41))))) (size!39108 (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))))

(declare-fun b!5079182 () Bool)

(assert (=> b!5079182 (= e!3168493 (Cons!58450 (h!64898 (list!19021 (left!42840 (left!42840 (left!42840 ys!41))))) (++!12807 (t!371381 (list!19021 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41)))))))))

(assert (= (and d!1641569 c!872349) b!5079181))

(assert (= (and d!1641569 (not c!872349)) b!5079182))

(assert (= (and d!1641569 res!2162477) b!5079183))

(assert (= (and b!5079183 res!2162478) b!5079184))

(declare-fun m!6130702 () Bool)

(assert (=> d!1641569 m!6130702))

(assert (=> d!1641569 m!6128668))

(declare-fun m!6130704 () Bool)

(assert (=> d!1641569 m!6130704))

(assert (=> d!1641569 m!6128670))

(declare-fun m!6130706 () Bool)

(assert (=> d!1641569 m!6130706))

(declare-fun m!6130708 () Bool)

(assert (=> b!5079183 m!6130708))

(assert (=> b!5079183 m!6128668))

(declare-fun m!6130710 () Bool)

(assert (=> b!5079183 m!6130710))

(assert (=> b!5079183 m!6128670))

(declare-fun m!6130712 () Bool)

(assert (=> b!5079183 m!6130712))

(assert (=> b!5079182 m!6128670))

(declare-fun m!6130714 () Bool)

(assert (=> b!5079182 m!6130714))

(assert (=> b!5078222 d!1641569))

(declare-fun b!5079185 () Bool)

(declare-fun e!3168495 () List!58574)

(assert (=> b!5079185 (= e!3168495 Nil!58450)))

(declare-fun b!5079188 () Bool)

(declare-fun e!3168496 () List!58574)

(assert (=> b!5079188 (= e!3168496 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5079187 () Bool)

(assert (=> b!5079187 (= e!3168496 (list!19023 (xs!18946 (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun d!1641571 () Bool)

(declare-fun c!872350 () Bool)

(assert (=> d!1641571 (= c!872350 ((_ is Empty!15580) (left!42840 (left!42840 (left!42840 ys!41)))))))

(assert (=> d!1641571 (= (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))) e!3168495)))

(declare-fun b!5079186 () Bool)

(assert (=> b!5079186 (= e!3168495 e!3168496)))

(declare-fun c!872351 () Bool)

(assert (=> b!5079186 (= c!872351 ((_ is Leaf!25875) (left!42840 (left!42840 (left!42840 ys!41)))))))

(assert (= (and d!1641571 c!872350) b!5079185))

(assert (= (and d!1641571 (not c!872350)) b!5079186))

(assert (= (and b!5079186 c!872351) b!5079187))

(assert (= (and b!5079186 (not c!872351)) b!5079188))

(assert (=> b!5079188 m!6128674))

(assert (=> b!5079188 m!6128676))

(assert (=> b!5079188 m!6128674))

(assert (=> b!5079188 m!6128676))

(assert (=> b!5079188 m!6130358))

(declare-fun m!6130716 () Bool)

(assert (=> b!5079187 m!6130716))

(assert (=> b!5078222 d!1641571))

(assert (=> b!5078222 d!1641189))

(declare-fun b!5079189 () Bool)

(declare-fun e!3168497 () Bool)

(declare-fun call!353957 () List!58574)

(declare-fun call!353955 () List!58574)

(assert (=> b!5079189 (= e!3168497 (= call!353957 call!353955))))

(declare-fun b!5079190 () Bool)

(assert (=> b!5079190 (= e!3168497 (= call!353957 call!353955))))

(declare-fun lt!2090665 () Bool)

(assert (=> b!5079190 (= lt!2090665 (appendAssoc!310 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353949 () Bool)

(declare-fun call!353956 () List!58574)

(assert (=> bm!353949 (= call!353956 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353950 () Bool)

(declare-fun call!353954 () List!58574)

(assert (=> bm!353950 (= call!353957 (++!12807 call!353954 (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353951 () Bool)

(assert (=> bm!353951 (= call!353954 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 ys!41))))))))

(declare-fun d!1641573 () Bool)

(assert (=> d!1641573 e!3168497))

(declare-fun c!872352 () Bool)

(assert (=> d!1641573 (= c!872352 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1641573 (= (appendAssoc!310 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 (left!42840 ys!41))))) true)))

(declare-fun bm!353952 () Bool)

(assert (=> bm!353952 (= call!353955 (++!12807 (list!19021 xs!286) call!353956))))

(assert (= (and d!1641573 c!872352) b!5079189))

(assert (= (and d!1641573 (not c!872352)) b!5079190))

(assert (= (or b!5079189 b!5079190) bm!353951))

(assert (= (or b!5079189 b!5079190) bm!353949))

(assert (= (or b!5079189 b!5079190) bm!353952))

(assert (= (or b!5079189 b!5079190) bm!353950))

(assert (=> bm!353952 m!6128088))

(declare-fun m!6130718 () Bool)

(assert (=> bm!353952 m!6130718))

(assert (=> bm!353950 m!6128670))

(declare-fun m!6130720 () Bool)

(assert (=> bm!353950 m!6130720))

(assert (=> bm!353949 m!6128668))

(assert (=> bm!353949 m!6128670))

(assert (=> bm!353949 m!6128738))

(assert (=> b!5079190 m!6128668))

(assert (=> b!5079190 m!6128670))

(declare-fun m!6130722 () Bool)

(assert (=> b!5079190 m!6130722))

(assert (=> bm!353951 m!6128088))

(assert (=> bm!353951 m!6128668))

(declare-fun m!6130724 () Bool)

(assert (=> bm!353951 m!6130724))

(assert (=> b!5078175 d!1641573))

(assert (=> b!5078175 d!1640727))

(assert (=> b!5078175 d!1641571))

(assert (=> b!5078175 d!1641189))

(declare-fun b!5079191 () Bool)

(declare-fun e!3168498 () Bool)

(declare-fun call!353961 () List!58574)

(declare-fun call!353959 () List!58574)

(assert (=> b!5079191 (= e!3168498 (= call!353961 call!353959))))

(declare-fun b!5079192 () Bool)

(assert (=> b!5079192 (= e!3168498 (= call!353961 call!353959))))

(declare-fun lt!2090666 () Bool)

(assert (=> b!5079192 (= lt!2090666 (appendAssoc!310 (t!371381 (t!371381 (list!19021 (left!42840 xs!286)))) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))

(declare-fun bm!353953 () Bool)

(declare-fun call!353960 () List!58574)

(assert (=> bm!353953 (= call!353960 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))

(declare-fun bm!353954 () Bool)

(declare-fun call!353958 () List!58574)

(assert (=> bm!353954 (= call!353961 (++!12807 call!353958 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))

(declare-fun bm!353955 () Bool)

(assert (=> bm!353955 (= call!353958 (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (left!42840 (right!43170 xs!286)))))))

(declare-fun d!1641575 () Bool)

(assert (=> d!1641575 e!3168498))

(declare-fun c!872353 () Bool)

(assert (=> d!1641575 (= c!872353 ((_ is Nil!58450) (t!371381 (list!19021 (left!42840 xs!286)))))))

(assert (=> d!1641575 (= (appendAssoc!310 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))) true)))

(declare-fun bm!353956 () Bool)

(assert (=> bm!353956 (= call!353959 (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) call!353960))))

(assert (= (and d!1641575 c!872353) b!5079191))

(assert (= (and d!1641575 (not c!872353)) b!5079192))

(assert (= (or b!5079191 b!5079192) bm!353955))

(assert (= (or b!5079191 b!5079192) bm!353953))

(assert (= (or b!5079191 b!5079192) bm!353956))

(assert (= (or b!5079191 b!5079192) bm!353954))

(declare-fun m!6130726 () Bool)

(assert (=> bm!353956 m!6130726))

(assert (=> bm!353954 m!6128430))

(declare-fun m!6130728 () Bool)

(assert (=> bm!353954 m!6130728))

(assert (=> bm!353953 m!6128424))

(assert (=> bm!353953 m!6128430))

(assert (=> bm!353953 m!6129310))

(assert (=> b!5079192 m!6128424))

(assert (=> b!5079192 m!6128430))

(declare-fun m!6130730 () Bool)

(assert (=> b!5079192 m!6130730))

(assert (=> bm!353955 m!6128424))

(assert (=> bm!353955 m!6129764))

(assert (=> b!5078511 d!1641575))

(assert (=> d!1640983 d!1641279))

(assert (=> d!1640983 d!1641281))

(declare-fun d!1641577 () Bool)

(declare-fun lt!2090667 () Bool)

(assert (=> d!1641577 (= lt!2090667 (isEmpty!31665 (list!19021 (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641577 (= lt!2090667 (= (size!39109 (right!43170 (left!42840 ys!41))) 0))))

(assert (=> d!1641577 (= (isEmpty!31663 (right!43170 (left!42840 ys!41))) lt!2090667)))

(declare-fun bs!1190575 () Bool)

(assert (= bs!1190575 d!1641577))

(assert (=> bs!1190575 m!6128436))

(assert (=> bs!1190575 m!6128436))

(declare-fun m!6130732 () Bool)

(assert (=> bs!1190575 m!6130732))

(assert (=> bs!1190575 m!6128464))

(assert (=> b!5078461 d!1641577))

(declare-fun d!1641579 () Bool)

(assert (=> d!1641579 (= (list!19023 (xs!18946 (left!42840 (right!43170 xs!286)))) (innerList!15668 (xs!18946 (left!42840 (right!43170 xs!286)))))))

(assert (=> b!5078516 d!1641579))

(assert (=> b!5078277 d!1641299))

(assert (=> b!5078277 d!1641301))

(declare-fun d!1641581 () Bool)

(declare-fun c!872354 () Bool)

(assert (=> d!1641581 (= c!872354 ((_ is Nil!58450) lt!2090557))))

(declare-fun e!3168499 () (InoxSet T!105230))

(assert (=> d!1641581 (= (content!10426 lt!2090557) e!3168499)))

(declare-fun b!5079193 () Bool)

(assert (=> b!5079193 (= e!3168499 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079194 () Bool)

(assert (=> b!5079194 (= e!3168499 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090557) true) (content!10426 (t!371381 lt!2090557))))))

(assert (= (and d!1641581 c!872354) b!5079193))

(assert (= (and d!1641581 (not c!872354)) b!5079194))

(declare-fun m!6130734 () Bool)

(assert (=> b!5079194 m!6130734))

(declare-fun m!6130736 () Bool)

(assert (=> b!5079194 m!6130736))

(assert (=> d!1641069 d!1641581))

(declare-fun d!1641583 () Bool)

(declare-fun c!872355 () Bool)

(assert (=> d!1641583 (= c!872355 ((_ is Nil!58450) (list!19021 (right!43170 (right!43170 xs!286)))))))

(declare-fun e!3168500 () (InoxSet T!105230))

(assert (=> d!1641583 (= (content!10426 (list!19021 (right!43170 (right!43170 xs!286)))) e!3168500)))

(declare-fun b!5079195 () Bool)

(assert (=> b!5079195 (= e!3168500 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079196 () Bool)

(assert (=> b!5079196 (= e!3168500 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (right!43170 (right!43170 xs!286)))) true) (content!10426 (t!371381 (list!19021 (right!43170 (right!43170 xs!286)))))))))

(assert (= (and d!1641583 c!872355) b!5079195))

(assert (= (and d!1641583 (not c!872355)) b!5079196))

(declare-fun m!6130738 () Bool)

(assert (=> b!5079196 m!6130738))

(declare-fun m!6130740 () Bool)

(assert (=> b!5079196 m!6130740))

(assert (=> d!1641069 d!1641583))

(assert (=> d!1641069 d!1641003))

(declare-fun lt!2090668 () List!58574)

(declare-fun e!3168502 () Bool)

(declare-fun b!5079200 () Bool)

(assert (=> b!5079200 (= e!3168502 (or (not (= (list!19021 (right!43170 ys!41)) Nil!58450)) (= lt!2090668 call!353902)))))

(declare-fun d!1641585 () Bool)

(assert (=> d!1641585 e!3168502))

(declare-fun res!2162479 () Bool)

(assert (=> d!1641585 (=> (not res!2162479) (not e!3168502))))

(assert (=> d!1641585 (= res!2162479 (= (content!10426 lt!2090668) ((_ map or) (content!10426 call!353902) (content!10426 (list!19021 (right!43170 ys!41))))))))

(declare-fun e!3168501 () List!58574)

(assert (=> d!1641585 (= lt!2090668 e!3168501)))

(declare-fun c!872356 () Bool)

(assert (=> d!1641585 (= c!872356 ((_ is Nil!58450) call!353902))))

(assert (=> d!1641585 (= (++!12807 call!353902 (list!19021 (right!43170 ys!41))) lt!2090668)))

(declare-fun b!5079197 () Bool)

(assert (=> b!5079197 (= e!3168501 (list!19021 (right!43170 ys!41)))))

(declare-fun b!5079199 () Bool)

(declare-fun res!2162480 () Bool)

(assert (=> b!5079199 (=> (not res!2162480) (not e!3168502))))

(assert (=> b!5079199 (= res!2162480 (= (size!39108 lt!2090668) (+ (size!39108 call!353902) (size!39108 (list!19021 (right!43170 ys!41))))))))

(declare-fun b!5079198 () Bool)

(assert (=> b!5079198 (= e!3168501 (Cons!58450 (h!64898 call!353902) (++!12807 (t!371381 call!353902) (list!19021 (right!43170 ys!41)))))))

(assert (= (and d!1641585 c!872356) b!5079197))

(assert (= (and d!1641585 (not c!872356)) b!5079198))

(assert (= (and d!1641585 res!2162479) b!5079199))

(assert (= (and b!5079199 res!2162480) b!5079200))

(declare-fun m!6130742 () Bool)

(assert (=> d!1641585 m!6130742))

(declare-fun m!6130744 () Bool)

(assert (=> d!1641585 m!6130744))

(assert (=> d!1641585 m!6128342))

(assert (=> d!1641585 m!6128514))

(declare-fun m!6130746 () Bool)

(assert (=> b!5079199 m!6130746))

(declare-fun m!6130748 () Bool)

(assert (=> b!5079199 m!6130748))

(assert (=> b!5079199 m!6128342))

(assert (=> b!5079199 m!6128522))

(assert (=> b!5079198 m!6128342))

(declare-fun m!6130750 () Bool)

(assert (=> b!5079198 m!6130750))

(assert (=> bm!353898 d!1641585))

(declare-fun b!5079201 () Bool)

(declare-fun res!2162486 () Bool)

(declare-fun e!3168504 () Bool)

(assert (=> b!5079201 (=> (not res!2162486) (not e!3168504))))

(assert (=> b!5079201 (= res!2162486 (isBalanced!4442 (left!42840 lt!2090519)))))

(declare-fun b!5079202 () Bool)

(declare-fun res!2162482 () Bool)

(assert (=> b!5079202 (=> (not res!2162482) (not e!3168504))))

(assert (=> b!5079202 (= res!2162482 (<= (- (height!2157 (left!42840 lt!2090519)) (height!2157 (right!43170 lt!2090519))) 1))))

(declare-fun d!1641587 () Bool)

(declare-fun res!2162485 () Bool)

(declare-fun e!3168503 () Bool)

(assert (=> d!1641587 (=> res!2162485 e!3168503)))

(assert (=> d!1641587 (= res!2162485 (not ((_ is Node!15580) lt!2090519)))))

(assert (=> d!1641587 (= (isBalanced!4442 lt!2090519) e!3168503)))

(declare-fun b!5079203 () Bool)

(declare-fun res!2162483 () Bool)

(assert (=> b!5079203 (=> (not res!2162483) (not e!3168504))))

(assert (=> b!5079203 (= res!2162483 (isBalanced!4442 (right!43170 lt!2090519)))))

(declare-fun b!5079204 () Bool)

(assert (=> b!5079204 (= e!3168504 (not (isEmpty!31663 (right!43170 lt!2090519))))))

(declare-fun b!5079205 () Bool)

(declare-fun res!2162481 () Bool)

(assert (=> b!5079205 (=> (not res!2162481) (not e!3168504))))

(assert (=> b!5079205 (= res!2162481 (not (isEmpty!31663 (left!42840 lt!2090519))))))

(declare-fun b!5079206 () Bool)

(assert (=> b!5079206 (= e!3168503 e!3168504)))

(declare-fun res!2162484 () Bool)

(assert (=> b!5079206 (=> (not res!2162484) (not e!3168504))))

(assert (=> b!5079206 (= res!2162484 (<= (- 1) (- (height!2157 (left!42840 lt!2090519)) (height!2157 (right!43170 lt!2090519)))))))

(assert (= (and d!1641587 (not res!2162485)) b!5079206))

(assert (= (and b!5079206 res!2162484) b!5079202))

(assert (= (and b!5079202 res!2162482) b!5079201))

(assert (= (and b!5079201 res!2162486) b!5079203))

(assert (= (and b!5079203 res!2162483) b!5079205))

(assert (= (and b!5079205 res!2162481) b!5079204))

(declare-fun m!6130752 () Bool)

(assert (=> b!5079203 m!6130752))

(declare-fun m!6130754 () Bool)

(assert (=> b!5079205 m!6130754))

(declare-fun m!6130756 () Bool)

(assert (=> b!5079204 m!6130756))

(declare-fun m!6130758 () Bool)

(assert (=> b!5079206 m!6130758))

(declare-fun m!6130760 () Bool)

(assert (=> b!5079206 m!6130760))

(declare-fun m!6130762 () Bool)

(assert (=> b!5079201 m!6130762))

(assert (=> b!5079202 m!6130758))

(assert (=> b!5079202 m!6130760))

(assert (=> b!5078239 d!1641587))

(assert (=> b!5078579 d!1641427))

(assert (=> b!5078579 d!1641429))

(declare-fun b!5079207 () Bool)

(declare-fun res!2162492 () Bool)

(declare-fun e!3168506 () Bool)

(assert (=> b!5079207 (=> (not res!2162492) (not e!3168506))))

(assert (=> b!5079207 (= res!2162492 (isBalanced!4442 (left!42840 (left!42840 (left!42840 xs!286)))))))

(declare-fun b!5079208 () Bool)

(declare-fun res!2162488 () Bool)

(assert (=> b!5079208 (=> (not res!2162488) (not e!3168506))))

(assert (=> b!5079208 (= res!2162488 (<= (- (height!2157 (left!42840 (left!42840 (left!42840 xs!286)))) (height!2157 (right!43170 (left!42840 (left!42840 xs!286))))) 1))))

(declare-fun d!1641589 () Bool)

(declare-fun res!2162491 () Bool)

(declare-fun e!3168505 () Bool)

(assert (=> d!1641589 (=> res!2162491 e!3168505)))

(assert (=> d!1641589 (= res!2162491 (not ((_ is Node!15580) (left!42840 (left!42840 xs!286)))))))

(assert (=> d!1641589 (= (isBalanced!4442 (left!42840 (left!42840 xs!286))) e!3168505)))

(declare-fun b!5079209 () Bool)

(declare-fun res!2162489 () Bool)

(assert (=> b!5079209 (=> (not res!2162489) (not e!3168506))))

(assert (=> b!5079209 (= res!2162489 (isBalanced!4442 (right!43170 (left!42840 (left!42840 xs!286)))))))

(declare-fun b!5079210 () Bool)

(assert (=> b!5079210 (= e!3168506 (not (isEmpty!31663 (right!43170 (left!42840 (left!42840 xs!286))))))))

(declare-fun b!5079211 () Bool)

(declare-fun res!2162487 () Bool)

(assert (=> b!5079211 (=> (not res!2162487) (not e!3168506))))

(assert (=> b!5079211 (= res!2162487 (not (isEmpty!31663 (left!42840 (left!42840 (left!42840 xs!286))))))))

(declare-fun b!5079212 () Bool)

(assert (=> b!5079212 (= e!3168505 e!3168506)))

(declare-fun res!2162490 () Bool)

(assert (=> b!5079212 (=> (not res!2162490) (not e!3168506))))

(assert (=> b!5079212 (= res!2162490 (<= (- 1) (- (height!2157 (left!42840 (left!42840 (left!42840 xs!286)))) (height!2157 (right!43170 (left!42840 (left!42840 xs!286)))))))))

(assert (= (and d!1641589 (not res!2162491)) b!5079212))

(assert (= (and b!5079212 res!2162490) b!5079208))

(assert (= (and b!5079208 res!2162488) b!5079207))

(assert (= (and b!5079207 res!2162492) b!5079209))

(assert (= (and b!5079209 res!2162489) b!5079211))

(assert (= (and b!5079211 res!2162487) b!5079210))

(declare-fun m!6130764 () Bool)

(assert (=> b!5079209 m!6130764))

(declare-fun m!6130766 () Bool)

(assert (=> b!5079211 m!6130766))

(declare-fun m!6130768 () Bool)

(assert (=> b!5079210 m!6130768))

(declare-fun m!6130770 () Bool)

(assert (=> b!5079212 m!6130770))

(declare-fun m!6130772 () Bool)

(assert (=> b!5079212 m!6130772))

(declare-fun m!6130774 () Bool)

(assert (=> b!5079207 m!6130774))

(assert (=> b!5079208 m!6130770))

(assert (=> b!5079208 m!6130772))

(assert (=> b!5078300 d!1641589))

(declare-fun d!1641591 () Bool)

(assert (=> d!1641591 (= (inv!77644 (xs!18946 (right!43170 (left!42840 xs!286)))) (<= (size!39108 (innerList!15668 (xs!18946 (right!43170 (left!42840 xs!286))))) 2147483647))))

(declare-fun bs!1190576 () Bool)

(assert (= bs!1190576 d!1641591))

(declare-fun m!6130776 () Bool)

(assert (=> bs!1190576 m!6130776))

(assert (=> b!5078649 d!1641591))

(declare-fun d!1641593 () Bool)

(declare-fun lt!2090669 () Int)

(assert (=> d!1641593 (>= lt!2090669 0)))

(declare-fun e!3168507 () Int)

(assert (=> d!1641593 (= lt!2090669 e!3168507)))

(declare-fun c!872357 () Bool)

(assert (=> d!1641593 (= c!872357 ((_ is Nil!58450) lt!2090535))))

(assert (=> d!1641593 (= (size!39108 lt!2090535) lt!2090669)))

(declare-fun b!5079213 () Bool)

(assert (=> b!5079213 (= e!3168507 0)))

(declare-fun b!5079214 () Bool)

(assert (=> b!5079214 (= e!3168507 (+ 1 (size!39108 (t!371381 lt!2090535))))))

(assert (= (and d!1641593 c!872357) b!5079213))

(assert (= (and d!1641593 (not c!872357)) b!5079214))

(declare-fun m!6130778 () Bool)

(assert (=> b!5079214 m!6130778))

(assert (=> b!5078354 d!1641593))

(declare-fun d!1641595 () Bool)

(declare-fun lt!2090670 () Int)

(assert (=> d!1641595 (>= lt!2090670 0)))

(declare-fun e!3168508 () Int)

(assert (=> d!1641595 (= lt!2090670 e!3168508)))

(declare-fun c!872358 () Bool)

(assert (=> d!1641595 (= c!872358 ((_ is Nil!58450) (t!371381 (list!19021 xs!286))))))

(assert (=> d!1641595 (= (size!39108 (t!371381 (list!19021 xs!286))) lt!2090670)))

(declare-fun b!5079215 () Bool)

(assert (=> b!5079215 (= e!3168508 0)))

(declare-fun b!5079216 () Bool)

(assert (=> b!5079216 (= e!3168508 (+ 1 (size!39108 (t!371381 (t!371381 (list!19021 xs!286))))))))

(assert (= (and d!1641595 c!872358) b!5079215))

(assert (= (and d!1641595 (not c!872358)) b!5079216))

(assert (=> b!5079216 m!6130620))

(assert (=> b!5078354 d!1641595))

(assert (=> b!5078354 d!1641117))

(declare-fun b!5079217 () Bool)

(declare-fun res!2162498 () Bool)

(declare-fun e!3168510 () Bool)

(assert (=> b!5079217 (=> (not res!2162498) (not e!3168510))))

(assert (=> b!5079217 (= res!2162498 (isBalanced!4442 (left!42840 (right!43170 (right!43170 ys!41)))))))

(declare-fun b!5079218 () Bool)

(declare-fun res!2162494 () Bool)

(assert (=> b!5079218 (=> (not res!2162494) (not e!3168510))))

(assert (=> b!5079218 (= res!2162494 (<= (- (height!2157 (left!42840 (right!43170 (right!43170 ys!41)))) (height!2157 (right!43170 (right!43170 (right!43170 ys!41))))) 1))))

(declare-fun d!1641597 () Bool)

(declare-fun res!2162497 () Bool)

(declare-fun e!3168509 () Bool)

(assert (=> d!1641597 (=> res!2162497 e!3168509)))

(assert (=> d!1641597 (= res!2162497 (not ((_ is Node!15580) (right!43170 (right!43170 ys!41)))))))

(assert (=> d!1641597 (= (isBalanced!4442 (right!43170 (right!43170 ys!41))) e!3168509)))

(declare-fun b!5079219 () Bool)

(declare-fun res!2162495 () Bool)

(assert (=> b!5079219 (=> (not res!2162495) (not e!3168510))))

(assert (=> b!5079219 (= res!2162495 (isBalanced!4442 (right!43170 (right!43170 (right!43170 ys!41)))))))

(declare-fun b!5079220 () Bool)

(assert (=> b!5079220 (= e!3168510 (not (isEmpty!31663 (right!43170 (right!43170 (right!43170 ys!41))))))))

(declare-fun b!5079221 () Bool)

(declare-fun res!2162493 () Bool)

(assert (=> b!5079221 (=> (not res!2162493) (not e!3168510))))

(assert (=> b!5079221 (= res!2162493 (not (isEmpty!31663 (left!42840 (right!43170 (right!43170 ys!41))))))))

(declare-fun b!5079222 () Bool)

(assert (=> b!5079222 (= e!3168509 e!3168510)))

(declare-fun res!2162496 () Bool)

(assert (=> b!5079222 (=> (not res!2162496) (not e!3168510))))

(assert (=> b!5079222 (= res!2162496 (<= (- 1) (- (height!2157 (left!42840 (right!43170 (right!43170 ys!41)))) (height!2157 (right!43170 (right!43170 (right!43170 ys!41)))))))))

(assert (= (and d!1641597 (not res!2162497)) b!5079222))

(assert (= (and b!5079222 res!2162496) b!5079218))

(assert (= (and b!5079218 res!2162494) b!5079217))

(assert (= (and b!5079217 res!2162498) b!5079219))

(assert (= (and b!5079219 res!2162495) b!5079221))

(assert (= (and b!5079221 res!2162493) b!5079220))

(declare-fun m!6130780 () Bool)

(assert (=> b!5079219 m!6130780))

(declare-fun m!6130782 () Bool)

(assert (=> b!5079221 m!6130782))

(declare-fun m!6130784 () Bool)

(assert (=> b!5079220 m!6130784))

(assert (=> b!5079222 m!6129770))

(assert (=> b!5079222 m!6129772))

(declare-fun m!6130786 () Bool)

(assert (=> b!5079217 m!6130786))

(assert (=> b!5079218 m!6129770))

(assert (=> b!5079218 m!6129772))

(assert (=> b!5078564 d!1641597))

(declare-fun b!5079226 () Bool)

(declare-fun lt!2090671 () List!58574)

(declare-fun e!3168512 () Bool)

(assert (=> b!5079226 (= e!3168512 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090671 (t!371381 (list!19021 (right!43170 (right!43170 xs!286)))))))))

(declare-fun d!1641599 () Bool)

(assert (=> d!1641599 e!3168512))

(declare-fun res!2162499 () Bool)

(assert (=> d!1641599 (=> (not res!2162499) (not e!3168512))))

(assert (=> d!1641599 (= res!2162499 (= (content!10426 lt!2090671) ((_ map or) (content!10426 (t!371381 (list!19021 (right!43170 (right!43170 xs!286))))) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3168511 () List!58574)

(assert (=> d!1641599 (= lt!2090671 e!3168511)))

(declare-fun c!872359 () Bool)

(assert (=> d!1641599 (= c!872359 ((_ is Nil!58450) (t!371381 (list!19021 (right!43170 (right!43170 xs!286))))))))

(assert (=> d!1641599 (= (++!12807 (t!371381 (list!19021 (right!43170 (right!43170 xs!286)))) (list!19021 ys!41)) lt!2090671)))

(declare-fun b!5079223 () Bool)

(assert (=> b!5079223 (= e!3168511 (list!19021 ys!41))))

(declare-fun b!5079225 () Bool)

(declare-fun res!2162500 () Bool)

(assert (=> b!5079225 (=> (not res!2162500) (not e!3168512))))

(assert (=> b!5079225 (= res!2162500 (= (size!39108 lt!2090671) (+ (size!39108 (t!371381 (list!19021 (right!43170 (right!43170 xs!286))))) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5079224 () Bool)

(assert (=> b!5079224 (= e!3168511 (Cons!58450 (h!64898 (t!371381 (list!19021 (right!43170 (right!43170 xs!286))))) (++!12807 (t!371381 (t!371381 (list!19021 (right!43170 (right!43170 xs!286))))) (list!19021 ys!41))))))

(assert (= (and d!1641599 c!872359) b!5079223))

(assert (= (and d!1641599 (not c!872359)) b!5079224))

(assert (= (and d!1641599 res!2162499) b!5079225))

(assert (= (and b!5079225 res!2162500) b!5079226))

(declare-fun m!6130788 () Bool)

(assert (=> d!1641599 m!6130788))

(assert (=> d!1641599 m!6130740))

(assert (=> d!1641599 m!6128090))

(assert (=> d!1641599 m!6128322))

(declare-fun m!6130790 () Bool)

(assert (=> b!5079225 m!6130790))

(declare-fun m!6130792 () Bool)

(assert (=> b!5079225 m!6130792))

(assert (=> b!5079225 m!6128090))

(assert (=> b!5079225 m!6128328))

(assert (=> b!5079224 m!6128090))

(declare-fun m!6130794 () Bool)

(assert (=> b!5079224 m!6130794))

(assert (=> b!5078523 d!1641599))

(declare-fun d!1641601 () Bool)

(assert (=> d!1641601 (= (isEmpty!31665 (list!19021 (left!42840 ys!41))) ((_ is Nil!58450) (list!19021 (left!42840 ys!41))))))

(assert (=> d!1641073 d!1641601))

(assert (=> d!1641073 d!1640767))

(assert (=> d!1641073 d!1641451))

(declare-fun d!1641603 () Bool)

(declare-fun c!872360 () Bool)

(assert (=> d!1641603 (= c!872360 ((_ is Node!15580) (left!42840 (left!42840 (left!42840 ys!41)))))))

(declare-fun e!3168513 () Bool)

(assert (=> d!1641603 (= (inv!77643 (left!42840 (left!42840 (left!42840 ys!41)))) e!3168513)))

(declare-fun b!5079227 () Bool)

(assert (=> b!5079227 (= e!3168513 (inv!77647 (left!42840 (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5079228 () Bool)

(declare-fun e!3168514 () Bool)

(assert (=> b!5079228 (= e!3168513 e!3168514)))

(declare-fun res!2162501 () Bool)

(assert (=> b!5079228 (= res!2162501 (not ((_ is Leaf!25875) (left!42840 (left!42840 (left!42840 ys!41))))))))

(assert (=> b!5079228 (=> res!2162501 e!3168514)))

(declare-fun b!5079229 () Bool)

(assert (=> b!5079229 (= e!3168514 (inv!77648 (left!42840 (left!42840 (left!42840 ys!41)))))))

(assert (= (and d!1641603 c!872360) b!5079227))

(assert (= (and d!1641603 (not c!872360)) b!5079228))

(assert (= (and b!5079228 (not res!2162501)) b!5079229))

(declare-fun m!6130796 () Bool)

(assert (=> b!5079227 m!6130796))

(declare-fun m!6130798 () Bool)

(assert (=> b!5079229 m!6130798))

(assert (=> b!5078656 d!1641603))

(declare-fun d!1641605 () Bool)

(declare-fun c!872361 () Bool)

(assert (=> d!1641605 (= c!872361 ((_ is Node!15580) (right!43170 (left!42840 (left!42840 ys!41)))))))

(declare-fun e!3168515 () Bool)

(assert (=> d!1641605 (= (inv!77643 (right!43170 (left!42840 (left!42840 ys!41)))) e!3168515)))

(declare-fun b!5079230 () Bool)

(assert (=> b!5079230 (= e!3168515 (inv!77647 (right!43170 (left!42840 (left!42840 ys!41)))))))

(declare-fun b!5079231 () Bool)

(declare-fun e!3168516 () Bool)

(assert (=> b!5079231 (= e!3168515 e!3168516)))

(declare-fun res!2162502 () Bool)

(assert (=> b!5079231 (= res!2162502 (not ((_ is Leaf!25875) (right!43170 (left!42840 (left!42840 ys!41))))))))

(assert (=> b!5079231 (=> res!2162502 e!3168516)))

(declare-fun b!5079232 () Bool)

(assert (=> b!5079232 (= e!3168516 (inv!77648 (right!43170 (left!42840 (left!42840 ys!41)))))))

(assert (= (and d!1641605 c!872361) b!5079230))

(assert (= (and d!1641605 (not c!872361)) b!5079231))

(assert (= (and b!5079231 (not res!2162502)) b!5079232))

(declare-fun m!6130800 () Bool)

(assert (=> b!5079230 m!6130800))

(declare-fun m!6130802 () Bool)

(assert (=> b!5079232 m!6130802))

(assert (=> b!5078656 d!1641605))

(declare-fun d!1641607 () Bool)

(declare-fun lt!2090672 () Bool)

(assert (=> d!1641607 (= lt!2090672 (isEmpty!31665 (list!19021 (left!42840 lt!2090471))))))

(assert (=> d!1641607 (= lt!2090672 (= (size!39109 (left!42840 lt!2090471)) 0))))

(assert (=> d!1641607 (= (isEmpty!31663 (left!42840 lt!2090471)) lt!2090672)))

(declare-fun bs!1190577 () Bool)

(assert (= bs!1190577 d!1641607))

(assert (=> bs!1190577 m!6129082))

(assert (=> bs!1190577 m!6129082))

(declare-fun m!6130804 () Bool)

(assert (=> bs!1190577 m!6130804))

(declare-fun m!6130806 () Bool)

(assert (=> bs!1190577 m!6130806))

(assert (=> b!5078094 d!1641607))

(declare-fun d!1641609 () Bool)

(declare-fun lt!2090673 () Int)

(assert (=> d!1641609 (>= lt!2090673 0)))

(declare-fun e!3168517 () Int)

(assert (=> d!1641609 (= lt!2090673 e!3168517)))

(declare-fun c!872362 () Bool)

(assert (=> d!1641609 (= c!872362 ((_ is Nil!58450) (innerList!15668 (xs!18946 (right!43170 ys!41)))))))

(assert (=> d!1641609 (= (size!39108 (innerList!15668 (xs!18946 (right!43170 ys!41)))) lt!2090673)))

(declare-fun b!5079233 () Bool)

(assert (=> b!5079233 (= e!3168517 0)))

(declare-fun b!5079234 () Bool)

(assert (=> b!5079234 (= e!3168517 (+ 1 (size!39108 (t!371381 (innerList!15668 (xs!18946 (right!43170 ys!41)))))))))

(assert (= (and d!1641609 c!872362) b!5079233))

(assert (= (and d!1641609 (not c!872362)) b!5079234))

(declare-fun m!6130808 () Bool)

(assert (=> b!5079234 m!6130808))

(assert (=> d!1640953 d!1641609))

(declare-fun d!1641611 () Bool)

(declare-fun lt!2090674 () Bool)

(assert (=> d!1641611 (= lt!2090674 (isEmpty!31665 (list!19021 (left!42840 (left!42840 lt!2090452)))))))

(assert (=> d!1641611 (= lt!2090674 (= (size!39109 (left!42840 (left!42840 lt!2090452))) 0))))

(assert (=> d!1641611 (= (isEmpty!31663 (left!42840 (left!42840 lt!2090452))) lt!2090674)))

(declare-fun bs!1190578 () Bool)

(assert (= bs!1190578 d!1641611))

(assert (=> bs!1190578 m!6129040))

(assert (=> bs!1190578 m!6129040))

(declare-fun m!6130810 () Bool)

(assert (=> bs!1190578 m!6130810))

(declare-fun m!6130812 () Bool)

(assert (=> bs!1190578 m!6130812))

(assert (=> b!5078328 d!1641611))

(declare-fun d!1641613 () Bool)

(assert (=> d!1641613 (= (max!0 (height!2157 (left!42840 xs!286)) (height!2157 (right!43170 xs!286))) (ite (< (height!2157 (left!42840 xs!286)) (height!2157 (right!43170 xs!286))) (height!2157 (right!43170 xs!286)) (height!2157 (left!42840 xs!286))))))

(assert (=> b!5078465 d!1641613))

(assert (=> b!5078465 d!1641101))

(assert (=> b!5078465 d!1641103))

(declare-fun d!1641615 () Bool)

(declare-fun lt!2090675 () Bool)

(assert (=> d!1641615 (= lt!2090675 (isEmpty!31665 (list!19021 (left!42840 (right!43170 lt!2090452)))))))

(assert (=> d!1641615 (= lt!2090675 (= (size!39109 (left!42840 (right!43170 lt!2090452))) 0))))

(assert (=> d!1641615 (= (isEmpty!31663 (left!42840 (right!43170 lt!2090452))) lt!2090675)))

(declare-fun bs!1190579 () Bool)

(assert (= bs!1190579 d!1641615))

(assert (=> bs!1190579 m!6129052))

(assert (=> bs!1190579 m!6129052))

(declare-fun m!6130814 () Bool)

(assert (=> bs!1190579 m!6130814))

(declare-fun m!6130816 () Bool)

(assert (=> bs!1190579 m!6130816))

(assert (=> b!5078288 d!1641615))

(declare-fun d!1641617 () Bool)

(declare-fun res!2162503 () Bool)

(declare-fun e!3168518 () Bool)

(assert (=> d!1641617 (=> (not res!2162503) (not e!3168518))))

(assert (=> d!1641617 (= res!2162503 (= (csize!31390 (left!42840 (left!42840 xs!286))) (+ (size!39109 (left!42840 (left!42840 (left!42840 xs!286)))) (size!39109 (right!43170 (left!42840 (left!42840 xs!286)))))))))

(assert (=> d!1641617 (= (inv!77647 (left!42840 (left!42840 xs!286))) e!3168518)))

(declare-fun b!5079235 () Bool)

(declare-fun res!2162504 () Bool)

(assert (=> b!5079235 (=> (not res!2162504) (not e!3168518))))

(assert (=> b!5079235 (= res!2162504 (and (not (= (left!42840 (left!42840 (left!42840 xs!286))) Empty!15580)) (not (= (right!43170 (left!42840 (left!42840 xs!286))) Empty!15580))))))

(declare-fun b!5079236 () Bool)

(declare-fun res!2162505 () Bool)

(assert (=> b!5079236 (=> (not res!2162505) (not e!3168518))))

(assert (=> b!5079236 (= res!2162505 (= (cheight!15791 (left!42840 (left!42840 xs!286))) (+ (max!0 (height!2157 (left!42840 (left!42840 (left!42840 xs!286)))) (height!2157 (right!43170 (left!42840 (left!42840 xs!286))))) 1)))))

(declare-fun b!5079237 () Bool)

(assert (=> b!5079237 (= e!3168518 (<= 0 (cheight!15791 (left!42840 (left!42840 xs!286)))))))

(assert (= (and d!1641617 res!2162503) b!5079235))

(assert (= (and b!5079235 res!2162504) b!5079236))

(assert (= (and b!5079236 res!2162505) b!5079237))

(declare-fun m!6130818 () Bool)

(assert (=> d!1641617 m!6130818))

(declare-fun m!6130820 () Bool)

(assert (=> d!1641617 m!6130820))

(assert (=> b!5079236 m!6130770))

(assert (=> b!5079236 m!6130772))

(assert (=> b!5079236 m!6130770))

(assert (=> b!5079236 m!6130772))

(declare-fun m!6130822 () Bool)

(assert (=> b!5079236 m!6130822))

(assert (=> b!5078471 d!1641617))

(declare-fun lt!2090676 () List!58574)

(declare-fun e!3168520 () Bool)

(declare-fun b!5079241 () Bool)

(assert (=> b!5079241 (= e!3168520 (or (not (= (list!19021 (right!43170 ys!41)) Nil!58450)) (= lt!2090676 call!353862)))))

(declare-fun d!1641619 () Bool)

(assert (=> d!1641619 e!3168520))

(declare-fun res!2162506 () Bool)

(assert (=> d!1641619 (=> (not res!2162506) (not e!3168520))))

(assert (=> d!1641619 (= res!2162506 (= (content!10426 lt!2090676) ((_ map or) (content!10426 call!353862) (content!10426 (list!19021 (right!43170 ys!41))))))))

(declare-fun e!3168519 () List!58574)

(assert (=> d!1641619 (= lt!2090676 e!3168519)))

(declare-fun c!872363 () Bool)

(assert (=> d!1641619 (= c!872363 ((_ is Nil!58450) call!353862))))

(assert (=> d!1641619 (= (++!12807 call!353862 (list!19021 (right!43170 ys!41))) lt!2090676)))

(declare-fun b!5079238 () Bool)

(assert (=> b!5079238 (= e!3168519 (list!19021 (right!43170 ys!41)))))

(declare-fun b!5079240 () Bool)

(declare-fun res!2162507 () Bool)

(assert (=> b!5079240 (=> (not res!2162507) (not e!3168520))))

(assert (=> b!5079240 (= res!2162507 (= (size!39108 lt!2090676) (+ (size!39108 call!353862) (size!39108 (list!19021 (right!43170 ys!41))))))))

(declare-fun b!5079239 () Bool)

(assert (=> b!5079239 (= e!3168519 (Cons!58450 (h!64898 call!353862) (++!12807 (t!371381 call!353862) (list!19021 (right!43170 ys!41)))))))

(assert (= (and d!1641619 c!872363) b!5079238))

(assert (= (and d!1641619 (not c!872363)) b!5079239))

(assert (= (and d!1641619 res!2162506) b!5079240))

(assert (= (and b!5079240 res!2162507) b!5079241))

(declare-fun m!6130824 () Bool)

(assert (=> d!1641619 m!6130824))

(declare-fun m!6130826 () Bool)

(assert (=> d!1641619 m!6130826))

(assert (=> d!1641619 m!6128342))

(assert (=> d!1641619 m!6128514))

(declare-fun m!6130828 () Bool)

(assert (=> b!5079240 m!6130828))

(declare-fun m!6130830 () Bool)

(assert (=> b!5079240 m!6130830))

(assert (=> b!5079240 m!6128342))

(assert (=> b!5079240 m!6128522))

(assert (=> b!5079239 m!6128342))

(declare-fun m!6130832 () Bool)

(assert (=> b!5079239 m!6130832))

(assert (=> bm!353858 d!1641619))

(assert (=> bm!353817 d!1641363))

(declare-fun b!5079242 () Bool)

(declare-fun e!3168521 () List!58574)

(assert (=> b!5079242 (= e!3168521 Nil!58450)))

(declare-fun b!5079245 () Bool)

(declare-fun e!3168522 () List!58574)

(assert (=> b!5079245 (= e!3168522 (++!12807 (list!19021 (left!42840 lt!2090496)) (list!19021 (right!43170 lt!2090496))))))

(declare-fun b!5079244 () Bool)

(assert (=> b!5079244 (= e!3168522 (list!19023 (xs!18946 lt!2090496)))))

(declare-fun d!1641621 () Bool)

(declare-fun c!872364 () Bool)

(assert (=> d!1641621 (= c!872364 ((_ is Empty!15580) lt!2090496))))

(assert (=> d!1641621 (= (list!19021 lt!2090496) e!3168521)))

(declare-fun b!5079243 () Bool)

(assert (=> b!5079243 (= e!3168521 e!3168522)))

(declare-fun c!872365 () Bool)

(assert (=> b!5079243 (= c!872365 ((_ is Leaf!25875) lt!2090496))))

(assert (= (and d!1641621 c!872364) b!5079242))

(assert (= (and d!1641621 (not c!872364)) b!5079243))

(assert (= (and b!5079243 c!872365) b!5079244))

(assert (= (and b!5079243 (not c!872365)) b!5079245))

(declare-fun m!6130834 () Bool)

(assert (=> b!5079245 m!6130834))

(declare-fun m!6130836 () Bool)

(assert (=> b!5079245 m!6130836))

(assert (=> b!5079245 m!6130834))

(assert (=> b!5079245 m!6130836))

(declare-fun m!6130838 () Bool)

(assert (=> b!5079245 m!6130838))

(declare-fun m!6130840 () Bool)

(assert (=> b!5079244 m!6130840))

(assert (=> d!1640799 d!1641621))

(declare-fun b!5079249 () Bool)

(declare-fun lt!2090677 () List!58574)

(declare-fun e!3168524 () Bool)

(assert (=> b!5079249 (= e!3168524 (or (not (= (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) Nil!58450)) (= lt!2090677 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun d!1641623 () Bool)

(assert (=> d!1641623 e!3168524))

(declare-fun res!2162508 () Bool)

(assert (=> d!1641623 (=> (not res!2162508) (not e!3168524))))

(assert (=> d!1641623 (= res!2162508 (= (content!10426 lt!2090677) ((_ map or) (content!10426 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))) (content!10426 (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun e!3168523 () List!58574)

(assert (=> d!1641623 (= lt!2090677 e!3168523)))

(declare-fun c!872366 () Bool)

(assert (=> d!1641623 (= c!872366 ((_ is Nil!58450) (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(assert (=> d!1641623 (= (++!12807 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))) lt!2090677)))

(declare-fun b!5079246 () Bool)

(assert (=> b!5079246 (= e!3168523 (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))

(declare-fun b!5079248 () Bool)

(declare-fun res!2162509 () Bool)

(assert (=> b!5079248 (=> (not res!2162509) (not e!3168524))))

(assert (=> b!5079248 (= res!2162509 (= (size!39108 lt!2090677) (+ (size!39108 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))) (size!39108 (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun b!5079247 () Bool)

(assert (=> b!5079247 (= e!3168523 (Cons!58450 (h!64898 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))) (++!12807 (t!371381 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))) (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))))

(assert (= (and d!1641623 c!872366) b!5079246))

(assert (= (and d!1641623 (not c!872366)) b!5079247))

(assert (= (and d!1641623 res!2162508) b!5079248))

(assert (= (and b!5079248 res!2162509) b!5079249))

(declare-fun m!6130842 () Bool)

(assert (=> d!1641623 m!6130842))

(assert (=> d!1641623 m!6128588))

(declare-fun m!6130844 () Bool)

(assert (=> d!1641623 m!6130844))

(assert (=> d!1641623 m!6128590))

(declare-fun m!6130846 () Bool)

(assert (=> d!1641623 m!6130846))

(declare-fun m!6130848 () Bool)

(assert (=> b!5079248 m!6130848))

(assert (=> b!5079248 m!6128588))

(declare-fun m!6130850 () Bool)

(assert (=> b!5079248 m!6130850))

(assert (=> b!5079248 m!6128590))

(declare-fun m!6130852 () Bool)

(assert (=> b!5079248 m!6130852))

(assert (=> b!5079247 m!6128590))

(declare-fun m!6130854 () Bool)

(assert (=> b!5079247 m!6130854))

(assert (=> d!1640799 d!1641623))

(declare-fun b!5079250 () Bool)

(declare-fun e!3168525 () List!58574)

(assert (=> b!5079250 (= e!3168525 Nil!58450)))

(declare-fun b!5079253 () Bool)

(declare-fun e!3168526 () List!58574)

(assert (=> b!5079253 (= e!3168526 (++!12807 (list!19021 (left!42840 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))) (list!19021 (right!43170 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun b!5079252 () Bool)

(assert (=> b!5079252 (= e!3168526 (list!19023 (xs!18946 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun d!1641625 () Bool)

(declare-fun c!872367 () Bool)

(assert (=> d!1641625 (= c!872367 ((_ is Empty!15580) (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(assert (=> d!1641625 (= (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) e!3168525)))

(declare-fun b!5079251 () Bool)

(assert (=> b!5079251 (= e!3168525 e!3168526)))

(declare-fun c!872368 () Bool)

(assert (=> b!5079251 (= c!872368 ((_ is Leaf!25875) (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(assert (= (and d!1641625 c!872367) b!5079250))

(assert (= (and d!1641625 (not c!872367)) b!5079251))

(assert (= (and b!5079251 c!872368) b!5079252))

(assert (= (and b!5079251 (not c!872368)) b!5079253))

(declare-fun m!6130856 () Bool)

(assert (=> b!5079253 m!6130856))

(declare-fun m!6130858 () Bool)

(assert (=> b!5079253 m!6130858))

(assert (=> b!5079253 m!6130856))

(assert (=> b!5079253 m!6130858))

(declare-fun m!6130860 () Bool)

(assert (=> b!5079253 m!6130860))

(declare-fun m!6130862 () Bool)

(assert (=> b!5079252 m!6130862))

(assert (=> d!1640799 d!1641625))

(declare-fun b!5079254 () Bool)

(declare-fun e!3168527 () List!58574)

(assert (=> b!5079254 (= e!3168527 Nil!58450)))

(declare-fun e!3168528 () List!58574)

(declare-fun b!5079257 () Bool)

(assert (=> b!5079257 (= e!3168528 (++!12807 (list!19021 (left!42840 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))) (list!19021 (right!43170 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079256 () Bool)

(assert (=> b!5079256 (= e!3168528 (list!19023 (xs!18946 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun c!872369 () Bool)

(declare-fun d!1641627 () Bool)

(assert (=> d!1641627 (= c!872369 ((_ is Empty!15580) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))

(assert (=> d!1641627 (= (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) e!3168527)))

(declare-fun b!5079255 () Bool)

(assert (=> b!5079255 (= e!3168527 e!3168528)))

(declare-fun c!872370 () Bool)

(assert (=> b!5079255 (= c!872370 ((_ is Leaf!25875) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))

(assert (= (and d!1641627 c!872369) b!5079254))

(assert (= (and d!1641627 (not c!872369)) b!5079255))

(assert (= (and b!5079255 c!872370) b!5079256))

(assert (= (and b!5079255 (not c!872370)) b!5079257))

(declare-fun m!6130864 () Bool)

(assert (=> b!5079257 m!6130864))

(declare-fun m!6130866 () Bool)

(assert (=> b!5079257 m!6130866))

(assert (=> b!5079257 m!6130864))

(assert (=> b!5079257 m!6130866))

(declare-fun m!6130868 () Bool)

(assert (=> b!5079257 m!6130868))

(declare-fun m!6130870 () Bool)

(assert (=> b!5079256 m!6130870))

(assert (=> d!1640799 d!1641627))

(declare-fun b!5079261 () Bool)

(declare-fun e!3168530 () Bool)

(declare-fun lt!2090678 () List!58574)

(assert (=> b!5079261 (= e!3168530 (or (not (= (list!19021 (right!43170 (left!42840 (right!43170 xs!286)))) Nil!58450)) (= lt!2090678 (list!19021 (left!42840 (left!42840 (right!43170 xs!286)))))))))

(declare-fun d!1641629 () Bool)

(assert (=> d!1641629 e!3168530))

(declare-fun res!2162510 () Bool)

(assert (=> d!1641629 (=> (not res!2162510) (not e!3168530))))

(assert (=> d!1641629 (= res!2162510 (= (content!10426 lt!2090678) ((_ map or) (content!10426 (list!19021 (left!42840 (left!42840 (right!43170 xs!286))))) (content!10426 (list!19021 (right!43170 (left!42840 (right!43170 xs!286))))))))))

(declare-fun e!3168529 () List!58574)

(assert (=> d!1641629 (= lt!2090678 e!3168529)))

(declare-fun c!872371 () Bool)

(assert (=> d!1641629 (= c!872371 ((_ is Nil!58450) (list!19021 (left!42840 (left!42840 (right!43170 xs!286))))))))

(assert (=> d!1641629 (= (++!12807 (list!19021 (left!42840 (left!42840 (right!43170 xs!286)))) (list!19021 (right!43170 (left!42840 (right!43170 xs!286))))) lt!2090678)))

(declare-fun b!5079258 () Bool)

(assert (=> b!5079258 (= e!3168529 (list!19021 (right!43170 (left!42840 (right!43170 xs!286)))))))

(declare-fun b!5079260 () Bool)

(declare-fun res!2162511 () Bool)

(assert (=> b!5079260 (=> (not res!2162511) (not e!3168530))))

(assert (=> b!5079260 (= res!2162511 (= (size!39108 lt!2090678) (+ (size!39108 (list!19021 (left!42840 (left!42840 (right!43170 xs!286))))) (size!39108 (list!19021 (right!43170 (left!42840 (right!43170 xs!286))))))))))

(declare-fun b!5079259 () Bool)

(assert (=> b!5079259 (= e!3168529 (Cons!58450 (h!64898 (list!19021 (left!42840 (left!42840 (right!43170 xs!286))))) (++!12807 (t!371381 (list!19021 (left!42840 (left!42840 (right!43170 xs!286))))) (list!19021 (right!43170 (left!42840 (right!43170 xs!286)))))))))

(assert (= (and d!1641629 c!872371) b!5079258))

(assert (= (and d!1641629 (not c!872371)) b!5079259))

(assert (= (and d!1641629 res!2162510) b!5079260))

(assert (= (and b!5079260 res!2162511) b!5079261))

(declare-fun m!6130872 () Bool)

(assert (=> d!1641629 m!6130872))

(assert (=> d!1641629 m!6129322))

(declare-fun m!6130874 () Bool)

(assert (=> d!1641629 m!6130874))

(assert (=> d!1641629 m!6129324))

(declare-fun m!6130876 () Bool)

(assert (=> d!1641629 m!6130876))

(declare-fun m!6130878 () Bool)

(assert (=> b!5079260 m!6130878))

(assert (=> b!5079260 m!6129322))

(declare-fun m!6130880 () Bool)

(assert (=> b!5079260 m!6130880))

(assert (=> b!5079260 m!6129324))

(declare-fun m!6130882 () Bool)

(assert (=> b!5079260 m!6130882))

(assert (=> b!5079259 m!6129324))

(declare-fun m!6130884 () Bool)

(assert (=> b!5079259 m!6130884))

(assert (=> b!5078517 d!1641629))

(declare-fun b!5079262 () Bool)

(declare-fun e!3168531 () List!58574)

(assert (=> b!5079262 (= e!3168531 Nil!58450)))

(declare-fun b!5079265 () Bool)

(declare-fun e!3168532 () List!58574)

(assert (=> b!5079265 (= e!3168532 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 (right!43170 xs!286))))) (list!19021 (right!43170 (left!42840 (left!42840 (right!43170 xs!286)))))))))

(declare-fun b!5079264 () Bool)

(assert (=> b!5079264 (= e!3168532 (list!19023 (xs!18946 (left!42840 (left!42840 (right!43170 xs!286))))))))

(declare-fun d!1641631 () Bool)

(declare-fun c!872372 () Bool)

(assert (=> d!1641631 (= c!872372 ((_ is Empty!15580) (left!42840 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641631 (= (list!19021 (left!42840 (left!42840 (right!43170 xs!286)))) e!3168531)))

(declare-fun b!5079263 () Bool)

(assert (=> b!5079263 (= e!3168531 e!3168532)))

(declare-fun c!872373 () Bool)

(assert (=> b!5079263 (= c!872373 ((_ is Leaf!25875) (left!42840 (left!42840 (right!43170 xs!286)))))))

(assert (= (and d!1641631 c!872372) b!5079262))

(assert (= (and d!1641631 (not c!872372)) b!5079263))

(assert (= (and b!5079263 c!872373) b!5079264))

(assert (= (and b!5079263 (not c!872373)) b!5079265))

(declare-fun m!6130886 () Bool)

(assert (=> b!5079265 m!6130886))

(declare-fun m!6130888 () Bool)

(assert (=> b!5079265 m!6130888))

(assert (=> b!5079265 m!6130886))

(assert (=> b!5079265 m!6130888))

(declare-fun m!6130890 () Bool)

(assert (=> b!5079265 m!6130890))

(declare-fun m!6130892 () Bool)

(assert (=> b!5079264 m!6130892))

(assert (=> b!5078517 d!1641631))

(declare-fun b!5079266 () Bool)

(declare-fun e!3168533 () List!58574)

(assert (=> b!5079266 (= e!3168533 Nil!58450)))

(declare-fun b!5079269 () Bool)

(declare-fun e!3168534 () List!58574)

(assert (=> b!5079269 (= e!3168534 (++!12807 (list!19021 (left!42840 (right!43170 (left!42840 (right!43170 xs!286))))) (list!19021 (right!43170 (right!43170 (left!42840 (right!43170 xs!286)))))))))

(declare-fun b!5079268 () Bool)

(assert (=> b!5079268 (= e!3168534 (list!19023 (xs!18946 (right!43170 (left!42840 (right!43170 xs!286))))))))

(declare-fun d!1641633 () Bool)

(declare-fun c!872374 () Bool)

(assert (=> d!1641633 (= c!872374 ((_ is Empty!15580) (right!43170 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641633 (= (list!19021 (right!43170 (left!42840 (right!43170 xs!286)))) e!3168533)))

(declare-fun b!5079267 () Bool)

(assert (=> b!5079267 (= e!3168533 e!3168534)))

(declare-fun c!872375 () Bool)

(assert (=> b!5079267 (= c!872375 ((_ is Leaf!25875) (right!43170 (left!42840 (right!43170 xs!286)))))))

(assert (= (and d!1641633 c!872374) b!5079266))

(assert (= (and d!1641633 (not c!872374)) b!5079267))

(assert (= (and b!5079267 c!872375) b!5079268))

(assert (= (and b!5079267 (not c!872375)) b!5079269))

(declare-fun m!6130894 () Bool)

(assert (=> b!5079269 m!6130894))

(declare-fun m!6130896 () Bool)

(assert (=> b!5079269 m!6130896))

(assert (=> b!5079269 m!6130894))

(assert (=> b!5079269 m!6130896))

(declare-fun m!6130898 () Bool)

(assert (=> b!5079269 m!6130898))

(declare-fun m!6130900 () Bool)

(assert (=> b!5079268 m!6130900))

(assert (=> b!5078517 d!1641633))

(declare-fun d!1641635 () Bool)

(declare-fun res!2162512 () Bool)

(declare-fun e!3168535 () Bool)

(assert (=> d!1641635 (=> (not res!2162512) (not e!3168535))))

(assert (=> d!1641635 (= res!2162512 (<= (size!39108 (list!19023 (xs!18946 (left!42840 (left!42840 xs!286))))) 512))))

(assert (=> d!1641635 (= (inv!77648 (left!42840 (left!42840 xs!286))) e!3168535)))

(declare-fun b!5079270 () Bool)

(declare-fun res!2162513 () Bool)

(assert (=> b!5079270 (=> (not res!2162513) (not e!3168535))))

(assert (=> b!5079270 (= res!2162513 (= (csize!31391 (left!42840 (left!42840 xs!286))) (size!39108 (list!19023 (xs!18946 (left!42840 (left!42840 xs!286)))))))))

(declare-fun b!5079271 () Bool)

(assert (=> b!5079271 (= e!3168535 (and (> (csize!31391 (left!42840 (left!42840 xs!286))) 0) (<= (csize!31391 (left!42840 (left!42840 xs!286))) 512)))))

(assert (= (and d!1641635 res!2162512) b!5079270))

(assert (= (and b!5079270 res!2162513) b!5079271))

(declare-fun m!6130902 () Bool)

(assert (=> d!1641635 m!6130902))

(assert (=> d!1641635 m!6130902))

(declare-fun m!6130904 () Bool)

(assert (=> d!1641635 m!6130904))

(assert (=> b!5079270 m!6130902))

(assert (=> b!5079270 m!6130902))

(assert (=> b!5079270 m!6130904))

(assert (=> b!5078473 d!1641635))

(declare-fun b!5079275 () Bool)

(declare-fun lt!2090679 () List!58574)

(declare-fun e!3168537 () Bool)

(assert (=> b!5079275 (= e!3168537 (or (not (= (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)) Nil!58450)) (= lt!2090679 (list!19021 (left!42840 (right!43170 xs!286))))))))

(declare-fun d!1641637 () Bool)

(assert (=> d!1641637 e!3168537))

(declare-fun res!2162514 () Bool)

(assert (=> d!1641637 (=> (not res!2162514) (not e!3168537))))

(assert (=> d!1641637 (= res!2162514 (= (content!10426 lt!2090679) ((_ map or) (content!10426 (list!19021 (left!42840 (right!43170 xs!286)))) (content!10426 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))))

(declare-fun e!3168536 () List!58574)

(assert (=> d!1641637 (= lt!2090679 e!3168536)))

(declare-fun c!872376 () Bool)

(assert (=> d!1641637 (= c!872376 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 xs!286)))))))

(assert (=> d!1641637 (= (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))) lt!2090679)))

(declare-fun b!5079272 () Bool)

(assert (=> b!5079272 (= e!3168536 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))

(declare-fun b!5079274 () Bool)

(declare-fun res!2162515 () Bool)

(assert (=> b!5079274 (=> (not res!2162515) (not e!3168537))))

(assert (=> b!5079274 (= res!2162515 (= (size!39108 lt!2090679) (+ (size!39108 (list!19021 (left!42840 (right!43170 xs!286)))) (size!39108 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))))

(declare-fun b!5079273 () Bool)

(assert (=> b!5079273 (= e!3168536 (Cons!58450 (h!64898 (list!19021 (left!42840 (right!43170 xs!286)))) (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 xs!286)))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))))

(assert (= (and d!1641637 c!872376) b!5079272))

(assert (= (and d!1641637 (not c!872376)) b!5079273))

(assert (= (and d!1641637 res!2162514) b!5079274))

(assert (= (and b!5079274 res!2162515) b!5079275))

(declare-fun m!6130906 () Bool)

(assert (=> d!1641637 m!6130906))

(assert (=> d!1641637 m!6128424))

(assert (=> d!1641637 m!6129760))

(assert (=> d!1641637 m!6128430))

(declare-fun m!6130908 () Bool)

(assert (=> d!1641637 m!6130908))

(declare-fun m!6130910 () Bool)

(assert (=> b!5079274 m!6130910))

(assert (=> b!5079274 m!6128424))

(assert (=> b!5079274 m!6129718))

(assert (=> b!5079274 m!6128430))

(declare-fun m!6130912 () Bool)

(assert (=> b!5079274 m!6130912))

(assert (=> b!5079273 m!6128430))

(declare-fun m!6130914 () Bool)

(assert (=> b!5079273 m!6130914))

(assert (=> bm!353873 d!1641637))

(declare-fun d!1641639 () Bool)

(declare-fun lt!2090680 () Bool)

(assert (=> d!1641639 (= lt!2090680 (isEmpty!31665 (list!19021 (left!42840 (left!42840 ys!41)))))))

(assert (=> d!1641639 (= lt!2090680 (= (size!39109 (left!42840 (left!42840 ys!41))) 0))))

(assert (=> d!1641639 (= (isEmpty!31663 (left!42840 (left!42840 ys!41))) lt!2090680)))

(declare-fun bs!1190580 () Bool)

(assert (= bs!1190580 d!1641639))

(assert (=> bs!1190580 m!6128228))

(assert (=> bs!1190580 m!6128228))

(declare-fun m!6130916 () Bool)

(assert (=> bs!1190580 m!6130916))

(assert (=> bs!1190580 m!6128582))

(assert (=> b!5078462 d!1641639))

(declare-fun b!5079279 () Bool)

(declare-fun e!3168539 () Bool)

(declare-fun lt!2090681 () List!58574)

(assert (=> b!5079279 (= e!3168539 (or (not (= call!353864 Nil!58450)) (= lt!2090681 (list!19021 xs!286))))))

(declare-fun d!1641641 () Bool)

(assert (=> d!1641641 e!3168539))

(declare-fun res!2162516 () Bool)

(assert (=> d!1641641 (=> (not res!2162516) (not e!3168539))))

(assert (=> d!1641641 (= res!2162516 (= (content!10426 lt!2090681) ((_ map or) (content!10426 (list!19021 xs!286)) (content!10426 call!353864))))))

(declare-fun e!3168538 () List!58574)

(assert (=> d!1641641 (= lt!2090681 e!3168538)))

(declare-fun c!872377 () Bool)

(assert (=> d!1641641 (= c!872377 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1641641 (= (++!12807 (list!19021 xs!286) call!353864) lt!2090681)))

(declare-fun b!5079276 () Bool)

(assert (=> b!5079276 (= e!3168538 call!353864)))

(declare-fun b!5079278 () Bool)

(declare-fun res!2162517 () Bool)

(assert (=> b!5079278 (=> (not res!2162517) (not e!3168539))))

(assert (=> b!5079278 (= res!2162517 (= (size!39108 lt!2090681) (+ (size!39108 (list!19021 xs!286)) (size!39108 call!353864))))))

(declare-fun b!5079277 () Bool)

(assert (=> b!5079277 (= e!3168538 (Cons!58450 (h!64898 (list!19021 xs!286)) (++!12807 (t!371381 (list!19021 xs!286)) call!353864)))))

(assert (= (and d!1641641 c!872377) b!5079276))

(assert (= (and d!1641641 (not c!872377)) b!5079277))

(assert (= (and d!1641641 res!2162516) b!5079278))

(assert (= (and b!5079278 res!2162517) b!5079279))

(declare-fun m!6130918 () Bool)

(assert (=> d!1641641 m!6130918))

(assert (=> d!1641641 m!6128088))

(assert (=> d!1641641 m!6128320))

(declare-fun m!6130920 () Bool)

(assert (=> d!1641641 m!6130920))

(declare-fun m!6130922 () Bool)

(assert (=> b!5079278 m!6130922))

(assert (=> b!5079278 m!6128088))

(assert (=> b!5079278 m!6128326))

(declare-fun m!6130924 () Bool)

(assert (=> b!5079278 m!6130924))

(declare-fun m!6130926 () Bool)

(assert (=> b!5079277 m!6130926))

(assert (=> bm!353860 d!1641641))

(declare-fun lt!2090682 () Conc!15580)

(declare-fun d!1641643 () Bool)

(assert (=> d!1641643 (= (list!19021 lt!2090682) (++!12807 (list!19021 (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516)))) (list!19021 (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844)))))))

(declare-fun e!3168540 () Conc!15580)

(assert (=> d!1641643 (= lt!2090682 e!3168540)))

(declare-fun c!872378 () Bool)

(assert (=> d!1641643 (= c!872378 (= (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516))) Empty!15580))))

(assert (=> d!1641643 (= (<>!400 (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516))) (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844))) lt!2090682)))

(declare-fun e!3168541 () Conc!15580)

(declare-fun b!5079282 () Bool)

(assert (=> b!5079282 (= e!3168541 (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516))))))

(declare-fun b!5079283 () Bool)

(assert (=> b!5079283 (= e!3168541 (Node!15580 (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516))) (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844)) (+ (size!39109 (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516)))) (size!39109 (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844)))) (+ (max!0 (height!2157 (ite c!872092 (ite c!872090 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) call!353849) (ite c!872088 call!353851 (ite c!872091 call!353844 lt!2090516)))) (height!2157 (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844)))) 1)))))

(declare-fun b!5079280 () Bool)

(assert (=> b!5079280 (= e!3168540 (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844)))))

(declare-fun b!5079281 () Bool)

(assert (=> b!5079281 (= e!3168540 e!3168541)))

(declare-fun c!872379 () Bool)

(assert (=> b!5079281 (= c!872379 (= (ite c!872092 (ite c!872090 call!353849 lt!2090517) (ite (or c!872088 c!872091) (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) call!353844)) Empty!15580))))

(assert (= (and d!1641643 c!872378) b!5079280))

(assert (= (and d!1641643 (not c!872378)) b!5079281))

(assert (= (and b!5079281 c!872379) b!5079282))

(assert (= (and b!5079281 (not c!872379)) b!5079283))

(declare-fun m!6130928 () Bool)

(assert (=> d!1641643 m!6130928))

(declare-fun m!6130930 () Bool)

(assert (=> d!1641643 m!6130930))

(declare-fun m!6130932 () Bool)

(assert (=> d!1641643 m!6130932))

(assert (=> d!1641643 m!6130930))

(assert (=> d!1641643 m!6130932))

(declare-fun m!6130934 () Bool)

(assert (=> d!1641643 m!6130934))

(declare-fun m!6130936 () Bool)

(assert (=> b!5079283 m!6130936))

(declare-fun m!6130938 () Bool)

(assert (=> b!5079283 m!6130938))

(declare-fun m!6130940 () Bool)

(assert (=> b!5079283 m!6130940))

(declare-fun m!6130942 () Bool)

(assert (=> b!5079283 m!6130942))

(assert (=> b!5079283 m!6130940))

(assert (=> b!5079283 m!6130938))

(declare-fun m!6130944 () Bool)

(assert (=> b!5079283 m!6130944))

(assert (=> bm!353841 d!1641643))

(declare-fun b!5079287 () Bool)

(declare-fun e!3168543 () Bool)

(declare-fun lt!2090683 () List!58574)

(assert (=> b!5079287 (= e!3168543 (or (not (= (list!19021 (right!43170 xs!286)) Nil!58450)) (= lt!2090683 (t!371381 (list!19021 (left!42840 xs!286))))))))

(declare-fun d!1641645 () Bool)

(assert (=> d!1641645 e!3168543))

(declare-fun res!2162518 () Bool)

(assert (=> d!1641645 (=> (not res!2162518) (not e!3168543))))

(assert (=> d!1641645 (= res!2162518 (= (content!10426 lt!2090683) ((_ map or) (content!10426 (t!371381 (list!19021 (left!42840 xs!286)))) (content!10426 (list!19021 (right!43170 xs!286))))))))

(declare-fun e!3168542 () List!58574)

(assert (=> d!1641645 (= lt!2090683 e!3168542)))

(declare-fun c!872380 () Bool)

(assert (=> d!1641645 (= c!872380 ((_ is Nil!58450) (t!371381 (list!19021 (left!42840 xs!286)))))))

(assert (=> d!1641645 (= (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (right!43170 xs!286))) lt!2090683)))

(declare-fun b!5079284 () Bool)

(assert (=> b!5079284 (= e!3168542 (list!19021 (right!43170 xs!286)))))

(declare-fun b!5079286 () Bool)

(declare-fun res!2162519 () Bool)

(assert (=> b!5079286 (=> (not res!2162519) (not e!3168543))))

(assert (=> b!5079286 (= res!2162519 (= (size!39108 lt!2090683) (+ (size!39108 (t!371381 (list!19021 (left!42840 xs!286)))) (size!39108 (list!19021 (right!43170 xs!286))))))))

(declare-fun b!5079285 () Bool)

(assert (=> b!5079285 (= e!3168542 (Cons!58450 (h!64898 (t!371381 (list!19021 (left!42840 xs!286)))) (++!12807 (t!371381 (t!371381 (list!19021 (left!42840 xs!286)))) (list!19021 (right!43170 xs!286)))))))

(assert (= (and d!1641645 c!872380) b!5079284))

(assert (= (and d!1641645 (not c!872380)) b!5079285))

(assert (= (and d!1641645 res!2162518) b!5079286))

(assert (= (and b!5079286 res!2162519) b!5079287))

(declare-fun m!6130946 () Bool)

(assert (=> d!1641645 m!6130946))

(declare-fun m!6130948 () Bool)

(assert (=> d!1641645 m!6130948))

(assert (=> d!1641645 m!6128334))

(assert (=> d!1641645 m!6129192))

(declare-fun m!6130950 () Bool)

(assert (=> b!5079286 m!6130950))

(assert (=> b!5079286 m!6129828))

(assert (=> b!5079286 m!6128334))

(assert (=> b!5079286 m!6129200))

(assert (=> b!5079285 m!6128334))

(declare-fun m!6130952 () Bool)

(assert (=> b!5079285 m!6130952))

(assert (=> b!5078435 d!1641645))

(assert (=> b!5078176 d!1640939))

(assert (=> b!5078176 d!1641057))

(declare-fun b!5079291 () Bool)

(declare-fun lt!2090684 () List!58574)

(declare-fun e!3168545 () Bool)

(assert (=> b!5079291 (= e!3168545 (or (not (= (list!19021 (left!42840 (left!42840 ys!41))) Nil!58450)) (= lt!2090684 (list!19021 (right!43170 (right!43170 xs!286))))))))

(declare-fun d!1641647 () Bool)

(assert (=> d!1641647 e!3168545))

(declare-fun res!2162520 () Bool)

(assert (=> d!1641647 (=> (not res!2162520) (not e!3168545))))

(assert (=> d!1641647 (= res!2162520 (= (content!10426 lt!2090684) ((_ map or) (content!10426 (list!19021 (right!43170 (right!43170 xs!286)))) (content!10426 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun e!3168544 () List!58574)

(assert (=> d!1641647 (= lt!2090684 e!3168544)))

(declare-fun c!872381 () Bool)

(assert (=> d!1641647 (= c!872381 ((_ is Nil!58450) (list!19021 (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641647 (= (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41)))) lt!2090684)))

(declare-fun b!5079288 () Bool)

(assert (=> b!5079288 (= e!3168544 (list!19021 (left!42840 (left!42840 ys!41))))))

(declare-fun b!5079290 () Bool)

(declare-fun res!2162521 () Bool)

(assert (=> b!5079290 (=> (not res!2162521) (not e!3168545))))

(assert (=> b!5079290 (= res!2162521 (= (size!39108 lt!2090684) (+ (size!39108 (list!19021 (right!43170 (right!43170 xs!286)))) (size!39108 (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun b!5079289 () Bool)

(assert (=> b!5079289 (= e!3168544 (Cons!58450 (h!64898 (list!19021 (right!43170 (right!43170 xs!286)))) (++!12807 (t!371381 (list!19021 (right!43170 (right!43170 xs!286)))) (list!19021 (left!42840 (left!42840 ys!41))))))))

(assert (= (and d!1641647 c!872381) b!5079288))

(assert (= (and d!1641647 (not c!872381)) b!5079289))

(assert (= (and d!1641647 res!2162520) b!5079290))

(assert (= (and b!5079290 res!2162521) b!5079291))

(declare-fun m!6130954 () Bool)

(assert (=> d!1641647 m!6130954))

(assert (=> d!1641647 m!6128426))

(assert (=> d!1641647 m!6129346))

(assert (=> d!1641647 m!6128228))

(assert (=> d!1641647 m!6129092))

(declare-fun m!6130956 () Bool)

(assert (=> b!5079290 m!6130956))

(assert (=> b!5079290 m!6128426))

(assert (=> b!5079290 m!6129350))

(assert (=> b!5079290 m!6128228))

(assert (=> b!5079290 m!6129096))

(assert (=> b!5079289 m!6128228))

(declare-fun m!6130958 () Bool)

(assert (=> b!5079289 m!6130958))

(assert (=> b!5078176 d!1641647))

(assert (=> b!5078176 d!1641065))

(assert (=> b!5078176 d!1640863))

(declare-fun b!5079292 () Bool)

(declare-fun e!3168546 () Bool)

(declare-fun call!353965 () List!58574)

(declare-fun call!353963 () List!58574)

(assert (=> b!5079292 (= e!3168546 (= call!353965 call!353963))))

(declare-fun b!5079293 () Bool)

(assert (=> b!5079293 (= e!3168546 (= call!353965 call!353963))))

(declare-fun lt!2090685 () Bool)

(assert (=> b!5079293 (= lt!2090685 (appendAssoc!310 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353957 () Bool)

(declare-fun call!353964 () List!58574)

(assert (=> bm!353957 (= call!353964 (++!12807 (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353958 () Bool)

(declare-fun call!353962 () List!58574)

(assert (=> bm!353958 (= call!353965 (++!12807 call!353962 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41))))))))

(declare-fun bm!353959 () Bool)

(assert (=> bm!353959 (= call!353962 (++!12807 (list!19021 (left!42840 xs!286)) (list!19021 (left!42840 (right!43170 xs!286)))))))

(declare-fun d!1641649 () Bool)

(assert (=> d!1641649 e!3168546))

(declare-fun c!872382 () Bool)

(assert (=> d!1641649 (= c!872382 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641649 (= (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (left!42840 (right!43170 xs!286))) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 (left!42840 (left!42840 ys!41))))) true)))

(declare-fun bm!353960 () Bool)

(assert (=> bm!353960 (= call!353963 (++!12807 (list!19021 (left!42840 xs!286)) call!353964))))

(assert (= (and d!1641649 c!872382) b!5079292))

(assert (= (and d!1641649 (not c!872382)) b!5079293))

(assert (= (or b!5079292 b!5079293) bm!353959))

(assert (= (or b!5079292 b!5079293) bm!353957))

(assert (= (or b!5079292 b!5079293) bm!353960))

(assert (= (or b!5079292 b!5079293) bm!353958))

(assert (=> bm!353960 m!6128332))

(declare-fun m!6130960 () Bool)

(assert (=> bm!353960 m!6130960))

(assert (=> bm!353958 m!6128664))

(declare-fun m!6130962 () Bool)

(assert (=> bm!353958 m!6130962))

(assert (=> bm!353957 m!6128424))

(assert (=> bm!353957 m!6128664))

(declare-fun m!6130964 () Bool)

(assert (=> bm!353957 m!6130964))

(assert (=> b!5079293 m!6128424))

(assert (=> b!5079293 m!6128664))

(declare-fun m!6130966 () Bool)

(assert (=> b!5079293 m!6130966))

(assert (=> bm!353959 m!6128332))

(assert (=> bm!353959 m!6128424))

(assert (=> bm!353959 m!6129318))

(assert (=> b!5078176 d!1641649))

(declare-fun d!1641651 () Bool)

(declare-fun res!2162522 () Bool)

(declare-fun e!3168547 () Bool)

(assert (=> d!1641651 (=> (not res!2162522) (not e!3168547))))

(assert (=> d!1641651 (= res!2162522 (<= (size!39108 (list!19023 (xs!18946 (right!43170 (left!42840 ys!41))))) 512))))

(assert (=> d!1641651 (= (inv!77648 (right!43170 (left!42840 ys!41))) e!3168547)))

(declare-fun b!5079294 () Bool)

(declare-fun res!2162523 () Bool)

(assert (=> b!5079294 (=> (not res!2162523) (not e!3168547))))

(assert (=> b!5079294 (= res!2162523 (= (csize!31391 (right!43170 (left!42840 ys!41))) (size!39108 (list!19023 (xs!18946 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5079295 () Bool)

(assert (=> b!5079295 (= e!3168547 (and (> (csize!31391 (right!43170 (left!42840 ys!41))) 0) (<= (csize!31391 (right!43170 (left!42840 ys!41))) 512)))))

(assert (= (and d!1641651 res!2162522) b!5079294))

(assert (= (and b!5079294 res!2162523) b!5079295))

(assert (=> d!1641651 m!6128654))

(assert (=> d!1641651 m!6128654))

(declare-fun m!6130968 () Bool)

(assert (=> d!1641651 m!6130968))

(assert (=> b!5079294 m!6128654))

(assert (=> b!5079294 m!6128654))

(assert (=> b!5079294 m!6130968))

(assert (=> b!5078455 d!1641651))

(assert (=> b!5078301 d!1641383))

(assert (=> b!5078301 d!1641385))

(declare-fun e!3168549 () Bool)

(declare-fun lt!2090686 () List!58574)

(declare-fun b!5079299 () Bool)

(assert (=> b!5079299 (= e!3168549 (or (not (= (list!19021 ys!41) Nil!58450)) (= lt!2090686 call!353884)))))

(declare-fun d!1641653 () Bool)

(assert (=> d!1641653 e!3168549))

(declare-fun res!2162524 () Bool)

(assert (=> d!1641653 (=> (not res!2162524) (not e!3168549))))

(assert (=> d!1641653 (= res!2162524 (= (content!10426 lt!2090686) ((_ map or) (content!10426 call!353884) (content!10426 (list!19021 ys!41)))))))

(declare-fun e!3168548 () List!58574)

(assert (=> d!1641653 (= lt!2090686 e!3168548)))

(declare-fun c!872383 () Bool)

(assert (=> d!1641653 (= c!872383 ((_ is Nil!58450) call!353884))))

(assert (=> d!1641653 (= (++!12807 call!353884 (list!19021 ys!41)) lt!2090686)))

(declare-fun b!5079296 () Bool)

(assert (=> b!5079296 (= e!3168548 (list!19021 ys!41))))

(declare-fun b!5079298 () Bool)

(declare-fun res!2162525 () Bool)

(assert (=> b!5079298 (=> (not res!2162525) (not e!3168549))))

(assert (=> b!5079298 (= res!2162525 (= (size!39108 lt!2090686) (+ (size!39108 call!353884) (size!39108 (list!19021 ys!41)))))))

(declare-fun b!5079297 () Bool)

(assert (=> b!5079297 (= e!3168548 (Cons!58450 (h!64898 call!353884) (++!12807 (t!371381 call!353884) (list!19021 ys!41))))))

(assert (= (and d!1641653 c!872383) b!5079296))

(assert (= (and d!1641653 (not c!872383)) b!5079297))

(assert (= (and d!1641653 res!2162524) b!5079298))

(assert (= (and b!5079298 res!2162525) b!5079299))

(declare-fun m!6130970 () Bool)

(assert (=> d!1641653 m!6130970))

(declare-fun m!6130972 () Bool)

(assert (=> d!1641653 m!6130972))

(assert (=> d!1641653 m!6128090))

(assert (=> d!1641653 m!6128322))

(declare-fun m!6130974 () Bool)

(assert (=> b!5079298 m!6130974))

(declare-fun m!6130976 () Bool)

(assert (=> b!5079298 m!6130976))

(assert (=> b!5079298 m!6128090))

(assert (=> b!5079298 m!6128328))

(assert (=> b!5079297 m!6128090))

(declare-fun m!6130978 () Bool)

(assert (=> b!5079297 m!6130978))

(assert (=> bm!353878 d!1641653))

(declare-fun d!1641655 () Bool)

(assert (=> d!1641655 (= (max!0 (height!2157 (left!42840 (right!43170 xs!286))) (height!2157 (right!43170 (right!43170 xs!286)))) (ite (< (height!2157 (left!42840 (right!43170 xs!286))) (height!2157 (right!43170 (right!43170 xs!286)))) (height!2157 (right!43170 (right!43170 xs!286))) (height!2157 (left!42840 (right!43170 xs!286)))))))

(assert (=> b!5078226 d!1641655))

(assert (=> b!5078226 d!1641299))

(assert (=> b!5078226 d!1641301))

(declare-fun e!3168551 () Bool)

(declare-fun lt!2090687 () List!58574)

(declare-fun b!5079303 () Bool)

(assert (=> b!5079303 (= e!3168551 (or (not (= (list!19021 (right!43170 (left!42840 ys!41))) Nil!58450)) (= lt!2090687 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun d!1641657 () Bool)

(assert (=> d!1641657 e!3168551))

(declare-fun res!2162526 () Bool)

(assert (=> d!1641657 (=> (not res!2162526) (not e!3168551))))

(assert (=> d!1641657 (= res!2162526 (= (content!10426 lt!2090687) ((_ map or) (content!10426 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (content!10426 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun e!3168550 () List!58574)

(assert (=> d!1641657 (= lt!2090687 e!3168550)))

(declare-fun c!872384 () Bool)

(assert (=> d!1641657 (= c!872384 ((_ is Nil!58450) (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641657 (= (++!12807 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))) (list!19021 (right!43170 (left!42840 ys!41)))) lt!2090687)))

(declare-fun b!5079300 () Bool)

(assert (=> b!5079300 (= e!3168550 (list!19021 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5079302 () Bool)

(declare-fun res!2162527 () Bool)

(assert (=> b!5079302 (=> (not res!2162527) (not e!3168551))))

(assert (=> b!5079302 (= res!2162527 (= (size!39108 lt!2090687) (+ (size!39108 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5079301 () Bool)

(assert (=> b!5079301 (= e!3168550 (Cons!58450 (h!64898 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (++!12807 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1641657 c!872384) b!5079300))

(assert (= (and d!1641657 (not c!872384)) b!5079301))

(assert (= (and d!1641657 res!2162526) b!5079302))

(assert (= (and b!5079302 res!2162527) b!5079303))

(declare-fun m!6130980 () Bool)

(assert (=> d!1641657 m!6130980))

(assert (=> d!1641657 m!6128230))

(declare-fun m!6130982 () Bool)

(assert (=> d!1641657 m!6130982))

(assert (=> d!1641657 m!6128436))

(assert (=> d!1641657 m!6128622))

(declare-fun m!6130984 () Bool)

(assert (=> b!5079302 m!6130984))

(assert (=> b!5079302 m!6128230))

(declare-fun m!6130986 () Bool)

(assert (=> b!5079302 m!6130986))

(assert (=> b!5079302 m!6128436))

(assert (=> b!5079302 m!6128628))

(assert (=> b!5079301 m!6128436))

(assert (=> b!5079301 m!6130368))

(assert (=> bm!353899 d!1641657))

(declare-fun b!5079304 () Bool)

(declare-fun res!2162533 () Bool)

(declare-fun e!3168553 () Bool)

(assert (=> b!5079304 (=> (not res!2162533) (not e!3168553))))

(assert (=> b!5079304 (= res!2162533 (isBalanced!4442 (left!42840 (right!43170 (right!43170 xs!286)))))))

(declare-fun b!5079305 () Bool)

(declare-fun res!2162529 () Bool)

(assert (=> b!5079305 (=> (not res!2162529) (not e!3168553))))

(assert (=> b!5079305 (= res!2162529 (<= (- (height!2157 (left!42840 (right!43170 (right!43170 xs!286)))) (height!2157 (right!43170 (right!43170 (right!43170 xs!286))))) 1))))

(declare-fun d!1641659 () Bool)

(declare-fun res!2162532 () Bool)

(declare-fun e!3168552 () Bool)

(assert (=> d!1641659 (=> res!2162532 e!3168552)))

(assert (=> d!1641659 (= res!2162532 (not ((_ is Node!15580) (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641659 (= (isBalanced!4442 (right!43170 (right!43170 xs!286))) e!3168552)))

(declare-fun b!5079306 () Bool)

(declare-fun res!2162530 () Bool)

(assert (=> b!5079306 (=> (not res!2162530) (not e!3168553))))

(assert (=> b!5079306 (= res!2162530 (isBalanced!4442 (right!43170 (right!43170 (right!43170 xs!286)))))))

(declare-fun b!5079307 () Bool)

(assert (=> b!5079307 (= e!3168553 (not (isEmpty!31663 (right!43170 (right!43170 (right!43170 xs!286))))))))

(declare-fun b!5079308 () Bool)

(declare-fun res!2162528 () Bool)

(assert (=> b!5079308 (=> (not res!2162528) (not e!3168553))))

(assert (=> b!5079308 (= res!2162528 (not (isEmpty!31663 (left!42840 (right!43170 (right!43170 xs!286))))))))

(declare-fun b!5079309 () Bool)

(assert (=> b!5079309 (= e!3168552 e!3168553)))

(declare-fun res!2162531 () Bool)

(assert (=> b!5079309 (=> (not res!2162531) (not e!3168553))))

(assert (=> b!5079309 (= res!2162531 (<= (- 1) (- (height!2157 (left!42840 (right!43170 (right!43170 xs!286)))) (height!2157 (right!43170 (right!43170 (right!43170 xs!286)))))))))

(assert (= (and d!1641659 (not res!2162532)) b!5079309))

(assert (= (and b!5079309 res!2162531) b!5079305))

(assert (= (and b!5079305 res!2162529) b!5079304))

(assert (= (and b!5079304 res!2162533) b!5079306))

(assert (= (and b!5079306 res!2162530) b!5079308))

(assert (= (and b!5079308 res!2162528) b!5079307))

(declare-fun m!6130988 () Bool)

(assert (=> b!5079306 m!6130988))

(declare-fun m!6130990 () Bool)

(assert (=> b!5079308 m!6130990))

(declare-fun m!6130992 () Bool)

(assert (=> b!5079307 m!6130992))

(assert (=> b!5079309 m!6130610))

(assert (=> b!5079309 m!6130612))

(declare-fun m!6130994 () Bool)

(assert (=> b!5079304 m!6130994))

(assert (=> b!5079305 m!6130610))

(assert (=> b!5079305 m!6130612))

(assert (=> b!5078278 d!1641659))

(declare-fun d!1641661 () Bool)

(declare-fun lt!2090688 () Bool)

(assert (=> d!1641661 (= lt!2090688 (isEmpty!31665 (list!19021 (right!43170 (right!43170 ys!41)))))))

(assert (=> d!1641661 (= lt!2090688 (= (size!39109 (right!43170 (right!43170 ys!41))) 0))))

(assert (=> d!1641661 (= (isEmpty!31663 (right!43170 (right!43170 ys!41))) lt!2090688)))

(declare-fun bs!1190581 () Bool)

(assert (= bs!1190581 d!1641661))

(assert (=> bs!1190581 m!6128532))

(assert (=> bs!1190581 m!6128532))

(declare-fun m!6130996 () Bool)

(assert (=> bs!1190581 m!6130996))

(assert (=> bs!1190581 m!6129074))

(assert (=> b!5078565 d!1641661))

(declare-fun d!1641663 () Bool)

(declare-fun res!2162534 () Bool)

(declare-fun e!3168554 () Bool)

(assert (=> d!1641663 (=> (not res!2162534) (not e!3168554))))

(assert (=> d!1641663 (= res!2162534 (<= (size!39108 (list!19023 (xs!18946 (right!43170 (right!43170 xs!286))))) 512))))

(assert (=> d!1641663 (= (inv!77648 (right!43170 (right!43170 xs!286))) e!3168554)))

(declare-fun b!5079310 () Bool)

(declare-fun res!2162535 () Bool)

(assert (=> b!5079310 (=> (not res!2162535) (not e!3168554))))

(assert (=> b!5079310 (= res!2162535 (= (csize!31391 (right!43170 (right!43170 xs!286))) (size!39108 (list!19023 (xs!18946 (right!43170 (right!43170 xs!286)))))))))

(declare-fun b!5079311 () Bool)

(assert (=> b!5079311 (= e!3168554 (and (> (csize!31391 (right!43170 (right!43170 xs!286))) 0) (<= (csize!31391 (right!43170 (right!43170 xs!286))) 512)))))

(assert (= (and d!1641663 res!2162534) b!5079310))

(assert (= (and b!5079310 res!2162535) b!5079311))

(assert (=> d!1641663 m!6129290))

(assert (=> d!1641663 m!6129290))

(declare-fun m!6130998 () Bool)

(assert (=> d!1641663 m!6130998))

(assert (=> b!5079310 m!6129290))

(assert (=> b!5079310 m!6129290))

(assert (=> b!5079310 m!6130998))

(assert (=> b!5078113 d!1641663))

(assert (=> b!5078342 d!1641281))

(assert (=> b!5078244 d!1641519))

(assert (=> b!5078244 d!1641517))

(declare-fun d!1641665 () Bool)

(declare-fun res!2162536 () Bool)

(declare-fun e!3168555 () Bool)

(assert (=> d!1641665 (=> (not res!2162536) (not e!3168555))))

(assert (=> d!1641665 (= res!2162536 (<= (size!39108 (list!19023 (xs!18946 (left!42840 (right!43170 ys!41))))) 512))))

(assert (=> d!1641665 (= (inv!77648 (left!42840 (right!43170 ys!41))) e!3168555)))

(declare-fun b!5079312 () Bool)

(declare-fun res!2162537 () Bool)

(assert (=> b!5079312 (=> (not res!2162537) (not e!3168555))))

(assert (=> b!5079312 (= res!2162537 (= (csize!31391 (left!42840 (right!43170 ys!41))) (size!39108 (list!19023 (xs!18946 (left!42840 (right!43170 ys!41)))))))))

(declare-fun b!5079313 () Bool)

(assert (=> b!5079313 (= e!3168555 (and (> (csize!31391 (left!42840 (right!43170 ys!41))) 0) (<= (csize!31391 (left!42840 (right!43170 ys!41))) 512)))))

(assert (= (and d!1641665 res!2162536) b!5079312))

(assert (= (and b!5079312 res!2162537) b!5079313))

(assert (=> d!1641665 m!6129976))

(assert (=> d!1641665 m!6129976))

(declare-fun m!6131000 () Bool)

(assert (=> d!1641665 m!6131000))

(assert (=> b!5079312 m!6129976))

(assert (=> b!5079312 m!6129976))

(assert (=> b!5079312 m!6131000))

(assert (=> b!5078570 d!1641665))

(declare-fun d!1641667 () Bool)

(declare-fun lt!2090689 () Int)

(assert (=> d!1641667 (>= lt!2090689 0)))

(declare-fun e!3168556 () Int)

(assert (=> d!1641667 (= lt!2090689 e!3168556)))

(declare-fun c!872385 () Bool)

(assert (=> d!1641667 (= c!872385 ((_ is Nil!58450) (list!19023 (xs!18946 (right!43170 xs!286)))))))

(assert (=> d!1641667 (= (size!39108 (list!19023 (xs!18946 (right!43170 xs!286)))) lt!2090689)))

(declare-fun b!5079314 () Bool)

(assert (=> b!5079314 (= e!3168556 0)))

(declare-fun b!5079315 () Bool)

(assert (=> b!5079315 (= e!3168556 (+ 1 (size!39108 (t!371381 (list!19023 (xs!18946 (right!43170 xs!286)))))))))

(assert (= (and d!1641667 c!872385) b!5079314))

(assert (= (and d!1641667 (not c!872385)) b!5079315))

(declare-fun m!6131002 () Bool)

(assert (=> b!5079315 m!6131002))

(assert (=> d!1640829 d!1641667))

(declare-fun d!1641669 () Bool)

(assert (=> d!1641669 (= (list!19023 (xs!18946 (right!43170 xs!286))) (innerList!15668 (xs!18946 (right!43170 xs!286))))))

(assert (=> d!1640829 d!1641669))

(declare-fun d!1641671 () Bool)

(assert (=> d!1641671 (= (list!19023 (xs!18946 lt!2090471)) (innerList!15668 (xs!18946 lt!2090471)))))

(assert (=> b!5078398 d!1641671))

(assert (=> b!5078095 d!1641367))

(assert (=> b!5078095 d!1641369))

(declare-fun d!1641673 () Bool)

(declare-fun lt!2090690 () Int)

(assert (=> d!1641673 (>= lt!2090690 0)))

(declare-fun e!3168557 () Int)

(assert (=> d!1641673 (= lt!2090690 e!3168557)))

(declare-fun c!872386 () Bool)

(assert (=> d!1641673 (= c!872386 ((_ is Nil!58450) lt!2090557))))

(assert (=> d!1641673 (= (size!39108 lt!2090557) lt!2090690)))

(declare-fun b!5079316 () Bool)

(assert (=> b!5079316 (= e!3168557 0)))

(declare-fun b!5079317 () Bool)

(assert (=> b!5079317 (= e!3168557 (+ 1 (size!39108 (t!371381 lt!2090557))))))

(assert (= (and d!1641673 c!872386) b!5079316))

(assert (= (and d!1641673 (not c!872386)) b!5079317))

(declare-fun m!6131004 () Bool)

(assert (=> b!5079317 m!6131004))

(assert (=> b!5078524 d!1641673))

(declare-fun d!1641675 () Bool)

(declare-fun lt!2090691 () Int)

(assert (=> d!1641675 (>= lt!2090691 0)))

(declare-fun e!3168558 () Int)

(assert (=> d!1641675 (= lt!2090691 e!3168558)))

(declare-fun c!872387 () Bool)

(assert (=> d!1641675 (= c!872387 ((_ is Nil!58450) (list!19021 (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641675 (= (size!39108 (list!19021 (right!43170 (right!43170 xs!286)))) lt!2090691)))

(declare-fun b!5079318 () Bool)

(assert (=> b!5079318 (= e!3168558 0)))

(declare-fun b!5079319 () Bool)

(assert (=> b!5079319 (= e!3168558 (+ 1 (size!39108 (t!371381 (list!19021 (right!43170 (right!43170 xs!286)))))))))

(assert (= (and d!1641675 c!872387) b!5079318))

(assert (= (and d!1641675 (not c!872387)) b!5079319))

(assert (=> b!5079319 m!6130792))

(assert (=> b!5078524 d!1641675))

(assert (=> b!5078524 d!1641117))

(declare-fun d!1641677 () Bool)

(assert (=> d!1641677 (= (inv!77644 (xs!18946 (left!42840 (left!42840 ys!41)))) (<= (size!39108 (innerList!15668 (xs!18946 (left!42840 (left!42840 ys!41))))) 2147483647))))

(declare-fun bs!1190582 () Bool)

(assert (= bs!1190582 d!1641677))

(declare-fun m!6131006 () Bool)

(assert (=> bs!1190582 m!6131006))

(assert (=> b!5078657 d!1641677))

(assert (=> b!5078199 d!1641667))

(assert (=> b!5078199 d!1641669))

(assert (=> b!5078329 d!1641405))

(assert (=> b!5078329 d!1641407))

(declare-fun d!1641679 () Bool)

(assert (=> d!1641679 (= (list!19023 (xs!18946 (right!43170 (left!42840 ys!41)))) (innerList!15668 (xs!18946 (right!43170 (left!42840 ys!41)))))))

(assert (=> b!5078167 d!1641679))

(assert (=> b!5078289 d!1641413))

(assert (=> b!5078289 d!1641415))

(declare-fun e!3168560 () Bool)

(declare-fun b!5079323 () Bool)

(declare-fun lt!2090692 () List!58574)

(assert (=> b!5079323 (= e!3168560 (or (not (= (list!19021 (left!42840 ys!41)) Nil!58450)) (= lt!2090692 (list!19021 xs!286))))))

(declare-fun d!1641681 () Bool)

(assert (=> d!1641681 e!3168560))

(declare-fun res!2162538 () Bool)

(assert (=> d!1641681 (=> (not res!2162538) (not e!3168560))))

(assert (=> d!1641681 (= res!2162538 (= (content!10426 lt!2090692) ((_ map or) (content!10426 (list!19021 xs!286)) (content!10426 (list!19021 (left!42840 ys!41))))))))

(declare-fun e!3168559 () List!58574)

(assert (=> d!1641681 (= lt!2090692 e!3168559)))

(declare-fun c!872388 () Bool)

(assert (=> d!1641681 (= c!872388 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1641681 (= (++!12807 (list!19021 xs!286) (list!19021 (left!42840 ys!41))) lt!2090692)))

(declare-fun b!5079320 () Bool)

(assert (=> b!5079320 (= e!3168559 (list!19021 (left!42840 ys!41)))))

(declare-fun b!5079322 () Bool)

(declare-fun res!2162539 () Bool)

(assert (=> b!5079322 (=> (not res!2162539) (not e!3168560))))

(assert (=> b!5079322 (= res!2162539 (= (size!39108 lt!2090692) (+ (size!39108 (list!19021 xs!286)) (size!39108 (list!19021 (left!42840 ys!41))))))))

(declare-fun b!5079321 () Bool)

(assert (=> b!5079321 (= e!3168559 (Cons!58450 (h!64898 (list!19021 xs!286)) (++!12807 (t!371381 (list!19021 xs!286)) (list!19021 (left!42840 ys!41)))))))

(assert (= (and d!1641681 c!872388) b!5079320))

(assert (= (and d!1641681 (not c!872388)) b!5079321))

(assert (= (and d!1641681 res!2162538) b!5079322))

(assert (= (and b!5079322 res!2162539) b!5079323))

(declare-fun m!6131008 () Bool)

(assert (=> d!1641681 m!6131008))

(assert (=> d!1641681 m!6128088))

(assert (=> d!1641681 m!6128320))

(assert (=> d!1641681 m!6128340))

(assert (=> d!1641681 m!6128512))

(declare-fun m!6131010 () Bool)

(assert (=> b!5079322 m!6131010))

(assert (=> b!5079322 m!6128088))

(assert (=> b!5079322 m!6128326))

(assert (=> b!5079322 m!6128340))

(assert (=> b!5079322 m!6128518))

(assert (=> b!5079321 m!6128340))

(assert (=> b!5079321 m!6130512))

(assert (=> bm!353859 d!1641681))

(declare-fun lt!2090693 () List!58574)

(declare-fun b!5079327 () Bool)

(declare-fun e!3168562 () Bool)

(assert (=> b!5079327 (= e!3168562 (or (not (= (list!19021 (right!43170 (left!42840 ys!41))) Nil!58450)) (= lt!2090693 call!353822)))))

(declare-fun d!1641683 () Bool)

(assert (=> d!1641683 e!3168562))

(declare-fun res!2162540 () Bool)

(assert (=> d!1641683 (=> (not res!2162540) (not e!3168562))))

(assert (=> d!1641683 (= res!2162540 (= (content!10426 lt!2090693) ((_ map or) (content!10426 call!353822) (content!10426 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun e!3168561 () List!58574)

(assert (=> d!1641683 (= lt!2090693 e!3168561)))

(declare-fun c!872389 () Bool)

(assert (=> d!1641683 (= c!872389 ((_ is Nil!58450) call!353822))))

(assert (=> d!1641683 (= (++!12807 call!353822 (list!19021 (right!43170 (left!42840 ys!41)))) lt!2090693)))

(declare-fun b!5079324 () Bool)

(assert (=> b!5079324 (= e!3168561 (list!19021 (right!43170 (left!42840 ys!41))))))

(declare-fun b!5079326 () Bool)

(declare-fun res!2162541 () Bool)

(assert (=> b!5079326 (=> (not res!2162541) (not e!3168562))))

(assert (=> b!5079326 (= res!2162541 (= (size!39108 lt!2090693) (+ (size!39108 call!353822) (size!39108 (list!19021 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5079325 () Bool)

(assert (=> b!5079325 (= e!3168561 (Cons!58450 (h!64898 call!353822) (++!12807 (t!371381 call!353822) (list!19021 (right!43170 (left!42840 ys!41))))))))

(assert (= (and d!1641683 c!872389) b!5079324))

(assert (= (and d!1641683 (not c!872389)) b!5079325))

(assert (= (and d!1641683 res!2162540) b!5079326))

(assert (= (and b!5079326 res!2162541) b!5079327))

(declare-fun m!6131012 () Bool)

(assert (=> d!1641683 m!6131012))

(declare-fun m!6131014 () Bool)

(assert (=> d!1641683 m!6131014))

(assert (=> d!1641683 m!6128436))

(assert (=> d!1641683 m!6128622))

(declare-fun m!6131016 () Bool)

(assert (=> b!5079326 m!6131016))

(declare-fun m!6131018 () Bool)

(assert (=> b!5079326 m!6131018))

(assert (=> b!5079326 m!6128436))

(assert (=> b!5079326 m!6128628))

(assert (=> b!5079325 m!6128436))

(declare-fun m!6131020 () Bool)

(assert (=> b!5079325 m!6131020))

(assert (=> bm!353818 d!1641683))

(assert (=> b!5078456 d!1641397))

(assert (=> b!5078456 d!1640803))

(declare-fun d!1641685 () Bool)

(assert (=> d!1641685 (= (max!0 (height!2157 (left!42840 (left!42840 xs!286))) (height!2157 (right!43170 (left!42840 xs!286)))) (ite (< (height!2157 (left!42840 (left!42840 xs!286))) (height!2157 (right!43170 (left!42840 xs!286)))) (height!2157 (right!43170 (left!42840 xs!286))) (height!2157 (left!42840 (left!42840 xs!286)))))))

(assert (=> b!5078382 d!1641685))

(assert (=> b!5078382 d!1641383))

(assert (=> b!5078382 d!1641385))

(assert (=> b!5078251 d!1641513))

(assert (=> b!5078251 d!1641515))

(assert (=> b!5078251 d!1641517))

(assert (=> b!5078251 d!1641519))

(declare-fun lt!2090694 () List!58574)

(declare-fun e!3168564 () Bool)

(declare-fun b!5079331 () Bool)

(assert (=> b!5079331 (= e!3168564 (or (not (= call!353824 Nil!58450)) (= lt!2090694 (list!19021 xs!286))))))

(declare-fun d!1641687 () Bool)

(assert (=> d!1641687 e!3168564))

(declare-fun res!2162542 () Bool)

(assert (=> d!1641687 (=> (not res!2162542) (not e!3168564))))

(assert (=> d!1641687 (= res!2162542 (= (content!10426 lt!2090694) ((_ map or) (content!10426 (list!19021 xs!286)) (content!10426 call!353824))))))

(declare-fun e!3168563 () List!58574)

(assert (=> d!1641687 (= lt!2090694 e!3168563)))

(declare-fun c!872390 () Bool)

(assert (=> d!1641687 (= c!872390 ((_ is Nil!58450) (list!19021 xs!286)))))

(assert (=> d!1641687 (= (++!12807 (list!19021 xs!286) call!353824) lt!2090694)))

(declare-fun b!5079328 () Bool)

(assert (=> b!5079328 (= e!3168563 call!353824)))

(declare-fun b!5079330 () Bool)

(declare-fun res!2162543 () Bool)

(assert (=> b!5079330 (=> (not res!2162543) (not e!3168564))))

(assert (=> b!5079330 (= res!2162543 (= (size!39108 lt!2090694) (+ (size!39108 (list!19021 xs!286)) (size!39108 call!353824))))))

(declare-fun b!5079329 () Bool)

(assert (=> b!5079329 (= e!3168563 (Cons!58450 (h!64898 (list!19021 xs!286)) (++!12807 (t!371381 (list!19021 xs!286)) call!353824)))))

(assert (= (and d!1641687 c!872390) b!5079328))

(assert (= (and d!1641687 (not c!872390)) b!5079329))

(assert (= (and d!1641687 res!2162542) b!5079330))

(assert (= (and b!5079330 res!2162543) b!5079331))

(declare-fun m!6131022 () Bool)

(assert (=> d!1641687 m!6131022))

(assert (=> d!1641687 m!6128088))

(assert (=> d!1641687 m!6128320))

(declare-fun m!6131024 () Bool)

(assert (=> d!1641687 m!6131024))

(declare-fun m!6131026 () Bool)

(assert (=> b!5079330 m!6131026))

(assert (=> b!5079330 m!6128088))

(assert (=> b!5079330 m!6128326))

(declare-fun m!6131028 () Bool)

(assert (=> b!5079330 m!6131028))

(declare-fun m!6131030 () Bool)

(assert (=> b!5079329 m!6131030))

(assert (=> bm!353820 d!1641687))

(declare-fun b!5079332 () Bool)

(declare-fun e!3168565 () Bool)

(declare-fun call!353969 () List!58574)

(declare-fun call!353967 () List!58574)

(assert (=> b!5079332 (= e!3168565 (= call!353969 call!353967))))

(declare-fun b!5079333 () Bool)

(assert (=> b!5079333 (= e!3168565 (= call!353969 call!353967))))

(declare-fun lt!2090695 () Bool)

(assert (=> b!5079333 (= lt!2090695 (appendAssoc!310 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (right!43170 xs!286)) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun bm!353961 () Bool)

(declare-fun call!353968 () List!58574)

(assert (=> bm!353961 (= call!353968 (++!12807 (list!19021 (right!43170 xs!286)) (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun bm!353962 () Bool)

(declare-fun call!353966 () List!58574)

(assert (=> bm!353962 (= call!353969 (++!12807 call!353966 (list!19021 (left!42840 (left!42840 ys!41)))))))

(declare-fun bm!353963 () Bool)

(assert (=> bm!353963 (= call!353966 (++!12807 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286))))))

(declare-fun d!1641689 () Bool)

(assert (=> d!1641689 e!3168565))

(declare-fun c!872391 () Bool)

(assert (=> d!1641689 (= c!872391 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(assert (=> d!1641689 (= (appendAssoc!310 (list!19021 (left!42840 xs!286)) (list!19021 (right!43170 xs!286)) (list!19021 (left!42840 (left!42840 ys!41)))) true)))

(declare-fun bm!353964 () Bool)

(assert (=> bm!353964 (= call!353967 (++!12807 (list!19021 (left!42840 xs!286)) call!353968))))

(assert (= (and d!1641689 c!872391) b!5079332))

(assert (= (and d!1641689 (not c!872391)) b!5079333))

(assert (= (or b!5079332 b!5079333) bm!353963))

(assert (= (or b!5079332 b!5079333) bm!353961))

(assert (= (or b!5079332 b!5079333) bm!353964))

(assert (= (or b!5079332 b!5079333) bm!353962))

(assert (=> bm!353964 m!6128332))

(declare-fun m!6131032 () Bool)

(assert (=> bm!353964 m!6131032))

(assert (=> bm!353962 m!6128228))

(declare-fun m!6131034 () Bool)

(assert (=> bm!353962 m!6131034))

(assert (=> bm!353961 m!6128334))

(assert (=> bm!353961 m!6128228))

(declare-fun m!6131036 () Bool)

(assert (=> bm!353961 m!6131036))

(assert (=> b!5079333 m!6128334))

(assert (=> b!5079333 m!6128228))

(declare-fun m!6131038 () Bool)

(assert (=> b!5079333 m!6131038))

(assert (=> bm!353963 m!6128332))

(assert (=> bm!353963 m!6128334))

(assert (=> bm!353963 m!6128336))

(assert (=> b!5078177 d!1641689))

(assert (=> b!5078177 d!1640939))

(assert (=> b!5078177 d!1640941))

(assert (=> b!5078177 d!1640863))

(assert (=> b!5078463 d!1640797))

(assert (=> b!5078463 d!1641079))

(declare-fun e!3168567 () Bool)

(declare-fun lt!2090696 () List!58574)

(declare-fun b!5079337 () Bool)

(assert (=> b!5079337 (= e!3168567 (or (not (= (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)) Nil!58450)) (= lt!2090696 call!353878)))))

(declare-fun d!1641691 () Bool)

(assert (=> d!1641691 e!3168567))

(declare-fun res!2162544 () Bool)

(assert (=> d!1641691 (=> (not res!2162544) (not e!3168567))))

(assert (=> d!1641691 (= res!2162544 (= (content!10426 lt!2090696) ((_ map or) (content!10426 call!353878) (content!10426 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))))

(declare-fun e!3168566 () List!58574)

(assert (=> d!1641691 (= lt!2090696 e!3168566)))

(declare-fun c!872392 () Bool)

(assert (=> d!1641691 (= c!872392 ((_ is Nil!58450) call!353878))))

(assert (=> d!1641691 (= (++!12807 call!353878 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))) lt!2090696)))

(declare-fun b!5079334 () Bool)

(assert (=> b!5079334 (= e!3168566 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))

(declare-fun b!5079336 () Bool)

(declare-fun res!2162545 () Bool)

(assert (=> b!5079336 (=> (not res!2162545) (not e!3168567))))

(assert (=> b!5079336 (= res!2162545 (= (size!39108 lt!2090696) (+ (size!39108 call!353878) (size!39108 (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41))))))))

(declare-fun b!5079335 () Bool)

(assert (=> b!5079335 (= e!3168566 (Cons!58450 (h!64898 call!353878) (++!12807 (t!371381 call!353878) (++!12807 (list!19021 (right!43170 (right!43170 xs!286))) (list!19021 ys!41)))))))

(assert (= (and d!1641691 c!872392) b!5079334))

(assert (= (and d!1641691 (not c!872392)) b!5079335))

(assert (= (and d!1641691 res!2162544) b!5079336))

(assert (= (and b!5079336 res!2162545) b!5079337))

(declare-fun m!6131040 () Bool)

(assert (=> d!1641691 m!6131040))

(declare-fun m!6131042 () Bool)

(assert (=> d!1641691 m!6131042))

(assert (=> d!1641691 m!6128430))

(assert (=> d!1641691 m!6130908))

(declare-fun m!6131044 () Bool)

(assert (=> b!5079336 m!6131044))

(declare-fun m!6131046 () Bool)

(assert (=> b!5079336 m!6131046))

(assert (=> b!5079336 m!6128430))

(assert (=> b!5079336 m!6130912))

(assert (=> b!5079335 m!6128430))

(declare-fun m!6131048 () Bool)

(assert (=> b!5079335 m!6131048))

(assert (=> bm!353874 d!1641691))

(declare-fun lt!2090697 () List!58574)

(declare-fun b!5079341 () Bool)

(declare-fun e!3168569 () Bool)

(assert (=> b!5079341 (= e!3168569 (or (not (= call!353904 Nil!58450)) (= lt!2090697 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))))))))

(declare-fun d!1641693 () Bool)

(assert (=> d!1641693 e!3168569))

(declare-fun res!2162546 () Bool)

(assert (=> d!1641693 (=> (not res!2162546) (not e!3168569))))

(assert (=> d!1641693 (= res!2162546 (= (content!10426 lt!2090697) ((_ map or) (content!10426 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (content!10426 call!353904))))))

(declare-fun e!3168568 () List!58574)

(assert (=> d!1641693 (= lt!2090697 e!3168568)))

(declare-fun c!872393 () Bool)

(assert (=> d!1641693 (= c!872393 ((_ is Nil!58450) (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))))))

(assert (=> d!1641693 (= (++!12807 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41)))) call!353904) lt!2090697)))

(declare-fun b!5079338 () Bool)

(assert (=> b!5079338 (= e!3168568 call!353904)))

(declare-fun b!5079340 () Bool)

(declare-fun res!2162547 () Bool)

(assert (=> b!5079340 (=> (not res!2162547) (not e!3168569))))

(assert (=> b!5079340 (= res!2162547 (= (size!39108 lt!2090697) (+ (size!39108 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (size!39108 call!353904))))))

(declare-fun b!5079339 () Bool)

(assert (=> b!5079339 (= e!3168568 (Cons!58450 (h!64898 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) (++!12807 (t!371381 (++!12807 (list!19021 xs!286) (list!19021 (left!42840 (left!42840 ys!41))))) call!353904)))))

(assert (= (and d!1641693 c!872393) b!5079338))

(assert (= (and d!1641693 (not c!872393)) b!5079339))

(assert (= (and d!1641693 res!2162546) b!5079340))

(assert (= (and b!5079340 res!2162547) b!5079341))

(declare-fun m!6131050 () Bool)

(assert (=> d!1641693 m!6131050))

(assert (=> d!1641693 m!6128230))

(assert (=> d!1641693 m!6130982))

(declare-fun m!6131052 () Bool)

(assert (=> d!1641693 m!6131052))

(declare-fun m!6131054 () Bool)

(assert (=> b!5079340 m!6131054))

(assert (=> b!5079340 m!6128230))

(assert (=> b!5079340 m!6130986))

(declare-fun m!6131056 () Bool)

(assert (=> b!5079340 m!6131056))

(declare-fun m!6131058 () Bool)

(assert (=> b!5079339 m!6131058))

(assert (=> bm!353900 d!1641693))

(declare-fun d!1641695 () Bool)

(declare-fun lt!2090698 () Bool)

(assert (=> d!1641695 (= lt!2090698 (isEmpty!31665 (list!19021 (right!43170 (right!43170 xs!286)))))))

(assert (=> d!1641695 (= lt!2090698 (= (size!39109 (right!43170 (right!43170 xs!286))) 0))))

(assert (=> d!1641695 (= (isEmpty!31663 (right!43170 (right!43170 xs!286))) lt!2090698)))

(declare-fun bs!1190583 () Bool)

(assert (= bs!1190583 d!1641695))

(assert (=> bs!1190583 m!6128426))

(assert (=> bs!1190583 m!6128426))

(declare-fun m!6131060 () Bool)

(assert (=> bs!1190583 m!6131060))

(assert (=> bs!1190583 m!6128748))

(assert (=> b!5078279 d!1641695))

(declare-fun b!5079342 () Bool)

(declare-fun e!3168570 () Bool)

(declare-fun call!353973 () List!58574)

(declare-fun call!353971 () List!58574)

(assert (=> b!5079342 (= e!3168570 (= call!353973 call!353971))))

(declare-fun b!5079343 () Bool)

(assert (=> b!5079343 (= e!3168570 (= call!353973 call!353971))))

(declare-fun lt!2090699 () Bool)

(assert (=> b!5079343 (= lt!2090699 (appendAssoc!310 (t!371381 (t!371381 (list!19021 (left!42840 xs!286)))) (list!19021 (right!43170 xs!286)) (list!19021 ys!41)))))

(declare-fun bm!353965 () Bool)

(declare-fun call!353972 () List!58574)

(assert (=> bm!353965 (= call!353972 (++!12807 (list!19021 (right!43170 xs!286)) (list!19021 ys!41)))))

(declare-fun bm!353966 () Bool)

(declare-fun call!353970 () List!58574)

(assert (=> bm!353966 (= call!353973 (++!12807 call!353970 (list!19021 ys!41)))))

(declare-fun bm!353967 () Bool)

(assert (=> bm!353967 (= call!353970 (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (right!43170 xs!286))))))

(declare-fun d!1641697 () Bool)

(assert (=> d!1641697 e!3168570))

(declare-fun c!872394 () Bool)

(assert (=> d!1641697 (= c!872394 ((_ is Nil!58450) (t!371381 (list!19021 (left!42840 xs!286)))))))

(assert (=> d!1641697 (= (appendAssoc!310 (t!371381 (list!19021 (left!42840 xs!286))) (list!19021 (right!43170 xs!286)) (list!19021 ys!41)) true)))

(declare-fun bm!353968 () Bool)

(assert (=> bm!353968 (= call!353971 (++!12807 (t!371381 (list!19021 (left!42840 xs!286))) call!353972))))

(assert (= (and d!1641697 c!872394) b!5079342))

(assert (= (and d!1641697 (not c!872394)) b!5079343))

(assert (= (or b!5079342 b!5079343) bm!353967))

(assert (= (or b!5079342 b!5079343) bm!353965))

(assert (= (or b!5079342 b!5079343) bm!353968))

(assert (= (or b!5079342 b!5079343) bm!353966))

(declare-fun m!6131062 () Bool)

(assert (=> bm!353968 m!6131062))

(assert (=> bm!353966 m!6128090))

(declare-fun m!6131064 () Bool)

(assert (=> bm!353966 m!6131064))

(assert (=> bm!353965 m!6128334))

(assert (=> bm!353965 m!6128090))

(assert (=> bm!353965 m!6128962))

(assert (=> b!5079343 m!6128334))

(assert (=> b!5079343 m!6128090))

(declare-fun m!6131066 () Bool)

(assert (=> b!5079343 m!6131066))

(assert (=> bm!353967 m!6128334))

(assert (=> bm!353967 m!6129202))

(assert (=> b!5078335 d!1641697))

(declare-fun d!1641699 () Bool)

(declare-fun c!872395 () Bool)

(assert (=> d!1641699 (= c!872395 ((_ is Nil!58450) lt!2090543))))

(declare-fun e!3168571 () (InoxSet T!105230))

(assert (=> d!1641699 (= (content!10426 lt!2090543) e!3168571)))

(declare-fun b!5079344 () Bool)

(assert (=> b!5079344 (= e!3168571 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079345 () Bool)

(assert (=> b!5079345 (= e!3168571 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090543) true) (content!10426 (t!371381 lt!2090543))))))

(assert (= (and d!1641699 c!872395) b!5079344))

(assert (= (and d!1641699 (not c!872395)) b!5079345))

(declare-fun m!6131068 () Bool)

(assert (=> b!5079345 m!6131068))

(declare-fun m!6131070 () Bool)

(assert (=> b!5079345 m!6131070))

(assert (=> d!1641005 d!1641699))

(declare-fun d!1641701 () Bool)

(declare-fun c!872396 () Bool)

(assert (=> d!1641701 (= c!872396 ((_ is Nil!58450) (list!19021 (left!42840 xs!286))))))

(declare-fun e!3168572 () (InoxSet T!105230))

(assert (=> d!1641701 (= (content!10426 (list!19021 (left!42840 xs!286))) e!3168572)))

(declare-fun b!5079346 () Bool)

(assert (=> b!5079346 (= e!3168572 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079347 () Bool)

(assert (=> b!5079347 (= e!3168572 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (left!42840 xs!286))) true) (content!10426 (t!371381 (list!19021 (left!42840 xs!286))))))))

(assert (= (and d!1641701 c!872396) b!5079346))

(assert (= (and d!1641701 (not c!872396)) b!5079347))

(declare-fun m!6131072 () Bool)

(assert (=> b!5079347 m!6131072))

(assert (=> b!5079347 m!6130948))

(assert (=> d!1641005 d!1641701))

(declare-fun d!1641703 () Bool)

(declare-fun c!872397 () Bool)

(assert (=> d!1641703 (= c!872397 ((_ is Nil!58450) (list!19021 (right!43170 xs!286))))))

(declare-fun e!3168573 () (InoxSet T!105230))

(assert (=> d!1641703 (= (content!10426 (list!19021 (right!43170 xs!286))) e!3168573)))

(declare-fun b!5079348 () Bool)

(assert (=> b!5079348 (= e!3168573 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079349 () Bool)

(assert (=> b!5079349 (= e!3168573 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (right!43170 xs!286))) true) (content!10426 (t!371381 (list!19021 (right!43170 xs!286))))))))

(assert (= (and d!1641703 c!872397) b!5079348))

(assert (= (and d!1641703 (not c!872397)) b!5079349))

(declare-fun m!6131074 () Bool)

(assert (=> b!5079349 m!6131074))

(declare-fun m!6131076 () Bool)

(assert (=> b!5079349 m!6131076))

(assert (=> d!1641005 d!1641703))

(declare-fun b!5079353 () Bool)

(declare-fun e!3168575 () Bool)

(declare-fun lt!2090700 () List!58574)

(assert (=> b!5079353 (= e!3168575 (or (not (= (list!19021 (right!43170 (left!42840 xs!286))) Nil!58450)) (= lt!2090700 (list!19021 (left!42840 (left!42840 xs!286))))))))

(declare-fun d!1641705 () Bool)

(assert (=> d!1641705 e!3168575))

(declare-fun res!2162548 () Bool)

(assert (=> d!1641705 (=> (not res!2162548) (not e!3168575))))

(assert (=> d!1641705 (= res!2162548 (= (content!10426 lt!2090700) ((_ map or) (content!10426 (list!19021 (left!42840 (left!42840 xs!286)))) (content!10426 (list!19021 (right!43170 (left!42840 xs!286)))))))))

(declare-fun e!3168574 () List!58574)

(assert (=> d!1641705 (= lt!2090700 e!3168574)))

(declare-fun c!872398 () Bool)

(assert (=> d!1641705 (= c!872398 ((_ is Nil!58450) (list!19021 (left!42840 (left!42840 xs!286)))))))

(assert (=> d!1641705 (= (++!12807 (list!19021 (left!42840 (left!42840 xs!286))) (list!19021 (right!43170 (left!42840 xs!286)))) lt!2090700)))

(declare-fun b!5079350 () Bool)

(assert (=> b!5079350 (= e!3168574 (list!19021 (right!43170 (left!42840 xs!286))))))

(declare-fun b!5079352 () Bool)

(declare-fun res!2162549 () Bool)

(assert (=> b!5079352 (=> (not res!2162549) (not e!3168575))))

(assert (=> b!5079352 (= res!2162549 (= (size!39108 lt!2090700) (+ (size!39108 (list!19021 (left!42840 (left!42840 xs!286)))) (size!39108 (list!19021 (right!43170 (left!42840 xs!286)))))))))

(declare-fun b!5079351 () Bool)

(assert (=> b!5079351 (= e!3168574 (Cons!58450 (h!64898 (list!19021 (left!42840 (left!42840 xs!286)))) (++!12807 (t!371381 (list!19021 (left!42840 (left!42840 xs!286)))) (list!19021 (right!43170 (left!42840 xs!286))))))))

(assert (= (and d!1641705 c!872398) b!5079350))

(assert (= (and d!1641705 (not c!872398)) b!5079351))

(assert (= (and d!1641705 res!2162548) b!5079352))

(assert (= (and b!5079352 res!2162549) b!5079353))

(declare-fun m!6131078 () Bool)

(assert (=> d!1641705 m!6131078))

(assert (=> d!1641705 m!6128968))

(declare-fun m!6131080 () Bool)

(assert (=> d!1641705 m!6131080))

(assert (=> d!1641705 m!6128970))

(declare-fun m!6131082 () Bool)

(assert (=> d!1641705 m!6131082))

(declare-fun m!6131084 () Bool)

(assert (=> b!5079352 m!6131084))

(assert (=> b!5079352 m!6128968))

(assert (=> b!5079352 m!6130322))

(assert (=> b!5079352 m!6128970))

(assert (=> b!5079352 m!6130324))

(assert (=> b!5079351 m!6128970))

(declare-fun m!6131086 () Bool)

(assert (=> b!5079351 m!6131086))

(assert (=> b!5078343 d!1641705))

(declare-fun b!5079354 () Bool)

(declare-fun e!3168576 () List!58574)

(assert (=> b!5079354 (= e!3168576 Nil!58450)))

(declare-fun b!5079357 () Bool)

(declare-fun e!3168577 () List!58574)

(assert (=> b!5079357 (= e!3168577 (++!12807 (list!19021 (left!42840 (left!42840 (left!42840 xs!286)))) (list!19021 (right!43170 (left!42840 (left!42840 xs!286))))))))

(declare-fun b!5079356 () Bool)

(assert (=> b!5079356 (= e!3168577 (list!19023 (xs!18946 (left!42840 (left!42840 xs!286)))))))

(declare-fun d!1641707 () Bool)

(declare-fun c!872399 () Bool)

(assert (=> d!1641707 (= c!872399 ((_ is Empty!15580) (left!42840 (left!42840 xs!286))))))

(assert (=> d!1641707 (= (list!19021 (left!42840 (left!42840 xs!286))) e!3168576)))

(declare-fun b!5079355 () Bool)

(assert (=> b!5079355 (= e!3168576 e!3168577)))

(declare-fun c!872400 () Bool)

(assert (=> b!5079355 (= c!872400 ((_ is Leaf!25875) (left!42840 (left!42840 xs!286))))))

(assert (= (and d!1641707 c!872399) b!5079354))

(assert (= (and d!1641707 (not c!872399)) b!5079355))

(assert (= (and b!5079355 c!872400) b!5079356))

(assert (= (and b!5079355 (not c!872400)) b!5079357))

(declare-fun m!6131088 () Bool)

(assert (=> b!5079357 m!6131088))

(declare-fun m!6131090 () Bool)

(assert (=> b!5079357 m!6131090))

(assert (=> b!5079357 m!6131088))

(assert (=> b!5079357 m!6131090))

(declare-fun m!6131092 () Bool)

(assert (=> b!5079357 m!6131092))

(assert (=> b!5079356 m!6130902))

(assert (=> b!5078343 d!1641707))

(declare-fun b!5079358 () Bool)

(declare-fun e!3168578 () List!58574)

(assert (=> b!5079358 (= e!3168578 Nil!58450)))

(declare-fun b!5079361 () Bool)

(declare-fun e!3168579 () List!58574)

(assert (=> b!5079361 (= e!3168579 (++!12807 (list!19021 (left!42840 (right!43170 (left!42840 xs!286)))) (list!19021 (right!43170 (right!43170 (left!42840 xs!286))))))))

(declare-fun b!5079360 () Bool)

(assert (=> b!5079360 (= e!3168579 (list!19023 (xs!18946 (right!43170 (left!42840 xs!286)))))))

(declare-fun d!1641709 () Bool)

(declare-fun c!872401 () Bool)

(assert (=> d!1641709 (= c!872401 ((_ is Empty!15580) (right!43170 (left!42840 xs!286))))))

(assert (=> d!1641709 (= (list!19021 (right!43170 (left!42840 xs!286))) e!3168578)))

(declare-fun b!5079359 () Bool)

(assert (=> b!5079359 (= e!3168578 e!3168579)))

(declare-fun c!872402 () Bool)

(assert (=> b!5079359 (= c!872402 ((_ is Leaf!25875) (right!43170 (left!42840 xs!286))))))

(assert (= (and d!1641709 c!872401) b!5079358))

(assert (= (and d!1641709 (not c!872401)) b!5079359))

(assert (= (and b!5079359 c!872402) b!5079360))

(assert (= (and b!5079359 (not c!872402)) b!5079361))

(declare-fun m!6131094 () Bool)

(assert (=> b!5079361 m!6131094))

(declare-fun m!6131096 () Bool)

(assert (=> b!5079361 m!6131096))

(assert (=> b!5079361 m!6131094))

(assert (=> b!5079361 m!6131096))

(declare-fun m!6131098 () Bool)

(assert (=> b!5079361 m!6131098))

(assert (=> b!5079360 m!6130490))

(assert (=> b!5078343 d!1641709))

(declare-fun d!1641711 () Bool)

(declare-fun lt!2090701 () Bool)

(assert (=> d!1641711 (= lt!2090701 (isEmpty!31665 (list!19021 (left!42840 (right!43170 ys!41)))))))

(assert (=> d!1641711 (= lt!2090701 (= (size!39109 (left!42840 (right!43170 ys!41))) 0))))

(assert (=> d!1641711 (= (isEmpty!31663 (left!42840 (right!43170 ys!41))) lt!2090701)))

(declare-fun bs!1190584 () Bool)

(assert (= bs!1190584 d!1641711))

(assert (=> bs!1190584 m!6128530))

(assert (=> bs!1190584 m!6128530))

(declare-fun m!6131100 () Bool)

(assert (=> bs!1190584 m!6131100))

(assert (=> bs!1190584 m!6129072))

(assert (=> b!5078566 d!1641711))

(assert (=> b!5078084 d!1641027))

(assert (=> b!5078084 d!1641029))

(declare-fun b!5079362 () Bool)

(declare-fun res!2162555 () Bool)

(declare-fun e!3168581 () Bool)

(assert (=> b!5079362 (=> (not res!2162555) (not e!3168581))))

(assert (=> b!5079362 (= res!2162555 (isBalanced!4442 (left!42840 (right!43170 (left!42840 xs!286)))))))

(declare-fun b!5079363 () Bool)

(declare-fun res!2162551 () Bool)

(assert (=> b!5079363 (=> (not res!2162551) (not e!3168581))))

(assert (=> b!5079363 (= res!2162551 (<= (- (height!2157 (left!42840 (right!43170 (left!42840 xs!286)))) (height!2157 (right!43170 (right!43170 (left!42840 xs!286))))) 1))))

(declare-fun d!1641713 () Bool)

(declare-fun res!2162554 () Bool)

(declare-fun e!3168580 () Bool)

(assert (=> d!1641713 (=> res!2162554 e!3168580)))

(assert (=> d!1641713 (= res!2162554 (not ((_ is Node!15580) (right!43170 (left!42840 xs!286)))))))

(assert (=> d!1641713 (= (isBalanced!4442 (right!43170 (left!42840 xs!286))) e!3168580)))

(declare-fun b!5079364 () Bool)

(declare-fun res!2162552 () Bool)

(assert (=> b!5079364 (=> (not res!2162552) (not e!3168581))))

(assert (=> b!5079364 (= res!2162552 (isBalanced!4442 (right!43170 (right!43170 (left!42840 xs!286)))))))

(declare-fun b!5079365 () Bool)

(assert (=> b!5079365 (= e!3168581 (not (isEmpty!31663 (right!43170 (right!43170 (left!42840 xs!286))))))))

(declare-fun b!5079366 () Bool)

(declare-fun res!2162550 () Bool)

(assert (=> b!5079366 (=> (not res!2162550) (not e!3168581))))

(assert (=> b!5079366 (= res!2162550 (not (isEmpty!31663 (left!42840 (right!43170 (left!42840 xs!286))))))))

(declare-fun b!5079367 () Bool)

(assert (=> b!5079367 (= e!3168580 e!3168581)))

(declare-fun res!2162553 () Bool)

(assert (=> b!5079367 (=> (not res!2162553) (not e!3168581))))

(assert (=> b!5079367 (= res!2162553 (<= (- 1) (- (height!2157 (left!42840 (right!43170 (left!42840 xs!286)))) (height!2157 (right!43170 (right!43170 (left!42840 xs!286)))))))))

(assert (= (and d!1641713 (not res!2162554)) b!5079367))

(assert (= (and b!5079367 res!2162553) b!5079363))

(assert (= (and b!5079363 res!2162551) b!5079362))

(assert (= (and b!5079362 res!2162555) b!5079364))

(assert (= (and b!5079364 res!2162552) b!5079366))

(assert (= (and b!5079366 res!2162550) b!5079365))

(declare-fun m!6131102 () Bool)

(assert (=> b!5079364 m!6131102))

(declare-fun m!6131104 () Bool)

(assert (=> b!5079366 m!6131104))

(declare-fun m!6131106 () Bool)

(assert (=> b!5079365 m!6131106))

(assert (=> b!5079367 m!6130058))

(assert (=> b!5079367 m!6130060))

(declare-fun m!6131108 () Bool)

(assert (=> b!5079362 m!6131108))

(assert (=> b!5079363 m!6130058))

(assert (=> b!5079363 m!6130060))

(assert (=> b!5078302 d!1641713))

(declare-fun d!1641715 () Bool)

(assert (=> d!1641715 (= (isEmpty!31665 (list!19021 (right!43170 lt!2090452))) ((_ is Nil!58450) (list!19021 (right!43170 lt!2090452))))))

(assert (=> d!1641091 d!1641715))

(assert (=> d!1641091 d!1640965))

(declare-fun d!1641717 () Bool)

(declare-fun lt!2090702 () Int)

(assert (=> d!1641717 (= lt!2090702 (size!39108 (list!19021 (right!43170 lt!2090452))))))

(assert (=> d!1641717 (= lt!2090702 (ite ((_ is Empty!15580) (right!43170 lt!2090452)) 0 (ite ((_ is Leaf!25875) (right!43170 lt!2090452)) (csize!31391 (right!43170 lt!2090452)) (csize!31390 (right!43170 lt!2090452)))))))

(assert (=> d!1641717 (= (size!39109 (right!43170 lt!2090452)) lt!2090702)))

(declare-fun bs!1190585 () Bool)

(assert (= bs!1190585 d!1641717))

(assert (=> bs!1190585 m!6128276))

(assert (=> bs!1190585 m!6128276))

(assert (=> bs!1190585 m!6129032))

(assert (=> d!1641091 d!1641717))

(assert (=> b!5078346 d!1641669))

(declare-fun b!5079371 () Bool)

(declare-fun e!3168583 () Bool)

(declare-fun lt!2090703 () List!58574)

(assert (=> b!5079371 (= e!3168583 (or (not (= (list!19021 (right!43170 lt!2090471)) Nil!58450)) (= lt!2090703 (list!19021 (left!42840 lt!2090471)))))))

(declare-fun d!1641719 () Bool)

(assert (=> d!1641719 e!3168583))

(declare-fun res!2162556 () Bool)

(assert (=> d!1641719 (=> (not res!2162556) (not e!3168583))))

(assert (=> d!1641719 (= res!2162556 (= (content!10426 lt!2090703) ((_ map or) (content!10426 (list!19021 (left!42840 lt!2090471))) (content!10426 (list!19021 (right!43170 lt!2090471))))))))

(declare-fun e!3168582 () List!58574)

(assert (=> d!1641719 (= lt!2090703 e!3168582)))

(declare-fun c!872403 () Bool)

(assert (=> d!1641719 (= c!872403 ((_ is Nil!58450) (list!19021 (left!42840 lt!2090471))))))

(assert (=> d!1641719 (= (++!12807 (list!19021 (left!42840 lt!2090471)) (list!19021 (right!43170 lt!2090471))) lt!2090703)))

(declare-fun b!5079368 () Bool)

(assert (=> b!5079368 (= e!3168582 (list!19021 (right!43170 lt!2090471)))))

(declare-fun b!5079370 () Bool)

(declare-fun res!2162557 () Bool)

(assert (=> b!5079370 (=> (not res!2162557) (not e!3168583))))

(assert (=> b!5079370 (= res!2162557 (= (size!39108 lt!2090703) (+ (size!39108 (list!19021 (left!42840 lt!2090471))) (size!39108 (list!19021 (right!43170 lt!2090471))))))))

(declare-fun b!5079369 () Bool)

(assert (=> b!5079369 (= e!3168582 (Cons!58450 (h!64898 (list!19021 (left!42840 lt!2090471))) (++!12807 (t!371381 (list!19021 (left!42840 lt!2090471))) (list!19021 (right!43170 lt!2090471)))))))

(assert (= (and d!1641719 c!872403) b!5079368))

(assert (= (and d!1641719 (not c!872403)) b!5079369))

(assert (= (and d!1641719 res!2162556) b!5079370))

(assert (= (and b!5079370 res!2162557) b!5079371))

(declare-fun m!6131110 () Bool)

(assert (=> d!1641719 m!6131110))

(assert (=> d!1641719 m!6129082))

(declare-fun m!6131112 () Bool)

(assert (=> d!1641719 m!6131112))

(assert (=> d!1641719 m!6129084))

(declare-fun m!6131114 () Bool)

(assert (=> d!1641719 m!6131114))

(declare-fun m!6131116 () Bool)

(assert (=> b!5079370 m!6131116))

(assert (=> b!5079370 m!6129082))

(declare-fun m!6131118 () Bool)

(assert (=> b!5079370 m!6131118))

(assert (=> b!5079370 m!6129084))

(declare-fun m!6131120 () Bool)

(assert (=> b!5079370 m!6131120))

(assert (=> b!5079369 m!6129084))

(declare-fun m!6131122 () Bool)

(assert (=> b!5079369 m!6131122))

(assert (=> b!5078399 d!1641719))

(declare-fun b!5079372 () Bool)

(declare-fun e!3168584 () List!58574)

(assert (=> b!5079372 (= e!3168584 Nil!58450)))

(declare-fun b!5079375 () Bool)

(declare-fun e!3168585 () List!58574)

(assert (=> b!5079375 (= e!3168585 (++!12807 (list!19021 (left!42840 (left!42840 lt!2090471))) (list!19021 (right!43170 (left!42840 lt!2090471)))))))

(declare-fun b!5079374 () Bool)

(assert (=> b!5079374 (= e!3168585 (list!19023 (xs!18946 (left!42840 lt!2090471))))))

(declare-fun d!1641721 () Bool)

(declare-fun c!872404 () Bool)

(assert (=> d!1641721 (= c!872404 ((_ is Empty!15580) (left!42840 lt!2090471)))))

(assert (=> d!1641721 (= (list!19021 (left!42840 lt!2090471)) e!3168584)))

(declare-fun b!5079373 () Bool)

(assert (=> b!5079373 (= e!3168584 e!3168585)))

(declare-fun c!872405 () Bool)

(assert (=> b!5079373 (= c!872405 ((_ is Leaf!25875) (left!42840 lt!2090471)))))

(assert (= (and d!1641721 c!872404) b!5079372))

(assert (= (and d!1641721 (not c!872404)) b!5079373))

(assert (= (and b!5079373 c!872405) b!5079374))

(assert (= (and b!5079373 (not c!872405)) b!5079375))

(declare-fun m!6131124 () Bool)

(assert (=> b!5079375 m!6131124))

(declare-fun m!6131126 () Bool)

(assert (=> b!5079375 m!6131126))

(assert (=> b!5079375 m!6131124))

(assert (=> b!5079375 m!6131126))

(declare-fun m!6131128 () Bool)

(assert (=> b!5079375 m!6131128))

(declare-fun m!6131130 () Bool)

(assert (=> b!5079374 m!6131130))

(assert (=> b!5078399 d!1641721))

(declare-fun b!5079376 () Bool)

(declare-fun e!3168586 () List!58574)

(assert (=> b!5079376 (= e!3168586 Nil!58450)))

(declare-fun b!5079379 () Bool)

(declare-fun e!3168587 () List!58574)

(assert (=> b!5079379 (= e!3168587 (++!12807 (list!19021 (left!42840 (right!43170 lt!2090471))) (list!19021 (right!43170 (right!43170 lt!2090471)))))))

(declare-fun b!5079378 () Bool)

(assert (=> b!5079378 (= e!3168587 (list!19023 (xs!18946 (right!43170 lt!2090471))))))

(declare-fun d!1641723 () Bool)

(declare-fun c!872406 () Bool)

(assert (=> d!1641723 (= c!872406 ((_ is Empty!15580) (right!43170 lt!2090471)))))

(assert (=> d!1641723 (= (list!19021 (right!43170 lt!2090471)) e!3168586)))

(declare-fun b!5079377 () Bool)

(assert (=> b!5079377 (= e!3168586 e!3168587)))

(declare-fun c!872407 () Bool)

(assert (=> b!5079377 (= c!872407 ((_ is Leaf!25875) (right!43170 lt!2090471)))))

(assert (= (and d!1641723 c!872406) b!5079376))

(assert (= (and d!1641723 (not c!872406)) b!5079377))

(assert (= (and b!5079377 c!872407) b!5079378))

(assert (= (and b!5079377 (not c!872407)) b!5079379))

(declare-fun m!6131132 () Bool)

(assert (=> b!5079379 m!6131132))

(declare-fun m!6131134 () Bool)

(assert (=> b!5079379 m!6131134))

(assert (=> b!5079379 m!6131132))

(assert (=> b!5079379 m!6131134))

(declare-fun m!6131136 () Bool)

(assert (=> b!5079379 m!6131136))

(declare-fun m!6131138 () Bool)

(assert (=> b!5079378 m!6131138))

(assert (=> b!5078399 d!1641723))

(assert (=> d!1641025 d!1641275))

(assert (=> d!1641025 d!1641209))

(declare-fun d!1641725 () Bool)

(declare-fun lt!2090704 () Int)

(assert (=> d!1641725 (= lt!2090704 (size!39108 (list!19021 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))))))

(assert (=> d!1641725 (= lt!2090704 (ite ((_ is Empty!15580) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) 0 (ite ((_ is Leaf!25875) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) (csize!31391 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) (csize!31390 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))))

(assert (=> d!1641725 (= (size!39109 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) lt!2090704)))

(declare-fun bs!1190586 () Bool)

(assert (= bs!1190586 d!1641725))

(assert (=> bs!1190586 m!6128590))

(assert (=> bs!1190586 m!6128590))

(assert (=> bs!1190586 m!6130852))

(assert (=> b!5078146 d!1641725))

(declare-fun d!1641727 () Bool)

(assert (=> d!1641727 (= (height!2157 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) (ite ((_ is Empty!15580) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) 0 (ite ((_ is Leaf!25875) (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) 1 (cheight!15791 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))))))))

(assert (=> b!5078146 d!1641727))

(declare-fun d!1641729 () Bool)

(assert (=> d!1641729 (= (height!2157 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (ite ((_ is Empty!15580) (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) 0 (ite ((_ is Leaf!25875) (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) 1 (cheight!15791 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(assert (=> b!5078146 d!1641729))

(declare-fun d!1641731 () Bool)

(declare-fun lt!2090705 () Int)

(assert (=> d!1641731 (= lt!2090705 (size!39108 (list!19021 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(assert (=> d!1641731 (= lt!2090705 (ite ((_ is Empty!15580) (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) 0 (ite ((_ is Leaf!25875) (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (csize!31391 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (csize!31390 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(assert (=> d!1641731 (= (size!39109 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) lt!2090705)))

(declare-fun bs!1190587 () Bool)

(assert (= bs!1190587 d!1641731))

(assert (=> bs!1190587 m!6128588))

(assert (=> bs!1190587 m!6128588))

(assert (=> bs!1190587 m!6130850))

(assert (=> b!5078146 d!1641731))

(declare-fun d!1641733 () Bool)

(assert (=> d!1641733 (= (max!0 (height!2157 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (height!2157 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))) (ite (< (height!2157 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))))))) (height!2157 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41)))))))) (height!2157 (ite c!871978 (left!42840 (left!42840 ys!41)) (ite c!871981 (ite c!871976 call!353757 (ite c!871979 lt!2090469 (left!42840 (right!43170 xs!286)))) (ite c!871980 (right!43170 (left!42840 (left!42840 (left!42840 ys!41)))) (right!43170 (left!42840 (left!42840 ys!41))))))) (height!2157 (ite c!871978 xs!286 (ite c!871981 (ite c!871976 (left!42840 xs!286) (ite c!871979 (left!42840 (right!43170 xs!286)) (left!42840 xs!286))) (ite c!871980 lt!2090468 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(assert (=> b!5078146 d!1641733))

(declare-fun d!1641735 () Bool)

(declare-fun lt!2090706 () Int)

(assert (=> d!1641735 (>= lt!2090706 0)))

(declare-fun e!3168588 () Int)

(assert (=> d!1641735 (= lt!2090706 e!3168588)))

(declare-fun c!872408 () Bool)

(assert (=> d!1641735 (= c!872408 ((_ is Nil!58450) (t!371381 (innerList!15668 (xs!18946 xs!286)))))))

(assert (=> d!1641735 (= (size!39108 (t!371381 (innerList!15668 (xs!18946 xs!286)))) lt!2090706)))

(declare-fun b!5079380 () Bool)

(assert (=> b!5079380 (= e!3168588 0)))

(declare-fun b!5079381 () Bool)

(assert (=> b!5079381 (= e!3168588 (+ 1 (size!39108 (t!371381 (t!371381 (innerList!15668 (xs!18946 xs!286)))))))))

(assert (= (and d!1641735 c!872408) b!5079380))

(assert (= (and d!1641735 (not c!872408)) b!5079381))

(declare-fun m!6131140 () Bool)

(assert (=> b!5079381 m!6131140))

(assert (=> b!5078323 d!1641735))

(declare-fun d!1641737 () Bool)

(declare-fun c!872409 () Bool)

(assert (=> d!1641737 (= c!872409 ((_ is Nil!58450) lt!2090572))))

(declare-fun e!3168589 () (InoxSet T!105230))

(assert (=> d!1641737 (= (content!10426 lt!2090572) e!3168589)))

(declare-fun b!5079382 () Bool)

(assert (=> b!5079382 (= e!3168589 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079383 () Bool)

(assert (=> b!5079383 (= e!3168589 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 lt!2090572) true) (content!10426 (t!371381 lt!2090572))))))

(assert (= (and d!1641737 c!872409) b!5079382))

(assert (= (and d!1641737 (not c!872409)) b!5079383))

(declare-fun m!6131142 () Bool)

(assert (=> b!5079383 m!6131142))

(declare-fun m!6131144 () Bool)

(assert (=> b!5079383 m!6131144))

(assert (=> d!1641127 d!1641737))

(declare-fun d!1641739 () Bool)

(declare-fun c!872410 () Bool)

(assert (=> d!1641739 (= c!872410 ((_ is Nil!58450) (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))

(declare-fun e!3168590 () (InoxSet T!105230))

(assert (=> d!1641739 (= (content!10426 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) e!3168590)))

(declare-fun b!5079384 () Bool)

(assert (=> b!5079384 (= e!3168590 ((as const (Array T!105230 Bool)) false))))

(declare-fun b!5079385 () Bool)

(assert (=> b!5079385 (= e!3168590 ((_ map or) (store ((as const (Array T!105230 Bool)) false) (h!64898 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))) true) (content!10426 (t!371381 (list!19021 (<>!400 lt!2090455 (right!43170 (left!42840 ys!41))))))))))

(assert (= (and d!1641739 c!872410) b!5079384))

(assert (= (and d!1641739 (not c!872410)) b!5079385))

(declare-fun m!6131146 () Bool)

(assert (=> b!5079385 m!6131146))

(assert (=> b!5079385 m!6130218))

(assert (=> d!1641127 d!1641739))

(assert (=> d!1641127 d!1641449))

(declare-fun d!1641741 () Bool)

(assert (=> d!1641741 (= (height!2157 (ite c!872092 lt!2090517 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) (ite ((_ is Empty!15580) (ite c!872092 lt!2090517 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) 0 (ite ((_ is Leaf!25875) (ite c!872092 lt!2090517 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))) 1 (cheight!15791 (ite c!872092 lt!2090517 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))))

(assert (=> bm!353845 d!1641741))

(declare-fun b!5079386 () Bool)

(declare-fun e!3168591 () List!58574)

(assert (=> b!5079386 (= e!3168591 Nil!58450)))

(declare-fun b!5079389 () Bool)

(declare-fun e!3168592 () List!58574)

(assert (=> b!5079389 (= e!3168592 (++!12807 (list!19021 (left!42840 lt!2090519)) (list!19021 (right!43170 lt!2090519))))))

(declare-fun b!5079388 () Bool)

(assert (=> b!5079388 (= e!3168592 (list!19023 (xs!18946 lt!2090519)))))

(declare-fun d!1641743 () Bool)

(declare-fun c!872411 () Bool)

(assert (=> d!1641743 (= c!872411 ((_ is Empty!15580) lt!2090519))))

(assert (=> d!1641743 (= (list!19021 lt!2090519) e!3168591)))

(declare-fun b!5079387 () Bool)

(assert (=> b!5079387 (= e!3168591 e!3168592)))

(declare-fun c!872412 () Bool)

(assert (=> b!5079387 (= c!872412 ((_ is Leaf!25875) lt!2090519))))

(assert (= (and d!1641743 c!872411) b!5079386))

(assert (= (and d!1641743 (not c!872411)) b!5079387))

(assert (= (and b!5079387 c!872412) b!5079388))

(assert (= (and b!5079387 (not c!872412)) b!5079389))

(declare-fun m!6131148 () Bool)

(assert (=> b!5079389 m!6131148))

(declare-fun m!6131150 () Bool)

(assert (=> b!5079389 m!6131150))

(assert (=> b!5079389 m!6131148))

(assert (=> b!5079389 m!6131150))

(declare-fun m!6131152 () Bool)

(assert (=> b!5079389 m!6131152))

(declare-fun m!6131154 () Bool)

(assert (=> b!5079388 m!6131154))

(assert (=> b!5078236 d!1641743))

(declare-fun e!3168594 () Bool)

(declare-fun lt!2090707 () List!58574)

(declare-fun b!5079393 () Bool)

(assert (=> b!5079393 (= e!3168594 (or (not (= (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) Nil!58450)) (= lt!2090707 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))))

(declare-fun d!1641745 () Bool)

(assert (=> d!1641745 e!3168594))

(declare-fun res!2162558 () Bool)

(assert (=> d!1641745 (=> (not res!2162558) (not e!3168594))))

(assert (=> d!1641745 (= res!2162558 (= (content!10426 lt!2090707) ((_ map or) (content!10426 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (content!10426 (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun e!3168593 () List!58574)

(assert (=> d!1641745 (= lt!2090707 e!3168593)))

(declare-fun c!872413 () Bool)

(assert (=> d!1641745 (= c!872413 ((_ is Nil!58450) (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(assert (=> d!1641745 (= (++!12807 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) lt!2090707)))

(declare-fun b!5079390 () Bool)

(assert (=> b!5079390 (= e!3168593 (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(declare-fun b!5079392 () Bool)

(declare-fun res!2162559 () Bool)

(assert (=> b!5079392 (=> (not res!2162559) (not e!3168594))))

(assert (=> b!5079392 (= res!2162559 (= (size!39108 lt!2090707) (+ (size!39108 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (size!39108 (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))))

(declare-fun b!5079391 () Bool)

(assert (=> b!5079391 (= e!3168593 (Cons!58450 (h!64898 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (++!12807 (t!371381 (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(assert (= (and d!1641745 c!872413) b!5079390))

(assert (= (and d!1641745 (not c!872413)) b!5079391))

(assert (= (and d!1641745 res!2162558) b!5079392))

(assert (= (and b!5079392 res!2162559) b!5079393))

(declare-fun m!6131156 () Bool)

(assert (=> d!1641745 m!6131156))

(assert (=> d!1641745 m!6128824))

(declare-fun m!6131158 () Bool)

(assert (=> d!1641745 m!6131158))

(assert (=> d!1641745 m!6128826))

(declare-fun m!6131160 () Bool)

(assert (=> d!1641745 m!6131160))

(declare-fun m!6131162 () Bool)

(assert (=> b!5079392 m!6131162))

(assert (=> b!5079392 m!6128824))

(declare-fun m!6131164 () Bool)

(assert (=> b!5079392 m!6131164))

(assert (=> b!5079392 m!6128826))

(declare-fun m!6131166 () Bool)

(assert (=> b!5079392 m!6131166))

(assert (=> b!5079391 m!6128826))

(declare-fun m!6131168 () Bool)

(assert (=> b!5079391 m!6131168))

(assert (=> b!5078236 d!1641745))

(declare-fun b!5079394 () Bool)

(declare-fun e!3168595 () List!58574)

(assert (=> b!5079394 (= e!3168595 Nil!58450)))

(declare-fun e!3168596 () List!58574)

(declare-fun b!5079397 () Bool)

(assert (=> b!5079397 (= e!3168596 (++!12807 (list!19021 (left!42840 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))) (list!19021 (right!43170 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))))

(declare-fun b!5079396 () Bool)

(assert (=> b!5079396 (= e!3168596 (list!19023 (xs!18946 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286))))))

(declare-fun c!872414 () Bool)

(declare-fun d!1641747 () Bool)

(assert (=> d!1641747 (= c!872414 ((_ is Empty!15580) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))

(assert (=> d!1641747 (= (list!19021 (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)) e!3168595)))

(declare-fun b!5079395 () Bool)

(assert (=> b!5079395 (= e!3168595 e!3168596)))

(declare-fun c!872415 () Bool)

(assert (=> b!5079395 (= c!872415 ((_ is Leaf!25875) (ite c!871981 (ite c!871976 (right!43170 xs!286) (right!43170 (right!43170 xs!286))) xs!286)))))

(assert (= (and d!1641747 c!872414) b!5079394))

(assert (= (and d!1641747 (not c!872414)) b!5079395))

(assert (= (and b!5079395 c!872415) b!5079396))

(assert (= (and b!5079395 (not c!872415)) b!5079397))

(assert (=> b!5079397 m!6130520))

(assert (=> b!5079397 m!6130538))

(assert (=> b!5079397 m!6130520))

(assert (=> b!5079397 m!6130538))

(declare-fun m!6131170 () Bool)

(assert (=> b!5079397 m!6131170))

(declare-fun m!6131172 () Bool)

(assert (=> b!5079396 m!6131172))

(assert (=> b!5078236 d!1641747))

(declare-fun b!5079398 () Bool)

(declare-fun e!3168597 () List!58574)

(assert (=> b!5079398 (= e!3168597 Nil!58450)))

(declare-fun e!3168598 () List!58574)

(declare-fun b!5079401 () Bool)

(assert (=> b!5079401 (= e!3168598 (++!12807 (list!19021 (left!42840 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))) (list!19021 (right!43170 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))))

(declare-fun b!5079400 () Bool)

(assert (=> b!5079400 (= e!3168598 (list!19023 (xs!18946 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41)))))))))))

(declare-fun d!1641749 () Bool)

(declare-fun c!872416 () Bool)

(assert (=> d!1641749 (= c!872416 ((_ is Empty!15580) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(assert (=> d!1641749 (= (list!19021 (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))) e!3168597)))

(declare-fun b!5079399 () Bool)

(assert (=> b!5079399 (= e!3168597 e!3168598)))

(declare-fun c!872417 () Bool)

(assert (=> b!5079399 (= c!872417 ((_ is Leaf!25875) (ite c!871981 (left!42840 (left!42840 ys!41)) (ite c!871977 (left!42840 (left!42840 (left!42840 ys!41))) (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))))))))

(assert (= (and d!1641749 c!872416) b!5079398))

(assert (= (and d!1641749 (not c!872416)) b!5079399))

(assert (= (and b!5079399 c!872417) b!5079400))

(assert (= (and b!5079399 (not c!872417)) b!5079401))

(assert (=> b!5079401 m!6130526))

(assert (=> b!5079401 m!6130528))

(assert (=> b!5079401 m!6130526))

(assert (=> b!5079401 m!6130528))

(declare-fun m!6131174 () Bool)

(assert (=> b!5079401 m!6131174))

(declare-fun m!6131176 () Bool)

(assert (=> b!5079400 m!6131176))

(assert (=> b!5078236 d!1641749))

(declare-fun b!5079405 () Bool)

(declare-fun e!3168600 () Bool)

(declare-fun lt!2090708 () List!58574)

(assert (=> b!5079405 (= e!3168600 (or (not (= (list!19021 (right!43170 (right!43170 (left!42840 ys!41)))) Nil!58450)) (= lt!2090708 (list!19021 (left!42840 (right!43170 (left!42840 ys!41)))))))))

(declare-fun d!1641751 () Bool)

(assert (=> d!1641751 e!3168600))

(declare-fun res!2162560 () Bool)

(assert (=> d!1641751 (=> (not res!2162560) (not e!3168600))))

(assert (=> d!1641751 (= res!2162560 (= (content!10426 lt!2090708) ((_ map or) (content!10426 (list!19021 (left!42840 (right!43170 (left!42840 ys!41))))) (content!10426 (list!19021 (right!43170 (right!43170 (left!42840 ys!41))))))))))

(declare-fun e!3168599 () List!58574)

(assert (=> d!1641751 (= lt!2090708 e!3168599)))

(declare-fun c!872418 () Bool)

(assert (=> d!1641751 (= c!872418 ((_ is Nil!58450) (list!19021 (left!42840 (right!43170 (left!42840 ys!41))))))))

(assert (=> d!1641751 (= (++!12807 (list!19021 (left!42840 (right!43170 (left!42840 ys!41)))) (list!19021 (right!43170 (right!43170 (left!42840 ys!41))))) lt!2090708)))

(declare-fun b!5079402 () Bool)

(assert (=> b!5079402 (= e!3168599 (list!19021 (right!43170 (right!43170 (left!42840 ys!41)))))))

(declare-fun b!5079404 () Bool)

(declare-fun res!2162561 () Bool)

(assert (=> b!5079404 (=> (not res!2162561) (not e!3168600))))

(assert (=> b!5079404 (= res!2162561 (= (size!39108 lt!2090708) (+ (size!39108 (list!19021 (left!42840 (right!43170 (left!42840 ys!41))))) (size!39108 (list!19021 (right!43170 (right!43170 (left!42840 ys!41))))))))))

(declare-fun b!5079403 () Bool)

(assert (=> b!5079403 (= e!3168599 (Cons!58450 (h!64898 (list!19021 (left!42840 (right!43170 (left!42840 ys!41))))) (++!12807 (t!371381 (list!19021 (left!42840 (right!43170 (left!42840 ys!41))))) (list!19021 (right!43170 (right!43170 (left!42840 ys!41)))))))))

(assert (= (and d!1641751 c!872418) b!5079402))

(assert (= (and d!1641751 (not c!872418)) b!5079403))

(assert (= (and d!1641751 res!2162560) b!5079404))

(assert (= (and b!5079404 res!2162561) b!5079405))

(declare-fun m!6131178 () Bool)

(assert (=> d!1641751 m!6131178))

(assert (=> d!1641751 m!6128648))

(declare-fun m!6131180 () Bool)

(assert (=> d!1641751 m!6131180))

(assert (=> d!1641751 m!6128650))

(declare-fun m!6131182 () Bool)

(assert (=> d!1641751 m!6131182))

(declare-fun m!6131184 () Bool)

(assert (=> b!5079404 m!6131184))

(assert (=> b!5079404 m!6128648))

(declare-fun m!6131186 () Bool)

(assert (=> b!5079404 m!6131186))

(assert (=> b!5079404 m!6128650))

(declare-fun m!6131188 () Bool)

(assert (=> b!5079404 m!6131188))

(assert (=> b!5079403 m!6128650))

(declare-fun m!6131190 () Bool)

(assert (=> b!5079403 m!6131190))

(assert (=> b!5078168 d!1641751))

(declare-fun b!5079406 () Bool)

(declare-fun e!3168601 () List!58574)

(assert (=> b!5079406 (= e!3168601 Nil!58450)))

(declare-fun b!5079409 () Bool)

(declare-fun e!3168602 () List!58574)

(assert (=> b!5079409 (= e!3168602 (++!12807 (list!19021 (left!42840 (left!42840 (right!43170 (left!42840 ys!41))))) (list!19021 (right!43170 (left!42840 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5079408 () Bool)

(assert (=> b!5079408 (= e!3168602 (list!19023 (xs!18946 (left!42840 (right!43170 (left!42840 ys!41))))))))

(declare-fun d!1641753 () Bool)

(declare-fun c!872419 () Bool)

(assert (=> d!1641753 (= c!872419 ((_ is Empty!15580) (left!42840 (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641753 (= (list!19021 (left!42840 (right!43170 (left!42840 ys!41)))) e!3168601)))

(declare-fun b!5079407 () Bool)

(assert (=> b!5079407 (= e!3168601 e!3168602)))

(declare-fun c!872420 () Bool)

(assert (=> b!5079407 (= c!872420 ((_ is Leaf!25875) (left!42840 (right!43170 (left!42840 ys!41)))))))

(assert (= (and d!1641753 c!872419) b!5079406))

(assert (= (and d!1641753 (not c!872419)) b!5079407))

(assert (= (and b!5079407 c!872420) b!5079408))

(assert (= (and b!5079407 (not c!872420)) b!5079409))

(declare-fun m!6131192 () Bool)

(assert (=> b!5079409 m!6131192))

(declare-fun m!6131194 () Bool)

(assert (=> b!5079409 m!6131194))

(assert (=> b!5079409 m!6131192))

(assert (=> b!5079409 m!6131194))

(declare-fun m!6131196 () Bool)

(assert (=> b!5079409 m!6131196))

(declare-fun m!6131198 () Bool)

(assert (=> b!5079408 m!6131198))

(assert (=> b!5078168 d!1641753))

(declare-fun b!5079410 () Bool)

(declare-fun e!3168603 () List!58574)

(assert (=> b!5079410 (= e!3168603 Nil!58450)))

(declare-fun b!5079413 () Bool)

(declare-fun e!3168604 () List!58574)

(assert (=> b!5079413 (= e!3168604 (++!12807 (list!19021 (left!42840 (right!43170 (right!43170 (left!42840 ys!41))))) (list!19021 (right!43170 (right!43170 (right!43170 (left!42840 ys!41)))))))))

(declare-fun b!5079412 () Bool)

(assert (=> b!5079412 (= e!3168604 (list!19023 (xs!18946 (right!43170 (right!43170 (left!42840 ys!41))))))))

(declare-fun d!1641755 () Bool)

(declare-fun c!872421 () Bool)

(assert (=> d!1641755 (= c!872421 ((_ is Empty!15580) (right!43170 (right!43170 (left!42840 ys!41)))))))

(assert (=> d!1641755 (= (list!19021 (right!43170 (right!43170 (left!42840 ys!41)))) e!3168603)))

(declare-fun b!5079411 () Bool)

(assert (=> b!5079411 (= e!3168603 e!3168604)))

(declare-fun c!872422 () Bool)

(assert (=> b!5079411 (= c!872422 ((_ is Leaf!25875) (right!43170 (right!43170 (left!42840 ys!41)))))))

(assert (= (and d!1641755 c!872421) b!5079410))

(assert (= (and d!1641755 (not c!872421)) b!5079411))

(assert (= (and b!5079411 c!872422) b!5079412))

(assert (= (and b!5079411 (not c!872422)) b!5079413))

(declare-fun m!6131200 () Bool)

(assert (=> b!5079413 m!6131200))

(declare-fun m!6131202 () Bool)

(assert (=> b!5079413 m!6131202))

(assert (=> b!5079413 m!6131200))

(assert (=> b!5079413 m!6131202))

(declare-fun m!6131204 () Bool)

(assert (=> b!5079413 m!6131204))

(declare-fun m!6131206 () Bool)

(assert (=> b!5079412 m!6131206))

(assert (=> b!5078168 d!1641755))

(declare-fun d!1641757 () Bool)

(assert (=> d!1641757 (= (list!19023 (xs!18946 (right!43170 lt!2090452))) (innerList!15668 (xs!18946 (right!43170 lt!2090452))))))

(assert (=> b!5078379 d!1641757))

(assert (=> b!5078075 d!1641107))

(assert (=> b!5078075 d!1641109))

(assert (=> d!1641045 d!1641455))

(assert (=> d!1641045 d!1641133))

(declare-fun d!1641759 () Bool)

(declare-fun lt!2090709 () Int)

(assert (=> d!1641759 (>= lt!2090709 0)))

(declare-fun e!3168605 () Int)

(assert (=> d!1641759 (= lt!2090709 e!3168605)))

(declare-fun c!872423 () Bool)

(assert (=> d!1641759 (= c!872423 ((_ is Nil!58450) (t!371381 (innerList!15668 (xs!18946 ys!41)))))))

(assert (=> d!1641759 (= (size!39108 (t!371381 (innerList!15668 (xs!18946 ys!41)))) lt!2090709)))

(declare-fun b!5079414 () Bool)

(assert (=> b!5079414 (= e!3168605 0)))

(declare-fun b!5079415 () Bool)

(assert (=> b!5079415 (= e!3168605 (+ 1 (size!39108 (t!371381 (t!371381 (innerList!15668 (xs!18946 ys!41)))))))))

(assert (= (and d!1641759 c!872423) b!5079414))

(assert (= (and d!1641759 (not c!872423)) b!5079415))

(declare-fun m!6131208 () Bool)

(assert (=> b!5079415 m!6131208))

(assert (=> b!5078351 d!1641759))

(assert (=> bm!353819 d!1640981))

(assert (=> b!5078583 d!1641595))

(declare-fun d!1641761 () Bool)

(assert (=> d!1641761 (= (list!19023 (xs!18946 lt!2090493)) (innerList!15668 (xs!18946 lt!2090493)))))

(assert (=> b!5078149 d!1641761))

(declare-fun tp!1416886 () Bool)

(declare-fun e!3168606 () Bool)

(declare-fun b!5079416 () Bool)

(declare-fun tp!1416884 () Bool)

(assert (=> b!5079416 (= e!3168606 (and (inv!77643 (left!42840 (left!42840 (left!42840 (right!43170 xs!286))))) tp!1416884 (inv!77643 (right!43170 (left!42840 (left!42840 (right!43170 xs!286))))) tp!1416886))))

(declare-fun b!5079418 () Bool)

(declare-fun e!3168607 () Bool)

(declare-fun tp!1416885 () Bool)

(assert (=> b!5079418 (= e!3168607 tp!1416885)))

(declare-fun b!5079417 () Bool)

(assert (=> b!5079417 (= e!3168606 (and (inv!77644 (xs!18946 (left!42840 (left!42840 (right!43170 xs!286))))) e!3168607))))

(assert (=> b!5078617 (= tp!1416825 (and (inv!77643 (left!42840 (left!42840 (right!43170 xs!286)))) e!3168606))))

(assert (= (and b!5078617 ((_ is Node!15580) (left!42840 (left!42840 (right!43170 xs!286))))) b!5079416))

(assert (= b!5079417 b!5079418))

(assert (= (and b!5078617 ((_ is Leaf!25875) (left!42840 (left!42840 (right!43170 xs!286))))) b!5079417))

(declare-fun m!6131210 () Bool)

(assert (=> b!5079416 m!6131210))

(declare-fun m!6131212 () Bool)

(assert (=> b!5079416 m!6131212))

(declare-fun m!6131214 () Bool)

(assert (=> b!5079417 m!6131214))

(assert (=> b!5078617 m!6129528))

(declare-fun tp!1416887 () Bool)

(declare-fun tp!1416889 () Bool)

(declare-fun e!3168608 () Bool)

(declare-fun b!5079419 () Bool)

(assert (=> b!5079419 (= e!3168608 (and (inv!77643 (left!42840 (right!43170 (left!42840 (right!43170 xs!286))))) tp!1416887 (inv!77643 (right!43170 (right!43170 (left!42840 (right!43170 xs!286))))) tp!1416889))))

(declare-fun b!5079421 () Bool)

(declare-fun e!3168609 () Bool)

(declare-fun tp!1416888 () Bool)

(assert (=> b!5079421 (= e!3168609 tp!1416888)))

(declare-fun b!5079420 () Bool)

(assert (=> b!5079420 (= e!3168608 (and (inv!77644 (xs!18946 (right!43170 (left!42840 (right!43170 xs!286))))) e!3168609))))

(assert (=> b!5078617 (= tp!1416827 (and (inv!77643 (right!43170 (left!42840 (right!43170 xs!286)))) e!3168608))))

(assert (= (and b!5078617 ((_ is Node!15580) (right!43170 (left!42840 (right!43170 xs!286))))) b!5079419))

(assert (= b!5079420 b!5079421))

(assert (= (and b!5078617 ((_ is Leaf!25875) (right!43170 (left!42840 (right!43170 xs!286))))) b!5079420))

(declare-fun m!6131216 () Bool)

(assert (=> b!5079419 m!6131216))

(declare-fun m!6131218 () Bool)

(assert (=> b!5079419 m!6131218))

(declare-fun m!6131220 () Bool)

(assert (=> b!5079420 m!6131220))

(assert (=> b!5078617 m!6129530))

(declare-fun b!5079422 () Bool)

(declare-fun e!3168610 () Bool)

(declare-fun tp!1416890 () Bool)

(assert (=> b!5079422 (= e!3168610 (and tp_is_empty!37083 tp!1416890))))

(assert (=> b!5078647 (= tp!1416842 e!3168610)))

(assert (= (and b!5078647 ((_ is Cons!58450) (innerList!15668 (xs!18946 (left!42840 (left!42840 xs!286)))))) b!5079422))

(declare-fun tp!1416893 () Bool)

(declare-fun b!5079423 () Bool)

(declare-fun e!3168611 () Bool)

(declare-fun tp!1416891 () Bool)

(assert (=> b!5079423 (= e!3168611 (and (inv!77643 (left!42840 (left!42840 (right!43170 (left!42840 ys!41))))) tp!1416891 (inv!77643 (right!43170 (left!42840 (right!43170 (left!42840 ys!41))))) tp!1416893))))

(declare-fun b!5079425 () Bool)

(declare-fun e!3168612 () Bool)

(declare-fun tp!1416892 () Bool)

(assert (=> b!5079425 (= e!3168612 tp!1416892)))

(declare-fun b!5079424 () Bool)

(assert (=> b!5079424 (= e!3168611 (and (inv!77644 (xs!18946 (left!42840 (right!43170 (left!42840 ys!41))))) e!3168612))))

(assert (=> b!5078659 (= tp!1416851 (and (inv!77643 (left!42840 (right!43170 (left!42840 ys!41)))) e!3168611))))

(assert (= (and b!5078659 ((_ is Node!15580) (left!42840 (right!43170 (left!42840 ys!41))))) b!5079423))

(assert (= b!5079424 b!5079425))

(assert (= (and b!5078659 ((_ is Leaf!25875) (left!42840 (right!43170 (left!42840 ys!41))))) b!5079424))

(declare-fun m!6131222 () Bool)

(assert (=> b!5079423 m!6131222))

(declare-fun m!6131224 () Bool)

(assert (=> b!5079423 m!6131224))

(declare-fun m!6131226 () Bool)

(assert (=> b!5079424 m!6131226))

(assert (=> b!5078659 m!6129606))

(declare-fun tp!1416896 () Bool)

(declare-fun e!3168613 () Bool)

(declare-fun b!5079426 () Bool)

(declare-fun tp!1416894 () Bool)

(assert (=> b!5079426 (= e!3168613 (and (inv!77643 (left!42840 (right!43170 (right!43170 (left!42840 ys!41))))) tp!1416894 (inv!77643 (right!43170 (right!43170 (right!43170 (left!42840 ys!41))))) tp!1416896))))

(declare-fun b!5079428 () Bool)

(declare-fun e!3168614 () Bool)

(declare-fun tp!1416895 () Bool)

(assert (=> b!5079428 (= e!3168614 tp!1416895)))

(declare-fun b!5079427 () Bool)

(assert (=> b!5079427 (= e!3168613 (and (inv!77644 (xs!18946 (right!43170 (right!43170 (left!42840 ys!41))))) e!3168614))))

(assert (=> b!5078659 (= tp!1416853 (and (inv!77643 (right!43170 (right!43170 (left!42840 ys!41)))) e!3168613))))

(assert (= (and b!5078659 ((_ is Node!15580) (right!43170 (right!43170 (left!42840 ys!41))))) b!5079426))

(assert (= b!5079427 b!5079428))

(assert (= (and b!5078659 ((_ is Leaf!25875) (right!43170 (right!43170 (left!42840 ys!41))))) b!5079427))

(declare-fun m!6131228 () Bool)

(assert (=> b!5079426 m!6131228))

(declare-fun m!6131230 () Bool)

(assert (=> b!5079426 m!6131230))

(declare-fun m!6131232 () Bool)

(assert (=> b!5079427 m!6131232))

(assert (=> b!5078659 m!6129610))

(declare-fun b!5079429 () Bool)

(declare-fun e!3168615 () Bool)

(declare-fun tp!1416897 () Bool)

(assert (=> b!5079429 (= e!3168615 (and tp_is_empty!37083 tp!1416897))))

(assert (=> b!5078640 (= tp!1416835 e!3168615)))

(assert (= (and b!5078640 ((_ is Cons!58450) (innerList!15668 (xs!18946 (right!43170 (right!43170 ys!41)))))) b!5079429))

(declare-fun b!5079430 () Bool)

(declare-fun e!3168616 () Bool)

(declare-fun tp!1416898 () Bool)

(assert (=> b!5079430 (= e!3168616 (and tp_is_empty!37083 tp!1416898))))

(assert (=> b!5078616 (= tp!1416824 e!3168616)))

(assert (= (and b!5078616 ((_ is Cons!58450) (t!371381 (t!371381 (innerList!15668 (xs!18946 xs!286)))))) b!5079430))

(declare-fun b!5079431 () Bool)

(declare-fun e!3168617 () Bool)

(declare-fun tp!1416899 () Bool)

(assert (=> b!5079431 (= e!3168617 (and tp_is_empty!37083 tp!1416899))))

(assert (=> b!5078641 (= tp!1416837 e!3168617)))

(assert (= (and b!5078641 ((_ is Cons!58450) (t!371381 (innerList!15668 (xs!18946 (left!42840 xs!286)))))) b!5079431))

(declare-fun b!5079432 () Bool)

(declare-fun e!3168618 () Bool)

(declare-fun tp!1416900 () Bool)

(assert (=> b!5079432 (= e!3168618 (and tp_is_empty!37083 tp!1416900))))

(assert (=> b!5078631 (= tp!1416832 e!3168618)))

(assert (= (and b!5078631 ((_ is Cons!58450) (innerList!15668 (xs!18946 (left!42840 (right!43170 ys!41)))))) b!5079432))

(declare-fun tp!1416903 () Bool)

(declare-fun b!5079433 () Bool)

(declare-fun e!3168619 () Bool)

(declare-fun tp!1416901 () Bool)

(assert (=> b!5079433 (= e!3168619 (and (inv!77643 (left!42840 (left!42840 (right!43170 (right!43170 ys!41))))) tp!1416901 (inv!77643 (right!43170 (left!42840 (right!43170 (right!43170 ys!41))))) tp!1416903))))

(declare-fun b!5079435 () Bool)

(declare-fun e!3168620 () Bool)

(declare-fun tp!1416902 () Bool)

(assert (=> b!5079435 (= e!3168620 tp!1416902)))

(declare-fun b!5079434 () Bool)

(assert (=> b!5079434 (= e!3168619 (and (inv!77644 (xs!18946 (left!42840 (right!43170 (right!43170 ys!41))))) e!3168620))))

(assert (=> b!5078638 (= tp!1416834 (and (inv!77643 (left!42840 (right!43170 (right!43170 ys!41)))) e!3168619))))

(assert (= (and b!5078638 ((_ is Node!15580) (left!42840 (right!43170 (right!43170 ys!41))))) b!5079433))

(assert (= b!5079434 b!5079435))

(assert (= (and b!5078638 ((_ is Leaf!25875) (left!42840 (right!43170 (right!43170 ys!41))))) b!5079434))

(declare-fun m!6131234 () Bool)

(assert (=> b!5079433 m!6131234))

(declare-fun m!6131236 () Bool)

(assert (=> b!5079433 m!6131236))

(declare-fun m!6131238 () Bool)

(assert (=> b!5079434 m!6131238))

(assert (=> b!5078638 m!6129552))

(declare-fun b!5079436 () Bool)

(declare-fun tp!1416906 () Bool)

(declare-fun tp!1416904 () Bool)

(declare-fun e!3168621 () Bool)

(assert (=> b!5079436 (= e!3168621 (and (inv!77643 (left!42840 (right!43170 (right!43170 (right!43170 ys!41))))) tp!1416904 (inv!77643 (right!43170 (right!43170 (right!43170 (right!43170 ys!41))))) tp!1416906))))

(declare-fun b!5079438 () Bool)

(declare-fun e!3168622 () Bool)

(declare-fun tp!1416905 () Bool)

(assert (=> b!5079438 (= e!3168622 tp!1416905)))

(declare-fun b!5079437 () Bool)

(assert (=> b!5079437 (= e!3168621 (and (inv!77644 (xs!18946 (right!43170 (right!43170 (right!43170 ys!41))))) e!3168622))))

(assert (=> b!5078638 (= tp!1416836 (and (inv!77643 (right!43170 (right!43170 (right!43170 ys!41)))) e!3168621))))

(assert (= (and b!5078638 ((_ is Node!15580) (right!43170 (right!43170 (right!43170 ys!41))))) b!5079436))

(assert (= b!5079437 b!5079438))

(assert (= (and b!5078638 ((_ is Leaf!25875) (right!43170 (right!43170 (right!43170 ys!41))))) b!5079437))

(declare-fun m!6131240 () Bool)

(assert (=> b!5079436 m!6131240))

(declare-fun m!6131242 () Bool)

(assert (=> b!5079436 m!6131242))

(declare-fun m!6131244 () Bool)

(assert (=> b!5079437 m!6131244))

(assert (=> b!5078638 m!6129554))

(declare-fun b!5079439 () Bool)

(declare-fun e!3168623 () Bool)

(declare-fun tp!1416907 () Bool)

(assert (=> b!5079439 (= e!3168623 (and tp_is_empty!37083 tp!1416907))))

(assert (=> b!5078650 (= tp!1416845 e!3168623)))

(assert (= (and b!5078650 ((_ is Cons!58450) (innerList!15668 (xs!18946 (right!43170 (left!42840 xs!286)))))) b!5079439))

(declare-fun b!5079440 () Bool)

(declare-fun e!3168624 () Bool)

(declare-fun tp!1416908 () Bool)

(assert (=> b!5079440 (= e!3168624 (and tp_is_empty!37083 tp!1416908))))

(assert (=> b!5078658 (= tp!1416849 e!3168624)))

(assert (= (and b!5078658 ((_ is Cons!58450) (innerList!15668 (xs!18946 (left!42840 (left!42840 ys!41)))))) b!5079440))

(declare-fun tp!1416911 () Bool)

(declare-fun b!5079441 () Bool)

(declare-fun e!3168625 () Bool)

(declare-fun tp!1416909 () Bool)

(assert (=> b!5079441 (= e!3168625 (and (inv!77643 (left!42840 (left!42840 (left!42840 (left!42840 ys!41))))) tp!1416909 (inv!77643 (right!43170 (left!42840 (left!42840 (left!42840 ys!41))))) tp!1416911))))

(declare-fun b!5079443 () Bool)

(declare-fun e!3168626 () Bool)

(declare-fun tp!1416910 () Bool)

(assert (=> b!5079443 (= e!3168626 tp!1416910)))

(declare-fun b!5079442 () Bool)

(assert (=> b!5079442 (= e!3168625 (and (inv!77644 (xs!18946 (left!42840 (left!42840 (left!42840 ys!41))))) e!3168626))))

(assert (=> b!5078656 (= tp!1416848 (and (inv!77643 (left!42840 (left!42840 (left!42840 ys!41)))) e!3168625))))

(assert (= (and b!5078656 ((_ is Node!15580) (left!42840 (left!42840 (left!42840 ys!41))))) b!5079441))

(assert (= b!5079442 b!5079443))

(assert (= (and b!5078656 ((_ is Leaf!25875) (left!42840 (left!42840 (left!42840 ys!41))))) b!5079442))

(declare-fun m!6131246 () Bool)

(assert (=> b!5079441 m!6131246))

(declare-fun m!6131248 () Bool)

(assert (=> b!5079441 m!6131248))

(declare-fun m!6131250 () Bool)

(assert (=> b!5079442 m!6131250))

(assert (=> b!5078656 m!6129588))

(declare-fun tp!1416914 () Bool)

(declare-fun e!3168627 () Bool)

(declare-fun b!5079444 () Bool)

(declare-fun tp!1416912 () Bool)

(assert (=> b!5079444 (= e!3168627 (and (inv!77643 (left!42840 (right!43170 (left!42840 (left!42840 ys!41))))) tp!1416912 (inv!77643 (right!43170 (right!43170 (left!42840 (left!42840 ys!41))))) tp!1416914))))

(declare-fun b!5079446 () Bool)

(declare-fun e!3168628 () Bool)

(declare-fun tp!1416913 () Bool)

(assert (=> b!5079446 (= e!3168628 tp!1416913)))

(declare-fun b!5079445 () Bool)

(assert (=> b!5079445 (= e!3168627 (and (inv!77644 (xs!18946 (right!43170 (left!42840 (left!42840 ys!41))))) e!3168628))))

(assert (=> b!5078656 (= tp!1416850 (and (inv!77643 (right!43170 (left!42840 (left!42840 ys!41)))) e!3168627))))

(assert (= (and b!5078656 ((_ is Node!15580) (right!43170 (left!42840 (left!42840 ys!41))))) b!5079444))

(assert (= b!5079445 b!5079446))

(assert (= (and b!5078656 ((_ is Leaf!25875) (right!43170 (left!42840 (left!42840 ys!41))))) b!5079445))

(declare-fun m!6131252 () Bool)

(assert (=> b!5079444 m!6131252))

(declare-fun m!6131254 () Bool)

(assert (=> b!5079444 m!6131254))

(declare-fun m!6131256 () Bool)

(assert (=> b!5079445 m!6131256))

(assert (=> b!5078656 m!6129592))

(declare-fun b!5079447 () Bool)

(declare-fun e!3168629 () Bool)

(declare-fun tp!1416915 () Bool)

(assert (=> b!5079447 (= e!3168629 (and tp_is_empty!37083 tp!1416915))))

(assert (=> b!5078644 (= tp!1416840 e!3168629)))

(assert (= (and b!5078644 ((_ is Cons!58450) (t!371381 (innerList!15668 (xs!18946 (right!43170 xs!286)))))) b!5079447))

(declare-fun tp!1416918 () Bool)

(declare-fun e!3168630 () Bool)

(declare-fun tp!1416916 () Bool)

(declare-fun b!5079448 () Bool)

(assert (=> b!5079448 (= e!3168630 (and (inv!77643 (left!42840 (left!42840 (right!43170 (right!43170 xs!286))))) tp!1416916 (inv!77643 (right!43170 (left!42840 (right!43170 (right!43170 xs!286))))) tp!1416918))))

(declare-fun b!5079450 () Bool)

(declare-fun e!3168631 () Bool)

(declare-fun tp!1416917 () Bool)

(assert (=> b!5079450 (= e!3168631 tp!1416917)))

(declare-fun b!5079449 () Bool)

(assert (=> b!5079449 (= e!3168630 (and (inv!77644 (xs!18946 (left!42840 (right!43170 (right!43170 xs!286))))) e!3168631))))

(assert (=> b!5078626 (= tp!1416828 (and (inv!77643 (left!42840 (right!43170 (right!43170 xs!286)))) e!3168630))))

(assert (= (and b!5078626 ((_ is Node!15580) (left!42840 (right!43170 (right!43170 xs!286))))) b!5079448))

(assert (= b!5079449 b!5079450))

(assert (= (and b!5078626 ((_ is Leaf!25875) (left!42840 (right!43170 (right!43170 xs!286))))) b!5079449))

(declare-fun m!6131258 () Bool)

(assert (=> b!5079448 m!6131258))

(declare-fun m!6131260 () Bool)

(assert (=> b!5079448 m!6131260))

(declare-fun m!6131262 () Bool)

(assert (=> b!5079449 m!6131262))

(assert (=> b!5078626 m!6129534))

(declare-fun e!3168632 () Bool)

(declare-fun b!5079451 () Bool)

(declare-fun tp!1416919 () Bool)

(declare-fun tp!1416921 () Bool)

(assert (=> b!5079451 (= e!3168632 (and (inv!77643 (left!42840 (right!43170 (right!43170 (right!43170 xs!286))))) tp!1416919 (inv!77643 (right!43170 (right!43170 (right!43170 (right!43170 xs!286))))) tp!1416921))))

(declare-fun b!5079453 () Bool)

(declare-fun e!3168633 () Bool)

(declare-fun tp!1416920 () Bool)

(assert (=> b!5079453 (= e!3168633 tp!1416920)))

(declare-fun b!5079452 () Bool)

(assert (=> b!5079452 (= e!3168632 (and (inv!77644 (xs!18946 (right!43170 (right!43170 (right!43170 xs!286))))) e!3168633))))

(assert (=> b!5078626 (= tp!1416830 (and (inv!77643 (right!43170 (right!43170 (right!43170 xs!286)))) e!3168632))))

(assert (= (and b!5078626 ((_ is Node!15580) (right!43170 (right!43170 (right!43170 xs!286))))) b!5079451))

(assert (= b!5079452 b!5079453))

(assert (= (and b!5078626 ((_ is Leaf!25875) (right!43170 (right!43170 (right!43170 xs!286))))) b!5079452))

(declare-fun m!6131264 () Bool)

(assert (=> b!5079451 m!6131264))

(declare-fun m!6131266 () Bool)

(assert (=> b!5079451 m!6131266))

(declare-fun m!6131268 () Bool)

(assert (=> b!5079452 m!6131268))

(assert (=> b!5078626 m!6129538))

(declare-fun b!5079454 () Bool)

(declare-fun e!3168634 () Bool)

(declare-fun tp!1416922 () Bool)

(assert (=> b!5079454 (= e!3168634 (and tp_is_empty!37083 tp!1416922))))

(assert (=> b!5078661 (= tp!1416852 e!3168634)))

(assert (= (and b!5078661 ((_ is Cons!58450) (innerList!15668 (xs!18946 (right!43170 (left!42840 ys!41)))))) b!5079454))

(declare-fun b!5079455 () Bool)

(declare-fun e!3168635 () Bool)

(declare-fun tp!1416923 () Bool)

(assert (=> b!5079455 (= e!3168635 (and tp_is_empty!37083 tp!1416923))))

(assert (=> b!5078655 (= tp!1416847 e!3168635)))

(assert (= (and b!5078655 ((_ is Cons!58450) (t!371381 (innerList!15668 (xs!18946 (right!43170 ys!41)))))) b!5079455))

(declare-fun b!5079456 () Bool)

(declare-fun e!3168636 () Bool)

(declare-fun tp!1416924 () Bool)

(assert (=> b!5079456 (= e!3168636 (and tp_is_empty!37083 tp!1416924))))

(assert (=> b!5078619 (= tp!1416826 e!3168636)))

(assert (= (and b!5078619 ((_ is Cons!58450) (innerList!15668 (xs!18946 (left!42840 (right!43170 xs!286)))))) b!5079456))

(declare-fun b!5079457 () Bool)

(declare-fun e!3168637 () Bool)

(declare-fun tp!1416925 () Bool)

(assert (=> b!5079457 (= e!3168637 (and tp_is_empty!37083 tp!1416925))))

(assert (=> b!5078628 (= tp!1416829 e!3168637)))

(assert (= (and b!5078628 ((_ is Cons!58450) (innerList!15668 (xs!18946 (right!43170 (right!43170 xs!286)))))) b!5079457))

(declare-fun b!5079458 () Bool)

(declare-fun e!3168638 () Bool)

(declare-fun tp!1416926 () Bool)

(assert (=> b!5079458 (= e!3168638 (and tp_is_empty!37083 tp!1416926))))

(assert (=> b!5078642 (= tp!1416838 e!3168638)))

(assert (= (and b!5078642 ((_ is Cons!58450) (t!371381 (innerList!15668 (xs!18946 (left!42840 ys!41)))))) b!5079458))

(declare-fun b!5079459 () Bool)

(declare-fun e!3168639 () Bool)

(declare-fun tp!1416927 () Bool)

(assert (=> b!5079459 (= e!3168639 (and tp_is_empty!37083 tp!1416927))))

(assert (=> b!5078643 (= tp!1416839 e!3168639)))

(assert (= (and b!5078643 ((_ is Cons!58450) (t!371381 (t!371381 (innerList!15668 (xs!18946 ys!41)))))) b!5079459))

(declare-fun b!5079460 () Bool)

(declare-fun tp!1416930 () Bool)

(declare-fun e!3168640 () Bool)

(declare-fun tp!1416928 () Bool)

(assert (=> b!5079460 (= e!3168640 (and (inv!77643 (left!42840 (left!42840 (left!42840 (left!42840 xs!286))))) tp!1416928 (inv!77643 (right!43170 (left!42840 (left!42840 (left!42840 xs!286))))) tp!1416930))))

(declare-fun b!5079462 () Bool)

(declare-fun e!3168641 () Bool)

(declare-fun tp!1416929 () Bool)

(assert (=> b!5079462 (= e!3168641 tp!1416929)))

(declare-fun b!5079461 () Bool)

(assert (=> b!5079461 (= e!3168640 (and (inv!77644 (xs!18946 (left!42840 (left!42840 (left!42840 xs!286))))) e!3168641))))

(assert (=> b!5078645 (= tp!1416841 (and (inv!77643 (left!42840 (left!42840 (left!42840 xs!286)))) e!3168640))))

(assert (= (and b!5078645 ((_ is Node!15580) (left!42840 (left!42840 (left!42840 xs!286))))) b!5079460))

(assert (= b!5079461 b!5079462))

(assert (= (and b!5078645 ((_ is Leaf!25875) (left!42840 (left!42840 (left!42840 xs!286))))) b!5079461))

(declare-fun m!6131270 () Bool)

(assert (=> b!5079460 m!6131270))

(declare-fun m!6131272 () Bool)

(assert (=> b!5079460 m!6131272))

(declare-fun m!6131274 () Bool)

(assert (=> b!5079461 m!6131274))

(assert (=> b!5078645 m!6129574))

(declare-fun tp!1416933 () Bool)

(declare-fun e!3168642 () Bool)

(declare-fun tp!1416931 () Bool)

(declare-fun b!5079463 () Bool)

(assert (=> b!5079463 (= e!3168642 (and (inv!77643 (left!42840 (right!43170 (left!42840 (left!42840 xs!286))))) tp!1416931 (inv!77643 (right!43170 (right!43170 (left!42840 (left!42840 xs!286))))) tp!1416933))))

(declare-fun b!5079465 () Bool)

(declare-fun e!3168643 () Bool)

(declare-fun tp!1416932 () Bool)

(assert (=> b!5079465 (= e!3168643 tp!1416932)))

(declare-fun b!5079464 () Bool)

(assert (=> b!5079464 (= e!3168642 (and (inv!77644 (xs!18946 (right!43170 (left!42840 (left!42840 xs!286))))) e!3168643))))

(assert (=> b!5078645 (= tp!1416843 (and (inv!77643 (right!43170 (left!42840 (left!42840 xs!286)))) e!3168642))))

(assert (= (and b!5078645 ((_ is Node!15580) (right!43170 (left!42840 (left!42840 xs!286))))) b!5079463))

(assert (= b!5079464 b!5079465))

(assert (= (and b!5078645 ((_ is Leaf!25875) (right!43170 (left!42840 (left!42840 xs!286))))) b!5079464))

(declare-fun m!6131276 () Bool)

(assert (=> b!5079463 m!6131276))

(declare-fun m!6131278 () Bool)

(assert (=> b!5079463 m!6131278))

(declare-fun m!6131280 () Bool)

(assert (=> b!5079464 m!6131280))

(assert (=> b!5078645 m!6129576))

(declare-fun tp!1416934 () Bool)

(declare-fun b!5079466 () Bool)

(declare-fun e!3168644 () Bool)

(declare-fun tp!1416936 () Bool)

(assert (=> b!5079466 (= e!3168644 (and (inv!77643 (left!42840 (left!42840 (left!42840 (right!43170 ys!41))))) tp!1416934 (inv!77643 (right!43170 (left!42840 (left!42840 (right!43170 ys!41))))) tp!1416936))))

(declare-fun b!5079468 () Bool)

(declare-fun e!3168645 () Bool)

(declare-fun tp!1416935 () Bool)

(assert (=> b!5079468 (= e!3168645 tp!1416935)))

(declare-fun b!5079467 () Bool)

(assert (=> b!5079467 (= e!3168644 (and (inv!77644 (xs!18946 (left!42840 (left!42840 (right!43170 ys!41))))) e!3168645))))

(assert (=> b!5078629 (= tp!1416831 (and (inv!77643 (left!42840 (left!42840 (right!43170 ys!41)))) e!3168644))))

(assert (= (and b!5078629 ((_ is Node!15580) (left!42840 (left!42840 (right!43170 ys!41))))) b!5079466))

(assert (= b!5079467 b!5079468))

(assert (= (and b!5078629 ((_ is Leaf!25875) (left!42840 (left!42840 (right!43170 ys!41))))) b!5079467))

(declare-fun m!6131282 () Bool)

(assert (=> b!5079466 m!6131282))

(declare-fun m!6131284 () Bool)

(assert (=> b!5079466 m!6131284))

(declare-fun m!6131286 () Bool)

(assert (=> b!5079467 m!6131286))

(assert (=> b!5078629 m!6129546))

(declare-fun e!3168646 () Bool)

(declare-fun b!5079469 () Bool)

(declare-fun tp!1416939 () Bool)

(declare-fun tp!1416937 () Bool)

(assert (=> b!5079469 (= e!3168646 (and (inv!77643 (left!42840 (right!43170 (left!42840 (right!43170 ys!41))))) tp!1416937 (inv!77643 (right!43170 (right!43170 (left!42840 (right!43170 ys!41))))) tp!1416939))))

(declare-fun b!5079471 () Bool)

(declare-fun e!3168647 () Bool)

(declare-fun tp!1416938 () Bool)

(assert (=> b!5079471 (= e!3168647 tp!1416938)))

(declare-fun b!5079470 () Bool)

(assert (=> b!5079470 (= e!3168646 (and (inv!77644 (xs!18946 (right!43170 (left!42840 (right!43170 ys!41))))) e!3168647))))

(assert (=> b!5078629 (= tp!1416833 (and (inv!77643 (right!43170 (left!42840 (right!43170 ys!41)))) e!3168646))))

(assert (= (and b!5078629 ((_ is Node!15580) (right!43170 (left!42840 (right!43170 ys!41))))) b!5079469))

(assert (= b!5079470 b!5079471))

(assert (= (and b!5078629 ((_ is Leaf!25875) (right!43170 (left!42840 (right!43170 ys!41))))) b!5079470))

(declare-fun m!6131288 () Bool)

(assert (=> b!5079469 m!6131288))

(declare-fun m!6131290 () Bool)

(assert (=> b!5079469 m!6131290))

(declare-fun m!6131292 () Bool)

(assert (=> b!5079470 m!6131292))

(assert (=> b!5078629 m!6129548))

(declare-fun tp!1416942 () Bool)

(declare-fun b!5079472 () Bool)

(declare-fun e!3168648 () Bool)

(declare-fun tp!1416940 () Bool)

(assert (=> b!5079472 (= e!3168648 (and (inv!77643 (left!42840 (left!42840 (right!43170 (left!42840 xs!286))))) tp!1416940 (inv!77643 (right!43170 (left!42840 (right!43170 (left!42840 xs!286))))) tp!1416942))))

(declare-fun b!5079474 () Bool)

(declare-fun e!3168649 () Bool)

(declare-fun tp!1416941 () Bool)

(assert (=> b!5079474 (= e!3168649 tp!1416941)))

(declare-fun b!5079473 () Bool)

(assert (=> b!5079473 (= e!3168648 (and (inv!77644 (xs!18946 (left!42840 (right!43170 (left!42840 xs!286))))) e!3168649))))

(assert (=> b!5078648 (= tp!1416844 (and (inv!77643 (left!42840 (right!43170 (left!42840 xs!286)))) e!3168648))))

(assert (= (and b!5078648 ((_ is Node!15580) (left!42840 (right!43170 (left!42840 xs!286))))) b!5079472))

(assert (= b!5079473 b!5079474))

(assert (= (and b!5078648 ((_ is Leaf!25875) (left!42840 (right!43170 (left!42840 xs!286))))) b!5079473))

(declare-fun m!6131294 () Bool)

(assert (=> b!5079472 m!6131294))

(declare-fun m!6131296 () Bool)

(assert (=> b!5079472 m!6131296))

(declare-fun m!6131298 () Bool)

(assert (=> b!5079473 m!6131298))

(assert (=> b!5078648 m!6129580))

(declare-fun b!5079475 () Bool)

(declare-fun tp!1416943 () Bool)

(declare-fun e!3168650 () Bool)

(declare-fun tp!1416945 () Bool)

(assert (=> b!5079475 (= e!3168650 (and (inv!77643 (left!42840 (right!43170 (right!43170 (left!42840 xs!286))))) tp!1416943 (inv!77643 (right!43170 (right!43170 (right!43170 (left!42840 xs!286))))) tp!1416945))))

(declare-fun b!5079477 () Bool)

(declare-fun e!3168651 () Bool)

(declare-fun tp!1416944 () Bool)

(assert (=> b!5079477 (= e!3168651 tp!1416944)))

(declare-fun b!5079476 () Bool)

(assert (=> b!5079476 (= e!3168650 (and (inv!77644 (xs!18946 (right!43170 (right!43170 (left!42840 xs!286))))) e!3168651))))

(assert (=> b!5078648 (= tp!1416846 (and (inv!77643 (right!43170 (right!43170 (left!42840 xs!286)))) e!3168650))))

(assert (= (and b!5078648 ((_ is Node!15580) (right!43170 (right!43170 (left!42840 xs!286))))) b!5079475))

(assert (= b!5079476 b!5079477))

(assert (= (and b!5078648 ((_ is Leaf!25875) (right!43170 (right!43170 (left!42840 xs!286))))) b!5079476))

(declare-fun m!6131300 () Bool)

(assert (=> b!5079475 m!6131300))

(declare-fun m!6131302 () Bool)

(assert (=> b!5079475 m!6131302))

(declare-fun m!6131304 () Bool)

(assert (=> b!5079476 m!6131304))

(assert (=> b!5078648 m!6129582))

(check-sat (not b!5078732) (not b!5078966) (not b!5079268) (not b!5079379) (not b!5079162) (not b!5079469) (not b!5079385) (not b!5079367) (not b!5079256) (not b!5078824) (not bm!353948) (not bm!353922) (not b!5079442) (not b!5078753) (not d!1641275) (not b!5079432) (not b!5079128) (not b!5079194) (not bm!353941) (not b!5079097) (not d!1641629) (not b!5079370) (not b!5079430) (not d!1641527) (not b!5079172) (not b!5079466) (not d!1641441) (not b!5078961) (not bm!353953) (not b!5078947) (not d!1641307) (not b!5078922) (not b!5079325) (not d!1641569) (not b!5078858) (not d!1641643) (not d!1641567) (not d!1641371) (not b!5078923) (not b!5079362) (not bm!353919) (not b!5079140) (not d!1641637) (not d!1641503) (not b!5079202) (not b!5078804) (not b!5078943) (not b!5079157) (not b!5079319) (not b!5079476) (not b!5079308) (not b!5079426) (not b!5079066) (not b!5079454) (not d!1641731) (not b!5079027) (not d!1641693) (not d!1641547) (not b!5079415) (not b!5078794) (not b!5079352) (not b!5079060) (not d!1641329) (not b!5078776) (not b!5079307) (not b!5079072) (not b!5078746) (not b!5079413) (not d!1641363) (not d!1641551) (not b!5079439) (not b!5079201) (not b!5078626) (not bm!353907) (not b!5079221) (not b!5079283) (not b!5078868) (not b!5079310) (not b!5079120) (not d!1641537) (not d!1641657) (not d!1641719) (not b!5079208) (not b!5079375) (not b!5079217) (not b!5079021) (not b!5079401) (not b!5079001) (not b!5079471) (not d!1641391) (not b!5079265) (not b!5078950) (not b!5079450) (not b!5079119) (not b!5079011) (not b!5079209) (not d!1641691) (not bm!353912) (not d!1641539) (not d!1641283) (not b!5079365) (not b!5079133) (not d!1641665) (not b!5079224) (not b!5079212) (not b!5078778) (not b!5078869) (not bm!353947) (not b!5079146) (not bm!353906) (not b!5079293) (not d!1641167) (not b!5079053) (not b!5079305) (not d!1641365) (not d!1641409) (not b!5078945) (not b!5079165) (not b!5078788) (not b!5078855) (not b!5079038) (not b!5079428) (not d!1641263) (not b!5079418) (not bm!353929) (not b!5078931) (not d!1641663) (not b!5079458) (not b!5079244) (not b!5079042) (not b!5079429) (not b!5079315) (not b!5078739) (not b!5079465) (not b!5079000) (not b!5079050) (not d!1641585) (not b!5079349) (not d!1641485) (not b!5079101) (not b!5079031) (not b!5078819) (not b!5079007) (not b!5079029) (not b!5079417) (not b!5078811) (not b!5078835) (not b!5079048) (not b!5078729) (not bm!353942) (not b!5079257) (not b!5079156) (not b!5079473) (not b!5079447) (not b!5079087) (not b!5078812) (not b!5079008) (not b!5079206) (not d!1641451) (not bm!353943) (not b!5079421) (not b!5078846) (not b!5079435) (not b!5079064) (not b!5078981) (not b!5079443) (not b!5079170) (not b!5078906) (not bm!353915) (not d!1641611) (not bm!353958) (not b!5079138) (not b!5079436) (not b!5078974) (not b!5079321) (not b!5079467) (not b!5079056) (not b!5078927) (not b!5078948) (not b!5079051) (not b!5078831) (not b!5079236) (not b!5078872) (not bm!353905) (not b!5079132) (not b!5079111) (not b!5078870) (not b!5078806) (not d!1641577) (not d!1641191) (not b!5078760) (not b!5079196) (not b!5079247) (not b!5079440) (not b!5078836) (not b!5078843) (not b!5079219) (not b!5079274) (not d!1641599) (not d!1641313) (not b!5078752) (not b!5079085) (not b!5079453) (not d!1641417) (not b!5078863) (not b!5079290) (not d!1641711) (not b!5078941) (not b!5078970) (not b!5079438) (not b!5079222) (not d!1641705) (not b!5079445) (not b!5079451) (not b!5079017) (not bm!353949) (not b!5078766) (not b!5079383) (not b!5079129) (not b!5079107) (not b!5079090) (not b!5078884) (not bm!353962) (not b!5079204) (not bm!353966) (not b!5079357) (not b!5078854) (not b!5078879) (not b!5079118) (not b!5078977) (not b!5079174) (not b!5079190) (not b!5078758) (not d!1641717) (not b!5079474) (not b!5079330) (not b!5079286) (not d!1641695) (not b!5078818) (not d!1641231) (not b!5079404) (not b!5078800) (not b!5078991) (not b!5078935) (not d!1641419) (not b!5079400) (not b!5078938) (not d!1641433) (not b!5078957) (not b!5078769) (not b!5079218) (not b!5079093) (not b!5079045) (not d!1641639) (not b!5079273) (not d!1641357) (not b!5079004) (not d!1641203) (not b!5079409) (not b!5078975) (not b!5079461) (not d!1641725) (not b!5079364) (not b!5079343) (not b!5079285) (not b!5079347) (not d!1641469) (not b!5079127) (not b!5079234) (not b!5079381) (not b!5078823) (not b!5078757) (not b!5078781) (not b!5078848) (not b!5078768) (not b!5079419) (not b!5078939) (not b!5079446) (not d!1641257) (not b!5078876) (not b!5079333) (not b!5078958) (not b!5079067) (not bm!353951) (not b!5078914) (not bm!353908) (not b!5079125) (not b!5079472) (not b!5078717) (not b!5078971) (not b!5079121) (not bm!353937) (not d!1641395) (not b!5078656) (not b!5079144) (not b!5078787) (not b!5078946) (not b!5079207) (not bm!353955) (not b!5079232) (not b!5078720) (not b!5079019) (not b!5079096) (not b!5078901) (not b!5078764) (not b!5079433) (not b!5079059) (not d!1641173) (not bm!353938) (not b!5078841) (not d!1641653) (not d!1641317) (not b!5079136) (not b!5079335) (not b!5079298) (not b!5078648) (not b!5078896) (not b!5079023) (not b!5078772) (not b!5079033) (not d!1641353) (not d!1641645) (not b!5079444) (not d!1641389) (not b!5078750) (not d!1641457) (not b!5079178) (not b!5079130) (not b!5079360) (not b!5079322) (not d!1641483) (not b!5078802) (not b!5079366) (not bm!353968) (not b!5079151) (not bm!353967) (not b!5079259) (not b!5079477) (not b!5078874) (not b!5079098) (not d!1641487) (not b!5079025) (not b!5078807) (not bm!353925) (not b!5079449) (not d!1641591) (not b!5079054) (not b!5079388) (not d!1641355) (not b!5078866) (not d!1641607) (not b!5078982) (not d!1641179) (not b!5079260) (not b!5078830) (not b!5079317) (not b!5078617) (not b!5078659) (not b!5079115) (not b!5079203) (not d!1641535) (not bm!353934) (not b!5078783) (not b!5078997) (not b!5079340) (not d!1641183) (not b!5078745) (not b!5079126) (not b!5079356) (not d!1641545) (not b!5079403) (not b!5078940) (not bm!353957) (not bm!353927) (not d!1641745) (not b!5079455) (not bm!353914) (not b!5079006) (not b!5079110) (not bm!353933) (not b!5078928) (not d!1641687) (not b!5079253) (not bm!353965) (not b!5079264) (not bm!353913) (not b!5079106) (not bm!353911) (not d!1641479) (not b!5078816) (not b!5079168) (not b!5078985) (not b!5078953) (not b!5078860) (not b!5079214) (not b!5079046) (not b!5079075) (not b!5078878) (not d!1641473) (not b!5078762) (not b!5079089) (not d!1641229) (not b!5078882) (not b!5079312) (not d!1641661) (not b!5079301) (not d!1641623) (not b!5079470) (not b!5078894) (not b!5079230) (not d!1641617) (not b!5078785) (not b!5079192) (not b!5078715) (not d!1641387) (not b!5078911) (not b!5079227) (not b!5079182) (not b!5079211) (not b!5078899) (not bm!353963) (not b!5078736) (not b!5079040) (not bm!353960) (not bm!353916) (not bm!353945) (not b!5079220) (not bm!353956) (not b!5078996) (not b!5079309) (not b!5079210) (not b!5078867) (not b!5079049) (not d!1641647) (not b!5079043) (not bm!353959) (not b!5079420) (not b!5079161) (not b!5078934) (not b!5078861) (not bm!353928) (not b!5079462) (not d!1641619) (not d!1641529) (not b!5079392) (not b!5078942) (not bm!353920) (not b!5078852) (not b!5078955) (not d!1641169) (not d!1641683) (not b!5078902) (not b!5078733) (not b!5079459) (not b!5079441) (not b!5079468) (not b!5079351) (not b!5079374) (not b!5079057) (not b!5079396) (not b!5079229) (not b!5079102) (not b!5078791) (not b!5079464) (not bm!353952) (not b!5078827) (not b!5079412) (not b!5079460) (not b!5079099) (not b!5079047) (not bm!353946) (not b!5079452) (not b!5078629) (not b!5079041) (not b!5078798) (not b!5079422) (not b!5078986) (not d!1641509) (not d!1641651) (not b!5079109) (not b!5078907) (not b!5079448) (not b!5079363) (not b!5079117) (not b!5079005) (not b!5078815) (not b!5078728) (not b!5079378) (not b!5079269) (not d!1641335) (not d!1641285) (not b!5078735) (not b!5079361) (not b!5079240) (not b!5078839) (not b!5078937) (not b!5079278) (not b!5079297) (not b!5079339) (not b!5078929) (not d!1641209) (not b!5079408) (not b!5078721) (not b!5078889) (not b!5078880) (not b!5078944) (not b!5078775) (not b!5079239) (not bm!353964) (not b!5079391) (not b!5079183) (not b!5079123) (not b!5079306) (not b!5078638) (not b!5078949) (not b!5078886) (not b!5078875) (not d!1641615) (not b!5078892) (not b!5078962) (not b!5079205) (not b!5078979) (not b!5079153) (not b!5079431) (not b!5079424) (not d!1641641) (not d!1641205) (not d!1641399) (not d!1641425) (not d!1641635) (not b!5078780) (not b!5079463) (not b!5079113) (not b!5079176) (not b!5079180) (not bm!353910) (not d!1641213) (not b!5079061) (not b!5079092) (not b!5078864) (not b!5079423) (not b!5078645) (not b!5078742) (not b!5079034) (not b!5079216) (not b!5079252) (not b!5079188) (not b!5079094) (not d!1641277) (not b!5079326) (not b!5079148) (not b!5079457) (not b!5079397) (not b!5079079) (not b!5079245) (not bm!353950) (not b!5079389) (not b!5078828) (not b!5078897) (not bm!353961) (not d!1641521) (not d!1641439) (not b!5078925) (not b!5078918) (not b!5079084) (not b!5079199) (not d!1641211) (not b!5078932) (not b!5079058) (not b!5078919) (not b!5079037) (not b!5078723) (not d!1641681) (not b!5079345) (not b!5078724) (not b!5079149) (not bm!353944) (not b!5079187) (not b!5079427) (not b!5078749) (not b!5079277) (not b!5078989) (not bm!353940) (not bm!353909) (not b!5079434) (not b!5079425) (not b!5079091) (not b!5079302) (not d!1641751) (not bm!353918) (not b!5079225) (not b!5078871) (not b!5078913) (not b!5078840) (not b!5078877) (not b!5079039) (not b!5079116) (not b!5079456) (not b!5079108) (not b!5078796) (not b!5078891) (not b!5078849) (not b!5079002) (not b!5078844) (not b!5079015) (not b!5079336) (not b!5079329) (not bm!353954) (not b!5079270) (not b!5079294) (not d!1641249) (not b!5079437) (not b!5079248) (not b!5078924) (not b!5079198) (not b!5079304) (not b!5079369) (not b!5078965) (not b!5079475) (not b!5079009) (not d!1641431) (not b!5079166) (not bm!353917) (not b!5078926) (not b!5078992) (not b!5079416) (not b!5079143) (not b!5078910) (not b!5079289) tp_is_empty!37083 (not d!1641677) (not d!1641181) (not b!5079100) (not b!5078887) (not bm!353939))
(check-sat)
