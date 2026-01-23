; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541724 () Bool)

(assert start!541724)

(declare-fun b!5128337 () Bool)

(declare-fun e!3198308 () Bool)

(declare-fun tp!1430731 () Bool)

(assert (=> b!5128337 (= e!3198308 tp!1430731)))

(declare-fun res!2183557 () Bool)

(declare-fun e!3198309 () Bool)

(assert (=> start!541724 (=> (not res!2183557) (not e!3198309))))

(declare-datatypes ((C!28850 0))(
  ( (C!28851 (val!24077 Int)) )
))
(declare-datatypes ((Regex!14292 0))(
  ( (ElementMatch!14292 (c!881886 C!28850)) (Concat!23137 (regOne!29096 Regex!14292) (regTwo!29096 Regex!14292)) (EmptyExpr!14292) (Star!14292 (reg!14621 Regex!14292)) (EmptyLang!14292) (Union!14292 (regOne!29097 Regex!14292) (regTwo!29097 Regex!14292)) )
))
(declare-datatypes ((List!59516 0))(
  ( (Nil!59392) (Cons!59392 (h!65840 Regex!14292) (t!372543 List!59516)) )
))
(declare-datatypes ((Context!7352 0))(
  ( (Context!7353 (exprs!4176 List!59516)) )
))
(declare-fun z!1113 () (Set Context!7352))

(declare-fun nullableZipper!1077 ((Set Context!7352)) Bool)

(assert (=> start!541724 (= res!2183557 (nullableZipper!1077 z!1113))))

(assert (=> start!541724 e!3198309))

(declare-fun condSetEmpty!30839 () Bool)

(assert (=> start!541724 (= condSetEmpty!30839 (= z!1113 (as set.empty (Set Context!7352))))))

(declare-fun setRes!30839 () Bool)

(assert (=> start!541724 setRes!30839))

(declare-fun b!5128336 () Bool)

(declare-fun lambda!252510 () Int)

(declare-fun exists!1548 ((Set Context!7352) Int) Bool)

(assert (=> b!5128336 (= e!3198309 (not (exists!1548 z!1113 lambda!252510)))))

(declare-fun setIsEmpty!30839 () Bool)

(assert (=> setIsEmpty!30839 setRes!30839))

(declare-fun setElem!30839 () Context!7352)

(declare-fun setNonEmpty!30839 () Bool)

(declare-fun tp!1430730 () Bool)

(declare-fun inv!78912 (Context!7352) Bool)

(assert (=> setNonEmpty!30839 (= setRes!30839 (and tp!1430730 (inv!78912 setElem!30839) e!3198308))))

(declare-fun setRest!30839 () (Set Context!7352))

(assert (=> setNonEmpty!30839 (= z!1113 (set.union (set.insert setElem!30839 (as set.empty (Set Context!7352))) setRest!30839))))

(assert (= (and start!541724 res!2183557) b!5128336))

(assert (= (and start!541724 condSetEmpty!30839) setIsEmpty!30839))

(assert (= (and start!541724 (not condSetEmpty!30839)) setNonEmpty!30839))

(assert (= setNonEmpty!30839 b!5128337))

(declare-fun m!6192590 () Bool)

(assert (=> start!541724 m!6192590))

(declare-fun m!6192592 () Bool)

(assert (=> b!5128336 m!6192592))

(declare-fun m!6192594 () Bool)

(assert (=> setNonEmpty!30839 m!6192594))

(push 1)

(assert (not setNonEmpty!30839))

(assert (not start!541724))

(assert (not b!5128336))

(assert (not b!5128337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1658924 () Bool)

(declare-fun lambda!252516 () Int)

(declare-fun forall!13687 (List!59516 Int) Bool)

(assert (=> d!1658924 (= (inv!78912 setElem!30839) (forall!13687 (exprs!4176 setElem!30839) lambda!252516))))

(declare-fun bs!1194771 () Bool)

(assert (= bs!1194771 d!1658924))

(declare-fun m!6192602 () Bool)

(assert (=> bs!1194771 m!6192602))

(assert (=> setNonEmpty!30839 d!1658924))

(declare-fun bs!1194772 () Bool)

(declare-fun d!1658926 () Bool)

(assert (= bs!1194772 (and d!1658926 b!5128336)))

(declare-fun lambda!252519 () Int)

(assert (=> bs!1194772 (= lambda!252519 lambda!252510)))

(assert (=> d!1658926 (= (nullableZipper!1077 z!1113) (exists!1548 z!1113 lambda!252519))))

(declare-fun bs!1194773 () Bool)

(assert (= bs!1194773 d!1658926))

(declare-fun m!6192604 () Bool)

(assert (=> bs!1194773 m!6192604))

(assert (=> start!541724 d!1658926))

(declare-fun d!1658928 () Bool)

(declare-fun lt!2115199 () Bool)

(declare-datatypes ((List!59518 0))(
  ( (Nil!59394) (Cons!59394 (h!65842 Context!7352) (t!372545 List!59518)) )
))
(declare-fun exists!1550 (List!59518 Int) Bool)

(declare-fun toList!8291 ((Set Context!7352)) List!59518)

(assert (=> d!1658928 (= lt!2115199 (exists!1550 (toList!8291 z!1113) lambda!252510))))

(declare-fun choose!37788 ((Set Context!7352) Int) Bool)

(assert (=> d!1658928 (= lt!2115199 (choose!37788 z!1113 lambda!252510))))

(assert (=> d!1658928 (= (exists!1548 z!1113 lambda!252510) lt!2115199)))

(declare-fun bs!1194774 () Bool)

(assert (= bs!1194774 d!1658928))

(declare-fun m!6192606 () Bool)

(assert (=> bs!1194774 m!6192606))

(assert (=> bs!1194774 m!6192606))

(declare-fun m!6192608 () Bool)

(assert (=> bs!1194774 m!6192608))

(declare-fun m!6192610 () Bool)

(assert (=> bs!1194774 m!6192610))

(assert (=> b!5128336 d!1658928))

(declare-fun condSetEmpty!30845 () Bool)

(assert (=> setNonEmpty!30839 (= condSetEmpty!30845 (= setRest!30839 (as set.empty (Set Context!7352))))))

(declare-fun setRes!30845 () Bool)

(assert (=> setNonEmpty!30839 (= tp!1430730 setRes!30845)))

(declare-fun setIsEmpty!30845 () Bool)

(assert (=> setIsEmpty!30845 setRes!30845))

(declare-fun setNonEmpty!30845 () Bool)

(declare-fun setElem!30845 () Context!7352)

(declare-fun e!3198318 () Bool)

(declare-fun tp!1430743 () Bool)

(assert (=> setNonEmpty!30845 (= setRes!30845 (and tp!1430743 (inv!78912 setElem!30845) e!3198318))))

(declare-fun setRest!30845 () (Set Context!7352))

(assert (=> setNonEmpty!30845 (= setRest!30839 (set.union (set.insert setElem!30845 (as set.empty (Set Context!7352))) setRest!30845))))

(declare-fun b!5128348 () Bool)

(declare-fun tp!1430742 () Bool)

(assert (=> b!5128348 (= e!3198318 tp!1430742)))

(assert (= (and setNonEmpty!30839 condSetEmpty!30845) setIsEmpty!30845))

(assert (= (and setNonEmpty!30839 (not condSetEmpty!30845)) setNonEmpty!30845))

(assert (= setNonEmpty!30845 b!5128348))

(declare-fun m!6192612 () Bool)

(assert (=> setNonEmpty!30845 m!6192612))

(declare-fun b!5128353 () Bool)

(declare-fun e!3198321 () Bool)

(declare-fun tp!1430748 () Bool)

(declare-fun tp!1430749 () Bool)

(assert (=> b!5128353 (= e!3198321 (and tp!1430748 tp!1430749))))

(assert (=> b!5128337 (= tp!1430731 e!3198321)))

(assert (= (and b!5128337 (is-Cons!59392 (exprs!4176 setElem!30839))) b!5128353))

(push 1)

(assert (not d!1658926))

(assert (not b!5128353))

(assert (not d!1658928))

(assert (not setNonEmpty!30845))

(assert (not d!1658924))

(assert (not b!5128348))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

