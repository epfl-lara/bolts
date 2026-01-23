; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752584 () Bool)

(assert start!752584)

(declare-fun b!7996348 () Bool)

(declare-fun e!4711239 () Bool)

(declare-fun tp!2390618 () Bool)

(assert (=> b!7996348 (= e!4711239 tp!2390618)))

(declare-fun b!7996349 () Bool)

(declare-fun e!4711238 () Bool)

(declare-fun tp_is_empty!53657 () Bool)

(declare-fun tp!2390612 () Bool)

(assert (=> b!7996349 (= e!4711238 (and tp_is_empty!53657 tp!2390612))))

(declare-fun b!7996350 () Bool)

(declare-fun e!4711237 () Bool)

(declare-fun tp!2390620 () Bool)

(declare-fun tp!2390613 () Bool)

(assert (=> b!7996350 (= e!4711237 (and tp!2390620 tp!2390613))))

(declare-fun b!7996351 () Bool)

(declare-fun tp!2390619 () Bool)

(declare-fun tp!2390617 () Bool)

(assert (=> b!7996351 (= e!4711239 (and tp!2390619 tp!2390617))))

(declare-fun b!7996352 () Bool)

(declare-fun tp!2390616 () Bool)

(declare-fun tp!2390615 () Bool)

(assert (=> b!7996352 (= e!4711237 (and tp!2390616 tp!2390615))))

(declare-fun b!7996353 () Bool)

(declare-fun res!3163115 () Bool)

(declare-fun e!4711240 () Bool)

(assert (=> b!7996353 (=> (not res!3163115) (not e!4711240))))

(declare-datatypes ((C!43452 0))(
  ( (C!43453 (val!32274 Int)) )
))
(declare-datatypes ((List!74786 0))(
  ( (Nil!74662) (Cons!74662 (h!81110 C!43452) (t!390529 List!74786)) )
))
(declare-fun input!8036 () List!74786)

(get-info :version)

(assert (=> b!7996353 (= res!3163115 ((_ is Cons!74662) input!8036))))

(declare-fun b!7996354 () Bool)

(declare-fun res!3163113 () Bool)

(assert (=> b!7996354 (=> (not res!3163113) (not e!4711240))))

(declare-datatypes ((Regex!21557 0))(
  ( (ElementMatch!21557 (c!1468250 C!43452)) (Concat!30556 (regOne!43626 Regex!21557) (regTwo!43626 Regex!21557)) (EmptyExpr!21557) (Star!21557 (reg!21886 Regex!21557)) (EmptyLang!21557) (Union!21557 (regOne!43627 Regex!21557) (regTwo!43627 Regex!21557)) )
))
(declare-fun r!24786 () Regex!21557)

(declare-fun baseR!141 () Regex!21557)

(declare-fun derivative!743 (Regex!21557 List!74786) Regex!21557)

(assert (=> b!7996354 (= res!3163113 (= (derivative!743 baseR!141 input!8036) r!24786))))

(declare-fun b!7996355 () Bool)

(declare-fun e!4711241 () Bool)

(assert (=> b!7996355 (= e!4711241 false)))

(declare-fun lt!2713371 () Regex!21557)

(declare-fun lt!2713370 () Regex!21557)

(assert (=> b!7996355 (= lt!2713371 (derivative!743 lt!2713370 (t!390529 input!8036)))))

(declare-fun b!7996356 () Bool)

(assert (=> b!7996356 (= e!4711240 e!4711241)))

(declare-fun res!3163116 () Bool)

(assert (=> b!7996356 (=> (not res!3163116) (not e!4711241))))

(declare-fun validRegex!11861 (Regex!21557) Bool)

(assert (=> b!7996356 (= res!3163116 (validRegex!11861 lt!2713370))))

(declare-fun derivativeStep!6575 (Regex!21557 C!43452) Regex!21557)

(assert (=> b!7996356 (= lt!2713370 (derivativeStep!6575 baseR!141 (h!81110 input!8036)))))

(declare-fun res!3163114 () Bool)

(assert (=> start!752584 (=> (not res!3163114) (not e!4711240))))

(assert (=> start!752584 (= res!3163114 (validRegex!11861 baseR!141))))

(assert (=> start!752584 e!4711240))

(assert (=> start!752584 e!4711237))

(assert (=> start!752584 e!4711238))

(assert (=> start!752584 e!4711239))

(declare-fun b!7996357 () Bool)

(declare-fun tp!2390611 () Bool)

(declare-fun tp!2390614 () Bool)

(assert (=> b!7996357 (= e!4711239 (and tp!2390611 tp!2390614))))

(declare-fun b!7996358 () Bool)

(assert (=> b!7996358 (= e!4711239 tp_is_empty!53657)))

(declare-fun b!7996359 () Bool)

(assert (=> b!7996359 (= e!4711237 tp_is_empty!53657)))

(declare-fun b!7996360 () Bool)

(declare-fun tp!2390610 () Bool)

(assert (=> b!7996360 (= e!4711237 tp!2390610)))

(assert (= (and start!752584 res!3163114) b!7996354))

(assert (= (and b!7996354 res!3163113) b!7996353))

(assert (= (and b!7996353 res!3163115) b!7996356))

(assert (= (and b!7996356 res!3163116) b!7996355))

(assert (= (and start!752584 ((_ is ElementMatch!21557) baseR!141)) b!7996359))

(assert (= (and start!752584 ((_ is Concat!30556) baseR!141)) b!7996350))

(assert (= (and start!752584 ((_ is Star!21557) baseR!141)) b!7996360))

(assert (= (and start!752584 ((_ is Union!21557) baseR!141)) b!7996352))

(assert (= (and start!752584 ((_ is Cons!74662) input!8036)) b!7996349))

(assert (= (and start!752584 ((_ is ElementMatch!21557) r!24786)) b!7996358))

(assert (= (and start!752584 ((_ is Concat!30556) r!24786)) b!7996351))

(assert (= (and start!752584 ((_ is Star!21557) r!24786)) b!7996348))

(assert (= (and start!752584 ((_ is Union!21557) r!24786)) b!7996357))

(declare-fun m!8367040 () Bool)

(assert (=> b!7996354 m!8367040))

(declare-fun m!8367042 () Bool)

(assert (=> b!7996355 m!8367042))

(declare-fun m!8367044 () Bool)

(assert (=> b!7996356 m!8367044))

(declare-fun m!8367046 () Bool)

(assert (=> b!7996356 m!8367046))

(declare-fun m!8367048 () Bool)

(assert (=> start!752584 m!8367048))

(check-sat (not b!7996349) (not b!7996356) (not b!7996348) (not b!7996350) (not b!7996357) (not b!7996355) (not b!7996351) (not start!752584) (not b!7996360) (not b!7996354) (not b!7996352) tp_is_empty!53657)
(check-sat)
