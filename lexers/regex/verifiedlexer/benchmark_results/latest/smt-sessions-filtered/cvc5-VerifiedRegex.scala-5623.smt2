; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281532 () Bool)

(assert start!281532)

(declare-fun b!2884021 () Bool)

(declare-fun e!1824079 () Bool)

(declare-fun tp_is_empty!15187 () Bool)

(assert (=> b!2884021 (= e!1824079 tp_is_empty!15187)))

(declare-fun b!2884022 () Bool)

(declare-fun tp!925021 () Bool)

(declare-fun tp!925024 () Bool)

(assert (=> b!2884022 (= e!1824079 (and tp!925021 tp!925024))))

(declare-fun b!2884023 () Bool)

(declare-fun res!1194935 () Bool)

(declare-fun e!1824078 () Bool)

(assert (=> b!2884023 (=> (not res!1194935) (not e!1824078))))

(declare-datatypes ((C!17782 0))(
  ( (C!17783 (val!10925 Int)) )
))
(declare-datatypes ((Regex!8800 0))(
  ( (ElementMatch!8800 (c!468527 C!17782)) (Concat!14121 (regOne!18112 Regex!8800) (regTwo!18112 Regex!8800)) (EmptyExpr!8800) (Star!8800 (reg!9129 Regex!8800)) (EmptyLang!8800) (Union!8800 (regOne!18113 Regex!8800) (regTwo!18113 Regex!8800)) )
))
(declare-fun r!23079 () Regex!8800)

(declare-datatypes ((List!34601 0))(
  ( (Nil!34477) (Cons!34477 (h!39897 C!17782) (t!233644 List!34601)) )
))
(declare-datatypes ((Option!6473 0))(
  ( (None!6472) (Some!6472 (v!34598 List!34601)) )
))
(declare-fun isDefined!5037 (Option!6473) Bool)

(declare-fun getLanguageWitness!507 (Regex!8800) Option!6473)

(assert (=> b!2884023 (= res!1194935 (isDefined!5037 (getLanguageWitness!507 r!23079)))))

(declare-fun res!1194934 () Bool)

(assert (=> start!281532 (=> (not res!1194934) (not e!1824078))))

(declare-fun validRegex!3573 (Regex!8800) Bool)

(assert (=> start!281532 (= res!1194934 (validRegex!3573 r!23079))))

(assert (=> start!281532 e!1824078))

(assert (=> start!281532 e!1824079))

(declare-fun b!2884024 () Bool)

(declare-fun tp!925020 () Bool)

(declare-fun tp!925023 () Bool)

(assert (=> b!2884024 (= e!1824079 (and tp!925020 tp!925023))))

(declare-fun b!2884025 () Bool)

(assert (=> b!2884025 (= e!1824078 false)))

(declare-fun lt!1020389 () Option!6473)

(assert (=> b!2884025 (= lt!1020389 (getLanguageWitness!507 (regTwo!18112 r!23079)))))

(declare-fun b!2884026 () Bool)

(declare-fun tp!925022 () Bool)

(assert (=> b!2884026 (= e!1824079 tp!925022)))

(declare-fun b!2884027 () Bool)

(declare-fun res!1194936 () Bool)

(assert (=> b!2884027 (=> (not res!1194936) (not e!1824078))))

(assert (=> b!2884027 (= res!1194936 (is-Some!6472 (getLanguageWitness!507 (regOne!18112 r!23079))))))

(declare-fun b!2884028 () Bool)

(declare-fun res!1194937 () Bool)

(assert (=> b!2884028 (=> (not res!1194937) (not e!1824078))))

(assert (=> b!2884028 (= res!1194937 (and (not (is-EmptyExpr!8800 r!23079)) (not (is-EmptyLang!8800 r!23079)) (not (is-ElementMatch!8800 r!23079)) (not (is-Star!8800 r!23079)) (not (is-Union!8800 r!23079))))))

(assert (= (and start!281532 res!1194934) b!2884023))

(assert (= (and b!2884023 res!1194935) b!2884028))

(assert (= (and b!2884028 res!1194937) b!2884027))

(assert (= (and b!2884027 res!1194936) b!2884025))

(assert (= (and start!281532 (is-ElementMatch!8800 r!23079)) b!2884021))

(assert (= (and start!281532 (is-Concat!14121 r!23079)) b!2884022))

(assert (= (and start!281532 (is-Star!8800 r!23079)) b!2884026))

(assert (= (and start!281532 (is-Union!8800 r!23079)) b!2884024))

(declare-fun m!3300367 () Bool)

(assert (=> b!2884023 m!3300367))

(assert (=> b!2884023 m!3300367))

(declare-fun m!3300369 () Bool)

(assert (=> b!2884023 m!3300369))

(declare-fun m!3300371 () Bool)

(assert (=> start!281532 m!3300371))

(declare-fun m!3300373 () Bool)

(assert (=> b!2884025 m!3300373))

(declare-fun m!3300375 () Bool)

(assert (=> b!2884027 m!3300375))

(push 1)

(assert (not b!2884027))

(assert (not b!2884024))

(assert (not start!281532))

(assert (not b!2884025))

(assert tp_is_empty!15187)

(assert (not b!2884023))

(assert (not b!2884026))

(assert (not b!2884022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

