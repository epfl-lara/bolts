; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532232 () Bool)

(assert start!532232)

(declare-fun b!5031697 () Bool)

(declare-fun e!3143301 () Bool)

(declare-datatypes ((C!28134 0))(
  ( (C!28135 (val!23463 Int)) )
))
(declare-datatypes ((List!58370 0))(
  ( (Nil!58246) (Cons!58246 (h!64694 C!28134) (t!370789 List!58370)) )
))
(declare-datatypes ((IArray!30983 0))(
  ( (IArray!30984 (innerList!15549 List!58370)) )
))
(declare-datatypes ((Conc!15461 0))(
  ( (Node!15461 (left!42617 Conc!15461) (right!42947 Conc!15461) (csize!31152 Int) (cheight!15672 Int)) (Leaf!25656 (xs!18787 IArray!30983) (csize!31153 Int)) (Empty!15461) )
))
(declare-datatypes ((BalanceConc!30352 0))(
  ( (BalanceConc!30353 (c!861502 Conc!15461)) )
))
(declare-fun totalInput!786 () BalanceConc!30352)

(declare-fun tp!1409680 () Bool)

(declare-fun inv!76886 (Conc!15461) Bool)

(assert (=> b!5031697 (= e!3143301 (and (inv!76886 (c!861502 totalInput!786)) tp!1409680))))

(declare-fun b!5031698 () Bool)

(declare-fun e!3143304 () Bool)

(declare-fun input!5499 () BalanceConc!30352)

(declare-fun tp!1409679 () Bool)

(assert (=> b!5031698 (= e!3143304 (and (inv!76886 (c!861502 input!5499)) tp!1409679))))

(declare-fun b!5031699 () Bool)

(declare-fun e!3143303 () Bool)

(declare-datatypes ((tuple2!63128 0))(
  ( (tuple2!63129 (_1!34867 BalanceConc!30352) (_2!34867 BalanceConc!30352)) )
))
(declare-fun lt!2082215 () tuple2!63128)

(declare-fun lt!2082216 () List!58370)

(declare-fun ++!12677 (List!58370 List!58370) List!58370)

(declare-fun list!18820 (BalanceConc!30352) List!58370)

(assert (=> b!5031699 (= e!3143303 (not (= (++!12677 (list!18820 (_1!34867 lt!2082215)) (list!18820 (_2!34867 lt!2082215))) lt!2082216)))))

(declare-fun lt!2082217 () Int)

(declare-datatypes ((Regex!13942 0))(
  ( (ElementMatch!13942 (c!861503 C!28134)) (Concat!22735 (regOne!28396 Regex!13942) (regTwo!28396 Regex!13942)) (EmptyExpr!13942) (Star!13942 (reg!14271 Regex!13942)) (EmptyLang!13942) (Union!13942 (regOne!28397 Regex!13942) (regTwo!28397 Regex!13942)) )
))
(declare-datatypes ((List!58371 0))(
  ( (Nil!58247) (Cons!58247 (h!64695 Regex!13942) (t!370790 List!58371)) )
))
(declare-datatypes ((Context!6734 0))(
  ( (Context!6735 (exprs!3867 List!58371)) )
))
(declare-fun z!3733 () (Set Context!6734))

(declare-fun splitAt!466 (BalanceConc!30352 Int) tuple2!63128)

(declare-fun findLongestMatchInnerZipperFastV2!256 ((Set Context!6734) Int BalanceConc!30352 Int) Int)

(declare-fun size!38785 (BalanceConc!30352) Int)

(assert (=> b!5031699 (= lt!2082215 (splitAt!466 input!5499 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)))))

(assert (=> b!5031699 (= lt!2082217 (size!38785 totalInput!786))))

(declare-fun b!5031700 () Bool)

(declare-fun e!3143302 () Bool)

(declare-fun tp!1409681 () Bool)

(assert (=> b!5031700 (= e!3143302 tp!1409681)))

(declare-fun setNonEmpty!29033 () Bool)

(declare-fun tp!1409682 () Bool)

(declare-fun setRes!29033 () Bool)

(declare-fun setElem!29033 () Context!6734)

(declare-fun inv!76887 (Context!6734) Bool)

(assert (=> setNonEmpty!29033 (= setRes!29033 (and tp!1409682 (inv!76887 setElem!29033) e!3143302))))

(declare-fun setRest!29033 () (Set Context!6734))

(assert (=> setNonEmpty!29033 (= z!3733 (set.union (set.insert setElem!29033 (as set.empty (Set Context!6734))) setRest!29033))))

(declare-fun setIsEmpty!29033 () Bool)

(assert (=> setIsEmpty!29033 setRes!29033))

(declare-fun res!2144316 () Bool)

(assert (=> start!532232 (=> (not res!2144316) (not e!3143303))))

(declare-fun isSuffix!1390 (List!58370 List!58370) Bool)

(assert (=> start!532232 (= res!2144316 (isSuffix!1390 lt!2082216 (list!18820 totalInput!786)))))

(assert (=> start!532232 (= lt!2082216 (list!18820 input!5499))))

(assert (=> start!532232 e!3143303))

(declare-fun inv!76888 (BalanceConc!30352) Bool)

(assert (=> start!532232 (and (inv!76888 input!5499) e!3143304)))

(assert (=> start!532232 (and (inv!76888 totalInput!786) e!3143301)))

(declare-fun condSetEmpty!29033 () Bool)

(assert (=> start!532232 (= condSetEmpty!29033 (= z!3733 (as set.empty (Set Context!6734))))))

(assert (=> start!532232 setRes!29033))

(assert (= (and start!532232 res!2144316) b!5031699))

(assert (= start!532232 b!5031698))

(assert (= start!532232 b!5031697))

(assert (= (and start!532232 condSetEmpty!29033) setIsEmpty!29033))

(assert (= (and start!532232 (not condSetEmpty!29033)) setNonEmpty!29033))

(assert (= setNonEmpty!29033 b!5031700))

(declare-fun m!6066732 () Bool)

(assert (=> b!5031697 m!6066732))

(declare-fun m!6066734 () Bool)

(assert (=> setNonEmpty!29033 m!6066734))

(declare-fun m!6066736 () Bool)

(assert (=> start!532232 m!6066736))

(declare-fun m!6066738 () Bool)

(assert (=> start!532232 m!6066738))

(declare-fun m!6066740 () Bool)

(assert (=> start!532232 m!6066740))

(declare-fun m!6066742 () Bool)

(assert (=> start!532232 m!6066742))

(declare-fun m!6066744 () Bool)

(assert (=> start!532232 m!6066744))

(assert (=> start!532232 m!6066738))

(declare-fun m!6066746 () Bool)

(assert (=> b!5031698 m!6066746))

(declare-fun m!6066748 () Bool)

(assert (=> b!5031699 m!6066748))

(declare-fun m!6066750 () Bool)

(assert (=> b!5031699 m!6066750))

(declare-fun m!6066752 () Bool)

(assert (=> b!5031699 m!6066752))

(assert (=> b!5031699 m!6066750))

(declare-fun m!6066754 () Bool)

(assert (=> b!5031699 m!6066754))

(declare-fun m!6066756 () Bool)

(assert (=> b!5031699 m!6066756))

(declare-fun m!6066758 () Bool)

(assert (=> b!5031699 m!6066758))

(assert (=> b!5031699 m!6066756))

(declare-fun m!6066760 () Bool)

(assert (=> b!5031699 m!6066760))

(assert (=> b!5031699 m!6066754))

(push 1)

(assert (not b!5031700))

(assert (not b!5031697))

(assert (not setNonEmpty!29033))

(assert (not b!5031698))

(assert (not start!532232))

(assert (not b!5031699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1619217 () Bool)

(declare-fun c!861508 () Bool)

(assert (=> d!1619217 (= c!861508 (is-Node!15461 (c!861502 input!5499)))))

(declare-fun e!3143321 () Bool)

(assert (=> d!1619217 (= (inv!76886 (c!861502 input!5499)) e!3143321)))

(declare-fun b!5031719 () Bool)

(declare-fun inv!76892 (Conc!15461) Bool)

(assert (=> b!5031719 (= e!3143321 (inv!76892 (c!861502 input!5499)))))

(declare-fun b!5031720 () Bool)

(declare-fun e!3143322 () Bool)

(assert (=> b!5031720 (= e!3143321 e!3143322)))

(declare-fun res!2144322 () Bool)

(assert (=> b!5031720 (= res!2144322 (not (is-Leaf!25656 (c!861502 input!5499))))))

(assert (=> b!5031720 (=> res!2144322 e!3143322)))

(declare-fun b!5031721 () Bool)

(declare-fun inv!76893 (Conc!15461) Bool)

(assert (=> b!5031721 (= e!3143322 (inv!76893 (c!861502 input!5499)))))

(assert (= (and d!1619217 c!861508) b!5031719))

(assert (= (and d!1619217 (not c!861508)) b!5031720))

(assert (= (and b!5031720 (not res!2144322)) b!5031721))

(declare-fun m!6066792 () Bool)

(assert (=> b!5031719 m!6066792))

(declare-fun m!6066794 () Bool)

(assert (=> b!5031721 m!6066794))

(assert (=> b!5031698 d!1619217))

(declare-fun b!5031733 () Bool)

(declare-fun e!3143327 () Bool)

(declare-fun lt!2082229 () List!58370)

(assert (=> b!5031733 (= e!3143327 (or (not (= (list!18820 (_2!34867 lt!2082215)) Nil!58246)) (= lt!2082229 (list!18820 (_1!34867 lt!2082215)))))))

(declare-fun b!5031732 () Bool)

(declare-fun res!2144327 () Bool)

(assert (=> b!5031732 (=> (not res!2144327) (not e!3143327))))

(declare-fun size!38787 (List!58370) Int)

(assert (=> b!5031732 (= res!2144327 (= (size!38787 lt!2082229) (+ (size!38787 (list!18820 (_1!34867 lt!2082215))) (size!38787 (list!18820 (_2!34867 lt!2082215))))))))

(declare-fun d!1619219 () Bool)

(assert (=> d!1619219 e!3143327))

(declare-fun res!2144328 () Bool)

(assert (=> d!1619219 (=> (not res!2144328) (not e!3143327))))

(declare-fun content!10329 (List!58370) (Set C!28134))

(assert (=> d!1619219 (= res!2144328 (= (content!10329 lt!2082229) (set.union (content!10329 (list!18820 (_1!34867 lt!2082215))) (content!10329 (list!18820 (_2!34867 lt!2082215))))))))

(declare-fun e!3143328 () List!58370)

(assert (=> d!1619219 (= lt!2082229 e!3143328)))

(declare-fun c!861511 () Bool)

(assert (=> d!1619219 (= c!861511 (is-Nil!58246 (list!18820 (_1!34867 lt!2082215))))))

(assert (=> d!1619219 (= (++!12677 (list!18820 (_1!34867 lt!2082215)) (list!18820 (_2!34867 lt!2082215))) lt!2082229)))

(declare-fun b!5031731 () Bool)

(assert (=> b!5031731 (= e!3143328 (Cons!58246 (h!64694 (list!18820 (_1!34867 lt!2082215))) (++!12677 (t!370789 (list!18820 (_1!34867 lt!2082215))) (list!18820 (_2!34867 lt!2082215)))))))

(declare-fun b!5031730 () Bool)

(assert (=> b!5031730 (= e!3143328 (list!18820 (_2!34867 lt!2082215)))))

(assert (= (and d!1619219 c!861511) b!5031730))

(assert (= (and d!1619219 (not c!861511)) b!5031731))

(assert (= (and d!1619219 res!2144328) b!5031732))

(assert (= (and b!5031732 res!2144327) b!5031733))

(declare-fun m!6066798 () Bool)

(assert (=> b!5031732 m!6066798))

(assert (=> b!5031732 m!6066754))

(declare-fun m!6066800 () Bool)

(assert (=> b!5031732 m!6066800))

(assert (=> b!5031732 m!6066756))

(declare-fun m!6066802 () Bool)

(assert (=> b!5031732 m!6066802))

(declare-fun m!6066804 () Bool)

(assert (=> d!1619219 m!6066804))

(assert (=> d!1619219 m!6066754))

(declare-fun m!6066806 () Bool)

(assert (=> d!1619219 m!6066806))

(assert (=> d!1619219 m!6066756))

(declare-fun m!6066808 () Bool)

(assert (=> d!1619219 m!6066808))

(assert (=> b!5031731 m!6066756))

(declare-fun m!6066810 () Bool)

(assert (=> b!5031731 m!6066810))

(assert (=> b!5031699 d!1619219))

(declare-fun d!1619225 () Bool)

(declare-fun e!3143331 () Bool)

(assert (=> d!1619225 e!3143331))

(declare-fun res!2144334 () Bool)

(assert (=> d!1619225 (=> (not res!2144334) (not e!3143331))))

(declare-fun lt!2082235 () tuple2!63128)

(declare-fun isBalanced!4323 (Conc!15461) Bool)

(assert (=> d!1619225 (= res!2144334 (isBalanced!4323 (c!861502 (_1!34867 lt!2082235))))))

(declare-datatypes ((tuple2!63132 0))(
  ( (tuple2!63133 (_1!34869 Conc!15461) (_2!34869 Conc!15461)) )
))
(declare-fun lt!2082234 () tuple2!63132)

(assert (=> d!1619225 (= lt!2082235 (tuple2!63129 (BalanceConc!30353 (_1!34869 lt!2082234)) (BalanceConc!30353 (_2!34869 lt!2082234))))))

(declare-fun splitAt!468 (Conc!15461 Int) tuple2!63132)

(assert (=> d!1619225 (= lt!2082234 (splitAt!468 (c!861502 input!5499) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)))))

(assert (=> d!1619225 (isBalanced!4323 (c!861502 input!5499))))

(assert (=> d!1619225 (= (splitAt!466 input!5499 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)) lt!2082235)))

(declare-fun b!5031738 () Bool)

(declare-fun res!2144333 () Bool)

(assert (=> b!5031738 (=> (not res!2144333) (not e!3143331))))

(assert (=> b!5031738 (= res!2144333 (isBalanced!4323 (c!861502 (_2!34867 lt!2082235))))))

(declare-fun b!5031739 () Bool)

(declare-datatypes ((tuple2!63134 0))(
  ( (tuple2!63135 (_1!34870 List!58370) (_2!34870 List!58370)) )
))
(declare-fun splitAtIndex!168 (List!58370 Int) tuple2!63134)

(assert (=> b!5031739 (= e!3143331 (= (tuple2!63135 (list!18820 (_1!34867 lt!2082235)) (list!18820 (_2!34867 lt!2082235))) (splitAtIndex!168 (list!18820 input!5499) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217))))))

(assert (= (and d!1619225 res!2144334) b!5031738))

(assert (= (and b!5031738 res!2144333) b!5031739))

(declare-fun m!6066812 () Bool)

(assert (=> d!1619225 m!6066812))

(assert (=> d!1619225 m!6066750))

(declare-fun m!6066814 () Bool)

(assert (=> d!1619225 m!6066814))

(declare-fun m!6066816 () Bool)

(assert (=> d!1619225 m!6066816))

(declare-fun m!6066818 () Bool)

(assert (=> b!5031738 m!6066818))

(declare-fun m!6066820 () Bool)

(assert (=> b!5031739 m!6066820))

(declare-fun m!6066822 () Bool)

(assert (=> b!5031739 m!6066822))

(assert (=> b!5031739 m!6066742))

(assert (=> b!5031739 m!6066742))

(assert (=> b!5031739 m!6066750))

(declare-fun m!6066824 () Bool)

(assert (=> b!5031739 m!6066824))

(assert (=> b!5031699 d!1619225))

(declare-fun d!1619227 () Bool)

(declare-fun lt!2082238 () Int)

(assert (=> d!1619227 (= lt!2082238 (size!38787 (list!18820 input!5499)))))

(declare-fun size!38788 (Conc!15461) Int)

(assert (=> d!1619227 (= lt!2082238 (size!38788 (c!861502 input!5499)))))

(assert (=> d!1619227 (= (size!38785 input!5499) lt!2082238)))

(declare-fun bs!1188596 () Bool)

(assert (= bs!1188596 d!1619227))

(assert (=> bs!1188596 m!6066742))

(assert (=> bs!1188596 m!6066742))

(declare-fun m!6066826 () Bool)

(assert (=> bs!1188596 m!6066826))

(declare-fun m!6066828 () Bool)

(assert (=> bs!1188596 m!6066828))

(assert (=> b!5031699 d!1619227))

(declare-fun b!5031756 () Bool)

(declare-fun c!861519 () Bool)

(declare-fun lt!2082245 () (Set Context!6734))

(declare-fun nullableZipper!948 ((Set Context!6734)) Bool)

(assert (=> b!5031756 (= c!861519 (nullableZipper!948 lt!2082245))))

(declare-fun e!3143343 () Int)

(declare-fun e!3143342 () Int)

(assert (=> b!5031756 (= e!3143343 e!3143342)))

(declare-fun b!5031758 () Bool)

(declare-fun e!3143345 () Int)

(assert (=> b!5031758 (= e!3143345 0)))

(declare-fun b!5031759 () Bool)

(assert (=> b!5031759 (= e!3143342 1)))

(declare-fun b!5031760 () Bool)

(declare-fun e!3143346 () Bool)

(declare-fun lostCauseZipper!954 ((Set Context!6734)) Bool)

(assert (=> b!5031760 (= e!3143346 (lostCauseZipper!954 z!3733))))

(declare-fun e!3143344 () Bool)

(declare-fun b!5031761 () Bool)

(assert (=> b!5031761 (= e!3143344 (<= (- lt!2082217 (size!38785 input!5499)) (size!38785 totalInput!786)))))

(declare-fun b!5031762 () Bool)

(assert (=> b!5031762 (= e!3143342 0)))

(declare-fun b!5031763 () Bool)

(declare-fun lt!2082246 () Int)

(assert (=> b!5031763 (= e!3143343 (+ 1 lt!2082246))))

(declare-fun b!5031757 () Bool)

(assert (=> b!5031757 (= e!3143345 e!3143343)))

(declare-fun derivationStepZipper!735 ((Set Context!6734) C!28134) (Set Context!6734))

(declare-fun apply!14217 (BalanceConc!30352 Int) C!28134)

(assert (=> b!5031757 (= lt!2082245 (derivationStepZipper!735 z!3733 (apply!14217 totalInput!786 (- lt!2082217 (size!38785 input!5499)))))))

(assert (=> b!5031757 (= lt!2082246 (findLongestMatchInnerZipperFastV2!256 lt!2082245 (+ (- lt!2082217 (size!38785 input!5499)) 1) totalInput!786 lt!2082217))))

(declare-fun c!861518 () Bool)

(assert (=> b!5031757 (= c!861518 (> lt!2082246 0))))

(declare-fun d!1619229 () Bool)

(declare-fun lt!2082247 () Int)

(assert (=> d!1619229 (and (>= lt!2082247 0) (<= lt!2082247 (- lt!2082217 (- lt!2082217 (size!38785 input!5499)))))))

(assert (=> d!1619229 (= lt!2082247 e!3143345)))

(declare-fun c!861520 () Bool)

(assert (=> d!1619229 (= c!861520 e!3143346)))

(declare-fun res!2144339 () Bool)

(assert (=> d!1619229 (=> res!2144339 e!3143346)))

(assert (=> d!1619229 (= res!2144339 (= (- lt!2082217 (size!38785 input!5499)) lt!2082217))))

(assert (=> d!1619229 e!3143344))

(declare-fun res!2144340 () Bool)

(assert (=> d!1619229 (=> (not res!2144340) (not e!3143344))))

(assert (=> d!1619229 (= res!2144340 (>= (- lt!2082217 (size!38785 input!5499)) 0))))

(assert (=> d!1619229 (= (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) lt!2082247)))

(assert (= (and d!1619229 res!2144340) b!5031761))

(assert (= (and d!1619229 (not res!2144339)) b!5031760))

(assert (= (and d!1619229 c!861520) b!5031758))

(assert (= (and d!1619229 (not c!861520)) b!5031757))

(assert (= (and b!5031757 c!861518) b!5031763))

(assert (= (and b!5031757 (not c!861518)) b!5031756))

(assert (= (and b!5031756 c!861519) b!5031759))

(assert (= (and b!5031756 (not c!861519)) b!5031762))

(declare-fun m!6066830 () Bool)

(assert (=> b!5031756 m!6066830))

(declare-fun m!6066832 () Bool)

(assert (=> b!5031760 m!6066832))

(assert (=> b!5031761 m!6066748))

(declare-fun m!6066834 () Bool)

(assert (=> b!5031757 m!6066834))

(assert (=> b!5031757 m!6066834))

(declare-fun m!6066836 () Bool)

(assert (=> b!5031757 m!6066836))

(declare-fun m!6066838 () Bool)

(assert (=> b!5031757 m!6066838))

(assert (=> b!5031699 d!1619229))

(declare-fun d!1619231 () Bool)

(declare-fun list!18822 (Conc!15461) List!58370)

(assert (=> d!1619231 (= (list!18820 (_2!34867 lt!2082215)) (list!18822 (c!861502 (_2!34867 lt!2082215))))))

(declare-fun bs!1188597 () Bool)

(assert (= bs!1188597 d!1619231))

(declare-fun m!6066840 () Bool)

(assert (=> bs!1188597 m!6066840))

(assert (=> b!5031699 d!1619231))

(declare-fun d!1619233 () Bool)

(assert (=> d!1619233 (= (list!18820 (_1!34867 lt!2082215)) (list!18822 (c!861502 (_1!34867 lt!2082215))))))

(declare-fun bs!1188598 () Bool)

(assert (= bs!1188598 d!1619233))

(declare-fun m!6066842 () Bool)

(assert (=> bs!1188598 m!6066842))

(assert (=> b!5031699 d!1619233))

(declare-fun d!1619235 () Bool)

(declare-fun lt!2082252 () Int)

(assert (=> d!1619235 (= lt!2082252 (size!38787 (list!18820 totalInput!786)))))

(assert (=> d!1619235 (= lt!2082252 (size!38788 (c!861502 totalInput!786)))))

(assert (=> d!1619235 (= (size!38785 totalInput!786) lt!2082252)))

(declare-fun bs!1188599 () Bool)

(assert (= bs!1188599 d!1619235))

(assert (=> bs!1188599 m!6066738))

(assert (=> bs!1188599 m!6066738))

(declare-fun m!6066844 () Bool)

(assert (=> bs!1188599 m!6066844))

(declare-fun m!6066846 () Bool)

(assert (=> bs!1188599 m!6066846))

(assert (=> b!5031699 d!1619235))

(declare-fun d!1619237 () Bool)

(assert (=> d!1619237 (= (list!18820 totalInput!786) (list!18822 (c!861502 totalInput!786)))))

(declare-fun bs!1188600 () Bool)

(assert (= bs!1188600 d!1619237))

(declare-fun m!6066848 () Bool)

(assert (=> bs!1188600 m!6066848))

(assert (=> start!532232 d!1619237))

(declare-fun d!1619239 () Bool)

(assert (=> d!1619239 (= (inv!76888 input!5499) (isBalanced!4323 (c!861502 input!5499)))))

(declare-fun bs!1188601 () Bool)

(assert (= bs!1188601 d!1619239))

(assert (=> bs!1188601 m!6066816))

(assert (=> start!532232 d!1619239))

(declare-fun d!1619241 () Bool)

(assert (=> d!1619241 (= (inv!76888 totalInput!786) (isBalanced!4323 (c!861502 totalInput!786)))))

(declare-fun bs!1188602 () Bool)

(assert (= bs!1188602 d!1619241))

(declare-fun m!6066850 () Bool)

(assert (=> bs!1188602 m!6066850))

(assert (=> start!532232 d!1619241))

(declare-fun d!1619243 () Bool)

(assert (=> d!1619243 (= (list!18820 input!5499) (list!18822 (c!861502 input!5499)))))

(declare-fun bs!1188603 () Bool)

(assert (= bs!1188603 d!1619243))

(declare-fun m!6066852 () Bool)

(assert (=> bs!1188603 m!6066852))

(assert (=> start!532232 d!1619243))

(declare-fun d!1619245 () Bool)

(declare-fun e!3143351 () Bool)

(assert (=> d!1619245 e!3143351))

(declare-fun res!2144347 () Bool)

(assert (=> d!1619245 (=> res!2144347 e!3143351)))

(declare-fun lt!2082255 () Bool)

(assert (=> d!1619245 (= res!2144347 (not lt!2082255))))

(declare-fun drop!2593 (List!58370 Int) List!58370)

(assert (=> d!1619245 (= lt!2082255 (= lt!2082216 (drop!2593 (list!18820 totalInput!786) (- (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216)))))))

(assert (=> d!1619245 (= (isSuffix!1390 lt!2082216 (list!18820 totalInput!786)) lt!2082255)))

(declare-fun b!5031770 () Bool)

(assert (=> b!5031770 (= e!3143351 (>= (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216)))))

(assert (= (and d!1619245 (not res!2144347)) b!5031770))

(assert (=> d!1619245 m!6066738))

(assert (=> d!1619245 m!6066844))

(declare-fun m!6066854 () Bool)

(assert (=> d!1619245 m!6066854))

(assert (=> d!1619245 m!6066738))

(declare-fun m!6066856 () Bool)

(assert (=> d!1619245 m!6066856))

(assert (=> b!5031770 m!6066738))

(assert (=> b!5031770 m!6066844))

(assert (=> b!5031770 m!6066854))

(assert (=> start!532232 d!1619245))

(declare-fun d!1619247 () Bool)

(declare-fun lambda!249709 () Int)

(declare-fun forall!13462 (List!58371 Int) Bool)

(assert (=> d!1619247 (= (inv!76887 setElem!29033) (forall!13462 (exprs!3867 setElem!29033) lambda!249709))))

(declare-fun bs!1188611 () Bool)

(assert (= bs!1188611 d!1619247))

(declare-fun m!6066920 () Bool)

(assert (=> bs!1188611 m!6066920))

(assert (=> setNonEmpty!29033 d!1619247))

(declare-fun d!1619273 () Bool)

(declare-fun c!861536 () Bool)

(assert (=> d!1619273 (= c!861536 (is-Node!15461 (c!861502 totalInput!786)))))

(declare-fun e!3143383 () Bool)

(assert (=> d!1619273 (= (inv!76886 (c!861502 totalInput!786)) e!3143383)))

(declare-fun b!5031821 () Bool)

(assert (=> b!5031821 (= e!3143383 (inv!76892 (c!861502 totalInput!786)))))

(declare-fun b!5031822 () Bool)

(declare-fun e!3143384 () Bool)

(assert (=> b!5031822 (= e!3143383 e!3143384)))

(declare-fun res!2144368 () Bool)

(assert (=> b!5031822 (= res!2144368 (not (is-Leaf!25656 (c!861502 totalInput!786))))))

(assert (=> b!5031822 (=> res!2144368 e!3143384)))

(declare-fun b!5031823 () Bool)

(assert (=> b!5031823 (= e!3143384 (inv!76893 (c!861502 totalInput!786)))))

(assert (= (and d!1619273 c!861536) b!5031821))

(assert (= (and d!1619273 (not c!861536)) b!5031822))

(assert (= (and b!5031822 (not res!2144368)) b!5031823))

(declare-fun m!6066922 () Bool)

(assert (=> b!5031821 m!6066922))

(declare-fun m!6066924 () Bool)

(assert (=> b!5031823 m!6066924))

(assert (=> b!5031697 d!1619273))

(declare-fun tp!1409703 () Bool)

(declare-fun tp!1409701 () Bool)

(declare-fun b!5031832 () Bool)

(declare-fun e!3143389 () Bool)

(assert (=> b!5031832 (= e!3143389 (and (inv!76886 (left!42617 (c!861502 input!5499))) tp!1409701 (inv!76886 (right!42947 (c!861502 input!5499))) tp!1409703))))

(declare-fun b!5031834 () Bool)

(declare-fun e!3143390 () Bool)

(declare-fun tp!1409702 () Bool)

(assert (=> b!5031834 (= e!3143390 tp!1409702)))

(declare-fun b!5031833 () Bool)

(declare-fun inv!76894 (IArray!30983) Bool)

(assert (=> b!5031833 (= e!3143389 (and (inv!76894 (xs!18787 (c!861502 input!5499))) e!3143390))))

(assert (=> b!5031698 (= tp!1409679 (and (inv!76886 (c!861502 input!5499)) e!3143389))))

(assert (= (and b!5031698 (is-Node!15461 (c!861502 input!5499))) b!5031832))

(assert (= b!5031833 b!5031834))

(assert (= (and b!5031698 (is-Leaf!25656 (c!861502 input!5499))) b!5031833))

(declare-fun m!6066926 () Bool)

(assert (=> b!5031832 m!6066926))

(declare-fun m!6066928 () Bool)

(assert (=> b!5031832 m!6066928))

(declare-fun m!6066930 () Bool)

(assert (=> b!5031833 m!6066930))

(assert (=> b!5031698 m!6066746))

(declare-fun b!5031839 () Bool)

(declare-fun e!3143393 () Bool)

(declare-fun tp!1409708 () Bool)

(declare-fun tp!1409709 () Bool)

(assert (=> b!5031839 (= e!3143393 (and tp!1409708 tp!1409709))))

(assert (=> b!5031700 (= tp!1409681 e!3143393)))

(assert (= (and b!5031700 (is-Cons!58247 (exprs!3867 setElem!29033))) b!5031839))

(declare-fun condSetEmpty!29039 () Bool)

(assert (=> setNonEmpty!29033 (= condSetEmpty!29039 (= setRest!29033 (as set.empty (Set Context!6734))))))

(declare-fun setRes!29039 () Bool)

(assert (=> setNonEmpty!29033 (= tp!1409682 setRes!29039)))

(declare-fun setIsEmpty!29039 () Bool)

(assert (=> setIsEmpty!29039 setRes!29039))

(declare-fun e!3143396 () Bool)

(declare-fun setElem!29039 () Context!6734)

(declare-fun setNonEmpty!29039 () Bool)

(declare-fun tp!1409715 () Bool)

(assert (=> setNonEmpty!29039 (= setRes!29039 (and tp!1409715 (inv!76887 setElem!29039) e!3143396))))

(declare-fun setRest!29039 () (Set Context!6734))

(assert (=> setNonEmpty!29039 (= setRest!29033 (set.union (set.insert setElem!29039 (as set.empty (Set Context!6734))) setRest!29039))))

(declare-fun b!5031844 () Bool)

(declare-fun tp!1409714 () Bool)

(assert (=> b!5031844 (= e!3143396 tp!1409714)))

(assert (= (and setNonEmpty!29033 condSetEmpty!29039) setIsEmpty!29039))

(assert (= (and setNonEmpty!29033 (not condSetEmpty!29039)) setNonEmpty!29039))

(assert (= setNonEmpty!29039 b!5031844))

(declare-fun m!6066932 () Bool)

(assert (=> setNonEmpty!29039 m!6066932))

(declare-fun tp!1409718 () Bool)

(declare-fun e!3143397 () Bool)

(declare-fun b!5031845 () Bool)

(declare-fun tp!1409716 () Bool)

(assert (=> b!5031845 (= e!3143397 (and (inv!76886 (left!42617 (c!861502 totalInput!786))) tp!1409716 (inv!76886 (right!42947 (c!861502 totalInput!786))) tp!1409718))))

(declare-fun b!5031847 () Bool)

(declare-fun e!3143398 () Bool)

(declare-fun tp!1409717 () Bool)

(assert (=> b!5031847 (= e!3143398 tp!1409717)))

(declare-fun b!5031846 () Bool)

(assert (=> b!5031846 (= e!3143397 (and (inv!76894 (xs!18787 (c!861502 totalInput!786))) e!3143398))))

(assert (=> b!5031697 (= tp!1409680 (and (inv!76886 (c!861502 totalInput!786)) e!3143397))))

(assert (= (and b!5031697 (is-Node!15461 (c!861502 totalInput!786))) b!5031845))

(assert (= b!5031846 b!5031847))

(assert (= (and b!5031697 (is-Leaf!25656 (c!861502 totalInput!786))) b!5031846))

(declare-fun m!6066934 () Bool)

(assert (=> b!5031845 m!6066934))

(declare-fun m!6066936 () Bool)

(assert (=> b!5031845 m!6066936))

(declare-fun m!6066938 () Bool)

(assert (=> b!5031846 m!6066938))

(assert (=> b!5031697 m!6066732))

(push 1)

(assert (not d!1619231))

(assert (not b!5031761))

(assert (not d!1619241))

(assert (not b!5031698))

(assert (not d!1619247))

(assert (not b!5031760))

(assert (not setNonEmpty!29039))

(assert (not d!1619243))

(assert (not d!1619239))

(assert (not b!5031731))

(assert (not b!5031770))

(assert (not b!5031721))

(assert (not b!5031697))

(assert (not b!5031846))

(assert (not b!5031732))

(assert (not b!5031757))

(assert (not b!5031739))

(assert (not b!5031832))

(assert (not d!1619227))

(assert (not b!5031756))

(assert (not d!1619225))

(assert (not b!5031847))

(assert (not b!5031834))

(assert (not b!5031845))

(assert (not b!5031823))

(assert (not d!1619235))

(assert (not d!1619245))

(assert (not b!5031839))

(assert (not b!5031719))

(assert (not d!1619219))

(assert (not b!5031833))

(assert (not d!1619237))

(assert (not b!5031738))

(assert (not b!5031844))

(assert (not b!5031821))

(assert (not d!1619233))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5031857 () Bool)

(declare-fun e!3143403 () List!58370)

(declare-fun e!3143404 () List!58370)

(assert (=> b!5031857 (= e!3143403 e!3143404)))

(declare-fun c!861542 () Bool)

(assert (=> b!5031857 (= c!861542 (is-Leaf!25656 (c!861502 input!5499)))))

(declare-fun b!5031858 () Bool)

(declare-fun list!18824 (IArray!30983) List!58370)

(assert (=> b!5031858 (= e!3143404 (list!18824 (xs!18787 (c!861502 input!5499))))))

(declare-fun d!1619275 () Bool)

(declare-fun c!861541 () Bool)

(assert (=> d!1619275 (= c!861541 (is-Empty!15461 (c!861502 input!5499)))))

(assert (=> d!1619275 (= (list!18822 (c!861502 input!5499)) e!3143403)))

(declare-fun b!5031856 () Bool)

(assert (=> b!5031856 (= e!3143403 Nil!58246)))

(declare-fun b!5031859 () Bool)

(assert (=> b!5031859 (= e!3143404 (++!12677 (list!18822 (left!42617 (c!861502 input!5499))) (list!18822 (right!42947 (c!861502 input!5499)))))))

(assert (= (and d!1619275 c!861541) b!5031856))

(assert (= (and d!1619275 (not c!861541)) b!5031857))

(assert (= (and b!5031857 c!861542) b!5031858))

(assert (= (and b!5031857 (not c!861542)) b!5031859))

(declare-fun m!6066940 () Bool)

(assert (=> b!5031858 m!6066940))

(declare-fun m!6066942 () Bool)

(assert (=> b!5031859 m!6066942))

(declare-fun m!6066944 () Bool)

(assert (=> b!5031859 m!6066944))

(assert (=> b!5031859 m!6066942))

(assert (=> b!5031859 m!6066944))

(declare-fun m!6066946 () Bool)

(assert (=> b!5031859 m!6066946))

(assert (=> d!1619243 d!1619275))

(declare-fun d!1619277 () Bool)

(declare-fun res!2144373 () Bool)

(declare-fun e!3143407 () Bool)

(assert (=> d!1619277 (=> (not res!2144373) (not e!3143407))))

(assert (=> d!1619277 (= res!2144373 (<= (size!38787 (list!18824 (xs!18787 (c!861502 input!5499)))) 512))))

(assert (=> d!1619277 (= (inv!76893 (c!861502 input!5499)) e!3143407)))

(declare-fun b!5031864 () Bool)

(declare-fun res!2144374 () Bool)

(assert (=> b!5031864 (=> (not res!2144374) (not e!3143407))))

(assert (=> b!5031864 (= res!2144374 (= (csize!31153 (c!861502 input!5499)) (size!38787 (list!18824 (xs!18787 (c!861502 input!5499))))))))

(declare-fun b!5031865 () Bool)

(assert (=> b!5031865 (= e!3143407 (and (> (csize!31153 (c!861502 input!5499)) 0) (<= (csize!31153 (c!861502 input!5499)) 512)))))

(assert (= (and d!1619277 res!2144373) b!5031864))

(assert (= (and b!5031864 res!2144374) b!5031865))

(assert (=> d!1619277 m!6066940))

(assert (=> d!1619277 m!6066940))

(declare-fun m!6066948 () Bool)

(assert (=> d!1619277 m!6066948))

(assert (=> b!5031864 m!6066940))

(assert (=> b!5031864 m!6066940))

(assert (=> b!5031864 m!6066948))

(assert (=> b!5031721 d!1619277))

(declare-fun d!1619279 () Bool)

(declare-fun c!861543 () Bool)

(assert (=> d!1619279 (= c!861543 (is-Node!15461 (left!42617 (c!861502 input!5499))))))

(declare-fun e!3143408 () Bool)

(assert (=> d!1619279 (= (inv!76886 (left!42617 (c!861502 input!5499))) e!3143408)))

(declare-fun b!5031866 () Bool)

(assert (=> b!5031866 (= e!3143408 (inv!76892 (left!42617 (c!861502 input!5499))))))

(declare-fun b!5031867 () Bool)

(declare-fun e!3143409 () Bool)

(assert (=> b!5031867 (= e!3143408 e!3143409)))

(declare-fun res!2144375 () Bool)

(assert (=> b!5031867 (= res!2144375 (not (is-Leaf!25656 (left!42617 (c!861502 input!5499)))))))

(assert (=> b!5031867 (=> res!2144375 e!3143409)))

(declare-fun b!5031868 () Bool)

(assert (=> b!5031868 (= e!3143409 (inv!76893 (left!42617 (c!861502 input!5499))))))

(assert (= (and d!1619279 c!861543) b!5031866))

(assert (= (and d!1619279 (not c!861543)) b!5031867))

(assert (= (and b!5031867 (not res!2144375)) b!5031868))

(declare-fun m!6066950 () Bool)

(assert (=> b!5031866 m!6066950))

(declare-fun m!6066952 () Bool)

(assert (=> b!5031868 m!6066952))

(assert (=> b!5031832 d!1619279))

(declare-fun d!1619281 () Bool)

(declare-fun c!861544 () Bool)

(assert (=> d!1619281 (= c!861544 (is-Node!15461 (right!42947 (c!861502 input!5499))))))

(declare-fun e!3143410 () Bool)

(assert (=> d!1619281 (= (inv!76886 (right!42947 (c!861502 input!5499))) e!3143410)))

(declare-fun b!5031869 () Bool)

(assert (=> b!5031869 (= e!3143410 (inv!76892 (right!42947 (c!861502 input!5499))))))

(declare-fun b!5031870 () Bool)

(declare-fun e!3143411 () Bool)

(assert (=> b!5031870 (= e!3143410 e!3143411)))

(declare-fun res!2144376 () Bool)

(assert (=> b!5031870 (= res!2144376 (not (is-Leaf!25656 (right!42947 (c!861502 input!5499)))))))

(assert (=> b!5031870 (=> res!2144376 e!3143411)))

(declare-fun b!5031871 () Bool)

(assert (=> b!5031871 (= e!3143411 (inv!76893 (right!42947 (c!861502 input!5499))))))

(assert (= (and d!1619281 c!861544) b!5031869))

(assert (= (and d!1619281 (not c!861544)) b!5031870))

(assert (= (and b!5031870 (not res!2144376)) b!5031871))

(declare-fun m!6066954 () Bool)

(assert (=> b!5031869 m!6066954))

(declare-fun m!6066956 () Bool)

(assert (=> b!5031871 m!6066956))

(assert (=> b!5031832 d!1619281))

(declare-fun d!1619283 () Bool)

(declare-fun lt!2082279 () Int)

(assert (=> d!1619283 (>= lt!2082279 0)))

(declare-fun e!3143414 () Int)

(assert (=> d!1619283 (= lt!2082279 e!3143414)))

(declare-fun c!861547 () Bool)

(assert (=> d!1619283 (= c!861547 (is-Nil!58246 (list!18820 totalInput!786)))))

(assert (=> d!1619283 (= (size!38787 (list!18820 totalInput!786)) lt!2082279)))

(declare-fun b!5031876 () Bool)

(assert (=> b!5031876 (= e!3143414 0)))

(declare-fun b!5031877 () Bool)

(assert (=> b!5031877 (= e!3143414 (+ 1 (size!38787 (t!370789 (list!18820 totalInput!786)))))))

(assert (= (and d!1619283 c!861547) b!5031876))

(assert (= (and d!1619283 (not c!861547)) b!5031877))

(declare-fun m!6066958 () Bool)

(assert (=> b!5031877 m!6066958))

(assert (=> b!5031770 d!1619283))

(declare-fun d!1619285 () Bool)

(declare-fun lt!2082280 () Int)

(assert (=> d!1619285 (>= lt!2082280 0)))

(declare-fun e!3143415 () Int)

(assert (=> d!1619285 (= lt!2082280 e!3143415)))

(declare-fun c!861548 () Bool)

(assert (=> d!1619285 (= c!861548 (is-Nil!58246 lt!2082216))))

(assert (=> d!1619285 (= (size!38787 lt!2082216) lt!2082280)))

(declare-fun b!5031878 () Bool)

(assert (=> b!5031878 (= e!3143415 0)))

(declare-fun b!5031879 () Bool)

(assert (=> b!5031879 (= e!3143415 (+ 1 (size!38787 (t!370789 lt!2082216))))))

(assert (= (and d!1619285 c!861548) b!5031878))

(assert (= (and d!1619285 (not c!861548)) b!5031879))

(declare-fun m!6066960 () Bool)

(assert (=> b!5031879 m!6066960))

(assert (=> b!5031770 d!1619285))

(declare-fun d!1619287 () Bool)

(declare-fun lt!2082281 () Int)

(assert (=> d!1619287 (>= lt!2082281 0)))

(declare-fun e!3143416 () Int)

(assert (=> d!1619287 (= lt!2082281 e!3143416)))

(declare-fun c!861549 () Bool)

(assert (=> d!1619287 (= c!861549 (is-Nil!58246 (list!18820 input!5499)))))

(assert (=> d!1619287 (= (size!38787 (list!18820 input!5499)) lt!2082281)))

(declare-fun b!5031880 () Bool)

(assert (=> b!5031880 (= e!3143416 0)))

(declare-fun b!5031881 () Bool)

(assert (=> b!5031881 (= e!3143416 (+ 1 (size!38787 (t!370789 (list!18820 input!5499)))))))

(assert (= (and d!1619287 c!861549) b!5031880))

(assert (= (and d!1619287 (not c!861549)) b!5031881))

(declare-fun m!6066962 () Bool)

(assert (=> b!5031881 m!6066962))

(assert (=> d!1619227 d!1619287))

(assert (=> d!1619227 d!1619243))

(declare-fun d!1619289 () Bool)

(declare-fun lt!2082284 () Int)

(assert (=> d!1619289 (= lt!2082284 (size!38787 (list!18822 (c!861502 input!5499))))))

(assert (=> d!1619289 (= lt!2082284 (ite (is-Empty!15461 (c!861502 input!5499)) 0 (ite (is-Leaf!25656 (c!861502 input!5499)) (csize!31153 (c!861502 input!5499)) (csize!31152 (c!861502 input!5499)))))))

(assert (=> d!1619289 (= (size!38788 (c!861502 input!5499)) lt!2082284)))

(declare-fun bs!1188612 () Bool)

(assert (= bs!1188612 d!1619289))

(assert (=> bs!1188612 m!6066852))

(assert (=> bs!1188612 m!6066852))

(declare-fun m!6066964 () Bool)

(assert (=> bs!1188612 m!6066964))

(assert (=> d!1619227 d!1619289))

(declare-fun d!1619291 () Bool)

(assert (=> d!1619291 (= (inv!76894 (xs!18787 (c!861502 input!5499))) (<= (size!38787 (innerList!15549 (xs!18787 (c!861502 input!5499)))) 2147483647))))

(declare-fun bs!1188613 () Bool)

(assert (= bs!1188613 d!1619291))

(declare-fun m!6066966 () Bool)

(assert (=> bs!1188613 m!6066966))

(assert (=> b!5031833 d!1619291))

(declare-fun bs!1188614 () Bool)

(declare-fun d!1619293 () Bool)

(assert (= bs!1188614 (and d!1619293 d!1619247)))

(declare-fun lambda!249710 () Int)

(assert (=> bs!1188614 (= lambda!249710 lambda!249709)))

(assert (=> d!1619293 (= (inv!76887 setElem!29039) (forall!13462 (exprs!3867 setElem!29039) lambda!249710))))

(declare-fun bs!1188615 () Bool)

(assert (= bs!1188615 d!1619293))

(declare-fun m!6066968 () Bool)

(assert (=> bs!1188615 m!6066968))

(assert (=> setNonEmpty!29039 d!1619293))

(declare-fun d!1619295 () Bool)

(declare-fun res!2144383 () Bool)

(declare-fun e!3143419 () Bool)

(assert (=> d!1619295 (=> (not res!2144383) (not e!3143419))))

(assert (=> d!1619295 (= res!2144383 (= (csize!31152 (c!861502 input!5499)) (+ (size!38788 (left!42617 (c!861502 input!5499))) (size!38788 (right!42947 (c!861502 input!5499))))))))

(assert (=> d!1619295 (= (inv!76892 (c!861502 input!5499)) e!3143419)))

(declare-fun b!5031888 () Bool)

(declare-fun res!2144384 () Bool)

(assert (=> b!5031888 (=> (not res!2144384) (not e!3143419))))

(assert (=> b!5031888 (= res!2144384 (and (not (= (left!42617 (c!861502 input!5499)) Empty!15461)) (not (= (right!42947 (c!861502 input!5499)) Empty!15461))))))

(declare-fun b!5031889 () Bool)

(declare-fun res!2144385 () Bool)

(assert (=> b!5031889 (=> (not res!2144385) (not e!3143419))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2051 (Conc!15461) Int)

(assert (=> b!5031889 (= res!2144385 (= (cheight!15672 (c!861502 input!5499)) (+ (max!0 (height!2051 (left!42617 (c!861502 input!5499))) (height!2051 (right!42947 (c!861502 input!5499)))) 1)))))

(declare-fun b!5031890 () Bool)

(assert (=> b!5031890 (= e!3143419 (<= 0 (cheight!15672 (c!861502 input!5499))))))

(assert (= (and d!1619295 res!2144383) b!5031888))

(assert (= (and b!5031888 res!2144384) b!5031889))

(assert (= (and b!5031889 res!2144385) b!5031890))

(declare-fun m!6066970 () Bool)

(assert (=> d!1619295 m!6066970))

(declare-fun m!6066972 () Bool)

(assert (=> d!1619295 m!6066972))

(declare-fun m!6066974 () Bool)

(assert (=> b!5031889 m!6066974))

(declare-fun m!6066976 () Bool)

(assert (=> b!5031889 m!6066976))

(assert (=> b!5031889 m!6066974))

(assert (=> b!5031889 m!6066976))

(declare-fun m!6066978 () Bool)

(assert (=> b!5031889 m!6066978))

(assert (=> b!5031719 d!1619295))

(assert (=> d!1619235 d!1619283))

(assert (=> d!1619235 d!1619237))

(declare-fun d!1619297 () Bool)

(declare-fun lt!2082285 () Int)

(assert (=> d!1619297 (= lt!2082285 (size!38787 (list!18822 (c!861502 totalInput!786))))))

(assert (=> d!1619297 (= lt!2082285 (ite (is-Empty!15461 (c!861502 totalInput!786)) 0 (ite (is-Leaf!25656 (c!861502 totalInput!786)) (csize!31153 (c!861502 totalInput!786)) (csize!31152 (c!861502 totalInput!786)))))))

(assert (=> d!1619297 (= (size!38788 (c!861502 totalInput!786)) lt!2082285)))

(declare-fun bs!1188616 () Bool)

(assert (= bs!1188616 d!1619297))

(assert (=> bs!1188616 m!6066848))

(assert (=> bs!1188616 m!6066848))

(declare-fun m!6066980 () Bool)

(assert (=> bs!1188616 m!6066980))

(assert (=> d!1619235 d!1619297))

(declare-fun bs!1188617 () Bool)

(declare-fun b!5031895 () Bool)

(declare-fun d!1619299 () Bool)

(assert (= bs!1188617 (and b!5031895 d!1619299)))

(declare-fun lambda!249724 () Int)

(declare-fun lambda!249723 () Int)

(assert (=> bs!1188617 (not (= lambda!249724 lambda!249723))))

(declare-fun bs!1188618 () Bool)

(declare-fun b!5031896 () Bool)

(assert (= bs!1188618 (and b!5031896 d!1619299)))

(declare-fun lambda!249725 () Int)

(assert (=> bs!1188618 (not (= lambda!249725 lambda!249723))))

(declare-fun bs!1188619 () Bool)

(assert (= bs!1188619 (and b!5031896 b!5031895)))

(assert (=> bs!1188619 (= lambda!249725 lambda!249724)))

(declare-fun bm!350980 () Bool)

(declare-datatypes ((List!58374 0))(
  ( (Nil!58250) (Cons!58250 (h!64698 Context!6734) (t!370798 List!58374)) )
))
(declare-fun call!350986 () List!58374)

(declare-fun toList!8137 ((Set Context!6734)) List!58374)

(assert (=> bm!350980 (= call!350986 (toList!8137 z!3733))))

(declare-fun lt!2082304 () Bool)

(declare-datatypes ((Option!14616 0))(
  ( (None!14615) (Some!14615 (v!50628 List!58370)) )
))
(declare-fun isEmpty!31486 (Option!14616) Bool)

(declare-fun getLanguageWitness!759 ((Set Context!6734)) Option!14616)

(assert (=> d!1619299 (= lt!2082304 (isEmpty!31486 (getLanguageWitness!759 z!3733)))))

(declare-fun forall!13464 ((Set Context!6734) Int) Bool)

(assert (=> d!1619299 (= lt!2082304 (forall!13464 z!3733 lambda!249723))))

(declare-datatypes ((Unit!149431 0))(
  ( (Unit!149432) )
))
(declare-fun lt!2082309 () Unit!149431)

(declare-fun e!3143426 () Unit!149431)

(assert (=> d!1619299 (= lt!2082309 e!3143426)))

(declare-fun c!861560 () Bool)

(assert (=> d!1619299 (= c!861560 (not (forall!13464 z!3733 lambda!249723)))))

(assert (=> d!1619299 (= (lostCauseZipper!954 z!3733) lt!2082304)))

(declare-fun call!350985 () Bool)

(declare-fun bm!350981 () Bool)

(declare-fun lt!2082303 () List!58374)

(declare-fun lt!2082308 () List!58374)

(declare-fun exists!1418 (List!58374 Int) Bool)

(assert (=> bm!350981 (= call!350985 (exists!1418 (ite c!861560 lt!2082303 lt!2082308) (ite c!861560 lambda!249724 lambda!249725)))))

(declare-fun Unit!149433 () Unit!149431)

(assert (=> b!5031895 (= e!3143426 Unit!149433)))

(assert (=> b!5031895 (= lt!2082303 call!350986)))

(declare-fun lt!2082302 () Unit!149431)

(declare-fun lemmaNotForallThenExists!286 (List!58374 Int) Unit!149431)

(assert (=> b!5031895 (= lt!2082302 (lemmaNotForallThenExists!286 lt!2082303 lambda!249723))))

(assert (=> b!5031895 call!350985))

(declare-fun lt!2082305 () Unit!149431)

(assert (=> b!5031895 (= lt!2082305 lt!2082302)))

(declare-fun Unit!149434 () Unit!149431)

(assert (=> b!5031896 (= e!3143426 Unit!149434)))

(assert (=> b!5031896 (= lt!2082308 call!350986)))

(declare-fun lt!2082307 () Unit!149431)

(declare-fun lemmaForallThenNotExists!269 (List!58374 Int) Unit!149431)

(assert (=> b!5031896 (= lt!2082307 (lemmaForallThenNotExists!269 lt!2082308 lambda!249723))))

(assert (=> b!5031896 (not call!350985)))

(declare-fun lt!2082306 () Unit!149431)

(assert (=> b!5031896 (= lt!2082306 lt!2082307)))

(assert (= (and d!1619299 c!861560) b!5031895))

(assert (= (and d!1619299 (not c!861560)) b!5031896))

(assert (= (or b!5031895 b!5031896) bm!350980))

(assert (= (or b!5031895 b!5031896) bm!350981))

(declare-fun m!6066982 () Bool)

(assert (=> d!1619299 m!6066982))

(assert (=> d!1619299 m!6066982))

(declare-fun m!6066984 () Bool)

(assert (=> d!1619299 m!6066984))

(declare-fun m!6066986 () Bool)

(assert (=> d!1619299 m!6066986))

(assert (=> d!1619299 m!6066986))

(declare-fun m!6066988 () Bool)

(assert (=> bm!350981 m!6066988))

(declare-fun m!6066990 () Bool)

(assert (=> bm!350980 m!6066990))

(declare-fun m!6066992 () Bool)

(assert (=> b!5031895 m!6066992))

(declare-fun m!6066994 () Bool)

(assert (=> b!5031896 m!6066994))

(assert (=> b!5031760 d!1619299))

(declare-fun b!5031909 () Bool)

(declare-fun e!3143432 () Bool)

(declare-fun isEmpty!31487 (Conc!15461) Bool)

(assert (=> b!5031909 (= e!3143432 (not (isEmpty!31487 (right!42947 (c!861502 totalInput!786)))))))

(declare-fun b!5031911 () Bool)

(declare-fun res!2144399 () Bool)

(assert (=> b!5031911 (=> (not res!2144399) (not e!3143432))))

(assert (=> b!5031911 (= res!2144399 (not (isEmpty!31487 (left!42617 (c!861502 totalInput!786)))))))

(declare-fun b!5031912 () Bool)

(declare-fun res!2144403 () Bool)

(assert (=> b!5031912 (=> (not res!2144403) (not e!3143432))))

(assert (=> b!5031912 (= res!2144403 (<= (- (height!2051 (left!42617 (c!861502 totalInput!786))) (height!2051 (right!42947 (c!861502 totalInput!786)))) 1))))

(declare-fun b!5031913 () Bool)

(declare-fun e!3143431 () Bool)

(assert (=> b!5031913 (= e!3143431 e!3143432)))

(declare-fun res!2144398 () Bool)

(assert (=> b!5031913 (=> (not res!2144398) (not e!3143432))))

(assert (=> b!5031913 (= res!2144398 (<= (- 1) (- (height!2051 (left!42617 (c!861502 totalInput!786))) (height!2051 (right!42947 (c!861502 totalInput!786))))))))

(declare-fun b!5031914 () Bool)

(declare-fun res!2144402 () Bool)

(assert (=> b!5031914 (=> (not res!2144402) (not e!3143432))))

(assert (=> b!5031914 (= res!2144402 (isBalanced!4323 (left!42617 (c!861502 totalInput!786))))))

(declare-fun d!1619301 () Bool)

(declare-fun res!2144400 () Bool)

(assert (=> d!1619301 (=> res!2144400 e!3143431)))

(assert (=> d!1619301 (= res!2144400 (not (is-Node!15461 (c!861502 totalInput!786))))))

(assert (=> d!1619301 (= (isBalanced!4323 (c!861502 totalInput!786)) e!3143431)))

(declare-fun b!5031910 () Bool)

(declare-fun res!2144401 () Bool)

(assert (=> b!5031910 (=> (not res!2144401) (not e!3143432))))

(assert (=> b!5031910 (= res!2144401 (isBalanced!4323 (right!42947 (c!861502 totalInput!786))))))

(assert (= (and d!1619301 (not res!2144400)) b!5031913))

(assert (= (and b!5031913 res!2144398) b!5031912))

(assert (= (and b!5031912 res!2144403) b!5031914))

(assert (= (and b!5031914 res!2144402) b!5031910))

(assert (= (and b!5031910 res!2144401) b!5031911))

(assert (= (and b!5031911 res!2144399) b!5031909))

(declare-fun m!6066996 () Bool)

(assert (=> b!5031911 m!6066996))

(declare-fun m!6066998 () Bool)

(assert (=> b!5031909 m!6066998))

(declare-fun m!6067000 () Bool)

(assert (=> b!5031912 m!6067000))

(declare-fun m!6067002 () Bool)

(assert (=> b!5031912 m!6067002))

(assert (=> b!5031913 m!6067000))

(assert (=> b!5031913 m!6067002))

(declare-fun m!6067004 () Bool)

(assert (=> b!5031914 m!6067004))

(declare-fun m!6067006 () Bool)

(assert (=> b!5031910 m!6067006))

(assert (=> d!1619241 d!1619301))

(assert (=> b!5031761 d!1619235))

(declare-fun d!1619303 () Bool)

(assert (=> d!1619303 true))

(declare-fun lambda!249728 () Int)

(declare-fun flatMap!317 ((Set Context!6734) Int) (Set Context!6734))

(assert (=> d!1619303 (= (derivationStepZipper!735 z!3733 (apply!14217 totalInput!786 (- lt!2082217 (size!38785 input!5499)))) (flatMap!317 z!3733 lambda!249728))))

(declare-fun bs!1188620 () Bool)

(assert (= bs!1188620 d!1619303))

(declare-fun m!6067008 () Bool)

(assert (=> bs!1188620 m!6067008))

(assert (=> b!5031757 d!1619303))

(declare-fun lt!2082312 () C!28134)

(declare-fun d!1619305 () Bool)

(declare-fun apply!14219 (List!58370 Int) C!28134)

(assert (=> d!1619305 (= lt!2082312 (apply!14219 (list!18820 totalInput!786) (- lt!2082217 (size!38785 input!5499))))))

(declare-fun apply!14220 (Conc!15461 Int) C!28134)

(assert (=> d!1619305 (= lt!2082312 (apply!14220 (c!861502 totalInput!786) (- lt!2082217 (size!38785 input!5499))))))

(declare-fun e!3143435 () Bool)

(assert (=> d!1619305 e!3143435))

(declare-fun res!2144406 () Bool)

(assert (=> d!1619305 (=> (not res!2144406) (not e!3143435))))

(assert (=> d!1619305 (= res!2144406 (<= 0 (- lt!2082217 (size!38785 input!5499))))))

(assert (=> d!1619305 (= (apply!14217 totalInput!786 (- lt!2082217 (size!38785 input!5499))) lt!2082312)))

(declare-fun b!5031919 () Bool)

(assert (=> b!5031919 (= e!3143435 (< (- lt!2082217 (size!38785 input!5499)) (size!38785 totalInput!786)))))

(assert (= (and d!1619305 res!2144406) b!5031919))

(assert (=> d!1619305 m!6066738))

(assert (=> d!1619305 m!6066738))

(declare-fun m!6067010 () Bool)

(assert (=> d!1619305 m!6067010))

(declare-fun m!6067012 () Bool)

(assert (=> d!1619305 m!6067012))

(assert (=> b!5031919 m!6066748))

(assert (=> b!5031757 d!1619305))

(declare-fun b!5031920 () Bool)

(declare-fun c!861564 () Bool)

(declare-fun lt!2082313 () (Set Context!6734))

(assert (=> b!5031920 (= c!861564 (nullableZipper!948 lt!2082313))))

(declare-fun e!3143437 () Int)

(declare-fun e!3143436 () Int)

(assert (=> b!5031920 (= e!3143437 e!3143436)))

(declare-fun b!5031922 () Bool)

(declare-fun e!3143439 () Int)

(assert (=> b!5031922 (= e!3143439 0)))

(declare-fun b!5031923 () Bool)

(assert (=> b!5031923 (= e!3143436 1)))

(declare-fun b!5031924 () Bool)

(declare-fun e!3143440 () Bool)

(assert (=> b!5031924 (= e!3143440 (lostCauseZipper!954 lt!2082245))))

(declare-fun b!5031925 () Bool)

(declare-fun e!3143438 () Bool)

(assert (=> b!5031925 (= e!3143438 (<= (+ (- lt!2082217 (size!38785 input!5499)) 1) (size!38785 totalInput!786)))))

(declare-fun b!5031926 () Bool)

(assert (=> b!5031926 (= e!3143436 0)))

(declare-fun b!5031927 () Bool)

(declare-fun lt!2082314 () Int)

(assert (=> b!5031927 (= e!3143437 (+ 1 lt!2082314))))

(declare-fun b!5031921 () Bool)

(assert (=> b!5031921 (= e!3143439 e!3143437)))

(assert (=> b!5031921 (= lt!2082313 (derivationStepZipper!735 lt!2082245 (apply!14217 totalInput!786 (+ (- lt!2082217 (size!38785 input!5499)) 1))))))

(assert (=> b!5031921 (= lt!2082314 (findLongestMatchInnerZipperFastV2!256 lt!2082313 (+ (- lt!2082217 (size!38785 input!5499)) 1 1) totalInput!786 lt!2082217))))

(declare-fun c!861563 () Bool)

(assert (=> b!5031921 (= c!861563 (> lt!2082314 0))))

(declare-fun d!1619307 () Bool)

(declare-fun lt!2082315 () Int)

(assert (=> d!1619307 (and (>= lt!2082315 0) (<= lt!2082315 (- lt!2082217 (+ (- lt!2082217 (size!38785 input!5499)) 1))))))

(assert (=> d!1619307 (= lt!2082315 e!3143439)))

(declare-fun c!861565 () Bool)

(assert (=> d!1619307 (= c!861565 e!3143440)))

(declare-fun res!2144407 () Bool)

(assert (=> d!1619307 (=> res!2144407 e!3143440)))

(assert (=> d!1619307 (= res!2144407 (= (+ (- lt!2082217 (size!38785 input!5499)) 1) lt!2082217))))

(assert (=> d!1619307 e!3143438))

(declare-fun res!2144408 () Bool)

(assert (=> d!1619307 (=> (not res!2144408) (not e!3143438))))

(assert (=> d!1619307 (= res!2144408 (>= (+ (- lt!2082217 (size!38785 input!5499)) 1) 0))))

(assert (=> d!1619307 (= (findLongestMatchInnerZipperFastV2!256 lt!2082245 (+ (- lt!2082217 (size!38785 input!5499)) 1) totalInput!786 lt!2082217) lt!2082315)))

(assert (= (and d!1619307 res!2144408) b!5031925))

(assert (= (and d!1619307 (not res!2144407)) b!5031924))

(assert (= (and d!1619307 c!861565) b!5031922))

(assert (= (and d!1619307 (not c!861565)) b!5031921))

(assert (= (and b!5031921 c!861563) b!5031927))

(assert (= (and b!5031921 (not c!861563)) b!5031920))

(assert (= (and b!5031920 c!861564) b!5031923))

(assert (= (and b!5031920 (not c!861564)) b!5031926))

(declare-fun m!6067014 () Bool)

(assert (=> b!5031920 m!6067014))

(declare-fun m!6067016 () Bool)

(assert (=> b!5031924 m!6067016))

(assert (=> b!5031925 m!6066748))

(declare-fun m!6067018 () Bool)

(assert (=> b!5031921 m!6067018))

(assert (=> b!5031921 m!6067018))

(declare-fun m!6067020 () Bool)

(assert (=> b!5031921 m!6067020))

(declare-fun m!6067022 () Bool)

(assert (=> b!5031921 m!6067022))

(assert (=> b!5031757 d!1619307))

(declare-fun b!5031929 () Bool)

(declare-fun e!3143441 () List!58370)

(declare-fun e!3143442 () List!58370)

(assert (=> b!5031929 (= e!3143441 e!3143442)))

(declare-fun c!861567 () Bool)

(assert (=> b!5031929 (= c!861567 (is-Leaf!25656 (c!861502 (_2!34867 lt!2082215))))))

(declare-fun b!5031930 () Bool)

(assert (=> b!5031930 (= e!3143442 (list!18824 (xs!18787 (c!861502 (_2!34867 lt!2082215)))))))

(declare-fun d!1619309 () Bool)

(declare-fun c!861566 () Bool)

(assert (=> d!1619309 (= c!861566 (is-Empty!15461 (c!861502 (_2!34867 lt!2082215))))))

(assert (=> d!1619309 (= (list!18822 (c!861502 (_2!34867 lt!2082215))) e!3143441)))

(declare-fun b!5031928 () Bool)

(assert (=> b!5031928 (= e!3143441 Nil!58246)))

(declare-fun b!5031931 () Bool)

(assert (=> b!5031931 (= e!3143442 (++!12677 (list!18822 (left!42617 (c!861502 (_2!34867 lt!2082215)))) (list!18822 (right!42947 (c!861502 (_2!34867 lt!2082215))))))))

(assert (= (and d!1619309 c!861566) b!5031928))

(assert (= (and d!1619309 (not c!861566)) b!5031929))

(assert (= (and b!5031929 c!861567) b!5031930))

(assert (= (and b!5031929 (not c!861567)) b!5031931))

(declare-fun m!6067024 () Bool)

(assert (=> b!5031930 m!6067024))

(declare-fun m!6067026 () Bool)

(assert (=> b!5031931 m!6067026))

(declare-fun m!6067028 () Bool)

(assert (=> b!5031931 m!6067028))

(assert (=> b!5031931 m!6067026))

(assert (=> b!5031931 m!6067028))

(declare-fun m!6067030 () Bool)

(assert (=> b!5031931 m!6067030))

(assert (=> d!1619231 d!1619309))

(declare-fun d!1619311 () Bool)

(declare-fun res!2144409 () Bool)

(declare-fun e!3143443 () Bool)

(assert (=> d!1619311 (=> (not res!2144409) (not e!3143443))))

(assert (=> d!1619311 (= res!2144409 (<= (size!38787 (list!18824 (xs!18787 (c!861502 totalInput!786)))) 512))))

(assert (=> d!1619311 (= (inv!76893 (c!861502 totalInput!786)) e!3143443)))

(declare-fun b!5031932 () Bool)

(declare-fun res!2144410 () Bool)

(assert (=> b!5031932 (=> (not res!2144410) (not e!3143443))))

(assert (=> b!5031932 (= res!2144410 (= (csize!31153 (c!861502 totalInput!786)) (size!38787 (list!18824 (xs!18787 (c!861502 totalInput!786))))))))

(declare-fun b!5031933 () Bool)

(assert (=> b!5031933 (= e!3143443 (and (> (csize!31153 (c!861502 totalInput!786)) 0) (<= (csize!31153 (c!861502 totalInput!786)) 512)))))

(assert (= (and d!1619311 res!2144409) b!5031932))

(assert (= (and b!5031932 res!2144410) b!5031933))

(declare-fun m!6067032 () Bool)

(assert (=> d!1619311 m!6067032))

(assert (=> d!1619311 m!6067032))

(declare-fun m!6067034 () Bool)

(assert (=> d!1619311 m!6067034))

(assert (=> b!5031932 m!6067032))

(assert (=> b!5031932 m!6067032))

(assert (=> b!5031932 m!6067034))

(assert (=> b!5031823 d!1619311))

(declare-fun b!5031934 () Bool)

(declare-fun e!3143445 () Bool)

(assert (=> b!5031934 (= e!3143445 (not (isEmpty!31487 (right!42947 (c!861502 input!5499)))))))

(declare-fun b!5031936 () Bool)

(declare-fun res!2144412 () Bool)

(assert (=> b!5031936 (=> (not res!2144412) (not e!3143445))))

(assert (=> b!5031936 (= res!2144412 (not (isEmpty!31487 (left!42617 (c!861502 input!5499)))))))

(declare-fun b!5031937 () Bool)

(declare-fun res!2144416 () Bool)

(assert (=> b!5031937 (=> (not res!2144416) (not e!3143445))))

(assert (=> b!5031937 (= res!2144416 (<= (- (height!2051 (left!42617 (c!861502 input!5499))) (height!2051 (right!42947 (c!861502 input!5499)))) 1))))

(declare-fun b!5031938 () Bool)

(declare-fun e!3143444 () Bool)

(assert (=> b!5031938 (= e!3143444 e!3143445)))

(declare-fun res!2144411 () Bool)

(assert (=> b!5031938 (=> (not res!2144411) (not e!3143445))))

(assert (=> b!5031938 (= res!2144411 (<= (- 1) (- (height!2051 (left!42617 (c!861502 input!5499))) (height!2051 (right!42947 (c!861502 input!5499))))))))

(declare-fun b!5031939 () Bool)

(declare-fun res!2144415 () Bool)

(assert (=> b!5031939 (=> (not res!2144415) (not e!3143445))))

(assert (=> b!5031939 (= res!2144415 (isBalanced!4323 (left!42617 (c!861502 input!5499))))))

(declare-fun d!1619313 () Bool)

(declare-fun res!2144413 () Bool)

(assert (=> d!1619313 (=> res!2144413 e!3143444)))

(assert (=> d!1619313 (= res!2144413 (not (is-Node!15461 (c!861502 input!5499))))))

(assert (=> d!1619313 (= (isBalanced!4323 (c!861502 input!5499)) e!3143444)))

(declare-fun b!5031935 () Bool)

(declare-fun res!2144414 () Bool)

(assert (=> b!5031935 (=> (not res!2144414) (not e!3143445))))

(assert (=> b!5031935 (= res!2144414 (isBalanced!4323 (right!42947 (c!861502 input!5499))))))

(assert (= (and d!1619313 (not res!2144413)) b!5031938))

(assert (= (and b!5031938 res!2144411) b!5031937))

(assert (= (and b!5031937 res!2144416) b!5031939))

(assert (= (and b!5031939 res!2144415) b!5031935))

(assert (= (and b!5031935 res!2144414) b!5031936))

(assert (= (and b!5031936 res!2144412) b!5031934))

(declare-fun m!6067036 () Bool)

(assert (=> b!5031936 m!6067036))

(declare-fun m!6067038 () Bool)

(assert (=> b!5031934 m!6067038))

(assert (=> b!5031937 m!6066974))

(assert (=> b!5031937 m!6066976))

(assert (=> b!5031938 m!6066974))

(assert (=> b!5031938 m!6066976))

(declare-fun m!6067040 () Bool)

(assert (=> b!5031939 m!6067040))

(declare-fun m!6067042 () Bool)

(assert (=> b!5031935 m!6067042))

(assert (=> d!1619239 d!1619313))

(declare-fun bs!1188622 () Bool)

(declare-fun d!1619315 () Bool)

(assert (= bs!1188622 (and d!1619315 d!1619299)))

(declare-fun lambda!249734 () Int)

(assert (=> bs!1188622 (not (= lambda!249734 lambda!249723))))

(declare-fun bs!1188623 () Bool)

(assert (= bs!1188623 (and d!1619315 b!5031895)))

(assert (=> bs!1188623 (not (= lambda!249734 lambda!249724))))

(declare-fun bs!1188624 () Bool)

(assert (= bs!1188624 (and d!1619315 b!5031896)))

(assert (=> bs!1188624 (not (= lambda!249734 lambda!249725))))

(declare-fun exists!1419 ((Set Context!6734) Int) Bool)

(assert (=> d!1619315 (= (nullableZipper!948 lt!2082245) (exists!1419 lt!2082245 lambda!249734))))

(declare-fun bs!1188625 () Bool)

(assert (= bs!1188625 d!1619315))

(declare-fun m!6067050 () Bool)

(assert (=> bs!1188625 m!6067050))

(assert (=> b!5031756 d!1619315))

(declare-fun d!1619319 () Bool)

(declare-fun lt!2082316 () Int)

(assert (=> d!1619319 (>= lt!2082316 0)))

(declare-fun e!3143452 () Int)

(assert (=> d!1619319 (= lt!2082316 e!3143452)))

(declare-fun c!861571 () Bool)

(assert (=> d!1619319 (= c!861571 (is-Nil!58246 lt!2082229))))

(assert (=> d!1619319 (= (size!38787 lt!2082229) lt!2082316)))

(declare-fun b!5031951 () Bool)

(assert (=> b!5031951 (= e!3143452 0)))

(declare-fun b!5031952 () Bool)

(assert (=> b!5031952 (= e!3143452 (+ 1 (size!38787 (t!370789 lt!2082229))))))

(assert (= (and d!1619319 c!861571) b!5031951))

(assert (= (and d!1619319 (not c!861571)) b!5031952))

(declare-fun m!6067052 () Bool)

(assert (=> b!5031952 m!6067052))

(assert (=> b!5031732 d!1619319))

(declare-fun d!1619321 () Bool)

(declare-fun lt!2082317 () Int)

(assert (=> d!1619321 (>= lt!2082317 0)))

(declare-fun e!3143453 () Int)

(assert (=> d!1619321 (= lt!2082317 e!3143453)))

(declare-fun c!861572 () Bool)

(assert (=> d!1619321 (= c!861572 (is-Nil!58246 (list!18820 (_1!34867 lt!2082215))))))

(assert (=> d!1619321 (= (size!38787 (list!18820 (_1!34867 lt!2082215))) lt!2082317)))

(declare-fun b!5031953 () Bool)

(assert (=> b!5031953 (= e!3143453 0)))

(declare-fun b!5031954 () Bool)

(assert (=> b!5031954 (= e!3143453 (+ 1 (size!38787 (t!370789 (list!18820 (_1!34867 lt!2082215))))))))

(assert (= (and d!1619321 c!861572) b!5031953))

(assert (= (and d!1619321 (not c!861572)) b!5031954))

(declare-fun m!6067054 () Bool)

(assert (=> b!5031954 m!6067054))

(assert (=> b!5031732 d!1619321))

(declare-fun d!1619323 () Bool)

(declare-fun lt!2082318 () Int)

(assert (=> d!1619323 (>= lt!2082318 0)))

(declare-fun e!3143456 () Int)

(assert (=> d!1619323 (= lt!2082318 e!3143456)))

(declare-fun c!861573 () Bool)

(assert (=> d!1619323 (= c!861573 (is-Nil!58246 (list!18820 (_2!34867 lt!2082215))))))

(assert (=> d!1619323 (= (size!38787 (list!18820 (_2!34867 lt!2082215))) lt!2082318)))

(declare-fun b!5031958 () Bool)

(assert (=> b!5031958 (= e!3143456 0)))

(declare-fun b!5031959 () Bool)

(assert (=> b!5031959 (= e!3143456 (+ 1 (size!38787 (t!370789 (list!18820 (_2!34867 lt!2082215))))))))

(assert (= (and d!1619323 c!861573) b!5031958))

(assert (= (and d!1619323 (not c!861573)) b!5031959))

(declare-fun m!6067058 () Bool)

(assert (=> b!5031959 m!6067058))

(assert (=> b!5031732 d!1619323))

(declare-fun d!1619325 () Bool)

(assert (=> d!1619325 (= (inv!76894 (xs!18787 (c!861502 totalInput!786))) (<= (size!38787 (innerList!15549 (xs!18787 (c!861502 totalInput!786)))) 2147483647))))

(declare-fun bs!1188626 () Bool)

(assert (= bs!1188626 d!1619325))

(declare-fun m!6067064 () Bool)

(assert (=> bs!1188626 m!6067064))

(assert (=> b!5031846 d!1619325))

(declare-fun b!5031963 () Bool)

(declare-fun e!3143457 () List!58370)

(declare-fun e!3143458 () List!58370)

(assert (=> b!5031963 (= e!3143457 e!3143458)))

(declare-fun c!861575 () Bool)

(assert (=> b!5031963 (= c!861575 (is-Leaf!25656 (c!861502 (_1!34867 lt!2082215))))))

(declare-fun b!5031964 () Bool)

(assert (=> b!5031964 (= e!3143458 (list!18824 (xs!18787 (c!861502 (_1!34867 lt!2082215)))))))

(declare-fun d!1619327 () Bool)

(declare-fun c!861574 () Bool)

(assert (=> d!1619327 (= c!861574 (is-Empty!15461 (c!861502 (_1!34867 lt!2082215))))))

(assert (=> d!1619327 (= (list!18822 (c!861502 (_1!34867 lt!2082215))) e!3143457)))

(declare-fun b!5031962 () Bool)

(assert (=> b!5031962 (= e!3143457 Nil!58246)))

(declare-fun b!5031965 () Bool)

(assert (=> b!5031965 (= e!3143458 (++!12677 (list!18822 (left!42617 (c!861502 (_1!34867 lt!2082215)))) (list!18822 (right!42947 (c!861502 (_1!34867 lt!2082215))))))))

(assert (= (and d!1619327 c!861574) b!5031962))

(assert (= (and d!1619327 (not c!861574)) b!5031963))

(assert (= (and b!5031963 c!861575) b!5031964))

(assert (= (and b!5031963 (not c!861575)) b!5031965))

(declare-fun m!6067066 () Bool)

(assert (=> b!5031964 m!6067066))

(declare-fun m!6067068 () Bool)

(assert (=> b!5031965 m!6067068))

(declare-fun m!6067070 () Bool)

(assert (=> b!5031965 m!6067070))

(assert (=> b!5031965 m!6067068))

(assert (=> b!5031965 m!6067070))

(declare-fun m!6067072 () Bool)

(assert (=> b!5031965 m!6067072))

(assert (=> d!1619233 d!1619327))

(declare-fun d!1619329 () Bool)

(declare-fun res!2144418 () Bool)

(declare-fun e!3143461 () Bool)

(assert (=> d!1619329 (=> (not res!2144418) (not e!3143461))))

(assert (=> d!1619329 (= res!2144418 (= (csize!31152 (c!861502 totalInput!786)) (+ (size!38788 (left!42617 (c!861502 totalInput!786))) (size!38788 (right!42947 (c!861502 totalInput!786))))))))

(assert (=> d!1619329 (= (inv!76892 (c!861502 totalInput!786)) e!3143461)))

(declare-fun b!5031968 () Bool)

(declare-fun res!2144419 () Bool)

(assert (=> b!5031968 (=> (not res!2144419) (not e!3143461))))

(assert (=> b!5031968 (= res!2144419 (and (not (= (left!42617 (c!861502 totalInput!786)) Empty!15461)) (not (= (right!42947 (c!861502 totalInput!786)) Empty!15461))))))

(declare-fun b!5031969 () Bool)

(declare-fun res!2144420 () Bool)

(assert (=> b!5031969 (=> (not res!2144420) (not e!3143461))))

(assert (=> b!5031969 (= res!2144420 (= (cheight!15672 (c!861502 totalInput!786)) (+ (max!0 (height!2051 (left!42617 (c!861502 totalInput!786))) (height!2051 (right!42947 (c!861502 totalInput!786)))) 1)))))

(declare-fun b!5031970 () Bool)

(assert (=> b!5031970 (= e!3143461 (<= 0 (cheight!15672 (c!861502 totalInput!786))))))

(assert (= (and d!1619329 res!2144418) b!5031968))

(assert (= (and b!5031968 res!2144419) b!5031969))

(assert (= (and b!5031969 res!2144420) b!5031970))

(declare-fun m!6067074 () Bool)

(assert (=> d!1619329 m!6067074))

(declare-fun m!6067076 () Bool)

(assert (=> d!1619329 m!6067076))

(assert (=> b!5031969 m!6067000))

(assert (=> b!5031969 m!6067002))

(assert (=> b!5031969 m!6067000))

(assert (=> b!5031969 m!6067002))

(declare-fun m!6067078 () Bool)

(assert (=> b!5031969 m!6067078))

(assert (=> b!5031821 d!1619329))

(declare-fun b!5031972 () Bool)

(declare-fun e!3143464 () Bool)

(assert (=> b!5031972 (= e!3143464 (not (isEmpty!31487 (right!42947 (c!861502 (_2!34867 lt!2082235))))))))

(declare-fun b!5031974 () Bool)

(declare-fun res!2144422 () Bool)

(assert (=> b!5031974 (=> (not res!2144422) (not e!3143464))))

(assert (=> b!5031974 (= res!2144422 (not (isEmpty!31487 (left!42617 (c!861502 (_2!34867 lt!2082235))))))))

(declare-fun b!5031975 () Bool)

(declare-fun res!2144426 () Bool)

(assert (=> b!5031975 (=> (not res!2144426) (not e!3143464))))

(assert (=> b!5031975 (= res!2144426 (<= (- (height!2051 (left!42617 (c!861502 (_2!34867 lt!2082235)))) (height!2051 (right!42947 (c!861502 (_2!34867 lt!2082235))))) 1))))

(declare-fun b!5031976 () Bool)

(declare-fun e!3143463 () Bool)

(assert (=> b!5031976 (= e!3143463 e!3143464)))

(declare-fun res!2144421 () Bool)

(assert (=> b!5031976 (=> (not res!2144421) (not e!3143464))))

(assert (=> b!5031976 (= res!2144421 (<= (- 1) (- (height!2051 (left!42617 (c!861502 (_2!34867 lt!2082235)))) (height!2051 (right!42947 (c!861502 (_2!34867 lt!2082235)))))))))

(declare-fun b!5031977 () Bool)

(declare-fun res!2144425 () Bool)

(assert (=> b!5031977 (=> (not res!2144425) (not e!3143464))))

(assert (=> b!5031977 (= res!2144425 (isBalanced!4323 (left!42617 (c!861502 (_2!34867 lt!2082235)))))))

(declare-fun d!1619331 () Bool)

(declare-fun res!2144423 () Bool)

(assert (=> d!1619331 (=> res!2144423 e!3143463)))

(assert (=> d!1619331 (= res!2144423 (not (is-Node!15461 (c!861502 (_2!34867 lt!2082235)))))))

(assert (=> d!1619331 (= (isBalanced!4323 (c!861502 (_2!34867 lt!2082235))) e!3143463)))

(declare-fun b!5031973 () Bool)

(declare-fun res!2144424 () Bool)

(assert (=> b!5031973 (=> (not res!2144424) (not e!3143464))))

(assert (=> b!5031973 (= res!2144424 (isBalanced!4323 (right!42947 (c!861502 (_2!34867 lt!2082235)))))))

(assert (= (and d!1619331 (not res!2144423)) b!5031976))

(assert (= (and b!5031976 res!2144421) b!5031975))

(assert (= (and b!5031975 res!2144426) b!5031977))

(assert (= (and b!5031977 res!2144425) b!5031973))

(assert (= (and b!5031973 res!2144424) b!5031974))

(assert (= (and b!5031974 res!2144422) b!5031972))

(declare-fun m!6067082 () Bool)

(assert (=> b!5031974 m!6067082))

(declare-fun m!6067084 () Bool)

(assert (=> b!5031972 m!6067084))

(declare-fun m!6067086 () Bool)

(assert (=> b!5031975 m!6067086))

(declare-fun m!6067088 () Bool)

(assert (=> b!5031975 m!6067088))

(assert (=> b!5031976 m!6067086))

(assert (=> b!5031976 m!6067088))

(declare-fun m!6067090 () Bool)

(assert (=> b!5031977 m!6067090))

(declare-fun m!6067092 () Bool)

(assert (=> b!5031973 m!6067092))

(assert (=> b!5031738 d!1619331))

(assert (=> b!5031698 d!1619217))

(declare-fun b!5031987 () Bool)

(declare-fun e!3143470 () List!58370)

(declare-fun e!3143471 () List!58370)

(assert (=> b!5031987 (= e!3143470 e!3143471)))

(declare-fun c!861577 () Bool)

(assert (=> b!5031987 (= c!861577 (is-Leaf!25656 (c!861502 totalInput!786)))))

(declare-fun b!5031988 () Bool)

(assert (=> b!5031988 (= e!3143471 (list!18824 (xs!18787 (c!861502 totalInput!786))))))

(declare-fun d!1619333 () Bool)

(declare-fun c!861576 () Bool)

(assert (=> d!1619333 (= c!861576 (is-Empty!15461 (c!861502 totalInput!786)))))

(assert (=> d!1619333 (= (list!18822 (c!861502 totalInput!786)) e!3143470)))

(declare-fun b!5031986 () Bool)

(assert (=> b!5031986 (= e!3143470 Nil!58246)))

(declare-fun b!5031989 () Bool)

(assert (=> b!5031989 (= e!3143471 (++!12677 (list!18822 (left!42617 (c!861502 totalInput!786))) (list!18822 (right!42947 (c!861502 totalInput!786)))))))

(assert (= (and d!1619333 c!861576) b!5031986))

(assert (= (and d!1619333 (not c!861576)) b!5031987))

(assert (= (and b!5031987 c!861577) b!5031988))

(assert (= (and b!5031987 (not c!861577)) b!5031989))

(assert (=> b!5031988 m!6067032))

(declare-fun m!6067094 () Bool)

(assert (=> b!5031989 m!6067094))

(declare-fun m!6067098 () Bool)

(assert (=> b!5031989 m!6067098))

(assert (=> b!5031989 m!6067094))

(assert (=> b!5031989 m!6067098))

(declare-fun m!6067104 () Bool)

(assert (=> b!5031989 m!6067104))

(assert (=> d!1619237 d!1619333))

(declare-fun b!5031993 () Bool)

(declare-fun e!3143472 () Bool)

(declare-fun lt!2082319 () List!58370)

(assert (=> b!5031993 (= e!3143472 (or (not (= (list!18820 (_2!34867 lt!2082215)) Nil!58246)) (= lt!2082319 (t!370789 (list!18820 (_1!34867 lt!2082215))))))))

(declare-fun b!5031992 () Bool)

(declare-fun res!2144427 () Bool)

(assert (=> b!5031992 (=> (not res!2144427) (not e!3143472))))

(assert (=> b!5031992 (= res!2144427 (= (size!38787 lt!2082319) (+ (size!38787 (t!370789 (list!18820 (_1!34867 lt!2082215)))) (size!38787 (list!18820 (_2!34867 lt!2082215))))))))

(declare-fun d!1619335 () Bool)

(assert (=> d!1619335 e!3143472))

(declare-fun res!2144428 () Bool)

(assert (=> d!1619335 (=> (not res!2144428) (not e!3143472))))

(assert (=> d!1619335 (= res!2144428 (= (content!10329 lt!2082319) (set.union (content!10329 (t!370789 (list!18820 (_1!34867 lt!2082215)))) (content!10329 (list!18820 (_2!34867 lt!2082215))))))))

(declare-fun e!3143473 () List!58370)

(assert (=> d!1619335 (= lt!2082319 e!3143473)))

(declare-fun c!861578 () Bool)

(assert (=> d!1619335 (= c!861578 (is-Nil!58246 (t!370789 (list!18820 (_1!34867 lt!2082215)))))))

(assert (=> d!1619335 (= (++!12677 (t!370789 (list!18820 (_1!34867 lt!2082215))) (list!18820 (_2!34867 lt!2082215))) lt!2082319)))

(declare-fun b!5031991 () Bool)

(assert (=> b!5031991 (= e!3143473 (Cons!58246 (h!64694 (t!370789 (list!18820 (_1!34867 lt!2082215)))) (++!12677 (t!370789 (t!370789 (list!18820 (_1!34867 lt!2082215)))) (list!18820 (_2!34867 lt!2082215)))))))

(declare-fun b!5031990 () Bool)

(assert (=> b!5031990 (= e!3143473 (list!18820 (_2!34867 lt!2082215)))))

(assert (= (and d!1619335 c!861578) b!5031990))

(assert (= (and d!1619335 (not c!861578)) b!5031991))

(assert (= (and d!1619335 res!2144428) b!5031992))

(assert (= (and b!5031992 res!2144427) b!5031993))

(declare-fun m!6067106 () Bool)

(assert (=> b!5031992 m!6067106))

(assert (=> b!5031992 m!6067054))

(assert (=> b!5031992 m!6066756))

(assert (=> b!5031992 m!6066802))

(declare-fun m!6067108 () Bool)

(assert (=> d!1619335 m!6067108))

(declare-fun m!6067110 () Bool)

(assert (=> d!1619335 m!6067110))

(assert (=> d!1619335 m!6066756))

(assert (=> d!1619335 m!6066808))

(assert (=> b!5031991 m!6066756))

(declare-fun m!6067112 () Bool)

(assert (=> b!5031991 m!6067112))

(assert (=> b!5031731 d!1619335))

(declare-fun b!5032012 () Bool)

(declare-fun e!3143488 () List!58370)

(assert (=> b!5032012 (= e!3143488 (drop!2593 (t!370789 (list!18820 totalInput!786)) (- (- (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216)) 1)))))

(declare-fun b!5032013 () Bool)

(declare-fun e!3143487 () Int)

(declare-fun call!350989 () Int)

(assert (=> b!5032013 (= e!3143487 call!350989)))

(declare-fun b!5032014 () Bool)

(assert (=> b!5032014 (= e!3143488 (list!18820 totalInput!786))))

(declare-fun b!5032015 () Bool)

(declare-fun e!3143486 () Int)

(assert (=> b!5032015 (= e!3143487 e!3143486)))

(declare-fun c!861590 () Bool)

(assert (=> b!5032015 (= c!861590 (>= (- (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216)) call!350989))))

(declare-fun b!5032016 () Bool)

(declare-fun e!3143484 () List!58370)

(assert (=> b!5032016 (= e!3143484 Nil!58246)))

(declare-fun b!5032017 () Bool)

(declare-fun e!3143485 () Bool)

(declare-fun lt!2082322 () List!58370)

(assert (=> b!5032017 (= e!3143485 (= (size!38787 lt!2082322) e!3143487))))

(declare-fun c!861588 () Bool)

(assert (=> b!5032017 (= c!861588 (<= (- (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216)) 0))))

(declare-fun b!5032018 () Bool)

(assert (=> b!5032018 (= e!3143486 0)))

(declare-fun b!5032020 () Bool)

(assert (=> b!5032020 (= e!3143484 e!3143488)))

(declare-fun c!861589 () Bool)

(assert (=> b!5032020 (= c!861589 (<= (- (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216)) 0))))

(declare-fun bm!350984 () Bool)

(assert (=> bm!350984 (= call!350989 (size!38787 (list!18820 totalInput!786)))))

(declare-fun d!1619337 () Bool)

(assert (=> d!1619337 e!3143485))

(declare-fun res!2144431 () Bool)

(assert (=> d!1619337 (=> (not res!2144431) (not e!3143485))))

(assert (=> d!1619337 (= res!2144431 (set.subset (content!10329 lt!2082322) (content!10329 (list!18820 totalInput!786))))))

(assert (=> d!1619337 (= lt!2082322 e!3143484)))

(declare-fun c!861587 () Bool)

(assert (=> d!1619337 (= c!861587 (is-Nil!58246 (list!18820 totalInput!786)))))

(assert (=> d!1619337 (= (drop!2593 (list!18820 totalInput!786) (- (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216))) lt!2082322)))

(declare-fun b!5032019 () Bool)

(assert (=> b!5032019 (= e!3143486 (- call!350989 (- (size!38787 (list!18820 totalInput!786)) (size!38787 lt!2082216))))))

(assert (= (and d!1619337 c!861587) b!5032016))

(assert (= (and d!1619337 (not c!861587)) b!5032020))

(assert (= (and b!5032020 c!861589) b!5032014))

(assert (= (and b!5032020 (not c!861589)) b!5032012))

(assert (= (and d!1619337 res!2144431) b!5032017))

(assert (= (and b!5032017 c!861588) b!5032013))

(assert (= (and b!5032017 (not c!861588)) b!5032015))

(assert (= (and b!5032015 c!861590) b!5032018))

(assert (= (and b!5032015 (not c!861590)) b!5032019))

(assert (= (or b!5032013 b!5032015 b!5032019) bm!350984))

(declare-fun m!6067114 () Bool)

(assert (=> b!5032012 m!6067114))

(declare-fun m!6067116 () Bool)

(assert (=> b!5032017 m!6067116))

(assert (=> bm!350984 m!6066738))

(assert (=> bm!350984 m!6066844))

(declare-fun m!6067118 () Bool)

(assert (=> d!1619337 m!6067118))

(assert (=> d!1619337 m!6066738))

(declare-fun m!6067120 () Bool)

(assert (=> d!1619337 m!6067120))

(assert (=> d!1619245 d!1619337))

(assert (=> d!1619245 d!1619283))

(assert (=> d!1619245 d!1619285))

(declare-fun d!1619339 () Bool)

(declare-fun c!861593 () Bool)

(assert (=> d!1619339 (= c!861593 (is-Nil!58246 lt!2082229))))

(declare-fun e!3143491 () (Set C!28134))

(assert (=> d!1619339 (= (content!10329 lt!2082229) e!3143491)))

(declare-fun b!5032025 () Bool)

(assert (=> b!5032025 (= e!3143491 (as set.empty (Set C!28134)))))

(declare-fun b!5032026 () Bool)

(assert (=> b!5032026 (= e!3143491 (set.union (set.insert (h!64694 lt!2082229) (as set.empty (Set C!28134))) (content!10329 (t!370789 lt!2082229))))))

(assert (= (and d!1619339 c!861593) b!5032025))

(assert (= (and d!1619339 (not c!861593)) b!5032026))

(declare-fun m!6067122 () Bool)

(assert (=> b!5032026 m!6067122))

(declare-fun m!6067124 () Bool)

(assert (=> b!5032026 m!6067124))

(assert (=> d!1619219 d!1619339))

(declare-fun d!1619341 () Bool)

(declare-fun c!861594 () Bool)

(assert (=> d!1619341 (= c!861594 (is-Nil!58246 (list!18820 (_1!34867 lt!2082215))))))

(declare-fun e!3143492 () (Set C!28134))

(assert (=> d!1619341 (= (content!10329 (list!18820 (_1!34867 lt!2082215))) e!3143492)))

(declare-fun b!5032027 () Bool)

(assert (=> b!5032027 (= e!3143492 (as set.empty (Set C!28134)))))

(declare-fun b!5032028 () Bool)

(assert (=> b!5032028 (= e!3143492 (set.union (set.insert (h!64694 (list!18820 (_1!34867 lt!2082215))) (as set.empty (Set C!28134))) (content!10329 (t!370789 (list!18820 (_1!34867 lt!2082215))))))))

(assert (= (and d!1619341 c!861594) b!5032027))

(assert (= (and d!1619341 (not c!861594)) b!5032028))

(declare-fun m!6067126 () Bool)

(assert (=> b!5032028 m!6067126))

(assert (=> b!5032028 m!6067110))

(assert (=> d!1619219 d!1619341))

(declare-fun d!1619343 () Bool)

(declare-fun c!861595 () Bool)

(assert (=> d!1619343 (= c!861595 (is-Nil!58246 (list!18820 (_2!34867 lt!2082215))))))

(declare-fun e!3143493 () (Set C!28134))

(assert (=> d!1619343 (= (content!10329 (list!18820 (_2!34867 lt!2082215))) e!3143493)))

(declare-fun b!5032029 () Bool)

(assert (=> b!5032029 (= e!3143493 (as set.empty (Set C!28134)))))

(declare-fun b!5032030 () Bool)

(assert (=> b!5032030 (= e!3143493 (set.union (set.insert (h!64694 (list!18820 (_2!34867 lt!2082215))) (as set.empty (Set C!28134))) (content!10329 (t!370789 (list!18820 (_2!34867 lt!2082215))))))))

(assert (= (and d!1619343 c!861595) b!5032029))

(assert (= (and d!1619343 (not c!861595)) b!5032030))

(declare-fun m!6067128 () Bool)

(assert (=> b!5032030 m!6067128))

(declare-fun m!6067130 () Bool)

(assert (=> b!5032030 m!6067130))

(assert (=> d!1619219 d!1619343))

(declare-fun d!1619345 () Bool)

(declare-fun c!861596 () Bool)

(assert (=> d!1619345 (= c!861596 (is-Node!15461 (left!42617 (c!861502 totalInput!786))))))

(declare-fun e!3143494 () Bool)

(assert (=> d!1619345 (= (inv!76886 (left!42617 (c!861502 totalInput!786))) e!3143494)))

(declare-fun b!5032031 () Bool)

(assert (=> b!5032031 (= e!3143494 (inv!76892 (left!42617 (c!861502 totalInput!786))))))

(declare-fun b!5032032 () Bool)

(declare-fun e!3143495 () Bool)

(assert (=> b!5032032 (= e!3143494 e!3143495)))

(declare-fun res!2144432 () Bool)

(assert (=> b!5032032 (= res!2144432 (not (is-Leaf!25656 (left!42617 (c!861502 totalInput!786)))))))

(assert (=> b!5032032 (=> res!2144432 e!3143495)))

(declare-fun b!5032033 () Bool)

(assert (=> b!5032033 (= e!3143495 (inv!76893 (left!42617 (c!861502 totalInput!786))))))

(assert (= (and d!1619345 c!861596) b!5032031))

(assert (= (and d!1619345 (not c!861596)) b!5032032))

(assert (= (and b!5032032 (not res!2144432)) b!5032033))

(declare-fun m!6067132 () Bool)

(assert (=> b!5032031 m!6067132))

(declare-fun m!6067134 () Bool)

(assert (=> b!5032033 m!6067134))

(assert (=> b!5031845 d!1619345))

(declare-fun d!1619347 () Bool)

(declare-fun c!861597 () Bool)

(assert (=> d!1619347 (= c!861597 (is-Node!15461 (right!42947 (c!861502 totalInput!786))))))

(declare-fun e!3143496 () Bool)

(assert (=> d!1619347 (= (inv!76886 (right!42947 (c!861502 totalInput!786))) e!3143496)))

(declare-fun b!5032034 () Bool)

(assert (=> b!5032034 (= e!3143496 (inv!76892 (right!42947 (c!861502 totalInput!786))))))

(declare-fun b!5032035 () Bool)

(declare-fun e!3143497 () Bool)

(assert (=> b!5032035 (= e!3143496 e!3143497)))

(declare-fun res!2144433 () Bool)

(assert (=> b!5032035 (= res!2144433 (not (is-Leaf!25656 (right!42947 (c!861502 totalInput!786)))))))

(assert (=> b!5032035 (=> res!2144433 e!3143497)))

(declare-fun b!5032036 () Bool)

(assert (=> b!5032036 (= e!3143497 (inv!76893 (right!42947 (c!861502 totalInput!786))))))

(assert (= (and d!1619347 c!861597) b!5032034))

(assert (= (and d!1619347 (not c!861597)) b!5032035))

(assert (= (and b!5032035 (not res!2144433)) b!5032036))

(declare-fun m!6067136 () Bool)

(assert (=> b!5032034 m!6067136))

(declare-fun m!6067138 () Bool)

(assert (=> b!5032036 m!6067138))

(assert (=> b!5031845 d!1619347))

(declare-fun d!1619349 () Bool)

(declare-fun res!2144438 () Bool)

(declare-fun e!3143502 () Bool)

(assert (=> d!1619349 (=> res!2144438 e!3143502)))

(assert (=> d!1619349 (= res!2144438 (is-Nil!58247 (exprs!3867 setElem!29033)))))

(assert (=> d!1619349 (= (forall!13462 (exprs!3867 setElem!29033) lambda!249709) e!3143502)))

(declare-fun b!5032041 () Bool)

(declare-fun e!3143503 () Bool)

(assert (=> b!5032041 (= e!3143502 e!3143503)))

(declare-fun res!2144439 () Bool)

(assert (=> b!5032041 (=> (not res!2144439) (not e!3143503))))

(declare-fun dynLambda!23543 (Int Regex!13942) Bool)

(assert (=> b!5032041 (= res!2144439 (dynLambda!23543 lambda!249709 (h!64695 (exprs!3867 setElem!29033))))))

(declare-fun b!5032042 () Bool)

(assert (=> b!5032042 (= e!3143503 (forall!13462 (t!370790 (exprs!3867 setElem!29033)) lambda!249709))))

(assert (= (and d!1619349 (not res!2144438)) b!5032041))

(assert (= (and b!5032041 res!2144439) b!5032042))

(declare-fun b_lambda!198713 () Bool)

(assert (=> (not b_lambda!198713) (not b!5032041)))

(declare-fun m!6067140 () Bool)

(assert (=> b!5032041 m!6067140))

(declare-fun m!6067142 () Bool)

(assert (=> b!5032042 m!6067142))

(assert (=> d!1619247 d!1619349))

(declare-fun d!1619351 () Bool)

(assert (=> d!1619351 (= (list!18820 (_1!34867 lt!2082235)) (list!18822 (c!861502 (_1!34867 lt!2082235))))))

(declare-fun bs!1188627 () Bool)

(assert (= bs!1188627 d!1619351))

(declare-fun m!6067144 () Bool)

(assert (=> bs!1188627 m!6067144))

(assert (=> b!5031739 d!1619351))

(declare-fun d!1619353 () Bool)

(assert (=> d!1619353 (= (list!18820 (_2!34867 lt!2082235)) (list!18822 (c!861502 (_2!34867 lt!2082235))))))

(declare-fun bs!1188628 () Bool)

(assert (= bs!1188628 d!1619353))

(declare-fun m!6067146 () Bool)

(assert (=> bs!1188628 m!6067146))

(assert (=> b!5031739 d!1619353))

(declare-fun b!5032055 () Bool)

(declare-fun e!3143510 () tuple2!63134)

(assert (=> b!5032055 (= e!3143510 (tuple2!63135 Nil!58246 Nil!58246))))

(declare-fun b!5032056 () Bool)

(declare-fun e!3143512 () tuple2!63134)

(assert (=> b!5032056 (= e!3143512 (tuple2!63135 Nil!58246 (list!18820 input!5499)))))

(declare-fun b!5032057 () Bool)

(declare-fun lt!2082327 () tuple2!63134)

(assert (=> b!5032057 (= lt!2082327 (splitAtIndex!168 (t!370789 (list!18820 input!5499)) (- (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) 1)))))

(assert (=> b!5032057 (= e!3143512 (tuple2!63135 (Cons!58246 (h!64694 (list!18820 input!5499)) (_1!34870 lt!2082327)) (_2!34870 lt!2082327)))))

(declare-fun lt!2082328 () tuple2!63134)

(declare-fun b!5032059 () Bool)

(declare-fun e!3143511 () Bool)

(assert (=> b!5032059 (= e!3143511 (= (_2!34870 lt!2082328) (drop!2593 (list!18820 input!5499) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217))))))

(declare-fun b!5032060 () Bool)

(assert (=> b!5032060 (= e!3143510 e!3143512)))

(declare-fun c!861603 () Bool)

(assert (=> b!5032060 (= c!861603 (<= (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) 0))))

(declare-fun d!1619355 () Bool)

(assert (=> d!1619355 e!3143511))

(declare-fun res!2144444 () Bool)

(assert (=> d!1619355 (=> (not res!2144444) (not e!3143511))))

(assert (=> d!1619355 (= res!2144444 (= (++!12677 (_1!34870 lt!2082328) (_2!34870 lt!2082328)) (list!18820 input!5499)))))

(assert (=> d!1619355 (= lt!2082328 e!3143510)))

(declare-fun c!861602 () Bool)

(assert (=> d!1619355 (= c!861602 (is-Nil!58246 (list!18820 input!5499)))))

(assert (=> d!1619355 (= (splitAtIndex!168 (list!18820 input!5499) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)) lt!2082328)))

(declare-fun b!5032058 () Bool)

(declare-fun res!2144445 () Bool)

(assert (=> b!5032058 (=> (not res!2144445) (not e!3143511))))

(declare-fun take!791 (List!58370 Int) List!58370)

(assert (=> b!5032058 (= res!2144445 (= (_1!34870 lt!2082328) (take!791 (list!18820 input!5499) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217))))))

(assert (= (and d!1619355 c!861602) b!5032055))

(assert (= (and d!1619355 (not c!861602)) b!5032060))

(assert (= (and b!5032060 c!861603) b!5032056))

(assert (= (and b!5032060 (not c!861603)) b!5032057))

(assert (= (and d!1619355 res!2144444) b!5032058))

(assert (= (and b!5032058 res!2144445) b!5032059))

(declare-fun m!6067148 () Bool)

(assert (=> b!5032057 m!6067148))

(assert (=> b!5032059 m!6066742))

(assert (=> b!5032059 m!6066750))

(declare-fun m!6067150 () Bool)

(assert (=> b!5032059 m!6067150))

(declare-fun m!6067152 () Bool)

(assert (=> d!1619355 m!6067152))

(assert (=> b!5032058 m!6066742))

(assert (=> b!5032058 m!6066750))

(declare-fun m!6067154 () Bool)

(assert (=> b!5032058 m!6067154))

(assert (=> b!5031739 d!1619355))

(assert (=> b!5031739 d!1619243))

(declare-fun b!5032061 () Bool)

(declare-fun e!3143514 () Bool)

(assert (=> b!5032061 (= e!3143514 (not (isEmpty!31487 (right!42947 (c!861502 (_1!34867 lt!2082235))))))))

(declare-fun b!5032063 () Bool)

(declare-fun res!2144447 () Bool)

(assert (=> b!5032063 (=> (not res!2144447) (not e!3143514))))

(assert (=> b!5032063 (= res!2144447 (not (isEmpty!31487 (left!42617 (c!861502 (_1!34867 lt!2082235))))))))

(declare-fun b!5032064 () Bool)

(declare-fun res!2144451 () Bool)

(assert (=> b!5032064 (=> (not res!2144451) (not e!3143514))))

(assert (=> b!5032064 (= res!2144451 (<= (- (height!2051 (left!42617 (c!861502 (_1!34867 lt!2082235)))) (height!2051 (right!42947 (c!861502 (_1!34867 lt!2082235))))) 1))))

(declare-fun b!5032065 () Bool)

(declare-fun e!3143513 () Bool)

(assert (=> b!5032065 (= e!3143513 e!3143514)))

(declare-fun res!2144446 () Bool)

(assert (=> b!5032065 (=> (not res!2144446) (not e!3143514))))

(assert (=> b!5032065 (= res!2144446 (<= (- 1) (- (height!2051 (left!42617 (c!861502 (_1!34867 lt!2082235)))) (height!2051 (right!42947 (c!861502 (_1!34867 lt!2082235)))))))))

(declare-fun b!5032066 () Bool)

(declare-fun res!2144450 () Bool)

(assert (=> b!5032066 (=> (not res!2144450) (not e!3143514))))

(assert (=> b!5032066 (= res!2144450 (isBalanced!4323 (left!42617 (c!861502 (_1!34867 lt!2082235)))))))

(declare-fun d!1619357 () Bool)

(declare-fun res!2144448 () Bool)

(assert (=> d!1619357 (=> res!2144448 e!3143513)))

(assert (=> d!1619357 (= res!2144448 (not (is-Node!15461 (c!861502 (_1!34867 lt!2082235)))))))

(assert (=> d!1619357 (= (isBalanced!4323 (c!861502 (_1!34867 lt!2082235))) e!3143513)))

(declare-fun b!5032062 () Bool)

(declare-fun res!2144449 () Bool)

(assert (=> b!5032062 (=> (not res!2144449) (not e!3143514))))

(assert (=> b!5032062 (= res!2144449 (isBalanced!4323 (right!42947 (c!861502 (_1!34867 lt!2082235)))))))

(assert (= (and d!1619357 (not res!2144448)) b!5032065))

(assert (= (and b!5032065 res!2144446) b!5032064))

(assert (= (and b!5032064 res!2144451) b!5032066))

(assert (= (and b!5032066 res!2144450) b!5032062))

(assert (= (and b!5032062 res!2144449) b!5032063))

(assert (= (and b!5032063 res!2144447) b!5032061))

(declare-fun m!6067156 () Bool)

(assert (=> b!5032063 m!6067156))

(declare-fun m!6067158 () Bool)

(assert (=> b!5032061 m!6067158))

(declare-fun m!6067160 () Bool)

(assert (=> b!5032064 m!6067160))

(declare-fun m!6067162 () Bool)

(assert (=> b!5032064 m!6067162))

(assert (=> b!5032065 m!6067160))

(assert (=> b!5032065 m!6067162))

(declare-fun m!6067164 () Bool)

(assert (=> b!5032066 m!6067164))

(declare-fun m!6067166 () Bool)

(assert (=> b!5032062 m!6067166))

(assert (=> d!1619225 d!1619357))

(declare-fun bm!350997 () Bool)

(declare-fun c!861628 () Bool)

(declare-fun c!861626 () Bool)

(assert (=> bm!350997 (= c!861628 c!861626)))

(declare-fun e!3143544 () List!58370)

(declare-fun e!3143539 () Int)

(declare-fun call!351005 () tuple2!63134)

(assert (=> bm!350997 (= call!351005 (splitAtIndex!168 e!3143544 (ite c!861626 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) e!3143539)))))

(declare-fun b!5032115 () Bool)

(declare-fun c!861636 () Bool)

(assert (=> b!5032115 (= c!861636 (<= (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) 0))))

(declare-fun e!3143542 () tuple2!63132)

(declare-fun e!3143550 () tuple2!63132)

(assert (=> b!5032115 (= e!3143542 e!3143550)))

(declare-fun b!5032116 () Bool)

(assert (=> b!5032116 (= e!3143544 (list!18824 (xs!18787 (c!861502 input!5499))))))

(declare-fun bm!350998 () Bool)

(declare-fun c!861627 () Bool)

(declare-fun c!861631 () Bool)

(assert (=> bm!350998 (= c!861627 c!861631)))

(declare-fun call!351002 () tuple2!63134)

(assert (=> bm!350998 (= call!351002 call!351005)))

(declare-fun b!5032117 () Bool)

(declare-fun lt!2082360 () tuple2!63132)

(declare-fun call!351004 () tuple2!63132)

(assert (=> b!5032117 (= lt!2082360 call!351004)))

(declare-fun e!3143543 () tuple2!63132)

(declare-fun call!351007 () Conc!15461)

(assert (=> b!5032117 (= e!3143543 (tuple2!63133 (_1!34869 lt!2082360) call!351007))))

(declare-fun lt!2082359 () List!58370)

(declare-fun lt!2082361 () List!58370)

(declare-fun b!5032118 () Bool)

(assert (=> b!5032118 (= e!3143544 (ite c!861631 lt!2082359 lt!2082361))))

(declare-fun b!5032120 () Bool)

(assert (=> b!5032120 (= e!3143550 (tuple2!63133 Empty!15461 (c!861502 input!5499)))))

(declare-fun b!5032121 () Bool)

(declare-fun e!3143545 () tuple2!63132)

(assert (=> b!5032121 (= e!3143545 e!3143543)))

(declare-fun c!861630 () Bool)

(assert (=> b!5032121 (= c!861630 (< (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) (size!38788 (left!42617 (c!861502 input!5499)))))))

(declare-fun lt!2082356 () tuple2!63134)

(declare-fun call!351006 () List!58370)

(declare-fun lt!2082363 () tuple2!63134)

(declare-fun bm!350999 () Bool)

(assert (=> bm!350999 (= call!351006 (++!12677 (ite c!861631 (_2!34870 lt!2082363) lt!2082359) (ite c!861631 lt!2082361 (_1!34870 lt!2082356))))))

(declare-fun b!5032122 () Bool)

(declare-fun res!2144457 () Bool)

(declare-fun e!3143549 () Bool)

(assert (=> b!5032122 (=> (not res!2144457) (not e!3143549))))

(declare-fun lt!2082362 () tuple2!63132)

(assert (=> b!5032122 (= res!2144457 (isBalanced!4323 (_2!34869 lt!2082362)))))

(declare-fun b!5032123 () Bool)

(assert (=> b!5032123 (= e!3143539 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217))))

(declare-fun bm!351000 () Bool)

(declare-fun c!861635 () Bool)

(assert (=> bm!351000 (= c!861635 c!861630)))

(declare-fun e!3143540 () Int)

(assert (=> bm!351000 (= call!351004 (splitAt!468 (ite c!861630 (left!42617 (c!861502 input!5499)) (right!42947 (c!861502 input!5499))) e!3143540))))

(declare-fun c!861632 () Bool)

(declare-fun b!5032124 () Bool)

(assert (=> b!5032124 (= c!861632 (= (size!38788 (left!42617 (c!861502 input!5499))) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)))))

(declare-fun lt!2082357 () Unit!149431)

(declare-fun lt!2082365 () Unit!149431)

(assert (=> b!5032124 (= lt!2082357 lt!2082365)))

(declare-fun e!3143546 () tuple2!63134)

(assert (=> b!5032124 (= (splitAtIndex!168 (++!12677 lt!2082359 lt!2082361) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)) e!3143546)))

(declare-fun c!861633 () Bool)

(declare-fun call!351003 () Int)

(assert (=> b!5032124 (= c!861633 (= call!351003 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)))))

(declare-fun splitAtLemma!51 (List!58370 List!58370 Int) Unit!149431)

(assert (=> b!5032124 (= lt!2082365 (splitAtLemma!51 lt!2082359 lt!2082361 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)))))

(assert (=> b!5032124 (= lt!2082361 (list!18822 (right!42947 (c!861502 input!5499))))))

(assert (=> b!5032124 (= lt!2082359 (list!18822 (left!42617 (c!861502 input!5499))))))

(assert (=> b!5032124 (= e!3143542 e!3143545)))

(declare-fun b!5032125 () Bool)

(assert (=> b!5032125 (= e!3143540 (- (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) (size!38788 (left!42617 (c!861502 input!5499)))))))

(declare-fun bm!351001 () Bool)

(declare-fun lt!2082366 () List!58370)

(assert (=> bm!351001 (= call!351003 (size!38787 (ite c!861626 lt!2082366 lt!2082359)))))

(declare-fun b!5032126 () Bool)

(assert (=> b!5032126 (= lt!2082363 call!351002)))

(declare-fun e!3143548 () tuple2!63134)

(assert (=> b!5032126 (= e!3143548 (tuple2!63135 (_1!34870 lt!2082363) call!351006))))

(declare-fun b!5032127 () Bool)

(assert (=> b!5032127 (= e!3143546 e!3143548)))

(assert (=> b!5032127 (= c!861631 (< (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) call!351003))))

(declare-fun b!5032128 () Bool)

(assert (=> b!5032128 (= lt!2082356 call!351002)))

(assert (=> b!5032128 (= e!3143548 (tuple2!63135 call!351006 (_2!34870 lt!2082356)))))

(declare-fun b!5032129 () Bool)

(declare-fun e!3143541 () tuple2!63132)

(assert (=> b!5032129 (= e!3143550 e!3143541)))

(declare-fun c!861629 () Bool)

(assert (=> b!5032129 (= c!861629 (= (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) (csize!31153 (c!861502 input!5499))))))

(declare-fun b!5032130 () Bool)

(assert (=> b!5032130 (= e!3143539 (- (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) call!351003))))

(declare-fun b!5032131 () Bool)

(declare-fun lt!2082367 () Unit!149431)

(declare-fun lt!2082358 () Unit!149431)

(assert (=> b!5032131 (= lt!2082367 lt!2082358)))

(declare-fun slice!818 (List!58370 Int Int) List!58370)

(assert (=> b!5032131 (= (drop!2593 lt!2082366 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)) (slice!818 lt!2082366 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) call!351003))))

(declare-fun dropLemma!51 (List!58370 Int) Unit!149431)

(assert (=> b!5032131 (= lt!2082358 (dropLemma!51 lt!2082366 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)))))

(assert (=> b!5032131 (= lt!2082366 (list!18824 (xs!18787 (c!861502 input!5499))))))

(declare-fun lt!2082355 () tuple2!63134)

(assert (=> b!5032131 (= lt!2082355 call!351005)))

(declare-fun slice!819 (IArray!30983 Int Int) IArray!30983)

(assert (=> b!5032131 (= e!3143541 (tuple2!63133 (Leaf!25656 (slice!819 (xs!18787 (c!861502 input!5499)) 0 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)) (Leaf!25656 (slice!819 (xs!18787 (c!861502 input!5499)) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217) (csize!31153 (c!861502 input!5499))) (- (csize!31153 (c!861502 input!5499)) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)))))))

(declare-fun d!1619359 () Bool)

(assert (=> d!1619359 e!3143549))

(declare-fun res!2144456 () Bool)

(assert (=> d!1619359 (=> (not res!2144456) (not e!3143549))))

(assert (=> d!1619359 (= res!2144456 (isBalanced!4323 (_1!34869 lt!2082362)))))

(declare-fun e!3143547 () tuple2!63132)

(assert (=> d!1619359 (= lt!2082362 e!3143547)))

(declare-fun c!861634 () Bool)

(assert (=> d!1619359 (= c!861634 (is-Empty!15461 (c!861502 input!5499)))))

(assert (=> d!1619359 (isBalanced!4323 (c!861502 input!5499))))

(assert (=> d!1619359 (= (splitAt!468 (c!861502 input!5499) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217)) lt!2082362)))

(declare-fun b!5032119 () Bool)

(assert (=> b!5032119 (= e!3143541 (tuple2!63133 (c!861502 input!5499) Empty!15461))))

(declare-fun b!5032132 () Bool)

(assert (=> b!5032132 (= e!3143546 (tuple2!63135 lt!2082359 lt!2082361))))

(declare-fun b!5032133 () Bool)

(declare-fun lt!2082364 () tuple2!63132)

(assert (=> b!5032133 (= lt!2082364 call!351004)))

(assert (=> b!5032133 (= e!3143543 (tuple2!63133 call!351007 (_2!34869 lt!2082364)))))

(declare-fun bm!351002 () Bool)

(declare-fun ++!12679 (Conc!15461 Conc!15461) Conc!15461)

(assert (=> bm!351002 (= call!351007 (++!12679 (ite c!861630 (_2!34869 lt!2082360) (left!42617 (c!861502 input!5499))) (ite c!861630 (right!42947 (c!861502 input!5499)) (_1!34869 lt!2082364))))))

(declare-fun b!5032134 () Bool)

(assert (=> b!5032134 (= e!3143545 (tuple2!63133 (left!42617 (c!861502 input!5499)) (right!42947 (c!861502 input!5499))))))

(declare-fun b!5032135 () Bool)

(assert (=> b!5032135 (= e!3143549 (= (tuple2!63135 (list!18822 (_1!34869 lt!2082362)) (list!18822 (_2!34869 lt!2082362))) (splitAtIndex!168 (list!18822 (c!861502 input!5499)) (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217))))))

(declare-fun b!5032136 () Bool)

(assert (=> b!5032136 (= e!3143540 (findLongestMatchInnerZipperFastV2!256 z!3733 (- lt!2082217 (size!38785 input!5499)) totalInput!786 lt!2082217))))

(declare-fun b!5032137 () Bool)

(assert (=> b!5032137 (= e!3143547 e!3143542)))

(assert (=> b!5032137 (= c!861626 (is-Leaf!25656 (c!861502 input!5499)))))

(declare-fun b!5032138 () Bool)

(assert (=> b!5032138 (= e!3143547 (tuple2!63133 (c!861502 input!5499) (c!861502 input!5499)))))

(assert (= (and d!1619359 c!861634) b!5032138))

(assert (= (and d!1619359 (not c!861634)) b!5032137))

(assert (= (and b!5032137 c!861626) b!5032115))

(assert (= (and b!5032137 (not c!861626)) b!5032124))

(assert (= (and b!5032115 c!861636) b!5032120))

(assert (= (and b!5032115 (not c!861636)) b!5032129))

(assert (= (and b!5032129 c!861629) b!5032119))

(assert (= (and b!5032129 (not c!861629)) b!5032131))

(assert (= (and b!5032124 c!861633) b!5032132))

(assert (= (and b!5032124 (not c!861633)) b!5032127))

(assert (= (and b!5032127 c!861631) b!5032126))

(assert (= (and b!5032127 (not c!861631)) b!5032128))

(assert (= (or b!5032126 b!5032128) bm!350999))

(assert (= (or b!5032126 b!5032128) bm!350998))

(assert (= (and bm!350998 c!861627) b!5032123))

(assert (= (and bm!350998 (not c!861627)) b!5032130))

(assert (= (and b!5032124 c!861632) b!5032134))

(assert (= (and b!5032124 (not c!861632)) b!5032121))

(assert (= (and b!5032121 c!861630) b!5032117))

(assert (= (and b!5032121 (not c!861630)) b!5032133))

(assert (= (or b!5032117 b!5032133) bm!351002))

(assert (= (or b!5032117 b!5032133) bm!351000))

(assert (= (and bm!351000 c!861635) b!5032136))

(assert (= (and bm!351000 (not c!861635)) b!5032125))

(assert (= (or b!5032131 b!5032130 b!5032124 b!5032127) bm!351001))

(assert (= (or b!5032131 bm!350998) bm!350997))

(assert (= (and bm!350997 c!861628) b!5032116))

(assert (= (and bm!350997 (not c!861628)) b!5032118))

(assert (= (and d!1619359 res!2144456) b!5032122))

(assert (= (and b!5032122 res!2144457) b!5032135))

(assert (=> b!5032116 m!6066940))

(declare-fun m!6067168 () Bool)

(assert (=> bm!351000 m!6067168))

(declare-fun m!6067170 () Bool)

(assert (=> b!5032122 m!6067170))

(declare-fun m!6067172 () Bool)

(assert (=> bm!350999 m!6067172))

(declare-fun m!6067174 () Bool)

(assert (=> bm!350997 m!6067174))

(assert (=> b!5032121 m!6066970))

(declare-fun m!6067176 () Bool)

(assert (=> bm!351002 m!6067176))

(assert (=> b!5032124 m!6066970))

(assert (=> b!5032124 m!6066944))

(assert (=> b!5032124 m!6066750))

(declare-fun m!6067178 () Bool)

(assert (=> b!5032124 m!6067178))

(declare-fun m!6067180 () Bool)

(assert (=> b!5032124 m!6067180))

(assert (=> b!5032124 m!6066750))

(declare-fun m!6067182 () Bool)

(assert (=> b!5032124 m!6067182))

(assert (=> b!5032124 m!6067180))

(assert (=> b!5032124 m!6066942))

(declare-fun m!6067184 () Bool)

(assert (=> bm!351001 m!6067184))

(declare-fun m!6067186 () Bool)

(assert (=> d!1619359 m!6067186))

(assert (=> d!1619359 m!6066816))

(assert (=> b!5032131 m!6066750))

(declare-fun m!6067188 () Bool)

(assert (=> b!5032131 m!6067188))

(assert (=> b!5032131 m!6066750))

(declare-fun m!6067190 () Bool)

(assert (=> b!5032131 m!6067190))

(assert (=> b!5032131 m!6066750))

(declare-fun m!6067192 () Bool)

(assert (=> b!5032131 m!6067192))

(assert (=> b!5032131 m!6066750))

(declare-fun m!6067194 () Bool)

(assert (=> b!5032131 m!6067194))

(assert (=> b!5032131 m!6066750))

(declare-fun m!6067196 () Bool)

(assert (=> b!5032131 m!6067196))

(assert (=> b!5032131 m!6066940))

(assert (=> b!5032125 m!6066970))

(declare-fun m!6067198 () Bool)

(assert (=> b!5032135 m!6067198))

(declare-fun m!6067200 () Bool)

(assert (=> b!5032135 m!6067200))

(assert (=> b!5032135 m!6066852))

(assert (=> b!5032135 m!6066852))

(assert (=> b!5032135 m!6066750))

(declare-fun m!6067202 () Bool)

(assert (=> b!5032135 m!6067202))

(assert (=> d!1619225 d!1619359))

(assert (=> d!1619225 d!1619313))

(assert (=> b!5031697 d!1619273))

(declare-fun b!5032150 () Bool)

(declare-fun e!3143553 () Bool)

(declare-fun tp!1409757 () Bool)

(declare-fun tp!1409756 () Bool)

(assert (=> b!5032150 (= e!3143553 (and tp!1409757 tp!1409756))))

(declare-fun b!5032149 () Bool)

(declare-fun tp_is_empty!36717 () Bool)

(assert (=> b!5032149 (= e!3143553 tp_is_empty!36717)))

(declare-fun b!5032152 () Bool)

(declare-fun tp!1409755 () Bool)

(declare-fun tp!1409753 () Bool)

(assert (=> b!5032152 (= e!3143553 (and tp!1409755 tp!1409753))))

(declare-fun b!5032151 () Bool)

(declare-fun tp!1409754 () Bool)

(assert (=> b!5032151 (= e!3143553 tp!1409754)))

(assert (=> b!5031839 (= tp!1409708 e!3143553)))

(assert (= (and b!5031839 (is-ElementMatch!13942 (h!64695 (exprs!3867 setElem!29033)))) b!5032149))

(assert (= (and b!5031839 (is-Concat!22735 (h!64695 (exprs!3867 setElem!29033)))) b!5032150))

(assert (= (and b!5031839 (is-Star!13942 (h!64695 (exprs!3867 setElem!29033)))) b!5032151))

(assert (= (and b!5031839 (is-Union!13942 (h!64695 (exprs!3867 setElem!29033)))) b!5032152))

(declare-fun b!5032153 () Bool)

(declare-fun e!3143554 () Bool)

(declare-fun tp!1409758 () Bool)

(declare-fun tp!1409759 () Bool)

(assert (=> b!5032153 (= e!3143554 (and tp!1409758 tp!1409759))))

(assert (=> b!5031839 (= tp!1409709 e!3143554)))

(assert (= (and b!5031839 (is-Cons!58247 (t!370790 (exprs!3867 setElem!29033)))) b!5032153))

(declare-fun b!5032154 () Bool)

(declare-fun tp!1409762 () Bool)

(declare-fun e!3143555 () Bool)

(declare-fun tp!1409760 () Bool)

(assert (=> b!5032154 (= e!3143555 (and (inv!76886 (left!42617 (left!42617 (c!861502 input!5499)))) tp!1409760 (inv!76886 (right!42947 (left!42617 (c!861502 input!5499)))) tp!1409762))))

(declare-fun b!5032156 () Bool)

(declare-fun e!3143556 () Bool)

(declare-fun tp!1409761 () Bool)

(assert (=> b!5032156 (= e!3143556 tp!1409761)))

(declare-fun b!5032155 () Bool)

(assert (=> b!5032155 (= e!3143555 (and (inv!76894 (xs!18787 (left!42617 (c!861502 input!5499)))) e!3143556))))

(assert (=> b!5031832 (= tp!1409701 (and (inv!76886 (left!42617 (c!861502 input!5499))) e!3143555))))

(assert (= (and b!5031832 (is-Node!15461 (left!42617 (c!861502 input!5499)))) b!5032154))

(assert (= b!5032155 b!5032156))

(assert (= (and b!5031832 (is-Leaf!25656 (left!42617 (c!861502 input!5499)))) b!5032155))

(declare-fun m!6067204 () Bool)

(assert (=> b!5032154 m!6067204))

(declare-fun m!6067206 () Bool)

(assert (=> b!5032154 m!6067206))

(declare-fun m!6067208 () Bool)

(assert (=> b!5032155 m!6067208))

(assert (=> b!5031832 m!6066926))

(declare-fun tp!1409765 () Bool)

(declare-fun b!5032157 () Bool)

(declare-fun tp!1409763 () Bool)

(declare-fun e!3143557 () Bool)

(assert (=> b!5032157 (= e!3143557 (and (inv!76886 (left!42617 (right!42947 (c!861502 input!5499)))) tp!1409763 (inv!76886 (right!42947 (right!42947 (c!861502 input!5499)))) tp!1409765))))

(declare-fun b!5032159 () Bool)

(declare-fun e!3143558 () Bool)

(declare-fun tp!1409764 () Bool)

(assert (=> b!5032159 (= e!3143558 tp!1409764)))

(declare-fun b!5032158 () Bool)

(assert (=> b!5032158 (= e!3143557 (and (inv!76894 (xs!18787 (right!42947 (c!861502 input!5499)))) e!3143558))))

(assert (=> b!5031832 (= tp!1409703 (and (inv!76886 (right!42947 (c!861502 input!5499))) e!3143557))))

(assert (= (and b!5031832 (is-Node!15461 (right!42947 (c!861502 input!5499)))) b!5032157))

(assert (= b!5032158 b!5032159))

(assert (= (and b!5031832 (is-Leaf!25656 (right!42947 (c!861502 input!5499)))) b!5032158))

(declare-fun m!6067210 () Bool)

(assert (=> b!5032157 m!6067210))

(declare-fun m!6067212 () Bool)

(assert (=> b!5032157 m!6067212))

(declare-fun m!6067214 () Bool)

(assert (=> b!5032158 m!6067214))

(assert (=> b!5031832 m!6066928))

(declare-fun b!5032160 () Bool)

(declare-fun tp!1409766 () Bool)

(declare-fun tp!1409768 () Bool)

(declare-fun e!3143559 () Bool)

(assert (=> b!5032160 (= e!3143559 (and (inv!76886 (left!42617 (left!42617 (c!861502 totalInput!786)))) tp!1409766 (inv!76886 (right!42947 (left!42617 (c!861502 totalInput!786)))) tp!1409768))))

(declare-fun b!5032162 () Bool)

(declare-fun e!3143560 () Bool)

(declare-fun tp!1409767 () Bool)

(assert (=> b!5032162 (= e!3143560 tp!1409767)))

(declare-fun b!5032161 () Bool)

(assert (=> b!5032161 (= e!3143559 (and (inv!76894 (xs!18787 (left!42617 (c!861502 totalInput!786)))) e!3143560))))

(assert (=> b!5031845 (= tp!1409716 (and (inv!76886 (left!42617 (c!861502 totalInput!786))) e!3143559))))

(assert (= (and b!5031845 (is-Node!15461 (left!42617 (c!861502 totalInput!786)))) b!5032160))

(assert (= b!5032161 b!5032162))

(assert (= (and b!5031845 (is-Leaf!25656 (left!42617 (c!861502 totalInput!786)))) b!5032161))

(declare-fun m!6067216 () Bool)

(assert (=> b!5032160 m!6067216))

(declare-fun m!6067218 () Bool)

(assert (=> b!5032160 m!6067218))

(declare-fun m!6067220 () Bool)

(assert (=> b!5032161 m!6067220))

(assert (=> b!5031845 m!6066934))

(declare-fun tp!1409769 () Bool)

(declare-fun tp!1409771 () Bool)

(declare-fun b!5032163 () Bool)

(declare-fun e!3143561 () Bool)

(assert (=> b!5032163 (= e!3143561 (and (inv!76886 (left!42617 (right!42947 (c!861502 totalInput!786)))) tp!1409769 (inv!76886 (right!42947 (right!42947 (c!861502 totalInput!786)))) tp!1409771))))

(declare-fun b!5032165 () Bool)

(declare-fun e!3143562 () Bool)

(declare-fun tp!1409770 () Bool)

(assert (=> b!5032165 (= e!3143562 tp!1409770)))

(declare-fun b!5032164 () Bool)

(assert (=> b!5032164 (= e!3143561 (and (inv!76894 (xs!18787 (right!42947 (c!861502 totalInput!786)))) e!3143562))))

(assert (=> b!5031845 (= tp!1409718 (and (inv!76886 (right!42947 (c!861502 totalInput!786))) e!3143561))))

(assert (= (and b!5031845 (is-Node!15461 (right!42947 (c!861502 totalInput!786)))) b!5032163))

(assert (= b!5032164 b!5032165))

(assert (= (and b!5031845 (is-Leaf!25656 (right!42947 (c!861502 totalInput!786)))) b!5032164))

(declare-fun m!6067222 () Bool)

(assert (=> b!5032163 m!6067222))

(declare-fun m!6067224 () Bool)

(assert (=> b!5032163 m!6067224))

(declare-fun m!6067226 () Bool)

(assert (=> b!5032164 m!6067226))

(assert (=> b!5031845 m!6066936))

(declare-fun b!5032170 () Bool)

(declare-fun e!3143565 () Bool)

(declare-fun tp!1409774 () Bool)

(assert (=> b!5032170 (= e!3143565 (and tp_is_empty!36717 tp!1409774))))

(assert (=> b!5031834 (= tp!1409702 e!3143565)))

(assert (= (and b!5031834 (is-Cons!58246 (innerList!15549 (xs!18787 (c!861502 input!5499))))) b!5032170))

(declare-fun condSetEmpty!29043 () Bool)

(assert (=> setNonEmpty!29039 (= condSetEmpty!29043 (= setRest!29039 (as set.empty (Set Context!6734))))))

(declare-fun setRes!29043 () Bool)

(assert (=> setNonEmpty!29039 (= tp!1409715 setRes!29043)))

(declare-fun setIsEmpty!29043 () Bool)

(assert (=> setIsEmpty!29043 setRes!29043))

(declare-fun tp!1409776 () Bool)

(declare-fun setElem!29043 () Context!6734)

(declare-fun e!3143566 () Bool)

(declare-fun setNonEmpty!29043 () Bool)

(assert (=> setNonEmpty!29043 (= setRes!29043 (and tp!1409776 (inv!76887 setElem!29043) e!3143566))))

(declare-fun setRest!29043 () (Set Context!6734))

(assert (=> setNonEmpty!29043 (= setRest!29039 (set.union (set.insert setElem!29043 (as set.empty (Set Context!6734))) setRest!29043))))

(declare-fun b!5032171 () Bool)

(declare-fun tp!1409775 () Bool)

(assert (=> b!5032171 (= e!3143566 tp!1409775)))

(assert (= (and setNonEmpty!29039 condSetEmpty!29043) setIsEmpty!29043))

(assert (= (and setNonEmpty!29039 (not condSetEmpty!29043)) setNonEmpty!29043))

(assert (= setNonEmpty!29043 b!5032171))

(declare-fun m!6067228 () Bool)

(assert (=> setNonEmpty!29043 m!6067228))

(declare-fun b!5032172 () Bool)

(declare-fun e!3143567 () Bool)

(declare-fun tp!1409777 () Bool)

(assert (=> b!5032172 (= e!3143567 (and tp_is_empty!36717 tp!1409777))))

(assert (=> b!5031847 (= tp!1409717 e!3143567)))

(assert (= (and b!5031847 (is-Cons!58246 (innerList!15549 (xs!18787 (c!861502 totalInput!786))))) b!5032172))

(declare-fun b!5032173 () Bool)

(declare-fun e!3143568 () Bool)

(declare-fun tp!1409778 () Bool)

(declare-fun tp!1409779 () Bool)

(assert (=> b!5032173 (= e!3143568 (and tp!1409778 tp!1409779))))

(assert (=> b!5031844 (= tp!1409714 e!3143568)))

(assert (= (and b!5031844 (is-Cons!58247 (exprs!3867 setElem!29039))) b!5032173))

(declare-fun b_lambda!198715 () Bool)

(assert (= b_lambda!198713 (or d!1619247 b_lambda!198715)))

(declare-fun bs!1188629 () Bool)

(declare-fun d!1619361 () Bool)

(assert (= bs!1188629 (and d!1619361 d!1619247)))

(declare-fun validRegex!6123 (Regex!13942) Bool)

(assert (=> bs!1188629 (= (dynLambda!23543 lambda!249709 (h!64695 (exprs!3867 setElem!29033))) (validRegex!6123 (h!64695 (exprs!3867 setElem!29033))))))

(declare-fun m!6067230 () Bool)

(assert (=> bs!1188629 m!6067230))

(assert (=> b!5032041 d!1619361))

(push 1)

(assert (not b!5031975))

(assert (not b!5031868))

(assert (not d!1619329))

(assert (not b!5031930))

(assert (not b!5031912))

(assert (not bm!350981))

(assert (not b!5031871))

(assert (not d!1619303))

(assert (not b!5032150))

(assert (not b!5031921))

(assert (not d!1619305))

(assert (not d!1619289))

(assert (not bm!350984))

(assert (not b!5032157))

(assert (not b!5031973))

(assert (not b!5032033))

(assert (not d!1619291))

(assert (not b!5031864))

(assert (not b!5031974))

(assert (not b!5032163))

(assert (not d!1619337))

(assert (not b!5032160))

(assert (not d!1619325))

(assert (not bm!350980))

(assert (not b!5031972))

(assert (not b!5031936))

(assert (not b!5032012))

(assert (not b!5031932))

(assert (not setNonEmpty!29043))

(assert (not bm!350999))

(assert (not d!1619299))

(assert (not bm!351000))

(assert (not d!1619295))

(assert (not b!5031895))

(assert (not b!5032162))

(assert (not b!5032152))

(assert (not b!5031934))

(assert (not b!5032121))

(assert (not b!5032066))

(assert (not b!5032135))

(assert (not b!5032159))

(assert (not b!5031989))

(assert (not d!1619351))

(assert (not b!5032065))

(assert (not b!5031969))

(assert (not b!5031911))

(assert (not b!5032156))

(assert (not b!5031919))

(assert (not b!5032153))

(assert (not b!5031881))

(assert (not b!5031910))

(assert (not b!5032057))

(assert (not b!5032165))

(assert (not b!5032151))

(assert (not b!5031832))

(assert (not d!1619335))

(assert tp_is_empty!36717)

(assert (not b!5031965))

(assert (not b!5031935))

(assert (not b!5032028))

(assert (not d!1619277))

(assert (not b!5031889))

(assert (not b!5031859))

(assert (not d!1619355))

(assert (not b!5032125))

(assert (not b!5032026))

(assert (not b!5032064))

(assert (not d!1619315))

(assert (not b!5032158))

(assert (not b!5032059))

(assert (not d!1619293))

(assert (not b!5031913))

(assert (not b!5032170))

(assert (not b!5031977))

(assert (not bm!350997))

(assert (not b!5032131))

(assert (not b!5032062))

(assert (not b!5031992))

(assert (not b!5031845))

(assert (not b!5031866))

(assert (not b!5031938))

(assert (not b!5032042))

(assert (not b!5032155))

(assert (not bm!351002))

(assert (not b!5031939))

(assert (not bs!1188629))

(assert (not b!5031988))

(assert (not b!5032036))

(assert (not b!5031954))

(assert (not b!5031959))

(assert (not b!5032031))

(assert (not bm!351001))

(assert (not b!5032161))

(assert (not b!5031920))

(assert (not d!1619359))

(assert (not b!5032058))

(assert (not b!5031879))

(assert (not b!5032030))

(assert (not b!5032173))

(assert (not b!5031869))

(assert (not b_lambda!198715))

(assert (not b!5032172))

(assert (not b!5031877))

(assert (not b!5032063))

(assert (not b!5031991))

(assert (not b!5031931))

(assert (not b!5031896))

(assert (not b!5031909))

(assert (not b!5032061))

(assert (not b!5032124))

(assert (not b!5032122))

(assert (not b!5032116))

(assert (not b!5031914))

(assert (not b!5032034))

(assert (not b!5032171))

(assert (not d!1619311))

(assert (not b!5031925))

(assert (not b!5032154))

(assert (not b!5031976))

(assert (not b!5031952))

(assert (not d!1619297))

(assert (not b!5032164))

(assert (not b!5031964))

(assert (not b!5031924))

(assert (not b!5031937))

(assert (not d!1619353))

(assert (not b!5031858))

(assert (not b!5032017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

