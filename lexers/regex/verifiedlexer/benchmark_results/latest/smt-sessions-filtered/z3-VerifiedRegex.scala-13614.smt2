; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731228 () Bool)

(assert start!731228)

(declare-fun b!7572332 () Bool)

(declare-fun e!4507889 () Bool)

(declare-fun tp!2206526 () Bool)

(declare-fun tp!2206525 () Bool)

(assert (=> b!7572332 (= e!4507889 (and tp!2206526 tp!2206525))))

(declare-fun b!7572333 () Bool)

(declare-fun res!3033343 () Bool)

(declare-fun e!4507891 () Bool)

(assert (=> b!7572333 (=> (not res!3033343) (not e!4507891))))

(declare-datatypes ((C!40372 0))(
  ( (C!40373 (val!30626 Int)) )
))
(declare-datatypes ((Regex!20023 0))(
  ( (ElementMatch!20023 (c!1397044 C!40372)) (Concat!28868 (regOne!40558 Regex!20023) (regTwo!40558 Regex!20023)) (EmptyExpr!20023) (Star!20023 (reg!20352 Regex!20023)) (EmptyLang!20023) (Union!20023 (regOne!40559 Regex!20023) (regTwo!40559 Regex!20023)) )
))
(declare-fun r!22341 () Regex!20023)

(declare-fun lostCause!1799 (Regex!20023) Bool)

(assert (=> b!7572333 (= res!3033343 (lostCause!1799 r!22341))))

(declare-fun b!7572334 () Bool)

(declare-fun e!4507887 () Bool)

(declare-fun tp_is_empty!50401 () Bool)

(declare-fun tp!2206524 () Bool)

(assert (=> b!7572334 (= e!4507887 (and tp_is_empty!50401 tp!2206524))))

(declare-fun b!7572335 () Bool)

(declare-fun e!4507888 () Bool)

(declare-fun e!4507890 () Bool)

(assert (=> b!7572335 (= e!4507888 e!4507890)))

(declare-fun res!3033342 () Bool)

(assert (=> b!7572335 (=> res!3033342 e!4507890)))

(declare-fun validRegex!10451 (Regex!20023) Bool)

(assert (=> b!7572335 (= res!3033342 (not (validRegex!10451 (regTwo!40559 r!22341))))))

(declare-datatypes ((List!72906 0))(
  ( (Nil!72782) (Cons!72782 (h!79230 C!40372) (t!387641 List!72906)) )
))
(declare-fun s!13436 () List!72906)

(declare-fun matchR!9619 (Regex!20023 List!72906) Bool)

(assert (=> b!7572335 (not (matchR!9619 (regOne!40559 r!22341) s!13436))))

(declare-datatypes ((Unit!167002 0))(
  ( (Unit!167003) )
))
(declare-fun lt!2651495 () Unit!167002)

(declare-fun lemmaLostCauseCannotMatch!61 (Regex!20023 List!72906) Unit!167002)

(assert (=> b!7572335 (= lt!2651495 (lemmaLostCauseCannotMatch!61 (regOne!40559 r!22341) s!13436))))

(declare-fun b!7572336 () Bool)

(assert (=> b!7572336 (= e!4507891 (not e!4507888))))

(declare-fun res!3033344 () Bool)

(assert (=> b!7572336 (=> res!3033344 e!4507888)))

(get-info :version)

(assert (=> b!7572336 (= res!3033344 (or ((_ is EmptyLang!20023) r!22341) ((_ is EmptyExpr!20023) r!22341) ((_ is ElementMatch!20023) r!22341) (not ((_ is Union!20023) r!22341))))))

(declare-fun matchRSpec!4342 (Regex!20023 List!72906) Bool)

(assert (=> b!7572336 (= (matchR!9619 r!22341 s!13436) (matchRSpec!4342 r!22341 s!13436))))

(declare-fun lt!2651496 () Unit!167002)

(declare-fun mainMatchTheorem!4336 (Regex!20023 List!72906) Unit!167002)

(assert (=> b!7572336 (= lt!2651496 (mainMatchTheorem!4336 r!22341 s!13436))))

(declare-fun b!7572338 () Bool)

(declare-fun tp!2206528 () Bool)

(assert (=> b!7572338 (= e!4507889 tp!2206528)))

(declare-fun b!7572339 () Bool)

(assert (=> b!7572339 (= e!4507889 tp_is_empty!50401)))

(declare-fun b!7572340 () Bool)

(declare-fun res!3033345 () Bool)

(assert (=> b!7572340 (=> (not res!3033345) (not e!4507891))))

(declare-fun isEmpty!41441 (List!72906) Bool)

(assert (=> b!7572340 (= res!3033345 (not (isEmpty!41441 s!13436)))))

(declare-fun b!7572341 () Bool)

(assert (=> b!7572341 (= e!4507890 true)))

(declare-fun lt!2651494 () Bool)

(assert (=> b!7572341 (= lt!2651494 (lostCause!1799 (regTwo!40559 r!22341)))))

(declare-fun b!7572337 () Bool)

(declare-fun tp!2206527 () Bool)

(declare-fun tp!2206529 () Bool)

(assert (=> b!7572337 (= e!4507889 (and tp!2206527 tp!2206529))))

(declare-fun res!3033346 () Bool)

(assert (=> start!731228 (=> (not res!3033346) (not e!4507891))))

(assert (=> start!731228 (= res!3033346 (validRegex!10451 r!22341))))

(assert (=> start!731228 e!4507891))

(assert (=> start!731228 e!4507889))

(assert (=> start!731228 e!4507887))

(assert (= (and start!731228 res!3033346) b!7572333))

(assert (= (and b!7572333 res!3033343) b!7572340))

(assert (= (and b!7572340 res!3033345) b!7572336))

(assert (= (and b!7572336 (not res!3033344)) b!7572335))

(assert (= (and b!7572335 (not res!3033342)) b!7572341))

(assert (= (and start!731228 ((_ is ElementMatch!20023) r!22341)) b!7572339))

(assert (= (and start!731228 ((_ is Concat!28868) r!22341)) b!7572332))

(assert (= (and start!731228 ((_ is Star!20023) r!22341)) b!7572338))

(assert (= (and start!731228 ((_ is Union!20023) r!22341)) b!7572337))

(assert (= (and start!731228 ((_ is Cons!72782) s!13436)) b!7572334))

(declare-fun m!8132446 () Bool)

(assert (=> b!7572341 m!8132446))

(declare-fun m!8132448 () Bool)

(assert (=> b!7572335 m!8132448))

(declare-fun m!8132450 () Bool)

(assert (=> b!7572335 m!8132450))

(declare-fun m!8132452 () Bool)

(assert (=> b!7572335 m!8132452))

(declare-fun m!8132454 () Bool)

(assert (=> b!7572340 m!8132454))

(declare-fun m!8132456 () Bool)

(assert (=> start!731228 m!8132456))

(declare-fun m!8132458 () Bool)

(assert (=> b!7572336 m!8132458))

(declare-fun m!8132460 () Bool)

(assert (=> b!7572336 m!8132460))

(declare-fun m!8132462 () Bool)

(assert (=> b!7572336 m!8132462))

(declare-fun m!8132464 () Bool)

(assert (=> b!7572333 m!8132464))

(check-sat (not b!7572332) (not start!731228) (not b!7572336) (not b!7572340) (not b!7572341) (not b!7572334) (not b!7572337) (not b!7572333) tp_is_empty!50401 (not b!7572338) (not b!7572335))
(check-sat)
