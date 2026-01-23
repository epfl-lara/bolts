; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!552094 () Bool)

(assert start!552094)

(declare-fun b!5219690 () Bool)

(assert (=> b!5219690 true))

(assert (=> b!5219690 true))

(declare-fun lambda!261918 () Int)

(declare-fun lambda!261917 () Int)

(assert (=> b!5219690 (not (= lambda!261918 lambda!261917))))

(assert (=> b!5219690 true))

(assert (=> b!5219690 true))

(declare-fun b!5219683 () Bool)

(assert (=> b!5219683 true))

(declare-fun b!5219662 () Bool)

(declare-datatypes ((Unit!152504 0))(
  ( (Unit!152505) )
))
(declare-fun e!3248963 () Unit!152504)

(declare-fun Unit!152506 () Unit!152504)

(assert (=> b!5219662 (= e!3248963 Unit!152506)))

(declare-fun b!5219663 () Bool)

(declare-fun e!3248971 () Bool)

(declare-fun tp!1463400 () Bool)

(assert (=> b!5219663 (= e!3248971 tp!1463400)))

(declare-fun b!5219664 () Bool)

(declare-fun e!3248962 () Unit!152504)

(declare-fun Unit!152507 () Unit!152504)

(assert (=> b!5219664 (= e!3248962 Unit!152507)))

(declare-datatypes ((C!29888 0))(
  ( (C!29889 (val!24646 Int)) )
))
(declare-datatypes ((List!60726 0))(
  ( (Nil!60602) (Cons!60602 (h!67050 C!29888) (t!373896 List!60726)) )
))
(declare-fun s!2326 () List!60726)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14809 0))(
  ( (ElementMatch!14809 (c!900664 C!29888)) (Concat!23654 (regOne!30130 Regex!14809) (regTwo!30130 Regex!14809)) (EmptyExpr!14809) (Star!14809 (reg!15138 Regex!14809)) (EmptyLang!14809) (Union!14809 (regOne!30131 Regex!14809) (regTwo!30131 Regex!14809)) )
))
(declare-datatypes ((List!60727 0))(
  ( (Nil!60603) (Cons!60603 (h!67051 Regex!14809) (t!373897 List!60727)) )
))
(declare-datatypes ((Context!8386 0))(
  ( (Context!8387 (exprs!4693 List!60727)) )
))
(declare-fun lt!2143326 () (InoxSet Context!8386))

(declare-fun lt!2143332 () Unit!152504)

(declare-fun lt!2143343 () (InoxSet Context!8386))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!46 ((InoxSet Context!8386) (InoxSet Context!8386) List!60726) Unit!152504)

(assert (=> b!5219664 (= lt!2143332 (lemmaZipperConcatMatchesSameAsBothZippers!46 lt!2143326 lt!2143343 (t!373896 s!2326)))))

(declare-fun res!2216411 () Bool)

(declare-fun lt!2143331 () Bool)

(assert (=> b!5219664 (= res!2216411 lt!2143331)))

(declare-fun e!3248968 () Bool)

(assert (=> b!5219664 (=> res!2216411 e!3248968)))

(declare-fun matchZipper!1053 ((InoxSet Context!8386) List!60726) Bool)

(assert (=> b!5219664 (= (matchZipper!1053 ((_ map or) lt!2143326 lt!2143343) (t!373896 s!2326)) e!3248968)))

(declare-fun b!5219665 () Bool)

(assert (=> b!5219665 (= e!3248968 (matchZipper!1053 lt!2143343 (t!373896 s!2326)))))

(declare-fun b!5219666 () Bool)

(declare-fun e!3248959 () Bool)

(declare-fun tp_is_empty!38871 () Bool)

(assert (=> b!5219666 (= e!3248959 tp_is_empty!38871)))

(declare-fun b!5219667 () Bool)

(declare-fun e!3248967 () Bool)

(declare-fun e!3248960 () Bool)

(assert (=> b!5219667 (= e!3248967 (not e!3248960))))

(declare-fun res!2216414 () Bool)

(assert (=> b!5219667 (=> res!2216414 e!3248960)))

(declare-datatypes ((List!60728 0))(
  ( (Nil!60604) (Cons!60604 (h!67052 Context!8386) (t!373898 List!60728)) )
))
(declare-fun zl!343 () List!60728)

(get-info :version)

(assert (=> b!5219667 (= res!2216414 (not ((_ is Cons!60604) zl!343)))))

(declare-fun lt!2143324 () Bool)

(declare-fun r!7292 () Regex!14809)

(declare-fun matchRSpec!1912 (Regex!14809 List!60726) Bool)

(assert (=> b!5219667 (= lt!2143324 (matchRSpec!1912 r!7292 s!2326))))

(declare-fun matchR!6994 (Regex!14809 List!60726) Bool)

(assert (=> b!5219667 (= lt!2143324 (matchR!6994 r!7292 s!2326))))

(declare-fun lt!2143333 () Unit!152504)

(declare-fun mainMatchTheorem!1912 (Regex!14809 List!60726) Unit!152504)

(assert (=> b!5219667 (= lt!2143333 (mainMatchTheorem!1912 r!7292 s!2326))))

(declare-fun b!5219668 () Bool)

(declare-fun res!2216420 () Bool)

(assert (=> b!5219668 (=> (not res!2216420) (not e!3248967))))

(declare-fun z!1189 () (InoxSet Context!8386))

(declare-fun toList!8593 ((InoxSet Context!8386)) List!60728)

(assert (=> b!5219668 (= res!2216420 (= (toList!8593 z!1189) zl!343))))

(declare-fun res!2216423 () Bool)

(assert (=> start!552094 (=> (not res!2216423) (not e!3248967))))

(declare-fun validRegex!6545 (Regex!14809) Bool)

(assert (=> start!552094 (= res!2216423 (validRegex!6545 r!7292))))

(assert (=> start!552094 e!3248967))

(assert (=> start!552094 e!3248959))

(declare-fun condSetEmpty!33193 () Bool)

(assert (=> start!552094 (= condSetEmpty!33193 (= z!1189 ((as const (Array Context!8386 Bool)) false)))))

(declare-fun setRes!33193 () Bool)

(assert (=> start!552094 setRes!33193))

(declare-fun e!3248972 () Bool)

(assert (=> start!552094 e!3248972))

(declare-fun e!3248961 () Bool)

(assert (=> start!552094 e!3248961))

(declare-fun b!5219669 () Bool)

(declare-fun tp!1463401 () Bool)

(declare-fun tp!1463395 () Bool)

(assert (=> b!5219669 (= e!3248959 (and tp!1463401 tp!1463395))))

(declare-fun b!5219670 () Bool)

(declare-fun res!2216418 () Bool)

(assert (=> b!5219670 (=> (not res!2216418) (not e!3248967))))

(declare-fun unfocusZipper!551 (List!60728) Regex!14809)

(assert (=> b!5219670 (= res!2216418 (= r!7292 (unfocusZipper!551 zl!343)))))

(declare-fun b!5219671 () Bool)

(declare-fun e!3248970 () Bool)

(declare-fun lt!2143338 () (InoxSet Context!8386))

(assert (=> b!5219671 (= e!3248970 (matchZipper!1053 lt!2143338 (t!373896 s!2326)))))

(declare-fun b!5219672 () Bool)

(declare-fun tp!1463396 () Bool)

(declare-fun tp!1463398 () Bool)

(assert (=> b!5219672 (= e!3248959 (and tp!1463396 tp!1463398))))

(declare-fun b!5219673 () Bool)

(declare-fun e!3248966 () Bool)

(declare-fun e!3248969 () Bool)

(assert (=> b!5219673 (= e!3248966 e!3248969)))

(declare-fun res!2216416 () Bool)

(assert (=> b!5219673 (=> res!2216416 e!3248969)))

(declare-fun e!3248965 () Bool)

(assert (=> b!5219673 (= res!2216416 e!3248965)))

(declare-fun res!2216413 () Bool)

(assert (=> b!5219673 (=> (not res!2216413) (not e!3248965))))

(declare-fun lt!2143325 () (InoxSet Context!8386))

(assert (=> b!5219673 (= res!2216413 (not (= (matchZipper!1053 lt!2143325 (t!373896 s!2326)) lt!2143331)))))

(declare-fun lt!2143323 () (InoxSet Context!8386))

(assert (=> b!5219673 (= (matchZipper!1053 lt!2143323 (t!373896 s!2326)) e!3248970)))

(declare-fun res!2216426 () Bool)

(assert (=> b!5219673 (=> res!2216426 e!3248970)))

(assert (=> b!5219673 (= res!2216426 lt!2143331)))

(assert (=> b!5219673 (= lt!2143331 (matchZipper!1053 lt!2143326 (t!373896 s!2326)))))

(declare-fun lt!2143340 () Unit!152504)

(assert (=> b!5219673 (= lt!2143340 (lemmaZipperConcatMatchesSameAsBothZippers!46 lt!2143326 lt!2143338 (t!373896 s!2326)))))

(declare-fun b!5219674 () Bool)

(declare-fun res!2216417 () Bool)

(assert (=> b!5219674 (=> res!2216417 e!3248960)))

(declare-fun isEmpty!32521 (List!60728) Bool)

(assert (=> b!5219674 (= res!2216417 (not (isEmpty!32521 (t!373898 zl!343))))))

(declare-fun b!5219675 () Bool)

(declare-fun tp!1463402 () Bool)

(assert (=> b!5219675 (= e!3248959 tp!1463402)))

(declare-fun b!5219676 () Bool)

(declare-fun e!3248973 () Bool)

(declare-fun tp!1463403 () Bool)

(assert (=> b!5219676 (= e!3248973 tp!1463403)))

(declare-fun b!5219677 () Bool)

(declare-fun Unit!152508 () Unit!152504)

(assert (=> b!5219677 (= e!3248962 Unit!152508)))

(declare-fun b!5219678 () Bool)

(assert (=> b!5219678 (= e!3248969 true)))

(declare-fun lt!2143336 () (InoxSet Context!8386))

(declare-fun derivationStepZipperUp!181 (Context!8386 C!29888) (InoxSet Context!8386))

(assert (=> b!5219678 (= lt!2143336 (derivationStepZipperUp!181 (Context!8387 (Cons!60603 (regTwo!30131 (regOne!30130 r!7292)) (t!373897 (exprs!4693 (h!67052 zl!343))))) (h!67050 s!2326)))))

(declare-fun lt!2143342 () Unit!152504)

(assert (=> b!5219678 (= lt!2143342 e!3248962)))

(declare-fun c!900662 () Bool)

(declare-fun nullable!4978 (Regex!14809) Bool)

(assert (=> b!5219678 (= c!900662 (nullable!4978 (regOne!30131 (regOne!30130 r!7292))))))

(declare-fun lt!2143322 () Context!8386)

(declare-fun lambda!261919 () Int)

(declare-fun lt!2143337 () (InoxSet Context!8386))

(declare-fun flatMap!536 ((InoxSet Context!8386) Int) (InoxSet Context!8386))

(assert (=> b!5219678 (= (flatMap!536 lt!2143337 lambda!261919) (derivationStepZipperUp!181 lt!2143322 (h!67050 s!2326)))))

(declare-fun lt!2143329 () Unit!152504)

(declare-fun lemmaFlatMapOnSingletonSet!68 ((InoxSet Context!8386) Context!8386 Int) Unit!152504)

(assert (=> b!5219678 (= lt!2143329 (lemmaFlatMapOnSingletonSet!68 lt!2143337 lt!2143322 lambda!261919))))

(declare-fun lt!2143344 () (InoxSet Context!8386))

(assert (=> b!5219678 (= lt!2143344 (derivationStepZipperUp!181 lt!2143322 (h!67050 s!2326)))))

(assert (=> b!5219678 (= lt!2143337 (store ((as const (Array Context!8386 Bool)) false) lt!2143322 true))))

(assert (=> b!5219678 (= lt!2143322 (Context!8387 (Cons!60603 (regOne!30131 (regOne!30130 r!7292)) (t!373897 (exprs!4693 (h!67052 zl!343))))))))

(declare-fun tp!1463397 () Bool)

(declare-fun b!5219679 () Bool)

(declare-fun inv!80269 (Context!8386) Bool)

(assert (=> b!5219679 (= e!3248972 (and (inv!80269 (h!67052 zl!343)) e!3248971 tp!1463397))))

(declare-fun b!5219680 () Bool)

(declare-fun tp!1463399 () Bool)

(assert (=> b!5219680 (= e!3248961 (and tp_is_empty!38871 tp!1463399))))

(declare-fun b!5219681 () Bool)

(declare-fun res!2216427 () Bool)

(declare-fun e!3248974 () Bool)

(assert (=> b!5219681 (=> res!2216427 e!3248974)))

(declare-fun isEmpty!32522 (List!60727) Bool)

(assert (=> b!5219681 (= res!2216427 (isEmpty!32522 (t!373897 (exprs!4693 (h!67052 zl!343)))))))

(declare-fun b!5219682 () Bool)

(declare-fun res!2216424 () Bool)

(assert (=> b!5219682 (=> res!2216424 e!3248960)))

(assert (=> b!5219682 (= res!2216424 (or ((_ is EmptyExpr!14809) r!7292) ((_ is EmptyLang!14809) r!7292) ((_ is ElementMatch!14809) r!7292) ((_ is Union!14809) r!7292) (not ((_ is Concat!23654) r!7292))))))

(declare-fun tp!1463394 () Bool)

(declare-fun setNonEmpty!33193 () Bool)

(declare-fun setElem!33193 () Context!8386)

(assert (=> setNonEmpty!33193 (= setRes!33193 (and tp!1463394 (inv!80269 setElem!33193) e!3248973))))

(declare-fun setRest!33193 () (InoxSet Context!8386))

(assert (=> setNonEmpty!33193 (= z!1189 ((_ map or) (store ((as const (Array Context!8386 Bool)) false) setElem!33193 true) setRest!33193))))

(declare-fun setIsEmpty!33193 () Bool)

(assert (=> setIsEmpty!33193 setRes!33193))

(declare-fun e!3248964 () Bool)

(assert (=> b!5219683 (= e!3248974 e!3248964)))

(declare-fun res!2216419 () Bool)

(assert (=> b!5219683 (=> res!2216419 e!3248964)))

(assert (=> b!5219683 (= res!2216419 (or (and ((_ is ElementMatch!14809) (regOne!30130 r!7292)) (= (c!900664 (regOne!30130 r!7292)) (h!67050 s!2326))) (not ((_ is Union!14809) (regOne!30130 r!7292)))))))

(declare-fun lt!2143339 () Unit!152504)

(assert (=> b!5219683 (= lt!2143339 e!3248963)))

(declare-fun c!900663 () Bool)

(assert (=> b!5219683 (= c!900663 (nullable!4978 (h!67051 (exprs!4693 (h!67052 zl!343)))))))

(assert (=> b!5219683 (= (flatMap!536 z!1189 lambda!261919) (derivationStepZipperUp!181 (h!67052 zl!343) (h!67050 s!2326)))))

(declare-fun lt!2143327 () Unit!152504)

(assert (=> b!5219683 (= lt!2143327 (lemmaFlatMapOnSingletonSet!68 z!1189 (h!67052 zl!343) lambda!261919))))

(declare-fun lt!2143330 () Context!8386)

(assert (=> b!5219683 (= lt!2143343 (derivationStepZipperUp!181 lt!2143330 (h!67050 s!2326)))))

(declare-fun derivationStepZipperDown!257 (Regex!14809 Context!8386 C!29888) (InoxSet Context!8386))

(assert (=> b!5219683 (= lt!2143325 (derivationStepZipperDown!257 (h!67051 (exprs!4693 (h!67052 zl!343))) lt!2143330 (h!67050 s!2326)))))

(assert (=> b!5219683 (= lt!2143330 (Context!8387 (t!373897 (exprs!4693 (h!67052 zl!343)))))))

(declare-fun lt!2143341 () (InoxSet Context!8386))

(assert (=> b!5219683 (= lt!2143341 (derivationStepZipperUp!181 (Context!8387 (Cons!60603 (h!67051 (exprs!4693 (h!67052 zl!343))) (t!373897 (exprs!4693 (h!67052 zl!343))))) (h!67050 s!2326)))))

(declare-fun b!5219684 () Bool)

(declare-fun res!2216410 () Bool)

(assert (=> b!5219684 (=> res!2216410 e!3248960)))

(declare-fun generalisedConcat!478 (List!60727) Regex!14809)

(assert (=> b!5219684 (= res!2216410 (not (= r!7292 (generalisedConcat!478 (exprs!4693 (h!67052 zl!343))))))))

(declare-fun b!5219685 () Bool)

(declare-fun e!3248975 () Bool)

(assert (=> b!5219685 (= e!3248975 (matchZipper!1053 lt!2143343 (t!373896 s!2326)))))

(declare-fun b!5219686 () Bool)

(assert (=> b!5219686 (= e!3248964 e!3248966)))

(declare-fun res!2216422 () Bool)

(assert (=> b!5219686 (=> res!2216422 e!3248966)))

(assert (=> b!5219686 (= res!2216422 (not (= lt!2143325 lt!2143323)))))

(assert (=> b!5219686 (= lt!2143323 ((_ map or) lt!2143326 lt!2143338))))

(assert (=> b!5219686 (= lt!2143338 (derivationStepZipperDown!257 (regTwo!30131 (regOne!30130 r!7292)) lt!2143330 (h!67050 s!2326)))))

(assert (=> b!5219686 (= lt!2143326 (derivationStepZipperDown!257 (regOne!30131 (regOne!30130 r!7292)) lt!2143330 (h!67050 s!2326)))))

(declare-fun b!5219687 () Bool)

(declare-fun res!2216412 () Bool)

(assert (=> b!5219687 (=> res!2216412 e!3248960)))

(assert (=> b!5219687 (= res!2216412 (not ((_ is Cons!60603) (exprs!4693 (h!67052 zl!343)))))))

(declare-fun b!5219688 () Bool)

(assert (=> b!5219688 (= e!3248965 (not (matchZipper!1053 lt!2143338 (t!373896 s!2326))))))

(declare-fun b!5219689 () Bool)

(declare-fun res!2216415 () Bool)

(assert (=> b!5219689 (=> res!2216415 e!3248960)))

(declare-fun generalisedUnion!738 (List!60727) Regex!14809)

(declare-fun unfocusZipperList!251 (List!60728) List!60727)

(assert (=> b!5219689 (= res!2216415 (not (= r!7292 (generalisedUnion!738 (unfocusZipperList!251 zl!343)))))))

(assert (=> b!5219690 (= e!3248960 e!3248974)))

(declare-fun res!2216425 () Bool)

(assert (=> b!5219690 (=> res!2216425 e!3248974)))

(declare-fun lt!2143328 () Bool)

(assert (=> b!5219690 (= res!2216425 (or (not (= lt!2143324 lt!2143328)) ((_ is Nil!60602) s!2326)))))

(declare-fun Exists!1990 (Int) Bool)

(assert (=> b!5219690 (= (Exists!1990 lambda!261917) (Exists!1990 lambda!261918))))

(declare-fun lt!2143334 () Unit!152504)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!644 (Regex!14809 Regex!14809 List!60726) Unit!152504)

(assert (=> b!5219690 (= lt!2143334 (lemmaExistCutMatchRandMatchRSpecEquivalent!644 (regOne!30130 r!7292) (regTwo!30130 r!7292) s!2326))))

(assert (=> b!5219690 (= lt!2143328 (Exists!1990 lambda!261917))))

(declare-datatypes ((tuple2!64016 0))(
  ( (tuple2!64017 (_1!35311 List!60726) (_2!35311 List!60726)) )
))
(declare-datatypes ((Option!14920 0))(
  ( (None!14919) (Some!14919 (v!50948 tuple2!64016)) )
))
(declare-fun isDefined!11623 (Option!14920) Bool)

(declare-fun findConcatSeparation!1334 (Regex!14809 Regex!14809 List!60726 List!60726 List!60726) Option!14920)

(assert (=> b!5219690 (= lt!2143328 (isDefined!11623 (findConcatSeparation!1334 (regOne!30130 r!7292) (regTwo!30130 r!7292) Nil!60602 s!2326 s!2326)))))

(declare-fun lt!2143335 () Unit!152504)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1098 (Regex!14809 Regex!14809 List!60726) Unit!152504)

(assert (=> b!5219690 (= lt!2143335 (lemmaFindConcatSeparationEquivalentToExists!1098 (regOne!30130 r!7292) (regTwo!30130 r!7292) s!2326))))

(declare-fun b!5219691 () Bool)

(declare-fun Unit!152509 () Unit!152504)

(assert (=> b!5219691 (= e!3248963 Unit!152509)))

(declare-fun lt!2143345 () Unit!152504)

(assert (=> b!5219691 (= lt!2143345 (lemmaZipperConcatMatchesSameAsBothZippers!46 lt!2143325 lt!2143343 (t!373896 s!2326)))))

(declare-fun res!2216421 () Bool)

(assert (=> b!5219691 (= res!2216421 (matchZipper!1053 lt!2143325 (t!373896 s!2326)))))

(assert (=> b!5219691 (=> res!2216421 e!3248975)))

(assert (=> b!5219691 (= (matchZipper!1053 ((_ map or) lt!2143325 lt!2143343) (t!373896 s!2326)) e!3248975)))

(assert (= (and start!552094 res!2216423) b!5219668))

(assert (= (and b!5219668 res!2216420) b!5219670))

(assert (= (and b!5219670 res!2216418) b!5219667))

(assert (= (and b!5219667 (not res!2216414)) b!5219674))

(assert (= (and b!5219674 (not res!2216417)) b!5219684))

(assert (= (and b!5219684 (not res!2216410)) b!5219687))

(assert (= (and b!5219687 (not res!2216412)) b!5219689))

(assert (= (and b!5219689 (not res!2216415)) b!5219682))

(assert (= (and b!5219682 (not res!2216424)) b!5219690))

(assert (= (and b!5219690 (not res!2216425)) b!5219681))

(assert (= (and b!5219681 (not res!2216427)) b!5219683))

(assert (= (and b!5219683 c!900663) b!5219691))

(assert (= (and b!5219683 (not c!900663)) b!5219662))

(assert (= (and b!5219691 (not res!2216421)) b!5219685))

(assert (= (and b!5219683 (not res!2216419)) b!5219686))

(assert (= (and b!5219686 (not res!2216422)) b!5219673))

(assert (= (and b!5219673 (not res!2216426)) b!5219671))

(assert (= (and b!5219673 res!2216413) b!5219688))

(assert (= (and b!5219673 (not res!2216416)) b!5219678))

(assert (= (and b!5219678 c!900662) b!5219664))

(assert (= (and b!5219678 (not c!900662)) b!5219677))

(assert (= (and b!5219664 (not res!2216411)) b!5219665))

(assert (= (and start!552094 ((_ is ElementMatch!14809) r!7292)) b!5219666))

(assert (= (and start!552094 ((_ is Concat!23654) r!7292)) b!5219669))

(assert (= (and start!552094 ((_ is Star!14809) r!7292)) b!5219675))

(assert (= (and start!552094 ((_ is Union!14809) r!7292)) b!5219672))

(assert (= (and start!552094 condSetEmpty!33193) setIsEmpty!33193))

(assert (= (and start!552094 (not condSetEmpty!33193)) setNonEmpty!33193))

(assert (= setNonEmpty!33193 b!5219676))

(assert (= b!5219679 b!5219663))

(assert (= (and start!552094 ((_ is Cons!60604) zl!343)) b!5219679))

(assert (= (and start!552094 ((_ is Cons!60602) s!2326)) b!5219680))

(declare-fun m!6267486 () Bool)

(assert (=> b!5219664 m!6267486))

(declare-fun m!6267488 () Bool)

(assert (=> b!5219664 m!6267488))

(declare-fun m!6267490 () Bool)

(assert (=> b!5219689 m!6267490))

(assert (=> b!5219689 m!6267490))

(declare-fun m!6267492 () Bool)

(assert (=> b!5219689 m!6267492))

(declare-fun m!6267494 () Bool)

(assert (=> b!5219678 m!6267494))

(declare-fun m!6267496 () Bool)

(assert (=> b!5219678 m!6267496))

(declare-fun m!6267498 () Bool)

(assert (=> b!5219678 m!6267498))

(declare-fun m!6267500 () Bool)

(assert (=> b!5219678 m!6267500))

(declare-fun m!6267502 () Bool)

(assert (=> b!5219678 m!6267502))

(declare-fun m!6267504 () Bool)

(assert (=> b!5219678 m!6267504))

(declare-fun m!6267506 () Bool)

(assert (=> b!5219688 m!6267506))

(declare-fun m!6267508 () Bool)

(assert (=> b!5219683 m!6267508))

(declare-fun m!6267510 () Bool)

(assert (=> b!5219683 m!6267510))

(declare-fun m!6267512 () Bool)

(assert (=> b!5219683 m!6267512))

(declare-fun m!6267514 () Bool)

(assert (=> b!5219683 m!6267514))

(declare-fun m!6267516 () Bool)

(assert (=> b!5219683 m!6267516))

(declare-fun m!6267518 () Bool)

(assert (=> b!5219683 m!6267518))

(declare-fun m!6267520 () Bool)

(assert (=> b!5219683 m!6267520))

(declare-fun m!6267522 () Bool)

(assert (=> b!5219679 m!6267522))

(declare-fun m!6267524 () Bool)

(assert (=> b!5219686 m!6267524))

(declare-fun m!6267526 () Bool)

(assert (=> b!5219686 m!6267526))

(declare-fun m!6267528 () Bool)

(assert (=> setNonEmpty!33193 m!6267528))

(declare-fun m!6267530 () Bool)

(assert (=> b!5219690 m!6267530))

(declare-fun m!6267532 () Bool)

(assert (=> b!5219690 m!6267532))

(declare-fun m!6267534 () Bool)

(assert (=> b!5219690 m!6267534))

(declare-fun m!6267536 () Bool)

(assert (=> b!5219690 m!6267536))

(assert (=> b!5219690 m!6267534))

(declare-fun m!6267538 () Bool)

(assert (=> b!5219690 m!6267538))

(assert (=> b!5219690 m!6267530))

(declare-fun m!6267540 () Bool)

(assert (=> b!5219690 m!6267540))

(assert (=> b!5219671 m!6267506))

(declare-fun m!6267542 () Bool)

(assert (=> b!5219681 m!6267542))

(declare-fun m!6267544 () Bool)

(assert (=> b!5219667 m!6267544))

(declare-fun m!6267546 () Bool)

(assert (=> b!5219667 m!6267546))

(declare-fun m!6267548 () Bool)

(assert (=> b!5219667 m!6267548))

(declare-fun m!6267550 () Bool)

(assert (=> b!5219674 m!6267550))

(declare-fun m!6267552 () Bool)

(assert (=> b!5219685 m!6267552))

(declare-fun m!6267554 () Bool)

(assert (=> start!552094 m!6267554))

(declare-fun m!6267556 () Bool)

(assert (=> b!5219668 m!6267556))

(declare-fun m!6267558 () Bool)

(assert (=> b!5219673 m!6267558))

(declare-fun m!6267560 () Bool)

(assert (=> b!5219673 m!6267560))

(declare-fun m!6267562 () Bool)

(assert (=> b!5219673 m!6267562))

(declare-fun m!6267564 () Bool)

(assert (=> b!5219673 m!6267564))

(declare-fun m!6267566 () Bool)

(assert (=> b!5219670 m!6267566))

(declare-fun m!6267568 () Bool)

(assert (=> b!5219684 m!6267568))

(declare-fun m!6267570 () Bool)

(assert (=> b!5219691 m!6267570))

(assert (=> b!5219691 m!6267558))

(declare-fun m!6267572 () Bool)

(assert (=> b!5219691 m!6267572))

(assert (=> b!5219665 m!6267552))

(check-sat (not b!5219681) (not b!5219665) (not b!5219669) (not b!5219685) (not setNonEmpty!33193) (not b!5219690) tp_is_empty!38871 (not b!5219675) (not b!5219684) (not b!5219668) (not b!5219672) (not b!5219688) (not b!5219670) (not b!5219663) (not b!5219667) (not b!5219664) (not b!5219691) (not b!5219674) (not b!5219680) (not b!5219678) (not b!5219679) (not b!5219683) (not b!5219676) (not b!5219689) (not b!5219673) (not b!5219671) (not start!552094) (not b!5219686))
(check-sat)
