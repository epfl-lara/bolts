; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282840 () Bool)

(assert start!282840)

(declare-fun b!2906821 () Bool)

(declare-fun res!1200421 () Bool)

(declare-fun e!1834913 () Bool)

(assert (=> b!2906821 (=> (not res!1200421) (not e!1834913))))

(declare-datatypes ((C!17982 0))(
  ( (C!17983 (val!11025 Int)) )
))
(declare-datatypes ((Regex!8900 0))(
  ( (ElementMatch!8900 (c!473707 C!17982)) (Concat!14221 (regOne!18312 Regex!8900) (regTwo!18312 Regex!8900)) (EmptyExpr!8900) (Star!8900 (reg!9229 Regex!8900)) (EmptyLang!8900) (Union!8900 (regOne!18313 Regex!8900) (regTwo!18313 Regex!8900)) )
))
(declare-datatypes ((List!34709 0))(
  ( (Nil!34585) (Cons!34585 (h!40005 Regex!8900) (t!233752 List!34709)) )
))
(declare-datatypes ((Context!5456 0))(
  ( (Context!5457 (exprs!3228 List!34709)) )
))
(declare-fun z!929 () (Set Context!5456))

(declare-datatypes ((List!34710 0))(
  ( (Nil!34586) (Cons!34586 (h!40006 C!17982) (t!233753 List!34710)) )
))
(declare-fun prefix!909 () List!34710)

(declare-fun prefixMatchZipper!344 ((Set Context!5456) List!34710) Bool)

(assert (=> b!2906821 (= res!1200421 (not (prefixMatchZipper!344 z!929 prefix!909)))))

(declare-fun setIsEmpty!25742 () Bool)

(declare-fun setRes!25742 () Bool)

(assert (=> setIsEmpty!25742 setRes!25742))

(declare-fun b!2906822 () Bool)

(declare-fun s!2253 () List!34710)

(assert (=> b!2906822 (= e!1834913 (and (not (is-Nil!34586 prefix!909)) (= s!2253 Nil!34586)))))

(declare-fun res!1200420 () Bool)

(assert (=> start!282840 (=> (not res!1200420) (not e!1834913))))

(declare-fun isPrefix!2737 (List!34710 List!34710) Bool)

(assert (=> start!282840 (= res!1200420 (isPrefix!2737 prefix!909 s!2253))))

(assert (=> start!282840 e!1834913))

(declare-fun e!1834915 () Bool)

(assert (=> start!282840 e!1834915))

(declare-fun e!1834914 () Bool)

(assert (=> start!282840 e!1834914))

(declare-fun condSetEmpty!25742 () Bool)

(assert (=> start!282840 (= condSetEmpty!25742 (= z!929 (as set.empty (Set Context!5456))))))

(assert (=> start!282840 setRes!25742))

(declare-fun b!2906823 () Bool)

(declare-fun tp_is_empty!15387 () Bool)

(declare-fun tp!933673 () Bool)

(assert (=> b!2906823 (= e!1834915 (and tp_is_empty!15387 tp!933673))))

(declare-fun b!2906824 () Bool)

(declare-fun e!1834912 () Bool)

(declare-fun tp!933674 () Bool)

(assert (=> b!2906824 (= e!1834912 tp!933674)))

(declare-fun setNonEmpty!25742 () Bool)

(declare-fun tp!933675 () Bool)

(declare-fun setElem!25742 () Context!5456)

(declare-fun inv!46706 (Context!5456) Bool)

(assert (=> setNonEmpty!25742 (= setRes!25742 (and tp!933675 (inv!46706 setElem!25742) e!1834912))))

(declare-fun setRest!25742 () (Set Context!5456))

(assert (=> setNonEmpty!25742 (= z!929 (set.union (set.insert setElem!25742 (as set.empty (Set Context!5456))) setRest!25742))))

(declare-fun b!2906825 () Bool)

(declare-fun tp!933672 () Bool)

(assert (=> b!2906825 (= e!1834914 (and tp_is_empty!15387 tp!933672))))

(assert (= (and start!282840 res!1200420) b!2906821))

(assert (= (and b!2906821 res!1200421) b!2906822))

(assert (= (and start!282840 (is-Cons!34586 prefix!909)) b!2906823))

(assert (= (and start!282840 (is-Cons!34586 s!2253)) b!2906825))

(assert (= (and start!282840 condSetEmpty!25742) setIsEmpty!25742))

(assert (= (and start!282840 (not condSetEmpty!25742)) setNonEmpty!25742))

(assert (= setNonEmpty!25742 b!2906824))

(declare-fun m!3308651 () Bool)

(assert (=> b!2906821 m!3308651))

(declare-fun m!3308653 () Bool)

(assert (=> start!282840 m!3308653))

(declare-fun m!3308655 () Bool)

(assert (=> setNonEmpty!25742 m!3308655))

(push 1)

(assert (not b!2906821))

(assert (not b!2906823))

(assert (not b!2906824))

(assert (not b!2906825))

(assert tp_is_empty!15387)

(assert (not start!282840))

(assert (not setNonEmpty!25742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!836268 () Bool)

(declare-fun c!473711 () Bool)

(declare-fun isEmpty!18883 (List!34710) Bool)

(assert (=> d!836268 (= c!473711 (isEmpty!18883 prefix!909))))

(declare-fun e!1834939 () Bool)

(assert (=> d!836268 (= (prefixMatchZipper!344 z!929 prefix!909) e!1834939)))

(declare-fun b!2906857 () Bool)

(declare-fun lostCauseZipper!596 ((Set Context!5456)) Bool)

(assert (=> b!2906857 (= e!1834939 (not (lostCauseZipper!596 z!929)))))

(declare-fun b!2906858 () Bool)

(declare-fun derivationStepZipper!493 ((Set Context!5456) C!17982) (Set Context!5456))

(declare-fun head!6426 (List!34710) C!17982)

(declare-fun tail!4655 (List!34710) List!34710)

(assert (=> b!2906858 (= e!1834939 (prefixMatchZipper!344 (derivationStepZipper!493 z!929 (head!6426 prefix!909)) (tail!4655 prefix!909)))))

(assert (= (and d!836268 c!473711) b!2906857))

(assert (= (and d!836268 (not c!473711)) b!2906858))

(declare-fun m!3308677 () Bool)

(assert (=> d!836268 m!3308677))

(declare-fun m!3308679 () Bool)

(assert (=> b!2906857 m!3308679))

(declare-fun m!3308681 () Bool)

(assert (=> b!2906858 m!3308681))

(assert (=> b!2906858 m!3308681))

(declare-fun m!3308683 () Bool)

(assert (=> b!2906858 m!3308683))

(declare-fun m!3308685 () Bool)

(assert (=> b!2906858 m!3308685))

(assert (=> b!2906858 m!3308683))

(assert (=> b!2906858 m!3308685))

(declare-fun m!3308687 () Bool)

(assert (=> b!2906858 m!3308687))

(assert (=> b!2906821 d!836268))

(declare-fun b!2906870 () Bool)

(declare-fun e!1834948 () Bool)

(declare-fun size!26375 (List!34710) Int)

(assert (=> b!2906870 (= e!1834948 (>= (size!26375 s!2253) (size!26375 prefix!909)))))

(declare-fun d!836272 () Bool)

(assert (=> d!836272 e!1834948))

(declare-fun res!1200449 () Bool)

(assert (=> d!836272 (=> res!1200449 e!1834948)))

(declare-fun lt!1022618 () Bool)

(assert (=> d!836272 (= res!1200449 (not lt!1022618))))

(declare-fun e!1834947 () Bool)

(assert (=> d!836272 (= lt!1022618 e!1834947)))

(declare-fun res!1200451 () Bool)

(assert (=> d!836272 (=> res!1200451 e!1834947)))

(assert (=> d!836272 (= res!1200451 (is-Nil!34586 prefix!909))))

(assert (=> d!836272 (= (isPrefix!2737 prefix!909 s!2253) lt!1022618)))

(declare-fun b!2906869 () Bool)

(declare-fun e!1834946 () Bool)

(assert (=> b!2906869 (= e!1834946 (isPrefix!2737 (tail!4655 prefix!909) (tail!4655 s!2253)))))

(declare-fun b!2906868 () Bool)

(declare-fun res!1200450 () Bool)

(assert (=> b!2906868 (=> (not res!1200450) (not e!1834946))))

(assert (=> b!2906868 (= res!1200450 (= (head!6426 prefix!909) (head!6426 s!2253)))))

(declare-fun b!2906867 () Bool)

(assert (=> b!2906867 (= e!1834947 e!1834946)))

(declare-fun res!1200448 () Bool)

(assert (=> b!2906867 (=> (not res!1200448) (not e!1834946))))

(assert (=> b!2906867 (= res!1200448 (not (is-Nil!34586 s!2253)))))

(assert (= (and d!836272 (not res!1200451)) b!2906867))

(assert (= (and b!2906867 res!1200448) b!2906868))

(assert (= (and b!2906868 res!1200450) b!2906869))

(assert (= (and d!836272 (not res!1200449)) b!2906870))

(declare-fun m!3308689 () Bool)

(assert (=> b!2906870 m!3308689))

(declare-fun m!3308691 () Bool)

(assert (=> b!2906870 m!3308691))

(assert (=> b!2906869 m!3308685))

(declare-fun m!3308693 () Bool)

(assert (=> b!2906869 m!3308693))

(assert (=> b!2906869 m!3308685))

(assert (=> b!2906869 m!3308693))

(declare-fun m!3308695 () Bool)

(assert (=> b!2906869 m!3308695))

(assert (=> b!2906868 m!3308681))

(declare-fun m!3308697 () Bool)

(assert (=> b!2906868 m!3308697))

(assert (=> start!282840 d!836272))

(declare-fun d!836274 () Bool)

(declare-fun lambda!107676 () Int)

(declare-fun forall!7104 (List!34709 Int) Bool)

(assert (=> d!836274 (= (inv!46706 setElem!25742) (forall!7104 (exprs!3228 setElem!25742) lambda!107676))))

(declare-fun bs!524099 () Bool)

(assert (= bs!524099 d!836274))

(declare-fun m!3308699 () Bool)

(assert (=> bs!524099 m!3308699))

(assert (=> setNonEmpty!25742 d!836274))

(declare-fun b!2906875 () Bool)

(declare-fun e!1834951 () Bool)

(declare-fun tp!933690 () Bool)

(assert (=> b!2906875 (= e!1834951 (and tp_is_empty!15387 tp!933690))))

(assert (=> b!2906825 (= tp!933672 e!1834951)))

(assert (= (and b!2906825 (is-Cons!34586 (t!233753 s!2253))) b!2906875))

(declare-fun condSetEmpty!25748 () Bool)

(assert (=> setNonEmpty!25742 (= condSetEmpty!25748 (= setRest!25742 (as set.empty (Set Context!5456))))))

(declare-fun setRes!25748 () Bool)

(assert (=> setNonEmpty!25742 (= tp!933675 setRes!25748)))

(declare-fun setIsEmpty!25748 () Bool)

(assert (=> setIsEmpty!25748 setRes!25748))

(declare-fun setNonEmpty!25748 () Bool)

(declare-fun tp!933696 () Bool)

(declare-fun e!1834954 () Bool)

(declare-fun setElem!25748 () Context!5456)

(assert (=> setNonEmpty!25748 (= setRes!25748 (and tp!933696 (inv!46706 setElem!25748) e!1834954))))

(declare-fun setRest!25748 () (Set Context!5456))

(assert (=> setNonEmpty!25748 (= setRest!25742 (set.union (set.insert setElem!25748 (as set.empty (Set Context!5456))) setRest!25748))))

(declare-fun b!2906880 () Bool)

(declare-fun tp!933695 () Bool)

(assert (=> b!2906880 (= e!1834954 tp!933695)))

(assert (= (and setNonEmpty!25742 condSetEmpty!25748) setIsEmpty!25748))

(assert (= (and setNonEmpty!25742 (not condSetEmpty!25748)) setNonEmpty!25748))

(assert (= setNonEmpty!25748 b!2906880))

(declare-fun m!3308701 () Bool)

(assert (=> setNonEmpty!25748 m!3308701))

(declare-fun b!2906885 () Bool)

(declare-fun e!1834957 () Bool)

(declare-fun tp!933701 () Bool)

(declare-fun tp!933702 () Bool)

(assert (=> b!2906885 (= e!1834957 (and tp!933701 tp!933702))))

(assert (=> b!2906824 (= tp!933674 e!1834957)))

(assert (= (and b!2906824 (is-Cons!34585 (exprs!3228 setElem!25742))) b!2906885))

(declare-fun b!2906886 () Bool)

(declare-fun e!1834958 () Bool)

(declare-fun tp!933703 () Bool)

(assert (=> b!2906886 (= e!1834958 (and tp_is_empty!15387 tp!933703))))

(assert (=> b!2906823 (= tp!933673 e!1834958)))

(assert (= (and b!2906823 (is-Cons!34586 (t!233753 prefix!909))) b!2906886))

(push 1)

(assert (not d!836274))

(assert (not b!2906870))

(assert (not b!2906869))

(assert (not b!2906880))

(assert (not b!2906857))

(assert (not d!836268))

(assert (not b!2906885))

(assert (not b!2906858))

(assert (not setNonEmpty!25748))

(assert tp_is_empty!15387)

(assert (not b!2906875))

(assert (not b!2906868))

(assert (not b!2906886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

