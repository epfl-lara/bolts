; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!624710 () Bool)

(assert start!624710)

(declare-fun b!6285497 () Bool)

(assert (=> b!6285497 true))

(assert (=> b!6285497 true))

(declare-fun lambda!344971 () Int)

(declare-fun lambda!344970 () Int)

(assert (=> b!6285497 (not (= lambda!344971 lambda!344970))))

(assert (=> b!6285497 true))

(assert (=> b!6285497 true))

(declare-fun b!6285512 () Bool)

(assert (=> b!6285512 true))

(declare-fun bs!1571083 () Bool)

(declare-fun b!6285508 () Bool)

(assert (= bs!1571083 (and b!6285508 b!6285497)))

(declare-datatypes ((C!32684 0))(
  ( (C!32685 (val!26044 Int)) )
))
(declare-datatypes ((Regex!16207 0))(
  ( (ElementMatch!16207 (c!1140190 C!32684)) (Concat!25052 (regOne!32926 Regex!16207) (regTwo!32926 Regex!16207)) (EmptyExpr!16207) (Star!16207 (reg!16536 Regex!16207)) (EmptyLang!16207) (Union!16207 (regOne!32927 Regex!16207) (regTwo!32927 Regex!16207)) )
))
(declare-fun r!7292 () Regex!16207)

(declare-fun lt!2355648 () Regex!16207)

(declare-fun lambda!344973 () Int)

(assert (=> bs!1571083 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!344973 lambda!344970))))

(assert (=> bs!1571083 (not (= lambda!344973 lambda!344971))))

(assert (=> b!6285508 true))

(assert (=> b!6285508 true))

(assert (=> b!6285508 true))

(declare-fun lambda!344974 () Int)

(assert (=> bs!1571083 (not (= lambda!344974 lambda!344970))))

(assert (=> bs!1571083 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!344974 lambda!344971))))

(assert (=> b!6285508 (not (= lambda!344974 lambda!344973))))

(assert (=> b!6285508 true))

(assert (=> b!6285508 true))

(assert (=> b!6285508 true))

(declare-fun lt!2355654 () Regex!16207)

(declare-fun lambda!344975 () Int)

(assert (=> bs!1571083 (= (and (= (regTwo!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355654 (regTwo!32926 r!7292))) (= lambda!344975 lambda!344970))))

(assert (=> bs!1571083 (not (= lambda!344975 lambda!344971))))

(assert (=> b!6285508 (= (and (= (regTwo!32926 (regOne!32926 r!7292)) (regOne!32926 (regOne!32926 r!7292))) (= lt!2355654 lt!2355648)) (= lambda!344975 lambda!344973))))

(assert (=> b!6285508 (not (= lambda!344975 lambda!344974))))

(assert (=> b!6285508 true))

(assert (=> b!6285508 true))

(assert (=> b!6285508 true))

(declare-fun b!6285484 () Bool)

(declare-fun res!2592214 () Bool)

(declare-fun e!3822223 () Bool)

(assert (=> b!6285484 (=> res!2592214 e!3822223)))

(declare-datatypes ((List!64920 0))(
  ( (Nil!64796) (Cons!64796 (h!71244 Regex!16207) (t!378482 List!64920)) )
))
(declare-datatypes ((Context!11182 0))(
  ( (Context!11183 (exprs!6091 List!64920)) )
))
(declare-datatypes ((List!64921 0))(
  ( (Nil!64797) (Cons!64797 (h!71245 Context!11182) (t!378483 List!64921)) )
))
(declare-fun zl!343 () List!64921)

(declare-fun generalisedUnion!2051 (List!64920) Regex!16207)

(declare-fun unfocusZipperList!1628 (List!64921) List!64920)

(assert (=> b!6285484 (= res!2592214 (not (= r!7292 (generalisedUnion!2051 (unfocusZipperList!1628 zl!343)))))))

(declare-fun b!6285485 () Bool)

(declare-datatypes ((Unit!158159 0))(
  ( (Unit!158160) )
))
(declare-fun e!3822217 () Unit!158159)

(declare-fun Unit!158161 () Unit!158159)

(assert (=> b!6285485 (= e!3822217 Unit!158161)))

(declare-fun b!6285486 () Bool)

(declare-fun e!3822219 () Bool)

(declare-fun tp!1751147 () Bool)

(assert (=> b!6285486 (= e!3822219 tp!1751147)))

(declare-fun b!6285487 () Bool)

(declare-fun res!2592221 () Bool)

(declare-fun e!3822233 () Bool)

(assert (=> b!6285487 (=> (not res!2592221) (not e!3822233))))

(declare-fun unfocusZipper!1949 (List!64921) Regex!16207)

(assert (=> b!6285487 (= res!2592221 (= r!7292 (unfocusZipper!1949 zl!343)))))

(declare-fun b!6285488 () Bool)

(declare-fun e!3822230 () Bool)

(declare-fun e!3822218 () Bool)

(assert (=> b!6285488 (= e!3822230 e!3822218)))

(declare-fun res!2592218 () Bool)

(assert (=> b!6285488 (=> res!2592218 e!3822218)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2355652 () (InoxSet Context!11182))

(declare-fun lt!2355684 () (InoxSet Context!11182))

(assert (=> b!6285488 (= res!2592218 (not (= lt!2355652 lt!2355684)))))

(declare-fun lt!2355664 () (InoxSet Context!11182))

(declare-fun lt!2355676 () (InoxSet Context!11182))

(assert (=> b!6285488 (= lt!2355684 ((_ map or) lt!2355664 lt!2355676))))

(declare-fun lt!2355646 () Context!11182)

(declare-datatypes ((List!64922 0))(
  ( (Nil!64798) (Cons!64798 (h!71246 C!32684) (t!378484 List!64922)) )
))
(declare-fun s!2326 () List!64922)

(declare-fun derivationStepZipperUp!1381 (Context!11182 C!32684) (InoxSet Context!11182))

(assert (=> b!6285488 (= lt!2355676 (derivationStepZipperUp!1381 lt!2355646 (h!71246 s!2326)))))

(declare-fun lambda!344972 () Int)

(declare-fun lt!2355647 () (InoxSet Context!11182))

(declare-fun lt!2355658 () Context!11182)

(declare-fun flatMap!1712 ((InoxSet Context!11182) Int) (InoxSet Context!11182))

(assert (=> b!6285488 (= (flatMap!1712 lt!2355647 lambda!344972) (derivationStepZipperUp!1381 lt!2355658 (h!71246 s!2326)))))

(declare-fun lt!2355669 () Unit!158159)

(declare-fun lemmaFlatMapOnSingletonSet!1238 ((InoxSet Context!11182) Context!11182 Int) Unit!158159)

(assert (=> b!6285488 (= lt!2355669 (lemmaFlatMapOnSingletonSet!1238 lt!2355647 lt!2355658 lambda!344972))))

(declare-fun lt!2355661 () (InoxSet Context!11182))

(assert (=> b!6285488 (= lt!2355661 (derivationStepZipperUp!1381 lt!2355658 (h!71246 s!2326)))))

(declare-fun derivationStepZipper!2173 ((InoxSet Context!11182) C!32684) (InoxSet Context!11182))

(assert (=> b!6285488 (= lt!2355652 (derivationStepZipper!2173 lt!2355647 (h!71246 s!2326)))))

(declare-fun lt!2355655 () (InoxSet Context!11182))

(assert (=> b!6285488 (= lt!2355655 (store ((as const (Array Context!11182 Bool)) false) lt!2355646 true))))

(assert (=> b!6285488 (= lt!2355647 (store ((as const (Array Context!11182 Bool)) false) lt!2355658 true))))

(declare-fun lt!2355656 () List!64920)

(assert (=> b!6285488 (= lt!2355658 (Context!11183 lt!2355656))))

(declare-fun lt!2355666 () List!64920)

(assert (=> b!6285488 (= lt!2355656 (Cons!64796 (regOne!32926 (regOne!32926 r!7292)) lt!2355666))))

(declare-fun b!6285489 () Bool)

(declare-fun e!3822231 () Bool)

(declare-fun tp!1751153 () Bool)

(assert (=> b!6285489 (= e!3822231 tp!1751153)))

(declare-fun b!6285490 () Bool)

(declare-fun res!2592202 () Bool)

(declare-fun e!3822216 () Bool)

(assert (=> b!6285490 (=> res!2592202 e!3822216)))

(declare-fun isEmpty!36845 (List!64920) Bool)

(assert (=> b!6285490 (= res!2592202 (isEmpty!36845 (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6285491 () Bool)

(declare-fun res!2592201 () Bool)

(declare-fun e!3822234 () Bool)

(assert (=> b!6285491 (=> res!2592201 e!3822234)))

(assert (=> b!6285491 (= res!2592201 (not (= (exprs!6091 (h!71245 zl!343)) (Cons!64796 (Concat!25052 (regOne!32926 (regOne!32926 r!7292)) (regTwo!32926 (regOne!32926 r!7292))) (t!378482 (exprs!6091 (h!71245 zl!343)))))))))

(declare-fun setIsEmpty!42776 () Bool)

(declare-fun setRes!42776 () Bool)

(assert (=> setIsEmpty!42776 setRes!42776))

(declare-fun b!6285492 () Bool)

(declare-fun Unit!158162 () Unit!158159)

(assert (=> b!6285492 (= e!3822217 Unit!158162)))

(declare-fun lt!2355686 () (InoxSet Context!11182))

(declare-fun lt!2355680 () Unit!158159)

(declare-fun lt!2355651 () (InoxSet Context!11182))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1038 ((InoxSet Context!11182) (InoxSet Context!11182) List!64922) Unit!158159)

(assert (=> b!6285492 (= lt!2355680 (lemmaZipperConcatMatchesSameAsBothZippers!1038 lt!2355651 lt!2355686 (t!378484 s!2326)))))

(declare-fun res!2592210 () Bool)

(declare-fun matchZipper!2219 ((InoxSet Context!11182) List!64922) Bool)

(assert (=> b!6285492 (= res!2592210 (matchZipper!2219 lt!2355651 (t!378484 s!2326)))))

(declare-fun e!3822215 () Bool)

(assert (=> b!6285492 (=> res!2592210 e!3822215)))

(assert (=> b!6285492 (= (matchZipper!2219 ((_ map or) lt!2355651 lt!2355686) (t!378484 s!2326)) e!3822215)))

(declare-fun b!6285493 () Bool)

(declare-fun e!3822227 () Bool)

(assert (=> b!6285493 (= e!3822234 e!3822227)))

(declare-fun res!2592204 () Bool)

(assert (=> b!6285493 (=> res!2592204 e!3822227)))

(declare-fun lt!2355667 () List!64921)

(declare-fun zipperDepthTotal!360 (List!64921) Int)

(assert (=> b!6285493 (= res!2592204 (>= (zipperDepthTotal!360 lt!2355667) (zipperDepthTotal!360 zl!343)))))

(assert (=> b!6285493 (= lt!2355667 (Cons!64797 lt!2355658 Nil!64797))))

(declare-fun b!6285494 () Bool)

(declare-fun res!2592220 () Bool)

(assert (=> b!6285494 (=> res!2592220 e!3822227)))

(declare-fun zipperDepth!332 (List!64921) Int)

(assert (=> b!6285494 (= res!2592220 (> (zipperDepth!332 lt!2355667) (zipperDepth!332 zl!343)))))

(declare-fun b!6285496 () Bool)

(declare-fun tp!1751154 () Bool)

(declare-fun tp!1751146 () Bool)

(assert (=> b!6285496 (= e!3822219 (and tp!1751154 tp!1751146))))

(assert (=> b!6285497 (= e!3822223 e!3822216)))

(declare-fun res!2592217 () Bool)

(assert (=> b!6285497 (=> res!2592217 e!3822216)))

(declare-fun lt!2355649 () Bool)

(declare-fun lt!2355660 () Bool)

(get-info :version)

(assert (=> b!6285497 (= res!2592217 (or (not (= lt!2355660 lt!2355649)) ((_ is Nil!64798) s!2326)))))

(declare-fun Exists!3277 (Int) Bool)

(assert (=> b!6285497 (= (Exists!3277 lambda!344970) (Exists!3277 lambda!344971))))

(declare-fun lt!2355670 () Unit!158159)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1814 (Regex!16207 Regex!16207 List!64922) Unit!158159)

(assert (=> b!6285497 (= lt!2355670 (lemmaExistCutMatchRandMatchRSpecEquivalent!1814 (regOne!32926 r!7292) (regTwo!32926 r!7292) s!2326))))

(assert (=> b!6285497 (= lt!2355649 (Exists!3277 lambda!344970))))

(declare-datatypes ((tuple2!66372 0))(
  ( (tuple2!66373 (_1!36489 List!64922) (_2!36489 List!64922)) )
))
(declare-datatypes ((Option!16098 0))(
  ( (None!16097) (Some!16097 (v!52252 tuple2!66372)) )
))
(declare-fun isDefined!12801 (Option!16098) Bool)

(declare-fun findConcatSeparation!2512 (Regex!16207 Regex!16207 List!64922 List!64922 List!64922) Option!16098)

(assert (=> b!6285497 (= lt!2355649 (isDefined!12801 (findConcatSeparation!2512 (regOne!32926 r!7292) (regTwo!32926 r!7292) Nil!64798 s!2326 s!2326)))))

(declare-fun lt!2355677 () Unit!158159)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2276 (Regex!16207 Regex!16207 List!64922) Unit!158159)

(assert (=> b!6285497 (= lt!2355677 (lemmaFindConcatSeparationEquivalentToExists!2276 (regOne!32926 r!7292) (regTwo!32926 r!7292) s!2326))))

(declare-fun b!6285498 () Bool)

(declare-fun res!2592207 () Bool)

(assert (=> b!6285498 (=> res!2592207 e!3822223)))

(declare-fun generalisedConcat!1804 (List!64920) Regex!16207)

(assert (=> b!6285498 (= res!2592207 (not (= r!7292 (generalisedConcat!1804 (exprs!6091 (h!71245 zl!343))))))))

(declare-fun b!6285499 () Bool)

(declare-fun tp!1751151 () Bool)

(declare-fun tp!1751148 () Bool)

(assert (=> b!6285499 (= e!3822219 (and tp!1751151 tp!1751148))))

(declare-fun b!6285500 () Bool)

(declare-fun e!3822228 () Bool)

(declare-fun e!3822226 () Bool)

(assert (=> b!6285500 (= e!3822228 e!3822226)))

(declare-fun res!2592212 () Bool)

(assert (=> b!6285500 (=> res!2592212 e!3822226)))

(declare-fun lt!2355673 () (InoxSet Context!11182))

(assert (=> b!6285500 (= res!2592212 (not (= lt!2355651 lt!2355673)))))

(declare-fun lt!2355650 () (InoxSet Context!11182))

(assert (=> b!6285500 (= lt!2355673 ((_ map or) lt!2355664 lt!2355650))))

(declare-fun lt!2355678 () Context!11182)

(declare-fun derivationStepZipperDown!1455 (Regex!16207 Context!11182 C!32684) (InoxSet Context!11182))

(assert (=> b!6285500 (= lt!2355650 (derivationStepZipperDown!1455 (regTwo!32926 (regOne!32926 r!7292)) lt!2355678 (h!71246 s!2326)))))

(assert (=> b!6285500 (= lt!2355664 (derivationStepZipperDown!1455 (regOne!32926 (regOne!32926 r!7292)) lt!2355646 (h!71246 s!2326)))))

(assert (=> b!6285500 (= lt!2355646 (Context!11183 lt!2355666))))

(assert (=> b!6285500 (= lt!2355666 (Cons!64796 (regTwo!32926 (regOne!32926 r!7292)) (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6285501 () Bool)

(declare-fun e!3822220 () Bool)

(declare-fun tp!1751150 () Bool)

(assert (=> b!6285501 (= e!3822220 tp!1751150)))

(declare-fun b!6285502 () Bool)

(declare-fun res!2592209 () Bool)

(assert (=> b!6285502 (=> res!2592209 e!3822223)))

(assert (=> b!6285502 (= res!2592209 (or ((_ is EmptyExpr!16207) r!7292) ((_ is EmptyLang!16207) r!7292) ((_ is ElementMatch!16207) r!7292) ((_ is Union!16207) r!7292) (not ((_ is Concat!25052) r!7292))))))

(declare-fun b!6285503 () Bool)

(declare-fun res!2592213 () Bool)

(assert (=> b!6285503 (=> res!2592213 e!3822223)))

(declare-fun isEmpty!36846 (List!64921) Bool)

(assert (=> b!6285503 (= res!2592213 (not (isEmpty!36846 (t!378483 zl!343))))))

(declare-fun b!6285504 () Bool)

(declare-fun res!2592222 () Bool)

(assert (=> b!6285504 (=> res!2592222 e!3822228)))

(declare-fun nullable!6200 (Regex!16207) Bool)

(assert (=> b!6285504 (= res!2592222 (not (nullable!6200 (regOne!32926 (regOne!32926 r!7292)))))))

(declare-fun b!6285505 () Bool)

(assert (=> b!6285505 (= e!3822218 e!3822234)))

(declare-fun res!2592215 () Bool)

(assert (=> b!6285505 (=> res!2592215 e!3822234)))

(declare-fun e!3822232 () Bool)

(assert (=> b!6285505 (= res!2592215 e!3822232)))

(declare-fun res!2592211 () Bool)

(assert (=> b!6285505 (=> (not res!2592211) (not e!3822232))))

(declare-fun lt!2355685 () Bool)

(assert (=> b!6285505 (= res!2592211 (not (= lt!2355685 (matchZipper!2219 lt!2355652 (t!378484 s!2326)))))))

(declare-fun e!3822222 () Bool)

(assert (=> b!6285505 (= (matchZipper!2219 lt!2355684 (t!378484 s!2326)) e!3822222)))

(declare-fun res!2592199 () Bool)

(assert (=> b!6285505 (=> res!2592199 e!3822222)))

(declare-fun lt!2355675 () Bool)

(assert (=> b!6285505 (= res!2592199 lt!2355675)))

(declare-fun lt!2355665 () Unit!158159)

(assert (=> b!6285505 (= lt!2355665 (lemmaZipperConcatMatchesSameAsBothZippers!1038 lt!2355664 lt!2355676 (t!378484 s!2326)))))

(assert (=> b!6285505 (= (flatMap!1712 lt!2355655 lambda!344972) (derivationStepZipperUp!1381 lt!2355646 (h!71246 s!2326)))))

(declare-fun lt!2355659 () Unit!158159)

(assert (=> b!6285505 (= lt!2355659 (lemmaFlatMapOnSingletonSet!1238 lt!2355655 lt!2355646 lambda!344972))))

(declare-fun b!6285506 () Bool)

(assert (=> b!6285506 (= e!3822226 e!3822230)))

(declare-fun res!2592208 () Bool)

(assert (=> b!6285506 (=> res!2592208 e!3822230)))

(declare-fun e!3822225 () Bool)

(assert (=> b!6285506 (= res!2592208 e!3822225)))

(declare-fun res!2592216 () Bool)

(assert (=> b!6285506 (=> (not res!2592216) (not e!3822225))))

(assert (=> b!6285506 (= res!2592216 (not (= lt!2355685 lt!2355675)))))

(assert (=> b!6285506 (= lt!2355685 (matchZipper!2219 lt!2355651 (t!378484 s!2326)))))

(declare-fun e!3822229 () Bool)

(assert (=> b!6285506 (= (matchZipper!2219 lt!2355673 (t!378484 s!2326)) e!3822229)))

(declare-fun res!2592219 () Bool)

(assert (=> b!6285506 (=> res!2592219 e!3822229)))

(assert (=> b!6285506 (= res!2592219 lt!2355675)))

(assert (=> b!6285506 (= lt!2355675 (matchZipper!2219 lt!2355664 (t!378484 s!2326)))))

(declare-fun lt!2355682 () Unit!158159)

(assert (=> b!6285506 (= lt!2355682 (lemmaZipperConcatMatchesSameAsBothZippers!1038 lt!2355664 lt!2355650 (t!378484 s!2326)))))

(declare-fun b!6285507 () Bool)

(declare-fun res!2592203 () Bool)

(assert (=> b!6285507 (=> (not res!2592203) (not e!3822233))))

(declare-fun z!1189 () (InoxSet Context!11182))

(declare-fun toList!9991 ((InoxSet Context!11182)) List!64921)

(assert (=> b!6285507 (= res!2592203 (= (toList!9991 z!1189) zl!343))))

(declare-fun setElem!42776 () Context!11182)

(declare-fun tp!1751152 () Bool)

(declare-fun setNonEmpty!42776 () Bool)

(declare-fun inv!83764 (Context!11182) Bool)

(assert (=> setNonEmpty!42776 (= setRes!42776 (and tp!1751152 (inv!83764 setElem!42776) e!3822231))))

(declare-fun setRest!42776 () (InoxSet Context!11182))

(assert (=> setNonEmpty!42776 (= z!1189 ((_ map or) (store ((as const (Array Context!11182 Bool)) false) setElem!42776 true) setRest!42776))))

(declare-fun validRegex!7943 (Regex!16207) Bool)

(assert (=> b!6285508 (= e!3822227 (validRegex!7943 (regTwo!32926 (regOne!32926 r!7292))))))

(assert (=> b!6285508 (= (isDefined!12801 (findConcatSeparation!2512 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 Nil!64798 s!2326 s!2326)) (Exists!3277 lambda!344975))))

(declare-fun lt!2355663 () Unit!158159)

(assert (=> b!6285508 (= lt!2355663 (lemmaFindConcatSeparationEquivalentToExists!2276 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 s!2326))))

(assert (=> b!6285508 (= lt!2355654 (generalisedConcat!1804 (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun lt!2355668 () Bool)

(declare-fun matchRSpec!3308 (Regex!16207 List!64922) Bool)

(assert (=> b!6285508 (= lt!2355668 (matchRSpec!3308 lt!2355648 s!2326))))

(declare-fun lt!2355672 () Unit!158159)

(declare-fun mainMatchTheorem!3308 (Regex!16207 List!64922) Unit!158159)

(assert (=> b!6285508 (= lt!2355672 (mainMatchTheorem!3308 lt!2355648 s!2326))))

(assert (=> b!6285508 (= (Exists!3277 lambda!344973) (Exists!3277 lambda!344974))))

(declare-fun lt!2355653 () Unit!158159)

(assert (=> b!6285508 (= lt!2355653 (lemmaExistCutMatchRandMatchRSpecEquivalent!1814 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 s!2326))))

(assert (=> b!6285508 (= (isDefined!12801 (findConcatSeparation!2512 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 Nil!64798 s!2326 s!2326)) (Exists!3277 lambda!344973))))

(declare-fun lt!2355644 () Unit!158159)

(assert (=> b!6285508 (= lt!2355644 (lemmaFindConcatSeparationEquivalentToExists!2276 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 s!2326))))

(declare-fun lt!2355645 () Bool)

(declare-fun lt!2355643 () Regex!16207)

(assert (=> b!6285508 (= lt!2355645 (matchRSpec!3308 lt!2355643 s!2326))))

(declare-fun lt!2355671 () Unit!158159)

(assert (=> b!6285508 (= lt!2355671 (mainMatchTheorem!3308 lt!2355643 s!2326))))

(assert (=> b!6285508 (= lt!2355668 (matchZipper!2219 lt!2355655 s!2326))))

(declare-fun matchR!8390 (Regex!16207 List!64922) Bool)

(assert (=> b!6285508 (= lt!2355668 (matchR!8390 lt!2355648 s!2326))))

(declare-fun lt!2355681 () Unit!158159)

(declare-fun theoremZipperRegexEquiv!777 ((InoxSet Context!11182) List!64921 Regex!16207 List!64922) Unit!158159)

(assert (=> b!6285508 (= lt!2355681 (theoremZipperRegexEquiv!777 lt!2355655 (Cons!64797 lt!2355646 Nil!64797) lt!2355648 s!2326))))

(assert (=> b!6285508 (= lt!2355648 (generalisedConcat!1804 lt!2355666))))

(assert (=> b!6285508 (= lt!2355645 (matchZipper!2219 lt!2355647 s!2326))))

(assert (=> b!6285508 (= lt!2355645 (matchR!8390 lt!2355643 s!2326))))

(declare-fun lt!2355662 () Unit!158159)

(assert (=> b!6285508 (= lt!2355662 (theoremZipperRegexEquiv!777 lt!2355647 lt!2355667 lt!2355643 s!2326))))

(assert (=> b!6285508 (= lt!2355643 (generalisedConcat!1804 lt!2355656))))

(declare-fun b!6285509 () Bool)

(assert (=> b!6285509 (= e!3822229 (matchZipper!2219 lt!2355650 (t!378484 s!2326)))))

(declare-fun b!6285510 () Bool)

(declare-fun e!3822224 () Bool)

(declare-fun tp_is_empty!41667 () Bool)

(declare-fun tp!1751149 () Bool)

(assert (=> b!6285510 (= e!3822224 (and tp_is_empty!41667 tp!1751149))))

(declare-fun b!6285511 () Bool)

(assert (=> b!6285511 (= e!3822233 (not e!3822223))))

(declare-fun res!2592197 () Bool)

(assert (=> b!6285511 (=> res!2592197 e!3822223)))

(assert (=> b!6285511 (= res!2592197 (not ((_ is Cons!64797) zl!343)))))

(assert (=> b!6285511 (= lt!2355660 (matchRSpec!3308 r!7292 s!2326))))

(assert (=> b!6285511 (= lt!2355660 (matchR!8390 r!7292 s!2326))))

(declare-fun lt!2355683 () Unit!158159)

(assert (=> b!6285511 (= lt!2355683 (mainMatchTheorem!3308 r!7292 s!2326))))

(assert (=> b!6285512 (= e!3822216 e!3822228)))

(declare-fun res!2592198 () Bool)

(assert (=> b!6285512 (=> res!2592198 e!3822228)))

(assert (=> b!6285512 (= res!2592198 (or (and ((_ is ElementMatch!16207) (regOne!32926 r!7292)) (= (c!1140190 (regOne!32926 r!7292)) (h!71246 s!2326))) ((_ is Union!16207) (regOne!32926 r!7292)) (not ((_ is Concat!25052) (regOne!32926 r!7292)))))))

(declare-fun lt!2355679 () Unit!158159)

(assert (=> b!6285512 (= lt!2355679 e!3822217)))

(declare-fun c!1140189 () Bool)

(assert (=> b!6285512 (= c!1140189 (nullable!6200 (h!71244 (exprs!6091 (h!71245 zl!343)))))))

(assert (=> b!6285512 (= (flatMap!1712 z!1189 lambda!344972) (derivationStepZipperUp!1381 (h!71245 zl!343) (h!71246 s!2326)))))

(declare-fun lt!2355674 () Unit!158159)

(assert (=> b!6285512 (= lt!2355674 (lemmaFlatMapOnSingletonSet!1238 z!1189 (h!71245 zl!343) lambda!344972))))

(assert (=> b!6285512 (= lt!2355686 (derivationStepZipperUp!1381 lt!2355678 (h!71246 s!2326)))))

(assert (=> b!6285512 (= lt!2355651 (derivationStepZipperDown!1455 (h!71244 (exprs!6091 (h!71245 zl!343))) lt!2355678 (h!71246 s!2326)))))

(assert (=> b!6285512 (= lt!2355678 (Context!11183 (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun lt!2355657 () (InoxSet Context!11182))

(assert (=> b!6285512 (= lt!2355657 (derivationStepZipperUp!1381 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343))))) (h!71246 s!2326)))))

(declare-fun b!6285495 () Bool)

(assert (=> b!6285495 (= e!3822219 tp_is_empty!41667)))

(declare-fun res!2592200 () Bool)

(assert (=> start!624710 (=> (not res!2592200) (not e!3822233))))

(assert (=> start!624710 (= res!2592200 (validRegex!7943 r!7292))))

(assert (=> start!624710 e!3822233))

(assert (=> start!624710 e!3822219))

(declare-fun condSetEmpty!42776 () Bool)

(assert (=> start!624710 (= condSetEmpty!42776 (= z!1189 ((as const (Array Context!11182 Bool)) false)))))

(assert (=> start!624710 setRes!42776))

(declare-fun e!3822221 () Bool)

(assert (=> start!624710 e!3822221))

(assert (=> start!624710 e!3822224))

(declare-fun b!6285513 () Bool)

(declare-fun res!2592206 () Bool)

(assert (=> b!6285513 (=> res!2592206 e!3822234)))

(declare-fun contextDepthTotal!330 (Context!11182) Int)

(assert (=> b!6285513 (= res!2592206 (>= (contextDepthTotal!330 lt!2355658) (contextDepthTotal!330 (h!71245 zl!343))))))

(declare-fun tp!1751145 () Bool)

(declare-fun b!6285514 () Bool)

(assert (=> b!6285514 (= e!3822221 (and (inv!83764 (h!71245 zl!343)) e!3822220 tp!1751145))))

(declare-fun b!6285515 () Bool)

(assert (=> b!6285515 (= e!3822215 (matchZipper!2219 lt!2355686 (t!378484 s!2326)))))

(declare-fun b!6285516 () Bool)

(assert (=> b!6285516 (= e!3822222 (matchZipper!2219 lt!2355676 (t!378484 s!2326)))))

(declare-fun b!6285517 () Bool)

(assert (=> b!6285517 (= e!3822232 (not (matchZipper!2219 (derivationStepZipper!2173 lt!2355655 (h!71246 s!2326)) (t!378484 s!2326))))))

(declare-fun b!6285518 () Bool)

(declare-fun res!2592205 () Bool)

(assert (=> b!6285518 (=> res!2592205 e!3822223)))

(assert (=> b!6285518 (= res!2592205 (not ((_ is Cons!64796) (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6285519 () Bool)

(assert (=> b!6285519 (= e!3822225 (not (matchZipper!2219 lt!2355650 (t!378484 s!2326))))))

(assert (= (and start!624710 res!2592200) b!6285507))

(assert (= (and b!6285507 res!2592203) b!6285487))

(assert (= (and b!6285487 res!2592221) b!6285511))

(assert (= (and b!6285511 (not res!2592197)) b!6285503))

(assert (= (and b!6285503 (not res!2592213)) b!6285498))

(assert (= (and b!6285498 (not res!2592207)) b!6285518))

(assert (= (and b!6285518 (not res!2592205)) b!6285484))

(assert (= (and b!6285484 (not res!2592214)) b!6285502))

(assert (= (and b!6285502 (not res!2592209)) b!6285497))

(assert (= (and b!6285497 (not res!2592217)) b!6285490))

(assert (= (and b!6285490 (not res!2592202)) b!6285512))

(assert (= (and b!6285512 c!1140189) b!6285492))

(assert (= (and b!6285512 (not c!1140189)) b!6285485))

(assert (= (and b!6285492 (not res!2592210)) b!6285515))

(assert (= (and b!6285512 (not res!2592198)) b!6285504))

(assert (= (and b!6285504 (not res!2592222)) b!6285500))

(assert (= (and b!6285500 (not res!2592212)) b!6285506))

(assert (= (and b!6285506 (not res!2592219)) b!6285509))

(assert (= (and b!6285506 res!2592216) b!6285519))

(assert (= (and b!6285506 (not res!2592208)) b!6285488))

(assert (= (and b!6285488 (not res!2592218)) b!6285505))

(assert (= (and b!6285505 (not res!2592199)) b!6285516))

(assert (= (and b!6285505 res!2592211) b!6285517))

(assert (= (and b!6285505 (not res!2592215)) b!6285491))

(assert (= (and b!6285491 (not res!2592201)) b!6285513))

(assert (= (and b!6285513 (not res!2592206)) b!6285493))

(assert (= (and b!6285493 (not res!2592204)) b!6285494))

(assert (= (and b!6285494 (not res!2592220)) b!6285508))

(assert (= (and start!624710 ((_ is ElementMatch!16207) r!7292)) b!6285495))

(assert (= (and start!624710 ((_ is Concat!25052) r!7292)) b!6285496))

(assert (= (and start!624710 ((_ is Star!16207) r!7292)) b!6285486))

(assert (= (and start!624710 ((_ is Union!16207) r!7292)) b!6285499))

(assert (= (and start!624710 condSetEmpty!42776) setIsEmpty!42776))

(assert (= (and start!624710 (not condSetEmpty!42776)) setNonEmpty!42776))

(assert (= setNonEmpty!42776 b!6285489))

(assert (= b!6285514 b!6285501))

(assert (= (and start!624710 ((_ is Cons!64797) zl!343)) b!6285514))

(assert (= (and start!624710 ((_ is Cons!64798) s!2326)) b!6285510))

(declare-fun m!7106260 () Bool)

(assert (=> b!6285507 m!7106260))

(declare-fun m!7106262 () Bool)

(assert (=> b!6285488 m!7106262))

(declare-fun m!7106264 () Bool)

(assert (=> b!6285488 m!7106264))

(declare-fun m!7106266 () Bool)

(assert (=> b!6285488 m!7106266))

(declare-fun m!7106268 () Bool)

(assert (=> b!6285488 m!7106268))

(declare-fun m!7106270 () Bool)

(assert (=> b!6285488 m!7106270))

(declare-fun m!7106272 () Bool)

(assert (=> b!6285488 m!7106272))

(declare-fun m!7106274 () Bool)

(assert (=> b!6285488 m!7106274))

(declare-fun m!7106276 () Bool)

(assert (=> b!6285490 m!7106276))

(declare-fun m!7106278 () Bool)

(assert (=> b!6285503 m!7106278))

(declare-fun m!7106280 () Bool)

(assert (=> b!6285493 m!7106280))

(declare-fun m!7106282 () Bool)

(assert (=> b!6285493 m!7106282))

(declare-fun m!7106284 () Bool)

(assert (=> b!6285506 m!7106284))

(declare-fun m!7106286 () Bool)

(assert (=> b!6285506 m!7106286))

(declare-fun m!7106288 () Bool)

(assert (=> b!6285506 m!7106288))

(declare-fun m!7106290 () Bool)

(assert (=> b!6285506 m!7106290))

(declare-fun m!7106292 () Bool)

(assert (=> b!6285514 m!7106292))

(declare-fun m!7106294 () Bool)

(assert (=> b!6285487 m!7106294))

(declare-fun m!7106296 () Bool)

(assert (=> b!6285498 m!7106296))

(declare-fun m!7106298 () Bool)

(assert (=> start!624710 m!7106298))

(declare-fun m!7106300 () Bool)

(assert (=> b!6285497 m!7106300))

(declare-fun m!7106302 () Bool)

(assert (=> b!6285497 m!7106302))

(declare-fun m!7106304 () Bool)

(assert (=> b!6285497 m!7106304))

(declare-fun m!7106306 () Bool)

(assert (=> b!6285497 m!7106306))

(assert (=> b!6285497 m!7106300))

(declare-fun m!7106308 () Bool)

(assert (=> b!6285497 m!7106308))

(assert (=> b!6285497 m!7106304))

(declare-fun m!7106310 () Bool)

(assert (=> b!6285497 m!7106310))

(declare-fun m!7106312 () Bool)

(assert (=> b!6285508 m!7106312))

(declare-fun m!7106314 () Bool)

(assert (=> b!6285508 m!7106314))

(declare-fun m!7106316 () Bool)

(assert (=> b!6285508 m!7106316))

(declare-fun m!7106318 () Bool)

(assert (=> b!6285508 m!7106318))

(declare-fun m!7106320 () Bool)

(assert (=> b!6285508 m!7106320))

(assert (=> b!6285508 m!7106320))

(declare-fun m!7106322 () Bool)

(assert (=> b!6285508 m!7106322))

(declare-fun m!7106324 () Bool)

(assert (=> b!6285508 m!7106324))

(declare-fun m!7106326 () Bool)

(assert (=> b!6285508 m!7106326))

(declare-fun m!7106328 () Bool)

(assert (=> b!6285508 m!7106328))

(declare-fun m!7106330 () Bool)

(assert (=> b!6285508 m!7106330))

(declare-fun m!7106332 () Bool)

(assert (=> b!6285508 m!7106332))

(declare-fun m!7106334 () Bool)

(assert (=> b!6285508 m!7106334))

(declare-fun m!7106336 () Bool)

(assert (=> b!6285508 m!7106336))

(declare-fun m!7106338 () Bool)

(assert (=> b!6285508 m!7106338))

(declare-fun m!7106340 () Bool)

(assert (=> b!6285508 m!7106340))

(declare-fun m!7106342 () Bool)

(assert (=> b!6285508 m!7106342))

(declare-fun m!7106344 () Bool)

(assert (=> b!6285508 m!7106344))

(declare-fun m!7106346 () Bool)

(assert (=> b!6285508 m!7106346))

(declare-fun m!7106348 () Bool)

(assert (=> b!6285508 m!7106348))

(declare-fun m!7106350 () Bool)

(assert (=> b!6285508 m!7106350))

(declare-fun m!7106352 () Bool)

(assert (=> b!6285508 m!7106352))

(declare-fun m!7106354 () Bool)

(assert (=> b!6285508 m!7106354))

(assert (=> b!6285508 m!7106326))

(assert (=> b!6285508 m!7106346))

(declare-fun m!7106356 () Bool)

(assert (=> b!6285508 m!7106356))

(declare-fun m!7106358 () Bool)

(assert (=> b!6285508 m!7106358))

(declare-fun m!7106360 () Bool)

(assert (=> setNonEmpty!42776 m!7106360))

(declare-fun m!7106362 () Bool)

(assert (=> b!6285513 m!7106362))

(declare-fun m!7106364 () Bool)

(assert (=> b!6285513 m!7106364))

(declare-fun m!7106366 () Bool)

(assert (=> b!6285515 m!7106366))

(declare-fun m!7106368 () Bool)

(assert (=> b!6285517 m!7106368))

(assert (=> b!6285517 m!7106368))

(declare-fun m!7106370 () Bool)

(assert (=> b!6285517 m!7106370))

(declare-fun m!7106372 () Bool)

(assert (=> b!6285494 m!7106372))

(declare-fun m!7106374 () Bool)

(assert (=> b!6285494 m!7106374))

(declare-fun m!7106376 () Bool)

(assert (=> b!6285511 m!7106376))

(declare-fun m!7106378 () Bool)

(assert (=> b!6285511 m!7106378))

(declare-fun m!7106380 () Bool)

(assert (=> b!6285511 m!7106380))

(declare-fun m!7106382 () Bool)

(assert (=> b!6285484 m!7106382))

(assert (=> b!6285484 m!7106382))

(declare-fun m!7106384 () Bool)

(assert (=> b!6285484 m!7106384))

(declare-fun m!7106386 () Bool)

(assert (=> b!6285516 m!7106386))

(declare-fun m!7106388 () Bool)

(assert (=> b!6285512 m!7106388))

(declare-fun m!7106390 () Bool)

(assert (=> b!6285512 m!7106390))

(declare-fun m!7106392 () Bool)

(assert (=> b!6285512 m!7106392))

(declare-fun m!7106394 () Bool)

(assert (=> b!6285512 m!7106394))

(declare-fun m!7106396 () Bool)

(assert (=> b!6285512 m!7106396))

(declare-fun m!7106398 () Bool)

(assert (=> b!6285512 m!7106398))

(declare-fun m!7106400 () Bool)

(assert (=> b!6285512 m!7106400))

(declare-fun m!7106402 () Bool)

(assert (=> b!6285509 m!7106402))

(declare-fun m!7106404 () Bool)

(assert (=> b!6285492 m!7106404))

(assert (=> b!6285492 m!7106284))

(declare-fun m!7106406 () Bool)

(assert (=> b!6285492 m!7106406))

(assert (=> b!6285519 m!7106402))

(declare-fun m!7106408 () Bool)

(assert (=> b!6285500 m!7106408))

(declare-fun m!7106410 () Bool)

(assert (=> b!6285500 m!7106410))

(declare-fun m!7106412 () Bool)

(assert (=> b!6285505 m!7106412))

(assert (=> b!6285505 m!7106262))

(declare-fun m!7106414 () Bool)

(assert (=> b!6285505 m!7106414))

(declare-fun m!7106416 () Bool)

(assert (=> b!6285505 m!7106416))

(declare-fun m!7106418 () Bool)

(assert (=> b!6285505 m!7106418))

(declare-fun m!7106420 () Bool)

(assert (=> b!6285505 m!7106420))

(declare-fun m!7106422 () Bool)

(assert (=> b!6285504 m!7106422))

(check-sat (not b!6285519) (not b!6285500) (not b!6285497) (not b!6285516) (not b!6285509) (not b!6285512) (not b!6285498) (not b!6285499) (not b!6285503) (not b!6285489) (not b!6285494) (not b!6285488) (not b!6285514) (not b!6285501) (not b!6285496) (not b!6285513) (not b!6285511) (not b!6285505) tp_is_empty!41667 (not b!6285517) (not start!624710) (not b!6285487) (not setNonEmpty!42776) (not b!6285486) (not b!6285510) (not b!6285515) (not b!6285493) (not b!6285504) (not b!6285508) (not b!6285490) (not b!6285506) (not b!6285484) (not b!6285492) (not b!6285507))
(check-sat)
(get-model)

(declare-fun b!6286084 () Bool)

(declare-fun e!3822549 () (InoxSet Context!11182))

(assert (=> b!6286084 (= e!3822549 (store ((as const (Array Context!11182 Bool)) false) lt!2355678 true))))

(declare-fun bm!532200 () Bool)

(declare-fun call!532206 () (InoxSet Context!11182))

(declare-fun call!532207 () (InoxSet Context!11182))

(assert (=> bm!532200 (= call!532206 call!532207)))

(declare-fun b!6286085 () Bool)

(declare-fun e!3822552 () Bool)

(assert (=> b!6286085 (= e!3822552 (nullable!6200 (regOne!32926 (regTwo!32926 (regOne!32926 r!7292)))))))

(declare-fun bm!532201 () Bool)

(declare-fun call!532209 () List!64920)

(declare-fun call!532205 () List!64920)

(assert (=> bm!532201 (= call!532209 call!532205)))

(declare-fun bm!532202 () Bool)

(declare-fun call!532210 () (InoxSet Context!11182))

(declare-fun c!1140370 () Bool)

(assert (=> bm!532202 (= call!532210 (derivationStepZipperDown!1455 (ite c!1140370 (regTwo!32927 (regTwo!32926 (regOne!32926 r!7292))) (regOne!32926 (regTwo!32926 (regOne!32926 r!7292)))) (ite c!1140370 lt!2355678 (Context!11183 call!532205)) (h!71246 s!2326)))))

(declare-fun d!1972891 () Bool)

(declare-fun c!1140367 () Bool)

(assert (=> d!1972891 (= c!1140367 (and ((_ is ElementMatch!16207) (regTwo!32926 (regOne!32926 r!7292))) (= (c!1140190 (regTwo!32926 (regOne!32926 r!7292))) (h!71246 s!2326))))))

(assert (=> d!1972891 (= (derivationStepZipperDown!1455 (regTwo!32926 (regOne!32926 r!7292)) lt!2355678 (h!71246 s!2326)) e!3822549)))

(declare-fun bm!532203 () Bool)

(declare-fun call!532208 () (InoxSet Context!11182))

(assert (=> bm!532203 (= call!532208 call!532206)))

(declare-fun b!6286086 () Bool)

(declare-fun e!3822554 () (InoxSet Context!11182))

(assert (=> b!6286086 (= e!3822554 call!532208)))

(declare-fun b!6286087 () Bool)

(declare-fun e!3822550 () (InoxSet Context!11182))

(assert (=> b!6286087 (= e!3822549 e!3822550)))

(assert (=> b!6286087 (= c!1140370 ((_ is Union!16207) (regTwo!32926 (regOne!32926 r!7292))))))

(declare-fun b!6286088 () Bool)

(declare-fun c!1140369 () Bool)

(assert (=> b!6286088 (= c!1140369 e!3822552)))

(declare-fun res!2592389 () Bool)

(assert (=> b!6286088 (=> (not res!2592389) (not e!3822552))))

(assert (=> b!6286088 (= res!2592389 ((_ is Concat!25052) (regTwo!32926 (regOne!32926 r!7292))))))

(declare-fun e!3822553 () (InoxSet Context!11182))

(assert (=> b!6286088 (= e!3822550 e!3822553)))

(declare-fun b!6286089 () Bool)

(declare-fun e!3822551 () (InoxSet Context!11182))

(assert (=> b!6286089 (= e!3822551 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286090 () Bool)

(assert (=> b!6286090 (= e!3822553 e!3822554)))

(declare-fun c!1140368 () Bool)

(assert (=> b!6286090 (= c!1140368 ((_ is Concat!25052) (regTwo!32926 (regOne!32926 r!7292))))))

(declare-fun b!6286091 () Bool)

(assert (=> b!6286091 (= e!3822550 ((_ map or) call!532207 call!532210))))

(declare-fun b!6286092 () Bool)

(assert (=> b!6286092 (= e!3822551 call!532208)))

(declare-fun bm!532204 () Bool)

(assert (=> bm!532204 (= call!532207 (derivationStepZipperDown!1455 (ite c!1140370 (regOne!32927 (regTwo!32926 (regOne!32926 r!7292))) (ite c!1140369 (regTwo!32926 (regTwo!32926 (regOne!32926 r!7292))) (ite c!1140368 (regOne!32926 (regTwo!32926 (regOne!32926 r!7292))) (reg!16536 (regTwo!32926 (regOne!32926 r!7292)))))) (ite (or c!1140370 c!1140369) lt!2355678 (Context!11183 call!532209)) (h!71246 s!2326)))))

(declare-fun b!6286093 () Bool)

(assert (=> b!6286093 (= e!3822553 ((_ map or) call!532210 call!532206))))

(declare-fun bm!532205 () Bool)

(declare-fun $colon$colon!2072 (List!64920 Regex!16207) List!64920)

(assert (=> bm!532205 (= call!532205 ($colon$colon!2072 (exprs!6091 lt!2355678) (ite (or c!1140369 c!1140368) (regTwo!32926 (regTwo!32926 (regOne!32926 r!7292))) (regTwo!32926 (regOne!32926 r!7292)))))))

(declare-fun b!6286094 () Bool)

(declare-fun c!1140371 () Bool)

(assert (=> b!6286094 (= c!1140371 ((_ is Star!16207) (regTwo!32926 (regOne!32926 r!7292))))))

(assert (=> b!6286094 (= e!3822554 e!3822551)))

(assert (= (and d!1972891 c!1140367) b!6286084))

(assert (= (and d!1972891 (not c!1140367)) b!6286087))

(assert (= (and b!6286087 c!1140370) b!6286091))

(assert (= (and b!6286087 (not c!1140370)) b!6286088))

(assert (= (and b!6286088 res!2592389) b!6286085))

(assert (= (and b!6286088 c!1140369) b!6286093))

(assert (= (and b!6286088 (not c!1140369)) b!6286090))

(assert (= (and b!6286090 c!1140368) b!6286086))

(assert (= (and b!6286090 (not c!1140368)) b!6286094))

(assert (= (and b!6286094 c!1140371) b!6286092))

(assert (= (and b!6286094 (not c!1140371)) b!6286089))

(assert (= (or b!6286086 b!6286092) bm!532201))

(assert (= (or b!6286086 b!6286092) bm!532203))

(assert (= (or b!6286093 bm!532201) bm!532205))

(assert (= (or b!6286093 bm!532203) bm!532200))

(assert (= (or b!6286091 b!6286093) bm!532202))

(assert (= (or b!6286091 bm!532200) bm!532204))

(declare-fun m!7106912 () Bool)

(assert (=> b!6286085 m!7106912))

(declare-fun m!7106914 () Bool)

(assert (=> bm!532204 m!7106914))

(declare-fun m!7106916 () Bool)

(assert (=> bm!532205 m!7106916))

(declare-fun m!7106918 () Bool)

(assert (=> b!6286084 m!7106918))

(declare-fun m!7106920 () Bool)

(assert (=> bm!532202 m!7106920))

(assert (=> b!6285500 d!1972891))

(declare-fun b!6286095 () Bool)

(declare-fun e!3822555 () (InoxSet Context!11182))

(assert (=> b!6286095 (= e!3822555 (store ((as const (Array Context!11182 Bool)) false) lt!2355646 true))))

(declare-fun bm!532206 () Bool)

(declare-fun call!532212 () (InoxSet Context!11182))

(declare-fun call!532213 () (InoxSet Context!11182))

(assert (=> bm!532206 (= call!532212 call!532213)))

(declare-fun b!6286096 () Bool)

(declare-fun e!3822558 () Bool)

(assert (=> b!6286096 (= e!3822558 (nullable!6200 (regOne!32926 (regOne!32926 (regOne!32926 r!7292)))))))

(declare-fun bm!532207 () Bool)

(declare-fun call!532215 () List!64920)

(declare-fun call!532211 () List!64920)

(assert (=> bm!532207 (= call!532215 call!532211)))

(declare-fun c!1140375 () Bool)

(declare-fun call!532216 () (InoxSet Context!11182))

(declare-fun bm!532208 () Bool)

(assert (=> bm!532208 (= call!532216 (derivationStepZipperDown!1455 (ite c!1140375 (regTwo!32927 (regOne!32926 (regOne!32926 r!7292))) (regOne!32926 (regOne!32926 (regOne!32926 r!7292)))) (ite c!1140375 lt!2355646 (Context!11183 call!532211)) (h!71246 s!2326)))))

(declare-fun d!1972893 () Bool)

(declare-fun c!1140372 () Bool)

(assert (=> d!1972893 (= c!1140372 (and ((_ is ElementMatch!16207) (regOne!32926 (regOne!32926 r!7292))) (= (c!1140190 (regOne!32926 (regOne!32926 r!7292))) (h!71246 s!2326))))))

(assert (=> d!1972893 (= (derivationStepZipperDown!1455 (regOne!32926 (regOne!32926 r!7292)) lt!2355646 (h!71246 s!2326)) e!3822555)))

(declare-fun bm!532209 () Bool)

(declare-fun call!532214 () (InoxSet Context!11182))

(assert (=> bm!532209 (= call!532214 call!532212)))

(declare-fun b!6286097 () Bool)

(declare-fun e!3822560 () (InoxSet Context!11182))

(assert (=> b!6286097 (= e!3822560 call!532214)))

(declare-fun b!6286098 () Bool)

(declare-fun e!3822556 () (InoxSet Context!11182))

(assert (=> b!6286098 (= e!3822555 e!3822556)))

(assert (=> b!6286098 (= c!1140375 ((_ is Union!16207) (regOne!32926 (regOne!32926 r!7292))))))

(declare-fun b!6286099 () Bool)

(declare-fun c!1140374 () Bool)

(assert (=> b!6286099 (= c!1140374 e!3822558)))

(declare-fun res!2592390 () Bool)

(assert (=> b!6286099 (=> (not res!2592390) (not e!3822558))))

(assert (=> b!6286099 (= res!2592390 ((_ is Concat!25052) (regOne!32926 (regOne!32926 r!7292))))))

(declare-fun e!3822559 () (InoxSet Context!11182))

(assert (=> b!6286099 (= e!3822556 e!3822559)))

(declare-fun b!6286100 () Bool)

(declare-fun e!3822557 () (InoxSet Context!11182))

(assert (=> b!6286100 (= e!3822557 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286101 () Bool)

(assert (=> b!6286101 (= e!3822559 e!3822560)))

(declare-fun c!1140373 () Bool)

(assert (=> b!6286101 (= c!1140373 ((_ is Concat!25052) (regOne!32926 (regOne!32926 r!7292))))))

(declare-fun b!6286102 () Bool)

(assert (=> b!6286102 (= e!3822556 ((_ map or) call!532213 call!532216))))

(declare-fun b!6286103 () Bool)

(assert (=> b!6286103 (= e!3822557 call!532214)))

(declare-fun bm!532210 () Bool)

(assert (=> bm!532210 (= call!532213 (derivationStepZipperDown!1455 (ite c!1140375 (regOne!32927 (regOne!32926 (regOne!32926 r!7292))) (ite c!1140374 (regTwo!32926 (regOne!32926 (regOne!32926 r!7292))) (ite c!1140373 (regOne!32926 (regOne!32926 (regOne!32926 r!7292))) (reg!16536 (regOne!32926 (regOne!32926 r!7292)))))) (ite (or c!1140375 c!1140374) lt!2355646 (Context!11183 call!532215)) (h!71246 s!2326)))))

(declare-fun b!6286104 () Bool)

(assert (=> b!6286104 (= e!3822559 ((_ map or) call!532216 call!532212))))

(declare-fun bm!532211 () Bool)

(assert (=> bm!532211 (= call!532211 ($colon$colon!2072 (exprs!6091 lt!2355646) (ite (or c!1140374 c!1140373) (regTwo!32926 (regOne!32926 (regOne!32926 r!7292))) (regOne!32926 (regOne!32926 r!7292)))))))

(declare-fun b!6286105 () Bool)

(declare-fun c!1140376 () Bool)

(assert (=> b!6286105 (= c!1140376 ((_ is Star!16207) (regOne!32926 (regOne!32926 r!7292))))))

(assert (=> b!6286105 (= e!3822560 e!3822557)))

(assert (= (and d!1972893 c!1140372) b!6286095))

(assert (= (and d!1972893 (not c!1140372)) b!6286098))

(assert (= (and b!6286098 c!1140375) b!6286102))

(assert (= (and b!6286098 (not c!1140375)) b!6286099))

(assert (= (and b!6286099 res!2592390) b!6286096))

(assert (= (and b!6286099 c!1140374) b!6286104))

(assert (= (and b!6286099 (not c!1140374)) b!6286101))

(assert (= (and b!6286101 c!1140373) b!6286097))

(assert (= (and b!6286101 (not c!1140373)) b!6286105))

(assert (= (and b!6286105 c!1140376) b!6286103))

(assert (= (and b!6286105 (not c!1140376)) b!6286100))

(assert (= (or b!6286097 b!6286103) bm!532207))

(assert (= (or b!6286097 b!6286103) bm!532209))

(assert (= (or b!6286104 bm!532207) bm!532211))

(assert (= (or b!6286104 bm!532209) bm!532206))

(assert (= (or b!6286102 b!6286104) bm!532208))

(assert (= (or b!6286102 bm!532206) bm!532210))

(declare-fun m!7106922 () Bool)

(assert (=> b!6286096 m!7106922))

(declare-fun m!7106924 () Bool)

(assert (=> bm!532210 m!7106924))

(declare-fun m!7106926 () Bool)

(assert (=> bm!532211 m!7106926))

(assert (=> b!6286095 m!7106272))

(declare-fun m!7106928 () Bool)

(assert (=> bm!532208 m!7106928))

(assert (=> b!6285500 d!1972893))

(declare-fun d!1972895 () Bool)

(declare-fun res!2592402 () Bool)

(declare-fun e!3822575 () Bool)

(assert (=> d!1972895 (=> res!2592402 e!3822575)))

(assert (=> d!1972895 (= res!2592402 ((_ is ElementMatch!16207) r!7292))))

(assert (=> d!1972895 (= (validRegex!7943 r!7292) e!3822575)))

(declare-fun b!6286124 () Bool)

(declare-fun e!3822578 () Bool)

(declare-fun e!3822577 () Bool)

(assert (=> b!6286124 (= e!3822578 e!3822577)))

(declare-fun res!2592404 () Bool)

(assert (=> b!6286124 (=> (not res!2592404) (not e!3822577))))

(declare-fun call!532223 () Bool)

(assert (=> b!6286124 (= res!2592404 call!532223)))

(declare-fun b!6286125 () Bool)

(declare-fun e!3822576 () Bool)

(declare-fun e!3822580 () Bool)

(assert (=> b!6286125 (= e!3822576 e!3822580)))

(declare-fun res!2592403 () Bool)

(assert (=> b!6286125 (= res!2592403 (not (nullable!6200 (reg!16536 r!7292))))))

(assert (=> b!6286125 (=> (not res!2592403) (not e!3822580))))

(declare-fun b!6286126 () Bool)

(declare-fun res!2592401 () Bool)

(declare-fun e!3822581 () Bool)

(assert (=> b!6286126 (=> (not res!2592401) (not e!3822581))))

(assert (=> b!6286126 (= res!2592401 call!532223)))

(declare-fun e!3822579 () Bool)

(assert (=> b!6286126 (= e!3822579 e!3822581)))

(declare-fun b!6286127 () Bool)

(declare-fun call!532224 () Bool)

(assert (=> b!6286127 (= e!3822580 call!532224)))

(declare-fun bm!532218 () Bool)

(declare-fun call!532225 () Bool)

(declare-fun c!1140382 () Bool)

(assert (=> bm!532218 (= call!532225 (validRegex!7943 (ite c!1140382 (regTwo!32927 r!7292) (regTwo!32926 r!7292))))))

(declare-fun bm!532219 () Bool)

(assert (=> bm!532219 (= call!532223 call!532224)))

(declare-fun bm!532220 () Bool)

(declare-fun c!1140381 () Bool)

(assert (=> bm!532220 (= call!532224 (validRegex!7943 (ite c!1140381 (reg!16536 r!7292) (ite c!1140382 (regOne!32927 r!7292) (regOne!32926 r!7292)))))))

(declare-fun b!6286128 () Bool)

(assert (=> b!6286128 (= e!3822581 call!532225)))

(declare-fun b!6286129 () Bool)

(declare-fun res!2592405 () Bool)

(assert (=> b!6286129 (=> res!2592405 e!3822578)))

(assert (=> b!6286129 (= res!2592405 (not ((_ is Concat!25052) r!7292)))))

(assert (=> b!6286129 (= e!3822579 e!3822578)))

(declare-fun b!6286130 () Bool)

(assert (=> b!6286130 (= e!3822575 e!3822576)))

(assert (=> b!6286130 (= c!1140381 ((_ is Star!16207) r!7292))))

(declare-fun b!6286131 () Bool)

(assert (=> b!6286131 (= e!3822577 call!532225)))

(declare-fun b!6286132 () Bool)

(assert (=> b!6286132 (= e!3822576 e!3822579)))

(assert (=> b!6286132 (= c!1140382 ((_ is Union!16207) r!7292))))

(assert (= (and d!1972895 (not res!2592402)) b!6286130))

(assert (= (and b!6286130 c!1140381) b!6286125))

(assert (= (and b!6286130 (not c!1140381)) b!6286132))

(assert (= (and b!6286125 res!2592403) b!6286127))

(assert (= (and b!6286132 c!1140382) b!6286126))

(assert (= (and b!6286132 (not c!1140382)) b!6286129))

(assert (= (and b!6286126 res!2592401) b!6286128))

(assert (= (and b!6286129 (not res!2592405)) b!6286124))

(assert (= (and b!6286124 res!2592404) b!6286131))

(assert (= (or b!6286128 b!6286131) bm!532218))

(assert (= (or b!6286126 b!6286124) bm!532219))

(assert (= (or b!6286127 bm!532219) bm!532220))

(declare-fun m!7106930 () Bool)

(assert (=> b!6286125 m!7106930))

(declare-fun m!7106932 () Bool)

(assert (=> bm!532218 m!7106932))

(declare-fun m!7106934 () Bool)

(assert (=> bm!532220 m!7106934))

(assert (=> start!624710 d!1972895))

(declare-fun d!1972897 () Bool)

(declare-fun nullableFct!2151 (Regex!16207) Bool)

(assert (=> d!1972897 (= (nullable!6200 (regOne!32926 (regOne!32926 r!7292))) (nullableFct!2151 (regOne!32926 (regOne!32926 r!7292))))))

(declare-fun bs!1571232 () Bool)

(assert (= bs!1571232 d!1972897))

(declare-fun m!7106936 () Bool)

(assert (=> bs!1571232 m!7106936))

(assert (=> b!6285504 d!1972897))

(declare-fun b!6286153 () Bool)

(declare-fun e!3822597 () Bool)

(assert (=> b!6286153 (= e!3822597 (isEmpty!36845 (t!378482 (unfocusZipperList!1628 zl!343))))))

(declare-fun b!6286154 () Bool)

(declare-fun e!3822599 () Bool)

(declare-fun e!3822595 () Bool)

(assert (=> b!6286154 (= e!3822599 e!3822595)))

(declare-fun c!1140393 () Bool)

(assert (=> b!6286154 (= c!1140393 (isEmpty!36845 (unfocusZipperList!1628 zl!343)))))

(declare-fun b!6286155 () Bool)

(declare-fun e!3822596 () Regex!16207)

(assert (=> b!6286155 (= e!3822596 EmptyLang!16207)))

(declare-fun b!6286156 () Bool)

(declare-fun lt!2355779 () Regex!16207)

(declare-fun isEmptyLang!1620 (Regex!16207) Bool)

(assert (=> b!6286156 (= e!3822595 (isEmptyLang!1620 lt!2355779))))

(declare-fun b!6286157 () Bool)

(declare-fun e!3822598 () Bool)

(declare-fun head!12914 (List!64920) Regex!16207)

(assert (=> b!6286157 (= e!3822598 (= lt!2355779 (head!12914 (unfocusZipperList!1628 zl!343))))))

(declare-fun b!6286158 () Bool)

(declare-fun e!3822594 () Regex!16207)

(assert (=> b!6286158 (= e!3822594 (h!71244 (unfocusZipperList!1628 zl!343)))))

(declare-fun d!1972899 () Bool)

(assert (=> d!1972899 e!3822599))

(declare-fun res!2592410 () Bool)

(assert (=> d!1972899 (=> (not res!2592410) (not e!3822599))))

(assert (=> d!1972899 (= res!2592410 (validRegex!7943 lt!2355779))))

(assert (=> d!1972899 (= lt!2355779 e!3822594)))

(declare-fun c!1140392 () Bool)

(assert (=> d!1972899 (= c!1140392 e!3822597)))

(declare-fun res!2592411 () Bool)

(assert (=> d!1972899 (=> (not res!2592411) (not e!3822597))))

(assert (=> d!1972899 (= res!2592411 ((_ is Cons!64796) (unfocusZipperList!1628 zl!343)))))

(declare-fun lambda!345033 () Int)

(declare-fun forall!15350 (List!64920 Int) Bool)

(assert (=> d!1972899 (forall!15350 (unfocusZipperList!1628 zl!343) lambda!345033)))

(assert (=> d!1972899 (= (generalisedUnion!2051 (unfocusZipperList!1628 zl!343)) lt!2355779)))

(declare-fun b!6286159 () Bool)

(assert (=> b!6286159 (= e!3822594 e!3822596)))

(declare-fun c!1140394 () Bool)

(assert (=> b!6286159 (= c!1140394 ((_ is Cons!64796) (unfocusZipperList!1628 zl!343)))))

(declare-fun b!6286160 () Bool)

(assert (=> b!6286160 (= e!3822596 (Union!16207 (h!71244 (unfocusZipperList!1628 zl!343)) (generalisedUnion!2051 (t!378482 (unfocusZipperList!1628 zl!343)))))))

(declare-fun b!6286161 () Bool)

(declare-fun isUnion!1050 (Regex!16207) Bool)

(assert (=> b!6286161 (= e!3822598 (isUnion!1050 lt!2355779))))

(declare-fun b!6286162 () Bool)

(assert (=> b!6286162 (= e!3822595 e!3822598)))

(declare-fun c!1140391 () Bool)

(declare-fun tail!11999 (List!64920) List!64920)

(assert (=> b!6286162 (= c!1140391 (isEmpty!36845 (tail!11999 (unfocusZipperList!1628 zl!343))))))

(assert (= (and d!1972899 res!2592411) b!6286153))

(assert (= (and d!1972899 c!1140392) b!6286158))

(assert (= (and d!1972899 (not c!1140392)) b!6286159))

(assert (= (and b!6286159 c!1140394) b!6286160))

(assert (= (and b!6286159 (not c!1140394)) b!6286155))

(assert (= (and d!1972899 res!2592410) b!6286154))

(assert (= (and b!6286154 c!1140393) b!6286156))

(assert (= (and b!6286154 (not c!1140393)) b!6286162))

(assert (= (and b!6286162 c!1140391) b!6286157))

(assert (= (and b!6286162 (not c!1140391)) b!6286161))

(declare-fun m!7106938 () Bool)

(assert (=> b!6286156 m!7106938))

(declare-fun m!7106940 () Bool)

(assert (=> d!1972899 m!7106940))

(assert (=> d!1972899 m!7106382))

(declare-fun m!7106942 () Bool)

(assert (=> d!1972899 m!7106942))

(declare-fun m!7106944 () Bool)

(assert (=> b!6286161 m!7106944))

(assert (=> b!6286157 m!7106382))

(declare-fun m!7106946 () Bool)

(assert (=> b!6286157 m!7106946))

(assert (=> b!6286154 m!7106382))

(declare-fun m!7106948 () Bool)

(assert (=> b!6286154 m!7106948))

(declare-fun m!7106950 () Bool)

(assert (=> b!6286153 m!7106950))

(assert (=> b!6286162 m!7106382))

(declare-fun m!7106952 () Bool)

(assert (=> b!6286162 m!7106952))

(assert (=> b!6286162 m!7106952))

(declare-fun m!7106954 () Bool)

(assert (=> b!6286162 m!7106954))

(declare-fun m!7106956 () Bool)

(assert (=> b!6286160 m!7106956))

(assert (=> b!6285484 d!1972899))

(declare-fun bs!1571233 () Bool)

(declare-fun d!1972901 () Bool)

(assert (= bs!1571233 (and d!1972901 d!1972899)))

(declare-fun lambda!345036 () Int)

(assert (=> bs!1571233 (= lambda!345036 lambda!345033)))

(declare-fun lt!2355782 () List!64920)

(assert (=> d!1972901 (forall!15350 lt!2355782 lambda!345036)))

(declare-fun e!3822602 () List!64920)

(assert (=> d!1972901 (= lt!2355782 e!3822602)))

(declare-fun c!1140397 () Bool)

(assert (=> d!1972901 (= c!1140397 ((_ is Cons!64797) zl!343))))

(assert (=> d!1972901 (= (unfocusZipperList!1628 zl!343) lt!2355782)))

(declare-fun b!6286167 () Bool)

(assert (=> b!6286167 (= e!3822602 (Cons!64796 (generalisedConcat!1804 (exprs!6091 (h!71245 zl!343))) (unfocusZipperList!1628 (t!378483 zl!343))))))

(declare-fun b!6286168 () Bool)

(assert (=> b!6286168 (= e!3822602 Nil!64796)))

(assert (= (and d!1972901 c!1140397) b!6286167))

(assert (= (and d!1972901 (not c!1140397)) b!6286168))

(declare-fun m!7106958 () Bool)

(assert (=> d!1972901 m!7106958))

(assert (=> b!6286167 m!7106296))

(declare-fun m!7106960 () Bool)

(assert (=> b!6286167 m!7106960))

(assert (=> b!6285484 d!1972901))

(declare-fun d!1972903 () Bool)

(assert (=> d!1972903 (= (isEmpty!36846 (t!378483 zl!343)) ((_ is Nil!64797) (t!378483 zl!343)))))

(assert (=> b!6285503 d!1972903))

(declare-fun d!1972905 () Bool)

(declare-fun c!1140400 () Bool)

(declare-fun isEmpty!36849 (List!64922) Bool)

(assert (=> d!1972905 (= c!1140400 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822605 () Bool)

(assert (=> d!1972905 (= (matchZipper!2219 lt!2355676 (t!378484 s!2326)) e!3822605)))

(declare-fun b!6286173 () Bool)

(declare-fun nullableZipper!1977 ((InoxSet Context!11182)) Bool)

(assert (=> b!6286173 (= e!3822605 (nullableZipper!1977 lt!2355676))))

(declare-fun b!6286174 () Bool)

(declare-fun head!12915 (List!64922) C!32684)

(declare-fun tail!12000 (List!64922) List!64922)

(assert (=> b!6286174 (= e!3822605 (matchZipper!2219 (derivationStepZipper!2173 lt!2355676 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972905 c!1140400) b!6286173))

(assert (= (and d!1972905 (not c!1140400)) b!6286174))

(declare-fun m!7106962 () Bool)

(assert (=> d!1972905 m!7106962))

(declare-fun m!7106964 () Bool)

(assert (=> b!6286173 m!7106964))

(declare-fun m!7106966 () Bool)

(assert (=> b!6286174 m!7106966))

(assert (=> b!6286174 m!7106966))

(declare-fun m!7106968 () Bool)

(assert (=> b!6286174 m!7106968))

(declare-fun m!7106970 () Bool)

(assert (=> b!6286174 m!7106970))

(assert (=> b!6286174 m!7106968))

(assert (=> b!6286174 m!7106970))

(declare-fun m!7106972 () Bool)

(assert (=> b!6286174 m!7106972))

(assert (=> b!6285516 d!1972905))

(declare-fun d!1972907 () Bool)

(declare-fun c!1140401 () Bool)

(assert (=> d!1972907 (= c!1140401 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822606 () Bool)

(assert (=> d!1972907 (= (matchZipper!2219 (derivationStepZipper!2173 lt!2355655 (h!71246 s!2326)) (t!378484 s!2326)) e!3822606)))

(declare-fun b!6286175 () Bool)

(assert (=> b!6286175 (= e!3822606 (nullableZipper!1977 (derivationStepZipper!2173 lt!2355655 (h!71246 s!2326))))))

(declare-fun b!6286176 () Bool)

(assert (=> b!6286176 (= e!3822606 (matchZipper!2219 (derivationStepZipper!2173 (derivationStepZipper!2173 lt!2355655 (h!71246 s!2326)) (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972907 c!1140401) b!6286175))

(assert (= (and d!1972907 (not c!1140401)) b!6286176))

(assert (=> d!1972907 m!7106962))

(assert (=> b!6286175 m!7106368))

(declare-fun m!7106974 () Bool)

(assert (=> b!6286175 m!7106974))

(assert (=> b!6286176 m!7106966))

(assert (=> b!6286176 m!7106368))

(assert (=> b!6286176 m!7106966))

(declare-fun m!7106976 () Bool)

(assert (=> b!6286176 m!7106976))

(assert (=> b!6286176 m!7106970))

(assert (=> b!6286176 m!7106976))

(assert (=> b!6286176 m!7106970))

(declare-fun m!7106978 () Bool)

(assert (=> b!6286176 m!7106978))

(assert (=> b!6285517 d!1972907))

(declare-fun bs!1571234 () Bool)

(declare-fun d!1972909 () Bool)

(assert (= bs!1571234 (and d!1972909 b!6285512)))

(declare-fun lambda!345039 () Int)

(assert (=> bs!1571234 (= lambda!345039 lambda!344972)))

(assert (=> d!1972909 true))

(assert (=> d!1972909 (= (derivationStepZipper!2173 lt!2355655 (h!71246 s!2326)) (flatMap!1712 lt!2355655 lambda!345039))))

(declare-fun bs!1571235 () Bool)

(assert (= bs!1571235 d!1972909))

(declare-fun m!7106980 () Bool)

(assert (=> bs!1571235 m!7106980))

(assert (=> b!6285517 d!1972909))

(declare-fun d!1972911 () Bool)

(declare-fun c!1140404 () Bool)

(assert (=> d!1972911 (= c!1140404 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822607 () Bool)

(assert (=> d!1972911 (= (matchZipper!2219 lt!2355686 (t!378484 s!2326)) e!3822607)))

(declare-fun b!6286179 () Bool)

(assert (=> b!6286179 (= e!3822607 (nullableZipper!1977 lt!2355686))))

(declare-fun b!6286180 () Bool)

(assert (=> b!6286180 (= e!3822607 (matchZipper!2219 (derivationStepZipper!2173 lt!2355686 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972911 c!1140404) b!6286179))

(assert (= (and d!1972911 (not c!1140404)) b!6286180))

(assert (=> d!1972911 m!7106962))

(declare-fun m!7106982 () Bool)

(assert (=> b!6286179 m!7106982))

(assert (=> b!6286180 m!7106966))

(assert (=> b!6286180 m!7106966))

(declare-fun m!7106984 () Bool)

(assert (=> b!6286180 m!7106984))

(assert (=> b!6286180 m!7106970))

(assert (=> b!6286180 m!7106984))

(assert (=> b!6286180 m!7106970))

(declare-fun m!7106986 () Bool)

(assert (=> b!6286180 m!7106986))

(assert (=> b!6285515 d!1972911))

(declare-fun d!1972913 () Bool)

(declare-fun c!1140405 () Bool)

(assert (=> d!1972913 (= c!1140405 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822608 () Bool)

(assert (=> d!1972913 (= (matchZipper!2219 lt!2355650 (t!378484 s!2326)) e!3822608)))

(declare-fun b!6286181 () Bool)

(assert (=> b!6286181 (= e!3822608 (nullableZipper!1977 lt!2355650))))

(declare-fun b!6286182 () Bool)

(assert (=> b!6286182 (= e!3822608 (matchZipper!2219 (derivationStepZipper!2173 lt!2355650 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972913 c!1140405) b!6286181))

(assert (= (and d!1972913 (not c!1140405)) b!6286182))

(assert (=> d!1972913 m!7106962))

(declare-fun m!7106988 () Bool)

(assert (=> b!6286181 m!7106988))

(assert (=> b!6286182 m!7106966))

(assert (=> b!6286182 m!7106966))

(declare-fun m!7106990 () Bool)

(assert (=> b!6286182 m!7106990))

(assert (=> b!6286182 m!7106970))

(assert (=> b!6286182 m!7106990))

(assert (=> b!6286182 m!7106970))

(declare-fun m!7106992 () Bool)

(assert (=> b!6286182 m!7106992))

(assert (=> b!6285519 d!1972913))

(declare-fun d!1972915 () Bool)

(declare-fun choose!46682 (Int) Bool)

(assert (=> d!1972915 (= (Exists!3277 lambda!344970) (choose!46682 lambda!344970))))

(declare-fun bs!1571236 () Bool)

(assert (= bs!1571236 d!1972915))

(declare-fun m!7106994 () Bool)

(assert (=> bs!1571236 m!7106994))

(assert (=> b!6285497 d!1972915))

(declare-fun bs!1571237 () Bool)

(declare-fun d!1972917 () Bool)

(assert (= bs!1571237 (and d!1972917 b!6285497)))

(declare-fun lambda!345042 () Int)

(assert (=> bs!1571237 (not (= lambda!345042 lambda!344971))))

(declare-fun bs!1571238 () Bool)

(assert (= bs!1571238 (and d!1972917 b!6285508)))

(assert (=> bs!1571238 (= (and (= (regOne!32926 r!7292) (regOne!32926 (regOne!32926 r!7292))) (= (regTwo!32926 r!7292) lt!2355648)) (= lambda!345042 lambda!344973))))

(assert (=> bs!1571237 (= lambda!345042 lambda!344970)))

(assert (=> bs!1571238 (= (and (= (regOne!32926 r!7292) (regTwo!32926 (regOne!32926 r!7292))) (= (regTwo!32926 r!7292) lt!2355654)) (= lambda!345042 lambda!344975))))

(assert (=> bs!1571238 (not (= lambda!345042 lambda!344974))))

(assert (=> d!1972917 true))

(assert (=> d!1972917 true))

(assert (=> d!1972917 true))

(assert (=> d!1972917 (= (isDefined!12801 (findConcatSeparation!2512 (regOne!32926 r!7292) (regTwo!32926 r!7292) Nil!64798 s!2326 s!2326)) (Exists!3277 lambda!345042))))

(declare-fun lt!2355785 () Unit!158159)

(declare-fun choose!46683 (Regex!16207 Regex!16207 List!64922) Unit!158159)

(assert (=> d!1972917 (= lt!2355785 (choose!46683 (regOne!32926 r!7292) (regTwo!32926 r!7292) s!2326))))

(assert (=> d!1972917 (validRegex!7943 (regOne!32926 r!7292))))

(assert (=> d!1972917 (= (lemmaFindConcatSeparationEquivalentToExists!2276 (regOne!32926 r!7292) (regTwo!32926 r!7292) s!2326) lt!2355785)))

(declare-fun bs!1571239 () Bool)

(assert (= bs!1571239 d!1972917))

(declare-fun m!7106996 () Bool)

(assert (=> bs!1571239 m!7106996))

(declare-fun m!7106998 () Bool)

(assert (=> bs!1571239 m!7106998))

(assert (=> bs!1571239 m!7106304))

(assert (=> bs!1571239 m!7106306))

(declare-fun m!7107000 () Bool)

(assert (=> bs!1571239 m!7107000))

(assert (=> bs!1571239 m!7106304))

(assert (=> b!6285497 d!1972917))

(declare-fun b!6286205 () Bool)

(declare-fun e!3822621 () Option!16098)

(assert (=> b!6286205 (= e!3822621 None!16097)))

(declare-fun b!6286206 () Bool)

(declare-fun res!2592427 () Bool)

(declare-fun e!3822623 () Bool)

(assert (=> b!6286206 (=> (not res!2592427) (not e!3822623))))

(declare-fun lt!2355793 () Option!16098)

(declare-fun get!22399 (Option!16098) tuple2!66372)

(assert (=> b!6286206 (= res!2592427 (matchR!8390 (regOne!32926 r!7292) (_1!36489 (get!22399 lt!2355793))))))

(declare-fun b!6286207 () Bool)

(declare-fun lt!2355794 () Unit!158159)

(declare-fun lt!2355792 () Unit!158159)

(assert (=> b!6286207 (= lt!2355794 lt!2355792)))

(declare-fun ++!14280 (List!64922 List!64922) List!64922)

(assert (=> b!6286207 (= (++!14280 (++!14280 Nil!64798 (Cons!64798 (h!71246 s!2326) Nil!64798)) (t!378484 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2375 (List!64922 C!32684 List!64922 List!64922) Unit!158159)

(assert (=> b!6286207 (= lt!2355792 (lemmaMoveElementToOtherListKeepsConcatEq!2375 Nil!64798 (h!71246 s!2326) (t!378484 s!2326) s!2326))))

(assert (=> b!6286207 (= e!3822621 (findConcatSeparation!2512 (regOne!32926 r!7292) (regTwo!32926 r!7292) (++!14280 Nil!64798 (Cons!64798 (h!71246 s!2326) Nil!64798)) (t!378484 s!2326) s!2326))))

(declare-fun b!6286208 () Bool)

(declare-fun e!3822624 () Bool)

(assert (=> b!6286208 (= e!3822624 (matchR!8390 (regTwo!32926 r!7292) s!2326))))

(declare-fun b!6286209 () Bool)

(declare-fun e!3822625 () Option!16098)

(assert (=> b!6286209 (= e!3822625 (Some!16097 (tuple2!66373 Nil!64798 s!2326)))))

(declare-fun b!6286210 () Bool)

(assert (=> b!6286210 (= e!3822623 (= (++!14280 (_1!36489 (get!22399 lt!2355793)) (_2!36489 (get!22399 lt!2355793))) s!2326))))

(declare-fun b!6286211 () Bool)

(declare-fun e!3822622 () Bool)

(assert (=> b!6286211 (= e!3822622 (not (isDefined!12801 lt!2355793)))))

(declare-fun b!6286212 () Bool)

(declare-fun res!2592426 () Bool)

(assert (=> b!6286212 (=> (not res!2592426) (not e!3822623))))

(assert (=> b!6286212 (= res!2592426 (matchR!8390 (regTwo!32926 r!7292) (_2!36489 (get!22399 lt!2355793))))))

(declare-fun b!6286213 () Bool)

(assert (=> b!6286213 (= e!3822625 e!3822621)))

(declare-fun c!1140411 () Bool)

(assert (=> b!6286213 (= c!1140411 ((_ is Nil!64798) s!2326))))

(declare-fun d!1972919 () Bool)

(assert (=> d!1972919 e!3822622))

(declare-fun res!2592428 () Bool)

(assert (=> d!1972919 (=> res!2592428 e!3822622)))

(assert (=> d!1972919 (= res!2592428 e!3822623)))

(declare-fun res!2592429 () Bool)

(assert (=> d!1972919 (=> (not res!2592429) (not e!3822623))))

(assert (=> d!1972919 (= res!2592429 (isDefined!12801 lt!2355793))))

(assert (=> d!1972919 (= lt!2355793 e!3822625)))

(declare-fun c!1140410 () Bool)

(assert (=> d!1972919 (= c!1140410 e!3822624)))

(declare-fun res!2592430 () Bool)

(assert (=> d!1972919 (=> (not res!2592430) (not e!3822624))))

(assert (=> d!1972919 (= res!2592430 (matchR!8390 (regOne!32926 r!7292) Nil!64798))))

(assert (=> d!1972919 (validRegex!7943 (regOne!32926 r!7292))))

(assert (=> d!1972919 (= (findConcatSeparation!2512 (regOne!32926 r!7292) (regTwo!32926 r!7292) Nil!64798 s!2326 s!2326) lt!2355793)))

(assert (= (and d!1972919 res!2592430) b!6286208))

(assert (= (and d!1972919 c!1140410) b!6286209))

(assert (= (and d!1972919 (not c!1140410)) b!6286213))

(assert (= (and b!6286213 c!1140411) b!6286205))

(assert (= (and b!6286213 (not c!1140411)) b!6286207))

(assert (= (and d!1972919 res!2592429) b!6286206))

(assert (= (and b!6286206 res!2592427) b!6286212))

(assert (= (and b!6286212 res!2592426) b!6286210))

(assert (= (and d!1972919 (not res!2592428)) b!6286211))

(declare-fun m!7107002 () Bool)

(assert (=> d!1972919 m!7107002))

(declare-fun m!7107004 () Bool)

(assert (=> d!1972919 m!7107004))

(assert (=> d!1972919 m!7107000))

(assert (=> b!6286211 m!7107002))

(declare-fun m!7107006 () Bool)

(assert (=> b!6286208 m!7107006))

(declare-fun m!7107008 () Bool)

(assert (=> b!6286210 m!7107008))

(declare-fun m!7107010 () Bool)

(assert (=> b!6286210 m!7107010))

(assert (=> b!6286212 m!7107008))

(declare-fun m!7107012 () Bool)

(assert (=> b!6286212 m!7107012))

(assert (=> b!6286206 m!7107008))

(declare-fun m!7107014 () Bool)

(assert (=> b!6286206 m!7107014))

(declare-fun m!7107016 () Bool)

(assert (=> b!6286207 m!7107016))

(assert (=> b!6286207 m!7107016))

(declare-fun m!7107018 () Bool)

(assert (=> b!6286207 m!7107018))

(declare-fun m!7107020 () Bool)

(assert (=> b!6286207 m!7107020))

(assert (=> b!6286207 m!7107016))

(declare-fun m!7107022 () Bool)

(assert (=> b!6286207 m!7107022))

(assert (=> b!6285497 d!1972919))

(declare-fun d!1972921 () Bool)

(assert (=> d!1972921 (= (Exists!3277 lambda!344971) (choose!46682 lambda!344971))))

(declare-fun bs!1571240 () Bool)

(assert (= bs!1571240 d!1972921))

(declare-fun m!7107024 () Bool)

(assert (=> bs!1571240 m!7107024))

(assert (=> b!6285497 d!1972921))

(declare-fun bs!1571241 () Bool)

(declare-fun d!1972923 () Bool)

(assert (= bs!1571241 (and d!1972923 b!6285497)))

(declare-fun lambda!345047 () Int)

(assert (=> bs!1571241 (not (= lambda!345047 lambda!344971))))

(declare-fun bs!1571242 () Bool)

(assert (= bs!1571242 (and d!1972923 d!1972917)))

(assert (=> bs!1571242 (= lambda!345047 lambda!345042)))

(declare-fun bs!1571243 () Bool)

(assert (= bs!1571243 (and d!1972923 b!6285508)))

(assert (=> bs!1571243 (= (and (= (regOne!32926 r!7292) (regOne!32926 (regOne!32926 r!7292))) (= (regTwo!32926 r!7292) lt!2355648)) (= lambda!345047 lambda!344973))))

(assert (=> bs!1571241 (= lambda!345047 lambda!344970)))

(assert (=> bs!1571243 (= (and (= (regOne!32926 r!7292) (regTwo!32926 (regOne!32926 r!7292))) (= (regTwo!32926 r!7292) lt!2355654)) (= lambda!345047 lambda!344975))))

(assert (=> bs!1571243 (not (= lambda!345047 lambda!344974))))

(assert (=> d!1972923 true))

(assert (=> d!1972923 true))

(assert (=> d!1972923 true))

(declare-fun bs!1571244 () Bool)

(assert (= bs!1571244 d!1972923))

(declare-fun lambda!345048 () Int)

(assert (=> bs!1571244 (not (= lambda!345048 lambda!345047))))

(assert (=> bs!1571241 (= lambda!345048 lambda!344971)))

(assert (=> bs!1571242 (not (= lambda!345048 lambda!345042))))

(assert (=> bs!1571243 (not (= lambda!345048 lambda!344973))))

(assert (=> bs!1571241 (not (= lambda!345048 lambda!344970))))

(assert (=> bs!1571243 (not (= lambda!345048 lambda!344975))))

(assert (=> bs!1571243 (= (and (= (regOne!32926 r!7292) (regOne!32926 (regOne!32926 r!7292))) (= (regTwo!32926 r!7292) lt!2355648)) (= lambda!345048 lambda!344974))))

(assert (=> d!1972923 true))

(assert (=> d!1972923 true))

(assert (=> d!1972923 true))

(assert (=> d!1972923 (= (Exists!3277 lambda!345047) (Exists!3277 lambda!345048))))

(declare-fun lt!2355797 () Unit!158159)

(declare-fun choose!46684 (Regex!16207 Regex!16207 List!64922) Unit!158159)

(assert (=> d!1972923 (= lt!2355797 (choose!46684 (regOne!32926 r!7292) (regTwo!32926 r!7292) s!2326))))

(assert (=> d!1972923 (validRegex!7943 (regOne!32926 r!7292))))

(assert (=> d!1972923 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1814 (regOne!32926 r!7292) (regTwo!32926 r!7292) s!2326) lt!2355797)))

(declare-fun m!7107026 () Bool)

(assert (=> bs!1571244 m!7107026))

(declare-fun m!7107028 () Bool)

(assert (=> bs!1571244 m!7107028))

(declare-fun m!7107030 () Bool)

(assert (=> bs!1571244 m!7107030))

(assert (=> bs!1571244 m!7107000))

(assert (=> b!6285497 d!1972923))

(declare-fun d!1972925 () Bool)

(declare-fun isEmpty!36850 (Option!16098) Bool)

(assert (=> d!1972925 (= (isDefined!12801 (findConcatSeparation!2512 (regOne!32926 r!7292) (regTwo!32926 r!7292) Nil!64798 s!2326 s!2326)) (not (isEmpty!36850 (findConcatSeparation!2512 (regOne!32926 r!7292) (regTwo!32926 r!7292) Nil!64798 s!2326 s!2326))))))

(declare-fun bs!1571245 () Bool)

(assert (= bs!1571245 d!1972925))

(assert (=> bs!1571245 m!7106304))

(declare-fun m!7107032 () Bool)

(assert (=> bs!1571245 m!7107032))

(assert (=> b!6285497 d!1972925))

(declare-fun bs!1571246 () Bool)

(declare-fun d!1972927 () Bool)

(assert (= bs!1571246 (and d!1972927 d!1972899)))

(declare-fun lambda!345051 () Int)

(assert (=> bs!1571246 (= lambda!345051 lambda!345033)))

(declare-fun bs!1571247 () Bool)

(assert (= bs!1571247 (and d!1972927 d!1972901)))

(assert (=> bs!1571247 (= lambda!345051 lambda!345036)))

(declare-fun e!3822643 () Bool)

(assert (=> d!1972927 e!3822643))

(declare-fun res!2592443 () Bool)

(assert (=> d!1972927 (=> (not res!2592443) (not e!3822643))))

(declare-fun lt!2355800 () Regex!16207)

(assert (=> d!1972927 (= res!2592443 (validRegex!7943 lt!2355800))))

(declare-fun e!3822644 () Regex!16207)

(assert (=> d!1972927 (= lt!2355800 e!3822644)))

(declare-fun c!1140422 () Bool)

(declare-fun e!3822645 () Bool)

(assert (=> d!1972927 (= c!1140422 e!3822645)))

(declare-fun res!2592444 () Bool)

(assert (=> d!1972927 (=> (not res!2592444) (not e!3822645))))

(assert (=> d!1972927 (= res!2592444 ((_ is Cons!64796) (exprs!6091 (h!71245 zl!343))))))

(assert (=> d!1972927 (forall!15350 (exprs!6091 (h!71245 zl!343)) lambda!345051)))

(assert (=> d!1972927 (= (generalisedConcat!1804 (exprs!6091 (h!71245 zl!343))) lt!2355800)))

(declare-fun b!6286242 () Bool)

(declare-fun e!3822646 () Bool)

(assert (=> b!6286242 (= e!3822643 e!3822646)))

(declare-fun c!1140421 () Bool)

(assert (=> b!6286242 (= c!1140421 (isEmpty!36845 (exprs!6091 (h!71245 zl!343))))))

(declare-fun b!6286243 () Bool)

(declare-fun e!3822647 () Bool)

(declare-fun isConcat!1136 (Regex!16207) Bool)

(assert (=> b!6286243 (= e!3822647 (isConcat!1136 lt!2355800))))

(declare-fun b!6286244 () Bool)

(declare-fun isEmptyExpr!1613 (Regex!16207) Bool)

(assert (=> b!6286244 (= e!3822646 (isEmptyExpr!1613 lt!2355800))))

(declare-fun b!6286245 () Bool)

(declare-fun e!3822642 () Regex!16207)

(assert (=> b!6286245 (= e!3822642 EmptyExpr!16207)))

(declare-fun b!6286246 () Bool)

(assert (=> b!6286246 (= e!3822645 (isEmpty!36845 (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286247 () Bool)

(assert (=> b!6286247 (= e!3822647 (= lt!2355800 (head!12914 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286248 () Bool)

(assert (=> b!6286248 (= e!3822644 e!3822642)))

(declare-fun c!1140420 () Bool)

(assert (=> b!6286248 (= c!1140420 ((_ is Cons!64796) (exprs!6091 (h!71245 zl!343))))))

(declare-fun b!6286249 () Bool)

(assert (=> b!6286249 (= e!3822642 (Concat!25052 (h!71244 (exprs!6091 (h!71245 zl!343))) (generalisedConcat!1804 (t!378482 (exprs!6091 (h!71245 zl!343))))))))

(declare-fun b!6286250 () Bool)

(assert (=> b!6286250 (= e!3822644 (h!71244 (exprs!6091 (h!71245 zl!343))))))

(declare-fun b!6286251 () Bool)

(assert (=> b!6286251 (= e!3822646 e!3822647)))

(declare-fun c!1140423 () Bool)

(assert (=> b!6286251 (= c!1140423 (isEmpty!36845 (tail!11999 (exprs!6091 (h!71245 zl!343)))))))

(assert (= (and d!1972927 res!2592444) b!6286246))

(assert (= (and d!1972927 c!1140422) b!6286250))

(assert (= (and d!1972927 (not c!1140422)) b!6286248))

(assert (= (and b!6286248 c!1140420) b!6286249))

(assert (= (and b!6286248 (not c!1140420)) b!6286245))

(assert (= (and d!1972927 res!2592443) b!6286242))

(assert (= (and b!6286242 c!1140421) b!6286244))

(assert (= (and b!6286242 (not c!1140421)) b!6286251))

(assert (= (and b!6286251 c!1140423) b!6286247))

(assert (= (and b!6286251 (not c!1140423)) b!6286243))

(declare-fun m!7107034 () Bool)

(assert (=> b!6286242 m!7107034))

(assert (=> b!6286249 m!7106332))

(assert (=> b!6286246 m!7106276))

(declare-fun m!7107036 () Bool)

(assert (=> b!6286244 m!7107036))

(declare-fun m!7107038 () Bool)

(assert (=> b!6286247 m!7107038))

(declare-fun m!7107040 () Bool)

(assert (=> b!6286251 m!7107040))

(assert (=> b!6286251 m!7107040))

(declare-fun m!7107042 () Bool)

(assert (=> b!6286251 m!7107042))

(declare-fun m!7107044 () Bool)

(assert (=> d!1972927 m!7107044))

(declare-fun m!7107046 () Bool)

(assert (=> d!1972927 m!7107046))

(declare-fun m!7107048 () Bool)

(assert (=> b!6286243 m!7107048))

(assert (=> b!6285498 d!1972927))

(declare-fun bs!1571248 () Bool)

(declare-fun b!6286289 () Bool)

(assert (= bs!1571248 (and b!6286289 d!1972923)))

(declare-fun lambda!345056 () Int)

(assert (=> bs!1571248 (not (= lambda!345056 lambda!345047))))

(declare-fun bs!1571249 () Bool)

(assert (= bs!1571249 (and b!6286289 b!6285497)))

(assert (=> bs!1571249 (not (= lambda!345056 lambda!344971))))

(assert (=> bs!1571248 (not (= lambda!345056 lambda!345048))))

(declare-fun bs!1571250 () Bool)

(assert (= bs!1571250 (and b!6286289 d!1972917)))

(assert (=> bs!1571250 (not (= lambda!345056 lambda!345042))))

(declare-fun bs!1571251 () Bool)

(assert (= bs!1571251 (and b!6286289 b!6285508)))

(assert (=> bs!1571251 (not (= lambda!345056 lambda!344973))))

(assert (=> bs!1571249 (not (= lambda!345056 lambda!344970))))

(assert (=> bs!1571251 (not (= lambda!345056 lambda!344975))))

(assert (=> bs!1571251 (not (= lambda!345056 lambda!344974))))

(assert (=> b!6286289 true))

(assert (=> b!6286289 true))

(declare-fun bs!1571252 () Bool)

(declare-fun b!6286294 () Bool)

(assert (= bs!1571252 (and b!6286294 b!6285497)))

(declare-fun lambda!345057 () Int)

(assert (=> bs!1571252 (= lambda!345057 lambda!344971)))

(declare-fun bs!1571253 () Bool)

(assert (= bs!1571253 (and b!6286294 d!1972923)))

(assert (=> bs!1571253 (= lambda!345057 lambda!345048)))

(declare-fun bs!1571254 () Bool)

(assert (= bs!1571254 (and b!6286294 d!1972917)))

(assert (=> bs!1571254 (not (= lambda!345057 lambda!345042))))

(declare-fun bs!1571255 () Bool)

(assert (= bs!1571255 (and b!6286294 b!6285508)))

(assert (=> bs!1571255 (not (= lambda!345057 lambda!344973))))

(assert (=> bs!1571252 (not (= lambda!345057 lambda!344970))))

(assert (=> bs!1571255 (not (= lambda!345057 lambda!344975))))

(assert (=> bs!1571255 (= (and (= (regOne!32926 r!7292) (regOne!32926 (regOne!32926 r!7292))) (= (regTwo!32926 r!7292) lt!2355648)) (= lambda!345057 lambda!344974))))

(declare-fun bs!1571256 () Bool)

(assert (= bs!1571256 (and b!6286294 b!6286289)))

(assert (=> bs!1571256 (not (= lambda!345057 lambda!345056))))

(assert (=> bs!1571253 (not (= lambda!345057 lambda!345047))))

(assert (=> b!6286294 true))

(assert (=> b!6286294 true))

(declare-fun b!6286284 () Bool)

(declare-fun e!3822672 () Bool)

(declare-fun e!3822669 () Bool)

(assert (=> b!6286284 (= e!3822672 e!3822669)))

(declare-fun res!2592462 () Bool)

(assert (=> b!6286284 (= res!2592462 (matchRSpec!3308 (regOne!32927 r!7292) s!2326))))

(assert (=> b!6286284 (=> res!2592462 e!3822669)))

(declare-fun b!6286285 () Bool)

(declare-fun e!3822670 () Bool)

(declare-fun call!532231 () Bool)

(assert (=> b!6286285 (= e!3822670 call!532231)))

(declare-fun b!6286286 () Bool)

(declare-fun res!2592461 () Bool)

(declare-fun e!3822668 () Bool)

(assert (=> b!6286286 (=> res!2592461 e!3822668)))

(assert (=> b!6286286 (= res!2592461 call!532231)))

(declare-fun e!3822671 () Bool)

(assert (=> b!6286286 (= e!3822671 e!3822668)))

(declare-fun b!6286287 () Bool)

(declare-fun c!1140434 () Bool)

(assert (=> b!6286287 (= c!1140434 ((_ is Union!16207) r!7292))))

(declare-fun e!3822666 () Bool)

(assert (=> b!6286287 (= e!3822666 e!3822672)))

(declare-fun b!6286288 () Bool)

(assert (=> b!6286288 (= e!3822672 e!3822671)))

(declare-fun c!1140433 () Bool)

(assert (=> b!6286288 (= c!1140433 ((_ is Star!16207) r!7292))))

(declare-fun call!532230 () Bool)

(assert (=> b!6286289 (= e!3822668 call!532230)))

(declare-fun b!6286291 () Bool)

(declare-fun c!1140435 () Bool)

(assert (=> b!6286291 (= c!1140435 ((_ is ElementMatch!16207) r!7292))))

(declare-fun e!3822667 () Bool)

(assert (=> b!6286291 (= e!3822667 e!3822666)))

(declare-fun b!6286292 () Bool)

(assert (=> b!6286292 (= e!3822666 (= s!2326 (Cons!64798 (c!1140190 r!7292) Nil!64798)))))

(declare-fun bm!532225 () Bool)

(assert (=> bm!532225 (= call!532231 (isEmpty!36849 s!2326))))

(declare-fun b!6286293 () Bool)

(assert (=> b!6286293 (= e!3822670 e!3822667)))

(declare-fun res!2592463 () Bool)

(assert (=> b!6286293 (= res!2592463 (not ((_ is EmptyLang!16207) r!7292)))))

(assert (=> b!6286293 (=> (not res!2592463) (not e!3822667))))

(declare-fun b!6286290 () Bool)

(assert (=> b!6286290 (= e!3822669 (matchRSpec!3308 (regTwo!32927 r!7292) s!2326))))

(declare-fun d!1972929 () Bool)

(declare-fun c!1140432 () Bool)

(assert (=> d!1972929 (= c!1140432 ((_ is EmptyExpr!16207) r!7292))))

(assert (=> d!1972929 (= (matchRSpec!3308 r!7292 s!2326) e!3822670)))

(assert (=> b!6286294 (= e!3822671 call!532230)))

(declare-fun bm!532226 () Bool)

(assert (=> bm!532226 (= call!532230 (Exists!3277 (ite c!1140433 lambda!345056 lambda!345057)))))

(assert (= (and d!1972929 c!1140432) b!6286285))

(assert (= (and d!1972929 (not c!1140432)) b!6286293))

(assert (= (and b!6286293 res!2592463) b!6286291))

(assert (= (and b!6286291 c!1140435) b!6286292))

(assert (= (and b!6286291 (not c!1140435)) b!6286287))

(assert (= (and b!6286287 c!1140434) b!6286284))

(assert (= (and b!6286287 (not c!1140434)) b!6286288))

(assert (= (and b!6286284 (not res!2592462)) b!6286290))

(assert (= (and b!6286288 c!1140433) b!6286286))

(assert (= (and b!6286288 (not c!1140433)) b!6286294))

(assert (= (and b!6286286 (not res!2592461)) b!6286289))

(assert (= (or b!6286289 b!6286294) bm!532226))

(assert (= (or b!6286285 b!6286286) bm!532225))

(declare-fun m!7107050 () Bool)

(assert (=> b!6286284 m!7107050))

(declare-fun m!7107052 () Bool)

(assert (=> bm!532225 m!7107052))

(declare-fun m!7107054 () Bool)

(assert (=> b!6286290 m!7107054))

(declare-fun m!7107056 () Bool)

(assert (=> bm!532226 m!7107056))

(assert (=> b!6285511 d!1972929))

(declare-fun b!6286323 () Bool)

(declare-fun e!3822692 () Bool)

(declare-fun e!3822687 () Bool)

(assert (=> b!6286323 (= e!3822692 e!3822687)))

(declare-fun res!2592486 () Bool)

(assert (=> b!6286323 (=> (not res!2592486) (not e!3822687))))

(declare-fun lt!2355803 () Bool)

(assert (=> b!6286323 (= res!2592486 (not lt!2355803))))

(declare-fun b!6286324 () Bool)

(declare-fun res!2592483 () Bool)

(declare-fun e!3822689 () Bool)

(assert (=> b!6286324 (=> (not res!2592483) (not e!3822689))))

(declare-fun call!532234 () Bool)

(assert (=> b!6286324 (= res!2592483 (not call!532234))))

(declare-fun b!6286325 () Bool)

(declare-fun res!2592484 () Bool)

(assert (=> b!6286325 (=> (not res!2592484) (not e!3822689))))

(assert (=> b!6286325 (= res!2592484 (isEmpty!36849 (tail!12000 s!2326)))))

(declare-fun b!6286326 () Bool)

(declare-fun e!3822690 () Bool)

(declare-fun e!3822691 () Bool)

(assert (=> b!6286326 (= e!3822690 e!3822691)))

(declare-fun c!1140443 () Bool)

(assert (=> b!6286326 (= c!1140443 ((_ is EmptyLang!16207) r!7292))))

(declare-fun b!6286327 () Bool)

(assert (=> b!6286327 (= e!3822689 (= (head!12915 s!2326) (c!1140190 r!7292)))))

(declare-fun b!6286328 () Bool)

(declare-fun e!3822693 () Bool)

(declare-fun derivativeStep!4916 (Regex!16207 C!32684) Regex!16207)

(assert (=> b!6286328 (= e!3822693 (matchR!8390 (derivativeStep!4916 r!7292 (head!12915 s!2326)) (tail!12000 s!2326)))))

(declare-fun bm!532229 () Bool)

(assert (=> bm!532229 (= call!532234 (isEmpty!36849 s!2326))))

(declare-fun b!6286330 () Bool)

(assert (=> b!6286330 (= e!3822690 (= lt!2355803 call!532234))))

(declare-fun b!6286331 () Bool)

(declare-fun res!2592480 () Bool)

(declare-fun e!3822688 () Bool)

(assert (=> b!6286331 (=> res!2592480 e!3822688)))

(assert (=> b!6286331 (= res!2592480 (not (isEmpty!36849 (tail!12000 s!2326))))))

(declare-fun b!6286332 () Bool)

(declare-fun res!2592485 () Bool)

(assert (=> b!6286332 (=> res!2592485 e!3822692)))

(assert (=> b!6286332 (= res!2592485 (not ((_ is ElementMatch!16207) r!7292)))))

(assert (=> b!6286332 (= e!3822691 e!3822692)))

(declare-fun b!6286333 () Bool)

(assert (=> b!6286333 (= e!3822693 (nullable!6200 r!7292))))

(declare-fun b!6286334 () Bool)

(assert (=> b!6286334 (= e!3822691 (not lt!2355803))))

(declare-fun b!6286329 () Bool)

(assert (=> b!6286329 (= e!3822687 e!3822688)))

(declare-fun res!2592481 () Bool)

(assert (=> b!6286329 (=> res!2592481 e!3822688)))

(assert (=> b!6286329 (= res!2592481 call!532234)))

(declare-fun d!1972931 () Bool)

(assert (=> d!1972931 e!3822690))

(declare-fun c!1140444 () Bool)

(assert (=> d!1972931 (= c!1140444 ((_ is EmptyExpr!16207) r!7292))))

(assert (=> d!1972931 (= lt!2355803 e!3822693)))

(declare-fun c!1140442 () Bool)

(assert (=> d!1972931 (= c!1140442 (isEmpty!36849 s!2326))))

(assert (=> d!1972931 (validRegex!7943 r!7292)))

(assert (=> d!1972931 (= (matchR!8390 r!7292 s!2326) lt!2355803)))

(declare-fun b!6286335 () Bool)

(assert (=> b!6286335 (= e!3822688 (not (= (head!12915 s!2326) (c!1140190 r!7292))))))

(declare-fun b!6286336 () Bool)

(declare-fun res!2592487 () Bool)

(assert (=> b!6286336 (=> res!2592487 e!3822692)))

(assert (=> b!6286336 (= res!2592487 e!3822689)))

(declare-fun res!2592482 () Bool)

(assert (=> b!6286336 (=> (not res!2592482) (not e!3822689))))

(assert (=> b!6286336 (= res!2592482 lt!2355803)))

(assert (= (and d!1972931 c!1140442) b!6286333))

(assert (= (and d!1972931 (not c!1140442)) b!6286328))

(assert (= (and d!1972931 c!1140444) b!6286330))

(assert (= (and d!1972931 (not c!1140444)) b!6286326))

(assert (= (and b!6286326 c!1140443) b!6286334))

(assert (= (and b!6286326 (not c!1140443)) b!6286332))

(assert (= (and b!6286332 (not res!2592485)) b!6286336))

(assert (= (and b!6286336 res!2592482) b!6286324))

(assert (= (and b!6286324 res!2592483) b!6286325))

(assert (= (and b!6286325 res!2592484) b!6286327))

(assert (= (and b!6286336 (not res!2592487)) b!6286323))

(assert (= (and b!6286323 res!2592486) b!6286329))

(assert (= (and b!6286329 (not res!2592481)) b!6286331))

(assert (= (and b!6286331 (not res!2592480)) b!6286335))

(assert (= (or b!6286330 b!6286324 b!6286329) bm!532229))

(declare-fun m!7107058 () Bool)

(assert (=> b!6286328 m!7107058))

(assert (=> b!6286328 m!7107058))

(declare-fun m!7107060 () Bool)

(assert (=> b!6286328 m!7107060))

(declare-fun m!7107062 () Bool)

(assert (=> b!6286328 m!7107062))

(assert (=> b!6286328 m!7107060))

(assert (=> b!6286328 m!7107062))

(declare-fun m!7107064 () Bool)

(assert (=> b!6286328 m!7107064))

(assert (=> b!6286335 m!7107058))

(assert (=> b!6286331 m!7107062))

(assert (=> b!6286331 m!7107062))

(declare-fun m!7107066 () Bool)

(assert (=> b!6286331 m!7107066))

(assert (=> b!6286325 m!7107062))

(assert (=> b!6286325 m!7107062))

(assert (=> b!6286325 m!7107066))

(declare-fun m!7107068 () Bool)

(assert (=> b!6286333 m!7107068))

(assert (=> bm!532229 m!7107052))

(assert (=> b!6286327 m!7107058))

(assert (=> d!1972931 m!7107052))

(assert (=> d!1972931 m!7106298))

(assert (=> b!6285511 d!1972931))

(declare-fun d!1972933 () Bool)

(assert (=> d!1972933 (= (matchR!8390 r!7292 s!2326) (matchRSpec!3308 r!7292 s!2326))))

(declare-fun lt!2355806 () Unit!158159)

(declare-fun choose!46685 (Regex!16207 List!64922) Unit!158159)

(assert (=> d!1972933 (= lt!2355806 (choose!46685 r!7292 s!2326))))

(assert (=> d!1972933 (validRegex!7943 r!7292)))

(assert (=> d!1972933 (= (mainMatchTheorem!3308 r!7292 s!2326) lt!2355806)))

(declare-fun bs!1571257 () Bool)

(assert (= bs!1571257 d!1972933))

(assert (=> bs!1571257 m!7106378))

(assert (=> bs!1571257 m!7106376))

(declare-fun m!7107070 () Bool)

(assert (=> bs!1571257 m!7107070))

(assert (=> bs!1571257 m!7106298))

(assert (=> b!6285511 d!1972933))

(declare-fun d!1972935 () Bool)

(assert (=> d!1972935 (= (isEmpty!36845 (t!378482 (exprs!6091 (h!71245 zl!343)))) ((_ is Nil!64796) (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(assert (=> b!6285490 d!1972935))

(declare-fun d!1972937 () Bool)

(declare-fun lt!2355809 () Int)

(assert (=> d!1972937 (>= lt!2355809 0)))

(declare-fun e!3822696 () Int)

(assert (=> d!1972937 (= lt!2355809 e!3822696)))

(declare-fun c!1140447 () Bool)

(assert (=> d!1972937 (= c!1140447 ((_ is Cons!64797) lt!2355667))))

(assert (=> d!1972937 (= (zipperDepthTotal!360 lt!2355667) lt!2355809)))

(declare-fun b!6286341 () Bool)

(assert (=> b!6286341 (= e!3822696 (+ (contextDepthTotal!330 (h!71245 lt!2355667)) (zipperDepthTotal!360 (t!378483 lt!2355667))))))

(declare-fun b!6286342 () Bool)

(assert (=> b!6286342 (= e!3822696 0)))

(assert (= (and d!1972937 c!1140447) b!6286341))

(assert (= (and d!1972937 (not c!1140447)) b!6286342))

(declare-fun m!7107072 () Bool)

(assert (=> b!6286341 m!7107072))

(declare-fun m!7107074 () Bool)

(assert (=> b!6286341 m!7107074))

(assert (=> b!6285493 d!1972937))

(declare-fun d!1972939 () Bool)

(declare-fun lt!2355810 () Int)

(assert (=> d!1972939 (>= lt!2355810 0)))

(declare-fun e!3822697 () Int)

(assert (=> d!1972939 (= lt!2355810 e!3822697)))

(declare-fun c!1140448 () Bool)

(assert (=> d!1972939 (= c!1140448 ((_ is Cons!64797) zl!343))))

(assert (=> d!1972939 (= (zipperDepthTotal!360 zl!343) lt!2355810)))

(declare-fun b!6286343 () Bool)

(assert (=> b!6286343 (= e!3822697 (+ (contextDepthTotal!330 (h!71245 zl!343)) (zipperDepthTotal!360 (t!378483 zl!343))))))

(declare-fun b!6286344 () Bool)

(assert (=> b!6286344 (= e!3822697 0)))

(assert (= (and d!1972939 c!1140448) b!6286343))

(assert (= (and d!1972939 (not c!1140448)) b!6286344))

(assert (=> b!6286343 m!7106364))

(declare-fun m!7107076 () Bool)

(assert (=> b!6286343 m!7107076))

(assert (=> b!6285493 d!1972939))

(declare-fun bs!1571258 () Bool)

(declare-fun d!1972941 () Bool)

(assert (= bs!1571258 (and d!1972941 d!1972899)))

(declare-fun lambda!345060 () Int)

(assert (=> bs!1571258 (= lambda!345060 lambda!345033)))

(declare-fun bs!1571259 () Bool)

(assert (= bs!1571259 (and d!1972941 d!1972901)))

(assert (=> bs!1571259 (= lambda!345060 lambda!345036)))

(declare-fun bs!1571260 () Bool)

(assert (= bs!1571260 (and d!1972941 d!1972927)))

(assert (=> bs!1571260 (= lambda!345060 lambda!345051)))

(assert (=> d!1972941 (= (inv!83764 (h!71245 zl!343)) (forall!15350 (exprs!6091 (h!71245 zl!343)) lambda!345060))))

(declare-fun bs!1571261 () Bool)

(assert (= bs!1571261 d!1972941))

(declare-fun m!7107078 () Bool)

(assert (=> bs!1571261 m!7107078))

(assert (=> b!6285514 d!1972941))

(declare-fun b!6286351 () Bool)

(assert (=> b!6286351 true))

(declare-fun bs!1571262 () Bool)

(declare-fun b!6286353 () Bool)

(assert (= bs!1571262 (and b!6286353 b!6286351)))

(declare-fun lambda!345068 () Int)

(declare-fun lambda!345069 () Int)

(declare-fun lt!2355822 () Int)

(declare-fun lt!2355821 () Int)

(assert (=> bs!1571262 (= (= lt!2355821 lt!2355822) (= lambda!345069 lambda!345068))))

(assert (=> b!6286353 true))

(declare-fun d!1972943 () Bool)

(declare-fun e!3822702 () Bool)

(assert (=> d!1972943 e!3822702))

(declare-fun res!2592490 () Bool)

(assert (=> d!1972943 (=> (not res!2592490) (not e!3822702))))

(assert (=> d!1972943 (= res!2592490 (>= lt!2355821 0))))

(declare-fun e!3822703 () Int)

(assert (=> d!1972943 (= lt!2355821 e!3822703)))

(declare-fun c!1140457 () Bool)

(assert (=> d!1972943 (= c!1140457 ((_ is Cons!64797) lt!2355667))))

(assert (=> d!1972943 (= (zipperDepth!332 lt!2355667) lt!2355821)))

(assert (=> b!6286351 (= e!3822703 lt!2355822)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!223 (Context!11182) Int)

(assert (=> b!6286351 (= lt!2355822 (maxBigInt!0 (contextDepth!223 (h!71245 lt!2355667)) (zipperDepth!332 (t!378483 lt!2355667))))))

(declare-fun lambda!345067 () Int)

(declare-fun lt!2355820 () Unit!158159)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!207 (List!64921 Int Int Int) Unit!158159)

(assert (=> b!6286351 (= lt!2355820 (lemmaForallContextDepthBiggerThanTransitive!207 (t!378483 lt!2355667) lt!2355822 (zipperDepth!332 (t!378483 lt!2355667)) lambda!345067))))

(declare-fun forall!15351 (List!64921 Int) Bool)

(assert (=> b!6286351 (forall!15351 (t!378483 lt!2355667) lambda!345068)))

(declare-fun lt!2355819 () Unit!158159)

(assert (=> b!6286351 (= lt!2355819 lt!2355820)))

(declare-fun b!6286352 () Bool)

(assert (=> b!6286352 (= e!3822703 0)))

(assert (=> b!6286353 (= e!3822702 (forall!15351 lt!2355667 lambda!345069))))

(assert (= (and d!1972943 c!1140457) b!6286351))

(assert (= (and d!1972943 (not c!1140457)) b!6286352))

(assert (= (and d!1972943 res!2592490) b!6286353))

(declare-fun m!7107080 () Bool)

(assert (=> b!6286351 m!7107080))

(declare-fun m!7107082 () Bool)

(assert (=> b!6286351 m!7107082))

(assert (=> b!6286351 m!7107080))

(declare-fun m!7107084 () Bool)

(assert (=> b!6286351 m!7107084))

(declare-fun m!7107086 () Bool)

(assert (=> b!6286351 m!7107086))

(assert (=> b!6286351 m!7107082))

(assert (=> b!6286351 m!7107080))

(declare-fun m!7107088 () Bool)

(assert (=> b!6286351 m!7107088))

(declare-fun m!7107090 () Bool)

(assert (=> b!6286353 m!7107090))

(assert (=> b!6285494 d!1972943))

(declare-fun bs!1571263 () Bool)

(declare-fun b!6286356 () Bool)

(assert (= bs!1571263 (and b!6286356 b!6286351)))

(declare-fun lambda!345070 () Int)

(assert (=> bs!1571263 (= lambda!345070 lambda!345067)))

(declare-fun lt!2355826 () Int)

(declare-fun lambda!345071 () Int)

(assert (=> bs!1571263 (= (= lt!2355826 lt!2355822) (= lambda!345071 lambda!345068))))

(declare-fun bs!1571264 () Bool)

(assert (= bs!1571264 (and b!6286356 b!6286353)))

(assert (=> bs!1571264 (= (= lt!2355826 lt!2355821) (= lambda!345071 lambda!345069))))

(assert (=> b!6286356 true))

(declare-fun bs!1571265 () Bool)

(declare-fun b!6286358 () Bool)

(assert (= bs!1571265 (and b!6286358 b!6286351)))

(declare-fun lambda!345072 () Int)

(declare-fun lt!2355825 () Int)

(assert (=> bs!1571265 (= (= lt!2355825 lt!2355822) (= lambda!345072 lambda!345068))))

(declare-fun bs!1571266 () Bool)

(assert (= bs!1571266 (and b!6286358 b!6286353)))

(assert (=> bs!1571266 (= (= lt!2355825 lt!2355821) (= lambda!345072 lambda!345069))))

(declare-fun bs!1571267 () Bool)

(assert (= bs!1571267 (and b!6286358 b!6286356)))

(assert (=> bs!1571267 (= (= lt!2355825 lt!2355826) (= lambda!345072 lambda!345071))))

(assert (=> b!6286358 true))

(declare-fun d!1972945 () Bool)

(declare-fun e!3822704 () Bool)

(assert (=> d!1972945 e!3822704))

(declare-fun res!2592491 () Bool)

(assert (=> d!1972945 (=> (not res!2592491) (not e!3822704))))

(assert (=> d!1972945 (= res!2592491 (>= lt!2355825 0))))

(declare-fun e!3822705 () Int)

(assert (=> d!1972945 (= lt!2355825 e!3822705)))

(declare-fun c!1140458 () Bool)

(assert (=> d!1972945 (= c!1140458 ((_ is Cons!64797) zl!343))))

(assert (=> d!1972945 (= (zipperDepth!332 zl!343) lt!2355825)))

(assert (=> b!6286356 (= e!3822705 lt!2355826)))

(assert (=> b!6286356 (= lt!2355826 (maxBigInt!0 (contextDepth!223 (h!71245 zl!343)) (zipperDepth!332 (t!378483 zl!343))))))

(declare-fun lt!2355824 () Unit!158159)

(assert (=> b!6286356 (= lt!2355824 (lemmaForallContextDepthBiggerThanTransitive!207 (t!378483 zl!343) lt!2355826 (zipperDepth!332 (t!378483 zl!343)) lambda!345070))))

(assert (=> b!6286356 (forall!15351 (t!378483 zl!343) lambda!345071)))

(declare-fun lt!2355823 () Unit!158159)

(assert (=> b!6286356 (= lt!2355823 lt!2355824)))

(declare-fun b!6286357 () Bool)

(assert (=> b!6286357 (= e!3822705 0)))

(assert (=> b!6286358 (= e!3822704 (forall!15351 zl!343 lambda!345072))))

(assert (= (and d!1972945 c!1140458) b!6286356))

(assert (= (and d!1972945 (not c!1140458)) b!6286357))

(assert (= (and d!1972945 res!2592491) b!6286358))

(declare-fun m!7107092 () Bool)

(assert (=> b!6286356 m!7107092))

(declare-fun m!7107094 () Bool)

(assert (=> b!6286356 m!7107094))

(assert (=> b!6286356 m!7107092))

(declare-fun m!7107096 () Bool)

(assert (=> b!6286356 m!7107096))

(declare-fun m!7107098 () Bool)

(assert (=> b!6286356 m!7107098))

(assert (=> b!6286356 m!7107094))

(assert (=> b!6286356 m!7107092))

(declare-fun m!7107100 () Bool)

(assert (=> b!6286356 m!7107100))

(declare-fun m!7107102 () Bool)

(assert (=> b!6286358 m!7107102))

(assert (=> b!6285494 d!1972945))

(declare-fun b!6286359 () Bool)

(declare-fun e!3822706 () (InoxSet Context!11182))

(assert (=> b!6286359 (= e!3822706 (store ((as const (Array Context!11182 Bool)) false) lt!2355678 true))))

(declare-fun bm!532230 () Bool)

(declare-fun call!532236 () (InoxSet Context!11182))

(declare-fun call!532237 () (InoxSet Context!11182))

(assert (=> bm!532230 (= call!532236 call!532237)))

(declare-fun b!6286360 () Bool)

(declare-fun e!3822709 () Bool)

(assert (=> b!6286360 (= e!3822709 (nullable!6200 (regOne!32926 (h!71244 (exprs!6091 (h!71245 zl!343))))))))

(declare-fun bm!532231 () Bool)

(declare-fun call!532239 () List!64920)

(declare-fun call!532235 () List!64920)

(assert (=> bm!532231 (= call!532239 call!532235)))

(declare-fun call!532240 () (InoxSet Context!11182))

(declare-fun bm!532232 () Bool)

(declare-fun c!1140462 () Bool)

(assert (=> bm!532232 (= call!532240 (derivationStepZipperDown!1455 (ite c!1140462 (regTwo!32927 (h!71244 (exprs!6091 (h!71245 zl!343)))) (regOne!32926 (h!71244 (exprs!6091 (h!71245 zl!343))))) (ite c!1140462 lt!2355678 (Context!11183 call!532235)) (h!71246 s!2326)))))

(declare-fun d!1972947 () Bool)

(declare-fun c!1140459 () Bool)

(assert (=> d!1972947 (= c!1140459 (and ((_ is ElementMatch!16207) (h!71244 (exprs!6091 (h!71245 zl!343)))) (= (c!1140190 (h!71244 (exprs!6091 (h!71245 zl!343)))) (h!71246 s!2326))))))

(assert (=> d!1972947 (= (derivationStepZipperDown!1455 (h!71244 (exprs!6091 (h!71245 zl!343))) lt!2355678 (h!71246 s!2326)) e!3822706)))

(declare-fun bm!532233 () Bool)

(declare-fun call!532238 () (InoxSet Context!11182))

(assert (=> bm!532233 (= call!532238 call!532236)))

(declare-fun b!6286361 () Bool)

(declare-fun e!3822711 () (InoxSet Context!11182))

(assert (=> b!6286361 (= e!3822711 call!532238)))

(declare-fun b!6286362 () Bool)

(declare-fun e!3822707 () (InoxSet Context!11182))

(assert (=> b!6286362 (= e!3822706 e!3822707)))

(assert (=> b!6286362 (= c!1140462 ((_ is Union!16207) (h!71244 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286363 () Bool)

(declare-fun c!1140461 () Bool)

(assert (=> b!6286363 (= c!1140461 e!3822709)))

(declare-fun res!2592492 () Bool)

(assert (=> b!6286363 (=> (not res!2592492) (not e!3822709))))

(assert (=> b!6286363 (= res!2592492 ((_ is Concat!25052) (h!71244 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun e!3822710 () (InoxSet Context!11182))

(assert (=> b!6286363 (= e!3822707 e!3822710)))

(declare-fun b!6286364 () Bool)

(declare-fun e!3822708 () (InoxSet Context!11182))

(assert (=> b!6286364 (= e!3822708 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286365 () Bool)

(assert (=> b!6286365 (= e!3822710 e!3822711)))

(declare-fun c!1140460 () Bool)

(assert (=> b!6286365 (= c!1140460 ((_ is Concat!25052) (h!71244 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286366 () Bool)

(assert (=> b!6286366 (= e!3822707 ((_ map or) call!532237 call!532240))))

(declare-fun b!6286367 () Bool)

(assert (=> b!6286367 (= e!3822708 call!532238)))

(declare-fun bm!532234 () Bool)

(assert (=> bm!532234 (= call!532237 (derivationStepZipperDown!1455 (ite c!1140462 (regOne!32927 (h!71244 (exprs!6091 (h!71245 zl!343)))) (ite c!1140461 (regTwo!32926 (h!71244 (exprs!6091 (h!71245 zl!343)))) (ite c!1140460 (regOne!32926 (h!71244 (exprs!6091 (h!71245 zl!343)))) (reg!16536 (h!71244 (exprs!6091 (h!71245 zl!343))))))) (ite (or c!1140462 c!1140461) lt!2355678 (Context!11183 call!532239)) (h!71246 s!2326)))))

(declare-fun b!6286368 () Bool)

(assert (=> b!6286368 (= e!3822710 ((_ map or) call!532240 call!532236))))

(declare-fun bm!532235 () Bool)

(assert (=> bm!532235 (= call!532235 ($colon$colon!2072 (exprs!6091 lt!2355678) (ite (or c!1140461 c!1140460) (regTwo!32926 (h!71244 (exprs!6091 (h!71245 zl!343)))) (h!71244 (exprs!6091 (h!71245 zl!343))))))))

(declare-fun b!6286369 () Bool)

(declare-fun c!1140463 () Bool)

(assert (=> b!6286369 (= c!1140463 ((_ is Star!16207) (h!71244 (exprs!6091 (h!71245 zl!343)))))))

(assert (=> b!6286369 (= e!3822711 e!3822708)))

(assert (= (and d!1972947 c!1140459) b!6286359))

(assert (= (and d!1972947 (not c!1140459)) b!6286362))

(assert (= (and b!6286362 c!1140462) b!6286366))

(assert (= (and b!6286362 (not c!1140462)) b!6286363))

(assert (= (and b!6286363 res!2592492) b!6286360))

(assert (= (and b!6286363 c!1140461) b!6286368))

(assert (= (and b!6286363 (not c!1140461)) b!6286365))

(assert (= (and b!6286365 c!1140460) b!6286361))

(assert (= (and b!6286365 (not c!1140460)) b!6286369))

(assert (= (and b!6286369 c!1140463) b!6286367))

(assert (= (and b!6286369 (not c!1140463)) b!6286364))

(assert (= (or b!6286361 b!6286367) bm!532231))

(assert (= (or b!6286361 b!6286367) bm!532233))

(assert (= (or b!6286368 bm!532231) bm!532235))

(assert (= (or b!6286368 bm!532233) bm!532230))

(assert (= (or b!6286366 b!6286368) bm!532232))

(assert (= (or b!6286366 bm!532230) bm!532234))

(declare-fun m!7107104 () Bool)

(assert (=> b!6286360 m!7107104))

(declare-fun m!7107106 () Bool)

(assert (=> bm!532234 m!7107106))

(declare-fun m!7107108 () Bool)

(assert (=> bm!532235 m!7107108))

(assert (=> b!6286359 m!7106918))

(declare-fun m!7107110 () Bool)

(assert (=> bm!532232 m!7107110))

(assert (=> b!6285512 d!1972947))

(declare-fun d!1972949 () Bool)

(assert (=> d!1972949 (= (nullable!6200 (h!71244 (exprs!6091 (h!71245 zl!343)))) (nullableFct!2151 (h!71244 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun bs!1571268 () Bool)

(assert (= bs!1571268 d!1972949))

(declare-fun m!7107112 () Bool)

(assert (=> bs!1571268 m!7107112))

(assert (=> b!6285512 d!1972949))

(declare-fun b!6286380 () Bool)

(declare-fun e!3822719 () (InoxSet Context!11182))

(declare-fun call!532243 () (InoxSet Context!11182))

(assert (=> b!6286380 (= e!3822719 call!532243)))

(declare-fun b!6286381 () Bool)

(declare-fun e!3822720 () Bool)

(assert (=> b!6286381 (= e!3822720 (nullable!6200 (h!71244 (exprs!6091 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343)))))))))))

(declare-fun b!6286382 () Bool)

(assert (=> b!6286382 (= e!3822719 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286383 () Bool)

(declare-fun e!3822718 () (InoxSet Context!11182))

(assert (=> b!6286383 (= e!3822718 e!3822719)))

(declare-fun c!1140468 () Bool)

(assert (=> b!6286383 (= c!1140468 ((_ is Cons!64796) (exprs!6091 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343))))))))))

(declare-fun b!6286384 () Bool)

(assert (=> b!6286384 (= e!3822718 ((_ map or) call!532243 (derivationStepZipperUp!1381 (Context!11183 (t!378482 (exprs!6091 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343)))))))) (h!71246 s!2326))))))

(declare-fun d!1972951 () Bool)

(declare-fun c!1140469 () Bool)

(assert (=> d!1972951 (= c!1140469 e!3822720)))

(declare-fun res!2592495 () Bool)

(assert (=> d!1972951 (=> (not res!2592495) (not e!3822720))))

(assert (=> d!1972951 (= res!2592495 ((_ is Cons!64796) (exprs!6091 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343))))))))))

(assert (=> d!1972951 (= (derivationStepZipperUp!1381 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343))))) (h!71246 s!2326)) e!3822718)))

(declare-fun bm!532238 () Bool)

(assert (=> bm!532238 (= call!532243 (derivationStepZipperDown!1455 (h!71244 (exprs!6091 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343))))))) (Context!11183 (t!378482 (exprs!6091 (Context!11183 (Cons!64796 (h!71244 (exprs!6091 (h!71245 zl!343))) (t!378482 (exprs!6091 (h!71245 zl!343)))))))) (h!71246 s!2326)))))

(assert (= (and d!1972951 res!2592495) b!6286381))

(assert (= (and d!1972951 c!1140469) b!6286384))

(assert (= (and d!1972951 (not c!1140469)) b!6286383))

(assert (= (and b!6286383 c!1140468) b!6286380))

(assert (= (and b!6286383 (not c!1140468)) b!6286382))

(assert (= (or b!6286384 b!6286380) bm!532238))

(declare-fun m!7107114 () Bool)

(assert (=> b!6286381 m!7107114))

(declare-fun m!7107116 () Bool)

(assert (=> b!6286384 m!7107116))

(declare-fun m!7107118 () Bool)

(assert (=> bm!532238 m!7107118))

(assert (=> b!6285512 d!1972951))

(declare-fun d!1972953 () Bool)

(declare-fun dynLambda!25641 (Int Context!11182) (InoxSet Context!11182))

(assert (=> d!1972953 (= (flatMap!1712 z!1189 lambda!344972) (dynLambda!25641 lambda!344972 (h!71245 zl!343)))))

(declare-fun lt!2355829 () Unit!158159)

(declare-fun choose!46687 ((InoxSet Context!11182) Context!11182 Int) Unit!158159)

(assert (=> d!1972953 (= lt!2355829 (choose!46687 z!1189 (h!71245 zl!343) lambda!344972))))

(assert (=> d!1972953 (= z!1189 (store ((as const (Array Context!11182 Bool)) false) (h!71245 zl!343) true))))

(assert (=> d!1972953 (= (lemmaFlatMapOnSingletonSet!1238 z!1189 (h!71245 zl!343) lambda!344972) lt!2355829)))

(declare-fun b_lambda!239281 () Bool)

(assert (=> (not b_lambda!239281) (not d!1972953)))

(declare-fun bs!1571269 () Bool)

(assert (= bs!1571269 d!1972953))

(assert (=> bs!1571269 m!7106392))

(declare-fun m!7107120 () Bool)

(assert (=> bs!1571269 m!7107120))

(declare-fun m!7107122 () Bool)

(assert (=> bs!1571269 m!7107122))

(declare-fun m!7107124 () Bool)

(assert (=> bs!1571269 m!7107124))

(assert (=> b!6285512 d!1972953))

(declare-fun b!6286385 () Bool)

(declare-fun e!3822722 () (InoxSet Context!11182))

(declare-fun call!532244 () (InoxSet Context!11182))

(assert (=> b!6286385 (= e!3822722 call!532244)))

(declare-fun b!6286386 () Bool)

(declare-fun e!3822723 () Bool)

(assert (=> b!6286386 (= e!3822723 (nullable!6200 (h!71244 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286387 () Bool)

(assert (=> b!6286387 (= e!3822722 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286388 () Bool)

(declare-fun e!3822721 () (InoxSet Context!11182))

(assert (=> b!6286388 (= e!3822721 e!3822722)))

(declare-fun c!1140470 () Bool)

(assert (=> b!6286388 (= c!1140470 ((_ is Cons!64796) (exprs!6091 (h!71245 zl!343))))))

(declare-fun b!6286389 () Bool)

(assert (=> b!6286389 (= e!3822721 ((_ map or) call!532244 (derivationStepZipperUp!1381 (Context!11183 (t!378482 (exprs!6091 (h!71245 zl!343)))) (h!71246 s!2326))))))

(declare-fun d!1972955 () Bool)

(declare-fun c!1140471 () Bool)

(assert (=> d!1972955 (= c!1140471 e!3822723)))

(declare-fun res!2592496 () Bool)

(assert (=> d!1972955 (=> (not res!2592496) (not e!3822723))))

(assert (=> d!1972955 (= res!2592496 ((_ is Cons!64796) (exprs!6091 (h!71245 zl!343))))))

(assert (=> d!1972955 (= (derivationStepZipperUp!1381 (h!71245 zl!343) (h!71246 s!2326)) e!3822721)))

(declare-fun bm!532239 () Bool)

(assert (=> bm!532239 (= call!532244 (derivationStepZipperDown!1455 (h!71244 (exprs!6091 (h!71245 zl!343))) (Context!11183 (t!378482 (exprs!6091 (h!71245 zl!343)))) (h!71246 s!2326)))))

(assert (= (and d!1972955 res!2592496) b!6286386))

(assert (= (and d!1972955 c!1140471) b!6286389))

(assert (= (and d!1972955 (not c!1140471)) b!6286388))

(assert (= (and b!6286388 c!1140470) b!6286385))

(assert (= (and b!6286388 (not c!1140470)) b!6286387))

(assert (= (or b!6286389 b!6286385) bm!532239))

(assert (=> b!6286386 m!7106400))

(declare-fun m!7107126 () Bool)

(assert (=> b!6286389 m!7107126))

(declare-fun m!7107128 () Bool)

(assert (=> bm!532239 m!7107128))

(assert (=> b!6285512 d!1972955))

(declare-fun d!1972957 () Bool)

(declare-fun choose!46688 ((InoxSet Context!11182) Int) (InoxSet Context!11182))

(assert (=> d!1972957 (= (flatMap!1712 z!1189 lambda!344972) (choose!46688 z!1189 lambda!344972))))

(declare-fun bs!1571270 () Bool)

(assert (= bs!1571270 d!1972957))

(declare-fun m!7107130 () Bool)

(assert (=> bs!1571270 m!7107130))

(assert (=> b!6285512 d!1972957))

(declare-fun b!6286390 () Bool)

(declare-fun e!3822725 () (InoxSet Context!11182))

(declare-fun call!532245 () (InoxSet Context!11182))

(assert (=> b!6286390 (= e!3822725 call!532245)))

(declare-fun b!6286391 () Bool)

(declare-fun e!3822726 () Bool)

(assert (=> b!6286391 (= e!3822726 (nullable!6200 (h!71244 (exprs!6091 lt!2355678))))))

(declare-fun b!6286392 () Bool)

(assert (=> b!6286392 (= e!3822725 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286393 () Bool)

(declare-fun e!3822724 () (InoxSet Context!11182))

(assert (=> b!6286393 (= e!3822724 e!3822725)))

(declare-fun c!1140472 () Bool)

(assert (=> b!6286393 (= c!1140472 ((_ is Cons!64796) (exprs!6091 lt!2355678)))))

(declare-fun b!6286394 () Bool)

(assert (=> b!6286394 (= e!3822724 ((_ map or) call!532245 (derivationStepZipperUp!1381 (Context!11183 (t!378482 (exprs!6091 lt!2355678))) (h!71246 s!2326))))))

(declare-fun d!1972959 () Bool)

(declare-fun c!1140473 () Bool)

(assert (=> d!1972959 (= c!1140473 e!3822726)))

(declare-fun res!2592497 () Bool)

(assert (=> d!1972959 (=> (not res!2592497) (not e!3822726))))

(assert (=> d!1972959 (= res!2592497 ((_ is Cons!64796) (exprs!6091 lt!2355678)))))

(assert (=> d!1972959 (= (derivationStepZipperUp!1381 lt!2355678 (h!71246 s!2326)) e!3822724)))

(declare-fun bm!532240 () Bool)

(assert (=> bm!532240 (= call!532245 (derivationStepZipperDown!1455 (h!71244 (exprs!6091 lt!2355678)) (Context!11183 (t!378482 (exprs!6091 lt!2355678))) (h!71246 s!2326)))))

(assert (= (and d!1972959 res!2592497) b!6286391))

(assert (= (and d!1972959 c!1140473) b!6286394))

(assert (= (and d!1972959 (not c!1140473)) b!6286393))

(assert (= (and b!6286393 c!1140472) b!6286390))

(assert (= (and b!6286393 (not c!1140472)) b!6286392))

(assert (= (or b!6286394 b!6286390) bm!532240))

(declare-fun m!7107132 () Bool)

(assert (=> b!6286391 m!7107132))

(declare-fun m!7107134 () Bool)

(assert (=> b!6286394 m!7107134))

(declare-fun m!7107136 () Bool)

(assert (=> bm!532240 m!7107136))

(assert (=> b!6285512 d!1972959))

(declare-fun d!1972961 () Bool)

(declare-fun e!3822729 () Bool)

(assert (=> d!1972961 (= (matchZipper!2219 ((_ map or) lt!2355651 lt!2355686) (t!378484 s!2326)) e!3822729)))

(declare-fun res!2592500 () Bool)

(assert (=> d!1972961 (=> res!2592500 e!3822729)))

(assert (=> d!1972961 (= res!2592500 (matchZipper!2219 lt!2355651 (t!378484 s!2326)))))

(declare-fun lt!2355832 () Unit!158159)

(declare-fun choose!46689 ((InoxSet Context!11182) (InoxSet Context!11182) List!64922) Unit!158159)

(assert (=> d!1972961 (= lt!2355832 (choose!46689 lt!2355651 lt!2355686 (t!378484 s!2326)))))

(assert (=> d!1972961 (= (lemmaZipperConcatMatchesSameAsBothZippers!1038 lt!2355651 lt!2355686 (t!378484 s!2326)) lt!2355832)))

(declare-fun b!6286397 () Bool)

(assert (=> b!6286397 (= e!3822729 (matchZipper!2219 lt!2355686 (t!378484 s!2326)))))

(assert (= (and d!1972961 (not res!2592500)) b!6286397))

(assert (=> d!1972961 m!7106406))

(assert (=> d!1972961 m!7106284))

(declare-fun m!7107138 () Bool)

(assert (=> d!1972961 m!7107138))

(assert (=> b!6286397 m!7106366))

(assert (=> b!6285492 d!1972961))

(declare-fun d!1972963 () Bool)

(declare-fun c!1140474 () Bool)

(assert (=> d!1972963 (= c!1140474 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822730 () Bool)

(assert (=> d!1972963 (= (matchZipper!2219 lt!2355651 (t!378484 s!2326)) e!3822730)))

(declare-fun b!6286398 () Bool)

(assert (=> b!6286398 (= e!3822730 (nullableZipper!1977 lt!2355651))))

(declare-fun b!6286399 () Bool)

(assert (=> b!6286399 (= e!3822730 (matchZipper!2219 (derivationStepZipper!2173 lt!2355651 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972963 c!1140474) b!6286398))

(assert (= (and d!1972963 (not c!1140474)) b!6286399))

(assert (=> d!1972963 m!7106962))

(declare-fun m!7107140 () Bool)

(assert (=> b!6286398 m!7107140))

(assert (=> b!6286399 m!7106966))

(assert (=> b!6286399 m!7106966))

(declare-fun m!7107142 () Bool)

(assert (=> b!6286399 m!7107142))

(assert (=> b!6286399 m!7106970))

(assert (=> b!6286399 m!7107142))

(assert (=> b!6286399 m!7106970))

(declare-fun m!7107144 () Bool)

(assert (=> b!6286399 m!7107144))

(assert (=> b!6285492 d!1972963))

(declare-fun d!1972965 () Bool)

(declare-fun c!1140475 () Bool)

(assert (=> d!1972965 (= c!1140475 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822731 () Bool)

(assert (=> d!1972965 (= (matchZipper!2219 ((_ map or) lt!2355651 lt!2355686) (t!378484 s!2326)) e!3822731)))

(declare-fun b!6286400 () Bool)

(assert (=> b!6286400 (= e!3822731 (nullableZipper!1977 ((_ map or) lt!2355651 lt!2355686)))))

(declare-fun b!6286401 () Bool)

(assert (=> b!6286401 (= e!3822731 (matchZipper!2219 (derivationStepZipper!2173 ((_ map or) lt!2355651 lt!2355686) (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972965 c!1140475) b!6286400))

(assert (= (and d!1972965 (not c!1140475)) b!6286401))

(assert (=> d!1972965 m!7106962))

(declare-fun m!7107146 () Bool)

(assert (=> b!6286400 m!7107146))

(assert (=> b!6286401 m!7106966))

(assert (=> b!6286401 m!7106966))

(declare-fun m!7107148 () Bool)

(assert (=> b!6286401 m!7107148))

(assert (=> b!6286401 m!7106970))

(assert (=> b!6286401 m!7107148))

(assert (=> b!6286401 m!7106970))

(declare-fun m!7107150 () Bool)

(assert (=> b!6286401 m!7107150))

(assert (=> b!6285492 d!1972965))

(declare-fun d!1972967 () Bool)

(declare-fun lt!2355835 () Int)

(assert (=> d!1972967 (>= lt!2355835 0)))

(declare-fun e!3822734 () Int)

(assert (=> d!1972967 (= lt!2355835 e!3822734)))

(declare-fun c!1140479 () Bool)

(assert (=> d!1972967 (= c!1140479 ((_ is Cons!64796) (exprs!6091 lt!2355658)))))

(assert (=> d!1972967 (= (contextDepthTotal!330 lt!2355658) lt!2355835)))

(declare-fun b!6286406 () Bool)

(declare-fun regexDepthTotal!182 (Regex!16207) Int)

(assert (=> b!6286406 (= e!3822734 (+ (regexDepthTotal!182 (h!71244 (exprs!6091 lt!2355658))) (contextDepthTotal!330 (Context!11183 (t!378482 (exprs!6091 lt!2355658))))))))

(declare-fun b!6286407 () Bool)

(assert (=> b!6286407 (= e!3822734 1)))

(assert (= (and d!1972967 c!1140479) b!6286406))

(assert (= (and d!1972967 (not c!1140479)) b!6286407))

(declare-fun m!7107152 () Bool)

(assert (=> b!6286406 m!7107152))

(declare-fun m!7107154 () Bool)

(assert (=> b!6286406 m!7107154))

(assert (=> b!6285513 d!1972967))

(declare-fun d!1972969 () Bool)

(declare-fun lt!2355836 () Int)

(assert (=> d!1972969 (>= lt!2355836 0)))

(declare-fun e!3822735 () Int)

(assert (=> d!1972969 (= lt!2355836 e!3822735)))

(declare-fun c!1140480 () Bool)

(assert (=> d!1972969 (= c!1140480 ((_ is Cons!64796) (exprs!6091 (h!71245 zl!343))))))

(assert (=> d!1972969 (= (contextDepthTotal!330 (h!71245 zl!343)) lt!2355836)))

(declare-fun b!6286408 () Bool)

(assert (=> b!6286408 (= e!3822735 (+ (regexDepthTotal!182 (h!71244 (exprs!6091 (h!71245 zl!343)))) (contextDepthTotal!330 (Context!11183 (t!378482 (exprs!6091 (h!71245 zl!343)))))))))

(declare-fun b!6286409 () Bool)

(assert (=> b!6286409 (= e!3822735 1)))

(assert (= (and d!1972969 c!1140480) b!6286408))

(assert (= (and d!1972969 (not c!1140480)) b!6286409))

(declare-fun m!7107156 () Bool)

(assert (=> b!6286408 m!7107156))

(declare-fun m!7107158 () Bool)

(assert (=> b!6286408 m!7107158))

(assert (=> b!6285513 d!1972969))

(declare-fun d!1972971 () Bool)

(declare-fun e!3822738 () Bool)

(assert (=> d!1972971 e!3822738))

(declare-fun res!2592503 () Bool)

(assert (=> d!1972971 (=> (not res!2592503) (not e!3822738))))

(declare-fun lt!2355839 () List!64921)

(declare-fun noDuplicate!2041 (List!64921) Bool)

(assert (=> d!1972971 (= res!2592503 (noDuplicate!2041 lt!2355839))))

(declare-fun choose!46690 ((InoxSet Context!11182)) List!64921)

(assert (=> d!1972971 (= lt!2355839 (choose!46690 z!1189))))

(assert (=> d!1972971 (= (toList!9991 z!1189) lt!2355839)))

(declare-fun b!6286412 () Bool)

(declare-fun content!12184 (List!64921) (InoxSet Context!11182))

(assert (=> b!6286412 (= e!3822738 (= (content!12184 lt!2355839) z!1189))))

(assert (= (and d!1972971 res!2592503) b!6286412))

(declare-fun m!7107160 () Bool)

(assert (=> d!1972971 m!7107160))

(declare-fun m!7107162 () Bool)

(assert (=> d!1972971 m!7107162))

(declare-fun m!7107164 () Bool)

(assert (=> b!6286412 m!7107164))

(assert (=> b!6285507 d!1972971))

(declare-fun d!1972973 () Bool)

(declare-fun lt!2355842 () Regex!16207)

(assert (=> d!1972973 (validRegex!7943 lt!2355842)))

(assert (=> d!1972973 (= lt!2355842 (generalisedUnion!2051 (unfocusZipperList!1628 zl!343)))))

(assert (=> d!1972973 (= (unfocusZipper!1949 zl!343) lt!2355842)))

(declare-fun bs!1571271 () Bool)

(assert (= bs!1571271 d!1972973))

(declare-fun m!7107166 () Bool)

(assert (=> bs!1571271 m!7107166))

(assert (=> bs!1571271 m!7106382))

(assert (=> bs!1571271 m!7106382))

(assert (=> bs!1571271 m!7106384))

(assert (=> b!6285487 d!1972973))

(declare-fun d!1972975 () Bool)

(declare-fun c!1140481 () Bool)

(assert (=> d!1972975 (= c!1140481 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822739 () Bool)

(assert (=> d!1972975 (= (matchZipper!2219 lt!2355652 (t!378484 s!2326)) e!3822739)))

(declare-fun b!6286413 () Bool)

(assert (=> b!6286413 (= e!3822739 (nullableZipper!1977 lt!2355652))))

(declare-fun b!6286414 () Bool)

(assert (=> b!6286414 (= e!3822739 (matchZipper!2219 (derivationStepZipper!2173 lt!2355652 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972975 c!1140481) b!6286413))

(assert (= (and d!1972975 (not c!1140481)) b!6286414))

(assert (=> d!1972975 m!7106962))

(declare-fun m!7107168 () Bool)

(assert (=> b!6286413 m!7107168))

(assert (=> b!6286414 m!7106966))

(assert (=> b!6286414 m!7106966))

(declare-fun m!7107170 () Bool)

(assert (=> b!6286414 m!7107170))

(assert (=> b!6286414 m!7106970))

(assert (=> b!6286414 m!7107170))

(assert (=> b!6286414 m!7106970))

(declare-fun m!7107172 () Bool)

(assert (=> b!6286414 m!7107172))

(assert (=> b!6285505 d!1972975))

(declare-fun d!1972977 () Bool)

(assert (=> d!1972977 (= (flatMap!1712 lt!2355655 lambda!344972) (dynLambda!25641 lambda!344972 lt!2355646))))

(declare-fun lt!2355843 () Unit!158159)

(assert (=> d!1972977 (= lt!2355843 (choose!46687 lt!2355655 lt!2355646 lambda!344972))))

(assert (=> d!1972977 (= lt!2355655 (store ((as const (Array Context!11182 Bool)) false) lt!2355646 true))))

(assert (=> d!1972977 (= (lemmaFlatMapOnSingletonSet!1238 lt!2355655 lt!2355646 lambda!344972) lt!2355843)))

(declare-fun b_lambda!239283 () Bool)

(assert (=> (not b_lambda!239283) (not d!1972977)))

(declare-fun bs!1571272 () Bool)

(assert (= bs!1571272 d!1972977))

(assert (=> bs!1571272 m!7106412))

(declare-fun m!7107174 () Bool)

(assert (=> bs!1571272 m!7107174))

(declare-fun m!7107176 () Bool)

(assert (=> bs!1571272 m!7107176))

(assert (=> bs!1571272 m!7106272))

(assert (=> b!6285505 d!1972977))

(declare-fun d!1972979 () Bool)

(declare-fun c!1140482 () Bool)

(assert (=> d!1972979 (= c!1140482 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822740 () Bool)

(assert (=> d!1972979 (= (matchZipper!2219 lt!2355684 (t!378484 s!2326)) e!3822740)))

(declare-fun b!6286415 () Bool)

(assert (=> b!6286415 (= e!3822740 (nullableZipper!1977 lt!2355684))))

(declare-fun b!6286416 () Bool)

(assert (=> b!6286416 (= e!3822740 (matchZipper!2219 (derivationStepZipper!2173 lt!2355684 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972979 c!1140482) b!6286415))

(assert (= (and d!1972979 (not c!1140482)) b!6286416))

(assert (=> d!1972979 m!7106962))

(declare-fun m!7107178 () Bool)

(assert (=> b!6286415 m!7107178))

(assert (=> b!6286416 m!7106966))

(assert (=> b!6286416 m!7106966))

(declare-fun m!7107180 () Bool)

(assert (=> b!6286416 m!7107180))

(assert (=> b!6286416 m!7106970))

(assert (=> b!6286416 m!7107180))

(assert (=> b!6286416 m!7106970))

(declare-fun m!7107182 () Bool)

(assert (=> b!6286416 m!7107182))

(assert (=> b!6285505 d!1972979))

(declare-fun d!1972981 () Bool)

(assert (=> d!1972981 (= (flatMap!1712 lt!2355655 lambda!344972) (choose!46688 lt!2355655 lambda!344972))))

(declare-fun bs!1571273 () Bool)

(assert (= bs!1571273 d!1972981))

(declare-fun m!7107184 () Bool)

(assert (=> bs!1571273 m!7107184))

(assert (=> b!6285505 d!1972981))

(declare-fun e!3822741 () Bool)

(declare-fun d!1972983 () Bool)

(assert (=> d!1972983 (= (matchZipper!2219 ((_ map or) lt!2355664 lt!2355676) (t!378484 s!2326)) e!3822741)))

(declare-fun res!2592504 () Bool)

(assert (=> d!1972983 (=> res!2592504 e!3822741)))

(assert (=> d!1972983 (= res!2592504 (matchZipper!2219 lt!2355664 (t!378484 s!2326)))))

(declare-fun lt!2355844 () Unit!158159)

(assert (=> d!1972983 (= lt!2355844 (choose!46689 lt!2355664 lt!2355676 (t!378484 s!2326)))))

(assert (=> d!1972983 (= (lemmaZipperConcatMatchesSameAsBothZippers!1038 lt!2355664 lt!2355676 (t!378484 s!2326)) lt!2355844)))

(declare-fun b!6286417 () Bool)

(assert (=> b!6286417 (= e!3822741 (matchZipper!2219 lt!2355676 (t!378484 s!2326)))))

(assert (= (and d!1972983 (not res!2592504)) b!6286417))

(declare-fun m!7107186 () Bool)

(assert (=> d!1972983 m!7107186))

(assert (=> d!1972983 m!7106288))

(declare-fun m!7107188 () Bool)

(assert (=> d!1972983 m!7107188))

(assert (=> b!6286417 m!7106386))

(assert (=> b!6285505 d!1972983))

(declare-fun b!6286418 () Bool)

(declare-fun e!3822743 () (InoxSet Context!11182))

(declare-fun call!532246 () (InoxSet Context!11182))

(assert (=> b!6286418 (= e!3822743 call!532246)))

(declare-fun b!6286419 () Bool)

(declare-fun e!3822744 () Bool)

(assert (=> b!6286419 (= e!3822744 (nullable!6200 (h!71244 (exprs!6091 lt!2355646))))))

(declare-fun b!6286420 () Bool)

(assert (=> b!6286420 (= e!3822743 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286421 () Bool)

(declare-fun e!3822742 () (InoxSet Context!11182))

(assert (=> b!6286421 (= e!3822742 e!3822743)))

(declare-fun c!1140483 () Bool)

(assert (=> b!6286421 (= c!1140483 ((_ is Cons!64796) (exprs!6091 lt!2355646)))))

(declare-fun b!6286422 () Bool)

(assert (=> b!6286422 (= e!3822742 ((_ map or) call!532246 (derivationStepZipperUp!1381 (Context!11183 (t!378482 (exprs!6091 lt!2355646))) (h!71246 s!2326))))))

(declare-fun d!1972985 () Bool)

(declare-fun c!1140484 () Bool)

(assert (=> d!1972985 (= c!1140484 e!3822744)))

(declare-fun res!2592505 () Bool)

(assert (=> d!1972985 (=> (not res!2592505) (not e!3822744))))

(assert (=> d!1972985 (= res!2592505 ((_ is Cons!64796) (exprs!6091 lt!2355646)))))

(assert (=> d!1972985 (= (derivationStepZipperUp!1381 lt!2355646 (h!71246 s!2326)) e!3822742)))

(declare-fun bm!532241 () Bool)

(assert (=> bm!532241 (= call!532246 (derivationStepZipperDown!1455 (h!71244 (exprs!6091 lt!2355646)) (Context!11183 (t!378482 (exprs!6091 lt!2355646))) (h!71246 s!2326)))))

(assert (= (and d!1972985 res!2592505) b!6286419))

(assert (= (and d!1972985 c!1140484) b!6286422))

(assert (= (and d!1972985 (not c!1140484)) b!6286421))

(assert (= (and b!6286421 c!1140483) b!6286418))

(assert (= (and b!6286421 (not c!1140483)) b!6286420))

(assert (= (or b!6286422 b!6286418) bm!532241))

(declare-fun m!7107190 () Bool)

(assert (=> b!6286419 m!7107190))

(declare-fun m!7107192 () Bool)

(assert (=> b!6286422 m!7107192))

(declare-fun m!7107194 () Bool)

(assert (=> bm!532241 m!7107194))

(assert (=> b!6285505 d!1972985))

(assert (=> b!6285506 d!1972963))

(declare-fun d!1972987 () Bool)

(declare-fun c!1140485 () Bool)

(assert (=> d!1972987 (= c!1140485 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822745 () Bool)

(assert (=> d!1972987 (= (matchZipper!2219 lt!2355673 (t!378484 s!2326)) e!3822745)))

(declare-fun b!6286423 () Bool)

(assert (=> b!6286423 (= e!3822745 (nullableZipper!1977 lt!2355673))))

(declare-fun b!6286424 () Bool)

(assert (=> b!6286424 (= e!3822745 (matchZipper!2219 (derivationStepZipper!2173 lt!2355673 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972987 c!1140485) b!6286423))

(assert (= (and d!1972987 (not c!1140485)) b!6286424))

(assert (=> d!1972987 m!7106962))

(declare-fun m!7107196 () Bool)

(assert (=> b!6286423 m!7107196))

(assert (=> b!6286424 m!7106966))

(assert (=> b!6286424 m!7106966))

(declare-fun m!7107198 () Bool)

(assert (=> b!6286424 m!7107198))

(assert (=> b!6286424 m!7106970))

(assert (=> b!6286424 m!7107198))

(assert (=> b!6286424 m!7106970))

(declare-fun m!7107200 () Bool)

(assert (=> b!6286424 m!7107200))

(assert (=> b!6285506 d!1972987))

(declare-fun d!1972989 () Bool)

(declare-fun c!1140486 () Bool)

(assert (=> d!1972989 (= c!1140486 (isEmpty!36849 (t!378484 s!2326)))))

(declare-fun e!3822746 () Bool)

(assert (=> d!1972989 (= (matchZipper!2219 lt!2355664 (t!378484 s!2326)) e!3822746)))

(declare-fun b!6286425 () Bool)

(assert (=> b!6286425 (= e!3822746 (nullableZipper!1977 lt!2355664))))

(declare-fun b!6286426 () Bool)

(assert (=> b!6286426 (= e!3822746 (matchZipper!2219 (derivationStepZipper!2173 lt!2355664 (head!12915 (t!378484 s!2326))) (tail!12000 (t!378484 s!2326))))))

(assert (= (and d!1972989 c!1140486) b!6286425))

(assert (= (and d!1972989 (not c!1140486)) b!6286426))

(assert (=> d!1972989 m!7106962))

(declare-fun m!7107202 () Bool)

(assert (=> b!6286425 m!7107202))

(assert (=> b!6286426 m!7106966))

(assert (=> b!6286426 m!7106966))

(declare-fun m!7107204 () Bool)

(assert (=> b!6286426 m!7107204))

(assert (=> b!6286426 m!7106970))

(assert (=> b!6286426 m!7107204))

(assert (=> b!6286426 m!7106970))

(declare-fun m!7107206 () Bool)

(assert (=> b!6286426 m!7107206))

(assert (=> b!6285506 d!1972989))

(declare-fun e!3822747 () Bool)

(declare-fun d!1972991 () Bool)

(assert (=> d!1972991 (= (matchZipper!2219 ((_ map or) lt!2355664 lt!2355650) (t!378484 s!2326)) e!3822747)))

(declare-fun res!2592506 () Bool)

(assert (=> d!1972991 (=> res!2592506 e!3822747)))

(assert (=> d!1972991 (= res!2592506 (matchZipper!2219 lt!2355664 (t!378484 s!2326)))))

(declare-fun lt!2355845 () Unit!158159)

(assert (=> d!1972991 (= lt!2355845 (choose!46689 lt!2355664 lt!2355650 (t!378484 s!2326)))))

(assert (=> d!1972991 (= (lemmaZipperConcatMatchesSameAsBothZippers!1038 lt!2355664 lt!2355650 (t!378484 s!2326)) lt!2355845)))

(declare-fun b!6286427 () Bool)

(assert (=> b!6286427 (= e!3822747 (matchZipper!2219 lt!2355650 (t!378484 s!2326)))))

(assert (= (and d!1972991 (not res!2592506)) b!6286427))

(declare-fun m!7107208 () Bool)

(assert (=> d!1972991 m!7107208))

(assert (=> d!1972991 m!7106288))

(declare-fun m!7107210 () Bool)

(assert (=> d!1972991 m!7107210))

(assert (=> b!6286427 m!7106402))

(assert (=> b!6285506 d!1972991))

(declare-fun d!1972993 () Bool)

(declare-fun c!1140487 () Bool)

(assert (=> d!1972993 (= c!1140487 (isEmpty!36849 s!2326))))

(declare-fun e!3822748 () Bool)

(assert (=> d!1972993 (= (matchZipper!2219 lt!2355655 s!2326) e!3822748)))

(declare-fun b!6286428 () Bool)

(assert (=> b!6286428 (= e!3822748 (nullableZipper!1977 lt!2355655))))

(declare-fun b!6286429 () Bool)

(assert (=> b!6286429 (= e!3822748 (matchZipper!2219 (derivationStepZipper!2173 lt!2355655 (head!12915 s!2326)) (tail!12000 s!2326)))))

(assert (= (and d!1972993 c!1140487) b!6286428))

(assert (= (and d!1972993 (not c!1140487)) b!6286429))

(assert (=> d!1972993 m!7107052))

(declare-fun m!7107212 () Bool)

(assert (=> b!6286428 m!7107212))

(assert (=> b!6286429 m!7107058))

(assert (=> b!6286429 m!7107058))

(declare-fun m!7107214 () Bool)

(assert (=> b!6286429 m!7107214))

(assert (=> b!6286429 m!7107062))

(assert (=> b!6286429 m!7107214))

(assert (=> b!6286429 m!7107062))

(declare-fun m!7107216 () Bool)

(assert (=> b!6286429 m!7107216))

(assert (=> b!6285508 d!1972993))

(declare-fun d!1972995 () Bool)

(assert (=> d!1972995 (= (Exists!3277 lambda!344975) (choose!46682 lambda!344975))))

(declare-fun bs!1571274 () Bool)

(assert (= bs!1571274 d!1972995))

(declare-fun m!7107218 () Bool)

(assert (=> bs!1571274 m!7107218))

(assert (=> b!6285508 d!1972995))

(declare-fun d!1972997 () Bool)

(assert (=> d!1972997 (= (isDefined!12801 (findConcatSeparation!2512 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 Nil!64798 s!2326 s!2326)) (not (isEmpty!36850 (findConcatSeparation!2512 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 Nil!64798 s!2326 s!2326))))))

(declare-fun bs!1571275 () Bool)

(assert (= bs!1571275 d!1972997))

(assert (=> bs!1571275 m!7106326))

(declare-fun m!7107220 () Bool)

(assert (=> bs!1571275 m!7107220))

(assert (=> b!6285508 d!1972997))

(declare-fun bs!1571276 () Bool)

(declare-fun d!1972999 () Bool)

(assert (= bs!1571276 (and d!1972999 d!1972899)))

(declare-fun lambda!345073 () Int)

(assert (=> bs!1571276 (= lambda!345073 lambda!345033)))

(declare-fun bs!1571277 () Bool)

(assert (= bs!1571277 (and d!1972999 d!1972901)))

(assert (=> bs!1571277 (= lambda!345073 lambda!345036)))

(declare-fun bs!1571278 () Bool)

(assert (= bs!1571278 (and d!1972999 d!1972927)))

(assert (=> bs!1571278 (= lambda!345073 lambda!345051)))

(declare-fun bs!1571279 () Bool)

(assert (= bs!1571279 (and d!1972999 d!1972941)))

(assert (=> bs!1571279 (= lambda!345073 lambda!345060)))

(declare-fun e!3822750 () Bool)

(assert (=> d!1972999 e!3822750))

(declare-fun res!2592507 () Bool)

(assert (=> d!1972999 (=> (not res!2592507) (not e!3822750))))

(declare-fun lt!2355846 () Regex!16207)

(assert (=> d!1972999 (= res!2592507 (validRegex!7943 lt!2355846))))

(declare-fun e!3822751 () Regex!16207)

(assert (=> d!1972999 (= lt!2355846 e!3822751)))

(declare-fun c!1140490 () Bool)

(declare-fun e!3822752 () Bool)

(assert (=> d!1972999 (= c!1140490 e!3822752)))

(declare-fun res!2592508 () Bool)

(assert (=> d!1972999 (=> (not res!2592508) (not e!3822752))))

(assert (=> d!1972999 (= res!2592508 ((_ is Cons!64796) (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(assert (=> d!1972999 (forall!15350 (t!378482 (exprs!6091 (h!71245 zl!343))) lambda!345073)))

(assert (=> d!1972999 (= (generalisedConcat!1804 (t!378482 (exprs!6091 (h!71245 zl!343)))) lt!2355846)))

(declare-fun b!6286430 () Bool)

(declare-fun e!3822753 () Bool)

(assert (=> b!6286430 (= e!3822750 e!3822753)))

(declare-fun c!1140489 () Bool)

(assert (=> b!6286430 (= c!1140489 (isEmpty!36845 (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286431 () Bool)

(declare-fun e!3822754 () Bool)

(assert (=> b!6286431 (= e!3822754 (isConcat!1136 lt!2355846))))

(declare-fun b!6286432 () Bool)

(assert (=> b!6286432 (= e!3822753 (isEmptyExpr!1613 lt!2355846))))

(declare-fun b!6286433 () Bool)

(declare-fun e!3822749 () Regex!16207)

(assert (=> b!6286433 (= e!3822749 EmptyExpr!16207)))

(declare-fun b!6286434 () Bool)

(assert (=> b!6286434 (= e!3822752 (isEmpty!36845 (t!378482 (t!378482 (exprs!6091 (h!71245 zl!343))))))))

(declare-fun b!6286435 () Bool)

(assert (=> b!6286435 (= e!3822754 (= lt!2355846 (head!12914 (t!378482 (exprs!6091 (h!71245 zl!343))))))))

(declare-fun b!6286436 () Bool)

(assert (=> b!6286436 (= e!3822751 e!3822749)))

(declare-fun c!1140488 () Bool)

(assert (=> b!6286436 (= c!1140488 ((_ is Cons!64796) (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286437 () Bool)

(assert (=> b!6286437 (= e!3822749 (Concat!25052 (h!71244 (t!378482 (exprs!6091 (h!71245 zl!343)))) (generalisedConcat!1804 (t!378482 (t!378482 (exprs!6091 (h!71245 zl!343)))))))))

(declare-fun b!6286438 () Bool)

(assert (=> b!6286438 (= e!3822751 (h!71244 (t!378482 (exprs!6091 (h!71245 zl!343)))))))

(declare-fun b!6286439 () Bool)

(assert (=> b!6286439 (= e!3822753 e!3822754)))

(declare-fun c!1140491 () Bool)

(assert (=> b!6286439 (= c!1140491 (isEmpty!36845 (tail!11999 (t!378482 (exprs!6091 (h!71245 zl!343))))))))

(assert (= (and d!1972999 res!2592508) b!6286434))

(assert (= (and d!1972999 c!1140490) b!6286438))

(assert (= (and d!1972999 (not c!1140490)) b!6286436))

(assert (= (and b!6286436 c!1140488) b!6286437))

(assert (= (and b!6286436 (not c!1140488)) b!6286433))

(assert (= (and d!1972999 res!2592507) b!6286430))

(assert (= (and b!6286430 c!1140489) b!6286432))

(assert (= (and b!6286430 (not c!1140489)) b!6286439))

(assert (= (and b!6286439 c!1140491) b!6286435))

(assert (= (and b!6286439 (not c!1140491)) b!6286431))

(assert (=> b!6286430 m!7106276))

(declare-fun m!7107222 () Bool)

(assert (=> b!6286437 m!7107222))

(declare-fun m!7107224 () Bool)

(assert (=> b!6286434 m!7107224))

(declare-fun m!7107226 () Bool)

(assert (=> b!6286432 m!7107226))

(declare-fun m!7107228 () Bool)

(assert (=> b!6286435 m!7107228))

(declare-fun m!7107230 () Bool)

(assert (=> b!6286439 m!7107230))

(assert (=> b!6286439 m!7107230))

(declare-fun m!7107232 () Bool)

(assert (=> b!6286439 m!7107232))

(declare-fun m!7107234 () Bool)

(assert (=> d!1972999 m!7107234))

(declare-fun m!7107236 () Bool)

(assert (=> d!1972999 m!7107236))

(declare-fun m!7107238 () Bool)

(assert (=> b!6286431 m!7107238))

(assert (=> b!6285508 d!1972999))

(declare-fun d!1973001 () Bool)

(declare-fun c!1140492 () Bool)

(assert (=> d!1973001 (= c!1140492 (isEmpty!36849 s!2326))))

(declare-fun e!3822755 () Bool)

(assert (=> d!1973001 (= (matchZipper!2219 lt!2355647 s!2326) e!3822755)))

(declare-fun b!6286440 () Bool)

(assert (=> b!6286440 (= e!3822755 (nullableZipper!1977 lt!2355647))))

(declare-fun b!6286441 () Bool)

(assert (=> b!6286441 (= e!3822755 (matchZipper!2219 (derivationStepZipper!2173 lt!2355647 (head!12915 s!2326)) (tail!12000 s!2326)))))

(assert (= (and d!1973001 c!1140492) b!6286440))

(assert (= (and d!1973001 (not c!1140492)) b!6286441))

(assert (=> d!1973001 m!7107052))

(declare-fun m!7107240 () Bool)

(assert (=> b!6286440 m!7107240))

(assert (=> b!6286441 m!7107058))

(assert (=> b!6286441 m!7107058))

(declare-fun m!7107242 () Bool)

(assert (=> b!6286441 m!7107242))

(assert (=> b!6286441 m!7107062))

(assert (=> b!6286441 m!7107242))

(assert (=> b!6286441 m!7107062))

(declare-fun m!7107244 () Bool)

(assert (=> b!6286441 m!7107244))

(assert (=> b!6285508 d!1973001))

(declare-fun bs!1571280 () Bool)

(declare-fun b!6286447 () Bool)

(assert (= bs!1571280 (and b!6286447 b!6286294)))

(declare-fun lambda!345074 () Int)

(assert (=> bs!1571280 (not (= lambda!345074 lambda!345057))))

(declare-fun bs!1571281 () Bool)

(assert (= bs!1571281 (and b!6286447 b!6285497)))

(assert (=> bs!1571281 (not (= lambda!345074 lambda!344971))))

(declare-fun bs!1571282 () Bool)

(assert (= bs!1571282 (and b!6286447 d!1972923)))

(assert (=> bs!1571282 (not (= lambda!345074 lambda!345048))))

(declare-fun bs!1571283 () Bool)

(assert (= bs!1571283 (and b!6286447 d!1972917)))

(assert (=> bs!1571283 (not (= lambda!345074 lambda!345042))))

(declare-fun bs!1571284 () Bool)

(assert (= bs!1571284 (and b!6286447 b!6285508)))

(assert (=> bs!1571284 (not (= lambda!345074 lambda!344973))))

(assert (=> bs!1571281 (not (= lambda!345074 lambda!344970))))

(assert (=> bs!1571284 (not (= lambda!345074 lambda!344975))))

(assert (=> bs!1571284 (not (= lambda!345074 lambda!344974))))

(declare-fun bs!1571285 () Bool)

(assert (= bs!1571285 (and b!6286447 b!6286289)))

(assert (=> bs!1571285 (= (and (= (reg!16536 lt!2355648) (reg!16536 r!7292)) (= lt!2355648 r!7292)) (= lambda!345074 lambda!345056))))

(assert (=> bs!1571282 (not (= lambda!345074 lambda!345047))))

(assert (=> b!6286447 true))

(assert (=> b!6286447 true))

(declare-fun bs!1571286 () Bool)

(declare-fun b!6286452 () Bool)

(assert (= bs!1571286 (and b!6286452 b!6286294)))

(declare-fun lambda!345075 () Int)

(assert (=> bs!1571286 (= (and (= (regOne!32926 lt!2355648) (regOne!32926 r!7292)) (= (regTwo!32926 lt!2355648) (regTwo!32926 r!7292))) (= lambda!345075 lambda!345057))))

(declare-fun bs!1571287 () Bool)

(assert (= bs!1571287 (and b!6286452 b!6285497)))

(assert (=> bs!1571287 (= (and (= (regOne!32926 lt!2355648) (regOne!32926 r!7292)) (= (regTwo!32926 lt!2355648) (regTwo!32926 r!7292))) (= lambda!345075 lambda!344971))))

(declare-fun bs!1571288 () Bool)

(assert (= bs!1571288 (and b!6286452 d!1972923)))

(assert (=> bs!1571288 (= (and (= (regOne!32926 lt!2355648) (regOne!32926 r!7292)) (= (regTwo!32926 lt!2355648) (regTwo!32926 r!7292))) (= lambda!345075 lambda!345048))))

(declare-fun bs!1571289 () Bool)

(assert (= bs!1571289 (and b!6286452 d!1972917)))

(assert (=> bs!1571289 (not (= lambda!345075 lambda!345042))))

(declare-fun bs!1571290 () Bool)

(assert (= bs!1571290 (and b!6286452 b!6285508)))

(assert (=> bs!1571290 (not (= lambda!345075 lambda!344973))))

(assert (=> bs!1571287 (not (= lambda!345075 lambda!344970))))

(assert (=> bs!1571290 (not (= lambda!345075 lambda!344975))))

(declare-fun bs!1571291 () Bool)

(assert (= bs!1571291 (and b!6286452 b!6286447)))

(assert (=> bs!1571291 (not (= lambda!345075 lambda!345074))))

(assert (=> bs!1571290 (= (and (= (regOne!32926 lt!2355648) (regOne!32926 (regOne!32926 r!7292))) (= (regTwo!32926 lt!2355648) lt!2355648)) (= lambda!345075 lambda!344974))))

(declare-fun bs!1571292 () Bool)

(assert (= bs!1571292 (and b!6286452 b!6286289)))

(assert (=> bs!1571292 (not (= lambda!345075 lambda!345056))))

(assert (=> bs!1571288 (not (= lambda!345075 lambda!345047))))

(assert (=> b!6286452 true))

(assert (=> b!6286452 true))

(declare-fun b!6286442 () Bool)

(declare-fun e!3822762 () Bool)

(declare-fun e!3822759 () Bool)

(assert (=> b!6286442 (= e!3822762 e!3822759)))

(declare-fun res!2592510 () Bool)

(assert (=> b!6286442 (= res!2592510 (matchRSpec!3308 (regOne!32927 lt!2355648) s!2326))))

(assert (=> b!6286442 (=> res!2592510 e!3822759)))

(declare-fun b!6286443 () Bool)

(declare-fun e!3822760 () Bool)

(declare-fun call!532248 () Bool)

(assert (=> b!6286443 (= e!3822760 call!532248)))

(declare-fun b!6286444 () Bool)

(declare-fun res!2592509 () Bool)

(declare-fun e!3822758 () Bool)

(assert (=> b!6286444 (=> res!2592509 e!3822758)))

(assert (=> b!6286444 (= res!2592509 call!532248)))

(declare-fun e!3822761 () Bool)

(assert (=> b!6286444 (= e!3822761 e!3822758)))

(declare-fun b!6286445 () Bool)

(declare-fun c!1140495 () Bool)

(assert (=> b!6286445 (= c!1140495 ((_ is Union!16207) lt!2355648))))

(declare-fun e!3822756 () Bool)

(assert (=> b!6286445 (= e!3822756 e!3822762)))

(declare-fun b!6286446 () Bool)

(assert (=> b!6286446 (= e!3822762 e!3822761)))

(declare-fun c!1140494 () Bool)

(assert (=> b!6286446 (= c!1140494 ((_ is Star!16207) lt!2355648))))

(declare-fun call!532247 () Bool)

(assert (=> b!6286447 (= e!3822758 call!532247)))

(declare-fun b!6286449 () Bool)

(declare-fun c!1140496 () Bool)

(assert (=> b!6286449 (= c!1140496 ((_ is ElementMatch!16207) lt!2355648))))

(declare-fun e!3822757 () Bool)

(assert (=> b!6286449 (= e!3822757 e!3822756)))

(declare-fun b!6286450 () Bool)

(assert (=> b!6286450 (= e!3822756 (= s!2326 (Cons!64798 (c!1140190 lt!2355648) Nil!64798)))))

(declare-fun bm!532242 () Bool)

(assert (=> bm!532242 (= call!532248 (isEmpty!36849 s!2326))))

(declare-fun b!6286451 () Bool)

(assert (=> b!6286451 (= e!3822760 e!3822757)))

(declare-fun res!2592511 () Bool)

(assert (=> b!6286451 (= res!2592511 (not ((_ is EmptyLang!16207) lt!2355648)))))

(assert (=> b!6286451 (=> (not res!2592511) (not e!3822757))))

(declare-fun b!6286448 () Bool)

(assert (=> b!6286448 (= e!3822759 (matchRSpec!3308 (regTwo!32927 lt!2355648) s!2326))))

(declare-fun d!1973003 () Bool)

(declare-fun c!1140493 () Bool)

(assert (=> d!1973003 (= c!1140493 ((_ is EmptyExpr!16207) lt!2355648))))

(assert (=> d!1973003 (= (matchRSpec!3308 lt!2355648 s!2326) e!3822760)))

(assert (=> b!6286452 (= e!3822761 call!532247)))

(declare-fun bm!532243 () Bool)

(assert (=> bm!532243 (= call!532247 (Exists!3277 (ite c!1140494 lambda!345074 lambda!345075)))))

(assert (= (and d!1973003 c!1140493) b!6286443))

(assert (= (and d!1973003 (not c!1140493)) b!6286451))

(assert (= (and b!6286451 res!2592511) b!6286449))

(assert (= (and b!6286449 c!1140496) b!6286450))

(assert (= (and b!6286449 (not c!1140496)) b!6286445))

(assert (= (and b!6286445 c!1140495) b!6286442))

(assert (= (and b!6286445 (not c!1140495)) b!6286446))

(assert (= (and b!6286442 (not res!2592510)) b!6286448))

(assert (= (and b!6286446 c!1140494) b!6286444))

(assert (= (and b!6286446 (not c!1140494)) b!6286452))

(assert (= (and b!6286444 (not res!2592509)) b!6286447))

(assert (= (or b!6286447 b!6286452) bm!532243))

(assert (= (or b!6286443 b!6286444) bm!532242))

(declare-fun m!7107246 () Bool)

(assert (=> b!6286442 m!7107246))

(assert (=> bm!532242 m!7107052))

(declare-fun m!7107248 () Bool)

(assert (=> b!6286448 m!7107248))

(declare-fun m!7107250 () Bool)

(assert (=> bm!532243 m!7107250))

(assert (=> b!6285508 d!1973003))

(declare-fun b!6286453 () Bool)

(declare-fun e!3822763 () Option!16098)

(assert (=> b!6286453 (= e!3822763 None!16097)))

(declare-fun b!6286454 () Bool)

(declare-fun res!2592513 () Bool)

(declare-fun e!3822765 () Bool)

(assert (=> b!6286454 (=> (not res!2592513) (not e!3822765))))

(declare-fun lt!2355848 () Option!16098)

(assert (=> b!6286454 (= res!2592513 (matchR!8390 (regOne!32926 (regOne!32926 r!7292)) (_1!36489 (get!22399 lt!2355848))))))

(declare-fun b!6286455 () Bool)

(declare-fun lt!2355849 () Unit!158159)

(declare-fun lt!2355847 () Unit!158159)

(assert (=> b!6286455 (= lt!2355849 lt!2355847)))

(assert (=> b!6286455 (= (++!14280 (++!14280 Nil!64798 (Cons!64798 (h!71246 s!2326) Nil!64798)) (t!378484 s!2326)) s!2326)))

(assert (=> b!6286455 (= lt!2355847 (lemmaMoveElementToOtherListKeepsConcatEq!2375 Nil!64798 (h!71246 s!2326) (t!378484 s!2326) s!2326))))

(assert (=> b!6286455 (= e!3822763 (findConcatSeparation!2512 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 (++!14280 Nil!64798 (Cons!64798 (h!71246 s!2326) Nil!64798)) (t!378484 s!2326) s!2326))))

(declare-fun b!6286456 () Bool)

(declare-fun e!3822766 () Bool)

(assert (=> b!6286456 (= e!3822766 (matchR!8390 lt!2355648 s!2326))))

(declare-fun b!6286457 () Bool)

(declare-fun e!3822767 () Option!16098)

(assert (=> b!6286457 (= e!3822767 (Some!16097 (tuple2!66373 Nil!64798 s!2326)))))

(declare-fun b!6286458 () Bool)

(assert (=> b!6286458 (= e!3822765 (= (++!14280 (_1!36489 (get!22399 lt!2355848)) (_2!36489 (get!22399 lt!2355848))) s!2326))))

(declare-fun b!6286459 () Bool)

(declare-fun e!3822764 () Bool)

(assert (=> b!6286459 (= e!3822764 (not (isDefined!12801 lt!2355848)))))

(declare-fun b!6286460 () Bool)

(declare-fun res!2592512 () Bool)

(assert (=> b!6286460 (=> (not res!2592512) (not e!3822765))))

(assert (=> b!6286460 (= res!2592512 (matchR!8390 lt!2355648 (_2!36489 (get!22399 lt!2355848))))))

(declare-fun b!6286461 () Bool)

(assert (=> b!6286461 (= e!3822767 e!3822763)))

(declare-fun c!1140498 () Bool)

(assert (=> b!6286461 (= c!1140498 ((_ is Nil!64798) s!2326))))

(declare-fun d!1973005 () Bool)

(assert (=> d!1973005 e!3822764))

(declare-fun res!2592514 () Bool)

(assert (=> d!1973005 (=> res!2592514 e!3822764)))

(assert (=> d!1973005 (= res!2592514 e!3822765)))

(declare-fun res!2592515 () Bool)

(assert (=> d!1973005 (=> (not res!2592515) (not e!3822765))))

(assert (=> d!1973005 (= res!2592515 (isDefined!12801 lt!2355848))))

(assert (=> d!1973005 (= lt!2355848 e!3822767)))

(declare-fun c!1140497 () Bool)

(assert (=> d!1973005 (= c!1140497 e!3822766)))

(declare-fun res!2592516 () Bool)

(assert (=> d!1973005 (=> (not res!2592516) (not e!3822766))))

(assert (=> d!1973005 (= res!2592516 (matchR!8390 (regOne!32926 (regOne!32926 r!7292)) Nil!64798))))

(assert (=> d!1973005 (validRegex!7943 (regOne!32926 (regOne!32926 r!7292)))))

(assert (=> d!1973005 (= (findConcatSeparation!2512 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 Nil!64798 s!2326 s!2326) lt!2355848)))

(assert (= (and d!1973005 res!2592516) b!6286456))

(assert (= (and d!1973005 c!1140497) b!6286457))

(assert (= (and d!1973005 (not c!1140497)) b!6286461))

(assert (= (and b!6286461 c!1140498) b!6286453))

(assert (= (and b!6286461 (not c!1140498)) b!6286455))

(assert (= (and d!1973005 res!2592515) b!6286454))

(assert (= (and b!6286454 res!2592513) b!6286460))

(assert (= (and b!6286460 res!2592512) b!6286458))

(assert (= (and d!1973005 (not res!2592514)) b!6286459))

(declare-fun m!7107252 () Bool)

(assert (=> d!1973005 m!7107252))

(declare-fun m!7107254 () Bool)

(assert (=> d!1973005 m!7107254))

(declare-fun m!7107256 () Bool)

(assert (=> d!1973005 m!7107256))

(assert (=> b!6286459 m!7107252))

(assert (=> b!6286456 m!7106342))

(declare-fun m!7107258 () Bool)

(assert (=> b!6286458 m!7107258))

(declare-fun m!7107260 () Bool)

(assert (=> b!6286458 m!7107260))

(assert (=> b!6286460 m!7107258))

(declare-fun m!7107262 () Bool)

(assert (=> b!6286460 m!7107262))

(assert (=> b!6286454 m!7107258))

(declare-fun m!7107264 () Bool)

(assert (=> b!6286454 m!7107264))

(assert (=> b!6286455 m!7107016))

(assert (=> b!6286455 m!7107016))

(assert (=> b!6286455 m!7107018))

(assert (=> b!6286455 m!7107020))

(assert (=> b!6286455 m!7107016))

(declare-fun m!7107266 () Bool)

(assert (=> b!6286455 m!7107266))

(assert (=> b!6285508 d!1973005))

(declare-fun bs!1571293 () Bool)

(declare-fun d!1973007 () Bool)

(assert (= bs!1571293 (and d!1973007 d!1972901)))

(declare-fun lambda!345076 () Int)

(assert (=> bs!1571293 (= lambda!345076 lambda!345036)))

(declare-fun bs!1571294 () Bool)

(assert (= bs!1571294 (and d!1973007 d!1972999)))

(assert (=> bs!1571294 (= lambda!345076 lambda!345073)))

(declare-fun bs!1571295 () Bool)

(assert (= bs!1571295 (and d!1973007 d!1972927)))

(assert (=> bs!1571295 (= lambda!345076 lambda!345051)))

(declare-fun bs!1571296 () Bool)

(assert (= bs!1571296 (and d!1973007 d!1972899)))

(assert (=> bs!1571296 (= lambda!345076 lambda!345033)))

(declare-fun bs!1571297 () Bool)

(assert (= bs!1571297 (and d!1973007 d!1972941)))

(assert (=> bs!1571297 (= lambda!345076 lambda!345060)))

(declare-fun e!3822769 () Bool)

(assert (=> d!1973007 e!3822769))

(declare-fun res!2592517 () Bool)

(assert (=> d!1973007 (=> (not res!2592517) (not e!3822769))))

(declare-fun lt!2355850 () Regex!16207)

(assert (=> d!1973007 (= res!2592517 (validRegex!7943 lt!2355850))))

(declare-fun e!3822770 () Regex!16207)

(assert (=> d!1973007 (= lt!2355850 e!3822770)))

(declare-fun c!1140501 () Bool)

(declare-fun e!3822771 () Bool)

(assert (=> d!1973007 (= c!1140501 e!3822771)))

(declare-fun res!2592518 () Bool)

(assert (=> d!1973007 (=> (not res!2592518) (not e!3822771))))

(assert (=> d!1973007 (= res!2592518 ((_ is Cons!64796) lt!2355656))))

(assert (=> d!1973007 (forall!15350 lt!2355656 lambda!345076)))

(assert (=> d!1973007 (= (generalisedConcat!1804 lt!2355656) lt!2355850)))

(declare-fun b!6286462 () Bool)

(declare-fun e!3822772 () Bool)

(assert (=> b!6286462 (= e!3822769 e!3822772)))

(declare-fun c!1140500 () Bool)

(assert (=> b!6286462 (= c!1140500 (isEmpty!36845 lt!2355656))))

(declare-fun b!6286463 () Bool)

(declare-fun e!3822773 () Bool)

(assert (=> b!6286463 (= e!3822773 (isConcat!1136 lt!2355850))))

(declare-fun b!6286464 () Bool)

(assert (=> b!6286464 (= e!3822772 (isEmptyExpr!1613 lt!2355850))))

(declare-fun b!6286465 () Bool)

(declare-fun e!3822768 () Regex!16207)

(assert (=> b!6286465 (= e!3822768 EmptyExpr!16207)))

(declare-fun b!6286466 () Bool)

(assert (=> b!6286466 (= e!3822771 (isEmpty!36845 (t!378482 lt!2355656)))))

(declare-fun b!6286467 () Bool)

(assert (=> b!6286467 (= e!3822773 (= lt!2355850 (head!12914 lt!2355656)))))

(declare-fun b!6286468 () Bool)

(assert (=> b!6286468 (= e!3822770 e!3822768)))

(declare-fun c!1140499 () Bool)

(assert (=> b!6286468 (= c!1140499 ((_ is Cons!64796) lt!2355656))))

(declare-fun b!6286469 () Bool)

(assert (=> b!6286469 (= e!3822768 (Concat!25052 (h!71244 lt!2355656) (generalisedConcat!1804 (t!378482 lt!2355656))))))

(declare-fun b!6286470 () Bool)

(assert (=> b!6286470 (= e!3822770 (h!71244 lt!2355656))))

(declare-fun b!6286471 () Bool)

(assert (=> b!6286471 (= e!3822772 e!3822773)))

(declare-fun c!1140502 () Bool)

(assert (=> b!6286471 (= c!1140502 (isEmpty!36845 (tail!11999 lt!2355656)))))

(assert (= (and d!1973007 res!2592518) b!6286466))

(assert (= (and d!1973007 c!1140501) b!6286470))

(assert (= (and d!1973007 (not c!1140501)) b!6286468))

(assert (= (and b!6286468 c!1140499) b!6286469))

(assert (= (and b!6286468 (not c!1140499)) b!6286465))

(assert (= (and d!1973007 res!2592517) b!6286462))

(assert (= (and b!6286462 c!1140500) b!6286464))

(assert (= (and b!6286462 (not c!1140500)) b!6286471))

(assert (= (and b!6286471 c!1140502) b!6286467))

(assert (= (and b!6286471 (not c!1140502)) b!6286463))

(declare-fun m!7107268 () Bool)

(assert (=> b!6286462 m!7107268))

(declare-fun m!7107270 () Bool)

(assert (=> b!6286469 m!7107270))

(declare-fun m!7107272 () Bool)

(assert (=> b!6286466 m!7107272))

(declare-fun m!7107274 () Bool)

(assert (=> b!6286464 m!7107274))

(declare-fun m!7107276 () Bool)

(assert (=> b!6286467 m!7107276))

(declare-fun m!7107278 () Bool)

(assert (=> b!6286471 m!7107278))

(assert (=> b!6286471 m!7107278))

(declare-fun m!7107280 () Bool)

(assert (=> b!6286471 m!7107280))

(declare-fun m!7107282 () Bool)

(assert (=> d!1973007 m!7107282))

(declare-fun m!7107284 () Bool)

(assert (=> d!1973007 m!7107284))

(declare-fun m!7107286 () Bool)

(assert (=> b!6286463 m!7107286))

(assert (=> b!6285508 d!1973007))

(declare-fun d!1973009 () Bool)

(declare-fun res!2592520 () Bool)

(declare-fun e!3822774 () Bool)

(assert (=> d!1973009 (=> res!2592520 e!3822774)))

(assert (=> d!1973009 (= res!2592520 ((_ is ElementMatch!16207) (regTwo!32926 (regOne!32926 r!7292))))))

(assert (=> d!1973009 (= (validRegex!7943 (regTwo!32926 (regOne!32926 r!7292))) e!3822774)))

(declare-fun b!6286472 () Bool)

(declare-fun e!3822777 () Bool)

(declare-fun e!3822776 () Bool)

(assert (=> b!6286472 (= e!3822777 e!3822776)))

(declare-fun res!2592522 () Bool)

(assert (=> b!6286472 (=> (not res!2592522) (not e!3822776))))

(declare-fun call!532249 () Bool)

(assert (=> b!6286472 (= res!2592522 call!532249)))

(declare-fun b!6286473 () Bool)

(declare-fun e!3822775 () Bool)

(declare-fun e!3822779 () Bool)

(assert (=> b!6286473 (= e!3822775 e!3822779)))

(declare-fun res!2592521 () Bool)

(assert (=> b!6286473 (= res!2592521 (not (nullable!6200 (reg!16536 (regTwo!32926 (regOne!32926 r!7292))))))))

(assert (=> b!6286473 (=> (not res!2592521) (not e!3822779))))

(declare-fun b!6286474 () Bool)

(declare-fun res!2592519 () Bool)

(declare-fun e!3822780 () Bool)

(assert (=> b!6286474 (=> (not res!2592519) (not e!3822780))))

(assert (=> b!6286474 (= res!2592519 call!532249)))

(declare-fun e!3822778 () Bool)

(assert (=> b!6286474 (= e!3822778 e!3822780)))

(declare-fun b!6286475 () Bool)

(declare-fun call!532250 () Bool)

(assert (=> b!6286475 (= e!3822779 call!532250)))

(declare-fun bm!532244 () Bool)

(declare-fun call!532251 () Bool)

(declare-fun c!1140504 () Bool)

(assert (=> bm!532244 (= call!532251 (validRegex!7943 (ite c!1140504 (regTwo!32927 (regTwo!32926 (regOne!32926 r!7292))) (regTwo!32926 (regTwo!32926 (regOne!32926 r!7292))))))))

(declare-fun bm!532245 () Bool)

(assert (=> bm!532245 (= call!532249 call!532250)))

(declare-fun c!1140503 () Bool)

(declare-fun bm!532246 () Bool)

(assert (=> bm!532246 (= call!532250 (validRegex!7943 (ite c!1140503 (reg!16536 (regTwo!32926 (regOne!32926 r!7292))) (ite c!1140504 (regOne!32927 (regTwo!32926 (regOne!32926 r!7292))) (regOne!32926 (regTwo!32926 (regOne!32926 r!7292)))))))))

(declare-fun b!6286476 () Bool)

(assert (=> b!6286476 (= e!3822780 call!532251)))

(declare-fun b!6286477 () Bool)

(declare-fun res!2592523 () Bool)

(assert (=> b!6286477 (=> res!2592523 e!3822777)))

(assert (=> b!6286477 (= res!2592523 (not ((_ is Concat!25052) (regTwo!32926 (regOne!32926 r!7292)))))))

(assert (=> b!6286477 (= e!3822778 e!3822777)))

(declare-fun b!6286478 () Bool)

(assert (=> b!6286478 (= e!3822774 e!3822775)))

(assert (=> b!6286478 (= c!1140503 ((_ is Star!16207) (regTwo!32926 (regOne!32926 r!7292))))))

(declare-fun b!6286479 () Bool)

(assert (=> b!6286479 (= e!3822776 call!532251)))

(declare-fun b!6286480 () Bool)

(assert (=> b!6286480 (= e!3822775 e!3822778)))

(assert (=> b!6286480 (= c!1140504 ((_ is Union!16207) (regTwo!32926 (regOne!32926 r!7292))))))

(assert (= (and d!1973009 (not res!2592520)) b!6286478))

(assert (= (and b!6286478 c!1140503) b!6286473))

(assert (= (and b!6286478 (not c!1140503)) b!6286480))

(assert (= (and b!6286473 res!2592521) b!6286475))

(assert (= (and b!6286480 c!1140504) b!6286474))

(assert (= (and b!6286480 (not c!1140504)) b!6286477))

(assert (= (and b!6286474 res!2592519) b!6286476))

(assert (= (and b!6286477 (not res!2592523)) b!6286472))

(assert (= (and b!6286472 res!2592522) b!6286479))

(assert (= (or b!6286476 b!6286479) bm!532244))

(assert (= (or b!6286474 b!6286472) bm!532245))

(assert (= (or b!6286475 bm!532245) bm!532246))

(declare-fun m!7107288 () Bool)

(assert (=> b!6286473 m!7107288))

(declare-fun m!7107290 () Bool)

(assert (=> bm!532244 m!7107290))

(declare-fun m!7107292 () Bool)

(assert (=> bm!532246 m!7107292))

(assert (=> b!6285508 d!1973009))

(declare-fun d!1973011 () Bool)

(assert (=> d!1973011 (= (isDefined!12801 (findConcatSeparation!2512 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 Nil!64798 s!2326 s!2326)) (not (isEmpty!36850 (findConcatSeparation!2512 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 Nil!64798 s!2326 s!2326))))))

(declare-fun bs!1571298 () Bool)

(assert (= bs!1571298 d!1973011))

(assert (=> bs!1571298 m!7106346))

(declare-fun m!7107294 () Bool)

(assert (=> bs!1571298 m!7107294))

(assert (=> b!6285508 d!1973011))

(declare-fun bs!1571299 () Bool)

(declare-fun d!1973013 () Bool)

(assert (= bs!1571299 (and d!1973013 b!6286294)))

(declare-fun lambda!345077 () Int)

(assert (=> bs!1571299 (not (= lambda!345077 lambda!345057))))

(declare-fun bs!1571300 () Bool)

(assert (= bs!1571300 (and d!1973013 b!6285497)))

(assert (=> bs!1571300 (not (= lambda!345077 lambda!344971))))

(declare-fun bs!1571301 () Bool)

(assert (= bs!1571301 (and d!1973013 d!1972923)))

(assert (=> bs!1571301 (not (= lambda!345077 lambda!345048))))

(declare-fun bs!1571302 () Bool)

(assert (= bs!1571302 (and d!1973013 b!6286452)))

(assert (=> bs!1571302 (not (= lambda!345077 lambda!345075))))

(declare-fun bs!1571303 () Bool)

(assert (= bs!1571303 (and d!1973013 d!1972917)))

(assert (=> bs!1571303 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345077 lambda!345042))))

(declare-fun bs!1571304 () Bool)

(assert (= bs!1571304 (and d!1973013 b!6285508)))

(assert (=> bs!1571304 (= lambda!345077 lambda!344973)))

(assert (=> bs!1571300 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345077 lambda!344970))))

(assert (=> bs!1571304 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regTwo!32926 (regOne!32926 r!7292))) (= lt!2355648 lt!2355654)) (= lambda!345077 lambda!344975))))

(declare-fun bs!1571305 () Bool)

(assert (= bs!1571305 (and d!1973013 b!6286447)))

(assert (=> bs!1571305 (not (= lambda!345077 lambda!345074))))

(assert (=> bs!1571304 (not (= lambda!345077 lambda!344974))))

(declare-fun bs!1571306 () Bool)

(assert (= bs!1571306 (and d!1973013 b!6286289)))

(assert (=> bs!1571306 (not (= lambda!345077 lambda!345056))))

(assert (=> bs!1571301 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345077 lambda!345047))))

(assert (=> d!1973013 true))

(assert (=> d!1973013 true))

(assert (=> d!1973013 true))

(declare-fun lambda!345078 () Int)

(assert (=> bs!1571299 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345078 lambda!345057))))

(assert (=> bs!1571300 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345078 lambda!344971))))

(assert (=> bs!1571301 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345078 lambda!345048))))

(assert (=> bs!1571302 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 lt!2355648)) (= lt!2355648 (regTwo!32926 lt!2355648))) (= lambda!345078 lambda!345075))))

(assert (=> bs!1571303 (not (= lambda!345078 lambda!345042))))

(assert (=> bs!1571304 (not (= lambda!345078 lambda!344973))))

(assert (=> bs!1571300 (not (= lambda!345078 lambda!344970))))

(assert (=> bs!1571305 (not (= lambda!345078 lambda!345074))))

(assert (=> bs!1571304 (= lambda!345078 lambda!344974)))

(assert (=> bs!1571306 (not (= lambda!345078 lambda!345056))))

(assert (=> bs!1571301 (not (= lambda!345078 lambda!345047))))

(declare-fun bs!1571307 () Bool)

(assert (= bs!1571307 d!1973013))

(assert (=> bs!1571307 (not (= lambda!345078 lambda!345077))))

(assert (=> bs!1571304 (not (= lambda!345078 lambda!344975))))

(assert (=> d!1973013 true))

(assert (=> d!1973013 true))

(assert (=> d!1973013 true))

(assert (=> d!1973013 (= (Exists!3277 lambda!345077) (Exists!3277 lambda!345078))))

(declare-fun lt!2355851 () Unit!158159)

(assert (=> d!1973013 (= lt!2355851 (choose!46684 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 s!2326))))

(assert (=> d!1973013 (validRegex!7943 (regOne!32926 (regOne!32926 r!7292)))))

(assert (=> d!1973013 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1814 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 s!2326) lt!2355851)))

(declare-fun m!7107296 () Bool)

(assert (=> bs!1571307 m!7107296))

(declare-fun m!7107298 () Bool)

(assert (=> bs!1571307 m!7107298))

(declare-fun m!7107300 () Bool)

(assert (=> bs!1571307 m!7107300))

(assert (=> bs!1571307 m!7107256))

(assert (=> b!6285508 d!1973013))

(declare-fun d!1973015 () Bool)

(assert (=> d!1973015 (= (Exists!3277 lambda!344973) (choose!46682 lambda!344973))))

(declare-fun bs!1571308 () Bool)

(assert (= bs!1571308 d!1973015))

(declare-fun m!7107302 () Bool)

(assert (=> bs!1571308 m!7107302))

(assert (=> b!6285508 d!1973015))

(declare-fun bs!1571309 () Bool)

(declare-fun d!1973017 () Bool)

(assert (= bs!1571309 (and d!1973017 b!6286294)))

(declare-fun lambda!345079 () Int)

(assert (=> bs!1571309 (not (= lambda!345079 lambda!345057))))

(declare-fun bs!1571310 () Bool)

(assert (= bs!1571310 (and d!1973017 b!6285497)))

(assert (=> bs!1571310 (not (= lambda!345079 lambda!344971))))

(declare-fun bs!1571311 () Bool)

(assert (= bs!1571311 (and d!1973017 d!1972923)))

(assert (=> bs!1571311 (not (= lambda!345079 lambda!345048))))

(declare-fun bs!1571312 () Bool)

(assert (= bs!1571312 (and d!1973017 b!6286452)))

(assert (=> bs!1571312 (not (= lambda!345079 lambda!345075))))

(declare-fun bs!1571313 () Bool)

(assert (= bs!1571313 (and d!1973017 d!1972917)))

(assert (=> bs!1571313 (= (and (= (regTwo!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355654 (regTwo!32926 r!7292))) (= lambda!345079 lambda!345042))))

(declare-fun bs!1571314 () Bool)

(assert (= bs!1571314 (and d!1973017 b!6285508)))

(assert (=> bs!1571314 (= (and (= (regTwo!32926 (regOne!32926 r!7292)) (regOne!32926 (regOne!32926 r!7292))) (= lt!2355654 lt!2355648)) (= lambda!345079 lambda!344973))))

(assert (=> bs!1571310 (= (and (= (regTwo!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355654 (regTwo!32926 r!7292))) (= lambda!345079 lambda!344970))))

(declare-fun bs!1571315 () Bool)

(assert (= bs!1571315 (and d!1973017 b!6286447)))

(assert (=> bs!1571315 (not (= lambda!345079 lambda!345074))))

(declare-fun bs!1571316 () Bool)

(assert (= bs!1571316 (and d!1973017 d!1973013)))

(assert (=> bs!1571316 (not (= lambda!345079 lambda!345078))))

(assert (=> bs!1571314 (not (= lambda!345079 lambda!344974))))

(declare-fun bs!1571317 () Bool)

(assert (= bs!1571317 (and d!1973017 b!6286289)))

(assert (=> bs!1571317 (not (= lambda!345079 lambda!345056))))

(assert (=> bs!1571311 (= (and (= (regTwo!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355654 (regTwo!32926 r!7292))) (= lambda!345079 lambda!345047))))

(assert (=> bs!1571316 (= (and (= (regTwo!32926 (regOne!32926 r!7292)) (regOne!32926 (regOne!32926 r!7292))) (= lt!2355654 lt!2355648)) (= lambda!345079 lambda!345077))))

(assert (=> bs!1571314 (= lambda!345079 lambda!344975)))

(assert (=> d!1973017 true))

(assert (=> d!1973017 true))

(assert (=> d!1973017 true))

(assert (=> d!1973017 (= (isDefined!12801 (findConcatSeparation!2512 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 Nil!64798 s!2326 s!2326)) (Exists!3277 lambda!345079))))

(declare-fun lt!2355852 () Unit!158159)

(assert (=> d!1973017 (= lt!2355852 (choose!46683 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 s!2326))))

(assert (=> d!1973017 (validRegex!7943 (regTwo!32926 (regOne!32926 r!7292)))))

(assert (=> d!1973017 (= (lemmaFindConcatSeparationEquivalentToExists!2276 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 s!2326) lt!2355852)))

(declare-fun bs!1571318 () Bool)

(assert (= bs!1571318 d!1973017))

(declare-fun m!7107304 () Bool)

(assert (=> bs!1571318 m!7107304))

(declare-fun m!7107306 () Bool)

(assert (=> bs!1571318 m!7107306))

(assert (=> bs!1571318 m!7106326))

(assert (=> bs!1571318 m!7106328))

(assert (=> bs!1571318 m!7106330))

(assert (=> bs!1571318 m!7106326))

(assert (=> b!6285508 d!1973017))

(declare-fun d!1973019 () Bool)

(assert (=> d!1973019 (= (matchR!8390 lt!2355648 s!2326) (matchRSpec!3308 lt!2355648 s!2326))))

(declare-fun lt!2355853 () Unit!158159)

(assert (=> d!1973019 (= lt!2355853 (choose!46685 lt!2355648 s!2326))))

(assert (=> d!1973019 (validRegex!7943 lt!2355648)))

(assert (=> d!1973019 (= (mainMatchTheorem!3308 lt!2355648 s!2326) lt!2355853)))

(declare-fun bs!1571319 () Bool)

(assert (= bs!1571319 d!1973019))

(assert (=> bs!1571319 m!7106342))

(assert (=> bs!1571319 m!7106336))

(declare-fun m!7107308 () Bool)

(assert (=> bs!1571319 m!7107308))

(declare-fun m!7107310 () Bool)

(assert (=> bs!1571319 m!7107310))

(assert (=> b!6285508 d!1973019))

(declare-fun bs!1571320 () Bool)

(declare-fun b!6286486 () Bool)

(assert (= bs!1571320 (and b!6286486 b!6286294)))

(declare-fun lambda!345080 () Int)

(assert (=> bs!1571320 (not (= lambda!345080 lambda!345057))))

(declare-fun bs!1571321 () Bool)

(assert (= bs!1571321 (and b!6286486 b!6285497)))

(assert (=> bs!1571321 (not (= lambda!345080 lambda!344971))))

(declare-fun bs!1571322 () Bool)

(assert (= bs!1571322 (and b!6286486 d!1972923)))

(assert (=> bs!1571322 (not (= lambda!345080 lambda!345048))))

(declare-fun bs!1571323 () Bool)

(assert (= bs!1571323 (and b!6286486 b!6286452)))

(assert (=> bs!1571323 (not (= lambda!345080 lambda!345075))))

(declare-fun bs!1571324 () Bool)

(assert (= bs!1571324 (and b!6286486 d!1972917)))

(assert (=> bs!1571324 (not (= lambda!345080 lambda!345042))))

(declare-fun bs!1571325 () Bool)

(assert (= bs!1571325 (and b!6286486 b!6285508)))

(assert (=> bs!1571325 (not (= lambda!345080 lambda!344973))))

(assert (=> bs!1571321 (not (= lambda!345080 lambda!344970))))

(declare-fun bs!1571326 () Bool)

(assert (= bs!1571326 (and b!6286486 d!1973017)))

(assert (=> bs!1571326 (not (= lambda!345080 lambda!345079))))

(declare-fun bs!1571327 () Bool)

(assert (= bs!1571327 (and b!6286486 b!6286447)))

(assert (=> bs!1571327 (= (and (= (reg!16536 lt!2355643) (reg!16536 lt!2355648)) (= lt!2355643 lt!2355648)) (= lambda!345080 lambda!345074))))

(declare-fun bs!1571328 () Bool)

(assert (= bs!1571328 (and b!6286486 d!1973013)))

(assert (=> bs!1571328 (not (= lambda!345080 lambda!345078))))

(assert (=> bs!1571325 (not (= lambda!345080 lambda!344974))))

(declare-fun bs!1571329 () Bool)

(assert (= bs!1571329 (and b!6286486 b!6286289)))

(assert (=> bs!1571329 (= (and (= (reg!16536 lt!2355643) (reg!16536 r!7292)) (= lt!2355643 r!7292)) (= lambda!345080 lambda!345056))))

(assert (=> bs!1571322 (not (= lambda!345080 lambda!345047))))

(assert (=> bs!1571328 (not (= lambda!345080 lambda!345077))))

(assert (=> bs!1571325 (not (= lambda!345080 lambda!344975))))

(assert (=> b!6286486 true))

(assert (=> b!6286486 true))

(declare-fun bs!1571330 () Bool)

(declare-fun b!6286491 () Bool)

(assert (= bs!1571330 (and b!6286491 b!6286294)))

(declare-fun lambda!345081 () Int)

(assert (=> bs!1571330 (= (and (= (regOne!32926 lt!2355643) (regOne!32926 r!7292)) (= (regTwo!32926 lt!2355643) (regTwo!32926 r!7292))) (= lambda!345081 lambda!345057))))

(declare-fun bs!1571331 () Bool)

(assert (= bs!1571331 (and b!6286491 b!6285497)))

(assert (=> bs!1571331 (= (and (= (regOne!32926 lt!2355643) (regOne!32926 r!7292)) (= (regTwo!32926 lt!2355643) (regTwo!32926 r!7292))) (= lambda!345081 lambda!344971))))

(declare-fun bs!1571332 () Bool)

(assert (= bs!1571332 (and b!6286491 d!1972923)))

(assert (=> bs!1571332 (= (and (= (regOne!32926 lt!2355643) (regOne!32926 r!7292)) (= (regTwo!32926 lt!2355643) (regTwo!32926 r!7292))) (= lambda!345081 lambda!345048))))

(declare-fun bs!1571333 () Bool)

(assert (= bs!1571333 (and b!6286491 b!6286452)))

(assert (=> bs!1571333 (= (and (= (regOne!32926 lt!2355643) (regOne!32926 lt!2355648)) (= (regTwo!32926 lt!2355643) (regTwo!32926 lt!2355648))) (= lambda!345081 lambda!345075))))

(declare-fun bs!1571334 () Bool)

(assert (= bs!1571334 (and b!6286491 d!1972917)))

(assert (=> bs!1571334 (not (= lambda!345081 lambda!345042))))

(declare-fun bs!1571335 () Bool)

(assert (= bs!1571335 (and b!6286491 b!6285508)))

(assert (=> bs!1571335 (not (= lambda!345081 lambda!344973))))

(declare-fun bs!1571336 () Bool)

(assert (= bs!1571336 (and b!6286491 d!1973017)))

(assert (=> bs!1571336 (not (= lambda!345081 lambda!345079))))

(declare-fun bs!1571337 () Bool)

(assert (= bs!1571337 (and b!6286491 b!6286447)))

(assert (=> bs!1571337 (not (= lambda!345081 lambda!345074))))

(declare-fun bs!1571338 () Bool)

(assert (= bs!1571338 (and b!6286491 d!1973013)))

(assert (=> bs!1571338 (= (and (= (regOne!32926 lt!2355643) (regOne!32926 (regOne!32926 r!7292))) (= (regTwo!32926 lt!2355643) lt!2355648)) (= lambda!345081 lambda!345078))))

(assert (=> bs!1571335 (= (and (= (regOne!32926 lt!2355643) (regOne!32926 (regOne!32926 r!7292))) (= (regTwo!32926 lt!2355643) lt!2355648)) (= lambda!345081 lambda!344974))))

(declare-fun bs!1571339 () Bool)

(assert (= bs!1571339 (and b!6286491 b!6286289)))

(assert (=> bs!1571339 (not (= lambda!345081 lambda!345056))))

(assert (=> bs!1571332 (not (= lambda!345081 lambda!345047))))

(assert (=> bs!1571331 (not (= lambda!345081 lambda!344970))))

(declare-fun bs!1571340 () Bool)

(assert (= bs!1571340 (and b!6286491 b!6286486)))

(assert (=> bs!1571340 (not (= lambda!345081 lambda!345080))))

(assert (=> bs!1571338 (not (= lambda!345081 lambda!345077))))

(assert (=> bs!1571335 (not (= lambda!345081 lambda!344975))))

(assert (=> b!6286491 true))

(assert (=> b!6286491 true))

(declare-fun b!6286481 () Bool)

(declare-fun e!3822787 () Bool)

(declare-fun e!3822784 () Bool)

(assert (=> b!6286481 (= e!3822787 e!3822784)))

(declare-fun res!2592525 () Bool)

(assert (=> b!6286481 (= res!2592525 (matchRSpec!3308 (regOne!32927 lt!2355643) s!2326))))

(assert (=> b!6286481 (=> res!2592525 e!3822784)))

(declare-fun b!6286482 () Bool)

(declare-fun e!3822785 () Bool)

(declare-fun call!532253 () Bool)

(assert (=> b!6286482 (= e!3822785 call!532253)))

(declare-fun b!6286483 () Bool)

(declare-fun res!2592524 () Bool)

(declare-fun e!3822783 () Bool)

(assert (=> b!6286483 (=> res!2592524 e!3822783)))

(assert (=> b!6286483 (= res!2592524 call!532253)))

(declare-fun e!3822786 () Bool)

(assert (=> b!6286483 (= e!3822786 e!3822783)))

(declare-fun b!6286484 () Bool)

(declare-fun c!1140507 () Bool)

(assert (=> b!6286484 (= c!1140507 ((_ is Union!16207) lt!2355643))))

(declare-fun e!3822781 () Bool)

(assert (=> b!6286484 (= e!3822781 e!3822787)))

(declare-fun b!6286485 () Bool)

(assert (=> b!6286485 (= e!3822787 e!3822786)))

(declare-fun c!1140506 () Bool)

(assert (=> b!6286485 (= c!1140506 ((_ is Star!16207) lt!2355643))))

(declare-fun call!532252 () Bool)

(assert (=> b!6286486 (= e!3822783 call!532252)))

(declare-fun b!6286488 () Bool)

(declare-fun c!1140508 () Bool)

(assert (=> b!6286488 (= c!1140508 ((_ is ElementMatch!16207) lt!2355643))))

(declare-fun e!3822782 () Bool)

(assert (=> b!6286488 (= e!3822782 e!3822781)))

(declare-fun b!6286489 () Bool)

(assert (=> b!6286489 (= e!3822781 (= s!2326 (Cons!64798 (c!1140190 lt!2355643) Nil!64798)))))

(declare-fun bm!532247 () Bool)

(assert (=> bm!532247 (= call!532253 (isEmpty!36849 s!2326))))

(declare-fun b!6286490 () Bool)

(assert (=> b!6286490 (= e!3822785 e!3822782)))

(declare-fun res!2592526 () Bool)

(assert (=> b!6286490 (= res!2592526 (not ((_ is EmptyLang!16207) lt!2355643)))))

(assert (=> b!6286490 (=> (not res!2592526) (not e!3822782))))

(declare-fun b!6286487 () Bool)

(assert (=> b!6286487 (= e!3822784 (matchRSpec!3308 (regTwo!32927 lt!2355643) s!2326))))

(declare-fun d!1973021 () Bool)

(declare-fun c!1140505 () Bool)

(assert (=> d!1973021 (= c!1140505 ((_ is EmptyExpr!16207) lt!2355643))))

(assert (=> d!1973021 (= (matchRSpec!3308 lt!2355643 s!2326) e!3822785)))

(assert (=> b!6286491 (= e!3822786 call!532252)))

(declare-fun bm!532248 () Bool)

(assert (=> bm!532248 (= call!532252 (Exists!3277 (ite c!1140506 lambda!345080 lambda!345081)))))

(assert (= (and d!1973021 c!1140505) b!6286482))

(assert (= (and d!1973021 (not c!1140505)) b!6286490))

(assert (= (and b!6286490 res!2592526) b!6286488))

(assert (= (and b!6286488 c!1140508) b!6286489))

(assert (= (and b!6286488 (not c!1140508)) b!6286484))

(assert (= (and b!6286484 c!1140507) b!6286481))

(assert (= (and b!6286484 (not c!1140507)) b!6286485))

(assert (= (and b!6286481 (not res!2592525)) b!6286487))

(assert (= (and b!6286485 c!1140506) b!6286483))

(assert (= (and b!6286485 (not c!1140506)) b!6286491))

(assert (= (and b!6286483 (not res!2592524)) b!6286486))

(assert (= (or b!6286486 b!6286491) bm!532248))

(assert (= (or b!6286482 b!6286483) bm!532247))

(declare-fun m!7107312 () Bool)

(assert (=> b!6286481 m!7107312))

(assert (=> bm!532247 m!7107052))

(declare-fun m!7107314 () Bool)

(assert (=> b!6286487 m!7107314))

(declare-fun m!7107316 () Bool)

(assert (=> bm!532248 m!7107316))

(assert (=> b!6285508 d!1973021))

(declare-fun b!6286492 () Bool)

(declare-fun e!3822793 () Bool)

(declare-fun e!3822788 () Bool)

(assert (=> b!6286492 (= e!3822793 e!3822788)))

(declare-fun res!2592533 () Bool)

(assert (=> b!6286492 (=> (not res!2592533) (not e!3822788))))

(declare-fun lt!2355854 () Bool)

(assert (=> b!6286492 (= res!2592533 (not lt!2355854))))

(declare-fun b!6286493 () Bool)

(declare-fun res!2592530 () Bool)

(declare-fun e!3822790 () Bool)

(assert (=> b!6286493 (=> (not res!2592530) (not e!3822790))))

(declare-fun call!532254 () Bool)

(assert (=> b!6286493 (= res!2592530 (not call!532254))))

(declare-fun b!6286494 () Bool)

(declare-fun res!2592531 () Bool)

(assert (=> b!6286494 (=> (not res!2592531) (not e!3822790))))

(assert (=> b!6286494 (= res!2592531 (isEmpty!36849 (tail!12000 s!2326)))))

(declare-fun b!6286495 () Bool)

(declare-fun e!3822791 () Bool)

(declare-fun e!3822792 () Bool)

(assert (=> b!6286495 (= e!3822791 e!3822792)))

(declare-fun c!1140510 () Bool)

(assert (=> b!6286495 (= c!1140510 ((_ is EmptyLang!16207) lt!2355643))))

(declare-fun b!6286496 () Bool)

(assert (=> b!6286496 (= e!3822790 (= (head!12915 s!2326) (c!1140190 lt!2355643)))))

(declare-fun b!6286497 () Bool)

(declare-fun e!3822794 () Bool)

(assert (=> b!6286497 (= e!3822794 (matchR!8390 (derivativeStep!4916 lt!2355643 (head!12915 s!2326)) (tail!12000 s!2326)))))

(declare-fun bm!532249 () Bool)

(assert (=> bm!532249 (= call!532254 (isEmpty!36849 s!2326))))

(declare-fun b!6286499 () Bool)

(assert (=> b!6286499 (= e!3822791 (= lt!2355854 call!532254))))

(declare-fun b!6286500 () Bool)

(declare-fun res!2592527 () Bool)

(declare-fun e!3822789 () Bool)

(assert (=> b!6286500 (=> res!2592527 e!3822789)))

(assert (=> b!6286500 (= res!2592527 (not (isEmpty!36849 (tail!12000 s!2326))))))

(declare-fun b!6286501 () Bool)

(declare-fun res!2592532 () Bool)

(assert (=> b!6286501 (=> res!2592532 e!3822793)))

(assert (=> b!6286501 (= res!2592532 (not ((_ is ElementMatch!16207) lt!2355643)))))

(assert (=> b!6286501 (= e!3822792 e!3822793)))

(declare-fun b!6286502 () Bool)

(assert (=> b!6286502 (= e!3822794 (nullable!6200 lt!2355643))))

(declare-fun b!6286503 () Bool)

(assert (=> b!6286503 (= e!3822792 (not lt!2355854))))

(declare-fun b!6286498 () Bool)

(assert (=> b!6286498 (= e!3822788 e!3822789)))

(declare-fun res!2592528 () Bool)

(assert (=> b!6286498 (=> res!2592528 e!3822789)))

(assert (=> b!6286498 (= res!2592528 call!532254)))

(declare-fun d!1973023 () Bool)

(assert (=> d!1973023 e!3822791))

(declare-fun c!1140511 () Bool)

(assert (=> d!1973023 (= c!1140511 ((_ is EmptyExpr!16207) lt!2355643))))

(assert (=> d!1973023 (= lt!2355854 e!3822794)))

(declare-fun c!1140509 () Bool)

(assert (=> d!1973023 (= c!1140509 (isEmpty!36849 s!2326))))

(assert (=> d!1973023 (validRegex!7943 lt!2355643)))

(assert (=> d!1973023 (= (matchR!8390 lt!2355643 s!2326) lt!2355854)))

(declare-fun b!6286504 () Bool)

(assert (=> b!6286504 (= e!3822789 (not (= (head!12915 s!2326) (c!1140190 lt!2355643))))))

(declare-fun b!6286505 () Bool)

(declare-fun res!2592534 () Bool)

(assert (=> b!6286505 (=> res!2592534 e!3822793)))

(assert (=> b!6286505 (= res!2592534 e!3822790)))

(declare-fun res!2592529 () Bool)

(assert (=> b!6286505 (=> (not res!2592529) (not e!3822790))))

(assert (=> b!6286505 (= res!2592529 lt!2355854)))

(assert (= (and d!1973023 c!1140509) b!6286502))

(assert (= (and d!1973023 (not c!1140509)) b!6286497))

(assert (= (and d!1973023 c!1140511) b!6286499))

(assert (= (and d!1973023 (not c!1140511)) b!6286495))

(assert (= (and b!6286495 c!1140510) b!6286503))

(assert (= (and b!6286495 (not c!1140510)) b!6286501))

(assert (= (and b!6286501 (not res!2592532)) b!6286505))

(assert (= (and b!6286505 res!2592529) b!6286493))

(assert (= (and b!6286493 res!2592530) b!6286494))

(assert (= (and b!6286494 res!2592531) b!6286496))

(assert (= (and b!6286505 (not res!2592534)) b!6286492))

(assert (= (and b!6286492 res!2592533) b!6286498))

(assert (= (and b!6286498 (not res!2592528)) b!6286500))

(assert (= (and b!6286500 (not res!2592527)) b!6286504))

(assert (= (or b!6286499 b!6286493 b!6286498) bm!532249))

(assert (=> b!6286497 m!7107058))

(assert (=> b!6286497 m!7107058))

(declare-fun m!7107318 () Bool)

(assert (=> b!6286497 m!7107318))

(assert (=> b!6286497 m!7107062))

(assert (=> b!6286497 m!7107318))

(assert (=> b!6286497 m!7107062))

(declare-fun m!7107320 () Bool)

(assert (=> b!6286497 m!7107320))

(assert (=> b!6286504 m!7107058))

(assert (=> b!6286500 m!7107062))

(assert (=> b!6286500 m!7107062))

(assert (=> b!6286500 m!7107066))

(assert (=> b!6286494 m!7107062))

(assert (=> b!6286494 m!7107062))

(assert (=> b!6286494 m!7107066))

(declare-fun m!7107322 () Bool)

(assert (=> b!6286502 m!7107322))

(assert (=> bm!532249 m!7107052))

(assert (=> b!6286496 m!7107058))

(assert (=> d!1973023 m!7107052))

(declare-fun m!7107324 () Bool)

(assert (=> d!1973023 m!7107324))

(assert (=> b!6285508 d!1973023))

(declare-fun d!1973025 () Bool)

(assert (=> d!1973025 (= (matchR!8390 lt!2355648 s!2326) (matchZipper!2219 lt!2355655 s!2326))))

(declare-fun lt!2355857 () Unit!158159)

(declare-fun choose!46691 ((InoxSet Context!11182) List!64921 Regex!16207 List!64922) Unit!158159)

(assert (=> d!1973025 (= lt!2355857 (choose!46691 lt!2355655 (Cons!64797 lt!2355646 Nil!64797) lt!2355648 s!2326))))

(assert (=> d!1973025 (validRegex!7943 lt!2355648)))

(assert (=> d!1973025 (= (theoremZipperRegexEquiv!777 lt!2355655 (Cons!64797 lt!2355646 Nil!64797) lt!2355648 s!2326) lt!2355857)))

(declare-fun bs!1571341 () Bool)

(assert (= bs!1571341 d!1973025))

(assert (=> bs!1571341 m!7106342))

(assert (=> bs!1571341 m!7106340))

(declare-fun m!7107326 () Bool)

(assert (=> bs!1571341 m!7107326))

(assert (=> bs!1571341 m!7107310))

(assert (=> b!6285508 d!1973025))

(declare-fun b!6286506 () Bool)

(declare-fun e!3822800 () Bool)

(declare-fun e!3822795 () Bool)

(assert (=> b!6286506 (= e!3822800 e!3822795)))

(declare-fun res!2592541 () Bool)

(assert (=> b!6286506 (=> (not res!2592541) (not e!3822795))))

(declare-fun lt!2355858 () Bool)

(assert (=> b!6286506 (= res!2592541 (not lt!2355858))))

(declare-fun b!6286507 () Bool)

(declare-fun res!2592538 () Bool)

(declare-fun e!3822797 () Bool)

(assert (=> b!6286507 (=> (not res!2592538) (not e!3822797))))

(declare-fun call!532255 () Bool)

(assert (=> b!6286507 (= res!2592538 (not call!532255))))

(declare-fun b!6286508 () Bool)

(declare-fun res!2592539 () Bool)

(assert (=> b!6286508 (=> (not res!2592539) (not e!3822797))))

(assert (=> b!6286508 (= res!2592539 (isEmpty!36849 (tail!12000 s!2326)))))

(declare-fun b!6286509 () Bool)

(declare-fun e!3822798 () Bool)

(declare-fun e!3822799 () Bool)

(assert (=> b!6286509 (= e!3822798 e!3822799)))

(declare-fun c!1140513 () Bool)

(assert (=> b!6286509 (= c!1140513 ((_ is EmptyLang!16207) lt!2355648))))

(declare-fun b!6286510 () Bool)

(assert (=> b!6286510 (= e!3822797 (= (head!12915 s!2326) (c!1140190 lt!2355648)))))

(declare-fun b!6286511 () Bool)

(declare-fun e!3822801 () Bool)

(assert (=> b!6286511 (= e!3822801 (matchR!8390 (derivativeStep!4916 lt!2355648 (head!12915 s!2326)) (tail!12000 s!2326)))))

(declare-fun bm!532250 () Bool)

(assert (=> bm!532250 (= call!532255 (isEmpty!36849 s!2326))))

(declare-fun b!6286513 () Bool)

(assert (=> b!6286513 (= e!3822798 (= lt!2355858 call!532255))))

(declare-fun b!6286514 () Bool)

(declare-fun res!2592535 () Bool)

(declare-fun e!3822796 () Bool)

(assert (=> b!6286514 (=> res!2592535 e!3822796)))

(assert (=> b!6286514 (= res!2592535 (not (isEmpty!36849 (tail!12000 s!2326))))))

(declare-fun b!6286515 () Bool)

(declare-fun res!2592540 () Bool)

(assert (=> b!6286515 (=> res!2592540 e!3822800)))

(assert (=> b!6286515 (= res!2592540 (not ((_ is ElementMatch!16207) lt!2355648)))))

(assert (=> b!6286515 (= e!3822799 e!3822800)))

(declare-fun b!6286516 () Bool)

(assert (=> b!6286516 (= e!3822801 (nullable!6200 lt!2355648))))

(declare-fun b!6286517 () Bool)

(assert (=> b!6286517 (= e!3822799 (not lt!2355858))))

(declare-fun b!6286512 () Bool)

(assert (=> b!6286512 (= e!3822795 e!3822796)))

(declare-fun res!2592536 () Bool)

(assert (=> b!6286512 (=> res!2592536 e!3822796)))

(assert (=> b!6286512 (= res!2592536 call!532255)))

(declare-fun d!1973027 () Bool)

(assert (=> d!1973027 e!3822798))

(declare-fun c!1140514 () Bool)

(assert (=> d!1973027 (= c!1140514 ((_ is EmptyExpr!16207) lt!2355648))))

(assert (=> d!1973027 (= lt!2355858 e!3822801)))

(declare-fun c!1140512 () Bool)

(assert (=> d!1973027 (= c!1140512 (isEmpty!36849 s!2326))))

(assert (=> d!1973027 (validRegex!7943 lt!2355648)))

(assert (=> d!1973027 (= (matchR!8390 lt!2355648 s!2326) lt!2355858)))

(declare-fun b!6286518 () Bool)

(assert (=> b!6286518 (= e!3822796 (not (= (head!12915 s!2326) (c!1140190 lt!2355648))))))

(declare-fun b!6286519 () Bool)

(declare-fun res!2592542 () Bool)

(assert (=> b!6286519 (=> res!2592542 e!3822800)))

(assert (=> b!6286519 (= res!2592542 e!3822797)))

(declare-fun res!2592537 () Bool)

(assert (=> b!6286519 (=> (not res!2592537) (not e!3822797))))

(assert (=> b!6286519 (= res!2592537 lt!2355858)))

(assert (= (and d!1973027 c!1140512) b!6286516))

(assert (= (and d!1973027 (not c!1140512)) b!6286511))

(assert (= (and d!1973027 c!1140514) b!6286513))

(assert (= (and d!1973027 (not c!1140514)) b!6286509))

(assert (= (and b!6286509 c!1140513) b!6286517))

(assert (= (and b!6286509 (not c!1140513)) b!6286515))

(assert (= (and b!6286515 (not res!2592540)) b!6286519))

(assert (= (and b!6286519 res!2592537) b!6286507))

(assert (= (and b!6286507 res!2592538) b!6286508))

(assert (= (and b!6286508 res!2592539) b!6286510))

(assert (= (and b!6286519 (not res!2592542)) b!6286506))

(assert (= (and b!6286506 res!2592541) b!6286512))

(assert (= (and b!6286512 (not res!2592536)) b!6286514))

(assert (= (and b!6286514 (not res!2592535)) b!6286518))

(assert (= (or b!6286513 b!6286507 b!6286512) bm!532250))

(assert (=> b!6286511 m!7107058))

(assert (=> b!6286511 m!7107058))

(declare-fun m!7107328 () Bool)

(assert (=> b!6286511 m!7107328))

(assert (=> b!6286511 m!7107062))

(assert (=> b!6286511 m!7107328))

(assert (=> b!6286511 m!7107062))

(declare-fun m!7107330 () Bool)

(assert (=> b!6286511 m!7107330))

(assert (=> b!6286518 m!7107058))

(assert (=> b!6286514 m!7107062))

(assert (=> b!6286514 m!7107062))

(assert (=> b!6286514 m!7107066))

(assert (=> b!6286508 m!7107062))

(assert (=> b!6286508 m!7107062))

(assert (=> b!6286508 m!7107066))

(declare-fun m!7107332 () Bool)

(assert (=> b!6286516 m!7107332))

(assert (=> bm!532250 m!7107052))

(assert (=> b!6286510 m!7107058))

(assert (=> d!1973027 m!7107052))

(assert (=> d!1973027 m!7107310))

(assert (=> b!6285508 d!1973027))

(declare-fun bs!1571342 () Bool)

(declare-fun d!1973029 () Bool)

(assert (= bs!1571342 (and d!1973029 b!6286294)))

(declare-fun lambda!345082 () Int)

(assert (=> bs!1571342 (not (= lambda!345082 lambda!345057))))

(declare-fun bs!1571343 () Bool)

(assert (= bs!1571343 (and d!1973029 b!6285497)))

(assert (=> bs!1571343 (not (= lambda!345082 lambda!344971))))

(declare-fun bs!1571344 () Bool)

(assert (= bs!1571344 (and d!1973029 d!1972923)))

(assert (=> bs!1571344 (not (= lambda!345082 lambda!345048))))

(declare-fun bs!1571345 () Bool)

(assert (= bs!1571345 (and d!1973029 b!6286452)))

(assert (=> bs!1571345 (not (= lambda!345082 lambda!345075))))

(declare-fun bs!1571346 () Bool)

(assert (= bs!1571346 (and d!1973029 d!1972917)))

(assert (=> bs!1571346 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345082 lambda!345042))))

(declare-fun bs!1571347 () Bool)

(assert (= bs!1571347 (and d!1973029 b!6285508)))

(assert (=> bs!1571347 (= lambda!345082 lambda!344973)))

(declare-fun bs!1571348 () Bool)

(assert (= bs!1571348 (and d!1973029 d!1973017)))

(assert (=> bs!1571348 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regTwo!32926 (regOne!32926 r!7292))) (= lt!2355648 lt!2355654)) (= lambda!345082 lambda!345079))))

(declare-fun bs!1571349 () Bool)

(assert (= bs!1571349 (and d!1973029 b!6286447)))

(assert (=> bs!1571349 (not (= lambda!345082 lambda!345074))))

(assert (=> bs!1571347 (not (= lambda!345082 lambda!344974))))

(declare-fun bs!1571350 () Bool)

(assert (= bs!1571350 (and d!1973029 b!6286289)))

(assert (=> bs!1571350 (not (= lambda!345082 lambda!345056))))

(assert (=> bs!1571344 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345082 lambda!345047))))

(assert (=> bs!1571343 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regOne!32926 r!7292)) (= lt!2355648 (regTwo!32926 r!7292))) (= lambda!345082 lambda!344970))))

(declare-fun bs!1571351 () Bool)

(assert (= bs!1571351 (and d!1973029 b!6286486)))

(assert (=> bs!1571351 (not (= lambda!345082 lambda!345080))))

(declare-fun bs!1571352 () Bool)

(assert (= bs!1571352 (and d!1973029 d!1973013)))

(assert (=> bs!1571352 (= lambda!345082 lambda!345077)))

(assert (=> bs!1571347 (= (and (= (regOne!32926 (regOne!32926 r!7292)) (regTwo!32926 (regOne!32926 r!7292))) (= lt!2355648 lt!2355654)) (= lambda!345082 lambda!344975))))

(declare-fun bs!1571353 () Bool)

(assert (= bs!1571353 (and d!1973029 b!6286491)))

(assert (=> bs!1571353 (not (= lambda!345082 lambda!345081))))

(assert (=> bs!1571352 (not (= lambda!345082 lambda!345078))))

(assert (=> d!1973029 true))

(assert (=> d!1973029 true))

(assert (=> d!1973029 true))

(assert (=> d!1973029 (= (isDefined!12801 (findConcatSeparation!2512 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 Nil!64798 s!2326 s!2326)) (Exists!3277 lambda!345082))))

(declare-fun lt!2355859 () Unit!158159)

(assert (=> d!1973029 (= lt!2355859 (choose!46683 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 s!2326))))

(assert (=> d!1973029 (validRegex!7943 (regOne!32926 (regOne!32926 r!7292)))))

(assert (=> d!1973029 (= (lemmaFindConcatSeparationEquivalentToExists!2276 (regOne!32926 (regOne!32926 r!7292)) lt!2355648 s!2326) lt!2355859)))

(declare-fun bs!1571354 () Bool)

(assert (= bs!1571354 d!1973029))

(declare-fun m!7107334 () Bool)

(assert (=> bs!1571354 m!7107334))

(declare-fun m!7107336 () Bool)

(assert (=> bs!1571354 m!7107336))

(assert (=> bs!1571354 m!7106346))

(assert (=> bs!1571354 m!7106348))

(assert (=> bs!1571354 m!7107256))

(assert (=> bs!1571354 m!7106346))

(assert (=> b!6285508 d!1973029))

(declare-fun d!1973031 () Bool)

(assert (=> d!1973031 (= (Exists!3277 lambda!344974) (choose!46682 lambda!344974))))

(declare-fun bs!1571355 () Bool)

(assert (= bs!1571355 d!1973031))

(declare-fun m!7107338 () Bool)

(assert (=> bs!1571355 m!7107338))

(assert (=> b!6285508 d!1973031))

(declare-fun d!1973033 () Bool)

(assert (=> d!1973033 (= (matchR!8390 lt!2355643 s!2326) (matchRSpec!3308 lt!2355643 s!2326))))

(declare-fun lt!2355860 () Unit!158159)

(assert (=> d!1973033 (= lt!2355860 (choose!46685 lt!2355643 s!2326))))

(assert (=> d!1973033 (validRegex!7943 lt!2355643)))

(assert (=> d!1973033 (= (mainMatchTheorem!3308 lt!2355643 s!2326) lt!2355860)))

(declare-fun bs!1571356 () Bool)

(assert (= bs!1571356 d!1973033))

(assert (=> bs!1571356 m!7106352))

(assert (=> bs!1571356 m!7106322))

(declare-fun m!7107340 () Bool)

(assert (=> bs!1571356 m!7107340))

(assert (=> bs!1571356 m!7107324))

(assert (=> b!6285508 d!1973033))

(declare-fun d!1973035 () Bool)

(assert (=> d!1973035 (= (matchR!8390 lt!2355643 s!2326) (matchZipper!2219 lt!2355647 s!2326))))

(declare-fun lt!2355861 () Unit!158159)

(assert (=> d!1973035 (= lt!2355861 (choose!46691 lt!2355647 lt!2355667 lt!2355643 s!2326))))

(assert (=> d!1973035 (validRegex!7943 lt!2355643)))

(assert (=> d!1973035 (= (theoremZipperRegexEquiv!777 lt!2355647 lt!2355667 lt!2355643 s!2326) lt!2355861)))

(declare-fun bs!1571357 () Bool)

(assert (= bs!1571357 d!1973035))

(assert (=> bs!1571357 m!7106352))

(assert (=> bs!1571357 m!7106338))

(declare-fun m!7107342 () Bool)

(assert (=> bs!1571357 m!7107342))

(assert (=> bs!1571357 m!7107324))

(assert (=> b!6285508 d!1973035))

(declare-fun bs!1571358 () Bool)

(declare-fun d!1973037 () Bool)

(assert (= bs!1571358 (and d!1973037 d!1972901)))

(declare-fun lambda!345083 () Int)

(assert (=> bs!1571358 (= lambda!345083 lambda!345036)))

(declare-fun bs!1571359 () Bool)

(assert (= bs!1571359 (and d!1973037 d!1972999)))

(assert (=> bs!1571359 (= lambda!345083 lambda!345073)))

(declare-fun bs!1571360 () Bool)

(assert (= bs!1571360 (and d!1973037 d!1972927)))

(assert (=> bs!1571360 (= lambda!345083 lambda!345051)))

(declare-fun bs!1571361 () Bool)

(assert (= bs!1571361 (and d!1973037 d!1972899)))

(assert (=> bs!1571361 (= lambda!345083 lambda!345033)))

(declare-fun bs!1571362 () Bool)

(assert (= bs!1571362 (and d!1973037 d!1972941)))

(assert (=> bs!1571362 (= lambda!345083 lambda!345060)))

(declare-fun bs!1571363 () Bool)

(assert (= bs!1571363 (and d!1973037 d!1973007)))

(assert (=> bs!1571363 (= lambda!345083 lambda!345076)))

(declare-fun e!3822803 () Bool)

(assert (=> d!1973037 e!3822803))

(declare-fun res!2592543 () Bool)

(assert (=> d!1973037 (=> (not res!2592543) (not e!3822803))))

(declare-fun lt!2355862 () Regex!16207)

(assert (=> d!1973037 (= res!2592543 (validRegex!7943 lt!2355862))))

(declare-fun e!3822804 () Regex!16207)

(assert (=> d!1973037 (= lt!2355862 e!3822804)))

(declare-fun c!1140517 () Bool)

(declare-fun e!3822805 () Bool)

(assert (=> d!1973037 (= c!1140517 e!3822805)))

(declare-fun res!2592544 () Bool)

(assert (=> d!1973037 (=> (not res!2592544) (not e!3822805))))

(assert (=> d!1973037 (= res!2592544 ((_ is Cons!64796) lt!2355666))))

(assert (=> d!1973037 (forall!15350 lt!2355666 lambda!345083)))

(assert (=> d!1973037 (= (generalisedConcat!1804 lt!2355666) lt!2355862)))

(declare-fun b!6286520 () Bool)

(declare-fun e!3822806 () Bool)

(assert (=> b!6286520 (= e!3822803 e!3822806)))

(declare-fun c!1140516 () Bool)

(assert (=> b!6286520 (= c!1140516 (isEmpty!36845 lt!2355666))))

(declare-fun b!6286521 () Bool)

(declare-fun e!3822807 () Bool)

(assert (=> b!6286521 (= e!3822807 (isConcat!1136 lt!2355862))))

(declare-fun b!6286522 () Bool)

(assert (=> b!6286522 (= e!3822806 (isEmptyExpr!1613 lt!2355862))))

(declare-fun b!6286523 () Bool)

(declare-fun e!3822802 () Regex!16207)

(assert (=> b!6286523 (= e!3822802 EmptyExpr!16207)))

(declare-fun b!6286524 () Bool)

(assert (=> b!6286524 (= e!3822805 (isEmpty!36845 (t!378482 lt!2355666)))))

(declare-fun b!6286525 () Bool)

(assert (=> b!6286525 (= e!3822807 (= lt!2355862 (head!12914 lt!2355666)))))

(declare-fun b!6286526 () Bool)

(assert (=> b!6286526 (= e!3822804 e!3822802)))

(declare-fun c!1140515 () Bool)

(assert (=> b!6286526 (= c!1140515 ((_ is Cons!64796) lt!2355666))))

(declare-fun b!6286527 () Bool)

(assert (=> b!6286527 (= e!3822802 (Concat!25052 (h!71244 lt!2355666) (generalisedConcat!1804 (t!378482 lt!2355666))))))

(declare-fun b!6286528 () Bool)

(assert (=> b!6286528 (= e!3822804 (h!71244 lt!2355666))))

(declare-fun b!6286529 () Bool)

(assert (=> b!6286529 (= e!3822806 e!3822807)))

(declare-fun c!1140518 () Bool)

(assert (=> b!6286529 (= c!1140518 (isEmpty!36845 (tail!11999 lt!2355666)))))

(assert (= (and d!1973037 res!2592544) b!6286524))

(assert (= (and d!1973037 c!1140517) b!6286528))

(assert (= (and d!1973037 (not c!1140517)) b!6286526))

(assert (= (and b!6286526 c!1140515) b!6286527))

(assert (= (and b!6286526 (not c!1140515)) b!6286523))

(assert (= (and d!1973037 res!2592543) b!6286520))

(assert (= (and b!6286520 c!1140516) b!6286522))

(assert (= (and b!6286520 (not c!1140516)) b!6286529))

(assert (= (and b!6286529 c!1140518) b!6286525))

(assert (= (and b!6286529 (not c!1140518)) b!6286521))

(declare-fun m!7107344 () Bool)

(assert (=> b!6286520 m!7107344))

(declare-fun m!7107346 () Bool)

(assert (=> b!6286527 m!7107346))

(declare-fun m!7107348 () Bool)

(assert (=> b!6286524 m!7107348))

(declare-fun m!7107350 () Bool)

(assert (=> b!6286522 m!7107350))

(declare-fun m!7107352 () Bool)

(assert (=> b!6286525 m!7107352))

(declare-fun m!7107354 () Bool)

(assert (=> b!6286529 m!7107354))

(assert (=> b!6286529 m!7107354))

(declare-fun m!7107356 () Bool)

(assert (=> b!6286529 m!7107356))

(declare-fun m!7107358 () Bool)

(assert (=> d!1973037 m!7107358))

(declare-fun m!7107360 () Bool)

(assert (=> d!1973037 m!7107360))

(declare-fun m!7107362 () Bool)

(assert (=> b!6286521 m!7107362))

(assert (=> b!6285508 d!1973037))

(declare-fun b!6286530 () Bool)

(declare-fun e!3822808 () Option!16098)

(assert (=> b!6286530 (= e!3822808 None!16097)))

(declare-fun b!6286531 () Bool)

(declare-fun res!2592546 () Bool)

(declare-fun e!3822810 () Bool)

(assert (=> b!6286531 (=> (not res!2592546) (not e!3822810))))

(declare-fun lt!2355864 () Option!16098)

(assert (=> b!6286531 (= res!2592546 (matchR!8390 (regTwo!32926 (regOne!32926 r!7292)) (_1!36489 (get!22399 lt!2355864))))))

(declare-fun b!6286532 () Bool)

(declare-fun lt!2355865 () Unit!158159)

(declare-fun lt!2355863 () Unit!158159)

(assert (=> b!6286532 (= lt!2355865 lt!2355863)))

(assert (=> b!6286532 (= (++!14280 (++!14280 Nil!64798 (Cons!64798 (h!71246 s!2326) Nil!64798)) (t!378484 s!2326)) s!2326)))

(assert (=> b!6286532 (= lt!2355863 (lemmaMoveElementToOtherListKeepsConcatEq!2375 Nil!64798 (h!71246 s!2326) (t!378484 s!2326) s!2326))))

(assert (=> b!6286532 (= e!3822808 (findConcatSeparation!2512 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 (++!14280 Nil!64798 (Cons!64798 (h!71246 s!2326) Nil!64798)) (t!378484 s!2326) s!2326))))

(declare-fun b!6286533 () Bool)

(declare-fun e!3822811 () Bool)

(assert (=> b!6286533 (= e!3822811 (matchR!8390 lt!2355654 s!2326))))

(declare-fun b!6286534 () Bool)

(declare-fun e!3822812 () Option!16098)

(assert (=> b!6286534 (= e!3822812 (Some!16097 (tuple2!66373 Nil!64798 s!2326)))))

(declare-fun b!6286535 () Bool)

(assert (=> b!6286535 (= e!3822810 (= (++!14280 (_1!36489 (get!22399 lt!2355864)) (_2!36489 (get!22399 lt!2355864))) s!2326))))

(declare-fun b!6286536 () Bool)

(declare-fun e!3822809 () Bool)

(assert (=> b!6286536 (= e!3822809 (not (isDefined!12801 lt!2355864)))))

(declare-fun b!6286537 () Bool)

(declare-fun res!2592545 () Bool)

(assert (=> b!6286537 (=> (not res!2592545) (not e!3822810))))

(assert (=> b!6286537 (= res!2592545 (matchR!8390 lt!2355654 (_2!36489 (get!22399 lt!2355864))))))

(declare-fun b!6286538 () Bool)

(assert (=> b!6286538 (= e!3822812 e!3822808)))

(declare-fun c!1140520 () Bool)

(assert (=> b!6286538 (= c!1140520 ((_ is Nil!64798) s!2326))))

(declare-fun d!1973039 () Bool)

(assert (=> d!1973039 e!3822809))

(declare-fun res!2592547 () Bool)

(assert (=> d!1973039 (=> res!2592547 e!3822809)))

(assert (=> d!1973039 (= res!2592547 e!3822810)))

(declare-fun res!2592548 () Bool)

(assert (=> d!1973039 (=> (not res!2592548) (not e!3822810))))

(assert (=> d!1973039 (= res!2592548 (isDefined!12801 lt!2355864))))

(assert (=> d!1973039 (= lt!2355864 e!3822812)))

(declare-fun c!1140519 () Bool)

(assert (=> d!1973039 (= c!1140519 e!3822811)))

(declare-fun res!2592549 () Bool)

(assert (=> d!1973039 (=> (not res!2592549) (not e!3822811))))

(assert (=> d!1973039 (= res!2592549 (matchR!8390 (regTwo!32926 (regOne!32926 r!7292)) Nil!64798))))

(assert (=> d!1973039 (validRegex!7943 (regTwo!32926 (regOne!32926 r!7292)))))

(assert (=> d!1973039 (= (findConcatSeparation!2512 (regTwo!32926 (regOne!32926 r!7292)) lt!2355654 Nil!64798 s!2326 s!2326) lt!2355864)))

(assert (= (and d!1973039 res!2592549) b!6286533))

(assert (= (and d!1973039 c!1140519) b!6286534))

(assert (= (and d!1973039 (not c!1140519)) b!6286538))

(assert (= (and b!6286538 c!1140520) b!6286530))

(assert (= (and b!6286538 (not c!1140520)) b!6286532))

(assert (= (and d!1973039 res!2592548) b!6286531))

(assert (= (and b!6286531 res!2592546) b!6286537))

(assert (= (and b!6286537 res!2592545) b!6286535))

(assert (= (and d!1973039 (not res!2592547)) b!6286536))

(declare-fun m!7107364 () Bool)

(assert (=> d!1973039 m!7107364))

(declare-fun m!7107366 () Bool)

(assert (=> d!1973039 m!7107366))

(assert (=> d!1973039 m!7106330))

(assert (=> b!6286536 m!7107364))

(declare-fun m!7107368 () Bool)

(assert (=> b!6286533 m!7107368))

(declare-fun m!7107370 () Bool)

(assert (=> b!6286535 m!7107370))

(declare-fun m!7107372 () Bool)

(assert (=> b!6286535 m!7107372))

(assert (=> b!6286537 m!7107370))

(declare-fun m!7107374 () Bool)

(assert (=> b!6286537 m!7107374))

(assert (=> b!6286531 m!7107370))

(declare-fun m!7107376 () Bool)

(assert (=> b!6286531 m!7107376))

(assert (=> b!6286532 m!7107016))

(assert (=> b!6286532 m!7107016))

(assert (=> b!6286532 m!7107018))

(assert (=> b!6286532 m!7107020))

(assert (=> b!6286532 m!7107016))

(declare-fun m!7107378 () Bool)

(assert (=> b!6286532 m!7107378))

(assert (=> b!6285508 d!1973039))

(assert (=> b!6285509 d!1972913))

(declare-fun bs!1571364 () Bool)

(declare-fun d!1973041 () Bool)

(assert (= bs!1571364 (and d!1973041 d!1972901)))

(declare-fun lambda!345084 () Int)

(assert (=> bs!1571364 (= lambda!345084 lambda!345036)))

(declare-fun bs!1571365 () Bool)

(assert (= bs!1571365 (and d!1973041 d!1972999)))

(assert (=> bs!1571365 (= lambda!345084 lambda!345073)))

(declare-fun bs!1571366 () Bool)

(assert (= bs!1571366 (and d!1973041 d!1972927)))

(assert (=> bs!1571366 (= lambda!345084 lambda!345051)))

(declare-fun bs!1571367 () Bool)

(assert (= bs!1571367 (and d!1973041 d!1972899)))

(assert (=> bs!1571367 (= lambda!345084 lambda!345033)))

(declare-fun bs!1571368 () Bool)

(assert (= bs!1571368 (and d!1973041 d!1973037)))

(assert (=> bs!1571368 (= lambda!345084 lambda!345083)))

(declare-fun bs!1571369 () Bool)

(assert (= bs!1571369 (and d!1973041 d!1972941)))

(assert (=> bs!1571369 (= lambda!345084 lambda!345060)))

(declare-fun bs!1571370 () Bool)

(assert (= bs!1571370 (and d!1973041 d!1973007)))

(assert (=> bs!1571370 (= lambda!345084 lambda!345076)))

(assert (=> d!1973041 (= (inv!83764 setElem!42776) (forall!15350 (exprs!6091 setElem!42776) lambda!345084))))

(declare-fun bs!1571371 () Bool)

(assert (= bs!1571371 d!1973041))

(declare-fun m!7107380 () Bool)

(assert (=> bs!1571371 m!7107380))

(assert (=> setNonEmpty!42776 d!1973041))

(declare-fun d!1973043 () Bool)

(assert (=> d!1973043 (= (flatMap!1712 lt!2355647 lambda!344972) (dynLambda!25641 lambda!344972 lt!2355658))))

(declare-fun lt!2355866 () Unit!158159)

(assert (=> d!1973043 (= lt!2355866 (choose!46687 lt!2355647 lt!2355658 lambda!344972))))

(assert (=> d!1973043 (= lt!2355647 (store ((as const (Array Context!11182 Bool)) false) lt!2355658 true))))

(assert (=> d!1973043 (= (lemmaFlatMapOnSingletonSet!1238 lt!2355647 lt!2355658 lambda!344972) lt!2355866)))

(declare-fun b_lambda!239285 () Bool)

(assert (=> (not b_lambda!239285) (not d!1973043)))

(declare-fun bs!1571372 () Bool)

(assert (= bs!1571372 d!1973043))

(assert (=> bs!1571372 m!7106264))

(declare-fun m!7107382 () Bool)

(assert (=> bs!1571372 m!7107382))

(declare-fun m!7107384 () Bool)

(assert (=> bs!1571372 m!7107384))

(assert (=> bs!1571372 m!7106270))

(assert (=> b!6285488 d!1973043))

(declare-fun d!1973045 () Bool)

(assert (=> d!1973045 (= (flatMap!1712 lt!2355647 lambda!344972) (choose!46688 lt!2355647 lambda!344972))))

(declare-fun bs!1571373 () Bool)

(assert (= bs!1571373 d!1973045))

(declare-fun m!7107386 () Bool)

(assert (=> bs!1571373 m!7107386))

(assert (=> b!6285488 d!1973045))

(assert (=> b!6285488 d!1972985))

(declare-fun b!6286539 () Bool)

(declare-fun e!3822814 () (InoxSet Context!11182))

(declare-fun call!532256 () (InoxSet Context!11182))

(assert (=> b!6286539 (= e!3822814 call!532256)))

(declare-fun b!6286540 () Bool)

(declare-fun e!3822815 () Bool)

(assert (=> b!6286540 (= e!3822815 (nullable!6200 (h!71244 (exprs!6091 lt!2355658))))))

(declare-fun b!6286541 () Bool)

(assert (=> b!6286541 (= e!3822814 ((as const (Array Context!11182 Bool)) false))))

(declare-fun b!6286542 () Bool)

(declare-fun e!3822813 () (InoxSet Context!11182))

(assert (=> b!6286542 (= e!3822813 e!3822814)))

(declare-fun c!1140521 () Bool)

(assert (=> b!6286542 (= c!1140521 ((_ is Cons!64796) (exprs!6091 lt!2355658)))))

(declare-fun b!6286543 () Bool)

(assert (=> b!6286543 (= e!3822813 ((_ map or) call!532256 (derivationStepZipperUp!1381 (Context!11183 (t!378482 (exprs!6091 lt!2355658))) (h!71246 s!2326))))))

(declare-fun d!1973047 () Bool)

(declare-fun c!1140522 () Bool)

(assert (=> d!1973047 (= c!1140522 e!3822815)))

(declare-fun res!2592550 () Bool)

(assert (=> d!1973047 (=> (not res!2592550) (not e!3822815))))

(assert (=> d!1973047 (= res!2592550 ((_ is Cons!64796) (exprs!6091 lt!2355658)))))

(assert (=> d!1973047 (= (derivationStepZipperUp!1381 lt!2355658 (h!71246 s!2326)) e!3822813)))

(declare-fun bm!532251 () Bool)

(assert (=> bm!532251 (= call!532256 (derivationStepZipperDown!1455 (h!71244 (exprs!6091 lt!2355658)) (Context!11183 (t!378482 (exprs!6091 lt!2355658))) (h!71246 s!2326)))))

(assert (= (and d!1973047 res!2592550) b!6286540))

(assert (= (and d!1973047 c!1140522) b!6286543))

(assert (= (and d!1973047 (not c!1140522)) b!6286542))

(assert (= (and b!6286542 c!1140521) b!6286539))

(assert (= (and b!6286542 (not c!1140521)) b!6286541))

(assert (= (or b!6286543 b!6286539) bm!532251))

(declare-fun m!7107388 () Bool)

(assert (=> b!6286540 m!7107388))

(declare-fun m!7107390 () Bool)

(assert (=> b!6286543 m!7107390))

(declare-fun m!7107392 () Bool)

(assert (=> bm!532251 m!7107392))

(assert (=> b!6285488 d!1973047))

(declare-fun bs!1571374 () Bool)

(declare-fun d!1973049 () Bool)

(assert (= bs!1571374 (and d!1973049 b!6285512)))

(declare-fun lambda!345085 () Int)

(assert (=> bs!1571374 (= lambda!345085 lambda!344972)))

(declare-fun bs!1571375 () Bool)

(assert (= bs!1571375 (and d!1973049 d!1972909)))

(assert (=> bs!1571375 (= lambda!345085 lambda!345039)))

(assert (=> d!1973049 true))

(assert (=> d!1973049 (= (derivationStepZipper!2173 lt!2355647 (h!71246 s!2326)) (flatMap!1712 lt!2355647 lambda!345085))))

(declare-fun bs!1571376 () Bool)

(assert (= bs!1571376 d!1973049))

(declare-fun m!7107394 () Bool)

(assert (=> bs!1571376 m!7107394))

(assert (=> b!6285488 d!1973049))

(declare-fun b!6286555 () Bool)

(declare-fun e!3822818 () Bool)

(declare-fun tp!1751223 () Bool)

(declare-fun tp!1751225 () Bool)

(assert (=> b!6286555 (= e!3822818 (and tp!1751223 tp!1751225))))

(declare-fun b!6286554 () Bool)

(assert (=> b!6286554 (= e!3822818 tp_is_empty!41667)))

(declare-fun b!6286556 () Bool)

(declare-fun tp!1751227 () Bool)

(assert (=> b!6286556 (= e!3822818 tp!1751227)))

(assert (=> b!6285486 (= tp!1751147 e!3822818)))

(declare-fun b!6286557 () Bool)

(declare-fun tp!1751226 () Bool)

(declare-fun tp!1751224 () Bool)

(assert (=> b!6286557 (= e!3822818 (and tp!1751226 tp!1751224))))

(assert (= (and b!6285486 ((_ is ElementMatch!16207) (reg!16536 r!7292))) b!6286554))

(assert (= (and b!6285486 ((_ is Concat!25052) (reg!16536 r!7292))) b!6286555))

(assert (= (and b!6285486 ((_ is Star!16207) (reg!16536 r!7292))) b!6286556))

(assert (= (and b!6285486 ((_ is Union!16207) (reg!16536 r!7292))) b!6286557))

(declare-fun b!6286562 () Bool)

(declare-fun e!3822821 () Bool)

(declare-fun tp!1751232 () Bool)

(declare-fun tp!1751233 () Bool)

(assert (=> b!6286562 (= e!3822821 (and tp!1751232 tp!1751233))))

(assert (=> b!6285501 (= tp!1751150 e!3822821)))

(assert (= (and b!6285501 ((_ is Cons!64796) (exprs!6091 (h!71245 zl!343)))) b!6286562))

(declare-fun b!6286564 () Bool)

(declare-fun e!3822822 () Bool)

(declare-fun tp!1751234 () Bool)

(declare-fun tp!1751236 () Bool)

(assert (=> b!6286564 (= e!3822822 (and tp!1751234 tp!1751236))))

(declare-fun b!6286563 () Bool)

(assert (=> b!6286563 (= e!3822822 tp_is_empty!41667)))

(declare-fun b!6286565 () Bool)

(declare-fun tp!1751238 () Bool)

(assert (=> b!6286565 (= e!3822822 tp!1751238)))

(assert (=> b!6285496 (= tp!1751154 e!3822822)))

(declare-fun b!6286566 () Bool)

(declare-fun tp!1751237 () Bool)

(declare-fun tp!1751235 () Bool)

(assert (=> b!6286566 (= e!3822822 (and tp!1751237 tp!1751235))))

(assert (= (and b!6285496 ((_ is ElementMatch!16207) (regOne!32926 r!7292))) b!6286563))

(assert (= (and b!6285496 ((_ is Concat!25052) (regOne!32926 r!7292))) b!6286564))

(assert (= (and b!6285496 ((_ is Star!16207) (regOne!32926 r!7292))) b!6286565))

(assert (= (and b!6285496 ((_ is Union!16207) (regOne!32926 r!7292))) b!6286566))

(declare-fun b!6286568 () Bool)

(declare-fun e!3822823 () Bool)

(declare-fun tp!1751239 () Bool)

(declare-fun tp!1751241 () Bool)

(assert (=> b!6286568 (= e!3822823 (and tp!1751239 tp!1751241))))

(declare-fun b!6286567 () Bool)

(assert (=> b!6286567 (= e!3822823 tp_is_empty!41667)))

(declare-fun b!6286569 () Bool)

(declare-fun tp!1751243 () Bool)

(assert (=> b!6286569 (= e!3822823 tp!1751243)))

(assert (=> b!6285496 (= tp!1751146 e!3822823)))

(declare-fun b!6286570 () Bool)

(declare-fun tp!1751242 () Bool)

(declare-fun tp!1751240 () Bool)

(assert (=> b!6286570 (= e!3822823 (and tp!1751242 tp!1751240))))

(assert (= (and b!6285496 ((_ is ElementMatch!16207) (regTwo!32926 r!7292))) b!6286567))

(assert (= (and b!6285496 ((_ is Concat!25052) (regTwo!32926 r!7292))) b!6286568))

(assert (= (and b!6285496 ((_ is Star!16207) (regTwo!32926 r!7292))) b!6286569))

(assert (= (and b!6285496 ((_ is Union!16207) (regTwo!32926 r!7292))) b!6286570))

(declare-fun b!6286575 () Bool)

(declare-fun e!3822826 () Bool)

(declare-fun tp!1751246 () Bool)

(assert (=> b!6286575 (= e!3822826 (and tp_is_empty!41667 tp!1751246))))

(assert (=> b!6285510 (= tp!1751149 e!3822826)))

(assert (= (and b!6285510 ((_ is Cons!64798) (t!378484 s!2326))) b!6286575))

(declare-fun b!6286576 () Bool)

(declare-fun e!3822827 () Bool)

(declare-fun tp!1751247 () Bool)

(declare-fun tp!1751248 () Bool)

(assert (=> b!6286576 (= e!3822827 (and tp!1751247 tp!1751248))))

(assert (=> b!6285489 (= tp!1751153 e!3822827)))

(assert (= (and b!6285489 ((_ is Cons!64796) (exprs!6091 setElem!42776))) b!6286576))

(declare-fun b!6286584 () Bool)

(declare-fun e!3822833 () Bool)

(declare-fun tp!1751253 () Bool)

(assert (=> b!6286584 (= e!3822833 tp!1751253)))

(declare-fun e!3822832 () Bool)

(declare-fun b!6286583 () Bool)

(declare-fun tp!1751254 () Bool)

(assert (=> b!6286583 (= e!3822832 (and (inv!83764 (h!71245 (t!378483 zl!343))) e!3822833 tp!1751254))))

(assert (=> b!6285514 (= tp!1751145 e!3822832)))

(assert (= b!6286583 b!6286584))

(assert (= (and b!6285514 ((_ is Cons!64797) (t!378483 zl!343))) b!6286583))

(declare-fun m!7107396 () Bool)

(assert (=> b!6286583 m!7107396))

(declare-fun b!6286586 () Bool)

(declare-fun e!3822834 () Bool)

(declare-fun tp!1751255 () Bool)

(declare-fun tp!1751257 () Bool)

(assert (=> b!6286586 (= e!3822834 (and tp!1751255 tp!1751257))))

(declare-fun b!6286585 () Bool)

(assert (=> b!6286585 (= e!3822834 tp_is_empty!41667)))

(declare-fun b!6286587 () Bool)

(declare-fun tp!1751259 () Bool)

(assert (=> b!6286587 (= e!3822834 tp!1751259)))

(assert (=> b!6285499 (= tp!1751151 e!3822834)))

(declare-fun b!6286588 () Bool)

(declare-fun tp!1751258 () Bool)

(declare-fun tp!1751256 () Bool)

(assert (=> b!6286588 (= e!3822834 (and tp!1751258 tp!1751256))))

(assert (= (and b!6285499 ((_ is ElementMatch!16207) (regOne!32927 r!7292))) b!6286585))

(assert (= (and b!6285499 ((_ is Concat!25052) (regOne!32927 r!7292))) b!6286586))

(assert (= (and b!6285499 ((_ is Star!16207) (regOne!32927 r!7292))) b!6286587))

(assert (= (and b!6285499 ((_ is Union!16207) (regOne!32927 r!7292))) b!6286588))

(declare-fun b!6286590 () Bool)

(declare-fun e!3822835 () Bool)

(declare-fun tp!1751260 () Bool)

(declare-fun tp!1751262 () Bool)

(assert (=> b!6286590 (= e!3822835 (and tp!1751260 tp!1751262))))

(declare-fun b!6286589 () Bool)

(assert (=> b!6286589 (= e!3822835 tp_is_empty!41667)))

(declare-fun b!6286591 () Bool)

(declare-fun tp!1751264 () Bool)

(assert (=> b!6286591 (= e!3822835 tp!1751264)))

(assert (=> b!6285499 (= tp!1751148 e!3822835)))

(declare-fun b!6286592 () Bool)

(declare-fun tp!1751263 () Bool)

(declare-fun tp!1751261 () Bool)

(assert (=> b!6286592 (= e!3822835 (and tp!1751263 tp!1751261))))

(assert (= (and b!6285499 ((_ is ElementMatch!16207) (regTwo!32927 r!7292))) b!6286589))

(assert (= (and b!6285499 ((_ is Concat!25052) (regTwo!32927 r!7292))) b!6286590))

(assert (= (and b!6285499 ((_ is Star!16207) (regTwo!32927 r!7292))) b!6286591))

(assert (= (and b!6285499 ((_ is Union!16207) (regTwo!32927 r!7292))) b!6286592))

(declare-fun condSetEmpty!42782 () Bool)

(assert (=> setNonEmpty!42776 (= condSetEmpty!42782 (= setRest!42776 ((as const (Array Context!11182 Bool)) false)))))

(declare-fun setRes!42782 () Bool)

(assert (=> setNonEmpty!42776 (= tp!1751152 setRes!42782)))

(declare-fun setIsEmpty!42782 () Bool)

(assert (=> setIsEmpty!42782 setRes!42782))

(declare-fun tp!1751269 () Bool)

(declare-fun setNonEmpty!42782 () Bool)

(declare-fun setElem!42782 () Context!11182)

(declare-fun e!3822838 () Bool)

(assert (=> setNonEmpty!42782 (= setRes!42782 (and tp!1751269 (inv!83764 setElem!42782) e!3822838))))

(declare-fun setRest!42782 () (InoxSet Context!11182))

(assert (=> setNonEmpty!42782 (= setRest!42776 ((_ map or) (store ((as const (Array Context!11182 Bool)) false) setElem!42782 true) setRest!42782))))

(declare-fun b!6286597 () Bool)

(declare-fun tp!1751270 () Bool)

(assert (=> b!6286597 (= e!3822838 tp!1751270)))

(assert (= (and setNonEmpty!42776 condSetEmpty!42782) setIsEmpty!42782))

(assert (= (and setNonEmpty!42776 (not condSetEmpty!42782)) setNonEmpty!42782))

(assert (= setNonEmpty!42782 b!6286597))

(declare-fun m!7107398 () Bool)

(assert (=> setNonEmpty!42782 m!7107398))

(declare-fun b_lambda!239287 () Bool)

(assert (= b_lambda!239283 (or b!6285512 b_lambda!239287)))

(declare-fun bs!1571377 () Bool)

(declare-fun d!1973051 () Bool)

(assert (= bs!1571377 (and d!1973051 b!6285512)))

(assert (=> bs!1571377 (= (dynLambda!25641 lambda!344972 lt!2355646) (derivationStepZipperUp!1381 lt!2355646 (h!71246 s!2326)))))

(assert (=> bs!1571377 m!7106262))

(assert (=> d!1972977 d!1973051))

(declare-fun b_lambda!239289 () Bool)

(assert (= b_lambda!239285 (or b!6285512 b_lambda!239289)))

(declare-fun bs!1571378 () Bool)

(declare-fun d!1973053 () Bool)

(assert (= bs!1571378 (and d!1973053 b!6285512)))

(assert (=> bs!1571378 (= (dynLambda!25641 lambda!344972 lt!2355658) (derivationStepZipperUp!1381 lt!2355658 (h!71246 s!2326)))))

(assert (=> bs!1571378 m!7106266))

(assert (=> d!1973043 d!1973053))

(declare-fun b_lambda!239291 () Bool)

(assert (= b_lambda!239281 (or b!6285512 b_lambda!239291)))

(declare-fun bs!1571379 () Bool)

(declare-fun d!1973055 () Bool)

(assert (= bs!1571379 (and d!1973055 b!6285512)))

(assert (=> bs!1571379 (= (dynLambda!25641 lambda!344972 (h!71245 zl!343)) (derivationStepZipperUp!1381 (h!71245 zl!343) (h!71246 s!2326)))))

(assert (=> bs!1571379 m!7106394))

(assert (=> d!1972953 d!1973055))

(check-sat (not d!1972965) (not d!1972993) (not b!6286328) (not bm!532238) (not b!6286212) (not b!6286518) (not b!6286179) (not b!6286251) (not d!1972915) (not b!6286569) (not b!6286455) (not b!6286565) (not b!6286508) (not b!6286125) (not b_lambda!239289) (not bs!1571379) (not bm!532225) (not bm!532235) (not b!6286520) (not bm!532249) (not b!6286399) (not bm!532250) (not b!6286557) (not b!6286412) (not b!6286161) (not b_lambda!239287) (not setNonEmpty!42782) (not b!6286591) (not b!6286435) (not b!6286556) (not bm!532241) (not d!1973007) (not d!1973035) (not b!6286521) (not b!6286160) (not b!6286428) (not b!6286592) (not b!6286437) (not b!6286406) (not b!6286524) (not b!6286459) (not d!1972983) (not b!6286153) (not b!6286427) (not b_lambda!239291) (not d!1972923) (not d!1972987) (not b!6286504) (not b!6286458) (not b!6286532) (not d!1972963) (not b!6286325) (not b!6286335) (not b!6286500) (not bm!532211) (not b!6286494) (not d!1972989) (not b!6286473) (not b!6286456) (not d!1973023) (not d!1972997) (not b!6286467) (not b!6286525) (not d!1972999) (not bm!532218) (not b!6286481) (not b!6286510) (not b!6286414) (not bm!532251) (not b!6286568) (not b!6286333) (not b!6286460) (not b!6286430) (not d!1973027) (not d!1973019) (not d!1972917) (not b!6286208) (not d!1972907) (not b!6286180) (not b!6286331) (not d!1973025) (not bm!532243) (not b!6286408) tp_is_empty!41667 (not b!6286247) (not b!6286587) (not b!6286175) (not d!1972961) (not bm!532240) (not b!6286533) (not b!6286156) (not b!6286590) (not b!6286562) (not bs!1571377) (not b!6286442) (not b!6286584) (not b!6286360) (not d!1972913) (not b!6286085) (not d!1972901) (not b!6286211) (not d!1973013) (not d!1972925) (not b!6286206) (not bm!532210) (not d!1972977) (not bm!532242) (not bm!532226) (not d!1972927) (not b!6286440) (not d!1972911) (not d!1972953) (not b!6286531) (not b!6286564) (not b!6286502) (not b!6286429) (not b!6286597) (not b!6286487) (not b!6286496) (not bm!532232) (not d!1972995) (not d!1973043) (not d!1972975) (not b!6286514) (not d!1972979) (not b!6286210) (not b!6286243) (not b!6286386) (not b!6286397) (not b!6286537) (not b!6286389) (not b!6286391) (not d!1973015) (not b!6286441) (not b!6286207) (not b!6286431) (not b!6286543) (not b!6286174) (not d!1972941) (not bs!1571378) (not b!6286181) (not b!6286162) (not b!6286463) (not d!1972931) (not bm!532205) (not bm!532202) (not b!6286527) (not d!1972909) (not b!6286575) (not b!6286540) (not b!6286424) (not b!6286462) (not d!1972933) (not d!1973031) (not b!6286522) (not b!6286586) (not bm!532239) (not b!6286566) (not b!6286536) (not b!6286157) (not b!6286167) (not b!6286448) (not b!6286413) (not b!6286423) (not d!1973017) (not b!6286351) (not d!1972973) (not b!6286439) (not bm!532246) (not b!6286353) (not b!6286244) (not d!1973037) (not d!1972957) (not b!6286176) (not d!1973049) (not b!6286529) (not b!6286417) (not b!6286401) (not d!1972949) (not b!6286394) (not b!6286570) (not d!1972991) (not b!6286398) (not b!6286464) (not b!6286497) (not b!6286583) (not b!6286454) (not b!6286422) (not b!6286576) (not b!6286343) (not bm!532229) (not b!6286555) (not d!1973001) (not b!6286381) (not d!1973005) (not b!6286466) (not b!6286096) (not b!6286588) (not d!1972919) (not bm!532220) (not d!1973039) (not b!6286471) (not b!6286432) (not bm!532248) (not bm!532204) (not b!6286356) (not b!6286425) (not bm!532208) (not b!6286419) (not d!1972981) (not b!6286249) (not d!1972971) (not b!6286290) (not b!6286516) (not b!6286173) (not b!6286535) (not d!1973029) (not d!1972921) (not b!6286341) (not b!6286154) (not b!6286182) (not b!6286426) (not b!6286415) (not b!6286358) (not b!6286242) (not b!6286416) (not b!6286400) (not d!1972897) (not b!6286384) (not b!6286434) (not bm!532234) (not bm!532244) (not d!1973041) (not b!6286511) (not bm!532247) (not d!1972899) (not b!6286246) (not b!6286469) (not b!6286327) (not d!1973011) (not b!6286284) (not d!1973033) (not d!1972905) (not d!1973045))
(check-sat)
