; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532202 () Bool)

(assert start!532202)

(declare-fun setIsEmpty!29021 () Bool)

(declare-fun setRes!29021 () Bool)

(assert (=> setIsEmpty!29021 setRes!29021))

(declare-fun b!5031552 () Bool)

(declare-fun e!3143205 () Bool)

(declare-fun tp!1409608 () Bool)

(assert (=> b!5031552 (= e!3143205 tp!1409608)))

(declare-fun res!2144270 () Bool)

(declare-fun e!3143206 () Bool)

(assert (=> start!532202 (=> (not res!2144270) (not e!3143206))))

(declare-datatypes ((C!28130 0))(
  ( (C!28131 (val!23461 Int)) )
))
(declare-datatypes ((List!58366 0))(
  ( (Nil!58242) (Cons!58242 (h!64690 C!28130) (t!370784 List!58366)) )
))
(declare-datatypes ((IArray!30979 0))(
  ( (IArray!30980 (innerList!15547 List!58366)) )
))
(declare-datatypes ((Conc!15459 0))(
  ( (Node!15459 (left!42614 Conc!15459) (right!42944 Conc!15459) (csize!31148 Int) (cheight!15670 Int)) (Leaf!25653 (xs!18785 IArray!30979) (csize!31149 Int)) (Empty!15459) )
))
(declare-datatypes ((BalanceConc!30348 0))(
  ( (BalanceConc!30349 (c!861482 Conc!15459)) )
))
(declare-fun input!5499 () BalanceConc!30348)

(declare-fun totalInput!786 () BalanceConc!30348)

(declare-fun isSuffix!1388 (List!58366 List!58366) Bool)

(declare-fun list!18817 (BalanceConc!30348) List!58366)

(assert (=> start!532202 (= res!2144270 (isSuffix!1388 (list!18817 input!5499) (list!18817 totalInput!786)))))

(assert (=> start!532202 e!3143206))

(declare-fun e!3143204 () Bool)

(declare-fun inv!76874 (BalanceConc!30348) Bool)

(assert (=> start!532202 (and (inv!76874 input!5499) e!3143204)))

(declare-fun e!3143208 () Bool)

(assert (=> start!532202 (and (inv!76874 totalInput!786) e!3143208)))

(declare-fun condSetEmpty!29021 () Bool)

(declare-datatypes ((Regex!13940 0))(
  ( (ElementMatch!13940 (c!861483 C!28130)) (Concat!22733 (regOne!28392 Regex!13940) (regTwo!28392 Regex!13940)) (EmptyExpr!13940) (Star!13940 (reg!14269 Regex!13940)) (EmptyLang!13940) (Union!13940 (regOne!28393 Regex!13940) (regTwo!28393 Regex!13940)) )
))
(declare-datatypes ((List!58367 0))(
  ( (Nil!58243) (Cons!58243 (h!64691 Regex!13940) (t!370785 List!58367)) )
))
(declare-datatypes ((Context!6730 0))(
  ( (Context!6731 (exprs!3865 List!58367)) )
))
(declare-fun z!3733 () (Set Context!6730))

(assert (=> start!532202 (= condSetEmpty!29021 (= z!3733 (as set.empty (Set Context!6730))))))

(assert (=> start!532202 setRes!29021))

(declare-fun b!5031553 () Bool)

(declare-fun tp!1409609 () Bool)

(declare-fun inv!76875 (Conc!15459) Bool)

(assert (=> b!5031553 (= e!3143204 (and (inv!76875 (c!861482 input!5499)) tp!1409609))))

(declare-fun b!5031554 () Bool)

(declare-fun tp!1409610 () Bool)

(assert (=> b!5031554 (= e!3143208 (and (inv!76875 (c!861482 totalInput!786)) tp!1409610))))

(declare-fun b!5031555 () Bool)

(declare-fun e!3143207 () Bool)

(assert (=> b!5031555 (= e!3143206 e!3143207)))

(declare-fun res!2144269 () Bool)

(assert (=> b!5031555 (=> (not res!2144269) (not e!3143207))))

(declare-fun isBalanced!4321 (Conc!15459) Bool)

(assert (=> b!5031555 (= res!2144269 (isBalanced!4321 (c!861482 input!5499)))))

(declare-fun lt!2082180 () Int)

(declare-fun lt!2082179 () Int)

(declare-fun lt!2082178 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!254 ((Set Context!6730) Int BalanceConc!30348 Int) Int)

(assert (=> b!5031555 (= lt!2082178 (findLongestMatchInnerZipperFastV2!254 z!3733 (- lt!2082180 lt!2082179) totalInput!786 lt!2082180))))

(declare-fun size!38781 (BalanceConc!30348) Int)

(assert (=> b!5031555 (= lt!2082179 (size!38781 input!5499))))

(assert (=> b!5031555 (= lt!2082180 (size!38781 totalInput!786))))

(declare-fun tp!1409607 () Bool)

(declare-fun setElem!29021 () Context!6730)

(declare-fun setNonEmpty!29021 () Bool)

(declare-fun inv!76876 (Context!6730) Bool)

(assert (=> setNonEmpty!29021 (= setRes!29021 (and tp!1409607 (inv!76876 setElem!29021) e!3143205))))

(declare-fun setRest!29021 () (Set Context!6730))

(assert (=> setNonEmpty!29021 (= z!3733 (set.union (set.insert setElem!29021 (as set.empty (Set Context!6730))) setRest!29021))))

(declare-fun b!5031556 () Bool)

(assert (=> b!5031556 (= e!3143207 (or (> 0 lt!2082178) (> lt!2082178 lt!2082179)))))

(assert (= (and start!532202 res!2144270) b!5031555))

(assert (= (and b!5031555 res!2144269) b!5031556))

(assert (= start!532202 b!5031553))

(assert (= start!532202 b!5031554))

(assert (= (and start!532202 condSetEmpty!29021) setIsEmpty!29021))

(assert (= (and start!532202 (not condSetEmpty!29021)) setNonEmpty!29021))

(assert (= setNonEmpty!29021 b!5031552))

(declare-fun m!6066606 () Bool)

(assert (=> setNonEmpty!29021 m!6066606))

(declare-fun m!6066608 () Bool)

(assert (=> start!532202 m!6066608))

(declare-fun m!6066610 () Bool)

(assert (=> start!532202 m!6066610))

(declare-fun m!6066612 () Bool)

(assert (=> start!532202 m!6066612))

(assert (=> start!532202 m!6066608))

(assert (=> start!532202 m!6066612))

(declare-fun m!6066614 () Bool)

(assert (=> start!532202 m!6066614))

(declare-fun m!6066616 () Bool)

(assert (=> start!532202 m!6066616))

(declare-fun m!6066618 () Bool)

(assert (=> b!5031555 m!6066618))

(declare-fun m!6066620 () Bool)

(assert (=> b!5031555 m!6066620))

(declare-fun m!6066622 () Bool)

(assert (=> b!5031555 m!6066622))

(declare-fun m!6066624 () Bool)

(assert (=> b!5031555 m!6066624))

(declare-fun m!6066626 () Bool)

(assert (=> b!5031553 m!6066626))

(declare-fun m!6066628 () Bool)

(assert (=> b!5031554 m!6066628))

(push 1)

(assert (not b!5031555))

(assert (not b!5031554))

(assert (not start!532202))

(assert (not b!5031553))

(assert (not b!5031552))

(assert (not setNonEmpty!29021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1619180 () Bool)

(declare-fun c!861490 () Bool)

(assert (=> d!1619180 (= c!861490 (is-Node!15459 (c!861482 input!5499)))))

(declare-fun e!3143230 () Bool)

(assert (=> d!1619180 (= (inv!76875 (c!861482 input!5499)) e!3143230)))

(declare-fun b!5031582 () Bool)

(declare-fun inv!76880 (Conc!15459) Bool)

(assert (=> b!5031582 (= e!3143230 (inv!76880 (c!861482 input!5499)))))

(declare-fun b!5031583 () Bool)

(declare-fun e!3143231 () Bool)

(assert (=> b!5031583 (= e!3143230 e!3143231)))

(declare-fun res!2144279 () Bool)

(assert (=> b!5031583 (= res!2144279 (not (is-Leaf!25653 (c!861482 input!5499))))))

(assert (=> b!5031583 (=> res!2144279 e!3143231)))

(declare-fun b!5031584 () Bool)

(declare-fun inv!76881 (Conc!15459) Bool)

(assert (=> b!5031584 (= e!3143231 (inv!76881 (c!861482 input!5499)))))

(assert (= (and d!1619180 c!861490) b!5031582))

(assert (= (and d!1619180 (not c!861490)) b!5031583))

(assert (= (and b!5031583 (not res!2144279)) b!5031584))

(declare-fun m!6066654 () Bool)

(assert (=> b!5031582 m!6066654))

(declare-fun m!6066656 () Bool)

(assert (=> b!5031584 m!6066656))

(assert (=> b!5031553 d!1619180))

(declare-fun d!1619182 () Bool)

(declare-fun c!861491 () Bool)

(assert (=> d!1619182 (= c!861491 (is-Node!15459 (c!861482 totalInput!786)))))

(declare-fun e!3143234 () Bool)

(assert (=> d!1619182 (= (inv!76875 (c!861482 totalInput!786)) e!3143234)))

(declare-fun b!5031587 () Bool)

(assert (=> b!5031587 (= e!3143234 (inv!76880 (c!861482 totalInput!786)))))

(declare-fun b!5031588 () Bool)

(declare-fun e!3143235 () Bool)

(assert (=> b!5031588 (= e!3143234 e!3143235)))

(declare-fun res!2144282 () Bool)

(assert (=> b!5031588 (= res!2144282 (not (is-Leaf!25653 (c!861482 totalInput!786))))))

(assert (=> b!5031588 (=> res!2144282 e!3143235)))

(declare-fun b!5031589 () Bool)

(assert (=> b!5031589 (= e!3143235 (inv!76881 (c!861482 totalInput!786)))))

(assert (= (and d!1619182 c!861491) b!5031587))

(assert (= (and d!1619182 (not c!861491)) b!5031588))

(assert (= (and b!5031588 (not res!2144282)) b!5031589))

(declare-fun m!6066658 () Bool)

(assert (=> b!5031587 m!6066658))

(declare-fun m!6066660 () Bool)

(assert (=> b!5031589 m!6066660))

(assert (=> b!5031554 d!1619182))

(declare-fun d!1619184 () Bool)

(declare-fun lambda!249703 () Int)

(declare-fun forall!13461 (List!58367 Int) Bool)

(assert (=> d!1619184 (= (inv!76876 setElem!29021) (forall!13461 (exprs!3865 setElem!29021) lambda!249703))))

(declare-fun bs!1188586 () Bool)

(assert (= bs!1188586 d!1619184))

(declare-fun m!6066678 () Bool)

(assert (=> bs!1188586 m!6066678))

(assert (=> setNonEmpty!29021 d!1619184))

(declare-fun b!5031608 () Bool)

(declare-fun e!3143245 () Bool)

(declare-fun e!3143246 () Bool)

(assert (=> b!5031608 (= e!3143245 e!3143246)))

(declare-fun res!2144300 () Bool)

(assert (=> b!5031608 (=> (not res!2144300) (not e!3143246))))

(declare-fun height!2050 (Conc!15459) Int)

(assert (=> b!5031608 (= res!2144300 (<= (- 1) (- (height!2050 (left!42614 (c!861482 input!5499))) (height!2050 (right!42944 (c!861482 input!5499))))))))

(declare-fun b!5031609 () Bool)

(declare-fun res!2144303 () Bool)

(assert (=> b!5031609 (=> (not res!2144303) (not e!3143246))))

(assert (=> b!5031609 (= res!2144303 (<= (- (height!2050 (left!42614 (c!861482 input!5499))) (height!2050 (right!42944 (c!861482 input!5499)))) 1))))

(declare-fun b!5031610 () Bool)

(declare-fun res!2144301 () Bool)

(assert (=> b!5031610 (=> (not res!2144301) (not e!3143246))))

(declare-fun isEmpty!31485 (Conc!15459) Bool)

(assert (=> b!5031610 (= res!2144301 (not (isEmpty!31485 (left!42614 (c!861482 input!5499)))))))

(declare-fun b!5031611 () Bool)

(declare-fun res!2144302 () Bool)

(assert (=> b!5031611 (=> (not res!2144302) (not e!3143246))))

(assert (=> b!5031611 (= res!2144302 (isBalanced!4321 (right!42944 (c!861482 input!5499))))))

(declare-fun b!5031612 () Bool)

(declare-fun res!2144304 () Bool)

(assert (=> b!5031612 (=> (not res!2144304) (not e!3143246))))

(assert (=> b!5031612 (= res!2144304 (isBalanced!4321 (left!42614 (c!861482 input!5499))))))

(declare-fun b!5031613 () Bool)

(assert (=> b!5031613 (= e!3143246 (not (isEmpty!31485 (right!42944 (c!861482 input!5499)))))))

(declare-fun d!1619198 () Bool)

(declare-fun res!2144299 () Bool)

(assert (=> d!1619198 (=> res!2144299 e!3143245)))

(assert (=> d!1619198 (= res!2144299 (not (is-Node!15459 (c!861482 input!5499))))))

(assert (=> d!1619198 (= (isBalanced!4321 (c!861482 input!5499)) e!3143245)))

(assert (= (and d!1619198 (not res!2144299)) b!5031608))

(assert (= (and b!5031608 res!2144300) b!5031609))

(assert (= (and b!5031609 res!2144303) b!5031612))

(assert (= (and b!5031612 res!2144304) b!5031611))

(assert (= (and b!5031611 res!2144302) b!5031610))

(assert (= (and b!5031610 res!2144301) b!5031613))

(declare-fun m!6066680 () Bool)

(assert (=> b!5031611 m!6066680))

(declare-fun m!6066682 () Bool)

(assert (=> b!5031609 m!6066682))

(declare-fun m!6066684 () Bool)

(assert (=> b!5031609 m!6066684))

(declare-fun m!6066686 () Bool)

(assert (=> b!5031610 m!6066686))

(assert (=> b!5031608 m!6066682))

(assert (=> b!5031608 m!6066684))

(declare-fun m!6066688 () Bool)

(assert (=> b!5031613 m!6066688))

(declare-fun m!6066690 () Bool)

(assert (=> b!5031612 m!6066690))

(assert (=> b!5031555 d!1619198))

(declare-fun b!5031630 () Bool)

(declare-fun c!861499 () Bool)

(declare-fun lt!2082200 () (Set Context!6730))

(declare-fun nullableZipper!947 ((Set Context!6730)) Bool)

(assert (=> b!5031630 (= c!861499 (nullableZipper!947 lt!2082200))))

(declare-fun e!3143261 () Int)

(declare-fun e!3143257 () Int)

(assert (=> b!5031630 (= e!3143261 e!3143257)))

(declare-fun b!5031631 () Bool)

(declare-fun e!3143259 () Bool)

(assert (=> b!5031631 (= e!3143259 (<= (- lt!2082180 lt!2082179) (size!38781 totalInput!786)))))

(declare-fun b!5031632 () Bool)

(assert (=> b!5031632 (= e!3143257 0)))

(declare-fun b!5031633 () Bool)

(declare-fun e!3143260 () Int)

(assert (=> b!5031633 (= e!3143260 e!3143261)))

(declare-fun derivationStepZipper!734 ((Set Context!6730) C!28130) (Set Context!6730))

(declare-fun apply!14216 (BalanceConc!30348 Int) C!28130)

(assert (=> b!5031633 (= lt!2082200 (derivationStepZipper!734 z!3733 (apply!14216 totalInput!786 (- lt!2082180 lt!2082179))))))

(declare-fun lt!2082201 () Int)

(assert (=> b!5031633 (= lt!2082201 (findLongestMatchInnerZipperFastV2!254 lt!2082200 (+ (- lt!2082180 lt!2082179) 1) totalInput!786 lt!2082180))))

(declare-fun c!861500 () Bool)

(assert (=> b!5031633 (= c!861500 (> lt!2082201 0))))

(declare-fun d!1619200 () Bool)

(declare-fun lt!2082199 () Int)

(assert (=> d!1619200 (and (>= lt!2082199 0) (<= lt!2082199 (- lt!2082180 (- lt!2082180 lt!2082179))))))

(assert (=> d!1619200 (= lt!2082199 e!3143260)))

(declare-fun c!861501 () Bool)

(declare-fun e!3143258 () Bool)

(assert (=> d!1619200 (= c!861501 e!3143258)))

(declare-fun res!2144310 () Bool)

(assert (=> d!1619200 (=> res!2144310 e!3143258)))

(assert (=> d!1619200 (= res!2144310 (= (- lt!2082180 lt!2082179) lt!2082180))))

(assert (=> d!1619200 e!3143259))

(declare-fun res!2144309 () Bool)

(assert (=> d!1619200 (=> (not res!2144309) (not e!3143259))))

(assert (=> d!1619200 (= res!2144309 (>= (- lt!2082180 lt!2082179) 0))))

(assert (=> d!1619200 (= (findLongestMatchInnerZipperFastV2!254 z!3733 (- lt!2082180 lt!2082179) totalInput!786 lt!2082180) lt!2082199)))

(declare-fun b!5031634 () Bool)

(declare-fun lostCauseZipper!953 ((Set Context!6730)) Bool)

(assert (=> b!5031634 (= e!3143258 (lostCauseZipper!953 z!3733))))

(declare-fun b!5031635 () Bool)

(assert (=> b!5031635 (= e!3143257 1)))

(declare-fun b!5031636 () Bool)

(assert (=> b!5031636 (= e!3143261 (+ 1 lt!2082201))))

(declare-fun b!5031637 () Bool)

(assert (=> b!5031637 (= e!3143260 0)))

(assert (= (and d!1619200 res!2144309) b!5031631))

(assert (= (and d!1619200 (not res!2144310)) b!5031634))

(assert (= (and d!1619200 c!861501) b!5031637))

(assert (= (and d!1619200 (not c!861501)) b!5031633))

(assert (= (and b!5031633 c!861500) b!5031636))

(assert (= (and b!5031633 (not c!861500)) b!5031630))

(assert (= (and b!5031630 c!861499) b!5031635))

(assert (= (and b!5031630 (not c!861499)) b!5031632))

(declare-fun m!6066692 () Bool)

(assert (=> b!5031630 m!6066692))

(assert (=> b!5031631 m!6066624))

(declare-fun m!6066694 () Bool)

(assert (=> b!5031633 m!6066694))

(assert (=> b!5031633 m!6066694))

(declare-fun m!6066696 () Bool)

(assert (=> b!5031633 m!6066696))

(declare-fun m!6066698 () Bool)

(assert (=> b!5031633 m!6066698))

(declare-fun m!6066700 () Bool)

(assert (=> b!5031634 m!6066700))

(assert (=> b!5031555 d!1619200))

(declare-fun d!1619202 () Bool)

(declare-fun lt!2082204 () Int)

(declare-fun size!38783 (List!58366) Int)

(assert (=> d!1619202 (= lt!2082204 (size!38783 (list!18817 input!5499)))))

(declare-fun size!38784 (Conc!15459) Int)

(assert (=> d!1619202 (= lt!2082204 (size!38784 (c!861482 input!5499)))))

(assert (=> d!1619202 (= (size!38781 input!5499) lt!2082204)))

(declare-fun bs!1188587 () Bool)

(assert (= bs!1188587 d!1619202))

(assert (=> bs!1188587 m!6066608))

(assert (=> bs!1188587 m!6066608))

(declare-fun m!6066702 () Bool)

(assert (=> bs!1188587 m!6066702))

(declare-fun m!6066704 () Bool)

(assert (=> bs!1188587 m!6066704))

(assert (=> b!5031555 d!1619202))

(declare-fun d!1619204 () Bool)

(declare-fun lt!2082205 () Int)

(assert (=> d!1619204 (= lt!2082205 (size!38783 (list!18817 totalInput!786)))))

(assert (=> d!1619204 (= lt!2082205 (size!38784 (c!861482 totalInput!786)))))

(assert (=> d!1619204 (= (size!38781 totalInput!786) lt!2082205)))

(declare-fun bs!1188588 () Bool)

(assert (= bs!1188588 d!1619204))

(assert (=> bs!1188588 m!6066612))

(assert (=> bs!1188588 m!6066612))

(declare-fun m!6066706 () Bool)

(assert (=> bs!1188588 m!6066706))

(declare-fun m!6066708 () Bool)

(assert (=> bs!1188588 m!6066708))

(assert (=> b!5031555 d!1619204))

(declare-fun d!1619206 () Bool)

(declare-fun list!18819 (Conc!15459) List!58366)

(assert (=> d!1619206 (= (list!18817 totalInput!786) (list!18819 (c!861482 totalInput!786)))))

(declare-fun bs!1188589 () Bool)

(assert (= bs!1188589 d!1619206))

(declare-fun m!6066710 () Bool)

(assert (=> bs!1188589 m!6066710))

(assert (=> start!532202 d!1619206))

(declare-fun d!1619208 () Bool)

(assert (=> d!1619208 (= (inv!76874 input!5499) (isBalanced!4321 (c!861482 input!5499)))))

(declare-fun bs!1188590 () Bool)

(assert (= bs!1188590 d!1619208))

(assert (=> bs!1188590 m!6066618))

(assert (=> start!532202 d!1619208))

(declare-fun d!1619210 () Bool)

(declare-fun e!3143264 () Bool)

(assert (=> d!1619210 e!3143264))

(declare-fun res!2144313 () Bool)

(assert (=> d!1619210 (=> res!2144313 e!3143264)))

(declare-fun lt!2082208 () Bool)

(assert (=> d!1619210 (= res!2144313 (not lt!2082208))))

(declare-fun drop!2592 (List!58366 Int) List!58366)

(assert (=> d!1619210 (= lt!2082208 (= (list!18817 input!5499) (drop!2592 (list!18817 totalInput!786) (- (size!38783 (list!18817 totalInput!786)) (size!38783 (list!18817 input!5499))))))))

(assert (=> d!1619210 (= (isSuffix!1388 (list!18817 input!5499) (list!18817 totalInput!786)) lt!2082208)))

(declare-fun b!5031640 () Bool)

(assert (=> b!5031640 (= e!3143264 (>= (size!38783 (list!18817 totalInput!786)) (size!38783 (list!18817 input!5499))))))

(assert (= (and d!1619210 (not res!2144313)) b!5031640))

(assert (=> d!1619210 m!6066612))

(assert (=> d!1619210 m!6066706))

(assert (=> d!1619210 m!6066608))

(assert (=> d!1619210 m!6066702))

(assert (=> d!1619210 m!6066612))

(declare-fun m!6066712 () Bool)

(assert (=> d!1619210 m!6066712))

(assert (=> b!5031640 m!6066612))

(assert (=> b!5031640 m!6066706))

(assert (=> b!5031640 m!6066608))

(assert (=> b!5031640 m!6066702))

(assert (=> start!532202 d!1619210))

(declare-fun d!1619212 () Bool)

(assert (=> d!1619212 (= (inv!76874 totalInput!786) (isBalanced!4321 (c!861482 totalInput!786)))))

(declare-fun bs!1188591 () Bool)

(assert (= bs!1188591 d!1619212))

(declare-fun m!6066714 () Bool)

(assert (=> bs!1188591 m!6066714))

(assert (=> start!532202 d!1619212))

(declare-fun d!1619214 () Bool)

(assert (=> d!1619214 (= (list!18817 input!5499) (list!18819 (c!861482 input!5499)))))

(declare-fun bs!1188592 () Bool)

(assert (= bs!1188592 d!1619214))

(declare-fun m!6066716 () Bool)

(assert (=> bs!1188592 m!6066716))

(assert (=> start!532202 d!1619214))

(declare-fun tp!1409631 () Bool)

(declare-fun e!3143270 () Bool)

(declare-fun b!5031649 () Bool)

(declare-fun tp!1409630 () Bool)

(assert (=> b!5031649 (= e!3143270 (and (inv!76875 (left!42614 (c!861482 input!5499))) tp!1409630 (inv!76875 (right!42944 (c!861482 input!5499))) tp!1409631))))

(declare-fun b!5031651 () Bool)

(declare-fun e!3143269 () Bool)

(declare-fun tp!1409629 () Bool)

(assert (=> b!5031651 (= e!3143269 tp!1409629)))

(declare-fun b!5031650 () Bool)

(declare-fun inv!76882 (IArray!30979) Bool)

(assert (=> b!5031650 (= e!3143270 (and (inv!76882 (xs!18785 (c!861482 input!5499))) e!3143269))))

(assert (=> b!5031553 (= tp!1409609 (and (inv!76875 (c!861482 input!5499)) e!3143270))))

(assert (= (and b!5031553 (is-Node!15459 (c!861482 input!5499))) b!5031649))

(assert (= b!5031650 b!5031651))

(assert (= (and b!5031553 (is-Leaf!25653 (c!861482 input!5499))) b!5031650))

(declare-fun m!6066718 () Bool)

(assert (=> b!5031649 m!6066718))

(declare-fun m!6066720 () Bool)

(assert (=> b!5031649 m!6066720))

(declare-fun m!6066722 () Bool)

(assert (=> b!5031650 m!6066722))

(assert (=> b!5031553 m!6066626))

(declare-fun b!5031652 () Bool)

(declare-fun tp!1409633 () Bool)

(declare-fun e!3143272 () Bool)

(declare-fun tp!1409634 () Bool)

(assert (=> b!5031652 (= e!3143272 (and (inv!76875 (left!42614 (c!861482 totalInput!786))) tp!1409633 (inv!76875 (right!42944 (c!861482 totalInput!786))) tp!1409634))))

(declare-fun b!5031654 () Bool)

(declare-fun e!3143271 () Bool)

(declare-fun tp!1409632 () Bool)

(assert (=> b!5031654 (= e!3143271 tp!1409632)))

(declare-fun b!5031653 () Bool)

(assert (=> b!5031653 (= e!3143272 (and (inv!76882 (xs!18785 (c!861482 totalInput!786))) e!3143271))))

(assert (=> b!5031554 (= tp!1409610 (and (inv!76875 (c!861482 totalInput!786)) e!3143272))))

(assert (= (and b!5031554 (is-Node!15459 (c!861482 totalInput!786))) b!5031652))

(assert (= b!5031653 b!5031654))

(assert (= (and b!5031554 (is-Leaf!25653 (c!861482 totalInput!786))) b!5031653))

(declare-fun m!6066724 () Bool)

(assert (=> b!5031652 m!6066724))

(declare-fun m!6066726 () Bool)

(assert (=> b!5031652 m!6066726))

(declare-fun m!6066728 () Bool)

(assert (=> b!5031653 m!6066728))

(assert (=> b!5031554 m!6066628))

(declare-fun condSetEmpty!29027 () Bool)

(assert (=> setNonEmpty!29021 (= condSetEmpty!29027 (= setRest!29021 (as set.empty (Set Context!6730))))))

(declare-fun setRes!29027 () Bool)

(assert (=> setNonEmpty!29021 (= tp!1409607 setRes!29027)))

(declare-fun setIsEmpty!29027 () Bool)

(assert (=> setIsEmpty!29027 setRes!29027))

(declare-fun setElem!29027 () Context!6730)

(declare-fun tp!1409640 () Bool)

(declare-fun e!3143275 () Bool)

(declare-fun setNonEmpty!29027 () Bool)

(assert (=> setNonEmpty!29027 (= setRes!29027 (and tp!1409640 (inv!76876 setElem!29027) e!3143275))))

(declare-fun setRest!29027 () (Set Context!6730))

(assert (=> setNonEmpty!29027 (= setRest!29021 (set.union (set.insert setElem!29027 (as set.empty (Set Context!6730))) setRest!29027))))

(declare-fun b!5031659 () Bool)

(declare-fun tp!1409639 () Bool)

(assert (=> b!5031659 (= e!3143275 tp!1409639)))

(assert (= (and setNonEmpty!29021 condSetEmpty!29027) setIsEmpty!29027))

(assert (= (and setNonEmpty!29021 (not condSetEmpty!29027)) setNonEmpty!29027))

(assert (= setNonEmpty!29027 b!5031659))

(declare-fun m!6066730 () Bool)

(assert (=> setNonEmpty!29027 m!6066730))

(declare-fun b!5031664 () Bool)

(declare-fun e!3143278 () Bool)

(declare-fun tp!1409645 () Bool)

(declare-fun tp!1409646 () Bool)

(assert (=> b!5031664 (= e!3143278 (and tp!1409645 tp!1409646))))

(assert (=> b!5031552 (= tp!1409608 e!3143278)))

(assert (= (and b!5031552 (is-Cons!58243 (exprs!3865 setElem!29021))) b!5031664))

(push 1)

(assert (not setNonEmpty!29027))

(assert (not b!5031649))

(assert (not b!5031609))

(assert (not b!5031589))

(assert (not b!5031553))

(assert (not b!5031612))

(assert (not d!1619206))

(assert (not b!5031631))

(assert (not b!5031630))

(assert (not b!5031611))

(assert (not d!1619208))

(assert (not b!5031610))

(assert (not b!5031651))

(assert (not b!5031659))

(assert (not d!1619202))

(assert (not b!5031634))

(assert (not b!5031554))

(assert (not b!5031653))

(assert (not b!5031640))

(assert (not d!1619184))

(assert (not d!1619212))

(assert (not b!5031584))

(assert (not d!1619214))

(assert (not b!5031582))

(assert (not b!5031664))

(assert (not b!5031587))

(assert (not d!1619204))

(assert (not b!5031633))

(assert (not b!5031608))

(assert (not b!5031650))

(assert (not b!5031654))

(assert (not b!5031613))

(assert (not b!5031652))

(assert (not d!1619210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

