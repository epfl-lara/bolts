; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536014 () Bool)

(assert start!536014)

(declare-fun tp!1418380 () Bool)

(declare-fun e!3173179 () Bool)

(declare-datatypes ((C!28144 0))(
  ( (C!28145 (val!23680 Int)) )
))
(declare-datatypes ((Regex!13947 0))(
  ( (ElementMatch!13947 (c!874214 C!28144)) (Concat!22740 (regOne!28406 Regex!13947) (regTwo!28406 Regex!13947)) (EmptyExpr!13947) (Star!13947 (reg!14276 Regex!13947)) (EmptyLang!13947) (Union!13947 (regOne!28407 Regex!13947) (regTwo!28407 Regex!13947)) )
))
(declare-datatypes ((List!58593 0))(
  ( (Nil!58469) (Cons!58469 (h!64917 Regex!13947) (t!371456 List!58593)) )
))
(declare-datatypes ((Context!6744 0))(
  ( (Context!6745 (exprs!3872 List!58593)) )
))
(declare-fun setElem!29056 () Context!6744)

(declare-fun setNonEmpty!29056 () Bool)

(declare-fun setRes!29056 () Bool)

(declare-fun inv!77730 (Context!6744) Bool)

(assert (=> setNonEmpty!29056 (= setRes!29056 (and tp!1418380 (inv!77730 setElem!29056) e!3173179))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3736 () (InoxSet Context!6744))

(declare-fun setRest!29056 () (InoxSet Context!6744))

(assert (=> setNonEmpty!29056 (= z!3736 ((_ map or) (store ((as const (Array Context!6744 Bool)) false) setElem!29056 true) setRest!29056))))

(declare-fun b!5087898 () Bool)

(declare-fun e!3173178 () Bool)

(declare-fun e!3173180 () Bool)

(assert (=> b!5087898 (= e!3173178 e!3173180)))

(declare-fun res!2165943 () Bool)

(assert (=> b!5087898 (=> (not res!2165943) (not e!3173180))))

(declare-fun totalInputSize!236 () Int)

(declare-fun from!978 () Int)

(declare-fun lt!2091913 () Int)

(assert (=> b!5087898 (= res!2165943 (and (<= from!978 lt!2091913) (= totalInputSize!236 lt!2091913) (not (= from!978 totalInputSize!236))))))

(declare-datatypes ((List!58594 0))(
  ( (Nil!58470) (Cons!58470 (h!64918 C!28144) (t!371457 List!58594)) )
))
(declare-datatypes ((IArray!31253 0))(
  ( (IArray!31254 (innerList!15684 List!58594)) )
))
(declare-datatypes ((Conc!15596 0))(
  ( (Node!15596 (left!42864 Conc!15596) (right!43194 Conc!15596) (csize!31422 Int) (cheight!15807 Int)) (Leaf!25899 (xs!18978 IArray!31253) (csize!31423 Int)) (Empty!15596) )
))
(declare-datatypes ((BalanceConc!30382 0))(
  ( (BalanceConc!30383 (c!874215 Conc!15596)) )
))
(declare-fun totalInput!789 () BalanceConc!30382)

(declare-fun size!39135 (BalanceConc!30382) Int)

(assert (=> b!5087898 (= lt!2091913 (size!39135 totalInput!789))))

(declare-fun setIsEmpty!29056 () Bool)

(assert (=> setIsEmpty!29056 setRes!29056))

(declare-fun b!5087899 () Bool)

(declare-fun res!2165945 () Bool)

(assert (=> b!5087899 (=> (not res!2165945) (not e!3173180))))

(declare-fun lostCauseZipper!959 ((InoxSet Context!6744)) Bool)

(assert (=> b!5087899 (= res!2165945 (not (lostCauseZipper!959 z!3736)))))

(declare-fun b!5087897 () Bool)

(declare-fun tp!1418379 () Bool)

(assert (=> b!5087897 (= e!3173179 tp!1418379)))

(declare-fun res!2165944 () Bool)

(assert (=> start!536014 (=> (not res!2165944) (not e!3173178))))

(assert (=> start!536014 (= res!2165944 (>= from!978 0))))

(assert (=> start!536014 e!3173178))

(assert (=> start!536014 true))

(declare-fun condSetEmpty!29056 () Bool)

(assert (=> start!536014 (= condSetEmpty!29056 (= z!3736 ((as const (Array Context!6744 Bool)) false)))))

(assert (=> start!536014 setRes!29056))

(declare-fun e!3173177 () Bool)

(declare-fun inv!77731 (BalanceConc!30382) Bool)

(assert (=> start!536014 (and (inv!77731 totalInput!789) e!3173177)))

(declare-fun b!5087900 () Bool)

(declare-fun tp!1418381 () Bool)

(declare-fun inv!77732 (Conc!15596) Bool)

(assert (=> b!5087900 (= e!3173177 (and (inv!77732 (c!874215 totalInput!789)) tp!1418381))))

(declare-fun b!5087901 () Bool)

(assert (=> b!5087901 (= e!3173180 false)))

(declare-fun lt!2091912 () C!28144)

(declare-fun apply!14224 (BalanceConc!30382 Int) C!28144)

(assert (=> b!5087901 (= lt!2091912 (apply!14224 totalInput!789 from!978))))

(assert (= (and start!536014 res!2165944) b!5087898))

(assert (= (and b!5087898 res!2165943) b!5087899))

(assert (= (and b!5087899 res!2165945) b!5087901))

(assert (= (and start!536014 condSetEmpty!29056) setIsEmpty!29056))

(assert (= (and start!536014 (not condSetEmpty!29056)) setNonEmpty!29056))

(assert (= setNonEmpty!29056 b!5087897))

(assert (= start!536014 b!5087900))

(declare-fun m!6145902 () Bool)

(assert (=> b!5087898 m!6145902))

(declare-fun m!6145904 () Bool)

(assert (=> b!5087899 m!6145904))

(declare-fun m!6145906 () Bool)

(assert (=> setNonEmpty!29056 m!6145906))

(declare-fun m!6145908 () Bool)

(assert (=> b!5087900 m!6145908))

(declare-fun m!6145910 () Bool)

(assert (=> b!5087901 m!6145910))

(declare-fun m!6145912 () Bool)

(assert (=> start!536014 m!6145912))

(check-sat (not b!5087899) (not b!5087898) (not setNonEmpty!29056) (not start!536014) (not b!5087901) (not b!5087900) (not b!5087897))
(check-sat)
