; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533894 () Bool)

(assert start!533894)

(declare-datatypes ((T!104320 0))(
  ( (T!104321 (val!23534 Int)) )
))
(declare-datatypes ((List!58444 0))(
  ( (Nil!58320) (Cons!58320 (h!64768 T!104320) (t!371075 List!58444)) )
))
(declare-fun lt!2085774 () List!58444)

(declare-datatypes ((tuple2!63276 0))(
  ( (tuple2!63277 (_1!34941 List!58444) (_2!34941 List!58444)) )
))
(declare-fun lt!2085777 () tuple2!63276)

(declare-fun e!3151678 () Bool)

(declare-fun lt!2085776 () List!58444)

(declare-fun b!5047784 () Bool)

(assert (=> b!5047784 (= e!3151678 (= lt!2085777 (tuple2!63277 lt!2085776 lt!2085774)))))

(declare-fun b!5047785 () Bool)

(declare-fun e!3151677 () Bool)

(declare-fun e!3151681 () Bool)

(assert (=> b!5047785 (= e!3151677 (not e!3151681))))

(declare-fun res!2149916 () Bool)

(assert (=> b!5047785 (=> res!2149916 e!3151681)))

(declare-fun lt!2085780 () Int)

(declare-fun i!618 () Int)

(assert (=> b!5047785 (= res!2149916 (or (= lt!2085780 i!618) (< i!618 lt!2085780)))))

(declare-datatypes ((IArray!31125 0))(
  ( (IArray!31126 (innerList!15620 List!58444)) )
))
(declare-datatypes ((Conc!15532 0))(
  ( (Node!15532 (left!42727 Conc!15532) (right!43057 Conc!15532) (csize!31294 Int) (cheight!15743 Int)) (Leaf!25762 (xs!18860 IArray!31125) (csize!31295 Int)) (Empty!15532) )
))
(declare-fun t!4198 () Conc!15532)

(declare-fun size!38944 (Conc!15532) Int)

(assert (=> b!5047785 (= lt!2085780 (size!38944 (left!42727 t!4198)))))

(assert (=> b!5047785 e!3151678))

(declare-fun c!865581 () Bool)

(declare-fun lt!2085779 () Int)

(assert (=> b!5047785 (= c!865581 (= lt!2085779 i!618))))

(declare-fun splitAtIndex!225 (List!58444 Int) tuple2!63276)

(declare-fun ++!12748 (List!58444 List!58444) List!58444)

(assert (=> b!5047785 (= lt!2085777 (splitAtIndex!225 (++!12748 lt!2085776 lt!2085774) i!618))))

(declare-fun size!38945 (List!58444) Int)

(assert (=> b!5047785 (= lt!2085779 (size!38945 lt!2085776))))

(declare-datatypes ((Unit!149519 0))(
  ( (Unit!149520) )
))
(declare-fun lt!2085775 () Unit!149519)

(declare-fun splitAtLemma!80 (List!58444 List!58444 Int) Unit!149519)

(assert (=> b!5047785 (= lt!2085775 (splitAtLemma!80 lt!2085776 lt!2085774 i!618))))

(declare-fun list!18949 (Conc!15532) List!58444)

(assert (=> b!5047785 (= lt!2085774 (list!18949 (right!43057 t!4198)))))

(assert (=> b!5047785 (= lt!2085776 (list!18949 (left!42727 t!4198)))))

(declare-fun bm!351753 () Bool)

(declare-fun c!865580 () Bool)

(declare-fun lt!2085781 () tuple2!63276)

(declare-fun call!351758 () List!58444)

(declare-fun lt!2085778 () tuple2!63276)

(assert (=> bm!351753 (= call!351758 (++!12748 (ite c!865580 (_2!34941 lt!2085781) lt!2085776) (ite c!865580 lt!2085774 (_1!34941 lt!2085778))))))

(declare-fun b!5047786 () Bool)

(declare-fun e!3151680 () Bool)

(declare-fun tp!1411871 () Bool)

(assert (=> b!5047786 (= e!3151680 tp!1411871)))

(declare-fun b!5047787 () Bool)

(declare-fun res!2149917 () Bool)

(assert (=> b!5047787 (=> (not res!2149917) (not e!3151677))))

(get-info :version)

(assert (=> b!5047787 (= res!2149917 (and (not ((_ is Empty!15532) t!4198)) (not ((_ is Leaf!25762) t!4198))))))

(declare-fun b!5047788 () Bool)

(declare-fun call!351759 () tuple2!63276)

(assert (=> b!5047788 (= lt!2085781 call!351759)))

(declare-fun e!3151679 () tuple2!63276)

(assert (=> b!5047788 (= e!3151679 (tuple2!63277 (_1!34941 lt!2085781) call!351758))))

(declare-fun b!5047789 () Bool)

(assert (=> b!5047789 (= e!3151678 (= lt!2085777 e!3151679))))

(assert (=> b!5047789 (= c!865580 (< i!618 lt!2085779))))

(declare-fun b!5047790 () Bool)

(declare-fun res!2149912 () Bool)

(declare-fun e!3151682 () Bool)

(assert (=> b!5047790 (=> (not res!2149912) (not e!3151682))))

(declare-datatypes ((tuple2!63278 0))(
  ( (tuple2!63279 (_1!34942 Conc!15532) (_2!34942 Conc!15532)) )
))
(declare-fun lt!2085783 () tuple2!63278)

(declare-fun isBalanced!4394 (Conc!15532) Bool)

(assert (=> b!5047790 (= res!2149912 (isBalanced!4394 (_2!34942 lt!2085783)))))

(declare-fun b!5047791 () Bool)

(declare-fun res!2149913 () Bool)

(assert (=> b!5047791 (=> (not res!2149913) (not e!3151677))))

(assert (=> b!5047791 (= res!2149913 (<= 0 i!618))))

(declare-fun b!5047792 () Bool)

(declare-fun lt!2085782 () Conc!15532)

(assert (=> b!5047792 (= e!3151682 (= (tuple2!63277 (list!18949 lt!2085782) (list!18949 (_2!34942 lt!2085783))) (splitAtIndex!225 (list!18949 t!4198) i!618)))))

(declare-fun b!5047793 () Bool)

(declare-fun res!2149911 () Bool)

(assert (=> b!5047793 (=> (not res!2149911) (not e!3151677))))

(assert (=> b!5047793 (= res!2149911 (<= i!618 (size!38944 t!4198)))))

(declare-fun b!5047794 () Bool)

(assert (=> b!5047794 (= lt!2085778 call!351759)))

(assert (=> b!5047794 (= e!3151679 (tuple2!63277 call!351758 (_2!34941 lt!2085778)))))

(declare-fun b!5047795 () Bool)

(assert (=> b!5047795 (= e!3151681 e!3151682)))

(declare-fun res!2149914 () Bool)

(assert (=> b!5047795 (=> (not res!2149914) (not e!3151682))))

(assert (=> b!5047795 (= res!2149914 (isBalanced!4394 lt!2085782))))

(declare-fun ++!12749 (Conc!15532 Conc!15532) Conc!15532)

(assert (=> b!5047795 (= lt!2085782 (++!12749 (left!42727 t!4198) (_1!34942 lt!2085783)))))

(declare-fun splitAt!483 (Conc!15532 Int) tuple2!63278)

(assert (=> b!5047795 (= lt!2085783 (splitAt!483 (right!43057 t!4198) (- i!618 lt!2085780)))))

(declare-fun b!5047797 () Bool)

(declare-fun e!3151676 () Bool)

(declare-fun inv!77260 (IArray!31125) Bool)

(assert (=> b!5047797 (= e!3151676 (and (inv!77260 (xs!18860 t!4198)) e!3151680))))

(declare-fun bm!351754 () Bool)

(assert (=> bm!351754 (= call!351759 (splitAtIndex!225 (ite c!865580 lt!2085776 lt!2085774) (ite c!865580 i!618 (- i!618 lt!2085779))))))

(declare-fun b!5047796 () Bool)

(declare-fun tp!1411873 () Bool)

(declare-fun tp!1411872 () Bool)

(declare-fun inv!77261 (Conc!15532) Bool)

(assert (=> b!5047796 (= e!3151676 (and (inv!77261 (left!42727 t!4198)) tp!1411872 (inv!77261 (right!43057 t!4198)) tp!1411873))))

(declare-fun res!2149915 () Bool)

(assert (=> start!533894 (=> (not res!2149915) (not e!3151677))))

(assert (=> start!533894 (= res!2149915 (isBalanced!4394 t!4198))))

(assert (=> start!533894 e!3151677))

(assert (=> start!533894 (and (inv!77261 t!4198) e!3151676)))

(assert (=> start!533894 true))

(assert (= (and start!533894 res!2149915) b!5047791))

(assert (= (and b!5047791 res!2149913) b!5047793))

(assert (= (and b!5047793 res!2149911) b!5047787))

(assert (= (and b!5047787 res!2149917) b!5047785))

(assert (= (and b!5047785 c!865581) b!5047784))

(assert (= (and b!5047785 (not c!865581)) b!5047789))

(assert (= (and b!5047789 c!865580) b!5047788))

(assert (= (and b!5047789 (not c!865580)) b!5047794))

(assert (= (or b!5047788 b!5047794) bm!351753))

(assert (= (or b!5047788 b!5047794) bm!351754))

(assert (= (and b!5047785 (not res!2149916)) b!5047795))

(assert (= (and b!5047795 res!2149914) b!5047790))

(assert (= (and b!5047790 res!2149912) b!5047792))

(assert (= (and start!533894 ((_ is Node!15532) t!4198)) b!5047796))

(assert (= b!5047797 b!5047786))

(assert (= (and start!533894 ((_ is Leaf!25762) t!4198)) b!5047797))

(declare-fun m!6083152 () Bool)

(assert (=> start!533894 m!6083152))

(declare-fun m!6083154 () Bool)

(assert (=> start!533894 m!6083154))

(declare-fun m!6083156 () Bool)

(assert (=> b!5047792 m!6083156))

(declare-fun m!6083158 () Bool)

(assert (=> b!5047792 m!6083158))

(declare-fun m!6083160 () Bool)

(assert (=> b!5047792 m!6083160))

(assert (=> b!5047792 m!6083160))

(declare-fun m!6083162 () Bool)

(assert (=> b!5047792 m!6083162))

(declare-fun m!6083164 () Bool)

(assert (=> b!5047785 m!6083164))

(declare-fun m!6083166 () Bool)

(assert (=> b!5047785 m!6083166))

(declare-fun m!6083168 () Bool)

(assert (=> b!5047785 m!6083168))

(declare-fun m!6083170 () Bool)

(assert (=> b!5047785 m!6083170))

(declare-fun m!6083172 () Bool)

(assert (=> b!5047785 m!6083172))

(assert (=> b!5047785 m!6083166))

(declare-fun m!6083174 () Bool)

(assert (=> b!5047785 m!6083174))

(declare-fun m!6083176 () Bool)

(assert (=> b!5047785 m!6083176))

(declare-fun m!6083178 () Bool)

(assert (=> bm!351754 m!6083178))

(declare-fun m!6083180 () Bool)

(assert (=> b!5047796 m!6083180))

(declare-fun m!6083182 () Bool)

(assert (=> b!5047796 m!6083182))

(declare-fun m!6083184 () Bool)

(assert (=> b!5047797 m!6083184))

(declare-fun m!6083186 () Bool)

(assert (=> b!5047793 m!6083186))

(declare-fun m!6083188 () Bool)

(assert (=> b!5047795 m!6083188))

(declare-fun m!6083190 () Bool)

(assert (=> b!5047795 m!6083190))

(declare-fun m!6083192 () Bool)

(assert (=> b!5047795 m!6083192))

(declare-fun m!6083194 () Bool)

(assert (=> bm!351753 m!6083194))

(declare-fun m!6083196 () Bool)

(assert (=> b!5047790 m!6083196))

(check-sat (not b!5047786) (not b!5047796) (not bm!351754) (not b!5047795) (not bm!351753) (not b!5047793) (not b!5047797) (not b!5047790) (not start!533894) (not b!5047792) (not b!5047785))
(check-sat)
(get-model)

(declare-fun b!5047822 () Bool)

(declare-fun res!2149947 () Bool)

(declare-fun e!3151691 () Bool)

(assert (=> b!5047822 (=> (not res!2149947) (not e!3151691))))

(declare-fun height!2111 (Conc!15532) Int)

(assert (=> b!5047822 (= res!2149947 (<= (- (height!2111 (left!42727 lt!2085782)) (height!2111 (right!43057 lt!2085782))) 1))))

(declare-fun b!5047824 () Bool)

(declare-fun res!2149943 () Bool)

(assert (=> b!5047824 (=> (not res!2149943) (not e!3151691))))

(declare-fun isEmpty!31565 (Conc!15532) Bool)

(assert (=> b!5047824 (= res!2149943 (not (isEmpty!31565 (left!42727 lt!2085782))))))

(declare-fun b!5047825 () Bool)

(declare-fun res!2149944 () Bool)

(assert (=> b!5047825 (=> (not res!2149944) (not e!3151691))))

(assert (=> b!5047825 (= res!2149944 (isBalanced!4394 (left!42727 lt!2085782)))))

(declare-fun b!5047826 () Bool)

(assert (=> b!5047826 (= e!3151691 (not (isEmpty!31565 (right!43057 lt!2085782))))))

(declare-fun b!5047827 () Bool)

(declare-fun res!2149945 () Bool)

(assert (=> b!5047827 (=> (not res!2149945) (not e!3151691))))

(assert (=> b!5047827 (= res!2149945 (isBalanced!4394 (right!43057 lt!2085782)))))

(declare-fun b!5047823 () Bool)

(declare-fun e!3151692 () Bool)

(assert (=> b!5047823 (= e!3151692 e!3151691)))

(declare-fun res!2149942 () Bool)

(assert (=> b!5047823 (=> (not res!2149942) (not e!3151691))))

(assert (=> b!5047823 (= res!2149942 (<= (- 1) (- (height!2111 (left!42727 lt!2085782)) (height!2111 (right!43057 lt!2085782)))))))

(declare-fun d!1624610 () Bool)

(declare-fun res!2149946 () Bool)

(assert (=> d!1624610 (=> res!2149946 e!3151692)))

(assert (=> d!1624610 (= res!2149946 (not ((_ is Node!15532) lt!2085782)))))

(assert (=> d!1624610 (= (isBalanced!4394 lt!2085782) e!3151692)))

(assert (= (and d!1624610 (not res!2149946)) b!5047823))

(assert (= (and b!5047823 res!2149942) b!5047822))

(assert (= (and b!5047822 res!2149947) b!5047825))

(assert (= (and b!5047825 res!2149944) b!5047827))

(assert (= (and b!5047827 res!2149945) b!5047824))

(assert (= (and b!5047824 res!2149943) b!5047826))

(declare-fun m!6083212 () Bool)

(assert (=> b!5047824 m!6083212))

(declare-fun m!6083214 () Bool)

(assert (=> b!5047822 m!6083214))

(declare-fun m!6083216 () Bool)

(assert (=> b!5047822 m!6083216))

(declare-fun m!6083218 () Bool)

(assert (=> b!5047827 m!6083218))

(declare-fun m!6083220 () Bool)

(assert (=> b!5047825 m!6083220))

(assert (=> b!5047823 m!6083214))

(assert (=> b!5047823 m!6083216))

(declare-fun m!6083222 () Bool)

(assert (=> b!5047826 m!6083222))

(assert (=> b!5047795 d!1624610))

(declare-fun lt!2085816 () Conc!15532)

(declare-fun bm!351835 () Bool)

(declare-fun call!351848 () Int)

(declare-fun c!865642 () Bool)

(assert (=> bm!351835 (= call!351848 (height!2111 (ite c!865642 lt!2085816 (_1!34942 lt!2085783))))))

(declare-fun bm!351836 () Bool)

(declare-fun call!351851 () Int)

(assert (=> bm!351836 (= call!351851 (height!2111 (ite c!865642 (right!43057 (left!42727 t!4198)) (left!42727 (_1!34942 lt!2085783)))))))

(declare-fun lt!2085819 () Conc!15532)

(declare-fun c!865640 () Bool)

(declare-fun call!351855 () Conc!15532)

(declare-fun c!865643 () Bool)

(declare-fun bm!351837 () Bool)

(declare-fun c!865636 () Bool)

(declare-fun c!865641 () Bool)

(declare-fun call!351840 () Conc!15532)

(declare-fun call!351842 () Conc!15532)

(declare-fun <>!387 (Conc!15532 Conc!15532) Conc!15532)

(assert (=> bm!351837 (= call!351855 (<>!387 (ite c!865640 (left!42727 t!4198) (ite c!865642 (ite c!865636 (left!42727 (left!42727 t!4198)) call!351840) (ite c!865643 call!351842 (ite c!865641 lt!2085819 (right!43057 (left!42727 (_1!34942 lt!2085783))))))) (ite c!865640 (_1!34942 lt!2085783) (ite c!865642 (ite c!865636 call!351840 lt!2085816) (ite c!865643 (right!43057 (_1!34942 lt!2085783)) (ite c!865641 (right!43057 (left!42727 (_1!34942 lt!2085783))) (right!43057 (_1!34942 lt!2085783))))))))))

(declare-fun bm!351838 () Bool)

(declare-fun call!351853 () Conc!15532)

(declare-fun call!351846 () Conc!15532)

(assert (=> bm!351838 (= call!351853 call!351846)))

(declare-fun call!351852 () Conc!15532)

(declare-fun bm!351839 () Bool)

(declare-fun call!351844 () Conc!15532)

(declare-fun c!865639 () Bool)

(assert (=> bm!351839 (= call!351852 (<>!387 (ite c!865642 (ite c!865639 (left!42727 (left!42727 t!4198)) (ite c!865636 (left!42727 (right!43057 (left!42727 t!4198))) (left!42727 (left!42727 t!4198)))) (ite c!865641 call!351853 lt!2085819)) (ite c!865642 (ite c!865639 call!351844 (ite c!865636 lt!2085816 (left!42727 (right!43057 (left!42727 t!4198))))) (ite c!865641 (right!43057 (_1!34942 lt!2085783)) call!351853))))))

(declare-fun bm!351840 () Bool)

(declare-fun call!351850 () Conc!15532)

(assert (=> bm!351840 (= call!351850 call!351852)))

(declare-fun b!5047996 () Bool)

(declare-fun e!3151780 () Conc!15532)

(declare-fun call!351849 () Conc!15532)

(assert (=> b!5047996 (= e!3151780 call!351849)))

(declare-fun bm!351841 () Bool)

(assert (=> bm!351841 (= call!351840 call!351850)))

(declare-fun d!1624618 () Bool)

(declare-fun e!3151781 () Bool)

(assert (=> d!1624618 e!3151781))

(declare-fun res!2150008 () Bool)

(assert (=> d!1624618 (=> (not res!2150008) (not e!3151781))))

(declare-fun appendAssocInst!897 (Conc!15532 Conc!15532) Bool)

(assert (=> d!1624618 (= res!2150008 (appendAssocInst!897 (left!42727 t!4198) (_1!34942 lt!2085783)))))

(declare-fun lt!2085818 () Conc!15532)

(declare-fun e!3151779 () Conc!15532)

(assert (=> d!1624618 (= lt!2085818 e!3151779)))

(declare-fun c!865638 () Bool)

(assert (=> d!1624618 (= c!865638 (= (left!42727 t!4198) Empty!15532))))

(declare-fun e!3151782 () Bool)

(assert (=> d!1624618 e!3151782))

(declare-fun res!2150011 () Bool)

(assert (=> d!1624618 (=> (not res!2150011) (not e!3151782))))

(assert (=> d!1624618 (= res!2150011 (isBalanced!4394 (left!42727 t!4198)))))

(assert (=> d!1624618 (= (++!12749 (left!42727 t!4198) (_1!34942 lt!2085783)) lt!2085818)))

(declare-fun b!5047997 () Bool)

(declare-fun res!2150010 () Bool)

(assert (=> b!5047997 (=> (not res!2150010) (not e!3151781))))

(assert (=> b!5047997 (= res!2150010 (isBalanced!4394 lt!2085818))))

(declare-fun bm!351842 () Bool)

(declare-fun call!351841 () Int)

(assert (=> bm!351842 (= call!351841 (height!2111 (ite c!865642 (left!42727 t!4198) lt!2085819)))))

(declare-fun b!5047998 () Bool)

(declare-fun e!3151778 () Conc!15532)

(declare-fun e!3151776 () Conc!15532)

(assert (=> b!5047998 (= e!3151778 e!3151776)))

(assert (=> b!5047998 (= lt!2085816 call!351844)))

(assert (=> b!5047998 (= c!865636 (= call!351848 (- call!351841 3)))))

(declare-fun b!5047999 () Bool)

(declare-fun lt!2085817 () Int)

(assert (=> b!5047999 (= c!865640 (and (<= (- 1) lt!2085817) (<= lt!2085817 1)))))

(assert (=> b!5047999 (= lt!2085817 (- (height!2111 (_1!34942 lt!2085783)) (height!2111 (left!42727 t!4198))))))

(declare-fun e!3151783 () Conc!15532)

(declare-fun e!3151777 () Conc!15532)

(assert (=> b!5047999 (= e!3151783 e!3151777)))

(declare-fun b!5048000 () Bool)

(assert (=> b!5048000 (= e!3151780 call!351849)))

(declare-fun bm!351843 () Bool)

(declare-fun call!351854 () Conc!15532)

(assert (=> bm!351843 (= call!351842 call!351854)))

(declare-fun b!5048001 () Bool)

(assert (=> b!5048001 (= e!3151777 call!351855)))

(declare-fun b!5048002 () Bool)

(declare-fun call!351847 () Int)

(assert (=> b!5048002 (= c!865639 (>= call!351847 call!351851))))

(declare-fun e!3151774 () Conc!15532)

(assert (=> b!5048002 (= e!3151774 e!3151778)))

(declare-fun bm!351844 () Bool)

(declare-fun call!351843 () Conc!15532)

(declare-fun call!351845 () Conc!15532)

(assert (=> bm!351844 (= call!351843 call!351845)))

(declare-fun b!5048003 () Bool)

(assert (=> b!5048003 (= e!3151776 call!351843)))

(declare-fun b!5048004 () Bool)

(assert (=> b!5048004 (= e!3151778 call!351850)))

(declare-fun b!5048005 () Bool)

(assert (=> b!5048005 (= e!3151776 call!351843)))

(declare-fun b!5048006 () Bool)

(assert (=> b!5048006 (= e!3151783 (left!42727 t!4198))))

(declare-fun b!5048007 () Bool)

(declare-fun res!2150012 () Bool)

(assert (=> b!5048007 (=> (not res!2150012) (not e!3151781))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5048007 (= res!2150012 (<= (height!2111 lt!2085818) (+ (max!0 (height!2111 (left!42727 t!4198)) (height!2111 (_1!34942 lt!2085783))) 1)))))

(declare-fun b!5048008 () Bool)

(assert (=> b!5048008 (= e!3151777 e!3151774)))

(assert (=> b!5048008 (= c!865642 (< lt!2085817 (- 1)))))

(declare-fun b!5048009 () Bool)

(declare-fun e!3151775 () Conc!15532)

(assert (=> b!5048009 (= e!3151775 e!3151780)))

(assert (=> b!5048009 (= lt!2085819 call!351842)))

(assert (=> b!5048009 (= c!865641 (= call!351841 (- call!351848 3)))))

(declare-fun b!5048010 () Bool)

(assert (=> b!5048010 (= e!3151782 (isBalanced!4394 (_1!34942 lt!2085783)))))

(declare-fun bm!351845 () Bool)

(assert (=> bm!351845 (= call!351849 call!351852)))

(declare-fun b!5048011 () Bool)

(declare-fun res!2150009 () Bool)

(assert (=> b!5048011 (=> (not res!2150009) (not e!3151781))))

(assert (=> b!5048011 (= res!2150009 (>= (height!2111 lt!2085818) (max!0 (height!2111 (left!42727 t!4198)) (height!2111 (_1!34942 lt!2085783)))))))

(declare-fun b!5048012 () Bool)

(assert (=> b!5048012 (= e!3151775 call!351846)))

(declare-fun b!5048013 () Bool)

(assert (=> b!5048013 (= e!3151781 (= (list!18949 lt!2085818) (++!12748 (list!18949 (left!42727 t!4198)) (list!18949 (_1!34942 lt!2085783)))))))

(declare-fun b!5048014 () Bool)

(assert (=> b!5048014 (= c!865643 (>= call!351847 call!351851))))

(assert (=> b!5048014 (= e!3151774 e!3151775)))

(declare-fun b!5048015 () Bool)

(assert (=> b!5048015 (= e!3151779 (_1!34942 lt!2085783))))

(declare-fun b!5048016 () Bool)

(assert (=> b!5048016 (= e!3151779 e!3151783)))

(declare-fun c!865637 () Bool)

(assert (=> b!5048016 (= c!865637 (= (_1!34942 lt!2085783) Empty!15532))))

(declare-fun bm!351846 () Bool)

(assert (=> bm!351846 (= call!351846 call!351845)))

(declare-fun bm!351847 () Bool)

(assert (=> bm!351847 (= call!351847 (height!2111 (ite c!865642 (left!42727 (left!42727 t!4198)) (right!43057 (_1!34942 lt!2085783)))))))

(declare-fun bm!351848 () Bool)

(assert (=> bm!351848 (= call!351845 call!351855)))

(declare-fun bm!351849 () Bool)

(assert (=> bm!351849 (= call!351854 (++!12749 (ite c!865642 (ite c!865639 (right!43057 (left!42727 t!4198)) (right!43057 (right!43057 (left!42727 t!4198)))) (left!42727 t!4198)) (ite c!865642 (_1!34942 lt!2085783) (ite c!865643 (left!42727 (_1!34942 lt!2085783)) (left!42727 (left!42727 (_1!34942 lt!2085783)))))))))

(declare-fun bm!351850 () Bool)

(assert (=> bm!351850 (= call!351844 call!351854)))

(assert (= (and d!1624618 res!2150011) b!5048010))

(assert (= (and d!1624618 c!865638) b!5048015))

(assert (= (and d!1624618 (not c!865638)) b!5048016))

(assert (= (and b!5048016 c!865637) b!5048006))

(assert (= (and b!5048016 (not c!865637)) b!5047999))

(assert (= (and b!5047999 c!865640) b!5048001))

(assert (= (and b!5047999 (not c!865640)) b!5048008))

(assert (= (and b!5048008 c!865642) b!5048002))

(assert (= (and b!5048008 (not c!865642)) b!5048014))

(assert (= (and b!5048002 c!865639) b!5048004))

(assert (= (and b!5048002 (not c!865639)) b!5047998))

(assert (= (and b!5047998 c!865636) b!5048003))

(assert (= (and b!5047998 (not c!865636)) b!5048005))

(assert (= (or b!5048003 b!5048005) bm!351841))

(assert (= (or b!5048003 b!5048005) bm!351844))

(assert (= (or b!5048004 b!5047998) bm!351850))

(assert (= (or b!5048004 bm!351841) bm!351840))

(assert (= (and b!5048014 c!865643) b!5048012))

(assert (= (and b!5048014 (not c!865643)) b!5048009))

(assert (= (and b!5048009 c!865641) b!5047996))

(assert (= (and b!5048009 (not c!865641)) b!5048000))

(assert (= (or b!5047996 b!5048000) bm!351838))

(assert (= (or b!5047996 b!5048000) bm!351845))

(assert (= (or b!5048012 b!5048009) bm!351843))

(assert (= (or b!5048012 bm!351838) bm!351846))

(assert (= (or b!5047998 b!5048009) bm!351842))

(assert (= (or b!5048002 b!5048014) bm!351847))

(assert (= (or b!5048002 b!5048014) bm!351836))

(assert (= (or b!5047998 b!5048009) bm!351835))

(assert (= (or bm!351850 bm!351843) bm!351849))

(assert (= (or bm!351840 bm!351845) bm!351839))

(assert (= (or bm!351844 bm!351846) bm!351848))

(assert (= (or b!5048001 bm!351848) bm!351837))

(assert (= (and d!1624618 res!2150008) b!5047997))

(assert (= (and b!5047997 res!2150010) b!5048007))

(assert (= (and b!5048007 res!2150012) b!5048011))

(assert (= (and b!5048011 res!2150009) b!5048013))

(declare-fun m!6083316 () Bool)

(assert (=> bm!351835 m!6083316))

(declare-fun m!6083318 () Bool)

(assert (=> bm!351849 m!6083318))

(declare-fun m!6083320 () Bool)

(assert (=> bm!351839 m!6083320))

(declare-fun m!6083322 () Bool)

(assert (=> d!1624618 m!6083322))

(declare-fun m!6083324 () Bool)

(assert (=> d!1624618 m!6083324))

(declare-fun m!6083326 () Bool)

(assert (=> b!5047999 m!6083326))

(declare-fun m!6083328 () Bool)

(assert (=> b!5047999 m!6083328))

(declare-fun m!6083330 () Bool)

(assert (=> bm!351847 m!6083330))

(declare-fun m!6083332 () Bool)

(assert (=> bm!351836 m!6083332))

(declare-fun m!6083334 () Bool)

(assert (=> b!5048007 m!6083334))

(assert (=> b!5048007 m!6083328))

(assert (=> b!5048007 m!6083326))

(assert (=> b!5048007 m!6083328))

(assert (=> b!5048007 m!6083326))

(declare-fun m!6083336 () Bool)

(assert (=> b!5048007 m!6083336))

(assert (=> b!5048011 m!6083334))

(assert (=> b!5048011 m!6083328))

(assert (=> b!5048011 m!6083326))

(assert (=> b!5048011 m!6083328))

(assert (=> b!5048011 m!6083326))

(assert (=> b!5048011 m!6083336))

(declare-fun m!6083338 () Bool)

(assert (=> b!5047997 m!6083338))

(declare-fun m!6083340 () Bool)

(assert (=> b!5048013 m!6083340))

(assert (=> b!5048013 m!6083164))

(declare-fun m!6083342 () Bool)

(assert (=> b!5048013 m!6083342))

(assert (=> b!5048013 m!6083164))

(assert (=> b!5048013 m!6083342))

(declare-fun m!6083344 () Bool)

(assert (=> b!5048013 m!6083344))

(declare-fun m!6083346 () Bool)

(assert (=> b!5048010 m!6083346))

(declare-fun m!6083348 () Bool)

(assert (=> bm!351842 m!6083348))

(declare-fun m!6083350 () Bool)

(assert (=> bm!351837 m!6083350))

(assert (=> b!5047795 d!1624618))

(declare-fun b!5048167 () Bool)

(declare-fun res!2150025 () Bool)

(declare-fun e!3151866 () Bool)

(assert (=> b!5048167 (=> (not res!2150025) (not e!3151866))))

(declare-fun lt!2085893 () tuple2!63278)

(assert (=> b!5048167 (= res!2150025 (isBalanced!4394 (_2!34942 lt!2085893)))))

(declare-fun b!5048168 () Bool)

(declare-fun e!3151861 () Int)

(assert (=> b!5048168 (= e!3151861 (- (- i!618 lt!2085780) (size!38944 (left!42727 (right!43057 t!4198)))))))

(declare-fun b!5048169 () Bool)

(declare-fun lt!2085899 () Unit!149519)

(declare-fun lt!2085898 () Unit!149519)

(assert (=> b!5048169 (= lt!2085899 lt!2085898)))

(declare-fun call!351886 () Int)

(declare-fun lt!2085901 () List!58444)

(declare-fun drop!2648 (List!58444 Int) List!58444)

(declare-fun slice!866 (List!58444 Int Int) List!58444)

(assert (=> b!5048169 (= (drop!2648 lt!2085901 (- i!618 lt!2085780)) (slice!866 lt!2085901 (- i!618 lt!2085780) call!351886))))

(declare-fun dropLemma!79 (List!58444 Int) Unit!149519)

(assert (=> b!5048169 (= lt!2085898 (dropLemma!79 lt!2085901 (- i!618 lt!2085780)))))

(declare-fun list!18950 (IArray!31125) List!58444)

(assert (=> b!5048169 (= lt!2085901 (list!18950 (xs!18860 (right!43057 t!4198))))))

(declare-fun lt!2085896 () tuple2!63276)

(declare-fun call!351889 () tuple2!63276)

(assert (=> b!5048169 (= lt!2085896 call!351889)))

(declare-fun e!3151859 () tuple2!63278)

(declare-fun slice!867 (IArray!31125 Int Int) IArray!31125)

(assert (=> b!5048169 (= e!3151859 (tuple2!63279 (Leaf!25762 (slice!867 (xs!18860 (right!43057 t!4198)) 0 (- i!618 lt!2085780)) (- i!618 lt!2085780)) (Leaf!25762 (slice!867 (xs!18860 (right!43057 t!4198)) (- i!618 lt!2085780) (csize!31295 (right!43057 t!4198))) (- (csize!31295 (right!43057 t!4198)) (- i!618 lt!2085780)))))))

(declare-fun b!5048170 () Bool)

(declare-fun c!865720 () Bool)

(assert (=> b!5048170 (= c!865720 (= (size!38944 (left!42727 (right!43057 t!4198))) (- i!618 lt!2085780)))))

(declare-fun lt!2085891 () Unit!149519)

(declare-fun lt!2085892 () Unit!149519)

(assert (=> b!5048170 (= lt!2085891 lt!2085892)))

(declare-fun lt!2085889 () List!58444)

(declare-fun lt!2085897 () List!58444)

(declare-fun e!3151860 () tuple2!63276)

(assert (=> b!5048170 (= (splitAtIndex!225 (++!12748 lt!2085897 lt!2085889) (- i!618 lt!2085780)) e!3151860)))

(declare-fun c!865715 () Bool)

(assert (=> b!5048170 (= c!865715 (= call!351886 (- i!618 lt!2085780)))))

(assert (=> b!5048170 (= lt!2085892 (splitAtLemma!80 lt!2085897 lt!2085889 (- i!618 lt!2085780)))))

(assert (=> b!5048170 (= lt!2085889 (list!18949 (right!43057 (right!43057 t!4198))))))

(assert (=> b!5048170 (= lt!2085897 (list!18949 (left!42727 (right!43057 t!4198))))))

(declare-fun e!3151869 () tuple2!63278)

(declare-fun e!3151870 () tuple2!63278)

(assert (=> b!5048170 (= e!3151869 e!3151870)))

(declare-fun bm!351881 () Bool)

(declare-fun c!865718 () Bool)

(declare-fun c!865713 () Bool)

(assert (=> bm!351881 (= c!865718 c!865713)))

(declare-fun call!351891 () tuple2!63278)

(assert (=> bm!351881 (= call!351891 (splitAt!483 (ite c!865713 (left!42727 (right!43057 t!4198)) (right!43057 (right!43057 t!4198))) e!3151861))))

(declare-fun b!5048171 () Bool)

(declare-fun e!3151864 () tuple2!63278)

(assert (=> b!5048171 (= e!3151870 e!3151864)))

(assert (=> b!5048171 (= c!865713 (< (- i!618 lt!2085780) (size!38944 (left!42727 (right!43057 t!4198)))))))

(declare-fun b!5048172 () Bool)

(declare-fun e!3151868 () tuple2!63276)

(assert (=> b!5048172 (= e!3151860 e!3151868)))

(declare-fun c!865723 () Bool)

(assert (=> b!5048172 (= c!865723 (< (- i!618 lt!2085780) call!351886))))

(declare-fun b!5048173 () Bool)

(declare-fun e!3151862 () Int)

(assert (=> b!5048173 (= e!3151862 (- i!618 lt!2085780))))

(declare-fun b!5048174 () Bool)

(declare-fun lt!2085900 () tuple2!63278)

(assert (=> b!5048174 (= lt!2085900 call!351891)))

(declare-fun call!351887 () Conc!15532)

(assert (=> b!5048174 (= e!3151864 (tuple2!63279 call!351887 (_2!34942 lt!2085900)))))

(declare-fun b!5048175 () Bool)

(declare-fun e!3151863 () List!58444)

(assert (=> b!5048175 (= e!3151863 (list!18950 (xs!18860 (right!43057 t!4198))))))

(declare-fun b!5048176 () Bool)

(declare-fun e!3151867 () tuple2!63278)

(assert (=> b!5048176 (= e!3151867 (tuple2!63279 Empty!15532 (right!43057 t!4198)))))

(declare-fun c!865721 () Bool)

(declare-fun bm!351882 () Bool)

(assert (=> bm!351882 (= call!351886 (size!38945 (ite c!865721 lt!2085901 lt!2085897)))))

(declare-fun b!5048177 () Bool)

(assert (=> b!5048177 (= e!3151866 (= (tuple2!63277 (list!18949 (_1!34942 lt!2085893)) (list!18949 (_2!34942 lt!2085893))) (splitAtIndex!225 (list!18949 (right!43057 t!4198)) (- i!618 lt!2085780))))))

(declare-fun b!5048178 () Bool)

(assert (=> b!5048178 (= e!3151862 (- (- i!618 lt!2085780) call!351886))))

(declare-fun b!5048179 () Bool)

(assert (=> b!5048179 (= e!3151861 (- i!618 lt!2085780))))

(declare-fun b!5048180 () Bool)

(assert (=> b!5048180 (= e!3151867 e!3151859)))

(declare-fun c!865717 () Bool)

(assert (=> b!5048180 (= c!865717 (= (- i!618 lt!2085780) (csize!31295 (right!43057 t!4198))))))

(declare-fun b!5048181 () Bool)

(declare-fun e!3151865 () tuple2!63278)

(assert (=> b!5048181 (= e!3151865 e!3151869)))

(assert (=> b!5048181 (= c!865721 ((_ is Leaf!25762) (right!43057 t!4198)))))

(declare-fun bm!351883 () Bool)

(declare-fun lt!2085894 () tuple2!63276)

(declare-fun lt!2085895 () tuple2!63276)

(declare-fun call!351888 () List!58444)

(assert (=> bm!351883 (= call!351888 (++!12748 (ite c!865723 (_2!34941 lt!2085895) lt!2085897) (ite c!865723 lt!2085889 (_1!34941 lt!2085894))))))

(declare-fun b!5048182 () Bool)

(assert (=> b!5048182 (= e!3151860 (tuple2!63277 lt!2085897 lt!2085889))))

(declare-fun bm!351884 () Bool)

(declare-fun c!865714 () Bool)

(assert (=> bm!351884 (= c!865714 c!865723)))

(declare-fun call!351890 () tuple2!63276)

(assert (=> bm!351884 (= call!351890 call!351889)))

(declare-fun b!5048183 () Bool)

(assert (=> b!5048183 (= e!3151865 (tuple2!63279 (right!43057 t!4198) (right!43057 t!4198)))))

(declare-fun b!5048184 () Bool)

(assert (=> b!5048184 (= lt!2085895 call!351890)))

(assert (=> b!5048184 (= e!3151868 (tuple2!63277 (_1!34941 lt!2085895) call!351888))))

(declare-fun b!5048185 () Bool)

(declare-fun lt!2085890 () tuple2!63278)

(assert (=> b!5048185 (= lt!2085890 call!351891)))

(assert (=> b!5048185 (= e!3151864 (tuple2!63279 (_1!34942 lt!2085890) call!351887))))

(declare-fun b!5048186 () Bool)

(assert (=> b!5048186 (= lt!2085894 call!351890)))

(assert (=> b!5048186 (= e!3151868 (tuple2!63277 call!351888 (_2!34941 lt!2085894)))))

(declare-fun bm!351885 () Bool)

(assert (=> bm!351885 (= call!351887 (++!12749 (ite c!865713 (_2!34942 lt!2085890) (left!42727 (right!43057 t!4198))) (ite c!865713 (right!43057 (right!43057 t!4198)) (_1!34942 lt!2085900))))))

(declare-fun b!5048187 () Bool)

(assert (=> b!5048187 (= e!3151859 (tuple2!63279 (right!43057 t!4198) Empty!15532))))

(declare-fun d!1624638 () Bool)

(assert (=> d!1624638 e!3151866))

(declare-fun res!2150026 () Bool)

(assert (=> d!1624638 (=> (not res!2150026) (not e!3151866))))

(assert (=> d!1624638 (= res!2150026 (isBalanced!4394 (_1!34942 lt!2085893)))))

(assert (=> d!1624638 (= lt!2085893 e!3151865)))

(declare-fun c!865722 () Bool)

(assert (=> d!1624638 (= c!865722 ((_ is Empty!15532) (right!43057 t!4198)))))

(assert (=> d!1624638 (isBalanced!4394 (right!43057 t!4198))))

(assert (=> d!1624638 (= (splitAt!483 (right!43057 t!4198) (- i!618 lt!2085780)) lt!2085893)))

(declare-fun b!5048188 () Bool)

(assert (=> b!5048188 (= e!3151870 (tuple2!63279 (left!42727 (right!43057 t!4198)) (right!43057 (right!43057 t!4198))))))

(declare-fun b!5048189 () Bool)

(declare-fun c!865719 () Bool)

(assert (=> b!5048189 (= c!865719 (<= (- i!618 lt!2085780) 0))))

(assert (=> b!5048189 (= e!3151869 e!3151867)))

(declare-fun bm!351886 () Bool)

(declare-fun c!865716 () Bool)

(assert (=> bm!351886 (= c!865716 c!865721)))

(assert (=> bm!351886 (= call!351889 (splitAtIndex!225 e!3151863 (ite c!865721 (- i!618 lt!2085780) e!3151862)))))

(declare-fun b!5048190 () Bool)

(assert (=> b!5048190 (= e!3151863 (ite c!865723 lt!2085897 lt!2085889))))

(assert (= (and d!1624638 c!865722) b!5048183))

(assert (= (and d!1624638 (not c!865722)) b!5048181))

(assert (= (and b!5048181 c!865721) b!5048189))

(assert (= (and b!5048181 (not c!865721)) b!5048170))

(assert (= (and b!5048189 c!865719) b!5048176))

(assert (= (and b!5048189 (not c!865719)) b!5048180))

(assert (= (and b!5048180 c!865717) b!5048187))

(assert (= (and b!5048180 (not c!865717)) b!5048169))

(assert (= (and b!5048170 c!865715) b!5048182))

(assert (= (and b!5048170 (not c!865715)) b!5048172))

(assert (= (and b!5048172 c!865723) b!5048184))

(assert (= (and b!5048172 (not c!865723)) b!5048186))

(assert (= (or b!5048184 b!5048186) bm!351883))

(assert (= (or b!5048184 b!5048186) bm!351884))

(assert (= (and bm!351884 c!865714) b!5048173))

(assert (= (and bm!351884 (not c!865714)) b!5048178))

(assert (= (and b!5048170 c!865720) b!5048188))

(assert (= (and b!5048170 (not c!865720)) b!5048171))

(assert (= (and b!5048171 c!865713) b!5048185))

(assert (= (and b!5048171 (not c!865713)) b!5048174))

(assert (= (or b!5048185 b!5048174) bm!351885))

(assert (= (or b!5048185 b!5048174) bm!351881))

(assert (= (and bm!351881 c!865718) b!5048179))

(assert (= (and bm!351881 (not c!865718)) b!5048168))

(assert (= (or b!5048169 b!5048170 b!5048172 b!5048178) bm!351882))

(assert (= (or b!5048169 bm!351884) bm!351886))

(assert (= (and bm!351886 c!865716) b!5048175))

(assert (= (and bm!351886 (not c!865716)) b!5048190))

(assert (= (and d!1624638 res!2150026) b!5048167))

(assert (= (and b!5048167 res!2150025) b!5048177))

(declare-fun m!6083450 () Bool)

(assert (=> bm!351885 m!6083450))

(declare-fun m!6083452 () Bool)

(assert (=> bm!351883 m!6083452))

(declare-fun m!6083454 () Bool)

(assert (=> bm!351881 m!6083454))

(declare-fun m!6083456 () Bool)

(assert (=> b!5048171 m!6083456))

(declare-fun m!6083458 () Bool)

(assert (=> b!5048177 m!6083458))

(declare-fun m!6083460 () Bool)

(assert (=> b!5048177 m!6083460))

(assert (=> b!5048177 m!6083168))

(assert (=> b!5048177 m!6083168))

(declare-fun m!6083462 () Bool)

(assert (=> b!5048177 m!6083462))

(declare-fun m!6083464 () Bool)

(assert (=> b!5048169 m!6083464))

(declare-fun m!6083466 () Bool)

(assert (=> b!5048169 m!6083466))

(declare-fun m!6083468 () Bool)

(assert (=> b!5048169 m!6083468))

(declare-fun m!6083470 () Bool)

(assert (=> b!5048169 m!6083470))

(declare-fun m!6083472 () Bool)

(assert (=> b!5048169 m!6083472))

(declare-fun m!6083474 () Bool)

(assert (=> b!5048169 m!6083474))

(declare-fun m!6083476 () Bool)

(assert (=> b!5048167 m!6083476))

(declare-fun m!6083478 () Bool)

(assert (=> d!1624638 m!6083478))

(declare-fun m!6083480 () Bool)

(assert (=> d!1624638 m!6083480))

(assert (=> b!5048175 m!6083474))

(declare-fun m!6083482 () Bool)

(assert (=> b!5048170 m!6083482))

(declare-fun m!6083484 () Bool)

(assert (=> b!5048170 m!6083484))

(declare-fun m!6083486 () Bool)

(assert (=> b!5048170 m!6083486))

(assert (=> b!5048170 m!6083482))

(declare-fun m!6083488 () Bool)

(assert (=> b!5048170 m!6083488))

(assert (=> b!5048170 m!6083456))

(declare-fun m!6083490 () Bool)

(assert (=> b!5048170 m!6083490))

(assert (=> b!5048168 m!6083456))

(declare-fun m!6083492 () Bool)

(assert (=> bm!351886 m!6083492))

(declare-fun m!6083494 () Bool)

(assert (=> bm!351882 m!6083494))

(assert (=> b!5047795 d!1624638))

(declare-fun b!5048216 () Bool)

(declare-fun e!3151883 () List!58444)

(assert (=> b!5048216 (= e!3151883 (++!12748 (list!18949 (left!42727 (left!42727 t!4198))) (list!18949 (right!43057 (left!42727 t!4198)))))))

(declare-fun b!5048214 () Bool)

(declare-fun e!3151882 () List!58444)

(assert (=> b!5048214 (= e!3151882 e!3151883)))

(declare-fun c!865735 () Bool)

(assert (=> b!5048214 (= c!865735 ((_ is Leaf!25762) (left!42727 t!4198)))))

(declare-fun d!1624660 () Bool)

(declare-fun c!865734 () Bool)

(assert (=> d!1624660 (= c!865734 ((_ is Empty!15532) (left!42727 t!4198)))))

(assert (=> d!1624660 (= (list!18949 (left!42727 t!4198)) e!3151882)))

(declare-fun b!5048215 () Bool)

(assert (=> b!5048215 (= e!3151883 (list!18950 (xs!18860 (left!42727 t!4198))))))

(declare-fun b!5048213 () Bool)

(assert (=> b!5048213 (= e!3151882 Nil!58320)))

(assert (= (and d!1624660 c!865734) b!5048213))

(assert (= (and d!1624660 (not c!865734)) b!5048214))

(assert (= (and b!5048214 c!865735) b!5048215))

(assert (= (and b!5048214 (not c!865735)) b!5048216))

(declare-fun m!6083496 () Bool)

(assert (=> b!5048216 m!6083496))

(declare-fun m!6083498 () Bool)

(assert (=> b!5048216 m!6083498))

(assert (=> b!5048216 m!6083496))

(assert (=> b!5048216 m!6083498))

(declare-fun m!6083500 () Bool)

(assert (=> b!5048216 m!6083500))

(declare-fun m!6083502 () Bool)

(assert (=> b!5048215 m!6083502))

(assert (=> b!5047785 d!1624660))

(declare-fun e!3151896 () Bool)

(declare-fun b!5048242 () Bool)

(declare-fun lt!2085913 () List!58444)

(assert (=> b!5048242 (= e!3151896 (or (not (= lt!2085774 Nil!58320)) (= lt!2085913 lt!2085776)))))

(declare-fun d!1624662 () Bool)

(assert (=> d!1624662 e!3151896))

(declare-fun res!2150035 () Bool)

(assert (=> d!1624662 (=> (not res!2150035) (not e!3151896))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10373 (List!58444) (InoxSet T!104320))

(assert (=> d!1624662 (= res!2150035 (= (content!10373 lt!2085913) ((_ map or) (content!10373 lt!2085776) (content!10373 lt!2085774))))))

(declare-fun e!3151897 () List!58444)

(assert (=> d!1624662 (= lt!2085913 e!3151897)))

(declare-fun c!865744 () Bool)

(assert (=> d!1624662 (= c!865744 ((_ is Nil!58320) lt!2085776))))

(assert (=> d!1624662 (= (++!12748 lt!2085776 lt!2085774) lt!2085913)))

(declare-fun b!5048239 () Bool)

(assert (=> b!5048239 (= e!3151897 lt!2085774)))

(declare-fun b!5048241 () Bool)

(declare-fun res!2150036 () Bool)

(assert (=> b!5048241 (=> (not res!2150036) (not e!3151896))))

(assert (=> b!5048241 (= res!2150036 (= (size!38945 lt!2085913) (+ (size!38945 lt!2085776) (size!38945 lt!2085774))))))

(declare-fun b!5048240 () Bool)

(assert (=> b!5048240 (= e!3151897 (Cons!58320 (h!64768 lt!2085776) (++!12748 (t!371075 lt!2085776) lt!2085774)))))

(assert (= (and d!1624662 c!865744) b!5048239))

(assert (= (and d!1624662 (not c!865744)) b!5048240))

(assert (= (and d!1624662 res!2150035) b!5048241))

(assert (= (and b!5048241 res!2150036) b!5048242))

(declare-fun m!6083504 () Bool)

(assert (=> d!1624662 m!6083504))

(declare-fun m!6083506 () Bool)

(assert (=> d!1624662 m!6083506))

(declare-fun m!6083508 () Bool)

(assert (=> d!1624662 m!6083508))

(declare-fun m!6083510 () Bool)

(assert (=> b!5048241 m!6083510))

(assert (=> b!5048241 m!6083176))

(declare-fun m!6083512 () Bool)

(assert (=> b!5048241 m!6083512))

(declare-fun m!6083514 () Bool)

(assert (=> b!5048240 m!6083514))

(assert (=> b!5047785 d!1624662))

(declare-fun b!5048246 () Bool)

(declare-fun e!3151899 () List!58444)

(assert (=> b!5048246 (= e!3151899 (++!12748 (list!18949 (left!42727 (right!43057 t!4198))) (list!18949 (right!43057 (right!43057 t!4198)))))))

(declare-fun b!5048244 () Bool)

(declare-fun e!3151898 () List!58444)

(assert (=> b!5048244 (= e!3151898 e!3151899)))

(declare-fun c!865746 () Bool)

(assert (=> b!5048244 (= c!865746 ((_ is Leaf!25762) (right!43057 t!4198)))))

(declare-fun d!1624664 () Bool)

(declare-fun c!865745 () Bool)

(assert (=> d!1624664 (= c!865745 ((_ is Empty!15532) (right!43057 t!4198)))))

(assert (=> d!1624664 (= (list!18949 (right!43057 t!4198)) e!3151898)))

(declare-fun b!5048245 () Bool)

(assert (=> b!5048245 (= e!3151899 (list!18950 (xs!18860 (right!43057 t!4198))))))

(declare-fun b!5048243 () Bool)

(assert (=> b!5048243 (= e!3151898 Nil!58320)))

(assert (= (and d!1624664 c!865745) b!5048243))

(assert (= (and d!1624664 (not c!865745)) b!5048244))

(assert (= (and b!5048244 c!865746) b!5048245))

(assert (= (and b!5048244 (not c!865746)) b!5048246))

(assert (=> b!5048246 m!6083490))

(assert (=> b!5048246 m!6083488))

(assert (=> b!5048246 m!6083490))

(assert (=> b!5048246 m!6083488))

(declare-fun m!6083516 () Bool)

(assert (=> b!5048246 m!6083516))

(assert (=> b!5048245 m!6083474))

(assert (=> b!5047785 d!1624664))

(declare-fun b!5048293 () Bool)

(declare-fun e!3151929 () tuple2!63276)

(declare-fun e!3151926 () tuple2!63276)

(assert (=> b!5048293 (= e!3151929 e!3151926)))

(declare-fun c!865760 () Bool)

(assert (=> b!5048293 (= c!865760 (< i!618 (size!38945 lt!2085776)))))

(declare-fun e!3151927 () Bool)

(declare-fun b!5048294 () Bool)

(assert (=> b!5048294 (= e!3151927 (<= i!618 (+ (size!38945 lt!2085776) (size!38945 lt!2085774))))))

(declare-fun bm!351897 () Bool)

(declare-fun c!865759 () Bool)

(assert (=> bm!351897 (= c!865759 c!865760)))

(declare-fun e!3151928 () Int)

(declare-fun call!351902 () tuple2!63276)

(assert (=> bm!351897 (= call!351902 (splitAtIndex!225 (ite c!865760 lt!2085776 lt!2085774) e!3151928))))

(declare-fun b!5048295 () Bool)

(declare-fun lt!2085927 () tuple2!63276)

(assert (=> b!5048295 (= lt!2085927 call!351902)))

(declare-fun call!351903 () List!58444)

(assert (=> b!5048295 (= e!3151926 (tuple2!63277 call!351903 (_2!34941 lt!2085927)))))

(declare-fun b!5048296 () Bool)

(assert (=> b!5048296 (= e!3151928 i!618)))

(declare-fun d!1624666 () Bool)

(assert (=> d!1624666 (= (splitAtIndex!225 (++!12748 lt!2085776 lt!2085774) i!618) e!3151929)))

(declare-fun c!865758 () Bool)

(assert (=> d!1624666 (= c!865758 (= (size!38945 lt!2085776) i!618))))

(declare-fun lt!2085925 () Unit!149519)

(declare-fun choose!37279 (List!58444 List!58444 Int) Unit!149519)

(assert (=> d!1624666 (= lt!2085925 (choose!37279 lt!2085776 lt!2085774 i!618))))

(assert (=> d!1624666 e!3151927))

(declare-fun res!2150042 () Bool)

(assert (=> d!1624666 (=> (not res!2150042) (not e!3151927))))

(assert (=> d!1624666 (= res!2150042 (<= 0 i!618))))

(assert (=> d!1624666 (= (splitAtLemma!80 lt!2085776 lt!2085774 i!618) lt!2085925)))

(declare-fun bm!351898 () Bool)

(declare-fun lt!2085926 () tuple2!63276)

(assert (=> bm!351898 (= call!351903 (++!12748 (ite c!865760 (_2!34941 lt!2085926) lt!2085776) (ite c!865760 lt!2085774 (_1!34941 lt!2085927))))))

(declare-fun b!5048297 () Bool)

(assert (=> b!5048297 (= lt!2085926 call!351902)))

(assert (=> b!5048297 (= e!3151926 (tuple2!63277 (_1!34941 lt!2085926) call!351903))))

(declare-fun b!5048298 () Bool)

(assert (=> b!5048298 (= e!3151928 (- i!618 (size!38945 lt!2085776)))))

(declare-fun b!5048299 () Bool)

(assert (=> b!5048299 (= e!3151929 (tuple2!63277 lt!2085776 lt!2085774))))

(assert (= (and d!1624666 res!2150042) b!5048294))

(assert (= (and d!1624666 c!865758) b!5048299))

(assert (= (and d!1624666 (not c!865758)) b!5048293))

(assert (= (and b!5048293 c!865760) b!5048297))

(assert (= (and b!5048293 (not c!865760)) b!5048295))

(assert (= (or b!5048297 b!5048295) bm!351898))

(assert (= (or b!5048297 b!5048295) bm!351897))

(assert (= (and bm!351897 c!865759) b!5048296))

(assert (= (and bm!351897 (not c!865759)) b!5048298))

(assert (=> b!5048294 m!6083176))

(assert (=> b!5048294 m!6083512))

(assert (=> d!1624666 m!6083166))

(assert (=> d!1624666 m!6083166))

(assert (=> d!1624666 m!6083174))

(assert (=> d!1624666 m!6083176))

(declare-fun m!6083544 () Bool)

(assert (=> d!1624666 m!6083544))

(declare-fun m!6083546 () Bool)

(assert (=> bm!351898 m!6083546))

(assert (=> b!5048298 m!6083176))

(declare-fun m!6083548 () Bool)

(assert (=> bm!351897 m!6083548))

(assert (=> b!5048293 m!6083176))

(assert (=> b!5047785 d!1624666))

(declare-fun d!1624670 () Bool)

(declare-fun e!3151938 () Bool)

(assert (=> d!1624670 e!3151938))

(declare-fun res!2150047 () Bool)

(assert (=> d!1624670 (=> (not res!2150047) (not e!3151938))))

(declare-fun lt!2085933 () tuple2!63276)

(assert (=> d!1624670 (= res!2150047 (= (++!12748 (_1!34941 lt!2085933) (_2!34941 lt!2085933)) (++!12748 lt!2085776 lt!2085774)))))

(declare-fun e!3151936 () tuple2!63276)

(assert (=> d!1624670 (= lt!2085933 e!3151936)))

(declare-fun c!865766 () Bool)

(assert (=> d!1624670 (= c!865766 ((_ is Nil!58320) (++!12748 lt!2085776 lt!2085774)))))

(assert (=> d!1624670 (= (splitAtIndex!225 (++!12748 lt!2085776 lt!2085774) i!618) lt!2085933)))

(declare-fun b!5048312 () Bool)

(declare-fun e!3151937 () tuple2!63276)

(assert (=> b!5048312 (= e!3151937 (tuple2!63277 Nil!58320 (++!12748 lt!2085776 lt!2085774)))))

(declare-fun lt!2085932 () tuple2!63276)

(declare-fun b!5048313 () Bool)

(assert (=> b!5048313 (= lt!2085932 (splitAtIndex!225 (t!371075 (++!12748 lt!2085776 lt!2085774)) (- i!618 1)))))

(assert (=> b!5048313 (= e!3151937 (tuple2!63277 (Cons!58320 (h!64768 (++!12748 lt!2085776 lt!2085774)) (_1!34941 lt!2085932)) (_2!34941 lt!2085932)))))

(declare-fun b!5048314 () Bool)

(assert (=> b!5048314 (= e!3151936 (tuple2!63277 Nil!58320 Nil!58320))))

(declare-fun b!5048315 () Bool)

(assert (=> b!5048315 (= e!3151938 (= (_2!34941 lt!2085933) (drop!2648 (++!12748 lt!2085776 lt!2085774) i!618)))))

(declare-fun b!5048316 () Bool)

(declare-fun res!2150048 () Bool)

(assert (=> b!5048316 (=> (not res!2150048) (not e!3151938))))

(declare-fun take!841 (List!58444 Int) List!58444)

(assert (=> b!5048316 (= res!2150048 (= (_1!34941 lt!2085933) (take!841 (++!12748 lt!2085776 lt!2085774) i!618)))))

(declare-fun b!5048317 () Bool)

(assert (=> b!5048317 (= e!3151936 e!3151937)))

(declare-fun c!865765 () Bool)

(assert (=> b!5048317 (= c!865765 (<= i!618 0))))

(assert (= (and d!1624670 c!865766) b!5048314))

(assert (= (and d!1624670 (not c!865766)) b!5048317))

(assert (= (and b!5048317 c!865765) b!5048312))

(assert (= (and b!5048317 (not c!865765)) b!5048313))

(assert (= (and d!1624670 res!2150047) b!5048316))

(assert (= (and b!5048316 res!2150048) b!5048315))

(declare-fun m!6083550 () Bool)

(assert (=> d!1624670 m!6083550))

(declare-fun m!6083552 () Bool)

(assert (=> b!5048313 m!6083552))

(assert (=> b!5048315 m!6083166))

(declare-fun m!6083554 () Bool)

(assert (=> b!5048315 m!6083554))

(assert (=> b!5048316 m!6083166))

(declare-fun m!6083556 () Bool)

(assert (=> b!5048316 m!6083556))

(assert (=> b!5047785 d!1624670))

(declare-fun d!1624672 () Bool)

(declare-fun lt!2085936 () Int)

(assert (=> d!1624672 (= lt!2085936 (size!38945 (list!18949 (left!42727 t!4198))))))

(assert (=> d!1624672 (= lt!2085936 (ite ((_ is Empty!15532) (left!42727 t!4198)) 0 (ite ((_ is Leaf!25762) (left!42727 t!4198)) (csize!31295 (left!42727 t!4198)) (csize!31294 (left!42727 t!4198)))))))

(assert (=> d!1624672 (= (size!38944 (left!42727 t!4198)) lt!2085936)))

(declare-fun bs!1189175 () Bool)

(assert (= bs!1189175 d!1624672))

(assert (=> bs!1189175 m!6083164))

(assert (=> bs!1189175 m!6083164))

(declare-fun m!6083558 () Bool)

(assert (=> bs!1189175 m!6083558))

(assert (=> b!5047785 d!1624672))

(declare-fun d!1624674 () Bool)

(declare-fun lt!2085939 () Int)

(assert (=> d!1624674 (>= lt!2085939 0)))

(declare-fun e!3151941 () Int)

(assert (=> d!1624674 (= lt!2085939 e!3151941)))

(declare-fun c!865769 () Bool)

(assert (=> d!1624674 (= c!865769 ((_ is Nil!58320) lt!2085776))))

(assert (=> d!1624674 (= (size!38945 lt!2085776) lt!2085939)))

(declare-fun b!5048322 () Bool)

(assert (=> b!5048322 (= e!3151941 0)))

(declare-fun b!5048323 () Bool)

(assert (=> b!5048323 (= e!3151941 (+ 1 (size!38945 (t!371075 lt!2085776))))))

(assert (= (and d!1624674 c!865769) b!5048322))

(assert (= (and d!1624674 (not c!865769)) b!5048323))

(declare-fun m!6083560 () Bool)

(assert (=> b!5048323 m!6083560))

(assert (=> b!5047785 d!1624674))

(declare-fun d!1624676 () Bool)

(declare-fun lt!2085940 () Int)

(assert (=> d!1624676 (= lt!2085940 (size!38945 (list!18949 t!4198)))))

(assert (=> d!1624676 (= lt!2085940 (ite ((_ is Empty!15532) t!4198) 0 (ite ((_ is Leaf!25762) t!4198) (csize!31295 t!4198) (csize!31294 t!4198))))))

(assert (=> d!1624676 (= (size!38944 t!4198) lt!2085940)))

(declare-fun bs!1189176 () Bool)

(assert (= bs!1189176 d!1624676))

(assert (=> bs!1189176 m!6083160))

(assert (=> bs!1189176 m!6083160))

(declare-fun m!6083562 () Bool)

(assert (=> bs!1189176 m!6083562))

(assert (=> b!5047793 d!1624676))

(declare-fun d!1624678 () Bool)

(declare-fun e!3151944 () Bool)

(assert (=> d!1624678 e!3151944))

(declare-fun res!2150049 () Bool)

(assert (=> d!1624678 (=> (not res!2150049) (not e!3151944))))

(declare-fun lt!2085942 () tuple2!63276)

(assert (=> d!1624678 (= res!2150049 (= (++!12748 (_1!34941 lt!2085942) (_2!34941 lt!2085942)) (ite c!865580 lt!2085776 lt!2085774)))))

(declare-fun e!3151942 () tuple2!63276)

(assert (=> d!1624678 (= lt!2085942 e!3151942)))

(declare-fun c!865771 () Bool)

(assert (=> d!1624678 (= c!865771 ((_ is Nil!58320) (ite c!865580 lt!2085776 lt!2085774)))))

(assert (=> d!1624678 (= (splitAtIndex!225 (ite c!865580 lt!2085776 lt!2085774) (ite c!865580 i!618 (- i!618 lt!2085779))) lt!2085942)))

(declare-fun b!5048324 () Bool)

(declare-fun e!3151943 () tuple2!63276)

(assert (=> b!5048324 (= e!3151943 (tuple2!63277 Nil!58320 (ite c!865580 lt!2085776 lt!2085774)))))

(declare-fun lt!2085941 () tuple2!63276)

(declare-fun b!5048325 () Bool)

(assert (=> b!5048325 (= lt!2085941 (splitAtIndex!225 (t!371075 (ite c!865580 lt!2085776 lt!2085774)) (- (ite c!865580 i!618 (- i!618 lt!2085779)) 1)))))

(assert (=> b!5048325 (= e!3151943 (tuple2!63277 (Cons!58320 (h!64768 (ite c!865580 lt!2085776 lt!2085774)) (_1!34941 lt!2085941)) (_2!34941 lt!2085941)))))

(declare-fun b!5048326 () Bool)

(assert (=> b!5048326 (= e!3151942 (tuple2!63277 Nil!58320 Nil!58320))))

(declare-fun b!5048327 () Bool)

(assert (=> b!5048327 (= e!3151944 (= (_2!34941 lt!2085942) (drop!2648 (ite c!865580 lt!2085776 lt!2085774) (ite c!865580 i!618 (- i!618 lt!2085779)))))))

(declare-fun b!5048328 () Bool)

(declare-fun res!2150050 () Bool)

(assert (=> b!5048328 (=> (not res!2150050) (not e!3151944))))

(assert (=> b!5048328 (= res!2150050 (= (_1!34941 lt!2085942) (take!841 (ite c!865580 lt!2085776 lt!2085774) (ite c!865580 i!618 (- i!618 lt!2085779)))))))

(declare-fun b!5048329 () Bool)

(assert (=> b!5048329 (= e!3151942 e!3151943)))

(declare-fun c!865770 () Bool)

(assert (=> b!5048329 (= c!865770 (<= (ite c!865580 i!618 (- i!618 lt!2085779)) 0))))

(assert (= (and d!1624678 c!865771) b!5048326))

(assert (= (and d!1624678 (not c!865771)) b!5048329))

(assert (= (and b!5048329 c!865770) b!5048324))

(assert (= (and b!5048329 (not c!865770)) b!5048325))

(assert (= (and d!1624678 res!2150049) b!5048328))

(assert (= (and b!5048328 res!2150050) b!5048327))

(declare-fun m!6083564 () Bool)

(assert (=> d!1624678 m!6083564))

(declare-fun m!6083566 () Bool)

(assert (=> b!5048325 m!6083566))

(declare-fun m!6083568 () Bool)

(assert (=> b!5048327 m!6083568))

(declare-fun m!6083570 () Bool)

(assert (=> b!5048328 m!6083570))

(assert (=> bm!351754 d!1624678))

(declare-fun d!1624680 () Bool)

(assert (=> d!1624680 (= (inv!77260 (xs!18860 t!4198)) (<= (size!38945 (innerList!15620 (xs!18860 t!4198))) 2147483647))))

(declare-fun bs!1189177 () Bool)

(assert (= bs!1189177 d!1624680))

(declare-fun m!6083572 () Bool)

(assert (=> bs!1189177 m!6083572))

(assert (=> b!5047797 d!1624680))

(declare-fun b!5048333 () Bool)

(declare-fun e!3151946 () List!58444)

(assert (=> b!5048333 (= e!3151946 (++!12748 (list!18949 (left!42727 lt!2085782)) (list!18949 (right!43057 lt!2085782))))))

(declare-fun b!5048331 () Bool)

(declare-fun e!3151945 () List!58444)

(assert (=> b!5048331 (= e!3151945 e!3151946)))

(declare-fun c!865773 () Bool)

(assert (=> b!5048331 (= c!865773 ((_ is Leaf!25762) lt!2085782))))

(declare-fun d!1624682 () Bool)

(declare-fun c!865772 () Bool)

(assert (=> d!1624682 (= c!865772 ((_ is Empty!15532) lt!2085782))))

(assert (=> d!1624682 (= (list!18949 lt!2085782) e!3151945)))

(declare-fun b!5048332 () Bool)

(assert (=> b!5048332 (= e!3151946 (list!18950 (xs!18860 lt!2085782)))))

(declare-fun b!5048330 () Bool)

(assert (=> b!5048330 (= e!3151945 Nil!58320)))

(assert (= (and d!1624682 c!865772) b!5048330))

(assert (= (and d!1624682 (not c!865772)) b!5048331))

(assert (= (and b!5048331 c!865773) b!5048332))

(assert (= (and b!5048331 (not c!865773)) b!5048333))

(declare-fun m!6083574 () Bool)

(assert (=> b!5048333 m!6083574))

(declare-fun m!6083576 () Bool)

(assert (=> b!5048333 m!6083576))

(assert (=> b!5048333 m!6083574))

(assert (=> b!5048333 m!6083576))

(declare-fun m!6083578 () Bool)

(assert (=> b!5048333 m!6083578))

(declare-fun m!6083580 () Bool)

(assert (=> b!5048332 m!6083580))

(assert (=> b!5047792 d!1624682))

(declare-fun b!5048337 () Bool)

(declare-fun e!3151948 () List!58444)

(assert (=> b!5048337 (= e!3151948 (++!12748 (list!18949 (left!42727 (_2!34942 lt!2085783))) (list!18949 (right!43057 (_2!34942 lt!2085783)))))))

(declare-fun b!5048335 () Bool)

(declare-fun e!3151947 () List!58444)

(assert (=> b!5048335 (= e!3151947 e!3151948)))

(declare-fun c!865775 () Bool)

(assert (=> b!5048335 (= c!865775 ((_ is Leaf!25762) (_2!34942 lt!2085783)))))

(declare-fun d!1624684 () Bool)

(declare-fun c!865774 () Bool)

(assert (=> d!1624684 (= c!865774 ((_ is Empty!15532) (_2!34942 lt!2085783)))))

(assert (=> d!1624684 (= (list!18949 (_2!34942 lt!2085783)) e!3151947)))

(declare-fun b!5048336 () Bool)

(assert (=> b!5048336 (= e!3151948 (list!18950 (xs!18860 (_2!34942 lt!2085783))))))

(declare-fun b!5048334 () Bool)

(assert (=> b!5048334 (= e!3151947 Nil!58320)))

(assert (= (and d!1624684 c!865774) b!5048334))

(assert (= (and d!1624684 (not c!865774)) b!5048335))

(assert (= (and b!5048335 c!865775) b!5048336))

(assert (= (and b!5048335 (not c!865775)) b!5048337))

(declare-fun m!6083582 () Bool)

(assert (=> b!5048337 m!6083582))

(declare-fun m!6083584 () Bool)

(assert (=> b!5048337 m!6083584))

(assert (=> b!5048337 m!6083582))

(assert (=> b!5048337 m!6083584))

(declare-fun m!6083586 () Bool)

(assert (=> b!5048337 m!6083586))

(declare-fun m!6083588 () Bool)

(assert (=> b!5048336 m!6083588))

(assert (=> b!5047792 d!1624684))

(declare-fun d!1624686 () Bool)

(declare-fun e!3151951 () Bool)

(assert (=> d!1624686 e!3151951))

(declare-fun res!2150051 () Bool)

(assert (=> d!1624686 (=> (not res!2150051) (not e!3151951))))

(declare-fun lt!2085944 () tuple2!63276)

(assert (=> d!1624686 (= res!2150051 (= (++!12748 (_1!34941 lt!2085944) (_2!34941 lt!2085944)) (list!18949 t!4198)))))

(declare-fun e!3151949 () tuple2!63276)

(assert (=> d!1624686 (= lt!2085944 e!3151949)))

(declare-fun c!865777 () Bool)

(assert (=> d!1624686 (= c!865777 ((_ is Nil!58320) (list!18949 t!4198)))))

(assert (=> d!1624686 (= (splitAtIndex!225 (list!18949 t!4198) i!618) lt!2085944)))

(declare-fun b!5048338 () Bool)

(declare-fun e!3151950 () tuple2!63276)

(assert (=> b!5048338 (= e!3151950 (tuple2!63277 Nil!58320 (list!18949 t!4198)))))

(declare-fun b!5048339 () Bool)

(declare-fun lt!2085943 () tuple2!63276)

(assert (=> b!5048339 (= lt!2085943 (splitAtIndex!225 (t!371075 (list!18949 t!4198)) (- i!618 1)))))

(assert (=> b!5048339 (= e!3151950 (tuple2!63277 (Cons!58320 (h!64768 (list!18949 t!4198)) (_1!34941 lt!2085943)) (_2!34941 lt!2085943)))))

(declare-fun b!5048340 () Bool)

(assert (=> b!5048340 (= e!3151949 (tuple2!63277 Nil!58320 Nil!58320))))

(declare-fun b!5048341 () Bool)

(assert (=> b!5048341 (= e!3151951 (= (_2!34941 lt!2085944) (drop!2648 (list!18949 t!4198) i!618)))))

(declare-fun b!5048342 () Bool)

(declare-fun res!2150052 () Bool)

(assert (=> b!5048342 (=> (not res!2150052) (not e!3151951))))

(assert (=> b!5048342 (= res!2150052 (= (_1!34941 lt!2085944) (take!841 (list!18949 t!4198) i!618)))))

(declare-fun b!5048343 () Bool)

(assert (=> b!5048343 (= e!3151949 e!3151950)))

(declare-fun c!865776 () Bool)

(assert (=> b!5048343 (= c!865776 (<= i!618 0))))

(assert (= (and d!1624686 c!865777) b!5048340))

(assert (= (and d!1624686 (not c!865777)) b!5048343))

(assert (= (and b!5048343 c!865776) b!5048338))

(assert (= (and b!5048343 (not c!865776)) b!5048339))

(assert (= (and d!1624686 res!2150051) b!5048342))

(assert (= (and b!5048342 res!2150052) b!5048341))

(declare-fun m!6083590 () Bool)

(assert (=> d!1624686 m!6083590))

(declare-fun m!6083592 () Bool)

(assert (=> b!5048339 m!6083592))

(assert (=> b!5048341 m!6083160))

(declare-fun m!6083594 () Bool)

(assert (=> b!5048341 m!6083594))

(assert (=> b!5048342 m!6083160))

(declare-fun m!6083596 () Bool)

(assert (=> b!5048342 m!6083596))

(assert (=> b!5047792 d!1624686))

(declare-fun b!5048347 () Bool)

(declare-fun e!3151953 () List!58444)

(assert (=> b!5048347 (= e!3151953 (++!12748 (list!18949 (left!42727 t!4198)) (list!18949 (right!43057 t!4198))))))

(declare-fun b!5048345 () Bool)

(declare-fun e!3151952 () List!58444)

(assert (=> b!5048345 (= e!3151952 e!3151953)))

(declare-fun c!865779 () Bool)

(assert (=> b!5048345 (= c!865779 ((_ is Leaf!25762) t!4198))))

(declare-fun d!1624688 () Bool)

(declare-fun c!865778 () Bool)

(assert (=> d!1624688 (= c!865778 ((_ is Empty!15532) t!4198))))

(assert (=> d!1624688 (= (list!18949 t!4198) e!3151952)))

(declare-fun b!5048346 () Bool)

(assert (=> b!5048346 (= e!3151953 (list!18950 (xs!18860 t!4198)))))

(declare-fun b!5048344 () Bool)

(assert (=> b!5048344 (= e!3151952 Nil!58320)))

(assert (= (and d!1624688 c!865778) b!5048344))

(assert (= (and d!1624688 (not c!865778)) b!5048345))

(assert (= (and b!5048345 c!865779) b!5048346))

(assert (= (and b!5048345 (not c!865779)) b!5048347))

(assert (=> b!5048347 m!6083164))

(assert (=> b!5048347 m!6083168))

(assert (=> b!5048347 m!6083164))

(assert (=> b!5048347 m!6083168))

(declare-fun m!6083598 () Bool)

(assert (=> b!5048347 m!6083598))

(declare-fun m!6083600 () Bool)

(assert (=> b!5048346 m!6083600))

(assert (=> b!5047792 d!1624688))

(declare-fun lt!2085945 () List!58444)

(declare-fun b!5048351 () Bool)

(declare-fun e!3151954 () Bool)

(assert (=> b!5048351 (= e!3151954 (or (not (= (ite c!865580 lt!2085774 (_1!34941 lt!2085778)) Nil!58320)) (= lt!2085945 (ite c!865580 (_2!34941 lt!2085781) lt!2085776))))))

(declare-fun d!1624690 () Bool)

(assert (=> d!1624690 e!3151954))

(declare-fun res!2150053 () Bool)

(assert (=> d!1624690 (=> (not res!2150053) (not e!3151954))))

(assert (=> d!1624690 (= res!2150053 (= (content!10373 lt!2085945) ((_ map or) (content!10373 (ite c!865580 (_2!34941 lt!2085781) lt!2085776)) (content!10373 (ite c!865580 lt!2085774 (_1!34941 lt!2085778))))))))

(declare-fun e!3151955 () List!58444)

(assert (=> d!1624690 (= lt!2085945 e!3151955)))

(declare-fun c!865780 () Bool)

(assert (=> d!1624690 (= c!865780 ((_ is Nil!58320) (ite c!865580 (_2!34941 lt!2085781) lt!2085776)))))

(assert (=> d!1624690 (= (++!12748 (ite c!865580 (_2!34941 lt!2085781) lt!2085776) (ite c!865580 lt!2085774 (_1!34941 lt!2085778))) lt!2085945)))

(declare-fun b!5048348 () Bool)

(assert (=> b!5048348 (= e!3151955 (ite c!865580 lt!2085774 (_1!34941 lt!2085778)))))

(declare-fun b!5048350 () Bool)

(declare-fun res!2150054 () Bool)

(assert (=> b!5048350 (=> (not res!2150054) (not e!3151954))))

(assert (=> b!5048350 (= res!2150054 (= (size!38945 lt!2085945) (+ (size!38945 (ite c!865580 (_2!34941 lt!2085781) lt!2085776)) (size!38945 (ite c!865580 lt!2085774 (_1!34941 lt!2085778))))))))

(declare-fun b!5048349 () Bool)

(assert (=> b!5048349 (= e!3151955 (Cons!58320 (h!64768 (ite c!865580 (_2!34941 lt!2085781) lt!2085776)) (++!12748 (t!371075 (ite c!865580 (_2!34941 lt!2085781) lt!2085776)) (ite c!865580 lt!2085774 (_1!34941 lt!2085778)))))))

(assert (= (and d!1624690 c!865780) b!5048348))

(assert (= (and d!1624690 (not c!865780)) b!5048349))

(assert (= (and d!1624690 res!2150053) b!5048350))

(assert (= (and b!5048350 res!2150054) b!5048351))

(declare-fun m!6083602 () Bool)

(assert (=> d!1624690 m!6083602))

(declare-fun m!6083604 () Bool)

(assert (=> d!1624690 m!6083604))

(declare-fun m!6083606 () Bool)

(assert (=> d!1624690 m!6083606))

(declare-fun m!6083608 () Bool)

(assert (=> b!5048350 m!6083608))

(declare-fun m!6083610 () Bool)

(assert (=> b!5048350 m!6083610))

(declare-fun m!6083612 () Bool)

(assert (=> b!5048350 m!6083612))

(declare-fun m!6083614 () Bool)

(assert (=> b!5048349 m!6083614))

(assert (=> bm!351753 d!1624690))

(declare-fun b!5048352 () Bool)

(declare-fun res!2150060 () Bool)

(declare-fun e!3151956 () Bool)

(assert (=> b!5048352 (=> (not res!2150060) (not e!3151956))))

(assert (=> b!5048352 (= res!2150060 (<= (- (height!2111 (left!42727 t!4198)) (height!2111 (right!43057 t!4198))) 1))))

(declare-fun b!5048354 () Bool)

(declare-fun res!2150056 () Bool)

(assert (=> b!5048354 (=> (not res!2150056) (not e!3151956))))

(assert (=> b!5048354 (= res!2150056 (not (isEmpty!31565 (left!42727 t!4198))))))

(declare-fun b!5048355 () Bool)

(declare-fun res!2150057 () Bool)

(assert (=> b!5048355 (=> (not res!2150057) (not e!3151956))))

(assert (=> b!5048355 (= res!2150057 (isBalanced!4394 (left!42727 t!4198)))))

(declare-fun b!5048356 () Bool)

(assert (=> b!5048356 (= e!3151956 (not (isEmpty!31565 (right!43057 t!4198))))))

(declare-fun b!5048357 () Bool)

(declare-fun res!2150058 () Bool)

(assert (=> b!5048357 (=> (not res!2150058) (not e!3151956))))

(assert (=> b!5048357 (= res!2150058 (isBalanced!4394 (right!43057 t!4198)))))

(declare-fun b!5048353 () Bool)

(declare-fun e!3151957 () Bool)

(assert (=> b!5048353 (= e!3151957 e!3151956)))

(declare-fun res!2150055 () Bool)

(assert (=> b!5048353 (=> (not res!2150055) (not e!3151956))))

(assert (=> b!5048353 (= res!2150055 (<= (- 1) (- (height!2111 (left!42727 t!4198)) (height!2111 (right!43057 t!4198)))))))

(declare-fun d!1624692 () Bool)

(declare-fun res!2150059 () Bool)

(assert (=> d!1624692 (=> res!2150059 e!3151957)))

(assert (=> d!1624692 (= res!2150059 (not ((_ is Node!15532) t!4198)))))

(assert (=> d!1624692 (= (isBalanced!4394 t!4198) e!3151957)))

(assert (= (and d!1624692 (not res!2150059)) b!5048353))

(assert (= (and b!5048353 res!2150055) b!5048352))

(assert (= (and b!5048352 res!2150060) b!5048355))

(assert (= (and b!5048355 res!2150057) b!5048357))

(assert (= (and b!5048357 res!2150058) b!5048354))

(assert (= (and b!5048354 res!2150056) b!5048356))

(declare-fun m!6083616 () Bool)

(assert (=> b!5048354 m!6083616))

(assert (=> b!5048352 m!6083328))

(declare-fun m!6083618 () Bool)

(assert (=> b!5048352 m!6083618))

(assert (=> b!5048357 m!6083480))

(assert (=> b!5048355 m!6083324))

(assert (=> b!5048353 m!6083328))

(assert (=> b!5048353 m!6083618))

(declare-fun m!6083620 () Bool)

(assert (=> b!5048356 m!6083620))

(assert (=> start!533894 d!1624692))

(declare-fun d!1624694 () Bool)

(declare-fun c!865783 () Bool)

(assert (=> d!1624694 (= c!865783 ((_ is Node!15532) t!4198))))

(declare-fun e!3151962 () Bool)

(assert (=> d!1624694 (= (inv!77261 t!4198) e!3151962)))

(declare-fun b!5048364 () Bool)

(declare-fun inv!77264 (Conc!15532) Bool)

(assert (=> b!5048364 (= e!3151962 (inv!77264 t!4198))))

(declare-fun b!5048365 () Bool)

(declare-fun e!3151963 () Bool)

(assert (=> b!5048365 (= e!3151962 e!3151963)))

(declare-fun res!2150063 () Bool)

(assert (=> b!5048365 (= res!2150063 (not ((_ is Leaf!25762) t!4198)))))

(assert (=> b!5048365 (=> res!2150063 e!3151963)))

(declare-fun b!5048366 () Bool)

(declare-fun inv!77265 (Conc!15532) Bool)

(assert (=> b!5048366 (= e!3151963 (inv!77265 t!4198))))

(assert (= (and d!1624694 c!865783) b!5048364))

(assert (= (and d!1624694 (not c!865783)) b!5048365))

(assert (= (and b!5048365 (not res!2150063)) b!5048366))

(declare-fun m!6083622 () Bool)

(assert (=> b!5048364 m!6083622))

(declare-fun m!6083624 () Bool)

(assert (=> b!5048366 m!6083624))

(assert (=> start!533894 d!1624694))

(declare-fun b!5048367 () Bool)

(declare-fun res!2150069 () Bool)

(declare-fun e!3151964 () Bool)

(assert (=> b!5048367 (=> (not res!2150069) (not e!3151964))))

(assert (=> b!5048367 (= res!2150069 (<= (- (height!2111 (left!42727 (_2!34942 lt!2085783))) (height!2111 (right!43057 (_2!34942 lt!2085783)))) 1))))

(declare-fun b!5048369 () Bool)

(declare-fun res!2150065 () Bool)

(assert (=> b!5048369 (=> (not res!2150065) (not e!3151964))))

(assert (=> b!5048369 (= res!2150065 (not (isEmpty!31565 (left!42727 (_2!34942 lt!2085783)))))))

(declare-fun b!5048370 () Bool)

(declare-fun res!2150066 () Bool)

(assert (=> b!5048370 (=> (not res!2150066) (not e!3151964))))

(assert (=> b!5048370 (= res!2150066 (isBalanced!4394 (left!42727 (_2!34942 lt!2085783))))))

(declare-fun b!5048371 () Bool)

(assert (=> b!5048371 (= e!3151964 (not (isEmpty!31565 (right!43057 (_2!34942 lt!2085783)))))))

(declare-fun b!5048372 () Bool)

(declare-fun res!2150067 () Bool)

(assert (=> b!5048372 (=> (not res!2150067) (not e!3151964))))

(assert (=> b!5048372 (= res!2150067 (isBalanced!4394 (right!43057 (_2!34942 lt!2085783))))))

(declare-fun b!5048368 () Bool)

(declare-fun e!3151965 () Bool)

(assert (=> b!5048368 (= e!3151965 e!3151964)))

(declare-fun res!2150064 () Bool)

(assert (=> b!5048368 (=> (not res!2150064) (not e!3151964))))

(assert (=> b!5048368 (= res!2150064 (<= (- 1) (- (height!2111 (left!42727 (_2!34942 lt!2085783))) (height!2111 (right!43057 (_2!34942 lt!2085783))))))))

(declare-fun d!1624696 () Bool)

(declare-fun res!2150068 () Bool)

(assert (=> d!1624696 (=> res!2150068 e!3151965)))

(assert (=> d!1624696 (= res!2150068 (not ((_ is Node!15532) (_2!34942 lt!2085783))))))

(assert (=> d!1624696 (= (isBalanced!4394 (_2!34942 lt!2085783)) e!3151965)))

(assert (= (and d!1624696 (not res!2150068)) b!5048368))

(assert (= (and b!5048368 res!2150064) b!5048367))

(assert (= (and b!5048367 res!2150069) b!5048370))

(assert (= (and b!5048370 res!2150066) b!5048372))

(assert (= (and b!5048372 res!2150067) b!5048369))

(assert (= (and b!5048369 res!2150065) b!5048371))

(declare-fun m!6083626 () Bool)

(assert (=> b!5048369 m!6083626))

(declare-fun m!6083628 () Bool)

(assert (=> b!5048367 m!6083628))

(declare-fun m!6083630 () Bool)

(assert (=> b!5048367 m!6083630))

(declare-fun m!6083632 () Bool)

(assert (=> b!5048372 m!6083632))

(declare-fun m!6083634 () Bool)

(assert (=> b!5048370 m!6083634))

(assert (=> b!5048368 m!6083628))

(assert (=> b!5048368 m!6083630))

(declare-fun m!6083636 () Bool)

(assert (=> b!5048371 m!6083636))

(assert (=> b!5047790 d!1624696))

(declare-fun d!1624698 () Bool)

(declare-fun c!865784 () Bool)

(assert (=> d!1624698 (= c!865784 ((_ is Node!15532) (left!42727 t!4198)))))

(declare-fun e!3151966 () Bool)

(assert (=> d!1624698 (= (inv!77261 (left!42727 t!4198)) e!3151966)))

(declare-fun b!5048373 () Bool)

(assert (=> b!5048373 (= e!3151966 (inv!77264 (left!42727 t!4198)))))

(declare-fun b!5048374 () Bool)

(declare-fun e!3151967 () Bool)

(assert (=> b!5048374 (= e!3151966 e!3151967)))

(declare-fun res!2150070 () Bool)

(assert (=> b!5048374 (= res!2150070 (not ((_ is Leaf!25762) (left!42727 t!4198))))))

(assert (=> b!5048374 (=> res!2150070 e!3151967)))

(declare-fun b!5048375 () Bool)

(assert (=> b!5048375 (= e!3151967 (inv!77265 (left!42727 t!4198)))))

(assert (= (and d!1624698 c!865784) b!5048373))

(assert (= (and d!1624698 (not c!865784)) b!5048374))

(assert (= (and b!5048374 (not res!2150070)) b!5048375))

(declare-fun m!6083638 () Bool)

(assert (=> b!5048373 m!6083638))

(declare-fun m!6083640 () Bool)

(assert (=> b!5048375 m!6083640))

(assert (=> b!5047796 d!1624698))

(declare-fun d!1624700 () Bool)

(declare-fun c!865785 () Bool)

(assert (=> d!1624700 (= c!865785 ((_ is Node!15532) (right!43057 t!4198)))))

(declare-fun e!3151968 () Bool)

(assert (=> d!1624700 (= (inv!77261 (right!43057 t!4198)) e!3151968)))

(declare-fun b!5048376 () Bool)

(assert (=> b!5048376 (= e!3151968 (inv!77264 (right!43057 t!4198)))))

(declare-fun b!5048377 () Bool)

(declare-fun e!3151969 () Bool)

(assert (=> b!5048377 (= e!3151968 e!3151969)))

(declare-fun res!2150071 () Bool)

(assert (=> b!5048377 (= res!2150071 (not ((_ is Leaf!25762) (right!43057 t!4198))))))

(assert (=> b!5048377 (=> res!2150071 e!3151969)))

(declare-fun b!5048378 () Bool)

(assert (=> b!5048378 (= e!3151969 (inv!77265 (right!43057 t!4198)))))

(assert (= (and d!1624700 c!865785) b!5048376))

(assert (= (and d!1624700 (not c!865785)) b!5048377))

(assert (= (and b!5048377 (not res!2150071)) b!5048378))

(declare-fun m!6083642 () Bool)

(assert (=> b!5048376 m!6083642))

(declare-fun m!6083644 () Bool)

(assert (=> b!5048378 m!6083644))

(assert (=> b!5047796 d!1624700))

(declare-fun b!5048383 () Bool)

(declare-fun e!3151972 () Bool)

(declare-fun tp_is_empty!36827 () Bool)

(declare-fun tp!1411891 () Bool)

(assert (=> b!5048383 (= e!3151972 (and tp_is_empty!36827 tp!1411891))))

(assert (=> b!5047786 (= tp!1411871 e!3151972)))

(assert (= (and b!5047786 ((_ is Cons!58320) (innerList!15620 (xs!18860 t!4198)))) b!5048383))

(declare-fun b!5048392 () Bool)

(declare-fun tp!1411900 () Bool)

(declare-fun tp!1411898 () Bool)

(declare-fun e!3151978 () Bool)

(assert (=> b!5048392 (= e!3151978 (and (inv!77261 (left!42727 (left!42727 t!4198))) tp!1411900 (inv!77261 (right!43057 (left!42727 t!4198))) tp!1411898))))

(declare-fun b!5048394 () Bool)

(declare-fun e!3151977 () Bool)

(declare-fun tp!1411899 () Bool)

(assert (=> b!5048394 (= e!3151977 tp!1411899)))

(declare-fun b!5048393 () Bool)

(assert (=> b!5048393 (= e!3151978 (and (inv!77260 (xs!18860 (left!42727 t!4198))) e!3151977))))

(assert (=> b!5047796 (= tp!1411872 (and (inv!77261 (left!42727 t!4198)) e!3151978))))

(assert (= (and b!5047796 ((_ is Node!15532) (left!42727 t!4198))) b!5048392))

(assert (= b!5048393 b!5048394))

(assert (= (and b!5047796 ((_ is Leaf!25762) (left!42727 t!4198))) b!5048393))

(declare-fun m!6083646 () Bool)

(assert (=> b!5048392 m!6083646))

(declare-fun m!6083648 () Bool)

(assert (=> b!5048392 m!6083648))

(declare-fun m!6083650 () Bool)

(assert (=> b!5048393 m!6083650))

(assert (=> b!5047796 m!6083180))

(declare-fun b!5048395 () Bool)

(declare-fun tp!1411901 () Bool)

(declare-fun tp!1411903 () Bool)

(declare-fun e!3151980 () Bool)

(assert (=> b!5048395 (= e!3151980 (and (inv!77261 (left!42727 (right!43057 t!4198))) tp!1411903 (inv!77261 (right!43057 (right!43057 t!4198))) tp!1411901))))

(declare-fun b!5048397 () Bool)

(declare-fun e!3151979 () Bool)

(declare-fun tp!1411902 () Bool)

(assert (=> b!5048397 (= e!3151979 tp!1411902)))

(declare-fun b!5048396 () Bool)

(assert (=> b!5048396 (= e!3151980 (and (inv!77260 (xs!18860 (right!43057 t!4198))) e!3151979))))

(assert (=> b!5047796 (= tp!1411873 (and (inv!77261 (right!43057 t!4198)) e!3151980))))

(assert (= (and b!5047796 ((_ is Node!15532) (right!43057 t!4198))) b!5048395))

(assert (= b!5048396 b!5048397))

(assert (= (and b!5047796 ((_ is Leaf!25762) (right!43057 t!4198))) b!5048396))

(declare-fun m!6083652 () Bool)

(assert (=> b!5048395 m!6083652))

(declare-fun m!6083654 () Bool)

(assert (=> b!5048395 m!6083654))

(declare-fun m!6083656 () Bool)

(assert (=> b!5048396 m!6083656))

(assert (=> b!5047796 m!6083182))

(check-sat (not b!5048376) tp_is_empty!36827 (not d!1624662) (not bm!351837) (not b!5048313) (not b!5048378) (not b!5048366) (not b!5048170) (not bm!351835) (not d!1624638) (not b!5048392) (not bm!351847) (not b!5048177) (not b!5047824) (not bm!351898) (not b!5048240) (not bm!351839) (not b!5048339) (not b!5047825) (not b!5048298) (not b!5047826) (not b!5048246) (not b!5048393) (not b!5048171) (not b!5048395) (not d!1624690) (not bm!351885) (not b!5048369) (not b!5047796) (not b!5048336) (not b!5047827) (not b!5047999) (not bm!351883) (not b!5048346) (not b!5048349) (not b!5048355) (not d!1624672) (not b!5048316) (not b!5048013) (not b!5048397) (not b!5048245) (not bm!351897) (not b!5048325) (not b!5048396) (not b!5048215) (not b!5048337) (not b!5048168) (not b!5048354) (not d!1624676) (not bm!351886) (not b!5048372) (not b!5048394) (not b!5048332) (not b!5048347) (not b!5048333) (not b!5048216) (not b!5048007) (not d!1624686) (not b!5048357) (not d!1624678) (not d!1624670) (not b!5048167) (not b!5048383) (not b!5048323) (not b!5048169) (not b!5048294) (not bm!351849) (not b!5048353) (not b!5047822) (not b!5047997) (not b!5048327) (not b!5048375) (not b!5048373) (not b!5048010) (not b!5048367) (not bm!351881) (not b!5048368) (not b!5048328) (not bm!351882) (not b!5048371) (not bm!351842) (not d!1624680) (not b!5048241) (not b!5048011) (not b!5048175) (not b!5048352) (not d!1624618) (not b!5048370) (not b!5048293) (not b!5047823) (not b!5048341) (not b!5048342) (not b!5048356) (not b!5048350) (not b!5048364) (not d!1624666) (not b!5048315) (not bm!351836))
(check-sat)
