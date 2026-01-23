; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536018 () Bool)

(assert start!536018)

(declare-fun setIsEmpty!29062 () Bool)

(declare-fun setRes!29062 () Bool)

(assert (=> setIsEmpty!29062 setRes!29062))

(declare-fun res!2165968 () Bool)

(declare-fun e!3173209 () Bool)

(assert (=> start!536018 (=> (not res!2165968) (not e!3173209))))

(declare-fun from!978 () Int)

(assert (=> start!536018 (= res!2165968 (>= from!978 0))))

(assert (=> start!536018 e!3173209))

(assert (=> start!536018 true))

(declare-fun condSetEmpty!29062 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28148 0))(
  ( (C!28149 (val!23682 Int)) )
))
(declare-datatypes ((Regex!13949 0))(
  ( (ElementMatch!13949 (c!874218 C!28148)) (Concat!22742 (regOne!28410 Regex!13949) (regTwo!28410 Regex!13949)) (EmptyExpr!13949) (Star!13949 (reg!14278 Regex!13949)) (EmptyLang!13949) (Union!13949 (regOne!28411 Regex!13949) (regTwo!28411 Regex!13949)) )
))
(declare-datatypes ((List!58597 0))(
  ( (Nil!58473) (Cons!58473 (h!64921 Regex!13949) (t!371460 List!58597)) )
))
(declare-datatypes ((Context!6748 0))(
  ( (Context!6749 (exprs!3874 List!58597)) )
))
(declare-fun z!3736 () (InoxSet Context!6748))

(assert (=> start!536018 (= condSetEmpty!29062 (= z!3736 ((as const (Array Context!6748 Bool)) false)))))

(assert (=> start!536018 setRes!29062))

(declare-datatypes ((List!58598 0))(
  ( (Nil!58474) (Cons!58474 (h!64922 C!28148) (t!371461 List!58598)) )
))
(declare-datatypes ((IArray!31257 0))(
  ( (IArray!31258 (innerList!15686 List!58598)) )
))
(declare-datatypes ((Conc!15598 0))(
  ( (Node!15598 (left!42867 Conc!15598) (right!43197 Conc!15598) (csize!31426 Int) (cheight!15809 Int)) (Leaf!25902 (xs!18980 IArray!31257) (csize!31427 Int)) (Empty!15598) )
))
(declare-datatypes ((BalanceConc!30386 0))(
  ( (BalanceConc!30387 (c!874219 Conc!15598)) )
))
(declare-fun totalInput!789 () BalanceConc!30386)

(declare-fun e!3173207 () Bool)

(declare-fun inv!77739 (BalanceConc!30386) Bool)

(assert (=> start!536018 (and (inv!77739 totalInput!789) e!3173207)))

(declare-fun b!5087932 () Bool)

(declare-fun e!3173206 () Bool)

(declare-fun tp!1418397 () Bool)

(assert (=> b!5087932 (= e!3173206 tp!1418397)))

(declare-fun setElem!29062 () Context!6748)

(declare-fun tp!1418399 () Bool)

(declare-fun setNonEmpty!29062 () Bool)

(declare-fun inv!77740 (Context!6748) Bool)

(assert (=> setNonEmpty!29062 (= setRes!29062 (and tp!1418399 (inv!77740 setElem!29062) e!3173206))))

(declare-fun setRest!29062 () (InoxSet Context!6748))

(assert (=> setNonEmpty!29062 (= z!3736 ((_ map or) (store ((as const (Array Context!6748 Bool)) false) setElem!29062 true) setRest!29062))))

(declare-fun b!5087933 () Bool)

(declare-fun res!2165967 () Bool)

(declare-fun e!3173210 () Bool)

(assert (=> b!5087933 (=> (not res!2165967) (not e!3173210))))

(declare-fun e!3173208 () Bool)

(assert (=> b!5087933 (= res!2165967 e!3173208)))

(declare-fun res!2165966 () Bool)

(assert (=> b!5087933 (=> res!2165966 e!3173208)))

(declare-fun totalInputSize!236 () Int)

(assert (=> b!5087933 (= res!2165966 (= from!978 totalInputSize!236))))

(declare-fun b!5087934 () Bool)

(declare-fun tp!1418398 () Bool)

(declare-fun inv!77741 (Conc!15598) Bool)

(assert (=> b!5087934 (= e!3173207 (and (inv!77741 (c!874219 totalInput!789)) tp!1418398))))

(declare-fun b!5087935 () Bool)

(assert (=> b!5087935 (= e!3173209 e!3173210)))

(declare-fun res!2165969 () Bool)

(assert (=> b!5087935 (=> (not res!2165969) (not e!3173210))))

(declare-fun lt!2091919 () Int)

(assert (=> b!5087935 (= res!2165969 (and (<= from!978 lt!2091919) (= totalInputSize!236 lt!2091919)))))

(declare-fun size!39137 (BalanceConc!30386) Int)

(assert (=> b!5087935 (= lt!2091919 (size!39137 totalInput!789))))

(declare-fun b!5087936 () Bool)

(assert (=> b!5087936 (= e!3173210 (> 0 (- totalInputSize!236 from!978)))))

(declare-fun b!5087937 () Bool)

(declare-fun lostCauseZipper!961 ((InoxSet Context!6748)) Bool)

(assert (=> b!5087937 (= e!3173208 (lostCauseZipper!961 z!3736))))

(assert (= (and start!536018 res!2165968) b!5087935))

(assert (= (and b!5087935 res!2165969) b!5087933))

(assert (= (and b!5087933 (not res!2165966)) b!5087937))

(assert (= (and b!5087933 res!2165967) b!5087936))

(assert (= (and start!536018 condSetEmpty!29062) setIsEmpty!29062))

(assert (= (and start!536018 (not condSetEmpty!29062)) setNonEmpty!29062))

(assert (= setNonEmpty!29062 b!5087932))

(assert (= start!536018 b!5087934))

(declare-fun m!6145924 () Bool)

(assert (=> setNonEmpty!29062 m!6145924))

(declare-fun m!6145926 () Bool)

(assert (=> b!5087934 m!6145926))

(declare-fun m!6145928 () Bool)

(assert (=> b!5087937 m!6145928))

(declare-fun m!6145930 () Bool)

(assert (=> b!5087935 m!6145930))

(declare-fun m!6145932 () Bool)

(assert (=> start!536018 m!6145932))

(check-sat (not b!5087937) (not b!5087934) (not b!5087932) (not b!5087935) (not start!536018) (not setNonEmpty!29062))
(check-sat)
