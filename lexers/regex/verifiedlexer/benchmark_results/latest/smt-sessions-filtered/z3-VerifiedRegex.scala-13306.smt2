; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723274 () Bool)

(assert start!723274)

(declare-fun b!7448402 () Bool)

(declare-fun e!4446590 () Bool)

(declare-fun tp!2157580 () Bool)

(assert (=> b!7448402 (= e!4446590 tp!2157580)))

(declare-fun b!7448403 () Bool)

(declare-fun e!4446588 () Bool)

(declare-fun tp_is_empty!49239 () Bool)

(assert (=> b!7448403 (= e!4446588 tp_is_empty!49239)))

(declare-fun b!7448404 () Bool)

(declare-fun e!4446586 () Bool)

(declare-fun tp!2157589 () Bool)

(declare-fun tp!2157595 () Bool)

(assert (=> b!7448404 (= e!4446586 (and tp!2157589 tp!2157595))))

(declare-fun b!7448405 () Bool)

(declare-fun res!2987724 () Bool)

(declare-fun e!4446589 () Bool)

(assert (=> b!7448405 (=> (not res!2987724) (not e!4446589))))

(declare-datatypes ((C!39224 0))(
  ( (C!39225 (val!30010 Int)) )
))
(declare-datatypes ((Regex!19475 0))(
  ( (ElementMatch!19475 (c!1377552 C!39224)) (Concat!28320 (regOne!39462 Regex!19475) (regTwo!39462 Regex!19475)) (EmptyExpr!19475) (Star!19475 (reg!19804 Regex!19475)) (EmptyLang!19475) (Union!19475 (regOne!39463 Regex!19475) (regTwo!39463 Regex!19475)) )
))
(declare-fun rTail!78 () Regex!19475)

(declare-fun validRegex!9989 (Regex!19475) Bool)

(assert (=> b!7448405 (= res!2987724 (validRegex!9989 rTail!78))))

(declare-fun b!7448406 () Bool)

(declare-fun tp!2157582 () Bool)

(declare-fun tp!2157593 () Bool)

(assert (=> b!7448406 (= e!4446588 (and tp!2157582 tp!2157593))))

(declare-fun b!7448407 () Bool)

(declare-fun tp!2157585 () Bool)

(assert (=> b!7448407 (= e!4446586 tp!2157585)))

(declare-fun b!7448408 () Bool)

(declare-fun tp!2157584 () Bool)

(declare-fun tp!2157591 () Bool)

(assert (=> b!7448408 (= e!4446586 (and tp!2157584 tp!2157591))))

(declare-fun b!7448409 () Bool)

(declare-fun e!4446587 () Bool)

(declare-fun tp!2157587 () Bool)

(assert (=> b!7448409 (= e!4446587 (and tp_is_empty!49239 tp!2157587))))

(declare-fun b!7448410 () Bool)

(declare-fun tp!2157588 () Bool)

(declare-fun tp!2157583 () Bool)

(assert (=> b!7448410 (= e!4446590 (and tp!2157588 tp!2157583))))

(declare-fun b!7448411 () Bool)

(declare-fun res!2987726 () Bool)

(assert (=> b!7448411 (=> (not res!2987726) (not e!4446589))))

(declare-fun r2!5783 () Regex!19475)

(assert (=> b!7448411 (= res!2987726 (validRegex!9989 r2!5783))))

(declare-fun b!7448412 () Bool)

(declare-fun tp!2157586 () Bool)

(assert (=> b!7448412 (= e!4446588 tp!2157586)))

(declare-fun b!7448414 () Bool)

(assert (=> b!7448414 (= e!4446589 (not true))))

(declare-fun lt!2619719 () Regex!19475)

(declare-datatypes ((List!72191 0))(
  ( (Nil!72067) (Cons!72067 (h!78515 C!39224) (t!386760 List!72191)) )
))
(declare-fun s!13591 () List!72191)

(declare-fun matchR!9239 (Regex!19475 List!72191) Bool)

(declare-fun matchRSpec!4154 (Regex!19475 List!72191) Bool)

(assert (=> b!7448414 (= (matchR!9239 lt!2619719 s!13591) (matchRSpec!4154 lt!2619719 s!13591))))

(declare-datatypes ((Unit!165785 0))(
  ( (Unit!165786) )
))
(declare-fun lt!2619718 () Unit!165785)

(declare-fun mainMatchTheorem!4148 (Regex!19475 List!72191) Unit!165785)

(assert (=> b!7448414 (= lt!2619718 (mainMatchTheorem!4148 lt!2619719 s!13591))))

(declare-fun r1!5845 () Regex!19475)

(assert (=> b!7448414 (= lt!2619719 (Concat!28320 (Union!19475 r1!5845 r2!5783) rTail!78))))

(declare-fun b!7448415 () Bool)

(assert (=> b!7448415 (= e!4446586 tp_is_empty!49239)))

(declare-fun b!7448416 () Bool)

(assert (=> b!7448416 (= e!4446590 tp_is_empty!49239)))

(declare-fun b!7448417 () Bool)

(declare-fun tp!2157594 () Bool)

(declare-fun tp!2157590 () Bool)

(assert (=> b!7448417 (= e!4446588 (and tp!2157594 tp!2157590))))

(declare-fun res!2987725 () Bool)

(assert (=> start!723274 (=> (not res!2987725) (not e!4446589))))

(assert (=> start!723274 (= res!2987725 (validRegex!9989 r1!5845))))

(assert (=> start!723274 e!4446589))

(assert (=> start!723274 e!4446588))

(assert (=> start!723274 e!4446586))

(assert (=> start!723274 e!4446590))

(assert (=> start!723274 e!4446587))

(declare-fun b!7448413 () Bool)

(declare-fun tp!2157581 () Bool)

(declare-fun tp!2157592 () Bool)

(assert (=> b!7448413 (= e!4446590 (and tp!2157581 tp!2157592))))

(assert (= (and start!723274 res!2987725) b!7448411))

(assert (= (and b!7448411 res!2987726) b!7448405))

(assert (= (and b!7448405 res!2987724) b!7448414))

(get-info :version)

(assert (= (and start!723274 ((_ is ElementMatch!19475) r1!5845)) b!7448403))

(assert (= (and start!723274 ((_ is Concat!28320) r1!5845)) b!7448406))

(assert (= (and start!723274 ((_ is Star!19475) r1!5845)) b!7448412))

(assert (= (and start!723274 ((_ is Union!19475) r1!5845)) b!7448417))

(assert (= (and start!723274 ((_ is ElementMatch!19475) r2!5783)) b!7448415))

(assert (= (and start!723274 ((_ is Concat!28320) r2!5783)) b!7448404))

(assert (= (and start!723274 ((_ is Star!19475) r2!5783)) b!7448407))

(assert (= (and start!723274 ((_ is Union!19475) r2!5783)) b!7448408))

(assert (= (and start!723274 ((_ is ElementMatch!19475) rTail!78)) b!7448416))

(assert (= (and start!723274 ((_ is Concat!28320) rTail!78)) b!7448413))

(assert (= (and start!723274 ((_ is Star!19475) rTail!78)) b!7448402))

(assert (= (and start!723274 ((_ is Union!19475) rTail!78)) b!7448410))

(assert (= (and start!723274 ((_ is Cons!72067) s!13591)) b!7448409))

(declare-fun m!8056000 () Bool)

(assert (=> b!7448405 m!8056000))

(declare-fun m!8056002 () Bool)

(assert (=> b!7448411 m!8056002))

(declare-fun m!8056004 () Bool)

(assert (=> b!7448414 m!8056004))

(declare-fun m!8056006 () Bool)

(assert (=> b!7448414 m!8056006))

(declare-fun m!8056008 () Bool)

(assert (=> b!7448414 m!8056008))

(declare-fun m!8056010 () Bool)

(assert (=> start!723274 m!8056010))

(check-sat (not b!7448406) (not b!7448414) (not b!7448402) (not b!7448410) (not b!7448407) (not b!7448413) (not b!7448404) (not b!7448417) tp_is_empty!49239 (not start!723274) (not b!7448411) (not b!7448408) (not b!7448409) (not b!7448412) (not b!7448405))
(check-sat)
