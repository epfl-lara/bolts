; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282860 () Bool)

(assert start!282860)

(declare-fun b!2906961 () Bool)

(declare-fun e!1835007 () Bool)

(declare-fun tp_is_empty!15395 () Bool)

(declare-fun tp!933754 () Bool)

(assert (=> b!2906961 (= e!1835007 (and tp_is_empty!15395 tp!933754))))

(declare-fun b!2906962 () Bool)

(declare-fun e!1835006 () Bool)

(declare-fun tp!933755 () Bool)

(assert (=> b!2906962 (= e!1835006 (and tp_is_empty!15395 tp!933755))))

(declare-fun b!2906963 () Bool)

(declare-fun e!1835004 () Bool)

(declare-fun tp!933752 () Bool)

(assert (=> b!2906963 (= e!1835004 tp!933752)))

(declare-fun tp!933753 () Bool)

(declare-fun setRes!25760 () Bool)

(declare-fun setNonEmpty!25760 () Bool)

(declare-datatypes ((C!17990 0))(
  ( (C!17991 (val!11029 Int)) )
))
(declare-datatypes ((Regex!8904 0))(
  ( (ElementMatch!8904 (c!473717 C!17990)) (Concat!14225 (regOne!18320 Regex!8904) (regTwo!18320 Regex!8904)) (EmptyExpr!8904) (Star!8904 (reg!9233 Regex!8904)) (EmptyLang!8904) (Union!8904 (regOne!18321 Regex!8904) (regTwo!18321 Regex!8904)) )
))
(declare-datatypes ((List!34717 0))(
  ( (Nil!34593) (Cons!34593 (h!40013 Regex!8904) (t!233760 List!34717)) )
))
(declare-datatypes ((Context!5464 0))(
  ( (Context!5465 (exprs!3232 List!34717)) )
))
(declare-fun setElem!25760 () Context!5464)

(declare-fun inv!46716 (Context!5464) Bool)

(assert (=> setNonEmpty!25760 (= setRes!25760 (and tp!933753 (inv!46716 setElem!25760) e!1835004))))

(declare-fun z!929 () (Set Context!5464))

(declare-fun setRest!25760 () (Set Context!5464))

(assert (=> setNonEmpty!25760 (= z!929 (set.union (set.insert setElem!25760 (as set.empty (Set Context!5464))) setRest!25760))))

(declare-fun b!2906964 () Bool)

(declare-fun e!1835005 () Bool)

(declare-datatypes ((List!34718 0))(
  ( (Nil!34594) (Cons!34594 (h!40014 C!17990) (t!233761 List!34718)) )
))
(declare-fun prefix!909 () List!34718)

(declare-fun size!26377 (List!34718) Int)

(assert (=> b!2906964 (= e!1835005 (< (size!26377 prefix!909) 0))))

(declare-fun b!2906965 () Bool)

(declare-fun res!1200481 () Bool)

(assert (=> b!2906965 (=> (not res!1200481) (not e!1835005))))

(declare-fun prefixMatchZipper!348 ((Set Context!5464) List!34718) Bool)

(assert (=> b!2906965 (= res!1200481 (not (prefixMatchZipper!348 z!929 prefix!909)))))

(declare-fun setIsEmpty!25760 () Bool)

(assert (=> setIsEmpty!25760 setRes!25760))

(declare-fun res!1200480 () Bool)

(assert (=> start!282860 (=> (not res!1200480) (not e!1835005))))

(declare-fun s!2253 () List!34718)

(declare-fun isPrefix!2741 (List!34718 List!34718) Bool)

(assert (=> start!282860 (= res!1200480 (isPrefix!2741 prefix!909 s!2253))))

(assert (=> start!282860 e!1835005))

(assert (=> start!282860 e!1835006))

(assert (=> start!282860 e!1835007))

(declare-fun condSetEmpty!25760 () Bool)

(assert (=> start!282860 (= condSetEmpty!25760 (= z!929 (as set.empty (Set Context!5464))))))

(assert (=> start!282860 setRes!25760))

(assert (= (and start!282860 res!1200480) b!2906965))

(assert (= (and b!2906965 res!1200481) b!2906964))

(assert (= (and start!282860 (is-Cons!34594 prefix!909)) b!2906962))

(assert (= (and start!282860 (is-Cons!34594 s!2253)) b!2906961))

(assert (= (and start!282860 condSetEmpty!25760) setIsEmpty!25760))

(assert (= (and start!282860 (not condSetEmpty!25760)) setNonEmpty!25760))

(assert (= setNonEmpty!25760 b!2906963))

(declare-fun m!3308743 () Bool)

(assert (=> setNonEmpty!25760 m!3308743))

(declare-fun m!3308745 () Bool)

(assert (=> b!2906964 m!3308745))

(declare-fun m!3308747 () Bool)

(assert (=> b!2906965 m!3308747))

(declare-fun m!3308749 () Bool)

(assert (=> start!282860 m!3308749))

(push 1)

(assert (not b!2906963))

(assert (not start!282860))

(assert (not b!2906965))

(assert tp_is_empty!15395)

(assert (not b!2906964))

(assert (not b!2906962))

(assert (not setNonEmpty!25760))

(assert (not b!2906961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!836282 () Bool)

(declare-fun c!473724 () Bool)

(declare-fun isEmpty!18885 (List!34718) Bool)

(assert (=> d!836282 (= c!473724 (isEmpty!18885 prefix!909))))

(declare-fun e!1835031 () Bool)

(assert (=> d!836282 (= (prefixMatchZipper!348 z!929 prefix!909) e!1835031)))

(declare-fun b!2906999 () Bool)

(declare-fun lostCauseZipper!598 ((Set Context!5464)) Bool)

(assert (=> b!2906999 (= e!1835031 (not (lostCauseZipper!598 z!929)))))

(declare-fun b!2907000 () Bool)

(declare-fun derivationStepZipper!497 ((Set Context!5464) C!17990) (Set Context!5464))

(declare-fun head!6428 (List!34718) C!17990)

(declare-fun tail!4659 (List!34718) List!34718)

(assert (=> b!2907000 (= e!1835031 (prefixMatchZipper!348 (derivationStepZipper!497 z!929 (head!6428 prefix!909)) (tail!4659 prefix!909)))))

(assert (= (and d!836282 c!473724) b!2906999))

(assert (= (and d!836282 (not c!473724)) b!2907000))

(declare-fun m!3308761 () Bool)

(assert (=> d!836282 m!3308761))

(declare-fun m!3308763 () Bool)

(assert (=> b!2906999 m!3308763))

(declare-fun m!3308765 () Bool)

(assert (=> b!2907000 m!3308765))

(assert (=> b!2907000 m!3308765))

(declare-fun m!3308767 () Bool)

(assert (=> b!2907000 m!3308767))

(declare-fun m!3308769 () Bool)

(assert (=> b!2907000 m!3308769))

(assert (=> b!2907000 m!3308767))

(assert (=> b!2907000 m!3308769))

(declare-fun m!3308771 () Bool)

(assert (=> b!2907000 m!3308771))

(assert (=> b!2906965 d!836282))

(declare-fun b!2907014 () Bool)

(declare-fun res!1200510 () Bool)

(declare-fun e!1835042 () Bool)

(assert (=> b!2907014 (=> (not res!1200510) (not e!1835042))))

(assert (=> b!2907014 (= res!1200510 (= (head!6428 prefix!909) (head!6428 s!2253)))))

(declare-fun b!2907013 () Bool)

(declare-fun e!1835043 () Bool)

(assert (=> b!2907013 (= e!1835043 e!1835042)))

(declare-fun res!1200511 () Bool)

(assert (=> b!2907013 (=> (not res!1200511) (not e!1835042))))

(assert (=> b!2907013 (= res!1200511 (not (is-Nil!34594 s!2253)))))

(declare-fun b!2907015 () Bool)

(assert (=> b!2907015 (= e!1835042 (isPrefix!2741 (tail!4659 prefix!909) (tail!4659 s!2253)))))

(declare-fun b!2907016 () Bool)

(declare-fun e!1835041 () Bool)

(assert (=> b!2907016 (= e!1835041 (>= (size!26377 s!2253) (size!26377 prefix!909)))))

(declare-fun d!836286 () Bool)

(assert (=> d!836286 e!1835041))

(declare-fun res!1200509 () Bool)

(assert (=> d!836286 (=> res!1200509 e!1835041)))

(declare-fun lt!1022633 () Bool)

(assert (=> d!836286 (= res!1200509 (not lt!1022633))))

(assert (=> d!836286 (= lt!1022633 e!1835043)))

(declare-fun res!1200508 () Bool)

(assert (=> d!836286 (=> res!1200508 e!1835043)))

(assert (=> d!836286 (= res!1200508 (is-Nil!34594 prefix!909))))

(assert (=> d!836286 (= (isPrefix!2741 prefix!909 s!2253) lt!1022633)))

(assert (= (and d!836286 (not res!1200508)) b!2907013))

(assert (= (and b!2907013 res!1200511) b!2907014))

(assert (= (and b!2907014 res!1200510) b!2907015))

(assert (= (and d!836286 (not res!1200509)) b!2907016))

(assert (=> b!2907014 m!3308765))

(declare-fun m!3308785 () Bool)

(assert (=> b!2907014 m!3308785))

(assert (=> b!2907015 m!3308769))

(declare-fun m!3308787 () Bool)

(assert (=> b!2907015 m!3308787))

(assert (=> b!2907015 m!3308769))

(assert (=> b!2907015 m!3308787))

(declare-fun m!3308789 () Bool)

(assert (=> b!2907015 m!3308789))

(declare-fun m!3308791 () Bool)

(assert (=> b!2907016 m!3308791))

(assert (=> b!2907016 m!3308745))

(assert (=> start!282860 d!836286))

(declare-fun d!836290 () Bool)

(declare-fun lt!1022636 () Int)

(assert (=> d!836290 (>= lt!1022636 0)))

(declare-fun e!1835048 () Int)

(assert (=> d!836290 (= lt!1022636 e!1835048)))

(declare-fun c!473729 () Bool)

(assert (=> d!836290 (= c!473729 (is-Nil!34594 prefix!909))))

(assert (=> d!836290 (= (size!26377 prefix!909) lt!1022636)))

(declare-fun b!2907025 () Bool)

(assert (=> b!2907025 (= e!1835048 0)))

(declare-fun b!2907026 () Bool)

(assert (=> b!2907026 (= e!1835048 (+ 1 (size!26377 (t!233761 prefix!909))))))

(assert (= (and d!836290 c!473729) b!2907025))

(assert (= (and d!836290 (not c!473729)) b!2907026))

(declare-fun m!3308793 () Bool)

(assert (=> b!2907026 m!3308793))

(assert (=> b!2906964 d!836290))

(declare-fun d!836292 () Bool)

(declare-fun lambda!107682 () Int)

(declare-fun forall!7106 (List!34717 Int) Bool)

(assert (=> d!836292 (= (inv!46716 setElem!25760) (forall!7106 (exprs!3232 setElem!25760) lambda!107682))))

(declare-fun bs!524105 () Bool)

(assert (= bs!524105 d!836292))

(declare-fun m!3308803 () Bool)

(assert (=> bs!524105 m!3308803))

(assert (=> setNonEmpty!25760 d!836292))

(declare-fun b!2907033 () Bool)

(declare-fun e!1835052 () Bool)

(declare-fun tp!933770 () Bool)

(assert (=> b!2907033 (= e!1835052 (and tp_is_empty!15395 tp!933770))))

(assert (=> b!2906962 (= tp!933755 e!1835052)))

(assert (= (and b!2906962 (is-Cons!34594 (t!233761 prefix!909))) b!2907033))

(declare-fun b!2907034 () Bool)

(declare-fun e!1835053 () Bool)

(declare-fun tp!933771 () Bool)

(assert (=> b!2907034 (= e!1835053 (and tp_is_empty!15395 tp!933771))))

(assert (=> b!2906961 (= tp!933754 e!1835053)))

(assert (= (and b!2906961 (is-Cons!34594 (t!233761 s!2253))) b!2907034))

(declare-fun condSetEmpty!25766 () Bool)

(assert (=> setNonEmpty!25760 (= condSetEmpty!25766 (= setRest!25760 (as set.empty (Set Context!5464))))))

(declare-fun setRes!25766 () Bool)

(assert (=> setNonEmpty!25760 (= tp!933753 setRes!25766)))

(declare-fun setIsEmpty!25766 () Bool)

(assert (=> setIsEmpty!25766 setRes!25766))

(declare-fun tp!933776 () Bool)

(declare-fun setNonEmpty!25766 () Bool)

(declare-fun e!1835056 () Bool)

(declare-fun setElem!25766 () Context!5464)

(assert (=> setNonEmpty!25766 (= setRes!25766 (and tp!933776 (inv!46716 setElem!25766) e!1835056))))

(declare-fun setRest!25766 () (Set Context!5464))

(assert (=> setNonEmpty!25766 (= setRest!25760 (set.union (set.insert setElem!25766 (as set.empty (Set Context!5464))) setRest!25766))))

(declare-fun b!2907039 () Bool)

(declare-fun tp!933777 () Bool)

(assert (=> b!2907039 (= e!1835056 tp!933777)))

(assert (= (and setNonEmpty!25760 condSetEmpty!25766) setIsEmpty!25766))

(assert (= (and setNonEmpty!25760 (not condSetEmpty!25766)) setNonEmpty!25766))

(assert (= setNonEmpty!25766 b!2907039))

(declare-fun m!3308805 () Bool)

(assert (=> setNonEmpty!25766 m!3308805))

(declare-fun b!2907044 () Bool)

(declare-fun e!1835059 () Bool)

(declare-fun tp!933782 () Bool)

(declare-fun tp!933783 () Bool)

(assert (=> b!2907044 (= e!1835059 (and tp!933782 tp!933783))))

(assert (=> b!2906963 (= tp!933752 e!1835059)))

(assert (= (and b!2906963 (is-Cons!34593 (exprs!3232 setElem!25760))) b!2907044))

(push 1)

(assert (not b!2907039))

(assert (not b!2906999))

(assert (not d!836282))

(assert (not b!2907033))

(assert tp_is_empty!15395)

(assert (not b!2907014))

(assert (not b!2907000))

(assert (not b!2907015))

(assert (not d!836292))

(assert (not b!2907016))

(assert (not setNonEmpty!25766))

(assert (not b!2907026))

(assert (not b!2907034))

(assert (not b!2907044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

