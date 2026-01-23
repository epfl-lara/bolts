; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542610 () Bool)

(assert start!542610)

(declare-fun b!5131513 () Bool)

(assert (=> b!5131513 true))

(declare-fun setIsEmpty!31111 () Bool)

(declare-fun setRes!31111 () Bool)

(assert (=> setIsEmpty!31111 setRes!31111))

(declare-fun b!5131510 () Bool)

(declare-fun res!2185455 () Bool)

(declare-fun e!3200514 () Bool)

(assert (=> b!5131510 (=> (not res!2185455) (not e!3200514))))

(declare-datatypes ((C!28958 0))(
  ( (C!28959 (val!24131 Int)) )
))
(declare-datatypes ((Regex!14346 0))(
  ( (ElementMatch!14346 (c!882835 C!28958)) (Concat!23191 (regOne!29204 Regex!14346) (regTwo!29204 Regex!14346)) (EmptyExpr!14346) (Star!14346 (reg!14675 Regex!14346)) (EmptyLang!14346) (Union!14346 (regOne!29205 Regex!14346) (regTwo!29205 Regex!14346)) )
))
(declare-datatypes ((List!59625 0))(
  ( (Nil!59501) (Cons!59501 (h!65949 Regex!14346) (t!372652 List!59625)) )
))
(declare-datatypes ((Context!7460 0))(
  ( (Context!7461 (exprs!4230 List!59625)) )
))
(declare-fun z!1054 () (Set Context!7460))

(declare-fun lambda!254254 () Int)

(declare-fun forall!13773 ((Set Context!7460) Int) Bool)

(assert (=> b!5131510 (= res!2185455 (forall!13773 z!1054 lambda!254254))))

(declare-fun b!5131512 () Bool)

(declare-fun e!3200511 () Bool)

(assert (=> b!5131512 (= e!3200511 e!3200514)))

(declare-fun res!2185453 () Bool)

(assert (=> b!5131512 (=> (not res!2185453) (not e!3200514))))

(declare-fun lt!2117106 () (Set Context!7460))

(declare-fun lt!2117107 () Bool)

(assert (=> b!5131512 (= res!2185453 (= lt!2117107 (forall!13773 lt!2117106 lambda!254254)))))

(declare-fun lostCauseZipper!1190 ((Set Context!7460)) Bool)

(assert (=> b!5131512 (= lt!2117107 (lostCauseZipper!1190 lt!2117106))))

(declare-fun e!3200513 () Bool)

(assert (=> b!5131513 (= e!3200513 e!3200511)))

(declare-fun res!2185454 () Bool)

(assert (=> b!5131513 (=> (not res!2185454) (not e!3200511))))

(declare-fun lambda!254253 () Int)

(declare-fun flatMap!397 ((Set Context!7460) Int) (Set Context!7460))

(assert (=> b!5131513 (= res!2185454 (= lt!2117106 (flatMap!397 z!1054 lambda!254253)))))

(declare-fun a!1233 () C!28958)

(declare-fun derivationStepZipper!901 ((Set Context!7460) C!28958) (Set Context!7460))

(assert (=> b!5131513 (= lt!2117106 (derivationStepZipper!901 z!1054 a!1233))))

(declare-fun setNonEmpty!31111 () Bool)

(declare-fun setElem!31111 () Context!7460)

(declare-fun e!3200512 () Bool)

(declare-fun tp!1431536 () Bool)

(declare-fun inv!79047 (Context!7460) Bool)

(assert (=> setNonEmpty!31111 (= setRes!31111 (and tp!1431536 (inv!79047 setElem!31111) e!3200512))))

(declare-fun setRest!31111 () (Set Context!7460))

(assert (=> setNonEmpty!31111 (= z!1054 (set.union (set.insert setElem!31111 (as set.empty (Set Context!7460))) setRest!31111))))

(declare-fun res!2185456 () Bool)

(assert (=> start!542610 (=> (not res!2185456) (not e!3200513))))

(assert (=> start!542610 (= res!2185456 (lostCauseZipper!1190 z!1054))))

(assert (=> start!542610 e!3200513))

(declare-fun condSetEmpty!31111 () Bool)

(assert (=> start!542610 (= condSetEmpty!31111 (= z!1054 (as set.empty (Set Context!7460))))))

(assert (=> start!542610 setRes!31111))

(declare-fun tp_is_empty!37865 () Bool)

(assert (=> start!542610 tp_is_empty!37865))

(declare-fun b!5131511 () Bool)

(assert (=> b!5131511 (= e!3200514 (forall!13773 lt!2117106 lambda!254254))))

(declare-fun b!5131514 () Bool)

(declare-fun tp!1431537 () Bool)

(assert (=> b!5131514 (= e!3200512 tp!1431537)))

(declare-fun b!5131515 () Bool)

(declare-fun res!2185457 () Bool)

(assert (=> b!5131515 (=> (not res!2185457) (not e!3200514))))

(assert (=> b!5131515 (= res!2185457 (not lt!2117107))))

(assert (= (and start!542610 res!2185456) b!5131513))

(assert (= (and b!5131513 res!2185454) b!5131512))

(assert (= (and b!5131512 res!2185453) b!5131510))

(assert (= (and b!5131510 res!2185455) b!5131515))

(assert (= (and b!5131515 res!2185457) b!5131511))

(assert (= (and start!542610 condSetEmpty!31111) setIsEmpty!31111))

(assert (= (and start!542610 (not condSetEmpty!31111)) setNonEmpty!31111))

(assert (= setNonEmpty!31111 b!5131514))

(declare-fun m!6196870 () Bool)

(assert (=> setNonEmpty!31111 m!6196870))

(declare-fun m!6196872 () Bool)

(assert (=> b!5131510 m!6196872))

(declare-fun m!6196874 () Bool)

(assert (=> b!5131511 m!6196874))

(declare-fun m!6196876 () Bool)

(assert (=> start!542610 m!6196876))

(declare-fun m!6196878 () Bool)

(assert (=> b!5131513 m!6196878))

(declare-fun m!6196880 () Bool)

(assert (=> b!5131513 m!6196880))

(assert (=> b!5131512 m!6196874))

(declare-fun m!6196882 () Bool)

(assert (=> b!5131512 m!6196882))

(push 1)

(assert tp_is_empty!37865)

(assert (not b!5131512))

(assert (not b!5131514))

(assert (not setNonEmpty!31111))

(assert (not b!5131511))

(assert (not b!5131513))

(assert (not start!542610))

(assert (not b!5131510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

