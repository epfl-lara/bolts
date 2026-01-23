; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728516 () Bool)

(assert start!728516)

(declare-fun b!7529086 () Bool)

(declare-fun e!4487504 () Bool)

(declare-fun tp!2188286 () Bool)

(declare-fun tp!2188282 () Bool)

(assert (=> b!7529086 (= e!4487504 (and tp!2188286 tp!2188282))))

(declare-fun res!3017520 () Bool)

(declare-fun e!4487509 () Bool)

(assert (=> start!728516 (=> (not res!3017520) (not e!4487509))))

(declare-datatypes ((C!40004 0))(
  ( (C!40005 (val!30442 Int)) )
))
(declare-datatypes ((Regex!19839 0))(
  ( (ElementMatch!19839 (c!1390728 C!40004)) (Concat!28684 (regOne!40190 Regex!19839) (regTwo!40190 Regex!19839)) (EmptyExpr!19839) (Star!19839 (reg!20168 Regex!19839)) (EmptyLang!19839) (Union!19839 (regOne!40191 Regex!19839) (regTwo!40191 Regex!19839)) )
))
(declare-fun baseR!101 () Regex!19839)

(declare-fun validRegex!10267 (Regex!19839) Bool)

(assert (=> start!728516 (= res!3017520 (validRegex!10267 baseR!101))))

(assert (=> start!728516 e!4487509))

(assert (=> start!728516 e!4487504))

(declare-fun e!4487507 () Bool)

(assert (=> start!728516 e!4487507))

(declare-fun e!4487506 () Bool)

(assert (=> start!728516 e!4487506))

(declare-fun e!4487508 () Bool)

(assert (=> start!728516 e!4487508))

(declare-fun e!4487505 () Bool)

(assert (=> start!728516 e!4487505))

(declare-fun b!7529087 () Bool)

(declare-fun tp_is_empty!50033 () Bool)

(assert (=> b!7529087 (= e!4487504 tp_is_empty!50033)))

(declare-fun b!7529088 () Bool)

(declare-fun tp!2188283 () Bool)

(declare-fun tp!2188281 () Bool)

(assert (=> b!7529088 (= e!4487504 (and tp!2188283 tp!2188281))))

(declare-fun b!7529089 () Bool)

(declare-fun tp!2188284 () Bool)

(declare-fun tp!2188285 () Bool)

(assert (=> b!7529089 (= e!4487505 (and tp!2188284 tp!2188285))))

(declare-fun b!7529090 () Bool)

(assert (=> b!7529090 (= e!4487509 false)))

(declare-fun lt!2640048 () Bool)

(declare-datatypes ((List!72722 0))(
  ( (Nil!72598) (Cons!72598 (h!79046 C!40004) (t!387429 List!72722)) )
))
(declare-fun knownP!30 () List!72722)

(declare-fun matchR!9441 (Regex!19839 List!72722) Bool)

(assert (=> b!7529090 (= lt!2640048 (matchR!9441 baseR!101 knownP!30))))

(declare-fun b!7529091 () Bool)

(declare-fun res!3017518 () Bool)

(assert (=> b!7529091 (=> (not res!3017518) (not e!4487509))))

(declare-fun r!24333 () Regex!19839)

(assert (=> b!7529091 (= res!3017518 (validRegex!10267 r!24333))))

(declare-fun b!7529092 () Bool)

(declare-fun tp!2188288 () Bool)

(assert (=> b!7529092 (= e!4487507 (and tp_is_empty!50033 tp!2188288))))

(declare-fun b!7529093 () Bool)

(declare-fun tp!2188290 () Bool)

(assert (=> b!7529093 (= e!4487508 (and tp_is_empty!50033 tp!2188290))))

(declare-fun b!7529094 () Bool)

(declare-fun res!3017517 () Bool)

(assert (=> b!7529094 (=> (not res!3017517) (not e!4487509))))

(declare-fun testedP!423 () List!72722)

(declare-fun input!7874 () List!72722)

(declare-fun isPrefix!6045 (List!72722 List!72722) Bool)

(assert (=> b!7529094 (= res!3017517 (isPrefix!6045 testedP!423 input!7874))))

(declare-fun b!7529095 () Bool)

(assert (=> b!7529095 (= e!4487505 tp_is_empty!50033)))

(declare-fun b!7529096 () Bool)

(declare-fun res!3017519 () Bool)

(assert (=> b!7529096 (=> (not res!3017519) (not e!4487509))))

(declare-fun size!42335 (List!72722) Int)

(assert (=> b!7529096 (= res!3017519 (>= (size!42335 knownP!30) (size!42335 testedP!423)))))

(declare-fun b!7529097 () Bool)

(declare-fun tp!2188292 () Bool)

(assert (=> b!7529097 (= e!4487506 (and tp_is_empty!50033 tp!2188292))))

(declare-fun b!7529098 () Bool)

(declare-fun res!3017516 () Bool)

(assert (=> b!7529098 (=> (not res!3017516) (not e!4487509))))

(assert (=> b!7529098 (= res!3017516 (isPrefix!6045 knownP!30 input!7874))))

(declare-fun b!7529099 () Bool)

(declare-fun tp!2188289 () Bool)

(declare-fun tp!2188291 () Bool)

(assert (=> b!7529099 (= e!4487505 (and tp!2188289 tp!2188291))))

(declare-fun b!7529100 () Bool)

(declare-fun tp!2188293 () Bool)

(assert (=> b!7529100 (= e!4487505 tp!2188293)))

(declare-fun b!7529101 () Bool)

(declare-fun tp!2188287 () Bool)

(assert (=> b!7529101 (= e!4487504 tp!2188287)))

(assert (= (and start!728516 res!3017520) b!7529091))

(assert (= (and b!7529091 res!3017518) b!7529094))

(assert (= (and b!7529094 res!3017517) b!7529098))

(assert (= (and b!7529098 res!3017516) b!7529096))

(assert (= (and b!7529096 res!3017519) b!7529090))

(get-info :version)

(assert (= (and start!728516 ((_ is ElementMatch!19839) baseR!101)) b!7529087))

(assert (= (and start!728516 ((_ is Concat!28684) baseR!101)) b!7529086))

(assert (= (and start!728516 ((_ is Star!19839) baseR!101)) b!7529101))

(assert (= (and start!728516 ((_ is Union!19839) baseR!101)) b!7529088))

(assert (= (and start!728516 ((_ is Cons!72598) input!7874)) b!7529092))

(assert (= (and start!728516 ((_ is Cons!72598) knownP!30)) b!7529097))

(assert (= (and start!728516 ((_ is Cons!72598) testedP!423)) b!7529093))

(assert (= (and start!728516 ((_ is ElementMatch!19839) r!24333)) b!7529095))

(assert (= (and start!728516 ((_ is Concat!28684) r!24333)) b!7529089))

(assert (= (and start!728516 ((_ is Star!19839) r!24333)) b!7529100))

(assert (= (and start!728516 ((_ is Union!19839) r!24333)) b!7529099))

(declare-fun m!8103176 () Bool)

(assert (=> b!7529096 m!8103176))

(declare-fun m!8103178 () Bool)

(assert (=> b!7529096 m!8103178))

(declare-fun m!8103180 () Bool)

(assert (=> b!7529094 m!8103180))

(declare-fun m!8103182 () Bool)

(assert (=> b!7529098 m!8103182))

(declare-fun m!8103184 () Bool)

(assert (=> start!728516 m!8103184))

(declare-fun m!8103186 () Bool)

(assert (=> b!7529090 m!8103186))

(declare-fun m!8103188 () Bool)

(assert (=> b!7529091 m!8103188))

(check-sat (not b!7529086) (not b!7529091) (not b!7529097) (not b!7529092) (not b!7529090) (not b!7529098) (not b!7529096) (not b!7529089) (not b!7529093) (not start!728516) (not b!7529101) tp_is_empty!50033 (not b!7529088) (not b!7529099) (not b!7529094) (not b!7529100))
(check-sat)
