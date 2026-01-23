; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550850 () Bool)

(assert start!550850)

(declare-fun b!5207268 () Bool)

(assert (=> b!5207268 true))

(assert (=> b!5207268 true))

(declare-fun lambda!261050 () Int)

(declare-fun lambda!261049 () Int)

(assert (=> b!5207268 (not (= lambda!261050 lambda!261049))))

(assert (=> b!5207268 true))

(assert (=> b!5207268 true))

(declare-fun b!5207273 () Bool)

(assert (=> b!5207273 true))

(declare-fun b!5207260 () Bool)

(declare-datatypes ((Unit!152446 0))(
  ( (Unit!152447) )
))
(declare-fun e!3242050 () Unit!152446)

(declare-fun Unit!152448 () Unit!152446)

(assert (=> b!5207260 (= e!3242050 Unit!152448)))

(declare-fun b!5207261 () Bool)

(declare-fun e!3242052 () Bool)

(declare-fun e!3242056 () Bool)

(assert (=> b!5207261 (= e!3242052 (not e!3242056))))

(declare-fun res!2212037 () Bool)

(assert (=> b!5207261 (=> res!2212037 e!3242056)))

(declare-datatypes ((C!29860 0))(
  ( (C!29861 (val!24632 Int)) )
))
(declare-datatypes ((Regex!14795 0))(
  ( (ElementMatch!14795 (c!897710 C!29860)) (Concat!23640 (regOne!30102 Regex!14795) (regTwo!30102 Regex!14795)) (EmptyExpr!14795) (Star!14795 (reg!15124 Regex!14795)) (EmptyLang!14795) (Union!14795 (regOne!30103 Regex!14795) (regTwo!30103 Regex!14795)) )
))
(declare-datatypes ((List!60684 0))(
  ( (Nil!60560) (Cons!60560 (h!67008 Regex!14795) (t!373843 List!60684)) )
))
(declare-datatypes ((Context!8358 0))(
  ( (Context!8359 (exprs!4679 List!60684)) )
))
(declare-datatypes ((List!60685 0))(
  ( (Nil!60561) (Cons!60561 (h!67009 Context!8358) (t!373844 List!60685)) )
))
(declare-fun zl!343 () List!60685)

(get-info :version)

(assert (=> b!5207261 (= res!2212037 (not ((_ is Cons!60561) zl!343)))))

(declare-fun lt!2141740 () Bool)

(declare-fun r!7292 () Regex!14795)

(declare-datatypes ((List!60686 0))(
  ( (Nil!60562) (Cons!60562 (h!67010 C!29860) (t!373845 List!60686)) )
))
(declare-fun s!2326 () List!60686)

(declare-fun matchRSpec!1898 (Regex!14795 List!60686) Bool)

(assert (=> b!5207261 (= lt!2141740 (matchRSpec!1898 r!7292 s!2326))))

(declare-fun matchR!6980 (Regex!14795 List!60686) Bool)

(assert (=> b!5207261 (= lt!2141740 (matchR!6980 r!7292 s!2326))))

(declare-fun lt!2141741 () Unit!152446)

(declare-fun mainMatchTheorem!1898 (Regex!14795 List!60686) Unit!152446)

(assert (=> b!5207261 (= lt!2141741 (mainMatchTheorem!1898 r!7292 s!2326))))

(declare-fun b!5207262 () Bool)

(declare-fun res!2212036 () Bool)

(assert (=> b!5207262 (=> (not res!2212036) (not e!3242052))))

(declare-fun unfocusZipper!537 (List!60685) Regex!14795)

(assert (=> b!5207262 (= res!2212036 (= r!7292 (unfocusZipper!537 zl!343)))))

(declare-fun b!5207263 () Bool)

(declare-fun res!2212040 () Bool)

(assert (=> b!5207263 (=> res!2212040 e!3242056)))

(declare-fun generalisedUnion!724 (List!60684) Regex!14795)

(declare-fun unfocusZipperList!237 (List!60685) List!60684)

(assert (=> b!5207263 (= res!2212040 (not (= r!7292 (generalisedUnion!724 (unfocusZipperList!237 zl!343)))))))

(declare-fun b!5207264 () Bool)

(declare-fun e!3242047 () Bool)

(declare-fun tp!1460510 () Bool)

(assert (=> b!5207264 (= e!3242047 tp!1460510)))

(declare-fun b!5207265 () Bool)

(declare-fun res!2212039 () Bool)

(assert (=> b!5207265 (=> (not res!2212039) (not e!3242052))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8358))

(declare-fun toList!8579 ((InoxSet Context!8358)) List!60685)

(assert (=> b!5207265 (= res!2212039 (= (toList!8579 z!1189) zl!343))))

(declare-fun b!5207266 () Bool)

(declare-fun e!3242048 () Bool)

(declare-fun tp!1460509 () Bool)

(declare-fun tp!1460511 () Bool)

(assert (=> b!5207266 (= e!3242048 (and tp!1460509 tp!1460511))))

(declare-fun b!5207267 () Bool)

(declare-fun res!2212038 () Bool)

(assert (=> b!5207267 (=> res!2212038 e!3242056)))

(assert (=> b!5207267 (= res!2212038 (or ((_ is EmptyExpr!14795) r!7292) ((_ is EmptyLang!14795) r!7292) ((_ is ElementMatch!14795) r!7292) ((_ is Union!14795) r!7292) (not ((_ is Concat!23640) r!7292))))))

(declare-fun e!3242053 () Bool)

(assert (=> b!5207268 (= e!3242056 e!3242053)))

(declare-fun res!2212030 () Bool)

(assert (=> b!5207268 (=> res!2212030 e!3242053)))

(declare-fun lt!2141734 () Bool)

(assert (=> b!5207268 (= res!2212030 (or (not (= lt!2141740 lt!2141734)) ((_ is Nil!60562) s!2326)))))

(declare-fun Exists!1976 (Int) Bool)

(assert (=> b!5207268 (= (Exists!1976 lambda!261049) (Exists!1976 lambda!261050))))

(declare-fun lt!2141739 () Unit!152446)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!630 (Regex!14795 Regex!14795 List!60686) Unit!152446)

(assert (=> b!5207268 (= lt!2141739 (lemmaExistCutMatchRandMatchRSpecEquivalent!630 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326))))

(assert (=> b!5207268 (= lt!2141734 (Exists!1976 lambda!261049))))

(declare-datatypes ((tuple2!63988 0))(
  ( (tuple2!63989 (_1!35297 List!60686) (_2!35297 List!60686)) )
))
(declare-datatypes ((Option!14906 0))(
  ( (None!14905) (Some!14905 (v!50934 tuple2!63988)) )
))
(declare-fun isDefined!11609 (Option!14906) Bool)

(declare-fun findConcatSeparation!1320 (Regex!14795 Regex!14795 List!60686 List!60686 List!60686) Option!14906)

(assert (=> b!5207268 (= lt!2141734 (isDefined!11609 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326)))))

(declare-fun lt!2141738 () Unit!152446)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1084 (Regex!14795 Regex!14795 List!60686) Unit!152446)

(assert (=> b!5207268 (= lt!2141738 (lemmaFindConcatSeparationEquivalentToExists!1084 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326))))

(declare-fun b!5207269 () Bool)

(declare-fun res!2212033 () Bool)

(assert (=> b!5207269 (=> res!2212033 e!3242056)))

(declare-fun generalisedConcat!464 (List!60684) Regex!14795)

(assert (=> b!5207269 (= res!2212033 (not (= r!7292 (generalisedConcat!464 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun setIsEmpty!33064 () Bool)

(declare-fun setRes!33064 () Bool)

(assert (=> setIsEmpty!33064 setRes!33064))

(declare-fun b!5207270 () Bool)

(declare-fun tp!1460506 () Bool)

(assert (=> b!5207270 (= e!3242048 tp!1460506)))

(declare-fun b!5207271 () Bool)

(declare-fun tp!1460504 () Bool)

(declare-fun tp!1460513 () Bool)

(assert (=> b!5207271 (= e!3242048 (and tp!1460504 tp!1460513))))

(declare-fun setElem!33064 () Context!8358)

(declare-fun e!3242057 () Bool)

(declare-fun setNonEmpty!33064 () Bool)

(declare-fun tp!1460508 () Bool)

(declare-fun inv!80234 (Context!8358) Bool)

(assert (=> setNonEmpty!33064 (= setRes!33064 (and tp!1460508 (inv!80234 setElem!33064) e!3242057))))

(declare-fun setRest!33064 () (InoxSet Context!8358))

(assert (=> setNonEmpty!33064 (= z!1189 ((_ map or) (store ((as const (Array Context!8358 Bool)) false) setElem!33064 true) setRest!33064))))

(declare-fun b!5207272 () Bool)

(declare-fun e!3242054 () Bool)

(declare-fun tp!1460512 () Bool)

(assert (=> b!5207272 (= e!3242054 (and (inv!80234 (h!67009 zl!343)) e!3242047 tp!1460512))))

(declare-fun e!3242051 () Bool)

(assert (=> b!5207273 (= e!3242053 e!3242051)))

(declare-fun res!2212031 () Bool)

(assert (=> b!5207273 (=> res!2212031 e!3242051)))

(assert (=> b!5207273 (= res!2212031 (or (and ((_ is ElementMatch!14795) (regOne!30102 r!7292)) (= (c!897710 (regOne!30102 r!7292)) (h!67010 s!2326))) (not ((_ is Union!14795) (regOne!30102 r!7292)))))))

(declare-fun lt!2141733 () Unit!152446)

(assert (=> b!5207273 (= lt!2141733 e!3242050)))

(declare-fun c!897709 () Bool)

(declare-fun nullable!4964 (Regex!14795) Bool)

(assert (=> b!5207273 (= c!897709 (nullable!4964 (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun lambda!261051 () Int)

(declare-fun flatMap!522 ((InoxSet Context!8358) Int) (InoxSet Context!8358))

(declare-fun derivationStepZipperUp!167 (Context!8358 C!29860) (InoxSet Context!8358))

(assert (=> b!5207273 (= (flatMap!522 z!1189 lambda!261051) (derivationStepZipperUp!167 (h!67009 zl!343) (h!67010 s!2326)))))

(declare-fun lt!2141732 () Unit!152446)

(declare-fun lemmaFlatMapOnSingletonSet!54 ((InoxSet Context!8358) Context!8358 Int) Unit!152446)

(assert (=> b!5207273 (= lt!2141732 (lemmaFlatMapOnSingletonSet!54 z!1189 (h!67009 zl!343) lambda!261051))))

(declare-fun lt!2141742 () (InoxSet Context!8358))

(declare-fun lt!2141743 () Context!8358)

(assert (=> b!5207273 (= lt!2141742 (derivationStepZipperUp!167 lt!2141743 (h!67010 s!2326)))))

(declare-fun lt!2141735 () (InoxSet Context!8358))

(declare-fun derivationStepZipperDown!243 (Regex!14795 Context!8358 C!29860) (InoxSet Context!8358))

(assert (=> b!5207273 (= lt!2141735 (derivationStepZipperDown!243 (h!67008 (exprs!4679 (h!67009 zl!343))) lt!2141743 (h!67010 s!2326)))))

(assert (=> b!5207273 (= lt!2141743 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun lt!2141736 () (InoxSet Context!8358))

(assert (=> b!5207273 (= lt!2141736 (derivationStepZipperUp!167 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))) (h!67010 s!2326)))))

(declare-fun res!2212035 () Bool)

(assert (=> start!550850 (=> (not res!2212035) (not e!3242052))))

(declare-fun validRegex!6531 (Regex!14795) Bool)

(assert (=> start!550850 (= res!2212035 (validRegex!6531 r!7292))))

(assert (=> start!550850 e!3242052))

(assert (=> start!550850 e!3242048))

(declare-fun condSetEmpty!33064 () Bool)

(assert (=> start!550850 (= condSetEmpty!33064 (= z!1189 ((as const (Array Context!8358 Bool)) false)))))

(assert (=> start!550850 setRes!33064))

(assert (=> start!550850 e!3242054))

(declare-fun e!3242049 () Bool)

(assert (=> start!550850 e!3242049))

(declare-fun b!5207274 () Bool)

(declare-fun tp_is_empty!38843 () Bool)

(declare-fun tp!1460505 () Bool)

(assert (=> b!5207274 (= e!3242049 (and tp_is_empty!38843 tp!1460505))))

(declare-fun b!5207275 () Bool)

(assert (=> b!5207275 (= e!3242051 (validRegex!6531 (regOne!30103 (regOne!30102 r!7292))))))

(declare-fun b!5207276 () Bool)

(declare-fun tp!1460507 () Bool)

(assert (=> b!5207276 (= e!3242057 tp!1460507)))

(declare-fun b!5207277 () Bool)

(declare-fun e!3242055 () Bool)

(declare-fun matchZipper!1039 ((InoxSet Context!8358) List!60686) Bool)

(assert (=> b!5207277 (= e!3242055 (matchZipper!1039 lt!2141742 (t!373845 s!2326)))))

(declare-fun b!5207278 () Bool)

(declare-fun res!2212029 () Bool)

(assert (=> b!5207278 (=> res!2212029 e!3242056)))

(assert (=> b!5207278 (= res!2212029 (not ((_ is Cons!60560) (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5207279 () Bool)

(assert (=> b!5207279 (= e!3242048 tp_is_empty!38843)))

(declare-fun b!5207280 () Bool)

(declare-fun res!2212032 () Bool)

(assert (=> b!5207280 (=> res!2212032 e!3242051)))

(assert (=> b!5207280 (= res!2212032 (not (= lt!2141735 ((_ map or) (derivationStepZipperDown!243 (regOne!30103 (regOne!30102 r!7292)) lt!2141743 (h!67010 s!2326)) (derivationStepZipperDown!243 (regTwo!30103 (regOne!30102 r!7292)) lt!2141743 (h!67010 s!2326))))))))

(declare-fun b!5207281 () Bool)

(declare-fun Unit!152449 () Unit!152446)

(assert (=> b!5207281 (= e!3242050 Unit!152449)))

(declare-fun lt!2141737 () Unit!152446)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!32 ((InoxSet Context!8358) (InoxSet Context!8358) List!60686) Unit!152446)

(assert (=> b!5207281 (= lt!2141737 (lemmaZipperConcatMatchesSameAsBothZippers!32 lt!2141735 lt!2141742 (t!373845 s!2326)))))

(declare-fun res!2212027 () Bool)

(assert (=> b!5207281 (= res!2212027 (matchZipper!1039 lt!2141735 (t!373845 s!2326)))))

(assert (=> b!5207281 (=> res!2212027 e!3242055)))

(assert (=> b!5207281 (= (matchZipper!1039 ((_ map or) lt!2141735 lt!2141742) (t!373845 s!2326)) e!3242055)))

(declare-fun b!5207282 () Bool)

(declare-fun res!2212034 () Bool)

(assert (=> b!5207282 (=> res!2212034 e!3242053)))

(declare-fun isEmpty!32469 (List!60684) Bool)

(assert (=> b!5207282 (= res!2212034 (isEmpty!32469 (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5207283 () Bool)

(declare-fun res!2212028 () Bool)

(assert (=> b!5207283 (=> res!2212028 e!3242056)))

(declare-fun isEmpty!32470 (List!60685) Bool)

(assert (=> b!5207283 (= res!2212028 (not (isEmpty!32470 (t!373844 zl!343))))))

(assert (= (and start!550850 res!2212035) b!5207265))

(assert (= (and b!5207265 res!2212039) b!5207262))

(assert (= (and b!5207262 res!2212036) b!5207261))

(assert (= (and b!5207261 (not res!2212037)) b!5207283))

(assert (= (and b!5207283 (not res!2212028)) b!5207269))

(assert (= (and b!5207269 (not res!2212033)) b!5207278))

(assert (= (and b!5207278 (not res!2212029)) b!5207263))

(assert (= (and b!5207263 (not res!2212040)) b!5207267))

(assert (= (and b!5207267 (not res!2212038)) b!5207268))

(assert (= (and b!5207268 (not res!2212030)) b!5207282))

(assert (= (and b!5207282 (not res!2212034)) b!5207273))

(assert (= (and b!5207273 c!897709) b!5207281))

(assert (= (and b!5207273 (not c!897709)) b!5207260))

(assert (= (and b!5207281 (not res!2212027)) b!5207277))

(assert (= (and b!5207273 (not res!2212031)) b!5207280))

(assert (= (and b!5207280 (not res!2212032)) b!5207275))

(assert (= (and start!550850 ((_ is ElementMatch!14795) r!7292)) b!5207279))

(assert (= (and start!550850 ((_ is Concat!23640) r!7292)) b!5207266))

(assert (= (and start!550850 ((_ is Star!14795) r!7292)) b!5207270))

(assert (= (and start!550850 ((_ is Union!14795) r!7292)) b!5207271))

(assert (= (and start!550850 condSetEmpty!33064) setIsEmpty!33064))

(assert (= (and start!550850 (not condSetEmpty!33064)) setNonEmpty!33064))

(assert (= setNonEmpty!33064 b!5207276))

(assert (= b!5207272 b!5207264))

(assert (= (and start!550850 ((_ is Cons!60561) zl!343)) b!5207272))

(assert (= (and start!550850 ((_ is Cons!60562) s!2326)) b!5207274))

(declare-fun m!6257964 () Bool)

(assert (=> b!5207280 m!6257964))

(declare-fun m!6257966 () Bool)

(assert (=> b!5207280 m!6257966))

(declare-fun m!6257968 () Bool)

(assert (=> b!5207277 m!6257968))

(declare-fun m!6257970 () Bool)

(assert (=> b!5207282 m!6257970))

(declare-fun m!6257972 () Bool)

(assert (=> b!5207273 m!6257972))

(declare-fun m!6257974 () Bool)

(assert (=> b!5207273 m!6257974))

(declare-fun m!6257976 () Bool)

(assert (=> b!5207273 m!6257976))

(declare-fun m!6257978 () Bool)

(assert (=> b!5207273 m!6257978))

(declare-fun m!6257980 () Bool)

(assert (=> b!5207273 m!6257980))

(declare-fun m!6257982 () Bool)

(assert (=> b!5207273 m!6257982))

(declare-fun m!6257984 () Bool)

(assert (=> b!5207273 m!6257984))

(declare-fun m!6257986 () Bool)

(assert (=> b!5207275 m!6257986))

(declare-fun m!6257988 () Bool)

(assert (=> b!5207272 m!6257988))

(declare-fun m!6257990 () Bool)

(assert (=> b!5207281 m!6257990))

(declare-fun m!6257992 () Bool)

(assert (=> b!5207281 m!6257992))

(declare-fun m!6257994 () Bool)

(assert (=> b!5207281 m!6257994))

(declare-fun m!6257996 () Bool)

(assert (=> setNonEmpty!33064 m!6257996))

(declare-fun m!6257998 () Bool)

(assert (=> b!5207263 m!6257998))

(assert (=> b!5207263 m!6257998))

(declare-fun m!6258000 () Bool)

(assert (=> b!5207263 m!6258000))

(declare-fun m!6258002 () Bool)

(assert (=> b!5207268 m!6258002))

(declare-fun m!6258004 () Bool)

(assert (=> b!5207268 m!6258004))

(declare-fun m!6258006 () Bool)

(assert (=> b!5207268 m!6258006))

(assert (=> b!5207268 m!6258006))

(declare-fun m!6258008 () Bool)

(assert (=> b!5207268 m!6258008))

(declare-fun m!6258010 () Bool)

(assert (=> b!5207268 m!6258010))

(assert (=> b!5207268 m!6258002))

(declare-fun m!6258012 () Bool)

(assert (=> b!5207268 m!6258012))

(declare-fun m!6258014 () Bool)

(assert (=> b!5207262 m!6258014))

(declare-fun m!6258016 () Bool)

(assert (=> b!5207261 m!6258016))

(declare-fun m!6258018 () Bool)

(assert (=> b!5207261 m!6258018))

(declare-fun m!6258020 () Bool)

(assert (=> b!5207261 m!6258020))

(declare-fun m!6258022 () Bool)

(assert (=> b!5207269 m!6258022))

(declare-fun m!6258024 () Bool)

(assert (=> b!5207283 m!6258024))

(declare-fun m!6258026 () Bool)

(assert (=> start!550850 m!6258026))

(declare-fun m!6258028 () Bool)

(assert (=> b!5207265 m!6258028))

(check-sat (not b!5207265) tp_is_empty!38843 (not b!5207275) (not b!5207280) (not b!5207269) (not b!5207274) (not b!5207264) (not b!5207261) (not b!5207266) (not b!5207272) (not b!5207276) (not b!5207270) (not b!5207271) (not b!5207263) (not b!5207281) (not b!5207277) (not setNonEmpty!33064) (not b!5207273) (not start!550850) (not b!5207268) (not b!5207282) (not b!5207283) (not b!5207262))
(check-sat)
(get-model)

(declare-fun b!5207426 () Bool)

(declare-fun e!3242141 () Bool)

(declare-fun call!366376 () Bool)

(assert (=> b!5207426 (= e!3242141 call!366376)))

(declare-fun b!5207427 () Bool)

(declare-fun e!3242140 () Bool)

(assert (=> b!5207427 (= e!3242140 call!366376)))

(declare-fun b!5207428 () Bool)

(declare-fun res!2212101 () Bool)

(declare-fun e!3242143 () Bool)

(assert (=> b!5207428 (=> res!2212101 e!3242143)))

(assert (=> b!5207428 (= res!2212101 (not ((_ is Concat!23640) r!7292)))))

(declare-fun e!3242138 () Bool)

(assert (=> b!5207428 (= e!3242138 e!3242143)))

(declare-fun b!5207430 () Bool)

(declare-fun e!3242144 () Bool)

(declare-fun e!3242139 () Bool)

(assert (=> b!5207430 (= e!3242144 e!3242139)))

(declare-fun res!2212102 () Bool)

(assert (=> b!5207430 (= res!2212102 (not (nullable!4964 (reg!15124 r!7292))))))

(assert (=> b!5207430 (=> (not res!2212102) (not e!3242139))))

(declare-fun bm!366369 () Bool)

(declare-fun call!366375 () Bool)

(assert (=> bm!366369 (= call!366376 call!366375)))

(declare-fun b!5207431 () Bool)

(declare-fun res!2212104 () Bool)

(assert (=> b!5207431 (=> (not res!2212104) (not e!3242141))))

(declare-fun call!366374 () Bool)

(assert (=> b!5207431 (= res!2212104 call!366374)))

(assert (=> b!5207431 (= e!3242138 e!3242141)))

(declare-fun b!5207432 () Bool)

(assert (=> b!5207432 (= e!3242143 e!3242140)))

(declare-fun res!2212105 () Bool)

(assert (=> b!5207432 (=> (not res!2212105) (not e!3242140))))

(assert (=> b!5207432 (= res!2212105 call!366374)))

(declare-fun b!5207433 () Bool)

(assert (=> b!5207433 (= e!3242139 call!366375)))

(declare-fun c!897749 () Bool)

(declare-fun c!897750 () Bool)

(declare-fun bm!366370 () Bool)

(assert (=> bm!366370 (= call!366375 (validRegex!6531 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))))))

(declare-fun d!1679309 () Bool)

(declare-fun res!2212103 () Bool)

(declare-fun e!3242142 () Bool)

(assert (=> d!1679309 (=> res!2212103 e!3242142)))

(assert (=> d!1679309 (= res!2212103 ((_ is ElementMatch!14795) r!7292))))

(assert (=> d!1679309 (= (validRegex!6531 r!7292) e!3242142)))

(declare-fun b!5207429 () Bool)

(assert (=> b!5207429 (= e!3242144 e!3242138)))

(assert (=> b!5207429 (= c!897750 ((_ is Union!14795) r!7292))))

(declare-fun b!5207434 () Bool)

(assert (=> b!5207434 (= e!3242142 e!3242144)))

(assert (=> b!5207434 (= c!897749 ((_ is Star!14795) r!7292))))

(declare-fun bm!366371 () Bool)

(assert (=> bm!366371 (= call!366374 (validRegex!6531 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))))))

(assert (= (and d!1679309 (not res!2212103)) b!5207434))

(assert (= (and b!5207434 c!897749) b!5207430))

(assert (= (and b!5207434 (not c!897749)) b!5207429))

(assert (= (and b!5207430 res!2212102) b!5207433))

(assert (= (and b!5207429 c!897750) b!5207431))

(assert (= (and b!5207429 (not c!897750)) b!5207428))

(assert (= (and b!5207431 res!2212104) b!5207426))

(assert (= (and b!5207428 (not res!2212101)) b!5207432))

(assert (= (and b!5207432 res!2212105) b!5207427))

(assert (= (or b!5207426 b!5207427) bm!366369))

(assert (= (or b!5207431 b!5207432) bm!366371))

(assert (= (or b!5207433 bm!366369) bm!366370))

(declare-fun m!6258094 () Bool)

(assert (=> b!5207430 m!6258094))

(declare-fun m!6258096 () Bool)

(assert (=> bm!366370 m!6258096))

(declare-fun m!6258098 () Bool)

(assert (=> bm!366371 m!6258098))

(assert (=> start!550850 d!1679309))

(declare-fun d!1679317 () Bool)

(declare-fun e!3242154 () Bool)

(assert (=> d!1679317 (= (matchZipper!1039 ((_ map or) lt!2141735 lt!2141742) (t!373845 s!2326)) e!3242154)))

(declare-fun res!2212111 () Bool)

(assert (=> d!1679317 (=> res!2212111 e!3242154)))

(assert (=> d!1679317 (= res!2212111 (matchZipper!1039 lt!2141735 (t!373845 s!2326)))))

(declare-fun lt!2141764 () Unit!152446)

(declare-fun choose!38711 ((InoxSet Context!8358) (InoxSet Context!8358) List!60686) Unit!152446)

(assert (=> d!1679317 (= lt!2141764 (choose!38711 lt!2141735 lt!2141742 (t!373845 s!2326)))))

(assert (=> d!1679317 (= (lemmaZipperConcatMatchesSameAsBothZippers!32 lt!2141735 lt!2141742 (t!373845 s!2326)) lt!2141764)))

(declare-fun b!5207448 () Bool)

(assert (=> b!5207448 (= e!3242154 (matchZipper!1039 lt!2141742 (t!373845 s!2326)))))

(assert (= (and d!1679317 (not res!2212111)) b!5207448))

(assert (=> d!1679317 m!6257994))

(assert (=> d!1679317 m!6257992))

(declare-fun m!6258108 () Bool)

(assert (=> d!1679317 m!6258108))

(assert (=> b!5207448 m!6257968))

(assert (=> b!5207281 d!1679317))

(declare-fun d!1679321 () Bool)

(declare-fun c!897766 () Bool)

(declare-fun isEmpty!32473 (List!60686) Bool)

(assert (=> d!1679321 (= c!897766 (isEmpty!32473 (t!373845 s!2326)))))

(declare-fun e!3242178 () Bool)

(assert (=> d!1679321 (= (matchZipper!1039 lt!2141735 (t!373845 s!2326)) e!3242178)))

(declare-fun b!5207495 () Bool)

(declare-fun nullableZipper!1223 ((InoxSet Context!8358)) Bool)

(assert (=> b!5207495 (= e!3242178 (nullableZipper!1223 lt!2141735))))

(declare-fun b!5207496 () Bool)

(declare-fun derivationStepZipper!1067 ((InoxSet Context!8358) C!29860) (InoxSet Context!8358))

(declare-fun head!11165 (List!60686) C!29860)

(declare-fun tail!10262 (List!60686) List!60686)

(assert (=> b!5207496 (= e!3242178 (matchZipper!1039 (derivationStepZipper!1067 lt!2141735 (head!11165 (t!373845 s!2326))) (tail!10262 (t!373845 s!2326))))))

(assert (= (and d!1679321 c!897766) b!5207495))

(assert (= (and d!1679321 (not c!897766)) b!5207496))

(declare-fun m!6258122 () Bool)

(assert (=> d!1679321 m!6258122))

(declare-fun m!6258124 () Bool)

(assert (=> b!5207495 m!6258124))

(declare-fun m!6258126 () Bool)

(assert (=> b!5207496 m!6258126))

(assert (=> b!5207496 m!6258126))

(declare-fun m!6258128 () Bool)

(assert (=> b!5207496 m!6258128))

(declare-fun m!6258130 () Bool)

(assert (=> b!5207496 m!6258130))

(assert (=> b!5207496 m!6258128))

(assert (=> b!5207496 m!6258130))

(declare-fun m!6258132 () Bool)

(assert (=> b!5207496 m!6258132))

(assert (=> b!5207281 d!1679321))

(declare-fun d!1679325 () Bool)

(declare-fun c!897767 () Bool)

(assert (=> d!1679325 (= c!897767 (isEmpty!32473 (t!373845 s!2326)))))

(declare-fun e!3242179 () Bool)

(assert (=> d!1679325 (= (matchZipper!1039 ((_ map or) lt!2141735 lt!2141742) (t!373845 s!2326)) e!3242179)))

(declare-fun b!5207497 () Bool)

(assert (=> b!5207497 (= e!3242179 (nullableZipper!1223 ((_ map or) lt!2141735 lt!2141742)))))

(declare-fun b!5207498 () Bool)

(assert (=> b!5207498 (= e!3242179 (matchZipper!1039 (derivationStepZipper!1067 ((_ map or) lt!2141735 lt!2141742) (head!11165 (t!373845 s!2326))) (tail!10262 (t!373845 s!2326))))))

(assert (= (and d!1679325 c!897767) b!5207497))

(assert (= (and d!1679325 (not c!897767)) b!5207498))

(assert (=> d!1679325 m!6258122))

(declare-fun m!6258136 () Bool)

(assert (=> b!5207497 m!6258136))

(assert (=> b!5207498 m!6258126))

(assert (=> b!5207498 m!6258126))

(declare-fun m!6258138 () Bool)

(assert (=> b!5207498 m!6258138))

(assert (=> b!5207498 m!6258130))

(assert (=> b!5207498 m!6258138))

(assert (=> b!5207498 m!6258130))

(declare-fun m!6258140 () Bool)

(assert (=> b!5207498 m!6258140))

(assert (=> b!5207281 d!1679325))

(declare-fun b!5207607 () Bool)

(declare-fun c!897810 () Bool)

(assert (=> b!5207607 (= c!897810 ((_ is Star!14795) (regOne!30103 (regOne!30102 r!7292))))))

(declare-fun e!3242255 () (InoxSet Context!8358))

(declare-fun e!3242250 () (InoxSet Context!8358))

(assert (=> b!5207607 (= e!3242255 e!3242250)))

(declare-fun d!1679329 () Bool)

(declare-fun c!897809 () Bool)

(assert (=> d!1679329 (= c!897809 (and ((_ is ElementMatch!14795) (regOne!30103 (regOne!30102 r!7292))) (= (c!897710 (regOne!30103 (regOne!30102 r!7292))) (h!67010 s!2326))))))

(declare-fun e!3242253 () (InoxSet Context!8358))

(assert (=> d!1679329 (= (derivationStepZipperDown!243 (regOne!30103 (regOne!30102 r!7292)) lt!2141743 (h!67010 s!2326)) e!3242253)))

(declare-fun b!5207608 () Bool)

(assert (=> b!5207608 (= e!3242250 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5207609 () Bool)

(declare-fun call!366408 () (InoxSet Context!8358))

(assert (=> b!5207609 (= e!3242250 call!366408)))

(declare-fun b!5207610 () Bool)

(declare-fun e!3242254 () (InoxSet Context!8358))

(assert (=> b!5207610 (= e!3242254 e!3242255)))

(declare-fun c!897807 () Bool)

(assert (=> b!5207610 (= c!897807 ((_ is Concat!23640) (regOne!30103 (regOne!30102 r!7292))))))

(declare-fun bm!366403 () Bool)

(declare-fun call!366409 () (InoxSet Context!8358))

(assert (=> bm!366403 (= call!366408 call!366409)))

(declare-fun b!5207611 () Bool)

(declare-fun call!366413 () (InoxSet Context!8358))

(assert (=> b!5207611 (= e!3242254 ((_ map or) call!366413 call!366409))))

(declare-fun c!897808 () Bool)

(declare-fun bm!366404 () Bool)

(declare-fun call!366411 () List!60684)

(declare-fun $colon$colon!1273 (List!60684 Regex!14795) List!60684)

(assert (=> bm!366404 (= call!366411 ($colon$colon!1273 (exprs!4679 lt!2141743) (ite (or c!897808 c!897807) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (regOne!30103 (regOne!30102 r!7292)))))))

(declare-fun b!5207612 () Bool)

(declare-fun e!3242252 () (InoxSet Context!8358))

(declare-fun call!366412 () (InoxSet Context!8358))

(assert (=> b!5207612 (= e!3242252 ((_ map or) call!366413 call!366412))))

(declare-fun b!5207613 () Bool)

(assert (=> b!5207613 (= e!3242255 call!366408)))

(declare-fun bm!366405 () Bool)

(declare-fun call!366410 () List!60684)

(assert (=> bm!366405 (= call!366410 call!366411)))

(declare-fun bm!366406 () Bool)

(declare-fun c!897806 () Bool)

(assert (=> bm!366406 (= call!366412 (derivationStepZipperDown!243 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292)))))) (ite (or c!897806 c!897808) lt!2141743 (Context!8359 call!366410)) (h!67010 s!2326)))))

(declare-fun b!5207614 () Bool)

(declare-fun e!3242251 () Bool)

(assert (=> b!5207614 (= e!3242251 (nullable!4964 (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))))

(declare-fun b!5207615 () Bool)

(assert (=> b!5207615 (= c!897808 e!3242251)))

(declare-fun res!2212168 () Bool)

(assert (=> b!5207615 (=> (not res!2212168) (not e!3242251))))

(assert (=> b!5207615 (= res!2212168 ((_ is Concat!23640) (regOne!30103 (regOne!30102 r!7292))))))

(assert (=> b!5207615 (= e!3242252 e!3242254)))

(declare-fun bm!366407 () Bool)

(assert (=> bm!366407 (= call!366409 call!366412)))

(declare-fun b!5207616 () Bool)

(assert (=> b!5207616 (= e!3242253 e!3242252)))

(assert (=> b!5207616 (= c!897806 ((_ is Union!14795) (regOne!30103 (regOne!30102 r!7292))))))

(declare-fun b!5207617 () Bool)

(assert (=> b!5207617 (= e!3242253 (store ((as const (Array Context!8358 Bool)) false) lt!2141743 true))))

(declare-fun bm!366408 () Bool)

(assert (=> bm!366408 (= call!366413 (derivationStepZipperDown!243 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))) (ite c!897806 lt!2141743 (Context!8359 call!366411)) (h!67010 s!2326)))))

(assert (= (and d!1679329 c!897809) b!5207617))

(assert (= (and d!1679329 (not c!897809)) b!5207616))

(assert (= (and b!5207616 c!897806) b!5207612))

(assert (= (and b!5207616 (not c!897806)) b!5207615))

(assert (= (and b!5207615 res!2212168) b!5207614))

(assert (= (and b!5207615 c!897808) b!5207611))

(assert (= (and b!5207615 (not c!897808)) b!5207610))

(assert (= (and b!5207610 c!897807) b!5207613))

(assert (= (and b!5207610 (not c!897807)) b!5207607))

(assert (= (and b!5207607 c!897810) b!5207609))

(assert (= (and b!5207607 (not c!897810)) b!5207608))

(assert (= (or b!5207613 b!5207609) bm!366405))

(assert (= (or b!5207613 b!5207609) bm!366403))

(assert (= (or b!5207611 bm!366405) bm!366404))

(assert (= (or b!5207611 bm!366403) bm!366407))

(assert (= (or b!5207612 bm!366407) bm!366406))

(assert (= (or b!5207612 b!5207611) bm!366408))

(declare-fun m!6258176 () Bool)

(assert (=> b!5207614 m!6258176))

(declare-fun m!6258180 () Bool)

(assert (=> bm!366406 m!6258180))

(declare-fun m!6258194 () Bool)

(assert (=> bm!366408 m!6258194))

(declare-fun m!6258202 () Bool)

(assert (=> bm!366404 m!6258202))

(declare-fun m!6258204 () Bool)

(assert (=> b!5207617 m!6258204))

(assert (=> b!5207280 d!1679329))

(declare-fun b!5207628 () Bool)

(declare-fun c!897819 () Bool)

(assert (=> b!5207628 (= c!897819 ((_ is Star!14795) (regTwo!30103 (regOne!30102 r!7292))))))

(declare-fun e!3242267 () (InoxSet Context!8358))

(declare-fun e!3242262 () (InoxSet Context!8358))

(assert (=> b!5207628 (= e!3242267 e!3242262)))

(declare-fun d!1679343 () Bool)

(declare-fun c!897818 () Bool)

(assert (=> d!1679343 (= c!897818 (and ((_ is ElementMatch!14795) (regTwo!30103 (regOne!30102 r!7292))) (= (c!897710 (regTwo!30103 (regOne!30102 r!7292))) (h!67010 s!2326))))))

(declare-fun e!3242265 () (InoxSet Context!8358))

(assert (=> d!1679343 (= (derivationStepZipperDown!243 (regTwo!30103 (regOne!30102 r!7292)) lt!2141743 (h!67010 s!2326)) e!3242265)))

(declare-fun b!5207629 () Bool)

(assert (=> b!5207629 (= e!3242262 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5207630 () Bool)

(declare-fun call!366414 () (InoxSet Context!8358))

(assert (=> b!5207630 (= e!3242262 call!366414)))

(declare-fun b!5207631 () Bool)

(declare-fun e!3242266 () (InoxSet Context!8358))

(assert (=> b!5207631 (= e!3242266 e!3242267)))

(declare-fun c!897816 () Bool)

(assert (=> b!5207631 (= c!897816 ((_ is Concat!23640) (regTwo!30103 (regOne!30102 r!7292))))))

(declare-fun bm!366409 () Bool)

(declare-fun call!366415 () (InoxSet Context!8358))

(assert (=> bm!366409 (= call!366414 call!366415)))

(declare-fun b!5207632 () Bool)

(declare-fun call!366419 () (InoxSet Context!8358))

(assert (=> b!5207632 (= e!3242266 ((_ map or) call!366419 call!366415))))

(declare-fun c!897817 () Bool)

(declare-fun bm!366410 () Bool)

(declare-fun call!366417 () List!60684)

(assert (=> bm!366410 (= call!366417 ($colon$colon!1273 (exprs!4679 lt!2141743) (ite (or c!897817 c!897816) (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (regTwo!30103 (regOne!30102 r!7292)))))))

(declare-fun b!5207633 () Bool)

(declare-fun e!3242264 () (InoxSet Context!8358))

(declare-fun call!366418 () (InoxSet Context!8358))

(assert (=> b!5207633 (= e!3242264 ((_ map or) call!366419 call!366418))))

(declare-fun b!5207634 () Bool)

(assert (=> b!5207634 (= e!3242267 call!366414)))

(declare-fun bm!366411 () Bool)

(declare-fun call!366416 () List!60684)

(assert (=> bm!366411 (= call!366416 call!366417)))

(declare-fun c!897815 () Bool)

(declare-fun bm!366412 () Bool)

(assert (=> bm!366412 (= call!366418 (derivationStepZipperDown!243 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292)))))) (ite (or c!897815 c!897817) lt!2141743 (Context!8359 call!366416)) (h!67010 s!2326)))))

(declare-fun b!5207635 () Bool)

(declare-fun e!3242263 () Bool)

(assert (=> b!5207635 (= e!3242263 (nullable!4964 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))))))

(declare-fun b!5207636 () Bool)

(assert (=> b!5207636 (= c!897817 e!3242263)))

(declare-fun res!2212171 () Bool)

(assert (=> b!5207636 (=> (not res!2212171) (not e!3242263))))

(assert (=> b!5207636 (= res!2212171 ((_ is Concat!23640) (regTwo!30103 (regOne!30102 r!7292))))))

(assert (=> b!5207636 (= e!3242264 e!3242266)))

(declare-fun bm!366413 () Bool)

(assert (=> bm!366413 (= call!366415 call!366418)))

(declare-fun b!5207637 () Bool)

(assert (=> b!5207637 (= e!3242265 e!3242264)))

(assert (=> b!5207637 (= c!897815 ((_ is Union!14795) (regTwo!30103 (regOne!30102 r!7292))))))

(declare-fun b!5207638 () Bool)

(assert (=> b!5207638 (= e!3242265 (store ((as const (Array Context!8358 Bool)) false) lt!2141743 true))))

(declare-fun bm!366414 () Bool)

(assert (=> bm!366414 (= call!366419 (derivationStepZipperDown!243 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))) (ite c!897815 lt!2141743 (Context!8359 call!366417)) (h!67010 s!2326)))))

(assert (= (and d!1679343 c!897818) b!5207638))

(assert (= (and d!1679343 (not c!897818)) b!5207637))

(assert (= (and b!5207637 c!897815) b!5207633))

(assert (= (and b!5207637 (not c!897815)) b!5207636))

(assert (= (and b!5207636 res!2212171) b!5207635))

(assert (= (and b!5207636 c!897817) b!5207632))

(assert (= (and b!5207636 (not c!897817)) b!5207631))

(assert (= (and b!5207631 c!897816) b!5207634))

(assert (= (and b!5207631 (not c!897816)) b!5207628))

(assert (= (and b!5207628 c!897819) b!5207630))

(assert (= (and b!5207628 (not c!897819)) b!5207629))

(assert (= (or b!5207634 b!5207630) bm!366411))

(assert (= (or b!5207634 b!5207630) bm!366409))

(assert (= (or b!5207632 bm!366411) bm!366410))

(assert (= (or b!5207632 bm!366409) bm!366413))

(assert (= (or b!5207633 bm!366413) bm!366412))

(assert (= (or b!5207633 b!5207632) bm!366414))

(declare-fun m!6258206 () Bool)

(assert (=> b!5207635 m!6258206))

(declare-fun m!6258208 () Bool)

(assert (=> bm!366412 m!6258208))

(declare-fun m!6258210 () Bool)

(assert (=> bm!366414 m!6258210))

(declare-fun m!6258212 () Bool)

(assert (=> bm!366410 m!6258212))

(assert (=> b!5207638 m!6258204))

(assert (=> b!5207280 d!1679343))

(declare-fun bs!1210229 () Bool)

(declare-fun b!5207782 () Bool)

(assert (= bs!1210229 (and b!5207782 b!5207268)))

(declare-fun lambda!261084 () Int)

(assert (=> bs!1210229 (not (= lambda!261084 lambda!261049))))

(assert (=> bs!1210229 (not (= lambda!261084 lambda!261050))))

(assert (=> b!5207782 true))

(assert (=> b!5207782 true))

(declare-fun bs!1210230 () Bool)

(declare-fun b!5207783 () Bool)

(assert (= bs!1210230 (and b!5207783 b!5207268)))

(declare-fun lambda!261085 () Int)

(assert (=> bs!1210230 (not (= lambda!261085 lambda!261049))))

(assert (=> bs!1210230 (= lambda!261085 lambda!261050)))

(declare-fun bs!1210231 () Bool)

(assert (= bs!1210231 (and b!5207783 b!5207782)))

(assert (=> bs!1210231 (not (= lambda!261085 lambda!261084))))

(assert (=> b!5207783 true))

(assert (=> b!5207783 true))

(declare-fun bm!366430 () Bool)

(declare-fun call!366436 () Bool)

(declare-fun c!897852 () Bool)

(assert (=> bm!366430 (= call!366436 (Exists!1976 (ite c!897852 lambda!261084 lambda!261085)))))

(declare-fun b!5207780 () Bool)

(declare-fun res!2212198 () Bool)

(declare-fun e!3242343 () Bool)

(assert (=> b!5207780 (=> res!2212198 e!3242343)))

(declare-fun call!366435 () Bool)

(assert (=> b!5207780 (= res!2212198 call!366435)))

(declare-fun e!3242346 () Bool)

(assert (=> b!5207780 (= e!3242346 e!3242343)))

(declare-fun b!5207781 () Bool)

(declare-fun e!3242341 () Bool)

(assert (=> b!5207781 (= e!3242341 (matchRSpec!1898 (regTwo!30103 r!7292) s!2326))))

(assert (=> b!5207782 (= e!3242343 call!366436)))

(assert (=> b!5207783 (= e!3242346 call!366436)))

(declare-fun d!1679345 () Bool)

(declare-fun c!897854 () Bool)

(assert (=> d!1679345 (= c!897854 ((_ is EmptyExpr!14795) r!7292))))

(declare-fun e!3242345 () Bool)

(assert (=> d!1679345 (= (matchRSpec!1898 r!7292 s!2326) e!3242345)))

(declare-fun b!5207784 () Bool)

(declare-fun e!3242342 () Bool)

(assert (=> b!5207784 (= e!3242342 e!3242346)))

(assert (=> b!5207784 (= c!897852 ((_ is Star!14795) r!7292))))

(declare-fun b!5207785 () Bool)

(declare-fun c!897853 () Bool)

(assert (=> b!5207785 (= c!897853 ((_ is ElementMatch!14795) r!7292))))

(declare-fun e!3242347 () Bool)

(declare-fun e!3242344 () Bool)

(assert (=> b!5207785 (= e!3242347 e!3242344)))

(declare-fun b!5207786 () Bool)

(assert (=> b!5207786 (= e!3242344 (= s!2326 (Cons!60562 (c!897710 r!7292) Nil!60562)))))

(declare-fun b!5207787 () Bool)

(assert (=> b!5207787 (= e!3242345 call!366435)))

(declare-fun b!5207788 () Bool)

(declare-fun c!897851 () Bool)

(assert (=> b!5207788 (= c!897851 ((_ is Union!14795) r!7292))))

(assert (=> b!5207788 (= e!3242344 e!3242342)))

(declare-fun b!5207789 () Bool)

(assert (=> b!5207789 (= e!3242342 e!3242341)))

(declare-fun res!2212197 () Bool)

(assert (=> b!5207789 (= res!2212197 (matchRSpec!1898 (regOne!30103 r!7292) s!2326))))

(assert (=> b!5207789 (=> res!2212197 e!3242341)))

(declare-fun b!5207790 () Bool)

(assert (=> b!5207790 (= e!3242345 e!3242347)))

(declare-fun res!2212199 () Bool)

(assert (=> b!5207790 (= res!2212199 (not ((_ is EmptyLang!14795) r!7292)))))

(assert (=> b!5207790 (=> (not res!2212199) (not e!3242347))))

(declare-fun bm!366431 () Bool)

(assert (=> bm!366431 (= call!366435 (isEmpty!32473 s!2326))))

(assert (= (and d!1679345 c!897854) b!5207787))

(assert (= (and d!1679345 (not c!897854)) b!5207790))

(assert (= (and b!5207790 res!2212199) b!5207785))

(assert (= (and b!5207785 c!897853) b!5207786))

(assert (= (and b!5207785 (not c!897853)) b!5207788))

(assert (= (and b!5207788 c!897851) b!5207789))

(assert (= (and b!5207788 (not c!897851)) b!5207784))

(assert (= (and b!5207789 (not res!2212197)) b!5207781))

(assert (= (and b!5207784 c!897852) b!5207780))

(assert (= (and b!5207784 (not c!897852)) b!5207783))

(assert (= (and b!5207780 (not res!2212198)) b!5207782))

(assert (= (or b!5207782 b!5207783) bm!366430))

(assert (= (or b!5207787 b!5207780) bm!366431))

(declare-fun m!6258284 () Bool)

(assert (=> bm!366430 m!6258284))

(declare-fun m!6258286 () Bool)

(assert (=> b!5207781 m!6258286))

(declare-fun m!6258288 () Bool)

(assert (=> b!5207789 m!6258288))

(declare-fun m!6258290 () Bool)

(assert (=> bm!366431 m!6258290))

(assert (=> b!5207261 d!1679345))

(declare-fun b!5207819 () Bool)

(declare-fun res!2212216 () Bool)

(declare-fun e!3242362 () Bool)

(assert (=> b!5207819 (=> res!2212216 e!3242362)))

(assert (=> b!5207819 (= res!2212216 (not (isEmpty!32473 (tail!10262 s!2326))))))

(declare-fun b!5207820 () Bool)

(declare-fun e!3242364 () Bool)

(assert (=> b!5207820 (= e!3242364 (= (head!11165 s!2326) (c!897710 r!7292)))))

(declare-fun b!5207821 () Bool)

(declare-fun e!3242366 () Bool)

(assert (=> b!5207821 (= e!3242366 e!3242362)))

(declare-fun res!2212222 () Bool)

(assert (=> b!5207821 (=> res!2212222 e!3242362)))

(declare-fun call!366439 () Bool)

(assert (=> b!5207821 (= res!2212222 call!366439)))

(declare-fun b!5207822 () Bool)

(assert (=> b!5207822 (= e!3242362 (not (= (head!11165 s!2326) (c!897710 r!7292))))))

(declare-fun b!5207823 () Bool)

(declare-fun res!2212220 () Bool)

(declare-fun e!3242365 () Bool)

(assert (=> b!5207823 (=> res!2212220 e!3242365)))

(assert (=> b!5207823 (= res!2212220 e!3242364)))

(declare-fun res!2212221 () Bool)

(assert (=> b!5207823 (=> (not res!2212221) (not e!3242364))))

(declare-fun lt!2141791 () Bool)

(assert (=> b!5207823 (= res!2212221 lt!2141791)))

(declare-fun b!5207824 () Bool)

(declare-fun res!2212218 () Bool)

(assert (=> b!5207824 (=> (not res!2212218) (not e!3242364))))

(assert (=> b!5207824 (= res!2212218 (isEmpty!32473 (tail!10262 s!2326)))))

(declare-fun b!5207826 () Bool)

(assert (=> b!5207826 (= e!3242365 e!3242366)))

(declare-fun res!2212223 () Bool)

(assert (=> b!5207826 (=> (not res!2212223) (not e!3242366))))

(assert (=> b!5207826 (= res!2212223 (not lt!2141791))))

(declare-fun b!5207827 () Bool)

(declare-fun e!3242368 () Bool)

(declare-fun derivativeStep!4045 (Regex!14795 C!29860) Regex!14795)

(assert (=> b!5207827 (= e!3242368 (matchR!6980 (derivativeStep!4045 r!7292 (head!11165 s!2326)) (tail!10262 s!2326)))))

(declare-fun bm!366434 () Bool)

(assert (=> bm!366434 (= call!366439 (isEmpty!32473 s!2326))))

(declare-fun b!5207828 () Bool)

(declare-fun e!3242363 () Bool)

(declare-fun e!3242367 () Bool)

(assert (=> b!5207828 (= e!3242363 e!3242367)))

(declare-fun c!897862 () Bool)

(assert (=> b!5207828 (= c!897862 ((_ is EmptyLang!14795) r!7292))))

(declare-fun b!5207829 () Bool)

(declare-fun res!2212217 () Bool)

(assert (=> b!5207829 (=> (not res!2212217) (not e!3242364))))

(assert (=> b!5207829 (= res!2212217 (not call!366439))))

(declare-fun b!5207830 () Bool)

(declare-fun res!2212219 () Bool)

(assert (=> b!5207830 (=> res!2212219 e!3242365)))

(assert (=> b!5207830 (= res!2212219 (not ((_ is ElementMatch!14795) r!7292)))))

(assert (=> b!5207830 (= e!3242367 e!3242365)))

(declare-fun b!5207825 () Bool)

(assert (=> b!5207825 (= e!3242368 (nullable!4964 r!7292))))

(declare-fun d!1679375 () Bool)

(assert (=> d!1679375 e!3242363))

(declare-fun c!897863 () Bool)

(assert (=> d!1679375 (= c!897863 ((_ is EmptyExpr!14795) r!7292))))

(assert (=> d!1679375 (= lt!2141791 e!3242368)))

(declare-fun c!897861 () Bool)

(assert (=> d!1679375 (= c!897861 (isEmpty!32473 s!2326))))

(assert (=> d!1679375 (validRegex!6531 r!7292)))

(assert (=> d!1679375 (= (matchR!6980 r!7292 s!2326) lt!2141791)))

(declare-fun b!5207831 () Bool)

(assert (=> b!5207831 (= e!3242367 (not lt!2141791))))

(declare-fun b!5207832 () Bool)

(assert (=> b!5207832 (= e!3242363 (= lt!2141791 call!366439))))

(assert (= (and d!1679375 c!897861) b!5207825))

(assert (= (and d!1679375 (not c!897861)) b!5207827))

(assert (= (and d!1679375 c!897863) b!5207832))

(assert (= (and d!1679375 (not c!897863)) b!5207828))

(assert (= (and b!5207828 c!897862) b!5207831))

(assert (= (and b!5207828 (not c!897862)) b!5207830))

(assert (= (and b!5207830 (not res!2212219)) b!5207823))

(assert (= (and b!5207823 res!2212221) b!5207829))

(assert (= (and b!5207829 res!2212217) b!5207824))

(assert (= (and b!5207824 res!2212218) b!5207820))

(assert (= (and b!5207823 (not res!2212220)) b!5207826))

(assert (= (and b!5207826 res!2212223) b!5207821))

(assert (= (and b!5207821 (not res!2212222)) b!5207819))

(assert (= (and b!5207819 (not res!2212216)) b!5207822))

(assert (= (or b!5207832 b!5207821 b!5207829) bm!366434))

(declare-fun m!6258292 () Bool)

(assert (=> b!5207822 m!6258292))

(declare-fun m!6258294 () Bool)

(assert (=> b!5207824 m!6258294))

(assert (=> b!5207824 m!6258294))

(declare-fun m!6258296 () Bool)

(assert (=> b!5207824 m!6258296))

(assert (=> bm!366434 m!6258290))

(declare-fun m!6258298 () Bool)

(assert (=> b!5207825 m!6258298))

(assert (=> b!5207827 m!6258292))

(assert (=> b!5207827 m!6258292))

(declare-fun m!6258300 () Bool)

(assert (=> b!5207827 m!6258300))

(assert (=> b!5207827 m!6258294))

(assert (=> b!5207827 m!6258300))

(assert (=> b!5207827 m!6258294))

(declare-fun m!6258302 () Bool)

(assert (=> b!5207827 m!6258302))

(assert (=> b!5207819 m!6258294))

(assert (=> b!5207819 m!6258294))

(assert (=> b!5207819 m!6258296))

(assert (=> b!5207820 m!6258292))

(assert (=> d!1679375 m!6258290))

(assert (=> d!1679375 m!6258026))

(assert (=> b!5207261 d!1679375))

(declare-fun d!1679377 () Bool)

(assert (=> d!1679377 (= (matchR!6980 r!7292 s!2326) (matchRSpec!1898 r!7292 s!2326))))

(declare-fun lt!2141794 () Unit!152446)

(declare-fun choose!38714 (Regex!14795 List!60686) Unit!152446)

(assert (=> d!1679377 (= lt!2141794 (choose!38714 r!7292 s!2326))))

(assert (=> d!1679377 (validRegex!6531 r!7292)))

(assert (=> d!1679377 (= (mainMatchTheorem!1898 r!7292 s!2326) lt!2141794)))

(declare-fun bs!1210232 () Bool)

(assert (= bs!1210232 d!1679377))

(assert (=> bs!1210232 m!6258018))

(assert (=> bs!1210232 m!6258016))

(declare-fun m!6258304 () Bool)

(assert (=> bs!1210232 m!6258304))

(assert (=> bs!1210232 m!6258026))

(assert (=> b!5207261 d!1679377))

(declare-fun d!1679379 () Bool)

(assert (=> d!1679379 (= (isEmpty!32469 (t!373843 (exprs!4679 (h!67009 zl!343)))) ((_ is Nil!60560) (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(assert (=> b!5207282 d!1679379))

(declare-fun b!5207853 () Bool)

(declare-fun e!3242384 () Bool)

(declare-fun lt!2141797 () Regex!14795)

(declare-fun isEmptyLang!768 (Regex!14795) Bool)

(assert (=> b!5207853 (= e!3242384 (isEmptyLang!768 lt!2141797))))

(declare-fun b!5207854 () Bool)

(declare-fun e!3242382 () Bool)

(assert (=> b!5207854 (= e!3242384 e!3242382)))

(declare-fun c!897873 () Bool)

(declare-fun tail!10263 (List!60684) List!60684)

(assert (=> b!5207854 (= c!897873 (isEmpty!32469 (tail!10263 (unfocusZipperList!237 zl!343))))))

(declare-fun b!5207855 () Bool)

(declare-fun isUnion!200 (Regex!14795) Bool)

(assert (=> b!5207855 (= e!3242382 (isUnion!200 lt!2141797))))

(declare-fun b!5207856 () Bool)

(declare-fun e!3242386 () Bool)

(assert (=> b!5207856 (= e!3242386 (isEmpty!32469 (t!373843 (unfocusZipperList!237 zl!343))))))

(declare-fun d!1679381 () Bool)

(declare-fun e!3242383 () Bool)

(assert (=> d!1679381 e!3242383))

(declare-fun res!2212228 () Bool)

(assert (=> d!1679381 (=> (not res!2212228) (not e!3242383))))

(assert (=> d!1679381 (= res!2212228 (validRegex!6531 lt!2141797))))

(declare-fun e!3242385 () Regex!14795)

(assert (=> d!1679381 (= lt!2141797 e!3242385)))

(declare-fun c!897874 () Bool)

(assert (=> d!1679381 (= c!897874 e!3242386)))

(declare-fun res!2212229 () Bool)

(assert (=> d!1679381 (=> (not res!2212229) (not e!3242386))))

(assert (=> d!1679381 (= res!2212229 ((_ is Cons!60560) (unfocusZipperList!237 zl!343)))))

(declare-fun lambda!261088 () Int)

(declare-fun forall!14231 (List!60684 Int) Bool)

(assert (=> d!1679381 (forall!14231 (unfocusZipperList!237 zl!343) lambda!261088)))

(assert (=> d!1679381 (= (generalisedUnion!724 (unfocusZipperList!237 zl!343)) lt!2141797)))

(declare-fun b!5207857 () Bool)

(declare-fun head!11166 (List!60684) Regex!14795)

(assert (=> b!5207857 (= e!3242382 (= lt!2141797 (head!11166 (unfocusZipperList!237 zl!343))))))

(declare-fun b!5207858 () Bool)

(declare-fun e!3242381 () Regex!14795)

(assert (=> b!5207858 (= e!3242385 e!3242381)))

(declare-fun c!897875 () Bool)

(assert (=> b!5207858 (= c!897875 ((_ is Cons!60560) (unfocusZipperList!237 zl!343)))))

(declare-fun b!5207859 () Bool)

(assert (=> b!5207859 (= e!3242381 EmptyLang!14795)))

(declare-fun b!5207860 () Bool)

(assert (=> b!5207860 (= e!3242383 e!3242384)))

(declare-fun c!897872 () Bool)

(assert (=> b!5207860 (= c!897872 (isEmpty!32469 (unfocusZipperList!237 zl!343)))))

(declare-fun b!5207861 () Bool)

(assert (=> b!5207861 (= e!3242381 (Union!14795 (h!67008 (unfocusZipperList!237 zl!343)) (generalisedUnion!724 (t!373843 (unfocusZipperList!237 zl!343)))))))

(declare-fun b!5207862 () Bool)

(assert (=> b!5207862 (= e!3242385 (h!67008 (unfocusZipperList!237 zl!343)))))

(assert (= (and d!1679381 res!2212229) b!5207856))

(assert (= (and d!1679381 c!897874) b!5207862))

(assert (= (and d!1679381 (not c!897874)) b!5207858))

(assert (= (and b!5207858 c!897875) b!5207861))

(assert (= (and b!5207858 (not c!897875)) b!5207859))

(assert (= (and d!1679381 res!2212228) b!5207860))

(assert (= (and b!5207860 c!897872) b!5207853))

(assert (= (and b!5207860 (not c!897872)) b!5207854))

(assert (= (and b!5207854 c!897873) b!5207857))

(assert (= (and b!5207854 (not c!897873)) b!5207855))

(declare-fun m!6258306 () Bool)

(assert (=> b!5207856 m!6258306))

(assert (=> b!5207854 m!6257998))

(declare-fun m!6258308 () Bool)

(assert (=> b!5207854 m!6258308))

(assert (=> b!5207854 m!6258308))

(declare-fun m!6258310 () Bool)

(assert (=> b!5207854 m!6258310))

(declare-fun m!6258312 () Bool)

(assert (=> d!1679381 m!6258312))

(assert (=> d!1679381 m!6257998))

(declare-fun m!6258314 () Bool)

(assert (=> d!1679381 m!6258314))

(assert (=> b!5207860 m!6257998))

(declare-fun m!6258316 () Bool)

(assert (=> b!5207860 m!6258316))

(declare-fun m!6258318 () Bool)

(assert (=> b!5207853 m!6258318))

(declare-fun m!6258320 () Bool)

(assert (=> b!5207861 m!6258320))

(assert (=> b!5207857 m!6257998))

(declare-fun m!6258322 () Bool)

(assert (=> b!5207857 m!6258322))

(declare-fun m!6258324 () Bool)

(assert (=> b!5207855 m!6258324))

(assert (=> b!5207263 d!1679381))

(declare-fun bs!1210233 () Bool)

(declare-fun d!1679383 () Bool)

(assert (= bs!1210233 (and d!1679383 d!1679381)))

(declare-fun lambda!261091 () Int)

(assert (=> bs!1210233 (= lambda!261091 lambda!261088)))

(declare-fun lt!2141800 () List!60684)

(assert (=> d!1679383 (forall!14231 lt!2141800 lambda!261091)))

(declare-fun e!3242389 () List!60684)

(assert (=> d!1679383 (= lt!2141800 e!3242389)))

(declare-fun c!897878 () Bool)

(assert (=> d!1679383 (= c!897878 ((_ is Cons!60561) zl!343))))

(assert (=> d!1679383 (= (unfocusZipperList!237 zl!343) lt!2141800)))

(declare-fun b!5207867 () Bool)

(assert (=> b!5207867 (= e!3242389 (Cons!60560 (generalisedConcat!464 (exprs!4679 (h!67009 zl!343))) (unfocusZipperList!237 (t!373844 zl!343))))))

(declare-fun b!5207868 () Bool)

(assert (=> b!5207868 (= e!3242389 Nil!60560)))

(assert (= (and d!1679383 c!897878) b!5207867))

(assert (= (and d!1679383 (not c!897878)) b!5207868))

(declare-fun m!6258326 () Bool)

(assert (=> d!1679383 m!6258326))

(assert (=> b!5207867 m!6258022))

(declare-fun m!6258328 () Bool)

(assert (=> b!5207867 m!6258328))

(assert (=> b!5207263 d!1679383))

(declare-fun d!1679385 () Bool)

(declare-fun lt!2141803 () Regex!14795)

(assert (=> d!1679385 (validRegex!6531 lt!2141803)))

(assert (=> d!1679385 (= lt!2141803 (generalisedUnion!724 (unfocusZipperList!237 zl!343)))))

(assert (=> d!1679385 (= (unfocusZipper!537 zl!343) lt!2141803)))

(declare-fun bs!1210234 () Bool)

(assert (= bs!1210234 d!1679385))

(declare-fun m!6258330 () Bool)

(assert (=> bs!1210234 m!6258330))

(assert (=> bs!1210234 m!6257998))

(assert (=> bs!1210234 m!6257998))

(assert (=> bs!1210234 m!6258000))

(assert (=> b!5207262 d!1679385))

(declare-fun bs!1210235 () Bool)

(declare-fun d!1679387 () Bool)

(assert (= bs!1210235 (and d!1679387 d!1679381)))

(declare-fun lambda!261094 () Int)

(assert (=> bs!1210235 (= lambda!261094 lambda!261088)))

(declare-fun bs!1210236 () Bool)

(assert (= bs!1210236 (and d!1679387 d!1679383)))

(assert (=> bs!1210236 (= lambda!261094 lambda!261091)))

(assert (=> d!1679387 (= (inv!80234 setElem!33064) (forall!14231 (exprs!4679 setElem!33064) lambda!261094))))

(declare-fun bs!1210237 () Bool)

(assert (= bs!1210237 d!1679387))

(declare-fun m!6258332 () Bool)

(assert (=> bs!1210237 m!6258332))

(assert (=> setNonEmpty!33064 d!1679387))

(declare-fun d!1679389 () Bool)

(declare-fun choose!38715 ((InoxSet Context!8358) Int) (InoxSet Context!8358))

(assert (=> d!1679389 (= (flatMap!522 z!1189 lambda!261051) (choose!38715 z!1189 lambda!261051))))

(declare-fun bs!1210238 () Bool)

(assert (= bs!1210238 d!1679389))

(declare-fun m!6258334 () Bool)

(assert (=> bs!1210238 m!6258334))

(assert (=> b!5207273 d!1679389))

(declare-fun d!1679391 () Bool)

(declare-fun nullableFct!1375 (Regex!14795) Bool)

(assert (=> d!1679391 (= (nullable!4964 (h!67008 (exprs!4679 (h!67009 zl!343)))) (nullableFct!1375 (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun bs!1210239 () Bool)

(assert (= bs!1210239 d!1679391))

(declare-fun m!6258336 () Bool)

(assert (=> bs!1210239 m!6258336))

(assert (=> b!5207273 d!1679391))

(declare-fun b!5207879 () Bool)

(declare-fun e!3242396 () Bool)

(assert (=> b!5207879 (= e!3242396 (nullable!4964 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun b!5207880 () Bool)

(declare-fun e!3242397 () (InoxSet Context!8358))

(declare-fun call!366442 () (InoxSet Context!8358))

(assert (=> b!5207880 (= e!3242397 call!366442)))

(declare-fun b!5207881 () Bool)

(assert (=> b!5207881 (= e!3242397 ((as const (Array Context!8358 Bool)) false))))

(declare-fun e!3242398 () (InoxSet Context!8358))

(declare-fun b!5207882 () Bool)

(assert (=> b!5207882 (= e!3242398 ((_ map or) call!366442 (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (h!67010 s!2326))))))

(declare-fun bm!366437 () Bool)

(assert (=> bm!366437 (= call!366442 (derivationStepZipperDown!243 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))) (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (h!67010 s!2326)))))

(declare-fun d!1679393 () Bool)

(declare-fun c!897883 () Bool)

(assert (=> d!1679393 (= c!897883 e!3242396)))

(declare-fun res!2212232 () Bool)

(assert (=> d!1679393 (=> (not res!2212232) (not e!3242396))))

(assert (=> d!1679393 (= res!2212232 ((_ is Cons!60560) (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))

(assert (=> d!1679393 (= (derivationStepZipperUp!167 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))) (h!67010 s!2326)) e!3242398)))

(declare-fun b!5207883 () Bool)

(assert (=> b!5207883 (= e!3242398 e!3242397)))

(declare-fun c!897884 () Bool)

(assert (=> b!5207883 (= c!897884 ((_ is Cons!60560) (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))

(assert (= (and d!1679393 res!2212232) b!5207879))

(assert (= (and d!1679393 c!897883) b!5207882))

(assert (= (and d!1679393 (not c!897883)) b!5207883))

(assert (= (and b!5207883 c!897884) b!5207880))

(assert (= (and b!5207883 (not c!897884)) b!5207881))

(assert (= (or b!5207882 b!5207880) bm!366437))

(declare-fun m!6258338 () Bool)

(assert (=> b!5207879 m!6258338))

(declare-fun m!6258340 () Bool)

(assert (=> b!5207882 m!6258340))

(declare-fun m!6258342 () Bool)

(assert (=> bm!366437 m!6258342))

(assert (=> b!5207273 d!1679393))

(declare-fun d!1679395 () Bool)

(declare-fun dynLambda!23923 (Int Context!8358) (InoxSet Context!8358))

(assert (=> d!1679395 (= (flatMap!522 z!1189 lambda!261051) (dynLambda!23923 lambda!261051 (h!67009 zl!343)))))

(declare-fun lt!2141806 () Unit!152446)

(declare-fun choose!38716 ((InoxSet Context!8358) Context!8358 Int) Unit!152446)

(assert (=> d!1679395 (= lt!2141806 (choose!38716 z!1189 (h!67009 zl!343) lambda!261051))))

(assert (=> d!1679395 (= z!1189 (store ((as const (Array Context!8358 Bool)) false) (h!67009 zl!343) true))))

(assert (=> d!1679395 (= (lemmaFlatMapOnSingletonSet!54 z!1189 (h!67009 zl!343) lambda!261051) lt!2141806)))

(declare-fun b_lambda!201473 () Bool)

(assert (=> (not b_lambda!201473) (not d!1679395)))

(declare-fun bs!1210240 () Bool)

(assert (= bs!1210240 d!1679395))

(assert (=> bs!1210240 m!6257982))

(declare-fun m!6258344 () Bool)

(assert (=> bs!1210240 m!6258344))

(declare-fun m!6258346 () Bool)

(assert (=> bs!1210240 m!6258346))

(declare-fun m!6258348 () Bool)

(assert (=> bs!1210240 m!6258348))

(assert (=> b!5207273 d!1679395))

(declare-fun b!5207884 () Bool)

(declare-fun e!3242399 () Bool)

(assert (=> b!5207884 (= e!3242399 (nullable!4964 (h!67008 (exprs!4679 lt!2141743))))))

(declare-fun b!5207885 () Bool)

(declare-fun e!3242400 () (InoxSet Context!8358))

(declare-fun call!366443 () (InoxSet Context!8358))

(assert (=> b!5207885 (= e!3242400 call!366443)))

(declare-fun b!5207886 () Bool)

(assert (=> b!5207886 (= e!3242400 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5207887 () Bool)

(declare-fun e!3242401 () (InoxSet Context!8358))

(assert (=> b!5207887 (= e!3242401 ((_ map or) call!366443 (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 lt!2141743))) (h!67010 s!2326))))))

(declare-fun bm!366438 () Bool)

(assert (=> bm!366438 (= call!366443 (derivationStepZipperDown!243 (h!67008 (exprs!4679 lt!2141743)) (Context!8359 (t!373843 (exprs!4679 lt!2141743))) (h!67010 s!2326)))))

(declare-fun d!1679397 () Bool)

(declare-fun c!897885 () Bool)

(assert (=> d!1679397 (= c!897885 e!3242399)))

(declare-fun res!2212233 () Bool)

(assert (=> d!1679397 (=> (not res!2212233) (not e!3242399))))

(assert (=> d!1679397 (= res!2212233 ((_ is Cons!60560) (exprs!4679 lt!2141743)))))

(assert (=> d!1679397 (= (derivationStepZipperUp!167 lt!2141743 (h!67010 s!2326)) e!3242401)))

(declare-fun b!5207888 () Bool)

(assert (=> b!5207888 (= e!3242401 e!3242400)))

(declare-fun c!897886 () Bool)

(assert (=> b!5207888 (= c!897886 ((_ is Cons!60560) (exprs!4679 lt!2141743)))))

(assert (= (and d!1679397 res!2212233) b!5207884))

(assert (= (and d!1679397 c!897885) b!5207887))

(assert (= (and d!1679397 (not c!897885)) b!5207888))

(assert (= (and b!5207888 c!897886) b!5207885))

(assert (= (and b!5207888 (not c!897886)) b!5207886))

(assert (= (or b!5207887 b!5207885) bm!366438))

(declare-fun m!6258350 () Bool)

(assert (=> b!5207884 m!6258350))

(declare-fun m!6258352 () Bool)

(assert (=> b!5207887 m!6258352))

(declare-fun m!6258354 () Bool)

(assert (=> bm!366438 m!6258354))

(assert (=> b!5207273 d!1679397))

(declare-fun b!5207889 () Bool)

(declare-fun e!3242402 () Bool)

(assert (=> b!5207889 (= e!3242402 (nullable!4964 (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5207890 () Bool)

(declare-fun e!3242403 () (InoxSet Context!8358))

(declare-fun call!366444 () (InoxSet Context!8358))

(assert (=> b!5207890 (= e!3242403 call!366444)))

(declare-fun b!5207891 () Bool)

(assert (=> b!5207891 (= e!3242403 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5207892 () Bool)

(declare-fun e!3242404 () (InoxSet Context!8358))

(assert (=> b!5207892 (= e!3242404 ((_ map or) call!366444 (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))) (h!67010 s!2326))))))

(declare-fun bm!366439 () Bool)

(assert (=> bm!366439 (= call!366444 (derivationStepZipperDown!243 (h!67008 (exprs!4679 (h!67009 zl!343))) (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))) (h!67010 s!2326)))))

(declare-fun d!1679399 () Bool)

(declare-fun c!897887 () Bool)

(assert (=> d!1679399 (= c!897887 e!3242402)))

(declare-fun res!2212234 () Bool)

(assert (=> d!1679399 (=> (not res!2212234) (not e!3242402))))

(assert (=> d!1679399 (= res!2212234 ((_ is Cons!60560) (exprs!4679 (h!67009 zl!343))))))

(assert (=> d!1679399 (= (derivationStepZipperUp!167 (h!67009 zl!343) (h!67010 s!2326)) e!3242404)))

(declare-fun b!5207893 () Bool)

(assert (=> b!5207893 (= e!3242404 e!3242403)))

(declare-fun c!897888 () Bool)

(assert (=> b!5207893 (= c!897888 ((_ is Cons!60560) (exprs!4679 (h!67009 zl!343))))))

(assert (= (and d!1679399 res!2212234) b!5207889))

(assert (= (and d!1679399 c!897887) b!5207892))

(assert (= (and d!1679399 (not c!897887)) b!5207893))

(assert (= (and b!5207893 c!897888) b!5207890))

(assert (= (and b!5207893 (not c!897888)) b!5207891))

(assert (= (or b!5207892 b!5207890) bm!366439))

(assert (=> b!5207889 m!6257980))

(declare-fun m!6258356 () Bool)

(assert (=> b!5207892 m!6258356))

(declare-fun m!6258358 () Bool)

(assert (=> bm!366439 m!6258358))

(assert (=> b!5207273 d!1679399))

(declare-fun b!5207894 () Bool)

(declare-fun c!897893 () Bool)

(assert (=> b!5207894 (= c!897893 ((_ is Star!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun e!3242410 () (InoxSet Context!8358))

(declare-fun e!3242405 () (InoxSet Context!8358))

(assert (=> b!5207894 (= e!3242410 e!3242405)))

(declare-fun d!1679401 () Bool)

(declare-fun c!897892 () Bool)

(assert (=> d!1679401 (= c!897892 (and ((_ is ElementMatch!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))) (= (c!897710 (h!67008 (exprs!4679 (h!67009 zl!343)))) (h!67010 s!2326))))))

(declare-fun e!3242408 () (InoxSet Context!8358))

(assert (=> d!1679401 (= (derivationStepZipperDown!243 (h!67008 (exprs!4679 (h!67009 zl!343))) lt!2141743 (h!67010 s!2326)) e!3242408)))

(declare-fun b!5207895 () Bool)

(assert (=> b!5207895 (= e!3242405 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5207896 () Bool)

(declare-fun call!366445 () (InoxSet Context!8358))

(assert (=> b!5207896 (= e!3242405 call!366445)))

(declare-fun b!5207897 () Bool)

(declare-fun e!3242409 () (InoxSet Context!8358))

(assert (=> b!5207897 (= e!3242409 e!3242410)))

(declare-fun c!897890 () Bool)

(assert (=> b!5207897 (= c!897890 ((_ is Concat!23640) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun bm!366440 () Bool)

(declare-fun call!366446 () (InoxSet Context!8358))

(assert (=> bm!366440 (= call!366445 call!366446)))

(declare-fun b!5207898 () Bool)

(declare-fun call!366450 () (InoxSet Context!8358))

(assert (=> b!5207898 (= e!3242409 ((_ map or) call!366450 call!366446))))

(declare-fun c!897891 () Bool)

(declare-fun bm!366441 () Bool)

(declare-fun call!366448 () List!60684)

(assert (=> bm!366441 (= call!366448 ($colon$colon!1273 (exprs!4679 lt!2141743) (ite (or c!897891 c!897890) (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (h!67008 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun b!5207899 () Bool)

(declare-fun e!3242407 () (InoxSet Context!8358))

(declare-fun call!366449 () (InoxSet Context!8358))

(assert (=> b!5207899 (= e!3242407 ((_ map or) call!366450 call!366449))))

(declare-fun b!5207900 () Bool)

(assert (=> b!5207900 (= e!3242410 call!366445)))

(declare-fun bm!366442 () Bool)

(declare-fun call!366447 () List!60684)

(assert (=> bm!366442 (= call!366447 call!366448)))

(declare-fun c!897889 () Bool)

(declare-fun bm!366443 () Bool)

(assert (=> bm!366443 (= call!366449 (derivationStepZipperDown!243 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343))))))) (ite (or c!897889 c!897891) lt!2141743 (Context!8359 call!366447)) (h!67010 s!2326)))))

(declare-fun b!5207901 () Bool)

(declare-fun e!3242406 () Bool)

(assert (=> b!5207901 (= e!3242406 (nullable!4964 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun b!5207902 () Bool)

(assert (=> b!5207902 (= c!897891 e!3242406)))

(declare-fun res!2212235 () Bool)

(assert (=> b!5207902 (=> (not res!2212235) (not e!3242406))))

(assert (=> b!5207902 (= res!2212235 ((_ is Concat!23640) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(assert (=> b!5207902 (= e!3242407 e!3242409)))

(declare-fun bm!366444 () Bool)

(assert (=> bm!366444 (= call!366446 call!366449)))

(declare-fun b!5207903 () Bool)

(assert (=> b!5207903 (= e!3242408 e!3242407)))

(assert (=> b!5207903 (= c!897889 ((_ is Union!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5207904 () Bool)

(assert (=> b!5207904 (= e!3242408 (store ((as const (Array Context!8358 Bool)) false) lt!2141743 true))))

(declare-fun bm!366445 () Bool)

(assert (=> bm!366445 (= call!366450 (derivationStepZipperDown!243 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))) (ite c!897889 lt!2141743 (Context!8359 call!366448)) (h!67010 s!2326)))))

(assert (= (and d!1679401 c!897892) b!5207904))

(assert (= (and d!1679401 (not c!897892)) b!5207903))

(assert (= (and b!5207903 c!897889) b!5207899))

(assert (= (and b!5207903 (not c!897889)) b!5207902))

(assert (= (and b!5207902 res!2212235) b!5207901))

(assert (= (and b!5207902 c!897891) b!5207898))

(assert (= (and b!5207902 (not c!897891)) b!5207897))

(assert (= (and b!5207897 c!897890) b!5207900))

(assert (= (and b!5207897 (not c!897890)) b!5207894))

(assert (= (and b!5207894 c!897893) b!5207896))

(assert (= (and b!5207894 (not c!897893)) b!5207895))

(assert (= (or b!5207900 b!5207896) bm!366442))

(assert (= (or b!5207900 b!5207896) bm!366440))

(assert (= (or b!5207898 bm!366442) bm!366441))

(assert (= (or b!5207898 bm!366440) bm!366444))

(assert (= (or b!5207899 bm!366444) bm!366443))

(assert (= (or b!5207899 b!5207898) bm!366445))

(declare-fun m!6258360 () Bool)

(assert (=> b!5207901 m!6258360))

(declare-fun m!6258362 () Bool)

(assert (=> bm!366443 m!6258362))

(declare-fun m!6258364 () Bool)

(assert (=> bm!366445 m!6258364))

(declare-fun m!6258366 () Bool)

(assert (=> bm!366441 m!6258366))

(assert (=> b!5207904 m!6258204))

(assert (=> b!5207273 d!1679401))

(declare-fun bs!1210241 () Bool)

(declare-fun d!1679403 () Bool)

(assert (= bs!1210241 (and d!1679403 d!1679381)))

(declare-fun lambda!261095 () Int)

(assert (=> bs!1210241 (= lambda!261095 lambda!261088)))

(declare-fun bs!1210242 () Bool)

(assert (= bs!1210242 (and d!1679403 d!1679383)))

(assert (=> bs!1210242 (= lambda!261095 lambda!261091)))

(declare-fun bs!1210243 () Bool)

(assert (= bs!1210243 (and d!1679403 d!1679387)))

(assert (=> bs!1210243 (= lambda!261095 lambda!261094)))

(assert (=> d!1679403 (= (inv!80234 (h!67009 zl!343)) (forall!14231 (exprs!4679 (h!67009 zl!343)) lambda!261095))))

(declare-fun bs!1210244 () Bool)

(assert (= bs!1210244 d!1679403))

(declare-fun m!6258368 () Bool)

(assert (=> bs!1210244 m!6258368))

(assert (=> b!5207272 d!1679403))

(declare-fun d!1679405 () Bool)

(assert (=> d!1679405 (= (isEmpty!32470 (t!373844 zl!343)) ((_ is Nil!60561) (t!373844 zl!343)))))

(assert (=> b!5207283 d!1679405))

(declare-fun d!1679407 () Bool)

(declare-fun e!3242413 () Bool)

(assert (=> d!1679407 e!3242413))

(declare-fun res!2212238 () Bool)

(assert (=> d!1679407 (=> (not res!2212238) (not e!3242413))))

(declare-fun lt!2141809 () List!60685)

(declare-fun noDuplicate!1179 (List!60685) Bool)

(assert (=> d!1679407 (= res!2212238 (noDuplicate!1179 lt!2141809))))

(declare-fun choose!38717 ((InoxSet Context!8358)) List!60685)

(assert (=> d!1679407 (= lt!2141809 (choose!38717 z!1189))))

(assert (=> d!1679407 (= (toList!8579 z!1189) lt!2141809)))

(declare-fun b!5207907 () Bool)

(declare-fun content!10723 (List!60685) (InoxSet Context!8358))

(assert (=> b!5207907 (= e!3242413 (= (content!10723 lt!2141809) z!1189))))

(assert (= (and d!1679407 res!2212238) b!5207907))

(declare-fun m!6258370 () Bool)

(assert (=> d!1679407 m!6258370))

(declare-fun m!6258372 () Bool)

(assert (=> d!1679407 m!6258372))

(declare-fun m!6258374 () Bool)

(assert (=> b!5207907 m!6258374))

(assert (=> b!5207265 d!1679407))

(declare-fun b!5207908 () Bool)

(declare-fun e!3242417 () Bool)

(declare-fun call!366453 () Bool)

(assert (=> b!5207908 (= e!3242417 call!366453)))

(declare-fun b!5207909 () Bool)

(declare-fun e!3242416 () Bool)

(assert (=> b!5207909 (= e!3242416 call!366453)))

(declare-fun b!5207910 () Bool)

(declare-fun res!2212239 () Bool)

(declare-fun e!3242419 () Bool)

(assert (=> b!5207910 (=> res!2212239 e!3242419)))

(assert (=> b!5207910 (= res!2212239 (not ((_ is Concat!23640) (regOne!30103 (regOne!30102 r!7292)))))))

(declare-fun e!3242414 () Bool)

(assert (=> b!5207910 (= e!3242414 e!3242419)))

(declare-fun b!5207912 () Bool)

(declare-fun e!3242420 () Bool)

(declare-fun e!3242415 () Bool)

(assert (=> b!5207912 (= e!3242420 e!3242415)))

(declare-fun res!2212240 () Bool)

(assert (=> b!5207912 (= res!2212240 (not (nullable!4964 (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))))

(assert (=> b!5207912 (=> (not res!2212240) (not e!3242415))))

(declare-fun bm!366446 () Bool)

(declare-fun call!366452 () Bool)

(assert (=> bm!366446 (= call!366453 call!366452)))

(declare-fun b!5207913 () Bool)

(declare-fun res!2212242 () Bool)

(assert (=> b!5207913 (=> (not res!2212242) (not e!3242417))))

(declare-fun call!366451 () Bool)

(assert (=> b!5207913 (= res!2212242 call!366451)))

(assert (=> b!5207913 (= e!3242414 e!3242417)))

(declare-fun b!5207914 () Bool)

(assert (=> b!5207914 (= e!3242419 e!3242416)))

(declare-fun res!2212243 () Bool)

(assert (=> b!5207914 (=> (not res!2212243) (not e!3242416))))

(assert (=> b!5207914 (= res!2212243 call!366451)))

(declare-fun b!5207915 () Bool)

(assert (=> b!5207915 (= e!3242415 call!366452)))

(declare-fun bm!366447 () Bool)

(declare-fun c!897894 () Bool)

(declare-fun c!897895 () Bool)

(assert (=> bm!366447 (= call!366452 (validRegex!6531 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))))))

(declare-fun d!1679409 () Bool)

(declare-fun res!2212241 () Bool)

(declare-fun e!3242418 () Bool)

(assert (=> d!1679409 (=> res!2212241 e!3242418)))

(assert (=> d!1679409 (= res!2212241 ((_ is ElementMatch!14795) (regOne!30103 (regOne!30102 r!7292))))))

(assert (=> d!1679409 (= (validRegex!6531 (regOne!30103 (regOne!30102 r!7292))) e!3242418)))

(declare-fun b!5207911 () Bool)

(assert (=> b!5207911 (= e!3242420 e!3242414)))

(assert (=> b!5207911 (= c!897895 ((_ is Union!14795) (regOne!30103 (regOne!30102 r!7292))))))

(declare-fun b!5207916 () Bool)

(assert (=> b!5207916 (= e!3242418 e!3242420)))

(assert (=> b!5207916 (= c!897894 ((_ is Star!14795) (regOne!30103 (regOne!30102 r!7292))))))

(declare-fun bm!366448 () Bool)

(assert (=> bm!366448 (= call!366451 (validRegex!6531 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(assert (= (and d!1679409 (not res!2212241)) b!5207916))

(assert (= (and b!5207916 c!897894) b!5207912))

(assert (= (and b!5207916 (not c!897894)) b!5207911))

(assert (= (and b!5207912 res!2212240) b!5207915))

(assert (= (and b!5207911 c!897895) b!5207913))

(assert (= (and b!5207911 (not c!897895)) b!5207910))

(assert (= (and b!5207913 res!2212242) b!5207908))

(assert (= (and b!5207910 (not res!2212239)) b!5207914))

(assert (= (and b!5207914 res!2212243) b!5207909))

(assert (= (or b!5207908 b!5207909) bm!366446))

(assert (= (or b!5207913 b!5207914) bm!366448))

(assert (= (or b!5207915 bm!366446) bm!366447))

(declare-fun m!6258376 () Bool)

(assert (=> b!5207912 m!6258376))

(declare-fun m!6258378 () Bool)

(assert (=> bm!366447 m!6258378))

(declare-fun m!6258380 () Bool)

(assert (=> bm!366448 m!6258380))

(assert (=> b!5207275 d!1679409))

(declare-fun b!5207935 () Bool)

(declare-fun e!3242432 () Bool)

(assert (=> b!5207935 (= e!3242432 (matchR!6980 (regTwo!30102 r!7292) s!2326))))

(declare-fun b!5207936 () Bool)

(declare-fun e!3242434 () Option!14906)

(assert (=> b!5207936 (= e!3242434 (Some!14905 (tuple2!63989 Nil!60562 s!2326)))))

(declare-fun b!5207937 () Bool)

(declare-fun res!2212256 () Bool)

(declare-fun e!3242431 () Bool)

(assert (=> b!5207937 (=> (not res!2212256) (not e!3242431))))

(declare-fun lt!2141816 () Option!14906)

(declare-fun get!20806 (Option!14906) tuple2!63988)

(assert (=> b!5207937 (= res!2212256 (matchR!6980 (regOne!30102 r!7292) (_1!35297 (get!20806 lt!2141816))))))

(declare-fun b!5207938 () Bool)

(declare-fun e!3242435 () Bool)

(assert (=> b!5207938 (= e!3242435 (not (isDefined!11609 lt!2141816)))))

(declare-fun b!5207939 () Bool)

(declare-fun e!3242433 () Option!14906)

(assert (=> b!5207939 (= e!3242433 None!14905)))

(declare-fun b!5207940 () Bool)

(declare-fun ++!13203 (List!60686 List!60686) List!60686)

(assert (=> b!5207940 (= e!3242431 (= (++!13203 (_1!35297 (get!20806 lt!2141816)) (_2!35297 (get!20806 lt!2141816))) s!2326))))

(declare-fun b!5207941 () Bool)

(declare-fun res!2212257 () Bool)

(assert (=> b!5207941 (=> (not res!2212257) (not e!3242431))))

(assert (=> b!5207941 (= res!2212257 (matchR!6980 (regTwo!30102 r!7292) (_2!35297 (get!20806 lt!2141816))))))

(declare-fun d!1679411 () Bool)

(assert (=> d!1679411 e!3242435))

(declare-fun res!2212258 () Bool)

(assert (=> d!1679411 (=> res!2212258 e!3242435)))

(assert (=> d!1679411 (= res!2212258 e!3242431)))

(declare-fun res!2212255 () Bool)

(assert (=> d!1679411 (=> (not res!2212255) (not e!3242431))))

(assert (=> d!1679411 (= res!2212255 (isDefined!11609 lt!2141816))))

(assert (=> d!1679411 (= lt!2141816 e!3242434)))

(declare-fun c!897900 () Bool)

(assert (=> d!1679411 (= c!897900 e!3242432)))

(declare-fun res!2212254 () Bool)

(assert (=> d!1679411 (=> (not res!2212254) (not e!3242432))))

(assert (=> d!1679411 (= res!2212254 (matchR!6980 (regOne!30102 r!7292) Nil!60562))))

(assert (=> d!1679411 (validRegex!6531 (regOne!30102 r!7292))))

(assert (=> d!1679411 (= (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326) lt!2141816)))

(declare-fun b!5207942 () Bool)

(assert (=> b!5207942 (= e!3242434 e!3242433)))

(declare-fun c!897901 () Bool)

(assert (=> b!5207942 (= c!897901 ((_ is Nil!60562) s!2326))))

(declare-fun b!5207943 () Bool)

(declare-fun lt!2141818 () Unit!152446)

(declare-fun lt!2141817 () Unit!152446)

(assert (=> b!5207943 (= lt!2141818 lt!2141817)))

(assert (=> b!5207943 (= (++!13203 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (t!373845 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1618 (List!60686 C!29860 List!60686 List!60686) Unit!152446)

(assert (=> b!5207943 (= lt!2141817 (lemmaMoveElementToOtherListKeepsConcatEq!1618 Nil!60562 (h!67010 s!2326) (t!373845 s!2326) s!2326))))

(assert (=> b!5207943 (= e!3242433 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (t!373845 s!2326) s!2326))))

(assert (= (and d!1679411 res!2212254) b!5207935))

(assert (= (and d!1679411 c!897900) b!5207936))

(assert (= (and d!1679411 (not c!897900)) b!5207942))

(assert (= (and b!5207942 c!897901) b!5207939))

(assert (= (and b!5207942 (not c!897901)) b!5207943))

(assert (= (and d!1679411 res!2212255) b!5207937))

(assert (= (and b!5207937 res!2212256) b!5207941))

(assert (= (and b!5207941 res!2212257) b!5207940))

(assert (= (and d!1679411 (not res!2212258)) b!5207938))

(declare-fun m!6258382 () Bool)

(assert (=> d!1679411 m!6258382))

(declare-fun m!6258384 () Bool)

(assert (=> d!1679411 m!6258384))

(declare-fun m!6258386 () Bool)

(assert (=> d!1679411 m!6258386))

(declare-fun m!6258388 () Bool)

(assert (=> b!5207941 m!6258388))

(declare-fun m!6258390 () Bool)

(assert (=> b!5207941 m!6258390))

(assert (=> b!5207938 m!6258382))

(assert (=> b!5207940 m!6258388))

(declare-fun m!6258392 () Bool)

(assert (=> b!5207940 m!6258392))

(declare-fun m!6258394 () Bool)

(assert (=> b!5207943 m!6258394))

(assert (=> b!5207943 m!6258394))

(declare-fun m!6258396 () Bool)

(assert (=> b!5207943 m!6258396))

(declare-fun m!6258398 () Bool)

(assert (=> b!5207943 m!6258398))

(assert (=> b!5207943 m!6258394))

(declare-fun m!6258400 () Bool)

(assert (=> b!5207943 m!6258400))

(declare-fun m!6258402 () Bool)

(assert (=> b!5207935 m!6258402))

(assert (=> b!5207937 m!6258388))

(declare-fun m!6258404 () Bool)

(assert (=> b!5207937 m!6258404))

(assert (=> b!5207268 d!1679411))

(declare-fun d!1679413 () Bool)

(declare-fun choose!38718 (Int) Bool)

(assert (=> d!1679413 (= (Exists!1976 lambda!261049) (choose!38718 lambda!261049))))

(declare-fun bs!1210245 () Bool)

(assert (= bs!1210245 d!1679413))

(declare-fun m!6258406 () Bool)

(assert (=> bs!1210245 m!6258406))

(assert (=> b!5207268 d!1679413))

(declare-fun d!1679415 () Bool)

(assert (=> d!1679415 (= (Exists!1976 lambda!261050) (choose!38718 lambda!261050))))

(declare-fun bs!1210246 () Bool)

(assert (= bs!1210246 d!1679415))

(declare-fun m!6258408 () Bool)

(assert (=> bs!1210246 m!6258408))

(assert (=> b!5207268 d!1679415))

(declare-fun bs!1210247 () Bool)

(declare-fun d!1679417 () Bool)

(assert (= bs!1210247 (and d!1679417 b!5207268)))

(declare-fun lambda!261098 () Int)

(assert (=> bs!1210247 (= lambda!261098 lambda!261049)))

(assert (=> bs!1210247 (not (= lambda!261098 lambda!261050))))

(declare-fun bs!1210248 () Bool)

(assert (= bs!1210248 (and d!1679417 b!5207782)))

(assert (=> bs!1210248 (not (= lambda!261098 lambda!261084))))

(declare-fun bs!1210249 () Bool)

(assert (= bs!1210249 (and d!1679417 b!5207783)))

(assert (=> bs!1210249 (not (= lambda!261098 lambda!261085))))

(assert (=> d!1679417 true))

(assert (=> d!1679417 true))

(assert (=> d!1679417 true))

(assert (=> d!1679417 (= (isDefined!11609 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326)) (Exists!1976 lambda!261098))))

(declare-fun lt!2141821 () Unit!152446)

(declare-fun choose!38719 (Regex!14795 Regex!14795 List!60686) Unit!152446)

(assert (=> d!1679417 (= lt!2141821 (choose!38719 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326))))

(assert (=> d!1679417 (validRegex!6531 (regOne!30102 r!7292))))

(assert (=> d!1679417 (= (lemmaFindConcatSeparationEquivalentToExists!1084 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326) lt!2141821)))

(declare-fun bs!1210250 () Bool)

(assert (= bs!1210250 d!1679417))

(assert (=> bs!1210250 m!6258002))

(assert (=> bs!1210250 m!6258386))

(declare-fun m!6258410 () Bool)

(assert (=> bs!1210250 m!6258410))

(declare-fun m!6258412 () Bool)

(assert (=> bs!1210250 m!6258412))

(assert (=> bs!1210250 m!6258002))

(assert (=> bs!1210250 m!6258004))

(assert (=> b!5207268 d!1679417))

(declare-fun bs!1210251 () Bool)

(declare-fun d!1679419 () Bool)

(assert (= bs!1210251 (and d!1679419 d!1679417)))

(declare-fun lambda!261103 () Int)

(assert (=> bs!1210251 (= lambda!261103 lambda!261098)))

(declare-fun bs!1210252 () Bool)

(assert (= bs!1210252 (and d!1679419 b!5207268)))

(assert (=> bs!1210252 (= lambda!261103 lambda!261049)))

(declare-fun bs!1210253 () Bool)

(assert (= bs!1210253 (and d!1679419 b!5207783)))

(assert (=> bs!1210253 (not (= lambda!261103 lambda!261085))))

(assert (=> bs!1210252 (not (= lambda!261103 lambda!261050))))

(declare-fun bs!1210254 () Bool)

(assert (= bs!1210254 (and d!1679419 b!5207782)))

(assert (=> bs!1210254 (not (= lambda!261103 lambda!261084))))

(assert (=> d!1679419 true))

(assert (=> d!1679419 true))

(assert (=> d!1679419 true))

(declare-fun bs!1210255 () Bool)

(assert (= bs!1210255 d!1679419))

(declare-fun lambda!261104 () Int)

(assert (=> bs!1210255 (not (= lambda!261104 lambda!261103))))

(assert (=> bs!1210251 (not (= lambda!261104 lambda!261098))))

(assert (=> bs!1210252 (not (= lambda!261104 lambda!261049))))

(assert (=> bs!1210253 (= lambda!261104 lambda!261085)))

(assert (=> bs!1210252 (= lambda!261104 lambda!261050)))

(assert (=> bs!1210254 (not (= lambda!261104 lambda!261084))))

(assert (=> d!1679419 true))

(assert (=> d!1679419 true))

(assert (=> d!1679419 true))

(assert (=> d!1679419 (= (Exists!1976 lambda!261103) (Exists!1976 lambda!261104))))

(declare-fun lt!2141824 () Unit!152446)

(declare-fun choose!38720 (Regex!14795 Regex!14795 List!60686) Unit!152446)

(assert (=> d!1679419 (= lt!2141824 (choose!38720 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326))))

(assert (=> d!1679419 (validRegex!6531 (regOne!30102 r!7292))))

(assert (=> d!1679419 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!630 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326) lt!2141824)))

(declare-fun m!6258414 () Bool)

(assert (=> bs!1210255 m!6258414))

(declare-fun m!6258416 () Bool)

(assert (=> bs!1210255 m!6258416))

(declare-fun m!6258418 () Bool)

(assert (=> bs!1210255 m!6258418))

(assert (=> bs!1210255 m!6258386))

(assert (=> b!5207268 d!1679419))

(declare-fun d!1679421 () Bool)

(declare-fun isEmpty!32474 (Option!14906) Bool)

(assert (=> d!1679421 (= (isDefined!11609 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326)) (not (isEmpty!32474 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326))))))

(declare-fun bs!1210256 () Bool)

(assert (= bs!1210256 d!1679421))

(assert (=> bs!1210256 m!6258002))

(declare-fun m!6258420 () Bool)

(assert (=> bs!1210256 m!6258420))

(assert (=> b!5207268 d!1679421))

(declare-fun d!1679423 () Bool)

(declare-fun c!897902 () Bool)

(assert (=> d!1679423 (= c!897902 (isEmpty!32473 (t!373845 s!2326)))))

(declare-fun e!3242442 () Bool)

(assert (=> d!1679423 (= (matchZipper!1039 lt!2141742 (t!373845 s!2326)) e!3242442)))

(declare-fun b!5207956 () Bool)

(assert (=> b!5207956 (= e!3242442 (nullableZipper!1223 lt!2141742))))

(declare-fun b!5207957 () Bool)

(assert (=> b!5207957 (= e!3242442 (matchZipper!1039 (derivationStepZipper!1067 lt!2141742 (head!11165 (t!373845 s!2326))) (tail!10262 (t!373845 s!2326))))))

(assert (= (and d!1679423 c!897902) b!5207956))

(assert (= (and d!1679423 (not c!897902)) b!5207957))

(assert (=> d!1679423 m!6258122))

(declare-fun m!6258422 () Bool)

(assert (=> b!5207956 m!6258422))

(assert (=> b!5207957 m!6258126))

(assert (=> b!5207957 m!6258126))

(declare-fun m!6258424 () Bool)

(assert (=> b!5207957 m!6258424))

(assert (=> b!5207957 m!6258130))

(assert (=> b!5207957 m!6258424))

(assert (=> b!5207957 m!6258130))

(declare-fun m!6258426 () Bool)

(assert (=> b!5207957 m!6258426))

(assert (=> b!5207277 d!1679423))

(declare-fun bs!1210257 () Bool)

(declare-fun d!1679425 () Bool)

(assert (= bs!1210257 (and d!1679425 d!1679381)))

(declare-fun lambda!261107 () Int)

(assert (=> bs!1210257 (= lambda!261107 lambda!261088)))

(declare-fun bs!1210258 () Bool)

(assert (= bs!1210258 (and d!1679425 d!1679383)))

(assert (=> bs!1210258 (= lambda!261107 lambda!261091)))

(declare-fun bs!1210259 () Bool)

(assert (= bs!1210259 (and d!1679425 d!1679387)))

(assert (=> bs!1210259 (= lambda!261107 lambda!261094)))

(declare-fun bs!1210260 () Bool)

(assert (= bs!1210260 (and d!1679425 d!1679403)))

(assert (=> bs!1210260 (= lambda!261107 lambda!261095)))

(declare-fun e!3242458 () Bool)

(assert (=> d!1679425 e!3242458))

(declare-fun res!2212275 () Bool)

(assert (=> d!1679425 (=> (not res!2212275) (not e!3242458))))

(declare-fun lt!2141827 () Regex!14795)

(assert (=> d!1679425 (= res!2212275 (validRegex!6531 lt!2141827))))

(declare-fun e!3242459 () Regex!14795)

(assert (=> d!1679425 (= lt!2141827 e!3242459)))

(declare-fun c!897913 () Bool)

(declare-fun e!3242455 () Bool)

(assert (=> d!1679425 (= c!897913 e!3242455)))

(declare-fun res!2212276 () Bool)

(assert (=> d!1679425 (=> (not res!2212276) (not e!3242455))))

(assert (=> d!1679425 (= res!2212276 ((_ is Cons!60560) (exprs!4679 (h!67009 zl!343))))))

(assert (=> d!1679425 (forall!14231 (exprs!4679 (h!67009 zl!343)) lambda!261107)))

(assert (=> d!1679425 (= (generalisedConcat!464 (exprs!4679 (h!67009 zl!343))) lt!2141827)))

(declare-fun b!5207978 () Bool)

(declare-fun e!3242456 () Regex!14795)

(assert (=> b!5207978 (= e!3242459 e!3242456)))

(declare-fun c!897912 () Bool)

(assert (=> b!5207978 (= c!897912 ((_ is Cons!60560) (exprs!4679 (h!67009 zl!343))))))

(declare-fun b!5207979 () Bool)

(assert (=> b!5207979 (= e!3242456 (Concat!23640 (h!67008 (exprs!4679 (h!67009 zl!343))) (generalisedConcat!464 (t!373843 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun b!5207980 () Bool)

(declare-fun e!3242460 () Bool)

(assert (=> b!5207980 (= e!3242458 e!3242460)))

(declare-fun c!897914 () Bool)

(assert (=> b!5207980 (= c!897914 (isEmpty!32469 (exprs!4679 (h!67009 zl!343))))))

(declare-fun b!5207981 () Bool)

(assert (=> b!5207981 (= e!3242455 (isEmpty!32469 (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5207982 () Bool)

(declare-fun isEmptyExpr!759 (Regex!14795) Bool)

(assert (=> b!5207982 (= e!3242460 (isEmptyExpr!759 lt!2141827))))

(declare-fun b!5207983 () Bool)

(assert (=> b!5207983 (= e!3242459 (h!67008 (exprs!4679 (h!67009 zl!343))))))

(declare-fun b!5207984 () Bool)

(declare-fun e!3242457 () Bool)

(declare-fun isConcat!282 (Regex!14795) Bool)

(assert (=> b!5207984 (= e!3242457 (isConcat!282 lt!2141827))))

(declare-fun b!5207985 () Bool)

(assert (=> b!5207985 (= e!3242457 (= lt!2141827 (head!11166 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5207986 () Bool)

(assert (=> b!5207986 (= e!3242456 EmptyExpr!14795)))

(declare-fun b!5207987 () Bool)

(assert (=> b!5207987 (= e!3242460 e!3242457)))

(declare-fun c!897911 () Bool)

(assert (=> b!5207987 (= c!897911 (isEmpty!32469 (tail!10263 (exprs!4679 (h!67009 zl!343)))))))

(assert (= (and d!1679425 res!2212276) b!5207981))

(assert (= (and d!1679425 c!897913) b!5207983))

(assert (= (and d!1679425 (not c!897913)) b!5207978))

(assert (= (and b!5207978 c!897912) b!5207979))

(assert (= (and b!5207978 (not c!897912)) b!5207986))

(assert (= (and d!1679425 res!2212275) b!5207980))

(assert (= (and b!5207980 c!897914) b!5207982))

(assert (= (and b!5207980 (not c!897914)) b!5207987))

(assert (= (and b!5207987 c!897911) b!5207985))

(assert (= (and b!5207987 (not c!897911)) b!5207984))

(declare-fun m!6258428 () Bool)

(assert (=> b!5207979 m!6258428))

(declare-fun m!6258430 () Bool)

(assert (=> b!5207985 m!6258430))

(declare-fun m!6258432 () Bool)

(assert (=> d!1679425 m!6258432))

(declare-fun m!6258434 () Bool)

(assert (=> d!1679425 m!6258434))

(declare-fun m!6258436 () Bool)

(assert (=> b!5207980 m!6258436))

(declare-fun m!6258438 () Bool)

(assert (=> b!5207987 m!6258438))

(assert (=> b!5207987 m!6258438))

(declare-fun m!6258440 () Bool)

(assert (=> b!5207987 m!6258440))

(assert (=> b!5207981 m!6257970))

(declare-fun m!6258442 () Bool)

(assert (=> b!5207984 m!6258442))

(declare-fun m!6258444 () Bool)

(assert (=> b!5207982 m!6258444))

(assert (=> b!5207269 d!1679425))

(declare-fun b!5207992 () Bool)

(declare-fun e!3242463 () Bool)

(declare-fun tp!1460574 () Bool)

(assert (=> b!5207992 (= e!3242463 (and tp_is_empty!38843 tp!1460574))))

(assert (=> b!5207274 (= tp!1460505 e!3242463)))

(assert (= (and b!5207274 ((_ is Cons!60562) (t!373845 s!2326))) b!5207992))

(declare-fun b!5208006 () Bool)

(declare-fun e!3242466 () Bool)

(declare-fun tp!1460587 () Bool)

(declare-fun tp!1460589 () Bool)

(assert (=> b!5208006 (= e!3242466 (and tp!1460587 tp!1460589))))

(assert (=> b!5207270 (= tp!1460506 e!3242466)))

(declare-fun b!5208004 () Bool)

(declare-fun tp!1460586 () Bool)

(declare-fun tp!1460588 () Bool)

(assert (=> b!5208004 (= e!3242466 (and tp!1460586 tp!1460588))))

(declare-fun b!5208003 () Bool)

(assert (=> b!5208003 (= e!3242466 tp_is_empty!38843)))

(declare-fun b!5208005 () Bool)

(declare-fun tp!1460585 () Bool)

(assert (=> b!5208005 (= e!3242466 tp!1460585)))

(assert (= (and b!5207270 ((_ is ElementMatch!14795) (reg!15124 r!7292))) b!5208003))

(assert (= (and b!5207270 ((_ is Concat!23640) (reg!15124 r!7292))) b!5208004))

(assert (= (and b!5207270 ((_ is Star!14795) (reg!15124 r!7292))) b!5208005))

(assert (= (and b!5207270 ((_ is Union!14795) (reg!15124 r!7292))) b!5208006))

(declare-fun b!5208010 () Bool)

(declare-fun e!3242467 () Bool)

(declare-fun tp!1460592 () Bool)

(declare-fun tp!1460594 () Bool)

(assert (=> b!5208010 (= e!3242467 (and tp!1460592 tp!1460594))))

(assert (=> b!5207271 (= tp!1460504 e!3242467)))

(declare-fun b!5208008 () Bool)

(declare-fun tp!1460591 () Bool)

(declare-fun tp!1460593 () Bool)

(assert (=> b!5208008 (= e!3242467 (and tp!1460591 tp!1460593))))

(declare-fun b!5208007 () Bool)

(assert (=> b!5208007 (= e!3242467 tp_is_empty!38843)))

(declare-fun b!5208009 () Bool)

(declare-fun tp!1460590 () Bool)

(assert (=> b!5208009 (= e!3242467 tp!1460590)))

(assert (= (and b!5207271 ((_ is ElementMatch!14795) (regOne!30103 r!7292))) b!5208007))

(assert (= (and b!5207271 ((_ is Concat!23640) (regOne!30103 r!7292))) b!5208008))

(assert (= (and b!5207271 ((_ is Star!14795) (regOne!30103 r!7292))) b!5208009))

(assert (= (and b!5207271 ((_ is Union!14795) (regOne!30103 r!7292))) b!5208010))

(declare-fun b!5208014 () Bool)

(declare-fun e!3242468 () Bool)

(declare-fun tp!1460597 () Bool)

(declare-fun tp!1460599 () Bool)

(assert (=> b!5208014 (= e!3242468 (and tp!1460597 tp!1460599))))

(assert (=> b!5207271 (= tp!1460513 e!3242468)))

(declare-fun b!5208012 () Bool)

(declare-fun tp!1460596 () Bool)

(declare-fun tp!1460598 () Bool)

(assert (=> b!5208012 (= e!3242468 (and tp!1460596 tp!1460598))))

(declare-fun b!5208011 () Bool)

(assert (=> b!5208011 (= e!3242468 tp_is_empty!38843)))

(declare-fun b!5208013 () Bool)

(declare-fun tp!1460595 () Bool)

(assert (=> b!5208013 (= e!3242468 tp!1460595)))

(assert (= (and b!5207271 ((_ is ElementMatch!14795) (regTwo!30103 r!7292))) b!5208011))

(assert (= (and b!5207271 ((_ is Concat!23640) (regTwo!30103 r!7292))) b!5208012))

(assert (= (and b!5207271 ((_ is Star!14795) (regTwo!30103 r!7292))) b!5208013))

(assert (= (and b!5207271 ((_ is Union!14795) (regTwo!30103 r!7292))) b!5208014))

(declare-fun b!5208018 () Bool)

(declare-fun e!3242469 () Bool)

(declare-fun tp!1460602 () Bool)

(declare-fun tp!1460604 () Bool)

(assert (=> b!5208018 (= e!3242469 (and tp!1460602 tp!1460604))))

(assert (=> b!5207266 (= tp!1460509 e!3242469)))

(declare-fun b!5208016 () Bool)

(declare-fun tp!1460601 () Bool)

(declare-fun tp!1460603 () Bool)

(assert (=> b!5208016 (= e!3242469 (and tp!1460601 tp!1460603))))

(declare-fun b!5208015 () Bool)

(assert (=> b!5208015 (= e!3242469 tp_is_empty!38843)))

(declare-fun b!5208017 () Bool)

(declare-fun tp!1460600 () Bool)

(assert (=> b!5208017 (= e!3242469 tp!1460600)))

(assert (= (and b!5207266 ((_ is ElementMatch!14795) (regOne!30102 r!7292))) b!5208015))

(assert (= (and b!5207266 ((_ is Concat!23640) (regOne!30102 r!7292))) b!5208016))

(assert (= (and b!5207266 ((_ is Star!14795) (regOne!30102 r!7292))) b!5208017))

(assert (= (and b!5207266 ((_ is Union!14795) (regOne!30102 r!7292))) b!5208018))

(declare-fun b!5208022 () Bool)

(declare-fun e!3242470 () Bool)

(declare-fun tp!1460607 () Bool)

(declare-fun tp!1460609 () Bool)

(assert (=> b!5208022 (= e!3242470 (and tp!1460607 tp!1460609))))

(assert (=> b!5207266 (= tp!1460511 e!3242470)))

(declare-fun b!5208020 () Bool)

(declare-fun tp!1460606 () Bool)

(declare-fun tp!1460608 () Bool)

(assert (=> b!5208020 (= e!3242470 (and tp!1460606 tp!1460608))))

(declare-fun b!5208019 () Bool)

(assert (=> b!5208019 (= e!3242470 tp_is_empty!38843)))

(declare-fun b!5208021 () Bool)

(declare-fun tp!1460605 () Bool)

(assert (=> b!5208021 (= e!3242470 tp!1460605)))

(assert (= (and b!5207266 ((_ is ElementMatch!14795) (regTwo!30102 r!7292))) b!5208019))

(assert (= (and b!5207266 ((_ is Concat!23640) (regTwo!30102 r!7292))) b!5208020))

(assert (= (and b!5207266 ((_ is Star!14795) (regTwo!30102 r!7292))) b!5208021))

(assert (= (and b!5207266 ((_ is Union!14795) (regTwo!30102 r!7292))) b!5208022))

(declare-fun b!5208027 () Bool)

(declare-fun e!3242473 () Bool)

(declare-fun tp!1460614 () Bool)

(declare-fun tp!1460615 () Bool)

(assert (=> b!5208027 (= e!3242473 (and tp!1460614 tp!1460615))))

(assert (=> b!5207276 (= tp!1460507 e!3242473)))

(assert (= (and b!5207276 ((_ is Cons!60560) (exprs!4679 setElem!33064))) b!5208027))

(declare-fun condSetEmpty!33070 () Bool)

(assert (=> setNonEmpty!33064 (= condSetEmpty!33070 (= setRest!33064 ((as const (Array Context!8358 Bool)) false)))))

(declare-fun setRes!33070 () Bool)

(assert (=> setNonEmpty!33064 (= tp!1460508 setRes!33070)))

(declare-fun setIsEmpty!33070 () Bool)

(assert (=> setIsEmpty!33070 setRes!33070))

(declare-fun e!3242476 () Bool)

(declare-fun setNonEmpty!33070 () Bool)

(declare-fun setElem!33070 () Context!8358)

(declare-fun tp!1460620 () Bool)

(assert (=> setNonEmpty!33070 (= setRes!33070 (and tp!1460620 (inv!80234 setElem!33070) e!3242476))))

(declare-fun setRest!33070 () (InoxSet Context!8358))

(assert (=> setNonEmpty!33070 (= setRest!33064 ((_ map or) (store ((as const (Array Context!8358 Bool)) false) setElem!33070 true) setRest!33070))))

(declare-fun b!5208032 () Bool)

(declare-fun tp!1460621 () Bool)

(assert (=> b!5208032 (= e!3242476 tp!1460621)))

(assert (= (and setNonEmpty!33064 condSetEmpty!33070) setIsEmpty!33070))

(assert (= (and setNonEmpty!33064 (not condSetEmpty!33070)) setNonEmpty!33070))

(assert (= setNonEmpty!33070 b!5208032))

(declare-fun m!6258446 () Bool)

(assert (=> setNonEmpty!33070 m!6258446))

(declare-fun b!5208033 () Bool)

(declare-fun e!3242477 () Bool)

(declare-fun tp!1460622 () Bool)

(declare-fun tp!1460623 () Bool)

(assert (=> b!5208033 (= e!3242477 (and tp!1460622 tp!1460623))))

(assert (=> b!5207264 (= tp!1460510 e!3242477)))

(assert (= (and b!5207264 ((_ is Cons!60560) (exprs!4679 (h!67009 zl!343)))) b!5208033))

(declare-fun b!5208041 () Bool)

(declare-fun e!3242483 () Bool)

(declare-fun tp!1460628 () Bool)

(assert (=> b!5208041 (= e!3242483 tp!1460628)))

(declare-fun b!5208040 () Bool)

(declare-fun tp!1460629 () Bool)

(declare-fun e!3242482 () Bool)

(assert (=> b!5208040 (= e!3242482 (and (inv!80234 (h!67009 (t!373844 zl!343))) e!3242483 tp!1460629))))

(assert (=> b!5207272 (= tp!1460512 e!3242482)))

(assert (= b!5208040 b!5208041))

(assert (= (and b!5207272 ((_ is Cons!60561) (t!373844 zl!343))) b!5208040))

(declare-fun m!6258448 () Bool)

(assert (=> b!5208040 m!6258448))

(declare-fun b_lambda!201475 () Bool)

(assert (= b_lambda!201473 (or b!5207273 b_lambda!201475)))

(declare-fun bs!1210261 () Bool)

(declare-fun d!1679427 () Bool)

(assert (= bs!1210261 (and d!1679427 b!5207273)))

(assert (=> bs!1210261 (= (dynLambda!23923 lambda!261051 (h!67009 zl!343)) (derivationStepZipperUp!167 (h!67009 zl!343) (h!67010 s!2326)))))

(assert (=> bs!1210261 m!6257976))

(assert (=> d!1679395 d!1679427))

(check-sat (not bm!366412) (not b!5207635) (not b!5208041) (not b!5208018) (not b!5207940) (not b!5208009) (not d!1679413) (not b!5207498) (not b!5207853) (not b!5207855) (not b!5207827) (not d!1679411) (not b!5208022) (not d!1679423) (not bm!366445) (not bm!366448) (not b!5207985) (not bm!366406) (not b!5207824) (not b!5208040) (not setNonEmpty!33070) (not bm!366414) (not b!5208005) (not bm!366430) (not bm!366404) (not b!5207979) (not b!5207789) (not b!5207430) (not b!5207614) tp_is_empty!38843 (not b!5207980) (not bm!366438) (not b!5208012) (not b!5208014) (not b!5207907) (not bm!366443) (not b!5207495) (not b!5207860) (not b!5207938) (not bm!366447) (not b!5208013) (not b!5207992) (not b!5207984) (not b!5207981) (not b!5207820) (not d!1679415) (not bm!366434) (not bm!366439) (not d!1679381) (not bm!366371) (not b!5208020) (not b!5208021) (not d!1679375) (not b!5207861) (not b!5207956) (not b!5208006) (not b!5207884) (not b!5207448) (not b!5208004) (not b_lambda!201475) (not d!1679403) (not d!1679417) (not d!1679419) (not bm!366370) (not d!1679407) (not b!5207857) (not d!1679325) (not b!5208032) (not b!5207935) (not b!5207882) (not bm!366410) (not b!5207912) (not b!5207892) (not b!5207982) (not b!5208016) (not bs!1210261) (not b!5207822) (not b!5207497) (not d!1679421) (not d!1679395) (not b!5208008) (not b!5207943) (not b!5207889) (not bm!366431) (not bm!366437) (not b!5208027) (not b!5207781) (not d!1679321) (not b!5207987) (not b!5207496) (not b!5207941) (not b!5207856) (not b!5207854) (not b!5207957) (not b!5207879) (not d!1679387) (not b!5207819) (not b!5208017) (not d!1679377) (not b!5207901) (not bm!366408) (not b!5208033) (not bm!366441) (not b!5207825) (not b!5207867) (not d!1679383) (not d!1679385) (not d!1679389) (not b!5207887) (not b!5208010) (not d!1679425) (not d!1679317) (not d!1679391) (not b!5207937))
(check-sat)
(get-model)

(declare-fun d!1679497 () Bool)

(assert (=> d!1679497 (= ($colon$colon!1273 (exprs!4679 lt!2141743) (ite (or c!897817 c!897816) (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (regTwo!30103 (regOne!30102 r!7292)))) (Cons!60560 (ite (or c!897817 c!897816) (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (regTwo!30103 (regOne!30102 r!7292))) (exprs!4679 lt!2141743)))))

(assert (=> bm!366410 d!1679497))

(declare-fun b!5208195 () Bool)

(declare-fun c!897967 () Bool)

(assert (=> b!5208195 (= c!897967 ((_ is Star!14795) (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun e!3242584 () (InoxSet Context!8358))

(declare-fun e!3242579 () (InoxSet Context!8358))

(assert (=> b!5208195 (= e!3242584 e!3242579)))

(declare-fun d!1679499 () Bool)

(declare-fun c!897966 () Bool)

(assert (=> d!1679499 (= c!897966 (and ((_ is ElementMatch!14795) (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))) (= (c!897710 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))) (h!67010 s!2326))))))

(declare-fun e!3242582 () (InoxSet Context!8358))

(assert (=> d!1679499 (= (derivationStepZipperDown!243 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343))))))) (ite (or c!897889 c!897891) lt!2141743 (Context!8359 call!366447)) (h!67010 s!2326)) e!3242582)))

(declare-fun b!5208196 () Bool)

(assert (=> b!5208196 (= e!3242579 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208197 () Bool)

(declare-fun call!366489 () (InoxSet Context!8358))

(assert (=> b!5208197 (= e!3242579 call!366489)))

(declare-fun b!5208198 () Bool)

(declare-fun e!3242583 () (InoxSet Context!8358))

(assert (=> b!5208198 (= e!3242583 e!3242584)))

(declare-fun c!897964 () Bool)

(assert (=> b!5208198 (= c!897964 ((_ is Concat!23640) (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun bm!366484 () Bool)

(declare-fun call!366490 () (InoxSet Context!8358))

(assert (=> bm!366484 (= call!366489 call!366490)))

(declare-fun b!5208199 () Bool)

(declare-fun call!366494 () (InoxSet Context!8358))

(assert (=> b!5208199 (= e!3242583 ((_ map or) call!366494 call!366490))))

(declare-fun call!366492 () List!60684)

(declare-fun c!897965 () Bool)

(declare-fun bm!366485 () Bool)

(assert (=> bm!366485 (= call!366492 ($colon$colon!1273 (exprs!4679 (ite (or c!897889 c!897891) lt!2141743 (Context!8359 call!366447))) (ite (or c!897965 c!897964) (regTwo!30102 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))) (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343))))))))))))

(declare-fun b!5208200 () Bool)

(declare-fun e!3242581 () (InoxSet Context!8358))

(declare-fun call!366493 () (InoxSet Context!8358))

(assert (=> b!5208200 (= e!3242581 ((_ map or) call!366494 call!366493))))

(declare-fun b!5208201 () Bool)

(assert (=> b!5208201 (= e!3242584 call!366489)))

(declare-fun bm!366486 () Bool)

(declare-fun call!366491 () List!60684)

(assert (=> bm!366486 (= call!366491 call!366492)))

(declare-fun bm!366487 () Bool)

(declare-fun c!897963 () Bool)

(assert (=> bm!366487 (= call!366493 (derivationStepZipperDown!243 (ite c!897963 (regTwo!30103 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))) (ite c!897965 (regTwo!30102 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))) (ite c!897964 (regOne!30102 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))) (reg!15124 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343))))))))))) (ite (or c!897963 c!897965) (ite (or c!897889 c!897891) lt!2141743 (Context!8359 call!366447)) (Context!8359 call!366491)) (h!67010 s!2326)))))

(declare-fun e!3242580 () Bool)

(declare-fun b!5208202 () Bool)

(assert (=> b!5208202 (= e!3242580 (nullable!4964 (regOne!30102 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343))))))))))))

(declare-fun b!5208203 () Bool)

(assert (=> b!5208203 (= c!897965 e!3242580)))

(declare-fun res!2212342 () Bool)

(assert (=> b!5208203 (=> (not res!2212342) (not e!3242580))))

(assert (=> b!5208203 (= res!2212342 ((_ is Concat!23640) (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))))

(assert (=> b!5208203 (= e!3242581 e!3242583)))

(declare-fun bm!366488 () Bool)

(assert (=> bm!366488 (= call!366490 call!366493)))

(declare-fun b!5208204 () Bool)

(assert (=> b!5208204 (= e!3242582 e!3242581)))

(assert (=> b!5208204 (= c!897963 ((_ is Union!14795) (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun b!5208205 () Bool)

(assert (=> b!5208205 (= e!3242582 (store ((as const (Array Context!8358 Bool)) false) (ite (or c!897889 c!897891) lt!2141743 (Context!8359 call!366447)) true))))

(declare-fun bm!366489 () Bool)

(assert (=> bm!366489 (= call!366494 (derivationStepZipperDown!243 (ite c!897963 (regOne!30103 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343)))))))) (regOne!30102 (ite c!897889 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897891 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!897890 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343))))))))) (ite c!897963 (ite (or c!897889 c!897891) lt!2141743 (Context!8359 call!366447)) (Context!8359 call!366492)) (h!67010 s!2326)))))

(assert (= (and d!1679499 c!897966) b!5208205))

(assert (= (and d!1679499 (not c!897966)) b!5208204))

(assert (= (and b!5208204 c!897963) b!5208200))

(assert (= (and b!5208204 (not c!897963)) b!5208203))

(assert (= (and b!5208203 res!2212342) b!5208202))

(assert (= (and b!5208203 c!897965) b!5208199))

(assert (= (and b!5208203 (not c!897965)) b!5208198))

(assert (= (and b!5208198 c!897964) b!5208201))

(assert (= (and b!5208198 (not c!897964)) b!5208195))

(assert (= (and b!5208195 c!897967) b!5208197))

(assert (= (and b!5208195 (not c!897967)) b!5208196))

(assert (= (or b!5208201 b!5208197) bm!366486))

(assert (= (or b!5208201 b!5208197) bm!366484))

(assert (= (or b!5208199 bm!366486) bm!366485))

(assert (= (or b!5208199 bm!366484) bm!366488))

(assert (= (or b!5208200 bm!366488) bm!366487))

(assert (= (or b!5208200 b!5208199) bm!366489))

(declare-fun m!6258618 () Bool)

(assert (=> b!5208202 m!6258618))

(declare-fun m!6258620 () Bool)

(assert (=> bm!366487 m!6258620))

(declare-fun m!6258622 () Bool)

(assert (=> bm!366489 m!6258622))

(declare-fun m!6258624 () Bool)

(assert (=> bm!366485 m!6258624))

(declare-fun m!6258626 () Bool)

(assert (=> b!5208205 m!6258626))

(assert (=> bm!366443 d!1679499))

(declare-fun d!1679507 () Bool)

(assert (=> d!1679507 (= (isEmpty!32473 (tail!10262 s!2326)) ((_ is Nil!60562) (tail!10262 s!2326)))))

(assert (=> b!5207824 d!1679507))

(declare-fun d!1679509 () Bool)

(assert (=> d!1679509 (= (tail!10262 s!2326) (t!373845 s!2326))))

(assert (=> b!5207824 d!1679509))

(declare-fun d!1679511 () Bool)

(assert (=> d!1679511 (= (isEmpty!32469 (tail!10263 (exprs!4679 (h!67009 zl!343)))) ((_ is Nil!60560) (tail!10263 (exprs!4679 (h!67009 zl!343)))))))

(assert (=> b!5207987 d!1679511))

(declare-fun d!1679513 () Bool)

(assert (=> d!1679513 (= (tail!10263 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))

(assert (=> b!5207987 d!1679513))

(declare-fun b!5208256 () Bool)

(declare-fun e!3242617 () List!60686)

(assert (=> b!5208256 (= e!3242617 (Cons!60562 (h!67010 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562))) (++!13203 (t!373845 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562))) (t!373845 s!2326))))))

(declare-fun b!5208255 () Bool)

(assert (=> b!5208255 (= e!3242617 (t!373845 s!2326))))

(declare-fun b!5208258 () Bool)

(declare-fun e!3242618 () Bool)

(declare-fun lt!2141835 () List!60686)

(assert (=> b!5208258 (= e!3242618 (or (not (= (t!373845 s!2326) Nil!60562)) (= lt!2141835 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)))))))

(declare-fun b!5208257 () Bool)

(declare-fun res!2212372 () Bool)

(assert (=> b!5208257 (=> (not res!2212372) (not e!3242618))))

(declare-fun size!39714 (List!60686) Int)

(assert (=> b!5208257 (= res!2212372 (= (size!39714 lt!2141835) (+ (size!39714 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562))) (size!39714 (t!373845 s!2326)))))))

(declare-fun d!1679519 () Bool)

(assert (=> d!1679519 e!3242618))

(declare-fun res!2212373 () Bool)

(assert (=> d!1679519 (=> (not res!2212373) (not e!3242618))))

(declare-fun content!10724 (List!60686) (InoxSet C!29860))

(assert (=> d!1679519 (= res!2212373 (= (content!10724 lt!2141835) ((_ map or) (content!10724 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562))) (content!10724 (t!373845 s!2326)))))))

(assert (=> d!1679519 (= lt!2141835 e!3242617)))

(declare-fun c!897979 () Bool)

(assert (=> d!1679519 (= c!897979 ((_ is Nil!60562) (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562))))))

(assert (=> d!1679519 (= (++!13203 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (t!373845 s!2326)) lt!2141835)))

(assert (= (and d!1679519 c!897979) b!5208255))

(assert (= (and d!1679519 (not c!897979)) b!5208256))

(assert (= (and d!1679519 res!2212373) b!5208257))

(assert (= (and b!5208257 res!2212372) b!5208258))

(declare-fun m!6258656 () Bool)

(assert (=> b!5208256 m!6258656))

(declare-fun m!6258658 () Bool)

(assert (=> b!5208257 m!6258658))

(assert (=> b!5208257 m!6258394))

(declare-fun m!6258660 () Bool)

(assert (=> b!5208257 m!6258660))

(declare-fun m!6258662 () Bool)

(assert (=> b!5208257 m!6258662))

(declare-fun m!6258664 () Bool)

(assert (=> d!1679519 m!6258664))

(assert (=> d!1679519 m!6258394))

(declare-fun m!6258666 () Bool)

(assert (=> d!1679519 m!6258666))

(declare-fun m!6258668 () Bool)

(assert (=> d!1679519 m!6258668))

(assert (=> b!5207943 d!1679519))

(declare-fun b!5208260 () Bool)

(declare-fun e!3242619 () List!60686)

(assert (=> b!5208260 (= e!3242619 (Cons!60562 (h!67010 Nil!60562) (++!13203 (t!373845 Nil!60562) (Cons!60562 (h!67010 s!2326) Nil!60562))))))

(declare-fun b!5208259 () Bool)

(assert (=> b!5208259 (= e!3242619 (Cons!60562 (h!67010 s!2326) Nil!60562))))

(declare-fun b!5208262 () Bool)

(declare-fun e!3242620 () Bool)

(declare-fun lt!2141836 () List!60686)

(assert (=> b!5208262 (= e!3242620 (or (not (= (Cons!60562 (h!67010 s!2326) Nil!60562) Nil!60562)) (= lt!2141836 Nil!60562)))))

(declare-fun b!5208261 () Bool)

(declare-fun res!2212374 () Bool)

(assert (=> b!5208261 (=> (not res!2212374) (not e!3242620))))

(assert (=> b!5208261 (= res!2212374 (= (size!39714 lt!2141836) (+ (size!39714 Nil!60562) (size!39714 (Cons!60562 (h!67010 s!2326) Nil!60562)))))))

(declare-fun d!1679537 () Bool)

(assert (=> d!1679537 e!3242620))

(declare-fun res!2212375 () Bool)

(assert (=> d!1679537 (=> (not res!2212375) (not e!3242620))))

(assert (=> d!1679537 (= res!2212375 (= (content!10724 lt!2141836) ((_ map or) (content!10724 Nil!60562) (content!10724 (Cons!60562 (h!67010 s!2326) Nil!60562)))))))

(assert (=> d!1679537 (= lt!2141836 e!3242619)))

(declare-fun c!897980 () Bool)

(assert (=> d!1679537 (= c!897980 ((_ is Nil!60562) Nil!60562))))

(assert (=> d!1679537 (= (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) lt!2141836)))

(assert (= (and d!1679537 c!897980) b!5208259))

(assert (= (and d!1679537 (not c!897980)) b!5208260))

(assert (= (and d!1679537 res!2212375) b!5208261))

(assert (= (and b!5208261 res!2212374) b!5208262))

(declare-fun m!6258670 () Bool)

(assert (=> b!5208260 m!6258670))

(declare-fun m!6258672 () Bool)

(assert (=> b!5208261 m!6258672))

(declare-fun m!6258674 () Bool)

(assert (=> b!5208261 m!6258674))

(declare-fun m!6258676 () Bool)

(assert (=> b!5208261 m!6258676))

(declare-fun m!6258678 () Bool)

(assert (=> d!1679537 m!6258678))

(declare-fun m!6258680 () Bool)

(assert (=> d!1679537 m!6258680))

(declare-fun m!6258682 () Bool)

(assert (=> d!1679537 m!6258682))

(assert (=> b!5207943 d!1679537))

(declare-fun d!1679539 () Bool)

(assert (=> d!1679539 (= (++!13203 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (t!373845 s!2326)) s!2326)))

(declare-fun lt!2141841 () Unit!152446)

(declare-fun choose!38721 (List!60686 C!29860 List!60686 List!60686) Unit!152446)

(assert (=> d!1679539 (= lt!2141841 (choose!38721 Nil!60562 (h!67010 s!2326) (t!373845 s!2326) s!2326))))

(assert (=> d!1679539 (= (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) (t!373845 s!2326))) s!2326)))

(assert (=> d!1679539 (= (lemmaMoveElementToOtherListKeepsConcatEq!1618 Nil!60562 (h!67010 s!2326) (t!373845 s!2326) s!2326) lt!2141841)))

(declare-fun bs!1210303 () Bool)

(assert (= bs!1210303 d!1679539))

(assert (=> bs!1210303 m!6258394))

(assert (=> bs!1210303 m!6258394))

(assert (=> bs!1210303 m!6258396))

(declare-fun m!6258684 () Bool)

(assert (=> bs!1210303 m!6258684))

(declare-fun m!6258686 () Bool)

(assert (=> bs!1210303 m!6258686))

(assert (=> b!5207943 d!1679539))

(declare-fun b!5208275 () Bool)

(declare-fun e!3242628 () Bool)

(assert (=> b!5208275 (= e!3242628 (matchR!6980 (regTwo!30102 r!7292) (t!373845 s!2326)))))

(declare-fun b!5208276 () Bool)

(declare-fun e!3242630 () Option!14906)

(assert (=> b!5208276 (= e!3242630 (Some!14905 (tuple2!63989 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (t!373845 s!2326))))))

(declare-fun b!5208277 () Bool)

(declare-fun res!2212384 () Bool)

(declare-fun e!3242627 () Bool)

(assert (=> b!5208277 (=> (not res!2212384) (not e!3242627))))

(declare-fun lt!2141843 () Option!14906)

(assert (=> b!5208277 (= res!2212384 (matchR!6980 (regOne!30102 r!7292) (_1!35297 (get!20806 lt!2141843))))))

(declare-fun b!5208278 () Bool)

(declare-fun e!3242631 () Bool)

(assert (=> b!5208278 (= e!3242631 (not (isDefined!11609 lt!2141843)))))

(declare-fun b!5208279 () Bool)

(declare-fun e!3242629 () Option!14906)

(assert (=> b!5208279 (= e!3242629 None!14905)))

(declare-fun b!5208280 () Bool)

(assert (=> b!5208280 (= e!3242627 (= (++!13203 (_1!35297 (get!20806 lt!2141843)) (_2!35297 (get!20806 lt!2141843))) s!2326))))

(declare-fun b!5208281 () Bool)

(declare-fun res!2212385 () Bool)

(assert (=> b!5208281 (=> (not res!2212385) (not e!3242627))))

(assert (=> b!5208281 (= res!2212385 (matchR!6980 (regTwo!30102 r!7292) (_2!35297 (get!20806 lt!2141843))))))

(declare-fun d!1679541 () Bool)

(assert (=> d!1679541 e!3242631))

(declare-fun res!2212386 () Bool)

(assert (=> d!1679541 (=> res!2212386 e!3242631)))

(assert (=> d!1679541 (= res!2212386 e!3242627)))

(declare-fun res!2212383 () Bool)

(assert (=> d!1679541 (=> (not res!2212383) (not e!3242627))))

(assert (=> d!1679541 (= res!2212383 (isDefined!11609 lt!2141843))))

(assert (=> d!1679541 (= lt!2141843 e!3242630)))

(declare-fun c!897984 () Bool)

(assert (=> d!1679541 (= c!897984 e!3242628)))

(declare-fun res!2212382 () Bool)

(assert (=> d!1679541 (=> (not res!2212382) (not e!3242628))))

(assert (=> d!1679541 (= res!2212382 (matchR!6980 (regOne!30102 r!7292) (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562))))))

(assert (=> d!1679541 (validRegex!6531 (regOne!30102 r!7292))))

(assert (=> d!1679541 (= (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (t!373845 s!2326) s!2326) lt!2141843)))

(declare-fun b!5208282 () Bool)

(assert (=> b!5208282 (= e!3242630 e!3242629)))

(declare-fun c!897985 () Bool)

(assert (=> b!5208282 (= c!897985 ((_ is Nil!60562) (t!373845 s!2326)))))

(declare-fun b!5208283 () Bool)

(declare-fun lt!2141845 () Unit!152446)

(declare-fun lt!2141844 () Unit!152446)

(assert (=> b!5208283 (= lt!2141845 lt!2141844)))

(assert (=> b!5208283 (= (++!13203 (++!13203 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (Cons!60562 (h!67010 (t!373845 s!2326)) Nil!60562)) (t!373845 (t!373845 s!2326))) s!2326)))

(assert (=> b!5208283 (= lt!2141844 (lemmaMoveElementToOtherListKeepsConcatEq!1618 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (h!67010 (t!373845 s!2326)) (t!373845 (t!373845 s!2326)) s!2326))))

(assert (=> b!5208283 (= e!3242629 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) (++!13203 (++!13203 Nil!60562 (Cons!60562 (h!67010 s!2326) Nil!60562)) (Cons!60562 (h!67010 (t!373845 s!2326)) Nil!60562)) (t!373845 (t!373845 s!2326)) s!2326))))

(assert (= (and d!1679541 res!2212382) b!5208275))

(assert (= (and d!1679541 c!897984) b!5208276))

(assert (= (and d!1679541 (not c!897984)) b!5208282))

(assert (= (and b!5208282 c!897985) b!5208279))

(assert (= (and b!5208282 (not c!897985)) b!5208283))

(assert (= (and d!1679541 res!2212383) b!5208277))

(assert (= (and b!5208277 res!2212384) b!5208281))

(assert (= (and b!5208281 res!2212385) b!5208280))

(assert (= (and d!1679541 (not res!2212386)) b!5208278))

(declare-fun m!6258716 () Bool)

(assert (=> d!1679541 m!6258716))

(assert (=> d!1679541 m!6258394))

(declare-fun m!6258718 () Bool)

(assert (=> d!1679541 m!6258718))

(assert (=> d!1679541 m!6258386))

(declare-fun m!6258720 () Bool)

(assert (=> b!5208281 m!6258720))

(declare-fun m!6258722 () Bool)

(assert (=> b!5208281 m!6258722))

(assert (=> b!5208278 m!6258716))

(assert (=> b!5208280 m!6258720))

(declare-fun m!6258724 () Bool)

(assert (=> b!5208280 m!6258724))

(assert (=> b!5208283 m!6258394))

(declare-fun m!6258726 () Bool)

(assert (=> b!5208283 m!6258726))

(assert (=> b!5208283 m!6258726))

(declare-fun m!6258728 () Bool)

(assert (=> b!5208283 m!6258728))

(assert (=> b!5208283 m!6258394))

(declare-fun m!6258730 () Bool)

(assert (=> b!5208283 m!6258730))

(assert (=> b!5208283 m!6258726))

(declare-fun m!6258732 () Bool)

(assert (=> b!5208283 m!6258732))

(declare-fun m!6258734 () Bool)

(assert (=> b!5208275 m!6258734))

(assert (=> b!5208277 m!6258720))

(declare-fun m!6258736 () Bool)

(assert (=> b!5208277 m!6258736))

(assert (=> b!5207943 d!1679541))

(declare-fun d!1679547 () Bool)

(declare-fun c!897987 () Bool)

(assert (=> d!1679547 (= c!897987 (isEmpty!32473 (tail!10262 (t!373845 s!2326))))))

(declare-fun e!3242634 () Bool)

(assert (=> d!1679547 (= (matchZipper!1039 (derivationStepZipper!1067 lt!2141742 (head!11165 (t!373845 s!2326))) (tail!10262 (t!373845 s!2326))) e!3242634)))

(declare-fun b!5208288 () Bool)

(assert (=> b!5208288 (= e!3242634 (nullableZipper!1223 (derivationStepZipper!1067 lt!2141742 (head!11165 (t!373845 s!2326)))))))

(declare-fun b!5208289 () Bool)

(assert (=> b!5208289 (= e!3242634 (matchZipper!1039 (derivationStepZipper!1067 (derivationStepZipper!1067 lt!2141742 (head!11165 (t!373845 s!2326))) (head!11165 (tail!10262 (t!373845 s!2326)))) (tail!10262 (tail!10262 (t!373845 s!2326)))))))

(assert (= (and d!1679547 c!897987) b!5208288))

(assert (= (and d!1679547 (not c!897987)) b!5208289))

(assert (=> d!1679547 m!6258130))

(declare-fun m!6258738 () Bool)

(assert (=> d!1679547 m!6258738))

(assert (=> b!5208288 m!6258424))

(declare-fun m!6258740 () Bool)

(assert (=> b!5208288 m!6258740))

(assert (=> b!5208289 m!6258130))

(declare-fun m!6258742 () Bool)

(assert (=> b!5208289 m!6258742))

(assert (=> b!5208289 m!6258424))

(assert (=> b!5208289 m!6258742))

(declare-fun m!6258744 () Bool)

(assert (=> b!5208289 m!6258744))

(assert (=> b!5208289 m!6258130))

(declare-fun m!6258746 () Bool)

(assert (=> b!5208289 m!6258746))

(assert (=> b!5208289 m!6258744))

(assert (=> b!5208289 m!6258746))

(declare-fun m!6258748 () Bool)

(assert (=> b!5208289 m!6258748))

(assert (=> b!5207957 d!1679547))

(declare-fun bs!1210305 () Bool)

(declare-fun d!1679549 () Bool)

(assert (= bs!1210305 (and d!1679549 b!5207273)))

(declare-fun lambda!261126 () Int)

(assert (=> bs!1210305 (= (= (head!11165 (t!373845 s!2326)) (h!67010 s!2326)) (= lambda!261126 lambda!261051))))

(assert (=> d!1679549 true))

(assert (=> d!1679549 (= (derivationStepZipper!1067 lt!2141742 (head!11165 (t!373845 s!2326))) (flatMap!522 lt!2141742 lambda!261126))))

(declare-fun bs!1210306 () Bool)

(assert (= bs!1210306 d!1679549))

(declare-fun m!6258754 () Bool)

(assert (=> bs!1210306 m!6258754))

(assert (=> b!5207957 d!1679549))

(declare-fun d!1679553 () Bool)

(assert (=> d!1679553 (= (head!11165 (t!373845 s!2326)) (h!67010 (t!373845 s!2326)))))

(assert (=> b!5207957 d!1679553))

(declare-fun d!1679555 () Bool)

(assert (=> d!1679555 (= (tail!10262 (t!373845 s!2326)) (t!373845 (t!373845 s!2326)))))

(assert (=> b!5207957 d!1679555))

(declare-fun d!1679557 () Bool)

(assert (=> d!1679557 (= (head!11165 s!2326) (h!67010 s!2326))))

(assert (=> b!5207822 d!1679557))

(declare-fun d!1679559 () Bool)

(assert (=> d!1679559 (= (head!11166 (exprs!4679 (h!67009 zl!343))) (h!67008 (exprs!4679 (h!67009 zl!343))))))

(assert (=> b!5207985 d!1679559))

(declare-fun b!5208301 () Bool)

(declare-fun res!2212394 () Bool)

(declare-fun e!3242640 () Bool)

(assert (=> b!5208301 (=> res!2212394 e!3242640)))

(assert (=> b!5208301 (= res!2212394 (not (isEmpty!32473 (tail!10262 (_2!35297 (get!20806 lt!2141816))))))))

(declare-fun b!5208302 () Bool)

(declare-fun e!3242642 () Bool)

(assert (=> b!5208302 (= e!3242642 (= (head!11165 (_2!35297 (get!20806 lt!2141816))) (c!897710 (regTwo!30102 r!7292))))))

(declare-fun b!5208303 () Bool)

(declare-fun e!3242644 () Bool)

(assert (=> b!5208303 (= e!3242644 e!3242640)))

(declare-fun res!2212400 () Bool)

(assert (=> b!5208303 (=> res!2212400 e!3242640)))

(declare-fun call!366502 () Bool)

(assert (=> b!5208303 (= res!2212400 call!366502)))

(declare-fun b!5208304 () Bool)

(assert (=> b!5208304 (= e!3242640 (not (= (head!11165 (_2!35297 (get!20806 lt!2141816))) (c!897710 (regTwo!30102 r!7292)))))))

(declare-fun b!5208305 () Bool)

(declare-fun res!2212398 () Bool)

(declare-fun e!3242643 () Bool)

(assert (=> b!5208305 (=> res!2212398 e!3242643)))

(assert (=> b!5208305 (= res!2212398 e!3242642)))

(declare-fun res!2212399 () Bool)

(assert (=> b!5208305 (=> (not res!2212399) (not e!3242642))))

(declare-fun lt!2141853 () Bool)

(assert (=> b!5208305 (= res!2212399 lt!2141853)))

(declare-fun b!5208306 () Bool)

(declare-fun res!2212396 () Bool)

(assert (=> b!5208306 (=> (not res!2212396) (not e!3242642))))

(assert (=> b!5208306 (= res!2212396 (isEmpty!32473 (tail!10262 (_2!35297 (get!20806 lt!2141816)))))))

(declare-fun b!5208308 () Bool)

(assert (=> b!5208308 (= e!3242643 e!3242644)))

(declare-fun res!2212401 () Bool)

(assert (=> b!5208308 (=> (not res!2212401) (not e!3242644))))

(assert (=> b!5208308 (= res!2212401 (not lt!2141853))))

(declare-fun b!5208309 () Bool)

(declare-fun e!3242646 () Bool)

(assert (=> b!5208309 (= e!3242646 (matchR!6980 (derivativeStep!4045 (regTwo!30102 r!7292) (head!11165 (_2!35297 (get!20806 lt!2141816)))) (tail!10262 (_2!35297 (get!20806 lt!2141816)))))))

(declare-fun bm!366497 () Bool)

(assert (=> bm!366497 (= call!366502 (isEmpty!32473 (_2!35297 (get!20806 lt!2141816))))))

(declare-fun b!5208310 () Bool)

(declare-fun e!3242641 () Bool)

(declare-fun e!3242645 () Bool)

(assert (=> b!5208310 (= e!3242641 e!3242645)))

(declare-fun c!897993 () Bool)

(assert (=> b!5208310 (= c!897993 ((_ is EmptyLang!14795) (regTwo!30102 r!7292)))))

(declare-fun b!5208311 () Bool)

(declare-fun res!2212395 () Bool)

(assert (=> b!5208311 (=> (not res!2212395) (not e!3242642))))

(assert (=> b!5208311 (= res!2212395 (not call!366502))))

(declare-fun b!5208312 () Bool)

(declare-fun res!2212397 () Bool)

(assert (=> b!5208312 (=> res!2212397 e!3242643)))

(assert (=> b!5208312 (= res!2212397 (not ((_ is ElementMatch!14795) (regTwo!30102 r!7292))))))

(assert (=> b!5208312 (= e!3242645 e!3242643)))

(declare-fun b!5208307 () Bool)

(assert (=> b!5208307 (= e!3242646 (nullable!4964 (regTwo!30102 r!7292)))))

(declare-fun d!1679561 () Bool)

(assert (=> d!1679561 e!3242641))

(declare-fun c!897994 () Bool)

(assert (=> d!1679561 (= c!897994 ((_ is EmptyExpr!14795) (regTwo!30102 r!7292)))))

(assert (=> d!1679561 (= lt!2141853 e!3242646)))

(declare-fun c!897992 () Bool)

(assert (=> d!1679561 (= c!897992 (isEmpty!32473 (_2!35297 (get!20806 lt!2141816))))))

(assert (=> d!1679561 (validRegex!6531 (regTwo!30102 r!7292))))

(assert (=> d!1679561 (= (matchR!6980 (regTwo!30102 r!7292) (_2!35297 (get!20806 lt!2141816))) lt!2141853)))

(declare-fun b!5208313 () Bool)

(assert (=> b!5208313 (= e!3242645 (not lt!2141853))))

(declare-fun b!5208314 () Bool)

(assert (=> b!5208314 (= e!3242641 (= lt!2141853 call!366502))))

(assert (= (and d!1679561 c!897992) b!5208307))

(assert (= (and d!1679561 (not c!897992)) b!5208309))

(assert (= (and d!1679561 c!897994) b!5208314))

(assert (= (and d!1679561 (not c!897994)) b!5208310))

(assert (= (and b!5208310 c!897993) b!5208313))

(assert (= (and b!5208310 (not c!897993)) b!5208312))

(assert (= (and b!5208312 (not res!2212397)) b!5208305))

(assert (= (and b!5208305 res!2212399) b!5208311))

(assert (= (and b!5208311 res!2212395) b!5208306))

(assert (= (and b!5208306 res!2212396) b!5208302))

(assert (= (and b!5208305 (not res!2212398)) b!5208308))

(assert (= (and b!5208308 res!2212401) b!5208303))

(assert (= (and b!5208303 (not res!2212400)) b!5208301))

(assert (= (and b!5208301 (not res!2212394)) b!5208304))

(assert (= (or b!5208314 b!5208303 b!5208311) bm!366497))

(declare-fun m!6258778 () Bool)

(assert (=> b!5208304 m!6258778))

(declare-fun m!6258780 () Bool)

(assert (=> b!5208306 m!6258780))

(assert (=> b!5208306 m!6258780))

(declare-fun m!6258782 () Bool)

(assert (=> b!5208306 m!6258782))

(declare-fun m!6258784 () Bool)

(assert (=> bm!366497 m!6258784))

(declare-fun m!6258786 () Bool)

(assert (=> b!5208307 m!6258786))

(assert (=> b!5208309 m!6258778))

(assert (=> b!5208309 m!6258778))

(declare-fun m!6258788 () Bool)

(assert (=> b!5208309 m!6258788))

(assert (=> b!5208309 m!6258780))

(assert (=> b!5208309 m!6258788))

(assert (=> b!5208309 m!6258780))

(declare-fun m!6258790 () Bool)

(assert (=> b!5208309 m!6258790))

(assert (=> b!5208301 m!6258780))

(assert (=> b!5208301 m!6258780))

(assert (=> b!5208301 m!6258782))

(assert (=> b!5208302 m!6258778))

(assert (=> d!1679561 m!6258784))

(declare-fun m!6258792 () Bool)

(assert (=> d!1679561 m!6258792))

(assert (=> b!5207941 d!1679561))

(declare-fun d!1679565 () Bool)

(assert (=> d!1679565 (= (get!20806 lt!2141816) (v!50934 lt!2141816))))

(assert (=> b!5207941 d!1679565))

(assert (=> b!5207867 d!1679425))

(declare-fun bs!1210307 () Bool)

(declare-fun d!1679569 () Bool)

(assert (= bs!1210307 (and d!1679569 d!1679381)))

(declare-fun lambda!261127 () Int)

(assert (=> bs!1210307 (= lambda!261127 lambda!261088)))

(declare-fun bs!1210308 () Bool)

(assert (= bs!1210308 (and d!1679569 d!1679383)))

(assert (=> bs!1210308 (= lambda!261127 lambda!261091)))

(declare-fun bs!1210309 () Bool)

(assert (= bs!1210309 (and d!1679569 d!1679387)))

(assert (=> bs!1210309 (= lambda!261127 lambda!261094)))

(declare-fun bs!1210310 () Bool)

(assert (= bs!1210310 (and d!1679569 d!1679425)))

(assert (=> bs!1210310 (= lambda!261127 lambda!261107)))

(declare-fun bs!1210311 () Bool)

(assert (= bs!1210311 (and d!1679569 d!1679403)))

(assert (=> bs!1210311 (= lambda!261127 lambda!261095)))

(declare-fun lt!2141854 () List!60684)

(assert (=> d!1679569 (forall!14231 lt!2141854 lambda!261127)))

(declare-fun e!3242653 () List!60684)

(assert (=> d!1679569 (= lt!2141854 e!3242653)))

(declare-fun c!898000 () Bool)

(assert (=> d!1679569 (= c!898000 ((_ is Cons!60561) (t!373844 zl!343)))))

(assert (=> d!1679569 (= (unfocusZipperList!237 (t!373844 zl!343)) lt!2141854)))

(declare-fun b!5208326 () Bool)

(assert (=> b!5208326 (= e!3242653 (Cons!60560 (generalisedConcat!464 (exprs!4679 (h!67009 (t!373844 zl!343)))) (unfocusZipperList!237 (t!373844 (t!373844 zl!343)))))))

(declare-fun b!5208327 () Bool)

(assert (=> b!5208327 (= e!3242653 Nil!60560)))

(assert (= (and d!1679569 c!898000) b!5208326))

(assert (= (and d!1679569 (not c!898000)) b!5208327))

(declare-fun m!6258804 () Bool)

(assert (=> d!1679569 m!6258804))

(declare-fun m!6258806 () Bool)

(assert (=> b!5208326 m!6258806))

(declare-fun m!6258810 () Bool)

(assert (=> b!5208326 m!6258810))

(assert (=> b!5207867 d!1679569))

(declare-fun d!1679571 () Bool)

(declare-fun res!2212415 () Bool)

(declare-fun e!3242665 () Bool)

(assert (=> d!1679571 (=> res!2212415 e!3242665)))

(assert (=> d!1679571 (= res!2212415 ((_ is Nil!60560) (exprs!4679 setElem!33064)))))

(assert (=> d!1679571 (= (forall!14231 (exprs!4679 setElem!33064) lambda!261094) e!3242665)))

(declare-fun b!5208346 () Bool)

(declare-fun e!3242666 () Bool)

(assert (=> b!5208346 (= e!3242665 e!3242666)))

(declare-fun res!2212416 () Bool)

(assert (=> b!5208346 (=> (not res!2212416) (not e!3242666))))

(declare-fun dynLambda!23924 (Int Regex!14795) Bool)

(assert (=> b!5208346 (= res!2212416 (dynLambda!23924 lambda!261094 (h!67008 (exprs!4679 setElem!33064))))))

(declare-fun b!5208347 () Bool)

(assert (=> b!5208347 (= e!3242666 (forall!14231 (t!373843 (exprs!4679 setElem!33064)) lambda!261094))))

(assert (= (and d!1679571 (not res!2212415)) b!5208346))

(assert (= (and b!5208346 res!2212416) b!5208347))

(declare-fun b_lambda!201481 () Bool)

(assert (=> (not b_lambda!201481) (not b!5208346)))

(declare-fun m!6258824 () Bool)

(assert (=> b!5208346 m!6258824))

(declare-fun m!6258826 () Bool)

(assert (=> b!5208347 m!6258826))

(assert (=> d!1679387 d!1679571))

(assert (=> d!1679417 d!1679411))

(declare-fun b!5208348 () Bool)

(declare-fun e!3242670 () Bool)

(declare-fun call!366512 () Bool)

(assert (=> b!5208348 (= e!3242670 call!366512)))

(declare-fun b!5208349 () Bool)

(declare-fun e!3242669 () Bool)

(assert (=> b!5208349 (= e!3242669 call!366512)))

(declare-fun b!5208350 () Bool)

(declare-fun res!2212417 () Bool)

(declare-fun e!3242672 () Bool)

(assert (=> b!5208350 (=> res!2212417 e!3242672)))

(assert (=> b!5208350 (= res!2212417 (not ((_ is Concat!23640) (regOne!30102 r!7292))))))

(declare-fun e!3242667 () Bool)

(assert (=> b!5208350 (= e!3242667 e!3242672)))

(declare-fun b!5208352 () Bool)

(declare-fun e!3242673 () Bool)

(declare-fun e!3242668 () Bool)

(assert (=> b!5208352 (= e!3242673 e!3242668)))

(declare-fun res!2212418 () Bool)

(assert (=> b!5208352 (= res!2212418 (not (nullable!4964 (reg!15124 (regOne!30102 r!7292)))))))

(assert (=> b!5208352 (=> (not res!2212418) (not e!3242668))))

(declare-fun bm!366505 () Bool)

(declare-fun call!366511 () Bool)

(assert (=> bm!366505 (= call!366512 call!366511)))

(declare-fun b!5208353 () Bool)

(declare-fun res!2212420 () Bool)

(assert (=> b!5208353 (=> (not res!2212420) (not e!3242670))))

(declare-fun call!366510 () Bool)

(assert (=> b!5208353 (= res!2212420 call!366510)))

(assert (=> b!5208353 (= e!3242667 e!3242670)))

(declare-fun b!5208354 () Bool)

(assert (=> b!5208354 (= e!3242672 e!3242669)))

(declare-fun res!2212421 () Bool)

(assert (=> b!5208354 (=> (not res!2212421) (not e!3242669))))

(assert (=> b!5208354 (= res!2212421 call!366510)))

(declare-fun b!5208355 () Bool)

(assert (=> b!5208355 (= e!3242668 call!366511)))

(declare-fun c!898005 () Bool)

(declare-fun bm!366506 () Bool)

(declare-fun c!898004 () Bool)

(assert (=> bm!366506 (= call!366511 (validRegex!6531 (ite c!898004 (reg!15124 (regOne!30102 r!7292)) (ite c!898005 (regTwo!30103 (regOne!30102 r!7292)) (regTwo!30102 (regOne!30102 r!7292))))))))

(declare-fun d!1679575 () Bool)

(declare-fun res!2212419 () Bool)

(declare-fun e!3242671 () Bool)

(assert (=> d!1679575 (=> res!2212419 e!3242671)))

(assert (=> d!1679575 (= res!2212419 ((_ is ElementMatch!14795) (regOne!30102 r!7292)))))

(assert (=> d!1679575 (= (validRegex!6531 (regOne!30102 r!7292)) e!3242671)))

(declare-fun b!5208351 () Bool)

(assert (=> b!5208351 (= e!3242673 e!3242667)))

(assert (=> b!5208351 (= c!898005 ((_ is Union!14795) (regOne!30102 r!7292)))))

(declare-fun b!5208356 () Bool)

(assert (=> b!5208356 (= e!3242671 e!3242673)))

(assert (=> b!5208356 (= c!898004 ((_ is Star!14795) (regOne!30102 r!7292)))))

(declare-fun bm!366507 () Bool)

(assert (=> bm!366507 (= call!366510 (validRegex!6531 (ite c!898005 (regOne!30103 (regOne!30102 r!7292)) (regOne!30102 (regOne!30102 r!7292)))))))

(assert (= (and d!1679575 (not res!2212419)) b!5208356))

(assert (= (and b!5208356 c!898004) b!5208352))

(assert (= (and b!5208356 (not c!898004)) b!5208351))

(assert (= (and b!5208352 res!2212418) b!5208355))

(assert (= (and b!5208351 c!898005) b!5208353))

(assert (= (and b!5208351 (not c!898005)) b!5208350))

(assert (= (and b!5208353 res!2212420) b!5208348))

(assert (= (and b!5208350 (not res!2212417)) b!5208354))

(assert (= (and b!5208354 res!2212421) b!5208349))

(assert (= (or b!5208348 b!5208349) bm!366505))

(assert (= (or b!5208353 b!5208354) bm!366507))

(assert (= (or b!5208355 bm!366505) bm!366506))

(declare-fun m!6258828 () Bool)

(assert (=> b!5208352 m!6258828))

(declare-fun m!6258830 () Bool)

(assert (=> bm!366506 m!6258830))

(declare-fun m!6258832 () Bool)

(assert (=> bm!366507 m!6258832))

(assert (=> d!1679417 d!1679575))

(assert (=> d!1679417 d!1679421))

(declare-fun bs!1210312 () Bool)

(declare-fun d!1679577 () Bool)

(assert (= bs!1210312 (and d!1679577 d!1679419)))

(declare-fun lambda!261130 () Int)

(assert (=> bs!1210312 (= lambda!261130 lambda!261103)))

(declare-fun bs!1210313 () Bool)

(assert (= bs!1210313 (and d!1679577 d!1679417)))

(assert (=> bs!1210313 (= lambda!261130 lambda!261098)))

(declare-fun bs!1210314 () Bool)

(assert (= bs!1210314 (and d!1679577 b!5207268)))

(assert (=> bs!1210314 (= lambda!261130 lambda!261049)))

(declare-fun bs!1210315 () Bool)

(assert (= bs!1210315 (and d!1679577 b!5207783)))

(assert (=> bs!1210315 (not (= lambda!261130 lambda!261085))))

(assert (=> bs!1210314 (not (= lambda!261130 lambda!261050))))

(assert (=> bs!1210312 (not (= lambda!261130 lambda!261104))))

(declare-fun bs!1210316 () Bool)

(assert (= bs!1210316 (and d!1679577 b!5207782)))

(assert (=> bs!1210316 (not (= lambda!261130 lambda!261084))))

(assert (=> d!1679577 true))

(assert (=> d!1679577 true))

(assert (=> d!1679577 true))

(assert (=> d!1679577 (= (isDefined!11609 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326)) (Exists!1976 lambda!261130))))

(assert (=> d!1679577 true))

(declare-fun _$89!1361 () Unit!152446)

(assert (=> d!1679577 (= (choose!38719 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326) _$89!1361)))

(declare-fun bs!1210317 () Bool)

(assert (= bs!1210317 d!1679577))

(assert (=> bs!1210317 m!6258002))

(assert (=> bs!1210317 m!6258002))

(assert (=> bs!1210317 m!6258004))

(declare-fun m!6258834 () Bool)

(assert (=> bs!1210317 m!6258834))

(assert (=> d!1679417 d!1679577))

(declare-fun d!1679579 () Bool)

(assert (=> d!1679579 (= (Exists!1976 lambda!261098) (choose!38718 lambda!261098))))

(declare-fun bs!1210318 () Bool)

(assert (= bs!1210318 d!1679579))

(declare-fun m!6258836 () Bool)

(assert (=> bs!1210318 m!6258836))

(assert (=> d!1679417 d!1679579))

(declare-fun b!5208391 () Bool)

(declare-fun e!3242694 () Bool)

(declare-fun call!366527 () Bool)

(assert (=> b!5208391 (= e!3242694 call!366527)))

(declare-fun b!5208392 () Bool)

(declare-fun e!3242693 () Bool)

(assert (=> b!5208392 (= e!3242693 call!366527)))

(declare-fun b!5208393 () Bool)

(declare-fun res!2212426 () Bool)

(declare-fun e!3242696 () Bool)

(assert (=> b!5208393 (=> res!2212426 e!3242696)))

(assert (=> b!5208393 (= res!2212426 (not ((_ is Concat!23640) (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))))))

(declare-fun e!3242691 () Bool)

(assert (=> b!5208393 (= e!3242691 e!3242696)))

(declare-fun b!5208395 () Bool)

(declare-fun e!3242697 () Bool)

(declare-fun e!3242692 () Bool)

(assert (=> b!5208395 (= e!3242697 e!3242692)))

(declare-fun res!2212427 () Bool)

(assert (=> b!5208395 (= res!2212427 (not (nullable!4964 (reg!15124 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))))

(assert (=> b!5208395 (=> (not res!2212427) (not e!3242692))))

(declare-fun bm!366520 () Bool)

(declare-fun call!366526 () Bool)

(assert (=> bm!366520 (= call!366527 call!366526)))

(declare-fun b!5208396 () Bool)

(declare-fun res!2212429 () Bool)

(assert (=> b!5208396 (=> (not res!2212429) (not e!3242694))))

(declare-fun call!366525 () Bool)

(assert (=> b!5208396 (= res!2212429 call!366525)))

(assert (=> b!5208396 (= e!3242691 e!3242694)))

(declare-fun b!5208397 () Bool)

(assert (=> b!5208397 (= e!3242696 e!3242693)))

(declare-fun res!2212430 () Bool)

(assert (=> b!5208397 (=> (not res!2212430) (not e!3242693))))

(assert (=> b!5208397 (= res!2212430 call!366525)))

(declare-fun b!5208398 () Bool)

(assert (=> b!5208398 (= e!3242692 call!366526)))

(declare-fun bm!366521 () Bool)

(declare-fun c!898022 () Bool)

(declare-fun c!898021 () Bool)

(assert (=> bm!366521 (= call!366526 (validRegex!6531 (ite c!898021 (reg!15124 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (ite c!898022 (regTwo!30103 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (regTwo!30102 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))))))))

(declare-fun d!1679581 () Bool)

(declare-fun res!2212428 () Bool)

(declare-fun e!3242695 () Bool)

(assert (=> d!1679581 (=> res!2212428 e!3242695)))

(assert (=> d!1679581 (= res!2212428 ((_ is ElementMatch!14795) (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(assert (=> d!1679581 (= (validRegex!6531 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) e!3242695)))

(declare-fun b!5208394 () Bool)

(assert (=> b!5208394 (= e!3242697 e!3242691)))

(assert (=> b!5208394 (= c!898022 ((_ is Union!14795) (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(declare-fun b!5208399 () Bool)

(assert (=> b!5208399 (= e!3242695 e!3242697)))

(assert (=> b!5208399 (= c!898021 ((_ is Star!14795) (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(declare-fun bm!366522 () Bool)

(assert (=> bm!366522 (= call!366525 (validRegex!6531 (ite c!898022 (regOne!30103 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (regOne!30102 (ite c!897895 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))))

(assert (= (and d!1679581 (not res!2212428)) b!5208399))

(assert (= (and b!5208399 c!898021) b!5208395))

(assert (= (and b!5208399 (not c!898021)) b!5208394))

(assert (= (and b!5208395 res!2212427) b!5208398))

(assert (= (and b!5208394 c!898022) b!5208396))

(assert (= (and b!5208394 (not c!898022)) b!5208393))

(assert (= (and b!5208396 res!2212429) b!5208391))

(assert (= (and b!5208393 (not res!2212426)) b!5208397))

(assert (= (and b!5208397 res!2212430) b!5208392))

(assert (= (or b!5208391 b!5208392) bm!366520))

(assert (= (or b!5208396 b!5208397) bm!366522))

(assert (= (or b!5208398 bm!366520) bm!366521))

(declare-fun m!6258844 () Bool)

(assert (=> b!5208395 m!6258844))

(declare-fun m!6258846 () Bool)

(assert (=> bm!366521 m!6258846))

(declare-fun m!6258848 () Bool)

(assert (=> bm!366522 m!6258848))

(assert (=> bm!366448 d!1679581))

(declare-fun b!5208400 () Bool)

(declare-fun c!898027 () Bool)

(assert (=> b!5208400 (= c!898027 ((_ is Star!14795) (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))))))

(declare-fun e!3242703 () (InoxSet Context!8358))

(declare-fun e!3242698 () (InoxSet Context!8358))

(assert (=> b!5208400 (= e!3242703 e!3242698)))

(declare-fun c!898026 () Bool)

(declare-fun d!1679585 () Bool)

(assert (=> d!1679585 (= c!898026 (and ((_ is ElementMatch!14795) (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))) (= (c!897710 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))) (h!67010 s!2326))))))

(declare-fun e!3242701 () (InoxSet Context!8358))

(assert (=> d!1679585 (= (derivationStepZipperDown!243 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292)))))) (ite (or c!897815 c!897817) lt!2141743 (Context!8359 call!366416)) (h!67010 s!2326)) e!3242701)))

(declare-fun b!5208401 () Bool)

(assert (=> b!5208401 (= e!3242698 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208402 () Bool)

(declare-fun call!366528 () (InoxSet Context!8358))

(assert (=> b!5208402 (= e!3242698 call!366528)))

(declare-fun b!5208403 () Bool)

(declare-fun e!3242702 () (InoxSet Context!8358))

(assert (=> b!5208403 (= e!3242702 e!3242703)))

(declare-fun c!898024 () Bool)

(assert (=> b!5208403 (= c!898024 ((_ is Concat!23640) (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))))))

(declare-fun bm!366523 () Bool)

(declare-fun call!366529 () (InoxSet Context!8358))

(assert (=> bm!366523 (= call!366528 call!366529)))

(declare-fun b!5208404 () Bool)

(declare-fun call!366533 () (InoxSet Context!8358))

(assert (=> b!5208404 (= e!3242702 ((_ map or) call!366533 call!366529))))

(declare-fun c!898025 () Bool)

(declare-fun call!366531 () List!60684)

(declare-fun bm!366524 () Bool)

(assert (=> bm!366524 (= call!366531 ($colon$colon!1273 (exprs!4679 (ite (or c!897815 c!897817) lt!2141743 (Context!8359 call!366416))) (ite (or c!898025 c!898024) (regTwo!30102 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))) (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292)))))))))))

(declare-fun b!5208405 () Bool)

(declare-fun e!3242700 () (InoxSet Context!8358))

(declare-fun call!366532 () (InoxSet Context!8358))

(assert (=> b!5208405 (= e!3242700 ((_ map or) call!366533 call!366532))))

(declare-fun b!5208406 () Bool)

(assert (=> b!5208406 (= e!3242703 call!366528)))

(declare-fun bm!366525 () Bool)

(declare-fun call!366530 () List!60684)

(assert (=> bm!366525 (= call!366530 call!366531)))

(declare-fun bm!366526 () Bool)

(declare-fun c!898023 () Bool)

(assert (=> bm!366526 (= call!366532 (derivationStepZipperDown!243 (ite c!898023 (regTwo!30103 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))) (ite c!898025 (regTwo!30102 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))) (ite c!898024 (regOne!30102 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))) (reg!15124 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292)))))))))) (ite (or c!898023 c!898025) (ite (or c!897815 c!897817) lt!2141743 (Context!8359 call!366416)) (Context!8359 call!366530)) (h!67010 s!2326)))))

(declare-fun b!5208407 () Bool)

(declare-fun e!3242699 () Bool)

(assert (=> b!5208407 (= e!3242699 (nullable!4964 (regOne!30102 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292)))))))))))

(declare-fun b!5208408 () Bool)

(assert (=> b!5208408 (= c!898025 e!3242699)))

(declare-fun res!2212431 () Bool)

(assert (=> b!5208408 (=> (not res!2212431) (not e!3242699))))

(assert (=> b!5208408 (= res!2212431 ((_ is Concat!23640) (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))))))

(assert (=> b!5208408 (= e!3242700 e!3242702)))

(declare-fun bm!366527 () Bool)

(assert (=> bm!366527 (= call!366529 call!366532)))

(declare-fun b!5208409 () Bool)

(assert (=> b!5208409 (= e!3242701 e!3242700)))

(assert (=> b!5208409 (= c!898023 ((_ is Union!14795) (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))))))

(declare-fun b!5208410 () Bool)

(assert (=> b!5208410 (= e!3242701 (store ((as const (Array Context!8358 Bool)) false) (ite (or c!897815 c!897817) lt!2141743 (Context!8359 call!366416)) true))))

(declare-fun bm!366528 () Bool)

(assert (=> bm!366528 (= call!366533 (derivationStepZipperDown!243 (ite c!898023 (regOne!30103 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292))))))) (regOne!30102 (ite c!897815 (regTwo!30103 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897817 (regTwo!30102 (regTwo!30103 (regOne!30102 r!7292))) (ite c!897816 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))) (reg!15124 (regTwo!30103 (regOne!30102 r!7292)))))))) (ite c!898023 (ite (or c!897815 c!897817) lt!2141743 (Context!8359 call!366416)) (Context!8359 call!366531)) (h!67010 s!2326)))))

(assert (= (and d!1679585 c!898026) b!5208410))

(assert (= (and d!1679585 (not c!898026)) b!5208409))

(assert (= (and b!5208409 c!898023) b!5208405))

(assert (= (and b!5208409 (not c!898023)) b!5208408))

(assert (= (and b!5208408 res!2212431) b!5208407))

(assert (= (and b!5208408 c!898025) b!5208404))

(assert (= (and b!5208408 (not c!898025)) b!5208403))

(assert (= (and b!5208403 c!898024) b!5208406))

(assert (= (and b!5208403 (not c!898024)) b!5208400))

(assert (= (and b!5208400 c!898027) b!5208402))

(assert (= (and b!5208400 (not c!898027)) b!5208401))

(assert (= (or b!5208406 b!5208402) bm!366525))

(assert (= (or b!5208406 b!5208402) bm!366523))

(assert (= (or b!5208404 bm!366525) bm!366524))

(assert (= (or b!5208404 bm!366523) bm!366527))

(assert (= (or b!5208405 bm!366527) bm!366526))

(assert (= (or b!5208405 b!5208404) bm!366528))

(declare-fun m!6258852 () Bool)

(assert (=> b!5208407 m!6258852))

(declare-fun m!6258854 () Bool)

(assert (=> bm!366526 m!6258854))

(declare-fun m!6258856 () Bool)

(assert (=> bm!366528 m!6258856))

(declare-fun m!6258858 () Bool)

(assert (=> bm!366524 m!6258858))

(declare-fun m!6258860 () Bool)

(assert (=> b!5208410 m!6258860))

(assert (=> bm!366412 d!1679585))

(declare-fun d!1679589 () Bool)

(assert (=> d!1679589 (= ($colon$colon!1273 (exprs!4679 lt!2141743) (ite (or c!897891 c!897890) (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (h!67008 (exprs!4679 (h!67009 zl!343))))) (Cons!60560 (ite (or c!897891 c!897890) (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (h!67008 (exprs!4679 (h!67009 zl!343)))) (exprs!4679 lt!2141743)))))

(assert (=> bm!366441 d!1679589))

(assert (=> b!5207820 d!1679557))

(declare-fun b!5208411 () Bool)

(declare-fun c!898032 () Bool)

(assert (=> b!5208411 (= c!898032 ((_ is Star!14795) (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))

(declare-fun e!3242709 () (InoxSet Context!8358))

(declare-fun e!3242704 () (InoxSet Context!8358))

(assert (=> b!5208411 (= e!3242709 e!3242704)))

(declare-fun d!1679591 () Bool)

(declare-fun c!898031 () Bool)

(assert (=> d!1679591 (= c!898031 (and ((_ is ElementMatch!14795) (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))) (= (c!897710 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))) (h!67010 s!2326))))))

(declare-fun e!3242707 () (InoxSet Context!8358))

(assert (=> d!1679591 (= (derivationStepZipperDown!243 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))) (ite c!897889 lt!2141743 (Context!8359 call!366448)) (h!67010 s!2326)) e!3242707)))

(declare-fun b!5208412 () Bool)

(assert (=> b!5208412 (= e!3242704 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208413 () Bool)

(declare-fun call!366534 () (InoxSet Context!8358))

(assert (=> b!5208413 (= e!3242704 call!366534)))

(declare-fun b!5208414 () Bool)

(declare-fun e!3242708 () (InoxSet Context!8358))

(assert (=> b!5208414 (= e!3242708 e!3242709)))

(declare-fun c!898029 () Bool)

(assert (=> b!5208414 (= c!898029 ((_ is Concat!23640) (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))

(declare-fun bm!366529 () Bool)

(declare-fun call!366535 () (InoxSet Context!8358))

(assert (=> bm!366529 (= call!366534 call!366535)))

(declare-fun b!5208415 () Bool)

(declare-fun call!366539 () (InoxSet Context!8358))

(assert (=> b!5208415 (= e!3242708 ((_ map or) call!366539 call!366535))))

(declare-fun call!366537 () List!60684)

(declare-fun c!898030 () Bool)

(declare-fun bm!366530 () Bool)

(assert (=> bm!366530 (= call!366537 ($colon$colon!1273 (exprs!4679 (ite c!897889 lt!2141743 (Context!8359 call!366448))) (ite (or c!898030 c!898029) (regTwo!30102 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))) (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))))))))

(declare-fun b!5208416 () Bool)

(declare-fun e!3242706 () (InoxSet Context!8358))

(declare-fun call!366538 () (InoxSet Context!8358))

(assert (=> b!5208416 (= e!3242706 ((_ map or) call!366539 call!366538))))

(declare-fun b!5208417 () Bool)

(assert (=> b!5208417 (= e!3242709 call!366534)))

(declare-fun bm!366531 () Bool)

(declare-fun call!366536 () List!60684)

(assert (=> bm!366531 (= call!366536 call!366537)))

(declare-fun c!898028 () Bool)

(declare-fun bm!366532 () Bool)

(assert (=> bm!366532 (= call!366538 (derivationStepZipperDown!243 (ite c!898028 (regTwo!30103 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))) (ite c!898030 (regTwo!30102 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))) (ite c!898029 (regOne!30102 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))) (reg!15124 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))))))) (ite (or c!898028 c!898030) (ite c!897889 lt!2141743 (Context!8359 call!366448)) (Context!8359 call!366536)) (h!67010 s!2326)))))

(declare-fun b!5208418 () Bool)

(declare-fun e!3242705 () Bool)

(assert (=> b!5208418 (= e!3242705 (nullable!4964 (regOne!30102 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))))))))

(declare-fun b!5208419 () Bool)

(assert (=> b!5208419 (= c!898030 e!3242705)))

(declare-fun res!2212432 () Bool)

(assert (=> b!5208419 (=> (not res!2212432) (not e!3242705))))

(assert (=> b!5208419 (= res!2212432 ((_ is Concat!23640) (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))

(assert (=> b!5208419 (= e!3242706 e!3242708)))

(declare-fun bm!366533 () Bool)

(assert (=> bm!366533 (= call!366535 call!366538)))

(declare-fun b!5208420 () Bool)

(assert (=> b!5208420 (= e!3242707 e!3242706)))

(assert (=> b!5208420 (= c!898028 ((_ is Union!14795) (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))

(declare-fun b!5208421 () Bool)

(assert (=> b!5208421 (= e!3242707 (store ((as const (Array Context!8358 Bool)) false) (ite c!897889 lt!2141743 (Context!8359 call!366448)) true))))

(declare-fun bm!366534 () Bool)

(assert (=> bm!366534 (= call!366539 (derivationStepZipperDown!243 (ite c!898028 (regOne!30103 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))) (regOne!30102 (ite c!897889 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))))) (ite c!898028 (ite c!897889 lt!2141743 (Context!8359 call!366448)) (Context!8359 call!366537)) (h!67010 s!2326)))))

(assert (= (and d!1679591 c!898031) b!5208421))

(assert (= (and d!1679591 (not c!898031)) b!5208420))

(assert (= (and b!5208420 c!898028) b!5208416))

(assert (= (and b!5208420 (not c!898028)) b!5208419))

(assert (= (and b!5208419 res!2212432) b!5208418))

(assert (= (and b!5208419 c!898030) b!5208415))

(assert (= (and b!5208419 (not c!898030)) b!5208414))

(assert (= (and b!5208414 c!898029) b!5208417))

(assert (= (and b!5208414 (not c!898029)) b!5208411))

(assert (= (and b!5208411 c!898032) b!5208413))

(assert (= (and b!5208411 (not c!898032)) b!5208412))

(assert (= (or b!5208417 b!5208413) bm!366531))

(assert (= (or b!5208417 b!5208413) bm!366529))

(assert (= (or b!5208415 bm!366531) bm!366530))

(assert (= (or b!5208415 bm!366529) bm!366533))

(assert (= (or b!5208416 bm!366533) bm!366532))

(assert (= (or b!5208416 b!5208415) bm!366534))

(declare-fun m!6258862 () Bool)

(assert (=> b!5208418 m!6258862))

(declare-fun m!6258864 () Bool)

(assert (=> bm!366532 m!6258864))

(declare-fun m!6258866 () Bool)

(assert (=> bm!366534 m!6258866))

(declare-fun m!6258868 () Bool)

(assert (=> bm!366530 m!6258868))

(declare-fun m!6258870 () Bool)

(assert (=> b!5208421 m!6258870))

(assert (=> bm!366445 d!1679591))

(declare-fun d!1679593 () Bool)

(assert (=> d!1679593 (= (isEmpty!32469 (tail!10263 (unfocusZipperList!237 zl!343))) ((_ is Nil!60560) (tail!10263 (unfocusZipperList!237 zl!343))))))

(assert (=> b!5207854 d!1679593))

(declare-fun d!1679595 () Bool)

(assert (=> d!1679595 (= (tail!10263 (unfocusZipperList!237 zl!343)) (t!373843 (unfocusZipperList!237 zl!343)))))

(assert (=> b!5207854 d!1679595))

(declare-fun d!1679597 () Bool)

(assert (=> d!1679597 (= (nullable!4964 (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))) (nullableFct!1375 (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))))

(declare-fun bs!1210320 () Bool)

(assert (= bs!1210320 d!1679597))

(declare-fun m!6258872 () Bool)

(assert (=> bs!1210320 m!6258872))

(assert (=> b!5207614 d!1679597))

(declare-fun d!1679599 () Bool)

(assert (=> d!1679599 true))

(assert (=> d!1679599 true))

(declare-fun res!2212439 () Bool)

(assert (=> d!1679599 (= (choose!38718 lambda!261049) res!2212439)))

(assert (=> d!1679413 d!1679599))

(declare-fun d!1679601 () Bool)

(assert (=> d!1679601 (= (isDefined!11609 lt!2141816) (not (isEmpty!32474 lt!2141816)))))

(declare-fun bs!1210321 () Bool)

(assert (= bs!1210321 d!1679601))

(declare-fun m!6258874 () Bool)

(assert (=> bs!1210321 m!6258874))

(assert (=> d!1679411 d!1679601))

(declare-fun b!5208426 () Bool)

(declare-fun res!2212440 () Bool)

(declare-fun e!3242712 () Bool)

(assert (=> b!5208426 (=> res!2212440 e!3242712)))

(assert (=> b!5208426 (= res!2212440 (not (isEmpty!32473 (tail!10262 Nil!60562))))))

(declare-fun b!5208427 () Bool)

(declare-fun e!3242714 () Bool)

(assert (=> b!5208427 (= e!3242714 (= (head!11165 Nil!60562) (c!897710 (regOne!30102 r!7292))))))

(declare-fun b!5208428 () Bool)

(declare-fun e!3242716 () Bool)

(assert (=> b!5208428 (= e!3242716 e!3242712)))

(declare-fun res!2212446 () Bool)

(assert (=> b!5208428 (=> res!2212446 e!3242712)))

(declare-fun call!366540 () Bool)

(assert (=> b!5208428 (= res!2212446 call!366540)))

(declare-fun b!5208429 () Bool)

(assert (=> b!5208429 (= e!3242712 (not (= (head!11165 Nil!60562) (c!897710 (regOne!30102 r!7292)))))))

(declare-fun b!5208430 () Bool)

(declare-fun res!2212444 () Bool)

(declare-fun e!3242715 () Bool)

(assert (=> b!5208430 (=> res!2212444 e!3242715)))

(assert (=> b!5208430 (= res!2212444 e!3242714)))

(declare-fun res!2212445 () Bool)

(assert (=> b!5208430 (=> (not res!2212445) (not e!3242714))))

(declare-fun lt!2141859 () Bool)

(assert (=> b!5208430 (= res!2212445 lt!2141859)))

(declare-fun b!5208431 () Bool)

(declare-fun res!2212442 () Bool)

(assert (=> b!5208431 (=> (not res!2212442) (not e!3242714))))

(assert (=> b!5208431 (= res!2212442 (isEmpty!32473 (tail!10262 Nil!60562)))))

(declare-fun b!5208433 () Bool)

(assert (=> b!5208433 (= e!3242715 e!3242716)))

(declare-fun res!2212447 () Bool)

(assert (=> b!5208433 (=> (not res!2212447) (not e!3242716))))

(assert (=> b!5208433 (= res!2212447 (not lt!2141859))))

(declare-fun b!5208434 () Bool)

(declare-fun e!3242718 () Bool)

(assert (=> b!5208434 (= e!3242718 (matchR!6980 (derivativeStep!4045 (regOne!30102 r!7292) (head!11165 Nil!60562)) (tail!10262 Nil!60562)))))

(declare-fun bm!366535 () Bool)

(assert (=> bm!366535 (= call!366540 (isEmpty!32473 Nil!60562))))

(declare-fun b!5208435 () Bool)

(declare-fun e!3242713 () Bool)

(declare-fun e!3242717 () Bool)

(assert (=> b!5208435 (= e!3242713 e!3242717)))

(declare-fun c!898034 () Bool)

(assert (=> b!5208435 (= c!898034 ((_ is EmptyLang!14795) (regOne!30102 r!7292)))))

(declare-fun b!5208436 () Bool)

(declare-fun res!2212441 () Bool)

(assert (=> b!5208436 (=> (not res!2212441) (not e!3242714))))

(assert (=> b!5208436 (= res!2212441 (not call!366540))))

(declare-fun b!5208437 () Bool)

(declare-fun res!2212443 () Bool)

(assert (=> b!5208437 (=> res!2212443 e!3242715)))

(assert (=> b!5208437 (= res!2212443 (not ((_ is ElementMatch!14795) (regOne!30102 r!7292))))))

(assert (=> b!5208437 (= e!3242717 e!3242715)))

(declare-fun b!5208432 () Bool)

(assert (=> b!5208432 (= e!3242718 (nullable!4964 (regOne!30102 r!7292)))))

(declare-fun d!1679603 () Bool)

(assert (=> d!1679603 e!3242713))

(declare-fun c!898035 () Bool)

(assert (=> d!1679603 (= c!898035 ((_ is EmptyExpr!14795) (regOne!30102 r!7292)))))

(assert (=> d!1679603 (= lt!2141859 e!3242718)))

(declare-fun c!898033 () Bool)

(assert (=> d!1679603 (= c!898033 (isEmpty!32473 Nil!60562))))

(assert (=> d!1679603 (validRegex!6531 (regOne!30102 r!7292))))

(assert (=> d!1679603 (= (matchR!6980 (regOne!30102 r!7292) Nil!60562) lt!2141859)))

(declare-fun b!5208438 () Bool)

(assert (=> b!5208438 (= e!3242717 (not lt!2141859))))

(declare-fun b!5208439 () Bool)

(assert (=> b!5208439 (= e!3242713 (= lt!2141859 call!366540))))

(assert (= (and d!1679603 c!898033) b!5208432))

(assert (= (and d!1679603 (not c!898033)) b!5208434))

(assert (= (and d!1679603 c!898035) b!5208439))

(assert (= (and d!1679603 (not c!898035)) b!5208435))

(assert (= (and b!5208435 c!898034) b!5208438))

(assert (= (and b!5208435 (not c!898034)) b!5208437))

(assert (= (and b!5208437 (not res!2212443)) b!5208430))

(assert (= (and b!5208430 res!2212445) b!5208436))

(assert (= (and b!5208436 res!2212441) b!5208431))

(assert (= (and b!5208431 res!2212442) b!5208427))

(assert (= (and b!5208430 (not res!2212444)) b!5208433))

(assert (= (and b!5208433 res!2212447) b!5208428))

(assert (= (and b!5208428 (not res!2212446)) b!5208426))

(assert (= (and b!5208426 (not res!2212440)) b!5208429))

(assert (= (or b!5208439 b!5208428 b!5208436) bm!366535))

(declare-fun m!6258876 () Bool)

(assert (=> b!5208429 m!6258876))

(declare-fun m!6258878 () Bool)

(assert (=> b!5208431 m!6258878))

(assert (=> b!5208431 m!6258878))

(declare-fun m!6258880 () Bool)

(assert (=> b!5208431 m!6258880))

(declare-fun m!6258882 () Bool)

(assert (=> bm!366535 m!6258882))

(declare-fun m!6258884 () Bool)

(assert (=> b!5208432 m!6258884))

(assert (=> b!5208434 m!6258876))

(assert (=> b!5208434 m!6258876))

(declare-fun m!6258886 () Bool)

(assert (=> b!5208434 m!6258886))

(assert (=> b!5208434 m!6258878))

(assert (=> b!5208434 m!6258886))

(assert (=> b!5208434 m!6258878))

(declare-fun m!6258888 () Bool)

(assert (=> b!5208434 m!6258888))

(assert (=> b!5208426 m!6258878))

(assert (=> b!5208426 m!6258878))

(assert (=> b!5208426 m!6258880))

(assert (=> b!5208427 m!6258876))

(assert (=> d!1679603 m!6258882))

(assert (=> d!1679603 m!6258386))

(assert (=> d!1679411 d!1679603))

(assert (=> d!1679411 d!1679575))

(declare-fun bs!1210322 () Bool)

(declare-fun d!1679605 () Bool)

(assert (= bs!1210322 (and d!1679605 d!1679381)))

(declare-fun lambda!261133 () Int)

(assert (=> bs!1210322 (= lambda!261133 lambda!261088)))

(declare-fun bs!1210323 () Bool)

(assert (= bs!1210323 (and d!1679605 d!1679383)))

(assert (=> bs!1210323 (= lambda!261133 lambda!261091)))

(declare-fun bs!1210324 () Bool)

(assert (= bs!1210324 (and d!1679605 d!1679387)))

(assert (=> bs!1210324 (= lambda!261133 lambda!261094)))

(declare-fun bs!1210325 () Bool)

(assert (= bs!1210325 (and d!1679605 d!1679425)))

(assert (=> bs!1210325 (= lambda!261133 lambda!261107)))

(declare-fun bs!1210327 () Bool)

(assert (= bs!1210327 (and d!1679605 d!1679569)))

(assert (=> bs!1210327 (= lambda!261133 lambda!261127)))

(declare-fun bs!1210328 () Bool)

(assert (= bs!1210328 (and d!1679605 d!1679403)))

(assert (=> bs!1210328 (= lambda!261133 lambda!261095)))

(assert (=> d!1679605 (= (inv!80234 (h!67009 (t!373844 zl!343))) (forall!14231 (exprs!4679 (h!67009 (t!373844 zl!343))) lambda!261133))))

(declare-fun bs!1210331 () Bool)

(assert (= bs!1210331 d!1679605))

(declare-fun m!6258890 () Bool)

(assert (=> bs!1210331 m!6258890))

(assert (=> b!5208040 d!1679605))

(declare-fun d!1679607 () Bool)

(assert (=> d!1679607 (= (isEmpty!32473 s!2326) ((_ is Nil!60562) s!2326))))

(assert (=> bm!366434 d!1679607))

(declare-fun d!1679609 () Bool)

(assert (=> d!1679609 (= (nullable!4964 (h!67008 (exprs!4679 lt!2141743))) (nullableFct!1375 (h!67008 (exprs!4679 lt!2141743))))))

(declare-fun bs!1210333 () Bool)

(assert (= bs!1210333 d!1679609))

(declare-fun m!6258892 () Bool)

(assert (=> bs!1210333 m!6258892))

(assert (=> b!5207884 d!1679609))

(assert (=> b!5207889 d!1679391))

(assert (=> d!1679377 d!1679375))

(assert (=> d!1679377 d!1679345))

(declare-fun d!1679611 () Bool)

(assert (=> d!1679611 (= (matchR!6980 r!7292 s!2326) (matchRSpec!1898 r!7292 s!2326))))

(assert (=> d!1679611 true))

(declare-fun _$88!3453 () Unit!152446)

(assert (=> d!1679611 (= (choose!38714 r!7292 s!2326) _$88!3453)))

(declare-fun bs!1210341 () Bool)

(assert (= bs!1210341 d!1679611))

(assert (=> bs!1210341 m!6258018))

(assert (=> bs!1210341 m!6258016))

(assert (=> d!1679377 d!1679611))

(assert (=> d!1679377 d!1679309))

(declare-fun d!1679617 () Bool)

(assert (=> d!1679617 (= (Exists!1976 lambda!261103) (choose!38718 lambda!261103))))

(declare-fun bs!1210342 () Bool)

(assert (= bs!1210342 d!1679617))

(declare-fun m!6258912 () Bool)

(assert (=> bs!1210342 m!6258912))

(assert (=> d!1679419 d!1679617))

(declare-fun d!1679621 () Bool)

(assert (=> d!1679621 (= (Exists!1976 lambda!261104) (choose!38718 lambda!261104))))

(declare-fun bs!1210344 () Bool)

(assert (= bs!1210344 d!1679621))

(declare-fun m!6258914 () Bool)

(assert (=> bs!1210344 m!6258914))

(assert (=> d!1679419 d!1679621))

(declare-fun bs!1210362 () Bool)

(declare-fun d!1679623 () Bool)

(assert (= bs!1210362 (and d!1679623 d!1679417)))

(declare-fun lambda!261142 () Int)

(assert (=> bs!1210362 (= lambda!261142 lambda!261098)))

(declare-fun bs!1210363 () Bool)

(assert (= bs!1210363 (and d!1679623 b!5207268)))

(assert (=> bs!1210363 (= lambda!261142 lambda!261049)))

(declare-fun bs!1210364 () Bool)

(assert (= bs!1210364 (and d!1679623 b!5207783)))

(assert (=> bs!1210364 (not (= lambda!261142 lambda!261085))))

(assert (=> bs!1210363 (not (= lambda!261142 lambda!261050))))

(declare-fun bs!1210365 () Bool)

(assert (= bs!1210365 (and d!1679623 d!1679419)))

(assert (=> bs!1210365 (not (= lambda!261142 lambda!261104))))

(declare-fun bs!1210366 () Bool)

(assert (= bs!1210366 (and d!1679623 b!5207782)))

(assert (=> bs!1210366 (not (= lambda!261142 lambda!261084))))

(assert (=> bs!1210365 (= lambda!261142 lambda!261103)))

(declare-fun bs!1210367 () Bool)

(assert (= bs!1210367 (and d!1679623 d!1679577)))

(assert (=> bs!1210367 (= lambda!261142 lambda!261130)))

(assert (=> d!1679623 true))

(assert (=> d!1679623 true))

(assert (=> d!1679623 true))

(declare-fun lambda!261143 () Int)

(assert (=> bs!1210362 (not (= lambda!261143 lambda!261098))))

(declare-fun bs!1210368 () Bool)

(assert (= bs!1210368 d!1679623))

(assert (=> bs!1210368 (not (= lambda!261143 lambda!261142))))

(assert (=> bs!1210363 (not (= lambda!261143 lambda!261049))))

(assert (=> bs!1210364 (= lambda!261143 lambda!261085)))

(assert (=> bs!1210363 (= lambda!261143 lambda!261050)))

(assert (=> bs!1210365 (= lambda!261143 lambda!261104)))

(assert (=> bs!1210366 (not (= lambda!261143 lambda!261084))))

(assert (=> bs!1210365 (not (= lambda!261143 lambda!261103))))

(assert (=> bs!1210367 (not (= lambda!261143 lambda!261130))))

(assert (=> d!1679623 true))

(assert (=> d!1679623 true))

(assert (=> d!1679623 true))

(assert (=> d!1679623 (= (Exists!1976 lambda!261142) (Exists!1976 lambda!261143))))

(assert (=> d!1679623 true))

(declare-fun _$90!988 () Unit!152446)

(assert (=> d!1679623 (= (choose!38720 (regOne!30102 r!7292) (regTwo!30102 r!7292) s!2326) _$90!988)))

(declare-fun m!6258946 () Bool)

(assert (=> bs!1210368 m!6258946))

(declare-fun m!6258948 () Bool)

(assert (=> bs!1210368 m!6258948))

(assert (=> d!1679419 d!1679623))

(assert (=> d!1679419 d!1679575))

(declare-fun d!1679647 () Bool)

(declare-fun lambda!261146 () Int)

(declare-fun exists!1960 ((InoxSet Context!8358) Int) Bool)

(assert (=> d!1679647 (= (nullableZipper!1223 ((_ map or) lt!2141735 lt!2141742)) (exists!1960 ((_ map or) lt!2141735 lt!2141742) lambda!261146))))

(declare-fun bs!1210370 () Bool)

(assert (= bs!1210370 d!1679647))

(declare-fun m!6258956 () Bool)

(assert (=> bs!1210370 m!6258956))

(assert (=> b!5207497 d!1679647))

(declare-fun d!1679655 () Bool)

(assert (=> d!1679655 (= (head!11166 (unfocusZipperList!237 zl!343)) (h!67008 (unfocusZipperList!237 zl!343)))))

(assert (=> b!5207857 d!1679655))

(declare-fun d!1679659 () Bool)

(declare-fun res!2212489 () Bool)

(declare-fun e!3242774 () Bool)

(assert (=> d!1679659 (=> res!2212489 e!3242774)))

(assert (=> d!1679659 (= res!2212489 ((_ is Nil!60561) lt!2141809))))

(assert (=> d!1679659 (= (noDuplicate!1179 lt!2141809) e!3242774)))

(declare-fun b!5208519 () Bool)

(declare-fun e!3242775 () Bool)

(assert (=> b!5208519 (= e!3242774 e!3242775)))

(declare-fun res!2212490 () Bool)

(assert (=> b!5208519 (=> (not res!2212490) (not e!3242775))))

(declare-fun contains!19661 (List!60685 Context!8358) Bool)

(assert (=> b!5208519 (= res!2212490 (not (contains!19661 (t!373844 lt!2141809) (h!67009 lt!2141809))))))

(declare-fun b!5208520 () Bool)

(assert (=> b!5208520 (= e!3242775 (noDuplicate!1179 (t!373844 lt!2141809)))))

(assert (= (and d!1679659 (not res!2212489)) b!5208519))

(assert (= (and b!5208519 res!2212490) b!5208520))

(declare-fun m!6258978 () Bool)

(assert (=> b!5208519 m!6258978))

(declare-fun m!6258980 () Bool)

(assert (=> b!5208520 m!6258980))

(assert (=> d!1679407 d!1679659))

(declare-fun d!1679665 () Bool)

(declare-fun e!3242784 () Bool)

(assert (=> d!1679665 e!3242784))

(declare-fun res!2212497 () Bool)

(assert (=> d!1679665 (=> (not res!2212497) (not e!3242784))))

(declare-fun res!2212498 () List!60685)

(assert (=> d!1679665 (= res!2212497 (noDuplicate!1179 res!2212498))))

(declare-fun e!3242786 () Bool)

(assert (=> d!1679665 e!3242786))

(assert (=> d!1679665 (= (choose!38717 z!1189) res!2212498)))

(declare-fun b!5208530 () Bool)

(declare-fun e!3242785 () Bool)

(declare-fun tp!1460641 () Bool)

(assert (=> b!5208530 (= e!3242785 tp!1460641)))

(declare-fun tp!1460640 () Bool)

(declare-fun b!5208529 () Bool)

(assert (=> b!5208529 (= e!3242786 (and (inv!80234 (h!67009 res!2212498)) e!3242785 tp!1460640))))

(declare-fun b!5208531 () Bool)

(assert (=> b!5208531 (= e!3242784 (= (content!10723 res!2212498) z!1189))))

(assert (= b!5208529 b!5208530))

(assert (= (and d!1679665 ((_ is Cons!60561) res!2212498)) b!5208529))

(assert (= (and d!1679665 res!2212497) b!5208531))

(declare-fun m!6258986 () Bool)

(assert (=> d!1679665 m!6258986))

(declare-fun m!6258988 () Bool)

(assert (=> b!5208529 m!6258988))

(declare-fun m!6258990 () Bool)

(assert (=> b!5208531 m!6258990))

(assert (=> d!1679407 d!1679665))

(assert (=> d!1679317 d!1679325))

(assert (=> d!1679317 d!1679321))

(declare-fun e!3242800 () Bool)

(declare-fun d!1679673 () Bool)

(assert (=> d!1679673 (= (matchZipper!1039 ((_ map or) lt!2141735 lt!2141742) (t!373845 s!2326)) e!3242800)))

(declare-fun res!2212507 () Bool)

(assert (=> d!1679673 (=> res!2212507 e!3242800)))

(assert (=> d!1679673 (= res!2212507 (matchZipper!1039 lt!2141735 (t!373845 s!2326)))))

(assert (=> d!1679673 true))

(declare-fun _$48!790 () Unit!152446)

(assert (=> d!1679673 (= (choose!38711 lt!2141735 lt!2141742 (t!373845 s!2326)) _$48!790)))

(declare-fun b!5208550 () Bool)

(assert (=> b!5208550 (= e!3242800 (matchZipper!1039 lt!2141742 (t!373845 s!2326)))))

(assert (= (and d!1679673 (not res!2212507)) b!5208550))

(assert (=> d!1679673 m!6257994))

(assert (=> d!1679673 m!6257992))

(assert (=> b!5208550 m!6257968))

(assert (=> d!1679317 d!1679673))

(declare-fun d!1679679 () Bool)

(assert (=> d!1679679 (= (isEmpty!32474 (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326)) (not ((_ is Some!14905) (findConcatSeparation!1320 (regOne!30102 r!7292) (regTwo!30102 r!7292) Nil!60562 s!2326 s!2326))))))

(assert (=> d!1679421 d!1679679))

(assert (=> b!5207448 d!1679423))

(declare-fun b!5208551 () Bool)

(declare-fun c!898066 () Bool)

(assert (=> b!5208551 (= c!898066 ((_ is Star!14795) (h!67008 (exprs!4679 lt!2141743))))))

(declare-fun e!3242806 () (InoxSet Context!8358))

(declare-fun e!3242801 () (InoxSet Context!8358))

(assert (=> b!5208551 (= e!3242806 e!3242801)))

(declare-fun d!1679681 () Bool)

(declare-fun c!898065 () Bool)

(assert (=> d!1679681 (= c!898065 (and ((_ is ElementMatch!14795) (h!67008 (exprs!4679 lt!2141743))) (= (c!897710 (h!67008 (exprs!4679 lt!2141743))) (h!67010 s!2326))))))

(declare-fun e!3242804 () (InoxSet Context!8358))

(assert (=> d!1679681 (= (derivationStepZipperDown!243 (h!67008 (exprs!4679 lt!2141743)) (Context!8359 (t!373843 (exprs!4679 lt!2141743))) (h!67010 s!2326)) e!3242804)))

(declare-fun b!5208552 () Bool)

(assert (=> b!5208552 (= e!3242801 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208553 () Bool)

(declare-fun call!366567 () (InoxSet Context!8358))

(assert (=> b!5208553 (= e!3242801 call!366567)))

(declare-fun b!5208554 () Bool)

(declare-fun e!3242805 () (InoxSet Context!8358))

(assert (=> b!5208554 (= e!3242805 e!3242806)))

(declare-fun c!898063 () Bool)

(assert (=> b!5208554 (= c!898063 ((_ is Concat!23640) (h!67008 (exprs!4679 lt!2141743))))))

(declare-fun bm!366562 () Bool)

(declare-fun call!366568 () (InoxSet Context!8358))

(assert (=> bm!366562 (= call!366567 call!366568)))

(declare-fun b!5208555 () Bool)

(declare-fun call!366572 () (InoxSet Context!8358))

(assert (=> b!5208555 (= e!3242805 ((_ map or) call!366572 call!366568))))

(declare-fun bm!366563 () Bool)

(declare-fun call!366570 () List!60684)

(declare-fun c!898064 () Bool)

(assert (=> bm!366563 (= call!366570 ($colon$colon!1273 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 lt!2141743)))) (ite (or c!898064 c!898063) (regTwo!30102 (h!67008 (exprs!4679 lt!2141743))) (h!67008 (exprs!4679 lt!2141743)))))))

(declare-fun b!5208556 () Bool)

(declare-fun e!3242803 () (InoxSet Context!8358))

(declare-fun call!366571 () (InoxSet Context!8358))

(assert (=> b!5208556 (= e!3242803 ((_ map or) call!366572 call!366571))))

(declare-fun b!5208557 () Bool)

(assert (=> b!5208557 (= e!3242806 call!366567)))

(declare-fun bm!366564 () Bool)

(declare-fun call!366569 () List!60684)

(assert (=> bm!366564 (= call!366569 call!366570)))

(declare-fun bm!366565 () Bool)

(declare-fun c!898062 () Bool)

(assert (=> bm!366565 (= call!366571 (derivationStepZipperDown!243 (ite c!898062 (regTwo!30103 (h!67008 (exprs!4679 lt!2141743))) (ite c!898064 (regTwo!30102 (h!67008 (exprs!4679 lt!2141743))) (ite c!898063 (regOne!30102 (h!67008 (exprs!4679 lt!2141743))) (reg!15124 (h!67008 (exprs!4679 lt!2141743)))))) (ite (or c!898062 c!898064) (Context!8359 (t!373843 (exprs!4679 lt!2141743))) (Context!8359 call!366569)) (h!67010 s!2326)))))

(declare-fun b!5208558 () Bool)

(declare-fun e!3242802 () Bool)

(assert (=> b!5208558 (= e!3242802 (nullable!4964 (regOne!30102 (h!67008 (exprs!4679 lt!2141743)))))))

(declare-fun b!5208559 () Bool)

(assert (=> b!5208559 (= c!898064 e!3242802)))

(declare-fun res!2212508 () Bool)

(assert (=> b!5208559 (=> (not res!2212508) (not e!3242802))))

(assert (=> b!5208559 (= res!2212508 ((_ is Concat!23640) (h!67008 (exprs!4679 lt!2141743))))))

(assert (=> b!5208559 (= e!3242803 e!3242805)))

(declare-fun bm!366566 () Bool)

(assert (=> bm!366566 (= call!366568 call!366571)))

(declare-fun b!5208560 () Bool)

(assert (=> b!5208560 (= e!3242804 e!3242803)))

(assert (=> b!5208560 (= c!898062 ((_ is Union!14795) (h!67008 (exprs!4679 lt!2141743))))))

(declare-fun b!5208561 () Bool)

(assert (=> b!5208561 (= e!3242804 (store ((as const (Array Context!8358 Bool)) false) (Context!8359 (t!373843 (exprs!4679 lt!2141743))) true))))

(declare-fun bm!366567 () Bool)

(assert (=> bm!366567 (= call!366572 (derivationStepZipperDown!243 (ite c!898062 (regOne!30103 (h!67008 (exprs!4679 lt!2141743))) (regOne!30102 (h!67008 (exprs!4679 lt!2141743)))) (ite c!898062 (Context!8359 (t!373843 (exprs!4679 lt!2141743))) (Context!8359 call!366570)) (h!67010 s!2326)))))

(assert (= (and d!1679681 c!898065) b!5208561))

(assert (= (and d!1679681 (not c!898065)) b!5208560))

(assert (= (and b!5208560 c!898062) b!5208556))

(assert (= (and b!5208560 (not c!898062)) b!5208559))

(assert (= (and b!5208559 res!2212508) b!5208558))

(assert (= (and b!5208559 c!898064) b!5208555))

(assert (= (and b!5208559 (not c!898064)) b!5208554))

(assert (= (and b!5208554 c!898063) b!5208557))

(assert (= (and b!5208554 (not c!898063)) b!5208551))

(assert (= (and b!5208551 c!898066) b!5208553))

(assert (= (and b!5208551 (not c!898066)) b!5208552))

(assert (= (or b!5208557 b!5208553) bm!366564))

(assert (= (or b!5208557 b!5208553) bm!366562))

(assert (= (or b!5208555 bm!366564) bm!366563))

(assert (= (or b!5208555 bm!366562) bm!366566))

(assert (= (or b!5208556 bm!366566) bm!366565))

(assert (= (or b!5208556 b!5208555) bm!366567))

(declare-fun m!6258998 () Bool)

(assert (=> b!5208558 m!6258998))

(declare-fun m!6259000 () Bool)

(assert (=> bm!366565 m!6259000))

(declare-fun m!6259002 () Bool)

(assert (=> bm!366567 m!6259002))

(declare-fun m!6259004 () Bool)

(assert (=> bm!366563 m!6259004))

(declare-fun m!6259006 () Bool)

(assert (=> b!5208561 m!6259006))

(assert (=> bm!366438 d!1679681))

(declare-fun b!5208562 () Bool)

(declare-fun c!898071 () Bool)

(assert (=> b!5208562 (= c!898071 ((_ is Star!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun e!3242812 () (InoxSet Context!8358))

(declare-fun e!3242807 () (InoxSet Context!8358))

(assert (=> b!5208562 (= e!3242812 e!3242807)))

(declare-fun d!1679683 () Bool)

(declare-fun c!898070 () Bool)

(assert (=> d!1679683 (= c!898070 (and ((_ is ElementMatch!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))) (= (c!897710 (h!67008 (exprs!4679 (h!67009 zl!343)))) (h!67010 s!2326))))))

(declare-fun e!3242810 () (InoxSet Context!8358))

(assert (=> d!1679683 (= (derivationStepZipperDown!243 (h!67008 (exprs!4679 (h!67009 zl!343))) (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))) (h!67010 s!2326)) e!3242810)))

(declare-fun b!5208563 () Bool)

(assert (=> b!5208563 (= e!3242807 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208564 () Bool)

(declare-fun call!366573 () (InoxSet Context!8358))

(assert (=> b!5208564 (= e!3242807 call!366573)))

(declare-fun b!5208565 () Bool)

(declare-fun e!3242811 () (InoxSet Context!8358))

(assert (=> b!5208565 (= e!3242811 e!3242812)))

(declare-fun c!898068 () Bool)

(assert (=> b!5208565 (= c!898068 ((_ is Concat!23640) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun bm!366568 () Bool)

(declare-fun call!366574 () (InoxSet Context!8358))

(assert (=> bm!366568 (= call!366573 call!366574)))

(declare-fun b!5208566 () Bool)

(declare-fun call!366578 () (InoxSet Context!8358))

(assert (=> b!5208566 (= e!3242811 ((_ map or) call!366578 call!366574))))

(declare-fun bm!366569 () Bool)

(declare-fun c!898069 () Bool)

(declare-fun call!366576 () List!60684)

(assert (=> bm!366569 (= call!366576 ($colon$colon!1273 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343))))) (ite (or c!898069 c!898068) (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (h!67008 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun b!5208567 () Bool)

(declare-fun e!3242809 () (InoxSet Context!8358))

(declare-fun call!366577 () (InoxSet Context!8358))

(assert (=> b!5208567 (= e!3242809 ((_ map or) call!366578 call!366577))))

(declare-fun b!5208568 () Bool)

(assert (=> b!5208568 (= e!3242812 call!366573)))

(declare-fun bm!366570 () Bool)

(declare-fun call!366575 () List!60684)

(assert (=> bm!366570 (= call!366575 call!366576)))

(declare-fun c!898067 () Bool)

(declare-fun bm!366571 () Bool)

(assert (=> bm!366571 (= call!366577 (derivationStepZipperDown!243 (ite c!898067 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!898069 (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (ite c!898068 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))) (reg!15124 (h!67008 (exprs!4679 (h!67009 zl!343))))))) (ite (or c!898067 c!898069) (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))) (Context!8359 call!366575)) (h!67010 s!2326)))))

(declare-fun b!5208569 () Bool)

(declare-fun e!3242808 () Bool)

(assert (=> b!5208569 (= e!3242808 (nullable!4964 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun b!5208570 () Bool)

(assert (=> b!5208570 (= c!898069 e!3242808)))

(declare-fun res!2212509 () Bool)

(assert (=> b!5208570 (=> (not res!2212509) (not e!3242808))))

(assert (=> b!5208570 (= res!2212509 ((_ is Concat!23640) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(assert (=> b!5208570 (= e!3242809 e!3242811)))

(declare-fun bm!366572 () Bool)

(assert (=> bm!366572 (= call!366574 call!366577)))

(declare-fun b!5208571 () Bool)

(assert (=> b!5208571 (= e!3242810 e!3242809)))

(assert (=> b!5208571 (= c!898067 ((_ is Union!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5208572 () Bool)

(assert (=> b!5208572 (= e!3242810 (store ((as const (Array Context!8358 Bool)) false) (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))) true))))

(declare-fun bm!366573 () Bool)

(assert (=> bm!366573 (= call!366578 (derivationStepZipperDown!243 (ite c!898067 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))) (ite c!898067 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))) (Context!8359 call!366576)) (h!67010 s!2326)))))

(assert (= (and d!1679683 c!898070) b!5208572))

(assert (= (and d!1679683 (not c!898070)) b!5208571))

(assert (= (and b!5208571 c!898067) b!5208567))

(assert (= (and b!5208571 (not c!898067)) b!5208570))

(assert (= (and b!5208570 res!2212509) b!5208569))

(assert (= (and b!5208570 c!898069) b!5208566))

(assert (= (and b!5208570 (not c!898069)) b!5208565))

(assert (= (and b!5208565 c!898068) b!5208568))

(assert (= (and b!5208565 (not c!898068)) b!5208562))

(assert (= (and b!5208562 c!898071) b!5208564))

(assert (= (and b!5208562 (not c!898071)) b!5208563))

(assert (= (or b!5208568 b!5208564) bm!366570))

(assert (= (or b!5208568 b!5208564) bm!366568))

(assert (= (or b!5208566 bm!366570) bm!366569))

(assert (= (or b!5208566 bm!366568) bm!366572))

(assert (= (or b!5208567 bm!366572) bm!366571))

(assert (= (or b!5208567 b!5208566) bm!366573))

(assert (=> b!5208569 m!6258360))

(declare-fun m!6259008 () Bool)

(assert (=> bm!366571 m!6259008))

(declare-fun m!6259010 () Bool)

(assert (=> bm!366573 m!6259010))

(declare-fun m!6259012 () Bool)

(assert (=> bm!366569 m!6259012))

(declare-fun m!6259014 () Bool)

(assert (=> b!5208572 m!6259014))

(assert (=> bm!366439 d!1679683))

(declare-fun d!1679685 () Bool)

(assert (=> d!1679685 (= (isUnion!200 lt!2141797) ((_ is Union!14795) lt!2141797))))

(assert (=> b!5207855 d!1679685))

(declare-fun d!1679687 () Bool)

(assert (=> d!1679687 (= (nullable!4964 (reg!15124 r!7292)) (nullableFct!1375 (reg!15124 r!7292)))))

(declare-fun bs!1210399 () Bool)

(assert (= bs!1210399 d!1679687))

(declare-fun m!6259016 () Bool)

(assert (=> bs!1210399 m!6259016))

(assert (=> b!5207430 d!1679687))

(assert (=> bm!366431 d!1679607))

(declare-fun d!1679689 () Bool)

(assert (=> d!1679689 (= (nullable!4964 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))) (nullableFct!1375 (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))))))

(declare-fun bs!1210400 () Bool)

(assert (= bs!1210400 d!1679689))

(declare-fun m!6259018 () Bool)

(assert (=> bs!1210400 m!6259018))

(assert (=> b!5207635 d!1679689))

(declare-fun d!1679691 () Bool)

(assert (=> d!1679691 (= (isEmpty!32473 (t!373845 s!2326)) ((_ is Nil!60562) (t!373845 s!2326)))))

(assert (=> d!1679423 d!1679691))

(declare-fun b!5208573 () Bool)

(declare-fun e!3242816 () Bool)

(declare-fun call!366581 () Bool)

(assert (=> b!5208573 (= e!3242816 call!366581)))

(declare-fun b!5208574 () Bool)

(declare-fun e!3242815 () Bool)

(assert (=> b!5208574 (= e!3242815 call!366581)))

(declare-fun b!5208575 () Bool)

(declare-fun res!2212510 () Bool)

(declare-fun e!3242818 () Bool)

(assert (=> b!5208575 (=> res!2212510 e!3242818)))

(assert (=> b!5208575 (= res!2212510 (not ((_ is Concat!23640) (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))))))))))

(declare-fun e!3242813 () Bool)

(assert (=> b!5208575 (= e!3242813 e!3242818)))

(declare-fun b!5208577 () Bool)

(declare-fun e!3242819 () Bool)

(declare-fun e!3242814 () Bool)

(assert (=> b!5208577 (= e!3242819 e!3242814)))

(declare-fun res!2212511 () Bool)

(assert (=> b!5208577 (= res!2212511 (not (nullable!4964 (reg!15124 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))))))))

(assert (=> b!5208577 (=> (not res!2212511) (not e!3242814))))

(declare-fun bm!366574 () Bool)

(declare-fun call!366580 () Bool)

(assert (=> bm!366574 (= call!366581 call!366580)))

(declare-fun b!5208578 () Bool)

(declare-fun res!2212513 () Bool)

(assert (=> b!5208578 (=> (not res!2212513) (not e!3242816))))

(declare-fun call!366579 () Bool)

(assert (=> b!5208578 (= res!2212513 call!366579)))

(assert (=> b!5208578 (= e!3242813 e!3242816)))

(declare-fun b!5208579 () Bool)

(assert (=> b!5208579 (= e!3242818 e!3242815)))

(declare-fun res!2212514 () Bool)

(assert (=> b!5208579 (=> (not res!2212514) (not e!3242815))))

(assert (=> b!5208579 (= res!2212514 call!366579)))

(declare-fun b!5208580 () Bool)

(assert (=> b!5208580 (= e!3242814 call!366580)))

(declare-fun c!898073 () Bool)

(declare-fun bm!366575 () Bool)

(declare-fun c!898072 () Bool)

(assert (=> bm!366575 (= call!366580 (validRegex!6531 (ite c!898072 (reg!15124 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))) (ite c!898073 (regTwo!30103 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))) (regTwo!30102 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))))))))))))

(declare-fun d!1679693 () Bool)

(declare-fun res!2212512 () Bool)

(declare-fun e!3242817 () Bool)

(assert (=> d!1679693 (=> res!2212512 e!3242817)))

(assert (=> d!1679693 (= res!2212512 ((_ is ElementMatch!14795) (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))))))

(assert (=> d!1679693 (= (validRegex!6531 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))) e!3242817)))

(declare-fun b!5208576 () Bool)

(assert (=> b!5208576 (= e!3242819 e!3242813)))

(assert (=> b!5208576 (= c!898073 ((_ is Union!14795) (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))))))

(declare-fun b!5208581 () Bool)

(assert (=> b!5208581 (= e!3242817 e!3242819)))

(assert (=> b!5208581 (= c!898072 ((_ is Star!14795) (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))))))

(declare-fun bm!366576 () Bool)

(assert (=> bm!366576 (= call!366579 (validRegex!6531 (ite c!898073 (regOne!30103 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))) (regOne!30102 (ite c!897894 (reg!15124 (regOne!30103 (regOne!30102 r!7292))) (ite c!897895 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292)))))))))))

(assert (= (and d!1679693 (not res!2212512)) b!5208581))

(assert (= (and b!5208581 c!898072) b!5208577))

(assert (= (and b!5208581 (not c!898072)) b!5208576))

(assert (= (and b!5208577 res!2212511) b!5208580))

(assert (= (and b!5208576 c!898073) b!5208578))

(assert (= (and b!5208576 (not c!898073)) b!5208575))

(assert (= (and b!5208578 res!2212513) b!5208573))

(assert (= (and b!5208575 (not res!2212510)) b!5208579))

(assert (= (and b!5208579 res!2212514) b!5208574))

(assert (= (or b!5208573 b!5208574) bm!366574))

(assert (= (or b!5208578 b!5208579) bm!366576))

(assert (= (or b!5208580 bm!366574) bm!366575))

(declare-fun m!6259026 () Bool)

(assert (=> b!5208577 m!6259026))

(declare-fun m!6259028 () Bool)

(assert (=> bm!366575 m!6259028))

(declare-fun m!6259030 () Bool)

(assert (=> bm!366576 m!6259030))

(assert (=> bm!366447 d!1679693))

(assert (=> b!5207981 d!1679379))

(assert (=> d!1679325 d!1679691))

(declare-fun b!5208584 () Bool)

(declare-fun res!2212515 () Bool)

(declare-fun e!3242821 () Bool)

(assert (=> b!5208584 (=> res!2212515 e!3242821)))

(assert (=> b!5208584 (= res!2212515 (not (isEmpty!32473 (tail!10262 (_1!35297 (get!20806 lt!2141816))))))))

(declare-fun b!5208585 () Bool)

(declare-fun e!3242823 () Bool)

(assert (=> b!5208585 (= e!3242823 (= (head!11165 (_1!35297 (get!20806 lt!2141816))) (c!897710 (regOne!30102 r!7292))))))

(declare-fun b!5208586 () Bool)

(declare-fun e!3242825 () Bool)

(assert (=> b!5208586 (= e!3242825 e!3242821)))

(declare-fun res!2212521 () Bool)

(assert (=> b!5208586 (=> res!2212521 e!3242821)))

(declare-fun call!366582 () Bool)

(assert (=> b!5208586 (= res!2212521 call!366582)))

(declare-fun b!5208587 () Bool)

(assert (=> b!5208587 (= e!3242821 (not (= (head!11165 (_1!35297 (get!20806 lt!2141816))) (c!897710 (regOne!30102 r!7292)))))))

(declare-fun b!5208588 () Bool)

(declare-fun res!2212519 () Bool)

(declare-fun e!3242824 () Bool)

(assert (=> b!5208588 (=> res!2212519 e!3242824)))

(assert (=> b!5208588 (= res!2212519 e!3242823)))

(declare-fun res!2212520 () Bool)

(assert (=> b!5208588 (=> (not res!2212520) (not e!3242823))))

(declare-fun lt!2141862 () Bool)

(assert (=> b!5208588 (= res!2212520 lt!2141862)))

(declare-fun b!5208589 () Bool)

(declare-fun res!2212517 () Bool)

(assert (=> b!5208589 (=> (not res!2212517) (not e!3242823))))

(assert (=> b!5208589 (= res!2212517 (isEmpty!32473 (tail!10262 (_1!35297 (get!20806 lt!2141816)))))))

(declare-fun b!5208591 () Bool)

(assert (=> b!5208591 (= e!3242824 e!3242825)))

(declare-fun res!2212522 () Bool)

(assert (=> b!5208591 (=> (not res!2212522) (not e!3242825))))

(assert (=> b!5208591 (= res!2212522 (not lt!2141862))))

(declare-fun b!5208592 () Bool)

(declare-fun e!3242827 () Bool)

(assert (=> b!5208592 (= e!3242827 (matchR!6980 (derivativeStep!4045 (regOne!30102 r!7292) (head!11165 (_1!35297 (get!20806 lt!2141816)))) (tail!10262 (_1!35297 (get!20806 lt!2141816)))))))

(declare-fun bm!366577 () Bool)

(assert (=> bm!366577 (= call!366582 (isEmpty!32473 (_1!35297 (get!20806 lt!2141816))))))

(declare-fun b!5208593 () Bool)

(declare-fun e!3242822 () Bool)

(declare-fun e!3242826 () Bool)

(assert (=> b!5208593 (= e!3242822 e!3242826)))

(declare-fun c!898076 () Bool)

(assert (=> b!5208593 (= c!898076 ((_ is EmptyLang!14795) (regOne!30102 r!7292)))))

(declare-fun b!5208594 () Bool)

(declare-fun res!2212516 () Bool)

(assert (=> b!5208594 (=> (not res!2212516) (not e!3242823))))

(assert (=> b!5208594 (= res!2212516 (not call!366582))))

(declare-fun b!5208595 () Bool)

(declare-fun res!2212518 () Bool)

(assert (=> b!5208595 (=> res!2212518 e!3242824)))

(assert (=> b!5208595 (= res!2212518 (not ((_ is ElementMatch!14795) (regOne!30102 r!7292))))))

(assert (=> b!5208595 (= e!3242826 e!3242824)))

(declare-fun b!5208590 () Bool)

(assert (=> b!5208590 (= e!3242827 (nullable!4964 (regOne!30102 r!7292)))))

(declare-fun d!1679699 () Bool)

(assert (=> d!1679699 e!3242822))

(declare-fun c!898077 () Bool)

(assert (=> d!1679699 (= c!898077 ((_ is EmptyExpr!14795) (regOne!30102 r!7292)))))

(assert (=> d!1679699 (= lt!2141862 e!3242827)))

(declare-fun c!898075 () Bool)

(assert (=> d!1679699 (= c!898075 (isEmpty!32473 (_1!35297 (get!20806 lt!2141816))))))

(assert (=> d!1679699 (validRegex!6531 (regOne!30102 r!7292))))

(assert (=> d!1679699 (= (matchR!6980 (regOne!30102 r!7292) (_1!35297 (get!20806 lt!2141816))) lt!2141862)))

(declare-fun b!5208596 () Bool)

(assert (=> b!5208596 (= e!3242826 (not lt!2141862))))

(declare-fun b!5208597 () Bool)

(assert (=> b!5208597 (= e!3242822 (= lt!2141862 call!366582))))

(assert (= (and d!1679699 c!898075) b!5208590))

(assert (= (and d!1679699 (not c!898075)) b!5208592))

(assert (= (and d!1679699 c!898077) b!5208597))

(assert (= (and d!1679699 (not c!898077)) b!5208593))

(assert (= (and b!5208593 c!898076) b!5208596))

(assert (= (and b!5208593 (not c!898076)) b!5208595))

(assert (= (and b!5208595 (not res!2212518)) b!5208588))

(assert (= (and b!5208588 res!2212520) b!5208594))

(assert (= (and b!5208594 res!2212516) b!5208589))

(assert (= (and b!5208589 res!2212517) b!5208585))

(assert (= (and b!5208588 (not res!2212519)) b!5208591))

(assert (= (and b!5208591 res!2212522) b!5208586))

(assert (= (and b!5208586 (not res!2212521)) b!5208584))

(assert (= (and b!5208584 (not res!2212515)) b!5208587))

(assert (= (or b!5208597 b!5208586 b!5208594) bm!366577))

(declare-fun m!6259038 () Bool)

(assert (=> b!5208587 m!6259038))

(declare-fun m!6259040 () Bool)

(assert (=> b!5208589 m!6259040))

(assert (=> b!5208589 m!6259040))

(declare-fun m!6259044 () Bool)

(assert (=> b!5208589 m!6259044))

(declare-fun m!6259046 () Bool)

(assert (=> bm!366577 m!6259046))

(assert (=> b!5208590 m!6258884))

(assert (=> b!5208592 m!6259038))

(assert (=> b!5208592 m!6259038))

(declare-fun m!6259048 () Bool)

(assert (=> b!5208592 m!6259048))

(assert (=> b!5208592 m!6259040))

(assert (=> b!5208592 m!6259048))

(assert (=> b!5208592 m!6259040))

(declare-fun m!6259052 () Bool)

(assert (=> b!5208592 m!6259052))

(assert (=> b!5208584 m!6259040))

(assert (=> b!5208584 m!6259040))

(assert (=> b!5208584 m!6259044))

(assert (=> b!5208585 m!6259038))

(assert (=> d!1679699 m!6259046))

(assert (=> d!1679699 m!6258386))

(assert (=> b!5207937 d!1679699))

(assert (=> b!5207937 d!1679565))

(declare-fun d!1679707 () Bool)

(declare-fun c!898080 () Bool)

(assert (=> d!1679707 (= c!898080 (isEmpty!32473 (tail!10262 (t!373845 s!2326))))))

(declare-fun e!3242831 () Bool)

(assert (=> d!1679707 (= (matchZipper!1039 (derivationStepZipper!1067 lt!2141735 (head!11165 (t!373845 s!2326))) (tail!10262 (t!373845 s!2326))) e!3242831)))

(declare-fun b!5208603 () Bool)

(assert (=> b!5208603 (= e!3242831 (nullableZipper!1223 (derivationStepZipper!1067 lt!2141735 (head!11165 (t!373845 s!2326)))))))

(declare-fun b!5208604 () Bool)

(assert (=> b!5208604 (= e!3242831 (matchZipper!1039 (derivationStepZipper!1067 (derivationStepZipper!1067 lt!2141735 (head!11165 (t!373845 s!2326))) (head!11165 (tail!10262 (t!373845 s!2326)))) (tail!10262 (tail!10262 (t!373845 s!2326)))))))

(assert (= (and d!1679707 c!898080) b!5208603))

(assert (= (and d!1679707 (not c!898080)) b!5208604))

(assert (=> d!1679707 m!6258130))

(assert (=> d!1679707 m!6258738))

(assert (=> b!5208603 m!6258128))

(declare-fun m!6259056 () Bool)

(assert (=> b!5208603 m!6259056))

(assert (=> b!5208604 m!6258130))

(assert (=> b!5208604 m!6258742))

(assert (=> b!5208604 m!6258128))

(assert (=> b!5208604 m!6258742))

(declare-fun m!6259062 () Bool)

(assert (=> b!5208604 m!6259062))

(assert (=> b!5208604 m!6258130))

(assert (=> b!5208604 m!6258746))

(assert (=> b!5208604 m!6259062))

(assert (=> b!5208604 m!6258746))

(declare-fun m!6259064 () Bool)

(assert (=> b!5208604 m!6259064))

(assert (=> b!5207496 d!1679707))

(declare-fun bs!1210405 () Bool)

(declare-fun d!1679711 () Bool)

(assert (= bs!1210405 (and d!1679711 b!5207273)))

(declare-fun lambda!261151 () Int)

(assert (=> bs!1210405 (= (= (head!11165 (t!373845 s!2326)) (h!67010 s!2326)) (= lambda!261151 lambda!261051))))

(declare-fun bs!1210406 () Bool)

(assert (= bs!1210406 (and d!1679711 d!1679549)))

(assert (=> bs!1210406 (= lambda!261151 lambda!261126)))

(assert (=> d!1679711 true))

(assert (=> d!1679711 (= (derivationStepZipper!1067 lt!2141735 (head!11165 (t!373845 s!2326))) (flatMap!522 lt!2141735 lambda!261151))))

(declare-fun bs!1210407 () Bool)

(assert (= bs!1210407 d!1679711))

(declare-fun m!6259072 () Bool)

(assert (=> bs!1210407 m!6259072))

(assert (=> b!5207496 d!1679711))

(assert (=> b!5207496 d!1679553))

(assert (=> b!5207496 d!1679555))

(declare-fun bs!1210411 () Bool)

(declare-fun d!1679715 () Bool)

(assert (= bs!1210411 (and d!1679715 d!1679383)))

(declare-fun lambda!261153 () Int)

(assert (=> bs!1210411 (= lambda!261153 lambda!261091)))

(declare-fun bs!1210413 () Bool)

(assert (= bs!1210413 (and d!1679715 d!1679387)))

(assert (=> bs!1210413 (= lambda!261153 lambda!261094)))

(declare-fun bs!1210414 () Bool)

(assert (= bs!1210414 (and d!1679715 d!1679425)))

(assert (=> bs!1210414 (= lambda!261153 lambda!261107)))

(declare-fun bs!1210415 () Bool)

(assert (= bs!1210415 (and d!1679715 d!1679569)))

(assert (=> bs!1210415 (= lambda!261153 lambda!261127)))

(declare-fun bs!1210416 () Bool)

(assert (= bs!1210416 (and d!1679715 d!1679403)))

(assert (=> bs!1210416 (= lambda!261153 lambda!261095)))

(declare-fun bs!1210417 () Bool)

(assert (= bs!1210417 (and d!1679715 d!1679381)))

(assert (=> bs!1210417 (= lambda!261153 lambda!261088)))

(declare-fun bs!1210418 () Bool)

(assert (= bs!1210418 (and d!1679715 d!1679605)))

(assert (=> bs!1210418 (= lambda!261153 lambda!261133)))

(declare-fun b!5208607 () Bool)

(declare-fun e!3242836 () Bool)

(declare-fun lt!2141863 () Regex!14795)

(assert (=> b!5208607 (= e!3242836 (isEmptyLang!768 lt!2141863))))

(declare-fun b!5208608 () Bool)

(declare-fun e!3242834 () Bool)

(assert (=> b!5208608 (= e!3242836 e!3242834)))

(declare-fun c!898083 () Bool)

(assert (=> b!5208608 (= c!898083 (isEmpty!32469 (tail!10263 (t!373843 (unfocusZipperList!237 zl!343)))))))

(declare-fun b!5208609 () Bool)

(assert (=> b!5208609 (= e!3242834 (isUnion!200 lt!2141863))))

(declare-fun b!5208610 () Bool)

(declare-fun e!3242838 () Bool)

(assert (=> b!5208610 (= e!3242838 (isEmpty!32469 (t!373843 (t!373843 (unfocusZipperList!237 zl!343)))))))

(declare-fun e!3242835 () Bool)

(assert (=> d!1679715 e!3242835))

(declare-fun res!2212524 () Bool)

(assert (=> d!1679715 (=> (not res!2212524) (not e!3242835))))

(assert (=> d!1679715 (= res!2212524 (validRegex!6531 lt!2141863))))

(declare-fun e!3242837 () Regex!14795)

(assert (=> d!1679715 (= lt!2141863 e!3242837)))

(declare-fun c!898084 () Bool)

(assert (=> d!1679715 (= c!898084 e!3242838)))

(declare-fun res!2212525 () Bool)

(assert (=> d!1679715 (=> (not res!2212525) (not e!3242838))))

(assert (=> d!1679715 (= res!2212525 ((_ is Cons!60560) (t!373843 (unfocusZipperList!237 zl!343))))))

(assert (=> d!1679715 (forall!14231 (t!373843 (unfocusZipperList!237 zl!343)) lambda!261153)))

(assert (=> d!1679715 (= (generalisedUnion!724 (t!373843 (unfocusZipperList!237 zl!343))) lt!2141863)))

(declare-fun b!5208611 () Bool)

(assert (=> b!5208611 (= e!3242834 (= lt!2141863 (head!11166 (t!373843 (unfocusZipperList!237 zl!343)))))))

(declare-fun b!5208612 () Bool)

(declare-fun e!3242833 () Regex!14795)

(assert (=> b!5208612 (= e!3242837 e!3242833)))

(declare-fun c!898085 () Bool)

(assert (=> b!5208612 (= c!898085 ((_ is Cons!60560) (t!373843 (unfocusZipperList!237 zl!343))))))

(declare-fun b!5208613 () Bool)

(assert (=> b!5208613 (= e!3242833 EmptyLang!14795)))

(declare-fun b!5208614 () Bool)

(assert (=> b!5208614 (= e!3242835 e!3242836)))

(declare-fun c!898082 () Bool)

(assert (=> b!5208614 (= c!898082 (isEmpty!32469 (t!373843 (unfocusZipperList!237 zl!343))))))

(declare-fun b!5208615 () Bool)

(assert (=> b!5208615 (= e!3242833 (Union!14795 (h!67008 (t!373843 (unfocusZipperList!237 zl!343))) (generalisedUnion!724 (t!373843 (t!373843 (unfocusZipperList!237 zl!343))))))))

(declare-fun b!5208616 () Bool)

(assert (=> b!5208616 (= e!3242837 (h!67008 (t!373843 (unfocusZipperList!237 zl!343))))))

(assert (= (and d!1679715 res!2212525) b!5208610))

(assert (= (and d!1679715 c!898084) b!5208616))

(assert (= (and d!1679715 (not c!898084)) b!5208612))

(assert (= (and b!5208612 c!898085) b!5208615))

(assert (= (and b!5208612 (not c!898085)) b!5208613))

(assert (= (and d!1679715 res!2212524) b!5208614))

(assert (= (and b!5208614 c!898082) b!5208607))

(assert (= (and b!5208614 (not c!898082)) b!5208608))

(assert (= (and b!5208608 c!898083) b!5208611))

(assert (= (and b!5208608 (not c!898083)) b!5208609))

(declare-fun m!6259086 () Bool)

(assert (=> b!5208610 m!6259086))

(declare-fun m!6259088 () Bool)

(assert (=> b!5208608 m!6259088))

(assert (=> b!5208608 m!6259088))

(declare-fun m!6259090 () Bool)

(assert (=> b!5208608 m!6259090))

(declare-fun m!6259092 () Bool)

(assert (=> d!1679715 m!6259092))

(declare-fun m!6259094 () Bool)

(assert (=> d!1679715 m!6259094))

(assert (=> b!5208614 m!6258306))

(declare-fun m!6259096 () Bool)

(assert (=> b!5208607 m!6259096))

(declare-fun m!6259098 () Bool)

(assert (=> b!5208615 m!6259098))

(declare-fun m!6259100 () Bool)

(assert (=> b!5208611 m!6259100))

(declare-fun m!6259102 () Bool)

(assert (=> b!5208609 m!6259102))

(assert (=> b!5207861 d!1679715))

(declare-fun bs!1210423 () Bool)

(declare-fun d!1679725 () Bool)

(assert (= bs!1210423 (and d!1679725 d!1679383)))

(declare-fun lambda!261155 () Int)

(assert (=> bs!1210423 (= lambda!261155 lambda!261091)))

(declare-fun bs!1210424 () Bool)

(assert (= bs!1210424 (and d!1679725 d!1679387)))

(assert (=> bs!1210424 (= lambda!261155 lambda!261094)))

(declare-fun bs!1210425 () Bool)

(assert (= bs!1210425 (and d!1679725 d!1679715)))

(assert (=> bs!1210425 (= lambda!261155 lambda!261153)))

(declare-fun bs!1210426 () Bool)

(assert (= bs!1210426 (and d!1679725 d!1679425)))

(assert (=> bs!1210426 (= lambda!261155 lambda!261107)))

(declare-fun bs!1210427 () Bool)

(assert (= bs!1210427 (and d!1679725 d!1679569)))

(assert (=> bs!1210427 (= lambda!261155 lambda!261127)))

(declare-fun bs!1210428 () Bool)

(assert (= bs!1210428 (and d!1679725 d!1679403)))

(assert (=> bs!1210428 (= lambda!261155 lambda!261095)))

(declare-fun bs!1210429 () Bool)

(assert (= bs!1210429 (and d!1679725 d!1679381)))

(assert (=> bs!1210429 (= lambda!261155 lambda!261088)))

(declare-fun bs!1210430 () Bool)

(assert (= bs!1210430 (and d!1679725 d!1679605)))

(assert (=> bs!1210430 (= lambda!261155 lambda!261133)))

(declare-fun e!3242851 () Bool)

(assert (=> d!1679725 e!3242851))

(declare-fun res!2212528 () Bool)

(assert (=> d!1679725 (=> (not res!2212528) (not e!3242851))))

(declare-fun lt!2141864 () Regex!14795)

(assert (=> d!1679725 (= res!2212528 (validRegex!6531 lt!2141864))))

(declare-fun e!3242852 () Regex!14795)

(assert (=> d!1679725 (= lt!2141864 e!3242852)))

(declare-fun c!898095 () Bool)

(declare-fun e!3242848 () Bool)

(assert (=> d!1679725 (= c!898095 e!3242848)))

(declare-fun res!2212529 () Bool)

(assert (=> d!1679725 (=> (not res!2212529) (not e!3242848))))

(assert (=> d!1679725 (= res!2212529 ((_ is Cons!60560) (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(assert (=> d!1679725 (forall!14231 (t!373843 (exprs!4679 (h!67009 zl!343))) lambda!261155)))

(assert (=> d!1679725 (= (generalisedConcat!464 (t!373843 (exprs!4679 (h!67009 zl!343)))) lt!2141864)))

(declare-fun b!5208633 () Bool)

(declare-fun e!3242849 () Regex!14795)

(assert (=> b!5208633 (= e!3242852 e!3242849)))

(declare-fun c!898094 () Bool)

(assert (=> b!5208633 (= c!898094 ((_ is Cons!60560) (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5208634 () Bool)

(assert (=> b!5208634 (= e!3242849 (Concat!23640 (h!67008 (t!373843 (exprs!4679 (h!67009 zl!343)))) (generalisedConcat!464 (t!373843 (t!373843 (exprs!4679 (h!67009 zl!343)))))))))

(declare-fun b!5208635 () Bool)

(declare-fun e!3242853 () Bool)

(assert (=> b!5208635 (= e!3242851 e!3242853)))

(declare-fun c!898096 () Bool)

(assert (=> b!5208635 (= c!898096 (isEmpty!32469 (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5208636 () Bool)

(assert (=> b!5208636 (= e!3242848 (isEmpty!32469 (t!373843 (t!373843 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun b!5208637 () Bool)

(assert (=> b!5208637 (= e!3242853 (isEmptyExpr!759 lt!2141864))))

(declare-fun b!5208638 () Bool)

(assert (=> b!5208638 (= e!3242852 (h!67008 (t!373843 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5208639 () Bool)

(declare-fun e!3242850 () Bool)

(assert (=> b!5208639 (= e!3242850 (isConcat!282 lt!2141864))))

(declare-fun b!5208640 () Bool)

(assert (=> b!5208640 (= e!3242850 (= lt!2141864 (head!11166 (t!373843 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun b!5208641 () Bool)

(assert (=> b!5208641 (= e!3242849 EmptyExpr!14795)))

(declare-fun b!5208642 () Bool)

(assert (=> b!5208642 (= e!3242853 e!3242850)))

(declare-fun c!898093 () Bool)

(assert (=> b!5208642 (= c!898093 (isEmpty!32469 (tail!10263 (t!373843 (exprs!4679 (h!67009 zl!343))))))))

(assert (= (and d!1679725 res!2212529) b!5208636))

(assert (= (and d!1679725 c!898095) b!5208638))

(assert (= (and d!1679725 (not c!898095)) b!5208633))

(assert (= (and b!5208633 c!898094) b!5208634))

(assert (= (and b!5208633 (not c!898094)) b!5208641))

(assert (= (and d!1679725 res!2212528) b!5208635))

(assert (= (and b!5208635 c!898096) b!5208637))

(assert (= (and b!5208635 (not c!898096)) b!5208642))

(assert (= (and b!5208642 c!898093) b!5208640))

(assert (= (and b!5208642 (not c!898093)) b!5208639))

(declare-fun m!6259112 () Bool)

(assert (=> b!5208634 m!6259112))

(declare-fun m!6259114 () Bool)

(assert (=> b!5208640 m!6259114))

(declare-fun m!6259116 () Bool)

(assert (=> d!1679725 m!6259116))

(declare-fun m!6259118 () Bool)

(assert (=> d!1679725 m!6259118))

(assert (=> b!5208635 m!6257970))

(declare-fun m!6259120 () Bool)

(assert (=> b!5208642 m!6259120))

(assert (=> b!5208642 m!6259120))

(declare-fun m!6259122 () Bool)

(assert (=> b!5208642 m!6259122))

(declare-fun m!6259124 () Bool)

(assert (=> b!5208636 m!6259124))

(declare-fun m!6259126 () Bool)

(assert (=> b!5208639 m!6259126))

(declare-fun m!6259128 () Bool)

(assert (=> b!5208637 m!6259128))

(assert (=> b!5207979 d!1679725))

(declare-fun b!5208654 () Bool)

(declare-fun res!2212531 () Bool)

(declare-fun e!3242860 () Bool)

(assert (=> b!5208654 (=> res!2212531 e!3242860)))

(assert (=> b!5208654 (= res!2212531 (not (isEmpty!32473 (tail!10262 s!2326))))))

(declare-fun b!5208655 () Bool)

(declare-fun e!3242862 () Bool)

(assert (=> b!5208655 (= e!3242862 (= (head!11165 s!2326) (c!897710 (regTwo!30102 r!7292))))))

(declare-fun b!5208656 () Bool)

(declare-fun e!3242864 () Bool)

(assert (=> b!5208656 (= e!3242864 e!3242860)))

(declare-fun res!2212537 () Bool)

(assert (=> b!5208656 (=> res!2212537 e!3242860)))

(declare-fun call!366597 () Bool)

(assert (=> b!5208656 (= res!2212537 call!366597)))

(declare-fun b!5208657 () Bool)

(assert (=> b!5208657 (= e!3242860 (not (= (head!11165 s!2326) (c!897710 (regTwo!30102 r!7292)))))))

(declare-fun b!5208658 () Bool)

(declare-fun res!2212535 () Bool)

(declare-fun e!3242863 () Bool)

(assert (=> b!5208658 (=> res!2212535 e!3242863)))

(assert (=> b!5208658 (= res!2212535 e!3242862)))

(declare-fun res!2212536 () Bool)

(assert (=> b!5208658 (=> (not res!2212536) (not e!3242862))))

(declare-fun lt!2141865 () Bool)

(assert (=> b!5208658 (= res!2212536 lt!2141865)))

(declare-fun b!5208659 () Bool)

(declare-fun res!2212533 () Bool)

(assert (=> b!5208659 (=> (not res!2212533) (not e!3242862))))

(assert (=> b!5208659 (= res!2212533 (isEmpty!32473 (tail!10262 s!2326)))))

(declare-fun b!5208661 () Bool)

(assert (=> b!5208661 (= e!3242863 e!3242864)))

(declare-fun res!2212538 () Bool)

(assert (=> b!5208661 (=> (not res!2212538) (not e!3242864))))

(assert (=> b!5208661 (= res!2212538 (not lt!2141865))))

(declare-fun b!5208662 () Bool)

(declare-fun e!3242866 () Bool)

(assert (=> b!5208662 (= e!3242866 (matchR!6980 (derivativeStep!4045 (regTwo!30102 r!7292) (head!11165 s!2326)) (tail!10262 s!2326)))))

(declare-fun bm!366592 () Bool)

(assert (=> bm!366592 (= call!366597 (isEmpty!32473 s!2326))))

(declare-fun b!5208663 () Bool)

(declare-fun e!3242861 () Bool)

(declare-fun e!3242865 () Bool)

(assert (=> b!5208663 (= e!3242861 e!3242865)))

(declare-fun c!898103 () Bool)

(assert (=> b!5208663 (= c!898103 ((_ is EmptyLang!14795) (regTwo!30102 r!7292)))))

(declare-fun b!5208664 () Bool)

(declare-fun res!2212532 () Bool)

(assert (=> b!5208664 (=> (not res!2212532) (not e!3242862))))

(assert (=> b!5208664 (= res!2212532 (not call!366597))))

(declare-fun b!5208665 () Bool)

(declare-fun res!2212534 () Bool)

(assert (=> b!5208665 (=> res!2212534 e!3242863)))

(assert (=> b!5208665 (= res!2212534 (not ((_ is ElementMatch!14795) (regTwo!30102 r!7292))))))

(assert (=> b!5208665 (= e!3242865 e!3242863)))

(declare-fun b!5208660 () Bool)

(assert (=> b!5208660 (= e!3242866 (nullable!4964 (regTwo!30102 r!7292)))))

(declare-fun d!1679729 () Bool)

(assert (=> d!1679729 e!3242861))

(declare-fun c!898104 () Bool)

(assert (=> d!1679729 (= c!898104 ((_ is EmptyExpr!14795) (regTwo!30102 r!7292)))))

(assert (=> d!1679729 (= lt!2141865 e!3242866)))

(declare-fun c!898102 () Bool)

(assert (=> d!1679729 (= c!898102 (isEmpty!32473 s!2326))))

(assert (=> d!1679729 (validRegex!6531 (regTwo!30102 r!7292))))

(assert (=> d!1679729 (= (matchR!6980 (regTwo!30102 r!7292) s!2326) lt!2141865)))

(declare-fun b!5208666 () Bool)

(assert (=> b!5208666 (= e!3242865 (not lt!2141865))))

(declare-fun b!5208667 () Bool)

(assert (=> b!5208667 (= e!3242861 (= lt!2141865 call!366597))))

(assert (= (and d!1679729 c!898102) b!5208660))

(assert (= (and d!1679729 (not c!898102)) b!5208662))

(assert (= (and d!1679729 c!898104) b!5208667))

(assert (= (and d!1679729 (not c!898104)) b!5208663))

(assert (= (and b!5208663 c!898103) b!5208666))

(assert (= (and b!5208663 (not c!898103)) b!5208665))

(assert (= (and b!5208665 (not res!2212534)) b!5208658))

(assert (= (and b!5208658 res!2212536) b!5208664))

(assert (= (and b!5208664 res!2212532) b!5208659))

(assert (= (and b!5208659 res!2212533) b!5208655))

(assert (= (and b!5208658 (not res!2212535)) b!5208661))

(assert (= (and b!5208661 res!2212538) b!5208656))

(assert (= (and b!5208656 (not res!2212537)) b!5208654))

(assert (= (and b!5208654 (not res!2212531)) b!5208657))

(assert (= (or b!5208667 b!5208656 b!5208664) bm!366592))

(assert (=> b!5208657 m!6258292))

(assert (=> b!5208659 m!6258294))

(assert (=> b!5208659 m!6258294))

(assert (=> b!5208659 m!6258296))

(assert (=> bm!366592 m!6258290))

(assert (=> b!5208660 m!6258786))

(assert (=> b!5208662 m!6258292))

(assert (=> b!5208662 m!6258292))

(declare-fun m!6259140 () Bool)

(assert (=> b!5208662 m!6259140))

(assert (=> b!5208662 m!6258294))

(assert (=> b!5208662 m!6259140))

(assert (=> b!5208662 m!6258294))

(declare-fun m!6259142 () Bool)

(assert (=> b!5208662 m!6259142))

(assert (=> b!5208654 m!6258294))

(assert (=> b!5208654 m!6258294))

(assert (=> b!5208654 m!6258296))

(assert (=> b!5208655 m!6258292))

(assert (=> d!1679729 m!6258290))

(assert (=> d!1679729 m!6258792))

(assert (=> b!5207935 d!1679729))

(declare-fun d!1679735 () Bool)

(assert (=> d!1679735 true))

(declare-fun setRes!33076 () Bool)

(assert (=> d!1679735 setRes!33076))

(declare-fun condSetEmpty!33076 () Bool)

(declare-fun res!2212547 () (InoxSet Context!8358))

(assert (=> d!1679735 (= condSetEmpty!33076 (= res!2212547 ((as const (Array Context!8358 Bool)) false)))))

(assert (=> d!1679735 (= (choose!38715 z!1189 lambda!261051) res!2212547)))

(declare-fun setIsEmpty!33076 () Bool)

(assert (=> setIsEmpty!33076 setRes!33076))

(declare-fun setNonEmpty!33076 () Bool)

(declare-fun e!3242875 () Bool)

(declare-fun setElem!33076 () Context!8358)

(declare-fun tp!1460647 () Bool)

(assert (=> setNonEmpty!33076 (= setRes!33076 (and tp!1460647 (inv!80234 setElem!33076) e!3242875))))

(declare-fun setRest!33076 () (InoxSet Context!8358))

(assert (=> setNonEmpty!33076 (= res!2212547 ((_ map or) (store ((as const (Array Context!8358 Bool)) false) setElem!33076 true) setRest!33076))))

(declare-fun b!5208676 () Bool)

(declare-fun tp!1460646 () Bool)

(assert (=> b!5208676 (= e!3242875 tp!1460646)))

(assert (= (and d!1679735 condSetEmpty!33076) setIsEmpty!33076))

(assert (= (and d!1679735 (not condSetEmpty!33076)) setNonEmpty!33076))

(assert (= setNonEmpty!33076 b!5208676))

(declare-fun m!6259148 () Bool)

(assert (=> setNonEmpty!33076 m!6259148))

(assert (=> d!1679389 d!1679735))

(declare-fun d!1679739 () Bool)

(assert (=> d!1679739 (= (nullable!4964 r!7292) (nullableFct!1375 r!7292))))

(declare-fun bs!1210431 () Bool)

(assert (= bs!1210431 d!1679739))

(declare-fun m!6259150 () Bool)

(assert (=> bs!1210431 m!6259150))

(assert (=> b!5207825 d!1679739))

(declare-fun b!5208677 () Bool)

(declare-fun c!898109 () Bool)

(assert (=> b!5208677 (= c!898109 ((_ is Star!14795) (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(declare-fun e!3242881 () (InoxSet Context!8358))

(declare-fun e!3242876 () (InoxSet Context!8358))

(assert (=> b!5208677 (= e!3242881 e!3242876)))

(declare-fun d!1679741 () Bool)

(declare-fun c!898108 () Bool)

(assert (=> d!1679741 (= c!898108 (and ((_ is ElementMatch!14795) (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (= (c!897710 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (h!67010 s!2326))))))

(declare-fun e!3242879 () (InoxSet Context!8358))

(assert (=> d!1679741 (= (derivationStepZipperDown!243 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))) (ite c!897806 lt!2141743 (Context!8359 call!366411)) (h!67010 s!2326)) e!3242879)))

(declare-fun b!5208678 () Bool)

(assert (=> b!5208678 (= e!3242876 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208679 () Bool)

(declare-fun call!366598 () (InoxSet Context!8358))

(assert (=> b!5208679 (= e!3242876 call!366598)))

(declare-fun b!5208680 () Bool)

(declare-fun e!3242880 () (InoxSet Context!8358))

(assert (=> b!5208680 (= e!3242880 e!3242881)))

(declare-fun c!898106 () Bool)

(assert (=> b!5208680 (= c!898106 ((_ is Concat!23640) (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(declare-fun bm!366593 () Bool)

(declare-fun call!366599 () (InoxSet Context!8358))

(assert (=> bm!366593 (= call!366598 call!366599)))

(declare-fun b!5208681 () Bool)

(declare-fun call!366603 () (InoxSet Context!8358))

(assert (=> b!5208681 (= e!3242880 ((_ map or) call!366603 call!366599))))

(declare-fun c!898107 () Bool)

(declare-fun bm!366594 () Bool)

(declare-fun call!366601 () List!60684)

(assert (=> bm!366594 (= call!366601 ($colon$colon!1273 (exprs!4679 (ite c!897806 lt!2141743 (Context!8359 call!366411))) (ite (or c!898107 c!898106) (regTwo!30102 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))))))

(declare-fun b!5208684 () Bool)

(declare-fun e!3242878 () (InoxSet Context!8358))

(declare-fun call!366602 () (InoxSet Context!8358))

(assert (=> b!5208684 (= e!3242878 ((_ map or) call!366603 call!366602))))

(declare-fun b!5208685 () Bool)

(assert (=> b!5208685 (= e!3242881 call!366598)))

(declare-fun bm!366595 () Bool)

(declare-fun call!366600 () List!60684)

(assert (=> bm!366595 (= call!366600 call!366601)))

(declare-fun c!898105 () Bool)

(declare-fun bm!366596 () Bool)

(assert (=> bm!366596 (= call!366602 (derivationStepZipperDown!243 (ite c!898105 (regTwo!30103 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (ite c!898107 (regTwo!30102 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (ite c!898106 (regOne!30102 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (reg!15124 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))))) (ite (or c!898105 c!898107) (ite c!897806 lt!2141743 (Context!8359 call!366411)) (Context!8359 call!366600)) (h!67010 s!2326)))))

(declare-fun b!5208686 () Bool)

(declare-fun e!3242877 () Bool)

(assert (=> b!5208686 (= e!3242877 (nullable!4964 (regOne!30102 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))))))

(declare-fun b!5208687 () Bool)

(assert (=> b!5208687 (= c!898107 e!3242877)))

(declare-fun res!2212548 () Bool)

(assert (=> b!5208687 (=> (not res!2212548) (not e!3242877))))

(assert (=> b!5208687 (= res!2212548 ((_ is Concat!23640) (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(assert (=> b!5208687 (= e!3242878 e!3242880)))

(declare-fun bm!366597 () Bool)

(assert (=> bm!366597 (= call!366599 call!366602)))

(declare-fun b!5208688 () Bool)

(assert (=> b!5208688 (= e!3242879 e!3242878)))

(assert (=> b!5208688 (= c!898105 ((_ is Union!14795) (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))))))

(declare-fun b!5208689 () Bool)

(assert (=> b!5208689 (= e!3242879 (store ((as const (Array Context!8358 Bool)) false) (ite c!897806 lt!2141743 (Context!8359 call!366411)) true))))

(declare-fun bm!366598 () Bool)

(assert (=> bm!366598 (= call!366603 (derivationStepZipperDown!243 (ite c!898105 (regOne!30103 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292))))) (regOne!30102 (ite c!897806 (regOne!30103 (regOne!30103 (regOne!30102 r!7292))) (regOne!30102 (regOne!30103 (regOne!30102 r!7292)))))) (ite c!898105 (ite c!897806 lt!2141743 (Context!8359 call!366411)) (Context!8359 call!366601)) (h!67010 s!2326)))))

(assert (= (and d!1679741 c!898108) b!5208689))

(assert (= (and d!1679741 (not c!898108)) b!5208688))

(assert (= (and b!5208688 c!898105) b!5208684))

(assert (= (and b!5208688 (not c!898105)) b!5208687))

(assert (= (and b!5208687 res!2212548) b!5208686))

(assert (= (and b!5208687 c!898107) b!5208681))

(assert (= (and b!5208687 (not c!898107)) b!5208680))

(assert (= (and b!5208680 c!898106) b!5208685))

(assert (= (and b!5208680 (not c!898106)) b!5208677))

(assert (= (and b!5208677 c!898109) b!5208679))

(assert (= (and b!5208677 (not c!898109)) b!5208678))

(assert (= (or b!5208685 b!5208679) bm!366595))

(assert (= (or b!5208685 b!5208679) bm!366593))

(assert (= (or b!5208681 bm!366595) bm!366594))

(assert (= (or b!5208681 bm!366593) bm!366597))

(assert (= (or b!5208684 bm!366597) bm!366596))

(assert (= (or b!5208684 b!5208681) bm!366598))

(declare-fun m!6259152 () Bool)

(assert (=> b!5208686 m!6259152))

(declare-fun m!6259154 () Bool)

(assert (=> bm!366596 m!6259154))

(declare-fun m!6259156 () Bool)

(assert (=> bm!366598 m!6259156))

(declare-fun m!6259158 () Bool)

(assert (=> bm!366594 m!6259158))

(declare-fun m!6259160 () Bool)

(assert (=> b!5208689 m!6259160))

(assert (=> bm!366408 d!1679741))

(declare-fun b!5208736 () Bool)

(declare-fun e!3242916 () Bool)

(declare-fun call!366616 () Bool)

(assert (=> b!5208736 (= e!3242916 call!366616)))

(declare-fun b!5208737 () Bool)

(declare-fun e!3242921 () Bool)

(assert (=> b!5208737 (= e!3242921 e!3242916)))

(declare-fun res!2212577 () Bool)

(declare-fun call!366615 () Bool)

(assert (=> b!5208737 (= res!2212577 call!366615)))

(assert (=> b!5208737 (=> (not res!2212577) (not e!3242916))))

(declare-fun b!5208738 () Bool)

(declare-fun e!3242919 () Bool)

(declare-fun e!3242918 () Bool)

(assert (=> b!5208738 (= e!3242919 e!3242918)))

(declare-fun res!2212578 () Bool)

(assert (=> b!5208738 (=> (not res!2212578) (not e!3242918))))

(assert (=> b!5208738 (= res!2212578 (and (not ((_ is EmptyLang!14795) (h!67008 (exprs!4679 (h!67009 zl!343))))) (not ((_ is ElementMatch!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))))

(declare-fun bm!366610 () Bool)

(declare-fun c!898120 () Bool)

(assert (=> bm!366610 (= call!366615 (nullable!4964 (ite c!898120 (regOne!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))

(declare-fun b!5208739 () Bool)

(declare-fun e!3242920 () Bool)

(assert (=> b!5208739 (= e!3242920 call!366616)))

(declare-fun d!1679743 () Bool)

(declare-fun res!2212574 () Bool)

(assert (=> d!1679743 (=> res!2212574 e!3242919)))

(assert (=> d!1679743 (= res!2212574 ((_ is EmptyExpr!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(assert (=> d!1679743 (= (nullableFct!1375 (h!67008 (exprs!4679 (h!67009 zl!343)))) e!3242919)))

(declare-fun b!5208740 () Bool)

(assert (=> b!5208740 (= e!3242921 e!3242920)))

(declare-fun res!2212576 () Bool)

(assert (=> b!5208740 (= res!2212576 call!366615)))

(assert (=> b!5208740 (=> res!2212576 e!3242920)))

(declare-fun bm!366611 () Bool)

(assert (=> bm!366611 (= call!366616 (nullable!4964 (ite c!898120 (regTwo!30103 (h!67008 (exprs!4679 (h!67009 zl!343)))) (regTwo!30102 (h!67008 (exprs!4679 (h!67009 zl!343)))))))))

(declare-fun b!5208741 () Bool)

(declare-fun e!3242917 () Bool)

(assert (=> b!5208741 (= e!3242918 e!3242917)))

(declare-fun res!2212575 () Bool)

(assert (=> b!5208741 (=> res!2212575 e!3242917)))

(assert (=> b!5208741 (= res!2212575 ((_ is Star!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5208742 () Bool)

(assert (=> b!5208742 (= e!3242917 e!3242921)))

(assert (=> b!5208742 (= c!898120 ((_ is Union!14795) (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(assert (= (and d!1679743 (not res!2212574)) b!5208738))

(assert (= (and b!5208738 res!2212578) b!5208741))

(assert (= (and b!5208741 (not res!2212575)) b!5208742))

(assert (= (and b!5208742 c!898120) b!5208740))

(assert (= (and b!5208742 (not c!898120)) b!5208737))

(assert (= (and b!5208740 (not res!2212576)) b!5208739))

(assert (= (and b!5208737 res!2212577) b!5208736))

(assert (= (or b!5208739 b!5208736) bm!366611))

(assert (= (or b!5208740 b!5208737) bm!366610))

(declare-fun m!6259184 () Bool)

(assert (=> bm!366610 m!6259184))

(declare-fun m!6259186 () Bool)

(assert (=> bm!366611 m!6259186))

(assert (=> d!1679391 d!1679743))

(declare-fun b!5208745 () Bool)

(declare-fun e!3242927 () Bool)

(declare-fun call!366619 () Bool)

(assert (=> b!5208745 (= e!3242927 call!366619)))

(declare-fun b!5208746 () Bool)

(declare-fun e!3242926 () Bool)

(assert (=> b!5208746 (= e!3242926 call!366619)))

(declare-fun b!5208747 () Bool)

(declare-fun res!2212581 () Bool)

(declare-fun e!3242929 () Bool)

(assert (=> b!5208747 (=> res!2212581 e!3242929)))

(assert (=> b!5208747 (= res!2212581 (not ((_ is Concat!23640) (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292)))))))

(declare-fun e!3242924 () Bool)

(assert (=> b!5208747 (= e!3242924 e!3242929)))

(declare-fun b!5208749 () Bool)

(declare-fun e!3242930 () Bool)

(declare-fun e!3242925 () Bool)

(assert (=> b!5208749 (= e!3242930 e!3242925)))

(declare-fun res!2212582 () Bool)

(assert (=> b!5208749 (= res!2212582 (not (nullable!4964 (reg!15124 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))))))))

(assert (=> b!5208749 (=> (not res!2212582) (not e!3242925))))

(declare-fun bm!366612 () Bool)

(declare-fun call!366618 () Bool)

(assert (=> bm!366612 (= call!366619 call!366618)))

(declare-fun b!5208750 () Bool)

(declare-fun res!2212584 () Bool)

(assert (=> b!5208750 (=> (not res!2212584) (not e!3242927))))

(declare-fun call!366617 () Bool)

(assert (=> b!5208750 (= res!2212584 call!366617)))

(assert (=> b!5208750 (= e!3242924 e!3242927)))

(declare-fun b!5208751 () Bool)

(assert (=> b!5208751 (= e!3242929 e!3242926)))

(declare-fun res!2212585 () Bool)

(assert (=> b!5208751 (=> (not res!2212585) (not e!3242926))))

(assert (=> b!5208751 (= res!2212585 call!366617)))

(declare-fun b!5208752 () Bool)

(assert (=> b!5208752 (= e!3242925 call!366618)))

(declare-fun c!898122 () Bool)

(declare-fun bm!366613 () Bool)

(declare-fun c!898121 () Bool)

(assert (=> bm!366613 (= call!366618 (validRegex!6531 (ite c!898121 (reg!15124 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))) (ite c!898122 (regTwo!30103 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))) (regTwo!30102 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292)))))))))

(declare-fun d!1679757 () Bool)

(declare-fun res!2212583 () Bool)

(declare-fun e!3242928 () Bool)

(assert (=> d!1679757 (=> res!2212583 e!3242928)))

(assert (=> d!1679757 (= res!2212583 ((_ is ElementMatch!14795) (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))))))

(assert (=> d!1679757 (= (validRegex!6531 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))) e!3242928)))

(declare-fun b!5208748 () Bool)

(assert (=> b!5208748 (= e!3242930 e!3242924)))

(assert (=> b!5208748 (= c!898122 ((_ is Union!14795) (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))))))

(declare-fun b!5208753 () Bool)

(assert (=> b!5208753 (= e!3242928 e!3242930)))

(assert (=> b!5208753 (= c!898121 ((_ is Star!14795) (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))))))

(declare-fun bm!366614 () Bool)

(assert (=> bm!366614 (= call!366617 (validRegex!6531 (ite c!898122 (regOne!30103 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))) (regOne!30102 (ite c!897750 (regOne!30103 r!7292) (regOne!30102 r!7292))))))))

(assert (= (and d!1679757 (not res!2212583)) b!5208753))

(assert (= (and b!5208753 c!898121) b!5208749))

(assert (= (and b!5208753 (not c!898121)) b!5208748))

(assert (= (and b!5208749 res!2212582) b!5208752))

(assert (= (and b!5208748 c!898122) b!5208750))

(assert (= (and b!5208748 (not c!898122)) b!5208747))

(assert (= (and b!5208750 res!2212584) b!5208745))

(assert (= (and b!5208747 (not res!2212581)) b!5208751))

(assert (= (and b!5208751 res!2212585) b!5208746))

(assert (= (or b!5208745 b!5208746) bm!366612))

(assert (= (or b!5208750 b!5208751) bm!366614))

(assert (= (or b!5208752 bm!366612) bm!366613))

(declare-fun m!6259192 () Bool)

(assert (=> b!5208749 m!6259192))

(declare-fun m!6259194 () Bool)

(assert (=> bm!366613 m!6259194))

(declare-fun m!6259196 () Bool)

(assert (=> bm!366614 m!6259196))

(assert (=> bm!366371 d!1679757))

(declare-fun b!5208754 () Bool)

(declare-fun e!3242934 () Bool)

(declare-fun call!366622 () Bool)

(assert (=> b!5208754 (= e!3242934 call!366622)))

(declare-fun b!5208755 () Bool)

(declare-fun e!3242933 () Bool)

(assert (=> b!5208755 (= e!3242933 call!366622)))

(declare-fun b!5208756 () Bool)

(declare-fun res!2212586 () Bool)

(declare-fun e!3242936 () Bool)

(assert (=> b!5208756 (=> res!2212586 e!3242936)))

(assert (=> b!5208756 (= res!2212586 (not ((_ is Concat!23640) lt!2141797)))))

(declare-fun e!3242931 () Bool)

(assert (=> b!5208756 (= e!3242931 e!3242936)))

(declare-fun b!5208758 () Bool)

(declare-fun e!3242937 () Bool)

(declare-fun e!3242932 () Bool)

(assert (=> b!5208758 (= e!3242937 e!3242932)))

(declare-fun res!2212587 () Bool)

(assert (=> b!5208758 (= res!2212587 (not (nullable!4964 (reg!15124 lt!2141797))))))

(assert (=> b!5208758 (=> (not res!2212587) (not e!3242932))))

(declare-fun bm!366615 () Bool)

(declare-fun call!366621 () Bool)

(assert (=> bm!366615 (= call!366622 call!366621)))

(declare-fun b!5208759 () Bool)

(declare-fun res!2212589 () Bool)

(assert (=> b!5208759 (=> (not res!2212589) (not e!3242934))))

(declare-fun call!366620 () Bool)

(assert (=> b!5208759 (= res!2212589 call!366620)))

(assert (=> b!5208759 (= e!3242931 e!3242934)))

(declare-fun b!5208760 () Bool)

(assert (=> b!5208760 (= e!3242936 e!3242933)))

(declare-fun res!2212590 () Bool)

(assert (=> b!5208760 (=> (not res!2212590) (not e!3242933))))

(assert (=> b!5208760 (= res!2212590 call!366620)))

(declare-fun b!5208761 () Bool)

(assert (=> b!5208761 (= e!3242932 call!366621)))

(declare-fun c!898124 () Bool)

(declare-fun bm!366616 () Bool)

(declare-fun c!898123 () Bool)

(assert (=> bm!366616 (= call!366621 (validRegex!6531 (ite c!898123 (reg!15124 lt!2141797) (ite c!898124 (regTwo!30103 lt!2141797) (regTwo!30102 lt!2141797)))))))

(declare-fun d!1679761 () Bool)

(declare-fun res!2212588 () Bool)

(declare-fun e!3242935 () Bool)

(assert (=> d!1679761 (=> res!2212588 e!3242935)))

(assert (=> d!1679761 (= res!2212588 ((_ is ElementMatch!14795) lt!2141797))))

(assert (=> d!1679761 (= (validRegex!6531 lt!2141797) e!3242935)))

(declare-fun b!5208757 () Bool)

(assert (=> b!5208757 (= e!3242937 e!3242931)))

(assert (=> b!5208757 (= c!898124 ((_ is Union!14795) lt!2141797))))

(declare-fun b!5208762 () Bool)

(assert (=> b!5208762 (= e!3242935 e!3242937)))

(assert (=> b!5208762 (= c!898123 ((_ is Star!14795) lt!2141797))))

(declare-fun bm!366617 () Bool)

(assert (=> bm!366617 (= call!366620 (validRegex!6531 (ite c!898124 (regOne!30103 lt!2141797) (regOne!30102 lt!2141797))))))

(assert (= (and d!1679761 (not res!2212588)) b!5208762))

(assert (= (and b!5208762 c!898123) b!5208758))

(assert (= (and b!5208762 (not c!898123)) b!5208757))

(assert (= (and b!5208758 res!2212587) b!5208761))

(assert (= (and b!5208757 c!898124) b!5208759))

(assert (= (and b!5208757 (not c!898124)) b!5208756))

(assert (= (and b!5208759 res!2212589) b!5208754))

(assert (= (and b!5208756 (not res!2212586)) b!5208760))

(assert (= (and b!5208760 res!2212590) b!5208755))

(assert (= (or b!5208754 b!5208755) bm!366615))

(assert (= (or b!5208759 b!5208760) bm!366617))

(assert (= (or b!5208761 bm!366615) bm!366616))

(declare-fun m!6259200 () Bool)

(assert (=> b!5208758 m!6259200))

(declare-fun m!6259202 () Bool)

(assert (=> bm!366616 m!6259202))

(declare-fun m!6259204 () Bool)

(assert (=> bm!366617 m!6259204))

(assert (=> d!1679381 d!1679761))

(declare-fun d!1679763 () Bool)

(declare-fun res!2212591 () Bool)

(declare-fun e!3242942 () Bool)

(assert (=> d!1679763 (=> res!2212591 e!3242942)))

(assert (=> d!1679763 (= res!2212591 ((_ is Nil!60560) (unfocusZipperList!237 zl!343)))))

(assert (=> d!1679763 (= (forall!14231 (unfocusZipperList!237 zl!343) lambda!261088) e!3242942)))

(declare-fun b!5208770 () Bool)

(declare-fun e!3242943 () Bool)

(assert (=> b!5208770 (= e!3242942 e!3242943)))

(declare-fun res!2212592 () Bool)

(assert (=> b!5208770 (=> (not res!2212592) (not e!3242943))))

(assert (=> b!5208770 (= res!2212592 (dynLambda!23924 lambda!261088 (h!67008 (unfocusZipperList!237 zl!343))))))

(declare-fun b!5208771 () Bool)

(assert (=> b!5208771 (= e!3242943 (forall!14231 (t!373843 (unfocusZipperList!237 zl!343)) lambda!261088))))

(assert (= (and d!1679763 (not res!2212591)) b!5208770))

(assert (= (and b!5208770 res!2212592) b!5208771))

(declare-fun b_lambda!201491 () Bool)

(assert (=> (not b_lambda!201491) (not b!5208770)))

(declare-fun m!6259206 () Bool)

(assert (=> b!5208770 m!6259206))

(declare-fun m!6259208 () Bool)

(assert (=> b!5208771 m!6259208))

(assert (=> d!1679381 d!1679763))

(declare-fun bs!1210434 () Bool)

(declare-fun d!1679765 () Bool)

(assert (= bs!1210434 (and d!1679765 d!1679647)))

(declare-fun lambda!261156 () Int)

(assert (=> bs!1210434 (= lambda!261156 lambda!261146)))

(assert (=> d!1679765 (= (nullableZipper!1223 lt!2141742) (exists!1960 lt!2141742 lambda!261156))))

(declare-fun bs!1210435 () Bool)

(assert (= bs!1210435 d!1679765))

(declare-fun m!6259210 () Bool)

(assert (=> bs!1210435 m!6259210))

(assert (=> b!5207956 d!1679765))

(declare-fun bs!1210436 () Bool)

(declare-fun b!5208791 () Bool)

(assert (= bs!1210436 (and b!5208791 d!1679417)))

(declare-fun lambda!261157 () Int)

(assert (=> bs!1210436 (not (= lambda!261157 lambda!261098))))

(declare-fun bs!1210437 () Bool)

(assert (= bs!1210437 (and b!5208791 d!1679623)))

(assert (=> bs!1210437 (not (= lambda!261157 lambda!261142))))

(declare-fun bs!1210438 () Bool)

(assert (= bs!1210438 (and b!5208791 b!5207268)))

(assert (=> bs!1210438 (not (= lambda!261157 lambda!261049))))

(declare-fun bs!1210439 () Bool)

(assert (= bs!1210439 (and b!5208791 b!5207783)))

(assert (=> bs!1210439 (not (= lambda!261157 lambda!261085))))

(assert (=> bs!1210437 (not (= lambda!261157 lambda!261143))))

(assert (=> bs!1210438 (not (= lambda!261157 lambda!261050))))

(declare-fun bs!1210440 () Bool)

(assert (= bs!1210440 (and b!5208791 d!1679419)))

(assert (=> bs!1210440 (not (= lambda!261157 lambda!261104))))

(declare-fun bs!1210441 () Bool)

(assert (= bs!1210441 (and b!5208791 b!5207782)))

(assert (=> bs!1210441 (= (and (= (reg!15124 (regTwo!30103 r!7292)) (reg!15124 r!7292)) (= (regTwo!30103 r!7292) r!7292)) (= lambda!261157 lambda!261084))))

(assert (=> bs!1210440 (not (= lambda!261157 lambda!261103))))

(declare-fun bs!1210442 () Bool)

(assert (= bs!1210442 (and b!5208791 d!1679577)))

(assert (=> bs!1210442 (not (= lambda!261157 lambda!261130))))

(assert (=> b!5208791 true))

(assert (=> b!5208791 true))

(declare-fun bs!1210443 () Bool)

(declare-fun b!5208792 () Bool)

(assert (= bs!1210443 (and b!5208792 b!5208791)))

(declare-fun lambda!261158 () Int)

(assert (=> bs!1210443 (not (= lambda!261158 lambda!261157))))

(declare-fun bs!1210444 () Bool)

(assert (= bs!1210444 (and b!5208792 d!1679417)))

(assert (=> bs!1210444 (not (= lambda!261158 lambda!261098))))

(declare-fun bs!1210445 () Bool)

(assert (= bs!1210445 (and b!5208792 d!1679623)))

(assert (=> bs!1210445 (not (= lambda!261158 lambda!261142))))

(declare-fun bs!1210446 () Bool)

(assert (= bs!1210446 (and b!5208792 b!5207268)))

(assert (=> bs!1210446 (not (= lambda!261158 lambda!261049))))

(declare-fun bs!1210447 () Bool)

(assert (= bs!1210447 (and b!5208792 b!5207783)))

(assert (=> bs!1210447 (= (and (= (regOne!30102 (regTwo!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regTwo!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261158 lambda!261085))))

(assert (=> bs!1210445 (= (and (= (regOne!30102 (regTwo!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regTwo!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261158 lambda!261143))))

(assert (=> bs!1210446 (= (and (= (regOne!30102 (regTwo!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regTwo!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261158 lambda!261050))))

(declare-fun bs!1210448 () Bool)

(assert (= bs!1210448 (and b!5208792 d!1679419)))

(assert (=> bs!1210448 (= (and (= (regOne!30102 (regTwo!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regTwo!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261158 lambda!261104))))

(declare-fun bs!1210449 () Bool)

(assert (= bs!1210449 (and b!5208792 b!5207782)))

(assert (=> bs!1210449 (not (= lambda!261158 lambda!261084))))

(assert (=> bs!1210448 (not (= lambda!261158 lambda!261103))))

(declare-fun bs!1210450 () Bool)

(assert (= bs!1210450 (and b!5208792 d!1679577)))

(assert (=> bs!1210450 (not (= lambda!261158 lambda!261130))))

(assert (=> b!5208792 true))

(assert (=> b!5208792 true))

(declare-fun call!366624 () Bool)

(declare-fun c!898126 () Bool)

(declare-fun bm!366618 () Bool)

(assert (=> bm!366618 (= call!366624 (Exists!1976 (ite c!898126 lambda!261157 lambda!261158)))))

(declare-fun b!5208789 () Bool)

(declare-fun res!2212594 () Bool)

(declare-fun e!3242951 () Bool)

(assert (=> b!5208789 (=> res!2212594 e!3242951)))

(declare-fun call!366623 () Bool)

(assert (=> b!5208789 (= res!2212594 call!366623)))

(declare-fun e!3242954 () Bool)

(assert (=> b!5208789 (= e!3242954 e!3242951)))

(declare-fun b!5208790 () Bool)

(declare-fun e!3242949 () Bool)

(assert (=> b!5208790 (= e!3242949 (matchRSpec!1898 (regTwo!30103 (regTwo!30103 r!7292)) s!2326))))

(assert (=> b!5208791 (= e!3242951 call!366624)))

(assert (=> b!5208792 (= e!3242954 call!366624)))

(declare-fun d!1679767 () Bool)

(declare-fun c!898128 () Bool)

(assert (=> d!1679767 (= c!898128 ((_ is EmptyExpr!14795) (regTwo!30103 r!7292)))))

(declare-fun e!3242953 () Bool)

(assert (=> d!1679767 (= (matchRSpec!1898 (regTwo!30103 r!7292) s!2326) e!3242953)))

(declare-fun b!5208793 () Bool)

(declare-fun e!3242950 () Bool)

(assert (=> b!5208793 (= e!3242950 e!3242954)))

(assert (=> b!5208793 (= c!898126 ((_ is Star!14795) (regTwo!30103 r!7292)))))

(declare-fun b!5208794 () Bool)

(declare-fun c!898127 () Bool)

(assert (=> b!5208794 (= c!898127 ((_ is ElementMatch!14795) (regTwo!30103 r!7292)))))

(declare-fun e!3242955 () Bool)

(declare-fun e!3242952 () Bool)

(assert (=> b!5208794 (= e!3242955 e!3242952)))

(declare-fun b!5208795 () Bool)

(assert (=> b!5208795 (= e!3242952 (= s!2326 (Cons!60562 (c!897710 (regTwo!30103 r!7292)) Nil!60562)))))

(declare-fun b!5208796 () Bool)

(assert (=> b!5208796 (= e!3242953 call!366623)))

(declare-fun b!5208797 () Bool)

(declare-fun c!898125 () Bool)

(assert (=> b!5208797 (= c!898125 ((_ is Union!14795) (regTwo!30103 r!7292)))))

(assert (=> b!5208797 (= e!3242952 e!3242950)))

(declare-fun b!5208798 () Bool)

(assert (=> b!5208798 (= e!3242950 e!3242949)))

(declare-fun res!2212593 () Bool)

(assert (=> b!5208798 (= res!2212593 (matchRSpec!1898 (regOne!30103 (regTwo!30103 r!7292)) s!2326))))

(assert (=> b!5208798 (=> res!2212593 e!3242949)))

(declare-fun b!5208799 () Bool)

(assert (=> b!5208799 (= e!3242953 e!3242955)))

(declare-fun res!2212595 () Bool)

(assert (=> b!5208799 (= res!2212595 (not ((_ is EmptyLang!14795) (regTwo!30103 r!7292))))))

(assert (=> b!5208799 (=> (not res!2212595) (not e!3242955))))

(declare-fun bm!366619 () Bool)

(assert (=> bm!366619 (= call!366623 (isEmpty!32473 s!2326))))

(assert (= (and d!1679767 c!898128) b!5208796))

(assert (= (and d!1679767 (not c!898128)) b!5208799))

(assert (= (and b!5208799 res!2212595) b!5208794))

(assert (= (and b!5208794 c!898127) b!5208795))

(assert (= (and b!5208794 (not c!898127)) b!5208797))

(assert (= (and b!5208797 c!898125) b!5208798))

(assert (= (and b!5208797 (not c!898125)) b!5208793))

(assert (= (and b!5208798 (not res!2212593)) b!5208790))

(assert (= (and b!5208793 c!898126) b!5208789))

(assert (= (and b!5208793 (not c!898126)) b!5208792))

(assert (= (and b!5208789 (not res!2212594)) b!5208791))

(assert (= (or b!5208791 b!5208792) bm!366618))

(assert (= (or b!5208796 b!5208789) bm!366619))

(declare-fun m!6259214 () Bool)

(assert (=> bm!366618 m!6259214))

(declare-fun m!6259216 () Bool)

(assert (=> b!5208790 m!6259216))

(declare-fun m!6259218 () Bool)

(assert (=> b!5208798 m!6259218))

(assert (=> bm!366619 m!6258290))

(assert (=> b!5207781 d!1679767))

(declare-fun d!1679769 () Bool)

(assert (=> d!1679769 (= (isConcat!282 lt!2141827) ((_ is Concat!23640) lt!2141827))))

(assert (=> b!5207984 d!1679769))

(assert (=> d!1679395 d!1679389))

(declare-fun d!1679781 () Bool)

(assert (=> d!1679781 (= (flatMap!522 z!1189 lambda!261051) (dynLambda!23923 lambda!261051 (h!67009 zl!343)))))

(assert (=> d!1679781 true))

(declare-fun _$13!1681 () Unit!152446)

(assert (=> d!1679781 (= (choose!38716 z!1189 (h!67009 zl!343) lambda!261051) _$13!1681)))

(declare-fun b_lambda!201505 () Bool)

(assert (=> (not b_lambda!201505) (not d!1679781)))

(declare-fun bs!1210456 () Bool)

(assert (= bs!1210456 d!1679781))

(assert (=> bs!1210456 m!6257982))

(assert (=> bs!1210456 m!6258344))

(assert (=> d!1679395 d!1679781))

(declare-fun b!5208893 () Bool)

(declare-fun e!3242982 () List!60686)

(assert (=> b!5208893 (= e!3242982 (Cons!60562 (h!67010 (_1!35297 (get!20806 lt!2141816))) (++!13203 (t!373845 (_1!35297 (get!20806 lt!2141816))) (_2!35297 (get!20806 lt!2141816)))))))

(declare-fun b!5208892 () Bool)

(assert (=> b!5208892 (= e!3242982 (_2!35297 (get!20806 lt!2141816)))))

(declare-fun b!5208895 () Bool)

(declare-fun e!3242983 () Bool)

(declare-fun lt!2141867 () List!60686)

(assert (=> b!5208895 (= e!3242983 (or (not (= (_2!35297 (get!20806 lt!2141816)) Nil!60562)) (= lt!2141867 (_1!35297 (get!20806 lt!2141816)))))))

(declare-fun b!5208894 () Bool)

(declare-fun res!2212596 () Bool)

(assert (=> b!5208894 (=> (not res!2212596) (not e!3242983))))

(assert (=> b!5208894 (= res!2212596 (= (size!39714 lt!2141867) (+ (size!39714 (_1!35297 (get!20806 lt!2141816))) (size!39714 (_2!35297 (get!20806 lt!2141816))))))))

(declare-fun d!1679783 () Bool)

(assert (=> d!1679783 e!3242983))

(declare-fun res!2212597 () Bool)

(assert (=> d!1679783 (=> (not res!2212597) (not e!3242983))))

(assert (=> d!1679783 (= res!2212597 (= (content!10724 lt!2141867) ((_ map or) (content!10724 (_1!35297 (get!20806 lt!2141816))) (content!10724 (_2!35297 (get!20806 lt!2141816))))))))

(assert (=> d!1679783 (= lt!2141867 e!3242982)))

(declare-fun c!898129 () Bool)

(assert (=> d!1679783 (= c!898129 ((_ is Nil!60562) (_1!35297 (get!20806 lt!2141816))))))

(assert (=> d!1679783 (= (++!13203 (_1!35297 (get!20806 lt!2141816)) (_2!35297 (get!20806 lt!2141816))) lt!2141867)))

(assert (= (and d!1679783 c!898129) b!5208892))

(assert (= (and d!1679783 (not c!898129)) b!5208893))

(assert (= (and d!1679783 res!2212597) b!5208894))

(assert (= (and b!5208894 res!2212596) b!5208895))

(declare-fun m!6259228 () Bool)

(assert (=> b!5208893 m!6259228))

(declare-fun m!6259230 () Bool)

(assert (=> b!5208894 m!6259230))

(declare-fun m!6259232 () Bool)

(assert (=> b!5208894 m!6259232))

(declare-fun m!6259234 () Bool)

(assert (=> b!5208894 m!6259234))

(declare-fun m!6259236 () Bool)

(assert (=> d!1679783 m!6259236))

(declare-fun m!6259238 () Bool)

(assert (=> d!1679783 m!6259238))

(declare-fun m!6259240 () Bool)

(assert (=> d!1679783 m!6259240))

(assert (=> b!5207940 d!1679783))

(assert (=> b!5207940 d!1679565))

(declare-fun bs!1210457 () Bool)

(declare-fun d!1679785 () Bool)

(assert (= bs!1210457 (and d!1679785 d!1679383)))

(declare-fun lambda!261159 () Int)

(assert (=> bs!1210457 (= lambda!261159 lambda!261091)))

(declare-fun bs!1210458 () Bool)

(assert (= bs!1210458 (and d!1679785 d!1679387)))

(assert (=> bs!1210458 (= lambda!261159 lambda!261094)))

(declare-fun bs!1210459 () Bool)

(assert (= bs!1210459 (and d!1679785 d!1679715)))

(assert (=> bs!1210459 (= lambda!261159 lambda!261153)))

(declare-fun bs!1210460 () Bool)

(assert (= bs!1210460 (and d!1679785 d!1679725)))

(assert (=> bs!1210460 (= lambda!261159 lambda!261155)))

(declare-fun bs!1210461 () Bool)

(assert (= bs!1210461 (and d!1679785 d!1679425)))

(assert (=> bs!1210461 (= lambda!261159 lambda!261107)))

(declare-fun bs!1210462 () Bool)

(assert (= bs!1210462 (and d!1679785 d!1679569)))

(assert (=> bs!1210462 (= lambda!261159 lambda!261127)))

(declare-fun bs!1210463 () Bool)

(assert (= bs!1210463 (and d!1679785 d!1679403)))

(assert (=> bs!1210463 (= lambda!261159 lambda!261095)))

(declare-fun bs!1210464 () Bool)

(assert (= bs!1210464 (and d!1679785 d!1679381)))

(assert (=> bs!1210464 (= lambda!261159 lambda!261088)))

(declare-fun bs!1210465 () Bool)

(assert (= bs!1210465 (and d!1679785 d!1679605)))

(assert (=> bs!1210465 (= lambda!261159 lambda!261133)))

(assert (=> d!1679785 (= (inv!80234 setElem!33070) (forall!14231 (exprs!4679 setElem!33070) lambda!261159))))

(declare-fun bs!1210466 () Bool)

(assert (= bs!1210466 d!1679785))

(declare-fun m!6259242 () Bool)

(assert (=> bs!1210466 m!6259242))

(assert (=> setNonEmpty!33070 d!1679785))

(declare-fun b!5208896 () Bool)

(declare-fun c!898134 () Bool)

(assert (=> b!5208896 (= c!898134 ((_ is Star!14795) (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))))))

(declare-fun e!3242989 () (InoxSet Context!8358))

(declare-fun e!3242984 () (InoxSet Context!8358))

(assert (=> b!5208896 (= e!3242989 e!3242984)))

(declare-fun c!898133 () Bool)

(declare-fun d!1679787 () Bool)

(assert (=> d!1679787 (= c!898133 (and ((_ is ElementMatch!14795) (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))) (= (c!897710 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))) (h!67010 s!2326))))))

(declare-fun e!3242987 () (InoxSet Context!8358))

(assert (=> d!1679787 (= (derivationStepZipperDown!243 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292)))))) (ite (or c!897806 c!897808) lt!2141743 (Context!8359 call!366410)) (h!67010 s!2326)) e!3242987)))

(declare-fun b!5208897 () Bool)

(assert (=> b!5208897 (= e!3242984 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208898 () Bool)

(declare-fun call!366625 () (InoxSet Context!8358))

(assert (=> b!5208898 (= e!3242984 call!366625)))

(declare-fun b!5208899 () Bool)

(declare-fun e!3242988 () (InoxSet Context!8358))

(assert (=> b!5208899 (= e!3242988 e!3242989)))

(declare-fun c!898131 () Bool)

(assert (=> b!5208899 (= c!898131 ((_ is Concat!23640) (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))))))

(declare-fun bm!366620 () Bool)

(declare-fun call!366626 () (InoxSet Context!8358))

(assert (=> bm!366620 (= call!366625 call!366626)))

(declare-fun b!5208900 () Bool)

(declare-fun call!366630 () (InoxSet Context!8358))

(assert (=> b!5208900 (= e!3242988 ((_ map or) call!366630 call!366626))))

(declare-fun bm!366621 () Bool)

(declare-fun call!366628 () List!60684)

(declare-fun c!898132 () Bool)

(assert (=> bm!366621 (= call!366628 ($colon$colon!1273 (exprs!4679 (ite (or c!897806 c!897808) lt!2141743 (Context!8359 call!366410))) (ite (or c!898132 c!898131) (regTwo!30102 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))) (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292)))))))))))

(declare-fun b!5208901 () Bool)

(declare-fun e!3242986 () (InoxSet Context!8358))

(declare-fun call!366629 () (InoxSet Context!8358))

(assert (=> b!5208901 (= e!3242986 ((_ map or) call!366630 call!366629))))

(declare-fun b!5208902 () Bool)

(assert (=> b!5208902 (= e!3242989 call!366625)))

(declare-fun bm!366622 () Bool)

(declare-fun call!366627 () List!60684)

(assert (=> bm!366622 (= call!366627 call!366628)))

(declare-fun c!898130 () Bool)

(declare-fun bm!366623 () Bool)

(assert (=> bm!366623 (= call!366629 (derivationStepZipperDown!243 (ite c!898130 (regTwo!30103 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))) (ite c!898132 (regTwo!30102 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))) (ite c!898131 (regOne!30102 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))) (reg!15124 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292)))))))))) (ite (or c!898130 c!898132) (ite (or c!897806 c!897808) lt!2141743 (Context!8359 call!366410)) (Context!8359 call!366627)) (h!67010 s!2326)))))

(declare-fun b!5208903 () Bool)

(declare-fun e!3242985 () Bool)

(assert (=> b!5208903 (= e!3242985 (nullable!4964 (regOne!30102 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292)))))))))))

(declare-fun b!5208904 () Bool)

(assert (=> b!5208904 (= c!898132 e!3242985)))

(declare-fun res!2212598 () Bool)

(assert (=> b!5208904 (=> (not res!2212598) (not e!3242985))))

(assert (=> b!5208904 (= res!2212598 ((_ is Concat!23640) (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))))))

(assert (=> b!5208904 (= e!3242986 e!3242988)))

(declare-fun bm!366624 () Bool)

(assert (=> bm!366624 (= call!366626 call!366629)))

(declare-fun b!5208905 () Bool)

(assert (=> b!5208905 (= e!3242987 e!3242986)))

(assert (=> b!5208905 (= c!898130 ((_ is Union!14795) (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))))))

(declare-fun b!5208906 () Bool)

(assert (=> b!5208906 (= e!3242987 (store ((as const (Array Context!8358 Bool)) false) (ite (or c!897806 c!897808) lt!2141743 (Context!8359 call!366410)) true))))

(declare-fun bm!366625 () Bool)

(assert (=> bm!366625 (= call!366630 (derivationStepZipperDown!243 (ite c!898130 (regOne!30103 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292))))))) (regOne!30102 (ite c!897806 (regTwo!30103 (regOne!30103 (regOne!30102 r!7292))) (ite c!897808 (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (ite c!897807 (regOne!30102 (regOne!30103 (regOne!30102 r!7292))) (reg!15124 (regOne!30103 (regOne!30102 r!7292)))))))) (ite c!898130 (ite (or c!897806 c!897808) lt!2141743 (Context!8359 call!366410)) (Context!8359 call!366628)) (h!67010 s!2326)))))

(assert (= (and d!1679787 c!898133) b!5208906))

(assert (= (and d!1679787 (not c!898133)) b!5208905))

(assert (= (and b!5208905 c!898130) b!5208901))

(assert (= (and b!5208905 (not c!898130)) b!5208904))

(assert (= (and b!5208904 res!2212598) b!5208903))

(assert (= (and b!5208904 c!898132) b!5208900))

(assert (= (and b!5208904 (not c!898132)) b!5208899))

(assert (= (and b!5208899 c!898131) b!5208902))

(assert (= (and b!5208899 (not c!898131)) b!5208896))

(assert (= (and b!5208896 c!898134) b!5208898))

(assert (= (and b!5208896 (not c!898134)) b!5208897))

(assert (= (or b!5208902 b!5208898) bm!366622))

(assert (= (or b!5208902 b!5208898) bm!366620))

(assert (= (or b!5208900 bm!366622) bm!366621))

(assert (= (or b!5208900 bm!366620) bm!366624))

(assert (= (or b!5208901 bm!366624) bm!366623))

(assert (= (or b!5208901 b!5208900) bm!366625))

(declare-fun m!6259244 () Bool)

(assert (=> b!5208903 m!6259244))

(declare-fun m!6259246 () Bool)

(assert (=> bm!366623 m!6259246))

(declare-fun m!6259248 () Bool)

(assert (=> bm!366625 m!6259248))

(declare-fun m!6259250 () Bool)

(assert (=> bm!366621 m!6259250))

(declare-fun m!6259252 () Bool)

(assert (=> b!5208906 m!6259252))

(assert (=> bm!366406 d!1679787))

(declare-fun b!5208907 () Bool)

(declare-fun e!3242990 () Bool)

(assert (=> b!5208907 (= e!3242990 (nullable!4964 (h!67008 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 lt!2141743)))))))))

(declare-fun b!5208908 () Bool)

(declare-fun e!3242991 () (InoxSet Context!8358))

(declare-fun call!366631 () (InoxSet Context!8358))

(assert (=> b!5208908 (= e!3242991 call!366631)))

(declare-fun b!5208909 () Bool)

(assert (=> b!5208909 (= e!3242991 ((as const (Array Context!8358 Bool)) false))))

(declare-fun e!3242992 () (InoxSet Context!8358))

(declare-fun b!5208910 () Bool)

(assert (=> b!5208910 (= e!3242992 ((_ map or) call!366631 (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 lt!2141743)))))) (h!67010 s!2326))))))

(declare-fun bm!366626 () Bool)

(assert (=> bm!366626 (= call!366631 (derivationStepZipperDown!243 (h!67008 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 lt!2141743))))) (Context!8359 (t!373843 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 lt!2141743)))))) (h!67010 s!2326)))))

(declare-fun d!1679789 () Bool)

(declare-fun c!898135 () Bool)

(assert (=> d!1679789 (= c!898135 e!3242990)))

(declare-fun res!2212599 () Bool)

(assert (=> d!1679789 (=> (not res!2212599) (not e!3242990))))

(assert (=> d!1679789 (= res!2212599 ((_ is Cons!60560) (exprs!4679 (Context!8359 (t!373843 (exprs!4679 lt!2141743))))))))

(assert (=> d!1679789 (= (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 lt!2141743))) (h!67010 s!2326)) e!3242992)))

(declare-fun b!5208911 () Bool)

(assert (=> b!5208911 (= e!3242992 e!3242991)))

(declare-fun c!898136 () Bool)

(assert (=> b!5208911 (= c!898136 ((_ is Cons!60560) (exprs!4679 (Context!8359 (t!373843 (exprs!4679 lt!2141743))))))))

(assert (= (and d!1679789 res!2212599) b!5208907))

(assert (= (and d!1679789 c!898135) b!5208910))

(assert (= (and d!1679789 (not c!898135)) b!5208911))

(assert (= (and b!5208911 c!898136) b!5208908))

(assert (= (and b!5208911 (not c!898136)) b!5208909))

(assert (= (or b!5208910 b!5208908) bm!366626))

(declare-fun m!6259254 () Bool)

(assert (=> b!5208907 m!6259254))

(declare-fun m!6259256 () Bool)

(assert (=> b!5208910 m!6259256))

(declare-fun m!6259258 () Bool)

(assert (=> bm!366626 m!6259258))

(assert (=> b!5207887 d!1679789))

(declare-fun b!5208912 () Bool)

(declare-fun e!3242996 () Bool)

(declare-fun call!366634 () Bool)

(assert (=> b!5208912 (= e!3242996 call!366634)))

(declare-fun b!5208913 () Bool)

(declare-fun e!3242995 () Bool)

(assert (=> b!5208913 (= e!3242995 call!366634)))

(declare-fun b!5208914 () Bool)

(declare-fun res!2212600 () Bool)

(declare-fun e!3242998 () Bool)

(assert (=> b!5208914 (=> res!2212600 e!3242998)))

(assert (=> b!5208914 (= res!2212600 (not ((_ is Concat!23640) lt!2141803)))))

(declare-fun e!3242993 () Bool)

(assert (=> b!5208914 (= e!3242993 e!3242998)))

(declare-fun b!5208916 () Bool)

(declare-fun e!3242999 () Bool)

(declare-fun e!3242994 () Bool)

(assert (=> b!5208916 (= e!3242999 e!3242994)))

(declare-fun res!2212601 () Bool)

(assert (=> b!5208916 (= res!2212601 (not (nullable!4964 (reg!15124 lt!2141803))))))

(assert (=> b!5208916 (=> (not res!2212601) (not e!3242994))))

(declare-fun bm!366627 () Bool)

(declare-fun call!366633 () Bool)

(assert (=> bm!366627 (= call!366634 call!366633)))

(declare-fun b!5208917 () Bool)

(declare-fun res!2212603 () Bool)

(assert (=> b!5208917 (=> (not res!2212603) (not e!3242996))))

(declare-fun call!366632 () Bool)

(assert (=> b!5208917 (= res!2212603 call!366632)))

(assert (=> b!5208917 (= e!3242993 e!3242996)))

(declare-fun b!5208918 () Bool)

(assert (=> b!5208918 (= e!3242998 e!3242995)))

(declare-fun res!2212604 () Bool)

(assert (=> b!5208918 (=> (not res!2212604) (not e!3242995))))

(assert (=> b!5208918 (= res!2212604 call!366632)))

(declare-fun b!5208919 () Bool)

(assert (=> b!5208919 (= e!3242994 call!366633)))

(declare-fun bm!366628 () Bool)

(declare-fun c!898138 () Bool)

(declare-fun c!898137 () Bool)

(assert (=> bm!366628 (= call!366633 (validRegex!6531 (ite c!898137 (reg!15124 lt!2141803) (ite c!898138 (regTwo!30103 lt!2141803) (regTwo!30102 lt!2141803)))))))

(declare-fun d!1679791 () Bool)

(declare-fun res!2212602 () Bool)

(declare-fun e!3242997 () Bool)

(assert (=> d!1679791 (=> res!2212602 e!3242997)))

(assert (=> d!1679791 (= res!2212602 ((_ is ElementMatch!14795) lt!2141803))))

(assert (=> d!1679791 (= (validRegex!6531 lt!2141803) e!3242997)))

(declare-fun b!5208915 () Bool)

(assert (=> b!5208915 (= e!3242999 e!3242993)))

(assert (=> b!5208915 (= c!898138 ((_ is Union!14795) lt!2141803))))

(declare-fun b!5208920 () Bool)

(assert (=> b!5208920 (= e!3242997 e!3242999)))

(assert (=> b!5208920 (= c!898137 ((_ is Star!14795) lt!2141803))))

(declare-fun bm!366629 () Bool)

(assert (=> bm!366629 (= call!366632 (validRegex!6531 (ite c!898138 (regOne!30103 lt!2141803) (regOne!30102 lt!2141803))))))

(assert (= (and d!1679791 (not res!2212602)) b!5208920))

(assert (= (and b!5208920 c!898137) b!5208916))

(assert (= (and b!5208920 (not c!898137)) b!5208915))

(assert (= (and b!5208916 res!2212601) b!5208919))

(assert (= (and b!5208915 c!898138) b!5208917))

(assert (= (and b!5208915 (not c!898138)) b!5208914))

(assert (= (and b!5208917 res!2212603) b!5208912))

(assert (= (and b!5208914 (not res!2212600)) b!5208918))

(assert (= (and b!5208918 res!2212604) b!5208913))

(assert (= (or b!5208912 b!5208913) bm!366627))

(assert (= (or b!5208917 b!5208918) bm!366629))

(assert (= (or b!5208919 bm!366627) bm!366628))

(declare-fun m!6259260 () Bool)

(assert (=> b!5208916 m!6259260))

(declare-fun m!6259262 () Bool)

(assert (=> bm!366628 m!6259262))

(declare-fun m!6259264 () Bool)

(assert (=> bm!366629 m!6259264))

(assert (=> d!1679385 d!1679791))

(assert (=> d!1679385 d!1679381))

(assert (=> d!1679385 d!1679383))

(declare-fun b!5208921 () Bool)

(declare-fun e!3243000 () Bool)

(assert (=> b!5208921 (= e!3243000 (nullable!4964 (h!67008 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343))))))))))

(declare-fun b!5208922 () Bool)

(declare-fun e!3243001 () (InoxSet Context!8358))

(declare-fun call!366635 () (InoxSet Context!8358))

(assert (=> b!5208922 (= e!3243001 call!366635)))

(declare-fun b!5208923 () Bool)

(assert (=> b!5208923 (= e!3243001 ((as const (Array Context!8358 Bool)) false))))

(declare-fun e!3243002 () (InoxSet Context!8358))

(declare-fun b!5208924 () Bool)

(assert (=> b!5208924 (= e!3243002 ((_ map or) call!366635 (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343))))))) (h!67010 s!2326))))))

(declare-fun bm!366630 () Bool)

(assert (=> bm!366630 (= call!366635 (derivationStepZipperDown!243 (h!67008 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))))) (Context!8359 (t!373843 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343))))))) (h!67010 s!2326)))))

(declare-fun d!1679793 () Bool)

(declare-fun c!898139 () Bool)

(assert (=> d!1679793 (= c!898139 e!3243000)))

(declare-fun res!2212605 () Bool)

(assert (=> d!1679793 (=> (not res!2212605) (not e!3243000))))

(assert (=> d!1679793 (= res!2212605 ((_ is Cons!60560) (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))))))))

(assert (=> d!1679793 (= (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))) (h!67010 s!2326)) e!3243002)))

(declare-fun b!5208925 () Bool)

(assert (=> b!5208925 (= e!3243002 e!3243001)))

(declare-fun c!898140 () Bool)

(assert (=> b!5208925 (= c!898140 ((_ is Cons!60560) (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (h!67009 zl!343)))))))))

(assert (= (and d!1679793 res!2212605) b!5208921))

(assert (= (and d!1679793 c!898139) b!5208924))

(assert (= (and d!1679793 (not c!898139)) b!5208925))

(assert (= (and b!5208925 c!898140) b!5208922))

(assert (= (and b!5208925 (not c!898140)) b!5208923))

(assert (= (or b!5208924 b!5208922) bm!366630))

(declare-fun m!6259266 () Bool)

(assert (=> b!5208921 m!6259266))

(declare-fun m!6259268 () Bool)

(assert (=> b!5208924 m!6259268))

(declare-fun m!6259270 () Bool)

(assert (=> bm!366630 m!6259270))

(assert (=> b!5207892 d!1679793))

(declare-fun d!1679795 () Bool)

(assert (=> d!1679795 (= (isEmptyLang!768 lt!2141797) ((_ is EmptyLang!14795) lt!2141797))))

(assert (=> b!5207853 d!1679795))

(declare-fun d!1679797 () Bool)

(assert (=> d!1679797 (= (nullable!4964 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (nullableFct!1375 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun bs!1210467 () Bool)

(assert (= bs!1210467 d!1679797))

(declare-fun m!6259272 () Bool)

(assert (=> bs!1210467 m!6259272))

(assert (=> b!5207879 d!1679797))

(declare-fun bs!1210468 () Bool)

(declare-fun b!5208928 () Bool)

(assert (= bs!1210468 (and b!5208928 b!5208791)))

(declare-fun lambda!261160 () Int)

(assert (=> bs!1210468 (= (and (= (reg!15124 (regOne!30103 r!7292)) (reg!15124 (regTwo!30103 r!7292))) (= (regOne!30103 r!7292) (regTwo!30103 r!7292))) (= lambda!261160 lambda!261157))))

(declare-fun bs!1210469 () Bool)

(assert (= bs!1210469 (and b!5208928 d!1679417)))

(assert (=> bs!1210469 (not (= lambda!261160 lambda!261098))))

(declare-fun bs!1210470 () Bool)

(assert (= bs!1210470 (and b!5208928 b!5208792)))

(assert (=> bs!1210470 (not (= lambda!261160 lambda!261158))))

(declare-fun bs!1210471 () Bool)

(assert (= bs!1210471 (and b!5208928 d!1679623)))

(assert (=> bs!1210471 (not (= lambda!261160 lambda!261142))))

(declare-fun bs!1210472 () Bool)

(assert (= bs!1210472 (and b!5208928 b!5207268)))

(assert (=> bs!1210472 (not (= lambda!261160 lambda!261049))))

(declare-fun bs!1210473 () Bool)

(assert (= bs!1210473 (and b!5208928 b!5207783)))

(assert (=> bs!1210473 (not (= lambda!261160 lambda!261085))))

(assert (=> bs!1210471 (not (= lambda!261160 lambda!261143))))

(assert (=> bs!1210472 (not (= lambda!261160 lambda!261050))))

(declare-fun bs!1210474 () Bool)

(assert (= bs!1210474 (and b!5208928 d!1679419)))

(assert (=> bs!1210474 (not (= lambda!261160 lambda!261104))))

(declare-fun bs!1210475 () Bool)

(assert (= bs!1210475 (and b!5208928 b!5207782)))

(assert (=> bs!1210475 (= (and (= (reg!15124 (regOne!30103 r!7292)) (reg!15124 r!7292)) (= (regOne!30103 r!7292) r!7292)) (= lambda!261160 lambda!261084))))

(assert (=> bs!1210474 (not (= lambda!261160 lambda!261103))))

(declare-fun bs!1210476 () Bool)

(assert (= bs!1210476 (and b!5208928 d!1679577)))

(assert (=> bs!1210476 (not (= lambda!261160 lambda!261130))))

(assert (=> b!5208928 true))

(assert (=> b!5208928 true))

(declare-fun bs!1210477 () Bool)

(declare-fun b!5208929 () Bool)

(assert (= bs!1210477 (and b!5208929 b!5208791)))

(declare-fun lambda!261161 () Int)

(assert (=> bs!1210477 (not (= lambda!261161 lambda!261157))))

(declare-fun bs!1210478 () Bool)

(assert (= bs!1210478 (and b!5208929 d!1679417)))

(assert (=> bs!1210478 (not (= lambda!261161 lambda!261098))))

(declare-fun bs!1210479 () Bool)

(assert (= bs!1210479 (and b!5208929 b!5208792)))

(assert (=> bs!1210479 (= (and (= (regOne!30102 (regOne!30103 r!7292)) (regOne!30102 (regTwo!30103 r!7292))) (= (regTwo!30102 (regOne!30103 r!7292)) (regTwo!30102 (regTwo!30103 r!7292)))) (= lambda!261161 lambda!261158))))

(declare-fun bs!1210480 () Bool)

(assert (= bs!1210480 (and b!5208929 d!1679623)))

(assert (=> bs!1210480 (not (= lambda!261161 lambda!261142))))

(declare-fun bs!1210481 () Bool)

(assert (= bs!1210481 (and b!5208929 b!5207268)))

(assert (=> bs!1210481 (not (= lambda!261161 lambda!261049))))

(declare-fun bs!1210482 () Bool)

(assert (= bs!1210482 (and b!5208929 b!5207783)))

(assert (=> bs!1210482 (= (and (= (regOne!30102 (regOne!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regOne!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261161 lambda!261085))))

(assert (=> bs!1210480 (= (and (= (regOne!30102 (regOne!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regOne!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261161 lambda!261143))))

(assert (=> bs!1210481 (= (and (= (regOne!30102 (regOne!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regOne!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261161 lambda!261050))))

(declare-fun bs!1210483 () Bool)

(assert (= bs!1210483 (and b!5208929 b!5207782)))

(assert (=> bs!1210483 (not (= lambda!261161 lambda!261084))))

(declare-fun bs!1210484 () Bool)

(assert (= bs!1210484 (and b!5208929 d!1679419)))

(assert (=> bs!1210484 (not (= lambda!261161 lambda!261103))))

(declare-fun bs!1210485 () Bool)

(assert (= bs!1210485 (and b!5208929 d!1679577)))

(assert (=> bs!1210485 (not (= lambda!261161 lambda!261130))))

(declare-fun bs!1210486 () Bool)

(assert (= bs!1210486 (and b!5208929 b!5208928)))

(assert (=> bs!1210486 (not (= lambda!261161 lambda!261160))))

(assert (=> bs!1210484 (= (and (= (regOne!30102 (regOne!30103 r!7292)) (regOne!30102 r!7292)) (= (regTwo!30102 (regOne!30103 r!7292)) (regTwo!30102 r!7292))) (= lambda!261161 lambda!261104))))

(assert (=> b!5208929 true))

(assert (=> b!5208929 true))

(declare-fun call!366637 () Bool)

(declare-fun bm!366631 () Bool)

(declare-fun c!898142 () Bool)

(assert (=> bm!366631 (= call!366637 (Exists!1976 (ite c!898142 lambda!261160 lambda!261161)))))

(declare-fun b!5208926 () Bool)

(declare-fun res!2212607 () Bool)

(declare-fun e!3243005 () Bool)

(assert (=> b!5208926 (=> res!2212607 e!3243005)))

(declare-fun call!366636 () Bool)

(assert (=> b!5208926 (= res!2212607 call!366636)))

(declare-fun e!3243008 () Bool)

(assert (=> b!5208926 (= e!3243008 e!3243005)))

(declare-fun b!5208927 () Bool)

(declare-fun e!3243003 () Bool)

(assert (=> b!5208927 (= e!3243003 (matchRSpec!1898 (regTwo!30103 (regOne!30103 r!7292)) s!2326))))

(assert (=> b!5208928 (= e!3243005 call!366637)))

(assert (=> b!5208929 (= e!3243008 call!366637)))

(declare-fun d!1679799 () Bool)

(declare-fun c!898144 () Bool)

(assert (=> d!1679799 (= c!898144 ((_ is EmptyExpr!14795) (regOne!30103 r!7292)))))

(declare-fun e!3243007 () Bool)

(assert (=> d!1679799 (= (matchRSpec!1898 (regOne!30103 r!7292) s!2326) e!3243007)))

(declare-fun b!5208930 () Bool)

(declare-fun e!3243004 () Bool)

(assert (=> b!5208930 (= e!3243004 e!3243008)))

(assert (=> b!5208930 (= c!898142 ((_ is Star!14795) (regOne!30103 r!7292)))))

(declare-fun b!5208931 () Bool)

(declare-fun c!898143 () Bool)

(assert (=> b!5208931 (= c!898143 ((_ is ElementMatch!14795) (regOne!30103 r!7292)))))

(declare-fun e!3243009 () Bool)

(declare-fun e!3243006 () Bool)

(assert (=> b!5208931 (= e!3243009 e!3243006)))

(declare-fun b!5208932 () Bool)

(assert (=> b!5208932 (= e!3243006 (= s!2326 (Cons!60562 (c!897710 (regOne!30103 r!7292)) Nil!60562)))))

(declare-fun b!5208933 () Bool)

(assert (=> b!5208933 (= e!3243007 call!366636)))

(declare-fun b!5208934 () Bool)

(declare-fun c!898141 () Bool)

(assert (=> b!5208934 (= c!898141 ((_ is Union!14795) (regOne!30103 r!7292)))))

(assert (=> b!5208934 (= e!3243006 e!3243004)))

(declare-fun b!5208935 () Bool)

(assert (=> b!5208935 (= e!3243004 e!3243003)))

(declare-fun res!2212606 () Bool)

(assert (=> b!5208935 (= res!2212606 (matchRSpec!1898 (regOne!30103 (regOne!30103 r!7292)) s!2326))))

(assert (=> b!5208935 (=> res!2212606 e!3243003)))

(declare-fun b!5208936 () Bool)

(assert (=> b!5208936 (= e!3243007 e!3243009)))

(declare-fun res!2212608 () Bool)

(assert (=> b!5208936 (= res!2212608 (not ((_ is EmptyLang!14795) (regOne!30103 r!7292))))))

(assert (=> b!5208936 (=> (not res!2212608) (not e!3243009))))

(declare-fun bm!366632 () Bool)

(assert (=> bm!366632 (= call!366636 (isEmpty!32473 s!2326))))

(assert (= (and d!1679799 c!898144) b!5208933))

(assert (= (and d!1679799 (not c!898144)) b!5208936))

(assert (= (and b!5208936 res!2212608) b!5208931))

(assert (= (and b!5208931 c!898143) b!5208932))

(assert (= (and b!5208931 (not c!898143)) b!5208934))

(assert (= (and b!5208934 c!898141) b!5208935))

(assert (= (and b!5208934 (not c!898141)) b!5208930))

(assert (= (and b!5208935 (not res!2212606)) b!5208927))

(assert (= (and b!5208930 c!898142) b!5208926))

(assert (= (and b!5208930 (not c!898142)) b!5208929))

(assert (= (and b!5208926 (not res!2212607)) b!5208928))

(assert (= (or b!5208928 b!5208929) bm!366631))

(assert (= (or b!5208933 b!5208926) bm!366632))

(declare-fun m!6259274 () Bool)

(assert (=> bm!366631 m!6259274))

(declare-fun m!6259276 () Bool)

(assert (=> b!5208927 m!6259276))

(declare-fun m!6259278 () Bool)

(assert (=> b!5208935 m!6259278))

(assert (=> bm!366632 m!6258290))

(assert (=> b!5207789 d!1679799))

(assert (=> d!1679321 d!1679691))

(declare-fun b!5208937 () Bool)

(declare-fun res!2212609 () Bool)

(declare-fun e!3243010 () Bool)

(assert (=> b!5208937 (=> res!2212609 e!3243010)))

(assert (=> b!5208937 (= res!2212609 (not (isEmpty!32473 (tail!10262 (tail!10262 s!2326)))))))

(declare-fun b!5208938 () Bool)

(declare-fun e!3243012 () Bool)

(assert (=> b!5208938 (= e!3243012 (= (head!11165 (tail!10262 s!2326)) (c!897710 (derivativeStep!4045 r!7292 (head!11165 s!2326)))))))

(declare-fun b!5208939 () Bool)

(declare-fun e!3243014 () Bool)

(assert (=> b!5208939 (= e!3243014 e!3243010)))

(declare-fun res!2212615 () Bool)

(assert (=> b!5208939 (=> res!2212615 e!3243010)))

(declare-fun call!366638 () Bool)

(assert (=> b!5208939 (= res!2212615 call!366638)))

(declare-fun b!5208940 () Bool)

(assert (=> b!5208940 (= e!3243010 (not (= (head!11165 (tail!10262 s!2326)) (c!897710 (derivativeStep!4045 r!7292 (head!11165 s!2326))))))))

(declare-fun b!5208941 () Bool)

(declare-fun res!2212613 () Bool)

(declare-fun e!3243013 () Bool)

(assert (=> b!5208941 (=> res!2212613 e!3243013)))

(assert (=> b!5208941 (= res!2212613 e!3243012)))

(declare-fun res!2212614 () Bool)

(assert (=> b!5208941 (=> (not res!2212614) (not e!3243012))))

(declare-fun lt!2141868 () Bool)

(assert (=> b!5208941 (= res!2212614 lt!2141868)))

(declare-fun b!5208942 () Bool)

(declare-fun res!2212611 () Bool)

(assert (=> b!5208942 (=> (not res!2212611) (not e!3243012))))

(assert (=> b!5208942 (= res!2212611 (isEmpty!32473 (tail!10262 (tail!10262 s!2326))))))

(declare-fun b!5208944 () Bool)

(assert (=> b!5208944 (= e!3243013 e!3243014)))

(declare-fun res!2212616 () Bool)

(assert (=> b!5208944 (=> (not res!2212616) (not e!3243014))))

(assert (=> b!5208944 (= res!2212616 (not lt!2141868))))

(declare-fun b!5208945 () Bool)

(declare-fun e!3243016 () Bool)

(assert (=> b!5208945 (= e!3243016 (matchR!6980 (derivativeStep!4045 (derivativeStep!4045 r!7292 (head!11165 s!2326)) (head!11165 (tail!10262 s!2326))) (tail!10262 (tail!10262 s!2326))))))

(declare-fun bm!366633 () Bool)

(assert (=> bm!366633 (= call!366638 (isEmpty!32473 (tail!10262 s!2326)))))

(declare-fun b!5208946 () Bool)

(declare-fun e!3243011 () Bool)

(declare-fun e!3243015 () Bool)

(assert (=> b!5208946 (= e!3243011 e!3243015)))

(declare-fun c!898146 () Bool)

(assert (=> b!5208946 (= c!898146 ((_ is EmptyLang!14795) (derivativeStep!4045 r!7292 (head!11165 s!2326))))))

(declare-fun b!5208947 () Bool)

(declare-fun res!2212610 () Bool)

(assert (=> b!5208947 (=> (not res!2212610) (not e!3243012))))

(assert (=> b!5208947 (= res!2212610 (not call!366638))))

(declare-fun b!5208948 () Bool)

(declare-fun res!2212612 () Bool)

(assert (=> b!5208948 (=> res!2212612 e!3243013)))

(assert (=> b!5208948 (= res!2212612 (not ((_ is ElementMatch!14795) (derivativeStep!4045 r!7292 (head!11165 s!2326)))))))

(assert (=> b!5208948 (= e!3243015 e!3243013)))

(declare-fun b!5208943 () Bool)

(assert (=> b!5208943 (= e!3243016 (nullable!4964 (derivativeStep!4045 r!7292 (head!11165 s!2326))))))

(declare-fun d!1679801 () Bool)

(assert (=> d!1679801 e!3243011))

(declare-fun c!898147 () Bool)

(assert (=> d!1679801 (= c!898147 ((_ is EmptyExpr!14795) (derivativeStep!4045 r!7292 (head!11165 s!2326))))))

(assert (=> d!1679801 (= lt!2141868 e!3243016)))

(declare-fun c!898145 () Bool)

(assert (=> d!1679801 (= c!898145 (isEmpty!32473 (tail!10262 s!2326)))))

(assert (=> d!1679801 (validRegex!6531 (derivativeStep!4045 r!7292 (head!11165 s!2326)))))

(assert (=> d!1679801 (= (matchR!6980 (derivativeStep!4045 r!7292 (head!11165 s!2326)) (tail!10262 s!2326)) lt!2141868)))

(declare-fun b!5208949 () Bool)

(assert (=> b!5208949 (= e!3243015 (not lt!2141868))))

(declare-fun b!5208950 () Bool)

(assert (=> b!5208950 (= e!3243011 (= lt!2141868 call!366638))))

(assert (= (and d!1679801 c!898145) b!5208943))

(assert (= (and d!1679801 (not c!898145)) b!5208945))

(assert (= (and d!1679801 c!898147) b!5208950))

(assert (= (and d!1679801 (not c!898147)) b!5208946))

(assert (= (and b!5208946 c!898146) b!5208949))

(assert (= (and b!5208946 (not c!898146)) b!5208948))

(assert (= (and b!5208948 (not res!2212612)) b!5208941))

(assert (= (and b!5208941 res!2212614) b!5208947))

(assert (= (and b!5208947 res!2212610) b!5208942))

(assert (= (and b!5208942 res!2212611) b!5208938))

(assert (= (and b!5208941 (not res!2212613)) b!5208944))

(assert (= (and b!5208944 res!2212616) b!5208939))

(assert (= (and b!5208939 (not res!2212615)) b!5208937))

(assert (= (and b!5208937 (not res!2212609)) b!5208940))

(assert (= (or b!5208950 b!5208939 b!5208947) bm!366633))

(assert (=> b!5208940 m!6258294))

(declare-fun m!6259280 () Bool)

(assert (=> b!5208940 m!6259280))

(assert (=> b!5208942 m!6258294))

(declare-fun m!6259282 () Bool)

(assert (=> b!5208942 m!6259282))

(assert (=> b!5208942 m!6259282))

(declare-fun m!6259284 () Bool)

(assert (=> b!5208942 m!6259284))

(assert (=> bm!366633 m!6258294))

(assert (=> bm!366633 m!6258296))

(assert (=> b!5208943 m!6258300))

(declare-fun m!6259286 () Bool)

(assert (=> b!5208943 m!6259286))

(assert (=> b!5208945 m!6258294))

(assert (=> b!5208945 m!6259280))

(assert (=> b!5208945 m!6258300))

(assert (=> b!5208945 m!6259280))

(declare-fun m!6259288 () Bool)

(assert (=> b!5208945 m!6259288))

(assert (=> b!5208945 m!6258294))

(assert (=> b!5208945 m!6259282))

(assert (=> b!5208945 m!6259288))

(assert (=> b!5208945 m!6259282))

(declare-fun m!6259290 () Bool)

(assert (=> b!5208945 m!6259290))

(assert (=> b!5208937 m!6258294))

(assert (=> b!5208937 m!6259282))

(assert (=> b!5208937 m!6259282))

(assert (=> b!5208937 m!6259284))

(assert (=> b!5208938 m!6258294))

(assert (=> b!5208938 m!6259280))

(assert (=> d!1679801 m!6258294))

(assert (=> d!1679801 m!6258296))

(assert (=> d!1679801 m!6258300))

(declare-fun m!6259292 () Bool)

(assert (=> d!1679801 m!6259292))

(assert (=> b!5207827 d!1679801))

(declare-fun b!5208971 () Bool)

(declare-fun e!3243031 () Regex!14795)

(declare-fun call!366648 () Regex!14795)

(declare-fun call!366649 () Regex!14795)

(assert (=> b!5208971 (= e!3243031 (Union!14795 call!366648 call!366649))))

(declare-fun b!5208972 () Bool)

(declare-fun c!898162 () Bool)

(assert (=> b!5208972 (= c!898162 ((_ is Union!14795) r!7292))))

(declare-fun e!3243029 () Regex!14795)

(assert (=> b!5208972 (= e!3243029 e!3243031)))

(declare-fun b!5208973 () Bool)

(assert (=> b!5208973 (= e!3243029 (ite (= (head!11165 s!2326) (c!897710 r!7292)) EmptyExpr!14795 EmptyLang!14795))))

(declare-fun b!5208974 () Bool)

(declare-fun e!3243028 () Regex!14795)

(assert (=> b!5208974 (= e!3243028 e!3243029)))

(declare-fun c!898160 () Bool)

(assert (=> b!5208974 (= c!898160 ((_ is ElementMatch!14795) r!7292))))

(declare-fun b!5208975 () Bool)

(declare-fun e!3243027 () Regex!14795)

(declare-fun call!366647 () Regex!14795)

(assert (=> b!5208975 (= e!3243027 (Union!14795 (Concat!23640 call!366647 (regTwo!30102 r!7292)) EmptyLang!14795))))

(declare-fun d!1679803 () Bool)

(declare-fun lt!2141871 () Regex!14795)

(assert (=> d!1679803 (validRegex!6531 lt!2141871)))

(assert (=> d!1679803 (= lt!2141871 e!3243028)))

(declare-fun c!898161 () Bool)

(assert (=> d!1679803 (= c!898161 (or ((_ is EmptyExpr!14795) r!7292) ((_ is EmptyLang!14795) r!7292)))))

(assert (=> d!1679803 (validRegex!6531 r!7292)))

(assert (=> d!1679803 (= (derivativeStep!4045 r!7292 (head!11165 s!2326)) lt!2141871)))

(declare-fun b!5208976 () Bool)

(declare-fun e!3243030 () Regex!14795)

(declare-fun call!366650 () Regex!14795)

(assert (=> b!5208976 (= e!3243030 (Concat!23640 call!366650 r!7292))))

(declare-fun b!5208977 () Bool)

(declare-fun c!898158 () Bool)

(assert (=> b!5208977 (= c!898158 (nullable!4964 (regOne!30102 r!7292)))))

(assert (=> b!5208977 (= e!3243030 e!3243027)))

(declare-fun bm!366642 () Bool)

(assert (=> bm!366642 (= call!366647 call!366648)))

(declare-fun b!5208978 () Bool)

(assert (=> b!5208978 (= e!3243031 e!3243030)))

(declare-fun c!898159 () Bool)

(assert (=> b!5208978 (= c!898159 ((_ is Star!14795) r!7292))))

(declare-fun bm!366643 () Bool)

(assert (=> bm!366643 (= call!366648 (derivativeStep!4045 (ite c!898162 (regOne!30103 r!7292) (ite c!898158 (regTwo!30102 r!7292) (regOne!30102 r!7292))) (head!11165 s!2326)))))

(declare-fun b!5208979 () Bool)

(assert (=> b!5208979 (= e!3243027 (Union!14795 (Concat!23640 call!366650 (regTwo!30102 r!7292)) call!366647))))

(declare-fun b!5208980 () Bool)

(assert (=> b!5208980 (= e!3243028 EmptyLang!14795)))

(declare-fun bm!366644 () Bool)

(assert (=> bm!366644 (= call!366649 (derivativeStep!4045 (ite c!898162 (regTwo!30103 r!7292) (ite c!898159 (reg!15124 r!7292) (regOne!30102 r!7292))) (head!11165 s!2326)))))

(declare-fun bm!366645 () Bool)

(assert (=> bm!366645 (= call!366650 call!366649)))

(assert (= (and d!1679803 c!898161) b!5208980))

(assert (= (and d!1679803 (not c!898161)) b!5208974))

(assert (= (and b!5208974 c!898160) b!5208973))

(assert (= (and b!5208974 (not c!898160)) b!5208972))

(assert (= (and b!5208972 c!898162) b!5208971))

(assert (= (and b!5208972 (not c!898162)) b!5208978))

(assert (= (and b!5208978 c!898159) b!5208976))

(assert (= (and b!5208978 (not c!898159)) b!5208977))

(assert (= (and b!5208977 c!898158) b!5208979))

(assert (= (and b!5208977 (not c!898158)) b!5208975))

(assert (= (or b!5208979 b!5208975) bm!366642))

(assert (= (or b!5208976 b!5208979) bm!366645))

(assert (= (or b!5208971 bm!366645) bm!366644))

(assert (= (or b!5208971 bm!366642) bm!366643))

(declare-fun m!6259294 () Bool)

(assert (=> d!1679803 m!6259294))

(assert (=> d!1679803 m!6258026))

(assert (=> b!5208977 m!6258884))

(assert (=> bm!366643 m!6258292))

(declare-fun m!6259296 () Bool)

(assert (=> bm!366643 m!6259296))

(assert (=> bm!366644 m!6258292))

(declare-fun m!6259298 () Bool)

(assert (=> bm!366644 m!6259298))

(assert (=> b!5207827 d!1679803))

(assert (=> b!5207827 d!1679557))

(assert (=> b!5207827 d!1679509))

(assert (=> d!1679375 d!1679607))

(assert (=> d!1679375 d!1679309))

(declare-fun d!1679805 () Bool)

(declare-fun c!898165 () Bool)

(assert (=> d!1679805 (= c!898165 ((_ is Nil!60561) lt!2141809))))

(declare-fun e!3243034 () (InoxSet Context!8358))

(assert (=> d!1679805 (= (content!10723 lt!2141809) e!3243034)))

(declare-fun b!5208985 () Bool)

(assert (=> b!5208985 (= e!3243034 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208986 () Bool)

(assert (=> b!5208986 (= e!3243034 ((_ map or) (store ((as const (Array Context!8358 Bool)) false) (h!67009 lt!2141809) true) (content!10723 (t!373844 lt!2141809))))))

(assert (= (and d!1679805 c!898165) b!5208985))

(assert (= (and d!1679805 (not c!898165)) b!5208986))

(declare-fun m!6259300 () Bool)

(assert (=> b!5208986 m!6259300))

(declare-fun m!6259302 () Bool)

(assert (=> b!5208986 m!6259302))

(assert (=> b!5207907 d!1679805))

(declare-fun b!5208987 () Bool)

(declare-fun e!3243038 () Bool)

(declare-fun call!366653 () Bool)

(assert (=> b!5208987 (= e!3243038 call!366653)))

(declare-fun b!5208988 () Bool)

(declare-fun e!3243037 () Bool)

(assert (=> b!5208988 (= e!3243037 call!366653)))

(declare-fun b!5208989 () Bool)

(declare-fun res!2212617 () Bool)

(declare-fun e!3243040 () Bool)

(assert (=> b!5208989 (=> res!2212617 e!3243040)))

(assert (=> b!5208989 (= res!2212617 (not ((_ is Concat!23640) (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292))))))))

(declare-fun e!3243035 () Bool)

(assert (=> b!5208989 (= e!3243035 e!3243040)))

(declare-fun b!5208991 () Bool)

(declare-fun e!3243041 () Bool)

(declare-fun e!3243036 () Bool)

(assert (=> b!5208991 (= e!3243041 e!3243036)))

(declare-fun res!2212618 () Bool)

(assert (=> b!5208991 (= res!2212618 (not (nullable!4964 (reg!15124 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))))))))

(assert (=> b!5208991 (=> (not res!2212618) (not e!3243036))))

(declare-fun bm!366646 () Bool)

(declare-fun call!366652 () Bool)

(assert (=> bm!366646 (= call!366653 call!366652)))

(declare-fun b!5208992 () Bool)

(declare-fun res!2212620 () Bool)

(assert (=> b!5208992 (=> (not res!2212620) (not e!3243038))))

(declare-fun call!366651 () Bool)

(assert (=> b!5208992 (= res!2212620 call!366651)))

(assert (=> b!5208992 (= e!3243035 e!3243038)))

(declare-fun b!5208993 () Bool)

(assert (=> b!5208993 (= e!3243040 e!3243037)))

(declare-fun res!2212621 () Bool)

(assert (=> b!5208993 (=> (not res!2212621) (not e!3243037))))

(assert (=> b!5208993 (= res!2212621 call!366651)))

(declare-fun b!5208994 () Bool)

(assert (=> b!5208994 (= e!3243036 call!366652)))

(declare-fun c!898167 () Bool)

(declare-fun bm!366647 () Bool)

(declare-fun c!898166 () Bool)

(assert (=> bm!366647 (= call!366652 (validRegex!6531 (ite c!898166 (reg!15124 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))) (ite c!898167 (regTwo!30103 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))) (regTwo!30102 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292))))))))))

(declare-fun d!1679807 () Bool)

(declare-fun res!2212619 () Bool)

(declare-fun e!3243039 () Bool)

(assert (=> d!1679807 (=> res!2212619 e!3243039)))

(assert (=> d!1679807 (= res!2212619 ((_ is ElementMatch!14795) (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))))))

(assert (=> d!1679807 (= (validRegex!6531 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))) e!3243039)))

(declare-fun b!5208990 () Bool)

(assert (=> b!5208990 (= e!3243041 e!3243035)))

(assert (=> b!5208990 (= c!898167 ((_ is Union!14795) (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))))))

(declare-fun b!5208995 () Bool)

(assert (=> b!5208995 (= e!3243039 e!3243041)))

(assert (=> b!5208995 (= c!898166 ((_ is Star!14795) (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))))))

(declare-fun bm!366648 () Bool)

(assert (=> bm!366648 (= call!366651 (validRegex!6531 (ite c!898167 (regOne!30103 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))) (regOne!30102 (ite c!897749 (reg!15124 r!7292) (ite c!897750 (regTwo!30103 r!7292) (regTwo!30102 r!7292)))))))))

(assert (= (and d!1679807 (not res!2212619)) b!5208995))

(assert (= (and b!5208995 c!898166) b!5208991))

(assert (= (and b!5208995 (not c!898166)) b!5208990))

(assert (= (and b!5208991 res!2212618) b!5208994))

(assert (= (and b!5208990 c!898167) b!5208992))

(assert (= (and b!5208990 (not c!898167)) b!5208989))

(assert (= (and b!5208992 res!2212620) b!5208987))

(assert (= (and b!5208989 (not res!2212617)) b!5208993))

(assert (= (and b!5208993 res!2212621) b!5208988))

(assert (= (or b!5208987 b!5208988) bm!366646))

(assert (= (or b!5208992 b!5208993) bm!366648))

(assert (= (or b!5208994 bm!366646) bm!366647))

(declare-fun m!6259304 () Bool)

(assert (=> b!5208991 m!6259304))

(declare-fun m!6259306 () Bool)

(assert (=> bm!366647 m!6259306))

(declare-fun m!6259308 () Bool)

(assert (=> bm!366648 m!6259308))

(assert (=> bm!366370 d!1679807))

(declare-fun d!1679809 () Bool)

(assert (=> d!1679809 (= (nullable!4964 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))) (nullableFct!1375 (regOne!30102 (h!67008 (exprs!4679 (h!67009 zl!343))))))))

(declare-fun bs!1210487 () Bool)

(assert (= bs!1210487 d!1679809))

(declare-fun m!6259310 () Bool)

(assert (=> bs!1210487 m!6259310))

(assert (=> b!5207901 d!1679809))

(declare-fun d!1679811 () Bool)

(assert (=> d!1679811 (= (nullable!4964 (reg!15124 (regOne!30103 (regOne!30102 r!7292)))) (nullableFct!1375 (reg!15124 (regOne!30103 (regOne!30102 r!7292)))))))

(declare-fun bs!1210488 () Bool)

(assert (= bs!1210488 d!1679811))

(declare-fun m!6259312 () Bool)

(assert (=> bs!1210488 m!6259312))

(assert (=> b!5207912 d!1679811))

(declare-fun d!1679813 () Bool)

(assert (=> d!1679813 (= ($colon$colon!1273 (exprs!4679 lt!2141743) (ite (or c!897808 c!897807) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (regOne!30103 (regOne!30102 r!7292)))) (Cons!60560 (ite (or c!897808 c!897807) (regTwo!30102 (regOne!30103 (regOne!30102 r!7292))) (regOne!30103 (regOne!30102 r!7292))) (exprs!4679 lt!2141743)))))

(assert (=> bm!366404 d!1679813))

(declare-fun b!5208996 () Bool)

(declare-fun c!898172 () Bool)

(assert (=> b!5208996 (= c!898172 ((_ is Star!14795) (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun e!3243047 () (InoxSet Context!8358))

(declare-fun e!3243042 () (InoxSet Context!8358))

(assert (=> b!5208996 (= e!3243047 e!3243042)))

(declare-fun d!1679815 () Bool)

(declare-fun c!898171 () Bool)

(assert (=> d!1679815 (= c!898171 (and ((_ is ElementMatch!14795) (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (= (c!897710 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (h!67010 s!2326))))))

(declare-fun e!3243045 () (InoxSet Context!8358))

(assert (=> d!1679815 (= (derivationStepZipperDown!243 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))) (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (h!67010 s!2326)) e!3243045)))

(declare-fun b!5208997 () Bool)

(assert (=> b!5208997 (= e!3243042 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5208998 () Bool)

(declare-fun call!366654 () (InoxSet Context!8358))

(assert (=> b!5208998 (= e!3243042 call!366654)))

(declare-fun b!5208999 () Bool)

(declare-fun e!3243046 () (InoxSet Context!8358))

(assert (=> b!5208999 (= e!3243046 e!3243047)))

(declare-fun c!898169 () Bool)

(assert (=> b!5208999 (= c!898169 ((_ is Concat!23640) (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun bm!366649 () Bool)

(declare-fun call!366655 () (InoxSet Context!8358))

(assert (=> bm!366649 (= call!366654 call!366655)))

(declare-fun b!5209000 () Bool)

(declare-fun call!366659 () (InoxSet Context!8358))

(assert (=> b!5209000 (= e!3243046 ((_ map or) call!366659 call!366655))))

(declare-fun c!898170 () Bool)

(declare-fun bm!366650 () Bool)

(declare-fun call!366657 () List!60684)

(assert (=> bm!366650 (= call!366657 ($colon$colon!1273 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))) (ite (or c!898170 c!898169) (regTwo!30102 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))))

(declare-fun b!5209001 () Bool)

(declare-fun e!3243044 () (InoxSet Context!8358))

(declare-fun call!366658 () (InoxSet Context!8358))

(assert (=> b!5209001 (= e!3243044 ((_ map or) call!366659 call!366658))))

(declare-fun b!5209002 () Bool)

(assert (=> b!5209002 (= e!3243047 call!366654)))

(declare-fun bm!366651 () Bool)

(declare-fun call!366656 () List!60684)

(assert (=> bm!366651 (= call!366656 call!366657)))

(declare-fun c!898168 () Bool)

(declare-fun bm!366652 () Bool)

(assert (=> bm!366652 (= call!366658 (derivationStepZipperDown!243 (ite c!898168 (regTwo!30103 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (ite c!898170 (regTwo!30102 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (ite c!898169 (regOne!30102 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (reg!15124 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))) (ite (or c!898168 c!898170) (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (Context!8359 call!366656)) (h!67010 s!2326)))))

(declare-fun b!5209003 () Bool)

(declare-fun e!3243043 () Bool)

(assert (=> b!5209003 (= e!3243043 (nullable!4964 (regOne!30102 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))))

(declare-fun b!5209004 () Bool)

(assert (=> b!5209004 (= c!898170 e!3243043)))

(declare-fun res!2212622 () Bool)

(assert (=> b!5209004 (=> (not res!2212622) (not e!3243043))))

(assert (=> b!5209004 (= res!2212622 ((_ is Concat!23640) (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))

(assert (=> b!5209004 (= e!3243044 e!3243046)))

(declare-fun bm!366653 () Bool)

(assert (=> bm!366653 (= call!366655 call!366658)))

(declare-fun b!5209005 () Bool)

(assert (=> b!5209005 (= e!3243045 e!3243044)))

(assert (=> b!5209005 (= c!898168 ((_ is Union!14795) (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))

(declare-fun b!5209006 () Bool)

(assert (=> b!5209006 (= e!3243045 (store ((as const (Array Context!8358 Bool)) false) (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) true))))

(declare-fun bm!366654 () Bool)

(assert (=> bm!366654 (= call!366659 (derivationStepZipperDown!243 (ite c!898168 (regOne!30103 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (regOne!30102 (h!67008 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))) (ite c!898168 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (Context!8359 call!366657)) (h!67010 s!2326)))))

(assert (= (and d!1679815 c!898171) b!5209006))

(assert (= (and d!1679815 (not c!898171)) b!5209005))

(assert (= (and b!5209005 c!898168) b!5209001))

(assert (= (and b!5209005 (not c!898168)) b!5209004))

(assert (= (and b!5209004 res!2212622) b!5209003))

(assert (= (and b!5209004 c!898170) b!5209000))

(assert (= (and b!5209004 (not c!898170)) b!5208999))

(assert (= (and b!5208999 c!898169) b!5209002))

(assert (= (and b!5208999 (not c!898169)) b!5208996))

(assert (= (and b!5208996 c!898172) b!5208998))

(assert (= (and b!5208996 (not c!898172)) b!5208997))

(assert (= (or b!5209002 b!5208998) bm!366651))

(assert (= (or b!5209002 b!5208998) bm!366649))

(assert (= (or b!5209000 bm!366651) bm!366650))

(assert (= (or b!5209000 bm!366649) bm!366653))

(assert (= (or b!5209001 bm!366653) bm!366652))

(assert (= (or b!5209001 b!5209000) bm!366654))

(declare-fun m!6259314 () Bool)

(assert (=> b!5209003 m!6259314))

(declare-fun m!6259316 () Bool)

(assert (=> bm!366652 m!6259316))

(declare-fun m!6259318 () Bool)

(assert (=> bm!366654 m!6259318))

(declare-fun m!6259320 () Bool)

(assert (=> bm!366650 m!6259320))

(declare-fun m!6259322 () Bool)

(assert (=> b!5209006 m!6259322))

(assert (=> bm!366437 d!1679815))

(declare-fun d!1679817 () Bool)

(declare-fun c!898173 () Bool)

(assert (=> d!1679817 (= c!898173 (isEmpty!32473 (tail!10262 (t!373845 s!2326))))))

(declare-fun e!3243048 () Bool)

(assert (=> d!1679817 (= (matchZipper!1039 (derivationStepZipper!1067 ((_ map or) lt!2141735 lt!2141742) (head!11165 (t!373845 s!2326))) (tail!10262 (t!373845 s!2326))) e!3243048)))

(declare-fun b!5209007 () Bool)

(assert (=> b!5209007 (= e!3243048 (nullableZipper!1223 (derivationStepZipper!1067 ((_ map or) lt!2141735 lt!2141742) (head!11165 (t!373845 s!2326)))))))

(declare-fun b!5209008 () Bool)

(assert (=> b!5209008 (= e!3243048 (matchZipper!1039 (derivationStepZipper!1067 (derivationStepZipper!1067 ((_ map or) lt!2141735 lt!2141742) (head!11165 (t!373845 s!2326))) (head!11165 (tail!10262 (t!373845 s!2326)))) (tail!10262 (tail!10262 (t!373845 s!2326)))))))

(assert (= (and d!1679817 c!898173) b!5209007))

(assert (= (and d!1679817 (not c!898173)) b!5209008))

(assert (=> d!1679817 m!6258130))

(assert (=> d!1679817 m!6258738))

(assert (=> b!5209007 m!6258138))

(declare-fun m!6259324 () Bool)

(assert (=> b!5209007 m!6259324))

(assert (=> b!5209008 m!6258130))

(assert (=> b!5209008 m!6258742))

(assert (=> b!5209008 m!6258138))

(assert (=> b!5209008 m!6258742))

(declare-fun m!6259326 () Bool)

(assert (=> b!5209008 m!6259326))

(assert (=> b!5209008 m!6258130))

(assert (=> b!5209008 m!6258746))

(assert (=> b!5209008 m!6259326))

(assert (=> b!5209008 m!6258746))

(declare-fun m!6259328 () Bool)

(assert (=> b!5209008 m!6259328))

(assert (=> b!5207498 d!1679817))

(declare-fun bs!1210489 () Bool)

(declare-fun d!1679819 () Bool)

(assert (= bs!1210489 (and d!1679819 b!5207273)))

(declare-fun lambda!261162 () Int)

(assert (=> bs!1210489 (= (= (head!11165 (t!373845 s!2326)) (h!67010 s!2326)) (= lambda!261162 lambda!261051))))

(declare-fun bs!1210490 () Bool)

(assert (= bs!1210490 (and d!1679819 d!1679549)))

(assert (=> bs!1210490 (= lambda!261162 lambda!261126)))

(declare-fun bs!1210491 () Bool)

(assert (= bs!1210491 (and d!1679819 d!1679711)))

(assert (=> bs!1210491 (= lambda!261162 lambda!261151)))

(assert (=> d!1679819 true))

(assert (=> d!1679819 (= (derivationStepZipper!1067 ((_ map or) lt!2141735 lt!2141742) (head!11165 (t!373845 s!2326))) (flatMap!522 ((_ map or) lt!2141735 lt!2141742) lambda!261162))))

(declare-fun bs!1210492 () Bool)

(assert (= bs!1210492 d!1679819))

(declare-fun m!6259330 () Bool)

(assert (=> bs!1210492 m!6259330))

(assert (=> b!5207498 d!1679819))

(assert (=> b!5207498 d!1679553))

(assert (=> b!5207498 d!1679555))

(declare-fun d!1679821 () Bool)

(assert (=> d!1679821 (= (isEmpty!32469 (t!373843 (unfocusZipperList!237 zl!343))) ((_ is Nil!60560) (t!373843 (unfocusZipperList!237 zl!343))))))

(assert (=> b!5207856 d!1679821))

(declare-fun b!5209009 () Bool)

(declare-fun e!3243049 () Bool)

(assert (=> b!5209009 (= e!3243049 (nullable!4964 (h!67008 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))))))

(declare-fun b!5209010 () Bool)

(declare-fun e!3243050 () (InoxSet Context!8358))

(declare-fun call!366660 () (InoxSet Context!8358))

(assert (=> b!5209010 (= e!3243050 call!366660)))

(declare-fun b!5209011 () Bool)

(assert (=> b!5209011 (= e!3243050 ((as const (Array Context!8358 Bool)) false))))

(declare-fun e!3243051 () (InoxSet Context!8358))

(declare-fun b!5209012 () Bool)

(assert (=> b!5209012 (= e!3243051 ((_ map or) call!366660 (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))) (h!67010 s!2326))))))

(declare-fun bm!366655 () Bool)

(assert (=> bm!366655 (= call!366660 (derivationStepZipperDown!243 (h!67008 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))) (Context!8359 (t!373843 (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343))))))))))) (h!67010 s!2326)))))

(declare-fun d!1679823 () Bool)

(declare-fun c!898174 () Bool)

(assert (=> d!1679823 (= c!898174 e!3243049)))

(declare-fun res!2212623 () Bool)

(assert (=> d!1679823 (=> (not res!2212623) (not e!3243049))))

(assert (=> d!1679823 (= res!2212623 ((_ is Cons!60560) (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))))

(assert (=> d!1679823 (= (derivationStepZipperUp!167 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))) (h!67010 s!2326)) e!3243051)))

(declare-fun b!5209013 () Bool)

(assert (=> b!5209013 (= e!3243051 e!3243050)))

(declare-fun c!898175 () Bool)

(assert (=> b!5209013 (= c!898175 ((_ is Cons!60560) (exprs!4679 (Context!8359 (t!373843 (exprs!4679 (Context!8359 (Cons!60560 (h!67008 (exprs!4679 (h!67009 zl!343))) (t!373843 (exprs!4679 (h!67009 zl!343)))))))))))))

(assert (= (and d!1679823 res!2212623) b!5209009))

(assert (= (and d!1679823 c!898174) b!5209012))

(assert (= (and d!1679823 (not c!898174)) b!5209013))

(assert (= (and b!5209013 c!898175) b!5209010))

(assert (= (and b!5209013 (not c!898175)) b!5209011))

(assert (= (or b!5209012 b!5209010) bm!366655))

(declare-fun m!6259332 () Bool)

(assert (=> b!5209009 m!6259332))

(declare-fun m!6259334 () Bool)

(assert (=> b!5209012 m!6259334))

(declare-fun m!6259336 () Bool)

(assert (=> bm!366655 m!6259336))

(assert (=> b!5207882 d!1679823))

(declare-fun b!5209014 () Bool)

(declare-fun e!3243055 () Bool)

(declare-fun call!366663 () Bool)

(assert (=> b!5209014 (= e!3243055 call!366663)))

(declare-fun b!5209015 () Bool)

(declare-fun e!3243054 () Bool)

(assert (=> b!5209015 (= e!3243054 call!366663)))

(declare-fun b!5209016 () Bool)

(declare-fun res!2212624 () Bool)

(declare-fun e!3243057 () Bool)

(assert (=> b!5209016 (=> res!2212624 e!3243057)))

(assert (=> b!5209016 (= res!2212624 (not ((_ is Concat!23640) lt!2141827)))))

(declare-fun e!3243052 () Bool)

(assert (=> b!5209016 (= e!3243052 e!3243057)))

(declare-fun b!5209018 () Bool)

(declare-fun e!3243058 () Bool)

(declare-fun e!3243053 () Bool)

(assert (=> b!5209018 (= e!3243058 e!3243053)))

(declare-fun res!2212625 () Bool)

(assert (=> b!5209018 (= res!2212625 (not (nullable!4964 (reg!15124 lt!2141827))))))

(assert (=> b!5209018 (=> (not res!2212625) (not e!3243053))))

(declare-fun bm!366656 () Bool)

(declare-fun call!366662 () Bool)

(assert (=> bm!366656 (= call!366663 call!366662)))

(declare-fun b!5209019 () Bool)

(declare-fun res!2212627 () Bool)

(assert (=> b!5209019 (=> (not res!2212627) (not e!3243055))))

(declare-fun call!366661 () Bool)

(assert (=> b!5209019 (= res!2212627 call!366661)))

(assert (=> b!5209019 (= e!3243052 e!3243055)))

(declare-fun b!5209020 () Bool)

(assert (=> b!5209020 (= e!3243057 e!3243054)))

(declare-fun res!2212628 () Bool)

(assert (=> b!5209020 (=> (not res!2212628) (not e!3243054))))

(assert (=> b!5209020 (= res!2212628 call!366661)))

(declare-fun b!5209021 () Bool)

(assert (=> b!5209021 (= e!3243053 call!366662)))

(declare-fun c!898176 () Bool)

(declare-fun bm!366657 () Bool)

(declare-fun c!898177 () Bool)

(assert (=> bm!366657 (= call!366662 (validRegex!6531 (ite c!898176 (reg!15124 lt!2141827) (ite c!898177 (regTwo!30103 lt!2141827) (regTwo!30102 lt!2141827)))))))

(declare-fun d!1679825 () Bool)

(declare-fun res!2212626 () Bool)

(declare-fun e!3243056 () Bool)

(assert (=> d!1679825 (=> res!2212626 e!3243056)))

(assert (=> d!1679825 (= res!2212626 ((_ is ElementMatch!14795) lt!2141827))))

(assert (=> d!1679825 (= (validRegex!6531 lt!2141827) e!3243056)))

(declare-fun b!5209017 () Bool)

(assert (=> b!5209017 (= e!3243058 e!3243052)))

(assert (=> b!5209017 (= c!898177 ((_ is Union!14795) lt!2141827))))

(declare-fun b!5209022 () Bool)

(assert (=> b!5209022 (= e!3243056 e!3243058)))

(assert (=> b!5209022 (= c!898176 ((_ is Star!14795) lt!2141827))))

(declare-fun bm!366658 () Bool)

(assert (=> bm!366658 (= call!366661 (validRegex!6531 (ite c!898177 (regOne!30103 lt!2141827) (regOne!30102 lt!2141827))))))

(assert (= (and d!1679825 (not res!2212626)) b!5209022))

(assert (= (and b!5209022 c!898176) b!5209018))

(assert (= (and b!5209022 (not c!898176)) b!5209017))

(assert (= (and b!5209018 res!2212625) b!5209021))

(assert (= (and b!5209017 c!898177) b!5209019))

(assert (= (and b!5209017 (not c!898177)) b!5209016))

(assert (= (and b!5209019 res!2212627) b!5209014))

(assert (= (and b!5209016 (not res!2212624)) b!5209020))

(assert (= (and b!5209020 res!2212628) b!5209015))

(assert (= (or b!5209014 b!5209015) bm!366656))

(assert (= (or b!5209019 b!5209020) bm!366658))

(assert (= (or b!5209021 bm!366656) bm!366657))

(declare-fun m!6259338 () Bool)

(assert (=> b!5209018 m!6259338))

(declare-fun m!6259340 () Bool)

(assert (=> bm!366657 m!6259340))

(declare-fun m!6259342 () Bool)

(assert (=> bm!366658 m!6259342))

(assert (=> d!1679425 d!1679825))

(declare-fun d!1679827 () Bool)

(declare-fun res!2212629 () Bool)

(declare-fun e!3243059 () Bool)

(assert (=> d!1679827 (=> res!2212629 e!3243059)))

(assert (=> d!1679827 (= res!2212629 ((_ is Nil!60560) (exprs!4679 (h!67009 zl!343))))))

(assert (=> d!1679827 (= (forall!14231 (exprs!4679 (h!67009 zl!343)) lambda!261107) e!3243059)))

(declare-fun b!5209023 () Bool)

(declare-fun e!3243060 () Bool)

(assert (=> b!5209023 (= e!3243059 e!3243060)))

(declare-fun res!2212630 () Bool)

(assert (=> b!5209023 (=> (not res!2212630) (not e!3243060))))

(assert (=> b!5209023 (= res!2212630 (dynLambda!23924 lambda!261107 (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5209024 () Bool)

(assert (=> b!5209024 (= e!3243060 (forall!14231 (t!373843 (exprs!4679 (h!67009 zl!343))) lambda!261107))))

(assert (= (and d!1679827 (not res!2212629)) b!5209023))

(assert (= (and b!5209023 res!2212630) b!5209024))

(declare-fun b_lambda!201507 () Bool)

(assert (=> (not b_lambda!201507) (not b!5209023)))

(declare-fun m!6259344 () Bool)

(assert (=> b!5209023 m!6259344))

(declare-fun m!6259346 () Bool)

(assert (=> b!5209024 m!6259346))

(assert (=> d!1679425 d!1679827))

(declare-fun d!1679829 () Bool)

(declare-fun res!2212631 () Bool)

(declare-fun e!3243061 () Bool)

(assert (=> d!1679829 (=> res!2212631 e!3243061)))

(assert (=> d!1679829 (= res!2212631 ((_ is Nil!60560) (exprs!4679 (h!67009 zl!343))))))

(assert (=> d!1679829 (= (forall!14231 (exprs!4679 (h!67009 zl!343)) lambda!261095) e!3243061)))

(declare-fun b!5209025 () Bool)

(declare-fun e!3243062 () Bool)

(assert (=> b!5209025 (= e!3243061 e!3243062)))

(declare-fun res!2212632 () Bool)

(assert (=> b!5209025 (=> (not res!2212632) (not e!3243062))))

(assert (=> b!5209025 (= res!2212632 (dynLambda!23924 lambda!261095 (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun b!5209026 () Bool)

(assert (=> b!5209026 (= e!3243062 (forall!14231 (t!373843 (exprs!4679 (h!67009 zl!343))) lambda!261095))))

(assert (= (and d!1679829 (not res!2212631)) b!5209025))

(assert (= (and b!5209025 res!2212632) b!5209026))

(declare-fun b_lambda!201509 () Bool)

(assert (=> (not b_lambda!201509) (not b!5209025)))

(declare-fun m!6259348 () Bool)

(assert (=> b!5209025 m!6259348))

(declare-fun m!6259350 () Bool)

(assert (=> b!5209026 m!6259350))

(assert (=> d!1679403 d!1679829))

(assert (=> b!5207819 d!1679507))

(assert (=> b!5207819 d!1679509))

(declare-fun d!1679831 () Bool)

(assert (=> d!1679831 (= (Exists!1976 (ite c!897852 lambda!261084 lambda!261085)) (choose!38718 (ite c!897852 lambda!261084 lambda!261085)))))

(declare-fun bs!1210493 () Bool)

(assert (= bs!1210493 d!1679831))

(declare-fun m!6259352 () Bool)

(assert (=> bs!1210493 m!6259352))

(assert (=> bm!366430 d!1679831))

(declare-fun d!1679833 () Bool)

(assert (=> d!1679833 (= (isEmptyExpr!759 lt!2141827) ((_ is EmptyExpr!14795) lt!2141827))))

(assert (=> b!5207982 d!1679833))

(declare-fun d!1679835 () Bool)

(declare-fun res!2212633 () Bool)

(declare-fun e!3243063 () Bool)

(assert (=> d!1679835 (=> res!2212633 e!3243063)))

(assert (=> d!1679835 (= res!2212633 ((_ is Nil!60560) lt!2141800))))

(assert (=> d!1679835 (= (forall!14231 lt!2141800 lambda!261091) e!3243063)))

(declare-fun b!5209027 () Bool)

(declare-fun e!3243064 () Bool)

(assert (=> b!5209027 (= e!3243063 e!3243064)))

(declare-fun res!2212634 () Bool)

(assert (=> b!5209027 (=> (not res!2212634) (not e!3243064))))

(assert (=> b!5209027 (= res!2212634 (dynLambda!23924 lambda!261091 (h!67008 lt!2141800)))))

(declare-fun b!5209028 () Bool)

(assert (=> b!5209028 (= e!3243064 (forall!14231 (t!373843 lt!2141800) lambda!261091))))

(assert (= (and d!1679835 (not res!2212633)) b!5209027))

(assert (= (and b!5209027 res!2212634) b!5209028))

(declare-fun b_lambda!201511 () Bool)

(assert (=> (not b_lambda!201511) (not b!5209027)))

(declare-fun m!6259354 () Bool)

(assert (=> b!5209027 m!6259354))

(declare-fun m!6259356 () Bool)

(assert (=> b!5209028 m!6259356))

(assert (=> d!1679383 d!1679835))

(assert (=> b!5207938 d!1679601))

(declare-fun bs!1210494 () Bool)

(declare-fun d!1679837 () Bool)

(assert (= bs!1210494 (and d!1679837 d!1679647)))

(declare-fun lambda!261163 () Int)

(assert (=> bs!1210494 (= lambda!261163 lambda!261146)))

(declare-fun bs!1210495 () Bool)

(assert (= bs!1210495 (and d!1679837 d!1679765)))

(assert (=> bs!1210495 (= lambda!261163 lambda!261156)))

(assert (=> d!1679837 (= (nullableZipper!1223 lt!2141735) (exists!1960 lt!2141735 lambda!261163))))

(declare-fun bs!1210496 () Bool)

(assert (= bs!1210496 d!1679837))

(declare-fun m!6259358 () Bool)

(assert (=> bs!1210496 m!6259358))

(assert (=> b!5207495 d!1679837))

(declare-fun d!1679839 () Bool)

(assert (=> d!1679839 (= (isEmpty!32469 (exprs!4679 (h!67009 zl!343))) ((_ is Nil!60560) (exprs!4679 (h!67009 zl!343))))))

(assert (=> b!5207980 d!1679839))

(declare-fun d!1679841 () Bool)

(assert (=> d!1679841 true))

(assert (=> d!1679841 true))

(declare-fun res!2212635 () Bool)

(assert (=> d!1679841 (= (choose!38718 lambda!261050) res!2212635)))

(assert (=> d!1679415 d!1679841))

(assert (=> bs!1210261 d!1679399))

(declare-fun d!1679843 () Bool)

(assert (=> d!1679843 (= (isEmpty!32469 (unfocusZipperList!237 zl!343)) ((_ is Nil!60560) (unfocusZipperList!237 zl!343)))))

(assert (=> b!5207860 d!1679843))

(declare-fun b!5209029 () Bool)

(declare-fun c!898182 () Bool)

(assert (=> b!5209029 (= c!898182 ((_ is Star!14795) (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))))))

(declare-fun e!3243070 () (InoxSet Context!8358))

(declare-fun e!3243065 () (InoxSet Context!8358))

(assert (=> b!5209029 (= e!3243070 e!3243065)))

(declare-fun c!898181 () Bool)

(declare-fun d!1679845 () Bool)

(assert (=> d!1679845 (= c!898181 (and ((_ is ElementMatch!14795) (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))) (= (c!897710 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))) (h!67010 s!2326))))))

(declare-fun e!3243068 () (InoxSet Context!8358))

(assert (=> d!1679845 (= (derivationStepZipperDown!243 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))) (ite c!897815 lt!2141743 (Context!8359 call!366417)) (h!67010 s!2326)) e!3243068)))

(declare-fun b!5209030 () Bool)

(assert (=> b!5209030 (= e!3243065 ((as const (Array Context!8358 Bool)) false))))

(declare-fun b!5209031 () Bool)

(declare-fun call!366664 () (InoxSet Context!8358))

(assert (=> b!5209031 (= e!3243065 call!366664)))

(declare-fun b!5209032 () Bool)

(declare-fun e!3243069 () (InoxSet Context!8358))

(assert (=> b!5209032 (= e!3243069 e!3243070)))

(declare-fun c!898179 () Bool)

(assert (=> b!5209032 (= c!898179 ((_ is Concat!23640) (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))))))

(declare-fun bm!366659 () Bool)

(declare-fun call!366665 () (InoxSet Context!8358))

(assert (=> bm!366659 (= call!366664 call!366665)))

(declare-fun b!5209033 () Bool)

(declare-fun call!366669 () (InoxSet Context!8358))

(assert (=> b!5209033 (= e!3243069 ((_ map or) call!366669 call!366665))))

(declare-fun call!366667 () List!60684)

(declare-fun c!898180 () Bool)

(declare-fun bm!366660 () Bool)

(assert (=> bm!366660 (= call!366667 ($colon$colon!1273 (exprs!4679 (ite c!897815 lt!2141743 (Context!8359 call!366417))) (ite (or c!898180 c!898179) (regTwo!30102 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))) (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))))))))

(declare-fun b!5209034 () Bool)

(declare-fun e!3243067 () (InoxSet Context!8358))

(declare-fun call!366668 () (InoxSet Context!8358))

(assert (=> b!5209034 (= e!3243067 ((_ map or) call!366669 call!366668))))

(declare-fun b!5209035 () Bool)

(assert (=> b!5209035 (= e!3243070 call!366664)))

(declare-fun bm!366661 () Bool)

(declare-fun call!366666 () List!60684)

(assert (=> bm!366661 (= call!366666 call!366667)))

(declare-fun c!898178 () Bool)

(declare-fun bm!366662 () Bool)

(assert (=> bm!366662 (= call!366668 (derivationStepZipperDown!243 (ite c!898178 (regTwo!30103 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))) (ite c!898180 (regTwo!30102 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))) (ite c!898179 (regOne!30102 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))) (reg!15124 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))))))) (ite (or c!898178 c!898180) (ite c!897815 lt!2141743 (Context!8359 call!366417)) (Context!8359 call!366666)) (h!67010 s!2326)))))

(declare-fun b!5209036 () Bool)

(declare-fun e!3243066 () Bool)

(assert (=> b!5209036 (= e!3243066 (nullable!4964 (regOne!30102 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))))))))

(declare-fun b!5209037 () Bool)

(assert (=> b!5209037 (= c!898180 e!3243066)))

(declare-fun res!2212636 () Bool)

(assert (=> b!5209037 (=> (not res!2212636) (not e!3243066))))

(assert (=> b!5209037 (= res!2212636 ((_ is Concat!23640) (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))))))

(assert (=> b!5209037 (= e!3243067 e!3243069)))

(declare-fun bm!366663 () Bool)

(assert (=> bm!366663 (= call!366665 call!366668)))

(declare-fun b!5209038 () Bool)

(assert (=> b!5209038 (= e!3243068 e!3243067)))

(assert (=> b!5209038 (= c!898178 ((_ is Union!14795) (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))))))

(declare-fun b!5209039 () Bool)

(assert (=> b!5209039 (= e!3243068 (store ((as const (Array Context!8358 Bool)) false) (ite c!897815 lt!2141743 (Context!8359 call!366417)) true))))

(declare-fun bm!366664 () Bool)

(assert (=> bm!366664 (= call!366669 (derivationStepZipperDown!243 (ite c!898178 (regOne!30103 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292))))) (regOne!30102 (ite c!897815 (regOne!30103 (regTwo!30103 (regOne!30102 r!7292))) (regOne!30102 (regTwo!30103 (regOne!30102 r!7292)))))) (ite c!898178 (ite c!897815 lt!2141743 (Context!8359 call!366417)) (Context!8359 call!366667)) (h!67010 s!2326)))))

(assert (= (and d!1679845 c!898181) b!5209039))

(assert (= (and d!1679845 (not c!898181)) b!5209038))

(assert (= (and b!5209038 c!898178) b!5209034))

(assert (= (and b!5209038 (not c!898178)) b!5209037))

(assert (= (and b!5209037 res!2212636) b!5209036))

(assert (= (and b!5209037 c!898180) b!5209033))

(assert (= (and b!5209037 (not c!898180)) b!5209032))

(assert (= (and b!5209032 c!898179) b!5209035))

(assert (= (and b!5209032 (not c!898179)) b!5209029))

(assert (= (and b!5209029 c!898182) b!5209031))

(assert (= (and b!5209029 (not c!898182)) b!5209030))

(assert (= (or b!5209035 b!5209031) bm!366661))

(assert (= (or b!5209035 b!5209031) bm!366659))

(assert (= (or b!5209033 bm!366661) bm!366660))

(assert (= (or b!5209033 bm!366659) bm!366663))

(assert (= (or b!5209034 bm!366663) bm!366662))

(assert (= (or b!5209034 b!5209033) bm!366664))

(declare-fun m!6259360 () Bool)

(assert (=> b!5209036 m!6259360))

(declare-fun m!6259362 () Bool)

(assert (=> bm!366662 m!6259362))

(declare-fun m!6259364 () Bool)

(assert (=> bm!366664 m!6259364))

(declare-fun m!6259366 () Bool)

(assert (=> bm!366660 m!6259366))

(declare-fun m!6259368 () Bool)

(assert (=> b!5209039 m!6259368))

(assert (=> bm!366414 d!1679845))

(declare-fun b!5209043 () Bool)

(declare-fun e!3243071 () Bool)

(declare-fun tp!1460804 () Bool)

(declare-fun tp!1460806 () Bool)

(assert (=> b!5209043 (= e!3243071 (and tp!1460804 tp!1460806))))

(assert (=> b!5208010 (= tp!1460592 e!3243071)))

(declare-fun b!5209041 () Bool)

(declare-fun tp!1460803 () Bool)

(declare-fun tp!1460805 () Bool)

(assert (=> b!5209041 (= e!3243071 (and tp!1460803 tp!1460805))))

(declare-fun b!5209040 () Bool)

(assert (=> b!5209040 (= e!3243071 tp_is_empty!38843)))

(declare-fun b!5209042 () Bool)

(declare-fun tp!1460802 () Bool)

(assert (=> b!5209042 (= e!3243071 tp!1460802)))

(assert (= (and b!5208010 ((_ is ElementMatch!14795) (regOne!30103 (regOne!30103 r!7292)))) b!5209040))

(assert (= (and b!5208010 ((_ is Concat!23640) (regOne!30103 (regOne!30103 r!7292)))) b!5209041))

(assert (= (and b!5208010 ((_ is Star!14795) (regOne!30103 (regOne!30103 r!7292)))) b!5209042))

(assert (= (and b!5208010 ((_ is Union!14795) (regOne!30103 (regOne!30103 r!7292)))) b!5209043))

(declare-fun b!5209047 () Bool)

(declare-fun e!3243072 () Bool)

(declare-fun tp!1460809 () Bool)

(declare-fun tp!1460811 () Bool)

(assert (=> b!5209047 (= e!3243072 (and tp!1460809 tp!1460811))))

(assert (=> b!5208010 (= tp!1460594 e!3243072)))

(declare-fun b!5209045 () Bool)

(declare-fun tp!1460808 () Bool)

(declare-fun tp!1460810 () Bool)

(assert (=> b!5209045 (= e!3243072 (and tp!1460808 tp!1460810))))

(declare-fun b!5209044 () Bool)

(assert (=> b!5209044 (= e!3243072 tp_is_empty!38843)))

(declare-fun b!5209046 () Bool)

(declare-fun tp!1460807 () Bool)

(assert (=> b!5209046 (= e!3243072 tp!1460807)))

(assert (= (and b!5208010 ((_ is ElementMatch!14795) (regTwo!30103 (regOne!30103 r!7292)))) b!5209044))

(assert (= (and b!5208010 ((_ is Concat!23640) (regTwo!30103 (regOne!30103 r!7292)))) b!5209045))

(assert (= (and b!5208010 ((_ is Star!14795) (regTwo!30103 (regOne!30103 r!7292)))) b!5209046))

(assert (= (and b!5208010 ((_ is Union!14795) (regTwo!30103 (regOne!30103 r!7292)))) b!5209047))

(declare-fun b!5209051 () Bool)

(declare-fun e!3243073 () Bool)

(declare-fun tp!1460814 () Bool)

(declare-fun tp!1460816 () Bool)

(assert (=> b!5209051 (= e!3243073 (and tp!1460814 tp!1460816))))

(assert (=> b!5208009 (= tp!1460590 e!3243073)))

(declare-fun b!5209049 () Bool)

(declare-fun tp!1460813 () Bool)

(declare-fun tp!1460815 () Bool)

(assert (=> b!5209049 (= e!3243073 (and tp!1460813 tp!1460815))))

(declare-fun b!5209048 () Bool)

(assert (=> b!5209048 (= e!3243073 tp_is_empty!38843)))

(declare-fun b!5209050 () Bool)

(declare-fun tp!1460812 () Bool)

(assert (=> b!5209050 (= e!3243073 tp!1460812)))

(assert (= (and b!5208009 ((_ is ElementMatch!14795) (reg!15124 (regOne!30103 r!7292)))) b!5209048))

(assert (= (and b!5208009 ((_ is Concat!23640) (reg!15124 (regOne!30103 r!7292)))) b!5209049))

(assert (= (and b!5208009 ((_ is Star!14795) (reg!15124 (regOne!30103 r!7292)))) b!5209050))

(assert (= (and b!5208009 ((_ is Union!14795) (reg!15124 (regOne!30103 r!7292)))) b!5209051))

(declare-fun b!5209052 () Bool)

(declare-fun e!3243074 () Bool)

(declare-fun tp!1460817 () Bool)

(declare-fun tp!1460818 () Bool)

(assert (=> b!5209052 (= e!3243074 (and tp!1460817 tp!1460818))))

(assert (=> b!5208032 (= tp!1460621 e!3243074)))

(assert (= (and b!5208032 ((_ is Cons!60560) (exprs!4679 setElem!33070))) b!5209052))

(declare-fun b!5209056 () Bool)

(declare-fun e!3243075 () Bool)

(declare-fun tp!1460821 () Bool)

(declare-fun tp!1460823 () Bool)

(assert (=> b!5209056 (= e!3243075 (and tp!1460821 tp!1460823))))

(assert (=> b!5208018 (= tp!1460602 e!3243075)))

(declare-fun b!5209054 () Bool)

(declare-fun tp!1460820 () Bool)

(declare-fun tp!1460822 () Bool)

(assert (=> b!5209054 (= e!3243075 (and tp!1460820 tp!1460822))))

(declare-fun b!5209053 () Bool)

(assert (=> b!5209053 (= e!3243075 tp_is_empty!38843)))

(declare-fun b!5209055 () Bool)

(declare-fun tp!1460819 () Bool)

(assert (=> b!5209055 (= e!3243075 tp!1460819)))

(assert (= (and b!5208018 ((_ is ElementMatch!14795) (regOne!30103 (regOne!30102 r!7292)))) b!5209053))

(assert (= (and b!5208018 ((_ is Concat!23640) (regOne!30103 (regOne!30102 r!7292)))) b!5209054))

(assert (= (and b!5208018 ((_ is Star!14795) (regOne!30103 (regOne!30102 r!7292)))) b!5209055))

(assert (= (and b!5208018 ((_ is Union!14795) (regOne!30103 (regOne!30102 r!7292)))) b!5209056))

(declare-fun b!5209060 () Bool)

(declare-fun e!3243076 () Bool)

(declare-fun tp!1460826 () Bool)

(declare-fun tp!1460828 () Bool)

(assert (=> b!5209060 (= e!3243076 (and tp!1460826 tp!1460828))))

(assert (=> b!5208018 (= tp!1460604 e!3243076)))

(declare-fun b!5209058 () Bool)

(declare-fun tp!1460825 () Bool)

(declare-fun tp!1460827 () Bool)

(assert (=> b!5209058 (= e!3243076 (and tp!1460825 tp!1460827))))

(declare-fun b!5209057 () Bool)

(assert (=> b!5209057 (= e!3243076 tp_is_empty!38843)))

(declare-fun b!5209059 () Bool)

(declare-fun tp!1460824 () Bool)

(assert (=> b!5209059 (= e!3243076 tp!1460824)))

(assert (= (and b!5208018 ((_ is ElementMatch!14795) (regTwo!30103 (regOne!30102 r!7292)))) b!5209057))

(assert (= (and b!5208018 ((_ is Concat!23640) (regTwo!30103 (regOne!30102 r!7292)))) b!5209058))

(assert (= (and b!5208018 ((_ is Star!14795) (regTwo!30103 (regOne!30102 r!7292)))) b!5209059))

(assert (= (and b!5208018 ((_ is Union!14795) (regTwo!30103 (regOne!30102 r!7292)))) b!5209060))

(declare-fun b!5209064 () Bool)

(declare-fun e!3243077 () Bool)

(declare-fun tp!1460831 () Bool)

(declare-fun tp!1460833 () Bool)

(assert (=> b!5209064 (= e!3243077 (and tp!1460831 tp!1460833))))

(assert (=> b!5208008 (= tp!1460591 e!3243077)))

(declare-fun b!5209062 () Bool)

(declare-fun tp!1460830 () Bool)

(declare-fun tp!1460832 () Bool)

(assert (=> b!5209062 (= e!3243077 (and tp!1460830 tp!1460832))))

(declare-fun b!5209061 () Bool)

(assert (=> b!5209061 (= e!3243077 tp_is_empty!38843)))

(declare-fun b!5209063 () Bool)

(declare-fun tp!1460829 () Bool)

(assert (=> b!5209063 (= e!3243077 tp!1460829)))

(assert (= (and b!5208008 ((_ is ElementMatch!14795) (regOne!30102 (regOne!30103 r!7292)))) b!5209061))

(assert (= (and b!5208008 ((_ is Concat!23640) (regOne!30102 (regOne!30103 r!7292)))) b!5209062))

(assert (= (and b!5208008 ((_ is Star!14795) (regOne!30102 (regOne!30103 r!7292)))) b!5209063))

(assert (= (and b!5208008 ((_ is Union!14795) (regOne!30102 (regOne!30103 r!7292)))) b!5209064))

(declare-fun b!5209068 () Bool)

(declare-fun e!3243078 () Bool)

(declare-fun tp!1460836 () Bool)

(declare-fun tp!1460838 () Bool)

(assert (=> b!5209068 (= e!3243078 (and tp!1460836 tp!1460838))))

(assert (=> b!5208008 (= tp!1460593 e!3243078)))

(declare-fun b!5209066 () Bool)

(declare-fun tp!1460835 () Bool)

(declare-fun tp!1460837 () Bool)

(assert (=> b!5209066 (= e!3243078 (and tp!1460835 tp!1460837))))

(declare-fun b!5209065 () Bool)

(assert (=> b!5209065 (= e!3243078 tp_is_empty!38843)))

(declare-fun b!5209067 () Bool)

(declare-fun tp!1460834 () Bool)

(assert (=> b!5209067 (= e!3243078 tp!1460834)))

(assert (= (and b!5208008 ((_ is ElementMatch!14795) (regTwo!30102 (regOne!30103 r!7292)))) b!5209065))

(assert (= (and b!5208008 ((_ is Concat!23640) (regTwo!30102 (regOne!30103 r!7292)))) b!5209066))

(assert (= (and b!5208008 ((_ is Star!14795) (regTwo!30102 (regOne!30103 r!7292)))) b!5209067))

(assert (= (and b!5208008 ((_ is Union!14795) (regTwo!30102 (regOne!30103 r!7292)))) b!5209068))

(declare-fun b!5209072 () Bool)

(declare-fun e!3243079 () Bool)

(declare-fun tp!1460841 () Bool)

(declare-fun tp!1460843 () Bool)

(assert (=> b!5209072 (= e!3243079 (and tp!1460841 tp!1460843))))

(assert (=> b!5208017 (= tp!1460600 e!3243079)))

(declare-fun b!5209070 () Bool)

(declare-fun tp!1460840 () Bool)

(declare-fun tp!1460842 () Bool)

(assert (=> b!5209070 (= e!3243079 (and tp!1460840 tp!1460842))))

(declare-fun b!5209069 () Bool)

(assert (=> b!5209069 (= e!3243079 tp_is_empty!38843)))

(declare-fun b!5209071 () Bool)

(declare-fun tp!1460839 () Bool)

(assert (=> b!5209071 (= e!3243079 tp!1460839)))

(assert (= (and b!5208017 ((_ is ElementMatch!14795) (reg!15124 (regOne!30102 r!7292)))) b!5209069))

(assert (= (and b!5208017 ((_ is Concat!23640) (reg!15124 (regOne!30102 r!7292)))) b!5209070))

(assert (= (and b!5208017 ((_ is Star!14795) (reg!15124 (regOne!30102 r!7292)))) b!5209071))

(assert (= (and b!5208017 ((_ is Union!14795) (reg!15124 (regOne!30102 r!7292)))) b!5209072))

(declare-fun condSetEmpty!33078 () Bool)

(assert (=> setNonEmpty!33070 (= condSetEmpty!33078 (= setRest!33070 ((as const (Array Context!8358 Bool)) false)))))

(declare-fun setRes!33078 () Bool)

(assert (=> setNonEmpty!33070 (= tp!1460620 setRes!33078)))

(declare-fun setIsEmpty!33078 () Bool)

(assert (=> setIsEmpty!33078 setRes!33078))

(declare-fun tp!1460844 () Bool)

(declare-fun e!3243080 () Bool)

(declare-fun setNonEmpty!33078 () Bool)

(declare-fun setElem!33078 () Context!8358)

(assert (=> setNonEmpty!33078 (= setRes!33078 (and tp!1460844 (inv!80234 setElem!33078) e!3243080))))

(declare-fun setRest!33078 () (InoxSet Context!8358))

(assert (=> setNonEmpty!33078 (= setRest!33070 ((_ map or) (store ((as const (Array Context!8358 Bool)) false) setElem!33078 true) setRest!33078))))

(declare-fun b!5209073 () Bool)

(declare-fun tp!1460845 () Bool)

(assert (=> b!5209073 (= e!3243080 tp!1460845)))

(assert (= (and setNonEmpty!33070 condSetEmpty!33078) setIsEmpty!33078))

(assert (= (and setNonEmpty!33070 (not condSetEmpty!33078)) setNonEmpty!33078))

(assert (= setNonEmpty!33078 b!5209073))

(declare-fun m!6259370 () Bool)

(assert (=> setNonEmpty!33078 m!6259370))

(declare-fun b!5209077 () Bool)

(declare-fun e!3243081 () Bool)

(declare-fun tp!1460848 () Bool)

(declare-fun tp!1460850 () Bool)

(assert (=> b!5209077 (= e!3243081 (and tp!1460848 tp!1460850))))

(assert (=> b!5208021 (= tp!1460605 e!3243081)))

(declare-fun b!5209075 () Bool)

(declare-fun tp!1460847 () Bool)

(declare-fun tp!1460849 () Bool)

(assert (=> b!5209075 (= e!3243081 (and tp!1460847 tp!1460849))))

(declare-fun b!5209074 () Bool)

(assert (=> b!5209074 (= e!3243081 tp_is_empty!38843)))

(declare-fun b!5209076 () Bool)

(declare-fun tp!1460846 () Bool)

(assert (=> b!5209076 (= e!3243081 tp!1460846)))

(assert (= (and b!5208021 ((_ is ElementMatch!14795) (reg!15124 (regTwo!30102 r!7292)))) b!5209074))

(assert (= (and b!5208021 ((_ is Concat!23640) (reg!15124 (regTwo!30102 r!7292)))) b!5209075))

(assert (= (and b!5208021 ((_ is Star!14795) (reg!15124 (regTwo!30102 r!7292)))) b!5209076))

(assert (= (and b!5208021 ((_ is Union!14795) (reg!15124 (regTwo!30102 r!7292)))) b!5209077))

(declare-fun b!5209078 () Bool)

(declare-fun e!3243082 () Bool)

(declare-fun tp!1460851 () Bool)

(declare-fun tp!1460852 () Bool)

(assert (=> b!5209078 (= e!3243082 (and tp!1460851 tp!1460852))))

(assert (=> b!5208041 (= tp!1460628 e!3243082)))

(assert (= (and b!5208041 ((_ is Cons!60560) (exprs!4679 (h!67009 (t!373844 zl!343))))) b!5209078))

(declare-fun b!5209082 () Bool)

(declare-fun e!3243083 () Bool)

(declare-fun tp!1460855 () Bool)

(declare-fun tp!1460857 () Bool)

(assert (=> b!5209082 (= e!3243083 (and tp!1460855 tp!1460857))))

(assert (=> b!5208020 (= tp!1460606 e!3243083)))

(declare-fun b!5209080 () Bool)

(declare-fun tp!1460854 () Bool)

(declare-fun tp!1460856 () Bool)

(assert (=> b!5209080 (= e!3243083 (and tp!1460854 tp!1460856))))

(declare-fun b!5209079 () Bool)

(assert (=> b!5209079 (= e!3243083 tp_is_empty!38843)))

(declare-fun b!5209081 () Bool)

(declare-fun tp!1460853 () Bool)

(assert (=> b!5209081 (= e!3243083 tp!1460853)))

(assert (= (and b!5208020 ((_ is ElementMatch!14795) (regOne!30102 (regTwo!30102 r!7292)))) b!5209079))

(assert (= (and b!5208020 ((_ is Concat!23640) (regOne!30102 (regTwo!30102 r!7292)))) b!5209080))

(assert (= (and b!5208020 ((_ is Star!14795) (regOne!30102 (regTwo!30102 r!7292)))) b!5209081))

(assert (= (and b!5208020 ((_ is Union!14795) (regOne!30102 (regTwo!30102 r!7292)))) b!5209082))

(declare-fun b!5209086 () Bool)

(declare-fun e!3243084 () Bool)

(declare-fun tp!1460860 () Bool)

(declare-fun tp!1460862 () Bool)

(assert (=> b!5209086 (= e!3243084 (and tp!1460860 tp!1460862))))

(assert (=> b!5208020 (= tp!1460608 e!3243084)))

(declare-fun b!5209084 () Bool)

(declare-fun tp!1460859 () Bool)

(declare-fun tp!1460861 () Bool)

(assert (=> b!5209084 (= e!3243084 (and tp!1460859 tp!1460861))))

(declare-fun b!5209083 () Bool)

(assert (=> b!5209083 (= e!3243084 tp_is_empty!38843)))

(declare-fun b!5209085 () Bool)

(declare-fun tp!1460858 () Bool)

(assert (=> b!5209085 (= e!3243084 tp!1460858)))

(assert (= (and b!5208020 ((_ is ElementMatch!14795) (regTwo!30102 (regTwo!30102 r!7292)))) b!5209083))

(assert (= (and b!5208020 ((_ is Concat!23640) (regTwo!30102 (regTwo!30102 r!7292)))) b!5209084))

(assert (= (and b!5208020 ((_ is Star!14795) (regTwo!30102 (regTwo!30102 r!7292)))) b!5209085))

(assert (= (and b!5208020 ((_ is Union!14795) (regTwo!30102 (regTwo!30102 r!7292)))) b!5209086))

(declare-fun b!5209088 () Bool)

(declare-fun e!3243086 () Bool)

(declare-fun tp!1460863 () Bool)

(assert (=> b!5209088 (= e!3243086 tp!1460863)))

(declare-fun tp!1460864 () Bool)

(declare-fun e!3243085 () Bool)

(declare-fun b!5209087 () Bool)

(assert (=> b!5209087 (= e!3243085 (and (inv!80234 (h!67009 (t!373844 (t!373844 zl!343)))) e!3243086 tp!1460864))))

(assert (=> b!5208040 (= tp!1460629 e!3243085)))

(assert (= b!5209087 b!5209088))

(assert (= (and b!5208040 ((_ is Cons!60561) (t!373844 (t!373844 zl!343)))) b!5209087))

(declare-fun m!6259372 () Bool)

(assert (=> b!5209087 m!6259372))

(declare-fun b!5209092 () Bool)

(declare-fun e!3243087 () Bool)

(declare-fun tp!1460867 () Bool)

(declare-fun tp!1460869 () Bool)

(assert (=> b!5209092 (= e!3243087 (and tp!1460867 tp!1460869))))

(assert (=> b!5208027 (= tp!1460614 e!3243087)))

(declare-fun b!5209090 () Bool)

(declare-fun tp!1460866 () Bool)

(declare-fun tp!1460868 () Bool)

(assert (=> b!5209090 (= e!3243087 (and tp!1460866 tp!1460868))))

(declare-fun b!5209089 () Bool)

(assert (=> b!5209089 (= e!3243087 tp_is_empty!38843)))

(declare-fun b!5209091 () Bool)

(declare-fun tp!1460865 () Bool)

(assert (=> b!5209091 (= e!3243087 tp!1460865)))

(assert (= (and b!5208027 ((_ is ElementMatch!14795) (h!67008 (exprs!4679 setElem!33064)))) b!5209089))

(assert (= (and b!5208027 ((_ is Concat!23640) (h!67008 (exprs!4679 setElem!33064)))) b!5209090))

(assert (= (and b!5208027 ((_ is Star!14795) (h!67008 (exprs!4679 setElem!33064)))) b!5209091))

(assert (= (and b!5208027 ((_ is Union!14795) (h!67008 (exprs!4679 setElem!33064)))) b!5209092))

(declare-fun b!5209093 () Bool)

(declare-fun e!3243088 () Bool)

(declare-fun tp!1460870 () Bool)

(declare-fun tp!1460871 () Bool)

(assert (=> b!5209093 (= e!3243088 (and tp!1460870 tp!1460871))))

(assert (=> b!5208027 (= tp!1460615 e!3243088)))

(assert (= (and b!5208027 ((_ is Cons!60560) (t!373843 (exprs!4679 setElem!33064)))) b!5209093))

(declare-fun b!5209097 () Bool)

(declare-fun e!3243089 () Bool)

(declare-fun tp!1460874 () Bool)

(declare-fun tp!1460876 () Bool)

(assert (=> b!5209097 (= e!3243089 (and tp!1460874 tp!1460876))))

(assert (=> b!5208033 (= tp!1460622 e!3243089)))

(declare-fun b!5209095 () Bool)

(declare-fun tp!1460873 () Bool)

(declare-fun tp!1460875 () Bool)

(assert (=> b!5209095 (= e!3243089 (and tp!1460873 tp!1460875))))

(declare-fun b!5209094 () Bool)

(assert (=> b!5209094 (= e!3243089 tp_is_empty!38843)))

(declare-fun b!5209096 () Bool)

(declare-fun tp!1460872 () Bool)

(assert (=> b!5209096 (= e!3243089 tp!1460872)))

(assert (= (and b!5208033 ((_ is ElementMatch!14795) (h!67008 (exprs!4679 (h!67009 zl!343))))) b!5209094))

(assert (= (and b!5208033 ((_ is Concat!23640) (h!67008 (exprs!4679 (h!67009 zl!343))))) b!5209095))

(assert (= (and b!5208033 ((_ is Star!14795) (h!67008 (exprs!4679 (h!67009 zl!343))))) b!5209096))

(assert (= (and b!5208033 ((_ is Union!14795) (h!67008 (exprs!4679 (h!67009 zl!343))))) b!5209097))

(declare-fun b!5209098 () Bool)

(declare-fun e!3243090 () Bool)

(declare-fun tp!1460877 () Bool)

(declare-fun tp!1460878 () Bool)

(assert (=> b!5209098 (= e!3243090 (and tp!1460877 tp!1460878))))

(assert (=> b!5208033 (= tp!1460623 e!3243090)))

(assert (= (and b!5208033 ((_ is Cons!60560) (t!373843 (exprs!4679 (h!67009 zl!343))))) b!5209098))

(declare-fun b!5209102 () Bool)

(declare-fun e!3243091 () Bool)

(declare-fun tp!1460881 () Bool)

(declare-fun tp!1460883 () Bool)

(assert (=> b!5209102 (= e!3243091 (and tp!1460881 tp!1460883))))

(assert (=> b!5208006 (= tp!1460587 e!3243091)))

(declare-fun b!5209100 () Bool)

(declare-fun tp!1460880 () Bool)

(declare-fun tp!1460882 () Bool)

(assert (=> b!5209100 (= e!3243091 (and tp!1460880 tp!1460882))))

(declare-fun b!5209099 () Bool)

(assert (=> b!5209099 (= e!3243091 tp_is_empty!38843)))

(declare-fun b!5209101 () Bool)

(declare-fun tp!1460879 () Bool)

(assert (=> b!5209101 (= e!3243091 tp!1460879)))

(assert (= (and b!5208006 ((_ is ElementMatch!14795) (regOne!30103 (reg!15124 r!7292)))) b!5209099))

(assert (= (and b!5208006 ((_ is Concat!23640) (regOne!30103 (reg!15124 r!7292)))) b!5209100))

(assert (= (and b!5208006 ((_ is Star!14795) (regOne!30103 (reg!15124 r!7292)))) b!5209101))

(assert (= (and b!5208006 ((_ is Union!14795) (regOne!30103 (reg!15124 r!7292)))) b!5209102))

(declare-fun b!5209106 () Bool)

(declare-fun e!3243092 () Bool)

(declare-fun tp!1460886 () Bool)

(declare-fun tp!1460888 () Bool)

(assert (=> b!5209106 (= e!3243092 (and tp!1460886 tp!1460888))))

(assert (=> b!5208006 (= tp!1460589 e!3243092)))

(declare-fun b!5209104 () Bool)

(declare-fun tp!1460885 () Bool)

(declare-fun tp!1460887 () Bool)

(assert (=> b!5209104 (= e!3243092 (and tp!1460885 tp!1460887))))

(declare-fun b!5209103 () Bool)

(assert (=> b!5209103 (= e!3243092 tp_is_empty!38843)))

(declare-fun b!5209105 () Bool)

(declare-fun tp!1460884 () Bool)

(assert (=> b!5209105 (= e!3243092 tp!1460884)))

(assert (= (and b!5208006 ((_ is ElementMatch!14795) (regTwo!30103 (reg!15124 r!7292)))) b!5209103))

(assert (= (and b!5208006 ((_ is Concat!23640) (regTwo!30103 (reg!15124 r!7292)))) b!5209104))

(assert (= (and b!5208006 ((_ is Star!14795) (regTwo!30103 (reg!15124 r!7292)))) b!5209105))

(assert (= (and b!5208006 ((_ is Union!14795) (regTwo!30103 (reg!15124 r!7292)))) b!5209106))

(declare-fun b!5209110 () Bool)

(declare-fun e!3243093 () Bool)

(declare-fun tp!1460891 () Bool)

(declare-fun tp!1460893 () Bool)

(assert (=> b!5209110 (= e!3243093 (and tp!1460891 tp!1460893))))

(assert (=> b!5208005 (= tp!1460585 e!3243093)))

(declare-fun b!5209108 () Bool)

(declare-fun tp!1460890 () Bool)

(declare-fun tp!1460892 () Bool)

(assert (=> b!5209108 (= e!3243093 (and tp!1460890 tp!1460892))))

(declare-fun b!5209107 () Bool)

(assert (=> b!5209107 (= e!3243093 tp_is_empty!38843)))

(declare-fun b!5209109 () Bool)

(declare-fun tp!1460889 () Bool)

(assert (=> b!5209109 (= e!3243093 tp!1460889)))

(assert (= (and b!5208005 ((_ is ElementMatch!14795) (reg!15124 (reg!15124 r!7292)))) b!5209107))

(assert (= (and b!5208005 ((_ is Concat!23640) (reg!15124 (reg!15124 r!7292)))) b!5209108))

(assert (= (and b!5208005 ((_ is Star!14795) (reg!15124 (reg!15124 r!7292)))) b!5209109))

(assert (= (and b!5208005 ((_ is Union!14795) (reg!15124 (reg!15124 r!7292)))) b!5209110))

(declare-fun b!5209114 () Bool)

(declare-fun e!3243094 () Bool)

(declare-fun tp!1460896 () Bool)

(declare-fun tp!1460898 () Bool)

(assert (=> b!5209114 (= e!3243094 (and tp!1460896 tp!1460898))))

(assert (=> b!5208014 (= tp!1460597 e!3243094)))

(declare-fun b!5209112 () Bool)

(declare-fun tp!1460895 () Bool)

(declare-fun tp!1460897 () Bool)

(assert (=> b!5209112 (= e!3243094 (and tp!1460895 tp!1460897))))

(declare-fun b!5209111 () Bool)

(assert (=> b!5209111 (= e!3243094 tp_is_empty!38843)))

(declare-fun b!5209113 () Bool)

(declare-fun tp!1460894 () Bool)

(assert (=> b!5209113 (= e!3243094 tp!1460894)))

(assert (= (and b!5208014 ((_ is ElementMatch!14795) (regOne!30103 (regTwo!30103 r!7292)))) b!5209111))

(assert (= (and b!5208014 ((_ is Concat!23640) (regOne!30103 (regTwo!30103 r!7292)))) b!5209112))

(assert (= (and b!5208014 ((_ is Star!14795) (regOne!30103 (regTwo!30103 r!7292)))) b!5209113))

(assert (= (and b!5208014 ((_ is Union!14795) (regOne!30103 (regTwo!30103 r!7292)))) b!5209114))

(declare-fun b!5209118 () Bool)

(declare-fun e!3243095 () Bool)

(declare-fun tp!1460901 () Bool)

(declare-fun tp!1460903 () Bool)

(assert (=> b!5209118 (= e!3243095 (and tp!1460901 tp!1460903))))

(assert (=> b!5208014 (= tp!1460599 e!3243095)))

(declare-fun b!5209116 () Bool)

(declare-fun tp!1460900 () Bool)

(declare-fun tp!1460902 () Bool)

(assert (=> b!5209116 (= e!3243095 (and tp!1460900 tp!1460902))))

(declare-fun b!5209115 () Bool)

(assert (=> b!5209115 (= e!3243095 tp_is_empty!38843)))

(declare-fun b!5209117 () Bool)

(declare-fun tp!1460899 () Bool)

(assert (=> b!5209117 (= e!3243095 tp!1460899)))

(assert (= (and b!5208014 ((_ is ElementMatch!14795) (regTwo!30103 (regTwo!30103 r!7292)))) b!5209115))

(assert (= (and b!5208014 ((_ is Concat!23640) (regTwo!30103 (regTwo!30103 r!7292)))) b!5209116))

(assert (= (and b!5208014 ((_ is Star!14795) (regTwo!30103 (regTwo!30103 r!7292)))) b!5209117))

(assert (= (and b!5208014 ((_ is Union!14795) (regTwo!30103 (regTwo!30103 r!7292)))) b!5209118))

(declare-fun b!5209122 () Bool)

(declare-fun e!3243096 () Bool)

(declare-fun tp!1460906 () Bool)

(declare-fun tp!1460908 () Bool)

(assert (=> b!5209122 (= e!3243096 (and tp!1460906 tp!1460908))))

(assert (=> b!5208004 (= tp!1460586 e!3243096)))

(declare-fun b!5209120 () Bool)

(declare-fun tp!1460905 () Bool)

(declare-fun tp!1460907 () Bool)

(assert (=> b!5209120 (= e!3243096 (and tp!1460905 tp!1460907))))

(declare-fun b!5209119 () Bool)

(assert (=> b!5209119 (= e!3243096 tp_is_empty!38843)))

(declare-fun b!5209121 () Bool)

(declare-fun tp!1460904 () Bool)

(assert (=> b!5209121 (= e!3243096 tp!1460904)))

(assert (= (and b!5208004 ((_ is ElementMatch!14795) (regOne!30102 (reg!15124 r!7292)))) b!5209119))

(assert (= (and b!5208004 ((_ is Concat!23640) (regOne!30102 (reg!15124 r!7292)))) b!5209120))

(assert (= (and b!5208004 ((_ is Star!14795) (regOne!30102 (reg!15124 r!7292)))) b!5209121))

(assert (= (and b!5208004 ((_ is Union!14795) (regOne!30102 (reg!15124 r!7292)))) b!5209122))

(declare-fun b!5209126 () Bool)

(declare-fun e!3243097 () Bool)

(declare-fun tp!1460911 () Bool)

(declare-fun tp!1460913 () Bool)

(assert (=> b!5209126 (= e!3243097 (and tp!1460911 tp!1460913))))

(assert (=> b!5208004 (= tp!1460588 e!3243097)))

(declare-fun b!5209124 () Bool)

(declare-fun tp!1460910 () Bool)

(declare-fun tp!1460912 () Bool)

(assert (=> b!5209124 (= e!3243097 (and tp!1460910 tp!1460912))))

(declare-fun b!5209123 () Bool)

(assert (=> b!5209123 (= e!3243097 tp_is_empty!38843)))

(declare-fun b!5209125 () Bool)

(declare-fun tp!1460909 () Bool)

(assert (=> b!5209125 (= e!3243097 tp!1460909)))

(assert (= (and b!5208004 ((_ is ElementMatch!14795) (regTwo!30102 (reg!15124 r!7292)))) b!5209123))

(assert (= (and b!5208004 ((_ is Concat!23640) (regTwo!30102 (reg!15124 r!7292)))) b!5209124))

(assert (= (and b!5208004 ((_ is Star!14795) (regTwo!30102 (reg!15124 r!7292)))) b!5209125))

(assert (= (and b!5208004 ((_ is Union!14795) (regTwo!30102 (reg!15124 r!7292)))) b!5209126))

(declare-fun b!5209130 () Bool)

(declare-fun e!3243098 () Bool)

(declare-fun tp!1460916 () Bool)

(declare-fun tp!1460918 () Bool)

(assert (=> b!5209130 (= e!3243098 (and tp!1460916 tp!1460918))))

(assert (=> b!5208013 (= tp!1460595 e!3243098)))

(declare-fun b!5209128 () Bool)

(declare-fun tp!1460915 () Bool)

(declare-fun tp!1460917 () Bool)

(assert (=> b!5209128 (= e!3243098 (and tp!1460915 tp!1460917))))

(declare-fun b!5209127 () Bool)

(assert (=> b!5209127 (= e!3243098 tp_is_empty!38843)))

(declare-fun b!5209129 () Bool)

(declare-fun tp!1460914 () Bool)

(assert (=> b!5209129 (= e!3243098 tp!1460914)))

(assert (= (and b!5208013 ((_ is ElementMatch!14795) (reg!15124 (regTwo!30103 r!7292)))) b!5209127))

(assert (= (and b!5208013 ((_ is Concat!23640) (reg!15124 (regTwo!30103 r!7292)))) b!5209128))

(assert (= (and b!5208013 ((_ is Star!14795) (reg!15124 (regTwo!30103 r!7292)))) b!5209129))

(assert (= (and b!5208013 ((_ is Union!14795) (reg!15124 (regTwo!30103 r!7292)))) b!5209130))

(declare-fun b!5209134 () Bool)

(declare-fun e!3243099 () Bool)

(declare-fun tp!1460921 () Bool)

(declare-fun tp!1460923 () Bool)

(assert (=> b!5209134 (= e!3243099 (and tp!1460921 tp!1460923))))

(assert (=> b!5208022 (= tp!1460607 e!3243099)))

(declare-fun b!5209132 () Bool)

(declare-fun tp!1460920 () Bool)

(declare-fun tp!1460922 () Bool)

(assert (=> b!5209132 (= e!3243099 (and tp!1460920 tp!1460922))))

(declare-fun b!5209131 () Bool)

(assert (=> b!5209131 (= e!3243099 tp_is_empty!38843)))

(declare-fun b!5209133 () Bool)

(declare-fun tp!1460919 () Bool)

(assert (=> b!5209133 (= e!3243099 tp!1460919)))

(assert (= (and b!5208022 ((_ is ElementMatch!14795) (regOne!30103 (regTwo!30102 r!7292)))) b!5209131))

(assert (= (and b!5208022 ((_ is Concat!23640) (regOne!30103 (regTwo!30102 r!7292)))) b!5209132))

(assert (= (and b!5208022 ((_ is Star!14795) (regOne!30103 (regTwo!30102 r!7292)))) b!5209133))

(assert (= (and b!5208022 ((_ is Union!14795) (regOne!30103 (regTwo!30102 r!7292)))) b!5209134))

(declare-fun b!5209138 () Bool)

(declare-fun e!3243100 () Bool)

(declare-fun tp!1460926 () Bool)

(declare-fun tp!1460928 () Bool)

(assert (=> b!5209138 (= e!3243100 (and tp!1460926 tp!1460928))))

(assert (=> b!5208022 (= tp!1460609 e!3243100)))

(declare-fun b!5209136 () Bool)

(declare-fun tp!1460925 () Bool)

(declare-fun tp!1460927 () Bool)

(assert (=> b!5209136 (= e!3243100 (and tp!1460925 tp!1460927))))

(declare-fun b!5209135 () Bool)

(assert (=> b!5209135 (= e!3243100 tp_is_empty!38843)))

(declare-fun b!5209137 () Bool)

(declare-fun tp!1460924 () Bool)

(assert (=> b!5209137 (= e!3243100 tp!1460924)))

(assert (= (and b!5208022 ((_ is ElementMatch!14795) (regTwo!30103 (regTwo!30102 r!7292)))) b!5209135))

(assert (= (and b!5208022 ((_ is Concat!23640) (regTwo!30103 (regTwo!30102 r!7292)))) b!5209136))

(assert (= (and b!5208022 ((_ is Star!14795) (regTwo!30103 (regTwo!30102 r!7292)))) b!5209137))

(assert (= (and b!5208022 ((_ is Union!14795) (regTwo!30103 (regTwo!30102 r!7292)))) b!5209138))

(declare-fun b!5209142 () Bool)

(declare-fun e!3243101 () Bool)

(declare-fun tp!1460931 () Bool)

(declare-fun tp!1460933 () Bool)

(assert (=> b!5209142 (= e!3243101 (and tp!1460931 tp!1460933))))

(assert (=> b!5208012 (= tp!1460596 e!3243101)))

(declare-fun b!5209140 () Bool)

(declare-fun tp!1460930 () Bool)

(declare-fun tp!1460932 () Bool)

(assert (=> b!5209140 (= e!3243101 (and tp!1460930 tp!1460932))))

(declare-fun b!5209139 () Bool)

(assert (=> b!5209139 (= e!3243101 tp_is_empty!38843)))

(declare-fun b!5209141 () Bool)

(declare-fun tp!1460929 () Bool)

(assert (=> b!5209141 (= e!3243101 tp!1460929)))

(assert (= (and b!5208012 ((_ is ElementMatch!14795) (regOne!30102 (regTwo!30103 r!7292)))) b!5209139))

(assert (= (and b!5208012 ((_ is Concat!23640) (regOne!30102 (regTwo!30103 r!7292)))) b!5209140))

(assert (= (and b!5208012 ((_ is Star!14795) (regOne!30102 (regTwo!30103 r!7292)))) b!5209141))

(assert (= (and b!5208012 ((_ is Union!14795) (regOne!30102 (regTwo!30103 r!7292)))) b!5209142))

(declare-fun b!5209146 () Bool)

(declare-fun e!3243102 () Bool)

(declare-fun tp!1460936 () Bool)

(declare-fun tp!1460938 () Bool)

(assert (=> b!5209146 (= e!3243102 (and tp!1460936 tp!1460938))))

(assert (=> b!5208012 (= tp!1460598 e!3243102)))

(declare-fun b!5209144 () Bool)

(declare-fun tp!1460935 () Bool)

(declare-fun tp!1460937 () Bool)

(assert (=> b!5209144 (= e!3243102 (and tp!1460935 tp!1460937))))

(declare-fun b!5209143 () Bool)

(assert (=> b!5209143 (= e!3243102 tp_is_empty!38843)))

(declare-fun b!5209145 () Bool)

(declare-fun tp!1460934 () Bool)

(assert (=> b!5209145 (= e!3243102 tp!1460934)))

(assert (= (and b!5208012 ((_ is ElementMatch!14795) (regTwo!30102 (regTwo!30103 r!7292)))) b!5209143))

(assert (= (and b!5208012 ((_ is Concat!23640) (regTwo!30102 (regTwo!30103 r!7292)))) b!5209144))

(assert (= (and b!5208012 ((_ is Star!14795) (regTwo!30102 (regTwo!30103 r!7292)))) b!5209145))

(assert (= (and b!5208012 ((_ is Union!14795) (regTwo!30102 (regTwo!30103 r!7292)))) b!5209146))

(declare-fun b!5209147 () Bool)

(declare-fun e!3243103 () Bool)

(declare-fun tp!1460939 () Bool)

(assert (=> b!5209147 (= e!3243103 (and tp_is_empty!38843 tp!1460939))))

(assert (=> b!5207992 (= tp!1460574 e!3243103)))

(assert (= (and b!5207992 ((_ is Cons!60562) (t!373845 (t!373845 s!2326)))) b!5209147))

(declare-fun b!5209151 () Bool)

(declare-fun e!3243104 () Bool)

(declare-fun tp!1460942 () Bool)

(declare-fun tp!1460944 () Bool)

(assert (=> b!5209151 (= e!3243104 (and tp!1460942 tp!1460944))))

(assert (=> b!5208016 (= tp!1460601 e!3243104)))

(declare-fun b!5209149 () Bool)

(declare-fun tp!1460941 () Bool)

(declare-fun tp!1460943 () Bool)

(assert (=> b!5209149 (= e!3243104 (and tp!1460941 tp!1460943))))

(declare-fun b!5209148 () Bool)

(assert (=> b!5209148 (= e!3243104 tp_is_empty!38843)))

(declare-fun b!5209150 () Bool)

(declare-fun tp!1460940 () Bool)

(assert (=> b!5209150 (= e!3243104 tp!1460940)))

(assert (= (and b!5208016 ((_ is ElementMatch!14795) (regOne!30102 (regOne!30102 r!7292)))) b!5209148))

(assert (= (and b!5208016 ((_ is Concat!23640) (regOne!30102 (regOne!30102 r!7292)))) b!5209149))

(assert (= (and b!5208016 ((_ is Star!14795) (regOne!30102 (regOne!30102 r!7292)))) b!5209150))

(assert (= (and b!5208016 ((_ is Union!14795) (regOne!30102 (regOne!30102 r!7292)))) b!5209151))

(declare-fun b!5209155 () Bool)

(declare-fun e!3243105 () Bool)

(declare-fun tp!1460947 () Bool)

(declare-fun tp!1460949 () Bool)

(assert (=> b!5209155 (= e!3243105 (and tp!1460947 tp!1460949))))

(assert (=> b!5208016 (= tp!1460603 e!3243105)))

(declare-fun b!5209153 () Bool)

(declare-fun tp!1460946 () Bool)

(declare-fun tp!1460948 () Bool)

(assert (=> b!5209153 (= e!3243105 (and tp!1460946 tp!1460948))))

(declare-fun b!5209152 () Bool)

(assert (=> b!5209152 (= e!3243105 tp_is_empty!38843)))

(declare-fun b!5209154 () Bool)

(declare-fun tp!1460945 () Bool)

(assert (=> b!5209154 (= e!3243105 tp!1460945)))

(assert (= (and b!5208016 ((_ is ElementMatch!14795) (regTwo!30102 (regOne!30102 r!7292)))) b!5209152))

(assert (= (and b!5208016 ((_ is Concat!23640) (regTwo!30102 (regOne!30102 r!7292)))) b!5209153))

(assert (= (and b!5208016 ((_ is Star!14795) (regTwo!30102 (regOne!30102 r!7292)))) b!5209154))

(assert (= (and b!5208016 ((_ is Union!14795) (regTwo!30102 (regOne!30102 r!7292)))) b!5209155))

(declare-fun b_lambda!201513 () Bool)

(assert (= b_lambda!201509 (or d!1679403 b_lambda!201513)))

(declare-fun bs!1210497 () Bool)

(declare-fun d!1679847 () Bool)

(assert (= bs!1210497 (and d!1679847 d!1679403)))

(assert (=> bs!1210497 (= (dynLambda!23924 lambda!261095 (h!67008 (exprs!4679 (h!67009 zl!343)))) (validRegex!6531 (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(declare-fun m!6259374 () Bool)

(assert (=> bs!1210497 m!6259374))

(assert (=> b!5209025 d!1679847))

(declare-fun b_lambda!201515 () Bool)

(assert (= b_lambda!201505 (or b!5207273 b_lambda!201515)))

(assert (=> d!1679781 d!1679427))

(declare-fun b_lambda!201517 () Bool)

(assert (= b_lambda!201511 (or d!1679383 b_lambda!201517)))

(declare-fun bs!1210498 () Bool)

(declare-fun d!1679849 () Bool)

(assert (= bs!1210498 (and d!1679849 d!1679383)))

(assert (=> bs!1210498 (= (dynLambda!23924 lambda!261091 (h!67008 lt!2141800)) (validRegex!6531 (h!67008 lt!2141800)))))

(declare-fun m!6259376 () Bool)

(assert (=> bs!1210498 m!6259376))

(assert (=> b!5209027 d!1679849))

(declare-fun b_lambda!201519 () Bool)

(assert (= b_lambda!201507 (or d!1679425 b_lambda!201519)))

(declare-fun bs!1210499 () Bool)

(declare-fun d!1679851 () Bool)

(assert (= bs!1210499 (and d!1679851 d!1679425)))

(assert (=> bs!1210499 (= (dynLambda!23924 lambda!261107 (h!67008 (exprs!4679 (h!67009 zl!343)))) (validRegex!6531 (h!67008 (exprs!4679 (h!67009 zl!343)))))))

(assert (=> bs!1210499 m!6259374))

(assert (=> b!5209023 d!1679851))

(declare-fun b_lambda!201521 () Bool)

(assert (= b_lambda!201481 (or d!1679387 b_lambda!201521)))

(declare-fun bs!1210500 () Bool)

(declare-fun d!1679853 () Bool)

(assert (= bs!1210500 (and d!1679853 d!1679387)))

(assert (=> bs!1210500 (= (dynLambda!23924 lambda!261094 (h!67008 (exprs!4679 setElem!33064))) (validRegex!6531 (h!67008 (exprs!4679 setElem!33064))))))

(declare-fun m!6259378 () Bool)

(assert (=> bs!1210500 m!6259378))

(assert (=> b!5208346 d!1679853))

(declare-fun b_lambda!201523 () Bool)

(assert (= b_lambda!201491 (or d!1679381 b_lambda!201523)))

(declare-fun bs!1210501 () Bool)

(declare-fun d!1679855 () Bool)

(assert (= bs!1210501 (and d!1679855 d!1679381)))

(assert (=> bs!1210501 (= (dynLambda!23924 lambda!261088 (h!67008 (unfocusZipperList!237 zl!343))) (validRegex!6531 (h!67008 (unfocusZipperList!237 zl!343))))))

(declare-fun m!6259380 () Bool)

(assert (=> bs!1210501 m!6259380))

(assert (=> b!5208770 d!1679855))

(check-sat (not b_lambda!201517) (not b!5208615) (not b!5208916) (not b!5209086) (not bs!1210498) (not b!5209064) (not d!1679817) (not b!5209141) (not d!1679811) (not b!5208281) (not b!5208395) (not d!1679765) (not b!5209046) (not b!5209070) (not b!5209140) (not bm!366594) (not b!5208637) (not b!5209110) (not bm!366598) (not b_lambda!201513) (not b!5209130) (not b!5209085) (not d!1679781) (not bm!366524) (not b!5209108) (not bm!366644) (not b!5208607) (not b!5208275) (not d!1679707) (not b!5209138) (not bm!366507) (not b!5209113) (not bm!366629) (not bs!1210500) (not b!5208654) (not b!5208749) (not b!5209084) (not b!5209067) (not b!5209155) (not b!5208288) (not b!5209049) (not b!5208977) (not d!1679809) (not bm!366489) (not b!5208260) (not b!5208660) (not bm!366658) (not b!5208407) (not bm!366662) (not bm!366528) (not b!5209063) (not b!5209051) (not b!5209080) (not bm!366573) (not b!5208921) (not b!5209095) (not b!5208301) (not bm!366592) (not b!5208585) (not b!5209096) (not setNonEmpty!33078) (not d!1679603) (not d!1679519) (not b!5208937) (not b!5208283) (not b!5209082) (not d!1679549) (not b!5208790) (not bm!366575) (not b!5208907) (not b!5209018) (not b!5209142) (not b!5208614) (not b!5208584) (not b!5208942) tp_is_empty!38843 (not b!5209052) (not bm!366571) (not b!5208771) (not bm!366626) (not bm!366657) (not b!5208611) (not b!5208655) (not b!5208427) (not d!1679673) (not b!5209097) (not b!5208608) (not bm!366506) (not d!1679797) (not b!5209149) (not b!5208903) (not b!5209118) (not b!5209062) (not b!5208639) (not d!1679569) (not b!5208289) (not b!5208530) (not bm!366565) (not bm!366616) (not b!5208940) (not b!5209122) (not b!5208590) (not d!1679611) (not b!5208609) (not b!5208520) (not b!5209153) (not d!1679803) (not bm!366647) (not d!1679623) (not d!1679711) (not b!5209047) (not b!5208943) (not bm!366623) (not bm!366625) (not b!5208577) (not b!5209132) (not b!5208257) (not bm!366596) (not d!1679687) (not b!5208558) (not d!1679699) (not b!5208662) (not d!1679739) (not b!5209066) (not b!5209104) (not b!5208686) (not d!1679609) (not b!5209102) (not b!5209081) (not d!1679561) (not b!5208261) (not b!5208603) (not b!5209101) (not b!5209116) (not b_lambda!201523) (not b!5209055) (not b_lambda!201521) (not bm!366530) (not b!5209087) (not b!5209109) (not b!5209043) (not b!5209100) (not b!5208309) (not b_lambda!201475) (not b!5209150) (not bm!366535) (not b!5209091) (not bs!1210497) (not b!5209151) (not bm!366522) (not d!1679541) (not bm!366617) (not b!5208304) (not b!5208529) (not b!5208604) (not b!5209112) (not b!5209098) (not b!5208278) (not b!5209075) (not bm!366631) (not b!5209059) (not b!5209124) (not b!5208636) (not b!5208910) (not bm!366618) (not b!5208302) (not bs!1210501) (not b!5209133) (not bm!366630) (not bm!366610) (not d!1679689) (not bm!366577) (not b!5209105) (not bm!366619) (not b!5208277) (not b!5209121) (not b!5209145) (not d!1679715) (not b!5209137) (not bm!366643) (not b!5208432) (not b!5208202) (not b!5209088) (not d!1679617) (not b!5208592) (not b!5208935) (not bm!366576) (not b!5209045) (not b!5208798) (not b!5208550) (not b!5208587) (not b!5209154) (not d!1679605) (not bm!366655) (not bm!366654) (not bm!366532) (not b!5209007) (not b!5209042) (not b!5208894) (not b!5209146) (not b!5208352) (not bm!366534) (not b!5208991) (not d!1679785) (not d!1679729) (not b!5208426) (not b!5208635) (not b!5208986) (not b!5209009) (not bm!366521) (not b!5209012) (not bm!366621) (not b!5208347) (not b!5209126) (not b!5208434) (not b!5208429) (not setNonEmpty!33076) (not b!5208431) (not b!5208657) (not b!5209073) (not b!5208531) (not b!5209117) (not bm!366487) (not b!5209106) (not b!5209092) (not d!1679819) (not b!5208893) (not b!5208519) (not b!5208418) (not b!5209120) (not b!5209026) (not b!5208927) (not b!5208676) (not b!5209060) (not b!5209078) (not b!5208945) (not bm!366526) (not d!1679621) (not d!1679783) (not bm!366650) (not b!5209041) (not d!1679665) (not b!5209090) (not bm!366485) (not b!5209072) (not bm!366567) (not b!5209147) (not bm!366569) (not b!5208610) (not b!5209003) (not b!5208758) (not b!5209028) (not b!5209068) (not b!5209144) (not bm!366632) (not b!5208938) (not b!5209036) (not bm!366497) (not bm!366614) (not b!5208659) (not b!5209136) (not d!1679831) (not b!5209071) (not b!5208256) (not b!5208280) (not b!5208326) (not bm!366613) (not b!5209134) (not b!5208589) (not b!5209076) (not bs!1210499) (not bm!366633) (not b!5209050) (not b_lambda!201519) (not b!5209024) (not d!1679647) (not b!5209008) (not bm!366652) (not d!1679725) (not b!5208634) (not d!1679539) (not d!1679597) (not b_lambda!201515) (not bm!366660) (not b!5209093) (not d!1679577) (not bm!366563) (not b!5209077) (not b!5208642) (not b!5208640) (not d!1679837) (not d!1679601) (not b!5209114) (not d!1679537) (not bm!366628) (not b!5209125) (not b!5209058) (not b!5208924) (not b!5209128) (not bm!366664) (not d!1679801) (not b!5208569) (not d!1679579) (not b!5208307) (not bm!366648) (not d!1679547) (not b!5209054) (not b!5208306) (not b!5209129) (not b!5209056) (not bm!366611))
(check-sat)
