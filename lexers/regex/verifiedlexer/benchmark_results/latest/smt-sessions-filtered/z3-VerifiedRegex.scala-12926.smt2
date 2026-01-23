; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712698 () Bool)

(assert start!712698)

(declare-fun b_free!134005 () Bool)

(declare-fun b_next!134795 () Bool)

(assert (=> start!712698 (= b_free!134005 (not b_next!134795))))

(declare-fun tp!2075821 () Bool)

(declare-fun b_and!351387 () Bool)

(assert (=> start!712698 (= tp!2075821 b_and!351387)))

(declare-fun b!7314415 () Bool)

(assert (=> b!7314415 true))

(declare-fun b!7314412 () Bool)

(declare-fun e!4378477 () Bool)

(declare-fun e!4378476 () Bool)

(assert (=> b!7314412 (= e!4378477 e!4378476)))

(declare-fun res!2955551 () Bool)

(assert (=> b!7314412 (=> (not res!2955551) (not e!4378476))))

(declare-datatypes ((B!3553 0))(
  ( (B!3554 (val!29109 Int)) )
))
(declare-datatypes ((List!71185 0))(
  ( (Nil!71061) (Cons!71061 (h!77509 B!3553) (t!385394 List!71185)) )
))
(declare-fun lRes!18 () List!71185)

(declare-fun lt!2601478 () List!71185)

(declare-fun subseq!837 (List!71185 List!71185) Bool)

(assert (=> b!7314412 (= res!2955551 (subseq!837 lRes!18 lt!2601478))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!851 0))(
  ( (A!852 (val!29110 Int)) )
))
(declare-fun s!1437 () (InoxSet A!851))

(declare-fun f!883 () Int)

(declare-fun toList!11594 ((InoxSet B!3553)) List!71185)

(declare-fun flatMap!3036 ((InoxSet A!851) Int) (InoxSet B!3553))

(assert (=> b!7314412 (= lt!2601478 (toList!11594 (flatMap!3036 s!1437 f!883)))))

(declare-fun setIsEmpty!54175 () Bool)

(declare-fun setRes!54175 () Bool)

(assert (=> setIsEmpty!54175 setRes!54175))

(declare-fun b!7314413 () Bool)

(declare-fun e!4378478 () Bool)

(declare-fun tp_is_empty!47499 () Bool)

(declare-fun tp!2075823 () Bool)

(assert (=> b!7314413 (= e!4378478 (and tp_is_empty!47499 tp!2075823))))

(declare-fun b!7314414 () Bool)

(declare-fun res!2955550 () Bool)

(assert (=> b!7314414 (=> (not res!2955550) (not e!4378476))))

(get-info :version)

(assert (=> b!7314414 (= res!2955550 ((_ is Cons!71061) lRes!18))))

(declare-fun lambda!451845 () Int)

(declare-fun forall!17750 (List!71185 Int) Bool)

(assert (=> b!7314415 (= e!4378476 (not (forall!17750 (t!385394 lRes!18) lambda!451845)))))

(assert (=> b!7314415 (forall!17750 (t!385394 lRes!18) lambda!451845)))

(declare-fun lt!2601477 () List!71185)

(declare-fun elmt!118 () A!851)

(declare-fun dynLambda!29121 (Int A!851) (InoxSet B!3553))

(assert (=> b!7314415 (= lt!2601477 (toList!11594 (dynLambda!29121 f!883 elmt!118)))))

(declare-datatypes ((Unit!164555 0))(
  ( (Unit!164556) )
))
(declare-fun lt!2601479 () Unit!164555)

(declare-fun lemmaFlatMapOnSingletonSetList1!22 ((InoxSet A!851) A!851 Int List!71185) Unit!164555)

(assert (=> b!7314415 (= lt!2601479 (lemmaFlatMapOnSingletonSetList1!22 s!1437 elmt!118 f!883 (t!385394 lRes!18)))))

(declare-fun lt!2601476 () Unit!164555)

(declare-fun subseqTail!80 (List!71185 List!71185) Unit!164555)

(assert (=> b!7314415 (= lt!2601476 (subseqTail!80 lRes!18 lt!2601478))))

(declare-fun res!2955549 () Bool)

(assert (=> start!712698 (=> (not res!2955549) (not e!4378477))))

(assert (=> start!712698 (= res!2955549 (= s!1437 (store ((as const (Array A!851 Bool)) false) elmt!118 true)))))

(assert (=> start!712698 e!4378477))

(declare-fun condSetEmpty!54175 () Bool)

(assert (=> start!712698 (= condSetEmpty!54175 (= s!1437 ((as const (Array A!851 Bool)) false)))))

(assert (=> start!712698 setRes!54175))

(declare-fun tp_is_empty!47497 () Bool)

(assert (=> start!712698 tp_is_empty!47497))

(assert (=> start!712698 tp!2075821))

(assert (=> start!712698 e!4378478))

(declare-fun setNonEmpty!54175 () Bool)

(declare-fun tp!2075822 () Bool)

(assert (=> setNonEmpty!54175 (= setRes!54175 (and tp!2075822 tp_is_empty!47497))))

(declare-fun setElem!54175 () A!851)

(declare-fun setRest!54175 () (InoxSet A!851))

(assert (=> setNonEmpty!54175 (= s!1437 ((_ map or) (store ((as const (Array A!851 Bool)) false) setElem!54175 true) setRest!54175))))

(assert (= (and start!712698 res!2955549) b!7314412))

(assert (= (and b!7314412 res!2955551) b!7314414))

(assert (= (and b!7314414 res!2955550) b!7314415))

(assert (= (and start!712698 condSetEmpty!54175) setIsEmpty!54175))

(assert (= (and start!712698 (not condSetEmpty!54175)) setNonEmpty!54175))

(assert (= (and start!712698 ((_ is Cons!71061) lRes!18)) b!7314413))

(declare-fun b_lambda!282421 () Bool)

(assert (=> (not b_lambda!282421) (not b!7314415)))

(declare-fun t!385393 () Bool)

(declare-fun tb!262229 () Bool)

(assert (=> (and start!712698 (= f!883 f!883) t!385393) tb!262229))

(assert (=> b!7314415 t!385393))

(declare-fun result!352944 () Bool)

(declare-fun b_and!351389 () Bool)

(assert (= b_and!351387 (and (=> t!385393 result!352944) b_and!351389)))

(declare-fun m!7978474 () Bool)

(assert (=> b!7314412 m!7978474))

(declare-fun m!7978476 () Bool)

(assert (=> b!7314412 m!7978476))

(assert (=> b!7314412 m!7978476))

(declare-fun m!7978478 () Bool)

(assert (=> b!7314412 m!7978478))

(declare-fun m!7978480 () Bool)

(assert (=> b!7314415 m!7978480))

(assert (=> b!7314415 m!7978480))

(declare-fun m!7978482 () Bool)

(assert (=> b!7314415 m!7978482))

(declare-fun m!7978484 () Bool)

(assert (=> b!7314415 m!7978484))

(declare-fun m!7978486 () Bool)

(assert (=> b!7314415 m!7978486))

(declare-fun m!7978488 () Bool)

(assert (=> b!7314415 m!7978488))

(assert (=> b!7314415 m!7978488))

(declare-fun m!7978490 () Bool)

(assert (=> start!712698 m!7978490))

(check-sat tp_is_empty!47497 (not b_lambda!282421) (not b!7314412) (not tb!262229) (not setNonEmpty!54175) b_and!351389 (not b!7314415) tp_is_empty!47499 (not b!7314413) (not b_next!134795))
(check-sat b_and!351389 (not b_next!134795))
