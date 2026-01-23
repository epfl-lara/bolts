; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12908 () Bool)

(assert start!12908)

(declare-fun res!58573 () Bool)

(declare-fun e!72724 () Bool)

(assert (=> start!12908 (=> (not res!58573) (not e!72724))))

(declare-datatypes ((C!2086 0))(
  ( (C!2087 (val!769 Int)) )
))
(declare-datatypes ((Regex!582 0))(
  ( (ElementMatch!582 (c!27751 C!2086)) (Concat!976 (regOne!1676 Regex!582) (regTwo!1676 Regex!582)) (EmptyExpr!582) (Star!582 (reg!911 Regex!582)) (EmptyLang!582) (Union!582 (regOne!1677 Regex!582) (regTwo!1677 Regex!582)) )
))
(declare-fun r!13481 () Regex!582)

(declare-fun validRegex!174 (Regex!582) Bool)

(assert (=> start!12908 (= res!58573 (validRegex!174 r!13481))))

(assert (=> start!12908 e!72724))

(declare-fun e!72725 () Bool)

(assert (=> start!12908 e!72725))

(declare-datatypes ((List!2092 0))(
  ( (Nil!2086) (Cons!2086 (h!7483 C!2086) (t!22664 List!2092)) )
))
(declare-datatypes ((IArray!1177 0))(
  ( (IArray!1178 (innerList!646 List!2092)) )
))
(declare-datatypes ((Conc!588 0))(
  ( (Node!588 (left!1663 Conc!588) (right!1993 Conc!588) (csize!1406 Int) (cheight!799 Int)) (Leaf!1028 (xs!3183 IArray!1177) (csize!1407 Int)) (Empty!588) )
))
(declare-datatypes ((BalanceConc!1180 0))(
  ( (BalanceConc!1181 (c!27752 Conc!588)) )
))
(declare-fun input!6028 () BalanceConc!1180)

(declare-fun e!72726 () Bool)

(declare-fun inv!2687 (BalanceConc!1180) Bool)

(assert (=> start!12908 (and (inv!2687 input!6028) e!72726)))

(declare-fun b!126477 () Bool)

(declare-fun tp_is_empty!1219 () Bool)

(assert (=> b!126477 (= e!72725 tp_is_empty!1219)))

(declare-fun b!126478 () Bool)

(declare-fun tp!69122 () Bool)

(declare-fun tp!69126 () Bool)

(assert (=> b!126478 (= e!72725 (and tp!69122 tp!69126))))

(declare-fun b!126479 () Bool)

(declare-fun tp!69125 () Bool)

(declare-fun tp!69127 () Bool)

(assert (=> b!126479 (= e!72725 (and tp!69125 tp!69127))))

(declare-fun b!126480 () Bool)

(declare-fun tp!69123 () Bool)

(declare-fun inv!2688 (Conc!588) Bool)

(assert (=> b!126480 (= e!72726 (and (inv!2688 (c!27752 input!6028)) tp!69123))))

(declare-fun b!126481 () Bool)

(declare-datatypes ((List!2093 0))(
  ( (Nil!2087) (Cons!2087 (h!7484 Regex!582) (t!22665 List!2093)) )
))
(declare-datatypes ((Context!244 0))(
  ( (Context!245 (exprs!622 List!2093)) )
))
(declare-datatypes ((List!2094 0))(
  ( (Nil!2088) (Cons!2088 (h!7485 Context!244) (t!22666 List!2094)) )
))
(declare-fun lt!38114 () List!2094)

(declare-fun unfocusZipper!6 (List!2094) Regex!582)

(assert (=> b!126481 (= e!72724 (not (= r!13481 (unfocusZipper!6 lt!38114))))))

(declare-fun lt!38112 () List!2092)

(declare-fun list!810 (BalanceConc!1180) List!2092)

(assert (=> b!126481 (= lt!38112 (list!810 input!6028))))

(declare-fun lt!38115 () (Set Context!244))

(declare-fun toList!282 ((Set Context!244)) List!2094)

(assert (=> b!126481 (= lt!38114 (toList!282 lt!38115))))

(declare-fun matchZipper!14 ((Set Context!244) List!2092) Bool)

(declare-fun dropList!49 (BalanceConc!1180 Int) List!2092)

(declare-fun matchZipperSequence!14 ((Set Context!244) BalanceConc!1180 Int) Bool)

(assert (=> b!126481 (= (matchZipper!14 lt!38115 (dropList!49 input!6028 0)) (matchZipperSequence!14 lt!38115 input!6028 0))))

(declare-datatypes ((Unit!1631 0))(
  ( (Unit!1632) )
))
(declare-fun lt!38113 () Unit!1631)

(declare-fun lemmaMatchZipperSequenceEquivalent!13 ((Set Context!244) BalanceConc!1180 Int) Unit!1631)

(assert (=> b!126481 (= lt!38113 (lemmaMatchZipperSequenceEquivalent!13 lt!38115 input!6028 0))))

(declare-fun focus!17 (Regex!582) (Set Context!244))

(assert (=> b!126481 (= lt!38115 (focus!17 r!13481))))

(declare-fun b!126482 () Bool)

(declare-fun tp!69124 () Bool)

(assert (=> b!126482 (= e!72725 tp!69124)))

(assert (= (and start!12908 res!58573) b!126481))

(assert (= (and start!12908 (is-ElementMatch!582 r!13481)) b!126477))

(assert (= (and start!12908 (is-Concat!976 r!13481)) b!126478))

(assert (= (and start!12908 (is-Star!582 r!13481)) b!126482))

(assert (= (and start!12908 (is-Union!582 r!13481)) b!126479))

(assert (= start!12908 b!126480))

(declare-fun m!111735 () Bool)

(assert (=> start!12908 m!111735))

(declare-fun m!111737 () Bool)

(assert (=> start!12908 m!111737))

(declare-fun m!111739 () Bool)

(assert (=> b!126480 m!111739))

(declare-fun m!111741 () Bool)

(assert (=> b!126481 m!111741))

(declare-fun m!111743 () Bool)

(assert (=> b!126481 m!111743))

(declare-fun m!111745 () Bool)

(assert (=> b!126481 m!111745))

(declare-fun m!111747 () Bool)

(assert (=> b!126481 m!111747))

(declare-fun m!111749 () Bool)

(assert (=> b!126481 m!111749))

(declare-fun m!111751 () Bool)

(assert (=> b!126481 m!111751))

(assert (=> b!126481 m!111741))

(declare-fun m!111753 () Bool)

(assert (=> b!126481 m!111753))

(declare-fun m!111755 () Bool)

(assert (=> b!126481 m!111755))

(push 1)

(assert (not start!12908))

(assert tp_is_empty!1219)

(assert (not b!126482))

(assert (not b!126479))

(assert (not b!126478))

(assert (not b!126481))

(assert (not b!126480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!126519 () Bool)

(declare-fun res!58587 () Bool)

(declare-fun e!72753 () Bool)

(assert (=> b!126519 (=> (not res!58587) (not e!72753))))

(declare-fun call!5483 () Bool)

(assert (=> b!126519 (= res!58587 call!5483)))

(declare-fun e!72751 () Bool)

(assert (=> b!126519 (= e!72751 e!72753)))

(declare-fun b!126520 () Bool)

(declare-fun e!72750 () Bool)

(declare-fun call!5485 () Bool)

(assert (=> b!126520 (= e!72750 call!5485)))

(declare-fun d!29890 () Bool)

(declare-fun res!58588 () Bool)

(declare-fun e!72754 () Bool)

(assert (=> d!29890 (=> res!58588 e!72754)))

(assert (=> d!29890 (= res!58588 (is-ElementMatch!582 r!13481))))

(assert (=> d!29890 (= (validRegex!174 r!13481) e!72754)))

(declare-fun b!126521 () Bool)

(declare-fun res!58591 () Bool)

(declare-fun e!72755 () Bool)

(assert (=> b!126521 (=> res!58591 e!72755)))

(assert (=> b!126521 (= res!58591 (not (is-Concat!976 r!13481)))))

(assert (=> b!126521 (= e!72751 e!72755)))

(declare-fun b!126522 () Bool)

(declare-fun e!72752 () Bool)

(assert (=> b!126522 (= e!72752 e!72751)))

(declare-fun c!27759 () Bool)

(assert (=> b!126522 (= c!27759 (is-Union!582 r!13481))))

(declare-fun bm!5478 () Bool)

(assert (=> bm!5478 (= call!5485 (validRegex!174 (ite c!27759 (regTwo!1677 r!13481) (regTwo!1676 r!13481))))))

(declare-fun b!126523 () Bool)

(declare-fun e!72756 () Bool)

(declare-fun call!5484 () Bool)

(assert (=> b!126523 (= e!72756 call!5484)))

(declare-fun b!126524 () Bool)

(assert (=> b!126524 (= e!72752 e!72756)))

(declare-fun res!58590 () Bool)

(declare-fun nullable!101 (Regex!582) Bool)

(assert (=> b!126524 (= res!58590 (not (nullable!101 (reg!911 r!13481))))))

(assert (=> b!126524 (=> (not res!58590) (not e!72756))))

(declare-fun b!126525 () Bool)

(assert (=> b!126525 (= e!72754 e!72752)))

(declare-fun c!27760 () Bool)

(assert (=> b!126525 (= c!27760 (is-Star!582 r!13481))))

(declare-fun b!126526 () Bool)

(assert (=> b!126526 (= e!72753 call!5485)))

(declare-fun bm!5479 () Bool)

(assert (=> bm!5479 (= call!5483 call!5484)))

(declare-fun b!126527 () Bool)

(assert (=> b!126527 (= e!72755 e!72750)))

(declare-fun res!58589 () Bool)

(assert (=> b!126527 (=> (not res!58589) (not e!72750))))

(assert (=> b!126527 (= res!58589 call!5483)))

(declare-fun bm!5480 () Bool)

(assert (=> bm!5480 (= call!5484 (validRegex!174 (ite c!27760 (reg!911 r!13481) (ite c!27759 (regOne!1677 r!13481) (regOne!1676 r!13481)))))))

(assert (= (and d!29890 (not res!58588)) b!126525))

(assert (= (and b!126525 c!27760) b!126524))

(assert (= (and b!126525 (not c!27760)) b!126522))

(assert (= (and b!126524 res!58590) b!126523))

(assert (= (and b!126522 c!27759) b!126519))

(assert (= (and b!126522 (not c!27759)) b!126521))

(assert (= (and b!126519 res!58587) b!126526))

(assert (= (and b!126521 (not res!58591)) b!126527))

(assert (= (and b!126527 res!58589) b!126520))

(assert (= (or b!126519 b!126527) bm!5479))

(assert (= (or b!126526 b!126520) bm!5478))

(assert (= (or b!126523 bm!5479) bm!5480))

(declare-fun m!111779 () Bool)

(assert (=> bm!5478 m!111779))

(declare-fun m!111781 () Bool)

(assert (=> b!126524 m!111781))

(declare-fun m!111783 () Bool)

(assert (=> bm!5480 m!111783))

(assert (=> start!12908 d!29890))

(declare-fun d!29894 () Bool)

(declare-fun isBalanced!170 (Conc!588) Bool)

(assert (=> d!29894 (= (inv!2687 input!6028) (isBalanced!170 (c!27752 input!6028)))))

(declare-fun bs!12458 () Bool)

(assert (= bs!12458 d!29894))

(declare-fun m!111785 () Bool)

(assert (=> bs!12458 m!111785))

(assert (=> start!12908 d!29894))

(declare-fun d!29896 () Bool)

(declare-fun c!27769 () Bool)

(assert (=> d!29896 (= c!27769 (is-Node!588 (c!27752 input!6028)))))

(declare-fun e!72782 () Bool)

(assert (=> d!29896 (= (inv!2688 (c!27752 input!6028)) e!72782)))

(declare-fun b!126561 () Bool)

(declare-fun inv!2691 (Conc!588) Bool)

(assert (=> b!126561 (= e!72782 (inv!2691 (c!27752 input!6028)))))

(declare-fun b!126562 () Bool)

(declare-fun e!72783 () Bool)

(assert (=> b!126562 (= e!72782 e!72783)))

(declare-fun res!58609 () Bool)

(assert (=> b!126562 (= res!58609 (not (is-Leaf!1028 (c!27752 input!6028))))))

(assert (=> b!126562 (=> res!58609 e!72783)))

(declare-fun b!126563 () Bool)

(declare-fun inv!2692 (Conc!588) Bool)

(assert (=> b!126563 (= e!72783 (inv!2692 (c!27752 input!6028)))))

(assert (= (and d!29896 c!27769) b!126561))

(assert (= (and d!29896 (not c!27769)) b!126562))

(assert (= (and b!126562 (not res!58609)) b!126563))

(declare-fun m!111791 () Bool)

(assert (=> b!126561 m!111791))

(declare-fun m!111795 () Bool)

(assert (=> b!126563 m!111795))

(assert (=> b!126480 d!29896))

(declare-fun d!29898 () Bool)

(declare-fun drop!100 (List!2092 Int) List!2092)

(declare-fun list!812 (Conc!588) List!2092)

(assert (=> d!29898 (= (dropList!49 input!6028 0) (drop!100 (list!812 (c!27752 input!6028)) 0))))

(declare-fun bs!12460 () Bool)

(assert (= bs!12460 d!29898))

(declare-fun m!111799 () Bool)

(assert (=> bs!12460 m!111799))

(assert (=> bs!12460 m!111799))

(declare-fun m!111801 () Bool)

(assert (=> bs!12460 m!111801))

(assert (=> b!126481 d!29898))

(declare-fun d!29904 () Bool)

(declare-fun e!72792 () Bool)

(assert (=> d!29904 e!72792))

(declare-fun res!58616 () Bool)

(assert (=> d!29904 (=> (not res!58616) (not e!72792))))

(assert (=> d!29904 (= res!58616 (validRegex!174 r!13481))))

(assert (=> d!29904 (= (focus!17 r!13481) (set.insert (Context!245 (Cons!2087 r!13481 Nil!2087)) (as set.empty (Set Context!244))))))

(declare-fun b!126575 () Bool)

(assert (=> b!126575 (= e!72792 (= (unfocusZipper!6 (toList!282 (set.insert (Context!245 (Cons!2087 r!13481 Nil!2087)) (as set.empty (Set Context!244))))) r!13481))))

(assert (= (and d!29904 res!58616) b!126575))

(assert (=> d!29904 m!111735))

(declare-fun m!111807 () Bool)

(assert (=> d!29904 m!111807))

(assert (=> b!126575 m!111807))

(assert (=> b!126575 m!111807))

(declare-fun m!111809 () Bool)

(assert (=> b!126575 m!111809))

(assert (=> b!126575 m!111809))

(declare-fun m!111811 () Bool)

(assert (=> b!126575 m!111811))

(assert (=> b!126481 d!29904))

(declare-fun d!29908 () Bool)

(assert (=> d!29908 (= (list!810 input!6028) (list!812 (c!27752 input!6028)))))

(declare-fun bs!12461 () Bool)

(assert (= bs!12461 d!29908))

(assert (=> bs!12461 m!111799))

(assert (=> b!126481 d!29908))

(declare-fun d!29910 () Bool)

(declare-fun e!72795 () Bool)

(assert (=> d!29910 e!72795))

(declare-fun res!58619 () Bool)

(assert (=> d!29910 (=> (not res!58619) (not e!72795))))

(declare-fun lt!38130 () List!2094)

(declare-fun noDuplicate!27 (List!2094) Bool)

(assert (=> d!29910 (= res!58619 (noDuplicate!27 lt!38130))))

(declare-fun choose!1631 ((Set Context!244)) List!2094)

(assert (=> d!29910 (= lt!38130 (choose!1631 lt!38115))))

(assert (=> d!29910 (= (toList!282 lt!38115) lt!38130)))

(declare-fun b!126578 () Bool)

(declare-fun content!236 (List!2094) (Set Context!244))

(assert (=> b!126578 (= e!72795 (= (content!236 lt!38130) lt!38115))))

(assert (= (and d!29910 res!58619) b!126578))

(declare-fun m!111817 () Bool)

(assert (=> d!29910 m!111817))

(declare-fun m!111819 () Bool)

(assert (=> d!29910 m!111819))

(declare-fun m!111821 () Bool)

(assert (=> b!126578 m!111821))

(assert (=> b!126481 d!29910))

(declare-fun d!29914 () Bool)

(declare-fun c!27775 () Bool)

(declare-fun isEmpty!824 (List!2092) Bool)

(assert (=> d!29914 (= c!27775 (isEmpty!824 (dropList!49 input!6028 0)))))

(declare-fun e!72801 () Bool)

(assert (=> d!29914 (= (matchZipper!14 lt!38115 (dropList!49 input!6028 0)) e!72801)))

(declare-fun b!126586 () Bool)

(declare-fun nullableZipper!3 ((Set Context!244)) Bool)

(assert (=> b!126586 (= e!72801 (nullableZipper!3 lt!38115))))

(declare-fun b!126587 () Bool)

(declare-fun derivationStepZipper!3 ((Set Context!244) C!2086) (Set Context!244))

(declare-fun head!513 (List!2092) C!2086)

(declare-fun tail!249 (List!2092) List!2092)

(assert (=> b!126587 (= e!72801 (matchZipper!14 (derivationStepZipper!3 lt!38115 (head!513 (dropList!49 input!6028 0))) (tail!249 (dropList!49 input!6028 0))))))

(assert (= (and d!29914 c!27775) b!126586))

(assert (= (and d!29914 (not c!27775)) b!126587))

(assert (=> d!29914 m!111741))

(declare-fun m!111829 () Bool)

(assert (=> d!29914 m!111829))

(declare-fun m!111831 () Bool)

(assert (=> b!126586 m!111831))

(assert (=> b!126587 m!111741))

(declare-fun m!111833 () Bool)

(assert (=> b!126587 m!111833))

(assert (=> b!126587 m!111833))

(declare-fun m!111835 () Bool)

(assert (=> b!126587 m!111835))

(assert (=> b!126587 m!111741))

(declare-fun m!111837 () Bool)

(assert (=> b!126587 m!111837))

(assert (=> b!126587 m!111835))

(assert (=> b!126587 m!111837))

(declare-fun m!111839 () Bool)

(assert (=> b!126587 m!111839))

(assert (=> b!126481 d!29914))

(declare-fun d!29918 () Bool)

(assert (=> d!29918 (= (matchZipper!14 lt!38115 (dropList!49 input!6028 0)) (matchZipperSequence!14 lt!38115 input!6028 0))))

(declare-fun lt!38138 () Unit!1631)

(declare-fun choose!1632 ((Set Context!244) BalanceConc!1180 Int) Unit!1631)

(assert (=> d!29918 (= lt!38138 (choose!1632 lt!38115 input!6028 0))))

(declare-fun e!72806 () Bool)

(assert (=> d!29918 e!72806))

(declare-fun res!58627 () Bool)

(assert (=> d!29918 (=> (not res!58627) (not e!72806))))

(assert (=> d!29918 (= res!58627 (>= 0 0))))

(assert (=> d!29918 (= (lemmaMatchZipperSequenceEquivalent!13 lt!38115 input!6028 0) lt!38138)))

(declare-fun b!126592 () Bool)

(declare-fun size!1916 (BalanceConc!1180) Int)

(assert (=> b!126592 (= e!72806 (<= 0 (size!1916 input!6028)))))

(assert (= (and d!29918 res!58627) b!126592))

(assert (=> d!29918 m!111741))

(assert (=> d!29918 m!111741))

(assert (=> d!29918 m!111753))

(assert (=> d!29918 m!111745))

(declare-fun m!111841 () Bool)

(assert (=> d!29918 m!111841))

(declare-fun m!111843 () Bool)

(assert (=> b!126592 m!111843))

(assert (=> b!126481 d!29918))

(declare-fun d!29920 () Bool)

(declare-fun c!27778 () Bool)

(assert (=> d!29920 (= c!27778 (= 0 (size!1916 input!6028)))))

(declare-fun e!72812 () Bool)

(assert (=> d!29920 (= (matchZipperSequence!14 lt!38115 input!6028 0) e!72812)))

(declare-fun b!126600 () Bool)

(assert (=> b!126600 (= e!72812 (nullableZipper!3 lt!38115))))

(declare-fun b!126601 () Bool)

(declare-fun apply!272 (BalanceConc!1180 Int) C!2086)

(assert (=> b!126601 (= e!72812 (matchZipperSequence!14 (derivationStepZipper!3 lt!38115 (apply!272 input!6028 0)) input!6028 (+ 0 1)))))

(assert (= (and d!29920 c!27778) b!126600))

(assert (= (and d!29920 (not c!27778)) b!126601))

(assert (=> d!29920 m!111843))

(assert (=> b!126600 m!111831))

(declare-fun m!111849 () Bool)

(assert (=> b!126601 m!111849))

(assert (=> b!126601 m!111849))

(declare-fun m!111851 () Bool)

(assert (=> b!126601 m!111851))

(assert (=> b!126601 m!111851))

(declare-fun m!111853 () Bool)

(assert (=> b!126601 m!111853))

(assert (=> b!126481 d!29920))

(declare-fun d!29924 () Bool)

(declare-fun lt!38142 () Regex!582)

(assert (=> d!29924 (validRegex!174 lt!38142)))

(declare-fun generalisedUnion!3 (List!2093) Regex!582)

(declare-fun unfocusZipperList!3 (List!2094) List!2093)

(assert (=> d!29924 (= lt!38142 (generalisedUnion!3 (unfocusZipperList!3 lt!38114)))))

(assert (=> d!29924 (= (unfocusZipper!6 lt!38114) lt!38142)))

(declare-fun bs!12463 () Bool)

(assert (= bs!12463 d!29924))

(declare-fun m!111861 () Bool)

(assert (=> bs!12463 m!111861))

(declare-fun m!111863 () Bool)

(assert (=> bs!12463 m!111863))

(assert (=> bs!12463 m!111863))

(declare-fun m!111865 () Bool)

(assert (=> bs!12463 m!111865))

(assert (=> b!126481 d!29924))

(declare-fun b!126616 () Bool)

(declare-fun e!72816 () Bool)

(declare-fun tp!69159 () Bool)

(declare-fun tp!69158 () Bool)

(assert (=> b!126616 (= e!72816 (and tp!69159 tp!69158))))

(declare-fun b!126613 () Bool)

(assert (=> b!126613 (= e!72816 tp_is_empty!1219)))

(assert (=> b!126479 (= tp!69125 e!72816)))

(declare-fun b!126615 () Bool)

(declare-fun tp!69156 () Bool)

(assert (=> b!126615 (= e!72816 tp!69156)))

(declare-fun b!126614 () Bool)

(declare-fun tp!69160 () Bool)

(declare-fun tp!69157 () Bool)

(assert (=> b!126614 (= e!72816 (and tp!69160 tp!69157))))

(assert (= (and b!126479 (is-ElementMatch!582 (regOne!1677 r!13481))) b!126613))

(assert (= (and b!126479 (is-Concat!976 (regOne!1677 r!13481))) b!126614))

(assert (= (and b!126479 (is-Star!582 (regOne!1677 r!13481))) b!126615))

(assert (= (and b!126479 (is-Union!582 (regOne!1677 r!13481))) b!126616))

(declare-fun b!126620 () Bool)

(declare-fun e!72817 () Bool)

(declare-fun tp!69164 () Bool)

(declare-fun tp!69163 () Bool)

(assert (=> b!126620 (= e!72817 (and tp!69164 tp!69163))))

(declare-fun b!126617 () Bool)

(assert (=> b!126617 (= e!72817 tp_is_empty!1219)))

(assert (=> b!126479 (= tp!69127 e!72817)))

(declare-fun b!126619 () Bool)

(declare-fun tp!69161 () Bool)

(assert (=> b!126619 (= e!72817 tp!69161)))

(declare-fun b!126618 () Bool)

(declare-fun tp!69165 () Bool)

(declare-fun tp!69162 () Bool)

(assert (=> b!126618 (= e!72817 (and tp!69165 tp!69162))))

(assert (= (and b!126479 (is-ElementMatch!582 (regTwo!1677 r!13481))) b!126617))

(assert (= (and b!126479 (is-Concat!976 (regTwo!1677 r!13481))) b!126618))

(assert (= (and b!126479 (is-Star!582 (regTwo!1677 r!13481))) b!126619))

(assert (= (and b!126479 (is-Union!582 (regTwo!1677 r!13481))) b!126620))

(declare-fun tp!69173 () Bool)

(declare-fun e!72822 () Bool)

(declare-fun tp!69172 () Bool)

(declare-fun b!126629 () Bool)

(assert (=> b!126629 (= e!72822 (and (inv!2688 (left!1663 (c!27752 input!6028))) tp!69173 (inv!2688 (right!1993 (c!27752 input!6028))) tp!69172))))

(declare-fun b!126631 () Bool)

(declare-fun e!72823 () Bool)

(declare-fun tp!69174 () Bool)

(assert (=> b!126631 (= e!72823 tp!69174)))

(declare-fun b!126630 () Bool)

(declare-fun inv!2695 (IArray!1177) Bool)

(assert (=> b!126630 (= e!72822 (and (inv!2695 (xs!3183 (c!27752 input!6028))) e!72823))))

(assert (=> b!126480 (= tp!69123 (and (inv!2688 (c!27752 input!6028)) e!72822))))

(assert (= (and b!126480 (is-Node!588 (c!27752 input!6028))) b!126629))

(assert (= b!126630 b!126631))

(assert (= (and b!126480 (is-Leaf!1028 (c!27752 input!6028))) b!126630))

(declare-fun m!111867 () Bool)

(assert (=> b!126629 m!111867))

(declare-fun m!111869 () Bool)

(assert (=> b!126629 m!111869))

(declare-fun m!111871 () Bool)

(assert (=> b!126630 m!111871))

(assert (=> b!126480 m!111739))

(declare-fun b!126635 () Bool)

(declare-fun e!72824 () Bool)

(declare-fun tp!69178 () Bool)

(declare-fun tp!69177 () Bool)

(assert (=> b!126635 (= e!72824 (and tp!69178 tp!69177))))

(declare-fun b!126632 () Bool)

(assert (=> b!126632 (= e!72824 tp_is_empty!1219)))

(assert (=> b!126482 (= tp!69124 e!72824)))

(declare-fun b!126634 () Bool)

(declare-fun tp!69175 () Bool)

(assert (=> b!126634 (= e!72824 tp!69175)))

(declare-fun b!126633 () Bool)

(declare-fun tp!69179 () Bool)

(declare-fun tp!69176 () Bool)

(assert (=> b!126633 (= e!72824 (and tp!69179 tp!69176))))

(assert (= (and b!126482 (is-ElementMatch!582 (reg!911 r!13481))) b!126632))

(assert (= (and b!126482 (is-Concat!976 (reg!911 r!13481))) b!126633))

(assert (= (and b!126482 (is-Star!582 (reg!911 r!13481))) b!126634))

(assert (= (and b!126482 (is-Union!582 (reg!911 r!13481))) b!126635))

(declare-fun b!126639 () Bool)

(declare-fun e!72825 () Bool)

(declare-fun tp!69183 () Bool)

(declare-fun tp!69182 () Bool)

(assert (=> b!126639 (= e!72825 (and tp!69183 tp!69182))))

(declare-fun b!126636 () Bool)

(assert (=> b!126636 (= e!72825 tp_is_empty!1219)))

(assert (=> b!126478 (= tp!69122 e!72825)))

(declare-fun b!126638 () Bool)

(declare-fun tp!69180 () Bool)

(assert (=> b!126638 (= e!72825 tp!69180)))

(declare-fun b!126637 () Bool)

(declare-fun tp!69184 () Bool)

(declare-fun tp!69181 () Bool)

(assert (=> b!126637 (= e!72825 (and tp!69184 tp!69181))))

(assert (= (and b!126478 (is-ElementMatch!582 (regOne!1676 r!13481))) b!126636))

(assert (= (and b!126478 (is-Concat!976 (regOne!1676 r!13481))) b!126637))

(assert (= (and b!126478 (is-Star!582 (regOne!1676 r!13481))) b!126638))

(assert (= (and b!126478 (is-Union!582 (regOne!1676 r!13481))) b!126639))

(declare-fun b!126643 () Bool)

(declare-fun e!72826 () Bool)

(declare-fun tp!69188 () Bool)

(declare-fun tp!69187 () Bool)

(assert (=> b!126643 (= e!72826 (and tp!69188 tp!69187))))

(declare-fun b!126640 () Bool)

(assert (=> b!126640 (= e!72826 tp_is_empty!1219)))

(assert (=> b!126478 (= tp!69126 e!72826)))

(declare-fun b!126642 () Bool)

(declare-fun tp!69185 () Bool)

(assert (=> b!126642 (= e!72826 tp!69185)))

(declare-fun b!126641 () Bool)

(declare-fun tp!69189 () Bool)

(declare-fun tp!69186 () Bool)

(assert (=> b!126641 (= e!72826 (and tp!69189 tp!69186))))

(assert (= (and b!126478 (is-ElementMatch!582 (regTwo!1676 r!13481))) b!126640))

(assert (= (and b!126478 (is-Concat!976 (regTwo!1676 r!13481))) b!126641))

(assert (= (and b!126478 (is-Star!582 (regTwo!1676 r!13481))) b!126642))

(assert (= (and b!126478 (is-Union!582 (regTwo!1676 r!13481))) b!126643))

(push 1)

(assert (not d!29904))

(assert tp_is_empty!1219)

(assert (not d!29910))

(assert (not b!126630))

(assert (not b!126643))

(assert (not b!126561))

(assert (not b!126637))

(assert (not b!126638))

(assert (not d!29924))

(assert (not b!126614))

(assert (not d!29920))

(assert (not d!29918))

(assert (not b!126641))

(assert (not d!29894))

(assert (not b!126633))

(assert (not b!126578))

(assert (not b!126524))

(assert (not b!126642))

(assert (not b!126634))

(assert (not bm!5480))

(assert (not b!126639))

(assert (not d!29908))

(assert (not b!126587))

(assert (not b!126586))

(assert (not b!126635))

(assert (not b!126619))

(assert (not bm!5478))

(assert (not b!126629))

(assert (not b!126620))

(assert (not b!126600))

(assert (not b!126631))

(assert (not b!126575))

(assert (not b!126563))

(assert (not d!29914))

(assert (not b!126616))

(assert (not b!126618))

(assert (not b!126615))

(assert (not b!126592))

(assert (not b!126480))

(assert (not b!126601))

(assert (not d!29898))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

