; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!730994 () Bool)

(assert start!730994)

(declare-fun b!7568460 () Bool)

(declare-fun e!4506147 () Bool)

(declare-fun tp!2204432 () Bool)

(assert (=> b!7568460 (= e!4506147 tp!2204432)))

(declare-fun b!7568461 () Bool)

(declare-fun e!4506146 () Bool)

(declare-fun tp!2204433 () Bool)

(declare-fun tp!2204430 () Bool)

(assert (=> b!7568461 (= e!4506146 (and tp!2204433 tp!2204430))))

(declare-fun b!7568462 () Bool)

(declare-fun tp!2204423 () Bool)

(assert (=> b!7568462 (= e!4506146 tp!2204423)))

(declare-fun b!7568463 () Bool)

(declare-fun e!4506148 () Bool)

(declare-fun tp_is_empty!50331 () Bool)

(declare-fun tp!2204426 () Bool)

(assert (=> b!7568463 (= e!4506148 (and tp_is_empty!50331 tp!2204426))))

(declare-fun b!7568464 () Bool)

(declare-fun tp!2204428 () Bool)

(declare-fun tp!2204424 () Bool)

(assert (=> b!7568464 (= e!4506146 (and tp!2204428 tp!2204424))))

(declare-fun b!7568465 () Bool)

(declare-fun res!3032001 () Bool)

(declare-fun e!4506145 () Bool)

(assert (=> b!7568465 (=> (not res!3032001) (not e!4506145))))

(declare-datatypes ((C!40302 0))(
  ( (C!40303 (val!30591 Int)) )
))
(declare-datatypes ((List!72871 0))(
  ( (Nil!72747) (Cons!72747 (h!79195 C!40302) (t!387606 List!72871)) )
))
(declare-fun testedP!418 () List!72871)

(declare-fun input!7855 () List!72871)

(declare-fun isPrefix!6194 (List!72871 List!72871) Bool)

(assert (=> b!7568465 (= res!3032001 (isPrefix!6194 testedP!418 input!7855))))

(declare-fun b!7568466 () Bool)

(assert (=> b!7568466 (= e!4506145 false)))

(declare-fun lt!2650869 () Bool)

(declare-datatypes ((Regex!19988 0))(
  ( (ElementMatch!19988 (c!1396623 C!40302)) (Concat!28833 (regOne!40488 Regex!19988) (regTwo!40488 Regex!19988)) (EmptyExpr!19988) (Star!19988 (reg!20317 Regex!19988)) (EmptyLang!19988) (Union!19988 (regOne!40489 Regex!19988) (regTwo!40489 Regex!19988)) )
))
(declare-fun baseR!100 () Regex!19988)

(declare-fun matchR!9588 (Regex!19988 List!72871) Bool)

(assert (=> b!7568466 (= lt!2650869 (matchR!9588 baseR!100 testedP!418))))

(declare-fun res!3031999 () Bool)

(assert (=> start!730994 (=> (not res!3031999) (not e!4506145))))

(declare-fun validRegex!10416 (Regex!19988) Bool)

(assert (=> start!730994 (= res!3031999 (validRegex!10416 baseR!100))))

(assert (=> start!730994 e!4506145))

(assert (=> start!730994 e!4506147))

(assert (=> start!730994 e!4506146))

(declare-fun e!4506144 () Bool)

(assert (=> start!730994 e!4506144))

(assert (=> start!730994 e!4506148))

(declare-fun b!7568467 () Bool)

(declare-fun tp!2204425 () Bool)

(declare-fun tp!2204427 () Bool)

(assert (=> b!7568467 (= e!4506147 (and tp!2204425 tp!2204427))))

(declare-fun b!7568468 () Bool)

(assert (=> b!7568468 (= e!4506146 tp_is_empty!50331)))

(declare-fun b!7568469 () Bool)

(declare-fun tp!2204429 () Bool)

(declare-fun tp!2204422 () Bool)

(assert (=> b!7568469 (= e!4506147 (and tp!2204429 tp!2204422))))

(declare-fun b!7568470 () Bool)

(declare-fun tp!2204431 () Bool)

(assert (=> b!7568470 (= e!4506144 (and tp_is_empty!50331 tp!2204431))))

(declare-fun b!7568471 () Bool)

(assert (=> b!7568471 (= e!4506147 tp_is_empty!50331)))

(declare-fun b!7568472 () Bool)

(declare-fun res!3032000 () Bool)

(assert (=> b!7568472 (=> (not res!3032000) (not e!4506145))))

(declare-fun r!24129 () Regex!19988)

(assert (=> b!7568472 (= res!3032000 (validRegex!10416 r!24129))))

(assert (= (and start!730994 res!3031999) b!7568472))

(assert (= (and b!7568472 res!3032000) b!7568465))

(assert (= (and b!7568465 res!3032001) b!7568466))

(assert (= (and start!730994 (is-ElementMatch!19988 baseR!100)) b!7568471))

(assert (= (and start!730994 (is-Concat!28833 baseR!100)) b!7568469))

(assert (= (and start!730994 (is-Star!19988 baseR!100)) b!7568460))

(assert (= (and start!730994 (is-Union!19988 baseR!100)) b!7568467))

(assert (= (and start!730994 (is-ElementMatch!19988 r!24129)) b!7568468))

(assert (= (and start!730994 (is-Concat!28833 r!24129)) b!7568464))

(assert (= (and start!730994 (is-Star!19988 r!24129)) b!7568462))

(assert (= (and start!730994 (is-Union!19988 r!24129)) b!7568461))

(assert (= (and start!730994 (is-Cons!72747 testedP!418)) b!7568470))

(assert (= (and start!730994 (is-Cons!72747 input!7855)) b!7568463))

(declare-fun m!8130906 () Bool)

(assert (=> b!7568465 m!8130906))

(declare-fun m!8130908 () Bool)

(assert (=> b!7568466 m!8130908))

(declare-fun m!8130910 () Bool)

(assert (=> start!730994 m!8130910))

(declare-fun m!8130912 () Bool)

(assert (=> b!7568472 m!8130912))

(push 1)

(assert (not b!7568461))

(assert tp_is_empty!50331)

(assert (not b!7568466))

(assert (not start!730994))

(assert (not b!7568469))

(assert (not b!7568467))

(assert (not b!7568462))

(assert (not b!7568472))

(assert (not b!7568464))

(assert (not b!7568465))

(assert (not b!7568463))

(assert (not b!7568470))

(assert (not b!7568460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

