; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531800 () Bool)

(assert start!531800)

(declare-fun e!3141569 () Bool)

(declare-datatypes ((C!28116 0))(
  ( (C!28117 (val!23434 Int)) )
))
(declare-datatypes ((Regex!13933 0))(
  ( (ElementMatch!13933 (c!860645 C!28116)) (Concat!22726 (regOne!28378 Regex!13933) (regTwo!28378 Regex!13933)) (EmptyExpr!13933) (Star!13933 (reg!14262 Regex!13933)) (EmptyLang!13933) (Union!13933 (regOne!28379 Regex!13933) (regTwo!28379 Regex!13933)) )
))
(declare-datatypes ((List!58328 0))(
  ( (Nil!58204) (Cons!58204 (h!64652 Regex!13933) (t!370736 List!58328)) )
))
(declare-datatypes ((Context!6716 0))(
  ( (Context!6717 (exprs!3858 List!58328)) )
))
(declare-fun setElem!28980 () Context!6716)

(declare-fun setNonEmpty!28980 () Bool)

(declare-fun tp!1409242 () Bool)

(declare-fun setRes!28980 () Bool)

(declare-fun inv!76796 (Context!6716) Bool)

(assert (=> setNonEmpty!28980 (= setRes!28980 (and tp!1409242 (inv!76796 setElem!28980) e!3141569))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6716))

(declare-fun setRest!28980 () (InoxSet Context!6716))

(assert (=> setNonEmpty!28980 (= z!4747 ((_ map or) (store ((as const (Array Context!6716 Bool)) false) setElem!28980 true) setRest!28980))))

(declare-fun b!5028936 () Bool)

(declare-fun e!3141568 () Bool)

(declare-fun e!3141564 () Bool)

(assert (=> b!5028936 (= e!3141568 e!3141564)))

(declare-fun res!2143564 () Bool)

(assert (=> b!5028936 (=> (not res!2143564) (not e!3141564))))

(declare-fun from!1228 () Int)

(declare-fun lt!2081346 () Int)

(assert (=> b!5028936 (= res!2143564 (<= from!1228 lt!2081346))))

(declare-datatypes ((List!58329 0))(
  ( (Nil!58205) (Cons!58205 (h!64653 C!28116) (t!370737 List!58329)) )
))
(declare-datatypes ((IArray!30965 0))(
  ( (IArray!30966 (innerList!15540 List!58329)) )
))
(declare-datatypes ((Conc!15452 0))(
  ( (Node!15452 (left!42585 Conc!15452) (right!42915 Conc!15452) (csize!31134 Int) (cheight!15663 Int)) (Leaf!25632 (xs!18778 IArray!30965) (csize!31135 Int)) (Empty!15452) )
))
(declare-datatypes ((BalanceConc!30334 0))(
  ( (BalanceConc!30335 (c!860646 Conc!15452)) )
))
(declare-fun totalInput!1141 () BalanceConc!30334)

(declare-fun size!38743 (BalanceConc!30334) Int)

(assert (=> b!5028936 (= lt!2081346 (size!38743 totalInput!1141))))

(declare-fun setIsEmpty!28980 () Bool)

(assert (=> setIsEmpty!28980 setRes!28980))

(declare-fun b!5028937 () Bool)

(declare-fun e!3141567 () Bool)

(assert (=> b!5028937 (= e!3141564 (not e!3141567))))

(declare-fun res!2143561 () Bool)

(assert (=> b!5028937 (=> res!2143561 e!3141567)))

(declare-fun lt!2081347 () Int)

(assert (=> b!5028937 (= res!2143561 (> lt!2081347 0))))

(declare-fun lt!2081349 () List!58329)

(declare-fun lt!2081344 () List!58329)

(declare-fun take!780 (List!58329 Int) List!58329)

(declare-fun drop!2580 (List!58329 Int) List!58329)

(assert (=> b!5028937 (= lt!2081349 (take!780 (drop!2580 lt!2081344 (+ 1 from!1228)) lt!2081347))))

(declare-fun list!18803 (BalanceConc!30334) List!58329)

(assert (=> b!5028937 (= lt!2081344 (list!18803 totalInput!1141))))

(declare-fun e!3141565 () Bool)

(assert (=> b!5028937 e!3141565))

(declare-fun res!2143562 () Bool)

(assert (=> b!5028937 (=> res!2143562 e!3141565)))

(assert (=> b!5028937 (= res!2143562 (= lt!2081347 0))))

(declare-fun lt!2081348 () (InoxSet Context!6716))

(declare-datatypes ((Unit!149401 0))(
  ( (Unit!149402) )
))
(declare-fun lt!2081343 () Unit!149401)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!124 ((InoxSet Context!6716) Int BalanceConc!30334) Unit!149401)

(assert (=> b!5028937 (= lt!2081343 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!124 lt!2081348 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!247 ((InoxSet Context!6716) Int BalanceConc!30334 Int) Int)

(assert (=> b!5028937 (= lt!2081347 (findLongestMatchInnerZipperFastV2!247 lt!2081348 (+ 1 from!1228) totalInput!1141 lt!2081346))))

(declare-fun derivationStepZipper!728 ((InoxSet Context!6716) C!28116) (InoxSet Context!6716))

(declare-fun apply!14194 (BalanceConc!30334 Int) C!28116)

(assert (=> b!5028937 (= lt!2081348 (derivationStepZipper!728 z!4747 (apply!14194 totalInput!1141 from!1228)))))

(declare-fun b!5028938 () Bool)

(declare-fun res!2143566 () Bool)

(assert (=> b!5028938 (=> (not res!2143566) (not e!3141564))))

(assert (=> b!5028938 (= res!2143566 (not (= from!1228 lt!2081346)))))

(declare-fun b!5028939 () Bool)

(declare-fun res!2143567 () Bool)

(assert (=> b!5028939 (=> res!2143567 e!3141567)))

(declare-fun nullableZipper!941 ((InoxSet Context!6716)) Bool)

(assert (=> b!5028939 (= res!2143567 (not (nullableZipper!941 lt!2081348)))))

(declare-fun b!5028940 () Bool)

(declare-fun matchZipper!683 ((InoxSet Context!6716) List!58329) Bool)

(assert (=> b!5028940 (= e!3141565 (matchZipper!683 lt!2081348 (take!780 (drop!2580 (list!18803 totalInput!1141) (+ 1 from!1228)) lt!2081347)))))

(declare-fun b!5028941 () Bool)

(declare-fun tp!1409241 () Bool)

(assert (=> b!5028941 (= e!3141569 tp!1409241)))

(declare-fun b!5028942 () Bool)

(declare-fun lt!2081342 () Int)

(assert (=> b!5028942 (= e!3141567 (or (>= from!1228 lt!2081342) (<= 0 (- (- lt!2081342 from!1228) 1))))))

(declare-fun size!38744 (List!58329) Int)

(assert (=> b!5028942 (= lt!2081342 (size!38744 lt!2081344))))

(declare-fun lt!2081345 () List!58329)

(assert (=> b!5028942 (= lt!2081345 (take!780 (drop!2580 lt!2081344 from!1228) 1))))

(declare-fun b!5028943 () Bool)

(declare-fun res!2143563 () Bool)

(assert (=> b!5028943 (=> (not res!2143563) (not e!3141564))))

(declare-fun lostCauseZipper!947 ((InoxSet Context!6716)) Bool)

(assert (=> b!5028943 (= res!2143563 (not (lostCauseZipper!947 z!4747)))))

(declare-fun b!5028944 () Bool)

(declare-fun e!3141566 () Bool)

(declare-fun tp!1409240 () Bool)

(declare-fun inv!76797 (Conc!15452) Bool)

(assert (=> b!5028944 (= e!3141566 (and (inv!76797 (c!860646 totalInput!1141)) tp!1409240))))

(declare-fun res!2143565 () Bool)

(assert (=> start!531800 (=> (not res!2143565) (not e!3141568))))

(assert (=> start!531800 (= res!2143565 (>= from!1228 0))))

(assert (=> start!531800 e!3141568))

(assert (=> start!531800 true))

(declare-fun inv!76798 (BalanceConc!30334) Bool)

(assert (=> start!531800 (and (inv!76798 totalInput!1141) e!3141566)))

(declare-fun condSetEmpty!28980 () Bool)

(assert (=> start!531800 (= condSetEmpty!28980 (= z!4747 ((as const (Array Context!6716 Bool)) false)))))

(assert (=> start!531800 setRes!28980))

(assert (= (and start!531800 res!2143565) b!5028936))

(assert (= (and b!5028936 res!2143564) b!5028943))

(assert (= (and b!5028943 res!2143563) b!5028938))

(assert (= (and b!5028938 res!2143566) b!5028937))

(assert (= (and b!5028937 (not res!2143562)) b!5028940))

(assert (= (and b!5028937 (not res!2143561)) b!5028939))

(assert (= (and b!5028939 (not res!2143567)) b!5028942))

(assert (= start!531800 b!5028944))

(assert (= (and start!531800 condSetEmpty!28980) setIsEmpty!28980))

(assert (= (and start!531800 (not condSetEmpty!28980)) setNonEmpty!28980))

(assert (= setNonEmpty!28980 b!5028941))

(declare-fun m!6064164 () Bool)

(assert (=> b!5028942 m!6064164))

(declare-fun m!6064166 () Bool)

(assert (=> b!5028942 m!6064166))

(assert (=> b!5028942 m!6064166))

(declare-fun m!6064168 () Bool)

(assert (=> b!5028942 m!6064168))

(declare-fun m!6064170 () Bool)

(assert (=> b!5028936 m!6064170))

(declare-fun m!6064172 () Bool)

(assert (=> b!5028937 m!6064172))

(declare-fun m!6064174 () Bool)

(assert (=> b!5028937 m!6064174))

(assert (=> b!5028937 m!6064172))

(declare-fun m!6064176 () Bool)

(assert (=> b!5028937 m!6064176))

(declare-fun m!6064178 () Bool)

(assert (=> b!5028937 m!6064178))

(declare-fun m!6064180 () Bool)

(assert (=> b!5028937 m!6064180))

(declare-fun m!6064182 () Bool)

(assert (=> b!5028937 m!6064182))

(assert (=> b!5028937 m!6064182))

(declare-fun m!6064184 () Bool)

(assert (=> b!5028937 m!6064184))

(declare-fun m!6064186 () Bool)

(assert (=> setNonEmpty!28980 m!6064186))

(declare-fun m!6064188 () Bool)

(assert (=> b!5028939 m!6064188))

(assert (=> b!5028940 m!6064178))

(assert (=> b!5028940 m!6064178))

(declare-fun m!6064190 () Bool)

(assert (=> b!5028940 m!6064190))

(assert (=> b!5028940 m!6064190))

(declare-fun m!6064192 () Bool)

(assert (=> b!5028940 m!6064192))

(assert (=> b!5028940 m!6064192))

(declare-fun m!6064194 () Bool)

(assert (=> b!5028940 m!6064194))

(declare-fun m!6064196 () Bool)

(assert (=> start!531800 m!6064196))

(declare-fun m!6064198 () Bool)

(assert (=> b!5028943 m!6064198))

(declare-fun m!6064200 () Bool)

(assert (=> b!5028944 m!6064200))

(check-sat (not b!5028939) (not b!5028941) (not b!5028943) (not b!5028936) (not setNonEmpty!28980) (not start!531800) (not b!5028937) (not b!5028944) (not b!5028942) (not b!5028940))
(check-sat)
