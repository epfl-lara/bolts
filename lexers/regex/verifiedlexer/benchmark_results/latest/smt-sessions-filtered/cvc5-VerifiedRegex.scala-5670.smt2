; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282812 () Bool)

(assert start!282812)

(declare-fun b!2906639 () Bool)

(declare-fun e!1834793 () Bool)

(declare-fun tp_is_empty!15375 () Bool)

(declare-fun tp!933568 () Bool)

(assert (=> b!2906639 (= e!1834793 (and tp_is_empty!15375 tp!933568))))

(declare-fun setIsEmpty!25718 () Bool)

(declare-fun setRes!25718 () Bool)

(assert (=> setIsEmpty!25718 setRes!25718))

(declare-fun b!2906640 () Bool)

(declare-fun e!1834792 () Bool)

(declare-datatypes ((C!17970 0))(
  ( (C!17971 (val!11019 Int)) )
))
(declare-datatypes ((List!34697 0))(
  ( (Nil!34573) (Cons!34573 (h!39993 C!17970) (t!233740 List!34697)) )
))
(declare-fun prefix!853 () List!34697)

(declare-fun size!26373 (List!34697) Int)

(assert (=> b!2906640 (= e!1834792 (< (size!26373 prefix!853) 0))))

(declare-fun tp!933570 () Bool)

(declare-datatypes ((Regex!8894 0))(
  ( (ElementMatch!8894 (c!473689 C!17970)) (Concat!14215 (regOne!18300 Regex!8894) (regTwo!18300 Regex!8894)) (EmptyExpr!8894) (Star!8894 (reg!9223 Regex!8894)) (EmptyLang!8894) (Union!8894 (regOne!18301 Regex!8894) (regTwo!18301 Regex!8894)) )
))
(declare-datatypes ((List!34698 0))(
  ( (Nil!34574) (Cons!34574 (h!39994 Regex!8894) (t!233741 List!34698)) )
))
(declare-datatypes ((Context!5444 0))(
  ( (Context!5445 (exprs!3222 List!34698)) )
))
(declare-fun setElem!25718 () Context!5444)

(declare-fun e!1834791 () Bool)

(declare-fun setNonEmpty!25718 () Bool)

(declare-fun inv!46691 (Context!5444) Bool)

(assert (=> setNonEmpty!25718 (= setRes!25718 (and tp!933570 (inv!46691 setElem!25718) e!1834791))))

(declare-fun z!791 () (Set Context!5444))

(declare-fun setRest!25718 () (Set Context!5444))

(assert (=> setNonEmpty!25718 (= z!791 (set.union (set.insert setElem!25718 (as set.empty (Set Context!5444))) setRest!25718))))

(declare-fun b!2906641 () Bool)

(declare-fun res!1200348 () Bool)

(assert (=> b!2906641 (=> (not res!1200348) (not e!1834792))))

(declare-fun s!1964 () List!34697)

(declare-fun matchZipper!502 ((Set Context!5444) List!34697) Bool)

(assert (=> b!2906641 (= res!1200348 (matchZipper!502 z!791 s!1964))))

(declare-fun res!1200349 () Bool)

(assert (=> start!282812 (=> (not res!1200349) (not e!1834792))))

(declare-fun isPrefix!2731 (List!34697 List!34697) Bool)

(assert (=> start!282812 (= res!1200349 (isPrefix!2731 prefix!853 s!1964))))

(assert (=> start!282812 e!1834792))

(declare-fun e!1834790 () Bool)

(assert (=> start!282812 e!1834790))

(assert (=> start!282812 e!1834793))

(declare-fun condSetEmpty!25718 () Bool)

(assert (=> start!282812 (= condSetEmpty!25718 (= z!791 (as set.empty (Set Context!5444))))))

(assert (=> start!282812 setRes!25718))

(declare-fun b!2906642 () Bool)

(declare-fun tp!933569 () Bool)

(assert (=> b!2906642 (= e!1834790 (and tp_is_empty!15375 tp!933569))))

(declare-fun b!2906643 () Bool)

(declare-fun tp!933571 () Bool)

(assert (=> b!2906643 (= e!1834791 tp!933571)))

(assert (= (and start!282812 res!1200349) b!2906641))

(assert (= (and b!2906641 res!1200348) b!2906640))

(assert (= (and start!282812 (is-Cons!34573 prefix!853)) b!2906642))

(assert (= (and start!282812 (is-Cons!34573 s!1964)) b!2906639))

(assert (= (and start!282812 condSetEmpty!25718) setIsEmpty!25718))

(assert (= (and start!282812 (not condSetEmpty!25718)) setNonEmpty!25718))

(assert (= setNonEmpty!25718 b!2906643))

(declare-fun m!3308547 () Bool)

(assert (=> b!2906640 m!3308547))

(declare-fun m!3308549 () Bool)

(assert (=> setNonEmpty!25718 m!3308549))

(declare-fun m!3308551 () Bool)

(assert (=> b!2906641 m!3308551))

(declare-fun m!3308553 () Bool)

(assert (=> start!282812 m!3308553))

(push 1)

(assert tp_is_empty!15375)

(assert (not b!2906643))

(assert (not start!282812))

(assert (not b!2906640))

(assert (not b!2906641))

(assert (not b!2906639))

(assert (not b!2906642))

(assert (not setNonEmpty!25718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!836247 () Bool)

(declare-fun c!473693 () Bool)

(declare-fun isEmpty!18881 (List!34697) Bool)

(assert (=> d!836247 (= c!473693 (isEmpty!18881 s!1964))))

(declare-fun e!1834808 () Bool)

(assert (=> d!836247 (= (matchZipper!502 z!791 s!1964) e!1834808)))

(declare-fun b!2906663 () Bool)

(declare-fun nullableZipper!735 ((Set Context!5444)) Bool)

(assert (=> b!2906663 (= e!1834808 (nullableZipper!735 z!791))))

(declare-fun b!2906664 () Bool)

(declare-fun derivationStepZipper!491 ((Set Context!5444) C!17970) (Set Context!5444))

(declare-fun head!6424 (List!34697) C!17970)

(declare-fun tail!4653 (List!34697) List!34697)

(assert (=> b!2906664 (= e!1834808 (matchZipper!502 (derivationStepZipper!491 z!791 (head!6424 s!1964)) (tail!4653 s!1964)))))

(assert (= (and d!836247 c!473693) b!2906663))

(assert (= (and d!836247 (not c!473693)) b!2906664))

(declare-fun m!3308563 () Bool)

(assert (=> d!836247 m!3308563))

(declare-fun m!3308565 () Bool)

(assert (=> b!2906663 m!3308565))

(declare-fun m!3308567 () Bool)

(assert (=> b!2906664 m!3308567))

(assert (=> b!2906664 m!3308567))

(declare-fun m!3308569 () Bool)

(assert (=> b!2906664 m!3308569))

(declare-fun m!3308571 () Bool)

(assert (=> b!2906664 m!3308571))

(assert (=> b!2906664 m!3308569))

(assert (=> b!2906664 m!3308571))

(declare-fun m!3308573 () Bool)

(assert (=> b!2906664 m!3308573))

(assert (=> b!2906641 d!836247))

(declare-fun d!836251 () Bool)

(declare-fun e!1834824 () Bool)

(assert (=> d!836251 e!1834824))

(declare-fun res!1200376 () Bool)

(assert (=> d!836251 (=> res!1200376 e!1834824)))

(declare-fun lt!1022594 () Bool)

(assert (=> d!836251 (= res!1200376 (not lt!1022594))))

(declare-fun e!1834826 () Bool)

(assert (=> d!836251 (= lt!1022594 e!1834826)))

(declare-fun res!1200377 () Bool)

(assert (=> d!836251 (=> res!1200377 e!1834826)))

(assert (=> d!836251 (= res!1200377 (is-Nil!34573 prefix!853))))

(assert (=> d!836251 (= (isPrefix!2731 prefix!853 s!1964) lt!1022594)))

(declare-fun b!2906685 () Bool)

(declare-fun e!1834825 () Bool)

(assert (=> b!2906685 (= e!1834826 e!1834825)))

(declare-fun res!1200378 () Bool)

(assert (=> b!2906685 (=> (not res!1200378) (not e!1834825))))

(assert (=> b!2906685 (= res!1200378 (not (is-Nil!34573 s!1964)))))

(declare-fun b!2906687 () Bool)

(assert (=> b!2906687 (= e!1834825 (isPrefix!2731 (tail!4653 prefix!853) (tail!4653 s!1964)))))

(declare-fun b!2906686 () Bool)

(declare-fun res!1200379 () Bool)

(assert (=> b!2906686 (=> (not res!1200379) (not e!1834825))))

(assert (=> b!2906686 (= res!1200379 (= (head!6424 prefix!853) (head!6424 s!1964)))))

(declare-fun b!2906688 () Bool)

(assert (=> b!2906688 (= e!1834824 (>= (size!26373 s!1964) (size!26373 prefix!853)))))

(assert (= (and d!836251 (not res!1200377)) b!2906685))

(assert (= (and b!2906685 res!1200378) b!2906686))

(assert (= (and b!2906686 res!1200379) b!2906687))

(assert (= (and d!836251 (not res!1200376)) b!2906688))

(declare-fun m!3308587 () Bool)

(assert (=> b!2906687 m!3308587))

(assert (=> b!2906687 m!3308571))

(assert (=> b!2906687 m!3308587))

(assert (=> b!2906687 m!3308571))

(declare-fun m!3308589 () Bool)

(assert (=> b!2906687 m!3308589))

(declare-fun m!3308591 () Bool)

(assert (=> b!2906686 m!3308591))

(assert (=> b!2906686 m!3308567))

(declare-fun m!3308593 () Bool)

(assert (=> b!2906688 m!3308593))

(assert (=> b!2906688 m!3308547))

(assert (=> start!282812 d!836251))

(declare-fun d!836255 () Bool)

(declare-fun lt!1022597 () Int)

(assert (=> d!836255 (>= lt!1022597 0)))

(declare-fun e!1834829 () Int)

(assert (=> d!836255 (= lt!1022597 e!1834829)))

(declare-fun c!473696 () Bool)

(assert (=> d!836255 (= c!473696 (is-Nil!34573 prefix!853))))

(assert (=> d!836255 (= (size!26373 prefix!853) lt!1022597)))

(declare-fun b!2906693 () Bool)

(assert (=> b!2906693 (= e!1834829 0)))

(declare-fun b!2906694 () Bool)

(assert (=> b!2906694 (= e!1834829 (+ 1 (size!26373 (t!233740 prefix!853))))))

(assert (= (and d!836255 c!473696) b!2906693))

(assert (= (and d!836255 (not c!473696)) b!2906694))

(declare-fun m!3308595 () Bool)

(assert (=> b!2906694 m!3308595))

(assert (=> b!2906640 d!836255))

(declare-fun d!836257 () Bool)

(declare-fun lambda!107670 () Int)

(declare-fun forall!7102 (List!34698 Int) Bool)

(assert (=> d!836257 (= (inv!46691 setElem!25718) (forall!7102 (exprs!3222 setElem!25718) lambda!107670))))

(declare-fun bs!524091 () Bool)

(assert (= bs!524091 d!836257))

(declare-fun m!3308597 () Bool)

(assert (=> bs!524091 m!3308597))

(assert (=> setNonEmpty!25718 d!836257))

(declare-fun b!2906699 () Bool)

(declare-fun e!1834832 () Bool)

(declare-fun tp!933586 () Bool)

(assert (=> b!2906699 (= e!1834832 (and tp_is_empty!15375 tp!933586))))

(assert (=> b!2906642 (= tp!933569 e!1834832)))

(assert (= (and b!2906642 (is-Cons!34573 (t!233740 prefix!853))) b!2906699))

(declare-fun b!2906700 () Bool)

(declare-fun e!1834833 () Bool)

(declare-fun tp!933587 () Bool)

(assert (=> b!2906700 (= e!1834833 (and tp_is_empty!15375 tp!933587))))

(assert (=> b!2906639 (= tp!933568 e!1834833)))

(assert (= (and b!2906639 (is-Cons!34573 (t!233740 s!1964))) b!2906700))

(declare-fun b!2906705 () Bool)

(declare-fun e!1834836 () Bool)

(declare-fun tp!933592 () Bool)

(declare-fun tp!933593 () Bool)

(assert (=> b!2906705 (= e!1834836 (and tp!933592 tp!933593))))

(assert (=> b!2906643 (= tp!933571 e!1834836)))

(assert (= (and b!2906643 (is-Cons!34574 (exprs!3222 setElem!25718))) b!2906705))

(declare-fun condSetEmpty!25724 () Bool)

(assert (=> setNonEmpty!25718 (= condSetEmpty!25724 (= setRest!25718 (as set.empty (Set Context!5444))))))

(declare-fun setRes!25724 () Bool)

(assert (=> setNonEmpty!25718 (= tp!933570 setRes!25724)))

(declare-fun setIsEmpty!25724 () Bool)

(assert (=> setIsEmpty!25724 setRes!25724))

(declare-fun e!1834839 () Bool)

(declare-fun setNonEmpty!25724 () Bool)

(declare-fun setElem!25724 () Context!5444)

(declare-fun tp!933599 () Bool)

(assert (=> setNonEmpty!25724 (= setRes!25724 (and tp!933599 (inv!46691 setElem!25724) e!1834839))))

(declare-fun setRest!25724 () (Set Context!5444))

(assert (=> setNonEmpty!25724 (= setRest!25718 (set.union (set.insert setElem!25724 (as set.empty (Set Context!5444))) setRest!25724))))

(declare-fun b!2906710 () Bool)

(declare-fun tp!933598 () Bool)

(assert (=> b!2906710 (= e!1834839 tp!933598)))

(assert (= (and setNonEmpty!25718 condSetEmpty!25724) setIsEmpty!25724))

(assert (= (and setNonEmpty!25718 (not condSetEmpty!25724)) setNonEmpty!25724))

(assert (= setNonEmpty!25724 b!2906710))

(declare-fun m!3308599 () Bool)

(assert (=> setNonEmpty!25724 m!3308599))

(push 1)

(assert tp_is_empty!15375)

(assert (not b!2906687))

(assert (not b!2906664))

(assert (not b!2906688))

(assert (not b!2906663))

(assert (not b!2906686))

(assert (not b!2906694))

(assert (not b!2906710))

(assert (not d!836257))

(assert (not d!836247))

(assert (not b!2906705))

(assert (not b!2906699))

(assert (not setNonEmpty!25724))

(assert (not b!2906700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

