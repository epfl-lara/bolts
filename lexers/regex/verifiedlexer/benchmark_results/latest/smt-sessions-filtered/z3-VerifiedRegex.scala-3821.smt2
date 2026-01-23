; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212534 () Bool)

(assert start!212534)

(declare-fun e!1400264 () Bool)

(declare-datatypes ((C!12364 0))(
  ( (C!12365 (val!7168 Int)) )
))
(declare-datatypes ((Regex!6109 0))(
  ( (ElementMatch!6109 (c!348542 C!12364)) (Concat!10411 (regOne!12730 Regex!6109) (regTwo!12730 Regex!6109)) (EmptyExpr!6109) (Star!6109 (reg!6438 Regex!6109)) (EmptyLang!6109) (Union!6109 (regOne!12731 Regex!6109) (regTwo!12731 Regex!6109)) )
))
(declare-datatypes ((List!25491 0))(
  ( (Nil!25407) (Cons!25407 (h!30808 Regex!6109) (t!198089 List!25491)) )
))
(declare-datatypes ((Context!3358 0))(
  ( (Context!3359 (exprs!2179 List!25491)) )
))
(declare-fun setElem!18552 () Context!3358)

(declare-fun tp!683072 () Bool)

(declare-fun setNonEmpty!18552 () Bool)

(declare-fun setRes!18552 () Bool)

(declare-fun inv!33891 (Context!3358) Bool)

(assert (=> setNonEmpty!18552 (= setRes!18552 (and tp!683072 (inv!33891 setElem!18552) e!1400264))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3358))

(declare-fun setRest!18552 () (InoxSet Context!3358))

(assert (=> setNonEmpty!18552 (= z!3955 ((_ map or) (store ((as const (Array Context!3358 Bool)) false) setElem!18552 true) setRest!18552))))

(declare-fun setIsEmpty!18552 () Bool)

(assert (=> setIsEmpty!18552 setRes!18552))

(declare-fun b!2191210 () Bool)

(declare-fun res!941784 () Bool)

(declare-fun e!1400266 () Bool)

(assert (=> b!2191210 (=> (not res!941784) (not e!1400266))))

(declare-fun lostCauseZipper!227 ((InoxSet Context!3358)) Bool)

(assert (=> b!2191210 (= res!941784 (not (lostCauseZipper!227 z!3955)))))

(declare-datatypes ((List!25492 0))(
  ( (Nil!25408) (Cons!25408 (h!30809 C!12364) (t!198090 List!25492)) )
))
(declare-datatypes ((IArray!16495 0))(
  ( (IArray!16496 (innerList!8305 List!25492)) )
))
(declare-datatypes ((Conc!8245 0))(
  ( (Node!8245 (left!19494 Conc!8245) (right!19824 Conc!8245) (csize!16720 Int) (cheight!8456 Int)) (Leaf!12067 (xs!11187 IArray!16495) (csize!16721 Int)) (Empty!8245) )
))
(declare-datatypes ((BalanceConc!16252 0))(
  ( (BalanceConc!16253 (c!348543 Conc!8245)) )
))
(declare-fun totalInput!923 () BalanceConc!16252)

(declare-fun b!2191211 () Bool)

(declare-fun from!1114 () Int)

(declare-fun lt!818875 () Int)

(declare-fun e!1400268 () Bool)

(declare-fun lt!818882 () (InoxSet Context!3358))

(declare-fun matchZipper!209 ((InoxSet Context!3358) List!25492) Bool)

(declare-fun take!301 (List!25492 Int) List!25492)

(declare-fun drop!1311 (List!25492 Int) List!25492)

(declare-fun list!9756 (BalanceConc!16252) List!25492)

(assert (=> b!2191211 (= e!1400268 (matchZipper!209 lt!818882 (take!301 (drop!1311 (list!9756 totalInput!923) (+ 1 from!1114)) lt!818875)))))

(declare-fun b!2191212 () Bool)

(declare-fun e!1400267 () Bool)

(assert (=> b!2191212 (= e!1400266 e!1400267)))

(declare-fun res!941783 () Bool)

(assert (=> b!2191212 (=> (not res!941783) (not e!1400267))))

(declare-fun lt!818880 () Int)

(declare-fun lt!818881 () Int)

(assert (=> b!2191212 (= res!941783 (= lt!818880 lt!818881))))

(declare-fun lt!818878 () Int)

(declare-fun lt!818879 () Int)

(declare-fun furthestNullablePosition!279 ((InoxSet Context!3358) Int BalanceConc!16252 Int Int) Int)

(assert (=> b!2191212 (= lt!818881 (furthestNullablePosition!279 lt!818882 (+ 1 from!1114) totalInput!923 lt!818879 lt!818878))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191212 (= lt!818880 (furthestNullablePosition!279 z!3955 from!1114 totalInput!923 lt!818879 lastNullablePos!193))))

(declare-fun lt!818876 () Bool)

(assert (=> b!2191212 (= lt!818878 (ite lt!818876 from!1114 lastNullablePos!193))))

(declare-fun nullableZipper!389 ((InoxSet Context!3358)) Bool)

(assert (=> b!2191212 (= lt!818876 (nullableZipper!389 lt!818882))))

(declare-fun derivationStepZipper!186 ((InoxSet Context!3358) C!12364) (InoxSet Context!3358))

(declare-fun apply!6142 (BalanceConc!16252 Int) C!12364)

(assert (=> b!2191212 (= lt!818882 (derivationStepZipper!186 z!3955 (apply!6142 totalInput!923 from!1114)))))

(declare-fun res!941785 () Bool)

(declare-fun e!1400269 () Bool)

(assert (=> start!212534 (=> (not res!941785) (not e!1400269))))

(assert (=> start!212534 (= res!941785 (>= from!1114 0))))

(assert (=> start!212534 e!1400269))

(assert (=> start!212534 true))

(declare-fun e!1400265 () Bool)

(declare-fun inv!33892 (BalanceConc!16252) Bool)

(assert (=> start!212534 (and (inv!33892 totalInput!923) e!1400265)))

(declare-fun condSetEmpty!18552 () Bool)

(assert (=> start!212534 (= condSetEmpty!18552 (= z!3955 ((as const (Array Context!3358 Bool)) false)))))

(assert (=> start!212534 setRes!18552))

(declare-fun b!2191213 () Bool)

(assert (=> b!2191213 (= e!1400267 (not (or (> lt!818875 0) (> lt!818881 from!1114) (< lt!818881 lt!818878) (< lt!818878 lastNullablePos!193) (> lt!818878 from!1114) (let ((bdg!82495 (= lt!818878 from!1114))) (or (and (not bdg!82495) (not (= lt!818878 lastNullablePos!193))) (not (= lt!818878 lastNullablePos!193)) (>= lt!818878 from!1114) (> lt!818880 from!1114) (let ((bdg!82496 (+ 1 (- lt!818880 from!1114)))) (or (> bdg!82496 1) (not (= bdg!82496 1)) (not (= lt!818880 from!1114)) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818879) (< lt!818878 (- 1)) (>= lt!818878 (+ 1 from!1114)) (not lt!818876) bdg!82495)))))))))

(assert (=> b!2191213 e!1400268))

(declare-fun res!941787 () Bool)

(assert (=> b!2191213 (=> res!941787 e!1400268)))

(assert (=> b!2191213 (= res!941787 (<= lt!818875 0))))

(assert (=> b!2191213 (= lt!818875 (+ 1 (- lt!818881 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38513 0))(
  ( (Unit!38514) )
))
(declare-fun lt!818877 () Unit!38513)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!114 ((InoxSet Context!3358) Int BalanceConc!16252 Int) Unit!38513)

(assert (=> b!2191213 (= lt!818877 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!114 lt!818882 (+ 1 from!1114) totalInput!923 lt!818878))))

(declare-fun b!2191214 () Bool)

(declare-fun res!941786 () Bool)

(assert (=> b!2191214 (=> (not res!941786) (not e!1400266))))

(declare-fun e!1400263 () Bool)

(assert (=> b!2191214 (= res!941786 e!1400263)))

(declare-fun res!941782 () Bool)

(assert (=> b!2191214 (=> res!941782 e!1400263)))

(assert (=> b!2191214 (= res!941782 (not (nullableZipper!389 z!3955)))))

(declare-fun b!2191215 () Bool)

(assert (=> b!2191215 (= e!1400269 e!1400266)))

(declare-fun res!941780 () Bool)

(assert (=> b!2191215 (=> (not res!941780) (not e!1400266))))

(assert (=> b!2191215 (= res!941780 (and (<= from!1114 lt!818879) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19825 (BalanceConc!16252) Int)

(assert (=> b!2191215 (= lt!818879 (size!19825 totalInput!923))))

(declare-fun b!2191216 () Bool)

(declare-fun res!941781 () Bool)

(assert (=> b!2191216 (=> (not res!941781) (not e!1400266))))

(assert (=> b!2191216 (= res!941781 (not (= from!1114 lt!818879)))))

(declare-fun b!2191217 () Bool)

(declare-fun tp!683073 () Bool)

(declare-fun inv!33893 (Conc!8245) Bool)

(assert (=> b!2191217 (= e!1400265 (and (inv!33893 (c!348543 totalInput!923)) tp!683073))))

(declare-fun b!2191218 () Bool)

(assert (=> b!2191218 (= e!1400263 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2191219 () Bool)

(declare-fun tp!683074 () Bool)

(assert (=> b!2191219 (= e!1400264 tp!683074)))

(assert (= (and start!212534 res!941785) b!2191215))

(assert (= (and b!2191215 res!941780) b!2191214))

(assert (= (and b!2191214 (not res!941782)) b!2191218))

(assert (= (and b!2191214 res!941786) b!2191216))

(assert (= (and b!2191216 res!941781) b!2191210))

(assert (= (and b!2191210 res!941784) b!2191212))

(assert (= (and b!2191212 res!941783) b!2191213))

(assert (= (and b!2191213 (not res!941787)) b!2191211))

(assert (= start!212534 b!2191217))

(assert (= (and start!212534 condSetEmpty!18552) setIsEmpty!18552))

(assert (= (and start!212534 (not condSetEmpty!18552)) setNonEmpty!18552))

(assert (= setNonEmpty!18552 b!2191219))

(declare-fun m!2634051 () Bool)

(assert (=> start!212534 m!2634051))

(declare-fun m!2634053 () Bool)

(assert (=> b!2191217 m!2634053))

(declare-fun m!2634055 () Bool)

(assert (=> b!2191213 m!2634055))

(declare-fun m!2634057 () Bool)

(assert (=> b!2191215 m!2634057))

(declare-fun m!2634059 () Bool)

(assert (=> b!2191211 m!2634059))

(assert (=> b!2191211 m!2634059))

(declare-fun m!2634061 () Bool)

(assert (=> b!2191211 m!2634061))

(assert (=> b!2191211 m!2634061))

(declare-fun m!2634063 () Bool)

(assert (=> b!2191211 m!2634063))

(assert (=> b!2191211 m!2634063))

(declare-fun m!2634065 () Bool)

(assert (=> b!2191211 m!2634065))

(declare-fun m!2634067 () Bool)

(assert (=> b!2191214 m!2634067))

(declare-fun m!2634069 () Bool)

(assert (=> setNonEmpty!18552 m!2634069))

(declare-fun m!2634071 () Bool)

(assert (=> b!2191210 m!2634071))

(declare-fun m!2634073 () Bool)

(assert (=> b!2191212 m!2634073))

(declare-fun m!2634075 () Bool)

(assert (=> b!2191212 m!2634075))

(declare-fun m!2634077 () Bool)

(assert (=> b!2191212 m!2634077))

(declare-fun m!2634079 () Bool)

(assert (=> b!2191212 m!2634079))

(assert (=> b!2191212 m!2634079))

(declare-fun m!2634081 () Bool)

(assert (=> b!2191212 m!2634081))

(check-sat (not b!2191210) (not b!2191219) (not b!2191215) (not b!2191217) (not start!212534) (not setNonEmpty!18552) (not b!2191214) (not b!2191212) (not b!2191213) (not b!2191211))
(check-sat)
