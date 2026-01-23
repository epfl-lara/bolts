; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543108 () Bool)

(assert start!543108)

(declare-fun res!2186502 () Bool)

(declare-fun e!3201801 () Bool)

(assert (=> start!543108 (=> (not res!2186502) (not e!3201801))))

(declare-datatypes ((C!29016 0))(
  ( (C!29017 (val!24160 Int)) )
))
(declare-datatypes ((Regex!14375 0))(
  ( (ElementMatch!14375 (c!883490 C!29016)) (Concat!23220 (regOne!29262 Regex!14375) (regTwo!29262 Regex!14375)) (EmptyExpr!14375) (Star!14375 (reg!14704 Regex!14375)) (EmptyLang!14375) (Union!14375 (regOne!29263 Regex!14375) (regTwo!29263 Regex!14375)) )
))
(declare-datatypes ((List!59694 0))(
  ( (Nil!59570) (Cons!59570 (h!66018 Regex!14375) (t!372721 List!59694)) )
))
(declare-datatypes ((Context!7518 0))(
  ( (Context!7519 (exprs!4259 List!59694)) )
))
(declare-fun ctx!74 () Context!7518)

(declare-fun lostCause!1315 (Context!7518) Bool)

(assert (=> start!543108 (= res!2186502 (lostCause!1315 ctx!74))))

(assert (=> start!543108 e!3201801))

(declare-fun e!3201802 () Bool)

(declare-fun inv!79118 (Context!7518) Bool)

(assert (=> start!543108 (and (inv!79118 ctx!74) e!3201802)))

(declare-fun b!5133384 () Bool)

(assert (=> b!5133384 (= e!3201801 false)))

(declare-fun b!5133385 () Bool)

(declare-fun tp!1431963 () Bool)

(assert (=> b!5133385 (= e!3201802 tp!1431963)))

(assert (= (and start!543108 res!2186502) b!5133384))

(assert (= start!543108 b!5133385))

(declare-fun m!6199550 () Bool)

(assert (=> start!543108 m!6199550))

(declare-fun m!6199552 () Bool)

(assert (=> start!543108 m!6199552))

(check-sat (not start!543108) (not b!5133385))
(check-sat)
