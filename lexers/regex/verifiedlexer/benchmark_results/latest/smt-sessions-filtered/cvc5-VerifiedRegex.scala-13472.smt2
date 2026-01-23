; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727828 () Bool)

(assert start!727828)

(declare-fun res!3014082 () Bool)

(declare-fun e!4482596 () Bool)

(assert (=> start!727828 (=> (not res!3014082) (not e!4482596))))

(declare-datatypes ((C!39842 0))(
  ( (C!39843 (val!30341 Int)) )
))
(declare-datatypes ((Regex!19758 0))(
  ( (ElementMatch!19758 (c!1389482 C!39842)) (Concat!28603 (regOne!40028 Regex!19758) (regTwo!40028 Regex!19758)) (EmptyExpr!19758) (Star!19758 (reg!20087 Regex!19758)) (EmptyLang!19758) (Union!19758 (regOne!40029 Regex!19758) (regTwo!40029 Regex!19758)) )
))
(declare-datatypes ((List!72647 0))(
  ( (Nil!72523) (Cons!72523 (h!78971 Regex!19758) (t!387284 List!72647)) )
))
(declare-datatypes ((Context!17020 0))(
  ( (Context!17021 (exprs!9010 List!72647)) )
))
(declare-fun c!7091 () Context!17020)

(assert (=> start!727828 (= res!3014082 (is-Cons!72523 (exprs!9010 c!7091)))))

(assert (=> start!727828 e!4482596))

(declare-fun e!4482595 () Bool)

(declare-fun inv!92659 (Context!17020) Bool)

(assert (=> start!727828 (and (inv!92659 c!7091) e!4482595)))

(declare-fun b!7519732 () Bool)

(assert (=> b!7519732 (= e!4482596 false)))

(declare-datatypes ((List!72648 0))(
  ( (Nil!72524) (Cons!72524 (h!78972 C!39842) (t!387285 List!72648)) )
))
(declare-datatypes ((Option!17255 0))(
  ( (None!17254) (Some!17254 (v!54389 List!72648)) )
))
(declare-fun lt!2638557 () Option!17255)

(declare-fun getLanguageWitness!1098 (Regex!19758) Option!17255)

(assert (=> b!7519732 (= lt!2638557 (getLanguageWitness!1098 (h!78971 (exprs!9010 c!7091))))))

(declare-fun b!7519733 () Bool)

(declare-fun tp!2184087 () Bool)

(assert (=> b!7519733 (= e!4482595 tp!2184087)))

(assert (= (and start!727828 res!3014082) b!7519732))

(assert (= start!727828 b!7519733))

(declare-fun m!8099636 () Bool)

(assert (=> start!727828 m!8099636))

(declare-fun m!8099638 () Bool)

(assert (=> b!7519732 m!8099638))

(push 1)

(assert (not b!7519732))

(assert (not start!727828))

(assert (not b!7519733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

