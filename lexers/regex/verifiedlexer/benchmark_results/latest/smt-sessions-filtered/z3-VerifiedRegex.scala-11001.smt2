; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570282 () Bool)

(assert start!570282)

(declare-fun b!5437574 () Bool)

(assert (=> b!5437574 true))

(assert (=> b!5437574 true))

(declare-fun lambda!285998 () Int)

(declare-fun lambda!285997 () Int)

(assert (=> b!5437574 (not (= lambda!285998 lambda!285997))))

(assert (=> b!5437574 true))

(assert (=> b!5437574 true))

(declare-fun b!5437570 () Bool)

(assert (=> b!5437570 true))

(declare-fun b!5437568 () Bool)

(declare-fun res!2314975 () Bool)

(declare-fun e!3368720 () Bool)

(assert (=> b!5437568 (=> res!2314975 e!3368720)))

(declare-datatypes ((C!30768 0))(
  ( (C!30769 (val!25086 Int)) )
))
(declare-datatypes ((Regex!15249 0))(
  ( (ElementMatch!15249 (c!948777 C!30768)) (Concat!24094 (regOne!31010 Regex!15249) (regTwo!31010 Regex!15249)) (EmptyExpr!15249) (Star!15249 (reg!15578 Regex!15249)) (EmptyLang!15249) (Union!15249 (regOne!31011 Regex!15249) (regTwo!31011 Regex!15249)) )
))
(declare-fun r!7292 () Regex!15249)

(declare-datatypes ((List!62046 0))(
  ( (Nil!61922) (Cons!61922 (h!68370 Regex!15249) (t!375271 List!62046)) )
))
(declare-datatypes ((Context!9266 0))(
  ( (Context!9267 (exprs!5133 List!62046)) )
))
(declare-datatypes ((List!62047 0))(
  ( (Nil!61923) (Cons!61923 (h!68371 Context!9266) (t!375272 List!62047)) )
))
(declare-fun zl!343 () List!62047)

(declare-fun generalisedConcat!918 (List!62046) Regex!15249)

(assert (=> b!5437568 (= res!2314975 (not (= r!7292 (generalisedConcat!918 (exprs!5133 (h!68371 zl!343))))))))

(declare-fun b!5437569 () Bool)

(declare-fun e!3368714 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2218109 () (InoxSet Context!9266))

(declare-datatypes ((List!62048 0))(
  ( (Nil!61924) (Cons!61924 (h!68372 C!30768) (t!375273 List!62048)) )
))
(declare-fun s!2326 () List!62048)

(declare-fun matchZipper!1493 ((InoxSet Context!9266) List!62048) Bool)

(assert (=> b!5437569 (= e!3368714 (matchZipper!1493 lt!2218109 (t!375273 s!2326)))))

(declare-fun e!3368711 () Bool)

(declare-fun e!3368712 () Bool)

(assert (=> b!5437570 (= e!3368711 e!3368712)))

(declare-fun res!2314962 () Bool)

(assert (=> b!5437570 (=> res!2314962 e!3368712)))

(get-info :version)

(assert (=> b!5437570 (= res!2314962 (or (and ((_ is ElementMatch!15249) (regOne!31010 r!7292)) (= (c!948777 (regOne!31010 r!7292)) (h!68372 s!2326))) ((_ is Union!15249) (regOne!31010 r!7292))))))

(declare-datatypes ((Unit!154538 0))(
  ( (Unit!154539) )
))
(declare-fun lt!2218117 () Unit!154538)

(declare-fun e!3368718 () Unit!154538)

(assert (=> b!5437570 (= lt!2218117 e!3368718)))

(declare-fun c!948776 () Bool)

(declare-fun nullable!5418 (Regex!15249) Bool)

(assert (=> b!5437570 (= c!948776 (nullable!5418 (h!68370 (exprs!5133 (h!68371 zl!343)))))))

(declare-fun lambda!285999 () Int)

(declare-fun z!1189 () (InoxSet Context!9266))

(declare-fun flatMap!976 ((InoxSet Context!9266) Int) (InoxSet Context!9266))

(declare-fun derivationStepZipperUp!621 (Context!9266 C!30768) (InoxSet Context!9266))

(assert (=> b!5437570 (= (flatMap!976 z!1189 lambda!285999) (derivationStepZipperUp!621 (h!68371 zl!343) (h!68372 s!2326)))))

(declare-fun lt!2218106 () Unit!154538)

(declare-fun lemmaFlatMapOnSingletonSet!508 ((InoxSet Context!9266) Context!9266 Int) Unit!154538)

(assert (=> b!5437570 (= lt!2218106 (lemmaFlatMapOnSingletonSet!508 z!1189 (h!68371 zl!343) lambda!285999))))

(declare-fun lt!2218108 () Context!9266)

(assert (=> b!5437570 (= lt!2218109 (derivationStepZipperUp!621 lt!2218108 (h!68372 s!2326)))))

(declare-fun lt!2218116 () (InoxSet Context!9266))

(declare-fun derivationStepZipperDown!697 (Regex!15249 Context!9266 C!30768) (InoxSet Context!9266))

(assert (=> b!5437570 (= lt!2218116 (derivationStepZipperDown!697 (h!68370 (exprs!5133 (h!68371 zl!343))) lt!2218108 (h!68372 s!2326)))))

(assert (=> b!5437570 (= lt!2218108 (Context!9267 (t!375271 (exprs!5133 (h!68371 zl!343)))))))

(declare-fun lt!2218107 () (InoxSet Context!9266))

(assert (=> b!5437570 (= lt!2218107 (derivationStepZipperUp!621 (Context!9267 (Cons!61922 (h!68370 (exprs!5133 (h!68371 zl!343))) (t!375271 (exprs!5133 (h!68371 zl!343))))) (h!68372 s!2326)))))

(declare-fun res!2314976 () Bool)

(declare-fun e!3368721 () Bool)

(assert (=> start!570282 (=> (not res!2314976) (not e!3368721))))

(declare-fun validRegex!6985 (Regex!15249) Bool)

(assert (=> start!570282 (= res!2314976 (validRegex!6985 r!7292))))

(assert (=> start!570282 e!3368721))

(declare-fun e!3368722 () Bool)

(assert (=> start!570282 e!3368722))

(declare-fun condSetEmpty!35523 () Bool)

(assert (=> start!570282 (= condSetEmpty!35523 (= z!1189 ((as const (Array Context!9266 Bool)) false)))))

(declare-fun setRes!35523 () Bool)

(assert (=> start!570282 setRes!35523))

(declare-fun e!3368713 () Bool)

(assert (=> start!570282 e!3368713))

(declare-fun e!3368719 () Bool)

(assert (=> start!570282 e!3368719))

(declare-fun b!5437571 () Bool)

(declare-fun e!3368717 () Bool)

(declare-fun tp!1499371 () Bool)

(declare-fun inv!81369 (Context!9266) Bool)

(assert (=> b!5437571 (= e!3368713 (and (inv!81369 (h!68371 zl!343)) e!3368717 tp!1499371))))

(declare-fun b!5437572 () Bool)

(assert (=> b!5437572 (= e!3368721 (not e!3368720))))

(declare-fun res!2314967 () Bool)

(assert (=> b!5437572 (=> res!2314967 e!3368720)))

(assert (=> b!5437572 (= res!2314967 (not ((_ is Cons!61923) zl!343)))))

(declare-fun lt!2218118 () Bool)

(declare-fun matchRSpec!2352 (Regex!15249 List!62048) Bool)

(assert (=> b!5437572 (= lt!2218118 (matchRSpec!2352 r!7292 s!2326))))

(declare-fun matchR!7434 (Regex!15249 List!62048) Bool)

(assert (=> b!5437572 (= lt!2218118 (matchR!7434 r!7292 s!2326))))

(declare-fun lt!2218113 () Unit!154538)

(declare-fun mainMatchTheorem!2352 (Regex!15249 List!62048) Unit!154538)

(assert (=> b!5437572 (= lt!2218113 (mainMatchTheorem!2352 r!7292 s!2326))))

(declare-fun b!5437573 () Bool)

(declare-fun tp!1499366 () Bool)

(declare-fun tp!1499372 () Bool)

(assert (=> b!5437573 (= e!3368722 (and tp!1499366 tp!1499372))))

(assert (=> b!5437574 (= e!3368720 e!3368711)))

(declare-fun res!2314971 () Bool)

(assert (=> b!5437574 (=> res!2314971 e!3368711)))

(declare-fun lt!2218115 () Bool)

(assert (=> b!5437574 (= res!2314971 (or (not (= lt!2218118 lt!2218115)) ((_ is Nil!61924) s!2326)))))

(declare-fun Exists!2430 (Int) Bool)

(assert (=> b!5437574 (= (Exists!2430 lambda!285997) (Exists!2430 lambda!285998))))

(declare-fun lt!2218111 () Unit!154538)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1084 (Regex!15249 Regex!15249 List!62048) Unit!154538)

(assert (=> b!5437574 (= lt!2218111 (lemmaExistCutMatchRandMatchRSpecEquivalent!1084 (regOne!31010 r!7292) (regTwo!31010 r!7292) s!2326))))

(assert (=> b!5437574 (= lt!2218115 (Exists!2430 lambda!285997))))

(declare-datatypes ((tuple2!64896 0))(
  ( (tuple2!64897 (_1!35751 List!62048) (_2!35751 List!62048)) )
))
(declare-datatypes ((Option!15360 0))(
  ( (None!15359) (Some!15359 (v!51388 tuple2!64896)) )
))
(declare-fun isDefined!12063 (Option!15360) Bool)

(declare-fun findConcatSeparation!1774 (Regex!15249 Regex!15249 List!62048 List!62048 List!62048) Option!15360)

(assert (=> b!5437574 (= lt!2218115 (isDefined!12063 (findConcatSeparation!1774 (regOne!31010 r!7292) (regTwo!31010 r!7292) Nil!61924 s!2326 s!2326)))))

(declare-fun lt!2218110 () Unit!154538)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1538 (Regex!15249 Regex!15249 List!62048) Unit!154538)

(assert (=> b!5437574 (= lt!2218110 (lemmaFindConcatSeparationEquivalentToExists!1538 (regOne!31010 r!7292) (regTwo!31010 r!7292) s!2326))))

(declare-fun b!5437575 () Bool)

(declare-fun res!2314966 () Bool)

(assert (=> b!5437575 (=> (not res!2314966) (not e!3368721))))

(declare-fun unfocusZipper!991 (List!62047) Regex!15249)

(assert (=> b!5437575 (= res!2314966 (= r!7292 (unfocusZipper!991 zl!343)))))

(declare-fun b!5437576 () Bool)

(declare-fun Unit!154540 () Unit!154538)

(assert (=> b!5437576 (= e!3368718 Unit!154540)))

(declare-fun lt!2218112 () Unit!154538)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!486 ((InoxSet Context!9266) (InoxSet Context!9266) List!62048) Unit!154538)

(assert (=> b!5437576 (= lt!2218112 (lemmaZipperConcatMatchesSameAsBothZippers!486 lt!2218116 lt!2218109 (t!375273 s!2326)))))

(declare-fun res!2314973 () Bool)

(assert (=> b!5437576 (= res!2314973 (matchZipper!1493 lt!2218116 (t!375273 s!2326)))))

(assert (=> b!5437576 (=> res!2314973 e!3368714)))

(assert (=> b!5437576 (= (matchZipper!1493 ((_ map or) lt!2218116 lt!2218109) (t!375273 s!2326)) e!3368714)))

(declare-fun b!5437577 () Bool)

(declare-fun Unit!154541 () Unit!154538)

(assert (=> b!5437577 (= e!3368718 Unit!154541)))

(declare-fun b!5437578 () Bool)

(declare-fun tp!1499367 () Bool)

(assert (=> b!5437578 (= e!3368722 tp!1499367)))

(declare-fun b!5437579 () Bool)

(declare-fun res!2314974 () Bool)

(assert (=> b!5437579 (=> res!2314974 e!3368711)))

(declare-fun isEmpty!33910 (List!62046) Bool)

(assert (=> b!5437579 (= res!2314974 (isEmpty!33910 (t!375271 (exprs!5133 (h!68371 zl!343)))))))

(declare-fun b!5437580 () Bool)

(declare-fun tp_is_empty!39751 () Bool)

(declare-fun tp!1499369 () Bool)

(assert (=> b!5437580 (= e!3368719 (and tp_is_empty!39751 tp!1499369))))

(declare-fun b!5437581 () Bool)

(declare-fun res!2314965 () Bool)

(assert (=> b!5437581 (=> (not res!2314965) (not e!3368721))))

(declare-fun toList!9033 ((InoxSet Context!9266)) List!62047)

(assert (=> b!5437581 (= res!2314965 (= (toList!9033 z!1189) zl!343))))

(declare-fun b!5437582 () Bool)

(declare-fun e!3368715 () Bool)

(assert (=> b!5437582 (= e!3368715 (nullable!5418 (regOne!31010 (regOne!31010 r!7292))))))

(declare-fun b!5437583 () Bool)

(declare-fun e!3368716 () Bool)

(declare-fun tp!1499364 () Bool)

(assert (=> b!5437583 (= e!3368716 tp!1499364)))

(declare-fun b!5437584 () Bool)

(declare-fun res!2314964 () Bool)

(assert (=> b!5437584 (=> res!2314964 e!3368712)))

(assert (=> b!5437584 (= res!2314964 e!3368715)))

(declare-fun res!2314972 () Bool)

(assert (=> b!5437584 (=> (not res!2314972) (not e!3368715))))

(assert (=> b!5437584 (= res!2314972 ((_ is Concat!24094) (regOne!31010 r!7292)))))

(declare-fun b!5437585 () Bool)

(assert (=> b!5437585 (= e!3368722 tp_is_empty!39751)))

(declare-fun b!5437586 () Bool)

(declare-fun res!2314970 () Bool)

(assert (=> b!5437586 (=> res!2314970 e!3368720)))

(declare-fun isEmpty!33911 (List!62047) Bool)

(assert (=> b!5437586 (= res!2314970 (not (isEmpty!33911 (t!375272 zl!343))))))

(declare-fun setIsEmpty!35523 () Bool)

(assert (=> setIsEmpty!35523 setRes!35523))

(declare-fun b!5437587 () Bool)

(declare-fun res!2314969 () Bool)

(assert (=> b!5437587 (=> res!2314969 e!3368712)))

(assert (=> b!5437587 (= res!2314969 (or ((_ is Concat!24094) (regOne!31010 r!7292)) ((_ is Star!15249) (regOne!31010 r!7292)) (not ((_ is EmptyExpr!15249) (regOne!31010 r!7292)))))))

(declare-fun b!5437588 () Bool)

(declare-fun res!2314963 () Bool)

(assert (=> b!5437588 (=> res!2314963 e!3368720)))

(declare-fun generalisedUnion!1178 (List!62046) Regex!15249)

(declare-fun unfocusZipperList!691 (List!62047) List!62046)

(assert (=> b!5437588 (= res!2314963 (not (= r!7292 (generalisedUnion!1178 (unfocusZipperList!691 zl!343)))))))

(declare-fun b!5437589 () Bool)

(assert (=> b!5437589 (= e!3368712 true)))

(assert (=> b!5437589 (not (matchZipper!1493 lt!2218116 (t!375273 s!2326)))))

(declare-fun lt!2218114 () Unit!154538)

(declare-fun lemmaEmptyZipperMatchesNothing!4 ((InoxSet Context!9266) List!62048) Unit!154538)

(assert (=> b!5437589 (= lt!2218114 (lemmaEmptyZipperMatchesNothing!4 lt!2218116 (t!375273 s!2326)))))

(declare-fun b!5437590 () Bool)

(declare-fun res!2314977 () Bool)

(assert (=> b!5437590 (=> res!2314977 e!3368720)))

(assert (=> b!5437590 (= res!2314977 (or ((_ is EmptyExpr!15249) r!7292) ((_ is EmptyLang!15249) r!7292) ((_ is ElementMatch!15249) r!7292) ((_ is Union!15249) r!7292) (not ((_ is Concat!24094) r!7292))))))

(declare-fun setNonEmpty!35523 () Bool)

(declare-fun tp!1499365 () Bool)

(declare-fun setElem!35523 () Context!9266)

(assert (=> setNonEmpty!35523 (= setRes!35523 (and tp!1499365 (inv!81369 setElem!35523) e!3368716))))

(declare-fun setRest!35523 () (InoxSet Context!9266))

(assert (=> setNonEmpty!35523 (= z!1189 ((_ map or) (store ((as const (Array Context!9266 Bool)) false) setElem!35523 true) setRest!35523))))

(declare-fun b!5437591 () Bool)

(declare-fun res!2314968 () Bool)

(assert (=> b!5437591 (=> res!2314968 e!3368720)))

(assert (=> b!5437591 (= res!2314968 (not ((_ is Cons!61922) (exprs!5133 (h!68371 zl!343)))))))

(declare-fun b!5437592 () Bool)

(declare-fun tp!1499373 () Bool)

(assert (=> b!5437592 (= e!3368717 tp!1499373)))

(declare-fun b!5437593 () Bool)

(declare-fun tp!1499368 () Bool)

(declare-fun tp!1499370 () Bool)

(assert (=> b!5437593 (= e!3368722 (and tp!1499368 tp!1499370))))

(assert (= (and start!570282 res!2314976) b!5437581))

(assert (= (and b!5437581 res!2314965) b!5437575))

(assert (= (and b!5437575 res!2314966) b!5437572))

(assert (= (and b!5437572 (not res!2314967)) b!5437586))

(assert (= (and b!5437586 (not res!2314970)) b!5437568))

(assert (= (and b!5437568 (not res!2314975)) b!5437591))

(assert (= (and b!5437591 (not res!2314968)) b!5437588))

(assert (= (and b!5437588 (not res!2314963)) b!5437590))

(assert (= (and b!5437590 (not res!2314977)) b!5437574))

(assert (= (and b!5437574 (not res!2314971)) b!5437579))

(assert (= (and b!5437579 (not res!2314974)) b!5437570))

(assert (= (and b!5437570 c!948776) b!5437576))

(assert (= (and b!5437570 (not c!948776)) b!5437577))

(assert (= (and b!5437576 (not res!2314973)) b!5437569))

(assert (= (and b!5437570 (not res!2314962)) b!5437584))

(assert (= (and b!5437584 res!2314972) b!5437582))

(assert (= (and b!5437584 (not res!2314964)) b!5437587))

(assert (= (and b!5437587 (not res!2314969)) b!5437589))

(assert (= (and start!570282 ((_ is ElementMatch!15249) r!7292)) b!5437585))

(assert (= (and start!570282 ((_ is Concat!24094) r!7292)) b!5437593))

(assert (= (and start!570282 ((_ is Star!15249) r!7292)) b!5437578))

(assert (= (and start!570282 ((_ is Union!15249) r!7292)) b!5437573))

(assert (= (and start!570282 condSetEmpty!35523) setIsEmpty!35523))

(assert (= (and start!570282 (not condSetEmpty!35523)) setNonEmpty!35523))

(assert (= setNonEmpty!35523 b!5437583))

(assert (= b!5437571 b!5437592))

(assert (= (and start!570282 ((_ is Cons!61923) zl!343)) b!5437571))

(assert (= (and start!570282 ((_ is Cons!61924) s!2326)) b!5437580))

(declare-fun m!6459460 () Bool)

(assert (=> b!5437570 m!6459460))

(declare-fun m!6459462 () Bool)

(assert (=> b!5437570 m!6459462))

(declare-fun m!6459464 () Bool)

(assert (=> b!5437570 m!6459464))

(declare-fun m!6459466 () Bool)

(assert (=> b!5437570 m!6459466))

(declare-fun m!6459468 () Bool)

(assert (=> b!5437570 m!6459468))

(declare-fun m!6459470 () Bool)

(assert (=> b!5437570 m!6459470))

(declare-fun m!6459472 () Bool)

(assert (=> b!5437570 m!6459472))

(declare-fun m!6459474 () Bool)

(assert (=> b!5437569 m!6459474))

(declare-fun m!6459476 () Bool)

(assert (=> start!570282 m!6459476))

(declare-fun m!6459478 () Bool)

(assert (=> b!5437574 m!6459478))

(declare-fun m!6459480 () Bool)

(assert (=> b!5437574 m!6459480))

(declare-fun m!6459482 () Bool)

(assert (=> b!5437574 m!6459482))

(assert (=> b!5437574 m!6459478))

(declare-fun m!6459484 () Bool)

(assert (=> b!5437574 m!6459484))

(declare-fun m!6459486 () Bool)

(assert (=> b!5437574 m!6459486))

(assert (=> b!5437574 m!6459480))

(declare-fun m!6459488 () Bool)

(assert (=> b!5437574 m!6459488))

(declare-fun m!6459490 () Bool)

(assert (=> b!5437581 m!6459490))

(declare-fun m!6459492 () Bool)

(assert (=> b!5437572 m!6459492))

(declare-fun m!6459494 () Bool)

(assert (=> b!5437572 m!6459494))

(declare-fun m!6459496 () Bool)

(assert (=> b!5437572 m!6459496))

(declare-fun m!6459498 () Bool)

(assert (=> b!5437579 m!6459498))

(declare-fun m!6459500 () Bool)

(assert (=> b!5437576 m!6459500))

(declare-fun m!6459502 () Bool)

(assert (=> b!5437576 m!6459502))

(declare-fun m!6459504 () Bool)

(assert (=> b!5437576 m!6459504))

(declare-fun m!6459506 () Bool)

(assert (=> b!5437568 m!6459506))

(declare-fun m!6459508 () Bool)

(assert (=> b!5437586 m!6459508))

(assert (=> b!5437589 m!6459502))

(declare-fun m!6459510 () Bool)

(assert (=> b!5437589 m!6459510))

(declare-fun m!6459512 () Bool)

(assert (=> setNonEmpty!35523 m!6459512))

(declare-fun m!6459514 () Bool)

(assert (=> b!5437575 m!6459514))

(declare-fun m!6459516 () Bool)

(assert (=> b!5437571 m!6459516))

(declare-fun m!6459518 () Bool)

(assert (=> b!5437582 m!6459518))

(declare-fun m!6459520 () Bool)

(assert (=> b!5437588 m!6459520))

(assert (=> b!5437588 m!6459520))

(declare-fun m!6459522 () Bool)

(assert (=> b!5437588 m!6459522))

(check-sat (not b!5437592) (not b!5437588) (not start!570282) (not b!5437568) (not b!5437582) (not b!5437572) (not b!5437576) (not b!5437578) (not b!5437574) (not b!5437573) (not b!5437571) (not b!5437581) (not b!5437586) (not setNonEmpty!35523) (not b!5437589) (not b!5437580) (not b!5437583) tp_is_empty!39751 (not b!5437579) (not b!5437575) (not b!5437593) (not b!5437570) (not b!5437569))
(check-sat)
