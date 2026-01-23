; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530190 () Bool)

(assert start!530190)

(declare-fun b!5018205 () Bool)

(declare-fun e!3134964 () Bool)

(declare-fun tp!1407228 () Bool)

(assert (=> b!5018205 (= e!3134964 tp!1407228)))

(declare-fun setIsEmpty!28534 () Bool)

(declare-fun setRes!28534 () Bool)

(assert (=> setIsEmpty!28534 setRes!28534))

(declare-fun res!2139807 () Bool)

(declare-fun e!3134962 () Bool)

(assert (=> start!530190 (=> (not res!2139807) (not e!3134962))))

(declare-fun from!1212 () Int)

(assert (=> start!530190 (= res!2139807 (>= from!1212 0))))

(assert (=> start!530190 e!3134962))

(assert (=> start!530190 true))

(declare-datatypes ((C!27892 0))(
  ( (C!27893 (val!23312 Int)) )
))
(declare-datatypes ((List!58066 0))(
  ( (Nil!57942) (Cons!57942 (h!64390 C!27892) (t!370442 List!58066)) )
))
(declare-datatypes ((IArray!30741 0))(
  ( (IArray!30742 (innerList!15428 List!58066)) )
))
(declare-datatypes ((Conc!15340 0))(
  ( (Node!15340 (left!42356 Conc!15340) (right!42686 Conc!15340) (csize!30910 Int) (cheight!15551 Int)) (Leaf!25459 (xs!18666 IArray!30741) (csize!30911 Int)) (Empty!15340) )
))
(declare-datatypes ((BalanceConc!30110 0))(
  ( (BalanceConc!30111 (c!857437 Conc!15340)) )
))
(declare-fun totalInput!1125 () BalanceConc!30110)

(declare-fun e!3134965 () Bool)

(declare-fun inv!76182 (BalanceConc!30110) Bool)

(assert (=> start!530190 (and (inv!76182 totalInput!1125) e!3134965)))

(declare-fun condSetEmpty!28534 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13821 0))(
  ( (ElementMatch!13821 (c!857438 C!27892)) (Concat!22614 (regOne!28154 Regex!13821) (regTwo!28154 Regex!13821)) (EmptyExpr!13821) (Star!13821 (reg!14150 Regex!13821)) (EmptyLang!13821) (Union!13821 (regOne!28155 Regex!13821) (regTwo!28155 Regex!13821)) )
))
(declare-datatypes ((List!58067 0))(
  ( (Nil!57943) (Cons!57943 (h!64391 Regex!13821) (t!370443 List!58067)) )
))
(declare-datatypes ((Context!6492 0))(
  ( (Context!6493 (exprs!3746 List!58067)) )
))
(declare-fun z!4710 () (InoxSet Context!6492))

(assert (=> start!530190 (= condSetEmpty!28534 (= z!4710 ((as const (Array Context!6492 Bool)) false)))))

(assert (=> start!530190 setRes!28534))

(declare-fun b!5018206 () Bool)

(declare-fun e!3134963 () Bool)

(assert (=> b!5018206 (= e!3134962 e!3134963)))

(declare-fun res!2139806 () Bool)

(assert (=> b!5018206 (=> (not res!2139806) (not e!3134963))))

(declare-fun lt!2076888 () Int)

(declare-fun knownSize!24 () Int)

(assert (=> b!5018206 (= res!2139806 (and (<= from!1212 lt!2076888) (>= knownSize!24 0) (<= knownSize!24 (- lt!2076888 from!1212))))))

(declare-fun size!38527 (BalanceConc!30110) Int)

(assert (=> b!5018206 (= lt!2076888 (size!38527 totalInput!1125))))

(declare-fun b!5018207 () Bool)

(assert (=> b!5018207 (= e!3134963 false)))

(declare-fun lt!2076887 () Bool)

(declare-fun matchZipper!589 ((InoxSet Context!6492) List!58066) Bool)

(declare-fun take!680 (List!58066 Int) List!58066)

(declare-fun drop!2484 (List!58066 Int) List!58066)

(declare-fun list!18668 (BalanceConc!30110) List!58066)

(assert (=> b!5018207 (= lt!2076887 (matchZipper!589 z!4710 (take!680 (drop!2484 (list!18668 totalInput!1125) from!1212) knownSize!24)))))

(declare-fun b!5018208 () Bool)

(declare-fun tp!1407229 () Bool)

(declare-fun inv!76183 (Conc!15340) Bool)

(assert (=> b!5018208 (= e!3134965 (and (inv!76183 (c!857437 totalInput!1125)) tp!1407229))))

(declare-fun tp!1407230 () Bool)

(declare-fun setElem!28534 () Context!6492)

(declare-fun setNonEmpty!28534 () Bool)

(declare-fun inv!76184 (Context!6492) Bool)

(assert (=> setNonEmpty!28534 (= setRes!28534 (and tp!1407230 (inv!76184 setElem!28534) e!3134964))))

(declare-fun setRest!28534 () (InoxSet Context!6492))

(assert (=> setNonEmpty!28534 (= z!4710 ((_ map or) (store ((as const (Array Context!6492 Bool)) false) setElem!28534 true) setRest!28534))))

(assert (= (and start!530190 res!2139807) b!5018206))

(assert (= (and b!5018206 res!2139806) b!5018207))

(assert (= start!530190 b!5018208))

(assert (= (and start!530190 condSetEmpty!28534) setIsEmpty!28534))

(assert (= (and start!530190 (not condSetEmpty!28534)) setNonEmpty!28534))

(assert (= setNonEmpty!28534 b!5018205))

(declare-fun m!6053494 () Bool)

(assert (=> b!5018208 m!6053494))

(declare-fun m!6053496 () Bool)

(assert (=> b!5018206 m!6053496))

(declare-fun m!6053498 () Bool)

(assert (=> b!5018207 m!6053498))

(assert (=> b!5018207 m!6053498))

(declare-fun m!6053500 () Bool)

(assert (=> b!5018207 m!6053500))

(assert (=> b!5018207 m!6053500))

(declare-fun m!6053502 () Bool)

(assert (=> b!5018207 m!6053502))

(assert (=> b!5018207 m!6053502))

(declare-fun m!6053504 () Bool)

(assert (=> b!5018207 m!6053504))

(declare-fun m!6053506 () Bool)

(assert (=> start!530190 m!6053506))

(declare-fun m!6053508 () Bool)

(assert (=> setNonEmpty!28534 m!6053508))

(check-sat (not start!530190) (not b!5018208) (not setNonEmpty!28534) (not b!5018207) (not b!5018206) (not b!5018205))
(check-sat)
