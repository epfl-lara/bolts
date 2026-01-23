; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731052 () Bool)

(assert start!731052)

(declare-fun b!7569470 () Bool)

(declare-fun res!3032387 () Bool)

(declare-fun e!4506584 () Bool)

(assert (=> b!7569470 (=> res!3032387 e!4506584)))

(declare-datatypes ((C!40328 0))(
  ( (C!40329 (val!30604 Int)) )
))
(declare-datatypes ((Regex!20001 0))(
  ( (ElementMatch!20001 (c!1396696 C!40328)) (Concat!28846 (regOne!40514 Regex!20001) (regTwo!40514 Regex!20001)) (EmptyExpr!20001) (Star!20001 (reg!20330 Regex!20001)) (EmptyLang!20001) (Union!20001 (regOne!40515 Regex!20001) (regTwo!40515 Regex!20001)) )
))
(declare-fun r!24129 () Regex!20001)

(declare-fun lostCause!1781 (Regex!20001) Bool)

(assert (=> b!7569470 (= res!3032387 (lostCause!1781 r!24129))))

(declare-fun b!7569471 () Bool)

(declare-fun res!3032388 () Bool)

(declare-fun e!4506587 () Bool)

(assert (=> b!7569471 (=> (not res!3032388) (not e!4506587))))

(declare-datatypes ((List!72884 0))(
  ( (Nil!72760) (Cons!72760 (h!79208 C!40328) (t!387619 List!72884)) )
))
(declare-fun testedP!418 () List!72884)

(declare-fun input!7855 () List!72884)

(declare-fun isPrefix!6207 (List!72884 List!72884) Bool)

(assert (=> b!7569471 (= res!3032388 (isPrefix!6207 testedP!418 input!7855))))

(declare-fun b!7569472 () Bool)

(declare-fun e!4506585 () Bool)

(declare-fun tp_is_empty!50357 () Bool)

(declare-fun tp!2205024 () Bool)

(assert (=> b!7569472 (= e!4506585 (and tp_is_empty!50357 tp!2205024))))

(declare-fun b!7569473 () Bool)

(declare-fun e!4506582 () Bool)

(declare-fun tp!2205019 () Bool)

(declare-fun tp!2205021 () Bool)

(assert (=> b!7569473 (= e!4506582 (and tp!2205019 tp!2205021))))

(declare-fun b!7569474 () Bool)

(declare-fun e!4506581 () Bool)

(assert (=> b!7569474 (= e!4506581 (not e!4506584))))

(declare-fun res!3032394 () Bool)

(assert (=> b!7569474 (=> res!3032394 e!4506584)))

(declare-fun matchR!9601 (Regex!20001 List!72884) Bool)

(assert (=> b!7569474 (= res!3032394 (not (matchR!9601 r!24129 Nil!72760)))))

(declare-fun lt!2650995 () Regex!20001)

(assert (=> b!7569474 (matchR!9601 lt!2650995 Nil!72760)))

(declare-datatypes ((Unit!166954 0))(
  ( (Unit!166955) )
))
(declare-fun lt!2650996 () Unit!166954)

(declare-fun baseR!100 () Regex!20001)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!270 (Regex!20001 List!72884) Unit!166954)

(assert (=> b!7569474 (= lt!2650996 (lemmaMatchRIsSameAsWholeDerivativeAndNil!270 baseR!100 testedP!418))))

(declare-fun b!7569475 () Bool)

(declare-fun res!3032389 () Bool)

(assert (=> b!7569475 (=> (not res!3032389) (not e!4506587))))

(assert (=> b!7569475 (= res!3032389 (matchR!9601 baseR!100 testedP!418))))

(declare-fun b!7569476 () Bool)

(declare-fun e!4506583 () Bool)

(declare-fun tp!2205028 () Bool)

(declare-fun tp!2205022 () Bool)

(assert (=> b!7569476 (= e!4506583 (and tp!2205028 tp!2205022))))

(declare-fun b!7569477 () Bool)

(declare-fun tp!2205026 () Bool)

(assert (=> b!7569477 (= e!4506582 tp!2205026)))

(declare-fun b!7569478 () Bool)

(declare-fun res!3032391 () Bool)

(assert (=> b!7569478 (=> res!3032391 e!4506584)))

(declare-fun nullable!8727 (Regex!20001) Bool)

(assert (=> b!7569478 (= res!3032391 (not (nullable!8727 r!24129)))))

(declare-fun b!7569479 () Bool)

(declare-fun tp!2205027 () Bool)

(declare-fun tp!2205023 () Bool)

(assert (=> b!7569479 (= e!4506583 (and tp!2205027 tp!2205023))))

(declare-fun b!7569481 () Bool)

(assert (=> b!7569481 (= e!4506587 e!4506581)))

(declare-fun res!3032392 () Bool)

(assert (=> b!7569481 (=> (not res!3032392) (not e!4506581))))

(assert (=> b!7569481 (= res!3032392 (= lt!2650995 r!24129))))

(declare-fun derivative!527 (Regex!20001 List!72884) Regex!20001)

(assert (=> b!7569481 (= lt!2650995 (derivative!527 baseR!100 testedP!418))))

(declare-fun b!7569482 () Bool)

(assert (=> b!7569482 (= e!4506583 tp_is_empty!50357)))

(declare-fun b!7569483 () Bool)

(declare-fun tp!2205029 () Bool)

(assert (=> b!7569483 (= e!4506583 tp!2205029)))

(declare-fun b!7569484 () Bool)

(declare-fun tp!2205018 () Bool)

(declare-fun tp!2205025 () Bool)

(assert (=> b!7569484 (= e!4506582 (and tp!2205018 tp!2205025))))

(declare-fun b!7569485 () Bool)

(declare-fun e!4506586 () Bool)

(declare-fun tp!2205020 () Bool)

(assert (=> b!7569485 (= e!4506586 (and tp_is_empty!50357 tp!2205020))))

(declare-fun b!7569486 () Bool)

(assert (=> b!7569486 (= e!4506584 true)))

(declare-fun lt!2650998 () Int)

(declare-fun size!42485 (List!72884) Int)

(assert (=> b!7569486 (= lt!2650998 (size!42485 input!7855))))

(declare-fun lt!2650997 () Int)

(assert (=> b!7569486 (= lt!2650997 (size!42485 testedP!418))))

(declare-fun b!7569487 () Bool)

(assert (=> b!7569487 (= e!4506582 tp_is_empty!50357)))

(declare-fun res!3032390 () Bool)

(assert (=> start!731052 (=> (not res!3032390) (not e!4506587))))

(declare-fun validRegex!10429 (Regex!20001) Bool)

(assert (=> start!731052 (= res!3032390 (validRegex!10429 baseR!100))))

(assert (=> start!731052 e!4506587))

(assert (=> start!731052 e!4506583))

(assert (=> start!731052 e!4506582))

(assert (=> start!731052 e!4506585))

(assert (=> start!731052 e!4506586))

(declare-fun b!7569480 () Bool)

(declare-fun res!3032393 () Bool)

(assert (=> b!7569480 (=> (not res!3032393) (not e!4506587))))

(assert (=> b!7569480 (= res!3032393 (validRegex!10429 r!24129))))

(assert (= (and start!731052 res!3032390) b!7569480))

(assert (= (and b!7569480 res!3032393) b!7569471))

(assert (= (and b!7569471 res!3032388) b!7569475))

(assert (= (and b!7569475 res!3032389) b!7569481))

(assert (= (and b!7569481 res!3032392) b!7569474))

(assert (= (and b!7569474 (not res!3032394)) b!7569478))

(assert (= (and b!7569478 (not res!3032391)) b!7569470))

(assert (= (and b!7569470 (not res!3032387)) b!7569486))

(get-info :version)

(assert (= (and start!731052 ((_ is ElementMatch!20001) baseR!100)) b!7569482))

(assert (= (and start!731052 ((_ is Concat!28846) baseR!100)) b!7569479))

(assert (= (and start!731052 ((_ is Star!20001) baseR!100)) b!7569483))

(assert (= (and start!731052 ((_ is Union!20001) baseR!100)) b!7569476))

(assert (= (and start!731052 ((_ is ElementMatch!20001) r!24129)) b!7569487))

(assert (= (and start!731052 ((_ is Concat!28846) r!24129)) b!7569484))

(assert (= (and start!731052 ((_ is Star!20001) r!24129)) b!7569477))

(assert (= (and start!731052 ((_ is Union!20001) r!24129)) b!7569473))

(assert (= (and start!731052 ((_ is Cons!72760) testedP!418)) b!7569472))

(assert (= (and start!731052 ((_ is Cons!72760) input!7855)) b!7569485))

(declare-fun m!8131266 () Bool)

(assert (=> start!731052 m!8131266))

(declare-fun m!8131268 () Bool)

(assert (=> b!7569470 m!8131268))

(declare-fun m!8131270 () Bool)

(assert (=> b!7569471 m!8131270))

(declare-fun m!8131272 () Bool)

(assert (=> b!7569474 m!8131272))

(declare-fun m!8131274 () Bool)

(assert (=> b!7569474 m!8131274))

(declare-fun m!8131276 () Bool)

(assert (=> b!7569474 m!8131276))

(declare-fun m!8131278 () Bool)

(assert (=> b!7569480 m!8131278))

(declare-fun m!8131280 () Bool)

(assert (=> b!7569486 m!8131280))

(declare-fun m!8131282 () Bool)

(assert (=> b!7569486 m!8131282))

(declare-fun m!8131284 () Bool)

(assert (=> b!7569475 m!8131284))

(declare-fun m!8131286 () Bool)

(assert (=> b!7569481 m!8131286))

(declare-fun m!8131288 () Bool)

(assert (=> b!7569478 m!8131288))

(check-sat (not b!7569476) (not b!7569474) (not b!7569471) (not start!731052) tp_is_empty!50357 (not b!7569484) (not b!7569481) (not b!7569483) (not b!7569479) (not b!7569478) (not b!7569470) (not b!7569475) (not b!7569473) (not b!7569485) (not b!7569472) (not b!7569477) (not b!7569480) (not b!7569486))
(check-sat)
