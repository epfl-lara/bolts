; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209582 () Bool)

(assert start!209582)

(declare-fun e!1381855 () Bool)

(declare-fun setNonEmpty!17986 () Bool)

(declare-datatypes ((C!12064 0))(
  ( (C!12065 (val!7018 Int)) )
))
(declare-datatypes ((Regex!5959 0))(
  ( (ElementMatch!5959 (c!341854 C!12064)) (Concat!10261 (regOne!12430 Regex!5959) (regTwo!12430 Regex!5959)) (EmptyExpr!5959) (Star!5959 (reg!6288 Regex!5959)) (EmptyLang!5959) (Union!5959 (regOne!12431 Regex!5959) (regTwo!12431 Regex!5959)) )
))
(declare-datatypes ((List!25090 0))(
  ( (Nil!25006) (Cons!25006 (h!30407 Regex!5959) (t!197638 List!25090)) )
))
(declare-datatypes ((Context!3058 0))(
  ( (Context!3059 (exprs!2029 List!25090)) )
))
(declare-fun setElem!17986 () Context!3058)

(declare-fun setRes!17986 () Bool)

(declare-fun tp!673509 () Bool)

(declare-fun inv!33118 (Context!3058) Bool)

(assert (=> setNonEmpty!17986 (= setRes!17986 (and tp!673509 (inv!33118 setElem!17986) e!1381855))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4055 () (InoxSet Context!3058))

(declare-fun setRest!17986 () (InoxSet Context!3058))

(assert (=> setNonEmpty!17986 (= z!4055 ((_ map or) (store ((as const (Array Context!3058 Bool)) false) setElem!17986 true) setRest!17986))))

(declare-fun b!2159733 () Bool)

(declare-fun res!930577 () Bool)

(declare-fun e!1381857 () Bool)

(assert (=> b!2159733 (=> (not res!930577) (not e!1381857))))

(declare-fun r!12534 () Regex!5959)

(declare-datatypes ((List!25091 0))(
  ( (Nil!25007) (Cons!25007 (h!30408 Context!3058) (t!197639 List!25091)) )
))
(declare-fun unfocusZipper!66 (List!25091) Regex!5959)

(declare-fun toList!1142 ((InoxSet Context!3058)) List!25091)

(assert (=> b!2159733 (= res!930577 (= (unfocusZipper!66 (toList!1142 z!4055)) r!12534))))

(declare-fun res!930576 () Bool)

(assert (=> start!209582 (=> (not res!930576) (not e!1381857))))

(declare-fun validRegex!2235 (Regex!5959) Bool)

(assert (=> start!209582 (= res!930576 (validRegex!2235 r!12534))))

(assert (=> start!209582 e!1381857))

(declare-fun e!1381856 () Bool)

(assert (=> start!209582 e!1381856))

(declare-fun condSetEmpty!17986 () Bool)

(assert (=> start!209582 (= condSetEmpty!17986 (= z!4055 ((as const (Array Context!3058 Bool)) false)))))

(assert (=> start!209582 setRes!17986))

(declare-datatypes ((List!25092 0))(
  ( (Nil!25008) (Cons!25008 (h!30409 C!12064) (t!197640 List!25092)) )
))
(declare-datatypes ((IArray!16195 0))(
  ( (IArray!16196 (innerList!8155 List!25092)) )
))
(declare-datatypes ((Conc!8095 0))(
  ( (Node!8095 (left!19253 Conc!8095) (right!19583 Conc!8095) (csize!16420 Int) (cheight!8306 Int)) (Leaf!11842 (xs!11037 IArray!16195) (csize!16421 Int)) (Empty!8095) )
))
(declare-datatypes ((BalanceConc!15952 0))(
  ( (BalanceConc!15953 (c!341855 Conc!8095)) )
))
(declare-fun input!5540 () BalanceConc!15952)

(declare-fun e!1381854 () Bool)

(declare-fun inv!33119 (BalanceConc!15952) Bool)

(assert (=> start!209582 (and (inv!33119 input!5540) e!1381854)))

(declare-fun totalInput!977 () BalanceConc!15952)

(declare-fun e!1381853 () Bool)

(assert (=> start!209582 (and (inv!33119 totalInput!977) e!1381853)))

(declare-fun b!2159734 () Bool)

(declare-fun tp!673513 () Bool)

(declare-fun inv!33120 (Conc!8095) Bool)

(assert (=> b!2159734 (= e!1381853 (and (inv!33120 (c!341855 totalInput!977)) tp!673513))))

(declare-fun b!2159735 () Bool)

(declare-fun tp_is_empty!9525 () Bool)

(assert (=> b!2159735 (= e!1381856 tp_is_empty!9525)))

(declare-fun b!2159736 () Bool)

(assert (=> b!2159736 (= e!1381857 false)))

(declare-fun lt!802718 () Bool)

(declare-fun isSuffix!626 (List!25092 List!25092) Bool)

(declare-fun list!9578 (BalanceConc!15952) List!25092)

(assert (=> b!2159736 (= lt!802718 (isSuffix!626 (list!9578 input!5540) (list!9578 totalInput!977)))))

(declare-fun b!2159737 () Bool)

(declare-fun tp!673506 () Bool)

(assert (=> b!2159737 (= e!1381854 (and (inv!33120 (c!341855 input!5540)) tp!673506))))

(declare-fun b!2159738 () Bool)

(declare-fun tp!673510 () Bool)

(assert (=> b!2159738 (= e!1381855 tp!673510)))

(declare-fun b!2159739 () Bool)

(declare-fun tp!673512 () Bool)

(declare-fun tp!673507 () Bool)

(assert (=> b!2159739 (= e!1381856 (and tp!673512 tp!673507))))

(declare-fun b!2159740 () Bool)

(declare-fun tp!673514 () Bool)

(declare-fun tp!673508 () Bool)

(assert (=> b!2159740 (= e!1381856 (and tp!673514 tp!673508))))

(declare-fun setIsEmpty!17986 () Bool)

(assert (=> setIsEmpty!17986 setRes!17986))

(declare-fun b!2159741 () Bool)

(declare-fun tp!673511 () Bool)

(assert (=> b!2159741 (= e!1381856 tp!673511)))

(assert (= (and start!209582 res!930576) b!2159733))

(assert (= (and b!2159733 res!930577) b!2159736))

(get-info :version)

(assert (= (and start!209582 ((_ is ElementMatch!5959) r!12534)) b!2159735))

(assert (= (and start!209582 ((_ is Concat!10261) r!12534)) b!2159740))

(assert (= (and start!209582 ((_ is Star!5959) r!12534)) b!2159741))

(assert (= (and start!209582 ((_ is Union!5959) r!12534)) b!2159739))

(assert (= (and start!209582 condSetEmpty!17986) setIsEmpty!17986))

(assert (= (and start!209582 (not condSetEmpty!17986)) setNonEmpty!17986))

(assert (= setNonEmpty!17986 b!2159738))

(assert (= start!209582 b!2159737))

(assert (= start!209582 b!2159734))

(declare-fun m!2599469 () Bool)

(assert (=> start!209582 m!2599469))

(declare-fun m!2599471 () Bool)

(assert (=> start!209582 m!2599471))

(declare-fun m!2599473 () Bool)

(assert (=> start!209582 m!2599473))

(declare-fun m!2599475 () Bool)

(assert (=> b!2159737 m!2599475))

(declare-fun m!2599477 () Bool)

(assert (=> b!2159733 m!2599477))

(assert (=> b!2159733 m!2599477))

(declare-fun m!2599479 () Bool)

(assert (=> b!2159733 m!2599479))

(declare-fun m!2599481 () Bool)

(assert (=> b!2159736 m!2599481))

(declare-fun m!2599483 () Bool)

(assert (=> b!2159736 m!2599483))

(assert (=> b!2159736 m!2599481))

(assert (=> b!2159736 m!2599483))

(declare-fun m!2599485 () Bool)

(assert (=> b!2159736 m!2599485))

(declare-fun m!2599487 () Bool)

(assert (=> setNonEmpty!17986 m!2599487))

(declare-fun m!2599489 () Bool)

(assert (=> b!2159734 m!2599489))

(check-sat (not b!2159734) (not setNonEmpty!17986) (not b!2159733) (not b!2159737) (not b!2159739) (not b!2159740) (not b!2159736) tp_is_empty!9525 (not b!2159738) (not start!209582) (not b!2159741))
(check-sat)
