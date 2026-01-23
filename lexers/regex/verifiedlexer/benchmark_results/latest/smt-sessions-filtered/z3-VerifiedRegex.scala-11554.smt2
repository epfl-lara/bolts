; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!636738 () Bool)

(assert start!636738)

(declare-fun b!6476306 () Bool)

(assert (=> b!6476306 true))

(assert (=> b!6476306 true))

(declare-fun lambda!358014 () Int)

(declare-fun lambda!358013 () Int)

(assert (=> b!6476306 (not (= lambda!358014 lambda!358013))))

(assert (=> b!6476306 true))

(assert (=> b!6476306 true))

(declare-fun b!6476340 () Bool)

(assert (=> b!6476340 true))

(declare-fun bs!1642263 () Bool)

(declare-fun b!6476300 () Bool)

(assert (= bs!1642263 (and b!6476300 b!6476306)))

(declare-datatypes ((C!32980 0))(
  ( (C!32981 (val!26192 Int)) )
))
(declare-datatypes ((Regex!16355 0))(
  ( (ElementMatch!16355 (c!1186089 C!32980)) (Concat!25200 (regOne!33222 Regex!16355) (regTwo!33222 Regex!16355)) (EmptyExpr!16355) (Star!16355 (reg!16684 Regex!16355)) (EmptyLang!16355) (Union!16355 (regOne!33223 Regex!16355) (regTwo!33223 Regex!16355)) )
))
(declare-fun r!7292 () Regex!16355)

(declare-fun lt!2385664 () Regex!16355)

(declare-fun lambda!358016 () Int)

(assert (=> bs!1642263 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358016 lambda!358013))))

(assert (=> bs!1642263 (not (= lambda!358016 lambda!358014))))

(assert (=> b!6476300 true))

(assert (=> b!6476300 true))

(assert (=> b!6476300 true))

(declare-fun lambda!358017 () Int)

(assert (=> bs!1642263 (not (= lambda!358017 lambda!358013))))

(assert (=> bs!1642263 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358017 lambda!358014))))

(assert (=> b!6476300 (not (= lambda!358017 lambda!358016))))

(assert (=> b!6476300 true))

(assert (=> b!6476300 true))

(assert (=> b!6476300 true))

(declare-fun bs!1642264 () Bool)

(declare-fun b!6476331 () Bool)

(assert (= bs!1642264 (and b!6476331 b!6476306)))

(declare-datatypes ((List!65364 0))(
  ( (Nil!65240) (Cons!65240 (h!71688 C!32980) (t!378988 List!65364)) )
))
(declare-fun s!2326 () List!65364)

(declare-datatypes ((tuple2!66668 0))(
  ( (tuple2!66669 (_1!36637 List!65364) (_2!36637 List!65364)) )
))
(declare-fun lt!2385678 () tuple2!66668)

(declare-fun lambda!358018 () Int)

(assert (=> bs!1642264 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358018 lambda!358013))))

(assert (=> bs!1642264 (not (= lambda!358018 lambda!358014))))

(declare-fun bs!1642265 () Bool)

(assert (= bs!1642265 (and b!6476331 b!6476300)))

(assert (=> bs!1642265 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358018 lambda!358016))))

(assert (=> bs!1642265 (not (= lambda!358018 lambda!358017))))

(assert (=> b!6476331 true))

(assert (=> b!6476331 true))

(assert (=> b!6476331 true))

(declare-fun lambda!358019 () Int)

(assert (=> bs!1642265 (not (= lambda!358019 lambda!358017))))

(assert (=> b!6476331 (not (= lambda!358019 lambda!358018))))

(assert (=> bs!1642264 (not (= lambda!358019 lambda!358014))))

(assert (=> bs!1642264 (not (= lambda!358019 lambda!358013))))

(assert (=> bs!1642265 (not (= lambda!358019 lambda!358016))))

(assert (=> b!6476331 true))

(assert (=> b!6476331 true))

(assert (=> b!6476331 true))

(declare-fun lambda!358020 () Int)

(assert (=> bs!1642265 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358020 lambda!358017))))

(assert (=> b!6476331 (not (= lambda!358020 lambda!358018))))

(assert (=> bs!1642264 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358020 lambda!358014))))

(assert (=> bs!1642264 (not (= lambda!358020 lambda!358013))))

(assert (=> bs!1642265 (not (= lambda!358020 lambda!358016))))

(assert (=> b!6476331 (not (= lambda!358020 lambda!358019))))

(assert (=> b!6476331 true))

(assert (=> b!6476331 true))

(assert (=> b!6476331 true))

(declare-fun b!6476298 () Bool)

(declare-fun e!3925718 () Bool)

(declare-fun e!3925722 () Bool)

(assert (=> b!6476298 (= e!3925718 e!3925722)))

(declare-fun res!2659250 () Bool)

(assert (=> b!6476298 (=> res!2659250 e!3925722)))

(declare-fun lt!2385652 () List!65364)

(assert (=> b!6476298 (= res!2659250 (not (= lt!2385652 s!2326)))))

(declare-fun lt!2385692 () tuple2!66668)

(declare-fun lt!2385693 () List!65364)

(declare-fun ++!14423 (List!65364 List!65364) List!65364)

(assert (=> b!6476298 (= lt!2385652 (++!14423 (_1!36637 lt!2385692) lt!2385693))))

(declare-fun lt!2385673 () List!65364)

(assert (=> b!6476298 (= lt!2385652 (++!14423 lt!2385673 (_2!36637 lt!2385678)))))

(assert (=> b!6476298 (= lt!2385693 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(declare-datatypes ((Unit!158751 0))(
  ( (Unit!158752) )
))
(declare-fun lt!2385644 () Unit!158751)

(declare-fun lemmaConcatAssociativity!2926 (List!65364 List!65364 List!65364) Unit!158751)

(assert (=> b!6476298 (= lt!2385644 (lemmaConcatAssociativity!2926 (_1!36637 lt!2385692) (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(declare-fun b!6476299 () Bool)

(declare-fun e!3925721 () Bool)

(declare-fun tp_is_empty!41963 () Bool)

(assert (=> b!6476299 (= e!3925721 tp_is_empty!41963)))

(declare-fun b!6476301 () Bool)

(declare-fun e!3925725 () Bool)

(declare-fun tp!1794910 () Bool)

(assert (=> b!6476301 (= e!3925725 (and tp_is_empty!41963 tp!1794910))))

(declare-fun b!6476302 () Bool)

(declare-fun res!2659245 () Bool)

(declare-fun e!3925723 () Bool)

(assert (=> b!6476302 (=> res!2659245 e!3925723)))

(declare-datatypes ((List!65365 0))(
  ( (Nil!65241) (Cons!65241 (h!71689 Regex!16355) (t!378989 List!65365)) )
))
(declare-datatypes ((Context!11478 0))(
  ( (Context!11479 (exprs!6239 List!65365)) )
))
(declare-datatypes ((List!65366 0))(
  ( (Nil!65242) (Cons!65242 (h!71690 Context!11478) (t!378990 List!65366)) )
))
(declare-fun zl!343 () List!65366)

(declare-fun isEmpty!37422 (List!65365) Bool)

(assert (=> b!6476302 (= res!2659245 (isEmpty!37422 (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun tp!1794915 () Bool)

(declare-fun e!3925715 () Bool)

(declare-fun e!3925728 () Bool)

(declare-fun b!6476303 () Bool)

(declare-fun inv!84134 (Context!11478) Bool)

(assert (=> b!6476303 (= e!3925715 (and (inv!84134 (h!71690 zl!343)) e!3925728 tp!1794915))))

(declare-fun b!6476304 () Bool)

(declare-fun res!2659239 () Bool)

(declare-fun e!3925735 () Bool)

(assert (=> b!6476304 (=> res!2659239 e!3925735)))

(declare-fun matchR!8538 (Regex!16355 List!65364) Bool)

(assert (=> b!6476304 (= res!2659239 (not (matchR!8538 lt!2385664 (_1!36637 lt!2385678))))))

(declare-fun b!6476305 () Bool)

(declare-fun res!2659228 () Bool)

(declare-fun e!3925729 () Bool)

(assert (=> b!6476305 (=> res!2659228 e!3925729)))

(declare-fun generalisedUnion!2199 (List!65365) Regex!16355)

(declare-fun unfocusZipperList!1776 (List!65366) List!65365)

(assert (=> b!6476305 (= res!2659228 (not (= r!7292 (generalisedUnion!2199 (unfocusZipperList!1776 zl!343)))))))

(assert (=> b!6476306 (= e!3925729 e!3925723)))

(declare-fun res!2659226 () Bool)

(assert (=> b!6476306 (=> res!2659226 e!3925723)))

(declare-fun lt!2385681 () Bool)

(declare-fun lt!2385682 () Bool)

(get-info :version)

(assert (=> b!6476306 (= res!2659226 (or (not (= lt!2385681 lt!2385682)) ((_ is Nil!65240) s!2326)))))

(declare-fun Exists!3425 (Int) Bool)

(assert (=> b!6476306 (= (Exists!3425 lambda!358013) (Exists!3425 lambda!358014))))

(declare-fun lt!2385691 () Unit!158751)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1962 (Regex!16355 Regex!16355 List!65364) Unit!158751)

(assert (=> b!6476306 (= lt!2385691 (lemmaExistCutMatchRandMatchRSpecEquivalent!1962 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326))))

(assert (=> b!6476306 (= lt!2385682 (Exists!3425 lambda!358013))))

(declare-datatypes ((Option!16246 0))(
  ( (None!16245) (Some!16245 (v!52424 tuple2!66668)) )
))
(declare-fun isDefined!12949 (Option!16246) Bool)

(declare-fun findConcatSeparation!2660 (Regex!16355 Regex!16355 List!65364 List!65364 List!65364) Option!16246)

(assert (=> b!6476306 (= lt!2385682 (isDefined!12949 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)))))

(declare-fun lt!2385649 () Unit!158751)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2424 (Regex!16355 Regex!16355 List!65364) Unit!158751)

(assert (=> b!6476306 (= lt!2385649 (lemmaFindConcatSeparationEquivalentToExists!2424 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326))))

(declare-fun b!6476307 () Bool)

(declare-fun res!2659242 () Bool)

(declare-fun e!3925724 () Bool)

(assert (=> b!6476307 (=> res!2659242 e!3925724)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2385661 () (InoxSet Context!11478))

(declare-fun lt!2385647 () (InoxSet Context!11478))

(declare-fun matchZipper!2367 ((InoxSet Context!11478) List!65364) Bool)

(assert (=> b!6476307 (= res!2659242 (not (= (matchZipper!2367 lt!2385647 s!2326) (matchZipper!2367 lt!2385661 (t!378988 s!2326)))))))

(declare-fun b!6476308 () Bool)

(declare-fun res!2659229 () Bool)

(declare-fun e!3925726 () Bool)

(assert (=> b!6476308 (=> res!2659229 e!3925726)))

(assert (=> b!6476308 (= res!2659229 (or ((_ is Concat!25200) (regOne!33222 r!7292)) (not ((_ is Star!16355) (regOne!33222 r!7292)))))))

(declare-fun b!6476309 () Bool)

(declare-fun e!3925733 () Unit!158751)

(declare-fun Unit!158753 () Unit!158751)

(assert (=> b!6476309 (= e!3925733 Unit!158753)))

(declare-fun lt!2385694 () (InoxSet Context!11478))

(declare-fun lt!2385653 () Unit!158751)

(declare-fun lt!2385659 () (InoxSet Context!11478))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1186 ((InoxSet Context!11478) (InoxSet Context!11478) List!65364) Unit!158751)

(assert (=> b!6476309 (= lt!2385653 (lemmaZipperConcatMatchesSameAsBothZippers!1186 lt!2385694 lt!2385659 (t!378988 s!2326)))))

(declare-fun res!2659240 () Bool)

(assert (=> b!6476309 (= res!2659240 (matchZipper!2367 lt!2385694 (t!378988 s!2326)))))

(declare-fun e!3925737 () Bool)

(assert (=> b!6476309 (=> res!2659240 e!3925737)))

(assert (=> b!6476309 (= (matchZipper!2367 ((_ map or) lt!2385694 lt!2385659) (t!378988 s!2326)) e!3925737)))

(declare-fun e!3925732 () Bool)

(assert (=> b!6476300 (= e!3925732 e!3925735)))

(declare-fun res!2659231 () Bool)

(assert (=> b!6476300 (=> res!2659231 e!3925735)))

(assert (=> b!6476300 (= res!2659231 (not (= (++!14423 (_1!36637 lt!2385678) (_2!36637 lt!2385678)) s!2326)))))

(declare-fun lt!2385689 () Option!16246)

(declare-fun get!22616 (Option!16246) tuple2!66668)

(assert (=> b!6476300 (= lt!2385678 (get!22616 lt!2385689))))

(assert (=> b!6476300 (= (Exists!3425 lambda!358016) (Exists!3425 lambda!358017))))

(declare-fun lt!2385655 () Unit!158751)

(assert (=> b!6476300 (= lt!2385655 (lemmaExistCutMatchRandMatchRSpecEquivalent!1962 lt!2385664 (regTwo!33222 r!7292) s!2326))))

(assert (=> b!6476300 (= (isDefined!12949 lt!2385689) (Exists!3425 lambda!358016))))

(assert (=> b!6476300 (= lt!2385689 (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326))))

(declare-fun lt!2385666 () Unit!158751)

(assert (=> b!6476300 (= lt!2385666 (lemmaFindConcatSeparationEquivalentToExists!2424 lt!2385664 (regTwo!33222 r!7292) s!2326))))

(declare-fun res!2659230 () Bool)

(declare-fun e!3925731 () Bool)

(assert (=> start!636738 (=> (not res!2659230) (not e!3925731))))

(declare-fun validRegex!8091 (Regex!16355) Bool)

(assert (=> start!636738 (= res!2659230 (validRegex!8091 r!7292))))

(assert (=> start!636738 e!3925731))

(assert (=> start!636738 e!3925721))

(declare-fun condSetEmpty!44113 () Bool)

(declare-fun z!1189 () (InoxSet Context!11478))

(assert (=> start!636738 (= condSetEmpty!44113 (= z!1189 ((as const (Array Context!11478 Bool)) false)))))

(declare-fun setRes!44113 () Bool)

(assert (=> start!636738 setRes!44113))

(assert (=> start!636738 e!3925715))

(assert (=> start!636738 e!3925725))

(declare-fun b!6476310 () Bool)

(declare-fun e!3925734 () Bool)

(declare-fun e!3925736 () Bool)

(assert (=> b!6476310 (= e!3925734 e!3925736)))

(declare-fun res!2659234 () Bool)

(assert (=> b!6476310 (=> res!2659234 e!3925736)))

(declare-fun lt!2385662 () Context!11478)

(declare-fun lt!2385680 () Regex!16355)

(declare-fun unfocusZipper!2097 (List!65366) Regex!16355)

(assert (=> b!6476310 (= res!2659234 (not (= (unfocusZipper!2097 (Cons!65242 lt!2385662 Nil!65242)) lt!2385680)))))

(declare-fun lt!2385687 () Regex!16355)

(assert (=> b!6476310 (= lt!2385680 (Concat!25200 (reg!16684 (regOne!33222 r!7292)) lt!2385687))))

(declare-fun b!6476311 () Bool)

(declare-fun e!3925716 () Bool)

(assert (=> b!6476311 (= e!3925731 e!3925716)))

(declare-fun res!2659232 () Bool)

(assert (=> b!6476311 (=> (not res!2659232) (not e!3925716))))

(declare-fun lt!2385648 () Regex!16355)

(assert (=> b!6476311 (= res!2659232 (= r!7292 lt!2385648))))

(assert (=> b!6476311 (= lt!2385648 (unfocusZipper!2097 zl!343))))

(declare-fun b!6476312 () Bool)

(declare-fun res!2659243 () Bool)

(assert (=> b!6476312 (=> res!2659243 e!3925722)))

(assert (=> b!6476312 (= res!2659243 (not (matchR!8538 lt!2385664 (_2!36637 lt!2385692))))))

(declare-fun b!6476313 () Bool)

(assert (=> b!6476313 (= e!3925737 (matchZipper!2367 lt!2385659 (t!378988 s!2326)))))

(declare-fun b!6476314 () Bool)

(declare-fun e!3925738 () Bool)

(declare-fun e!3925720 () Bool)

(assert (=> b!6476314 (= e!3925738 e!3925720)))

(declare-fun res!2659227 () Bool)

(assert (=> b!6476314 (=> res!2659227 e!3925720)))

(declare-fun lt!2385686 () List!65366)

(assert (=> b!6476314 (= res!2659227 (not (= (unfocusZipper!2097 lt!2385686) lt!2385687)))))

(declare-fun lt!2385665 () Context!11478)

(assert (=> b!6476314 (= lt!2385686 (Cons!65242 lt!2385665 Nil!65242))))

(declare-fun b!6476315 () Bool)

(declare-fun res!2659246 () Bool)

(assert (=> b!6476315 (=> res!2659246 e!3925729)))

(declare-fun generalisedConcat!1952 (List!65365) Regex!16355)

(assert (=> b!6476315 (= res!2659246 (not (= r!7292 (generalisedConcat!1952 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6476316 () Bool)

(declare-fun e!3925719 () Bool)

(declare-fun nullable!6348 (Regex!16355) Bool)

(assert (=> b!6476316 (= e!3925719 (nullable!6348 (regOne!33222 (regOne!33222 r!7292))))))

(declare-fun b!6476317 () Bool)

(declare-fun res!2659235 () Bool)

(assert (=> b!6476317 (=> res!2659235 e!3925729)))

(assert (=> b!6476317 (= res!2659235 (or ((_ is EmptyExpr!16355) r!7292) ((_ is EmptyLang!16355) r!7292) ((_ is ElementMatch!16355) r!7292) ((_ is Union!16355) r!7292) (not ((_ is Concat!25200) r!7292))))))

(declare-fun b!6476318 () Bool)

(declare-fun res!2659225 () Bool)

(assert (=> b!6476318 (=> res!2659225 e!3925726)))

(assert (=> b!6476318 (= res!2659225 e!3925719)))

(declare-fun res!2659237 () Bool)

(assert (=> b!6476318 (=> (not res!2659237) (not e!3925719))))

(assert (=> b!6476318 (= res!2659237 ((_ is Concat!25200) (regOne!33222 r!7292)))))

(declare-fun setIsEmpty!44113 () Bool)

(assert (=> setIsEmpty!44113 setRes!44113))

(declare-fun b!6476319 () Bool)

(declare-fun res!2659252 () Bool)

(assert (=> b!6476319 (=> (not res!2659252) (not e!3925731))))

(declare-fun toList!10139 ((InoxSet Context!11478)) List!65366)

(assert (=> b!6476319 (= res!2659252 (= (toList!10139 z!1189) zl!343))))

(declare-fun b!6476320 () Bool)

(declare-fun e!3925727 () Bool)

(assert (=> b!6476320 (= e!3925726 e!3925727)))

(declare-fun res!2659222 () Bool)

(assert (=> b!6476320 (=> res!2659222 e!3925727)))

(declare-fun lt!2385672 () (InoxSet Context!11478))

(assert (=> b!6476320 (= res!2659222 (not (= lt!2385694 lt!2385672)))))

(declare-fun derivationStepZipperDown!1603 (Regex!16355 Context!11478 C!32980) (InoxSet Context!11478))

(assert (=> b!6476320 (= lt!2385672 (derivationStepZipperDown!1603 (reg!16684 (regOne!33222 r!7292)) lt!2385665 (h!71688 s!2326)))))

(declare-fun lt!2385646 () List!65365)

(assert (=> b!6476320 (= lt!2385665 (Context!11479 lt!2385646))))

(assert (=> b!6476320 (= lt!2385646 (Cons!65241 lt!2385664 (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> b!6476320 (= lt!2385664 (Star!16355 (reg!16684 (regOne!33222 r!7292))))))

(declare-fun tp!1794911 () Bool)

(declare-fun e!3925717 () Bool)

(declare-fun setElem!44113 () Context!11478)

(declare-fun setNonEmpty!44113 () Bool)

(assert (=> setNonEmpty!44113 (= setRes!44113 (and tp!1794911 (inv!84134 setElem!44113) e!3925717))))

(declare-fun setRest!44113 () (InoxSet Context!11478))

(assert (=> setNonEmpty!44113 (= z!1189 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) setElem!44113 true) setRest!44113))))

(declare-fun b!6476321 () Bool)

(declare-fun res!2659251 () Bool)

(assert (=> b!6476321 (=> res!2659251 e!3925729)))

(assert (=> b!6476321 (= res!2659251 (not ((_ is Cons!65241) (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6476322 () Bool)

(declare-fun res!2659236 () Bool)

(assert (=> b!6476322 (=> res!2659236 e!3925735)))

(assert (=> b!6476322 (= res!2659236 (not (matchR!8538 (regTwo!33222 r!7292) (_2!36637 lt!2385678))))))

(declare-fun b!6476323 () Bool)

(declare-fun res!2659224 () Bool)

(assert (=> b!6476323 (=> res!2659224 e!3925729)))

(declare-fun isEmpty!37423 (List!65366) Bool)

(assert (=> b!6476323 (= res!2659224 (not (isEmpty!37423 (t!378990 zl!343))))))

(declare-fun b!6476324 () Bool)

(declare-fun tp!1794907 () Bool)

(declare-fun tp!1794913 () Bool)

(assert (=> b!6476324 (= e!3925721 (and tp!1794907 tp!1794913))))

(declare-fun b!6476325 () Bool)

(assert (=> b!6476325 (= e!3925736 e!3925738)))

(declare-fun res!2659219 () Bool)

(assert (=> b!6476325 (=> res!2659219 e!3925738)))

(declare-fun lt!2385642 () List!65366)

(assert (=> b!6476325 (= res!2659219 (not (= (unfocusZipper!2097 lt!2385642) (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun lt!2385676 () Context!11478)

(assert (=> b!6476325 (= lt!2385642 (Cons!65242 lt!2385676 Nil!65242))))

(declare-fun lambda!358015 () Int)

(declare-fun lt!2385677 () (InoxSet Context!11478))

(declare-fun flatMap!1860 ((InoxSet Context!11478) Int) (InoxSet Context!11478))

(declare-fun derivationStepZipperUp!1529 (Context!11478 C!32980) (InoxSet Context!11478))

(assert (=> b!6476325 (= (flatMap!1860 lt!2385677 lambda!358015) (derivationStepZipperUp!1529 lt!2385665 (h!71688 s!2326)))))

(declare-fun lt!2385674 () Unit!158751)

(declare-fun lemmaFlatMapOnSingletonSet!1386 ((InoxSet Context!11478) Context!11478 Int) Unit!158751)

(assert (=> b!6476325 (= lt!2385674 (lemmaFlatMapOnSingletonSet!1386 lt!2385677 lt!2385665 lambda!358015))))

(declare-fun lt!2385643 () (InoxSet Context!11478))

(assert (=> b!6476325 (= (flatMap!1860 lt!2385643 lambda!358015) (derivationStepZipperUp!1529 lt!2385676 (h!71688 s!2326)))))

(declare-fun lt!2385656 () Unit!158751)

(assert (=> b!6476325 (= lt!2385656 (lemmaFlatMapOnSingletonSet!1386 lt!2385643 lt!2385676 lambda!358015))))

(declare-fun lt!2385690 () (InoxSet Context!11478))

(assert (=> b!6476325 (= lt!2385690 (derivationStepZipperUp!1529 lt!2385665 (h!71688 s!2326)))))

(declare-fun lt!2385660 () (InoxSet Context!11478))

(assert (=> b!6476325 (= lt!2385660 (derivationStepZipperUp!1529 lt!2385676 (h!71688 s!2326)))))

(assert (=> b!6476325 (= lt!2385677 (store ((as const (Array Context!11478 Bool)) false) lt!2385665 true))))

(assert (=> b!6476325 (= lt!2385643 (store ((as const (Array Context!11478 Bool)) false) lt!2385676 true))))

(assert (=> b!6476325 (= lt!2385676 (Context!11479 (Cons!65241 (reg!16684 (regOne!33222 r!7292)) Nil!65241)))))

(declare-fun b!6476326 () Bool)

(assert (=> b!6476326 (= e!3925727 e!3925724)))

(declare-fun res!2659220 () Bool)

(assert (=> b!6476326 (=> res!2659220 e!3925724)))

(assert (=> b!6476326 (= res!2659220 (not (= lt!2385661 lt!2385672)))))

(assert (=> b!6476326 (= (flatMap!1860 lt!2385647 lambda!358015) (derivationStepZipperUp!1529 lt!2385662 (h!71688 s!2326)))))

(declare-fun lt!2385675 () Unit!158751)

(assert (=> b!6476326 (= lt!2385675 (lemmaFlatMapOnSingletonSet!1386 lt!2385647 lt!2385662 lambda!358015))))

(declare-fun lt!2385683 () (InoxSet Context!11478))

(assert (=> b!6476326 (= lt!2385683 (derivationStepZipperUp!1529 lt!2385662 (h!71688 s!2326)))))

(declare-fun derivationStepZipper!2321 ((InoxSet Context!11478) C!32980) (InoxSet Context!11478))

(assert (=> b!6476326 (= lt!2385661 (derivationStepZipper!2321 lt!2385647 (h!71688 s!2326)))))

(assert (=> b!6476326 (= lt!2385647 (store ((as const (Array Context!11478 Bool)) false) lt!2385662 true))))

(assert (=> b!6476326 (= lt!2385662 (Context!11479 (Cons!65241 (reg!16684 (regOne!33222 r!7292)) lt!2385646)))))

(declare-fun b!6476327 () Bool)

(declare-fun tp!1794912 () Bool)

(assert (=> b!6476327 (= e!3925721 tp!1794912)))

(declare-fun b!6476328 () Bool)

(declare-fun e!3925730 () Bool)

(declare-fun lt!2385679 () Bool)

(assert (=> b!6476328 (= e!3925730 (or (not lt!2385681) lt!2385679))))

(declare-fun b!6476329 () Bool)

(declare-fun tp!1794914 () Bool)

(assert (=> b!6476329 (= e!3925717 tp!1794914)))

(declare-fun b!6476330 () Bool)

(declare-fun Unit!158754 () Unit!158751)

(assert (=> b!6476330 (= e!3925733 Unit!158754)))

(assert (=> b!6476331 (= e!3925735 e!3925718)))

(declare-fun res!2659233 () Bool)

(assert (=> b!6476331 (=> res!2659233 e!3925718)))

(assert (=> b!6476331 (= res!2659233 (not (= (_1!36637 lt!2385678) lt!2385673)))))

(assert (=> b!6476331 (= lt!2385673 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))

(declare-fun lt!2385668 () Option!16246)

(assert (=> b!6476331 (= lt!2385692 (get!22616 lt!2385668))))

(assert (=> b!6476331 (= (Exists!3425 lambda!358018) (Exists!3425 lambda!358020))))

(declare-fun lt!2385654 () Unit!158751)

(assert (=> b!6476331 (= lt!2385654 (lemmaExistCutMatchRandMatchRSpecEquivalent!1962 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)))))

(assert (=> b!6476331 (= (Exists!3425 lambda!358018) (Exists!3425 lambda!358019))))

(declare-fun lt!2385684 () Unit!158751)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!646 (Regex!16355 List!65364) Unit!158751)

(assert (=> b!6476331 (= lt!2385684 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!646 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385678)))))

(assert (=> b!6476331 (= (isDefined!12949 lt!2385668) (Exists!3425 lambda!358018))))

(assert (=> b!6476331 (= lt!2385668 (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 Nil!65240 (_1!36637 lt!2385678) (_1!36637 lt!2385678)))))

(declare-fun lt!2385671 () Unit!158751)

(assert (=> b!6476331 (= lt!2385671 (lemmaFindConcatSeparationEquivalentToExists!2424 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)))))

(declare-fun matchRSpec!3456 (Regex!16355 List!65364) Bool)

(assert (=> b!6476331 (matchRSpec!3456 lt!2385664 (_1!36637 lt!2385678))))

(declare-fun lt!2385667 () Unit!158751)

(declare-fun mainMatchTheorem!3456 (Regex!16355 List!65364) Unit!158751)

(assert (=> b!6476331 (= lt!2385667 (mainMatchTheorem!3456 lt!2385664 (_1!36637 lt!2385678)))))

(declare-fun b!6476332 () Bool)

(assert (=> b!6476332 (= e!3925724 e!3925734)))

(declare-fun res!2659248 () Bool)

(assert (=> b!6476332 (=> res!2659248 e!3925734)))

(assert (=> b!6476332 (= res!2659248 (not (= r!7292 lt!2385687)))))

(assert (=> b!6476332 (= lt!2385687 (Concat!25200 lt!2385664 (regTwo!33222 r!7292)))))

(declare-fun b!6476333 () Bool)

(declare-fun tp!1794909 () Bool)

(declare-fun tp!1794908 () Bool)

(assert (=> b!6476333 (= e!3925721 (and tp!1794909 tp!1794908))))

(declare-fun b!6476334 () Bool)

(declare-fun tp!1794916 () Bool)

(assert (=> b!6476334 (= e!3925728 tp!1794916)))

(declare-fun b!6476335 () Bool)

(assert (=> b!6476335 (= e!3925722 (inv!84134 lt!2385676))))

(assert (=> b!6476335 (matchZipper!2367 lt!2385677 lt!2385693)))

(declare-fun lt!2385685 () Unit!158751)

(declare-fun theoremZipperRegexEquiv!821 ((InoxSet Context!11478) List!65366 Regex!16355 List!65364) Unit!158751)

(assert (=> b!6476335 (= lt!2385685 (theoremZipperRegexEquiv!821 lt!2385677 lt!2385686 lt!2385687 lt!2385693))))

(assert (=> b!6476335 (matchZipper!2367 lt!2385643 (_1!36637 lt!2385692))))

(declare-fun lt!2385650 () Unit!158751)

(assert (=> b!6476335 (= lt!2385650 (theoremZipperRegexEquiv!821 lt!2385643 lt!2385642 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692)))))

(assert (=> b!6476335 (matchR!8538 lt!2385687 lt!2385693)))

(declare-fun lt!2385663 () Unit!158751)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!318 (Regex!16355 Regex!16355 List!65364 List!65364) Unit!158751)

(assert (=> b!6476335 (= lt!2385663 (lemmaTwoRegexMatchThenConcatMatchesConcatString!318 lt!2385664 (regTwo!33222 r!7292) (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(assert (=> b!6476335 (matchR!8538 lt!2385664 lt!2385673)))

(declare-fun lt!2385669 () Unit!158751)

(declare-fun lemmaStarApp!132 (Regex!16355 List!65364 List!65364) Unit!158751)

(assert (=> b!6476335 (= lt!2385669 (lemmaStarApp!132 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))

(declare-fun b!6476336 () Bool)

(assert (=> b!6476336 (= e!3925720 e!3925732)))

(declare-fun res!2659221 () Bool)

(assert (=> b!6476336 (=> res!2659221 e!3925732)))

(assert (=> b!6476336 (= res!2659221 (not lt!2385681))))

(assert (=> b!6476336 e!3925730))

(declare-fun res!2659247 () Bool)

(assert (=> b!6476336 (=> (not res!2659247) (not e!3925730))))

(assert (=> b!6476336 (= res!2659247 (= (matchR!8538 lt!2385680 s!2326) (matchRSpec!3456 lt!2385680 s!2326)))))

(declare-fun lt!2385658 () Unit!158751)

(assert (=> b!6476336 (= lt!2385658 (mainMatchTheorem!3456 lt!2385680 s!2326))))

(declare-fun b!6476337 () Bool)

(declare-fun res!2659241 () Bool)

(assert (=> b!6476337 (=> res!2659241 e!3925724)))

(assert (=> b!6476337 (= res!2659241 (not (= lt!2385648 r!7292)))))

(declare-fun b!6476338 () Bool)

(declare-fun res!2659244 () Bool)

(assert (=> b!6476338 (=> res!2659244 e!3925722)))

(assert (=> b!6476338 (= res!2659244 (not (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692))))))

(declare-fun b!6476339 () Bool)

(assert (=> b!6476339 (= e!3925716 (not e!3925729))))

(declare-fun res!2659249 () Bool)

(assert (=> b!6476339 (=> res!2659249 e!3925729)))

(assert (=> b!6476339 (= res!2659249 (not ((_ is Cons!65242) zl!343)))))

(assert (=> b!6476339 (= lt!2385681 lt!2385679)))

(assert (=> b!6476339 (= lt!2385679 (matchRSpec!3456 r!7292 s!2326))))

(assert (=> b!6476339 (= lt!2385681 (matchR!8538 r!7292 s!2326))))

(declare-fun lt!2385670 () Unit!158751)

(assert (=> b!6476339 (= lt!2385670 (mainMatchTheorem!3456 r!7292 s!2326))))

(assert (=> b!6476340 (= e!3925723 e!3925726)))

(declare-fun res!2659223 () Bool)

(assert (=> b!6476340 (=> res!2659223 e!3925726)))

(assert (=> b!6476340 (= res!2659223 (or (and ((_ is ElementMatch!16355) (regOne!33222 r!7292)) (= (c!1186089 (regOne!33222 r!7292)) (h!71688 s!2326))) ((_ is Union!16355) (regOne!33222 r!7292))))))

(declare-fun lt!2385645 () Unit!158751)

(assert (=> b!6476340 (= lt!2385645 e!3925733)))

(declare-fun c!1186088 () Bool)

(assert (=> b!6476340 (= c!1186088 (nullable!6348 (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> b!6476340 (= (flatMap!1860 z!1189 lambda!358015) (derivationStepZipperUp!1529 (h!71690 zl!343) (h!71688 s!2326)))))

(declare-fun lt!2385651 () Unit!158751)

(assert (=> b!6476340 (= lt!2385651 (lemmaFlatMapOnSingletonSet!1386 z!1189 (h!71690 zl!343) lambda!358015))))

(declare-fun lt!2385688 () Context!11478)

(assert (=> b!6476340 (= lt!2385659 (derivationStepZipperUp!1529 lt!2385688 (h!71688 s!2326)))))

(assert (=> b!6476340 (= lt!2385694 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (h!71690 zl!343))) lt!2385688 (h!71688 s!2326)))))

(assert (=> b!6476340 (= lt!2385688 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun lt!2385657 () (InoxSet Context!11478))

(assert (=> b!6476340 (= lt!2385657 (derivationStepZipperUp!1529 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))) (h!71688 s!2326)))))

(declare-fun b!6476341 () Bool)

(declare-fun res!2659238 () Bool)

(assert (=> b!6476341 (=> res!2659238 e!3925735)))

(declare-fun isEmpty!37424 (List!65364) Bool)

(assert (=> b!6476341 (= res!2659238 (isEmpty!37424 (_1!36637 lt!2385678)))))

(assert (= (and start!636738 res!2659230) b!6476319))

(assert (= (and b!6476319 res!2659252) b!6476311))

(assert (= (and b!6476311 res!2659232) b!6476339))

(assert (= (and b!6476339 (not res!2659249)) b!6476323))

(assert (= (and b!6476323 (not res!2659224)) b!6476315))

(assert (= (and b!6476315 (not res!2659246)) b!6476321))

(assert (= (and b!6476321 (not res!2659251)) b!6476305))

(assert (= (and b!6476305 (not res!2659228)) b!6476317))

(assert (= (and b!6476317 (not res!2659235)) b!6476306))

(assert (= (and b!6476306 (not res!2659226)) b!6476302))

(assert (= (and b!6476302 (not res!2659245)) b!6476340))

(assert (= (and b!6476340 c!1186088) b!6476309))

(assert (= (and b!6476340 (not c!1186088)) b!6476330))

(assert (= (and b!6476309 (not res!2659240)) b!6476313))

(assert (= (and b!6476340 (not res!2659223)) b!6476318))

(assert (= (and b!6476318 res!2659237) b!6476316))

(assert (= (and b!6476318 (not res!2659225)) b!6476308))

(assert (= (and b!6476308 (not res!2659229)) b!6476320))

(assert (= (and b!6476320 (not res!2659222)) b!6476326))

(assert (= (and b!6476326 (not res!2659220)) b!6476307))

(assert (= (and b!6476307 (not res!2659242)) b!6476337))

(assert (= (and b!6476337 (not res!2659241)) b!6476332))

(assert (= (and b!6476332 (not res!2659248)) b!6476310))

(assert (= (and b!6476310 (not res!2659234)) b!6476325))

(assert (= (and b!6476325 (not res!2659219)) b!6476314))

(assert (= (and b!6476314 (not res!2659227)) b!6476336))

(assert (= (and b!6476336 res!2659247) b!6476328))

(assert (= (and b!6476336 (not res!2659221)) b!6476300))

(assert (= (and b!6476300 (not res!2659231)) b!6476304))

(assert (= (and b!6476304 (not res!2659239)) b!6476322))

(assert (= (and b!6476322 (not res!2659236)) b!6476341))

(assert (= (and b!6476341 (not res!2659238)) b!6476331))

(assert (= (and b!6476331 (not res!2659233)) b!6476298))

(assert (= (and b!6476298 (not res!2659250)) b!6476338))

(assert (= (and b!6476338 (not res!2659244)) b!6476312))

(assert (= (and b!6476312 (not res!2659243)) b!6476335))

(assert (= (and start!636738 ((_ is ElementMatch!16355) r!7292)) b!6476299))

(assert (= (and start!636738 ((_ is Concat!25200) r!7292)) b!6476333))

(assert (= (and start!636738 ((_ is Star!16355) r!7292)) b!6476327))

(assert (= (and start!636738 ((_ is Union!16355) r!7292)) b!6476324))

(assert (= (and start!636738 condSetEmpty!44113) setIsEmpty!44113))

(assert (= (and start!636738 (not condSetEmpty!44113)) setNonEmpty!44113))

(assert (= setNonEmpty!44113 b!6476329))

(assert (= b!6476303 b!6476334))

(assert (= (and start!636738 ((_ is Cons!65242) zl!343)) b!6476303))

(assert (= (and start!636738 ((_ is Cons!65240) s!2326)) b!6476301))

(declare-fun m!7264504 () Bool)

(assert (=> b!6476307 m!7264504))

(declare-fun m!7264506 () Bool)

(assert (=> b!6476307 m!7264506))

(declare-fun m!7264508 () Bool)

(assert (=> b!6476305 m!7264508))

(assert (=> b!6476305 m!7264508))

(declare-fun m!7264510 () Bool)

(assert (=> b!6476305 m!7264510))

(declare-fun m!7264512 () Bool)

(assert (=> b!6476303 m!7264512))

(declare-fun m!7264514 () Bool)

(assert (=> b!6476336 m!7264514))

(declare-fun m!7264516 () Bool)

(assert (=> b!6476336 m!7264516))

(declare-fun m!7264518 () Bool)

(assert (=> b!6476336 m!7264518))

(declare-fun m!7264520 () Bool)

(assert (=> b!6476302 m!7264520))

(declare-fun m!7264522 () Bool)

(assert (=> b!6476306 m!7264522))

(declare-fun m!7264524 () Bool)

(assert (=> b!6476306 m!7264524))

(declare-fun m!7264526 () Bool)

(assert (=> b!6476306 m!7264526))

(declare-fun m!7264528 () Bool)

(assert (=> b!6476306 m!7264528))

(assert (=> b!6476306 m!7264528))

(declare-fun m!7264530 () Bool)

(assert (=> b!6476306 m!7264530))

(assert (=> b!6476306 m!7264524))

(declare-fun m!7264532 () Bool)

(assert (=> b!6476306 m!7264532))

(declare-fun m!7264534 () Bool)

(assert (=> b!6476325 m!7264534))

(declare-fun m!7264536 () Bool)

(assert (=> b!6476325 m!7264536))

(declare-fun m!7264538 () Bool)

(assert (=> b!6476325 m!7264538))

(declare-fun m!7264540 () Bool)

(assert (=> b!6476325 m!7264540))

(declare-fun m!7264542 () Bool)

(assert (=> b!6476325 m!7264542))

(declare-fun m!7264544 () Bool)

(assert (=> b!6476325 m!7264544))

(declare-fun m!7264546 () Bool)

(assert (=> b!6476325 m!7264546))

(declare-fun m!7264548 () Bool)

(assert (=> b!6476325 m!7264548))

(declare-fun m!7264550 () Bool)

(assert (=> b!6476325 m!7264550))

(declare-fun m!7264552 () Bool)

(assert (=> b!6476320 m!7264552))

(declare-fun m!7264554 () Bool)

(assert (=> b!6476311 m!7264554))

(declare-fun m!7264556 () Bool)

(assert (=> b!6476309 m!7264556))

(declare-fun m!7264558 () Bool)

(assert (=> b!6476309 m!7264558))

(declare-fun m!7264560 () Bool)

(assert (=> b!6476309 m!7264560))

(declare-fun m!7264562 () Bool)

(assert (=> b!6476339 m!7264562))

(declare-fun m!7264564 () Bool)

(assert (=> b!6476339 m!7264564))

(declare-fun m!7264566 () Bool)

(assert (=> b!6476339 m!7264566))

(declare-fun m!7264568 () Bool)

(assert (=> b!6476323 m!7264568))

(declare-fun m!7264570 () Bool)

(assert (=> start!636738 m!7264570))

(declare-fun m!7264572 () Bool)

(assert (=> b!6476322 m!7264572))

(declare-fun m!7264574 () Bool)

(assert (=> b!6476314 m!7264574))

(declare-fun m!7264576 () Bool)

(assert (=> b!6476312 m!7264576))

(declare-fun m!7264578 () Bool)

(assert (=> b!6476319 m!7264578))

(declare-fun m!7264580 () Bool)

(assert (=> b!6476326 m!7264580))

(declare-fun m!7264582 () Bool)

(assert (=> b!6476326 m!7264582))

(declare-fun m!7264584 () Bool)

(assert (=> b!6476326 m!7264584))

(declare-fun m!7264586 () Bool)

(assert (=> b!6476326 m!7264586))

(declare-fun m!7264588 () Bool)

(assert (=> b!6476326 m!7264588))

(declare-fun m!7264590 () Bool)

(assert (=> b!6476341 m!7264590))

(declare-fun m!7264592 () Bool)

(assert (=> b!6476298 m!7264592))

(declare-fun m!7264594 () Bool)

(assert (=> b!6476298 m!7264594))

(declare-fun m!7264596 () Bool)

(assert (=> b!6476298 m!7264596))

(declare-fun m!7264598 () Bool)

(assert (=> b!6476298 m!7264598))

(declare-fun m!7264600 () Bool)

(assert (=> b!6476313 m!7264600))

(declare-fun m!7264602 () Bool)

(assert (=> b!6476335 m!7264602))

(declare-fun m!7264604 () Bool)

(assert (=> b!6476335 m!7264604))

(declare-fun m!7264606 () Bool)

(assert (=> b!6476335 m!7264606))

(declare-fun m!7264608 () Bool)

(assert (=> b!6476335 m!7264608))

(declare-fun m!7264610 () Bool)

(assert (=> b!6476335 m!7264610))

(declare-fun m!7264612 () Bool)

(assert (=> b!6476335 m!7264612))

(declare-fun m!7264614 () Bool)

(assert (=> b!6476335 m!7264614))

(declare-fun m!7264616 () Bool)

(assert (=> b!6476335 m!7264616))

(declare-fun m!7264618 () Bool)

(assert (=> b!6476335 m!7264618))

(declare-fun m!7264620 () Bool)

(assert (=> b!6476316 m!7264620))

(declare-fun m!7264622 () Bool)

(assert (=> b!6476310 m!7264622))

(declare-fun m!7264624 () Bool)

(assert (=> b!6476300 m!7264624))

(declare-fun m!7264626 () Bool)

(assert (=> b!6476300 m!7264626))

(declare-fun m!7264628 () Bool)

(assert (=> b!6476300 m!7264628))

(declare-fun m!7264630 () Bool)

(assert (=> b!6476300 m!7264630))

(declare-fun m!7264632 () Bool)

(assert (=> b!6476300 m!7264632))

(declare-fun m!7264634 () Bool)

(assert (=> b!6476300 m!7264634))

(assert (=> b!6476300 m!7264632))

(declare-fun m!7264636 () Bool)

(assert (=> b!6476300 m!7264636))

(declare-fun m!7264638 () Bool)

(assert (=> b!6476300 m!7264638))

(declare-fun m!7264640 () Bool)

(assert (=> setNonEmpty!44113 m!7264640))

(declare-fun m!7264642 () Bool)

(assert (=> b!6476304 m!7264642))

(declare-fun m!7264644 () Bool)

(assert (=> b!6476338 m!7264644))

(declare-fun m!7264646 () Bool)

(assert (=> b!6476331 m!7264646))

(declare-fun m!7264648 () Bool)

(assert (=> b!6476331 m!7264648))

(assert (=> b!6476331 m!7264646))

(declare-fun m!7264650 () Bool)

(assert (=> b!6476331 m!7264650))

(declare-fun m!7264652 () Bool)

(assert (=> b!6476331 m!7264652))

(declare-fun m!7264654 () Bool)

(assert (=> b!6476331 m!7264654))

(declare-fun m!7264656 () Bool)

(assert (=> b!6476331 m!7264656))

(assert (=> b!6476331 m!7264646))

(declare-fun m!7264658 () Bool)

(assert (=> b!6476331 m!7264658))

(declare-fun m!7264660 () Bool)

(assert (=> b!6476331 m!7264660))

(declare-fun m!7264662 () Bool)

(assert (=> b!6476331 m!7264662))

(declare-fun m!7264664 () Bool)

(assert (=> b!6476331 m!7264664))

(declare-fun m!7264666 () Bool)

(assert (=> b!6476331 m!7264666))

(declare-fun m!7264668 () Bool)

(assert (=> b!6476331 m!7264668))

(declare-fun m!7264670 () Bool)

(assert (=> b!6476315 m!7264670))

(declare-fun m!7264672 () Bool)

(assert (=> b!6476340 m!7264672))

(declare-fun m!7264674 () Bool)

(assert (=> b!6476340 m!7264674))

(declare-fun m!7264676 () Bool)

(assert (=> b!6476340 m!7264676))

(declare-fun m!7264678 () Bool)

(assert (=> b!6476340 m!7264678))

(declare-fun m!7264680 () Bool)

(assert (=> b!6476340 m!7264680))

(declare-fun m!7264682 () Bool)

(assert (=> b!6476340 m!7264682))

(declare-fun m!7264684 () Bool)

(assert (=> b!6476340 m!7264684))

(check-sat (not b!6476338) (not b!6476302) (not b!6476335) (not b!6476310) (not b!6476309) (not b!6476339) (not b!6476307) (not b!6476333) (not setNonEmpty!44113) (not b!6476340) (not b!6476300) (not b!6476322) (not b!6476306) (not start!636738) (not b!6476298) (not b!6476331) (not b!6476305) (not b!6476334) (not b!6476336) (not b!6476327) (not b!6476301) (not b!6476314) (not b!6476312) (not b!6476304) (not b!6476325) (not b!6476329) (not b!6476324) (not b!6476303) (not b!6476315) (not b!6476311) tp_is_empty!41963 (not b!6476320) (not b!6476313) (not b!6476323) (not b!6476326) (not b!6476316) (not b!6476341) (not b!6476319))
(check-sat)
(get-model)

(declare-fun b!6476442 () Bool)

(declare-fun e!3925794 () Bool)

(declare-fun head!13189 (List!65364) C!32980)

(assert (=> b!6476442 (= e!3925794 (not (= (head!13189 s!2326) (c!1186089 lt!2385680))))))

(declare-fun b!6476443 () Bool)

(declare-fun res!2659293 () Bool)

(declare-fun e!3925788 () Bool)

(assert (=> b!6476443 (=> res!2659293 e!3925788)))

(assert (=> b!6476443 (= res!2659293 (not ((_ is ElementMatch!16355) lt!2385680)))))

(declare-fun e!3925791 () Bool)

(assert (=> b!6476443 (= e!3925791 e!3925788)))

(declare-fun b!6476444 () Bool)

(declare-fun e!3925793 () Bool)

(declare-fun lt!2385705 () Bool)

(declare-fun call!560378 () Bool)

(assert (=> b!6476444 (= e!3925793 (= lt!2385705 call!560378))))

(declare-fun b!6476445 () Bool)

(declare-fun e!3925789 () Bool)

(assert (=> b!6476445 (= e!3925789 (= (head!13189 s!2326) (c!1186089 lt!2385680)))))

(declare-fun b!6476446 () Bool)

(declare-fun res!2659296 () Bool)

(assert (=> b!6476446 (=> (not res!2659296) (not e!3925789))))

(assert (=> b!6476446 (= res!2659296 (not call!560378))))

(declare-fun d!2031809 () Bool)

(assert (=> d!2031809 e!3925793))

(declare-fun c!1186117 () Bool)

(assert (=> d!2031809 (= c!1186117 ((_ is EmptyExpr!16355) lt!2385680))))

(declare-fun e!3925792 () Bool)

(assert (=> d!2031809 (= lt!2385705 e!3925792)))

(declare-fun c!1186119 () Bool)

(assert (=> d!2031809 (= c!1186119 (isEmpty!37424 s!2326))))

(assert (=> d!2031809 (validRegex!8091 lt!2385680)))

(assert (=> d!2031809 (= (matchR!8538 lt!2385680 s!2326) lt!2385705)))

(declare-fun b!6476447 () Bool)

(declare-fun res!2659298 () Bool)

(assert (=> b!6476447 (=> res!2659298 e!3925788)))

(assert (=> b!6476447 (= res!2659298 e!3925789)))

(declare-fun res!2659291 () Bool)

(assert (=> b!6476447 (=> (not res!2659291) (not e!3925789))))

(assert (=> b!6476447 (= res!2659291 lt!2385705)))

(declare-fun b!6476448 () Bool)

(declare-fun e!3925790 () Bool)

(assert (=> b!6476448 (= e!3925788 e!3925790)))

(declare-fun res!2659297 () Bool)

(assert (=> b!6476448 (=> (not res!2659297) (not e!3925790))))

(assert (=> b!6476448 (= res!2659297 (not lt!2385705))))

(declare-fun b!6476449 () Bool)

(declare-fun res!2659294 () Bool)

(assert (=> b!6476449 (=> res!2659294 e!3925794)))

(declare-fun tail!12274 (List!65364) List!65364)

(assert (=> b!6476449 (= res!2659294 (not (isEmpty!37424 (tail!12274 s!2326))))))

(declare-fun b!6476450 () Bool)

(declare-fun derivativeStep!5053 (Regex!16355 C!32980) Regex!16355)

(assert (=> b!6476450 (= e!3925792 (matchR!8538 (derivativeStep!5053 lt!2385680 (head!13189 s!2326)) (tail!12274 s!2326)))))

(declare-fun bm!560373 () Bool)

(assert (=> bm!560373 (= call!560378 (isEmpty!37424 s!2326))))

(declare-fun b!6476451 () Bool)

(assert (=> b!6476451 (= e!3925790 e!3925794)))

(declare-fun res!2659295 () Bool)

(assert (=> b!6476451 (=> res!2659295 e!3925794)))

(assert (=> b!6476451 (= res!2659295 call!560378)))

(declare-fun b!6476452 () Bool)

(assert (=> b!6476452 (= e!3925793 e!3925791)))

(declare-fun c!1186118 () Bool)

(assert (=> b!6476452 (= c!1186118 ((_ is EmptyLang!16355) lt!2385680))))

(declare-fun b!6476453 () Bool)

(declare-fun res!2659292 () Bool)

(assert (=> b!6476453 (=> (not res!2659292) (not e!3925789))))

(assert (=> b!6476453 (= res!2659292 (isEmpty!37424 (tail!12274 s!2326)))))

(declare-fun b!6476454 () Bool)

(assert (=> b!6476454 (= e!3925792 (nullable!6348 lt!2385680))))

(declare-fun b!6476455 () Bool)

(assert (=> b!6476455 (= e!3925791 (not lt!2385705))))

(assert (= (and d!2031809 c!1186119) b!6476454))

(assert (= (and d!2031809 (not c!1186119)) b!6476450))

(assert (= (and d!2031809 c!1186117) b!6476444))

(assert (= (and d!2031809 (not c!1186117)) b!6476452))

(assert (= (and b!6476452 c!1186118) b!6476455))

(assert (= (and b!6476452 (not c!1186118)) b!6476443))

(assert (= (and b!6476443 (not res!2659293)) b!6476447))

(assert (= (and b!6476447 res!2659291) b!6476446))

(assert (= (and b!6476446 res!2659296) b!6476453))

(assert (= (and b!6476453 res!2659292) b!6476445))

(assert (= (and b!6476447 (not res!2659298)) b!6476448))

(assert (= (and b!6476448 res!2659297) b!6476451))

(assert (= (and b!6476451 (not res!2659295)) b!6476449))

(assert (= (and b!6476449 (not res!2659294)) b!6476442))

(assert (= (or b!6476444 b!6476451 b!6476446) bm!560373))

(declare-fun m!7264716 () Bool)

(assert (=> d!2031809 m!7264716))

(declare-fun m!7264720 () Bool)

(assert (=> d!2031809 m!7264720))

(declare-fun m!7264724 () Bool)

(assert (=> b!6476450 m!7264724))

(assert (=> b!6476450 m!7264724))

(declare-fun m!7264726 () Bool)

(assert (=> b!6476450 m!7264726))

(declare-fun m!7264730 () Bool)

(assert (=> b!6476450 m!7264730))

(assert (=> b!6476450 m!7264726))

(assert (=> b!6476450 m!7264730))

(declare-fun m!7264736 () Bool)

(assert (=> b!6476450 m!7264736))

(assert (=> bm!560373 m!7264716))

(assert (=> b!6476449 m!7264730))

(assert (=> b!6476449 m!7264730))

(declare-fun m!7264738 () Bool)

(assert (=> b!6476449 m!7264738))

(assert (=> b!6476445 m!7264724))

(assert (=> b!6476453 m!7264730))

(assert (=> b!6476453 m!7264730))

(assert (=> b!6476453 m!7264738))

(assert (=> b!6476442 m!7264724))

(declare-fun m!7264740 () Bool)

(assert (=> b!6476454 m!7264740))

(assert (=> b!6476336 d!2031809))

(declare-fun bs!1642269 () Bool)

(declare-fun b!6476517 () Bool)

(assert (= bs!1642269 (and b!6476517 b!6476331)))

(declare-fun lambda!358032 () Int)

(assert (=> bs!1642269 (not (= lambda!358032 lambda!358018))))

(declare-fun bs!1642270 () Bool)

(assert (= bs!1642270 (and b!6476517 b!6476306)))

(assert (=> bs!1642270 (not (= lambda!358032 lambda!358014))))

(assert (=> bs!1642270 (not (= lambda!358032 lambda!358013))))

(declare-fun bs!1642274 () Bool)

(assert (= bs!1642274 (and b!6476517 b!6476300)))

(assert (=> bs!1642274 (not (= lambda!358032 lambda!358016))))

(assert (=> bs!1642269 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 lt!2385680) (reg!16684 (regOne!33222 r!7292))) (= lt!2385680 lt!2385664)) (= lambda!358032 lambda!358019))))

(assert (=> bs!1642269 (not (= lambda!358032 lambda!358020))))

(assert (=> bs!1642274 (not (= lambda!358032 lambda!358017))))

(assert (=> b!6476517 true))

(assert (=> b!6476517 true))

(declare-fun bs!1642276 () Bool)

(declare-fun b!6476519 () Bool)

(assert (= bs!1642276 (and b!6476519 b!6476517)))

(declare-fun lambda!358035 () Int)

(assert (=> bs!1642276 (not (= lambda!358035 lambda!358032))))

(declare-fun bs!1642277 () Bool)

(assert (= bs!1642277 (and b!6476519 b!6476331)))

(assert (=> bs!1642277 (not (= lambda!358035 lambda!358018))))

(declare-fun bs!1642278 () Bool)

(assert (= bs!1642278 (and b!6476519 b!6476306)))

(assert (=> bs!1642278 (= (and (= (regOne!33222 lt!2385680) (regOne!33222 r!7292)) (= (regTwo!33222 lt!2385680) (regTwo!33222 r!7292))) (= lambda!358035 lambda!358014))))

(assert (=> bs!1642278 (not (= lambda!358035 lambda!358013))))

(declare-fun bs!1642281 () Bool)

(assert (= bs!1642281 (and b!6476519 b!6476300)))

(assert (=> bs!1642281 (not (= lambda!358035 lambda!358016))))

(assert (=> bs!1642277 (not (= lambda!358035 lambda!358019))))

(assert (=> bs!1642277 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 lt!2385680) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 lt!2385680) lt!2385664)) (= lambda!358035 lambda!358020))))

(assert (=> bs!1642281 (= (and (= (regOne!33222 lt!2385680) lt!2385664) (= (regTwo!33222 lt!2385680) (regTwo!33222 r!7292))) (= lambda!358035 lambda!358017))))

(assert (=> b!6476519 true))

(assert (=> b!6476519 true))

(declare-fun b!6476511 () Bool)

(declare-fun res!2659327 () Bool)

(declare-fun e!3925832 () Bool)

(assert (=> b!6476511 (=> res!2659327 e!3925832)))

(declare-fun call!560385 () Bool)

(assert (=> b!6476511 (= res!2659327 call!560385)))

(declare-fun e!3925826 () Bool)

(assert (=> b!6476511 (= e!3925826 e!3925832)))

(declare-fun b!6476512 () Bool)

(declare-fun e!3925829 () Bool)

(assert (=> b!6476512 (= e!3925829 e!3925826)))

(declare-fun c!1186137 () Bool)

(assert (=> b!6476512 (= c!1186137 ((_ is Star!16355) lt!2385680))))

(declare-fun b!6476513 () Bool)

(declare-fun c!1186136 () Bool)

(assert (=> b!6476513 (= c!1186136 ((_ is Union!16355) lt!2385680))))

(declare-fun e!3925830 () Bool)

(assert (=> b!6476513 (= e!3925830 e!3925829)))

(declare-fun b!6476514 () Bool)

(declare-fun c!1186135 () Bool)

(assert (=> b!6476514 (= c!1186135 ((_ is ElementMatch!16355) lt!2385680))))

(declare-fun e!3925827 () Bool)

(assert (=> b!6476514 (= e!3925827 e!3925830)))

(declare-fun b!6476515 () Bool)

(declare-fun e!3925828 () Bool)

(assert (=> b!6476515 (= e!3925828 call!560385)))

(declare-fun b!6476516 () Bool)

(assert (=> b!6476516 (= e!3925828 e!3925827)))

(declare-fun res!2659326 () Bool)

(assert (=> b!6476516 (= res!2659326 (not ((_ is EmptyLang!16355) lt!2385680)))))

(assert (=> b!6476516 (=> (not res!2659326) (not e!3925827))))

(declare-fun d!2031817 () Bool)

(declare-fun c!1186134 () Bool)

(assert (=> d!2031817 (= c!1186134 ((_ is EmptyExpr!16355) lt!2385680))))

(assert (=> d!2031817 (= (matchRSpec!3456 lt!2385680 s!2326) e!3925828)))

(declare-fun call!560384 () Bool)

(assert (=> b!6476517 (= e!3925832 call!560384)))

(declare-fun bm!560379 () Bool)

(assert (=> bm!560379 (= call!560385 (isEmpty!37424 s!2326))))

(declare-fun b!6476518 () Bool)

(declare-fun e!3925831 () Bool)

(assert (=> b!6476518 (= e!3925829 e!3925831)))

(declare-fun res!2659328 () Bool)

(assert (=> b!6476518 (= res!2659328 (matchRSpec!3456 (regOne!33223 lt!2385680) s!2326))))

(assert (=> b!6476518 (=> res!2659328 e!3925831)))

(assert (=> b!6476519 (= e!3925826 call!560384)))

(declare-fun bm!560380 () Bool)

(assert (=> bm!560380 (= call!560384 (Exists!3425 (ite c!1186137 lambda!358032 lambda!358035)))))

(declare-fun b!6476520 () Bool)

(assert (=> b!6476520 (= e!3925830 (= s!2326 (Cons!65240 (c!1186089 lt!2385680) Nil!65240)))))

(declare-fun b!6476521 () Bool)

(assert (=> b!6476521 (= e!3925831 (matchRSpec!3456 (regTwo!33223 lt!2385680) s!2326))))

(assert (= (and d!2031817 c!1186134) b!6476515))

(assert (= (and d!2031817 (not c!1186134)) b!6476516))

(assert (= (and b!6476516 res!2659326) b!6476514))

(assert (= (and b!6476514 c!1186135) b!6476520))

(assert (= (and b!6476514 (not c!1186135)) b!6476513))

(assert (= (and b!6476513 c!1186136) b!6476518))

(assert (= (and b!6476513 (not c!1186136)) b!6476512))

(assert (= (and b!6476518 (not res!2659328)) b!6476521))

(assert (= (and b!6476512 c!1186137) b!6476511))

(assert (= (and b!6476512 (not c!1186137)) b!6476519))

(assert (= (and b!6476511 (not res!2659327)) b!6476517))

(assert (= (or b!6476517 b!6476519) bm!560380))

(assert (= (or b!6476515 b!6476511) bm!560379))

(assert (=> bm!560379 m!7264716))

(declare-fun m!7264798 () Bool)

(assert (=> b!6476518 m!7264798))

(declare-fun m!7264800 () Bool)

(assert (=> bm!560380 m!7264800))

(declare-fun m!7264802 () Bool)

(assert (=> b!6476521 m!7264802))

(assert (=> b!6476336 d!2031817))

(declare-fun d!2031837 () Bool)

(assert (=> d!2031837 (= (matchR!8538 lt!2385680 s!2326) (matchRSpec!3456 lt!2385680 s!2326))))

(declare-fun lt!2385727 () Unit!158751)

(declare-fun choose!47999 (Regex!16355 List!65364) Unit!158751)

(assert (=> d!2031837 (= lt!2385727 (choose!47999 lt!2385680 s!2326))))

(assert (=> d!2031837 (validRegex!8091 lt!2385680)))

(assert (=> d!2031837 (= (mainMatchTheorem!3456 lt!2385680 s!2326) lt!2385727)))

(declare-fun bs!1642287 () Bool)

(assert (= bs!1642287 d!2031837))

(assert (=> bs!1642287 m!7264514))

(assert (=> bs!1642287 m!7264516))

(declare-fun m!7264816 () Bool)

(assert (=> bs!1642287 m!7264816))

(assert (=> bs!1642287 m!7264720))

(assert (=> b!6476336 d!2031837))

(declare-fun d!2031847 () Bool)

(declare-fun nullableFct!2287 (Regex!16355) Bool)

(assert (=> d!2031847 (= (nullable!6348 (regOne!33222 (regOne!33222 r!7292))) (nullableFct!2287 (regOne!33222 (regOne!33222 r!7292))))))

(declare-fun bs!1642289 () Bool)

(assert (= bs!1642289 d!2031847))

(declare-fun m!7264820 () Bool)

(assert (=> bs!1642289 m!7264820))

(assert (=> b!6476316 d!2031847))

(declare-fun b!6476538 () Bool)

(declare-fun e!3925847 () Bool)

(assert (=> b!6476538 (= e!3925847 (not (= (head!13189 lt!2385693) (c!1186089 lt!2385687))))))

(declare-fun b!6476539 () Bool)

(declare-fun res!2659339 () Bool)

(declare-fun e!3925841 () Bool)

(assert (=> b!6476539 (=> res!2659339 e!3925841)))

(assert (=> b!6476539 (= res!2659339 (not ((_ is ElementMatch!16355) lt!2385687)))))

(declare-fun e!3925844 () Bool)

(assert (=> b!6476539 (= e!3925844 e!3925841)))

(declare-fun b!6476540 () Bool)

(declare-fun e!3925846 () Bool)

(declare-fun lt!2385728 () Bool)

(declare-fun call!560387 () Bool)

(assert (=> b!6476540 (= e!3925846 (= lt!2385728 call!560387))))

(declare-fun b!6476541 () Bool)

(declare-fun e!3925842 () Bool)

(assert (=> b!6476541 (= e!3925842 (= (head!13189 lt!2385693) (c!1186089 lt!2385687)))))

(declare-fun b!6476542 () Bool)

(declare-fun res!2659342 () Bool)

(assert (=> b!6476542 (=> (not res!2659342) (not e!3925842))))

(assert (=> b!6476542 (= res!2659342 (not call!560387))))

(declare-fun d!2031851 () Bool)

(assert (=> d!2031851 e!3925846))

(declare-fun c!1186142 () Bool)

(assert (=> d!2031851 (= c!1186142 ((_ is EmptyExpr!16355) lt!2385687))))

(declare-fun e!3925845 () Bool)

(assert (=> d!2031851 (= lt!2385728 e!3925845)))

(declare-fun c!1186144 () Bool)

(assert (=> d!2031851 (= c!1186144 (isEmpty!37424 lt!2385693))))

(assert (=> d!2031851 (validRegex!8091 lt!2385687)))

(assert (=> d!2031851 (= (matchR!8538 lt!2385687 lt!2385693) lt!2385728)))

(declare-fun b!6476543 () Bool)

(declare-fun res!2659344 () Bool)

(assert (=> b!6476543 (=> res!2659344 e!3925841)))

(assert (=> b!6476543 (= res!2659344 e!3925842)))

(declare-fun res!2659337 () Bool)

(assert (=> b!6476543 (=> (not res!2659337) (not e!3925842))))

(assert (=> b!6476543 (= res!2659337 lt!2385728)))

(declare-fun b!6476544 () Bool)

(declare-fun e!3925843 () Bool)

(assert (=> b!6476544 (= e!3925841 e!3925843)))

(declare-fun res!2659343 () Bool)

(assert (=> b!6476544 (=> (not res!2659343) (not e!3925843))))

(assert (=> b!6476544 (= res!2659343 (not lt!2385728))))

(declare-fun b!6476545 () Bool)

(declare-fun res!2659340 () Bool)

(assert (=> b!6476545 (=> res!2659340 e!3925847)))

(assert (=> b!6476545 (= res!2659340 (not (isEmpty!37424 (tail!12274 lt!2385693))))))

(declare-fun b!6476546 () Bool)

(assert (=> b!6476546 (= e!3925845 (matchR!8538 (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693)) (tail!12274 lt!2385693)))))

(declare-fun bm!560382 () Bool)

(assert (=> bm!560382 (= call!560387 (isEmpty!37424 lt!2385693))))

(declare-fun b!6476547 () Bool)

(assert (=> b!6476547 (= e!3925843 e!3925847)))

(declare-fun res!2659341 () Bool)

(assert (=> b!6476547 (=> res!2659341 e!3925847)))

(assert (=> b!6476547 (= res!2659341 call!560387)))

(declare-fun b!6476548 () Bool)

(assert (=> b!6476548 (= e!3925846 e!3925844)))

(declare-fun c!1186143 () Bool)

(assert (=> b!6476548 (= c!1186143 ((_ is EmptyLang!16355) lt!2385687))))

(declare-fun b!6476549 () Bool)

(declare-fun res!2659338 () Bool)

(assert (=> b!6476549 (=> (not res!2659338) (not e!3925842))))

(assert (=> b!6476549 (= res!2659338 (isEmpty!37424 (tail!12274 lt!2385693)))))

(declare-fun b!6476550 () Bool)

(assert (=> b!6476550 (= e!3925845 (nullable!6348 lt!2385687))))

(declare-fun b!6476551 () Bool)

(assert (=> b!6476551 (= e!3925844 (not lt!2385728))))

(assert (= (and d!2031851 c!1186144) b!6476550))

(assert (= (and d!2031851 (not c!1186144)) b!6476546))

(assert (= (and d!2031851 c!1186142) b!6476540))

(assert (= (and d!2031851 (not c!1186142)) b!6476548))

(assert (= (and b!6476548 c!1186143) b!6476551))

(assert (= (and b!6476548 (not c!1186143)) b!6476539))

(assert (= (and b!6476539 (not res!2659339)) b!6476543))

(assert (= (and b!6476543 res!2659337) b!6476542))

(assert (= (and b!6476542 res!2659342) b!6476549))

(assert (= (and b!6476549 res!2659338) b!6476541))

(assert (= (and b!6476543 (not res!2659344)) b!6476544))

(assert (= (and b!6476544 res!2659343) b!6476547))

(assert (= (and b!6476547 (not res!2659341)) b!6476545))

(assert (= (and b!6476545 (not res!2659340)) b!6476538))

(assert (= (or b!6476540 b!6476547 b!6476542) bm!560382))

(declare-fun m!7264822 () Bool)

(assert (=> d!2031851 m!7264822))

(declare-fun m!7264824 () Bool)

(assert (=> d!2031851 m!7264824))

(declare-fun m!7264826 () Bool)

(assert (=> b!6476546 m!7264826))

(assert (=> b!6476546 m!7264826))

(declare-fun m!7264828 () Bool)

(assert (=> b!6476546 m!7264828))

(declare-fun m!7264830 () Bool)

(assert (=> b!6476546 m!7264830))

(assert (=> b!6476546 m!7264828))

(assert (=> b!6476546 m!7264830))

(declare-fun m!7264832 () Bool)

(assert (=> b!6476546 m!7264832))

(assert (=> bm!560382 m!7264822))

(assert (=> b!6476545 m!7264830))

(assert (=> b!6476545 m!7264830))

(declare-fun m!7264834 () Bool)

(assert (=> b!6476545 m!7264834))

(assert (=> b!6476541 m!7264826))

(assert (=> b!6476549 m!7264830))

(assert (=> b!6476549 m!7264830))

(assert (=> b!6476549 m!7264834))

(assert (=> b!6476538 m!7264826))

(declare-fun m!7264836 () Bool)

(assert (=> b!6476550 m!7264836))

(assert (=> b!6476335 d!2031851))

(declare-fun d!2031853 () Bool)

(assert (=> d!2031853 (= (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692)) (matchZipper!2367 lt!2385643 (_1!36637 lt!2385692)))))

(declare-fun lt!2385733 () Unit!158751)

(declare-fun choose!48000 ((InoxSet Context!11478) List!65366 Regex!16355 List!65364) Unit!158751)

(assert (=> d!2031853 (= lt!2385733 (choose!48000 lt!2385643 lt!2385642 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692)))))

(assert (=> d!2031853 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2031853 (= (theoremZipperRegexEquiv!821 lt!2385643 lt!2385642 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692)) lt!2385733)))

(declare-fun bs!1642293 () Bool)

(assert (= bs!1642293 d!2031853))

(assert (=> bs!1642293 m!7264644))

(assert (=> bs!1642293 m!7264602))

(declare-fun m!7264886 () Bool)

(assert (=> bs!1642293 m!7264886))

(declare-fun m!7264888 () Bool)

(assert (=> bs!1642293 m!7264888))

(assert (=> b!6476335 d!2031853))

(declare-fun b!6476594 () Bool)

(declare-fun e!3925882 () Bool)

(assert (=> b!6476594 (= e!3925882 (not (= (head!13189 lt!2385673) (c!1186089 lt!2385664))))))

(declare-fun b!6476595 () Bool)

(declare-fun res!2659361 () Bool)

(declare-fun e!3925876 () Bool)

(assert (=> b!6476595 (=> res!2659361 e!3925876)))

(assert (=> b!6476595 (= res!2659361 (not ((_ is ElementMatch!16355) lt!2385664)))))

(declare-fun e!3925879 () Bool)

(assert (=> b!6476595 (= e!3925879 e!3925876)))

(declare-fun b!6476596 () Bool)

(declare-fun e!3925881 () Bool)

(declare-fun lt!2385734 () Bool)

(declare-fun call!560392 () Bool)

(assert (=> b!6476596 (= e!3925881 (= lt!2385734 call!560392))))

(declare-fun b!6476597 () Bool)

(declare-fun e!3925877 () Bool)

(assert (=> b!6476597 (= e!3925877 (= (head!13189 lt!2385673) (c!1186089 lt!2385664)))))

(declare-fun b!6476598 () Bool)

(declare-fun res!2659364 () Bool)

(assert (=> b!6476598 (=> (not res!2659364) (not e!3925877))))

(assert (=> b!6476598 (= res!2659364 (not call!560392))))

(declare-fun d!2031869 () Bool)

(assert (=> d!2031869 e!3925881))

(declare-fun c!1186159 () Bool)

(assert (=> d!2031869 (= c!1186159 ((_ is EmptyExpr!16355) lt!2385664))))

(declare-fun e!3925880 () Bool)

(assert (=> d!2031869 (= lt!2385734 e!3925880)))

(declare-fun c!1186161 () Bool)

(assert (=> d!2031869 (= c!1186161 (isEmpty!37424 lt!2385673))))

(assert (=> d!2031869 (validRegex!8091 lt!2385664)))

(assert (=> d!2031869 (= (matchR!8538 lt!2385664 lt!2385673) lt!2385734)))

(declare-fun b!6476599 () Bool)

(declare-fun res!2659366 () Bool)

(assert (=> b!6476599 (=> res!2659366 e!3925876)))

(assert (=> b!6476599 (= res!2659366 e!3925877)))

(declare-fun res!2659359 () Bool)

(assert (=> b!6476599 (=> (not res!2659359) (not e!3925877))))

(assert (=> b!6476599 (= res!2659359 lt!2385734)))

(declare-fun b!6476600 () Bool)

(declare-fun e!3925878 () Bool)

(assert (=> b!6476600 (= e!3925876 e!3925878)))

(declare-fun res!2659365 () Bool)

(assert (=> b!6476600 (=> (not res!2659365) (not e!3925878))))

(assert (=> b!6476600 (= res!2659365 (not lt!2385734))))

(declare-fun b!6476601 () Bool)

(declare-fun res!2659362 () Bool)

(assert (=> b!6476601 (=> res!2659362 e!3925882)))

(assert (=> b!6476601 (= res!2659362 (not (isEmpty!37424 (tail!12274 lt!2385673))))))

(declare-fun b!6476602 () Bool)

(assert (=> b!6476602 (= e!3925880 (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673)) (tail!12274 lt!2385673)))))

(declare-fun bm!560387 () Bool)

(assert (=> bm!560387 (= call!560392 (isEmpty!37424 lt!2385673))))

(declare-fun b!6476603 () Bool)

(assert (=> b!6476603 (= e!3925878 e!3925882)))

(declare-fun res!2659363 () Bool)

(assert (=> b!6476603 (=> res!2659363 e!3925882)))

(assert (=> b!6476603 (= res!2659363 call!560392)))

(declare-fun b!6476604 () Bool)

(assert (=> b!6476604 (= e!3925881 e!3925879)))

(declare-fun c!1186160 () Bool)

(assert (=> b!6476604 (= c!1186160 ((_ is EmptyLang!16355) lt!2385664))))

(declare-fun b!6476605 () Bool)

(declare-fun res!2659360 () Bool)

(assert (=> b!6476605 (=> (not res!2659360) (not e!3925877))))

(assert (=> b!6476605 (= res!2659360 (isEmpty!37424 (tail!12274 lt!2385673)))))

(declare-fun b!6476606 () Bool)

(assert (=> b!6476606 (= e!3925880 (nullable!6348 lt!2385664))))

(declare-fun b!6476607 () Bool)

(assert (=> b!6476607 (= e!3925879 (not lt!2385734))))

(assert (= (and d!2031869 c!1186161) b!6476606))

(assert (= (and d!2031869 (not c!1186161)) b!6476602))

(assert (= (and d!2031869 c!1186159) b!6476596))

(assert (= (and d!2031869 (not c!1186159)) b!6476604))

(assert (= (and b!6476604 c!1186160) b!6476607))

(assert (= (and b!6476604 (not c!1186160)) b!6476595))

(assert (= (and b!6476595 (not res!2659361)) b!6476599))

(assert (= (and b!6476599 res!2659359) b!6476598))

(assert (= (and b!6476598 res!2659364) b!6476605))

(assert (= (and b!6476605 res!2659360) b!6476597))

(assert (= (and b!6476599 (not res!2659366)) b!6476600))

(assert (= (and b!6476600 res!2659365) b!6476603))

(assert (= (and b!6476603 (not res!2659363)) b!6476601))

(assert (= (and b!6476601 (not res!2659362)) b!6476594))

(assert (= (or b!6476596 b!6476603 b!6476598) bm!560387))

(declare-fun m!7264890 () Bool)

(assert (=> d!2031869 m!7264890))

(declare-fun m!7264892 () Bool)

(assert (=> d!2031869 m!7264892))

(declare-fun m!7264894 () Bool)

(assert (=> b!6476602 m!7264894))

(assert (=> b!6476602 m!7264894))

(declare-fun m!7264896 () Bool)

(assert (=> b!6476602 m!7264896))

(declare-fun m!7264898 () Bool)

(assert (=> b!6476602 m!7264898))

(assert (=> b!6476602 m!7264896))

(assert (=> b!6476602 m!7264898))

(declare-fun m!7264900 () Bool)

(assert (=> b!6476602 m!7264900))

(assert (=> bm!560387 m!7264890))

(assert (=> b!6476601 m!7264898))

(assert (=> b!6476601 m!7264898))

(declare-fun m!7264902 () Bool)

(assert (=> b!6476601 m!7264902))

(assert (=> b!6476597 m!7264894))

(assert (=> b!6476605 m!7264898))

(assert (=> b!6476605 m!7264898))

(assert (=> b!6476605 m!7264902))

(assert (=> b!6476594 m!7264894))

(declare-fun m!7264904 () Bool)

(assert (=> b!6476606 m!7264904))

(assert (=> b!6476335 d!2031869))

(declare-fun d!2031871 () Bool)

(declare-fun c!1186169 () Bool)

(assert (=> d!2031871 (= c!1186169 (isEmpty!37424 (_1!36637 lt!2385692)))))

(declare-fun e!3925899 () Bool)

(assert (=> d!2031871 (= (matchZipper!2367 lt!2385643 (_1!36637 lt!2385692)) e!3925899)))

(declare-fun b!6476635 () Bool)

(declare-fun nullableZipper!2114 ((InoxSet Context!11478)) Bool)

(assert (=> b!6476635 (= e!3925899 (nullableZipper!2114 lt!2385643))))

(declare-fun b!6476636 () Bool)

(assert (=> b!6476636 (= e!3925899 (matchZipper!2367 (derivationStepZipper!2321 lt!2385643 (head!13189 (_1!36637 lt!2385692))) (tail!12274 (_1!36637 lt!2385692))))))

(assert (= (and d!2031871 c!1186169) b!6476635))

(assert (= (and d!2031871 (not c!1186169)) b!6476636))

(declare-fun m!7264922 () Bool)

(assert (=> d!2031871 m!7264922))

(declare-fun m!7264924 () Bool)

(assert (=> b!6476635 m!7264924))

(declare-fun m!7264926 () Bool)

(assert (=> b!6476636 m!7264926))

(assert (=> b!6476636 m!7264926))

(declare-fun m!7264928 () Bool)

(assert (=> b!6476636 m!7264928))

(declare-fun m!7264930 () Bool)

(assert (=> b!6476636 m!7264930))

(assert (=> b!6476636 m!7264928))

(assert (=> b!6476636 m!7264930))

(declare-fun m!7264932 () Bool)

(assert (=> b!6476636 m!7264932))

(assert (=> b!6476335 d!2031871))

(declare-fun d!2031877 () Bool)

(declare-fun c!1186170 () Bool)

(assert (=> d!2031877 (= c!1186170 (isEmpty!37424 lt!2385693))))

(declare-fun e!3925900 () Bool)

(assert (=> d!2031877 (= (matchZipper!2367 lt!2385677 lt!2385693) e!3925900)))

(declare-fun b!6476637 () Bool)

(assert (=> b!6476637 (= e!3925900 (nullableZipper!2114 lt!2385677))))

(declare-fun b!6476638 () Bool)

(assert (=> b!6476638 (= e!3925900 (matchZipper!2367 (derivationStepZipper!2321 lt!2385677 (head!13189 lt!2385693)) (tail!12274 lt!2385693)))))

(assert (= (and d!2031877 c!1186170) b!6476637))

(assert (= (and d!2031877 (not c!1186170)) b!6476638))

(assert (=> d!2031877 m!7264822))

(declare-fun m!7264934 () Bool)

(assert (=> b!6476637 m!7264934))

(assert (=> b!6476638 m!7264826))

(assert (=> b!6476638 m!7264826))

(declare-fun m!7264936 () Bool)

(assert (=> b!6476638 m!7264936))

(assert (=> b!6476638 m!7264830))

(assert (=> b!6476638 m!7264936))

(assert (=> b!6476638 m!7264830))

(declare-fun m!7264938 () Bool)

(assert (=> b!6476638 m!7264938))

(assert (=> b!6476335 d!2031877))

(declare-fun d!2031879 () Bool)

(declare-fun lambda!358039 () Int)

(declare-fun forall!15540 (List!65365 Int) Bool)

(assert (=> d!2031879 (= (inv!84134 lt!2385676) (forall!15540 (exprs!6239 lt!2385676) lambda!358039))))

(declare-fun bs!1642294 () Bool)

(assert (= bs!1642294 d!2031879))

(declare-fun m!7264940 () Bool)

(assert (=> bs!1642294 m!7264940))

(assert (=> b!6476335 d!2031879))

(declare-fun d!2031881 () Bool)

(assert (=> d!2031881 (= (matchR!8538 lt!2385687 lt!2385693) (matchZipper!2367 lt!2385677 lt!2385693))))

(declare-fun lt!2385736 () Unit!158751)

(assert (=> d!2031881 (= lt!2385736 (choose!48000 lt!2385677 lt!2385686 lt!2385687 lt!2385693))))

(assert (=> d!2031881 (validRegex!8091 lt!2385687)))

(assert (=> d!2031881 (= (theoremZipperRegexEquiv!821 lt!2385677 lt!2385686 lt!2385687 lt!2385693) lt!2385736)))

(declare-fun bs!1642295 () Bool)

(assert (= bs!1642295 d!2031881))

(assert (=> bs!1642295 m!7264610))

(assert (=> bs!1642295 m!7264618))

(declare-fun m!7264942 () Bool)

(assert (=> bs!1642295 m!7264942))

(assert (=> bs!1642295 m!7264824))

(assert (=> b!6476335 d!2031881))

(declare-fun d!2031883 () Bool)

(assert (=> d!2031883 (matchR!8538 (Star!16355 (reg!16684 (regOne!33222 r!7292))) (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))

(declare-fun lt!2385739 () Unit!158751)

(declare-fun choose!48003 (Regex!16355 List!65364 List!65364) Unit!158751)

(assert (=> d!2031883 (= lt!2385739 (choose!48003 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))

(assert (=> d!2031883 (validRegex!8091 (Star!16355 (reg!16684 (regOne!33222 r!7292))))))

(assert (=> d!2031883 (= (lemmaStarApp!132 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692) (_2!36637 lt!2385692)) lt!2385739)))

(declare-fun bs!1642296 () Bool)

(assert (= bs!1642296 d!2031883))

(assert (=> bs!1642296 m!7264658))

(assert (=> bs!1642296 m!7264658))

(declare-fun m!7264944 () Bool)

(assert (=> bs!1642296 m!7264944))

(declare-fun m!7264946 () Bool)

(assert (=> bs!1642296 m!7264946))

(declare-fun m!7264948 () Bool)

(assert (=> bs!1642296 m!7264948))

(assert (=> b!6476335 d!2031883))

(declare-fun d!2031885 () Bool)

(assert (=> d!2031885 (matchR!8538 (Concat!25200 lt!2385664 (regTwo!33222 r!7292)) (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(declare-fun lt!2385742 () Unit!158751)

(declare-fun choose!48004 (Regex!16355 Regex!16355 List!65364 List!65364) Unit!158751)

(assert (=> d!2031885 (= lt!2385742 (choose!48004 lt!2385664 (regTwo!33222 r!7292) (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(declare-fun e!3925921 () Bool)

(assert (=> d!2031885 e!3925921))

(declare-fun res!2659398 () Bool)

(assert (=> d!2031885 (=> (not res!2659398) (not e!3925921))))

(assert (=> d!2031885 (= res!2659398 (validRegex!8091 lt!2385664))))

(assert (=> d!2031885 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!318 lt!2385664 (regTwo!33222 r!7292) (_2!36637 lt!2385692) (_2!36637 lt!2385678)) lt!2385742)))

(declare-fun b!6476673 () Bool)

(assert (=> b!6476673 (= e!3925921 (validRegex!8091 (regTwo!33222 r!7292)))))

(assert (= (and d!2031885 res!2659398) b!6476673))

(assert (=> d!2031885 m!7264596))

(assert (=> d!2031885 m!7264596))

(declare-fun m!7264950 () Bool)

(assert (=> d!2031885 m!7264950))

(declare-fun m!7264952 () Bool)

(assert (=> d!2031885 m!7264952))

(assert (=> d!2031885 m!7264892))

(declare-fun m!7264954 () Bool)

(assert (=> b!6476673 m!7264954))

(assert (=> b!6476335 d!2031885))

(declare-fun bs!1642305 () Bool)

(declare-fun d!2031887 () Bool)

(assert (= bs!1642305 (and d!2031887 d!2031879)))

(declare-fun lambda!358048 () Int)

(assert (=> bs!1642305 (= lambda!358048 lambda!358039)))

(declare-fun b!6476707 () Bool)

(declare-fun e!3925944 () Bool)

(declare-fun lt!2385748 () Regex!16355)

(declare-fun isConcat!1271 (Regex!16355) Bool)

(assert (=> b!6476707 (= e!3925944 (isConcat!1271 lt!2385748))))

(declare-fun b!6476708 () Bool)

(declare-fun head!13190 (List!65365) Regex!16355)

(assert (=> b!6476708 (= e!3925944 (= lt!2385748 (head!13190 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6476709 () Bool)

(declare-fun e!3925943 () Bool)

(declare-fun isEmptyExpr!1748 (Regex!16355) Bool)

(assert (=> b!6476709 (= e!3925943 (isEmptyExpr!1748 lt!2385748))))

(declare-fun b!6476710 () Bool)

(declare-fun e!3925942 () Regex!16355)

(declare-fun e!3925945 () Regex!16355)

(assert (=> b!6476710 (= e!3925942 e!3925945)))

(declare-fun c!1186194 () Bool)

(assert (=> b!6476710 (= c!1186194 ((_ is Cons!65241) (exprs!6239 (h!71690 zl!343))))))

(declare-fun b!6476711 () Bool)

(declare-fun e!3925947 () Bool)

(assert (=> b!6476711 (= e!3925947 e!3925943)))

(declare-fun c!1186195 () Bool)

(assert (=> b!6476711 (= c!1186195 (isEmpty!37422 (exprs!6239 (h!71690 zl!343))))))

(declare-fun b!6476712 () Bool)

(assert (=> b!6476712 (= e!3925942 (h!71689 (exprs!6239 (h!71690 zl!343))))))

(declare-fun b!6476713 () Bool)

(assert (=> b!6476713 (= e!3925945 (Concat!25200 (h!71689 (exprs!6239 (h!71690 zl!343))) (generalisedConcat!1952 (t!378989 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6476714 () Bool)

(assert (=> b!6476714 (= e!3925943 e!3925944)))

(declare-fun c!1186192 () Bool)

(declare-fun tail!12275 (List!65365) List!65365)

(assert (=> b!6476714 (= c!1186192 (isEmpty!37422 (tail!12275 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6476715 () Bool)

(assert (=> b!6476715 (= e!3925945 EmptyExpr!16355)))

(declare-fun b!6476716 () Bool)

(declare-fun e!3925946 () Bool)

(assert (=> b!6476716 (= e!3925946 (isEmpty!37422 (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> d!2031887 e!3925947))

(declare-fun res!2659407 () Bool)

(assert (=> d!2031887 (=> (not res!2659407) (not e!3925947))))

(assert (=> d!2031887 (= res!2659407 (validRegex!8091 lt!2385748))))

(assert (=> d!2031887 (= lt!2385748 e!3925942)))

(declare-fun c!1186193 () Bool)

(assert (=> d!2031887 (= c!1186193 e!3925946)))

(declare-fun res!2659406 () Bool)

(assert (=> d!2031887 (=> (not res!2659406) (not e!3925946))))

(assert (=> d!2031887 (= res!2659406 ((_ is Cons!65241) (exprs!6239 (h!71690 zl!343))))))

(assert (=> d!2031887 (forall!15540 (exprs!6239 (h!71690 zl!343)) lambda!358048)))

(assert (=> d!2031887 (= (generalisedConcat!1952 (exprs!6239 (h!71690 zl!343))) lt!2385748)))

(assert (= (and d!2031887 res!2659406) b!6476716))

(assert (= (and d!2031887 c!1186193) b!6476712))

(assert (= (and d!2031887 (not c!1186193)) b!6476710))

(assert (= (and b!6476710 c!1186194) b!6476713))

(assert (= (and b!6476710 (not c!1186194)) b!6476715))

(assert (= (and d!2031887 res!2659407) b!6476711))

(assert (= (and b!6476711 c!1186195) b!6476709))

(assert (= (and b!6476711 (not c!1186195)) b!6476714))

(assert (= (and b!6476714 c!1186192) b!6476708))

(assert (= (and b!6476714 (not c!1186192)) b!6476707))

(declare-fun m!7264970 () Bool)

(assert (=> d!2031887 m!7264970))

(declare-fun m!7264972 () Bool)

(assert (=> d!2031887 m!7264972))

(declare-fun m!7264974 () Bool)

(assert (=> b!6476708 m!7264974))

(declare-fun m!7264976 () Bool)

(assert (=> b!6476714 m!7264976))

(assert (=> b!6476714 m!7264976))

(declare-fun m!7264978 () Bool)

(assert (=> b!6476714 m!7264978))

(declare-fun m!7264980 () Bool)

(assert (=> b!6476713 m!7264980))

(declare-fun m!7264982 () Bool)

(assert (=> b!6476711 m!7264982))

(declare-fun m!7264984 () Bool)

(assert (=> b!6476707 m!7264984))

(assert (=> b!6476716 m!7264520))

(declare-fun m!7264986 () Bool)

(assert (=> b!6476709 m!7264986))

(assert (=> b!6476315 d!2031887))

(declare-fun d!2031895 () Bool)

(declare-fun lt!2385751 () Regex!16355)

(assert (=> d!2031895 (validRegex!8091 lt!2385751)))

(assert (=> d!2031895 (= lt!2385751 (generalisedUnion!2199 (unfocusZipperList!1776 lt!2385686)))))

(assert (=> d!2031895 (= (unfocusZipper!2097 lt!2385686) lt!2385751)))

(declare-fun bs!1642306 () Bool)

(assert (= bs!1642306 d!2031895))

(declare-fun m!7264988 () Bool)

(assert (=> bs!1642306 m!7264988))

(declare-fun m!7264990 () Bool)

(assert (=> bs!1642306 m!7264990))

(assert (=> bs!1642306 m!7264990))

(declare-fun m!7264992 () Bool)

(assert (=> bs!1642306 m!7264992))

(assert (=> b!6476314 d!2031895))

(declare-fun d!2031897 () Bool)

(declare-fun c!1186206 () Bool)

(assert (=> d!2031897 (= c!1186206 (isEmpty!37424 (t!378988 s!2326)))))

(declare-fun e!3925960 () Bool)

(assert (=> d!2031897 (= (matchZipper!2367 lt!2385659 (t!378988 s!2326)) e!3925960)))

(declare-fun b!6476739 () Bool)

(assert (=> b!6476739 (= e!3925960 (nullableZipper!2114 lt!2385659))))

(declare-fun b!6476740 () Bool)

(assert (=> b!6476740 (= e!3925960 (matchZipper!2367 (derivationStepZipper!2321 lt!2385659 (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))))))

(assert (= (and d!2031897 c!1186206) b!6476739))

(assert (= (and d!2031897 (not c!1186206)) b!6476740))

(declare-fun m!7264994 () Bool)

(assert (=> d!2031897 m!7264994))

(declare-fun m!7264996 () Bool)

(assert (=> b!6476739 m!7264996))

(declare-fun m!7264998 () Bool)

(assert (=> b!6476740 m!7264998))

(assert (=> b!6476740 m!7264998))

(declare-fun m!7265000 () Bool)

(assert (=> b!6476740 m!7265000))

(declare-fun m!7265002 () Bool)

(assert (=> b!6476740 m!7265002))

(assert (=> b!6476740 m!7265000))

(assert (=> b!6476740 m!7265002))

(declare-fun m!7265004 () Bool)

(assert (=> b!6476740 m!7265004))

(assert (=> b!6476313 d!2031897))

(declare-fun bs!1642307 () Bool)

(declare-fun d!2031899 () Bool)

(assert (= bs!1642307 (and d!2031899 d!2031879)))

(declare-fun lambda!358049 () Int)

(assert (=> bs!1642307 (= lambda!358049 lambda!358039)))

(declare-fun bs!1642308 () Bool)

(assert (= bs!1642308 (and d!2031899 d!2031887)))

(assert (=> bs!1642308 (= lambda!358049 lambda!358048)))

(assert (=> d!2031899 (= (inv!84134 setElem!44113) (forall!15540 (exprs!6239 setElem!44113) lambda!358049))))

(declare-fun bs!1642309 () Bool)

(assert (= bs!1642309 d!2031899))

(declare-fun m!7265006 () Bool)

(assert (=> bs!1642309 m!7265006))

(assert (=> setNonEmpty!44113 d!2031899))

(declare-fun d!2031901 () Bool)

(assert (=> d!2031901 (= (isEmpty!37424 (_1!36637 lt!2385678)) ((_ is Nil!65240) (_1!36637 lt!2385678)))))

(assert (=> b!6476341 d!2031901))

(declare-fun d!2031903 () Bool)

(declare-fun isEmpty!37425 (Option!16246) Bool)

(assert (=> d!2031903 (= (isDefined!12949 lt!2385689) (not (isEmpty!37425 lt!2385689)))))

(declare-fun bs!1642310 () Bool)

(assert (= bs!1642310 d!2031903))

(declare-fun m!7265008 () Bool)

(assert (=> bs!1642310 m!7265008))

(assert (=> b!6476300 d!2031903))

(declare-fun bs!1642312 () Bool)

(declare-fun d!2031905 () Bool)

(assert (= bs!1642312 (and d!2031905 b!6476519)))

(declare-fun lambda!358052 () Int)

(assert (=> bs!1642312 (not (= lambda!358052 lambda!358035))))

(declare-fun bs!1642313 () Bool)

(assert (= bs!1642313 (and d!2031905 b!6476517)))

(assert (=> bs!1642313 (not (= lambda!358052 lambda!358032))))

(declare-fun bs!1642315 () Bool)

(assert (= bs!1642315 (and d!2031905 b!6476331)))

(assert (=> bs!1642315 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358052 lambda!358018))))

(declare-fun bs!1642316 () Bool)

(assert (= bs!1642316 (and d!2031905 b!6476306)))

(assert (=> bs!1642316 (not (= lambda!358052 lambda!358014))))

(assert (=> bs!1642316 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358052 lambda!358013))))

(declare-fun bs!1642317 () Bool)

(assert (= bs!1642317 (and d!2031905 b!6476300)))

(assert (=> bs!1642317 (= lambda!358052 lambda!358016)))

(assert (=> bs!1642315 (not (= lambda!358052 lambda!358019))))

(assert (=> bs!1642315 (not (= lambda!358052 lambda!358020))))

(assert (=> bs!1642317 (not (= lambda!358052 lambda!358017))))

(assert (=> d!2031905 true))

(assert (=> d!2031905 true))

(assert (=> d!2031905 true))

(assert (=> d!2031905 (= (isDefined!12949 (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)) (Exists!3425 lambda!358052))))

(declare-fun lt!2385754 () Unit!158751)

(declare-fun choose!48005 (Regex!16355 Regex!16355 List!65364) Unit!158751)

(assert (=> d!2031905 (= lt!2385754 (choose!48005 lt!2385664 (regTwo!33222 r!7292) s!2326))))

(assert (=> d!2031905 (validRegex!8091 lt!2385664)))

(assert (=> d!2031905 (= (lemmaFindConcatSeparationEquivalentToExists!2424 lt!2385664 (regTwo!33222 r!7292) s!2326) lt!2385754)))

(declare-fun bs!1642318 () Bool)

(assert (= bs!1642318 d!2031905))

(declare-fun m!7265052 () Bool)

(assert (=> bs!1642318 m!7265052))

(assert (=> bs!1642318 m!7264626))

(declare-fun m!7265056 () Bool)

(assert (=> bs!1642318 m!7265056))

(declare-fun m!7265058 () Bool)

(assert (=> bs!1642318 m!7265058))

(assert (=> bs!1642318 m!7264892))

(assert (=> bs!1642318 m!7264626))

(assert (=> b!6476300 d!2031905))

(declare-fun bs!1642332 () Bool)

(declare-fun d!2031923 () Bool)

(assert (= bs!1642332 (and d!2031923 b!6476519)))

(declare-fun lambda!358059 () Int)

(assert (=> bs!1642332 (not (= lambda!358059 lambda!358035))))

(declare-fun bs!1642333 () Bool)

(assert (= bs!1642333 (and d!2031923 b!6476517)))

(assert (=> bs!1642333 (not (= lambda!358059 lambda!358032))))

(declare-fun bs!1642334 () Bool)

(assert (= bs!1642334 (and d!2031923 b!6476331)))

(assert (=> bs!1642334 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358059 lambda!358018))))

(declare-fun bs!1642335 () Bool)

(assert (= bs!1642335 (and d!2031923 b!6476306)))

(assert (=> bs!1642335 (not (= lambda!358059 lambda!358014))))

(declare-fun bs!1642336 () Bool)

(assert (= bs!1642336 (and d!2031923 b!6476300)))

(assert (=> bs!1642336 (= lambda!358059 lambda!358016)))

(assert (=> bs!1642334 (not (= lambda!358059 lambda!358019))))

(assert (=> bs!1642334 (not (= lambda!358059 lambda!358020))))

(assert (=> bs!1642336 (not (= lambda!358059 lambda!358017))))

(assert (=> bs!1642335 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358059 lambda!358013))))

(declare-fun bs!1642337 () Bool)

(assert (= bs!1642337 (and d!2031923 d!2031905)))

(assert (=> bs!1642337 (= lambda!358059 lambda!358052)))

(assert (=> d!2031923 true))

(assert (=> d!2031923 true))

(assert (=> d!2031923 true))

(declare-fun lambda!358062 () Int)

(assert (=> bs!1642332 (= (and (= lt!2385664 (regOne!33222 lt!2385680)) (= (regTwo!33222 r!7292) (regTwo!33222 lt!2385680))) (= lambda!358062 lambda!358035))))

(declare-fun bs!1642338 () Bool)

(assert (= bs!1642338 d!2031923))

(assert (=> bs!1642338 (not (= lambda!358062 lambda!358059))))

(assert (=> bs!1642333 (not (= lambda!358062 lambda!358032))))

(assert (=> bs!1642334 (not (= lambda!358062 lambda!358018))))

(assert (=> bs!1642335 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358062 lambda!358014))))

(assert (=> bs!1642336 (not (= lambda!358062 lambda!358016))))

(assert (=> bs!1642334 (not (= lambda!358062 lambda!358019))))

(assert (=> bs!1642334 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358062 lambda!358020))))

(assert (=> bs!1642336 (= lambda!358062 lambda!358017)))

(assert (=> bs!1642335 (not (= lambda!358062 lambda!358013))))

(assert (=> bs!1642337 (not (= lambda!358062 lambda!358052))))

(assert (=> d!2031923 true))

(assert (=> d!2031923 true))

(assert (=> d!2031923 true))

(assert (=> d!2031923 (= (Exists!3425 lambda!358059) (Exists!3425 lambda!358062))))

(declare-fun lt!2385760 () Unit!158751)

(declare-fun choose!48006 (Regex!16355 Regex!16355 List!65364) Unit!158751)

(assert (=> d!2031923 (= lt!2385760 (choose!48006 lt!2385664 (regTwo!33222 r!7292) s!2326))))

(assert (=> d!2031923 (validRegex!8091 lt!2385664)))

(assert (=> d!2031923 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1962 lt!2385664 (regTwo!33222 r!7292) s!2326) lt!2385760)))

(declare-fun m!7265074 () Bool)

(assert (=> bs!1642338 m!7265074))

(declare-fun m!7265076 () Bool)

(assert (=> bs!1642338 m!7265076))

(declare-fun m!7265078 () Bool)

(assert (=> bs!1642338 m!7265078))

(assert (=> bs!1642338 m!7264892))

(assert (=> b!6476300 d!2031923))

(declare-fun b!6476897 () Bool)

(declare-fun e!3926050 () Bool)

(assert (=> b!6476897 (= e!3926050 (matchR!8538 (regTwo!33222 r!7292) s!2326))))

(declare-fun b!6476898 () Bool)

(declare-fun lt!2385781 () Unit!158751)

(declare-fun lt!2385780 () Unit!158751)

(assert (=> b!6476898 (= lt!2385781 lt!2385780)))

(assert (=> b!6476898 (= (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2511 (List!65364 C!32980 List!65364 List!65364) Unit!158751)

(assert (=> b!6476898 (= lt!2385780 (lemmaMoveElementToOtherListKeepsConcatEq!2511 Nil!65240 (h!71688 s!2326) (t!378988 s!2326) s!2326))))

(declare-fun e!3926049 () Option!16246)

(assert (=> b!6476898 (= e!3926049 (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326) s!2326))))

(declare-fun b!6476899 () Bool)

(declare-fun res!2659476 () Bool)

(declare-fun e!3926051 () Bool)

(assert (=> b!6476899 (=> (not res!2659476) (not e!3926051))))

(declare-fun lt!2385779 () Option!16246)

(assert (=> b!6476899 (= res!2659476 (matchR!8538 lt!2385664 (_1!36637 (get!22616 lt!2385779))))))

(declare-fun b!6476900 () Bool)

(declare-fun e!3926047 () Option!16246)

(assert (=> b!6476900 (= e!3926047 e!3926049)))

(declare-fun c!1186255 () Bool)

(assert (=> b!6476900 (= c!1186255 ((_ is Nil!65240) s!2326))))

(declare-fun d!2031931 () Bool)

(declare-fun e!3926048 () Bool)

(assert (=> d!2031931 e!3926048))

(declare-fun res!2659472 () Bool)

(assert (=> d!2031931 (=> res!2659472 e!3926048)))

(assert (=> d!2031931 (= res!2659472 e!3926051)))

(declare-fun res!2659474 () Bool)

(assert (=> d!2031931 (=> (not res!2659474) (not e!3926051))))

(assert (=> d!2031931 (= res!2659474 (isDefined!12949 lt!2385779))))

(assert (=> d!2031931 (= lt!2385779 e!3926047)))

(declare-fun c!1186254 () Bool)

(assert (=> d!2031931 (= c!1186254 e!3926050)))

(declare-fun res!2659473 () Bool)

(assert (=> d!2031931 (=> (not res!2659473) (not e!3926050))))

(assert (=> d!2031931 (= res!2659473 (matchR!8538 lt!2385664 Nil!65240))))

(assert (=> d!2031931 (validRegex!8091 lt!2385664)))

(assert (=> d!2031931 (= (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326) lt!2385779)))

(declare-fun b!6476901 () Bool)

(declare-fun res!2659475 () Bool)

(assert (=> b!6476901 (=> (not res!2659475) (not e!3926051))))

(assert (=> b!6476901 (= res!2659475 (matchR!8538 (regTwo!33222 r!7292) (_2!36637 (get!22616 lt!2385779))))))

(declare-fun b!6476902 () Bool)

(assert (=> b!6476902 (= e!3926047 (Some!16245 (tuple2!66669 Nil!65240 s!2326)))))

(declare-fun b!6476903 () Bool)

(assert (=> b!6476903 (= e!3926048 (not (isDefined!12949 lt!2385779)))))

(declare-fun b!6476904 () Bool)

(assert (=> b!6476904 (= e!3926051 (= (++!14423 (_1!36637 (get!22616 lt!2385779)) (_2!36637 (get!22616 lt!2385779))) s!2326))))

(declare-fun b!6476905 () Bool)

(assert (=> b!6476905 (= e!3926049 None!16245)))

(assert (= (and d!2031931 res!2659473) b!6476897))

(assert (= (and d!2031931 c!1186254) b!6476902))

(assert (= (and d!2031931 (not c!1186254)) b!6476900))

(assert (= (and b!6476900 c!1186255) b!6476905))

(assert (= (and b!6476900 (not c!1186255)) b!6476898))

(assert (= (and d!2031931 res!2659474) b!6476899))

(assert (= (and b!6476899 res!2659476) b!6476901))

(assert (= (and b!6476901 res!2659475) b!6476904))

(assert (= (and d!2031931 (not res!2659472)) b!6476903))

(declare-fun m!7265158 () Bool)

(assert (=> b!6476898 m!7265158))

(assert (=> b!6476898 m!7265158))

(declare-fun m!7265160 () Bool)

(assert (=> b!6476898 m!7265160))

(declare-fun m!7265162 () Bool)

(assert (=> b!6476898 m!7265162))

(assert (=> b!6476898 m!7265158))

(declare-fun m!7265164 () Bool)

(assert (=> b!6476898 m!7265164))

(declare-fun m!7265166 () Bool)

(assert (=> b!6476904 m!7265166))

(declare-fun m!7265168 () Bool)

(assert (=> b!6476904 m!7265168))

(declare-fun m!7265170 () Bool)

(assert (=> b!6476903 m!7265170))

(assert (=> d!2031931 m!7265170))

(declare-fun m!7265172 () Bool)

(assert (=> d!2031931 m!7265172))

(assert (=> d!2031931 m!7264892))

(assert (=> b!6476899 m!7265166))

(declare-fun m!7265174 () Bool)

(assert (=> b!6476899 m!7265174))

(assert (=> b!6476901 m!7265166))

(declare-fun m!7265176 () Bool)

(assert (=> b!6476901 m!7265176))

(declare-fun m!7265178 () Bool)

(assert (=> b!6476897 m!7265178))

(assert (=> b!6476300 d!2031931))

(declare-fun d!2031949 () Bool)

(assert (=> d!2031949 (= (get!22616 lt!2385689) (v!52424 lt!2385689))))

(assert (=> b!6476300 d!2031949))

(declare-fun d!2031951 () Bool)

(declare-fun e!3926061 () Bool)

(assert (=> d!2031951 e!3926061))

(declare-fun res!2659490 () Bool)

(assert (=> d!2031951 (=> (not res!2659490) (not e!3926061))))

(declare-fun lt!2385786 () List!65364)

(declare-fun content!12410 (List!65364) (InoxSet C!32980))

(assert (=> d!2031951 (= res!2659490 (= (content!12410 lt!2385786) ((_ map or) (content!12410 (_1!36637 lt!2385678)) (content!12410 (_2!36637 lt!2385678)))))))

(declare-fun e!3926060 () List!65364)

(assert (=> d!2031951 (= lt!2385786 e!3926060)))

(declare-fun c!1186258 () Bool)

(assert (=> d!2031951 (= c!1186258 ((_ is Nil!65240) (_1!36637 lt!2385678)))))

(assert (=> d!2031951 (= (++!14423 (_1!36637 lt!2385678) (_2!36637 lt!2385678)) lt!2385786)))

(declare-fun b!6476924 () Bool)

(declare-fun res!2659489 () Bool)

(assert (=> b!6476924 (=> (not res!2659489) (not e!3926061))))

(declare-fun size!40407 (List!65364) Int)

(assert (=> b!6476924 (= res!2659489 (= (size!40407 lt!2385786) (+ (size!40407 (_1!36637 lt!2385678)) (size!40407 (_2!36637 lt!2385678)))))))

(declare-fun b!6476923 () Bool)

(assert (=> b!6476923 (= e!3926060 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) (++!14423 (t!378988 (_1!36637 lt!2385678)) (_2!36637 lt!2385678))))))

(declare-fun b!6476925 () Bool)

(assert (=> b!6476925 (= e!3926061 (or (not (= (_2!36637 lt!2385678) Nil!65240)) (= lt!2385786 (_1!36637 lt!2385678))))))

(declare-fun b!6476922 () Bool)

(assert (=> b!6476922 (= e!3926060 (_2!36637 lt!2385678))))

(assert (= (and d!2031951 c!1186258) b!6476922))

(assert (= (and d!2031951 (not c!1186258)) b!6476923))

(assert (= (and d!2031951 res!2659490) b!6476924))

(assert (= (and b!6476924 res!2659489) b!6476925))

(declare-fun m!7265180 () Bool)

(assert (=> d!2031951 m!7265180))

(declare-fun m!7265182 () Bool)

(assert (=> d!2031951 m!7265182))

(declare-fun m!7265184 () Bool)

(assert (=> d!2031951 m!7265184))

(declare-fun m!7265186 () Bool)

(assert (=> b!6476924 m!7265186))

(declare-fun m!7265188 () Bool)

(assert (=> b!6476924 m!7265188))

(declare-fun m!7265190 () Bool)

(assert (=> b!6476924 m!7265190))

(declare-fun m!7265192 () Bool)

(assert (=> b!6476923 m!7265192))

(assert (=> b!6476300 d!2031951))

(declare-fun d!2031953 () Bool)

(declare-fun choose!48008 (Int) Bool)

(assert (=> d!2031953 (= (Exists!3425 lambda!358016) (choose!48008 lambda!358016))))

(declare-fun bs!1642351 () Bool)

(assert (= bs!1642351 d!2031953))

(declare-fun m!7265194 () Bool)

(assert (=> bs!1642351 m!7265194))

(assert (=> b!6476300 d!2031953))

(declare-fun d!2031955 () Bool)

(assert (=> d!2031955 (= (Exists!3425 lambda!358017) (choose!48008 lambda!358017))))

(declare-fun bs!1642352 () Bool)

(assert (= bs!1642352 d!2031955))

(declare-fun m!7265196 () Bool)

(assert (=> bs!1642352 m!7265196))

(assert (=> b!6476300 d!2031955))

(declare-fun c!1186270 () Bool)

(declare-fun call!560454 () List!65365)

(declare-fun c!1186271 () Bool)

(declare-fun call!560452 () (InoxSet Context!11478))

(declare-fun c!1186269 () Bool)

(declare-fun bm!560447 () Bool)

(assert (=> bm!560447 (= call!560452 (derivationStepZipperDown!1603 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292)))))) (ite (or c!1186271 c!1186270) lt!2385665 (Context!11479 call!560454)) (h!71688 s!2326)))))

(declare-fun b!6476948 () Bool)

(declare-fun e!3926078 () Bool)

(assert (=> b!6476948 (= c!1186270 e!3926078)))

(declare-fun res!2659493 () Bool)

(assert (=> b!6476948 (=> (not res!2659493) (not e!3926078))))

(assert (=> b!6476948 (= res!2659493 ((_ is Concat!25200) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun e!3926076 () (InoxSet Context!11478))

(declare-fun e!3926075 () (InoxSet Context!11478))

(assert (=> b!6476948 (= e!3926076 e!3926075)))

(declare-fun b!6476949 () Bool)

(declare-fun c!1186273 () Bool)

(assert (=> b!6476949 (= c!1186273 ((_ is Star!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun e!3926079 () (InoxSet Context!11478))

(declare-fun e!3926077 () (InoxSet Context!11478))

(assert (=> b!6476949 (= e!3926079 e!3926077)))

(declare-fun d!2031957 () Bool)

(declare-fun c!1186272 () Bool)

(assert (=> d!2031957 (= c!1186272 (and ((_ is ElementMatch!16355) (reg!16684 (regOne!33222 r!7292))) (= (c!1186089 (reg!16684 (regOne!33222 r!7292))) (h!71688 s!2326))))))

(declare-fun e!3926074 () (InoxSet Context!11478))

(assert (=> d!2031957 (= (derivationStepZipperDown!1603 (reg!16684 (regOne!33222 r!7292)) lt!2385665 (h!71688 s!2326)) e!3926074)))

(declare-fun bm!560448 () Bool)

(declare-fun call!560457 () List!65365)

(assert (=> bm!560448 (= call!560454 call!560457)))

(declare-fun b!6476950 () Bool)

(assert (=> b!6476950 (= e!3926078 (nullable!6348 (regOne!33222 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6476951 () Bool)

(assert (=> b!6476951 (= e!3926077 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560449 () Bool)

(declare-fun call!560455 () (InoxSet Context!11478))

(declare-fun call!560456 () (InoxSet Context!11478))

(assert (=> bm!560449 (= call!560455 call!560456)))

(declare-fun b!6476952 () Bool)

(assert (=> b!6476952 (= e!3926077 call!560455)))

(declare-fun b!6476953 () Bool)

(declare-fun call!560453 () (InoxSet Context!11478))

(assert (=> b!6476953 (= e!3926076 ((_ map or) call!560452 call!560453))))

(declare-fun b!6476954 () Bool)

(assert (=> b!6476954 (= e!3926074 (store ((as const (Array Context!11478 Bool)) false) lt!2385665 true))))

(declare-fun b!6476955 () Bool)

(assert (=> b!6476955 (= e!3926074 e!3926076)))

(assert (=> b!6476955 (= c!1186271 ((_ is Union!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun bm!560450 () Bool)

(declare-fun $colon$colon!2210 (List!65365 Regex!16355) List!65365)

(assert (=> bm!560450 (= call!560457 ($colon$colon!2210 (exprs!6239 lt!2385665) (ite (or c!1186270 c!1186269) (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6476956 () Bool)

(assert (=> b!6476956 (= e!3926075 ((_ map or) call!560453 call!560456))))

(declare-fun bm!560451 () Bool)

(assert (=> bm!560451 (= call!560456 call!560452)))

(declare-fun bm!560452 () Bool)

(assert (=> bm!560452 (= call!560453 (derivationStepZipperDown!1603 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292)))) (ite c!1186271 lt!2385665 (Context!11479 call!560457)) (h!71688 s!2326)))))

(declare-fun b!6476957 () Bool)

(assert (=> b!6476957 (= e!3926079 call!560455)))

(declare-fun b!6476958 () Bool)

(assert (=> b!6476958 (= e!3926075 e!3926079)))

(assert (=> b!6476958 (= c!1186269 ((_ is Concat!25200) (reg!16684 (regOne!33222 r!7292))))))

(assert (= (and d!2031957 c!1186272) b!6476954))

(assert (= (and d!2031957 (not c!1186272)) b!6476955))

(assert (= (and b!6476955 c!1186271) b!6476953))

(assert (= (and b!6476955 (not c!1186271)) b!6476948))

(assert (= (and b!6476948 res!2659493) b!6476950))

(assert (= (and b!6476948 c!1186270) b!6476956))

(assert (= (and b!6476948 (not c!1186270)) b!6476958))

(assert (= (and b!6476958 c!1186269) b!6476957))

(assert (= (and b!6476958 (not c!1186269)) b!6476949))

(assert (= (and b!6476949 c!1186273) b!6476952))

(assert (= (and b!6476949 (not c!1186273)) b!6476951))

(assert (= (or b!6476957 b!6476952) bm!560448))

(assert (= (or b!6476957 b!6476952) bm!560449))

(assert (= (or b!6476956 bm!560448) bm!560450))

(assert (= (or b!6476956 bm!560449) bm!560451))

(assert (= (or b!6476953 b!6476956) bm!560452))

(assert (= (or b!6476953 bm!560451) bm!560447))

(declare-fun m!7265204 () Bool)

(assert (=> bm!560452 m!7265204))

(declare-fun m!7265206 () Bool)

(assert (=> bm!560447 m!7265206))

(assert (=> b!6476954 m!7264540))

(declare-fun m!7265208 () Bool)

(assert (=> b!6476950 m!7265208))

(declare-fun m!7265210 () Bool)

(assert (=> bm!560450 m!7265210))

(assert (=> b!6476320 d!2031957))

(declare-fun bm!560453 () Bool)

(declare-fun call!560460 () List!65365)

(declare-fun c!1186276 () Bool)

(declare-fun call!560458 () (InoxSet Context!11478))

(declare-fun c!1186275 () Bool)

(declare-fun c!1186274 () Bool)

(assert (=> bm!560453 (= call!560458 (derivationStepZipperDown!1603 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343))))))) (ite (or c!1186276 c!1186275) lt!2385688 (Context!11479 call!560460)) (h!71688 s!2326)))))

(declare-fun b!6476959 () Bool)

(declare-fun e!3926084 () Bool)

(assert (=> b!6476959 (= c!1186275 e!3926084)))

(declare-fun res!2659494 () Bool)

(assert (=> b!6476959 (=> (not res!2659494) (not e!3926084))))

(assert (=> b!6476959 (= res!2659494 ((_ is Concat!25200) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun e!3926082 () (InoxSet Context!11478))

(declare-fun e!3926081 () (InoxSet Context!11478))

(assert (=> b!6476959 (= e!3926082 e!3926081)))

(declare-fun b!6476960 () Bool)

(declare-fun c!1186278 () Bool)

(assert (=> b!6476960 (= c!1186278 ((_ is Star!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun e!3926085 () (InoxSet Context!11478))

(declare-fun e!3926083 () (InoxSet Context!11478))

(assert (=> b!6476960 (= e!3926085 e!3926083)))

(declare-fun d!2031961 () Bool)

(declare-fun c!1186277 () Bool)

(assert (=> d!2031961 (= c!1186277 (and ((_ is ElementMatch!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))) (= (c!1186089 (h!71689 (exprs!6239 (h!71690 zl!343)))) (h!71688 s!2326))))))

(declare-fun e!3926080 () (InoxSet Context!11478))

(assert (=> d!2031961 (= (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (h!71690 zl!343))) lt!2385688 (h!71688 s!2326)) e!3926080)))

(declare-fun bm!560454 () Bool)

(declare-fun call!560463 () List!65365)

(assert (=> bm!560454 (= call!560460 call!560463)))

(declare-fun b!6476961 () Bool)

(assert (=> b!6476961 (= e!3926084 (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6476962 () Bool)

(assert (=> b!6476962 (= e!3926083 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560455 () Bool)

(declare-fun call!560461 () (InoxSet Context!11478))

(declare-fun call!560462 () (InoxSet Context!11478))

(assert (=> bm!560455 (= call!560461 call!560462)))

(declare-fun b!6476963 () Bool)

(assert (=> b!6476963 (= e!3926083 call!560461)))

(declare-fun b!6476964 () Bool)

(declare-fun call!560459 () (InoxSet Context!11478))

(assert (=> b!6476964 (= e!3926082 ((_ map or) call!560458 call!560459))))

(declare-fun b!6476965 () Bool)

(assert (=> b!6476965 (= e!3926080 (store ((as const (Array Context!11478 Bool)) false) lt!2385688 true))))

(declare-fun b!6476966 () Bool)

(assert (=> b!6476966 (= e!3926080 e!3926082)))

(assert (=> b!6476966 (= c!1186276 ((_ is Union!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun bm!560456 () Bool)

(assert (=> bm!560456 (= call!560463 ($colon$colon!2210 (exprs!6239 lt!2385688) (ite (or c!1186275 c!1186274) (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (h!71689 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6476967 () Bool)

(assert (=> b!6476967 (= e!3926081 ((_ map or) call!560459 call!560462))))

(declare-fun bm!560457 () Bool)

(assert (=> bm!560457 (= call!560462 call!560458)))

(declare-fun bm!560458 () Bool)

(assert (=> bm!560458 (= call!560459 (derivationStepZipperDown!1603 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))) (ite c!1186276 lt!2385688 (Context!11479 call!560463)) (h!71688 s!2326)))))

(declare-fun b!6476968 () Bool)

(assert (=> b!6476968 (= e!3926085 call!560461)))

(declare-fun b!6476969 () Bool)

(assert (=> b!6476969 (= e!3926081 e!3926085)))

(assert (=> b!6476969 (= c!1186274 ((_ is Concat!25200) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(assert (= (and d!2031961 c!1186277) b!6476965))

(assert (= (and d!2031961 (not c!1186277)) b!6476966))

(assert (= (and b!6476966 c!1186276) b!6476964))

(assert (= (and b!6476966 (not c!1186276)) b!6476959))

(assert (= (and b!6476959 res!2659494) b!6476961))

(assert (= (and b!6476959 c!1186275) b!6476967))

(assert (= (and b!6476959 (not c!1186275)) b!6476969))

(assert (= (and b!6476969 c!1186274) b!6476968))

(assert (= (and b!6476969 (not c!1186274)) b!6476960))

(assert (= (and b!6476960 c!1186278) b!6476963))

(assert (= (and b!6476960 (not c!1186278)) b!6476962))

(assert (= (or b!6476968 b!6476963) bm!560454))

(assert (= (or b!6476968 b!6476963) bm!560455))

(assert (= (or b!6476967 bm!560454) bm!560456))

(assert (= (or b!6476967 bm!560455) bm!560457))

(assert (= (or b!6476964 b!6476967) bm!560458))

(assert (= (or b!6476964 bm!560457) bm!560453))

(declare-fun m!7265212 () Bool)

(assert (=> bm!560458 m!7265212))

(declare-fun m!7265214 () Bool)

(assert (=> bm!560453 m!7265214))

(declare-fun m!7265216 () Bool)

(assert (=> b!6476965 m!7265216))

(declare-fun m!7265218 () Bool)

(assert (=> b!6476961 m!7265218))

(declare-fun m!7265220 () Bool)

(assert (=> bm!560456 m!7265220))

(assert (=> b!6476340 d!2031961))

(declare-fun d!2031963 () Bool)

(assert (=> d!2031963 (= (nullable!6348 (h!71689 (exprs!6239 (h!71690 zl!343)))) (nullableFct!2287 (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun bs!1642361 () Bool)

(assert (= bs!1642361 d!2031963))

(declare-fun m!7265222 () Bool)

(assert (=> bs!1642361 m!7265222))

(assert (=> b!6476340 d!2031963))

(declare-fun bm!560461 () Bool)

(declare-fun call!560466 () (InoxSet Context!11478))

(assert (=> bm!560461 (= call!560466 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (h!71688 s!2326)))))

(declare-fun b!6476998 () Bool)

(declare-fun e!3926104 () Bool)

(assert (=> b!6476998 (= e!3926104 (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun b!6476999 () Bool)

(declare-fun e!3926102 () (InoxSet Context!11478))

(assert (=> b!6476999 (= e!3926102 call!560466)))

(declare-fun b!6477000 () Bool)

(declare-fun e!3926103 () (InoxSet Context!11478))

(assert (=> b!6477000 (= e!3926103 e!3926102)))

(declare-fun c!1186288 () Bool)

(assert (=> b!6477000 (= c!1186288 ((_ is Cons!65241) (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))

(declare-fun b!6477002 () Bool)

(assert (=> b!6477002 (= e!3926102 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2031965 () Bool)

(declare-fun c!1186287 () Bool)

(assert (=> d!2031965 (= c!1186287 e!3926104)))

(declare-fun res!2659507 () Bool)

(assert (=> d!2031965 (=> (not res!2659507) (not e!3926104))))

(assert (=> d!2031965 (= res!2659507 ((_ is Cons!65241) (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))

(assert (=> d!2031965 (= (derivationStepZipperUp!1529 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))) (h!71688 s!2326)) e!3926103)))

(declare-fun b!6477001 () Bool)

(assert (=> b!6477001 (= e!3926103 ((_ map or) call!560466 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (h!71688 s!2326))))))

(assert (= (and d!2031965 res!2659507) b!6476998))

(assert (= (and d!2031965 c!1186287) b!6477001))

(assert (= (and d!2031965 (not c!1186287)) b!6477000))

(assert (= (and b!6477000 c!1186288) b!6476999))

(assert (= (and b!6477000 (not c!1186288)) b!6477002))

(assert (= (or b!6477001 b!6476999) bm!560461))

(declare-fun m!7265224 () Bool)

(assert (=> bm!560461 m!7265224))

(declare-fun m!7265226 () Bool)

(assert (=> b!6476998 m!7265226))

(declare-fun m!7265228 () Bool)

(assert (=> b!6477001 m!7265228))

(assert (=> b!6476340 d!2031965))

(declare-fun d!2031967 () Bool)

(declare-fun dynLambda!25915 (Int Context!11478) (InoxSet Context!11478))

(assert (=> d!2031967 (= (flatMap!1860 z!1189 lambda!358015) (dynLambda!25915 lambda!358015 (h!71690 zl!343)))))

(declare-fun lt!2385799 () Unit!158751)

(declare-fun choose!48009 ((InoxSet Context!11478) Context!11478 Int) Unit!158751)

(assert (=> d!2031967 (= lt!2385799 (choose!48009 z!1189 (h!71690 zl!343) lambda!358015))))

(assert (=> d!2031967 (= z!1189 (store ((as const (Array Context!11478 Bool)) false) (h!71690 zl!343) true))))

(assert (=> d!2031967 (= (lemmaFlatMapOnSingletonSet!1386 z!1189 (h!71690 zl!343) lambda!358015) lt!2385799)))

(declare-fun b_lambda!245367 () Bool)

(assert (=> (not b_lambda!245367) (not d!2031967)))

(declare-fun bs!1642362 () Bool)

(assert (= bs!1642362 d!2031967))

(assert (=> bs!1642362 m!7264676))

(declare-fun m!7265252 () Bool)

(assert (=> bs!1642362 m!7265252))

(declare-fun m!7265254 () Bool)

(assert (=> bs!1642362 m!7265254))

(declare-fun m!7265256 () Bool)

(assert (=> bs!1642362 m!7265256))

(assert (=> b!6476340 d!2031967))

(declare-fun d!2031971 () Bool)

(declare-fun choose!48010 ((InoxSet Context!11478) Int) (InoxSet Context!11478))

(assert (=> d!2031971 (= (flatMap!1860 z!1189 lambda!358015) (choose!48010 z!1189 lambda!358015))))

(declare-fun bs!1642363 () Bool)

(assert (= bs!1642363 d!2031971))

(declare-fun m!7265258 () Bool)

(assert (=> bs!1642363 m!7265258))

(assert (=> b!6476340 d!2031971))

(declare-fun bm!560462 () Bool)

(declare-fun call!560467 () (InoxSet Context!11478))

(assert (=> bm!560462 (= call!560467 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385688)) (Context!11479 (t!378989 (exprs!6239 lt!2385688))) (h!71688 s!2326)))))

(declare-fun b!6477012 () Bool)

(declare-fun e!3926112 () Bool)

(assert (=> b!6477012 (= e!3926112 (nullable!6348 (h!71689 (exprs!6239 lt!2385688))))))

(declare-fun b!6477013 () Bool)

(declare-fun e!3926110 () (InoxSet Context!11478))

(assert (=> b!6477013 (= e!3926110 call!560467)))

(declare-fun b!6477014 () Bool)

(declare-fun e!3926111 () (InoxSet Context!11478))

(assert (=> b!6477014 (= e!3926111 e!3926110)))

(declare-fun c!1186292 () Bool)

(assert (=> b!6477014 (= c!1186292 ((_ is Cons!65241) (exprs!6239 lt!2385688)))))

(declare-fun b!6477016 () Bool)

(assert (=> b!6477016 (= e!3926110 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2031973 () Bool)

(declare-fun c!1186291 () Bool)

(assert (=> d!2031973 (= c!1186291 e!3926112)))

(declare-fun res!2659513 () Bool)

(assert (=> d!2031973 (=> (not res!2659513) (not e!3926112))))

(assert (=> d!2031973 (= res!2659513 ((_ is Cons!65241) (exprs!6239 lt!2385688)))))

(assert (=> d!2031973 (= (derivationStepZipperUp!1529 lt!2385688 (h!71688 s!2326)) e!3926111)))

(declare-fun b!6477015 () Bool)

(assert (=> b!6477015 (= e!3926111 ((_ map or) call!560467 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385688))) (h!71688 s!2326))))))

(assert (= (and d!2031973 res!2659513) b!6477012))

(assert (= (and d!2031973 c!1186291) b!6477015))

(assert (= (and d!2031973 (not c!1186291)) b!6477014))

(assert (= (and b!6477014 c!1186292) b!6477013))

(assert (= (and b!6477014 (not c!1186292)) b!6477016))

(assert (= (or b!6477015 b!6477013) bm!560462))

(declare-fun m!7265260 () Bool)

(assert (=> bm!560462 m!7265260))

(declare-fun m!7265262 () Bool)

(assert (=> b!6477012 m!7265262))

(declare-fun m!7265264 () Bool)

(assert (=> b!6477015 m!7265264))

(assert (=> b!6476340 d!2031973))

(declare-fun bm!560463 () Bool)

(declare-fun call!560468 () (InoxSet Context!11478))

(assert (=> bm!560463 (= call!560468 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (h!71690 zl!343))) (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))) (h!71688 s!2326)))))

(declare-fun b!6477017 () Bool)

(declare-fun e!3926115 () Bool)

(assert (=> b!6477017 (= e!3926115 (nullable!6348 (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6477018 () Bool)

(declare-fun e!3926113 () (InoxSet Context!11478))

(assert (=> b!6477018 (= e!3926113 call!560468)))

(declare-fun b!6477019 () Bool)

(declare-fun e!3926114 () (InoxSet Context!11478))

(assert (=> b!6477019 (= e!3926114 e!3926113)))

(declare-fun c!1186294 () Bool)

(assert (=> b!6477019 (= c!1186294 ((_ is Cons!65241) (exprs!6239 (h!71690 zl!343))))))

(declare-fun b!6477021 () Bool)

(assert (=> b!6477021 (= e!3926113 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2031975 () Bool)

(declare-fun c!1186293 () Bool)

(assert (=> d!2031975 (= c!1186293 e!3926115)))

(declare-fun res!2659514 () Bool)

(assert (=> d!2031975 (=> (not res!2659514) (not e!3926115))))

(assert (=> d!2031975 (= res!2659514 ((_ is Cons!65241) (exprs!6239 (h!71690 zl!343))))))

(assert (=> d!2031975 (= (derivationStepZipperUp!1529 (h!71690 zl!343) (h!71688 s!2326)) e!3926114)))

(declare-fun b!6477020 () Bool)

(assert (=> b!6477020 (= e!3926114 ((_ map or) call!560468 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))) (h!71688 s!2326))))))

(assert (= (and d!2031975 res!2659514) b!6477017))

(assert (= (and d!2031975 c!1186293) b!6477020))

(assert (= (and d!2031975 (not c!1186293)) b!6477019))

(assert (= (and b!6477019 c!1186294) b!6477018))

(assert (= (and b!6477019 (not c!1186294)) b!6477021))

(assert (= (or b!6477020 b!6477018) bm!560463))

(declare-fun m!7265266 () Bool)

(assert (=> bm!560463 m!7265266))

(assert (=> b!6477017 m!7264684))

(declare-fun m!7265268 () Bool)

(assert (=> b!6477020 m!7265268))

(assert (=> b!6476340 d!2031975))

(declare-fun d!2031977 () Bool)

(declare-fun e!3926118 () Bool)

(assert (=> d!2031977 e!3926118))

(declare-fun res!2659517 () Bool)

(assert (=> d!2031977 (=> (not res!2659517) (not e!3926118))))

(declare-fun lt!2385804 () List!65366)

(declare-fun noDuplicate!2177 (List!65366) Bool)

(assert (=> d!2031977 (= res!2659517 (noDuplicate!2177 lt!2385804))))

(declare-fun choose!48011 ((InoxSet Context!11478)) List!65366)

(assert (=> d!2031977 (= lt!2385804 (choose!48011 z!1189))))

(assert (=> d!2031977 (= (toList!10139 z!1189) lt!2385804)))

(declare-fun b!6477024 () Bool)

(declare-fun content!12411 (List!65366) (InoxSet Context!11478))

(assert (=> b!6477024 (= e!3926118 (= (content!12411 lt!2385804) z!1189))))

(assert (= (and d!2031977 res!2659517) b!6477024))

(declare-fun m!7265270 () Bool)

(assert (=> d!2031977 m!7265270))

(declare-fun m!7265272 () Bool)

(assert (=> d!2031977 m!7265272))

(declare-fun m!7265274 () Bool)

(assert (=> b!6477024 m!7265274))

(assert (=> b!6476319 d!2031977))

(declare-fun bs!1642364 () Bool)

(declare-fun b!6477031 () Bool)

(assert (= bs!1642364 (and b!6477031 b!6476519)))

(declare-fun lambda!358073 () Int)

(assert (=> bs!1642364 (not (= lambda!358073 lambda!358035))))

(declare-fun bs!1642365 () Bool)

(assert (= bs!1642365 (and b!6477031 d!2031923)))

(assert (=> bs!1642365 (not (= lambda!358073 lambda!358059))))

(declare-fun bs!1642366 () Bool)

(assert (= bs!1642366 (and b!6477031 b!6476331)))

(assert (=> bs!1642366 (not (= lambda!358073 lambda!358018))))

(declare-fun bs!1642367 () Bool)

(assert (= bs!1642367 (and b!6477031 b!6476306)))

(assert (=> bs!1642367 (not (= lambda!358073 lambda!358014))))

(declare-fun bs!1642368 () Bool)

(assert (= bs!1642368 (and b!6477031 b!6476300)))

(assert (=> bs!1642368 (not (= lambda!358073 lambda!358016))))

(assert (=> bs!1642366 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 r!7292) (reg!16684 (regOne!33222 r!7292))) (= r!7292 lt!2385664)) (= lambda!358073 lambda!358019))))

(assert (=> bs!1642366 (not (= lambda!358073 lambda!358020))))

(assert (=> bs!1642368 (not (= lambda!358073 lambda!358017))))

(declare-fun bs!1642369 () Bool)

(assert (= bs!1642369 (and b!6477031 b!6476517)))

(assert (=> bs!1642369 (= (and (= (reg!16684 r!7292) (reg!16684 lt!2385680)) (= r!7292 lt!2385680)) (= lambda!358073 lambda!358032))))

(assert (=> bs!1642365 (not (= lambda!358073 lambda!358062))))

(assert (=> bs!1642367 (not (= lambda!358073 lambda!358013))))

(declare-fun bs!1642370 () Bool)

(assert (= bs!1642370 (and b!6477031 d!2031905)))

(assert (=> bs!1642370 (not (= lambda!358073 lambda!358052))))

(assert (=> b!6477031 true))

(assert (=> b!6477031 true))

(declare-fun bs!1642373 () Bool)

(declare-fun b!6477033 () Bool)

(assert (= bs!1642373 (and b!6477033 b!6476519)))

(declare-fun lambda!358075 () Int)

(assert (=> bs!1642373 (= (and (= (regOne!33222 r!7292) (regOne!33222 lt!2385680)) (= (regTwo!33222 r!7292) (regTwo!33222 lt!2385680))) (= lambda!358075 lambda!358035))))

(declare-fun bs!1642374 () Bool)

(assert (= bs!1642374 (and b!6477033 d!2031923)))

(assert (=> bs!1642374 (not (= lambda!358075 lambda!358059))))

(declare-fun bs!1642376 () Bool)

(assert (= bs!1642376 (and b!6477033 b!6477031)))

(assert (=> bs!1642376 (not (= lambda!358075 lambda!358073))))

(declare-fun bs!1642378 () Bool)

(assert (= bs!1642378 (and b!6477033 b!6476331)))

(assert (=> bs!1642378 (not (= lambda!358075 lambda!358018))))

(declare-fun bs!1642379 () Bool)

(assert (= bs!1642379 (and b!6477033 b!6476306)))

(assert (=> bs!1642379 (= lambda!358075 lambda!358014)))

(declare-fun bs!1642381 () Bool)

(assert (= bs!1642381 (and b!6477033 b!6476300)))

(assert (=> bs!1642381 (not (= lambda!358075 lambda!358016))))

(assert (=> bs!1642378 (not (= lambda!358075 lambda!358019))))

(assert (=> bs!1642378 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358075 lambda!358020))))

(assert (=> bs!1642381 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358075 lambda!358017))))

(declare-fun bs!1642383 () Bool)

(assert (= bs!1642383 (and b!6477033 b!6476517)))

(assert (=> bs!1642383 (not (= lambda!358075 lambda!358032))))

(assert (=> bs!1642374 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358075 lambda!358062))))

(assert (=> bs!1642379 (not (= lambda!358075 lambda!358013))))

(declare-fun bs!1642386 () Bool)

(assert (= bs!1642386 (and b!6477033 d!2031905)))

(assert (=> bs!1642386 (not (= lambda!358075 lambda!358052))))

(assert (=> b!6477033 true))

(assert (=> b!6477033 true))

(declare-fun b!6477025 () Bool)

(declare-fun res!2659519 () Bool)

(declare-fun e!3926125 () Bool)

(assert (=> b!6477025 (=> res!2659519 e!3926125)))

(declare-fun call!560470 () Bool)

(assert (=> b!6477025 (= res!2659519 call!560470)))

(declare-fun e!3926119 () Bool)

(assert (=> b!6477025 (= e!3926119 e!3926125)))

(declare-fun b!6477026 () Bool)

(declare-fun e!3926122 () Bool)

(assert (=> b!6477026 (= e!3926122 e!3926119)))

(declare-fun c!1186298 () Bool)

(assert (=> b!6477026 (= c!1186298 ((_ is Star!16355) r!7292))))

(declare-fun b!6477027 () Bool)

(declare-fun c!1186297 () Bool)

(assert (=> b!6477027 (= c!1186297 ((_ is Union!16355) r!7292))))

(declare-fun e!3926123 () Bool)

(assert (=> b!6477027 (= e!3926123 e!3926122)))

(declare-fun b!6477028 () Bool)

(declare-fun c!1186296 () Bool)

(assert (=> b!6477028 (= c!1186296 ((_ is ElementMatch!16355) r!7292))))

(declare-fun e!3926120 () Bool)

(assert (=> b!6477028 (= e!3926120 e!3926123)))

(declare-fun b!6477029 () Bool)

(declare-fun e!3926121 () Bool)

(assert (=> b!6477029 (= e!3926121 call!560470)))

(declare-fun b!6477030 () Bool)

(assert (=> b!6477030 (= e!3926121 e!3926120)))

(declare-fun res!2659518 () Bool)

(assert (=> b!6477030 (= res!2659518 (not ((_ is EmptyLang!16355) r!7292)))))

(assert (=> b!6477030 (=> (not res!2659518) (not e!3926120))))

(declare-fun d!2031979 () Bool)

(declare-fun c!1186295 () Bool)

(assert (=> d!2031979 (= c!1186295 ((_ is EmptyExpr!16355) r!7292))))

(assert (=> d!2031979 (= (matchRSpec!3456 r!7292 s!2326) e!3926121)))

(declare-fun call!560469 () Bool)

(assert (=> b!6477031 (= e!3926125 call!560469)))

(declare-fun bm!560464 () Bool)

(assert (=> bm!560464 (= call!560470 (isEmpty!37424 s!2326))))

(declare-fun b!6477032 () Bool)

(declare-fun e!3926124 () Bool)

(assert (=> b!6477032 (= e!3926122 e!3926124)))

(declare-fun res!2659520 () Bool)

(assert (=> b!6477032 (= res!2659520 (matchRSpec!3456 (regOne!33223 r!7292) s!2326))))

(assert (=> b!6477032 (=> res!2659520 e!3926124)))

(assert (=> b!6477033 (= e!3926119 call!560469)))

(declare-fun bm!560465 () Bool)

(assert (=> bm!560465 (= call!560469 (Exists!3425 (ite c!1186298 lambda!358073 lambda!358075)))))

(declare-fun b!6477034 () Bool)

(assert (=> b!6477034 (= e!3926123 (= s!2326 (Cons!65240 (c!1186089 r!7292) Nil!65240)))))

(declare-fun b!6477035 () Bool)

(assert (=> b!6477035 (= e!3926124 (matchRSpec!3456 (regTwo!33223 r!7292) s!2326))))

(assert (= (and d!2031979 c!1186295) b!6477029))

(assert (= (and d!2031979 (not c!1186295)) b!6477030))

(assert (= (and b!6477030 res!2659518) b!6477028))

(assert (= (and b!6477028 c!1186296) b!6477034))

(assert (= (and b!6477028 (not c!1186296)) b!6477027))

(assert (= (and b!6477027 c!1186297) b!6477032))

(assert (= (and b!6477027 (not c!1186297)) b!6477026))

(assert (= (and b!6477032 (not res!2659520)) b!6477035))

(assert (= (and b!6477026 c!1186298) b!6477025))

(assert (= (and b!6477026 (not c!1186298)) b!6477033))

(assert (= (and b!6477025 (not res!2659519)) b!6477031))

(assert (= (or b!6477031 b!6477033) bm!560465))

(assert (= (or b!6477029 b!6477025) bm!560464))

(assert (=> bm!560464 m!7264716))

(declare-fun m!7265282 () Bool)

(assert (=> b!6477032 m!7265282))

(declare-fun m!7265284 () Bool)

(assert (=> bm!560465 m!7265284))

(declare-fun m!7265286 () Bool)

(assert (=> b!6477035 m!7265286))

(assert (=> b!6476339 d!2031979))

(declare-fun b!6477040 () Bool)

(declare-fun e!3926134 () Bool)

(assert (=> b!6477040 (= e!3926134 (not (= (head!13189 s!2326) (c!1186089 r!7292))))))

(declare-fun b!6477041 () Bool)

(declare-fun res!2659527 () Bool)

(declare-fun e!3926128 () Bool)

(assert (=> b!6477041 (=> res!2659527 e!3926128)))

(assert (=> b!6477041 (= res!2659527 (not ((_ is ElementMatch!16355) r!7292)))))

(declare-fun e!3926131 () Bool)

(assert (=> b!6477041 (= e!3926131 e!3926128)))

(declare-fun b!6477042 () Bool)

(declare-fun e!3926133 () Bool)

(declare-fun lt!2385806 () Bool)

(declare-fun call!560471 () Bool)

(assert (=> b!6477042 (= e!3926133 (= lt!2385806 call!560471))))

(declare-fun b!6477043 () Bool)

(declare-fun e!3926129 () Bool)

(assert (=> b!6477043 (= e!3926129 (= (head!13189 s!2326) (c!1186089 r!7292)))))

(declare-fun b!6477044 () Bool)

(declare-fun res!2659530 () Bool)

(assert (=> b!6477044 (=> (not res!2659530) (not e!3926129))))

(assert (=> b!6477044 (= res!2659530 (not call!560471))))

(declare-fun d!2031983 () Bool)

(assert (=> d!2031983 e!3926133))

(declare-fun c!1186299 () Bool)

(assert (=> d!2031983 (= c!1186299 ((_ is EmptyExpr!16355) r!7292))))

(declare-fun e!3926132 () Bool)

(assert (=> d!2031983 (= lt!2385806 e!3926132)))

(declare-fun c!1186301 () Bool)

(assert (=> d!2031983 (= c!1186301 (isEmpty!37424 s!2326))))

(assert (=> d!2031983 (validRegex!8091 r!7292)))

(assert (=> d!2031983 (= (matchR!8538 r!7292 s!2326) lt!2385806)))

(declare-fun b!6477045 () Bool)

(declare-fun res!2659532 () Bool)

(assert (=> b!6477045 (=> res!2659532 e!3926128)))

(assert (=> b!6477045 (= res!2659532 e!3926129)))

(declare-fun res!2659525 () Bool)

(assert (=> b!6477045 (=> (not res!2659525) (not e!3926129))))

(assert (=> b!6477045 (= res!2659525 lt!2385806)))

(declare-fun b!6477046 () Bool)

(declare-fun e!3926130 () Bool)

(assert (=> b!6477046 (= e!3926128 e!3926130)))

(declare-fun res!2659531 () Bool)

(assert (=> b!6477046 (=> (not res!2659531) (not e!3926130))))

(assert (=> b!6477046 (= res!2659531 (not lt!2385806))))

(declare-fun b!6477047 () Bool)

(declare-fun res!2659528 () Bool)

(assert (=> b!6477047 (=> res!2659528 e!3926134)))

(assert (=> b!6477047 (= res!2659528 (not (isEmpty!37424 (tail!12274 s!2326))))))

(declare-fun b!6477048 () Bool)

(assert (=> b!6477048 (= e!3926132 (matchR!8538 (derivativeStep!5053 r!7292 (head!13189 s!2326)) (tail!12274 s!2326)))))

(declare-fun bm!560466 () Bool)

(assert (=> bm!560466 (= call!560471 (isEmpty!37424 s!2326))))

(declare-fun b!6477049 () Bool)

(assert (=> b!6477049 (= e!3926130 e!3926134)))

(declare-fun res!2659529 () Bool)

(assert (=> b!6477049 (=> res!2659529 e!3926134)))

(assert (=> b!6477049 (= res!2659529 call!560471)))

(declare-fun b!6477050 () Bool)

(assert (=> b!6477050 (= e!3926133 e!3926131)))

(declare-fun c!1186300 () Bool)

(assert (=> b!6477050 (= c!1186300 ((_ is EmptyLang!16355) r!7292))))

(declare-fun b!6477051 () Bool)

(declare-fun res!2659526 () Bool)

(assert (=> b!6477051 (=> (not res!2659526) (not e!3926129))))

(assert (=> b!6477051 (= res!2659526 (isEmpty!37424 (tail!12274 s!2326)))))

(declare-fun b!6477052 () Bool)

(assert (=> b!6477052 (= e!3926132 (nullable!6348 r!7292))))

(declare-fun b!6477053 () Bool)

(assert (=> b!6477053 (= e!3926131 (not lt!2385806))))

(assert (= (and d!2031983 c!1186301) b!6477052))

(assert (= (and d!2031983 (not c!1186301)) b!6477048))

(assert (= (and d!2031983 c!1186299) b!6477042))

(assert (= (and d!2031983 (not c!1186299)) b!6477050))

(assert (= (and b!6477050 c!1186300) b!6477053))

(assert (= (and b!6477050 (not c!1186300)) b!6477041))

(assert (= (and b!6477041 (not res!2659527)) b!6477045))

(assert (= (and b!6477045 res!2659525) b!6477044))

(assert (= (and b!6477044 res!2659530) b!6477051))

(assert (= (and b!6477051 res!2659526) b!6477043))

(assert (= (and b!6477045 (not res!2659532)) b!6477046))

(assert (= (and b!6477046 res!2659531) b!6477049))

(assert (= (and b!6477049 (not res!2659529)) b!6477047))

(assert (= (and b!6477047 (not res!2659528)) b!6477040))

(assert (= (or b!6477042 b!6477049 b!6477044) bm!560466))

(assert (=> d!2031983 m!7264716))

(assert (=> d!2031983 m!7264570))

(assert (=> b!6477048 m!7264724))

(assert (=> b!6477048 m!7264724))

(declare-fun m!7265290 () Bool)

(assert (=> b!6477048 m!7265290))

(assert (=> b!6477048 m!7264730))

(assert (=> b!6477048 m!7265290))

(assert (=> b!6477048 m!7264730))

(declare-fun m!7265292 () Bool)

(assert (=> b!6477048 m!7265292))

(assert (=> bm!560466 m!7264716))

(assert (=> b!6477047 m!7264730))

(assert (=> b!6477047 m!7264730))

(assert (=> b!6477047 m!7264738))

(assert (=> b!6477043 m!7264724))

(assert (=> b!6477051 m!7264730))

(assert (=> b!6477051 m!7264730))

(assert (=> b!6477051 m!7264738))

(assert (=> b!6477040 m!7264724))

(declare-fun m!7265302 () Bool)

(assert (=> b!6477052 m!7265302))

(assert (=> b!6476339 d!2031983))

(declare-fun d!2031989 () Bool)

(assert (=> d!2031989 (= (matchR!8538 r!7292 s!2326) (matchRSpec!3456 r!7292 s!2326))))

(declare-fun lt!2385808 () Unit!158751)

(assert (=> d!2031989 (= lt!2385808 (choose!47999 r!7292 s!2326))))

(assert (=> d!2031989 (validRegex!8091 r!7292)))

(assert (=> d!2031989 (= (mainMatchTheorem!3456 r!7292 s!2326) lt!2385808)))

(declare-fun bs!1642390 () Bool)

(assert (= bs!1642390 d!2031989))

(assert (=> bs!1642390 m!7264564))

(assert (=> bs!1642390 m!7264562))

(declare-fun m!7265308 () Bool)

(assert (=> bs!1642390 m!7265308))

(assert (=> bs!1642390 m!7264570))

(assert (=> b!6476339 d!2031989))

(declare-fun d!2031995 () Bool)

(declare-fun e!3926138 () Bool)

(assert (=> d!2031995 e!3926138))

(declare-fun res!2659536 () Bool)

(assert (=> d!2031995 (=> (not res!2659536) (not e!3926138))))

(declare-fun lt!2385809 () List!65364)

(assert (=> d!2031995 (= res!2659536 (= (content!12410 lt!2385809) ((_ map or) (content!12410 (_1!36637 lt!2385692)) (content!12410 lt!2385693))))))

(declare-fun e!3926137 () List!65364)

(assert (=> d!2031995 (= lt!2385809 e!3926137)))

(declare-fun c!1186303 () Bool)

(assert (=> d!2031995 (= c!1186303 ((_ is Nil!65240) (_1!36637 lt!2385692)))))

(assert (=> d!2031995 (= (++!14423 (_1!36637 lt!2385692) lt!2385693) lt!2385809)))

(declare-fun b!6477060 () Bool)

(declare-fun res!2659535 () Bool)

(assert (=> b!6477060 (=> (not res!2659535) (not e!3926138))))

(assert (=> b!6477060 (= res!2659535 (= (size!40407 lt!2385809) (+ (size!40407 (_1!36637 lt!2385692)) (size!40407 lt!2385693))))))

(declare-fun b!6477059 () Bool)

(assert (=> b!6477059 (= e!3926137 (Cons!65240 (h!71688 (_1!36637 lt!2385692)) (++!14423 (t!378988 (_1!36637 lt!2385692)) lt!2385693)))))

(declare-fun b!6477061 () Bool)

(assert (=> b!6477061 (= e!3926138 (or (not (= lt!2385693 Nil!65240)) (= lt!2385809 (_1!36637 lt!2385692))))))

(declare-fun b!6477058 () Bool)

(assert (=> b!6477058 (= e!3926137 lt!2385693)))

(assert (= (and d!2031995 c!1186303) b!6477058))

(assert (= (and d!2031995 (not c!1186303)) b!6477059))

(assert (= (and d!2031995 res!2659536) b!6477060))

(assert (= (and b!6477060 res!2659535) b!6477061))

(declare-fun m!7265312 () Bool)

(assert (=> d!2031995 m!7265312))

(declare-fun m!7265314 () Bool)

(assert (=> d!2031995 m!7265314))

(declare-fun m!7265316 () Bool)

(assert (=> d!2031995 m!7265316))

(declare-fun m!7265318 () Bool)

(assert (=> b!6477060 m!7265318))

(declare-fun m!7265320 () Bool)

(assert (=> b!6477060 m!7265320))

(declare-fun m!7265322 () Bool)

(assert (=> b!6477060 m!7265322))

(declare-fun m!7265324 () Bool)

(assert (=> b!6477059 m!7265324))

(assert (=> b!6476298 d!2031995))

(declare-fun d!2031999 () Bool)

(declare-fun e!3926140 () Bool)

(assert (=> d!2031999 e!3926140))

(declare-fun res!2659538 () Bool)

(assert (=> d!2031999 (=> (not res!2659538) (not e!3926140))))

(declare-fun lt!2385810 () List!65364)

(assert (=> d!2031999 (= res!2659538 (= (content!12410 lt!2385810) ((_ map or) (content!12410 lt!2385673) (content!12410 (_2!36637 lt!2385678)))))))

(declare-fun e!3926139 () List!65364)

(assert (=> d!2031999 (= lt!2385810 e!3926139)))

(declare-fun c!1186304 () Bool)

(assert (=> d!2031999 (= c!1186304 ((_ is Nil!65240) lt!2385673))))

(assert (=> d!2031999 (= (++!14423 lt!2385673 (_2!36637 lt!2385678)) lt!2385810)))

(declare-fun b!6477064 () Bool)

(declare-fun res!2659537 () Bool)

(assert (=> b!6477064 (=> (not res!2659537) (not e!3926140))))

(assert (=> b!6477064 (= res!2659537 (= (size!40407 lt!2385810) (+ (size!40407 lt!2385673) (size!40407 (_2!36637 lt!2385678)))))))

(declare-fun b!6477063 () Bool)

(assert (=> b!6477063 (= e!3926139 (Cons!65240 (h!71688 lt!2385673) (++!14423 (t!378988 lt!2385673) (_2!36637 lt!2385678))))))

(declare-fun b!6477065 () Bool)

(assert (=> b!6477065 (= e!3926140 (or (not (= (_2!36637 lt!2385678) Nil!65240)) (= lt!2385810 lt!2385673)))))

(declare-fun b!6477062 () Bool)

(assert (=> b!6477062 (= e!3926139 (_2!36637 lt!2385678))))

(assert (= (and d!2031999 c!1186304) b!6477062))

(assert (= (and d!2031999 (not c!1186304)) b!6477063))

(assert (= (and d!2031999 res!2659538) b!6477064))

(assert (= (and b!6477064 res!2659537) b!6477065))

(declare-fun m!7265326 () Bool)

(assert (=> d!2031999 m!7265326))

(declare-fun m!7265328 () Bool)

(assert (=> d!2031999 m!7265328))

(assert (=> d!2031999 m!7265184))

(declare-fun m!7265330 () Bool)

(assert (=> b!6477064 m!7265330))

(declare-fun m!7265332 () Bool)

(assert (=> b!6477064 m!7265332))

(assert (=> b!6477064 m!7265190))

(declare-fun m!7265334 () Bool)

(assert (=> b!6477063 m!7265334))

(assert (=> b!6476298 d!2031999))

(declare-fun d!2032001 () Bool)

(declare-fun e!3926147 () Bool)

(assert (=> d!2032001 e!3926147))

(declare-fun res!2659545 () Bool)

(assert (=> d!2032001 (=> (not res!2659545) (not e!3926147))))

(declare-fun lt!2385814 () List!65364)

(assert (=> d!2032001 (= res!2659545 (= (content!12410 lt!2385814) ((_ map or) (content!12410 (_2!36637 lt!2385692)) (content!12410 (_2!36637 lt!2385678)))))))

(declare-fun e!3926146 () List!65364)

(assert (=> d!2032001 (= lt!2385814 e!3926146)))

(declare-fun c!1186307 () Bool)

(assert (=> d!2032001 (= c!1186307 ((_ is Nil!65240) (_2!36637 lt!2385692)))))

(assert (=> d!2032001 (= (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)) lt!2385814)))

(declare-fun b!6477077 () Bool)

(declare-fun res!2659544 () Bool)

(assert (=> b!6477077 (=> (not res!2659544) (not e!3926147))))

(assert (=> b!6477077 (= res!2659544 (= (size!40407 lt!2385814) (+ (size!40407 (_2!36637 lt!2385692)) (size!40407 (_2!36637 lt!2385678)))))))

(declare-fun b!6477076 () Bool)

(assert (=> b!6477076 (= e!3926146 (Cons!65240 (h!71688 (_2!36637 lt!2385692)) (++!14423 (t!378988 (_2!36637 lt!2385692)) (_2!36637 lt!2385678))))))

(declare-fun b!6477078 () Bool)

(assert (=> b!6477078 (= e!3926147 (or (not (= (_2!36637 lt!2385678) Nil!65240)) (= lt!2385814 (_2!36637 lt!2385692))))))

(declare-fun b!6477075 () Bool)

(assert (=> b!6477075 (= e!3926146 (_2!36637 lt!2385678))))

(assert (= (and d!2032001 c!1186307) b!6477075))

(assert (= (and d!2032001 (not c!1186307)) b!6477076))

(assert (= (and d!2032001 res!2659545) b!6477077))

(assert (= (and b!6477077 res!2659544) b!6477078))

(declare-fun m!7265336 () Bool)

(assert (=> d!2032001 m!7265336))

(declare-fun m!7265338 () Bool)

(assert (=> d!2032001 m!7265338))

(assert (=> d!2032001 m!7265184))

(declare-fun m!7265340 () Bool)

(assert (=> b!6477077 m!7265340))

(declare-fun m!7265342 () Bool)

(assert (=> b!6477077 m!7265342))

(assert (=> b!6477077 m!7265190))

(declare-fun m!7265344 () Bool)

(assert (=> b!6477076 m!7265344))

(assert (=> b!6476298 d!2032001))

(declare-fun d!2032003 () Bool)

(assert (=> d!2032003 (= (++!14423 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)) (_2!36637 lt!2385678)) (++!14423 (_1!36637 lt!2385692) (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))))))

(declare-fun lt!2385818 () Unit!158751)

(declare-fun choose!48012 (List!65364 List!65364 List!65364) Unit!158751)

(assert (=> d!2032003 (= lt!2385818 (choose!48012 (_1!36637 lt!2385692) (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(assert (=> d!2032003 (= (lemmaConcatAssociativity!2926 (_1!36637 lt!2385692) (_2!36637 lt!2385692) (_2!36637 lt!2385678)) lt!2385818)))

(declare-fun bs!1642396 () Bool)

(assert (= bs!1642396 d!2032003))

(assert (=> bs!1642396 m!7264658))

(assert (=> bs!1642396 m!7264658))

(declare-fun m!7265366 () Bool)

(assert (=> bs!1642396 m!7265366))

(assert (=> bs!1642396 m!7264596))

(declare-fun m!7265368 () Bool)

(assert (=> bs!1642396 m!7265368))

(assert (=> bs!1642396 m!7264596))

(declare-fun m!7265370 () Bool)

(assert (=> bs!1642396 m!7265370))

(assert (=> b!6476298 d!2032003))

(declare-fun b!6477079 () Bool)

(declare-fun e!3926154 () Bool)

(assert (=> b!6477079 (= e!3926154 (not (= (head!13189 (_1!36637 lt!2385692)) (c!1186089 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun b!6477080 () Bool)

(declare-fun res!2659548 () Bool)

(declare-fun e!3926148 () Bool)

(assert (=> b!6477080 (=> res!2659548 e!3926148)))

(assert (=> b!6477080 (= res!2659548 (not ((_ is ElementMatch!16355) (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun e!3926151 () Bool)

(assert (=> b!6477080 (= e!3926151 e!3926148)))

(declare-fun b!6477081 () Bool)

(declare-fun e!3926153 () Bool)

(declare-fun lt!2385819 () Bool)

(declare-fun call!560472 () Bool)

(assert (=> b!6477081 (= e!3926153 (= lt!2385819 call!560472))))

(declare-fun b!6477082 () Bool)

(declare-fun e!3926149 () Bool)

(assert (=> b!6477082 (= e!3926149 (= (head!13189 (_1!36637 lt!2385692)) (c!1186089 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6477083 () Bool)

(declare-fun res!2659551 () Bool)

(assert (=> b!6477083 (=> (not res!2659551) (not e!3926149))))

(assert (=> b!6477083 (= res!2659551 (not call!560472))))

(declare-fun d!2032011 () Bool)

(assert (=> d!2032011 e!3926153))

(declare-fun c!1186308 () Bool)

(assert (=> d!2032011 (= c!1186308 ((_ is EmptyExpr!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun e!3926152 () Bool)

(assert (=> d!2032011 (= lt!2385819 e!3926152)))

(declare-fun c!1186310 () Bool)

(assert (=> d!2032011 (= c!1186310 (isEmpty!37424 (_1!36637 lt!2385692)))))

(assert (=> d!2032011 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032011 (= (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692)) lt!2385819)))

(declare-fun b!6477084 () Bool)

(declare-fun res!2659553 () Bool)

(assert (=> b!6477084 (=> res!2659553 e!3926148)))

(assert (=> b!6477084 (= res!2659553 e!3926149)))

(declare-fun res!2659546 () Bool)

(assert (=> b!6477084 (=> (not res!2659546) (not e!3926149))))

(assert (=> b!6477084 (= res!2659546 lt!2385819)))

(declare-fun b!6477085 () Bool)

(declare-fun e!3926150 () Bool)

(assert (=> b!6477085 (= e!3926148 e!3926150)))

(declare-fun res!2659552 () Bool)

(assert (=> b!6477085 (=> (not res!2659552) (not e!3926150))))

(assert (=> b!6477085 (= res!2659552 (not lt!2385819))))

(declare-fun b!6477086 () Bool)

(declare-fun res!2659549 () Bool)

(assert (=> b!6477086 (=> res!2659549 e!3926154)))

(assert (=> b!6477086 (= res!2659549 (not (isEmpty!37424 (tail!12274 (_1!36637 lt!2385692)))))))

(declare-fun b!6477087 () Bool)

(assert (=> b!6477087 (= e!3926152 (matchR!8538 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692))) (tail!12274 (_1!36637 lt!2385692))))))

(declare-fun bm!560467 () Bool)

(assert (=> bm!560467 (= call!560472 (isEmpty!37424 (_1!36637 lt!2385692)))))

(declare-fun b!6477088 () Bool)

(assert (=> b!6477088 (= e!3926150 e!3926154)))

(declare-fun res!2659550 () Bool)

(assert (=> b!6477088 (=> res!2659550 e!3926154)))

(assert (=> b!6477088 (= res!2659550 call!560472)))

(declare-fun b!6477089 () Bool)

(assert (=> b!6477089 (= e!3926153 e!3926151)))

(declare-fun c!1186309 () Bool)

(assert (=> b!6477089 (= c!1186309 ((_ is EmptyLang!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6477090 () Bool)

(declare-fun res!2659547 () Bool)

(assert (=> b!6477090 (=> (not res!2659547) (not e!3926149))))

(assert (=> b!6477090 (= res!2659547 (isEmpty!37424 (tail!12274 (_1!36637 lt!2385692))))))

(declare-fun b!6477091 () Bool)

(assert (=> b!6477091 (= e!3926152 (nullable!6348 (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6477092 () Bool)

(assert (=> b!6477092 (= e!3926151 (not lt!2385819))))

(assert (= (and d!2032011 c!1186310) b!6477091))

(assert (= (and d!2032011 (not c!1186310)) b!6477087))

(assert (= (and d!2032011 c!1186308) b!6477081))

(assert (= (and d!2032011 (not c!1186308)) b!6477089))

(assert (= (and b!6477089 c!1186309) b!6477092))

(assert (= (and b!6477089 (not c!1186309)) b!6477080))

(assert (= (and b!6477080 (not res!2659548)) b!6477084))

(assert (= (and b!6477084 res!2659546) b!6477083))

(assert (= (and b!6477083 res!2659551) b!6477090))

(assert (= (and b!6477090 res!2659547) b!6477082))

(assert (= (and b!6477084 (not res!2659553)) b!6477085))

(assert (= (and b!6477085 res!2659552) b!6477088))

(assert (= (and b!6477088 (not res!2659550)) b!6477086))

(assert (= (and b!6477086 (not res!2659549)) b!6477079))

(assert (= (or b!6477081 b!6477088 b!6477083) bm!560467))

(assert (=> d!2032011 m!7264922))

(assert (=> d!2032011 m!7264888))

(assert (=> b!6477087 m!7264926))

(assert (=> b!6477087 m!7264926))

(declare-fun m!7265372 () Bool)

(assert (=> b!6477087 m!7265372))

(assert (=> b!6477087 m!7264930))

(assert (=> b!6477087 m!7265372))

(assert (=> b!6477087 m!7264930))

(declare-fun m!7265374 () Bool)

(assert (=> b!6477087 m!7265374))

(assert (=> bm!560467 m!7264922))

(assert (=> b!6477086 m!7264930))

(assert (=> b!6477086 m!7264930))

(declare-fun m!7265376 () Bool)

(assert (=> b!6477086 m!7265376))

(assert (=> b!6477082 m!7264926))

(assert (=> b!6477090 m!7264930))

(assert (=> b!6477090 m!7264930))

(assert (=> b!6477090 m!7265376))

(assert (=> b!6477079 m!7264926))

(declare-fun m!7265378 () Bool)

(assert (=> b!6477091 m!7265378))

(assert (=> b!6476338 d!2032011))

(declare-fun d!2032013 () Bool)

(declare-fun c!1186311 () Bool)

(assert (=> d!2032013 (= c!1186311 (isEmpty!37424 s!2326))))

(declare-fun e!3926155 () Bool)

(assert (=> d!2032013 (= (matchZipper!2367 lt!2385647 s!2326) e!3926155)))

(declare-fun b!6477093 () Bool)

(assert (=> b!6477093 (= e!3926155 (nullableZipper!2114 lt!2385647))))

(declare-fun b!6477094 () Bool)

(assert (=> b!6477094 (= e!3926155 (matchZipper!2367 (derivationStepZipper!2321 lt!2385647 (head!13189 s!2326)) (tail!12274 s!2326)))))

(assert (= (and d!2032013 c!1186311) b!6477093))

(assert (= (and d!2032013 (not c!1186311)) b!6477094))

(assert (=> d!2032013 m!7264716))

(declare-fun m!7265384 () Bool)

(assert (=> b!6477093 m!7265384))

(assert (=> b!6477094 m!7264724))

(assert (=> b!6477094 m!7264724))

(declare-fun m!7265386 () Bool)

(assert (=> b!6477094 m!7265386))

(assert (=> b!6477094 m!7264730))

(assert (=> b!6477094 m!7265386))

(assert (=> b!6477094 m!7264730))

(declare-fun m!7265388 () Bool)

(assert (=> b!6477094 m!7265388))

(assert (=> b!6476307 d!2032013))

(declare-fun d!2032017 () Bool)

(declare-fun c!1186312 () Bool)

(assert (=> d!2032017 (= c!1186312 (isEmpty!37424 (t!378988 s!2326)))))

(declare-fun e!3926156 () Bool)

(assert (=> d!2032017 (= (matchZipper!2367 lt!2385661 (t!378988 s!2326)) e!3926156)))

(declare-fun b!6477095 () Bool)

(assert (=> b!6477095 (= e!3926156 (nullableZipper!2114 lt!2385661))))

(declare-fun b!6477096 () Bool)

(assert (=> b!6477096 (= e!3926156 (matchZipper!2367 (derivationStepZipper!2321 lt!2385661 (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))))))

(assert (= (and d!2032017 c!1186312) b!6477095))

(assert (= (and d!2032017 (not c!1186312)) b!6477096))

(assert (=> d!2032017 m!7264994))

(declare-fun m!7265390 () Bool)

(assert (=> b!6477095 m!7265390))

(assert (=> b!6477096 m!7264998))

(assert (=> b!6477096 m!7264998))

(declare-fun m!7265392 () Bool)

(assert (=> b!6477096 m!7265392))

(assert (=> b!6477096 m!7265002))

(assert (=> b!6477096 m!7265392))

(assert (=> b!6477096 m!7265002))

(declare-fun m!7265394 () Bool)

(assert (=> b!6477096 m!7265394))

(assert (=> b!6476307 d!2032017))

(declare-fun d!2032019 () Bool)

(assert (=> d!2032019 (= (flatMap!1860 lt!2385647 lambda!358015) (choose!48010 lt!2385647 lambda!358015))))

(declare-fun bs!1642406 () Bool)

(assert (= bs!1642406 d!2032019))

(declare-fun m!7265396 () Bool)

(assert (=> bs!1642406 m!7265396))

(assert (=> b!6476326 d!2032019))

(declare-fun bm!560468 () Bool)

(declare-fun call!560473 () (InoxSet Context!11478))

(assert (=> bm!560468 (= call!560473 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385662)) (Context!11479 (t!378989 (exprs!6239 lt!2385662))) (h!71688 s!2326)))))

(declare-fun b!6477097 () Bool)

(declare-fun e!3926159 () Bool)

(assert (=> b!6477097 (= e!3926159 (nullable!6348 (h!71689 (exprs!6239 lt!2385662))))))

(declare-fun b!6477098 () Bool)

(declare-fun e!3926157 () (InoxSet Context!11478))

(assert (=> b!6477098 (= e!3926157 call!560473)))

(declare-fun b!6477099 () Bool)

(declare-fun e!3926158 () (InoxSet Context!11478))

(assert (=> b!6477099 (= e!3926158 e!3926157)))

(declare-fun c!1186314 () Bool)

(assert (=> b!6477099 (= c!1186314 ((_ is Cons!65241) (exprs!6239 lt!2385662)))))

(declare-fun b!6477101 () Bool)

(assert (=> b!6477101 (= e!3926157 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032021 () Bool)

(declare-fun c!1186313 () Bool)

(assert (=> d!2032021 (= c!1186313 e!3926159)))

(declare-fun res!2659554 () Bool)

(assert (=> d!2032021 (=> (not res!2659554) (not e!3926159))))

(assert (=> d!2032021 (= res!2659554 ((_ is Cons!65241) (exprs!6239 lt!2385662)))))

(assert (=> d!2032021 (= (derivationStepZipperUp!1529 lt!2385662 (h!71688 s!2326)) e!3926158)))

(declare-fun b!6477100 () Bool)

(assert (=> b!6477100 (= e!3926158 ((_ map or) call!560473 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385662))) (h!71688 s!2326))))))

(assert (= (and d!2032021 res!2659554) b!6477097))

(assert (= (and d!2032021 c!1186313) b!6477100))

(assert (= (and d!2032021 (not c!1186313)) b!6477099))

(assert (= (and b!6477099 c!1186314) b!6477098))

(assert (= (and b!6477099 (not c!1186314)) b!6477101))

(assert (= (or b!6477100 b!6477098) bm!560468))

(declare-fun m!7265398 () Bool)

(assert (=> bm!560468 m!7265398))

(declare-fun m!7265400 () Bool)

(assert (=> b!6477097 m!7265400))

(declare-fun m!7265402 () Bool)

(assert (=> b!6477100 m!7265402))

(assert (=> b!6476326 d!2032021))

(declare-fun d!2032023 () Bool)

(assert (=> d!2032023 (= (flatMap!1860 lt!2385647 lambda!358015) (dynLambda!25915 lambda!358015 lt!2385662))))

(declare-fun lt!2385821 () Unit!158751)

(assert (=> d!2032023 (= lt!2385821 (choose!48009 lt!2385647 lt!2385662 lambda!358015))))

(assert (=> d!2032023 (= lt!2385647 (store ((as const (Array Context!11478 Bool)) false) lt!2385662 true))))

(assert (=> d!2032023 (= (lemmaFlatMapOnSingletonSet!1386 lt!2385647 lt!2385662 lambda!358015) lt!2385821)))

(declare-fun b_lambda!245369 () Bool)

(assert (=> (not b_lambda!245369) (not d!2032023)))

(declare-fun bs!1642412 () Bool)

(assert (= bs!1642412 d!2032023))

(assert (=> bs!1642412 m!7264582))

(declare-fun m!7265404 () Bool)

(assert (=> bs!1642412 m!7265404))

(declare-fun m!7265406 () Bool)

(assert (=> bs!1642412 m!7265406))

(assert (=> bs!1642412 m!7264584))

(assert (=> b!6476326 d!2032023))

(declare-fun bs!1642417 () Bool)

(declare-fun d!2032025 () Bool)

(assert (= bs!1642417 (and d!2032025 b!6476340)))

(declare-fun lambda!358081 () Int)

(assert (=> bs!1642417 (= lambda!358081 lambda!358015)))

(assert (=> d!2032025 true))

(assert (=> d!2032025 (= (derivationStepZipper!2321 lt!2385647 (h!71688 s!2326)) (flatMap!1860 lt!2385647 lambda!358081))))

(declare-fun bs!1642418 () Bool)

(assert (= bs!1642418 d!2032025))

(declare-fun m!7265408 () Bool)

(assert (=> bs!1642418 m!7265408))

(assert (=> b!6476326 d!2032025))

(declare-fun b!6477104 () Bool)

(declare-fun e!3926163 () Bool)

(assert (=> b!6477104 (= e!3926163 (matchR!8538 (regTwo!33222 r!7292) s!2326))))

(declare-fun b!6477105 () Bool)

(declare-fun lt!2385824 () Unit!158751)

(declare-fun lt!2385823 () Unit!158751)

(assert (=> b!6477105 (= lt!2385824 lt!2385823)))

(assert (=> b!6477105 (= (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326)) s!2326)))

(assert (=> b!6477105 (= lt!2385823 (lemmaMoveElementToOtherListKeepsConcatEq!2511 Nil!65240 (h!71688 s!2326) (t!378988 s!2326) s!2326))))

(declare-fun e!3926162 () Option!16246)

(assert (=> b!6477105 (= e!3926162 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326) s!2326))))

(declare-fun b!6477106 () Bool)

(declare-fun res!2659559 () Bool)

(declare-fun e!3926164 () Bool)

(assert (=> b!6477106 (=> (not res!2659559) (not e!3926164))))

(declare-fun lt!2385822 () Option!16246)

(assert (=> b!6477106 (= res!2659559 (matchR!8538 (regOne!33222 r!7292) (_1!36637 (get!22616 lt!2385822))))))

(declare-fun b!6477107 () Bool)

(declare-fun e!3926160 () Option!16246)

(assert (=> b!6477107 (= e!3926160 e!3926162)))

(declare-fun c!1186318 () Bool)

(assert (=> b!6477107 (= c!1186318 ((_ is Nil!65240) s!2326))))

(declare-fun d!2032027 () Bool)

(declare-fun e!3926161 () Bool)

(assert (=> d!2032027 e!3926161))

(declare-fun res!2659555 () Bool)

(assert (=> d!2032027 (=> res!2659555 e!3926161)))

(assert (=> d!2032027 (= res!2659555 e!3926164)))

(declare-fun res!2659557 () Bool)

(assert (=> d!2032027 (=> (not res!2659557) (not e!3926164))))

(assert (=> d!2032027 (= res!2659557 (isDefined!12949 lt!2385822))))

(assert (=> d!2032027 (= lt!2385822 e!3926160)))

(declare-fun c!1186317 () Bool)

(assert (=> d!2032027 (= c!1186317 e!3926163)))

(declare-fun res!2659556 () Bool)

(assert (=> d!2032027 (=> (not res!2659556) (not e!3926163))))

(assert (=> d!2032027 (= res!2659556 (matchR!8538 (regOne!33222 r!7292) Nil!65240))))

(assert (=> d!2032027 (validRegex!8091 (regOne!33222 r!7292))))

(assert (=> d!2032027 (= (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326) lt!2385822)))

(declare-fun b!6477108 () Bool)

(declare-fun res!2659558 () Bool)

(assert (=> b!6477108 (=> (not res!2659558) (not e!3926164))))

(assert (=> b!6477108 (= res!2659558 (matchR!8538 (regTwo!33222 r!7292) (_2!36637 (get!22616 lt!2385822))))))

(declare-fun b!6477109 () Bool)

(assert (=> b!6477109 (= e!3926160 (Some!16245 (tuple2!66669 Nil!65240 s!2326)))))

(declare-fun b!6477110 () Bool)

(assert (=> b!6477110 (= e!3926161 (not (isDefined!12949 lt!2385822)))))

(declare-fun b!6477111 () Bool)

(assert (=> b!6477111 (= e!3926164 (= (++!14423 (_1!36637 (get!22616 lt!2385822)) (_2!36637 (get!22616 lt!2385822))) s!2326))))

(declare-fun b!6477112 () Bool)

(assert (=> b!6477112 (= e!3926162 None!16245)))

(assert (= (and d!2032027 res!2659556) b!6477104))

(assert (= (and d!2032027 c!1186317) b!6477109))

(assert (= (and d!2032027 (not c!1186317)) b!6477107))

(assert (= (and b!6477107 c!1186318) b!6477112))

(assert (= (and b!6477107 (not c!1186318)) b!6477105))

(assert (= (and d!2032027 res!2659557) b!6477106))

(assert (= (and b!6477106 res!2659559) b!6477108))

(assert (= (and b!6477108 res!2659558) b!6477111))

(assert (= (and d!2032027 (not res!2659555)) b!6477110))

(assert (=> b!6477105 m!7265158))

(assert (=> b!6477105 m!7265158))

(assert (=> b!6477105 m!7265160))

(assert (=> b!6477105 m!7265162))

(assert (=> b!6477105 m!7265158))

(declare-fun m!7265418 () Bool)

(assert (=> b!6477105 m!7265418))

(declare-fun m!7265420 () Bool)

(assert (=> b!6477111 m!7265420))

(declare-fun m!7265426 () Bool)

(assert (=> b!6477111 m!7265426))

(declare-fun m!7265428 () Bool)

(assert (=> b!6477110 m!7265428))

(assert (=> d!2032027 m!7265428))

(declare-fun m!7265432 () Bool)

(assert (=> d!2032027 m!7265432))

(declare-fun m!7265434 () Bool)

(assert (=> d!2032027 m!7265434))

(assert (=> b!6477106 m!7265420))

(declare-fun m!7265436 () Bool)

(assert (=> b!6477106 m!7265436))

(assert (=> b!6477108 m!7265420))

(declare-fun m!7265438 () Bool)

(assert (=> b!6477108 m!7265438))

(assert (=> b!6477104 m!7265178))

(assert (=> b!6476306 d!2032027))

(declare-fun d!2032035 () Bool)

(assert (=> d!2032035 (= (Exists!3425 lambda!358013) (choose!48008 lambda!358013))))

(declare-fun bs!1642422 () Bool)

(assert (= bs!1642422 d!2032035))

(declare-fun m!7265440 () Bool)

(assert (=> bs!1642422 m!7265440))

(assert (=> b!6476306 d!2032035))

(declare-fun bs!1642423 () Bool)

(declare-fun d!2032037 () Bool)

(assert (= bs!1642423 (and d!2032037 b!6476519)))

(declare-fun lambda!358082 () Int)

(assert (=> bs!1642423 (not (= lambda!358082 lambda!358035))))

(declare-fun bs!1642424 () Bool)

(assert (= bs!1642424 (and d!2032037 d!2031923)))

(assert (=> bs!1642424 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358082 lambda!358059))))

(declare-fun bs!1642425 () Bool)

(assert (= bs!1642425 (and d!2032037 b!6477031)))

(assert (=> bs!1642425 (not (= lambda!358082 lambda!358073))))

(declare-fun bs!1642426 () Bool)

(assert (= bs!1642426 (and d!2032037 b!6476331)))

(assert (=> bs!1642426 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358082 lambda!358018))))

(declare-fun bs!1642427 () Bool)

(assert (= bs!1642427 (and d!2032037 b!6476306)))

(assert (=> bs!1642427 (not (= lambda!358082 lambda!358014))))

(declare-fun bs!1642428 () Bool)

(assert (= bs!1642428 (and d!2032037 b!6477033)))

(assert (=> bs!1642428 (not (= lambda!358082 lambda!358075))))

(declare-fun bs!1642429 () Bool)

(assert (= bs!1642429 (and d!2032037 b!6476300)))

(assert (=> bs!1642429 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358082 lambda!358016))))

(assert (=> bs!1642426 (not (= lambda!358082 lambda!358019))))

(assert (=> bs!1642426 (not (= lambda!358082 lambda!358020))))

(assert (=> bs!1642429 (not (= lambda!358082 lambda!358017))))

(declare-fun bs!1642430 () Bool)

(assert (= bs!1642430 (and d!2032037 b!6476517)))

(assert (=> bs!1642430 (not (= lambda!358082 lambda!358032))))

(assert (=> bs!1642424 (not (= lambda!358082 lambda!358062))))

(assert (=> bs!1642427 (= lambda!358082 lambda!358013)))

(declare-fun bs!1642431 () Bool)

(assert (= bs!1642431 (and d!2032037 d!2031905)))

(assert (=> bs!1642431 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358082 lambda!358052))))

(assert (=> d!2032037 true))

(assert (=> d!2032037 true))

(assert (=> d!2032037 true))

(assert (=> d!2032037 (= (isDefined!12949 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)) (Exists!3425 lambda!358082))))

(declare-fun lt!2385826 () Unit!158751)

(assert (=> d!2032037 (= lt!2385826 (choose!48005 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326))))

(assert (=> d!2032037 (validRegex!8091 (regOne!33222 r!7292))))

(assert (=> d!2032037 (= (lemmaFindConcatSeparationEquivalentToExists!2424 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326) lt!2385826)))

(declare-fun bs!1642432 () Bool)

(assert (= bs!1642432 d!2032037))

(declare-fun m!7265442 () Bool)

(assert (=> bs!1642432 m!7265442))

(assert (=> bs!1642432 m!7264524))

(assert (=> bs!1642432 m!7264526))

(declare-fun m!7265444 () Bool)

(assert (=> bs!1642432 m!7265444))

(assert (=> bs!1642432 m!7265434))

(assert (=> bs!1642432 m!7264524))

(assert (=> b!6476306 d!2032037))

(declare-fun bs!1642433 () Bool)

(declare-fun d!2032041 () Bool)

(assert (= bs!1642433 (and d!2032041 b!6476519)))

(declare-fun lambda!358083 () Int)

(assert (=> bs!1642433 (not (= lambda!358083 lambda!358035))))

(declare-fun bs!1642434 () Bool)

(assert (= bs!1642434 (and d!2032041 d!2031923)))

(assert (=> bs!1642434 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358083 lambda!358059))))

(declare-fun bs!1642435 () Bool)

(assert (= bs!1642435 (and d!2032041 b!6477031)))

(assert (=> bs!1642435 (not (= lambda!358083 lambda!358073))))

(declare-fun bs!1642436 () Bool)

(assert (= bs!1642436 (and d!2032041 b!6476331)))

(assert (=> bs!1642436 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358083 lambda!358018))))

(declare-fun bs!1642437 () Bool)

(assert (= bs!1642437 (and d!2032041 b!6477033)))

(assert (=> bs!1642437 (not (= lambda!358083 lambda!358075))))

(declare-fun bs!1642438 () Bool)

(assert (= bs!1642438 (and d!2032041 b!6476300)))

(assert (=> bs!1642438 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358083 lambda!358016))))

(assert (=> bs!1642436 (not (= lambda!358083 lambda!358019))))

(assert (=> bs!1642436 (not (= lambda!358083 lambda!358020))))

(assert (=> bs!1642438 (not (= lambda!358083 lambda!358017))))

(declare-fun bs!1642439 () Bool)

(assert (= bs!1642439 (and d!2032041 b!6476517)))

(assert (=> bs!1642439 (not (= lambda!358083 lambda!358032))))

(assert (=> bs!1642434 (not (= lambda!358083 lambda!358062))))

(declare-fun bs!1642440 () Bool)

(assert (= bs!1642440 (and d!2032041 b!6476306)))

(assert (=> bs!1642440 (not (= lambda!358083 lambda!358014))))

(declare-fun bs!1642441 () Bool)

(assert (= bs!1642441 (and d!2032041 d!2032037)))

(assert (=> bs!1642441 (= lambda!358083 lambda!358082)))

(assert (=> bs!1642440 (= lambda!358083 lambda!358013)))

(declare-fun bs!1642442 () Bool)

(assert (= bs!1642442 (and d!2032041 d!2031905)))

(assert (=> bs!1642442 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358083 lambda!358052))))

(assert (=> d!2032041 true))

(assert (=> d!2032041 true))

(assert (=> d!2032041 true))

(declare-fun lambda!358084 () Int)

(assert (=> bs!1642433 (= (and (= (regOne!33222 r!7292) (regOne!33222 lt!2385680)) (= (regTwo!33222 r!7292) (regTwo!33222 lt!2385680))) (= lambda!358084 lambda!358035))))

(assert (=> bs!1642434 (not (= lambda!358084 lambda!358059))))

(assert (=> bs!1642435 (not (= lambda!358084 lambda!358073))))

(assert (=> bs!1642436 (not (= lambda!358084 lambda!358018))))

(assert (=> bs!1642437 (= lambda!358084 lambda!358075)))

(assert (=> bs!1642438 (not (= lambda!358084 lambda!358016))))

(assert (=> bs!1642436 (not (= lambda!358084 lambda!358019))))

(assert (=> bs!1642436 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358084 lambda!358020))))

(declare-fun bs!1642443 () Bool)

(assert (= bs!1642443 d!2032041))

(assert (=> bs!1642443 (not (= lambda!358084 lambda!358083))))

(assert (=> bs!1642438 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358084 lambda!358017))))

(assert (=> bs!1642439 (not (= lambda!358084 lambda!358032))))

(assert (=> bs!1642434 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358084 lambda!358062))))

(assert (=> bs!1642440 (= lambda!358084 lambda!358014)))

(assert (=> bs!1642441 (not (= lambda!358084 lambda!358082))))

(assert (=> bs!1642440 (not (= lambda!358084 lambda!358013))))

(assert (=> bs!1642442 (not (= lambda!358084 lambda!358052))))

(assert (=> d!2032041 true))

(assert (=> d!2032041 true))

(assert (=> d!2032041 true))

(assert (=> d!2032041 (= (Exists!3425 lambda!358083) (Exists!3425 lambda!358084))))

(declare-fun lt!2385827 () Unit!158751)

(assert (=> d!2032041 (= lt!2385827 (choose!48006 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326))))

(assert (=> d!2032041 (validRegex!8091 (regOne!33222 r!7292))))

(assert (=> d!2032041 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1962 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326) lt!2385827)))

(declare-fun m!7265468 () Bool)

(assert (=> bs!1642443 m!7265468))

(declare-fun m!7265470 () Bool)

(assert (=> bs!1642443 m!7265470))

(declare-fun m!7265472 () Bool)

(assert (=> bs!1642443 m!7265472))

(assert (=> bs!1642443 m!7265434))

(assert (=> b!6476306 d!2032041))

(declare-fun d!2032051 () Bool)

(assert (=> d!2032051 (= (Exists!3425 lambda!358014) (choose!48008 lambda!358014))))

(declare-fun bs!1642444 () Bool)

(assert (= bs!1642444 d!2032051))

(declare-fun m!7265476 () Bool)

(assert (=> bs!1642444 m!7265476))

(assert (=> b!6476306 d!2032051))

(declare-fun d!2032053 () Bool)

(assert (=> d!2032053 (= (isDefined!12949 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)) (not (isEmpty!37425 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326))))))

(declare-fun bs!1642445 () Bool)

(assert (= bs!1642445 d!2032053))

(assert (=> bs!1642445 m!7264524))

(declare-fun m!7265482 () Bool)

(assert (=> bs!1642445 m!7265482))

(assert (=> b!6476306 d!2032053))

(declare-fun bm!560471 () Bool)

(declare-fun call!560476 () (InoxSet Context!11478))

(assert (=> bm!560471 (= call!560476 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385676)) (Context!11479 (t!378989 (exprs!6239 lt!2385676))) (h!71688 s!2326)))))

(declare-fun b!6477148 () Bool)

(declare-fun e!3926186 () Bool)

(assert (=> b!6477148 (= e!3926186 (nullable!6348 (h!71689 (exprs!6239 lt!2385676))))))

(declare-fun b!6477149 () Bool)

(declare-fun e!3926184 () (InoxSet Context!11478))

(assert (=> b!6477149 (= e!3926184 call!560476)))

(declare-fun b!6477150 () Bool)

(declare-fun e!3926185 () (InoxSet Context!11478))

(assert (=> b!6477150 (= e!3926185 e!3926184)))

(declare-fun c!1186328 () Bool)

(assert (=> b!6477150 (= c!1186328 ((_ is Cons!65241) (exprs!6239 lt!2385676)))))

(declare-fun b!6477152 () Bool)

(assert (=> b!6477152 (= e!3926184 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032055 () Bool)

(declare-fun c!1186327 () Bool)

(assert (=> d!2032055 (= c!1186327 e!3926186)))

(declare-fun res!2659579 () Bool)

(assert (=> d!2032055 (=> (not res!2659579) (not e!3926186))))

(assert (=> d!2032055 (= res!2659579 ((_ is Cons!65241) (exprs!6239 lt!2385676)))))

(assert (=> d!2032055 (= (derivationStepZipperUp!1529 lt!2385676 (h!71688 s!2326)) e!3926185)))

(declare-fun b!6477151 () Bool)

(assert (=> b!6477151 (= e!3926185 ((_ map or) call!560476 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385676))) (h!71688 s!2326))))))

(assert (= (and d!2032055 res!2659579) b!6477148))

(assert (= (and d!2032055 c!1186327) b!6477151))

(assert (= (and d!2032055 (not c!1186327)) b!6477150))

(assert (= (and b!6477150 c!1186328) b!6477149))

(assert (= (and b!6477150 (not c!1186328)) b!6477152))

(assert (= (or b!6477151 b!6477149) bm!560471))

(declare-fun m!7265490 () Bool)

(assert (=> bm!560471 m!7265490))

(declare-fun m!7265492 () Bool)

(assert (=> b!6477148 m!7265492))

(declare-fun m!7265494 () Bool)

(assert (=> b!6477151 m!7265494))

(assert (=> b!6476325 d!2032055))

(declare-fun d!2032061 () Bool)

(assert (=> d!2032061 (= (flatMap!1860 lt!2385677 lambda!358015) (dynLambda!25915 lambda!358015 lt!2385665))))

(declare-fun lt!2385833 () Unit!158751)

(assert (=> d!2032061 (= lt!2385833 (choose!48009 lt!2385677 lt!2385665 lambda!358015))))

(assert (=> d!2032061 (= lt!2385677 (store ((as const (Array Context!11478 Bool)) false) lt!2385665 true))))

(assert (=> d!2032061 (= (lemmaFlatMapOnSingletonSet!1386 lt!2385677 lt!2385665 lambda!358015) lt!2385833)))

(declare-fun b_lambda!245371 () Bool)

(assert (=> (not b_lambda!245371) (not d!2032061)))

(declare-fun bs!1642447 () Bool)

(assert (= bs!1642447 d!2032061))

(assert (=> bs!1642447 m!7264534))

(declare-fun m!7265496 () Bool)

(assert (=> bs!1642447 m!7265496))

(declare-fun m!7265498 () Bool)

(assert (=> bs!1642447 m!7265498))

(assert (=> bs!1642447 m!7264540))

(assert (=> b!6476325 d!2032061))

(declare-fun d!2032063 () Bool)

(declare-fun lt!2385834 () Regex!16355)

(assert (=> d!2032063 (validRegex!8091 lt!2385834)))

(assert (=> d!2032063 (= lt!2385834 (generalisedUnion!2199 (unfocusZipperList!1776 lt!2385642)))))

(assert (=> d!2032063 (= (unfocusZipper!2097 lt!2385642) lt!2385834)))

(declare-fun bs!1642448 () Bool)

(assert (= bs!1642448 d!2032063))

(declare-fun m!7265506 () Bool)

(assert (=> bs!1642448 m!7265506))

(declare-fun m!7265508 () Bool)

(assert (=> bs!1642448 m!7265508))

(assert (=> bs!1642448 m!7265508))

(declare-fun m!7265510 () Bool)

(assert (=> bs!1642448 m!7265510))

(assert (=> b!6476325 d!2032063))

(declare-fun d!2032067 () Bool)

(assert (=> d!2032067 (= (flatMap!1860 lt!2385677 lambda!358015) (choose!48010 lt!2385677 lambda!358015))))

(declare-fun bs!1642449 () Bool)

(assert (= bs!1642449 d!2032067))

(declare-fun m!7265512 () Bool)

(assert (=> bs!1642449 m!7265512))

(assert (=> b!6476325 d!2032067))

(declare-fun bm!560473 () Bool)

(declare-fun call!560478 () (InoxSet Context!11478))

(assert (=> bm!560473 (= call!560478 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385665)) (Context!11479 (t!378989 (exprs!6239 lt!2385665))) (h!71688 s!2326)))))

(declare-fun b!6477158 () Bool)

(declare-fun e!3926192 () Bool)

(assert (=> b!6477158 (= e!3926192 (nullable!6348 (h!71689 (exprs!6239 lt!2385665))))))

(declare-fun b!6477159 () Bool)

(declare-fun e!3926190 () (InoxSet Context!11478))

(assert (=> b!6477159 (= e!3926190 call!560478)))

(declare-fun b!6477160 () Bool)

(declare-fun e!3926191 () (InoxSet Context!11478))

(assert (=> b!6477160 (= e!3926191 e!3926190)))

(declare-fun c!1186332 () Bool)

(assert (=> b!6477160 (= c!1186332 ((_ is Cons!65241) (exprs!6239 lt!2385665)))))

(declare-fun b!6477162 () Bool)

(assert (=> b!6477162 (= e!3926190 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032069 () Bool)

(declare-fun c!1186331 () Bool)

(assert (=> d!2032069 (= c!1186331 e!3926192)))

(declare-fun res!2659581 () Bool)

(assert (=> d!2032069 (=> (not res!2659581) (not e!3926192))))

(assert (=> d!2032069 (= res!2659581 ((_ is Cons!65241) (exprs!6239 lt!2385665)))))

(assert (=> d!2032069 (= (derivationStepZipperUp!1529 lt!2385665 (h!71688 s!2326)) e!3926191)))

(declare-fun b!6477161 () Bool)

(assert (=> b!6477161 (= e!3926191 ((_ map or) call!560478 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385665))) (h!71688 s!2326))))))

(assert (= (and d!2032069 res!2659581) b!6477158))

(assert (= (and d!2032069 c!1186331) b!6477161))

(assert (= (and d!2032069 (not c!1186331)) b!6477160))

(assert (= (and b!6477160 c!1186332) b!6477159))

(assert (= (and b!6477160 (not c!1186332)) b!6477162))

(assert (= (or b!6477161 b!6477159) bm!560473))

(declare-fun m!7265518 () Bool)

(assert (=> bm!560473 m!7265518))

(declare-fun m!7265520 () Bool)

(assert (=> b!6477158 m!7265520))

(declare-fun m!7265522 () Bool)

(assert (=> b!6477161 m!7265522))

(assert (=> b!6476325 d!2032069))

(declare-fun d!2032073 () Bool)

(assert (=> d!2032073 (= (flatMap!1860 lt!2385643 lambda!358015) (dynLambda!25915 lambda!358015 lt!2385676))))

(declare-fun lt!2385836 () Unit!158751)

(assert (=> d!2032073 (= lt!2385836 (choose!48009 lt!2385643 lt!2385676 lambda!358015))))

(assert (=> d!2032073 (= lt!2385643 (store ((as const (Array Context!11478 Bool)) false) lt!2385676 true))))

(assert (=> d!2032073 (= (lemmaFlatMapOnSingletonSet!1386 lt!2385643 lt!2385676 lambda!358015) lt!2385836)))

(declare-fun b_lambda!245375 () Bool)

(assert (=> (not b_lambda!245375) (not d!2032073)))

(declare-fun bs!1642451 () Bool)

(assert (= bs!1642451 d!2032073))

(assert (=> bs!1642451 m!7264542))

(declare-fun m!7265524 () Bool)

(assert (=> bs!1642451 m!7265524))

(declare-fun m!7265526 () Bool)

(assert (=> bs!1642451 m!7265526))

(assert (=> bs!1642451 m!7264538))

(assert (=> b!6476325 d!2032073))

(declare-fun d!2032075 () Bool)

(assert (=> d!2032075 (= (flatMap!1860 lt!2385643 lambda!358015) (choose!48010 lt!2385643 lambda!358015))))

(declare-fun bs!1642452 () Bool)

(assert (= bs!1642452 d!2032075))

(declare-fun m!7265528 () Bool)

(assert (=> bs!1642452 m!7265528))

(assert (=> b!6476325 d!2032075))

(declare-fun b!6477183 () Bool)

(declare-fun e!3926209 () Bool)

(declare-fun e!3926210 () Bool)

(assert (=> b!6477183 (= e!3926209 e!3926210)))

(declare-fun res!2659596 () Bool)

(assert (=> b!6477183 (= res!2659596 (not (nullable!6348 (reg!16684 r!7292))))))

(assert (=> b!6477183 (=> (not res!2659596) (not e!3926210))))

(declare-fun b!6477184 () Bool)

(declare-fun e!3926211 () Bool)

(declare-fun call!560485 () Bool)

(assert (=> b!6477184 (= e!3926211 call!560485)))

(declare-fun b!6477185 () Bool)

(declare-fun e!3926207 () Bool)

(assert (=> b!6477185 (= e!3926207 e!3926209)))

(declare-fun c!1186340 () Bool)

(assert (=> b!6477185 (= c!1186340 ((_ is Star!16355) r!7292))))

(declare-fun b!6477186 () Bool)

(declare-fun e!3926213 () Bool)

(assert (=> b!6477186 (= e!3926213 call!560485)))

(declare-fun b!6477187 () Bool)

(declare-fun e!3926212 () Bool)

(assert (=> b!6477187 (= e!3926212 e!3926211)))

(declare-fun res!2659592 () Bool)

(assert (=> b!6477187 (=> (not res!2659592) (not e!3926211))))

(declare-fun call!560487 () Bool)

(assert (=> b!6477187 (= res!2659592 call!560487)))

(declare-fun bm!560480 () Bool)

(declare-fun c!1186339 () Bool)

(assert (=> bm!560480 (= call!560487 (validRegex!8091 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))))))

(declare-fun bm!560481 () Bool)

(declare-fun call!560486 () Bool)

(assert (=> bm!560481 (= call!560485 call!560486)))

(declare-fun b!6477188 () Bool)

(assert (=> b!6477188 (= e!3926210 call!560486)))

(declare-fun bm!560482 () Bool)

(assert (=> bm!560482 (= call!560486 (validRegex!8091 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))))))

(declare-fun b!6477189 () Bool)

(declare-fun res!2659595 () Bool)

(assert (=> b!6477189 (=> (not res!2659595) (not e!3926213))))

(assert (=> b!6477189 (= res!2659595 call!560487)))

(declare-fun e!3926208 () Bool)

(assert (=> b!6477189 (= e!3926208 e!3926213)))

(declare-fun d!2032077 () Bool)

(declare-fun res!2659594 () Bool)

(assert (=> d!2032077 (=> res!2659594 e!3926207)))

(assert (=> d!2032077 (= res!2659594 ((_ is ElementMatch!16355) r!7292))))

(assert (=> d!2032077 (= (validRegex!8091 r!7292) e!3926207)))

(declare-fun b!6477190 () Bool)

(assert (=> b!6477190 (= e!3926209 e!3926208)))

(assert (=> b!6477190 (= c!1186339 ((_ is Union!16355) r!7292))))

(declare-fun b!6477191 () Bool)

(declare-fun res!2659593 () Bool)

(assert (=> b!6477191 (=> res!2659593 e!3926212)))

(assert (=> b!6477191 (= res!2659593 (not ((_ is Concat!25200) r!7292)))))

(assert (=> b!6477191 (= e!3926208 e!3926212)))

(assert (= (and d!2032077 (not res!2659594)) b!6477185))

(assert (= (and b!6477185 c!1186340) b!6477183))

(assert (= (and b!6477185 (not c!1186340)) b!6477190))

(assert (= (and b!6477183 res!2659596) b!6477188))

(assert (= (and b!6477190 c!1186339) b!6477189))

(assert (= (and b!6477190 (not c!1186339)) b!6477191))

(assert (= (and b!6477189 res!2659595) b!6477186))

(assert (= (and b!6477191 (not res!2659593)) b!6477187))

(assert (= (and b!6477187 res!2659592) b!6477184))

(assert (= (or b!6477186 b!6477184) bm!560481))

(assert (= (or b!6477189 b!6477187) bm!560480))

(assert (= (or b!6477188 bm!560481) bm!560482))

(declare-fun m!7265532 () Bool)

(assert (=> b!6477183 m!7265532))

(declare-fun m!7265534 () Bool)

(assert (=> bm!560480 m!7265534))

(declare-fun m!7265536 () Bool)

(assert (=> bm!560482 m!7265536))

(assert (=> start!636738 d!2032077))

(declare-fun bs!1642464 () Bool)

(declare-fun d!2032083 () Bool)

(assert (= bs!1642464 (and d!2032083 d!2031879)))

(declare-fun lambda!358095 () Int)

(assert (=> bs!1642464 (= lambda!358095 lambda!358039)))

(declare-fun bs!1642466 () Bool)

(assert (= bs!1642466 (and d!2032083 d!2031887)))

(assert (=> bs!1642466 (= lambda!358095 lambda!358048)))

(declare-fun bs!1642467 () Bool)

(assert (= bs!1642467 (and d!2032083 d!2031899)))

(assert (=> bs!1642467 (= lambda!358095 lambda!358049)))

(declare-fun b!6477223 () Bool)

(declare-fun e!3926232 () Bool)

(assert (=> b!6477223 (= e!3926232 (isEmpty!37422 (t!378989 (unfocusZipperList!1776 zl!343))))))

(declare-fun b!6477224 () Bool)

(declare-fun e!3926230 () Bool)

(declare-fun e!3926234 () Bool)

(assert (=> b!6477224 (= e!3926230 e!3926234)))

(declare-fun c!1186352 () Bool)

(assert (=> b!6477224 (= c!1186352 (isEmpty!37422 (unfocusZipperList!1776 zl!343)))))

(declare-fun b!6477225 () Bool)

(declare-fun e!3926231 () Regex!16355)

(assert (=> b!6477225 (= e!3926231 (Union!16355 (h!71689 (unfocusZipperList!1776 zl!343)) (generalisedUnion!2199 (t!378989 (unfocusZipperList!1776 zl!343)))))))

(declare-fun b!6477226 () Bool)

(declare-fun e!3926233 () Bool)

(declare-fun lt!2385842 () Regex!16355)

(assert (=> b!6477226 (= e!3926233 (= lt!2385842 (head!13190 (unfocusZipperList!1776 zl!343))))))

(declare-fun b!6477227 () Bool)

(assert (=> b!6477227 (= e!3926234 e!3926233)))

(declare-fun c!1186349 () Bool)

(assert (=> b!6477227 (= c!1186349 (isEmpty!37422 (tail!12275 (unfocusZipperList!1776 zl!343))))))

(declare-fun b!6477228 () Bool)

(declare-fun isUnion!1187 (Regex!16355) Bool)

(assert (=> b!6477228 (= e!3926233 (isUnion!1187 lt!2385842))))

(declare-fun b!6477229 () Bool)

(assert (=> b!6477229 (= e!3926231 EmptyLang!16355)))

(declare-fun b!6477222 () Bool)

(declare-fun e!3926235 () Regex!16355)

(assert (=> b!6477222 (= e!3926235 (h!71689 (unfocusZipperList!1776 zl!343)))))

(assert (=> d!2032083 e!3926230))

(declare-fun res!2659612 () Bool)

(assert (=> d!2032083 (=> (not res!2659612) (not e!3926230))))

(assert (=> d!2032083 (= res!2659612 (validRegex!8091 lt!2385842))))

(assert (=> d!2032083 (= lt!2385842 e!3926235)))

(declare-fun c!1186351 () Bool)

(assert (=> d!2032083 (= c!1186351 e!3926232)))

(declare-fun res!2659611 () Bool)

(assert (=> d!2032083 (=> (not res!2659611) (not e!3926232))))

(assert (=> d!2032083 (= res!2659611 ((_ is Cons!65241) (unfocusZipperList!1776 zl!343)))))

(assert (=> d!2032083 (forall!15540 (unfocusZipperList!1776 zl!343) lambda!358095)))

(assert (=> d!2032083 (= (generalisedUnion!2199 (unfocusZipperList!1776 zl!343)) lt!2385842)))

(declare-fun b!6477230 () Bool)

(assert (=> b!6477230 (= e!3926235 e!3926231)))

(declare-fun c!1186350 () Bool)

(assert (=> b!6477230 (= c!1186350 ((_ is Cons!65241) (unfocusZipperList!1776 zl!343)))))

(declare-fun b!6477231 () Bool)

(declare-fun isEmptyLang!1757 (Regex!16355) Bool)

(assert (=> b!6477231 (= e!3926234 (isEmptyLang!1757 lt!2385842))))

(assert (= (and d!2032083 res!2659611) b!6477223))

(assert (= (and d!2032083 c!1186351) b!6477222))

(assert (= (and d!2032083 (not c!1186351)) b!6477230))

(assert (= (and b!6477230 c!1186350) b!6477225))

(assert (= (and b!6477230 (not c!1186350)) b!6477229))

(assert (= (and d!2032083 res!2659612) b!6477224))

(assert (= (and b!6477224 c!1186352) b!6477231))

(assert (= (and b!6477224 (not c!1186352)) b!6477227))

(assert (= (and b!6477227 c!1186349) b!6477226))

(assert (= (and b!6477227 (not c!1186349)) b!6477228))

(declare-fun m!7265538 () Bool)

(assert (=> b!6477231 m!7265538))

(assert (=> b!6477226 m!7264508))

(declare-fun m!7265540 () Bool)

(assert (=> b!6477226 m!7265540))

(declare-fun m!7265542 () Bool)

(assert (=> b!6477223 m!7265542))

(declare-fun m!7265544 () Bool)

(assert (=> b!6477228 m!7265544))

(assert (=> b!6477227 m!7264508))

(declare-fun m!7265546 () Bool)

(assert (=> b!6477227 m!7265546))

(assert (=> b!6477227 m!7265546))

(declare-fun m!7265548 () Bool)

(assert (=> b!6477227 m!7265548))

(assert (=> b!6477224 m!7264508))

(declare-fun m!7265550 () Bool)

(assert (=> b!6477224 m!7265550))

(declare-fun m!7265552 () Bool)

(assert (=> b!6477225 m!7265552))

(declare-fun m!7265554 () Bool)

(assert (=> d!2032083 m!7265554))

(assert (=> d!2032083 m!7264508))

(declare-fun m!7265556 () Bool)

(assert (=> d!2032083 m!7265556))

(assert (=> b!6476305 d!2032083))

(declare-fun bs!1642473 () Bool)

(declare-fun d!2032085 () Bool)

(assert (= bs!1642473 (and d!2032085 d!2031879)))

(declare-fun lambda!358099 () Int)

(assert (=> bs!1642473 (= lambda!358099 lambda!358039)))

(declare-fun bs!1642474 () Bool)

(assert (= bs!1642474 (and d!2032085 d!2031887)))

(assert (=> bs!1642474 (= lambda!358099 lambda!358048)))

(declare-fun bs!1642475 () Bool)

(assert (= bs!1642475 (and d!2032085 d!2031899)))

(assert (=> bs!1642475 (= lambda!358099 lambda!358049)))

(declare-fun bs!1642477 () Bool)

(assert (= bs!1642477 (and d!2032085 d!2032083)))

(assert (=> bs!1642477 (= lambda!358099 lambda!358095)))

(declare-fun lt!2385846 () List!65365)

(assert (=> d!2032085 (forall!15540 lt!2385846 lambda!358099)))

(declare-fun e!3926245 () List!65365)

(assert (=> d!2032085 (= lt!2385846 e!3926245)))

(declare-fun c!1186359 () Bool)

(assert (=> d!2032085 (= c!1186359 ((_ is Cons!65242) zl!343))))

(assert (=> d!2032085 (= (unfocusZipperList!1776 zl!343) lt!2385846)))

(declare-fun b!6477247 () Bool)

(assert (=> b!6477247 (= e!3926245 (Cons!65241 (generalisedConcat!1952 (exprs!6239 (h!71690 zl!343))) (unfocusZipperList!1776 (t!378990 zl!343))))))

(declare-fun b!6477248 () Bool)

(assert (=> b!6477248 (= e!3926245 Nil!65241)))

(assert (= (and d!2032085 c!1186359) b!6477247))

(assert (= (and d!2032085 (not c!1186359)) b!6477248))

(declare-fun m!7265570 () Bool)

(assert (=> d!2032085 m!7265570))

(assert (=> b!6477247 m!7264670))

(declare-fun m!7265572 () Bool)

(assert (=> b!6477247 m!7265572))

(assert (=> b!6476305 d!2032085))

(declare-fun b!6477249 () Bool)

(declare-fun e!3926252 () Bool)

(assert (=> b!6477249 (= e!3926252 (not (= (head!13189 (_1!36637 lt!2385678)) (c!1186089 lt!2385664))))))

(declare-fun b!6477250 () Bool)

(declare-fun res!2659618 () Bool)

(declare-fun e!3926246 () Bool)

(assert (=> b!6477250 (=> res!2659618 e!3926246)))

(assert (=> b!6477250 (= res!2659618 (not ((_ is ElementMatch!16355) lt!2385664)))))

(declare-fun e!3926249 () Bool)

(assert (=> b!6477250 (= e!3926249 e!3926246)))

(declare-fun b!6477251 () Bool)

(declare-fun e!3926251 () Bool)

(declare-fun lt!2385847 () Bool)

(declare-fun call!560490 () Bool)

(assert (=> b!6477251 (= e!3926251 (= lt!2385847 call!560490))))

(declare-fun b!6477252 () Bool)

(declare-fun e!3926247 () Bool)

(assert (=> b!6477252 (= e!3926247 (= (head!13189 (_1!36637 lt!2385678)) (c!1186089 lt!2385664)))))

(declare-fun b!6477253 () Bool)

(declare-fun res!2659621 () Bool)

(assert (=> b!6477253 (=> (not res!2659621) (not e!3926247))))

(assert (=> b!6477253 (= res!2659621 (not call!560490))))

(declare-fun d!2032097 () Bool)

(assert (=> d!2032097 e!3926251))

(declare-fun c!1186360 () Bool)

(assert (=> d!2032097 (= c!1186360 ((_ is EmptyExpr!16355) lt!2385664))))

(declare-fun e!3926250 () Bool)

(assert (=> d!2032097 (= lt!2385847 e!3926250)))

(declare-fun c!1186362 () Bool)

(assert (=> d!2032097 (= c!1186362 (isEmpty!37424 (_1!36637 lt!2385678)))))

(assert (=> d!2032097 (validRegex!8091 lt!2385664)))

(assert (=> d!2032097 (= (matchR!8538 lt!2385664 (_1!36637 lt!2385678)) lt!2385847)))

(declare-fun b!6477254 () Bool)

(declare-fun res!2659623 () Bool)

(assert (=> b!6477254 (=> res!2659623 e!3926246)))

(assert (=> b!6477254 (= res!2659623 e!3926247)))

(declare-fun res!2659616 () Bool)

(assert (=> b!6477254 (=> (not res!2659616) (not e!3926247))))

(assert (=> b!6477254 (= res!2659616 lt!2385847)))

(declare-fun b!6477255 () Bool)

(declare-fun e!3926248 () Bool)

(assert (=> b!6477255 (= e!3926246 e!3926248)))

(declare-fun res!2659622 () Bool)

(assert (=> b!6477255 (=> (not res!2659622) (not e!3926248))))

(assert (=> b!6477255 (= res!2659622 (not lt!2385847))))

(declare-fun b!6477256 () Bool)

(declare-fun res!2659619 () Bool)

(assert (=> b!6477256 (=> res!2659619 e!3926252)))

(assert (=> b!6477256 (= res!2659619 (not (isEmpty!37424 (tail!12274 (_1!36637 lt!2385678)))))))

(declare-fun b!6477257 () Bool)

(assert (=> b!6477257 (= e!3926250 (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678))) (tail!12274 (_1!36637 lt!2385678))))))

(declare-fun bm!560485 () Bool)

(assert (=> bm!560485 (= call!560490 (isEmpty!37424 (_1!36637 lt!2385678)))))

(declare-fun b!6477258 () Bool)

(assert (=> b!6477258 (= e!3926248 e!3926252)))

(declare-fun res!2659620 () Bool)

(assert (=> b!6477258 (=> res!2659620 e!3926252)))

(assert (=> b!6477258 (= res!2659620 call!560490)))

(declare-fun b!6477259 () Bool)

(assert (=> b!6477259 (= e!3926251 e!3926249)))

(declare-fun c!1186361 () Bool)

(assert (=> b!6477259 (= c!1186361 ((_ is EmptyLang!16355) lt!2385664))))

(declare-fun b!6477260 () Bool)

(declare-fun res!2659617 () Bool)

(assert (=> b!6477260 (=> (not res!2659617) (not e!3926247))))

(assert (=> b!6477260 (= res!2659617 (isEmpty!37424 (tail!12274 (_1!36637 lt!2385678))))))

(declare-fun b!6477261 () Bool)

(assert (=> b!6477261 (= e!3926250 (nullable!6348 lt!2385664))))

(declare-fun b!6477262 () Bool)

(assert (=> b!6477262 (= e!3926249 (not lt!2385847))))

(assert (= (and d!2032097 c!1186362) b!6477261))

(assert (= (and d!2032097 (not c!1186362)) b!6477257))

(assert (= (and d!2032097 c!1186360) b!6477251))

(assert (= (and d!2032097 (not c!1186360)) b!6477259))

(assert (= (and b!6477259 c!1186361) b!6477262))

(assert (= (and b!6477259 (not c!1186361)) b!6477250))

(assert (= (and b!6477250 (not res!2659618)) b!6477254))

(assert (= (and b!6477254 res!2659616) b!6477253))

(assert (= (and b!6477253 res!2659621) b!6477260))

(assert (= (and b!6477260 res!2659617) b!6477252))

(assert (= (and b!6477254 (not res!2659623)) b!6477255))

(assert (= (and b!6477255 res!2659622) b!6477258))

(assert (= (and b!6477258 (not res!2659620)) b!6477256))

(assert (= (and b!6477256 (not res!2659619)) b!6477249))

(assert (= (or b!6477251 b!6477258 b!6477253) bm!560485))

(assert (=> d!2032097 m!7264590))

(assert (=> d!2032097 m!7264892))

(declare-fun m!7265574 () Bool)

(assert (=> b!6477257 m!7265574))

(assert (=> b!6477257 m!7265574))

(declare-fun m!7265576 () Bool)

(assert (=> b!6477257 m!7265576))

(declare-fun m!7265578 () Bool)

(assert (=> b!6477257 m!7265578))

(assert (=> b!6477257 m!7265576))

(assert (=> b!6477257 m!7265578))

(declare-fun m!7265580 () Bool)

(assert (=> b!6477257 m!7265580))

(assert (=> bm!560485 m!7264590))

(assert (=> b!6477256 m!7265578))

(assert (=> b!6477256 m!7265578))

(declare-fun m!7265582 () Bool)

(assert (=> b!6477256 m!7265582))

(assert (=> b!6477252 m!7265574))

(assert (=> b!6477260 m!7265578))

(assert (=> b!6477260 m!7265578))

(assert (=> b!6477260 m!7265582))

(assert (=> b!6477249 m!7265574))

(assert (=> b!6477261 m!7264904))

(assert (=> b!6476304 d!2032097))

(declare-fun d!2032099 () Bool)

(assert (=> d!2032099 (= (isEmpty!37423 (t!378990 zl!343)) ((_ is Nil!65242) (t!378990 zl!343)))))

(assert (=> b!6476323 d!2032099))

(declare-fun bs!1642489 () Bool)

(declare-fun d!2032101 () Bool)

(assert (= bs!1642489 (and d!2032101 d!2032083)))

(declare-fun lambda!358101 () Int)

(assert (=> bs!1642489 (= lambda!358101 lambda!358095)))

(declare-fun bs!1642490 () Bool)

(assert (= bs!1642490 (and d!2032101 d!2031879)))

(assert (=> bs!1642490 (= lambda!358101 lambda!358039)))

(declare-fun bs!1642491 () Bool)

(assert (= bs!1642491 (and d!2032101 d!2031899)))

(assert (=> bs!1642491 (= lambda!358101 lambda!358049)))

(declare-fun bs!1642492 () Bool)

(assert (= bs!1642492 (and d!2032101 d!2032085)))

(assert (=> bs!1642492 (= lambda!358101 lambda!358099)))

(declare-fun bs!1642493 () Bool)

(assert (= bs!1642493 (and d!2032101 d!2031887)))

(assert (=> bs!1642493 (= lambda!358101 lambda!358048)))

(assert (=> d!2032101 (= (inv!84134 (h!71690 zl!343)) (forall!15540 (exprs!6239 (h!71690 zl!343)) lambda!358101))))

(declare-fun bs!1642495 () Bool)

(assert (= bs!1642495 d!2032101))

(declare-fun m!7265584 () Bool)

(assert (=> bs!1642495 m!7265584))

(assert (=> b!6476303 d!2032101))

(declare-fun b!6477263 () Bool)

(declare-fun e!3926259 () Bool)

(assert (=> b!6477263 (= e!3926259 (not (= (head!13189 (_2!36637 lt!2385678)) (c!1186089 (regTwo!33222 r!7292)))))))

(declare-fun b!6477264 () Bool)

(declare-fun res!2659626 () Bool)

(declare-fun e!3926253 () Bool)

(assert (=> b!6477264 (=> res!2659626 e!3926253)))

(assert (=> b!6477264 (= res!2659626 (not ((_ is ElementMatch!16355) (regTwo!33222 r!7292))))))

(declare-fun e!3926256 () Bool)

(assert (=> b!6477264 (= e!3926256 e!3926253)))

(declare-fun b!6477265 () Bool)

(declare-fun e!3926258 () Bool)

(declare-fun lt!2385848 () Bool)

(declare-fun call!560491 () Bool)

(assert (=> b!6477265 (= e!3926258 (= lt!2385848 call!560491))))

(declare-fun b!6477266 () Bool)

(declare-fun e!3926254 () Bool)

(assert (=> b!6477266 (= e!3926254 (= (head!13189 (_2!36637 lt!2385678)) (c!1186089 (regTwo!33222 r!7292))))))

(declare-fun b!6477267 () Bool)

(declare-fun res!2659629 () Bool)

(assert (=> b!6477267 (=> (not res!2659629) (not e!3926254))))

(assert (=> b!6477267 (= res!2659629 (not call!560491))))

(declare-fun d!2032103 () Bool)

(assert (=> d!2032103 e!3926258))

(declare-fun c!1186363 () Bool)

(assert (=> d!2032103 (= c!1186363 ((_ is EmptyExpr!16355) (regTwo!33222 r!7292)))))

(declare-fun e!3926257 () Bool)

(assert (=> d!2032103 (= lt!2385848 e!3926257)))

(declare-fun c!1186365 () Bool)

(assert (=> d!2032103 (= c!1186365 (isEmpty!37424 (_2!36637 lt!2385678)))))

(assert (=> d!2032103 (validRegex!8091 (regTwo!33222 r!7292))))

(assert (=> d!2032103 (= (matchR!8538 (regTwo!33222 r!7292) (_2!36637 lt!2385678)) lt!2385848)))

(declare-fun b!6477268 () Bool)

(declare-fun res!2659631 () Bool)

(assert (=> b!6477268 (=> res!2659631 e!3926253)))

(assert (=> b!6477268 (= res!2659631 e!3926254)))

(declare-fun res!2659624 () Bool)

(assert (=> b!6477268 (=> (not res!2659624) (not e!3926254))))

(assert (=> b!6477268 (= res!2659624 lt!2385848)))

(declare-fun b!6477269 () Bool)

(declare-fun e!3926255 () Bool)

(assert (=> b!6477269 (= e!3926253 e!3926255)))

(declare-fun res!2659630 () Bool)

(assert (=> b!6477269 (=> (not res!2659630) (not e!3926255))))

(assert (=> b!6477269 (= res!2659630 (not lt!2385848))))

(declare-fun b!6477270 () Bool)

(declare-fun res!2659627 () Bool)

(assert (=> b!6477270 (=> res!2659627 e!3926259)))

(assert (=> b!6477270 (= res!2659627 (not (isEmpty!37424 (tail!12274 (_2!36637 lt!2385678)))))))

(declare-fun b!6477271 () Bool)

(assert (=> b!6477271 (= e!3926257 (matchR!8538 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678))) (tail!12274 (_2!36637 lt!2385678))))))

(declare-fun bm!560486 () Bool)

(assert (=> bm!560486 (= call!560491 (isEmpty!37424 (_2!36637 lt!2385678)))))

(declare-fun b!6477272 () Bool)

(assert (=> b!6477272 (= e!3926255 e!3926259)))

(declare-fun res!2659628 () Bool)

(assert (=> b!6477272 (=> res!2659628 e!3926259)))

(assert (=> b!6477272 (= res!2659628 call!560491)))

(declare-fun b!6477273 () Bool)

(assert (=> b!6477273 (= e!3926258 e!3926256)))

(declare-fun c!1186364 () Bool)

(assert (=> b!6477273 (= c!1186364 ((_ is EmptyLang!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6477274 () Bool)

(declare-fun res!2659625 () Bool)

(assert (=> b!6477274 (=> (not res!2659625) (not e!3926254))))

(assert (=> b!6477274 (= res!2659625 (isEmpty!37424 (tail!12274 (_2!36637 lt!2385678))))))

(declare-fun b!6477275 () Bool)

(assert (=> b!6477275 (= e!3926257 (nullable!6348 (regTwo!33222 r!7292)))))

(declare-fun b!6477276 () Bool)

(assert (=> b!6477276 (= e!3926256 (not lt!2385848))))

(assert (= (and d!2032103 c!1186365) b!6477275))

(assert (= (and d!2032103 (not c!1186365)) b!6477271))

(assert (= (and d!2032103 c!1186363) b!6477265))

(assert (= (and d!2032103 (not c!1186363)) b!6477273))

(assert (= (and b!6477273 c!1186364) b!6477276))

(assert (= (and b!6477273 (not c!1186364)) b!6477264))

(assert (= (and b!6477264 (not res!2659626)) b!6477268))

(assert (= (and b!6477268 res!2659624) b!6477267))

(assert (= (and b!6477267 res!2659629) b!6477274))

(assert (= (and b!6477274 res!2659625) b!6477266))

(assert (= (and b!6477268 (not res!2659631)) b!6477269))

(assert (= (and b!6477269 res!2659630) b!6477272))

(assert (= (and b!6477272 (not res!2659628)) b!6477270))

(assert (= (and b!6477270 (not res!2659627)) b!6477263))

(assert (= (or b!6477265 b!6477272 b!6477267) bm!560486))

(declare-fun m!7265586 () Bool)

(assert (=> d!2032103 m!7265586))

(assert (=> d!2032103 m!7264954))

(declare-fun m!7265588 () Bool)

(assert (=> b!6477271 m!7265588))

(assert (=> b!6477271 m!7265588))

(declare-fun m!7265590 () Bool)

(assert (=> b!6477271 m!7265590))

(declare-fun m!7265592 () Bool)

(assert (=> b!6477271 m!7265592))

(assert (=> b!6477271 m!7265590))

(assert (=> b!6477271 m!7265592))

(declare-fun m!7265594 () Bool)

(assert (=> b!6477271 m!7265594))

(assert (=> bm!560486 m!7265586))

(assert (=> b!6477270 m!7265592))

(assert (=> b!6477270 m!7265592))

(declare-fun m!7265596 () Bool)

(assert (=> b!6477270 m!7265596))

(assert (=> b!6477266 m!7265588))

(assert (=> b!6477274 m!7265592))

(assert (=> b!6477274 m!7265592))

(assert (=> b!6477274 m!7265596))

(assert (=> b!6477263 m!7265588))

(declare-fun m!7265598 () Bool)

(assert (=> b!6477275 m!7265598))

(assert (=> b!6476322 d!2032103))

(declare-fun d!2032105 () Bool)

(assert (=> d!2032105 (= (isEmpty!37422 (t!378989 (exprs!6239 (h!71690 zl!343)))) ((_ is Nil!65241) (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> b!6476302 d!2032105))

(declare-fun b!6477277 () Bool)

(declare-fun e!3926266 () Bool)

(assert (=> b!6477277 (= e!3926266 (not (= (head!13189 (_2!36637 lt!2385692)) (c!1186089 lt!2385664))))))

(declare-fun b!6477278 () Bool)

(declare-fun res!2659634 () Bool)

(declare-fun e!3926260 () Bool)

(assert (=> b!6477278 (=> res!2659634 e!3926260)))

(assert (=> b!6477278 (= res!2659634 (not ((_ is ElementMatch!16355) lt!2385664)))))

(declare-fun e!3926263 () Bool)

(assert (=> b!6477278 (= e!3926263 e!3926260)))

(declare-fun b!6477279 () Bool)

(declare-fun e!3926265 () Bool)

(declare-fun lt!2385849 () Bool)

(declare-fun call!560492 () Bool)

(assert (=> b!6477279 (= e!3926265 (= lt!2385849 call!560492))))

(declare-fun b!6477280 () Bool)

(declare-fun e!3926261 () Bool)

(assert (=> b!6477280 (= e!3926261 (= (head!13189 (_2!36637 lt!2385692)) (c!1186089 lt!2385664)))))

(declare-fun b!6477281 () Bool)

(declare-fun res!2659637 () Bool)

(assert (=> b!6477281 (=> (not res!2659637) (not e!3926261))))

(assert (=> b!6477281 (= res!2659637 (not call!560492))))

(declare-fun d!2032107 () Bool)

(assert (=> d!2032107 e!3926265))

(declare-fun c!1186366 () Bool)

(assert (=> d!2032107 (= c!1186366 ((_ is EmptyExpr!16355) lt!2385664))))

(declare-fun e!3926264 () Bool)

(assert (=> d!2032107 (= lt!2385849 e!3926264)))

(declare-fun c!1186368 () Bool)

(assert (=> d!2032107 (= c!1186368 (isEmpty!37424 (_2!36637 lt!2385692)))))

(assert (=> d!2032107 (validRegex!8091 lt!2385664)))

(assert (=> d!2032107 (= (matchR!8538 lt!2385664 (_2!36637 lt!2385692)) lt!2385849)))

(declare-fun b!6477282 () Bool)

(declare-fun res!2659639 () Bool)

(assert (=> b!6477282 (=> res!2659639 e!3926260)))

(assert (=> b!6477282 (= res!2659639 e!3926261)))

(declare-fun res!2659632 () Bool)

(assert (=> b!6477282 (=> (not res!2659632) (not e!3926261))))

(assert (=> b!6477282 (= res!2659632 lt!2385849)))

(declare-fun b!6477283 () Bool)

(declare-fun e!3926262 () Bool)

(assert (=> b!6477283 (= e!3926260 e!3926262)))

(declare-fun res!2659638 () Bool)

(assert (=> b!6477283 (=> (not res!2659638) (not e!3926262))))

(assert (=> b!6477283 (= res!2659638 (not lt!2385849))))

(declare-fun b!6477284 () Bool)

(declare-fun res!2659635 () Bool)

(assert (=> b!6477284 (=> res!2659635 e!3926266)))

(assert (=> b!6477284 (= res!2659635 (not (isEmpty!37424 (tail!12274 (_2!36637 lt!2385692)))))))

(declare-fun b!6477285 () Bool)

(assert (=> b!6477285 (= e!3926264 (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692))) (tail!12274 (_2!36637 lt!2385692))))))

(declare-fun bm!560487 () Bool)

(assert (=> bm!560487 (= call!560492 (isEmpty!37424 (_2!36637 lt!2385692)))))

(declare-fun b!6477286 () Bool)

(assert (=> b!6477286 (= e!3926262 e!3926266)))

(declare-fun res!2659636 () Bool)

(assert (=> b!6477286 (=> res!2659636 e!3926266)))

(assert (=> b!6477286 (= res!2659636 call!560492)))

(declare-fun b!6477287 () Bool)

(assert (=> b!6477287 (= e!3926265 e!3926263)))

(declare-fun c!1186367 () Bool)

(assert (=> b!6477287 (= c!1186367 ((_ is EmptyLang!16355) lt!2385664))))

(declare-fun b!6477288 () Bool)

(declare-fun res!2659633 () Bool)

(assert (=> b!6477288 (=> (not res!2659633) (not e!3926261))))

(assert (=> b!6477288 (= res!2659633 (isEmpty!37424 (tail!12274 (_2!36637 lt!2385692))))))

(declare-fun b!6477289 () Bool)

(assert (=> b!6477289 (= e!3926264 (nullable!6348 lt!2385664))))

(declare-fun b!6477290 () Bool)

(assert (=> b!6477290 (= e!3926263 (not lt!2385849))))

(assert (= (and d!2032107 c!1186368) b!6477289))

(assert (= (and d!2032107 (not c!1186368)) b!6477285))

(assert (= (and d!2032107 c!1186366) b!6477279))

(assert (= (and d!2032107 (not c!1186366)) b!6477287))

(assert (= (and b!6477287 c!1186367) b!6477290))

(assert (= (and b!6477287 (not c!1186367)) b!6477278))

(assert (= (and b!6477278 (not res!2659634)) b!6477282))

(assert (= (and b!6477282 res!2659632) b!6477281))

(assert (= (and b!6477281 res!2659637) b!6477288))

(assert (= (and b!6477288 res!2659633) b!6477280))

(assert (= (and b!6477282 (not res!2659639)) b!6477283))

(assert (= (and b!6477283 res!2659638) b!6477286))

(assert (= (and b!6477286 (not res!2659636)) b!6477284))

(assert (= (and b!6477284 (not res!2659635)) b!6477277))

(assert (= (or b!6477279 b!6477286 b!6477281) bm!560487))

(declare-fun m!7265600 () Bool)

(assert (=> d!2032107 m!7265600))

(assert (=> d!2032107 m!7264892))

(declare-fun m!7265602 () Bool)

(assert (=> b!6477285 m!7265602))

(assert (=> b!6477285 m!7265602))

(declare-fun m!7265604 () Bool)

(assert (=> b!6477285 m!7265604))

(declare-fun m!7265606 () Bool)

(assert (=> b!6477285 m!7265606))

(assert (=> b!6477285 m!7265604))

(assert (=> b!6477285 m!7265606))

(declare-fun m!7265608 () Bool)

(assert (=> b!6477285 m!7265608))

(assert (=> bm!560487 m!7265600))

(assert (=> b!6477284 m!7265606))

(assert (=> b!6477284 m!7265606))

(declare-fun m!7265612 () Bool)

(assert (=> b!6477284 m!7265612))

(assert (=> b!6477280 m!7265602))

(assert (=> b!6477288 m!7265606))

(assert (=> b!6477288 m!7265606))

(assert (=> b!6477288 m!7265612))

(assert (=> b!6477277 m!7265602))

(assert (=> b!6477289 m!7264904))

(assert (=> b!6476312 d!2032107))

(declare-fun bs!1642509 () Bool)

(declare-fun b!6477297 () Bool)

(assert (= bs!1642509 (and b!6477297 b!6476519)))

(declare-fun lambda!358103 () Int)

(assert (=> bs!1642509 (not (= lambda!358103 lambda!358035))))

(declare-fun bs!1642510 () Bool)

(assert (= bs!1642510 (and b!6477297 d!2031923)))

(assert (=> bs!1642510 (not (= lambda!358103 lambda!358059))))

(declare-fun bs!1642511 () Bool)

(assert (= bs!1642511 (and b!6477297 b!6477031)))

(assert (=> bs!1642511 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 lt!2385664) (reg!16684 r!7292)) (= lt!2385664 r!7292)) (= lambda!358103 lambda!358073))))

(declare-fun bs!1642512 () Bool)

(assert (= bs!1642512 (and b!6477297 b!6476331)))

(assert (=> bs!1642512 (not (= lambda!358103 lambda!358018))))

(declare-fun bs!1642513 () Bool)

(assert (= bs!1642513 (and b!6477297 b!6477033)))

(assert (=> bs!1642513 (not (= lambda!358103 lambda!358075))))

(declare-fun bs!1642514 () Bool)

(assert (= bs!1642514 (and b!6477297 b!6476300)))

(assert (=> bs!1642514 (not (= lambda!358103 lambda!358016))))

(assert (=> bs!1642512 (not (= lambda!358103 lambda!358020))))

(declare-fun bs!1642515 () Bool)

(assert (= bs!1642515 (and b!6477297 d!2032041)))

(assert (=> bs!1642515 (not (= lambda!358103 lambda!358083))))

(assert (=> bs!1642514 (not (= lambda!358103 lambda!358017))))

(declare-fun bs!1642516 () Bool)

(assert (= bs!1642516 (and b!6477297 b!6476517)))

(assert (=> bs!1642516 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 lt!2385664) (reg!16684 lt!2385680)) (= lt!2385664 lt!2385680)) (= lambda!358103 lambda!358032))))

(assert (=> bs!1642510 (not (= lambda!358103 lambda!358062))))

(declare-fun bs!1642517 () Bool)

(assert (= bs!1642517 (and b!6477297 b!6476306)))

(assert (=> bs!1642517 (not (= lambda!358103 lambda!358014))))

(declare-fun bs!1642518 () Bool)

(assert (= bs!1642518 (and b!6477297 d!2032037)))

(assert (=> bs!1642518 (not (= lambda!358103 lambda!358082))))

(assert (=> bs!1642517 (not (= lambda!358103 lambda!358013))))

(declare-fun bs!1642519 () Bool)

(assert (= bs!1642519 (and b!6477297 d!2031905)))

(assert (=> bs!1642519 (not (= lambda!358103 lambda!358052))))

(assert (=> bs!1642512 (= (= (reg!16684 lt!2385664) (reg!16684 (regOne!33222 r!7292))) (= lambda!358103 lambda!358019))))

(assert (=> bs!1642515 (not (= lambda!358103 lambda!358084))))

(assert (=> b!6477297 true))

(assert (=> b!6477297 true))

(declare-fun bs!1642527 () Bool)

(declare-fun b!6477299 () Bool)

(assert (= bs!1642527 (and b!6477299 d!2031923)))

(declare-fun lambda!358105 () Int)

(assert (=> bs!1642527 (not (= lambda!358105 lambda!358059))))

(declare-fun bs!1642528 () Bool)

(assert (= bs!1642528 (and b!6477299 b!6477031)))

(assert (=> bs!1642528 (not (= lambda!358105 lambda!358073))))

(declare-fun bs!1642529 () Bool)

(assert (= bs!1642529 (and b!6477299 b!6476331)))

(assert (=> bs!1642529 (not (= lambda!358105 lambda!358018))))

(declare-fun bs!1642531 () Bool)

(assert (= bs!1642531 (and b!6477299 b!6477033)))

(assert (=> bs!1642531 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 lt!2385664) (regOne!33222 r!7292)) (= (regTwo!33222 lt!2385664) (regTwo!33222 r!7292))) (= lambda!358105 lambda!358075))))

(declare-fun bs!1642532 () Bool)

(assert (= bs!1642532 (and b!6477299 b!6476300)))

(assert (=> bs!1642532 (not (= lambda!358105 lambda!358016))))

(declare-fun bs!1642534 () Bool)

(assert (= bs!1642534 (and b!6477299 b!6476519)))

(assert (=> bs!1642534 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 lt!2385664) (regOne!33222 lt!2385680)) (= (regTwo!33222 lt!2385664) (regTwo!33222 lt!2385680))) (= lambda!358105 lambda!358035))))

(declare-fun bs!1642536 () Bool)

(assert (= bs!1642536 (and b!6477299 b!6477297)))

(assert (=> bs!1642536 (not (= lambda!358105 lambda!358103))))

(assert (=> bs!1642529 (= (and (= (regOne!33222 lt!2385664) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 lt!2385664) lt!2385664)) (= lambda!358105 lambda!358020))))

(declare-fun bs!1642538 () Bool)

(assert (= bs!1642538 (and b!6477299 d!2032041)))

(assert (=> bs!1642538 (not (= lambda!358105 lambda!358083))))

(assert (=> bs!1642532 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 lt!2385664) lt!2385664) (= (regTwo!33222 lt!2385664) (regTwo!33222 r!7292))) (= lambda!358105 lambda!358017))))

(declare-fun bs!1642540 () Bool)

(assert (= bs!1642540 (and b!6477299 b!6476517)))

(assert (=> bs!1642540 (not (= lambda!358105 lambda!358032))))

(assert (=> bs!1642527 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 lt!2385664) lt!2385664) (= (regTwo!33222 lt!2385664) (regTwo!33222 r!7292))) (= lambda!358105 lambda!358062))))

(declare-fun bs!1642543 () Bool)

(assert (= bs!1642543 (and b!6477299 b!6476306)))

(assert (=> bs!1642543 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 lt!2385664) (regOne!33222 r!7292)) (= (regTwo!33222 lt!2385664) (regTwo!33222 r!7292))) (= lambda!358105 lambda!358014))))

(declare-fun bs!1642544 () Bool)

(assert (= bs!1642544 (and b!6477299 d!2032037)))

(assert (=> bs!1642544 (not (= lambda!358105 lambda!358082))))

(assert (=> bs!1642543 (not (= lambda!358105 lambda!358013))))

(declare-fun bs!1642545 () Bool)

(assert (= bs!1642545 (and b!6477299 d!2031905)))

(assert (=> bs!1642545 (not (= lambda!358105 lambda!358052))))

(assert (=> bs!1642529 (not (= lambda!358105 lambda!358019))))

(assert (=> bs!1642538 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 lt!2385664) (regOne!33222 r!7292)) (= (regTwo!33222 lt!2385664) (regTwo!33222 r!7292))) (= lambda!358105 lambda!358084))))

(assert (=> b!6477299 true))

(assert (=> b!6477299 true))

(declare-fun b!6477291 () Bool)

(declare-fun res!2659641 () Bool)

(declare-fun e!3926273 () Bool)

(assert (=> b!6477291 (=> res!2659641 e!3926273)))

(declare-fun call!560494 () Bool)

(assert (=> b!6477291 (= res!2659641 call!560494)))

(declare-fun e!3926267 () Bool)

(assert (=> b!6477291 (= e!3926267 e!3926273)))

(declare-fun b!6477292 () Bool)

(declare-fun e!3926270 () Bool)

(assert (=> b!6477292 (= e!3926270 e!3926267)))

(declare-fun c!1186372 () Bool)

(assert (=> b!6477292 (= c!1186372 ((_ is Star!16355) lt!2385664))))

(declare-fun b!6477293 () Bool)

(declare-fun c!1186371 () Bool)

(assert (=> b!6477293 (= c!1186371 ((_ is Union!16355) lt!2385664))))

(declare-fun e!3926271 () Bool)

(assert (=> b!6477293 (= e!3926271 e!3926270)))

(declare-fun b!6477294 () Bool)

(declare-fun c!1186370 () Bool)

(assert (=> b!6477294 (= c!1186370 ((_ is ElementMatch!16355) lt!2385664))))

(declare-fun e!3926268 () Bool)

(assert (=> b!6477294 (= e!3926268 e!3926271)))

(declare-fun b!6477295 () Bool)

(declare-fun e!3926269 () Bool)

(assert (=> b!6477295 (= e!3926269 call!560494)))

(declare-fun b!6477296 () Bool)

(assert (=> b!6477296 (= e!3926269 e!3926268)))

(declare-fun res!2659640 () Bool)

(assert (=> b!6477296 (= res!2659640 (not ((_ is EmptyLang!16355) lt!2385664)))))

(assert (=> b!6477296 (=> (not res!2659640) (not e!3926268))))

(declare-fun d!2032109 () Bool)

(declare-fun c!1186369 () Bool)

(assert (=> d!2032109 (= c!1186369 ((_ is EmptyExpr!16355) lt!2385664))))

(assert (=> d!2032109 (= (matchRSpec!3456 lt!2385664 (_1!36637 lt!2385678)) e!3926269)))

(declare-fun call!560493 () Bool)

(assert (=> b!6477297 (= e!3926273 call!560493)))

(declare-fun bm!560488 () Bool)

(assert (=> bm!560488 (= call!560494 (isEmpty!37424 (_1!36637 lt!2385678)))))

(declare-fun b!6477298 () Bool)

(declare-fun e!3926272 () Bool)

(assert (=> b!6477298 (= e!3926270 e!3926272)))

(declare-fun res!2659642 () Bool)

(assert (=> b!6477298 (= res!2659642 (matchRSpec!3456 (regOne!33223 lt!2385664) (_1!36637 lt!2385678)))))

(assert (=> b!6477298 (=> res!2659642 e!3926272)))

(assert (=> b!6477299 (= e!3926267 call!560493)))

(declare-fun bm!560489 () Bool)

(assert (=> bm!560489 (= call!560493 (Exists!3425 (ite c!1186372 lambda!358103 lambda!358105)))))

(declare-fun b!6477300 () Bool)

(assert (=> b!6477300 (= e!3926271 (= (_1!36637 lt!2385678) (Cons!65240 (c!1186089 lt!2385664) Nil!65240)))))

(declare-fun b!6477301 () Bool)

(assert (=> b!6477301 (= e!3926272 (matchRSpec!3456 (regTwo!33223 lt!2385664) (_1!36637 lt!2385678)))))

(assert (= (and d!2032109 c!1186369) b!6477295))

(assert (= (and d!2032109 (not c!1186369)) b!6477296))

(assert (= (and b!6477296 res!2659640) b!6477294))

(assert (= (and b!6477294 c!1186370) b!6477300))

(assert (= (and b!6477294 (not c!1186370)) b!6477293))

(assert (= (and b!6477293 c!1186371) b!6477298))

(assert (= (and b!6477293 (not c!1186371)) b!6477292))

(assert (= (and b!6477298 (not res!2659642)) b!6477301))

(assert (= (and b!6477292 c!1186372) b!6477291))

(assert (= (and b!6477292 (not c!1186372)) b!6477299))

(assert (= (and b!6477291 (not res!2659641)) b!6477297))

(assert (= (or b!6477297 b!6477299) bm!560489))

(assert (= (or b!6477295 b!6477291) bm!560488))

(assert (=> bm!560488 m!7264590))

(declare-fun m!7265652 () Bool)

(assert (=> b!6477298 m!7265652))

(declare-fun m!7265654 () Bool)

(assert (=> bm!560489 m!7265654))

(declare-fun m!7265658 () Bool)

(assert (=> b!6477301 m!7265658))

(assert (=> b!6476331 d!2032109))

(declare-fun d!2032123 () Bool)

(assert (=> d!2032123 (= (isDefined!12949 lt!2385668) (not (isEmpty!37425 lt!2385668)))))

(declare-fun bs!1642548 () Bool)

(assert (= bs!1642548 d!2032123))

(declare-fun m!7265660 () Bool)

(assert (=> bs!1642548 m!7265660))

(assert (=> b!6476331 d!2032123))

(declare-fun bs!1642550 () Bool)

(declare-fun d!2032125 () Bool)

(assert (= bs!1642550 (and d!2032125 d!2031923)))

(declare-fun lambda!358107 () Int)

(assert (=> bs!1642550 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358107 lambda!358059))))

(declare-fun bs!1642552 () Bool)

(assert (= bs!1642552 (and d!2032125 b!6477031)))

(assert (=> bs!1642552 (not (= lambda!358107 lambda!358073))))

(declare-fun bs!1642554 () Bool)

(assert (= bs!1642554 (and d!2032125 b!6476331)))

(assert (=> bs!1642554 (= lambda!358107 lambda!358018)))

(declare-fun bs!1642556 () Bool)

(assert (= bs!1642556 (and d!2032125 b!6476300)))

(assert (=> bs!1642556 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358107 lambda!358016))))

(declare-fun bs!1642558 () Bool)

(assert (= bs!1642558 (and d!2032125 b!6476519)))

(assert (=> bs!1642558 (not (= lambda!358107 lambda!358035))))

(declare-fun bs!1642560 () Bool)

(assert (= bs!1642560 (and d!2032125 b!6477297)))

(assert (=> bs!1642560 (not (= lambda!358107 lambda!358103))))

(assert (=> bs!1642554 (not (= lambda!358107 lambda!358020))))

(declare-fun bs!1642562 () Bool)

(assert (= bs!1642562 (and d!2032125 d!2032041)))

(assert (=> bs!1642562 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358107 lambda!358083))))

(assert (=> bs!1642556 (not (= lambda!358107 lambda!358017))))

(declare-fun bs!1642564 () Bool)

(assert (= bs!1642564 (and d!2032125 b!6476517)))

(assert (=> bs!1642564 (not (= lambda!358107 lambda!358032))))

(assert (=> bs!1642550 (not (= lambda!358107 lambda!358062))))

(declare-fun bs!1642566 () Bool)

(assert (= bs!1642566 (and d!2032125 b!6476306)))

(assert (=> bs!1642566 (not (= lambda!358107 lambda!358014))))

(declare-fun bs!1642568 () Bool)

(assert (= bs!1642568 (and d!2032125 d!2032037)))

(assert (=> bs!1642568 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358107 lambda!358082))))

(declare-fun bs!1642570 () Bool)

(assert (= bs!1642570 (and d!2032125 b!6477299)))

(assert (=> bs!1642570 (not (= lambda!358107 lambda!358105))))

(declare-fun bs!1642572 () Bool)

(assert (= bs!1642572 (and d!2032125 b!6477033)))

(assert (=> bs!1642572 (not (= lambda!358107 lambda!358075))))

(assert (=> bs!1642566 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358107 lambda!358013))))

(declare-fun bs!1642574 () Bool)

(assert (= bs!1642574 (and d!2032125 d!2031905)))

(assert (=> bs!1642574 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358107 lambda!358052))))

(assert (=> bs!1642554 (not (= lambda!358107 lambda!358019))))

(assert (=> bs!1642562 (not (= lambda!358107 lambda!358084))))

(assert (=> d!2032125 true))

(assert (=> d!2032125 true))

(assert (=> d!2032125 true))

(declare-fun lambda!358108 () Int)

(assert (=> bs!1642550 (not (= lambda!358108 lambda!358059))))

(assert (=> bs!1642552 (not (= lambda!358108 lambda!358073))))

(assert (=> bs!1642554 (not (= lambda!358108 lambda!358018))))

(assert (=> bs!1642556 (not (= lambda!358108 lambda!358016))))

(assert (=> bs!1642558 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 lt!2385680)) (= lt!2385664 (regTwo!33222 lt!2385680))) (= lambda!358108 lambda!358035))))

(assert (=> bs!1642560 (not (= lambda!358108 lambda!358103))))

(assert (=> bs!1642554 (= lambda!358108 lambda!358020)))

(assert (=> bs!1642562 (not (= lambda!358108 lambda!358083))))

(assert (=> bs!1642556 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358108 lambda!358017))))

(declare-fun bs!1642578 () Bool)

(assert (= bs!1642578 d!2032125))

(assert (=> bs!1642578 (not (= lambda!358108 lambda!358107))))

(assert (=> bs!1642564 (not (= lambda!358108 lambda!358032))))

(assert (=> bs!1642550 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358108 lambda!358062))))

(assert (=> bs!1642566 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358108 lambda!358014))))

(assert (=> bs!1642568 (not (= lambda!358108 lambda!358082))))

(assert (=> bs!1642570 (= (and (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 lt!2385664)) (= lt!2385664 (regTwo!33222 lt!2385664))) (= lambda!358108 lambda!358105))))

(assert (=> bs!1642572 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358108 lambda!358075))))

(assert (=> bs!1642566 (not (= lambda!358108 lambda!358013))))

(assert (=> bs!1642574 (not (= lambda!358108 lambda!358052))))

(assert (=> bs!1642554 (not (= lambda!358108 lambda!358019))))

(assert (=> bs!1642562 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358108 lambda!358084))))

(assert (=> d!2032125 true))

(assert (=> d!2032125 true))

(assert (=> d!2032125 true))

(assert (=> d!2032125 (= (Exists!3425 lambda!358107) (Exists!3425 lambda!358108))))

(declare-fun lt!2385856 () Unit!158751)

(assert (=> d!2032125 (= lt!2385856 (choose!48006 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)))))

(assert (=> d!2032125 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032125 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1962 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)) lt!2385856)))

(declare-fun m!7265662 () Bool)

(assert (=> bs!1642578 m!7265662))

(declare-fun m!7265664 () Bool)

(assert (=> bs!1642578 m!7265664))

(declare-fun m!7265666 () Bool)

(assert (=> bs!1642578 m!7265666))

(assert (=> bs!1642578 m!7264888))

(assert (=> b!6476331 d!2032125))

(declare-fun bs!1642583 () Bool)

(declare-fun d!2032127 () Bool)

(assert (= bs!1642583 (and d!2032127 d!2031923)))

(declare-fun lambda!358114 () Int)

(assert (=> bs!1642583 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358114 lambda!358059))))

(declare-fun bs!1642584 () Bool)

(assert (= bs!1642584 (and d!2032127 d!2032125)))

(assert (=> bs!1642584 (not (= lambda!358114 lambda!358108))))

(declare-fun bs!1642585 () Bool)

(assert (= bs!1642585 (and d!2032127 b!6477031)))

(assert (=> bs!1642585 (not (= lambda!358114 lambda!358073))))

(declare-fun bs!1642586 () Bool)

(assert (= bs!1642586 (and d!2032127 b!6476331)))

(assert (=> bs!1642586 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358114 lambda!358018))))

(declare-fun bs!1642587 () Bool)

(assert (= bs!1642587 (and d!2032127 b!6476300)))

(assert (=> bs!1642587 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358114 lambda!358016))))

(declare-fun bs!1642588 () Bool)

(assert (= bs!1642588 (and d!2032127 b!6476519)))

(assert (=> bs!1642588 (not (= lambda!358114 lambda!358035))))

(declare-fun bs!1642589 () Bool)

(assert (= bs!1642589 (and d!2032127 b!6477297)))

(assert (=> bs!1642589 (not (= lambda!358114 lambda!358103))))

(assert (=> bs!1642586 (not (= lambda!358114 lambda!358020))))

(declare-fun bs!1642590 () Bool)

(assert (= bs!1642590 (and d!2032127 d!2032041)))

(assert (=> bs!1642590 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358114 lambda!358083))))

(assert (=> bs!1642587 (not (= lambda!358114 lambda!358017))))

(assert (=> bs!1642584 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358114 lambda!358107))))

(declare-fun bs!1642591 () Bool)

(assert (= bs!1642591 (and d!2032127 b!6476517)))

(assert (=> bs!1642591 (not (= lambda!358114 lambda!358032))))

(assert (=> bs!1642583 (not (= lambda!358114 lambda!358062))))

(declare-fun bs!1642592 () Bool)

(assert (= bs!1642592 (and d!2032127 b!6476306)))

(assert (=> bs!1642592 (not (= lambda!358114 lambda!358014))))

(declare-fun bs!1642593 () Bool)

(assert (= bs!1642593 (and d!2032127 d!2032037)))

(assert (=> bs!1642593 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358114 lambda!358082))))

(declare-fun bs!1642594 () Bool)

(assert (= bs!1642594 (and d!2032127 b!6477299)))

(assert (=> bs!1642594 (not (= lambda!358114 lambda!358105))))

(declare-fun bs!1642595 () Bool)

(assert (= bs!1642595 (and d!2032127 b!6477033)))

(assert (=> bs!1642595 (not (= lambda!358114 lambda!358075))))

(assert (=> bs!1642592 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358114 lambda!358013))))

(declare-fun bs!1642596 () Bool)

(assert (= bs!1642596 (and d!2032127 d!2031905)))

(assert (=> bs!1642596 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358114 lambda!358052))))

(assert (=> bs!1642586 (not (= lambda!358114 lambda!358019))))

(assert (=> bs!1642590 (not (= lambda!358114 lambda!358084))))

(assert (=> d!2032127 true))

(assert (=> d!2032127 true))

(declare-fun lambda!358115 () Int)

(assert (=> bs!1642583 (not (= lambda!358115 lambda!358059))))

(assert (=> bs!1642584 (not (= lambda!358115 lambda!358108))))

(assert (=> bs!1642585 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) r!7292)) (= lambda!358115 lambda!358073))))

(assert (=> bs!1642586 (not (= lambda!358115 lambda!358018))))

(assert (=> bs!1642587 (not (= lambda!358115 lambda!358016))))

(assert (=> bs!1642588 (not (= lambda!358115 lambda!358035))))

(assert (=> bs!1642589 (= (and (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 lt!2385664)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664)) (= lambda!358115 lambda!358103))))

(assert (=> bs!1642586 (not (= lambda!358115 lambda!358020))))

(assert (=> bs!1642590 (not (= lambda!358115 lambda!358083))))

(assert (=> bs!1642587 (not (= lambda!358115 lambda!358017))))

(assert (=> bs!1642584 (not (= lambda!358115 lambda!358107))))

(assert (=> bs!1642591 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 lt!2385680)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385680)) (= lambda!358115 lambda!358032))))

(assert (=> bs!1642583 (not (= lambda!358115 lambda!358062))))

(assert (=> bs!1642592 (not (= lambda!358115 lambda!358014))))

(assert (=> bs!1642593 (not (= lambda!358115 lambda!358082))))

(assert (=> bs!1642594 (not (= lambda!358115 lambda!358105))))

(assert (=> bs!1642595 (not (= lambda!358115 lambda!358075))))

(declare-fun bs!1642597 () Bool)

(assert (= bs!1642597 d!2032127))

(assert (=> bs!1642597 (not (= lambda!358115 lambda!358114))))

(assert (=> bs!1642592 (not (= lambda!358115 lambda!358013))))

(assert (=> bs!1642596 (not (= lambda!358115 lambda!358052))))

(assert (=> bs!1642586 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358115 lambda!358019))))

(assert (=> bs!1642590 (not (= lambda!358115 lambda!358084))))

(assert (=> d!2032127 true))

(assert (=> d!2032127 true))

(assert (=> d!2032127 (= (Exists!3425 lambda!358114) (Exists!3425 lambda!358115))))

(declare-fun lt!2385863 () Unit!158751)

(declare-fun choose!48018 (Regex!16355 List!65364) Unit!158751)

(assert (=> d!2032127 (= lt!2385863 (choose!48018 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385678)))))

(assert (=> d!2032127 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032127 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!646 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385678)) lt!2385863)))

(declare-fun m!7265698 () Bool)

(assert (=> bs!1642597 m!7265698))

(declare-fun m!7265700 () Bool)

(assert (=> bs!1642597 m!7265700))

(declare-fun m!7265702 () Bool)

(assert (=> bs!1642597 m!7265702))

(assert (=> bs!1642597 m!7264888))

(assert (=> b!6476331 d!2032127))

(declare-fun d!2032141 () Bool)

(declare-fun e!3926319 () Bool)

(assert (=> d!2032141 e!3926319))

(declare-fun res!2659672 () Bool)

(assert (=> d!2032141 (=> (not res!2659672) (not e!3926319))))

(declare-fun lt!2385864 () List!65364)

(assert (=> d!2032141 (= res!2659672 (= (content!12410 lt!2385864) ((_ map or) (content!12410 (_1!36637 lt!2385692)) (content!12410 (_2!36637 lt!2385692)))))))

(declare-fun e!3926318 () List!65364)

(assert (=> d!2032141 (= lt!2385864 e!3926318)))

(declare-fun c!1186379 () Bool)

(assert (=> d!2032141 (= c!1186379 ((_ is Nil!65240) (_1!36637 lt!2385692)))))

(assert (=> d!2032141 (= (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)) lt!2385864)))

(declare-fun b!6477398 () Bool)

(declare-fun res!2659671 () Bool)

(assert (=> b!6477398 (=> (not res!2659671) (not e!3926319))))

(assert (=> b!6477398 (= res!2659671 (= (size!40407 lt!2385864) (+ (size!40407 (_1!36637 lt!2385692)) (size!40407 (_2!36637 lt!2385692)))))))

(declare-fun b!6477397 () Bool)

(assert (=> b!6477397 (= e!3926318 (Cons!65240 (h!71688 (_1!36637 lt!2385692)) (++!14423 (t!378988 (_1!36637 lt!2385692)) (_2!36637 lt!2385692))))))

(declare-fun b!6477399 () Bool)

(assert (=> b!6477399 (= e!3926319 (or (not (= (_2!36637 lt!2385692) Nil!65240)) (= lt!2385864 (_1!36637 lt!2385692))))))

(declare-fun b!6477396 () Bool)

(assert (=> b!6477396 (= e!3926318 (_2!36637 lt!2385692))))

(assert (= (and d!2032141 c!1186379) b!6477396))

(assert (= (and d!2032141 (not c!1186379)) b!6477397))

(assert (= (and d!2032141 res!2659672) b!6477398))

(assert (= (and b!6477398 res!2659671) b!6477399))

(declare-fun m!7265704 () Bool)

(assert (=> d!2032141 m!7265704))

(assert (=> d!2032141 m!7265314))

(assert (=> d!2032141 m!7265338))

(declare-fun m!7265706 () Bool)

(assert (=> b!6477398 m!7265706))

(assert (=> b!6477398 m!7265320))

(assert (=> b!6477398 m!7265342))

(declare-fun m!7265708 () Bool)

(assert (=> b!6477397 m!7265708))

(assert (=> b!6476331 d!2032141))

(declare-fun d!2032143 () Bool)

(assert (=> d!2032143 (= (get!22616 lt!2385668) (v!52424 lt!2385668))))

(assert (=> b!6476331 d!2032143))

(declare-fun d!2032145 () Bool)

(assert (=> d!2032145 (= (matchR!8538 lt!2385664 (_1!36637 lt!2385678)) (matchRSpec!3456 lt!2385664 (_1!36637 lt!2385678)))))

(declare-fun lt!2385865 () Unit!158751)

(assert (=> d!2032145 (= lt!2385865 (choose!47999 lt!2385664 (_1!36637 lt!2385678)))))

(assert (=> d!2032145 (validRegex!8091 lt!2385664)))

(assert (=> d!2032145 (= (mainMatchTheorem!3456 lt!2385664 (_1!36637 lt!2385678)) lt!2385865)))

(declare-fun bs!1642598 () Bool)

(assert (= bs!1642598 d!2032145))

(assert (=> bs!1642598 m!7264642))

(assert (=> bs!1642598 m!7264654))

(declare-fun m!7265710 () Bool)

(assert (=> bs!1642598 m!7265710))

(assert (=> bs!1642598 m!7264892))

(assert (=> b!6476331 d!2032145))

(declare-fun b!6477400 () Bool)

(declare-fun e!3926323 () Bool)

(assert (=> b!6477400 (= e!3926323 (matchR!8538 lt!2385664 (_1!36637 lt!2385678)))))

(declare-fun b!6477401 () Bool)

(declare-fun lt!2385868 () Unit!158751)

(declare-fun lt!2385867 () Unit!158751)

(assert (=> b!6477401 (= lt!2385868 lt!2385867)))

(assert (=> b!6477401 (= (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (t!378988 (_1!36637 lt!2385678))) (_1!36637 lt!2385678))))

(assert (=> b!6477401 (= lt!2385867 (lemmaMoveElementToOtherListKeepsConcatEq!2511 Nil!65240 (h!71688 (_1!36637 lt!2385678)) (t!378988 (_1!36637 lt!2385678)) (_1!36637 lt!2385678)))))

(declare-fun e!3926322 () Option!16246)

(assert (=> b!6477401 (= e!3926322 (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (t!378988 (_1!36637 lt!2385678)) (_1!36637 lt!2385678)))))

(declare-fun b!6477402 () Bool)

(declare-fun res!2659677 () Bool)

(declare-fun e!3926324 () Bool)

(assert (=> b!6477402 (=> (not res!2659677) (not e!3926324))))

(declare-fun lt!2385866 () Option!16246)

(assert (=> b!6477402 (= res!2659677 (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (_1!36637 (get!22616 lt!2385866))))))

(declare-fun b!6477403 () Bool)

(declare-fun e!3926320 () Option!16246)

(assert (=> b!6477403 (= e!3926320 e!3926322)))

(declare-fun c!1186381 () Bool)

(assert (=> b!6477403 (= c!1186381 ((_ is Nil!65240) (_1!36637 lt!2385678)))))

(declare-fun d!2032147 () Bool)

(declare-fun e!3926321 () Bool)

(assert (=> d!2032147 e!3926321))

(declare-fun res!2659673 () Bool)

(assert (=> d!2032147 (=> res!2659673 e!3926321)))

(assert (=> d!2032147 (= res!2659673 e!3926324)))

(declare-fun res!2659675 () Bool)

(assert (=> d!2032147 (=> (not res!2659675) (not e!3926324))))

(assert (=> d!2032147 (= res!2659675 (isDefined!12949 lt!2385866))))

(assert (=> d!2032147 (= lt!2385866 e!3926320)))

(declare-fun c!1186380 () Bool)

(assert (=> d!2032147 (= c!1186380 e!3926323)))

(declare-fun res!2659674 () Bool)

(assert (=> d!2032147 (=> (not res!2659674) (not e!3926323))))

(assert (=> d!2032147 (= res!2659674 (matchR!8538 (reg!16684 (regOne!33222 r!7292)) Nil!65240))))

(assert (=> d!2032147 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032147 (= (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 Nil!65240 (_1!36637 lt!2385678) (_1!36637 lt!2385678)) lt!2385866)))

(declare-fun b!6477404 () Bool)

(declare-fun res!2659676 () Bool)

(assert (=> b!6477404 (=> (not res!2659676) (not e!3926324))))

(assert (=> b!6477404 (= res!2659676 (matchR!8538 lt!2385664 (_2!36637 (get!22616 lt!2385866))))))

(declare-fun b!6477405 () Bool)

(assert (=> b!6477405 (= e!3926320 (Some!16245 (tuple2!66669 Nil!65240 (_1!36637 lt!2385678))))))

(declare-fun b!6477406 () Bool)

(assert (=> b!6477406 (= e!3926321 (not (isDefined!12949 lt!2385866)))))

(declare-fun b!6477407 () Bool)

(assert (=> b!6477407 (= e!3926324 (= (++!14423 (_1!36637 (get!22616 lt!2385866)) (_2!36637 (get!22616 lt!2385866))) (_1!36637 lt!2385678)))))

(declare-fun b!6477408 () Bool)

(assert (=> b!6477408 (= e!3926322 None!16245)))

(assert (= (and d!2032147 res!2659674) b!6477400))

(assert (= (and d!2032147 c!1186380) b!6477405))

(assert (= (and d!2032147 (not c!1186380)) b!6477403))

(assert (= (and b!6477403 c!1186381) b!6477408))

(assert (= (and b!6477403 (not c!1186381)) b!6477401))

(assert (= (and d!2032147 res!2659675) b!6477402))

(assert (= (and b!6477402 res!2659677) b!6477404))

(assert (= (and b!6477404 res!2659676) b!6477407))

(assert (= (and d!2032147 (not res!2659673)) b!6477406))

(declare-fun m!7265712 () Bool)

(assert (=> b!6477401 m!7265712))

(assert (=> b!6477401 m!7265712))

(declare-fun m!7265714 () Bool)

(assert (=> b!6477401 m!7265714))

(declare-fun m!7265716 () Bool)

(assert (=> b!6477401 m!7265716))

(assert (=> b!6477401 m!7265712))

(declare-fun m!7265718 () Bool)

(assert (=> b!6477401 m!7265718))

(declare-fun m!7265720 () Bool)

(assert (=> b!6477407 m!7265720))

(declare-fun m!7265722 () Bool)

(assert (=> b!6477407 m!7265722))

(declare-fun m!7265724 () Bool)

(assert (=> b!6477406 m!7265724))

(assert (=> d!2032147 m!7265724))

(declare-fun m!7265726 () Bool)

(assert (=> d!2032147 m!7265726))

(assert (=> d!2032147 m!7264888))

(assert (=> b!6477402 m!7265720))

(declare-fun m!7265728 () Bool)

(assert (=> b!6477402 m!7265728))

(assert (=> b!6477404 m!7265720))

(declare-fun m!7265730 () Bool)

(assert (=> b!6477404 m!7265730))

(assert (=> b!6477400 m!7264642))

(assert (=> b!6476331 d!2032147))

(declare-fun d!2032149 () Bool)

(assert (=> d!2032149 (= (Exists!3425 lambda!358019) (choose!48008 lambda!358019))))

(declare-fun bs!1642599 () Bool)

(assert (= bs!1642599 d!2032149))

(declare-fun m!7265732 () Bool)

(assert (=> bs!1642599 m!7265732))

(assert (=> b!6476331 d!2032149))

(declare-fun d!2032151 () Bool)

(assert (=> d!2032151 (= (Exists!3425 lambda!358018) (choose!48008 lambda!358018))))

(declare-fun bs!1642600 () Bool)

(assert (= bs!1642600 d!2032151))

(declare-fun m!7265734 () Bool)

(assert (=> bs!1642600 m!7265734))

(assert (=> b!6476331 d!2032151))

(declare-fun d!2032153 () Bool)

(assert (=> d!2032153 (= (Exists!3425 lambda!358020) (choose!48008 lambda!358020))))

(declare-fun bs!1642601 () Bool)

(assert (= bs!1642601 d!2032153))

(declare-fun m!7265736 () Bool)

(assert (=> bs!1642601 m!7265736))

(assert (=> b!6476331 d!2032153))

(declare-fun bs!1642602 () Bool)

(declare-fun d!2032155 () Bool)

(assert (= bs!1642602 (and d!2032155 d!2032127)))

(declare-fun lambda!358116 () Int)

(assert (=> bs!1642602 (not (= lambda!358116 lambda!358115))))

(declare-fun bs!1642603 () Bool)

(assert (= bs!1642603 (and d!2032155 d!2031923)))

(assert (=> bs!1642603 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358116 lambda!358059))))

(declare-fun bs!1642604 () Bool)

(assert (= bs!1642604 (and d!2032155 d!2032125)))

(assert (=> bs!1642604 (not (= lambda!358116 lambda!358108))))

(declare-fun bs!1642605 () Bool)

(assert (= bs!1642605 (and d!2032155 b!6477031)))

(assert (=> bs!1642605 (not (= lambda!358116 lambda!358073))))

(declare-fun bs!1642606 () Bool)

(assert (= bs!1642606 (and d!2032155 b!6476331)))

(assert (=> bs!1642606 (= lambda!358116 lambda!358018)))

(declare-fun bs!1642607 () Bool)

(assert (= bs!1642607 (and d!2032155 b!6476300)))

(assert (=> bs!1642607 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358116 lambda!358016))))

(declare-fun bs!1642608 () Bool)

(assert (= bs!1642608 (and d!2032155 b!6476519)))

(assert (=> bs!1642608 (not (= lambda!358116 lambda!358035))))

(declare-fun bs!1642609 () Bool)

(assert (= bs!1642609 (and d!2032155 b!6477297)))

(assert (=> bs!1642609 (not (= lambda!358116 lambda!358103))))

(assert (=> bs!1642606 (not (= lambda!358116 lambda!358020))))

(declare-fun bs!1642610 () Bool)

(assert (= bs!1642610 (and d!2032155 d!2032041)))

(assert (=> bs!1642610 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358116 lambda!358083))))

(assert (=> bs!1642607 (not (= lambda!358116 lambda!358017))))

(assert (=> bs!1642604 (= lambda!358116 lambda!358107)))

(declare-fun bs!1642611 () Bool)

(assert (= bs!1642611 (and d!2032155 b!6476517)))

(assert (=> bs!1642611 (not (= lambda!358116 lambda!358032))))

(assert (=> bs!1642603 (not (= lambda!358116 lambda!358062))))

(declare-fun bs!1642612 () Bool)

(assert (= bs!1642612 (and d!2032155 b!6476306)))

(assert (=> bs!1642612 (not (= lambda!358116 lambda!358014))))

(declare-fun bs!1642613 () Bool)

(assert (= bs!1642613 (and d!2032155 d!2032037)))

(assert (=> bs!1642613 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358116 lambda!358082))))

(declare-fun bs!1642614 () Bool)

(assert (= bs!1642614 (and d!2032155 b!6477299)))

(assert (=> bs!1642614 (not (= lambda!358116 lambda!358105))))

(declare-fun bs!1642615 () Bool)

(assert (= bs!1642615 (and d!2032155 b!6477033)))

(assert (=> bs!1642615 (not (= lambda!358116 lambda!358075))))

(assert (=> bs!1642602 (= (= lt!2385664 (Star!16355 (reg!16684 (regOne!33222 r!7292)))) (= lambda!358116 lambda!358114))))

(assert (=> bs!1642612 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358116 lambda!358013))))

(declare-fun bs!1642616 () Bool)

(assert (= bs!1642616 (and d!2032155 d!2031905)))

(assert (=> bs!1642616 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358116 lambda!358052))))

(assert (=> bs!1642606 (not (= lambda!358116 lambda!358019))))

(assert (=> bs!1642610 (not (= lambda!358116 lambda!358084))))

(assert (=> d!2032155 true))

(assert (=> d!2032155 true))

(assert (=> d!2032155 true))

(assert (=> d!2032155 (= (isDefined!12949 (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 Nil!65240 (_1!36637 lt!2385678) (_1!36637 lt!2385678))) (Exists!3425 lambda!358116))))

(declare-fun lt!2385869 () Unit!158751)

(assert (=> d!2032155 (= lt!2385869 (choose!48005 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)))))

(assert (=> d!2032155 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032155 (= (lemmaFindConcatSeparationEquivalentToExists!2424 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)) lt!2385869)))

(declare-fun bs!1642617 () Bool)

(assert (= bs!1642617 d!2032155))

(declare-fun m!7265738 () Bool)

(assert (=> bs!1642617 m!7265738))

(assert (=> bs!1642617 m!7264660))

(declare-fun m!7265740 () Bool)

(assert (=> bs!1642617 m!7265740))

(declare-fun m!7265742 () Bool)

(assert (=> bs!1642617 m!7265742))

(assert (=> bs!1642617 m!7264888))

(assert (=> bs!1642617 m!7264660))

(assert (=> b!6476331 d!2032155))

(declare-fun d!2032157 () Bool)

(declare-fun lt!2385870 () Regex!16355)

(assert (=> d!2032157 (validRegex!8091 lt!2385870)))

(assert (=> d!2032157 (= lt!2385870 (generalisedUnion!2199 (unfocusZipperList!1776 zl!343)))))

(assert (=> d!2032157 (= (unfocusZipper!2097 zl!343) lt!2385870)))

(declare-fun bs!1642618 () Bool)

(assert (= bs!1642618 d!2032157))

(declare-fun m!7265744 () Bool)

(assert (=> bs!1642618 m!7265744))

(assert (=> bs!1642618 m!7264508))

(assert (=> bs!1642618 m!7264508))

(assert (=> bs!1642618 m!7264510))

(assert (=> b!6476311 d!2032157))

(declare-fun d!2032159 () Bool)

(declare-fun lt!2385871 () Regex!16355)

(assert (=> d!2032159 (validRegex!8091 lt!2385871)))

(assert (=> d!2032159 (= lt!2385871 (generalisedUnion!2199 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))))))

(assert (=> d!2032159 (= (unfocusZipper!2097 (Cons!65242 lt!2385662 Nil!65242)) lt!2385871)))

(declare-fun bs!1642619 () Bool)

(assert (= bs!1642619 d!2032159))

(declare-fun m!7265746 () Bool)

(assert (=> bs!1642619 m!7265746))

(declare-fun m!7265748 () Bool)

(assert (=> bs!1642619 m!7265748))

(assert (=> bs!1642619 m!7265748))

(declare-fun m!7265750 () Bool)

(assert (=> bs!1642619 m!7265750))

(assert (=> b!6476310 d!2032159))

(declare-fun e!3926327 () Bool)

(declare-fun d!2032161 () Bool)

(assert (=> d!2032161 (= (matchZipper!2367 ((_ map or) lt!2385694 lt!2385659) (t!378988 s!2326)) e!3926327)))

(declare-fun res!2659680 () Bool)

(assert (=> d!2032161 (=> res!2659680 e!3926327)))

(assert (=> d!2032161 (= res!2659680 (matchZipper!2367 lt!2385694 (t!378988 s!2326)))))

(declare-fun lt!2385874 () Unit!158751)

(declare-fun choose!48020 ((InoxSet Context!11478) (InoxSet Context!11478) List!65364) Unit!158751)

(assert (=> d!2032161 (= lt!2385874 (choose!48020 lt!2385694 lt!2385659 (t!378988 s!2326)))))

(assert (=> d!2032161 (= (lemmaZipperConcatMatchesSameAsBothZippers!1186 lt!2385694 lt!2385659 (t!378988 s!2326)) lt!2385874)))

(declare-fun b!6477411 () Bool)

(assert (=> b!6477411 (= e!3926327 (matchZipper!2367 lt!2385659 (t!378988 s!2326)))))

(assert (= (and d!2032161 (not res!2659680)) b!6477411))

(assert (=> d!2032161 m!7264560))

(assert (=> d!2032161 m!7264558))

(declare-fun m!7265752 () Bool)

(assert (=> d!2032161 m!7265752))

(assert (=> b!6477411 m!7264600))

(assert (=> b!6476309 d!2032161))

(declare-fun d!2032163 () Bool)

(declare-fun c!1186382 () Bool)

(assert (=> d!2032163 (= c!1186382 (isEmpty!37424 (t!378988 s!2326)))))

(declare-fun e!3926328 () Bool)

(assert (=> d!2032163 (= (matchZipper!2367 lt!2385694 (t!378988 s!2326)) e!3926328)))

(declare-fun b!6477412 () Bool)

(assert (=> b!6477412 (= e!3926328 (nullableZipper!2114 lt!2385694))))

(declare-fun b!6477413 () Bool)

(assert (=> b!6477413 (= e!3926328 (matchZipper!2367 (derivationStepZipper!2321 lt!2385694 (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))))))

(assert (= (and d!2032163 c!1186382) b!6477412))

(assert (= (and d!2032163 (not c!1186382)) b!6477413))

(assert (=> d!2032163 m!7264994))

(declare-fun m!7265754 () Bool)

(assert (=> b!6477412 m!7265754))

(assert (=> b!6477413 m!7264998))

(assert (=> b!6477413 m!7264998))

(declare-fun m!7265756 () Bool)

(assert (=> b!6477413 m!7265756))

(assert (=> b!6477413 m!7265002))

(assert (=> b!6477413 m!7265756))

(assert (=> b!6477413 m!7265002))

(declare-fun m!7265758 () Bool)

(assert (=> b!6477413 m!7265758))

(assert (=> b!6476309 d!2032163))

(declare-fun d!2032165 () Bool)

(declare-fun c!1186383 () Bool)

(assert (=> d!2032165 (= c!1186383 (isEmpty!37424 (t!378988 s!2326)))))

(declare-fun e!3926329 () Bool)

(assert (=> d!2032165 (= (matchZipper!2367 ((_ map or) lt!2385694 lt!2385659) (t!378988 s!2326)) e!3926329)))

(declare-fun b!6477414 () Bool)

(assert (=> b!6477414 (= e!3926329 (nullableZipper!2114 ((_ map or) lt!2385694 lt!2385659)))))

(declare-fun b!6477415 () Bool)

(assert (=> b!6477415 (= e!3926329 (matchZipper!2367 (derivationStepZipper!2321 ((_ map or) lt!2385694 lt!2385659) (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))))))

(assert (= (and d!2032165 c!1186383) b!6477414))

(assert (= (and d!2032165 (not c!1186383)) b!6477415))

(assert (=> d!2032165 m!7264994))

(declare-fun m!7265760 () Bool)

(assert (=> b!6477414 m!7265760))

(assert (=> b!6477415 m!7264998))

(assert (=> b!6477415 m!7264998))

(declare-fun m!7265762 () Bool)

(assert (=> b!6477415 m!7265762))

(assert (=> b!6477415 m!7265002))

(assert (=> b!6477415 m!7265762))

(assert (=> b!6477415 m!7265002))

(declare-fun m!7265764 () Bool)

(assert (=> b!6477415 m!7265764))

(assert (=> b!6476309 d!2032165))

(declare-fun b!6477420 () Bool)

(declare-fun e!3926332 () Bool)

(declare-fun tp!1794977 () Bool)

(assert (=> b!6477420 (= e!3926332 (and tp_is_empty!41963 tp!1794977))))

(assert (=> b!6476301 (= tp!1794910 e!3926332)))

(assert (= (and b!6476301 ((_ is Cons!65240) (t!378988 s!2326))) b!6477420))

(declare-fun condSetEmpty!44119 () Bool)

(assert (=> setNonEmpty!44113 (= condSetEmpty!44119 (= setRest!44113 ((as const (Array Context!11478 Bool)) false)))))

(declare-fun setRes!44119 () Bool)

(assert (=> setNonEmpty!44113 (= tp!1794911 setRes!44119)))

(declare-fun setIsEmpty!44119 () Bool)

(assert (=> setIsEmpty!44119 setRes!44119))

(declare-fun tp!1794983 () Bool)

(declare-fun e!3926335 () Bool)

(declare-fun setElem!44119 () Context!11478)

(declare-fun setNonEmpty!44119 () Bool)

(assert (=> setNonEmpty!44119 (= setRes!44119 (and tp!1794983 (inv!84134 setElem!44119) e!3926335))))

(declare-fun setRest!44119 () (InoxSet Context!11478))

(assert (=> setNonEmpty!44119 (= setRest!44113 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) setElem!44119 true) setRest!44119))))

(declare-fun b!6477425 () Bool)

(declare-fun tp!1794982 () Bool)

(assert (=> b!6477425 (= e!3926335 tp!1794982)))

(assert (= (and setNonEmpty!44113 condSetEmpty!44119) setIsEmpty!44119))

(assert (= (and setNonEmpty!44113 (not condSetEmpty!44119)) setNonEmpty!44119))

(assert (= setNonEmpty!44119 b!6477425))

(declare-fun m!7265766 () Bool)

(assert (=> setNonEmpty!44119 m!7265766))

(declare-fun b!6477436 () Bool)

(declare-fun e!3926338 () Bool)

(assert (=> b!6477436 (= e!3926338 tp_is_empty!41963)))

(declare-fun b!6477437 () Bool)

(declare-fun tp!1794998 () Bool)

(declare-fun tp!1794996 () Bool)

(assert (=> b!6477437 (= e!3926338 (and tp!1794998 tp!1794996))))

(assert (=> b!6476324 (= tp!1794907 e!3926338)))

(declare-fun b!6477439 () Bool)

(declare-fun tp!1794994 () Bool)

(declare-fun tp!1794995 () Bool)

(assert (=> b!6477439 (= e!3926338 (and tp!1794994 tp!1794995))))

(declare-fun b!6477438 () Bool)

(declare-fun tp!1794997 () Bool)

(assert (=> b!6477438 (= e!3926338 tp!1794997)))

(assert (= (and b!6476324 ((_ is ElementMatch!16355) (regOne!33223 r!7292))) b!6477436))

(assert (= (and b!6476324 ((_ is Concat!25200) (regOne!33223 r!7292))) b!6477437))

(assert (= (and b!6476324 ((_ is Star!16355) (regOne!33223 r!7292))) b!6477438))

(assert (= (and b!6476324 ((_ is Union!16355) (regOne!33223 r!7292))) b!6477439))

(declare-fun b!6477440 () Bool)

(declare-fun e!3926339 () Bool)

(assert (=> b!6477440 (= e!3926339 tp_is_empty!41963)))

(declare-fun b!6477441 () Bool)

(declare-fun tp!1795003 () Bool)

(declare-fun tp!1795001 () Bool)

(assert (=> b!6477441 (= e!3926339 (and tp!1795003 tp!1795001))))

(assert (=> b!6476324 (= tp!1794913 e!3926339)))

(declare-fun b!6477443 () Bool)

(declare-fun tp!1794999 () Bool)

(declare-fun tp!1795000 () Bool)

(assert (=> b!6477443 (= e!3926339 (and tp!1794999 tp!1795000))))

(declare-fun b!6477442 () Bool)

(declare-fun tp!1795002 () Bool)

(assert (=> b!6477442 (= e!3926339 tp!1795002)))

(assert (= (and b!6476324 ((_ is ElementMatch!16355) (regTwo!33223 r!7292))) b!6477440))

(assert (= (and b!6476324 ((_ is Concat!25200) (regTwo!33223 r!7292))) b!6477441))

(assert (= (and b!6476324 ((_ is Star!16355) (regTwo!33223 r!7292))) b!6477442))

(assert (= (and b!6476324 ((_ is Union!16355) (regTwo!33223 r!7292))) b!6477443))

(declare-fun b!6477448 () Bool)

(declare-fun e!3926342 () Bool)

(declare-fun tp!1795008 () Bool)

(declare-fun tp!1795009 () Bool)

(assert (=> b!6477448 (= e!3926342 (and tp!1795008 tp!1795009))))

(assert (=> b!6476329 (= tp!1794914 e!3926342)))

(assert (= (and b!6476329 ((_ is Cons!65241) (exprs!6239 setElem!44113))) b!6477448))

(declare-fun b!6477449 () Bool)

(declare-fun e!3926343 () Bool)

(declare-fun tp!1795010 () Bool)

(declare-fun tp!1795011 () Bool)

(assert (=> b!6477449 (= e!3926343 (and tp!1795010 tp!1795011))))

(assert (=> b!6476334 (= tp!1794916 e!3926343)))

(assert (= (and b!6476334 ((_ is Cons!65241) (exprs!6239 (h!71690 zl!343)))) b!6477449))

(declare-fun b!6477450 () Bool)

(declare-fun e!3926344 () Bool)

(assert (=> b!6477450 (= e!3926344 tp_is_empty!41963)))

(declare-fun b!6477451 () Bool)

(declare-fun tp!1795016 () Bool)

(declare-fun tp!1795014 () Bool)

(assert (=> b!6477451 (= e!3926344 (and tp!1795016 tp!1795014))))

(assert (=> b!6476333 (= tp!1794909 e!3926344)))

(declare-fun b!6477453 () Bool)

(declare-fun tp!1795012 () Bool)

(declare-fun tp!1795013 () Bool)

(assert (=> b!6477453 (= e!3926344 (and tp!1795012 tp!1795013))))

(declare-fun b!6477452 () Bool)

(declare-fun tp!1795015 () Bool)

(assert (=> b!6477452 (= e!3926344 tp!1795015)))

(assert (= (and b!6476333 ((_ is ElementMatch!16355) (regOne!33222 r!7292))) b!6477450))

(assert (= (and b!6476333 ((_ is Concat!25200) (regOne!33222 r!7292))) b!6477451))

(assert (= (and b!6476333 ((_ is Star!16355) (regOne!33222 r!7292))) b!6477452))

(assert (= (and b!6476333 ((_ is Union!16355) (regOne!33222 r!7292))) b!6477453))

(declare-fun b!6477454 () Bool)

(declare-fun e!3926345 () Bool)

(assert (=> b!6477454 (= e!3926345 tp_is_empty!41963)))

(declare-fun b!6477455 () Bool)

(declare-fun tp!1795021 () Bool)

(declare-fun tp!1795019 () Bool)

(assert (=> b!6477455 (= e!3926345 (and tp!1795021 tp!1795019))))

(assert (=> b!6476333 (= tp!1794908 e!3926345)))

(declare-fun b!6477457 () Bool)

(declare-fun tp!1795017 () Bool)

(declare-fun tp!1795018 () Bool)

(assert (=> b!6477457 (= e!3926345 (and tp!1795017 tp!1795018))))

(declare-fun b!6477456 () Bool)

(declare-fun tp!1795020 () Bool)

(assert (=> b!6477456 (= e!3926345 tp!1795020)))

(assert (= (and b!6476333 ((_ is ElementMatch!16355) (regTwo!33222 r!7292))) b!6477454))

(assert (= (and b!6476333 ((_ is Concat!25200) (regTwo!33222 r!7292))) b!6477455))

(assert (= (and b!6476333 ((_ is Star!16355) (regTwo!33222 r!7292))) b!6477456))

(assert (= (and b!6476333 ((_ is Union!16355) (regTwo!33222 r!7292))) b!6477457))

(declare-fun b!6477465 () Bool)

(declare-fun e!3926351 () Bool)

(declare-fun tp!1795026 () Bool)

(assert (=> b!6477465 (= e!3926351 tp!1795026)))

(declare-fun b!6477464 () Bool)

(declare-fun tp!1795027 () Bool)

(declare-fun e!3926350 () Bool)

(assert (=> b!6477464 (= e!3926350 (and (inv!84134 (h!71690 (t!378990 zl!343))) e!3926351 tp!1795027))))

(assert (=> b!6476303 (= tp!1794915 e!3926350)))

(assert (= b!6477464 b!6477465))

(assert (= (and b!6476303 ((_ is Cons!65242) (t!378990 zl!343))) b!6477464))

(declare-fun m!7265768 () Bool)

(assert (=> b!6477464 m!7265768))

(declare-fun b!6477466 () Bool)

(declare-fun e!3926352 () Bool)

(assert (=> b!6477466 (= e!3926352 tp_is_empty!41963)))

(declare-fun b!6477467 () Bool)

(declare-fun tp!1795032 () Bool)

(declare-fun tp!1795030 () Bool)

(assert (=> b!6477467 (= e!3926352 (and tp!1795032 tp!1795030))))

(assert (=> b!6476327 (= tp!1794912 e!3926352)))

(declare-fun b!6477469 () Bool)

(declare-fun tp!1795028 () Bool)

(declare-fun tp!1795029 () Bool)

(assert (=> b!6477469 (= e!3926352 (and tp!1795028 tp!1795029))))

(declare-fun b!6477468 () Bool)

(declare-fun tp!1795031 () Bool)

(assert (=> b!6477468 (= e!3926352 tp!1795031)))

(assert (= (and b!6476327 ((_ is ElementMatch!16355) (reg!16684 r!7292))) b!6477466))

(assert (= (and b!6476327 ((_ is Concat!25200) (reg!16684 r!7292))) b!6477467))

(assert (= (and b!6476327 ((_ is Star!16355) (reg!16684 r!7292))) b!6477468))

(assert (= (and b!6476327 ((_ is Union!16355) (reg!16684 r!7292))) b!6477469))

(declare-fun b_lambda!245385 () Bool)

(assert (= b_lambda!245375 (or b!6476340 b_lambda!245385)))

(declare-fun bs!1642620 () Bool)

(declare-fun d!2032167 () Bool)

(assert (= bs!1642620 (and d!2032167 b!6476340)))

(assert (=> bs!1642620 (= (dynLambda!25915 lambda!358015 lt!2385676) (derivationStepZipperUp!1529 lt!2385676 (h!71688 s!2326)))))

(assert (=> bs!1642620 m!7264546))

(assert (=> d!2032073 d!2032167))

(declare-fun b_lambda!245387 () Bool)

(assert (= b_lambda!245367 (or b!6476340 b_lambda!245387)))

(declare-fun bs!1642621 () Bool)

(declare-fun d!2032169 () Bool)

(assert (= bs!1642621 (and d!2032169 b!6476340)))

(assert (=> bs!1642621 (= (dynLambda!25915 lambda!358015 (h!71690 zl!343)) (derivationStepZipperUp!1529 (h!71690 zl!343) (h!71688 s!2326)))))

(assert (=> bs!1642621 m!7264674))

(assert (=> d!2031967 d!2032169))

(declare-fun b_lambda!245389 () Bool)

(assert (= b_lambda!245369 (or b!6476340 b_lambda!245389)))

(declare-fun bs!1642622 () Bool)

(declare-fun d!2032171 () Bool)

(assert (= bs!1642622 (and d!2032171 b!6476340)))

(assert (=> bs!1642622 (= (dynLambda!25915 lambda!358015 lt!2385662) (derivationStepZipperUp!1529 lt!2385662 (h!71688 s!2326)))))

(assert (=> bs!1642622 m!7264588))

(assert (=> d!2032023 d!2032171))

(declare-fun b_lambda!245391 () Bool)

(assert (= b_lambda!245371 (or b!6476340 b_lambda!245391)))

(declare-fun bs!1642623 () Bool)

(declare-fun d!2032173 () Bool)

(assert (= bs!1642623 (and d!2032173 b!6476340)))

(assert (=> bs!1642623 (= (dynLambda!25915 lambda!358015 lt!2385665) (derivationStepZipperUp!1529 lt!2385665 (h!71688 s!2326)))))

(assert (=> bs!1642623 m!7264536))

(assert (=> d!2032061 d!2032173))

(check-sat (not d!2031871) (not b!6477161) (not b!6477252) (not b!6477266) (not bm!560463) (not b!6477453) (not bm!560387) (not b!6477106) (not bm!560382) (not b!6476638) (not bs!1642621) (not d!2032063) (not d!2031887) (not b!6477448) (not b!6476709) (not b!6477413) (not bm!560480) (not d!2031897) (not d!2031999) (not d!2032141) (not b!6476711) (not bs!1642620) (not d!2032075) (not b!6476898) (not bm!560466) (not b!6476605) (not b!6477275) (not b!6476597) (not b!6477060) (not b!6476601) (not b!6476442) (not b_lambda!245385) (not b!6477301) (not b!6477280) (not b!6477397) (not b!6477400) (not b!6477247) (not b!6477224) (not b!6476606) (not d!2032151) (not b!6477079) (not b!6476538) (not d!2032155) (not b!6477020) (not bm!560447) (not b!6477024) (not b!6477108) (not b!6476924) (not b!6476518) (not b!6477051) (not b!6477401) (not b!6477064) (not b!6477277) (not b_lambda!245391) (not b!6477001) (not b!6477443) (not b!6477457) (not d!2031967) (not d!2031963) (not b!6477090) (not b!6477015) (not b!6477093) (not b!6476899) (not b!6477256) (not d!2032023) (not d!2032085) (not d!2032041) (not d!2032127) (not bm!560380) (not d!2031903) (not b!6476923) (not b!6477452) (not d!2032035) (not d!2032001) (not b!6477017) (not b!6477040) (not b!6477047) (not b!6477226) (not b!6476708) (not b!6477271) (not d!2032103) (not bm!560452) (not d!2032107) (not d!2032027) (not b!6477406) (not b!6477052) (not b!6476594) (not d!2032037) (not b!6477097) (not b!6477437) (not d!2032147) (not b!6476453) (not b!6476550) (not b!6477398) (not bm!560379) (not d!2032161) (not d!2031905) (not b!6476545) (not d!2032097) (not b!6476901) (not bm!560450) (not b!6476541) (not b!6476716) (not b!6476636) (not bm!560482) (not d!2031851) (not b!6477469) (not b!6476713) (not d!2031883) (not d!2032157) (not b!6476998) (not b!6477404) (not b!6477439) (not b!6477035) (not d!2031983) (not d!2031895) (not b!6477407) (not b!6477095) (not b!6476739) (not b_lambda!245389) (not b!6477257) (not b!6477148) (not bm!560464) (not b!6477289) (not b!6477151) (not b!6476904) (not d!2031899) (not d!2032159) (not b!6476450) (not d!2031923) (not bm!560456) (not b!6477077) (not b!6477082) (not bm!560486) (not d!2032017) (not b!6477449) (not b!6477063) (not b!6477451) (not b!6477274) (not bs!1642622) (not b!6477402) (not b!6477467) (not b!6476740) (not b!6477096) (not d!2032061) (not b!6477261) (not bm!560458) (not b!6477284) (not b!6477438) (not d!2032013) (not d!2032149) (not d!2031995) (not b!6476602) (not b!6476454) (not b!6477223) (not d!2032073) (not d!2032019) (not b!6477456) (not d!2032101) (not bm!560373) (not b!6477425) (not b!6476897) (not b!6477441) (not bm!560485) (not b!6477012) (not b!6477158) (not d!2031951) (not b!6477032) (not d!2032003) (not bm!560473) (not b!6476714) (not d!2032025) tp_is_empty!41963 (not b!6477091) (not b!6477412) (not b!6477087) (not d!2031879) (not setNonEmpty!44119) (not b!6477263) (not bm!560461) (not b!6477411) (not d!2032083) (not b!6477420) (not b!6477228) (not b!6477105) (not bm!560471) (not b!6476950) (not d!2032145) (not b!6477110) (not bm!560462) (not d!2031971) (not b!6476903) (not b!6477468) (not b_lambda!245387) (not bs!1642623) (not b!6477111) (not b!6477249) (not d!2031837) (not d!2031809) (not b!6476445) (not d!2031989) (not bm!560468) (not b!6476673) (not b!6476521) (not b!6477442) (not d!2032165) (not bm!560467) (not d!2032051) (not b!6477086) (not b!6476546) (not d!2032125) (not b!6477094) (not d!2031877) (not b!6477100) (not b!6476549) (not d!2031953) (not b!6477260) (not b!6477414) (not b!6477225) (not b!6477455) (not b!6477183) (not b!6477059) (not d!2031847) (not d!2031853) (not d!2031955) (not b!6476707) (not b!6476449) (not b!6477288) (not b!6476637) (not b!6477285) (not b!6476635) (not b!6477076) (not b!6477043) (not bm!560487) (not d!2032067) (not b!6477464) (not d!2032153) (not d!2032123) (not bm!560488) (not d!2032163) (not bm!560453) (not b!6477465) (not bm!560489) (not d!2031931) (not b!6477298) (not b!6477231) (not d!2031977) (not b!6477048) (not b!6477104) (not b!6476961) (not d!2031869) (not b!6477415) (not d!2031885) (not d!2031881) (not bm!560465) (not d!2032011) (not b!6477270) (not b!6477227) (not d!2032053))
(check-sat)
(get-model)

(declare-fun d!2032175 () Bool)

(assert (=> d!2032175 (= (isEmpty!37424 (_2!36637 lt!2385692)) ((_ is Nil!65240) (_2!36637 lt!2385692)))))

(assert (=> d!2032107 d!2032175))

(declare-fun b!6477470 () Bool)

(declare-fun e!3926355 () Bool)

(declare-fun e!3926356 () Bool)

(assert (=> b!6477470 (= e!3926355 e!3926356)))

(declare-fun res!2659685 () Bool)

(assert (=> b!6477470 (= res!2659685 (not (nullable!6348 (reg!16684 lt!2385664))))))

(assert (=> b!6477470 (=> (not res!2659685) (not e!3926356))))

(declare-fun b!6477471 () Bool)

(declare-fun e!3926357 () Bool)

(declare-fun call!560496 () Bool)

(assert (=> b!6477471 (= e!3926357 call!560496)))

(declare-fun b!6477472 () Bool)

(declare-fun e!3926353 () Bool)

(assert (=> b!6477472 (= e!3926353 e!3926355)))

(declare-fun c!1186385 () Bool)

(assert (=> b!6477472 (= c!1186385 ((_ is Star!16355) lt!2385664))))

(declare-fun b!6477473 () Bool)

(declare-fun e!3926359 () Bool)

(assert (=> b!6477473 (= e!3926359 call!560496)))

(declare-fun b!6477474 () Bool)

(declare-fun e!3926358 () Bool)

(assert (=> b!6477474 (= e!3926358 e!3926357)))

(declare-fun res!2659681 () Bool)

(assert (=> b!6477474 (=> (not res!2659681) (not e!3926357))))

(declare-fun call!560498 () Bool)

(assert (=> b!6477474 (= res!2659681 call!560498)))

(declare-fun bm!560491 () Bool)

(declare-fun c!1186384 () Bool)

(assert (=> bm!560491 (= call!560498 (validRegex!8091 (ite c!1186384 (regOne!33223 lt!2385664) (regOne!33222 lt!2385664))))))

(declare-fun bm!560492 () Bool)

(declare-fun call!560497 () Bool)

(assert (=> bm!560492 (= call!560496 call!560497)))

(declare-fun b!6477475 () Bool)

(assert (=> b!6477475 (= e!3926356 call!560497)))

(declare-fun bm!560493 () Bool)

(assert (=> bm!560493 (= call!560497 (validRegex!8091 (ite c!1186385 (reg!16684 lt!2385664) (ite c!1186384 (regTwo!33223 lt!2385664) (regTwo!33222 lt!2385664)))))))

(declare-fun b!6477476 () Bool)

(declare-fun res!2659684 () Bool)

(assert (=> b!6477476 (=> (not res!2659684) (not e!3926359))))

(assert (=> b!6477476 (= res!2659684 call!560498)))

(declare-fun e!3926354 () Bool)

(assert (=> b!6477476 (= e!3926354 e!3926359)))

(declare-fun d!2032177 () Bool)

(declare-fun res!2659683 () Bool)

(assert (=> d!2032177 (=> res!2659683 e!3926353)))

(assert (=> d!2032177 (= res!2659683 ((_ is ElementMatch!16355) lt!2385664))))

(assert (=> d!2032177 (= (validRegex!8091 lt!2385664) e!3926353)))

(declare-fun b!6477477 () Bool)

(assert (=> b!6477477 (= e!3926355 e!3926354)))

(assert (=> b!6477477 (= c!1186384 ((_ is Union!16355) lt!2385664))))

(declare-fun b!6477478 () Bool)

(declare-fun res!2659682 () Bool)

(assert (=> b!6477478 (=> res!2659682 e!3926358)))

(assert (=> b!6477478 (= res!2659682 (not ((_ is Concat!25200) lt!2385664)))))

(assert (=> b!6477478 (= e!3926354 e!3926358)))

(assert (= (and d!2032177 (not res!2659683)) b!6477472))

(assert (= (and b!6477472 c!1186385) b!6477470))

(assert (= (and b!6477472 (not c!1186385)) b!6477477))

(assert (= (and b!6477470 res!2659685) b!6477475))

(assert (= (and b!6477477 c!1186384) b!6477476))

(assert (= (and b!6477477 (not c!1186384)) b!6477478))

(assert (= (and b!6477476 res!2659684) b!6477473))

(assert (= (and b!6477478 (not res!2659682)) b!6477474))

(assert (= (and b!6477474 res!2659681) b!6477471))

(assert (= (or b!6477473 b!6477471) bm!560492))

(assert (= (or b!6477476 b!6477474) bm!560491))

(assert (= (or b!6477475 bm!560492) bm!560493))

(declare-fun m!7265770 () Bool)

(assert (=> b!6477470 m!7265770))

(declare-fun m!7265772 () Bool)

(assert (=> bm!560491 m!7265772))

(declare-fun m!7265774 () Bool)

(assert (=> bm!560493 m!7265774))

(assert (=> d!2032107 d!2032177))

(declare-fun d!2032179 () Bool)

(assert (=> d!2032179 (= (isEmpty!37424 lt!2385673) ((_ is Nil!65240) lt!2385673))))

(assert (=> d!2031869 d!2032179))

(assert (=> d!2031869 d!2032177))

(declare-fun d!2032181 () Bool)

(declare-fun e!3926361 () Bool)

(assert (=> d!2032181 e!3926361))

(declare-fun res!2659687 () Bool)

(assert (=> d!2032181 (=> (not res!2659687) (not e!3926361))))

(declare-fun lt!2385875 () List!65364)

(assert (=> d!2032181 (= res!2659687 (= (content!12410 lt!2385875) ((_ map or) (content!12410 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))) (content!12410 (t!378988 (_1!36637 lt!2385678))))))))

(declare-fun e!3926360 () List!65364)

(assert (=> d!2032181 (= lt!2385875 e!3926360)))

(declare-fun c!1186386 () Bool)

(assert (=> d!2032181 (= c!1186386 ((_ is Nil!65240) (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))))))

(assert (=> d!2032181 (= (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (t!378988 (_1!36637 lt!2385678))) lt!2385875)))

(declare-fun b!6477481 () Bool)

(declare-fun res!2659686 () Bool)

(assert (=> b!6477481 (=> (not res!2659686) (not e!3926361))))

(assert (=> b!6477481 (= res!2659686 (= (size!40407 lt!2385875) (+ (size!40407 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))) (size!40407 (t!378988 (_1!36637 lt!2385678))))))))

(declare-fun b!6477480 () Bool)

(assert (=> b!6477480 (= e!3926360 (Cons!65240 (h!71688 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))) (++!14423 (t!378988 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))) (t!378988 (_1!36637 lt!2385678)))))))

(declare-fun b!6477482 () Bool)

(assert (=> b!6477482 (= e!3926361 (or (not (= (t!378988 (_1!36637 lt!2385678)) Nil!65240)) (= lt!2385875 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)))))))

(declare-fun b!6477479 () Bool)

(assert (=> b!6477479 (= e!3926360 (t!378988 (_1!36637 lt!2385678)))))

(assert (= (and d!2032181 c!1186386) b!6477479))

(assert (= (and d!2032181 (not c!1186386)) b!6477480))

(assert (= (and d!2032181 res!2659687) b!6477481))

(assert (= (and b!6477481 res!2659686) b!6477482))

(declare-fun m!7265776 () Bool)

(assert (=> d!2032181 m!7265776))

(assert (=> d!2032181 m!7265712))

(declare-fun m!7265778 () Bool)

(assert (=> d!2032181 m!7265778))

(declare-fun m!7265780 () Bool)

(assert (=> d!2032181 m!7265780))

(declare-fun m!7265782 () Bool)

(assert (=> b!6477481 m!7265782))

(assert (=> b!6477481 m!7265712))

(declare-fun m!7265784 () Bool)

(assert (=> b!6477481 m!7265784))

(declare-fun m!7265786 () Bool)

(assert (=> b!6477481 m!7265786))

(declare-fun m!7265788 () Bool)

(assert (=> b!6477480 m!7265788))

(assert (=> b!6477401 d!2032181))

(declare-fun d!2032183 () Bool)

(declare-fun e!3926363 () Bool)

(assert (=> d!2032183 e!3926363))

(declare-fun res!2659689 () Bool)

(assert (=> d!2032183 (=> (not res!2659689) (not e!3926363))))

(declare-fun lt!2385876 () List!65364)

(assert (=> d!2032183 (= res!2659689 (= (content!12410 lt!2385876) ((_ map or) (content!12410 Nil!65240) (content!12410 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)))))))

(declare-fun e!3926362 () List!65364)

(assert (=> d!2032183 (= lt!2385876 e!3926362)))

(declare-fun c!1186387 () Bool)

(assert (=> d!2032183 (= c!1186387 ((_ is Nil!65240) Nil!65240))))

(assert (=> d!2032183 (= (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) lt!2385876)))

(declare-fun b!6477485 () Bool)

(declare-fun res!2659688 () Bool)

(assert (=> b!6477485 (=> (not res!2659688) (not e!3926363))))

(assert (=> b!6477485 (= res!2659688 (= (size!40407 lt!2385876) (+ (size!40407 Nil!65240) (size!40407 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)))))))

(declare-fun b!6477484 () Bool)

(assert (=> b!6477484 (= e!3926362 (Cons!65240 (h!71688 Nil!65240) (++!14423 (t!378988 Nil!65240) (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))))))

(declare-fun b!6477486 () Bool)

(assert (=> b!6477486 (= e!3926363 (or (not (= (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240) Nil!65240)) (= lt!2385876 Nil!65240)))))

(declare-fun b!6477483 () Bool)

(assert (=> b!6477483 (= e!3926362 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))))

(assert (= (and d!2032183 c!1186387) b!6477483))

(assert (= (and d!2032183 (not c!1186387)) b!6477484))

(assert (= (and d!2032183 res!2659689) b!6477485))

(assert (= (and b!6477485 res!2659688) b!6477486))

(declare-fun m!7265790 () Bool)

(assert (=> d!2032183 m!7265790))

(declare-fun m!7265792 () Bool)

(assert (=> d!2032183 m!7265792))

(declare-fun m!7265794 () Bool)

(assert (=> d!2032183 m!7265794))

(declare-fun m!7265796 () Bool)

(assert (=> b!6477485 m!7265796))

(declare-fun m!7265798 () Bool)

(assert (=> b!6477485 m!7265798))

(declare-fun m!7265800 () Bool)

(assert (=> b!6477485 m!7265800))

(declare-fun m!7265802 () Bool)

(assert (=> b!6477484 m!7265802))

(assert (=> b!6477401 d!2032183))

(declare-fun d!2032185 () Bool)

(assert (=> d!2032185 (= (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (t!378988 (_1!36637 lt!2385678))) (_1!36637 lt!2385678))))

(declare-fun lt!2385879 () Unit!158751)

(declare-fun choose!48022 (List!65364 C!32980 List!65364 List!65364) Unit!158751)

(assert (=> d!2032185 (= lt!2385879 (choose!48022 Nil!65240 (h!71688 (_1!36637 lt!2385678)) (t!378988 (_1!36637 lt!2385678)) (_1!36637 lt!2385678)))))

(assert (=> d!2032185 (= (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) (t!378988 (_1!36637 lt!2385678)))) (_1!36637 lt!2385678))))

(assert (=> d!2032185 (= (lemmaMoveElementToOtherListKeepsConcatEq!2511 Nil!65240 (h!71688 (_1!36637 lt!2385678)) (t!378988 (_1!36637 lt!2385678)) (_1!36637 lt!2385678)) lt!2385879)))

(declare-fun bs!1642624 () Bool)

(assert (= bs!1642624 d!2032185))

(assert (=> bs!1642624 m!7265712))

(assert (=> bs!1642624 m!7265712))

(assert (=> bs!1642624 m!7265714))

(declare-fun m!7265804 () Bool)

(assert (=> bs!1642624 m!7265804))

(declare-fun m!7265806 () Bool)

(assert (=> bs!1642624 m!7265806))

(assert (=> b!6477401 d!2032185))

(declare-fun b!6477487 () Bool)

(declare-fun e!3926367 () Bool)

(assert (=> b!6477487 (= e!3926367 (matchR!8538 lt!2385664 (t!378988 (_1!36637 lt!2385678))))))

(declare-fun b!6477488 () Bool)

(declare-fun lt!2385882 () Unit!158751)

(declare-fun lt!2385881 () Unit!158751)

(assert (=> b!6477488 (= lt!2385882 lt!2385881)))

(assert (=> b!6477488 (= (++!14423 (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (Cons!65240 (h!71688 (t!378988 (_1!36637 lt!2385678))) Nil!65240)) (t!378988 (t!378988 (_1!36637 lt!2385678)))) (_1!36637 lt!2385678))))

(assert (=> b!6477488 (= lt!2385881 (lemmaMoveElementToOtherListKeepsConcatEq!2511 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (h!71688 (t!378988 (_1!36637 lt!2385678))) (t!378988 (t!378988 (_1!36637 lt!2385678))) (_1!36637 lt!2385678)))))

(declare-fun e!3926366 () Option!16246)

(assert (=> b!6477488 (= e!3926366 (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (Cons!65240 (h!71688 (t!378988 (_1!36637 lt!2385678))) Nil!65240)) (t!378988 (t!378988 (_1!36637 lt!2385678))) (_1!36637 lt!2385678)))))

(declare-fun b!6477489 () Bool)

(declare-fun res!2659694 () Bool)

(declare-fun e!3926368 () Bool)

(assert (=> b!6477489 (=> (not res!2659694) (not e!3926368))))

(declare-fun lt!2385880 () Option!16246)

(assert (=> b!6477489 (= res!2659694 (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (_1!36637 (get!22616 lt!2385880))))))

(declare-fun b!6477490 () Bool)

(declare-fun e!3926364 () Option!16246)

(assert (=> b!6477490 (= e!3926364 e!3926366)))

(declare-fun c!1186389 () Bool)

(assert (=> b!6477490 (= c!1186389 ((_ is Nil!65240) (t!378988 (_1!36637 lt!2385678))))))

(declare-fun d!2032187 () Bool)

(declare-fun e!3926365 () Bool)

(assert (=> d!2032187 e!3926365))

(declare-fun res!2659690 () Bool)

(assert (=> d!2032187 (=> res!2659690 e!3926365)))

(assert (=> d!2032187 (= res!2659690 e!3926368)))

(declare-fun res!2659692 () Bool)

(assert (=> d!2032187 (=> (not res!2659692) (not e!3926368))))

(assert (=> d!2032187 (= res!2659692 (isDefined!12949 lt!2385880))))

(assert (=> d!2032187 (= lt!2385880 e!3926364)))

(declare-fun c!1186388 () Bool)

(assert (=> d!2032187 (= c!1186388 e!3926367)))

(declare-fun res!2659691 () Bool)

(assert (=> d!2032187 (=> (not res!2659691) (not e!3926367))))

(assert (=> d!2032187 (= res!2659691 (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240))))))

(assert (=> d!2032187 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032187 (= (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (t!378988 (_1!36637 lt!2385678)) (_1!36637 lt!2385678)) lt!2385880)))

(declare-fun b!6477491 () Bool)

(declare-fun res!2659693 () Bool)

(assert (=> b!6477491 (=> (not res!2659693) (not e!3926368))))

(assert (=> b!6477491 (= res!2659693 (matchR!8538 lt!2385664 (_2!36637 (get!22616 lt!2385880))))))

(declare-fun b!6477492 () Bool)

(assert (=> b!6477492 (= e!3926364 (Some!16245 (tuple2!66669 (++!14423 Nil!65240 (Cons!65240 (h!71688 (_1!36637 lt!2385678)) Nil!65240)) (t!378988 (_1!36637 lt!2385678)))))))

(declare-fun b!6477493 () Bool)

(assert (=> b!6477493 (= e!3926365 (not (isDefined!12949 lt!2385880)))))

(declare-fun b!6477494 () Bool)

(assert (=> b!6477494 (= e!3926368 (= (++!14423 (_1!36637 (get!22616 lt!2385880)) (_2!36637 (get!22616 lt!2385880))) (_1!36637 lt!2385678)))))

(declare-fun b!6477495 () Bool)

(assert (=> b!6477495 (= e!3926366 None!16245)))

(assert (= (and d!2032187 res!2659691) b!6477487))

(assert (= (and d!2032187 c!1186388) b!6477492))

(assert (= (and d!2032187 (not c!1186388)) b!6477490))

(assert (= (and b!6477490 c!1186389) b!6477495))

(assert (= (and b!6477490 (not c!1186389)) b!6477488))

(assert (= (and d!2032187 res!2659692) b!6477489))

(assert (= (and b!6477489 res!2659694) b!6477491))

(assert (= (and b!6477491 res!2659693) b!6477494))

(assert (= (and d!2032187 (not res!2659690)) b!6477493))

(assert (=> b!6477488 m!7265712))

(declare-fun m!7265808 () Bool)

(assert (=> b!6477488 m!7265808))

(assert (=> b!6477488 m!7265808))

(declare-fun m!7265810 () Bool)

(assert (=> b!6477488 m!7265810))

(assert (=> b!6477488 m!7265712))

(declare-fun m!7265812 () Bool)

(assert (=> b!6477488 m!7265812))

(assert (=> b!6477488 m!7265808))

(declare-fun m!7265814 () Bool)

(assert (=> b!6477488 m!7265814))

(declare-fun m!7265816 () Bool)

(assert (=> b!6477494 m!7265816))

(declare-fun m!7265818 () Bool)

(assert (=> b!6477494 m!7265818))

(declare-fun m!7265820 () Bool)

(assert (=> b!6477493 m!7265820))

(assert (=> d!2032187 m!7265820))

(assert (=> d!2032187 m!7265712))

(declare-fun m!7265822 () Bool)

(assert (=> d!2032187 m!7265822))

(assert (=> d!2032187 m!7264888))

(assert (=> b!6477489 m!7265816))

(declare-fun m!7265824 () Bool)

(assert (=> b!6477489 m!7265824))

(assert (=> b!6477491 m!7265816))

(declare-fun m!7265826 () Bool)

(assert (=> b!6477491 m!7265826))

(declare-fun m!7265828 () Bool)

(assert (=> b!6477487 m!7265828))

(assert (=> b!6477401 d!2032187))

(declare-fun b!6477496 () Bool)

(declare-fun e!3926375 () Bool)

(assert (=> b!6477496 (= e!3926375 (not (= (head!13189 (tail!12274 (_1!36637 lt!2385678))) (c!1186089 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678)))))))))

(declare-fun b!6477497 () Bool)

(declare-fun res!2659697 () Bool)

(declare-fun e!3926369 () Bool)

(assert (=> b!6477497 (=> res!2659697 e!3926369)))

(assert (=> b!6477497 (= res!2659697 (not ((_ is ElementMatch!16355) (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678))))))))

(declare-fun e!3926372 () Bool)

(assert (=> b!6477497 (= e!3926372 e!3926369)))

(declare-fun b!6477498 () Bool)

(declare-fun e!3926374 () Bool)

(declare-fun lt!2385883 () Bool)

(declare-fun call!560499 () Bool)

(assert (=> b!6477498 (= e!3926374 (= lt!2385883 call!560499))))

(declare-fun b!6477499 () Bool)

(declare-fun e!3926370 () Bool)

(assert (=> b!6477499 (= e!3926370 (= (head!13189 (tail!12274 (_1!36637 lt!2385678))) (c!1186089 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678))))))))

(declare-fun b!6477500 () Bool)

(declare-fun res!2659700 () Bool)

(assert (=> b!6477500 (=> (not res!2659700) (not e!3926370))))

(assert (=> b!6477500 (= res!2659700 (not call!560499))))

(declare-fun d!2032189 () Bool)

(assert (=> d!2032189 e!3926374))

(declare-fun c!1186390 () Bool)

(assert (=> d!2032189 (= c!1186390 ((_ is EmptyExpr!16355) (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678)))))))

(declare-fun e!3926373 () Bool)

(assert (=> d!2032189 (= lt!2385883 e!3926373)))

(declare-fun c!1186392 () Bool)

(assert (=> d!2032189 (= c!1186392 (isEmpty!37424 (tail!12274 (_1!36637 lt!2385678))))))

(assert (=> d!2032189 (validRegex!8091 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678))))))

(assert (=> d!2032189 (= (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678))) (tail!12274 (_1!36637 lt!2385678))) lt!2385883)))

(declare-fun b!6477501 () Bool)

(declare-fun res!2659702 () Bool)

(assert (=> b!6477501 (=> res!2659702 e!3926369)))

(assert (=> b!6477501 (= res!2659702 e!3926370)))

(declare-fun res!2659695 () Bool)

(assert (=> b!6477501 (=> (not res!2659695) (not e!3926370))))

(assert (=> b!6477501 (= res!2659695 lt!2385883)))

(declare-fun b!6477502 () Bool)

(declare-fun e!3926371 () Bool)

(assert (=> b!6477502 (= e!3926369 e!3926371)))

(declare-fun res!2659701 () Bool)

(assert (=> b!6477502 (=> (not res!2659701) (not e!3926371))))

(assert (=> b!6477502 (= res!2659701 (not lt!2385883))))

(declare-fun b!6477503 () Bool)

(declare-fun res!2659698 () Bool)

(assert (=> b!6477503 (=> res!2659698 e!3926375)))

(assert (=> b!6477503 (= res!2659698 (not (isEmpty!37424 (tail!12274 (tail!12274 (_1!36637 lt!2385678))))))))

(declare-fun b!6477504 () Bool)

(assert (=> b!6477504 (= e!3926373 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678))) (head!13189 (tail!12274 (_1!36637 lt!2385678)))) (tail!12274 (tail!12274 (_1!36637 lt!2385678)))))))

(declare-fun bm!560494 () Bool)

(assert (=> bm!560494 (= call!560499 (isEmpty!37424 (tail!12274 (_1!36637 lt!2385678))))))

(declare-fun b!6477505 () Bool)

(assert (=> b!6477505 (= e!3926371 e!3926375)))

(declare-fun res!2659699 () Bool)

(assert (=> b!6477505 (=> res!2659699 e!3926375)))

(assert (=> b!6477505 (= res!2659699 call!560499)))

(declare-fun b!6477506 () Bool)

(assert (=> b!6477506 (= e!3926374 e!3926372)))

(declare-fun c!1186391 () Bool)

(assert (=> b!6477506 (= c!1186391 ((_ is EmptyLang!16355) (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678)))))))

(declare-fun b!6477507 () Bool)

(declare-fun res!2659696 () Bool)

(assert (=> b!6477507 (=> (not res!2659696) (not e!3926370))))

(assert (=> b!6477507 (= res!2659696 (isEmpty!37424 (tail!12274 (tail!12274 (_1!36637 lt!2385678)))))))

(declare-fun b!6477508 () Bool)

(assert (=> b!6477508 (= e!3926373 (nullable!6348 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678)))))))

(declare-fun b!6477509 () Bool)

(assert (=> b!6477509 (= e!3926372 (not lt!2385883))))

(assert (= (and d!2032189 c!1186392) b!6477508))

(assert (= (and d!2032189 (not c!1186392)) b!6477504))

(assert (= (and d!2032189 c!1186390) b!6477498))

(assert (= (and d!2032189 (not c!1186390)) b!6477506))

(assert (= (and b!6477506 c!1186391) b!6477509))

(assert (= (and b!6477506 (not c!1186391)) b!6477497))

(assert (= (and b!6477497 (not res!2659697)) b!6477501))

(assert (= (and b!6477501 res!2659695) b!6477500))

(assert (= (and b!6477500 res!2659700) b!6477507))

(assert (= (and b!6477507 res!2659696) b!6477499))

(assert (= (and b!6477501 (not res!2659702)) b!6477502))

(assert (= (and b!6477502 res!2659701) b!6477505))

(assert (= (and b!6477505 (not res!2659699)) b!6477503))

(assert (= (and b!6477503 (not res!2659698)) b!6477496))

(assert (= (or b!6477498 b!6477505 b!6477500) bm!560494))

(assert (=> d!2032189 m!7265578))

(assert (=> d!2032189 m!7265582))

(assert (=> d!2032189 m!7265576))

(declare-fun m!7265830 () Bool)

(assert (=> d!2032189 m!7265830))

(assert (=> b!6477504 m!7265578))

(declare-fun m!7265832 () Bool)

(assert (=> b!6477504 m!7265832))

(assert (=> b!6477504 m!7265576))

(assert (=> b!6477504 m!7265832))

(declare-fun m!7265834 () Bool)

(assert (=> b!6477504 m!7265834))

(assert (=> b!6477504 m!7265578))

(declare-fun m!7265836 () Bool)

(assert (=> b!6477504 m!7265836))

(assert (=> b!6477504 m!7265834))

(assert (=> b!6477504 m!7265836))

(declare-fun m!7265838 () Bool)

(assert (=> b!6477504 m!7265838))

(assert (=> bm!560494 m!7265578))

(assert (=> bm!560494 m!7265582))

(assert (=> b!6477503 m!7265578))

(assert (=> b!6477503 m!7265836))

(assert (=> b!6477503 m!7265836))

(declare-fun m!7265840 () Bool)

(assert (=> b!6477503 m!7265840))

(assert (=> b!6477499 m!7265578))

(assert (=> b!6477499 m!7265832))

(assert (=> b!6477507 m!7265578))

(assert (=> b!6477507 m!7265836))

(assert (=> b!6477507 m!7265836))

(assert (=> b!6477507 m!7265840))

(assert (=> b!6477496 m!7265578))

(assert (=> b!6477496 m!7265832))

(assert (=> b!6477508 m!7265576))

(declare-fun m!7265842 () Bool)

(assert (=> b!6477508 m!7265842))

(assert (=> b!6477257 d!2032189))

(declare-fun b!6477530 () Bool)

(declare-fun e!3926386 () Regex!16355)

(declare-fun call!560510 () Regex!16355)

(declare-fun call!560509 () Regex!16355)

(assert (=> b!6477530 (= e!3926386 (Union!16355 (Concat!25200 call!560509 (regTwo!33222 lt!2385664)) call!560510))))

(declare-fun bm!560503 () Bool)

(declare-fun call!560511 () Regex!16355)

(assert (=> bm!560503 (= call!560510 call!560511)))

(declare-fun b!6477531 () Bool)

(declare-fun c!1186406 () Bool)

(assert (=> b!6477531 (= c!1186406 (nullable!6348 (regOne!33222 lt!2385664)))))

(declare-fun e!3926388 () Regex!16355)

(assert (=> b!6477531 (= e!3926388 e!3926386)))

(declare-fun c!1186405 () Bool)

(declare-fun c!1186403 () Bool)

(declare-fun call!560508 () Regex!16355)

(declare-fun bm!560504 () Bool)

(assert (=> bm!560504 (= call!560508 (derivativeStep!5053 (ite c!1186403 (regTwo!33223 lt!2385664) (ite c!1186405 (reg!16684 lt!2385664) (regOne!33222 lt!2385664))) (head!13189 (_1!36637 lt!2385678))))))

(declare-fun b!6477532 () Bool)

(assert (=> b!6477532 (= c!1186403 ((_ is Union!16355) lt!2385664))))

(declare-fun e!3926389 () Regex!16355)

(declare-fun e!3926390 () Regex!16355)

(assert (=> b!6477532 (= e!3926389 e!3926390)))

(declare-fun b!6477533 () Bool)

(assert (=> b!6477533 (= e!3926389 (ite (= (head!13189 (_1!36637 lt!2385678)) (c!1186089 lt!2385664)) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560505 () Bool)

(assert (=> bm!560505 (= call!560509 call!560508)))

(declare-fun b!6477534 () Bool)

(assert (=> b!6477534 (= e!3926390 e!3926388)))

(assert (=> b!6477534 (= c!1186405 ((_ is Star!16355) lt!2385664))))

(declare-fun b!6477535 () Bool)

(assert (=> b!6477535 (= e!3926388 (Concat!25200 call!560509 lt!2385664))))

(declare-fun bm!560506 () Bool)

(assert (=> bm!560506 (= call!560511 (derivativeStep!5053 (ite c!1186403 (regOne!33223 lt!2385664) (ite c!1186406 (regTwo!33222 lt!2385664) (regOne!33222 lt!2385664))) (head!13189 (_1!36637 lt!2385678))))))

(declare-fun b!6477536 () Bool)

(assert (=> b!6477536 (= e!3926386 (Union!16355 (Concat!25200 call!560510 (regTwo!33222 lt!2385664)) EmptyLang!16355))))

(declare-fun b!6477537 () Bool)

(assert (=> b!6477537 (= e!3926390 (Union!16355 call!560511 call!560508))))

(declare-fun d!2032191 () Bool)

(declare-fun lt!2385886 () Regex!16355)

(assert (=> d!2032191 (validRegex!8091 lt!2385886)))

(declare-fun e!3926387 () Regex!16355)

(assert (=> d!2032191 (= lt!2385886 e!3926387)))

(declare-fun c!1186407 () Bool)

(assert (=> d!2032191 (= c!1186407 (or ((_ is EmptyExpr!16355) lt!2385664) ((_ is EmptyLang!16355) lt!2385664)))))

(assert (=> d!2032191 (validRegex!8091 lt!2385664)))

(assert (=> d!2032191 (= (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 lt!2385678))) lt!2385886)))

(declare-fun b!6477538 () Bool)

(assert (=> b!6477538 (= e!3926387 e!3926389)))

(declare-fun c!1186404 () Bool)

(assert (=> b!6477538 (= c!1186404 ((_ is ElementMatch!16355) lt!2385664))))

(declare-fun b!6477539 () Bool)

(assert (=> b!6477539 (= e!3926387 EmptyLang!16355)))

(assert (= (and d!2032191 c!1186407) b!6477539))

(assert (= (and d!2032191 (not c!1186407)) b!6477538))

(assert (= (and b!6477538 c!1186404) b!6477533))

(assert (= (and b!6477538 (not c!1186404)) b!6477532))

(assert (= (and b!6477532 c!1186403) b!6477537))

(assert (= (and b!6477532 (not c!1186403)) b!6477534))

(assert (= (and b!6477534 c!1186405) b!6477535))

(assert (= (and b!6477534 (not c!1186405)) b!6477531))

(assert (= (and b!6477531 c!1186406) b!6477530))

(assert (= (and b!6477531 (not c!1186406)) b!6477536))

(assert (= (or b!6477530 b!6477536) bm!560503))

(assert (= (or b!6477535 b!6477530) bm!560505))

(assert (= (or b!6477537 bm!560505) bm!560504))

(assert (= (or b!6477537 bm!560503) bm!560506))

(declare-fun m!7265844 () Bool)

(assert (=> b!6477531 m!7265844))

(assert (=> bm!560504 m!7265574))

(declare-fun m!7265846 () Bool)

(assert (=> bm!560504 m!7265846))

(assert (=> bm!560506 m!7265574))

(declare-fun m!7265848 () Bool)

(assert (=> bm!560506 m!7265848))

(declare-fun m!7265850 () Bool)

(assert (=> d!2032191 m!7265850))

(assert (=> d!2032191 m!7264892))

(assert (=> b!6477257 d!2032191))

(declare-fun d!2032193 () Bool)

(assert (=> d!2032193 (= (head!13189 (_1!36637 lt!2385678)) (h!71688 (_1!36637 lt!2385678)))))

(assert (=> b!6477257 d!2032193))

(declare-fun d!2032195 () Bool)

(assert (=> d!2032195 (= (tail!12274 (_1!36637 lt!2385678)) (t!378988 (_1!36637 lt!2385678)))))

(assert (=> b!6477257 d!2032195))

(assert (=> d!2031989 d!2031983))

(assert (=> d!2031989 d!2031979))

(declare-fun d!2032197 () Bool)

(assert (=> d!2032197 (= (matchR!8538 r!7292 s!2326) (matchRSpec!3456 r!7292 s!2326))))

(assert (=> d!2032197 true))

(declare-fun _$88!5164 () Unit!158751)

(assert (=> d!2032197 (= (choose!47999 r!7292 s!2326) _$88!5164)))

(declare-fun bs!1642625 () Bool)

(assert (= bs!1642625 d!2032197))

(assert (=> bs!1642625 m!7264564))

(assert (=> bs!1642625 m!7264562))

(assert (=> d!2031989 d!2032197))

(assert (=> d!2031989 d!2032077))

(declare-fun bs!1642626 () Bool)

(declare-fun b!6477546 () Bool)

(assert (= bs!1642626 (and b!6477546 d!2032127)))

(declare-fun lambda!358117 () Int)

(assert (=> bs!1642626 (= (and (= (reg!16684 (regOne!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regOne!33223 lt!2385664) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358117 lambda!358115))))

(declare-fun bs!1642627 () Bool)

(assert (= bs!1642627 (and b!6477546 d!2031923)))

(assert (=> bs!1642627 (not (= lambda!358117 lambda!358059))))

(declare-fun bs!1642628 () Bool)

(assert (= bs!1642628 (and b!6477546 d!2032125)))

(assert (=> bs!1642628 (not (= lambda!358117 lambda!358108))))

(declare-fun bs!1642629 () Bool)

(assert (= bs!1642629 (and b!6477546 b!6477031)))

(assert (=> bs!1642629 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33223 lt!2385664)) (reg!16684 r!7292)) (= (regOne!33223 lt!2385664) r!7292)) (= lambda!358117 lambda!358073))))

(declare-fun bs!1642630 () Bool)

(assert (= bs!1642630 (and b!6477546 b!6476331)))

(assert (=> bs!1642630 (not (= lambda!358117 lambda!358018))))

(declare-fun bs!1642631 () Bool)

(assert (= bs!1642631 (and b!6477546 d!2032155)))

(assert (=> bs!1642631 (not (= lambda!358117 lambda!358116))))

(declare-fun bs!1642632 () Bool)

(assert (= bs!1642632 (and b!6477546 b!6476300)))

(assert (=> bs!1642632 (not (= lambda!358117 lambda!358016))))

(declare-fun bs!1642633 () Bool)

(assert (= bs!1642633 (and b!6477546 b!6476519)))

(assert (=> bs!1642633 (not (= lambda!358117 lambda!358035))))

(declare-fun bs!1642634 () Bool)

(assert (= bs!1642634 (and b!6477546 b!6477297)))

(assert (=> bs!1642634 (= (and (= (reg!16684 (regOne!33223 lt!2385664)) (reg!16684 lt!2385664)) (= (regOne!33223 lt!2385664) lt!2385664)) (= lambda!358117 lambda!358103))))

(assert (=> bs!1642630 (not (= lambda!358117 lambda!358020))))

(declare-fun bs!1642635 () Bool)

(assert (= bs!1642635 (and b!6477546 d!2032041)))

(assert (=> bs!1642635 (not (= lambda!358117 lambda!358083))))

(assert (=> bs!1642632 (not (= lambda!358117 lambda!358017))))

(assert (=> bs!1642628 (not (= lambda!358117 lambda!358107))))

(declare-fun bs!1642636 () Bool)

(assert (= bs!1642636 (and b!6477546 b!6476517)))

(assert (=> bs!1642636 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33223 lt!2385664)) (reg!16684 lt!2385680)) (= (regOne!33223 lt!2385664) lt!2385680)) (= lambda!358117 lambda!358032))))

(assert (=> bs!1642627 (not (= lambda!358117 lambda!358062))))

(declare-fun bs!1642637 () Bool)

(assert (= bs!1642637 (and b!6477546 b!6476306)))

(assert (=> bs!1642637 (not (= lambda!358117 lambda!358014))))

(declare-fun bs!1642638 () Bool)

(assert (= bs!1642638 (and b!6477546 d!2032037)))

(assert (=> bs!1642638 (not (= lambda!358117 lambda!358082))))

(declare-fun bs!1642639 () Bool)

(assert (= bs!1642639 (and b!6477546 b!6477299)))

(assert (=> bs!1642639 (not (= lambda!358117 lambda!358105))))

(declare-fun bs!1642640 () Bool)

(assert (= bs!1642640 (and b!6477546 b!6477033)))

(assert (=> bs!1642640 (not (= lambda!358117 lambda!358075))))

(assert (=> bs!1642626 (not (= lambda!358117 lambda!358114))))

(assert (=> bs!1642637 (not (= lambda!358117 lambda!358013))))

(declare-fun bs!1642641 () Bool)

(assert (= bs!1642641 (and b!6477546 d!2031905)))

(assert (=> bs!1642641 (not (= lambda!358117 lambda!358052))))

(assert (=> bs!1642630 (= (and (= (reg!16684 (regOne!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regOne!33223 lt!2385664) lt!2385664)) (= lambda!358117 lambda!358019))))

(assert (=> bs!1642635 (not (= lambda!358117 lambda!358084))))

(assert (=> b!6477546 true))

(assert (=> b!6477546 true))

(declare-fun bs!1642642 () Bool)

(declare-fun b!6477548 () Bool)

(assert (= bs!1642642 (and b!6477548 d!2032127)))

(declare-fun lambda!358118 () Int)

(assert (=> bs!1642642 (not (= lambda!358118 lambda!358115))))

(declare-fun bs!1642643 () Bool)

(assert (= bs!1642643 (and b!6477548 d!2031923)))

(assert (=> bs!1642643 (not (= lambda!358118 lambda!358059))))

(declare-fun bs!1642644 () Bool)

(assert (= bs!1642644 (and b!6477548 d!2032125)))

(assert (=> bs!1642644 (= (and (= (regOne!33222 (regOne!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 lt!2385664)) lt!2385664)) (= lambda!358118 lambda!358108))))

(declare-fun bs!1642645 () Bool)

(assert (= bs!1642645 (and b!6477548 b!6477031)))

(assert (=> bs!1642645 (not (= lambda!358118 lambda!358073))))

(declare-fun bs!1642646 () Bool)

(assert (= bs!1642646 (and b!6477548 b!6476331)))

(assert (=> bs!1642646 (not (= lambda!358118 lambda!358018))))

(declare-fun bs!1642647 () Bool)

(assert (= bs!1642647 (and b!6477548 d!2032155)))

(assert (=> bs!1642647 (not (= lambda!358118 lambda!358116))))

(declare-fun bs!1642648 () Bool)

(assert (= bs!1642648 (and b!6477548 b!6476300)))

(assert (=> bs!1642648 (not (= lambda!358118 lambda!358016))))

(declare-fun bs!1642649 () Bool)

(assert (= bs!1642649 (and b!6477548 b!6477546)))

(assert (=> bs!1642649 (not (= lambda!358118 lambda!358117))))

(declare-fun bs!1642650 () Bool)

(assert (= bs!1642650 (and b!6477548 b!6476519)))

(assert (=> bs!1642650 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regOne!33223 lt!2385664)) (regOne!33222 lt!2385680)) (= (regTwo!33222 (regOne!33223 lt!2385664)) (regTwo!33222 lt!2385680))) (= lambda!358118 lambda!358035))))

(declare-fun bs!1642651 () Bool)

(assert (= bs!1642651 (and b!6477548 b!6477297)))

(assert (=> bs!1642651 (not (= lambda!358118 lambda!358103))))

(assert (=> bs!1642646 (= (and (= (regOne!33222 (regOne!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 lt!2385664)) lt!2385664)) (= lambda!358118 lambda!358020))))

(declare-fun bs!1642652 () Bool)

(assert (= bs!1642652 (and b!6477548 d!2032041)))

(assert (=> bs!1642652 (not (= lambda!358118 lambda!358083))))

(assert (=> bs!1642648 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regOne!33223 lt!2385664)) lt!2385664) (= (regTwo!33222 (regOne!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358118 lambda!358017))))

(assert (=> bs!1642644 (not (= lambda!358118 lambda!358107))))

(declare-fun bs!1642653 () Bool)

(assert (= bs!1642653 (and b!6477548 b!6476517)))

(assert (=> bs!1642653 (not (= lambda!358118 lambda!358032))))

(assert (=> bs!1642643 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regOne!33223 lt!2385664)) lt!2385664) (= (regTwo!33222 (regOne!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358118 lambda!358062))))

(declare-fun bs!1642654 () Bool)

(assert (= bs!1642654 (and b!6477548 b!6476306)))

(assert (=> bs!1642654 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regOne!33223 lt!2385664)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358118 lambda!358014))))

(declare-fun bs!1642655 () Bool)

(assert (= bs!1642655 (and b!6477548 d!2032037)))

(assert (=> bs!1642655 (not (= lambda!358118 lambda!358082))))

(declare-fun bs!1642656 () Bool)

(assert (= bs!1642656 (and b!6477548 b!6477299)))

(assert (=> bs!1642656 (= (and (= (regOne!33222 (regOne!33223 lt!2385664)) (regOne!33222 lt!2385664)) (= (regTwo!33222 (regOne!33223 lt!2385664)) (regTwo!33222 lt!2385664))) (= lambda!358118 lambda!358105))))

(declare-fun bs!1642657 () Bool)

(assert (= bs!1642657 (and b!6477548 b!6477033)))

(assert (=> bs!1642657 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regOne!33223 lt!2385664)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358118 lambda!358075))))

(assert (=> bs!1642642 (not (= lambda!358118 lambda!358114))))

(assert (=> bs!1642654 (not (= lambda!358118 lambda!358013))))

(declare-fun bs!1642658 () Bool)

(assert (= bs!1642658 (and b!6477548 d!2031905)))

(assert (=> bs!1642658 (not (= lambda!358118 lambda!358052))))

(assert (=> bs!1642646 (not (= lambda!358118 lambda!358019))))

(assert (=> bs!1642652 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regOne!33223 lt!2385664)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358118 lambda!358084))))

(assert (=> b!6477548 true))

(assert (=> b!6477548 true))

(declare-fun b!6477540 () Bool)

(declare-fun res!2659704 () Bool)

(declare-fun e!3926397 () Bool)

(assert (=> b!6477540 (=> res!2659704 e!3926397)))

(declare-fun call!560513 () Bool)

(assert (=> b!6477540 (= res!2659704 call!560513)))

(declare-fun e!3926391 () Bool)

(assert (=> b!6477540 (= e!3926391 e!3926397)))

(declare-fun b!6477541 () Bool)

(declare-fun e!3926394 () Bool)

(assert (=> b!6477541 (= e!3926394 e!3926391)))

(declare-fun c!1186411 () Bool)

(assert (=> b!6477541 (= c!1186411 ((_ is Star!16355) (regOne!33223 lt!2385664)))))

(declare-fun b!6477542 () Bool)

(declare-fun c!1186410 () Bool)

(assert (=> b!6477542 (= c!1186410 ((_ is Union!16355) (regOne!33223 lt!2385664)))))

(declare-fun e!3926395 () Bool)

(assert (=> b!6477542 (= e!3926395 e!3926394)))

(declare-fun b!6477543 () Bool)

(declare-fun c!1186409 () Bool)

(assert (=> b!6477543 (= c!1186409 ((_ is ElementMatch!16355) (regOne!33223 lt!2385664)))))

(declare-fun e!3926392 () Bool)

(assert (=> b!6477543 (= e!3926392 e!3926395)))

(declare-fun b!6477544 () Bool)

(declare-fun e!3926393 () Bool)

(assert (=> b!6477544 (= e!3926393 call!560513)))

(declare-fun b!6477545 () Bool)

(assert (=> b!6477545 (= e!3926393 e!3926392)))

(declare-fun res!2659703 () Bool)

(assert (=> b!6477545 (= res!2659703 (not ((_ is EmptyLang!16355) (regOne!33223 lt!2385664))))))

(assert (=> b!6477545 (=> (not res!2659703) (not e!3926392))))

(declare-fun d!2032199 () Bool)

(declare-fun c!1186408 () Bool)

(assert (=> d!2032199 (= c!1186408 ((_ is EmptyExpr!16355) (regOne!33223 lt!2385664)))))

(assert (=> d!2032199 (= (matchRSpec!3456 (regOne!33223 lt!2385664) (_1!36637 lt!2385678)) e!3926393)))

(declare-fun call!560512 () Bool)

(assert (=> b!6477546 (= e!3926397 call!560512)))

(declare-fun bm!560507 () Bool)

(assert (=> bm!560507 (= call!560513 (isEmpty!37424 (_1!36637 lt!2385678)))))

(declare-fun b!6477547 () Bool)

(declare-fun e!3926396 () Bool)

(assert (=> b!6477547 (= e!3926394 e!3926396)))

(declare-fun res!2659705 () Bool)

(assert (=> b!6477547 (= res!2659705 (matchRSpec!3456 (regOne!33223 (regOne!33223 lt!2385664)) (_1!36637 lt!2385678)))))

(assert (=> b!6477547 (=> res!2659705 e!3926396)))

(assert (=> b!6477548 (= e!3926391 call!560512)))

(declare-fun bm!560508 () Bool)

(assert (=> bm!560508 (= call!560512 (Exists!3425 (ite c!1186411 lambda!358117 lambda!358118)))))

(declare-fun b!6477549 () Bool)

(assert (=> b!6477549 (= e!3926395 (= (_1!36637 lt!2385678) (Cons!65240 (c!1186089 (regOne!33223 lt!2385664)) Nil!65240)))))

(declare-fun b!6477550 () Bool)

(assert (=> b!6477550 (= e!3926396 (matchRSpec!3456 (regTwo!33223 (regOne!33223 lt!2385664)) (_1!36637 lt!2385678)))))

(assert (= (and d!2032199 c!1186408) b!6477544))

(assert (= (and d!2032199 (not c!1186408)) b!6477545))

(assert (= (and b!6477545 res!2659703) b!6477543))

(assert (= (and b!6477543 c!1186409) b!6477549))

(assert (= (and b!6477543 (not c!1186409)) b!6477542))

(assert (= (and b!6477542 c!1186410) b!6477547))

(assert (= (and b!6477542 (not c!1186410)) b!6477541))

(assert (= (and b!6477547 (not res!2659705)) b!6477550))

(assert (= (and b!6477541 c!1186411) b!6477540))

(assert (= (and b!6477541 (not c!1186411)) b!6477548))

(assert (= (and b!6477540 (not res!2659704)) b!6477546))

(assert (= (or b!6477546 b!6477548) bm!560508))

(assert (= (or b!6477544 b!6477540) bm!560507))

(assert (=> bm!560507 m!7264590))

(declare-fun m!7265852 () Bool)

(assert (=> b!6477547 m!7265852))

(declare-fun m!7265854 () Bool)

(assert (=> bm!560508 m!7265854))

(declare-fun m!7265856 () Bool)

(assert (=> b!6477550 m!7265856))

(assert (=> b!6477298 d!2032199))

(declare-fun d!2032201 () Bool)

(assert (=> d!2032201 (= (nullable!6348 (h!71689 (exprs!6239 lt!2385688))) (nullableFct!2287 (h!71689 (exprs!6239 lt!2385688))))))

(declare-fun bs!1642659 () Bool)

(assert (= bs!1642659 d!2032201))

(declare-fun m!7265858 () Bool)

(assert (=> bs!1642659 m!7265858))

(assert (=> b!6477012 d!2032201))

(declare-fun d!2032203 () Bool)

(assert (=> d!2032203 true))

(assert (=> d!2032203 true))

(declare-fun res!2659708 () Bool)

(assert (=> d!2032203 (= (choose!48008 lambda!358017) res!2659708)))

(assert (=> d!2031955 d!2032203))

(declare-fun d!2032205 () Bool)

(assert (=> d!2032205 (= (head!13190 (exprs!6239 (h!71690 zl!343))) (h!71689 (exprs!6239 (h!71690 zl!343))))))

(assert (=> b!6476708 d!2032205))

(declare-fun d!2032207 () Bool)

(assert (=> d!2032207 (= (isDefined!12949 lt!2385866) (not (isEmpty!37425 lt!2385866)))))

(declare-fun bs!1642660 () Bool)

(assert (= bs!1642660 d!2032207))

(declare-fun m!7265860 () Bool)

(assert (=> bs!1642660 m!7265860))

(assert (=> d!2032147 d!2032207))

(declare-fun b!6477551 () Bool)

(declare-fun e!3926404 () Bool)

(assert (=> b!6477551 (= e!3926404 (not (= (head!13189 Nil!65240) (c!1186089 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun b!6477552 () Bool)

(declare-fun res!2659711 () Bool)

(declare-fun e!3926398 () Bool)

(assert (=> b!6477552 (=> res!2659711 e!3926398)))

(assert (=> b!6477552 (= res!2659711 (not ((_ is ElementMatch!16355) (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun e!3926401 () Bool)

(assert (=> b!6477552 (= e!3926401 e!3926398)))

(declare-fun b!6477553 () Bool)

(declare-fun e!3926403 () Bool)

(declare-fun lt!2385887 () Bool)

(declare-fun call!560514 () Bool)

(assert (=> b!6477553 (= e!3926403 (= lt!2385887 call!560514))))

(declare-fun b!6477554 () Bool)

(declare-fun e!3926399 () Bool)

(assert (=> b!6477554 (= e!3926399 (= (head!13189 Nil!65240) (c!1186089 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6477555 () Bool)

(declare-fun res!2659714 () Bool)

(assert (=> b!6477555 (=> (not res!2659714) (not e!3926399))))

(assert (=> b!6477555 (= res!2659714 (not call!560514))))

(declare-fun d!2032209 () Bool)

(assert (=> d!2032209 e!3926403))

(declare-fun c!1186412 () Bool)

(assert (=> d!2032209 (= c!1186412 ((_ is EmptyExpr!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun e!3926402 () Bool)

(assert (=> d!2032209 (= lt!2385887 e!3926402)))

(declare-fun c!1186414 () Bool)

(assert (=> d!2032209 (= c!1186414 (isEmpty!37424 Nil!65240))))

(assert (=> d!2032209 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032209 (= (matchR!8538 (reg!16684 (regOne!33222 r!7292)) Nil!65240) lt!2385887)))

(declare-fun b!6477556 () Bool)

(declare-fun res!2659716 () Bool)

(assert (=> b!6477556 (=> res!2659716 e!3926398)))

(assert (=> b!6477556 (= res!2659716 e!3926399)))

(declare-fun res!2659709 () Bool)

(assert (=> b!6477556 (=> (not res!2659709) (not e!3926399))))

(assert (=> b!6477556 (= res!2659709 lt!2385887)))

(declare-fun b!6477557 () Bool)

(declare-fun e!3926400 () Bool)

(assert (=> b!6477557 (= e!3926398 e!3926400)))

(declare-fun res!2659715 () Bool)

(assert (=> b!6477557 (=> (not res!2659715) (not e!3926400))))

(assert (=> b!6477557 (= res!2659715 (not lt!2385887))))

(declare-fun b!6477558 () Bool)

(declare-fun res!2659712 () Bool)

(assert (=> b!6477558 (=> res!2659712 e!3926404)))

(assert (=> b!6477558 (= res!2659712 (not (isEmpty!37424 (tail!12274 Nil!65240))))))

(declare-fun b!6477559 () Bool)

(assert (=> b!6477559 (= e!3926402 (matchR!8538 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 Nil!65240)) (tail!12274 Nil!65240)))))

(declare-fun bm!560509 () Bool)

(assert (=> bm!560509 (= call!560514 (isEmpty!37424 Nil!65240))))

(declare-fun b!6477560 () Bool)

(assert (=> b!6477560 (= e!3926400 e!3926404)))

(declare-fun res!2659713 () Bool)

(assert (=> b!6477560 (=> res!2659713 e!3926404)))

(assert (=> b!6477560 (= res!2659713 call!560514)))

(declare-fun b!6477561 () Bool)

(assert (=> b!6477561 (= e!3926403 e!3926401)))

(declare-fun c!1186413 () Bool)

(assert (=> b!6477561 (= c!1186413 ((_ is EmptyLang!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6477562 () Bool)

(declare-fun res!2659710 () Bool)

(assert (=> b!6477562 (=> (not res!2659710) (not e!3926399))))

(assert (=> b!6477562 (= res!2659710 (isEmpty!37424 (tail!12274 Nil!65240)))))

(declare-fun b!6477563 () Bool)

(assert (=> b!6477563 (= e!3926402 (nullable!6348 (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6477564 () Bool)

(assert (=> b!6477564 (= e!3926401 (not lt!2385887))))

(assert (= (and d!2032209 c!1186414) b!6477563))

(assert (= (and d!2032209 (not c!1186414)) b!6477559))

(assert (= (and d!2032209 c!1186412) b!6477553))

(assert (= (and d!2032209 (not c!1186412)) b!6477561))

(assert (= (and b!6477561 c!1186413) b!6477564))

(assert (= (and b!6477561 (not c!1186413)) b!6477552))

(assert (= (and b!6477552 (not res!2659711)) b!6477556))

(assert (= (and b!6477556 res!2659709) b!6477555))

(assert (= (and b!6477555 res!2659714) b!6477562))

(assert (= (and b!6477562 res!2659710) b!6477554))

(assert (= (and b!6477556 (not res!2659716)) b!6477557))

(assert (= (and b!6477557 res!2659715) b!6477560))

(assert (= (and b!6477560 (not res!2659713)) b!6477558))

(assert (= (and b!6477558 (not res!2659712)) b!6477551))

(assert (= (or b!6477553 b!6477560 b!6477555) bm!560509))

(declare-fun m!7265862 () Bool)

(assert (=> d!2032209 m!7265862))

(assert (=> d!2032209 m!7264888))

(declare-fun m!7265864 () Bool)

(assert (=> b!6477559 m!7265864))

(assert (=> b!6477559 m!7265864))

(declare-fun m!7265866 () Bool)

(assert (=> b!6477559 m!7265866))

(declare-fun m!7265868 () Bool)

(assert (=> b!6477559 m!7265868))

(assert (=> b!6477559 m!7265866))

(assert (=> b!6477559 m!7265868))

(declare-fun m!7265870 () Bool)

(assert (=> b!6477559 m!7265870))

(assert (=> bm!560509 m!7265862))

(assert (=> b!6477558 m!7265868))

(assert (=> b!6477558 m!7265868))

(declare-fun m!7265872 () Bool)

(assert (=> b!6477558 m!7265872))

(assert (=> b!6477554 m!7265864))

(assert (=> b!6477562 m!7265868))

(assert (=> b!6477562 m!7265868))

(assert (=> b!6477562 m!7265872))

(assert (=> b!6477551 m!7265864))

(assert (=> b!6477563 m!7265378))

(assert (=> d!2032147 d!2032209))

(declare-fun b!6477565 () Bool)

(declare-fun e!3926407 () Bool)

(declare-fun e!3926408 () Bool)

(assert (=> b!6477565 (= e!3926407 e!3926408)))

(declare-fun res!2659721 () Bool)

(assert (=> b!6477565 (= res!2659721 (not (nullable!6348 (reg!16684 (reg!16684 (regOne!33222 r!7292))))))))

(assert (=> b!6477565 (=> (not res!2659721) (not e!3926408))))

(declare-fun b!6477566 () Bool)

(declare-fun e!3926409 () Bool)

(declare-fun call!560515 () Bool)

(assert (=> b!6477566 (= e!3926409 call!560515)))

(declare-fun b!6477567 () Bool)

(declare-fun e!3926405 () Bool)

(assert (=> b!6477567 (= e!3926405 e!3926407)))

(declare-fun c!1186416 () Bool)

(assert (=> b!6477567 (= c!1186416 ((_ is Star!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6477568 () Bool)

(declare-fun e!3926411 () Bool)

(assert (=> b!6477568 (= e!3926411 call!560515)))

(declare-fun b!6477569 () Bool)

(declare-fun e!3926410 () Bool)

(assert (=> b!6477569 (= e!3926410 e!3926409)))

(declare-fun res!2659717 () Bool)

(assert (=> b!6477569 (=> (not res!2659717) (not e!3926409))))

(declare-fun call!560517 () Bool)

(assert (=> b!6477569 (= res!2659717 call!560517)))

(declare-fun bm!560510 () Bool)

(declare-fun c!1186415 () Bool)

(assert (=> bm!560510 (= call!560517 (validRegex!8091 (ite c!1186415 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun bm!560511 () Bool)

(declare-fun call!560516 () Bool)

(assert (=> bm!560511 (= call!560515 call!560516)))

(declare-fun b!6477570 () Bool)

(assert (=> b!6477570 (= e!3926408 call!560516)))

(declare-fun bm!560512 () Bool)

(assert (=> bm!560512 (= call!560516 (validRegex!8091 (ite c!1186416 (reg!16684 (reg!16684 (regOne!33222 r!7292))) (ite c!1186415 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 (reg!16684 (regOne!33222 r!7292)))))))))

(declare-fun b!6477571 () Bool)

(declare-fun res!2659720 () Bool)

(assert (=> b!6477571 (=> (not res!2659720) (not e!3926411))))

(assert (=> b!6477571 (= res!2659720 call!560517)))

(declare-fun e!3926406 () Bool)

(assert (=> b!6477571 (= e!3926406 e!3926411)))

(declare-fun d!2032211 () Bool)

(declare-fun res!2659719 () Bool)

(assert (=> d!2032211 (=> res!2659719 e!3926405)))

(assert (=> d!2032211 (= res!2659719 ((_ is ElementMatch!16355) (reg!16684 (regOne!33222 r!7292))))))

(assert (=> d!2032211 (= (validRegex!8091 (reg!16684 (regOne!33222 r!7292))) e!3926405)))

(declare-fun b!6477572 () Bool)

(assert (=> b!6477572 (= e!3926407 e!3926406)))

(assert (=> b!6477572 (= c!1186415 ((_ is Union!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6477573 () Bool)

(declare-fun res!2659718 () Bool)

(assert (=> b!6477573 (=> res!2659718 e!3926410)))

(assert (=> b!6477573 (= res!2659718 (not ((_ is Concat!25200) (reg!16684 (regOne!33222 r!7292)))))))

(assert (=> b!6477573 (= e!3926406 e!3926410)))

(assert (= (and d!2032211 (not res!2659719)) b!6477567))

(assert (= (and b!6477567 c!1186416) b!6477565))

(assert (= (and b!6477567 (not c!1186416)) b!6477572))

(assert (= (and b!6477565 res!2659721) b!6477570))

(assert (= (and b!6477572 c!1186415) b!6477571))

(assert (= (and b!6477572 (not c!1186415)) b!6477573))

(assert (= (and b!6477571 res!2659720) b!6477568))

(assert (= (and b!6477573 (not res!2659718)) b!6477569))

(assert (= (and b!6477569 res!2659717) b!6477566))

(assert (= (or b!6477568 b!6477566) bm!560511))

(assert (= (or b!6477571 b!6477569) bm!560510))

(assert (= (or b!6477570 bm!560511) bm!560512))

(declare-fun m!7265874 () Bool)

(assert (=> b!6477565 m!7265874))

(declare-fun m!7265876 () Bool)

(assert (=> bm!560510 m!7265876))

(declare-fun m!7265878 () Bool)

(assert (=> bm!560512 m!7265878))

(assert (=> d!2032147 d!2032211))

(declare-fun d!2032213 () Bool)

(declare-fun res!2659726 () Bool)

(declare-fun e!3926416 () Bool)

(assert (=> d!2032213 (=> res!2659726 e!3926416)))

(assert (=> d!2032213 (= res!2659726 ((_ is Nil!65241) (exprs!6239 setElem!44113)))))

(assert (=> d!2032213 (= (forall!15540 (exprs!6239 setElem!44113) lambda!358049) e!3926416)))

(declare-fun b!6477578 () Bool)

(declare-fun e!3926417 () Bool)

(assert (=> b!6477578 (= e!3926416 e!3926417)))

(declare-fun res!2659727 () Bool)

(assert (=> b!6477578 (=> (not res!2659727) (not e!3926417))))

(declare-fun dynLambda!25916 (Int Regex!16355) Bool)

(assert (=> b!6477578 (= res!2659727 (dynLambda!25916 lambda!358049 (h!71689 (exprs!6239 setElem!44113))))))

(declare-fun b!6477579 () Bool)

(assert (=> b!6477579 (= e!3926417 (forall!15540 (t!378989 (exprs!6239 setElem!44113)) lambda!358049))))

(assert (= (and d!2032213 (not res!2659726)) b!6477578))

(assert (= (and b!6477578 res!2659727) b!6477579))

(declare-fun b_lambda!245393 () Bool)

(assert (=> (not b_lambda!245393) (not b!6477578)))

(declare-fun m!7265880 () Bool)

(assert (=> b!6477578 m!7265880))

(declare-fun m!7265882 () Bool)

(assert (=> b!6477579 m!7265882))

(assert (=> d!2031899 d!2032213))

(declare-fun bm!560513 () Bool)

(declare-fun call!560518 () (InoxSet Context!11478))

(assert (=> bm!560513 (= call!560518 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385662))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385662)))))) (h!71688 s!2326)))))

(declare-fun b!6477580 () Bool)

(declare-fun e!3926420 () Bool)

(assert (=> b!6477580 (= e!3926420 (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385662)))))))))

(declare-fun b!6477581 () Bool)

(declare-fun e!3926418 () (InoxSet Context!11478))

(assert (=> b!6477581 (= e!3926418 call!560518)))

(declare-fun b!6477582 () Bool)

(declare-fun e!3926419 () (InoxSet Context!11478))

(assert (=> b!6477582 (= e!3926419 e!3926418)))

(declare-fun c!1186418 () Bool)

(assert (=> b!6477582 (= c!1186418 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385662))))))))

(declare-fun b!6477584 () Bool)

(assert (=> b!6477584 (= e!3926418 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032215 () Bool)

(declare-fun c!1186417 () Bool)

(assert (=> d!2032215 (= c!1186417 e!3926420)))

(declare-fun res!2659728 () Bool)

(assert (=> d!2032215 (=> (not res!2659728) (not e!3926420))))

(assert (=> d!2032215 (= res!2659728 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385662))))))))

(assert (=> d!2032215 (= (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385662))) (h!71688 s!2326)) e!3926419)))

(declare-fun b!6477583 () Bool)

(assert (=> b!6477583 (= e!3926419 ((_ map or) call!560518 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385662)))))) (h!71688 s!2326))))))

(assert (= (and d!2032215 res!2659728) b!6477580))

(assert (= (and d!2032215 c!1186417) b!6477583))

(assert (= (and d!2032215 (not c!1186417)) b!6477582))

(assert (= (and b!6477582 c!1186418) b!6477581))

(assert (= (and b!6477582 (not c!1186418)) b!6477584))

(assert (= (or b!6477583 b!6477581) bm!560513))

(declare-fun m!7265884 () Bool)

(assert (=> bm!560513 m!7265884))

(declare-fun m!7265886 () Bool)

(assert (=> b!6477580 m!7265886))

(declare-fun m!7265888 () Bool)

(assert (=> b!6477583 m!7265888))

(assert (=> b!6477100 d!2032215))

(assert (=> b!6477249 d!2032193))

(declare-fun call!560519 () (InoxSet Context!11478))

(declare-fun call!560521 () List!65365)

(declare-fun c!1186419 () Bool)

(declare-fun c!1186420 () Bool)

(declare-fun c!1186421 () Bool)

(declare-fun bm!560514 () Bool)

(assert (=> bm!560514 (= call!560519 (derivationStepZipperDown!1603 (ite c!1186421 (regOne!33223 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))) (ite c!1186420 (regTwo!33222 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))) (ite c!1186419 (regOne!33222 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))) (reg!16684 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))))))) (ite (or c!1186421 c!1186420) (ite c!1186276 lt!2385688 (Context!11479 call!560463)) (Context!11479 call!560521)) (h!71688 s!2326)))))

(declare-fun b!6477585 () Bool)

(declare-fun e!3926425 () Bool)

(assert (=> b!6477585 (= c!1186420 e!3926425)))

(declare-fun res!2659729 () Bool)

(assert (=> b!6477585 (=> (not res!2659729) (not e!3926425))))

(assert (=> b!6477585 (= res!2659729 ((_ is Concat!25200) (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))

(declare-fun e!3926423 () (InoxSet Context!11478))

(declare-fun e!3926422 () (InoxSet Context!11478))

(assert (=> b!6477585 (= e!3926423 e!3926422)))

(declare-fun b!6477586 () Bool)

(declare-fun c!1186423 () Bool)

(assert (=> b!6477586 (= c!1186423 ((_ is Star!16355) (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))

(declare-fun e!3926426 () (InoxSet Context!11478))

(declare-fun e!3926424 () (InoxSet Context!11478))

(assert (=> b!6477586 (= e!3926426 e!3926424)))

(declare-fun d!2032217 () Bool)

(declare-fun c!1186422 () Bool)

(assert (=> d!2032217 (= c!1186422 (and ((_ is ElementMatch!16355) (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))) (= (c!1186089 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))) (h!71688 s!2326))))))

(declare-fun e!3926421 () (InoxSet Context!11478))

(assert (=> d!2032217 (= (derivationStepZipperDown!1603 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))) (ite c!1186276 lt!2385688 (Context!11479 call!560463)) (h!71688 s!2326)) e!3926421)))

(declare-fun bm!560515 () Bool)

(declare-fun call!560524 () List!65365)

(assert (=> bm!560515 (= call!560521 call!560524)))

(declare-fun b!6477587 () Bool)

(assert (=> b!6477587 (= e!3926425 (nullable!6348 (regOne!33222 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))))))))

(declare-fun b!6477588 () Bool)

(assert (=> b!6477588 (= e!3926424 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560516 () Bool)

(declare-fun call!560522 () (InoxSet Context!11478))

(declare-fun call!560523 () (InoxSet Context!11478))

(assert (=> bm!560516 (= call!560522 call!560523)))

(declare-fun b!6477589 () Bool)

(assert (=> b!6477589 (= e!3926424 call!560522)))

(declare-fun b!6477590 () Bool)

(declare-fun call!560520 () (InoxSet Context!11478))

(assert (=> b!6477590 (= e!3926423 ((_ map or) call!560519 call!560520))))

(declare-fun b!6477591 () Bool)

(assert (=> b!6477591 (= e!3926421 (store ((as const (Array Context!11478 Bool)) false) (ite c!1186276 lt!2385688 (Context!11479 call!560463)) true))))

(declare-fun b!6477592 () Bool)

(assert (=> b!6477592 (= e!3926421 e!3926423)))

(assert (=> b!6477592 (= c!1186421 ((_ is Union!16355) (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))

(declare-fun bm!560517 () Bool)

(assert (=> bm!560517 (= call!560524 ($colon$colon!2210 (exprs!6239 (ite c!1186276 lt!2385688 (Context!11479 call!560463))) (ite (or c!1186420 c!1186419) (regTwo!33222 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))) (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))))))))

(declare-fun b!6477593 () Bool)

(assert (=> b!6477593 (= e!3926422 ((_ map or) call!560520 call!560523))))

(declare-fun bm!560518 () Bool)

(assert (=> bm!560518 (= call!560523 call!560519)))

(declare-fun bm!560519 () Bool)

(assert (=> bm!560519 (= call!560520 (derivationStepZipperDown!1603 (ite c!1186421 (regTwo!33223 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))) (regOne!33222 (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))))) (ite c!1186421 (ite c!1186276 lt!2385688 (Context!11479 call!560463)) (Context!11479 call!560524)) (h!71688 s!2326)))))

(declare-fun b!6477594 () Bool)

(assert (=> b!6477594 (= e!3926426 call!560522)))

(declare-fun b!6477595 () Bool)

(assert (=> b!6477595 (= e!3926422 e!3926426)))

(assert (=> b!6477595 (= c!1186419 ((_ is Concat!25200) (ite c!1186276 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))

(assert (= (and d!2032217 c!1186422) b!6477591))

(assert (= (and d!2032217 (not c!1186422)) b!6477592))

(assert (= (and b!6477592 c!1186421) b!6477590))

(assert (= (and b!6477592 (not c!1186421)) b!6477585))

(assert (= (and b!6477585 res!2659729) b!6477587))

(assert (= (and b!6477585 c!1186420) b!6477593))

(assert (= (and b!6477585 (not c!1186420)) b!6477595))

(assert (= (and b!6477595 c!1186419) b!6477594))

(assert (= (and b!6477595 (not c!1186419)) b!6477586))

(assert (= (and b!6477586 c!1186423) b!6477589))

(assert (= (and b!6477586 (not c!1186423)) b!6477588))

(assert (= (or b!6477594 b!6477589) bm!560515))

(assert (= (or b!6477594 b!6477589) bm!560516))

(assert (= (or b!6477593 bm!560515) bm!560517))

(assert (= (or b!6477593 bm!560516) bm!560518))

(assert (= (or b!6477590 b!6477593) bm!560519))

(assert (= (or b!6477590 bm!560518) bm!560514))

(declare-fun m!7265890 () Bool)

(assert (=> bm!560519 m!7265890))

(declare-fun m!7265892 () Bool)

(assert (=> bm!560514 m!7265892))

(declare-fun m!7265894 () Bool)

(assert (=> b!6477591 m!7265894))

(declare-fun m!7265896 () Bool)

(assert (=> b!6477587 m!7265896))

(declare-fun m!7265898 () Bool)

(assert (=> bm!560517 m!7265898))

(assert (=> bm!560458 d!2032217))

(declare-fun d!2032219 () Bool)

(assert (=> d!2032219 (= (isEmpty!37424 (tail!12274 (_2!36637 lt!2385692))) ((_ is Nil!65240) (tail!12274 (_2!36637 lt!2385692))))))

(assert (=> b!6477288 d!2032219))

(declare-fun d!2032221 () Bool)

(assert (=> d!2032221 (= (tail!12274 (_2!36637 lt!2385692)) (t!378988 (_2!36637 lt!2385692)))))

(assert (=> b!6477288 d!2032221))

(declare-fun bs!1642661 () Bool)

(declare-fun d!2032223 () Bool)

(assert (= bs!1642661 (and d!2032223 d!2032083)))

(declare-fun lambda!358119 () Int)

(assert (=> bs!1642661 (= lambda!358119 lambda!358095)))

(declare-fun bs!1642662 () Bool)

(assert (= bs!1642662 (and d!2032223 d!2031879)))

(assert (=> bs!1642662 (= lambda!358119 lambda!358039)))

(declare-fun bs!1642663 () Bool)

(assert (= bs!1642663 (and d!2032223 d!2031899)))

(assert (=> bs!1642663 (= lambda!358119 lambda!358049)))

(declare-fun bs!1642664 () Bool)

(assert (= bs!1642664 (and d!2032223 d!2032101)))

(assert (=> bs!1642664 (= lambda!358119 lambda!358101)))

(declare-fun bs!1642665 () Bool)

(assert (= bs!1642665 (and d!2032223 d!2032085)))

(assert (=> bs!1642665 (= lambda!358119 lambda!358099)))

(declare-fun bs!1642666 () Bool)

(assert (= bs!1642666 (and d!2032223 d!2031887)))

(assert (=> bs!1642666 (= lambda!358119 lambda!358048)))

(declare-fun b!6477597 () Bool)

(declare-fun e!3926429 () Bool)

(assert (=> b!6477597 (= e!3926429 (isEmpty!37422 (t!378989 (t!378989 (unfocusZipperList!1776 zl!343)))))))

(declare-fun b!6477598 () Bool)

(declare-fun e!3926427 () Bool)

(declare-fun e!3926431 () Bool)

(assert (=> b!6477598 (= e!3926427 e!3926431)))

(declare-fun c!1186427 () Bool)

(assert (=> b!6477598 (= c!1186427 (isEmpty!37422 (t!378989 (unfocusZipperList!1776 zl!343))))))

(declare-fun b!6477599 () Bool)

(declare-fun e!3926428 () Regex!16355)

(assert (=> b!6477599 (= e!3926428 (Union!16355 (h!71689 (t!378989 (unfocusZipperList!1776 zl!343))) (generalisedUnion!2199 (t!378989 (t!378989 (unfocusZipperList!1776 zl!343))))))))

(declare-fun b!6477600 () Bool)

(declare-fun e!3926430 () Bool)

(declare-fun lt!2385888 () Regex!16355)

(assert (=> b!6477600 (= e!3926430 (= lt!2385888 (head!13190 (t!378989 (unfocusZipperList!1776 zl!343)))))))

(declare-fun b!6477601 () Bool)

(assert (=> b!6477601 (= e!3926431 e!3926430)))

(declare-fun c!1186424 () Bool)

(assert (=> b!6477601 (= c!1186424 (isEmpty!37422 (tail!12275 (t!378989 (unfocusZipperList!1776 zl!343)))))))

(declare-fun b!6477602 () Bool)

(assert (=> b!6477602 (= e!3926430 (isUnion!1187 lt!2385888))))

(declare-fun b!6477603 () Bool)

(assert (=> b!6477603 (= e!3926428 EmptyLang!16355)))

(declare-fun b!6477596 () Bool)

(declare-fun e!3926432 () Regex!16355)

(assert (=> b!6477596 (= e!3926432 (h!71689 (t!378989 (unfocusZipperList!1776 zl!343))))))

(assert (=> d!2032223 e!3926427))

(declare-fun res!2659731 () Bool)

(assert (=> d!2032223 (=> (not res!2659731) (not e!3926427))))

(assert (=> d!2032223 (= res!2659731 (validRegex!8091 lt!2385888))))

(assert (=> d!2032223 (= lt!2385888 e!3926432)))

(declare-fun c!1186426 () Bool)

(assert (=> d!2032223 (= c!1186426 e!3926429)))

(declare-fun res!2659730 () Bool)

(assert (=> d!2032223 (=> (not res!2659730) (not e!3926429))))

(assert (=> d!2032223 (= res!2659730 ((_ is Cons!65241) (t!378989 (unfocusZipperList!1776 zl!343))))))

(assert (=> d!2032223 (forall!15540 (t!378989 (unfocusZipperList!1776 zl!343)) lambda!358119)))

(assert (=> d!2032223 (= (generalisedUnion!2199 (t!378989 (unfocusZipperList!1776 zl!343))) lt!2385888)))

(declare-fun b!6477604 () Bool)

(assert (=> b!6477604 (= e!3926432 e!3926428)))

(declare-fun c!1186425 () Bool)

(assert (=> b!6477604 (= c!1186425 ((_ is Cons!65241) (t!378989 (unfocusZipperList!1776 zl!343))))))

(declare-fun b!6477605 () Bool)

(assert (=> b!6477605 (= e!3926431 (isEmptyLang!1757 lt!2385888))))

(assert (= (and d!2032223 res!2659730) b!6477597))

(assert (= (and d!2032223 c!1186426) b!6477596))

(assert (= (and d!2032223 (not c!1186426)) b!6477604))

(assert (= (and b!6477604 c!1186425) b!6477599))

(assert (= (and b!6477604 (not c!1186425)) b!6477603))

(assert (= (and d!2032223 res!2659731) b!6477598))

(assert (= (and b!6477598 c!1186427) b!6477605))

(assert (= (and b!6477598 (not c!1186427)) b!6477601))

(assert (= (and b!6477601 c!1186424) b!6477600))

(assert (= (and b!6477601 (not c!1186424)) b!6477602))

(declare-fun m!7265900 () Bool)

(assert (=> b!6477605 m!7265900))

(declare-fun m!7265902 () Bool)

(assert (=> b!6477600 m!7265902))

(declare-fun m!7265904 () Bool)

(assert (=> b!6477597 m!7265904))

(declare-fun m!7265906 () Bool)

(assert (=> b!6477602 m!7265906))

(declare-fun m!7265908 () Bool)

(assert (=> b!6477601 m!7265908))

(assert (=> b!6477601 m!7265908))

(declare-fun m!7265910 () Bool)

(assert (=> b!6477601 m!7265910))

(assert (=> b!6477598 m!7265542))

(declare-fun m!7265912 () Bool)

(assert (=> b!6477599 m!7265912))

(declare-fun m!7265914 () Bool)

(assert (=> d!2032223 m!7265914))

(declare-fun m!7265916 () Bool)

(assert (=> d!2032223 m!7265916))

(assert (=> b!6477225 d!2032223))

(declare-fun d!2032225 () Bool)

(assert (=> d!2032225 (= (head!13189 lt!2385693) (h!71688 lt!2385693))))

(assert (=> b!6476541 d!2032225))

(declare-fun d!2032227 () Bool)

(assert (=> d!2032227 (= (nullable!6348 (reg!16684 (regOne!33222 r!7292))) (nullableFct!2287 (reg!16684 (regOne!33222 r!7292))))))

(declare-fun bs!1642667 () Bool)

(assert (= bs!1642667 d!2032227))

(declare-fun m!7265918 () Bool)

(assert (=> bs!1642667 m!7265918))

(assert (=> b!6477091 d!2032227))

(assert (=> bs!1642622 d!2032021))

(declare-fun d!2032229 () Bool)

(assert (=> d!2032229 true))

(assert (=> d!2032229 true))

(declare-fun res!2659732 () Bool)

(assert (=> d!2032229 (= (choose!48008 lambda!358016) res!2659732)))

(assert (=> d!2031953 d!2032229))

(declare-fun d!2032231 () Bool)

(assert (=> d!2032231 (= (isEmpty!37424 (tail!12274 s!2326)) ((_ is Nil!65240) (tail!12274 s!2326)))))

(assert (=> b!6476449 d!2032231))

(declare-fun d!2032233 () Bool)

(assert (=> d!2032233 (= (tail!12274 s!2326) (t!378988 s!2326))))

(assert (=> b!6476449 d!2032233))

(assert (=> d!2031905 d!2032177))

(declare-fun d!2032235 () Bool)

(assert (=> d!2032235 (= (isDefined!12949 (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)) (not (isEmpty!37425 (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326))))))

(declare-fun bs!1642668 () Bool)

(assert (= bs!1642668 d!2032235))

(assert (=> bs!1642668 m!7264626))

(declare-fun m!7265920 () Bool)

(assert (=> bs!1642668 m!7265920))

(assert (=> d!2031905 d!2032235))

(assert (=> d!2031905 d!2031931))

(declare-fun bs!1642669 () Bool)

(declare-fun d!2032237 () Bool)

(assert (= bs!1642669 (and d!2032237 d!2032127)))

(declare-fun lambda!358122 () Int)

(assert (=> bs!1642669 (not (= lambda!358122 lambda!358115))))

(declare-fun bs!1642670 () Bool)

(assert (= bs!1642670 (and d!2032237 d!2031923)))

(assert (=> bs!1642670 (= lambda!358122 lambda!358059)))

(declare-fun bs!1642671 () Bool)

(assert (= bs!1642671 (and d!2032237 d!2032125)))

(assert (=> bs!1642671 (not (= lambda!358122 lambda!358108))))

(declare-fun bs!1642672 () Bool)

(assert (= bs!1642672 (and d!2032237 b!6477031)))

(assert (=> bs!1642672 (not (= lambda!358122 lambda!358073))))

(declare-fun bs!1642673 () Bool)

(assert (= bs!1642673 (and d!2032237 b!6476331)))

(assert (=> bs!1642673 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358122 lambda!358018))))

(declare-fun bs!1642674 () Bool)

(assert (= bs!1642674 (and d!2032237 d!2032155)))

(assert (=> bs!1642674 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358122 lambda!358116))))

(declare-fun bs!1642675 () Bool)

(assert (= bs!1642675 (and d!2032237 b!6477548)))

(assert (=> bs!1642675 (not (= lambda!358122 lambda!358118))))

(declare-fun bs!1642676 () Bool)

(assert (= bs!1642676 (and d!2032237 b!6476300)))

(assert (=> bs!1642676 (= lambda!358122 lambda!358016)))

(declare-fun bs!1642677 () Bool)

(assert (= bs!1642677 (and d!2032237 b!6477546)))

(assert (=> bs!1642677 (not (= lambda!358122 lambda!358117))))

(declare-fun bs!1642678 () Bool)

(assert (= bs!1642678 (and d!2032237 b!6476519)))

(assert (=> bs!1642678 (not (= lambda!358122 lambda!358035))))

(declare-fun bs!1642679 () Bool)

(assert (= bs!1642679 (and d!2032237 b!6477297)))

(assert (=> bs!1642679 (not (= lambda!358122 lambda!358103))))

(assert (=> bs!1642673 (not (= lambda!358122 lambda!358020))))

(declare-fun bs!1642680 () Bool)

(assert (= bs!1642680 (and d!2032237 d!2032041)))

(assert (=> bs!1642680 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358122 lambda!358083))))

(assert (=> bs!1642676 (not (= lambda!358122 lambda!358017))))

(assert (=> bs!1642671 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358122 lambda!358107))))

(declare-fun bs!1642681 () Bool)

(assert (= bs!1642681 (and d!2032237 b!6476517)))

(assert (=> bs!1642681 (not (= lambda!358122 lambda!358032))))

(assert (=> bs!1642670 (not (= lambda!358122 lambda!358062))))

(declare-fun bs!1642682 () Bool)

(assert (= bs!1642682 (and d!2032237 b!6476306)))

(assert (=> bs!1642682 (not (= lambda!358122 lambda!358014))))

(declare-fun bs!1642683 () Bool)

(assert (= bs!1642683 (and d!2032237 d!2032037)))

(assert (=> bs!1642683 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358122 lambda!358082))))

(declare-fun bs!1642684 () Bool)

(assert (= bs!1642684 (and d!2032237 b!6477299)))

(assert (=> bs!1642684 (not (= lambda!358122 lambda!358105))))

(declare-fun bs!1642685 () Bool)

(assert (= bs!1642685 (and d!2032237 b!6477033)))

(assert (=> bs!1642685 (not (= lambda!358122 lambda!358075))))

(assert (=> bs!1642669 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358122 lambda!358114))))

(assert (=> bs!1642682 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358122 lambda!358013))))

(declare-fun bs!1642686 () Bool)

(assert (= bs!1642686 (and d!2032237 d!2031905)))

(assert (=> bs!1642686 (= lambda!358122 lambda!358052)))

(assert (=> bs!1642673 (not (= lambda!358122 lambda!358019))))

(assert (=> bs!1642680 (not (= lambda!358122 lambda!358084))))

(assert (=> d!2032237 true))

(assert (=> d!2032237 true))

(assert (=> d!2032237 true))

(assert (=> d!2032237 (= (isDefined!12949 (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)) (Exists!3425 lambda!358122))))

(assert (=> d!2032237 true))

(declare-fun _$89!2710 () Unit!158751)

(assert (=> d!2032237 (= (choose!48005 lt!2385664 (regTwo!33222 r!7292) s!2326) _$89!2710)))

(declare-fun bs!1642687 () Bool)

(assert (= bs!1642687 d!2032237))

(assert (=> bs!1642687 m!7264626))

(assert (=> bs!1642687 m!7264626))

(assert (=> bs!1642687 m!7265056))

(declare-fun m!7265922 () Bool)

(assert (=> bs!1642687 m!7265922))

(assert (=> d!2031905 d!2032237))

(declare-fun d!2032239 () Bool)

(assert (=> d!2032239 (= (Exists!3425 lambda!358052) (choose!48008 lambda!358052))))

(declare-fun bs!1642688 () Bool)

(assert (= bs!1642688 d!2032239))

(declare-fun m!7265924 () Bool)

(assert (=> bs!1642688 m!7265924))

(assert (=> d!2031905 d!2032239))

(declare-fun d!2032241 () Bool)

(assert (=> d!2032241 (= (Exists!3425 lambda!358107) (choose!48008 lambda!358107))))

(declare-fun bs!1642689 () Bool)

(assert (= bs!1642689 d!2032241))

(declare-fun m!7265926 () Bool)

(assert (=> bs!1642689 m!7265926))

(assert (=> d!2032125 d!2032241))

(declare-fun d!2032243 () Bool)

(assert (=> d!2032243 (= (Exists!3425 lambda!358108) (choose!48008 lambda!358108))))

(declare-fun bs!1642690 () Bool)

(assert (= bs!1642690 d!2032243))

(declare-fun m!7265928 () Bool)

(assert (=> bs!1642690 m!7265928))

(assert (=> d!2032125 d!2032243))

(declare-fun bs!1642691 () Bool)

(declare-fun d!2032245 () Bool)

(assert (= bs!1642691 (and d!2032245 d!2032127)))

(declare-fun lambda!358127 () Int)

(assert (=> bs!1642691 (not (= lambda!358127 lambda!358115))))

(declare-fun bs!1642692 () Bool)

(assert (= bs!1642692 (and d!2032245 d!2031923)))

(assert (=> bs!1642692 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358127 lambda!358059))))

(declare-fun bs!1642693 () Bool)

(assert (= bs!1642693 (and d!2032245 d!2032125)))

(assert (=> bs!1642693 (not (= lambda!358127 lambda!358108))))

(declare-fun bs!1642694 () Bool)

(assert (= bs!1642694 (and d!2032245 b!6477031)))

(assert (=> bs!1642694 (not (= lambda!358127 lambda!358073))))

(declare-fun bs!1642695 () Bool)

(assert (= bs!1642695 (and d!2032245 b!6476331)))

(assert (=> bs!1642695 (= lambda!358127 lambda!358018)))

(declare-fun bs!1642696 () Bool)

(assert (= bs!1642696 (and d!2032245 d!2032155)))

(assert (=> bs!1642696 (= lambda!358127 lambda!358116)))

(declare-fun bs!1642697 () Bool)

(assert (= bs!1642697 (and d!2032245 b!6477548)))

(assert (=> bs!1642697 (not (= lambda!358127 lambda!358118))))

(declare-fun bs!1642698 () Bool)

(assert (= bs!1642698 (and d!2032245 b!6476300)))

(assert (=> bs!1642698 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358127 lambda!358016))))

(declare-fun bs!1642699 () Bool)

(assert (= bs!1642699 (and d!2032245 b!6477546)))

(assert (=> bs!1642699 (not (= lambda!358127 lambda!358117))))

(declare-fun bs!1642700 () Bool)

(assert (= bs!1642700 (and d!2032245 b!6476519)))

(assert (=> bs!1642700 (not (= lambda!358127 lambda!358035))))

(declare-fun bs!1642701 () Bool)

(assert (= bs!1642701 (and d!2032245 b!6477297)))

(assert (=> bs!1642701 (not (= lambda!358127 lambda!358103))))

(assert (=> bs!1642695 (not (= lambda!358127 lambda!358020))))

(declare-fun bs!1642702 () Bool)

(assert (= bs!1642702 (and d!2032245 d!2032041)))

(assert (=> bs!1642702 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358127 lambda!358083))))

(assert (=> bs!1642698 (not (= lambda!358127 lambda!358017))))

(assert (=> bs!1642693 (= lambda!358127 lambda!358107)))

(declare-fun bs!1642703 () Bool)

(assert (= bs!1642703 (and d!2032245 b!6476517)))

(assert (=> bs!1642703 (not (= lambda!358127 lambda!358032))))

(assert (=> bs!1642692 (not (= lambda!358127 lambda!358062))))

(declare-fun bs!1642704 () Bool)

(assert (= bs!1642704 (and d!2032245 b!6476306)))

(assert (=> bs!1642704 (not (= lambda!358127 lambda!358014))))

(declare-fun bs!1642705 () Bool)

(assert (= bs!1642705 (and d!2032245 d!2032037)))

(assert (=> bs!1642705 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358127 lambda!358082))))

(declare-fun bs!1642706 () Bool)

(assert (= bs!1642706 (and d!2032245 b!6477299)))

(assert (=> bs!1642706 (not (= lambda!358127 lambda!358105))))

(declare-fun bs!1642707 () Bool)

(assert (= bs!1642707 (and d!2032245 b!6477033)))

(assert (=> bs!1642707 (not (= lambda!358127 lambda!358075))))

(assert (=> bs!1642691 (= (= lt!2385664 (Star!16355 (reg!16684 (regOne!33222 r!7292)))) (= lambda!358127 lambda!358114))))

(assert (=> bs!1642704 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358127 lambda!358013))))

(declare-fun bs!1642708 () Bool)

(assert (= bs!1642708 (and d!2032245 d!2031905)))

(assert (=> bs!1642708 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358127 lambda!358052))))

(assert (=> bs!1642695 (not (= lambda!358127 lambda!358019))))

(assert (=> bs!1642702 (not (= lambda!358127 lambda!358084))))

(declare-fun bs!1642709 () Bool)

(assert (= bs!1642709 (and d!2032245 d!2032237)))

(assert (=> bs!1642709 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358127 lambda!358122))))

(assert (=> d!2032245 true))

(assert (=> d!2032245 true))

(assert (=> d!2032245 true))

(declare-fun lambda!358128 () Int)

(assert (=> bs!1642691 (not (= lambda!358128 lambda!358115))))

(assert (=> bs!1642692 (not (= lambda!358128 lambda!358059))))

(assert (=> bs!1642693 (= lambda!358128 lambda!358108)))

(assert (=> bs!1642694 (not (= lambda!358128 lambda!358073))))

(assert (=> bs!1642695 (not (= lambda!358128 lambda!358018))))

(assert (=> bs!1642696 (not (= lambda!358128 lambda!358116))))

(assert (=> bs!1642697 (= (and (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 (regOne!33223 lt!2385664))) (= lt!2385664 (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358128 lambda!358118))))

(assert (=> bs!1642698 (not (= lambda!358128 lambda!358016))))

(declare-fun bs!1642710 () Bool)

(assert (= bs!1642710 d!2032245))

(assert (=> bs!1642710 (not (= lambda!358128 lambda!358127))))

(assert (=> bs!1642699 (not (= lambda!358128 lambda!358117))))

(assert (=> bs!1642700 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 lt!2385680)) (= lt!2385664 (regTwo!33222 lt!2385680))) (= lambda!358128 lambda!358035))))

(assert (=> bs!1642701 (not (= lambda!358128 lambda!358103))))

(assert (=> bs!1642695 (= lambda!358128 lambda!358020)))

(assert (=> bs!1642702 (not (= lambda!358128 lambda!358083))))

(assert (=> bs!1642698 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358128 lambda!358017))))

(assert (=> bs!1642693 (not (= lambda!358128 lambda!358107))))

(assert (=> bs!1642703 (not (= lambda!358128 lambda!358032))))

(assert (=> bs!1642692 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358128 lambda!358062))))

(assert (=> bs!1642704 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358128 lambda!358014))))

(assert (=> bs!1642705 (not (= lambda!358128 lambda!358082))))

(assert (=> bs!1642706 (= (and (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 lt!2385664)) (= lt!2385664 (regTwo!33222 lt!2385664))) (= lambda!358128 lambda!358105))))

(assert (=> bs!1642707 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358128 lambda!358075))))

(assert (=> bs!1642691 (not (= lambda!358128 lambda!358114))))

(assert (=> bs!1642704 (not (= lambda!358128 lambda!358013))))

(assert (=> bs!1642708 (not (= lambda!358128 lambda!358052))))

(assert (=> bs!1642695 (not (= lambda!358128 lambda!358019))))

(assert (=> bs!1642702 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358128 lambda!358084))))

(assert (=> bs!1642709 (not (= lambda!358128 lambda!358122))))

(assert (=> d!2032245 true))

(assert (=> d!2032245 true))

(assert (=> d!2032245 true))

(assert (=> d!2032245 (= (Exists!3425 lambda!358127) (Exists!3425 lambda!358128))))

(assert (=> d!2032245 true))

(declare-fun _$90!2332 () Unit!158751)

(assert (=> d!2032245 (= (choose!48006 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)) _$90!2332)))

(declare-fun m!7265930 () Bool)

(assert (=> bs!1642710 m!7265930))

(declare-fun m!7265932 () Bool)

(assert (=> bs!1642710 m!7265932))

(assert (=> d!2032125 d!2032245))

(assert (=> d!2032125 d!2032211))

(declare-fun c!1186429 () Bool)

(declare-fun call!560527 () List!65365)

(declare-fun bm!560520 () Bool)

(declare-fun c!1186428 () Bool)

(declare-fun c!1186430 () Bool)

(declare-fun call!560525 () (InoxSet Context!11478))

(assert (=> bm!560520 (= call!560525 (derivationStepZipperDown!1603 (ite c!1186430 (regOne!33223 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))) (ite c!1186429 (regTwo!33222 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))) (ite c!1186428 (regOne!33222 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))) (reg!16684 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292)))))))))) (ite (or c!1186430 c!1186429) (ite (or c!1186271 c!1186270) lt!2385665 (Context!11479 call!560454)) (Context!11479 call!560527)) (h!71688 s!2326)))))

(declare-fun b!6477618 () Bool)

(declare-fun e!3926443 () Bool)

(assert (=> b!6477618 (= c!1186429 e!3926443)))

(declare-fun res!2659745 () Bool)

(assert (=> b!6477618 (=> (not res!2659745) (not e!3926443))))

(assert (=> b!6477618 (= res!2659745 ((_ is Concat!25200) (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))))))

(declare-fun e!3926441 () (InoxSet Context!11478))

(declare-fun e!3926440 () (InoxSet Context!11478))

(assert (=> b!6477618 (= e!3926441 e!3926440)))

(declare-fun b!6477619 () Bool)

(declare-fun c!1186432 () Bool)

(assert (=> b!6477619 (= c!1186432 ((_ is Star!16355) (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))))))

(declare-fun e!3926444 () (InoxSet Context!11478))

(declare-fun e!3926442 () (InoxSet Context!11478))

(assert (=> b!6477619 (= e!3926444 e!3926442)))

(declare-fun c!1186431 () Bool)

(declare-fun d!2032247 () Bool)

(assert (=> d!2032247 (= c!1186431 (and ((_ is ElementMatch!16355) (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))) (= (c!1186089 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))) (h!71688 s!2326))))))

(declare-fun e!3926439 () (InoxSet Context!11478))

(assert (=> d!2032247 (= (derivationStepZipperDown!1603 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292)))))) (ite (or c!1186271 c!1186270) lt!2385665 (Context!11479 call!560454)) (h!71688 s!2326)) e!3926439)))

(declare-fun bm!560521 () Bool)

(declare-fun call!560530 () List!65365)

(assert (=> bm!560521 (= call!560527 call!560530)))

(declare-fun b!6477620 () Bool)

(assert (=> b!6477620 (= e!3926443 (nullable!6348 (regOne!33222 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292)))))))))))

(declare-fun b!6477621 () Bool)

(assert (=> b!6477621 (= e!3926442 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560522 () Bool)

(declare-fun call!560528 () (InoxSet Context!11478))

(declare-fun call!560529 () (InoxSet Context!11478))

(assert (=> bm!560522 (= call!560528 call!560529)))

(declare-fun b!6477622 () Bool)

(assert (=> b!6477622 (= e!3926442 call!560528)))

(declare-fun b!6477623 () Bool)

(declare-fun call!560526 () (InoxSet Context!11478))

(assert (=> b!6477623 (= e!3926441 ((_ map or) call!560525 call!560526))))

(declare-fun b!6477624 () Bool)

(assert (=> b!6477624 (= e!3926439 (store ((as const (Array Context!11478 Bool)) false) (ite (or c!1186271 c!1186270) lt!2385665 (Context!11479 call!560454)) true))))

(declare-fun b!6477625 () Bool)

(assert (=> b!6477625 (= e!3926439 e!3926441)))

(assert (=> b!6477625 (= c!1186430 ((_ is Union!16355) (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))))))

(declare-fun bm!560523 () Bool)

(assert (=> bm!560523 (= call!560530 ($colon$colon!2210 (exprs!6239 (ite (or c!1186271 c!1186270) lt!2385665 (Context!11479 call!560454))) (ite (or c!1186429 c!1186428) (regTwo!33222 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))) (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292)))))))))))

(declare-fun b!6477626 () Bool)

(assert (=> b!6477626 (= e!3926440 ((_ map or) call!560526 call!560529))))

(declare-fun bm!560524 () Bool)

(assert (=> bm!560524 (= call!560529 call!560525)))

(declare-fun bm!560525 () Bool)

(assert (=> bm!560525 (= call!560526 (derivationStepZipperDown!1603 (ite c!1186430 (regTwo!33223 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))) (regOne!33222 (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292)))))))) (ite c!1186430 (ite (or c!1186271 c!1186270) lt!2385665 (Context!11479 call!560454)) (Context!11479 call!560530)) (h!71688 s!2326)))))

(declare-fun b!6477627 () Bool)

(assert (=> b!6477627 (= e!3926444 call!560528)))

(declare-fun b!6477628 () Bool)

(assert (=> b!6477628 (= e!3926440 e!3926444)))

(assert (=> b!6477628 (= c!1186428 ((_ is Concat!25200) (ite c!1186271 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186270 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (ite c!1186269 (regOne!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (reg!16684 (regOne!33222 r!7292))))))))))

(assert (= (and d!2032247 c!1186431) b!6477624))

(assert (= (and d!2032247 (not c!1186431)) b!6477625))

(assert (= (and b!6477625 c!1186430) b!6477623))

(assert (= (and b!6477625 (not c!1186430)) b!6477618))

(assert (= (and b!6477618 res!2659745) b!6477620))

(assert (= (and b!6477618 c!1186429) b!6477626))

(assert (= (and b!6477618 (not c!1186429)) b!6477628))

(assert (= (and b!6477628 c!1186428) b!6477627))

(assert (= (and b!6477628 (not c!1186428)) b!6477619))

(assert (= (and b!6477619 c!1186432) b!6477622))

(assert (= (and b!6477619 (not c!1186432)) b!6477621))

(assert (= (or b!6477627 b!6477622) bm!560521))

(assert (= (or b!6477627 b!6477622) bm!560522))

(assert (= (or b!6477626 bm!560521) bm!560523))

(assert (= (or b!6477626 bm!560522) bm!560524))

(assert (= (or b!6477623 b!6477626) bm!560525))

(assert (= (or b!6477623 bm!560524) bm!560520))

(declare-fun m!7265934 () Bool)

(assert (=> bm!560525 m!7265934))

(declare-fun m!7265936 () Bool)

(assert (=> bm!560520 m!7265936))

(declare-fun m!7265938 () Bool)

(assert (=> b!6477624 m!7265938))

(declare-fun m!7265940 () Bool)

(assert (=> b!6477620 m!7265940))

(declare-fun m!7265942 () Bool)

(assert (=> bm!560523 m!7265942))

(assert (=> bm!560447 d!2032247))

(assert (=> b!6476716 d!2032105))

(declare-fun d!2032249 () Bool)

(assert (=> d!2032249 (= (nullable!6348 (reg!16684 r!7292)) (nullableFct!2287 (reg!16684 r!7292)))))

(declare-fun bs!1642711 () Bool)

(assert (= bs!1642711 d!2032249))

(declare-fun m!7265944 () Bool)

(assert (=> bs!1642711 m!7265944))

(assert (=> b!6477183 d!2032249))

(declare-fun bs!1642712 () Bool)

(declare-fun b!6477635 () Bool)

(assert (= bs!1642712 (and b!6477635 d!2032127)))

(declare-fun lambda!358129 () Int)

(assert (=> bs!1642712 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33223 r!7292) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358129 lambda!358115))))

(declare-fun bs!1642713 () Bool)

(assert (= bs!1642713 (and b!6477635 d!2032245)))

(assert (=> bs!1642713 (not (= lambda!358129 lambda!358128))))

(declare-fun bs!1642714 () Bool)

(assert (= bs!1642714 (and b!6477635 d!2031923)))

(assert (=> bs!1642714 (not (= lambda!358129 lambda!358059))))

(declare-fun bs!1642715 () Bool)

(assert (= bs!1642715 (and b!6477635 d!2032125)))

(assert (=> bs!1642715 (not (= lambda!358129 lambda!358108))))

(declare-fun bs!1642716 () Bool)

(assert (= bs!1642716 (and b!6477635 b!6477031)))

(assert (=> bs!1642716 (= (and (= (reg!16684 (regTwo!33223 r!7292)) (reg!16684 r!7292)) (= (regTwo!33223 r!7292) r!7292)) (= lambda!358129 lambda!358073))))

(declare-fun bs!1642717 () Bool)

(assert (= bs!1642717 (and b!6477635 b!6476331)))

(assert (=> bs!1642717 (not (= lambda!358129 lambda!358018))))

(declare-fun bs!1642718 () Bool)

(assert (= bs!1642718 (and b!6477635 d!2032155)))

(assert (=> bs!1642718 (not (= lambda!358129 lambda!358116))))

(declare-fun bs!1642719 () Bool)

(assert (= bs!1642719 (and b!6477635 b!6477548)))

(assert (=> bs!1642719 (not (= lambda!358129 lambda!358118))))

(declare-fun bs!1642720 () Bool)

(assert (= bs!1642720 (and b!6477635 b!6476300)))

(assert (=> bs!1642720 (not (= lambda!358129 lambda!358016))))

(assert (=> bs!1642713 (not (= lambda!358129 lambda!358127))))

(declare-fun bs!1642721 () Bool)

(assert (= bs!1642721 (and b!6477635 b!6477546)))

(assert (=> bs!1642721 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 r!7292)) (reg!16684 (regOne!33223 lt!2385664))) (= (regTwo!33223 r!7292) (regOne!33223 lt!2385664))) (= lambda!358129 lambda!358117))))

(declare-fun bs!1642722 () Bool)

(assert (= bs!1642722 (and b!6477635 b!6476519)))

(assert (=> bs!1642722 (not (= lambda!358129 lambda!358035))))

(declare-fun bs!1642723 () Bool)

(assert (= bs!1642723 (and b!6477635 b!6477297)))

(assert (=> bs!1642723 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 r!7292)) (reg!16684 lt!2385664)) (= (regTwo!33223 r!7292) lt!2385664)) (= lambda!358129 lambda!358103))))

(assert (=> bs!1642717 (not (= lambda!358129 lambda!358020))))

(declare-fun bs!1642724 () Bool)

(assert (= bs!1642724 (and b!6477635 d!2032041)))

(assert (=> bs!1642724 (not (= lambda!358129 lambda!358083))))

(assert (=> bs!1642720 (not (= lambda!358129 lambda!358017))))

(assert (=> bs!1642715 (not (= lambda!358129 lambda!358107))))

(declare-fun bs!1642725 () Bool)

(assert (= bs!1642725 (and b!6477635 b!6476517)))

(assert (=> bs!1642725 (= (and (= (reg!16684 (regTwo!33223 r!7292)) (reg!16684 lt!2385680)) (= (regTwo!33223 r!7292) lt!2385680)) (= lambda!358129 lambda!358032))))

(assert (=> bs!1642714 (not (= lambda!358129 lambda!358062))))

(declare-fun bs!1642726 () Bool)

(assert (= bs!1642726 (and b!6477635 b!6476306)))

(assert (=> bs!1642726 (not (= lambda!358129 lambda!358014))))

(declare-fun bs!1642727 () Bool)

(assert (= bs!1642727 (and b!6477635 d!2032037)))

(assert (=> bs!1642727 (not (= lambda!358129 lambda!358082))))

(declare-fun bs!1642728 () Bool)

(assert (= bs!1642728 (and b!6477635 b!6477299)))

(assert (=> bs!1642728 (not (= lambda!358129 lambda!358105))))

(declare-fun bs!1642729 () Bool)

(assert (= bs!1642729 (and b!6477635 b!6477033)))

(assert (=> bs!1642729 (not (= lambda!358129 lambda!358075))))

(assert (=> bs!1642712 (not (= lambda!358129 lambda!358114))))

(assert (=> bs!1642726 (not (= lambda!358129 lambda!358013))))

(declare-fun bs!1642730 () Bool)

(assert (= bs!1642730 (and b!6477635 d!2031905)))

(assert (=> bs!1642730 (not (= lambda!358129 lambda!358052))))

(assert (=> bs!1642717 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33223 r!7292) lt!2385664)) (= lambda!358129 lambda!358019))))

(assert (=> bs!1642724 (not (= lambda!358129 lambda!358084))))

(declare-fun bs!1642731 () Bool)

(assert (= bs!1642731 (and b!6477635 d!2032237)))

(assert (=> bs!1642731 (not (= lambda!358129 lambda!358122))))

(assert (=> b!6477635 true))

(assert (=> b!6477635 true))

(declare-fun bs!1642732 () Bool)

(declare-fun b!6477637 () Bool)

(assert (= bs!1642732 (and b!6477637 d!2032127)))

(declare-fun lambda!358130 () Int)

(assert (=> bs!1642732 (not (= lambda!358130 lambda!358115))))

(declare-fun bs!1642733 () Bool)

(assert (= bs!1642733 (and b!6477637 d!2032245)))

(assert (=> bs!1642733 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 r!7292)) lt!2385664)) (= lambda!358130 lambda!358128))))

(declare-fun bs!1642734 () Bool)

(assert (= bs!1642734 (and b!6477637 d!2031923)))

(assert (=> bs!1642734 (not (= lambda!358130 lambda!358059))))

(declare-fun bs!1642735 () Bool)

(assert (= bs!1642735 (and b!6477637 d!2032125)))

(assert (=> bs!1642735 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 r!7292)) lt!2385664)) (= lambda!358130 lambda!358108))))

(declare-fun bs!1642736 () Bool)

(assert (= bs!1642736 (and b!6477637 b!6477031)))

(assert (=> bs!1642736 (not (= lambda!358130 lambda!358073))))

(declare-fun bs!1642737 () Bool)

(assert (= bs!1642737 (and b!6477637 b!6476331)))

(assert (=> bs!1642737 (not (= lambda!358130 lambda!358018))))

(declare-fun bs!1642738 () Bool)

(assert (= bs!1642738 (and b!6477637 d!2032155)))

(assert (=> bs!1642738 (not (= lambda!358130 lambda!358116))))

(declare-fun bs!1642739 () Bool)

(assert (= bs!1642739 (and b!6477637 b!6477635)))

(assert (=> bs!1642739 (not (= lambda!358130 lambda!358129))))

(declare-fun bs!1642740 () Bool)

(assert (= bs!1642740 (and b!6477637 b!6477548)))

(assert (=> bs!1642740 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 r!7292)) (regOne!33222 (regOne!33223 lt!2385664))) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358130 lambda!358118))))

(declare-fun bs!1642741 () Bool)

(assert (= bs!1642741 (and b!6477637 b!6476300)))

(assert (=> bs!1642741 (not (= lambda!358130 lambda!358016))))

(assert (=> bs!1642733 (not (= lambda!358130 lambda!358127))))

(declare-fun bs!1642742 () Bool)

(assert (= bs!1642742 (and b!6477637 b!6477546)))

(assert (=> bs!1642742 (not (= lambda!358130 lambda!358117))))

(declare-fun bs!1642743 () Bool)

(assert (= bs!1642743 (and b!6477637 b!6476519)))

(assert (=> bs!1642743 (= (and (= (regOne!33222 (regTwo!33223 r!7292)) (regOne!33222 lt!2385680)) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 lt!2385680))) (= lambda!358130 lambda!358035))))

(declare-fun bs!1642744 () Bool)

(assert (= bs!1642744 (and b!6477637 b!6477297)))

(assert (=> bs!1642744 (not (= lambda!358130 lambda!358103))))

(assert (=> bs!1642737 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 r!7292)) lt!2385664)) (= lambda!358130 lambda!358020))))

(declare-fun bs!1642745 () Bool)

(assert (= bs!1642745 (and b!6477637 d!2032041)))

(assert (=> bs!1642745 (not (= lambda!358130 lambda!358083))))

(assert (=> bs!1642741 (= (and (= (regOne!33222 (regTwo!33223 r!7292)) lt!2385664) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358130 lambda!358017))))

(assert (=> bs!1642735 (not (= lambda!358130 lambda!358107))))

(declare-fun bs!1642746 () Bool)

(assert (= bs!1642746 (and b!6477637 b!6476517)))

(assert (=> bs!1642746 (not (= lambda!358130 lambda!358032))))

(assert (=> bs!1642734 (= (and (= (regOne!33222 (regTwo!33223 r!7292)) lt!2385664) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358130 lambda!358062))))

(declare-fun bs!1642747 () Bool)

(assert (= bs!1642747 (and b!6477637 b!6476306)))

(assert (=> bs!1642747 (= (and (= (regOne!33222 (regTwo!33223 r!7292)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358130 lambda!358014))))

(declare-fun bs!1642748 () Bool)

(assert (= bs!1642748 (and b!6477637 d!2032037)))

(assert (=> bs!1642748 (not (= lambda!358130 lambda!358082))))

(declare-fun bs!1642749 () Bool)

(assert (= bs!1642749 (and b!6477637 b!6477299)))

(assert (=> bs!1642749 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 r!7292)) (regOne!33222 lt!2385664)) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 lt!2385664))) (= lambda!358130 lambda!358105))))

(declare-fun bs!1642750 () Bool)

(assert (= bs!1642750 (and b!6477637 b!6477033)))

(assert (=> bs!1642750 (= (and (= (regOne!33222 (regTwo!33223 r!7292)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358130 lambda!358075))))

(assert (=> bs!1642732 (not (= lambda!358130 lambda!358114))))

(assert (=> bs!1642747 (not (= lambda!358130 lambda!358013))))

(declare-fun bs!1642751 () Bool)

(assert (= bs!1642751 (and b!6477637 d!2031905)))

(assert (=> bs!1642751 (not (= lambda!358130 lambda!358052))))

(assert (=> bs!1642737 (not (= lambda!358130 lambda!358019))))

(assert (=> bs!1642745 (= (and (= (regOne!33222 (regTwo!33223 r!7292)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358130 lambda!358084))))

(declare-fun bs!1642752 () Bool)

(assert (= bs!1642752 (and b!6477637 d!2032237)))

(assert (=> bs!1642752 (not (= lambda!358130 lambda!358122))))

(assert (=> b!6477637 true))

(assert (=> b!6477637 true))

(declare-fun b!6477629 () Bool)

(declare-fun res!2659747 () Bool)

(declare-fun e!3926451 () Bool)

(assert (=> b!6477629 (=> res!2659747 e!3926451)))

(declare-fun call!560532 () Bool)

(assert (=> b!6477629 (= res!2659747 call!560532)))

(declare-fun e!3926445 () Bool)

(assert (=> b!6477629 (= e!3926445 e!3926451)))

(declare-fun b!6477630 () Bool)

(declare-fun e!3926448 () Bool)

(assert (=> b!6477630 (= e!3926448 e!3926445)))

(declare-fun c!1186436 () Bool)

(assert (=> b!6477630 (= c!1186436 ((_ is Star!16355) (regTwo!33223 r!7292)))))

(declare-fun b!6477631 () Bool)

(declare-fun c!1186435 () Bool)

(assert (=> b!6477631 (= c!1186435 ((_ is Union!16355) (regTwo!33223 r!7292)))))

(declare-fun e!3926449 () Bool)

(assert (=> b!6477631 (= e!3926449 e!3926448)))

(declare-fun b!6477632 () Bool)

(declare-fun c!1186434 () Bool)

(assert (=> b!6477632 (= c!1186434 ((_ is ElementMatch!16355) (regTwo!33223 r!7292)))))

(declare-fun e!3926446 () Bool)

(assert (=> b!6477632 (= e!3926446 e!3926449)))

(declare-fun b!6477633 () Bool)

(declare-fun e!3926447 () Bool)

(assert (=> b!6477633 (= e!3926447 call!560532)))

(declare-fun b!6477634 () Bool)

(assert (=> b!6477634 (= e!3926447 e!3926446)))

(declare-fun res!2659746 () Bool)

(assert (=> b!6477634 (= res!2659746 (not ((_ is EmptyLang!16355) (regTwo!33223 r!7292))))))

(assert (=> b!6477634 (=> (not res!2659746) (not e!3926446))))

(declare-fun d!2032251 () Bool)

(declare-fun c!1186433 () Bool)

(assert (=> d!2032251 (= c!1186433 ((_ is EmptyExpr!16355) (regTwo!33223 r!7292)))))

(assert (=> d!2032251 (= (matchRSpec!3456 (regTwo!33223 r!7292) s!2326) e!3926447)))

(declare-fun call!560531 () Bool)

(assert (=> b!6477635 (= e!3926451 call!560531)))

(declare-fun bm!560526 () Bool)

(assert (=> bm!560526 (= call!560532 (isEmpty!37424 s!2326))))

(declare-fun b!6477636 () Bool)

(declare-fun e!3926450 () Bool)

(assert (=> b!6477636 (= e!3926448 e!3926450)))

(declare-fun res!2659748 () Bool)

(assert (=> b!6477636 (= res!2659748 (matchRSpec!3456 (regOne!33223 (regTwo!33223 r!7292)) s!2326))))

(assert (=> b!6477636 (=> res!2659748 e!3926450)))

(assert (=> b!6477637 (= e!3926445 call!560531)))

(declare-fun bm!560527 () Bool)

(assert (=> bm!560527 (= call!560531 (Exists!3425 (ite c!1186436 lambda!358129 lambda!358130)))))

(declare-fun b!6477638 () Bool)

(assert (=> b!6477638 (= e!3926449 (= s!2326 (Cons!65240 (c!1186089 (regTwo!33223 r!7292)) Nil!65240)))))

(declare-fun b!6477639 () Bool)

(assert (=> b!6477639 (= e!3926450 (matchRSpec!3456 (regTwo!33223 (regTwo!33223 r!7292)) s!2326))))

(assert (= (and d!2032251 c!1186433) b!6477633))

(assert (= (and d!2032251 (not c!1186433)) b!6477634))

(assert (= (and b!6477634 res!2659746) b!6477632))

(assert (= (and b!6477632 c!1186434) b!6477638))

(assert (= (and b!6477632 (not c!1186434)) b!6477631))

(assert (= (and b!6477631 c!1186435) b!6477636))

(assert (= (and b!6477631 (not c!1186435)) b!6477630))

(assert (= (and b!6477636 (not res!2659748)) b!6477639))

(assert (= (and b!6477630 c!1186436) b!6477629))

(assert (= (and b!6477630 (not c!1186436)) b!6477637))

(assert (= (and b!6477629 (not res!2659747)) b!6477635))

(assert (= (or b!6477635 b!6477637) bm!560527))

(assert (= (or b!6477633 b!6477629) bm!560526))

(assert (=> bm!560526 m!7264716))

(declare-fun m!7265946 () Bool)

(assert (=> b!6477636 m!7265946))

(declare-fun m!7265948 () Bool)

(assert (=> bm!560527 m!7265948))

(declare-fun m!7265950 () Bool)

(assert (=> b!6477639 m!7265950))

(assert (=> b!6477035 d!2032251))

(declare-fun b!6477654 () Bool)

(declare-fun e!3926466 () Bool)

(declare-fun e!3926469 () Bool)

(assert (=> b!6477654 (= e!3926466 e!3926469)))

(declare-fun res!2659761 () Bool)

(declare-fun call!560538 () Bool)

(assert (=> b!6477654 (= res!2659761 call!560538)))

(assert (=> b!6477654 (=> res!2659761 e!3926469)))

(declare-fun b!6477655 () Bool)

(declare-fun e!3926465 () Bool)

(declare-fun call!560537 () Bool)

(assert (=> b!6477655 (= e!3926465 call!560537)))

(declare-fun b!6477656 () Bool)

(assert (=> b!6477656 (= e!3926466 e!3926465)))

(declare-fun res!2659760 () Bool)

(assert (=> b!6477656 (= res!2659760 call!560538)))

(assert (=> b!6477656 (=> (not res!2659760) (not e!3926465))))

(declare-fun d!2032253 () Bool)

(declare-fun res!2659762 () Bool)

(declare-fun e!3926467 () Bool)

(assert (=> d!2032253 (=> res!2659762 e!3926467)))

(assert (=> d!2032253 (= res!2659762 ((_ is EmptyExpr!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> d!2032253 (= (nullableFct!2287 (h!71689 (exprs!6239 (h!71690 zl!343)))) e!3926467)))

(declare-fun b!6477657 () Bool)

(declare-fun e!3926464 () Bool)

(declare-fun e!3926468 () Bool)

(assert (=> b!6477657 (= e!3926464 e!3926468)))

(declare-fun res!2659759 () Bool)

(assert (=> b!6477657 (=> res!2659759 e!3926468)))

(assert (=> b!6477657 (= res!2659759 ((_ is Star!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6477658 () Bool)

(assert (=> b!6477658 (= e!3926467 e!3926464)))

(declare-fun res!2659763 () Bool)

(assert (=> b!6477658 (=> (not res!2659763) (not e!3926464))))

(assert (=> b!6477658 (= res!2659763 (and (not ((_ is EmptyLang!16355) (h!71689 (exprs!6239 (h!71690 zl!343))))) (not ((_ is ElementMatch!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))))

(declare-fun bm!560532 () Bool)

(declare-fun c!1186439 () Bool)

(assert (=> bm!560532 (= call!560537 (nullable!6348 (ite c!1186439 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))

(declare-fun b!6477659 () Bool)

(assert (=> b!6477659 (= e!3926469 call!560537)))

(declare-fun b!6477660 () Bool)

(assert (=> b!6477660 (= e!3926468 e!3926466)))

(assert (=> b!6477660 (= c!1186439 ((_ is Union!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun bm!560533 () Bool)

(assert (=> bm!560533 (= call!560538 (nullable!6348 (ite c!1186439 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))

(assert (= (and d!2032253 (not res!2659762)) b!6477658))

(assert (= (and b!6477658 res!2659763) b!6477657))

(assert (= (and b!6477657 (not res!2659759)) b!6477660))

(assert (= (and b!6477660 c!1186439) b!6477654))

(assert (= (and b!6477660 (not c!1186439)) b!6477656))

(assert (= (and b!6477654 (not res!2659761)) b!6477659))

(assert (= (and b!6477656 res!2659760) b!6477655))

(assert (= (or b!6477659 b!6477655) bm!560532))

(assert (= (or b!6477654 b!6477656) bm!560533))

(declare-fun m!7265952 () Bool)

(assert (=> bm!560532 m!7265952))

(declare-fun m!7265954 () Bool)

(assert (=> bm!560533 m!7265954))

(assert (=> d!2031963 d!2032253))

(declare-fun d!2032255 () Bool)

(declare-fun e!3926471 () Bool)

(assert (=> d!2032255 e!3926471))

(declare-fun res!2659765 () Bool)

(assert (=> d!2032255 (=> (not res!2659765) (not e!3926471))))

(declare-fun lt!2385889 () List!65364)

(assert (=> d!2032255 (= res!2659765 (= (content!12410 lt!2385889) ((_ map or) (content!12410 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240))) (content!12410 (t!378988 s!2326)))))))

(declare-fun e!3926470 () List!65364)

(assert (=> d!2032255 (= lt!2385889 e!3926470)))

(declare-fun c!1186440 () Bool)

(assert (=> d!2032255 (= c!1186440 ((_ is Nil!65240) (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240))))))

(assert (=> d!2032255 (= (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326)) lt!2385889)))

(declare-fun b!6477663 () Bool)

(declare-fun res!2659764 () Bool)

(assert (=> b!6477663 (=> (not res!2659764) (not e!3926471))))

(assert (=> b!6477663 (= res!2659764 (= (size!40407 lt!2385889) (+ (size!40407 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240))) (size!40407 (t!378988 s!2326)))))))

(declare-fun b!6477662 () Bool)

(assert (=> b!6477662 (= e!3926470 (Cons!65240 (h!71688 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240))) (++!14423 (t!378988 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240))) (t!378988 s!2326))))))

(declare-fun b!6477664 () Bool)

(assert (=> b!6477664 (= e!3926471 (or (not (= (t!378988 s!2326) Nil!65240)) (= lt!2385889 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)))))))

(declare-fun b!6477661 () Bool)

(assert (=> b!6477661 (= e!3926470 (t!378988 s!2326))))

(assert (= (and d!2032255 c!1186440) b!6477661))

(assert (= (and d!2032255 (not c!1186440)) b!6477662))

(assert (= (and d!2032255 res!2659765) b!6477663))

(assert (= (and b!6477663 res!2659764) b!6477664))

(declare-fun m!7265956 () Bool)

(assert (=> d!2032255 m!7265956))

(assert (=> d!2032255 m!7265158))

(declare-fun m!7265958 () Bool)

(assert (=> d!2032255 m!7265958))

(declare-fun m!7265960 () Bool)

(assert (=> d!2032255 m!7265960))

(declare-fun m!7265962 () Bool)

(assert (=> b!6477663 m!7265962))

(assert (=> b!6477663 m!7265158))

(declare-fun m!7265964 () Bool)

(assert (=> b!6477663 m!7265964))

(declare-fun m!7265966 () Bool)

(assert (=> b!6477663 m!7265966))

(declare-fun m!7265968 () Bool)

(assert (=> b!6477662 m!7265968))

(assert (=> b!6477105 d!2032255))

(declare-fun d!2032257 () Bool)

(declare-fun e!3926473 () Bool)

(assert (=> d!2032257 e!3926473))

(declare-fun res!2659767 () Bool)

(assert (=> d!2032257 (=> (not res!2659767) (not e!3926473))))

(declare-fun lt!2385890 () List!65364)

(assert (=> d!2032257 (= res!2659767 (= (content!12410 lt!2385890) ((_ map or) (content!12410 Nil!65240) (content!12410 (Cons!65240 (h!71688 s!2326) Nil!65240)))))))

(declare-fun e!3926472 () List!65364)

(assert (=> d!2032257 (= lt!2385890 e!3926472)))

(declare-fun c!1186441 () Bool)

(assert (=> d!2032257 (= c!1186441 ((_ is Nil!65240) Nil!65240))))

(assert (=> d!2032257 (= (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) lt!2385890)))

(declare-fun b!6477667 () Bool)

(declare-fun res!2659766 () Bool)

(assert (=> b!6477667 (=> (not res!2659766) (not e!3926473))))

(assert (=> b!6477667 (= res!2659766 (= (size!40407 lt!2385890) (+ (size!40407 Nil!65240) (size!40407 (Cons!65240 (h!71688 s!2326) Nil!65240)))))))

(declare-fun b!6477666 () Bool)

(assert (=> b!6477666 (= e!3926472 (Cons!65240 (h!71688 Nil!65240) (++!14423 (t!378988 Nil!65240) (Cons!65240 (h!71688 s!2326) Nil!65240))))))

(declare-fun b!6477668 () Bool)

(assert (=> b!6477668 (= e!3926473 (or (not (= (Cons!65240 (h!71688 s!2326) Nil!65240) Nil!65240)) (= lt!2385890 Nil!65240)))))

(declare-fun b!6477665 () Bool)

(assert (=> b!6477665 (= e!3926472 (Cons!65240 (h!71688 s!2326) Nil!65240))))

(assert (= (and d!2032257 c!1186441) b!6477665))

(assert (= (and d!2032257 (not c!1186441)) b!6477666))

(assert (= (and d!2032257 res!2659767) b!6477667))

(assert (= (and b!6477667 res!2659766) b!6477668))

(declare-fun m!7265970 () Bool)

(assert (=> d!2032257 m!7265970))

(assert (=> d!2032257 m!7265792))

(declare-fun m!7265972 () Bool)

(assert (=> d!2032257 m!7265972))

(declare-fun m!7265974 () Bool)

(assert (=> b!6477667 m!7265974))

(assert (=> b!6477667 m!7265798))

(declare-fun m!7265976 () Bool)

(assert (=> b!6477667 m!7265976))

(declare-fun m!7265978 () Bool)

(assert (=> b!6477666 m!7265978))

(assert (=> b!6477105 d!2032257))

(declare-fun d!2032259 () Bool)

(assert (=> d!2032259 (= (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326)) s!2326)))

(declare-fun lt!2385891 () Unit!158751)

(assert (=> d!2032259 (= lt!2385891 (choose!48022 Nil!65240 (h!71688 s!2326) (t!378988 s!2326) s!2326))))

(assert (=> d!2032259 (= (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) (t!378988 s!2326))) s!2326)))

(assert (=> d!2032259 (= (lemmaMoveElementToOtherListKeepsConcatEq!2511 Nil!65240 (h!71688 s!2326) (t!378988 s!2326) s!2326) lt!2385891)))

(declare-fun bs!1642753 () Bool)

(assert (= bs!1642753 d!2032259))

(assert (=> bs!1642753 m!7265158))

(assert (=> bs!1642753 m!7265158))

(assert (=> bs!1642753 m!7265160))

(declare-fun m!7265980 () Bool)

(assert (=> bs!1642753 m!7265980))

(declare-fun m!7265982 () Bool)

(assert (=> bs!1642753 m!7265982))

(assert (=> b!6477105 d!2032259))

(declare-fun b!6477669 () Bool)

(declare-fun e!3926477 () Bool)

(assert (=> b!6477669 (= e!3926477 (matchR!8538 (regTwo!33222 r!7292) (t!378988 s!2326)))))

(declare-fun b!6477670 () Bool)

(declare-fun lt!2385894 () Unit!158751)

(declare-fun lt!2385893 () Unit!158751)

(assert (=> b!6477670 (= lt!2385894 lt!2385893)))

(assert (=> b!6477670 (= (++!14423 (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (Cons!65240 (h!71688 (t!378988 s!2326)) Nil!65240)) (t!378988 (t!378988 s!2326))) s!2326)))

(assert (=> b!6477670 (= lt!2385893 (lemmaMoveElementToOtherListKeepsConcatEq!2511 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (h!71688 (t!378988 s!2326)) (t!378988 (t!378988 s!2326)) s!2326))))

(declare-fun e!3926476 () Option!16246)

(assert (=> b!6477670 (= e!3926476 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (Cons!65240 (h!71688 (t!378988 s!2326)) Nil!65240)) (t!378988 (t!378988 s!2326)) s!2326))))

(declare-fun b!6477671 () Bool)

(declare-fun res!2659772 () Bool)

(declare-fun e!3926478 () Bool)

(assert (=> b!6477671 (=> (not res!2659772) (not e!3926478))))

(declare-fun lt!2385892 () Option!16246)

(assert (=> b!6477671 (= res!2659772 (matchR!8538 (regOne!33222 r!7292) (_1!36637 (get!22616 lt!2385892))))))

(declare-fun b!6477672 () Bool)

(declare-fun e!3926474 () Option!16246)

(assert (=> b!6477672 (= e!3926474 e!3926476)))

(declare-fun c!1186443 () Bool)

(assert (=> b!6477672 (= c!1186443 ((_ is Nil!65240) (t!378988 s!2326)))))

(declare-fun d!2032261 () Bool)

(declare-fun e!3926475 () Bool)

(assert (=> d!2032261 e!3926475))

(declare-fun res!2659768 () Bool)

(assert (=> d!2032261 (=> res!2659768 e!3926475)))

(assert (=> d!2032261 (= res!2659768 e!3926478)))

(declare-fun res!2659770 () Bool)

(assert (=> d!2032261 (=> (not res!2659770) (not e!3926478))))

(assert (=> d!2032261 (= res!2659770 (isDefined!12949 lt!2385892))))

(assert (=> d!2032261 (= lt!2385892 e!3926474)))

(declare-fun c!1186442 () Bool)

(assert (=> d!2032261 (= c!1186442 e!3926477)))

(declare-fun res!2659769 () Bool)

(assert (=> d!2032261 (=> (not res!2659769) (not e!3926477))))

(assert (=> d!2032261 (= res!2659769 (matchR!8538 (regOne!33222 r!7292) (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240))))))

(assert (=> d!2032261 (validRegex!8091 (regOne!33222 r!7292))))

(assert (=> d!2032261 (= (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326) s!2326) lt!2385892)))

(declare-fun b!6477673 () Bool)

(declare-fun res!2659771 () Bool)

(assert (=> b!6477673 (=> (not res!2659771) (not e!3926478))))

(assert (=> b!6477673 (= res!2659771 (matchR!8538 (regTwo!33222 r!7292) (_2!36637 (get!22616 lt!2385892))))))

(declare-fun b!6477674 () Bool)

(assert (=> b!6477674 (= e!3926474 (Some!16245 (tuple2!66669 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326))))))

(declare-fun b!6477675 () Bool)

(assert (=> b!6477675 (= e!3926475 (not (isDefined!12949 lt!2385892)))))

(declare-fun b!6477676 () Bool)

(assert (=> b!6477676 (= e!3926478 (= (++!14423 (_1!36637 (get!22616 lt!2385892)) (_2!36637 (get!22616 lt!2385892))) s!2326))))

(declare-fun b!6477677 () Bool)

(assert (=> b!6477677 (= e!3926476 None!16245)))

(assert (= (and d!2032261 res!2659769) b!6477669))

(assert (= (and d!2032261 c!1186442) b!6477674))

(assert (= (and d!2032261 (not c!1186442)) b!6477672))

(assert (= (and b!6477672 c!1186443) b!6477677))

(assert (= (and b!6477672 (not c!1186443)) b!6477670))

(assert (= (and d!2032261 res!2659770) b!6477671))

(assert (= (and b!6477671 res!2659772) b!6477673))

(assert (= (and b!6477673 res!2659771) b!6477676))

(assert (= (and d!2032261 (not res!2659768)) b!6477675))

(assert (=> b!6477670 m!7265158))

(declare-fun m!7265984 () Bool)

(assert (=> b!6477670 m!7265984))

(assert (=> b!6477670 m!7265984))

(declare-fun m!7265986 () Bool)

(assert (=> b!6477670 m!7265986))

(assert (=> b!6477670 m!7265158))

(declare-fun m!7265988 () Bool)

(assert (=> b!6477670 m!7265988))

(assert (=> b!6477670 m!7265984))

(declare-fun m!7265990 () Bool)

(assert (=> b!6477670 m!7265990))

(declare-fun m!7265992 () Bool)

(assert (=> b!6477676 m!7265992))

(declare-fun m!7265994 () Bool)

(assert (=> b!6477676 m!7265994))

(declare-fun m!7265996 () Bool)

(assert (=> b!6477675 m!7265996))

(assert (=> d!2032261 m!7265996))

(assert (=> d!2032261 m!7265158))

(declare-fun m!7265998 () Bool)

(assert (=> d!2032261 m!7265998))

(assert (=> d!2032261 m!7265434))

(assert (=> b!6477671 m!7265992))

(declare-fun m!7266000 () Bool)

(assert (=> b!6477671 m!7266000))

(assert (=> b!6477673 m!7265992))

(declare-fun m!7266002 () Bool)

(assert (=> b!6477673 m!7266002))

(declare-fun m!7266004 () Bool)

(assert (=> b!6477669 m!7266004))

(assert (=> b!6477105 d!2032261))

(assert (=> d!2032061 d!2032067))

(declare-fun d!2032263 () Bool)

(assert (=> d!2032263 (= (flatMap!1860 lt!2385677 lambda!358015) (dynLambda!25915 lambda!358015 lt!2385665))))

(assert (=> d!2032263 true))

(declare-fun _$13!3695 () Unit!158751)

(assert (=> d!2032263 (= (choose!48009 lt!2385677 lt!2385665 lambda!358015) _$13!3695)))

(declare-fun b_lambda!245395 () Bool)

(assert (=> (not b_lambda!245395) (not d!2032263)))

(declare-fun bs!1642754 () Bool)

(assert (= bs!1642754 d!2032263))

(assert (=> bs!1642754 m!7264534))

(assert (=> bs!1642754 m!7265496))

(assert (=> d!2032061 d!2032263))

(declare-fun b!6477678 () Bool)

(declare-fun e!3926481 () Bool)

(declare-fun e!3926482 () Bool)

(assert (=> b!6477678 (= e!3926481 e!3926482)))

(declare-fun res!2659777 () Bool)

(assert (=> b!6477678 (= res!2659777 (not (nullable!6348 (reg!16684 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))))))))

(assert (=> b!6477678 (=> (not res!2659777) (not e!3926482))))

(declare-fun b!6477679 () Bool)

(declare-fun e!3926483 () Bool)

(declare-fun call!560539 () Bool)

(assert (=> b!6477679 (= e!3926483 call!560539)))

(declare-fun b!6477680 () Bool)

(declare-fun e!3926479 () Bool)

(assert (=> b!6477680 (= e!3926479 e!3926481)))

(declare-fun c!1186445 () Bool)

(assert (=> b!6477680 (= c!1186445 ((_ is Star!16355) (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))))))

(declare-fun b!6477681 () Bool)

(declare-fun e!3926485 () Bool)

(assert (=> b!6477681 (= e!3926485 call!560539)))

(declare-fun b!6477682 () Bool)

(declare-fun e!3926484 () Bool)

(assert (=> b!6477682 (= e!3926484 e!3926483)))

(declare-fun res!2659773 () Bool)

(assert (=> b!6477682 (=> (not res!2659773) (not e!3926483))))

(declare-fun call!560541 () Bool)

(assert (=> b!6477682 (= res!2659773 call!560541)))

(declare-fun c!1186444 () Bool)

(declare-fun bm!560534 () Bool)

(assert (=> bm!560534 (= call!560541 (validRegex!8091 (ite c!1186444 (regOne!33223 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))) (regOne!33222 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))))))))

(declare-fun bm!560535 () Bool)

(declare-fun call!560540 () Bool)

(assert (=> bm!560535 (= call!560539 call!560540)))

(declare-fun b!6477683 () Bool)

(assert (=> b!6477683 (= e!3926482 call!560540)))

(declare-fun bm!560536 () Bool)

(assert (=> bm!560536 (= call!560540 (validRegex!8091 (ite c!1186445 (reg!16684 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))) (ite c!1186444 (regTwo!33223 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))) (regTwo!33222 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292))))))))))

(declare-fun b!6477684 () Bool)

(declare-fun res!2659776 () Bool)

(assert (=> b!6477684 (=> (not res!2659776) (not e!3926485))))

(assert (=> b!6477684 (= res!2659776 call!560541)))

(declare-fun e!3926480 () Bool)

(assert (=> b!6477684 (= e!3926480 e!3926485)))

(declare-fun d!2032265 () Bool)

(declare-fun res!2659775 () Bool)

(assert (=> d!2032265 (=> res!2659775 e!3926479)))

(assert (=> d!2032265 (= res!2659775 ((_ is ElementMatch!16355) (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))))))

(assert (=> d!2032265 (= (validRegex!8091 (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))) e!3926479)))

(declare-fun b!6477685 () Bool)

(assert (=> b!6477685 (= e!3926481 e!3926480)))

(assert (=> b!6477685 (= c!1186444 ((_ is Union!16355) (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292)))))))

(declare-fun b!6477686 () Bool)

(declare-fun res!2659774 () Bool)

(assert (=> b!6477686 (=> res!2659774 e!3926484)))

(assert (=> b!6477686 (= res!2659774 (not ((_ is Concat!25200) (ite c!1186340 (reg!16684 r!7292) (ite c!1186339 (regTwo!33223 r!7292) (regTwo!33222 r!7292))))))))

(assert (=> b!6477686 (= e!3926480 e!3926484)))

(assert (= (and d!2032265 (not res!2659775)) b!6477680))

(assert (= (and b!6477680 c!1186445) b!6477678))

(assert (= (and b!6477680 (not c!1186445)) b!6477685))

(assert (= (and b!6477678 res!2659777) b!6477683))

(assert (= (and b!6477685 c!1186444) b!6477684))

(assert (= (and b!6477685 (not c!1186444)) b!6477686))

(assert (= (and b!6477684 res!2659776) b!6477681))

(assert (= (and b!6477686 (not res!2659774)) b!6477682))

(assert (= (and b!6477682 res!2659773) b!6477679))

(assert (= (or b!6477681 b!6477679) bm!560535))

(assert (= (or b!6477684 b!6477682) bm!560534))

(assert (= (or b!6477683 bm!560535) bm!560536))

(declare-fun m!7266006 () Bool)

(assert (=> b!6477678 m!7266006))

(declare-fun m!7266008 () Bool)

(assert (=> bm!560534 m!7266008))

(declare-fun m!7266010 () Bool)

(assert (=> bm!560536 m!7266010))

(assert (=> bm!560482 d!2032265))

(declare-fun d!2032267 () Bool)

(declare-fun lt!2385897 () Int)

(assert (=> d!2032267 (>= lt!2385897 0)))

(declare-fun e!3926488 () Int)

(assert (=> d!2032267 (= lt!2385897 e!3926488)))

(declare-fun c!1186448 () Bool)

(assert (=> d!2032267 (= c!1186448 ((_ is Nil!65240) lt!2385786))))

(assert (=> d!2032267 (= (size!40407 lt!2385786) lt!2385897)))

(declare-fun b!6477691 () Bool)

(assert (=> b!6477691 (= e!3926488 0)))

(declare-fun b!6477692 () Bool)

(assert (=> b!6477692 (= e!3926488 (+ 1 (size!40407 (t!378988 lt!2385786))))))

(assert (= (and d!2032267 c!1186448) b!6477691))

(assert (= (and d!2032267 (not c!1186448)) b!6477692))

(declare-fun m!7266012 () Bool)

(assert (=> b!6477692 m!7266012))

(assert (=> b!6476924 d!2032267))

(declare-fun d!2032269 () Bool)

(declare-fun lt!2385898 () Int)

(assert (=> d!2032269 (>= lt!2385898 0)))

(declare-fun e!3926489 () Int)

(assert (=> d!2032269 (= lt!2385898 e!3926489)))

(declare-fun c!1186449 () Bool)

(assert (=> d!2032269 (= c!1186449 ((_ is Nil!65240) (_1!36637 lt!2385678)))))

(assert (=> d!2032269 (= (size!40407 (_1!36637 lt!2385678)) lt!2385898)))

(declare-fun b!6477693 () Bool)

(assert (=> b!6477693 (= e!3926489 0)))

(declare-fun b!6477694 () Bool)

(assert (=> b!6477694 (= e!3926489 (+ 1 (size!40407 (t!378988 (_1!36637 lt!2385678)))))))

(assert (= (and d!2032269 c!1186449) b!6477693))

(assert (= (and d!2032269 (not c!1186449)) b!6477694))

(assert (=> b!6477694 m!7265786))

(assert (=> b!6476924 d!2032269))

(declare-fun d!2032271 () Bool)

(declare-fun lt!2385899 () Int)

(assert (=> d!2032271 (>= lt!2385899 0)))

(declare-fun e!3926490 () Int)

(assert (=> d!2032271 (= lt!2385899 e!3926490)))

(declare-fun c!1186450 () Bool)

(assert (=> d!2032271 (= c!1186450 ((_ is Nil!65240) (_2!36637 lt!2385678)))))

(assert (=> d!2032271 (= (size!40407 (_2!36637 lt!2385678)) lt!2385899)))

(declare-fun b!6477695 () Bool)

(assert (=> b!6477695 (= e!3926490 0)))

(declare-fun b!6477696 () Bool)

(assert (=> b!6477696 (= e!3926490 (+ 1 (size!40407 (t!378988 (_2!36637 lt!2385678)))))))

(assert (= (and d!2032271 c!1186450) b!6477695))

(assert (= (and d!2032271 (not c!1186450)) b!6477696))

(declare-fun m!7266014 () Bool)

(assert (=> b!6477696 m!7266014))

(assert (=> b!6476924 d!2032271))

(assert (=> b!6477400 d!2032097))

(assert (=> bm!560488 d!2031901))

(declare-fun d!2032273 () Bool)

(assert (=> d!2032273 (= (isEmpty!37424 s!2326) ((_ is Nil!65240) s!2326))))

(assert (=> bm!560466 d!2032273))

(declare-fun d!2032275 () Bool)

(assert (=> d!2032275 (= (isDefined!12949 lt!2385822) (not (isEmpty!37425 lt!2385822)))))

(declare-fun bs!1642755 () Bool)

(assert (= bs!1642755 d!2032275))

(declare-fun m!7266016 () Bool)

(assert (=> bs!1642755 m!7266016))

(assert (=> d!2032027 d!2032275))

(declare-fun b!6477697 () Bool)

(declare-fun e!3926497 () Bool)

(assert (=> b!6477697 (= e!3926497 (not (= (head!13189 Nil!65240) (c!1186089 (regOne!33222 r!7292)))))))

(declare-fun b!6477698 () Bool)

(declare-fun res!2659780 () Bool)

(declare-fun e!3926491 () Bool)

(assert (=> b!6477698 (=> res!2659780 e!3926491)))

(assert (=> b!6477698 (= res!2659780 (not ((_ is ElementMatch!16355) (regOne!33222 r!7292))))))

(declare-fun e!3926494 () Bool)

(assert (=> b!6477698 (= e!3926494 e!3926491)))

(declare-fun b!6477699 () Bool)

(declare-fun e!3926496 () Bool)

(declare-fun lt!2385900 () Bool)

(declare-fun call!560542 () Bool)

(assert (=> b!6477699 (= e!3926496 (= lt!2385900 call!560542))))

(declare-fun b!6477700 () Bool)

(declare-fun e!3926492 () Bool)

(assert (=> b!6477700 (= e!3926492 (= (head!13189 Nil!65240) (c!1186089 (regOne!33222 r!7292))))))

(declare-fun b!6477701 () Bool)

(declare-fun res!2659783 () Bool)

(assert (=> b!6477701 (=> (not res!2659783) (not e!3926492))))

(assert (=> b!6477701 (= res!2659783 (not call!560542))))

(declare-fun d!2032277 () Bool)

(assert (=> d!2032277 e!3926496))

(declare-fun c!1186451 () Bool)

(assert (=> d!2032277 (= c!1186451 ((_ is EmptyExpr!16355) (regOne!33222 r!7292)))))

(declare-fun e!3926495 () Bool)

(assert (=> d!2032277 (= lt!2385900 e!3926495)))

(declare-fun c!1186453 () Bool)

(assert (=> d!2032277 (= c!1186453 (isEmpty!37424 Nil!65240))))

(assert (=> d!2032277 (validRegex!8091 (regOne!33222 r!7292))))

(assert (=> d!2032277 (= (matchR!8538 (regOne!33222 r!7292) Nil!65240) lt!2385900)))

(declare-fun b!6477702 () Bool)

(declare-fun res!2659785 () Bool)

(assert (=> b!6477702 (=> res!2659785 e!3926491)))

(assert (=> b!6477702 (= res!2659785 e!3926492)))

(declare-fun res!2659778 () Bool)

(assert (=> b!6477702 (=> (not res!2659778) (not e!3926492))))

(assert (=> b!6477702 (= res!2659778 lt!2385900)))

(declare-fun b!6477703 () Bool)

(declare-fun e!3926493 () Bool)

(assert (=> b!6477703 (= e!3926491 e!3926493)))

(declare-fun res!2659784 () Bool)

(assert (=> b!6477703 (=> (not res!2659784) (not e!3926493))))

(assert (=> b!6477703 (= res!2659784 (not lt!2385900))))

(declare-fun b!6477704 () Bool)

(declare-fun res!2659781 () Bool)

(assert (=> b!6477704 (=> res!2659781 e!3926497)))

(assert (=> b!6477704 (= res!2659781 (not (isEmpty!37424 (tail!12274 Nil!65240))))))

(declare-fun b!6477705 () Bool)

(assert (=> b!6477705 (= e!3926495 (matchR!8538 (derivativeStep!5053 (regOne!33222 r!7292) (head!13189 Nil!65240)) (tail!12274 Nil!65240)))))

(declare-fun bm!560537 () Bool)

(assert (=> bm!560537 (= call!560542 (isEmpty!37424 Nil!65240))))

(declare-fun b!6477706 () Bool)

(assert (=> b!6477706 (= e!3926493 e!3926497)))

(declare-fun res!2659782 () Bool)

(assert (=> b!6477706 (=> res!2659782 e!3926497)))

(assert (=> b!6477706 (= res!2659782 call!560542)))

(declare-fun b!6477707 () Bool)

(assert (=> b!6477707 (= e!3926496 e!3926494)))

(declare-fun c!1186452 () Bool)

(assert (=> b!6477707 (= c!1186452 ((_ is EmptyLang!16355) (regOne!33222 r!7292)))))

(declare-fun b!6477708 () Bool)

(declare-fun res!2659779 () Bool)

(assert (=> b!6477708 (=> (not res!2659779) (not e!3926492))))

(assert (=> b!6477708 (= res!2659779 (isEmpty!37424 (tail!12274 Nil!65240)))))

(declare-fun b!6477709 () Bool)

(assert (=> b!6477709 (= e!3926495 (nullable!6348 (regOne!33222 r!7292)))))

(declare-fun b!6477710 () Bool)

(assert (=> b!6477710 (= e!3926494 (not lt!2385900))))

(assert (= (and d!2032277 c!1186453) b!6477709))

(assert (= (and d!2032277 (not c!1186453)) b!6477705))

(assert (= (and d!2032277 c!1186451) b!6477699))

(assert (= (and d!2032277 (not c!1186451)) b!6477707))

(assert (= (and b!6477707 c!1186452) b!6477710))

(assert (= (and b!6477707 (not c!1186452)) b!6477698))

(assert (= (and b!6477698 (not res!2659780)) b!6477702))

(assert (= (and b!6477702 res!2659778) b!6477701))

(assert (= (and b!6477701 res!2659783) b!6477708))

(assert (= (and b!6477708 res!2659779) b!6477700))

(assert (= (and b!6477702 (not res!2659785)) b!6477703))

(assert (= (and b!6477703 res!2659784) b!6477706))

(assert (= (and b!6477706 (not res!2659782)) b!6477704))

(assert (= (and b!6477704 (not res!2659781)) b!6477697))

(assert (= (or b!6477699 b!6477706 b!6477701) bm!560537))

(assert (=> d!2032277 m!7265862))

(assert (=> d!2032277 m!7265434))

(assert (=> b!6477705 m!7265864))

(assert (=> b!6477705 m!7265864))

(declare-fun m!7266018 () Bool)

(assert (=> b!6477705 m!7266018))

(assert (=> b!6477705 m!7265868))

(assert (=> b!6477705 m!7266018))

(assert (=> b!6477705 m!7265868))

(declare-fun m!7266020 () Bool)

(assert (=> b!6477705 m!7266020))

(assert (=> bm!560537 m!7265862))

(assert (=> b!6477704 m!7265868))

(assert (=> b!6477704 m!7265868))

(assert (=> b!6477704 m!7265872))

(assert (=> b!6477700 m!7265864))

(assert (=> b!6477708 m!7265868))

(assert (=> b!6477708 m!7265868))

(assert (=> b!6477708 m!7265872))

(assert (=> b!6477697 m!7265864))

(declare-fun m!7266022 () Bool)

(assert (=> b!6477709 m!7266022))

(assert (=> d!2032027 d!2032277))

(declare-fun b!6477711 () Bool)

(declare-fun e!3926500 () Bool)

(declare-fun e!3926501 () Bool)

(assert (=> b!6477711 (= e!3926500 e!3926501)))

(declare-fun res!2659790 () Bool)

(assert (=> b!6477711 (= res!2659790 (not (nullable!6348 (reg!16684 (regOne!33222 r!7292)))))))

(assert (=> b!6477711 (=> (not res!2659790) (not e!3926501))))

(declare-fun b!6477712 () Bool)

(declare-fun e!3926502 () Bool)

(declare-fun call!560543 () Bool)

(assert (=> b!6477712 (= e!3926502 call!560543)))

(declare-fun b!6477713 () Bool)

(declare-fun e!3926498 () Bool)

(assert (=> b!6477713 (= e!3926498 e!3926500)))

(declare-fun c!1186455 () Bool)

(assert (=> b!6477713 (= c!1186455 ((_ is Star!16355) (regOne!33222 r!7292)))))

(declare-fun b!6477714 () Bool)

(declare-fun e!3926504 () Bool)

(assert (=> b!6477714 (= e!3926504 call!560543)))

(declare-fun b!6477715 () Bool)

(declare-fun e!3926503 () Bool)

(assert (=> b!6477715 (= e!3926503 e!3926502)))

(declare-fun res!2659786 () Bool)

(assert (=> b!6477715 (=> (not res!2659786) (not e!3926502))))

(declare-fun call!560545 () Bool)

(assert (=> b!6477715 (= res!2659786 call!560545)))

(declare-fun bm!560538 () Bool)

(declare-fun c!1186454 () Bool)

(assert (=> bm!560538 (= call!560545 (validRegex!8091 (ite c!1186454 (regOne!33223 (regOne!33222 r!7292)) (regOne!33222 (regOne!33222 r!7292)))))))

(declare-fun bm!560539 () Bool)

(declare-fun call!560544 () Bool)

(assert (=> bm!560539 (= call!560543 call!560544)))

(declare-fun b!6477716 () Bool)

(assert (=> b!6477716 (= e!3926501 call!560544)))

(declare-fun bm!560540 () Bool)

(assert (=> bm!560540 (= call!560544 (validRegex!8091 (ite c!1186455 (reg!16684 (regOne!33222 r!7292)) (ite c!1186454 (regTwo!33223 (regOne!33222 r!7292)) (regTwo!33222 (regOne!33222 r!7292))))))))

(declare-fun b!6477717 () Bool)

(declare-fun res!2659789 () Bool)

(assert (=> b!6477717 (=> (not res!2659789) (not e!3926504))))

(assert (=> b!6477717 (= res!2659789 call!560545)))

(declare-fun e!3926499 () Bool)

(assert (=> b!6477717 (= e!3926499 e!3926504)))

(declare-fun d!2032279 () Bool)

(declare-fun res!2659788 () Bool)

(assert (=> d!2032279 (=> res!2659788 e!3926498)))

(assert (=> d!2032279 (= res!2659788 ((_ is ElementMatch!16355) (regOne!33222 r!7292)))))

(assert (=> d!2032279 (= (validRegex!8091 (regOne!33222 r!7292)) e!3926498)))

(declare-fun b!6477718 () Bool)

(assert (=> b!6477718 (= e!3926500 e!3926499)))

(assert (=> b!6477718 (= c!1186454 ((_ is Union!16355) (regOne!33222 r!7292)))))

(declare-fun b!6477719 () Bool)

(declare-fun res!2659787 () Bool)

(assert (=> b!6477719 (=> res!2659787 e!3926503)))

(assert (=> b!6477719 (= res!2659787 (not ((_ is Concat!25200) (regOne!33222 r!7292))))))

(assert (=> b!6477719 (= e!3926499 e!3926503)))

(assert (= (and d!2032279 (not res!2659788)) b!6477713))

(assert (= (and b!6477713 c!1186455) b!6477711))

(assert (= (and b!6477713 (not c!1186455)) b!6477718))

(assert (= (and b!6477711 res!2659790) b!6477716))

(assert (= (and b!6477718 c!1186454) b!6477717))

(assert (= (and b!6477718 (not c!1186454)) b!6477719))

(assert (= (and b!6477717 res!2659789) b!6477714))

(assert (= (and b!6477719 (not res!2659787)) b!6477715))

(assert (= (and b!6477715 res!2659786) b!6477712))

(assert (= (or b!6477714 b!6477712) bm!560539))

(assert (= (or b!6477717 b!6477715) bm!560538))

(assert (= (or b!6477716 bm!560539) bm!560540))

(assert (=> b!6477711 m!7265378))

(declare-fun m!7266024 () Bool)

(assert (=> bm!560538 m!7266024))

(declare-fun m!7266026 () Bool)

(assert (=> bm!560540 m!7266026))

(assert (=> d!2032027 d!2032279))

(declare-fun d!2032281 () Bool)

(assert (=> d!2032281 (= (isEmpty!37424 (tail!12274 (_1!36637 lt!2385678))) ((_ is Nil!65240) (tail!12274 (_1!36637 lt!2385678))))))

(assert (=> b!6477256 d!2032281))

(assert (=> b!6477256 d!2032195))

(declare-fun b!6477720 () Bool)

(declare-fun e!3926511 () Bool)

(assert (=> b!6477720 (= e!3926511 (not (= (head!13189 (_1!36637 (get!22616 lt!2385779))) (c!1186089 lt!2385664))))))

(declare-fun b!6477721 () Bool)

(declare-fun res!2659793 () Bool)

(declare-fun e!3926505 () Bool)

(assert (=> b!6477721 (=> res!2659793 e!3926505)))

(assert (=> b!6477721 (= res!2659793 (not ((_ is ElementMatch!16355) lt!2385664)))))

(declare-fun e!3926508 () Bool)

(assert (=> b!6477721 (= e!3926508 e!3926505)))

(declare-fun b!6477722 () Bool)

(declare-fun e!3926510 () Bool)

(declare-fun lt!2385901 () Bool)

(declare-fun call!560546 () Bool)

(assert (=> b!6477722 (= e!3926510 (= lt!2385901 call!560546))))

(declare-fun b!6477723 () Bool)

(declare-fun e!3926506 () Bool)

(assert (=> b!6477723 (= e!3926506 (= (head!13189 (_1!36637 (get!22616 lt!2385779))) (c!1186089 lt!2385664)))))

(declare-fun b!6477724 () Bool)

(declare-fun res!2659796 () Bool)

(assert (=> b!6477724 (=> (not res!2659796) (not e!3926506))))

(assert (=> b!6477724 (= res!2659796 (not call!560546))))

(declare-fun d!2032283 () Bool)

(assert (=> d!2032283 e!3926510))

(declare-fun c!1186456 () Bool)

(assert (=> d!2032283 (= c!1186456 ((_ is EmptyExpr!16355) lt!2385664))))

(declare-fun e!3926509 () Bool)

(assert (=> d!2032283 (= lt!2385901 e!3926509)))

(declare-fun c!1186458 () Bool)

(assert (=> d!2032283 (= c!1186458 (isEmpty!37424 (_1!36637 (get!22616 lt!2385779))))))

(assert (=> d!2032283 (validRegex!8091 lt!2385664)))

(assert (=> d!2032283 (= (matchR!8538 lt!2385664 (_1!36637 (get!22616 lt!2385779))) lt!2385901)))

(declare-fun b!6477725 () Bool)

(declare-fun res!2659798 () Bool)

(assert (=> b!6477725 (=> res!2659798 e!3926505)))

(assert (=> b!6477725 (= res!2659798 e!3926506)))

(declare-fun res!2659791 () Bool)

(assert (=> b!6477725 (=> (not res!2659791) (not e!3926506))))

(assert (=> b!6477725 (= res!2659791 lt!2385901)))

(declare-fun b!6477726 () Bool)

(declare-fun e!3926507 () Bool)

(assert (=> b!6477726 (= e!3926505 e!3926507)))

(declare-fun res!2659797 () Bool)

(assert (=> b!6477726 (=> (not res!2659797) (not e!3926507))))

(assert (=> b!6477726 (= res!2659797 (not lt!2385901))))

(declare-fun b!6477727 () Bool)

(declare-fun res!2659794 () Bool)

(assert (=> b!6477727 (=> res!2659794 e!3926511)))

(assert (=> b!6477727 (= res!2659794 (not (isEmpty!37424 (tail!12274 (_1!36637 (get!22616 lt!2385779))))))))

(declare-fun b!6477728 () Bool)

(assert (=> b!6477728 (= e!3926509 (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 (_1!36637 (get!22616 lt!2385779)))) (tail!12274 (_1!36637 (get!22616 lt!2385779)))))))

(declare-fun bm!560541 () Bool)

(assert (=> bm!560541 (= call!560546 (isEmpty!37424 (_1!36637 (get!22616 lt!2385779))))))

(declare-fun b!6477729 () Bool)

(assert (=> b!6477729 (= e!3926507 e!3926511)))

(declare-fun res!2659795 () Bool)

(assert (=> b!6477729 (=> res!2659795 e!3926511)))

(assert (=> b!6477729 (= res!2659795 call!560546)))

(declare-fun b!6477730 () Bool)

(assert (=> b!6477730 (= e!3926510 e!3926508)))

(declare-fun c!1186457 () Bool)

(assert (=> b!6477730 (= c!1186457 ((_ is EmptyLang!16355) lt!2385664))))

(declare-fun b!6477731 () Bool)

(declare-fun res!2659792 () Bool)

(assert (=> b!6477731 (=> (not res!2659792) (not e!3926506))))

(assert (=> b!6477731 (= res!2659792 (isEmpty!37424 (tail!12274 (_1!36637 (get!22616 lt!2385779)))))))

(declare-fun b!6477732 () Bool)

(assert (=> b!6477732 (= e!3926509 (nullable!6348 lt!2385664))))

(declare-fun b!6477733 () Bool)

(assert (=> b!6477733 (= e!3926508 (not lt!2385901))))

(assert (= (and d!2032283 c!1186458) b!6477732))

(assert (= (and d!2032283 (not c!1186458)) b!6477728))

(assert (= (and d!2032283 c!1186456) b!6477722))

(assert (= (and d!2032283 (not c!1186456)) b!6477730))

(assert (= (and b!6477730 c!1186457) b!6477733))

(assert (= (and b!6477730 (not c!1186457)) b!6477721))

(assert (= (and b!6477721 (not res!2659793)) b!6477725))

(assert (= (and b!6477725 res!2659791) b!6477724))

(assert (= (and b!6477724 res!2659796) b!6477731))

(assert (= (and b!6477731 res!2659792) b!6477723))

(assert (= (and b!6477725 (not res!2659798)) b!6477726))

(assert (= (and b!6477726 res!2659797) b!6477729))

(assert (= (and b!6477729 (not res!2659795)) b!6477727))

(assert (= (and b!6477727 (not res!2659794)) b!6477720))

(assert (= (or b!6477722 b!6477729 b!6477724) bm!560541))

(declare-fun m!7266028 () Bool)

(assert (=> d!2032283 m!7266028))

(assert (=> d!2032283 m!7264892))

(declare-fun m!7266030 () Bool)

(assert (=> b!6477728 m!7266030))

(assert (=> b!6477728 m!7266030))

(declare-fun m!7266032 () Bool)

(assert (=> b!6477728 m!7266032))

(declare-fun m!7266034 () Bool)

(assert (=> b!6477728 m!7266034))

(assert (=> b!6477728 m!7266032))

(assert (=> b!6477728 m!7266034))

(declare-fun m!7266036 () Bool)

(assert (=> b!6477728 m!7266036))

(assert (=> bm!560541 m!7266028))

(assert (=> b!6477727 m!7266034))

(assert (=> b!6477727 m!7266034))

(declare-fun m!7266038 () Bool)

(assert (=> b!6477727 m!7266038))

(assert (=> b!6477723 m!7266030))

(assert (=> b!6477731 m!7266034))

(assert (=> b!6477731 m!7266034))

(assert (=> b!6477731 m!7266038))

(assert (=> b!6477720 m!7266030))

(assert (=> b!6477732 m!7264904))

(assert (=> b!6476899 d!2032283))

(declare-fun d!2032285 () Bool)

(assert (=> d!2032285 (= (get!22616 lt!2385779) (v!52424 lt!2385779))))

(assert (=> b!6476899 d!2032285))

(declare-fun d!2032287 () Bool)

(declare-fun c!1186459 () Bool)

(assert (=> d!2032287 (= c!1186459 (isEmpty!37424 (tail!12274 (t!378988 s!2326))))))

(declare-fun e!3926512 () Bool)

(assert (=> d!2032287 (= (matchZipper!2367 (derivationStepZipper!2321 lt!2385659 (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))) e!3926512)))

(declare-fun b!6477734 () Bool)

(assert (=> b!6477734 (= e!3926512 (nullableZipper!2114 (derivationStepZipper!2321 lt!2385659 (head!13189 (t!378988 s!2326)))))))

(declare-fun b!6477735 () Bool)

(assert (=> b!6477735 (= e!3926512 (matchZipper!2367 (derivationStepZipper!2321 (derivationStepZipper!2321 lt!2385659 (head!13189 (t!378988 s!2326))) (head!13189 (tail!12274 (t!378988 s!2326)))) (tail!12274 (tail!12274 (t!378988 s!2326)))))))

(assert (= (and d!2032287 c!1186459) b!6477734))

(assert (= (and d!2032287 (not c!1186459)) b!6477735))

(assert (=> d!2032287 m!7265002))

(declare-fun m!7266040 () Bool)

(assert (=> d!2032287 m!7266040))

(assert (=> b!6477734 m!7265000))

(declare-fun m!7266042 () Bool)

(assert (=> b!6477734 m!7266042))

(assert (=> b!6477735 m!7265002))

(declare-fun m!7266044 () Bool)

(assert (=> b!6477735 m!7266044))

(assert (=> b!6477735 m!7265000))

(assert (=> b!6477735 m!7266044))

(declare-fun m!7266046 () Bool)

(assert (=> b!6477735 m!7266046))

(assert (=> b!6477735 m!7265002))

(declare-fun m!7266048 () Bool)

(assert (=> b!6477735 m!7266048))

(assert (=> b!6477735 m!7266046))

(assert (=> b!6477735 m!7266048))

(declare-fun m!7266050 () Bool)

(assert (=> b!6477735 m!7266050))

(assert (=> b!6476740 d!2032287))

(declare-fun bs!1642756 () Bool)

(declare-fun d!2032289 () Bool)

(assert (= bs!1642756 (and d!2032289 b!6476340)))

(declare-fun lambda!358131 () Int)

(assert (=> bs!1642756 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358131 lambda!358015))))

(declare-fun bs!1642757 () Bool)

(assert (= bs!1642757 (and d!2032289 d!2032025)))

(assert (=> bs!1642757 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358131 lambda!358081))))

(assert (=> d!2032289 true))

(assert (=> d!2032289 (= (derivationStepZipper!2321 lt!2385659 (head!13189 (t!378988 s!2326))) (flatMap!1860 lt!2385659 lambda!358131))))

(declare-fun bs!1642758 () Bool)

(assert (= bs!1642758 d!2032289))

(declare-fun m!7266052 () Bool)

(assert (=> bs!1642758 m!7266052))

(assert (=> b!6476740 d!2032289))

(declare-fun d!2032291 () Bool)

(assert (=> d!2032291 (= (head!13189 (t!378988 s!2326)) (h!71688 (t!378988 s!2326)))))

(assert (=> b!6476740 d!2032291))

(declare-fun d!2032293 () Bool)

(assert (=> d!2032293 (= (tail!12274 (t!378988 s!2326)) (t!378988 (t!378988 s!2326)))))

(assert (=> b!6476740 d!2032293))

(declare-fun d!2032295 () Bool)

(assert (=> d!2032295 (= (isEmpty!37424 (tail!12274 (_1!36637 lt!2385692))) ((_ is Nil!65240) (tail!12274 (_1!36637 lt!2385692))))))

(assert (=> b!6477090 d!2032295))

(declare-fun d!2032297 () Bool)

(assert (=> d!2032297 (= (tail!12274 (_1!36637 lt!2385692)) (t!378988 (_1!36637 lt!2385692)))))

(assert (=> b!6477090 d!2032297))

(declare-fun call!560547 () (InoxSet Context!11478))

(declare-fun c!1186461 () Bool)

(declare-fun c!1186460 () Bool)

(declare-fun call!560549 () List!65365)

(declare-fun bm!560542 () Bool)

(declare-fun c!1186462 () Bool)

(assert (=> bm!560542 (= call!560547 (derivationStepZipperDown!1603 (ite c!1186462 (regOne!33223 (h!71689 (exprs!6239 lt!2385688))) (ite c!1186461 (regTwo!33222 (h!71689 (exprs!6239 lt!2385688))) (ite c!1186460 (regOne!33222 (h!71689 (exprs!6239 lt!2385688))) (reg!16684 (h!71689 (exprs!6239 lt!2385688)))))) (ite (or c!1186462 c!1186461) (Context!11479 (t!378989 (exprs!6239 lt!2385688))) (Context!11479 call!560549)) (h!71688 s!2326)))))

(declare-fun b!6477736 () Bool)

(declare-fun e!3926517 () Bool)

(assert (=> b!6477736 (= c!1186461 e!3926517)))

(declare-fun res!2659799 () Bool)

(assert (=> b!6477736 (=> (not res!2659799) (not e!3926517))))

(assert (=> b!6477736 (= res!2659799 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385688))))))

(declare-fun e!3926515 () (InoxSet Context!11478))

(declare-fun e!3926514 () (InoxSet Context!11478))

(assert (=> b!6477736 (= e!3926515 e!3926514)))

(declare-fun b!6477737 () Bool)

(declare-fun c!1186464 () Bool)

(assert (=> b!6477737 (= c!1186464 ((_ is Star!16355) (h!71689 (exprs!6239 lt!2385688))))))

(declare-fun e!3926518 () (InoxSet Context!11478))

(declare-fun e!3926516 () (InoxSet Context!11478))

(assert (=> b!6477737 (= e!3926518 e!3926516)))

(declare-fun d!2032299 () Bool)

(declare-fun c!1186463 () Bool)

(assert (=> d!2032299 (= c!1186463 (and ((_ is ElementMatch!16355) (h!71689 (exprs!6239 lt!2385688))) (= (c!1186089 (h!71689 (exprs!6239 lt!2385688))) (h!71688 s!2326))))))

(declare-fun e!3926513 () (InoxSet Context!11478))

(assert (=> d!2032299 (= (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385688)) (Context!11479 (t!378989 (exprs!6239 lt!2385688))) (h!71688 s!2326)) e!3926513)))

(declare-fun bm!560543 () Bool)

(declare-fun call!560552 () List!65365)

(assert (=> bm!560543 (= call!560549 call!560552)))

(declare-fun b!6477738 () Bool)

(assert (=> b!6477738 (= e!3926517 (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 lt!2385688)))))))

(declare-fun b!6477739 () Bool)

(assert (=> b!6477739 (= e!3926516 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560544 () Bool)

(declare-fun call!560550 () (InoxSet Context!11478))

(declare-fun call!560551 () (InoxSet Context!11478))

(assert (=> bm!560544 (= call!560550 call!560551)))

(declare-fun b!6477740 () Bool)

(assert (=> b!6477740 (= e!3926516 call!560550)))

(declare-fun b!6477741 () Bool)

(declare-fun call!560548 () (InoxSet Context!11478))

(assert (=> b!6477741 (= e!3926515 ((_ map or) call!560547 call!560548))))

(declare-fun b!6477742 () Bool)

(assert (=> b!6477742 (= e!3926513 (store ((as const (Array Context!11478 Bool)) false) (Context!11479 (t!378989 (exprs!6239 lt!2385688))) true))))

(declare-fun b!6477743 () Bool)

(assert (=> b!6477743 (= e!3926513 e!3926515)))

(assert (=> b!6477743 (= c!1186462 ((_ is Union!16355) (h!71689 (exprs!6239 lt!2385688))))))

(declare-fun bm!560545 () Bool)

(assert (=> bm!560545 (= call!560552 ($colon$colon!2210 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385688)))) (ite (or c!1186461 c!1186460) (regTwo!33222 (h!71689 (exprs!6239 lt!2385688))) (h!71689 (exprs!6239 lt!2385688)))))))

(declare-fun b!6477744 () Bool)

(assert (=> b!6477744 (= e!3926514 ((_ map or) call!560548 call!560551))))

(declare-fun bm!560546 () Bool)

(assert (=> bm!560546 (= call!560551 call!560547)))

(declare-fun bm!560547 () Bool)

(assert (=> bm!560547 (= call!560548 (derivationStepZipperDown!1603 (ite c!1186462 (regTwo!33223 (h!71689 (exprs!6239 lt!2385688))) (regOne!33222 (h!71689 (exprs!6239 lt!2385688)))) (ite c!1186462 (Context!11479 (t!378989 (exprs!6239 lt!2385688))) (Context!11479 call!560552)) (h!71688 s!2326)))))

(declare-fun b!6477745 () Bool)

(assert (=> b!6477745 (= e!3926518 call!560550)))

(declare-fun b!6477746 () Bool)

(assert (=> b!6477746 (= e!3926514 e!3926518)))

(assert (=> b!6477746 (= c!1186460 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385688))))))

(assert (= (and d!2032299 c!1186463) b!6477742))

(assert (= (and d!2032299 (not c!1186463)) b!6477743))

(assert (= (and b!6477743 c!1186462) b!6477741))

(assert (= (and b!6477743 (not c!1186462)) b!6477736))

(assert (= (and b!6477736 res!2659799) b!6477738))

(assert (= (and b!6477736 c!1186461) b!6477744))

(assert (= (and b!6477736 (not c!1186461)) b!6477746))

(assert (= (and b!6477746 c!1186460) b!6477745))

(assert (= (and b!6477746 (not c!1186460)) b!6477737))

(assert (= (and b!6477737 c!1186464) b!6477740))

(assert (= (and b!6477737 (not c!1186464)) b!6477739))

(assert (= (or b!6477745 b!6477740) bm!560543))

(assert (= (or b!6477745 b!6477740) bm!560544))

(assert (= (or b!6477744 bm!560543) bm!560545))

(assert (= (or b!6477744 bm!560544) bm!560546))

(assert (= (or b!6477741 b!6477744) bm!560547))

(assert (= (or b!6477741 bm!560546) bm!560542))

(declare-fun m!7266054 () Bool)

(assert (=> bm!560547 m!7266054))

(declare-fun m!7266056 () Bool)

(assert (=> bm!560542 m!7266056))

(declare-fun m!7266058 () Bool)

(assert (=> b!6477742 m!7266058))

(declare-fun m!7266060 () Bool)

(assert (=> b!6477738 m!7266060))

(declare-fun m!7266062 () Bool)

(assert (=> bm!560545 m!7266062))

(assert (=> bm!560462 d!2032299))

(declare-fun d!2032301 () Bool)

(assert (=> d!2032301 (= (isConcat!1271 lt!2385748) ((_ is Concat!25200) lt!2385748))))

(assert (=> b!6476707 d!2032301))

(declare-fun d!2032303 () Bool)

(assert (=> d!2032303 (= (head!13189 (_2!36637 lt!2385692)) (h!71688 (_2!36637 lt!2385692)))))

(assert (=> b!6477280 d!2032303))

(declare-fun d!2032305 () Bool)

(assert (=> d!2032305 (= (isEmpty!37424 (t!378988 s!2326)) ((_ is Nil!65240) (t!378988 s!2326)))))

(assert (=> d!2032163 d!2032305))

(declare-fun d!2032307 () Bool)

(assert (=> d!2032307 true))

(declare-fun setRes!44122 () Bool)

(assert (=> d!2032307 setRes!44122))

(declare-fun condSetEmpty!44122 () Bool)

(declare-fun res!2659802 () (InoxSet Context!11478))

(assert (=> d!2032307 (= condSetEmpty!44122 (= res!2659802 ((as const (Array Context!11478 Bool)) false)))))

(assert (=> d!2032307 (= (choose!48010 z!1189 lambda!358015) res!2659802)))

(declare-fun setIsEmpty!44122 () Bool)

(assert (=> setIsEmpty!44122 setRes!44122))

(declare-fun setNonEmpty!44122 () Bool)

(declare-fun e!3926521 () Bool)

(declare-fun setElem!44122 () Context!11478)

(declare-fun tp!1795037 () Bool)

(assert (=> setNonEmpty!44122 (= setRes!44122 (and tp!1795037 (inv!84134 setElem!44122) e!3926521))))

(declare-fun setRest!44122 () (InoxSet Context!11478))

(assert (=> setNonEmpty!44122 (= res!2659802 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) setElem!44122 true) setRest!44122))))

(declare-fun b!6477749 () Bool)

(declare-fun tp!1795038 () Bool)

(assert (=> b!6477749 (= e!3926521 tp!1795038)))

(assert (= (and d!2032307 condSetEmpty!44122) setIsEmpty!44122))

(assert (= (and d!2032307 (not condSetEmpty!44122)) setNonEmpty!44122))

(assert (= setNonEmpty!44122 b!6477749))

(declare-fun m!7266064 () Bool)

(assert (=> setNonEmpty!44122 m!7266064))

(assert (=> d!2031971 d!2032307))

(assert (=> bm!560387 d!2032179))

(declare-fun d!2032309 () Bool)

(assert (=> d!2032309 (= (head!13189 s!2326) (h!71688 s!2326))))

(assert (=> b!6477040 d!2032309))

(declare-fun bm!560548 () Bool)

(declare-fun call!560553 () (InoxSet Context!11478))

(assert (=> bm!560548 (= call!560553 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343))))))) (h!71688 s!2326)))))

(declare-fun b!6477750 () Bool)

(declare-fun e!3926524 () Bool)

(assert (=> b!6477750 (= e!3926524 (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343))))))))))

(declare-fun b!6477751 () Bool)

(declare-fun e!3926522 () (InoxSet Context!11478))

(assert (=> b!6477751 (= e!3926522 call!560553)))

(declare-fun b!6477752 () Bool)

(declare-fun e!3926523 () (InoxSet Context!11478))

(assert (=> b!6477752 (= e!3926523 e!3926522)))

(declare-fun c!1186466 () Bool)

(assert (=> b!6477752 (= c!1186466 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))))))))

(declare-fun b!6477754 () Bool)

(assert (=> b!6477754 (= e!3926522 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032311 () Bool)

(declare-fun c!1186465 () Bool)

(assert (=> d!2032311 (= c!1186465 e!3926524)))

(declare-fun res!2659803 () Bool)

(assert (=> d!2032311 (=> (not res!2659803) (not e!3926524))))

(assert (=> d!2032311 (= res!2659803 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))))))))

(assert (=> d!2032311 (= (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))) (h!71688 s!2326)) e!3926523)))

(declare-fun b!6477753 () Bool)

(assert (=> b!6477753 (= e!3926523 ((_ map or) call!560553 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343))))))) (h!71688 s!2326))))))

(assert (= (and d!2032311 res!2659803) b!6477750))

(assert (= (and d!2032311 c!1186465) b!6477753))

(assert (= (and d!2032311 (not c!1186465)) b!6477752))

(assert (= (and b!6477752 c!1186466) b!6477751))

(assert (= (and b!6477752 (not c!1186466)) b!6477754))

(assert (= (or b!6477753 b!6477751) bm!560548))

(declare-fun m!7266066 () Bool)

(assert (=> bm!560548 m!7266066))

(declare-fun m!7266068 () Bool)

(assert (=> b!6477750 m!7266068))

(declare-fun m!7266070 () Bool)

(assert (=> b!6477753 m!7266070))

(assert (=> b!6477020 d!2032311))

(declare-fun d!2032313 () Bool)

(assert (=> d!2032313 (= (isEmpty!37424 (_2!36637 lt!2385678)) ((_ is Nil!65240) (_2!36637 lt!2385678)))))

(assert (=> bm!560486 d!2032313))

(declare-fun d!2032315 () Bool)

(assert (=> d!2032315 (= (isEmpty!37422 (unfocusZipperList!1776 zl!343)) ((_ is Nil!65241) (unfocusZipperList!1776 zl!343)))))

(assert (=> b!6477224 d!2032315))

(declare-fun d!2032317 () Bool)

(declare-fun lt!2385902 () Int)

(assert (=> d!2032317 (>= lt!2385902 0)))

(declare-fun e!3926525 () Int)

(assert (=> d!2032317 (= lt!2385902 e!3926525)))

(declare-fun c!1186467 () Bool)

(assert (=> d!2032317 (= c!1186467 ((_ is Nil!65240) lt!2385864))))

(assert (=> d!2032317 (= (size!40407 lt!2385864) lt!2385902)))

(declare-fun b!6477755 () Bool)

(assert (=> b!6477755 (= e!3926525 0)))

(declare-fun b!6477756 () Bool)

(assert (=> b!6477756 (= e!3926525 (+ 1 (size!40407 (t!378988 lt!2385864))))))

(assert (= (and d!2032317 c!1186467) b!6477755))

(assert (= (and d!2032317 (not c!1186467)) b!6477756))

(declare-fun m!7266072 () Bool)

(assert (=> b!6477756 m!7266072))

(assert (=> b!6477398 d!2032317))

(declare-fun d!2032319 () Bool)

(declare-fun lt!2385903 () Int)

(assert (=> d!2032319 (>= lt!2385903 0)))

(declare-fun e!3926526 () Int)

(assert (=> d!2032319 (= lt!2385903 e!3926526)))

(declare-fun c!1186468 () Bool)

(assert (=> d!2032319 (= c!1186468 ((_ is Nil!65240) (_1!36637 lt!2385692)))))

(assert (=> d!2032319 (= (size!40407 (_1!36637 lt!2385692)) lt!2385903)))

(declare-fun b!6477757 () Bool)

(assert (=> b!6477757 (= e!3926526 0)))

(declare-fun b!6477758 () Bool)

(assert (=> b!6477758 (= e!3926526 (+ 1 (size!40407 (t!378988 (_1!36637 lt!2385692)))))))

(assert (= (and d!2032319 c!1186468) b!6477757))

(assert (= (and d!2032319 (not c!1186468)) b!6477758))

(declare-fun m!7266074 () Bool)

(assert (=> b!6477758 m!7266074))

(assert (=> b!6477398 d!2032319))

(declare-fun d!2032321 () Bool)

(declare-fun lt!2385904 () Int)

(assert (=> d!2032321 (>= lt!2385904 0)))

(declare-fun e!3926527 () Int)

(assert (=> d!2032321 (= lt!2385904 e!3926527)))

(declare-fun c!1186469 () Bool)

(assert (=> d!2032321 (= c!1186469 ((_ is Nil!65240) (_2!36637 lt!2385692)))))

(assert (=> d!2032321 (= (size!40407 (_2!36637 lt!2385692)) lt!2385904)))

(declare-fun b!6477759 () Bool)

(assert (=> b!6477759 (= e!3926527 0)))

(declare-fun b!6477760 () Bool)

(assert (=> b!6477760 (= e!3926527 (+ 1 (size!40407 (t!378988 (_2!36637 lt!2385692)))))))

(assert (= (and d!2032321 c!1186469) b!6477759))

(assert (= (and d!2032321 (not c!1186469)) b!6477760))

(declare-fun m!7266076 () Bool)

(assert (=> b!6477760 m!7266076))

(assert (=> b!6477398 d!2032321))

(assert (=> d!2031881 d!2031851))

(assert (=> d!2031881 d!2031877))

(declare-fun d!2032323 () Bool)

(assert (=> d!2032323 (= (matchR!8538 lt!2385687 lt!2385693) (matchZipper!2367 lt!2385677 lt!2385693))))

(assert (=> d!2032323 true))

(declare-fun _$44!1657 () Unit!158751)

(assert (=> d!2032323 (= (choose!48000 lt!2385677 lt!2385686 lt!2385687 lt!2385693) _$44!1657)))

(declare-fun bs!1642759 () Bool)

(assert (= bs!1642759 d!2032323))

(assert (=> bs!1642759 m!7264610))

(assert (=> bs!1642759 m!7264618))

(assert (=> d!2031881 d!2032323))

(declare-fun b!6477761 () Bool)

(declare-fun e!3926530 () Bool)

(declare-fun e!3926531 () Bool)

(assert (=> b!6477761 (= e!3926530 e!3926531)))

(declare-fun res!2659808 () Bool)

(assert (=> b!6477761 (= res!2659808 (not (nullable!6348 (reg!16684 lt!2385687))))))

(assert (=> b!6477761 (=> (not res!2659808) (not e!3926531))))

(declare-fun b!6477762 () Bool)

(declare-fun e!3926532 () Bool)

(declare-fun call!560554 () Bool)

(assert (=> b!6477762 (= e!3926532 call!560554)))

(declare-fun b!6477763 () Bool)

(declare-fun e!3926528 () Bool)

(assert (=> b!6477763 (= e!3926528 e!3926530)))

(declare-fun c!1186471 () Bool)

(assert (=> b!6477763 (= c!1186471 ((_ is Star!16355) lt!2385687))))

(declare-fun b!6477764 () Bool)

(declare-fun e!3926534 () Bool)

(assert (=> b!6477764 (= e!3926534 call!560554)))

(declare-fun b!6477765 () Bool)

(declare-fun e!3926533 () Bool)

(assert (=> b!6477765 (= e!3926533 e!3926532)))

(declare-fun res!2659804 () Bool)

(assert (=> b!6477765 (=> (not res!2659804) (not e!3926532))))

(declare-fun call!560556 () Bool)

(assert (=> b!6477765 (= res!2659804 call!560556)))

(declare-fun bm!560549 () Bool)

(declare-fun c!1186470 () Bool)

(assert (=> bm!560549 (= call!560556 (validRegex!8091 (ite c!1186470 (regOne!33223 lt!2385687) (regOne!33222 lt!2385687))))))

(declare-fun bm!560550 () Bool)

(declare-fun call!560555 () Bool)

(assert (=> bm!560550 (= call!560554 call!560555)))

(declare-fun b!6477766 () Bool)

(assert (=> b!6477766 (= e!3926531 call!560555)))

(declare-fun bm!560551 () Bool)

(assert (=> bm!560551 (= call!560555 (validRegex!8091 (ite c!1186471 (reg!16684 lt!2385687) (ite c!1186470 (regTwo!33223 lt!2385687) (regTwo!33222 lt!2385687)))))))

(declare-fun b!6477767 () Bool)

(declare-fun res!2659807 () Bool)

(assert (=> b!6477767 (=> (not res!2659807) (not e!3926534))))

(assert (=> b!6477767 (= res!2659807 call!560556)))

(declare-fun e!3926529 () Bool)

(assert (=> b!6477767 (= e!3926529 e!3926534)))

(declare-fun d!2032325 () Bool)

(declare-fun res!2659806 () Bool)

(assert (=> d!2032325 (=> res!2659806 e!3926528)))

(assert (=> d!2032325 (= res!2659806 ((_ is ElementMatch!16355) lt!2385687))))

(assert (=> d!2032325 (= (validRegex!8091 lt!2385687) e!3926528)))

(declare-fun b!6477768 () Bool)

(assert (=> b!6477768 (= e!3926530 e!3926529)))

(assert (=> b!6477768 (= c!1186470 ((_ is Union!16355) lt!2385687))))

(declare-fun b!6477769 () Bool)

(declare-fun res!2659805 () Bool)

(assert (=> b!6477769 (=> res!2659805 e!3926533)))

(assert (=> b!6477769 (= res!2659805 (not ((_ is Concat!25200) lt!2385687)))))

(assert (=> b!6477769 (= e!3926529 e!3926533)))

(assert (= (and d!2032325 (not res!2659806)) b!6477763))

(assert (= (and b!6477763 c!1186471) b!6477761))

(assert (= (and b!6477763 (not c!1186471)) b!6477768))

(assert (= (and b!6477761 res!2659808) b!6477766))

(assert (= (and b!6477768 c!1186470) b!6477767))

(assert (= (and b!6477768 (not c!1186470)) b!6477769))

(assert (= (and b!6477767 res!2659807) b!6477764))

(assert (= (and b!6477769 (not res!2659805)) b!6477765))

(assert (= (and b!6477765 res!2659804) b!6477762))

(assert (= (or b!6477764 b!6477762) bm!560550))

(assert (= (or b!6477767 b!6477765) bm!560549))

(assert (= (or b!6477766 bm!560550) bm!560551))

(declare-fun m!7266078 () Bool)

(assert (=> b!6477761 m!7266078))

(declare-fun m!7266080 () Bool)

(assert (=> bm!560549 m!7266080))

(declare-fun m!7266082 () Bool)

(assert (=> bm!560551 m!7266082))

(assert (=> d!2031881 d!2032325))

(declare-fun d!2032327 () Bool)

(assert (=> d!2032327 (= (isEmpty!37424 (_1!36637 lt!2385692)) ((_ is Nil!65240) (_1!36637 lt!2385692)))))

(assert (=> d!2032011 d!2032327))

(assert (=> d!2032011 d!2032211))

(declare-fun d!2032329 () Bool)

(assert (=> d!2032329 (= (flatMap!1860 lt!2385647 lambda!358081) (choose!48010 lt!2385647 lambda!358081))))

(declare-fun bs!1642760 () Bool)

(assert (= bs!1642760 d!2032329))

(declare-fun m!7266084 () Bool)

(assert (=> bs!1642760 m!7266084))

(assert (=> d!2032025 d!2032329))

(declare-fun b!6477770 () Bool)

(declare-fun e!3926541 () Bool)

(assert (=> b!6477770 (= e!3926541 (not (= (head!13189 s!2326) (c!1186089 (regTwo!33222 r!7292)))))))

(declare-fun b!6477771 () Bool)

(declare-fun res!2659811 () Bool)

(declare-fun e!3926535 () Bool)

(assert (=> b!6477771 (=> res!2659811 e!3926535)))

(assert (=> b!6477771 (= res!2659811 (not ((_ is ElementMatch!16355) (regTwo!33222 r!7292))))))

(declare-fun e!3926538 () Bool)

(assert (=> b!6477771 (= e!3926538 e!3926535)))

(declare-fun b!6477772 () Bool)

(declare-fun e!3926540 () Bool)

(declare-fun lt!2385905 () Bool)

(declare-fun call!560557 () Bool)

(assert (=> b!6477772 (= e!3926540 (= lt!2385905 call!560557))))

(declare-fun b!6477773 () Bool)

(declare-fun e!3926536 () Bool)

(assert (=> b!6477773 (= e!3926536 (= (head!13189 s!2326) (c!1186089 (regTwo!33222 r!7292))))))

(declare-fun b!6477774 () Bool)

(declare-fun res!2659814 () Bool)

(assert (=> b!6477774 (=> (not res!2659814) (not e!3926536))))

(assert (=> b!6477774 (= res!2659814 (not call!560557))))

(declare-fun d!2032331 () Bool)

(assert (=> d!2032331 e!3926540))

(declare-fun c!1186472 () Bool)

(assert (=> d!2032331 (= c!1186472 ((_ is EmptyExpr!16355) (regTwo!33222 r!7292)))))

(declare-fun e!3926539 () Bool)

(assert (=> d!2032331 (= lt!2385905 e!3926539)))

(declare-fun c!1186474 () Bool)

(assert (=> d!2032331 (= c!1186474 (isEmpty!37424 s!2326))))

(assert (=> d!2032331 (validRegex!8091 (regTwo!33222 r!7292))))

(assert (=> d!2032331 (= (matchR!8538 (regTwo!33222 r!7292) s!2326) lt!2385905)))

(declare-fun b!6477775 () Bool)

(declare-fun res!2659816 () Bool)

(assert (=> b!6477775 (=> res!2659816 e!3926535)))

(assert (=> b!6477775 (= res!2659816 e!3926536)))

(declare-fun res!2659809 () Bool)

(assert (=> b!6477775 (=> (not res!2659809) (not e!3926536))))

(assert (=> b!6477775 (= res!2659809 lt!2385905)))

(declare-fun b!6477776 () Bool)

(declare-fun e!3926537 () Bool)

(assert (=> b!6477776 (= e!3926535 e!3926537)))

(declare-fun res!2659815 () Bool)

(assert (=> b!6477776 (=> (not res!2659815) (not e!3926537))))

(assert (=> b!6477776 (= res!2659815 (not lt!2385905))))

(declare-fun b!6477777 () Bool)

(declare-fun res!2659812 () Bool)

(assert (=> b!6477777 (=> res!2659812 e!3926541)))

(assert (=> b!6477777 (= res!2659812 (not (isEmpty!37424 (tail!12274 s!2326))))))

(declare-fun b!6477778 () Bool)

(assert (=> b!6477778 (= e!3926539 (matchR!8538 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 s!2326)) (tail!12274 s!2326)))))

(declare-fun bm!560552 () Bool)

(assert (=> bm!560552 (= call!560557 (isEmpty!37424 s!2326))))

(declare-fun b!6477779 () Bool)

(assert (=> b!6477779 (= e!3926537 e!3926541)))

(declare-fun res!2659813 () Bool)

(assert (=> b!6477779 (=> res!2659813 e!3926541)))

(assert (=> b!6477779 (= res!2659813 call!560557)))

(declare-fun b!6477780 () Bool)

(assert (=> b!6477780 (= e!3926540 e!3926538)))

(declare-fun c!1186473 () Bool)

(assert (=> b!6477780 (= c!1186473 ((_ is EmptyLang!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6477781 () Bool)

(declare-fun res!2659810 () Bool)

(assert (=> b!6477781 (=> (not res!2659810) (not e!3926536))))

(assert (=> b!6477781 (= res!2659810 (isEmpty!37424 (tail!12274 s!2326)))))

(declare-fun b!6477782 () Bool)

(assert (=> b!6477782 (= e!3926539 (nullable!6348 (regTwo!33222 r!7292)))))

(declare-fun b!6477783 () Bool)

(assert (=> b!6477783 (= e!3926538 (not lt!2385905))))

(assert (= (and d!2032331 c!1186474) b!6477782))

(assert (= (and d!2032331 (not c!1186474)) b!6477778))

(assert (= (and d!2032331 c!1186472) b!6477772))

(assert (= (and d!2032331 (not c!1186472)) b!6477780))

(assert (= (and b!6477780 c!1186473) b!6477783))

(assert (= (and b!6477780 (not c!1186473)) b!6477771))

(assert (= (and b!6477771 (not res!2659811)) b!6477775))

(assert (= (and b!6477775 res!2659809) b!6477774))

(assert (= (and b!6477774 res!2659814) b!6477781))

(assert (= (and b!6477781 res!2659810) b!6477773))

(assert (= (and b!6477775 (not res!2659816)) b!6477776))

(assert (= (and b!6477776 res!2659815) b!6477779))

(assert (= (and b!6477779 (not res!2659813)) b!6477777))

(assert (= (and b!6477777 (not res!2659812)) b!6477770))

(assert (= (or b!6477772 b!6477779 b!6477774) bm!560552))

(assert (=> d!2032331 m!7264716))

(assert (=> d!2032331 m!7264954))

(assert (=> b!6477778 m!7264724))

(assert (=> b!6477778 m!7264724))

(declare-fun m!7266086 () Bool)

(assert (=> b!6477778 m!7266086))

(assert (=> b!6477778 m!7264730))

(assert (=> b!6477778 m!7266086))

(assert (=> b!6477778 m!7264730))

(declare-fun m!7266088 () Bool)

(assert (=> b!6477778 m!7266088))

(assert (=> bm!560552 m!7264716))

(assert (=> b!6477777 m!7264730))

(assert (=> b!6477777 m!7264730))

(assert (=> b!6477777 m!7264738))

(assert (=> b!6477773 m!7264724))

(assert (=> b!6477781 m!7264730))

(assert (=> b!6477781 m!7264730))

(assert (=> b!6477781 m!7264738))

(assert (=> b!6477770 m!7264724))

(assert (=> b!6477782 m!7265598))

(assert (=> b!6477104 d!2032331))

(declare-fun d!2032333 () Bool)

(declare-fun c!1186475 () Bool)

(assert (=> d!2032333 (= c!1186475 (isEmpty!37424 (tail!12274 lt!2385693)))))

(declare-fun e!3926542 () Bool)

(assert (=> d!2032333 (= (matchZipper!2367 (derivationStepZipper!2321 lt!2385677 (head!13189 lt!2385693)) (tail!12274 lt!2385693)) e!3926542)))

(declare-fun b!6477784 () Bool)

(assert (=> b!6477784 (= e!3926542 (nullableZipper!2114 (derivationStepZipper!2321 lt!2385677 (head!13189 lt!2385693))))))

(declare-fun b!6477785 () Bool)

(assert (=> b!6477785 (= e!3926542 (matchZipper!2367 (derivationStepZipper!2321 (derivationStepZipper!2321 lt!2385677 (head!13189 lt!2385693)) (head!13189 (tail!12274 lt!2385693))) (tail!12274 (tail!12274 lt!2385693))))))

(assert (= (and d!2032333 c!1186475) b!6477784))

(assert (= (and d!2032333 (not c!1186475)) b!6477785))

(assert (=> d!2032333 m!7264830))

(assert (=> d!2032333 m!7264834))

(assert (=> b!6477784 m!7264936))

(declare-fun m!7266090 () Bool)

(assert (=> b!6477784 m!7266090))

(assert (=> b!6477785 m!7264830))

(declare-fun m!7266092 () Bool)

(assert (=> b!6477785 m!7266092))

(assert (=> b!6477785 m!7264936))

(assert (=> b!6477785 m!7266092))

(declare-fun m!7266094 () Bool)

(assert (=> b!6477785 m!7266094))

(assert (=> b!6477785 m!7264830))

(declare-fun m!7266096 () Bool)

(assert (=> b!6477785 m!7266096))

(assert (=> b!6477785 m!7266094))

(assert (=> b!6477785 m!7266096))

(declare-fun m!7266098 () Bool)

(assert (=> b!6477785 m!7266098))

(assert (=> b!6476638 d!2032333))

(declare-fun bs!1642761 () Bool)

(declare-fun d!2032335 () Bool)

(assert (= bs!1642761 (and d!2032335 b!6476340)))

(declare-fun lambda!358132 () Int)

(assert (=> bs!1642761 (= (= (head!13189 lt!2385693) (h!71688 s!2326)) (= lambda!358132 lambda!358015))))

(declare-fun bs!1642762 () Bool)

(assert (= bs!1642762 (and d!2032335 d!2032025)))

(assert (=> bs!1642762 (= (= (head!13189 lt!2385693) (h!71688 s!2326)) (= lambda!358132 lambda!358081))))

(declare-fun bs!1642763 () Bool)

(assert (= bs!1642763 (and d!2032335 d!2032289)))

(assert (=> bs!1642763 (= (= (head!13189 lt!2385693) (head!13189 (t!378988 s!2326))) (= lambda!358132 lambda!358131))))

(assert (=> d!2032335 true))

(assert (=> d!2032335 (= (derivationStepZipper!2321 lt!2385677 (head!13189 lt!2385693)) (flatMap!1860 lt!2385677 lambda!358132))))

(declare-fun bs!1642764 () Bool)

(assert (= bs!1642764 d!2032335))

(declare-fun m!7266100 () Bool)

(assert (=> bs!1642764 m!7266100))

(assert (=> b!6476638 d!2032335))

(assert (=> b!6476638 d!2032225))

(declare-fun d!2032337 () Bool)

(assert (=> d!2032337 (= (tail!12274 lt!2385693) (t!378988 lt!2385693))))

(assert (=> b!6476638 d!2032337))

(declare-fun bs!1642765 () Bool)

(declare-fun b!6477792 () Bool)

(assert (= bs!1642765 (and b!6477792 d!2032127)))

(declare-fun lambda!358133 () Int)

(assert (=> bs!1642765 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33223 lt!2385680) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358133 lambda!358115))))

(declare-fun bs!1642766 () Bool)

(assert (= bs!1642766 (and b!6477792 d!2032245)))

(assert (=> bs!1642766 (not (= lambda!358133 lambda!358128))))

(declare-fun bs!1642767 () Bool)

(assert (= bs!1642767 (and b!6477792 d!2031923)))

(assert (=> bs!1642767 (not (= lambda!358133 lambda!358059))))

(declare-fun bs!1642768 () Bool)

(assert (= bs!1642768 (and b!6477792 d!2032125)))

(assert (=> bs!1642768 (not (= lambda!358133 lambda!358108))))

(declare-fun bs!1642769 () Bool)

(assert (= bs!1642769 (and b!6477792 b!6477031)))

(assert (=> bs!1642769 (= (and (= (reg!16684 (regTwo!33223 lt!2385680)) (reg!16684 r!7292)) (= (regTwo!33223 lt!2385680) r!7292)) (= lambda!358133 lambda!358073))))

(declare-fun bs!1642770 () Bool)

(assert (= bs!1642770 (and b!6477792 b!6476331)))

(assert (=> bs!1642770 (not (= lambda!358133 lambda!358018))))

(declare-fun bs!1642771 () Bool)

(assert (= bs!1642771 (and b!6477792 d!2032155)))

(assert (=> bs!1642771 (not (= lambda!358133 lambda!358116))))

(declare-fun bs!1642772 () Bool)

(assert (= bs!1642772 (and b!6477792 b!6477635)))

(assert (=> bs!1642772 (= (and (= (reg!16684 (regTwo!33223 lt!2385680)) (reg!16684 (regTwo!33223 r!7292))) (= (regTwo!33223 lt!2385680) (regTwo!33223 r!7292))) (= lambda!358133 lambda!358129))))

(declare-fun bs!1642773 () Bool)

(assert (= bs!1642773 (and b!6477792 b!6477637)))

(assert (=> bs!1642773 (not (= lambda!358133 lambda!358130))))

(declare-fun bs!1642774 () Bool)

(assert (= bs!1642774 (and b!6477792 b!6477548)))

(assert (=> bs!1642774 (not (= lambda!358133 lambda!358118))))

(declare-fun bs!1642775 () Bool)

(assert (= bs!1642775 (and b!6477792 b!6476300)))

(assert (=> bs!1642775 (not (= lambda!358133 lambda!358016))))

(assert (=> bs!1642766 (not (= lambda!358133 lambda!358127))))

(declare-fun bs!1642776 () Bool)

(assert (= bs!1642776 (and b!6477792 b!6477546)))

(assert (=> bs!1642776 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 lt!2385680)) (reg!16684 (regOne!33223 lt!2385664))) (= (regTwo!33223 lt!2385680) (regOne!33223 lt!2385664))) (= lambda!358133 lambda!358117))))

(declare-fun bs!1642777 () Bool)

(assert (= bs!1642777 (and b!6477792 b!6476519)))

(assert (=> bs!1642777 (not (= lambda!358133 lambda!358035))))

(declare-fun bs!1642778 () Bool)

(assert (= bs!1642778 (and b!6477792 b!6477297)))

(assert (=> bs!1642778 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 lt!2385680)) (reg!16684 lt!2385664)) (= (regTwo!33223 lt!2385680) lt!2385664)) (= lambda!358133 lambda!358103))))

(assert (=> bs!1642770 (not (= lambda!358133 lambda!358020))))

(declare-fun bs!1642779 () Bool)

(assert (= bs!1642779 (and b!6477792 d!2032041)))

(assert (=> bs!1642779 (not (= lambda!358133 lambda!358083))))

(assert (=> bs!1642775 (not (= lambda!358133 lambda!358017))))

(assert (=> bs!1642768 (not (= lambda!358133 lambda!358107))))

(declare-fun bs!1642780 () Bool)

(assert (= bs!1642780 (and b!6477792 b!6476517)))

(assert (=> bs!1642780 (= (and (= (reg!16684 (regTwo!33223 lt!2385680)) (reg!16684 lt!2385680)) (= (regTwo!33223 lt!2385680) lt!2385680)) (= lambda!358133 lambda!358032))))

(assert (=> bs!1642767 (not (= lambda!358133 lambda!358062))))

(declare-fun bs!1642781 () Bool)

(assert (= bs!1642781 (and b!6477792 b!6476306)))

(assert (=> bs!1642781 (not (= lambda!358133 lambda!358014))))

(declare-fun bs!1642782 () Bool)

(assert (= bs!1642782 (and b!6477792 d!2032037)))

(assert (=> bs!1642782 (not (= lambda!358133 lambda!358082))))

(declare-fun bs!1642783 () Bool)

(assert (= bs!1642783 (and b!6477792 b!6477299)))

(assert (=> bs!1642783 (not (= lambda!358133 lambda!358105))))

(declare-fun bs!1642784 () Bool)

(assert (= bs!1642784 (and b!6477792 b!6477033)))

(assert (=> bs!1642784 (not (= lambda!358133 lambda!358075))))

(assert (=> bs!1642765 (not (= lambda!358133 lambda!358114))))

(assert (=> bs!1642781 (not (= lambda!358133 lambda!358013))))

(declare-fun bs!1642785 () Bool)

(assert (= bs!1642785 (and b!6477792 d!2031905)))

(assert (=> bs!1642785 (not (= lambda!358133 lambda!358052))))

(assert (=> bs!1642770 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regTwo!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33223 lt!2385680) lt!2385664)) (= lambda!358133 lambda!358019))))

(assert (=> bs!1642779 (not (= lambda!358133 lambda!358084))))

(declare-fun bs!1642786 () Bool)

(assert (= bs!1642786 (and b!6477792 d!2032237)))

(assert (=> bs!1642786 (not (= lambda!358133 lambda!358122))))

(assert (=> b!6477792 true))

(assert (=> b!6477792 true))

(declare-fun bs!1642787 () Bool)

(declare-fun b!6477794 () Bool)

(assert (= bs!1642787 (and b!6477794 d!2032127)))

(declare-fun lambda!358134 () Int)

(assert (=> bs!1642787 (not (= lambda!358134 lambda!358115))))

(declare-fun bs!1642788 () Bool)

(assert (= bs!1642788 (and b!6477794 d!2032245)))

(assert (=> bs!1642788 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385680)) lt!2385664)) (= lambda!358134 lambda!358128))))

(declare-fun bs!1642789 () Bool)

(assert (= bs!1642789 (and b!6477794 d!2031923)))

(assert (=> bs!1642789 (not (= lambda!358134 lambda!358059))))

(declare-fun bs!1642790 () Bool)

(assert (= bs!1642790 (and b!6477794 d!2032125)))

(assert (=> bs!1642790 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385680)) lt!2385664)) (= lambda!358134 lambda!358108))))

(declare-fun bs!1642791 () Bool)

(assert (= bs!1642791 (and b!6477794 b!6477031)))

(assert (=> bs!1642791 (not (= lambda!358134 lambda!358073))))

(declare-fun bs!1642792 () Bool)

(assert (= bs!1642792 (and b!6477794 b!6476331)))

(assert (=> bs!1642792 (not (= lambda!358134 lambda!358018))))

(declare-fun bs!1642793 () Bool)

(assert (= bs!1642793 (and b!6477794 d!2032155)))

(assert (=> bs!1642793 (not (= lambda!358134 lambda!358116))))

(declare-fun bs!1642794 () Bool)

(assert (= bs!1642794 (and b!6477794 b!6477635)))

(assert (=> bs!1642794 (not (= lambda!358134 lambda!358129))))

(declare-fun bs!1642795 () Bool)

(assert (= bs!1642795 (and b!6477794 b!6477637)))

(assert (=> bs!1642795 (= (and (= (regOne!33222 (regTwo!33223 lt!2385680)) (regOne!33222 (regTwo!33223 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 (regTwo!33223 r!7292)))) (= lambda!358134 lambda!358130))))

(declare-fun bs!1642796 () Bool)

(assert (= bs!1642796 (and b!6477794 b!6477548)))

(assert (=> bs!1642796 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 lt!2385680)) (regOne!33222 (regOne!33223 lt!2385664))) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358134 lambda!358118))))

(declare-fun bs!1642797 () Bool)

(assert (= bs!1642797 (and b!6477794 b!6476300)))

(assert (=> bs!1642797 (not (= lambda!358134 lambda!358016))))

(assert (=> bs!1642788 (not (= lambda!358134 lambda!358127))))

(declare-fun bs!1642798 () Bool)

(assert (= bs!1642798 (and b!6477794 b!6477546)))

(assert (=> bs!1642798 (not (= lambda!358134 lambda!358117))))

(declare-fun bs!1642799 () Bool)

(assert (= bs!1642799 (and b!6477794 b!6476519)))

(assert (=> bs!1642799 (= (and (= (regOne!33222 (regTwo!33223 lt!2385680)) (regOne!33222 lt!2385680)) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 lt!2385680))) (= lambda!358134 lambda!358035))))

(declare-fun bs!1642800 () Bool)

(assert (= bs!1642800 (and b!6477794 b!6477297)))

(assert (=> bs!1642800 (not (= lambda!358134 lambda!358103))))

(assert (=> bs!1642792 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385680)) lt!2385664)) (= lambda!358134 lambda!358020))))

(declare-fun bs!1642801 () Bool)

(assert (= bs!1642801 (and b!6477794 d!2032041)))

(assert (=> bs!1642801 (not (= lambda!358134 lambda!358083))))

(assert (=> bs!1642797 (= (and (= (regOne!33222 (regTwo!33223 lt!2385680)) lt!2385664) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358134 lambda!358017))))

(assert (=> bs!1642790 (not (= lambda!358134 lambda!358107))))

(declare-fun bs!1642802 () Bool)

(assert (= bs!1642802 (and b!6477794 b!6476517)))

(assert (=> bs!1642802 (not (= lambda!358134 lambda!358032))))

(assert (=> bs!1642789 (= (and (= (regOne!33222 (regTwo!33223 lt!2385680)) lt!2385664) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358134 lambda!358062))))

(declare-fun bs!1642803 () Bool)

(assert (= bs!1642803 (and b!6477794 b!6476306)))

(assert (=> bs!1642803 (= (and (= (regOne!33222 (regTwo!33223 lt!2385680)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358134 lambda!358014))))

(declare-fun bs!1642804 () Bool)

(assert (= bs!1642804 (and b!6477794 d!2032037)))

(assert (=> bs!1642804 (not (= lambda!358134 lambda!358082))))

(declare-fun bs!1642805 () Bool)

(assert (= bs!1642805 (and b!6477794 b!6477299)))

(assert (=> bs!1642805 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regTwo!33223 lt!2385680)) (regOne!33222 lt!2385664)) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 lt!2385664))) (= lambda!358134 lambda!358105))))

(declare-fun bs!1642806 () Bool)

(assert (= bs!1642806 (and b!6477794 b!6477033)))

(assert (=> bs!1642806 (= (and (= (regOne!33222 (regTwo!33223 lt!2385680)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358134 lambda!358075))))

(assert (=> bs!1642787 (not (= lambda!358134 lambda!358114))))

(declare-fun bs!1642807 () Bool)

(assert (= bs!1642807 (and b!6477794 b!6477792)))

(assert (=> bs!1642807 (not (= lambda!358134 lambda!358133))))

(assert (=> bs!1642803 (not (= lambda!358134 lambda!358013))))

(declare-fun bs!1642808 () Bool)

(assert (= bs!1642808 (and b!6477794 d!2031905)))

(assert (=> bs!1642808 (not (= lambda!358134 lambda!358052))))

(assert (=> bs!1642792 (not (= lambda!358134 lambda!358019))))

(assert (=> bs!1642801 (= (and (= (regOne!33222 (regTwo!33223 lt!2385680)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358134 lambda!358084))))

(declare-fun bs!1642809 () Bool)

(assert (= bs!1642809 (and b!6477794 d!2032237)))

(assert (=> bs!1642809 (not (= lambda!358134 lambda!358122))))

(assert (=> b!6477794 true))

(assert (=> b!6477794 true))

(declare-fun b!6477786 () Bool)

(declare-fun res!2659818 () Bool)

(declare-fun e!3926549 () Bool)

(assert (=> b!6477786 (=> res!2659818 e!3926549)))

(declare-fun call!560559 () Bool)

(assert (=> b!6477786 (= res!2659818 call!560559)))

(declare-fun e!3926543 () Bool)

(assert (=> b!6477786 (= e!3926543 e!3926549)))

(declare-fun b!6477787 () Bool)

(declare-fun e!3926546 () Bool)

(assert (=> b!6477787 (= e!3926546 e!3926543)))

(declare-fun c!1186479 () Bool)

(assert (=> b!6477787 (= c!1186479 ((_ is Star!16355) (regTwo!33223 lt!2385680)))))

(declare-fun b!6477788 () Bool)

(declare-fun c!1186478 () Bool)

(assert (=> b!6477788 (= c!1186478 ((_ is Union!16355) (regTwo!33223 lt!2385680)))))

(declare-fun e!3926547 () Bool)

(assert (=> b!6477788 (= e!3926547 e!3926546)))

(declare-fun b!6477789 () Bool)

(declare-fun c!1186477 () Bool)

(assert (=> b!6477789 (= c!1186477 ((_ is ElementMatch!16355) (regTwo!33223 lt!2385680)))))

(declare-fun e!3926544 () Bool)

(assert (=> b!6477789 (= e!3926544 e!3926547)))

(declare-fun b!6477790 () Bool)

(declare-fun e!3926545 () Bool)

(assert (=> b!6477790 (= e!3926545 call!560559)))

(declare-fun b!6477791 () Bool)

(assert (=> b!6477791 (= e!3926545 e!3926544)))

(declare-fun res!2659817 () Bool)

(assert (=> b!6477791 (= res!2659817 (not ((_ is EmptyLang!16355) (regTwo!33223 lt!2385680))))))

(assert (=> b!6477791 (=> (not res!2659817) (not e!3926544))))

(declare-fun d!2032339 () Bool)

(declare-fun c!1186476 () Bool)

(assert (=> d!2032339 (= c!1186476 ((_ is EmptyExpr!16355) (regTwo!33223 lt!2385680)))))

(assert (=> d!2032339 (= (matchRSpec!3456 (regTwo!33223 lt!2385680) s!2326) e!3926545)))

(declare-fun call!560558 () Bool)

(assert (=> b!6477792 (= e!3926549 call!560558)))

(declare-fun bm!560553 () Bool)

(assert (=> bm!560553 (= call!560559 (isEmpty!37424 s!2326))))

(declare-fun b!6477793 () Bool)

(declare-fun e!3926548 () Bool)

(assert (=> b!6477793 (= e!3926546 e!3926548)))

(declare-fun res!2659819 () Bool)

(assert (=> b!6477793 (= res!2659819 (matchRSpec!3456 (regOne!33223 (regTwo!33223 lt!2385680)) s!2326))))

(assert (=> b!6477793 (=> res!2659819 e!3926548)))

(assert (=> b!6477794 (= e!3926543 call!560558)))

(declare-fun bm!560554 () Bool)

(assert (=> bm!560554 (= call!560558 (Exists!3425 (ite c!1186479 lambda!358133 lambda!358134)))))

(declare-fun b!6477795 () Bool)

(assert (=> b!6477795 (= e!3926547 (= s!2326 (Cons!65240 (c!1186089 (regTwo!33223 lt!2385680)) Nil!65240)))))

(declare-fun b!6477796 () Bool)

(assert (=> b!6477796 (= e!3926548 (matchRSpec!3456 (regTwo!33223 (regTwo!33223 lt!2385680)) s!2326))))

(assert (= (and d!2032339 c!1186476) b!6477790))

(assert (= (and d!2032339 (not c!1186476)) b!6477791))

(assert (= (and b!6477791 res!2659817) b!6477789))

(assert (= (and b!6477789 c!1186477) b!6477795))

(assert (= (and b!6477789 (not c!1186477)) b!6477788))

(assert (= (and b!6477788 c!1186478) b!6477793))

(assert (= (and b!6477788 (not c!1186478)) b!6477787))

(assert (= (and b!6477793 (not res!2659819)) b!6477796))

(assert (= (and b!6477787 c!1186479) b!6477786))

(assert (= (and b!6477787 (not c!1186479)) b!6477794))

(assert (= (and b!6477786 (not res!2659818)) b!6477792))

(assert (= (or b!6477792 b!6477794) bm!560554))

(assert (= (or b!6477790 b!6477786) bm!560553))

(assert (=> bm!560553 m!7264716))

(declare-fun m!7266102 () Bool)

(assert (=> b!6477793 m!7266102))

(declare-fun m!7266104 () Bool)

(assert (=> bm!560554 m!7266104))

(declare-fun m!7266106 () Bool)

(assert (=> b!6477796 m!7266106))

(assert (=> b!6476521 d!2032339))

(assert (=> d!2031871 d!2032327))

(assert (=> d!2031809 d!2032273))

(declare-fun b!6477797 () Bool)

(declare-fun e!3926552 () Bool)

(declare-fun e!3926553 () Bool)

(assert (=> b!6477797 (= e!3926552 e!3926553)))

(declare-fun res!2659824 () Bool)

(assert (=> b!6477797 (= res!2659824 (not (nullable!6348 (reg!16684 lt!2385680))))))

(assert (=> b!6477797 (=> (not res!2659824) (not e!3926553))))

(declare-fun b!6477798 () Bool)

(declare-fun e!3926554 () Bool)

(declare-fun call!560560 () Bool)

(assert (=> b!6477798 (= e!3926554 call!560560)))

(declare-fun b!6477799 () Bool)

(declare-fun e!3926550 () Bool)

(assert (=> b!6477799 (= e!3926550 e!3926552)))

(declare-fun c!1186481 () Bool)

(assert (=> b!6477799 (= c!1186481 ((_ is Star!16355) lt!2385680))))

(declare-fun b!6477800 () Bool)

(declare-fun e!3926556 () Bool)

(assert (=> b!6477800 (= e!3926556 call!560560)))

(declare-fun b!6477801 () Bool)

(declare-fun e!3926555 () Bool)

(assert (=> b!6477801 (= e!3926555 e!3926554)))

(declare-fun res!2659820 () Bool)

(assert (=> b!6477801 (=> (not res!2659820) (not e!3926554))))

(declare-fun call!560562 () Bool)

(assert (=> b!6477801 (= res!2659820 call!560562)))

(declare-fun bm!560555 () Bool)

(declare-fun c!1186480 () Bool)

(assert (=> bm!560555 (= call!560562 (validRegex!8091 (ite c!1186480 (regOne!33223 lt!2385680) (regOne!33222 lt!2385680))))))

(declare-fun bm!560556 () Bool)

(declare-fun call!560561 () Bool)

(assert (=> bm!560556 (= call!560560 call!560561)))

(declare-fun b!6477802 () Bool)

(assert (=> b!6477802 (= e!3926553 call!560561)))

(declare-fun bm!560557 () Bool)

(assert (=> bm!560557 (= call!560561 (validRegex!8091 (ite c!1186481 (reg!16684 lt!2385680) (ite c!1186480 (regTwo!33223 lt!2385680) (regTwo!33222 lt!2385680)))))))

(declare-fun b!6477803 () Bool)

(declare-fun res!2659823 () Bool)

(assert (=> b!6477803 (=> (not res!2659823) (not e!3926556))))

(assert (=> b!6477803 (= res!2659823 call!560562)))

(declare-fun e!3926551 () Bool)

(assert (=> b!6477803 (= e!3926551 e!3926556)))

(declare-fun d!2032341 () Bool)

(declare-fun res!2659822 () Bool)

(assert (=> d!2032341 (=> res!2659822 e!3926550)))

(assert (=> d!2032341 (= res!2659822 ((_ is ElementMatch!16355) lt!2385680))))

(assert (=> d!2032341 (= (validRegex!8091 lt!2385680) e!3926550)))

(declare-fun b!6477804 () Bool)

(assert (=> b!6477804 (= e!3926552 e!3926551)))

(assert (=> b!6477804 (= c!1186480 ((_ is Union!16355) lt!2385680))))

(declare-fun b!6477805 () Bool)

(declare-fun res!2659821 () Bool)

(assert (=> b!6477805 (=> res!2659821 e!3926555)))

(assert (=> b!6477805 (= res!2659821 (not ((_ is Concat!25200) lt!2385680)))))

(assert (=> b!6477805 (= e!3926551 e!3926555)))

(assert (= (and d!2032341 (not res!2659822)) b!6477799))

(assert (= (and b!6477799 c!1186481) b!6477797))

(assert (= (and b!6477799 (not c!1186481)) b!6477804))

(assert (= (and b!6477797 res!2659824) b!6477802))

(assert (= (and b!6477804 c!1186480) b!6477803))

(assert (= (and b!6477804 (not c!1186480)) b!6477805))

(assert (= (and b!6477803 res!2659823) b!6477800))

(assert (= (and b!6477805 (not res!2659821)) b!6477801))

(assert (= (and b!6477801 res!2659820) b!6477798))

(assert (= (or b!6477800 b!6477798) bm!560556))

(assert (= (or b!6477803 b!6477801) bm!560555))

(assert (= (or b!6477802 bm!560556) bm!560557))

(declare-fun m!7266108 () Bool)

(assert (=> b!6477797 m!7266108))

(declare-fun m!7266110 () Bool)

(assert (=> bm!560555 m!7266110))

(declare-fun m!7266112 () Bool)

(assert (=> bm!560557 m!7266112))

(assert (=> d!2031809 d!2032341))

(declare-fun d!2032343 () Bool)

(declare-fun c!1186484 () Bool)

(assert (=> d!2032343 (= c!1186484 ((_ is Nil!65240) lt!2385864))))

(declare-fun e!3926559 () (InoxSet C!32980))

(assert (=> d!2032343 (= (content!12410 lt!2385864) e!3926559)))

(declare-fun b!6477810 () Bool)

(assert (=> b!6477810 (= e!3926559 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6477811 () Bool)

(assert (=> b!6477811 (= e!3926559 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 lt!2385864) true) (content!12410 (t!378988 lt!2385864))))))

(assert (= (and d!2032343 c!1186484) b!6477810))

(assert (= (and d!2032343 (not c!1186484)) b!6477811))

(declare-fun m!7266114 () Bool)

(assert (=> b!6477811 m!7266114))

(declare-fun m!7266116 () Bool)

(assert (=> b!6477811 m!7266116))

(assert (=> d!2032141 d!2032343))

(declare-fun d!2032345 () Bool)

(declare-fun c!1186485 () Bool)

(assert (=> d!2032345 (= c!1186485 ((_ is Nil!65240) (_1!36637 lt!2385692)))))

(declare-fun e!3926560 () (InoxSet C!32980))

(assert (=> d!2032345 (= (content!12410 (_1!36637 lt!2385692)) e!3926560)))

(declare-fun b!6477812 () Bool)

(assert (=> b!6477812 (= e!3926560 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6477813 () Bool)

(assert (=> b!6477813 (= e!3926560 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 (_1!36637 lt!2385692)) true) (content!12410 (t!378988 (_1!36637 lt!2385692)))))))

(assert (= (and d!2032345 c!1186485) b!6477812))

(assert (= (and d!2032345 (not c!1186485)) b!6477813))

(declare-fun m!7266118 () Bool)

(assert (=> b!6477813 m!7266118))

(declare-fun m!7266120 () Bool)

(assert (=> b!6477813 m!7266120))

(assert (=> d!2032141 d!2032345))

(declare-fun d!2032347 () Bool)

(declare-fun c!1186486 () Bool)

(assert (=> d!2032347 (= c!1186486 ((_ is Nil!65240) (_2!36637 lt!2385692)))))

(declare-fun e!3926561 () (InoxSet C!32980))

(assert (=> d!2032347 (= (content!12410 (_2!36637 lt!2385692)) e!3926561)))

(declare-fun b!6477814 () Bool)

(assert (=> b!6477814 (= e!3926561 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6477815 () Bool)

(assert (=> b!6477815 (= e!3926561 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 (_2!36637 lt!2385692)) true) (content!12410 (t!378988 (_2!36637 lt!2385692)))))))

(assert (= (and d!2032347 c!1186486) b!6477814))

(assert (= (and d!2032347 (not c!1186486)) b!6477815))

(declare-fun m!7266122 () Bool)

(assert (=> b!6477815 m!7266122))

(declare-fun m!7266124 () Bool)

(assert (=> b!6477815 m!7266124))

(assert (=> d!2032141 d!2032347))

(assert (=> d!2032013 d!2032273))

(declare-fun d!2032349 () Bool)

(declare-fun res!2659825 () Bool)

(declare-fun e!3926562 () Bool)

(assert (=> d!2032349 (=> res!2659825 e!3926562)))

(assert (=> d!2032349 (= res!2659825 ((_ is Nil!65241) (exprs!6239 lt!2385676)))))

(assert (=> d!2032349 (= (forall!15540 (exprs!6239 lt!2385676) lambda!358039) e!3926562)))

(declare-fun b!6477816 () Bool)

(declare-fun e!3926563 () Bool)

(assert (=> b!6477816 (= e!3926562 e!3926563)))

(declare-fun res!2659826 () Bool)

(assert (=> b!6477816 (=> (not res!2659826) (not e!3926563))))

(assert (=> b!6477816 (= res!2659826 (dynLambda!25916 lambda!358039 (h!71689 (exprs!6239 lt!2385676))))))

(declare-fun b!6477817 () Bool)

(assert (=> b!6477817 (= e!3926563 (forall!15540 (t!378989 (exprs!6239 lt!2385676)) lambda!358039))))

(assert (= (and d!2032349 (not res!2659825)) b!6477816))

(assert (= (and b!6477816 res!2659826) b!6477817))

(declare-fun b_lambda!245397 () Bool)

(assert (=> (not b_lambda!245397) (not b!6477816)))

(declare-fun m!7266126 () Bool)

(assert (=> b!6477816 m!7266126))

(declare-fun m!7266128 () Bool)

(assert (=> b!6477817 m!7266128))

(assert (=> d!2031879 d!2032349))

(declare-fun d!2032351 () Bool)

(assert (=> d!2032351 (= (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))) (nullableFct!2287 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun bs!1642810 () Bool)

(assert (= bs!1642810 d!2032351))

(declare-fun m!7266130 () Bool)

(assert (=> bs!1642810 m!7266130))

(assert (=> b!6476961 d!2032351))

(declare-fun bm!560558 () Bool)

(declare-fun call!560563 () (InoxSet Context!11478))

(assert (=> bm!560558 (= call!560563 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))) (h!71688 s!2326)))))

(declare-fun b!6477818 () Bool)

(declare-fun e!3926566 () Bool)

(assert (=> b!6477818 (= e!3926566 (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))))))

(declare-fun b!6477819 () Bool)

(declare-fun e!3926564 () (InoxSet Context!11478))

(assert (=> b!6477819 (= e!3926564 call!560563)))

(declare-fun b!6477820 () Bool)

(declare-fun e!3926565 () (InoxSet Context!11478))

(assert (=> b!6477820 (= e!3926565 e!3926564)))

(declare-fun c!1186488 () Bool)

(assert (=> b!6477820 (= c!1186488 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))))

(declare-fun b!6477822 () Bool)

(assert (=> b!6477822 (= e!3926564 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032353 () Bool)

(declare-fun c!1186487 () Bool)

(assert (=> d!2032353 (= c!1186487 e!3926566)))

(declare-fun res!2659827 () Bool)

(assert (=> d!2032353 (=> (not res!2659827) (not e!3926566))))

(assert (=> d!2032353 (= res!2659827 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))))

(assert (=> d!2032353 (= (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (h!71688 s!2326)) e!3926565)))

(declare-fun b!6477821 () Bool)

(assert (=> b!6477821 (= e!3926565 ((_ map or) call!560563 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))) (h!71688 s!2326))))))

(assert (= (and d!2032353 res!2659827) b!6477818))

(assert (= (and d!2032353 c!1186487) b!6477821))

(assert (= (and d!2032353 (not c!1186487)) b!6477820))

(assert (= (and b!6477820 c!1186488) b!6477819))

(assert (= (and b!6477820 (not c!1186488)) b!6477822))

(assert (= (or b!6477821 b!6477819) bm!560558))

(declare-fun m!7266132 () Bool)

(assert (=> bm!560558 m!7266132))

(declare-fun m!7266134 () Bool)

(assert (=> b!6477818 m!7266134))

(declare-fun m!7266136 () Bool)

(assert (=> b!6477821 m!7266136))

(assert (=> b!6477001 d!2032353))

(declare-fun d!2032355 () Bool)

(assert (=> d!2032355 (= (head!13189 (_1!36637 lt!2385692)) (h!71688 (_1!36637 lt!2385692)))))

(assert (=> b!6477082 d!2032355))

(declare-fun d!2032357 () Bool)

(declare-fun c!1186489 () Bool)

(assert (=> d!2032357 (= c!1186489 (isEmpty!37424 (tail!12274 (t!378988 s!2326))))))

(declare-fun e!3926567 () Bool)

(assert (=> d!2032357 (= (matchZipper!2367 (derivationStepZipper!2321 ((_ map or) lt!2385694 lt!2385659) (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))) e!3926567)))

(declare-fun b!6477823 () Bool)

(assert (=> b!6477823 (= e!3926567 (nullableZipper!2114 (derivationStepZipper!2321 ((_ map or) lt!2385694 lt!2385659) (head!13189 (t!378988 s!2326)))))))

(declare-fun b!6477824 () Bool)

(assert (=> b!6477824 (= e!3926567 (matchZipper!2367 (derivationStepZipper!2321 (derivationStepZipper!2321 ((_ map or) lt!2385694 lt!2385659) (head!13189 (t!378988 s!2326))) (head!13189 (tail!12274 (t!378988 s!2326)))) (tail!12274 (tail!12274 (t!378988 s!2326)))))))

(assert (= (and d!2032357 c!1186489) b!6477823))

(assert (= (and d!2032357 (not c!1186489)) b!6477824))

(assert (=> d!2032357 m!7265002))

(assert (=> d!2032357 m!7266040))

(assert (=> b!6477823 m!7265762))

(declare-fun m!7266138 () Bool)

(assert (=> b!6477823 m!7266138))

(assert (=> b!6477824 m!7265002))

(assert (=> b!6477824 m!7266044))

(assert (=> b!6477824 m!7265762))

(assert (=> b!6477824 m!7266044))

(declare-fun m!7266140 () Bool)

(assert (=> b!6477824 m!7266140))

(assert (=> b!6477824 m!7265002))

(assert (=> b!6477824 m!7266048))

(assert (=> b!6477824 m!7266140))

(assert (=> b!6477824 m!7266048))

(declare-fun m!7266142 () Bool)

(assert (=> b!6477824 m!7266142))

(assert (=> b!6477415 d!2032357))

(declare-fun bs!1642811 () Bool)

(declare-fun d!2032359 () Bool)

(assert (= bs!1642811 (and d!2032359 b!6476340)))

(declare-fun lambda!358135 () Int)

(assert (=> bs!1642811 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358135 lambda!358015))))

(declare-fun bs!1642812 () Bool)

(assert (= bs!1642812 (and d!2032359 d!2032025)))

(assert (=> bs!1642812 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358135 lambda!358081))))

(declare-fun bs!1642813 () Bool)

(assert (= bs!1642813 (and d!2032359 d!2032289)))

(assert (=> bs!1642813 (= lambda!358135 lambda!358131)))

(declare-fun bs!1642814 () Bool)

(assert (= bs!1642814 (and d!2032359 d!2032335)))

(assert (=> bs!1642814 (= (= (head!13189 (t!378988 s!2326)) (head!13189 lt!2385693)) (= lambda!358135 lambda!358132))))

(assert (=> d!2032359 true))

(assert (=> d!2032359 (= (derivationStepZipper!2321 ((_ map or) lt!2385694 lt!2385659) (head!13189 (t!378988 s!2326))) (flatMap!1860 ((_ map or) lt!2385694 lt!2385659) lambda!358135))))

(declare-fun bs!1642815 () Bool)

(assert (= bs!1642815 d!2032359))

(declare-fun m!7266144 () Bool)

(assert (=> bs!1642815 m!7266144))

(assert (=> b!6477415 d!2032359))

(assert (=> b!6477415 d!2032291))

(assert (=> b!6477415 d!2032293))

(declare-fun d!2032361 () Bool)

(declare-fun e!3926569 () Bool)

(assert (=> d!2032361 e!3926569))

(declare-fun res!2659829 () Bool)

(assert (=> d!2032361 (=> (not res!2659829) (not e!3926569))))

(declare-fun lt!2385906 () List!65364)

(assert (=> d!2032361 (= res!2659829 (= (content!12410 lt!2385906) ((_ map or) (content!12410 (t!378988 (_1!36637 lt!2385678))) (content!12410 (_2!36637 lt!2385678)))))))

(declare-fun e!3926568 () List!65364)

(assert (=> d!2032361 (= lt!2385906 e!3926568)))

(declare-fun c!1186490 () Bool)

(assert (=> d!2032361 (= c!1186490 ((_ is Nil!65240) (t!378988 (_1!36637 lt!2385678))))))

(assert (=> d!2032361 (= (++!14423 (t!378988 (_1!36637 lt!2385678)) (_2!36637 lt!2385678)) lt!2385906)))

(declare-fun b!6477827 () Bool)

(declare-fun res!2659828 () Bool)

(assert (=> b!6477827 (=> (not res!2659828) (not e!3926569))))

(assert (=> b!6477827 (= res!2659828 (= (size!40407 lt!2385906) (+ (size!40407 (t!378988 (_1!36637 lt!2385678))) (size!40407 (_2!36637 lt!2385678)))))))

(declare-fun b!6477826 () Bool)

(assert (=> b!6477826 (= e!3926568 (Cons!65240 (h!71688 (t!378988 (_1!36637 lt!2385678))) (++!14423 (t!378988 (t!378988 (_1!36637 lt!2385678))) (_2!36637 lt!2385678))))))

(declare-fun b!6477828 () Bool)

(assert (=> b!6477828 (= e!3926569 (or (not (= (_2!36637 lt!2385678) Nil!65240)) (= lt!2385906 (t!378988 (_1!36637 lt!2385678)))))))

(declare-fun b!6477825 () Bool)

(assert (=> b!6477825 (= e!3926568 (_2!36637 lt!2385678))))

(assert (= (and d!2032361 c!1186490) b!6477825))

(assert (= (and d!2032361 (not c!1186490)) b!6477826))

(assert (= (and d!2032361 res!2659829) b!6477827))

(assert (= (and b!6477827 res!2659828) b!6477828))

(declare-fun m!7266146 () Bool)

(assert (=> d!2032361 m!7266146))

(assert (=> d!2032361 m!7265780))

(assert (=> d!2032361 m!7265184))

(declare-fun m!7266148 () Bool)

(assert (=> b!6477827 m!7266148))

(assert (=> b!6477827 m!7265786))

(assert (=> b!6477827 m!7265190))

(declare-fun m!7266150 () Bool)

(assert (=> b!6477826 m!7266150))

(assert (=> b!6476923 d!2032361))

(assert (=> b!6476898 d!2032255))

(assert (=> b!6476898 d!2032257))

(assert (=> b!6476898 d!2032259))

(declare-fun b!6477829 () Bool)

(declare-fun e!3926573 () Bool)

(assert (=> b!6477829 (= e!3926573 (matchR!8538 (regTwo!33222 r!7292) (t!378988 s!2326)))))

(declare-fun b!6477830 () Bool)

(declare-fun lt!2385909 () Unit!158751)

(declare-fun lt!2385908 () Unit!158751)

(assert (=> b!6477830 (= lt!2385909 lt!2385908)))

(assert (=> b!6477830 (= (++!14423 (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (Cons!65240 (h!71688 (t!378988 s!2326)) Nil!65240)) (t!378988 (t!378988 s!2326))) s!2326)))

(assert (=> b!6477830 (= lt!2385908 (lemmaMoveElementToOtherListKeepsConcatEq!2511 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (h!71688 (t!378988 s!2326)) (t!378988 (t!378988 s!2326)) s!2326))))

(declare-fun e!3926572 () Option!16246)

(assert (=> b!6477830 (= e!3926572 (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) (++!14423 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (Cons!65240 (h!71688 (t!378988 s!2326)) Nil!65240)) (t!378988 (t!378988 s!2326)) s!2326))))

(declare-fun b!6477831 () Bool)

(declare-fun res!2659834 () Bool)

(declare-fun e!3926574 () Bool)

(assert (=> b!6477831 (=> (not res!2659834) (not e!3926574))))

(declare-fun lt!2385907 () Option!16246)

(assert (=> b!6477831 (= res!2659834 (matchR!8538 lt!2385664 (_1!36637 (get!22616 lt!2385907))))))

(declare-fun b!6477832 () Bool)

(declare-fun e!3926570 () Option!16246)

(assert (=> b!6477832 (= e!3926570 e!3926572)))

(declare-fun c!1186492 () Bool)

(assert (=> b!6477832 (= c!1186492 ((_ is Nil!65240) (t!378988 s!2326)))))

(declare-fun d!2032363 () Bool)

(declare-fun e!3926571 () Bool)

(assert (=> d!2032363 e!3926571))

(declare-fun res!2659830 () Bool)

(assert (=> d!2032363 (=> res!2659830 e!3926571)))

(assert (=> d!2032363 (= res!2659830 e!3926574)))

(declare-fun res!2659832 () Bool)

(assert (=> d!2032363 (=> (not res!2659832) (not e!3926574))))

(assert (=> d!2032363 (= res!2659832 (isDefined!12949 lt!2385907))))

(assert (=> d!2032363 (= lt!2385907 e!3926570)))

(declare-fun c!1186491 () Bool)

(assert (=> d!2032363 (= c!1186491 e!3926573)))

(declare-fun res!2659831 () Bool)

(assert (=> d!2032363 (=> (not res!2659831) (not e!3926573))))

(assert (=> d!2032363 (= res!2659831 (matchR!8538 lt!2385664 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240))))))

(assert (=> d!2032363 (validRegex!8091 lt!2385664)))

(assert (=> d!2032363 (= (findConcatSeparation!2660 lt!2385664 (regTwo!33222 r!7292) (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326) s!2326) lt!2385907)))

(declare-fun b!6477833 () Bool)

(declare-fun res!2659833 () Bool)

(assert (=> b!6477833 (=> (not res!2659833) (not e!3926574))))

(assert (=> b!6477833 (= res!2659833 (matchR!8538 (regTwo!33222 r!7292) (_2!36637 (get!22616 lt!2385907))))))

(declare-fun b!6477834 () Bool)

(assert (=> b!6477834 (= e!3926570 (Some!16245 (tuple2!66669 (++!14423 Nil!65240 (Cons!65240 (h!71688 s!2326) Nil!65240)) (t!378988 s!2326))))))

(declare-fun b!6477835 () Bool)

(assert (=> b!6477835 (= e!3926571 (not (isDefined!12949 lt!2385907)))))

(declare-fun b!6477836 () Bool)

(assert (=> b!6477836 (= e!3926574 (= (++!14423 (_1!36637 (get!22616 lt!2385907)) (_2!36637 (get!22616 lt!2385907))) s!2326))))

(declare-fun b!6477837 () Bool)

(assert (=> b!6477837 (= e!3926572 None!16245)))

(assert (= (and d!2032363 res!2659831) b!6477829))

(assert (= (and d!2032363 c!1186491) b!6477834))

(assert (= (and d!2032363 (not c!1186491)) b!6477832))

(assert (= (and b!6477832 c!1186492) b!6477837))

(assert (= (and b!6477832 (not c!1186492)) b!6477830))

(assert (= (and d!2032363 res!2659832) b!6477831))

(assert (= (and b!6477831 res!2659834) b!6477833))

(assert (= (and b!6477833 res!2659833) b!6477836))

(assert (= (and d!2032363 (not res!2659830)) b!6477835))

(assert (=> b!6477830 m!7265158))

(assert (=> b!6477830 m!7265984))

(assert (=> b!6477830 m!7265984))

(assert (=> b!6477830 m!7265986))

(assert (=> b!6477830 m!7265158))

(assert (=> b!6477830 m!7265988))

(assert (=> b!6477830 m!7265984))

(declare-fun m!7266152 () Bool)

(assert (=> b!6477830 m!7266152))

(declare-fun m!7266154 () Bool)

(assert (=> b!6477836 m!7266154))

(declare-fun m!7266156 () Bool)

(assert (=> b!6477836 m!7266156))

(declare-fun m!7266158 () Bool)

(assert (=> b!6477835 m!7266158))

(assert (=> d!2032363 m!7266158))

(assert (=> d!2032363 m!7265158))

(declare-fun m!7266160 () Bool)

(assert (=> d!2032363 m!7266160))

(assert (=> d!2032363 m!7264892))

(assert (=> b!6477831 m!7266154))

(declare-fun m!7266162 () Bool)

(assert (=> b!6477831 m!7266162))

(assert (=> b!6477833 m!7266154))

(declare-fun m!7266164 () Bool)

(assert (=> b!6477833 m!7266164))

(assert (=> b!6477829 m!7266004))

(assert (=> b!6476898 d!2032363))

(declare-fun d!2032365 () Bool)

(assert (=> d!2032365 true))

(assert (=> d!2032365 true))

(declare-fun res!2659835 () Bool)

(assert (=> d!2032365 (= (choose!48008 lambda!358013) res!2659835)))

(assert (=> d!2032035 d!2032365))

(declare-fun d!2032367 () Bool)

(assert (=> d!2032367 (= (head!13189 (_2!36637 lt!2385678)) (h!71688 (_2!36637 lt!2385678)))))

(assert (=> b!6477263 d!2032367))

(declare-fun d!2032369 () Bool)

(assert (=> d!2032369 true))

(assert (=> d!2032369 true))

(declare-fun res!2659836 () Bool)

(assert (=> d!2032369 (= (choose!48008 lambda!358020) res!2659836)))

(assert (=> d!2032153 d!2032369))

(declare-fun b!6477838 () Bool)

(declare-fun e!3926581 () Bool)

(assert (=> b!6477838 (= e!3926581 (not (= (head!13189 (tail!12274 s!2326)) (c!1186089 (derivativeStep!5053 r!7292 (head!13189 s!2326))))))))

(declare-fun b!6477839 () Bool)

(declare-fun res!2659839 () Bool)

(declare-fun e!3926575 () Bool)

(assert (=> b!6477839 (=> res!2659839 e!3926575)))

(assert (=> b!6477839 (= res!2659839 (not ((_ is ElementMatch!16355) (derivativeStep!5053 r!7292 (head!13189 s!2326)))))))

(declare-fun e!3926578 () Bool)

(assert (=> b!6477839 (= e!3926578 e!3926575)))

(declare-fun b!6477840 () Bool)

(declare-fun e!3926580 () Bool)

(declare-fun lt!2385910 () Bool)

(declare-fun call!560564 () Bool)

(assert (=> b!6477840 (= e!3926580 (= lt!2385910 call!560564))))

(declare-fun b!6477841 () Bool)

(declare-fun e!3926576 () Bool)

(assert (=> b!6477841 (= e!3926576 (= (head!13189 (tail!12274 s!2326)) (c!1186089 (derivativeStep!5053 r!7292 (head!13189 s!2326)))))))

(declare-fun b!6477842 () Bool)

(declare-fun res!2659842 () Bool)

(assert (=> b!6477842 (=> (not res!2659842) (not e!3926576))))

(assert (=> b!6477842 (= res!2659842 (not call!560564))))

(declare-fun d!2032371 () Bool)

(assert (=> d!2032371 e!3926580))

(declare-fun c!1186493 () Bool)

(assert (=> d!2032371 (= c!1186493 ((_ is EmptyExpr!16355) (derivativeStep!5053 r!7292 (head!13189 s!2326))))))

(declare-fun e!3926579 () Bool)

(assert (=> d!2032371 (= lt!2385910 e!3926579)))

(declare-fun c!1186495 () Bool)

(assert (=> d!2032371 (= c!1186495 (isEmpty!37424 (tail!12274 s!2326)))))

(assert (=> d!2032371 (validRegex!8091 (derivativeStep!5053 r!7292 (head!13189 s!2326)))))

(assert (=> d!2032371 (= (matchR!8538 (derivativeStep!5053 r!7292 (head!13189 s!2326)) (tail!12274 s!2326)) lt!2385910)))

(declare-fun b!6477843 () Bool)

(declare-fun res!2659844 () Bool)

(assert (=> b!6477843 (=> res!2659844 e!3926575)))

(assert (=> b!6477843 (= res!2659844 e!3926576)))

(declare-fun res!2659837 () Bool)

(assert (=> b!6477843 (=> (not res!2659837) (not e!3926576))))

(assert (=> b!6477843 (= res!2659837 lt!2385910)))

(declare-fun b!6477844 () Bool)

(declare-fun e!3926577 () Bool)

(assert (=> b!6477844 (= e!3926575 e!3926577)))

(declare-fun res!2659843 () Bool)

(assert (=> b!6477844 (=> (not res!2659843) (not e!3926577))))

(assert (=> b!6477844 (= res!2659843 (not lt!2385910))))

(declare-fun b!6477845 () Bool)

(declare-fun res!2659840 () Bool)

(assert (=> b!6477845 (=> res!2659840 e!3926581)))

(assert (=> b!6477845 (= res!2659840 (not (isEmpty!37424 (tail!12274 (tail!12274 s!2326)))))))

(declare-fun b!6477846 () Bool)

(assert (=> b!6477846 (= e!3926579 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 r!7292 (head!13189 s!2326)) (head!13189 (tail!12274 s!2326))) (tail!12274 (tail!12274 s!2326))))))

(declare-fun bm!560559 () Bool)

(assert (=> bm!560559 (= call!560564 (isEmpty!37424 (tail!12274 s!2326)))))

(declare-fun b!6477847 () Bool)

(assert (=> b!6477847 (= e!3926577 e!3926581)))

(declare-fun res!2659841 () Bool)

(assert (=> b!6477847 (=> res!2659841 e!3926581)))

(assert (=> b!6477847 (= res!2659841 call!560564)))

(declare-fun b!6477848 () Bool)

(assert (=> b!6477848 (= e!3926580 e!3926578)))

(declare-fun c!1186494 () Bool)

(assert (=> b!6477848 (= c!1186494 ((_ is EmptyLang!16355) (derivativeStep!5053 r!7292 (head!13189 s!2326))))))

(declare-fun b!6477849 () Bool)

(declare-fun res!2659838 () Bool)

(assert (=> b!6477849 (=> (not res!2659838) (not e!3926576))))

(assert (=> b!6477849 (= res!2659838 (isEmpty!37424 (tail!12274 (tail!12274 s!2326))))))

(declare-fun b!6477850 () Bool)

(assert (=> b!6477850 (= e!3926579 (nullable!6348 (derivativeStep!5053 r!7292 (head!13189 s!2326))))))

(declare-fun b!6477851 () Bool)

(assert (=> b!6477851 (= e!3926578 (not lt!2385910))))

(assert (= (and d!2032371 c!1186495) b!6477850))

(assert (= (and d!2032371 (not c!1186495)) b!6477846))

(assert (= (and d!2032371 c!1186493) b!6477840))

(assert (= (and d!2032371 (not c!1186493)) b!6477848))

(assert (= (and b!6477848 c!1186494) b!6477851))

(assert (= (and b!6477848 (not c!1186494)) b!6477839))

(assert (= (and b!6477839 (not res!2659839)) b!6477843))

(assert (= (and b!6477843 res!2659837) b!6477842))

(assert (= (and b!6477842 res!2659842) b!6477849))

(assert (= (and b!6477849 res!2659838) b!6477841))

(assert (= (and b!6477843 (not res!2659844)) b!6477844))

(assert (= (and b!6477844 res!2659843) b!6477847))

(assert (= (and b!6477847 (not res!2659841)) b!6477845))

(assert (= (and b!6477845 (not res!2659840)) b!6477838))

(assert (= (or b!6477840 b!6477847 b!6477842) bm!560559))

(assert (=> d!2032371 m!7264730))

(assert (=> d!2032371 m!7264738))

(assert (=> d!2032371 m!7265290))

(declare-fun m!7266166 () Bool)

(assert (=> d!2032371 m!7266166))

(assert (=> b!6477846 m!7264730))

(declare-fun m!7266168 () Bool)

(assert (=> b!6477846 m!7266168))

(assert (=> b!6477846 m!7265290))

(assert (=> b!6477846 m!7266168))

(declare-fun m!7266170 () Bool)

(assert (=> b!6477846 m!7266170))

(assert (=> b!6477846 m!7264730))

(declare-fun m!7266172 () Bool)

(assert (=> b!6477846 m!7266172))

(assert (=> b!6477846 m!7266170))

(assert (=> b!6477846 m!7266172))

(declare-fun m!7266174 () Bool)

(assert (=> b!6477846 m!7266174))

(assert (=> bm!560559 m!7264730))

(assert (=> bm!560559 m!7264738))

(assert (=> b!6477845 m!7264730))

(assert (=> b!6477845 m!7266172))

(assert (=> b!6477845 m!7266172))

(declare-fun m!7266176 () Bool)

(assert (=> b!6477845 m!7266176))

(assert (=> b!6477841 m!7264730))

(assert (=> b!6477841 m!7266168))

(assert (=> b!6477849 m!7264730))

(assert (=> b!6477849 m!7266172))

(assert (=> b!6477849 m!7266172))

(assert (=> b!6477849 m!7266176))

(assert (=> b!6477838 m!7264730))

(assert (=> b!6477838 m!7266168))

(assert (=> b!6477850 m!7265290))

(declare-fun m!7266178 () Bool)

(assert (=> b!6477850 m!7266178))

(assert (=> b!6477048 d!2032371))

(declare-fun call!560567 () Regex!16355)

(declare-fun e!3926582 () Regex!16355)

(declare-fun b!6477852 () Bool)

(declare-fun call!560566 () Regex!16355)

(assert (=> b!6477852 (= e!3926582 (Union!16355 (Concat!25200 call!560566 (regTwo!33222 r!7292)) call!560567))))

(declare-fun bm!560560 () Bool)

(declare-fun call!560568 () Regex!16355)

(assert (=> bm!560560 (= call!560567 call!560568)))

(declare-fun b!6477853 () Bool)

(declare-fun c!1186499 () Bool)

(assert (=> b!6477853 (= c!1186499 (nullable!6348 (regOne!33222 r!7292)))))

(declare-fun e!3926584 () Regex!16355)

(assert (=> b!6477853 (= e!3926584 e!3926582)))

(declare-fun bm!560561 () Bool)

(declare-fun c!1186496 () Bool)

(declare-fun c!1186498 () Bool)

(declare-fun call!560565 () Regex!16355)

(assert (=> bm!560561 (= call!560565 (derivativeStep!5053 (ite c!1186496 (regTwo!33223 r!7292) (ite c!1186498 (reg!16684 r!7292) (regOne!33222 r!7292))) (head!13189 s!2326)))))

(declare-fun b!6477854 () Bool)

(assert (=> b!6477854 (= c!1186496 ((_ is Union!16355) r!7292))))

(declare-fun e!3926585 () Regex!16355)

(declare-fun e!3926586 () Regex!16355)

(assert (=> b!6477854 (= e!3926585 e!3926586)))

(declare-fun b!6477855 () Bool)

(assert (=> b!6477855 (= e!3926585 (ite (= (head!13189 s!2326) (c!1186089 r!7292)) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560562 () Bool)

(assert (=> bm!560562 (= call!560566 call!560565)))

(declare-fun b!6477856 () Bool)

(assert (=> b!6477856 (= e!3926586 e!3926584)))

(assert (=> b!6477856 (= c!1186498 ((_ is Star!16355) r!7292))))

(declare-fun b!6477857 () Bool)

(assert (=> b!6477857 (= e!3926584 (Concat!25200 call!560566 r!7292))))

(declare-fun bm!560563 () Bool)

(assert (=> bm!560563 (= call!560568 (derivativeStep!5053 (ite c!1186496 (regOne!33223 r!7292) (ite c!1186499 (regTwo!33222 r!7292) (regOne!33222 r!7292))) (head!13189 s!2326)))))

(declare-fun b!6477858 () Bool)

(assert (=> b!6477858 (= e!3926582 (Union!16355 (Concat!25200 call!560567 (regTwo!33222 r!7292)) EmptyLang!16355))))

(declare-fun b!6477859 () Bool)

(assert (=> b!6477859 (= e!3926586 (Union!16355 call!560568 call!560565))))

(declare-fun d!2032373 () Bool)

(declare-fun lt!2385911 () Regex!16355)

(assert (=> d!2032373 (validRegex!8091 lt!2385911)))

(declare-fun e!3926583 () Regex!16355)

(assert (=> d!2032373 (= lt!2385911 e!3926583)))

(declare-fun c!1186500 () Bool)

(assert (=> d!2032373 (= c!1186500 (or ((_ is EmptyExpr!16355) r!7292) ((_ is EmptyLang!16355) r!7292)))))

(assert (=> d!2032373 (validRegex!8091 r!7292)))

(assert (=> d!2032373 (= (derivativeStep!5053 r!7292 (head!13189 s!2326)) lt!2385911)))

(declare-fun b!6477860 () Bool)

(assert (=> b!6477860 (= e!3926583 e!3926585)))

(declare-fun c!1186497 () Bool)

(assert (=> b!6477860 (= c!1186497 ((_ is ElementMatch!16355) r!7292))))

(declare-fun b!6477861 () Bool)

(assert (=> b!6477861 (= e!3926583 EmptyLang!16355)))

(assert (= (and d!2032373 c!1186500) b!6477861))

(assert (= (and d!2032373 (not c!1186500)) b!6477860))

(assert (= (and b!6477860 c!1186497) b!6477855))

(assert (= (and b!6477860 (not c!1186497)) b!6477854))

(assert (= (and b!6477854 c!1186496) b!6477859))

(assert (= (and b!6477854 (not c!1186496)) b!6477856))

(assert (= (and b!6477856 c!1186498) b!6477857))

(assert (= (and b!6477856 (not c!1186498)) b!6477853))

(assert (= (and b!6477853 c!1186499) b!6477852))

(assert (= (and b!6477853 (not c!1186499)) b!6477858))

(assert (= (or b!6477852 b!6477858) bm!560560))

(assert (= (or b!6477857 b!6477852) bm!560562))

(assert (= (or b!6477859 bm!560562) bm!560561))

(assert (= (or b!6477859 bm!560560) bm!560563))

(assert (=> b!6477853 m!7266022))

(assert (=> bm!560561 m!7264724))

(declare-fun m!7266180 () Bool)

(assert (=> bm!560561 m!7266180))

(assert (=> bm!560563 m!7264724))

(declare-fun m!7266182 () Bool)

(assert (=> bm!560563 m!7266182))

(declare-fun m!7266184 () Bool)

(assert (=> d!2032373 m!7266184))

(assert (=> d!2032373 m!7264570))

(assert (=> b!6477048 d!2032373))

(assert (=> b!6477048 d!2032309))

(assert (=> b!6477048 d!2032233))

(declare-fun d!2032375 () Bool)

(declare-fun lambda!358138 () Int)

(declare-fun exists!2614 ((InoxSet Context!11478) Int) Bool)

(assert (=> d!2032375 (= (nullableZipper!2114 lt!2385659) (exists!2614 lt!2385659 lambda!358138))))

(declare-fun bs!1642816 () Bool)

(assert (= bs!1642816 d!2032375))

(declare-fun m!7266186 () Bool)

(assert (=> bs!1642816 m!7266186))

(assert (=> b!6476739 d!2032375))

(assert (=> d!2032037 d!2032027))

(assert (=> d!2032037 d!2032279))

(assert (=> d!2032037 d!2032053))

(declare-fun d!2032377 () Bool)

(assert (=> d!2032377 (= (Exists!3425 lambda!358082) (choose!48008 lambda!358082))))

(declare-fun bs!1642817 () Bool)

(assert (= bs!1642817 d!2032377))

(declare-fun m!7266188 () Bool)

(assert (=> bs!1642817 m!7266188))

(assert (=> d!2032037 d!2032377))

(declare-fun bs!1642818 () Bool)

(declare-fun d!2032379 () Bool)

(assert (= bs!1642818 (and d!2032379 d!2032127)))

(declare-fun lambda!358139 () Int)

(assert (=> bs!1642818 (not (= lambda!358139 lambda!358115))))

(declare-fun bs!1642819 () Bool)

(assert (= bs!1642819 (and d!2032379 d!2032245)))

(assert (=> bs!1642819 (not (= lambda!358139 lambda!358128))))

(declare-fun bs!1642820 () Bool)

(assert (= bs!1642820 (and d!2032379 d!2031923)))

(assert (=> bs!1642820 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358139 lambda!358059))))

(declare-fun bs!1642821 () Bool)

(assert (= bs!1642821 (and d!2032379 d!2032125)))

(assert (=> bs!1642821 (not (= lambda!358139 lambda!358108))))

(declare-fun bs!1642822 () Bool)

(assert (= bs!1642822 (and d!2032379 b!6477031)))

(assert (=> bs!1642822 (not (= lambda!358139 lambda!358073))))

(declare-fun bs!1642823 () Bool)

(assert (= bs!1642823 (and d!2032379 b!6476331)))

(assert (=> bs!1642823 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358139 lambda!358018))))

(declare-fun bs!1642824 () Bool)

(assert (= bs!1642824 (and d!2032379 d!2032155)))

(assert (=> bs!1642824 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358139 lambda!358116))))

(declare-fun bs!1642825 () Bool)

(assert (= bs!1642825 (and d!2032379 b!6477635)))

(assert (=> bs!1642825 (not (= lambda!358139 lambda!358129))))

(declare-fun bs!1642826 () Bool)

(assert (= bs!1642826 (and d!2032379 b!6477637)))

(assert (=> bs!1642826 (not (= lambda!358139 lambda!358130))))

(declare-fun bs!1642827 () Bool)

(assert (= bs!1642827 (and d!2032379 b!6477548)))

(assert (=> bs!1642827 (not (= lambda!358139 lambda!358118))))

(declare-fun bs!1642828 () Bool)

(assert (= bs!1642828 (and d!2032379 b!6476300)))

(assert (=> bs!1642828 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358139 lambda!358016))))

(assert (=> bs!1642819 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358139 lambda!358127))))

(declare-fun bs!1642829 () Bool)

(assert (= bs!1642829 (and d!2032379 b!6477546)))

(assert (=> bs!1642829 (not (= lambda!358139 lambda!358117))))

(declare-fun bs!1642830 () Bool)

(assert (= bs!1642830 (and d!2032379 b!6476519)))

(assert (=> bs!1642830 (not (= lambda!358139 lambda!358035))))

(declare-fun bs!1642831 () Bool)

(assert (= bs!1642831 (and d!2032379 b!6477297)))

(assert (=> bs!1642831 (not (= lambda!358139 lambda!358103))))

(assert (=> bs!1642823 (not (= lambda!358139 lambda!358020))))

(declare-fun bs!1642832 () Bool)

(assert (= bs!1642832 (and d!2032379 d!2032041)))

(assert (=> bs!1642832 (= lambda!358139 lambda!358083)))

(assert (=> bs!1642828 (not (= lambda!358139 lambda!358017))))

(assert (=> bs!1642821 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358139 lambda!358107))))

(declare-fun bs!1642833 () Bool)

(assert (= bs!1642833 (and d!2032379 b!6476517)))

(assert (=> bs!1642833 (not (= lambda!358139 lambda!358032))))

(assert (=> bs!1642820 (not (= lambda!358139 lambda!358062))))

(declare-fun bs!1642834 () Bool)

(assert (= bs!1642834 (and d!2032379 b!6476306)))

(assert (=> bs!1642834 (not (= lambda!358139 lambda!358014))))

(declare-fun bs!1642835 () Bool)

(assert (= bs!1642835 (and d!2032379 d!2032037)))

(assert (=> bs!1642835 (= lambda!358139 lambda!358082)))

(declare-fun bs!1642836 () Bool)

(assert (= bs!1642836 (and d!2032379 b!6477299)))

(assert (=> bs!1642836 (not (= lambda!358139 lambda!358105))))

(declare-fun bs!1642837 () Bool)

(assert (= bs!1642837 (and d!2032379 b!6477033)))

(assert (=> bs!1642837 (not (= lambda!358139 lambda!358075))))

(assert (=> bs!1642818 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358139 lambda!358114))))

(declare-fun bs!1642838 () Bool)

(assert (= bs!1642838 (and d!2032379 b!6477792)))

(assert (=> bs!1642838 (not (= lambda!358139 lambda!358133))))

(assert (=> bs!1642834 (= lambda!358139 lambda!358013)))

(declare-fun bs!1642839 () Bool)

(assert (= bs!1642839 (and d!2032379 d!2031905)))

(assert (=> bs!1642839 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358139 lambda!358052))))

(assert (=> bs!1642823 (not (= lambda!358139 lambda!358019))))

(declare-fun bs!1642840 () Bool)

(assert (= bs!1642840 (and d!2032379 b!6477794)))

(assert (=> bs!1642840 (not (= lambda!358139 lambda!358134))))

(assert (=> bs!1642832 (not (= lambda!358139 lambda!358084))))

(declare-fun bs!1642841 () Bool)

(assert (= bs!1642841 (and d!2032379 d!2032237)))

(assert (=> bs!1642841 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358139 lambda!358122))))

(assert (=> d!2032379 true))

(assert (=> d!2032379 true))

(assert (=> d!2032379 true))

(assert (=> d!2032379 (= (isDefined!12949 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)) (Exists!3425 lambda!358139))))

(assert (=> d!2032379 true))

(declare-fun _$89!2711 () Unit!158751)

(assert (=> d!2032379 (= (choose!48005 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326) _$89!2711)))

(declare-fun bs!1642842 () Bool)

(assert (= bs!1642842 d!2032379))

(assert (=> bs!1642842 m!7264524))

(assert (=> bs!1642842 m!7264524))

(assert (=> bs!1642842 m!7264526))

(declare-fun m!7266190 () Bool)

(assert (=> bs!1642842 m!7266190))

(assert (=> d!2032037 d!2032379))

(declare-fun b!6477862 () Bool)

(declare-fun e!3926593 () Bool)

(assert (=> b!6477862 (= e!3926593 (not (= (head!13189 (tail!12274 (_2!36637 lt!2385678))) (c!1186089 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678)))))))))

(declare-fun b!6477863 () Bool)

(declare-fun res!2659847 () Bool)

(declare-fun e!3926587 () Bool)

(assert (=> b!6477863 (=> res!2659847 e!3926587)))

(assert (=> b!6477863 (= res!2659847 (not ((_ is ElementMatch!16355) (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678))))))))

(declare-fun e!3926590 () Bool)

(assert (=> b!6477863 (= e!3926590 e!3926587)))

(declare-fun b!6477864 () Bool)

(declare-fun e!3926592 () Bool)

(declare-fun lt!2385912 () Bool)

(declare-fun call!560569 () Bool)

(assert (=> b!6477864 (= e!3926592 (= lt!2385912 call!560569))))

(declare-fun b!6477865 () Bool)

(declare-fun e!3926588 () Bool)

(assert (=> b!6477865 (= e!3926588 (= (head!13189 (tail!12274 (_2!36637 lt!2385678))) (c!1186089 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678))))))))

(declare-fun b!6477866 () Bool)

(declare-fun res!2659850 () Bool)

(assert (=> b!6477866 (=> (not res!2659850) (not e!3926588))))

(assert (=> b!6477866 (= res!2659850 (not call!560569))))

(declare-fun d!2032381 () Bool)

(assert (=> d!2032381 e!3926592))

(declare-fun c!1186503 () Bool)

(assert (=> d!2032381 (= c!1186503 ((_ is EmptyExpr!16355) (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678)))))))

(declare-fun e!3926591 () Bool)

(assert (=> d!2032381 (= lt!2385912 e!3926591)))

(declare-fun c!1186505 () Bool)

(assert (=> d!2032381 (= c!1186505 (isEmpty!37424 (tail!12274 (_2!36637 lt!2385678))))))

(assert (=> d!2032381 (validRegex!8091 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678))))))

(assert (=> d!2032381 (= (matchR!8538 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678))) (tail!12274 (_2!36637 lt!2385678))) lt!2385912)))

(declare-fun b!6477867 () Bool)

(declare-fun res!2659852 () Bool)

(assert (=> b!6477867 (=> res!2659852 e!3926587)))

(assert (=> b!6477867 (= res!2659852 e!3926588)))

(declare-fun res!2659845 () Bool)

(assert (=> b!6477867 (=> (not res!2659845) (not e!3926588))))

(assert (=> b!6477867 (= res!2659845 lt!2385912)))

(declare-fun b!6477868 () Bool)

(declare-fun e!3926589 () Bool)

(assert (=> b!6477868 (= e!3926587 e!3926589)))

(declare-fun res!2659851 () Bool)

(assert (=> b!6477868 (=> (not res!2659851) (not e!3926589))))

(assert (=> b!6477868 (= res!2659851 (not lt!2385912))))

(declare-fun b!6477869 () Bool)

(declare-fun res!2659848 () Bool)

(assert (=> b!6477869 (=> res!2659848 e!3926593)))

(assert (=> b!6477869 (= res!2659848 (not (isEmpty!37424 (tail!12274 (tail!12274 (_2!36637 lt!2385678))))))))

(declare-fun b!6477870 () Bool)

(assert (=> b!6477870 (= e!3926591 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678))) (head!13189 (tail!12274 (_2!36637 lt!2385678)))) (tail!12274 (tail!12274 (_2!36637 lt!2385678)))))))

(declare-fun bm!560564 () Bool)

(assert (=> bm!560564 (= call!560569 (isEmpty!37424 (tail!12274 (_2!36637 lt!2385678))))))

(declare-fun b!6477871 () Bool)

(assert (=> b!6477871 (= e!3926589 e!3926593)))

(declare-fun res!2659849 () Bool)

(assert (=> b!6477871 (=> res!2659849 e!3926593)))

(assert (=> b!6477871 (= res!2659849 call!560569)))

(declare-fun b!6477872 () Bool)

(assert (=> b!6477872 (= e!3926592 e!3926590)))

(declare-fun c!1186504 () Bool)

(assert (=> b!6477872 (= c!1186504 ((_ is EmptyLang!16355) (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678)))))))

(declare-fun b!6477873 () Bool)

(declare-fun res!2659846 () Bool)

(assert (=> b!6477873 (=> (not res!2659846) (not e!3926588))))

(assert (=> b!6477873 (= res!2659846 (isEmpty!37424 (tail!12274 (tail!12274 (_2!36637 lt!2385678)))))))

(declare-fun b!6477874 () Bool)

(assert (=> b!6477874 (= e!3926591 (nullable!6348 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678)))))))

(declare-fun b!6477875 () Bool)

(assert (=> b!6477875 (= e!3926590 (not lt!2385912))))

(assert (= (and d!2032381 c!1186505) b!6477874))

(assert (= (and d!2032381 (not c!1186505)) b!6477870))

(assert (= (and d!2032381 c!1186503) b!6477864))

(assert (= (and d!2032381 (not c!1186503)) b!6477872))

(assert (= (and b!6477872 c!1186504) b!6477875))

(assert (= (and b!6477872 (not c!1186504)) b!6477863))

(assert (= (and b!6477863 (not res!2659847)) b!6477867))

(assert (= (and b!6477867 res!2659845) b!6477866))

(assert (= (and b!6477866 res!2659850) b!6477873))

(assert (= (and b!6477873 res!2659846) b!6477865))

(assert (= (and b!6477867 (not res!2659852)) b!6477868))

(assert (= (and b!6477868 res!2659851) b!6477871))

(assert (= (and b!6477871 (not res!2659849)) b!6477869))

(assert (= (and b!6477869 (not res!2659848)) b!6477862))

(assert (= (or b!6477864 b!6477871 b!6477866) bm!560564))

(assert (=> d!2032381 m!7265592))

(assert (=> d!2032381 m!7265596))

(assert (=> d!2032381 m!7265590))

(declare-fun m!7266192 () Bool)

(assert (=> d!2032381 m!7266192))

(assert (=> b!6477870 m!7265592))

(declare-fun m!7266194 () Bool)

(assert (=> b!6477870 m!7266194))

(assert (=> b!6477870 m!7265590))

(assert (=> b!6477870 m!7266194))

(declare-fun m!7266196 () Bool)

(assert (=> b!6477870 m!7266196))

(assert (=> b!6477870 m!7265592))

(declare-fun m!7266198 () Bool)

(assert (=> b!6477870 m!7266198))

(assert (=> b!6477870 m!7266196))

(assert (=> b!6477870 m!7266198))

(declare-fun m!7266200 () Bool)

(assert (=> b!6477870 m!7266200))

(assert (=> bm!560564 m!7265592))

(assert (=> bm!560564 m!7265596))

(assert (=> b!6477869 m!7265592))

(assert (=> b!6477869 m!7266198))

(assert (=> b!6477869 m!7266198))

(declare-fun m!7266202 () Bool)

(assert (=> b!6477869 m!7266202))

(assert (=> b!6477865 m!7265592))

(assert (=> b!6477865 m!7266194))

(assert (=> b!6477873 m!7265592))

(assert (=> b!6477873 m!7266198))

(assert (=> b!6477873 m!7266198))

(assert (=> b!6477873 m!7266202))

(assert (=> b!6477862 m!7265592))

(assert (=> b!6477862 m!7266194))

(assert (=> b!6477874 m!7265590))

(declare-fun m!7266204 () Bool)

(assert (=> b!6477874 m!7266204))

(assert (=> b!6477271 d!2032381))

(declare-fun call!560572 () Regex!16355)

(declare-fun e!3926594 () Regex!16355)

(declare-fun b!6477876 () Bool)

(declare-fun call!560571 () Regex!16355)

(assert (=> b!6477876 (= e!3926594 (Union!16355 (Concat!25200 call!560571 (regTwo!33222 (regTwo!33222 r!7292))) call!560572))))

(declare-fun bm!560565 () Bool)

(declare-fun call!560573 () Regex!16355)

(assert (=> bm!560565 (= call!560572 call!560573)))

(declare-fun b!6477877 () Bool)

(declare-fun c!1186509 () Bool)

(assert (=> b!6477877 (= c!1186509 (nullable!6348 (regOne!33222 (regTwo!33222 r!7292))))))

(declare-fun e!3926596 () Regex!16355)

(assert (=> b!6477877 (= e!3926596 e!3926594)))

(declare-fun c!1186506 () Bool)

(declare-fun bm!560566 () Bool)

(declare-fun call!560570 () Regex!16355)

(declare-fun c!1186508 () Bool)

(assert (=> bm!560566 (= call!560570 (derivativeStep!5053 (ite c!1186506 (regTwo!33223 (regTwo!33222 r!7292)) (ite c!1186508 (reg!16684 (regTwo!33222 r!7292)) (regOne!33222 (regTwo!33222 r!7292)))) (head!13189 (_2!36637 lt!2385678))))))

(declare-fun b!6477878 () Bool)

(assert (=> b!6477878 (= c!1186506 ((_ is Union!16355) (regTwo!33222 r!7292)))))

(declare-fun e!3926597 () Regex!16355)

(declare-fun e!3926598 () Regex!16355)

(assert (=> b!6477878 (= e!3926597 e!3926598)))

(declare-fun b!6477879 () Bool)

(assert (=> b!6477879 (= e!3926597 (ite (= (head!13189 (_2!36637 lt!2385678)) (c!1186089 (regTwo!33222 r!7292))) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560567 () Bool)

(assert (=> bm!560567 (= call!560571 call!560570)))

(declare-fun b!6477880 () Bool)

(assert (=> b!6477880 (= e!3926598 e!3926596)))

(assert (=> b!6477880 (= c!1186508 ((_ is Star!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6477881 () Bool)

(assert (=> b!6477881 (= e!3926596 (Concat!25200 call!560571 (regTwo!33222 r!7292)))))

(declare-fun bm!560568 () Bool)

(assert (=> bm!560568 (= call!560573 (derivativeStep!5053 (ite c!1186506 (regOne!33223 (regTwo!33222 r!7292)) (ite c!1186509 (regTwo!33222 (regTwo!33222 r!7292)) (regOne!33222 (regTwo!33222 r!7292)))) (head!13189 (_2!36637 lt!2385678))))))

(declare-fun b!6477882 () Bool)

(assert (=> b!6477882 (= e!3926594 (Union!16355 (Concat!25200 call!560572 (regTwo!33222 (regTwo!33222 r!7292))) EmptyLang!16355))))

(declare-fun b!6477883 () Bool)

(assert (=> b!6477883 (= e!3926598 (Union!16355 call!560573 call!560570))))

(declare-fun d!2032383 () Bool)

(declare-fun lt!2385913 () Regex!16355)

(assert (=> d!2032383 (validRegex!8091 lt!2385913)))

(declare-fun e!3926595 () Regex!16355)

(assert (=> d!2032383 (= lt!2385913 e!3926595)))

(declare-fun c!1186510 () Bool)

(assert (=> d!2032383 (= c!1186510 (or ((_ is EmptyExpr!16355) (regTwo!33222 r!7292)) ((_ is EmptyLang!16355) (regTwo!33222 r!7292))))))

(assert (=> d!2032383 (validRegex!8091 (regTwo!33222 r!7292))))

(assert (=> d!2032383 (= (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 lt!2385678))) lt!2385913)))

(declare-fun b!6477884 () Bool)

(assert (=> b!6477884 (= e!3926595 e!3926597)))

(declare-fun c!1186507 () Bool)

(assert (=> b!6477884 (= c!1186507 ((_ is ElementMatch!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6477885 () Bool)

(assert (=> b!6477885 (= e!3926595 EmptyLang!16355)))

(assert (= (and d!2032383 c!1186510) b!6477885))

(assert (= (and d!2032383 (not c!1186510)) b!6477884))

(assert (= (and b!6477884 c!1186507) b!6477879))

(assert (= (and b!6477884 (not c!1186507)) b!6477878))

(assert (= (and b!6477878 c!1186506) b!6477883))

(assert (= (and b!6477878 (not c!1186506)) b!6477880))

(assert (= (and b!6477880 c!1186508) b!6477881))

(assert (= (and b!6477880 (not c!1186508)) b!6477877))

(assert (= (and b!6477877 c!1186509) b!6477876))

(assert (= (and b!6477877 (not c!1186509)) b!6477882))

(assert (= (or b!6477876 b!6477882) bm!560565))

(assert (= (or b!6477881 b!6477876) bm!560567))

(assert (= (or b!6477883 bm!560567) bm!560566))

(assert (= (or b!6477883 bm!560565) bm!560568))

(declare-fun m!7266206 () Bool)

(assert (=> b!6477877 m!7266206))

(assert (=> bm!560566 m!7265588))

(declare-fun m!7266208 () Bool)

(assert (=> bm!560566 m!7266208))

(assert (=> bm!560568 m!7265588))

(declare-fun m!7266210 () Bool)

(assert (=> bm!560568 m!7266210))

(declare-fun m!7266212 () Bool)

(assert (=> d!2032383 m!7266212))

(assert (=> d!2032383 m!7264954))

(assert (=> b!6477271 d!2032383))

(assert (=> b!6477271 d!2032367))

(declare-fun d!2032385 () Bool)

(assert (=> d!2032385 (= (tail!12274 (_2!36637 lt!2385678)) (t!378988 (_2!36637 lt!2385678)))))

(assert (=> b!6477271 d!2032385))

(declare-fun d!2032387 () Bool)

(assert (=> d!2032387 (= (isEmpty!37422 (t!378989 (unfocusZipperList!1776 zl!343))) ((_ is Nil!65241) (t!378989 (unfocusZipperList!1776 zl!343))))))

(assert (=> b!6477223 d!2032387))

(declare-fun d!2032389 () Bool)

(assert (=> d!2032389 (= (head!13189 lt!2385673) (h!71688 lt!2385673))))

(assert (=> b!6476594 d!2032389))

(declare-fun d!2032391 () Bool)

(assert (=> d!2032391 (= (Exists!3425 (ite c!1186298 lambda!358073 lambda!358075)) (choose!48008 (ite c!1186298 lambda!358073 lambda!358075)))))

(declare-fun bs!1642843 () Bool)

(assert (= bs!1642843 d!2032391))

(declare-fun m!7266214 () Bool)

(assert (=> bs!1642843 m!7266214))

(assert (=> bm!560465 d!2032391))

(declare-fun d!2032393 () Bool)

(assert (=> d!2032393 true))

(declare-fun setRes!44123 () Bool)

(assert (=> d!2032393 setRes!44123))

(declare-fun condSetEmpty!44123 () Bool)

(declare-fun res!2659853 () (InoxSet Context!11478))

(assert (=> d!2032393 (= condSetEmpty!44123 (= res!2659853 ((as const (Array Context!11478 Bool)) false)))))

(assert (=> d!2032393 (= (choose!48010 lt!2385643 lambda!358015) res!2659853)))

(declare-fun setIsEmpty!44123 () Bool)

(assert (=> setIsEmpty!44123 setRes!44123))

(declare-fun e!3926599 () Bool)

(declare-fun setNonEmpty!44123 () Bool)

(declare-fun setElem!44123 () Context!11478)

(declare-fun tp!1795039 () Bool)

(assert (=> setNonEmpty!44123 (= setRes!44123 (and tp!1795039 (inv!84134 setElem!44123) e!3926599))))

(declare-fun setRest!44123 () (InoxSet Context!11478))

(assert (=> setNonEmpty!44123 (= res!2659853 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) setElem!44123 true) setRest!44123))))

(declare-fun b!6477886 () Bool)

(declare-fun tp!1795040 () Bool)

(assert (=> b!6477886 (= e!3926599 tp!1795040)))

(assert (= (and d!2032393 condSetEmpty!44123) setIsEmpty!44123))

(assert (= (and d!2032393 (not condSetEmpty!44123)) setNonEmpty!44123))

(assert (= setNonEmpty!44123 b!6477886))

(declare-fun m!7266216 () Bool)

(assert (=> setNonEmpty!44123 m!7266216))

(assert (=> d!2032075 d!2032393))

(declare-fun bs!1642844 () Bool)

(declare-fun d!2032395 () Bool)

(assert (= bs!1642844 (and d!2032395 d!2032375)))

(declare-fun lambda!358140 () Int)

(assert (=> bs!1642844 (= lambda!358140 lambda!358138)))

(assert (=> d!2032395 (= (nullableZipper!2114 lt!2385677) (exists!2614 lt!2385677 lambda!358140))))

(declare-fun bs!1642845 () Bool)

(assert (= bs!1642845 d!2032395))

(declare-fun m!7266218 () Bool)

(assert (=> bs!1642845 m!7266218))

(assert (=> b!6476637 d!2032395))

(declare-fun d!2032397 () Bool)

(declare-fun lt!2385914 () Int)

(assert (=> d!2032397 (>= lt!2385914 0)))

(declare-fun e!3926600 () Int)

(assert (=> d!2032397 (= lt!2385914 e!3926600)))

(declare-fun c!1186511 () Bool)

(assert (=> d!2032397 (= c!1186511 ((_ is Nil!65240) lt!2385810))))

(assert (=> d!2032397 (= (size!40407 lt!2385810) lt!2385914)))

(declare-fun b!6477887 () Bool)

(assert (=> b!6477887 (= e!3926600 0)))

(declare-fun b!6477888 () Bool)

(assert (=> b!6477888 (= e!3926600 (+ 1 (size!40407 (t!378988 lt!2385810))))))

(assert (= (and d!2032397 c!1186511) b!6477887))

(assert (= (and d!2032397 (not c!1186511)) b!6477888))

(declare-fun m!7266220 () Bool)

(assert (=> b!6477888 m!7266220))

(assert (=> b!6477064 d!2032397))

(declare-fun d!2032399 () Bool)

(declare-fun lt!2385915 () Int)

(assert (=> d!2032399 (>= lt!2385915 0)))

(declare-fun e!3926601 () Int)

(assert (=> d!2032399 (= lt!2385915 e!3926601)))

(declare-fun c!1186512 () Bool)

(assert (=> d!2032399 (= c!1186512 ((_ is Nil!65240) lt!2385673))))

(assert (=> d!2032399 (= (size!40407 lt!2385673) lt!2385915)))

(declare-fun b!6477889 () Bool)

(assert (=> b!6477889 (= e!3926601 0)))

(declare-fun b!6477890 () Bool)

(assert (=> b!6477890 (= e!3926601 (+ 1 (size!40407 (t!378988 lt!2385673))))))

(assert (= (and d!2032399 c!1186512) b!6477889))

(assert (= (and d!2032399 (not c!1186512)) b!6477890))

(declare-fun m!7266222 () Bool)

(assert (=> b!6477890 m!7266222))

(assert (=> b!6477064 d!2032399))

(assert (=> b!6477064 d!2032271))

(declare-fun d!2032401 () Bool)

(assert (=> d!2032401 (= (isEmpty!37425 (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326)) (not ((_ is Some!16245) (findConcatSeparation!2660 (regOne!33222 r!7292) (regTwo!33222 r!7292) Nil!65240 s!2326 s!2326))))))

(assert (=> d!2032053 d!2032401))

(declare-fun b!6477891 () Bool)

(declare-fun e!3926608 () Bool)

(assert (=> b!6477891 (= e!3926608 (not (= (head!13189 (tail!12274 lt!2385673)) (c!1186089 (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673))))))))

(declare-fun b!6477892 () Bool)

(declare-fun res!2659856 () Bool)

(declare-fun e!3926602 () Bool)

(assert (=> b!6477892 (=> res!2659856 e!3926602)))

(assert (=> b!6477892 (= res!2659856 (not ((_ is ElementMatch!16355) (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673)))))))

(declare-fun e!3926605 () Bool)

(assert (=> b!6477892 (= e!3926605 e!3926602)))

(declare-fun b!6477893 () Bool)

(declare-fun e!3926607 () Bool)

(declare-fun lt!2385916 () Bool)

(declare-fun call!560574 () Bool)

(assert (=> b!6477893 (= e!3926607 (= lt!2385916 call!560574))))

(declare-fun b!6477894 () Bool)

(declare-fun e!3926603 () Bool)

(assert (=> b!6477894 (= e!3926603 (= (head!13189 (tail!12274 lt!2385673)) (c!1186089 (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673)))))))

(declare-fun b!6477895 () Bool)

(declare-fun res!2659859 () Bool)

(assert (=> b!6477895 (=> (not res!2659859) (not e!3926603))))

(assert (=> b!6477895 (= res!2659859 (not call!560574))))

(declare-fun d!2032403 () Bool)

(assert (=> d!2032403 e!3926607))

(declare-fun c!1186513 () Bool)

(assert (=> d!2032403 (= c!1186513 ((_ is EmptyExpr!16355) (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673))))))

(declare-fun e!3926606 () Bool)

(assert (=> d!2032403 (= lt!2385916 e!3926606)))

(declare-fun c!1186515 () Bool)

(assert (=> d!2032403 (= c!1186515 (isEmpty!37424 (tail!12274 lt!2385673)))))

(assert (=> d!2032403 (validRegex!8091 (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673)))))

(assert (=> d!2032403 (= (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673)) (tail!12274 lt!2385673)) lt!2385916)))

(declare-fun b!6477896 () Bool)

(declare-fun res!2659861 () Bool)

(assert (=> b!6477896 (=> res!2659861 e!3926602)))

(assert (=> b!6477896 (= res!2659861 e!3926603)))

(declare-fun res!2659854 () Bool)

(assert (=> b!6477896 (=> (not res!2659854) (not e!3926603))))

(assert (=> b!6477896 (= res!2659854 lt!2385916)))

(declare-fun b!6477897 () Bool)

(declare-fun e!3926604 () Bool)

(assert (=> b!6477897 (= e!3926602 e!3926604)))

(declare-fun res!2659860 () Bool)

(assert (=> b!6477897 (=> (not res!2659860) (not e!3926604))))

(assert (=> b!6477897 (= res!2659860 (not lt!2385916))))

(declare-fun b!6477898 () Bool)

(declare-fun res!2659857 () Bool)

(assert (=> b!6477898 (=> res!2659857 e!3926608)))

(assert (=> b!6477898 (= res!2659857 (not (isEmpty!37424 (tail!12274 (tail!12274 lt!2385673)))))))

(declare-fun b!6477899 () Bool)

(assert (=> b!6477899 (= e!3926606 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673)) (head!13189 (tail!12274 lt!2385673))) (tail!12274 (tail!12274 lt!2385673))))))

(declare-fun bm!560569 () Bool)

(assert (=> bm!560569 (= call!560574 (isEmpty!37424 (tail!12274 lt!2385673)))))

(declare-fun b!6477900 () Bool)

(assert (=> b!6477900 (= e!3926604 e!3926608)))

(declare-fun res!2659858 () Bool)

(assert (=> b!6477900 (=> res!2659858 e!3926608)))

(assert (=> b!6477900 (= res!2659858 call!560574)))

(declare-fun b!6477901 () Bool)

(assert (=> b!6477901 (= e!3926607 e!3926605)))

(declare-fun c!1186514 () Bool)

(assert (=> b!6477901 (= c!1186514 ((_ is EmptyLang!16355) (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673))))))

(declare-fun b!6477902 () Bool)

(declare-fun res!2659855 () Bool)

(assert (=> b!6477902 (=> (not res!2659855) (not e!3926603))))

(assert (=> b!6477902 (= res!2659855 (isEmpty!37424 (tail!12274 (tail!12274 lt!2385673))))))

(declare-fun b!6477903 () Bool)

(assert (=> b!6477903 (= e!3926606 (nullable!6348 (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673))))))

(declare-fun b!6477904 () Bool)

(assert (=> b!6477904 (= e!3926605 (not lt!2385916))))

(assert (= (and d!2032403 c!1186515) b!6477903))

(assert (= (and d!2032403 (not c!1186515)) b!6477899))

(assert (= (and d!2032403 c!1186513) b!6477893))

(assert (= (and d!2032403 (not c!1186513)) b!6477901))

(assert (= (and b!6477901 c!1186514) b!6477904))

(assert (= (and b!6477901 (not c!1186514)) b!6477892))

(assert (= (and b!6477892 (not res!2659856)) b!6477896))

(assert (= (and b!6477896 res!2659854) b!6477895))

(assert (= (and b!6477895 res!2659859) b!6477902))

(assert (= (and b!6477902 res!2659855) b!6477894))

(assert (= (and b!6477896 (not res!2659861)) b!6477897))

(assert (= (and b!6477897 res!2659860) b!6477900))

(assert (= (and b!6477900 (not res!2659858)) b!6477898))

(assert (= (and b!6477898 (not res!2659857)) b!6477891))

(assert (= (or b!6477893 b!6477900 b!6477895) bm!560569))

(assert (=> d!2032403 m!7264898))

(assert (=> d!2032403 m!7264902))

(assert (=> d!2032403 m!7264896))

(declare-fun m!7266224 () Bool)

(assert (=> d!2032403 m!7266224))

(assert (=> b!6477899 m!7264898))

(declare-fun m!7266226 () Bool)

(assert (=> b!6477899 m!7266226))

(assert (=> b!6477899 m!7264896))

(assert (=> b!6477899 m!7266226))

(declare-fun m!7266228 () Bool)

(assert (=> b!6477899 m!7266228))

(assert (=> b!6477899 m!7264898))

(declare-fun m!7266230 () Bool)

(assert (=> b!6477899 m!7266230))

(assert (=> b!6477899 m!7266228))

(assert (=> b!6477899 m!7266230))

(declare-fun m!7266232 () Bool)

(assert (=> b!6477899 m!7266232))

(assert (=> bm!560569 m!7264898))

(assert (=> bm!560569 m!7264902))

(assert (=> b!6477898 m!7264898))

(assert (=> b!6477898 m!7266230))

(assert (=> b!6477898 m!7266230))

(declare-fun m!7266234 () Bool)

(assert (=> b!6477898 m!7266234))

(assert (=> b!6477894 m!7264898))

(assert (=> b!6477894 m!7266226))

(assert (=> b!6477902 m!7264898))

(assert (=> b!6477902 m!7266230))

(assert (=> b!6477902 m!7266230))

(assert (=> b!6477902 m!7266234))

(assert (=> b!6477891 m!7264898))

(assert (=> b!6477891 m!7266226))

(assert (=> b!6477903 m!7264896))

(declare-fun m!7266236 () Bool)

(assert (=> b!6477903 m!7266236))

(assert (=> b!6476602 d!2032403))

(declare-fun call!560576 () Regex!16355)

(declare-fun e!3926609 () Regex!16355)

(declare-fun b!6477905 () Bool)

(declare-fun call!560577 () Regex!16355)

(assert (=> b!6477905 (= e!3926609 (Union!16355 (Concat!25200 call!560576 (regTwo!33222 lt!2385664)) call!560577))))

(declare-fun bm!560570 () Bool)

(declare-fun call!560578 () Regex!16355)

(assert (=> bm!560570 (= call!560577 call!560578)))

(declare-fun b!6477906 () Bool)

(declare-fun c!1186519 () Bool)

(assert (=> b!6477906 (= c!1186519 (nullable!6348 (regOne!33222 lt!2385664)))))

(declare-fun e!3926611 () Regex!16355)

(assert (=> b!6477906 (= e!3926611 e!3926609)))

(declare-fun c!1186518 () Bool)

(declare-fun bm!560571 () Bool)

(declare-fun c!1186516 () Bool)

(declare-fun call!560575 () Regex!16355)

(assert (=> bm!560571 (= call!560575 (derivativeStep!5053 (ite c!1186516 (regTwo!33223 lt!2385664) (ite c!1186518 (reg!16684 lt!2385664) (regOne!33222 lt!2385664))) (head!13189 lt!2385673)))))

(declare-fun b!6477907 () Bool)

(assert (=> b!6477907 (= c!1186516 ((_ is Union!16355) lt!2385664))))

(declare-fun e!3926612 () Regex!16355)

(declare-fun e!3926613 () Regex!16355)

(assert (=> b!6477907 (= e!3926612 e!3926613)))

(declare-fun b!6477908 () Bool)

(assert (=> b!6477908 (= e!3926612 (ite (= (head!13189 lt!2385673) (c!1186089 lt!2385664)) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560572 () Bool)

(assert (=> bm!560572 (= call!560576 call!560575)))

(declare-fun b!6477909 () Bool)

(assert (=> b!6477909 (= e!3926613 e!3926611)))

(assert (=> b!6477909 (= c!1186518 ((_ is Star!16355) lt!2385664))))

(declare-fun b!6477910 () Bool)

(assert (=> b!6477910 (= e!3926611 (Concat!25200 call!560576 lt!2385664))))

(declare-fun bm!560573 () Bool)

(assert (=> bm!560573 (= call!560578 (derivativeStep!5053 (ite c!1186516 (regOne!33223 lt!2385664) (ite c!1186519 (regTwo!33222 lt!2385664) (regOne!33222 lt!2385664))) (head!13189 lt!2385673)))))

(declare-fun b!6477911 () Bool)

(assert (=> b!6477911 (= e!3926609 (Union!16355 (Concat!25200 call!560577 (regTwo!33222 lt!2385664)) EmptyLang!16355))))

(declare-fun b!6477912 () Bool)

(assert (=> b!6477912 (= e!3926613 (Union!16355 call!560578 call!560575))))

(declare-fun d!2032405 () Bool)

(declare-fun lt!2385917 () Regex!16355)

(assert (=> d!2032405 (validRegex!8091 lt!2385917)))

(declare-fun e!3926610 () Regex!16355)

(assert (=> d!2032405 (= lt!2385917 e!3926610)))

(declare-fun c!1186520 () Bool)

(assert (=> d!2032405 (= c!1186520 (or ((_ is EmptyExpr!16355) lt!2385664) ((_ is EmptyLang!16355) lt!2385664)))))

(assert (=> d!2032405 (validRegex!8091 lt!2385664)))

(assert (=> d!2032405 (= (derivativeStep!5053 lt!2385664 (head!13189 lt!2385673)) lt!2385917)))

(declare-fun b!6477913 () Bool)

(assert (=> b!6477913 (= e!3926610 e!3926612)))

(declare-fun c!1186517 () Bool)

(assert (=> b!6477913 (= c!1186517 ((_ is ElementMatch!16355) lt!2385664))))

(declare-fun b!6477914 () Bool)

(assert (=> b!6477914 (= e!3926610 EmptyLang!16355)))

(assert (= (and d!2032405 c!1186520) b!6477914))

(assert (= (and d!2032405 (not c!1186520)) b!6477913))

(assert (= (and b!6477913 c!1186517) b!6477908))

(assert (= (and b!6477913 (not c!1186517)) b!6477907))

(assert (= (and b!6477907 c!1186516) b!6477912))

(assert (= (and b!6477907 (not c!1186516)) b!6477909))

(assert (= (and b!6477909 c!1186518) b!6477910))

(assert (= (and b!6477909 (not c!1186518)) b!6477906))

(assert (= (and b!6477906 c!1186519) b!6477905))

(assert (= (and b!6477906 (not c!1186519)) b!6477911))

(assert (= (or b!6477905 b!6477911) bm!560570))

(assert (= (or b!6477910 b!6477905) bm!560572))

(assert (= (or b!6477912 bm!560572) bm!560571))

(assert (= (or b!6477912 bm!560570) bm!560573))

(assert (=> b!6477906 m!7265844))

(assert (=> bm!560571 m!7264894))

(declare-fun m!7266238 () Bool)

(assert (=> bm!560571 m!7266238))

(assert (=> bm!560573 m!7264894))

(declare-fun m!7266240 () Bool)

(assert (=> bm!560573 m!7266240))

(declare-fun m!7266242 () Bool)

(assert (=> d!2032405 m!7266242))

(assert (=> d!2032405 m!7264892))

(assert (=> b!6476602 d!2032405))

(assert (=> b!6476602 d!2032389))

(declare-fun d!2032407 () Bool)

(assert (=> d!2032407 (= (tail!12274 lt!2385673) (t!378988 lt!2385673))))

(assert (=> b!6476602 d!2032407))

(declare-fun d!2032409 () Bool)

(assert (=> d!2032409 (= (isEmpty!37422 (tail!12275 (exprs!6239 (h!71690 zl!343)))) ((_ is Nil!65241) (tail!12275 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> b!6476714 d!2032409))

(declare-fun d!2032411 () Bool)

(assert (=> d!2032411 (= (tail!12275 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))

(assert (=> b!6476714 d!2032411))

(declare-fun c!1186523 () Bool)

(declare-fun call!560581 () List!65365)

(declare-fun bm!560574 () Bool)

(declare-fun call!560579 () (InoxSet Context!11478))

(declare-fun c!1186521 () Bool)

(declare-fun c!1186522 () Bool)

(assert (=> bm!560574 (= call!560579 (derivationStepZipperDown!1603 (ite c!1186523 (regOne!33223 (h!71689 (exprs!6239 lt!2385676))) (ite c!1186522 (regTwo!33222 (h!71689 (exprs!6239 lt!2385676))) (ite c!1186521 (regOne!33222 (h!71689 (exprs!6239 lt!2385676))) (reg!16684 (h!71689 (exprs!6239 lt!2385676)))))) (ite (or c!1186523 c!1186522) (Context!11479 (t!378989 (exprs!6239 lt!2385676))) (Context!11479 call!560581)) (h!71688 s!2326)))))

(declare-fun b!6477915 () Bool)

(declare-fun e!3926618 () Bool)

(assert (=> b!6477915 (= c!1186522 e!3926618)))

(declare-fun res!2659862 () Bool)

(assert (=> b!6477915 (=> (not res!2659862) (not e!3926618))))

(assert (=> b!6477915 (= res!2659862 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385676))))))

(declare-fun e!3926616 () (InoxSet Context!11478))

(declare-fun e!3926615 () (InoxSet Context!11478))

(assert (=> b!6477915 (= e!3926616 e!3926615)))

(declare-fun b!6477916 () Bool)

(declare-fun c!1186525 () Bool)

(assert (=> b!6477916 (= c!1186525 ((_ is Star!16355) (h!71689 (exprs!6239 lt!2385676))))))

(declare-fun e!3926619 () (InoxSet Context!11478))

(declare-fun e!3926617 () (InoxSet Context!11478))

(assert (=> b!6477916 (= e!3926619 e!3926617)))

(declare-fun d!2032413 () Bool)

(declare-fun c!1186524 () Bool)

(assert (=> d!2032413 (= c!1186524 (and ((_ is ElementMatch!16355) (h!71689 (exprs!6239 lt!2385676))) (= (c!1186089 (h!71689 (exprs!6239 lt!2385676))) (h!71688 s!2326))))))

(declare-fun e!3926614 () (InoxSet Context!11478))

(assert (=> d!2032413 (= (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385676)) (Context!11479 (t!378989 (exprs!6239 lt!2385676))) (h!71688 s!2326)) e!3926614)))

(declare-fun bm!560575 () Bool)

(declare-fun call!560584 () List!65365)

(assert (=> bm!560575 (= call!560581 call!560584)))

(declare-fun b!6477917 () Bool)

(assert (=> b!6477917 (= e!3926618 (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 lt!2385676)))))))

(declare-fun b!6477918 () Bool)

(assert (=> b!6477918 (= e!3926617 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560576 () Bool)

(declare-fun call!560582 () (InoxSet Context!11478))

(declare-fun call!560583 () (InoxSet Context!11478))

(assert (=> bm!560576 (= call!560582 call!560583)))

(declare-fun b!6477919 () Bool)

(assert (=> b!6477919 (= e!3926617 call!560582)))

(declare-fun b!6477920 () Bool)

(declare-fun call!560580 () (InoxSet Context!11478))

(assert (=> b!6477920 (= e!3926616 ((_ map or) call!560579 call!560580))))

(declare-fun b!6477921 () Bool)

(assert (=> b!6477921 (= e!3926614 (store ((as const (Array Context!11478 Bool)) false) (Context!11479 (t!378989 (exprs!6239 lt!2385676))) true))))

(declare-fun b!6477922 () Bool)

(assert (=> b!6477922 (= e!3926614 e!3926616)))

(assert (=> b!6477922 (= c!1186523 ((_ is Union!16355) (h!71689 (exprs!6239 lt!2385676))))))

(declare-fun bm!560577 () Bool)

(assert (=> bm!560577 (= call!560584 ($colon$colon!2210 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385676)))) (ite (or c!1186522 c!1186521) (regTwo!33222 (h!71689 (exprs!6239 lt!2385676))) (h!71689 (exprs!6239 lt!2385676)))))))

(declare-fun b!6477923 () Bool)

(assert (=> b!6477923 (= e!3926615 ((_ map or) call!560580 call!560583))))

(declare-fun bm!560578 () Bool)

(assert (=> bm!560578 (= call!560583 call!560579)))

(declare-fun bm!560579 () Bool)

(assert (=> bm!560579 (= call!560580 (derivationStepZipperDown!1603 (ite c!1186523 (regTwo!33223 (h!71689 (exprs!6239 lt!2385676))) (regOne!33222 (h!71689 (exprs!6239 lt!2385676)))) (ite c!1186523 (Context!11479 (t!378989 (exprs!6239 lt!2385676))) (Context!11479 call!560584)) (h!71688 s!2326)))))

(declare-fun b!6477924 () Bool)

(assert (=> b!6477924 (= e!3926619 call!560582)))

(declare-fun b!6477925 () Bool)

(assert (=> b!6477925 (= e!3926615 e!3926619)))

(assert (=> b!6477925 (= c!1186521 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385676))))))

(assert (= (and d!2032413 c!1186524) b!6477921))

(assert (= (and d!2032413 (not c!1186524)) b!6477922))

(assert (= (and b!6477922 c!1186523) b!6477920))

(assert (= (and b!6477922 (not c!1186523)) b!6477915))

(assert (= (and b!6477915 res!2659862) b!6477917))

(assert (= (and b!6477915 c!1186522) b!6477923))

(assert (= (and b!6477915 (not c!1186522)) b!6477925))

(assert (= (and b!6477925 c!1186521) b!6477924))

(assert (= (and b!6477925 (not c!1186521)) b!6477916))

(assert (= (and b!6477916 c!1186525) b!6477919))

(assert (= (and b!6477916 (not c!1186525)) b!6477918))

(assert (= (or b!6477924 b!6477919) bm!560575))

(assert (= (or b!6477924 b!6477919) bm!560576))

(assert (= (or b!6477923 bm!560575) bm!560577))

(assert (= (or b!6477923 bm!560576) bm!560578))

(assert (= (or b!6477920 b!6477923) bm!560579))

(assert (= (or b!6477920 bm!560578) bm!560574))

(declare-fun m!7266244 () Bool)

(assert (=> bm!560579 m!7266244))

(declare-fun m!7266246 () Bool)

(assert (=> bm!560574 m!7266246))

(declare-fun m!7266248 () Bool)

(assert (=> b!6477921 m!7266248))

(declare-fun m!7266250 () Bool)

(assert (=> b!6477917 m!7266250))

(declare-fun m!7266252 () Bool)

(assert (=> bm!560577 m!7266252))

(assert (=> bm!560471 d!2032413))

(declare-fun d!2032415 () Bool)

(declare-fun e!3926621 () Bool)

(assert (=> d!2032415 e!3926621))

(declare-fun res!2659864 () Bool)

(assert (=> d!2032415 (=> (not res!2659864) (not e!3926621))))

(declare-fun lt!2385918 () List!65364)

(assert (=> d!2032415 (= res!2659864 (= (content!12410 lt!2385918) ((_ map or) (content!12410 (t!378988 (_1!36637 lt!2385692))) (content!12410 (_2!36637 lt!2385692)))))))

(declare-fun e!3926620 () List!65364)

(assert (=> d!2032415 (= lt!2385918 e!3926620)))

(declare-fun c!1186526 () Bool)

(assert (=> d!2032415 (= c!1186526 ((_ is Nil!65240) (t!378988 (_1!36637 lt!2385692))))))

(assert (=> d!2032415 (= (++!14423 (t!378988 (_1!36637 lt!2385692)) (_2!36637 lt!2385692)) lt!2385918)))

(declare-fun b!6477928 () Bool)

(declare-fun res!2659863 () Bool)

(assert (=> b!6477928 (=> (not res!2659863) (not e!3926621))))

(assert (=> b!6477928 (= res!2659863 (= (size!40407 lt!2385918) (+ (size!40407 (t!378988 (_1!36637 lt!2385692))) (size!40407 (_2!36637 lt!2385692)))))))

(declare-fun b!6477927 () Bool)

(assert (=> b!6477927 (= e!3926620 (Cons!65240 (h!71688 (t!378988 (_1!36637 lt!2385692))) (++!14423 (t!378988 (t!378988 (_1!36637 lt!2385692))) (_2!36637 lt!2385692))))))

(declare-fun b!6477929 () Bool)

(assert (=> b!6477929 (= e!3926621 (or (not (= (_2!36637 lt!2385692) Nil!65240)) (= lt!2385918 (t!378988 (_1!36637 lt!2385692)))))))

(declare-fun b!6477926 () Bool)

(assert (=> b!6477926 (= e!3926620 (_2!36637 lt!2385692))))

(assert (= (and d!2032415 c!1186526) b!6477926))

(assert (= (and d!2032415 (not c!1186526)) b!6477927))

(assert (= (and d!2032415 res!2659864) b!6477928))

(assert (= (and b!6477928 res!2659863) b!6477929))

(declare-fun m!7266254 () Bool)

(assert (=> d!2032415 m!7266254))

(assert (=> d!2032415 m!7266120))

(assert (=> d!2032415 m!7265338))

(declare-fun m!7266256 () Bool)

(assert (=> b!6477928 m!7266256))

(assert (=> b!6477928 m!7266074))

(assert (=> b!6477928 m!7265342))

(declare-fun m!7266258 () Bool)

(assert (=> b!6477927 m!7266258))

(assert (=> b!6477397 d!2032415))

(declare-fun e!3926628 () Bool)

(declare-fun b!6477930 () Bool)

(assert (=> b!6477930 (= e!3926628 (not (= (head!13189 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))) (c!1186089 (Concat!25200 lt!2385664 (regTwo!33222 r!7292))))))))

(declare-fun b!6477931 () Bool)

(declare-fun res!2659867 () Bool)

(declare-fun e!3926622 () Bool)

(assert (=> b!6477931 (=> res!2659867 e!3926622)))

(assert (=> b!6477931 (= res!2659867 (not ((_ is ElementMatch!16355) (Concat!25200 lt!2385664 (regTwo!33222 r!7292)))))))

(declare-fun e!3926625 () Bool)

(assert (=> b!6477931 (= e!3926625 e!3926622)))

(declare-fun b!6477932 () Bool)

(declare-fun e!3926627 () Bool)

(declare-fun lt!2385919 () Bool)

(declare-fun call!560585 () Bool)

(assert (=> b!6477932 (= e!3926627 (= lt!2385919 call!560585))))

(declare-fun b!6477933 () Bool)

(declare-fun e!3926623 () Bool)

(assert (=> b!6477933 (= e!3926623 (= (head!13189 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))) (c!1186089 (Concat!25200 lt!2385664 (regTwo!33222 r!7292)))))))

(declare-fun b!6477934 () Bool)

(declare-fun res!2659870 () Bool)

(assert (=> b!6477934 (=> (not res!2659870) (not e!3926623))))

(assert (=> b!6477934 (= res!2659870 (not call!560585))))

(declare-fun d!2032417 () Bool)

(assert (=> d!2032417 e!3926627))

(declare-fun c!1186527 () Bool)

(assert (=> d!2032417 (= c!1186527 ((_ is EmptyExpr!16355) (Concat!25200 lt!2385664 (regTwo!33222 r!7292))))))

(declare-fun e!3926626 () Bool)

(assert (=> d!2032417 (= lt!2385919 e!3926626)))

(declare-fun c!1186529 () Bool)

(assert (=> d!2032417 (= c!1186529 (isEmpty!37424 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))))))

(assert (=> d!2032417 (validRegex!8091 (Concat!25200 lt!2385664 (regTwo!33222 r!7292)))))

(assert (=> d!2032417 (= (matchR!8538 (Concat!25200 lt!2385664 (regTwo!33222 r!7292)) (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))) lt!2385919)))

(declare-fun b!6477935 () Bool)

(declare-fun res!2659872 () Bool)

(assert (=> b!6477935 (=> res!2659872 e!3926622)))

(assert (=> b!6477935 (= res!2659872 e!3926623)))

(declare-fun res!2659865 () Bool)

(assert (=> b!6477935 (=> (not res!2659865) (not e!3926623))))

(assert (=> b!6477935 (= res!2659865 lt!2385919)))

(declare-fun b!6477936 () Bool)

(declare-fun e!3926624 () Bool)

(assert (=> b!6477936 (= e!3926622 e!3926624)))

(declare-fun res!2659871 () Bool)

(assert (=> b!6477936 (=> (not res!2659871) (not e!3926624))))

(assert (=> b!6477936 (= res!2659871 (not lt!2385919))))

(declare-fun b!6477937 () Bool)

(declare-fun res!2659868 () Bool)

(assert (=> b!6477937 (=> res!2659868 e!3926628)))

(assert (=> b!6477937 (= res!2659868 (not (isEmpty!37424 (tail!12274 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))))))))

(declare-fun b!6477938 () Bool)

(assert (=> b!6477938 (= e!3926626 (matchR!8538 (derivativeStep!5053 (Concat!25200 lt!2385664 (regTwo!33222 r!7292)) (head!13189 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))) (tail!12274 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))))

(declare-fun bm!560580 () Bool)

(assert (=> bm!560580 (= call!560585 (isEmpty!37424 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))))))

(declare-fun b!6477939 () Bool)

(assert (=> b!6477939 (= e!3926624 e!3926628)))

(declare-fun res!2659869 () Bool)

(assert (=> b!6477939 (=> res!2659869 e!3926628)))

(assert (=> b!6477939 (= res!2659869 call!560585)))

(declare-fun b!6477940 () Bool)

(assert (=> b!6477940 (= e!3926627 e!3926625)))

(declare-fun c!1186528 () Bool)

(assert (=> b!6477940 (= c!1186528 ((_ is EmptyLang!16355) (Concat!25200 lt!2385664 (regTwo!33222 r!7292))))))

(declare-fun b!6477941 () Bool)

(declare-fun res!2659866 () Bool)

(assert (=> b!6477941 (=> (not res!2659866) (not e!3926623))))

(assert (=> b!6477941 (= res!2659866 (isEmpty!37424 (tail!12274 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))))

(declare-fun b!6477942 () Bool)

(assert (=> b!6477942 (= e!3926626 (nullable!6348 (Concat!25200 lt!2385664 (regTwo!33222 r!7292))))))

(declare-fun b!6477943 () Bool)

(assert (=> b!6477943 (= e!3926625 (not lt!2385919))))

(assert (= (and d!2032417 c!1186529) b!6477942))

(assert (= (and d!2032417 (not c!1186529)) b!6477938))

(assert (= (and d!2032417 c!1186527) b!6477932))

(assert (= (and d!2032417 (not c!1186527)) b!6477940))

(assert (= (and b!6477940 c!1186528) b!6477943))

(assert (= (and b!6477940 (not c!1186528)) b!6477931))

(assert (= (and b!6477931 (not res!2659867)) b!6477935))

(assert (= (and b!6477935 res!2659865) b!6477934))

(assert (= (and b!6477934 res!2659870) b!6477941))

(assert (= (and b!6477941 res!2659866) b!6477933))

(assert (= (and b!6477935 (not res!2659872)) b!6477936))

(assert (= (and b!6477936 res!2659871) b!6477939))

(assert (= (and b!6477939 (not res!2659869)) b!6477937))

(assert (= (and b!6477937 (not res!2659868)) b!6477930))

(assert (= (or b!6477932 b!6477939 b!6477934) bm!560580))

(assert (=> d!2032417 m!7264596))

(declare-fun m!7266260 () Bool)

(assert (=> d!2032417 m!7266260))

(declare-fun m!7266262 () Bool)

(assert (=> d!2032417 m!7266262))

(assert (=> b!6477938 m!7264596))

(declare-fun m!7266264 () Bool)

(assert (=> b!6477938 m!7266264))

(assert (=> b!6477938 m!7266264))

(declare-fun m!7266266 () Bool)

(assert (=> b!6477938 m!7266266))

(assert (=> b!6477938 m!7264596))

(declare-fun m!7266268 () Bool)

(assert (=> b!6477938 m!7266268))

(assert (=> b!6477938 m!7266266))

(assert (=> b!6477938 m!7266268))

(declare-fun m!7266270 () Bool)

(assert (=> b!6477938 m!7266270))

(assert (=> bm!560580 m!7264596))

(assert (=> bm!560580 m!7266260))

(assert (=> b!6477937 m!7264596))

(assert (=> b!6477937 m!7266268))

(assert (=> b!6477937 m!7266268))

(declare-fun m!7266272 () Bool)

(assert (=> b!6477937 m!7266272))

(assert (=> b!6477933 m!7264596))

(assert (=> b!6477933 m!7266264))

(assert (=> b!6477941 m!7264596))

(assert (=> b!6477941 m!7266268))

(assert (=> b!6477941 m!7266268))

(assert (=> b!6477941 m!7266272))

(assert (=> b!6477930 m!7264596))

(assert (=> b!6477930 m!7266264))

(declare-fun m!7266274 () Bool)

(assert (=> b!6477942 m!7266274))

(assert (=> d!2031885 d!2032417))

(assert (=> d!2031885 d!2032001))

(declare-fun d!2032419 () Bool)

(assert (=> d!2032419 (matchR!8538 (Concat!25200 lt!2385664 (regTwo!33222 r!7292)) (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(assert (=> d!2032419 true))

(declare-fun _$119!471 () Unit!158751)

(assert (=> d!2032419 (= (choose!48004 lt!2385664 (regTwo!33222 r!7292) (_2!36637 lt!2385692) (_2!36637 lt!2385678)) _$119!471)))

(declare-fun bs!1642846 () Bool)

(assert (= bs!1642846 d!2032419))

(assert (=> bs!1642846 m!7264596))

(assert (=> bs!1642846 m!7264596))

(assert (=> bs!1642846 m!7264950))

(assert (=> d!2031885 d!2032419))

(assert (=> d!2031885 d!2032177))

(assert (=> d!2031967 d!2031971))

(declare-fun d!2032421 () Bool)

(assert (=> d!2032421 (= (flatMap!1860 z!1189 lambda!358015) (dynLambda!25915 lambda!358015 (h!71690 zl!343)))))

(assert (=> d!2032421 true))

(declare-fun _$13!3696 () Unit!158751)

(assert (=> d!2032421 (= (choose!48009 z!1189 (h!71690 zl!343) lambda!358015) _$13!3696)))

(declare-fun b_lambda!245399 () Bool)

(assert (=> (not b_lambda!245399) (not d!2032421)))

(declare-fun bs!1642847 () Bool)

(assert (= bs!1642847 d!2032421))

(assert (=> bs!1642847 m!7264676))

(assert (=> bs!1642847 m!7265252))

(assert (=> d!2031967 d!2032421))

(declare-fun d!2032423 () Bool)

(declare-fun e!3926630 () Bool)

(assert (=> d!2032423 e!3926630))

(declare-fun res!2659874 () Bool)

(assert (=> d!2032423 (=> (not res!2659874) (not e!3926630))))

(declare-fun lt!2385920 () List!65364)

(assert (=> d!2032423 (= res!2659874 (= (content!12410 lt!2385920) ((_ map or) (content!12410 (_1!36637 (get!22616 lt!2385866))) (content!12410 (_2!36637 (get!22616 lt!2385866))))))))

(declare-fun e!3926629 () List!65364)

(assert (=> d!2032423 (= lt!2385920 e!3926629)))

(declare-fun c!1186530 () Bool)

(assert (=> d!2032423 (= c!1186530 ((_ is Nil!65240) (_1!36637 (get!22616 lt!2385866))))))

(assert (=> d!2032423 (= (++!14423 (_1!36637 (get!22616 lt!2385866)) (_2!36637 (get!22616 lt!2385866))) lt!2385920)))

(declare-fun b!6477946 () Bool)

(declare-fun res!2659873 () Bool)

(assert (=> b!6477946 (=> (not res!2659873) (not e!3926630))))

(assert (=> b!6477946 (= res!2659873 (= (size!40407 lt!2385920) (+ (size!40407 (_1!36637 (get!22616 lt!2385866))) (size!40407 (_2!36637 (get!22616 lt!2385866))))))))

(declare-fun b!6477945 () Bool)

(assert (=> b!6477945 (= e!3926629 (Cons!65240 (h!71688 (_1!36637 (get!22616 lt!2385866))) (++!14423 (t!378988 (_1!36637 (get!22616 lt!2385866))) (_2!36637 (get!22616 lt!2385866)))))))

(declare-fun b!6477947 () Bool)

(assert (=> b!6477947 (= e!3926630 (or (not (= (_2!36637 (get!22616 lt!2385866)) Nil!65240)) (= lt!2385920 (_1!36637 (get!22616 lt!2385866)))))))

(declare-fun b!6477944 () Bool)

(assert (=> b!6477944 (= e!3926629 (_2!36637 (get!22616 lt!2385866)))))

(assert (= (and d!2032423 c!1186530) b!6477944))

(assert (= (and d!2032423 (not c!1186530)) b!6477945))

(assert (= (and d!2032423 res!2659874) b!6477946))

(assert (= (and b!6477946 res!2659873) b!6477947))

(declare-fun m!7266276 () Bool)

(assert (=> d!2032423 m!7266276))

(declare-fun m!7266278 () Bool)

(assert (=> d!2032423 m!7266278))

(declare-fun m!7266280 () Bool)

(assert (=> d!2032423 m!7266280))

(declare-fun m!7266282 () Bool)

(assert (=> b!6477946 m!7266282))

(declare-fun m!7266284 () Bool)

(assert (=> b!6477946 m!7266284))

(declare-fun m!7266286 () Bool)

(assert (=> b!6477946 m!7266286))

(declare-fun m!7266288 () Bool)

(assert (=> b!6477945 m!7266288))

(assert (=> b!6477407 d!2032423))

(declare-fun d!2032425 () Bool)

(assert (=> d!2032425 (= (get!22616 lt!2385866) (v!52424 lt!2385866))))

(assert (=> b!6477407 d!2032425))

(declare-fun d!2032427 () Bool)

(assert (=> d!2032427 (= (++!14423 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)) (_2!36637 lt!2385678)) (++!14423 (_1!36637 lt!2385692) (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))))))

(assert (=> d!2032427 true))

(declare-fun _$52!2422 () Unit!158751)

(assert (=> d!2032427 (= (choose!48012 (_1!36637 lt!2385692) (_2!36637 lt!2385692) (_2!36637 lt!2385678)) _$52!2422)))

(declare-fun bs!1642848 () Bool)

(assert (= bs!1642848 d!2032427))

(assert (=> bs!1642848 m!7264658))

(assert (=> bs!1642848 m!7264658))

(assert (=> bs!1642848 m!7265366))

(assert (=> bs!1642848 m!7264596))

(assert (=> bs!1642848 m!7264596))

(assert (=> bs!1642848 m!7265368))

(assert (=> d!2032003 d!2032427))

(assert (=> d!2032003 d!2032141))

(declare-fun d!2032429 () Bool)

(declare-fun e!3926632 () Bool)

(assert (=> d!2032429 e!3926632))

(declare-fun res!2659876 () Bool)

(assert (=> d!2032429 (=> (not res!2659876) (not e!3926632))))

(declare-fun lt!2385921 () List!65364)

(assert (=> d!2032429 (= res!2659876 (= (content!12410 lt!2385921) ((_ map or) (content!12410 (_1!36637 lt!2385692)) (content!12410 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))))))))

(declare-fun e!3926631 () List!65364)

(assert (=> d!2032429 (= lt!2385921 e!3926631)))

(declare-fun c!1186531 () Bool)

(assert (=> d!2032429 (= c!1186531 ((_ is Nil!65240) (_1!36637 lt!2385692)))))

(assert (=> d!2032429 (= (++!14423 (_1!36637 lt!2385692) (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))) lt!2385921)))

(declare-fun b!6477950 () Bool)

(declare-fun res!2659875 () Bool)

(assert (=> b!6477950 (=> (not res!2659875) (not e!3926632))))

(assert (=> b!6477950 (= res!2659875 (= (size!40407 lt!2385921) (+ (size!40407 (_1!36637 lt!2385692)) (size!40407 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678))))))))

(declare-fun b!6477949 () Bool)

(assert (=> b!6477949 (= e!3926631 (Cons!65240 (h!71688 (_1!36637 lt!2385692)) (++!14423 (t!378988 (_1!36637 lt!2385692)) (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))))

(declare-fun b!6477951 () Bool)

(assert (=> b!6477951 (= e!3926632 (or (not (= (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)) Nil!65240)) (= lt!2385921 (_1!36637 lt!2385692))))))

(declare-fun b!6477948 () Bool)

(assert (=> b!6477948 (= e!3926631 (++!14423 (_2!36637 lt!2385692) (_2!36637 lt!2385678)))))

(assert (= (and d!2032429 c!1186531) b!6477948))

(assert (= (and d!2032429 (not c!1186531)) b!6477949))

(assert (= (and d!2032429 res!2659876) b!6477950))

(assert (= (and b!6477950 res!2659875) b!6477951))

(declare-fun m!7266290 () Bool)

(assert (=> d!2032429 m!7266290))

(assert (=> d!2032429 m!7265314))

(assert (=> d!2032429 m!7264596))

(declare-fun m!7266292 () Bool)

(assert (=> d!2032429 m!7266292))

(declare-fun m!7266294 () Bool)

(assert (=> b!6477950 m!7266294))

(assert (=> b!6477950 m!7265320))

(assert (=> b!6477950 m!7264596))

(declare-fun m!7266296 () Bool)

(assert (=> b!6477950 m!7266296))

(assert (=> b!6477949 m!7264596))

(declare-fun m!7266298 () Bool)

(assert (=> b!6477949 m!7266298))

(assert (=> d!2032003 d!2032429))

(declare-fun d!2032431 () Bool)

(declare-fun e!3926634 () Bool)

(assert (=> d!2032431 e!3926634))

(declare-fun res!2659878 () Bool)

(assert (=> d!2032431 (=> (not res!2659878) (not e!3926634))))

(declare-fun lt!2385922 () List!65364)

(assert (=> d!2032431 (= res!2659878 (= (content!12410 lt!2385922) ((_ map or) (content!12410 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))) (content!12410 (_2!36637 lt!2385678)))))))

(declare-fun e!3926633 () List!65364)

(assert (=> d!2032431 (= lt!2385922 e!3926633)))

(declare-fun c!1186532 () Bool)

(assert (=> d!2032431 (= c!1186532 ((_ is Nil!65240) (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))))))

(assert (=> d!2032431 (= (++!14423 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)) (_2!36637 lt!2385678)) lt!2385922)))

(declare-fun b!6477954 () Bool)

(declare-fun res!2659877 () Bool)

(assert (=> b!6477954 (=> (not res!2659877) (not e!3926634))))

(assert (=> b!6477954 (= res!2659877 (= (size!40407 lt!2385922) (+ (size!40407 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))) (size!40407 (_2!36637 lt!2385678)))))))

(declare-fun b!6477953 () Bool)

(assert (=> b!6477953 (= e!3926633 (Cons!65240 (h!71688 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))) (++!14423 (t!378988 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))) (_2!36637 lt!2385678))))))

(declare-fun b!6477955 () Bool)

(assert (=> b!6477955 (= e!3926634 (or (not (= (_2!36637 lt!2385678) Nil!65240)) (= lt!2385922 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))))

(declare-fun b!6477952 () Bool)

(assert (=> b!6477952 (= e!3926633 (_2!36637 lt!2385678))))

(assert (= (and d!2032431 c!1186532) b!6477952))

(assert (= (and d!2032431 (not c!1186532)) b!6477953))

(assert (= (and d!2032431 res!2659878) b!6477954))

(assert (= (and b!6477954 res!2659877) b!6477955))

(declare-fun m!7266300 () Bool)

(assert (=> d!2032431 m!7266300))

(assert (=> d!2032431 m!7264658))

(declare-fun m!7266302 () Bool)

(assert (=> d!2032431 m!7266302))

(assert (=> d!2032431 m!7265184))

(declare-fun m!7266304 () Bool)

(assert (=> b!6477954 m!7266304))

(assert (=> b!6477954 m!7264658))

(declare-fun m!7266306 () Bool)

(assert (=> b!6477954 m!7266306))

(assert (=> b!6477954 m!7265190))

(declare-fun m!7266308 () Bool)

(assert (=> b!6477953 m!7266308))

(assert (=> d!2032003 d!2032431))

(assert (=> d!2032003 d!2032001))

(assert (=> b!6476897 d!2032331))

(declare-fun d!2032433 () Bool)

(declare-fun c!1186533 () Bool)

(assert (=> d!2032433 (= c!1186533 (isEmpty!37424 (tail!12274 (_1!36637 lt!2385692))))))

(declare-fun e!3926635 () Bool)

(assert (=> d!2032433 (= (matchZipper!2367 (derivationStepZipper!2321 lt!2385643 (head!13189 (_1!36637 lt!2385692))) (tail!12274 (_1!36637 lt!2385692))) e!3926635)))

(declare-fun b!6477956 () Bool)

(assert (=> b!6477956 (= e!3926635 (nullableZipper!2114 (derivationStepZipper!2321 lt!2385643 (head!13189 (_1!36637 lt!2385692)))))))

(declare-fun b!6477957 () Bool)

(assert (=> b!6477957 (= e!3926635 (matchZipper!2367 (derivationStepZipper!2321 (derivationStepZipper!2321 lt!2385643 (head!13189 (_1!36637 lt!2385692))) (head!13189 (tail!12274 (_1!36637 lt!2385692)))) (tail!12274 (tail!12274 (_1!36637 lt!2385692)))))))

(assert (= (and d!2032433 c!1186533) b!6477956))

(assert (= (and d!2032433 (not c!1186533)) b!6477957))

(assert (=> d!2032433 m!7264930))

(assert (=> d!2032433 m!7265376))

(assert (=> b!6477956 m!7264928))

(declare-fun m!7266310 () Bool)

(assert (=> b!6477956 m!7266310))

(assert (=> b!6477957 m!7264930))

(declare-fun m!7266312 () Bool)

(assert (=> b!6477957 m!7266312))

(assert (=> b!6477957 m!7264928))

(assert (=> b!6477957 m!7266312))

(declare-fun m!7266314 () Bool)

(assert (=> b!6477957 m!7266314))

(assert (=> b!6477957 m!7264930))

(declare-fun m!7266316 () Bool)

(assert (=> b!6477957 m!7266316))

(assert (=> b!6477957 m!7266314))

(assert (=> b!6477957 m!7266316))

(declare-fun m!7266318 () Bool)

(assert (=> b!6477957 m!7266318))

(assert (=> b!6476636 d!2032433))

(declare-fun bs!1642849 () Bool)

(declare-fun d!2032435 () Bool)

(assert (= bs!1642849 (and d!2032435 d!2032359)))

(declare-fun lambda!358141 () Int)

(assert (=> bs!1642849 (= (= (head!13189 (_1!36637 lt!2385692)) (head!13189 (t!378988 s!2326))) (= lambda!358141 lambda!358135))))

(declare-fun bs!1642850 () Bool)

(assert (= bs!1642850 (and d!2032435 b!6476340)))

(assert (=> bs!1642850 (= (= (head!13189 (_1!36637 lt!2385692)) (h!71688 s!2326)) (= lambda!358141 lambda!358015))))

(declare-fun bs!1642851 () Bool)

(assert (= bs!1642851 (and d!2032435 d!2032025)))

(assert (=> bs!1642851 (= (= (head!13189 (_1!36637 lt!2385692)) (h!71688 s!2326)) (= lambda!358141 lambda!358081))))

(declare-fun bs!1642852 () Bool)

(assert (= bs!1642852 (and d!2032435 d!2032335)))

(assert (=> bs!1642852 (= (= (head!13189 (_1!36637 lt!2385692)) (head!13189 lt!2385693)) (= lambda!358141 lambda!358132))))

(declare-fun bs!1642853 () Bool)

(assert (= bs!1642853 (and d!2032435 d!2032289)))

(assert (=> bs!1642853 (= (= (head!13189 (_1!36637 lt!2385692)) (head!13189 (t!378988 s!2326))) (= lambda!358141 lambda!358131))))

(assert (=> d!2032435 true))

(assert (=> d!2032435 (= (derivationStepZipper!2321 lt!2385643 (head!13189 (_1!36637 lt!2385692))) (flatMap!1860 lt!2385643 lambda!358141))))

(declare-fun bs!1642854 () Bool)

(assert (= bs!1642854 d!2032435))

(declare-fun m!7266320 () Bool)

(assert (=> bs!1642854 m!7266320))

(assert (=> b!6476636 d!2032435))

(assert (=> b!6476636 d!2032355))

(assert (=> b!6476636 d!2032297))

(declare-fun d!2032437 () Bool)

(declare-fun res!2659883 () Bool)

(declare-fun e!3926640 () Bool)

(assert (=> d!2032437 (=> res!2659883 e!3926640)))

(assert (=> d!2032437 (= res!2659883 ((_ is Nil!65242) lt!2385804))))

(assert (=> d!2032437 (= (noDuplicate!2177 lt!2385804) e!3926640)))

(declare-fun b!6477962 () Bool)

(declare-fun e!3926641 () Bool)

(assert (=> b!6477962 (= e!3926640 e!3926641)))

(declare-fun res!2659884 () Bool)

(assert (=> b!6477962 (=> (not res!2659884) (not e!3926641))))

(declare-fun contains!20188 (List!65366 Context!11478) Bool)

(assert (=> b!6477962 (= res!2659884 (not (contains!20188 (t!378990 lt!2385804) (h!71690 lt!2385804))))))

(declare-fun b!6477963 () Bool)

(assert (=> b!6477963 (= e!3926641 (noDuplicate!2177 (t!378990 lt!2385804)))))

(assert (= (and d!2032437 (not res!2659883)) b!6477962))

(assert (= (and b!6477962 res!2659884) b!6477963))

(declare-fun m!7266322 () Bool)

(assert (=> b!6477962 m!7266322))

(declare-fun m!7266324 () Bool)

(assert (=> b!6477963 m!7266324))

(assert (=> d!2031977 d!2032437))

(declare-fun d!2032439 () Bool)

(declare-fun e!3926649 () Bool)

(assert (=> d!2032439 e!3926649))

(declare-fun res!2659890 () Bool)

(assert (=> d!2032439 (=> (not res!2659890) (not e!3926649))))

(declare-fun res!2659889 () List!65366)

(assert (=> d!2032439 (= res!2659890 (noDuplicate!2177 res!2659889))))

(declare-fun e!3926650 () Bool)

(assert (=> d!2032439 e!3926650))

(assert (=> d!2032439 (= (choose!48011 z!1189) res!2659889)))

(declare-fun b!6477971 () Bool)

(declare-fun e!3926648 () Bool)

(declare-fun tp!1795045 () Bool)

(assert (=> b!6477971 (= e!3926648 tp!1795045)))

(declare-fun tp!1795046 () Bool)

(declare-fun b!6477970 () Bool)

(assert (=> b!6477970 (= e!3926650 (and (inv!84134 (h!71690 res!2659889)) e!3926648 tp!1795046))))

(declare-fun b!6477972 () Bool)

(assert (=> b!6477972 (= e!3926649 (= (content!12411 res!2659889) z!1189))))

(assert (= b!6477970 b!6477971))

(assert (= (and d!2032439 ((_ is Cons!65242) res!2659889)) b!6477970))

(assert (= (and d!2032439 res!2659890) b!6477972))

(declare-fun m!7266326 () Bool)

(assert (=> d!2032439 m!7266326))

(declare-fun m!7266328 () Bool)

(assert (=> b!6477970 m!7266328))

(declare-fun m!7266330 () Bool)

(assert (=> b!6477972 m!7266330))

(assert (=> d!2031977 d!2032439))

(declare-fun d!2032441 () Bool)

(assert (=> d!2032441 true))

(declare-fun setRes!44124 () Bool)

(assert (=> d!2032441 setRes!44124))

(declare-fun condSetEmpty!44124 () Bool)

(declare-fun res!2659891 () (InoxSet Context!11478))

(assert (=> d!2032441 (= condSetEmpty!44124 (= res!2659891 ((as const (Array Context!11478 Bool)) false)))))

(assert (=> d!2032441 (= (choose!48010 lt!2385647 lambda!358015) res!2659891)))

(declare-fun setIsEmpty!44124 () Bool)

(assert (=> setIsEmpty!44124 setRes!44124))

(declare-fun setNonEmpty!44124 () Bool)

(declare-fun setElem!44124 () Context!11478)

(declare-fun tp!1795047 () Bool)

(declare-fun e!3926651 () Bool)

(assert (=> setNonEmpty!44124 (= setRes!44124 (and tp!1795047 (inv!84134 setElem!44124) e!3926651))))

(declare-fun setRest!44124 () (InoxSet Context!11478))

(assert (=> setNonEmpty!44124 (= res!2659891 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) setElem!44124 true) setRest!44124))))

(declare-fun b!6477973 () Bool)

(declare-fun tp!1795048 () Bool)

(assert (=> b!6477973 (= e!3926651 tp!1795048)))

(assert (= (and d!2032441 condSetEmpty!44124) setIsEmpty!44124))

(assert (= (and d!2032441 (not condSetEmpty!44124)) setNonEmpty!44124))

(assert (= setNonEmpty!44124 b!6477973))

(declare-fun m!7266332 () Bool)

(assert (=> setNonEmpty!44124 m!7266332))

(assert (=> d!2032019 d!2032441))

(declare-fun d!2032443 () Bool)

(assert (=> d!2032443 (= (isEmpty!37424 lt!2385693) ((_ is Nil!65240) lt!2385693))))

(assert (=> bm!560382 d!2032443))

(declare-fun d!2032445 () Bool)

(assert (=> d!2032445 (= (isEmptyLang!1757 lt!2385842) ((_ is EmptyLang!16355) lt!2385842))))

(assert (=> b!6477231 d!2032445))

(declare-fun d!2032447 () Bool)

(assert (=> d!2032447 (= (nullable!6348 lt!2385680) (nullableFct!2287 lt!2385680))))

(declare-fun bs!1642855 () Bool)

(assert (= bs!1642855 d!2032447))

(declare-fun m!7266334 () Bool)

(assert (=> bs!1642855 m!7266334))

(assert (=> b!6476454 d!2032447))

(declare-fun d!2032449 () Bool)

(declare-fun lt!2385923 () Int)

(assert (=> d!2032449 (>= lt!2385923 0)))

(declare-fun e!3926652 () Int)

(assert (=> d!2032449 (= lt!2385923 e!3926652)))

(declare-fun c!1186534 () Bool)

(assert (=> d!2032449 (= c!1186534 ((_ is Nil!65240) lt!2385809))))

(assert (=> d!2032449 (= (size!40407 lt!2385809) lt!2385923)))

(declare-fun b!6477974 () Bool)

(assert (=> b!6477974 (= e!3926652 0)))

(declare-fun b!6477975 () Bool)

(assert (=> b!6477975 (= e!3926652 (+ 1 (size!40407 (t!378988 lt!2385809))))))

(assert (= (and d!2032449 c!1186534) b!6477974))

(assert (= (and d!2032449 (not c!1186534)) b!6477975))

(declare-fun m!7266336 () Bool)

(assert (=> b!6477975 m!7266336))

(assert (=> b!6477060 d!2032449))

(assert (=> b!6477060 d!2032319))

(declare-fun d!2032451 () Bool)

(declare-fun lt!2385924 () Int)

(assert (=> d!2032451 (>= lt!2385924 0)))

(declare-fun e!3926653 () Int)

(assert (=> d!2032451 (= lt!2385924 e!3926653)))

(declare-fun c!1186535 () Bool)

(assert (=> d!2032451 (= c!1186535 ((_ is Nil!65240) lt!2385693))))

(assert (=> d!2032451 (= (size!40407 lt!2385693) lt!2385924)))

(declare-fun b!6477976 () Bool)

(assert (=> b!6477976 (= e!3926653 0)))

(declare-fun b!6477977 () Bool)

(assert (=> b!6477977 (= e!3926653 (+ 1 (size!40407 (t!378988 lt!2385693))))))

(assert (= (and d!2032451 c!1186535) b!6477976))

(assert (= (and d!2032451 (not c!1186535)) b!6477977))

(declare-fun m!7266338 () Bool)

(assert (=> b!6477977 m!7266338))

(assert (=> b!6477060 d!2032451))

(declare-fun bs!1642856 () Bool)

(declare-fun d!2032453 () Bool)

(assert (= bs!1642856 (and d!2032453 d!2032375)))

(declare-fun lambda!358142 () Int)

(assert (=> bs!1642856 (= lambda!358142 lambda!358138)))

(declare-fun bs!1642857 () Bool)

(assert (= bs!1642857 (and d!2032453 d!2032395)))

(assert (=> bs!1642857 (= lambda!358142 lambda!358140)))

(assert (=> d!2032453 (= (nullableZipper!2114 ((_ map or) lt!2385694 lt!2385659)) (exists!2614 ((_ map or) lt!2385694 lt!2385659) lambda!358142))))

(declare-fun bs!1642858 () Bool)

(assert (= bs!1642858 d!2032453))

(declare-fun m!7266340 () Bool)

(assert (=> bs!1642858 m!7266340))

(assert (=> b!6477414 d!2032453))

(assert (=> b!6477047 d!2032231))

(assert (=> b!6477047 d!2032233))

(declare-fun d!2032455 () Bool)

(declare-fun e!3926655 () Bool)

(assert (=> d!2032455 e!3926655))

(declare-fun res!2659893 () Bool)

(assert (=> d!2032455 (=> (not res!2659893) (not e!3926655))))

(declare-fun lt!2385925 () List!65364)

(assert (=> d!2032455 (= res!2659893 (= (content!12410 lt!2385925) ((_ map or) (content!12410 (_1!36637 (get!22616 lt!2385822))) (content!12410 (_2!36637 (get!22616 lt!2385822))))))))

(declare-fun e!3926654 () List!65364)

(assert (=> d!2032455 (= lt!2385925 e!3926654)))

(declare-fun c!1186536 () Bool)

(assert (=> d!2032455 (= c!1186536 ((_ is Nil!65240) (_1!36637 (get!22616 lt!2385822))))))

(assert (=> d!2032455 (= (++!14423 (_1!36637 (get!22616 lt!2385822)) (_2!36637 (get!22616 lt!2385822))) lt!2385925)))

(declare-fun b!6477980 () Bool)

(declare-fun res!2659892 () Bool)

(assert (=> b!6477980 (=> (not res!2659892) (not e!3926655))))

(assert (=> b!6477980 (= res!2659892 (= (size!40407 lt!2385925) (+ (size!40407 (_1!36637 (get!22616 lt!2385822))) (size!40407 (_2!36637 (get!22616 lt!2385822))))))))

(declare-fun b!6477979 () Bool)

(assert (=> b!6477979 (= e!3926654 (Cons!65240 (h!71688 (_1!36637 (get!22616 lt!2385822))) (++!14423 (t!378988 (_1!36637 (get!22616 lt!2385822))) (_2!36637 (get!22616 lt!2385822)))))))

(declare-fun b!6477981 () Bool)

(assert (=> b!6477981 (= e!3926655 (or (not (= (_2!36637 (get!22616 lt!2385822)) Nil!65240)) (= lt!2385925 (_1!36637 (get!22616 lt!2385822)))))))

(declare-fun b!6477978 () Bool)

(assert (=> b!6477978 (= e!3926654 (_2!36637 (get!22616 lt!2385822)))))

(assert (= (and d!2032455 c!1186536) b!6477978))

(assert (= (and d!2032455 (not c!1186536)) b!6477979))

(assert (= (and d!2032455 res!2659893) b!6477980))

(assert (= (and b!6477980 res!2659892) b!6477981))

(declare-fun m!7266342 () Bool)

(assert (=> d!2032455 m!7266342))

(declare-fun m!7266344 () Bool)

(assert (=> d!2032455 m!7266344))

(declare-fun m!7266346 () Bool)

(assert (=> d!2032455 m!7266346))

(declare-fun m!7266348 () Bool)

(assert (=> b!6477980 m!7266348))

(declare-fun m!7266350 () Bool)

(assert (=> b!6477980 m!7266350))

(declare-fun m!7266352 () Bool)

(assert (=> b!6477980 m!7266352))

(declare-fun m!7266354 () Bool)

(assert (=> b!6477979 m!7266354))

(assert (=> b!6477111 d!2032455))

(declare-fun d!2032457 () Bool)

(assert (=> d!2032457 (= (get!22616 lt!2385822) (v!52424 lt!2385822))))

(assert (=> b!6477111 d!2032457))

(declare-fun bm!560581 () Bool)

(declare-fun call!560586 () (InoxSet Context!11478))

(assert (=> bm!560581 (= call!560586 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385665))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385665)))))) (h!71688 s!2326)))))

(declare-fun b!6477982 () Bool)

(declare-fun e!3926658 () Bool)

(assert (=> b!6477982 (= e!3926658 (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385665)))))))))

(declare-fun b!6477983 () Bool)

(declare-fun e!3926656 () (InoxSet Context!11478))

(assert (=> b!6477983 (= e!3926656 call!560586)))

(declare-fun b!6477984 () Bool)

(declare-fun e!3926657 () (InoxSet Context!11478))

(assert (=> b!6477984 (= e!3926657 e!3926656)))

(declare-fun c!1186538 () Bool)

(assert (=> b!6477984 (= c!1186538 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385665))))))))

(declare-fun b!6477986 () Bool)

(assert (=> b!6477986 (= e!3926656 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032459 () Bool)

(declare-fun c!1186537 () Bool)

(assert (=> d!2032459 (= c!1186537 e!3926658)))

(declare-fun res!2659894 () Bool)

(assert (=> d!2032459 (=> (not res!2659894) (not e!3926658))))

(assert (=> d!2032459 (= res!2659894 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385665))))))))

(assert (=> d!2032459 (= (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385665))) (h!71688 s!2326)) e!3926657)))

(declare-fun b!6477985 () Bool)

(assert (=> b!6477985 (= e!3926657 ((_ map or) call!560586 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385665)))))) (h!71688 s!2326))))))

(assert (= (and d!2032459 res!2659894) b!6477982))

(assert (= (and d!2032459 c!1186537) b!6477985))

(assert (= (and d!2032459 (not c!1186537)) b!6477984))

(assert (= (and b!6477984 c!1186538) b!6477983))

(assert (= (and b!6477984 (not c!1186538)) b!6477986))

(assert (= (or b!6477985 b!6477983) bm!560581))

(declare-fun m!7266356 () Bool)

(assert (=> bm!560581 m!7266356))

(declare-fun m!7266358 () Bool)

(assert (=> b!6477982 m!7266358))

(declare-fun m!7266360 () Bool)

(assert (=> b!6477985 m!7266360))

(assert (=> b!6477161 d!2032459))

(declare-fun d!2032461 () Bool)

(assert (=> d!2032461 (= (isEmpty!37424 (tail!12274 (_2!36637 lt!2385678))) ((_ is Nil!65240) (tail!12274 (_2!36637 lt!2385678))))))

(assert (=> b!6477270 d!2032461))

(assert (=> b!6477270 d!2032385))

(assert (=> bs!1642621 d!2031975))

(declare-fun d!2032463 () Bool)

(assert (=> d!2032463 (= ($colon$colon!2210 (exprs!6239 lt!2385688) (ite (or c!1186275 c!1186274) (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (h!71689 (exprs!6239 (h!71690 zl!343))))) (Cons!65241 (ite (or c!1186275 c!1186274) (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (h!71689 (exprs!6239 (h!71690 zl!343)))) (exprs!6239 lt!2385688)))))

(assert (=> bm!560456 d!2032463))

(declare-fun d!2032465 () Bool)

(assert (=> d!2032465 (= (nullable!6348 r!7292) (nullableFct!2287 r!7292))))

(declare-fun bs!1642859 () Bool)

(assert (= bs!1642859 d!2032465))

(declare-fun m!7266362 () Bool)

(assert (=> bs!1642859 m!7266362))

(assert (=> b!6477052 d!2032465))

(assert (=> b!6477406 d!2032207))

(declare-fun d!2032467 () Bool)

(declare-fun res!2659895 () Bool)

(declare-fun e!3926659 () Bool)

(assert (=> d!2032467 (=> res!2659895 e!3926659)))

(assert (=> d!2032467 (= res!2659895 ((_ is Nil!65241) (exprs!6239 (h!71690 zl!343))))))

(assert (=> d!2032467 (= (forall!15540 (exprs!6239 (h!71690 zl!343)) lambda!358101) e!3926659)))

(declare-fun b!6477987 () Bool)

(declare-fun e!3926660 () Bool)

(assert (=> b!6477987 (= e!3926659 e!3926660)))

(declare-fun res!2659896 () Bool)

(assert (=> b!6477987 (=> (not res!2659896) (not e!3926660))))

(assert (=> b!6477987 (= res!2659896 (dynLambda!25916 lambda!358101 (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6477988 () Bool)

(assert (=> b!6477988 (= e!3926660 (forall!15540 (t!378989 (exprs!6239 (h!71690 zl!343))) lambda!358101))))

(assert (= (and d!2032467 (not res!2659895)) b!6477987))

(assert (= (and b!6477987 res!2659896) b!6477988))

(declare-fun b_lambda!245401 () Bool)

(assert (=> (not b_lambda!245401) (not b!6477987)))

(declare-fun m!7266364 () Bool)

(assert (=> b!6477987 m!7266364))

(declare-fun m!7266366 () Bool)

(assert (=> b!6477988 m!7266366))

(assert (=> d!2032101 d!2032467))

(assert (=> b!6476538 d!2032225))

(declare-fun d!2032469 () Bool)

(declare-fun c!1186539 () Bool)

(assert (=> d!2032469 (= c!1186539 ((_ is Nil!65240) lt!2385810))))

(declare-fun e!3926661 () (InoxSet C!32980))

(assert (=> d!2032469 (= (content!12410 lt!2385810) e!3926661)))

(declare-fun b!6477989 () Bool)

(assert (=> b!6477989 (= e!3926661 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6477990 () Bool)

(assert (=> b!6477990 (= e!3926661 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 lt!2385810) true) (content!12410 (t!378988 lt!2385810))))))

(assert (= (and d!2032469 c!1186539) b!6477989))

(assert (= (and d!2032469 (not c!1186539)) b!6477990))

(declare-fun m!7266368 () Bool)

(assert (=> b!6477990 m!7266368))

(declare-fun m!7266370 () Bool)

(assert (=> b!6477990 m!7266370))

(assert (=> d!2031999 d!2032469))

(declare-fun d!2032471 () Bool)

(declare-fun c!1186540 () Bool)

(assert (=> d!2032471 (= c!1186540 ((_ is Nil!65240) lt!2385673))))

(declare-fun e!3926662 () (InoxSet C!32980))

(assert (=> d!2032471 (= (content!12410 lt!2385673) e!3926662)))

(declare-fun b!6477991 () Bool)

(assert (=> b!6477991 (= e!3926662 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6477992 () Bool)

(assert (=> b!6477992 (= e!3926662 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 lt!2385673) true) (content!12410 (t!378988 lt!2385673))))))

(assert (= (and d!2032471 c!1186540) b!6477991))

(assert (= (and d!2032471 (not c!1186540)) b!6477992))

(declare-fun m!7266372 () Bool)

(assert (=> b!6477992 m!7266372))

(declare-fun m!7266374 () Bool)

(assert (=> b!6477992 m!7266374))

(assert (=> d!2031999 d!2032471))

(declare-fun d!2032473 () Bool)

(declare-fun c!1186541 () Bool)

(assert (=> d!2032473 (= c!1186541 ((_ is Nil!65240) (_2!36637 lt!2385678)))))

(declare-fun e!3926663 () (InoxSet C!32980))

(assert (=> d!2032473 (= (content!12410 (_2!36637 lt!2385678)) e!3926663)))

(declare-fun b!6477993 () Bool)

(assert (=> b!6477993 (= e!3926663 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6477994 () Bool)

(assert (=> b!6477994 (= e!3926663 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 (_2!36637 lt!2385678)) true) (content!12410 (t!378988 (_2!36637 lt!2385678)))))))

(assert (= (and d!2032473 c!1186541) b!6477993))

(assert (= (and d!2032473 (not c!1186541)) b!6477994))

(declare-fun m!7266376 () Bool)

(assert (=> b!6477994 m!7266376))

(declare-fun m!7266378 () Bool)

(assert (=> b!6477994 m!7266378))

(assert (=> d!2031999 d!2032473))

(declare-fun d!2032475 () Bool)

(assert (=> d!2032475 (= (nullable!6348 lt!2385664) (nullableFct!2287 lt!2385664))))

(declare-fun bs!1642860 () Bool)

(assert (= bs!1642860 d!2032475))

(declare-fun m!7266380 () Bool)

(assert (=> bs!1642860 m!7266380))

(assert (=> b!6477261 d!2032475))

(declare-fun d!2032477 () Bool)

(declare-fun c!1186542 () Bool)

(assert (=> d!2032477 (= c!1186542 (isEmpty!37424 (tail!12274 (t!378988 s!2326))))))

(declare-fun e!3926664 () Bool)

(assert (=> d!2032477 (= (matchZipper!2367 (derivationStepZipper!2321 lt!2385661 (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))) e!3926664)))

(declare-fun b!6477995 () Bool)

(assert (=> b!6477995 (= e!3926664 (nullableZipper!2114 (derivationStepZipper!2321 lt!2385661 (head!13189 (t!378988 s!2326)))))))

(declare-fun b!6477996 () Bool)

(assert (=> b!6477996 (= e!3926664 (matchZipper!2367 (derivationStepZipper!2321 (derivationStepZipper!2321 lt!2385661 (head!13189 (t!378988 s!2326))) (head!13189 (tail!12274 (t!378988 s!2326)))) (tail!12274 (tail!12274 (t!378988 s!2326)))))))

(assert (= (and d!2032477 c!1186542) b!6477995))

(assert (= (and d!2032477 (not c!1186542)) b!6477996))

(assert (=> d!2032477 m!7265002))

(assert (=> d!2032477 m!7266040))

(assert (=> b!6477995 m!7265392))

(declare-fun m!7266382 () Bool)

(assert (=> b!6477995 m!7266382))

(assert (=> b!6477996 m!7265002))

(assert (=> b!6477996 m!7266044))

(assert (=> b!6477996 m!7265392))

(assert (=> b!6477996 m!7266044))

(declare-fun m!7266384 () Bool)

(assert (=> b!6477996 m!7266384))

(assert (=> b!6477996 m!7265002))

(assert (=> b!6477996 m!7266048))

(assert (=> b!6477996 m!7266384))

(assert (=> b!6477996 m!7266048))

(declare-fun m!7266386 () Bool)

(assert (=> b!6477996 m!7266386))

(assert (=> b!6477096 d!2032477))

(declare-fun bs!1642861 () Bool)

(declare-fun d!2032479 () Bool)

(assert (= bs!1642861 (and d!2032479 d!2032435)))

(declare-fun lambda!358143 () Int)

(assert (=> bs!1642861 (= (= (head!13189 (t!378988 s!2326)) (head!13189 (_1!36637 lt!2385692))) (= lambda!358143 lambda!358141))))

(declare-fun bs!1642862 () Bool)

(assert (= bs!1642862 (and d!2032479 d!2032359)))

(assert (=> bs!1642862 (= lambda!358143 lambda!358135)))

(declare-fun bs!1642863 () Bool)

(assert (= bs!1642863 (and d!2032479 b!6476340)))

(assert (=> bs!1642863 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358143 lambda!358015))))

(declare-fun bs!1642864 () Bool)

(assert (= bs!1642864 (and d!2032479 d!2032025)))

(assert (=> bs!1642864 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358143 lambda!358081))))

(declare-fun bs!1642865 () Bool)

(assert (= bs!1642865 (and d!2032479 d!2032335)))

(assert (=> bs!1642865 (= (= (head!13189 (t!378988 s!2326)) (head!13189 lt!2385693)) (= lambda!358143 lambda!358132))))

(declare-fun bs!1642866 () Bool)

(assert (= bs!1642866 (and d!2032479 d!2032289)))

(assert (=> bs!1642866 (= lambda!358143 lambda!358131)))

(assert (=> d!2032479 true))

(assert (=> d!2032479 (= (derivationStepZipper!2321 lt!2385661 (head!13189 (t!378988 s!2326))) (flatMap!1860 lt!2385661 lambda!358143))))

(declare-fun bs!1642867 () Bool)

(assert (= bs!1642867 d!2032479))

(declare-fun m!7266388 () Bool)

(assert (=> bs!1642867 m!7266388))

(assert (=> b!6477096 d!2032479))

(assert (=> b!6477096 d!2032291))

(assert (=> b!6477096 d!2032293))

(declare-fun d!2032481 () Bool)

(assert (=> d!2032481 true))

(assert (=> d!2032481 true))

(declare-fun res!2659897 () Bool)

(assert (=> d!2032481 (= (choose!48008 lambda!358014) res!2659897)))

(assert (=> d!2032051 d!2032481))

(declare-fun d!2032483 () Bool)

(declare-fun e!3926666 () Bool)

(assert (=> d!2032483 e!3926666))

(declare-fun res!2659899 () Bool)

(assert (=> d!2032483 (=> (not res!2659899) (not e!3926666))))

(declare-fun lt!2385926 () List!65364)

(assert (=> d!2032483 (= res!2659899 (= (content!12410 lt!2385926) ((_ map or) (content!12410 (t!378988 lt!2385673)) (content!12410 (_2!36637 lt!2385678)))))))

(declare-fun e!3926665 () List!65364)

(assert (=> d!2032483 (= lt!2385926 e!3926665)))

(declare-fun c!1186543 () Bool)

(assert (=> d!2032483 (= c!1186543 ((_ is Nil!65240) (t!378988 lt!2385673)))))

(assert (=> d!2032483 (= (++!14423 (t!378988 lt!2385673) (_2!36637 lt!2385678)) lt!2385926)))

(declare-fun b!6477999 () Bool)

(declare-fun res!2659898 () Bool)

(assert (=> b!6477999 (=> (not res!2659898) (not e!3926666))))

(assert (=> b!6477999 (= res!2659898 (= (size!40407 lt!2385926) (+ (size!40407 (t!378988 lt!2385673)) (size!40407 (_2!36637 lt!2385678)))))))

(declare-fun b!6477998 () Bool)

(assert (=> b!6477998 (= e!3926665 (Cons!65240 (h!71688 (t!378988 lt!2385673)) (++!14423 (t!378988 (t!378988 lt!2385673)) (_2!36637 lt!2385678))))))

(declare-fun b!6478000 () Bool)

(assert (=> b!6478000 (= e!3926666 (or (not (= (_2!36637 lt!2385678) Nil!65240)) (= lt!2385926 (t!378988 lt!2385673))))))

(declare-fun b!6477997 () Bool)

(assert (=> b!6477997 (= e!3926665 (_2!36637 lt!2385678))))

(assert (= (and d!2032483 c!1186543) b!6477997))

(assert (= (and d!2032483 (not c!1186543)) b!6477998))

(assert (= (and d!2032483 res!2659899) b!6477999))

(assert (= (and b!6477999 res!2659898) b!6478000))

(declare-fun m!7266390 () Bool)

(assert (=> d!2032483 m!7266390))

(assert (=> d!2032483 m!7266374))

(assert (=> d!2032483 m!7265184))

(declare-fun m!7266392 () Bool)

(assert (=> b!6477999 m!7266392))

(assert (=> b!6477999 m!7266222))

(assert (=> b!6477999 m!7265190))

(declare-fun m!7266394 () Bool)

(assert (=> b!6477998 m!7266394))

(assert (=> b!6477063 d!2032483))

(declare-fun d!2032485 () Bool)

(declare-fun c!1186544 () Bool)

(assert (=> d!2032485 (= c!1186544 ((_ is Nil!65240) lt!2385809))))

(declare-fun e!3926667 () (InoxSet C!32980))

(assert (=> d!2032485 (= (content!12410 lt!2385809) e!3926667)))

(declare-fun b!6478001 () Bool)

(assert (=> b!6478001 (= e!3926667 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6478002 () Bool)

(assert (=> b!6478002 (= e!3926667 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 lt!2385809) true) (content!12410 (t!378988 lt!2385809))))))

(assert (= (and d!2032485 c!1186544) b!6478001))

(assert (= (and d!2032485 (not c!1186544)) b!6478002))

(declare-fun m!7266396 () Bool)

(assert (=> b!6478002 m!7266396))

(declare-fun m!7266398 () Bool)

(assert (=> b!6478002 m!7266398))

(assert (=> d!2031995 d!2032485))

(assert (=> d!2031995 d!2032345))

(declare-fun d!2032487 () Bool)

(declare-fun c!1186545 () Bool)

(assert (=> d!2032487 (= c!1186545 ((_ is Nil!65240) lt!2385693))))

(declare-fun e!3926668 () (InoxSet C!32980))

(assert (=> d!2032487 (= (content!12410 lt!2385693) e!3926668)))

(declare-fun b!6478003 () Bool)

(assert (=> b!6478003 (= e!3926668 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6478004 () Bool)

(assert (=> b!6478004 (= e!3926668 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 lt!2385693) true) (content!12410 (t!378988 lt!2385693))))))

(assert (= (and d!2032487 c!1186545) b!6478003))

(assert (= (and d!2032487 (not c!1186545)) b!6478004))

(declare-fun m!7266400 () Bool)

(assert (=> b!6478004 m!7266400))

(declare-fun m!7266402 () Bool)

(assert (=> b!6478004 m!7266402))

(assert (=> d!2031995 d!2032487))

(declare-fun d!2032489 () Bool)

(assert (=> d!2032489 true))

(assert (=> d!2032489 true))

(declare-fun res!2659900 () Bool)

(assert (=> d!2032489 (= (choose!48008 lambda!358019) res!2659900)))

(assert (=> d!2032149 d!2032489))

(declare-fun d!2032491 () Bool)

(assert (=> d!2032491 (= (nullable!6348 (h!71689 (exprs!6239 lt!2385662))) (nullableFct!2287 (h!71689 (exprs!6239 lt!2385662))))))

(declare-fun bs!1642868 () Bool)

(assert (= bs!1642868 d!2032491))

(declare-fun m!7266404 () Bool)

(assert (=> bs!1642868 m!7266404))

(assert (=> b!6477097 d!2032491))

(declare-fun bs!1642869 () Bool)

(declare-fun d!2032493 () Bool)

(assert (= bs!1642869 (and d!2032493 d!2032083)))

(declare-fun lambda!358144 () Int)

(assert (=> bs!1642869 (= lambda!358144 lambda!358095)))

(declare-fun bs!1642870 () Bool)

(assert (= bs!1642870 (and d!2032493 d!2031879)))

(assert (=> bs!1642870 (= lambda!358144 lambda!358039)))

(declare-fun bs!1642871 () Bool)

(assert (= bs!1642871 (and d!2032493 d!2032223)))

(assert (=> bs!1642871 (= lambda!358144 lambda!358119)))

(declare-fun bs!1642872 () Bool)

(assert (= bs!1642872 (and d!2032493 d!2031899)))

(assert (=> bs!1642872 (= lambda!358144 lambda!358049)))

(declare-fun bs!1642873 () Bool)

(assert (= bs!1642873 (and d!2032493 d!2032101)))

(assert (=> bs!1642873 (= lambda!358144 lambda!358101)))

(declare-fun bs!1642874 () Bool)

(assert (= bs!1642874 (and d!2032493 d!2032085)))

(assert (=> bs!1642874 (= lambda!358144 lambda!358099)))

(declare-fun bs!1642875 () Bool)

(assert (= bs!1642875 (and d!2032493 d!2031887)))

(assert (=> bs!1642875 (= lambda!358144 lambda!358048)))

(declare-fun b!6478005 () Bool)

(declare-fun e!3926671 () Bool)

(declare-fun lt!2385927 () Regex!16355)

(assert (=> b!6478005 (= e!3926671 (isConcat!1271 lt!2385927))))

(declare-fun b!6478006 () Bool)

(assert (=> b!6478006 (= e!3926671 (= lt!2385927 (head!13190 (t!378989 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6478007 () Bool)

(declare-fun e!3926670 () Bool)

(assert (=> b!6478007 (= e!3926670 (isEmptyExpr!1748 lt!2385927))))

(declare-fun b!6478008 () Bool)

(declare-fun e!3926669 () Regex!16355)

(declare-fun e!3926672 () Regex!16355)

(assert (=> b!6478008 (= e!3926669 e!3926672)))

(declare-fun c!1186548 () Bool)

(assert (=> b!6478008 (= c!1186548 ((_ is Cons!65241) (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6478009 () Bool)

(declare-fun e!3926674 () Bool)

(assert (=> b!6478009 (= e!3926674 e!3926670)))

(declare-fun c!1186549 () Bool)

(assert (=> b!6478009 (= c!1186549 (isEmpty!37422 (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6478010 () Bool)

(assert (=> b!6478010 (= e!3926669 (h!71689 (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6478011 () Bool)

(assert (=> b!6478011 (= e!3926672 (Concat!25200 (h!71689 (t!378989 (exprs!6239 (h!71690 zl!343)))) (generalisedConcat!1952 (t!378989 (t!378989 (exprs!6239 (h!71690 zl!343)))))))))

(declare-fun b!6478012 () Bool)

(assert (=> b!6478012 (= e!3926670 e!3926671)))

(declare-fun c!1186546 () Bool)

(assert (=> b!6478012 (= c!1186546 (isEmpty!37422 (tail!12275 (t!378989 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6478013 () Bool)

(assert (=> b!6478013 (= e!3926672 EmptyExpr!16355)))

(declare-fun b!6478014 () Bool)

(declare-fun e!3926673 () Bool)

(assert (=> b!6478014 (= e!3926673 (isEmpty!37422 (t!378989 (t!378989 (exprs!6239 (h!71690 zl!343))))))))

(assert (=> d!2032493 e!3926674))

(declare-fun res!2659902 () Bool)

(assert (=> d!2032493 (=> (not res!2659902) (not e!3926674))))

(assert (=> d!2032493 (= res!2659902 (validRegex!8091 lt!2385927))))

(assert (=> d!2032493 (= lt!2385927 e!3926669)))

(declare-fun c!1186547 () Bool)

(assert (=> d!2032493 (= c!1186547 e!3926673)))

(declare-fun res!2659901 () Bool)

(assert (=> d!2032493 (=> (not res!2659901) (not e!3926673))))

(assert (=> d!2032493 (= res!2659901 ((_ is Cons!65241) (t!378989 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> d!2032493 (forall!15540 (t!378989 (exprs!6239 (h!71690 zl!343))) lambda!358144)))

(assert (=> d!2032493 (= (generalisedConcat!1952 (t!378989 (exprs!6239 (h!71690 zl!343)))) lt!2385927)))

(assert (= (and d!2032493 res!2659901) b!6478014))

(assert (= (and d!2032493 c!1186547) b!6478010))

(assert (= (and d!2032493 (not c!1186547)) b!6478008))

(assert (= (and b!6478008 c!1186548) b!6478011))

(assert (= (and b!6478008 (not c!1186548)) b!6478013))

(assert (= (and d!2032493 res!2659902) b!6478009))

(assert (= (and b!6478009 c!1186549) b!6478007))

(assert (= (and b!6478009 (not c!1186549)) b!6478012))

(assert (= (and b!6478012 c!1186546) b!6478006))

(assert (= (and b!6478012 (not c!1186546)) b!6478005))

(declare-fun m!7266406 () Bool)

(assert (=> d!2032493 m!7266406))

(declare-fun m!7266408 () Bool)

(assert (=> d!2032493 m!7266408))

(declare-fun m!7266410 () Bool)

(assert (=> b!6478006 m!7266410))

(declare-fun m!7266412 () Bool)

(assert (=> b!6478012 m!7266412))

(assert (=> b!6478012 m!7266412))

(declare-fun m!7266414 () Bool)

(assert (=> b!6478012 m!7266414))

(declare-fun m!7266416 () Bool)

(assert (=> b!6478011 m!7266416))

(assert (=> b!6478009 m!7264520))

(declare-fun m!7266418 () Bool)

(assert (=> b!6478005 m!7266418))

(declare-fun m!7266420 () Bool)

(assert (=> b!6478014 m!7266420))

(declare-fun m!7266422 () Bool)

(assert (=> b!6478007 m!7266422))

(assert (=> b!6476713 d!2032493))

(declare-fun d!2032495 () Bool)

(assert (=> d!2032495 (= (isEmpty!37424 (tail!12274 lt!2385673)) ((_ is Nil!65240) (tail!12274 lt!2385673)))))

(assert (=> b!6476601 d!2032495))

(assert (=> b!6476601 d!2032407))

(declare-fun call!560589 () List!65365)

(declare-fun c!1186552 () Bool)

(declare-fun call!560587 () (InoxSet Context!11478))

(declare-fun c!1186551 () Bool)

(declare-fun bm!560582 () Bool)

(declare-fun c!1186550 () Bool)

(assert (=> bm!560582 (= call!560587 (derivationStepZipperDown!1603 (ite c!1186552 (regOne!33223 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (ite c!1186551 (regTwo!33222 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (ite c!1186550 (regOne!33222 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (reg!16684 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292)))))))) (ite (or c!1186552 c!1186551) (ite c!1186271 lt!2385665 (Context!11479 call!560457)) (Context!11479 call!560589)) (h!71688 s!2326)))))

(declare-fun b!6478015 () Bool)

(declare-fun e!3926679 () Bool)

(assert (=> b!6478015 (= c!1186551 e!3926679)))

(declare-fun res!2659903 () Bool)

(assert (=> b!6478015 (=> (not res!2659903) (not e!3926679))))

(assert (=> b!6478015 (= res!2659903 ((_ is Concat!25200) (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun e!3926677 () (InoxSet Context!11478))

(declare-fun e!3926676 () (InoxSet Context!11478))

(assert (=> b!6478015 (= e!3926677 e!3926676)))

(declare-fun b!6478016 () Bool)

(declare-fun c!1186554 () Bool)

(assert (=> b!6478016 (= c!1186554 ((_ is Star!16355) (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun e!3926680 () (InoxSet Context!11478))

(declare-fun e!3926678 () (InoxSet Context!11478))

(assert (=> b!6478016 (= e!3926680 e!3926678)))

(declare-fun c!1186553 () Bool)

(declare-fun d!2032497 () Bool)

(assert (=> d!2032497 (= c!1186553 (and ((_ is ElementMatch!16355) (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (= (c!1186089 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (h!71688 s!2326))))))

(declare-fun e!3926675 () (InoxSet Context!11478))

(assert (=> d!2032497 (= (derivationStepZipperDown!1603 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292)))) (ite c!1186271 lt!2385665 (Context!11479 call!560457)) (h!71688 s!2326)) e!3926675)))

(declare-fun bm!560583 () Bool)

(declare-fun call!560592 () List!65365)

(assert (=> bm!560583 (= call!560589 call!560592)))

(declare-fun b!6478017 () Bool)

(assert (=> b!6478017 (= e!3926679 (nullable!6348 (regOne!33222 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292)))))))))

(declare-fun b!6478018 () Bool)

(assert (=> b!6478018 (= e!3926678 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560584 () Bool)

(declare-fun call!560590 () (InoxSet Context!11478))

(declare-fun call!560591 () (InoxSet Context!11478))

(assert (=> bm!560584 (= call!560590 call!560591)))

(declare-fun b!6478019 () Bool)

(assert (=> b!6478019 (= e!3926678 call!560590)))

(declare-fun b!6478020 () Bool)

(declare-fun call!560588 () (InoxSet Context!11478))

(assert (=> b!6478020 (= e!3926677 ((_ map or) call!560587 call!560588))))

(declare-fun b!6478021 () Bool)

(assert (=> b!6478021 (= e!3926675 (store ((as const (Array Context!11478 Bool)) false) (ite c!1186271 lt!2385665 (Context!11479 call!560457)) true))))

(declare-fun b!6478022 () Bool)

(assert (=> b!6478022 (= e!3926675 e!3926677)))

(assert (=> b!6478022 (= c!1186552 ((_ is Union!16355) (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun bm!560585 () Bool)

(assert (=> bm!560585 (= call!560592 ($colon$colon!2210 (exprs!6239 (ite c!1186271 lt!2385665 (Context!11479 call!560457))) (ite (or c!1186551 c!1186550) (regTwo!33222 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292)))))))))

(declare-fun b!6478023 () Bool)

(assert (=> b!6478023 (= e!3926676 ((_ map or) call!560588 call!560591))))

(declare-fun bm!560586 () Bool)

(assert (=> bm!560586 (= call!560591 call!560587)))

(declare-fun bm!560587 () Bool)

(assert (=> bm!560587 (= call!560588 (derivationStepZipperDown!1603 (ite c!1186552 (regTwo!33223 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (regOne!33222 (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292)))))) (ite c!1186552 (ite c!1186271 lt!2385665 (Context!11479 call!560457)) (Context!11479 call!560592)) (h!71688 s!2326)))))

(declare-fun b!6478024 () Bool)

(assert (=> b!6478024 (= e!3926680 call!560590)))

(declare-fun b!6478025 () Bool)

(assert (=> b!6478025 (= e!3926676 e!3926680)))

(assert (=> b!6478025 (= c!1186550 ((_ is Concat!25200) (ite c!1186271 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))))))

(assert (= (and d!2032497 c!1186553) b!6478021))

(assert (= (and d!2032497 (not c!1186553)) b!6478022))

(assert (= (and b!6478022 c!1186552) b!6478020))

(assert (= (and b!6478022 (not c!1186552)) b!6478015))

(assert (= (and b!6478015 res!2659903) b!6478017))

(assert (= (and b!6478015 c!1186551) b!6478023))

(assert (= (and b!6478015 (not c!1186551)) b!6478025))

(assert (= (and b!6478025 c!1186550) b!6478024))

(assert (= (and b!6478025 (not c!1186550)) b!6478016))

(assert (= (and b!6478016 c!1186554) b!6478019))

(assert (= (and b!6478016 (not c!1186554)) b!6478018))

(assert (= (or b!6478024 b!6478019) bm!560583))

(assert (= (or b!6478024 b!6478019) bm!560584))

(assert (= (or b!6478023 bm!560583) bm!560585))

(assert (= (or b!6478023 bm!560584) bm!560586))

(assert (= (or b!6478020 b!6478023) bm!560587))

(assert (= (or b!6478020 bm!560586) bm!560582))

(declare-fun m!7266424 () Bool)

(assert (=> bm!560587 m!7266424))

(declare-fun m!7266426 () Bool)

(assert (=> bm!560582 m!7266426))

(declare-fun m!7266428 () Bool)

(assert (=> b!6478021 m!7266428))

(declare-fun m!7266430 () Bool)

(assert (=> b!6478017 m!7266430))

(declare-fun m!7266432 () Bool)

(assert (=> bm!560585 m!7266432))

(assert (=> bm!560452 d!2032497))

(declare-fun b!6478026 () Bool)

(declare-fun e!3926683 () Bool)

(declare-fun e!3926684 () Bool)

(assert (=> b!6478026 (= e!3926683 e!3926684)))

(declare-fun res!2659908 () Bool)

(assert (=> b!6478026 (= res!2659908 (not (nullable!6348 (reg!16684 (regTwo!33222 r!7292)))))))

(assert (=> b!6478026 (=> (not res!2659908) (not e!3926684))))

(declare-fun b!6478027 () Bool)

(declare-fun e!3926685 () Bool)

(declare-fun call!560593 () Bool)

(assert (=> b!6478027 (= e!3926685 call!560593)))

(declare-fun b!6478028 () Bool)

(declare-fun e!3926681 () Bool)

(assert (=> b!6478028 (= e!3926681 e!3926683)))

(declare-fun c!1186556 () Bool)

(assert (=> b!6478028 (= c!1186556 ((_ is Star!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6478029 () Bool)

(declare-fun e!3926687 () Bool)

(assert (=> b!6478029 (= e!3926687 call!560593)))

(declare-fun b!6478030 () Bool)

(declare-fun e!3926686 () Bool)

(assert (=> b!6478030 (= e!3926686 e!3926685)))

(declare-fun res!2659904 () Bool)

(assert (=> b!6478030 (=> (not res!2659904) (not e!3926685))))

(declare-fun call!560595 () Bool)

(assert (=> b!6478030 (= res!2659904 call!560595)))

(declare-fun bm!560588 () Bool)

(declare-fun c!1186555 () Bool)

(assert (=> bm!560588 (= call!560595 (validRegex!8091 (ite c!1186555 (regOne!33223 (regTwo!33222 r!7292)) (regOne!33222 (regTwo!33222 r!7292)))))))

(declare-fun bm!560589 () Bool)

(declare-fun call!560594 () Bool)

(assert (=> bm!560589 (= call!560593 call!560594)))

(declare-fun b!6478031 () Bool)

(assert (=> b!6478031 (= e!3926684 call!560594)))

(declare-fun bm!560590 () Bool)

(assert (=> bm!560590 (= call!560594 (validRegex!8091 (ite c!1186556 (reg!16684 (regTwo!33222 r!7292)) (ite c!1186555 (regTwo!33223 (regTwo!33222 r!7292)) (regTwo!33222 (regTwo!33222 r!7292))))))))

(declare-fun b!6478032 () Bool)

(declare-fun res!2659907 () Bool)

(assert (=> b!6478032 (=> (not res!2659907) (not e!3926687))))

(assert (=> b!6478032 (= res!2659907 call!560595)))

(declare-fun e!3926682 () Bool)

(assert (=> b!6478032 (= e!3926682 e!3926687)))

(declare-fun d!2032499 () Bool)

(declare-fun res!2659906 () Bool)

(assert (=> d!2032499 (=> res!2659906 e!3926681)))

(assert (=> d!2032499 (= res!2659906 ((_ is ElementMatch!16355) (regTwo!33222 r!7292)))))

(assert (=> d!2032499 (= (validRegex!8091 (regTwo!33222 r!7292)) e!3926681)))

(declare-fun b!6478033 () Bool)

(assert (=> b!6478033 (= e!3926683 e!3926682)))

(assert (=> b!6478033 (= c!1186555 ((_ is Union!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6478034 () Bool)

(declare-fun res!2659905 () Bool)

(assert (=> b!6478034 (=> res!2659905 e!3926686)))

(assert (=> b!6478034 (= res!2659905 (not ((_ is Concat!25200) (regTwo!33222 r!7292))))))

(assert (=> b!6478034 (= e!3926682 e!3926686)))

(assert (= (and d!2032499 (not res!2659906)) b!6478028))

(assert (= (and b!6478028 c!1186556) b!6478026))

(assert (= (and b!6478028 (not c!1186556)) b!6478033))

(assert (= (and b!6478026 res!2659908) b!6478031))

(assert (= (and b!6478033 c!1186555) b!6478032))

(assert (= (and b!6478033 (not c!1186555)) b!6478034))

(assert (= (and b!6478032 res!2659907) b!6478029))

(assert (= (and b!6478034 (not res!2659905)) b!6478030))

(assert (= (and b!6478030 res!2659904) b!6478027))

(assert (= (or b!6478029 b!6478027) bm!560589))

(assert (= (or b!6478032 b!6478030) bm!560588))

(assert (= (or b!6478031 bm!560589) bm!560590))

(declare-fun m!7266434 () Bool)

(assert (=> b!6478026 m!7266434))

(declare-fun m!7266436 () Bool)

(assert (=> bm!560588 m!7266436))

(declare-fun m!7266438 () Bool)

(assert (=> bm!560590 m!7266438))

(assert (=> b!6476673 d!2032499))

(assert (=> bm!560487 d!2032175))

(declare-fun b!6478035 () Bool)

(declare-fun e!3926690 () Bool)

(declare-fun e!3926691 () Bool)

(assert (=> b!6478035 (= e!3926690 e!3926691)))

(declare-fun res!2659913 () Bool)

(assert (=> b!6478035 (= res!2659913 (not (nullable!6348 (reg!16684 lt!2385748))))))

(assert (=> b!6478035 (=> (not res!2659913) (not e!3926691))))

(declare-fun b!6478036 () Bool)

(declare-fun e!3926692 () Bool)

(declare-fun call!560596 () Bool)

(assert (=> b!6478036 (= e!3926692 call!560596)))

(declare-fun b!6478037 () Bool)

(declare-fun e!3926688 () Bool)

(assert (=> b!6478037 (= e!3926688 e!3926690)))

(declare-fun c!1186558 () Bool)

(assert (=> b!6478037 (= c!1186558 ((_ is Star!16355) lt!2385748))))

(declare-fun b!6478038 () Bool)

(declare-fun e!3926694 () Bool)

(assert (=> b!6478038 (= e!3926694 call!560596)))

(declare-fun b!6478039 () Bool)

(declare-fun e!3926693 () Bool)

(assert (=> b!6478039 (= e!3926693 e!3926692)))

(declare-fun res!2659909 () Bool)

(assert (=> b!6478039 (=> (not res!2659909) (not e!3926692))))

(declare-fun call!560598 () Bool)

(assert (=> b!6478039 (= res!2659909 call!560598)))

(declare-fun bm!560591 () Bool)

(declare-fun c!1186557 () Bool)

(assert (=> bm!560591 (= call!560598 (validRegex!8091 (ite c!1186557 (regOne!33223 lt!2385748) (regOne!33222 lt!2385748))))))

(declare-fun bm!560592 () Bool)

(declare-fun call!560597 () Bool)

(assert (=> bm!560592 (= call!560596 call!560597)))

(declare-fun b!6478040 () Bool)

(assert (=> b!6478040 (= e!3926691 call!560597)))

(declare-fun bm!560593 () Bool)

(assert (=> bm!560593 (= call!560597 (validRegex!8091 (ite c!1186558 (reg!16684 lt!2385748) (ite c!1186557 (regTwo!33223 lt!2385748) (regTwo!33222 lt!2385748)))))))

(declare-fun b!6478041 () Bool)

(declare-fun res!2659912 () Bool)

(assert (=> b!6478041 (=> (not res!2659912) (not e!3926694))))

(assert (=> b!6478041 (= res!2659912 call!560598)))

(declare-fun e!3926689 () Bool)

(assert (=> b!6478041 (= e!3926689 e!3926694)))

(declare-fun d!2032501 () Bool)

(declare-fun res!2659911 () Bool)

(assert (=> d!2032501 (=> res!2659911 e!3926688)))

(assert (=> d!2032501 (= res!2659911 ((_ is ElementMatch!16355) lt!2385748))))

(assert (=> d!2032501 (= (validRegex!8091 lt!2385748) e!3926688)))

(declare-fun b!6478042 () Bool)

(assert (=> b!6478042 (= e!3926690 e!3926689)))

(assert (=> b!6478042 (= c!1186557 ((_ is Union!16355) lt!2385748))))

(declare-fun b!6478043 () Bool)

(declare-fun res!2659910 () Bool)

(assert (=> b!6478043 (=> res!2659910 e!3926693)))

(assert (=> b!6478043 (= res!2659910 (not ((_ is Concat!25200) lt!2385748)))))

(assert (=> b!6478043 (= e!3926689 e!3926693)))

(assert (= (and d!2032501 (not res!2659911)) b!6478037))

(assert (= (and b!6478037 c!1186558) b!6478035))

(assert (= (and b!6478037 (not c!1186558)) b!6478042))

(assert (= (and b!6478035 res!2659913) b!6478040))

(assert (= (and b!6478042 c!1186557) b!6478041))

(assert (= (and b!6478042 (not c!1186557)) b!6478043))

(assert (= (and b!6478041 res!2659912) b!6478038))

(assert (= (and b!6478043 (not res!2659910)) b!6478039))

(assert (= (and b!6478039 res!2659909) b!6478036))

(assert (= (or b!6478038 b!6478036) bm!560592))

(assert (= (or b!6478041 b!6478039) bm!560591))

(assert (= (or b!6478040 bm!560592) bm!560593))

(declare-fun m!7266440 () Bool)

(assert (=> b!6478035 m!7266440))

(declare-fun m!7266442 () Bool)

(assert (=> bm!560591 m!7266442))

(declare-fun m!7266444 () Bool)

(assert (=> bm!560593 m!7266444))

(assert (=> d!2031887 d!2032501))

(declare-fun d!2032503 () Bool)

(declare-fun res!2659914 () Bool)

(declare-fun e!3926695 () Bool)

(assert (=> d!2032503 (=> res!2659914 e!3926695)))

(assert (=> d!2032503 (= res!2659914 ((_ is Nil!65241) (exprs!6239 (h!71690 zl!343))))))

(assert (=> d!2032503 (= (forall!15540 (exprs!6239 (h!71690 zl!343)) lambda!358048) e!3926695)))

(declare-fun b!6478044 () Bool)

(declare-fun e!3926696 () Bool)

(assert (=> b!6478044 (= e!3926695 e!3926696)))

(declare-fun res!2659915 () Bool)

(assert (=> b!6478044 (=> (not res!2659915) (not e!3926696))))

(assert (=> b!6478044 (= res!2659915 (dynLambda!25916 lambda!358048 (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun b!6478045 () Bool)

(assert (=> b!6478045 (= e!3926696 (forall!15540 (t!378989 (exprs!6239 (h!71690 zl!343))) lambda!358048))))

(assert (= (and d!2032503 (not res!2659914)) b!6478044))

(assert (= (and b!6478044 res!2659915) b!6478045))

(declare-fun b_lambda!245403 () Bool)

(assert (=> (not b_lambda!245403) (not b!6478044)))

(declare-fun m!7266446 () Bool)

(assert (=> b!6478044 m!7266446))

(declare-fun m!7266448 () Bool)

(assert (=> b!6478045 m!7266448))

(assert (=> d!2031887 d!2032503))

(declare-fun bs!1642876 () Bool)

(declare-fun d!2032505 () Bool)

(assert (= bs!1642876 (and d!2032505 d!2032375)))

(declare-fun lambda!358145 () Int)

(assert (=> bs!1642876 (= lambda!358145 lambda!358138)))

(declare-fun bs!1642877 () Bool)

(assert (= bs!1642877 (and d!2032505 d!2032395)))

(assert (=> bs!1642877 (= lambda!358145 lambda!358140)))

(declare-fun bs!1642878 () Bool)

(assert (= bs!1642878 (and d!2032505 d!2032453)))

(assert (=> bs!1642878 (= lambda!358145 lambda!358142)))

(assert (=> d!2032505 (= (nullableZipper!2114 lt!2385643) (exists!2614 lt!2385643 lambda!358145))))

(declare-fun bs!1642879 () Bool)

(assert (= bs!1642879 d!2032505))

(declare-fun m!7266450 () Bool)

(assert (=> bs!1642879 m!7266450))

(assert (=> b!6476635 d!2032505))

(declare-fun b!6478046 () Bool)

(declare-fun e!3926699 () Bool)

(declare-fun e!3926702 () Bool)

(assert (=> b!6478046 (= e!3926699 e!3926702)))

(declare-fun res!2659918 () Bool)

(declare-fun call!560600 () Bool)

(assert (=> b!6478046 (= res!2659918 call!560600)))

(assert (=> b!6478046 (=> res!2659918 e!3926702)))

(declare-fun b!6478047 () Bool)

(declare-fun e!3926698 () Bool)

(declare-fun call!560599 () Bool)

(assert (=> b!6478047 (= e!3926698 call!560599)))

(declare-fun b!6478048 () Bool)

(assert (=> b!6478048 (= e!3926699 e!3926698)))

(declare-fun res!2659917 () Bool)

(assert (=> b!6478048 (= res!2659917 call!560600)))

(assert (=> b!6478048 (=> (not res!2659917) (not e!3926698))))

(declare-fun d!2032507 () Bool)

(declare-fun res!2659919 () Bool)

(declare-fun e!3926700 () Bool)

(assert (=> d!2032507 (=> res!2659919 e!3926700)))

(assert (=> d!2032507 (= res!2659919 ((_ is EmptyExpr!16355) (regOne!33222 (regOne!33222 r!7292))))))

(assert (=> d!2032507 (= (nullableFct!2287 (regOne!33222 (regOne!33222 r!7292))) e!3926700)))

(declare-fun b!6478049 () Bool)

(declare-fun e!3926697 () Bool)

(declare-fun e!3926701 () Bool)

(assert (=> b!6478049 (= e!3926697 e!3926701)))

(declare-fun res!2659916 () Bool)

(assert (=> b!6478049 (=> res!2659916 e!3926701)))

(assert (=> b!6478049 (= res!2659916 ((_ is Star!16355) (regOne!33222 (regOne!33222 r!7292))))))

(declare-fun b!6478050 () Bool)

(assert (=> b!6478050 (= e!3926700 e!3926697)))

(declare-fun res!2659920 () Bool)

(assert (=> b!6478050 (=> (not res!2659920) (not e!3926697))))

(assert (=> b!6478050 (= res!2659920 (and (not ((_ is EmptyLang!16355) (regOne!33222 (regOne!33222 r!7292)))) (not ((_ is ElementMatch!16355) (regOne!33222 (regOne!33222 r!7292))))))))

(declare-fun bm!560594 () Bool)

(declare-fun c!1186559 () Bool)

(assert (=> bm!560594 (= call!560599 (nullable!6348 (ite c!1186559 (regTwo!33223 (regOne!33222 (regOne!33222 r!7292))) (regTwo!33222 (regOne!33222 (regOne!33222 r!7292))))))))

(declare-fun b!6478051 () Bool)

(assert (=> b!6478051 (= e!3926702 call!560599)))

(declare-fun b!6478052 () Bool)

(assert (=> b!6478052 (= e!3926701 e!3926699)))

(assert (=> b!6478052 (= c!1186559 ((_ is Union!16355) (regOne!33222 (regOne!33222 r!7292))))))

(declare-fun bm!560595 () Bool)

(assert (=> bm!560595 (= call!560600 (nullable!6348 (ite c!1186559 (regOne!33223 (regOne!33222 (regOne!33222 r!7292))) (regOne!33222 (regOne!33222 (regOne!33222 r!7292))))))))

(assert (= (and d!2032507 (not res!2659919)) b!6478050))

(assert (= (and b!6478050 res!2659920) b!6478049))

(assert (= (and b!6478049 (not res!2659916)) b!6478052))

(assert (= (and b!6478052 c!1186559) b!6478046))

(assert (= (and b!6478052 (not c!1186559)) b!6478048))

(assert (= (and b!6478046 (not res!2659918)) b!6478051))

(assert (= (and b!6478048 res!2659917) b!6478047))

(assert (= (or b!6478051 b!6478047) bm!560594))

(assert (= (or b!6478046 b!6478048) bm!560595))

(declare-fun m!7266452 () Bool)

(assert (=> bm!560594 m!7266452))

(declare-fun m!7266454 () Bool)

(assert (=> bm!560595 m!7266454))

(assert (=> d!2031847 d!2032507))

(declare-fun b!6478053 () Bool)

(declare-fun e!3926709 () Bool)

(assert (=> b!6478053 (= e!3926709 (not (= (head!13189 (tail!12274 lt!2385693)) (c!1186089 (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693))))))))

(declare-fun b!6478054 () Bool)

(declare-fun res!2659923 () Bool)

(declare-fun e!3926703 () Bool)

(assert (=> b!6478054 (=> res!2659923 e!3926703)))

(assert (=> b!6478054 (= res!2659923 (not ((_ is ElementMatch!16355) (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693)))))))

(declare-fun e!3926706 () Bool)

(assert (=> b!6478054 (= e!3926706 e!3926703)))

(declare-fun b!6478055 () Bool)

(declare-fun e!3926708 () Bool)

(declare-fun lt!2385928 () Bool)

(declare-fun call!560601 () Bool)

(assert (=> b!6478055 (= e!3926708 (= lt!2385928 call!560601))))

(declare-fun b!6478056 () Bool)

(declare-fun e!3926704 () Bool)

(assert (=> b!6478056 (= e!3926704 (= (head!13189 (tail!12274 lt!2385693)) (c!1186089 (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693)))))))

(declare-fun b!6478057 () Bool)

(declare-fun res!2659926 () Bool)

(assert (=> b!6478057 (=> (not res!2659926) (not e!3926704))))

(assert (=> b!6478057 (= res!2659926 (not call!560601))))

(declare-fun d!2032509 () Bool)

(assert (=> d!2032509 e!3926708))

(declare-fun c!1186560 () Bool)

(assert (=> d!2032509 (= c!1186560 ((_ is EmptyExpr!16355) (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693))))))

(declare-fun e!3926707 () Bool)

(assert (=> d!2032509 (= lt!2385928 e!3926707)))

(declare-fun c!1186562 () Bool)

(assert (=> d!2032509 (= c!1186562 (isEmpty!37424 (tail!12274 lt!2385693)))))

(assert (=> d!2032509 (validRegex!8091 (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693)))))

(assert (=> d!2032509 (= (matchR!8538 (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693)) (tail!12274 lt!2385693)) lt!2385928)))

(declare-fun b!6478058 () Bool)

(declare-fun res!2659928 () Bool)

(assert (=> b!6478058 (=> res!2659928 e!3926703)))

(assert (=> b!6478058 (= res!2659928 e!3926704)))

(declare-fun res!2659921 () Bool)

(assert (=> b!6478058 (=> (not res!2659921) (not e!3926704))))

(assert (=> b!6478058 (= res!2659921 lt!2385928)))

(declare-fun b!6478059 () Bool)

(declare-fun e!3926705 () Bool)

(assert (=> b!6478059 (= e!3926703 e!3926705)))

(declare-fun res!2659927 () Bool)

(assert (=> b!6478059 (=> (not res!2659927) (not e!3926705))))

(assert (=> b!6478059 (= res!2659927 (not lt!2385928))))

(declare-fun b!6478060 () Bool)

(declare-fun res!2659924 () Bool)

(assert (=> b!6478060 (=> res!2659924 e!3926709)))

(assert (=> b!6478060 (= res!2659924 (not (isEmpty!37424 (tail!12274 (tail!12274 lt!2385693)))))))

(declare-fun b!6478061 () Bool)

(assert (=> b!6478061 (= e!3926707 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693)) (head!13189 (tail!12274 lt!2385693))) (tail!12274 (tail!12274 lt!2385693))))))

(declare-fun bm!560596 () Bool)

(assert (=> bm!560596 (= call!560601 (isEmpty!37424 (tail!12274 lt!2385693)))))

(declare-fun b!6478062 () Bool)

(assert (=> b!6478062 (= e!3926705 e!3926709)))

(declare-fun res!2659925 () Bool)

(assert (=> b!6478062 (=> res!2659925 e!3926709)))

(assert (=> b!6478062 (= res!2659925 call!560601)))

(declare-fun b!6478063 () Bool)

(assert (=> b!6478063 (= e!3926708 e!3926706)))

(declare-fun c!1186561 () Bool)

(assert (=> b!6478063 (= c!1186561 ((_ is EmptyLang!16355) (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693))))))

(declare-fun b!6478064 () Bool)

(declare-fun res!2659922 () Bool)

(assert (=> b!6478064 (=> (not res!2659922) (not e!3926704))))

(assert (=> b!6478064 (= res!2659922 (isEmpty!37424 (tail!12274 (tail!12274 lt!2385693))))))

(declare-fun b!6478065 () Bool)

(assert (=> b!6478065 (= e!3926707 (nullable!6348 (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693))))))

(declare-fun b!6478066 () Bool)

(assert (=> b!6478066 (= e!3926706 (not lt!2385928))))

(assert (= (and d!2032509 c!1186562) b!6478065))

(assert (= (and d!2032509 (not c!1186562)) b!6478061))

(assert (= (and d!2032509 c!1186560) b!6478055))

(assert (= (and d!2032509 (not c!1186560)) b!6478063))

(assert (= (and b!6478063 c!1186561) b!6478066))

(assert (= (and b!6478063 (not c!1186561)) b!6478054))

(assert (= (and b!6478054 (not res!2659923)) b!6478058))

(assert (= (and b!6478058 res!2659921) b!6478057))

(assert (= (and b!6478057 res!2659926) b!6478064))

(assert (= (and b!6478064 res!2659922) b!6478056))

(assert (= (and b!6478058 (not res!2659928)) b!6478059))

(assert (= (and b!6478059 res!2659927) b!6478062))

(assert (= (and b!6478062 (not res!2659925)) b!6478060))

(assert (= (and b!6478060 (not res!2659924)) b!6478053))

(assert (= (or b!6478055 b!6478062 b!6478057) bm!560596))

(assert (=> d!2032509 m!7264830))

(assert (=> d!2032509 m!7264834))

(assert (=> d!2032509 m!7264828))

(declare-fun m!7266456 () Bool)

(assert (=> d!2032509 m!7266456))

(assert (=> b!6478061 m!7264830))

(assert (=> b!6478061 m!7266092))

(assert (=> b!6478061 m!7264828))

(assert (=> b!6478061 m!7266092))

(declare-fun m!7266458 () Bool)

(assert (=> b!6478061 m!7266458))

(assert (=> b!6478061 m!7264830))

(assert (=> b!6478061 m!7266096))

(assert (=> b!6478061 m!7266458))

(assert (=> b!6478061 m!7266096))

(declare-fun m!7266460 () Bool)

(assert (=> b!6478061 m!7266460))

(assert (=> bm!560596 m!7264830))

(assert (=> bm!560596 m!7264834))

(assert (=> b!6478060 m!7264830))

(assert (=> b!6478060 m!7266096))

(assert (=> b!6478060 m!7266096))

(declare-fun m!7266462 () Bool)

(assert (=> b!6478060 m!7266462))

(assert (=> b!6478056 m!7264830))

(assert (=> b!6478056 m!7266092))

(assert (=> b!6478064 m!7264830))

(assert (=> b!6478064 m!7266096))

(assert (=> b!6478064 m!7266096))

(assert (=> b!6478064 m!7266462))

(assert (=> b!6478053 m!7264830))

(assert (=> b!6478053 m!7266092))

(assert (=> b!6478065 m!7264828))

(declare-fun m!7266464 () Bool)

(assert (=> b!6478065 m!7266464))

(assert (=> b!6476546 d!2032509))

(declare-fun call!560603 () Regex!16355)

(declare-fun b!6478067 () Bool)

(declare-fun e!3926710 () Regex!16355)

(declare-fun call!560604 () Regex!16355)

(assert (=> b!6478067 (= e!3926710 (Union!16355 (Concat!25200 call!560603 (regTwo!33222 lt!2385687)) call!560604))))

(declare-fun bm!560597 () Bool)

(declare-fun call!560605 () Regex!16355)

(assert (=> bm!560597 (= call!560604 call!560605)))

(declare-fun b!6478068 () Bool)

(declare-fun c!1186566 () Bool)

(assert (=> b!6478068 (= c!1186566 (nullable!6348 (regOne!33222 lt!2385687)))))

(declare-fun e!3926712 () Regex!16355)

(assert (=> b!6478068 (= e!3926712 e!3926710)))

(declare-fun call!560602 () Regex!16355)

(declare-fun c!1186565 () Bool)

(declare-fun bm!560598 () Bool)

(declare-fun c!1186563 () Bool)

(assert (=> bm!560598 (= call!560602 (derivativeStep!5053 (ite c!1186563 (regTwo!33223 lt!2385687) (ite c!1186565 (reg!16684 lt!2385687) (regOne!33222 lt!2385687))) (head!13189 lt!2385693)))))

(declare-fun b!6478069 () Bool)

(assert (=> b!6478069 (= c!1186563 ((_ is Union!16355) lt!2385687))))

(declare-fun e!3926713 () Regex!16355)

(declare-fun e!3926714 () Regex!16355)

(assert (=> b!6478069 (= e!3926713 e!3926714)))

(declare-fun b!6478070 () Bool)

(assert (=> b!6478070 (= e!3926713 (ite (= (head!13189 lt!2385693) (c!1186089 lt!2385687)) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560599 () Bool)

(assert (=> bm!560599 (= call!560603 call!560602)))

(declare-fun b!6478071 () Bool)

(assert (=> b!6478071 (= e!3926714 e!3926712)))

(assert (=> b!6478071 (= c!1186565 ((_ is Star!16355) lt!2385687))))

(declare-fun b!6478072 () Bool)

(assert (=> b!6478072 (= e!3926712 (Concat!25200 call!560603 lt!2385687))))

(declare-fun bm!560600 () Bool)

(assert (=> bm!560600 (= call!560605 (derivativeStep!5053 (ite c!1186563 (regOne!33223 lt!2385687) (ite c!1186566 (regTwo!33222 lt!2385687) (regOne!33222 lt!2385687))) (head!13189 lt!2385693)))))

(declare-fun b!6478073 () Bool)

(assert (=> b!6478073 (= e!3926710 (Union!16355 (Concat!25200 call!560604 (regTwo!33222 lt!2385687)) EmptyLang!16355))))

(declare-fun b!6478074 () Bool)

(assert (=> b!6478074 (= e!3926714 (Union!16355 call!560605 call!560602))))

(declare-fun d!2032511 () Bool)

(declare-fun lt!2385929 () Regex!16355)

(assert (=> d!2032511 (validRegex!8091 lt!2385929)))

(declare-fun e!3926711 () Regex!16355)

(assert (=> d!2032511 (= lt!2385929 e!3926711)))

(declare-fun c!1186567 () Bool)

(assert (=> d!2032511 (= c!1186567 (or ((_ is EmptyExpr!16355) lt!2385687) ((_ is EmptyLang!16355) lt!2385687)))))

(assert (=> d!2032511 (validRegex!8091 lt!2385687)))

(assert (=> d!2032511 (= (derivativeStep!5053 lt!2385687 (head!13189 lt!2385693)) lt!2385929)))

(declare-fun b!6478075 () Bool)

(assert (=> b!6478075 (= e!3926711 e!3926713)))

(declare-fun c!1186564 () Bool)

(assert (=> b!6478075 (= c!1186564 ((_ is ElementMatch!16355) lt!2385687))))

(declare-fun b!6478076 () Bool)

(assert (=> b!6478076 (= e!3926711 EmptyLang!16355)))

(assert (= (and d!2032511 c!1186567) b!6478076))

(assert (= (and d!2032511 (not c!1186567)) b!6478075))

(assert (= (and b!6478075 c!1186564) b!6478070))

(assert (= (and b!6478075 (not c!1186564)) b!6478069))

(assert (= (and b!6478069 c!1186563) b!6478074))

(assert (= (and b!6478069 (not c!1186563)) b!6478071))

(assert (= (and b!6478071 c!1186565) b!6478072))

(assert (= (and b!6478071 (not c!1186565)) b!6478068))

(assert (= (and b!6478068 c!1186566) b!6478067))

(assert (= (and b!6478068 (not c!1186566)) b!6478073))

(assert (= (or b!6478067 b!6478073) bm!560597))

(assert (= (or b!6478072 b!6478067) bm!560599))

(assert (= (or b!6478074 bm!560599) bm!560598))

(assert (= (or b!6478074 bm!560597) bm!560600))

(declare-fun m!7266466 () Bool)

(assert (=> b!6478068 m!7266466))

(assert (=> bm!560598 m!7264826))

(declare-fun m!7266468 () Bool)

(assert (=> bm!560598 m!7266468))

(assert (=> bm!560600 m!7264826))

(declare-fun m!7266470 () Bool)

(assert (=> bm!560600 m!7266470))

(declare-fun m!7266472 () Bool)

(assert (=> d!2032511 m!7266472))

(assert (=> d!2032511 m!7264824))

(assert (=> b!6476546 d!2032511))

(assert (=> b!6476546 d!2032225))

(assert (=> b!6476546 d!2032337))

(declare-fun b!6478077 () Bool)

(declare-fun e!3926717 () Bool)

(declare-fun e!3926718 () Bool)

(assert (=> b!6478077 (= e!3926717 e!3926718)))

(declare-fun res!2659933 () Bool)

(assert (=> b!6478077 (= res!2659933 (not (nullable!6348 (reg!16684 lt!2385751))))))

(assert (=> b!6478077 (=> (not res!2659933) (not e!3926718))))

(declare-fun b!6478078 () Bool)

(declare-fun e!3926719 () Bool)

(declare-fun call!560606 () Bool)

(assert (=> b!6478078 (= e!3926719 call!560606)))

(declare-fun b!6478079 () Bool)

(declare-fun e!3926715 () Bool)

(assert (=> b!6478079 (= e!3926715 e!3926717)))

(declare-fun c!1186569 () Bool)

(assert (=> b!6478079 (= c!1186569 ((_ is Star!16355) lt!2385751))))

(declare-fun b!6478080 () Bool)

(declare-fun e!3926721 () Bool)

(assert (=> b!6478080 (= e!3926721 call!560606)))

(declare-fun b!6478081 () Bool)

(declare-fun e!3926720 () Bool)

(assert (=> b!6478081 (= e!3926720 e!3926719)))

(declare-fun res!2659929 () Bool)

(assert (=> b!6478081 (=> (not res!2659929) (not e!3926719))))

(declare-fun call!560608 () Bool)

(assert (=> b!6478081 (= res!2659929 call!560608)))

(declare-fun bm!560601 () Bool)

(declare-fun c!1186568 () Bool)

(assert (=> bm!560601 (= call!560608 (validRegex!8091 (ite c!1186568 (regOne!33223 lt!2385751) (regOne!33222 lt!2385751))))))

(declare-fun bm!560602 () Bool)

(declare-fun call!560607 () Bool)

(assert (=> bm!560602 (= call!560606 call!560607)))

(declare-fun b!6478082 () Bool)

(assert (=> b!6478082 (= e!3926718 call!560607)))

(declare-fun bm!560603 () Bool)

(assert (=> bm!560603 (= call!560607 (validRegex!8091 (ite c!1186569 (reg!16684 lt!2385751) (ite c!1186568 (regTwo!33223 lt!2385751) (regTwo!33222 lt!2385751)))))))

(declare-fun b!6478083 () Bool)

(declare-fun res!2659932 () Bool)

(assert (=> b!6478083 (=> (not res!2659932) (not e!3926721))))

(assert (=> b!6478083 (= res!2659932 call!560608)))

(declare-fun e!3926716 () Bool)

(assert (=> b!6478083 (= e!3926716 e!3926721)))

(declare-fun d!2032513 () Bool)

(declare-fun res!2659931 () Bool)

(assert (=> d!2032513 (=> res!2659931 e!3926715)))

(assert (=> d!2032513 (= res!2659931 ((_ is ElementMatch!16355) lt!2385751))))

(assert (=> d!2032513 (= (validRegex!8091 lt!2385751) e!3926715)))

(declare-fun b!6478084 () Bool)

(assert (=> b!6478084 (= e!3926717 e!3926716)))

(assert (=> b!6478084 (= c!1186568 ((_ is Union!16355) lt!2385751))))

(declare-fun b!6478085 () Bool)

(declare-fun res!2659930 () Bool)

(assert (=> b!6478085 (=> res!2659930 e!3926720)))

(assert (=> b!6478085 (= res!2659930 (not ((_ is Concat!25200) lt!2385751)))))

(assert (=> b!6478085 (= e!3926716 e!3926720)))

(assert (= (and d!2032513 (not res!2659931)) b!6478079))

(assert (= (and b!6478079 c!1186569) b!6478077))

(assert (= (and b!6478079 (not c!1186569)) b!6478084))

(assert (= (and b!6478077 res!2659933) b!6478082))

(assert (= (and b!6478084 c!1186568) b!6478083))

(assert (= (and b!6478084 (not c!1186568)) b!6478085))

(assert (= (and b!6478083 res!2659932) b!6478080))

(assert (= (and b!6478085 (not res!2659930)) b!6478081))

(assert (= (and b!6478081 res!2659929) b!6478078))

(assert (= (or b!6478080 b!6478078) bm!560602))

(assert (= (or b!6478083 b!6478081) bm!560601))

(assert (= (or b!6478082 bm!560602) bm!560603))

(declare-fun m!7266474 () Bool)

(assert (=> b!6478077 m!7266474))

(declare-fun m!7266476 () Bool)

(assert (=> bm!560601 m!7266476))

(declare-fun m!7266478 () Bool)

(assert (=> bm!560603 m!7266478))

(assert (=> d!2031895 d!2032513))

(declare-fun bs!1642880 () Bool)

(declare-fun d!2032515 () Bool)

(assert (= bs!1642880 (and d!2032515 d!2032083)))

(declare-fun lambda!358146 () Int)

(assert (=> bs!1642880 (= lambda!358146 lambda!358095)))

(declare-fun bs!1642881 () Bool)

(assert (= bs!1642881 (and d!2032515 d!2031879)))

(assert (=> bs!1642881 (= lambda!358146 lambda!358039)))

(declare-fun bs!1642882 () Bool)

(assert (= bs!1642882 (and d!2032515 d!2032223)))

(assert (=> bs!1642882 (= lambda!358146 lambda!358119)))

(declare-fun bs!1642883 () Bool)

(assert (= bs!1642883 (and d!2032515 d!2031899)))

(assert (=> bs!1642883 (= lambda!358146 lambda!358049)))

(declare-fun bs!1642884 () Bool)

(assert (= bs!1642884 (and d!2032515 d!2032101)))

(assert (=> bs!1642884 (= lambda!358146 lambda!358101)))

(declare-fun bs!1642885 () Bool)

(assert (= bs!1642885 (and d!2032515 d!2032085)))

(assert (=> bs!1642885 (= lambda!358146 lambda!358099)))

(declare-fun bs!1642886 () Bool)

(assert (= bs!1642886 (and d!2032515 d!2031887)))

(assert (=> bs!1642886 (= lambda!358146 lambda!358048)))

(declare-fun bs!1642887 () Bool)

(assert (= bs!1642887 (and d!2032515 d!2032493)))

(assert (=> bs!1642887 (= lambda!358146 lambda!358144)))

(declare-fun b!6478087 () Bool)

(declare-fun e!3926724 () Bool)

(assert (=> b!6478087 (= e!3926724 (isEmpty!37422 (t!378989 (unfocusZipperList!1776 lt!2385686))))))

(declare-fun b!6478088 () Bool)

(declare-fun e!3926722 () Bool)

(declare-fun e!3926726 () Bool)

(assert (=> b!6478088 (= e!3926722 e!3926726)))

(declare-fun c!1186573 () Bool)

(assert (=> b!6478088 (= c!1186573 (isEmpty!37422 (unfocusZipperList!1776 lt!2385686)))))

(declare-fun b!6478089 () Bool)

(declare-fun e!3926723 () Regex!16355)

(assert (=> b!6478089 (= e!3926723 (Union!16355 (h!71689 (unfocusZipperList!1776 lt!2385686)) (generalisedUnion!2199 (t!378989 (unfocusZipperList!1776 lt!2385686)))))))

(declare-fun b!6478090 () Bool)

(declare-fun e!3926725 () Bool)

(declare-fun lt!2385930 () Regex!16355)

(assert (=> b!6478090 (= e!3926725 (= lt!2385930 (head!13190 (unfocusZipperList!1776 lt!2385686))))))

(declare-fun b!6478091 () Bool)

(assert (=> b!6478091 (= e!3926726 e!3926725)))

(declare-fun c!1186570 () Bool)

(assert (=> b!6478091 (= c!1186570 (isEmpty!37422 (tail!12275 (unfocusZipperList!1776 lt!2385686))))))

(declare-fun b!6478092 () Bool)

(assert (=> b!6478092 (= e!3926725 (isUnion!1187 lt!2385930))))

(declare-fun b!6478093 () Bool)

(assert (=> b!6478093 (= e!3926723 EmptyLang!16355)))

(declare-fun b!6478086 () Bool)

(declare-fun e!3926727 () Regex!16355)

(assert (=> b!6478086 (= e!3926727 (h!71689 (unfocusZipperList!1776 lt!2385686)))))

(assert (=> d!2032515 e!3926722))

(declare-fun res!2659935 () Bool)

(assert (=> d!2032515 (=> (not res!2659935) (not e!3926722))))

(assert (=> d!2032515 (= res!2659935 (validRegex!8091 lt!2385930))))

(assert (=> d!2032515 (= lt!2385930 e!3926727)))

(declare-fun c!1186572 () Bool)

(assert (=> d!2032515 (= c!1186572 e!3926724)))

(declare-fun res!2659934 () Bool)

(assert (=> d!2032515 (=> (not res!2659934) (not e!3926724))))

(assert (=> d!2032515 (= res!2659934 ((_ is Cons!65241) (unfocusZipperList!1776 lt!2385686)))))

(assert (=> d!2032515 (forall!15540 (unfocusZipperList!1776 lt!2385686) lambda!358146)))

(assert (=> d!2032515 (= (generalisedUnion!2199 (unfocusZipperList!1776 lt!2385686)) lt!2385930)))

(declare-fun b!6478094 () Bool)

(assert (=> b!6478094 (= e!3926727 e!3926723)))

(declare-fun c!1186571 () Bool)

(assert (=> b!6478094 (= c!1186571 ((_ is Cons!65241) (unfocusZipperList!1776 lt!2385686)))))

(declare-fun b!6478095 () Bool)

(assert (=> b!6478095 (= e!3926726 (isEmptyLang!1757 lt!2385930))))

(assert (= (and d!2032515 res!2659934) b!6478087))

(assert (= (and d!2032515 c!1186572) b!6478086))

(assert (= (and d!2032515 (not c!1186572)) b!6478094))

(assert (= (and b!6478094 c!1186571) b!6478089))

(assert (= (and b!6478094 (not c!1186571)) b!6478093))

(assert (= (and d!2032515 res!2659935) b!6478088))

(assert (= (and b!6478088 c!1186573) b!6478095))

(assert (= (and b!6478088 (not c!1186573)) b!6478091))

(assert (= (and b!6478091 c!1186570) b!6478090))

(assert (= (and b!6478091 (not c!1186570)) b!6478092))

(declare-fun m!7266480 () Bool)

(assert (=> b!6478095 m!7266480))

(assert (=> b!6478090 m!7264990))

(declare-fun m!7266482 () Bool)

(assert (=> b!6478090 m!7266482))

(declare-fun m!7266484 () Bool)

(assert (=> b!6478087 m!7266484))

(declare-fun m!7266486 () Bool)

(assert (=> b!6478092 m!7266486))

(assert (=> b!6478091 m!7264990))

(declare-fun m!7266488 () Bool)

(assert (=> b!6478091 m!7266488))

(assert (=> b!6478091 m!7266488))

(declare-fun m!7266490 () Bool)

(assert (=> b!6478091 m!7266490))

(assert (=> b!6478088 m!7264990))

(declare-fun m!7266492 () Bool)

(assert (=> b!6478088 m!7266492))

(declare-fun m!7266494 () Bool)

(assert (=> b!6478089 m!7266494))

(declare-fun m!7266496 () Bool)

(assert (=> d!2032515 m!7266496))

(assert (=> d!2032515 m!7264990))

(declare-fun m!7266498 () Bool)

(assert (=> d!2032515 m!7266498))

(assert (=> d!2031895 d!2032515))

(declare-fun bs!1642888 () Bool)

(declare-fun d!2032517 () Bool)

(assert (= bs!1642888 (and d!2032517 d!2032083)))

(declare-fun lambda!358147 () Int)

(assert (=> bs!1642888 (= lambda!358147 lambda!358095)))

(declare-fun bs!1642889 () Bool)

(assert (= bs!1642889 (and d!2032517 d!2031879)))

(assert (=> bs!1642889 (= lambda!358147 lambda!358039)))

(declare-fun bs!1642890 () Bool)

(assert (= bs!1642890 (and d!2032517 d!2032223)))

(assert (=> bs!1642890 (= lambda!358147 lambda!358119)))

(declare-fun bs!1642891 () Bool)

(assert (= bs!1642891 (and d!2032517 d!2031899)))

(assert (=> bs!1642891 (= lambda!358147 lambda!358049)))

(declare-fun bs!1642892 () Bool)

(assert (= bs!1642892 (and d!2032517 d!2032101)))

(assert (=> bs!1642892 (= lambda!358147 lambda!358101)))

(declare-fun bs!1642893 () Bool)

(assert (= bs!1642893 (and d!2032517 d!2032515)))

(assert (=> bs!1642893 (= lambda!358147 lambda!358146)))

(declare-fun bs!1642894 () Bool)

(assert (= bs!1642894 (and d!2032517 d!2032085)))

(assert (=> bs!1642894 (= lambda!358147 lambda!358099)))

(declare-fun bs!1642895 () Bool)

(assert (= bs!1642895 (and d!2032517 d!2031887)))

(assert (=> bs!1642895 (= lambda!358147 lambda!358048)))

(declare-fun bs!1642896 () Bool)

(assert (= bs!1642896 (and d!2032517 d!2032493)))

(assert (=> bs!1642896 (= lambda!358147 lambda!358144)))

(declare-fun lt!2385931 () List!65365)

(assert (=> d!2032517 (forall!15540 lt!2385931 lambda!358147)))

(declare-fun e!3926728 () List!65365)

(assert (=> d!2032517 (= lt!2385931 e!3926728)))

(declare-fun c!1186574 () Bool)

(assert (=> d!2032517 (= c!1186574 ((_ is Cons!65242) lt!2385686))))

(assert (=> d!2032517 (= (unfocusZipperList!1776 lt!2385686) lt!2385931)))

(declare-fun b!6478096 () Bool)

(assert (=> b!6478096 (= e!3926728 (Cons!65241 (generalisedConcat!1952 (exprs!6239 (h!71690 lt!2385686))) (unfocusZipperList!1776 (t!378990 lt!2385686))))))

(declare-fun b!6478097 () Bool)

(assert (=> b!6478097 (= e!3926728 Nil!65241)))

(assert (= (and d!2032517 c!1186574) b!6478096))

(assert (= (and d!2032517 (not c!1186574)) b!6478097))

(declare-fun m!7266500 () Bool)

(assert (=> d!2032517 m!7266500))

(declare-fun m!7266502 () Bool)

(assert (=> b!6478096 m!7266502))

(declare-fun m!7266504 () Bool)

(assert (=> b!6478096 m!7266504))

(assert (=> d!2031895 d!2032517))

(assert (=> d!2032073 d!2032075))

(declare-fun d!2032519 () Bool)

(assert (=> d!2032519 (= (flatMap!1860 lt!2385643 lambda!358015) (dynLambda!25915 lambda!358015 lt!2385676))))

(assert (=> d!2032519 true))

(declare-fun _$13!3697 () Unit!158751)

(assert (=> d!2032519 (= (choose!48009 lt!2385643 lt!2385676 lambda!358015) _$13!3697)))

(declare-fun b_lambda!245405 () Bool)

(assert (=> (not b_lambda!245405) (not d!2032519)))

(declare-fun bs!1642897 () Bool)

(assert (= bs!1642897 d!2032519))

(assert (=> bs!1642897 m!7264542))

(assert (=> bs!1642897 m!7265524))

(assert (=> d!2032073 d!2032519))

(assert (=> b!6477277 d!2032303))

(declare-fun b!6478098 () Bool)

(declare-fun e!3926735 () Bool)

(assert (=> b!6478098 (= e!3926735 (not (= (head!13189 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))) (c!1186089 (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))))

(declare-fun b!6478099 () Bool)

(declare-fun res!2659938 () Bool)

(declare-fun e!3926729 () Bool)

(assert (=> b!6478099 (=> res!2659938 e!3926729)))

(assert (=> b!6478099 (= res!2659938 (not ((_ is ElementMatch!16355) (Star!16355 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun e!3926732 () Bool)

(assert (=> b!6478099 (= e!3926732 e!3926729)))

(declare-fun b!6478100 () Bool)

(declare-fun e!3926734 () Bool)

(declare-fun lt!2385932 () Bool)

(declare-fun call!560609 () Bool)

(assert (=> b!6478100 (= e!3926734 (= lt!2385932 call!560609))))

(declare-fun b!6478101 () Bool)

(declare-fun e!3926730 () Bool)

(assert (=> b!6478101 (= e!3926730 (= (head!13189 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))) (c!1186089 (Star!16355 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun b!6478102 () Bool)

(declare-fun res!2659941 () Bool)

(assert (=> b!6478102 (=> (not res!2659941) (not e!3926730))))

(assert (=> b!6478102 (= res!2659941 (not call!560609))))

(declare-fun d!2032521 () Bool)

(assert (=> d!2032521 e!3926734))

(declare-fun c!1186575 () Bool)

(assert (=> d!2032521 (= c!1186575 ((_ is EmptyExpr!16355) (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun e!3926733 () Bool)

(assert (=> d!2032521 (= lt!2385932 e!3926733)))

(declare-fun c!1186577 () Bool)

(assert (=> d!2032521 (= c!1186577 (isEmpty!37424 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))))))

(assert (=> d!2032521 (validRegex!8091 (Star!16355 (reg!16684 (regOne!33222 r!7292))))))

(assert (=> d!2032521 (= (matchR!8538 (Star!16355 (reg!16684 (regOne!33222 r!7292))) (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))) lt!2385932)))

(declare-fun b!6478103 () Bool)

(declare-fun res!2659943 () Bool)

(assert (=> b!6478103 (=> res!2659943 e!3926729)))

(assert (=> b!6478103 (= res!2659943 e!3926730)))

(declare-fun res!2659936 () Bool)

(assert (=> b!6478103 (=> (not res!2659936) (not e!3926730))))

(assert (=> b!6478103 (= res!2659936 lt!2385932)))

(declare-fun b!6478104 () Bool)

(declare-fun e!3926731 () Bool)

(assert (=> b!6478104 (= e!3926729 e!3926731)))

(declare-fun res!2659942 () Bool)

(assert (=> b!6478104 (=> (not res!2659942) (not e!3926731))))

(assert (=> b!6478104 (= res!2659942 (not lt!2385932))))

(declare-fun b!6478105 () Bool)

(declare-fun res!2659939 () Bool)

(assert (=> b!6478105 (=> res!2659939 e!3926735)))

(assert (=> b!6478105 (= res!2659939 (not (isEmpty!37424 (tail!12274 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))))))))

(declare-fun b!6478106 () Bool)

(assert (=> b!6478106 (= e!3926733 (matchR!8538 (derivativeStep!5053 (Star!16355 (reg!16684 (regOne!33222 r!7292))) (head!13189 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)))) (tail!12274 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))))

(declare-fun bm!560604 () Bool)

(assert (=> bm!560604 (= call!560609 (isEmpty!37424 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692))))))

(declare-fun b!6478107 () Bool)

(assert (=> b!6478107 (= e!3926731 e!3926735)))

(declare-fun res!2659940 () Bool)

(assert (=> b!6478107 (=> res!2659940 e!3926735)))

(assert (=> b!6478107 (= res!2659940 call!560609)))

(declare-fun b!6478108 () Bool)

(assert (=> b!6478108 (= e!3926734 e!3926732)))

(declare-fun c!1186576 () Bool)

(assert (=> b!6478108 (= c!1186576 ((_ is EmptyLang!16355) (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6478109 () Bool)

(declare-fun res!2659937 () Bool)

(assert (=> b!6478109 (=> (not res!2659937) (not e!3926730))))

(assert (=> b!6478109 (= res!2659937 (isEmpty!37424 (tail!12274 (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))))

(declare-fun b!6478110 () Bool)

(assert (=> b!6478110 (= e!3926733 (nullable!6348 (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6478111 () Bool)

(assert (=> b!6478111 (= e!3926732 (not lt!2385932))))

(assert (= (and d!2032521 c!1186577) b!6478110))

(assert (= (and d!2032521 (not c!1186577)) b!6478106))

(assert (= (and d!2032521 c!1186575) b!6478100))

(assert (= (and d!2032521 (not c!1186575)) b!6478108))

(assert (= (and b!6478108 c!1186576) b!6478111))

(assert (= (and b!6478108 (not c!1186576)) b!6478099))

(assert (= (and b!6478099 (not res!2659938)) b!6478103))

(assert (= (and b!6478103 res!2659936) b!6478102))

(assert (= (and b!6478102 res!2659941) b!6478109))

(assert (= (and b!6478109 res!2659937) b!6478101))

(assert (= (and b!6478103 (not res!2659943)) b!6478104))

(assert (= (and b!6478104 res!2659942) b!6478107))

(assert (= (and b!6478107 (not res!2659940)) b!6478105))

(assert (= (and b!6478105 (not res!2659939)) b!6478098))

(assert (= (or b!6478100 b!6478107 b!6478102) bm!560604))

(assert (=> d!2032521 m!7264658))

(declare-fun m!7266506 () Bool)

(assert (=> d!2032521 m!7266506))

(assert (=> d!2032521 m!7264948))

(assert (=> b!6478106 m!7264658))

(declare-fun m!7266508 () Bool)

(assert (=> b!6478106 m!7266508))

(assert (=> b!6478106 m!7266508))

(declare-fun m!7266510 () Bool)

(assert (=> b!6478106 m!7266510))

(assert (=> b!6478106 m!7264658))

(declare-fun m!7266512 () Bool)

(assert (=> b!6478106 m!7266512))

(assert (=> b!6478106 m!7266510))

(assert (=> b!6478106 m!7266512))

(declare-fun m!7266514 () Bool)

(assert (=> b!6478106 m!7266514))

(assert (=> bm!560604 m!7264658))

(assert (=> bm!560604 m!7266506))

(assert (=> b!6478105 m!7264658))

(assert (=> b!6478105 m!7266512))

(assert (=> b!6478105 m!7266512))

(declare-fun m!7266516 () Bool)

(assert (=> b!6478105 m!7266516))

(assert (=> b!6478101 m!7264658))

(assert (=> b!6478101 m!7266508))

(assert (=> b!6478109 m!7264658))

(assert (=> b!6478109 m!7266512))

(assert (=> b!6478109 m!7266512))

(assert (=> b!6478109 m!7266516))

(assert (=> b!6478098 m!7264658))

(assert (=> b!6478098 m!7266508))

(declare-fun m!7266518 () Bool)

(assert (=> b!6478110 m!7266518))

(assert (=> d!2031883 d!2032521))

(assert (=> d!2031883 d!2032141))

(declare-fun d!2032523 () Bool)

(assert (=> d!2032523 (matchR!8538 (Star!16355 (reg!16684 (regOne!33222 r!7292))) (++!14423 (_1!36637 lt!2385692) (_2!36637 lt!2385692)))))

(assert (=> d!2032523 true))

(declare-fun _$125!330 () Unit!158751)

(assert (=> d!2032523 (= (choose!48003 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692) (_2!36637 lt!2385692)) _$125!330)))

(declare-fun bs!1642898 () Bool)

(assert (= bs!1642898 d!2032523))

(assert (=> bs!1642898 m!7264658))

(assert (=> bs!1642898 m!7264658))

(assert (=> bs!1642898 m!7264944))

(assert (=> d!2031883 d!2032523))

(declare-fun b!6478112 () Bool)

(declare-fun e!3926738 () Bool)

(declare-fun e!3926739 () Bool)

(assert (=> b!6478112 (= e!3926738 e!3926739)))

(declare-fun res!2659948 () Bool)

(assert (=> b!6478112 (= res!2659948 (not (nullable!6348 (reg!16684 (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))))

(assert (=> b!6478112 (=> (not res!2659948) (not e!3926739))))

(declare-fun b!6478113 () Bool)

(declare-fun e!3926740 () Bool)

(declare-fun call!560610 () Bool)

(assert (=> b!6478113 (= e!3926740 call!560610)))

(declare-fun b!6478114 () Bool)

(declare-fun e!3926736 () Bool)

(assert (=> b!6478114 (= e!3926736 e!3926738)))

(declare-fun c!1186579 () Bool)

(assert (=> b!6478114 (= c!1186579 ((_ is Star!16355) (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6478115 () Bool)

(declare-fun e!3926742 () Bool)

(assert (=> b!6478115 (= e!3926742 call!560610)))

(declare-fun b!6478116 () Bool)

(declare-fun e!3926741 () Bool)

(assert (=> b!6478116 (= e!3926741 e!3926740)))

(declare-fun res!2659944 () Bool)

(assert (=> b!6478116 (=> (not res!2659944) (not e!3926740))))

(declare-fun call!560612 () Bool)

(assert (=> b!6478116 (= res!2659944 call!560612)))

(declare-fun bm!560605 () Bool)

(declare-fun c!1186578 () Bool)

(assert (=> bm!560605 (= call!560612 (validRegex!8091 (ite c!1186578 (regOne!33223 (Star!16355 (reg!16684 (regOne!33222 r!7292)))) (regOne!33222 (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))))

(declare-fun bm!560606 () Bool)

(declare-fun call!560611 () Bool)

(assert (=> bm!560606 (= call!560610 call!560611)))

(declare-fun b!6478117 () Bool)

(assert (=> b!6478117 (= e!3926739 call!560611)))

(declare-fun bm!560607 () Bool)

(assert (=> bm!560607 (= call!560611 (validRegex!8091 (ite c!1186579 (reg!16684 (Star!16355 (reg!16684 (regOne!33222 r!7292)))) (ite c!1186578 (regTwo!33223 (Star!16355 (reg!16684 (regOne!33222 r!7292)))) (regTwo!33222 (Star!16355 (reg!16684 (regOne!33222 r!7292))))))))))

(declare-fun b!6478118 () Bool)

(declare-fun res!2659947 () Bool)

(assert (=> b!6478118 (=> (not res!2659947) (not e!3926742))))

(assert (=> b!6478118 (= res!2659947 call!560612)))

(declare-fun e!3926737 () Bool)

(assert (=> b!6478118 (= e!3926737 e!3926742)))

(declare-fun d!2032525 () Bool)

(declare-fun res!2659946 () Bool)

(assert (=> d!2032525 (=> res!2659946 e!3926736)))

(assert (=> d!2032525 (= res!2659946 ((_ is ElementMatch!16355) (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))

(assert (=> d!2032525 (= (validRegex!8091 (Star!16355 (reg!16684 (regOne!33222 r!7292)))) e!3926736)))

(declare-fun b!6478119 () Bool)

(assert (=> b!6478119 (= e!3926738 e!3926737)))

(assert (=> b!6478119 (= c!1186578 ((_ is Union!16355) (Star!16355 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6478120 () Bool)

(declare-fun res!2659945 () Bool)

(assert (=> b!6478120 (=> res!2659945 e!3926741)))

(assert (=> b!6478120 (= res!2659945 (not ((_ is Concat!25200) (Star!16355 (reg!16684 (regOne!33222 r!7292))))))))

(assert (=> b!6478120 (= e!3926737 e!3926741)))

(assert (= (and d!2032525 (not res!2659946)) b!6478114))

(assert (= (and b!6478114 c!1186579) b!6478112))

(assert (= (and b!6478114 (not c!1186579)) b!6478119))

(assert (= (and b!6478112 res!2659948) b!6478117))

(assert (= (and b!6478119 c!1186578) b!6478118))

(assert (= (and b!6478119 (not c!1186578)) b!6478120))

(assert (= (and b!6478118 res!2659947) b!6478115))

(assert (= (and b!6478120 (not res!2659945)) b!6478116))

(assert (= (and b!6478116 res!2659944) b!6478113))

(assert (= (or b!6478115 b!6478113) bm!560606))

(assert (= (or b!6478118 b!6478116) bm!560605))

(assert (= (or b!6478117 bm!560606) bm!560607))

(declare-fun m!7266520 () Bool)

(assert (=> b!6478112 m!7266520))

(declare-fun m!7266522 () Bool)

(assert (=> bm!560605 m!7266522))

(declare-fun m!7266524 () Bool)

(assert (=> bm!560607 m!7266524))

(assert (=> d!2031883 d!2032525))

(assert (=> b!6477260 d!2032281))

(assert (=> b!6477260 d!2032195))

(declare-fun d!2032527 () Bool)

(assert (=> d!2032527 (= (Exists!3425 (ite c!1186137 lambda!358032 lambda!358035)) (choose!48008 (ite c!1186137 lambda!358032 lambda!358035)))))

(declare-fun bs!1642899 () Bool)

(assert (= bs!1642899 d!2032527))

(declare-fun m!7266526 () Bool)

(assert (=> bs!1642899 m!7266526))

(assert (=> bm!560380 d!2032527))

(assert (=> b!6476453 d!2032231))

(assert (=> b!6476453 d!2032233))

(assert (=> b!6477110 d!2032275))

(assert (=> d!2031853 d!2032011))

(assert (=> d!2031853 d!2031871))

(declare-fun d!2032529 () Bool)

(assert (=> d!2032529 (= (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692)) (matchZipper!2367 lt!2385643 (_1!36637 lt!2385692)))))

(assert (=> d!2032529 true))

(declare-fun _$44!1658 () Unit!158751)

(assert (=> d!2032529 (= (choose!48000 lt!2385643 lt!2385642 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385692)) _$44!1658)))

(declare-fun bs!1642900 () Bool)

(assert (= bs!1642900 d!2032529))

(assert (=> bs!1642900 m!7264644))

(assert (=> bs!1642900 m!7264602))

(assert (=> d!2031853 d!2032529))

(assert (=> d!2031853 d!2032211))

(declare-fun d!2032531 () Bool)

(declare-fun e!3926744 () Bool)

(assert (=> d!2032531 e!3926744))

(declare-fun res!2659950 () Bool)

(assert (=> d!2032531 (=> (not res!2659950) (not e!3926744))))

(declare-fun lt!2385933 () List!65364)

(assert (=> d!2032531 (= res!2659950 (= (content!12410 lt!2385933) ((_ map or) (content!12410 (t!378988 (_1!36637 lt!2385692))) (content!12410 lt!2385693))))))

(declare-fun e!3926743 () List!65364)

(assert (=> d!2032531 (= lt!2385933 e!3926743)))

(declare-fun c!1186580 () Bool)

(assert (=> d!2032531 (= c!1186580 ((_ is Nil!65240) (t!378988 (_1!36637 lt!2385692))))))

(assert (=> d!2032531 (= (++!14423 (t!378988 (_1!36637 lt!2385692)) lt!2385693) lt!2385933)))

(declare-fun b!6478123 () Bool)

(declare-fun res!2659949 () Bool)

(assert (=> b!6478123 (=> (not res!2659949) (not e!3926744))))

(assert (=> b!6478123 (= res!2659949 (= (size!40407 lt!2385933) (+ (size!40407 (t!378988 (_1!36637 lt!2385692))) (size!40407 lt!2385693))))))

(declare-fun b!6478122 () Bool)

(assert (=> b!6478122 (= e!3926743 (Cons!65240 (h!71688 (t!378988 (_1!36637 lt!2385692))) (++!14423 (t!378988 (t!378988 (_1!36637 lt!2385692))) lt!2385693)))))

(declare-fun b!6478124 () Bool)

(assert (=> b!6478124 (= e!3926744 (or (not (= lt!2385693 Nil!65240)) (= lt!2385933 (t!378988 (_1!36637 lt!2385692)))))))

(declare-fun b!6478121 () Bool)

(assert (=> b!6478121 (= e!3926743 lt!2385693)))

(assert (= (and d!2032531 c!1186580) b!6478121))

(assert (= (and d!2032531 (not c!1186580)) b!6478122))

(assert (= (and d!2032531 res!2659950) b!6478123))

(assert (= (and b!6478123 res!2659949) b!6478124))

(declare-fun m!7266528 () Bool)

(assert (=> d!2032531 m!7266528))

(assert (=> d!2032531 m!7266120))

(assert (=> d!2032531 m!7265316))

(declare-fun m!7266530 () Bool)

(assert (=> b!6478123 m!7266530))

(assert (=> b!6478123 m!7266074))

(assert (=> b!6478123 m!7265322))

(declare-fun m!7266532 () Bool)

(assert (=> b!6478122 m!7266532))

(assert (=> b!6477059 d!2032531))

(assert (=> d!2031837 d!2031809))

(assert (=> d!2031837 d!2031817))

(declare-fun d!2032533 () Bool)

(assert (=> d!2032533 (= (matchR!8538 lt!2385680 s!2326) (matchRSpec!3456 lt!2385680 s!2326))))

(assert (=> d!2032533 true))

(declare-fun _$88!5165 () Unit!158751)

(assert (=> d!2032533 (= (choose!47999 lt!2385680 s!2326) _$88!5165)))

(declare-fun bs!1642901 () Bool)

(assert (= bs!1642901 d!2032533))

(assert (=> bs!1642901 m!7264514))

(assert (=> bs!1642901 m!7264516))

(assert (=> d!2031837 d!2032533))

(assert (=> d!2031837 d!2032341))

(declare-fun b!6478125 () Bool)

(declare-fun e!3926747 () Bool)

(declare-fun e!3926748 () Bool)

(assert (=> b!6478125 (= e!3926747 e!3926748)))

(declare-fun res!2659955 () Bool)

(assert (=> b!6478125 (= res!2659955 (not (nullable!6348 (reg!16684 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))))))))

(assert (=> b!6478125 (=> (not res!2659955) (not e!3926748))))

(declare-fun b!6478126 () Bool)

(declare-fun e!3926749 () Bool)

(declare-fun call!560613 () Bool)

(assert (=> b!6478126 (= e!3926749 call!560613)))

(declare-fun b!6478127 () Bool)

(declare-fun e!3926745 () Bool)

(assert (=> b!6478127 (= e!3926745 e!3926747)))

(declare-fun c!1186582 () Bool)

(assert (=> b!6478127 (= c!1186582 ((_ is Star!16355) (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))))))

(declare-fun b!6478128 () Bool)

(declare-fun e!3926751 () Bool)

(assert (=> b!6478128 (= e!3926751 call!560613)))

(declare-fun b!6478129 () Bool)

(declare-fun e!3926750 () Bool)

(assert (=> b!6478129 (= e!3926750 e!3926749)))

(declare-fun res!2659951 () Bool)

(assert (=> b!6478129 (=> (not res!2659951) (not e!3926749))))

(declare-fun call!560615 () Bool)

(assert (=> b!6478129 (= res!2659951 call!560615)))

(declare-fun c!1186581 () Bool)

(declare-fun bm!560608 () Bool)

(assert (=> bm!560608 (= call!560615 (validRegex!8091 (ite c!1186581 (regOne!33223 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))) (regOne!33222 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))))))))

(declare-fun bm!560609 () Bool)

(declare-fun call!560614 () Bool)

(assert (=> bm!560609 (= call!560613 call!560614)))

(declare-fun b!6478130 () Bool)

(assert (=> b!6478130 (= e!3926748 call!560614)))

(declare-fun bm!560610 () Bool)

(assert (=> bm!560610 (= call!560614 (validRegex!8091 (ite c!1186582 (reg!16684 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))) (ite c!1186581 (regTwo!33223 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))) (regTwo!33222 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292)))))))))

(declare-fun b!6478131 () Bool)

(declare-fun res!2659954 () Bool)

(assert (=> b!6478131 (=> (not res!2659954) (not e!3926751))))

(assert (=> b!6478131 (= res!2659954 call!560615)))

(declare-fun e!3926746 () Bool)

(assert (=> b!6478131 (= e!3926746 e!3926751)))

(declare-fun d!2032535 () Bool)

(declare-fun res!2659953 () Bool)

(assert (=> d!2032535 (=> res!2659953 e!3926745)))

(assert (=> d!2032535 (= res!2659953 ((_ is ElementMatch!16355) (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))))))

(assert (=> d!2032535 (= (validRegex!8091 (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))) e!3926745)))

(declare-fun b!6478132 () Bool)

(assert (=> b!6478132 (= e!3926747 e!3926746)))

(assert (=> b!6478132 (= c!1186581 ((_ is Union!16355) (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292))))))

(declare-fun b!6478133 () Bool)

(declare-fun res!2659952 () Bool)

(assert (=> b!6478133 (=> res!2659952 e!3926750)))

(assert (=> b!6478133 (= res!2659952 (not ((_ is Concat!25200) (ite c!1186339 (regOne!33223 r!7292) (regOne!33222 r!7292)))))))

(assert (=> b!6478133 (= e!3926746 e!3926750)))

(assert (= (and d!2032535 (not res!2659953)) b!6478127))

(assert (= (and b!6478127 c!1186582) b!6478125))

(assert (= (and b!6478127 (not c!1186582)) b!6478132))

(assert (= (and b!6478125 res!2659955) b!6478130))

(assert (= (and b!6478132 c!1186581) b!6478131))

(assert (= (and b!6478132 (not c!1186581)) b!6478133))

(assert (= (and b!6478131 res!2659954) b!6478128))

(assert (= (and b!6478133 (not res!2659952)) b!6478129))

(assert (= (and b!6478129 res!2659951) b!6478126))

(assert (= (or b!6478128 b!6478126) bm!560609))

(assert (= (or b!6478131 b!6478129) bm!560608))

(assert (= (or b!6478130 bm!560609) bm!560610))

(declare-fun m!7266534 () Bool)

(assert (=> b!6478125 m!7266534))

(declare-fun m!7266536 () Bool)

(assert (=> bm!560608 m!7266536))

(declare-fun m!7266538 () Bool)

(assert (=> bm!560610 m!7266538))

(assert (=> bm!560480 d!2032535))

(declare-fun d!2032537 () Bool)

(declare-fun c!1186585 () Bool)

(assert (=> d!2032537 (= c!1186585 ((_ is Nil!65242) lt!2385804))))

(declare-fun e!3926754 () (InoxSet Context!11478))

(assert (=> d!2032537 (= (content!12411 lt!2385804) e!3926754)))

(declare-fun b!6478138 () Bool)

(assert (=> b!6478138 (= e!3926754 ((as const (Array Context!11478 Bool)) false))))

(declare-fun b!6478139 () Bool)

(assert (=> b!6478139 (= e!3926754 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) (h!71690 lt!2385804) true) (content!12411 (t!378990 lt!2385804))))))

(assert (= (and d!2032537 c!1186585) b!6478138))

(assert (= (and d!2032537 (not c!1186585)) b!6478139))

(declare-fun m!7266540 () Bool)

(assert (=> b!6478139 m!7266540))

(declare-fun m!7266542 () Bool)

(assert (=> b!6478139 m!7266542))

(assert (=> b!6477024 d!2032537))

(assert (=> b!6477017 d!2031963))

(declare-fun call!560618 () List!65365)

(declare-fun c!1186586 () Bool)

(declare-fun bm!560611 () Bool)

(declare-fun c!1186588 () Bool)

(declare-fun c!1186587 () Bool)

(declare-fun call!560616 () (InoxSet Context!11478))

(assert (=> bm!560611 (= call!560616 (derivationStepZipperDown!1603 (ite c!1186588 (regOne!33223 (h!71689 (exprs!6239 lt!2385662))) (ite c!1186587 (regTwo!33222 (h!71689 (exprs!6239 lt!2385662))) (ite c!1186586 (regOne!33222 (h!71689 (exprs!6239 lt!2385662))) (reg!16684 (h!71689 (exprs!6239 lt!2385662)))))) (ite (or c!1186588 c!1186587) (Context!11479 (t!378989 (exprs!6239 lt!2385662))) (Context!11479 call!560618)) (h!71688 s!2326)))))

(declare-fun b!6478140 () Bool)

(declare-fun e!3926759 () Bool)

(assert (=> b!6478140 (= c!1186587 e!3926759)))

(declare-fun res!2659956 () Bool)

(assert (=> b!6478140 (=> (not res!2659956) (not e!3926759))))

(assert (=> b!6478140 (= res!2659956 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385662))))))

(declare-fun e!3926757 () (InoxSet Context!11478))

(declare-fun e!3926756 () (InoxSet Context!11478))

(assert (=> b!6478140 (= e!3926757 e!3926756)))

(declare-fun b!6478141 () Bool)

(declare-fun c!1186590 () Bool)

(assert (=> b!6478141 (= c!1186590 ((_ is Star!16355) (h!71689 (exprs!6239 lt!2385662))))))

(declare-fun e!3926760 () (InoxSet Context!11478))

(declare-fun e!3926758 () (InoxSet Context!11478))

(assert (=> b!6478141 (= e!3926760 e!3926758)))

(declare-fun d!2032539 () Bool)

(declare-fun c!1186589 () Bool)

(assert (=> d!2032539 (= c!1186589 (and ((_ is ElementMatch!16355) (h!71689 (exprs!6239 lt!2385662))) (= (c!1186089 (h!71689 (exprs!6239 lt!2385662))) (h!71688 s!2326))))))

(declare-fun e!3926755 () (InoxSet Context!11478))

(assert (=> d!2032539 (= (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385662)) (Context!11479 (t!378989 (exprs!6239 lt!2385662))) (h!71688 s!2326)) e!3926755)))

(declare-fun bm!560612 () Bool)

(declare-fun call!560621 () List!65365)

(assert (=> bm!560612 (= call!560618 call!560621)))

(declare-fun b!6478142 () Bool)

(assert (=> b!6478142 (= e!3926759 (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 lt!2385662)))))))

(declare-fun b!6478143 () Bool)

(assert (=> b!6478143 (= e!3926758 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560613 () Bool)

(declare-fun call!560619 () (InoxSet Context!11478))

(declare-fun call!560620 () (InoxSet Context!11478))

(assert (=> bm!560613 (= call!560619 call!560620)))

(declare-fun b!6478144 () Bool)

(assert (=> b!6478144 (= e!3926758 call!560619)))

(declare-fun b!6478145 () Bool)

(declare-fun call!560617 () (InoxSet Context!11478))

(assert (=> b!6478145 (= e!3926757 ((_ map or) call!560616 call!560617))))

(declare-fun b!6478146 () Bool)

(assert (=> b!6478146 (= e!3926755 (store ((as const (Array Context!11478 Bool)) false) (Context!11479 (t!378989 (exprs!6239 lt!2385662))) true))))

(declare-fun b!6478147 () Bool)

(assert (=> b!6478147 (= e!3926755 e!3926757)))

(assert (=> b!6478147 (= c!1186588 ((_ is Union!16355) (h!71689 (exprs!6239 lt!2385662))))))

(declare-fun bm!560614 () Bool)

(assert (=> bm!560614 (= call!560621 ($colon$colon!2210 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385662)))) (ite (or c!1186587 c!1186586) (regTwo!33222 (h!71689 (exprs!6239 lt!2385662))) (h!71689 (exprs!6239 lt!2385662)))))))

(declare-fun b!6478148 () Bool)

(assert (=> b!6478148 (= e!3926756 ((_ map or) call!560617 call!560620))))

(declare-fun bm!560615 () Bool)

(assert (=> bm!560615 (= call!560620 call!560616)))

(declare-fun bm!560616 () Bool)

(assert (=> bm!560616 (= call!560617 (derivationStepZipperDown!1603 (ite c!1186588 (regTwo!33223 (h!71689 (exprs!6239 lt!2385662))) (regOne!33222 (h!71689 (exprs!6239 lt!2385662)))) (ite c!1186588 (Context!11479 (t!378989 (exprs!6239 lt!2385662))) (Context!11479 call!560621)) (h!71688 s!2326)))))

(declare-fun b!6478149 () Bool)

(assert (=> b!6478149 (= e!3926760 call!560619)))

(declare-fun b!6478150 () Bool)

(assert (=> b!6478150 (= e!3926756 e!3926760)))

(assert (=> b!6478150 (= c!1186586 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385662))))))

(assert (= (and d!2032539 c!1186589) b!6478146))

(assert (= (and d!2032539 (not c!1186589)) b!6478147))

(assert (= (and b!6478147 c!1186588) b!6478145))

(assert (= (and b!6478147 (not c!1186588)) b!6478140))

(assert (= (and b!6478140 res!2659956) b!6478142))

(assert (= (and b!6478140 c!1186587) b!6478148))

(assert (= (and b!6478140 (not c!1186587)) b!6478150))

(assert (= (and b!6478150 c!1186586) b!6478149))

(assert (= (and b!6478150 (not c!1186586)) b!6478141))

(assert (= (and b!6478141 c!1186590) b!6478144))

(assert (= (and b!6478141 (not c!1186590)) b!6478143))

(assert (= (or b!6478149 b!6478144) bm!560612))

(assert (= (or b!6478149 b!6478144) bm!560613))

(assert (= (or b!6478148 bm!560612) bm!560614))

(assert (= (or b!6478148 bm!560613) bm!560615))

(assert (= (or b!6478145 b!6478148) bm!560616))

(assert (= (or b!6478145 bm!560615) bm!560611))

(declare-fun m!7266544 () Bool)

(assert (=> bm!560616 m!7266544))

(declare-fun m!7266546 () Bool)

(assert (=> bm!560611 m!7266546))

(declare-fun m!7266548 () Bool)

(assert (=> b!6478146 m!7266548))

(declare-fun m!7266550 () Bool)

(assert (=> b!6478142 m!7266550))

(declare-fun m!7266552 () Bool)

(assert (=> bm!560614 m!7266552))

(assert (=> bm!560468 d!2032539))

(assert (=> b!6477051 d!2032231))

(assert (=> b!6477051 d!2032233))

(declare-fun bs!1642902 () Bool)

(declare-fun b!6478157 () Bool)

(assert (= bs!1642902 (and b!6478157 d!2032127)))

(declare-fun lambda!358148 () Int)

(assert (=> bs!1642902 (= (and (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33223 lt!2385664) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358148 lambda!358115))))

(declare-fun bs!1642903 () Bool)

(assert (= bs!1642903 (and b!6478157 d!2032245)))

(assert (=> bs!1642903 (not (= lambda!358148 lambda!358128))))

(declare-fun bs!1642904 () Bool)

(assert (= bs!1642904 (and b!6478157 d!2032125)))

(assert (=> bs!1642904 (not (= lambda!358148 lambda!358108))))

(declare-fun bs!1642905 () Bool)

(assert (= bs!1642905 (and b!6478157 b!6477031)))

(assert (=> bs!1642905 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 r!7292)) (= (regTwo!33223 lt!2385664) r!7292)) (= lambda!358148 lambda!358073))))

(declare-fun bs!1642906 () Bool)

(assert (= bs!1642906 (and b!6478157 b!6476331)))

(assert (=> bs!1642906 (not (= lambda!358148 lambda!358018))))

(declare-fun bs!1642907 () Bool)

(assert (= bs!1642907 (and b!6478157 d!2032155)))

(assert (=> bs!1642907 (not (= lambda!358148 lambda!358116))))

(declare-fun bs!1642908 () Bool)

(assert (= bs!1642908 (and b!6478157 b!6477635)))

(assert (=> bs!1642908 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 (regTwo!33223 r!7292))) (= (regTwo!33223 lt!2385664) (regTwo!33223 r!7292))) (= lambda!358148 lambda!358129))))

(declare-fun bs!1642909 () Bool)

(assert (= bs!1642909 (and b!6478157 b!6477637)))

(assert (=> bs!1642909 (not (= lambda!358148 lambda!358130))))

(declare-fun bs!1642910 () Bool)

(assert (= bs!1642910 (and b!6478157 b!6477548)))

(assert (=> bs!1642910 (not (= lambda!358148 lambda!358118))))

(declare-fun bs!1642911 () Bool)

(assert (= bs!1642911 (and b!6478157 b!6476300)))

(assert (=> bs!1642911 (not (= lambda!358148 lambda!358016))))

(assert (=> bs!1642903 (not (= lambda!358148 lambda!358127))))

(declare-fun bs!1642912 () Bool)

(assert (= bs!1642912 (and b!6478157 b!6477546)))

(assert (=> bs!1642912 (= (and (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 (regOne!33223 lt!2385664))) (= (regTwo!33223 lt!2385664) (regOne!33223 lt!2385664))) (= lambda!358148 lambda!358117))))

(declare-fun bs!1642913 () Bool)

(assert (= bs!1642913 (and b!6478157 b!6476519)))

(assert (=> bs!1642913 (not (= lambda!358148 lambda!358035))))

(declare-fun bs!1642914 () Bool)

(assert (= bs!1642914 (and b!6478157 b!6477297)))

(assert (=> bs!1642914 (= (and (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 lt!2385664)) (= (regTwo!33223 lt!2385664) lt!2385664)) (= lambda!358148 lambda!358103))))

(assert (=> bs!1642906 (not (= lambda!358148 lambda!358020))))

(declare-fun bs!1642915 () Bool)

(assert (= bs!1642915 (and b!6478157 d!2032041)))

(assert (=> bs!1642915 (not (= lambda!358148 lambda!358083))))

(assert (=> bs!1642911 (not (= lambda!358148 lambda!358017))))

(declare-fun bs!1642916 () Bool)

(assert (= bs!1642916 (and b!6478157 d!2031923)))

(assert (=> bs!1642916 (not (= lambda!358148 lambda!358059))))

(declare-fun bs!1642917 () Bool)

(assert (= bs!1642917 (and b!6478157 d!2032379)))

(assert (=> bs!1642917 (not (= lambda!358148 lambda!358139))))

(assert (=> bs!1642904 (not (= lambda!358148 lambda!358107))))

(declare-fun bs!1642918 () Bool)

(assert (= bs!1642918 (and b!6478157 b!6476517)))

(assert (=> bs!1642918 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 lt!2385680)) (= (regTwo!33223 lt!2385664) lt!2385680)) (= lambda!358148 lambda!358032))))

(assert (=> bs!1642916 (not (= lambda!358148 lambda!358062))))

(declare-fun bs!1642919 () Bool)

(assert (= bs!1642919 (and b!6478157 b!6476306)))

(assert (=> bs!1642919 (not (= lambda!358148 lambda!358014))))

(declare-fun bs!1642920 () Bool)

(assert (= bs!1642920 (and b!6478157 d!2032037)))

(assert (=> bs!1642920 (not (= lambda!358148 lambda!358082))))

(declare-fun bs!1642921 () Bool)

(assert (= bs!1642921 (and b!6478157 b!6477299)))

(assert (=> bs!1642921 (not (= lambda!358148 lambda!358105))))

(declare-fun bs!1642922 () Bool)

(assert (= bs!1642922 (and b!6478157 b!6477033)))

(assert (=> bs!1642922 (not (= lambda!358148 lambda!358075))))

(assert (=> bs!1642902 (not (= lambda!358148 lambda!358114))))

(declare-fun bs!1642923 () Bool)

(assert (= bs!1642923 (and b!6478157 b!6477792)))

(assert (=> bs!1642923 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 (regTwo!33223 lt!2385680))) (= (regTwo!33223 lt!2385664) (regTwo!33223 lt!2385680))) (= lambda!358148 lambda!358133))))

(assert (=> bs!1642919 (not (= lambda!358148 lambda!358013))))

(declare-fun bs!1642924 () Bool)

(assert (= bs!1642924 (and b!6478157 d!2031905)))

(assert (=> bs!1642924 (not (= lambda!358148 lambda!358052))))

(assert (=> bs!1642906 (= (and (= (reg!16684 (regTwo!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33223 lt!2385664) lt!2385664)) (= lambda!358148 lambda!358019))))

(declare-fun bs!1642925 () Bool)

(assert (= bs!1642925 (and b!6478157 b!6477794)))

(assert (=> bs!1642925 (not (= lambda!358148 lambda!358134))))

(assert (=> bs!1642915 (not (= lambda!358148 lambda!358084))))

(declare-fun bs!1642926 () Bool)

(assert (= bs!1642926 (and b!6478157 d!2032237)))

(assert (=> bs!1642926 (not (= lambda!358148 lambda!358122))))

(assert (=> b!6478157 true))

(assert (=> b!6478157 true))

(declare-fun bs!1642927 () Bool)

(declare-fun b!6478159 () Bool)

(assert (= bs!1642927 (and b!6478159 d!2032127)))

(declare-fun lambda!358149 () Int)

(assert (=> bs!1642927 (not (= lambda!358149 lambda!358115))))

(declare-fun bs!1642928 () Bool)

(assert (= bs!1642928 (and b!6478159 d!2032245)))

(assert (=> bs!1642928 (= (and (= (regOne!33222 (regTwo!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385664)) lt!2385664)) (= lambda!358149 lambda!358128))))

(declare-fun bs!1642929 () Bool)

(assert (= bs!1642929 (and b!6478159 d!2032125)))

(assert (=> bs!1642929 (= (and (= (regOne!33222 (regTwo!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385664)) lt!2385664)) (= lambda!358149 lambda!358108))))

(declare-fun bs!1642930 () Bool)

(assert (= bs!1642930 (and b!6478159 b!6477031)))

(assert (=> bs!1642930 (not (= lambda!358149 lambda!358073))))

(declare-fun bs!1642931 () Bool)

(assert (= bs!1642931 (and b!6478159 b!6476331)))

(assert (=> bs!1642931 (not (= lambda!358149 lambda!358018))))

(declare-fun bs!1642932 () Bool)

(assert (= bs!1642932 (and b!6478159 d!2032155)))

(assert (=> bs!1642932 (not (= lambda!358149 lambda!358116))))

(declare-fun bs!1642933 () Bool)

(assert (= bs!1642933 (and b!6478159 b!6477635)))

(assert (=> bs!1642933 (not (= lambda!358149 lambda!358129))))

(declare-fun bs!1642934 () Bool)

(assert (= bs!1642934 (and b!6478159 b!6477637)))

(assert (=> bs!1642934 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 (regTwo!33223 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 (regTwo!33223 r!7292)))) (= lambda!358149 lambda!358130))))

(declare-fun bs!1642935 () Bool)

(assert (= bs!1642935 (and b!6478159 b!6478157)))

(assert (=> bs!1642935 (not (= lambda!358149 lambda!358148))))

(declare-fun bs!1642936 () Bool)

(assert (= bs!1642936 (and b!6478159 b!6477548)))

(assert (=> bs!1642936 (= (and (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 (regOne!33223 lt!2385664))) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358149 lambda!358118))))

(declare-fun bs!1642937 () Bool)

(assert (= bs!1642937 (and b!6478159 b!6476300)))

(assert (=> bs!1642937 (not (= lambda!358149 lambda!358016))))

(assert (=> bs!1642928 (not (= lambda!358149 lambda!358127))))

(declare-fun bs!1642938 () Bool)

(assert (= bs!1642938 (and b!6478159 b!6477546)))

(assert (=> bs!1642938 (not (= lambda!358149 lambda!358117))))

(declare-fun bs!1642939 () Bool)

(assert (= bs!1642939 (and b!6478159 b!6476519)))

(assert (=> bs!1642939 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 lt!2385680)) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 lt!2385680))) (= lambda!358149 lambda!358035))))

(declare-fun bs!1642940 () Bool)

(assert (= bs!1642940 (and b!6478159 b!6477297)))

(assert (=> bs!1642940 (not (= lambda!358149 lambda!358103))))

(assert (=> bs!1642931 (= (and (= (regOne!33222 (regTwo!33223 lt!2385664)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regTwo!33223 lt!2385664)) lt!2385664)) (= lambda!358149 lambda!358020))))

(declare-fun bs!1642941 () Bool)

(assert (= bs!1642941 (and b!6478159 d!2032041)))

(assert (=> bs!1642941 (not (= lambda!358149 lambda!358083))))

(assert (=> bs!1642937 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) lt!2385664) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358149 lambda!358017))))

(declare-fun bs!1642942 () Bool)

(assert (= bs!1642942 (and b!6478159 d!2031923)))

(assert (=> bs!1642942 (not (= lambda!358149 lambda!358059))))

(declare-fun bs!1642943 () Bool)

(assert (= bs!1642943 (and b!6478159 d!2032379)))

(assert (=> bs!1642943 (not (= lambda!358149 lambda!358139))))

(assert (=> bs!1642929 (not (= lambda!358149 lambda!358107))))

(declare-fun bs!1642944 () Bool)

(assert (= bs!1642944 (and b!6478159 b!6476517)))

(assert (=> bs!1642944 (not (= lambda!358149 lambda!358032))))

(assert (=> bs!1642942 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) lt!2385664) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358149 lambda!358062))))

(declare-fun bs!1642945 () Bool)

(assert (= bs!1642945 (and b!6478159 b!6476306)))

(assert (=> bs!1642945 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358149 lambda!358014))))

(declare-fun bs!1642946 () Bool)

(assert (= bs!1642946 (and b!6478159 d!2032037)))

(assert (=> bs!1642946 (not (= lambda!358149 lambda!358082))))

(declare-fun bs!1642947 () Bool)

(assert (= bs!1642947 (and b!6478159 b!6477299)))

(assert (=> bs!1642947 (= (and (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 lt!2385664)) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 lt!2385664))) (= lambda!358149 lambda!358105))))

(declare-fun bs!1642948 () Bool)

(assert (= bs!1642948 (and b!6478159 b!6477033)))

(assert (=> bs!1642948 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358149 lambda!358075))))

(assert (=> bs!1642927 (not (= lambda!358149 lambda!358114))))

(declare-fun bs!1642949 () Bool)

(assert (= bs!1642949 (and b!6478159 b!6477792)))

(assert (=> bs!1642949 (not (= lambda!358149 lambda!358133))))

(assert (=> bs!1642945 (not (= lambda!358149 lambda!358013))))

(declare-fun bs!1642950 () Bool)

(assert (= bs!1642950 (and b!6478159 d!2031905)))

(assert (=> bs!1642950 (not (= lambda!358149 lambda!358052))))

(assert (=> bs!1642931 (not (= lambda!358149 lambda!358019))))

(declare-fun bs!1642951 () Bool)

(assert (= bs!1642951 (and b!6478159 b!6477794)))

(assert (=> bs!1642951 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 (regTwo!33223 lt!2385680))) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 (regTwo!33223 lt!2385680)))) (= lambda!358149 lambda!358134))))

(assert (=> bs!1642941 (= (and (= (_1!36637 lt!2385678) s!2326) (= (regOne!33222 (regTwo!33223 lt!2385664)) (regOne!33222 r!7292)) (= (regTwo!33222 (regTwo!33223 lt!2385664)) (regTwo!33222 r!7292))) (= lambda!358149 lambda!358084))))

(declare-fun bs!1642952 () Bool)

(assert (= bs!1642952 (and b!6478159 d!2032237)))

(assert (=> bs!1642952 (not (= lambda!358149 lambda!358122))))

(assert (=> b!6478159 true))

(assert (=> b!6478159 true))

(declare-fun b!6478151 () Bool)

(declare-fun res!2659958 () Bool)

(declare-fun e!3926767 () Bool)

(assert (=> b!6478151 (=> res!2659958 e!3926767)))

(declare-fun call!560623 () Bool)

(assert (=> b!6478151 (= res!2659958 call!560623)))

(declare-fun e!3926761 () Bool)

(assert (=> b!6478151 (= e!3926761 e!3926767)))

(declare-fun b!6478152 () Bool)

(declare-fun e!3926764 () Bool)

(assert (=> b!6478152 (= e!3926764 e!3926761)))

(declare-fun c!1186594 () Bool)

(assert (=> b!6478152 (= c!1186594 ((_ is Star!16355) (regTwo!33223 lt!2385664)))))

(declare-fun b!6478153 () Bool)

(declare-fun c!1186593 () Bool)

(assert (=> b!6478153 (= c!1186593 ((_ is Union!16355) (regTwo!33223 lt!2385664)))))

(declare-fun e!3926765 () Bool)

(assert (=> b!6478153 (= e!3926765 e!3926764)))

(declare-fun b!6478154 () Bool)

(declare-fun c!1186592 () Bool)

(assert (=> b!6478154 (= c!1186592 ((_ is ElementMatch!16355) (regTwo!33223 lt!2385664)))))

(declare-fun e!3926762 () Bool)

(assert (=> b!6478154 (= e!3926762 e!3926765)))

(declare-fun b!6478155 () Bool)

(declare-fun e!3926763 () Bool)

(assert (=> b!6478155 (= e!3926763 call!560623)))

(declare-fun b!6478156 () Bool)

(assert (=> b!6478156 (= e!3926763 e!3926762)))

(declare-fun res!2659957 () Bool)

(assert (=> b!6478156 (= res!2659957 (not ((_ is EmptyLang!16355) (regTwo!33223 lt!2385664))))))

(assert (=> b!6478156 (=> (not res!2659957) (not e!3926762))))

(declare-fun d!2032541 () Bool)

(declare-fun c!1186591 () Bool)

(assert (=> d!2032541 (= c!1186591 ((_ is EmptyExpr!16355) (regTwo!33223 lt!2385664)))))

(assert (=> d!2032541 (= (matchRSpec!3456 (regTwo!33223 lt!2385664) (_1!36637 lt!2385678)) e!3926763)))

(declare-fun call!560622 () Bool)

(assert (=> b!6478157 (= e!3926767 call!560622)))

(declare-fun bm!560617 () Bool)

(assert (=> bm!560617 (= call!560623 (isEmpty!37424 (_1!36637 lt!2385678)))))

(declare-fun b!6478158 () Bool)

(declare-fun e!3926766 () Bool)

(assert (=> b!6478158 (= e!3926764 e!3926766)))

(declare-fun res!2659959 () Bool)

(assert (=> b!6478158 (= res!2659959 (matchRSpec!3456 (regOne!33223 (regTwo!33223 lt!2385664)) (_1!36637 lt!2385678)))))

(assert (=> b!6478158 (=> res!2659959 e!3926766)))

(assert (=> b!6478159 (= e!3926761 call!560622)))

(declare-fun bm!560618 () Bool)

(assert (=> bm!560618 (= call!560622 (Exists!3425 (ite c!1186594 lambda!358148 lambda!358149)))))

(declare-fun b!6478160 () Bool)

(assert (=> b!6478160 (= e!3926765 (= (_1!36637 lt!2385678) (Cons!65240 (c!1186089 (regTwo!33223 lt!2385664)) Nil!65240)))))

(declare-fun b!6478161 () Bool)

(assert (=> b!6478161 (= e!3926766 (matchRSpec!3456 (regTwo!33223 (regTwo!33223 lt!2385664)) (_1!36637 lt!2385678)))))

(assert (= (and d!2032541 c!1186591) b!6478155))

(assert (= (and d!2032541 (not c!1186591)) b!6478156))

(assert (= (and b!6478156 res!2659957) b!6478154))

(assert (= (and b!6478154 c!1186592) b!6478160))

(assert (= (and b!6478154 (not c!1186592)) b!6478153))

(assert (= (and b!6478153 c!1186593) b!6478158))

(assert (= (and b!6478153 (not c!1186593)) b!6478152))

(assert (= (and b!6478158 (not res!2659959)) b!6478161))

(assert (= (and b!6478152 c!1186594) b!6478151))

(assert (= (and b!6478152 (not c!1186594)) b!6478159))

(assert (= (and b!6478151 (not res!2659958)) b!6478157))

(assert (= (or b!6478157 b!6478159) bm!560618))

(assert (= (or b!6478155 b!6478151) bm!560617))

(assert (=> bm!560617 m!7264590))

(declare-fun m!7266554 () Bool)

(assert (=> b!6478158 m!7266554))

(declare-fun m!7266556 () Bool)

(assert (=> bm!560618 m!7266556))

(declare-fun m!7266558 () Bool)

(assert (=> b!6478161 m!7266558))

(assert (=> b!6477301 d!2032541))

(assert (=> bm!560467 d!2032327))

(declare-fun d!2032543 () Bool)

(declare-fun e!3926769 () Bool)

(assert (=> d!2032543 e!3926769))

(declare-fun res!2659961 () Bool)

(assert (=> d!2032543 (=> (not res!2659961) (not e!3926769))))

(declare-fun lt!2385934 () List!65364)

(assert (=> d!2032543 (= res!2659961 (= (content!12410 lt!2385934) ((_ map or) (content!12410 (_1!36637 (get!22616 lt!2385779))) (content!12410 (_2!36637 (get!22616 lt!2385779))))))))

(declare-fun e!3926768 () List!65364)

(assert (=> d!2032543 (= lt!2385934 e!3926768)))

(declare-fun c!1186595 () Bool)

(assert (=> d!2032543 (= c!1186595 ((_ is Nil!65240) (_1!36637 (get!22616 lt!2385779))))))

(assert (=> d!2032543 (= (++!14423 (_1!36637 (get!22616 lt!2385779)) (_2!36637 (get!22616 lt!2385779))) lt!2385934)))

(declare-fun b!6478164 () Bool)

(declare-fun res!2659960 () Bool)

(assert (=> b!6478164 (=> (not res!2659960) (not e!3926769))))

(assert (=> b!6478164 (= res!2659960 (= (size!40407 lt!2385934) (+ (size!40407 (_1!36637 (get!22616 lt!2385779))) (size!40407 (_2!36637 (get!22616 lt!2385779))))))))

(declare-fun b!6478163 () Bool)

(assert (=> b!6478163 (= e!3926768 (Cons!65240 (h!71688 (_1!36637 (get!22616 lt!2385779))) (++!14423 (t!378988 (_1!36637 (get!22616 lt!2385779))) (_2!36637 (get!22616 lt!2385779)))))))

(declare-fun b!6478165 () Bool)

(assert (=> b!6478165 (= e!3926769 (or (not (= (_2!36637 (get!22616 lt!2385779)) Nil!65240)) (= lt!2385934 (_1!36637 (get!22616 lt!2385779)))))))

(declare-fun b!6478162 () Bool)

(assert (=> b!6478162 (= e!3926768 (_2!36637 (get!22616 lt!2385779)))))

(assert (= (and d!2032543 c!1186595) b!6478162))

(assert (= (and d!2032543 (not c!1186595)) b!6478163))

(assert (= (and d!2032543 res!2659961) b!6478164))

(assert (= (and b!6478164 res!2659960) b!6478165))

(declare-fun m!7266560 () Bool)

(assert (=> d!2032543 m!7266560))

(declare-fun m!7266562 () Bool)

(assert (=> d!2032543 m!7266562))

(declare-fun m!7266564 () Bool)

(assert (=> d!2032543 m!7266564))

(declare-fun m!7266566 () Bool)

(assert (=> b!6478164 m!7266566))

(declare-fun m!7266568 () Bool)

(assert (=> b!6478164 m!7266568))

(declare-fun m!7266570 () Bool)

(assert (=> b!6478164 m!7266570))

(declare-fun m!7266572 () Bool)

(assert (=> b!6478163 m!7266572))

(assert (=> b!6476904 d!2032543))

(assert (=> b!6476904 d!2032285))

(declare-fun bs!1642953 () Bool)

(declare-fun d!2032545 () Bool)

(assert (= bs!1642953 (and d!2032545 d!2032375)))

(declare-fun lambda!358150 () Int)

(assert (=> bs!1642953 (= lambda!358150 lambda!358138)))

(declare-fun bs!1642954 () Bool)

(assert (= bs!1642954 (and d!2032545 d!2032395)))

(assert (=> bs!1642954 (= lambda!358150 lambda!358140)))

(declare-fun bs!1642955 () Bool)

(assert (= bs!1642955 (and d!2032545 d!2032453)))

(assert (=> bs!1642955 (= lambda!358150 lambda!358142)))

(declare-fun bs!1642956 () Bool)

(assert (= bs!1642956 (and d!2032545 d!2032505)))

(assert (=> bs!1642956 (= lambda!358150 lambda!358145)))

(assert (=> d!2032545 (= (nullableZipper!2114 lt!2385661) (exists!2614 lt!2385661 lambda!358150))))

(declare-fun bs!1642957 () Bool)

(assert (= bs!1642957 d!2032545))

(declare-fun m!7266574 () Bool)

(assert (=> bs!1642957 m!7266574))

(assert (=> b!6477095 d!2032545))

(assert (=> b!6476445 d!2032309))

(declare-fun d!2032547 () Bool)

(assert (=> d!2032547 (= (isEmpty!37424 (tail!12274 lt!2385693)) ((_ is Nil!65240) (tail!12274 lt!2385693)))))

(assert (=> b!6476545 d!2032547))

(assert (=> b!6476545 d!2032337))

(declare-fun bs!1642958 () Bool)

(declare-fun d!2032549 () Bool)

(assert (= bs!1642958 (and d!2032549 d!2032517)))

(declare-fun lambda!358151 () Int)

(assert (=> bs!1642958 (= lambda!358151 lambda!358147)))

(declare-fun bs!1642959 () Bool)

(assert (= bs!1642959 (and d!2032549 d!2032083)))

(assert (=> bs!1642959 (= lambda!358151 lambda!358095)))

(declare-fun bs!1642960 () Bool)

(assert (= bs!1642960 (and d!2032549 d!2031879)))

(assert (=> bs!1642960 (= lambda!358151 lambda!358039)))

(declare-fun bs!1642961 () Bool)

(assert (= bs!1642961 (and d!2032549 d!2032223)))

(assert (=> bs!1642961 (= lambda!358151 lambda!358119)))

(declare-fun bs!1642962 () Bool)

(assert (= bs!1642962 (and d!2032549 d!2031899)))

(assert (=> bs!1642962 (= lambda!358151 lambda!358049)))

(declare-fun bs!1642963 () Bool)

(assert (= bs!1642963 (and d!2032549 d!2032101)))

(assert (=> bs!1642963 (= lambda!358151 lambda!358101)))

(declare-fun bs!1642964 () Bool)

(assert (= bs!1642964 (and d!2032549 d!2032515)))

(assert (=> bs!1642964 (= lambda!358151 lambda!358146)))

(declare-fun bs!1642965 () Bool)

(assert (= bs!1642965 (and d!2032549 d!2032085)))

(assert (=> bs!1642965 (= lambda!358151 lambda!358099)))

(declare-fun bs!1642966 () Bool)

(assert (= bs!1642966 (and d!2032549 d!2031887)))

(assert (=> bs!1642966 (= lambda!358151 lambda!358048)))

(declare-fun bs!1642967 () Bool)

(assert (= bs!1642967 (and d!2032549 d!2032493)))

(assert (=> bs!1642967 (= lambda!358151 lambda!358144)))

(assert (=> d!2032549 (= (inv!84134 setElem!44119) (forall!15540 (exprs!6239 setElem!44119) lambda!358151))))

(declare-fun bs!1642968 () Bool)

(assert (= bs!1642968 d!2032549))

(declare-fun m!7266576 () Bool)

(assert (=> bs!1642968 m!7266576))

(assert (=> setNonEmpty!44119 d!2032549))

(assert (=> d!2032097 d!2031901))

(assert (=> d!2032097 d!2032177))

(declare-fun bs!1642969 () Bool)

(declare-fun b!6478172 () Bool)

(assert (= bs!1642969 (and b!6478172 d!2032127)))

(declare-fun lambda!358152 () Int)

(assert (=> bs!1642969 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regOne!33223 r!7292) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358152 lambda!358115))))

(declare-fun bs!1642970 () Bool)

(assert (= bs!1642970 (and b!6478172 d!2032245)))

(assert (=> bs!1642970 (not (= lambda!358152 lambda!358128))))

(declare-fun bs!1642971 () Bool)

(assert (= bs!1642971 (and b!6478172 d!2032125)))

(assert (=> bs!1642971 (not (= lambda!358152 lambda!358108))))

(declare-fun bs!1642972 () Bool)

(assert (= bs!1642972 (and b!6478172 b!6477031)))

(assert (=> bs!1642972 (= (and (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 r!7292)) (= (regOne!33223 r!7292) r!7292)) (= lambda!358152 lambda!358073))))

(declare-fun bs!1642973 () Bool)

(assert (= bs!1642973 (and b!6478172 b!6476331)))

(assert (=> bs!1642973 (not (= lambda!358152 lambda!358018))))

(declare-fun bs!1642974 () Bool)

(assert (= bs!1642974 (and b!6478172 d!2032155)))

(assert (=> bs!1642974 (not (= lambda!358152 lambda!358116))))

(declare-fun bs!1642975 () Bool)

(assert (= bs!1642975 (and b!6478172 b!6477635)))

(assert (=> bs!1642975 (= (and (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 (regTwo!33223 r!7292))) (= (regOne!33223 r!7292) (regTwo!33223 r!7292))) (= lambda!358152 lambda!358129))))

(declare-fun bs!1642976 () Bool)

(assert (= bs!1642976 (and b!6478172 b!6477637)))

(assert (=> bs!1642976 (not (= lambda!358152 lambda!358130))))

(declare-fun bs!1642977 () Bool)

(assert (= bs!1642977 (and b!6478172 b!6478157)))

(assert (=> bs!1642977 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 (regTwo!33223 lt!2385664))) (= (regOne!33223 r!7292) (regTwo!33223 lt!2385664))) (= lambda!358152 lambda!358148))))

(declare-fun bs!1642978 () Bool)

(assert (= bs!1642978 (and b!6478172 b!6477548)))

(assert (=> bs!1642978 (not (= lambda!358152 lambda!358118))))

(declare-fun bs!1642979 () Bool)

(assert (= bs!1642979 (and b!6478172 b!6476300)))

(assert (=> bs!1642979 (not (= lambda!358152 lambda!358016))))

(assert (=> bs!1642970 (not (= lambda!358152 lambda!358127))))

(declare-fun bs!1642980 () Bool)

(assert (= bs!1642980 (and b!6478172 b!6477546)))

(assert (=> bs!1642980 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 (regOne!33223 lt!2385664))) (= (regOne!33223 r!7292) (regOne!33223 lt!2385664))) (= lambda!358152 lambda!358117))))

(declare-fun bs!1642981 () Bool)

(assert (= bs!1642981 (and b!6478172 b!6476519)))

(assert (=> bs!1642981 (not (= lambda!358152 lambda!358035))))

(declare-fun bs!1642982 () Bool)

(assert (= bs!1642982 (and b!6478172 b!6477297)))

(assert (=> bs!1642982 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 lt!2385664)) (= (regOne!33223 r!7292) lt!2385664)) (= lambda!358152 lambda!358103))))

(assert (=> bs!1642973 (not (= lambda!358152 lambda!358020))))

(declare-fun bs!1642983 () Bool)

(assert (= bs!1642983 (and b!6478172 d!2032041)))

(assert (=> bs!1642983 (not (= lambda!358152 lambda!358083))))

(assert (=> bs!1642979 (not (= lambda!358152 lambda!358017))))

(declare-fun bs!1642984 () Bool)

(assert (= bs!1642984 (and b!6478172 d!2031923)))

(assert (=> bs!1642984 (not (= lambda!358152 lambda!358059))))

(declare-fun bs!1642985 () Bool)

(assert (= bs!1642985 (and b!6478172 d!2032379)))

(assert (=> bs!1642985 (not (= lambda!358152 lambda!358139))))

(assert (=> bs!1642971 (not (= lambda!358152 lambda!358107))))

(declare-fun bs!1642986 () Bool)

(assert (= bs!1642986 (and b!6478172 b!6476517)))

(assert (=> bs!1642986 (= (and (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 lt!2385680)) (= (regOne!33223 r!7292) lt!2385680)) (= lambda!358152 lambda!358032))))

(assert (=> bs!1642984 (not (= lambda!358152 lambda!358062))))

(declare-fun bs!1642987 () Bool)

(assert (= bs!1642987 (and b!6478172 b!6476306)))

(assert (=> bs!1642987 (not (= lambda!358152 lambda!358014))))

(declare-fun bs!1642988 () Bool)

(assert (= bs!1642988 (and b!6478172 d!2032037)))

(assert (=> bs!1642988 (not (= lambda!358152 lambda!358082))))

(declare-fun bs!1642989 () Bool)

(assert (= bs!1642989 (and b!6478172 b!6477299)))

(assert (=> bs!1642989 (not (= lambda!358152 lambda!358105))))

(declare-fun bs!1642990 () Bool)

(assert (= bs!1642990 (and b!6478172 b!6477033)))

(assert (=> bs!1642990 (not (= lambda!358152 lambda!358075))))

(assert (=> bs!1642969 (not (= lambda!358152 lambda!358114))))

(declare-fun bs!1642991 () Bool)

(assert (= bs!1642991 (and b!6478172 b!6477792)))

(assert (=> bs!1642991 (= (and (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 (regTwo!33223 lt!2385680))) (= (regOne!33223 r!7292) (regTwo!33223 lt!2385680))) (= lambda!358152 lambda!358133))))

(assert (=> bs!1642987 (not (= lambda!358152 lambda!358013))))

(declare-fun bs!1642992 () Bool)

(assert (= bs!1642992 (and b!6478172 d!2031905)))

(assert (=> bs!1642992 (not (= lambda!358152 lambda!358052))))

(declare-fun bs!1642993 () Bool)

(assert (= bs!1642993 (and b!6478172 b!6478159)))

(assert (=> bs!1642993 (not (= lambda!358152 lambda!358149))))

(assert (=> bs!1642973 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regOne!33223 r!7292) lt!2385664)) (= lambda!358152 lambda!358019))))

(declare-fun bs!1642994 () Bool)

(assert (= bs!1642994 (and b!6478172 b!6477794)))

(assert (=> bs!1642994 (not (= lambda!358152 lambda!358134))))

(assert (=> bs!1642983 (not (= lambda!358152 lambda!358084))))

(declare-fun bs!1642995 () Bool)

(assert (= bs!1642995 (and b!6478172 d!2032237)))

(assert (=> bs!1642995 (not (= lambda!358152 lambda!358122))))

(assert (=> b!6478172 true))

(assert (=> b!6478172 true))

(declare-fun bs!1642996 () Bool)

(declare-fun b!6478174 () Bool)

(assert (= bs!1642996 (and b!6478174 d!2032245)))

(declare-fun lambda!358153 () Int)

(assert (=> bs!1642996 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 r!7292)) lt!2385664)) (= lambda!358153 lambda!358128))))

(declare-fun bs!1642997 () Bool)

(assert (= bs!1642997 (and b!6478174 d!2032125)))

(assert (=> bs!1642997 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 r!7292)) lt!2385664)) (= lambda!358153 lambda!358108))))

(declare-fun bs!1642998 () Bool)

(assert (= bs!1642998 (and b!6478174 b!6477031)))

(assert (=> bs!1642998 (not (= lambda!358153 lambda!358073))))

(declare-fun bs!1642999 () Bool)

(assert (= bs!1642999 (and b!6478174 b!6476331)))

(assert (=> bs!1642999 (not (= lambda!358153 lambda!358018))))

(declare-fun bs!1643000 () Bool)

(assert (= bs!1643000 (and b!6478174 d!2032155)))

(assert (=> bs!1643000 (not (= lambda!358153 lambda!358116))))

(declare-fun bs!1643001 () Bool)

(assert (= bs!1643001 (and b!6478174 b!6477635)))

(assert (=> bs!1643001 (not (= lambda!358153 lambda!358129))))

(declare-fun bs!1643002 () Bool)

(assert (= bs!1643002 (and b!6478174 b!6477637)))

(assert (=> bs!1643002 (= (and (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 (regTwo!33223 r!7292))) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 (regTwo!33223 r!7292)))) (= lambda!358153 lambda!358130))))

(declare-fun bs!1643003 () Bool)

(assert (= bs!1643003 (and b!6478174 b!6478157)))

(assert (=> bs!1643003 (not (= lambda!358153 lambda!358148))))

(declare-fun bs!1643004 () Bool)

(assert (= bs!1643004 (and b!6478174 b!6477548)))

(assert (=> bs!1643004 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 (regOne!33223 lt!2385664))) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358153 lambda!358118))))

(declare-fun bs!1643005 () Bool)

(assert (= bs!1643005 (and b!6478174 b!6476300)))

(assert (=> bs!1643005 (not (= lambda!358153 lambda!358016))))

(assert (=> bs!1642996 (not (= lambda!358153 lambda!358127))))

(declare-fun bs!1643006 () Bool)

(assert (= bs!1643006 (and b!6478174 d!2032127)))

(assert (=> bs!1643006 (not (= lambda!358153 lambda!358115))))

(declare-fun bs!1643007 () Bool)

(assert (= bs!1643007 (and b!6478174 b!6478172)))

(assert (=> bs!1643007 (not (= lambda!358153 lambda!358152))))

(declare-fun bs!1643008 () Bool)

(assert (= bs!1643008 (and b!6478174 b!6477546)))

(assert (=> bs!1643008 (not (= lambda!358153 lambda!358117))))

(declare-fun bs!1643009 () Bool)

(assert (= bs!1643009 (and b!6478174 b!6476519)))

(assert (=> bs!1643009 (= (and (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 lt!2385680)) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 lt!2385680))) (= lambda!358153 lambda!358035))))

(declare-fun bs!1643010 () Bool)

(assert (= bs!1643010 (and b!6478174 b!6477297)))

(assert (=> bs!1643010 (not (= lambda!358153 lambda!358103))))

(assert (=> bs!1642999 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 r!7292)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 r!7292)) lt!2385664)) (= lambda!358153 lambda!358020))))

(declare-fun bs!1643011 () Bool)

(assert (= bs!1643011 (and b!6478174 d!2032041)))

(assert (=> bs!1643011 (not (= lambda!358153 lambda!358083))))

(assert (=> bs!1643005 (= (and (= (regOne!33222 (regOne!33223 r!7292)) lt!2385664) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358153 lambda!358017))))

(declare-fun bs!1643012 () Bool)

(assert (= bs!1643012 (and b!6478174 d!2031923)))

(assert (=> bs!1643012 (not (= lambda!358153 lambda!358059))))

(declare-fun bs!1643013 () Bool)

(assert (= bs!1643013 (and b!6478174 d!2032379)))

(assert (=> bs!1643013 (not (= lambda!358153 lambda!358139))))

(assert (=> bs!1642997 (not (= lambda!358153 lambda!358107))))

(declare-fun bs!1643014 () Bool)

(assert (= bs!1643014 (and b!6478174 b!6476517)))

(assert (=> bs!1643014 (not (= lambda!358153 lambda!358032))))

(assert (=> bs!1643012 (= (and (= (regOne!33222 (regOne!33223 r!7292)) lt!2385664) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358153 lambda!358062))))

(declare-fun bs!1643015 () Bool)

(assert (= bs!1643015 (and b!6478174 b!6476306)))

(assert (=> bs!1643015 (= (and (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358153 lambda!358014))))

(declare-fun bs!1643016 () Bool)

(assert (= bs!1643016 (and b!6478174 d!2032037)))

(assert (=> bs!1643016 (not (= lambda!358153 lambda!358082))))

(declare-fun bs!1643017 () Bool)

(assert (= bs!1643017 (and b!6478174 b!6477299)))

(assert (=> bs!1643017 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 lt!2385664)) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 lt!2385664))) (= lambda!358153 lambda!358105))))

(declare-fun bs!1643018 () Bool)

(assert (= bs!1643018 (and b!6478174 b!6477033)))

(assert (=> bs!1643018 (= (and (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358153 lambda!358075))))

(assert (=> bs!1643006 (not (= lambda!358153 lambda!358114))))

(declare-fun bs!1643019 () Bool)

(assert (= bs!1643019 (and b!6478174 b!6477792)))

(assert (=> bs!1643019 (not (= lambda!358153 lambda!358133))))

(assert (=> bs!1643015 (not (= lambda!358153 lambda!358013))))

(declare-fun bs!1643020 () Bool)

(assert (= bs!1643020 (and b!6478174 d!2031905)))

(assert (=> bs!1643020 (not (= lambda!358153 lambda!358052))))

(declare-fun bs!1643021 () Bool)

(assert (= bs!1643021 (and b!6478174 b!6478159)))

(assert (=> bs!1643021 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 (regTwo!33223 lt!2385664))) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 (regTwo!33223 lt!2385664)))) (= lambda!358153 lambda!358149))))

(assert (=> bs!1642999 (not (= lambda!358153 lambda!358019))))

(declare-fun bs!1643022 () Bool)

(assert (= bs!1643022 (and b!6478174 b!6477794)))

(assert (=> bs!1643022 (= (and (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 (regTwo!33223 lt!2385680))) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 (regTwo!33223 lt!2385680)))) (= lambda!358153 lambda!358134))))

(assert (=> bs!1643011 (= (and (= (regOne!33222 (regOne!33223 r!7292)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 r!7292)) (regTwo!33222 r!7292))) (= lambda!358153 lambda!358084))))

(declare-fun bs!1643023 () Bool)

(assert (= bs!1643023 (and b!6478174 d!2032237)))

(assert (=> bs!1643023 (not (= lambda!358153 lambda!358122))))

(assert (=> b!6478174 true))

(assert (=> b!6478174 true))

(declare-fun b!6478166 () Bool)

(declare-fun res!2659963 () Bool)

(declare-fun e!3926776 () Bool)

(assert (=> b!6478166 (=> res!2659963 e!3926776)))

(declare-fun call!560625 () Bool)

(assert (=> b!6478166 (= res!2659963 call!560625)))

(declare-fun e!3926770 () Bool)

(assert (=> b!6478166 (= e!3926770 e!3926776)))

(declare-fun b!6478167 () Bool)

(declare-fun e!3926773 () Bool)

(assert (=> b!6478167 (= e!3926773 e!3926770)))

(declare-fun c!1186599 () Bool)

(assert (=> b!6478167 (= c!1186599 ((_ is Star!16355) (regOne!33223 r!7292)))))

(declare-fun b!6478168 () Bool)

(declare-fun c!1186598 () Bool)

(assert (=> b!6478168 (= c!1186598 ((_ is Union!16355) (regOne!33223 r!7292)))))

(declare-fun e!3926774 () Bool)

(assert (=> b!6478168 (= e!3926774 e!3926773)))

(declare-fun b!6478169 () Bool)

(declare-fun c!1186597 () Bool)

(assert (=> b!6478169 (= c!1186597 ((_ is ElementMatch!16355) (regOne!33223 r!7292)))))

(declare-fun e!3926771 () Bool)

(assert (=> b!6478169 (= e!3926771 e!3926774)))

(declare-fun b!6478170 () Bool)

(declare-fun e!3926772 () Bool)

(assert (=> b!6478170 (= e!3926772 call!560625)))

(declare-fun b!6478171 () Bool)

(assert (=> b!6478171 (= e!3926772 e!3926771)))

(declare-fun res!2659962 () Bool)

(assert (=> b!6478171 (= res!2659962 (not ((_ is EmptyLang!16355) (regOne!33223 r!7292))))))

(assert (=> b!6478171 (=> (not res!2659962) (not e!3926771))))

(declare-fun d!2032551 () Bool)

(declare-fun c!1186596 () Bool)

(assert (=> d!2032551 (= c!1186596 ((_ is EmptyExpr!16355) (regOne!33223 r!7292)))))

(assert (=> d!2032551 (= (matchRSpec!3456 (regOne!33223 r!7292) s!2326) e!3926772)))

(declare-fun call!560624 () Bool)

(assert (=> b!6478172 (= e!3926776 call!560624)))

(declare-fun bm!560619 () Bool)

(assert (=> bm!560619 (= call!560625 (isEmpty!37424 s!2326))))

(declare-fun b!6478173 () Bool)

(declare-fun e!3926775 () Bool)

(assert (=> b!6478173 (= e!3926773 e!3926775)))

(declare-fun res!2659964 () Bool)

(assert (=> b!6478173 (= res!2659964 (matchRSpec!3456 (regOne!33223 (regOne!33223 r!7292)) s!2326))))

(assert (=> b!6478173 (=> res!2659964 e!3926775)))

(assert (=> b!6478174 (= e!3926770 call!560624)))

(declare-fun bm!560620 () Bool)

(assert (=> bm!560620 (= call!560624 (Exists!3425 (ite c!1186599 lambda!358152 lambda!358153)))))

(declare-fun b!6478175 () Bool)

(assert (=> b!6478175 (= e!3926774 (= s!2326 (Cons!65240 (c!1186089 (regOne!33223 r!7292)) Nil!65240)))))

(declare-fun b!6478176 () Bool)

(assert (=> b!6478176 (= e!3926775 (matchRSpec!3456 (regTwo!33223 (regOne!33223 r!7292)) s!2326))))

(assert (= (and d!2032551 c!1186596) b!6478170))

(assert (= (and d!2032551 (not c!1186596)) b!6478171))

(assert (= (and b!6478171 res!2659962) b!6478169))

(assert (= (and b!6478169 c!1186597) b!6478175))

(assert (= (and b!6478169 (not c!1186597)) b!6478168))

(assert (= (and b!6478168 c!1186598) b!6478173))

(assert (= (and b!6478168 (not c!1186598)) b!6478167))

(assert (= (and b!6478173 (not res!2659964)) b!6478176))

(assert (= (and b!6478167 c!1186599) b!6478166))

(assert (= (and b!6478167 (not c!1186599)) b!6478174))

(assert (= (and b!6478166 (not res!2659963)) b!6478172))

(assert (= (or b!6478172 b!6478174) bm!560620))

(assert (= (or b!6478170 b!6478166) bm!560619))

(assert (=> bm!560619 m!7264716))

(declare-fun m!7266578 () Bool)

(assert (=> b!6478173 m!7266578))

(declare-fun m!7266580 () Bool)

(assert (=> bm!560620 m!7266580))

(declare-fun m!7266582 () Bool)

(assert (=> b!6478176 m!7266582))

(assert (=> b!6477032 d!2032551))

(declare-fun b!6478177 () Bool)

(declare-fun e!3926783 () Bool)

(assert (=> b!6478177 (= e!3926783 (not (= (head!13189 (tail!12274 (_2!36637 lt!2385692))) (c!1186089 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692)))))))))

(declare-fun b!6478178 () Bool)

(declare-fun res!2659967 () Bool)

(declare-fun e!3926777 () Bool)

(assert (=> b!6478178 (=> res!2659967 e!3926777)))

(assert (=> b!6478178 (= res!2659967 (not ((_ is ElementMatch!16355) (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692))))))))

(declare-fun e!3926780 () Bool)

(assert (=> b!6478178 (= e!3926780 e!3926777)))

(declare-fun b!6478179 () Bool)

(declare-fun e!3926782 () Bool)

(declare-fun lt!2385935 () Bool)

(declare-fun call!560626 () Bool)

(assert (=> b!6478179 (= e!3926782 (= lt!2385935 call!560626))))

(declare-fun b!6478180 () Bool)

(declare-fun e!3926778 () Bool)

(assert (=> b!6478180 (= e!3926778 (= (head!13189 (tail!12274 (_2!36637 lt!2385692))) (c!1186089 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692))))))))

(declare-fun b!6478181 () Bool)

(declare-fun res!2659970 () Bool)

(assert (=> b!6478181 (=> (not res!2659970) (not e!3926778))))

(assert (=> b!6478181 (= res!2659970 (not call!560626))))

(declare-fun d!2032553 () Bool)

(assert (=> d!2032553 e!3926782))

(declare-fun c!1186600 () Bool)

(assert (=> d!2032553 (= c!1186600 ((_ is EmptyExpr!16355) (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692)))))))

(declare-fun e!3926781 () Bool)

(assert (=> d!2032553 (= lt!2385935 e!3926781)))

(declare-fun c!1186602 () Bool)

(assert (=> d!2032553 (= c!1186602 (isEmpty!37424 (tail!12274 (_2!36637 lt!2385692))))))

(assert (=> d!2032553 (validRegex!8091 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692))))))

(assert (=> d!2032553 (= (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692))) (tail!12274 (_2!36637 lt!2385692))) lt!2385935)))

(declare-fun b!6478182 () Bool)

(declare-fun res!2659972 () Bool)

(assert (=> b!6478182 (=> res!2659972 e!3926777)))

(assert (=> b!6478182 (= res!2659972 e!3926778)))

(declare-fun res!2659965 () Bool)

(assert (=> b!6478182 (=> (not res!2659965) (not e!3926778))))

(assert (=> b!6478182 (= res!2659965 lt!2385935)))

(declare-fun b!6478183 () Bool)

(declare-fun e!3926779 () Bool)

(assert (=> b!6478183 (= e!3926777 e!3926779)))

(declare-fun res!2659971 () Bool)

(assert (=> b!6478183 (=> (not res!2659971) (not e!3926779))))

(assert (=> b!6478183 (= res!2659971 (not lt!2385935))))

(declare-fun b!6478184 () Bool)

(declare-fun res!2659968 () Bool)

(assert (=> b!6478184 (=> res!2659968 e!3926783)))

(assert (=> b!6478184 (= res!2659968 (not (isEmpty!37424 (tail!12274 (tail!12274 (_2!36637 lt!2385692))))))))

(declare-fun b!6478185 () Bool)

(assert (=> b!6478185 (= e!3926781 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692))) (head!13189 (tail!12274 (_2!36637 lt!2385692)))) (tail!12274 (tail!12274 (_2!36637 lt!2385692)))))))

(declare-fun bm!560621 () Bool)

(assert (=> bm!560621 (= call!560626 (isEmpty!37424 (tail!12274 (_2!36637 lt!2385692))))))

(declare-fun b!6478186 () Bool)

(assert (=> b!6478186 (= e!3926779 e!3926783)))

(declare-fun res!2659969 () Bool)

(assert (=> b!6478186 (=> res!2659969 e!3926783)))

(assert (=> b!6478186 (= res!2659969 call!560626)))

(declare-fun b!6478187 () Bool)

(assert (=> b!6478187 (= e!3926782 e!3926780)))

(declare-fun c!1186601 () Bool)

(assert (=> b!6478187 (= c!1186601 ((_ is EmptyLang!16355) (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692)))))))

(declare-fun b!6478188 () Bool)

(declare-fun res!2659966 () Bool)

(assert (=> b!6478188 (=> (not res!2659966) (not e!3926778))))

(assert (=> b!6478188 (= res!2659966 (isEmpty!37424 (tail!12274 (tail!12274 (_2!36637 lt!2385692)))))))

(declare-fun b!6478189 () Bool)

(assert (=> b!6478189 (= e!3926781 (nullable!6348 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692)))))))

(declare-fun b!6478190 () Bool)

(assert (=> b!6478190 (= e!3926780 (not lt!2385935))))

(assert (= (and d!2032553 c!1186602) b!6478189))

(assert (= (and d!2032553 (not c!1186602)) b!6478185))

(assert (= (and d!2032553 c!1186600) b!6478179))

(assert (= (and d!2032553 (not c!1186600)) b!6478187))

(assert (= (and b!6478187 c!1186601) b!6478190))

(assert (= (and b!6478187 (not c!1186601)) b!6478178))

(assert (= (and b!6478178 (not res!2659967)) b!6478182))

(assert (= (and b!6478182 res!2659965) b!6478181))

(assert (= (and b!6478181 res!2659970) b!6478188))

(assert (= (and b!6478188 res!2659966) b!6478180))

(assert (= (and b!6478182 (not res!2659972)) b!6478183))

(assert (= (and b!6478183 res!2659971) b!6478186))

(assert (= (and b!6478186 (not res!2659969)) b!6478184))

(assert (= (and b!6478184 (not res!2659968)) b!6478177))

(assert (= (or b!6478179 b!6478186 b!6478181) bm!560621))

(assert (=> d!2032553 m!7265606))

(assert (=> d!2032553 m!7265612))

(assert (=> d!2032553 m!7265604))

(declare-fun m!7266584 () Bool)

(assert (=> d!2032553 m!7266584))

(assert (=> b!6478185 m!7265606))

(declare-fun m!7266586 () Bool)

(assert (=> b!6478185 m!7266586))

(assert (=> b!6478185 m!7265604))

(assert (=> b!6478185 m!7266586))

(declare-fun m!7266588 () Bool)

(assert (=> b!6478185 m!7266588))

(assert (=> b!6478185 m!7265606))

(declare-fun m!7266590 () Bool)

(assert (=> b!6478185 m!7266590))

(assert (=> b!6478185 m!7266588))

(assert (=> b!6478185 m!7266590))

(declare-fun m!7266592 () Bool)

(assert (=> b!6478185 m!7266592))

(assert (=> bm!560621 m!7265606))

(assert (=> bm!560621 m!7265612))

(assert (=> b!6478184 m!7265606))

(assert (=> b!6478184 m!7266590))

(assert (=> b!6478184 m!7266590))

(declare-fun m!7266594 () Bool)

(assert (=> b!6478184 m!7266594))

(assert (=> b!6478180 m!7265606))

(assert (=> b!6478180 m!7266586))

(assert (=> b!6478188 m!7265606))

(assert (=> b!6478188 m!7266590))

(assert (=> b!6478188 m!7266590))

(assert (=> b!6478188 m!7266594))

(assert (=> b!6478177 m!7265606))

(assert (=> b!6478177 m!7266586))

(assert (=> b!6478189 m!7265604))

(declare-fun m!7266596 () Bool)

(assert (=> b!6478189 m!7266596))

(assert (=> b!6477285 d!2032553))

(declare-fun b!6478191 () Bool)

(declare-fun e!3926784 () Regex!16355)

(declare-fun call!560628 () Regex!16355)

(declare-fun call!560629 () Regex!16355)

(assert (=> b!6478191 (= e!3926784 (Union!16355 (Concat!25200 call!560628 (regTwo!33222 lt!2385664)) call!560629))))

(declare-fun bm!560622 () Bool)

(declare-fun call!560630 () Regex!16355)

(assert (=> bm!560622 (= call!560629 call!560630)))

(declare-fun b!6478192 () Bool)

(declare-fun c!1186606 () Bool)

(assert (=> b!6478192 (= c!1186606 (nullable!6348 (regOne!33222 lt!2385664)))))

(declare-fun e!3926786 () Regex!16355)

(assert (=> b!6478192 (= e!3926786 e!3926784)))

(declare-fun c!1186603 () Bool)

(declare-fun c!1186605 () Bool)

(declare-fun bm!560623 () Bool)

(declare-fun call!560627 () Regex!16355)

(assert (=> bm!560623 (= call!560627 (derivativeStep!5053 (ite c!1186603 (regTwo!33223 lt!2385664) (ite c!1186605 (reg!16684 lt!2385664) (regOne!33222 lt!2385664))) (head!13189 (_2!36637 lt!2385692))))))

(declare-fun b!6478193 () Bool)

(assert (=> b!6478193 (= c!1186603 ((_ is Union!16355) lt!2385664))))

(declare-fun e!3926787 () Regex!16355)

(declare-fun e!3926788 () Regex!16355)

(assert (=> b!6478193 (= e!3926787 e!3926788)))

(declare-fun b!6478194 () Bool)

(assert (=> b!6478194 (= e!3926787 (ite (= (head!13189 (_2!36637 lt!2385692)) (c!1186089 lt!2385664)) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560624 () Bool)

(assert (=> bm!560624 (= call!560628 call!560627)))

(declare-fun b!6478195 () Bool)

(assert (=> b!6478195 (= e!3926788 e!3926786)))

(assert (=> b!6478195 (= c!1186605 ((_ is Star!16355) lt!2385664))))

(declare-fun b!6478196 () Bool)

(assert (=> b!6478196 (= e!3926786 (Concat!25200 call!560628 lt!2385664))))

(declare-fun bm!560625 () Bool)

(assert (=> bm!560625 (= call!560630 (derivativeStep!5053 (ite c!1186603 (regOne!33223 lt!2385664) (ite c!1186606 (regTwo!33222 lt!2385664) (regOne!33222 lt!2385664))) (head!13189 (_2!36637 lt!2385692))))))

(declare-fun b!6478197 () Bool)

(assert (=> b!6478197 (= e!3926784 (Union!16355 (Concat!25200 call!560629 (regTwo!33222 lt!2385664)) EmptyLang!16355))))

(declare-fun b!6478198 () Bool)

(assert (=> b!6478198 (= e!3926788 (Union!16355 call!560630 call!560627))))

(declare-fun d!2032555 () Bool)

(declare-fun lt!2385936 () Regex!16355)

(assert (=> d!2032555 (validRegex!8091 lt!2385936)))

(declare-fun e!3926785 () Regex!16355)

(assert (=> d!2032555 (= lt!2385936 e!3926785)))

(declare-fun c!1186607 () Bool)

(assert (=> d!2032555 (= c!1186607 (or ((_ is EmptyExpr!16355) lt!2385664) ((_ is EmptyLang!16355) lt!2385664)))))

(assert (=> d!2032555 (validRegex!8091 lt!2385664)))

(assert (=> d!2032555 (= (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 lt!2385692))) lt!2385936)))

(declare-fun b!6478199 () Bool)

(assert (=> b!6478199 (= e!3926785 e!3926787)))

(declare-fun c!1186604 () Bool)

(assert (=> b!6478199 (= c!1186604 ((_ is ElementMatch!16355) lt!2385664))))

(declare-fun b!6478200 () Bool)

(assert (=> b!6478200 (= e!3926785 EmptyLang!16355)))

(assert (= (and d!2032555 c!1186607) b!6478200))

(assert (= (and d!2032555 (not c!1186607)) b!6478199))

(assert (= (and b!6478199 c!1186604) b!6478194))

(assert (= (and b!6478199 (not c!1186604)) b!6478193))

(assert (= (and b!6478193 c!1186603) b!6478198))

(assert (= (and b!6478193 (not c!1186603)) b!6478195))

(assert (= (and b!6478195 c!1186605) b!6478196))

(assert (= (and b!6478195 (not c!1186605)) b!6478192))

(assert (= (and b!6478192 c!1186606) b!6478191))

(assert (= (and b!6478192 (not c!1186606)) b!6478197))

(assert (= (or b!6478191 b!6478197) bm!560622))

(assert (= (or b!6478196 b!6478191) bm!560624))

(assert (= (or b!6478198 bm!560624) bm!560623))

(assert (= (or b!6478198 bm!560622) bm!560625))

(assert (=> b!6478192 m!7265844))

(assert (=> bm!560623 m!7265602))

(declare-fun m!7266598 () Bool)

(assert (=> bm!560623 m!7266598))

(assert (=> bm!560625 m!7265602))

(declare-fun m!7266600 () Bool)

(assert (=> bm!560625 m!7266600))

(declare-fun m!7266602 () Bool)

(assert (=> d!2032555 m!7266602))

(assert (=> d!2032555 m!7264892))

(assert (=> b!6477285 d!2032555))

(assert (=> b!6477285 d!2032303))

(assert (=> b!6477285 d!2032221))

(declare-fun b!6478201 () Bool)

(declare-fun e!3926791 () Bool)

(declare-fun e!3926792 () Bool)

(assert (=> b!6478201 (= e!3926791 e!3926792)))

(declare-fun res!2659977 () Bool)

(assert (=> b!6478201 (= res!2659977 (not (nullable!6348 (reg!16684 lt!2385870))))))

(assert (=> b!6478201 (=> (not res!2659977) (not e!3926792))))

(declare-fun b!6478202 () Bool)

(declare-fun e!3926793 () Bool)

(declare-fun call!560631 () Bool)

(assert (=> b!6478202 (= e!3926793 call!560631)))

(declare-fun b!6478203 () Bool)

(declare-fun e!3926789 () Bool)

(assert (=> b!6478203 (= e!3926789 e!3926791)))

(declare-fun c!1186609 () Bool)

(assert (=> b!6478203 (= c!1186609 ((_ is Star!16355) lt!2385870))))

(declare-fun b!6478204 () Bool)

(declare-fun e!3926795 () Bool)

(assert (=> b!6478204 (= e!3926795 call!560631)))

(declare-fun b!6478205 () Bool)

(declare-fun e!3926794 () Bool)

(assert (=> b!6478205 (= e!3926794 e!3926793)))

(declare-fun res!2659973 () Bool)

(assert (=> b!6478205 (=> (not res!2659973) (not e!3926793))))

(declare-fun call!560633 () Bool)

(assert (=> b!6478205 (= res!2659973 call!560633)))

(declare-fun bm!560626 () Bool)

(declare-fun c!1186608 () Bool)

(assert (=> bm!560626 (= call!560633 (validRegex!8091 (ite c!1186608 (regOne!33223 lt!2385870) (regOne!33222 lt!2385870))))))

(declare-fun bm!560627 () Bool)

(declare-fun call!560632 () Bool)

(assert (=> bm!560627 (= call!560631 call!560632)))

(declare-fun b!6478206 () Bool)

(assert (=> b!6478206 (= e!3926792 call!560632)))

(declare-fun bm!560628 () Bool)

(assert (=> bm!560628 (= call!560632 (validRegex!8091 (ite c!1186609 (reg!16684 lt!2385870) (ite c!1186608 (regTwo!33223 lt!2385870) (regTwo!33222 lt!2385870)))))))

(declare-fun b!6478207 () Bool)

(declare-fun res!2659976 () Bool)

(assert (=> b!6478207 (=> (not res!2659976) (not e!3926795))))

(assert (=> b!6478207 (= res!2659976 call!560633)))

(declare-fun e!3926790 () Bool)

(assert (=> b!6478207 (= e!3926790 e!3926795)))

(declare-fun d!2032557 () Bool)

(declare-fun res!2659975 () Bool)

(assert (=> d!2032557 (=> res!2659975 e!3926789)))

(assert (=> d!2032557 (= res!2659975 ((_ is ElementMatch!16355) lt!2385870))))

(assert (=> d!2032557 (= (validRegex!8091 lt!2385870) e!3926789)))

(declare-fun b!6478208 () Bool)

(assert (=> b!6478208 (= e!3926791 e!3926790)))

(assert (=> b!6478208 (= c!1186608 ((_ is Union!16355) lt!2385870))))

(declare-fun b!6478209 () Bool)

(declare-fun res!2659974 () Bool)

(assert (=> b!6478209 (=> res!2659974 e!3926794)))

(assert (=> b!6478209 (= res!2659974 (not ((_ is Concat!25200) lt!2385870)))))

(assert (=> b!6478209 (= e!3926790 e!3926794)))

(assert (= (and d!2032557 (not res!2659975)) b!6478203))

(assert (= (and b!6478203 c!1186609) b!6478201))

(assert (= (and b!6478203 (not c!1186609)) b!6478208))

(assert (= (and b!6478201 res!2659977) b!6478206))

(assert (= (and b!6478208 c!1186608) b!6478207))

(assert (= (and b!6478208 (not c!1186608)) b!6478209))

(assert (= (and b!6478207 res!2659976) b!6478204))

(assert (= (and b!6478209 (not res!2659974)) b!6478205))

(assert (= (and b!6478205 res!2659973) b!6478202))

(assert (= (or b!6478204 b!6478202) bm!560627))

(assert (= (or b!6478207 b!6478205) bm!560626))

(assert (= (or b!6478206 bm!560627) bm!560628))

(declare-fun m!7266604 () Bool)

(assert (=> b!6478201 m!7266604))

(declare-fun m!7266606 () Bool)

(assert (=> bm!560626 m!7266606))

(declare-fun m!7266608 () Bool)

(assert (=> bm!560628 m!7266608))

(assert (=> d!2032157 d!2032557))

(assert (=> d!2032157 d!2032083))

(assert (=> d!2032157 d!2032085))

(declare-fun d!2032559 () Bool)

(assert (=> d!2032559 (= (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (nullableFct!2287 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun bs!1643024 () Bool)

(assert (= bs!1643024 d!2032559))

(declare-fun m!7266610 () Bool)

(assert (=> bs!1643024 m!7266610))

(assert (=> b!6476998 d!2032559))

(assert (=> b!6477079 d!2032355))

(assert (=> b!6477247 d!2031887))

(declare-fun bs!1643025 () Bool)

(declare-fun d!2032561 () Bool)

(assert (= bs!1643025 (and d!2032561 d!2032517)))

(declare-fun lambda!358154 () Int)

(assert (=> bs!1643025 (= lambda!358154 lambda!358147)))

(declare-fun bs!1643026 () Bool)

(assert (= bs!1643026 (and d!2032561 d!2032083)))

(assert (=> bs!1643026 (= lambda!358154 lambda!358095)))

(declare-fun bs!1643027 () Bool)

(assert (= bs!1643027 (and d!2032561 d!2031879)))

(assert (=> bs!1643027 (= lambda!358154 lambda!358039)))

(declare-fun bs!1643028 () Bool)

(assert (= bs!1643028 (and d!2032561 d!2032223)))

(assert (=> bs!1643028 (= lambda!358154 lambda!358119)))

(declare-fun bs!1643029 () Bool)

(assert (= bs!1643029 (and d!2032561 d!2031899)))

(assert (=> bs!1643029 (= lambda!358154 lambda!358049)))

(declare-fun bs!1643030 () Bool)

(assert (= bs!1643030 (and d!2032561 d!2032549)))

(assert (=> bs!1643030 (= lambda!358154 lambda!358151)))

(declare-fun bs!1643031 () Bool)

(assert (= bs!1643031 (and d!2032561 d!2032101)))

(assert (=> bs!1643031 (= lambda!358154 lambda!358101)))

(declare-fun bs!1643032 () Bool)

(assert (= bs!1643032 (and d!2032561 d!2032515)))

(assert (=> bs!1643032 (= lambda!358154 lambda!358146)))

(declare-fun bs!1643033 () Bool)

(assert (= bs!1643033 (and d!2032561 d!2032085)))

(assert (=> bs!1643033 (= lambda!358154 lambda!358099)))

(declare-fun bs!1643034 () Bool)

(assert (= bs!1643034 (and d!2032561 d!2031887)))

(assert (=> bs!1643034 (= lambda!358154 lambda!358048)))

(declare-fun bs!1643035 () Bool)

(assert (= bs!1643035 (and d!2032561 d!2032493)))

(assert (=> bs!1643035 (= lambda!358154 lambda!358144)))

(declare-fun lt!2385937 () List!65365)

(assert (=> d!2032561 (forall!15540 lt!2385937 lambda!358154)))

(declare-fun e!3926796 () List!65365)

(assert (=> d!2032561 (= lt!2385937 e!3926796)))

(declare-fun c!1186610 () Bool)

(assert (=> d!2032561 (= c!1186610 ((_ is Cons!65242) (t!378990 zl!343)))))

(assert (=> d!2032561 (= (unfocusZipperList!1776 (t!378990 zl!343)) lt!2385937)))

(declare-fun b!6478210 () Bool)

(assert (=> b!6478210 (= e!3926796 (Cons!65241 (generalisedConcat!1952 (exprs!6239 (h!71690 (t!378990 zl!343)))) (unfocusZipperList!1776 (t!378990 (t!378990 zl!343)))))))

(declare-fun b!6478211 () Bool)

(assert (=> b!6478211 (= e!3926796 Nil!65241)))

(assert (= (and d!2032561 c!1186610) b!6478210))

(assert (= (and d!2032561 (not c!1186610)) b!6478211))

(declare-fun m!7266612 () Bool)

(assert (=> d!2032561 m!7266612))

(declare-fun m!7266614 () Bool)

(assert (=> b!6478210 m!7266614))

(declare-fun m!7266616 () Bool)

(assert (=> b!6478210 m!7266616))

(assert (=> b!6477247 d!2032561))

(declare-fun bm!560629 () Bool)

(declare-fun call!560634 () (InoxSet Context!11478))

(assert (=> bm!560629 (= call!560634 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385676))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385676)))))) (h!71688 s!2326)))))

(declare-fun b!6478212 () Bool)

(declare-fun e!3926799 () Bool)

(assert (=> b!6478212 (= e!3926799 (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385676)))))))))

(declare-fun b!6478213 () Bool)

(declare-fun e!3926797 () (InoxSet Context!11478))

(assert (=> b!6478213 (= e!3926797 call!560634)))

(declare-fun b!6478214 () Bool)

(declare-fun e!3926798 () (InoxSet Context!11478))

(assert (=> b!6478214 (= e!3926798 e!3926797)))

(declare-fun c!1186612 () Bool)

(assert (=> b!6478214 (= c!1186612 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385676))))))))

(declare-fun b!6478216 () Bool)

(assert (=> b!6478216 (= e!3926797 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032563 () Bool)

(declare-fun c!1186611 () Bool)

(assert (=> d!2032563 (= c!1186611 e!3926799)))

(declare-fun res!2659978 () Bool)

(assert (=> d!2032563 (=> (not res!2659978) (not e!3926799))))

(assert (=> d!2032563 (= res!2659978 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385676))))))))

(assert (=> d!2032563 (= (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385676))) (h!71688 s!2326)) e!3926798)))

(declare-fun b!6478215 () Bool)

(assert (=> b!6478215 (= e!3926798 ((_ map or) call!560634 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385676)))))) (h!71688 s!2326))))))

(assert (= (and d!2032563 res!2659978) b!6478212))

(assert (= (and d!2032563 c!1186611) b!6478215))

(assert (= (and d!2032563 (not c!1186611)) b!6478214))

(assert (= (and b!6478214 c!1186612) b!6478213))

(assert (= (and b!6478214 (not c!1186612)) b!6478216))

(assert (= (or b!6478215 b!6478213) bm!560629))

(declare-fun m!7266618 () Bool)

(assert (=> bm!560629 m!7266618))

(declare-fun m!7266620 () Bool)

(assert (=> b!6478212 m!7266620))

(declare-fun m!7266622 () Bool)

(assert (=> b!6478215 m!7266622))

(assert (=> b!6477151 d!2032563))

(declare-fun bs!1643036 () Bool)

(declare-fun d!2032565 () Bool)

(assert (= bs!1643036 (and d!2032565 d!2032517)))

(declare-fun lambda!358155 () Int)

(assert (=> bs!1643036 (= lambda!358155 lambda!358147)))

(declare-fun bs!1643037 () Bool)

(assert (= bs!1643037 (and d!2032565 d!2032083)))

(assert (=> bs!1643037 (= lambda!358155 lambda!358095)))

(declare-fun bs!1643038 () Bool)

(assert (= bs!1643038 (and d!2032565 d!2031879)))

(assert (=> bs!1643038 (= lambda!358155 lambda!358039)))

(declare-fun bs!1643039 () Bool)

(assert (= bs!1643039 (and d!2032565 d!2032223)))

(assert (=> bs!1643039 (= lambda!358155 lambda!358119)))

(declare-fun bs!1643040 () Bool)

(assert (= bs!1643040 (and d!2032565 d!2031899)))

(assert (=> bs!1643040 (= lambda!358155 lambda!358049)))

(declare-fun bs!1643041 () Bool)

(assert (= bs!1643041 (and d!2032565 d!2032549)))

(assert (=> bs!1643041 (= lambda!358155 lambda!358151)))

(declare-fun bs!1643042 () Bool)

(assert (= bs!1643042 (and d!2032565 d!2032101)))

(assert (=> bs!1643042 (= lambda!358155 lambda!358101)))

(declare-fun bs!1643043 () Bool)

(assert (= bs!1643043 (and d!2032565 d!2032515)))

(assert (=> bs!1643043 (= lambda!358155 lambda!358146)))

(declare-fun bs!1643044 () Bool)

(assert (= bs!1643044 (and d!2032565 d!2032085)))

(assert (=> bs!1643044 (= lambda!358155 lambda!358099)))

(declare-fun bs!1643045 () Bool)

(assert (= bs!1643045 (and d!2032565 d!2031887)))

(assert (=> bs!1643045 (= lambda!358155 lambda!358048)))

(declare-fun bs!1643046 () Bool)

(assert (= bs!1643046 (and d!2032565 d!2032493)))

(assert (=> bs!1643046 (= lambda!358155 lambda!358144)))

(declare-fun bs!1643047 () Bool)

(assert (= bs!1643047 (and d!2032565 d!2032561)))

(assert (=> bs!1643047 (= lambda!358155 lambda!358154)))

(assert (=> d!2032565 (= (inv!84134 (h!71690 (t!378990 zl!343))) (forall!15540 (exprs!6239 (h!71690 (t!378990 zl!343))) lambda!358155))))

(declare-fun bs!1643048 () Bool)

(assert (= bs!1643048 d!2032565))

(declare-fun m!7266624 () Bool)

(assert (=> bs!1643048 m!7266624))

(assert (=> b!6477464 d!2032565))

(declare-fun d!2032567 () Bool)

(assert (=> d!2032567 (= (isDefined!12949 lt!2385779) (not (isEmpty!37425 lt!2385779)))))

(declare-fun bs!1643049 () Bool)

(assert (= bs!1643049 d!2032567))

(declare-fun m!7266626 () Bool)

(assert (=> bs!1643049 m!7266626))

(assert (=> b!6476903 d!2032567))

(assert (=> d!2032023 d!2032019))

(declare-fun d!2032569 () Bool)

(assert (=> d!2032569 (= (flatMap!1860 lt!2385647 lambda!358015) (dynLambda!25915 lambda!358015 lt!2385662))))

(assert (=> d!2032569 true))

(declare-fun _$13!3698 () Unit!158751)

(assert (=> d!2032569 (= (choose!48009 lt!2385647 lt!2385662 lambda!358015) _$13!3698)))

(declare-fun b_lambda!245407 () Bool)

(assert (=> (not b_lambda!245407) (not d!2032569)))

(declare-fun bs!1643050 () Bool)

(assert (= bs!1643050 d!2032569))

(assert (=> bs!1643050 m!7264582))

(assert (=> bs!1643050 m!7265404))

(assert (=> d!2032023 d!2032569))

(assert (=> b!6477411 d!2031897))

(declare-fun d!2032571 () Bool)

(assert (=> d!2032571 (= (nullable!6348 (regOne!33222 (reg!16684 (regOne!33222 r!7292)))) (nullableFct!2287 (regOne!33222 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun bs!1643051 () Bool)

(assert (= bs!1643051 d!2032571))

(declare-fun m!7266628 () Bool)

(assert (=> bs!1643051 m!7266628))

(assert (=> b!6476950 d!2032571))

(declare-fun d!2032573 () Bool)

(declare-fun c!1186613 () Bool)

(assert (=> d!2032573 (= c!1186613 (isEmpty!37424 (tail!12274 s!2326)))))

(declare-fun e!3926800 () Bool)

(assert (=> d!2032573 (= (matchZipper!2367 (derivationStepZipper!2321 lt!2385647 (head!13189 s!2326)) (tail!12274 s!2326)) e!3926800)))

(declare-fun b!6478217 () Bool)

(assert (=> b!6478217 (= e!3926800 (nullableZipper!2114 (derivationStepZipper!2321 lt!2385647 (head!13189 s!2326))))))

(declare-fun b!6478218 () Bool)

(assert (=> b!6478218 (= e!3926800 (matchZipper!2367 (derivationStepZipper!2321 (derivationStepZipper!2321 lt!2385647 (head!13189 s!2326)) (head!13189 (tail!12274 s!2326))) (tail!12274 (tail!12274 s!2326))))))

(assert (= (and d!2032573 c!1186613) b!6478217))

(assert (= (and d!2032573 (not c!1186613)) b!6478218))

(assert (=> d!2032573 m!7264730))

(assert (=> d!2032573 m!7264738))

(assert (=> b!6478217 m!7265386))

(declare-fun m!7266630 () Bool)

(assert (=> b!6478217 m!7266630))

(assert (=> b!6478218 m!7264730))

(assert (=> b!6478218 m!7266168))

(assert (=> b!6478218 m!7265386))

(assert (=> b!6478218 m!7266168))

(declare-fun m!7266632 () Bool)

(assert (=> b!6478218 m!7266632))

(assert (=> b!6478218 m!7264730))

(assert (=> b!6478218 m!7266172))

(assert (=> b!6478218 m!7266632))

(assert (=> b!6478218 m!7266172))

(declare-fun m!7266634 () Bool)

(assert (=> b!6478218 m!7266634))

(assert (=> b!6477094 d!2032573))

(declare-fun bs!1643052 () Bool)

(declare-fun d!2032575 () Bool)

(assert (= bs!1643052 (and d!2032575 d!2032479)))

(declare-fun lambda!358156 () Int)

(assert (=> bs!1643052 (= (= (head!13189 s!2326) (head!13189 (t!378988 s!2326))) (= lambda!358156 lambda!358143))))

(declare-fun bs!1643053 () Bool)

(assert (= bs!1643053 (and d!2032575 d!2032435)))

(assert (=> bs!1643053 (= (= (head!13189 s!2326) (head!13189 (_1!36637 lt!2385692))) (= lambda!358156 lambda!358141))))

(declare-fun bs!1643054 () Bool)

(assert (= bs!1643054 (and d!2032575 d!2032359)))

(assert (=> bs!1643054 (= (= (head!13189 s!2326) (head!13189 (t!378988 s!2326))) (= lambda!358156 lambda!358135))))

(declare-fun bs!1643055 () Bool)

(assert (= bs!1643055 (and d!2032575 b!6476340)))

(assert (=> bs!1643055 (= (= (head!13189 s!2326) (h!71688 s!2326)) (= lambda!358156 lambda!358015))))

(declare-fun bs!1643056 () Bool)

(assert (= bs!1643056 (and d!2032575 d!2032025)))

(assert (=> bs!1643056 (= (= (head!13189 s!2326) (h!71688 s!2326)) (= lambda!358156 lambda!358081))))

(declare-fun bs!1643057 () Bool)

(assert (= bs!1643057 (and d!2032575 d!2032335)))

(assert (=> bs!1643057 (= (= (head!13189 s!2326) (head!13189 lt!2385693)) (= lambda!358156 lambda!358132))))

(declare-fun bs!1643058 () Bool)

(assert (= bs!1643058 (and d!2032575 d!2032289)))

(assert (=> bs!1643058 (= (= (head!13189 s!2326) (head!13189 (t!378988 s!2326))) (= lambda!358156 lambda!358131))))

(assert (=> d!2032575 true))

(assert (=> d!2032575 (= (derivationStepZipper!2321 lt!2385647 (head!13189 s!2326)) (flatMap!1860 lt!2385647 lambda!358156))))

(declare-fun bs!1643059 () Bool)

(assert (= bs!1643059 d!2032575))

(declare-fun m!7266636 () Bool)

(assert (=> bs!1643059 m!7266636))

(assert (=> b!6477094 d!2032575))

(assert (=> b!6477094 d!2032309))

(assert (=> b!6477094 d!2032233))

(declare-fun b!6478219 () Bool)

(declare-fun e!3926807 () Bool)

(assert (=> b!6478219 (= e!3926807 (not (= (head!13189 (_2!36637 (get!22616 lt!2385866))) (c!1186089 lt!2385664))))))

(declare-fun b!6478220 () Bool)

(declare-fun res!2659981 () Bool)

(declare-fun e!3926801 () Bool)

(assert (=> b!6478220 (=> res!2659981 e!3926801)))

(assert (=> b!6478220 (= res!2659981 (not ((_ is ElementMatch!16355) lt!2385664)))))

(declare-fun e!3926804 () Bool)

(assert (=> b!6478220 (= e!3926804 e!3926801)))

(declare-fun b!6478221 () Bool)

(declare-fun e!3926806 () Bool)

(declare-fun lt!2385938 () Bool)

(declare-fun call!560635 () Bool)

(assert (=> b!6478221 (= e!3926806 (= lt!2385938 call!560635))))

(declare-fun b!6478222 () Bool)

(declare-fun e!3926802 () Bool)

(assert (=> b!6478222 (= e!3926802 (= (head!13189 (_2!36637 (get!22616 lt!2385866))) (c!1186089 lt!2385664)))))

(declare-fun b!6478223 () Bool)

(declare-fun res!2659984 () Bool)

(assert (=> b!6478223 (=> (not res!2659984) (not e!3926802))))

(assert (=> b!6478223 (= res!2659984 (not call!560635))))

(declare-fun d!2032577 () Bool)

(assert (=> d!2032577 e!3926806))

(declare-fun c!1186614 () Bool)

(assert (=> d!2032577 (= c!1186614 ((_ is EmptyExpr!16355) lt!2385664))))

(declare-fun e!3926805 () Bool)

(assert (=> d!2032577 (= lt!2385938 e!3926805)))

(declare-fun c!1186616 () Bool)

(assert (=> d!2032577 (= c!1186616 (isEmpty!37424 (_2!36637 (get!22616 lt!2385866))))))

(assert (=> d!2032577 (validRegex!8091 lt!2385664)))

(assert (=> d!2032577 (= (matchR!8538 lt!2385664 (_2!36637 (get!22616 lt!2385866))) lt!2385938)))

(declare-fun b!6478224 () Bool)

(declare-fun res!2659986 () Bool)

(assert (=> b!6478224 (=> res!2659986 e!3926801)))

(assert (=> b!6478224 (= res!2659986 e!3926802)))

(declare-fun res!2659979 () Bool)

(assert (=> b!6478224 (=> (not res!2659979) (not e!3926802))))

(assert (=> b!6478224 (= res!2659979 lt!2385938)))

(declare-fun b!6478225 () Bool)

(declare-fun e!3926803 () Bool)

(assert (=> b!6478225 (= e!3926801 e!3926803)))

(declare-fun res!2659985 () Bool)

(assert (=> b!6478225 (=> (not res!2659985) (not e!3926803))))

(assert (=> b!6478225 (= res!2659985 (not lt!2385938))))

(declare-fun b!6478226 () Bool)

(declare-fun res!2659982 () Bool)

(assert (=> b!6478226 (=> res!2659982 e!3926807)))

(assert (=> b!6478226 (= res!2659982 (not (isEmpty!37424 (tail!12274 (_2!36637 (get!22616 lt!2385866))))))))

(declare-fun b!6478227 () Bool)

(assert (=> b!6478227 (= e!3926805 (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 (_2!36637 (get!22616 lt!2385866)))) (tail!12274 (_2!36637 (get!22616 lt!2385866)))))))

(declare-fun bm!560630 () Bool)

(assert (=> bm!560630 (= call!560635 (isEmpty!37424 (_2!36637 (get!22616 lt!2385866))))))

(declare-fun b!6478228 () Bool)

(assert (=> b!6478228 (= e!3926803 e!3926807)))

(declare-fun res!2659983 () Bool)

(assert (=> b!6478228 (=> res!2659983 e!3926807)))

(assert (=> b!6478228 (= res!2659983 call!560635)))

(declare-fun b!6478229 () Bool)

(assert (=> b!6478229 (= e!3926806 e!3926804)))

(declare-fun c!1186615 () Bool)

(assert (=> b!6478229 (= c!1186615 ((_ is EmptyLang!16355) lt!2385664))))

(declare-fun b!6478230 () Bool)

(declare-fun res!2659980 () Bool)

(assert (=> b!6478230 (=> (not res!2659980) (not e!3926802))))

(assert (=> b!6478230 (= res!2659980 (isEmpty!37424 (tail!12274 (_2!36637 (get!22616 lt!2385866)))))))

(declare-fun b!6478231 () Bool)

(assert (=> b!6478231 (= e!3926805 (nullable!6348 lt!2385664))))

(declare-fun b!6478232 () Bool)

(assert (=> b!6478232 (= e!3926804 (not lt!2385938))))

(assert (= (and d!2032577 c!1186616) b!6478231))

(assert (= (and d!2032577 (not c!1186616)) b!6478227))

(assert (= (and d!2032577 c!1186614) b!6478221))

(assert (= (and d!2032577 (not c!1186614)) b!6478229))

(assert (= (and b!6478229 c!1186615) b!6478232))

(assert (= (and b!6478229 (not c!1186615)) b!6478220))

(assert (= (and b!6478220 (not res!2659981)) b!6478224))

(assert (= (and b!6478224 res!2659979) b!6478223))

(assert (= (and b!6478223 res!2659984) b!6478230))

(assert (= (and b!6478230 res!2659980) b!6478222))

(assert (= (and b!6478224 (not res!2659986)) b!6478225))

(assert (= (and b!6478225 res!2659985) b!6478228))

(assert (= (and b!6478228 (not res!2659983)) b!6478226))

(assert (= (and b!6478226 (not res!2659982)) b!6478219))

(assert (= (or b!6478221 b!6478228 b!6478223) bm!560630))

(declare-fun m!7266638 () Bool)

(assert (=> d!2032577 m!7266638))

(assert (=> d!2032577 m!7264892))

(declare-fun m!7266640 () Bool)

(assert (=> b!6478227 m!7266640))

(assert (=> b!6478227 m!7266640))

(declare-fun m!7266642 () Bool)

(assert (=> b!6478227 m!7266642))

(declare-fun m!7266644 () Bool)

(assert (=> b!6478227 m!7266644))

(assert (=> b!6478227 m!7266642))

(assert (=> b!6478227 m!7266644))

(declare-fun m!7266646 () Bool)

(assert (=> b!6478227 m!7266646))

(assert (=> bm!560630 m!7266638))

(assert (=> b!6478226 m!7266644))

(assert (=> b!6478226 m!7266644))

(declare-fun m!7266648 () Bool)

(assert (=> b!6478226 m!7266648))

(assert (=> b!6478222 m!7266640))

(assert (=> b!6478230 m!7266644))

(assert (=> b!6478230 m!7266644))

(assert (=> b!6478230 m!7266648))

(assert (=> b!6478219 m!7266640))

(assert (=> b!6478231 m!7264904))

(assert (=> b!6477404 d!2032577))

(assert (=> b!6477404 d!2032425))

(assert (=> b!6477284 d!2032219))

(assert (=> b!6477284 d!2032221))

(declare-fun d!2032579 () Bool)

(declare-fun c!1186617 () Bool)

(assert (=> d!2032579 (= c!1186617 (isEmpty!37424 (tail!12274 (t!378988 s!2326))))))

(declare-fun e!3926808 () Bool)

(assert (=> d!2032579 (= (matchZipper!2367 (derivationStepZipper!2321 lt!2385694 (head!13189 (t!378988 s!2326))) (tail!12274 (t!378988 s!2326))) e!3926808)))

(declare-fun b!6478233 () Bool)

(assert (=> b!6478233 (= e!3926808 (nullableZipper!2114 (derivationStepZipper!2321 lt!2385694 (head!13189 (t!378988 s!2326)))))))

(declare-fun b!6478234 () Bool)

(assert (=> b!6478234 (= e!3926808 (matchZipper!2367 (derivationStepZipper!2321 (derivationStepZipper!2321 lt!2385694 (head!13189 (t!378988 s!2326))) (head!13189 (tail!12274 (t!378988 s!2326)))) (tail!12274 (tail!12274 (t!378988 s!2326)))))))

(assert (= (and d!2032579 c!1186617) b!6478233))

(assert (= (and d!2032579 (not c!1186617)) b!6478234))

(assert (=> d!2032579 m!7265002))

(assert (=> d!2032579 m!7266040))

(assert (=> b!6478233 m!7265756))

(declare-fun m!7266650 () Bool)

(assert (=> b!6478233 m!7266650))

(assert (=> b!6478234 m!7265002))

(assert (=> b!6478234 m!7266044))

(assert (=> b!6478234 m!7265756))

(assert (=> b!6478234 m!7266044))

(declare-fun m!7266652 () Bool)

(assert (=> b!6478234 m!7266652))

(assert (=> b!6478234 m!7265002))

(assert (=> b!6478234 m!7266048))

(assert (=> b!6478234 m!7266652))

(assert (=> b!6478234 m!7266048))

(declare-fun m!7266654 () Bool)

(assert (=> b!6478234 m!7266654))

(assert (=> b!6477413 d!2032579))

(declare-fun bs!1643060 () Bool)

(declare-fun d!2032581 () Bool)

(assert (= bs!1643060 (and d!2032581 d!2032479)))

(declare-fun lambda!358157 () Int)

(assert (=> bs!1643060 (= lambda!358157 lambda!358143)))

(declare-fun bs!1643061 () Bool)

(assert (= bs!1643061 (and d!2032581 d!2032435)))

(assert (=> bs!1643061 (= (= (head!13189 (t!378988 s!2326)) (head!13189 (_1!36637 lt!2385692))) (= lambda!358157 lambda!358141))))

(declare-fun bs!1643062 () Bool)

(assert (= bs!1643062 (and d!2032581 d!2032359)))

(assert (=> bs!1643062 (= lambda!358157 lambda!358135)))

(declare-fun bs!1643063 () Bool)

(assert (= bs!1643063 (and d!2032581 b!6476340)))

(assert (=> bs!1643063 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358157 lambda!358015))))

(declare-fun bs!1643064 () Bool)

(assert (= bs!1643064 (and d!2032581 d!2032025)))

(assert (=> bs!1643064 (= (= (head!13189 (t!378988 s!2326)) (h!71688 s!2326)) (= lambda!358157 lambda!358081))))

(declare-fun bs!1643065 () Bool)

(assert (= bs!1643065 (and d!2032581 d!2032335)))

(assert (=> bs!1643065 (= (= (head!13189 (t!378988 s!2326)) (head!13189 lt!2385693)) (= lambda!358157 lambda!358132))))

(declare-fun bs!1643066 () Bool)

(assert (= bs!1643066 (and d!2032581 d!2032575)))

(assert (=> bs!1643066 (= (= (head!13189 (t!378988 s!2326)) (head!13189 s!2326)) (= lambda!358157 lambda!358156))))

(declare-fun bs!1643067 () Bool)

(assert (= bs!1643067 (and d!2032581 d!2032289)))

(assert (=> bs!1643067 (= lambda!358157 lambda!358131)))

(assert (=> d!2032581 true))

(assert (=> d!2032581 (= (derivationStepZipper!2321 lt!2385694 (head!13189 (t!378988 s!2326))) (flatMap!1860 lt!2385694 lambda!358157))))

(declare-fun bs!1643068 () Bool)

(assert (= bs!1643068 d!2032581))

(declare-fun m!7266656 () Bool)

(assert (=> bs!1643068 m!7266656))

(assert (=> b!6477413 d!2032581))

(assert (=> b!6477413 d!2032291))

(assert (=> b!6477413 d!2032293))

(declare-fun c!1186618 () Bool)

(declare-fun c!1186619 () Bool)

(declare-fun c!1186620 () Bool)

(declare-fun bm!560631 () Bool)

(declare-fun call!560638 () List!65365)

(declare-fun call!560636 () (InoxSet Context!11478))

(assert (=> bm!560631 (= call!560636 (derivationStepZipperDown!1603 (ite c!1186620 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186619 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186618 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343))))))) (ite (or c!1186620 c!1186619) (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))) (Context!11479 call!560638)) (h!71688 s!2326)))))

(declare-fun b!6478235 () Bool)

(declare-fun e!3926813 () Bool)

(assert (=> b!6478235 (= c!1186619 e!3926813)))

(declare-fun res!2659987 () Bool)

(assert (=> b!6478235 (=> (not res!2659987) (not e!3926813))))

(assert (=> b!6478235 (= res!2659987 ((_ is Concat!25200) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun e!3926811 () (InoxSet Context!11478))

(declare-fun e!3926810 () (InoxSet Context!11478))

(assert (=> b!6478235 (= e!3926811 e!3926810)))

(declare-fun b!6478236 () Bool)

(declare-fun c!1186622 () Bool)

(assert (=> b!6478236 (= c!1186622 ((_ is Star!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun e!3926814 () (InoxSet Context!11478))

(declare-fun e!3926812 () (InoxSet Context!11478))

(assert (=> b!6478236 (= e!3926814 e!3926812)))

(declare-fun d!2032583 () Bool)

(declare-fun c!1186621 () Bool)

(assert (=> d!2032583 (= c!1186621 (and ((_ is ElementMatch!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))) (= (c!1186089 (h!71689 (exprs!6239 (h!71690 zl!343)))) (h!71688 s!2326))))))

(declare-fun e!3926809 () (InoxSet Context!11478))

(assert (=> d!2032583 (= (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (h!71690 zl!343))) (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))) (h!71688 s!2326)) e!3926809)))

(declare-fun bm!560632 () Bool)

(declare-fun call!560641 () List!65365)

(assert (=> bm!560632 (= call!560638 call!560641)))

(declare-fun b!6478237 () Bool)

(assert (=> b!6478237 (= e!3926813 (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6478238 () Bool)

(assert (=> b!6478238 (= e!3926812 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560633 () Bool)

(declare-fun call!560639 () (InoxSet Context!11478))

(declare-fun call!560640 () (InoxSet Context!11478))

(assert (=> bm!560633 (= call!560639 call!560640)))

(declare-fun b!6478239 () Bool)

(assert (=> b!6478239 (= e!3926812 call!560639)))

(declare-fun b!6478240 () Bool)

(declare-fun call!560637 () (InoxSet Context!11478))

(assert (=> b!6478240 (= e!3926811 ((_ map or) call!560636 call!560637))))

(declare-fun b!6478241 () Bool)

(assert (=> b!6478241 (= e!3926809 (store ((as const (Array Context!11478 Bool)) false) (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))) true))))

(declare-fun b!6478242 () Bool)

(assert (=> b!6478242 (= e!3926809 e!3926811)))

(assert (=> b!6478242 (= c!1186620 ((_ is Union!16355) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun bm!560634 () Bool)

(assert (=> bm!560634 (= call!560641 ($colon$colon!2210 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343))))) (ite (or c!1186619 c!1186618) (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (h!71689 (exprs!6239 (h!71690 zl!343))))))))

(declare-fun b!6478243 () Bool)

(assert (=> b!6478243 (= e!3926810 ((_ map or) call!560637 call!560640))))

(declare-fun bm!560635 () Bool)

(assert (=> bm!560635 (= call!560640 call!560636)))

(declare-fun bm!560636 () Bool)

(assert (=> bm!560636 (= call!560637 (derivationStepZipperDown!1603 (ite c!1186620 (regTwo!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343))))) (ite c!1186620 (Context!11479 (t!378989 (exprs!6239 (h!71690 zl!343)))) (Context!11479 call!560641)) (h!71688 s!2326)))))

(declare-fun b!6478244 () Bool)

(assert (=> b!6478244 (= e!3926814 call!560639)))

(declare-fun b!6478245 () Bool)

(assert (=> b!6478245 (= e!3926810 e!3926814)))

(assert (=> b!6478245 (= c!1186618 ((_ is Concat!25200) (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(assert (= (and d!2032583 c!1186621) b!6478241))

(assert (= (and d!2032583 (not c!1186621)) b!6478242))

(assert (= (and b!6478242 c!1186620) b!6478240))

(assert (= (and b!6478242 (not c!1186620)) b!6478235))

(assert (= (and b!6478235 res!2659987) b!6478237))

(assert (= (and b!6478235 c!1186619) b!6478243))

(assert (= (and b!6478235 (not c!1186619)) b!6478245))

(assert (= (and b!6478245 c!1186618) b!6478244))

(assert (= (and b!6478245 (not c!1186618)) b!6478236))

(assert (= (and b!6478236 c!1186622) b!6478239))

(assert (= (and b!6478236 (not c!1186622)) b!6478238))

(assert (= (or b!6478244 b!6478239) bm!560632))

(assert (= (or b!6478244 b!6478239) bm!560633))

(assert (= (or b!6478243 bm!560632) bm!560634))

(assert (= (or b!6478243 bm!560633) bm!560635))

(assert (= (or b!6478240 b!6478243) bm!560636))

(assert (= (or b!6478240 bm!560635) bm!560631))

(declare-fun m!7266658 () Bool)

(assert (=> bm!560636 m!7266658))

(declare-fun m!7266660 () Bool)

(assert (=> bm!560631 m!7266660))

(declare-fun m!7266662 () Bool)

(assert (=> b!6478241 m!7266662))

(assert (=> b!6478237 m!7265218))

(declare-fun m!7266664 () Bool)

(assert (=> bm!560634 m!7266664))

(assert (=> bm!560463 d!2032583))

(declare-fun d!2032585 () Bool)

(assert (=> d!2032585 (= (Exists!3425 lambda!358059) (choose!48008 lambda!358059))))

(declare-fun bs!1643069 () Bool)

(assert (= bs!1643069 d!2032585))

(declare-fun m!7266666 () Bool)

(assert (=> bs!1643069 m!7266666))

(assert (=> d!2031923 d!2032585))

(declare-fun d!2032587 () Bool)

(assert (=> d!2032587 (= (Exists!3425 lambda!358062) (choose!48008 lambda!358062))))

(declare-fun bs!1643070 () Bool)

(assert (= bs!1643070 d!2032587))

(declare-fun m!7266668 () Bool)

(assert (=> bs!1643070 m!7266668))

(assert (=> d!2031923 d!2032587))

(declare-fun bs!1643071 () Bool)

(declare-fun d!2032589 () Bool)

(assert (= bs!1643071 (and d!2032589 d!2032245)))

(declare-fun lambda!358158 () Int)

(assert (=> bs!1643071 (not (= lambda!358158 lambda!358128))))

(declare-fun bs!1643072 () Bool)

(assert (= bs!1643072 (and d!2032589 b!6477031)))

(assert (=> bs!1643072 (not (= lambda!358158 lambda!358073))))

(declare-fun bs!1643073 () Bool)

(assert (= bs!1643073 (and d!2032589 b!6476331)))

(assert (=> bs!1643073 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358158 lambda!358018))))

(declare-fun bs!1643074 () Bool)

(assert (= bs!1643074 (and d!2032589 d!2032155)))

(assert (=> bs!1643074 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358158 lambda!358116))))

(declare-fun bs!1643075 () Bool)

(assert (= bs!1643075 (and d!2032589 b!6477635)))

(assert (=> bs!1643075 (not (= lambda!358158 lambda!358129))))

(declare-fun bs!1643076 () Bool)

(assert (= bs!1643076 (and d!2032589 b!6477637)))

(assert (=> bs!1643076 (not (= lambda!358158 lambda!358130))))

(declare-fun bs!1643077 () Bool)

(assert (= bs!1643077 (and d!2032589 b!6478157)))

(assert (=> bs!1643077 (not (= lambda!358158 lambda!358148))))

(declare-fun bs!1643078 () Bool)

(assert (= bs!1643078 (and d!2032589 b!6477548)))

(assert (=> bs!1643078 (not (= lambda!358158 lambda!358118))))

(declare-fun bs!1643079 () Bool)

(assert (= bs!1643079 (and d!2032589 b!6476300)))

(assert (=> bs!1643079 (= lambda!358158 lambda!358016)))

(assert (=> bs!1643071 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358158 lambda!358127))))

(declare-fun bs!1643080 () Bool)

(assert (= bs!1643080 (and d!2032589 d!2032127)))

(assert (=> bs!1643080 (not (= lambda!358158 lambda!358115))))

(declare-fun bs!1643081 () Bool)

(assert (= bs!1643081 (and d!2032589 b!6478172)))

(assert (=> bs!1643081 (not (= lambda!358158 lambda!358152))))

(declare-fun bs!1643082 () Bool)

(assert (= bs!1643082 (and d!2032589 b!6477546)))

(assert (=> bs!1643082 (not (= lambda!358158 lambda!358117))))

(declare-fun bs!1643083 () Bool)

(assert (= bs!1643083 (and d!2032589 b!6476519)))

(assert (=> bs!1643083 (not (= lambda!358158 lambda!358035))))

(declare-fun bs!1643084 () Bool)

(assert (= bs!1643084 (and d!2032589 b!6477297)))

(assert (=> bs!1643084 (not (= lambda!358158 lambda!358103))))

(assert (=> bs!1643073 (not (= lambda!358158 lambda!358020))))

(declare-fun bs!1643085 () Bool)

(assert (= bs!1643085 (and d!2032589 d!2032041)))

(assert (=> bs!1643085 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358158 lambda!358083))))

(assert (=> bs!1643079 (not (= lambda!358158 lambda!358017))))

(declare-fun bs!1643086 () Bool)

(assert (= bs!1643086 (and d!2032589 d!2031923)))

(assert (=> bs!1643086 (= lambda!358158 lambda!358059)))

(declare-fun bs!1643087 () Bool)

(assert (= bs!1643087 (and d!2032589 d!2032379)))

(assert (=> bs!1643087 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358158 lambda!358139))))

(declare-fun bs!1643088 () Bool)

(assert (= bs!1643088 (and d!2032589 d!2032125)))

(assert (=> bs!1643088 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358158 lambda!358107))))

(declare-fun bs!1643089 () Bool)

(assert (= bs!1643089 (and d!2032589 b!6476517)))

(assert (=> bs!1643089 (not (= lambda!358158 lambda!358032))))

(assert (=> bs!1643086 (not (= lambda!358158 lambda!358062))))

(assert (=> bs!1643088 (not (= lambda!358158 lambda!358108))))

(declare-fun bs!1643090 () Bool)

(assert (= bs!1643090 (and d!2032589 b!6478174)))

(assert (=> bs!1643090 (not (= lambda!358158 lambda!358153))))

(declare-fun bs!1643091 () Bool)

(assert (= bs!1643091 (and d!2032589 b!6476306)))

(assert (=> bs!1643091 (not (= lambda!358158 lambda!358014))))

(declare-fun bs!1643092 () Bool)

(assert (= bs!1643092 (and d!2032589 d!2032037)))

(assert (=> bs!1643092 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358158 lambda!358082))))

(declare-fun bs!1643093 () Bool)

(assert (= bs!1643093 (and d!2032589 b!6477299)))

(assert (=> bs!1643093 (not (= lambda!358158 lambda!358105))))

(declare-fun bs!1643094 () Bool)

(assert (= bs!1643094 (and d!2032589 b!6477033)))

(assert (=> bs!1643094 (not (= lambda!358158 lambda!358075))))

(assert (=> bs!1643080 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358158 lambda!358114))))

(declare-fun bs!1643095 () Bool)

(assert (= bs!1643095 (and d!2032589 b!6477792)))

(assert (=> bs!1643095 (not (= lambda!358158 lambda!358133))))

(assert (=> bs!1643091 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358158 lambda!358013))))

(declare-fun bs!1643096 () Bool)

(assert (= bs!1643096 (and d!2032589 d!2031905)))

(assert (=> bs!1643096 (= lambda!358158 lambda!358052)))

(declare-fun bs!1643097 () Bool)

(assert (= bs!1643097 (and d!2032589 b!6478159)))

(assert (=> bs!1643097 (not (= lambda!358158 lambda!358149))))

(assert (=> bs!1643073 (not (= lambda!358158 lambda!358019))))

(declare-fun bs!1643098 () Bool)

(assert (= bs!1643098 (and d!2032589 b!6477794)))

(assert (=> bs!1643098 (not (= lambda!358158 lambda!358134))))

(assert (=> bs!1643085 (not (= lambda!358158 lambda!358084))))

(declare-fun bs!1643099 () Bool)

(assert (= bs!1643099 (and d!2032589 d!2032237)))

(assert (=> bs!1643099 (= lambda!358158 lambda!358122)))

(assert (=> d!2032589 true))

(assert (=> d!2032589 true))

(assert (=> d!2032589 true))

(declare-fun lambda!358159 () Int)

(assert (=> bs!1643071 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358159 lambda!358128))))

(assert (=> bs!1643072 (not (= lambda!358159 lambda!358073))))

(assert (=> bs!1643074 (not (= lambda!358159 lambda!358116))))

(assert (=> bs!1643075 (not (= lambda!358159 lambda!358129))))

(assert (=> bs!1643076 (= (and (= lt!2385664 (regOne!33222 (regTwo!33223 r!7292))) (= (regTwo!33222 r!7292) (regTwo!33222 (regTwo!33223 r!7292)))) (= lambda!358159 lambda!358130))))

(assert (=> bs!1643077 (not (= lambda!358159 lambda!358148))))

(assert (=> bs!1643078 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (regOne!33222 (regOne!33223 lt!2385664))) (= (regTwo!33222 r!7292) (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358159 lambda!358118))))

(assert (=> bs!1643079 (not (= lambda!358159 lambda!358016))))

(assert (=> bs!1643071 (not (= lambda!358159 lambda!358127))))

(assert (=> bs!1643080 (not (= lambda!358159 lambda!358115))))

(assert (=> bs!1643081 (not (= lambda!358159 lambda!358152))))

(assert (=> bs!1643082 (not (= lambda!358159 lambda!358117))))

(assert (=> bs!1643083 (= (and (= lt!2385664 (regOne!33222 lt!2385680)) (= (regTwo!33222 r!7292) (regTwo!33222 lt!2385680))) (= lambda!358159 lambda!358035))))

(assert (=> bs!1643084 (not (= lambda!358159 lambda!358103))))

(assert (=> bs!1643073 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358159 lambda!358020))))

(assert (=> bs!1643085 (not (= lambda!358159 lambda!358083))))

(assert (=> bs!1643079 (= lambda!358159 lambda!358017)))

(assert (=> bs!1643086 (not (= lambda!358159 lambda!358059))))

(assert (=> bs!1643087 (not (= lambda!358159 lambda!358139))))

(assert (=> bs!1643088 (not (= lambda!358159 lambda!358107))))

(assert (=> bs!1643089 (not (= lambda!358159 lambda!358032))))

(assert (=> bs!1643086 (= lambda!358159 lambda!358062)))

(assert (=> bs!1643088 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358159 lambda!358108))))

(assert (=> bs!1643090 (= (and (= lt!2385664 (regOne!33222 (regOne!33223 r!7292))) (= (regTwo!33222 r!7292) (regTwo!33222 (regOne!33223 r!7292)))) (= lambda!358159 lambda!358153))))

(assert (=> bs!1643073 (not (= lambda!358159 lambda!358018))))

(declare-fun bs!1643100 () Bool)

(assert (= bs!1643100 d!2032589))

(assert (=> bs!1643100 (not (= lambda!358159 lambda!358158))))

(assert (=> bs!1643091 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358159 lambda!358014))))

(assert (=> bs!1643092 (not (= lambda!358159 lambda!358082))))

(assert (=> bs!1643093 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (regOne!33222 lt!2385664)) (= (regTwo!33222 r!7292) (regTwo!33222 lt!2385664))) (= lambda!358159 lambda!358105))))

(assert (=> bs!1643094 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358159 lambda!358075))))

(assert (=> bs!1643080 (not (= lambda!358159 lambda!358114))))

(assert (=> bs!1643095 (not (= lambda!358159 lambda!358133))))

(assert (=> bs!1643091 (not (= lambda!358159 lambda!358013))))

(assert (=> bs!1643096 (not (= lambda!358159 lambda!358052))))

(assert (=> bs!1643097 (= (and (= s!2326 (_1!36637 lt!2385678)) (= lt!2385664 (regOne!33222 (regTwo!33223 lt!2385664))) (= (regTwo!33222 r!7292) (regTwo!33222 (regTwo!33223 lt!2385664)))) (= lambda!358159 lambda!358149))))

(assert (=> bs!1643073 (not (= lambda!358159 lambda!358019))))

(assert (=> bs!1643098 (= (and (= lt!2385664 (regOne!33222 (regTwo!33223 lt!2385680))) (= (regTwo!33222 r!7292) (regTwo!33222 (regTwo!33223 lt!2385680)))) (= lambda!358159 lambda!358134))))

(assert (=> bs!1643085 (= (= lt!2385664 (regOne!33222 r!7292)) (= lambda!358159 lambda!358084))))

(assert (=> bs!1643099 (not (= lambda!358159 lambda!358122))))

(assert (=> d!2032589 true))

(assert (=> d!2032589 true))

(assert (=> d!2032589 true))

(assert (=> d!2032589 (= (Exists!3425 lambda!358158) (Exists!3425 lambda!358159))))

(assert (=> d!2032589 true))

(declare-fun _$90!2333 () Unit!158751)

(assert (=> d!2032589 (= (choose!48006 lt!2385664 (regTwo!33222 r!7292) s!2326) _$90!2333)))

(declare-fun m!7266670 () Bool)

(assert (=> bs!1643100 m!7266670))

(declare-fun m!7266672 () Bool)

(assert (=> bs!1643100 m!7266672))

(assert (=> d!2031923 d!2032589))

(assert (=> d!2031923 d!2032177))

(assert (=> d!2032155 d!2032211))

(declare-fun bs!1643101 () Bool)

(declare-fun d!2032591 () Bool)

(assert (= bs!1643101 (and d!2032591 d!2032245)))

(declare-fun lambda!358160 () Int)

(assert (=> bs!1643101 (not (= lambda!358160 lambda!358128))))

(declare-fun bs!1643102 () Bool)

(assert (= bs!1643102 (and d!2032591 b!6477031)))

(assert (=> bs!1643102 (not (= lambda!358160 lambda!358073))))

(declare-fun bs!1643103 () Bool)

(assert (= bs!1643103 (and d!2032591 b!6477635)))

(assert (=> bs!1643103 (not (= lambda!358160 lambda!358129))))

(declare-fun bs!1643104 () Bool)

(assert (= bs!1643104 (and d!2032591 b!6477637)))

(assert (=> bs!1643104 (not (= lambda!358160 lambda!358130))))

(declare-fun bs!1643105 () Bool)

(assert (= bs!1643105 (and d!2032591 b!6478157)))

(assert (=> bs!1643105 (not (= lambda!358160 lambda!358148))))

(declare-fun bs!1643106 () Bool)

(assert (= bs!1643106 (and d!2032591 b!6477548)))

(assert (=> bs!1643106 (not (= lambda!358160 lambda!358118))))

(declare-fun bs!1643107 () Bool)

(assert (= bs!1643107 (and d!2032591 b!6476300)))

(assert (=> bs!1643107 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358016))))

(assert (=> bs!1643101 (= lambda!358160 lambda!358127)))

(declare-fun bs!1643108 () Bool)

(assert (= bs!1643108 (and d!2032591 d!2032127)))

(assert (=> bs!1643108 (not (= lambda!358160 lambda!358115))))

(declare-fun bs!1643109 () Bool)

(assert (= bs!1643109 (and d!2032591 b!6478172)))

(assert (=> bs!1643109 (not (= lambda!358160 lambda!358152))))

(declare-fun bs!1643110 () Bool)

(assert (= bs!1643110 (and d!2032591 b!6477546)))

(assert (=> bs!1643110 (not (= lambda!358160 lambda!358117))))

(declare-fun bs!1643111 () Bool)

(assert (= bs!1643111 (and d!2032591 b!6476519)))

(assert (=> bs!1643111 (not (= lambda!358160 lambda!358035))))

(declare-fun bs!1643112 () Bool)

(assert (= bs!1643112 (and d!2032591 b!6477297)))

(assert (=> bs!1643112 (not (= lambda!358160 lambda!358103))))

(declare-fun bs!1643113 () Bool)

(assert (= bs!1643113 (and d!2032591 b!6476331)))

(assert (=> bs!1643113 (not (= lambda!358160 lambda!358020))))

(declare-fun bs!1643114 () Bool)

(assert (= bs!1643114 (and d!2032591 d!2032041)))

(assert (=> bs!1643114 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358083))))

(assert (=> bs!1643107 (not (= lambda!358160 lambda!358017))))

(declare-fun bs!1643115 () Bool)

(assert (= bs!1643115 (and d!2032591 d!2031923)))

(assert (=> bs!1643115 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358059))))

(declare-fun bs!1643116 () Bool)

(assert (= bs!1643116 (and d!2032591 d!2032379)))

(assert (=> bs!1643116 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358139))))

(declare-fun bs!1643117 () Bool)

(assert (= bs!1643117 (and d!2032591 d!2032125)))

(assert (=> bs!1643117 (= lambda!358160 lambda!358107)))

(declare-fun bs!1643118 () Bool)

(assert (= bs!1643118 (and d!2032591 b!6476517)))

(assert (=> bs!1643118 (not (= lambda!358160 lambda!358032))))

(assert (=> bs!1643115 (not (= lambda!358160 lambda!358062))))

(assert (=> bs!1643117 (not (= lambda!358160 lambda!358108))))

(declare-fun bs!1643119 () Bool)

(assert (= bs!1643119 (and d!2032591 b!6478174)))

(assert (=> bs!1643119 (not (= lambda!358160 lambda!358153))))

(assert (=> bs!1643113 (= lambda!358160 lambda!358018)))

(declare-fun bs!1643120 () Bool)

(assert (= bs!1643120 (and d!2032591 d!2032589)))

(assert (=> bs!1643120 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358158))))

(declare-fun bs!1643121 () Bool)

(assert (= bs!1643121 (and d!2032591 b!6476306)))

(assert (=> bs!1643121 (not (= lambda!358160 lambda!358014))))

(declare-fun bs!1643122 () Bool)

(assert (= bs!1643122 (and d!2032591 d!2032037)))

(assert (=> bs!1643122 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358082))))

(declare-fun bs!1643123 () Bool)

(assert (= bs!1643123 (and d!2032591 b!6477299)))

(assert (=> bs!1643123 (not (= lambda!358160 lambda!358105))))

(declare-fun bs!1643124 () Bool)

(assert (= bs!1643124 (and d!2032591 b!6477033)))

(assert (=> bs!1643124 (not (= lambda!358160 lambda!358075))))

(assert (=> bs!1643108 (= (= lt!2385664 (Star!16355 (reg!16684 (regOne!33222 r!7292)))) (= lambda!358160 lambda!358114))))

(declare-fun bs!1643125 () Bool)

(assert (= bs!1643125 (and d!2032591 d!2032155)))

(assert (=> bs!1643125 (= lambda!358160 lambda!358116)))

(assert (=> bs!1643120 (not (= lambda!358160 lambda!358159))))

(declare-fun bs!1643126 () Bool)

(assert (= bs!1643126 (and d!2032591 b!6477792)))

(assert (=> bs!1643126 (not (= lambda!358160 lambda!358133))))

(assert (=> bs!1643121 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358013))))

(declare-fun bs!1643127 () Bool)

(assert (= bs!1643127 (and d!2032591 d!2031905)))

(assert (=> bs!1643127 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358052))))

(declare-fun bs!1643128 () Bool)

(assert (= bs!1643128 (and d!2032591 b!6478159)))

(assert (=> bs!1643128 (not (= lambda!358160 lambda!358149))))

(assert (=> bs!1643113 (not (= lambda!358160 lambda!358019))))

(declare-fun bs!1643129 () Bool)

(assert (= bs!1643129 (and d!2032591 b!6477794)))

(assert (=> bs!1643129 (not (= lambda!358160 lambda!358134))))

(assert (=> bs!1643114 (not (= lambda!358160 lambda!358084))))

(declare-fun bs!1643130 () Bool)

(assert (= bs!1643130 (and d!2032591 d!2032237)))

(assert (=> bs!1643130 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= lt!2385664 (regTwo!33222 r!7292))) (= lambda!358160 lambda!358122))))

(assert (=> d!2032591 true))

(assert (=> d!2032591 true))

(assert (=> d!2032591 true))

(assert (=> d!2032591 (= (isDefined!12949 (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 Nil!65240 (_1!36637 lt!2385678) (_1!36637 lt!2385678))) (Exists!3425 lambda!358160))))

(assert (=> d!2032591 true))

(declare-fun _$89!2712 () Unit!158751)

(assert (=> d!2032591 (= (choose!48005 (reg!16684 (regOne!33222 r!7292)) lt!2385664 (_1!36637 lt!2385678)) _$89!2712)))

(declare-fun bs!1643131 () Bool)

(assert (= bs!1643131 d!2032591))

(assert (=> bs!1643131 m!7264660))

(assert (=> bs!1643131 m!7264660))

(assert (=> bs!1643131 m!7265740))

(declare-fun m!7266674 () Bool)

(assert (=> bs!1643131 m!7266674))

(assert (=> d!2032155 d!2032591))

(assert (=> d!2032155 d!2032147))

(declare-fun d!2032593 () Bool)

(assert (=> d!2032593 (= (Exists!3425 lambda!358116) (choose!48008 lambda!358116))))

(declare-fun bs!1643132 () Bool)

(assert (= bs!1643132 d!2032593))

(declare-fun m!7266676 () Bool)

(assert (=> bs!1643132 m!7266676))

(assert (=> d!2032155 d!2032593))

(declare-fun d!2032595 () Bool)

(assert (=> d!2032595 (= (isDefined!12949 (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 Nil!65240 (_1!36637 lt!2385678) (_1!36637 lt!2385678))) (not (isEmpty!37425 (findConcatSeparation!2660 (reg!16684 (regOne!33222 r!7292)) lt!2385664 Nil!65240 (_1!36637 lt!2385678) (_1!36637 lt!2385678)))))))

(declare-fun bs!1643133 () Bool)

(assert (= bs!1643133 d!2032595))

(assert (=> bs!1643133 m!7264660))

(declare-fun m!7266678 () Bool)

(assert (=> bs!1643133 m!7266678))

(assert (=> d!2032155 d!2032595))

(assert (=> d!2031897 d!2032305))

(assert (=> d!2032161 d!2032165))

(assert (=> d!2032161 d!2032163))

(declare-fun d!2032597 () Bool)

(declare-fun e!3926817 () Bool)

(assert (=> d!2032597 (= (matchZipper!2367 ((_ map or) lt!2385694 lt!2385659) (t!378988 s!2326)) e!3926817)))

(declare-fun res!2659990 () Bool)

(assert (=> d!2032597 (=> res!2659990 e!3926817)))

(assert (=> d!2032597 (= res!2659990 (matchZipper!2367 lt!2385694 (t!378988 s!2326)))))

(assert (=> d!2032597 true))

(declare-fun _$48!2237 () Unit!158751)

(assert (=> d!2032597 (= (choose!48020 lt!2385694 lt!2385659 (t!378988 s!2326)) _$48!2237)))

(declare-fun b!6478248 () Bool)

(assert (=> b!6478248 (= e!3926817 (matchZipper!2367 lt!2385659 (t!378988 s!2326)))))

(assert (= (and d!2032597 (not res!2659990)) b!6478248))

(assert (=> d!2032597 m!7264560))

(assert (=> d!2032597 m!7264558))

(assert (=> b!6478248 m!7264600))

(assert (=> d!2032161 d!2032597))

(declare-fun b!6478249 () Bool)

(declare-fun e!3926824 () Bool)

(assert (=> b!6478249 (= e!3926824 (not (= (head!13189 (tail!12274 (_1!36637 lt!2385692))) (c!1186089 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692)))))))))

(declare-fun b!6478250 () Bool)

(declare-fun res!2659993 () Bool)

(declare-fun e!3926818 () Bool)

(assert (=> b!6478250 (=> res!2659993 e!3926818)))

(assert (=> b!6478250 (= res!2659993 (not ((_ is ElementMatch!16355) (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692))))))))

(declare-fun e!3926821 () Bool)

(assert (=> b!6478250 (= e!3926821 e!3926818)))

(declare-fun b!6478251 () Bool)

(declare-fun e!3926823 () Bool)

(declare-fun lt!2385939 () Bool)

(declare-fun call!560642 () Bool)

(assert (=> b!6478251 (= e!3926823 (= lt!2385939 call!560642))))

(declare-fun b!6478252 () Bool)

(declare-fun e!3926819 () Bool)

(assert (=> b!6478252 (= e!3926819 (= (head!13189 (tail!12274 (_1!36637 lt!2385692))) (c!1186089 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692))))))))

(declare-fun b!6478253 () Bool)

(declare-fun res!2659996 () Bool)

(assert (=> b!6478253 (=> (not res!2659996) (not e!3926819))))

(assert (=> b!6478253 (= res!2659996 (not call!560642))))

(declare-fun d!2032599 () Bool)

(assert (=> d!2032599 e!3926823))

(declare-fun c!1186623 () Bool)

(assert (=> d!2032599 (= c!1186623 ((_ is EmptyExpr!16355) (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692)))))))

(declare-fun e!3926822 () Bool)

(assert (=> d!2032599 (= lt!2385939 e!3926822)))

(declare-fun c!1186625 () Bool)

(assert (=> d!2032599 (= c!1186625 (isEmpty!37424 (tail!12274 (_1!36637 lt!2385692))))))

(assert (=> d!2032599 (validRegex!8091 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692))))))

(assert (=> d!2032599 (= (matchR!8538 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692))) (tail!12274 (_1!36637 lt!2385692))) lt!2385939)))

(declare-fun b!6478254 () Bool)

(declare-fun res!2659998 () Bool)

(assert (=> b!6478254 (=> res!2659998 e!3926818)))

(assert (=> b!6478254 (= res!2659998 e!3926819)))

(declare-fun res!2659991 () Bool)

(assert (=> b!6478254 (=> (not res!2659991) (not e!3926819))))

(assert (=> b!6478254 (= res!2659991 lt!2385939)))

(declare-fun b!6478255 () Bool)

(declare-fun e!3926820 () Bool)

(assert (=> b!6478255 (= e!3926818 e!3926820)))

(declare-fun res!2659997 () Bool)

(assert (=> b!6478255 (=> (not res!2659997) (not e!3926820))))

(assert (=> b!6478255 (= res!2659997 (not lt!2385939))))

(declare-fun b!6478256 () Bool)

(declare-fun res!2659994 () Bool)

(assert (=> b!6478256 (=> res!2659994 e!3926824)))

(assert (=> b!6478256 (= res!2659994 (not (isEmpty!37424 (tail!12274 (tail!12274 (_1!36637 lt!2385692))))))))

(declare-fun b!6478257 () Bool)

(assert (=> b!6478257 (= e!3926822 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692))) (head!13189 (tail!12274 (_1!36637 lt!2385692)))) (tail!12274 (tail!12274 (_1!36637 lt!2385692)))))))

(declare-fun bm!560637 () Bool)

(assert (=> bm!560637 (= call!560642 (isEmpty!37424 (tail!12274 (_1!36637 lt!2385692))))))

(declare-fun b!6478258 () Bool)

(assert (=> b!6478258 (= e!3926820 e!3926824)))

(declare-fun res!2659995 () Bool)

(assert (=> b!6478258 (=> res!2659995 e!3926824)))

(assert (=> b!6478258 (= res!2659995 call!560642)))

(declare-fun b!6478259 () Bool)

(assert (=> b!6478259 (= e!3926823 e!3926821)))

(declare-fun c!1186624 () Bool)

(assert (=> b!6478259 (= c!1186624 ((_ is EmptyLang!16355) (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692)))))))

(declare-fun b!6478260 () Bool)

(declare-fun res!2659992 () Bool)

(assert (=> b!6478260 (=> (not res!2659992) (not e!3926819))))

(assert (=> b!6478260 (= res!2659992 (isEmpty!37424 (tail!12274 (tail!12274 (_1!36637 lt!2385692)))))))

(declare-fun b!6478261 () Bool)

(assert (=> b!6478261 (= e!3926822 (nullable!6348 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692)))))))

(declare-fun b!6478262 () Bool)

(assert (=> b!6478262 (= e!3926821 (not lt!2385939))))

(assert (= (and d!2032599 c!1186625) b!6478261))

(assert (= (and d!2032599 (not c!1186625)) b!6478257))

(assert (= (and d!2032599 c!1186623) b!6478251))

(assert (= (and d!2032599 (not c!1186623)) b!6478259))

(assert (= (and b!6478259 c!1186624) b!6478262))

(assert (= (and b!6478259 (not c!1186624)) b!6478250))

(assert (= (and b!6478250 (not res!2659993)) b!6478254))

(assert (= (and b!6478254 res!2659991) b!6478253))

(assert (= (and b!6478253 res!2659996) b!6478260))

(assert (= (and b!6478260 res!2659992) b!6478252))

(assert (= (and b!6478254 (not res!2659998)) b!6478255))

(assert (= (and b!6478255 res!2659997) b!6478258))

(assert (= (and b!6478258 (not res!2659995)) b!6478256))

(assert (= (and b!6478256 (not res!2659994)) b!6478249))

(assert (= (or b!6478251 b!6478258 b!6478253) bm!560637))

(assert (=> d!2032599 m!7264930))

(assert (=> d!2032599 m!7265376))

(assert (=> d!2032599 m!7265372))

(declare-fun m!7266680 () Bool)

(assert (=> d!2032599 m!7266680))

(assert (=> b!6478257 m!7264930))

(assert (=> b!6478257 m!7266312))

(assert (=> b!6478257 m!7265372))

(assert (=> b!6478257 m!7266312))

(declare-fun m!7266682 () Bool)

(assert (=> b!6478257 m!7266682))

(assert (=> b!6478257 m!7264930))

(assert (=> b!6478257 m!7266316))

(assert (=> b!6478257 m!7266682))

(assert (=> b!6478257 m!7266316))

(declare-fun m!7266684 () Bool)

(assert (=> b!6478257 m!7266684))

(assert (=> bm!560637 m!7264930))

(assert (=> bm!560637 m!7265376))

(assert (=> b!6478256 m!7264930))

(assert (=> b!6478256 m!7266316))

(assert (=> b!6478256 m!7266316))

(declare-fun m!7266686 () Bool)

(assert (=> b!6478256 m!7266686))

(assert (=> b!6478252 m!7264930))

(assert (=> b!6478252 m!7266312))

(assert (=> b!6478260 m!7264930))

(assert (=> b!6478260 m!7266316))

(assert (=> b!6478260 m!7266316))

(assert (=> b!6478260 m!7266686))

(assert (=> b!6478249 m!7264930))

(assert (=> b!6478249 m!7266312))

(assert (=> b!6478261 m!7265372))

(declare-fun m!7266688 () Bool)

(assert (=> b!6478261 m!7266688))

(assert (=> b!6477087 d!2032599))

(declare-fun e!3926825 () Regex!16355)

(declare-fun call!560644 () Regex!16355)

(declare-fun call!560645 () Regex!16355)

(declare-fun b!6478263 () Bool)

(assert (=> b!6478263 (= e!3926825 (Union!16355 (Concat!25200 call!560644 (regTwo!33222 (reg!16684 (regOne!33222 r!7292)))) call!560645))))

(declare-fun bm!560638 () Bool)

(declare-fun call!560646 () Regex!16355)

(assert (=> bm!560638 (= call!560645 call!560646)))

(declare-fun b!6478264 () Bool)

(declare-fun c!1186629 () Bool)

(assert (=> b!6478264 (= c!1186629 (nullable!6348 (regOne!33222 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun e!3926827 () Regex!16355)

(assert (=> b!6478264 (= e!3926827 e!3926825)))

(declare-fun bm!560639 () Bool)

(declare-fun c!1186626 () Bool)

(declare-fun call!560643 () Regex!16355)

(declare-fun c!1186628 () Bool)

(assert (=> bm!560639 (= call!560643 (derivativeStep!5053 (ite c!1186626 (regTwo!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186628 (reg!16684 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (head!13189 (_1!36637 lt!2385692))))))

(declare-fun b!6478265 () Bool)

(assert (=> b!6478265 (= c!1186626 ((_ is Union!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun e!3926828 () Regex!16355)

(declare-fun e!3926829 () Regex!16355)

(assert (=> b!6478265 (= e!3926828 e!3926829)))

(declare-fun b!6478266 () Bool)

(assert (=> b!6478266 (= e!3926828 (ite (= (head!13189 (_1!36637 lt!2385692)) (c!1186089 (reg!16684 (regOne!33222 r!7292)))) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560640 () Bool)

(assert (=> bm!560640 (= call!560644 call!560643)))

(declare-fun b!6478267 () Bool)

(assert (=> b!6478267 (= e!3926829 e!3926827)))

(assert (=> b!6478267 (= c!1186628 ((_ is Star!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6478268 () Bool)

(assert (=> b!6478268 (= e!3926827 (Concat!25200 call!560644 (reg!16684 (regOne!33222 r!7292))))))

(declare-fun bm!560641 () Bool)

(assert (=> bm!560641 (= call!560646 (derivativeStep!5053 (ite c!1186626 (regOne!33223 (reg!16684 (regOne!33222 r!7292))) (ite c!1186629 (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (regOne!33222 (reg!16684 (regOne!33222 r!7292))))) (head!13189 (_1!36637 lt!2385692))))))

(declare-fun b!6478269 () Bool)

(assert (=> b!6478269 (= e!3926825 (Union!16355 (Concat!25200 call!560645 (regTwo!33222 (reg!16684 (regOne!33222 r!7292)))) EmptyLang!16355))))

(declare-fun b!6478270 () Bool)

(assert (=> b!6478270 (= e!3926829 (Union!16355 call!560646 call!560643))))

(declare-fun d!2032601 () Bool)

(declare-fun lt!2385940 () Regex!16355)

(assert (=> d!2032601 (validRegex!8091 lt!2385940)))

(declare-fun e!3926826 () Regex!16355)

(assert (=> d!2032601 (= lt!2385940 e!3926826)))

(declare-fun c!1186630 () Bool)

(assert (=> d!2032601 (= c!1186630 (or ((_ is EmptyExpr!16355) (reg!16684 (regOne!33222 r!7292))) ((_ is EmptyLang!16355) (reg!16684 (regOne!33222 r!7292)))))))

(assert (=> d!2032601 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032601 (= (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 lt!2385692))) lt!2385940)))

(declare-fun b!6478271 () Bool)

(assert (=> b!6478271 (= e!3926826 e!3926828)))

(declare-fun c!1186627 () Bool)

(assert (=> b!6478271 (= c!1186627 ((_ is ElementMatch!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6478272 () Bool)

(assert (=> b!6478272 (= e!3926826 EmptyLang!16355)))

(assert (= (and d!2032601 c!1186630) b!6478272))

(assert (= (and d!2032601 (not c!1186630)) b!6478271))

(assert (= (and b!6478271 c!1186627) b!6478266))

(assert (= (and b!6478271 (not c!1186627)) b!6478265))

(assert (= (and b!6478265 c!1186626) b!6478270))

(assert (= (and b!6478265 (not c!1186626)) b!6478267))

(assert (= (and b!6478267 c!1186628) b!6478268))

(assert (= (and b!6478267 (not c!1186628)) b!6478264))

(assert (= (and b!6478264 c!1186629) b!6478263))

(assert (= (and b!6478264 (not c!1186629)) b!6478269))

(assert (= (or b!6478263 b!6478269) bm!560638))

(assert (= (or b!6478268 b!6478263) bm!560640))

(assert (= (or b!6478270 bm!560640) bm!560639))

(assert (= (or b!6478270 bm!560638) bm!560641))

(assert (=> b!6478264 m!7265208))

(assert (=> bm!560639 m!7264926))

(declare-fun m!7266690 () Bool)

(assert (=> bm!560639 m!7266690))

(assert (=> bm!560641 m!7264926))

(declare-fun m!7266692 () Bool)

(assert (=> bm!560641 m!7266692))

(declare-fun m!7266694 () Bool)

(assert (=> d!2032601 m!7266694))

(assert (=> d!2032601 m!7264888))

(assert (=> b!6477087 d!2032601))

(assert (=> b!6477087 d!2032355))

(assert (=> b!6477087 d!2032297))

(assert (=> d!2031983 d!2032273))

(assert (=> d!2031983 d!2032077))

(declare-fun b!6478273 () Bool)

(declare-fun e!3926832 () Bool)

(declare-fun e!3926833 () Bool)

(assert (=> b!6478273 (= e!3926832 e!3926833)))

(declare-fun res!2660003 () Bool)

(assert (=> b!6478273 (= res!2660003 (not (nullable!6348 (reg!16684 lt!2385834))))))

(assert (=> b!6478273 (=> (not res!2660003) (not e!3926833))))

(declare-fun b!6478274 () Bool)

(declare-fun e!3926834 () Bool)

(declare-fun call!560647 () Bool)

(assert (=> b!6478274 (= e!3926834 call!560647)))

(declare-fun b!6478275 () Bool)

(declare-fun e!3926830 () Bool)

(assert (=> b!6478275 (= e!3926830 e!3926832)))

(declare-fun c!1186632 () Bool)

(assert (=> b!6478275 (= c!1186632 ((_ is Star!16355) lt!2385834))))

(declare-fun b!6478276 () Bool)

(declare-fun e!3926836 () Bool)

(assert (=> b!6478276 (= e!3926836 call!560647)))

(declare-fun b!6478277 () Bool)

(declare-fun e!3926835 () Bool)

(assert (=> b!6478277 (= e!3926835 e!3926834)))

(declare-fun res!2659999 () Bool)

(assert (=> b!6478277 (=> (not res!2659999) (not e!3926834))))

(declare-fun call!560649 () Bool)

(assert (=> b!6478277 (= res!2659999 call!560649)))

(declare-fun bm!560642 () Bool)

(declare-fun c!1186631 () Bool)

(assert (=> bm!560642 (= call!560649 (validRegex!8091 (ite c!1186631 (regOne!33223 lt!2385834) (regOne!33222 lt!2385834))))))

(declare-fun bm!560643 () Bool)

(declare-fun call!560648 () Bool)

(assert (=> bm!560643 (= call!560647 call!560648)))

(declare-fun b!6478278 () Bool)

(assert (=> b!6478278 (= e!3926833 call!560648)))

(declare-fun bm!560644 () Bool)

(assert (=> bm!560644 (= call!560648 (validRegex!8091 (ite c!1186632 (reg!16684 lt!2385834) (ite c!1186631 (regTwo!33223 lt!2385834) (regTwo!33222 lt!2385834)))))))

(declare-fun b!6478279 () Bool)

(declare-fun res!2660002 () Bool)

(assert (=> b!6478279 (=> (not res!2660002) (not e!3926836))))

(assert (=> b!6478279 (= res!2660002 call!560649)))

(declare-fun e!3926831 () Bool)

(assert (=> b!6478279 (= e!3926831 e!3926836)))

(declare-fun d!2032603 () Bool)

(declare-fun res!2660001 () Bool)

(assert (=> d!2032603 (=> res!2660001 e!3926830)))

(assert (=> d!2032603 (= res!2660001 ((_ is ElementMatch!16355) lt!2385834))))

(assert (=> d!2032603 (= (validRegex!8091 lt!2385834) e!3926830)))

(declare-fun b!6478280 () Bool)

(assert (=> b!6478280 (= e!3926832 e!3926831)))

(assert (=> b!6478280 (= c!1186631 ((_ is Union!16355) lt!2385834))))

(declare-fun b!6478281 () Bool)

(declare-fun res!2660000 () Bool)

(assert (=> b!6478281 (=> res!2660000 e!3926835)))

(assert (=> b!6478281 (= res!2660000 (not ((_ is Concat!25200) lt!2385834)))))

(assert (=> b!6478281 (= e!3926831 e!3926835)))

(assert (= (and d!2032603 (not res!2660001)) b!6478275))

(assert (= (and b!6478275 c!1186632) b!6478273))

(assert (= (and b!6478275 (not c!1186632)) b!6478280))

(assert (= (and b!6478273 res!2660003) b!6478278))

(assert (= (and b!6478280 c!1186631) b!6478279))

(assert (= (and b!6478280 (not c!1186631)) b!6478281))

(assert (= (and b!6478279 res!2660002) b!6478276))

(assert (= (and b!6478281 (not res!2660000)) b!6478277))

(assert (= (and b!6478277 res!2659999) b!6478274))

(assert (= (or b!6478276 b!6478274) bm!560643))

(assert (= (or b!6478279 b!6478277) bm!560642))

(assert (= (or b!6478278 bm!560643) bm!560644))

(declare-fun m!7266696 () Bool)

(assert (=> b!6478273 m!7266696))

(declare-fun m!7266698 () Bool)

(assert (=> bm!560642 m!7266698))

(declare-fun m!7266700 () Bool)

(assert (=> bm!560644 m!7266700))

(assert (=> d!2032063 d!2032603))

(declare-fun bs!1643134 () Bool)

(declare-fun d!2032605 () Bool)

(assert (= bs!1643134 (and d!2032605 d!2032517)))

(declare-fun lambda!358161 () Int)

(assert (=> bs!1643134 (= lambda!358161 lambda!358147)))

(declare-fun bs!1643135 () Bool)

(assert (= bs!1643135 (and d!2032605 d!2032083)))

(assert (=> bs!1643135 (= lambda!358161 lambda!358095)))

(declare-fun bs!1643136 () Bool)

(assert (= bs!1643136 (and d!2032605 d!2031879)))

(assert (=> bs!1643136 (= lambda!358161 lambda!358039)))

(declare-fun bs!1643137 () Bool)

(assert (= bs!1643137 (and d!2032605 d!2032223)))

(assert (=> bs!1643137 (= lambda!358161 lambda!358119)))

(declare-fun bs!1643138 () Bool)

(assert (= bs!1643138 (and d!2032605 d!2031899)))

(assert (=> bs!1643138 (= lambda!358161 lambda!358049)))

(declare-fun bs!1643139 () Bool)

(assert (= bs!1643139 (and d!2032605 d!2032549)))

(assert (=> bs!1643139 (= lambda!358161 lambda!358151)))

(declare-fun bs!1643140 () Bool)

(assert (= bs!1643140 (and d!2032605 d!2032101)))

(assert (=> bs!1643140 (= lambda!358161 lambda!358101)))

(declare-fun bs!1643141 () Bool)

(assert (= bs!1643141 (and d!2032605 d!2032515)))

(assert (=> bs!1643141 (= lambda!358161 lambda!358146)))

(declare-fun bs!1643142 () Bool)

(assert (= bs!1643142 (and d!2032605 d!2032085)))

(assert (=> bs!1643142 (= lambda!358161 lambda!358099)))

(declare-fun bs!1643143 () Bool)

(assert (= bs!1643143 (and d!2032605 d!2032493)))

(assert (=> bs!1643143 (= lambda!358161 lambda!358144)))

(declare-fun bs!1643144 () Bool)

(assert (= bs!1643144 (and d!2032605 d!2032561)))

(assert (=> bs!1643144 (= lambda!358161 lambda!358154)))

(declare-fun bs!1643145 () Bool)

(assert (= bs!1643145 (and d!2032605 d!2032565)))

(assert (=> bs!1643145 (= lambda!358161 lambda!358155)))

(declare-fun bs!1643146 () Bool)

(assert (= bs!1643146 (and d!2032605 d!2031887)))

(assert (=> bs!1643146 (= lambda!358161 lambda!358048)))

(declare-fun b!6478283 () Bool)

(declare-fun e!3926839 () Bool)

(assert (=> b!6478283 (= e!3926839 (isEmpty!37422 (t!378989 (unfocusZipperList!1776 lt!2385642))))))

(declare-fun b!6478284 () Bool)

(declare-fun e!3926837 () Bool)

(declare-fun e!3926841 () Bool)

(assert (=> b!6478284 (= e!3926837 e!3926841)))

(declare-fun c!1186636 () Bool)

(assert (=> b!6478284 (= c!1186636 (isEmpty!37422 (unfocusZipperList!1776 lt!2385642)))))

(declare-fun b!6478285 () Bool)

(declare-fun e!3926838 () Regex!16355)

(assert (=> b!6478285 (= e!3926838 (Union!16355 (h!71689 (unfocusZipperList!1776 lt!2385642)) (generalisedUnion!2199 (t!378989 (unfocusZipperList!1776 lt!2385642)))))))

(declare-fun b!6478286 () Bool)

(declare-fun e!3926840 () Bool)

(declare-fun lt!2385941 () Regex!16355)

(assert (=> b!6478286 (= e!3926840 (= lt!2385941 (head!13190 (unfocusZipperList!1776 lt!2385642))))))

(declare-fun b!6478287 () Bool)

(assert (=> b!6478287 (= e!3926841 e!3926840)))

(declare-fun c!1186633 () Bool)

(assert (=> b!6478287 (= c!1186633 (isEmpty!37422 (tail!12275 (unfocusZipperList!1776 lt!2385642))))))

(declare-fun b!6478288 () Bool)

(assert (=> b!6478288 (= e!3926840 (isUnion!1187 lt!2385941))))

(declare-fun b!6478289 () Bool)

(assert (=> b!6478289 (= e!3926838 EmptyLang!16355)))

(declare-fun b!6478282 () Bool)

(declare-fun e!3926842 () Regex!16355)

(assert (=> b!6478282 (= e!3926842 (h!71689 (unfocusZipperList!1776 lt!2385642)))))

(assert (=> d!2032605 e!3926837))

(declare-fun res!2660005 () Bool)

(assert (=> d!2032605 (=> (not res!2660005) (not e!3926837))))

(assert (=> d!2032605 (= res!2660005 (validRegex!8091 lt!2385941))))

(assert (=> d!2032605 (= lt!2385941 e!3926842)))

(declare-fun c!1186635 () Bool)

(assert (=> d!2032605 (= c!1186635 e!3926839)))

(declare-fun res!2660004 () Bool)

(assert (=> d!2032605 (=> (not res!2660004) (not e!3926839))))

(assert (=> d!2032605 (= res!2660004 ((_ is Cons!65241) (unfocusZipperList!1776 lt!2385642)))))

(assert (=> d!2032605 (forall!15540 (unfocusZipperList!1776 lt!2385642) lambda!358161)))

(assert (=> d!2032605 (= (generalisedUnion!2199 (unfocusZipperList!1776 lt!2385642)) lt!2385941)))

(declare-fun b!6478290 () Bool)

(assert (=> b!6478290 (= e!3926842 e!3926838)))

(declare-fun c!1186634 () Bool)

(assert (=> b!6478290 (= c!1186634 ((_ is Cons!65241) (unfocusZipperList!1776 lt!2385642)))))

(declare-fun b!6478291 () Bool)

(assert (=> b!6478291 (= e!3926841 (isEmptyLang!1757 lt!2385941))))

(assert (= (and d!2032605 res!2660004) b!6478283))

(assert (= (and d!2032605 c!1186635) b!6478282))

(assert (= (and d!2032605 (not c!1186635)) b!6478290))

(assert (= (and b!6478290 c!1186634) b!6478285))

(assert (= (and b!6478290 (not c!1186634)) b!6478289))

(assert (= (and d!2032605 res!2660005) b!6478284))

(assert (= (and b!6478284 c!1186636) b!6478291))

(assert (= (and b!6478284 (not c!1186636)) b!6478287))

(assert (= (and b!6478287 c!1186633) b!6478286))

(assert (= (and b!6478287 (not c!1186633)) b!6478288))

(declare-fun m!7266702 () Bool)

(assert (=> b!6478291 m!7266702))

(assert (=> b!6478286 m!7265508))

(declare-fun m!7266704 () Bool)

(assert (=> b!6478286 m!7266704))

(declare-fun m!7266706 () Bool)

(assert (=> b!6478283 m!7266706))

(declare-fun m!7266708 () Bool)

(assert (=> b!6478288 m!7266708))

(assert (=> b!6478287 m!7265508))

(declare-fun m!7266710 () Bool)

(assert (=> b!6478287 m!7266710))

(assert (=> b!6478287 m!7266710))

(declare-fun m!7266712 () Bool)

(assert (=> b!6478287 m!7266712))

(assert (=> b!6478284 m!7265508))

(declare-fun m!7266714 () Bool)

(assert (=> b!6478284 m!7266714))

(declare-fun m!7266716 () Bool)

(assert (=> b!6478285 m!7266716))

(declare-fun m!7266718 () Bool)

(assert (=> d!2032605 m!7266718))

(assert (=> d!2032605 m!7265508))

(declare-fun m!7266720 () Bool)

(assert (=> d!2032605 m!7266720))

(assert (=> d!2032063 d!2032605))

(declare-fun bs!1643147 () Bool)

(declare-fun d!2032607 () Bool)

(assert (= bs!1643147 (and d!2032607 d!2032517)))

(declare-fun lambda!358162 () Int)

(assert (=> bs!1643147 (= lambda!358162 lambda!358147)))

(declare-fun bs!1643148 () Bool)

(assert (= bs!1643148 (and d!2032607 d!2032083)))

(assert (=> bs!1643148 (= lambda!358162 lambda!358095)))

(declare-fun bs!1643149 () Bool)

(assert (= bs!1643149 (and d!2032607 d!2031879)))

(assert (=> bs!1643149 (= lambda!358162 lambda!358039)))

(declare-fun bs!1643150 () Bool)

(assert (= bs!1643150 (and d!2032607 d!2032223)))

(assert (=> bs!1643150 (= lambda!358162 lambda!358119)))

(declare-fun bs!1643151 () Bool)

(assert (= bs!1643151 (and d!2032607 d!2031899)))

(assert (=> bs!1643151 (= lambda!358162 lambda!358049)))

(declare-fun bs!1643152 () Bool)

(assert (= bs!1643152 (and d!2032607 d!2032549)))

(assert (=> bs!1643152 (= lambda!358162 lambda!358151)))

(declare-fun bs!1643153 () Bool)

(assert (= bs!1643153 (and d!2032607 d!2032101)))

(assert (=> bs!1643153 (= lambda!358162 lambda!358101)))

(declare-fun bs!1643154 () Bool)

(assert (= bs!1643154 (and d!2032607 d!2032515)))

(assert (=> bs!1643154 (= lambda!358162 lambda!358146)))

(declare-fun bs!1643155 () Bool)

(assert (= bs!1643155 (and d!2032607 d!2032085)))

(assert (=> bs!1643155 (= lambda!358162 lambda!358099)))

(declare-fun bs!1643156 () Bool)

(assert (= bs!1643156 (and d!2032607 d!2032605)))

(assert (=> bs!1643156 (= lambda!358162 lambda!358161)))

(declare-fun bs!1643157 () Bool)

(assert (= bs!1643157 (and d!2032607 d!2032493)))

(assert (=> bs!1643157 (= lambda!358162 lambda!358144)))

(declare-fun bs!1643158 () Bool)

(assert (= bs!1643158 (and d!2032607 d!2032561)))

(assert (=> bs!1643158 (= lambda!358162 lambda!358154)))

(declare-fun bs!1643159 () Bool)

(assert (= bs!1643159 (and d!2032607 d!2032565)))

(assert (=> bs!1643159 (= lambda!358162 lambda!358155)))

(declare-fun bs!1643160 () Bool)

(assert (= bs!1643160 (and d!2032607 d!2031887)))

(assert (=> bs!1643160 (= lambda!358162 lambda!358048)))

(declare-fun lt!2385942 () List!65365)

(assert (=> d!2032607 (forall!15540 lt!2385942 lambda!358162)))

(declare-fun e!3926843 () List!65365)

(assert (=> d!2032607 (= lt!2385942 e!3926843)))

(declare-fun c!1186637 () Bool)

(assert (=> d!2032607 (= c!1186637 ((_ is Cons!65242) lt!2385642))))

(assert (=> d!2032607 (= (unfocusZipperList!1776 lt!2385642) lt!2385942)))

(declare-fun b!6478292 () Bool)

(assert (=> b!6478292 (= e!3926843 (Cons!65241 (generalisedConcat!1952 (exprs!6239 (h!71690 lt!2385642))) (unfocusZipperList!1776 (t!378990 lt!2385642))))))

(declare-fun b!6478293 () Bool)

(assert (=> b!6478293 (= e!3926843 Nil!65241)))

(assert (= (and d!2032607 c!1186637) b!6478292))

(assert (= (and d!2032607 (not c!1186637)) b!6478293))

(declare-fun m!7266722 () Bool)

(assert (=> d!2032607 m!7266722))

(declare-fun m!7266724 () Bool)

(assert (=> b!6478292 m!7266724))

(declare-fun m!7266726 () Bool)

(assert (=> b!6478292 m!7266726))

(assert (=> d!2032063 d!2032607))

(declare-fun d!2032609 () Bool)

(assert (=> d!2032609 (= (nullable!6348 (regTwo!33222 r!7292)) (nullableFct!2287 (regTwo!33222 r!7292)))))

(declare-fun bs!1643161 () Bool)

(assert (= bs!1643161 d!2032609))

(declare-fun m!7266728 () Bool)

(assert (=> bs!1643161 m!7266728))

(assert (=> b!6477275 d!2032609))

(declare-fun d!2032611 () Bool)

(assert (=> d!2032611 (= (isUnion!1187 lt!2385842) ((_ is Union!16355) lt!2385842))))

(assert (=> b!6477228 d!2032611))

(assert (=> bs!1642623 d!2032069))

(declare-fun d!2032613 () Bool)

(assert (=> d!2032613 true))

(declare-fun setRes!44125 () Bool)

(assert (=> d!2032613 setRes!44125))

(declare-fun condSetEmpty!44125 () Bool)

(declare-fun res!2660006 () (InoxSet Context!11478))

(assert (=> d!2032613 (= condSetEmpty!44125 (= res!2660006 ((as const (Array Context!11478 Bool)) false)))))

(assert (=> d!2032613 (= (choose!48010 lt!2385677 lambda!358015) res!2660006)))

(declare-fun setIsEmpty!44125 () Bool)

(assert (=> setIsEmpty!44125 setRes!44125))

(declare-fun e!3926844 () Bool)

(declare-fun tp!1795049 () Bool)

(declare-fun setElem!44125 () Context!11478)

(declare-fun setNonEmpty!44125 () Bool)

(assert (=> setNonEmpty!44125 (= setRes!44125 (and tp!1795049 (inv!84134 setElem!44125) e!3926844))))

(declare-fun setRest!44125 () (InoxSet Context!11478))

(assert (=> setNonEmpty!44125 (= res!2660006 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) setElem!44125 true) setRest!44125))))

(declare-fun b!6478294 () Bool)

(declare-fun tp!1795050 () Bool)

(assert (=> b!6478294 (= e!3926844 tp!1795050)))

(assert (= (and d!2032613 condSetEmpty!44125) setIsEmpty!44125))

(assert (= (and d!2032613 (not condSetEmpty!44125)) setNonEmpty!44125))

(assert (= setNonEmpty!44125 b!6478294))

(declare-fun m!7266730 () Bool)

(assert (=> setNonEmpty!44125 m!7266730))

(assert (=> d!2032067 d!2032613))

(assert (=> d!2031877 d!2032443))

(declare-fun bm!560645 () Bool)

(declare-fun call!560650 () (InoxSet Context!11478))

(assert (=> bm!560645 (= call!560650 (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385688))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385688)))))) (h!71688 s!2326)))))

(declare-fun b!6478295 () Bool)

(declare-fun e!3926847 () Bool)

(assert (=> b!6478295 (= e!3926847 (nullable!6348 (h!71689 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385688)))))))))

(declare-fun b!6478296 () Bool)

(declare-fun e!3926845 () (InoxSet Context!11478))

(assert (=> b!6478296 (= e!3926845 call!560650)))

(declare-fun b!6478297 () Bool)

(declare-fun e!3926846 () (InoxSet Context!11478))

(assert (=> b!6478297 (= e!3926846 e!3926845)))

(declare-fun c!1186639 () Bool)

(assert (=> b!6478297 (= c!1186639 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385688))))))))

(declare-fun b!6478299 () Bool)

(assert (=> b!6478299 (= e!3926845 ((as const (Array Context!11478 Bool)) false))))

(declare-fun d!2032615 () Bool)

(declare-fun c!1186638 () Bool)

(assert (=> d!2032615 (= c!1186638 e!3926847)))

(declare-fun res!2660007 () Bool)

(assert (=> d!2032615 (=> (not res!2660007) (not e!3926847))))

(assert (=> d!2032615 (= res!2660007 ((_ is Cons!65241) (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385688))))))))

(assert (=> d!2032615 (= (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 lt!2385688))) (h!71688 s!2326)) e!3926846)))

(declare-fun b!6478298 () Bool)

(assert (=> b!6478298 (= e!3926846 ((_ map or) call!560650 (derivationStepZipperUp!1529 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385688)))))) (h!71688 s!2326))))))

(assert (= (and d!2032615 res!2660007) b!6478295))

(assert (= (and d!2032615 c!1186638) b!6478298))

(assert (= (and d!2032615 (not c!1186638)) b!6478297))

(assert (= (and b!6478297 c!1186639) b!6478296))

(assert (= (and b!6478297 (not c!1186639)) b!6478299))

(assert (= (or b!6478298 b!6478296) bm!560645))

(declare-fun m!7266732 () Bool)

(assert (=> bm!560645 m!7266732))

(declare-fun m!7266734 () Bool)

(assert (=> b!6478295 m!7266734))

(declare-fun m!7266736 () Bool)

(assert (=> b!6478298 m!7266736))

(assert (=> b!6477015 d!2032615))

(declare-fun d!2032617 () Bool)

(assert (=> d!2032617 (= (isEmpty!37422 (exprs!6239 (h!71690 zl!343))) ((_ is Nil!65241) (exprs!6239 (h!71690 zl!343))))))

(assert (=> b!6476711 d!2032617))

(assert (=> bm!560464 d!2032273))

(declare-fun c!1186641 () Bool)

(declare-fun bm!560646 () Bool)

(declare-fun call!560653 () List!65365)

(declare-fun c!1186640 () Bool)

(declare-fun call!560651 () (InoxSet Context!11478))

(declare-fun c!1186642 () Bool)

(assert (=> bm!560646 (= call!560651 (derivationStepZipperDown!1603 (ite c!1186642 (regOne!33223 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))) (ite c!1186641 (regTwo!33222 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))) (ite c!1186640 (regOne!33222 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))) (reg!16684 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343))))))))))) (ite (or c!1186642 c!1186641) (ite (or c!1186276 c!1186275) lt!2385688 (Context!11479 call!560460)) (Context!11479 call!560653)) (h!71688 s!2326)))))

(declare-fun b!6478300 () Bool)

(declare-fun e!3926852 () Bool)

(assert (=> b!6478300 (= c!1186641 e!3926852)))

(declare-fun res!2660008 () Bool)

(assert (=> b!6478300 (=> (not res!2660008) (not e!3926852))))

(assert (=> b!6478300 (= res!2660008 ((_ is Concat!25200) (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun e!3926850 () (InoxSet Context!11478))

(declare-fun e!3926849 () (InoxSet Context!11478))

(assert (=> b!6478300 (= e!3926850 e!3926849)))

(declare-fun b!6478301 () Bool)

(declare-fun c!1186644 () Bool)

(assert (=> b!6478301 (= c!1186644 ((_ is Star!16355) (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun e!3926853 () (InoxSet Context!11478))

(declare-fun e!3926851 () (InoxSet Context!11478))

(assert (=> b!6478301 (= e!3926853 e!3926851)))

(declare-fun c!1186643 () Bool)

(declare-fun d!2032619 () Bool)

(assert (=> d!2032619 (= c!1186643 (and ((_ is ElementMatch!16355) (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))) (= (c!1186089 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))) (h!71688 s!2326))))))

(declare-fun e!3926848 () (InoxSet Context!11478))

(assert (=> d!2032619 (= (derivationStepZipperDown!1603 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343))))))) (ite (or c!1186276 c!1186275) lt!2385688 (Context!11479 call!560460)) (h!71688 s!2326)) e!3926848)))

(declare-fun bm!560647 () Bool)

(declare-fun call!560656 () List!65365)

(assert (=> bm!560647 (= call!560653 call!560656)))

(declare-fun b!6478302 () Bool)

(assert (=> b!6478302 (= e!3926852 (nullable!6348 (regOne!33222 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343))))))))))))

(declare-fun b!6478303 () Bool)

(assert (=> b!6478303 (= e!3926851 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560648 () Bool)

(declare-fun call!560654 () (InoxSet Context!11478))

(declare-fun call!560655 () (InoxSet Context!11478))

(assert (=> bm!560648 (= call!560654 call!560655)))

(declare-fun b!6478304 () Bool)

(assert (=> b!6478304 (= e!3926851 call!560654)))

(declare-fun b!6478305 () Bool)

(declare-fun call!560652 () (InoxSet Context!11478))

(assert (=> b!6478305 (= e!3926850 ((_ map or) call!560651 call!560652))))

(declare-fun b!6478306 () Bool)

(assert (=> b!6478306 (= e!3926848 (store ((as const (Array Context!11478 Bool)) false) (ite (or c!1186276 c!1186275) lt!2385688 (Context!11479 call!560460)) true))))

(declare-fun b!6478307 () Bool)

(assert (=> b!6478307 (= e!3926848 e!3926850)))

(assert (=> b!6478307 (= c!1186642 ((_ is Union!16355) (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun bm!560649 () Bool)

(assert (=> bm!560649 (= call!560656 ($colon$colon!2210 (exprs!6239 (ite (or c!1186276 c!1186275) lt!2385688 (Context!11479 call!560460))) (ite (or c!1186641 c!1186640) (regTwo!33222 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))) (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343))))))))))))

(declare-fun b!6478308 () Bool)

(assert (=> b!6478308 (= e!3926849 ((_ map or) call!560652 call!560655))))

(declare-fun bm!560650 () Bool)

(assert (=> bm!560650 (= call!560655 call!560651)))

(declare-fun bm!560651 () Bool)

(assert (=> bm!560651 (= call!560652 (derivationStepZipperDown!1603 (ite c!1186642 (regTwo!33223 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))) (regOne!33222 (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343))))))))) (ite c!1186642 (ite (or c!1186276 c!1186275) lt!2385688 (Context!11479 call!560460)) (Context!11479 call!560656)) (h!71688 s!2326)))))

(declare-fun b!6478309 () Bool)

(assert (=> b!6478309 (= e!3926853 call!560654)))

(declare-fun b!6478310 () Bool)

(assert (=> b!6478310 (= e!3926849 e!3926853)))

(assert (=> b!6478310 (= c!1186640 ((_ is Concat!25200) (ite c!1186276 (regOne!33223 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186275 (regTwo!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (ite c!1186274 (regOne!33222 (h!71689 (exprs!6239 (h!71690 zl!343)))) (reg!16684 (h!71689 (exprs!6239 (h!71690 zl!343)))))))))))

(assert (= (and d!2032619 c!1186643) b!6478306))

(assert (= (and d!2032619 (not c!1186643)) b!6478307))

(assert (= (and b!6478307 c!1186642) b!6478305))

(assert (= (and b!6478307 (not c!1186642)) b!6478300))

(assert (= (and b!6478300 res!2660008) b!6478302))

(assert (= (and b!6478300 c!1186641) b!6478308))

(assert (= (and b!6478300 (not c!1186641)) b!6478310))

(assert (= (and b!6478310 c!1186640) b!6478309))

(assert (= (and b!6478310 (not c!1186640)) b!6478301))

(assert (= (and b!6478301 c!1186644) b!6478304))

(assert (= (and b!6478301 (not c!1186644)) b!6478303))

(assert (= (or b!6478309 b!6478304) bm!560647))

(assert (= (or b!6478309 b!6478304) bm!560648))

(assert (= (or b!6478308 bm!560647) bm!560649))

(assert (= (or b!6478308 bm!560648) bm!560650))

(assert (= (or b!6478305 b!6478308) bm!560651))

(assert (= (or b!6478305 bm!560650) bm!560646))

(declare-fun m!7266738 () Bool)

(assert (=> bm!560651 m!7266738))

(declare-fun m!7266740 () Bool)

(assert (=> bm!560646 m!7266740))

(declare-fun m!7266742 () Bool)

(assert (=> b!6478306 m!7266742))

(declare-fun m!7266744 () Bool)

(assert (=> b!6478302 m!7266744))

(declare-fun m!7266746 () Bool)

(assert (=> bm!560649 m!7266746))

(assert (=> bm!560453 d!2032619))

(declare-fun call!560657 () (InoxSet Context!11478))

(declare-fun c!1186646 () Bool)

(declare-fun c!1186645 () Bool)

(declare-fun call!560659 () List!65365)

(declare-fun c!1186647 () Bool)

(declare-fun bm!560652 () Bool)

(assert (=> bm!560652 (= call!560657 (derivationStepZipperDown!1603 (ite c!1186647 (regOne!33223 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (ite c!1186646 (regTwo!33222 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (ite c!1186645 (regOne!33222 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (reg!16684 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))) (ite (or c!1186647 c!1186646) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (Context!11479 call!560659)) (h!71688 s!2326)))))

(declare-fun b!6478311 () Bool)

(declare-fun e!3926858 () Bool)

(assert (=> b!6478311 (= c!1186646 e!3926858)))

(declare-fun res!2660009 () Bool)

(assert (=> b!6478311 (=> (not res!2660009) (not e!3926858))))

(assert (=> b!6478311 (= res!2660009 ((_ is Concat!25200) (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun e!3926856 () (InoxSet Context!11478))

(declare-fun e!3926855 () (InoxSet Context!11478))

(assert (=> b!6478311 (= e!3926856 e!3926855)))

(declare-fun b!6478312 () Bool)

(declare-fun c!1186649 () Bool)

(assert (=> b!6478312 (= c!1186649 ((_ is Star!16355) (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun e!3926859 () (InoxSet Context!11478))

(declare-fun e!3926857 () (InoxSet Context!11478))

(assert (=> b!6478312 (= e!3926859 e!3926857)))

(declare-fun d!2032621 () Bool)

(declare-fun c!1186648 () Bool)

(assert (=> d!2032621 (= c!1186648 (and ((_ is ElementMatch!16355) (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (= (c!1186089 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (h!71688 s!2326))))))

(declare-fun e!3926854 () (InoxSet Context!11478))

(assert (=> d!2032621 (= (derivationStepZipperDown!1603 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (h!71688 s!2326)) e!3926854)))

(declare-fun bm!560653 () Bool)

(declare-fun call!560662 () List!65365)

(assert (=> bm!560653 (= call!560659 call!560662)))

(declare-fun b!6478313 () Bool)

(assert (=> b!6478313 (= e!3926858 (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))))

(declare-fun b!6478314 () Bool)

(assert (=> b!6478314 (= e!3926857 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560654 () Bool)

(declare-fun call!560660 () (InoxSet Context!11478))

(declare-fun call!560661 () (InoxSet Context!11478))

(assert (=> bm!560654 (= call!560660 call!560661)))

(declare-fun b!6478315 () Bool)

(assert (=> b!6478315 (= e!3926857 call!560660)))

(declare-fun b!6478316 () Bool)

(declare-fun call!560658 () (InoxSet Context!11478))

(assert (=> b!6478316 (= e!3926856 ((_ map or) call!560657 call!560658))))

(declare-fun b!6478317 () Bool)

(assert (=> b!6478317 (= e!3926854 (store ((as const (Array Context!11478 Bool)) false) (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) true))))

(declare-fun b!6478318 () Bool)

(assert (=> b!6478318 (= e!3926854 e!3926856)))

(assert (=> b!6478318 (= c!1186647 ((_ is Union!16355) (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))

(declare-fun bm!560655 () Bool)

(assert (=> bm!560655 (= call!560662 ($colon$colon!2210 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))) (ite (or c!1186646 c!1186645) (regTwo!33222 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))))))

(declare-fun b!6478319 () Bool)

(assert (=> b!6478319 (= e!3926855 ((_ map or) call!560658 call!560661))))

(declare-fun bm!560656 () Bool)

(assert (=> bm!560656 (= call!560661 call!560657)))

(declare-fun bm!560657 () Bool)

(assert (=> bm!560657 (= call!560658 (derivationStepZipperDown!1603 (ite c!1186647 (regTwo!33223 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (regOne!33222 (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343))))))))) (ite c!1186647 (Context!11479 (t!378989 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))) (Context!11479 call!560662)) (h!71688 s!2326)))))

(declare-fun b!6478320 () Bool)

(assert (=> b!6478320 (= e!3926859 call!560660)))

(declare-fun b!6478321 () Bool)

(assert (=> b!6478321 (= e!3926855 e!3926859)))

(assert (=> b!6478321 (= c!1186645 ((_ is Concat!25200) (h!71689 (exprs!6239 (Context!11479 (Cons!65241 (h!71689 (exprs!6239 (h!71690 zl!343))) (t!378989 (exprs!6239 (h!71690 zl!343)))))))))))

(assert (= (and d!2032621 c!1186648) b!6478317))

(assert (= (and d!2032621 (not c!1186648)) b!6478318))

(assert (= (and b!6478318 c!1186647) b!6478316))

(assert (= (and b!6478318 (not c!1186647)) b!6478311))

(assert (= (and b!6478311 res!2660009) b!6478313))

(assert (= (and b!6478311 c!1186646) b!6478319))

(assert (= (and b!6478311 (not c!1186646)) b!6478321))

(assert (= (and b!6478321 c!1186645) b!6478320))

(assert (= (and b!6478321 (not c!1186645)) b!6478312))

(assert (= (and b!6478312 c!1186649) b!6478315))

(assert (= (and b!6478312 (not c!1186649)) b!6478314))

(assert (= (or b!6478320 b!6478315) bm!560653))

(assert (= (or b!6478320 b!6478315) bm!560654))

(assert (= (or b!6478319 bm!560653) bm!560655))

(assert (= (or b!6478319 bm!560654) bm!560656))

(assert (= (or b!6478316 b!6478319) bm!560657))

(assert (= (or b!6478316 bm!560656) bm!560652))

(declare-fun m!7266748 () Bool)

(assert (=> bm!560657 m!7266748))

(declare-fun m!7266750 () Bool)

(assert (=> bm!560652 m!7266750))

(declare-fun m!7266752 () Bool)

(assert (=> b!6478317 m!7266752))

(declare-fun m!7266754 () Bool)

(assert (=> b!6478313 m!7266754))

(declare-fun m!7266756 () Bool)

(assert (=> bm!560655 m!7266756))

(assert (=> bm!560461 d!2032621))

(declare-fun b!6478322 () Bool)

(declare-fun e!3926866 () Bool)

(assert (=> b!6478322 (= e!3926866 (not (= (head!13189 (_2!36637 (get!22616 lt!2385822))) (c!1186089 (regTwo!33222 r!7292)))))))

(declare-fun b!6478323 () Bool)

(declare-fun res!2660012 () Bool)

(declare-fun e!3926860 () Bool)

(assert (=> b!6478323 (=> res!2660012 e!3926860)))

(assert (=> b!6478323 (= res!2660012 (not ((_ is ElementMatch!16355) (regTwo!33222 r!7292))))))

(declare-fun e!3926863 () Bool)

(assert (=> b!6478323 (= e!3926863 e!3926860)))

(declare-fun b!6478324 () Bool)

(declare-fun e!3926865 () Bool)

(declare-fun lt!2385943 () Bool)

(declare-fun call!560663 () Bool)

(assert (=> b!6478324 (= e!3926865 (= lt!2385943 call!560663))))

(declare-fun b!6478325 () Bool)

(declare-fun e!3926861 () Bool)

(assert (=> b!6478325 (= e!3926861 (= (head!13189 (_2!36637 (get!22616 lt!2385822))) (c!1186089 (regTwo!33222 r!7292))))))

(declare-fun b!6478326 () Bool)

(declare-fun res!2660015 () Bool)

(assert (=> b!6478326 (=> (not res!2660015) (not e!3926861))))

(assert (=> b!6478326 (= res!2660015 (not call!560663))))

(declare-fun d!2032623 () Bool)

(assert (=> d!2032623 e!3926865))

(declare-fun c!1186650 () Bool)

(assert (=> d!2032623 (= c!1186650 ((_ is EmptyExpr!16355) (regTwo!33222 r!7292)))))

(declare-fun e!3926864 () Bool)

(assert (=> d!2032623 (= lt!2385943 e!3926864)))

(declare-fun c!1186652 () Bool)

(assert (=> d!2032623 (= c!1186652 (isEmpty!37424 (_2!36637 (get!22616 lt!2385822))))))

(assert (=> d!2032623 (validRegex!8091 (regTwo!33222 r!7292))))

(assert (=> d!2032623 (= (matchR!8538 (regTwo!33222 r!7292) (_2!36637 (get!22616 lt!2385822))) lt!2385943)))

(declare-fun b!6478327 () Bool)

(declare-fun res!2660017 () Bool)

(assert (=> b!6478327 (=> res!2660017 e!3926860)))

(assert (=> b!6478327 (= res!2660017 e!3926861)))

(declare-fun res!2660010 () Bool)

(assert (=> b!6478327 (=> (not res!2660010) (not e!3926861))))

(assert (=> b!6478327 (= res!2660010 lt!2385943)))

(declare-fun b!6478328 () Bool)

(declare-fun e!3926862 () Bool)

(assert (=> b!6478328 (= e!3926860 e!3926862)))

(declare-fun res!2660016 () Bool)

(assert (=> b!6478328 (=> (not res!2660016) (not e!3926862))))

(assert (=> b!6478328 (= res!2660016 (not lt!2385943))))

(declare-fun b!6478329 () Bool)

(declare-fun res!2660013 () Bool)

(assert (=> b!6478329 (=> res!2660013 e!3926866)))

(assert (=> b!6478329 (= res!2660013 (not (isEmpty!37424 (tail!12274 (_2!36637 (get!22616 lt!2385822))))))))

(declare-fun b!6478330 () Bool)

(assert (=> b!6478330 (= e!3926864 (matchR!8538 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 (get!22616 lt!2385822)))) (tail!12274 (_2!36637 (get!22616 lt!2385822)))))))

(declare-fun bm!560658 () Bool)

(assert (=> bm!560658 (= call!560663 (isEmpty!37424 (_2!36637 (get!22616 lt!2385822))))))

(declare-fun b!6478331 () Bool)

(assert (=> b!6478331 (= e!3926862 e!3926866)))

(declare-fun res!2660014 () Bool)

(assert (=> b!6478331 (=> res!2660014 e!3926866)))

(assert (=> b!6478331 (= res!2660014 call!560663)))

(declare-fun b!6478332 () Bool)

(assert (=> b!6478332 (= e!3926865 e!3926863)))

(declare-fun c!1186651 () Bool)

(assert (=> b!6478332 (= c!1186651 ((_ is EmptyLang!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6478333 () Bool)

(declare-fun res!2660011 () Bool)

(assert (=> b!6478333 (=> (not res!2660011) (not e!3926861))))

(assert (=> b!6478333 (= res!2660011 (isEmpty!37424 (tail!12274 (_2!36637 (get!22616 lt!2385822)))))))

(declare-fun b!6478334 () Bool)

(assert (=> b!6478334 (= e!3926864 (nullable!6348 (regTwo!33222 r!7292)))))

(declare-fun b!6478335 () Bool)

(assert (=> b!6478335 (= e!3926863 (not lt!2385943))))

(assert (= (and d!2032623 c!1186652) b!6478334))

(assert (= (and d!2032623 (not c!1186652)) b!6478330))

(assert (= (and d!2032623 c!1186650) b!6478324))

(assert (= (and d!2032623 (not c!1186650)) b!6478332))

(assert (= (and b!6478332 c!1186651) b!6478335))

(assert (= (and b!6478332 (not c!1186651)) b!6478323))

(assert (= (and b!6478323 (not res!2660012)) b!6478327))

(assert (= (and b!6478327 res!2660010) b!6478326))

(assert (= (and b!6478326 res!2660015) b!6478333))

(assert (= (and b!6478333 res!2660011) b!6478325))

(assert (= (and b!6478327 (not res!2660017)) b!6478328))

(assert (= (and b!6478328 res!2660016) b!6478331))

(assert (= (and b!6478331 (not res!2660014)) b!6478329))

(assert (= (and b!6478329 (not res!2660013)) b!6478322))

(assert (= (or b!6478324 b!6478331 b!6478326) bm!560658))

(declare-fun m!7266758 () Bool)

(assert (=> d!2032623 m!7266758))

(assert (=> d!2032623 m!7264954))

(declare-fun m!7266760 () Bool)

(assert (=> b!6478330 m!7266760))

(assert (=> b!6478330 m!7266760))

(declare-fun m!7266762 () Bool)

(assert (=> b!6478330 m!7266762))

(declare-fun m!7266764 () Bool)

(assert (=> b!6478330 m!7266764))

(assert (=> b!6478330 m!7266762))

(assert (=> b!6478330 m!7266764))

(declare-fun m!7266766 () Bool)

(assert (=> b!6478330 m!7266766))

(assert (=> bm!560658 m!7266758))

(assert (=> b!6478329 m!7266764))

(assert (=> b!6478329 m!7266764))

(declare-fun m!7266768 () Bool)

(assert (=> b!6478329 m!7266768))

(assert (=> b!6478325 m!7266760))

(assert (=> b!6478333 m!7266764))

(assert (=> b!6478333 m!7266764))

(assert (=> b!6478333 m!7266768))

(assert (=> b!6478322 m!7266760))

(assert (=> b!6478334 m!7265598))

(assert (=> b!6477108 d!2032623))

(assert (=> b!6477108 d!2032457))

(assert (=> b!6476606 d!2032475))

(assert (=> b!6477252 d!2032193))

(assert (=> d!2032165 d!2032305))

(assert (=> d!2032145 d!2032097))

(assert (=> d!2032145 d!2032109))

(declare-fun d!2032625 () Bool)

(assert (=> d!2032625 (= (matchR!8538 lt!2385664 (_1!36637 lt!2385678)) (matchRSpec!3456 lt!2385664 (_1!36637 lt!2385678)))))

(assert (=> d!2032625 true))

(declare-fun _$88!5166 () Unit!158751)

(assert (=> d!2032625 (= (choose!47999 lt!2385664 (_1!36637 lt!2385678)) _$88!5166)))

(declare-fun bs!1643162 () Bool)

(assert (= bs!1643162 d!2032625))

(assert (=> bs!1643162 m!7264642))

(assert (=> bs!1643162 m!7264654))

(assert (=> d!2032145 d!2032625))

(assert (=> d!2032145 d!2032177))

(declare-fun d!2032627 () Bool)

(declare-fun res!2660018 () Bool)

(declare-fun e!3926867 () Bool)

(assert (=> d!2032627 (=> res!2660018 e!3926867)))

(assert (=> d!2032627 (= res!2660018 ((_ is Nil!65241) lt!2385846))))

(assert (=> d!2032627 (= (forall!15540 lt!2385846 lambda!358099) e!3926867)))

(declare-fun b!6478336 () Bool)

(declare-fun e!3926868 () Bool)

(assert (=> b!6478336 (= e!3926867 e!3926868)))

(declare-fun res!2660019 () Bool)

(assert (=> b!6478336 (=> (not res!2660019) (not e!3926868))))

(assert (=> b!6478336 (= res!2660019 (dynLambda!25916 lambda!358099 (h!71689 lt!2385846)))))

(declare-fun b!6478337 () Bool)

(assert (=> b!6478337 (= e!3926868 (forall!15540 (t!378989 lt!2385846) lambda!358099))))

(assert (= (and d!2032627 (not res!2660018)) b!6478336))

(assert (= (and b!6478336 res!2660019) b!6478337))

(declare-fun b_lambda!245409 () Bool)

(assert (=> (not b_lambda!245409) (not b!6478336)))

(declare-fun m!7266770 () Bool)

(assert (=> b!6478336 m!7266770))

(declare-fun m!7266772 () Bool)

(assert (=> b!6478337 m!7266772))

(assert (=> d!2032085 d!2032627))

(declare-fun d!2032629 () Bool)

(assert (=> d!2032629 (= (isEmpty!37425 lt!2385689) (not ((_ is Some!16245) lt!2385689)))))

(assert (=> d!2031903 d!2032629))

(declare-fun d!2032631 () Bool)

(assert (=> d!2032631 (= (Exists!3425 (ite c!1186372 lambda!358103 lambda!358105)) (choose!48008 (ite c!1186372 lambda!358103 lambda!358105)))))

(declare-fun bs!1643163 () Bool)

(assert (= bs!1643163 d!2032631))

(declare-fun m!7266774 () Bool)

(assert (=> bs!1643163 m!7266774))

(assert (=> bm!560489 d!2032631))

(declare-fun bs!1643164 () Bool)

(declare-fun b!6478344 () Bool)

(assert (= bs!1643164 (and b!6478344 d!2032245)))

(declare-fun lambda!358163 () Int)

(assert (=> bs!1643164 (not (= lambda!358163 lambda!358128))))

(declare-fun bs!1643165 () Bool)

(assert (= bs!1643165 (and b!6478344 b!6477635)))

(assert (=> bs!1643165 (= (and (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 (regTwo!33223 r!7292))) (= (regOne!33223 lt!2385680) (regTwo!33223 r!7292))) (= lambda!358163 lambda!358129))))

(declare-fun bs!1643166 () Bool)

(assert (= bs!1643166 (and b!6478344 b!6477637)))

(assert (=> bs!1643166 (not (= lambda!358163 lambda!358130))))

(declare-fun bs!1643167 () Bool)

(assert (= bs!1643167 (and b!6478344 b!6478157)))

(assert (=> bs!1643167 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 (regTwo!33223 lt!2385664))) (= (regOne!33223 lt!2385680) (regTwo!33223 lt!2385664))) (= lambda!358163 lambda!358148))))

(declare-fun bs!1643168 () Bool)

(assert (= bs!1643168 (and b!6478344 b!6477548)))

(assert (=> bs!1643168 (not (= lambda!358163 lambda!358118))))

(declare-fun bs!1643169 () Bool)

(assert (= bs!1643169 (and b!6478344 b!6476300)))

(assert (=> bs!1643169 (not (= lambda!358163 lambda!358016))))

(assert (=> bs!1643164 (not (= lambda!358163 lambda!358127))))

(declare-fun bs!1643170 () Bool)

(assert (= bs!1643170 (and b!6478344 d!2032127)))

(assert (=> bs!1643170 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regOne!33223 lt!2385680) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358163 lambda!358115))))

(declare-fun bs!1643171 () Bool)

(assert (= bs!1643171 (and b!6478344 b!6478172)))

(assert (=> bs!1643171 (= (and (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 (regOne!33223 r!7292))) (= (regOne!33223 lt!2385680) (regOne!33223 r!7292))) (= lambda!358163 lambda!358152))))

(declare-fun bs!1643172 () Bool)

(assert (= bs!1643172 (and b!6478344 b!6477546)))

(assert (=> bs!1643172 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 (regOne!33223 lt!2385664))) (= (regOne!33223 lt!2385680) (regOne!33223 lt!2385664))) (= lambda!358163 lambda!358117))))

(declare-fun bs!1643173 () Bool)

(assert (= bs!1643173 (and b!6478344 b!6476519)))

(assert (=> bs!1643173 (not (= lambda!358163 lambda!358035))))

(declare-fun bs!1643174 () Bool)

(assert (= bs!1643174 (and b!6478344 b!6477297)))

(assert (=> bs!1643174 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 lt!2385664)) (= (regOne!33223 lt!2385680) lt!2385664)) (= lambda!358163 lambda!358103))))

(declare-fun bs!1643175 () Bool)

(assert (= bs!1643175 (and b!6478344 b!6476331)))

(assert (=> bs!1643175 (not (= lambda!358163 lambda!358020))))

(declare-fun bs!1643176 () Bool)

(assert (= bs!1643176 (and b!6478344 d!2032041)))

(assert (=> bs!1643176 (not (= lambda!358163 lambda!358083))))

(assert (=> bs!1643169 (not (= lambda!358163 lambda!358017))))

(declare-fun bs!1643177 () Bool)

(assert (= bs!1643177 (and b!6478344 d!2031923)))

(assert (=> bs!1643177 (not (= lambda!358163 lambda!358059))))

(declare-fun bs!1643178 () Bool)

(assert (= bs!1643178 (and b!6478344 d!2032379)))

(assert (=> bs!1643178 (not (= lambda!358163 lambda!358139))))

(declare-fun bs!1643179 () Bool)

(assert (= bs!1643179 (and b!6478344 d!2032125)))

(assert (=> bs!1643179 (not (= lambda!358163 lambda!358107))))

(declare-fun bs!1643180 () Bool)

(assert (= bs!1643180 (and b!6478344 b!6476517)))

(assert (=> bs!1643180 (= (and (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 lt!2385680)) (= (regOne!33223 lt!2385680) lt!2385680)) (= lambda!358163 lambda!358032))))

(assert (=> bs!1643177 (not (= lambda!358163 lambda!358062))))

(assert (=> bs!1643179 (not (= lambda!358163 lambda!358108))))

(declare-fun bs!1643181 () Bool)

(assert (= bs!1643181 (and b!6478344 b!6478174)))

(assert (=> bs!1643181 (not (= lambda!358163 lambda!358153))))

(declare-fun bs!1643182 () Bool)

(assert (= bs!1643182 (and b!6478344 d!2032591)))

(assert (=> bs!1643182 (not (= lambda!358163 lambda!358160))))

(declare-fun bs!1643183 () Bool)

(assert (= bs!1643183 (and b!6478344 b!6477031)))

(assert (=> bs!1643183 (= (and (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 r!7292)) (= (regOne!33223 lt!2385680) r!7292)) (= lambda!358163 lambda!358073))))

(assert (=> bs!1643175 (not (= lambda!358163 lambda!358018))))

(declare-fun bs!1643184 () Bool)

(assert (= bs!1643184 (and b!6478344 d!2032589)))

(assert (=> bs!1643184 (not (= lambda!358163 lambda!358158))))

(declare-fun bs!1643185 () Bool)

(assert (= bs!1643185 (and b!6478344 b!6476306)))

(assert (=> bs!1643185 (not (= lambda!358163 lambda!358014))))

(declare-fun bs!1643186 () Bool)

(assert (= bs!1643186 (and b!6478344 d!2032037)))

(assert (=> bs!1643186 (not (= lambda!358163 lambda!358082))))

(declare-fun bs!1643187 () Bool)

(assert (= bs!1643187 (and b!6478344 b!6477299)))

(assert (=> bs!1643187 (not (= lambda!358163 lambda!358105))))

(declare-fun bs!1643188 () Bool)

(assert (= bs!1643188 (and b!6478344 b!6477033)))

(assert (=> bs!1643188 (not (= lambda!358163 lambda!358075))))

(assert (=> bs!1643170 (not (= lambda!358163 lambda!358114))))

(declare-fun bs!1643189 () Bool)

(assert (= bs!1643189 (and b!6478344 d!2032155)))

(assert (=> bs!1643189 (not (= lambda!358163 lambda!358116))))

(assert (=> bs!1643184 (not (= lambda!358163 lambda!358159))))

(declare-fun bs!1643190 () Bool)

(assert (= bs!1643190 (and b!6478344 b!6477792)))

(assert (=> bs!1643190 (= (and (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 (regTwo!33223 lt!2385680))) (= (regOne!33223 lt!2385680) (regTwo!33223 lt!2385680))) (= lambda!358163 lambda!358133))))

(assert (=> bs!1643185 (not (= lambda!358163 lambda!358013))))

(declare-fun bs!1643191 () Bool)

(assert (= bs!1643191 (and b!6478344 d!2031905)))

(assert (=> bs!1643191 (not (= lambda!358163 lambda!358052))))

(declare-fun bs!1643192 () Bool)

(assert (= bs!1643192 (and b!6478344 b!6478159)))

(assert (=> bs!1643192 (not (= lambda!358163 lambda!358149))))

(assert (=> bs!1643175 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (reg!16684 (regOne!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regOne!33223 lt!2385680) lt!2385664)) (= lambda!358163 lambda!358019))))

(declare-fun bs!1643193 () Bool)

(assert (= bs!1643193 (and b!6478344 b!6477794)))

(assert (=> bs!1643193 (not (= lambda!358163 lambda!358134))))

(assert (=> bs!1643176 (not (= lambda!358163 lambda!358084))))

(declare-fun bs!1643194 () Bool)

(assert (= bs!1643194 (and b!6478344 d!2032237)))

(assert (=> bs!1643194 (not (= lambda!358163 lambda!358122))))

(assert (=> b!6478344 true))

(assert (=> b!6478344 true))

(declare-fun bs!1643195 () Bool)

(declare-fun b!6478346 () Bool)

(assert (= bs!1643195 (and b!6478346 d!2032245)))

(declare-fun lambda!358164 () Int)

(assert (=> bs!1643195 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 lt!2385680)) lt!2385664)) (= lambda!358164 lambda!358128))))

(declare-fun bs!1643196 () Bool)

(assert (= bs!1643196 (and b!6478346 b!6477635)))

(assert (=> bs!1643196 (not (= lambda!358164 lambda!358129))))

(declare-fun bs!1643197 () Bool)

(assert (= bs!1643197 (and b!6478346 b!6477637)))

(assert (=> bs!1643197 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 (regTwo!33223 r!7292))) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 (regTwo!33223 r!7292)))) (= lambda!358164 lambda!358130))))

(declare-fun bs!1643198 () Bool)

(assert (= bs!1643198 (and b!6478346 b!6478157)))

(assert (=> bs!1643198 (not (= lambda!358164 lambda!358148))))

(declare-fun bs!1643199 () Bool)

(assert (= bs!1643199 (and b!6478346 b!6477548)))

(assert (=> bs!1643199 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 (regOne!33223 lt!2385664))) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358164 lambda!358118))))

(declare-fun bs!1643200 () Bool)

(assert (= bs!1643200 (and b!6478346 b!6476300)))

(assert (=> bs!1643200 (not (= lambda!358164 lambda!358016))))

(assert (=> bs!1643195 (not (= lambda!358164 lambda!358127))))

(declare-fun bs!1643201 () Bool)

(assert (= bs!1643201 (and b!6478346 d!2032127)))

(assert (=> bs!1643201 (not (= lambda!358164 lambda!358115))))

(declare-fun bs!1643202 () Bool)

(assert (= bs!1643202 (and b!6478346 b!6478172)))

(assert (=> bs!1643202 (not (= lambda!358164 lambda!358152))))

(declare-fun bs!1643203 () Bool)

(assert (= bs!1643203 (and b!6478346 b!6477546)))

(assert (=> bs!1643203 (not (= lambda!358164 lambda!358117))))

(declare-fun bs!1643204 () Bool)

(assert (= bs!1643204 (and b!6478346 b!6476519)))

(assert (=> bs!1643204 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 lt!2385680)) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 lt!2385680))) (= lambda!358164 lambda!358035))))

(declare-fun bs!1643205 () Bool)

(assert (= bs!1643205 (and b!6478346 b!6477297)))

(assert (=> bs!1643205 (not (= lambda!358164 lambda!358103))))

(declare-fun bs!1643206 () Bool)

(assert (= bs!1643206 (and b!6478346 b!6476331)))

(assert (=> bs!1643206 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 lt!2385680)) lt!2385664)) (= lambda!358164 lambda!358020))))

(declare-fun bs!1643207 () Bool)

(assert (= bs!1643207 (and b!6478346 d!2032041)))

(assert (=> bs!1643207 (not (= lambda!358164 lambda!358083))))

(assert (=> bs!1643200 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) lt!2385664) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358164 lambda!358017))))

(declare-fun bs!1643208 () Bool)

(assert (= bs!1643208 (and b!6478346 d!2031923)))

(assert (=> bs!1643208 (not (= lambda!358164 lambda!358059))))

(declare-fun bs!1643209 () Bool)

(assert (= bs!1643209 (and b!6478346 d!2032379)))

(assert (=> bs!1643209 (not (= lambda!358164 lambda!358139))))

(declare-fun bs!1643210 () Bool)

(assert (= bs!1643210 (and b!6478346 d!2032125)))

(assert (=> bs!1643210 (not (= lambda!358164 lambda!358107))))

(declare-fun bs!1643211 () Bool)

(assert (= bs!1643211 (and b!6478346 b!6476517)))

(assert (=> bs!1643211 (not (= lambda!358164 lambda!358032))))

(assert (=> bs!1643208 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) lt!2385664) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358164 lambda!358062))))

(assert (=> bs!1643210 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 lt!2385680)) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 (regOne!33223 lt!2385680)) lt!2385664)) (= lambda!358164 lambda!358108))))

(declare-fun bs!1643212 () Bool)

(assert (= bs!1643212 (and b!6478346 b!6478174)))

(assert (=> bs!1643212 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 (regOne!33223 r!7292))) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 (regOne!33223 r!7292)))) (= lambda!358164 lambda!358153))))

(declare-fun bs!1643213 () Bool)

(assert (= bs!1643213 (and b!6478346 d!2032591)))

(assert (=> bs!1643213 (not (= lambda!358164 lambda!358160))))

(declare-fun bs!1643214 () Bool)

(assert (= bs!1643214 (and b!6478346 b!6478344)))

(assert (=> bs!1643214 (not (= lambda!358164 lambda!358163))))

(declare-fun bs!1643215 () Bool)

(assert (= bs!1643215 (and b!6478346 b!6477031)))

(assert (=> bs!1643215 (not (= lambda!358164 lambda!358073))))

(assert (=> bs!1643206 (not (= lambda!358164 lambda!358018))))

(declare-fun bs!1643216 () Bool)

(assert (= bs!1643216 (and b!6478346 d!2032589)))

(assert (=> bs!1643216 (not (= lambda!358164 lambda!358158))))

(declare-fun bs!1643217 () Bool)

(assert (= bs!1643217 (and b!6478346 b!6476306)))

(assert (=> bs!1643217 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358164 lambda!358014))))

(declare-fun bs!1643218 () Bool)

(assert (= bs!1643218 (and b!6478346 d!2032037)))

(assert (=> bs!1643218 (not (= lambda!358164 lambda!358082))))

(declare-fun bs!1643219 () Bool)

(assert (= bs!1643219 (and b!6478346 b!6477299)))

(assert (=> bs!1643219 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 lt!2385664)) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 lt!2385664))) (= lambda!358164 lambda!358105))))

(declare-fun bs!1643220 () Bool)

(assert (= bs!1643220 (and b!6478346 b!6477033)))

(assert (=> bs!1643220 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358164 lambda!358075))))

(assert (=> bs!1643201 (not (= lambda!358164 lambda!358114))))

(declare-fun bs!1643221 () Bool)

(assert (= bs!1643221 (and b!6478346 d!2032155)))

(assert (=> bs!1643221 (not (= lambda!358164 lambda!358116))))

(assert (=> bs!1643216 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) lt!2385664) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358164 lambda!358159))))

(declare-fun bs!1643222 () Bool)

(assert (= bs!1643222 (and b!6478346 b!6477792)))

(assert (=> bs!1643222 (not (= lambda!358164 lambda!358133))))

(assert (=> bs!1643217 (not (= lambda!358164 lambda!358013))))

(declare-fun bs!1643223 () Bool)

(assert (= bs!1643223 (and b!6478346 d!2031905)))

(assert (=> bs!1643223 (not (= lambda!358164 lambda!358052))))

(declare-fun bs!1643224 () Bool)

(assert (= bs!1643224 (and b!6478346 b!6478159)))

(assert (=> bs!1643224 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 (regTwo!33223 lt!2385664))) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 (regTwo!33223 lt!2385664)))) (= lambda!358164 lambda!358149))))

(assert (=> bs!1643206 (not (= lambda!358164 lambda!358019))))

(declare-fun bs!1643225 () Bool)

(assert (= bs!1643225 (and b!6478346 b!6477794)))

(assert (=> bs!1643225 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 (regTwo!33223 lt!2385680))) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 (regTwo!33223 lt!2385680)))) (= lambda!358164 lambda!358134))))

(assert (=> bs!1643207 (= (and (= (regOne!33222 (regOne!33223 lt!2385680)) (regOne!33222 r!7292)) (= (regTwo!33222 (regOne!33223 lt!2385680)) (regTwo!33222 r!7292))) (= lambda!358164 lambda!358084))))

(declare-fun bs!1643226 () Bool)

(assert (= bs!1643226 (and b!6478346 d!2032237)))

(assert (=> bs!1643226 (not (= lambda!358164 lambda!358122))))

(assert (=> b!6478346 true))

(assert (=> b!6478346 true))

(declare-fun b!6478338 () Bool)

(declare-fun res!2660021 () Bool)

(declare-fun e!3926875 () Bool)

(assert (=> b!6478338 (=> res!2660021 e!3926875)))

(declare-fun call!560665 () Bool)

(assert (=> b!6478338 (= res!2660021 call!560665)))

(declare-fun e!3926869 () Bool)

(assert (=> b!6478338 (= e!3926869 e!3926875)))

(declare-fun b!6478339 () Bool)

(declare-fun e!3926872 () Bool)

(assert (=> b!6478339 (= e!3926872 e!3926869)))

(declare-fun c!1186656 () Bool)

(assert (=> b!6478339 (= c!1186656 ((_ is Star!16355) (regOne!33223 lt!2385680)))))

(declare-fun b!6478340 () Bool)

(declare-fun c!1186655 () Bool)

(assert (=> b!6478340 (= c!1186655 ((_ is Union!16355) (regOne!33223 lt!2385680)))))

(declare-fun e!3926873 () Bool)

(assert (=> b!6478340 (= e!3926873 e!3926872)))

(declare-fun b!6478341 () Bool)

(declare-fun c!1186654 () Bool)

(assert (=> b!6478341 (= c!1186654 ((_ is ElementMatch!16355) (regOne!33223 lt!2385680)))))

(declare-fun e!3926870 () Bool)

(assert (=> b!6478341 (= e!3926870 e!3926873)))

(declare-fun b!6478342 () Bool)

(declare-fun e!3926871 () Bool)

(assert (=> b!6478342 (= e!3926871 call!560665)))

(declare-fun b!6478343 () Bool)

(assert (=> b!6478343 (= e!3926871 e!3926870)))

(declare-fun res!2660020 () Bool)

(assert (=> b!6478343 (= res!2660020 (not ((_ is EmptyLang!16355) (regOne!33223 lt!2385680))))))

(assert (=> b!6478343 (=> (not res!2660020) (not e!3926870))))

(declare-fun d!2032633 () Bool)

(declare-fun c!1186653 () Bool)

(assert (=> d!2032633 (= c!1186653 ((_ is EmptyExpr!16355) (regOne!33223 lt!2385680)))))

(assert (=> d!2032633 (= (matchRSpec!3456 (regOne!33223 lt!2385680) s!2326) e!3926871)))

(declare-fun call!560664 () Bool)

(assert (=> b!6478344 (= e!3926875 call!560664)))

(declare-fun bm!560659 () Bool)

(assert (=> bm!560659 (= call!560665 (isEmpty!37424 s!2326))))

(declare-fun b!6478345 () Bool)

(declare-fun e!3926874 () Bool)

(assert (=> b!6478345 (= e!3926872 e!3926874)))

(declare-fun res!2660022 () Bool)

(assert (=> b!6478345 (= res!2660022 (matchRSpec!3456 (regOne!33223 (regOne!33223 lt!2385680)) s!2326))))

(assert (=> b!6478345 (=> res!2660022 e!3926874)))

(assert (=> b!6478346 (= e!3926869 call!560664)))

(declare-fun bm!560660 () Bool)

(assert (=> bm!560660 (= call!560664 (Exists!3425 (ite c!1186656 lambda!358163 lambda!358164)))))

(declare-fun b!6478347 () Bool)

(assert (=> b!6478347 (= e!3926873 (= s!2326 (Cons!65240 (c!1186089 (regOne!33223 lt!2385680)) Nil!65240)))))

(declare-fun b!6478348 () Bool)

(assert (=> b!6478348 (= e!3926874 (matchRSpec!3456 (regTwo!33223 (regOne!33223 lt!2385680)) s!2326))))

(assert (= (and d!2032633 c!1186653) b!6478342))

(assert (= (and d!2032633 (not c!1186653)) b!6478343))

(assert (= (and b!6478343 res!2660020) b!6478341))

(assert (= (and b!6478341 c!1186654) b!6478347))

(assert (= (and b!6478341 (not c!1186654)) b!6478340))

(assert (= (and b!6478340 c!1186655) b!6478345))

(assert (= (and b!6478340 (not c!1186655)) b!6478339))

(assert (= (and b!6478345 (not res!2660022)) b!6478348))

(assert (= (and b!6478339 c!1186656) b!6478338))

(assert (= (and b!6478339 (not c!1186656)) b!6478346))

(assert (= (and b!6478338 (not res!2660021)) b!6478344))

(assert (= (or b!6478344 b!6478346) bm!560660))

(assert (= (or b!6478342 b!6478338) bm!560659))

(assert (=> bm!560659 m!7264716))

(declare-fun m!7266776 () Bool)

(assert (=> b!6478345 m!7266776))

(declare-fun m!7266778 () Bool)

(assert (=> bm!560660 m!7266778))

(declare-fun m!7266780 () Bool)

(assert (=> b!6478348 m!7266780))

(assert (=> b!6476518 d!2032633))

(declare-fun d!2032635 () Bool)

(assert (=> d!2032635 (= ($colon$colon!2210 (exprs!6239 lt!2385665) (ite (or c!1186270 c!1186269) (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (regOne!33222 r!7292)))) (Cons!65241 (ite (or c!1186270 c!1186269) (regTwo!33222 (reg!16684 (regOne!33222 r!7292))) (reg!16684 (regOne!33222 r!7292))) (exprs!6239 lt!2385665)))))

(assert (=> bm!560450 d!2032635))

(declare-fun d!2032637 () Bool)

(assert (=> d!2032637 (= (isEmpty!37425 lt!2385668) (not ((_ is Some!16245) lt!2385668)))))

(assert (=> d!2032123 d!2032637))

(declare-fun bs!1643227 () Bool)

(declare-fun d!2032639 () Bool)

(assert (= bs!1643227 (and d!2032639 d!2032453)))

(declare-fun lambda!358165 () Int)

(assert (=> bs!1643227 (= lambda!358165 lambda!358142)))

(declare-fun bs!1643228 () Bool)

(assert (= bs!1643228 (and d!2032639 d!2032395)))

(assert (=> bs!1643228 (= lambda!358165 lambda!358140)))

(declare-fun bs!1643229 () Bool)

(assert (= bs!1643229 (and d!2032639 d!2032375)))

(assert (=> bs!1643229 (= lambda!358165 lambda!358138)))

(declare-fun bs!1643230 () Bool)

(assert (= bs!1643230 (and d!2032639 d!2032545)))

(assert (=> bs!1643230 (= lambda!358165 lambda!358150)))

(declare-fun bs!1643231 () Bool)

(assert (= bs!1643231 (and d!2032639 d!2032505)))

(assert (=> bs!1643231 (= lambda!358165 lambda!358145)))

(assert (=> d!2032639 (= (nullableZipper!2114 lt!2385694) (exists!2614 lt!2385694 lambda!358165))))

(declare-fun bs!1643232 () Bool)

(assert (= bs!1643232 d!2032639))

(declare-fun m!7266782 () Bool)

(assert (=> bs!1643232 m!7266782))

(assert (=> b!6477412 d!2032639))

(declare-fun bs!1643233 () Bool)

(declare-fun d!2032641 () Bool)

(assert (= bs!1643233 (and d!2032641 d!2032453)))

(declare-fun lambda!358166 () Int)

(assert (=> bs!1643233 (= lambda!358166 lambda!358142)))

(declare-fun bs!1643234 () Bool)

(assert (= bs!1643234 (and d!2032641 d!2032375)))

(assert (=> bs!1643234 (= lambda!358166 lambda!358138)))

(declare-fun bs!1643235 () Bool)

(assert (= bs!1643235 (and d!2032641 d!2032545)))

(assert (=> bs!1643235 (= lambda!358166 lambda!358150)))

(declare-fun bs!1643236 () Bool)

(assert (= bs!1643236 (and d!2032641 d!2032505)))

(assert (=> bs!1643236 (= lambda!358166 lambda!358145)))

(declare-fun bs!1643237 () Bool)

(assert (= bs!1643237 (and d!2032641 d!2032639)))

(assert (=> bs!1643237 (= lambda!358166 lambda!358165)))

(declare-fun bs!1643238 () Bool)

(assert (= bs!1643238 (and d!2032641 d!2032395)))

(assert (=> bs!1643238 (= lambda!358166 lambda!358140)))

(assert (=> d!2032641 (= (nullableZipper!2114 lt!2385647) (exists!2614 lt!2385647 lambda!358166))))

(declare-fun bs!1643239 () Bool)

(assert (= bs!1643239 d!2032641))

(declare-fun m!7266784 () Bool)

(assert (=> bs!1643239 m!7266784))

(assert (=> b!6477093 d!2032641))

(assert (=> bs!1642620 d!2032055))

(declare-fun d!2032643 () Bool)

(assert (=> d!2032643 (= (nullable!6348 (h!71689 (exprs!6239 lt!2385665))) (nullableFct!2287 (h!71689 (exprs!6239 lt!2385665))))))

(declare-fun bs!1643240 () Bool)

(assert (= bs!1643240 d!2032643))

(declare-fun m!7266786 () Bool)

(assert (=> bs!1643240 m!7266786))

(assert (=> b!6477158 d!2032643))

(assert (=> b!6477086 d!2032295))

(assert (=> b!6477086 d!2032297))

(assert (=> b!6477274 d!2032461))

(assert (=> b!6477274 d!2032385))

(declare-fun d!2032645 () Bool)

(assert (=> d!2032645 (= (isEmpty!37422 (tail!12275 (unfocusZipperList!1776 zl!343))) ((_ is Nil!65241) (tail!12275 (unfocusZipperList!1776 zl!343))))))

(assert (=> b!6477227 d!2032645))

(declare-fun d!2032647 () Bool)

(assert (=> d!2032647 (= (tail!12275 (unfocusZipperList!1776 zl!343)) (t!378989 (unfocusZipperList!1776 zl!343)))))

(assert (=> b!6477227 d!2032647))

(declare-fun b!6478349 () Bool)

(declare-fun e!3926878 () Bool)

(declare-fun e!3926879 () Bool)

(assert (=> b!6478349 (= e!3926878 e!3926879)))

(declare-fun res!2660027 () Bool)

(assert (=> b!6478349 (= res!2660027 (not (nullable!6348 (reg!16684 lt!2385842))))))

(assert (=> b!6478349 (=> (not res!2660027) (not e!3926879))))

(declare-fun b!6478350 () Bool)

(declare-fun e!3926880 () Bool)

(declare-fun call!560666 () Bool)

(assert (=> b!6478350 (= e!3926880 call!560666)))

(declare-fun b!6478351 () Bool)

(declare-fun e!3926876 () Bool)

(assert (=> b!6478351 (= e!3926876 e!3926878)))

(declare-fun c!1186658 () Bool)

(assert (=> b!6478351 (= c!1186658 ((_ is Star!16355) lt!2385842))))

(declare-fun b!6478352 () Bool)

(declare-fun e!3926882 () Bool)

(assert (=> b!6478352 (= e!3926882 call!560666)))

(declare-fun b!6478353 () Bool)

(declare-fun e!3926881 () Bool)

(assert (=> b!6478353 (= e!3926881 e!3926880)))

(declare-fun res!2660023 () Bool)

(assert (=> b!6478353 (=> (not res!2660023) (not e!3926880))))

(declare-fun call!560668 () Bool)

(assert (=> b!6478353 (= res!2660023 call!560668)))

(declare-fun bm!560661 () Bool)

(declare-fun c!1186657 () Bool)

(assert (=> bm!560661 (= call!560668 (validRegex!8091 (ite c!1186657 (regOne!33223 lt!2385842) (regOne!33222 lt!2385842))))))

(declare-fun bm!560662 () Bool)

(declare-fun call!560667 () Bool)

(assert (=> bm!560662 (= call!560666 call!560667)))

(declare-fun b!6478354 () Bool)

(assert (=> b!6478354 (= e!3926879 call!560667)))

(declare-fun bm!560663 () Bool)

(assert (=> bm!560663 (= call!560667 (validRegex!8091 (ite c!1186658 (reg!16684 lt!2385842) (ite c!1186657 (regTwo!33223 lt!2385842) (regTwo!33222 lt!2385842)))))))

(declare-fun b!6478355 () Bool)

(declare-fun res!2660026 () Bool)

(assert (=> b!6478355 (=> (not res!2660026) (not e!3926882))))

(assert (=> b!6478355 (= res!2660026 call!560668)))

(declare-fun e!3926877 () Bool)

(assert (=> b!6478355 (= e!3926877 e!3926882)))

(declare-fun d!2032649 () Bool)

(declare-fun res!2660025 () Bool)

(assert (=> d!2032649 (=> res!2660025 e!3926876)))

(assert (=> d!2032649 (= res!2660025 ((_ is ElementMatch!16355) lt!2385842))))

(assert (=> d!2032649 (= (validRegex!8091 lt!2385842) e!3926876)))

(declare-fun b!6478356 () Bool)

(assert (=> b!6478356 (= e!3926878 e!3926877)))

(assert (=> b!6478356 (= c!1186657 ((_ is Union!16355) lt!2385842))))

(declare-fun b!6478357 () Bool)

(declare-fun res!2660024 () Bool)

(assert (=> b!6478357 (=> res!2660024 e!3926881)))

(assert (=> b!6478357 (= res!2660024 (not ((_ is Concat!25200) lt!2385842)))))

(assert (=> b!6478357 (= e!3926877 e!3926881)))

(assert (= (and d!2032649 (not res!2660025)) b!6478351))

(assert (= (and b!6478351 c!1186658) b!6478349))

(assert (= (and b!6478351 (not c!1186658)) b!6478356))

(assert (= (and b!6478349 res!2660027) b!6478354))

(assert (= (and b!6478356 c!1186657) b!6478355))

(assert (= (and b!6478356 (not c!1186657)) b!6478357))

(assert (= (and b!6478355 res!2660026) b!6478352))

(assert (= (and b!6478357 (not res!2660024)) b!6478353))

(assert (= (and b!6478353 res!2660023) b!6478350))

(assert (= (or b!6478352 b!6478350) bm!560662))

(assert (= (or b!6478355 b!6478353) bm!560661))

(assert (= (or b!6478354 bm!560662) bm!560663))

(declare-fun m!7266788 () Bool)

(assert (=> b!6478349 m!7266788))

(declare-fun m!7266790 () Bool)

(assert (=> bm!560661 m!7266790))

(declare-fun m!7266792 () Bool)

(assert (=> bm!560663 m!7266792))

(assert (=> d!2032083 d!2032649))

(declare-fun d!2032651 () Bool)

(declare-fun res!2660028 () Bool)

(declare-fun e!3926883 () Bool)

(assert (=> d!2032651 (=> res!2660028 e!3926883)))

(assert (=> d!2032651 (= res!2660028 ((_ is Nil!65241) (unfocusZipperList!1776 zl!343)))))

(assert (=> d!2032651 (= (forall!15540 (unfocusZipperList!1776 zl!343) lambda!358095) e!3926883)))

(declare-fun b!6478358 () Bool)

(declare-fun e!3926884 () Bool)

(assert (=> b!6478358 (= e!3926883 e!3926884)))

(declare-fun res!2660029 () Bool)

(assert (=> b!6478358 (=> (not res!2660029) (not e!3926884))))

(assert (=> b!6478358 (= res!2660029 (dynLambda!25916 lambda!358095 (h!71689 (unfocusZipperList!1776 zl!343))))))

(declare-fun b!6478359 () Bool)

(assert (=> b!6478359 (= e!3926884 (forall!15540 (t!378989 (unfocusZipperList!1776 zl!343)) lambda!358095))))

(assert (= (and d!2032651 (not res!2660028)) b!6478358))

(assert (= (and b!6478358 res!2660029) b!6478359))

(declare-fun b_lambda!245411 () Bool)

(assert (=> (not b_lambda!245411) (not b!6478358)))

(declare-fun m!7266794 () Bool)

(assert (=> b!6478358 m!7266794))

(declare-fun m!7266796 () Bool)

(assert (=> b!6478359 m!7266796))

(assert (=> d!2032083 d!2032651))

(assert (=> bm!560379 d!2032273))

(declare-fun d!2032653 () Bool)

(assert (=> d!2032653 true))

(assert (=> d!2032653 true))

(declare-fun res!2660030 () Bool)

(assert (=> d!2032653 (= (choose!48008 lambda!358018) res!2660030)))

(assert (=> d!2032151 d!2032653))

(declare-fun d!2032655 () Bool)

(declare-fun lt!2385944 () Int)

(assert (=> d!2032655 (>= lt!2385944 0)))

(declare-fun e!3926885 () Int)

(assert (=> d!2032655 (= lt!2385944 e!3926885)))

(declare-fun c!1186659 () Bool)

(assert (=> d!2032655 (= c!1186659 ((_ is Nil!65240) lt!2385814))))

(assert (=> d!2032655 (= (size!40407 lt!2385814) lt!2385944)))

(declare-fun b!6478360 () Bool)

(assert (=> b!6478360 (= e!3926885 0)))

(declare-fun b!6478361 () Bool)

(assert (=> b!6478361 (= e!3926885 (+ 1 (size!40407 (t!378988 lt!2385814))))))

(assert (= (and d!2032655 c!1186659) b!6478360))

(assert (= (and d!2032655 (not c!1186659)) b!6478361))

(declare-fun m!7266798 () Bool)

(assert (=> b!6478361 m!7266798))

(assert (=> b!6477077 d!2032655))

(assert (=> b!6477077 d!2032321))

(assert (=> b!6477077 d!2032271))

(assert (=> b!6477043 d!2032309))

(assert (=> b!6476605 d!2032495))

(assert (=> b!6476605 d!2032407))

(declare-fun b!6478362 () Bool)

(declare-fun e!3926888 () Bool)

(declare-fun e!3926889 () Bool)

(assert (=> b!6478362 (= e!3926888 e!3926889)))

(declare-fun res!2660035 () Bool)

(assert (=> b!6478362 (= res!2660035 (not (nullable!6348 (reg!16684 lt!2385871))))))

(assert (=> b!6478362 (=> (not res!2660035) (not e!3926889))))

(declare-fun b!6478363 () Bool)

(declare-fun e!3926890 () Bool)

(declare-fun call!560669 () Bool)

(assert (=> b!6478363 (= e!3926890 call!560669)))

(declare-fun b!6478364 () Bool)

(declare-fun e!3926886 () Bool)

(assert (=> b!6478364 (= e!3926886 e!3926888)))

(declare-fun c!1186661 () Bool)

(assert (=> b!6478364 (= c!1186661 ((_ is Star!16355) lt!2385871))))

(declare-fun b!6478365 () Bool)

(declare-fun e!3926892 () Bool)

(assert (=> b!6478365 (= e!3926892 call!560669)))

(declare-fun b!6478366 () Bool)

(declare-fun e!3926891 () Bool)

(assert (=> b!6478366 (= e!3926891 e!3926890)))

(declare-fun res!2660031 () Bool)

(assert (=> b!6478366 (=> (not res!2660031) (not e!3926890))))

(declare-fun call!560671 () Bool)

(assert (=> b!6478366 (= res!2660031 call!560671)))

(declare-fun bm!560664 () Bool)

(declare-fun c!1186660 () Bool)

(assert (=> bm!560664 (= call!560671 (validRegex!8091 (ite c!1186660 (regOne!33223 lt!2385871) (regOne!33222 lt!2385871))))))

(declare-fun bm!560665 () Bool)

(declare-fun call!560670 () Bool)

(assert (=> bm!560665 (= call!560669 call!560670)))

(declare-fun b!6478367 () Bool)

(assert (=> b!6478367 (= e!3926889 call!560670)))

(declare-fun bm!560666 () Bool)

(assert (=> bm!560666 (= call!560670 (validRegex!8091 (ite c!1186661 (reg!16684 lt!2385871) (ite c!1186660 (regTwo!33223 lt!2385871) (regTwo!33222 lt!2385871)))))))

(declare-fun b!6478368 () Bool)

(declare-fun res!2660034 () Bool)

(assert (=> b!6478368 (=> (not res!2660034) (not e!3926892))))

(assert (=> b!6478368 (= res!2660034 call!560671)))

(declare-fun e!3926887 () Bool)

(assert (=> b!6478368 (= e!3926887 e!3926892)))

(declare-fun d!2032657 () Bool)

(declare-fun res!2660033 () Bool)

(assert (=> d!2032657 (=> res!2660033 e!3926886)))

(assert (=> d!2032657 (= res!2660033 ((_ is ElementMatch!16355) lt!2385871))))

(assert (=> d!2032657 (= (validRegex!8091 lt!2385871) e!3926886)))

(declare-fun b!6478369 () Bool)

(assert (=> b!6478369 (= e!3926888 e!3926887)))

(assert (=> b!6478369 (= c!1186660 ((_ is Union!16355) lt!2385871))))

(declare-fun b!6478370 () Bool)

(declare-fun res!2660032 () Bool)

(assert (=> b!6478370 (=> res!2660032 e!3926891)))

(assert (=> b!6478370 (= res!2660032 (not ((_ is Concat!25200) lt!2385871)))))

(assert (=> b!6478370 (= e!3926887 e!3926891)))

(assert (= (and d!2032657 (not res!2660033)) b!6478364))

(assert (= (and b!6478364 c!1186661) b!6478362))

(assert (= (and b!6478364 (not c!1186661)) b!6478369))

(assert (= (and b!6478362 res!2660035) b!6478367))

(assert (= (and b!6478369 c!1186660) b!6478368))

(assert (= (and b!6478369 (not c!1186660)) b!6478370))

(assert (= (and b!6478368 res!2660034) b!6478365))

(assert (= (and b!6478370 (not res!2660032)) b!6478366))

(assert (= (and b!6478366 res!2660031) b!6478363))

(assert (= (or b!6478365 b!6478363) bm!560665))

(assert (= (or b!6478368 b!6478366) bm!560664))

(assert (= (or b!6478367 bm!560665) bm!560666))

(declare-fun m!7266800 () Bool)

(assert (=> b!6478362 m!7266800))

(declare-fun m!7266802 () Bool)

(assert (=> bm!560664 m!7266802))

(declare-fun m!7266804 () Bool)

(assert (=> bm!560666 m!7266804))

(assert (=> d!2032159 d!2032657))

(declare-fun bs!1643241 () Bool)

(declare-fun d!2032659 () Bool)

(assert (= bs!1643241 (and d!2032659 d!2032517)))

(declare-fun lambda!358167 () Int)

(assert (=> bs!1643241 (= lambda!358167 lambda!358147)))

(declare-fun bs!1643242 () Bool)

(assert (= bs!1643242 (and d!2032659 d!2032083)))

(assert (=> bs!1643242 (= lambda!358167 lambda!358095)))

(declare-fun bs!1643243 () Bool)

(assert (= bs!1643243 (and d!2032659 d!2031879)))

(assert (=> bs!1643243 (= lambda!358167 lambda!358039)))

(declare-fun bs!1643244 () Bool)

(assert (= bs!1643244 (and d!2032659 d!2032223)))

(assert (=> bs!1643244 (= lambda!358167 lambda!358119)))

(declare-fun bs!1643245 () Bool)

(assert (= bs!1643245 (and d!2032659 d!2031899)))

(assert (=> bs!1643245 (= lambda!358167 lambda!358049)))

(declare-fun bs!1643246 () Bool)

(assert (= bs!1643246 (and d!2032659 d!2032549)))

(assert (=> bs!1643246 (= lambda!358167 lambda!358151)))

(declare-fun bs!1643247 () Bool)

(assert (= bs!1643247 (and d!2032659 d!2032101)))

(assert (=> bs!1643247 (= lambda!358167 lambda!358101)))

(declare-fun bs!1643248 () Bool)

(assert (= bs!1643248 (and d!2032659 d!2032515)))

(assert (=> bs!1643248 (= lambda!358167 lambda!358146)))

(declare-fun bs!1643249 () Bool)

(assert (= bs!1643249 (and d!2032659 d!2032607)))

(assert (=> bs!1643249 (= lambda!358167 lambda!358162)))

(declare-fun bs!1643250 () Bool)

(assert (= bs!1643250 (and d!2032659 d!2032085)))

(assert (=> bs!1643250 (= lambda!358167 lambda!358099)))

(declare-fun bs!1643251 () Bool)

(assert (= bs!1643251 (and d!2032659 d!2032605)))

(assert (=> bs!1643251 (= lambda!358167 lambda!358161)))

(declare-fun bs!1643252 () Bool)

(assert (= bs!1643252 (and d!2032659 d!2032493)))

(assert (=> bs!1643252 (= lambda!358167 lambda!358144)))

(declare-fun bs!1643253 () Bool)

(assert (= bs!1643253 (and d!2032659 d!2032561)))

(assert (=> bs!1643253 (= lambda!358167 lambda!358154)))

(declare-fun bs!1643254 () Bool)

(assert (= bs!1643254 (and d!2032659 d!2032565)))

(assert (=> bs!1643254 (= lambda!358167 lambda!358155)))

(declare-fun bs!1643255 () Bool)

(assert (= bs!1643255 (and d!2032659 d!2031887)))

(assert (=> bs!1643255 (= lambda!358167 lambda!358048)))

(declare-fun b!6478372 () Bool)

(declare-fun e!3926895 () Bool)

(assert (=> b!6478372 (= e!3926895 (isEmpty!37422 (t!378989 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242)))))))

(declare-fun b!6478373 () Bool)

(declare-fun e!3926893 () Bool)

(declare-fun e!3926897 () Bool)

(assert (=> b!6478373 (= e!3926893 e!3926897)))

(declare-fun c!1186665 () Bool)

(assert (=> b!6478373 (= c!1186665 (isEmpty!37422 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))))))

(declare-fun b!6478374 () Bool)

(declare-fun e!3926894 () Regex!16355)

(assert (=> b!6478374 (= e!3926894 (Union!16355 (h!71689 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))) (generalisedUnion!2199 (t!378989 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))))))))

(declare-fun b!6478375 () Bool)

(declare-fun e!3926896 () Bool)

(declare-fun lt!2385945 () Regex!16355)

(assert (=> b!6478375 (= e!3926896 (= lt!2385945 (head!13190 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242)))))))

(declare-fun b!6478376 () Bool)

(assert (=> b!6478376 (= e!3926897 e!3926896)))

(declare-fun c!1186662 () Bool)

(assert (=> b!6478376 (= c!1186662 (isEmpty!37422 (tail!12275 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242)))))))

(declare-fun b!6478377 () Bool)

(assert (=> b!6478377 (= e!3926896 (isUnion!1187 lt!2385945))))

(declare-fun b!6478378 () Bool)

(assert (=> b!6478378 (= e!3926894 EmptyLang!16355)))

(declare-fun b!6478371 () Bool)

(declare-fun e!3926898 () Regex!16355)

(assert (=> b!6478371 (= e!3926898 (h!71689 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))))))

(assert (=> d!2032659 e!3926893))

(declare-fun res!2660037 () Bool)

(assert (=> d!2032659 (=> (not res!2660037) (not e!3926893))))

(assert (=> d!2032659 (= res!2660037 (validRegex!8091 lt!2385945))))

(assert (=> d!2032659 (= lt!2385945 e!3926898)))

(declare-fun c!1186664 () Bool)

(assert (=> d!2032659 (= c!1186664 e!3926895)))

(declare-fun res!2660036 () Bool)

(assert (=> d!2032659 (=> (not res!2660036) (not e!3926895))))

(assert (=> d!2032659 (= res!2660036 ((_ is Cons!65241) (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))))))

(assert (=> d!2032659 (forall!15540 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242)) lambda!358167)))

(assert (=> d!2032659 (= (generalisedUnion!2199 (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))) lt!2385945)))

(declare-fun b!6478379 () Bool)

(assert (=> b!6478379 (= e!3926898 e!3926894)))

(declare-fun c!1186663 () Bool)

(assert (=> b!6478379 (= c!1186663 ((_ is Cons!65241) (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242))))))

(declare-fun b!6478380 () Bool)

(assert (=> b!6478380 (= e!3926897 (isEmptyLang!1757 lt!2385945))))

(assert (= (and d!2032659 res!2660036) b!6478372))

(assert (= (and d!2032659 c!1186664) b!6478371))

(assert (= (and d!2032659 (not c!1186664)) b!6478379))

(assert (= (and b!6478379 c!1186663) b!6478374))

(assert (= (and b!6478379 (not c!1186663)) b!6478378))

(assert (= (and d!2032659 res!2660037) b!6478373))

(assert (= (and b!6478373 c!1186665) b!6478380))

(assert (= (and b!6478373 (not c!1186665)) b!6478376))

(assert (= (and b!6478376 c!1186662) b!6478375))

(assert (= (and b!6478376 (not c!1186662)) b!6478377))

(declare-fun m!7266806 () Bool)

(assert (=> b!6478380 m!7266806))

(assert (=> b!6478375 m!7265748))

(declare-fun m!7266808 () Bool)

(assert (=> b!6478375 m!7266808))

(declare-fun m!7266810 () Bool)

(assert (=> b!6478372 m!7266810))

(declare-fun m!7266812 () Bool)

(assert (=> b!6478377 m!7266812))

(assert (=> b!6478376 m!7265748))

(declare-fun m!7266814 () Bool)

(assert (=> b!6478376 m!7266814))

(assert (=> b!6478376 m!7266814))

(declare-fun m!7266816 () Bool)

(assert (=> b!6478376 m!7266816))

(assert (=> b!6478373 m!7265748))

(declare-fun m!7266818 () Bool)

(assert (=> b!6478373 m!7266818))

(declare-fun m!7266820 () Bool)

(assert (=> b!6478374 m!7266820))

(declare-fun m!7266822 () Bool)

(assert (=> d!2032659 m!7266822))

(assert (=> d!2032659 m!7265748))

(declare-fun m!7266824 () Bool)

(assert (=> d!2032659 m!7266824))

(assert (=> d!2032159 d!2032659))

(declare-fun bs!1643256 () Bool)

(declare-fun d!2032661 () Bool)

(assert (= bs!1643256 (and d!2032661 d!2032517)))

(declare-fun lambda!358168 () Int)

(assert (=> bs!1643256 (= lambda!358168 lambda!358147)))

(declare-fun bs!1643257 () Bool)

(assert (= bs!1643257 (and d!2032661 d!2032083)))

(assert (=> bs!1643257 (= lambda!358168 lambda!358095)))

(declare-fun bs!1643258 () Bool)

(assert (= bs!1643258 (and d!2032661 d!2031879)))

(assert (=> bs!1643258 (= lambda!358168 lambda!358039)))

(declare-fun bs!1643259 () Bool)

(assert (= bs!1643259 (and d!2032661 d!2032223)))

(assert (=> bs!1643259 (= lambda!358168 lambda!358119)))

(declare-fun bs!1643260 () Bool)

(assert (= bs!1643260 (and d!2032661 d!2031899)))

(assert (=> bs!1643260 (= lambda!358168 lambda!358049)))

(declare-fun bs!1643261 () Bool)

(assert (= bs!1643261 (and d!2032661 d!2032101)))

(assert (=> bs!1643261 (= lambda!358168 lambda!358101)))

(declare-fun bs!1643262 () Bool)

(assert (= bs!1643262 (and d!2032661 d!2032515)))

(assert (=> bs!1643262 (= lambda!358168 lambda!358146)))

(declare-fun bs!1643263 () Bool)

(assert (= bs!1643263 (and d!2032661 d!2032607)))

(assert (=> bs!1643263 (= lambda!358168 lambda!358162)))

(declare-fun bs!1643264 () Bool)

(assert (= bs!1643264 (and d!2032661 d!2032085)))

(assert (=> bs!1643264 (= lambda!358168 lambda!358099)))

(declare-fun bs!1643265 () Bool)

(assert (= bs!1643265 (and d!2032661 d!2032605)))

(assert (=> bs!1643265 (= lambda!358168 lambda!358161)))

(declare-fun bs!1643266 () Bool)

(assert (= bs!1643266 (and d!2032661 d!2032493)))

(assert (=> bs!1643266 (= lambda!358168 lambda!358144)))

(declare-fun bs!1643267 () Bool)

(assert (= bs!1643267 (and d!2032661 d!2032561)))

(assert (=> bs!1643267 (= lambda!358168 lambda!358154)))

(declare-fun bs!1643268 () Bool)

(assert (= bs!1643268 (and d!2032661 d!2032549)))

(assert (=> bs!1643268 (= lambda!358168 lambda!358151)))

(declare-fun bs!1643269 () Bool)

(assert (= bs!1643269 (and d!2032661 d!2032659)))

(assert (=> bs!1643269 (= lambda!358168 lambda!358167)))

(declare-fun bs!1643270 () Bool)

(assert (= bs!1643270 (and d!2032661 d!2032565)))

(assert (=> bs!1643270 (= lambda!358168 lambda!358155)))

(declare-fun bs!1643271 () Bool)

(assert (= bs!1643271 (and d!2032661 d!2031887)))

(assert (=> bs!1643271 (= lambda!358168 lambda!358048)))

(declare-fun lt!2385946 () List!65365)

(assert (=> d!2032661 (forall!15540 lt!2385946 lambda!358168)))

(declare-fun e!3926899 () List!65365)

(assert (=> d!2032661 (= lt!2385946 e!3926899)))

(declare-fun c!1186666 () Bool)

(assert (=> d!2032661 (= c!1186666 ((_ is Cons!65242) (Cons!65242 lt!2385662 Nil!65242)))))

(assert (=> d!2032661 (= (unfocusZipperList!1776 (Cons!65242 lt!2385662 Nil!65242)) lt!2385946)))

(declare-fun b!6478381 () Bool)

(assert (=> b!6478381 (= e!3926899 (Cons!65241 (generalisedConcat!1952 (exprs!6239 (h!71690 (Cons!65242 lt!2385662 Nil!65242)))) (unfocusZipperList!1776 (t!378990 (Cons!65242 lt!2385662 Nil!65242)))))))

(declare-fun b!6478382 () Bool)

(assert (=> b!6478382 (= e!3926899 Nil!65241)))

(assert (= (and d!2032661 c!1186666) b!6478381))

(assert (= (and d!2032661 (not c!1186666)) b!6478382))

(declare-fun m!7266826 () Bool)

(assert (=> d!2032661 m!7266826))

(declare-fun m!7266828 () Bool)

(assert (=> b!6478381 m!7266828))

(declare-fun m!7266830 () Bool)

(assert (=> b!6478381 m!7266830))

(assert (=> d!2032159 d!2032661))

(assert (=> d!2032017 d!2032305))

(declare-fun call!560674 () List!65365)

(declare-fun call!560672 () (InoxSet Context!11478))

(declare-fun c!1186669 () Bool)

(declare-fun bm!560667 () Bool)

(declare-fun c!1186668 () Bool)

(declare-fun c!1186667 () Bool)

(assert (=> bm!560667 (= call!560672 (derivationStepZipperDown!1603 (ite c!1186669 (regOne!33223 (h!71689 (exprs!6239 lt!2385665))) (ite c!1186668 (regTwo!33222 (h!71689 (exprs!6239 lt!2385665))) (ite c!1186667 (regOne!33222 (h!71689 (exprs!6239 lt!2385665))) (reg!16684 (h!71689 (exprs!6239 lt!2385665)))))) (ite (or c!1186669 c!1186668) (Context!11479 (t!378989 (exprs!6239 lt!2385665))) (Context!11479 call!560674)) (h!71688 s!2326)))))

(declare-fun b!6478383 () Bool)

(declare-fun e!3926904 () Bool)

(assert (=> b!6478383 (= c!1186668 e!3926904)))

(declare-fun res!2660038 () Bool)

(assert (=> b!6478383 (=> (not res!2660038) (not e!3926904))))

(assert (=> b!6478383 (= res!2660038 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385665))))))

(declare-fun e!3926902 () (InoxSet Context!11478))

(declare-fun e!3926901 () (InoxSet Context!11478))

(assert (=> b!6478383 (= e!3926902 e!3926901)))

(declare-fun b!6478384 () Bool)

(declare-fun c!1186671 () Bool)

(assert (=> b!6478384 (= c!1186671 ((_ is Star!16355) (h!71689 (exprs!6239 lt!2385665))))))

(declare-fun e!3926905 () (InoxSet Context!11478))

(declare-fun e!3926903 () (InoxSet Context!11478))

(assert (=> b!6478384 (= e!3926905 e!3926903)))

(declare-fun d!2032663 () Bool)

(declare-fun c!1186670 () Bool)

(assert (=> d!2032663 (= c!1186670 (and ((_ is ElementMatch!16355) (h!71689 (exprs!6239 lt!2385665))) (= (c!1186089 (h!71689 (exprs!6239 lt!2385665))) (h!71688 s!2326))))))

(declare-fun e!3926900 () (InoxSet Context!11478))

(assert (=> d!2032663 (= (derivationStepZipperDown!1603 (h!71689 (exprs!6239 lt!2385665)) (Context!11479 (t!378989 (exprs!6239 lt!2385665))) (h!71688 s!2326)) e!3926900)))

(declare-fun bm!560668 () Bool)

(declare-fun call!560677 () List!65365)

(assert (=> bm!560668 (= call!560674 call!560677)))

(declare-fun b!6478385 () Bool)

(assert (=> b!6478385 (= e!3926904 (nullable!6348 (regOne!33222 (h!71689 (exprs!6239 lt!2385665)))))))

(declare-fun b!6478386 () Bool)

(assert (=> b!6478386 (= e!3926903 ((as const (Array Context!11478 Bool)) false))))

(declare-fun bm!560669 () Bool)

(declare-fun call!560675 () (InoxSet Context!11478))

(declare-fun call!560676 () (InoxSet Context!11478))

(assert (=> bm!560669 (= call!560675 call!560676)))

(declare-fun b!6478387 () Bool)

(assert (=> b!6478387 (= e!3926903 call!560675)))

(declare-fun b!6478388 () Bool)

(declare-fun call!560673 () (InoxSet Context!11478))

(assert (=> b!6478388 (= e!3926902 ((_ map or) call!560672 call!560673))))

(declare-fun b!6478389 () Bool)

(assert (=> b!6478389 (= e!3926900 (store ((as const (Array Context!11478 Bool)) false) (Context!11479 (t!378989 (exprs!6239 lt!2385665))) true))))

(declare-fun b!6478390 () Bool)

(assert (=> b!6478390 (= e!3926900 e!3926902)))

(assert (=> b!6478390 (= c!1186669 ((_ is Union!16355) (h!71689 (exprs!6239 lt!2385665))))))

(declare-fun bm!560670 () Bool)

(assert (=> bm!560670 (= call!560677 ($colon$colon!2210 (exprs!6239 (Context!11479 (t!378989 (exprs!6239 lt!2385665)))) (ite (or c!1186668 c!1186667) (regTwo!33222 (h!71689 (exprs!6239 lt!2385665))) (h!71689 (exprs!6239 lt!2385665)))))))

(declare-fun b!6478391 () Bool)

(assert (=> b!6478391 (= e!3926901 ((_ map or) call!560673 call!560676))))

(declare-fun bm!560671 () Bool)

(assert (=> bm!560671 (= call!560676 call!560672)))

(declare-fun bm!560672 () Bool)

(assert (=> bm!560672 (= call!560673 (derivationStepZipperDown!1603 (ite c!1186669 (regTwo!33223 (h!71689 (exprs!6239 lt!2385665))) (regOne!33222 (h!71689 (exprs!6239 lt!2385665)))) (ite c!1186669 (Context!11479 (t!378989 (exprs!6239 lt!2385665))) (Context!11479 call!560677)) (h!71688 s!2326)))))

(declare-fun b!6478392 () Bool)

(assert (=> b!6478392 (= e!3926905 call!560675)))

(declare-fun b!6478393 () Bool)

(assert (=> b!6478393 (= e!3926901 e!3926905)))

(assert (=> b!6478393 (= c!1186667 ((_ is Concat!25200) (h!71689 (exprs!6239 lt!2385665))))))

(assert (= (and d!2032663 c!1186670) b!6478389))

(assert (= (and d!2032663 (not c!1186670)) b!6478390))

(assert (= (and b!6478390 c!1186669) b!6478388))

(assert (= (and b!6478390 (not c!1186669)) b!6478383))

(assert (= (and b!6478383 res!2660038) b!6478385))

(assert (= (and b!6478383 c!1186668) b!6478391))

(assert (= (and b!6478383 (not c!1186668)) b!6478393))

(assert (= (and b!6478393 c!1186667) b!6478392))

(assert (= (and b!6478393 (not c!1186667)) b!6478384))

(assert (= (and b!6478384 c!1186671) b!6478387))

(assert (= (and b!6478384 (not c!1186671)) b!6478386))

(assert (= (or b!6478392 b!6478387) bm!560668))

(assert (= (or b!6478392 b!6478387) bm!560669))

(assert (= (or b!6478391 bm!560668) bm!560670))

(assert (= (or b!6478391 bm!560669) bm!560671))

(assert (= (or b!6478388 b!6478391) bm!560672))

(assert (= (or b!6478388 bm!560671) bm!560667))

(declare-fun m!7266832 () Bool)

(assert (=> bm!560672 m!7266832))

(declare-fun m!7266834 () Bool)

(assert (=> bm!560667 m!7266834))

(declare-fun m!7266836 () Bool)

(assert (=> b!6478389 m!7266836))

(declare-fun m!7266838 () Bool)

(assert (=> b!6478385 m!7266838))

(declare-fun m!7266840 () Bool)

(assert (=> bm!560670 m!7266840))

(assert (=> bm!560473 d!2032663))

(assert (=> b!6477266 d!2032367))

(declare-fun b!6478394 () Bool)

(declare-fun e!3926912 () Bool)

(assert (=> b!6478394 (= e!3926912 (not (= (head!13189 (_2!36637 (get!22616 lt!2385779))) (c!1186089 (regTwo!33222 r!7292)))))))

(declare-fun b!6478395 () Bool)

(declare-fun res!2660041 () Bool)

(declare-fun e!3926906 () Bool)

(assert (=> b!6478395 (=> res!2660041 e!3926906)))

(assert (=> b!6478395 (= res!2660041 (not ((_ is ElementMatch!16355) (regTwo!33222 r!7292))))))

(declare-fun e!3926909 () Bool)

(assert (=> b!6478395 (= e!3926909 e!3926906)))

(declare-fun b!6478396 () Bool)

(declare-fun e!3926911 () Bool)

(declare-fun lt!2385947 () Bool)

(declare-fun call!560678 () Bool)

(assert (=> b!6478396 (= e!3926911 (= lt!2385947 call!560678))))

(declare-fun b!6478397 () Bool)

(declare-fun e!3926907 () Bool)

(assert (=> b!6478397 (= e!3926907 (= (head!13189 (_2!36637 (get!22616 lt!2385779))) (c!1186089 (regTwo!33222 r!7292))))))

(declare-fun b!6478398 () Bool)

(declare-fun res!2660044 () Bool)

(assert (=> b!6478398 (=> (not res!2660044) (not e!3926907))))

(assert (=> b!6478398 (= res!2660044 (not call!560678))))

(declare-fun d!2032665 () Bool)

(assert (=> d!2032665 e!3926911))

(declare-fun c!1186672 () Bool)

(assert (=> d!2032665 (= c!1186672 ((_ is EmptyExpr!16355) (regTwo!33222 r!7292)))))

(declare-fun e!3926910 () Bool)

(assert (=> d!2032665 (= lt!2385947 e!3926910)))

(declare-fun c!1186674 () Bool)

(assert (=> d!2032665 (= c!1186674 (isEmpty!37424 (_2!36637 (get!22616 lt!2385779))))))

(assert (=> d!2032665 (validRegex!8091 (regTwo!33222 r!7292))))

(assert (=> d!2032665 (= (matchR!8538 (regTwo!33222 r!7292) (_2!36637 (get!22616 lt!2385779))) lt!2385947)))

(declare-fun b!6478399 () Bool)

(declare-fun res!2660046 () Bool)

(assert (=> b!6478399 (=> res!2660046 e!3926906)))

(assert (=> b!6478399 (= res!2660046 e!3926907)))

(declare-fun res!2660039 () Bool)

(assert (=> b!6478399 (=> (not res!2660039) (not e!3926907))))

(assert (=> b!6478399 (= res!2660039 lt!2385947)))

(declare-fun b!6478400 () Bool)

(declare-fun e!3926908 () Bool)

(assert (=> b!6478400 (= e!3926906 e!3926908)))

(declare-fun res!2660045 () Bool)

(assert (=> b!6478400 (=> (not res!2660045) (not e!3926908))))

(assert (=> b!6478400 (= res!2660045 (not lt!2385947))))

(declare-fun b!6478401 () Bool)

(declare-fun res!2660042 () Bool)

(assert (=> b!6478401 (=> res!2660042 e!3926912)))

(assert (=> b!6478401 (= res!2660042 (not (isEmpty!37424 (tail!12274 (_2!36637 (get!22616 lt!2385779))))))))

(declare-fun b!6478402 () Bool)

(assert (=> b!6478402 (= e!3926910 (matchR!8538 (derivativeStep!5053 (regTwo!33222 r!7292) (head!13189 (_2!36637 (get!22616 lt!2385779)))) (tail!12274 (_2!36637 (get!22616 lt!2385779)))))))

(declare-fun bm!560673 () Bool)

(assert (=> bm!560673 (= call!560678 (isEmpty!37424 (_2!36637 (get!22616 lt!2385779))))))

(declare-fun b!6478403 () Bool)

(assert (=> b!6478403 (= e!3926908 e!3926912)))

(declare-fun res!2660043 () Bool)

(assert (=> b!6478403 (=> res!2660043 e!3926912)))

(assert (=> b!6478403 (= res!2660043 call!560678)))

(declare-fun b!6478404 () Bool)

(assert (=> b!6478404 (= e!3926911 e!3926909)))

(declare-fun c!1186673 () Bool)

(assert (=> b!6478404 (= c!1186673 ((_ is EmptyLang!16355) (regTwo!33222 r!7292)))))

(declare-fun b!6478405 () Bool)

(declare-fun res!2660040 () Bool)

(assert (=> b!6478405 (=> (not res!2660040) (not e!3926907))))

(assert (=> b!6478405 (= res!2660040 (isEmpty!37424 (tail!12274 (_2!36637 (get!22616 lt!2385779)))))))

(declare-fun b!6478406 () Bool)

(assert (=> b!6478406 (= e!3926910 (nullable!6348 (regTwo!33222 r!7292)))))

(declare-fun b!6478407 () Bool)

(assert (=> b!6478407 (= e!3926909 (not lt!2385947))))

(assert (= (and d!2032665 c!1186674) b!6478406))

(assert (= (and d!2032665 (not c!1186674)) b!6478402))

(assert (= (and d!2032665 c!1186672) b!6478396))

(assert (= (and d!2032665 (not c!1186672)) b!6478404))

(assert (= (and b!6478404 c!1186673) b!6478407))

(assert (= (and b!6478404 (not c!1186673)) b!6478395))

(assert (= (and b!6478395 (not res!2660041)) b!6478399))

(assert (= (and b!6478399 res!2660039) b!6478398))

(assert (= (and b!6478398 res!2660044) b!6478405))

(assert (= (and b!6478405 res!2660040) b!6478397))

(assert (= (and b!6478399 (not res!2660046)) b!6478400))

(assert (= (and b!6478400 res!2660045) b!6478403))

(assert (= (and b!6478403 (not res!2660043)) b!6478401))

(assert (= (and b!6478401 (not res!2660042)) b!6478394))

(assert (= (or b!6478396 b!6478403 b!6478398) bm!560673))

(declare-fun m!7266842 () Bool)

(assert (=> d!2032665 m!7266842))

(assert (=> d!2032665 m!7264954))

(declare-fun m!7266844 () Bool)

(assert (=> b!6478402 m!7266844))

(assert (=> b!6478402 m!7266844))

(declare-fun m!7266846 () Bool)

(assert (=> b!6478402 m!7266846))

(declare-fun m!7266848 () Bool)

(assert (=> b!6478402 m!7266848))

(assert (=> b!6478402 m!7266846))

(assert (=> b!6478402 m!7266848))

(declare-fun m!7266850 () Bool)

(assert (=> b!6478402 m!7266850))

(assert (=> bm!560673 m!7266842))

(assert (=> b!6478401 m!7266848))

(assert (=> b!6478401 m!7266848))

(declare-fun m!7266852 () Bool)

(assert (=> b!6478401 m!7266852))

(assert (=> b!6478397 m!7266844))

(assert (=> b!6478405 m!7266848))

(assert (=> b!6478405 m!7266848))

(assert (=> b!6478405 m!7266852))

(assert (=> b!6478394 m!7266844))

(assert (=> b!6478406 m!7265598))

(assert (=> b!6476901 d!2032665))

(assert (=> b!6476901 d!2032285))

(assert (=> bm!560485 d!2031901))

(assert (=> bm!560373 d!2032273))

(declare-fun d!2032667 () Bool)

(assert (=> d!2032667 (= (nullable!6348 lt!2385687) (nullableFct!2287 lt!2385687))))

(declare-fun bs!1643272 () Bool)

(assert (= bs!1643272 d!2032667))

(declare-fun m!7266854 () Bool)

(assert (=> bs!1643272 m!7266854))

(assert (=> b!6476550 d!2032667))

(assert (=> d!2032103 d!2032313))

(assert (=> d!2032103 d!2032499))

(declare-fun d!2032669 () Bool)

(assert (=> d!2032669 (= (Exists!3425 lambda!358083) (choose!48008 lambda!358083))))

(declare-fun bs!1643273 () Bool)

(assert (= bs!1643273 d!2032669))

(declare-fun m!7266856 () Bool)

(assert (=> bs!1643273 m!7266856))

(assert (=> d!2032041 d!2032669))

(declare-fun d!2032671 () Bool)

(assert (=> d!2032671 (= (Exists!3425 lambda!358084) (choose!48008 lambda!358084))))

(declare-fun bs!1643274 () Bool)

(assert (= bs!1643274 d!2032671))

(declare-fun m!7266858 () Bool)

(assert (=> bs!1643274 m!7266858))

(assert (=> d!2032041 d!2032671))

(declare-fun bs!1643275 () Bool)

(declare-fun d!2032673 () Bool)

(assert (= bs!1643275 (and d!2032673 d!2032245)))

(declare-fun lambda!358169 () Int)

(assert (=> bs!1643275 (not (= lambda!358169 lambda!358128))))

(declare-fun bs!1643276 () Bool)

(assert (= bs!1643276 (and d!2032673 b!6478346)))

(assert (=> bs!1643276 (not (= lambda!358169 lambda!358164))))

(declare-fun bs!1643277 () Bool)

(assert (= bs!1643277 (and d!2032673 b!6477635)))

(assert (=> bs!1643277 (not (= lambda!358169 lambda!358129))))

(declare-fun bs!1643278 () Bool)

(assert (= bs!1643278 (and d!2032673 b!6477637)))

(assert (=> bs!1643278 (not (= lambda!358169 lambda!358130))))

(declare-fun bs!1643279 () Bool)

(assert (= bs!1643279 (and d!2032673 b!6478157)))

(assert (=> bs!1643279 (not (= lambda!358169 lambda!358148))))

(declare-fun bs!1643280 () Bool)

(assert (= bs!1643280 (and d!2032673 b!6477548)))

(assert (=> bs!1643280 (not (= lambda!358169 lambda!358118))))

(declare-fun bs!1643281 () Bool)

(assert (= bs!1643281 (and d!2032673 b!6476300)))

(assert (=> bs!1643281 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358169 lambda!358016))))

(assert (=> bs!1643275 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358169 lambda!358127))))

(declare-fun bs!1643282 () Bool)

(assert (= bs!1643282 (and d!2032673 d!2032127)))

(assert (=> bs!1643282 (not (= lambda!358169 lambda!358115))))

(declare-fun bs!1643283 () Bool)

(assert (= bs!1643283 (and d!2032673 b!6478172)))

(assert (=> bs!1643283 (not (= lambda!358169 lambda!358152))))

(declare-fun bs!1643284 () Bool)

(assert (= bs!1643284 (and d!2032673 b!6477546)))

(assert (=> bs!1643284 (not (= lambda!358169 lambda!358117))))

(declare-fun bs!1643285 () Bool)

(assert (= bs!1643285 (and d!2032673 b!6476519)))

(assert (=> bs!1643285 (not (= lambda!358169 lambda!358035))))

(declare-fun bs!1643286 () Bool)

(assert (= bs!1643286 (and d!2032673 b!6477297)))

(assert (=> bs!1643286 (not (= lambda!358169 lambda!358103))))

(declare-fun bs!1643287 () Bool)

(assert (= bs!1643287 (and d!2032673 b!6476331)))

(assert (=> bs!1643287 (not (= lambda!358169 lambda!358020))))

(declare-fun bs!1643288 () Bool)

(assert (= bs!1643288 (and d!2032673 d!2032041)))

(assert (=> bs!1643288 (= lambda!358169 lambda!358083)))

(assert (=> bs!1643281 (not (= lambda!358169 lambda!358017))))

(declare-fun bs!1643289 () Bool)

(assert (= bs!1643289 (and d!2032673 d!2031923)))

(assert (=> bs!1643289 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358169 lambda!358059))))

(declare-fun bs!1643290 () Bool)

(assert (= bs!1643290 (and d!2032673 d!2032379)))

(assert (=> bs!1643290 (= lambda!358169 lambda!358139)))

(declare-fun bs!1643291 () Bool)

(assert (= bs!1643291 (and d!2032673 d!2032125)))

(assert (=> bs!1643291 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358169 lambda!358107))))

(declare-fun bs!1643292 () Bool)

(assert (= bs!1643292 (and d!2032673 b!6476517)))

(assert (=> bs!1643292 (not (= lambda!358169 lambda!358032))))

(assert (=> bs!1643289 (not (= lambda!358169 lambda!358062))))

(assert (=> bs!1643291 (not (= lambda!358169 lambda!358108))))

(declare-fun bs!1643293 () Bool)

(assert (= bs!1643293 (and d!2032673 b!6478174)))

(assert (=> bs!1643293 (not (= lambda!358169 lambda!358153))))

(declare-fun bs!1643294 () Bool)

(assert (= bs!1643294 (and d!2032673 d!2032591)))

(assert (=> bs!1643294 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358169 lambda!358160))))

(declare-fun bs!1643295 () Bool)

(assert (= bs!1643295 (and d!2032673 b!6478344)))

(assert (=> bs!1643295 (not (= lambda!358169 lambda!358163))))

(declare-fun bs!1643296 () Bool)

(assert (= bs!1643296 (and d!2032673 b!6477031)))

(assert (=> bs!1643296 (not (= lambda!358169 lambda!358073))))

(assert (=> bs!1643287 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358169 lambda!358018))))

(declare-fun bs!1643297 () Bool)

(assert (= bs!1643297 (and d!2032673 d!2032589)))

(assert (=> bs!1643297 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358169 lambda!358158))))

(declare-fun bs!1643298 () Bool)

(assert (= bs!1643298 (and d!2032673 b!6476306)))

(assert (=> bs!1643298 (not (= lambda!358169 lambda!358014))))

(declare-fun bs!1643299 () Bool)

(assert (= bs!1643299 (and d!2032673 d!2032037)))

(assert (=> bs!1643299 (= lambda!358169 lambda!358082)))

(declare-fun bs!1643300 () Bool)

(assert (= bs!1643300 (and d!2032673 b!6477299)))

(assert (=> bs!1643300 (not (= lambda!358169 lambda!358105))))

(declare-fun bs!1643301 () Bool)

(assert (= bs!1643301 (and d!2032673 b!6477033)))

(assert (=> bs!1643301 (not (= lambda!358169 lambda!358075))))

(assert (=> bs!1643282 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) (Star!16355 (reg!16684 (regOne!33222 r!7292))))) (= lambda!358169 lambda!358114))))

(declare-fun bs!1643302 () Bool)

(assert (= bs!1643302 (and d!2032673 d!2032155)))

(assert (=> bs!1643302 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358169 lambda!358116))))

(assert (=> bs!1643297 (not (= lambda!358169 lambda!358159))))

(declare-fun bs!1643303 () Bool)

(assert (= bs!1643303 (and d!2032673 b!6477792)))

(assert (=> bs!1643303 (not (= lambda!358169 lambda!358133))))

(assert (=> bs!1643298 (= lambda!358169 lambda!358013)))

(declare-fun bs!1643304 () Bool)

(assert (= bs!1643304 (and d!2032673 d!2031905)))

(assert (=> bs!1643304 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358169 lambda!358052))))

(declare-fun bs!1643305 () Bool)

(assert (= bs!1643305 (and d!2032673 b!6478159)))

(assert (=> bs!1643305 (not (= lambda!358169 lambda!358149))))

(assert (=> bs!1643287 (not (= lambda!358169 lambda!358019))))

(declare-fun bs!1643306 () Bool)

(assert (= bs!1643306 (and d!2032673 b!6477794)))

(assert (=> bs!1643306 (not (= lambda!358169 lambda!358134))))

(assert (=> bs!1643288 (not (= lambda!358169 lambda!358084))))

(declare-fun bs!1643307 () Bool)

(assert (= bs!1643307 (and d!2032673 d!2032237)))

(assert (=> bs!1643307 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358169 lambda!358122))))

(assert (=> d!2032673 true))

(assert (=> d!2032673 true))

(assert (=> d!2032673 true))

(declare-fun lambda!358170 () Int)

(assert (=> bs!1643275 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358170 lambda!358128))))

(assert (=> bs!1643276 (= (and (= (regOne!33222 r!7292) (regOne!33222 (regOne!33223 lt!2385680))) (= (regTwo!33222 r!7292) (regTwo!33222 (regOne!33223 lt!2385680)))) (= lambda!358170 lambda!358164))))

(assert (=> bs!1643277 (not (= lambda!358170 lambda!358129))))

(assert (=> bs!1643278 (= (and (= (regOne!33222 r!7292) (regOne!33222 (regTwo!33223 r!7292))) (= (regTwo!33222 r!7292) (regTwo!33222 (regTwo!33223 r!7292)))) (= lambda!358170 lambda!358130))))

(assert (=> bs!1643279 (not (= lambda!358170 lambda!358148))))

(assert (=> bs!1643280 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (regOne!33222 (regOne!33223 lt!2385664))) (= (regTwo!33222 r!7292) (regTwo!33222 (regOne!33223 lt!2385664)))) (= lambda!358170 lambda!358118))))

(assert (=> bs!1643281 (not (= lambda!358170 lambda!358016))))

(assert (=> bs!1643275 (not (= lambda!358170 lambda!358127))))

(assert (=> bs!1643282 (not (= lambda!358170 lambda!358115))))

(assert (=> bs!1643283 (not (= lambda!358170 lambda!358152))))

(assert (=> bs!1643284 (not (= lambda!358170 lambda!358117))))

(assert (=> bs!1643285 (= (and (= (regOne!33222 r!7292) (regOne!33222 lt!2385680)) (= (regTwo!33222 r!7292) (regTwo!33222 lt!2385680))) (= lambda!358170 lambda!358035))))

(assert (=> bs!1643286 (not (= lambda!358170 lambda!358103))))

(assert (=> bs!1643287 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358170 lambda!358020))))

(assert (=> bs!1643288 (not (= lambda!358170 lambda!358083))))

(assert (=> bs!1643281 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358170 lambda!358017))))

(assert (=> bs!1643289 (not (= lambda!358170 lambda!358059))))

(assert (=> bs!1643290 (not (= lambda!358170 lambda!358139))))

(assert (=> bs!1643291 (not (= lambda!358170 lambda!358107))))

(assert (=> bs!1643292 (not (= lambda!358170 lambda!358032))))

(assert (=> bs!1643289 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358170 lambda!358062))))

(assert (=> bs!1643291 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (reg!16684 (regOne!33222 r!7292))) (= (regTwo!33222 r!7292) lt!2385664)) (= lambda!358170 lambda!358108))))

(assert (=> bs!1643293 (= (and (= (regOne!33222 r!7292) (regOne!33222 (regOne!33223 r!7292))) (= (regTwo!33222 r!7292) (regTwo!33222 (regOne!33223 r!7292)))) (= lambda!358170 lambda!358153))))

(assert (=> bs!1643294 (not (= lambda!358170 lambda!358160))))

(assert (=> bs!1643295 (not (= lambda!358170 lambda!358163))))

(assert (=> bs!1643296 (not (= lambda!358170 lambda!358073))))

(assert (=> bs!1643287 (not (= lambda!358170 lambda!358018))))

(assert (=> bs!1643297 (not (= lambda!358170 lambda!358158))))

(assert (=> bs!1643298 (= lambda!358170 lambda!358014)))

(assert (=> bs!1643299 (not (= lambda!358170 lambda!358082))))

(declare-fun bs!1643308 () Bool)

(assert (= bs!1643308 d!2032673))

(assert (=> bs!1643308 (not (= lambda!358170 lambda!358169))))

(assert (=> bs!1643300 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (regOne!33222 lt!2385664)) (= (regTwo!33222 r!7292) (regTwo!33222 lt!2385664))) (= lambda!358170 lambda!358105))))

(assert (=> bs!1643301 (= lambda!358170 lambda!358075)))

(assert (=> bs!1643282 (not (= lambda!358170 lambda!358114))))

(assert (=> bs!1643302 (not (= lambda!358170 lambda!358116))))

(assert (=> bs!1643297 (= (= (regOne!33222 r!7292) lt!2385664) (= lambda!358170 lambda!358159))))

(assert (=> bs!1643303 (not (= lambda!358170 lambda!358133))))

(assert (=> bs!1643298 (not (= lambda!358170 lambda!358013))))

(assert (=> bs!1643304 (not (= lambda!358170 lambda!358052))))

(assert (=> bs!1643305 (= (and (= s!2326 (_1!36637 lt!2385678)) (= (regOne!33222 r!7292) (regOne!33222 (regTwo!33223 lt!2385664))) (= (regTwo!33222 r!7292) (regTwo!33222 (regTwo!33223 lt!2385664)))) (= lambda!358170 lambda!358149))))

(assert (=> bs!1643287 (not (= lambda!358170 lambda!358019))))

(assert (=> bs!1643306 (= (and (= (regOne!33222 r!7292) (regOne!33222 (regTwo!33223 lt!2385680))) (= (regTwo!33222 r!7292) (regTwo!33222 (regTwo!33223 lt!2385680)))) (= lambda!358170 lambda!358134))))

(assert (=> bs!1643288 (= lambda!358170 lambda!358084)))

(assert (=> bs!1643307 (not (= lambda!358170 lambda!358122))))

(assert (=> d!2032673 true))

(assert (=> d!2032673 true))

(assert (=> d!2032673 true))

(assert (=> d!2032673 (= (Exists!3425 lambda!358169) (Exists!3425 lambda!358170))))

(assert (=> d!2032673 true))

(declare-fun _$90!2334 () Unit!158751)

(assert (=> d!2032673 (= (choose!48006 (regOne!33222 r!7292) (regTwo!33222 r!7292) s!2326) _$90!2334)))

(declare-fun m!7266860 () Bool)

(assert (=> bs!1643308 m!7266860))

(declare-fun m!7266862 () Bool)

(assert (=> bs!1643308 m!7266862))

(assert (=> d!2032041 d!2032673))

(assert (=> d!2032041 d!2032279))

(declare-fun d!2032675 () Bool)

(declare-fun c!1186675 () Bool)

(assert (=> d!2032675 (= c!1186675 ((_ is Nil!65240) lt!2385814))))

(declare-fun e!3926913 () (InoxSet C!32980))

(assert (=> d!2032675 (= (content!12410 lt!2385814) e!3926913)))

(declare-fun b!6478408 () Bool)

(assert (=> b!6478408 (= e!3926913 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6478409 () Bool)

(assert (=> b!6478409 (= e!3926913 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 lt!2385814) true) (content!12410 (t!378988 lt!2385814))))))

(assert (= (and d!2032675 c!1186675) b!6478408))

(assert (= (and d!2032675 (not c!1186675)) b!6478409))

(declare-fun m!7266864 () Bool)

(assert (=> b!6478409 m!7266864))

(declare-fun m!7266866 () Bool)

(assert (=> b!6478409 m!7266866))

(assert (=> d!2032001 d!2032675))

(assert (=> d!2032001 d!2032347))

(assert (=> d!2032001 d!2032473))

(assert (=> d!2031851 d!2032443))

(assert (=> d!2031851 d!2032325))

(declare-fun d!2032677 () Bool)

(assert (=> d!2032677 (= (isEmptyExpr!1748 lt!2385748) ((_ is EmptyExpr!16355) lt!2385748))))

(assert (=> b!6476709 d!2032677))

(assert (=> b!6476597 d!2032389))

(declare-fun b!6478410 () Bool)

(declare-fun e!3926920 () Bool)

(assert (=> b!6478410 (= e!3926920 (not (= (head!13189 (_1!36637 (get!22616 lt!2385866))) (c!1186089 (reg!16684 (regOne!33222 r!7292))))))))

(declare-fun b!6478411 () Bool)

(declare-fun res!2660049 () Bool)

(declare-fun e!3926914 () Bool)

(assert (=> b!6478411 (=> res!2660049 e!3926914)))

(assert (=> b!6478411 (= res!2660049 (not ((_ is ElementMatch!16355) (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun e!3926917 () Bool)

(assert (=> b!6478411 (= e!3926917 e!3926914)))

(declare-fun b!6478412 () Bool)

(declare-fun e!3926919 () Bool)

(declare-fun lt!2385948 () Bool)

(declare-fun call!560679 () Bool)

(assert (=> b!6478412 (= e!3926919 (= lt!2385948 call!560679))))

(declare-fun b!6478413 () Bool)

(declare-fun e!3926915 () Bool)

(assert (=> b!6478413 (= e!3926915 (= (head!13189 (_1!36637 (get!22616 lt!2385866))) (c!1186089 (reg!16684 (regOne!33222 r!7292)))))))

(declare-fun b!6478414 () Bool)

(declare-fun res!2660052 () Bool)

(assert (=> b!6478414 (=> (not res!2660052) (not e!3926915))))

(assert (=> b!6478414 (= res!2660052 (not call!560679))))

(declare-fun d!2032679 () Bool)

(assert (=> d!2032679 e!3926919))

(declare-fun c!1186676 () Bool)

(assert (=> d!2032679 (= c!1186676 ((_ is EmptyExpr!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun e!3926918 () Bool)

(assert (=> d!2032679 (= lt!2385948 e!3926918)))

(declare-fun c!1186678 () Bool)

(assert (=> d!2032679 (= c!1186678 (isEmpty!37424 (_1!36637 (get!22616 lt!2385866))))))

(assert (=> d!2032679 (validRegex!8091 (reg!16684 (regOne!33222 r!7292)))))

(assert (=> d!2032679 (= (matchR!8538 (reg!16684 (regOne!33222 r!7292)) (_1!36637 (get!22616 lt!2385866))) lt!2385948)))

(declare-fun b!6478415 () Bool)

(declare-fun res!2660054 () Bool)

(assert (=> b!6478415 (=> res!2660054 e!3926914)))

(assert (=> b!6478415 (= res!2660054 e!3926915)))

(declare-fun res!2660047 () Bool)

(assert (=> b!6478415 (=> (not res!2660047) (not e!3926915))))

(assert (=> b!6478415 (= res!2660047 lt!2385948)))

(declare-fun b!6478416 () Bool)

(declare-fun e!3926916 () Bool)

(assert (=> b!6478416 (= e!3926914 e!3926916)))

(declare-fun res!2660053 () Bool)

(assert (=> b!6478416 (=> (not res!2660053) (not e!3926916))))

(assert (=> b!6478416 (= res!2660053 (not lt!2385948))))

(declare-fun b!6478417 () Bool)

(declare-fun res!2660050 () Bool)

(assert (=> b!6478417 (=> res!2660050 e!3926920)))

(assert (=> b!6478417 (= res!2660050 (not (isEmpty!37424 (tail!12274 (_1!36637 (get!22616 lt!2385866))))))))

(declare-fun b!6478418 () Bool)

(assert (=> b!6478418 (= e!3926918 (matchR!8538 (derivativeStep!5053 (reg!16684 (regOne!33222 r!7292)) (head!13189 (_1!36637 (get!22616 lt!2385866)))) (tail!12274 (_1!36637 (get!22616 lt!2385866)))))))

(declare-fun bm!560674 () Bool)

(assert (=> bm!560674 (= call!560679 (isEmpty!37424 (_1!36637 (get!22616 lt!2385866))))))

(declare-fun b!6478419 () Bool)

(assert (=> b!6478419 (= e!3926916 e!3926920)))

(declare-fun res!2660051 () Bool)

(assert (=> b!6478419 (=> res!2660051 e!3926920)))

(assert (=> b!6478419 (= res!2660051 call!560679)))

(declare-fun b!6478420 () Bool)

(assert (=> b!6478420 (= e!3926919 e!3926917)))

(declare-fun c!1186677 () Bool)

(assert (=> b!6478420 (= c!1186677 ((_ is EmptyLang!16355) (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6478421 () Bool)

(declare-fun res!2660048 () Bool)

(assert (=> b!6478421 (=> (not res!2660048) (not e!3926915))))

(assert (=> b!6478421 (= res!2660048 (isEmpty!37424 (tail!12274 (_1!36637 (get!22616 lt!2385866)))))))

(declare-fun b!6478422 () Bool)

(assert (=> b!6478422 (= e!3926918 (nullable!6348 (reg!16684 (regOne!33222 r!7292))))))

(declare-fun b!6478423 () Bool)

(assert (=> b!6478423 (= e!3926917 (not lt!2385948))))

(assert (= (and d!2032679 c!1186678) b!6478422))

(assert (= (and d!2032679 (not c!1186678)) b!6478418))

(assert (= (and d!2032679 c!1186676) b!6478412))

(assert (= (and d!2032679 (not c!1186676)) b!6478420))

(assert (= (and b!6478420 c!1186677) b!6478423))

(assert (= (and b!6478420 (not c!1186677)) b!6478411))

(assert (= (and b!6478411 (not res!2660049)) b!6478415))

(assert (= (and b!6478415 res!2660047) b!6478414))

(assert (= (and b!6478414 res!2660052) b!6478421))

(assert (= (and b!6478421 res!2660048) b!6478413))

(assert (= (and b!6478415 (not res!2660054)) b!6478416))

(assert (= (and b!6478416 res!2660053) b!6478419))

(assert (= (and b!6478419 (not res!2660051)) b!6478417))

(assert (= (and b!6478417 (not res!2660050)) b!6478410))

(assert (= (or b!6478412 b!6478419 b!6478414) bm!560674))

(declare-fun m!7266868 () Bool)

(assert (=> d!2032679 m!7266868))

(assert (=> d!2032679 m!7264888))

(declare-fun m!7266870 () Bool)

(assert (=> b!6478418 m!7266870))

(assert (=> b!6478418 m!7266870))

(declare-fun m!7266872 () Bool)

(assert (=> b!6478418 m!7266872))

(declare-fun m!7266874 () Bool)

(assert (=> b!6478418 m!7266874))

(assert (=> b!6478418 m!7266872))

(assert (=> b!6478418 m!7266874))

(declare-fun m!7266876 () Bool)

(assert (=> b!6478418 m!7266876))

(assert (=> bm!560674 m!7266868))

(assert (=> b!6478417 m!7266874))

(assert (=> b!6478417 m!7266874))

(declare-fun m!7266878 () Bool)

(assert (=> b!6478417 m!7266878))

(assert (=> b!6478413 m!7266870))

(assert (=> b!6478421 m!7266874))

(assert (=> b!6478421 m!7266874))

(assert (=> b!6478421 m!7266878))

(assert (=> b!6478410 m!7266870))

(assert (=> b!6478422 m!7265378))

(assert (=> b!6477402 d!2032679))

(assert (=> b!6477402 d!2032425))

(declare-fun d!2032681 () Bool)

(declare-fun c!1186679 () Bool)

(assert (=> d!2032681 (= c!1186679 ((_ is Nil!65240) lt!2385786))))

(declare-fun e!3926921 () (InoxSet C!32980))

(assert (=> d!2032681 (= (content!12410 lt!2385786) e!3926921)))

(declare-fun b!6478424 () Bool)

(assert (=> b!6478424 (= e!3926921 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6478425 () Bool)

(assert (=> b!6478425 (= e!3926921 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 lt!2385786) true) (content!12410 (t!378988 lt!2385786))))))

(assert (= (and d!2032681 c!1186679) b!6478424))

(assert (= (and d!2032681 (not c!1186679)) b!6478425))

(declare-fun m!7266880 () Bool)

(assert (=> b!6478425 m!7266880))

(declare-fun m!7266882 () Bool)

(assert (=> b!6478425 m!7266882))

(assert (=> d!2031951 d!2032681))

(declare-fun d!2032683 () Bool)

(declare-fun c!1186680 () Bool)

(assert (=> d!2032683 (= c!1186680 ((_ is Nil!65240) (_1!36637 lt!2385678)))))

(declare-fun e!3926922 () (InoxSet C!32980))

(assert (=> d!2032683 (= (content!12410 (_1!36637 lt!2385678)) e!3926922)))

(declare-fun b!6478426 () Bool)

(assert (=> b!6478426 (= e!3926922 ((as const (Array C!32980 Bool)) false))))

(declare-fun b!6478427 () Bool)

(assert (=> b!6478427 (= e!3926922 ((_ map or) (store ((as const (Array C!32980 Bool)) false) (h!71688 (_1!36637 lt!2385678)) true) (content!12410 (t!378988 (_1!36637 lt!2385678)))))))

(assert (= (and d!2032683 c!1186680) b!6478426))

(assert (= (and d!2032683 (not c!1186680)) b!6478427))

(declare-fun m!7266884 () Bool)

(assert (=> b!6478427 m!7266884))

(assert (=> b!6478427 m!7265780))

(assert (=> d!2031951 d!2032683))

(assert (=> d!2031951 d!2032473))

(declare-fun d!2032685 () Bool)

(assert (=> d!2032685 (= (nullable!6348 (h!71689 (exprs!6239 lt!2385676))) (nullableFct!2287 (h!71689 (exprs!6239 lt!2385676))))))

(declare-fun bs!1643309 () Bool)

(assert (= bs!1643309 d!2032685))

(declare-fun m!7266886 () Bool)

(assert (=> bs!1643309 m!7266886))

(assert (=> b!6477148 d!2032685))

(assert (=> b!6476442 d!2032309))

(declare-fun d!2032687 () Bool)

(assert (=> d!2032687 (= (head!13190 (unfocusZipperList!1776 zl!343)) (h!71689 (unfocusZipperList!1776 zl!343)))))

(assert (=> b!6477226 d!2032687))

(assert (=> d!2031931 d!2032567))

(declare-fun b!6478428 () Bool)

(declare-fun e!3926929 () Bool)

(assert (=> b!6478428 (= e!3926929 (not (= (head!13189 Nil!65240) (c!1186089 lt!2385664))))))

(declare-fun b!6478429 () Bool)

(declare-fun res!2660057 () Bool)

(declare-fun e!3926923 () Bool)

(assert (=> b!6478429 (=> res!2660057 e!3926923)))

(assert (=> b!6478429 (= res!2660057 (not ((_ is ElementMatch!16355) lt!2385664)))))

(declare-fun e!3926926 () Bool)

(assert (=> b!6478429 (= e!3926926 e!3926923)))

(declare-fun b!6478430 () Bool)

(declare-fun e!3926928 () Bool)

(declare-fun lt!2385949 () Bool)

(declare-fun call!560680 () Bool)

(assert (=> b!6478430 (= e!3926928 (= lt!2385949 call!560680))))

(declare-fun b!6478431 () Bool)

(declare-fun e!3926924 () Bool)

(assert (=> b!6478431 (= e!3926924 (= (head!13189 Nil!65240) (c!1186089 lt!2385664)))))

(declare-fun b!6478432 () Bool)

(declare-fun res!2660060 () Bool)

(assert (=> b!6478432 (=> (not res!2660060) (not e!3926924))))

(assert (=> b!6478432 (= res!2660060 (not call!560680))))

(declare-fun d!2032689 () Bool)

(assert (=> d!2032689 e!3926928))

(declare-fun c!1186681 () Bool)

(assert (=> d!2032689 (= c!1186681 ((_ is EmptyExpr!16355) lt!2385664))))

(declare-fun e!3926927 () Bool)

(assert (=> d!2032689 (= lt!2385949 e!3926927)))

(declare-fun c!1186683 () Bool)

(assert (=> d!2032689 (= c!1186683 (isEmpty!37424 Nil!65240))))

(assert (=> d!2032689 (validRegex!8091 lt!2385664)))

(assert (=> d!2032689 (= (matchR!8538 lt!2385664 Nil!65240) lt!2385949)))

(declare-fun b!6478433 () Bool)

(declare-fun res!2660062 () Bool)

(assert (=> b!6478433 (=> res!2660062 e!3926923)))

(assert (=> b!6478433 (= res!2660062 e!3926924)))

(declare-fun res!2660055 () Bool)

(assert (=> b!6478433 (=> (not res!2660055) (not e!3926924))))

(assert (=> b!6478433 (= res!2660055 lt!2385949)))

(declare-fun b!6478434 () Bool)

(declare-fun e!3926925 () Bool)

(assert (=> b!6478434 (= e!3926923 e!3926925)))

(declare-fun res!2660061 () Bool)

(assert (=> b!6478434 (=> (not res!2660061) (not e!3926925))))

(assert (=> b!6478434 (= res!2660061 (not lt!2385949))))

(declare-fun b!6478435 () Bool)

(declare-fun res!2660058 () Bool)

(assert (=> b!6478435 (=> res!2660058 e!3926929)))

(assert (=> b!6478435 (= res!2660058 (not (isEmpty!37424 (tail!12274 Nil!65240))))))

(declare-fun b!6478436 () Bool)

(assert (=> b!6478436 (= e!3926927 (matchR!8538 (derivativeStep!5053 lt!2385664 (head!13189 Nil!65240)) (tail!12274 Nil!65240)))))

(declare-fun bm!560675 () Bool)

(assert (=> bm!560675 (= call!560680 (isEmpty!37424 Nil!65240))))

(declare-fun b!6478437 () Bool)

(assert (=> b!6478437 (= e!3926925 e!3926929)))

(declare-fun res!2660059 () Bool)

(assert (=> b!6478437 (=> res!2660059 e!3926929)))

(assert (=> b!6478437 (= res!2660059 call!560680)))

(declare-fun b!6478438 () Bool)

(assert (=> b!6478438 (= e!3926928 e!3926926)))

(declare-fun c!1186682 () Bool)

(assert (=> b!6478438 (= c!1186682 ((_ is EmptyLang!16355) lt!2385664))))

(declare-fun b!6478439 () Bool)

(declare-fun res!2660056 () Bool)

(assert (=> b!6478439 (=> (not res!2660056) (not e!3926924))))

(assert (=> b!6478439 (= res!2660056 (isEmpty!37424 (tail!12274 Nil!65240)))))

(declare-fun b!6478440 () Bool)

(assert (=> b!6478440 (= e!3926927 (nullable!6348 lt!2385664))))

(declare-fun b!6478441 () Bool)

(assert (=> b!6478441 (= e!3926926 (not lt!2385949))))

(assert (= (and d!2032689 c!1186683) b!6478440))

(assert (= (and d!2032689 (not c!1186683)) b!6478436))

(assert (= (and d!2032689 c!1186681) b!6478430))

(assert (= (and d!2032689 (not c!1186681)) b!6478438))

(assert (= (and b!6478438 c!1186682) b!6478441))

(assert (= (and b!6478438 (not c!1186682)) b!6478429))

(assert (= (and b!6478429 (not res!2660057)) b!6478433))

(assert (= (and b!6478433 res!2660055) b!6478432))

(assert (= (and b!6478432 res!2660060) b!6478439))

(assert (= (and b!6478439 res!2660056) b!6478431))

(assert (= (and b!6478433 (not res!2660062)) b!6478434))

(assert (= (and b!6478434 res!2660061) b!6478437))

(assert (= (and b!6478437 (not res!2660059)) b!6478435))

(assert (= (and b!6478435 (not res!2660058)) b!6478428))

(assert (= (or b!6478430 b!6478437 b!6478432) bm!560675))

(assert (=> d!2032689 m!7265862))

(assert (=> d!2032689 m!7264892))

(assert (=> b!6478436 m!7265864))

(assert (=> b!6478436 m!7265864))

(declare-fun m!7266888 () Bool)

(assert (=> b!6478436 m!7266888))

(assert (=> b!6478436 m!7265868))

(assert (=> b!6478436 m!7266888))

(assert (=> b!6478436 m!7265868))

(declare-fun m!7266890 () Bool)

(assert (=> b!6478436 m!7266890))

(assert (=> bm!560675 m!7265862))

(assert (=> b!6478435 m!7265868))

(assert (=> b!6478435 m!7265868))

(assert (=> b!6478435 m!7265872))

(assert (=> b!6478431 m!7265864))

(assert (=> b!6478439 m!7265868))

(assert (=> b!6478439 m!7265868))

(assert (=> b!6478439 m!7265872))

(assert (=> b!6478428 m!7265864))

(assert (=> b!6478440 m!7264904))

(assert (=> d!2031931 d!2032689))

(assert (=> d!2031931 d!2032177))

(declare-fun b!6478442 () Bool)

(declare-fun e!3926936 () Bool)

(assert (=> b!6478442 (= e!3926936 (not (= (head!13189 (tail!12274 s!2326)) (c!1186089 (derivativeStep!5053 lt!2385680 (head!13189 s!2326))))))))

(declare-fun b!6478443 () Bool)

(declare-fun res!2660065 () Bool)

(declare-fun e!3926930 () Bool)

(assert (=> b!6478443 (=> res!2660065 e!3926930)))

(assert (=> b!6478443 (= res!2660065 (not ((_ is ElementMatch!16355) (derivativeStep!5053 lt!2385680 (head!13189 s!2326)))))))

(declare-fun e!3926933 () Bool)

(assert (=> b!6478443 (= e!3926933 e!3926930)))

(declare-fun b!6478444 () Bool)

(declare-fun e!3926935 () Bool)

(declare-fun lt!2385950 () Bool)

(declare-fun call!560681 () Bool)

(assert (=> b!6478444 (= e!3926935 (= lt!2385950 call!560681))))

(declare-fun b!6478445 () Bool)

(declare-fun e!3926931 () Bool)

(assert (=> b!6478445 (= e!3926931 (= (head!13189 (tail!12274 s!2326)) (c!1186089 (derivativeStep!5053 lt!2385680 (head!13189 s!2326)))))))

(declare-fun b!6478446 () Bool)

(declare-fun res!2660068 () Bool)

(assert (=> b!6478446 (=> (not res!2660068) (not e!3926931))))

(assert (=> b!6478446 (= res!2660068 (not call!560681))))

(declare-fun d!2032691 () Bool)

(assert (=> d!2032691 e!3926935))

(declare-fun c!1186684 () Bool)

(assert (=> d!2032691 (= c!1186684 ((_ is EmptyExpr!16355) (derivativeStep!5053 lt!2385680 (head!13189 s!2326))))))

(declare-fun e!3926934 () Bool)

(assert (=> d!2032691 (= lt!2385950 e!3926934)))

(declare-fun c!1186686 () Bool)

(assert (=> d!2032691 (= c!1186686 (isEmpty!37424 (tail!12274 s!2326)))))

(assert (=> d!2032691 (validRegex!8091 (derivativeStep!5053 lt!2385680 (head!13189 s!2326)))))

(assert (=> d!2032691 (= (matchR!8538 (derivativeStep!5053 lt!2385680 (head!13189 s!2326)) (tail!12274 s!2326)) lt!2385950)))

(declare-fun b!6478447 () Bool)

(declare-fun res!2660070 () Bool)

(assert (=> b!6478447 (=> res!2660070 e!3926930)))

(assert (=> b!6478447 (= res!2660070 e!3926931)))

(declare-fun res!2660063 () Bool)

(assert (=> b!6478447 (=> (not res!2660063) (not e!3926931))))

(assert (=> b!6478447 (= res!2660063 lt!2385950)))

(declare-fun b!6478448 () Bool)

(declare-fun e!3926932 () Bool)

(assert (=> b!6478448 (= e!3926930 e!3926932)))

(declare-fun res!2660069 () Bool)

(assert (=> b!6478448 (=> (not res!2660069) (not e!3926932))))

(assert (=> b!6478448 (= res!2660069 (not lt!2385950))))

(declare-fun b!6478449 () Bool)

(declare-fun res!2660066 () Bool)

(assert (=> b!6478449 (=> res!2660066 e!3926936)))

(assert (=> b!6478449 (= res!2660066 (not (isEmpty!37424 (tail!12274 (tail!12274 s!2326)))))))

(declare-fun b!6478450 () Bool)

(assert (=> b!6478450 (= e!3926934 (matchR!8538 (derivativeStep!5053 (derivativeStep!5053 lt!2385680 (head!13189 s!2326)) (head!13189 (tail!12274 s!2326))) (tail!12274 (tail!12274 s!2326))))))

(declare-fun bm!560676 () Bool)

(assert (=> bm!560676 (= call!560681 (isEmpty!37424 (tail!12274 s!2326)))))

(declare-fun b!6478451 () Bool)

(assert (=> b!6478451 (= e!3926932 e!3926936)))

(declare-fun res!2660067 () Bool)

(assert (=> b!6478451 (=> res!2660067 e!3926936)))

(assert (=> b!6478451 (= res!2660067 call!560681)))

(declare-fun b!6478452 () Bool)

(assert (=> b!6478452 (= e!3926935 e!3926933)))

(declare-fun c!1186685 () Bool)

(assert (=> b!6478452 (= c!1186685 ((_ is EmptyLang!16355) (derivativeStep!5053 lt!2385680 (head!13189 s!2326))))))

(declare-fun b!6478453 () Bool)

(declare-fun res!2660064 () Bool)

(assert (=> b!6478453 (=> (not res!2660064) (not e!3926931))))

(assert (=> b!6478453 (= res!2660064 (isEmpty!37424 (tail!12274 (tail!12274 s!2326))))))

(declare-fun b!6478454 () Bool)

(assert (=> b!6478454 (= e!3926934 (nullable!6348 (derivativeStep!5053 lt!2385680 (head!13189 s!2326))))))

(declare-fun b!6478455 () Bool)

(assert (=> b!6478455 (= e!3926933 (not lt!2385950))))

(assert (= (and d!2032691 c!1186686) b!6478454))

(assert (= (and d!2032691 (not c!1186686)) b!6478450))

(assert (= (and d!2032691 c!1186684) b!6478444))

(assert (= (and d!2032691 (not c!1186684)) b!6478452))

(assert (= (and b!6478452 c!1186685) b!6478455))

(assert (= (and b!6478452 (not c!1186685)) b!6478443))

(assert (= (and b!6478443 (not res!2660065)) b!6478447))

(assert (= (and b!6478447 res!2660063) b!6478446))

(assert (= (and b!6478446 res!2660068) b!6478453))

(assert (= (and b!6478453 res!2660064) b!6478445))

(assert (= (and b!6478447 (not res!2660070)) b!6478448))

(assert (= (and b!6478448 res!2660069) b!6478451))

(assert (= (and b!6478451 (not res!2660067)) b!6478449))

(assert (= (and b!6478449 (not res!2660066)) b!6478442))

(assert (= (or b!6478444 b!6478451 b!6478446) bm!560676))

(assert (=> d!2032691 m!7264730))

(assert (=> d!2032691 m!7264738))

(assert (=> d!2032691 m!7264726))

(declare-fun m!7266892 () Bool)

(assert (=> d!2032691 m!7266892))

(assert (=> b!6478450 m!7264730))

(assert (=> b!6478450 m!7266168))

(assert (=> b!6478450 m!7264726))

(assert (=> b!6478450 m!7266168))

(declare-fun m!7266894 () Bool)

(assert (=> b!6478450 m!7266894))

(assert (=> b!6478450 m!7264730))

(assert (=> b!6478450 m!7266172))

(assert (=> b!6478450 m!7266894))

(assert (=> b!6478450 m!7266172))

(declare-fun m!7266896 () Bool)

(assert (=> b!6478450 m!7266896))

(assert (=> bm!560676 m!7264730))

(assert (=> bm!560676 m!7264738))

(assert (=> b!6478449 m!7264730))

(assert (=> b!6478449 m!7266172))

(assert (=> b!6478449 m!7266172))

(assert (=> b!6478449 m!7266176))

(assert (=> b!6478445 m!7264730))

(assert (=> b!6478445 m!7266168))

(assert (=> b!6478453 m!7264730))

(assert (=> b!6478453 m!7266172))

(assert (=> b!6478453 m!7266172))

(assert (=> b!6478453 m!7266176))

(assert (=> b!6478442 m!7264730))

(assert (=> b!6478442 m!7266168))

(assert (=> b!6478454 m!7264726))

(declare-fun m!7266898 () Bool)

(assert (=> b!6478454 m!7266898))

(assert (=> b!6476450 d!2032691))

(declare-fun e!3926937 () Regex!16355)

(declare-fun call!560683 () Regex!16355)

(declare-fun b!6478456 () Bool)

(declare-fun call!560684 () Regex!16355)

(assert (=> b!6478456 (= e!3926937 (Union!16355 (Concat!25200 call!560683 (regTwo!33222 lt!2385680)) call!560684))))

(declare-fun bm!560677 () Bool)

(declare-fun call!560685 () Regex!16355)

(assert (=> bm!560677 (= call!560684 call!560685)))

(declare-fun b!6478457 () Bool)

(declare-fun c!1186690 () Bool)

(assert (=> b!6478457 (= c!1186690 (nullable!6348 (regOne!33222 lt!2385680)))))

(declare-fun e!3926939 () Regex!16355)

(assert (=> b!6478457 (= e!3926939 e!3926937)))

(declare-fun bm!560678 () Bool)

(declare-fun c!1186687 () Bool)

(declare-fun c!1186689 () Bool)

(declare-fun call!560682 () Regex!16355)

(assert (=> bm!560678 (= call!560682 (derivativeStep!5053 (ite c!1186687 (regTwo!33223 lt!2385680) (ite c!1186689 (reg!16684 lt!2385680) (regOne!33222 lt!2385680))) (head!13189 s!2326)))))

(declare-fun b!6478458 () Bool)

(assert (=> b!6478458 (= c!1186687 ((_ is Union!16355) lt!2385680))))

(declare-fun e!3926940 () Regex!16355)

(declare-fun e!3926941 () Regex!16355)

(assert (=> b!6478458 (= e!3926940 e!3926941)))

(declare-fun b!6478459 () Bool)

(assert (=> b!6478459 (= e!3926940 (ite (= (head!13189 s!2326) (c!1186089 lt!2385680)) EmptyExpr!16355 EmptyLang!16355))))

(declare-fun bm!560679 () Bool)

(assert (=> bm!560679 (= call!560683 call!560682)))

(declare-fun b!6478460 () Bool)

(assert (=> b!6478460 (= e!3926941 e!3926939)))

(assert (=> b!6478460 (= c!1186689 ((_ is Star!16355) lt!2385680))))

(declare-fun b!6478461 () Bool)

(assert (=> b!6478461 (= e!3926939 (Concat!25200 call!560683 lt!2385680))))

(declare-fun bm!560680 () Bool)

(assert (=> bm!560680 (= call!560685 (derivativeStep!5053 (ite c!1186687 (regOne!33223 lt!2385680) (ite c!1186690 (regTwo!33222 lt!2385680) (regOne!33222 lt!2385680))) (head!13189 s!2326)))))

(declare-fun b!6478462 () Bool)

(assert (=> b!6478462 (= e!3926937 (Union!16355 (Concat!25200 call!560684 (regTwo!33222 lt!2385680)) EmptyLang!16355))))

(declare-fun b!6478463 () Bool)

(assert (=> b!6478463 (= e!3926941 (Union!16355 call!560685 call!560682))))

(declare-fun d!2032693 () Bool)

(declare-fun lt!2385951 () Regex!16355)

(assert (=> d!2032693 (validRegex!8091 lt!2385951)))

(declare-fun e!3926938 () Regex!16355)

(assert (=> d!2032693 (= lt!2385951 e!3926938)))

(declare-fun c!1186691 () Bool)

(assert (=> d!2032693 (= c!1186691 (or ((_ is EmptyExpr!16355) lt!2385680) ((_ is EmptyLang!16355) lt!2385680)))))

(assert (=> d!2032693 (validRegex!8091 lt!2385680)))

(assert (=> d!2032693 (= (derivativeStep!5053 lt!2385680 (head!13189 s!2326)) lt!2385951)))

(declare-fun b!6478464 () Bool)

(assert (=> b!6478464 (= e!3926938 e!3926940)))

(declare-fun c!1186688 () Bool)

(assert (=> b!6478464 (= c!1186688 ((_ is ElementMatch!16355) lt!2385680))))

(declare-fun b!6478465 () Bool)

(assert (=> b!6478465 (= e!3926938 EmptyLang!16355)))

(assert (= (and d!2032693 c!1186691) b!6478465))

(assert (= (and d!2032693 (not c!1186691)) b!6478464))

(assert (= (and b!6478464 c!1186688) b!6478459))

(assert (= (and b!6478464 (not c!1186688)) b!6478458))

(assert (= (and b!6478458 c!1186687) b!6478463))

(assert (= (and b!6478458 (not c!1186687)) b!6478460))

(assert (= (and b!6478460 c!1186689) b!6478461))

(assert (= (and b!6478460 (not c!1186689)) b!6478457))

(assert (= (and b!6478457 c!1186690) b!6478456))

(assert (= (and b!6478457 (not c!1186690)) b!6478462))

(assert (= (or b!6478456 b!6478462) bm!560677))

(assert (= (or b!6478461 b!6478456) bm!560679))

(assert (= (or b!6478463 bm!560679) bm!560678))

(assert (= (or b!6478463 bm!560677) bm!560680))

(declare-fun m!7266900 () Bool)

(assert (=> b!6478457 m!7266900))

(assert (=> bm!560678 m!7264724))

(declare-fun m!7266902 () Bool)

(assert (=> bm!560678 m!7266902))

(assert (=> bm!560680 m!7264724))

(declare-fun m!7266904 () Bool)

(assert (=> bm!560680 m!7266904))

(declare-fun m!7266906 () Bool)

(assert (=> d!2032693 m!7266906))

(assert (=> d!2032693 m!7264720))

(assert (=> b!6476450 d!2032693))

(assert (=> b!6476450 d!2032309))

(assert (=> b!6476450 d!2032233))

(assert (=> b!6476549 d!2032547))

(assert (=> b!6476549 d!2032337))

(declare-fun d!2032695 () Bool)

(declare-fun e!3926943 () Bool)

(assert (=> d!2032695 e!3926943))

(declare-fun res!2660072 () Bool)

(assert (=> d!2032695 (=> (not res!2660072) (not e!3926943))))

(declare-fun lt!2385952 () List!65364)

(assert (=> d!2032695 (= res!2660072 (= (content!12410 lt!2385952) ((_ map or) (content!12410 (t!378988 (_2!36637 lt!2385692))) (content!12410 (_2!36637 lt!2385678)))))))

(declare-fun e!3926942 () List!65364)

(assert (=> d!2032695 (= lt!2385952 e!3926942)))

(declare-fun c!1186692 () Bool)

(assert (=> d!2032695 (= c!1186692 ((_ is Nil!65240) (t!378988 (_2!36637 lt!2385692))))))

(assert (=> d!2032695 (= (++!14423 (t!378988 (_2!36637 lt!2385692)) (_2!36637 lt!2385678)) lt!2385952)))

(declare-fun b!6478468 () Bool)

(declare-fun res!2660071 () Bool)

(assert (=> b!6478468 (=> (not res!2660071) (not e!3926943))))

(assert (=> b!6478468 (= res!2660071 (= (size!40407 lt!2385952) (+ (size!40407 (t!378988 (_2!36637 lt!2385692))) (size!40407 (_2!36637 lt!2385678)))))))

(declare-fun b!6478467 () Bool)

(assert (=> b!6478467 (= e!3926942 (Cons!65240 (h!71688 (t!378988 (_2!36637 lt!2385692))) (++!14423 (t!378988 (t!378988 (_2!36637 lt!2385692))) (_2!36637 lt!2385678))))))

(declare-fun b!6478469 () Bool)

(assert (=> b!6478469 (= e!3926943 (or (not (= (_2!36637 lt!2385678) Nil!65240)) (= lt!2385952 (t!378988 (_2!36637 lt!2385692)))))))

(declare-fun b!6478466 () Bool)

(assert (=> b!6478466 (= e!3926942 (_2!36637 lt!2385678))))

(assert (= (and d!2032695 c!1186692) b!6478466))

(assert (= (and d!2032695 (not c!1186692)) b!6478467))

(assert (= (and d!2032695 res!2660072) b!6478468))

(assert (= (and b!6478468 res!2660071) b!6478469))

(declare-fun m!7266908 () Bool)

(assert (=> d!2032695 m!7266908))

(assert (=> d!2032695 m!7266124))

(assert (=> d!2032695 m!7265184))

(declare-fun m!7266910 () Bool)

(assert (=> b!6478468 m!7266910))

(assert (=> b!6478468 m!7266076))

(assert (=> b!6478468 m!7265190))

(declare-fun m!7266912 () Bool)

(assert (=> b!6478467 m!7266912))

(assert (=> b!6477076 d!2032695))

(assert (=> b!6477289 d!2032475))

(declare-fun d!2032697 () Bool)

(assert (=> d!2032697 (= (Exists!3425 lambda!358114) (choose!48008 lambda!358114))))

(declare-fun bs!1643310 () Bool)

(assert (= bs!1643310 d!2032697))

(declare-fun m!7266914 () Bool)

(assert (=> bs!1643310 m!7266914))

(assert (=> d!2032127 d!2032697))

(declare-fun d!2032699 () Bool)

(assert (=> d!2032699 (= (Exists!3425 lambda!358115) (choose!48008 lambda!358115))))

(declare-fun bs!1643311 () Bool)

(assert (= bs!1643311 d!2032699))

(declare-fun m!7266916 () Bool)

(assert (=> bs!1643311 m!7266916))

(assert (=> d!2032127 d!2032699))

(declare-fun bs!1643312 () Bool)

(declare-fun d!2032701 () Bool)

(assert (= bs!1643312 (and d!2032701 d!2032245)))

(declare-fun lambda!358175 () Int)

(assert (=> bs!1643312 (not (= lambda!358175 lambda!358128))))

(declare-fun bs!1643313 () Bool)

(assert (= bs!1643313 (and d!2032701 b!6478346)))

(assert (=> bs!1643313 (not (= lambda!358175 lambda!358164))))

(declare-fun bs!1643314 () Bool)

(assert (= bs!1643314 (and d!2032701 b!6477635)))

(assert (=> bs!1643314 (not (= lambda!358175 lambda!358129))))

(declare-fun bs!1643315 () Bool)

(assert (= bs!1643315 (and d!2032701 b!6477637)))

(assert (=> bs!1643315 (not (= lambda!358175 lambda!358130))))

(declare-fun bs!1643316 () Bool)

(assert (= bs!1643316 (and d!2032701 b!6478157)))

(assert (=> bs!1643316 (not (= lambda!358175 lambda!358148))))

(declare-fun bs!1643317 () Bool)

(assert (= bs!1643317 (and d!2032701 b!6477548)))

(assert (=> bs!1643317 (not (= lambda!358175 lambda!358118))))

(declare-fun bs!1643318 () Bool)

(assert (= bs!1643318 (and d!2032701 b!6476300)))

(assert (=> bs!1643318 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358016))))

(assert (=> bs!1643312 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358175 lambda!358127))))

(declare-fun bs!1643319 () Bool)

(assert (= bs!1643319 (and d!2032701 d!2032127)))

(assert (=> bs!1643319 (not (= lambda!358175 lambda!358115))))

(declare-fun bs!1643320 () Bool)

(assert (= bs!1643320 (and d!2032701 b!6478172)))

(assert (=> bs!1643320 (not (= lambda!358175 lambda!358152))))

(declare-fun bs!1643321 () Bool)

(assert (= bs!1643321 (and d!2032701 b!6477546)))

(assert (=> bs!1643321 (not (= lambda!358175 lambda!358117))))

(declare-fun bs!1643322 () Bool)

(assert (= bs!1643322 (and d!2032701 b!6476519)))

(assert (=> bs!1643322 (not (= lambda!358175 lambda!358035))))

(declare-fun bs!1643323 () Bool)

(assert (= bs!1643323 (and d!2032701 b!6477297)))

(assert (=> bs!1643323 (not (= lambda!358175 lambda!358103))))

(declare-fun bs!1643324 () Bool)

(assert (= bs!1643324 (and d!2032701 b!6476331)))

(assert (=> bs!1643324 (not (= lambda!358175 lambda!358020))))

(declare-fun bs!1643325 () Bool)

(assert (= bs!1643325 (and d!2032701 d!2032041)))

(assert (=> bs!1643325 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358083))))

(assert (=> bs!1643318 (not (= lambda!358175 lambda!358017))))

(declare-fun bs!1643326 () Bool)

(assert (= bs!1643326 (and d!2032701 d!2031923)))

(assert (=> bs!1643326 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358059))))

(declare-fun bs!1643327 () Bool)

(assert (= bs!1643327 (and d!2032701 d!2032379)))

(assert (=> bs!1643327 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358139))))

(declare-fun bs!1643328 () Bool)

(assert (= bs!1643328 (and d!2032701 d!2032125)))

(assert (=> bs!1643328 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358175 lambda!358107))))

(declare-fun bs!1643329 () Bool)

(assert (= bs!1643329 (and d!2032701 b!6476517)))

(assert (=> bs!1643329 (not (= lambda!358175 lambda!358032))))

(assert (=> bs!1643326 (not (= lambda!358175 lambda!358062))))

(assert (=> bs!1643328 (not (= lambda!358175 lambda!358108))))

(declare-fun bs!1643330 () Bool)

(assert (= bs!1643330 (and d!2032701 b!6478174)))

(assert (=> bs!1643330 (not (= lambda!358175 lambda!358153))))

(declare-fun bs!1643331 () Bool)

(assert (= bs!1643331 (and d!2032701 d!2032591)))

(assert (=> bs!1643331 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358175 lambda!358160))))

(declare-fun bs!1643332 () Bool)

(assert (= bs!1643332 (and d!2032701 b!6478344)))

(assert (=> bs!1643332 (not (= lambda!358175 lambda!358163))))

(declare-fun bs!1643333 () Bool)

(assert (= bs!1643333 (and d!2032701 b!6477031)))

(assert (=> bs!1643333 (not (= lambda!358175 lambda!358073))))

(assert (=> bs!1643324 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358175 lambda!358018))))

(declare-fun bs!1643334 () Bool)

(assert (= bs!1643334 (and d!2032701 d!2032589)))

(assert (=> bs!1643334 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358158))))

(declare-fun bs!1643335 () Bool)

(assert (= bs!1643335 (and d!2032701 b!6476306)))

(assert (=> bs!1643335 (not (= lambda!358175 lambda!358014))))

(declare-fun bs!1643336 () Bool)

(assert (= bs!1643336 (and d!2032701 d!2032037)))

(assert (=> bs!1643336 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358082))))

(declare-fun bs!1643337 () Bool)

(assert (= bs!1643337 (and d!2032701 d!2032673)))

(assert (=> bs!1643337 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358169))))

(declare-fun bs!1643338 () Bool)

(assert (= bs!1643338 (and d!2032701 b!6477299)))

(assert (=> bs!1643338 (not (= lambda!358175 lambda!358105))))

(declare-fun bs!1643339 () Bool)

(assert (= bs!1643339 (and d!2032701 b!6477033)))

(assert (=> bs!1643339 (not (= lambda!358175 lambda!358075))))

(assert (=> bs!1643319 (= lambda!358175 lambda!358114)))

(declare-fun bs!1643340 () Bool)

(assert (= bs!1643340 (and d!2032701 d!2032155)))

(assert (=> bs!1643340 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358175 lambda!358116))))

(assert (=> bs!1643334 (not (= lambda!358175 lambda!358159))))

(declare-fun bs!1643341 () Bool)

(assert (= bs!1643341 (and d!2032701 b!6477792)))

(assert (=> bs!1643341 (not (= lambda!358175 lambda!358133))))

(assert (=> bs!1643335 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (regOne!33222 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358013))))

(declare-fun bs!1643342 () Bool)

(assert (= bs!1643342 (and d!2032701 d!2031905)))

(assert (=> bs!1643342 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358052))))

(declare-fun bs!1643343 () Bool)

(assert (= bs!1643343 (and d!2032701 b!6478159)))

(assert (=> bs!1643343 (not (= lambda!358175 lambda!358149))))

(assert (=> bs!1643324 (not (= lambda!358175 lambda!358019))))

(assert (=> bs!1643337 (not (= lambda!358175 lambda!358170))))

(declare-fun bs!1643344 () Bool)

(assert (= bs!1643344 (and d!2032701 b!6477794)))

(assert (=> bs!1643344 (not (= lambda!358175 lambda!358134))))

(assert (=> bs!1643325 (not (= lambda!358175 lambda!358084))))

(declare-fun bs!1643345 () Bool)

(assert (= bs!1643345 (and d!2032701 d!2032237)))

(assert (=> bs!1643345 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) lt!2385664) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33222 r!7292))) (= lambda!358175 lambda!358122))))

(assert (=> d!2032701 true))

(assert (=> d!2032701 true))

(declare-fun lambda!358176 () Int)

(assert (=> bs!1643312 (not (= lambda!358176 lambda!358128))))

(declare-fun bs!1643346 () Bool)

(assert (= bs!1643346 d!2032701))

(assert (=> bs!1643346 (not (= lambda!358176 lambda!358175))))

(assert (=> bs!1643313 (not (= lambda!358176 lambda!358164))))

(assert (=> bs!1643314 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 (regTwo!33223 r!7292))) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33223 r!7292))) (= lambda!358176 lambda!358129))))

(assert (=> bs!1643315 (not (= lambda!358176 lambda!358130))))

(assert (=> bs!1643316 (= (and (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 (regTwo!33223 lt!2385664))) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33223 lt!2385664))) (= lambda!358176 lambda!358148))))

(assert (=> bs!1643317 (not (= lambda!358176 lambda!358118))))

(assert (=> bs!1643318 (not (= lambda!358176 lambda!358016))))

(assert (=> bs!1643312 (not (= lambda!358176 lambda!358127))))

(assert (=> bs!1643319 (= lambda!358176 lambda!358115)))

(assert (=> bs!1643320 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 (regOne!33223 r!7292))) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regOne!33223 r!7292))) (= lambda!358176 lambda!358152))))

(assert (=> bs!1643321 (= (and (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 (regOne!33223 lt!2385664))) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regOne!33223 lt!2385664))) (= lambda!358176 lambda!358117))))

(assert (=> bs!1643322 (not (= lambda!358176 lambda!358035))))

(assert (=> bs!1643323 (= (and (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 lt!2385664)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664)) (= lambda!358176 lambda!358103))))

(assert (=> bs!1643324 (not (= lambda!358176 lambda!358020))))

(assert (=> bs!1643325 (not (= lambda!358176 lambda!358083))))

(assert (=> bs!1643318 (not (= lambda!358176 lambda!358017))))

(assert (=> bs!1643326 (not (= lambda!358176 lambda!358059))))

(assert (=> bs!1643327 (not (= lambda!358176 lambda!358139))))

(assert (=> bs!1643328 (not (= lambda!358176 lambda!358107))))

(assert (=> bs!1643329 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 lt!2385680)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385680)) (= lambda!358176 lambda!358032))))

(assert (=> bs!1643326 (not (= lambda!358176 lambda!358062))))

(assert (=> bs!1643328 (not (= lambda!358176 lambda!358108))))

(assert (=> bs!1643330 (not (= lambda!358176 lambda!358153))))

(assert (=> bs!1643331 (not (= lambda!358176 lambda!358160))))

(assert (=> bs!1643332 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 (regOne!33223 lt!2385680))) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regOne!33223 lt!2385680))) (= lambda!358176 lambda!358163))))

(assert (=> bs!1643333 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 r!7292)) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) r!7292)) (= lambda!358176 lambda!358073))))

(assert (=> bs!1643324 (not (= lambda!358176 lambda!358018))))

(assert (=> bs!1643334 (not (= lambda!358176 lambda!358158))))

(assert (=> bs!1643335 (not (= lambda!358176 lambda!358014))))

(assert (=> bs!1643336 (not (= lambda!358176 lambda!358082))))

(assert (=> bs!1643337 (not (= lambda!358176 lambda!358169))))

(assert (=> bs!1643338 (not (= lambda!358176 lambda!358105))))

(assert (=> bs!1643339 (not (= lambda!358176 lambda!358075))))

(assert (=> bs!1643319 (not (= lambda!358176 lambda!358114))))

(assert (=> bs!1643340 (not (= lambda!358176 lambda!358116))))

(assert (=> bs!1643334 (not (= lambda!358176 lambda!358159))))

(assert (=> bs!1643341 (= (and (= (_1!36637 lt!2385678) s!2326) (= (reg!16684 (regOne!33222 r!7292)) (reg!16684 (regTwo!33223 lt!2385680))) (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) (regTwo!33223 lt!2385680))) (= lambda!358176 lambda!358133))))

(assert (=> bs!1643335 (not (= lambda!358176 lambda!358013))))

(assert (=> bs!1643342 (not (= lambda!358176 lambda!358052))))

(assert (=> bs!1643343 (not (= lambda!358176 lambda!358149))))

(assert (=> bs!1643324 (= (= (Star!16355 (reg!16684 (regOne!33222 r!7292))) lt!2385664) (= lambda!358176 lambda!358019))))

(assert (=> bs!1643337 (not (= lambda!358176 lambda!358170))))

(assert (=> bs!1643344 (not (= lambda!358176 lambda!358134))))

(assert (=> bs!1643325 (not (= lambda!358176 lambda!358084))))

(assert (=> bs!1643345 (not (= lambda!358176 lambda!358122))))

(assert (=> d!2032701 true))

(assert (=> d!2032701 true))

(assert (=> d!2032701 (= (Exists!3425 lambda!358175) (Exists!3425 lambda!358176))))

(assert (=> d!2032701 true))

(declare-fun _$91!596 () Unit!158751)

(assert (=> d!2032701 (= (choose!48018 (reg!16684 (regOne!33222 r!7292)) (_1!36637 lt!2385678)) _$91!596)))

(declare-fun m!7266918 () Bool)

(assert (=> bs!1643346 m!7266918))

(declare-fun m!7266920 () Bool)

(assert (=> bs!1643346 m!7266920))

(assert (=> d!2032127 d!2032701))

(assert (=> d!2032127 d!2032211))

(declare-fun b!6478480 () Bool)

(declare-fun e!3926954 () Bool)

(assert (=> b!6478480 (= e!3926954 (not (= (head!13189 (_1!36637 (get!22616 lt!2385822))) (c!1186089 (regOne!33222 r!7292)))))))

(declare-fun b!6478481 () Bool)

(declare-fun res!2660085 () Bool)

(declare-fun e!3926948 () Bool)

(assert (=> b!6478481 (=> res!2660085 e!3926948)))

(assert (=> b!6478481 (= res!2660085 (not ((_ is ElementMatch!16355) (regOne!33222 r!7292))))))

(declare-fun e!3926951 () Bool)

(assert (=> b!6478481 (= e!3926951 e!3926948)))

(declare-fun b!6478482 () Bool)

(declare-fun e!3926953 () Bool)

(declare-fun lt!2385953 () Bool)

(declare-fun call!560686 () Bool)

(assert (=> b!6478482 (= e!3926953 (= lt!2385953 call!560686))))

(declare-fun b!6478483 () Bool)

(declare-fun e!3926949 () Bool)

(assert (=> b!6478483 (= e!3926949 (= (head!13189 (_1!36637 (get!22616 lt!2385822))) (c!1186089 (regOne!33222 r!7292))))))

(declare-fun b!6478484 () Bool)

(declare-fun res!2660088 () Bool)

(assert (=> b!6478484 (=> (not res!2660088) (not e!3926949))))

(assert (=> b!6478484 (= res!2660088 (not call!560686))))

(declare-fun d!2032703 () Bool)

(assert (=> d!2032703 e!3926953))

(declare-fun c!1186693 () Bool)

(assert (=> d!2032703 (= c!1186693 ((_ is EmptyExpr!16355) (regOne!33222 r!7292)))))

(declare-fun e!3926952 () Bool)

(assert (=> d!2032703 (= lt!2385953 e!3926952)))

(declare-fun c!1186695 () Bool)

(assert (=> d!2032703 (= c!1186695 (isEmpty!37424 (_1!36637 (get!22616 lt!2385822))))))

(assert (=> d!2032703 (validRegex!8091 (regOne!33222 r!7292))))

(assert (=> d!2032703 (= (matchR!8538 (regOne!33222 r!7292) (_1!36637 (get!22616 lt!2385822))) lt!2385953)))

(declare-fun b!6478485 () Bool)

(declare-fun res!2660090 () Bool)

(assert (=> b!6478485 (=> res!2660090 e!3926948)))

(assert (=> b!6478485 (= res!2660090 e!3926949)))

(declare-fun res!2660083 () Bool)

(assert (=> b!6478485 (=> (not res!2660083) (not e!3926949))))

(assert (=> b!6478485 (= res!2660083 lt!2385953)))

(declare-fun b!6478486 () Bool)

(declare-fun e!3926950 () Bool)

(assert (=> b!6478486 (= e!3926948 e!3926950)))

(declare-fun res!2660089 () Bool)

(assert (=> b!6478486 (=> (not res!2660089) (not e!3926950))))

(assert (=> b!6478486 (= res!2660089 (not lt!2385953))))

(declare-fun b!6478487 () Bool)

(declare-fun res!2660086 () Bool)

(assert (=> b!6478487 (=> res!2660086 e!3926954)))

(assert (=> b!6478487 (= res!2660086 (not (isEmpty!37424 (tail!12274 (_1!36637 (get!22616 lt!2385822))))))))

(declare-fun b!6478488 () Bool)

(assert (=> b!6478488 (= e!3926952 (matchR!8538 (derivativeStep!5053 (regOne!33222 r!7292) (head!13189 (_1!36637 (get!22616 lt!2385822)))) (tail!12274 (_1!36637 (get!22616 lt!2385822)))))))

(declare-fun bm!560681 () Bool)

(assert (=> bm!560681 (= call!560686 (isEmpty!37424 (_1!36637 (get!22616 lt!2385822))))))

(declare-fun b!6478489 () Bool)

(assert (=> b!6478489 (= e!3926950 e!3926954)))

(declare-fun res!2660087 () Bool)

(assert (=> b!6478489 (=> res!2660087 e!3926954)))

(assert (=> b!6478489 (= res!2660087 call!560686)))

(declare-fun b!6478490 () Bool)

(assert (=> b!6478490 (= e!3926953 e!3926951)))

(declare-fun c!1186694 () Bool)

(assert (=> b!6478490 (= c!1186694 ((_ is EmptyLang!16355) (regOne!33222 r!7292)))))

(declare-fun b!6478491 () Bool)

(declare-fun res!2660084 () Bool)

(assert (=> b!6478491 (=> (not res!2660084) (not e!3926949))))

(assert (=> b!6478491 (= res!2660084 (isEmpty!37424 (tail!12274 (_1!36637 (get!22616 lt!2385822)))))))

(declare-fun b!6478492 () Bool)

(assert (=> b!6478492 (= e!3926952 (nullable!6348 (regOne!33222 r!7292)))))

(declare-fun b!6478493 () Bool)

(assert (=> b!6478493 (= e!3926951 (not lt!2385953))))

(assert (= (and d!2032703 c!1186695) b!6478492))

(assert (= (and d!2032703 (not c!1186695)) b!6478488))

(assert (= (and d!2032703 c!1186693) b!6478482))

(assert (= (and d!2032703 (not c!1186693)) b!6478490))

(assert (= (and b!6478490 c!1186694) b!6478493))

(assert (= (and b!6478490 (not c!1186694)) b!6478481))

(assert (= (and b!6478481 (not res!2660085)) b!6478485))

(assert (= (and b!6478485 res!2660083) b!6478484))

(assert (= (and b!6478484 res!2660088) b!6478491))

(assert (= (and b!6478491 res!2660084) b!6478483))

(assert (= (and b!6478485 (not res!2660090)) b!6478486))

(assert (= (and b!6478486 res!2660089) b!6478489))

(assert (= (and b!6478489 (not res!2660087)) b!6478487))

(assert (= (and b!6478487 (not res!2660086)) b!6478480))

(assert (= (or b!6478482 b!6478489 b!6478484) bm!560681))

(declare-fun m!7266922 () Bool)

(assert (=> d!2032703 m!7266922))

(assert (=> d!2032703 m!7265434))

(declare-fun m!7266924 () Bool)

(assert (=> b!6478488 m!7266924))

(assert (=> b!6478488 m!7266924))

(declare-fun m!7266926 () Bool)

(assert (=> b!6478488 m!7266926))

(declare-fun m!7266928 () Bool)

(assert (=> b!6478488 m!7266928))

(assert (=> b!6478488 m!7266926))

(assert (=> b!6478488 m!7266928))

(declare-fun m!7266930 () Bool)

(assert (=> b!6478488 m!7266930))

(assert (=> bm!560681 m!7266922))

(assert (=> b!6478487 m!7266928))

(assert (=> b!6478487 m!7266928))

(declare-fun m!7266932 () Bool)

(assert (=> b!6478487 m!7266932))

(assert (=> b!6478483 m!7266924))

(assert (=> b!6478491 m!7266928))

(assert (=> b!6478491 m!7266928))

(assert (=> b!6478491 m!7266932))

(assert (=> b!6478480 m!7266924))

(assert (=> b!6478492 m!7266022))

(assert (=> b!6477106 d!2032703))

(assert (=> b!6477106 d!2032457))

(declare-fun b!6478495 () Bool)

(declare-fun e!3926956 () Bool)

(declare-fun tp!1795051 () Bool)

(assert (=> b!6478495 (= e!3926956 tp!1795051)))

(declare-fun b!6478494 () Bool)

(declare-fun e!3926955 () Bool)

(declare-fun tp!1795052 () Bool)

(assert (=> b!6478494 (= e!3926955 (and (inv!84134 (h!71690 (t!378990 (t!378990 zl!343)))) e!3926956 tp!1795052))))

(assert (=> b!6477464 (= tp!1795027 e!3926955)))

(assert (= b!6478494 b!6478495))

(assert (= (and b!6477464 ((_ is Cons!65242) (t!378990 (t!378990 zl!343)))) b!6478494))

(declare-fun m!7266934 () Bool)

(assert (=> b!6478494 m!7266934))

(declare-fun b!6478496 () Bool)

(declare-fun e!3926957 () Bool)

(declare-fun tp!1795053 () Bool)

(declare-fun tp!1795054 () Bool)

(assert (=> b!6478496 (= e!3926957 (and tp!1795053 tp!1795054))))

(assert (=> b!6477465 (= tp!1795026 e!3926957)))

(assert (= (and b!6477465 ((_ is Cons!65241) (exprs!6239 (h!71690 (t!378990 zl!343))))) b!6478496))

(declare-fun b!6478497 () Bool)

(declare-fun e!3926958 () Bool)

(declare-fun tp!1795055 () Bool)

(assert (=> b!6478497 (= e!3926958 (and tp_is_empty!41963 tp!1795055))))

(assert (=> b!6477420 (= tp!1794977 e!3926958)))

(assert (= (and b!6477420 ((_ is Cons!65240) (t!378988 (t!378988 s!2326)))) b!6478497))

(declare-fun b!6478498 () Bool)

(declare-fun e!3926959 () Bool)

(assert (=> b!6478498 (= e!3926959 tp_is_empty!41963)))

(declare-fun b!6478499 () Bool)

(declare-fun tp!1795060 () Bool)

(declare-fun tp!1795058 () Bool)

(assert (=> b!6478499 (= e!3926959 (and tp!1795060 tp!1795058))))

(assert (=> b!6477449 (= tp!1795010 e!3926959)))

(declare-fun b!6478501 () Bool)

(declare-fun tp!1795056 () Bool)

(declare-fun tp!1795057 () Bool)

(assert (=> b!6478501 (= e!3926959 (and tp!1795056 tp!1795057))))

(declare-fun b!6478500 () Bool)

(declare-fun tp!1795059 () Bool)

(assert (=> b!6478500 (= e!3926959 tp!1795059)))

(assert (= (and b!6477449 ((_ is ElementMatch!16355) (h!71689 (exprs!6239 (h!71690 zl!343))))) b!6478498))

(assert (= (and b!6477449 ((_ is Concat!25200) (h!71689 (exprs!6239 (h!71690 zl!343))))) b!6478499))

(assert (= (and b!6477449 ((_ is Star!16355) (h!71689 (exprs!6239 (h!71690 zl!343))))) b!6478500))

(assert (= (and b!6477449 ((_ is Union!16355) (h!71689 (exprs!6239 (h!71690 zl!343))))) b!6478501))

(declare-fun b!6478502 () Bool)

(declare-fun e!3926960 () Bool)

(declare-fun tp!1795061 () Bool)

(declare-fun tp!1795062 () Bool)

(assert (=> b!6478502 (= e!3926960 (and tp!1795061 tp!1795062))))

(assert (=> b!6477449 (= tp!1795011 e!3926960)))

(assert (= (and b!6477449 ((_ is Cons!65241) (t!378989 (exprs!6239 (h!71690 zl!343))))) b!6478502))

(declare-fun b!6478503 () Bool)

(declare-fun e!3926961 () Bool)

(assert (=> b!6478503 (= e!3926961 tp_is_empty!41963)))

(declare-fun b!6478504 () Bool)

(declare-fun tp!1795067 () Bool)

(declare-fun tp!1795065 () Bool)

(assert (=> b!6478504 (= e!3926961 (and tp!1795067 tp!1795065))))

(assert (=> b!6477437 (= tp!1794998 e!3926961)))

(declare-fun b!6478506 () Bool)

(declare-fun tp!1795063 () Bool)

(declare-fun tp!1795064 () Bool)

(assert (=> b!6478506 (= e!3926961 (and tp!1795063 tp!1795064))))

(declare-fun b!6478505 () Bool)

(declare-fun tp!1795066 () Bool)

(assert (=> b!6478505 (= e!3926961 tp!1795066)))

(assert (= (and b!6477437 ((_ is ElementMatch!16355) (regOne!33222 (regOne!33223 r!7292)))) b!6478503))

(assert (= (and b!6477437 ((_ is Concat!25200) (regOne!33222 (regOne!33223 r!7292)))) b!6478504))

(assert (= (and b!6477437 ((_ is Star!16355) (regOne!33222 (regOne!33223 r!7292)))) b!6478505))

(assert (= (and b!6477437 ((_ is Union!16355) (regOne!33222 (regOne!33223 r!7292)))) b!6478506))

(declare-fun b!6478507 () Bool)

(declare-fun e!3926962 () Bool)

(assert (=> b!6478507 (= e!3926962 tp_is_empty!41963)))

(declare-fun b!6478508 () Bool)

(declare-fun tp!1795072 () Bool)

(declare-fun tp!1795070 () Bool)

(assert (=> b!6478508 (= e!3926962 (and tp!1795072 tp!1795070))))

(assert (=> b!6477437 (= tp!1794996 e!3926962)))

(declare-fun b!6478510 () Bool)

(declare-fun tp!1795068 () Bool)

(declare-fun tp!1795069 () Bool)

(assert (=> b!6478510 (= e!3926962 (and tp!1795068 tp!1795069))))

(declare-fun b!6478509 () Bool)

(declare-fun tp!1795071 () Bool)

(assert (=> b!6478509 (= e!3926962 tp!1795071)))

(assert (= (and b!6477437 ((_ is ElementMatch!16355) (regTwo!33222 (regOne!33223 r!7292)))) b!6478507))

(assert (= (and b!6477437 ((_ is Concat!25200) (regTwo!33222 (regOne!33223 r!7292)))) b!6478508))

(assert (= (and b!6477437 ((_ is Star!16355) (regTwo!33222 (regOne!33223 r!7292)))) b!6478509))

(assert (= (and b!6477437 ((_ is Union!16355) (regTwo!33222 (regOne!33223 r!7292)))) b!6478510))

(declare-fun b!6478511 () Bool)

(declare-fun e!3926963 () Bool)

(assert (=> b!6478511 (= e!3926963 tp_is_empty!41963)))

(declare-fun b!6478512 () Bool)

(declare-fun tp!1795077 () Bool)

(declare-fun tp!1795075 () Bool)

(assert (=> b!6478512 (= e!3926963 (and tp!1795077 tp!1795075))))

(assert (=> b!6477451 (= tp!1795016 e!3926963)))

(declare-fun b!6478514 () Bool)

(declare-fun tp!1795073 () Bool)

(declare-fun tp!1795074 () Bool)

(assert (=> b!6478514 (= e!3926963 (and tp!1795073 tp!1795074))))

(declare-fun b!6478513 () Bool)

(declare-fun tp!1795076 () Bool)

(assert (=> b!6478513 (= e!3926963 tp!1795076)))

(assert (= (and b!6477451 ((_ is ElementMatch!16355) (regOne!33222 (regOne!33222 r!7292)))) b!6478511))

(assert (= (and b!6477451 ((_ is Concat!25200) (regOne!33222 (regOne!33222 r!7292)))) b!6478512))

(assert (= (and b!6477451 ((_ is Star!16355) (regOne!33222 (regOne!33222 r!7292)))) b!6478513))

(assert (= (and b!6477451 ((_ is Union!16355) (regOne!33222 (regOne!33222 r!7292)))) b!6478514))

(declare-fun b!6478515 () Bool)

(declare-fun e!3926964 () Bool)

(assert (=> b!6478515 (= e!3926964 tp_is_empty!41963)))

(declare-fun b!6478516 () Bool)

(declare-fun tp!1795082 () Bool)

(declare-fun tp!1795080 () Bool)

(assert (=> b!6478516 (= e!3926964 (and tp!1795082 tp!1795080))))

(assert (=> b!6477451 (= tp!1795014 e!3926964)))

(declare-fun b!6478518 () Bool)

(declare-fun tp!1795078 () Bool)

(declare-fun tp!1795079 () Bool)

(assert (=> b!6478518 (= e!3926964 (and tp!1795078 tp!1795079))))

(declare-fun b!6478517 () Bool)

(declare-fun tp!1795081 () Bool)

(assert (=> b!6478517 (= e!3926964 tp!1795081)))

(assert (= (and b!6477451 ((_ is ElementMatch!16355) (regTwo!33222 (regOne!33222 r!7292)))) b!6478515))

(assert (= (and b!6477451 ((_ is Concat!25200) (regTwo!33222 (regOne!33222 r!7292)))) b!6478516))

(assert (= (and b!6477451 ((_ is Star!16355) (regTwo!33222 (regOne!33222 r!7292)))) b!6478517))

(assert (= (and b!6477451 ((_ is Union!16355) (regTwo!33222 (regOne!33222 r!7292)))) b!6478518))

(declare-fun b!6478519 () Bool)

(declare-fun e!3926965 () Bool)

(assert (=> b!6478519 (= e!3926965 tp_is_empty!41963)))

(declare-fun b!6478520 () Bool)

(declare-fun tp!1795087 () Bool)

(declare-fun tp!1795085 () Bool)

(assert (=> b!6478520 (= e!3926965 (and tp!1795087 tp!1795085))))

(assert (=> b!6477452 (= tp!1795015 e!3926965)))

(declare-fun b!6478522 () Bool)

(declare-fun tp!1795083 () Bool)

(declare-fun tp!1795084 () Bool)

(assert (=> b!6478522 (= e!3926965 (and tp!1795083 tp!1795084))))

(declare-fun b!6478521 () Bool)

(declare-fun tp!1795086 () Bool)

(assert (=> b!6478521 (= e!3926965 tp!1795086)))

(assert (= (and b!6477452 ((_ is ElementMatch!16355) (reg!16684 (regOne!33222 r!7292)))) b!6478519))

(assert (= (and b!6477452 ((_ is Concat!25200) (reg!16684 (regOne!33222 r!7292)))) b!6478520))

(assert (= (and b!6477452 ((_ is Star!16355) (reg!16684 (regOne!33222 r!7292)))) b!6478521))

(assert (= (and b!6477452 ((_ is Union!16355) (reg!16684 (regOne!33222 r!7292)))) b!6478522))

(declare-fun b!6478523 () Bool)

(declare-fun e!3926966 () Bool)

(assert (=> b!6478523 (= e!3926966 tp_is_empty!41963)))

(declare-fun b!6478524 () Bool)

(declare-fun tp!1795092 () Bool)

(declare-fun tp!1795090 () Bool)

(assert (=> b!6478524 (= e!3926966 (and tp!1795092 tp!1795090))))

(assert (=> b!6477438 (= tp!1794997 e!3926966)))

(declare-fun b!6478526 () Bool)

(declare-fun tp!1795088 () Bool)

(declare-fun tp!1795089 () Bool)

(assert (=> b!6478526 (= e!3926966 (and tp!1795088 tp!1795089))))

(declare-fun b!6478525 () Bool)

(declare-fun tp!1795091 () Bool)

(assert (=> b!6478525 (= e!3926966 tp!1795091)))

(assert (= (and b!6477438 ((_ is ElementMatch!16355) (reg!16684 (regOne!33223 r!7292)))) b!6478523))

(assert (= (and b!6477438 ((_ is Concat!25200) (reg!16684 (regOne!33223 r!7292)))) b!6478524))

(assert (= (and b!6477438 ((_ is Star!16355) (reg!16684 (regOne!33223 r!7292)))) b!6478525))

(assert (= (and b!6477438 ((_ is Union!16355) (reg!16684 (regOne!33223 r!7292)))) b!6478526))

(declare-fun b!6478527 () Bool)

(declare-fun e!3926967 () Bool)

(assert (=> b!6478527 (= e!3926967 tp_is_empty!41963)))

(declare-fun b!6478528 () Bool)

(declare-fun tp!1795097 () Bool)

(declare-fun tp!1795095 () Bool)

(assert (=> b!6478528 (= e!3926967 (and tp!1795097 tp!1795095))))

(assert (=> b!6477467 (= tp!1795032 e!3926967)))

(declare-fun b!6478530 () Bool)

(declare-fun tp!1795093 () Bool)

(declare-fun tp!1795094 () Bool)

(assert (=> b!6478530 (= e!3926967 (and tp!1795093 tp!1795094))))

(declare-fun b!6478529 () Bool)

(declare-fun tp!1795096 () Bool)

(assert (=> b!6478529 (= e!3926967 tp!1795096)))

(assert (= (and b!6477467 ((_ is ElementMatch!16355) (regOne!33222 (reg!16684 r!7292)))) b!6478527))

(assert (= (and b!6477467 ((_ is Concat!25200) (regOne!33222 (reg!16684 r!7292)))) b!6478528))

(assert (= (and b!6477467 ((_ is Star!16355) (regOne!33222 (reg!16684 r!7292)))) b!6478529))

(assert (= (and b!6477467 ((_ is Union!16355) (regOne!33222 (reg!16684 r!7292)))) b!6478530))

(declare-fun b!6478531 () Bool)

(declare-fun e!3926968 () Bool)

(assert (=> b!6478531 (= e!3926968 tp_is_empty!41963)))

(declare-fun b!6478532 () Bool)

(declare-fun tp!1795102 () Bool)

(declare-fun tp!1795100 () Bool)

(assert (=> b!6478532 (= e!3926968 (and tp!1795102 tp!1795100))))

(assert (=> b!6477467 (= tp!1795030 e!3926968)))

(declare-fun b!6478534 () Bool)

(declare-fun tp!1795098 () Bool)

(declare-fun tp!1795099 () Bool)

(assert (=> b!6478534 (= e!3926968 (and tp!1795098 tp!1795099))))

(declare-fun b!6478533 () Bool)

(declare-fun tp!1795101 () Bool)

(assert (=> b!6478533 (= e!3926968 tp!1795101)))

(assert (= (and b!6477467 ((_ is ElementMatch!16355) (regTwo!33222 (reg!16684 r!7292)))) b!6478531))

(assert (= (and b!6477467 ((_ is Concat!25200) (regTwo!33222 (reg!16684 r!7292)))) b!6478532))

(assert (= (and b!6477467 ((_ is Star!16355) (regTwo!33222 (reg!16684 r!7292)))) b!6478533))

(assert (= (and b!6477467 ((_ is Union!16355) (regTwo!33222 (reg!16684 r!7292)))) b!6478534))

(declare-fun condSetEmpty!44126 () Bool)

(assert (=> setNonEmpty!44119 (= condSetEmpty!44126 (= setRest!44119 ((as const (Array Context!11478 Bool)) false)))))

(declare-fun setRes!44126 () Bool)

(assert (=> setNonEmpty!44119 (= tp!1794983 setRes!44126)))

(declare-fun setIsEmpty!44126 () Bool)

(assert (=> setIsEmpty!44126 setRes!44126))

(declare-fun tp!1795104 () Bool)

(declare-fun e!3926969 () Bool)

(declare-fun setNonEmpty!44126 () Bool)

(declare-fun setElem!44126 () Context!11478)

(assert (=> setNonEmpty!44126 (= setRes!44126 (and tp!1795104 (inv!84134 setElem!44126) e!3926969))))

(declare-fun setRest!44126 () (InoxSet Context!11478))

(assert (=> setNonEmpty!44126 (= setRest!44119 ((_ map or) (store ((as const (Array Context!11478 Bool)) false) setElem!44126 true) setRest!44126))))

(declare-fun b!6478535 () Bool)

(declare-fun tp!1795103 () Bool)

(assert (=> b!6478535 (= e!3926969 tp!1795103)))

(assert (= (and setNonEmpty!44119 condSetEmpty!44126) setIsEmpty!44126))

(assert (= (and setNonEmpty!44119 (not condSetEmpty!44126)) setNonEmpty!44126))

(assert (= setNonEmpty!44126 b!6478535))

(declare-fun m!7266936 () Bool)

(assert (=> setNonEmpty!44126 m!7266936))

(declare-fun b!6478536 () Bool)

(declare-fun e!3926970 () Bool)

(assert (=> b!6478536 (= e!3926970 tp_is_empty!41963)))

(declare-fun b!6478537 () Bool)

(declare-fun tp!1795109 () Bool)

(declare-fun tp!1795107 () Bool)

(assert (=> b!6478537 (= e!3926970 (and tp!1795109 tp!1795107))))

(assert (=> b!6477468 (= tp!1795031 e!3926970)))

(declare-fun b!6478539 () Bool)

(declare-fun tp!1795105 () Bool)

(declare-fun tp!1795106 () Bool)

(assert (=> b!6478539 (= e!3926970 (and tp!1795105 tp!1795106))))

(declare-fun b!6478538 () Bool)

(declare-fun tp!1795108 () Bool)

(assert (=> b!6478538 (= e!3926970 tp!1795108)))

(assert (= (and b!6477468 ((_ is ElementMatch!16355) (reg!16684 (reg!16684 r!7292)))) b!6478536))

(assert (= (and b!6477468 ((_ is Concat!25200) (reg!16684 (reg!16684 r!7292)))) b!6478537))

(assert (= (and b!6477468 ((_ is Star!16355) (reg!16684 (reg!16684 r!7292)))) b!6478538))

(assert (= (and b!6477468 ((_ is Union!16355) (reg!16684 (reg!16684 r!7292)))) b!6478539))

(declare-fun b!6478540 () Bool)

(declare-fun e!3926971 () Bool)

(declare-fun tp!1795110 () Bool)

(declare-fun tp!1795111 () Bool)

(assert (=> b!6478540 (= e!3926971 (and tp!1795110 tp!1795111))))

(assert (=> b!6477425 (= tp!1794982 e!3926971)))

(assert (= (and b!6477425 ((_ is Cons!65241) (exprs!6239 setElem!44119))) b!6478540))

(declare-fun b!6478541 () Bool)

(declare-fun e!3926972 () Bool)

(assert (=> b!6478541 (= e!3926972 tp_is_empty!41963)))

(declare-fun b!6478542 () Bool)

(declare-fun tp!1795116 () Bool)

(declare-fun tp!1795114 () Bool)

(assert (=> b!6478542 (= e!3926972 (and tp!1795116 tp!1795114))))

(assert (=> b!6477439 (= tp!1794994 e!3926972)))

(declare-fun b!6478544 () Bool)

(declare-fun tp!1795112 () Bool)

(declare-fun tp!1795113 () Bool)

(assert (=> b!6478544 (= e!3926972 (and tp!1795112 tp!1795113))))

(declare-fun b!6478543 () Bool)

(declare-fun tp!1795115 () Bool)

(assert (=> b!6478543 (= e!3926972 tp!1795115)))

(assert (= (and b!6477439 ((_ is ElementMatch!16355) (regOne!33223 (regOne!33223 r!7292)))) b!6478541))

(assert (= (and b!6477439 ((_ is Concat!25200) (regOne!33223 (regOne!33223 r!7292)))) b!6478542))

(assert (= (and b!6477439 ((_ is Star!16355) (regOne!33223 (regOne!33223 r!7292)))) b!6478543))

(assert (= (and b!6477439 ((_ is Union!16355) (regOne!33223 (regOne!33223 r!7292)))) b!6478544))

(declare-fun b!6478545 () Bool)

(declare-fun e!3926973 () Bool)

(assert (=> b!6478545 (= e!3926973 tp_is_empty!41963)))

(declare-fun b!6478546 () Bool)

(declare-fun tp!1795121 () Bool)

(declare-fun tp!1795119 () Bool)

(assert (=> b!6478546 (= e!3926973 (and tp!1795121 tp!1795119))))

(assert (=> b!6477439 (= tp!1794995 e!3926973)))

(declare-fun b!6478548 () Bool)

(declare-fun tp!1795117 () Bool)

(declare-fun tp!1795118 () Bool)

(assert (=> b!6478548 (= e!3926973 (and tp!1795117 tp!1795118))))

(declare-fun b!6478547 () Bool)

(declare-fun tp!1795120 () Bool)

(assert (=> b!6478547 (= e!3926973 tp!1795120)))

(assert (= (and b!6477439 ((_ is ElementMatch!16355) (regTwo!33223 (regOne!33223 r!7292)))) b!6478545))

(assert (= (and b!6477439 ((_ is Concat!25200) (regTwo!33223 (regOne!33223 r!7292)))) b!6478546))

(assert (= (and b!6477439 ((_ is Star!16355) (regTwo!33223 (regOne!33223 r!7292)))) b!6478547))

(assert (= (and b!6477439 ((_ is Union!16355) (regTwo!33223 (regOne!33223 r!7292)))) b!6478548))

(declare-fun b!6478549 () Bool)

(declare-fun e!3926974 () Bool)

(assert (=> b!6478549 (= e!3926974 tp_is_empty!41963)))

(declare-fun b!6478550 () Bool)

(declare-fun tp!1795126 () Bool)

(declare-fun tp!1795124 () Bool)

(assert (=> b!6478550 (= e!3926974 (and tp!1795126 tp!1795124))))

(assert (=> b!6477453 (= tp!1795012 e!3926974)))

(declare-fun b!6478552 () Bool)

(declare-fun tp!1795122 () Bool)

(declare-fun tp!1795123 () Bool)

(assert (=> b!6478552 (= e!3926974 (and tp!1795122 tp!1795123))))

(declare-fun b!6478551 () Bool)

(declare-fun tp!1795125 () Bool)

(assert (=> b!6478551 (= e!3926974 tp!1795125)))

(assert (= (and b!6477453 ((_ is ElementMatch!16355) (regOne!33223 (regOne!33222 r!7292)))) b!6478549))

(assert (= (and b!6477453 ((_ is Concat!25200) (regOne!33223 (regOne!33222 r!7292)))) b!6478550))

(assert (= (and b!6477453 ((_ is Star!16355) (regOne!33223 (regOne!33222 r!7292)))) b!6478551))

(assert (= (and b!6477453 ((_ is Union!16355) (regOne!33223 (regOne!33222 r!7292)))) b!6478552))

(declare-fun b!6478553 () Bool)

(declare-fun e!3926975 () Bool)

(assert (=> b!6478553 (= e!3926975 tp_is_empty!41963)))

(declare-fun b!6478554 () Bool)

(declare-fun tp!1795131 () Bool)

(declare-fun tp!1795129 () Bool)

(assert (=> b!6478554 (= e!3926975 (and tp!1795131 tp!1795129))))

(assert (=> b!6477453 (= tp!1795013 e!3926975)))

(declare-fun b!6478556 () Bool)

(declare-fun tp!1795127 () Bool)

(declare-fun tp!1795128 () Bool)

(assert (=> b!6478556 (= e!3926975 (and tp!1795127 tp!1795128))))

(declare-fun b!6478555 () Bool)

(declare-fun tp!1795130 () Bool)

(assert (=> b!6478555 (= e!3926975 tp!1795130)))

(assert (= (and b!6477453 ((_ is ElementMatch!16355) (regTwo!33223 (regOne!33222 r!7292)))) b!6478553))

(assert (= (and b!6477453 ((_ is Concat!25200) (regTwo!33223 (regOne!33222 r!7292)))) b!6478554))

(assert (= (and b!6477453 ((_ is Star!16355) (regTwo!33223 (regOne!33222 r!7292)))) b!6478555))

(assert (= (and b!6477453 ((_ is Union!16355) (regTwo!33223 (regOne!33222 r!7292)))) b!6478556))

(declare-fun b!6478557 () Bool)

(declare-fun e!3926976 () Bool)

(assert (=> b!6478557 (= e!3926976 tp_is_empty!41963)))

(declare-fun b!6478558 () Bool)

(declare-fun tp!1795136 () Bool)

(declare-fun tp!1795134 () Bool)

(assert (=> b!6478558 (= e!3926976 (and tp!1795136 tp!1795134))))

(assert (=> b!6477442 (= tp!1795002 e!3926976)))

(declare-fun b!6478560 () Bool)

(declare-fun tp!1795132 () Bool)

(declare-fun tp!1795133 () Bool)

(assert (=> b!6478560 (= e!3926976 (and tp!1795132 tp!1795133))))

(declare-fun b!6478559 () Bool)

(declare-fun tp!1795135 () Bool)

(assert (=> b!6478559 (= e!3926976 tp!1795135)))

(assert (= (and b!6477442 ((_ is ElementMatch!16355) (reg!16684 (regTwo!33223 r!7292)))) b!6478557))

(assert (= (and b!6477442 ((_ is Concat!25200) (reg!16684 (regTwo!33223 r!7292)))) b!6478558))

(assert (= (and b!6477442 ((_ is Star!16355) (reg!16684 (regTwo!33223 r!7292)))) b!6478559))

(assert (= (and b!6477442 ((_ is Union!16355) (reg!16684 (regTwo!33223 r!7292)))) b!6478560))

(declare-fun b!6478561 () Bool)

(declare-fun e!3926977 () Bool)

(assert (=> b!6478561 (= e!3926977 tp_is_empty!41963)))

(declare-fun b!6478562 () Bool)

(declare-fun tp!1795141 () Bool)

(declare-fun tp!1795139 () Bool)

(assert (=> b!6478562 (= e!3926977 (and tp!1795141 tp!1795139))))

(assert (=> b!6477441 (= tp!1795003 e!3926977)))

(declare-fun b!6478564 () Bool)

(declare-fun tp!1795137 () Bool)

(declare-fun tp!1795138 () Bool)

(assert (=> b!6478564 (= e!3926977 (and tp!1795137 tp!1795138))))

(declare-fun b!6478563 () Bool)

(declare-fun tp!1795140 () Bool)

(assert (=> b!6478563 (= e!3926977 tp!1795140)))

(assert (= (and b!6477441 ((_ is ElementMatch!16355) (regOne!33222 (regTwo!33223 r!7292)))) b!6478561))

(assert (= (and b!6477441 ((_ is Concat!25200) (regOne!33222 (regTwo!33223 r!7292)))) b!6478562))

(assert (= (and b!6477441 ((_ is Star!16355) (regOne!33222 (regTwo!33223 r!7292)))) b!6478563))

(assert (= (and b!6477441 ((_ is Union!16355) (regOne!33222 (regTwo!33223 r!7292)))) b!6478564))

(declare-fun b!6478565 () Bool)

(declare-fun e!3926978 () Bool)

(assert (=> b!6478565 (= e!3926978 tp_is_empty!41963)))

(declare-fun b!6478566 () Bool)

(declare-fun tp!1795146 () Bool)

(declare-fun tp!1795144 () Bool)

(assert (=> b!6478566 (= e!3926978 (and tp!1795146 tp!1795144))))

(assert (=> b!6477441 (= tp!1795001 e!3926978)))

(declare-fun b!6478568 () Bool)

(declare-fun tp!1795142 () Bool)

(declare-fun tp!1795143 () Bool)

(assert (=> b!6478568 (= e!3926978 (and tp!1795142 tp!1795143))))

(declare-fun b!6478567 () Bool)

(declare-fun tp!1795145 () Bool)

(assert (=> b!6478567 (= e!3926978 tp!1795145)))

(assert (= (and b!6477441 ((_ is ElementMatch!16355) (regTwo!33222 (regTwo!33223 r!7292)))) b!6478565))

(assert (= (and b!6477441 ((_ is Concat!25200) (regTwo!33222 (regTwo!33223 r!7292)))) b!6478566))

(assert (= (and b!6477441 ((_ is Star!16355) (regTwo!33222 (regTwo!33223 r!7292)))) b!6478567))

(assert (= (and b!6477441 ((_ is Union!16355) (regTwo!33222 (regTwo!33223 r!7292)))) b!6478568))

(declare-fun b!6478569 () Bool)

(declare-fun e!3926979 () Bool)

(assert (=> b!6478569 (= e!3926979 tp_is_empty!41963)))

(declare-fun b!6478570 () Bool)

(declare-fun tp!1795151 () Bool)

(declare-fun tp!1795149 () Bool)

(assert (=> b!6478570 (= e!3926979 (and tp!1795151 tp!1795149))))

(assert (=> b!6477455 (= tp!1795021 e!3926979)))

(declare-fun b!6478572 () Bool)

(declare-fun tp!1795147 () Bool)

(declare-fun tp!1795148 () Bool)

(assert (=> b!6478572 (= e!3926979 (and tp!1795147 tp!1795148))))

(declare-fun b!6478571 () Bool)

(declare-fun tp!1795150 () Bool)

(assert (=> b!6478571 (= e!3926979 tp!1795150)))

(assert (= (and b!6477455 ((_ is ElementMatch!16355) (regOne!33222 (regTwo!33222 r!7292)))) b!6478569))

(assert (= (and b!6477455 ((_ is Concat!25200) (regOne!33222 (regTwo!33222 r!7292)))) b!6478570))

(assert (= (and b!6477455 ((_ is Star!16355) (regOne!33222 (regTwo!33222 r!7292)))) b!6478571))

(assert (= (and b!6477455 ((_ is Union!16355) (regOne!33222 (regTwo!33222 r!7292)))) b!6478572))

(declare-fun b!6478573 () Bool)

(declare-fun e!3926980 () Bool)

(assert (=> b!6478573 (= e!3926980 tp_is_empty!41963)))

(declare-fun b!6478574 () Bool)

(declare-fun tp!1795156 () Bool)

(declare-fun tp!1795154 () Bool)

(assert (=> b!6478574 (= e!3926980 (and tp!1795156 tp!1795154))))

(assert (=> b!6477455 (= tp!1795019 e!3926980)))

(declare-fun b!6478576 () Bool)

(declare-fun tp!1795152 () Bool)

(declare-fun tp!1795153 () Bool)

(assert (=> b!6478576 (= e!3926980 (and tp!1795152 tp!1795153))))

(declare-fun b!6478575 () Bool)

(declare-fun tp!1795155 () Bool)

(assert (=> b!6478575 (= e!3926980 tp!1795155)))

(assert (= (and b!6477455 ((_ is ElementMatch!16355) (regTwo!33222 (regTwo!33222 r!7292)))) b!6478573))

(assert (= (and b!6477455 ((_ is Concat!25200) (regTwo!33222 (regTwo!33222 r!7292)))) b!6478574))

(assert (= (and b!6477455 ((_ is Star!16355) (regTwo!33222 (regTwo!33222 r!7292)))) b!6478575))

(assert (= (and b!6477455 ((_ is Union!16355) (regTwo!33222 (regTwo!33222 r!7292)))) b!6478576))

(declare-fun b!6478577 () Bool)

(declare-fun e!3926981 () Bool)

(assert (=> b!6478577 (= e!3926981 tp_is_empty!41963)))

(declare-fun b!6478578 () Bool)

(declare-fun tp!1795161 () Bool)

(declare-fun tp!1795159 () Bool)

(assert (=> b!6478578 (= e!3926981 (and tp!1795161 tp!1795159))))

(assert (=> b!6477443 (= tp!1794999 e!3926981)))

(declare-fun b!6478580 () Bool)

(declare-fun tp!1795157 () Bool)

(declare-fun tp!1795158 () Bool)

(assert (=> b!6478580 (= e!3926981 (and tp!1795157 tp!1795158))))

(declare-fun b!6478579 () Bool)

(declare-fun tp!1795160 () Bool)

(assert (=> b!6478579 (= e!3926981 tp!1795160)))

(assert (= (and b!6477443 ((_ is ElementMatch!16355) (regOne!33223 (regTwo!33223 r!7292)))) b!6478577))

(assert (= (and b!6477443 ((_ is Concat!25200) (regOne!33223 (regTwo!33223 r!7292)))) b!6478578))

(assert (= (and b!6477443 ((_ is Star!16355) (regOne!33223 (regTwo!33223 r!7292)))) b!6478579))

(assert (= (and b!6477443 ((_ is Union!16355) (regOne!33223 (regTwo!33223 r!7292)))) b!6478580))

(declare-fun b!6478581 () Bool)

(declare-fun e!3926982 () Bool)

(assert (=> b!6478581 (= e!3926982 tp_is_empty!41963)))

(declare-fun b!6478582 () Bool)

(declare-fun tp!1795166 () Bool)

(declare-fun tp!1795164 () Bool)

(assert (=> b!6478582 (= e!3926982 (and tp!1795166 tp!1795164))))

(assert (=> b!6477443 (= tp!1795000 e!3926982)))

(declare-fun b!6478584 () Bool)

(declare-fun tp!1795162 () Bool)

(declare-fun tp!1795163 () Bool)

(assert (=> b!6478584 (= e!3926982 (and tp!1795162 tp!1795163))))

(declare-fun b!6478583 () Bool)

(declare-fun tp!1795165 () Bool)

(assert (=> b!6478583 (= e!3926982 tp!1795165)))

(assert (= (and b!6477443 ((_ is ElementMatch!16355) (regTwo!33223 (regTwo!33223 r!7292)))) b!6478581))

(assert (= (and b!6477443 ((_ is Concat!25200) (regTwo!33223 (regTwo!33223 r!7292)))) b!6478582))

(assert (= (and b!6477443 ((_ is Star!16355) (regTwo!33223 (regTwo!33223 r!7292)))) b!6478583))

(assert (= (and b!6477443 ((_ is Union!16355) (regTwo!33223 (regTwo!33223 r!7292)))) b!6478584))

(declare-fun b!6478585 () Bool)

(declare-fun e!3926983 () Bool)

(assert (=> b!6478585 (= e!3926983 tp_is_empty!41963)))

(declare-fun b!6478586 () Bool)

(declare-fun tp!1795171 () Bool)

(declare-fun tp!1795169 () Bool)

(assert (=> b!6478586 (= e!3926983 (and tp!1795171 tp!1795169))))

(assert (=> b!6477457 (= tp!1795017 e!3926983)))

(declare-fun b!6478588 () Bool)

(declare-fun tp!1795167 () Bool)

(declare-fun tp!1795168 () Bool)

(assert (=> b!6478588 (= e!3926983 (and tp!1795167 tp!1795168))))

(declare-fun b!6478587 () Bool)

(declare-fun tp!1795170 () Bool)

(assert (=> b!6478587 (= e!3926983 tp!1795170)))

(assert (= (and b!6477457 ((_ is ElementMatch!16355) (regOne!33223 (regTwo!33222 r!7292)))) b!6478585))

(assert (= (and b!6477457 ((_ is Concat!25200) (regOne!33223 (regTwo!33222 r!7292)))) b!6478586))

(assert (= (and b!6477457 ((_ is Star!16355) (regOne!33223 (regTwo!33222 r!7292)))) b!6478587))

(assert (= (and b!6477457 ((_ is Union!16355) (regOne!33223 (regTwo!33222 r!7292)))) b!6478588))

(declare-fun b!6478589 () Bool)

(declare-fun e!3926984 () Bool)

(assert (=> b!6478589 (= e!3926984 tp_is_empty!41963)))

(declare-fun b!6478590 () Bool)

(declare-fun tp!1795176 () Bool)

(declare-fun tp!1795174 () Bool)

(assert (=> b!6478590 (= e!3926984 (and tp!1795176 tp!1795174))))

(assert (=> b!6477457 (= tp!1795018 e!3926984)))

(declare-fun b!6478592 () Bool)

(declare-fun tp!1795172 () Bool)

(declare-fun tp!1795173 () Bool)

(assert (=> b!6478592 (= e!3926984 (and tp!1795172 tp!1795173))))

(declare-fun b!6478591 () Bool)

(declare-fun tp!1795175 () Bool)

(assert (=> b!6478591 (= e!3926984 tp!1795175)))

(assert (= (and b!6477457 ((_ is ElementMatch!16355) (regTwo!33223 (regTwo!33222 r!7292)))) b!6478589))

(assert (= (and b!6477457 ((_ is Concat!25200) (regTwo!33223 (regTwo!33222 r!7292)))) b!6478590))

(assert (= (and b!6477457 ((_ is Star!16355) (regTwo!33223 (regTwo!33222 r!7292)))) b!6478591))

(assert (= (and b!6477457 ((_ is Union!16355) (regTwo!33223 (regTwo!33222 r!7292)))) b!6478592))

(declare-fun b!6478593 () Bool)

(declare-fun e!3926985 () Bool)

(assert (=> b!6478593 (= e!3926985 tp_is_empty!41963)))

(declare-fun b!6478594 () Bool)

(declare-fun tp!1795181 () Bool)

(declare-fun tp!1795179 () Bool)

(assert (=> b!6478594 (= e!3926985 (and tp!1795181 tp!1795179))))

(assert (=> b!6477456 (= tp!1795020 e!3926985)))

(declare-fun b!6478596 () Bool)

(declare-fun tp!1795177 () Bool)

(declare-fun tp!1795178 () Bool)

(assert (=> b!6478596 (= e!3926985 (and tp!1795177 tp!1795178))))

(declare-fun b!6478595 () Bool)

(declare-fun tp!1795180 () Bool)

(assert (=> b!6478595 (= e!3926985 tp!1795180)))

(assert (= (and b!6477456 ((_ is ElementMatch!16355) (reg!16684 (regTwo!33222 r!7292)))) b!6478593))

(assert (= (and b!6477456 ((_ is Concat!25200) (reg!16684 (regTwo!33222 r!7292)))) b!6478594))

(assert (= (and b!6477456 ((_ is Star!16355) (reg!16684 (regTwo!33222 r!7292)))) b!6478595))

(assert (= (and b!6477456 ((_ is Union!16355) (reg!16684 (regTwo!33222 r!7292)))) b!6478596))

(declare-fun b!6478597 () Bool)

(declare-fun e!3926986 () Bool)

(assert (=> b!6478597 (= e!3926986 tp_is_empty!41963)))

(declare-fun b!6478598 () Bool)

(declare-fun tp!1795186 () Bool)

(declare-fun tp!1795184 () Bool)

(assert (=> b!6478598 (= e!3926986 (and tp!1795186 tp!1795184))))

(assert (=> b!6477469 (= tp!1795028 e!3926986)))

(declare-fun b!6478600 () Bool)

(declare-fun tp!1795182 () Bool)

(declare-fun tp!1795183 () Bool)

(assert (=> b!6478600 (= e!3926986 (and tp!1795182 tp!1795183))))

(declare-fun b!6478599 () Bool)

(declare-fun tp!1795185 () Bool)

(assert (=> b!6478599 (= e!3926986 tp!1795185)))

(assert (= (and b!6477469 ((_ is ElementMatch!16355) (regOne!33223 (reg!16684 r!7292)))) b!6478597))

(assert (= (and b!6477469 ((_ is Concat!25200) (regOne!33223 (reg!16684 r!7292)))) b!6478598))

(assert (= (and b!6477469 ((_ is Star!16355) (regOne!33223 (reg!16684 r!7292)))) b!6478599))

(assert (= (and b!6477469 ((_ is Union!16355) (regOne!33223 (reg!16684 r!7292)))) b!6478600))

(declare-fun b!6478601 () Bool)

(declare-fun e!3926987 () Bool)

(assert (=> b!6478601 (= e!3926987 tp_is_empty!41963)))

(declare-fun b!6478602 () Bool)

(declare-fun tp!1795191 () Bool)

(declare-fun tp!1795189 () Bool)

(assert (=> b!6478602 (= e!3926987 (and tp!1795191 tp!1795189))))

(assert (=> b!6477469 (= tp!1795029 e!3926987)))

(declare-fun b!6478604 () Bool)

(declare-fun tp!1795187 () Bool)

(declare-fun tp!1795188 () Bool)

(assert (=> b!6478604 (= e!3926987 (and tp!1795187 tp!1795188))))

(declare-fun b!6478603 () Bool)

(declare-fun tp!1795190 () Bool)

(assert (=> b!6478603 (= e!3926987 tp!1795190)))

(assert (= (and b!6477469 ((_ is ElementMatch!16355) (regTwo!33223 (reg!16684 r!7292)))) b!6478601))

(assert (= (and b!6477469 ((_ is Concat!25200) (regTwo!33223 (reg!16684 r!7292)))) b!6478602))

(assert (= (and b!6477469 ((_ is Star!16355) (regTwo!33223 (reg!16684 r!7292)))) b!6478603))

(assert (= (and b!6477469 ((_ is Union!16355) (regTwo!33223 (reg!16684 r!7292)))) b!6478604))

(declare-fun b!6478605 () Bool)

(declare-fun e!3926988 () Bool)

(assert (=> b!6478605 (= e!3926988 tp_is_empty!41963)))

(declare-fun b!6478606 () Bool)

(declare-fun tp!1795196 () Bool)

(declare-fun tp!1795194 () Bool)

(assert (=> b!6478606 (= e!3926988 (and tp!1795196 tp!1795194))))

(assert (=> b!6477448 (= tp!1795008 e!3926988)))

(declare-fun b!6478608 () Bool)

(declare-fun tp!1795192 () Bool)

(declare-fun tp!1795193 () Bool)

(assert (=> b!6478608 (= e!3926988 (and tp!1795192 tp!1795193))))

(declare-fun b!6478607 () Bool)

(declare-fun tp!1795195 () Bool)

(assert (=> b!6478607 (= e!3926988 tp!1795195)))

(assert (= (and b!6477448 ((_ is ElementMatch!16355) (h!71689 (exprs!6239 setElem!44113)))) b!6478605))

(assert (= (and b!6477448 ((_ is Concat!25200) (h!71689 (exprs!6239 setElem!44113)))) b!6478606))

(assert (= (and b!6477448 ((_ is Star!16355) (h!71689 (exprs!6239 setElem!44113)))) b!6478607))

(assert (= (and b!6477448 ((_ is Union!16355) (h!71689 (exprs!6239 setElem!44113)))) b!6478608))

(declare-fun b!6478609 () Bool)

(declare-fun e!3926989 () Bool)

(declare-fun tp!1795197 () Bool)

(declare-fun tp!1795198 () Bool)

(assert (=> b!6478609 (= e!3926989 (and tp!1795197 tp!1795198))))

(assert (=> b!6477448 (= tp!1795009 e!3926989)))

(assert (= (and b!6477448 ((_ is Cons!65241) (t!378989 (exprs!6239 setElem!44113)))) b!6478609))

(declare-fun b_lambda!245413 () Bool)

(assert (= b_lambda!245395 (or b!6476340 b_lambda!245413)))

(assert (=> d!2032263 d!2032173))

(declare-fun b_lambda!245415 () Bool)

(assert (= b_lambda!245393 (or d!2031899 b_lambda!245415)))

(declare-fun bs!1643347 () Bool)

(declare-fun d!2032705 () Bool)

(assert (= bs!1643347 (and d!2032705 d!2031899)))

(assert (=> bs!1643347 (= (dynLambda!25916 lambda!358049 (h!71689 (exprs!6239 setElem!44113))) (validRegex!8091 (h!71689 (exprs!6239 setElem!44113))))))

(declare-fun m!7266938 () Bool)

(assert (=> bs!1643347 m!7266938))

(assert (=> b!6477578 d!2032705))

(declare-fun b_lambda!245417 () Bool)

(assert (= b_lambda!245403 (or d!2031887 b_lambda!245417)))

(declare-fun bs!1643348 () Bool)

(declare-fun d!2032707 () Bool)

(assert (= bs!1643348 (and d!2032707 d!2031887)))

(assert (=> bs!1643348 (= (dynLambda!25916 lambda!358048 (h!71689 (exprs!6239 (h!71690 zl!343)))) (validRegex!8091 (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(declare-fun m!7266940 () Bool)

(assert (=> bs!1643348 m!7266940))

(assert (=> b!6478044 d!2032707))

(declare-fun b_lambda!245419 () Bool)

(assert (= b_lambda!245411 (or d!2032083 b_lambda!245419)))

(declare-fun bs!1643349 () Bool)

(declare-fun d!2032709 () Bool)

(assert (= bs!1643349 (and d!2032709 d!2032083)))

(assert (=> bs!1643349 (= (dynLambda!25916 lambda!358095 (h!71689 (unfocusZipperList!1776 zl!343))) (validRegex!8091 (h!71689 (unfocusZipperList!1776 zl!343))))))

(declare-fun m!7266942 () Bool)

(assert (=> bs!1643349 m!7266942))

(assert (=> b!6478358 d!2032709))

(declare-fun b_lambda!245421 () Bool)

(assert (= b_lambda!245409 (or d!2032085 b_lambda!245421)))

(declare-fun bs!1643350 () Bool)

(declare-fun d!2032711 () Bool)

(assert (= bs!1643350 (and d!2032711 d!2032085)))

(assert (=> bs!1643350 (= (dynLambda!25916 lambda!358099 (h!71689 lt!2385846)) (validRegex!8091 (h!71689 lt!2385846)))))

(declare-fun m!7266944 () Bool)

(assert (=> bs!1643350 m!7266944))

(assert (=> b!6478336 d!2032711))

(declare-fun b_lambda!245423 () Bool)

(assert (= b_lambda!245397 (or d!2031879 b_lambda!245423)))

(declare-fun bs!1643351 () Bool)

(declare-fun d!2032713 () Bool)

(assert (= bs!1643351 (and d!2032713 d!2031879)))

(assert (=> bs!1643351 (= (dynLambda!25916 lambda!358039 (h!71689 (exprs!6239 lt!2385676))) (validRegex!8091 (h!71689 (exprs!6239 lt!2385676))))))

(declare-fun m!7266946 () Bool)

(assert (=> bs!1643351 m!7266946))

(assert (=> b!6477816 d!2032713))

(declare-fun b_lambda!245425 () Bool)

(assert (= b_lambda!245407 (or b!6476340 b_lambda!245425)))

(assert (=> d!2032569 d!2032171))

(declare-fun b_lambda!245427 () Bool)

(assert (= b_lambda!245405 (or b!6476340 b_lambda!245427)))

(assert (=> d!2032519 d!2032167))

(declare-fun b_lambda!245429 () Bool)

(assert (= b_lambda!245399 (or b!6476340 b_lambda!245429)))

(assert (=> d!2032421 d!2032169))

(declare-fun b_lambda!245431 () Bool)

(assert (= b_lambda!245401 (or d!2032101 b_lambda!245431)))

(declare-fun bs!1643352 () Bool)

(declare-fun d!2032715 () Bool)

(assert (= bs!1643352 (and d!2032715 d!2032101)))

(assert (=> bs!1643352 (= (dynLambda!25916 lambda!358101 (h!71689 (exprs!6239 (h!71690 zl!343)))) (validRegex!8091 (h!71689 (exprs!6239 (h!71690 zl!343)))))))

(assert (=> bs!1643352 m!7266940))

(assert (=> b!6477987 d!2032715))

(check-sat (not b!6478428) (not b!6477773) (not b!6478608) (not b_lambda!245427) (not b!6478373) (not b!6478374) (not d!2032641) (not b!6477930) (not b!6477928) (not b!6478087) (not b!6477824) (not b!6478595) (not bm!560569) (not bm!560509) (not bm!560598) (not b!6477830) (not d!2032373) (not bm!560618) (not b!6477696) (not b!6477886) (not d!2032691) (not b!6478337) (not bm!560664) (not d!2032561) (not b!6478287) (not bm!560642) (not d!2032207) (not b!6478189) (not b!6478068) (not b!6477782) (not b!6477841) (not b!6477709) (not b!6478230) (not b!6478004) (not b!6478499) (not b!6477970) (not b!6478142) (not b!6477888) (not b_lambda!245415) (not bm!560588) (not b!6478173) (not b!6478092) (not b!6478427) (not b!6477985) (not d!2032361) (not bm!560593) (not b!6478542) (not b!6477508) (not b!6478520) (not d!2032429) (not bm!560616) (not setNonEmpty!44123) (not b!6478348) (not b!6478570) (not b!6478101) (not b!6478164) (not b!6478564) (not b!6477673) (not b!6477784) (not b!6478065) (not b!6478248) (not b!6478494) (not b!6478556) (not b!6477821) (not b!6478525) (not bm!560523) (not b!6478598) (not b!6478596) (not b!6477906) (not b!6478516) (not setNonEmpty!44125) (not b!6478551) (not b!6478450) (not b!6478590) (not d!2032275) (not d!2032599) (not b!6478539) (not d!2032515) (not bm!560617) (not b!6477818) (not b!6477829) (not bm!560660) (not b!6477491) (not b!6477499) (not d!2032323) (not d!2032439) (not b!6478045) (not b!6478284) (not d!2032669) (not bm!560670) (not b!6478090) (not bs!1643349) (not b!6477750) (not b!6477700) (not bm!560525) (not bm!560547) (not d!2032565) (not bm!560595) (not d!2032559) (not b!6478112) (not b!6478264) (not bm!560641) (not b!6477777) (not b!6478105) (not b!6478548) (not b!6478273) (not bm!560659) (not b!6478603) (not b_lambda!245385) (not bm!560563) (not b!6478361) (not d!2032605) (not b!6478056) (not bm!560491) (not d!2032403) (not d!2032483) (not bm!560493) (not bm!560538) (not d!2032597) (not bm!560555) (not d!2032395) (not b!6478552) (not b!6477827) (not b!6478583) (not b!6477815) (not b!6478543) (not d!2032419) (not b!6478002) (not d!2032661) (not b!6478492) (not d!2032185) (not b!6478454) (not b!6478555) (not bm!560681) (not b!6477933) (not b!6477601) (not d!2032689) (not bm!560594) (not b!6478436) (not d!2032363) (not b!6478381) (not b!6477954) (not d!2032239) (not d!2032289) (not b!6478334) (not b!6478567) (not d!2032453) (not bm!560573) (not b!6477846) (not bm!560649) (not b!6478139) (not b!6478096) (not b!6477898) (not bm!560675) (not d!2032579) (not b!6477551) (not b!6477671) (not b!6477899) (not d!2032259) (not b!6477484) (not b!6477838) (not b_lambda!245391) (not b!6478529) (not d!2032553) (not b!6478488) (not b!6477583) (not b!6478161) (not d!2032545) (not bm!560610) (not b!6478295) (not b!6478106) (not d!2032493) (not b!6477749) (not d!2032511) (not bm!560626) (not b!6477995) (not bm!560548) (not b!6478257) (not b!6477507) (not bs!1643347) (not bm!560568) (not b!6478425) (not b_lambda!245431) (not bm!560526) (not b!6477692) (not b!6477663) (not b!6477831) (not b!6477753) (not b!6478201) (not d!2032335) (not b!6478528) (not bm!560661) (not bm!560566) (not b!6478558) (not d!2032529) (not bm!560577) (not b!6478562) (not b!6478252) (not bm!560585) (not bm!560554) (not d!2032261) (not d!2032685) (not d!2032249) (not b!6477550) (not bm!560680) (not b!6478212) (not b!6477494) (not bm!560542) (not b!6478385) (not d!2032287) (not b!6478439) (not b!6478579) (not b!6477531) (not bm!560667) (not d!2032391) (not b!6477636) (not bm!560559) (not bm!560629) (not d!2032405) (not b!6477957) (not bm!560645) (not b!6477562) (not bm!560676) (not b!6478592) (not bm!560552) (not b!6477999) (not b!6477732) (not b!6477496) (not d!2032607) (not b!6478582) (not bm!560519) (not d!2032283) (not b!6478163) (not b!6478376) (not b_lambda!245429) (not b!6477963) (not bm!560607) (not b!6477697) (not d!2032571) (not b!6478227) (not b!6478017) (not b!6478222) (not b!6478184) (not bm!560553) (not d!2032197) (not b!6478468) (not d!2032533) (not b!6478380) (not d!2032241) (not d!2032331) (not b!6477903) (not bm!560520) (not bm!560604) (not d!2032517) (not b!6477938) (not bm!560533) (not b!6477559) (not b!6478566) (not b!6477678) (not d!2032375) (not d!2032639) (not b!6478061) (not bm!560532) (not b!6478435) (not bm!560631) (not b!6477826) (not bm!560666) (not d!2032201) (not b!6477992) (not b!6478011) (not b!6477666) (not b!6478397) (not d!2032189) (not b!6478442) (not b!6478588) (not b!6478256) (not bm!560514) (not b!6477937) (not d!2032377) (not bm!560601) (not bm!560494) (not bm!560587) (not b!6478421) (not b!6478453) (not b!6478286) (not bm!560655) (not d!2032433) (not b!6478504) (not b!6477891) (not d!2032243) (not bm!560600) (not b!6477946) (not b!6477874) (not bm!560512) (not b_lambda!245423) (not d!2032255) (not b!6477796) (not d!2032673) (not b!6478217) (not b!6477547) (not d!2032589) (not bm!560621) (not b!6478457) (not bm!560510) (not bm!560580) (not b!6478394) (not b!6478584) (not b!6478261) (not d!2032531) (not b!6478405) (not b!6478540) (not b!6478538) (not d!2032701) (not b_lambda!245413) (not b!6477669) (not b!6477489) (not b!6477973) (not b!6477962) (not b!6478402) (not b!6478192) (not d!2032585) (not d!2032383) (not b!6478231) (not d!2032643) (not b!6477865) (not bm!560603) (not b!6477975) (not b!6477853) (not d!2032509) (not bm!560652) (not b!6477877) (not bm!560674) (not bm!560571) (not d!2032371) (not b_lambda!245389) (not b!6478568) (not b!6478526) (not b!6477734) (not b!6478005) (not b!6478377) (not b!6478026) (not b!6478176) (not bm!560527) (not b_lambda!245417) (not b!6478501) (not bm!560651) (not b!6478234) (not d!2032223) (not bm!560579) (not b!6478574) (not b!6478571) (not b!6478226) (not b!6478559) (not bm!560623) (not b!6478372) (not b!6478410) (not b!6477797) (not b!6478586) (not b!6477708) (not b!6477694) (not b!6478509) (not b!6478480) (not b!6477972) (not b!6477817) (not bs!1643350) (not d!2032581) (not b!6477504) (not b!6478510) (not d!2032555) (not d!2032227) (not bs!1643348) (not b!6478546) (not d!2032575) (not b!6478532) (not b!6477705) (not b!6477994) (not bm!560513) (not b!6477597) (not d!2032187) (not d!2032671) (not b!6477605) (not d!2032625) (not bm!560672) (not b!6477813) (not b!6478517) (not d!2032623) (not b!6478362) (not b!6478534) (not b!6477579) (not b!6478158) (not bm!560558) (not b!6477990) (not d!2032455) (not b_lambda!245425) (not d!2032567) (not b!6478522) (not d!2032447) (not b!6477980) (not b!6477704) (not b!6478445) (not b!6477761) (not b!6478188) (not b!6478533) (not b!6477836) (not b!6478125) (not bm!560619) (not bm!560646) (not d!2032587) (not bm!560658) (not b!6477998) (not b!6478578) (not b!6478575) (not b!6477758) (not b!6478514) (not d!2032181) (not b!6478249) (not b!6478505) (not b!6478554) (not bm!560620) (not b!6477894) (not b!6477988) (not b!6478219) (not b!6477778) (not bm!560540) (not d!2032423) (not bm!560614) (not b!6478329) (not b!6477927) (not b!6478089) (not setNonEmpty!44122) (not b!6478180) (not b!6478467) (not b!6477902) (not setNonEmpty!44124) (not b!6478418) (not b!6477956) (not b!6478302) (not bm!560561) (not b!6478109) (not b!6477675) (not b!6478413) (not d!2032379) (not d!2032659) (not bm!560574) (not d!2032183) (not b!6477869) (not bm!560517) (not bm!560636) (not b!6477602) (not b!6478325) (not bm!560581) (not b!6478609) (not bm!560504) (not setNonEmpty!44126) (not b!6477470) (not b!6478283) (not b!6478449) (not b!6478260) (not b!6478406) (not bm!560582) (not d!2032235) (not b!6478599) (not b!6478521) (not b!6477977) (not b!6478294) (not b!6478098) (not b!6478512) (not b!6478210) (not b!6478006) (not b!6478506) (not d!2032679) (not b!6478422) (not b!6477941) (not bs!1643351) (not b!6477662) (not b!6477781) (not d!2032595) (not bm!560564) (not bm!560551) (not d!2032209) (not b!6478602) (not bm!560611) (not d!2032477) (not b!6478349) (not bm!560557) (not b!6477785) (not b!6477833) (not b!6477979) (not b!6478345) (not b!6477558) (not b!6478524) tp_is_empty!41963 (not b!6478440) (not b!6478600) (not d!2032421) (not b!6477600) (not b!6478333) (not b!6477760) (not d!2032519) (not d!2032521) (not b!6477738) (not d!2032577) (not b!6478491) (not b!6478518) (not b!6477720) (not b!6478077) (not d!2032351) (not bm!560605) (not d!2032569) (not bm!560663) (not b!6478563) (not bm!560549) (not b!6477870) (not b!6478215) (not b!6478007) (not d!2032543) (not b!6478014) (not b!6477731) (not b!6477503) (not b!6478576) (not b!6478401) (not b!6477480) (not b!6477823) (not b!6478233) (not b!6477862) (not b!6478322) (not bm!560628) (not b!6478359) (not b!6478288) (not b!6478508) (not bm!560590) (not d!2032593) (not bm!560596) (not b!6477620) (not b!6477735) (not d!2032505) (not bm!560545) (not b!6477639) (not b!6477942) (not d!2032479) (not b!6477488) (not b_lambda!245421) (not b!6478009) (not d!2032591) (not b!6478604) (not b!6478375) (not b!6478594) (not b!6478497) (not b!6478185) (not b!6477835) (not b!6477667) (not b!6478064) (not b!6478218) (not b!6477982) (not b!6478053) (not b_lambda!245387) (not d!2032703) (not b!6478550) (not b!6478292) (not b!6478500) (not b!6478495) (not d!2032573) (not d!2032191) (not bm!560506) (not d!2032601) (not b!6478513) (not d!2032431) (not b!6478291) (not d!2032465) (not b!6477727) (not bm!560639) (not d!2032475) (not bm!560536) (not b!6478122) (not d!2032357) (not b!6477873) (not b!6477580) (not b!6478417) (not b!6478580) (not b!6477971) (not d!2032609) (not b!6477845) (not b!6477598) (not b!6477676) (not b!6478012) (not b!6477723) (not bm!560637) (not bm!560634) (not b!6478298) (not b!6478560) (not b!6477996) (not b!6478544) (not b!6478547) (not bm!560508) (not bs!1643352) (not d!2032237) (not b!6477793) (not b!6478572) (not b!6478502) (not b!6478123) (not d!2032329) (not d!2032665) (not b!6478330) (not b!6477953) (not b!6478110) (not b!6478535) (not bm!560591) (not d!2032435) (not b!6477493) (not d!2032699) (not d!2032263) (not b!6477670) (not bm!560541) (not d!2032245) (not d!2032693) (not d!2032697) (not b!6477587) (not b!6478487) (not b!6478587) (not b!6478091) (not bm!560537) (not b!6477487) (not b!6478177) (not b!6477481) (not bm!560534) (not d!2032415) (not bm!560678) (not b!6477950) (not b!6478313) (not b!6477917) (not b!6477565) (not d!2032359) (not bm!560507) (not bm!560644) (not b!6477849) (not b!6477485) (not b!6478409) (not b!6478607) (not b!6478530) (not bm!560673) (not bm!560630) (not b!6478431) (not b!6478591) (not bm!560625) (not b!6478088) (not b!6477890) (not b_lambda!245419) (not b!6477850) (not b!6477711) (not b!6477811) (not b!6478060) (not b!6478496) (not d!2032277) (not d!2032695) (not d!2032491) (not b!6477599) (not d!2032257) (not d!2032667) (not b!6478606) (not b!6478537) (not b!6478237) (not b!6477756) (not d!2032333) (not b!6477770) (not b!6478095) (not b!6477949) (not d!2032549) (not b!6477728) (not d!2032381) (not d!2032523) (not b!6477945) (not d!2032631) (not d!2032417) (not bm!560657) (not b!6478035) (not b!6477563) (not d!2032427) (not b!6478285) (not d!2032527) (not bm!560608) (not b!6478483) (not b!6477554))
(check-sat)
