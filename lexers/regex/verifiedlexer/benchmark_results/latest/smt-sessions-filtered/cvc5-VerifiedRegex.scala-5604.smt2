; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281408 () Bool)

(assert start!281408)

(declare-fun b!2882153 () Bool)

(declare-fun res!1194136 () Bool)

(declare-fun e!1823275 () Bool)

(assert (=> b!2882153 (=> (not res!1194136) (not e!1823275))))

(declare-datatypes ((C!17706 0))(
  ( (C!17707 (val!10887 Int)) )
))
(declare-datatypes ((Regex!8762 0))(
  ( (ElementMatch!8762 (c!468243 C!17706)) (Concat!14083 (regOne!18036 Regex!8762) (regTwo!18036 Regex!8762)) (EmptyExpr!8762) (Star!8762 (reg!9091 Regex!8762)) (EmptyLang!8762) (Union!8762 (regOne!18037 Regex!8762) (regTwo!18037 Regex!8762)) )
))
(declare-fun r!23079 () Regex!8762)

(declare-datatypes ((List!34563 0))(
  ( (Nil!34439) (Cons!34439 (h!39859 C!17706) (t!233606 List!34563)) )
))
(declare-datatypes ((Option!6435 0))(
  ( (None!6434) (Some!6434 (v!34560 List!34563)) )
))
(declare-fun getLanguageWitness!469 (Regex!8762) Option!6435)

(assert (=> b!2882153 (= res!1194136 (is-Some!6434 (getLanguageWitness!469 (regOne!18037 r!23079))))))

(declare-fun b!2882154 () Bool)

(declare-fun e!1823274 () Bool)

(declare-fun tp!924311 () Bool)

(declare-fun tp!924310 () Bool)

(assert (=> b!2882154 (= e!1823274 (and tp!924311 tp!924310))))

(declare-fun b!2882155 () Bool)

(declare-fun res!1194135 () Bool)

(assert (=> b!2882155 (=> (not res!1194135) (not e!1823275))))

(declare-fun isDefined!4999 (Option!6435) Bool)

(assert (=> b!2882155 (= res!1194135 (isDefined!4999 (getLanguageWitness!469 r!23079)))))

(declare-fun b!2882156 () Bool)

(declare-fun tp!924313 () Bool)

(declare-fun tp!924314 () Bool)

(assert (=> b!2882156 (= e!1823274 (and tp!924313 tp!924314))))

(declare-fun b!2882157 () Bool)

(declare-fun tp!924312 () Bool)

(assert (=> b!2882157 (= e!1823274 tp!924312)))

(declare-fun res!1194134 () Bool)

(assert (=> start!281408 (=> (not res!1194134) (not e!1823275))))

(declare-fun validRegex!3535 (Regex!8762) Bool)

(assert (=> start!281408 (= res!1194134 (validRegex!3535 r!23079))))

(assert (=> start!281408 e!1823275))

(assert (=> start!281408 e!1823274))

(declare-fun b!2882158 () Bool)

(declare-fun res!1194137 () Bool)

(assert (=> b!2882158 (=> (not res!1194137) (not e!1823275))))

(assert (=> b!2882158 (= res!1194137 (and (not (is-EmptyExpr!8762 r!23079)) (not (is-EmptyLang!8762 r!23079)) (not (is-ElementMatch!8762 r!23079)) (not (is-Star!8762 r!23079)) (is-Union!8762 r!23079)))))

(declare-fun b!2882159 () Bool)

(declare-fun tp_is_empty!15111 () Bool)

(assert (=> b!2882159 (= e!1823274 tp_is_empty!15111)))

(declare-fun b!2882160 () Bool)

(assert (=> b!2882160 (= e!1823275 false)))

(assert (= (and start!281408 res!1194134) b!2882155))

(assert (= (and b!2882155 res!1194135) b!2882158))

(assert (= (and b!2882158 res!1194137) b!2882153))

(assert (= (and b!2882153 res!1194136) b!2882160))

(assert (= (and start!281408 (is-ElementMatch!8762 r!23079)) b!2882159))

(assert (= (and start!281408 (is-Concat!14083 r!23079)) b!2882154))

(assert (= (and start!281408 (is-Star!8762 r!23079)) b!2882157))

(assert (= (and start!281408 (is-Union!8762 r!23079)) b!2882156))

(declare-fun m!3299295 () Bool)

(assert (=> b!2882153 m!3299295))

(declare-fun m!3299297 () Bool)

(assert (=> b!2882155 m!3299297))

(assert (=> b!2882155 m!3299297))

(declare-fun m!3299299 () Bool)

(assert (=> b!2882155 m!3299299))

(declare-fun m!3299301 () Bool)

(assert (=> start!281408 m!3299301))

(push 1)

(assert (not start!281408))

(assert (not b!2882156))

(assert (not b!2882157))

(assert (not b!2882153))

(assert (not b!2882155))

(assert tp_is_empty!15111)

(assert (not b!2882154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

