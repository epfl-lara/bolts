; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572390 () Bool)

(assert start!572390)

(declare-fun b!5468756 () Bool)

(assert (=> b!5468756 true))

(assert (=> b!5468756 true))

(declare-fun lambda!290845 () Int)

(declare-fun lambda!290844 () Int)

(assert (=> b!5468756 (not (= lambda!290845 lambda!290844))))

(assert (=> b!5468756 true))

(assert (=> b!5468756 true))

(declare-fun lambda!290846 () Int)

(assert (=> b!5468756 (not (= lambda!290846 lambda!290844))))

(assert (=> b!5468756 (not (= lambda!290846 lambda!290845))))

(assert (=> b!5468756 true))

(assert (=> b!5468756 true))

(declare-fun b!5468734 () Bool)

(assert (=> b!5468734 true))

(declare-fun res!2330327 () Bool)

(declare-fun e!3385544 () Bool)

(assert (=> start!572390 (=> (not res!2330327) (not e!3385544))))

(declare-datatypes ((C!30932 0))(
  ( (C!30933 (val!25168 Int)) )
))
(declare-datatypes ((Regex!15331 0))(
  ( (ElementMatch!15331 (c!955379 C!30932)) (Concat!24176 (regOne!31174 Regex!15331) (regTwo!31174 Regex!15331)) (EmptyExpr!15331) (Star!15331 (reg!15660 Regex!15331)) (EmptyLang!15331) (Union!15331 (regOne!31175 Regex!15331) (regTwo!31175 Regex!15331)) )
))
(declare-fun r!7292 () Regex!15331)

(declare-fun validRegex!7067 (Regex!15331) Bool)

(assert (=> start!572390 (= res!2330327 (validRegex!7067 r!7292))))

(assert (=> start!572390 e!3385544))

(declare-fun e!3385547 () Bool)

(assert (=> start!572390 e!3385547))

(declare-fun condSetEmpty!35881 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62292 0))(
  ( (Nil!62168) (Cons!62168 (h!68616 Regex!15331) (t!375521 List!62292)) )
))
(declare-datatypes ((Context!9430 0))(
  ( (Context!9431 (exprs!5215 List!62292)) )
))
(declare-fun z!1189 () (InoxSet Context!9430))

(assert (=> start!572390 (= condSetEmpty!35881 (= z!1189 ((as const (Array Context!9430 Bool)) false)))))

(declare-fun setRes!35881 () Bool)

(assert (=> start!572390 setRes!35881))

(declare-fun e!3385538 () Bool)

(assert (=> start!572390 e!3385538))

(declare-fun e!3385550 () Bool)

(assert (=> start!572390 e!3385550))

(declare-fun b!5468726 () Bool)

(declare-fun e!3385549 () Bool)

(declare-fun lt!2234432 () Bool)

(assert (=> b!5468726 (= e!3385549 lt!2234432)))

(declare-fun b!5468727 () Bool)

(declare-fun tp_is_empty!39915 () Bool)

(declare-fun tp!1504016 () Bool)

(assert (=> b!5468727 (= e!3385550 (and tp_is_empty!39915 tp!1504016))))

(declare-fun b!5468728 () Bool)

(declare-fun res!2330329 () Bool)

(declare-fun e!3385534 () Bool)

(assert (=> b!5468728 (=> res!2330329 e!3385534)))

(declare-fun lt!2234444 () Context!9430)

(declare-datatypes ((List!62293 0))(
  ( (Nil!62169) (Cons!62169 (h!68617 Context!9430) (t!375522 List!62293)) )
))
(declare-fun unfocusZipper!1073 (List!62293) Regex!15331)

(assert (=> b!5468728 (= res!2330329 (not (= (unfocusZipper!1073 (Cons!62169 lt!2234444 Nil!62169)) r!7292)))))

(declare-fun b!5468729 () Bool)

(declare-fun e!3385545 () Bool)

(assert (=> b!5468729 (= e!3385545 e!3385534)))

(declare-fun res!2330338 () Bool)

(assert (=> b!5468729 (=> res!2330338 e!3385534)))

(declare-datatypes ((List!62294 0))(
  ( (Nil!62170) (Cons!62170 (h!68618 C!30932) (t!375523 List!62294)) )
))
(declare-fun s!2326 () List!62294)

(declare-fun lt!2234435 () (InoxSet Context!9430))

(declare-fun lt!2234427 () (InoxSet Context!9430))

(declare-fun derivationStepZipper!1526 ((InoxSet Context!9430) C!30932) (InoxSet Context!9430))

(assert (=> b!5468729 (= res!2330338 (not (= lt!2234427 (derivationStepZipper!1526 lt!2234435 (h!68618 s!2326)))))))

(declare-fun lambda!290847 () Int)

(declare-fun flatMap!1034 ((InoxSet Context!9430) Int) (InoxSet Context!9430))

(declare-fun derivationStepZipperUp!683 (Context!9430 C!30932) (InoxSet Context!9430))

(assert (=> b!5468729 (= (flatMap!1034 lt!2234435 lambda!290847) (derivationStepZipperUp!683 lt!2234444 (h!68618 s!2326)))))

(declare-datatypes ((Unit!155112 0))(
  ( (Unit!155113) )
))
(declare-fun lt!2234437 () Unit!155112)

(declare-fun lemmaFlatMapOnSingletonSet!566 ((InoxSet Context!9430) Context!9430 Int) Unit!155112)

(assert (=> b!5468729 (= lt!2234437 (lemmaFlatMapOnSingletonSet!566 lt!2234435 lt!2234444 lambda!290847))))

(declare-fun lt!2234438 () (InoxSet Context!9430))

(declare-fun lt!2234436 () Context!9430)

(assert (=> b!5468729 (= (flatMap!1034 lt!2234438 lambda!290847) (derivationStepZipperUp!683 lt!2234436 (h!68618 s!2326)))))

(declare-fun lt!2234447 () Unit!155112)

(assert (=> b!5468729 (= lt!2234447 (lemmaFlatMapOnSingletonSet!566 lt!2234438 lt!2234436 lambda!290847))))

(declare-fun lt!2234441 () (InoxSet Context!9430))

(assert (=> b!5468729 (= lt!2234441 (derivationStepZipperUp!683 lt!2234444 (h!68618 s!2326)))))

(declare-fun lt!2234424 () (InoxSet Context!9430))

(assert (=> b!5468729 (= lt!2234424 (derivationStepZipperUp!683 lt!2234436 (h!68618 s!2326)))))

(assert (=> b!5468729 (= lt!2234435 (store ((as const (Array Context!9430 Bool)) false) lt!2234444 true))))

(assert (=> b!5468729 (= lt!2234438 (store ((as const (Array Context!9430 Bool)) false) lt!2234436 true))))

(assert (=> b!5468729 (= lt!2234436 (Context!9431 (Cons!62168 (reg!15660 r!7292) Nil!62168)))))

(declare-fun b!5468730 () Bool)

(declare-fun res!2330330 () Bool)

(declare-fun e!3385543 () Bool)

(assert (=> b!5468730 (=> res!2330330 e!3385543)))

(declare-fun zl!343 () List!62293)

(get-info :version)

(assert (=> b!5468730 (= res!2330330 (not ((_ is Cons!62168) (exprs!5215 (h!68617 zl!343)))))))

(declare-fun b!5468731 () Bool)

(assert (=> b!5468731 (= e!3385534 true)))

(declare-fun e!3385548 () Bool)

(assert (=> b!5468731 e!3385548))

(declare-fun res!2330341 () Bool)

(assert (=> b!5468731 (=> (not res!2330341) (not e!3385548))))

(declare-fun lt!2234425 () Bool)

(declare-fun lt!2234421 () Regex!15331)

(declare-fun matchRSpec!2434 (Regex!15331 List!62294) Bool)

(assert (=> b!5468731 (= res!2330341 (= lt!2234425 (matchRSpec!2434 lt!2234421 s!2326)))))

(declare-fun matchR!7516 (Regex!15331 List!62294) Bool)

(assert (=> b!5468731 (= lt!2234425 (matchR!7516 lt!2234421 s!2326))))

(declare-fun lt!2234422 () Unit!155112)

(declare-fun mainMatchTheorem!2434 (Regex!15331 List!62294) Unit!155112)

(assert (=> b!5468731 (= lt!2234422 (mainMatchTheorem!2434 lt!2234421 s!2326))))

(declare-fun setElem!35881 () Context!9430)

(declare-fun e!3385537 () Bool)

(declare-fun setNonEmpty!35881 () Bool)

(declare-fun tp!1504008 () Bool)

(declare-fun inv!81574 (Context!9430) Bool)

(assert (=> setNonEmpty!35881 (= setRes!35881 (and tp!1504008 (inv!81574 setElem!35881) e!3385537))))

(declare-fun setRest!35881 () (InoxSet Context!9430))

(assert (=> setNonEmpty!35881 (= z!1189 ((_ map or) (store ((as const (Array Context!9430 Bool)) false) setElem!35881 true) setRest!35881))))

(declare-fun b!5468732 () Bool)

(declare-fun e!3385542 () Bool)

(assert (=> b!5468732 (= e!3385542 e!3385545)))

(declare-fun res!2330332 () Bool)

(assert (=> b!5468732 (=> res!2330332 e!3385545)))

(declare-fun lt!2234423 () Context!9430)

(assert (=> b!5468732 (= res!2330332 (not (= (unfocusZipper!1073 (Cons!62169 lt!2234423 Nil!62169)) lt!2234421)))))

(assert (=> b!5468732 (= lt!2234421 (Concat!24176 (reg!15660 r!7292) r!7292))))

(declare-fun setIsEmpty!35881 () Bool)

(assert (=> setIsEmpty!35881 setRes!35881))

(declare-fun b!5468733 () Bool)

(declare-fun e!3385541 () Bool)

(declare-fun Exists!2510 (Int) Bool)

(assert (=> b!5468733 (= e!3385541 (= (Exists!2510 lambda!290844) (Exists!2510 lambda!290845)))))

(declare-fun e!3385539 () Bool)

(declare-fun e!3385536 () Bool)

(assert (=> b!5468734 (= e!3385539 e!3385536)))

(declare-fun res!2330342 () Bool)

(assert (=> b!5468734 (=> res!2330342 e!3385536)))

(declare-fun lt!2234446 () (InoxSet Context!9430))

(assert (=> b!5468734 (= res!2330342 (not (= lt!2234427 lt!2234446)))))

(assert (=> b!5468734 (= (flatMap!1034 z!1189 lambda!290847) (derivationStepZipperUp!683 (h!68617 zl!343) (h!68618 s!2326)))))

(declare-fun lt!2234439 () Unit!155112)

(assert (=> b!5468734 (= lt!2234439 (lemmaFlatMapOnSingletonSet!566 z!1189 (h!68617 zl!343) lambda!290847))))

(declare-fun b!5468735 () Bool)

(declare-fun res!2330335 () Bool)

(assert (=> b!5468735 (=> res!2330335 e!3385534)))

(assert (=> b!5468735 (= res!2330335 (not (= (unfocusZipper!1073 (Cons!62169 lt!2234436 Nil!62169)) (reg!15660 r!7292))))))

(declare-fun b!5468736 () Bool)

(declare-fun res!2330339 () Bool)

(assert (=> b!5468736 (=> res!2330339 e!3385542)))

(declare-fun lt!2234430 () (InoxSet Context!9430))

(declare-fun matchZipper!1549 ((InoxSet Context!9430) List!62294) Bool)

(assert (=> b!5468736 (= res!2330339 (not (= (matchZipper!1549 lt!2234430 s!2326) (matchZipper!1549 (derivationStepZipper!1526 lt!2234430 (h!68618 s!2326)) (t!375523 s!2326)))))))

(declare-fun b!5468737 () Bool)

(declare-fun tp!1504015 () Bool)

(declare-fun tp!1504013 () Bool)

(assert (=> b!5468737 (= e!3385547 (and tp!1504015 tp!1504013))))

(declare-fun b!5468738 () Bool)

(declare-fun res!2330333 () Bool)

(assert (=> b!5468738 (=> (not res!2330333) (not e!3385544))))

(declare-fun toList!9115 ((InoxSet Context!9430)) List!62293)

(assert (=> b!5468738 (= res!2330333 (= (toList!9115 z!1189) zl!343))))

(declare-fun b!5468739 () Bool)

(declare-fun res!2330340 () Bool)

(assert (=> b!5468739 (=> res!2330340 e!3385542)))

(declare-fun lt!2234445 () Regex!15331)

(assert (=> b!5468739 (= res!2330340 (or (not (= lt!2234445 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5468740 () Bool)

(assert (=> b!5468740 (= e!3385547 tp_is_empty!39915)))

(declare-fun b!5468741 () Bool)

(declare-fun res!2330326 () Bool)

(assert (=> b!5468741 (=> res!2330326 e!3385543)))

(declare-fun generalisedConcat!1000 (List!62292) Regex!15331)

(assert (=> b!5468741 (= res!2330326 (not (= r!7292 (generalisedConcat!1000 (exprs!5215 (h!68617 zl!343))))))))

(declare-fun b!5468742 () Bool)

(declare-fun e!3385546 () Bool)

(assert (=> b!5468742 (= e!3385546 e!3385539)))

(declare-fun res!2330337 () Bool)

(assert (=> b!5468742 (=> res!2330337 e!3385539)))

(declare-fun lt!2234426 () (InoxSet Context!9430))

(assert (=> b!5468742 (= res!2330337 (not (= lt!2234426 lt!2234446)))))

(declare-fun derivationStepZipperDown!757 (Regex!15331 Context!9430 C!30932) (InoxSet Context!9430))

(assert (=> b!5468742 (= lt!2234446 (derivationStepZipperDown!757 r!7292 (Context!9431 Nil!62168) (h!68618 s!2326)))))

(assert (=> b!5468742 (= lt!2234426 (derivationStepZipperUp!683 (Context!9431 (Cons!62168 r!7292 Nil!62168)) (h!68618 s!2326)))))

(assert (=> b!5468742 (= lt!2234427 (derivationStepZipper!1526 z!1189 (h!68618 s!2326)))))

(declare-fun b!5468743 () Bool)

(assert (=> b!5468743 (= e!3385548 e!3385541)))

(declare-fun res!2330344 () Bool)

(assert (=> b!5468743 (=> res!2330344 e!3385541)))

(assert (=> b!5468743 (= res!2330344 (not lt!2234425))))

(declare-fun b!5468744 () Bool)

(declare-fun e!3385535 () Bool)

(declare-fun tp!1504010 () Bool)

(assert (=> b!5468744 (= e!3385535 tp!1504010)))

(declare-fun b!5468745 () Bool)

(declare-fun tp!1504014 () Bool)

(assert (=> b!5468745 (= e!3385537 tp!1504014)))

(declare-fun tp!1504009 () Bool)

(declare-fun b!5468746 () Bool)

(assert (=> b!5468746 (= e!3385538 (and (inv!81574 (h!68617 zl!343)) e!3385535 tp!1504009))))

(declare-fun b!5468747 () Bool)

(assert (=> b!5468747 (= e!3385536 e!3385542)))

(declare-fun res!2330343 () Bool)

(assert (=> b!5468747 (=> res!2330343 e!3385542)))

(assert (=> b!5468747 (= res!2330343 (not (= lt!2234427 (derivationStepZipperDown!757 (reg!15660 r!7292) lt!2234444 (h!68618 s!2326)))))))

(declare-fun lt!2234433 () List!62292)

(assert (=> b!5468747 (= lt!2234444 (Context!9431 lt!2234433))))

(assert (=> b!5468747 (= (flatMap!1034 lt!2234430 lambda!290847) (derivationStepZipperUp!683 lt!2234423 (h!68618 s!2326)))))

(declare-fun lt!2234442 () Unit!155112)

(assert (=> b!5468747 (= lt!2234442 (lemmaFlatMapOnSingletonSet!566 lt!2234430 lt!2234423 lambda!290847))))

(declare-fun lt!2234428 () (InoxSet Context!9430))

(assert (=> b!5468747 (= lt!2234428 (derivationStepZipperUp!683 lt!2234423 (h!68618 s!2326)))))

(assert (=> b!5468747 (= lt!2234430 (store ((as const (Array Context!9430 Bool)) false) lt!2234423 true))))

(assert (=> b!5468747 (= lt!2234423 (Context!9431 (Cons!62168 (reg!15660 r!7292) lt!2234433)))))

(assert (=> b!5468747 (= lt!2234433 (Cons!62168 r!7292 Nil!62168))))

(declare-fun b!5468748 () Bool)

(declare-fun e!3385540 () Bool)

(assert (=> b!5468748 (= e!3385544 e!3385540)))

(declare-fun res!2330346 () Bool)

(assert (=> b!5468748 (=> (not res!2330346) (not e!3385540))))

(assert (=> b!5468748 (= res!2330346 (= r!7292 lt!2234445))))

(assert (=> b!5468748 (= lt!2234445 (unfocusZipper!1073 zl!343))))

(declare-fun b!5468749 () Bool)

(assert (=> b!5468749 (= e!3385540 (not e!3385543))))

(declare-fun res!2330334 () Bool)

(assert (=> b!5468749 (=> res!2330334 e!3385543)))

(assert (=> b!5468749 (= res!2330334 (not ((_ is Cons!62169) zl!343)))))

(declare-fun lt!2234443 () Bool)

(assert (=> b!5468749 (= lt!2234443 (matchRSpec!2434 r!7292 s!2326))))

(assert (=> b!5468749 (= lt!2234443 (matchR!7516 r!7292 s!2326))))

(declare-fun lt!2234429 () Unit!155112)

(assert (=> b!5468749 (= lt!2234429 (mainMatchTheorem!2434 r!7292 s!2326))))

(declare-fun b!5468750 () Bool)

(declare-fun tp!1504017 () Bool)

(declare-fun tp!1504012 () Bool)

(assert (=> b!5468750 (= e!3385547 (and tp!1504017 tp!1504012))))

(declare-fun b!5468751 () Bool)

(declare-fun tp!1504011 () Bool)

(assert (=> b!5468751 (= e!3385547 tp!1504011)))

(declare-fun b!5468752 () Bool)

(declare-fun res!2330336 () Bool)

(assert (=> b!5468752 (=> res!2330336 e!3385543)))

(assert (=> b!5468752 (= res!2330336 (or ((_ is EmptyExpr!15331) r!7292) ((_ is EmptyLang!15331) r!7292) ((_ is ElementMatch!15331) r!7292) ((_ is Union!15331) r!7292) ((_ is Concat!24176) r!7292)))))

(declare-fun b!5468753 () Bool)

(declare-fun res!2330328 () Bool)

(assert (=> b!5468753 (=> res!2330328 e!3385546)))

(assert (=> b!5468753 (= res!2330328 ((_ is Nil!62170) s!2326))))

(declare-fun b!5468754 () Bool)

(declare-fun res!2330345 () Bool)

(assert (=> b!5468754 (=> res!2330345 e!3385543)))

(declare-fun generalisedUnion!1260 (List!62292) Regex!15331)

(declare-fun unfocusZipperList!773 (List!62293) List!62292)

(assert (=> b!5468754 (= res!2330345 (not (= r!7292 (generalisedUnion!1260 (unfocusZipperList!773 zl!343)))))))

(declare-fun b!5468755 () Bool)

(declare-fun res!2330324 () Bool)

(assert (=> b!5468755 (=> res!2330324 e!3385543)))

(declare-fun isEmpty!34126 (List!62293) Bool)

(assert (=> b!5468755 (= res!2330324 (not (isEmpty!34126 (t!375522 zl!343))))))

(assert (=> b!5468756 (= e!3385543 e!3385546)))

(declare-fun res!2330325 () Bool)

(assert (=> b!5468756 (=> res!2330325 e!3385546)))

(assert (=> b!5468756 (= res!2330325 (not (= lt!2234443 e!3385549)))))

(declare-fun res!2330331 () Bool)

(assert (=> b!5468756 (=> res!2330331 e!3385549)))

(declare-fun isEmpty!34127 (List!62294) Bool)

(assert (=> b!5468756 (= res!2330331 (isEmpty!34127 s!2326))))

(assert (=> b!5468756 (= (Exists!2510 lambda!290844) (Exists!2510 lambda!290846))))

(declare-fun lt!2234440 () Unit!155112)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1160 (Regex!15331 Regex!15331 List!62294) Unit!155112)

(assert (=> b!5468756 (= lt!2234440 (lemmaExistCutMatchRandMatchRSpecEquivalent!1160 (reg!15660 r!7292) r!7292 s!2326))))

(assert (=> b!5468756 (= (Exists!2510 lambda!290844) (Exists!2510 lambda!290845))))

(declare-fun lt!2234431 () Unit!155112)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!484 (Regex!15331 List!62294) Unit!155112)

(assert (=> b!5468756 (= lt!2234431 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!484 (reg!15660 r!7292) s!2326))))

(assert (=> b!5468756 (= lt!2234432 (Exists!2510 lambda!290844))))

(declare-datatypes ((tuple2!65056 0))(
  ( (tuple2!65057 (_1!35831 List!62294) (_2!35831 List!62294)) )
))
(declare-datatypes ((Option!15440 0))(
  ( (None!15439) (Some!15439 (v!51468 tuple2!65056)) )
))
(declare-fun isDefined!12143 (Option!15440) Bool)

(declare-fun findConcatSeparation!1854 (Regex!15331 Regex!15331 List!62294 List!62294 List!62294) Option!15440)

(assert (=> b!5468756 (= lt!2234432 (isDefined!12143 (findConcatSeparation!1854 (reg!15660 r!7292) r!7292 Nil!62170 s!2326 s!2326)))))

(declare-fun lt!2234434 () Unit!155112)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1618 (Regex!15331 Regex!15331 List!62294) Unit!155112)

(assert (=> b!5468756 (= lt!2234434 (lemmaFindConcatSeparationEquivalentToExists!1618 (reg!15660 r!7292) r!7292 s!2326))))

(assert (= (and start!572390 res!2330327) b!5468738))

(assert (= (and b!5468738 res!2330333) b!5468748))

(assert (= (and b!5468748 res!2330346) b!5468749))

(assert (= (and b!5468749 (not res!2330334)) b!5468755))

(assert (= (and b!5468755 (not res!2330324)) b!5468741))

(assert (= (and b!5468741 (not res!2330326)) b!5468730))

(assert (= (and b!5468730 (not res!2330330)) b!5468754))

(assert (= (and b!5468754 (not res!2330345)) b!5468752))

(assert (= (and b!5468752 (not res!2330336)) b!5468756))

(assert (= (and b!5468756 (not res!2330331)) b!5468726))

(assert (= (and b!5468756 (not res!2330325)) b!5468753))

(assert (= (and b!5468753 (not res!2330328)) b!5468742))

(assert (= (and b!5468742 (not res!2330337)) b!5468734))

(assert (= (and b!5468734 (not res!2330342)) b!5468747))

(assert (= (and b!5468747 (not res!2330343)) b!5468736))

(assert (= (and b!5468736 (not res!2330339)) b!5468739))

(assert (= (and b!5468739 (not res!2330340)) b!5468732))

(assert (= (and b!5468732 (not res!2330332)) b!5468729))

(assert (= (and b!5468729 (not res!2330338)) b!5468735))

(assert (= (and b!5468735 (not res!2330335)) b!5468728))

(assert (= (and b!5468728 (not res!2330329)) b!5468731))

(assert (= (and b!5468731 res!2330341) b!5468743))

(assert (= (and b!5468743 (not res!2330344)) b!5468733))

(assert (= (and start!572390 ((_ is ElementMatch!15331) r!7292)) b!5468740))

(assert (= (and start!572390 ((_ is Concat!24176) r!7292)) b!5468737))

(assert (= (and start!572390 ((_ is Star!15331) r!7292)) b!5468751))

(assert (= (and start!572390 ((_ is Union!15331) r!7292)) b!5468750))

(assert (= (and start!572390 condSetEmpty!35881) setIsEmpty!35881))

(assert (= (and start!572390 (not condSetEmpty!35881)) setNonEmpty!35881))

(assert (= setNonEmpty!35881 b!5468745))

(assert (= b!5468746 b!5468744))

(assert (= (and start!572390 ((_ is Cons!62169) zl!343)) b!5468746))

(assert (= (and start!572390 ((_ is Cons!62170) s!2326)) b!5468727))

(declare-fun m!6487488 () Bool)

(assert (=> b!5468742 m!6487488))

(declare-fun m!6487490 () Bool)

(assert (=> b!5468742 m!6487490))

(declare-fun m!6487492 () Bool)

(assert (=> b!5468742 m!6487492))

(declare-fun m!6487494 () Bool)

(assert (=> b!5468749 m!6487494))

(declare-fun m!6487496 () Bool)

(assert (=> b!5468749 m!6487496))

(declare-fun m!6487498 () Bool)

(assert (=> b!5468749 m!6487498))

(declare-fun m!6487500 () Bool)

(assert (=> b!5468741 m!6487500))

(declare-fun m!6487502 () Bool)

(assert (=> b!5468747 m!6487502))

(declare-fun m!6487504 () Bool)

(assert (=> b!5468747 m!6487504))

(declare-fun m!6487506 () Bool)

(assert (=> b!5468747 m!6487506))

(declare-fun m!6487508 () Bool)

(assert (=> b!5468747 m!6487508))

(declare-fun m!6487510 () Bool)

(assert (=> b!5468747 m!6487510))

(declare-fun m!6487512 () Bool)

(assert (=> start!572390 m!6487512))

(declare-fun m!6487514 () Bool)

(assert (=> b!5468738 m!6487514))

(declare-fun m!6487516 () Bool)

(assert (=> b!5468736 m!6487516))

(declare-fun m!6487518 () Bool)

(assert (=> b!5468736 m!6487518))

(assert (=> b!5468736 m!6487518))

(declare-fun m!6487520 () Bool)

(assert (=> b!5468736 m!6487520))

(declare-fun m!6487522 () Bool)

(assert (=> b!5468755 m!6487522))

(declare-fun m!6487524 () Bool)

(assert (=> b!5468732 m!6487524))

(declare-fun m!6487526 () Bool)

(assert (=> b!5468748 m!6487526))

(declare-fun m!6487528 () Bool)

(assert (=> b!5468729 m!6487528))

(declare-fun m!6487530 () Bool)

(assert (=> b!5468729 m!6487530))

(declare-fun m!6487532 () Bool)

(assert (=> b!5468729 m!6487532))

(declare-fun m!6487534 () Bool)

(assert (=> b!5468729 m!6487534))

(declare-fun m!6487536 () Bool)

(assert (=> b!5468729 m!6487536))

(declare-fun m!6487538 () Bool)

(assert (=> b!5468729 m!6487538))

(declare-fun m!6487540 () Bool)

(assert (=> b!5468729 m!6487540))

(declare-fun m!6487542 () Bool)

(assert (=> b!5468729 m!6487542))

(declare-fun m!6487544 () Bool)

(assert (=> b!5468729 m!6487544))

(declare-fun m!6487546 () Bool)

(assert (=> setNonEmpty!35881 m!6487546))

(declare-fun m!6487548 () Bool)

(assert (=> b!5468754 m!6487548))

(assert (=> b!5468754 m!6487548))

(declare-fun m!6487550 () Bool)

(assert (=> b!5468754 m!6487550))

(declare-fun m!6487552 () Bool)

(assert (=> b!5468756 m!6487552))

(declare-fun m!6487554 () Bool)

(assert (=> b!5468756 m!6487554))

(declare-fun m!6487556 () Bool)

(assert (=> b!5468756 m!6487556))

(declare-fun m!6487558 () Bool)

(assert (=> b!5468756 m!6487558))

(assert (=> b!5468756 m!6487556))

(declare-fun m!6487560 () Bool)

(assert (=> b!5468756 m!6487560))

(declare-fun m!6487562 () Bool)

(assert (=> b!5468756 m!6487562))

(declare-fun m!6487564 () Bool)

(assert (=> b!5468756 m!6487564))

(declare-fun m!6487566 () Bool)

(assert (=> b!5468756 m!6487566))

(declare-fun m!6487568 () Bool)

(assert (=> b!5468756 m!6487568))

(assert (=> b!5468756 m!6487560))

(assert (=> b!5468756 m!6487556))

(declare-fun m!6487570 () Bool)

(assert (=> b!5468746 m!6487570))

(declare-fun m!6487572 () Bool)

(assert (=> b!5468735 m!6487572))

(declare-fun m!6487574 () Bool)

(assert (=> b!5468728 m!6487574))

(declare-fun m!6487576 () Bool)

(assert (=> b!5468731 m!6487576))

(declare-fun m!6487578 () Bool)

(assert (=> b!5468731 m!6487578))

(declare-fun m!6487580 () Bool)

(assert (=> b!5468731 m!6487580))

(assert (=> b!5468733 m!6487556))

(assert (=> b!5468733 m!6487566))

(declare-fun m!6487582 () Bool)

(assert (=> b!5468734 m!6487582))

(declare-fun m!6487584 () Bool)

(assert (=> b!5468734 m!6487584))

(declare-fun m!6487586 () Bool)

(assert (=> b!5468734 m!6487586))

(check-sat (not b!5468741) (not b!5468735) (not b!5468750) (not b!5468748) (not b!5468737) tp_is_empty!39915 (not b!5468754) (not b!5468751) (not b!5468732) (not b!5468742) (not b!5468738) (not b!5468755) (not b!5468745) (not setNonEmpty!35881) (not b!5468744) (not b!5468756) (not b!5468733) (not start!572390) (not b!5468728) (not b!5468734) (not b!5468727) (not b!5468747) (not b!5468746) (not b!5468736) (not b!5468731) (not b!5468729) (not b!5468749))
(check-sat)
