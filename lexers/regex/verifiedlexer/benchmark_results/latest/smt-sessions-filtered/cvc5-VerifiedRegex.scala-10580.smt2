; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544194 () Bool)

(assert start!544194)

(declare-fun res!2188929 () Bool)

(declare-fun e!3205586 () Bool)

(assert (=> start!544194 (=> (not res!2188929) (not e!3205586))))

(declare-datatypes ((C!29166 0))(
  ( (C!29167 (val!24235 Int)) )
))
(declare-datatypes ((Regex!14450 0))(
  ( (ElementMatch!14450 (c!884980 C!29166)) (Concat!23295 (regOne!29412 Regex!14450) (regTwo!29412 Regex!14450)) (EmptyExpr!14450) (Star!14450 (reg!14779 Regex!14450)) (EmptyLang!14450) (Union!14450 (regOne!29413 Regex!14450) (regTwo!29413 Regex!14450)) )
))
(declare-fun expr!117 () Regex!14450)

(declare-fun validRegex!6305 (Regex!14450) Bool)

(assert (=> start!544194 (= res!2188929 (validRegex!6305 expr!117))))

(assert (=> start!544194 e!3205586))

(declare-fun e!3205590 () Bool)

(assert (=> start!544194 e!3205590))

(declare-datatypes ((List!59824 0))(
  ( (Nil!59700) (Cons!59700 (h!66148 Regex!14450) (t!372857 List!59824)) )
))
(declare-datatypes ((Context!7668 0))(
  ( (Context!7669 (exprs!4334 List!59824)) )
))
(declare-fun ctx!100 () Context!7668)

(declare-fun e!3205591 () Bool)

(declare-fun inv!79307 (Context!7668) Bool)

(assert (=> start!544194 (and (inv!79307 ctx!100) e!3205591)))

(declare-fun tp_is_empty!38049 () Bool)

(assert (=> start!544194 tp_is_empty!38049))

(declare-fun b!5139508 () Bool)

(declare-fun res!2188931 () Bool)

(assert (=> b!5139508 (=> (not res!2188931) (not e!3205586))))

(assert (=> b!5139508 (= res!2188931 (validRegex!6305 (regTwo!29412 expr!117)))))

(declare-fun b!5139509 () Bool)

(declare-fun res!2188932 () Bool)

(assert (=> b!5139509 (=> (not res!2188932) (not e!3205586))))

(declare-fun e!3205588 () Bool)

(assert (=> b!5139509 (= res!2188932 e!3205588)))

(declare-fun res!2188926 () Bool)

(assert (=> b!5139509 (=> res!2188926 e!3205588)))

(declare-fun lostCause!1452 (Regex!14450) Bool)

(assert (=> b!5139509 (= res!2188926 (lostCause!1452 expr!117))))

(declare-fun b!5139510 () Bool)

(declare-fun tp!1433593 () Bool)

(declare-fun tp!1433594 () Bool)

(assert (=> b!5139510 (= e!3205590 (and tp!1433593 tp!1433594))))

(declare-fun b!5139511 () Bool)

(declare-fun lostCause!1453 (Context!7668) Bool)

(assert (=> b!5139511 (= e!3205588 (lostCause!1453 ctx!100))))

(declare-fun b!5139512 () Bool)

(assert (=> b!5139512 (= e!3205586 false)))

(declare-fun lt!2120323 () Bool)

(declare-fun e!3205589 () Bool)

(assert (=> b!5139512 (= lt!2120323 e!3205589)))

(declare-fun res!2188928 () Bool)

(assert (=> b!5139512 (=> res!2188928 e!3205589)))

(assert (=> b!5139512 (= res!2188928 (lostCause!1452 (regOne!29412 expr!117)))))

(declare-fun b!5139513 () Bool)

(declare-fun tp!1433591 () Bool)

(assert (=> b!5139513 (= e!3205590 tp!1433591)))

(declare-fun b!5139514 () Bool)

(declare-fun res!2188925 () Bool)

(assert (=> b!5139514 (=> (not res!2188925) (not e!3205586))))

(declare-fun a!1296 () C!29166)

(assert (=> b!5139514 (= res!2188925 (and (or (not (is-ElementMatch!14450 expr!117)) (not (= (c!884980 expr!117) a!1296))) (not (is-Union!14450 expr!117))))))

(declare-fun b!5139515 () Bool)

(assert (=> b!5139515 (= e!3205590 tp_is_empty!38049)))

(declare-fun b!5139516 () Bool)

(declare-fun res!2188934 () Bool)

(assert (=> b!5139516 (=> (not res!2188934) (not e!3205586))))

(assert (=> b!5139516 (= res!2188934 (validRegex!6305 (regOne!29412 expr!117)))))

(declare-fun b!5139517 () Bool)

(declare-fun tp!1433595 () Bool)

(assert (=> b!5139517 (= e!3205591 tp!1433595)))

(declare-fun b!5139518 () Bool)

(declare-fun e!3205587 () Bool)

(declare-fun nullable!4809 (Regex!14450) Bool)

(assert (=> b!5139518 (= e!3205587 (not (nullable!4809 (regOne!29412 expr!117))))))

(declare-fun b!5139519 () Bool)

(declare-fun tp!1433592 () Bool)

(declare-fun tp!1433590 () Bool)

(assert (=> b!5139519 (= e!3205590 (and tp!1433592 tp!1433590))))

(declare-fun b!5139520 () Bool)

(declare-fun res!2188933 () Bool)

(assert (=> b!5139520 (=> (not res!2188933) (not e!3205586))))

(assert (=> b!5139520 (= res!2188933 e!3205587)))

(declare-fun res!2188927 () Bool)

(assert (=> b!5139520 (=> res!2188927 e!3205587)))

(assert (=> b!5139520 (= res!2188927 (not (is-Concat!23295 expr!117)))))

(declare-fun b!5139521 () Bool)

(declare-fun $colon$colon!1188 (List!59824 Regex!14450) List!59824)

(assert (=> b!5139521 (= e!3205589 (lostCause!1453 (Context!7669 ($colon$colon!1188 (exprs!4334 ctx!100) (regTwo!29412 expr!117)))))))

(declare-fun b!5139522 () Bool)

(declare-fun res!2188930 () Bool)

(assert (=> b!5139522 (=> (not res!2188930) (not e!3205586))))

(assert (=> b!5139522 (= res!2188930 (is-Concat!23295 expr!117))))

(assert (= (and start!544194 res!2188929) b!5139509))

(assert (= (and b!5139509 (not res!2188926)) b!5139511))

(assert (= (and b!5139509 res!2188932) b!5139514))

(assert (= (and b!5139514 res!2188925) b!5139520))

(assert (= (and b!5139520 (not res!2188927)) b!5139518))

(assert (= (and b!5139520 res!2188933) b!5139522))

(assert (= (and b!5139522 res!2188930) b!5139508))

(assert (= (and b!5139508 res!2188931) b!5139516))

(assert (= (and b!5139516 res!2188934) b!5139512))

(assert (= (and b!5139512 (not res!2188928)) b!5139521))

(assert (= (and start!544194 (is-ElementMatch!14450 expr!117)) b!5139515))

(assert (= (and start!544194 (is-Concat!23295 expr!117)) b!5139519))

(assert (= (and start!544194 (is-Star!14450 expr!117)) b!5139513))

(assert (= (and start!544194 (is-Union!14450 expr!117)) b!5139510))

(assert (= start!544194 b!5139517))

(declare-fun m!6204044 () Bool)

(assert (=> b!5139521 m!6204044))

(declare-fun m!6204046 () Bool)

(assert (=> b!5139521 m!6204046))

(declare-fun m!6204048 () Bool)

(assert (=> b!5139518 m!6204048))

(declare-fun m!6204050 () Bool)

(assert (=> b!5139509 m!6204050))

(declare-fun m!6204052 () Bool)

(assert (=> start!544194 m!6204052))

(declare-fun m!6204054 () Bool)

(assert (=> start!544194 m!6204054))

(declare-fun m!6204056 () Bool)

(assert (=> b!5139516 m!6204056))

(declare-fun m!6204058 () Bool)

(assert (=> b!5139508 m!6204058))

(declare-fun m!6204060 () Bool)

(assert (=> b!5139512 m!6204060))

(declare-fun m!6204062 () Bool)

(assert (=> b!5139511 m!6204062))

(push 1)

(assert (not b!5139521))

(assert tp_is_empty!38049)

(assert (not start!544194))

(assert (not b!5139516))

(assert (not b!5139519))

(assert (not b!5139517))

(assert (not b!5139510))

(assert (not b!5139518))

(assert (not b!5139512))

(assert (not b!5139511))

(assert (not b!5139509))

(assert (not b!5139508))

(assert (not b!5139513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

