; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239140 () Bool)

(assert start!239140)

(declare-fun b!2447135 () Bool)

(declare-fun e!1553962 () Bool)

(assert (=> b!2447135 (= e!1553962 (not true))))

(declare-datatypes ((C!14546 0))(
  ( (C!14547 (val!8515 Int)) )
))
(declare-datatypes ((Regex!7194 0))(
  ( (ElementMatch!7194 (c!390550 C!14546)) (Concat!11830 (regOne!14900 Regex!7194) (regTwo!14900 Regex!7194)) (EmptyExpr!7194) (Star!7194 (reg!7523 Regex!7194)) (EmptyLang!7194) (Union!7194 (regOne!14901 Regex!7194) (regTwo!14901 Regex!7194)) )
))
(declare-fun r!13927 () Regex!7194)

(declare-datatypes ((List!28624 0))(
  ( (Nil!28526) (Cons!28526 (h!33927 C!14546) (t!208601 List!28624)) )
))
(declare-fun s!9460 () List!28624)

(declare-fun matchR!3309 (Regex!7194 List!28624) Bool)

(declare-fun matchRSpec!1041 (Regex!7194 List!28624) Bool)

(assert (=> b!2447135 (= (matchR!3309 r!13927 s!9460) (matchRSpec!1041 r!13927 s!9460))))

(declare-datatypes ((Unit!41843 0))(
  ( (Unit!41844) )
))
(declare-fun lt!879517 () Unit!41843)

(declare-fun mainMatchTheorem!1041 (Regex!7194 List!28624) Unit!41843)

(assert (=> b!2447135 (= lt!879517 (mainMatchTheorem!1041 r!13927 s!9460))))

(declare-fun b!2447136 () Bool)

(declare-fun e!1553961 () Bool)

(declare-fun tp!777311 () Bool)

(assert (=> b!2447136 (= e!1553961 tp!777311)))

(declare-fun b!2447137 () Bool)

(declare-fun res!1038495 () Bool)

(assert (=> b!2447137 (=> (not res!1038495) (not e!1553962))))

(declare-datatypes ((List!28625 0))(
  ( (Nil!28527) (Cons!28527 (h!33928 Regex!7194) (t!208602 List!28625)) )
))
(declare-fun l!9164 () List!28625)

(declare-fun generalisedConcat!295 (List!28625) Regex!7194)

(assert (=> b!2447137 (= res!1038495 (= r!13927 (generalisedConcat!295 l!9164)))))

(declare-fun b!2447138 () Bool)

(declare-fun tp_is_empty!11801 () Bool)

(assert (=> b!2447138 (= e!1553961 tp_is_empty!11801)))

(declare-fun b!2447139 () Bool)

(declare-fun tp!777309 () Bool)

(declare-fun tp!777310 () Bool)

(assert (=> b!2447139 (= e!1553961 (and tp!777309 tp!777310))))

(declare-fun res!1038496 () Bool)

(assert (=> start!239140 (=> (not res!1038496) (not e!1553962))))

(declare-fun lambda!92742 () Int)

(declare-fun forall!5828 (List!28625 Int) Bool)

(assert (=> start!239140 (= res!1038496 (forall!5828 l!9164 lambda!92742))))

(assert (=> start!239140 e!1553962))

(declare-fun e!1553959 () Bool)

(assert (=> start!239140 e!1553959))

(assert (=> start!239140 e!1553961))

(declare-fun e!1553960 () Bool)

(assert (=> start!239140 e!1553960))

(declare-fun b!2447140 () Bool)

(declare-fun tp!777306 () Bool)

(assert (=> b!2447140 (= e!1553960 (and tp_is_empty!11801 tp!777306))))

(declare-fun b!2447141 () Bool)

(declare-fun tp!777313 () Bool)

(declare-fun tp!777308 () Bool)

(assert (=> b!2447141 (= e!1553959 (and tp!777313 tp!777308))))

(declare-fun b!2447142 () Bool)

(declare-fun tp!777307 () Bool)

(declare-fun tp!777312 () Bool)

(assert (=> b!2447142 (= e!1553961 (and tp!777307 tp!777312))))

(assert (= (and start!239140 res!1038496) b!2447137))

(assert (= (and b!2447137 res!1038495) b!2447135))

(assert (= (and start!239140 (is-Cons!28527 l!9164)) b!2447141))

(assert (= (and start!239140 (is-ElementMatch!7194 r!13927)) b!2447138))

(assert (= (and start!239140 (is-Concat!11830 r!13927)) b!2447142))

(assert (= (and start!239140 (is-Star!7194 r!13927)) b!2447136))

(assert (= (and start!239140 (is-Union!7194 r!13927)) b!2447139))

(assert (= (and start!239140 (is-Cons!28526 s!9460)) b!2447140))

(declare-fun m!2822941 () Bool)

(assert (=> b!2447135 m!2822941))

(declare-fun m!2822943 () Bool)

(assert (=> b!2447135 m!2822943))

(declare-fun m!2822945 () Bool)

(assert (=> b!2447135 m!2822945))

(declare-fun m!2822947 () Bool)

(assert (=> b!2447137 m!2822947))

(declare-fun m!2822949 () Bool)

(assert (=> start!239140 m!2822949))

(push 1)

(assert tp_is_empty!11801)

(assert (not start!239140))

(assert (not b!2447141))

(assert (not b!2447142))

(assert (not b!2447137))

(assert (not b!2447139))

(assert (not b!2447136))

(assert (not b!2447135))

(assert (not b!2447140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

