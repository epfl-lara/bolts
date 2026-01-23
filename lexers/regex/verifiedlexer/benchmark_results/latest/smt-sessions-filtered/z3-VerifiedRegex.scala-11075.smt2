; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573590 () Bool)

(assert start!573590)

(declare-fun b!5485454 () Bool)

(declare-fun e!3394524 () Bool)

(declare-fun tp!1507402 () Bool)

(assert (=> b!5485454 (= e!3394524 tp!1507402)))

(declare-fun res!2339175 () Bool)

(declare-fun e!3394523 () Bool)

(assert (=> start!573590 (=> (not res!2339175) (not e!3394523))))

(declare-datatypes ((C!31064 0))(
  ( (C!31065 (val!25234 Int)) )
))
(declare-datatypes ((Regex!15397 0))(
  ( (ElementMatch!15397 (c!958337 C!31064)) (Concat!24242 (regOne!31306 Regex!15397) (regTwo!31306 Regex!15397)) (EmptyExpr!15397) (Star!15397 (reg!15726 Regex!15397)) (EmptyLang!15397) (Union!15397 (regOne!31307 Regex!15397) (regTwo!31307 Regex!15397)) )
))
(declare-fun r!7292 () Regex!15397)

(declare-fun validRegex!7133 (Regex!15397) Bool)

(assert (=> start!573590 (= res!2339175 (validRegex!7133 r!7292))))

(assert (=> start!573590 e!3394523))

(assert (=> start!573590 e!3394524))

(declare-fun condSetEmpty!36147 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62490 0))(
  ( (Nil!62366) (Cons!62366 (h!68814 Regex!15397) (t!375721 List!62490)) )
))
(declare-datatypes ((Context!9562 0))(
  ( (Context!9563 (exprs!5281 List!62490)) )
))
(declare-fun z!1189 () (InoxSet Context!9562))

(assert (=> start!573590 (= condSetEmpty!36147 (= z!1189 ((as const (Array Context!9562 Bool)) false)))))

(declare-fun setRes!36147 () Bool)

(assert (=> start!573590 setRes!36147))

(declare-fun e!3394517 () Bool)

(assert (=> start!573590 e!3394517))

(declare-fun e!3394520 () Bool)

(assert (=> start!573590 e!3394520))

(declare-fun b!5485455 () Bool)

(declare-fun e!3394522 () Bool)

(declare-fun e!3394519 () Bool)

(assert (=> b!5485455 (= e!3394522 e!3394519)))

(declare-fun res!2339174 () Bool)

(assert (=> b!5485455 (=> res!2339174 e!3394519)))

(declare-fun lt!2240794 () List!62490)

(declare-fun lambda!293219 () Int)

(declare-fun forall!14624 (List!62490 Int) Bool)

(assert (=> b!5485455 (= res!2339174 (not (forall!14624 lt!2240794 lambda!293219)))))

(declare-datatypes ((List!62491 0))(
  ( (Nil!62367) (Cons!62367 (h!68815 Context!9562) (t!375722 List!62491)) )
))
(declare-fun zl!343 () List!62491)

(declare-fun unfocusZipperList!829 (List!62491) List!62490)

(assert (=> b!5485455 (= lt!2240794 (unfocusZipperList!829 zl!343))))

(declare-fun b!5485456 () Bool)

(declare-fun tp_is_empty!40047 () Bool)

(assert (=> b!5485456 (= e!3394524 tp_is_empty!40047)))

(declare-fun b!5485457 () Bool)

(declare-fun res!2339176 () Bool)

(assert (=> b!5485457 (=> res!2339176 e!3394522)))

(declare-datatypes ((List!62492 0))(
  ( (Nil!62368) (Cons!62368 (h!68816 C!31064) (t!375723 List!62492)) )
))
(declare-fun s!2326 () List!62492)

(get-info :version)

(assert (=> b!5485457 (= res!2339176 (or (not ((_ is Cons!62367) zl!343)) ((_ is Nil!62368) s!2326) (not (= zl!343 (Cons!62367 (h!68815 zl!343) (t!375722 zl!343))))))))

(declare-fun b!5485458 () Bool)

(declare-fun tp!1507400 () Bool)

(assert (=> b!5485458 (= e!3394520 (and tp_is_empty!40047 tp!1507400))))

(declare-fun b!5485459 () Bool)

(declare-fun res!2339171 () Bool)

(assert (=> b!5485459 (=> res!2339171 e!3394519)))

(declare-fun generalisedUnion!1316 (List!62490) Regex!15397)

(assert (=> b!5485459 (= res!2339171 (not (= r!7292 (generalisedUnion!1316 lt!2240794))))))

(declare-fun b!5485460 () Bool)

(declare-fun tp!1507403 () Bool)

(declare-fun tp!1507398 () Bool)

(assert (=> b!5485460 (= e!3394524 (and tp!1507403 tp!1507398))))

(declare-fun b!5485461 () Bool)

(declare-fun e!3394516 () Bool)

(declare-fun tp!1507399 () Bool)

(assert (=> b!5485461 (= e!3394516 tp!1507399)))

(declare-fun b!5485462 () Bool)

(assert (=> b!5485462 (= e!3394519 true)))

(declare-fun b!5485463 () Bool)

(declare-fun tp!1507405 () Bool)

(declare-fun tp!1507401 () Bool)

(assert (=> b!5485463 (= e!3394524 (and tp!1507405 tp!1507401))))

(declare-fun b!5485464 () Bool)

(declare-fun res!2339172 () Bool)

(assert (=> b!5485464 (=> res!2339172 e!3394522)))

(declare-fun isEmpty!34283 (List!62491) Bool)

(assert (=> b!5485464 (= res!2339172 (isEmpty!34283 (t!375722 zl!343)))))

(declare-fun b!5485465 () Bool)

(declare-fun e!3394518 () Bool)

(assert (=> b!5485465 (= e!3394518 (isEmpty!34283 (t!375722 zl!343)))))

(declare-fun b!5485466 () Bool)

(declare-fun e!3394521 () Bool)

(declare-fun tp!1507404 () Bool)

(assert (=> b!5485466 (= e!3394521 tp!1507404)))

(declare-fun setIsEmpty!36147 () Bool)

(assert (=> setIsEmpty!36147 setRes!36147))

(declare-fun b!5485467 () Bool)

(assert (=> b!5485467 (= e!3394523 (not e!3394522))))

(declare-fun res!2339173 () Bool)

(assert (=> b!5485467 (=> res!2339173 e!3394522)))

(assert (=> b!5485467 (= res!2339173 e!3394518)))

(declare-fun res!2339170 () Bool)

(assert (=> b!5485467 (=> (not res!2339170) (not e!3394518))))

(assert (=> b!5485467 (= res!2339170 ((_ is Cons!62367) zl!343))))

(declare-fun matchR!7582 (Regex!15397 List!62492) Bool)

(declare-fun matchRSpec!2500 (Regex!15397 List!62492) Bool)

(assert (=> b!5485467 (= (matchR!7582 r!7292 s!2326) (matchRSpec!2500 r!7292 s!2326))))

(declare-datatypes ((Unit!155248 0))(
  ( (Unit!155249) )
))
(declare-fun lt!2240795 () Unit!155248)

(declare-fun mainMatchTheorem!2500 (Regex!15397 List!62492) Unit!155248)

(assert (=> b!5485467 (= lt!2240795 (mainMatchTheorem!2500 r!7292 s!2326))))

(declare-fun b!5485468 () Bool)

(declare-fun res!2339169 () Bool)

(assert (=> b!5485468 (=> (not res!2339169) (not e!3394523))))

(declare-fun unfocusZipper!1139 (List!62491) Regex!15397)

(assert (=> b!5485468 (= res!2339169 (= r!7292 (unfocusZipper!1139 zl!343)))))

(declare-fun b!5485469 () Bool)

(declare-fun res!2339168 () Bool)

(assert (=> b!5485469 (=> (not res!2339168) (not e!3394523))))

(declare-fun toList!9181 ((InoxSet Context!9562)) List!62491)

(assert (=> b!5485469 (= res!2339168 (= (toList!9181 z!1189) zl!343))))

(declare-fun tp!1507407 () Bool)

(declare-fun b!5485470 () Bool)

(declare-fun inv!81739 (Context!9562) Bool)

(assert (=> b!5485470 (= e!3394517 (and (inv!81739 (h!68815 zl!343)) e!3394516 tp!1507407))))

(declare-fun setNonEmpty!36147 () Bool)

(declare-fun tp!1507406 () Bool)

(declare-fun setElem!36147 () Context!9562)

(assert (=> setNonEmpty!36147 (= setRes!36147 (and tp!1507406 (inv!81739 setElem!36147) e!3394521))))

(declare-fun setRest!36147 () (InoxSet Context!9562))

(assert (=> setNonEmpty!36147 (= z!1189 ((_ map or) (store ((as const (Array Context!9562 Bool)) false) setElem!36147 true) setRest!36147))))

(assert (= (and start!573590 res!2339175) b!5485469))

(assert (= (and b!5485469 res!2339168) b!5485468))

(assert (= (and b!5485468 res!2339169) b!5485467))

(assert (= (and b!5485467 res!2339170) b!5485465))

(assert (= (and b!5485467 (not res!2339173)) b!5485457))

(assert (= (and b!5485457 (not res!2339176)) b!5485464))

(assert (= (and b!5485464 (not res!2339172)) b!5485455))

(assert (= (and b!5485455 (not res!2339174)) b!5485459))

(assert (= (and b!5485459 (not res!2339171)) b!5485462))

(assert (= (and start!573590 ((_ is ElementMatch!15397) r!7292)) b!5485456))

(assert (= (and start!573590 ((_ is Concat!24242) r!7292)) b!5485460))

(assert (= (and start!573590 ((_ is Star!15397) r!7292)) b!5485454))

(assert (= (and start!573590 ((_ is Union!15397) r!7292)) b!5485463))

(assert (= (and start!573590 condSetEmpty!36147) setIsEmpty!36147))

(assert (= (and start!573590 (not condSetEmpty!36147)) setNonEmpty!36147))

(assert (= setNonEmpty!36147 b!5485466))

(assert (= b!5485470 b!5485461))

(assert (= (and start!573590 ((_ is Cons!62367) zl!343)) b!5485470))

(assert (= (and start!573590 ((_ is Cons!62368) s!2326)) b!5485458))

(declare-fun m!6500752 () Bool)

(assert (=> b!5485464 m!6500752))

(declare-fun m!6500754 () Bool)

(assert (=> b!5485469 m!6500754))

(declare-fun m!6500756 () Bool)

(assert (=> setNonEmpty!36147 m!6500756))

(declare-fun m!6500758 () Bool)

(assert (=> b!5485455 m!6500758))

(declare-fun m!6500760 () Bool)

(assert (=> b!5485455 m!6500760))

(declare-fun m!6500762 () Bool)

(assert (=> b!5485470 m!6500762))

(declare-fun m!6500764 () Bool)

(assert (=> start!573590 m!6500764))

(declare-fun m!6500766 () Bool)

(assert (=> b!5485459 m!6500766))

(declare-fun m!6500768 () Bool)

(assert (=> b!5485468 m!6500768))

(declare-fun m!6500770 () Bool)

(assert (=> b!5485467 m!6500770))

(declare-fun m!6500772 () Bool)

(assert (=> b!5485467 m!6500772))

(declare-fun m!6500774 () Bool)

(assert (=> b!5485467 m!6500774))

(assert (=> b!5485465 m!6500752))

(check-sat tp_is_empty!40047 (not b!5485468) (not b!5485469) (not b!5485461) (not b!5485467) (not b!5485464) (not b!5485455) (not b!5485460) (not start!573590) (not b!5485470) (not b!5485466) (not setNonEmpty!36147) (not b!5485459) (not b!5485458) (not b!5485454) (not b!5485463) (not b!5485465))
(check-sat)
