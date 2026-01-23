; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!46410 () Bool)

(assert start!46410)

(declare-fun b!512384 () Bool)

(declare-fun e!306140 () Bool)

(assert (=> b!512384 (= e!306140 false)))

(declare-fun lt!212231 () Bool)

(declare-datatypes ((C!3302 0))(
  ( (C!3303 (val!1687 Int)) )
))
(declare-datatypes ((Regex!1190 0))(
  ( (ElementMatch!1190 (c!99578 C!3302)) (Concat!2090 (regOne!2892 Regex!1190) (regTwo!2892 Regex!1190)) (EmptyExpr!1190) (Star!1190 (reg!1519 Regex!1190)) (EmptyLang!1190) (Union!1190 (regOne!2893 Regex!1190) (regTwo!2893 Regex!1190)) )
))
(declare-fun r!24842 () Regex!1190)

(declare-fun c!13017 () C!3302)

(declare-datatypes ((List!4653 0))(
  ( (Nil!4643) (Cons!4643 (h!10040 C!3302) (t!73175 List!4653)) )
))
(declare-fun matchR!428 (Regex!1190 List!4653) Bool)

(assert (=> b!512384 (= lt!212231 (matchR!428 r!24842 (Cons!4643 c!13017 Nil!4643)))))

(declare-fun b!512385 () Bool)

(declare-fun e!306141 () Bool)

(declare-fun tp_is_empty!2477 () Bool)

(assert (=> b!512385 (= e!306141 tp_is_empty!2477)))

(declare-fun b!512386 () Bool)

(declare-fun tp!159276 () Bool)

(declare-fun tp!159275 () Bool)

(assert (=> b!512386 (= e!306141 (and tp!159276 tp!159275))))

(declare-fun b!512387 () Bool)

(declare-fun res!217406 () Bool)

(assert (=> b!512387 (=> (not res!217406) (not e!306140))))

(declare-fun validRegex!416 (Regex!1190) Bool)

(assert (=> b!512387 (= res!217406 (validRegex!416 r!24842))))

(declare-fun b!512388 () Bool)

(declare-fun tp!159278 () Bool)

(assert (=> b!512388 (= e!306141 tp!159278)))

(declare-fun res!217408 () Bool)

(assert (=> start!46410 (=> (not res!217408) (not e!306140))))

(assert (=> start!46410 (= res!217408 (is-ElementMatch!1190 r!24842))))

(assert (=> start!46410 e!306140))

(assert (=> start!46410 e!306141))

(assert (=> start!46410 tp_is_empty!2477))

(declare-fun b!512389 () Bool)

(declare-fun tp!159274 () Bool)

(declare-fun tp!159277 () Bool)

(assert (=> b!512389 (= e!306141 (and tp!159274 tp!159277))))

(declare-fun b!512390 () Bool)

(declare-fun res!217407 () Bool)

(assert (=> b!512390 (=> (not res!217407) (not e!306140))))

(declare-fun d!1636 () C!3302)

(assert (=> b!512390 (= res!217407 (and (= r!24842 (ElementMatch!1190 c!13017)) (not (= c!13017 d!1636))))))

(assert (= (and start!46410 res!217408) b!512387))

(assert (= (and b!512387 res!217406) b!512390))

(assert (= (and b!512390 res!217407) b!512384))

(assert (= (and start!46410 (is-ElementMatch!1190 r!24842)) b!512385))

(assert (= (and start!46410 (is-Concat!2090 r!24842)) b!512389))

(assert (= (and start!46410 (is-Star!1190 r!24842)) b!512388))

(assert (= (and start!46410 (is-Union!1190 r!24842)) b!512386))

(declare-fun m!759125 () Bool)

(assert (=> b!512384 m!759125))

(declare-fun m!759127 () Bool)

(assert (=> b!512387 m!759127))

(push 1)

(assert (not b!512388))

(assert (not b!512387))

(assert tp_is_empty!2477)

(assert (not b!512384))

(assert (not b!512386))

(assert (not b!512389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

