; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542310 () Bool)

(assert start!542310)

(declare-fun b!5130206 () Bool)

(assert (=> b!5130206 true))

(declare-fun setIsEmpty!31013 () Bool)

(declare-fun setRes!31013 () Bool)

(assert (=> setIsEmpty!31013 setRes!31013))

(declare-fun b!5130200 () Bool)

(declare-fun e!3199606 () Bool)

(declare-fun e!3199609 () Bool)

(assert (=> b!5130200 (= e!3199606 e!3199609)))

(declare-fun res!2184751 () Bool)

(assert (=> b!5130200 (=> (not res!2184751) (not e!3199609))))

(declare-fun lt!2116281 () Bool)

(declare-fun lambda!253526 () Int)

(declare-datatypes ((C!28918 0))(
  ( (C!28919 (val!24111 Int)) )
))
(declare-datatypes ((Regex!14326 0))(
  ( (ElementMatch!14326 (c!882394 C!28918)) (Concat!23171 (regOne!29164 Regex!14326) (regTwo!29164 Regex!14326)) (EmptyExpr!14326) (Star!14326 (reg!14655 Regex!14326)) (EmptyLang!14326) (Union!14326 (regOne!29165 Regex!14326) (regTwo!29165 Regex!14326)) )
))
(declare-datatypes ((List!59579 0))(
  ( (Nil!59455) (Cons!59455 (h!65903 Regex!14326) (t!372606 List!59579)) )
))
(declare-datatypes ((Context!7420 0))(
  ( (Context!7421 (exprs!4210 List!59579)) )
))
(declare-fun lt!2116282 () (Set Context!7420))

(declare-fun forall!13739 ((Set Context!7420) Int) Bool)

(assert (=> b!5130200 (= res!2184751 (= lt!2116281 (forall!13739 lt!2116282 lambda!253526)))))

(declare-fun lostCauseZipper!1170 ((Set Context!7420)) Bool)

(assert (=> b!5130200 (= lt!2116281 (lostCauseZipper!1170 lt!2116282))))

(declare-fun b!5130201 () Bool)

(declare-fun res!2184752 () Bool)

(assert (=> b!5130201 (=> (not res!2184752) (not e!3199609))))

(assert (=> b!5130201 (= res!2184752 (not (forall!13739 lt!2116282 lambda!253526)))))

(declare-fun b!5130202 () Bool)

(declare-fun res!2184749 () Bool)

(assert (=> b!5130202 (=> (not res!2184749) (not e!3199609))))

(declare-fun z!1054 () (Set Context!7420))

(assert (=> b!5130202 (= res!2184749 (forall!13739 z!1054 lambda!253526))))

(declare-fun b!5130203 () Bool)

(assert (=> b!5130203 (= e!3199609 false)))

(declare-fun lt!2116283 () Bool)

(declare-datatypes ((List!59580 0))(
  ( (Nil!59456) (Cons!59456 (h!65904 Context!7420) (t!372607 List!59580)) )
))
(declare-fun forall!13740 (List!59580 Int) Bool)

(declare-fun toList!8316 ((Set Context!7420)) List!59580)

(assert (=> b!5130203 (= lt!2116283 (forall!13740 (toList!8316 lt!2116282) lambda!253526))))

(declare-fun b!5130204 () Bool)

(declare-fun e!3199607 () Bool)

(declare-fun tp!1431222 () Bool)

(assert (=> b!5130204 (= e!3199607 tp!1431222)))

(declare-fun res!2184748 () Bool)

(declare-fun e!3199608 () Bool)

(assert (=> start!542310 (=> (not res!2184748) (not e!3199608))))

(assert (=> start!542310 (= res!2184748 (lostCauseZipper!1170 z!1054))))

(assert (=> start!542310 e!3199608))

(declare-fun condSetEmpty!31013 () Bool)

(assert (=> start!542310 (= condSetEmpty!31013 (= z!1054 (as set.empty (Set Context!7420))))))

(assert (=> start!542310 setRes!31013))

(declare-fun tp_is_empty!37825 () Bool)

(assert (=> start!542310 tp_is_empty!37825))

(declare-fun b!5130205 () Bool)

(declare-fun res!2184747 () Bool)

(assert (=> b!5130205 (=> (not res!2184747) (not e!3199609))))

(assert (=> b!5130205 (= res!2184747 (not lt!2116281))))

(declare-fun setNonEmpty!31013 () Bool)

(declare-fun setElem!31013 () Context!7420)

(declare-fun tp!1431223 () Bool)

(declare-fun inv!78997 (Context!7420) Bool)

(assert (=> setNonEmpty!31013 (= setRes!31013 (and tp!1431223 (inv!78997 setElem!31013) e!3199607))))

(declare-fun setRest!31013 () (Set Context!7420))

(assert (=> setNonEmpty!31013 (= z!1054 (set.union (set.insert setElem!31013 (as set.empty (Set Context!7420))) setRest!31013))))

(assert (=> b!5130206 (= e!3199608 e!3199606)))

(declare-fun res!2184750 () Bool)

(assert (=> b!5130206 (=> (not res!2184750) (not e!3199606))))

(declare-fun lambda!253525 () Int)

(declare-fun flatMap!377 ((Set Context!7420) Int) (Set Context!7420))

(assert (=> b!5130206 (= res!2184750 (= lt!2116282 (flatMap!377 z!1054 lambda!253525)))))

(declare-fun a!1233 () C!28918)

(declare-fun derivationStepZipper!881 ((Set Context!7420) C!28918) (Set Context!7420))

(assert (=> b!5130206 (= lt!2116282 (derivationStepZipper!881 z!1054 a!1233))))

(assert (= (and start!542310 res!2184748) b!5130206))

(assert (= (and b!5130206 res!2184750) b!5130200))

(assert (= (and b!5130200 res!2184751) b!5130202))

(assert (= (and b!5130202 res!2184749) b!5130205))

(assert (= (and b!5130205 res!2184747) b!5130201))

(assert (= (and b!5130201 res!2184752) b!5130203))

(assert (= (and start!542310 condSetEmpty!31013) setIsEmpty!31013))

(assert (= (and start!542310 (not condSetEmpty!31013)) setNonEmpty!31013))

(assert (= setNonEmpty!31013 b!5130204))

(declare-fun m!6194986 () Bool)

(assert (=> b!5130200 m!6194986))

(declare-fun m!6194988 () Bool)

(assert (=> b!5130200 m!6194988))

(declare-fun m!6194990 () Bool)

(assert (=> b!5130203 m!6194990))

(assert (=> b!5130203 m!6194990))

(declare-fun m!6194992 () Bool)

(assert (=> b!5130203 m!6194992))

(declare-fun m!6194994 () Bool)

(assert (=> setNonEmpty!31013 m!6194994))

(declare-fun m!6194996 () Bool)

(assert (=> b!5130202 m!6194996))

(declare-fun m!6194998 () Bool)

(assert (=> b!5130206 m!6194998))

(declare-fun m!6195000 () Bool)

(assert (=> b!5130206 m!6195000))

(declare-fun m!6195002 () Bool)

(assert (=> start!542310 m!6195002))

(assert (=> b!5130201 m!6194986))

(push 1)

(assert (not b!5130204))

(assert (not b!5130200))

(assert (not b!5130202))

(assert (not b!5130201))

(assert (not b!5130206))

(assert (not start!542310))

(assert (not setNonEmpty!31013))

(assert tp_is_empty!37825)

(assert (not b!5130203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

