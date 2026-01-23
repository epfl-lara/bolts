; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677192 () Bool)

(assert start!677192)

(declare-fun b!7021226 () Bool)

(declare-fun e!4220610 () Bool)

(declare-fun tp!1934080 () Bool)

(assert (=> b!7021226 (= e!4220610 tp!1934080)))

(declare-fun setIsEmpty!48711 () Bool)

(declare-fun setRes!48711 () Bool)

(assert (=> setIsEmpty!48711 setRes!48711))

(declare-fun b!7021227 () Bool)

(declare-fun e!4220608 () Bool)

(declare-datatypes ((C!35054 0))(
  ( (C!35055 (val!27229 Int)) )
))
(declare-datatypes ((Regex!17392 0))(
  ( (ElementMatch!17392 (c!1304893 C!35054)) (Concat!26237 (regOne!35296 Regex!17392) (regTwo!35296 Regex!17392)) (EmptyExpr!17392) (Star!17392 (reg!17721 Regex!17392)) (EmptyLang!17392) (Union!17392 (regOne!35297 Regex!17392) (regTwo!35297 Regex!17392)) )
))
(declare-datatypes ((List!67721 0))(
  ( (Nil!67597) (Cons!67597 (h!74045 Regex!17392) (t!381476 List!67721)) )
))
(declare-datatypes ((Context!12776 0))(
  ( (Context!12777 (exprs!6888 List!67721)) )
))
(declare-fun lt!2512129 () (Set Context!12776))

(declare-fun lambda!411460 () Int)

(declare-fun exists!3278 ((Set Context!12776) Int) Bool)

(assert (=> b!7021227 (= e!4220608 (not (exists!3278 lt!2512129 lambda!411460)))))

(declare-fun b!7021228 () Bool)

(declare-fun res!2866003 () Bool)

(assert (=> b!7021228 (=> (not res!2866003) (not e!4220608))))

(declare-fun nullableZipper!2521 ((Set Context!12776)) Bool)

(assert (=> b!7021228 (= res!2866003 (nullableZipper!2521 lt!2512129))))

(declare-fun res!2866001 () Bool)

(assert (=> start!677192 (=> (not res!2866001) (not e!4220608))))

(declare-datatypes ((List!67722 0))(
  ( (Nil!67598) (Cons!67598 (h!74046 C!35054) (t!381477 List!67722)) )
))
(declare-fun s!7408 () List!67722)

(declare-fun matchZipper!2932 ((Set Context!12776) List!67722) Bool)

(assert (=> start!677192 (= res!2866001 (matchZipper!2932 lt!2512129 s!7408))))

(declare-fun z1!570 () (Set Context!12776))

(declare-fun ct2!306 () Context!12776)

(declare-fun appendTo!513 ((Set Context!12776) Context!12776) (Set Context!12776))

(assert (=> start!677192 (= lt!2512129 (appendTo!513 z1!570 ct2!306))))

(assert (=> start!677192 e!4220608))

(declare-fun condSetEmpty!48711 () Bool)

(assert (=> start!677192 (= condSetEmpty!48711 (= z1!570 (as set.empty (Set Context!12776))))))

(assert (=> start!677192 setRes!48711))

(declare-fun inv!86340 (Context!12776) Bool)

(assert (=> start!677192 (and (inv!86340 ct2!306) e!4220610)))

(declare-fun e!4220607 () Bool)

(assert (=> start!677192 e!4220607))

(declare-fun b!7021229 () Bool)

(declare-fun res!2866002 () Bool)

(assert (=> b!7021229 (=> (not res!2866002) (not e!4220608))))

(assert (=> b!7021229 (= res!2866002 (exists!3278 lt!2512129 lambda!411460))))

(declare-fun setNonEmpty!48711 () Bool)

(declare-fun tp!1934083 () Bool)

(declare-fun e!4220609 () Bool)

(declare-fun setElem!48711 () Context!12776)

(assert (=> setNonEmpty!48711 (= setRes!48711 (and tp!1934083 (inv!86340 setElem!48711) e!4220609))))

(declare-fun setRest!48711 () (Set Context!12776))

(assert (=> setNonEmpty!48711 (= z1!570 (set.union (set.insert setElem!48711 (as set.empty (Set Context!12776))) setRest!48711))))

(declare-fun b!7021230 () Bool)

(declare-fun res!2866000 () Bool)

(assert (=> b!7021230 (=> (not res!2866000) (not e!4220608))))

(assert (=> b!7021230 (= res!2866000 (not (is-Cons!67598 s!7408)))))

(declare-fun b!7021231 () Bool)

(declare-fun tp!1934082 () Bool)

(assert (=> b!7021231 (= e!4220609 tp!1934082)))

(declare-fun b!7021232 () Bool)

(declare-fun tp_is_empty!44009 () Bool)

(declare-fun tp!1934081 () Bool)

(assert (=> b!7021232 (= e!4220607 (and tp_is_empty!44009 tp!1934081))))

(assert (= (and start!677192 res!2866001) b!7021230))

(assert (= (and b!7021230 res!2866000) b!7021228))

(assert (= (and b!7021228 res!2866003) b!7021229))

(assert (= (and b!7021229 res!2866002) b!7021227))

(assert (= (and start!677192 condSetEmpty!48711) setIsEmpty!48711))

(assert (= (and start!677192 (not condSetEmpty!48711)) setNonEmpty!48711))

(assert (= setNonEmpty!48711 b!7021231))

(assert (= start!677192 b!7021226))

(assert (= (and start!677192 (is-Cons!67598 s!7408)) b!7021232))

(declare-fun m!7723152 () Bool)

(assert (=> start!677192 m!7723152))

(declare-fun m!7723154 () Bool)

(assert (=> start!677192 m!7723154))

(declare-fun m!7723156 () Bool)

(assert (=> start!677192 m!7723156))

(declare-fun m!7723158 () Bool)

(assert (=> setNonEmpty!48711 m!7723158))

(declare-fun m!7723160 () Bool)

(assert (=> b!7021227 m!7723160))

(declare-fun m!7723162 () Bool)

(assert (=> b!7021228 m!7723162))

(assert (=> b!7021229 m!7723160))

(push 1)

(assert (not b!7021229))

(assert tp_is_empty!44009)

(assert (not setNonEmpty!48711))

(assert (not b!7021232))

(assert (not start!677192))

(assert (not b!7021228))

(assert (not b!7021227))

(assert (not b!7021231))

(assert (not b!7021226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

