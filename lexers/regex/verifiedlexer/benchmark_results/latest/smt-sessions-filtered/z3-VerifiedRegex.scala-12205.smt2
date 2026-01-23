; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!687498 () Bool)

(assert start!687498)

(declare-fun b!7074790 () Bool)

(assert (=> b!7074790 true))

(declare-fun b!7074793 () Bool)

(assert (=> b!7074793 true))

(declare-fun b!7074787 () Bool)

(assert (=> b!7074787 true))

(declare-fun bs!1881067 () Bool)

(declare-fun b!7074796 () Bool)

(assert (= bs!1881067 (and b!7074796 b!7074790)))

(declare-datatypes ((C!35584 0))(
  ( (C!35585 (val!27494 Int)) )
))
(declare-datatypes ((List!68497 0))(
  ( (Nil!68373) (Cons!68373 (h!74821 C!35584) (t!382280 List!68497)) )
))
(declare-fun lt!2548431 () List!68497)

(declare-fun lambda!426375 () Int)

(declare-fun lambda!426371 () Int)

(declare-fun s!7408 () List!68497)

(assert (=> bs!1881067 (= (= lt!2548431 s!7408) (= lambda!426375 lambda!426371))))

(assert (=> b!7074796 true))

(declare-fun b!7074785 () Bool)

(declare-fun e!4253395 () Bool)

(declare-fun e!4253386 () Bool)

(assert (=> b!7074785 (= e!4253395 e!4253386)))

(declare-fun res!2889706 () Bool)

(assert (=> b!7074785 (=> res!2889706 e!4253386)))

(declare-fun e!4253385 () Bool)

(assert (=> b!7074785 (= res!2889706 e!4253385)))

(declare-fun res!2889726 () Bool)

(assert (=> b!7074785 (=> (not res!2889726) (not e!4253385))))

(declare-fun lt!2548404 () Bool)

(declare-fun lt!2548398 () Bool)

(assert (=> b!7074785 (= res!2889726 (not (= lt!2548404 lt!2548398)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17657 0))(
  ( (ElementMatch!17657 (c!1319887 C!35584)) (Concat!26502 (regOne!35826 Regex!17657) (regTwo!35826 Regex!17657)) (EmptyExpr!17657) (Star!17657 (reg!17986 Regex!17657)) (EmptyLang!17657) (Union!17657 (regOne!35827 Regex!17657) (regTwo!35827 Regex!17657)) )
))
(declare-datatypes ((List!68498 0))(
  ( (Nil!68374) (Cons!68374 (h!74822 Regex!17657) (t!382281 List!68498)) )
))
(declare-datatypes ((Context!13306 0))(
  ( (Context!13307 (exprs!7153 List!68498)) )
))
(declare-fun lt!2548401 () (InoxSet Context!13306))

(declare-fun matchZipper!3197 ((InoxSet Context!13306) List!68497) Bool)

(assert (=> b!7074785 (= lt!2548404 (matchZipper!3197 lt!2548401 (t!382280 s!7408)))))

(declare-fun lambda!426373 () Int)

(declare-fun lt!2548394 () List!68498)

(declare-datatypes ((Unit!162024 0))(
  ( (Unit!162025) )
))
(declare-fun lt!2548424 () Unit!162024)

(declare-fun ct2!306 () Context!13306)

(declare-fun lemmaConcatPreservesForall!968 (List!68498 List!68498 Int) Unit!162024)

(assert (=> b!7074785 (= lt!2548424 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun lt!2548425 () (InoxSet Context!13306))

(declare-fun e!4253401 () Bool)

(assert (=> b!7074785 (= (matchZipper!3197 lt!2548425 (t!382280 s!7408)) e!4253401)))

(declare-fun res!2889719 () Bool)

(assert (=> b!7074785 (=> res!2889719 e!4253401)))

(assert (=> b!7074785 (= res!2889719 lt!2548398)))

(declare-fun lt!2548407 () (InoxSet Context!13306))

(assert (=> b!7074785 (= lt!2548398 (matchZipper!3197 lt!2548407 (t!382280 s!7408)))))

(declare-fun lt!2548412 () Unit!162024)

(declare-fun lt!2548421 () (InoxSet Context!13306))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1670 ((InoxSet Context!13306) (InoxSet Context!13306) List!68497) Unit!162024)

(assert (=> b!7074785 (= lt!2548412 (lemmaZipperConcatMatchesSameAsBothZippers!1670 lt!2548407 lt!2548421 (t!382280 s!7408)))))

(declare-fun lt!2548391 () Unit!162024)

(assert (=> b!7074785 (= lt!2548391 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun lt!2548429 () Unit!162024)

(assert (=> b!7074785 (= lt!2548429 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun setIsEmpty!50321 () Bool)

(declare-fun setRes!50321 () Bool)

(assert (=> setIsEmpty!50321 setRes!50321))

(declare-fun b!7074786 () Bool)

(declare-fun res!2889725 () Bool)

(declare-fun e!4253394 () Bool)

(assert (=> b!7074786 (=> res!2889725 e!4253394)))

(declare-fun lt!2548432 () (InoxSet Context!13306))

(declare-datatypes ((tuple2!68288 0))(
  ( (tuple2!68289 (_1!37447 List!68497) (_2!37447 List!68497)) )
))
(declare-fun lt!2548418 () tuple2!68288)

(assert (=> b!7074786 (= res!2889725 (not (matchZipper!3197 lt!2548432 (_2!37447 lt!2548418))))))

(declare-fun e!4253400 () Bool)

(declare-fun e!4253388 () Bool)

(assert (=> b!7074787 (= e!4253400 e!4253388)))

(declare-fun res!2889717 () Bool)

(assert (=> b!7074787 (=> res!2889717 e!4253388)))

(declare-fun lt!2548396 () (InoxSet Context!13306))

(declare-fun derivationStepZipper!3107 ((InoxSet Context!13306) C!35584) (InoxSet Context!13306))

(assert (=> b!7074787 (= res!2889717 (not (= (derivationStepZipper!3107 lt!2548396 (h!74821 s!7408)) lt!2548401)))))

(declare-fun lambda!426374 () Int)

(declare-fun lt!2548414 () Context!13306)

(declare-fun flatMap!2583 ((InoxSet Context!13306) Int) (InoxSet Context!13306))

(declare-fun derivationStepZipperUp!2241 (Context!13306 C!35584) (InoxSet Context!13306))

(assert (=> b!7074787 (= (flatMap!2583 lt!2548396 lambda!426374) (derivationStepZipperUp!2241 lt!2548414 (h!74821 s!7408)))))

(declare-fun lt!2548383 () Unit!162024)

(declare-fun lemmaFlatMapOnSingletonSet!2092 ((InoxSet Context!13306) Context!13306 Int) Unit!162024)

(assert (=> b!7074787 (= lt!2548383 (lemmaFlatMapOnSingletonSet!2092 lt!2548396 lt!2548414 lambda!426374))))

(assert (=> b!7074787 (= lt!2548401 (derivationStepZipperUp!2241 lt!2548414 (h!74821 s!7408)))))

(declare-fun lt!2548392 () Unit!162024)

(declare-fun lt!2548397 () Context!13306)

(assert (=> b!7074787 (= lt!2548392 (lemmaConcatPreservesForall!968 (exprs!7153 lt!2548397) (exprs!7153 ct2!306) lambda!426373))))

(declare-fun b!7074788 () Bool)

(declare-fun e!4253389 () Bool)

(assert (=> b!7074788 (= e!4253386 e!4253389)))

(declare-fun res!2889716 () Bool)

(assert (=> b!7074788 (=> res!2889716 e!4253389)))

(assert (=> b!7074788 (= res!2889716 (matchZipper!3197 lt!2548421 (t!382280 s!7408)))))

(declare-fun lt!2548395 () Unit!162024)

(assert (=> b!7074788 (= lt!2548395 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun b!7074789 () Bool)

(declare-fun e!4253392 () Bool)

(declare-fun e!4253384 () Bool)

(assert (=> b!7074789 (= e!4253392 e!4253384)))

(declare-fun res!2889720 () Bool)

(assert (=> b!7074789 (=> res!2889720 e!4253384)))

(declare-fun e!4253398 () Bool)

(assert (=> b!7074789 (= res!2889720 e!4253398)))

(declare-fun res!2889721 () Bool)

(assert (=> b!7074789 (=> (not res!2889721) (not e!4253398))))

(declare-fun lt!2548393 () Bool)

(assert (=> b!7074789 (= res!2889721 (not lt!2548393))))

(declare-fun lt!2548419 () (InoxSet Context!13306))

(assert (=> b!7074789 (= lt!2548393 (matchZipper!3197 lt!2548419 lt!2548431))))

(assert (=> b!7074789 (= lt!2548431 (Cons!68373 (h!74821 s!7408) (_1!37447 lt!2548418)))))

(declare-fun lt!2548410 () (InoxSet Context!13306))

(assert (=> b!7074789 (matchZipper!3197 lt!2548410 (_1!37447 lt!2548418))))

(declare-fun lt!2548426 () (InoxSet Context!13306))

(declare-fun lt!2548388 () (InoxSet Context!13306))

(declare-fun lt!2548405 () Unit!162024)

(assert (=> b!7074789 (= lt!2548405 (lemmaZipperConcatMatchesSameAsBothZippers!1670 lt!2548388 lt!2548426 (_1!37447 lt!2548418)))))

(declare-fun e!4253393 () Bool)

(declare-fun e!4253396 () Bool)

(assert (=> b!7074790 (= e!4253393 (not e!4253396))))

(declare-fun res!2889711 () Bool)

(assert (=> b!7074790 (=> res!2889711 e!4253396)))

(declare-fun lt!2548399 () (InoxSet Context!13306))

(assert (=> b!7074790 (= res!2889711 (not (matchZipper!3197 lt!2548399 s!7408)))))

(declare-fun lt!2548413 () Context!13306)

(assert (=> b!7074790 (= lt!2548399 (store ((as const (Array Context!13306 Bool)) false) lt!2548413 true))))

(declare-fun lt!2548415 () (InoxSet Context!13306))

(declare-fun getWitness!1765 ((InoxSet Context!13306) Int) Context!13306)

(assert (=> b!7074790 (= lt!2548413 (getWitness!1765 lt!2548415 lambda!426371))))

(declare-datatypes ((List!68499 0))(
  ( (Nil!68375) (Cons!68375 (h!74823 Context!13306) (t!382282 List!68499)) )
))
(declare-fun lt!2548433 () List!68499)

(declare-fun exists!3714 (List!68499 Int) Bool)

(assert (=> b!7074790 (exists!3714 lt!2548433 lambda!426371)))

(declare-fun lt!2548400 () Unit!162024)

(declare-fun lemmaZipperMatchesExistsMatchingContext!578 (List!68499 List!68497) Unit!162024)

(assert (=> b!7074790 (= lt!2548400 (lemmaZipperMatchesExistsMatchingContext!578 lt!2548433 s!7408))))

(declare-fun toList!10998 ((InoxSet Context!13306)) List!68499)

(assert (=> b!7074790 (= lt!2548433 (toList!10998 lt!2548415))))

(declare-fun b!7074791 () Bool)

(declare-fun res!2889712 () Bool)

(assert (=> b!7074791 (=> res!2889712 e!4253384)))

(assert (=> b!7074791 (= res!2889712 (not lt!2548393))))

(declare-fun b!7074792 () Bool)

(declare-fun res!2889713 () Bool)

(assert (=> b!7074792 (=> res!2889713 e!4253396)))

(assert (=> b!7074792 (= res!2889713 (not (select lt!2548415 lt!2548413)))))

(declare-fun e!4253387 () Bool)

(assert (=> b!7074793 (= e!4253396 e!4253387)))

(declare-fun res!2889709 () Bool)

(assert (=> b!7074793 (=> res!2889709 e!4253387)))

(declare-fun z1!570 () (InoxSet Context!13306))

(assert (=> b!7074793 (= res!2889709 (or (not (= lt!2548414 lt!2548413)) (not (select z1!570 lt!2548397))))))

(declare-fun ++!15797 (List!68498 List!68498) List!68498)

(assert (=> b!7074793 (= lt!2548414 (Context!13307 (++!15797 (exprs!7153 lt!2548397) (exprs!7153 ct2!306))))))

(declare-fun lt!2548428 () Unit!162024)

(assert (=> b!7074793 (= lt!2548428 (lemmaConcatPreservesForall!968 (exprs!7153 lt!2548397) (exprs!7153 ct2!306) lambda!426373))))

(declare-fun lambda!426372 () Int)

(declare-fun mapPost2!486 ((InoxSet Context!13306) Int Context!13306) Context!13306)

(assert (=> b!7074793 (= lt!2548397 (mapPost2!486 z1!570 lambda!426372 lt!2548413))))

(declare-fun b!7074794 () Bool)

(assert (=> b!7074794 (= e!4253401 (matchZipper!3197 lt!2548421 (t!382280 s!7408)))))

(declare-fun b!7074795 () Bool)

(declare-fun e!4253391 () Bool)

(assert (=> b!7074795 (= e!4253391 e!4253395)))

(declare-fun res!2889710 () Bool)

(assert (=> b!7074795 (=> res!2889710 e!4253395)))

(assert (=> b!7074795 (= res!2889710 (not (= lt!2548401 lt!2548425)))))

(assert (=> b!7074795 (= lt!2548425 ((_ map or) lt!2548407 lt!2548421))))

(declare-fun lt!2548389 () Context!13306)

(assert (=> b!7074795 (= lt!2548421 (derivationStepZipperUp!2241 lt!2548389 (h!74821 s!7408)))))

(declare-fun derivationStepZipperDown!2291 (Regex!17657 Context!13306 C!35584) (InoxSet Context!13306))

(assert (=> b!7074795 (= lt!2548407 (derivationStepZipperDown!2291 (h!74822 (exprs!7153 lt!2548397)) lt!2548389 (h!74821 s!7408)))))

(assert (=> b!7074795 (= lt!2548389 (Context!13307 (++!15797 lt!2548394 (exprs!7153 ct2!306))))))

(declare-fun lt!2548384 () Unit!162024)

(assert (=> b!7074795 (= lt!2548384 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun lt!2548390 () Unit!162024)

(assert (=> b!7074795 (= lt!2548390 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun b!7074797 () Bool)

(declare-fun res!2889723 () Bool)

(assert (=> b!7074797 (=> res!2889723 e!4253386)))

(assert (=> b!7074797 (= res!2889723 (not lt!2548404))))

(declare-fun b!7074798 () Bool)

(assert (=> b!7074798 (= e!4253398 (not (matchZipper!3197 lt!2548426 (_1!37447 lt!2548418))))))

(declare-fun b!7074799 () Bool)

(declare-fun e!4253399 () Bool)

(declare-fun tp!1942605 () Bool)

(assert (=> b!7074799 (= e!4253399 tp!1942605)))

(declare-fun setNonEmpty!50321 () Bool)

(declare-fun tp!1942606 () Bool)

(declare-fun setElem!50321 () Context!13306)

(declare-fun e!4253397 () Bool)

(declare-fun inv!87001 (Context!13306) Bool)

(assert (=> setNonEmpty!50321 (= setRes!50321 (and tp!1942606 (inv!87001 setElem!50321) e!4253397))))

(declare-fun setRest!50321 () (InoxSet Context!13306))

(assert (=> setNonEmpty!50321 (= z1!570 ((_ map or) (store ((as const (Array Context!13306 Bool)) false) setElem!50321 true) setRest!50321))))

(declare-fun b!7074800 () Bool)

(assert (=> b!7074800 (= e!4253387 e!4253400)))

(declare-fun res!2889727 () Bool)

(assert (=> b!7074800 (=> res!2889727 e!4253400)))

(assert (=> b!7074800 (= res!2889727 (not (= lt!2548396 lt!2548399)))))

(assert (=> b!7074800 (= lt!2548396 (store ((as const (Array Context!13306 Bool)) false) lt!2548414 true))))

(declare-fun lt!2548408 () Unit!162024)

(assert (=> b!7074800 (= lt!2548408 (lemmaConcatPreservesForall!968 (exprs!7153 lt!2548397) (exprs!7153 ct2!306) lambda!426373))))

(declare-fun b!7074801 () Bool)

(declare-fun res!2889722 () Bool)

(assert (=> b!7074801 (=> res!2889722 e!4253388)))

(get-info :version)

(assert (=> b!7074801 (= res!2889722 (not ((_ is Cons!68374) (exprs!7153 lt!2548397))))))

(declare-fun b!7074802 () Bool)

(declare-fun res!2889705 () Bool)

(assert (=> b!7074802 (=> (not res!2889705) (not e!4253393))))

(assert (=> b!7074802 (= res!2889705 ((_ is Cons!68373) s!7408))))

(declare-fun b!7074803 () Bool)

(declare-fun e!4253390 () Bool)

(declare-fun tp_is_empty!44539 () Bool)

(declare-fun tp!1942608 () Bool)

(assert (=> b!7074803 (= e!4253390 (and tp_is_empty!44539 tp!1942608))))

(declare-fun b!7074804 () Bool)

(declare-fun res!2889715 () Bool)

(assert (=> b!7074804 (=> res!2889715 e!4253394)))

(declare-fun ++!15798 (List!68497 List!68497) List!68497)

(assert (=> b!7074804 (= res!2889715 (not (= (++!15798 (_1!37447 lt!2548418) (_2!37447 lt!2548418)) (t!382280 s!7408))))))

(declare-fun b!7074805 () Bool)

(declare-fun tp!1942607 () Bool)

(assert (=> b!7074805 (= e!4253397 tp!1942607)))

(declare-fun b!7074806 () Bool)

(assert (=> b!7074806 (= e!4253388 e!4253391)))

(declare-fun res!2889728 () Bool)

(assert (=> b!7074806 (=> res!2889728 e!4253391)))

(declare-fun nullable!7340 (Regex!17657) Bool)

(assert (=> b!7074806 (= res!2889728 (not (nullable!7340 (h!74822 (exprs!7153 lt!2548397)))))))

(declare-fun lt!2548403 () Context!13306)

(assert (=> b!7074806 (= lt!2548403 (Context!13307 lt!2548394))))

(declare-fun tail!13847 (List!68498) List!68498)

(assert (=> b!7074806 (= lt!2548394 (tail!13847 (exprs!7153 lt!2548397)))))

(declare-fun b!7074807 () Bool)

(declare-fun e!4253383 () Bool)

(assert (=> b!7074807 (= e!4253383 e!4253392)))

(declare-fun res!2889708 () Bool)

(assert (=> b!7074807 (=> res!2889708 e!4253392)))

(declare-fun lt!2548406 () (InoxSet Context!13306))

(assert (=> b!7074807 (= res!2889708 (not (= lt!2548406 lt!2548410)))))

(assert (=> b!7074807 (= lt!2548410 ((_ map or) lt!2548388 lt!2548426))))

(assert (=> b!7074807 (= lt!2548426 (derivationStepZipperUp!2241 lt!2548403 (h!74821 s!7408)))))

(declare-fun b!7074808 () Bool)

(declare-fun e!4253382 () Bool)

(assert (=> b!7074808 (= e!4253389 e!4253382)))

(declare-fun res!2889707 () Bool)

(assert (=> b!7074808 (=> res!2889707 e!4253382)))

(assert (=> b!7074808 (= res!2889707 (not lt!2548398))))

(declare-fun lt!2548435 () Unit!162024)

(assert (=> b!7074808 (= lt!2548435 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun lt!2548417 () Unit!162024)

(assert (=> b!7074808 (= lt!2548417 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun b!7074809 () Bool)

(assert (=> b!7074809 (= e!4253382 e!4253394)))

(declare-fun res!2889724 () Bool)

(assert (=> b!7074809 (=> res!2889724 e!4253394)))

(assert (=> b!7074809 (= res!2889724 (not (matchZipper!3197 lt!2548388 (_1!37447 lt!2548418))))))

(declare-datatypes ((Option!16976 0))(
  ( (None!16975) (Some!16975 (v!53269 tuple2!68288)) )
))
(declare-fun lt!2548434 () Option!16976)

(declare-fun get!23955 (Option!16976) tuple2!68288)

(assert (=> b!7074809 (= lt!2548418 (get!23955 lt!2548434))))

(declare-fun isDefined!13677 (Option!16976) Bool)

(assert (=> b!7074809 (isDefined!13677 lt!2548434)))

(declare-fun findConcatSeparationZippers!492 ((InoxSet Context!13306) (InoxSet Context!13306) List!68497 List!68497 List!68497) Option!16976)

(assert (=> b!7074809 (= lt!2548434 (findConcatSeparationZippers!492 lt!2548388 lt!2548432 Nil!68373 (t!382280 s!7408) (t!382280 s!7408)))))

(assert (=> b!7074809 (= lt!2548432 (store ((as const (Array Context!13306 Bool)) false) ct2!306 true))))

(declare-fun lt!2548386 () Unit!162024)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!480 ((InoxSet Context!13306) Context!13306 List!68497) Unit!162024)

(assert (=> b!7074809 (= lt!2548386 (lemmaConcatZipperMatchesStringThenFindConcatDefined!480 lt!2548388 ct2!306 (t!382280 s!7408)))))

(declare-fun lt!2548385 () Unit!162024)

(assert (=> b!7074809 (= lt!2548385 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun appendTo!778 ((InoxSet Context!13306) Context!13306) (InoxSet Context!13306))

(assert (=> b!7074809 (= lt!2548407 (appendTo!778 lt!2548388 ct2!306))))

(assert (=> b!7074809 (= lt!2548388 (derivationStepZipperDown!2291 (h!74822 (exprs!7153 lt!2548397)) lt!2548403 (h!74821 s!7408)))))

(declare-fun lt!2548411 () Unit!162024)

(assert (=> b!7074809 (= lt!2548411 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun lt!2548402 () Unit!162024)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!128 (Context!13306 Regex!17657 C!35584 Context!13306) Unit!162024)

(assert (=> b!7074809 (= lt!2548402 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!128 lt!2548403 (h!74822 (exprs!7153 lt!2548397)) (h!74821 s!7408) ct2!306))))

(declare-fun b!7074810 () Bool)

(declare-fun res!2889704 () Bool)

(assert (=> b!7074810 (=> res!2889704 e!4253388)))

(declare-fun isEmpty!39906 (List!68498) Bool)

(assert (=> b!7074810 (= res!2889704 (isEmpty!39906 (exprs!7153 lt!2548397)))))

(declare-fun b!7074811 () Bool)

(assert (=> b!7074811 (= e!4253394 e!4253383)))

(declare-fun res!2889714 () Bool)

(assert (=> b!7074811 (=> res!2889714 e!4253383)))

(declare-fun lt!2548427 () (InoxSet Context!13306))

(assert (=> b!7074811 (= res!2889714 (not (= lt!2548406 lt!2548427)))))

(assert (=> b!7074811 (= (flatMap!2583 lt!2548419 lambda!426374) (derivationStepZipperUp!2241 lt!2548397 (h!74821 s!7408)))))

(declare-fun lt!2548409 () Unit!162024)

(assert (=> b!7074811 (= lt!2548409 (lemmaFlatMapOnSingletonSet!2092 lt!2548419 lt!2548397 lambda!426374))))

(assert (=> b!7074811 (= lt!2548427 (derivationStepZipperUp!2241 lt!2548397 (h!74821 s!7408)))))

(assert (=> b!7074811 (= lt!2548406 (derivationStepZipper!3107 lt!2548419 (h!74821 s!7408)))))

(assert (=> b!7074811 (= lt!2548419 (store ((as const (Array Context!13306 Bool)) false) lt!2548397 true))))

(declare-fun b!7074812 () Bool)

(assert (=> b!7074812 (= e!4253385 (not (matchZipper!3197 lt!2548421 (t!382280 s!7408))))))

(declare-fun lt!2548387 () Unit!162024)

(assert (=> b!7074812 (= lt!2548387 (lemmaConcatPreservesForall!968 lt!2548394 (exprs!7153 ct2!306) lambda!426373))))

(declare-fun res!2889718 () Bool)

(assert (=> start!687498 (=> (not res!2889718) (not e!4253393))))

(assert (=> start!687498 (= res!2889718 (matchZipper!3197 lt!2548415 s!7408))))

(assert (=> start!687498 (= lt!2548415 (appendTo!778 z1!570 ct2!306))))

(assert (=> start!687498 e!4253393))

(declare-fun condSetEmpty!50321 () Bool)

(assert (=> start!687498 (= condSetEmpty!50321 (= z1!570 ((as const (Array Context!13306 Bool)) false)))))

(assert (=> start!687498 setRes!50321))

(assert (=> start!687498 (and (inv!87001 ct2!306) e!4253399)))

(assert (=> start!687498 e!4253390))

(assert (=> b!7074796 (= e!4253384 true)))

(assert (=> b!7074796 (isDefined!13677 (findConcatSeparationZippers!492 z1!570 lt!2548432 Nil!68373 s!7408 s!7408))))

(declare-fun lt!2548422 () Unit!162024)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!84 ((InoxSet Context!13306) (InoxSet Context!13306) List!68497 List!68497 List!68497 List!68497 List!68497) Unit!162024)

(assert (=> b!7074796 (= lt!2548422 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!84 z1!570 lt!2548432 lt!2548431 (_2!37447 lt!2548418) s!7408 Nil!68373 s!7408))))

(declare-fun lt!2548416 () List!68499)

(declare-fun content!13814 (List!68499) (InoxSet Context!13306))

(assert (=> b!7074796 (matchZipper!3197 (content!13814 lt!2548416) lt!2548431)))

(declare-fun lt!2548423 () Unit!162024)

(declare-fun lemmaExistsMatchingContextThenMatchingString!60 (List!68499 List!68497) Unit!162024)

(assert (=> b!7074796 (= lt!2548423 (lemmaExistsMatchingContextThenMatchingString!60 lt!2548416 lt!2548431))))

(assert (=> b!7074796 (= lt!2548416 (toList!10998 z1!570))))

(declare-fun exists!3715 ((InoxSet Context!13306) Int) Bool)

(assert (=> b!7074796 (exists!3715 z1!570 lambda!426375)))

(declare-fun lt!2548430 () Unit!162024)

(declare-fun lemmaContainsThenExists!165 ((InoxSet Context!13306) Context!13306 Int) Unit!162024)

(assert (=> b!7074796 (= lt!2548430 (lemmaContainsThenExists!165 z1!570 lt!2548397 lambda!426375))))

(assert (=> b!7074796 (isDefined!13677 (findConcatSeparationZippers!492 lt!2548419 lt!2548432 Nil!68373 s!7408 s!7408))))

(declare-fun lt!2548420 () Unit!162024)

(assert (=> b!7074796 (= lt!2548420 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!84 lt!2548419 lt!2548432 lt!2548431 (_2!37447 lt!2548418) s!7408 Nil!68373 s!7408))))

(assert (= (and start!687498 res!2889718) b!7074802))

(assert (= (and b!7074802 res!2889705) b!7074790))

(assert (= (and b!7074790 (not res!2889711)) b!7074792))

(assert (= (and b!7074792 (not res!2889713)) b!7074793))

(assert (= (and b!7074793 (not res!2889709)) b!7074800))

(assert (= (and b!7074800 (not res!2889727)) b!7074787))

(assert (= (and b!7074787 (not res!2889717)) b!7074801))

(assert (= (and b!7074801 (not res!2889722)) b!7074810))

(assert (= (and b!7074810 (not res!2889704)) b!7074806))

(assert (= (and b!7074806 (not res!2889728)) b!7074795))

(assert (= (and b!7074795 (not res!2889710)) b!7074785))

(assert (= (and b!7074785 (not res!2889719)) b!7074794))

(assert (= (and b!7074785 res!2889726) b!7074812))

(assert (= (and b!7074785 (not res!2889706)) b!7074797))

(assert (= (and b!7074797 (not res!2889723)) b!7074788))

(assert (= (and b!7074788 (not res!2889716)) b!7074808))

(assert (= (and b!7074808 (not res!2889707)) b!7074809))

(assert (= (and b!7074809 (not res!2889724)) b!7074786))

(assert (= (and b!7074786 (not res!2889725)) b!7074804))

(assert (= (and b!7074804 (not res!2889715)) b!7074811))

(assert (= (and b!7074811 (not res!2889714)) b!7074807))

(assert (= (and b!7074807 (not res!2889708)) b!7074789))

(assert (= (and b!7074789 res!2889721) b!7074798))

(assert (= (and b!7074789 (not res!2889720)) b!7074791))

(assert (= (and b!7074791 (not res!2889712)) b!7074796))

(assert (= (and start!687498 condSetEmpty!50321) setIsEmpty!50321))

(assert (= (and start!687498 (not condSetEmpty!50321)) setNonEmpty!50321))

(assert (= setNonEmpty!50321 b!7074805))

(assert (= start!687498 b!7074799))

(assert (= (and start!687498 ((_ is Cons!68373) s!7408)) b!7074803))

(declare-fun m!7802318 () Bool)

(assert (=> b!7074788 m!7802318))

(declare-fun m!7802320 () Bool)

(assert (=> b!7074788 m!7802320))

(assert (=> b!7074785 m!7802320))

(declare-fun m!7802322 () Bool)

(assert (=> b!7074785 m!7802322))

(assert (=> b!7074785 m!7802320))

(declare-fun m!7802324 () Bool)

(assert (=> b!7074785 m!7802324))

(declare-fun m!7802326 () Bool)

(assert (=> b!7074785 m!7802326))

(assert (=> b!7074785 m!7802320))

(declare-fun m!7802328 () Bool)

(assert (=> b!7074785 m!7802328))

(declare-fun m!7802330 () Bool)

(assert (=> b!7074804 m!7802330))

(assert (=> b!7074812 m!7802318))

(assert (=> b!7074812 m!7802320))

(declare-fun m!7802332 () Bool)

(assert (=> b!7074796 m!7802332))

(declare-fun m!7802334 () Bool)

(assert (=> b!7074796 m!7802334))

(declare-fun m!7802336 () Bool)

(assert (=> b!7074796 m!7802336))

(declare-fun m!7802338 () Bool)

(assert (=> b!7074796 m!7802338))

(assert (=> b!7074796 m!7802334))

(declare-fun m!7802340 () Bool)

(assert (=> b!7074796 m!7802340))

(assert (=> b!7074796 m!7802340))

(declare-fun m!7802342 () Bool)

(assert (=> b!7074796 m!7802342))

(declare-fun m!7802344 () Bool)

(assert (=> b!7074796 m!7802344))

(declare-fun m!7802346 () Bool)

(assert (=> b!7074796 m!7802346))

(declare-fun m!7802348 () Bool)

(assert (=> b!7074796 m!7802348))

(declare-fun m!7802350 () Bool)

(assert (=> b!7074796 m!7802350))

(declare-fun m!7802352 () Bool)

(assert (=> b!7074796 m!7802352))

(assert (=> b!7074796 m!7802332))

(declare-fun m!7802354 () Bool)

(assert (=> b!7074796 m!7802354))

(declare-fun m!7802356 () Bool)

(assert (=> b!7074795 m!7802356))

(declare-fun m!7802358 () Bool)

(assert (=> b!7074795 m!7802358))

(declare-fun m!7802360 () Bool)

(assert (=> b!7074795 m!7802360))

(assert (=> b!7074795 m!7802320))

(assert (=> b!7074795 m!7802320))

(declare-fun m!7802362 () Bool)

(assert (=> start!687498 m!7802362))

(declare-fun m!7802364 () Bool)

(assert (=> start!687498 m!7802364))

(declare-fun m!7802366 () Bool)

(assert (=> start!687498 m!7802366))

(declare-fun m!7802368 () Bool)

(assert (=> b!7074787 m!7802368))

(declare-fun m!7802370 () Bool)

(assert (=> b!7074787 m!7802370))

(declare-fun m!7802372 () Bool)

(assert (=> b!7074787 m!7802372))

(declare-fun m!7802374 () Bool)

(assert (=> b!7074787 m!7802374))

(declare-fun m!7802376 () Bool)

(assert (=> b!7074787 m!7802376))

(declare-fun m!7802378 () Bool)

(assert (=> b!7074789 m!7802378))

(declare-fun m!7802380 () Bool)

(assert (=> b!7074789 m!7802380))

(declare-fun m!7802382 () Bool)

(assert (=> b!7074789 m!7802382))

(declare-fun m!7802384 () Bool)

(assert (=> setNonEmpty!50321 m!7802384))

(declare-fun m!7802386 () Bool)

(assert (=> b!7074811 m!7802386))

(declare-fun m!7802388 () Bool)

(assert (=> b!7074811 m!7802388))

(declare-fun m!7802390 () Bool)

(assert (=> b!7074811 m!7802390))

(declare-fun m!7802392 () Bool)

(assert (=> b!7074811 m!7802392))

(declare-fun m!7802394 () Bool)

(assert (=> b!7074811 m!7802394))

(declare-fun m!7802396 () Bool)

(assert (=> b!7074790 m!7802396))

(declare-fun m!7802398 () Bool)

(assert (=> b!7074790 m!7802398))

(declare-fun m!7802400 () Bool)

(assert (=> b!7074790 m!7802400))

(declare-fun m!7802402 () Bool)

(assert (=> b!7074790 m!7802402))

(declare-fun m!7802404 () Bool)

(assert (=> b!7074790 m!7802404))

(declare-fun m!7802406 () Bool)

(assert (=> b!7074790 m!7802406))

(declare-fun m!7802408 () Bool)

(assert (=> b!7074793 m!7802408))

(declare-fun m!7802410 () Bool)

(assert (=> b!7074793 m!7802410))

(assert (=> b!7074793 m!7802376))

(declare-fun m!7802412 () Bool)

(assert (=> b!7074793 m!7802412))

(declare-fun m!7802414 () Bool)

(assert (=> b!7074792 m!7802414))

(declare-fun m!7802416 () Bool)

(assert (=> b!7074810 m!7802416))

(assert (=> b!7074794 m!7802318))

(assert (=> b!7074808 m!7802320))

(assert (=> b!7074808 m!7802320))

(declare-fun m!7802418 () Bool)

(assert (=> b!7074786 m!7802418))

(declare-fun m!7802420 () Bool)

(assert (=> b!7074798 m!7802420))

(declare-fun m!7802422 () Bool)

(assert (=> b!7074800 m!7802422))

(assert (=> b!7074800 m!7802376))

(assert (=> b!7074809 m!7802320))

(declare-fun m!7802424 () Bool)

(assert (=> b!7074809 m!7802424))

(assert (=> b!7074809 m!7802320))

(declare-fun m!7802426 () Bool)

(assert (=> b!7074809 m!7802426))

(declare-fun m!7802428 () Bool)

(assert (=> b!7074809 m!7802428))

(declare-fun m!7802430 () Bool)

(assert (=> b!7074809 m!7802430))

(declare-fun m!7802432 () Bool)

(assert (=> b!7074809 m!7802432))

(declare-fun m!7802434 () Bool)

(assert (=> b!7074809 m!7802434))

(declare-fun m!7802436 () Bool)

(assert (=> b!7074809 m!7802436))

(declare-fun m!7802438 () Bool)

(assert (=> b!7074809 m!7802438))

(declare-fun m!7802440 () Bool)

(assert (=> b!7074809 m!7802440))

(declare-fun m!7802442 () Bool)

(assert (=> b!7074806 m!7802442))

(declare-fun m!7802444 () Bool)

(assert (=> b!7074806 m!7802444))

(declare-fun m!7802446 () Bool)

(assert (=> b!7074807 m!7802446))

(check-sat (not b!7074793) (not b!7074805) (not b!7074810) (not b!7074809) (not b!7074787) tp_is_empty!44539 (not b!7074796) (not b!7074808) (not b!7074789) (not b!7074785) (not setNonEmpty!50321) (not b!7074790) (not b!7074788) (not b!7074798) (not b!7074794) (not start!687498) (not b!7074811) (not b!7074806) (not b!7074803) (not b!7074812) (not b!7074804) (not b!7074786) (not b!7074800) (not b!7074799) (not b!7074807) (not b!7074795))
(check-sat)
