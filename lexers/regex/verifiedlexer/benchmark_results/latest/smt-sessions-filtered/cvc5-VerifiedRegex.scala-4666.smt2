; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243202 () Bool)

(assert start!243202)

(declare-fun b!2488469 () Bool)

(declare-fun res!1053376 () Bool)

(declare-fun e!1580053 () Bool)

(assert (=> b!2488469 (=> (not res!1053376) (not e!1580053))))

(declare-datatypes ((C!14770 0))(
  ( (C!14771 (val!9037 Int)) )
))
(declare-datatypes ((Regex!7306 0))(
  ( (ElementMatch!7306 (c!395472 C!14770)) (Concat!12002 (regOne!15124 Regex!7306) (regTwo!15124 Regex!7306)) (EmptyExpr!7306) (Star!7306 (reg!7635 Regex!7306)) (EmptyLang!7306) (Union!7306 (regOne!15125 Regex!7306) (regTwo!15125 Regex!7306)) )
))
(declare-fun r!26136 () Regex!7306)

(declare-datatypes ((List!29373 0))(
  ( (Nil!29273) (Cons!29273 (h!34693 C!14770) (t!211072 List!29373)) )
))
(declare-fun s!14955 () List!29373)

(declare-fun matchR!3357 (Regex!7306 List!29373) Bool)

(assert (=> b!2488469 (= res!1053376 (matchR!3357 r!26136 s!14955))))

(declare-fun b!2488470 () Bool)

(declare-fun res!1053377 () Bool)

(assert (=> b!2488470 (=> (not res!1053377) (not e!1580053))))

(declare-fun c!13476 () C!14770)

(declare-fun contains!5282 (List!29373 C!14770) Bool)

(declare-fun firstChars!73 (Regex!7306) List!29373)

(assert (=> b!2488470 (= res!1053377 (not (contains!5282 (firstChars!73 r!26136) c!13476)))))

(declare-fun b!2488471 () Bool)

(declare-fun e!1580054 () Bool)

(declare-fun tp!796576 () Bool)

(assert (=> b!2488471 (= e!1580054 tp!796576)))

(declare-fun b!2488472 () Bool)

(assert (=> b!2488472 (= e!1580053 (not true))))

(declare-fun lt!893740 () Bool)

(declare-fun nullable!2227 (Regex!7306) Bool)

(declare-fun derivative!3 (Regex!7306 List!29373) Regex!7306)

(declare-fun derivativeStep!1879 (Regex!7306 C!14770) Regex!7306)

(declare-fun tail!3945 (List!29373) List!29373)

(assert (=> b!2488472 (= lt!893740 (nullable!2227 (derivative!3 (derivativeStep!1879 r!26136 c!13476) (tail!3945 s!14955))))))

(assert (=> b!2488472 (matchR!3357 (derivative!3 r!26136 s!14955) Nil!29273)))

(declare-datatypes ((Unit!42965 0))(
  ( (Unit!42966) )
))
(declare-fun lt!893739 () Unit!42965)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!3 (Regex!7306 List!29373) Unit!42965)

(assert (=> b!2488472 (= lt!893739 (lemmaMatchRIsSameAsWholeDerivativeAndNil!3 r!26136 s!14955))))

(declare-fun b!2488473 () Bool)

(declare-fun tp_is_empty!12467 () Bool)

(assert (=> b!2488473 (= e!1580054 tp_is_empty!12467)))

(declare-fun b!2488474 () Bool)

(declare-fun res!1053375 () Bool)

(assert (=> b!2488474 (=> (not res!1053375) (not e!1580053))))

(declare-fun head!5662 (List!29373) C!14770)

(assert (=> b!2488474 (= res!1053375 (= (head!5662 s!14955) c!13476))))

(declare-fun b!2488475 () Bool)

(declare-fun tp!796579 () Bool)

(declare-fun tp!796578 () Bool)

(assert (=> b!2488475 (= e!1580054 (and tp!796579 tp!796578))))

(declare-fun b!2488476 () Bool)

(declare-fun res!1053378 () Bool)

(assert (=> b!2488476 (=> (not res!1053378) (not e!1580053))))

(assert (=> b!2488476 (= res!1053378 (contains!5282 s!14955 c!13476))))

(declare-fun res!1053379 () Bool)

(assert (=> start!243202 (=> (not res!1053379) (not e!1580053))))

(declare-fun validRegex!2932 (Regex!7306) Bool)

(assert (=> start!243202 (= res!1053379 (validRegex!2932 r!26136))))

(assert (=> start!243202 e!1580053))

(assert (=> start!243202 e!1580054))

(declare-fun e!1580055 () Bool)

(assert (=> start!243202 e!1580055))

(assert (=> start!243202 tp_is_empty!12467))

(declare-fun b!2488477 () Bool)

(declare-fun tp!796580 () Bool)

(declare-fun tp!796577 () Bool)

(assert (=> b!2488477 (= e!1580054 (and tp!796580 tp!796577))))

(declare-fun b!2488478 () Bool)

(declare-fun tp!796575 () Bool)

(assert (=> b!2488478 (= e!1580055 (and tp_is_empty!12467 tp!796575))))

(assert (= (and start!243202 res!1053379) b!2488476))

(assert (= (and b!2488476 res!1053378) b!2488474))

(assert (= (and b!2488474 res!1053375) b!2488470))

(assert (= (and b!2488470 res!1053377) b!2488469))

(assert (= (and b!2488469 res!1053376) b!2488472))

(assert (= (and start!243202 (is-ElementMatch!7306 r!26136)) b!2488473))

(assert (= (and start!243202 (is-Concat!12002 r!26136)) b!2488477))

(assert (= (and start!243202 (is-Star!7306 r!26136)) b!2488471))

(assert (= (and start!243202 (is-Union!7306 r!26136)) b!2488475))

(assert (= (and start!243202 (is-Cons!29273 s!14955)) b!2488478))

(declare-fun m!2856885 () Bool)

(assert (=> b!2488472 m!2856885))

(declare-fun m!2856887 () Bool)

(assert (=> b!2488472 m!2856887))

(declare-fun m!2856889 () Bool)

(assert (=> b!2488472 m!2856889))

(assert (=> b!2488472 m!2856885))

(declare-fun m!2856891 () Bool)

(assert (=> b!2488472 m!2856891))

(declare-fun m!2856893 () Bool)

(assert (=> b!2488472 m!2856893))

(declare-fun m!2856895 () Bool)

(assert (=> b!2488472 m!2856895))

(assert (=> b!2488472 m!2856887))

(assert (=> b!2488472 m!2856893))

(assert (=> b!2488472 m!2856895))

(declare-fun m!2856897 () Bool)

(assert (=> b!2488472 m!2856897))

(declare-fun m!2856899 () Bool)

(assert (=> start!243202 m!2856899))

(declare-fun m!2856901 () Bool)

(assert (=> b!2488476 m!2856901))

(declare-fun m!2856903 () Bool)

(assert (=> b!2488469 m!2856903))

(declare-fun m!2856905 () Bool)

(assert (=> b!2488470 m!2856905))

(assert (=> b!2488470 m!2856905))

(declare-fun m!2856907 () Bool)

(assert (=> b!2488470 m!2856907))

(declare-fun m!2856909 () Bool)

(assert (=> b!2488474 m!2856909))

(push 1)

(assert (not b!2488476))

(assert (not b!2488470))

(assert (not start!243202))

(assert tp_is_empty!12467)

(assert (not b!2488478))

(assert (not b!2488474))

(assert (not b!2488475))

(assert (not b!2488472))

(assert (not b!2488471))

(assert (not b!2488477))

(assert (not b!2488469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

