; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278856 () Bool)

(assert start!278856)

(declare-fun setIsEmpty!25435 () Bool)

(declare-fun setRes!25435 () Bool)

(assert (=> setIsEmpty!25435 setRes!25435))

(declare-fun b!2863501 () Bool)

(declare-fun e!1812727 () Bool)

(declare-datatypes ((C!17462 0))(
  ( (C!17463 (val!10765 Int)) )
))
(declare-datatypes ((List!34266 0))(
  ( (Nil!34142) (Cons!34142 (h!39562 C!17462) (t!233307 List!34266)) )
))
(declare-fun prefix!919 () List!34266)

(declare-fun size!26295 (List!34266) Int)

(assert (=> b!2863501 (= e!1812727 (< (size!26295 prefix!919) 0))))

(declare-fun b!2863502 () Bool)

(declare-fun e!1812728 () Bool)

(declare-fun tp_is_empty!15017 () Bool)

(declare-fun tp!922051 () Bool)

(assert (=> b!2863502 (= e!1812728 (and tp_is_empty!15017 tp!922051))))

(declare-fun res!1188913 () Bool)

(assert (=> start!278856 (=> (not res!1188913) (not e!1812727))))

(declare-datatypes ((Regex!8640 0))(
  ( (ElementMatch!8640 (c!461627 C!17462)) (Concat!13961 (regOne!17792 Regex!8640) (regTwo!17792 Regex!8640)) (EmptyExpr!8640) (Star!8640 (reg!8969 Regex!8640)) (EmptyLang!8640) (Union!8640 (regOne!17793 Regex!8640) (regTwo!17793 Regex!8640)) )
))
(declare-datatypes ((List!34267 0))(
  ( (Nil!34143) (Cons!34143 (h!39563 Regex!8640) (t!233308 List!34267)) )
))
(declare-datatypes ((Context!5200 0))(
  ( (Context!5201 (exprs!3100 List!34267)) )
))
(declare-fun z!960 () (Set Context!5200))

(declare-fun prefixMatchZipper!322 ((Set Context!5200) List!34266) Bool)

(assert (=> start!278856 (= res!1188913 (prefixMatchZipper!322 z!960 prefix!919))))

(assert (=> start!278856 e!1812727))

(declare-fun condSetEmpty!25435 () Bool)

(assert (=> start!278856 (= condSetEmpty!25435 (= z!960 (as set.empty (Set Context!5200))))))

(assert (=> start!278856 setRes!25435))

(assert (=> start!278856 e!1812728))

(declare-fun e!1812729 () Bool)

(declare-fun setElem!25435 () Context!5200)

(declare-fun setNonEmpty!25435 () Bool)

(declare-fun tp!922052 () Bool)

(declare-fun inv!46188 (Context!5200) Bool)

(assert (=> setNonEmpty!25435 (= setRes!25435 (and tp!922052 (inv!46188 setElem!25435) e!1812729))))

(declare-fun setRest!25435 () (Set Context!5200))

(assert (=> setNonEmpty!25435 (= z!960 (set.union (set.insert setElem!25435 (as set.empty (Set Context!5200))) setRest!25435))))

(declare-fun b!2863503 () Bool)

(declare-fun tp!922053 () Bool)

(assert (=> b!2863503 (= e!1812729 tp!922053)))

(assert (= (and start!278856 res!1188913) b!2863501))

(assert (= (and start!278856 condSetEmpty!25435) setIsEmpty!25435))

(assert (= (and start!278856 (not condSetEmpty!25435)) setNonEmpty!25435))

(assert (= setNonEmpty!25435 b!2863503))

(assert (= (and start!278856 (is-Cons!34142 prefix!919)) b!2863502))

(declare-fun m!3283113 () Bool)

(assert (=> b!2863501 m!3283113))

(declare-fun m!3283115 () Bool)

(assert (=> start!278856 m!3283115))

(declare-fun m!3283117 () Bool)

(assert (=> setNonEmpty!25435 m!3283117))

(push 1)

(assert (not b!2863503))

(assert (not b!2863502))

(assert (not setNonEmpty!25435))

(assert (not b!2863501))

(assert (not start!278856))

(assert tp_is_empty!15017)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827876 () Bool)

(declare-fun lambda!105540 () Int)

(declare-fun forall!6978 (List!34267 Int) Bool)

(assert (=> d!827876 (= (inv!46188 setElem!25435) (forall!6978 (exprs!3100 setElem!25435) lambda!105540))))

(declare-fun bs!520657 () Bool)

(assert (= bs!520657 d!827876))

(declare-fun m!3283127 () Bool)

(assert (=> bs!520657 m!3283127))

(assert (=> setNonEmpty!25435 d!827876))

(declare-fun d!827882 () Bool)

(declare-fun lt!1015091 () Int)

(assert (=> d!827882 (>= lt!1015091 0)))

(declare-fun e!1812744 () Int)

(assert (=> d!827882 (= lt!1015091 e!1812744)))

(declare-fun c!461634 () Bool)

(assert (=> d!827882 (= c!461634 (is-Nil!34142 prefix!919))))

(assert (=> d!827882 (= (size!26295 prefix!919) lt!1015091)))

(declare-fun b!2863523 () Bool)

(assert (=> b!2863523 (= e!1812744 0)))

(declare-fun b!2863524 () Bool)

(assert (=> b!2863524 (= e!1812744 (+ 1 (size!26295 (t!233307 prefix!919))))))

(assert (= (and d!827882 c!461634) b!2863523))

(assert (= (and d!827882 (not c!461634)) b!2863524))

(declare-fun m!3283129 () Bool)

(assert (=> b!2863524 m!3283129))

(assert (=> b!2863501 d!827882))

(declare-fun d!827884 () Bool)

(declare-fun c!461637 () Bool)

(declare-fun isEmpty!18638 (List!34266) Bool)

(assert (=> d!827884 (= c!461637 (isEmpty!18638 prefix!919))))

(declare-fun e!1812747 () Bool)

(assert (=> d!827884 (= (prefixMatchZipper!322 z!960 prefix!919) e!1812747)))

(declare-fun b!2863529 () Bool)

(declare-fun lostCauseZipper!550 ((Set Context!5200)) Bool)

(assert (=> b!2863529 (= e!1812747 (not (lostCauseZipper!550 z!960)))))

(declare-fun b!2863530 () Bool)

(declare-fun derivationStepZipper!439 ((Set Context!5200) C!17462) (Set Context!5200))

(declare-fun head!6307 (List!34266) C!17462)

(declare-fun tail!4532 (List!34266) List!34266)

(assert (=> b!2863530 (= e!1812747 (prefixMatchZipper!322 (derivationStepZipper!439 z!960 (head!6307 prefix!919)) (tail!4532 prefix!919)))))

(assert (= (and d!827884 c!461637) b!2863529))

(assert (= (and d!827884 (not c!461637)) b!2863530))

(declare-fun m!3283131 () Bool)

(assert (=> d!827884 m!3283131))

(declare-fun m!3283133 () Bool)

(assert (=> b!2863529 m!3283133))

(declare-fun m!3283135 () Bool)

(assert (=> b!2863530 m!3283135))

(assert (=> b!2863530 m!3283135))

(declare-fun m!3283137 () Bool)

(assert (=> b!2863530 m!3283137))

(declare-fun m!3283139 () Bool)

(assert (=> b!2863530 m!3283139))

(assert (=> b!2863530 m!3283137))

(assert (=> b!2863530 m!3283139))

(declare-fun m!3283141 () Bool)

(assert (=> b!2863530 m!3283141))

(assert (=> start!278856 d!827884))

(declare-fun condSetEmpty!25441 () Bool)

(assert (=> setNonEmpty!25435 (= condSetEmpty!25441 (= setRest!25435 (as set.empty (Set Context!5200))))))

(declare-fun setRes!25441 () Bool)

(assert (=> setNonEmpty!25435 (= tp!922052 setRes!25441)))

(declare-fun setIsEmpty!25441 () Bool)

(assert (=> setIsEmpty!25441 setRes!25441))

(declare-fun e!1812750 () Bool)

(declare-fun setElem!25441 () Context!5200)

(declare-fun tp!922068 () Bool)

(declare-fun setNonEmpty!25441 () Bool)

(assert (=> setNonEmpty!25441 (= setRes!25441 (and tp!922068 (inv!46188 setElem!25441) e!1812750))))

(declare-fun setRest!25441 () (Set Context!5200))

(assert (=> setNonEmpty!25441 (= setRest!25435 (set.union (set.insert setElem!25441 (as set.empty (Set Context!5200))) setRest!25441))))

(declare-fun b!2863535 () Bool)

(declare-fun tp!922067 () Bool)

(assert (=> b!2863535 (= e!1812750 tp!922067)))

(assert (= (and setNonEmpty!25435 condSetEmpty!25441) setIsEmpty!25441))

(assert (= (and setNonEmpty!25435 (not condSetEmpty!25441)) setNonEmpty!25441))

(assert (= setNonEmpty!25441 b!2863535))

(declare-fun m!3283143 () Bool)

(assert (=> setNonEmpty!25441 m!3283143))

(declare-fun b!2863540 () Bool)

(declare-fun e!1812753 () Bool)

(declare-fun tp!922073 () Bool)

(declare-fun tp!922074 () Bool)

(assert (=> b!2863540 (= e!1812753 (and tp!922073 tp!922074))))

(assert (=> b!2863503 (= tp!922053 e!1812753)))

(assert (= (and b!2863503 (is-Cons!34143 (exprs!3100 setElem!25435))) b!2863540))

(declare-fun b!2863545 () Bool)

(declare-fun e!1812756 () Bool)

(declare-fun tp!922077 () Bool)

(assert (=> b!2863545 (= e!1812756 (and tp_is_empty!15017 tp!922077))))

(assert (=> b!2863502 (= tp!922051 e!1812756)))

(assert (= (and b!2863502 (is-Cons!34142 (t!233307 prefix!919))) b!2863545))

(push 1)

(assert (not d!827876))

(assert (not b!2863540))

(assert (not b!2863530))

(assert (not b!2863524))

(assert (not b!2863535))

(assert (not setNonEmpty!25441))

(assert (not b!2863529))

(assert (not b!2863545))

(assert (not d!827884))

(assert tp_is_empty!15017)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

