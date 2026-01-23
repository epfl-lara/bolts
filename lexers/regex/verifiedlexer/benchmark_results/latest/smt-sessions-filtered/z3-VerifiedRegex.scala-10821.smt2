; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!556486 () Bool)

(assert start!556486)

(declare-fun b!5269059 () Bool)

(assert (=> b!5269059 true))

(assert (=> b!5269059 true))

(declare-fun lambda!265784 () Int)

(declare-fun lambda!265783 () Int)

(assert (=> b!5269059 (not (= lambda!265784 lambda!265783))))

(assert (=> b!5269059 true))

(assert (=> b!5269059 true))

(declare-fun b!5269056 () Bool)

(assert (=> b!5269056 true))

(declare-fun b!5269046 () Bool)

(declare-fun res!2235374 () Bool)

(declare-fun e!3277035 () Bool)

(assert (=> b!5269046 (=> res!2235374 e!3277035)))

(declare-datatypes ((C!30048 0))(
  ( (C!30049 (val!24726 Int)) )
))
(declare-datatypes ((Regex!14889 0))(
  ( (ElementMatch!14889 (c!912511 C!30048)) (Concat!23734 (regOne!30290 Regex!14889) (regTwo!30290 Regex!14889)) (EmptyExpr!14889) (Star!14889 (reg!15218 Regex!14889)) (EmptyLang!14889) (Union!14889 (regOne!30291 Regex!14889) (regTwo!30291 Regex!14889)) )
))
(declare-fun r!7292 () Regex!14889)

(declare-fun nullable!5058 (Regex!14889) Bool)

(assert (=> b!5269046 (= res!2235374 (not (nullable!5058 (regOne!30290 (regOne!30290 r!7292)))))))

(declare-fun setNonEmpty!33719 () Bool)

(declare-fun tp!1472771 () Bool)

(declare-fun e!3277025 () Bool)

(declare-datatypes ((List!60966 0))(
  ( (Nil!60842) (Cons!60842 (h!67290 Regex!14889) (t!374159 List!60966)) )
))
(declare-datatypes ((Context!8546 0))(
  ( (Context!8547 (exprs!4773 List!60966)) )
))
(declare-fun setElem!33719 () Context!8546)

(declare-fun setRes!33719 () Bool)

(declare-fun inv!80469 (Context!8546) Bool)

(assert (=> setNonEmpty!33719 (= setRes!33719 (and tp!1472771 (inv!80469 setElem!33719) e!3277025))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8546))

(declare-fun setRest!33719 () (InoxSet Context!8546))

(assert (=> setNonEmpty!33719 (= z!1189 ((_ map or) (store ((as const (Array Context!8546 Bool)) false) setElem!33719 true) setRest!33719))))

(declare-fun b!5269047 () Bool)

(declare-datatypes ((Unit!153074 0))(
  ( (Unit!153075) )
))
(declare-fun e!3277028 () Unit!153074)

(declare-fun Unit!153076 () Unit!153074)

(assert (=> b!5269047 (= e!3277028 Unit!153076)))

(declare-datatypes ((List!60967 0))(
  ( (Nil!60843) (Cons!60843 (h!67291 C!30048) (t!374160 List!60967)) )
))
(declare-fun s!2326 () List!60967)

(declare-fun lt!2156385 () (InoxSet Context!8546))

(declare-fun lt!2156378 () (InoxSet Context!8546))

(declare-fun lt!2156373 () Unit!153074)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!126 ((InoxSet Context!8546) (InoxSet Context!8546) List!60967) Unit!153074)

(assert (=> b!5269047 (= lt!2156373 (lemmaZipperConcatMatchesSameAsBothZippers!126 lt!2156378 lt!2156385 (t!374160 s!2326)))))

(declare-fun res!2235382 () Bool)

(declare-fun matchZipper!1133 ((InoxSet Context!8546) List!60967) Bool)

(assert (=> b!5269047 (= res!2235382 (matchZipper!1133 lt!2156378 (t!374160 s!2326)))))

(declare-fun e!3277038 () Bool)

(assert (=> b!5269047 (=> res!2235382 e!3277038)))

(assert (=> b!5269047 (= (matchZipper!1133 ((_ map or) lt!2156378 lt!2156385) (t!374160 s!2326)) e!3277038)))

(declare-fun b!5269048 () Bool)

(declare-fun res!2235381 () Bool)

(declare-fun e!3277031 () Bool)

(assert (=> b!5269048 (=> res!2235381 e!3277031)))

(declare-datatypes ((List!60968 0))(
  ( (Nil!60844) (Cons!60844 (h!67292 Context!8546) (t!374161 List!60968)) )
))
(declare-fun zl!343 () List!60968)

(declare-fun isEmpty!32791 (List!60966) Bool)

(assert (=> b!5269048 (= res!2235381 (isEmpty!32791 (t!374159 (exprs!4773 (h!67292 zl!343)))))))

(declare-fun b!5269049 () Bool)

(declare-fun tp!1472772 () Bool)

(declare-fun e!3277034 () Bool)

(declare-fun e!3277024 () Bool)

(assert (=> b!5269049 (= e!3277034 (and (inv!80469 (h!67292 zl!343)) e!3277024 tp!1472772))))

(declare-fun b!5269050 () Bool)

(declare-fun res!2235379 () Bool)

(declare-fun e!3277032 () Bool)

(assert (=> b!5269050 (=> res!2235379 e!3277032)))

(declare-fun generalisedUnion!818 (List!60966) Regex!14889)

(declare-fun unfocusZipperList!331 (List!60968) List!60966)

(assert (=> b!5269050 (= res!2235379 (not (= r!7292 (generalisedUnion!818 (unfocusZipperList!331 zl!343)))))))

(declare-fun b!5269052 () Bool)

(declare-fun e!3277026 () Bool)

(assert (=> b!5269052 (= e!3277026 true)))

(declare-fun lt!2156384 () (InoxSet Context!8546))

(declare-fun lt!2156388 () Context!8546)

(declare-fun derivationStepZipperUp!261 (Context!8546 C!30048) (InoxSet Context!8546))

(assert (=> b!5269052 (= lt!2156384 (derivationStepZipperUp!261 lt!2156388 (h!67291 s!2326)))))

(declare-fun lt!2156369 () Context!8546)

(declare-fun lt!2156381 () (InoxSet Context!8546))

(declare-fun lambda!265785 () Int)

(declare-fun flatMap!616 ((InoxSet Context!8546) Int) (InoxSet Context!8546))

(assert (=> b!5269052 (= (flatMap!616 lt!2156381 lambda!265785) (derivationStepZipperUp!261 lt!2156369 (h!67291 s!2326)))))

(declare-fun lt!2156377 () Unit!153074)

(declare-fun lemmaFlatMapOnSingletonSet!148 ((InoxSet Context!8546) Context!8546 Int) Unit!153074)

(assert (=> b!5269052 (= lt!2156377 (lemmaFlatMapOnSingletonSet!148 lt!2156381 lt!2156369 lambda!265785))))

(declare-fun lt!2156375 () (InoxSet Context!8546))

(assert (=> b!5269052 (= lt!2156375 (derivationStepZipperUp!261 lt!2156369 (h!67291 s!2326)))))

(assert (=> b!5269052 (= lt!2156381 (store ((as const (Array Context!8546 Bool)) false) lt!2156369 true))))

(declare-fun lt!2156368 () List!60966)

(assert (=> b!5269052 (= lt!2156369 (Context!8547 (Cons!60842 (regOne!30290 (regOne!30290 r!7292)) lt!2156368)))))

(declare-fun b!5269053 () Bool)

(declare-fun e!3277030 () Bool)

(declare-fun lt!2156365 () (InoxSet Context!8546))

(assert (=> b!5269053 (= e!3277030 (matchZipper!1133 lt!2156365 (t!374160 s!2326)))))

(declare-fun b!5269054 () Bool)

(declare-fun e!3277033 () Bool)

(declare-fun tp_is_empty!39031 () Bool)

(declare-fun tp!1472777 () Bool)

(assert (=> b!5269054 (= e!3277033 (and tp_is_empty!39031 tp!1472777))))

(declare-fun b!5269055 () Bool)

(declare-fun res!2235366 () Bool)

(assert (=> b!5269055 (=> res!2235366 e!3277032)))

(declare-fun isEmpty!32792 (List!60968) Bool)

(assert (=> b!5269055 (= res!2235366 (not (isEmpty!32792 (t!374161 zl!343))))))

(assert (=> b!5269056 (= e!3277031 e!3277035)))

(declare-fun res!2235376 () Bool)

(assert (=> b!5269056 (=> res!2235376 e!3277035)))

(get-info :version)

(assert (=> b!5269056 (= res!2235376 (or (and ((_ is ElementMatch!14889) (regOne!30290 r!7292)) (= (c!912511 (regOne!30290 r!7292)) (h!67291 s!2326))) ((_ is Union!14889) (regOne!30290 r!7292)) (not ((_ is Concat!23734) (regOne!30290 r!7292)))))))

(declare-fun lt!2156372 () Unit!153074)

(assert (=> b!5269056 (= lt!2156372 e!3277028)))

(declare-fun c!912510 () Bool)

(assert (=> b!5269056 (= c!912510 (nullable!5058 (h!67290 (exprs!4773 (h!67292 zl!343)))))))

(assert (=> b!5269056 (= (flatMap!616 z!1189 lambda!265785) (derivationStepZipperUp!261 (h!67292 zl!343) (h!67291 s!2326)))))

(declare-fun lt!2156383 () Unit!153074)

(assert (=> b!5269056 (= lt!2156383 (lemmaFlatMapOnSingletonSet!148 z!1189 (h!67292 zl!343) lambda!265785))))

(declare-fun lt!2156379 () Context!8546)

(assert (=> b!5269056 (= lt!2156385 (derivationStepZipperUp!261 lt!2156379 (h!67291 s!2326)))))

(declare-fun derivationStepZipperDown!337 (Regex!14889 Context!8546 C!30048) (InoxSet Context!8546))

(assert (=> b!5269056 (= lt!2156378 (derivationStepZipperDown!337 (h!67290 (exprs!4773 (h!67292 zl!343))) lt!2156379 (h!67291 s!2326)))))

(assert (=> b!5269056 (= lt!2156379 (Context!8547 (t!374159 (exprs!4773 (h!67292 zl!343)))))))

(declare-fun lt!2156370 () (InoxSet Context!8546))

(assert (=> b!5269056 (= lt!2156370 (derivationStepZipperUp!261 (Context!8547 (Cons!60842 (h!67290 (exprs!4773 (h!67292 zl!343))) (t!374159 (exprs!4773 (h!67292 zl!343))))) (h!67291 s!2326)))))

(declare-fun b!5269057 () Bool)

(declare-fun res!2235373 () Bool)

(declare-fun e!3277036 () Bool)

(assert (=> b!5269057 (=> (not res!2235373) (not e!3277036))))

(declare-fun toList!8673 ((InoxSet Context!8546)) List!60968)

(assert (=> b!5269057 (= res!2235373 (= (toList!8673 z!1189) zl!343))))

(declare-fun b!5269058 () Bool)

(declare-fun res!2235368 () Bool)

(assert (=> b!5269058 (=> res!2235368 e!3277032)))

(assert (=> b!5269058 (= res!2235368 (not ((_ is Cons!60842) (exprs!4773 (h!67292 zl!343)))))))

(assert (=> b!5269059 (= e!3277032 e!3277031)))

(declare-fun res!2235375 () Bool)

(assert (=> b!5269059 (=> res!2235375 e!3277031)))

(declare-fun lt!2156380 () Bool)

(declare-fun lt!2156382 () Bool)

(assert (=> b!5269059 (= res!2235375 (or (not (= lt!2156382 lt!2156380)) ((_ is Nil!60843) s!2326)))))

(declare-fun Exists!2070 (Int) Bool)

(assert (=> b!5269059 (= (Exists!2070 lambda!265783) (Exists!2070 lambda!265784))))

(declare-fun lt!2156366 () Unit!153074)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!724 (Regex!14889 Regex!14889 List!60967) Unit!153074)

(assert (=> b!5269059 (= lt!2156366 (lemmaExistCutMatchRandMatchRSpecEquivalent!724 (regOne!30290 r!7292) (regTwo!30290 r!7292) s!2326))))

(assert (=> b!5269059 (= lt!2156380 (Exists!2070 lambda!265783))))

(declare-datatypes ((tuple2!64176 0))(
  ( (tuple2!64177 (_1!35391 List!60967) (_2!35391 List!60967)) )
))
(declare-datatypes ((Option!15000 0))(
  ( (None!14999) (Some!14999 (v!51028 tuple2!64176)) )
))
(declare-fun isDefined!11703 (Option!15000) Bool)

(declare-fun findConcatSeparation!1414 (Regex!14889 Regex!14889 List!60967 List!60967 List!60967) Option!15000)

(assert (=> b!5269059 (= lt!2156380 (isDefined!11703 (findConcatSeparation!1414 (regOne!30290 r!7292) (regTwo!30290 r!7292) Nil!60843 s!2326 s!2326)))))

(declare-fun lt!2156367 () Unit!153074)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1178 (Regex!14889 Regex!14889 List!60967) Unit!153074)

(assert (=> b!5269059 (= lt!2156367 (lemmaFindConcatSeparationEquivalentToExists!1178 (regOne!30290 r!7292) (regTwo!30290 r!7292) s!2326))))

(declare-fun b!5269060 () Bool)

(declare-fun e!3277027 () Bool)

(assert (=> b!5269060 (= e!3277027 e!3277026)))

(declare-fun res!2235383 () Bool)

(assert (=> b!5269060 (=> res!2235383 e!3277026)))

(declare-fun e!3277037 () Bool)

(assert (=> b!5269060 (= res!2235383 e!3277037)))

(declare-fun res!2235377 () Bool)

(assert (=> b!5269060 (=> (not res!2235377) (not e!3277037))))

(declare-fun lt!2156386 () Bool)

(assert (=> b!5269060 (= res!2235377 (not (= (matchZipper!1133 lt!2156378 (t!374160 s!2326)) lt!2156386)))))

(declare-fun lt!2156376 () (InoxSet Context!8546))

(assert (=> b!5269060 (= (matchZipper!1133 lt!2156376 (t!374160 s!2326)) e!3277030)))

(declare-fun res!2235369 () Bool)

(assert (=> b!5269060 (=> res!2235369 e!3277030)))

(assert (=> b!5269060 (= res!2235369 lt!2156386)))

(declare-fun lt!2156387 () (InoxSet Context!8546))

(assert (=> b!5269060 (= lt!2156386 (matchZipper!1133 lt!2156387 (t!374160 s!2326)))))

(declare-fun lt!2156374 () Unit!153074)

(assert (=> b!5269060 (= lt!2156374 (lemmaZipperConcatMatchesSameAsBothZippers!126 lt!2156387 lt!2156365 (t!374160 s!2326)))))

(declare-fun b!5269061 () Bool)

(declare-fun res!2235372 () Bool)

(assert (=> b!5269061 (=> res!2235372 e!3277032)))

(declare-fun generalisedConcat!558 (List!60966) Regex!14889)

(assert (=> b!5269061 (= res!2235372 (not (= r!7292 (generalisedConcat!558 (exprs!4773 (h!67292 zl!343))))))))

(declare-fun b!5269062 () Bool)

(assert (=> b!5269062 (= e!3277038 (matchZipper!1133 lt!2156385 (t!374160 s!2326)))))

(declare-fun b!5269063 () Bool)

(assert (=> b!5269063 (= e!3277037 (not (matchZipper!1133 lt!2156365 (t!374160 s!2326))))))

(declare-fun b!5269064 () Bool)

(declare-fun e!3277029 () Bool)

(assert (=> b!5269064 (= e!3277029 tp_is_empty!39031)))

(declare-fun res!2235370 () Bool)

(assert (=> start!556486 (=> (not res!2235370) (not e!3277036))))

(declare-fun validRegex!6625 (Regex!14889) Bool)

(assert (=> start!556486 (= res!2235370 (validRegex!6625 r!7292))))

(assert (=> start!556486 e!3277036))

(assert (=> start!556486 e!3277029))

(declare-fun condSetEmpty!33719 () Bool)

(assert (=> start!556486 (= condSetEmpty!33719 (= z!1189 ((as const (Array Context!8546 Bool)) false)))))

(assert (=> start!556486 setRes!33719))

(assert (=> start!556486 e!3277034))

(assert (=> start!556486 e!3277033))

(declare-fun b!5269051 () Bool)

(declare-fun tp!1472776 () Bool)

(assert (=> b!5269051 (= e!3277029 tp!1472776)))

(declare-fun b!5269065 () Bool)

(declare-fun tp!1472773 () Bool)

(declare-fun tp!1472769 () Bool)

(assert (=> b!5269065 (= e!3277029 (and tp!1472773 tp!1472769))))

(declare-fun b!5269066 () Bool)

(declare-fun res!2235367 () Bool)

(assert (=> b!5269066 (=> (not res!2235367) (not e!3277036))))

(declare-fun unfocusZipper!631 (List!60968) Regex!14889)

(assert (=> b!5269066 (= res!2235367 (= r!7292 (unfocusZipper!631 zl!343)))))

(declare-fun b!5269067 () Bool)

(declare-fun Unit!153077 () Unit!153074)

(assert (=> b!5269067 (= e!3277028 Unit!153077)))

(declare-fun b!5269068 () Bool)

(declare-fun tp!1472775 () Bool)

(declare-fun tp!1472774 () Bool)

(assert (=> b!5269068 (= e!3277029 (and tp!1472775 tp!1472774))))

(declare-fun b!5269069 () Bool)

(assert (=> b!5269069 (= e!3277036 (not e!3277032))))

(declare-fun res!2235380 () Bool)

(assert (=> b!5269069 (=> res!2235380 e!3277032)))

(assert (=> b!5269069 (= res!2235380 (not ((_ is Cons!60844) zl!343)))))

(declare-fun matchRSpec!1992 (Regex!14889 List!60967) Bool)

(assert (=> b!5269069 (= lt!2156382 (matchRSpec!1992 r!7292 s!2326))))

(declare-fun matchR!7074 (Regex!14889 List!60967) Bool)

(assert (=> b!5269069 (= lt!2156382 (matchR!7074 r!7292 s!2326))))

(declare-fun lt!2156371 () Unit!153074)

(declare-fun mainMatchTheorem!1992 (Regex!14889 List!60967) Unit!153074)

(assert (=> b!5269069 (= lt!2156371 (mainMatchTheorem!1992 r!7292 s!2326))))

(declare-fun b!5269070 () Bool)

(declare-fun res!2235378 () Bool)

(assert (=> b!5269070 (=> res!2235378 e!3277032)))

(assert (=> b!5269070 (= res!2235378 (or ((_ is EmptyExpr!14889) r!7292) ((_ is EmptyLang!14889) r!7292) ((_ is ElementMatch!14889) r!7292) ((_ is Union!14889) r!7292) (not ((_ is Concat!23734) r!7292))))))

(declare-fun b!5269071 () Bool)

(declare-fun tp!1472768 () Bool)

(assert (=> b!5269071 (= e!3277025 tp!1472768)))

(declare-fun b!5269072 () Bool)

(assert (=> b!5269072 (= e!3277035 e!3277027)))

(declare-fun res!2235371 () Bool)

(assert (=> b!5269072 (=> res!2235371 e!3277027)))

(assert (=> b!5269072 (= res!2235371 (not (= lt!2156378 lt!2156376)))))

(assert (=> b!5269072 (= lt!2156376 ((_ map or) lt!2156387 lt!2156365))))

(assert (=> b!5269072 (= lt!2156365 (derivationStepZipperDown!337 (regTwo!30290 (regOne!30290 r!7292)) lt!2156379 (h!67291 s!2326)))))

(assert (=> b!5269072 (= lt!2156387 (derivationStepZipperDown!337 (regOne!30290 (regOne!30290 r!7292)) lt!2156388 (h!67291 s!2326)))))

(assert (=> b!5269072 (= lt!2156388 (Context!8547 lt!2156368))))

(assert (=> b!5269072 (= lt!2156368 (Cons!60842 (regTwo!30290 (regOne!30290 r!7292)) (t!374159 (exprs!4773 (h!67292 zl!343)))))))

(declare-fun setIsEmpty!33719 () Bool)

(assert (=> setIsEmpty!33719 setRes!33719))

(declare-fun b!5269073 () Bool)

(declare-fun tp!1472770 () Bool)

(assert (=> b!5269073 (= e!3277024 tp!1472770)))

(assert (= (and start!556486 res!2235370) b!5269057))

(assert (= (and b!5269057 res!2235373) b!5269066))

(assert (= (and b!5269066 res!2235367) b!5269069))

(assert (= (and b!5269069 (not res!2235380)) b!5269055))

(assert (= (and b!5269055 (not res!2235366)) b!5269061))

(assert (= (and b!5269061 (not res!2235372)) b!5269058))

(assert (= (and b!5269058 (not res!2235368)) b!5269050))

(assert (= (and b!5269050 (not res!2235379)) b!5269070))

(assert (= (and b!5269070 (not res!2235378)) b!5269059))

(assert (= (and b!5269059 (not res!2235375)) b!5269048))

(assert (= (and b!5269048 (not res!2235381)) b!5269056))

(assert (= (and b!5269056 c!912510) b!5269047))

(assert (= (and b!5269056 (not c!912510)) b!5269067))

(assert (= (and b!5269047 (not res!2235382)) b!5269062))

(assert (= (and b!5269056 (not res!2235376)) b!5269046))

(assert (= (and b!5269046 (not res!2235374)) b!5269072))

(assert (= (and b!5269072 (not res!2235371)) b!5269060))

(assert (= (and b!5269060 (not res!2235369)) b!5269053))

(assert (= (and b!5269060 res!2235377) b!5269063))

(assert (= (and b!5269060 (not res!2235383)) b!5269052))

(assert (= (and start!556486 ((_ is ElementMatch!14889) r!7292)) b!5269064))

(assert (= (and start!556486 ((_ is Concat!23734) r!7292)) b!5269068))

(assert (= (and start!556486 ((_ is Star!14889) r!7292)) b!5269051))

(assert (= (and start!556486 ((_ is Union!14889) r!7292)) b!5269065))

(assert (= (and start!556486 condSetEmpty!33719) setIsEmpty!33719))

(assert (= (and start!556486 (not condSetEmpty!33719)) setNonEmpty!33719))

(assert (= setNonEmpty!33719 b!5269071))

(assert (= b!5269049 b!5269073))

(assert (= (and start!556486 ((_ is Cons!60844) zl!343)) b!5269049))

(assert (= (and start!556486 ((_ is Cons!60843) s!2326)) b!5269054))

(declare-fun m!6308560 () Bool)

(assert (=> b!5269072 m!6308560))

(declare-fun m!6308562 () Bool)

(assert (=> b!5269072 m!6308562))

(declare-fun m!6308564 () Bool)

(assert (=> b!5269052 m!6308564))

(declare-fun m!6308566 () Bool)

(assert (=> b!5269052 m!6308566))

(declare-fun m!6308568 () Bool)

(assert (=> b!5269052 m!6308568))

(declare-fun m!6308570 () Bool)

(assert (=> b!5269052 m!6308570))

(declare-fun m!6308572 () Bool)

(assert (=> b!5269052 m!6308572))

(declare-fun m!6308574 () Bool)

(assert (=> b!5269069 m!6308574))

(declare-fun m!6308576 () Bool)

(assert (=> b!5269069 m!6308576))

(declare-fun m!6308578 () Bool)

(assert (=> b!5269069 m!6308578))

(declare-fun m!6308580 () Bool)

(assert (=> b!5269049 m!6308580))

(declare-fun m!6308582 () Bool)

(assert (=> b!5269060 m!6308582))

(declare-fun m!6308584 () Bool)

(assert (=> b!5269060 m!6308584))

(declare-fun m!6308586 () Bool)

(assert (=> b!5269060 m!6308586))

(declare-fun m!6308588 () Bool)

(assert (=> b!5269060 m!6308588))

(declare-fun m!6308590 () Bool)

(assert (=> b!5269056 m!6308590))

(declare-fun m!6308592 () Bool)

(assert (=> b!5269056 m!6308592))

(declare-fun m!6308594 () Bool)

(assert (=> b!5269056 m!6308594))

(declare-fun m!6308596 () Bool)

(assert (=> b!5269056 m!6308596))

(declare-fun m!6308598 () Bool)

(assert (=> b!5269056 m!6308598))

(declare-fun m!6308600 () Bool)

(assert (=> b!5269056 m!6308600))

(declare-fun m!6308602 () Bool)

(assert (=> b!5269056 m!6308602))

(declare-fun m!6308604 () Bool)

(assert (=> setNonEmpty!33719 m!6308604))

(declare-fun m!6308606 () Bool)

(assert (=> b!5269053 m!6308606))

(declare-fun m!6308608 () Bool)

(assert (=> b!5269048 m!6308608))

(declare-fun m!6308610 () Bool)

(assert (=> b!5269057 m!6308610))

(declare-fun m!6308612 () Bool)

(assert (=> b!5269046 m!6308612))

(assert (=> b!5269063 m!6308606))

(declare-fun m!6308614 () Bool)

(assert (=> start!556486 m!6308614))

(declare-fun m!6308616 () Bool)

(assert (=> b!5269062 m!6308616))

(declare-fun m!6308618 () Bool)

(assert (=> b!5269050 m!6308618))

(assert (=> b!5269050 m!6308618))

(declare-fun m!6308620 () Bool)

(assert (=> b!5269050 m!6308620))

(declare-fun m!6308622 () Bool)

(assert (=> b!5269055 m!6308622))

(declare-fun m!6308624 () Bool)

(assert (=> b!5269066 m!6308624))

(declare-fun m!6308626 () Bool)

(assert (=> b!5269047 m!6308626))

(assert (=> b!5269047 m!6308582))

(declare-fun m!6308628 () Bool)

(assert (=> b!5269047 m!6308628))

(declare-fun m!6308630 () Bool)

(assert (=> b!5269059 m!6308630))

(declare-fun m!6308632 () Bool)

(assert (=> b!5269059 m!6308632))

(declare-fun m!6308634 () Bool)

(assert (=> b!5269059 m!6308634))

(declare-fun m!6308636 () Bool)

(assert (=> b!5269059 m!6308636))

(assert (=> b!5269059 m!6308632))

(declare-fun m!6308638 () Bool)

(assert (=> b!5269059 m!6308638))

(declare-fun m!6308640 () Bool)

(assert (=> b!5269059 m!6308640))

(assert (=> b!5269059 m!6308630))

(declare-fun m!6308642 () Bool)

(assert (=> b!5269061 m!6308642))

(check-sat (not b!5269066) (not b!5269071) (not b!5269047) (not b!5269063) (not b!5269065) (not b!5269052) (not b!5269062) (not setNonEmpty!33719) (not b!5269049) (not b!5269048) (not b!5269061) (not b!5269060) (not b!5269057) (not b!5269053) (not b!5269068) (not b!5269056) (not b!5269069) (not b!5269072) tp_is_empty!39031 (not start!556486) (not b!5269055) (not b!5269050) (not b!5269073) (not b!5269059) (not b!5269054) (not b!5269046) (not b!5269051))
(check-sat)
