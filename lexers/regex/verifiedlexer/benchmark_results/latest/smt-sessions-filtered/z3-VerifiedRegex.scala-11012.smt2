; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570866 () Bool)

(assert start!570866)

(declare-fun b!5444436 () Bool)

(assert (=> b!5444436 true))

(assert (=> b!5444436 true))

(declare-fun lambda!286632 () Int)

(declare-fun lambda!286631 () Int)

(assert (=> b!5444436 (not (= lambda!286632 lambda!286631))))

(assert (=> b!5444436 true))

(assert (=> b!5444436 true))

(declare-fun b!5444434 () Bool)

(assert (=> b!5444434 true))

(declare-fun b!5444423 () Bool)

(declare-fun res!2318021 () Bool)

(declare-fun e!3372396 () Bool)

(assert (=> b!5444423 (=> res!2318021 e!3372396)))

(declare-datatypes ((C!30812 0))(
  ( (C!30813 (val!25108 Int)) )
))
(declare-datatypes ((Regex!15271 0))(
  ( (ElementMatch!15271 (c!950135 C!30812)) (Concat!24116 (regOne!31054 Regex!15271) (regTwo!31054 Regex!15271)) (EmptyExpr!15271) (Star!15271 (reg!15600 Regex!15271)) (EmptyLang!15271) (Union!15271 (regOne!31055 Regex!15271) (regTwo!31055 Regex!15271)) )
))
(declare-datatypes ((List!62112 0))(
  ( (Nil!61988) (Cons!61988 (h!68436 Regex!15271) (t!375339 List!62112)) )
))
(declare-datatypes ((Context!9310 0))(
  ( (Context!9311 (exprs!5155 List!62112)) )
))
(declare-datatypes ((List!62113 0))(
  ( (Nil!61989) (Cons!61989 (h!68437 Context!9310) (t!375340 List!62113)) )
))
(declare-fun zl!343 () List!62113)

(declare-fun isEmpty!33970 (List!62112) Bool)

(assert (=> b!5444423 (= res!2318021 (isEmpty!33970 (t!375339 (exprs!5155 (h!68437 zl!343)))))))

(declare-fun b!5444424 () Bool)

(declare-fun e!3372397 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2219788 () (InoxSet Context!9310))

(declare-datatypes ((List!62114 0))(
  ( (Nil!61990) (Cons!61990 (h!68438 C!30812) (t!375341 List!62114)) )
))
(declare-fun s!2326 () List!62114)

(declare-fun matchZipper!1515 ((InoxSet Context!9310) List!62114) Bool)

(assert (=> b!5444424 (= e!3372397 (matchZipper!1515 lt!2219788 (t!375341 s!2326)))))

(declare-fun b!5444425 () Bool)

(declare-fun e!3372398 () Bool)

(assert (=> b!5444425 (= e!3372398 true)))

(declare-fun r!7292 () Regex!15271)

(declare-fun matchR!7456 (Regex!15271 List!62114) Bool)

(declare-fun matchRSpec!2374 (Regex!15271 List!62114) Bool)

(assert (=> b!5444425 (= (matchR!7456 (regOne!31054 r!7292) s!2326) (matchRSpec!2374 (regOne!31054 r!7292) s!2326))))

(declare-datatypes ((Unit!154626 0))(
  ( (Unit!154627) )
))
(declare-fun lt!2219797 () Unit!154626)

(declare-fun mainMatchTheorem!2374 (Regex!15271 List!62114) Unit!154626)

(assert (=> b!5444425 (= lt!2219797 (mainMatchTheorem!2374 (regOne!31054 r!7292) s!2326))))

(declare-fun b!5444426 () Bool)

(declare-fun res!2318020 () Bool)

(declare-fun e!3372392 () Bool)

(assert (=> b!5444426 (=> res!2318020 e!3372392)))

(declare-fun generalisedConcat!940 (List!62112) Regex!15271)

(assert (=> b!5444426 (= res!2318020 (not (= r!7292 (generalisedConcat!940 (exprs!5155 (h!68437 zl!343))))))))

(declare-fun setIsEmpty!35623 () Bool)

(declare-fun setRes!35623 () Bool)

(assert (=> setIsEmpty!35623 setRes!35623))

(declare-fun b!5444427 () Bool)

(declare-fun res!2318023 () Bool)

(declare-fun e!3372395 () Bool)

(assert (=> b!5444427 (=> (not res!2318023) (not e!3372395))))

(declare-fun unfocusZipper!1013 (List!62113) Regex!15271)

(assert (=> b!5444427 (= res!2318023 (= r!7292 (unfocusZipper!1013 zl!343)))))

(declare-fun b!5444428 () Bool)

(declare-fun e!3372400 () Bool)

(declare-fun tp!1500815 () Bool)

(declare-fun tp!1500820 () Bool)

(assert (=> b!5444428 (= e!3372400 (and tp!1500815 tp!1500820))))

(declare-fun b!5444429 () Bool)

(declare-fun res!2318027 () Bool)

(assert (=> b!5444429 (=> res!2318027 e!3372392)))

(get-info :version)

(assert (=> b!5444429 (= res!2318027 (not ((_ is Cons!61988) (exprs!5155 (h!68437 zl!343)))))))

(declare-fun b!5444430 () Bool)

(declare-fun e!3372389 () Bool)

(declare-fun tp_is_empty!39795 () Bool)

(declare-fun tp!1500817 () Bool)

(assert (=> b!5444430 (= e!3372389 (and tp_is_empty!39795 tp!1500817))))

(declare-fun b!5444431 () Bool)

(declare-fun res!2318024 () Bool)

(declare-fun e!3372388 () Bool)

(assert (=> b!5444431 (=> res!2318024 e!3372388)))

(assert (=> b!5444431 (= res!2318024 (or ((_ is Concat!24116) (regOne!31054 r!7292)) ((_ is Star!15271) (regOne!31054 r!7292)) ((_ is EmptyExpr!15271) (regOne!31054 r!7292))))))

(declare-fun b!5444432 () Bool)

(declare-fun res!2318022 () Bool)

(assert (=> b!5444432 (=> res!2318022 e!3372392)))

(assert (=> b!5444432 (= res!2318022 (or ((_ is EmptyExpr!15271) r!7292) ((_ is EmptyLang!15271) r!7292) ((_ is ElementMatch!15271) r!7292) ((_ is Union!15271) r!7292) (not ((_ is Concat!24116) r!7292))))))

(declare-fun b!5444433 () Bool)

(declare-fun tp!1500821 () Bool)

(declare-fun tp!1500816 () Bool)

(assert (=> b!5444433 (= e!3372400 (and tp!1500821 tp!1500816))))

(assert (=> b!5444434 (= e!3372396 e!3372388)))

(declare-fun res!2318030 () Bool)

(assert (=> b!5444434 (=> res!2318030 e!3372388)))

(assert (=> b!5444434 (= res!2318030 (or (and ((_ is ElementMatch!15271) (regOne!31054 r!7292)) (= (c!950135 (regOne!31054 r!7292)) (h!68438 s!2326))) ((_ is Union!15271) (regOne!31054 r!7292))))))

(declare-fun lt!2219792 () Unit!154626)

(declare-fun e!3372399 () Unit!154626)

(assert (=> b!5444434 (= lt!2219792 e!3372399)))

(declare-fun c!950134 () Bool)

(declare-fun nullable!5440 (Regex!15271) Bool)

(assert (=> b!5444434 (= c!950134 (nullable!5440 (h!68436 (exprs!5155 (h!68437 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9310))

(declare-fun lambda!286633 () Int)

(declare-fun flatMap!998 ((InoxSet Context!9310) Int) (InoxSet Context!9310))

(declare-fun derivationStepZipperUp!643 (Context!9310 C!30812) (InoxSet Context!9310))

(assert (=> b!5444434 (= (flatMap!998 z!1189 lambda!286633) (derivationStepZipperUp!643 (h!68437 zl!343) (h!68438 s!2326)))))

(declare-fun lt!2219793 () Unit!154626)

(declare-fun lemmaFlatMapOnSingletonSet!530 ((InoxSet Context!9310) Context!9310 Int) Unit!154626)

(assert (=> b!5444434 (= lt!2219793 (lemmaFlatMapOnSingletonSet!530 z!1189 (h!68437 zl!343) lambda!286633))))

(declare-fun lt!2219794 () Context!9310)

(assert (=> b!5444434 (= lt!2219788 (derivationStepZipperUp!643 lt!2219794 (h!68438 s!2326)))))

(declare-fun lt!2219787 () (InoxSet Context!9310))

(declare-fun derivationStepZipperDown!719 (Regex!15271 Context!9310 C!30812) (InoxSet Context!9310))

(assert (=> b!5444434 (= lt!2219787 (derivationStepZipperDown!719 (h!68436 (exprs!5155 (h!68437 zl!343))) lt!2219794 (h!68438 s!2326)))))

(assert (=> b!5444434 (= lt!2219794 (Context!9311 (t!375339 (exprs!5155 (h!68437 zl!343)))))))

(declare-fun lt!2219785 () (InoxSet Context!9310))

(assert (=> b!5444434 (= lt!2219785 (derivationStepZipperUp!643 (Context!9311 (Cons!61988 (h!68436 (exprs!5155 (h!68437 zl!343))) (t!375339 (exprs!5155 (h!68437 zl!343))))) (h!68438 s!2326)))))

(declare-fun b!5444435 () Bool)

(declare-fun e!3372390 () Bool)

(declare-fun tp!1500818 () Bool)

(declare-fun e!3372393 () Bool)

(declare-fun inv!81424 (Context!9310) Bool)

(assert (=> b!5444435 (= e!3372393 (and (inv!81424 (h!68437 zl!343)) e!3372390 tp!1500818))))

(assert (=> b!5444436 (= e!3372392 e!3372396)))

(declare-fun res!2318015 () Bool)

(assert (=> b!5444436 (=> res!2318015 e!3372396)))

(declare-fun lt!2219789 () Bool)

(declare-fun lt!2219795 () Bool)

(assert (=> b!5444436 (= res!2318015 (or (not (= lt!2219789 lt!2219795)) ((_ is Nil!61990) s!2326)))))

(declare-fun Exists!2452 (Int) Bool)

(assert (=> b!5444436 (= (Exists!2452 lambda!286631) (Exists!2452 lambda!286632))))

(declare-fun lt!2219798 () Unit!154626)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1106 (Regex!15271 Regex!15271 List!62114) Unit!154626)

(assert (=> b!5444436 (= lt!2219798 (lemmaExistCutMatchRandMatchRSpecEquivalent!1106 (regOne!31054 r!7292) (regTwo!31054 r!7292) s!2326))))

(assert (=> b!5444436 (= lt!2219795 (Exists!2452 lambda!286631))))

(declare-datatypes ((tuple2!64940 0))(
  ( (tuple2!64941 (_1!35773 List!62114) (_2!35773 List!62114)) )
))
(declare-datatypes ((Option!15382 0))(
  ( (None!15381) (Some!15381 (v!51410 tuple2!64940)) )
))
(declare-fun isDefined!12085 (Option!15382) Bool)

(declare-fun findConcatSeparation!1796 (Regex!15271 Regex!15271 List!62114 List!62114 List!62114) Option!15382)

(assert (=> b!5444436 (= lt!2219795 (isDefined!12085 (findConcatSeparation!1796 (regOne!31054 r!7292) (regTwo!31054 r!7292) Nil!61990 s!2326 s!2326)))))

(declare-fun lt!2219791 () Unit!154626)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1560 (Regex!15271 Regex!15271 List!62114) Unit!154626)

(assert (=> b!5444436 (= lt!2219791 (lemmaFindConcatSeparationEquivalentToExists!1560 (regOne!31054 r!7292) (regTwo!31054 r!7292) s!2326))))

(declare-fun b!5444437 () Bool)

(declare-fun tp!1500814 () Bool)

(assert (=> b!5444437 (= e!3372390 tp!1500814)))

(declare-fun b!5444438 () Bool)

(declare-fun res!2318029 () Bool)

(assert (=> b!5444438 (=> res!2318029 e!3372388)))

(declare-fun e!3372394 () Bool)

(assert (=> b!5444438 (= res!2318029 e!3372394)))

(declare-fun res!2318031 () Bool)

(assert (=> b!5444438 (=> (not res!2318031) (not e!3372394))))

(assert (=> b!5444438 (= res!2318031 ((_ is Concat!24116) (regOne!31054 r!7292)))))

(declare-fun b!5444439 () Bool)

(declare-fun res!2318026 () Bool)

(assert (=> b!5444439 (=> res!2318026 e!3372392)))

(declare-fun isEmpty!33971 (List!62113) Bool)

(assert (=> b!5444439 (= res!2318026 (not (isEmpty!33971 (t!375340 zl!343))))))

(declare-fun b!5444440 () Bool)

(assert (=> b!5444440 (= e!3372394 (nullable!5440 (regOne!31054 (regOne!31054 r!7292))))))

(declare-fun b!5444441 () Bool)

(declare-fun e!3372391 () Bool)

(declare-fun tp!1500819 () Bool)

(assert (=> b!5444441 (= e!3372391 tp!1500819)))

(declare-fun b!5444442 () Bool)

(declare-fun Unit!154628 () Unit!154626)

(assert (=> b!5444442 (= e!3372399 Unit!154628)))

(declare-fun b!5444443 () Bool)

(declare-fun Unit!154629 () Unit!154626)

(assert (=> b!5444443 (= e!3372399 Unit!154629)))

(declare-fun lt!2219790 () Unit!154626)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!508 ((InoxSet Context!9310) (InoxSet Context!9310) List!62114) Unit!154626)

(assert (=> b!5444443 (= lt!2219790 (lemmaZipperConcatMatchesSameAsBothZippers!508 lt!2219787 lt!2219788 (t!375341 s!2326)))))

(declare-fun res!2318025 () Bool)

(assert (=> b!5444443 (= res!2318025 (matchZipper!1515 lt!2219787 (t!375341 s!2326)))))

(assert (=> b!5444443 (=> res!2318025 e!3372397)))

(assert (=> b!5444443 (= (matchZipper!1515 ((_ map or) lt!2219787 lt!2219788) (t!375341 s!2326)) e!3372397)))

(declare-fun res!2318028 () Bool)

(assert (=> start!570866 (=> (not res!2318028) (not e!3372395))))

(declare-fun validRegex!7007 (Regex!15271) Bool)

(assert (=> start!570866 (= res!2318028 (validRegex!7007 r!7292))))

(assert (=> start!570866 e!3372395))

(assert (=> start!570866 e!3372400))

(declare-fun condSetEmpty!35623 () Bool)

(assert (=> start!570866 (= condSetEmpty!35623 (= z!1189 ((as const (Array Context!9310 Bool)) false)))))

(assert (=> start!570866 setRes!35623))

(assert (=> start!570866 e!3372393))

(assert (=> start!570866 e!3372389))

(declare-fun setNonEmpty!35623 () Bool)

(declare-fun setElem!35623 () Context!9310)

(declare-fun tp!1500812 () Bool)

(assert (=> setNonEmpty!35623 (= setRes!35623 (and tp!1500812 (inv!81424 setElem!35623) e!3372391))))

(declare-fun setRest!35623 () (InoxSet Context!9310))

(assert (=> setNonEmpty!35623 (= z!1189 ((_ map or) (store ((as const (Array Context!9310 Bool)) false) setElem!35623 true) setRest!35623))))

(declare-fun b!5444444 () Bool)

(assert (=> b!5444444 (= e!3372395 (not e!3372392))))

(declare-fun res!2318017 () Bool)

(assert (=> b!5444444 (=> res!2318017 e!3372392)))

(assert (=> b!5444444 (= res!2318017 (not ((_ is Cons!61989) zl!343)))))

(assert (=> b!5444444 (= lt!2219789 (matchRSpec!2374 r!7292 s!2326))))

(assert (=> b!5444444 (= lt!2219789 (matchR!7456 r!7292 s!2326))))

(declare-fun lt!2219786 () Unit!154626)

(assert (=> b!5444444 (= lt!2219786 (mainMatchTheorem!2374 r!7292 s!2326))))

(declare-fun b!5444445 () Bool)

(declare-fun tp!1500813 () Bool)

(assert (=> b!5444445 (= e!3372400 tp!1500813)))

(declare-fun b!5444446 () Bool)

(declare-fun res!2318019 () Bool)

(assert (=> b!5444446 (=> (not res!2318019) (not e!3372395))))

(declare-fun toList!9055 ((InoxSet Context!9310)) List!62113)

(assert (=> b!5444446 (= res!2318019 (= (toList!9055 z!1189) zl!343))))

(declare-fun b!5444447 () Bool)

(declare-fun res!2318016 () Bool)

(assert (=> b!5444447 (=> res!2318016 e!3372392)))

(declare-fun generalisedUnion!1200 (List!62112) Regex!15271)

(declare-fun unfocusZipperList!713 (List!62113) List!62112)

(assert (=> b!5444447 (= res!2318016 (not (= r!7292 (generalisedUnion!1200 (unfocusZipperList!713 zl!343)))))))

(declare-fun b!5444448 () Bool)

(assert (=> b!5444448 (= e!3372400 tp_is_empty!39795)))

(declare-fun b!5444449 () Bool)

(assert (=> b!5444449 (= e!3372388 e!3372398)))

(declare-fun res!2318018 () Bool)

(assert (=> b!5444449 (=> res!2318018 e!3372398)))

(assert (=> b!5444449 (= res!2318018 (or (not (= lt!2219787 ((as const (Array Context!9310 Bool)) false))) (not (= r!7292 (Concat!24116 (regOne!31054 r!7292) (regTwo!31054 r!7292))))))))

(assert (=> b!5444449 (not (matchZipper!1515 lt!2219787 (t!375341 s!2326)))))

(declare-fun lt!2219796 () Unit!154626)

(declare-fun lemmaEmptyZipperMatchesNothing!26 ((InoxSet Context!9310) List!62114) Unit!154626)

(assert (=> b!5444449 (= lt!2219796 (lemmaEmptyZipperMatchesNothing!26 lt!2219787 (t!375341 s!2326)))))

(assert (= (and start!570866 res!2318028) b!5444446))

(assert (= (and b!5444446 res!2318019) b!5444427))

(assert (= (and b!5444427 res!2318023) b!5444444))

(assert (= (and b!5444444 (not res!2318017)) b!5444439))

(assert (= (and b!5444439 (not res!2318026)) b!5444426))

(assert (= (and b!5444426 (not res!2318020)) b!5444429))

(assert (= (and b!5444429 (not res!2318027)) b!5444447))

(assert (= (and b!5444447 (not res!2318016)) b!5444432))

(assert (= (and b!5444432 (not res!2318022)) b!5444436))

(assert (= (and b!5444436 (not res!2318015)) b!5444423))

(assert (= (and b!5444423 (not res!2318021)) b!5444434))

(assert (= (and b!5444434 c!950134) b!5444443))

(assert (= (and b!5444434 (not c!950134)) b!5444442))

(assert (= (and b!5444443 (not res!2318025)) b!5444424))

(assert (= (and b!5444434 (not res!2318030)) b!5444438))

(assert (= (and b!5444438 res!2318031) b!5444440))

(assert (= (and b!5444438 (not res!2318029)) b!5444431))

(assert (= (and b!5444431 (not res!2318024)) b!5444449))

(assert (= (and b!5444449 (not res!2318018)) b!5444425))

(assert (= (and start!570866 ((_ is ElementMatch!15271) r!7292)) b!5444448))

(assert (= (and start!570866 ((_ is Concat!24116) r!7292)) b!5444433))

(assert (= (and start!570866 ((_ is Star!15271) r!7292)) b!5444445))

(assert (= (and start!570866 ((_ is Union!15271) r!7292)) b!5444428))

(assert (= (and start!570866 condSetEmpty!35623) setIsEmpty!35623))

(assert (= (and start!570866 (not condSetEmpty!35623)) setNonEmpty!35623))

(assert (= setNonEmpty!35623 b!5444441))

(assert (= b!5444435 b!5444437))

(assert (= (and start!570866 ((_ is Cons!61989) zl!343)) b!5444435))

(assert (= (and start!570866 ((_ is Cons!61990) s!2326)) b!5444430))

(declare-fun m!6464338 () Bool)

(assert (=> start!570866 m!6464338))

(declare-fun m!6464340 () Bool)

(assert (=> b!5444423 m!6464340))

(declare-fun m!6464342 () Bool)

(assert (=> b!5444435 m!6464342))

(declare-fun m!6464344 () Bool)

(assert (=> b!5444425 m!6464344))

(declare-fun m!6464346 () Bool)

(assert (=> b!5444425 m!6464346))

(declare-fun m!6464348 () Bool)

(assert (=> b!5444425 m!6464348))

(declare-fun m!6464350 () Bool)

(assert (=> b!5444427 m!6464350))

(declare-fun m!6464352 () Bool)

(assert (=> b!5444443 m!6464352))

(declare-fun m!6464354 () Bool)

(assert (=> b!5444443 m!6464354))

(declare-fun m!6464356 () Bool)

(assert (=> b!5444443 m!6464356))

(declare-fun m!6464358 () Bool)

(assert (=> b!5444440 m!6464358))

(declare-fun m!6464360 () Bool)

(assert (=> b!5444447 m!6464360))

(assert (=> b!5444447 m!6464360))

(declare-fun m!6464362 () Bool)

(assert (=> b!5444447 m!6464362))

(declare-fun m!6464364 () Bool)

(assert (=> b!5444434 m!6464364))

(declare-fun m!6464366 () Bool)

(assert (=> b!5444434 m!6464366))

(declare-fun m!6464368 () Bool)

(assert (=> b!5444434 m!6464368))

(declare-fun m!6464370 () Bool)

(assert (=> b!5444434 m!6464370))

(declare-fun m!6464372 () Bool)

(assert (=> b!5444434 m!6464372))

(declare-fun m!6464374 () Bool)

(assert (=> b!5444434 m!6464374))

(declare-fun m!6464376 () Bool)

(assert (=> b!5444434 m!6464376))

(declare-fun m!6464378 () Bool)

(assert (=> b!5444439 m!6464378))

(declare-fun m!6464380 () Bool)

(assert (=> b!5444424 m!6464380))

(declare-fun m!6464382 () Bool)

(assert (=> b!5444446 m!6464382))

(declare-fun m!6464384 () Bool)

(assert (=> setNonEmpty!35623 m!6464384))

(assert (=> b!5444449 m!6464354))

(declare-fun m!6464386 () Bool)

(assert (=> b!5444449 m!6464386))

(declare-fun m!6464388 () Bool)

(assert (=> b!5444436 m!6464388))

(declare-fun m!6464390 () Bool)

(assert (=> b!5444436 m!6464390))

(declare-fun m!6464392 () Bool)

(assert (=> b!5444436 m!6464392))

(declare-fun m!6464394 () Bool)

(assert (=> b!5444436 m!6464394))

(assert (=> b!5444436 m!6464390))

(declare-fun m!6464396 () Bool)

(assert (=> b!5444436 m!6464396))

(assert (=> b!5444436 m!6464392))

(declare-fun m!6464398 () Bool)

(assert (=> b!5444436 m!6464398))

(declare-fun m!6464400 () Bool)

(assert (=> b!5444444 m!6464400))

(declare-fun m!6464402 () Bool)

(assert (=> b!5444444 m!6464402))

(declare-fun m!6464404 () Bool)

(assert (=> b!5444444 m!6464404))

(declare-fun m!6464406 () Bool)

(assert (=> b!5444426 m!6464406))

(check-sat (not b!5444434) (not b!5444436) (not b!5444427) (not b!5444440) (not b!5444443) (not b!5444424) (not b!5444430) (not b!5444444) (not b!5444445) (not b!5444423) (not b!5444433) (not b!5444425) (not start!570866) (not b!5444428) (not b!5444446) (not b!5444435) (not b!5444447) (not b!5444437) (not b!5444449) tp_is_empty!39795 (not b!5444439) (not b!5444426) (not b!5444441) (not setNonEmpty!35623))
(check-sat)
