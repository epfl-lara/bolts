; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577966 () Bool)

(assert start!577966)

(declare-fun b!5552209 () Bool)

(assert (=> b!5552209 true))

(assert (=> b!5552209 true))

(declare-fun lambda!297812 () Int)

(declare-fun lambda!297811 () Int)

(assert (=> b!5552209 (not (= lambda!297812 lambda!297811))))

(assert (=> b!5552209 true))

(assert (=> b!5552209 true))

(declare-fun b!5552210 () Bool)

(assert (=> b!5552210 true))

(declare-fun res!2360213 () Bool)

(declare-fun e!3429276 () Bool)

(assert (=> start!577966 (=> (not res!2360213) (not e!3429276))))

(declare-datatypes ((C!31340 0))(
  ( (C!31341 (val!25372 Int)) )
))
(declare-datatypes ((Regex!15535 0))(
  ( (ElementMatch!15535 (c!971841 C!31340)) (Concat!24380 (regOne!31582 Regex!15535) (regTwo!31582 Regex!15535)) (EmptyExpr!15535) (Star!15535 (reg!15864 Regex!15535)) (EmptyLang!15535) (Union!15535 (regOne!31583 Regex!15535) (regTwo!31583 Regex!15535)) )
))
(declare-fun r!7292 () Regex!15535)

(declare-fun validRegex!7271 (Regex!15535) Bool)

(assert (=> start!577966 (= res!2360213 (validRegex!7271 r!7292))))

(assert (=> start!577966 e!3429276))

(declare-fun e!3429277 () Bool)

(assert (=> start!577966 e!3429277))

(declare-fun condSetEmpty!36931 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62904 0))(
  ( (Nil!62780) (Cons!62780 (h!69228 Regex!15535) (t!376167 List!62904)) )
))
(declare-datatypes ((Context!9838 0))(
  ( (Context!9839 (exprs!5419 List!62904)) )
))
(declare-fun z!1189 () (InoxSet Context!9838))

(assert (=> start!577966 (= condSetEmpty!36931 (= z!1189 ((as const (Array Context!9838 Bool)) false)))))

(declare-fun setRes!36931 () Bool)

(assert (=> start!577966 setRes!36931))

(declare-fun e!3429283 () Bool)

(assert (=> start!577966 e!3429283))

(declare-fun e!3429278 () Bool)

(assert (=> start!577966 e!3429278))

(declare-fun b!5552191 () Bool)

(declare-fun tp!1531935 () Bool)

(assert (=> b!5552191 (= e!3429277 tp!1531935)))

(declare-fun b!5552192 () Bool)

(declare-fun res!2360217 () Bool)

(declare-fun e!3429275 () Bool)

(assert (=> b!5552192 (=> res!2360217 e!3429275)))

(declare-datatypes ((List!62905 0))(
  ( (Nil!62781) (Cons!62781 (h!69229 Context!9838) (t!376168 List!62905)) )
))
(declare-fun zl!343 () List!62905)

(declare-fun isEmpty!34572 (List!62905) Bool)

(assert (=> b!5552192 (= res!2360217 (not (isEmpty!34572 (t!376168 zl!343))))))

(declare-fun b!5552193 () Bool)

(declare-fun res!2360215 () Bool)

(assert (=> b!5552193 (=> res!2360215 e!3429275)))

(get-info :version)

(assert (=> b!5552193 (= res!2360215 (not ((_ is Cons!62780) (exprs!5419 (h!69229 zl!343)))))))

(declare-datatypes ((List!62906 0))(
  ( (Nil!62782) (Cons!62782 (h!69230 C!31340) (t!376169 List!62906)) )
))
(declare-fun s!2326 () List!62906)

(declare-fun lt!2250512 () (InoxSet Context!9838))

(declare-fun b!5552194 () Bool)

(declare-fun e!3429280 () Bool)

(declare-fun matchZipper!1677 ((InoxSet Context!9838) List!62906) Bool)

(assert (=> b!5552194 (= e!3429280 (= (matchZipper!1677 lt!2250512 (t!376169 s!2326)) (matchZipper!1677 z!1189 s!2326)))))

(declare-fun lt!2250515 () (InoxSet Context!9838))

(declare-fun e!3429279 () Bool)

(assert (=> b!5552194 (= (matchZipper!1677 lt!2250515 (t!376169 s!2326)) e!3429279)))

(declare-fun res!2360221 () Bool)

(assert (=> b!5552194 (=> res!2360221 e!3429279)))

(declare-fun lt!2250521 () (InoxSet Context!9838))

(assert (=> b!5552194 (= res!2360221 (matchZipper!1677 lt!2250521 (t!376169 s!2326)))))

(declare-fun lt!2250518 () (InoxSet Context!9838))

(declare-datatypes ((Unit!155530 0))(
  ( (Unit!155531) )
))
(declare-fun lt!2250514 () Unit!155530)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!566 ((InoxSet Context!9838) (InoxSet Context!9838) List!62906) Unit!155530)

(assert (=> b!5552194 (= lt!2250514 (lemmaZipperConcatMatchesSameAsBothZippers!566 lt!2250521 lt!2250518 (t!376169 s!2326)))))

(declare-fun b!5552195 () Bool)

(declare-fun res!2360216 () Bool)

(assert (=> b!5552195 (=> res!2360216 e!3429275)))

(declare-fun generalisedUnion!1398 (List!62904) Regex!15535)

(declare-fun unfocusZipperList!963 (List!62905) List!62904)

(assert (=> b!5552195 (= res!2360216 (not (= r!7292 (generalisedUnion!1398 (unfocusZipperList!963 zl!343)))))))

(declare-fun b!5552196 () Bool)

(declare-fun tp_is_empty!40323 () Bool)

(assert (=> b!5552196 (= e!3429277 tp_is_empty!40323)))

(declare-fun b!5552197 () Bool)

(declare-fun e!3429274 () Bool)

(declare-fun tp!1531937 () Bool)

(assert (=> b!5552197 (= e!3429274 tp!1531937)))

(declare-fun b!5552198 () Bool)

(declare-fun res!2360220 () Bool)

(assert (=> b!5552198 (=> res!2360220 e!3429275)))

(assert (=> b!5552198 (= res!2360220 (or ((_ is EmptyExpr!15535) r!7292) ((_ is EmptyLang!15535) r!7292) ((_ is ElementMatch!15535) r!7292) ((_ is Union!15535) r!7292) (not ((_ is Concat!24380) r!7292))))))

(declare-fun b!5552199 () Bool)

(declare-fun res!2360224 () Bool)

(assert (=> b!5552199 (=> res!2360224 e!3429275)))

(declare-fun generalisedConcat!1150 (List!62904) Regex!15535)

(assert (=> b!5552199 (= res!2360224 (not (= r!7292 (generalisedConcat!1150 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun b!5552200 () Bool)

(assert (=> b!5552200 (= e!3429276 (not e!3429275))))

(declare-fun res!2360211 () Bool)

(assert (=> b!5552200 (=> res!2360211 e!3429275)))

(assert (=> b!5552200 (= res!2360211 (not ((_ is Cons!62781) zl!343)))))

(declare-fun lt!2250511 () Bool)

(declare-fun matchRSpec!2638 (Regex!15535 List!62906) Bool)

(assert (=> b!5552200 (= lt!2250511 (matchRSpec!2638 r!7292 s!2326))))

(declare-fun matchR!7720 (Regex!15535 List!62906) Bool)

(assert (=> b!5552200 (= lt!2250511 (matchR!7720 r!7292 s!2326))))

(declare-fun lt!2250509 () Unit!155530)

(declare-fun mainMatchTheorem!2638 (Regex!15535 List!62906) Unit!155530)

(assert (=> b!5552200 (= lt!2250509 (mainMatchTheorem!2638 r!7292 s!2326))))

(declare-fun b!5552201 () Bool)

(declare-fun e!3429284 () Bool)

(assert (=> b!5552201 (= e!3429284 e!3429280)))

(declare-fun res!2360222 () Bool)

(assert (=> b!5552201 (=> res!2360222 e!3429280)))

(declare-fun lt!2250510 () (InoxSet Context!9838))

(assert (=> b!5552201 (= res!2360222 (or (not (= lt!2250510 lt!2250515)) (not (= lt!2250512 lt!2250510))))))

(assert (=> b!5552201 (= lt!2250515 ((_ map or) lt!2250521 lt!2250518))))

(declare-fun b!5552202 () Bool)

(assert (=> b!5552202 (= e!3429279 (matchZipper!1677 lt!2250518 (t!376169 s!2326)))))

(declare-fun b!5552203 () Bool)

(declare-fun res!2360212 () Bool)

(assert (=> b!5552203 (=> (not res!2360212) (not e!3429276))))

(declare-fun toList!9319 ((InoxSet Context!9838)) List!62905)

(assert (=> b!5552203 (= res!2360212 (= (toList!9319 z!1189) zl!343))))

(declare-fun b!5552204 () Bool)

(declare-fun tp!1531941 () Bool)

(declare-fun inv!82084 (Context!9838) Bool)

(assert (=> b!5552204 (= e!3429283 (and (inv!82084 (h!69229 zl!343)) e!3429274 tp!1531941))))

(declare-fun b!5552205 () Bool)

(declare-fun tp!1531936 () Bool)

(assert (=> b!5552205 (= e!3429278 (and tp_is_empty!40323 tp!1531936))))

(declare-fun b!5552206 () Bool)

(declare-fun tp!1531943 () Bool)

(declare-fun tp!1531940 () Bool)

(assert (=> b!5552206 (= e!3429277 (and tp!1531943 tp!1531940))))

(declare-fun b!5552207 () Bool)

(declare-fun tp!1531938 () Bool)

(declare-fun tp!1531939 () Bool)

(assert (=> b!5552207 (= e!3429277 (and tp!1531938 tp!1531939))))

(declare-fun tp!1531942 () Bool)

(declare-fun setElem!36931 () Context!9838)

(declare-fun e!3429281 () Bool)

(declare-fun setNonEmpty!36931 () Bool)

(assert (=> setNonEmpty!36931 (= setRes!36931 (and tp!1531942 (inv!82084 setElem!36931) e!3429281))))

(declare-fun setRest!36931 () (InoxSet Context!9838))

(assert (=> setNonEmpty!36931 (= z!1189 ((_ map or) (store ((as const (Array Context!9838 Bool)) false) setElem!36931 true) setRest!36931))))

(declare-fun b!5552208 () Bool)

(declare-fun tp!1531934 () Bool)

(assert (=> b!5552208 (= e!3429281 tp!1531934)))

(declare-fun setIsEmpty!36931 () Bool)

(assert (=> setIsEmpty!36931 setRes!36931))

(declare-fun e!3429282 () Bool)

(assert (=> b!5552209 (= e!3429275 e!3429282)))

(declare-fun res!2360219 () Bool)

(assert (=> b!5552209 (=> res!2360219 e!3429282)))

(declare-fun lt!2250517 () Bool)

(assert (=> b!5552209 (= res!2360219 (or (not (= lt!2250511 lt!2250517)) ((_ is Nil!62782) s!2326)))))

(declare-fun Exists!2635 (Int) Bool)

(assert (=> b!5552209 (= (Exists!2635 lambda!297811) (Exists!2635 lambda!297812))))

(declare-fun lt!2250516 () Unit!155530)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1264 (Regex!15535 Regex!15535 List!62906) Unit!155530)

(assert (=> b!5552209 (= lt!2250516 (lemmaExistCutMatchRandMatchRSpecEquivalent!1264 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326))))

(assert (=> b!5552209 (= lt!2250517 (Exists!2635 lambda!297811))))

(declare-datatypes ((tuple2!65264 0))(
  ( (tuple2!65265 (_1!35935 List!62906) (_2!35935 List!62906)) )
))
(declare-datatypes ((Option!15544 0))(
  ( (None!15543) (Some!15543 (v!51582 tuple2!65264)) )
))
(declare-fun isDefined!12247 (Option!15544) Bool)

(declare-fun findConcatSeparation!1958 (Regex!15535 Regex!15535 List!62906 List!62906 List!62906) Option!15544)

(assert (=> b!5552209 (= lt!2250517 (isDefined!12247 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326)))))

(declare-fun lt!2250519 () Unit!155530)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1722 (Regex!15535 Regex!15535 List!62906) Unit!155530)

(assert (=> b!5552209 (= lt!2250519 (lemmaFindConcatSeparationEquivalentToExists!1722 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326))))

(assert (=> b!5552210 (= e!3429282 e!3429284)))

(declare-fun res!2360214 () Bool)

(assert (=> b!5552210 (=> res!2360214 e!3429284)))

(declare-fun nullable!5567 (Regex!15535) Bool)

(assert (=> b!5552210 (= res!2360214 (not (nullable!5567 (h!69228 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun lambda!297813 () Int)

(declare-fun flatMap!1148 ((InoxSet Context!9838) Int) (InoxSet Context!9838))

(declare-fun derivationStepZipperUp!803 (Context!9838 C!31340) (InoxSet Context!9838))

(assert (=> b!5552210 (= (flatMap!1148 z!1189 lambda!297813) (derivationStepZipperUp!803 (h!69229 zl!343) (h!69230 s!2326)))))

(declare-fun lt!2250520 () Unit!155530)

(declare-fun lemmaFlatMapOnSingletonSet!680 ((InoxSet Context!9838) Context!9838 Int) Unit!155530)

(assert (=> b!5552210 (= lt!2250520 (lemmaFlatMapOnSingletonSet!680 z!1189 (h!69229 zl!343) lambda!297813))))

(declare-fun lt!2250513 () Context!9838)

(assert (=> b!5552210 (= lt!2250518 (derivationStepZipperUp!803 lt!2250513 (h!69230 s!2326)))))

(declare-fun derivationStepZipperDown!877 (Regex!15535 Context!9838 C!31340) (InoxSet Context!9838))

(assert (=> b!5552210 (= lt!2250521 (derivationStepZipperDown!877 (h!69228 (exprs!5419 (h!69229 zl!343))) lt!2250513 (h!69230 s!2326)))))

(assert (=> b!5552210 (= lt!2250513 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> b!5552210 (= lt!2250510 (derivationStepZipperUp!803 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))) (h!69230 s!2326)))))

(declare-fun derivationStepZipper!1638 ((InoxSet Context!9838) C!31340) (InoxSet Context!9838))

(assert (=> b!5552210 (= lt!2250512 (derivationStepZipper!1638 z!1189 (h!69230 s!2326)))))

(declare-fun b!5552211 () Bool)

(declare-fun res!2360223 () Bool)

(assert (=> b!5552211 (=> (not res!2360223) (not e!3429276))))

(declare-fun unfocusZipper!1277 (List!62905) Regex!15535)

(assert (=> b!5552211 (= res!2360223 (= r!7292 (unfocusZipper!1277 zl!343)))))

(declare-fun b!5552212 () Bool)

(declare-fun res!2360218 () Bool)

(assert (=> b!5552212 (=> res!2360218 e!3429282)))

(declare-fun isEmpty!34573 (List!62904) Bool)

(assert (=> b!5552212 (= res!2360218 (isEmpty!34573 (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(assert (= (and start!577966 res!2360213) b!5552203))

(assert (= (and b!5552203 res!2360212) b!5552211))

(assert (= (and b!5552211 res!2360223) b!5552200))

(assert (= (and b!5552200 (not res!2360211)) b!5552192))

(assert (= (and b!5552192 (not res!2360217)) b!5552199))

(assert (= (and b!5552199 (not res!2360224)) b!5552193))

(assert (= (and b!5552193 (not res!2360215)) b!5552195))

(assert (= (and b!5552195 (not res!2360216)) b!5552198))

(assert (= (and b!5552198 (not res!2360220)) b!5552209))

(assert (= (and b!5552209 (not res!2360219)) b!5552212))

(assert (= (and b!5552212 (not res!2360218)) b!5552210))

(assert (= (and b!5552210 (not res!2360214)) b!5552201))

(assert (= (and b!5552201 (not res!2360222)) b!5552194))

(assert (= (and b!5552194 (not res!2360221)) b!5552202))

(assert (= (and start!577966 ((_ is ElementMatch!15535) r!7292)) b!5552196))

(assert (= (and start!577966 ((_ is Concat!24380) r!7292)) b!5552206))

(assert (= (and start!577966 ((_ is Star!15535) r!7292)) b!5552191))

(assert (= (and start!577966 ((_ is Union!15535) r!7292)) b!5552207))

(assert (= (and start!577966 condSetEmpty!36931) setIsEmpty!36931))

(assert (= (and start!577966 (not condSetEmpty!36931)) setNonEmpty!36931))

(assert (= setNonEmpty!36931 b!5552208))

(assert (= b!5552204 b!5552197))

(assert (= (and start!577966 ((_ is Cons!62781) zl!343)) b!5552204))

(assert (= (and start!577966 ((_ is Cons!62782) s!2326)) b!5552205))

(declare-fun m!6545514 () Bool)

(assert (=> b!5552210 m!6545514))

(declare-fun m!6545516 () Bool)

(assert (=> b!5552210 m!6545516))

(declare-fun m!6545518 () Bool)

(assert (=> b!5552210 m!6545518))

(declare-fun m!6545520 () Bool)

(assert (=> b!5552210 m!6545520))

(declare-fun m!6545522 () Bool)

(assert (=> b!5552210 m!6545522))

(declare-fun m!6545524 () Bool)

(assert (=> b!5552210 m!6545524))

(declare-fun m!6545526 () Bool)

(assert (=> b!5552210 m!6545526))

(declare-fun m!6545528 () Bool)

(assert (=> b!5552210 m!6545528))

(declare-fun m!6545530 () Bool)

(assert (=> b!5552195 m!6545530))

(assert (=> b!5552195 m!6545530))

(declare-fun m!6545532 () Bool)

(assert (=> b!5552195 m!6545532))

(declare-fun m!6545534 () Bool)

(assert (=> b!5552200 m!6545534))

(declare-fun m!6545536 () Bool)

(assert (=> b!5552200 m!6545536))

(declare-fun m!6545538 () Bool)

(assert (=> b!5552200 m!6545538))

(declare-fun m!6545540 () Bool)

(assert (=> b!5552209 m!6545540))

(declare-fun m!6545542 () Bool)

(assert (=> b!5552209 m!6545542))

(declare-fun m!6545544 () Bool)

(assert (=> b!5552209 m!6545544))

(declare-fun m!6545546 () Bool)

(assert (=> b!5552209 m!6545546))

(declare-fun m!6545548 () Bool)

(assert (=> b!5552209 m!6545548))

(assert (=> b!5552209 m!6545540))

(assert (=> b!5552209 m!6545542))

(declare-fun m!6545550 () Bool)

(assert (=> b!5552209 m!6545550))

(declare-fun m!6545552 () Bool)

(assert (=> b!5552199 m!6545552))

(declare-fun m!6545554 () Bool)

(assert (=> b!5552192 m!6545554))

(declare-fun m!6545556 () Bool)

(assert (=> b!5552211 m!6545556))

(declare-fun m!6545558 () Bool)

(assert (=> setNonEmpty!36931 m!6545558))

(declare-fun m!6545560 () Bool)

(assert (=> b!5552203 m!6545560))

(declare-fun m!6545562 () Bool)

(assert (=> b!5552194 m!6545562))

(declare-fun m!6545564 () Bool)

(assert (=> b!5552194 m!6545564))

(declare-fun m!6545566 () Bool)

(assert (=> b!5552194 m!6545566))

(declare-fun m!6545568 () Bool)

(assert (=> b!5552194 m!6545568))

(declare-fun m!6545570 () Bool)

(assert (=> b!5552194 m!6545570))

(declare-fun m!6545572 () Bool)

(assert (=> b!5552212 m!6545572))

(declare-fun m!6545574 () Bool)

(assert (=> b!5552202 m!6545574))

(declare-fun m!6545576 () Bool)

(assert (=> start!577966 m!6545576))

(declare-fun m!6545578 () Bool)

(assert (=> b!5552204 m!6545578))

(check-sat (not b!5552206) (not setNonEmpty!36931) (not b!5552191) (not b!5552204) (not b!5552197) (not b!5552200) (not b!5552208) (not b!5552199) (not b!5552210) (not start!577966) (not b!5552212) (not b!5552205) (not b!5552211) (not b!5552209) (not b!5552207) tp_is_empty!40323 (not b!5552195) (not b!5552203) (not b!5552202) (not b!5552194) (not b!5552192))
(check-sat)
(get-model)

(declare-fun bm!413826 () Bool)

(declare-fun call!413835 () (InoxSet Context!9838))

(declare-fun call!413831 () (InoxSet Context!9838))

(assert (=> bm!413826 (= call!413835 call!413831)))

(declare-fun b!5552343 () Bool)

(declare-fun e!3429360 () (InoxSet Context!9838))

(declare-fun call!413836 () (InoxSet Context!9838))

(assert (=> b!5552343 (= e!3429360 call!413836)))

(declare-fun c!971881 () Bool)

(declare-fun call!413834 () List!62904)

(declare-fun bm!413827 () Bool)

(declare-fun c!971880 () Bool)

(declare-fun $colon$colon!1605 (List!62904 Regex!15535) List!62904)

(assert (=> bm!413827 (= call!413834 ($colon$colon!1605 (exprs!5419 lt!2250513) (ite (or c!971881 c!971880) (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (h!69228 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun c!971882 () Bool)

(declare-fun call!413833 () List!62904)

(declare-fun bm!413828 () Bool)

(assert (=> bm!413828 (= call!413831 (derivationStepZipperDown!877 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343))))))) (ite (or c!971882 c!971881) lt!2250513 (Context!9839 call!413833)) (h!69230 s!2326)))))

(declare-fun bm!413830 () Bool)

(assert (=> bm!413830 (= call!413836 call!413835)))

(declare-fun bm!413831 () Bool)

(declare-fun call!413832 () (InoxSet Context!9838))

(assert (=> bm!413831 (= call!413832 (derivationStepZipperDown!877 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))) (ite c!971882 lt!2250513 (Context!9839 call!413834)) (h!69230 s!2326)))))

(declare-fun b!5552344 () Bool)

(declare-fun e!3429361 () (InoxSet Context!9838))

(declare-fun e!3429364 () (InoxSet Context!9838))

(assert (=> b!5552344 (= e!3429361 e!3429364)))

(assert (=> b!5552344 (= c!971882 ((_ is Union!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5552345 () Bool)

(assert (=> b!5552345 (= e!3429361 (store ((as const (Array Context!9838 Bool)) false) lt!2250513 true))))

(declare-fun b!5552346 () Bool)

(assert (=> b!5552346 (= e!3429360 ((as const (Array Context!9838 Bool)) false))))

(declare-fun b!5552347 () Bool)

(declare-fun e!3429362 () Bool)

(assert (=> b!5552347 (= e!3429362 (nullable!5567 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun b!5552348 () Bool)

(assert (=> b!5552348 (= c!971881 e!3429362)))

(declare-fun res!2360275 () Bool)

(assert (=> b!5552348 (=> (not res!2360275) (not e!3429362))))

(assert (=> b!5552348 (= res!2360275 ((_ is Concat!24380) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun e!3429365 () (InoxSet Context!9838))

(assert (=> b!5552348 (= e!3429364 e!3429365)))

(declare-fun b!5552349 () Bool)

(assert (=> b!5552349 (= e!3429365 ((_ map or) call!413832 call!413835))))

(declare-fun b!5552350 () Bool)

(declare-fun e!3429363 () (InoxSet Context!9838))

(assert (=> b!5552350 (= e!3429363 call!413836)))

(declare-fun b!5552351 () Bool)

(assert (=> b!5552351 (= e!3429364 ((_ map or) call!413832 call!413831))))

(declare-fun d!1757765 () Bool)

(declare-fun c!971883 () Bool)

(assert (=> d!1757765 (= c!971883 (and ((_ is ElementMatch!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))) (= (c!971841 (h!69228 (exprs!5419 (h!69229 zl!343)))) (h!69230 s!2326))))))

(assert (=> d!1757765 (= (derivationStepZipperDown!877 (h!69228 (exprs!5419 (h!69229 zl!343))) lt!2250513 (h!69230 s!2326)) e!3429361)))

(declare-fun bm!413829 () Bool)

(assert (=> bm!413829 (= call!413833 call!413834)))

(declare-fun b!5552352 () Bool)

(assert (=> b!5552352 (= e!3429365 e!3429363)))

(assert (=> b!5552352 (= c!971880 ((_ is Concat!24380) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5552353 () Bool)

(declare-fun c!971879 () Bool)

(assert (=> b!5552353 (= c!971879 ((_ is Star!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> b!5552353 (= e!3429363 e!3429360)))

(assert (= (and d!1757765 c!971883) b!5552345))

(assert (= (and d!1757765 (not c!971883)) b!5552344))

(assert (= (and b!5552344 c!971882) b!5552351))

(assert (= (and b!5552344 (not c!971882)) b!5552348))

(assert (= (and b!5552348 res!2360275) b!5552347))

(assert (= (and b!5552348 c!971881) b!5552349))

(assert (= (and b!5552348 (not c!971881)) b!5552352))

(assert (= (and b!5552352 c!971880) b!5552350))

(assert (= (and b!5552352 (not c!971880)) b!5552353))

(assert (= (and b!5552353 c!971879) b!5552343))

(assert (= (and b!5552353 (not c!971879)) b!5552346))

(assert (= (or b!5552350 b!5552343) bm!413829))

(assert (= (or b!5552350 b!5552343) bm!413830))

(assert (= (or b!5552349 bm!413829) bm!413827))

(assert (= (or b!5552349 bm!413830) bm!413826))

(assert (= (or b!5552351 bm!413826) bm!413828))

(assert (= (or b!5552351 b!5552349) bm!413831))

(declare-fun m!6545652 () Bool)

(assert (=> b!5552347 m!6545652))

(declare-fun m!6545654 () Bool)

(assert (=> bm!413831 m!6545654))

(declare-fun m!6545656 () Bool)

(assert (=> bm!413827 m!6545656))

(declare-fun m!6545658 () Bool)

(assert (=> bm!413828 m!6545658))

(declare-fun m!6545660 () Bool)

(assert (=> b!5552345 m!6545660))

(assert (=> b!5552210 d!1757765))

(declare-fun b!5552373 () Bool)

(declare-fun e!3429378 () (InoxSet Context!9838))

(declare-fun e!3429379 () (InoxSet Context!9838))

(assert (=> b!5552373 (= e!3429378 e!3429379)))

(declare-fun c!971892 () Bool)

(assert (=> b!5552373 (= c!971892 ((_ is Cons!62780) (exprs!5419 (h!69229 zl!343))))))

(declare-fun b!5552374 () Bool)

(declare-fun call!413839 () (InoxSet Context!9838))

(assert (=> b!5552374 (= e!3429378 ((_ map or) call!413839 (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))) (h!69230 s!2326))))))

(declare-fun d!1757773 () Bool)

(declare-fun c!971891 () Bool)

(declare-fun e!3429380 () Bool)

(assert (=> d!1757773 (= c!971891 e!3429380)))

(declare-fun res!2360281 () Bool)

(assert (=> d!1757773 (=> (not res!2360281) (not e!3429380))))

(assert (=> d!1757773 (= res!2360281 ((_ is Cons!62780) (exprs!5419 (h!69229 zl!343))))))

(assert (=> d!1757773 (= (derivationStepZipperUp!803 (h!69229 zl!343) (h!69230 s!2326)) e!3429378)))

(declare-fun b!5552375 () Bool)

(assert (=> b!5552375 (= e!3429379 call!413839)))

(declare-fun b!5552376 () Bool)

(assert (=> b!5552376 (= e!3429379 ((as const (Array Context!9838 Bool)) false))))

(declare-fun bm!413834 () Bool)

(assert (=> bm!413834 (= call!413839 (derivationStepZipperDown!877 (h!69228 (exprs!5419 (h!69229 zl!343))) (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))) (h!69230 s!2326)))))

(declare-fun b!5552377 () Bool)

(assert (=> b!5552377 (= e!3429380 (nullable!5567 (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(assert (= (and d!1757773 res!2360281) b!5552377))

(assert (= (and d!1757773 c!971891) b!5552374))

(assert (= (and d!1757773 (not c!971891)) b!5552373))

(assert (= (and b!5552373 c!971892) b!5552375))

(assert (= (and b!5552373 (not c!971892)) b!5552376))

(assert (= (or b!5552374 b!5552375) bm!413834))

(declare-fun m!6545682 () Bool)

(assert (=> b!5552374 m!6545682))

(declare-fun m!6545684 () Bool)

(assert (=> bm!413834 m!6545684))

(assert (=> b!5552377 m!6545522))

(assert (=> b!5552210 d!1757773))

(declare-fun d!1757781 () Bool)

(declare-fun dynLambda!24553 (Int Context!9838) (InoxSet Context!9838))

(assert (=> d!1757781 (= (flatMap!1148 z!1189 lambda!297813) (dynLambda!24553 lambda!297813 (h!69229 zl!343)))))

(declare-fun lt!2250551 () Unit!155530)

(declare-fun choose!42106 ((InoxSet Context!9838) Context!9838 Int) Unit!155530)

(assert (=> d!1757781 (= lt!2250551 (choose!42106 z!1189 (h!69229 zl!343) lambda!297813))))

(assert (=> d!1757781 (= z!1189 (store ((as const (Array Context!9838 Bool)) false) (h!69229 zl!343) true))))

(assert (=> d!1757781 (= (lemmaFlatMapOnSingletonSet!680 z!1189 (h!69229 zl!343) lambda!297813) lt!2250551)))

(declare-fun b_lambda!210907 () Bool)

(assert (=> (not b_lambda!210907) (not d!1757781)))

(declare-fun bs!1286226 () Bool)

(assert (= bs!1286226 d!1757781))

(assert (=> bs!1286226 m!6545518))

(declare-fun m!6545694 () Bool)

(assert (=> bs!1286226 m!6545694))

(declare-fun m!6545698 () Bool)

(assert (=> bs!1286226 m!6545698))

(declare-fun m!6545702 () Bool)

(assert (=> bs!1286226 m!6545702))

(assert (=> b!5552210 d!1757781))

(declare-fun bs!1286227 () Bool)

(declare-fun d!1757789 () Bool)

(assert (= bs!1286227 (and d!1757789 b!5552210)))

(declare-fun lambda!297835 () Int)

(assert (=> bs!1286227 (= lambda!297835 lambda!297813)))

(assert (=> d!1757789 true))

(assert (=> d!1757789 (= (derivationStepZipper!1638 z!1189 (h!69230 s!2326)) (flatMap!1148 z!1189 lambda!297835))))

(declare-fun bs!1286228 () Bool)

(assert (= bs!1286228 d!1757789))

(declare-fun m!6545724 () Bool)

(assert (=> bs!1286228 m!6545724))

(assert (=> b!5552210 d!1757789))

(declare-fun d!1757797 () Bool)

(declare-fun nullableFct!1684 (Regex!15535) Bool)

(assert (=> d!1757797 (= (nullable!5567 (h!69228 (exprs!5419 (h!69229 zl!343)))) (nullableFct!1684 (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun bs!1286229 () Bool)

(assert (= bs!1286229 d!1757797))

(declare-fun m!6545726 () Bool)

(assert (=> bs!1286229 m!6545726))

(assert (=> b!5552210 d!1757797))

(declare-fun b!5552388 () Bool)

(declare-fun e!3429385 () (InoxSet Context!9838))

(declare-fun e!3429386 () (InoxSet Context!9838))

(assert (=> b!5552388 (= e!3429385 e!3429386)))

(declare-fun c!971900 () Bool)

(assert (=> b!5552388 (= c!971900 ((_ is Cons!62780) (exprs!5419 lt!2250513)))))

(declare-fun b!5552389 () Bool)

(declare-fun call!413840 () (InoxSet Context!9838))

(assert (=> b!5552389 (= e!3429385 ((_ map or) call!413840 (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 lt!2250513))) (h!69230 s!2326))))))

(declare-fun d!1757799 () Bool)

(declare-fun c!971899 () Bool)

(declare-fun e!3429387 () Bool)

(assert (=> d!1757799 (= c!971899 e!3429387)))

(declare-fun res!2360282 () Bool)

(assert (=> d!1757799 (=> (not res!2360282) (not e!3429387))))

(assert (=> d!1757799 (= res!2360282 ((_ is Cons!62780) (exprs!5419 lt!2250513)))))

(assert (=> d!1757799 (= (derivationStepZipperUp!803 lt!2250513 (h!69230 s!2326)) e!3429385)))

(declare-fun b!5552390 () Bool)

(assert (=> b!5552390 (= e!3429386 call!413840)))

(declare-fun b!5552391 () Bool)

(assert (=> b!5552391 (= e!3429386 ((as const (Array Context!9838 Bool)) false))))

(declare-fun bm!413835 () Bool)

(assert (=> bm!413835 (= call!413840 (derivationStepZipperDown!877 (h!69228 (exprs!5419 lt!2250513)) (Context!9839 (t!376167 (exprs!5419 lt!2250513))) (h!69230 s!2326)))))

(declare-fun b!5552392 () Bool)

(assert (=> b!5552392 (= e!3429387 (nullable!5567 (h!69228 (exprs!5419 lt!2250513))))))

(assert (= (and d!1757799 res!2360282) b!5552392))

(assert (= (and d!1757799 c!971899) b!5552389))

(assert (= (and d!1757799 (not c!971899)) b!5552388))

(assert (= (and b!5552388 c!971900) b!5552390))

(assert (= (and b!5552388 (not c!971900)) b!5552391))

(assert (= (or b!5552389 b!5552390) bm!413835))

(declare-fun m!6545728 () Bool)

(assert (=> b!5552389 m!6545728))

(declare-fun m!6545730 () Bool)

(assert (=> bm!413835 m!6545730))

(declare-fun m!6545732 () Bool)

(assert (=> b!5552392 m!6545732))

(assert (=> b!5552210 d!1757799))

(declare-fun d!1757801 () Bool)

(declare-fun choose!42107 ((InoxSet Context!9838) Int) (InoxSet Context!9838))

(assert (=> d!1757801 (= (flatMap!1148 z!1189 lambda!297813) (choose!42107 z!1189 lambda!297813))))

(declare-fun bs!1286230 () Bool)

(assert (= bs!1286230 d!1757801))

(declare-fun m!6545734 () Bool)

(assert (=> bs!1286230 m!6545734))

(assert (=> b!5552210 d!1757801))

(declare-fun b!5552395 () Bool)

(declare-fun e!3429390 () (InoxSet Context!9838))

(declare-fun e!3429391 () (InoxSet Context!9838))

(assert (=> b!5552395 (= e!3429390 e!3429391)))

(declare-fun c!971902 () Bool)

(assert (=> b!5552395 (= c!971902 ((_ is Cons!62780) (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))

(declare-fun b!5552396 () Bool)

(declare-fun call!413841 () (InoxSet Context!9838))

(assert (=> b!5552396 (= e!3429390 ((_ map or) call!413841 (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (h!69230 s!2326))))))

(declare-fun d!1757803 () Bool)

(declare-fun c!971901 () Bool)

(declare-fun e!3429392 () Bool)

(assert (=> d!1757803 (= c!971901 e!3429392)))

(declare-fun res!2360285 () Bool)

(assert (=> d!1757803 (=> (not res!2360285) (not e!3429392))))

(assert (=> d!1757803 (= res!2360285 ((_ is Cons!62780) (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))

(assert (=> d!1757803 (= (derivationStepZipperUp!803 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))) (h!69230 s!2326)) e!3429390)))

(declare-fun b!5552397 () Bool)

(assert (=> b!5552397 (= e!3429391 call!413841)))

(declare-fun b!5552398 () Bool)

(assert (=> b!5552398 (= e!3429391 ((as const (Array Context!9838 Bool)) false))))

(declare-fun bm!413836 () Bool)

(assert (=> bm!413836 (= call!413841 (derivationStepZipperDown!877 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))) (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (h!69230 s!2326)))))

(declare-fun b!5552399 () Bool)

(assert (=> b!5552399 (= e!3429392 (nullable!5567 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))

(assert (= (and d!1757803 res!2360285) b!5552399))

(assert (= (and d!1757803 c!971901) b!5552396))

(assert (= (and d!1757803 (not c!971901)) b!5552395))

(assert (= (and b!5552395 c!971902) b!5552397))

(assert (= (and b!5552395 (not c!971902)) b!5552398))

(assert (= (or b!5552396 b!5552397) bm!413836))

(declare-fun m!6545736 () Bool)

(assert (=> b!5552396 m!6545736))

(declare-fun m!6545738 () Bool)

(assert (=> bm!413836 m!6545738))

(declare-fun m!6545740 () Bool)

(assert (=> b!5552399 m!6545740))

(assert (=> b!5552210 d!1757803))

(declare-fun d!1757805 () Bool)

(declare-fun lt!2250557 () Regex!15535)

(assert (=> d!1757805 (validRegex!7271 lt!2250557)))

(assert (=> d!1757805 (= lt!2250557 (generalisedUnion!1398 (unfocusZipperList!963 zl!343)))))

(assert (=> d!1757805 (= (unfocusZipper!1277 zl!343) lt!2250557)))

(declare-fun bs!1286231 () Bool)

(assert (= bs!1286231 d!1757805))

(declare-fun m!6545746 () Bool)

(assert (=> bs!1286231 m!6545746))

(assert (=> bs!1286231 m!6545530))

(assert (=> bs!1286231 m!6545530))

(assert (=> bs!1286231 m!6545532))

(assert (=> b!5552211 d!1757805))

(declare-fun d!1757809 () Bool)

(declare-fun c!971915 () Bool)

(declare-fun isEmpty!34576 (List!62906) Bool)

(assert (=> d!1757809 (= c!971915 (isEmpty!34576 (t!376169 s!2326)))))

(declare-fun e!3429408 () Bool)

(assert (=> d!1757809 (= (matchZipper!1677 lt!2250518 (t!376169 s!2326)) e!3429408)))

(declare-fun b!5552427 () Bool)

(declare-fun nullableZipper!1543 ((InoxSet Context!9838)) Bool)

(assert (=> b!5552427 (= e!3429408 (nullableZipper!1543 lt!2250518))))

(declare-fun b!5552428 () Bool)

(declare-fun head!11857 (List!62906) C!31340)

(declare-fun tail!10952 (List!62906) List!62906)

(assert (=> b!5552428 (= e!3429408 (matchZipper!1677 (derivationStepZipper!1638 lt!2250518 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))))))

(assert (= (and d!1757809 c!971915) b!5552427))

(assert (= (and d!1757809 (not c!971915)) b!5552428))

(declare-fun m!6545748 () Bool)

(assert (=> d!1757809 m!6545748))

(declare-fun m!6545750 () Bool)

(assert (=> b!5552427 m!6545750))

(declare-fun m!6545752 () Bool)

(assert (=> b!5552428 m!6545752))

(assert (=> b!5552428 m!6545752))

(declare-fun m!6545754 () Bool)

(assert (=> b!5552428 m!6545754))

(declare-fun m!6545756 () Bool)

(assert (=> b!5552428 m!6545756))

(assert (=> b!5552428 m!6545754))

(assert (=> b!5552428 m!6545756))

(declare-fun m!6545758 () Bool)

(assert (=> b!5552428 m!6545758))

(assert (=> b!5552202 d!1757809))

(declare-fun b!5552478 () Bool)

(declare-fun e!3429440 () Bool)

(declare-fun lt!2250566 () Option!15544)

(declare-fun ++!13774 (List!62906 List!62906) List!62906)

(declare-fun get!21609 (Option!15544) tuple2!65264)

(assert (=> b!5552478 (= e!3429440 (= (++!13774 (_1!35935 (get!21609 lt!2250566)) (_2!35935 (get!21609 lt!2250566))) s!2326))))

(declare-fun b!5552479 () Bool)

(declare-fun e!3429441 () Bool)

(assert (=> b!5552479 (= e!3429441 (matchR!7720 (regTwo!31582 r!7292) s!2326))))

(declare-fun d!1757811 () Bool)

(declare-fun e!3429437 () Bool)

(assert (=> d!1757811 e!3429437))

(declare-fun res!2360308 () Bool)

(assert (=> d!1757811 (=> res!2360308 e!3429437)))

(assert (=> d!1757811 (= res!2360308 e!3429440)))

(declare-fun res!2360305 () Bool)

(assert (=> d!1757811 (=> (not res!2360305) (not e!3429440))))

(assert (=> d!1757811 (= res!2360305 (isDefined!12247 lt!2250566))))

(declare-fun e!3429439 () Option!15544)

(assert (=> d!1757811 (= lt!2250566 e!3429439)))

(declare-fun c!971935 () Bool)

(assert (=> d!1757811 (= c!971935 e!3429441)))

(declare-fun res!2360304 () Bool)

(assert (=> d!1757811 (=> (not res!2360304) (not e!3429441))))

(assert (=> d!1757811 (= res!2360304 (matchR!7720 (regOne!31582 r!7292) Nil!62782))))

(assert (=> d!1757811 (validRegex!7271 (regOne!31582 r!7292))))

(assert (=> d!1757811 (= (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326) lt!2250566)))

(declare-fun b!5552480 () Bool)

(declare-fun res!2360307 () Bool)

(assert (=> b!5552480 (=> (not res!2360307) (not e!3429440))))

(assert (=> b!5552480 (= res!2360307 (matchR!7720 (regTwo!31582 r!7292) (_2!35935 (get!21609 lt!2250566))))))

(declare-fun b!5552481 () Bool)

(declare-fun e!3429438 () Option!15544)

(assert (=> b!5552481 (= e!3429439 e!3429438)))

(declare-fun c!971936 () Bool)

(assert (=> b!5552481 (= c!971936 ((_ is Nil!62782) s!2326))))

(declare-fun b!5552482 () Bool)

(declare-fun res!2360306 () Bool)

(assert (=> b!5552482 (=> (not res!2360306) (not e!3429440))))

(assert (=> b!5552482 (= res!2360306 (matchR!7720 (regOne!31582 r!7292) (_1!35935 (get!21609 lt!2250566))))))

(declare-fun b!5552483 () Bool)

(assert (=> b!5552483 (= e!3429439 (Some!15543 (tuple2!65265 Nil!62782 s!2326)))))

(declare-fun b!5552484 () Bool)

(assert (=> b!5552484 (= e!3429438 None!15543)))

(declare-fun b!5552485 () Bool)

(declare-fun lt!2250565 () Unit!155530)

(declare-fun lt!2250564 () Unit!155530)

(assert (=> b!5552485 (= lt!2250565 lt!2250564)))

(assert (=> b!5552485 (= (++!13774 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (t!376169 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1943 (List!62906 C!31340 List!62906 List!62906) Unit!155530)

(assert (=> b!5552485 (= lt!2250564 (lemmaMoveElementToOtherListKeepsConcatEq!1943 Nil!62782 (h!69230 s!2326) (t!376169 s!2326) s!2326))))

(assert (=> b!5552485 (= e!3429438 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (t!376169 s!2326) s!2326))))

(declare-fun b!5552486 () Bool)

(assert (=> b!5552486 (= e!3429437 (not (isDefined!12247 lt!2250566)))))

(assert (= (and d!1757811 res!2360304) b!5552479))

(assert (= (and d!1757811 c!971935) b!5552483))

(assert (= (and d!1757811 (not c!971935)) b!5552481))

(assert (= (and b!5552481 c!971936) b!5552484))

(assert (= (and b!5552481 (not c!971936)) b!5552485))

(assert (= (and d!1757811 res!2360305) b!5552482))

(assert (= (and b!5552482 res!2360306) b!5552480))

(assert (= (and b!5552480 res!2360307) b!5552478))

(assert (= (and d!1757811 (not res!2360308)) b!5552486))

(declare-fun m!6545788 () Bool)

(assert (=> d!1757811 m!6545788))

(declare-fun m!6545790 () Bool)

(assert (=> d!1757811 m!6545790))

(declare-fun m!6545792 () Bool)

(assert (=> d!1757811 m!6545792))

(declare-fun m!6545794 () Bool)

(assert (=> b!5552479 m!6545794))

(assert (=> b!5552486 m!6545788))

(declare-fun m!6545796 () Bool)

(assert (=> b!5552480 m!6545796))

(declare-fun m!6545798 () Bool)

(assert (=> b!5552480 m!6545798))

(assert (=> b!5552478 m!6545796))

(declare-fun m!6545800 () Bool)

(assert (=> b!5552478 m!6545800))

(declare-fun m!6545802 () Bool)

(assert (=> b!5552485 m!6545802))

(assert (=> b!5552485 m!6545802))

(declare-fun m!6545804 () Bool)

(assert (=> b!5552485 m!6545804))

(declare-fun m!6545808 () Bool)

(assert (=> b!5552485 m!6545808))

(assert (=> b!5552485 m!6545802))

(declare-fun m!6545812 () Bool)

(assert (=> b!5552485 m!6545812))

(assert (=> b!5552482 m!6545796))

(declare-fun m!6545814 () Bool)

(assert (=> b!5552482 m!6545814))

(assert (=> b!5552209 d!1757811))

(declare-fun d!1757827 () Bool)

(declare-fun choose!42109 (Int) Bool)

(assert (=> d!1757827 (= (Exists!2635 lambda!297811) (choose!42109 lambda!297811))))

(declare-fun bs!1286236 () Bool)

(assert (= bs!1286236 d!1757827))

(declare-fun m!6545816 () Bool)

(assert (=> bs!1286236 m!6545816))

(assert (=> b!5552209 d!1757827))

(declare-fun d!1757829 () Bool)

(assert (=> d!1757829 (= (Exists!2635 lambda!297812) (choose!42109 lambda!297812))))

(declare-fun bs!1286237 () Bool)

(assert (= bs!1286237 d!1757829))

(declare-fun m!6545818 () Bool)

(assert (=> bs!1286237 m!6545818))

(assert (=> b!5552209 d!1757829))

(declare-fun bs!1286239 () Bool)

(declare-fun d!1757831 () Bool)

(assert (= bs!1286239 (and d!1757831 b!5552209)))

(declare-fun lambda!297841 () Int)

(assert (=> bs!1286239 (= lambda!297841 lambda!297811)))

(assert (=> bs!1286239 (not (= lambda!297841 lambda!297812))))

(assert (=> d!1757831 true))

(assert (=> d!1757831 true))

(assert (=> d!1757831 true))

(assert (=> d!1757831 (= (isDefined!12247 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326)) (Exists!2635 lambda!297841))))

(declare-fun lt!2250572 () Unit!155530)

(declare-fun choose!42111 (Regex!15535 Regex!15535 List!62906) Unit!155530)

(assert (=> d!1757831 (= lt!2250572 (choose!42111 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326))))

(assert (=> d!1757831 (validRegex!7271 (regOne!31582 r!7292))))

(assert (=> d!1757831 (= (lemmaFindConcatSeparationEquivalentToExists!1722 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326) lt!2250572)))

(declare-fun bs!1286240 () Bool)

(assert (= bs!1286240 d!1757831))

(declare-fun m!6545826 () Bool)

(assert (=> bs!1286240 m!6545826))

(declare-fun m!6545828 () Bool)

(assert (=> bs!1286240 m!6545828))

(assert (=> bs!1286240 m!6545792))

(assert (=> bs!1286240 m!6545542))

(assert (=> bs!1286240 m!6545542))

(assert (=> bs!1286240 m!6545544))

(assert (=> b!5552209 d!1757831))

(declare-fun bs!1286248 () Bool)

(declare-fun d!1757835 () Bool)

(assert (= bs!1286248 (and d!1757835 b!5552209)))

(declare-fun lambda!297852 () Int)

(assert (=> bs!1286248 (= lambda!297852 lambda!297811)))

(assert (=> bs!1286248 (not (= lambda!297852 lambda!297812))))

(declare-fun bs!1286249 () Bool)

(assert (= bs!1286249 (and d!1757835 d!1757831)))

(assert (=> bs!1286249 (= lambda!297852 lambda!297841)))

(assert (=> d!1757835 true))

(assert (=> d!1757835 true))

(assert (=> d!1757835 true))

(declare-fun lambda!297853 () Int)

(assert (=> bs!1286248 (not (= lambda!297853 lambda!297811))))

(assert (=> bs!1286248 (= lambda!297853 lambda!297812)))

(assert (=> bs!1286249 (not (= lambda!297853 lambda!297841))))

(declare-fun bs!1286250 () Bool)

(assert (= bs!1286250 d!1757835))

(assert (=> bs!1286250 (not (= lambda!297853 lambda!297852))))

(assert (=> d!1757835 true))

(assert (=> d!1757835 true))

(assert (=> d!1757835 true))

(assert (=> d!1757835 (= (Exists!2635 lambda!297852) (Exists!2635 lambda!297853))))

(declare-fun lt!2250575 () Unit!155530)

(declare-fun choose!42112 (Regex!15535 Regex!15535 List!62906) Unit!155530)

(assert (=> d!1757835 (= lt!2250575 (choose!42112 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326))))

(assert (=> d!1757835 (validRegex!7271 (regOne!31582 r!7292))))

(assert (=> d!1757835 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1264 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326) lt!2250575)))

(declare-fun m!6545836 () Bool)

(assert (=> bs!1286250 m!6545836))

(declare-fun m!6545838 () Bool)

(assert (=> bs!1286250 m!6545838))

(declare-fun m!6545840 () Bool)

(assert (=> bs!1286250 m!6545840))

(assert (=> bs!1286250 m!6545792))

(assert (=> b!5552209 d!1757835))

(declare-fun d!1757839 () Bool)

(declare-fun isEmpty!34577 (Option!15544) Bool)

(assert (=> d!1757839 (= (isDefined!12247 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326)) (not (isEmpty!34577 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326))))))

(declare-fun bs!1286251 () Bool)

(assert (= bs!1286251 d!1757839))

(assert (=> bs!1286251 m!6545542))

(declare-fun m!6545842 () Bool)

(assert (=> bs!1286251 m!6545842))

(assert (=> b!5552209 d!1757839))

(declare-fun bs!1286253 () Bool)

(declare-fun b!5552626 () Bool)

(assert (= bs!1286253 (and b!5552626 d!1757835)))

(declare-fun lambda!297858 () Int)

(assert (=> bs!1286253 (not (= lambda!297858 lambda!297853))))

(declare-fun bs!1286254 () Bool)

(assert (= bs!1286254 (and b!5552626 b!5552209)))

(assert (=> bs!1286254 (not (= lambda!297858 lambda!297811))))

(declare-fun bs!1286255 () Bool)

(assert (= bs!1286255 (and b!5552626 d!1757831)))

(assert (=> bs!1286255 (not (= lambda!297858 lambda!297841))))

(assert (=> bs!1286253 (not (= lambda!297858 lambda!297852))))

(assert (=> bs!1286254 (not (= lambda!297858 lambda!297812))))

(assert (=> b!5552626 true))

(assert (=> b!5552626 true))

(declare-fun bs!1286256 () Bool)

(declare-fun b!5552627 () Bool)

(assert (= bs!1286256 (and b!5552627 d!1757835)))

(declare-fun lambda!297859 () Int)

(assert (=> bs!1286256 (= lambda!297859 lambda!297853)))

(declare-fun bs!1286257 () Bool)

(assert (= bs!1286257 (and b!5552627 b!5552209)))

(assert (=> bs!1286257 (not (= lambda!297859 lambda!297811))))

(declare-fun bs!1286258 () Bool)

(assert (= bs!1286258 (and b!5552627 d!1757831)))

(assert (=> bs!1286258 (not (= lambda!297859 lambda!297841))))

(assert (=> bs!1286256 (not (= lambda!297859 lambda!297852))))

(assert (=> bs!1286257 (= lambda!297859 lambda!297812)))

(declare-fun bs!1286259 () Bool)

(assert (= bs!1286259 (and b!5552627 b!5552626)))

(assert (=> bs!1286259 (not (= lambda!297859 lambda!297858))))

(assert (=> b!5552627 true))

(assert (=> b!5552627 true))

(declare-fun bm!413873 () Bool)

(declare-fun call!413879 () Bool)

(declare-fun c!971969 () Bool)

(assert (=> bm!413873 (= call!413879 (Exists!2635 (ite c!971969 lambda!297858 lambda!297859)))))

(declare-fun b!5552624 () Bool)

(declare-fun e!3429520 () Bool)

(assert (=> b!5552624 (= e!3429520 (matchRSpec!2638 (regTwo!31583 r!7292) s!2326))))

(declare-fun b!5552625 () Bool)

(declare-fun c!971970 () Bool)

(assert (=> b!5552625 (= c!971970 ((_ is Union!15535) r!7292))))

(declare-fun e!3429518 () Bool)

(declare-fun e!3429517 () Bool)

(assert (=> b!5552625 (= e!3429518 e!3429517)))

(declare-fun e!3429516 () Bool)

(assert (=> b!5552626 (= e!3429516 call!413879)))

(declare-fun e!3429521 () Bool)

(assert (=> b!5552627 (= e!3429521 call!413879)))

(declare-fun b!5552628 () Bool)

(assert (=> b!5552628 (= e!3429518 (= s!2326 (Cons!62782 (c!971841 r!7292) Nil!62782)))))

(declare-fun b!5552629 () Bool)

(declare-fun e!3429515 () Bool)

(declare-fun e!3429519 () Bool)

(assert (=> b!5552629 (= e!3429515 e!3429519)))

(declare-fun res!2360381 () Bool)

(assert (=> b!5552629 (= res!2360381 (not ((_ is EmptyLang!15535) r!7292)))))

(assert (=> b!5552629 (=> (not res!2360381) (not e!3429519))))

(declare-fun b!5552630 () Bool)

(declare-fun c!971971 () Bool)

(assert (=> b!5552630 (= c!971971 ((_ is ElementMatch!15535) r!7292))))

(assert (=> b!5552630 (= e!3429519 e!3429518)))

(declare-fun d!1757841 () Bool)

(declare-fun c!971968 () Bool)

(assert (=> d!1757841 (= c!971968 ((_ is EmptyExpr!15535) r!7292))))

(assert (=> d!1757841 (= (matchRSpec!2638 r!7292 s!2326) e!3429515)))

(declare-fun b!5552623 () Bool)

(declare-fun call!413878 () Bool)

(assert (=> b!5552623 (= e!3429515 call!413878)))

(declare-fun b!5552631 () Bool)

(assert (=> b!5552631 (= e!3429517 e!3429520)))

(declare-fun res!2360382 () Bool)

(assert (=> b!5552631 (= res!2360382 (matchRSpec!2638 (regOne!31583 r!7292) s!2326))))

(assert (=> b!5552631 (=> res!2360382 e!3429520)))

(declare-fun b!5552632 () Bool)

(assert (=> b!5552632 (= e!3429517 e!3429521)))

(assert (=> b!5552632 (= c!971969 ((_ is Star!15535) r!7292))))

(declare-fun bm!413874 () Bool)

(assert (=> bm!413874 (= call!413878 (isEmpty!34576 s!2326))))

(declare-fun b!5552633 () Bool)

(declare-fun res!2360383 () Bool)

(assert (=> b!5552633 (=> res!2360383 e!3429516)))

(assert (=> b!5552633 (= res!2360383 call!413878)))

(assert (=> b!5552633 (= e!3429521 e!3429516)))

(assert (= (and d!1757841 c!971968) b!5552623))

(assert (= (and d!1757841 (not c!971968)) b!5552629))

(assert (= (and b!5552629 res!2360381) b!5552630))

(assert (= (and b!5552630 c!971971) b!5552628))

(assert (= (and b!5552630 (not c!971971)) b!5552625))

(assert (= (and b!5552625 c!971970) b!5552631))

(assert (= (and b!5552625 (not c!971970)) b!5552632))

(assert (= (and b!5552631 (not res!2360382)) b!5552624))

(assert (= (and b!5552632 c!971969) b!5552633))

(assert (= (and b!5552632 (not c!971969)) b!5552627))

(assert (= (and b!5552633 (not res!2360383)) b!5552626))

(assert (= (or b!5552626 b!5552627) bm!413873))

(assert (= (or b!5552623 b!5552633) bm!413874))

(declare-fun m!6545854 () Bool)

(assert (=> bm!413873 m!6545854))

(declare-fun m!6545856 () Bool)

(assert (=> b!5552624 m!6545856))

(declare-fun m!6545858 () Bool)

(assert (=> b!5552631 m!6545858))

(declare-fun m!6545860 () Bool)

(assert (=> bm!413874 m!6545860))

(assert (=> b!5552200 d!1757841))

(declare-fun b!5552747 () Bool)

(declare-fun e!3429578 () Bool)

(declare-fun e!3429577 () Bool)

(assert (=> b!5552747 (= e!3429578 e!3429577)))

(declare-fun c!971990 () Bool)

(assert (=> b!5552747 (= c!971990 ((_ is EmptyLang!15535) r!7292))))

(declare-fun b!5552748 () Bool)

(declare-fun res!2360407 () Bool)

(declare-fun e!3429582 () Bool)

(assert (=> b!5552748 (=> (not res!2360407) (not e!3429582))))

(assert (=> b!5552748 (= res!2360407 (isEmpty!34576 (tail!10952 s!2326)))))

(declare-fun b!5552749 () Bool)

(declare-fun res!2360409 () Bool)

(declare-fun e!3429581 () Bool)

(assert (=> b!5552749 (=> res!2360409 e!3429581)))

(assert (=> b!5552749 (= res!2360409 (not (isEmpty!34576 (tail!10952 s!2326))))))

(declare-fun b!5552750 () Bool)

(assert (=> b!5552750 (= e!3429581 (not (= (head!11857 s!2326) (c!971841 r!7292))))))

(declare-fun b!5552751 () Bool)

(declare-fun res!2360413 () Bool)

(declare-fun e!3429580 () Bool)

(assert (=> b!5552751 (=> res!2360413 e!3429580)))

(assert (=> b!5552751 (= res!2360413 (not ((_ is ElementMatch!15535) r!7292)))))

(assert (=> b!5552751 (= e!3429577 e!3429580)))

(declare-fun b!5552752 () Bool)

(declare-fun e!3429579 () Bool)

(declare-fun derivativeStep!4391 (Regex!15535 C!31340) Regex!15535)

(assert (=> b!5552752 (= e!3429579 (matchR!7720 (derivativeStep!4391 r!7292 (head!11857 s!2326)) (tail!10952 s!2326)))))

(declare-fun b!5552753 () Bool)

(declare-fun e!3429583 () Bool)

(assert (=> b!5552753 (= e!3429580 e!3429583)))

(declare-fun res!2360406 () Bool)

(assert (=> b!5552753 (=> (not res!2360406) (not e!3429583))))

(declare-fun lt!2250587 () Bool)

(assert (=> b!5552753 (= res!2360406 (not lt!2250587))))

(declare-fun b!5552754 () Bool)

(declare-fun call!413882 () Bool)

(assert (=> b!5552754 (= e!3429578 (= lt!2250587 call!413882))))

(declare-fun bm!413877 () Bool)

(assert (=> bm!413877 (= call!413882 (isEmpty!34576 s!2326))))

(declare-fun b!5552755 () Bool)

(declare-fun res!2360411 () Bool)

(assert (=> b!5552755 (=> (not res!2360411) (not e!3429582))))

(assert (=> b!5552755 (= res!2360411 (not call!413882))))

(declare-fun d!1757847 () Bool)

(assert (=> d!1757847 e!3429578))

(declare-fun c!971991 () Bool)

(assert (=> d!1757847 (= c!971991 ((_ is EmptyExpr!15535) r!7292))))

(assert (=> d!1757847 (= lt!2250587 e!3429579)))

(declare-fun c!971992 () Bool)

(assert (=> d!1757847 (= c!971992 (isEmpty!34576 s!2326))))

(assert (=> d!1757847 (validRegex!7271 r!7292)))

(assert (=> d!1757847 (= (matchR!7720 r!7292 s!2326) lt!2250587)))

(declare-fun b!5552746 () Bool)

(declare-fun res!2360408 () Bool)

(assert (=> b!5552746 (=> res!2360408 e!3429580)))

(assert (=> b!5552746 (= res!2360408 e!3429582)))

(declare-fun res!2360412 () Bool)

(assert (=> b!5552746 (=> (not res!2360412) (not e!3429582))))

(assert (=> b!5552746 (= res!2360412 lt!2250587)))

(declare-fun b!5552756 () Bool)

(assert (=> b!5552756 (= e!3429583 e!3429581)))

(declare-fun res!2360410 () Bool)

(assert (=> b!5552756 (=> res!2360410 e!3429581)))

(assert (=> b!5552756 (= res!2360410 call!413882)))

(declare-fun b!5552757 () Bool)

(assert (=> b!5552757 (= e!3429577 (not lt!2250587))))

(declare-fun b!5552758 () Bool)

(assert (=> b!5552758 (= e!3429579 (nullable!5567 r!7292))))

(declare-fun b!5552759 () Bool)

(assert (=> b!5552759 (= e!3429582 (= (head!11857 s!2326) (c!971841 r!7292)))))

(assert (= (and d!1757847 c!971992) b!5552758))

(assert (= (and d!1757847 (not c!971992)) b!5552752))

(assert (= (and d!1757847 c!971991) b!5552754))

(assert (= (and d!1757847 (not c!971991)) b!5552747))

(assert (= (and b!5552747 c!971990) b!5552757))

(assert (= (and b!5552747 (not c!971990)) b!5552751))

(assert (= (and b!5552751 (not res!2360413)) b!5552746))

(assert (= (and b!5552746 res!2360412) b!5552755))

(assert (= (and b!5552755 res!2360411) b!5552748))

(assert (= (and b!5552748 res!2360407) b!5552759))

(assert (= (and b!5552746 (not res!2360408)) b!5552753))

(assert (= (and b!5552753 res!2360406) b!5552756))

(assert (= (and b!5552756 (not res!2360410)) b!5552749))

(assert (= (and b!5552749 (not res!2360409)) b!5552750))

(assert (= (or b!5552754 b!5552755 b!5552756) bm!413877))

(declare-fun m!6545884 () Bool)

(assert (=> b!5552759 m!6545884))

(assert (=> b!5552752 m!6545884))

(assert (=> b!5552752 m!6545884))

(declare-fun m!6545886 () Bool)

(assert (=> b!5552752 m!6545886))

(declare-fun m!6545888 () Bool)

(assert (=> b!5552752 m!6545888))

(assert (=> b!5552752 m!6545886))

(assert (=> b!5552752 m!6545888))

(declare-fun m!6545890 () Bool)

(assert (=> b!5552752 m!6545890))

(assert (=> b!5552750 m!6545884))

(assert (=> b!5552748 m!6545888))

(assert (=> b!5552748 m!6545888))

(declare-fun m!6545892 () Bool)

(assert (=> b!5552748 m!6545892))

(assert (=> d!1757847 m!6545860))

(assert (=> d!1757847 m!6545576))

(assert (=> b!5552749 m!6545888))

(assert (=> b!5552749 m!6545888))

(assert (=> b!5552749 m!6545892))

(assert (=> bm!413877 m!6545860))

(declare-fun m!6545894 () Bool)

(assert (=> b!5552758 m!6545894))

(assert (=> b!5552200 d!1757847))

(declare-fun d!1757851 () Bool)

(assert (=> d!1757851 (= (matchR!7720 r!7292 s!2326) (matchRSpec!2638 r!7292 s!2326))))

(declare-fun lt!2250590 () Unit!155530)

(declare-fun choose!42114 (Regex!15535 List!62906) Unit!155530)

(assert (=> d!1757851 (= lt!2250590 (choose!42114 r!7292 s!2326))))

(assert (=> d!1757851 (validRegex!7271 r!7292)))

(assert (=> d!1757851 (= (mainMatchTheorem!2638 r!7292 s!2326) lt!2250590)))

(declare-fun bs!1286265 () Bool)

(assert (= bs!1286265 d!1757851))

(assert (=> bs!1286265 m!6545536))

(assert (=> bs!1286265 m!6545534))

(declare-fun m!6545896 () Bool)

(assert (=> bs!1286265 m!6545896))

(assert (=> bs!1286265 m!6545576))

(assert (=> b!5552200 d!1757851))

(declare-fun b!5552780 () Bool)

(declare-fun e!3429596 () Bool)

(declare-fun lt!2250593 () Regex!15535)

(declare-fun isConcat!621 (Regex!15535) Bool)

(assert (=> b!5552780 (= e!3429596 (isConcat!621 lt!2250593))))

(declare-fun b!5552781 () Bool)

(declare-fun e!3429597 () Regex!15535)

(declare-fun e!3429600 () Regex!15535)

(assert (=> b!5552781 (= e!3429597 e!3429600)))

(declare-fun c!972003 () Bool)

(assert (=> b!5552781 (= c!972003 ((_ is Cons!62780) (exprs!5419 (h!69229 zl!343))))))

(declare-fun b!5552782 () Bool)

(declare-fun head!11858 (List!62904) Regex!15535)

(assert (=> b!5552782 (= e!3429596 (= lt!2250593 (head!11858 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5552784 () Bool)

(declare-fun e!3429601 () Bool)

(assert (=> b!5552784 (= e!3429601 (isEmpty!34573 (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5552785 () Bool)

(declare-fun e!3429598 () Bool)

(declare-fun isEmptyExpr!1098 (Regex!15535) Bool)

(assert (=> b!5552785 (= e!3429598 (isEmptyExpr!1098 lt!2250593))))

(declare-fun b!5552786 () Bool)

(assert (=> b!5552786 (= e!3429600 (Concat!24380 (h!69228 (exprs!5419 (h!69229 zl!343))) (generalisedConcat!1150 (t!376167 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun b!5552787 () Bool)

(declare-fun e!3429599 () Bool)

(assert (=> b!5552787 (= e!3429599 e!3429598)))

(declare-fun c!972001 () Bool)

(assert (=> b!5552787 (= c!972001 (isEmpty!34573 (exprs!5419 (h!69229 zl!343))))))

(declare-fun b!5552788 () Bool)

(assert (=> b!5552788 (= e!3429597 (h!69228 (exprs!5419 (h!69229 zl!343))))))

(declare-fun b!5552789 () Bool)

(assert (=> b!5552789 (= e!3429598 e!3429596)))

(declare-fun c!972004 () Bool)

(declare-fun tail!10953 (List!62904) List!62904)

(assert (=> b!5552789 (= c!972004 (isEmpty!34573 (tail!10953 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun d!1757853 () Bool)

(assert (=> d!1757853 e!3429599))

(declare-fun res!2360418 () Bool)

(assert (=> d!1757853 (=> (not res!2360418) (not e!3429599))))

(assert (=> d!1757853 (= res!2360418 (validRegex!7271 lt!2250593))))

(assert (=> d!1757853 (= lt!2250593 e!3429597)))

(declare-fun c!972002 () Bool)

(assert (=> d!1757853 (= c!972002 e!3429601)))

(declare-fun res!2360419 () Bool)

(assert (=> d!1757853 (=> (not res!2360419) (not e!3429601))))

(assert (=> d!1757853 (= res!2360419 ((_ is Cons!62780) (exprs!5419 (h!69229 zl!343))))))

(declare-fun lambda!297865 () Int)

(declare-fun forall!14709 (List!62904 Int) Bool)

(assert (=> d!1757853 (forall!14709 (exprs!5419 (h!69229 zl!343)) lambda!297865)))

(assert (=> d!1757853 (= (generalisedConcat!1150 (exprs!5419 (h!69229 zl!343))) lt!2250593)))

(declare-fun b!5552783 () Bool)

(assert (=> b!5552783 (= e!3429600 EmptyExpr!15535)))

(assert (= (and d!1757853 res!2360419) b!5552784))

(assert (= (and d!1757853 c!972002) b!5552788))

(assert (= (and d!1757853 (not c!972002)) b!5552781))

(assert (= (and b!5552781 c!972003) b!5552786))

(assert (= (and b!5552781 (not c!972003)) b!5552783))

(assert (= (and d!1757853 res!2360418) b!5552787))

(assert (= (and b!5552787 c!972001) b!5552785))

(assert (= (and b!5552787 (not c!972001)) b!5552789))

(assert (= (and b!5552789 c!972004) b!5552782))

(assert (= (and b!5552789 (not c!972004)) b!5552780))

(declare-fun m!6545898 () Bool)

(assert (=> b!5552789 m!6545898))

(assert (=> b!5552789 m!6545898))

(declare-fun m!6545900 () Bool)

(assert (=> b!5552789 m!6545900))

(declare-fun m!6545902 () Bool)

(assert (=> b!5552787 m!6545902))

(declare-fun m!6545904 () Bool)

(assert (=> d!1757853 m!6545904))

(declare-fun m!6545906 () Bool)

(assert (=> d!1757853 m!6545906))

(declare-fun m!6545908 () Bool)

(assert (=> b!5552786 m!6545908))

(declare-fun m!6545910 () Bool)

(assert (=> b!5552782 m!6545910))

(assert (=> b!5552784 m!6545572))

(declare-fun m!6545912 () Bool)

(assert (=> b!5552780 m!6545912))

(declare-fun m!6545914 () Bool)

(assert (=> b!5552785 m!6545914))

(assert (=> b!5552199 d!1757853))

(declare-fun bs!1286266 () Bool)

(declare-fun d!1757855 () Bool)

(assert (= bs!1286266 (and d!1757855 d!1757853)))

(declare-fun lambda!297868 () Int)

(assert (=> bs!1286266 (= lambda!297868 lambda!297865)))

(assert (=> d!1757855 (= (inv!82084 setElem!36931) (forall!14709 (exprs!5419 setElem!36931) lambda!297868))))

(declare-fun bs!1286267 () Bool)

(assert (= bs!1286267 d!1757855))

(declare-fun m!6545916 () Bool)

(assert (=> bs!1286267 m!6545916))

(assert (=> setNonEmpty!36931 d!1757855))

(declare-fun b!5552808 () Bool)

(declare-fun e!3429619 () Bool)

(declare-fun call!413891 () Bool)

(assert (=> b!5552808 (= e!3429619 call!413891)))

(declare-fun d!1757857 () Bool)

(declare-fun res!2360431 () Bool)

(declare-fun e!3429618 () Bool)

(assert (=> d!1757857 (=> res!2360431 e!3429618)))

(assert (=> d!1757857 (= res!2360431 ((_ is ElementMatch!15535) r!7292))))

(assert (=> d!1757857 (= (validRegex!7271 r!7292) e!3429618)))

(declare-fun b!5552809 () Bool)

(declare-fun res!2360433 () Bool)

(declare-fun e!3429617 () Bool)

(assert (=> b!5552809 (=> res!2360433 e!3429617)))

(assert (=> b!5552809 (= res!2360433 (not ((_ is Concat!24380) r!7292)))))

(declare-fun e!3429616 () Bool)

(assert (=> b!5552809 (= e!3429616 e!3429617)))

(declare-fun b!5552810 () Bool)

(declare-fun e!3429620 () Bool)

(assert (=> b!5552810 (= e!3429620 e!3429616)))

(declare-fun c!972009 () Bool)

(assert (=> b!5552810 (= c!972009 ((_ is Union!15535) r!7292))))

(declare-fun b!5552811 () Bool)

(declare-fun e!3429621 () Bool)

(declare-fun call!413889 () Bool)

(assert (=> b!5552811 (= e!3429621 call!413889)))

(declare-fun bm!413884 () Bool)

(assert (=> bm!413884 (= call!413891 call!413889)))

(declare-fun b!5552812 () Bool)

(declare-fun res!2360430 () Bool)

(assert (=> b!5552812 (=> (not res!2360430) (not e!3429619))))

(declare-fun call!413890 () Bool)

(assert (=> b!5552812 (= res!2360430 call!413890)))

(assert (=> b!5552812 (= e!3429616 e!3429619)))

(declare-fun bm!413885 () Bool)

(assert (=> bm!413885 (= call!413890 (validRegex!7271 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))))))

(declare-fun bm!413886 () Bool)

(declare-fun c!972010 () Bool)

(assert (=> bm!413886 (= call!413889 (validRegex!7271 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))))))

(declare-fun b!5552813 () Bool)

(declare-fun e!3429622 () Bool)

(assert (=> b!5552813 (= e!3429617 e!3429622)))

(declare-fun res!2360432 () Bool)

(assert (=> b!5552813 (=> (not res!2360432) (not e!3429622))))

(assert (=> b!5552813 (= res!2360432 call!413890)))

(declare-fun b!5552814 () Bool)

(assert (=> b!5552814 (= e!3429622 call!413891)))

(declare-fun b!5552815 () Bool)

(assert (=> b!5552815 (= e!3429620 e!3429621)))

(declare-fun res!2360434 () Bool)

(assert (=> b!5552815 (= res!2360434 (not (nullable!5567 (reg!15864 r!7292))))))

(assert (=> b!5552815 (=> (not res!2360434) (not e!3429621))))

(declare-fun b!5552816 () Bool)

(assert (=> b!5552816 (= e!3429618 e!3429620)))

(assert (=> b!5552816 (= c!972010 ((_ is Star!15535) r!7292))))

(assert (= (and d!1757857 (not res!2360431)) b!5552816))

(assert (= (and b!5552816 c!972010) b!5552815))

(assert (= (and b!5552816 (not c!972010)) b!5552810))

(assert (= (and b!5552815 res!2360434) b!5552811))

(assert (= (and b!5552810 c!972009) b!5552812))

(assert (= (and b!5552810 (not c!972009)) b!5552809))

(assert (= (and b!5552812 res!2360430) b!5552808))

(assert (= (and b!5552809 (not res!2360433)) b!5552813))

(assert (= (and b!5552813 res!2360432) b!5552814))

(assert (= (or b!5552808 b!5552814) bm!413884))

(assert (= (or b!5552812 b!5552813) bm!413885))

(assert (= (or b!5552811 bm!413884) bm!413886))

(declare-fun m!6545918 () Bool)

(assert (=> bm!413885 m!6545918))

(declare-fun m!6545920 () Bool)

(assert (=> bm!413886 m!6545920))

(declare-fun m!6545922 () Bool)

(assert (=> b!5552815 m!6545922))

(assert (=> start!577966 d!1757857))

(declare-fun bs!1286268 () Bool)

(declare-fun d!1757859 () Bool)

(assert (= bs!1286268 (and d!1757859 d!1757853)))

(declare-fun lambda!297871 () Int)

(assert (=> bs!1286268 (= lambda!297871 lambda!297865)))

(declare-fun bs!1286269 () Bool)

(assert (= bs!1286269 (and d!1757859 d!1757855)))

(assert (=> bs!1286269 (= lambda!297871 lambda!297868)))

(declare-fun b!5552837 () Bool)

(declare-fun e!3429636 () Regex!15535)

(assert (=> b!5552837 (= e!3429636 EmptyLang!15535)))

(declare-fun b!5552838 () Bool)

(declare-fun e!3429639 () Regex!15535)

(assert (=> b!5552838 (= e!3429639 (h!69228 (unfocusZipperList!963 zl!343)))))

(declare-fun b!5552839 () Bool)

(assert (=> b!5552839 (= e!3429639 e!3429636)))

(declare-fun c!972020 () Bool)

(assert (=> b!5552839 (= c!972020 ((_ is Cons!62780) (unfocusZipperList!963 zl!343)))))

(declare-fun b!5552840 () Bool)

(declare-fun e!3429640 () Bool)

(assert (=> b!5552840 (= e!3429640 (isEmpty!34573 (t!376167 (unfocusZipperList!963 zl!343))))))

(declare-fun b!5552841 () Bool)

(declare-fun e!3429638 () Bool)

(declare-fun e!3429637 () Bool)

(assert (=> b!5552841 (= e!3429638 e!3429637)))

(declare-fun c!972019 () Bool)

(assert (=> b!5552841 (= c!972019 (isEmpty!34573 (unfocusZipperList!963 zl!343)))))

(assert (=> d!1757859 e!3429638))

(declare-fun res!2360439 () Bool)

(assert (=> d!1757859 (=> (not res!2360439) (not e!3429638))))

(declare-fun lt!2250596 () Regex!15535)

(assert (=> d!1757859 (= res!2360439 (validRegex!7271 lt!2250596))))

(assert (=> d!1757859 (= lt!2250596 e!3429639)))

(declare-fun c!972021 () Bool)

(assert (=> d!1757859 (= c!972021 e!3429640)))

(declare-fun res!2360440 () Bool)

(assert (=> d!1757859 (=> (not res!2360440) (not e!3429640))))

(assert (=> d!1757859 (= res!2360440 ((_ is Cons!62780) (unfocusZipperList!963 zl!343)))))

(assert (=> d!1757859 (forall!14709 (unfocusZipperList!963 zl!343) lambda!297871)))

(assert (=> d!1757859 (= (generalisedUnion!1398 (unfocusZipperList!963 zl!343)) lt!2250596)))

(declare-fun b!5552842 () Bool)

(declare-fun e!3429635 () Bool)

(assert (=> b!5552842 (= e!3429637 e!3429635)))

(declare-fun c!972022 () Bool)

(assert (=> b!5552842 (= c!972022 (isEmpty!34573 (tail!10953 (unfocusZipperList!963 zl!343))))))

(declare-fun b!5552843 () Bool)

(declare-fun isUnion!540 (Regex!15535) Bool)

(assert (=> b!5552843 (= e!3429635 (isUnion!540 lt!2250596))))

(declare-fun b!5552844 () Bool)

(assert (=> b!5552844 (= e!3429635 (= lt!2250596 (head!11858 (unfocusZipperList!963 zl!343))))))

(declare-fun b!5552845 () Bool)

(assert (=> b!5552845 (= e!3429636 (Union!15535 (h!69228 (unfocusZipperList!963 zl!343)) (generalisedUnion!1398 (t!376167 (unfocusZipperList!963 zl!343)))))))

(declare-fun b!5552846 () Bool)

(declare-fun isEmptyLang!1110 (Regex!15535) Bool)

(assert (=> b!5552846 (= e!3429637 (isEmptyLang!1110 lt!2250596))))

(assert (= (and d!1757859 res!2360440) b!5552840))

(assert (= (and d!1757859 c!972021) b!5552838))

(assert (= (and d!1757859 (not c!972021)) b!5552839))

(assert (= (and b!5552839 c!972020) b!5552845))

(assert (= (and b!5552839 (not c!972020)) b!5552837))

(assert (= (and d!1757859 res!2360439) b!5552841))

(assert (= (and b!5552841 c!972019) b!5552846))

(assert (= (and b!5552841 (not c!972019)) b!5552842))

(assert (= (and b!5552842 c!972022) b!5552844))

(assert (= (and b!5552842 (not c!972022)) b!5552843))

(declare-fun m!6545924 () Bool)

(assert (=> b!5552846 m!6545924))

(declare-fun m!6545926 () Bool)

(assert (=> b!5552840 m!6545926))

(assert (=> b!5552841 m!6545530))

(declare-fun m!6545928 () Bool)

(assert (=> b!5552841 m!6545928))

(assert (=> b!5552842 m!6545530))

(declare-fun m!6545930 () Bool)

(assert (=> b!5552842 m!6545930))

(assert (=> b!5552842 m!6545930))

(declare-fun m!6545932 () Bool)

(assert (=> b!5552842 m!6545932))

(declare-fun m!6545934 () Bool)

(assert (=> b!5552843 m!6545934))

(declare-fun m!6545936 () Bool)

(assert (=> b!5552845 m!6545936))

(assert (=> b!5552844 m!6545530))

(declare-fun m!6545938 () Bool)

(assert (=> b!5552844 m!6545938))

(declare-fun m!6545940 () Bool)

(assert (=> d!1757859 m!6545940))

(assert (=> d!1757859 m!6545530))

(declare-fun m!6545942 () Bool)

(assert (=> d!1757859 m!6545942))

(assert (=> b!5552195 d!1757859))

(declare-fun bs!1286270 () Bool)

(declare-fun d!1757861 () Bool)

(assert (= bs!1286270 (and d!1757861 d!1757853)))

(declare-fun lambda!297874 () Int)

(assert (=> bs!1286270 (= lambda!297874 lambda!297865)))

(declare-fun bs!1286271 () Bool)

(assert (= bs!1286271 (and d!1757861 d!1757855)))

(assert (=> bs!1286271 (= lambda!297874 lambda!297868)))

(declare-fun bs!1286272 () Bool)

(assert (= bs!1286272 (and d!1757861 d!1757859)))

(assert (=> bs!1286272 (= lambda!297874 lambda!297871)))

(declare-fun lt!2250599 () List!62904)

(assert (=> d!1757861 (forall!14709 lt!2250599 lambda!297874)))

(declare-fun e!3429643 () List!62904)

(assert (=> d!1757861 (= lt!2250599 e!3429643)))

(declare-fun c!972025 () Bool)

(assert (=> d!1757861 (= c!972025 ((_ is Cons!62781) zl!343))))

(assert (=> d!1757861 (= (unfocusZipperList!963 zl!343) lt!2250599)))

(declare-fun b!5552851 () Bool)

(assert (=> b!5552851 (= e!3429643 (Cons!62780 (generalisedConcat!1150 (exprs!5419 (h!69229 zl!343))) (unfocusZipperList!963 (t!376168 zl!343))))))

(declare-fun b!5552852 () Bool)

(assert (=> b!5552852 (= e!3429643 Nil!62780)))

(assert (= (and d!1757861 c!972025) b!5552851))

(assert (= (and d!1757861 (not c!972025)) b!5552852))

(declare-fun m!6545944 () Bool)

(assert (=> d!1757861 m!6545944))

(assert (=> b!5552851 m!6545552))

(declare-fun m!6545946 () Bool)

(assert (=> b!5552851 m!6545946))

(assert (=> b!5552195 d!1757861))

(declare-fun bs!1286273 () Bool)

(declare-fun d!1757863 () Bool)

(assert (= bs!1286273 (and d!1757863 d!1757853)))

(declare-fun lambda!297875 () Int)

(assert (=> bs!1286273 (= lambda!297875 lambda!297865)))

(declare-fun bs!1286274 () Bool)

(assert (= bs!1286274 (and d!1757863 d!1757855)))

(assert (=> bs!1286274 (= lambda!297875 lambda!297868)))

(declare-fun bs!1286275 () Bool)

(assert (= bs!1286275 (and d!1757863 d!1757859)))

(assert (=> bs!1286275 (= lambda!297875 lambda!297871)))

(declare-fun bs!1286276 () Bool)

(assert (= bs!1286276 (and d!1757863 d!1757861)))

(assert (=> bs!1286276 (= lambda!297875 lambda!297874)))

(assert (=> d!1757863 (= (inv!82084 (h!69229 zl!343)) (forall!14709 (exprs!5419 (h!69229 zl!343)) lambda!297875))))

(declare-fun bs!1286277 () Bool)

(assert (= bs!1286277 d!1757863))

(declare-fun m!6545948 () Bool)

(assert (=> bs!1286277 m!6545948))

(assert (=> b!5552204 d!1757863))

(declare-fun d!1757865 () Bool)

(declare-fun e!3429646 () Bool)

(assert (=> d!1757865 (= (matchZipper!1677 ((_ map or) lt!2250521 lt!2250518) (t!376169 s!2326)) e!3429646)))

(declare-fun res!2360443 () Bool)

(assert (=> d!1757865 (=> res!2360443 e!3429646)))

(assert (=> d!1757865 (= res!2360443 (matchZipper!1677 lt!2250521 (t!376169 s!2326)))))

(declare-fun lt!2250602 () Unit!155530)

(declare-fun choose!42116 ((InoxSet Context!9838) (InoxSet Context!9838) List!62906) Unit!155530)

(assert (=> d!1757865 (= lt!2250602 (choose!42116 lt!2250521 lt!2250518 (t!376169 s!2326)))))

(assert (=> d!1757865 (= (lemmaZipperConcatMatchesSameAsBothZippers!566 lt!2250521 lt!2250518 (t!376169 s!2326)) lt!2250602)))

(declare-fun b!5552855 () Bool)

(assert (=> b!5552855 (= e!3429646 (matchZipper!1677 lt!2250518 (t!376169 s!2326)))))

(assert (= (and d!1757865 (not res!2360443)) b!5552855))

(declare-fun m!6545950 () Bool)

(assert (=> d!1757865 m!6545950))

(assert (=> d!1757865 m!6545568))

(declare-fun m!6545952 () Bool)

(assert (=> d!1757865 m!6545952))

(assert (=> b!5552855 m!6545574))

(assert (=> b!5552194 d!1757865))

(declare-fun d!1757867 () Bool)

(declare-fun c!972026 () Bool)

(assert (=> d!1757867 (= c!972026 (isEmpty!34576 s!2326))))

(declare-fun e!3429647 () Bool)

(assert (=> d!1757867 (= (matchZipper!1677 z!1189 s!2326) e!3429647)))

(declare-fun b!5552856 () Bool)

(assert (=> b!5552856 (= e!3429647 (nullableZipper!1543 z!1189))))

(declare-fun b!5552857 () Bool)

(assert (=> b!5552857 (= e!3429647 (matchZipper!1677 (derivationStepZipper!1638 z!1189 (head!11857 s!2326)) (tail!10952 s!2326)))))

(assert (= (and d!1757867 c!972026) b!5552856))

(assert (= (and d!1757867 (not c!972026)) b!5552857))

(assert (=> d!1757867 m!6545860))

(declare-fun m!6545954 () Bool)

(assert (=> b!5552856 m!6545954))

(assert (=> b!5552857 m!6545884))

(assert (=> b!5552857 m!6545884))

(declare-fun m!6545956 () Bool)

(assert (=> b!5552857 m!6545956))

(assert (=> b!5552857 m!6545888))

(assert (=> b!5552857 m!6545956))

(assert (=> b!5552857 m!6545888))

(declare-fun m!6545958 () Bool)

(assert (=> b!5552857 m!6545958))

(assert (=> b!5552194 d!1757867))

(declare-fun d!1757869 () Bool)

(declare-fun c!972027 () Bool)

(assert (=> d!1757869 (= c!972027 (isEmpty!34576 (t!376169 s!2326)))))

(declare-fun e!3429648 () Bool)

(assert (=> d!1757869 (= (matchZipper!1677 lt!2250512 (t!376169 s!2326)) e!3429648)))

(declare-fun b!5552858 () Bool)

(assert (=> b!5552858 (= e!3429648 (nullableZipper!1543 lt!2250512))))

(declare-fun b!5552859 () Bool)

(assert (=> b!5552859 (= e!3429648 (matchZipper!1677 (derivationStepZipper!1638 lt!2250512 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))))))

(assert (= (and d!1757869 c!972027) b!5552858))

(assert (= (and d!1757869 (not c!972027)) b!5552859))

(assert (=> d!1757869 m!6545748))

(declare-fun m!6545960 () Bool)

(assert (=> b!5552858 m!6545960))

(assert (=> b!5552859 m!6545752))

(assert (=> b!5552859 m!6545752))

(declare-fun m!6545962 () Bool)

(assert (=> b!5552859 m!6545962))

(assert (=> b!5552859 m!6545756))

(assert (=> b!5552859 m!6545962))

(assert (=> b!5552859 m!6545756))

(declare-fun m!6545964 () Bool)

(assert (=> b!5552859 m!6545964))

(assert (=> b!5552194 d!1757869))

(declare-fun d!1757871 () Bool)

(declare-fun c!972028 () Bool)

(assert (=> d!1757871 (= c!972028 (isEmpty!34576 (t!376169 s!2326)))))

(declare-fun e!3429649 () Bool)

(assert (=> d!1757871 (= (matchZipper!1677 lt!2250515 (t!376169 s!2326)) e!3429649)))

(declare-fun b!5552860 () Bool)

(assert (=> b!5552860 (= e!3429649 (nullableZipper!1543 lt!2250515))))

(declare-fun b!5552861 () Bool)

(assert (=> b!5552861 (= e!3429649 (matchZipper!1677 (derivationStepZipper!1638 lt!2250515 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))))))

(assert (= (and d!1757871 c!972028) b!5552860))

(assert (= (and d!1757871 (not c!972028)) b!5552861))

(assert (=> d!1757871 m!6545748))

(declare-fun m!6545966 () Bool)

(assert (=> b!5552860 m!6545966))

(assert (=> b!5552861 m!6545752))

(assert (=> b!5552861 m!6545752))

(declare-fun m!6545968 () Bool)

(assert (=> b!5552861 m!6545968))

(assert (=> b!5552861 m!6545756))

(assert (=> b!5552861 m!6545968))

(assert (=> b!5552861 m!6545756))

(declare-fun m!6545970 () Bool)

(assert (=> b!5552861 m!6545970))

(assert (=> b!5552194 d!1757871))

(declare-fun d!1757873 () Bool)

(declare-fun c!972029 () Bool)

(assert (=> d!1757873 (= c!972029 (isEmpty!34576 (t!376169 s!2326)))))

(declare-fun e!3429650 () Bool)

(assert (=> d!1757873 (= (matchZipper!1677 lt!2250521 (t!376169 s!2326)) e!3429650)))

(declare-fun b!5552862 () Bool)

(assert (=> b!5552862 (= e!3429650 (nullableZipper!1543 lt!2250521))))

(declare-fun b!5552863 () Bool)

(assert (=> b!5552863 (= e!3429650 (matchZipper!1677 (derivationStepZipper!1638 lt!2250521 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))))))

(assert (= (and d!1757873 c!972029) b!5552862))

(assert (= (and d!1757873 (not c!972029)) b!5552863))

(assert (=> d!1757873 m!6545748))

(declare-fun m!6545972 () Bool)

(assert (=> b!5552862 m!6545972))

(assert (=> b!5552863 m!6545752))

(assert (=> b!5552863 m!6545752))

(declare-fun m!6545974 () Bool)

(assert (=> b!5552863 m!6545974))

(assert (=> b!5552863 m!6545756))

(assert (=> b!5552863 m!6545974))

(assert (=> b!5552863 m!6545756))

(declare-fun m!6545976 () Bool)

(assert (=> b!5552863 m!6545976))

(assert (=> b!5552194 d!1757873))

(declare-fun d!1757875 () Bool)

(declare-fun e!3429653 () Bool)

(assert (=> d!1757875 e!3429653))

(declare-fun res!2360446 () Bool)

(assert (=> d!1757875 (=> (not res!2360446) (not e!3429653))))

(declare-fun lt!2250605 () List!62905)

(declare-fun noDuplicate!1520 (List!62905) Bool)

(assert (=> d!1757875 (= res!2360446 (noDuplicate!1520 lt!2250605))))

(declare-fun choose!42117 ((InoxSet Context!9838)) List!62905)

(assert (=> d!1757875 (= lt!2250605 (choose!42117 z!1189))))

(assert (=> d!1757875 (= (toList!9319 z!1189) lt!2250605)))

(declare-fun b!5552866 () Bool)

(declare-fun content!11302 (List!62905) (InoxSet Context!9838))

(assert (=> b!5552866 (= e!3429653 (= (content!11302 lt!2250605) z!1189))))

(assert (= (and d!1757875 res!2360446) b!5552866))

(declare-fun m!6545978 () Bool)

(assert (=> d!1757875 m!6545978))

(declare-fun m!6545980 () Bool)

(assert (=> d!1757875 m!6545980))

(declare-fun m!6545982 () Bool)

(assert (=> b!5552866 m!6545982))

(assert (=> b!5552203 d!1757875))

(declare-fun d!1757877 () Bool)

(assert (=> d!1757877 (= (isEmpty!34572 (t!376168 zl!343)) ((_ is Nil!62781) (t!376168 zl!343)))))

(assert (=> b!5552192 d!1757877))

(declare-fun d!1757879 () Bool)

(assert (=> d!1757879 (= (isEmpty!34573 (t!376167 (exprs!5419 (h!69229 zl!343)))) ((_ is Nil!62780) (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> b!5552212 d!1757879))

(declare-fun e!3429656 () Bool)

(assert (=> b!5552207 (= tp!1531938 e!3429656)))

(declare-fun b!5552878 () Bool)

(declare-fun tp!1532015 () Bool)

(declare-fun tp!1532013 () Bool)

(assert (=> b!5552878 (= e!3429656 (and tp!1532015 tp!1532013))))

(declare-fun b!5552879 () Bool)

(declare-fun tp!1532012 () Bool)

(assert (=> b!5552879 (= e!3429656 tp!1532012)))

(declare-fun b!5552877 () Bool)

(assert (=> b!5552877 (= e!3429656 tp_is_empty!40323)))

(declare-fun b!5552880 () Bool)

(declare-fun tp!1532014 () Bool)

(declare-fun tp!1532016 () Bool)

(assert (=> b!5552880 (= e!3429656 (and tp!1532014 tp!1532016))))

(assert (= (and b!5552207 ((_ is ElementMatch!15535) (regOne!31583 r!7292))) b!5552877))

(assert (= (and b!5552207 ((_ is Concat!24380) (regOne!31583 r!7292))) b!5552878))

(assert (= (and b!5552207 ((_ is Star!15535) (regOne!31583 r!7292))) b!5552879))

(assert (= (and b!5552207 ((_ is Union!15535) (regOne!31583 r!7292))) b!5552880))

(declare-fun e!3429657 () Bool)

(assert (=> b!5552207 (= tp!1531939 e!3429657)))

(declare-fun b!5552882 () Bool)

(declare-fun tp!1532020 () Bool)

(declare-fun tp!1532018 () Bool)

(assert (=> b!5552882 (= e!3429657 (and tp!1532020 tp!1532018))))

(declare-fun b!5552883 () Bool)

(declare-fun tp!1532017 () Bool)

(assert (=> b!5552883 (= e!3429657 tp!1532017)))

(declare-fun b!5552881 () Bool)

(assert (=> b!5552881 (= e!3429657 tp_is_empty!40323)))

(declare-fun b!5552884 () Bool)

(declare-fun tp!1532019 () Bool)

(declare-fun tp!1532021 () Bool)

(assert (=> b!5552884 (= e!3429657 (and tp!1532019 tp!1532021))))

(assert (= (and b!5552207 ((_ is ElementMatch!15535) (regTwo!31583 r!7292))) b!5552881))

(assert (= (and b!5552207 ((_ is Concat!24380) (regTwo!31583 r!7292))) b!5552882))

(assert (= (and b!5552207 ((_ is Star!15535) (regTwo!31583 r!7292))) b!5552883))

(assert (= (and b!5552207 ((_ is Union!15535) (regTwo!31583 r!7292))) b!5552884))

(declare-fun e!3429658 () Bool)

(assert (=> b!5552191 (= tp!1531935 e!3429658)))

(declare-fun b!5552886 () Bool)

(declare-fun tp!1532025 () Bool)

(declare-fun tp!1532023 () Bool)

(assert (=> b!5552886 (= e!3429658 (and tp!1532025 tp!1532023))))

(declare-fun b!5552887 () Bool)

(declare-fun tp!1532022 () Bool)

(assert (=> b!5552887 (= e!3429658 tp!1532022)))

(declare-fun b!5552885 () Bool)

(assert (=> b!5552885 (= e!3429658 tp_is_empty!40323)))

(declare-fun b!5552888 () Bool)

(declare-fun tp!1532024 () Bool)

(declare-fun tp!1532026 () Bool)

(assert (=> b!5552888 (= e!3429658 (and tp!1532024 tp!1532026))))

(assert (= (and b!5552191 ((_ is ElementMatch!15535) (reg!15864 r!7292))) b!5552885))

(assert (= (and b!5552191 ((_ is Concat!24380) (reg!15864 r!7292))) b!5552886))

(assert (= (and b!5552191 ((_ is Star!15535) (reg!15864 r!7292))) b!5552887))

(assert (= (and b!5552191 ((_ is Union!15535) (reg!15864 r!7292))) b!5552888))

(declare-fun b!5552893 () Bool)

(declare-fun e!3429661 () Bool)

(declare-fun tp!1532031 () Bool)

(declare-fun tp!1532032 () Bool)

(assert (=> b!5552893 (= e!3429661 (and tp!1532031 tp!1532032))))

(assert (=> b!5552197 (= tp!1531937 e!3429661)))

(assert (= (and b!5552197 ((_ is Cons!62780) (exprs!5419 (h!69229 zl!343)))) b!5552893))

(declare-fun e!3429662 () Bool)

(assert (=> b!5552206 (= tp!1531943 e!3429662)))

(declare-fun b!5552895 () Bool)

(declare-fun tp!1532036 () Bool)

(declare-fun tp!1532034 () Bool)

(assert (=> b!5552895 (= e!3429662 (and tp!1532036 tp!1532034))))

(declare-fun b!5552896 () Bool)

(declare-fun tp!1532033 () Bool)

(assert (=> b!5552896 (= e!3429662 tp!1532033)))

(declare-fun b!5552894 () Bool)

(assert (=> b!5552894 (= e!3429662 tp_is_empty!40323)))

(declare-fun b!5552897 () Bool)

(declare-fun tp!1532035 () Bool)

(declare-fun tp!1532037 () Bool)

(assert (=> b!5552897 (= e!3429662 (and tp!1532035 tp!1532037))))

(assert (= (and b!5552206 ((_ is ElementMatch!15535) (regOne!31582 r!7292))) b!5552894))

(assert (= (and b!5552206 ((_ is Concat!24380) (regOne!31582 r!7292))) b!5552895))

(assert (= (and b!5552206 ((_ is Star!15535) (regOne!31582 r!7292))) b!5552896))

(assert (= (and b!5552206 ((_ is Union!15535) (regOne!31582 r!7292))) b!5552897))

(declare-fun e!3429663 () Bool)

(assert (=> b!5552206 (= tp!1531940 e!3429663)))

(declare-fun b!5552899 () Bool)

(declare-fun tp!1532041 () Bool)

(declare-fun tp!1532039 () Bool)

(assert (=> b!5552899 (= e!3429663 (and tp!1532041 tp!1532039))))

(declare-fun b!5552900 () Bool)

(declare-fun tp!1532038 () Bool)

(assert (=> b!5552900 (= e!3429663 tp!1532038)))

(declare-fun b!5552898 () Bool)

(assert (=> b!5552898 (= e!3429663 tp_is_empty!40323)))

(declare-fun b!5552901 () Bool)

(declare-fun tp!1532040 () Bool)

(declare-fun tp!1532042 () Bool)

(assert (=> b!5552901 (= e!3429663 (and tp!1532040 tp!1532042))))

(assert (= (and b!5552206 ((_ is ElementMatch!15535) (regTwo!31582 r!7292))) b!5552898))

(assert (= (and b!5552206 ((_ is Concat!24380) (regTwo!31582 r!7292))) b!5552899))

(assert (= (and b!5552206 ((_ is Star!15535) (regTwo!31582 r!7292))) b!5552900))

(assert (= (and b!5552206 ((_ is Union!15535) (regTwo!31582 r!7292))) b!5552901))

(declare-fun b!5552909 () Bool)

(declare-fun e!3429669 () Bool)

(declare-fun tp!1532047 () Bool)

(assert (=> b!5552909 (= e!3429669 tp!1532047)))

(declare-fun e!3429668 () Bool)

(declare-fun tp!1532048 () Bool)

(declare-fun b!5552908 () Bool)

(assert (=> b!5552908 (= e!3429668 (and (inv!82084 (h!69229 (t!376168 zl!343))) e!3429669 tp!1532048))))

(assert (=> b!5552204 (= tp!1531941 e!3429668)))

(assert (= b!5552908 b!5552909))

(assert (= (and b!5552204 ((_ is Cons!62781) (t!376168 zl!343))) b!5552908))

(declare-fun m!6545984 () Bool)

(assert (=> b!5552908 m!6545984))

(declare-fun b!5552914 () Bool)

(declare-fun e!3429672 () Bool)

(declare-fun tp!1532051 () Bool)

(assert (=> b!5552914 (= e!3429672 (and tp_is_empty!40323 tp!1532051))))

(assert (=> b!5552205 (= tp!1531936 e!3429672)))

(assert (= (and b!5552205 ((_ is Cons!62782) (t!376169 s!2326))) b!5552914))

(declare-fun condSetEmpty!36937 () Bool)

(assert (=> setNonEmpty!36931 (= condSetEmpty!36937 (= setRest!36931 ((as const (Array Context!9838 Bool)) false)))))

(declare-fun setRes!36937 () Bool)

(assert (=> setNonEmpty!36931 (= tp!1531942 setRes!36937)))

(declare-fun setIsEmpty!36937 () Bool)

(assert (=> setIsEmpty!36937 setRes!36937))

(declare-fun setElem!36937 () Context!9838)

(declare-fun e!3429675 () Bool)

(declare-fun tp!1532057 () Bool)

(declare-fun setNonEmpty!36937 () Bool)

(assert (=> setNonEmpty!36937 (= setRes!36937 (and tp!1532057 (inv!82084 setElem!36937) e!3429675))))

(declare-fun setRest!36937 () (InoxSet Context!9838))

(assert (=> setNonEmpty!36937 (= setRest!36931 ((_ map or) (store ((as const (Array Context!9838 Bool)) false) setElem!36937 true) setRest!36937))))

(declare-fun b!5552919 () Bool)

(declare-fun tp!1532056 () Bool)

(assert (=> b!5552919 (= e!3429675 tp!1532056)))

(assert (= (and setNonEmpty!36931 condSetEmpty!36937) setIsEmpty!36937))

(assert (= (and setNonEmpty!36931 (not condSetEmpty!36937)) setNonEmpty!36937))

(assert (= setNonEmpty!36937 b!5552919))

(declare-fun m!6545986 () Bool)

(assert (=> setNonEmpty!36937 m!6545986))

(declare-fun b!5552920 () Bool)

(declare-fun e!3429676 () Bool)

(declare-fun tp!1532058 () Bool)

(declare-fun tp!1532059 () Bool)

(assert (=> b!5552920 (= e!3429676 (and tp!1532058 tp!1532059))))

(assert (=> b!5552208 (= tp!1531934 e!3429676)))

(assert (= (and b!5552208 ((_ is Cons!62780) (exprs!5419 setElem!36931))) b!5552920))

(declare-fun b_lambda!210913 () Bool)

(assert (= b_lambda!210907 (or b!5552210 b_lambda!210913)))

(declare-fun bs!1286278 () Bool)

(declare-fun d!1757881 () Bool)

(assert (= bs!1286278 (and d!1757881 b!5552210)))

(assert (=> bs!1286278 (= (dynLambda!24553 lambda!297813 (h!69229 zl!343)) (derivationStepZipperUp!803 (h!69229 zl!343) (h!69230 s!2326)))))

(assert (=> bs!1286278 m!6545516))

(assert (=> d!1757781 d!1757881))

(check-sat (not b!5552815) (not b!5552840) (not b!5552396) (not b!5552866) (not b!5552374) (not b!5552347) (not b!5552785) (not b!5552862) (not b!5552478) (not b!5552919) (not bm!413877) (not d!1757865) (not b!5552759) (not d!1757847) (not b!5552895) (not b!5552859) (not b!5552624) (not b!5552897) (not d!1757873) (not b!5552752) (not b!5552748) (not bm!413886) (not b!5552427) (not d!1757863) tp_is_empty!40323 (not bm!413836) (not b!5552860) (not b!5552786) (not b!5552377) (not b!5552908) (not b!5552858) (not b!5552480) (not b!5552841) (not b!5552920) (not d!1757871) (not b!5552884) (not setNonEmpty!36937) (not b!5552900) (not b!5552782) (not b!5552883) (not d!1757853) (not d!1757835) (not d!1757827) (not d!1757789) (not b!5552914) (not b!5552749) (not b!5552784) (not b!5552878) (not b!5552879) (not d!1757831) (not b!5552893) (not b!5552482) (not b!5552486) (not bm!413885) (not b!5552842) (not b!5552750) (not b!5552399) (not b!5552861) (not d!1757781) (not b!5552846) (not b!5552855) (not d!1757805) (not b!5552845) (not b!5552863) (not b!5552843) (not d!1757869) (not b!5552844) (not b!5552389) (not d!1757867) (not b!5552896) (not b!5552899) (not d!1757839) (not d!1757861) (not b!5552780) (not bm!413835) (not b!5552789) (not d!1757809) (not d!1757829) (not b!5552886) (not b!5552485) (not b!5552909) (not b!5552888) (not bm!413874) (not bm!413828) (not d!1757797) (not b!5552882) (not b_lambda!210913) (not b!5552901) (not d!1757859) (not bm!413834) (not bm!413827) (not d!1757851) (not b!5552787) (not b!5552851) (not b!5552631) (not b!5552857) (not d!1757811) (not bs!1286278) (not b!5552758) (not d!1757875) (not bm!413873) (not b!5552392) (not b!5552856) (not bm!413831) (not d!1757855) (not b!5552887) (not b!5552479) (not d!1757801) (not b!5552428) (not b!5552880))
(check-sat)
(get-model)

(declare-fun d!1757883 () Bool)

(assert (=> d!1757883 (= (head!11857 s!2326) (h!69230 s!2326))))

(assert (=> b!5552750 d!1757883))

(assert (=> b!5552855 d!1757809))

(declare-fun b!5552921 () Bool)

(declare-fun e!3429680 () Bool)

(declare-fun call!413894 () Bool)

(assert (=> b!5552921 (= e!3429680 call!413894)))

(declare-fun d!1757885 () Bool)

(declare-fun res!2360448 () Bool)

(declare-fun e!3429679 () Bool)

(assert (=> d!1757885 (=> res!2360448 e!3429679)))

(assert (=> d!1757885 (= res!2360448 ((_ is ElementMatch!15535) lt!2250593))))

(assert (=> d!1757885 (= (validRegex!7271 lt!2250593) e!3429679)))

(declare-fun b!5552922 () Bool)

(declare-fun res!2360450 () Bool)

(declare-fun e!3429678 () Bool)

(assert (=> b!5552922 (=> res!2360450 e!3429678)))

(assert (=> b!5552922 (= res!2360450 (not ((_ is Concat!24380) lt!2250593)))))

(declare-fun e!3429677 () Bool)

(assert (=> b!5552922 (= e!3429677 e!3429678)))

(declare-fun b!5552923 () Bool)

(declare-fun e!3429681 () Bool)

(assert (=> b!5552923 (= e!3429681 e!3429677)))

(declare-fun c!972030 () Bool)

(assert (=> b!5552923 (= c!972030 ((_ is Union!15535) lt!2250593))))

(declare-fun b!5552924 () Bool)

(declare-fun e!3429682 () Bool)

(declare-fun call!413892 () Bool)

(assert (=> b!5552924 (= e!3429682 call!413892)))

(declare-fun bm!413887 () Bool)

(assert (=> bm!413887 (= call!413894 call!413892)))

(declare-fun b!5552925 () Bool)

(declare-fun res!2360447 () Bool)

(assert (=> b!5552925 (=> (not res!2360447) (not e!3429680))))

(declare-fun call!413893 () Bool)

(assert (=> b!5552925 (= res!2360447 call!413893)))

(assert (=> b!5552925 (= e!3429677 e!3429680)))

(declare-fun bm!413888 () Bool)

(assert (=> bm!413888 (= call!413893 (validRegex!7271 (ite c!972030 (regOne!31583 lt!2250593) (regOne!31582 lt!2250593))))))

(declare-fun bm!413889 () Bool)

(declare-fun c!972031 () Bool)

(assert (=> bm!413889 (= call!413892 (validRegex!7271 (ite c!972031 (reg!15864 lt!2250593) (ite c!972030 (regTwo!31583 lt!2250593) (regTwo!31582 lt!2250593)))))))

(declare-fun b!5552926 () Bool)

(declare-fun e!3429683 () Bool)

(assert (=> b!5552926 (= e!3429678 e!3429683)))

(declare-fun res!2360449 () Bool)

(assert (=> b!5552926 (=> (not res!2360449) (not e!3429683))))

(assert (=> b!5552926 (= res!2360449 call!413893)))

(declare-fun b!5552927 () Bool)

(assert (=> b!5552927 (= e!3429683 call!413894)))

(declare-fun b!5552928 () Bool)

(assert (=> b!5552928 (= e!3429681 e!3429682)))

(declare-fun res!2360451 () Bool)

(assert (=> b!5552928 (= res!2360451 (not (nullable!5567 (reg!15864 lt!2250593))))))

(assert (=> b!5552928 (=> (not res!2360451) (not e!3429682))))

(declare-fun b!5552929 () Bool)

(assert (=> b!5552929 (= e!3429679 e!3429681)))

(assert (=> b!5552929 (= c!972031 ((_ is Star!15535) lt!2250593))))

(assert (= (and d!1757885 (not res!2360448)) b!5552929))

(assert (= (and b!5552929 c!972031) b!5552928))

(assert (= (and b!5552929 (not c!972031)) b!5552923))

(assert (= (and b!5552928 res!2360451) b!5552924))

(assert (= (and b!5552923 c!972030) b!5552925))

(assert (= (and b!5552923 (not c!972030)) b!5552922))

(assert (= (and b!5552925 res!2360447) b!5552921))

(assert (= (and b!5552922 (not res!2360450)) b!5552926))

(assert (= (and b!5552926 res!2360449) b!5552927))

(assert (= (or b!5552921 b!5552927) bm!413887))

(assert (= (or b!5552925 b!5552926) bm!413888))

(assert (= (or b!5552924 bm!413887) bm!413889))

(declare-fun m!6545988 () Bool)

(assert (=> bm!413888 m!6545988))

(declare-fun m!6545990 () Bool)

(assert (=> bm!413889 m!6545990))

(declare-fun m!6545992 () Bool)

(assert (=> b!5552928 m!6545992))

(assert (=> d!1757853 d!1757885))

(declare-fun d!1757887 () Bool)

(declare-fun res!2360456 () Bool)

(declare-fun e!3429688 () Bool)

(assert (=> d!1757887 (=> res!2360456 e!3429688)))

(assert (=> d!1757887 (= res!2360456 ((_ is Nil!62780) (exprs!5419 (h!69229 zl!343))))))

(assert (=> d!1757887 (= (forall!14709 (exprs!5419 (h!69229 zl!343)) lambda!297865) e!3429688)))

(declare-fun b!5552934 () Bool)

(declare-fun e!3429689 () Bool)

(assert (=> b!5552934 (= e!3429688 e!3429689)))

(declare-fun res!2360457 () Bool)

(assert (=> b!5552934 (=> (not res!2360457) (not e!3429689))))

(declare-fun dynLambda!24555 (Int Regex!15535) Bool)

(assert (=> b!5552934 (= res!2360457 (dynLambda!24555 lambda!297865 (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5552935 () Bool)

(assert (=> b!5552935 (= e!3429689 (forall!14709 (t!376167 (exprs!5419 (h!69229 zl!343))) lambda!297865))))

(assert (= (and d!1757887 (not res!2360456)) b!5552934))

(assert (= (and b!5552934 res!2360457) b!5552935))

(declare-fun b_lambda!210915 () Bool)

(assert (=> (not b_lambda!210915) (not b!5552934)))

(declare-fun m!6545994 () Bool)

(assert (=> b!5552934 m!6545994))

(declare-fun m!6545996 () Bool)

(assert (=> b!5552935 m!6545996))

(assert (=> d!1757853 d!1757887))

(declare-fun d!1757889 () Bool)

(declare-fun lambda!297878 () Int)

(declare-fun exists!2150 ((InoxSet Context!9838) Int) Bool)

(assert (=> d!1757889 (= (nullableZipper!1543 lt!2250512) (exists!2150 lt!2250512 lambda!297878))))

(declare-fun bs!1286279 () Bool)

(assert (= bs!1286279 d!1757889))

(declare-fun m!6545998 () Bool)

(assert (=> bs!1286279 m!6545998))

(assert (=> b!5552858 d!1757889))

(declare-fun d!1757891 () Bool)

(assert (=> d!1757891 (= (nullable!5567 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (nullableFct!1684 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))

(declare-fun bs!1286280 () Bool)

(assert (= bs!1286280 d!1757891))

(declare-fun m!6546000 () Bool)

(assert (=> bs!1286280 m!6546000))

(assert (=> b!5552399 d!1757891))

(declare-fun bm!413890 () Bool)

(declare-fun call!413899 () (InoxSet Context!9838))

(declare-fun call!413895 () (InoxSet Context!9838))

(assert (=> bm!413890 (= call!413899 call!413895)))

(declare-fun b!5552936 () Bool)

(declare-fun e!3429690 () (InoxSet Context!9838))

(declare-fun call!413900 () (InoxSet Context!9838))

(assert (=> b!5552936 (= e!3429690 call!413900)))

(declare-fun c!972035 () Bool)

(declare-fun c!972036 () Bool)

(declare-fun call!413898 () List!62904)

(declare-fun bm!413891 () Bool)

(assert (=> bm!413891 (= call!413898 ($colon$colon!1605 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 lt!2250513)))) (ite (or c!972036 c!972035) (regTwo!31582 (h!69228 (exprs!5419 lt!2250513))) (h!69228 (exprs!5419 lt!2250513)))))))

(declare-fun call!413897 () List!62904)

(declare-fun c!972037 () Bool)

(declare-fun bm!413892 () Bool)

(assert (=> bm!413892 (= call!413895 (derivationStepZipperDown!877 (ite c!972037 (regTwo!31583 (h!69228 (exprs!5419 lt!2250513))) (ite c!972036 (regTwo!31582 (h!69228 (exprs!5419 lt!2250513))) (ite c!972035 (regOne!31582 (h!69228 (exprs!5419 lt!2250513))) (reg!15864 (h!69228 (exprs!5419 lt!2250513)))))) (ite (or c!972037 c!972036) (Context!9839 (t!376167 (exprs!5419 lt!2250513))) (Context!9839 call!413897)) (h!69230 s!2326)))))

(declare-fun bm!413894 () Bool)

(assert (=> bm!413894 (= call!413900 call!413899)))

(declare-fun call!413896 () (InoxSet Context!9838))

(declare-fun bm!413895 () Bool)

(assert (=> bm!413895 (= call!413896 (derivationStepZipperDown!877 (ite c!972037 (regOne!31583 (h!69228 (exprs!5419 lt!2250513))) (regOne!31582 (h!69228 (exprs!5419 lt!2250513)))) (ite c!972037 (Context!9839 (t!376167 (exprs!5419 lt!2250513))) (Context!9839 call!413898)) (h!69230 s!2326)))))

(declare-fun b!5552937 () Bool)

(declare-fun e!3429691 () (InoxSet Context!9838))

(declare-fun e!3429694 () (InoxSet Context!9838))

(assert (=> b!5552937 (= e!3429691 e!3429694)))

(assert (=> b!5552937 (= c!972037 ((_ is Union!15535) (h!69228 (exprs!5419 lt!2250513))))))

(declare-fun b!5552938 () Bool)

(assert (=> b!5552938 (= e!3429691 (store ((as const (Array Context!9838 Bool)) false) (Context!9839 (t!376167 (exprs!5419 lt!2250513))) true))))

(declare-fun b!5552939 () Bool)

(assert (=> b!5552939 (= e!3429690 ((as const (Array Context!9838 Bool)) false))))

(declare-fun b!5552940 () Bool)

(declare-fun e!3429692 () Bool)

(assert (=> b!5552940 (= e!3429692 (nullable!5567 (regOne!31582 (h!69228 (exprs!5419 lt!2250513)))))))

(declare-fun b!5552941 () Bool)

(assert (=> b!5552941 (= c!972036 e!3429692)))

(declare-fun res!2360458 () Bool)

(assert (=> b!5552941 (=> (not res!2360458) (not e!3429692))))

(assert (=> b!5552941 (= res!2360458 ((_ is Concat!24380) (h!69228 (exprs!5419 lt!2250513))))))

(declare-fun e!3429695 () (InoxSet Context!9838))

(assert (=> b!5552941 (= e!3429694 e!3429695)))

(declare-fun b!5552942 () Bool)

(assert (=> b!5552942 (= e!3429695 ((_ map or) call!413896 call!413899))))

(declare-fun b!5552943 () Bool)

(declare-fun e!3429693 () (InoxSet Context!9838))

(assert (=> b!5552943 (= e!3429693 call!413900)))

(declare-fun b!5552944 () Bool)

(assert (=> b!5552944 (= e!3429694 ((_ map or) call!413896 call!413895))))

(declare-fun d!1757893 () Bool)

(declare-fun c!972038 () Bool)

(assert (=> d!1757893 (= c!972038 (and ((_ is ElementMatch!15535) (h!69228 (exprs!5419 lt!2250513))) (= (c!971841 (h!69228 (exprs!5419 lt!2250513))) (h!69230 s!2326))))))

(assert (=> d!1757893 (= (derivationStepZipperDown!877 (h!69228 (exprs!5419 lt!2250513)) (Context!9839 (t!376167 (exprs!5419 lt!2250513))) (h!69230 s!2326)) e!3429691)))

(declare-fun bm!413893 () Bool)

(assert (=> bm!413893 (= call!413897 call!413898)))

(declare-fun b!5552945 () Bool)

(assert (=> b!5552945 (= e!3429695 e!3429693)))

(assert (=> b!5552945 (= c!972035 ((_ is Concat!24380) (h!69228 (exprs!5419 lt!2250513))))))

(declare-fun b!5552946 () Bool)

(declare-fun c!972034 () Bool)

(assert (=> b!5552946 (= c!972034 ((_ is Star!15535) (h!69228 (exprs!5419 lt!2250513))))))

(assert (=> b!5552946 (= e!3429693 e!3429690)))

(assert (= (and d!1757893 c!972038) b!5552938))

(assert (= (and d!1757893 (not c!972038)) b!5552937))

(assert (= (and b!5552937 c!972037) b!5552944))

(assert (= (and b!5552937 (not c!972037)) b!5552941))

(assert (= (and b!5552941 res!2360458) b!5552940))

(assert (= (and b!5552941 c!972036) b!5552942))

(assert (= (and b!5552941 (not c!972036)) b!5552945))

(assert (= (and b!5552945 c!972035) b!5552943))

(assert (= (and b!5552945 (not c!972035)) b!5552946))

(assert (= (and b!5552946 c!972034) b!5552936))

(assert (= (and b!5552946 (not c!972034)) b!5552939))

(assert (= (or b!5552943 b!5552936) bm!413893))

(assert (= (or b!5552943 b!5552936) bm!413894))

(assert (= (or b!5552942 bm!413893) bm!413891))

(assert (= (or b!5552942 bm!413894) bm!413890))

(assert (= (or b!5552944 bm!413890) bm!413892))

(assert (= (or b!5552944 b!5552942) bm!413895))

(declare-fun m!6546002 () Bool)

(assert (=> b!5552940 m!6546002))

(declare-fun m!6546004 () Bool)

(assert (=> bm!413895 m!6546004))

(declare-fun m!6546006 () Bool)

(assert (=> bm!413891 m!6546006))

(declare-fun m!6546008 () Bool)

(assert (=> bm!413892 m!6546008))

(declare-fun m!6546010 () Bool)

(assert (=> b!5552938 m!6546010))

(assert (=> bm!413835 d!1757893))

(declare-fun d!1757895 () Bool)

(assert (=> d!1757895 (= (isEmptyLang!1110 lt!2250596) ((_ is EmptyLang!15535) lt!2250596))))

(assert (=> b!5552846 d!1757895))

(declare-fun d!1757897 () Bool)

(assert (=> d!1757897 true))

(assert (=> d!1757897 true))

(declare-fun res!2360461 () Bool)

(assert (=> d!1757897 (= (choose!42109 lambda!297812) res!2360461)))

(assert (=> d!1757829 d!1757897))

(declare-fun d!1757899 () Bool)

(assert (=> d!1757899 (= (isEmpty!34576 (t!376169 s!2326)) ((_ is Nil!62782) (t!376169 s!2326)))))

(assert (=> d!1757873 d!1757899))

(declare-fun d!1757901 () Bool)

(assert (=> d!1757901 (= (isDefined!12247 lt!2250566) (not (isEmpty!34577 lt!2250566)))))

(declare-fun bs!1286281 () Bool)

(assert (= bs!1286281 d!1757901))

(declare-fun m!6546012 () Bool)

(assert (=> bs!1286281 m!6546012))

(assert (=> d!1757811 d!1757901))

(declare-fun b!5552948 () Bool)

(declare-fun e!3429697 () Bool)

(declare-fun e!3429696 () Bool)

(assert (=> b!5552948 (= e!3429697 e!3429696)))

(declare-fun c!972039 () Bool)

(assert (=> b!5552948 (= c!972039 ((_ is EmptyLang!15535) (regOne!31582 r!7292)))))

(declare-fun b!5552949 () Bool)

(declare-fun res!2360463 () Bool)

(declare-fun e!3429701 () Bool)

(assert (=> b!5552949 (=> (not res!2360463) (not e!3429701))))

(assert (=> b!5552949 (= res!2360463 (isEmpty!34576 (tail!10952 Nil!62782)))))

(declare-fun b!5552950 () Bool)

(declare-fun res!2360465 () Bool)

(declare-fun e!3429700 () Bool)

(assert (=> b!5552950 (=> res!2360465 e!3429700)))

(assert (=> b!5552950 (= res!2360465 (not (isEmpty!34576 (tail!10952 Nil!62782))))))

(declare-fun b!5552951 () Bool)

(assert (=> b!5552951 (= e!3429700 (not (= (head!11857 Nil!62782) (c!971841 (regOne!31582 r!7292)))))))

(declare-fun b!5552952 () Bool)

(declare-fun res!2360469 () Bool)

(declare-fun e!3429699 () Bool)

(assert (=> b!5552952 (=> res!2360469 e!3429699)))

(assert (=> b!5552952 (= res!2360469 (not ((_ is ElementMatch!15535) (regOne!31582 r!7292))))))

(assert (=> b!5552952 (= e!3429696 e!3429699)))

(declare-fun b!5552953 () Bool)

(declare-fun e!3429698 () Bool)

(assert (=> b!5552953 (= e!3429698 (matchR!7720 (derivativeStep!4391 (regOne!31582 r!7292) (head!11857 Nil!62782)) (tail!10952 Nil!62782)))))

(declare-fun b!5552954 () Bool)

(declare-fun e!3429702 () Bool)

(assert (=> b!5552954 (= e!3429699 e!3429702)))

(declare-fun res!2360462 () Bool)

(assert (=> b!5552954 (=> (not res!2360462) (not e!3429702))))

(declare-fun lt!2250606 () Bool)

(assert (=> b!5552954 (= res!2360462 (not lt!2250606))))

(declare-fun b!5552955 () Bool)

(declare-fun call!413901 () Bool)

(assert (=> b!5552955 (= e!3429697 (= lt!2250606 call!413901))))

(declare-fun bm!413896 () Bool)

(assert (=> bm!413896 (= call!413901 (isEmpty!34576 Nil!62782))))

(declare-fun b!5552956 () Bool)

(declare-fun res!2360467 () Bool)

(assert (=> b!5552956 (=> (not res!2360467) (not e!3429701))))

(assert (=> b!5552956 (= res!2360467 (not call!413901))))

(declare-fun d!1757903 () Bool)

(assert (=> d!1757903 e!3429697))

(declare-fun c!972040 () Bool)

(assert (=> d!1757903 (= c!972040 ((_ is EmptyExpr!15535) (regOne!31582 r!7292)))))

(assert (=> d!1757903 (= lt!2250606 e!3429698)))

(declare-fun c!972041 () Bool)

(assert (=> d!1757903 (= c!972041 (isEmpty!34576 Nil!62782))))

(assert (=> d!1757903 (validRegex!7271 (regOne!31582 r!7292))))

(assert (=> d!1757903 (= (matchR!7720 (regOne!31582 r!7292) Nil!62782) lt!2250606)))

(declare-fun b!5552947 () Bool)

(declare-fun res!2360464 () Bool)

(assert (=> b!5552947 (=> res!2360464 e!3429699)))

(assert (=> b!5552947 (= res!2360464 e!3429701)))

(declare-fun res!2360468 () Bool)

(assert (=> b!5552947 (=> (not res!2360468) (not e!3429701))))

(assert (=> b!5552947 (= res!2360468 lt!2250606)))

(declare-fun b!5552957 () Bool)

(assert (=> b!5552957 (= e!3429702 e!3429700)))

(declare-fun res!2360466 () Bool)

(assert (=> b!5552957 (=> res!2360466 e!3429700)))

(assert (=> b!5552957 (= res!2360466 call!413901)))

(declare-fun b!5552958 () Bool)

(assert (=> b!5552958 (= e!3429696 (not lt!2250606))))

(declare-fun b!5552959 () Bool)

(assert (=> b!5552959 (= e!3429698 (nullable!5567 (regOne!31582 r!7292)))))

(declare-fun b!5552960 () Bool)

(assert (=> b!5552960 (= e!3429701 (= (head!11857 Nil!62782) (c!971841 (regOne!31582 r!7292))))))

(assert (= (and d!1757903 c!972041) b!5552959))

(assert (= (and d!1757903 (not c!972041)) b!5552953))

(assert (= (and d!1757903 c!972040) b!5552955))

(assert (= (and d!1757903 (not c!972040)) b!5552948))

(assert (= (and b!5552948 c!972039) b!5552958))

(assert (= (and b!5552948 (not c!972039)) b!5552952))

(assert (= (and b!5552952 (not res!2360469)) b!5552947))

(assert (= (and b!5552947 res!2360468) b!5552956))

(assert (= (and b!5552956 res!2360467) b!5552949))

(assert (= (and b!5552949 res!2360463) b!5552960))

(assert (= (and b!5552947 (not res!2360464)) b!5552954))

(assert (= (and b!5552954 res!2360462) b!5552957))

(assert (= (and b!5552957 (not res!2360466)) b!5552950))

(assert (= (and b!5552950 (not res!2360465)) b!5552951))

(assert (= (or b!5552955 b!5552956 b!5552957) bm!413896))

(declare-fun m!6546014 () Bool)

(assert (=> b!5552960 m!6546014))

(assert (=> b!5552953 m!6546014))

(assert (=> b!5552953 m!6546014))

(declare-fun m!6546016 () Bool)

(assert (=> b!5552953 m!6546016))

(declare-fun m!6546018 () Bool)

(assert (=> b!5552953 m!6546018))

(assert (=> b!5552953 m!6546016))

(assert (=> b!5552953 m!6546018))

(declare-fun m!6546020 () Bool)

(assert (=> b!5552953 m!6546020))

(assert (=> b!5552951 m!6546014))

(assert (=> b!5552949 m!6546018))

(assert (=> b!5552949 m!6546018))

(declare-fun m!6546022 () Bool)

(assert (=> b!5552949 m!6546022))

(declare-fun m!6546024 () Bool)

(assert (=> d!1757903 m!6546024))

(assert (=> d!1757903 m!6545792))

(assert (=> b!5552950 m!6546018))

(assert (=> b!5552950 m!6546018))

(assert (=> b!5552950 m!6546022))

(assert (=> bm!413896 m!6546024))

(declare-fun m!6546026 () Bool)

(assert (=> b!5552959 m!6546026))

(assert (=> d!1757811 d!1757903))

(declare-fun b!5552961 () Bool)

(declare-fun e!3429706 () Bool)

(declare-fun call!413904 () Bool)

(assert (=> b!5552961 (= e!3429706 call!413904)))

(declare-fun d!1757905 () Bool)

(declare-fun res!2360471 () Bool)

(declare-fun e!3429705 () Bool)

(assert (=> d!1757905 (=> res!2360471 e!3429705)))

(assert (=> d!1757905 (= res!2360471 ((_ is ElementMatch!15535) (regOne!31582 r!7292)))))

(assert (=> d!1757905 (= (validRegex!7271 (regOne!31582 r!7292)) e!3429705)))

(declare-fun b!5552962 () Bool)

(declare-fun res!2360473 () Bool)

(declare-fun e!3429704 () Bool)

(assert (=> b!5552962 (=> res!2360473 e!3429704)))

(assert (=> b!5552962 (= res!2360473 (not ((_ is Concat!24380) (regOne!31582 r!7292))))))

(declare-fun e!3429703 () Bool)

(assert (=> b!5552962 (= e!3429703 e!3429704)))

(declare-fun b!5552963 () Bool)

(declare-fun e!3429707 () Bool)

(assert (=> b!5552963 (= e!3429707 e!3429703)))

(declare-fun c!972042 () Bool)

(assert (=> b!5552963 (= c!972042 ((_ is Union!15535) (regOne!31582 r!7292)))))

(declare-fun b!5552964 () Bool)

(declare-fun e!3429708 () Bool)

(declare-fun call!413902 () Bool)

(assert (=> b!5552964 (= e!3429708 call!413902)))

(declare-fun bm!413897 () Bool)

(assert (=> bm!413897 (= call!413904 call!413902)))

(declare-fun b!5552965 () Bool)

(declare-fun res!2360470 () Bool)

(assert (=> b!5552965 (=> (not res!2360470) (not e!3429706))))

(declare-fun call!413903 () Bool)

(assert (=> b!5552965 (= res!2360470 call!413903)))

(assert (=> b!5552965 (= e!3429703 e!3429706)))

(declare-fun bm!413898 () Bool)

(assert (=> bm!413898 (= call!413903 (validRegex!7271 (ite c!972042 (regOne!31583 (regOne!31582 r!7292)) (regOne!31582 (regOne!31582 r!7292)))))))

(declare-fun bm!413899 () Bool)

(declare-fun c!972043 () Bool)

(assert (=> bm!413899 (= call!413902 (validRegex!7271 (ite c!972043 (reg!15864 (regOne!31582 r!7292)) (ite c!972042 (regTwo!31583 (regOne!31582 r!7292)) (regTwo!31582 (regOne!31582 r!7292))))))))

(declare-fun b!5552966 () Bool)

(declare-fun e!3429709 () Bool)

(assert (=> b!5552966 (= e!3429704 e!3429709)))

(declare-fun res!2360472 () Bool)

(assert (=> b!5552966 (=> (not res!2360472) (not e!3429709))))

(assert (=> b!5552966 (= res!2360472 call!413903)))

(declare-fun b!5552967 () Bool)

(assert (=> b!5552967 (= e!3429709 call!413904)))

(declare-fun b!5552968 () Bool)

(assert (=> b!5552968 (= e!3429707 e!3429708)))

(declare-fun res!2360474 () Bool)

(assert (=> b!5552968 (= res!2360474 (not (nullable!5567 (reg!15864 (regOne!31582 r!7292)))))))

(assert (=> b!5552968 (=> (not res!2360474) (not e!3429708))))

(declare-fun b!5552969 () Bool)

(assert (=> b!5552969 (= e!3429705 e!3429707)))

(assert (=> b!5552969 (= c!972043 ((_ is Star!15535) (regOne!31582 r!7292)))))

(assert (= (and d!1757905 (not res!2360471)) b!5552969))

(assert (= (and b!5552969 c!972043) b!5552968))

(assert (= (and b!5552969 (not c!972043)) b!5552963))

(assert (= (and b!5552968 res!2360474) b!5552964))

(assert (= (and b!5552963 c!972042) b!5552965))

(assert (= (and b!5552963 (not c!972042)) b!5552962))

(assert (= (and b!5552965 res!2360470) b!5552961))

(assert (= (and b!5552962 (not res!2360473)) b!5552966))

(assert (= (and b!5552966 res!2360472) b!5552967))

(assert (= (or b!5552961 b!5552967) bm!413897))

(assert (= (or b!5552965 b!5552966) bm!413898))

(assert (= (or b!5552964 bm!413897) bm!413899))

(declare-fun m!6546028 () Bool)

(assert (=> bm!413898 m!6546028))

(declare-fun m!6546030 () Bool)

(assert (=> bm!413899 m!6546030))

(declare-fun m!6546032 () Bool)

(assert (=> b!5552968 m!6546032))

(assert (=> d!1757811 d!1757905))

(declare-fun d!1757907 () Bool)

(assert (=> d!1757907 (= (isEmpty!34576 (tail!10952 s!2326)) ((_ is Nil!62782) (tail!10952 s!2326)))))

(assert (=> b!5552748 d!1757907))

(declare-fun d!1757909 () Bool)

(assert (=> d!1757909 (= (tail!10952 s!2326) (t!376169 s!2326))))

(assert (=> b!5552748 d!1757909))

(declare-fun d!1757911 () Bool)

(declare-fun e!3429714 () Bool)

(assert (=> d!1757911 e!3429714))

(declare-fun res!2360480 () Bool)

(assert (=> d!1757911 (=> (not res!2360480) (not e!3429714))))

(declare-fun lt!2250609 () List!62906)

(declare-fun content!11303 (List!62906) (InoxSet C!31340))

(assert (=> d!1757911 (= res!2360480 (= (content!11303 lt!2250609) ((_ map or) (content!11303 (_1!35935 (get!21609 lt!2250566))) (content!11303 (_2!35935 (get!21609 lt!2250566))))))))

(declare-fun e!3429715 () List!62906)

(assert (=> d!1757911 (= lt!2250609 e!3429715)))

(declare-fun c!972046 () Bool)

(assert (=> d!1757911 (= c!972046 ((_ is Nil!62782) (_1!35935 (get!21609 lt!2250566))))))

(assert (=> d!1757911 (= (++!13774 (_1!35935 (get!21609 lt!2250566)) (_2!35935 (get!21609 lt!2250566))) lt!2250609)))

(declare-fun b!5552979 () Bool)

(assert (=> b!5552979 (= e!3429715 (Cons!62782 (h!69230 (_1!35935 (get!21609 lt!2250566))) (++!13774 (t!376169 (_1!35935 (get!21609 lt!2250566))) (_2!35935 (get!21609 lt!2250566)))))))

(declare-fun b!5552980 () Bool)

(declare-fun res!2360479 () Bool)

(assert (=> b!5552980 (=> (not res!2360479) (not e!3429714))))

(declare-fun size!39949 (List!62906) Int)

(assert (=> b!5552980 (= res!2360479 (= (size!39949 lt!2250609) (+ (size!39949 (_1!35935 (get!21609 lt!2250566))) (size!39949 (_2!35935 (get!21609 lt!2250566))))))))

(declare-fun b!5552981 () Bool)

(assert (=> b!5552981 (= e!3429714 (or (not (= (_2!35935 (get!21609 lt!2250566)) Nil!62782)) (= lt!2250609 (_1!35935 (get!21609 lt!2250566)))))))

(declare-fun b!5552978 () Bool)

(assert (=> b!5552978 (= e!3429715 (_2!35935 (get!21609 lt!2250566)))))

(assert (= (and d!1757911 c!972046) b!5552978))

(assert (= (and d!1757911 (not c!972046)) b!5552979))

(assert (= (and d!1757911 res!2360480) b!5552980))

(assert (= (and b!5552980 res!2360479) b!5552981))

(declare-fun m!6546034 () Bool)

(assert (=> d!1757911 m!6546034))

(declare-fun m!6546036 () Bool)

(assert (=> d!1757911 m!6546036))

(declare-fun m!6546038 () Bool)

(assert (=> d!1757911 m!6546038))

(declare-fun m!6546040 () Bool)

(assert (=> b!5552979 m!6546040))

(declare-fun m!6546042 () Bool)

(assert (=> b!5552980 m!6546042))

(declare-fun m!6546044 () Bool)

(assert (=> b!5552980 m!6546044))

(declare-fun m!6546046 () Bool)

(assert (=> b!5552980 m!6546046))

(assert (=> b!5552478 d!1757911))

(declare-fun d!1757913 () Bool)

(assert (=> d!1757913 (= (get!21609 lt!2250566) (v!51582 lt!2250566))))

(assert (=> b!5552478 d!1757913))

(declare-fun d!1757915 () Bool)

(assert (=> d!1757915 (= (isEmpty!34576 s!2326) ((_ is Nil!62782) s!2326))))

(assert (=> d!1757867 d!1757915))

(assert (=> d!1757809 d!1757899))

(declare-fun d!1757917 () Bool)

(declare-fun c!972049 () Bool)

(assert (=> d!1757917 (= c!972049 ((_ is Nil!62781) lt!2250605))))

(declare-fun e!3429718 () (InoxSet Context!9838))

(assert (=> d!1757917 (= (content!11302 lt!2250605) e!3429718)))

(declare-fun b!5552986 () Bool)

(assert (=> b!5552986 (= e!3429718 ((as const (Array Context!9838 Bool)) false))))

(declare-fun b!5552987 () Bool)

(assert (=> b!5552987 (= e!3429718 ((_ map or) (store ((as const (Array Context!9838 Bool)) false) (h!69229 lt!2250605) true) (content!11302 (t!376168 lt!2250605))))))

(assert (= (and d!1757917 c!972049) b!5552986))

(assert (= (and d!1757917 (not c!972049)) b!5552987))

(declare-fun m!6546048 () Bool)

(assert (=> b!5552987 m!6546048))

(declare-fun m!6546050 () Bool)

(assert (=> b!5552987 m!6546050))

(assert (=> b!5552866 d!1757917))

(declare-fun d!1757919 () Bool)

(declare-fun c!972050 () Bool)

(assert (=> d!1757919 (= c!972050 (isEmpty!34576 (tail!10952 (t!376169 s!2326))))))

(declare-fun e!3429719 () Bool)

(assert (=> d!1757919 (= (matchZipper!1677 (derivationStepZipper!1638 lt!2250521 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))) e!3429719)))

(declare-fun b!5552988 () Bool)

(assert (=> b!5552988 (= e!3429719 (nullableZipper!1543 (derivationStepZipper!1638 lt!2250521 (head!11857 (t!376169 s!2326)))))))

(declare-fun b!5552989 () Bool)

(assert (=> b!5552989 (= e!3429719 (matchZipper!1677 (derivationStepZipper!1638 (derivationStepZipper!1638 lt!2250521 (head!11857 (t!376169 s!2326))) (head!11857 (tail!10952 (t!376169 s!2326)))) (tail!10952 (tail!10952 (t!376169 s!2326)))))))

(assert (= (and d!1757919 c!972050) b!5552988))

(assert (= (and d!1757919 (not c!972050)) b!5552989))

(assert (=> d!1757919 m!6545756))

(declare-fun m!6546052 () Bool)

(assert (=> d!1757919 m!6546052))

(assert (=> b!5552988 m!6545974))

(declare-fun m!6546054 () Bool)

(assert (=> b!5552988 m!6546054))

(assert (=> b!5552989 m!6545756))

(declare-fun m!6546056 () Bool)

(assert (=> b!5552989 m!6546056))

(assert (=> b!5552989 m!6545974))

(assert (=> b!5552989 m!6546056))

(declare-fun m!6546058 () Bool)

(assert (=> b!5552989 m!6546058))

(assert (=> b!5552989 m!6545756))

(declare-fun m!6546060 () Bool)

(assert (=> b!5552989 m!6546060))

(assert (=> b!5552989 m!6546058))

(assert (=> b!5552989 m!6546060))

(declare-fun m!6546062 () Bool)

(assert (=> b!5552989 m!6546062))

(assert (=> b!5552863 d!1757919))

(declare-fun bs!1286282 () Bool)

(declare-fun d!1757921 () Bool)

(assert (= bs!1286282 (and d!1757921 b!5552210)))

(declare-fun lambda!297879 () Int)

(assert (=> bs!1286282 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297879 lambda!297813))))

(declare-fun bs!1286283 () Bool)

(assert (= bs!1286283 (and d!1757921 d!1757789)))

(assert (=> bs!1286283 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297879 lambda!297835))))

(assert (=> d!1757921 true))

(assert (=> d!1757921 (= (derivationStepZipper!1638 lt!2250521 (head!11857 (t!376169 s!2326))) (flatMap!1148 lt!2250521 lambda!297879))))

(declare-fun bs!1286284 () Bool)

(assert (= bs!1286284 d!1757921))

(declare-fun m!6546064 () Bool)

(assert (=> bs!1286284 m!6546064))

(assert (=> b!5552863 d!1757921))

(declare-fun d!1757923 () Bool)

(assert (=> d!1757923 (= (head!11857 (t!376169 s!2326)) (h!69230 (t!376169 s!2326)))))

(assert (=> b!5552863 d!1757923))

(declare-fun d!1757925 () Bool)

(assert (=> d!1757925 (= (tail!10952 (t!376169 s!2326)) (t!376169 (t!376169 s!2326)))))

(assert (=> b!5552863 d!1757925))

(declare-fun b!5552991 () Bool)

(declare-fun e!3429721 () Bool)

(declare-fun e!3429720 () Bool)

(assert (=> b!5552991 (= e!3429721 e!3429720)))

(declare-fun c!972051 () Bool)

(assert (=> b!5552991 (= c!972051 ((_ is EmptyLang!15535) (derivativeStep!4391 r!7292 (head!11857 s!2326))))))

(declare-fun b!5552992 () Bool)

(declare-fun res!2360482 () Bool)

(declare-fun e!3429725 () Bool)

(assert (=> b!5552992 (=> (not res!2360482) (not e!3429725))))

(assert (=> b!5552992 (= res!2360482 (isEmpty!34576 (tail!10952 (tail!10952 s!2326))))))

(declare-fun b!5552993 () Bool)

(declare-fun res!2360484 () Bool)

(declare-fun e!3429724 () Bool)

(assert (=> b!5552993 (=> res!2360484 e!3429724)))

(assert (=> b!5552993 (= res!2360484 (not (isEmpty!34576 (tail!10952 (tail!10952 s!2326)))))))

(declare-fun b!5552994 () Bool)

(assert (=> b!5552994 (= e!3429724 (not (= (head!11857 (tail!10952 s!2326)) (c!971841 (derivativeStep!4391 r!7292 (head!11857 s!2326))))))))

(declare-fun b!5552995 () Bool)

(declare-fun res!2360488 () Bool)

(declare-fun e!3429723 () Bool)

(assert (=> b!5552995 (=> res!2360488 e!3429723)))

(assert (=> b!5552995 (= res!2360488 (not ((_ is ElementMatch!15535) (derivativeStep!4391 r!7292 (head!11857 s!2326)))))))

(assert (=> b!5552995 (= e!3429720 e!3429723)))

(declare-fun b!5552996 () Bool)

(declare-fun e!3429722 () Bool)

(assert (=> b!5552996 (= e!3429722 (matchR!7720 (derivativeStep!4391 (derivativeStep!4391 r!7292 (head!11857 s!2326)) (head!11857 (tail!10952 s!2326))) (tail!10952 (tail!10952 s!2326))))))

(declare-fun b!5552997 () Bool)

(declare-fun e!3429726 () Bool)

(assert (=> b!5552997 (= e!3429723 e!3429726)))

(declare-fun res!2360481 () Bool)

(assert (=> b!5552997 (=> (not res!2360481) (not e!3429726))))

(declare-fun lt!2250610 () Bool)

(assert (=> b!5552997 (= res!2360481 (not lt!2250610))))

(declare-fun b!5552998 () Bool)

(declare-fun call!413905 () Bool)

(assert (=> b!5552998 (= e!3429721 (= lt!2250610 call!413905))))

(declare-fun bm!413900 () Bool)

(assert (=> bm!413900 (= call!413905 (isEmpty!34576 (tail!10952 s!2326)))))

(declare-fun b!5552999 () Bool)

(declare-fun res!2360486 () Bool)

(assert (=> b!5552999 (=> (not res!2360486) (not e!3429725))))

(assert (=> b!5552999 (= res!2360486 (not call!413905))))

(declare-fun d!1757927 () Bool)

(assert (=> d!1757927 e!3429721))

(declare-fun c!972052 () Bool)

(assert (=> d!1757927 (= c!972052 ((_ is EmptyExpr!15535) (derivativeStep!4391 r!7292 (head!11857 s!2326))))))

(assert (=> d!1757927 (= lt!2250610 e!3429722)))

(declare-fun c!972053 () Bool)

(assert (=> d!1757927 (= c!972053 (isEmpty!34576 (tail!10952 s!2326)))))

(assert (=> d!1757927 (validRegex!7271 (derivativeStep!4391 r!7292 (head!11857 s!2326)))))

(assert (=> d!1757927 (= (matchR!7720 (derivativeStep!4391 r!7292 (head!11857 s!2326)) (tail!10952 s!2326)) lt!2250610)))

(declare-fun b!5552990 () Bool)

(declare-fun res!2360483 () Bool)

(assert (=> b!5552990 (=> res!2360483 e!3429723)))

(assert (=> b!5552990 (= res!2360483 e!3429725)))

(declare-fun res!2360487 () Bool)

(assert (=> b!5552990 (=> (not res!2360487) (not e!3429725))))

(assert (=> b!5552990 (= res!2360487 lt!2250610)))

(declare-fun b!5553000 () Bool)

(assert (=> b!5553000 (= e!3429726 e!3429724)))

(declare-fun res!2360485 () Bool)

(assert (=> b!5553000 (=> res!2360485 e!3429724)))

(assert (=> b!5553000 (= res!2360485 call!413905)))

(declare-fun b!5553001 () Bool)

(assert (=> b!5553001 (= e!3429720 (not lt!2250610))))

(declare-fun b!5553002 () Bool)

(assert (=> b!5553002 (= e!3429722 (nullable!5567 (derivativeStep!4391 r!7292 (head!11857 s!2326))))))

(declare-fun b!5553003 () Bool)

(assert (=> b!5553003 (= e!3429725 (= (head!11857 (tail!10952 s!2326)) (c!971841 (derivativeStep!4391 r!7292 (head!11857 s!2326)))))))

(assert (= (and d!1757927 c!972053) b!5553002))

(assert (= (and d!1757927 (not c!972053)) b!5552996))

(assert (= (and d!1757927 c!972052) b!5552998))

(assert (= (and d!1757927 (not c!972052)) b!5552991))

(assert (= (and b!5552991 c!972051) b!5553001))

(assert (= (and b!5552991 (not c!972051)) b!5552995))

(assert (= (and b!5552995 (not res!2360488)) b!5552990))

(assert (= (and b!5552990 res!2360487) b!5552999))

(assert (= (and b!5552999 res!2360486) b!5552992))

(assert (= (and b!5552992 res!2360482) b!5553003))

(assert (= (and b!5552990 (not res!2360483)) b!5552997))

(assert (= (and b!5552997 res!2360481) b!5553000))

(assert (= (and b!5553000 (not res!2360485)) b!5552993))

(assert (= (and b!5552993 (not res!2360484)) b!5552994))

(assert (= (or b!5552998 b!5552999 b!5553000) bm!413900))

(assert (=> b!5553003 m!6545888))

(declare-fun m!6546066 () Bool)

(assert (=> b!5553003 m!6546066))

(assert (=> b!5552996 m!6545888))

(assert (=> b!5552996 m!6546066))

(assert (=> b!5552996 m!6545886))

(assert (=> b!5552996 m!6546066))

(declare-fun m!6546068 () Bool)

(assert (=> b!5552996 m!6546068))

(assert (=> b!5552996 m!6545888))

(declare-fun m!6546070 () Bool)

(assert (=> b!5552996 m!6546070))

(assert (=> b!5552996 m!6546068))

(assert (=> b!5552996 m!6546070))

(declare-fun m!6546072 () Bool)

(assert (=> b!5552996 m!6546072))

(assert (=> b!5552994 m!6545888))

(assert (=> b!5552994 m!6546066))

(assert (=> b!5552992 m!6545888))

(assert (=> b!5552992 m!6546070))

(assert (=> b!5552992 m!6546070))

(declare-fun m!6546074 () Bool)

(assert (=> b!5552992 m!6546074))

(assert (=> d!1757927 m!6545888))

(assert (=> d!1757927 m!6545892))

(assert (=> d!1757927 m!6545886))

(declare-fun m!6546076 () Bool)

(assert (=> d!1757927 m!6546076))

(assert (=> b!5552993 m!6545888))

(assert (=> b!5552993 m!6546070))

(assert (=> b!5552993 m!6546070))

(assert (=> b!5552993 m!6546074))

(assert (=> bm!413900 m!6545888))

(assert (=> bm!413900 m!6545892))

(assert (=> b!5553002 m!6545886))

(declare-fun m!6546078 () Bool)

(assert (=> b!5553002 m!6546078))

(assert (=> b!5552752 d!1757927))

(declare-fun bm!413909 () Bool)

(declare-fun call!413914 () Regex!15535)

(declare-fun call!413916 () Regex!15535)

(assert (=> bm!413909 (= call!413914 call!413916)))

(declare-fun call!413915 () Regex!15535)

(declare-fun c!972068 () Bool)

(declare-fun bm!413910 () Bool)

(assert (=> bm!413910 (= call!413915 (derivativeStep!4391 (ite c!972068 (regOne!31583 r!7292) (regOne!31582 r!7292)) (head!11857 s!2326)))))

(declare-fun b!5553024 () Bool)

(declare-fun e!3429737 () Regex!15535)

(assert (=> b!5553024 (= e!3429737 (ite (= (head!11857 s!2326) (c!971841 r!7292)) EmptyExpr!15535 EmptyLang!15535))))

(declare-fun b!5553025 () Bool)

(declare-fun e!3429740 () Regex!15535)

(declare-fun e!3429741 () Regex!15535)

(assert (=> b!5553025 (= e!3429740 e!3429741)))

(declare-fun c!972064 () Bool)

(assert (=> b!5553025 (= c!972064 ((_ is Star!15535) r!7292))))

(declare-fun b!5553026 () Bool)

(assert (=> b!5553026 (= c!972068 ((_ is Union!15535) r!7292))))

(assert (=> b!5553026 (= e!3429737 e!3429740)))

(declare-fun b!5553027 () Bool)

(declare-fun e!3429738 () Regex!15535)

(assert (=> b!5553027 (= e!3429738 EmptyLang!15535)))

(declare-fun d!1757929 () Bool)

(declare-fun lt!2250613 () Regex!15535)

(assert (=> d!1757929 (validRegex!7271 lt!2250613)))

(assert (=> d!1757929 (= lt!2250613 e!3429738)))

(declare-fun c!972065 () Bool)

(assert (=> d!1757929 (= c!972065 (or ((_ is EmptyExpr!15535) r!7292) ((_ is EmptyLang!15535) r!7292)))))

(assert (=> d!1757929 (validRegex!7271 r!7292)))

(assert (=> d!1757929 (= (derivativeStep!4391 r!7292 (head!11857 s!2326)) lt!2250613)))

(declare-fun b!5553028 () Bool)

(assert (=> b!5553028 (= e!3429741 (Concat!24380 call!413914 r!7292))))

(declare-fun b!5553029 () Bool)

(declare-fun e!3429739 () Regex!15535)

(declare-fun call!413917 () Regex!15535)

(assert (=> b!5553029 (= e!3429739 (Union!15535 (Concat!24380 call!413917 (regTwo!31582 r!7292)) EmptyLang!15535))))

(declare-fun b!5553030 () Bool)

(assert (=> b!5553030 (= e!3429740 (Union!15535 call!413915 call!413916))))

(declare-fun b!5553031 () Bool)

(assert (=> b!5553031 (= e!3429739 (Union!15535 (Concat!24380 call!413915 (regTwo!31582 r!7292)) call!413917))))

(declare-fun bm!413911 () Bool)

(declare-fun c!972067 () Bool)

(assert (=> bm!413911 (= call!413916 (derivativeStep!4391 (ite c!972068 (regTwo!31583 r!7292) (ite c!972064 (reg!15864 r!7292) (ite c!972067 (regTwo!31582 r!7292) (regOne!31582 r!7292)))) (head!11857 s!2326)))))

(declare-fun b!5553032 () Bool)

(assert (=> b!5553032 (= c!972067 (nullable!5567 (regOne!31582 r!7292)))))

(assert (=> b!5553032 (= e!3429741 e!3429739)))

(declare-fun bm!413912 () Bool)

(assert (=> bm!413912 (= call!413917 call!413914)))

(declare-fun b!5553033 () Bool)

(assert (=> b!5553033 (= e!3429738 e!3429737)))

(declare-fun c!972066 () Bool)

(assert (=> b!5553033 (= c!972066 ((_ is ElementMatch!15535) r!7292))))

(assert (= (and d!1757929 c!972065) b!5553027))

(assert (= (and d!1757929 (not c!972065)) b!5553033))

(assert (= (and b!5553033 c!972066) b!5553024))

(assert (= (and b!5553033 (not c!972066)) b!5553026))

(assert (= (and b!5553026 c!972068) b!5553030))

(assert (= (and b!5553026 (not c!972068)) b!5553025))

(assert (= (and b!5553025 c!972064) b!5553028))

(assert (= (and b!5553025 (not c!972064)) b!5553032))

(assert (= (and b!5553032 c!972067) b!5553031))

(assert (= (and b!5553032 (not c!972067)) b!5553029))

(assert (= (or b!5553031 b!5553029) bm!413912))

(assert (= (or b!5553028 bm!413912) bm!413909))

(assert (= (or b!5553030 bm!413909) bm!413911))

(assert (= (or b!5553030 b!5553031) bm!413910))

(assert (=> bm!413910 m!6545884))

(declare-fun m!6546080 () Bool)

(assert (=> bm!413910 m!6546080))

(declare-fun m!6546082 () Bool)

(assert (=> d!1757929 m!6546082))

(assert (=> d!1757929 m!6545576))

(assert (=> bm!413911 m!6545884))

(declare-fun m!6546084 () Bool)

(assert (=> bm!413911 m!6546084))

(assert (=> b!5553032 m!6546026))

(assert (=> b!5552752 d!1757929))

(assert (=> b!5552752 d!1757883))

(assert (=> b!5552752 d!1757909))

(assert (=> b!5552851 d!1757853))

(declare-fun bs!1286285 () Bool)

(declare-fun d!1757931 () Bool)

(assert (= bs!1286285 (and d!1757931 d!1757863)))

(declare-fun lambda!297880 () Int)

(assert (=> bs!1286285 (= lambda!297880 lambda!297875)))

(declare-fun bs!1286286 () Bool)

(assert (= bs!1286286 (and d!1757931 d!1757859)))

(assert (=> bs!1286286 (= lambda!297880 lambda!297871)))

(declare-fun bs!1286287 () Bool)

(assert (= bs!1286287 (and d!1757931 d!1757855)))

(assert (=> bs!1286287 (= lambda!297880 lambda!297868)))

(declare-fun bs!1286288 () Bool)

(assert (= bs!1286288 (and d!1757931 d!1757853)))

(assert (=> bs!1286288 (= lambda!297880 lambda!297865)))

(declare-fun bs!1286289 () Bool)

(assert (= bs!1286289 (and d!1757931 d!1757861)))

(assert (=> bs!1286289 (= lambda!297880 lambda!297874)))

(declare-fun lt!2250614 () List!62904)

(assert (=> d!1757931 (forall!14709 lt!2250614 lambda!297880)))

(declare-fun e!3429742 () List!62904)

(assert (=> d!1757931 (= lt!2250614 e!3429742)))

(declare-fun c!972069 () Bool)

(assert (=> d!1757931 (= c!972069 ((_ is Cons!62781) (t!376168 zl!343)))))

(assert (=> d!1757931 (= (unfocusZipperList!963 (t!376168 zl!343)) lt!2250614)))

(declare-fun b!5553034 () Bool)

(assert (=> b!5553034 (= e!3429742 (Cons!62780 (generalisedConcat!1150 (exprs!5419 (h!69229 (t!376168 zl!343)))) (unfocusZipperList!963 (t!376168 (t!376168 zl!343)))))))

(declare-fun b!5553035 () Bool)

(assert (=> b!5553035 (= e!3429742 Nil!62780)))

(assert (= (and d!1757931 c!972069) b!5553034))

(assert (= (and d!1757931 (not c!972069)) b!5553035))

(declare-fun m!6546086 () Bool)

(assert (=> d!1757931 m!6546086))

(declare-fun m!6546088 () Bool)

(assert (=> b!5553034 m!6546088))

(declare-fun m!6546090 () Bool)

(assert (=> b!5553034 m!6546090))

(assert (=> b!5552851 d!1757931))

(declare-fun b!5553036 () Bool)

(declare-fun e!3429743 () (InoxSet Context!9838))

(declare-fun e!3429744 () (InoxSet Context!9838))

(assert (=> b!5553036 (= e!3429743 e!3429744)))

(declare-fun c!972071 () Bool)

(assert (=> b!5553036 (= c!972071 ((_ is Cons!62780) (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun b!5553037 () Bool)

(declare-fun call!413918 () (InoxSet Context!9838))

(assert (=> b!5553037 (= e!3429743 ((_ map or) call!413918 (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343))))))) (h!69230 s!2326))))))

(declare-fun d!1757933 () Bool)

(declare-fun c!972070 () Bool)

(declare-fun e!3429745 () Bool)

(assert (=> d!1757933 (= c!972070 e!3429745)))

(declare-fun res!2360489 () Bool)

(assert (=> d!1757933 (=> (not res!2360489) (not e!3429745))))

(assert (=> d!1757933 (= res!2360489 ((_ is Cons!62780) (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))))))))

(assert (=> d!1757933 (= (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))) (h!69230 s!2326)) e!3429743)))

(declare-fun b!5553038 () Bool)

(assert (=> b!5553038 (= e!3429744 call!413918)))

(declare-fun b!5553039 () Bool)

(assert (=> b!5553039 (= e!3429744 ((as const (Array Context!9838 Bool)) false))))

(declare-fun bm!413913 () Bool)

(assert (=> bm!413913 (= call!413918 (derivationStepZipperDown!877 (h!69228 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))))) (Context!9839 (t!376167 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343))))))) (h!69230 s!2326)))))

(declare-fun b!5553040 () Bool)

(assert (=> b!5553040 (= e!3429745 (nullable!5567 (h!69228 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343))))))))))

(assert (= (and d!1757933 res!2360489) b!5553040))

(assert (= (and d!1757933 c!972070) b!5553037))

(assert (= (and d!1757933 (not c!972070)) b!5553036))

(assert (= (and b!5553036 c!972071) b!5553038))

(assert (= (and b!5553036 (not c!972071)) b!5553039))

(assert (= (or b!5553037 b!5553038) bm!413913))

(declare-fun m!6546092 () Bool)

(assert (=> b!5553037 m!6546092))

(declare-fun m!6546094 () Bool)

(assert (=> bm!413913 m!6546094))

(declare-fun m!6546096 () Bool)

(assert (=> b!5553040 m!6546096))

(assert (=> b!5552374 d!1757933))

(declare-fun b!5553041 () Bool)

(declare-fun e!3429749 () Bool)

(declare-fun call!413921 () Bool)

(assert (=> b!5553041 (= e!3429749 call!413921)))

(declare-fun d!1757935 () Bool)

(declare-fun res!2360491 () Bool)

(declare-fun e!3429748 () Bool)

(assert (=> d!1757935 (=> res!2360491 e!3429748)))

(assert (=> d!1757935 (= res!2360491 ((_ is ElementMatch!15535) lt!2250596))))

(assert (=> d!1757935 (= (validRegex!7271 lt!2250596) e!3429748)))

(declare-fun b!5553042 () Bool)

(declare-fun res!2360493 () Bool)

(declare-fun e!3429747 () Bool)

(assert (=> b!5553042 (=> res!2360493 e!3429747)))

(assert (=> b!5553042 (= res!2360493 (not ((_ is Concat!24380) lt!2250596)))))

(declare-fun e!3429746 () Bool)

(assert (=> b!5553042 (= e!3429746 e!3429747)))

(declare-fun b!5553043 () Bool)

(declare-fun e!3429750 () Bool)

(assert (=> b!5553043 (= e!3429750 e!3429746)))

(declare-fun c!972072 () Bool)

(assert (=> b!5553043 (= c!972072 ((_ is Union!15535) lt!2250596))))

(declare-fun b!5553044 () Bool)

(declare-fun e!3429751 () Bool)

(declare-fun call!413919 () Bool)

(assert (=> b!5553044 (= e!3429751 call!413919)))

(declare-fun bm!413914 () Bool)

(assert (=> bm!413914 (= call!413921 call!413919)))

(declare-fun b!5553045 () Bool)

(declare-fun res!2360490 () Bool)

(assert (=> b!5553045 (=> (not res!2360490) (not e!3429749))))

(declare-fun call!413920 () Bool)

(assert (=> b!5553045 (= res!2360490 call!413920)))

(assert (=> b!5553045 (= e!3429746 e!3429749)))

(declare-fun bm!413915 () Bool)

(assert (=> bm!413915 (= call!413920 (validRegex!7271 (ite c!972072 (regOne!31583 lt!2250596) (regOne!31582 lt!2250596))))))

(declare-fun bm!413916 () Bool)

(declare-fun c!972073 () Bool)

(assert (=> bm!413916 (= call!413919 (validRegex!7271 (ite c!972073 (reg!15864 lt!2250596) (ite c!972072 (regTwo!31583 lt!2250596) (regTwo!31582 lt!2250596)))))))

(declare-fun b!5553046 () Bool)

(declare-fun e!3429752 () Bool)

(assert (=> b!5553046 (= e!3429747 e!3429752)))

(declare-fun res!2360492 () Bool)

(assert (=> b!5553046 (=> (not res!2360492) (not e!3429752))))

(assert (=> b!5553046 (= res!2360492 call!413920)))

(declare-fun b!5553047 () Bool)

(assert (=> b!5553047 (= e!3429752 call!413921)))

(declare-fun b!5553048 () Bool)

(assert (=> b!5553048 (= e!3429750 e!3429751)))

(declare-fun res!2360494 () Bool)

(assert (=> b!5553048 (= res!2360494 (not (nullable!5567 (reg!15864 lt!2250596))))))

(assert (=> b!5553048 (=> (not res!2360494) (not e!3429751))))

(declare-fun b!5553049 () Bool)

(assert (=> b!5553049 (= e!3429748 e!3429750)))

(assert (=> b!5553049 (= c!972073 ((_ is Star!15535) lt!2250596))))

(assert (= (and d!1757935 (not res!2360491)) b!5553049))

(assert (= (and b!5553049 c!972073) b!5553048))

(assert (= (and b!5553049 (not c!972073)) b!5553043))

(assert (= (and b!5553048 res!2360494) b!5553044))

(assert (= (and b!5553043 c!972072) b!5553045))

(assert (= (and b!5553043 (not c!972072)) b!5553042))

(assert (= (and b!5553045 res!2360490) b!5553041))

(assert (= (and b!5553042 (not res!2360493)) b!5553046))

(assert (= (and b!5553046 res!2360492) b!5553047))

(assert (= (or b!5553041 b!5553047) bm!413914))

(assert (= (or b!5553045 b!5553046) bm!413915))

(assert (= (or b!5553044 bm!413914) bm!413916))

(declare-fun m!6546098 () Bool)

(assert (=> bm!413915 m!6546098))

(declare-fun m!6546100 () Bool)

(assert (=> bm!413916 m!6546100))

(declare-fun m!6546102 () Bool)

(assert (=> b!5553048 m!6546102))

(assert (=> d!1757859 d!1757935))

(declare-fun d!1757937 () Bool)

(declare-fun res!2360495 () Bool)

(declare-fun e!3429753 () Bool)

(assert (=> d!1757937 (=> res!2360495 e!3429753)))

(assert (=> d!1757937 (= res!2360495 ((_ is Nil!62780) (unfocusZipperList!963 zl!343)))))

(assert (=> d!1757937 (= (forall!14709 (unfocusZipperList!963 zl!343) lambda!297871) e!3429753)))

(declare-fun b!5553050 () Bool)

(declare-fun e!3429754 () Bool)

(assert (=> b!5553050 (= e!3429753 e!3429754)))

(declare-fun res!2360496 () Bool)

(assert (=> b!5553050 (=> (not res!2360496) (not e!3429754))))

(assert (=> b!5553050 (= res!2360496 (dynLambda!24555 lambda!297871 (h!69228 (unfocusZipperList!963 zl!343))))))

(declare-fun b!5553051 () Bool)

(assert (=> b!5553051 (= e!3429754 (forall!14709 (t!376167 (unfocusZipperList!963 zl!343)) lambda!297871))))

(assert (= (and d!1757937 (not res!2360495)) b!5553050))

(assert (= (and b!5553050 res!2360496) b!5553051))

(declare-fun b_lambda!210917 () Bool)

(assert (=> (not b_lambda!210917) (not b!5553050)))

(declare-fun m!6546104 () Bool)

(assert (=> b!5553050 m!6546104))

(declare-fun m!6546106 () Bool)

(assert (=> b!5553051 m!6546106))

(assert (=> d!1757859 d!1757937))

(assert (=> bs!1286278 d!1757773))

(declare-fun bm!413917 () Bool)

(declare-fun call!413926 () (InoxSet Context!9838))

(declare-fun call!413922 () (InoxSet Context!9838))

(assert (=> bm!413917 (= call!413926 call!413922)))

(declare-fun b!5553052 () Bool)

(declare-fun e!3429755 () (InoxSet Context!9838))

(declare-fun call!413927 () (InoxSet Context!9838))

(assert (=> b!5553052 (= e!3429755 call!413927)))

(declare-fun c!972076 () Bool)

(declare-fun c!972075 () Bool)

(declare-fun call!413925 () List!62904)

(declare-fun bm!413918 () Bool)

(assert (=> bm!413918 (= call!413925 ($colon$colon!1605 (exprs!5419 (ite c!971882 lt!2250513 (Context!9839 call!413834))) (ite (or c!972076 c!972075) (regTwo!31582 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))) (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))))))))

(declare-fun bm!413919 () Bool)

(declare-fun c!972077 () Bool)

(declare-fun call!413924 () List!62904)

(assert (=> bm!413919 (= call!413922 (derivationStepZipperDown!877 (ite c!972077 (regTwo!31583 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))) (ite c!972076 (regTwo!31582 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))) (ite c!972075 (regOne!31582 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))) (reg!15864 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))))))) (ite (or c!972077 c!972076) (ite c!971882 lt!2250513 (Context!9839 call!413834)) (Context!9839 call!413924)) (h!69230 s!2326)))))

(declare-fun bm!413921 () Bool)

(assert (=> bm!413921 (= call!413927 call!413926)))

(declare-fun bm!413922 () Bool)

(declare-fun call!413923 () (InoxSet Context!9838))

(assert (=> bm!413922 (= call!413923 (derivationStepZipperDown!877 (ite c!972077 (regOne!31583 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))) (regOne!31582 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))))) (ite c!972077 (ite c!971882 lt!2250513 (Context!9839 call!413834)) (Context!9839 call!413925)) (h!69230 s!2326)))))

(declare-fun b!5553053 () Bool)

(declare-fun e!3429756 () (InoxSet Context!9838))

(declare-fun e!3429759 () (InoxSet Context!9838))

(assert (=> b!5553053 (= e!3429756 e!3429759)))

(assert (=> b!5553053 (= c!972077 ((_ is Union!15535) (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun b!5553054 () Bool)

(assert (=> b!5553054 (= e!3429756 (store ((as const (Array Context!9838 Bool)) false) (ite c!971882 lt!2250513 (Context!9839 call!413834)) true))))

(declare-fun b!5553055 () Bool)

(assert (=> b!5553055 (= e!3429755 ((as const (Array Context!9838 Bool)) false))))

(declare-fun b!5553056 () Bool)

(declare-fun e!3429757 () Bool)

(assert (=> b!5553056 (= e!3429757 (nullable!5567 (regOne!31582 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))))))))

(declare-fun b!5553057 () Bool)

(assert (=> b!5553057 (= c!972076 e!3429757)))

(declare-fun res!2360497 () Bool)

(assert (=> b!5553057 (=> (not res!2360497) (not e!3429757))))

(assert (=> b!5553057 (= res!2360497 ((_ is Concat!24380) (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun e!3429760 () (InoxSet Context!9838))

(assert (=> b!5553057 (= e!3429759 e!3429760)))

(declare-fun b!5553058 () Bool)

(assert (=> b!5553058 (= e!3429760 ((_ map or) call!413923 call!413926))))

(declare-fun b!5553059 () Bool)

(declare-fun e!3429758 () (InoxSet Context!9838))

(assert (=> b!5553059 (= e!3429758 call!413927)))

(declare-fun b!5553060 () Bool)

(assert (=> b!5553060 (= e!3429759 ((_ map or) call!413923 call!413922))))

(declare-fun d!1757939 () Bool)

(declare-fun c!972078 () Bool)

(assert (=> d!1757939 (= c!972078 (and ((_ is ElementMatch!15535) (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))) (= (c!971841 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))) (h!69230 s!2326))))))

(assert (=> d!1757939 (= (derivationStepZipperDown!877 (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))) (ite c!971882 lt!2250513 (Context!9839 call!413834)) (h!69230 s!2326)) e!3429756)))

(declare-fun bm!413920 () Bool)

(assert (=> bm!413920 (= call!413924 call!413925)))

(declare-fun b!5553061 () Bool)

(assert (=> b!5553061 (= e!3429760 e!3429758)))

(assert (=> b!5553061 (= c!972075 ((_ is Concat!24380) (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun b!5553062 () Bool)

(declare-fun c!972074 () Bool)

(assert (=> b!5553062 (= c!972074 ((_ is Star!15535) (ite c!971882 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))

(assert (=> b!5553062 (= e!3429758 e!3429755)))

(assert (= (and d!1757939 c!972078) b!5553054))

(assert (= (and d!1757939 (not c!972078)) b!5553053))

(assert (= (and b!5553053 c!972077) b!5553060))

(assert (= (and b!5553053 (not c!972077)) b!5553057))

(assert (= (and b!5553057 res!2360497) b!5553056))

(assert (= (and b!5553057 c!972076) b!5553058))

(assert (= (and b!5553057 (not c!972076)) b!5553061))

(assert (= (and b!5553061 c!972075) b!5553059))

(assert (= (and b!5553061 (not c!972075)) b!5553062))

(assert (= (and b!5553062 c!972074) b!5553052))

(assert (= (and b!5553062 (not c!972074)) b!5553055))

(assert (= (or b!5553059 b!5553052) bm!413920))

(assert (= (or b!5553059 b!5553052) bm!413921))

(assert (= (or b!5553058 bm!413920) bm!413918))

(assert (= (or b!5553058 bm!413921) bm!413917))

(assert (= (or b!5553060 bm!413917) bm!413919))

(assert (= (or b!5553060 b!5553058) bm!413922))

(declare-fun m!6546108 () Bool)

(assert (=> b!5553056 m!6546108))

(declare-fun m!6546110 () Bool)

(assert (=> bm!413922 m!6546110))

(declare-fun m!6546112 () Bool)

(assert (=> bm!413918 m!6546112))

(declare-fun m!6546114 () Bool)

(assert (=> bm!413919 m!6546114))

(declare-fun m!6546116 () Bool)

(assert (=> b!5553054 m!6546116))

(assert (=> bm!413831 d!1757939))

(declare-fun d!1757941 () Bool)

(assert (=> d!1757941 true))

(assert (=> d!1757941 true))

(declare-fun res!2360498 () Bool)

(assert (=> d!1757941 (= (choose!42109 lambda!297811) res!2360498)))

(assert (=> d!1757827 d!1757941))

(declare-fun d!1757943 () Bool)

(declare-fun c!972079 () Bool)

(assert (=> d!1757943 (= c!972079 (isEmpty!34576 (tail!10952 (t!376169 s!2326))))))

(declare-fun e!3429761 () Bool)

(assert (=> d!1757943 (= (matchZipper!1677 (derivationStepZipper!1638 lt!2250515 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))) e!3429761)))

(declare-fun b!5553063 () Bool)

(assert (=> b!5553063 (= e!3429761 (nullableZipper!1543 (derivationStepZipper!1638 lt!2250515 (head!11857 (t!376169 s!2326)))))))

(declare-fun b!5553064 () Bool)

(assert (=> b!5553064 (= e!3429761 (matchZipper!1677 (derivationStepZipper!1638 (derivationStepZipper!1638 lt!2250515 (head!11857 (t!376169 s!2326))) (head!11857 (tail!10952 (t!376169 s!2326)))) (tail!10952 (tail!10952 (t!376169 s!2326)))))))

(assert (= (and d!1757943 c!972079) b!5553063))

(assert (= (and d!1757943 (not c!972079)) b!5553064))

(assert (=> d!1757943 m!6545756))

(assert (=> d!1757943 m!6546052))

(assert (=> b!5553063 m!6545968))

(declare-fun m!6546118 () Bool)

(assert (=> b!5553063 m!6546118))

(assert (=> b!5553064 m!6545756))

(assert (=> b!5553064 m!6546056))

(assert (=> b!5553064 m!6545968))

(assert (=> b!5553064 m!6546056))

(declare-fun m!6546120 () Bool)

(assert (=> b!5553064 m!6546120))

(assert (=> b!5553064 m!6545756))

(assert (=> b!5553064 m!6546060))

(assert (=> b!5553064 m!6546120))

(assert (=> b!5553064 m!6546060))

(declare-fun m!6546122 () Bool)

(assert (=> b!5553064 m!6546122))

(assert (=> b!5552861 d!1757943))

(declare-fun bs!1286290 () Bool)

(declare-fun d!1757945 () Bool)

(assert (= bs!1286290 (and d!1757945 b!5552210)))

(declare-fun lambda!297881 () Int)

(assert (=> bs!1286290 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297881 lambda!297813))))

(declare-fun bs!1286291 () Bool)

(assert (= bs!1286291 (and d!1757945 d!1757789)))

(assert (=> bs!1286291 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297881 lambda!297835))))

(declare-fun bs!1286292 () Bool)

(assert (= bs!1286292 (and d!1757945 d!1757921)))

(assert (=> bs!1286292 (= lambda!297881 lambda!297879)))

(assert (=> d!1757945 true))

(assert (=> d!1757945 (= (derivationStepZipper!1638 lt!2250515 (head!11857 (t!376169 s!2326))) (flatMap!1148 lt!2250515 lambda!297881))))

(declare-fun bs!1286293 () Bool)

(assert (= bs!1286293 d!1757945))

(declare-fun m!6546124 () Bool)

(assert (=> bs!1286293 m!6546124))

(assert (=> b!5552861 d!1757945))

(assert (=> b!5552861 d!1757923))

(assert (=> b!5552861 d!1757925))

(declare-fun d!1757947 () Bool)

(assert (=> d!1757947 (= (isEmpty!34573 (t!376167 (unfocusZipperList!963 zl!343))) ((_ is Nil!62780) (t!376167 (unfocusZipperList!963 zl!343))))))

(assert (=> b!5552840 d!1757947))

(declare-fun d!1757949 () Bool)

(assert (=> d!1757949 (= (head!11858 (exprs!5419 (h!69229 zl!343))) (h!69228 (exprs!5419 (h!69229 zl!343))))))

(assert (=> b!5552782 d!1757949))

(declare-fun b!5553066 () Bool)

(declare-fun e!3429763 () Bool)

(declare-fun e!3429762 () Bool)

(assert (=> b!5553066 (= e!3429763 e!3429762)))

(declare-fun c!972080 () Bool)

(assert (=> b!5553066 (= c!972080 ((_ is EmptyLang!15535) (regOne!31582 r!7292)))))

(declare-fun b!5553067 () Bool)

(declare-fun res!2360500 () Bool)

(declare-fun e!3429767 () Bool)

(assert (=> b!5553067 (=> (not res!2360500) (not e!3429767))))

(assert (=> b!5553067 (= res!2360500 (isEmpty!34576 (tail!10952 (_1!35935 (get!21609 lt!2250566)))))))

(declare-fun b!5553068 () Bool)

(declare-fun res!2360502 () Bool)

(declare-fun e!3429766 () Bool)

(assert (=> b!5553068 (=> res!2360502 e!3429766)))

(assert (=> b!5553068 (= res!2360502 (not (isEmpty!34576 (tail!10952 (_1!35935 (get!21609 lt!2250566))))))))

(declare-fun b!5553069 () Bool)

(assert (=> b!5553069 (= e!3429766 (not (= (head!11857 (_1!35935 (get!21609 lt!2250566))) (c!971841 (regOne!31582 r!7292)))))))

(declare-fun b!5553070 () Bool)

(declare-fun res!2360506 () Bool)

(declare-fun e!3429765 () Bool)

(assert (=> b!5553070 (=> res!2360506 e!3429765)))

(assert (=> b!5553070 (= res!2360506 (not ((_ is ElementMatch!15535) (regOne!31582 r!7292))))))

(assert (=> b!5553070 (= e!3429762 e!3429765)))

(declare-fun b!5553071 () Bool)

(declare-fun e!3429764 () Bool)

(assert (=> b!5553071 (= e!3429764 (matchR!7720 (derivativeStep!4391 (regOne!31582 r!7292) (head!11857 (_1!35935 (get!21609 lt!2250566)))) (tail!10952 (_1!35935 (get!21609 lt!2250566)))))))

(declare-fun b!5553072 () Bool)

(declare-fun e!3429768 () Bool)

(assert (=> b!5553072 (= e!3429765 e!3429768)))

(declare-fun res!2360499 () Bool)

(assert (=> b!5553072 (=> (not res!2360499) (not e!3429768))))

(declare-fun lt!2250615 () Bool)

(assert (=> b!5553072 (= res!2360499 (not lt!2250615))))

(declare-fun b!5553073 () Bool)

(declare-fun call!413928 () Bool)

(assert (=> b!5553073 (= e!3429763 (= lt!2250615 call!413928))))

(declare-fun bm!413923 () Bool)

(assert (=> bm!413923 (= call!413928 (isEmpty!34576 (_1!35935 (get!21609 lt!2250566))))))

(declare-fun b!5553074 () Bool)

(declare-fun res!2360504 () Bool)

(assert (=> b!5553074 (=> (not res!2360504) (not e!3429767))))

(assert (=> b!5553074 (= res!2360504 (not call!413928))))

(declare-fun d!1757951 () Bool)

(assert (=> d!1757951 e!3429763))

(declare-fun c!972081 () Bool)

(assert (=> d!1757951 (= c!972081 ((_ is EmptyExpr!15535) (regOne!31582 r!7292)))))

(assert (=> d!1757951 (= lt!2250615 e!3429764)))

(declare-fun c!972082 () Bool)

(assert (=> d!1757951 (= c!972082 (isEmpty!34576 (_1!35935 (get!21609 lt!2250566))))))

(assert (=> d!1757951 (validRegex!7271 (regOne!31582 r!7292))))

(assert (=> d!1757951 (= (matchR!7720 (regOne!31582 r!7292) (_1!35935 (get!21609 lt!2250566))) lt!2250615)))

(declare-fun b!5553065 () Bool)

(declare-fun res!2360501 () Bool)

(assert (=> b!5553065 (=> res!2360501 e!3429765)))

(assert (=> b!5553065 (= res!2360501 e!3429767)))

(declare-fun res!2360505 () Bool)

(assert (=> b!5553065 (=> (not res!2360505) (not e!3429767))))

(assert (=> b!5553065 (= res!2360505 lt!2250615)))

(declare-fun b!5553075 () Bool)

(assert (=> b!5553075 (= e!3429768 e!3429766)))

(declare-fun res!2360503 () Bool)

(assert (=> b!5553075 (=> res!2360503 e!3429766)))

(assert (=> b!5553075 (= res!2360503 call!413928)))

(declare-fun b!5553076 () Bool)

(assert (=> b!5553076 (= e!3429762 (not lt!2250615))))

(declare-fun b!5553077 () Bool)

(assert (=> b!5553077 (= e!3429764 (nullable!5567 (regOne!31582 r!7292)))))

(declare-fun b!5553078 () Bool)

(assert (=> b!5553078 (= e!3429767 (= (head!11857 (_1!35935 (get!21609 lt!2250566))) (c!971841 (regOne!31582 r!7292))))))

(assert (= (and d!1757951 c!972082) b!5553077))

(assert (= (and d!1757951 (not c!972082)) b!5553071))

(assert (= (and d!1757951 c!972081) b!5553073))

(assert (= (and d!1757951 (not c!972081)) b!5553066))

(assert (= (and b!5553066 c!972080) b!5553076))

(assert (= (and b!5553066 (not c!972080)) b!5553070))

(assert (= (and b!5553070 (not res!2360506)) b!5553065))

(assert (= (and b!5553065 res!2360505) b!5553074))

(assert (= (and b!5553074 res!2360504) b!5553067))

(assert (= (and b!5553067 res!2360500) b!5553078))

(assert (= (and b!5553065 (not res!2360501)) b!5553072))

(assert (= (and b!5553072 res!2360499) b!5553075))

(assert (= (and b!5553075 (not res!2360503)) b!5553068))

(assert (= (and b!5553068 (not res!2360502)) b!5553069))

(assert (= (or b!5553073 b!5553074 b!5553075) bm!413923))

(declare-fun m!6546126 () Bool)

(assert (=> b!5553078 m!6546126))

(assert (=> b!5553071 m!6546126))

(assert (=> b!5553071 m!6546126))

(declare-fun m!6546128 () Bool)

(assert (=> b!5553071 m!6546128))

(declare-fun m!6546130 () Bool)

(assert (=> b!5553071 m!6546130))

(assert (=> b!5553071 m!6546128))

(assert (=> b!5553071 m!6546130))

(declare-fun m!6546132 () Bool)

(assert (=> b!5553071 m!6546132))

(assert (=> b!5553069 m!6546126))

(assert (=> b!5553067 m!6546130))

(assert (=> b!5553067 m!6546130))

(declare-fun m!6546134 () Bool)

(assert (=> b!5553067 m!6546134))

(declare-fun m!6546136 () Bool)

(assert (=> d!1757951 m!6546136))

(assert (=> d!1757951 m!6545792))

(assert (=> b!5553068 m!6546130))

(assert (=> b!5553068 m!6546130))

(assert (=> b!5553068 m!6546134))

(assert (=> bm!413923 m!6546136))

(assert (=> b!5553077 m!6546026))

(assert (=> b!5552482 d!1757951))

(assert (=> b!5552482 d!1757913))

(assert (=> d!1757871 d!1757899))

(declare-fun b!5553080 () Bool)

(declare-fun e!3429770 () Bool)

(declare-fun e!3429769 () Bool)

(assert (=> b!5553080 (= e!3429770 e!3429769)))

(declare-fun c!972083 () Bool)

(assert (=> b!5553080 (= c!972083 ((_ is EmptyLang!15535) (regTwo!31582 r!7292)))))

(declare-fun b!5553081 () Bool)

(declare-fun res!2360508 () Bool)

(declare-fun e!3429774 () Bool)

(assert (=> b!5553081 (=> (not res!2360508) (not e!3429774))))

(assert (=> b!5553081 (= res!2360508 (isEmpty!34576 (tail!10952 (_2!35935 (get!21609 lt!2250566)))))))

(declare-fun b!5553082 () Bool)

(declare-fun res!2360510 () Bool)

(declare-fun e!3429773 () Bool)

(assert (=> b!5553082 (=> res!2360510 e!3429773)))

(assert (=> b!5553082 (= res!2360510 (not (isEmpty!34576 (tail!10952 (_2!35935 (get!21609 lt!2250566))))))))

(declare-fun b!5553083 () Bool)

(assert (=> b!5553083 (= e!3429773 (not (= (head!11857 (_2!35935 (get!21609 lt!2250566))) (c!971841 (regTwo!31582 r!7292)))))))

(declare-fun b!5553084 () Bool)

(declare-fun res!2360514 () Bool)

(declare-fun e!3429772 () Bool)

(assert (=> b!5553084 (=> res!2360514 e!3429772)))

(assert (=> b!5553084 (= res!2360514 (not ((_ is ElementMatch!15535) (regTwo!31582 r!7292))))))

(assert (=> b!5553084 (= e!3429769 e!3429772)))

(declare-fun b!5553085 () Bool)

(declare-fun e!3429771 () Bool)

(assert (=> b!5553085 (= e!3429771 (matchR!7720 (derivativeStep!4391 (regTwo!31582 r!7292) (head!11857 (_2!35935 (get!21609 lt!2250566)))) (tail!10952 (_2!35935 (get!21609 lt!2250566)))))))

(declare-fun b!5553086 () Bool)

(declare-fun e!3429775 () Bool)

(assert (=> b!5553086 (= e!3429772 e!3429775)))

(declare-fun res!2360507 () Bool)

(assert (=> b!5553086 (=> (not res!2360507) (not e!3429775))))

(declare-fun lt!2250616 () Bool)

(assert (=> b!5553086 (= res!2360507 (not lt!2250616))))

(declare-fun b!5553087 () Bool)

(declare-fun call!413929 () Bool)

(assert (=> b!5553087 (= e!3429770 (= lt!2250616 call!413929))))

(declare-fun bm!413924 () Bool)

(assert (=> bm!413924 (= call!413929 (isEmpty!34576 (_2!35935 (get!21609 lt!2250566))))))

(declare-fun b!5553088 () Bool)

(declare-fun res!2360512 () Bool)

(assert (=> b!5553088 (=> (not res!2360512) (not e!3429774))))

(assert (=> b!5553088 (= res!2360512 (not call!413929))))

(declare-fun d!1757953 () Bool)

(assert (=> d!1757953 e!3429770))

(declare-fun c!972084 () Bool)

(assert (=> d!1757953 (= c!972084 ((_ is EmptyExpr!15535) (regTwo!31582 r!7292)))))

(assert (=> d!1757953 (= lt!2250616 e!3429771)))

(declare-fun c!972085 () Bool)

(assert (=> d!1757953 (= c!972085 (isEmpty!34576 (_2!35935 (get!21609 lt!2250566))))))

(assert (=> d!1757953 (validRegex!7271 (regTwo!31582 r!7292))))

(assert (=> d!1757953 (= (matchR!7720 (regTwo!31582 r!7292) (_2!35935 (get!21609 lt!2250566))) lt!2250616)))

(declare-fun b!5553079 () Bool)

(declare-fun res!2360509 () Bool)

(assert (=> b!5553079 (=> res!2360509 e!3429772)))

(assert (=> b!5553079 (= res!2360509 e!3429774)))

(declare-fun res!2360513 () Bool)

(assert (=> b!5553079 (=> (not res!2360513) (not e!3429774))))

(assert (=> b!5553079 (= res!2360513 lt!2250616)))

(declare-fun b!5553089 () Bool)

(assert (=> b!5553089 (= e!3429775 e!3429773)))

(declare-fun res!2360511 () Bool)

(assert (=> b!5553089 (=> res!2360511 e!3429773)))

(assert (=> b!5553089 (= res!2360511 call!413929)))

(declare-fun b!5553090 () Bool)

(assert (=> b!5553090 (= e!3429769 (not lt!2250616))))

(declare-fun b!5553091 () Bool)

(assert (=> b!5553091 (= e!3429771 (nullable!5567 (regTwo!31582 r!7292)))))

(declare-fun b!5553092 () Bool)

(assert (=> b!5553092 (= e!3429774 (= (head!11857 (_2!35935 (get!21609 lt!2250566))) (c!971841 (regTwo!31582 r!7292))))))

(assert (= (and d!1757953 c!972085) b!5553091))

(assert (= (and d!1757953 (not c!972085)) b!5553085))

(assert (= (and d!1757953 c!972084) b!5553087))

(assert (= (and d!1757953 (not c!972084)) b!5553080))

(assert (= (and b!5553080 c!972083) b!5553090))

(assert (= (and b!5553080 (not c!972083)) b!5553084))

(assert (= (and b!5553084 (not res!2360514)) b!5553079))

(assert (= (and b!5553079 res!2360513) b!5553088))

(assert (= (and b!5553088 res!2360512) b!5553081))

(assert (= (and b!5553081 res!2360508) b!5553092))

(assert (= (and b!5553079 (not res!2360509)) b!5553086))

(assert (= (and b!5553086 res!2360507) b!5553089))

(assert (= (and b!5553089 (not res!2360511)) b!5553082))

(assert (= (and b!5553082 (not res!2360510)) b!5553083))

(assert (= (or b!5553087 b!5553088 b!5553089) bm!413924))

(declare-fun m!6546138 () Bool)

(assert (=> b!5553092 m!6546138))

(assert (=> b!5553085 m!6546138))

(assert (=> b!5553085 m!6546138))

(declare-fun m!6546140 () Bool)

(assert (=> b!5553085 m!6546140))

(declare-fun m!6546142 () Bool)

(assert (=> b!5553085 m!6546142))

(assert (=> b!5553085 m!6546140))

(assert (=> b!5553085 m!6546142))

(declare-fun m!6546144 () Bool)

(assert (=> b!5553085 m!6546144))

(assert (=> b!5553083 m!6546138))

(assert (=> b!5553081 m!6546142))

(assert (=> b!5553081 m!6546142))

(declare-fun m!6546146 () Bool)

(assert (=> b!5553081 m!6546146))

(declare-fun m!6546148 () Bool)

(assert (=> d!1757953 m!6546148))

(declare-fun m!6546150 () Bool)

(assert (=> d!1757953 m!6546150))

(assert (=> b!5553082 m!6546142))

(assert (=> b!5553082 m!6546142))

(assert (=> b!5553082 m!6546146))

(assert (=> bm!413924 m!6546148))

(declare-fun m!6546152 () Bool)

(assert (=> b!5553091 m!6546152))

(assert (=> b!5552480 d!1757953))

(assert (=> b!5552480 d!1757913))

(declare-fun bm!413925 () Bool)

(declare-fun call!413934 () (InoxSet Context!9838))

(declare-fun call!413930 () (InoxSet Context!9838))

(assert (=> bm!413925 (= call!413934 call!413930)))

(declare-fun b!5553093 () Bool)

(declare-fun e!3429776 () (InoxSet Context!9838))

(declare-fun call!413935 () (InoxSet Context!9838))

(assert (=> b!5553093 (= e!3429776 call!413935)))

(declare-fun bm!413926 () Bool)

(declare-fun c!972088 () Bool)

(declare-fun call!413933 () List!62904)

(declare-fun c!972087 () Bool)

(assert (=> bm!413926 (= call!413933 ($colon$colon!1605 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343))))) (ite (or c!972088 c!972087) (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (h!69228 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun c!972089 () Bool)

(declare-fun call!413932 () List!62904)

(declare-fun bm!413927 () Bool)

(assert (=> bm!413927 (= call!413930 (derivationStepZipperDown!877 (ite c!972089 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!972088 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!972087 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343))))))) (ite (or c!972089 c!972088) (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))) (Context!9839 call!413932)) (h!69230 s!2326)))))

(declare-fun bm!413929 () Bool)

(assert (=> bm!413929 (= call!413935 call!413934)))

(declare-fun call!413931 () (InoxSet Context!9838))

(declare-fun bm!413930 () Bool)

(assert (=> bm!413930 (= call!413931 (derivationStepZipperDown!877 (ite c!972089 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))) (ite c!972089 (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))) (Context!9839 call!413933)) (h!69230 s!2326)))))

(declare-fun b!5553094 () Bool)

(declare-fun e!3429777 () (InoxSet Context!9838))

(declare-fun e!3429780 () (InoxSet Context!9838))

(assert (=> b!5553094 (= e!3429777 e!3429780)))

(assert (=> b!5553094 (= c!972089 ((_ is Union!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5553095 () Bool)

(assert (=> b!5553095 (= e!3429777 (store ((as const (Array Context!9838 Bool)) false) (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))) true))))

(declare-fun b!5553096 () Bool)

(assert (=> b!5553096 (= e!3429776 ((as const (Array Context!9838 Bool)) false))))

(declare-fun b!5553097 () Bool)

(declare-fun e!3429778 () Bool)

(assert (=> b!5553097 (= e!3429778 (nullable!5567 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun b!5553098 () Bool)

(assert (=> b!5553098 (= c!972088 e!3429778)))

(declare-fun res!2360515 () Bool)

(assert (=> b!5553098 (=> (not res!2360515) (not e!3429778))))

(assert (=> b!5553098 (= res!2360515 ((_ is Concat!24380) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun e!3429781 () (InoxSet Context!9838))

(assert (=> b!5553098 (= e!3429780 e!3429781)))

(declare-fun b!5553099 () Bool)

(assert (=> b!5553099 (= e!3429781 ((_ map or) call!413931 call!413934))))

(declare-fun b!5553100 () Bool)

(declare-fun e!3429779 () (InoxSet Context!9838))

(assert (=> b!5553100 (= e!3429779 call!413935)))

(declare-fun b!5553101 () Bool)

(assert (=> b!5553101 (= e!3429780 ((_ map or) call!413931 call!413930))))

(declare-fun d!1757955 () Bool)

(declare-fun c!972090 () Bool)

(assert (=> d!1757955 (= c!972090 (and ((_ is ElementMatch!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))) (= (c!971841 (h!69228 (exprs!5419 (h!69229 zl!343)))) (h!69230 s!2326))))))

(assert (=> d!1757955 (= (derivationStepZipperDown!877 (h!69228 (exprs!5419 (h!69229 zl!343))) (Context!9839 (t!376167 (exprs!5419 (h!69229 zl!343)))) (h!69230 s!2326)) e!3429777)))

(declare-fun bm!413928 () Bool)

(assert (=> bm!413928 (= call!413932 call!413933)))

(declare-fun b!5553102 () Bool)

(assert (=> b!5553102 (= e!3429781 e!3429779)))

(assert (=> b!5553102 (= c!972087 ((_ is Concat!24380) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5553103 () Bool)

(declare-fun c!972086 () Bool)

(assert (=> b!5553103 (= c!972086 ((_ is Star!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> b!5553103 (= e!3429779 e!3429776)))

(assert (= (and d!1757955 c!972090) b!5553095))

(assert (= (and d!1757955 (not c!972090)) b!5553094))

(assert (= (and b!5553094 c!972089) b!5553101))

(assert (= (and b!5553094 (not c!972089)) b!5553098))

(assert (= (and b!5553098 res!2360515) b!5553097))

(assert (= (and b!5553098 c!972088) b!5553099))

(assert (= (and b!5553098 (not c!972088)) b!5553102))

(assert (= (and b!5553102 c!972087) b!5553100))

(assert (= (and b!5553102 (not c!972087)) b!5553103))

(assert (= (and b!5553103 c!972086) b!5553093))

(assert (= (and b!5553103 (not c!972086)) b!5553096))

(assert (= (or b!5553100 b!5553093) bm!413928))

(assert (= (or b!5553100 b!5553093) bm!413929))

(assert (= (or b!5553099 bm!413928) bm!413926))

(assert (= (or b!5553099 bm!413929) bm!413925))

(assert (= (or b!5553101 bm!413925) bm!413927))

(assert (= (or b!5553101 b!5553099) bm!413930))

(assert (=> b!5553097 m!6545652))

(declare-fun m!6546154 () Bool)

(assert (=> bm!413930 m!6546154))

(declare-fun m!6546156 () Bool)

(assert (=> bm!413926 m!6546156))

(declare-fun m!6546158 () Bool)

(assert (=> bm!413927 m!6546158))

(declare-fun m!6546160 () Bool)

(assert (=> b!5553095 m!6546160))

(assert (=> bm!413834 d!1757955))

(declare-fun d!1757957 () Bool)

(assert (=> d!1757957 (= (isConcat!621 lt!2250593) ((_ is Concat!24380) lt!2250593))))

(assert (=> b!5552780 d!1757957))

(declare-fun d!1757959 () Bool)

(assert (=> d!1757959 (= ($colon$colon!1605 (exprs!5419 lt!2250513) (ite (or c!971881 c!971880) (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (h!69228 (exprs!5419 (h!69229 zl!343))))) (Cons!62780 (ite (or c!971881 c!971880) (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (h!69228 (exprs!5419 (h!69229 zl!343)))) (exprs!5419 lt!2250513)))))

(assert (=> bm!413827 d!1757959))

(declare-fun d!1757961 () Bool)

(assert (=> d!1757961 (= (nullable!5567 r!7292) (nullableFct!1684 r!7292))))

(declare-fun bs!1286294 () Bool)

(assert (= bs!1286294 d!1757961))

(declare-fun m!6546162 () Bool)

(assert (=> bs!1286294 m!6546162))

(assert (=> b!5552758 d!1757961))

(declare-fun bs!1286295 () Bool)

(declare-fun d!1757963 () Bool)

(assert (= bs!1286295 (and d!1757963 d!1757863)))

(declare-fun lambda!297882 () Int)

(assert (=> bs!1286295 (= lambda!297882 lambda!297875)))

(declare-fun bs!1286296 () Bool)

(assert (= bs!1286296 (and d!1757963 d!1757859)))

(assert (=> bs!1286296 (= lambda!297882 lambda!297871)))

(declare-fun bs!1286297 () Bool)

(assert (= bs!1286297 (and d!1757963 d!1757855)))

(assert (=> bs!1286297 (= lambda!297882 lambda!297868)))

(declare-fun bs!1286298 () Bool)

(assert (= bs!1286298 (and d!1757963 d!1757853)))

(assert (=> bs!1286298 (= lambda!297882 lambda!297865)))

(declare-fun bs!1286299 () Bool)

(assert (= bs!1286299 (and d!1757963 d!1757931)))

(assert (=> bs!1286299 (= lambda!297882 lambda!297880)))

(declare-fun bs!1286300 () Bool)

(assert (= bs!1286300 (and d!1757963 d!1757861)))

(assert (=> bs!1286300 (= lambda!297882 lambda!297874)))

(assert (=> d!1757963 (= (inv!82084 (h!69229 (t!376168 zl!343))) (forall!14709 (exprs!5419 (h!69229 (t!376168 zl!343))) lambda!297882))))

(declare-fun bs!1286301 () Bool)

(assert (= bs!1286301 d!1757963))

(declare-fun m!6546164 () Bool)

(assert (=> bs!1286301 m!6546164))

(assert (=> b!5552908 d!1757963))

(assert (=> d!1757851 d!1757847))

(assert (=> d!1757851 d!1757841))

(declare-fun d!1757965 () Bool)

(assert (=> d!1757965 (= (matchR!7720 r!7292 s!2326) (matchRSpec!2638 r!7292 s!2326))))

(assert (=> d!1757965 true))

(declare-fun _$88!3823 () Unit!155530)

(assert (=> d!1757965 (= (choose!42114 r!7292 s!2326) _$88!3823)))

(declare-fun bs!1286302 () Bool)

(assert (= bs!1286302 d!1757965))

(assert (=> bs!1286302 m!6545536))

(assert (=> bs!1286302 m!6545534))

(assert (=> d!1757851 d!1757965))

(assert (=> d!1757851 d!1757857))

(declare-fun bs!1286303 () Bool)

(declare-fun d!1757967 () Bool)

(assert (= bs!1286303 (and d!1757967 d!1757889)))

(declare-fun lambda!297883 () Int)

(assert (=> bs!1286303 (= lambda!297883 lambda!297878)))

(assert (=> d!1757967 (= (nullableZipper!1543 z!1189) (exists!2150 z!1189 lambda!297883))))

(declare-fun bs!1286304 () Bool)

(assert (= bs!1286304 d!1757967))

(declare-fun m!6546166 () Bool)

(assert (=> bs!1286304 m!6546166))

(assert (=> b!5552856 d!1757967))

(declare-fun b!5553104 () Bool)

(declare-fun e!3429782 () (InoxSet Context!9838))

(declare-fun e!3429783 () (InoxSet Context!9838))

(assert (=> b!5553104 (= e!3429782 e!3429783)))

(declare-fun c!972092 () Bool)

(assert (=> b!5553104 (= c!972092 ((_ is Cons!62780) (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))))

(declare-fun b!5553105 () Bool)

(declare-fun call!413936 () (InoxSet Context!9838))

(assert (=> b!5553105 (= e!3429782 ((_ map or) call!413936 (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))) (h!69230 s!2326))))))

(declare-fun d!1757969 () Bool)

(declare-fun c!972091 () Bool)

(declare-fun e!3429784 () Bool)

(assert (=> d!1757969 (= c!972091 e!3429784)))

(declare-fun res!2360516 () Bool)

(assert (=> d!1757969 (=> (not res!2360516) (not e!3429784))))

(assert (=> d!1757969 (= res!2360516 ((_ is Cons!62780) (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))))

(assert (=> d!1757969 (= (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (h!69230 s!2326)) e!3429782)))

(declare-fun b!5553106 () Bool)

(assert (=> b!5553106 (= e!3429783 call!413936)))

(declare-fun b!5553107 () Bool)

(assert (=> b!5553107 (= e!3429783 ((as const (Array Context!9838 Bool)) false))))

(declare-fun bm!413931 () Bool)

(assert (=> bm!413931 (= call!413936 (derivationStepZipperDown!877 (h!69228 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))) (Context!9839 (t!376167 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))) (h!69230 s!2326)))))

(declare-fun b!5553108 () Bool)

(assert (=> b!5553108 (= e!3429784 (nullable!5567 (h!69228 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))))))

(assert (= (and d!1757969 res!2360516) b!5553108))

(assert (= (and d!1757969 c!972091) b!5553105))

(assert (= (and d!1757969 (not c!972091)) b!5553104))

(assert (= (and b!5553104 c!972092) b!5553106))

(assert (= (and b!5553104 (not c!972092)) b!5553107))

(assert (= (or b!5553105 b!5553106) bm!413931))

(declare-fun m!6546168 () Bool)

(assert (=> b!5553105 m!6546168))

(declare-fun m!6546170 () Bool)

(assert (=> bm!413931 m!6546170))

(declare-fun m!6546172 () Bool)

(assert (=> b!5553108 m!6546172))

(assert (=> b!5552396 d!1757969))

(declare-fun d!1757971 () Bool)

(assert (=> d!1757971 (= (head!11858 (unfocusZipperList!963 zl!343)) (h!69228 (unfocusZipperList!963 zl!343)))))

(assert (=> b!5552844 d!1757971))

(declare-fun bs!1286305 () Bool)

(declare-fun d!1757973 () Bool)

(assert (= bs!1286305 (and d!1757973 d!1757889)))

(declare-fun lambda!297884 () Int)

(assert (=> bs!1286305 (= lambda!297884 lambda!297878)))

(declare-fun bs!1286306 () Bool)

(assert (= bs!1286306 (and d!1757973 d!1757967)))

(assert (=> bs!1286306 (= lambda!297884 lambda!297883)))

(assert (=> d!1757973 (= (nullableZipper!1543 lt!2250518) (exists!2150 lt!2250518 lambda!297884))))

(declare-fun bs!1286307 () Bool)

(assert (= bs!1286307 d!1757973))

(declare-fun m!6546174 () Bool)

(assert (=> bs!1286307 m!6546174))

(assert (=> b!5552427 d!1757973))

(declare-fun bs!1286308 () Bool)

(declare-fun d!1757975 () Bool)

(assert (= bs!1286308 (and d!1757975 d!1757863)))

(declare-fun lambda!297885 () Int)

(assert (=> bs!1286308 (= lambda!297885 lambda!297875)))

(declare-fun bs!1286309 () Bool)

(assert (= bs!1286309 (and d!1757975 d!1757859)))

(assert (=> bs!1286309 (= lambda!297885 lambda!297871)))

(declare-fun bs!1286310 () Bool)

(assert (= bs!1286310 (and d!1757975 d!1757855)))

(assert (=> bs!1286310 (= lambda!297885 lambda!297868)))

(declare-fun bs!1286311 () Bool)

(assert (= bs!1286311 (and d!1757975 d!1757963)))

(assert (=> bs!1286311 (= lambda!297885 lambda!297882)))

(declare-fun bs!1286312 () Bool)

(assert (= bs!1286312 (and d!1757975 d!1757853)))

(assert (=> bs!1286312 (= lambda!297885 lambda!297865)))

(declare-fun bs!1286313 () Bool)

(assert (= bs!1286313 (and d!1757975 d!1757931)))

(assert (=> bs!1286313 (= lambda!297885 lambda!297880)))

(declare-fun bs!1286314 () Bool)

(assert (= bs!1286314 (and d!1757975 d!1757861)))

(assert (=> bs!1286314 (= lambda!297885 lambda!297874)))

(declare-fun b!5553109 () Bool)

(declare-fun e!3429785 () Bool)

(declare-fun lt!2250617 () Regex!15535)

(assert (=> b!5553109 (= e!3429785 (isConcat!621 lt!2250617))))

(declare-fun b!5553110 () Bool)

(declare-fun e!3429786 () Regex!15535)

(declare-fun e!3429789 () Regex!15535)

(assert (=> b!5553110 (= e!3429786 e!3429789)))

(declare-fun c!972095 () Bool)

(assert (=> b!5553110 (= c!972095 ((_ is Cons!62780) (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5553111 () Bool)

(assert (=> b!5553111 (= e!3429785 (= lt!2250617 (head!11858 (t!376167 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun b!5553113 () Bool)

(declare-fun e!3429790 () Bool)

(assert (=> b!5553113 (= e!3429790 (isEmpty!34573 (t!376167 (t!376167 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun b!5553114 () Bool)

(declare-fun e!3429787 () Bool)

(assert (=> b!5553114 (= e!3429787 (isEmptyExpr!1098 lt!2250617))))

(declare-fun b!5553115 () Bool)

(assert (=> b!5553115 (= e!3429789 (Concat!24380 (h!69228 (t!376167 (exprs!5419 (h!69229 zl!343)))) (generalisedConcat!1150 (t!376167 (t!376167 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun b!5553116 () Bool)

(declare-fun e!3429788 () Bool)

(assert (=> b!5553116 (= e!3429788 e!3429787)))

(declare-fun c!972093 () Bool)

(assert (=> b!5553116 (= c!972093 (isEmpty!34573 (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5553117 () Bool)

(assert (=> b!5553117 (= e!3429786 (h!69228 (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5553118 () Bool)

(assert (=> b!5553118 (= e!3429787 e!3429785)))

(declare-fun c!972096 () Bool)

(assert (=> b!5553118 (= c!972096 (isEmpty!34573 (tail!10953 (t!376167 (exprs!5419 (h!69229 zl!343))))))))

(assert (=> d!1757975 e!3429788))

(declare-fun res!2360517 () Bool)

(assert (=> d!1757975 (=> (not res!2360517) (not e!3429788))))

(assert (=> d!1757975 (= res!2360517 (validRegex!7271 lt!2250617))))

(assert (=> d!1757975 (= lt!2250617 e!3429786)))

(declare-fun c!972094 () Bool)

(assert (=> d!1757975 (= c!972094 e!3429790)))

(declare-fun res!2360518 () Bool)

(assert (=> d!1757975 (=> (not res!2360518) (not e!3429790))))

(assert (=> d!1757975 (= res!2360518 ((_ is Cons!62780) (t!376167 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> d!1757975 (forall!14709 (t!376167 (exprs!5419 (h!69229 zl!343))) lambda!297885)))

(assert (=> d!1757975 (= (generalisedConcat!1150 (t!376167 (exprs!5419 (h!69229 zl!343)))) lt!2250617)))

(declare-fun b!5553112 () Bool)

(assert (=> b!5553112 (= e!3429789 EmptyExpr!15535)))

(assert (= (and d!1757975 res!2360518) b!5553113))

(assert (= (and d!1757975 c!972094) b!5553117))

(assert (= (and d!1757975 (not c!972094)) b!5553110))

(assert (= (and b!5553110 c!972095) b!5553115))

(assert (= (and b!5553110 (not c!972095)) b!5553112))

(assert (= (and d!1757975 res!2360517) b!5553116))

(assert (= (and b!5553116 c!972093) b!5553114))

(assert (= (and b!5553116 (not c!972093)) b!5553118))

(assert (= (and b!5553118 c!972096) b!5553111))

(assert (= (and b!5553118 (not c!972096)) b!5553109))

(declare-fun m!6546176 () Bool)

(assert (=> b!5553118 m!6546176))

(assert (=> b!5553118 m!6546176))

(declare-fun m!6546178 () Bool)

(assert (=> b!5553118 m!6546178))

(assert (=> b!5553116 m!6545572))

(declare-fun m!6546180 () Bool)

(assert (=> d!1757975 m!6546180))

(declare-fun m!6546182 () Bool)

(assert (=> d!1757975 m!6546182))

(declare-fun m!6546184 () Bool)

(assert (=> b!5553115 m!6546184))

(declare-fun m!6546186 () Bool)

(assert (=> b!5553111 m!6546186))

(declare-fun m!6546188 () Bool)

(assert (=> b!5553113 m!6546188))

(declare-fun m!6546190 () Bool)

(assert (=> b!5553109 m!6546190))

(declare-fun m!6546192 () Bool)

(assert (=> b!5553114 m!6546192))

(assert (=> b!5552786 d!1757975))

(declare-fun d!1757977 () Bool)

(assert (=> d!1757977 (= (nullable!5567 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))) (nullableFct!1684 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343))))))))

(declare-fun bs!1286315 () Bool)

(assert (= bs!1286315 d!1757977))

(declare-fun m!6546194 () Bool)

(assert (=> bs!1286315 m!6546194))

(assert (=> b!5552347 d!1757977))

(declare-fun b!5553119 () Bool)

(declare-fun e!3429794 () Bool)

(declare-fun call!413939 () Bool)

(assert (=> b!5553119 (= e!3429794 call!413939)))

(declare-fun d!1757979 () Bool)

(declare-fun res!2360520 () Bool)

(declare-fun e!3429793 () Bool)

(assert (=> d!1757979 (=> res!2360520 e!3429793)))

(assert (=> d!1757979 (= res!2360520 ((_ is ElementMatch!15535) (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))))))

(assert (=> d!1757979 (= (validRegex!7271 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))) e!3429793)))

(declare-fun b!5553120 () Bool)

(declare-fun res!2360522 () Bool)

(declare-fun e!3429792 () Bool)

(assert (=> b!5553120 (=> res!2360522 e!3429792)))

(assert (=> b!5553120 (= res!2360522 (not ((_ is Concat!24380) (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292))))))))

(declare-fun e!3429791 () Bool)

(assert (=> b!5553120 (= e!3429791 e!3429792)))

(declare-fun b!5553121 () Bool)

(declare-fun e!3429795 () Bool)

(assert (=> b!5553121 (= e!3429795 e!3429791)))

(declare-fun c!972097 () Bool)

(assert (=> b!5553121 (= c!972097 ((_ is Union!15535) (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))))))

(declare-fun b!5553122 () Bool)

(declare-fun e!3429796 () Bool)

(declare-fun call!413937 () Bool)

(assert (=> b!5553122 (= e!3429796 call!413937)))

(declare-fun bm!413932 () Bool)

(assert (=> bm!413932 (= call!413939 call!413937)))

(declare-fun b!5553123 () Bool)

(declare-fun res!2360519 () Bool)

(assert (=> b!5553123 (=> (not res!2360519) (not e!3429794))))

(declare-fun call!413938 () Bool)

(assert (=> b!5553123 (= res!2360519 call!413938)))

(assert (=> b!5553123 (= e!3429791 e!3429794)))

(declare-fun bm!413933 () Bool)

(assert (=> bm!413933 (= call!413938 (validRegex!7271 (ite c!972097 (regOne!31583 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))) (regOne!31582 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))))))))

(declare-fun bm!413934 () Bool)

(declare-fun c!972098 () Bool)

(assert (=> bm!413934 (= call!413937 (validRegex!7271 (ite c!972098 (reg!15864 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))) (ite c!972097 (regTwo!31583 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))) (regTwo!31582 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292))))))))))

(declare-fun b!5553124 () Bool)

(declare-fun e!3429797 () Bool)

(assert (=> b!5553124 (= e!3429792 e!3429797)))

(declare-fun res!2360521 () Bool)

(assert (=> b!5553124 (=> (not res!2360521) (not e!3429797))))

(assert (=> b!5553124 (= res!2360521 call!413938)))

(declare-fun b!5553125 () Bool)

(assert (=> b!5553125 (= e!3429797 call!413939)))

(declare-fun b!5553126 () Bool)

(assert (=> b!5553126 (= e!3429795 e!3429796)))

(declare-fun res!2360523 () Bool)

(assert (=> b!5553126 (= res!2360523 (not (nullable!5567 (reg!15864 (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))))))))

(assert (=> b!5553126 (=> (not res!2360523) (not e!3429796))))

(declare-fun b!5553127 () Bool)

(assert (=> b!5553127 (= e!3429793 e!3429795)))

(assert (=> b!5553127 (= c!972098 ((_ is Star!15535) (ite c!972010 (reg!15864 r!7292) (ite c!972009 (regTwo!31583 r!7292) (regTwo!31582 r!7292)))))))

(assert (= (and d!1757979 (not res!2360520)) b!5553127))

(assert (= (and b!5553127 c!972098) b!5553126))

(assert (= (and b!5553127 (not c!972098)) b!5553121))

(assert (= (and b!5553126 res!2360523) b!5553122))

(assert (= (and b!5553121 c!972097) b!5553123))

(assert (= (and b!5553121 (not c!972097)) b!5553120))

(assert (= (and b!5553123 res!2360519) b!5553119))

(assert (= (and b!5553120 (not res!2360522)) b!5553124))

(assert (= (and b!5553124 res!2360521) b!5553125))

(assert (= (or b!5553119 b!5553125) bm!413932))

(assert (= (or b!5553123 b!5553124) bm!413933))

(assert (= (or b!5553122 bm!413932) bm!413934))

(declare-fun m!6546196 () Bool)

(assert (=> bm!413933 m!6546196))

(declare-fun m!6546198 () Bool)

(assert (=> bm!413934 m!6546198))

(declare-fun m!6546200 () Bool)

(assert (=> b!5553126 m!6546200))

(assert (=> bm!413886 d!1757979))

(assert (=> b!5552784 d!1757879))

(assert (=> b!5552486 d!1757901))

(declare-fun d!1757981 () Bool)

(assert (=> d!1757981 (= (isEmpty!34573 (tail!10953 (unfocusZipperList!963 zl!343))) ((_ is Nil!62780) (tail!10953 (unfocusZipperList!963 zl!343))))))

(assert (=> b!5552842 d!1757981))

(declare-fun d!1757983 () Bool)

(assert (=> d!1757983 (= (tail!10953 (unfocusZipperList!963 zl!343)) (t!376167 (unfocusZipperList!963 zl!343)))))

(assert (=> b!5552842 d!1757983))

(declare-fun d!1757985 () Bool)

(declare-fun c!972099 () Bool)

(assert (=> d!1757985 (= c!972099 (isEmpty!34576 (tail!10952 (t!376169 s!2326))))))

(declare-fun e!3429798 () Bool)

(assert (=> d!1757985 (= (matchZipper!1677 (derivationStepZipper!1638 lt!2250512 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))) e!3429798)))

(declare-fun b!5553128 () Bool)

(assert (=> b!5553128 (= e!3429798 (nullableZipper!1543 (derivationStepZipper!1638 lt!2250512 (head!11857 (t!376169 s!2326)))))))

(declare-fun b!5553129 () Bool)

(assert (=> b!5553129 (= e!3429798 (matchZipper!1677 (derivationStepZipper!1638 (derivationStepZipper!1638 lt!2250512 (head!11857 (t!376169 s!2326))) (head!11857 (tail!10952 (t!376169 s!2326)))) (tail!10952 (tail!10952 (t!376169 s!2326)))))))

(assert (= (and d!1757985 c!972099) b!5553128))

(assert (= (and d!1757985 (not c!972099)) b!5553129))

(assert (=> d!1757985 m!6545756))

(assert (=> d!1757985 m!6546052))

(assert (=> b!5553128 m!6545962))

(declare-fun m!6546202 () Bool)

(assert (=> b!5553128 m!6546202))

(assert (=> b!5553129 m!6545756))

(assert (=> b!5553129 m!6546056))

(assert (=> b!5553129 m!6545962))

(assert (=> b!5553129 m!6546056))

(declare-fun m!6546204 () Bool)

(assert (=> b!5553129 m!6546204))

(assert (=> b!5553129 m!6545756))

(assert (=> b!5553129 m!6546060))

(assert (=> b!5553129 m!6546204))

(assert (=> b!5553129 m!6546060))

(declare-fun m!6546206 () Bool)

(assert (=> b!5553129 m!6546206))

(assert (=> b!5552859 d!1757985))

(declare-fun bs!1286316 () Bool)

(declare-fun d!1757987 () Bool)

(assert (= bs!1286316 (and d!1757987 b!5552210)))

(declare-fun lambda!297886 () Int)

(assert (=> bs!1286316 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297886 lambda!297813))))

(declare-fun bs!1286317 () Bool)

(assert (= bs!1286317 (and d!1757987 d!1757789)))

(assert (=> bs!1286317 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297886 lambda!297835))))

(declare-fun bs!1286318 () Bool)

(assert (= bs!1286318 (and d!1757987 d!1757921)))

(assert (=> bs!1286318 (= lambda!297886 lambda!297879)))

(declare-fun bs!1286319 () Bool)

(assert (= bs!1286319 (and d!1757987 d!1757945)))

(assert (=> bs!1286319 (= lambda!297886 lambda!297881)))

(assert (=> d!1757987 true))

(assert (=> d!1757987 (= (derivationStepZipper!1638 lt!2250512 (head!11857 (t!376169 s!2326))) (flatMap!1148 lt!2250512 lambda!297886))))

(declare-fun bs!1286320 () Bool)

(assert (= bs!1286320 d!1757987))

(declare-fun m!6546208 () Bool)

(assert (=> bs!1286320 m!6546208))

(assert (=> b!5552859 d!1757987))

(assert (=> b!5552859 d!1757923))

(assert (=> b!5552859 d!1757925))

(declare-fun d!1757989 () Bool)

(assert (=> d!1757989 (= (Exists!2635 (ite c!971969 lambda!297858 lambda!297859)) (choose!42109 (ite c!971969 lambda!297858 lambda!297859)))))

(declare-fun bs!1286321 () Bool)

(assert (= bs!1286321 d!1757989))

(declare-fun m!6546210 () Bool)

(assert (=> bs!1286321 m!6546210))

(assert (=> bm!413873 d!1757989))

(declare-fun d!1757991 () Bool)

(assert (=> d!1757991 (= (Exists!2635 lambda!297852) (choose!42109 lambda!297852))))

(declare-fun bs!1286322 () Bool)

(assert (= bs!1286322 d!1757991))

(declare-fun m!6546212 () Bool)

(assert (=> bs!1286322 m!6546212))

(assert (=> d!1757835 d!1757991))

(declare-fun d!1757993 () Bool)

(assert (=> d!1757993 (= (Exists!2635 lambda!297853) (choose!42109 lambda!297853))))

(declare-fun bs!1286323 () Bool)

(assert (= bs!1286323 d!1757993))

(declare-fun m!6546214 () Bool)

(assert (=> bs!1286323 m!6546214))

(assert (=> d!1757835 d!1757993))

(declare-fun bs!1286325 () Bool)

(declare-fun d!1757995 () Bool)

(assert (= bs!1286325 (and d!1757995 d!1757835)))

(declare-fun lambda!297891 () Int)

(assert (=> bs!1286325 (not (= lambda!297891 lambda!297853))))

(declare-fun bs!1286326 () Bool)

(assert (= bs!1286326 (and d!1757995 b!5552209)))

(assert (=> bs!1286326 (= lambda!297891 lambda!297811)))

(declare-fun bs!1286327 () Bool)

(assert (= bs!1286327 (and d!1757995 d!1757831)))

(assert (=> bs!1286327 (= lambda!297891 lambda!297841)))

(assert (=> bs!1286325 (= lambda!297891 lambda!297852)))

(assert (=> bs!1286326 (not (= lambda!297891 lambda!297812))))

(declare-fun bs!1286328 () Bool)

(assert (= bs!1286328 (and d!1757995 b!5552626)))

(assert (=> bs!1286328 (not (= lambda!297891 lambda!297858))))

(declare-fun bs!1286329 () Bool)

(assert (= bs!1286329 (and d!1757995 b!5552627)))

(assert (=> bs!1286329 (not (= lambda!297891 lambda!297859))))

(assert (=> d!1757995 true))

(assert (=> d!1757995 true))

(assert (=> d!1757995 true))

(declare-fun lambda!297892 () Int)

(assert (=> bs!1286325 (= lambda!297892 lambda!297853)))

(assert (=> bs!1286326 (not (= lambda!297892 lambda!297811))))

(assert (=> bs!1286327 (not (= lambda!297892 lambda!297841))))

(assert (=> bs!1286325 (not (= lambda!297892 lambda!297852))))

(assert (=> bs!1286326 (= lambda!297892 lambda!297812)))

(assert (=> bs!1286328 (not (= lambda!297892 lambda!297858))))

(assert (=> bs!1286329 (= lambda!297892 lambda!297859)))

(declare-fun bs!1286330 () Bool)

(assert (= bs!1286330 d!1757995))

(assert (=> bs!1286330 (not (= lambda!297892 lambda!297891))))

(assert (=> d!1757995 true))

(assert (=> d!1757995 true))

(assert (=> d!1757995 true))

(assert (=> d!1757995 (= (Exists!2635 lambda!297891) (Exists!2635 lambda!297892))))

(assert (=> d!1757995 true))

(declare-fun _$90!1277 () Unit!155530)

(assert (=> d!1757995 (= (choose!42112 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326) _$90!1277)))

(declare-fun m!6546226 () Bool)

(assert (=> bs!1286330 m!6546226))

(declare-fun m!6546228 () Bool)

(assert (=> bs!1286330 m!6546228))

(assert (=> d!1757835 d!1757995))

(assert (=> d!1757835 d!1757905))

(assert (=> d!1757831 d!1757811))

(assert (=> d!1757831 d!1757905))

(assert (=> d!1757831 d!1757839))

(declare-fun d!1758003 () Bool)

(assert (=> d!1758003 (= (Exists!2635 lambda!297841) (choose!42109 lambda!297841))))

(declare-fun bs!1286331 () Bool)

(assert (= bs!1286331 d!1758003))

(declare-fun m!6546230 () Bool)

(assert (=> bs!1286331 m!6546230))

(assert (=> d!1757831 d!1758003))

(declare-fun bs!1286332 () Bool)

(declare-fun d!1758005 () Bool)

(assert (= bs!1286332 (and d!1758005 d!1757835)))

(declare-fun lambda!297895 () Int)

(assert (=> bs!1286332 (not (= lambda!297895 lambda!297853))))

(declare-fun bs!1286333 () Bool)

(assert (= bs!1286333 (and d!1758005 b!5552209)))

(assert (=> bs!1286333 (= lambda!297895 lambda!297811)))

(declare-fun bs!1286334 () Bool)

(assert (= bs!1286334 (and d!1758005 d!1757831)))

(assert (=> bs!1286334 (= lambda!297895 lambda!297841)))

(assert (=> bs!1286332 (= lambda!297895 lambda!297852)))

(assert (=> bs!1286333 (not (= lambda!297895 lambda!297812))))

(declare-fun bs!1286335 () Bool)

(assert (= bs!1286335 (and d!1758005 d!1757995)))

(assert (=> bs!1286335 (not (= lambda!297895 lambda!297892))))

(declare-fun bs!1286336 () Bool)

(assert (= bs!1286336 (and d!1758005 b!5552626)))

(assert (=> bs!1286336 (not (= lambda!297895 lambda!297858))))

(declare-fun bs!1286337 () Bool)

(assert (= bs!1286337 (and d!1758005 b!5552627)))

(assert (=> bs!1286337 (not (= lambda!297895 lambda!297859))))

(assert (=> bs!1286335 (= lambda!297895 lambda!297891)))

(assert (=> d!1758005 true))

(assert (=> d!1758005 true))

(assert (=> d!1758005 true))

(assert (=> d!1758005 (= (isDefined!12247 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326)) (Exists!2635 lambda!297895))))

(assert (=> d!1758005 true))

(declare-fun _$89!1653 () Unit!155530)

(assert (=> d!1758005 (= (choose!42111 (regOne!31582 r!7292) (regTwo!31582 r!7292) s!2326) _$89!1653)))

(declare-fun bs!1286338 () Bool)

(assert (= bs!1286338 d!1758005))

(assert (=> bs!1286338 m!6545542))

(assert (=> bs!1286338 m!6545542))

(assert (=> bs!1286338 m!6545544))

(declare-fun m!6546242 () Bool)

(assert (=> bs!1286338 m!6546242))

(assert (=> d!1757831 d!1758005))

(assert (=> b!5552749 d!1757907))

(assert (=> b!5552749 d!1757909))

(declare-fun bm!413940 () Bool)

(declare-fun call!413945 () Bool)

(declare-fun c!972108 () Bool)

(assert (=> bm!413940 (= call!413945 (nullable!5567 (ite c!972108 (regOne!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun b!5553187 () Bool)

(declare-fun e!3429845 () Bool)

(declare-fun e!3429844 () Bool)

(assert (=> b!5553187 (= e!3429845 e!3429844)))

(declare-fun res!2360566 () Bool)

(assert (=> b!5553187 (= res!2360566 call!413945)))

(assert (=> b!5553187 (=> (not res!2360566) (not e!3429844))))

(declare-fun b!5553188 () Bool)

(declare-fun e!3429842 () Bool)

(declare-fun e!3429841 () Bool)

(assert (=> b!5553188 (= e!3429842 e!3429841)))

(declare-fun res!2360568 () Bool)

(assert (=> b!5553188 (=> (not res!2360568) (not e!3429841))))

(assert (=> b!5553188 (= res!2360568 (and (not ((_ is EmptyLang!15535) (h!69228 (exprs!5419 (h!69229 zl!343))))) (not ((_ is ElementMatch!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun b!5553189 () Bool)

(declare-fun e!3429843 () Bool)

(declare-fun call!413946 () Bool)

(assert (=> b!5553189 (= e!3429843 call!413946)))

(declare-fun b!5553190 () Bool)

(assert (=> b!5553190 (= e!3429844 call!413946)))

(declare-fun d!1758011 () Bool)

(declare-fun res!2360570 () Bool)

(assert (=> d!1758011 (=> res!2360570 e!3429842)))

(assert (=> d!1758011 (= res!2360570 ((_ is EmptyExpr!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> d!1758011 (= (nullableFct!1684 (h!69228 (exprs!5419 (h!69229 zl!343)))) e!3429842)))

(declare-fun b!5553191 () Bool)

(declare-fun e!3429840 () Bool)

(assert (=> b!5553191 (= e!3429841 e!3429840)))

(declare-fun res!2360569 () Bool)

(assert (=> b!5553191 (=> res!2360569 e!3429840)))

(assert (=> b!5553191 (= res!2360569 ((_ is Star!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun bm!413941 () Bool)

(assert (=> bm!413941 (= call!413946 (nullable!5567 (ite c!972108 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))

(declare-fun b!5553192 () Bool)

(assert (=> b!5553192 (= e!3429840 e!3429845)))

(assert (=> b!5553192 (= c!972108 ((_ is Union!15535) (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5553193 () Bool)

(assert (=> b!5553193 (= e!3429845 e!3429843)))

(declare-fun res!2360567 () Bool)

(assert (=> b!5553193 (= res!2360567 call!413945)))

(assert (=> b!5553193 (=> res!2360567 e!3429843)))

(assert (= (and d!1758011 (not res!2360570)) b!5553188))

(assert (= (and b!5553188 res!2360568) b!5553191))

(assert (= (and b!5553191 (not res!2360569)) b!5553192))

(assert (= (and b!5553192 c!972108) b!5553193))

(assert (= (and b!5553192 (not c!972108)) b!5553187))

(assert (= (and b!5553193 (not res!2360567)) b!5553189))

(assert (= (and b!5553187 res!2360566) b!5553190))

(assert (= (or b!5553189 b!5553190) bm!413941))

(assert (= (or b!5553193 b!5553187) bm!413940))

(declare-fun m!6546254 () Bool)

(assert (=> bm!413940 m!6546254))

(declare-fun m!6546256 () Bool)

(assert (=> bm!413941 m!6546256))

(assert (=> d!1757797 d!1758011))

(declare-fun bs!1286341 () Bool)

(declare-fun b!5553197 () Bool)

(assert (= bs!1286341 (and b!5553197 d!1757835)))

(declare-fun lambda!297899 () Int)

(assert (=> bs!1286341 (not (= lambda!297899 lambda!297853))))

(declare-fun bs!1286342 () Bool)

(assert (= bs!1286342 (and b!5553197 b!5552209)))

(assert (=> bs!1286342 (not (= lambda!297899 lambda!297811))))

(declare-fun bs!1286343 () Bool)

(assert (= bs!1286343 (and b!5553197 d!1757831)))

(assert (=> bs!1286343 (not (= lambda!297899 lambda!297841))))

(assert (=> bs!1286341 (not (= lambda!297899 lambda!297852))))

(assert (=> bs!1286342 (not (= lambda!297899 lambda!297812))))

(declare-fun bs!1286344 () Bool)

(assert (= bs!1286344 (and b!5553197 d!1757995)))

(assert (=> bs!1286344 (not (= lambda!297899 lambda!297892))))

(declare-fun bs!1286345 () Bool)

(assert (= bs!1286345 (and b!5553197 b!5552627)))

(assert (=> bs!1286345 (not (= lambda!297899 lambda!297859))))

(assert (=> bs!1286344 (not (= lambda!297899 lambda!297891))))

(declare-fun bs!1286346 () Bool)

(assert (= bs!1286346 (and b!5553197 d!1758005)))

(assert (=> bs!1286346 (not (= lambda!297899 lambda!297895))))

(declare-fun bs!1286347 () Bool)

(assert (= bs!1286347 (and b!5553197 b!5552626)))

(assert (=> bs!1286347 (= (and (= (reg!15864 (regTwo!31583 r!7292)) (reg!15864 r!7292)) (= (regTwo!31583 r!7292) r!7292)) (= lambda!297899 lambda!297858))))

(assert (=> b!5553197 true))

(assert (=> b!5553197 true))

(declare-fun bs!1286348 () Bool)

(declare-fun b!5553198 () Bool)

(assert (= bs!1286348 (and b!5553198 d!1757835)))

(declare-fun lambda!297900 () Int)

(assert (=> bs!1286348 (= (and (= (regOne!31582 (regTwo!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regTwo!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297900 lambda!297853))))

(declare-fun bs!1286349 () Bool)

(assert (= bs!1286349 (and b!5553198 b!5552209)))

(assert (=> bs!1286349 (not (= lambda!297900 lambda!297811))))

(declare-fun bs!1286350 () Bool)

(assert (= bs!1286350 (and b!5553198 d!1757831)))

(assert (=> bs!1286350 (not (= lambda!297900 lambda!297841))))

(assert (=> bs!1286348 (not (= lambda!297900 lambda!297852))))

(assert (=> bs!1286349 (= (and (= (regOne!31582 (regTwo!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regTwo!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297900 lambda!297812))))

(declare-fun bs!1286351 () Bool)

(assert (= bs!1286351 (and b!5553198 b!5552627)))

(assert (=> bs!1286351 (= (and (= (regOne!31582 (regTwo!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regTwo!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297900 lambda!297859))))

(declare-fun bs!1286352 () Bool)

(assert (= bs!1286352 (and b!5553198 d!1757995)))

(assert (=> bs!1286352 (not (= lambda!297900 lambda!297891))))

(declare-fun bs!1286353 () Bool)

(assert (= bs!1286353 (and b!5553198 b!5553197)))

(assert (=> bs!1286353 (not (= lambda!297900 lambda!297899))))

(assert (=> bs!1286352 (= (and (= (regOne!31582 (regTwo!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regTwo!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297900 lambda!297892))))

(declare-fun bs!1286354 () Bool)

(assert (= bs!1286354 (and b!5553198 d!1758005)))

(assert (=> bs!1286354 (not (= lambda!297900 lambda!297895))))

(declare-fun bs!1286355 () Bool)

(assert (= bs!1286355 (and b!5553198 b!5552626)))

(assert (=> bs!1286355 (not (= lambda!297900 lambda!297858))))

(assert (=> b!5553198 true))

(assert (=> b!5553198 true))

(declare-fun bm!413942 () Bool)

(declare-fun call!413948 () Bool)

(declare-fun c!972110 () Bool)

(assert (=> bm!413942 (= call!413948 (Exists!2635 (ite c!972110 lambda!297899 lambda!297900)))))

(declare-fun b!5553195 () Bool)

(declare-fun e!3429851 () Bool)

(assert (=> b!5553195 (= e!3429851 (matchRSpec!2638 (regTwo!31583 (regTwo!31583 r!7292)) s!2326))))

(declare-fun b!5553196 () Bool)

(declare-fun c!972111 () Bool)

(assert (=> b!5553196 (= c!972111 ((_ is Union!15535) (regTwo!31583 r!7292)))))

(declare-fun e!3429849 () Bool)

(declare-fun e!3429848 () Bool)

(assert (=> b!5553196 (= e!3429849 e!3429848)))

(declare-fun e!3429847 () Bool)

(assert (=> b!5553197 (= e!3429847 call!413948)))

(declare-fun e!3429852 () Bool)

(assert (=> b!5553198 (= e!3429852 call!413948)))

(declare-fun b!5553199 () Bool)

(assert (=> b!5553199 (= e!3429849 (= s!2326 (Cons!62782 (c!971841 (regTwo!31583 r!7292)) Nil!62782)))))

(declare-fun b!5553200 () Bool)

(declare-fun e!3429846 () Bool)

(declare-fun e!3429850 () Bool)

(assert (=> b!5553200 (= e!3429846 e!3429850)))

(declare-fun res!2360571 () Bool)

(assert (=> b!5553200 (= res!2360571 (not ((_ is EmptyLang!15535) (regTwo!31583 r!7292))))))

(assert (=> b!5553200 (=> (not res!2360571) (not e!3429850))))

(declare-fun b!5553201 () Bool)

(declare-fun c!972112 () Bool)

(assert (=> b!5553201 (= c!972112 ((_ is ElementMatch!15535) (regTwo!31583 r!7292)))))

(assert (=> b!5553201 (= e!3429850 e!3429849)))

(declare-fun d!1758019 () Bool)

(declare-fun c!972109 () Bool)

(assert (=> d!1758019 (= c!972109 ((_ is EmptyExpr!15535) (regTwo!31583 r!7292)))))

(assert (=> d!1758019 (= (matchRSpec!2638 (regTwo!31583 r!7292) s!2326) e!3429846)))

(declare-fun b!5553194 () Bool)

(declare-fun call!413947 () Bool)

(assert (=> b!5553194 (= e!3429846 call!413947)))

(declare-fun b!5553202 () Bool)

(assert (=> b!5553202 (= e!3429848 e!3429851)))

(declare-fun res!2360572 () Bool)

(assert (=> b!5553202 (= res!2360572 (matchRSpec!2638 (regOne!31583 (regTwo!31583 r!7292)) s!2326))))

(assert (=> b!5553202 (=> res!2360572 e!3429851)))

(declare-fun b!5553203 () Bool)

(assert (=> b!5553203 (= e!3429848 e!3429852)))

(assert (=> b!5553203 (= c!972110 ((_ is Star!15535) (regTwo!31583 r!7292)))))

(declare-fun bm!413943 () Bool)

(assert (=> bm!413943 (= call!413947 (isEmpty!34576 s!2326))))

(declare-fun b!5553204 () Bool)

(declare-fun res!2360573 () Bool)

(assert (=> b!5553204 (=> res!2360573 e!3429847)))

(assert (=> b!5553204 (= res!2360573 call!413947)))

(assert (=> b!5553204 (= e!3429852 e!3429847)))

(assert (= (and d!1758019 c!972109) b!5553194))

(assert (= (and d!1758019 (not c!972109)) b!5553200))

(assert (= (and b!5553200 res!2360571) b!5553201))

(assert (= (and b!5553201 c!972112) b!5553199))

(assert (= (and b!5553201 (not c!972112)) b!5553196))

(assert (= (and b!5553196 c!972111) b!5553202))

(assert (= (and b!5553196 (not c!972111)) b!5553203))

(assert (= (and b!5553202 (not res!2360572)) b!5553195))

(assert (= (and b!5553203 c!972110) b!5553204))

(assert (= (and b!5553203 (not c!972110)) b!5553198))

(assert (= (and b!5553204 (not res!2360573)) b!5553197))

(assert (= (or b!5553197 b!5553198) bm!413942))

(assert (= (or b!5553194 b!5553204) bm!413943))

(declare-fun m!6546258 () Bool)

(assert (=> bm!413942 m!6546258))

(declare-fun m!6546260 () Bool)

(assert (=> b!5553195 m!6546260))

(declare-fun m!6546262 () Bool)

(assert (=> b!5553202 m!6546262))

(assert (=> bm!413943 m!6545860))

(assert (=> b!5552624 d!1758019))

(declare-fun d!1758021 () Bool)

(declare-fun res!2360576 () Bool)

(declare-fun e!3429855 () Bool)

(assert (=> d!1758021 (=> res!2360576 e!3429855)))

(assert (=> d!1758021 (= res!2360576 ((_ is Nil!62780) lt!2250599))))

(assert (=> d!1758021 (= (forall!14709 lt!2250599 lambda!297874) e!3429855)))

(declare-fun b!5553207 () Bool)

(declare-fun e!3429856 () Bool)

(assert (=> b!5553207 (= e!3429855 e!3429856)))

(declare-fun res!2360577 () Bool)

(assert (=> b!5553207 (=> (not res!2360577) (not e!3429856))))

(assert (=> b!5553207 (= res!2360577 (dynLambda!24555 lambda!297874 (h!69228 lt!2250599)))))

(declare-fun b!5553208 () Bool)

(assert (=> b!5553208 (= e!3429856 (forall!14709 (t!376167 lt!2250599) lambda!297874))))

(assert (= (and d!1758021 (not res!2360576)) b!5553207))

(assert (= (and b!5553207 res!2360577) b!5553208))

(declare-fun b_lambda!210919 () Bool)

(assert (=> (not b_lambda!210919) (not b!5553207)))

(declare-fun m!6546264 () Bool)

(assert (=> b!5553207 m!6546264))

(declare-fun m!6546266 () Bool)

(assert (=> b!5553208 m!6546266))

(assert (=> d!1757861 d!1758021))

(declare-fun d!1758023 () Bool)

(assert (=> d!1758023 (= (isEmpty!34577 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326)) (not ((_ is Some!15543) (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) Nil!62782 s!2326 s!2326))))))

(assert (=> d!1757839 d!1758023))

(declare-fun bm!413944 () Bool)

(declare-fun call!413953 () (InoxSet Context!9838))

(declare-fun call!413949 () (InoxSet Context!9838))

(assert (=> bm!413944 (= call!413953 call!413949)))

(declare-fun b!5553210 () Bool)

(declare-fun e!3429858 () (InoxSet Context!9838))

(declare-fun call!413954 () (InoxSet Context!9838))

(assert (=> b!5553210 (= e!3429858 call!413954)))

(declare-fun bm!413945 () Bool)

(declare-fun call!413952 () List!62904)

(declare-fun c!972114 () Bool)

(declare-fun c!972115 () Bool)

(assert (=> bm!413945 (= call!413952 ($colon$colon!1605 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))) (ite (or c!972115 c!972114) (regTwo!31582 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))))

(declare-fun bm!413946 () Bool)

(declare-fun call!413951 () List!62904)

(declare-fun c!972116 () Bool)

(assert (=> bm!413946 (= call!413949 (derivationStepZipperDown!877 (ite c!972116 (regTwo!31583 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (ite c!972115 (regTwo!31582 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (ite c!972114 (regOne!31582 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (reg!15864 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))) (ite (or c!972116 c!972115) (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (Context!9839 call!413951)) (h!69230 s!2326)))))

(declare-fun bm!413948 () Bool)

(assert (=> bm!413948 (= call!413954 call!413953)))

(declare-fun bm!413949 () Bool)

(declare-fun call!413950 () (InoxSet Context!9838))

(assert (=> bm!413949 (= call!413950 (derivationStepZipperDown!877 (ite c!972116 (regOne!31583 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (regOne!31582 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))) (ite c!972116 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (Context!9839 call!413952)) (h!69230 s!2326)))))

(declare-fun b!5553211 () Bool)

(declare-fun e!3429859 () (InoxSet Context!9838))

(declare-fun e!3429862 () (InoxSet Context!9838))

(assert (=> b!5553211 (= e!3429859 e!3429862)))

(assert (=> b!5553211 (= c!972116 ((_ is Union!15535) (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))

(declare-fun b!5553212 () Bool)

(assert (=> b!5553212 (= e!3429859 (store ((as const (Array Context!9838 Bool)) false) (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) true))))

(declare-fun b!5553213 () Bool)

(assert (=> b!5553213 (= e!3429858 ((as const (Array Context!9838 Bool)) false))))

(declare-fun b!5553214 () Bool)

(declare-fun e!3429860 () Bool)

(assert (=> b!5553214 (= e!3429860 (nullable!5567 (regOne!31582 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))))))))

(declare-fun b!5553215 () Bool)

(assert (=> b!5553215 (= c!972115 e!3429860)))

(declare-fun res!2360579 () Bool)

(assert (=> b!5553215 (=> (not res!2360579) (not e!3429860))))

(assert (=> b!5553215 (= res!2360579 ((_ is Concat!24380) (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))

(declare-fun e!3429863 () (InoxSet Context!9838))

(assert (=> b!5553215 (= e!3429862 e!3429863)))

(declare-fun b!5553216 () Bool)

(assert (=> b!5553216 (= e!3429863 ((_ map or) call!413950 call!413953))))

(declare-fun b!5553217 () Bool)

(declare-fun e!3429861 () (InoxSet Context!9838))

(assert (=> b!5553217 (= e!3429861 call!413954)))

(declare-fun b!5553218 () Bool)

(assert (=> b!5553218 (= e!3429862 ((_ map or) call!413950 call!413949))))

(declare-fun d!1758025 () Bool)

(declare-fun c!972117 () Bool)

(assert (=> d!1758025 (= c!972117 (and ((_ is ElementMatch!15535) (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (= (c!971841 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (h!69230 s!2326))))))

(assert (=> d!1758025 (= (derivationStepZipperDown!877 (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))) (Context!9839 (t!376167 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))) (h!69230 s!2326)) e!3429859)))

(declare-fun bm!413947 () Bool)

(assert (=> bm!413947 (= call!413951 call!413952)))

(declare-fun b!5553219 () Bool)

(assert (=> b!5553219 (= e!3429863 e!3429861)))

(assert (=> b!5553219 (= c!972114 ((_ is Concat!24380) (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))

(declare-fun b!5553220 () Bool)

(declare-fun c!972113 () Bool)

(assert (=> b!5553220 (= c!972113 ((_ is Star!15535) (h!69228 (exprs!5419 (Context!9839 (Cons!62780 (h!69228 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343)))))))))))

(assert (=> b!5553220 (= e!3429861 e!3429858)))

(assert (= (and d!1758025 c!972117) b!5553212))

(assert (= (and d!1758025 (not c!972117)) b!5553211))

(assert (= (and b!5553211 c!972116) b!5553218))

(assert (= (and b!5553211 (not c!972116)) b!5553215))

(assert (= (and b!5553215 res!2360579) b!5553214))

(assert (= (and b!5553215 c!972115) b!5553216))

(assert (= (and b!5553215 (not c!972115)) b!5553219))

(assert (= (and b!5553219 c!972114) b!5553217))

(assert (= (and b!5553219 (not c!972114)) b!5553220))

(assert (= (and b!5553220 c!972113) b!5553210))

(assert (= (and b!5553220 (not c!972113)) b!5553213))

(assert (= (or b!5553217 b!5553210) bm!413947))

(assert (= (or b!5553217 b!5553210) bm!413948))

(assert (= (or b!5553216 bm!413947) bm!413945))

(assert (= (or b!5553216 bm!413948) bm!413944))

(assert (= (or b!5553218 bm!413944) bm!413946))

(assert (= (or b!5553218 b!5553216) bm!413949))

(declare-fun m!6546268 () Bool)

(assert (=> b!5553214 m!6546268))

(declare-fun m!6546270 () Bool)

(assert (=> bm!413949 m!6546270))

(declare-fun m!6546272 () Bool)

(assert (=> bm!413945 m!6546272))

(declare-fun m!6546274 () Bool)

(assert (=> bm!413946 m!6546274))

(declare-fun m!6546276 () Bool)

(assert (=> b!5553212 m!6546276))

(assert (=> bm!413836 d!1758025))

(declare-fun d!1758029 () Bool)

(assert (=> d!1758029 (= (isEmpty!34573 (tail!10953 (exprs!5419 (h!69229 zl!343)))) ((_ is Nil!62780) (tail!10953 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> b!5552789 d!1758029))

(declare-fun d!1758031 () Bool)

(assert (=> d!1758031 (= (tail!10953 (exprs!5419 (h!69229 zl!343))) (t!376167 (exprs!5419 (h!69229 zl!343))))))

(assert (=> b!5552789 d!1758031))

(declare-fun d!1758033 () Bool)

(declare-fun res!2360585 () Bool)

(declare-fun e!3429871 () Bool)

(assert (=> d!1758033 (=> res!2360585 e!3429871)))

(assert (=> d!1758033 (= res!2360585 ((_ is Nil!62780) (exprs!5419 setElem!36931)))))

(assert (=> d!1758033 (= (forall!14709 (exprs!5419 setElem!36931) lambda!297868) e!3429871)))

(declare-fun b!5553230 () Bool)

(declare-fun e!3429872 () Bool)

(assert (=> b!5553230 (= e!3429871 e!3429872)))

(declare-fun res!2360586 () Bool)

(assert (=> b!5553230 (=> (not res!2360586) (not e!3429872))))

(assert (=> b!5553230 (= res!2360586 (dynLambda!24555 lambda!297868 (h!69228 (exprs!5419 setElem!36931))))))

(declare-fun b!5553231 () Bool)

(assert (=> b!5553231 (= e!3429872 (forall!14709 (t!376167 (exprs!5419 setElem!36931)) lambda!297868))))

(assert (= (and d!1758033 (not res!2360585)) b!5553230))

(assert (= (and b!5553230 res!2360586) b!5553231))

(declare-fun b_lambda!210921 () Bool)

(assert (=> (not b_lambda!210921) (not b!5553230)))

(declare-fun m!6546284 () Bool)

(assert (=> b!5553230 m!6546284))

(declare-fun m!6546286 () Bool)

(assert (=> b!5553231 m!6546286))

(assert (=> d!1757855 d!1758033))

(declare-fun d!1758037 () Bool)

(assert (=> d!1758037 (= (nullable!5567 (h!69228 (exprs!5419 lt!2250513))) (nullableFct!1684 (h!69228 (exprs!5419 lt!2250513))))))

(declare-fun bs!1286356 () Bool)

(assert (= bs!1286356 d!1758037))

(declare-fun m!6546288 () Bool)

(assert (=> bs!1286356 m!6546288))

(assert (=> b!5552392 d!1758037))

(declare-fun d!1758039 () Bool)

(declare-fun c!972120 () Bool)

(assert (=> d!1758039 (= c!972120 (isEmpty!34576 (tail!10952 (t!376169 s!2326))))))

(declare-fun e!3429873 () Bool)

(assert (=> d!1758039 (= (matchZipper!1677 (derivationStepZipper!1638 lt!2250518 (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))) e!3429873)))

(declare-fun b!5553232 () Bool)

(assert (=> b!5553232 (= e!3429873 (nullableZipper!1543 (derivationStepZipper!1638 lt!2250518 (head!11857 (t!376169 s!2326)))))))

(declare-fun b!5553233 () Bool)

(assert (=> b!5553233 (= e!3429873 (matchZipper!1677 (derivationStepZipper!1638 (derivationStepZipper!1638 lt!2250518 (head!11857 (t!376169 s!2326))) (head!11857 (tail!10952 (t!376169 s!2326)))) (tail!10952 (tail!10952 (t!376169 s!2326)))))))

(assert (= (and d!1758039 c!972120) b!5553232))

(assert (= (and d!1758039 (not c!972120)) b!5553233))

(assert (=> d!1758039 m!6545756))

(assert (=> d!1758039 m!6546052))

(assert (=> b!5553232 m!6545754))

(declare-fun m!6546290 () Bool)

(assert (=> b!5553232 m!6546290))

(assert (=> b!5553233 m!6545756))

(assert (=> b!5553233 m!6546056))

(assert (=> b!5553233 m!6545754))

(assert (=> b!5553233 m!6546056))

(declare-fun m!6546292 () Bool)

(assert (=> b!5553233 m!6546292))

(assert (=> b!5553233 m!6545756))

(assert (=> b!5553233 m!6546060))

(assert (=> b!5553233 m!6546292))

(assert (=> b!5553233 m!6546060))

(declare-fun m!6546294 () Bool)

(assert (=> b!5553233 m!6546294))

(assert (=> b!5552428 d!1758039))

(declare-fun bs!1286357 () Bool)

(declare-fun d!1758043 () Bool)

(assert (= bs!1286357 (and d!1758043 d!1757789)))

(declare-fun lambda!297901 () Int)

(assert (=> bs!1286357 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297901 lambda!297835))))

(declare-fun bs!1286358 () Bool)

(assert (= bs!1286358 (and d!1758043 d!1757921)))

(assert (=> bs!1286358 (= lambda!297901 lambda!297879)))

(declare-fun bs!1286359 () Bool)

(assert (= bs!1286359 (and d!1758043 b!5552210)))

(assert (=> bs!1286359 (= (= (head!11857 (t!376169 s!2326)) (h!69230 s!2326)) (= lambda!297901 lambda!297813))))

(declare-fun bs!1286360 () Bool)

(assert (= bs!1286360 (and d!1758043 d!1757945)))

(assert (=> bs!1286360 (= lambda!297901 lambda!297881)))

(declare-fun bs!1286361 () Bool)

(assert (= bs!1286361 (and d!1758043 d!1757987)))

(assert (=> bs!1286361 (= lambda!297901 lambda!297886)))

(assert (=> d!1758043 true))

(assert (=> d!1758043 (= (derivationStepZipper!1638 lt!2250518 (head!11857 (t!376169 s!2326))) (flatMap!1148 lt!2250518 lambda!297901))))

(declare-fun bs!1286362 () Bool)

(assert (= bs!1286362 d!1758043))

(declare-fun m!6546296 () Bool)

(assert (=> bs!1286362 m!6546296))

(assert (=> b!5552428 d!1758043))

(assert (=> b!5552428 d!1757923))

(assert (=> b!5552428 d!1757925))

(declare-fun bs!1286363 () Bool)

(declare-fun d!1758047 () Bool)

(assert (= bs!1286363 (and d!1758047 d!1757863)))

(declare-fun lambda!297902 () Int)

(assert (=> bs!1286363 (= lambda!297902 lambda!297875)))

(declare-fun bs!1286364 () Bool)

(assert (= bs!1286364 (and d!1758047 d!1757855)))

(assert (=> bs!1286364 (= lambda!297902 lambda!297868)))

(declare-fun bs!1286365 () Bool)

(assert (= bs!1286365 (and d!1758047 d!1757963)))

(assert (=> bs!1286365 (= lambda!297902 lambda!297882)))

(declare-fun bs!1286366 () Bool)

(assert (= bs!1286366 (and d!1758047 d!1757853)))

(assert (=> bs!1286366 (= lambda!297902 lambda!297865)))

(declare-fun bs!1286367 () Bool)

(assert (= bs!1286367 (and d!1758047 d!1757931)))

(assert (=> bs!1286367 (= lambda!297902 lambda!297880)))

(declare-fun bs!1286368 () Bool)

(assert (= bs!1286368 (and d!1758047 d!1757861)))

(assert (=> bs!1286368 (= lambda!297902 lambda!297874)))

(declare-fun bs!1286369 () Bool)

(assert (= bs!1286369 (and d!1758047 d!1757975)))

(assert (=> bs!1286369 (= lambda!297902 lambda!297885)))

(declare-fun bs!1286370 () Bool)

(assert (= bs!1286370 (and d!1758047 d!1757859)))

(assert (=> bs!1286370 (= lambda!297902 lambda!297871)))

(assert (=> d!1758047 (= (inv!82084 setElem!36937) (forall!14709 (exprs!5419 setElem!36937) lambda!297902))))

(declare-fun bs!1286371 () Bool)

(assert (= bs!1286371 d!1758047))

(declare-fun m!6546298 () Bool)

(assert (=> bs!1286371 m!6546298))

(assert (=> setNonEmpty!36937 d!1758047))

(assert (=> bm!413877 d!1757915))

(declare-fun d!1758049 () Bool)

(assert (=> d!1758049 true))

(declare-fun setRes!36940 () Bool)

(assert (=> d!1758049 setRes!36940))

(declare-fun condSetEmpty!36940 () Bool)

(declare-fun res!2360597 () (InoxSet Context!9838))

(assert (=> d!1758049 (= condSetEmpty!36940 (= res!2360597 ((as const (Array Context!9838 Bool)) false)))))

(assert (=> d!1758049 (= (choose!42107 z!1189 lambda!297813) res!2360597)))

(declare-fun setIsEmpty!36940 () Bool)

(assert (=> setIsEmpty!36940 setRes!36940))

(declare-fun e!3429883 () Bool)

(declare-fun tp!1532070 () Bool)

(declare-fun setNonEmpty!36940 () Bool)

(declare-fun setElem!36940 () Context!9838)

(assert (=> setNonEmpty!36940 (= setRes!36940 (and tp!1532070 (inv!82084 setElem!36940) e!3429883))))

(declare-fun setRest!36940 () (InoxSet Context!9838))

(assert (=> setNonEmpty!36940 (= res!2360597 ((_ map or) (store ((as const (Array Context!9838 Bool)) false) setElem!36940 true) setRest!36940))))

(declare-fun b!5553250 () Bool)

(declare-fun tp!1532071 () Bool)

(assert (=> b!5553250 (= e!3429883 tp!1532071)))

(assert (= (and d!1758049 condSetEmpty!36940) setIsEmpty!36940))

(assert (= (and d!1758049 (not condSetEmpty!36940)) setNonEmpty!36940))

(assert (= setNonEmpty!36940 b!5553250))

(declare-fun m!6546312 () Bool)

(assert (=> setNonEmpty!36940 m!6546312))

(assert (=> d!1757801 d!1758049))

(declare-fun d!1758053 () Bool)

(declare-fun c!972124 () Bool)

(assert (=> d!1758053 (= c!972124 (isEmpty!34576 (t!376169 s!2326)))))

(declare-fun e!3429884 () Bool)

(assert (=> d!1758053 (= (matchZipper!1677 ((_ map or) lt!2250521 lt!2250518) (t!376169 s!2326)) e!3429884)))

(declare-fun b!5553251 () Bool)

(assert (=> b!5553251 (= e!3429884 (nullableZipper!1543 ((_ map or) lt!2250521 lt!2250518)))))

(declare-fun b!5553252 () Bool)

(assert (=> b!5553252 (= e!3429884 (matchZipper!1677 (derivationStepZipper!1638 ((_ map or) lt!2250521 lt!2250518) (head!11857 (t!376169 s!2326))) (tail!10952 (t!376169 s!2326))))))

(assert (= (and d!1758053 c!972124) b!5553251))

(assert (= (and d!1758053 (not c!972124)) b!5553252))

(assert (=> d!1758053 m!6545748))

(declare-fun m!6546314 () Bool)

(assert (=> b!5553251 m!6546314))

(assert (=> b!5553252 m!6545752))

(assert (=> b!5553252 m!6545752))

(declare-fun m!6546316 () Bool)

(assert (=> b!5553252 m!6546316))

(assert (=> b!5553252 m!6545756))

(assert (=> b!5553252 m!6546316))

(assert (=> b!5553252 m!6545756))

(declare-fun m!6546318 () Bool)

(assert (=> b!5553252 m!6546318))

(assert (=> d!1757865 d!1758053))

(assert (=> d!1757865 d!1757873))

(declare-fun d!1758057 () Bool)

(declare-fun e!3429887 () Bool)

(assert (=> d!1758057 (= (matchZipper!1677 ((_ map or) lt!2250521 lt!2250518) (t!376169 s!2326)) e!3429887)))

(declare-fun res!2360600 () Bool)

(assert (=> d!1758057 (=> res!2360600 e!3429887)))

(assert (=> d!1758057 (= res!2360600 (matchZipper!1677 lt!2250521 (t!376169 s!2326)))))

(assert (=> d!1758057 true))

(declare-fun _$48!1114 () Unit!155530)

(assert (=> d!1758057 (= (choose!42116 lt!2250521 lt!2250518 (t!376169 s!2326)) _$48!1114)))

(declare-fun b!5553255 () Bool)

(assert (=> b!5553255 (= e!3429887 (matchZipper!1677 lt!2250518 (t!376169 s!2326)))))

(assert (= (and d!1758057 (not res!2360600)) b!5553255))

(assert (=> d!1758057 m!6545950))

(assert (=> d!1758057 m!6545568))

(assert (=> b!5553255 m!6545574))

(assert (=> d!1757865 d!1758057))

(declare-fun bs!1286372 () Bool)

(declare-fun d!1758061 () Bool)

(assert (= bs!1286372 (and d!1758061 d!1757889)))

(declare-fun lambda!297903 () Int)

(assert (=> bs!1286372 (= lambda!297903 lambda!297878)))

(declare-fun bs!1286373 () Bool)

(assert (= bs!1286373 (and d!1758061 d!1757967)))

(assert (=> bs!1286373 (= lambda!297903 lambda!297883)))

(declare-fun bs!1286374 () Bool)

(assert (= bs!1286374 (and d!1758061 d!1757973)))

(assert (=> bs!1286374 (= lambda!297903 lambda!297884)))

(assert (=> d!1758061 (= (nullableZipper!1543 lt!2250521) (exists!2150 lt!2250521 lambda!297903))))

(declare-fun bs!1286375 () Bool)

(assert (= bs!1286375 d!1758061))

(declare-fun m!6546320 () Bool)

(assert (=> bs!1286375 m!6546320))

(assert (=> b!5552862 d!1758061))

(declare-fun b!5553256 () Bool)

(declare-fun e!3429891 () Bool)

(declare-fun call!413961 () Bool)

(assert (=> b!5553256 (= e!3429891 call!413961)))

(declare-fun d!1758063 () Bool)

(declare-fun res!2360602 () Bool)

(declare-fun e!3429890 () Bool)

(assert (=> d!1758063 (=> res!2360602 e!3429890)))

(assert (=> d!1758063 (= res!2360602 ((_ is ElementMatch!15535) lt!2250557))))

(assert (=> d!1758063 (= (validRegex!7271 lt!2250557) e!3429890)))

(declare-fun b!5553257 () Bool)

(declare-fun res!2360604 () Bool)

(declare-fun e!3429889 () Bool)

(assert (=> b!5553257 (=> res!2360604 e!3429889)))

(assert (=> b!5553257 (= res!2360604 (not ((_ is Concat!24380) lt!2250557)))))

(declare-fun e!3429888 () Bool)

(assert (=> b!5553257 (= e!3429888 e!3429889)))

(declare-fun b!5553258 () Bool)

(declare-fun e!3429892 () Bool)

(assert (=> b!5553258 (= e!3429892 e!3429888)))

(declare-fun c!972125 () Bool)

(assert (=> b!5553258 (= c!972125 ((_ is Union!15535) lt!2250557))))

(declare-fun b!5553259 () Bool)

(declare-fun e!3429893 () Bool)

(declare-fun call!413959 () Bool)

(assert (=> b!5553259 (= e!3429893 call!413959)))

(declare-fun bm!413954 () Bool)

(assert (=> bm!413954 (= call!413961 call!413959)))

(declare-fun b!5553260 () Bool)

(declare-fun res!2360601 () Bool)

(assert (=> b!5553260 (=> (not res!2360601) (not e!3429891))))

(declare-fun call!413960 () Bool)

(assert (=> b!5553260 (= res!2360601 call!413960)))

(assert (=> b!5553260 (= e!3429888 e!3429891)))

(declare-fun bm!413955 () Bool)

(assert (=> bm!413955 (= call!413960 (validRegex!7271 (ite c!972125 (regOne!31583 lt!2250557) (regOne!31582 lt!2250557))))))

(declare-fun c!972126 () Bool)

(declare-fun bm!413956 () Bool)

(assert (=> bm!413956 (= call!413959 (validRegex!7271 (ite c!972126 (reg!15864 lt!2250557) (ite c!972125 (regTwo!31583 lt!2250557) (regTwo!31582 lt!2250557)))))))

(declare-fun b!5553261 () Bool)

(declare-fun e!3429894 () Bool)

(assert (=> b!5553261 (= e!3429889 e!3429894)))

(declare-fun res!2360603 () Bool)

(assert (=> b!5553261 (=> (not res!2360603) (not e!3429894))))

(assert (=> b!5553261 (= res!2360603 call!413960)))

(declare-fun b!5553262 () Bool)

(assert (=> b!5553262 (= e!3429894 call!413961)))

(declare-fun b!5553263 () Bool)

(assert (=> b!5553263 (= e!3429892 e!3429893)))

(declare-fun res!2360605 () Bool)

(assert (=> b!5553263 (= res!2360605 (not (nullable!5567 (reg!15864 lt!2250557))))))

(assert (=> b!5553263 (=> (not res!2360605) (not e!3429893))))

(declare-fun b!5553264 () Bool)

(assert (=> b!5553264 (= e!3429890 e!3429892)))

(assert (=> b!5553264 (= c!972126 ((_ is Star!15535) lt!2250557))))

(assert (= (and d!1758063 (not res!2360602)) b!5553264))

(assert (= (and b!5553264 c!972126) b!5553263))

(assert (= (and b!5553264 (not c!972126)) b!5553258))

(assert (= (and b!5553263 res!2360605) b!5553259))

(assert (= (and b!5553258 c!972125) b!5553260))

(assert (= (and b!5553258 (not c!972125)) b!5553257))

(assert (= (and b!5553260 res!2360601) b!5553256))

(assert (= (and b!5553257 (not res!2360604)) b!5553261))

(assert (= (and b!5553261 res!2360603) b!5553262))

(assert (= (or b!5553256 b!5553262) bm!413954))

(assert (= (or b!5553260 b!5553261) bm!413955))

(assert (= (or b!5553259 bm!413954) bm!413956))

(declare-fun m!6546324 () Bool)

(assert (=> bm!413955 m!6546324))

(declare-fun m!6546326 () Bool)

(assert (=> bm!413956 m!6546326))

(declare-fun m!6546328 () Bool)

(assert (=> b!5553263 m!6546328))

(assert (=> d!1757805 d!1758063))

(assert (=> d!1757805 d!1757859))

(assert (=> d!1757805 d!1757861))

(declare-fun d!1758069 () Bool)

(declare-fun res!2360611 () Bool)

(declare-fun e!3429902 () Bool)

(assert (=> d!1758069 (=> res!2360611 e!3429902)))

(assert (=> d!1758069 (= res!2360611 ((_ is Nil!62781) lt!2250605))))

(assert (=> d!1758069 (= (noDuplicate!1520 lt!2250605) e!3429902)))

(declare-fun b!5553274 () Bool)

(declare-fun e!3429903 () Bool)

(assert (=> b!5553274 (= e!3429902 e!3429903)))

(declare-fun res!2360612 () Bool)

(assert (=> b!5553274 (=> (not res!2360612) (not e!3429903))))

(declare-fun contains!19797 (List!62905 Context!9838) Bool)

(assert (=> b!5553274 (= res!2360612 (not (contains!19797 (t!376168 lt!2250605) (h!69229 lt!2250605))))))

(declare-fun b!5553275 () Bool)

(assert (=> b!5553275 (= e!3429903 (noDuplicate!1520 (t!376168 lt!2250605)))))

(assert (= (and d!1758069 (not res!2360611)) b!5553274))

(assert (= (and b!5553274 res!2360612) b!5553275))

(declare-fun m!6546336 () Bool)

(assert (=> b!5553274 m!6546336))

(declare-fun m!6546338 () Bool)

(assert (=> b!5553275 m!6546338))

(assert (=> d!1757875 d!1758069))

(declare-fun d!1758073 () Bool)

(declare-fun e!3429912 () Bool)

(assert (=> d!1758073 e!3429912))

(declare-fun res!2360618 () Bool)

(assert (=> d!1758073 (=> (not res!2360618) (not e!3429912))))

(declare-fun res!2360617 () List!62905)

(assert (=> d!1758073 (= res!2360618 (noDuplicate!1520 res!2360617))))

(declare-fun e!3429911 () Bool)

(assert (=> d!1758073 e!3429911))

(assert (=> d!1758073 (= (choose!42117 z!1189) res!2360617)))

(declare-fun b!5553283 () Bool)

(declare-fun e!3429910 () Bool)

(declare-fun tp!1532077 () Bool)

(assert (=> b!5553283 (= e!3429910 tp!1532077)))

(declare-fun b!5553282 () Bool)

(declare-fun tp!1532076 () Bool)

(assert (=> b!5553282 (= e!3429911 (and (inv!82084 (h!69229 res!2360617)) e!3429910 tp!1532076))))

(declare-fun b!5553284 () Bool)

(assert (=> b!5553284 (= e!3429912 (= (content!11302 res!2360617) z!1189))))

(assert (= b!5553282 b!5553283))

(assert (= (and d!1758073 ((_ is Cons!62781) res!2360617)) b!5553282))

(assert (= (and d!1758073 res!2360618) b!5553284))

(declare-fun m!6546342 () Bool)

(assert (=> d!1758073 m!6546342))

(declare-fun m!6546344 () Bool)

(assert (=> b!5553282 m!6546344))

(declare-fun m!6546346 () Bool)

(assert (=> b!5553284 m!6546346))

(assert (=> d!1757875 d!1758073))

(assert (=> bm!413874 d!1757915))

(assert (=> b!5552759 d!1757883))

(declare-fun bs!1286381 () Bool)

(declare-fun d!1758079 () Bool)

(assert (= bs!1286381 (and d!1758079 d!1757889)))

(declare-fun lambda!297905 () Int)

(assert (=> bs!1286381 (= lambda!297905 lambda!297878)))

(declare-fun bs!1286382 () Bool)

(assert (= bs!1286382 (and d!1758079 d!1757967)))

(assert (=> bs!1286382 (= lambda!297905 lambda!297883)))

(declare-fun bs!1286383 () Bool)

(assert (= bs!1286383 (and d!1758079 d!1757973)))

(assert (=> bs!1286383 (= lambda!297905 lambda!297884)))

(declare-fun bs!1286384 () Bool)

(assert (= bs!1286384 (and d!1758079 d!1758061)))

(assert (=> bs!1286384 (= lambda!297905 lambda!297903)))

(assert (=> d!1758079 (= (nullableZipper!1543 lt!2250515) (exists!2150 lt!2250515 lambda!297905))))

(declare-fun bs!1286385 () Bool)

(assert (= bs!1286385 d!1758079))

(declare-fun m!6546348 () Bool)

(assert (=> bs!1286385 m!6546348))

(assert (=> b!5552860 d!1758079))

(declare-fun d!1758081 () Bool)

(assert (=> d!1758081 (= (flatMap!1148 z!1189 lambda!297835) (choose!42107 z!1189 lambda!297835))))

(declare-fun bs!1286386 () Bool)

(assert (= bs!1286386 d!1758081))

(declare-fun m!6546350 () Bool)

(assert (=> bs!1286386 m!6546350))

(assert (=> d!1757789 d!1758081))

(declare-fun d!1758083 () Bool)

(declare-fun c!972129 () Bool)

(assert (=> d!1758083 (= c!972129 (isEmpty!34576 (tail!10952 s!2326)))))

(declare-fun e!3429913 () Bool)

(assert (=> d!1758083 (= (matchZipper!1677 (derivationStepZipper!1638 z!1189 (head!11857 s!2326)) (tail!10952 s!2326)) e!3429913)))

(declare-fun b!5553285 () Bool)

(assert (=> b!5553285 (= e!3429913 (nullableZipper!1543 (derivationStepZipper!1638 z!1189 (head!11857 s!2326))))))

(declare-fun b!5553286 () Bool)

(assert (=> b!5553286 (= e!3429913 (matchZipper!1677 (derivationStepZipper!1638 (derivationStepZipper!1638 z!1189 (head!11857 s!2326)) (head!11857 (tail!10952 s!2326))) (tail!10952 (tail!10952 s!2326))))))

(assert (= (and d!1758083 c!972129) b!5553285))

(assert (= (and d!1758083 (not c!972129)) b!5553286))

(assert (=> d!1758083 m!6545888))

(assert (=> d!1758083 m!6545892))

(assert (=> b!5553285 m!6545956))

(declare-fun m!6546352 () Bool)

(assert (=> b!5553285 m!6546352))

(assert (=> b!5553286 m!6545888))

(assert (=> b!5553286 m!6546066))

(assert (=> b!5553286 m!6545956))

(assert (=> b!5553286 m!6546066))

(declare-fun m!6546354 () Bool)

(assert (=> b!5553286 m!6546354))

(assert (=> b!5553286 m!6545888))

(assert (=> b!5553286 m!6546070))

(assert (=> b!5553286 m!6546354))

(assert (=> b!5553286 m!6546070))

(declare-fun m!6546356 () Bool)

(assert (=> b!5553286 m!6546356))

(assert (=> b!5552857 d!1758083))

(declare-fun bs!1286387 () Bool)

(declare-fun d!1758087 () Bool)

(assert (= bs!1286387 (and d!1758087 d!1757789)))

(declare-fun lambda!297906 () Int)

(assert (=> bs!1286387 (= (= (head!11857 s!2326) (h!69230 s!2326)) (= lambda!297906 lambda!297835))))

(declare-fun bs!1286388 () Bool)

(assert (= bs!1286388 (and d!1758087 b!5552210)))

(assert (=> bs!1286388 (= (= (head!11857 s!2326) (h!69230 s!2326)) (= lambda!297906 lambda!297813))))

(declare-fun bs!1286389 () Bool)

(assert (= bs!1286389 (and d!1758087 d!1757945)))

(assert (=> bs!1286389 (= (= (head!11857 s!2326) (head!11857 (t!376169 s!2326))) (= lambda!297906 lambda!297881))))

(declare-fun bs!1286390 () Bool)

(assert (= bs!1286390 (and d!1758087 d!1757987)))

(assert (=> bs!1286390 (= (= (head!11857 s!2326) (head!11857 (t!376169 s!2326))) (= lambda!297906 lambda!297886))))

(declare-fun bs!1286391 () Bool)

(assert (= bs!1286391 (and d!1758087 d!1758043)))

(assert (=> bs!1286391 (= (= (head!11857 s!2326) (head!11857 (t!376169 s!2326))) (= lambda!297906 lambda!297901))))

(declare-fun bs!1286392 () Bool)

(assert (= bs!1286392 (and d!1758087 d!1757921)))

(assert (=> bs!1286392 (= (= (head!11857 s!2326) (head!11857 (t!376169 s!2326))) (= lambda!297906 lambda!297879))))

(assert (=> d!1758087 true))

(assert (=> d!1758087 (= (derivationStepZipper!1638 z!1189 (head!11857 s!2326)) (flatMap!1148 z!1189 lambda!297906))))

(declare-fun bs!1286393 () Bool)

(assert (= bs!1286393 d!1758087))

(declare-fun m!6546358 () Bool)

(assert (=> bs!1286393 m!6546358))

(assert (=> b!5552857 d!1758087))

(assert (=> b!5552857 d!1757883))

(assert (=> b!5552857 d!1757909))

(declare-fun bm!413960 () Bool)

(declare-fun call!413969 () (InoxSet Context!9838))

(declare-fun call!413965 () (InoxSet Context!9838))

(assert (=> bm!413960 (= call!413969 call!413965)))

(declare-fun b!5553298 () Bool)

(declare-fun e!3429921 () (InoxSet Context!9838))

(declare-fun call!413970 () (InoxSet Context!9838))

(assert (=> b!5553298 (= e!3429921 call!413970)))

(declare-fun bm!413961 () Bool)

(declare-fun call!413968 () List!62904)

(declare-fun c!972136 () Bool)

(declare-fun c!972135 () Bool)

(assert (=> bm!413961 (= call!413968 ($colon$colon!1605 (exprs!5419 (ite (or c!971882 c!971881) lt!2250513 (Context!9839 call!413833))) (ite (or c!972136 c!972135) (regTwo!31582 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))) (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343))))))))))))

(declare-fun call!413967 () List!62904)

(declare-fun c!972137 () Bool)

(declare-fun bm!413962 () Bool)

(assert (=> bm!413962 (= call!413965 (derivationStepZipperDown!877 (ite c!972137 (regTwo!31583 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))) (ite c!972136 (regTwo!31582 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))) (ite c!972135 (regOne!31582 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))) (reg!15864 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343))))))))))) (ite (or c!972137 c!972136) (ite (or c!971882 c!971881) lt!2250513 (Context!9839 call!413833)) (Context!9839 call!413967)) (h!69230 s!2326)))))

(declare-fun bm!413964 () Bool)

(assert (=> bm!413964 (= call!413970 call!413969)))

(declare-fun call!413966 () (InoxSet Context!9838))

(declare-fun bm!413965 () Bool)

(assert (=> bm!413965 (= call!413966 (derivationStepZipperDown!877 (ite c!972137 (regOne!31583 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))) (regOne!31582 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343))))))))) (ite c!972137 (ite (or c!971882 c!971881) lt!2250513 (Context!9839 call!413833)) (Context!9839 call!413968)) (h!69230 s!2326)))))

(declare-fun b!5553299 () Bool)

(declare-fun e!3429922 () (InoxSet Context!9838))

(declare-fun e!3429925 () (InoxSet Context!9838))

(assert (=> b!5553299 (= e!3429922 e!3429925)))

(assert (=> b!5553299 (= c!972137 ((_ is Union!15535) (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))))

(declare-fun b!5553300 () Bool)

(assert (=> b!5553300 (= e!3429922 (store ((as const (Array Context!9838 Bool)) false) (ite (or c!971882 c!971881) lt!2250513 (Context!9839 call!413833)) true))))

(declare-fun b!5553301 () Bool)

(assert (=> b!5553301 (= e!3429921 ((as const (Array Context!9838 Bool)) false))))

(declare-fun b!5553302 () Bool)

(declare-fun e!3429923 () Bool)

(assert (=> b!5553302 (= e!3429923 (nullable!5567 (regOne!31582 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343))))))))))))

(declare-fun b!5553303 () Bool)

(assert (=> b!5553303 (= c!972136 e!3429923)))

(declare-fun res!2360622 () Bool)

(assert (=> b!5553303 (=> (not res!2360622) (not e!3429923))))

(assert (=> b!5553303 (= res!2360622 ((_ is Concat!24380) (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))))

(declare-fun e!3429926 () (InoxSet Context!9838))

(assert (=> b!5553303 (= e!3429925 e!3429926)))

(declare-fun b!5553304 () Bool)

(assert (=> b!5553304 (= e!3429926 ((_ map or) call!413966 call!413969))))

(declare-fun b!5553305 () Bool)

(declare-fun e!3429924 () (InoxSet Context!9838))

(assert (=> b!5553305 (= e!3429924 call!413970)))

(declare-fun b!5553306 () Bool)

(assert (=> b!5553306 (= e!3429925 ((_ map or) call!413966 call!413965))))

(declare-fun c!972138 () Bool)

(declare-fun d!1758091 () Bool)

(assert (=> d!1758091 (= c!972138 (and ((_ is ElementMatch!15535) (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))) (= (c!971841 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))) (h!69230 s!2326))))))

(assert (=> d!1758091 (= (derivationStepZipperDown!877 (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343))))))) (ite (or c!971882 c!971881) lt!2250513 (Context!9839 call!413833)) (h!69230 s!2326)) e!3429922)))

(declare-fun bm!413963 () Bool)

(assert (=> bm!413963 (= call!413967 call!413968)))

(declare-fun b!5553307 () Bool)

(assert (=> b!5553307 (= e!3429926 e!3429924)))

(assert (=> b!5553307 (= c!972135 ((_ is Concat!24380) (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))))

(declare-fun c!972134 () Bool)

(declare-fun b!5553308 () Bool)

(assert (=> b!5553308 (= c!972134 ((_ is Star!15535) (ite c!971882 (regTwo!31583 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971881 (regTwo!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (ite c!971880 (regOne!31582 (h!69228 (exprs!5419 (h!69229 zl!343)))) (reg!15864 (h!69228 (exprs!5419 (h!69229 zl!343)))))))))))

(assert (=> b!5553308 (= e!3429924 e!3429921)))

(assert (= (and d!1758091 c!972138) b!5553300))

(assert (= (and d!1758091 (not c!972138)) b!5553299))

(assert (= (and b!5553299 c!972137) b!5553306))

(assert (= (and b!5553299 (not c!972137)) b!5553303))

(assert (= (and b!5553303 res!2360622) b!5553302))

(assert (= (and b!5553303 c!972136) b!5553304))

(assert (= (and b!5553303 (not c!972136)) b!5553307))

(assert (= (and b!5553307 c!972135) b!5553305))

(assert (= (and b!5553307 (not c!972135)) b!5553308))

(assert (= (and b!5553308 c!972134) b!5553298))

(assert (= (and b!5553308 (not c!972134)) b!5553301))

(assert (= (or b!5553305 b!5553298) bm!413963))

(assert (= (or b!5553305 b!5553298) bm!413964))

(assert (= (or b!5553304 bm!413963) bm!413961))

(assert (= (or b!5553304 bm!413964) bm!413960))

(assert (= (or b!5553306 bm!413960) bm!413962))

(assert (= (or b!5553306 b!5553304) bm!413965))

(declare-fun m!6546360 () Bool)

(assert (=> b!5553302 m!6546360))

(declare-fun m!6546362 () Bool)

(assert (=> bm!413965 m!6546362))

(declare-fun m!6546364 () Bool)

(assert (=> bm!413961 m!6546364))

(declare-fun m!6546366 () Bool)

(assert (=> bm!413962 m!6546366))

(declare-fun m!6546368 () Bool)

(assert (=> b!5553300 m!6546368))

(assert (=> bm!413828 d!1758091))

(declare-fun b!5553310 () Bool)

(declare-fun e!3429928 () Bool)

(declare-fun e!3429927 () Bool)

(assert (=> b!5553310 (= e!3429928 e!3429927)))

(declare-fun c!972139 () Bool)

(assert (=> b!5553310 (= c!972139 ((_ is EmptyLang!15535) (regTwo!31582 r!7292)))))

(declare-fun b!5553311 () Bool)

(declare-fun res!2360624 () Bool)

(declare-fun e!3429932 () Bool)

(assert (=> b!5553311 (=> (not res!2360624) (not e!3429932))))

(assert (=> b!5553311 (= res!2360624 (isEmpty!34576 (tail!10952 s!2326)))))

(declare-fun b!5553312 () Bool)

(declare-fun res!2360626 () Bool)

(declare-fun e!3429931 () Bool)

(assert (=> b!5553312 (=> res!2360626 e!3429931)))

(assert (=> b!5553312 (= res!2360626 (not (isEmpty!34576 (tail!10952 s!2326))))))

(declare-fun b!5553313 () Bool)

(assert (=> b!5553313 (= e!3429931 (not (= (head!11857 s!2326) (c!971841 (regTwo!31582 r!7292)))))))

(declare-fun b!5553314 () Bool)

(declare-fun res!2360630 () Bool)

(declare-fun e!3429930 () Bool)

(assert (=> b!5553314 (=> res!2360630 e!3429930)))

(assert (=> b!5553314 (= res!2360630 (not ((_ is ElementMatch!15535) (regTwo!31582 r!7292))))))

(assert (=> b!5553314 (= e!3429927 e!3429930)))

(declare-fun b!5553315 () Bool)

(declare-fun e!3429929 () Bool)

(assert (=> b!5553315 (= e!3429929 (matchR!7720 (derivativeStep!4391 (regTwo!31582 r!7292) (head!11857 s!2326)) (tail!10952 s!2326)))))

(declare-fun b!5553316 () Bool)

(declare-fun e!3429933 () Bool)

(assert (=> b!5553316 (= e!3429930 e!3429933)))

(declare-fun res!2360623 () Bool)

(assert (=> b!5553316 (=> (not res!2360623) (not e!3429933))))

(declare-fun lt!2250620 () Bool)

(assert (=> b!5553316 (= res!2360623 (not lt!2250620))))

(declare-fun b!5553317 () Bool)

(declare-fun call!413971 () Bool)

(assert (=> b!5553317 (= e!3429928 (= lt!2250620 call!413971))))

(declare-fun bm!413966 () Bool)

(assert (=> bm!413966 (= call!413971 (isEmpty!34576 s!2326))))

(declare-fun b!5553318 () Bool)

(declare-fun res!2360628 () Bool)

(assert (=> b!5553318 (=> (not res!2360628) (not e!3429932))))

(assert (=> b!5553318 (= res!2360628 (not call!413971))))

(declare-fun d!1758093 () Bool)

(assert (=> d!1758093 e!3429928))

(declare-fun c!972140 () Bool)

(assert (=> d!1758093 (= c!972140 ((_ is EmptyExpr!15535) (regTwo!31582 r!7292)))))

(assert (=> d!1758093 (= lt!2250620 e!3429929)))

(declare-fun c!972141 () Bool)

(assert (=> d!1758093 (= c!972141 (isEmpty!34576 s!2326))))

(assert (=> d!1758093 (validRegex!7271 (regTwo!31582 r!7292))))

(assert (=> d!1758093 (= (matchR!7720 (regTwo!31582 r!7292) s!2326) lt!2250620)))

(declare-fun b!5553309 () Bool)

(declare-fun res!2360625 () Bool)

(assert (=> b!5553309 (=> res!2360625 e!3429930)))

(assert (=> b!5553309 (= res!2360625 e!3429932)))

(declare-fun res!2360629 () Bool)

(assert (=> b!5553309 (=> (not res!2360629) (not e!3429932))))

(assert (=> b!5553309 (= res!2360629 lt!2250620)))

(declare-fun b!5553319 () Bool)

(assert (=> b!5553319 (= e!3429933 e!3429931)))

(declare-fun res!2360627 () Bool)

(assert (=> b!5553319 (=> res!2360627 e!3429931)))

(assert (=> b!5553319 (= res!2360627 call!413971)))

(declare-fun b!5553320 () Bool)

(assert (=> b!5553320 (= e!3429927 (not lt!2250620))))

(declare-fun b!5553321 () Bool)

(assert (=> b!5553321 (= e!3429929 (nullable!5567 (regTwo!31582 r!7292)))))

(declare-fun b!5553322 () Bool)

(assert (=> b!5553322 (= e!3429932 (= (head!11857 s!2326) (c!971841 (regTwo!31582 r!7292))))))

(assert (= (and d!1758093 c!972141) b!5553321))

(assert (= (and d!1758093 (not c!972141)) b!5553315))

(assert (= (and d!1758093 c!972140) b!5553317))

(assert (= (and d!1758093 (not c!972140)) b!5553310))

(assert (= (and b!5553310 c!972139) b!5553320))

(assert (= (and b!5553310 (not c!972139)) b!5553314))

(assert (= (and b!5553314 (not res!2360630)) b!5553309))

(assert (= (and b!5553309 res!2360629) b!5553318))

(assert (= (and b!5553318 res!2360628) b!5553311))

(assert (= (and b!5553311 res!2360624) b!5553322))

(assert (= (and b!5553309 (not res!2360625)) b!5553316))

(assert (= (and b!5553316 res!2360623) b!5553319))

(assert (= (and b!5553319 (not res!2360627)) b!5553312))

(assert (= (and b!5553312 (not res!2360626)) b!5553313))

(assert (= (or b!5553317 b!5553318 b!5553319) bm!413966))

(assert (=> b!5553322 m!6545884))

(assert (=> b!5553315 m!6545884))

(assert (=> b!5553315 m!6545884))

(declare-fun m!6546370 () Bool)

(assert (=> b!5553315 m!6546370))

(assert (=> b!5553315 m!6545888))

(assert (=> b!5553315 m!6546370))

(assert (=> b!5553315 m!6545888))

(declare-fun m!6546372 () Bool)

(assert (=> b!5553315 m!6546372))

(assert (=> b!5553313 m!6545884))

(assert (=> b!5553311 m!6545888))

(assert (=> b!5553311 m!6545888))

(assert (=> b!5553311 m!6545892))

(assert (=> d!1758093 m!6545860))

(assert (=> d!1758093 m!6546150))

(assert (=> b!5553312 m!6545888))

(assert (=> b!5553312 m!6545888))

(assert (=> b!5553312 m!6545892))

(assert (=> bm!413966 m!6545860))

(assert (=> b!5553321 m!6546152))

(assert (=> b!5552479 d!1758093))

(assert (=> b!5552377 d!1757797))

(declare-fun bs!1286399 () Bool)

(declare-fun b!5553326 () Bool)

(assert (= bs!1286399 (and b!5553326 d!1757835)))

(declare-fun lambda!297908 () Int)

(assert (=> bs!1286399 (not (= lambda!297908 lambda!297853))))

(declare-fun bs!1286400 () Bool)

(assert (= bs!1286400 (and b!5553326 b!5553198)))

(assert (=> bs!1286400 (not (= lambda!297908 lambda!297900))))

(declare-fun bs!1286401 () Bool)

(assert (= bs!1286401 (and b!5553326 b!5552209)))

(assert (=> bs!1286401 (not (= lambda!297908 lambda!297811))))

(declare-fun bs!1286402 () Bool)

(assert (= bs!1286402 (and b!5553326 d!1757831)))

(assert (=> bs!1286402 (not (= lambda!297908 lambda!297841))))

(assert (=> bs!1286399 (not (= lambda!297908 lambda!297852))))

(assert (=> bs!1286401 (not (= lambda!297908 lambda!297812))))

(declare-fun bs!1286404 () Bool)

(assert (= bs!1286404 (and b!5553326 b!5552627)))

(assert (=> bs!1286404 (not (= lambda!297908 lambda!297859))))

(declare-fun bs!1286406 () Bool)

(assert (= bs!1286406 (and b!5553326 d!1757995)))

(assert (=> bs!1286406 (not (= lambda!297908 lambda!297891))))

(declare-fun bs!1286407 () Bool)

(assert (= bs!1286407 (and b!5553326 b!5553197)))

(assert (=> bs!1286407 (= (and (= (reg!15864 (regOne!31583 r!7292)) (reg!15864 (regTwo!31583 r!7292))) (= (regOne!31583 r!7292) (regTwo!31583 r!7292))) (= lambda!297908 lambda!297899))))

(assert (=> bs!1286406 (not (= lambda!297908 lambda!297892))))

(declare-fun bs!1286409 () Bool)

(assert (= bs!1286409 (and b!5553326 d!1758005)))

(assert (=> bs!1286409 (not (= lambda!297908 lambda!297895))))

(declare-fun bs!1286410 () Bool)

(assert (= bs!1286410 (and b!5553326 b!5552626)))

(assert (=> bs!1286410 (= (and (= (reg!15864 (regOne!31583 r!7292)) (reg!15864 r!7292)) (= (regOne!31583 r!7292) r!7292)) (= lambda!297908 lambda!297858))))

(assert (=> b!5553326 true))

(assert (=> b!5553326 true))

(declare-fun bs!1286413 () Bool)

(declare-fun b!5553327 () Bool)

(assert (= bs!1286413 (and b!5553327 b!5553326)))

(declare-fun lambda!297910 () Int)

(assert (=> bs!1286413 (not (= lambda!297910 lambda!297908))))

(declare-fun bs!1286415 () Bool)

(assert (= bs!1286415 (and b!5553327 d!1757835)))

(assert (=> bs!1286415 (= (and (= (regOne!31582 (regOne!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regOne!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297910 lambda!297853))))

(declare-fun bs!1286416 () Bool)

(assert (= bs!1286416 (and b!5553327 b!5553198)))

(assert (=> bs!1286416 (= (and (= (regOne!31582 (regOne!31583 r!7292)) (regOne!31582 (regTwo!31583 r!7292))) (= (regTwo!31582 (regOne!31583 r!7292)) (regTwo!31582 (regTwo!31583 r!7292)))) (= lambda!297910 lambda!297900))))

(declare-fun bs!1286417 () Bool)

(assert (= bs!1286417 (and b!5553327 b!5552209)))

(assert (=> bs!1286417 (not (= lambda!297910 lambda!297811))))

(declare-fun bs!1286418 () Bool)

(assert (= bs!1286418 (and b!5553327 d!1757831)))

(assert (=> bs!1286418 (not (= lambda!297910 lambda!297841))))

(assert (=> bs!1286415 (not (= lambda!297910 lambda!297852))))

(assert (=> bs!1286417 (= (and (= (regOne!31582 (regOne!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regOne!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297910 lambda!297812))))

(declare-fun bs!1286419 () Bool)

(assert (= bs!1286419 (and b!5553327 b!5552627)))

(assert (=> bs!1286419 (= (and (= (regOne!31582 (regOne!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regOne!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297910 lambda!297859))))

(declare-fun bs!1286420 () Bool)

(assert (= bs!1286420 (and b!5553327 d!1757995)))

(assert (=> bs!1286420 (not (= lambda!297910 lambda!297891))))

(declare-fun bs!1286421 () Bool)

(assert (= bs!1286421 (and b!5553327 b!5553197)))

(assert (=> bs!1286421 (not (= lambda!297910 lambda!297899))))

(assert (=> bs!1286420 (= (and (= (regOne!31582 (regOne!31583 r!7292)) (regOne!31582 r!7292)) (= (regTwo!31582 (regOne!31583 r!7292)) (regTwo!31582 r!7292))) (= lambda!297910 lambda!297892))))

(declare-fun bs!1286422 () Bool)

(assert (= bs!1286422 (and b!5553327 d!1758005)))

(assert (=> bs!1286422 (not (= lambda!297910 lambda!297895))))

(declare-fun bs!1286423 () Bool)

(assert (= bs!1286423 (and b!5553327 b!5552626)))

(assert (=> bs!1286423 (not (= lambda!297910 lambda!297858))))

(assert (=> b!5553327 true))

(assert (=> b!5553327 true))

(declare-fun c!972143 () Bool)

(declare-fun call!413973 () Bool)

(declare-fun bm!413967 () Bool)

(assert (=> bm!413967 (= call!413973 (Exists!2635 (ite c!972143 lambda!297908 lambda!297910)))))

(declare-fun b!5553324 () Bool)

(declare-fun e!3429939 () Bool)

(assert (=> b!5553324 (= e!3429939 (matchRSpec!2638 (regTwo!31583 (regOne!31583 r!7292)) s!2326))))

(declare-fun b!5553325 () Bool)

(declare-fun c!972144 () Bool)

(assert (=> b!5553325 (= c!972144 ((_ is Union!15535) (regOne!31583 r!7292)))))

(declare-fun e!3429937 () Bool)

(declare-fun e!3429936 () Bool)

(assert (=> b!5553325 (= e!3429937 e!3429936)))

(declare-fun e!3429935 () Bool)

(assert (=> b!5553326 (= e!3429935 call!413973)))

(declare-fun e!3429940 () Bool)

(assert (=> b!5553327 (= e!3429940 call!413973)))

(declare-fun b!5553328 () Bool)

(assert (=> b!5553328 (= e!3429937 (= s!2326 (Cons!62782 (c!971841 (regOne!31583 r!7292)) Nil!62782)))))

(declare-fun b!5553329 () Bool)

(declare-fun e!3429934 () Bool)

(declare-fun e!3429938 () Bool)

(assert (=> b!5553329 (= e!3429934 e!3429938)))

(declare-fun res!2360631 () Bool)

(assert (=> b!5553329 (= res!2360631 (not ((_ is EmptyLang!15535) (regOne!31583 r!7292))))))

(assert (=> b!5553329 (=> (not res!2360631) (not e!3429938))))

(declare-fun b!5553330 () Bool)

(declare-fun c!972145 () Bool)

(assert (=> b!5553330 (= c!972145 ((_ is ElementMatch!15535) (regOne!31583 r!7292)))))

(assert (=> b!5553330 (= e!3429938 e!3429937)))

(declare-fun d!1758095 () Bool)

(declare-fun c!972142 () Bool)

(assert (=> d!1758095 (= c!972142 ((_ is EmptyExpr!15535) (regOne!31583 r!7292)))))

(assert (=> d!1758095 (= (matchRSpec!2638 (regOne!31583 r!7292) s!2326) e!3429934)))

(declare-fun b!5553323 () Bool)

(declare-fun call!413972 () Bool)

(assert (=> b!5553323 (= e!3429934 call!413972)))

(declare-fun b!5553331 () Bool)

(assert (=> b!5553331 (= e!3429936 e!3429939)))

(declare-fun res!2360632 () Bool)

(assert (=> b!5553331 (= res!2360632 (matchRSpec!2638 (regOne!31583 (regOne!31583 r!7292)) s!2326))))

(assert (=> b!5553331 (=> res!2360632 e!3429939)))

(declare-fun b!5553332 () Bool)

(assert (=> b!5553332 (= e!3429936 e!3429940)))

(assert (=> b!5553332 (= c!972143 ((_ is Star!15535) (regOne!31583 r!7292)))))

(declare-fun bm!413968 () Bool)

(assert (=> bm!413968 (= call!413972 (isEmpty!34576 s!2326))))

(declare-fun b!5553333 () Bool)

(declare-fun res!2360633 () Bool)

(assert (=> b!5553333 (=> res!2360633 e!3429935)))

(assert (=> b!5553333 (= res!2360633 call!413972)))

(assert (=> b!5553333 (= e!3429940 e!3429935)))

(assert (= (and d!1758095 c!972142) b!5553323))

(assert (= (and d!1758095 (not c!972142)) b!5553329))

(assert (= (and b!5553329 res!2360631) b!5553330))

(assert (= (and b!5553330 c!972145) b!5553328))

(assert (= (and b!5553330 (not c!972145)) b!5553325))

(assert (= (and b!5553325 c!972144) b!5553331))

(assert (= (and b!5553325 (not c!972144)) b!5553332))

(assert (= (and b!5553331 (not res!2360632)) b!5553324))

(assert (= (and b!5553332 c!972143) b!5553333))

(assert (= (and b!5553332 (not c!972143)) b!5553327))

(assert (= (and b!5553333 (not res!2360633)) b!5553326))

(assert (= (or b!5553326 b!5553327) bm!413967))

(assert (= (or b!5553323 b!5553333) bm!413968))

(declare-fun m!6546382 () Bool)

(assert (=> bm!413967 m!6546382))

(declare-fun m!6546384 () Bool)

(assert (=> b!5553324 m!6546384))

(declare-fun m!6546386 () Bool)

(assert (=> b!5553331 m!6546386))

(assert (=> bm!413968 m!6545860))

(assert (=> b!5552631 d!1758095))

(assert (=> d!1757847 d!1757915))

(assert (=> d!1757847 d!1757857))

(declare-fun d!1758101 () Bool)

(assert (=> d!1758101 (= (isUnion!540 lt!2250596) ((_ is Union!15535) lt!2250596))))

(assert (=> b!5552843 d!1758101))

(assert (=> d!1757869 d!1757899))

(declare-fun bs!1286425 () Bool)

(declare-fun d!1758103 () Bool)

(assert (= bs!1286425 (and d!1758103 d!1757863)))

(declare-fun lambda!297911 () Int)

(assert (=> bs!1286425 (= lambda!297911 lambda!297875)))

(declare-fun bs!1286426 () Bool)

(assert (= bs!1286426 (and d!1758103 d!1757855)))

(assert (=> bs!1286426 (= lambda!297911 lambda!297868)))

(declare-fun bs!1286427 () Bool)

(assert (= bs!1286427 (and d!1758103 d!1757963)))

(assert (=> bs!1286427 (= lambda!297911 lambda!297882)))

(declare-fun bs!1286428 () Bool)

(assert (= bs!1286428 (and d!1758103 d!1757853)))

(assert (=> bs!1286428 (= lambda!297911 lambda!297865)))

(declare-fun bs!1286429 () Bool)

(assert (= bs!1286429 (and d!1758103 d!1758047)))

(assert (=> bs!1286429 (= lambda!297911 lambda!297902)))

(declare-fun bs!1286430 () Bool)

(assert (= bs!1286430 (and d!1758103 d!1757931)))

(assert (=> bs!1286430 (= lambda!297911 lambda!297880)))

(declare-fun bs!1286431 () Bool)

(assert (= bs!1286431 (and d!1758103 d!1757861)))

(assert (=> bs!1286431 (= lambda!297911 lambda!297874)))

(declare-fun bs!1286432 () Bool)

(assert (= bs!1286432 (and d!1758103 d!1757975)))

(assert (=> bs!1286432 (= lambda!297911 lambda!297885)))

(declare-fun bs!1286433 () Bool)

(assert (= bs!1286433 (and d!1758103 d!1757859)))

(assert (=> bs!1286433 (= lambda!297911 lambda!297871)))

(declare-fun b!5553345 () Bool)

(declare-fun e!3429948 () Regex!15535)

(assert (=> b!5553345 (= e!3429948 EmptyLang!15535)))

(declare-fun b!5553346 () Bool)

(declare-fun e!3429951 () Regex!15535)

(assert (=> b!5553346 (= e!3429951 (h!69228 (t!376167 (unfocusZipperList!963 zl!343))))))

(declare-fun b!5553347 () Bool)

(assert (=> b!5553347 (= e!3429951 e!3429948)))

(declare-fun c!972152 () Bool)

(assert (=> b!5553347 (= c!972152 ((_ is Cons!62780) (t!376167 (unfocusZipperList!963 zl!343))))))

(declare-fun b!5553348 () Bool)

(declare-fun e!3429952 () Bool)

(assert (=> b!5553348 (= e!3429952 (isEmpty!34573 (t!376167 (t!376167 (unfocusZipperList!963 zl!343)))))))

(declare-fun b!5553349 () Bool)

(declare-fun e!3429950 () Bool)

(declare-fun e!3429949 () Bool)

(assert (=> b!5553349 (= e!3429950 e!3429949)))

(declare-fun c!972151 () Bool)

(assert (=> b!5553349 (= c!972151 (isEmpty!34573 (t!376167 (unfocusZipperList!963 zl!343))))))

(assert (=> d!1758103 e!3429950))

(declare-fun res!2360635 () Bool)

(assert (=> d!1758103 (=> (not res!2360635) (not e!3429950))))

(declare-fun lt!2250621 () Regex!15535)

(assert (=> d!1758103 (= res!2360635 (validRegex!7271 lt!2250621))))

(assert (=> d!1758103 (= lt!2250621 e!3429951)))

(declare-fun c!972153 () Bool)

(assert (=> d!1758103 (= c!972153 e!3429952)))

(declare-fun res!2360636 () Bool)

(assert (=> d!1758103 (=> (not res!2360636) (not e!3429952))))

(assert (=> d!1758103 (= res!2360636 ((_ is Cons!62780) (t!376167 (unfocusZipperList!963 zl!343))))))

(assert (=> d!1758103 (forall!14709 (t!376167 (unfocusZipperList!963 zl!343)) lambda!297911)))

(assert (=> d!1758103 (= (generalisedUnion!1398 (t!376167 (unfocusZipperList!963 zl!343))) lt!2250621)))

(declare-fun b!5553350 () Bool)

(declare-fun e!3429947 () Bool)

(assert (=> b!5553350 (= e!3429949 e!3429947)))

(declare-fun c!972154 () Bool)

(assert (=> b!5553350 (= c!972154 (isEmpty!34573 (tail!10953 (t!376167 (unfocusZipperList!963 zl!343)))))))

(declare-fun b!5553351 () Bool)

(assert (=> b!5553351 (= e!3429947 (isUnion!540 lt!2250621))))

(declare-fun b!5553352 () Bool)

(assert (=> b!5553352 (= e!3429947 (= lt!2250621 (head!11858 (t!376167 (unfocusZipperList!963 zl!343)))))))

(declare-fun b!5553353 () Bool)

(assert (=> b!5553353 (= e!3429948 (Union!15535 (h!69228 (t!376167 (unfocusZipperList!963 zl!343))) (generalisedUnion!1398 (t!376167 (t!376167 (unfocusZipperList!963 zl!343))))))))

(declare-fun b!5553354 () Bool)

(assert (=> b!5553354 (= e!3429949 (isEmptyLang!1110 lt!2250621))))

(assert (= (and d!1758103 res!2360636) b!5553348))

(assert (= (and d!1758103 c!972153) b!5553346))

(assert (= (and d!1758103 (not c!972153)) b!5553347))

(assert (= (and b!5553347 c!972152) b!5553353))

(assert (= (and b!5553347 (not c!972152)) b!5553345))

(assert (= (and d!1758103 res!2360635) b!5553349))

(assert (= (and b!5553349 c!972151) b!5553354))

(assert (= (and b!5553349 (not c!972151)) b!5553350))

(assert (= (and b!5553350 c!972154) b!5553352))

(assert (= (and b!5553350 (not c!972154)) b!5553351))

(declare-fun m!6546392 () Bool)

(assert (=> b!5553354 m!6546392))

(declare-fun m!6546394 () Bool)

(assert (=> b!5553348 m!6546394))

(assert (=> b!5553349 m!6545926))

(declare-fun m!6546396 () Bool)

(assert (=> b!5553350 m!6546396))

(assert (=> b!5553350 m!6546396))

(declare-fun m!6546400 () Bool)

(assert (=> b!5553350 m!6546400))

(declare-fun m!6546402 () Bool)

(assert (=> b!5553351 m!6546402))

(declare-fun m!6546404 () Bool)

(assert (=> b!5553353 m!6546404))

(declare-fun m!6546406 () Bool)

(assert (=> b!5553352 m!6546406))

(declare-fun m!6546408 () Bool)

(assert (=> d!1758103 m!6546408))

(declare-fun m!6546410 () Bool)

(assert (=> d!1758103 m!6546410))

(assert (=> b!5552845 d!1758103))

(declare-fun b!5553355 () Bool)

(declare-fun e!3429953 () (InoxSet Context!9838))

(declare-fun e!3429954 () (InoxSet Context!9838))

(assert (=> b!5553355 (= e!3429953 e!3429954)))

(declare-fun c!972156 () Bool)

(assert (=> b!5553355 (= c!972156 ((_ is Cons!62780) (exprs!5419 (Context!9839 (t!376167 (exprs!5419 lt!2250513))))))))

(declare-fun b!5553356 () Bool)

(declare-fun call!413980 () (InoxSet Context!9838))

(assert (=> b!5553356 (= e!3429953 ((_ map or) call!413980 (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 lt!2250513)))))) (h!69230 s!2326))))))

(declare-fun d!1758105 () Bool)

(declare-fun c!972155 () Bool)

(declare-fun e!3429955 () Bool)

(assert (=> d!1758105 (= c!972155 e!3429955)))

(declare-fun res!2360637 () Bool)

(assert (=> d!1758105 (=> (not res!2360637) (not e!3429955))))

(assert (=> d!1758105 (= res!2360637 ((_ is Cons!62780) (exprs!5419 (Context!9839 (t!376167 (exprs!5419 lt!2250513))))))))

(assert (=> d!1758105 (= (derivationStepZipperUp!803 (Context!9839 (t!376167 (exprs!5419 lt!2250513))) (h!69230 s!2326)) e!3429953)))

(declare-fun b!5553357 () Bool)

(assert (=> b!5553357 (= e!3429954 call!413980)))

(declare-fun b!5553358 () Bool)

(assert (=> b!5553358 (= e!3429954 ((as const (Array Context!9838 Bool)) false))))

(declare-fun bm!413975 () Bool)

(assert (=> bm!413975 (= call!413980 (derivationStepZipperDown!877 (h!69228 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 lt!2250513))))) (Context!9839 (t!376167 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 lt!2250513)))))) (h!69230 s!2326)))))

(declare-fun b!5553359 () Bool)

(assert (=> b!5553359 (= e!3429955 (nullable!5567 (h!69228 (exprs!5419 (Context!9839 (t!376167 (exprs!5419 lt!2250513)))))))))

(assert (= (and d!1758105 res!2360637) b!5553359))

(assert (= (and d!1758105 c!972155) b!5553356))

(assert (= (and d!1758105 (not c!972155)) b!5553355))

(assert (= (and b!5553355 c!972156) b!5553357))

(assert (= (and b!5553355 (not c!972156)) b!5553358))

(assert (= (or b!5553356 b!5553357) bm!413975))

(declare-fun m!6546416 () Bool)

(assert (=> b!5553356 m!6546416))

(declare-fun m!6546418 () Bool)

(assert (=> bm!413975 m!6546418))

(declare-fun m!6546420 () Bool)

(assert (=> b!5553359 m!6546420))

(assert (=> b!5552389 d!1758105))

(assert (=> d!1757781 d!1757801))

(declare-fun d!1758109 () Bool)

(assert (=> d!1758109 (= (flatMap!1148 z!1189 lambda!297813) (dynLambda!24553 lambda!297813 (h!69229 zl!343)))))

(assert (=> d!1758109 true))

(declare-fun _$13!2130 () Unit!155530)

(assert (=> d!1758109 (= (choose!42106 z!1189 (h!69229 zl!343) lambda!297813) _$13!2130)))

(declare-fun b_lambda!210925 () Bool)

(assert (=> (not b_lambda!210925) (not d!1758109)))

(declare-fun bs!1286436 () Bool)

(assert (= bs!1286436 d!1758109))

(assert (=> bs!1286436 m!6545518))

(assert (=> bs!1286436 m!6545694))

(assert (=> d!1757781 d!1758109))

(declare-fun d!1758113 () Bool)

(assert (=> d!1758113 (= (nullable!5567 (reg!15864 r!7292)) (nullableFct!1684 (reg!15864 r!7292)))))

(declare-fun bs!1286437 () Bool)

(assert (= bs!1286437 d!1758113))

(declare-fun m!6546434 () Bool)

(assert (=> bs!1286437 m!6546434))

(assert (=> b!5552815 d!1758113))

(declare-fun d!1758115 () Bool)

(assert (=> d!1758115 (= (isEmpty!34573 (exprs!5419 (h!69229 zl!343))) ((_ is Nil!62780) (exprs!5419 (h!69229 zl!343))))))

(assert (=> b!5552787 d!1758115))

(declare-fun d!1758119 () Bool)

(declare-fun e!3429957 () Bool)

(assert (=> d!1758119 e!3429957))

(declare-fun res!2360639 () Bool)

(assert (=> d!1758119 (=> (not res!2360639) (not e!3429957))))

(declare-fun lt!2250622 () List!62906)

(assert (=> d!1758119 (= res!2360639 (= (content!11303 lt!2250622) ((_ map or) (content!11303 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782))) (content!11303 (t!376169 s!2326)))))))

(declare-fun e!3429958 () List!62906)

(assert (=> d!1758119 (= lt!2250622 e!3429958)))

(declare-fun c!972158 () Bool)

(assert (=> d!1758119 (= c!972158 ((_ is Nil!62782) (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782))))))

(assert (=> d!1758119 (= (++!13774 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (t!376169 s!2326)) lt!2250622)))

(declare-fun b!5553363 () Bool)

(assert (=> b!5553363 (= e!3429958 (Cons!62782 (h!69230 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782))) (++!13774 (t!376169 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782))) (t!376169 s!2326))))))

(declare-fun b!5553364 () Bool)

(declare-fun res!2360638 () Bool)

(assert (=> b!5553364 (=> (not res!2360638) (not e!3429957))))

(assert (=> b!5553364 (= res!2360638 (= (size!39949 lt!2250622) (+ (size!39949 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782))) (size!39949 (t!376169 s!2326)))))))

(declare-fun b!5553365 () Bool)

(assert (=> b!5553365 (= e!3429957 (or (not (= (t!376169 s!2326) Nil!62782)) (= lt!2250622 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)))))))

(declare-fun b!5553362 () Bool)

(assert (=> b!5553362 (= e!3429958 (t!376169 s!2326))))

(assert (= (and d!1758119 c!972158) b!5553362))

(assert (= (and d!1758119 (not c!972158)) b!5553363))

(assert (= (and d!1758119 res!2360639) b!5553364))

(assert (= (and b!5553364 res!2360638) b!5553365))

(declare-fun m!6546438 () Bool)

(assert (=> d!1758119 m!6546438))

(assert (=> d!1758119 m!6545802))

(declare-fun m!6546440 () Bool)

(assert (=> d!1758119 m!6546440))

(declare-fun m!6546442 () Bool)

(assert (=> d!1758119 m!6546442))

(declare-fun m!6546444 () Bool)

(assert (=> b!5553363 m!6546444))

(declare-fun m!6546446 () Bool)

(assert (=> b!5553364 m!6546446))

(assert (=> b!5553364 m!6545802))

(declare-fun m!6546448 () Bool)

(assert (=> b!5553364 m!6546448))

(declare-fun m!6546450 () Bool)

(assert (=> b!5553364 m!6546450))

(assert (=> b!5552485 d!1758119))

(declare-fun d!1758121 () Bool)

(declare-fun e!3429959 () Bool)

(assert (=> d!1758121 e!3429959))

(declare-fun res!2360641 () Bool)

(assert (=> d!1758121 (=> (not res!2360641) (not e!3429959))))

(declare-fun lt!2250623 () List!62906)

(assert (=> d!1758121 (= res!2360641 (= (content!11303 lt!2250623) ((_ map or) (content!11303 Nil!62782) (content!11303 (Cons!62782 (h!69230 s!2326) Nil!62782)))))))

(declare-fun e!3429960 () List!62906)

(assert (=> d!1758121 (= lt!2250623 e!3429960)))

(declare-fun c!972159 () Bool)

(assert (=> d!1758121 (= c!972159 ((_ is Nil!62782) Nil!62782))))

(assert (=> d!1758121 (= (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) lt!2250623)))

(declare-fun b!5553367 () Bool)

(assert (=> b!5553367 (= e!3429960 (Cons!62782 (h!69230 Nil!62782) (++!13774 (t!376169 Nil!62782) (Cons!62782 (h!69230 s!2326) Nil!62782))))))

(declare-fun b!5553368 () Bool)

(declare-fun res!2360640 () Bool)

(assert (=> b!5553368 (=> (not res!2360640) (not e!3429959))))

(assert (=> b!5553368 (= res!2360640 (= (size!39949 lt!2250623) (+ (size!39949 Nil!62782) (size!39949 (Cons!62782 (h!69230 s!2326) Nil!62782)))))))

(declare-fun b!5553369 () Bool)

(assert (=> b!5553369 (= e!3429959 (or (not (= (Cons!62782 (h!69230 s!2326) Nil!62782) Nil!62782)) (= lt!2250623 Nil!62782)))))

(declare-fun b!5553366 () Bool)

(assert (=> b!5553366 (= e!3429960 (Cons!62782 (h!69230 s!2326) Nil!62782))))

(assert (= (and d!1758121 c!972159) b!5553366))

(assert (= (and d!1758121 (not c!972159)) b!5553367))

(assert (= (and d!1758121 res!2360641) b!5553368))

(assert (= (and b!5553368 res!2360640) b!5553369))

(declare-fun m!6546452 () Bool)

(assert (=> d!1758121 m!6546452))

(declare-fun m!6546454 () Bool)

(assert (=> d!1758121 m!6546454))

(declare-fun m!6546456 () Bool)

(assert (=> d!1758121 m!6546456))

(declare-fun m!6546458 () Bool)

(assert (=> b!5553367 m!6546458))

(declare-fun m!6546460 () Bool)

(assert (=> b!5553368 m!6546460))

(declare-fun m!6546462 () Bool)

(assert (=> b!5553368 m!6546462))

(declare-fun m!6546464 () Bool)

(assert (=> b!5553368 m!6546464))

(assert (=> b!5552485 d!1758121))

(declare-fun d!1758125 () Bool)

(assert (=> d!1758125 (= (++!13774 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (t!376169 s!2326)) s!2326)))

(declare-fun lt!2250626 () Unit!155530)

(declare-fun choose!42118 (List!62906 C!31340 List!62906 List!62906) Unit!155530)

(assert (=> d!1758125 (= lt!2250626 (choose!42118 Nil!62782 (h!69230 s!2326) (t!376169 s!2326) s!2326))))

(assert (=> d!1758125 (= (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) (t!376169 s!2326))) s!2326)))

(assert (=> d!1758125 (= (lemmaMoveElementToOtherListKeepsConcatEq!1943 Nil!62782 (h!69230 s!2326) (t!376169 s!2326) s!2326) lt!2250626)))

(declare-fun bs!1286444 () Bool)

(assert (= bs!1286444 d!1758125))

(assert (=> bs!1286444 m!6545802))

(assert (=> bs!1286444 m!6545802))

(assert (=> bs!1286444 m!6545804))

(declare-fun m!6546466 () Bool)

(assert (=> bs!1286444 m!6546466))

(declare-fun m!6546468 () Bool)

(assert (=> bs!1286444 m!6546468))

(assert (=> b!5552485 d!1758125))

(declare-fun b!5553381 () Bool)

(declare-fun e!3429971 () Bool)

(declare-fun lt!2250629 () Option!15544)

(assert (=> b!5553381 (= e!3429971 (= (++!13774 (_1!35935 (get!21609 lt!2250629)) (_2!35935 (get!21609 lt!2250629))) s!2326))))

(declare-fun b!5553382 () Bool)

(declare-fun e!3429972 () Bool)

(assert (=> b!5553382 (= e!3429972 (matchR!7720 (regTwo!31582 r!7292) (t!376169 s!2326)))))

(declare-fun d!1758131 () Bool)

(declare-fun e!3429968 () Bool)

(assert (=> d!1758131 e!3429968))

(declare-fun res!2360649 () Bool)

(assert (=> d!1758131 (=> res!2360649 e!3429968)))

(assert (=> d!1758131 (= res!2360649 e!3429971)))

(declare-fun res!2360646 () Bool)

(assert (=> d!1758131 (=> (not res!2360646) (not e!3429971))))

(assert (=> d!1758131 (= res!2360646 (isDefined!12247 lt!2250629))))

(declare-fun e!3429970 () Option!15544)

(assert (=> d!1758131 (= lt!2250629 e!3429970)))

(declare-fun c!972164 () Bool)

(assert (=> d!1758131 (= c!972164 e!3429972)))

(declare-fun res!2360645 () Bool)

(assert (=> d!1758131 (=> (not res!2360645) (not e!3429972))))

(assert (=> d!1758131 (= res!2360645 (matchR!7720 (regOne!31582 r!7292) (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782))))))

(assert (=> d!1758131 (validRegex!7271 (regOne!31582 r!7292))))

(assert (=> d!1758131 (= (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (t!376169 s!2326) s!2326) lt!2250629)))

(declare-fun b!5553383 () Bool)

(declare-fun res!2360648 () Bool)

(assert (=> b!5553383 (=> (not res!2360648) (not e!3429971))))

(assert (=> b!5553383 (= res!2360648 (matchR!7720 (regTwo!31582 r!7292) (_2!35935 (get!21609 lt!2250629))))))

(declare-fun b!5553384 () Bool)

(declare-fun e!3429969 () Option!15544)

(assert (=> b!5553384 (= e!3429970 e!3429969)))

(declare-fun c!972165 () Bool)

(assert (=> b!5553384 (= c!972165 ((_ is Nil!62782) (t!376169 s!2326)))))

(declare-fun b!5553385 () Bool)

(declare-fun res!2360647 () Bool)

(assert (=> b!5553385 (=> (not res!2360647) (not e!3429971))))

(assert (=> b!5553385 (= res!2360647 (matchR!7720 (regOne!31582 r!7292) (_1!35935 (get!21609 lt!2250629))))))

(declare-fun b!5553386 () Bool)

(assert (=> b!5553386 (= e!3429970 (Some!15543 (tuple2!65265 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (t!376169 s!2326))))))

(declare-fun b!5553387 () Bool)

(assert (=> b!5553387 (= e!3429969 None!15543)))

(declare-fun b!5553388 () Bool)

(declare-fun lt!2250628 () Unit!155530)

(declare-fun lt!2250627 () Unit!155530)

(assert (=> b!5553388 (= lt!2250628 lt!2250627)))

(assert (=> b!5553388 (= (++!13774 (++!13774 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (Cons!62782 (h!69230 (t!376169 s!2326)) Nil!62782)) (t!376169 (t!376169 s!2326))) s!2326)))

(assert (=> b!5553388 (= lt!2250627 (lemmaMoveElementToOtherListKeepsConcatEq!1943 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (h!69230 (t!376169 s!2326)) (t!376169 (t!376169 s!2326)) s!2326))))

(assert (=> b!5553388 (= e!3429969 (findConcatSeparation!1958 (regOne!31582 r!7292) (regTwo!31582 r!7292) (++!13774 (++!13774 Nil!62782 (Cons!62782 (h!69230 s!2326) Nil!62782)) (Cons!62782 (h!69230 (t!376169 s!2326)) Nil!62782)) (t!376169 (t!376169 s!2326)) s!2326))))

(declare-fun b!5553389 () Bool)

(assert (=> b!5553389 (= e!3429968 (not (isDefined!12247 lt!2250629)))))

(assert (= (and d!1758131 res!2360645) b!5553382))

(assert (= (and d!1758131 c!972164) b!5553386))

(assert (= (and d!1758131 (not c!972164)) b!5553384))

(assert (= (and b!5553384 c!972165) b!5553387))

(assert (= (and b!5553384 (not c!972165)) b!5553388))

(assert (= (and d!1758131 res!2360646) b!5553385))

(assert (= (and b!5553385 res!2360647) b!5553383))

(assert (= (and b!5553383 res!2360648) b!5553381))

(assert (= (and d!1758131 (not res!2360649)) b!5553389))

(declare-fun m!6546470 () Bool)

(assert (=> d!1758131 m!6546470))

(assert (=> d!1758131 m!6545802))

(declare-fun m!6546472 () Bool)

(assert (=> d!1758131 m!6546472))

(assert (=> d!1758131 m!6545792))

(declare-fun m!6546474 () Bool)

(assert (=> b!5553382 m!6546474))

(assert (=> b!5553389 m!6546470))

(declare-fun m!6546476 () Bool)

(assert (=> b!5553383 m!6546476))

(declare-fun m!6546478 () Bool)

(assert (=> b!5553383 m!6546478))

(assert (=> b!5553381 m!6546476))

(declare-fun m!6546480 () Bool)

(assert (=> b!5553381 m!6546480))

(assert (=> b!5553388 m!6545802))

(declare-fun m!6546482 () Bool)

(assert (=> b!5553388 m!6546482))

(assert (=> b!5553388 m!6546482))

(declare-fun m!6546484 () Bool)

(assert (=> b!5553388 m!6546484))

(assert (=> b!5553388 m!6545802))

(declare-fun m!6546486 () Bool)

(assert (=> b!5553388 m!6546486))

(assert (=> b!5553388 m!6546482))

(declare-fun m!6546488 () Bool)

(assert (=> b!5553388 m!6546488))

(assert (=> b!5553385 m!6546476))

(declare-fun m!6546490 () Bool)

(assert (=> b!5553385 m!6546490))

(assert (=> b!5552485 d!1758131))

(declare-fun d!1758133 () Bool)

(assert (=> d!1758133 (= (isEmpty!34573 (unfocusZipperList!963 zl!343)) ((_ is Nil!62780) (unfocusZipperList!963 zl!343)))))

(assert (=> b!5552841 d!1758133))

(declare-fun b!5553390 () Bool)

(declare-fun e!3429976 () Bool)

(declare-fun call!413985 () Bool)

(assert (=> b!5553390 (= e!3429976 call!413985)))

(declare-fun d!1758135 () Bool)

(declare-fun res!2360651 () Bool)

(declare-fun e!3429975 () Bool)

(assert (=> d!1758135 (=> res!2360651 e!3429975)))

(assert (=> d!1758135 (= res!2360651 ((_ is ElementMatch!15535) (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))))))

(assert (=> d!1758135 (= (validRegex!7271 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))) e!3429975)))

(declare-fun b!5553391 () Bool)

(declare-fun res!2360653 () Bool)

(declare-fun e!3429974 () Bool)

(assert (=> b!5553391 (=> res!2360653 e!3429974)))

(assert (=> b!5553391 (= res!2360653 (not ((_ is Concat!24380) (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292)))))))

(declare-fun e!3429973 () Bool)

(assert (=> b!5553391 (= e!3429973 e!3429974)))

(declare-fun b!5553392 () Bool)

(declare-fun e!3429977 () Bool)

(assert (=> b!5553392 (= e!3429977 e!3429973)))

(declare-fun c!972166 () Bool)

(assert (=> b!5553392 (= c!972166 ((_ is Union!15535) (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))))))

(declare-fun b!5553393 () Bool)

(declare-fun e!3429978 () Bool)

(declare-fun call!413983 () Bool)

(assert (=> b!5553393 (= e!3429978 call!413983)))

(declare-fun bm!413978 () Bool)

(assert (=> bm!413978 (= call!413985 call!413983)))

(declare-fun b!5553394 () Bool)

(declare-fun res!2360650 () Bool)

(assert (=> b!5553394 (=> (not res!2360650) (not e!3429976))))

(declare-fun call!413984 () Bool)

(assert (=> b!5553394 (= res!2360650 call!413984)))

(assert (=> b!5553394 (= e!3429973 e!3429976)))

(declare-fun bm!413979 () Bool)

(assert (=> bm!413979 (= call!413984 (validRegex!7271 (ite c!972166 (regOne!31583 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))) (regOne!31582 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))))))))

(declare-fun c!972167 () Bool)

(declare-fun bm!413980 () Bool)

(assert (=> bm!413980 (= call!413983 (validRegex!7271 (ite c!972167 (reg!15864 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))) (ite c!972166 (regTwo!31583 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))) (regTwo!31582 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292)))))))))

(declare-fun b!5553395 () Bool)

(declare-fun e!3429979 () Bool)

(assert (=> b!5553395 (= e!3429974 e!3429979)))

(declare-fun res!2360652 () Bool)

(assert (=> b!5553395 (=> (not res!2360652) (not e!3429979))))

(assert (=> b!5553395 (= res!2360652 call!413984)))

(declare-fun b!5553396 () Bool)

(assert (=> b!5553396 (= e!3429979 call!413985)))

(declare-fun b!5553397 () Bool)

(assert (=> b!5553397 (= e!3429977 e!3429978)))

(declare-fun res!2360654 () Bool)

(assert (=> b!5553397 (= res!2360654 (not (nullable!5567 (reg!15864 (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))))))))

(assert (=> b!5553397 (=> (not res!2360654) (not e!3429978))))

(declare-fun b!5553398 () Bool)

(assert (=> b!5553398 (= e!3429975 e!3429977)))

(assert (=> b!5553398 (= c!972167 ((_ is Star!15535) (ite c!972009 (regOne!31583 r!7292) (regOne!31582 r!7292))))))

(assert (= (and d!1758135 (not res!2360651)) b!5553398))

(assert (= (and b!5553398 c!972167) b!5553397))

(assert (= (and b!5553398 (not c!972167)) b!5553392))

(assert (= (and b!5553397 res!2360654) b!5553393))

(assert (= (and b!5553392 c!972166) b!5553394))

(assert (= (and b!5553392 (not c!972166)) b!5553391))

(assert (= (and b!5553394 res!2360650) b!5553390))

(assert (= (and b!5553391 (not res!2360653)) b!5553395))

(assert (= (and b!5553395 res!2360652) b!5553396))

(assert (= (or b!5553390 b!5553396) bm!413978))

(assert (= (or b!5553394 b!5553395) bm!413979))

(assert (= (or b!5553393 bm!413978) bm!413980))

(declare-fun m!6546492 () Bool)

(assert (=> bm!413979 m!6546492))

(declare-fun m!6546494 () Bool)

(assert (=> bm!413980 m!6546494))

(declare-fun m!6546496 () Bool)

(assert (=> b!5553397 m!6546496))

(assert (=> bm!413885 d!1758135))

(declare-fun d!1758137 () Bool)

(assert (=> d!1758137 (= (isEmptyExpr!1098 lt!2250593) ((_ is EmptyExpr!15535) lt!2250593))))

(assert (=> b!5552785 d!1758137))

(declare-fun d!1758139 () Bool)

(declare-fun res!2360655 () Bool)

(declare-fun e!3429980 () Bool)

(assert (=> d!1758139 (=> res!2360655 e!3429980)))

(assert (=> d!1758139 (= res!2360655 ((_ is Nil!62780) (exprs!5419 (h!69229 zl!343))))))

(assert (=> d!1758139 (= (forall!14709 (exprs!5419 (h!69229 zl!343)) lambda!297875) e!3429980)))

(declare-fun b!5553399 () Bool)

(declare-fun e!3429981 () Bool)

(assert (=> b!5553399 (= e!3429980 e!3429981)))

(declare-fun res!2360656 () Bool)

(assert (=> b!5553399 (=> (not res!2360656) (not e!3429981))))

(assert (=> b!5553399 (= res!2360656 (dynLambda!24555 lambda!297875 (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun b!5553400 () Bool)

(assert (=> b!5553400 (= e!3429981 (forall!14709 (t!376167 (exprs!5419 (h!69229 zl!343))) lambda!297875))))

(assert (= (and d!1758139 (not res!2360655)) b!5553399))

(assert (= (and b!5553399 res!2360656) b!5553400))

(declare-fun b_lambda!210927 () Bool)

(assert (=> (not b_lambda!210927) (not b!5553399)))

(declare-fun m!6546498 () Bool)

(assert (=> b!5553399 m!6546498))

(declare-fun m!6546500 () Bool)

(assert (=> b!5553400 m!6546500))

(assert (=> d!1757863 d!1758139))

(declare-fun b!5553401 () Bool)

(declare-fun e!3429982 () Bool)

(declare-fun tp!1532078 () Bool)

(declare-fun tp!1532079 () Bool)

(assert (=> b!5553401 (= e!3429982 (and tp!1532078 tp!1532079))))

(assert (=> b!5552919 (= tp!1532056 e!3429982)))

(assert (= (and b!5552919 ((_ is Cons!62780) (exprs!5419 setElem!36937))) b!5553401))

(declare-fun e!3429983 () Bool)

(assert (=> b!5552883 (= tp!1532017 e!3429983)))

(declare-fun b!5553403 () Bool)

(declare-fun tp!1532083 () Bool)

(declare-fun tp!1532081 () Bool)

(assert (=> b!5553403 (= e!3429983 (and tp!1532083 tp!1532081))))

(declare-fun b!5553404 () Bool)

(declare-fun tp!1532080 () Bool)

(assert (=> b!5553404 (= e!3429983 tp!1532080)))

(declare-fun b!5553402 () Bool)

(assert (=> b!5553402 (= e!3429983 tp_is_empty!40323)))

(declare-fun b!5553405 () Bool)

(declare-fun tp!1532082 () Bool)

(declare-fun tp!1532084 () Bool)

(assert (=> b!5553405 (= e!3429983 (and tp!1532082 tp!1532084))))

(assert (= (and b!5552883 ((_ is ElementMatch!15535) (reg!15864 (regTwo!31583 r!7292)))) b!5553402))

(assert (= (and b!5552883 ((_ is Concat!24380) (reg!15864 (regTwo!31583 r!7292)))) b!5553403))

(assert (= (and b!5552883 ((_ is Star!15535) (reg!15864 (regTwo!31583 r!7292)))) b!5553404))

(assert (= (and b!5552883 ((_ is Union!15535) (reg!15864 (regTwo!31583 r!7292)))) b!5553405))

(declare-fun e!3429984 () Bool)

(assert (=> b!5552882 (= tp!1532020 e!3429984)))

(declare-fun b!5553407 () Bool)

(declare-fun tp!1532088 () Bool)

(declare-fun tp!1532086 () Bool)

(assert (=> b!5553407 (= e!3429984 (and tp!1532088 tp!1532086))))

(declare-fun b!5553408 () Bool)

(declare-fun tp!1532085 () Bool)

(assert (=> b!5553408 (= e!3429984 tp!1532085)))

(declare-fun b!5553406 () Bool)

(assert (=> b!5553406 (= e!3429984 tp_is_empty!40323)))

(declare-fun b!5553409 () Bool)

(declare-fun tp!1532087 () Bool)

(declare-fun tp!1532089 () Bool)

(assert (=> b!5553409 (= e!3429984 (and tp!1532087 tp!1532089))))

(assert (= (and b!5552882 ((_ is ElementMatch!15535) (regOne!31582 (regTwo!31583 r!7292)))) b!5553406))

(assert (= (and b!5552882 ((_ is Concat!24380) (regOne!31582 (regTwo!31583 r!7292)))) b!5553407))

(assert (= (and b!5552882 ((_ is Star!15535) (regOne!31582 (regTwo!31583 r!7292)))) b!5553408))

(assert (= (and b!5552882 ((_ is Union!15535) (regOne!31582 (regTwo!31583 r!7292)))) b!5553409))

(declare-fun e!3429985 () Bool)

(assert (=> b!5552882 (= tp!1532018 e!3429985)))

(declare-fun b!5553411 () Bool)

(declare-fun tp!1532093 () Bool)

(declare-fun tp!1532091 () Bool)

(assert (=> b!5553411 (= e!3429985 (and tp!1532093 tp!1532091))))

(declare-fun b!5553412 () Bool)

(declare-fun tp!1532090 () Bool)

(assert (=> b!5553412 (= e!3429985 tp!1532090)))

(declare-fun b!5553410 () Bool)

(assert (=> b!5553410 (= e!3429985 tp_is_empty!40323)))

(declare-fun b!5553413 () Bool)

(declare-fun tp!1532092 () Bool)

(declare-fun tp!1532094 () Bool)

(assert (=> b!5553413 (= e!3429985 (and tp!1532092 tp!1532094))))

(assert (= (and b!5552882 ((_ is ElementMatch!15535) (regTwo!31582 (regTwo!31583 r!7292)))) b!5553410))

(assert (= (and b!5552882 ((_ is Concat!24380) (regTwo!31582 (regTwo!31583 r!7292)))) b!5553411))

(assert (= (and b!5552882 ((_ is Star!15535) (regTwo!31582 (regTwo!31583 r!7292)))) b!5553412))

(assert (= (and b!5552882 ((_ is Union!15535) (regTwo!31582 (regTwo!31583 r!7292)))) b!5553413))

(declare-fun e!3429986 () Bool)

(assert (=> b!5552896 (= tp!1532033 e!3429986)))

(declare-fun b!5553415 () Bool)

(declare-fun tp!1532098 () Bool)

(declare-fun tp!1532096 () Bool)

(assert (=> b!5553415 (= e!3429986 (and tp!1532098 tp!1532096))))

(declare-fun b!5553416 () Bool)

(declare-fun tp!1532095 () Bool)

(assert (=> b!5553416 (= e!3429986 tp!1532095)))

(declare-fun b!5553414 () Bool)

(assert (=> b!5553414 (= e!3429986 tp_is_empty!40323)))

(declare-fun b!5553417 () Bool)

(declare-fun tp!1532097 () Bool)

(declare-fun tp!1532099 () Bool)

(assert (=> b!5553417 (= e!3429986 (and tp!1532097 tp!1532099))))

(assert (= (and b!5552896 ((_ is ElementMatch!15535) (reg!15864 (regOne!31582 r!7292)))) b!5553414))

(assert (= (and b!5552896 ((_ is Concat!24380) (reg!15864 (regOne!31582 r!7292)))) b!5553415))

(assert (= (and b!5552896 ((_ is Star!15535) (reg!15864 (regOne!31582 r!7292)))) b!5553416))

(assert (= (and b!5552896 ((_ is Union!15535) (reg!15864 (regOne!31582 r!7292)))) b!5553417))

(declare-fun condSetEmpty!36941 () Bool)

(assert (=> setNonEmpty!36937 (= condSetEmpty!36941 (= setRest!36937 ((as const (Array Context!9838 Bool)) false)))))

(declare-fun setRes!36941 () Bool)

(assert (=> setNonEmpty!36937 (= tp!1532057 setRes!36941)))

(declare-fun setIsEmpty!36941 () Bool)

(assert (=> setIsEmpty!36941 setRes!36941))

(declare-fun setElem!36941 () Context!9838)

(declare-fun tp!1532101 () Bool)

(declare-fun e!3429987 () Bool)

(declare-fun setNonEmpty!36941 () Bool)

(assert (=> setNonEmpty!36941 (= setRes!36941 (and tp!1532101 (inv!82084 setElem!36941) e!3429987))))

(declare-fun setRest!36941 () (InoxSet Context!9838))

(assert (=> setNonEmpty!36941 (= setRest!36937 ((_ map or) (store ((as const (Array Context!9838 Bool)) false) setElem!36941 true) setRest!36941))))

(declare-fun b!5553418 () Bool)

(declare-fun tp!1532100 () Bool)

(assert (=> b!5553418 (= e!3429987 tp!1532100)))

(assert (= (and setNonEmpty!36937 condSetEmpty!36941) setIsEmpty!36941))

(assert (= (and setNonEmpty!36937 (not condSetEmpty!36941)) setNonEmpty!36941))

(assert (= setNonEmpty!36941 b!5553418))

(declare-fun m!6546508 () Bool)

(assert (=> setNonEmpty!36941 m!6546508))

(declare-fun e!3429988 () Bool)

(assert (=> b!5552897 (= tp!1532035 e!3429988)))

(declare-fun b!5553420 () Bool)

(declare-fun tp!1532105 () Bool)

(declare-fun tp!1532103 () Bool)

(assert (=> b!5553420 (= e!3429988 (and tp!1532105 tp!1532103))))

(declare-fun b!5553421 () Bool)

(declare-fun tp!1532102 () Bool)

(assert (=> b!5553421 (= e!3429988 tp!1532102)))

(declare-fun b!5553419 () Bool)

(assert (=> b!5553419 (= e!3429988 tp_is_empty!40323)))

(declare-fun b!5553422 () Bool)

(declare-fun tp!1532104 () Bool)

(declare-fun tp!1532106 () Bool)

(assert (=> b!5553422 (= e!3429988 (and tp!1532104 tp!1532106))))

(assert (= (and b!5552897 ((_ is ElementMatch!15535) (regOne!31583 (regOne!31582 r!7292)))) b!5553419))

(assert (= (and b!5552897 ((_ is Concat!24380) (regOne!31583 (regOne!31582 r!7292)))) b!5553420))

(assert (= (and b!5552897 ((_ is Star!15535) (regOne!31583 (regOne!31582 r!7292)))) b!5553421))

(assert (= (and b!5552897 ((_ is Union!15535) (regOne!31583 (regOne!31582 r!7292)))) b!5553422))

(declare-fun e!3429989 () Bool)

(assert (=> b!5552897 (= tp!1532037 e!3429989)))

(declare-fun b!5553424 () Bool)

(declare-fun tp!1532110 () Bool)

(declare-fun tp!1532108 () Bool)

(assert (=> b!5553424 (= e!3429989 (and tp!1532110 tp!1532108))))

(declare-fun b!5553425 () Bool)

(declare-fun tp!1532107 () Bool)

(assert (=> b!5553425 (= e!3429989 tp!1532107)))

(declare-fun b!5553423 () Bool)

(assert (=> b!5553423 (= e!3429989 tp_is_empty!40323)))

(declare-fun b!5553426 () Bool)

(declare-fun tp!1532109 () Bool)

(declare-fun tp!1532111 () Bool)

(assert (=> b!5553426 (= e!3429989 (and tp!1532109 tp!1532111))))

(assert (= (and b!5552897 ((_ is ElementMatch!15535) (regTwo!31583 (regOne!31582 r!7292)))) b!5553423))

(assert (= (and b!5552897 ((_ is Concat!24380) (regTwo!31583 (regOne!31582 r!7292)))) b!5553424))

(assert (= (and b!5552897 ((_ is Star!15535) (regTwo!31583 (regOne!31582 r!7292)))) b!5553425))

(assert (= (and b!5552897 ((_ is Union!15535) (regTwo!31583 (regOne!31582 r!7292)))) b!5553426))

(declare-fun e!3429990 () Bool)

(assert (=> b!5552920 (= tp!1532058 e!3429990)))

(declare-fun b!5553428 () Bool)

(declare-fun tp!1532115 () Bool)

(declare-fun tp!1532113 () Bool)

(assert (=> b!5553428 (= e!3429990 (and tp!1532115 tp!1532113))))

(declare-fun b!5553429 () Bool)

(declare-fun tp!1532112 () Bool)

(assert (=> b!5553429 (= e!3429990 tp!1532112)))

(declare-fun b!5553427 () Bool)

(assert (=> b!5553427 (= e!3429990 tp_is_empty!40323)))

(declare-fun b!5553430 () Bool)

(declare-fun tp!1532114 () Bool)

(declare-fun tp!1532116 () Bool)

(assert (=> b!5553430 (= e!3429990 (and tp!1532114 tp!1532116))))

(assert (= (and b!5552920 ((_ is ElementMatch!15535) (h!69228 (exprs!5419 setElem!36931)))) b!5553427))

(assert (= (and b!5552920 ((_ is Concat!24380) (h!69228 (exprs!5419 setElem!36931)))) b!5553428))

(assert (= (and b!5552920 ((_ is Star!15535) (h!69228 (exprs!5419 setElem!36931)))) b!5553429))

(assert (= (and b!5552920 ((_ is Union!15535) (h!69228 (exprs!5419 setElem!36931)))) b!5553430))

(declare-fun b!5553431 () Bool)

(declare-fun e!3429991 () Bool)

(declare-fun tp!1532117 () Bool)

(declare-fun tp!1532118 () Bool)

(assert (=> b!5553431 (= e!3429991 (and tp!1532117 tp!1532118))))

(assert (=> b!5552920 (= tp!1532059 e!3429991)))

(assert (= (and b!5552920 ((_ is Cons!62780) (t!376167 (exprs!5419 setElem!36931)))) b!5553431))

(declare-fun e!3429992 () Bool)

(assert (=> b!5552900 (= tp!1532038 e!3429992)))

(declare-fun b!5553433 () Bool)

(declare-fun tp!1532122 () Bool)

(declare-fun tp!1532120 () Bool)

(assert (=> b!5553433 (= e!3429992 (and tp!1532122 tp!1532120))))

(declare-fun b!5553434 () Bool)

(declare-fun tp!1532119 () Bool)

(assert (=> b!5553434 (= e!3429992 tp!1532119)))

(declare-fun b!5553432 () Bool)

(assert (=> b!5553432 (= e!3429992 tp_is_empty!40323)))

(declare-fun b!5553435 () Bool)

(declare-fun tp!1532121 () Bool)

(declare-fun tp!1532123 () Bool)

(assert (=> b!5553435 (= e!3429992 (and tp!1532121 tp!1532123))))

(assert (= (and b!5552900 ((_ is ElementMatch!15535) (reg!15864 (regTwo!31582 r!7292)))) b!5553432))

(assert (= (and b!5552900 ((_ is Concat!24380) (reg!15864 (regTwo!31582 r!7292)))) b!5553433))

(assert (= (and b!5552900 ((_ is Star!15535) (reg!15864 (regTwo!31582 r!7292)))) b!5553434))

(assert (= (and b!5552900 ((_ is Union!15535) (reg!15864 (regTwo!31582 r!7292)))) b!5553435))

(declare-fun e!3429993 () Bool)

(assert (=> b!5552899 (= tp!1532041 e!3429993)))

(declare-fun b!5553437 () Bool)

(declare-fun tp!1532127 () Bool)

(declare-fun tp!1532125 () Bool)

(assert (=> b!5553437 (= e!3429993 (and tp!1532127 tp!1532125))))

(declare-fun b!5553438 () Bool)

(declare-fun tp!1532124 () Bool)

(assert (=> b!5553438 (= e!3429993 tp!1532124)))

(declare-fun b!5553436 () Bool)

(assert (=> b!5553436 (= e!3429993 tp_is_empty!40323)))

(declare-fun b!5553439 () Bool)

(declare-fun tp!1532126 () Bool)

(declare-fun tp!1532128 () Bool)

(assert (=> b!5553439 (= e!3429993 (and tp!1532126 tp!1532128))))

(assert (= (and b!5552899 ((_ is ElementMatch!15535) (regOne!31582 (regTwo!31582 r!7292)))) b!5553436))

(assert (= (and b!5552899 ((_ is Concat!24380) (regOne!31582 (regTwo!31582 r!7292)))) b!5553437))

(assert (= (and b!5552899 ((_ is Star!15535) (regOne!31582 (regTwo!31582 r!7292)))) b!5553438))

(assert (= (and b!5552899 ((_ is Union!15535) (regOne!31582 (regTwo!31582 r!7292)))) b!5553439))

(declare-fun e!3429994 () Bool)

(assert (=> b!5552899 (= tp!1532039 e!3429994)))

(declare-fun b!5553441 () Bool)

(declare-fun tp!1532132 () Bool)

(declare-fun tp!1532130 () Bool)

(assert (=> b!5553441 (= e!3429994 (and tp!1532132 tp!1532130))))

(declare-fun b!5553442 () Bool)

(declare-fun tp!1532129 () Bool)

(assert (=> b!5553442 (= e!3429994 tp!1532129)))

(declare-fun b!5553440 () Bool)

(assert (=> b!5553440 (= e!3429994 tp_is_empty!40323)))

(declare-fun b!5553443 () Bool)

(declare-fun tp!1532131 () Bool)

(declare-fun tp!1532133 () Bool)

(assert (=> b!5553443 (= e!3429994 (and tp!1532131 tp!1532133))))

(assert (= (and b!5552899 ((_ is ElementMatch!15535) (regTwo!31582 (regTwo!31582 r!7292)))) b!5553440))

(assert (= (and b!5552899 ((_ is Concat!24380) (regTwo!31582 (regTwo!31582 r!7292)))) b!5553441))

(assert (= (and b!5552899 ((_ is Star!15535) (regTwo!31582 (regTwo!31582 r!7292)))) b!5553442))

(assert (= (and b!5552899 ((_ is Union!15535) (regTwo!31582 (regTwo!31582 r!7292)))) b!5553443))

(declare-fun b!5553444 () Bool)

(declare-fun e!3429995 () Bool)

(declare-fun tp!1532134 () Bool)

(assert (=> b!5553444 (= e!3429995 (and tp_is_empty!40323 tp!1532134))))

(assert (=> b!5552914 (= tp!1532051 e!3429995)))

(assert (= (and b!5552914 ((_ is Cons!62782) (t!376169 (t!376169 s!2326)))) b!5553444))

(declare-fun e!3429996 () Bool)

(assert (=> b!5552884 (= tp!1532019 e!3429996)))

(declare-fun b!5553446 () Bool)

(declare-fun tp!1532138 () Bool)

(declare-fun tp!1532136 () Bool)

(assert (=> b!5553446 (= e!3429996 (and tp!1532138 tp!1532136))))

(declare-fun b!5553447 () Bool)

(declare-fun tp!1532135 () Bool)

(assert (=> b!5553447 (= e!3429996 tp!1532135)))

(declare-fun b!5553445 () Bool)

(assert (=> b!5553445 (= e!3429996 tp_is_empty!40323)))

(declare-fun b!5553448 () Bool)

(declare-fun tp!1532137 () Bool)

(declare-fun tp!1532139 () Bool)

(assert (=> b!5553448 (= e!3429996 (and tp!1532137 tp!1532139))))

(assert (= (and b!5552884 ((_ is ElementMatch!15535) (regOne!31583 (regTwo!31583 r!7292)))) b!5553445))

(assert (= (and b!5552884 ((_ is Concat!24380) (regOne!31583 (regTwo!31583 r!7292)))) b!5553446))

(assert (= (and b!5552884 ((_ is Star!15535) (regOne!31583 (regTwo!31583 r!7292)))) b!5553447))

(assert (= (and b!5552884 ((_ is Union!15535) (regOne!31583 (regTwo!31583 r!7292)))) b!5553448))

(declare-fun e!3429997 () Bool)

(assert (=> b!5552884 (= tp!1532021 e!3429997)))

(declare-fun b!5553450 () Bool)

(declare-fun tp!1532143 () Bool)

(declare-fun tp!1532141 () Bool)

(assert (=> b!5553450 (= e!3429997 (and tp!1532143 tp!1532141))))

(declare-fun b!5553451 () Bool)

(declare-fun tp!1532140 () Bool)

(assert (=> b!5553451 (= e!3429997 tp!1532140)))

(declare-fun b!5553449 () Bool)

(assert (=> b!5553449 (= e!3429997 tp_is_empty!40323)))

(declare-fun b!5553452 () Bool)

(declare-fun tp!1532142 () Bool)

(declare-fun tp!1532144 () Bool)

(assert (=> b!5553452 (= e!3429997 (and tp!1532142 tp!1532144))))

(assert (= (and b!5552884 ((_ is ElementMatch!15535) (regTwo!31583 (regTwo!31583 r!7292)))) b!5553449))

(assert (= (and b!5552884 ((_ is Concat!24380) (regTwo!31583 (regTwo!31583 r!7292)))) b!5553450))

(assert (= (and b!5552884 ((_ is Star!15535) (regTwo!31583 (regTwo!31583 r!7292)))) b!5553451))

(assert (= (and b!5552884 ((_ is Union!15535) (regTwo!31583 (regTwo!31583 r!7292)))) b!5553452))

(declare-fun e!3429998 () Bool)

(assert (=> b!5552886 (= tp!1532025 e!3429998)))

(declare-fun b!5553454 () Bool)

(declare-fun tp!1532148 () Bool)

(declare-fun tp!1532146 () Bool)

(assert (=> b!5553454 (= e!3429998 (and tp!1532148 tp!1532146))))

(declare-fun b!5553455 () Bool)

(declare-fun tp!1532145 () Bool)

(assert (=> b!5553455 (= e!3429998 tp!1532145)))

(declare-fun b!5553453 () Bool)

(assert (=> b!5553453 (= e!3429998 tp_is_empty!40323)))

(declare-fun b!5553456 () Bool)

(declare-fun tp!1532147 () Bool)

(declare-fun tp!1532149 () Bool)

(assert (=> b!5553456 (= e!3429998 (and tp!1532147 tp!1532149))))

(assert (= (and b!5552886 ((_ is ElementMatch!15535) (regOne!31582 (reg!15864 r!7292)))) b!5553453))

(assert (= (and b!5552886 ((_ is Concat!24380) (regOne!31582 (reg!15864 r!7292)))) b!5553454))

(assert (= (and b!5552886 ((_ is Star!15535) (regOne!31582 (reg!15864 r!7292)))) b!5553455))

(assert (= (and b!5552886 ((_ is Union!15535) (regOne!31582 (reg!15864 r!7292)))) b!5553456))

(declare-fun e!3429999 () Bool)

(assert (=> b!5552886 (= tp!1532023 e!3429999)))

(declare-fun b!5553458 () Bool)

(declare-fun tp!1532153 () Bool)

(declare-fun tp!1532151 () Bool)

(assert (=> b!5553458 (= e!3429999 (and tp!1532153 tp!1532151))))

(declare-fun b!5553459 () Bool)

(declare-fun tp!1532150 () Bool)

(assert (=> b!5553459 (= e!3429999 tp!1532150)))

(declare-fun b!5553457 () Bool)

(assert (=> b!5553457 (= e!3429999 tp_is_empty!40323)))

(declare-fun b!5553460 () Bool)

(declare-fun tp!1532152 () Bool)

(declare-fun tp!1532154 () Bool)

(assert (=> b!5553460 (= e!3429999 (and tp!1532152 tp!1532154))))

(assert (= (and b!5552886 ((_ is ElementMatch!15535) (regTwo!31582 (reg!15864 r!7292)))) b!5553457))

(assert (= (and b!5552886 ((_ is Concat!24380) (regTwo!31582 (reg!15864 r!7292)))) b!5553458))

(assert (= (and b!5552886 ((_ is Star!15535) (regTwo!31582 (reg!15864 r!7292)))) b!5553459))

(assert (= (and b!5552886 ((_ is Union!15535) (regTwo!31582 (reg!15864 r!7292)))) b!5553460))

(declare-fun b!5553461 () Bool)

(declare-fun e!3430000 () Bool)

(declare-fun tp!1532155 () Bool)

(declare-fun tp!1532156 () Bool)

(assert (=> b!5553461 (= e!3430000 (and tp!1532155 tp!1532156))))

(assert (=> b!5552909 (= tp!1532047 e!3430000)))

(assert (= (and b!5552909 ((_ is Cons!62780) (exprs!5419 (h!69229 (t!376168 zl!343))))) b!5553461))

(declare-fun e!3430001 () Bool)

(assert (=> b!5552878 (= tp!1532015 e!3430001)))

(declare-fun b!5553463 () Bool)

(declare-fun tp!1532160 () Bool)

(declare-fun tp!1532158 () Bool)

(assert (=> b!5553463 (= e!3430001 (and tp!1532160 tp!1532158))))

(declare-fun b!5553464 () Bool)

(declare-fun tp!1532157 () Bool)

(assert (=> b!5553464 (= e!3430001 tp!1532157)))

(declare-fun b!5553462 () Bool)

(assert (=> b!5553462 (= e!3430001 tp_is_empty!40323)))

(declare-fun b!5553465 () Bool)

(declare-fun tp!1532159 () Bool)

(declare-fun tp!1532161 () Bool)

(assert (=> b!5553465 (= e!3430001 (and tp!1532159 tp!1532161))))

(assert (= (and b!5552878 ((_ is ElementMatch!15535) (regOne!31582 (regOne!31583 r!7292)))) b!5553462))

(assert (= (and b!5552878 ((_ is Concat!24380) (regOne!31582 (regOne!31583 r!7292)))) b!5553463))

(assert (= (and b!5552878 ((_ is Star!15535) (regOne!31582 (regOne!31583 r!7292)))) b!5553464))

(assert (= (and b!5552878 ((_ is Union!15535) (regOne!31582 (regOne!31583 r!7292)))) b!5553465))

(declare-fun e!3430002 () Bool)

(assert (=> b!5552878 (= tp!1532013 e!3430002)))

(declare-fun b!5553467 () Bool)

(declare-fun tp!1532165 () Bool)

(declare-fun tp!1532163 () Bool)

(assert (=> b!5553467 (= e!3430002 (and tp!1532165 tp!1532163))))

(declare-fun b!5553468 () Bool)

(declare-fun tp!1532162 () Bool)

(assert (=> b!5553468 (= e!3430002 tp!1532162)))

(declare-fun b!5553466 () Bool)

(assert (=> b!5553466 (= e!3430002 tp_is_empty!40323)))

(declare-fun b!5553469 () Bool)

(declare-fun tp!1532164 () Bool)

(declare-fun tp!1532166 () Bool)

(assert (=> b!5553469 (= e!3430002 (and tp!1532164 tp!1532166))))

(assert (= (and b!5552878 ((_ is ElementMatch!15535) (regTwo!31582 (regOne!31583 r!7292)))) b!5553466))

(assert (= (and b!5552878 ((_ is Concat!24380) (regTwo!31582 (regOne!31583 r!7292)))) b!5553467))

(assert (= (and b!5552878 ((_ is Star!15535) (regTwo!31582 (regOne!31583 r!7292)))) b!5553468))

(assert (= (and b!5552878 ((_ is Union!15535) (regTwo!31582 (regOne!31583 r!7292)))) b!5553469))

(declare-fun e!3430003 () Bool)

(assert (=> b!5552887 (= tp!1532022 e!3430003)))

(declare-fun b!5553471 () Bool)

(declare-fun tp!1532170 () Bool)

(declare-fun tp!1532168 () Bool)

(assert (=> b!5553471 (= e!3430003 (and tp!1532170 tp!1532168))))

(declare-fun b!5553472 () Bool)

(declare-fun tp!1532167 () Bool)

(assert (=> b!5553472 (= e!3430003 tp!1532167)))

(declare-fun b!5553470 () Bool)

(assert (=> b!5553470 (= e!3430003 tp_is_empty!40323)))

(declare-fun b!5553473 () Bool)

(declare-fun tp!1532169 () Bool)

(declare-fun tp!1532171 () Bool)

(assert (=> b!5553473 (= e!3430003 (and tp!1532169 tp!1532171))))

(assert (= (and b!5552887 ((_ is ElementMatch!15535) (reg!15864 (reg!15864 r!7292)))) b!5553470))

(assert (= (and b!5552887 ((_ is Concat!24380) (reg!15864 (reg!15864 r!7292)))) b!5553471))

(assert (= (and b!5552887 ((_ is Star!15535) (reg!15864 (reg!15864 r!7292)))) b!5553472))

(assert (= (and b!5552887 ((_ is Union!15535) (reg!15864 (reg!15864 r!7292)))) b!5553473))

(declare-fun e!3430004 () Bool)

(assert (=> b!5552901 (= tp!1532040 e!3430004)))

(declare-fun b!5553475 () Bool)

(declare-fun tp!1532175 () Bool)

(declare-fun tp!1532173 () Bool)

(assert (=> b!5553475 (= e!3430004 (and tp!1532175 tp!1532173))))

(declare-fun b!5553476 () Bool)

(declare-fun tp!1532172 () Bool)

(assert (=> b!5553476 (= e!3430004 tp!1532172)))

(declare-fun b!5553474 () Bool)

(assert (=> b!5553474 (= e!3430004 tp_is_empty!40323)))

(declare-fun b!5553477 () Bool)

(declare-fun tp!1532174 () Bool)

(declare-fun tp!1532176 () Bool)

(assert (=> b!5553477 (= e!3430004 (and tp!1532174 tp!1532176))))

(assert (= (and b!5552901 ((_ is ElementMatch!15535) (regOne!31583 (regTwo!31582 r!7292)))) b!5553474))

(assert (= (and b!5552901 ((_ is Concat!24380) (regOne!31583 (regTwo!31582 r!7292)))) b!5553475))

(assert (= (and b!5552901 ((_ is Star!15535) (regOne!31583 (regTwo!31582 r!7292)))) b!5553476))

(assert (= (and b!5552901 ((_ is Union!15535) (regOne!31583 (regTwo!31582 r!7292)))) b!5553477))

(declare-fun e!3430009 () Bool)

(assert (=> b!5552901 (= tp!1532042 e!3430009)))

(declare-fun b!5553483 () Bool)

(declare-fun tp!1532180 () Bool)

(declare-fun tp!1532178 () Bool)

(assert (=> b!5553483 (= e!3430009 (and tp!1532180 tp!1532178))))

(declare-fun b!5553484 () Bool)

(declare-fun tp!1532177 () Bool)

(assert (=> b!5553484 (= e!3430009 tp!1532177)))

(declare-fun b!5553482 () Bool)

(assert (=> b!5553482 (= e!3430009 tp_is_empty!40323)))

(declare-fun b!5553485 () Bool)

(declare-fun tp!1532179 () Bool)

(declare-fun tp!1532181 () Bool)

(assert (=> b!5553485 (= e!3430009 (and tp!1532179 tp!1532181))))

(assert (= (and b!5552901 ((_ is ElementMatch!15535) (regTwo!31583 (regTwo!31582 r!7292)))) b!5553482))

(assert (= (and b!5552901 ((_ is Concat!24380) (regTwo!31583 (regTwo!31582 r!7292)))) b!5553483))

(assert (= (and b!5552901 ((_ is Star!15535) (regTwo!31583 (regTwo!31582 r!7292)))) b!5553484))

(assert (= (and b!5552901 ((_ is Union!15535) (regTwo!31583 (regTwo!31582 r!7292)))) b!5553485))

(declare-fun e!3430016 () Bool)

(assert (=> b!5552893 (= tp!1532031 e!3430016)))

(declare-fun b!5553495 () Bool)

(declare-fun tp!1532185 () Bool)

(declare-fun tp!1532183 () Bool)

(assert (=> b!5553495 (= e!3430016 (and tp!1532185 tp!1532183))))

(declare-fun b!5553496 () Bool)

(declare-fun tp!1532182 () Bool)

(assert (=> b!5553496 (= e!3430016 tp!1532182)))

(declare-fun b!5553494 () Bool)

(assert (=> b!5553494 (= e!3430016 tp_is_empty!40323)))

(declare-fun b!5553497 () Bool)

(declare-fun tp!1532184 () Bool)

(declare-fun tp!1532186 () Bool)

(assert (=> b!5553497 (= e!3430016 (and tp!1532184 tp!1532186))))

(assert (= (and b!5552893 ((_ is ElementMatch!15535) (h!69228 (exprs!5419 (h!69229 zl!343))))) b!5553494))

(assert (= (and b!5552893 ((_ is Concat!24380) (h!69228 (exprs!5419 (h!69229 zl!343))))) b!5553495))

(assert (= (and b!5552893 ((_ is Star!15535) (h!69228 (exprs!5419 (h!69229 zl!343))))) b!5553496))

(assert (= (and b!5552893 ((_ is Union!15535) (h!69228 (exprs!5419 (h!69229 zl!343))))) b!5553497))

(declare-fun b!5553500 () Bool)

(declare-fun e!3430019 () Bool)

(declare-fun tp!1532187 () Bool)

(declare-fun tp!1532188 () Bool)

(assert (=> b!5553500 (= e!3430019 (and tp!1532187 tp!1532188))))

(assert (=> b!5552893 (= tp!1532032 e!3430019)))

(assert (= (and b!5552893 ((_ is Cons!62780) (t!376167 (exprs!5419 (h!69229 zl!343))))) b!5553500))

(declare-fun b!5553502 () Bool)

(declare-fun e!3430021 () Bool)

(declare-fun tp!1532189 () Bool)

(assert (=> b!5553502 (= e!3430021 tp!1532189)))

(declare-fun b!5553501 () Bool)

(declare-fun e!3430020 () Bool)

(declare-fun tp!1532190 () Bool)

(assert (=> b!5553501 (= e!3430020 (and (inv!82084 (h!69229 (t!376168 (t!376168 zl!343)))) e!3430021 tp!1532190))))

(assert (=> b!5552908 (= tp!1532048 e!3430020)))

(assert (= b!5553501 b!5553502))

(assert (= (and b!5552908 ((_ is Cons!62781) (t!376168 (t!376168 zl!343)))) b!5553501))

(declare-fun m!6546510 () Bool)

(assert (=> b!5553501 m!6546510))

(declare-fun e!3430022 () Bool)

(assert (=> b!5552895 (= tp!1532036 e!3430022)))

(declare-fun b!5553504 () Bool)

(declare-fun tp!1532194 () Bool)

(declare-fun tp!1532192 () Bool)

(assert (=> b!5553504 (= e!3430022 (and tp!1532194 tp!1532192))))

(declare-fun b!5553505 () Bool)

(declare-fun tp!1532191 () Bool)

(assert (=> b!5553505 (= e!3430022 tp!1532191)))

(declare-fun b!5553503 () Bool)

(assert (=> b!5553503 (= e!3430022 tp_is_empty!40323)))

(declare-fun b!5553506 () Bool)

(declare-fun tp!1532193 () Bool)

(declare-fun tp!1532195 () Bool)

(assert (=> b!5553506 (= e!3430022 (and tp!1532193 tp!1532195))))

(assert (= (and b!5552895 ((_ is ElementMatch!15535) (regOne!31582 (regOne!31582 r!7292)))) b!5553503))

(assert (= (and b!5552895 ((_ is Concat!24380) (regOne!31582 (regOne!31582 r!7292)))) b!5553504))

(assert (= (and b!5552895 ((_ is Star!15535) (regOne!31582 (regOne!31582 r!7292)))) b!5553505))

(assert (= (and b!5552895 ((_ is Union!15535) (regOne!31582 (regOne!31582 r!7292)))) b!5553506))

(declare-fun e!3430023 () Bool)

(assert (=> b!5552895 (= tp!1532034 e!3430023)))

(declare-fun b!5553508 () Bool)

(declare-fun tp!1532199 () Bool)

(declare-fun tp!1532197 () Bool)

(assert (=> b!5553508 (= e!3430023 (and tp!1532199 tp!1532197))))

(declare-fun b!5553509 () Bool)

(declare-fun tp!1532196 () Bool)

(assert (=> b!5553509 (= e!3430023 tp!1532196)))

(declare-fun b!5553507 () Bool)

(assert (=> b!5553507 (= e!3430023 tp_is_empty!40323)))

(declare-fun b!5553510 () Bool)

(declare-fun tp!1532198 () Bool)

(declare-fun tp!1532200 () Bool)

(assert (=> b!5553510 (= e!3430023 (and tp!1532198 tp!1532200))))

(assert (= (and b!5552895 ((_ is ElementMatch!15535) (regTwo!31582 (regOne!31582 r!7292)))) b!5553507))

(assert (= (and b!5552895 ((_ is Concat!24380) (regTwo!31582 (regOne!31582 r!7292)))) b!5553508))

(assert (= (and b!5552895 ((_ is Star!15535) (regTwo!31582 (regOne!31582 r!7292)))) b!5553509))

(assert (= (and b!5552895 ((_ is Union!15535) (regTwo!31582 (regOne!31582 r!7292)))) b!5553510))

(declare-fun e!3430024 () Bool)

(assert (=> b!5552879 (= tp!1532012 e!3430024)))

(declare-fun b!5553512 () Bool)

(declare-fun tp!1532204 () Bool)

(declare-fun tp!1532202 () Bool)

(assert (=> b!5553512 (= e!3430024 (and tp!1532204 tp!1532202))))

(declare-fun b!5553513 () Bool)

(declare-fun tp!1532201 () Bool)

(assert (=> b!5553513 (= e!3430024 tp!1532201)))

(declare-fun b!5553511 () Bool)

(assert (=> b!5553511 (= e!3430024 tp_is_empty!40323)))

(declare-fun b!5553514 () Bool)

(declare-fun tp!1532203 () Bool)

(declare-fun tp!1532205 () Bool)

(assert (=> b!5553514 (= e!3430024 (and tp!1532203 tp!1532205))))

(assert (= (and b!5552879 ((_ is ElementMatch!15535) (reg!15864 (regOne!31583 r!7292)))) b!5553511))

(assert (= (and b!5552879 ((_ is Concat!24380) (reg!15864 (regOne!31583 r!7292)))) b!5553512))

(assert (= (and b!5552879 ((_ is Star!15535) (reg!15864 (regOne!31583 r!7292)))) b!5553513))

(assert (= (and b!5552879 ((_ is Union!15535) (reg!15864 (regOne!31583 r!7292)))) b!5553514))

(declare-fun e!3430025 () Bool)

(assert (=> b!5552888 (= tp!1532024 e!3430025)))

(declare-fun b!5553516 () Bool)

(declare-fun tp!1532209 () Bool)

(declare-fun tp!1532207 () Bool)

(assert (=> b!5553516 (= e!3430025 (and tp!1532209 tp!1532207))))

(declare-fun b!5553517 () Bool)

(declare-fun tp!1532206 () Bool)

(assert (=> b!5553517 (= e!3430025 tp!1532206)))

(declare-fun b!5553515 () Bool)

(assert (=> b!5553515 (= e!3430025 tp_is_empty!40323)))

(declare-fun b!5553518 () Bool)

(declare-fun tp!1532208 () Bool)

(declare-fun tp!1532210 () Bool)

(assert (=> b!5553518 (= e!3430025 (and tp!1532208 tp!1532210))))

(assert (= (and b!5552888 ((_ is ElementMatch!15535) (regOne!31583 (reg!15864 r!7292)))) b!5553515))

(assert (= (and b!5552888 ((_ is Concat!24380) (regOne!31583 (reg!15864 r!7292)))) b!5553516))

(assert (= (and b!5552888 ((_ is Star!15535) (regOne!31583 (reg!15864 r!7292)))) b!5553517))

(assert (= (and b!5552888 ((_ is Union!15535) (regOne!31583 (reg!15864 r!7292)))) b!5553518))

(declare-fun e!3430026 () Bool)

(assert (=> b!5552888 (= tp!1532026 e!3430026)))

(declare-fun b!5553520 () Bool)

(declare-fun tp!1532214 () Bool)

(declare-fun tp!1532212 () Bool)

(assert (=> b!5553520 (= e!3430026 (and tp!1532214 tp!1532212))))

(declare-fun b!5553521 () Bool)

(declare-fun tp!1532211 () Bool)

(assert (=> b!5553521 (= e!3430026 tp!1532211)))

(declare-fun b!5553519 () Bool)

(assert (=> b!5553519 (= e!3430026 tp_is_empty!40323)))

(declare-fun b!5553522 () Bool)

(declare-fun tp!1532213 () Bool)

(declare-fun tp!1532215 () Bool)

(assert (=> b!5553522 (= e!3430026 (and tp!1532213 tp!1532215))))

(assert (= (and b!5552888 ((_ is ElementMatch!15535) (regTwo!31583 (reg!15864 r!7292)))) b!5553519))

(assert (= (and b!5552888 ((_ is Concat!24380) (regTwo!31583 (reg!15864 r!7292)))) b!5553520))

(assert (= (and b!5552888 ((_ is Star!15535) (regTwo!31583 (reg!15864 r!7292)))) b!5553521))

(assert (= (and b!5552888 ((_ is Union!15535) (regTwo!31583 (reg!15864 r!7292)))) b!5553522))

(declare-fun e!3430027 () Bool)

(assert (=> b!5552880 (= tp!1532014 e!3430027)))

(declare-fun b!5553524 () Bool)

(declare-fun tp!1532219 () Bool)

(declare-fun tp!1532217 () Bool)

(assert (=> b!5553524 (= e!3430027 (and tp!1532219 tp!1532217))))

(declare-fun b!5553525 () Bool)

(declare-fun tp!1532216 () Bool)

(assert (=> b!5553525 (= e!3430027 tp!1532216)))

(declare-fun b!5553523 () Bool)

(assert (=> b!5553523 (= e!3430027 tp_is_empty!40323)))

(declare-fun b!5553526 () Bool)

(declare-fun tp!1532218 () Bool)

(declare-fun tp!1532220 () Bool)

(assert (=> b!5553526 (= e!3430027 (and tp!1532218 tp!1532220))))

(assert (= (and b!5552880 ((_ is ElementMatch!15535) (regOne!31583 (regOne!31583 r!7292)))) b!5553523))

(assert (= (and b!5552880 ((_ is Concat!24380) (regOne!31583 (regOne!31583 r!7292)))) b!5553524))

(assert (= (and b!5552880 ((_ is Star!15535) (regOne!31583 (regOne!31583 r!7292)))) b!5553525))

(assert (= (and b!5552880 ((_ is Union!15535) (regOne!31583 (regOne!31583 r!7292)))) b!5553526))

(declare-fun e!3430028 () Bool)

(assert (=> b!5552880 (= tp!1532016 e!3430028)))

(declare-fun b!5553528 () Bool)

(declare-fun tp!1532224 () Bool)

(declare-fun tp!1532222 () Bool)

(assert (=> b!5553528 (= e!3430028 (and tp!1532224 tp!1532222))))

(declare-fun b!5553529 () Bool)

(declare-fun tp!1532221 () Bool)

(assert (=> b!5553529 (= e!3430028 tp!1532221)))

(declare-fun b!5553527 () Bool)

(assert (=> b!5553527 (= e!3430028 tp_is_empty!40323)))

(declare-fun b!5553530 () Bool)

(declare-fun tp!1532223 () Bool)

(declare-fun tp!1532225 () Bool)

(assert (=> b!5553530 (= e!3430028 (and tp!1532223 tp!1532225))))

(assert (= (and b!5552880 ((_ is ElementMatch!15535) (regTwo!31583 (regOne!31583 r!7292)))) b!5553527))

(assert (= (and b!5552880 ((_ is Concat!24380) (regTwo!31583 (regOne!31583 r!7292)))) b!5553528))

(assert (= (and b!5552880 ((_ is Star!15535) (regTwo!31583 (regOne!31583 r!7292)))) b!5553529))

(assert (= (and b!5552880 ((_ is Union!15535) (regTwo!31583 (regOne!31583 r!7292)))) b!5553530))

(declare-fun b_lambda!210929 () Bool)

(assert (= b_lambda!210921 (or d!1757855 b_lambda!210929)))

(declare-fun bs!1286455 () Bool)

(declare-fun d!1758145 () Bool)

(assert (= bs!1286455 (and d!1758145 d!1757855)))

(assert (=> bs!1286455 (= (dynLambda!24555 lambda!297868 (h!69228 (exprs!5419 setElem!36931))) (validRegex!7271 (h!69228 (exprs!5419 setElem!36931))))))

(declare-fun m!6546512 () Bool)

(assert (=> bs!1286455 m!6546512))

(assert (=> b!5553230 d!1758145))

(declare-fun b_lambda!210931 () Bool)

(assert (= b_lambda!210927 (or d!1757863 b_lambda!210931)))

(declare-fun bs!1286456 () Bool)

(declare-fun d!1758147 () Bool)

(assert (= bs!1286456 (and d!1758147 d!1757863)))

(assert (=> bs!1286456 (= (dynLambda!24555 lambda!297875 (h!69228 (exprs!5419 (h!69229 zl!343)))) (validRegex!7271 (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(declare-fun m!6546514 () Bool)

(assert (=> bs!1286456 m!6546514))

(assert (=> b!5553399 d!1758147))

(declare-fun b_lambda!210933 () Bool)

(assert (= b_lambda!210919 (or d!1757861 b_lambda!210933)))

(declare-fun bs!1286457 () Bool)

(declare-fun d!1758149 () Bool)

(assert (= bs!1286457 (and d!1758149 d!1757861)))

(assert (=> bs!1286457 (= (dynLambda!24555 lambda!297874 (h!69228 lt!2250599)) (validRegex!7271 (h!69228 lt!2250599)))))

(declare-fun m!6546516 () Bool)

(assert (=> bs!1286457 m!6546516))

(assert (=> b!5553207 d!1758149))

(declare-fun b_lambda!210935 () Bool)

(assert (= b_lambda!210917 (or d!1757859 b_lambda!210935)))

(declare-fun bs!1286458 () Bool)

(declare-fun d!1758151 () Bool)

(assert (= bs!1286458 (and d!1758151 d!1757859)))

(assert (=> bs!1286458 (= (dynLambda!24555 lambda!297871 (h!69228 (unfocusZipperList!963 zl!343))) (validRegex!7271 (h!69228 (unfocusZipperList!963 zl!343))))))

(declare-fun m!6546518 () Bool)

(assert (=> bs!1286458 m!6546518))

(assert (=> b!5553050 d!1758151))

(declare-fun b_lambda!210937 () Bool)

(assert (= b_lambda!210915 (or d!1757853 b_lambda!210937)))

(declare-fun bs!1286459 () Bool)

(declare-fun d!1758153 () Bool)

(assert (= bs!1286459 (and d!1758153 d!1757853)))

(assert (=> bs!1286459 (= (dynLambda!24555 lambda!297865 (h!69228 (exprs!5419 (h!69229 zl!343)))) (validRegex!7271 (h!69228 (exprs!5419 (h!69229 zl!343)))))))

(assert (=> bs!1286459 m!6546514))

(assert (=> b!5552934 d!1758153))

(declare-fun b_lambda!210939 () Bool)

(assert (= b_lambda!210925 (or b!5552210 b_lambda!210939)))

(assert (=> d!1758109 d!1757881))

(check-sat (not b!5553455) (not bm!413956) (not b!5552987) (not bm!413940) (not b!5553214) (not bm!413980) (not b!5553063) (not bm!413892) (not b!5553381) (not d!1757919) (not bm!413933) (not b!5553351) (not b!5553525) (not bm!413911) (not b!5552992) (not b!5553367) (not b!5553195) (not b!5553460) (not b!5553444) (not b!5553128) (not b!5553512) (not b!5553437) (not d!1758093) (not b!5553418) (not b!5553056) (not b!5553430) (not b!5553286) (not bm!413915) (not bm!413922) (not d!1758119) (not b!5553476) (not b!5553032) (not b!5553434) (not b_lambda!210939) (not b!5553429) (not b!5553415) (not b!5552959) (not b!5553385) tp_is_empty!40323 (not d!1758043) (not b!5553105) (not b!5553285) (not d!1757953) (not b!5553097) (not b!5553496) (not b!5552940) (not b!5553091) (not b!5553424) (not b!5553315) (not d!1758113) (not b!5552989) (not b!5552988) (not b!5553458) (not d!1758081) (not b!5553085) (not b!5553517) (not b!5553501) (not d!1758109) (not b!5553530) (not b!5553202) (not b!5552968) (not d!1757903) (not d!1757929) (not b!5552994) (not b!5553382) (not b!5553426) (not b!5552928) (not bm!413919) (not d!1758103) (not b!5553208) (not bm!413941) (not d!1757987) (not b_lambda!210937) (not b!5553368) (not bm!413910) (not b!5553251) (not b!5553071) (not d!1758053) (not b!5553322) (not bm!413926) (not b!5553407) (not b!5553275) (not d!1758087) (not b!5553324) (not bm!413965) (not b!5553408) (not d!1757989) (not d!1757961) (not b!5553422) (not b!5553108) (not d!1758039) (not b!5553002) (not b!5553528) (not b!5553282) (not b!5553431) (not b!5553274) (not b!5553250) (not d!1757963) (not d!1757921) (not d!1758083) (not b!5553115) (not bm!413975) (not b!5553252) (not setNonEmpty!36940) (not b!5553118) (not bm!413962) (not b!5553078) (not bs!1286457) (not b!5553447) (not b!5553465) (not b!5553439) (not b!5553037) (not b_lambda!210931) (not bm!413955) (not bm!413913) (not b!5553356) (not b!5552949) (not b!5553350) (not b!5553451) (not d!1758125) (not d!1758131) (not bm!413943) (not bm!413930) (not b!5553064) (not b!5553526) (not d!1758005) (not b!5553463) (not b!5553454) (not b!5553255) (not b!5553411) (not bm!413924) (not b!5553443) (not bm!413918) (not b!5553114) (not b!5553456) (not b!5553109) (not b_lambda!210933) (not d!1758079) (not b!5552960) (not setNonEmpty!36941) (not b!5552996) (not b!5553413) (not d!1757985) (not b!5552980) (not b!5553522) (not b!5552979) (not b!5552953) (not bm!413934) (not b!5553404) (not d!1757967) (not b!5553420) (not bm!413898) (not b!5553506) (not b!5553116) (not bm!413945) (not b!5553459) (not d!1757943) (not d!1758003) (not bm!413927) (not b!5553083) (not b!5553389) (not b!5553003) (not d!1757951) (not b_lambda!210929) (not b!5553461) (not bs!1286458) (not bm!413895) (not bm!413896) (not b!5553364) (not b!5553231) (not b!5553467) (not b!5553405) (not b!5553412) (not b!5553401) (not b!5553077) (not b!5553521) (not b!5553383) (not d!1758037) (not bm!413891) (not b!5553425) (not b!5553111) (not bm!413961) (not bm!413942) (not b!5553469) (not d!1757965) (not bs!1286459) (not b!5553516) (not b!5553417) (not b!5553472) (not d!1758057) (not bm!413888) (not d!1757931) (not b!5553263) (not b!5553438) (not bs!1286456) (not b!5553433) (not d!1757927) (not b!5553233) (not b!5553484) (not b!5553348) (not b!5553435) (not b!5553477) (not bs!1286455) (not b!5553311) (not b!5553068) (not b_lambda!210913) (not b!5553129) (not bm!413968) (not bm!413889) (not b!5553081) (not b!5553232) (not b!5552950) (not b!5553359) (not b!5553442) (not bm!413979) (not b!5553313) (not b!5553428) (not b!5553403) (not b!5553040) (not bm!413966) (not b!5553126) (not b!5553450) (not bm!413946) (not d!1757889) (not b!5553518) (not b!5553452) (not b!5553510) (not b!5553051) (not b!5553500) (not b!5553520) (not b!5553471) (not d!1758073) (not b!5553092) (not b!5553504) (not b!5553485) (not b!5553312) (not b!5553331) (not b!5553509) (not d!1757977) (not b!5553349) (not bm!413900) (not b!5553497) (not bm!413923) (not d!1757973) (not d!1757975) (not d!1758121) (not b!5553502) (not b!5553495) (not d!1757991) (not b!5553441) (not b!5553409) (not b!5553363) (not d!1757901) (not b!5553113) (not bm!413967) (not b!5553514) (not b!5553353) (not bm!413899) (not b!5553468) (not d!1757945) (not b!5553416) (not b!5553508) (not b!5553421) (not b!5552951) (not b!5553388) (not b!5553505) (not b!5553067) (not b!5553034) (not b!5553397) (not b!5553513) (not d!1757995) (not d!1758061) (not b!5553321) (not b!5553048) (not b!5552935) (not d!1758047) (not bm!413931) (not bm!413949) (not b!5553082) (not b!5553283) (not b!5553448) (not b!5553069) (not b_lambda!210935) (not b!5553284) (not b!5553475) (not b!5553483) (not b!5553352) (not b!5553354) (not b!5553302) (not d!1757993) (not bm!413916) (not b!5553400) (not b!5553473) (not b!5553524) (not b!5552993) (not d!1757891) (not b!5553446) (not b!5553529) (not d!1757911) (not b!5553464))
(check-sat)
