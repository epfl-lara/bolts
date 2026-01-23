; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281404 () Bool)

(assert start!281404)

(declare-fun b!2882117 () Bool)

(declare-fun e!1823263 () Bool)

(declare-fun tp_is_empty!15107 () Bool)

(assert (=> b!2882117 (= e!1823263 tp_is_empty!15107)))

(declare-fun res!1194122 () Bool)

(declare-fun e!1823262 () Bool)

(assert (=> start!281404 (=> (not res!1194122) (not e!1823262))))

(declare-datatypes ((C!17702 0))(
  ( (C!17703 (val!10885 Int)) )
))
(declare-datatypes ((Regex!8760 0))(
  ( (ElementMatch!8760 (c!468241 C!17702)) (Concat!14081 (regOne!18032 Regex!8760) (regTwo!18032 Regex!8760)) (EmptyExpr!8760) (Star!8760 (reg!9089 Regex!8760)) (EmptyLang!8760) (Union!8760 (regOne!18033 Regex!8760) (regTwo!18033 Regex!8760)) )
))
(declare-fun r!23079 () Regex!8760)

(declare-fun validRegex!3533 (Regex!8760) Bool)

(assert (=> start!281404 (= res!1194122 (validRegex!3533 r!23079))))

(assert (=> start!281404 e!1823262))

(assert (=> start!281404 e!1823263))

(declare-fun b!2882118 () Bool)

(assert (=> b!2882118 (= e!1823262 false)))

(declare-datatypes ((List!34561 0))(
  ( (Nil!34437) (Cons!34437 (h!39857 C!17702) (t!233604 List!34561)) )
))
(declare-datatypes ((Option!6433 0))(
  ( (None!6432) (Some!6432 (v!34558 List!34561)) )
))
(declare-fun lt!1019941 () Option!6433)

(declare-fun getLanguageWitness!467 (Regex!8760) Option!6433)

(assert (=> b!2882118 (= lt!1019941 (getLanguageWitness!467 r!23079))))

(declare-fun b!2882119 () Bool)

(declare-fun tp!924283 () Bool)

(assert (=> b!2882119 (= e!1823263 tp!924283)))

(declare-fun b!2882120 () Bool)

(declare-fun tp!924280 () Bool)

(declare-fun tp!924284 () Bool)

(assert (=> b!2882120 (= e!1823263 (and tp!924280 tp!924284))))

(declare-fun b!2882121 () Bool)

(declare-fun tp!924281 () Bool)

(declare-fun tp!924282 () Bool)

(assert (=> b!2882121 (= e!1823263 (and tp!924281 tp!924282))))

(assert (= (and start!281404 res!1194122) b!2882118))

(assert (= (and start!281404 (is-ElementMatch!8760 r!23079)) b!2882117))

(assert (= (and start!281404 (is-Concat!14081 r!23079)) b!2882121))

(assert (= (and start!281404 (is-Star!8760 r!23079)) b!2882119))

(assert (= (and start!281404 (is-Union!8760 r!23079)) b!2882120))

(declare-fun m!3299287 () Bool)

(assert (=> start!281404 m!3299287))

(declare-fun m!3299289 () Bool)

(assert (=> b!2882118 m!3299289))

(push 1)

(assert (not b!2882119))

(assert (not b!2882118))

(assert (not b!2882121))

(assert (not b!2882120))

(assert (not start!281404))

(assert tp_is_empty!15107)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

