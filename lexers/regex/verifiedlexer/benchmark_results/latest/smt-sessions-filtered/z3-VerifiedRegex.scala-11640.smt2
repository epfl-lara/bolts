; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!650920 () Bool)

(assert start!650920)

(declare-fun setNonEmpty!45699 () Bool)

(declare-fun e!4056143 () Bool)

(declare-fun setRes!45699 () Bool)

(declare-fun tp!1839330 () Bool)

(declare-datatypes ((C!33324 0))(
  ( (C!33325 (val!26364 Int)) )
))
(declare-datatypes ((Regex!16527 0))(
  ( (ElementMatch!16527 (c!1244461 C!33324)) (Concat!25372 (regOne!33566 Regex!16527) (regTwo!33566 Regex!16527)) (EmptyExpr!16527) (Star!16527 (reg!16856 Regex!16527)) (EmptyLang!16527) (Union!16527 (regOne!33567 Regex!16527) (regTwo!33567 Regex!16527)) )
))
(declare-datatypes ((List!65880 0))(
  ( (Nil!65756) (Cons!65756 (h!72204 Regex!16527) (t!379557 List!65880)) )
))
(declare-datatypes ((Context!11822 0))(
  ( (Context!11823 (exprs!6411 List!65880)) )
))
(declare-fun setElem!45699 () Context!11822)

(declare-fun inv!84564 (Context!11822) Bool)

(assert (=> setNonEmpty!45699 (= setRes!45699 (and tp!1839330 (inv!84564 setElem!45699) e!4056143))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11822))

(declare-fun setRest!45699 () (InoxSet Context!11822))

(assert (=> setNonEmpty!45699 (= z!1189 ((_ map or) (store ((as const (Array Context!11822 Bool)) false) setElem!45699 true) setRest!45699))))

(declare-fun b!6711478 () Bool)

(declare-fun e!4056140 () Bool)

(declare-fun tp!1839331 () Bool)

(assert (=> b!6711478 (= e!4056140 tp!1839331)))

(declare-fun b!6711479 () Bool)

(declare-fun e!4056146 () Bool)

(declare-fun e!4056142 () Bool)

(assert (=> b!6711479 (= e!4056146 (not e!4056142))))

(declare-fun res!2746459 () Bool)

(assert (=> b!6711479 (=> res!2746459 e!4056142)))

(declare-datatypes ((List!65881 0))(
  ( (Nil!65757) (Cons!65757 (h!72205 Context!11822) (t!379558 List!65881)) )
))
(declare-fun zl!343 () List!65881)

(get-info :version)

(assert (=> b!6711479 (= res!2746459 (not ((_ is Cons!65757) zl!343)))))

(declare-fun r!7292 () Regex!16527)

(declare-datatypes ((List!65882 0))(
  ( (Nil!65758) (Cons!65758 (h!72206 C!33324) (t!379559 List!65882)) )
))
(declare-fun s!2326 () List!65882)

(declare-fun matchR!8710 (Regex!16527 List!65882) Bool)

(declare-fun matchRSpec!3628 (Regex!16527 List!65882) Bool)

(assert (=> b!6711479 (= (matchR!8710 r!7292 s!2326) (matchRSpec!3628 r!7292 s!2326))))

(declare-datatypes ((Unit!159745 0))(
  ( (Unit!159746) )
))
(declare-fun lt!2435684 () Unit!159745)

(declare-fun mainMatchTheorem!3628 (Regex!16527 List!65882) Unit!159745)

(assert (=> b!6711479 (= lt!2435684 (mainMatchTheorem!3628 r!7292 s!2326))))

(declare-fun b!6711480 () Bool)

(declare-fun tp!1839324 () Bool)

(assert (=> b!6711480 (= e!4056143 tp!1839324)))

(declare-fun b!6711481 () Bool)

(declare-fun e!4056145 () Bool)

(declare-fun tp_is_empty!42307 () Bool)

(declare-fun tp!1839325 () Bool)

(assert (=> b!6711481 (= e!4056145 (and tp_is_empty!42307 tp!1839325))))

(declare-fun b!6711482 () Bool)

(declare-fun validRegex!8263 (Regex!16527) Bool)

(assert (=> b!6711482 (= e!4056142 (validRegex!8263 r!7292))))

(declare-fun b!6711483 () Bool)

(declare-fun res!2746458 () Bool)

(assert (=> b!6711483 (=> res!2746458 e!4056142)))

(declare-fun generalisedUnion!2371 (List!65880) Regex!16527)

(declare-fun unfocusZipperList!1948 (List!65881) List!65880)

(assert (=> b!6711483 (= res!2746458 (not (= r!7292 (generalisedUnion!2371 (unfocusZipperList!1948 zl!343)))))))

(declare-fun b!6711485 () Bool)

(declare-fun e!4056141 () Bool)

(assert (=> b!6711485 (= e!4056141 tp_is_empty!42307)))

(declare-fun b!6711486 () Bool)

(declare-fun tp!1839328 () Bool)

(assert (=> b!6711486 (= e!4056141 tp!1839328)))

(declare-fun b!6711487 () Bool)

(declare-fun res!2746453 () Bool)

(assert (=> b!6711487 (=> res!2746453 e!4056142)))

(assert (=> b!6711487 (= res!2746453 (not ((_ is Cons!65756) (exprs!6411 (h!72205 zl!343)))))))

(declare-fun b!6711488 () Bool)

(declare-fun tp!1839333 () Bool)

(declare-fun tp!1839326 () Bool)

(assert (=> b!6711488 (= e!4056141 (and tp!1839333 tp!1839326))))

(declare-fun b!6711489 () Bool)

(declare-fun res!2746451 () Bool)

(assert (=> b!6711489 (=> res!2746451 e!4056142)))

(declare-fun generalisedConcat!2124 (List!65880) Regex!16527)

(assert (=> b!6711489 (= res!2746451 (not (= r!7292 (generalisedConcat!2124 (exprs!6411 (h!72205 zl!343))))))))

(declare-fun b!6711490 () Bool)

(declare-fun res!2746456 () Bool)

(assert (=> b!6711490 (=> res!2746456 e!4056142)))

(assert (=> b!6711490 (= res!2746456 (not (validRegex!8263 (reg!16856 r!7292))))))

(declare-fun b!6711491 () Bool)

(declare-fun res!2746455 () Bool)

(assert (=> b!6711491 (=> (not res!2746455) (not e!4056146))))

(declare-fun toList!10311 ((InoxSet Context!11822)) List!65881)

(assert (=> b!6711491 (= res!2746455 (= (toList!10311 z!1189) zl!343))))

(declare-fun b!6711492 () Bool)

(declare-fun res!2746452 () Bool)

(assert (=> b!6711492 (=> (not res!2746452) (not e!4056146))))

(declare-fun unfocusZipper!2269 (List!65881) Regex!16527)

(assert (=> b!6711492 (= res!2746452 (= r!7292 (unfocusZipper!2269 zl!343)))))

(declare-fun b!6711493 () Bool)

(declare-fun tp!1839329 () Bool)

(declare-fun tp!1839332 () Bool)

(assert (=> b!6711493 (= e!4056141 (and tp!1839329 tp!1839332))))

(declare-fun e!4056144 () Bool)

(declare-fun tp!1839327 () Bool)

(declare-fun b!6711494 () Bool)

(assert (=> b!6711494 (= e!4056144 (and (inv!84564 (h!72205 zl!343)) e!4056140 tp!1839327))))

(declare-fun b!6711495 () Bool)

(declare-fun res!2746457 () Bool)

(assert (=> b!6711495 (=> res!2746457 e!4056142)))

(assert (=> b!6711495 (= res!2746457 (or ((_ is EmptyExpr!16527) r!7292) ((_ is EmptyLang!16527) r!7292) ((_ is ElementMatch!16527) r!7292) ((_ is Union!16527) r!7292) ((_ is Concat!25372) r!7292)))))

(declare-fun setIsEmpty!45699 () Bool)

(assert (=> setIsEmpty!45699 setRes!45699))

(declare-fun res!2746460 () Bool)

(assert (=> start!650920 (=> (not res!2746460) (not e!4056146))))

(assert (=> start!650920 (= res!2746460 (validRegex!8263 r!7292))))

(assert (=> start!650920 e!4056146))

(assert (=> start!650920 e!4056141))

(declare-fun condSetEmpty!45699 () Bool)

(assert (=> start!650920 (= condSetEmpty!45699 (= z!1189 ((as const (Array Context!11822 Bool)) false)))))

(assert (=> start!650920 setRes!45699))

(assert (=> start!650920 e!4056144))

(assert (=> start!650920 e!4056145))

(declare-fun b!6711484 () Bool)

(declare-fun res!2746454 () Bool)

(assert (=> b!6711484 (=> res!2746454 e!4056142)))

(declare-fun isEmpty!38076 (List!65881) Bool)

(assert (=> b!6711484 (= res!2746454 (not (isEmpty!38076 (t!379558 zl!343))))))

(assert (= (and start!650920 res!2746460) b!6711491))

(assert (= (and b!6711491 res!2746455) b!6711492))

(assert (= (and b!6711492 res!2746452) b!6711479))

(assert (= (and b!6711479 (not res!2746459)) b!6711484))

(assert (= (and b!6711484 (not res!2746454)) b!6711489))

(assert (= (and b!6711489 (not res!2746451)) b!6711487))

(assert (= (and b!6711487 (not res!2746453)) b!6711483))

(assert (= (and b!6711483 (not res!2746458)) b!6711495))

(assert (= (and b!6711495 (not res!2746457)) b!6711490))

(assert (= (and b!6711490 (not res!2746456)) b!6711482))

(assert (= (and start!650920 ((_ is ElementMatch!16527) r!7292)) b!6711485))

(assert (= (and start!650920 ((_ is Concat!25372) r!7292)) b!6711493))

(assert (= (and start!650920 ((_ is Star!16527) r!7292)) b!6711486))

(assert (= (and start!650920 ((_ is Union!16527) r!7292)) b!6711488))

(assert (= (and start!650920 condSetEmpty!45699) setIsEmpty!45699))

(assert (= (and start!650920 (not condSetEmpty!45699)) setNonEmpty!45699))

(assert (= setNonEmpty!45699 b!6711480))

(assert (= b!6711494 b!6711478))

(assert (= (and start!650920 ((_ is Cons!65757) zl!343)) b!6711494))

(assert (= (and start!650920 ((_ is Cons!65758) s!2326)) b!6711481))

(declare-fun m!7477302 () Bool)

(assert (=> b!6711484 m!7477302))

(declare-fun m!7477304 () Bool)

(assert (=> b!6711479 m!7477304))

(declare-fun m!7477306 () Bool)

(assert (=> b!6711479 m!7477306))

(declare-fun m!7477308 () Bool)

(assert (=> b!6711479 m!7477308))

(declare-fun m!7477310 () Bool)

(assert (=> start!650920 m!7477310))

(assert (=> b!6711482 m!7477310))

(declare-fun m!7477312 () Bool)

(assert (=> setNonEmpty!45699 m!7477312))

(declare-fun m!7477314 () Bool)

(assert (=> b!6711492 m!7477314))

(declare-fun m!7477316 () Bool)

(assert (=> b!6711490 m!7477316))

(declare-fun m!7477318 () Bool)

(assert (=> b!6711491 m!7477318))

(declare-fun m!7477320 () Bool)

(assert (=> b!6711494 m!7477320))

(declare-fun m!7477322 () Bool)

(assert (=> b!6711489 m!7477322))

(declare-fun m!7477324 () Bool)

(assert (=> b!6711483 m!7477324))

(assert (=> b!6711483 m!7477324))

(declare-fun m!7477326 () Bool)

(assert (=> b!6711483 m!7477326))

(check-sat (not b!6711488) (not b!6711489) (not b!6711491) (not b!6711478) (not b!6711493) (not b!6711479) (not b!6711484) (not b!6711483) (not b!6711480) (not b!6711481) (not b!6711486) (not b!6711490) (not b!6711494) (not start!650920) (not b!6711482) tp_is_empty!42307 (not setNonEmpty!45699) (not b!6711492))
(check-sat)
