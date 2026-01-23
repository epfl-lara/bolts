; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!586332 () Bool)

(assert start!586332)

(declare-fun b!5679526 () Bool)

(assert (=> b!5679526 true))

(assert (=> b!5679526 true))

(declare-fun lambda!305992 () Int)

(declare-fun lambda!305991 () Int)

(assert (=> b!5679526 (not (= lambda!305992 lambda!305991))))

(assert (=> b!5679526 true))

(assert (=> b!5679526 true))

(declare-fun b!5679547 () Bool)

(assert (=> b!5679547 true))

(declare-fun b!5679525 () Bool)

(declare-fun res!2399950 () Bool)

(declare-fun e!3495648 () Bool)

(assert (=> b!5679525 (=> (not res!2399950) (not e!3495648))))

(declare-datatypes ((C!31612 0))(
  ( (C!31613 (val!25508 Int)) )
))
(declare-datatypes ((Regex!15671 0))(
  ( (ElementMatch!15671 (c!999343 C!31612)) (Concat!24516 (regOne!31854 Regex!15671) (regTwo!31854 Regex!15671)) (EmptyExpr!15671) (Star!15671 (reg!16000 Regex!15671)) (EmptyLang!15671) (Union!15671 (regOne!31855 Regex!15671) (regTwo!31855 Regex!15671)) )
))
(declare-fun r!7292 () Regex!15671)

(declare-datatypes ((List!63312 0))(
  ( (Nil!63188) (Cons!63188 (h!69636 Regex!15671) (t!376624 List!63312)) )
))
(declare-datatypes ((Context!10110 0))(
  ( (Context!10111 (exprs!5555 List!63312)) )
))
(declare-datatypes ((List!63313 0))(
  ( (Nil!63189) (Cons!63189 (h!69637 Context!10110) (t!376625 List!63313)) )
))
(declare-fun zl!343 () List!63313)

(declare-fun unfocusZipper!1413 (List!63313) Regex!15671)

(assert (=> b!5679525 (= res!2399950 (= r!7292 (unfocusZipper!1413 zl!343)))))

(declare-fun e!3495639 () Bool)

(declare-fun e!3495644 () Bool)

(assert (=> b!5679526 (= e!3495639 e!3495644)))

(declare-fun res!2399951 () Bool)

(assert (=> b!5679526 (=> res!2399951 e!3495644)))

(declare-fun lt!2270051 () Bool)

(declare-fun lt!2270043 () Bool)

(declare-datatypes ((List!63314 0))(
  ( (Nil!63190) (Cons!63190 (h!69638 C!31612) (t!376626 List!63314)) )
))
(declare-fun s!2326 () List!63314)

(get-info :version)

(assert (=> b!5679526 (= res!2399951 (or (not (= lt!2270051 lt!2270043)) ((_ is Nil!63190) s!2326)))))

(declare-fun Exists!2771 (Int) Bool)

(assert (=> b!5679526 (= (Exists!2771 lambda!305991) (Exists!2771 lambda!305992))))

(declare-datatypes ((Unit!156216 0))(
  ( (Unit!156217) )
))
(declare-fun lt!2270054 () Unit!156216)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1400 (Regex!15671 Regex!15671 List!63314) Unit!156216)

(assert (=> b!5679526 (= lt!2270054 (lemmaExistCutMatchRandMatchRSpecEquivalent!1400 (regOne!31854 r!7292) (regTwo!31854 r!7292) s!2326))))

(assert (=> b!5679526 (= lt!2270043 (Exists!2771 lambda!305991))))

(declare-datatypes ((tuple2!65536 0))(
  ( (tuple2!65537 (_1!36071 List!63314) (_2!36071 List!63314)) )
))
(declare-datatypes ((Option!15680 0))(
  ( (None!15679) (Some!15679 (v!51728 tuple2!65536)) )
))
(declare-fun isDefined!12383 (Option!15680) Bool)

(declare-fun findConcatSeparation!2094 (Regex!15671 Regex!15671 List!63314 List!63314 List!63314) Option!15680)

(assert (=> b!5679526 (= lt!2270043 (isDefined!12383 (findConcatSeparation!2094 (regOne!31854 r!7292) (regTwo!31854 r!7292) Nil!63190 s!2326 s!2326)))))

(declare-fun lt!2270045 () Unit!156216)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1858 (Regex!15671 Regex!15671 List!63314) Unit!156216)

(assert (=> b!5679526 (= lt!2270045 (lemmaFindConcatSeparationEquivalentToExists!1858 (regOne!31854 r!7292) (regTwo!31854 r!7292) s!2326))))

(declare-fun b!5679527 () Bool)

(declare-fun res!2399949 () Bool)

(assert (=> b!5679527 (=> res!2399949 e!3495639)))

(assert (=> b!5679527 (= res!2399949 (not ((_ is Cons!63188) (exprs!5555 (h!69637 zl!343)))))))

(declare-fun setIsEmpty!37989 () Bool)

(declare-fun setRes!37989 () Bool)

(assert (=> setIsEmpty!37989 setRes!37989))

(declare-fun b!5679528 () Bool)

(declare-fun e!3495638 () Bool)

(declare-fun tp!1574930 () Bool)

(assert (=> b!5679528 (= e!3495638 tp!1574930)))

(declare-fun b!5679530 () Bool)

(declare-fun e!3495643 () Bool)

(declare-fun e!3495647 () Bool)

(declare-fun tp!1574924 () Bool)

(declare-fun inv!82424 (Context!10110) Bool)

(assert (=> b!5679530 (= e!3495647 (and (inv!82424 (h!69637 zl!343)) e!3495643 tp!1574924))))

(declare-fun b!5679531 () Bool)

(declare-fun e!3495637 () Bool)

(declare-fun e!3495636 () Bool)

(assert (=> b!5679531 (= e!3495637 e!3495636)))

(declare-fun res!2399952 () Bool)

(assert (=> b!5679531 (=> res!2399952 e!3495636)))

(declare-fun lt!2270049 () List!63312)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2270050 () (InoxSet Context!10110))

(declare-fun derivationStepZipperDown!1013 (Regex!15671 Context!10110 C!31612) (InoxSet Context!10110))

(assert (=> b!5679531 (= res!2399952 (not (= lt!2270050 (derivationStepZipperDown!1013 (reg!16000 (regOne!31854 r!7292)) (Context!10111 lt!2270049) (h!69638 s!2326)))))))

(assert (=> b!5679531 (= lt!2270049 (Cons!63188 (Star!15671 (reg!16000 (regOne!31854 r!7292))) (t!376624 (exprs!5555 (h!69637 zl!343)))))))

(declare-fun setNonEmpty!37989 () Bool)

(declare-fun tp!1574925 () Bool)

(declare-fun e!3495640 () Bool)

(declare-fun setElem!37989 () Context!10110)

(assert (=> setNonEmpty!37989 (= setRes!37989 (and tp!1574925 (inv!82424 setElem!37989) e!3495640))))

(declare-fun z!1189 () (InoxSet Context!10110))

(declare-fun setRest!37989 () (InoxSet Context!10110))

(assert (=> setNonEmpty!37989 (= z!1189 ((_ map or) (store ((as const (Array Context!10110 Bool)) false) setElem!37989 true) setRest!37989))))

(declare-fun b!5679532 () Bool)

(declare-fun e!3495646 () Bool)

(declare-fun nullable!5703 (Regex!15671) Bool)

(assert (=> b!5679532 (= e!3495646 (nullable!5703 (regOne!31854 (regOne!31854 r!7292))))))

(declare-fun b!5679533 () Bool)

(declare-fun e!3495642 () Bool)

(declare-fun tp_is_empty!40595 () Bool)

(declare-fun tp!1574926 () Bool)

(assert (=> b!5679533 (= e!3495642 (and tp_is_empty!40595 tp!1574926))))

(declare-fun b!5679534 () Bool)

(declare-fun tp!1574927 () Bool)

(assert (=> b!5679534 (= e!3495643 tp!1574927)))

(declare-fun b!5679535 () Bool)

(declare-fun e!3495641 () Unit!156216)

(declare-fun Unit!156218 () Unit!156216)

(assert (=> b!5679535 (= e!3495641 Unit!156218)))

(declare-fun lt!2270046 () Unit!156216)

(declare-fun lt!2270057 () (InoxSet Context!10110))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!696 ((InoxSet Context!10110) (InoxSet Context!10110) List!63314) Unit!156216)

(assert (=> b!5679535 (= lt!2270046 (lemmaZipperConcatMatchesSameAsBothZippers!696 lt!2270050 lt!2270057 (t!376626 s!2326)))))

(declare-fun res!2399946 () Bool)

(declare-fun matchZipper!1809 ((InoxSet Context!10110) List!63314) Bool)

(assert (=> b!5679535 (= res!2399946 (matchZipper!1809 lt!2270050 (t!376626 s!2326)))))

(declare-fun e!3495645 () Bool)

(assert (=> b!5679535 (=> res!2399946 e!3495645)))

(assert (=> b!5679535 (= (matchZipper!1809 ((_ map or) lt!2270050 lt!2270057) (t!376626 s!2326)) e!3495645)))

(declare-fun b!5679536 () Bool)

(declare-fun tp!1574928 () Bool)

(declare-fun tp!1574921 () Bool)

(assert (=> b!5679536 (= e!3495638 (and tp!1574928 tp!1574921))))

(declare-fun b!5679537 () Bool)

(declare-fun tp!1574922 () Bool)

(assert (=> b!5679537 (= e!3495640 tp!1574922)))

(declare-fun b!5679538 () Bool)

(declare-fun res!2399943 () Bool)

(assert (=> b!5679538 (=> (not res!2399943) (not e!3495648))))

(declare-fun toList!9455 ((InoxSet Context!10110)) List!63313)

(assert (=> b!5679538 (= res!2399943 (= (toList!9455 z!1189) zl!343))))

(declare-fun b!5679539 () Bool)

(declare-fun res!2399940 () Bool)

(assert (=> b!5679539 (=> res!2399940 e!3495639)))

(declare-fun generalisedConcat!1286 (List!63312) Regex!15671)

(assert (=> b!5679539 (= res!2399940 (not (= r!7292 (generalisedConcat!1286 (exprs!5555 (h!69637 zl!343))))))))

(declare-fun b!5679540 () Bool)

(declare-fun res!2399942 () Bool)

(assert (=> b!5679540 (=> res!2399942 e!3495637)))

(assert (=> b!5679540 (= res!2399942 (or ((_ is Concat!24516) (regOne!31854 r!7292)) (not ((_ is Star!15671) (regOne!31854 r!7292)))))))

(declare-fun b!5679541 () Bool)

(declare-fun res!2399939 () Bool)

(assert (=> b!5679541 (=> res!2399939 e!3495637)))

(assert (=> b!5679541 (= res!2399939 e!3495646)))

(declare-fun res!2399937 () Bool)

(assert (=> b!5679541 (=> (not res!2399937) (not e!3495646))))

(assert (=> b!5679541 (= res!2399937 ((_ is Concat!24516) (regOne!31854 r!7292)))))

(declare-fun b!5679542 () Bool)

(declare-fun res!2399938 () Bool)

(assert (=> b!5679542 (=> res!2399938 e!3495639)))

(declare-fun generalisedUnion!1534 (List!63312) Regex!15671)

(declare-fun unfocusZipperList!1099 (List!63313) List!63312)

(assert (=> b!5679542 (= res!2399938 (not (= r!7292 (generalisedUnion!1534 (unfocusZipperList!1099 zl!343)))))))

(declare-fun b!5679543 () Bool)

(declare-fun Unit!156219 () Unit!156216)

(assert (=> b!5679543 (= e!3495641 Unit!156219)))

(declare-fun b!5679544 () Bool)

(declare-fun res!2399947 () Bool)

(assert (=> b!5679544 (=> res!2399947 e!3495639)))

(assert (=> b!5679544 (= res!2399947 (or ((_ is EmptyExpr!15671) r!7292) ((_ is EmptyLang!15671) r!7292) ((_ is ElementMatch!15671) r!7292) ((_ is Union!15671) r!7292) (not ((_ is Concat!24516) r!7292))))))

(declare-fun b!5679545 () Bool)

(assert (=> b!5679545 (= e!3495645 (matchZipper!1809 lt!2270057 (t!376626 s!2326)))))

(declare-fun b!5679546 () Bool)

(assert (=> b!5679546 (= e!3495648 (not e!3495639))))

(declare-fun res!2399944 () Bool)

(assert (=> b!5679546 (=> res!2399944 e!3495639)))

(assert (=> b!5679546 (= res!2399944 (not ((_ is Cons!63189) zl!343)))))

(declare-fun matchRSpec!2774 (Regex!15671 List!63314) Bool)

(assert (=> b!5679546 (= lt!2270051 (matchRSpec!2774 r!7292 s!2326))))

(declare-fun matchR!7856 (Regex!15671 List!63314) Bool)

(assert (=> b!5679546 (= lt!2270051 (matchR!7856 r!7292 s!2326))))

(declare-fun lt!2270047 () Unit!156216)

(declare-fun mainMatchTheorem!2774 (Regex!15671 List!63314) Unit!156216)

(assert (=> b!5679546 (= lt!2270047 (mainMatchTheorem!2774 r!7292 s!2326))))

(assert (=> b!5679547 (= e!3495644 e!3495637)))

(declare-fun res!2399948 () Bool)

(assert (=> b!5679547 (=> res!2399948 e!3495637)))

(assert (=> b!5679547 (= res!2399948 (or (and ((_ is ElementMatch!15671) (regOne!31854 r!7292)) (= (c!999343 (regOne!31854 r!7292)) (h!69638 s!2326))) ((_ is Union!15671) (regOne!31854 r!7292))))))

(declare-fun lt!2270044 () Unit!156216)

(assert (=> b!5679547 (= lt!2270044 e!3495641)))

(declare-fun c!999342 () Bool)

(assert (=> b!5679547 (= c!999342 (nullable!5703 (h!69636 (exprs!5555 (h!69637 zl!343)))))))

(declare-fun lambda!305993 () Int)

(declare-fun flatMap!1284 ((InoxSet Context!10110) Int) (InoxSet Context!10110))

(declare-fun derivationStepZipperUp!939 (Context!10110 C!31612) (InoxSet Context!10110))

(assert (=> b!5679547 (= (flatMap!1284 z!1189 lambda!305993) (derivationStepZipperUp!939 (h!69637 zl!343) (h!69638 s!2326)))))

(declare-fun lt!2270052 () Unit!156216)

(declare-fun lemmaFlatMapOnSingletonSet!816 ((InoxSet Context!10110) Context!10110 Int) Unit!156216)

(assert (=> b!5679547 (= lt!2270052 (lemmaFlatMapOnSingletonSet!816 z!1189 (h!69637 zl!343) lambda!305993))))

(declare-fun lt!2270055 () Context!10110)

(assert (=> b!5679547 (= lt!2270057 (derivationStepZipperUp!939 lt!2270055 (h!69638 s!2326)))))

(assert (=> b!5679547 (= lt!2270050 (derivationStepZipperDown!1013 (h!69636 (exprs!5555 (h!69637 zl!343))) lt!2270055 (h!69638 s!2326)))))

(assert (=> b!5679547 (= lt!2270055 (Context!10111 (t!376624 (exprs!5555 (h!69637 zl!343)))))))

(declare-fun lt!2270053 () (InoxSet Context!10110))

(assert (=> b!5679547 (= lt!2270053 (derivationStepZipperUp!939 (Context!10111 (Cons!63188 (h!69636 (exprs!5555 (h!69637 zl!343))) (t!376624 (exprs!5555 (h!69637 zl!343))))) (h!69638 s!2326)))))

(declare-fun b!5679548 () Bool)

(declare-fun res!2399953 () Bool)

(assert (=> b!5679548 (=> res!2399953 e!3495644)))

(declare-fun isEmpty!35041 (List!63312) Bool)

(assert (=> b!5679548 (= res!2399953 (isEmpty!35041 (t!376624 (exprs!5555 (h!69637 zl!343)))))))

(declare-fun res!2399945 () Bool)

(assert (=> start!586332 (=> (not res!2399945) (not e!3495648))))

(declare-fun validRegex!7407 (Regex!15671) Bool)

(assert (=> start!586332 (= res!2399945 (validRegex!7407 r!7292))))

(assert (=> start!586332 e!3495648))

(assert (=> start!586332 e!3495638))

(declare-fun condSetEmpty!37989 () Bool)

(assert (=> start!586332 (= condSetEmpty!37989 (= z!1189 ((as const (Array Context!10110 Bool)) false)))))

(assert (=> start!586332 setRes!37989))

(assert (=> start!586332 e!3495647))

(assert (=> start!586332 e!3495642))

(declare-fun b!5679529 () Bool)

(declare-fun res!2399941 () Bool)

(assert (=> b!5679529 (=> res!2399941 e!3495639)))

(declare-fun isEmpty!35042 (List!63313) Bool)

(assert (=> b!5679529 (= res!2399941 (not (isEmpty!35042 (t!376625 zl!343))))))

(declare-fun b!5679549 () Bool)

(assert (=> b!5679549 (= e!3495638 tp_is_empty!40595)))

(declare-fun b!5679550 () Bool)

(declare-fun tp!1574923 () Bool)

(declare-fun tp!1574929 () Bool)

(assert (=> b!5679550 (= e!3495638 (and tp!1574923 tp!1574929))))

(declare-fun b!5679551 () Bool)

(assert (=> b!5679551 (= e!3495636 true)))

(declare-fun lt!2270042 () Context!10110)

(declare-fun lt!2270058 () (InoxSet Context!10110))

(assert (=> b!5679551 (= (flatMap!1284 lt!2270058 lambda!305993) (derivationStepZipperUp!939 lt!2270042 (h!69638 s!2326)))))

(declare-fun lt!2270056 () Unit!156216)

(assert (=> b!5679551 (= lt!2270056 (lemmaFlatMapOnSingletonSet!816 lt!2270058 lt!2270042 lambda!305993))))

(declare-fun lt!2270048 () (InoxSet Context!10110))

(assert (=> b!5679551 (= lt!2270048 (derivationStepZipperUp!939 lt!2270042 (h!69638 s!2326)))))

(assert (=> b!5679551 (= lt!2270058 (store ((as const (Array Context!10110 Bool)) false) lt!2270042 true))))

(assert (=> b!5679551 (= lt!2270042 (Context!10111 (Cons!63188 (reg!16000 (regOne!31854 r!7292)) lt!2270049)))))

(assert (= (and start!586332 res!2399945) b!5679538))

(assert (= (and b!5679538 res!2399943) b!5679525))

(assert (= (and b!5679525 res!2399950) b!5679546))

(assert (= (and b!5679546 (not res!2399944)) b!5679529))

(assert (= (and b!5679529 (not res!2399941)) b!5679539))

(assert (= (and b!5679539 (not res!2399940)) b!5679527))

(assert (= (and b!5679527 (not res!2399949)) b!5679542))

(assert (= (and b!5679542 (not res!2399938)) b!5679544))

(assert (= (and b!5679544 (not res!2399947)) b!5679526))

(assert (= (and b!5679526 (not res!2399951)) b!5679548))

(assert (= (and b!5679548 (not res!2399953)) b!5679547))

(assert (= (and b!5679547 c!999342) b!5679535))

(assert (= (and b!5679547 (not c!999342)) b!5679543))

(assert (= (and b!5679535 (not res!2399946)) b!5679545))

(assert (= (and b!5679547 (not res!2399948)) b!5679541))

(assert (= (and b!5679541 res!2399937) b!5679532))

(assert (= (and b!5679541 (not res!2399939)) b!5679540))

(assert (= (and b!5679540 (not res!2399942)) b!5679531))

(assert (= (and b!5679531 (not res!2399952)) b!5679551))

(assert (= (and start!586332 ((_ is ElementMatch!15671) r!7292)) b!5679549))

(assert (= (and start!586332 ((_ is Concat!24516) r!7292)) b!5679550))

(assert (= (and start!586332 ((_ is Star!15671) r!7292)) b!5679528))

(assert (= (and start!586332 ((_ is Union!15671) r!7292)) b!5679536))

(assert (= (and start!586332 condSetEmpty!37989) setIsEmpty!37989))

(assert (= (and start!586332 (not condSetEmpty!37989)) setNonEmpty!37989))

(assert (= setNonEmpty!37989 b!5679537))

(assert (= b!5679530 b!5679534))

(assert (= (and start!586332 ((_ is Cons!63189) zl!343)) b!5679530))

(assert (= (and start!586332 ((_ is Cons!63190) s!2326)) b!5679533))

(declare-fun m!6639250 () Bool)

(assert (=> b!5679545 m!6639250))

(declare-fun m!6639252 () Bool)

(assert (=> b!5679539 m!6639252))

(declare-fun m!6639254 () Bool)

(assert (=> b!5679551 m!6639254))

(declare-fun m!6639256 () Bool)

(assert (=> b!5679551 m!6639256))

(declare-fun m!6639258 () Bool)

(assert (=> b!5679551 m!6639258))

(declare-fun m!6639260 () Bool)

(assert (=> b!5679551 m!6639260))

(declare-fun m!6639262 () Bool)

(assert (=> b!5679547 m!6639262))

(declare-fun m!6639264 () Bool)

(assert (=> b!5679547 m!6639264))

(declare-fun m!6639266 () Bool)

(assert (=> b!5679547 m!6639266))

(declare-fun m!6639268 () Bool)

(assert (=> b!5679547 m!6639268))

(declare-fun m!6639270 () Bool)

(assert (=> b!5679547 m!6639270))

(declare-fun m!6639272 () Bool)

(assert (=> b!5679547 m!6639272))

(declare-fun m!6639274 () Bool)

(assert (=> b!5679547 m!6639274))

(declare-fun m!6639276 () Bool)

(assert (=> setNonEmpty!37989 m!6639276))

(declare-fun m!6639278 () Bool)

(assert (=> b!5679538 m!6639278))

(declare-fun m!6639280 () Bool)

(assert (=> b!5679525 m!6639280))

(declare-fun m!6639282 () Bool)

(assert (=> b!5679529 m!6639282))

(declare-fun m!6639284 () Bool)

(assert (=> b!5679546 m!6639284))

(declare-fun m!6639286 () Bool)

(assert (=> b!5679546 m!6639286))

(declare-fun m!6639288 () Bool)

(assert (=> b!5679546 m!6639288))

(declare-fun m!6639290 () Bool)

(assert (=> b!5679526 m!6639290))

(declare-fun m!6639292 () Bool)

(assert (=> b!5679526 m!6639292))

(declare-fun m!6639294 () Bool)

(assert (=> b!5679526 m!6639294))

(declare-fun m!6639296 () Bool)

(assert (=> b!5679526 m!6639296))

(assert (=> b!5679526 m!6639290))

(declare-fun m!6639298 () Bool)

(assert (=> b!5679526 m!6639298))

(declare-fun m!6639300 () Bool)

(assert (=> b!5679526 m!6639300))

(assert (=> b!5679526 m!6639296))

(declare-fun m!6639302 () Bool)

(assert (=> b!5679532 m!6639302))

(declare-fun m!6639304 () Bool)

(assert (=> b!5679542 m!6639304))

(assert (=> b!5679542 m!6639304))

(declare-fun m!6639306 () Bool)

(assert (=> b!5679542 m!6639306))

(declare-fun m!6639308 () Bool)

(assert (=> b!5679535 m!6639308))

(declare-fun m!6639310 () Bool)

(assert (=> b!5679535 m!6639310))

(declare-fun m!6639312 () Bool)

(assert (=> b!5679535 m!6639312))

(declare-fun m!6639314 () Bool)

(assert (=> start!586332 m!6639314))

(declare-fun m!6639316 () Bool)

(assert (=> b!5679548 m!6639316))

(declare-fun m!6639318 () Bool)

(assert (=> b!5679530 m!6639318))

(declare-fun m!6639320 () Bool)

(assert (=> b!5679531 m!6639320))

(check-sat (not setNonEmpty!37989) (not b!5679526) (not b!5679535) (not b!5679538) (not b!5679528) (not b!5679539) (not b!5679550) (not b!5679531) (not b!5679533) (not b!5679525) (not b!5679545) (not b!5679547) (not start!586332) (not b!5679532) (not b!5679537) (not b!5679548) (not b!5679534) (not b!5679529) (not b!5679536) tp_is_empty!40595 (not b!5679542) (not b!5679530) (not b!5679551) (not b!5679546))
(check-sat)
