; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!606238 () Bool)

(assert start!606238)

(declare-fun b!6001428 () Bool)

(assert (=> b!6001428 true))

(assert (=> b!6001428 true))

(declare-fun lambda!327638 () Int)

(declare-fun lambda!327637 () Int)

(assert (=> b!6001428 (not (= lambda!327638 lambda!327637))))

(assert (=> b!6001428 true))

(assert (=> b!6001428 true))

(declare-fun b!6001405 () Bool)

(assert (=> b!6001405 true))

(declare-fun b!6001404 () Bool)

(declare-fun e!3668130 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32296 0))(
  ( (C!32297 (val!25850 Int)) )
))
(declare-datatypes ((Regex!16013 0))(
  ( (ElementMatch!16013 (c!1072394 C!32296)) (Concat!24858 (regOne!32538 Regex!16013) (regTwo!32538 Regex!16013)) (EmptyExpr!16013) (Star!16013 (reg!16342 Regex!16013)) (EmptyLang!16013) (Union!16013 (regOne!32539 Regex!16013) (regTwo!32539 Regex!16013)) )
))
(declare-datatypes ((List!64338 0))(
  ( (Nil!64214) (Cons!64214 (h!70662 Regex!16013) (t!377761 List!64338)) )
))
(declare-datatypes ((Context!10794 0))(
  ( (Context!10795 (exprs!5897 List!64338)) )
))
(declare-fun lt!2319239 () (InoxSet Context!10794))

(declare-datatypes ((List!64339 0))(
  ( (Nil!64215) (Cons!64215 (h!70663 C!32296) (t!377762 List!64339)) )
))
(declare-fun s!2326 () List!64339)

(declare-fun matchZipper!2049 ((InoxSet Context!10794) List!64339) Bool)

(assert (=> b!6001404 (= e!3668130 (matchZipper!2049 lt!2319239 (t!377762 s!2326)))))

(declare-fun e!3668126 () Bool)

(declare-fun e!3668129 () Bool)

(assert (=> b!6001405 (= e!3668126 e!3668129)))

(declare-fun res!2504745 () Bool)

(assert (=> b!6001405 (=> res!2504745 e!3668129)))

(declare-fun lt!2319237 () (InoxSet Context!10794))

(declare-fun lt!2319231 () (InoxSet Context!10794))

(assert (=> b!6001405 (= res!2504745 (not (= lt!2319237 lt!2319231)))))

(declare-datatypes ((List!64340 0))(
  ( (Nil!64216) (Cons!64216 (h!70664 Context!10794) (t!377763 List!64340)) )
))
(declare-fun zl!343 () List!64340)

(declare-fun lambda!327639 () Int)

(declare-fun z!1189 () (InoxSet Context!10794))

(declare-fun flatMap!1526 ((InoxSet Context!10794) Int) (InoxSet Context!10794))

(declare-fun derivationStepZipperUp!1189 (Context!10794 C!32296) (InoxSet Context!10794))

(assert (=> b!6001405 (= (flatMap!1526 z!1189 lambda!327639) (derivationStepZipperUp!1189 (h!70664 zl!343) (h!70663 s!2326)))))

(declare-datatypes ((Unit!157297 0))(
  ( (Unit!157298) )
))
(declare-fun lt!2319208 () Unit!157297)

(declare-fun lemmaFlatMapOnSingletonSet!1052 ((InoxSet Context!10794) Context!10794 Int) Unit!157297)

(assert (=> b!6001405 (= lt!2319208 (lemmaFlatMapOnSingletonSet!1052 z!1189 (h!70664 zl!343) lambda!327639))))

(declare-fun setRes!40700 () Bool)

(declare-fun tp!1669180 () Bool)

(declare-fun e!3668119 () Bool)

(declare-fun setElem!40700 () Context!10794)

(declare-fun setNonEmpty!40700 () Bool)

(declare-fun inv!83279 (Context!10794) Bool)

(assert (=> setNonEmpty!40700 (= setRes!40700 (and tp!1669180 (inv!83279 setElem!40700) e!3668119))))

(declare-fun setRest!40700 () (InoxSet Context!10794))

(assert (=> setNonEmpty!40700 (= z!1189 ((_ map or) (store ((as const (Array Context!10794 Bool)) false) setElem!40700 true) setRest!40700))))

(declare-fun b!6001406 () Bool)

(declare-fun res!2504735 () Bool)

(declare-fun e!3668124 () Bool)

(assert (=> b!6001406 (=> res!2504735 e!3668124)))

(declare-fun r!7292 () Regex!16013)

(get-info :version)

(assert (=> b!6001406 (= res!2504735 (or ((_ is EmptyExpr!16013) r!7292) ((_ is EmptyLang!16013) r!7292) ((_ is ElementMatch!16013) r!7292) ((_ is Union!16013) r!7292) (not ((_ is Concat!24858) r!7292))))))

(declare-fun b!6001407 () Bool)

(declare-fun res!2504752 () Bool)

(declare-fun e!3668117 () Bool)

(assert (=> b!6001407 (=> res!2504752 e!3668117)))

(declare-fun lt!2319207 () (InoxSet Context!10794))

(declare-fun lt!2319222 () (InoxSet Context!10794))

(declare-fun lt!2319211 () (InoxSet Context!10794))

(declare-fun lt!2319216 () (InoxSet Context!10794))

(assert (=> b!6001407 (= res!2504752 (or (not (= lt!2319216 ((_ map or) lt!2319207 lt!2319211))) (not (= lt!2319216 lt!2319222)) (not (= lt!2319216 lt!2319237))))))

(declare-fun b!6001408 () Bool)

(declare-fun e!3668113 () Bool)

(declare-fun e!3668114 () Bool)

(assert (=> b!6001408 (= e!3668113 e!3668114)))

(declare-fun res!2504743 () Bool)

(assert (=> b!6001408 (=> res!2504743 e!3668114)))

(declare-fun lt!2319227 () Regex!16013)

(declare-fun regexDepth!270 (Regex!16013) Int)

(assert (=> b!6001408 (= res!2504743 (not (= (regexDepth!270 r!7292) (regexDepth!270 lt!2319227))))))

(assert (=> b!6001408 (= lt!2319227 (Concat!24858 (regOne!32538 r!7292) (regTwo!32538 r!7292)))))

(declare-fun b!6001409 () Bool)

(declare-fun e!3668121 () Bool)

(declare-fun e!3668115 () Bool)

(assert (=> b!6001409 (= e!3668121 e!3668115)))

(declare-fun res!2504751 () Bool)

(assert (=> b!6001409 (=> res!2504751 e!3668115)))

(assert (=> b!6001409 (= res!2504751 (not (= lt!2319237 lt!2319222)))))

(assert (=> b!6001409 (= lt!2319222 ((_ map or) lt!2319207 lt!2319239))))

(declare-fun res!2504747 () Bool)

(declare-fun e!3668123 () Bool)

(assert (=> start!606238 (=> (not res!2504747) (not e!3668123))))

(declare-fun validRegex!7749 (Regex!16013) Bool)

(assert (=> start!606238 (= res!2504747 (validRegex!7749 r!7292))))

(assert (=> start!606238 e!3668123))

(declare-fun e!3668120 () Bool)

(assert (=> start!606238 e!3668120))

(declare-fun condSetEmpty!40700 () Bool)

(assert (=> start!606238 (= condSetEmpty!40700 (= z!1189 ((as const (Array Context!10794 Bool)) false)))))

(assert (=> start!606238 setRes!40700))

(declare-fun e!3668125 () Bool)

(assert (=> start!606238 e!3668125))

(declare-fun e!3668122 () Bool)

(assert (=> start!606238 e!3668122))

(declare-fun b!6001410 () Bool)

(declare-fun res!2504750 () Bool)

(declare-fun e!3668116 () Bool)

(assert (=> b!6001410 (=> res!2504750 e!3668116)))

(declare-fun isEmpty!36109 (List!64338) Bool)

(assert (=> b!6001410 (= res!2504750 (not (isEmpty!36109 (t!377761 (exprs!5897 (h!70664 zl!343))))))))

(declare-fun b!6001411 () Bool)

(declare-fun e!3668118 () Bool)

(assert (=> b!6001411 (= e!3668117 e!3668118)))

(declare-fun res!2504748 () Bool)

(assert (=> b!6001411 (=> res!2504748 e!3668118)))

(declare-fun lt!2319225 () (InoxSet Context!10794))

(declare-fun lt!2319230 () Bool)

(declare-fun derivationStepZipper!1994 ((InoxSet Context!10794) C!32296) (InoxSet Context!10794))

(assert (=> b!6001411 (= res!2504748 (not (= lt!2319230 (matchZipper!2049 (derivationStepZipper!1994 lt!2319225 (h!70663 s!2326)) (t!377762 s!2326)))))))

(assert (=> b!6001411 (= lt!2319230 (matchZipper!2049 lt!2319225 s!2326))))

(declare-fun b!6001412 () Bool)

(declare-fun tp!1669172 () Bool)

(declare-fun tp!1669181 () Bool)

(assert (=> b!6001412 (= e!3668120 (and tp!1669172 tp!1669181))))

(declare-fun b!6001413 () Bool)

(declare-fun res!2504734 () Bool)

(assert (=> b!6001413 (=> (not res!2504734) (not e!3668123))))

(declare-fun unfocusZipper!1755 (List!64340) Regex!16013)

(assert (=> b!6001413 (= res!2504734 (= r!7292 (unfocusZipper!1755 zl!343)))))

(declare-fun b!6001414 () Bool)

(declare-fun e!3668127 () Bool)

(declare-fun tp!1669176 () Bool)

(assert (=> b!6001414 (= e!3668127 tp!1669176)))

(declare-fun b!6001415 () Bool)

(assert (=> b!6001415 (= e!3668129 e!3668121)))

(declare-fun res!2504753 () Bool)

(assert (=> b!6001415 (=> res!2504753 e!3668121)))

(declare-fun nullable!6008 (Regex!16013) Bool)

(assert (=> b!6001415 (= res!2504753 (not (nullable!6008 (regOne!32538 r!7292))))))

(declare-fun lt!2319218 () Context!10794)

(declare-fun derivationStepZipperDown!1263 (Regex!16013 Context!10794 C!32296) (InoxSet Context!10794))

(assert (=> b!6001415 (= lt!2319239 (derivationStepZipperDown!1263 (regTwo!32538 r!7292) lt!2319218 (h!70663 s!2326)))))

(declare-fun lt!2319241 () Context!10794)

(assert (=> b!6001415 (= lt!2319207 (derivationStepZipperDown!1263 (regOne!32538 r!7292) lt!2319241 (h!70663 s!2326)))))

(declare-fun lt!2319240 () (InoxSet Context!10794))

(assert (=> b!6001415 (= (flatMap!1526 lt!2319240 lambda!327639) (derivationStepZipperUp!1189 lt!2319241 (h!70663 s!2326)))))

(declare-fun lt!2319220 () Unit!157297)

(assert (=> b!6001415 (= lt!2319220 (lemmaFlatMapOnSingletonSet!1052 lt!2319240 lt!2319241 lambda!327639))))

(declare-fun lt!2319226 () Context!10794)

(assert (=> b!6001415 (= (flatMap!1526 lt!2319225 lambda!327639) (derivationStepZipperUp!1189 lt!2319226 (h!70663 s!2326)))))

(declare-fun lt!2319224 () Unit!157297)

(assert (=> b!6001415 (= lt!2319224 (lemmaFlatMapOnSingletonSet!1052 lt!2319225 lt!2319226 lambda!327639))))

(assert (=> b!6001415 (= lt!2319211 (derivationStepZipperUp!1189 lt!2319241 (h!70663 s!2326)))))

(assert (=> b!6001415 (= lt!2319216 (derivationStepZipperUp!1189 lt!2319226 (h!70663 s!2326)))))

(assert (=> b!6001415 (= lt!2319240 (store ((as const (Array Context!10794 Bool)) false) lt!2319241 true))))

(declare-fun lt!2319233 () List!64338)

(assert (=> b!6001415 (= lt!2319241 (Context!10795 lt!2319233))))

(assert (=> b!6001415 (= lt!2319225 (store ((as const (Array Context!10794 Bool)) false) lt!2319226 true))))

(assert (=> b!6001415 (= lt!2319226 (Context!10795 (Cons!64214 (regOne!32538 r!7292) lt!2319233)))))

(assert (=> b!6001415 (= lt!2319233 (Cons!64214 (regTwo!32538 r!7292) Nil!64214))))

(declare-fun b!6001416 () Bool)

(declare-fun tp!1669175 () Bool)

(assert (=> b!6001416 (= e!3668120 tp!1669175)))

(declare-fun b!6001417 () Bool)

(declare-fun res!2504746 () Bool)

(assert (=> b!6001417 (=> res!2504746 e!3668113)))

(declare-fun lt!2319214 () Int)

(declare-fun zipperDepth!262 (List!64340) Int)

(assert (=> b!6001417 (= res!2504746 (>= (zipperDepth!262 (Cons!64216 lt!2319241 Nil!64216)) lt!2319214))))

(declare-fun b!6001418 () Bool)

(declare-fun e!3668128 () Bool)

(assert (=> b!6001418 (= e!3668128 e!3668113)))

(declare-fun res!2504731 () Bool)

(assert (=> b!6001418 (=> res!2504731 e!3668113)))

(declare-fun lt!2319228 () Int)

(assert (=> b!6001418 (= res!2504731 (>= lt!2319228 lt!2319214))))

(declare-fun lt!2319213 () Context!10794)

(assert (=> b!6001418 (= lt!2319214 (zipperDepth!262 (Cons!64216 lt!2319213 Nil!64216)))))

(declare-fun lt!2319212 () List!64340)

(assert (=> b!6001418 (= lt!2319228 (zipperDepth!262 lt!2319212))))

(assert (=> b!6001418 (= lt!2319212 (Cons!64216 lt!2319226 Nil!64216))))

(declare-fun b!6001419 () Bool)

(assert (=> b!6001419 (= e!3668114 (validRegex!7749 (regTwo!32538 r!7292)))))

(declare-fun matchR!8196 (Regex!16013 List!64339) Bool)

(assert (=> b!6001419 (= (matchR!8196 lt!2319227 s!2326) lt!2319230)))

(declare-fun lt!2319238 () Unit!157297)

(declare-fun theoremZipperRegexEquiv!705 ((InoxSet Context!10794) List!64340 Regex!16013 List!64339) Unit!157297)

(assert (=> b!6001419 (= lt!2319238 (theoremZipperRegexEquiv!705 lt!2319225 lt!2319212 lt!2319227 s!2326))))

(declare-fun b!6001420 () Bool)

(declare-fun tp!1669177 () Bool)

(assert (=> b!6001420 (= e!3668119 tp!1669177)))

(declare-fun b!6001421 () Bool)

(declare-fun tp_is_empty!41279 () Bool)

(declare-fun tp!1669173 () Bool)

(assert (=> b!6001421 (= e!3668122 (and tp_is_empty!41279 tp!1669173))))

(declare-fun b!6001422 () Bool)

(declare-fun tp!1669178 () Bool)

(declare-fun tp!1669174 () Bool)

(assert (=> b!6001422 (= e!3668120 (and tp!1669178 tp!1669174))))

(declare-fun b!6001423 () Bool)

(declare-fun res!2504749 () Bool)

(assert (=> b!6001423 (=> res!2504749 e!3668124)))

(assert (=> b!6001423 (= res!2504749 (not ((_ is Cons!64214) (exprs!5897 (h!70664 zl!343)))))))

(declare-fun b!6001424 () Bool)

(assert (=> b!6001424 (= e!3668120 tp_is_empty!41279)))

(declare-fun b!6001425 () Bool)

(declare-fun res!2504733 () Bool)

(assert (=> b!6001425 (=> (not res!2504733) (not e!3668123))))

(declare-fun toList!9797 ((InoxSet Context!10794)) List!64340)

(assert (=> b!6001425 (= res!2504733 (= (toList!9797 z!1189) zl!343))))

(declare-fun b!6001426 () Bool)

(declare-fun res!2504737 () Bool)

(assert (=> b!6001426 (=> res!2504737 e!3668124)))

(declare-fun generalisedUnion!1857 (List!64338) Regex!16013)

(declare-fun unfocusZipperList!1434 (List!64340) List!64338)

(assert (=> b!6001426 (= res!2504737 (not (= r!7292 (generalisedUnion!1857 (unfocusZipperList!1434 zl!343)))))))

(declare-fun b!6001427 () Bool)

(assert (=> b!6001427 (= e!3668116 e!3668126)))

(declare-fun res!2504729 () Bool)

(assert (=> b!6001427 (=> res!2504729 e!3668126)))

(declare-fun lt!2319219 () (InoxSet Context!10794))

(assert (=> b!6001427 (= res!2504729 (not (= lt!2319219 lt!2319231)))))

(assert (=> b!6001427 (= lt!2319231 (derivationStepZipperDown!1263 r!7292 lt!2319218 (h!70663 s!2326)))))

(assert (=> b!6001427 (= lt!2319218 (Context!10795 Nil!64214))))

(assert (=> b!6001427 (= lt!2319219 (derivationStepZipperUp!1189 lt!2319213 (h!70663 s!2326)))))

(assert (=> b!6001427 (= lt!2319213 (Context!10795 (Cons!64214 r!7292 Nil!64214)))))

(assert (=> b!6001427 (= lt!2319237 (derivationStepZipper!1994 z!1189 (h!70663 s!2326)))))

(assert (=> b!6001428 (= e!3668124 e!3668116)))

(declare-fun res!2504738 () Bool)

(assert (=> b!6001428 (=> res!2504738 e!3668116)))

(declare-fun lt!2319210 () Bool)

(declare-fun lt!2319215 () Bool)

(assert (=> b!6001428 (= res!2504738 (or (not (= lt!2319210 lt!2319215)) ((_ is Nil!64215) s!2326)))))

(declare-fun Exists!3083 (Int) Bool)

(assert (=> b!6001428 (= (Exists!3083 lambda!327637) (Exists!3083 lambda!327638))))

(declare-fun lt!2319236 () Unit!157297)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1620 (Regex!16013 Regex!16013 List!64339) Unit!157297)

(assert (=> b!6001428 (= lt!2319236 (lemmaExistCutMatchRandMatchRSpecEquivalent!1620 (regOne!32538 r!7292) (regTwo!32538 r!7292) s!2326))))

(assert (=> b!6001428 (= lt!2319215 (Exists!3083 lambda!327637))))

(declare-datatypes ((tuple2!65984 0))(
  ( (tuple2!65985 (_1!36295 List!64339) (_2!36295 List!64339)) )
))
(declare-datatypes ((Option!15904 0))(
  ( (None!15903) (Some!15903 (v!52014 tuple2!65984)) )
))
(declare-fun isDefined!12607 (Option!15904) Bool)

(declare-fun findConcatSeparation!2318 (Regex!16013 Regex!16013 List!64339 List!64339 List!64339) Option!15904)

(assert (=> b!6001428 (= lt!2319215 (isDefined!12607 (findConcatSeparation!2318 (regOne!32538 r!7292) (regTwo!32538 r!7292) Nil!64215 s!2326 s!2326)))))

(declare-fun lt!2319217 () Unit!157297)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2082 (Regex!16013 Regex!16013 List!64339) Unit!157297)

(assert (=> b!6001428 (= lt!2319217 (lemmaFindConcatSeparationEquivalentToExists!2082 (regOne!32538 r!7292) (regTwo!32538 r!7292) s!2326))))

(declare-fun b!6001429 () Bool)

(assert (=> b!6001429 (= e!3668115 e!3668117)))

(declare-fun res!2504732 () Bool)

(assert (=> b!6001429 (=> res!2504732 e!3668117)))

(declare-fun lt!2319229 () Bool)

(assert (=> b!6001429 (= res!2504732 (not (= lt!2319229 (matchZipper!2049 lt!2319237 (t!377762 s!2326)))))))

(declare-fun lt!2319232 () Bool)

(assert (=> b!6001429 (= lt!2319232 lt!2319229)))

(assert (=> b!6001429 (= lt!2319229 e!3668130)))

(declare-fun res!2504739 () Bool)

(assert (=> b!6001429 (=> res!2504739 e!3668130)))

(declare-fun lt!2319234 () Bool)

(assert (=> b!6001429 (= res!2504739 lt!2319234)))

(assert (=> b!6001429 (= lt!2319232 (matchZipper!2049 lt!2319222 (t!377762 s!2326)))))

(assert (=> b!6001429 (= lt!2319234 (matchZipper!2049 lt!2319207 (t!377762 s!2326)))))

(declare-fun lt!2319235 () Unit!157297)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!880 ((InoxSet Context!10794) (InoxSet Context!10794) List!64339) Unit!157297)

(assert (=> b!6001429 (= lt!2319235 (lemmaZipperConcatMatchesSameAsBothZippers!880 lt!2319207 lt!2319239 (t!377762 s!2326)))))

(declare-fun b!6001430 () Bool)

(declare-fun res!2504744 () Bool)

(assert (=> b!6001430 (=> res!2504744 e!3668118)))

(assert (=> b!6001430 (= res!2504744 (not (= (matchZipper!2049 lt!2319240 s!2326) (matchZipper!2049 (derivationStepZipper!1994 lt!2319240 (h!70663 s!2326)) (t!377762 s!2326)))))))

(declare-fun b!6001431 () Bool)

(declare-fun res!2504730 () Bool)

(assert (=> b!6001431 (=> res!2504730 e!3668113)))

(declare-fun lt!2319223 () Int)

(declare-fun contextDepth!161 (Context!10794) Int)

(assert (=> b!6001431 (= res!2504730 (>= (contextDepth!161 lt!2319241) lt!2319223))))

(declare-fun setIsEmpty!40700 () Bool)

(assert (=> setIsEmpty!40700 setRes!40700))

(declare-fun b!6001432 () Bool)

(declare-fun res!2504742 () Bool)

(assert (=> b!6001432 (=> res!2504742 e!3668124)))

(declare-fun isEmpty!36110 (List!64340) Bool)

(assert (=> b!6001432 (= res!2504742 (not (isEmpty!36110 (t!377763 zl!343))))))

(declare-fun b!6001433 () Bool)

(assert (=> b!6001433 (= e!3668118 e!3668128)))

(declare-fun res!2504740 () Bool)

(assert (=> b!6001433 (=> res!2504740 e!3668128)))

(declare-fun lt!2319221 () Int)

(assert (=> b!6001433 (= res!2504740 (>= lt!2319221 lt!2319223))))

(assert (=> b!6001433 (= lt!2319223 (contextDepth!161 lt!2319213))))

(assert (=> b!6001433 (= lt!2319221 (contextDepth!161 lt!2319226))))

(declare-fun b!6001434 () Bool)

(assert (=> b!6001434 (= e!3668123 (not e!3668124))))

(declare-fun res!2504741 () Bool)

(assert (=> b!6001434 (=> res!2504741 e!3668124)))

(assert (=> b!6001434 (= res!2504741 (not ((_ is Cons!64216) zl!343)))))

(declare-fun matchRSpec!3114 (Regex!16013 List!64339) Bool)

(assert (=> b!6001434 (= lt!2319210 (matchRSpec!3114 r!7292 s!2326))))

(assert (=> b!6001434 (= lt!2319210 (matchR!8196 r!7292 s!2326))))

(declare-fun lt!2319209 () Unit!157297)

(declare-fun mainMatchTheorem!3114 (Regex!16013 List!64339) Unit!157297)

(assert (=> b!6001434 (= lt!2319209 (mainMatchTheorem!3114 r!7292 s!2326))))

(declare-fun b!6001435 () Bool)

(declare-fun res!2504736 () Bool)

(assert (=> b!6001435 (=> res!2504736 e!3668124)))

(declare-fun generalisedConcat!1610 (List!64338) Regex!16013)

(assert (=> b!6001435 (= res!2504736 (not (= r!7292 (generalisedConcat!1610 (exprs!5897 (h!70664 zl!343))))))))

(declare-fun b!6001436 () Bool)

(declare-fun tp!1669179 () Bool)

(assert (=> b!6001436 (= e!3668125 (and (inv!83279 (h!70664 zl!343)) e!3668127 tp!1669179))))

(assert (= (and start!606238 res!2504747) b!6001425))

(assert (= (and b!6001425 res!2504733) b!6001413))

(assert (= (and b!6001413 res!2504734) b!6001434))

(assert (= (and b!6001434 (not res!2504741)) b!6001432))

(assert (= (and b!6001432 (not res!2504742)) b!6001435))

(assert (= (and b!6001435 (not res!2504736)) b!6001423))

(assert (= (and b!6001423 (not res!2504749)) b!6001426))

(assert (= (and b!6001426 (not res!2504737)) b!6001406))

(assert (= (and b!6001406 (not res!2504735)) b!6001428))

(assert (= (and b!6001428 (not res!2504738)) b!6001410))

(assert (= (and b!6001410 (not res!2504750)) b!6001427))

(assert (= (and b!6001427 (not res!2504729)) b!6001405))

(assert (= (and b!6001405 (not res!2504745)) b!6001415))

(assert (= (and b!6001415 (not res!2504753)) b!6001409))

(assert (= (and b!6001409 (not res!2504751)) b!6001429))

(assert (= (and b!6001429 (not res!2504739)) b!6001404))

(assert (= (and b!6001429 (not res!2504732)) b!6001407))

(assert (= (and b!6001407 (not res!2504752)) b!6001411))

(assert (= (and b!6001411 (not res!2504748)) b!6001430))

(assert (= (and b!6001430 (not res!2504744)) b!6001433))

(assert (= (and b!6001433 (not res!2504740)) b!6001418))

(assert (= (and b!6001418 (not res!2504731)) b!6001431))

(assert (= (and b!6001431 (not res!2504730)) b!6001417))

(assert (= (and b!6001417 (not res!2504746)) b!6001408))

(assert (= (and b!6001408 (not res!2504743)) b!6001419))

(assert (= (and start!606238 ((_ is ElementMatch!16013) r!7292)) b!6001424))

(assert (= (and start!606238 ((_ is Concat!24858) r!7292)) b!6001412))

(assert (= (and start!606238 ((_ is Star!16013) r!7292)) b!6001416))

(assert (= (and start!606238 ((_ is Union!16013) r!7292)) b!6001422))

(assert (= (and start!606238 condSetEmpty!40700) setIsEmpty!40700))

(assert (= (and start!606238 (not condSetEmpty!40700)) setNonEmpty!40700))

(assert (= setNonEmpty!40700 b!6001420))

(assert (= b!6001436 b!6001414))

(assert (= (and start!606238 ((_ is Cons!64216) zl!343)) b!6001436))

(assert (= (and start!606238 ((_ is Cons!64215) s!2326)) b!6001421))

(declare-fun m!6879586 () Bool)

(assert (=> b!6001425 m!6879586))

(declare-fun m!6879588 () Bool)

(assert (=> start!606238 m!6879588))

(declare-fun m!6879590 () Bool)

(assert (=> setNonEmpty!40700 m!6879590))

(declare-fun m!6879592 () Bool)

(assert (=> b!6001410 m!6879592))

(declare-fun m!6879594 () Bool)

(assert (=> b!6001426 m!6879594))

(assert (=> b!6001426 m!6879594))

(declare-fun m!6879596 () Bool)

(assert (=> b!6001426 m!6879596))

(declare-fun m!6879598 () Bool)

(assert (=> b!6001434 m!6879598))

(declare-fun m!6879600 () Bool)

(assert (=> b!6001434 m!6879600))

(declare-fun m!6879602 () Bool)

(assert (=> b!6001434 m!6879602))

(declare-fun m!6879604 () Bool)

(assert (=> b!6001431 m!6879604))

(declare-fun m!6879606 () Bool)

(assert (=> b!6001408 m!6879606))

(declare-fun m!6879608 () Bool)

(assert (=> b!6001408 m!6879608))

(declare-fun m!6879610 () Bool)

(assert (=> b!6001418 m!6879610))

(declare-fun m!6879612 () Bool)

(assert (=> b!6001418 m!6879612))

(declare-fun m!6879614 () Bool)

(assert (=> b!6001415 m!6879614))

(declare-fun m!6879616 () Bool)

(assert (=> b!6001415 m!6879616))

(declare-fun m!6879618 () Bool)

(assert (=> b!6001415 m!6879618))

(declare-fun m!6879620 () Bool)

(assert (=> b!6001415 m!6879620))

(declare-fun m!6879622 () Bool)

(assert (=> b!6001415 m!6879622))

(declare-fun m!6879624 () Bool)

(assert (=> b!6001415 m!6879624))

(declare-fun m!6879626 () Bool)

(assert (=> b!6001415 m!6879626))

(declare-fun m!6879628 () Bool)

(assert (=> b!6001415 m!6879628))

(declare-fun m!6879630 () Bool)

(assert (=> b!6001415 m!6879630))

(declare-fun m!6879632 () Bool)

(assert (=> b!6001415 m!6879632))

(declare-fun m!6879634 () Bool)

(assert (=> b!6001415 m!6879634))

(declare-fun m!6879636 () Bool)

(assert (=> b!6001435 m!6879636))

(declare-fun m!6879638 () Bool)

(assert (=> b!6001413 m!6879638))

(declare-fun m!6879640 () Bool)

(assert (=> b!6001436 m!6879640))

(declare-fun m!6879642 () Bool)

(assert (=> b!6001417 m!6879642))

(declare-fun m!6879644 () Bool)

(assert (=> b!6001428 m!6879644))

(declare-fun m!6879646 () Bool)

(assert (=> b!6001428 m!6879646))

(declare-fun m!6879648 () Bool)

(assert (=> b!6001428 m!6879648))

(declare-fun m!6879650 () Bool)

(assert (=> b!6001428 m!6879650))

(declare-fun m!6879652 () Bool)

(assert (=> b!6001428 m!6879652))

(assert (=> b!6001428 m!6879648))

(assert (=> b!6001428 m!6879644))

(declare-fun m!6879654 () Bool)

(assert (=> b!6001428 m!6879654))

(declare-fun m!6879656 () Bool)

(assert (=> b!6001404 m!6879656))

(declare-fun m!6879658 () Bool)

(assert (=> b!6001405 m!6879658))

(declare-fun m!6879660 () Bool)

(assert (=> b!6001405 m!6879660))

(declare-fun m!6879662 () Bool)

(assert (=> b!6001405 m!6879662))

(declare-fun m!6879664 () Bool)

(assert (=> b!6001427 m!6879664))

(declare-fun m!6879666 () Bool)

(assert (=> b!6001427 m!6879666))

(declare-fun m!6879668 () Bool)

(assert (=> b!6001427 m!6879668))

(declare-fun m!6879670 () Bool)

(assert (=> b!6001433 m!6879670))

(declare-fun m!6879672 () Bool)

(assert (=> b!6001433 m!6879672))

(declare-fun m!6879674 () Bool)

(assert (=> b!6001411 m!6879674))

(assert (=> b!6001411 m!6879674))

(declare-fun m!6879676 () Bool)

(assert (=> b!6001411 m!6879676))

(declare-fun m!6879678 () Bool)

(assert (=> b!6001411 m!6879678))

(declare-fun m!6879680 () Bool)

(assert (=> b!6001430 m!6879680))

(declare-fun m!6879682 () Bool)

(assert (=> b!6001430 m!6879682))

(assert (=> b!6001430 m!6879682))

(declare-fun m!6879684 () Bool)

(assert (=> b!6001430 m!6879684))

(declare-fun m!6879686 () Bool)

(assert (=> b!6001432 m!6879686))

(declare-fun m!6879688 () Bool)

(assert (=> b!6001419 m!6879688))

(declare-fun m!6879690 () Bool)

(assert (=> b!6001419 m!6879690))

(declare-fun m!6879692 () Bool)

(assert (=> b!6001419 m!6879692))

(declare-fun m!6879694 () Bool)

(assert (=> b!6001429 m!6879694))

(declare-fun m!6879696 () Bool)

(assert (=> b!6001429 m!6879696))

(declare-fun m!6879698 () Bool)

(assert (=> b!6001429 m!6879698))

(declare-fun m!6879700 () Bool)

(assert (=> b!6001429 m!6879700))

(check-sat (not b!6001420) (not b!6001433) (not b!6001414) (not b!6001431) (not b!6001411) (not b!6001413) (not b!6001410) (not b!6001436) (not b!6001422) (not b!6001430) (not b!6001417) (not b!6001432) (not b!6001405) (not b!6001429) (not b!6001404) (not b!6001426) (not b!6001427) (not b!6001415) tp_is_empty!41279 (not b!6001419) (not b!6001425) (not start!606238) (not b!6001412) (not setNonEmpty!40700) (not b!6001418) (not b!6001416) (not b!6001435) (not b!6001428) (not b!6001408) (not b!6001434) (not b!6001421))
(check-sat)
(get-model)

(declare-fun d!1881978 () Bool)

(declare-fun c!1072519 () Bool)

(declare-fun isEmpty!36112 (List!64339) Bool)

(assert (=> d!1881978 (= c!1072519 (isEmpty!36112 (t!377762 s!2326)))))

(declare-fun e!3668339 () Bool)

(assert (=> d!1881978 (= (matchZipper!2049 lt!2319239 (t!377762 s!2326)) e!3668339)))

(declare-fun b!6001801 () Bool)

(declare-fun nullableZipper!1818 ((InoxSet Context!10794)) Bool)

(assert (=> b!6001801 (= e!3668339 (nullableZipper!1818 lt!2319239))))

(declare-fun b!6001802 () Bool)

(declare-fun head!12563 (List!64339) C!32296)

(declare-fun tail!11648 (List!64339) List!64339)

(assert (=> b!6001802 (= e!3668339 (matchZipper!2049 (derivationStepZipper!1994 lt!2319239 (head!12563 (t!377762 s!2326))) (tail!11648 (t!377762 s!2326))))))

(assert (= (and d!1881978 c!1072519) b!6001801))

(assert (= (and d!1881978 (not c!1072519)) b!6001802))

(declare-fun m!6879926 () Bool)

(assert (=> d!1881978 m!6879926))

(declare-fun m!6879928 () Bool)

(assert (=> b!6001801 m!6879928))

(declare-fun m!6879930 () Bool)

(assert (=> b!6001802 m!6879930))

(assert (=> b!6001802 m!6879930))

(declare-fun m!6879932 () Bool)

(assert (=> b!6001802 m!6879932))

(declare-fun m!6879934 () Bool)

(assert (=> b!6001802 m!6879934))

(assert (=> b!6001802 m!6879932))

(assert (=> b!6001802 m!6879934))

(declare-fun m!6879936 () Bool)

(assert (=> b!6001802 m!6879936))

(assert (=> b!6001404 d!1881978))

(declare-fun b!6001868 () Bool)

(declare-fun e!3668379 () Bool)

(declare-fun e!3668380 () Bool)

(assert (=> b!6001868 (= e!3668379 e!3668380)))

(declare-fun c!1072547 () Bool)

(assert (=> b!6001868 (= c!1072547 (isEmpty!36109 (unfocusZipperList!1434 zl!343)))))

(declare-fun b!6001869 () Bool)

(declare-fun e!3668377 () Regex!16013)

(assert (=> b!6001869 (= e!3668377 (h!70662 (unfocusZipperList!1434 zl!343)))))

(declare-fun b!6001870 () Bool)

(declare-fun e!3668381 () Regex!16013)

(assert (=> b!6001870 (= e!3668381 EmptyLang!16013)))

(declare-fun b!6001871 () Bool)

(assert (=> b!6001871 (= e!3668377 e!3668381)))

(declare-fun c!1072546 () Bool)

(assert (=> b!6001871 (= c!1072546 ((_ is Cons!64214) (unfocusZipperList!1434 zl!343)))))

(declare-fun b!6001872 () Bool)

(declare-fun e!3668378 () Bool)

(assert (=> b!6001872 (= e!3668378 (isEmpty!36109 (t!377761 (unfocusZipperList!1434 zl!343))))))

(declare-fun b!6001873 () Bool)

(assert (=> b!6001873 (= e!3668381 (Union!16013 (h!70662 (unfocusZipperList!1434 zl!343)) (generalisedUnion!1857 (t!377761 (unfocusZipperList!1434 zl!343)))))))

(declare-fun b!6001874 () Bool)

(declare-fun lt!2319310 () Regex!16013)

(declare-fun isEmptyLang!1448 (Regex!16013) Bool)

(assert (=> b!6001874 (= e!3668380 (isEmptyLang!1448 lt!2319310))))

(declare-fun b!6001875 () Bool)

(declare-fun e!3668382 () Bool)

(declare-fun isUnion!878 (Regex!16013) Bool)

(assert (=> b!6001875 (= e!3668382 (isUnion!878 lt!2319310))))

(declare-fun b!6001876 () Bool)

(assert (=> b!6001876 (= e!3668380 e!3668382)))

(declare-fun c!1072545 () Bool)

(declare-fun tail!11649 (List!64338) List!64338)

(assert (=> b!6001876 (= c!1072545 (isEmpty!36109 (tail!11649 (unfocusZipperList!1434 zl!343))))))

(declare-fun d!1881982 () Bool)

(assert (=> d!1881982 e!3668379))

(declare-fun res!2504893 () Bool)

(assert (=> d!1881982 (=> (not res!2504893) (not e!3668379))))

(assert (=> d!1881982 (= res!2504893 (validRegex!7749 lt!2319310))))

(assert (=> d!1881982 (= lt!2319310 e!3668377)))

(declare-fun c!1072544 () Bool)

(assert (=> d!1881982 (= c!1072544 e!3668378)))

(declare-fun res!2504894 () Bool)

(assert (=> d!1881982 (=> (not res!2504894) (not e!3668378))))

(assert (=> d!1881982 (= res!2504894 ((_ is Cons!64214) (unfocusZipperList!1434 zl!343)))))

(declare-fun lambda!327687 () Int)

(declare-fun forall!15113 (List!64338 Int) Bool)

(assert (=> d!1881982 (forall!15113 (unfocusZipperList!1434 zl!343) lambda!327687)))

(assert (=> d!1881982 (= (generalisedUnion!1857 (unfocusZipperList!1434 zl!343)) lt!2319310)))

(declare-fun b!6001877 () Bool)

(declare-fun head!12564 (List!64338) Regex!16013)

(assert (=> b!6001877 (= e!3668382 (= lt!2319310 (head!12564 (unfocusZipperList!1434 zl!343))))))

(assert (= (and d!1881982 res!2504894) b!6001872))

(assert (= (and d!1881982 c!1072544) b!6001869))

(assert (= (and d!1881982 (not c!1072544)) b!6001871))

(assert (= (and b!6001871 c!1072546) b!6001873))

(assert (= (and b!6001871 (not c!1072546)) b!6001870))

(assert (= (and d!1881982 res!2504893) b!6001868))

(assert (= (and b!6001868 c!1072547) b!6001874))

(assert (= (and b!6001868 (not c!1072547)) b!6001876))

(assert (= (and b!6001876 c!1072545) b!6001877))

(assert (= (and b!6001876 (not c!1072545)) b!6001875))

(assert (=> b!6001877 m!6879594))

(declare-fun m!6880002 () Bool)

(assert (=> b!6001877 m!6880002))

(declare-fun m!6880004 () Bool)

(assert (=> b!6001875 m!6880004))

(declare-fun m!6880006 () Bool)

(assert (=> b!6001872 m!6880006))

(assert (=> b!6001868 m!6879594))

(declare-fun m!6880008 () Bool)

(assert (=> b!6001868 m!6880008))

(assert (=> b!6001876 m!6879594))

(declare-fun m!6880010 () Bool)

(assert (=> b!6001876 m!6880010))

(assert (=> b!6001876 m!6880010))

(declare-fun m!6880012 () Bool)

(assert (=> b!6001876 m!6880012))

(declare-fun m!6880014 () Bool)

(assert (=> b!6001873 m!6880014))

(declare-fun m!6880016 () Bool)

(assert (=> d!1881982 m!6880016))

(assert (=> d!1881982 m!6879594))

(declare-fun m!6880018 () Bool)

(assert (=> d!1881982 m!6880018))

(declare-fun m!6880020 () Bool)

(assert (=> b!6001874 m!6880020))

(assert (=> b!6001426 d!1881982))

(declare-fun bs!1455366 () Bool)

(declare-fun d!1882012 () Bool)

(assert (= bs!1455366 (and d!1882012 d!1881982)))

(declare-fun lambda!327693 () Int)

(assert (=> bs!1455366 (= lambda!327693 lambda!327687)))

(declare-fun lt!2319316 () List!64338)

(assert (=> d!1882012 (forall!15113 lt!2319316 lambda!327693)))

(declare-fun e!3668403 () List!64338)

(assert (=> d!1882012 (= lt!2319316 e!3668403)))

(declare-fun c!1072562 () Bool)

(assert (=> d!1882012 (= c!1072562 ((_ is Cons!64216) zl!343))))

(assert (=> d!1882012 (= (unfocusZipperList!1434 zl!343) lt!2319316)))

(declare-fun b!6001912 () Bool)

(assert (=> b!6001912 (= e!3668403 (Cons!64214 (generalisedConcat!1610 (exprs!5897 (h!70664 zl!343))) (unfocusZipperList!1434 (t!377763 zl!343))))))

(declare-fun b!6001913 () Bool)

(assert (=> b!6001913 (= e!3668403 Nil!64214)))

(assert (= (and d!1882012 c!1072562) b!6001912))

(assert (= (and d!1882012 (not c!1072562)) b!6001913))

(declare-fun m!6880040 () Bool)

(assert (=> d!1882012 m!6880040))

(assert (=> b!6001912 m!6879636))

(declare-fun m!6880042 () Bool)

(assert (=> b!6001912 m!6880042))

(assert (=> b!6001426 d!1882012))

(declare-fun bs!1455367 () Bool)

(declare-fun d!1882016 () Bool)

(assert (= bs!1455367 (and d!1882016 d!1881982)))

(declare-fun lambda!327696 () Int)

(assert (=> bs!1455367 (= lambda!327696 lambda!327687)))

(declare-fun bs!1455368 () Bool)

(assert (= bs!1455368 (and d!1882016 d!1882012)))

(assert (=> bs!1455368 (= lambda!327696 lambda!327693)))

(assert (=> d!1882016 (= (inv!83279 setElem!40700) (forall!15113 (exprs!5897 setElem!40700) lambda!327696))))

(declare-fun bs!1455369 () Bool)

(assert (= bs!1455369 d!1882016))

(declare-fun m!6880044 () Bool)

(assert (=> bs!1455369 m!6880044))

(assert (=> setNonEmpty!40700 d!1882016))

(declare-fun b!6001958 () Bool)

(declare-fun e!3668437 () Bool)

(declare-fun call!485198 () Bool)

(assert (=> b!6001958 (= e!3668437 call!485198)))

(declare-fun call!485197 () Bool)

(declare-fun c!1072576 () Bool)

(declare-fun c!1072577 () Bool)

(declare-fun bm!485193 () Bool)

(assert (=> bm!485193 (= call!485197 (validRegex!7749 (ite c!1072577 (reg!16342 r!7292) (ite c!1072576 (regOne!32539 r!7292) (regOne!32538 r!7292)))))))

(declare-fun b!6001959 () Bool)

(declare-fun e!3668434 () Bool)

(declare-fun e!3668436 () Bool)

(assert (=> b!6001959 (= e!3668434 e!3668436)))

(assert (=> b!6001959 (= c!1072576 ((_ is Union!16013) r!7292))))

(declare-fun b!6001960 () Bool)

(declare-fun e!3668435 () Bool)

(assert (=> b!6001960 (= e!3668435 call!485198)))

(declare-fun bm!485194 () Bool)

(assert (=> bm!485194 (= call!485198 (validRegex!7749 (ite c!1072576 (regTwo!32539 r!7292) (regTwo!32538 r!7292))))))

(declare-fun b!6001961 () Bool)

(declare-fun res!2504921 () Bool)

(assert (=> b!6001961 (=> (not res!2504921) (not e!3668435))))

(declare-fun call!485199 () Bool)

(assert (=> b!6001961 (= res!2504921 call!485199)))

(assert (=> b!6001961 (= e!3668436 e!3668435)))

(declare-fun b!6001962 () Bool)

(declare-fun e!3668439 () Bool)

(assert (=> b!6001962 (= e!3668434 e!3668439)))

(declare-fun res!2504920 () Bool)

(assert (=> b!6001962 (= res!2504920 (not (nullable!6008 (reg!16342 r!7292))))))

(assert (=> b!6001962 (=> (not res!2504920) (not e!3668439))))

(declare-fun b!6001963 () Bool)

(declare-fun e!3668438 () Bool)

(assert (=> b!6001963 (= e!3668438 e!3668437)))

(declare-fun res!2504923 () Bool)

(assert (=> b!6001963 (=> (not res!2504923) (not e!3668437))))

(assert (=> b!6001963 (= res!2504923 call!485199)))

(declare-fun b!6001964 () Bool)

(declare-fun e!3668440 () Bool)

(assert (=> b!6001964 (= e!3668440 e!3668434)))

(assert (=> b!6001964 (= c!1072577 ((_ is Star!16013) r!7292))))

(declare-fun b!6001965 () Bool)

(assert (=> b!6001965 (= e!3668439 call!485197)))

(declare-fun b!6001966 () Bool)

(declare-fun res!2504919 () Bool)

(assert (=> b!6001966 (=> res!2504919 e!3668438)))

(assert (=> b!6001966 (= res!2504919 (not ((_ is Concat!24858) r!7292)))))

(assert (=> b!6001966 (= e!3668436 e!3668438)))

(declare-fun d!1882018 () Bool)

(declare-fun res!2504922 () Bool)

(assert (=> d!1882018 (=> res!2504922 e!3668440)))

(assert (=> d!1882018 (= res!2504922 ((_ is ElementMatch!16013) r!7292))))

(assert (=> d!1882018 (= (validRegex!7749 r!7292) e!3668440)))

(declare-fun bm!485192 () Bool)

(assert (=> bm!485192 (= call!485199 call!485197)))

(assert (= (and d!1882018 (not res!2504922)) b!6001964))

(assert (= (and b!6001964 c!1072577) b!6001962))

(assert (= (and b!6001964 (not c!1072577)) b!6001959))

(assert (= (and b!6001962 res!2504920) b!6001965))

(assert (= (and b!6001959 c!1072576) b!6001961))

(assert (= (and b!6001959 (not c!1072576)) b!6001966))

(assert (= (and b!6001961 res!2504921) b!6001960))

(assert (= (and b!6001966 (not res!2504919)) b!6001963))

(assert (= (and b!6001963 res!2504923) b!6001958))

(assert (= (or b!6001960 b!6001958) bm!485194))

(assert (= (or b!6001961 b!6001963) bm!485192))

(assert (= (or b!6001965 bm!485192) bm!485193))

(declare-fun m!6880104 () Bool)

(assert (=> bm!485193 m!6880104))

(declare-fun m!6880106 () Bool)

(assert (=> bm!485194 m!6880106))

(declare-fun m!6880108 () Bool)

(assert (=> b!6001962 m!6880108))

(assert (=> start!606238 d!1882018))

(declare-fun b!6002043 () Bool)

(declare-fun e!3668480 () (InoxSet Context!10794))

(declare-fun e!3668481 () (InoxSet Context!10794))

(assert (=> b!6002043 (= e!3668480 e!3668481)))

(declare-fun c!1072590 () Bool)

(assert (=> b!6002043 (= c!1072590 ((_ is Concat!24858) r!7292))))

(declare-fun b!6002044 () Bool)

(declare-fun e!3668478 () (InoxSet Context!10794))

(assert (=> b!6002044 (= e!3668478 (store ((as const (Array Context!10794 Bool)) false) lt!2319218 true))))

(declare-fun bm!485207 () Bool)

(declare-fun call!485216 () (InoxSet Context!10794))

(declare-fun call!485212 () List!64338)

(declare-fun c!1072591 () Bool)

(assert (=> bm!485207 (= call!485216 (derivationStepZipperDown!1263 (ite c!1072591 (regTwo!32539 r!7292) (regOne!32538 r!7292)) (ite c!1072591 lt!2319218 (Context!10795 call!485212)) (h!70663 s!2326)))))

(declare-fun bm!485208 () Bool)

(declare-fun call!485214 () (InoxSet Context!10794))

(declare-fun call!485213 () (InoxSet Context!10794))

(assert (=> bm!485208 (= call!485214 call!485213)))

(declare-fun bm!485209 () Bool)

(declare-fun call!485215 () (InoxSet Context!10794))

(assert (=> bm!485209 (= call!485215 call!485214)))

(declare-fun b!6002045 () Bool)

(declare-fun e!3668479 () (InoxSet Context!10794))

(assert (=> b!6002045 (= e!3668479 ((_ map or) call!485213 call!485216))))

(declare-fun b!6002046 () Bool)

(declare-fun e!3668477 () (InoxSet Context!10794))

(assert (=> b!6002046 (= e!3668477 call!485215)))

(declare-fun bm!485210 () Bool)

(declare-fun c!1072592 () Bool)

(declare-fun $colon$colon!1898 (List!64338 Regex!16013) List!64338)

(assert (=> bm!485210 (= call!485212 ($colon$colon!1898 (exprs!5897 lt!2319218) (ite (or c!1072592 c!1072590) (regTwo!32538 r!7292) r!7292)))))

(declare-fun b!6002047 () Bool)

(declare-fun e!3668476 () Bool)

(assert (=> b!6002047 (= c!1072592 e!3668476)))

(declare-fun res!2504926 () Bool)

(assert (=> b!6002047 (=> (not res!2504926) (not e!3668476))))

(assert (=> b!6002047 (= res!2504926 ((_ is Concat!24858) r!7292))))

(assert (=> b!6002047 (= e!3668479 e!3668480)))

(declare-fun b!6002048 () Bool)

(assert (=> b!6002048 (= e!3668481 call!485215)))

(declare-fun b!6002049 () Bool)

(assert (=> b!6002049 (= e!3668478 e!3668479)))

(assert (=> b!6002049 (= c!1072591 ((_ is Union!16013) r!7292))))

(declare-fun b!6002050 () Bool)

(assert (=> b!6002050 (= e!3668477 ((as const (Array Context!10794 Bool)) false))))

(declare-fun bm!485211 () Bool)

(declare-fun call!485217 () List!64338)

(assert (=> bm!485211 (= call!485217 call!485212)))

(declare-fun d!1882032 () Bool)

(declare-fun c!1072588 () Bool)

(assert (=> d!1882032 (= c!1072588 (and ((_ is ElementMatch!16013) r!7292) (= (c!1072394 r!7292) (h!70663 s!2326))))))

(assert (=> d!1882032 (= (derivationStepZipperDown!1263 r!7292 lt!2319218 (h!70663 s!2326)) e!3668478)))

(declare-fun b!6002051 () Bool)

(assert (=> b!6002051 (= e!3668476 (nullable!6008 (regOne!32538 r!7292)))))

(declare-fun bm!485212 () Bool)

(assert (=> bm!485212 (= call!485213 (derivationStepZipperDown!1263 (ite c!1072591 (regOne!32539 r!7292) (ite c!1072592 (regTwo!32538 r!7292) (ite c!1072590 (regOne!32538 r!7292) (reg!16342 r!7292)))) (ite (or c!1072591 c!1072592) lt!2319218 (Context!10795 call!485217)) (h!70663 s!2326)))))

(declare-fun b!6002052 () Bool)

(declare-fun c!1072589 () Bool)

(assert (=> b!6002052 (= c!1072589 ((_ is Star!16013) r!7292))))

(assert (=> b!6002052 (= e!3668481 e!3668477)))

(declare-fun b!6002053 () Bool)

(assert (=> b!6002053 (= e!3668480 ((_ map or) call!485216 call!485214))))

(assert (= (and d!1882032 c!1072588) b!6002044))

(assert (= (and d!1882032 (not c!1072588)) b!6002049))

(assert (= (and b!6002049 c!1072591) b!6002045))

(assert (= (and b!6002049 (not c!1072591)) b!6002047))

(assert (= (and b!6002047 res!2504926) b!6002051))

(assert (= (and b!6002047 c!1072592) b!6002053))

(assert (= (and b!6002047 (not c!1072592)) b!6002043))

(assert (= (and b!6002043 c!1072590) b!6002048))

(assert (= (and b!6002043 (not c!1072590)) b!6002052))

(assert (= (and b!6002052 c!1072589) b!6002046))

(assert (= (and b!6002052 (not c!1072589)) b!6002050))

(assert (= (or b!6002048 b!6002046) bm!485211))

(assert (= (or b!6002048 b!6002046) bm!485209))

(assert (= (or b!6002053 bm!485211) bm!485210))

(assert (= (or b!6002053 bm!485209) bm!485208))

(assert (= (or b!6002045 b!6002053) bm!485207))

(assert (= (or b!6002045 bm!485208) bm!485212))

(declare-fun m!6880114 () Bool)

(assert (=> bm!485210 m!6880114))

(declare-fun m!6880116 () Bool)

(assert (=> b!6002044 m!6880116))

(assert (=> b!6002051 m!6879632))

(declare-fun m!6880118 () Bool)

(assert (=> bm!485212 m!6880118))

(declare-fun m!6880120 () Bool)

(assert (=> bm!485207 m!6880120))

(assert (=> b!6001427 d!1882032))

(declare-fun bm!485215 () Bool)

(declare-fun call!485220 () (InoxSet Context!10794))

(assert (=> bm!485215 (= call!485220 (derivationStepZipperDown!1263 (h!70662 (exprs!5897 lt!2319213)) (Context!10795 (t!377761 (exprs!5897 lt!2319213))) (h!70663 s!2326)))))

(declare-fun b!6002064 () Bool)

(declare-fun e!3668489 () (InoxSet Context!10794))

(assert (=> b!6002064 (= e!3668489 ((as const (Array Context!10794 Bool)) false))))

(declare-fun b!6002065 () Bool)

(assert (=> b!6002065 (= e!3668489 call!485220)))

(declare-fun e!3668490 () (InoxSet Context!10794))

(declare-fun b!6002066 () Bool)

(assert (=> b!6002066 (= e!3668490 ((_ map or) call!485220 (derivationStepZipperUp!1189 (Context!10795 (t!377761 (exprs!5897 lt!2319213))) (h!70663 s!2326))))))

(declare-fun b!6002067 () Bool)

(declare-fun e!3668488 () Bool)

(assert (=> b!6002067 (= e!3668488 (nullable!6008 (h!70662 (exprs!5897 lt!2319213))))))

(declare-fun d!1882040 () Bool)

(declare-fun c!1072597 () Bool)

(assert (=> d!1882040 (= c!1072597 e!3668488)))

(declare-fun res!2504929 () Bool)

(assert (=> d!1882040 (=> (not res!2504929) (not e!3668488))))

(assert (=> d!1882040 (= res!2504929 ((_ is Cons!64214) (exprs!5897 lt!2319213)))))

(assert (=> d!1882040 (= (derivationStepZipperUp!1189 lt!2319213 (h!70663 s!2326)) e!3668490)))

(declare-fun b!6002068 () Bool)

(assert (=> b!6002068 (= e!3668490 e!3668489)))

(declare-fun c!1072598 () Bool)

(assert (=> b!6002068 (= c!1072598 ((_ is Cons!64214) (exprs!5897 lt!2319213)))))

(assert (= (and d!1882040 res!2504929) b!6002067))

(assert (= (and d!1882040 c!1072597) b!6002066))

(assert (= (and d!1882040 (not c!1072597)) b!6002068))

(assert (= (and b!6002068 c!1072598) b!6002065))

(assert (= (and b!6002068 (not c!1072598)) b!6002064))

(assert (= (or b!6002066 b!6002065) bm!485215))

(declare-fun m!6880122 () Bool)

(assert (=> bm!485215 m!6880122))

(declare-fun m!6880124 () Bool)

(assert (=> b!6002066 m!6880124))

(declare-fun m!6880126 () Bool)

(assert (=> b!6002067 m!6880126))

(assert (=> b!6001427 d!1882040))

(declare-fun bs!1455418 () Bool)

(declare-fun d!1882042 () Bool)

(assert (= bs!1455418 (and d!1882042 b!6001405)))

(declare-fun lambda!327709 () Int)

(assert (=> bs!1455418 (= lambda!327709 lambda!327639)))

(assert (=> d!1882042 true))

(assert (=> d!1882042 (= (derivationStepZipper!1994 z!1189 (h!70663 s!2326)) (flatMap!1526 z!1189 lambda!327709))))

(declare-fun bs!1455419 () Bool)

(assert (= bs!1455419 d!1882042))

(declare-fun m!6880128 () Bool)

(assert (=> bs!1455419 m!6880128))

(assert (=> b!6001427 d!1882042))

(declare-fun d!1882044 () Bool)

(declare-fun e!3668493 () Bool)

(assert (=> d!1882044 e!3668493))

(declare-fun res!2504932 () Bool)

(assert (=> d!1882044 (=> (not res!2504932) (not e!3668493))))

(declare-fun lt!2319342 () List!64340)

(declare-fun noDuplicate!1868 (List!64340) Bool)

(assert (=> d!1882044 (= res!2504932 (noDuplicate!1868 lt!2319342))))

(declare-fun choose!45029 ((InoxSet Context!10794)) List!64340)

(assert (=> d!1882044 (= lt!2319342 (choose!45029 z!1189))))

(assert (=> d!1882044 (= (toList!9797 z!1189) lt!2319342)))

(declare-fun b!6002073 () Bool)

(declare-fun content!11871 (List!64340) (InoxSet Context!10794))

(assert (=> b!6002073 (= e!3668493 (= (content!11871 lt!2319342) z!1189))))

(assert (= (and d!1882044 res!2504932) b!6002073))

(declare-fun m!6880130 () Bool)

(assert (=> d!1882044 m!6880130))

(declare-fun m!6880132 () Bool)

(assert (=> d!1882044 m!6880132))

(declare-fun m!6880134 () Bool)

(assert (=> b!6002073 m!6880134))

(assert (=> b!6001425 d!1882044))

(declare-fun d!1882046 () Bool)

(declare-fun choose!45030 ((InoxSet Context!10794) Int) (InoxSet Context!10794))

(assert (=> d!1882046 (= (flatMap!1526 z!1189 lambda!327639) (choose!45030 z!1189 lambda!327639))))

(declare-fun bs!1455420 () Bool)

(assert (= bs!1455420 d!1882046))

(declare-fun m!6880136 () Bool)

(assert (=> bs!1455420 m!6880136))

(assert (=> b!6001405 d!1882046))

(declare-fun bm!485216 () Bool)

(declare-fun call!485221 () (InoxSet Context!10794))

(assert (=> bm!485216 (= call!485221 (derivationStepZipperDown!1263 (h!70662 (exprs!5897 (h!70664 zl!343))) (Context!10795 (t!377761 (exprs!5897 (h!70664 zl!343)))) (h!70663 s!2326)))))

(declare-fun b!6002074 () Bool)

(declare-fun e!3668495 () (InoxSet Context!10794))

(assert (=> b!6002074 (= e!3668495 ((as const (Array Context!10794 Bool)) false))))

(declare-fun b!6002075 () Bool)

(assert (=> b!6002075 (= e!3668495 call!485221)))

(declare-fun e!3668496 () (InoxSet Context!10794))

(declare-fun b!6002076 () Bool)

(assert (=> b!6002076 (= e!3668496 ((_ map or) call!485221 (derivationStepZipperUp!1189 (Context!10795 (t!377761 (exprs!5897 (h!70664 zl!343)))) (h!70663 s!2326))))))

(declare-fun b!6002077 () Bool)

(declare-fun e!3668494 () Bool)

(assert (=> b!6002077 (= e!3668494 (nullable!6008 (h!70662 (exprs!5897 (h!70664 zl!343)))))))

(declare-fun d!1882048 () Bool)

(declare-fun c!1072601 () Bool)

(assert (=> d!1882048 (= c!1072601 e!3668494)))

(declare-fun res!2504933 () Bool)

(assert (=> d!1882048 (=> (not res!2504933) (not e!3668494))))

(assert (=> d!1882048 (= res!2504933 ((_ is Cons!64214) (exprs!5897 (h!70664 zl!343))))))

(assert (=> d!1882048 (= (derivationStepZipperUp!1189 (h!70664 zl!343) (h!70663 s!2326)) e!3668496)))

(declare-fun b!6002078 () Bool)

(assert (=> b!6002078 (= e!3668496 e!3668495)))

(declare-fun c!1072602 () Bool)

(assert (=> b!6002078 (= c!1072602 ((_ is Cons!64214) (exprs!5897 (h!70664 zl!343))))))

(assert (= (and d!1882048 res!2504933) b!6002077))

(assert (= (and d!1882048 c!1072601) b!6002076))

(assert (= (and d!1882048 (not c!1072601)) b!6002078))

(assert (= (and b!6002078 c!1072602) b!6002075))

(assert (= (and b!6002078 (not c!1072602)) b!6002074))

(assert (= (or b!6002076 b!6002075) bm!485216))

(declare-fun m!6880138 () Bool)

(assert (=> bm!485216 m!6880138))

(declare-fun m!6880140 () Bool)

(assert (=> b!6002076 m!6880140))

(declare-fun m!6880142 () Bool)

(assert (=> b!6002077 m!6880142))

(assert (=> b!6001405 d!1882048))

(declare-fun d!1882050 () Bool)

(declare-fun dynLambda!25177 (Int Context!10794) (InoxSet Context!10794))

(assert (=> d!1882050 (= (flatMap!1526 z!1189 lambda!327639) (dynLambda!25177 lambda!327639 (h!70664 zl!343)))))

(declare-fun lt!2319345 () Unit!157297)

(declare-fun choose!45031 ((InoxSet Context!10794) Context!10794 Int) Unit!157297)

(assert (=> d!1882050 (= lt!2319345 (choose!45031 z!1189 (h!70664 zl!343) lambda!327639))))

(assert (=> d!1882050 (= z!1189 (store ((as const (Array Context!10794 Bool)) false) (h!70664 zl!343) true))))

(assert (=> d!1882050 (= (lemmaFlatMapOnSingletonSet!1052 z!1189 (h!70664 zl!343) lambda!327639) lt!2319345)))

(declare-fun b_lambda!226889 () Bool)

(assert (=> (not b_lambda!226889) (not d!1882050)))

(declare-fun bs!1455421 () Bool)

(assert (= bs!1455421 d!1882050))

(assert (=> bs!1455421 m!6879658))

(declare-fun m!6880144 () Bool)

(assert (=> bs!1455421 m!6880144))

(declare-fun m!6880146 () Bool)

(assert (=> bs!1455421 m!6880146))

(declare-fun m!6880148 () Bool)

(assert (=> bs!1455421 m!6880148))

(assert (=> b!6001405 d!1882050))

(declare-fun d!1882052 () Bool)

(declare-fun c!1072603 () Bool)

(assert (=> d!1882052 (= c!1072603 (isEmpty!36112 (t!377762 s!2326)))))

(declare-fun e!3668497 () Bool)

(assert (=> d!1882052 (= (matchZipper!2049 lt!2319237 (t!377762 s!2326)) e!3668497)))

(declare-fun b!6002079 () Bool)

(assert (=> b!6002079 (= e!3668497 (nullableZipper!1818 lt!2319237))))

(declare-fun b!6002080 () Bool)

(assert (=> b!6002080 (= e!3668497 (matchZipper!2049 (derivationStepZipper!1994 lt!2319237 (head!12563 (t!377762 s!2326))) (tail!11648 (t!377762 s!2326))))))

(assert (= (and d!1882052 c!1072603) b!6002079))

(assert (= (and d!1882052 (not c!1072603)) b!6002080))

(assert (=> d!1882052 m!6879926))

(declare-fun m!6880150 () Bool)

(assert (=> b!6002079 m!6880150))

(assert (=> b!6002080 m!6879930))

(assert (=> b!6002080 m!6879930))

(declare-fun m!6880152 () Bool)

(assert (=> b!6002080 m!6880152))

(assert (=> b!6002080 m!6879934))

(assert (=> b!6002080 m!6880152))

(assert (=> b!6002080 m!6879934))

(declare-fun m!6880154 () Bool)

(assert (=> b!6002080 m!6880154))

(assert (=> b!6001429 d!1882052))

(declare-fun d!1882054 () Bool)

(declare-fun c!1072604 () Bool)

(assert (=> d!1882054 (= c!1072604 (isEmpty!36112 (t!377762 s!2326)))))

(declare-fun e!3668498 () Bool)

(assert (=> d!1882054 (= (matchZipper!2049 lt!2319222 (t!377762 s!2326)) e!3668498)))

(declare-fun b!6002081 () Bool)

(assert (=> b!6002081 (= e!3668498 (nullableZipper!1818 lt!2319222))))

(declare-fun b!6002082 () Bool)

(assert (=> b!6002082 (= e!3668498 (matchZipper!2049 (derivationStepZipper!1994 lt!2319222 (head!12563 (t!377762 s!2326))) (tail!11648 (t!377762 s!2326))))))

(assert (= (and d!1882054 c!1072604) b!6002081))

(assert (= (and d!1882054 (not c!1072604)) b!6002082))

(assert (=> d!1882054 m!6879926))

(declare-fun m!6880156 () Bool)

(assert (=> b!6002081 m!6880156))

(assert (=> b!6002082 m!6879930))

(assert (=> b!6002082 m!6879930))

(declare-fun m!6880158 () Bool)

(assert (=> b!6002082 m!6880158))

(assert (=> b!6002082 m!6879934))

(assert (=> b!6002082 m!6880158))

(assert (=> b!6002082 m!6879934))

(declare-fun m!6880160 () Bool)

(assert (=> b!6002082 m!6880160))

(assert (=> b!6001429 d!1882054))

(declare-fun d!1882056 () Bool)

(declare-fun c!1072605 () Bool)

(assert (=> d!1882056 (= c!1072605 (isEmpty!36112 (t!377762 s!2326)))))

(declare-fun e!3668499 () Bool)

(assert (=> d!1882056 (= (matchZipper!2049 lt!2319207 (t!377762 s!2326)) e!3668499)))

(declare-fun b!6002083 () Bool)

(assert (=> b!6002083 (= e!3668499 (nullableZipper!1818 lt!2319207))))

(declare-fun b!6002084 () Bool)

(assert (=> b!6002084 (= e!3668499 (matchZipper!2049 (derivationStepZipper!1994 lt!2319207 (head!12563 (t!377762 s!2326))) (tail!11648 (t!377762 s!2326))))))

(assert (= (and d!1882056 c!1072605) b!6002083))

(assert (= (and d!1882056 (not c!1072605)) b!6002084))

(assert (=> d!1882056 m!6879926))

(declare-fun m!6880162 () Bool)

(assert (=> b!6002083 m!6880162))

(assert (=> b!6002084 m!6879930))

(assert (=> b!6002084 m!6879930))

(declare-fun m!6880164 () Bool)

(assert (=> b!6002084 m!6880164))

(assert (=> b!6002084 m!6879934))

(assert (=> b!6002084 m!6880164))

(assert (=> b!6002084 m!6879934))

(declare-fun m!6880166 () Bool)

(assert (=> b!6002084 m!6880166))

(assert (=> b!6001429 d!1882056))

(declare-fun e!3668502 () Bool)

(declare-fun d!1882058 () Bool)

(assert (=> d!1882058 (= (matchZipper!2049 ((_ map or) lt!2319207 lt!2319239) (t!377762 s!2326)) e!3668502)))

(declare-fun res!2504936 () Bool)

(assert (=> d!1882058 (=> res!2504936 e!3668502)))

(assert (=> d!1882058 (= res!2504936 (matchZipper!2049 lt!2319207 (t!377762 s!2326)))))

(declare-fun lt!2319348 () Unit!157297)

(declare-fun choose!45033 ((InoxSet Context!10794) (InoxSet Context!10794) List!64339) Unit!157297)

(assert (=> d!1882058 (= lt!2319348 (choose!45033 lt!2319207 lt!2319239 (t!377762 s!2326)))))

(assert (=> d!1882058 (= (lemmaZipperConcatMatchesSameAsBothZippers!880 lt!2319207 lt!2319239 (t!377762 s!2326)) lt!2319348)))

(declare-fun b!6002087 () Bool)

(assert (=> b!6002087 (= e!3668502 (matchZipper!2049 lt!2319239 (t!377762 s!2326)))))

(assert (= (and d!1882058 (not res!2504936)) b!6002087))

(declare-fun m!6880168 () Bool)

(assert (=> d!1882058 m!6880168))

(assert (=> d!1882058 m!6879698))

(declare-fun m!6880170 () Bool)

(assert (=> d!1882058 m!6880170))

(assert (=> b!6002087 m!6879656))

(assert (=> b!6001429 d!1882058))

(declare-fun call!485236 () Int)

(declare-fun c!1072623 () Bool)

(declare-fun bm!485231 () Bool)

(declare-fun c!1072625 () Bool)

(assert (=> bm!485231 (= call!485236 (regexDepth!270 (ite c!1072625 (reg!16342 r!7292) (ite c!1072623 (regTwo!32539 r!7292) (regOne!32538 r!7292)))))))

(declare-fun b!6002122 () Bool)

(declare-fun e!3668526 () Bool)

(declare-fun e!3668531 () Bool)

(assert (=> b!6002122 (= e!3668526 e!3668531)))

(declare-fun res!2504944 () Bool)

(declare-fun lt!2319351 () Int)

(declare-fun call!485239 () Int)

(assert (=> b!6002122 (= res!2504944 (> lt!2319351 call!485239))))

(assert (=> b!6002122 (=> (not res!2504944) (not e!3668531))))

(declare-fun b!6002123 () Bool)

(declare-fun e!3668527 () Bool)

(assert (=> b!6002123 (= e!3668527 e!3668526)))

(declare-fun c!1072626 () Bool)

(assert (=> b!6002123 (= c!1072626 ((_ is Union!16013) r!7292))))

(declare-fun b!6002124 () Bool)

(declare-fun call!485240 () Int)

(assert (=> b!6002124 (= e!3668531 (> lt!2319351 call!485240))))

(declare-fun b!6002125 () Bool)

(declare-fun e!3668529 () Int)

(declare-fun e!3668532 () Int)

(assert (=> b!6002125 (= e!3668529 e!3668532)))

(declare-fun c!1072621 () Bool)

(assert (=> b!6002125 (= c!1072621 ((_ is Concat!24858) r!7292))))

(declare-fun bm!485233 () Bool)

(declare-fun call!485237 () Int)

(assert (=> bm!485233 (= call!485237 (regexDepth!270 (ite c!1072623 (regOne!32539 r!7292) (regTwo!32538 r!7292))))))

(declare-fun call!485242 () Int)

(declare-fun call!485241 () Int)

(declare-fun bm!485234 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!485234 (= call!485241 (maxBigInt!0 (ite c!1072623 call!485237 call!485242) (ite c!1072623 call!485242 call!485237)))))

(declare-fun b!6002126 () Bool)

(declare-fun e!3668524 () Bool)

(declare-fun call!485238 () Int)

(assert (=> b!6002126 (= e!3668524 (> lt!2319351 call!485238))))

(declare-fun b!6002127 () Bool)

(declare-fun res!2504943 () Bool)

(declare-fun e!3668525 () Bool)

(assert (=> b!6002127 (=> (not res!2504943) (not e!3668525))))

(assert (=> b!6002127 (= res!2504943 (> lt!2319351 call!485238))))

(declare-fun e!3668528 () Bool)

(assert (=> b!6002127 (= e!3668528 e!3668525)))

(declare-fun b!6002128 () Bool)

(declare-fun e!3668523 () Int)

(assert (=> b!6002128 (= e!3668523 (+ 1 call!485236))))

(declare-fun b!6002129 () Bool)

(assert (=> b!6002129 (= e!3668524 (= lt!2319351 1))))

(declare-fun bm!485232 () Bool)

(assert (=> bm!485232 (= call!485242 call!485236)))

(declare-fun d!1882060 () Bool)

(assert (=> d!1882060 e!3668527))

(declare-fun res!2504945 () Bool)

(assert (=> d!1882060 (=> (not res!2504945) (not e!3668527))))

(assert (=> d!1882060 (= res!2504945 (> lt!2319351 0))))

(declare-fun e!3668530 () Int)

(assert (=> d!1882060 (= lt!2319351 e!3668530)))

(declare-fun c!1072620 () Bool)

(assert (=> d!1882060 (= c!1072620 ((_ is ElementMatch!16013) r!7292))))

(assert (=> d!1882060 (= (regexDepth!270 r!7292) lt!2319351)))

(declare-fun b!6002130 () Bool)

(assert (=> b!6002130 (= c!1072623 ((_ is Union!16013) r!7292))))

(assert (=> b!6002130 (= e!3668523 e!3668529)))

(declare-fun bm!485235 () Bool)

(declare-fun c!1072624 () Bool)

(assert (=> bm!485235 (= call!485240 (regexDepth!270 (ite c!1072626 (regTwo!32539 r!7292) (ite c!1072624 (regOne!32538 r!7292) (reg!16342 r!7292)))))))

(declare-fun b!6002131 () Bool)

(assert (=> b!6002131 (= e!3668529 (+ 1 call!485241))))

(declare-fun b!6002132 () Bool)

(assert (=> b!6002132 (= e!3668525 (> lt!2319351 call!485239))))

(declare-fun bm!485236 () Bool)

(assert (=> bm!485236 (= call!485239 (regexDepth!270 (ite c!1072626 (regOne!32539 r!7292) (regTwo!32538 r!7292))))))

(declare-fun b!6002133 () Bool)

(assert (=> b!6002133 (= e!3668530 e!3668523)))

(assert (=> b!6002133 (= c!1072625 ((_ is Star!16013) r!7292))))

(declare-fun b!6002134 () Bool)

(assert (=> b!6002134 (= e!3668530 1)))

(declare-fun b!6002135 () Bool)

(declare-fun c!1072622 () Bool)

(assert (=> b!6002135 (= c!1072622 ((_ is Star!16013) r!7292))))

(assert (=> b!6002135 (= e!3668528 e!3668524)))

(declare-fun b!6002136 () Bool)

(assert (=> b!6002136 (= e!3668532 (+ 1 call!485241))))

(declare-fun bm!485237 () Bool)

(assert (=> bm!485237 (= call!485238 call!485240)))

(declare-fun b!6002137 () Bool)

(assert (=> b!6002137 (= e!3668526 e!3668528)))

(assert (=> b!6002137 (= c!1072624 ((_ is Concat!24858) r!7292))))

(declare-fun b!6002138 () Bool)

(assert (=> b!6002138 (= e!3668532 1)))

(assert (= (and d!1882060 c!1072620) b!6002134))

(assert (= (and d!1882060 (not c!1072620)) b!6002133))

(assert (= (and b!6002133 c!1072625) b!6002128))

(assert (= (and b!6002133 (not c!1072625)) b!6002130))

(assert (= (and b!6002130 c!1072623) b!6002131))

(assert (= (and b!6002130 (not c!1072623)) b!6002125))

(assert (= (and b!6002125 c!1072621) b!6002136))

(assert (= (and b!6002125 (not c!1072621)) b!6002138))

(assert (= (or b!6002131 b!6002136) bm!485232))

(assert (= (or b!6002131 b!6002136) bm!485233))

(assert (= (or b!6002131 b!6002136) bm!485234))

(assert (= (or b!6002128 bm!485232) bm!485231))

(assert (= (and d!1882060 res!2504945) b!6002123))

(assert (= (and b!6002123 c!1072626) b!6002122))

(assert (= (and b!6002123 (not c!1072626)) b!6002137))

(assert (= (and b!6002122 res!2504944) b!6002124))

(assert (= (and b!6002137 c!1072624) b!6002127))

(assert (= (and b!6002137 (not c!1072624)) b!6002135))

(assert (= (and b!6002127 res!2504943) b!6002132))

(assert (= (and b!6002135 c!1072622) b!6002126))

(assert (= (and b!6002135 (not c!1072622)) b!6002129))

(assert (= (or b!6002127 b!6002126) bm!485237))

(assert (= (or b!6002124 bm!485237) bm!485235))

(assert (= (or b!6002122 b!6002132) bm!485236))

(declare-fun m!6880172 () Bool)

(assert (=> bm!485234 m!6880172))

(declare-fun m!6880174 () Bool)

(assert (=> bm!485235 m!6880174))

(declare-fun m!6880176 () Bool)

(assert (=> bm!485231 m!6880176))

(declare-fun m!6880178 () Bool)

(assert (=> bm!485233 m!6880178))

(declare-fun m!6880180 () Bool)

(assert (=> bm!485236 m!6880180))

(assert (=> b!6001408 d!1882060))

(declare-fun bm!485238 () Bool)

(declare-fun call!485243 () Int)

(declare-fun c!1072632 () Bool)

(declare-fun c!1072630 () Bool)

(assert (=> bm!485238 (= call!485243 (regexDepth!270 (ite c!1072632 (reg!16342 lt!2319227) (ite c!1072630 (regTwo!32539 lt!2319227) (regOne!32538 lt!2319227)))))))

(declare-fun b!6002139 () Bool)

(declare-fun e!3668536 () Bool)

(declare-fun e!3668541 () Bool)

(assert (=> b!6002139 (= e!3668536 e!3668541)))

(declare-fun res!2504947 () Bool)

(declare-fun lt!2319352 () Int)

(declare-fun call!485246 () Int)

(assert (=> b!6002139 (= res!2504947 (> lt!2319352 call!485246))))

(assert (=> b!6002139 (=> (not res!2504947) (not e!3668541))))

(declare-fun b!6002140 () Bool)

(declare-fun e!3668537 () Bool)

(assert (=> b!6002140 (= e!3668537 e!3668536)))

(declare-fun c!1072633 () Bool)

(assert (=> b!6002140 (= c!1072633 ((_ is Union!16013) lt!2319227))))

(declare-fun b!6002141 () Bool)

(declare-fun call!485247 () Int)

(assert (=> b!6002141 (= e!3668541 (> lt!2319352 call!485247))))

(declare-fun b!6002142 () Bool)

(declare-fun e!3668539 () Int)

(declare-fun e!3668542 () Int)

(assert (=> b!6002142 (= e!3668539 e!3668542)))

(declare-fun c!1072628 () Bool)

(assert (=> b!6002142 (= c!1072628 ((_ is Concat!24858) lt!2319227))))

(declare-fun bm!485240 () Bool)

(declare-fun call!485244 () Int)

(assert (=> bm!485240 (= call!485244 (regexDepth!270 (ite c!1072630 (regOne!32539 lt!2319227) (regTwo!32538 lt!2319227))))))

(declare-fun call!485249 () Int)

(declare-fun bm!485241 () Bool)

(declare-fun call!485248 () Int)

(assert (=> bm!485241 (= call!485248 (maxBigInt!0 (ite c!1072630 call!485244 call!485249) (ite c!1072630 call!485249 call!485244)))))

(declare-fun b!6002143 () Bool)

(declare-fun e!3668534 () Bool)

(declare-fun call!485245 () Int)

(assert (=> b!6002143 (= e!3668534 (> lt!2319352 call!485245))))

(declare-fun b!6002144 () Bool)

(declare-fun res!2504946 () Bool)

(declare-fun e!3668535 () Bool)

(assert (=> b!6002144 (=> (not res!2504946) (not e!3668535))))

(assert (=> b!6002144 (= res!2504946 (> lt!2319352 call!485245))))

(declare-fun e!3668538 () Bool)

(assert (=> b!6002144 (= e!3668538 e!3668535)))

(declare-fun b!6002145 () Bool)

(declare-fun e!3668533 () Int)

(assert (=> b!6002145 (= e!3668533 (+ 1 call!485243))))

(declare-fun b!6002146 () Bool)

(assert (=> b!6002146 (= e!3668534 (= lt!2319352 1))))

(declare-fun bm!485239 () Bool)

(assert (=> bm!485239 (= call!485249 call!485243)))

(declare-fun d!1882062 () Bool)

(assert (=> d!1882062 e!3668537))

(declare-fun res!2504948 () Bool)

(assert (=> d!1882062 (=> (not res!2504948) (not e!3668537))))

(assert (=> d!1882062 (= res!2504948 (> lt!2319352 0))))

(declare-fun e!3668540 () Int)

(assert (=> d!1882062 (= lt!2319352 e!3668540)))

(declare-fun c!1072627 () Bool)

(assert (=> d!1882062 (= c!1072627 ((_ is ElementMatch!16013) lt!2319227))))

(assert (=> d!1882062 (= (regexDepth!270 lt!2319227) lt!2319352)))

(declare-fun b!6002147 () Bool)

(assert (=> b!6002147 (= c!1072630 ((_ is Union!16013) lt!2319227))))

(assert (=> b!6002147 (= e!3668533 e!3668539)))

(declare-fun c!1072631 () Bool)

(declare-fun bm!485242 () Bool)

(assert (=> bm!485242 (= call!485247 (regexDepth!270 (ite c!1072633 (regTwo!32539 lt!2319227) (ite c!1072631 (regOne!32538 lt!2319227) (reg!16342 lt!2319227)))))))

(declare-fun b!6002148 () Bool)

(assert (=> b!6002148 (= e!3668539 (+ 1 call!485248))))

(declare-fun b!6002149 () Bool)

(assert (=> b!6002149 (= e!3668535 (> lt!2319352 call!485246))))

(declare-fun bm!485243 () Bool)

(assert (=> bm!485243 (= call!485246 (regexDepth!270 (ite c!1072633 (regOne!32539 lt!2319227) (regTwo!32538 lt!2319227))))))

(declare-fun b!6002150 () Bool)

(assert (=> b!6002150 (= e!3668540 e!3668533)))

(assert (=> b!6002150 (= c!1072632 ((_ is Star!16013) lt!2319227))))

(declare-fun b!6002151 () Bool)

(assert (=> b!6002151 (= e!3668540 1)))

(declare-fun b!6002152 () Bool)

(declare-fun c!1072629 () Bool)

(assert (=> b!6002152 (= c!1072629 ((_ is Star!16013) lt!2319227))))

(assert (=> b!6002152 (= e!3668538 e!3668534)))

(declare-fun b!6002153 () Bool)

(assert (=> b!6002153 (= e!3668542 (+ 1 call!485248))))

(declare-fun bm!485244 () Bool)

(assert (=> bm!485244 (= call!485245 call!485247)))

(declare-fun b!6002154 () Bool)

(assert (=> b!6002154 (= e!3668536 e!3668538)))

(assert (=> b!6002154 (= c!1072631 ((_ is Concat!24858) lt!2319227))))

(declare-fun b!6002155 () Bool)

(assert (=> b!6002155 (= e!3668542 1)))

(assert (= (and d!1882062 c!1072627) b!6002151))

(assert (= (and d!1882062 (not c!1072627)) b!6002150))

(assert (= (and b!6002150 c!1072632) b!6002145))

(assert (= (and b!6002150 (not c!1072632)) b!6002147))

(assert (= (and b!6002147 c!1072630) b!6002148))

(assert (= (and b!6002147 (not c!1072630)) b!6002142))

(assert (= (and b!6002142 c!1072628) b!6002153))

(assert (= (and b!6002142 (not c!1072628)) b!6002155))

(assert (= (or b!6002148 b!6002153) bm!485239))

(assert (= (or b!6002148 b!6002153) bm!485240))

(assert (= (or b!6002148 b!6002153) bm!485241))

(assert (= (or b!6002145 bm!485239) bm!485238))

(assert (= (and d!1882062 res!2504948) b!6002140))

(assert (= (and b!6002140 c!1072633) b!6002139))

(assert (= (and b!6002140 (not c!1072633)) b!6002154))

(assert (= (and b!6002139 res!2504947) b!6002141))

(assert (= (and b!6002154 c!1072631) b!6002144))

(assert (= (and b!6002154 (not c!1072631)) b!6002152))

(assert (= (and b!6002144 res!2504946) b!6002149))

(assert (= (and b!6002152 c!1072629) b!6002143))

(assert (= (and b!6002152 (not c!1072629)) b!6002146))

(assert (= (or b!6002144 b!6002143) bm!485244))

(assert (= (or b!6002141 bm!485244) bm!485242))

(assert (= (or b!6002139 b!6002149) bm!485243))

(declare-fun m!6880182 () Bool)

(assert (=> bm!485241 m!6880182))

(declare-fun m!6880184 () Bool)

(assert (=> bm!485242 m!6880184))

(declare-fun m!6880186 () Bool)

(assert (=> bm!485238 m!6880186))

(declare-fun m!6880188 () Bool)

(assert (=> bm!485240 m!6880188))

(declare-fun m!6880190 () Bool)

(assert (=> bm!485243 m!6880190))

(assert (=> b!6001408 d!1882062))

(declare-fun b!6002174 () Bool)

(declare-fun e!3668555 () Option!15904)

(assert (=> b!6002174 (= e!3668555 None!15903)))

(declare-fun b!6002175 () Bool)

(declare-fun lt!2319359 () Unit!157297)

(declare-fun lt!2319361 () Unit!157297)

(assert (=> b!6002175 (= lt!2319359 lt!2319361)))

(declare-fun ++!14108 (List!64339 List!64339) List!64339)

(assert (=> b!6002175 (= (++!14108 (++!14108 Nil!64215 (Cons!64215 (h!70663 s!2326) Nil!64215)) (t!377762 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2203 (List!64339 C!32296 List!64339 List!64339) Unit!157297)

(assert (=> b!6002175 (= lt!2319361 (lemmaMoveElementToOtherListKeepsConcatEq!2203 Nil!64215 (h!70663 s!2326) (t!377762 s!2326) s!2326))))

(assert (=> b!6002175 (= e!3668555 (findConcatSeparation!2318 (regOne!32538 r!7292) (regTwo!32538 r!7292) (++!14108 Nil!64215 (Cons!64215 (h!70663 s!2326) Nil!64215)) (t!377762 s!2326) s!2326))))

(declare-fun b!6002176 () Bool)

(declare-fun e!3668557 () Bool)

(assert (=> b!6002176 (= e!3668557 (matchR!8196 (regTwo!32538 r!7292) s!2326))))

(declare-fun b!6002178 () Bool)

(declare-fun e!3668554 () Option!15904)

(assert (=> b!6002178 (= e!3668554 e!3668555)))

(declare-fun c!1072639 () Bool)

(assert (=> b!6002178 (= c!1072639 ((_ is Nil!64215) s!2326))))

(declare-fun b!6002179 () Bool)

(declare-fun res!2504960 () Bool)

(declare-fun e!3668556 () Bool)

(assert (=> b!6002179 (=> (not res!2504960) (not e!3668556))))

(declare-fun lt!2319360 () Option!15904)

(declare-fun get!22130 (Option!15904) tuple2!65984)

(assert (=> b!6002179 (= res!2504960 (matchR!8196 (regOne!32538 r!7292) (_1!36295 (get!22130 lt!2319360))))))

(declare-fun b!6002180 () Bool)

(declare-fun res!2504959 () Bool)

(assert (=> b!6002180 (=> (not res!2504959) (not e!3668556))))

(assert (=> b!6002180 (= res!2504959 (matchR!8196 (regTwo!32538 r!7292) (_2!36295 (get!22130 lt!2319360))))))

(declare-fun b!6002177 () Bool)

(assert (=> b!6002177 (= e!3668554 (Some!15903 (tuple2!65985 Nil!64215 s!2326)))))

(declare-fun d!1882064 () Bool)

(declare-fun e!3668553 () Bool)

(assert (=> d!1882064 e!3668553))

(declare-fun res!2504963 () Bool)

(assert (=> d!1882064 (=> res!2504963 e!3668553)))

(assert (=> d!1882064 (= res!2504963 e!3668556)))

(declare-fun res!2504962 () Bool)

(assert (=> d!1882064 (=> (not res!2504962) (not e!3668556))))

(assert (=> d!1882064 (= res!2504962 (isDefined!12607 lt!2319360))))

(assert (=> d!1882064 (= lt!2319360 e!3668554)))

(declare-fun c!1072638 () Bool)

(assert (=> d!1882064 (= c!1072638 e!3668557)))

(declare-fun res!2504961 () Bool)

(assert (=> d!1882064 (=> (not res!2504961) (not e!3668557))))

(assert (=> d!1882064 (= res!2504961 (matchR!8196 (regOne!32538 r!7292) Nil!64215))))

(assert (=> d!1882064 (validRegex!7749 (regOne!32538 r!7292))))

(assert (=> d!1882064 (= (findConcatSeparation!2318 (regOne!32538 r!7292) (regTwo!32538 r!7292) Nil!64215 s!2326 s!2326) lt!2319360)))

(declare-fun b!6002181 () Bool)

(assert (=> b!6002181 (= e!3668553 (not (isDefined!12607 lt!2319360)))))

(declare-fun b!6002182 () Bool)

(assert (=> b!6002182 (= e!3668556 (= (++!14108 (_1!36295 (get!22130 lt!2319360)) (_2!36295 (get!22130 lt!2319360))) s!2326))))

(assert (= (and d!1882064 res!2504961) b!6002176))

(assert (= (and d!1882064 c!1072638) b!6002177))

(assert (= (and d!1882064 (not c!1072638)) b!6002178))

(assert (= (and b!6002178 c!1072639) b!6002174))

(assert (= (and b!6002178 (not c!1072639)) b!6002175))

(assert (= (and d!1882064 res!2504962) b!6002179))

(assert (= (and b!6002179 res!2504960) b!6002180))

(assert (= (and b!6002180 res!2504959) b!6002182))

(assert (= (and d!1882064 (not res!2504963)) b!6002181))

(declare-fun m!6880192 () Bool)

(assert (=> d!1882064 m!6880192))

(declare-fun m!6880194 () Bool)

(assert (=> d!1882064 m!6880194))

(declare-fun m!6880196 () Bool)

(assert (=> d!1882064 m!6880196))

(declare-fun m!6880198 () Bool)

(assert (=> b!6002175 m!6880198))

(assert (=> b!6002175 m!6880198))

(declare-fun m!6880200 () Bool)

(assert (=> b!6002175 m!6880200))

(declare-fun m!6880202 () Bool)

(assert (=> b!6002175 m!6880202))

(assert (=> b!6002175 m!6880198))

(declare-fun m!6880204 () Bool)

(assert (=> b!6002175 m!6880204))

(declare-fun m!6880206 () Bool)

(assert (=> b!6002180 m!6880206))

(declare-fun m!6880208 () Bool)

(assert (=> b!6002180 m!6880208))

(assert (=> b!6002181 m!6880192))

(declare-fun m!6880210 () Bool)

(assert (=> b!6002176 m!6880210))

(assert (=> b!6002179 m!6880206))

(declare-fun m!6880212 () Bool)

(assert (=> b!6002179 m!6880212))

(assert (=> b!6002182 m!6880206))

(declare-fun m!6880214 () Bool)

(assert (=> b!6002182 m!6880214))

(assert (=> b!6001428 d!1882064))

(declare-fun d!1882066 () Bool)

(declare-fun choose!45035 (Int) Bool)

(assert (=> d!1882066 (= (Exists!3083 lambda!327637) (choose!45035 lambda!327637))))

(declare-fun bs!1455422 () Bool)

(assert (= bs!1455422 d!1882066))

(declare-fun m!6880216 () Bool)

(assert (=> bs!1455422 m!6880216))

(assert (=> b!6001428 d!1882066))

(declare-fun d!1882068 () Bool)

(assert (=> d!1882068 (= (Exists!3083 lambda!327638) (choose!45035 lambda!327638))))

(declare-fun bs!1455423 () Bool)

(assert (= bs!1455423 d!1882068))

(declare-fun m!6880218 () Bool)

(assert (=> bs!1455423 m!6880218))

(assert (=> b!6001428 d!1882068))

(declare-fun bs!1455424 () Bool)

(declare-fun d!1882070 () Bool)

(assert (= bs!1455424 (and d!1882070 b!6001428)))

(declare-fun lambda!327712 () Int)

(assert (=> bs!1455424 (= lambda!327712 lambda!327637)))

(assert (=> bs!1455424 (not (= lambda!327712 lambda!327638))))

(assert (=> d!1882070 true))

(assert (=> d!1882070 true))

(assert (=> d!1882070 true))

(assert (=> d!1882070 (= (isDefined!12607 (findConcatSeparation!2318 (regOne!32538 r!7292) (regTwo!32538 r!7292) Nil!64215 s!2326 s!2326)) (Exists!3083 lambda!327712))))

(declare-fun lt!2319364 () Unit!157297)

(declare-fun choose!45036 (Regex!16013 Regex!16013 List!64339) Unit!157297)

(assert (=> d!1882070 (= lt!2319364 (choose!45036 (regOne!32538 r!7292) (regTwo!32538 r!7292) s!2326))))

(assert (=> d!1882070 (validRegex!7749 (regOne!32538 r!7292))))

(assert (=> d!1882070 (= (lemmaFindConcatSeparationEquivalentToExists!2082 (regOne!32538 r!7292) (regTwo!32538 r!7292) s!2326) lt!2319364)))

(declare-fun bs!1455425 () Bool)

(assert (= bs!1455425 d!1882070))

(declare-fun m!6880220 () Bool)

(assert (=> bs!1455425 m!6880220))

(assert (=> bs!1455425 m!6879644))

(assert (=> bs!1455425 m!6879646))

(assert (=> bs!1455425 m!6879644))

(assert (=> bs!1455425 m!6880196))

(declare-fun m!6880222 () Bool)

(assert (=> bs!1455425 m!6880222))

(assert (=> b!6001428 d!1882070))

(declare-fun bs!1455426 () Bool)

(declare-fun d!1882072 () Bool)

(assert (= bs!1455426 (and d!1882072 b!6001428)))

(declare-fun lambda!327717 () Int)

(assert (=> bs!1455426 (= lambda!327717 lambda!327637)))

(assert (=> bs!1455426 (not (= lambda!327717 lambda!327638))))

(declare-fun bs!1455427 () Bool)

(assert (= bs!1455427 (and d!1882072 d!1882070)))

(assert (=> bs!1455427 (= lambda!327717 lambda!327712)))

(assert (=> d!1882072 true))

(assert (=> d!1882072 true))

(assert (=> d!1882072 true))

(declare-fun lambda!327718 () Int)

(assert (=> bs!1455426 (not (= lambda!327718 lambda!327637))))

(assert (=> bs!1455426 (= lambda!327718 lambda!327638)))

(assert (=> bs!1455427 (not (= lambda!327718 lambda!327712))))

(declare-fun bs!1455428 () Bool)

(assert (= bs!1455428 d!1882072))

(assert (=> bs!1455428 (not (= lambda!327718 lambda!327717))))

(assert (=> d!1882072 true))

(assert (=> d!1882072 true))

(assert (=> d!1882072 true))

(assert (=> d!1882072 (= (Exists!3083 lambda!327717) (Exists!3083 lambda!327718))))

(declare-fun lt!2319367 () Unit!157297)

(declare-fun choose!45037 (Regex!16013 Regex!16013 List!64339) Unit!157297)

(assert (=> d!1882072 (= lt!2319367 (choose!45037 (regOne!32538 r!7292) (regTwo!32538 r!7292) s!2326))))

(assert (=> d!1882072 (validRegex!7749 (regOne!32538 r!7292))))

(assert (=> d!1882072 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1620 (regOne!32538 r!7292) (regTwo!32538 r!7292) s!2326) lt!2319367)))

(declare-fun m!6880224 () Bool)

(assert (=> bs!1455428 m!6880224))

(declare-fun m!6880226 () Bool)

(assert (=> bs!1455428 m!6880226))

(declare-fun m!6880228 () Bool)

(assert (=> bs!1455428 m!6880228))

(assert (=> bs!1455428 m!6880196))

(assert (=> b!6001428 d!1882072))

(declare-fun d!1882074 () Bool)

(declare-fun isEmpty!36114 (Option!15904) Bool)

(assert (=> d!1882074 (= (isDefined!12607 (findConcatSeparation!2318 (regOne!32538 r!7292) (regTwo!32538 r!7292) Nil!64215 s!2326 s!2326)) (not (isEmpty!36114 (findConcatSeparation!2318 (regOne!32538 r!7292) (regTwo!32538 r!7292) Nil!64215 s!2326 s!2326))))))

(declare-fun bs!1455429 () Bool)

(assert (= bs!1455429 d!1882074))

(assert (=> bs!1455429 m!6879644))

(declare-fun m!6880230 () Bool)

(assert (=> bs!1455429 m!6880230))

(assert (=> b!6001428 d!1882074))

(declare-fun d!1882076 () Bool)

(assert (=> d!1882076 (= (isEmpty!36109 (t!377761 (exprs!5897 (h!70664 zl!343)))) ((_ is Nil!64214) (t!377761 (exprs!5897 (h!70664 zl!343)))))))

(assert (=> b!6001410 d!1882076))

(declare-fun d!1882078 () Bool)

(declare-fun c!1072640 () Bool)

(assert (=> d!1882078 (= c!1072640 (isEmpty!36112 (t!377762 s!2326)))))

(declare-fun e!3668564 () Bool)

(assert (=> d!1882078 (= (matchZipper!2049 (derivationStepZipper!1994 lt!2319225 (h!70663 s!2326)) (t!377762 s!2326)) e!3668564)))

(declare-fun b!6002195 () Bool)

(assert (=> b!6002195 (= e!3668564 (nullableZipper!1818 (derivationStepZipper!1994 lt!2319225 (h!70663 s!2326))))))

(declare-fun b!6002196 () Bool)

(assert (=> b!6002196 (= e!3668564 (matchZipper!2049 (derivationStepZipper!1994 (derivationStepZipper!1994 lt!2319225 (h!70663 s!2326)) (head!12563 (t!377762 s!2326))) (tail!11648 (t!377762 s!2326))))))

(assert (= (and d!1882078 c!1072640) b!6002195))

(assert (= (and d!1882078 (not c!1072640)) b!6002196))

(assert (=> d!1882078 m!6879926))

(assert (=> b!6002195 m!6879674))

(declare-fun m!6880232 () Bool)

(assert (=> b!6002195 m!6880232))

(assert (=> b!6002196 m!6879930))

(assert (=> b!6002196 m!6879674))

(assert (=> b!6002196 m!6879930))

(declare-fun m!6880234 () Bool)

(assert (=> b!6002196 m!6880234))

(assert (=> b!6002196 m!6879934))

(assert (=> b!6002196 m!6880234))

(assert (=> b!6002196 m!6879934))

(declare-fun m!6880236 () Bool)

(assert (=> b!6002196 m!6880236))

(assert (=> b!6001411 d!1882078))

(declare-fun bs!1455430 () Bool)

(declare-fun d!1882080 () Bool)

(assert (= bs!1455430 (and d!1882080 b!6001405)))

(declare-fun lambda!327719 () Int)

(assert (=> bs!1455430 (= lambda!327719 lambda!327639)))

(declare-fun bs!1455431 () Bool)

(assert (= bs!1455431 (and d!1882080 d!1882042)))

(assert (=> bs!1455431 (= lambda!327719 lambda!327709)))

(assert (=> d!1882080 true))

(assert (=> d!1882080 (= (derivationStepZipper!1994 lt!2319225 (h!70663 s!2326)) (flatMap!1526 lt!2319225 lambda!327719))))

(declare-fun bs!1455432 () Bool)

(assert (= bs!1455432 d!1882080))

(declare-fun m!6880238 () Bool)

(assert (=> bs!1455432 m!6880238))

(assert (=> b!6001411 d!1882080))

(declare-fun d!1882082 () Bool)

(declare-fun c!1072641 () Bool)

(assert (=> d!1882082 (= c!1072641 (isEmpty!36112 s!2326))))

(declare-fun e!3668565 () Bool)

(assert (=> d!1882082 (= (matchZipper!2049 lt!2319225 s!2326) e!3668565)))

(declare-fun b!6002197 () Bool)

(assert (=> b!6002197 (= e!3668565 (nullableZipper!1818 lt!2319225))))

(declare-fun b!6002198 () Bool)

(assert (=> b!6002198 (= e!3668565 (matchZipper!2049 (derivationStepZipper!1994 lt!2319225 (head!12563 s!2326)) (tail!11648 s!2326)))))

(assert (= (and d!1882082 c!1072641) b!6002197))

(assert (= (and d!1882082 (not c!1072641)) b!6002198))

(declare-fun m!6880240 () Bool)

(assert (=> d!1882082 m!6880240))

(declare-fun m!6880242 () Bool)

(assert (=> b!6002197 m!6880242))

(declare-fun m!6880244 () Bool)

(assert (=> b!6002198 m!6880244))

(assert (=> b!6002198 m!6880244))

(declare-fun m!6880246 () Bool)

(assert (=> b!6002198 m!6880246))

(declare-fun m!6880248 () Bool)

(assert (=> b!6002198 m!6880248))

(assert (=> b!6002198 m!6880246))

(assert (=> b!6002198 m!6880248))

(declare-fun m!6880250 () Bool)

(assert (=> b!6002198 m!6880250))

(assert (=> b!6001411 d!1882082))

(declare-fun d!1882084 () Bool)

(declare-fun c!1072642 () Bool)

(assert (=> d!1882084 (= c!1072642 (isEmpty!36112 s!2326))))

(declare-fun e!3668566 () Bool)

(assert (=> d!1882084 (= (matchZipper!2049 lt!2319240 s!2326) e!3668566)))

(declare-fun b!6002199 () Bool)

(assert (=> b!6002199 (= e!3668566 (nullableZipper!1818 lt!2319240))))

(declare-fun b!6002200 () Bool)

(assert (=> b!6002200 (= e!3668566 (matchZipper!2049 (derivationStepZipper!1994 lt!2319240 (head!12563 s!2326)) (tail!11648 s!2326)))))

(assert (= (and d!1882084 c!1072642) b!6002199))

(assert (= (and d!1882084 (not c!1072642)) b!6002200))

(assert (=> d!1882084 m!6880240))

(declare-fun m!6880252 () Bool)

(assert (=> b!6002199 m!6880252))

(assert (=> b!6002200 m!6880244))

(assert (=> b!6002200 m!6880244))

(declare-fun m!6880254 () Bool)

(assert (=> b!6002200 m!6880254))

(assert (=> b!6002200 m!6880248))

(assert (=> b!6002200 m!6880254))

(assert (=> b!6002200 m!6880248))

(declare-fun m!6880256 () Bool)

(assert (=> b!6002200 m!6880256))

(assert (=> b!6001430 d!1882084))

(declare-fun d!1882086 () Bool)

(declare-fun c!1072643 () Bool)

(assert (=> d!1882086 (= c!1072643 (isEmpty!36112 (t!377762 s!2326)))))

(declare-fun e!3668567 () Bool)

(assert (=> d!1882086 (= (matchZipper!2049 (derivationStepZipper!1994 lt!2319240 (h!70663 s!2326)) (t!377762 s!2326)) e!3668567)))

(declare-fun b!6002201 () Bool)

(assert (=> b!6002201 (= e!3668567 (nullableZipper!1818 (derivationStepZipper!1994 lt!2319240 (h!70663 s!2326))))))

(declare-fun b!6002202 () Bool)

(assert (=> b!6002202 (= e!3668567 (matchZipper!2049 (derivationStepZipper!1994 (derivationStepZipper!1994 lt!2319240 (h!70663 s!2326)) (head!12563 (t!377762 s!2326))) (tail!11648 (t!377762 s!2326))))))

(assert (= (and d!1882086 c!1072643) b!6002201))

(assert (= (and d!1882086 (not c!1072643)) b!6002202))

(assert (=> d!1882086 m!6879926))

(assert (=> b!6002201 m!6879682))

(declare-fun m!6880258 () Bool)

(assert (=> b!6002201 m!6880258))

(assert (=> b!6002202 m!6879930))

(assert (=> b!6002202 m!6879682))

(assert (=> b!6002202 m!6879930))

(declare-fun m!6880260 () Bool)

(assert (=> b!6002202 m!6880260))

(assert (=> b!6002202 m!6879934))

(assert (=> b!6002202 m!6880260))

(assert (=> b!6002202 m!6879934))

(declare-fun m!6880262 () Bool)

(assert (=> b!6002202 m!6880262))

(assert (=> b!6001430 d!1882086))

(declare-fun bs!1455433 () Bool)

(declare-fun d!1882088 () Bool)

(assert (= bs!1455433 (and d!1882088 b!6001405)))

(declare-fun lambda!327720 () Int)

(assert (=> bs!1455433 (= lambda!327720 lambda!327639)))

(declare-fun bs!1455434 () Bool)

(assert (= bs!1455434 (and d!1882088 d!1882042)))

(assert (=> bs!1455434 (= lambda!327720 lambda!327709)))

(declare-fun bs!1455435 () Bool)

(assert (= bs!1455435 (and d!1882088 d!1882080)))

(assert (=> bs!1455435 (= lambda!327720 lambda!327719)))

(assert (=> d!1882088 true))

(assert (=> d!1882088 (= (derivationStepZipper!1994 lt!2319240 (h!70663 s!2326)) (flatMap!1526 lt!2319240 lambda!327720))))

(declare-fun bs!1455436 () Bool)

(assert (= bs!1455436 d!1882088))

(declare-fun m!6880264 () Bool)

(assert (=> bs!1455436 m!6880264))

(assert (=> b!6001430 d!1882088))

(declare-fun bs!1455437 () Bool)

(declare-fun b!6002209 () Bool)

(assert (= bs!1455437 (and b!6002209 d!1881982)))

(declare-fun lambda!327725 () Int)

(assert (=> bs!1455437 (not (= lambda!327725 lambda!327687))))

(declare-fun bs!1455438 () Bool)

(assert (= bs!1455438 (and b!6002209 d!1882012)))

(assert (=> bs!1455438 (not (= lambda!327725 lambda!327693))))

(declare-fun bs!1455439 () Bool)

(assert (= bs!1455439 (and b!6002209 d!1882016)))

(assert (=> bs!1455439 (not (= lambda!327725 lambda!327696))))

(assert (=> b!6002209 true))

(declare-fun bs!1455440 () Bool)

(declare-fun b!6002211 () Bool)

(assert (= bs!1455440 (and b!6002211 d!1881982)))

(declare-fun lambda!327726 () Int)

(assert (=> bs!1455440 (not (= lambda!327726 lambda!327687))))

(declare-fun bs!1455441 () Bool)

(assert (= bs!1455441 (and b!6002211 d!1882012)))

(assert (=> bs!1455441 (not (= lambda!327726 lambda!327693))))

(declare-fun bs!1455442 () Bool)

(assert (= bs!1455442 (and b!6002211 d!1882016)))

(assert (=> bs!1455442 (not (= lambda!327726 lambda!327696))))

(declare-fun bs!1455443 () Bool)

(assert (= bs!1455443 (and b!6002211 b!6002209)))

(declare-fun lt!2319376 () Int)

(declare-fun lt!2319377 () Int)

(assert (=> bs!1455443 (= (= lt!2319376 lt!2319377) (= lambda!327726 lambda!327725))))

(assert (=> b!6002211 true))

(declare-fun d!1882090 () Bool)

(declare-fun e!3668573 () Bool)

(assert (=> d!1882090 e!3668573))

(declare-fun res!2504978 () Bool)

(assert (=> d!1882090 (=> (not res!2504978) (not e!3668573))))

(assert (=> d!1882090 (= res!2504978 (>= lt!2319376 0))))

(declare-fun e!3668572 () Int)

(assert (=> d!1882090 (= lt!2319376 e!3668572)))

(declare-fun c!1072647 () Bool)

(assert (=> d!1882090 (= c!1072647 ((_ is Cons!64214) (exprs!5897 lt!2319241)))))

(assert (=> d!1882090 (= (contextDepth!161 lt!2319241) lt!2319376)))

(assert (=> b!6002209 (= e!3668572 lt!2319377)))

(assert (=> b!6002209 (= lt!2319377 (maxBigInt!0 (regexDepth!270 (h!70662 (exprs!5897 lt!2319241))) (contextDepth!161 (Context!10795 (t!377761 (exprs!5897 lt!2319241))))))))

(declare-fun lt!2319378 () Unit!157297)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!60 (List!64338 Int Int) Unit!157297)

(assert (=> b!6002209 (= lt!2319378 (lemmaForallRegexDepthBiggerThanTransitive!60 (t!377761 (exprs!5897 lt!2319241)) lt!2319377 (contextDepth!161 (Context!10795 (t!377761 (exprs!5897 lt!2319241))))))))

(assert (=> b!6002209 (forall!15113 (t!377761 (exprs!5897 lt!2319241)) lambda!327725)))

(declare-fun lt!2319379 () Unit!157297)

(assert (=> b!6002209 (= lt!2319379 lt!2319378)))

(declare-fun b!6002210 () Bool)

(assert (=> b!6002210 (= e!3668572 0)))

(assert (=> b!6002211 (= e!3668573 (forall!15113 (exprs!5897 lt!2319241) lambda!327726))))

(assert (= (and d!1882090 c!1072647) b!6002209))

(assert (= (and d!1882090 (not c!1072647)) b!6002210))

(assert (= (and d!1882090 res!2504978) b!6002211))

(declare-fun m!6880266 () Bool)

(assert (=> b!6002209 m!6880266))

(declare-fun m!6880268 () Bool)

(assert (=> b!6002209 m!6880268))

(declare-fun m!6880270 () Bool)

(assert (=> b!6002209 m!6880270))

(assert (=> b!6002209 m!6880268))

(assert (=> b!6002209 m!6880268))

(declare-fun m!6880272 () Bool)

(assert (=> b!6002209 m!6880272))

(assert (=> b!6002209 m!6880266))

(declare-fun m!6880274 () Bool)

(assert (=> b!6002209 m!6880274))

(declare-fun m!6880276 () Bool)

(assert (=> b!6002211 m!6880276))

(assert (=> b!6001431 d!1882090))

(declare-fun bs!1455444 () Bool)

(declare-fun b!6002214 () Bool)

(assert (= bs!1455444 (and b!6002214 d!1882016)))

(declare-fun lambda!327727 () Int)

(assert (=> bs!1455444 (not (= lambda!327727 lambda!327696))))

(declare-fun bs!1455445 () Bool)

(assert (= bs!1455445 (and b!6002214 d!1881982)))

(assert (=> bs!1455445 (not (= lambda!327727 lambda!327687))))

(declare-fun bs!1455446 () Bool)

(assert (= bs!1455446 (and b!6002214 b!6002211)))

(declare-fun lt!2319381 () Int)

(assert (=> bs!1455446 (= (= lt!2319381 lt!2319376) (= lambda!327727 lambda!327726))))

(declare-fun bs!1455447 () Bool)

(assert (= bs!1455447 (and b!6002214 d!1882012)))

(assert (=> bs!1455447 (not (= lambda!327727 lambda!327693))))

(declare-fun bs!1455448 () Bool)

(assert (= bs!1455448 (and b!6002214 b!6002209)))

(assert (=> bs!1455448 (= (= lt!2319381 lt!2319377) (= lambda!327727 lambda!327725))))

(assert (=> b!6002214 true))

(declare-fun bs!1455449 () Bool)

(declare-fun b!6002216 () Bool)

(assert (= bs!1455449 (and b!6002216 d!1882016)))

(declare-fun lambda!327728 () Int)

(assert (=> bs!1455449 (not (= lambda!327728 lambda!327696))))

(declare-fun bs!1455450 () Bool)

(assert (= bs!1455450 (and b!6002216 d!1881982)))

(assert (=> bs!1455450 (not (= lambda!327728 lambda!327687))))

(declare-fun bs!1455451 () Bool)

(assert (= bs!1455451 (and b!6002216 b!6002214)))

(declare-fun lt!2319380 () Int)

(assert (=> bs!1455451 (= (= lt!2319380 lt!2319381) (= lambda!327728 lambda!327727))))

(declare-fun bs!1455452 () Bool)

(assert (= bs!1455452 (and b!6002216 b!6002211)))

(assert (=> bs!1455452 (= (= lt!2319380 lt!2319376) (= lambda!327728 lambda!327726))))

(declare-fun bs!1455453 () Bool)

(assert (= bs!1455453 (and b!6002216 d!1882012)))

(assert (=> bs!1455453 (not (= lambda!327728 lambda!327693))))

(declare-fun bs!1455454 () Bool)

(assert (= bs!1455454 (and b!6002216 b!6002209)))

(assert (=> bs!1455454 (= (= lt!2319380 lt!2319377) (= lambda!327728 lambda!327725))))

(assert (=> b!6002216 true))

(declare-fun d!1882092 () Bool)

(declare-fun e!3668575 () Bool)

(assert (=> d!1882092 e!3668575))

(declare-fun res!2504979 () Bool)

(assert (=> d!1882092 (=> (not res!2504979) (not e!3668575))))

(assert (=> d!1882092 (= res!2504979 (>= lt!2319380 0))))

(declare-fun e!3668574 () Int)

(assert (=> d!1882092 (= lt!2319380 e!3668574)))

(declare-fun c!1072648 () Bool)

(assert (=> d!1882092 (= c!1072648 ((_ is Cons!64214) (exprs!5897 lt!2319213)))))

(assert (=> d!1882092 (= (contextDepth!161 lt!2319213) lt!2319380)))

(assert (=> b!6002214 (= e!3668574 lt!2319381)))

(assert (=> b!6002214 (= lt!2319381 (maxBigInt!0 (regexDepth!270 (h!70662 (exprs!5897 lt!2319213))) (contextDepth!161 (Context!10795 (t!377761 (exprs!5897 lt!2319213))))))))

(declare-fun lt!2319382 () Unit!157297)

(assert (=> b!6002214 (= lt!2319382 (lemmaForallRegexDepthBiggerThanTransitive!60 (t!377761 (exprs!5897 lt!2319213)) lt!2319381 (contextDepth!161 (Context!10795 (t!377761 (exprs!5897 lt!2319213))))))))

(assert (=> b!6002214 (forall!15113 (t!377761 (exprs!5897 lt!2319213)) lambda!327727)))

(declare-fun lt!2319383 () Unit!157297)

(assert (=> b!6002214 (= lt!2319383 lt!2319382)))

(declare-fun b!6002215 () Bool)

(assert (=> b!6002215 (= e!3668574 0)))

(assert (=> b!6002216 (= e!3668575 (forall!15113 (exprs!5897 lt!2319213) lambda!327728))))

(assert (= (and d!1882092 c!1072648) b!6002214))

(assert (= (and d!1882092 (not c!1072648)) b!6002215))

(assert (= (and d!1882092 res!2504979) b!6002216))

(declare-fun m!6880278 () Bool)

(assert (=> b!6002214 m!6880278))

(declare-fun m!6880280 () Bool)

(assert (=> b!6002214 m!6880280))

(declare-fun m!6880282 () Bool)

(assert (=> b!6002214 m!6880282))

(assert (=> b!6002214 m!6880280))

(assert (=> b!6002214 m!6880280))

(declare-fun m!6880284 () Bool)

(assert (=> b!6002214 m!6880284))

(assert (=> b!6002214 m!6880278))

(declare-fun m!6880286 () Bool)

(assert (=> b!6002214 m!6880286))

(declare-fun m!6880288 () Bool)

(assert (=> b!6002216 m!6880288))

(assert (=> b!6001433 d!1882092))

(declare-fun bs!1455455 () Bool)

(declare-fun b!6002217 () Bool)

(assert (= bs!1455455 (and b!6002217 d!1882016)))

(declare-fun lambda!327729 () Int)

(assert (=> bs!1455455 (not (= lambda!327729 lambda!327696))))

(declare-fun bs!1455456 () Bool)

(assert (= bs!1455456 (and b!6002217 d!1881982)))

(assert (=> bs!1455456 (not (= lambda!327729 lambda!327687))))

(declare-fun bs!1455457 () Bool)

(assert (= bs!1455457 (and b!6002217 b!6002211)))

(declare-fun lt!2319385 () Int)

(assert (=> bs!1455457 (= (= lt!2319385 lt!2319376) (= lambda!327729 lambda!327726))))

(declare-fun bs!1455458 () Bool)

(assert (= bs!1455458 (and b!6002217 d!1882012)))

(assert (=> bs!1455458 (not (= lambda!327729 lambda!327693))))

(declare-fun bs!1455459 () Bool)

(assert (= bs!1455459 (and b!6002217 b!6002209)))

(assert (=> bs!1455459 (= (= lt!2319385 lt!2319377) (= lambda!327729 lambda!327725))))

(declare-fun bs!1455460 () Bool)

(assert (= bs!1455460 (and b!6002217 b!6002214)))

(assert (=> bs!1455460 (= (= lt!2319385 lt!2319381) (= lambda!327729 lambda!327727))))

(declare-fun bs!1455461 () Bool)

(assert (= bs!1455461 (and b!6002217 b!6002216)))

(assert (=> bs!1455461 (= (= lt!2319385 lt!2319380) (= lambda!327729 lambda!327728))))

(assert (=> b!6002217 true))

(declare-fun bs!1455462 () Bool)

(declare-fun b!6002219 () Bool)

(assert (= bs!1455462 (and b!6002219 d!1882016)))

(declare-fun lambda!327730 () Int)

(assert (=> bs!1455462 (not (= lambda!327730 lambda!327696))))

(declare-fun bs!1455463 () Bool)

(assert (= bs!1455463 (and b!6002219 d!1881982)))

(assert (=> bs!1455463 (not (= lambda!327730 lambda!327687))))

(declare-fun bs!1455464 () Bool)

(assert (= bs!1455464 (and b!6002219 b!6002211)))

(declare-fun lt!2319384 () Int)

(assert (=> bs!1455464 (= (= lt!2319384 lt!2319376) (= lambda!327730 lambda!327726))))

(declare-fun bs!1455465 () Bool)

(assert (= bs!1455465 (and b!6002219 b!6002209)))

(assert (=> bs!1455465 (= (= lt!2319384 lt!2319377) (= lambda!327730 lambda!327725))))

(declare-fun bs!1455466 () Bool)

(assert (= bs!1455466 (and b!6002219 b!6002214)))

(assert (=> bs!1455466 (= (= lt!2319384 lt!2319381) (= lambda!327730 lambda!327727))))

(declare-fun bs!1455467 () Bool)

(assert (= bs!1455467 (and b!6002219 b!6002216)))

(assert (=> bs!1455467 (= (= lt!2319384 lt!2319380) (= lambda!327730 lambda!327728))))

(declare-fun bs!1455468 () Bool)

(assert (= bs!1455468 (and b!6002219 d!1882012)))

(assert (=> bs!1455468 (not (= lambda!327730 lambda!327693))))

(declare-fun bs!1455469 () Bool)

(assert (= bs!1455469 (and b!6002219 b!6002217)))

(assert (=> bs!1455469 (= (= lt!2319384 lt!2319385) (= lambda!327730 lambda!327729))))

(assert (=> b!6002219 true))

(declare-fun d!1882094 () Bool)

(declare-fun e!3668577 () Bool)

(assert (=> d!1882094 e!3668577))

(declare-fun res!2504980 () Bool)

(assert (=> d!1882094 (=> (not res!2504980) (not e!3668577))))

(assert (=> d!1882094 (= res!2504980 (>= lt!2319384 0))))

(declare-fun e!3668576 () Int)

(assert (=> d!1882094 (= lt!2319384 e!3668576)))

(declare-fun c!1072649 () Bool)

(assert (=> d!1882094 (= c!1072649 ((_ is Cons!64214) (exprs!5897 lt!2319226)))))

(assert (=> d!1882094 (= (contextDepth!161 lt!2319226) lt!2319384)))

(assert (=> b!6002217 (= e!3668576 lt!2319385)))

(assert (=> b!6002217 (= lt!2319385 (maxBigInt!0 (regexDepth!270 (h!70662 (exprs!5897 lt!2319226))) (contextDepth!161 (Context!10795 (t!377761 (exprs!5897 lt!2319226))))))))

(declare-fun lt!2319386 () Unit!157297)

(assert (=> b!6002217 (= lt!2319386 (lemmaForallRegexDepthBiggerThanTransitive!60 (t!377761 (exprs!5897 lt!2319226)) lt!2319385 (contextDepth!161 (Context!10795 (t!377761 (exprs!5897 lt!2319226))))))))

(assert (=> b!6002217 (forall!15113 (t!377761 (exprs!5897 lt!2319226)) lambda!327729)))

(declare-fun lt!2319387 () Unit!157297)

(assert (=> b!6002217 (= lt!2319387 lt!2319386)))

(declare-fun b!6002218 () Bool)

(assert (=> b!6002218 (= e!3668576 0)))

(assert (=> b!6002219 (= e!3668577 (forall!15113 (exprs!5897 lt!2319226) lambda!327730))))

(assert (= (and d!1882094 c!1072649) b!6002217))

(assert (= (and d!1882094 (not c!1072649)) b!6002218))

(assert (= (and d!1882094 res!2504980) b!6002219))

(declare-fun m!6880290 () Bool)

(assert (=> b!6002217 m!6880290))

(declare-fun m!6880292 () Bool)

(assert (=> b!6002217 m!6880292))

(declare-fun m!6880294 () Bool)

(assert (=> b!6002217 m!6880294))

(assert (=> b!6002217 m!6880292))

(assert (=> b!6002217 m!6880292))

(declare-fun m!6880296 () Bool)

(assert (=> b!6002217 m!6880296))

(assert (=> b!6002217 m!6880290))

(declare-fun m!6880298 () Bool)

(assert (=> b!6002217 m!6880298))

(declare-fun m!6880300 () Bool)

(assert (=> b!6002219 m!6880300))

(assert (=> b!6001433 d!1882094))

(declare-fun d!1882096 () Bool)

(declare-fun lt!2319390 () Regex!16013)

(assert (=> d!1882096 (validRegex!7749 lt!2319390)))

(assert (=> d!1882096 (= lt!2319390 (generalisedUnion!1857 (unfocusZipperList!1434 zl!343)))))

(assert (=> d!1882096 (= (unfocusZipper!1755 zl!343) lt!2319390)))

(declare-fun bs!1455470 () Bool)

(assert (= bs!1455470 d!1882096))

(declare-fun m!6880302 () Bool)

(assert (=> bs!1455470 m!6880302))

(assert (=> bs!1455470 m!6879594))

(assert (=> bs!1455470 m!6879594))

(assert (=> bs!1455470 m!6879596))

(assert (=> b!6001413 d!1882096))

(declare-fun bs!1455471 () Bool)

(declare-fun b!6002259 () Bool)

(assert (= bs!1455471 (and b!6002259 b!6001428)))

(declare-fun lambda!327735 () Int)

(assert (=> bs!1455471 (not (= lambda!327735 lambda!327638))))

(declare-fun bs!1455472 () Bool)

(assert (= bs!1455472 (and b!6002259 d!1882072)))

(assert (=> bs!1455472 (not (= lambda!327735 lambda!327717))))

(assert (=> bs!1455471 (not (= lambda!327735 lambda!327637))))

(declare-fun bs!1455473 () Bool)

(assert (= bs!1455473 (and b!6002259 d!1882070)))

(assert (=> bs!1455473 (not (= lambda!327735 lambda!327712))))

(assert (=> bs!1455472 (not (= lambda!327735 lambda!327718))))

(assert (=> b!6002259 true))

(assert (=> b!6002259 true))

(declare-fun bs!1455474 () Bool)

(declare-fun b!6002252 () Bool)

(assert (= bs!1455474 (and b!6002252 b!6001428)))

(declare-fun lambda!327736 () Int)

(assert (=> bs!1455474 (= lambda!327736 lambda!327638)))

(declare-fun bs!1455475 () Bool)

(assert (= bs!1455475 (and b!6002252 b!6002259)))

(assert (=> bs!1455475 (not (= lambda!327736 lambda!327735))))

(declare-fun bs!1455476 () Bool)

(assert (= bs!1455476 (and b!6002252 d!1882072)))

(assert (=> bs!1455476 (not (= lambda!327736 lambda!327717))))

(assert (=> bs!1455474 (not (= lambda!327736 lambda!327637))))

(declare-fun bs!1455477 () Bool)

(assert (= bs!1455477 (and b!6002252 d!1882070)))

(assert (=> bs!1455477 (not (= lambda!327736 lambda!327712))))

(assert (=> bs!1455476 (= lambda!327736 lambda!327718)))

(assert (=> b!6002252 true))

(assert (=> b!6002252 true))

(declare-fun e!3668598 () Bool)

(declare-fun call!485254 () Bool)

(assert (=> b!6002252 (= e!3668598 call!485254)))

(declare-fun b!6002253 () Bool)

(declare-fun e!3668602 () Bool)

(assert (=> b!6002253 (= e!3668602 (matchRSpec!3114 (regTwo!32539 r!7292) s!2326))))

(declare-fun b!6002254 () Bool)

(declare-fun e!3668601 () Bool)

(assert (=> b!6002254 (= e!3668601 e!3668602)))

(declare-fun res!2504998 () Bool)

(assert (=> b!6002254 (= res!2504998 (matchRSpec!3114 (regOne!32539 r!7292) s!2326))))

(assert (=> b!6002254 (=> res!2504998 e!3668602)))

(declare-fun d!1882098 () Bool)

(declare-fun c!1072658 () Bool)

(assert (=> d!1882098 (= c!1072658 ((_ is EmptyExpr!16013) r!7292))))

(declare-fun e!3668597 () Bool)

(assert (=> d!1882098 (= (matchRSpec!3114 r!7292 s!2326) e!3668597)))

(declare-fun bm!485249 () Bool)

(declare-fun call!485255 () Bool)

(assert (=> bm!485249 (= call!485255 (isEmpty!36112 s!2326))))

(declare-fun b!6002255 () Bool)

(declare-fun c!1072659 () Bool)

(assert (=> b!6002255 (= c!1072659 ((_ is ElementMatch!16013) r!7292))))

(declare-fun e!3668596 () Bool)

(declare-fun e!3668600 () Bool)

(assert (=> b!6002255 (= e!3668596 e!3668600)))

(declare-fun b!6002256 () Bool)

(assert (=> b!6002256 (= e!3668601 e!3668598)))

(declare-fun c!1072660 () Bool)

(assert (=> b!6002256 (= c!1072660 ((_ is Star!16013) r!7292))))

(declare-fun b!6002257 () Bool)

(declare-fun c!1072661 () Bool)

(assert (=> b!6002257 (= c!1072661 ((_ is Union!16013) r!7292))))

(assert (=> b!6002257 (= e!3668600 e!3668601)))

(declare-fun b!6002258 () Bool)

(assert (=> b!6002258 (= e!3668597 e!3668596)))

(declare-fun res!2504999 () Bool)

(assert (=> b!6002258 (= res!2504999 (not ((_ is EmptyLang!16013) r!7292)))))

(assert (=> b!6002258 (=> (not res!2504999) (not e!3668596))))

(declare-fun e!3668599 () Bool)

(assert (=> b!6002259 (= e!3668599 call!485254)))

(declare-fun b!6002260 () Bool)

(declare-fun res!2504997 () Bool)

(assert (=> b!6002260 (=> res!2504997 e!3668599)))

(assert (=> b!6002260 (= res!2504997 call!485255)))

(assert (=> b!6002260 (= e!3668598 e!3668599)))

(declare-fun bm!485250 () Bool)

(assert (=> bm!485250 (= call!485254 (Exists!3083 (ite c!1072660 lambda!327735 lambda!327736)))))

(declare-fun b!6002261 () Bool)

(assert (=> b!6002261 (= e!3668600 (= s!2326 (Cons!64215 (c!1072394 r!7292) Nil!64215)))))

(declare-fun b!6002262 () Bool)

(assert (=> b!6002262 (= e!3668597 call!485255)))

(assert (= (and d!1882098 c!1072658) b!6002262))

(assert (= (and d!1882098 (not c!1072658)) b!6002258))

(assert (= (and b!6002258 res!2504999) b!6002255))

(assert (= (and b!6002255 c!1072659) b!6002261))

(assert (= (and b!6002255 (not c!1072659)) b!6002257))

(assert (= (and b!6002257 c!1072661) b!6002254))

(assert (= (and b!6002257 (not c!1072661)) b!6002256))

(assert (= (and b!6002254 (not res!2504998)) b!6002253))

(assert (= (and b!6002256 c!1072660) b!6002260))

(assert (= (and b!6002256 (not c!1072660)) b!6002252))

(assert (= (and b!6002260 (not res!2504997)) b!6002259))

(assert (= (or b!6002259 b!6002252) bm!485250))

(assert (= (or b!6002262 b!6002260) bm!485249))

(declare-fun m!6880304 () Bool)

(assert (=> b!6002253 m!6880304))

(declare-fun m!6880306 () Bool)

(assert (=> b!6002254 m!6880306))

(assert (=> bm!485249 m!6880240))

(declare-fun m!6880308 () Bool)

(assert (=> bm!485250 m!6880308))

(assert (=> b!6001434 d!1882098))

(declare-fun b!6002291 () Bool)

(declare-fun res!2505017 () Bool)

(declare-fun e!3668621 () Bool)

(assert (=> b!6002291 (=> (not res!2505017) (not e!3668621))))

(assert (=> b!6002291 (= res!2505017 (isEmpty!36112 (tail!11648 s!2326)))))

(declare-fun b!6002292 () Bool)

(declare-fun e!3668619 () Bool)

(declare-fun e!3668620 () Bool)

(assert (=> b!6002292 (= e!3668619 e!3668620)))

(declare-fun res!2505020 () Bool)

(assert (=> b!6002292 (=> (not res!2505020) (not e!3668620))))

(declare-fun lt!2319393 () Bool)

(assert (=> b!6002292 (= res!2505020 (not lt!2319393))))

(declare-fun b!6002293 () Bool)

(declare-fun res!2505016 () Bool)

(assert (=> b!6002293 (=> res!2505016 e!3668619)))

(assert (=> b!6002293 (= res!2505016 (not ((_ is ElementMatch!16013) r!7292)))))

(declare-fun e!3668623 () Bool)

(assert (=> b!6002293 (= e!3668623 e!3668619)))

(declare-fun b!6002294 () Bool)

(declare-fun e!3668617 () Bool)

(assert (=> b!6002294 (= e!3668617 (nullable!6008 r!7292))))

(declare-fun bm!485253 () Bool)

(declare-fun call!485258 () Bool)

(assert (=> bm!485253 (= call!485258 (isEmpty!36112 s!2326))))

(declare-fun b!6002295 () Bool)

(declare-fun res!2505021 () Bool)

(assert (=> b!6002295 (=> (not res!2505021) (not e!3668621))))

(assert (=> b!6002295 (= res!2505021 (not call!485258))))

(declare-fun d!1882100 () Bool)

(declare-fun e!3668618 () Bool)

(assert (=> d!1882100 e!3668618))

(declare-fun c!1072670 () Bool)

(assert (=> d!1882100 (= c!1072670 ((_ is EmptyExpr!16013) r!7292))))

(assert (=> d!1882100 (= lt!2319393 e!3668617)))

(declare-fun c!1072669 () Bool)

(assert (=> d!1882100 (= c!1072669 (isEmpty!36112 s!2326))))

(assert (=> d!1882100 (validRegex!7749 r!7292)))

(assert (=> d!1882100 (= (matchR!8196 r!7292 s!2326) lt!2319393)))

(declare-fun b!6002296 () Bool)

(assert (=> b!6002296 (= e!3668618 e!3668623)))

(declare-fun c!1072668 () Bool)

(assert (=> b!6002296 (= c!1072668 ((_ is EmptyLang!16013) r!7292))))

(declare-fun b!6002297 () Bool)

(declare-fun e!3668622 () Bool)

(assert (=> b!6002297 (= e!3668620 e!3668622)))

(declare-fun res!2505023 () Bool)

(assert (=> b!6002297 (=> res!2505023 e!3668622)))

(assert (=> b!6002297 (= res!2505023 call!485258)))

(declare-fun b!6002298 () Bool)

(assert (=> b!6002298 (= e!3668622 (not (= (head!12563 s!2326) (c!1072394 r!7292))))))

(declare-fun b!6002299 () Bool)

(assert (=> b!6002299 (= e!3668618 (= lt!2319393 call!485258))))

(declare-fun b!6002300 () Bool)

(declare-fun res!2505018 () Bool)

(assert (=> b!6002300 (=> res!2505018 e!3668619)))

(assert (=> b!6002300 (= res!2505018 e!3668621)))

(declare-fun res!2505019 () Bool)

(assert (=> b!6002300 (=> (not res!2505019) (not e!3668621))))

(assert (=> b!6002300 (= res!2505019 lt!2319393)))

(declare-fun b!6002301 () Bool)

(declare-fun derivativeStep!4742 (Regex!16013 C!32296) Regex!16013)

(assert (=> b!6002301 (= e!3668617 (matchR!8196 (derivativeStep!4742 r!7292 (head!12563 s!2326)) (tail!11648 s!2326)))))

(declare-fun b!6002302 () Bool)

(assert (=> b!6002302 (= e!3668623 (not lt!2319393))))

(declare-fun b!6002303 () Bool)

(assert (=> b!6002303 (= e!3668621 (= (head!12563 s!2326) (c!1072394 r!7292)))))

(declare-fun b!6002304 () Bool)

(declare-fun res!2505022 () Bool)

(assert (=> b!6002304 (=> res!2505022 e!3668622)))

(assert (=> b!6002304 (= res!2505022 (not (isEmpty!36112 (tail!11648 s!2326))))))

(assert (= (and d!1882100 c!1072669) b!6002294))

(assert (= (and d!1882100 (not c!1072669)) b!6002301))

(assert (= (and d!1882100 c!1072670) b!6002299))

(assert (= (and d!1882100 (not c!1072670)) b!6002296))

(assert (= (and b!6002296 c!1072668) b!6002302))

(assert (= (and b!6002296 (not c!1072668)) b!6002293))

(assert (= (and b!6002293 (not res!2505016)) b!6002300))

(assert (= (and b!6002300 res!2505019) b!6002295))

(assert (= (and b!6002295 res!2505021) b!6002291))

(assert (= (and b!6002291 res!2505017) b!6002303))

(assert (= (and b!6002300 (not res!2505018)) b!6002292))

(assert (= (and b!6002292 res!2505020) b!6002297))

(assert (= (and b!6002297 (not res!2505023)) b!6002304))

(assert (= (and b!6002304 (not res!2505022)) b!6002298))

(assert (= (or b!6002299 b!6002295 b!6002297) bm!485253))

(assert (=> b!6002303 m!6880244))

(assert (=> d!1882100 m!6880240))

(assert (=> d!1882100 m!6879588))

(assert (=> b!6002304 m!6880248))

(assert (=> b!6002304 m!6880248))

(declare-fun m!6880310 () Bool)

(assert (=> b!6002304 m!6880310))

(assert (=> bm!485253 m!6880240))

(assert (=> b!6002291 m!6880248))

(assert (=> b!6002291 m!6880248))

(assert (=> b!6002291 m!6880310))

(assert (=> b!6002301 m!6880244))

(assert (=> b!6002301 m!6880244))

(declare-fun m!6880312 () Bool)

(assert (=> b!6002301 m!6880312))

(assert (=> b!6002301 m!6880248))

(assert (=> b!6002301 m!6880312))

(assert (=> b!6002301 m!6880248))

(declare-fun m!6880314 () Bool)

(assert (=> b!6002301 m!6880314))

(assert (=> b!6002298 m!6880244))

(declare-fun m!6880316 () Bool)

(assert (=> b!6002294 m!6880316))

(assert (=> b!6001434 d!1882100))

(declare-fun d!1882102 () Bool)

(assert (=> d!1882102 (= (matchR!8196 r!7292 s!2326) (matchRSpec!3114 r!7292 s!2326))))

(declare-fun lt!2319396 () Unit!157297)

(declare-fun choose!45038 (Regex!16013 List!64339) Unit!157297)

(assert (=> d!1882102 (= lt!2319396 (choose!45038 r!7292 s!2326))))

(assert (=> d!1882102 (validRegex!7749 r!7292)))

(assert (=> d!1882102 (= (mainMatchTheorem!3114 r!7292 s!2326) lt!2319396)))

(declare-fun bs!1455478 () Bool)

(assert (= bs!1455478 d!1882102))

(assert (=> bs!1455478 m!6879600))

(assert (=> bs!1455478 m!6879598))

(declare-fun m!6880318 () Bool)

(assert (=> bs!1455478 m!6880318))

(assert (=> bs!1455478 m!6879588))

(assert (=> b!6001434 d!1882102))

(declare-fun d!1882104 () Bool)

(assert (=> d!1882104 (= (isEmpty!36110 (t!377763 zl!343)) ((_ is Nil!64216) (t!377763 zl!343)))))

(assert (=> b!6001432 d!1882104))

(declare-fun bs!1455479 () Bool)

(declare-fun d!1882106 () Bool)

(assert (= bs!1455479 (and d!1882106 d!1882016)))

(declare-fun lambda!327737 () Int)

(assert (=> bs!1455479 (= lambda!327737 lambda!327696)))

(declare-fun bs!1455480 () Bool)

(assert (= bs!1455480 (and d!1882106 d!1881982)))

(assert (=> bs!1455480 (= lambda!327737 lambda!327687)))

(declare-fun bs!1455481 () Bool)

(assert (= bs!1455481 (and d!1882106 b!6002211)))

(assert (=> bs!1455481 (not (= lambda!327737 lambda!327726))))

(declare-fun bs!1455482 () Bool)

(assert (= bs!1455482 (and d!1882106 b!6002219)))

(assert (=> bs!1455482 (not (= lambda!327737 lambda!327730))))

(declare-fun bs!1455483 () Bool)

(assert (= bs!1455483 (and d!1882106 b!6002209)))

(assert (=> bs!1455483 (not (= lambda!327737 lambda!327725))))

(declare-fun bs!1455484 () Bool)

(assert (= bs!1455484 (and d!1882106 b!6002214)))

(assert (=> bs!1455484 (not (= lambda!327737 lambda!327727))))

(declare-fun bs!1455485 () Bool)

(assert (= bs!1455485 (and d!1882106 b!6002216)))

(assert (=> bs!1455485 (not (= lambda!327737 lambda!327728))))

(declare-fun bs!1455486 () Bool)

(assert (= bs!1455486 (and d!1882106 d!1882012)))

(assert (=> bs!1455486 (= lambda!327737 lambda!327693)))

(declare-fun bs!1455487 () Bool)

(assert (= bs!1455487 (and d!1882106 b!6002217)))

(assert (=> bs!1455487 (not (= lambda!327737 lambda!327729))))

(assert (=> d!1882106 (= (inv!83279 (h!70664 zl!343)) (forall!15113 (exprs!5897 (h!70664 zl!343)) lambda!327737))))

(declare-fun bs!1455488 () Bool)

(assert (= bs!1455488 d!1882106))

(declare-fun m!6880320 () Bool)

(assert (=> bs!1455488 m!6880320))

(assert (=> b!6001436 d!1882106))

(declare-fun bs!1455489 () Bool)

(declare-fun d!1882108 () Bool)

(assert (= bs!1455489 (and d!1882108 d!1882016)))

(declare-fun lambda!327740 () Int)

(assert (=> bs!1455489 (= lambda!327740 lambda!327696)))

(declare-fun bs!1455490 () Bool)

(assert (= bs!1455490 (and d!1882108 d!1881982)))

(assert (=> bs!1455490 (= lambda!327740 lambda!327687)))

(declare-fun bs!1455491 () Bool)

(assert (= bs!1455491 (and d!1882108 b!6002211)))

(assert (=> bs!1455491 (not (= lambda!327740 lambda!327726))))

(declare-fun bs!1455492 () Bool)

(assert (= bs!1455492 (and d!1882108 b!6002219)))

(assert (=> bs!1455492 (not (= lambda!327740 lambda!327730))))

(declare-fun bs!1455493 () Bool)

(assert (= bs!1455493 (and d!1882108 b!6002209)))

(assert (=> bs!1455493 (not (= lambda!327740 lambda!327725))))

(declare-fun bs!1455494 () Bool)

(assert (= bs!1455494 (and d!1882108 d!1882106)))

(assert (=> bs!1455494 (= lambda!327740 lambda!327737)))

(declare-fun bs!1455495 () Bool)

(assert (= bs!1455495 (and d!1882108 b!6002214)))

(assert (=> bs!1455495 (not (= lambda!327740 lambda!327727))))

(declare-fun bs!1455496 () Bool)

(assert (= bs!1455496 (and d!1882108 b!6002216)))

(assert (=> bs!1455496 (not (= lambda!327740 lambda!327728))))

(declare-fun bs!1455497 () Bool)

(assert (= bs!1455497 (and d!1882108 d!1882012)))

(assert (=> bs!1455497 (= lambda!327740 lambda!327693)))

(declare-fun bs!1455498 () Bool)

(assert (= bs!1455498 (and d!1882108 b!6002217)))

(assert (=> bs!1455498 (not (= lambda!327740 lambda!327729))))

(declare-fun b!6002325 () Bool)

(declare-fun e!3668637 () Bool)

(declare-fun lt!2319399 () Regex!16013)

(assert (=> b!6002325 (= e!3668637 (= lt!2319399 (head!12564 (exprs!5897 (h!70664 zl!343)))))))

(declare-fun b!6002326 () Bool)

(declare-fun e!3668641 () Bool)

(assert (=> b!6002326 (= e!3668641 (isEmpty!36109 (t!377761 (exprs!5897 (h!70664 zl!343)))))))

(declare-fun b!6002327 () Bool)

(declare-fun e!3668636 () Regex!16013)

(assert (=> b!6002327 (= e!3668636 (h!70662 (exprs!5897 (h!70664 zl!343))))))

(declare-fun b!6002328 () Bool)

(declare-fun e!3668638 () Bool)

(assert (=> b!6002328 (= e!3668638 e!3668637)))

(declare-fun c!1072679 () Bool)

(assert (=> b!6002328 (= c!1072679 (isEmpty!36109 (tail!11649 (exprs!5897 (h!70664 zl!343)))))))

(declare-fun e!3668639 () Bool)

(assert (=> d!1882108 e!3668639))

(declare-fun res!2505029 () Bool)

(assert (=> d!1882108 (=> (not res!2505029) (not e!3668639))))

(assert (=> d!1882108 (= res!2505029 (validRegex!7749 lt!2319399))))

(assert (=> d!1882108 (= lt!2319399 e!3668636)))

(declare-fun c!1072680 () Bool)

(assert (=> d!1882108 (= c!1072680 e!3668641)))

(declare-fun res!2505028 () Bool)

(assert (=> d!1882108 (=> (not res!2505028) (not e!3668641))))

(assert (=> d!1882108 (= res!2505028 ((_ is Cons!64214) (exprs!5897 (h!70664 zl!343))))))

(assert (=> d!1882108 (forall!15113 (exprs!5897 (h!70664 zl!343)) lambda!327740)))

(assert (=> d!1882108 (= (generalisedConcat!1610 (exprs!5897 (h!70664 zl!343))) lt!2319399)))

(declare-fun b!6002329 () Bool)

(declare-fun e!3668640 () Regex!16013)

(assert (=> b!6002329 (= e!3668640 (Concat!24858 (h!70662 (exprs!5897 (h!70664 zl!343))) (generalisedConcat!1610 (t!377761 (exprs!5897 (h!70664 zl!343))))))))

(declare-fun b!6002330 () Bool)

(assert (=> b!6002330 (= e!3668640 EmptyExpr!16013)))

(declare-fun b!6002331 () Bool)

(assert (=> b!6002331 (= e!3668636 e!3668640)))

(declare-fun c!1072682 () Bool)

(assert (=> b!6002331 (= c!1072682 ((_ is Cons!64214) (exprs!5897 (h!70664 zl!343))))))

(declare-fun b!6002332 () Bool)

(assert (=> b!6002332 (= e!3668639 e!3668638)))

(declare-fun c!1072681 () Bool)

(assert (=> b!6002332 (= c!1072681 (isEmpty!36109 (exprs!5897 (h!70664 zl!343))))))

(declare-fun b!6002333 () Bool)

(declare-fun isConcat!961 (Regex!16013) Bool)

(assert (=> b!6002333 (= e!3668637 (isConcat!961 lt!2319399))))

(declare-fun b!6002334 () Bool)

(declare-fun isEmptyExpr!1438 (Regex!16013) Bool)

(assert (=> b!6002334 (= e!3668638 (isEmptyExpr!1438 lt!2319399))))

(assert (= (and d!1882108 res!2505028) b!6002326))

(assert (= (and d!1882108 c!1072680) b!6002327))

(assert (= (and d!1882108 (not c!1072680)) b!6002331))

(assert (= (and b!6002331 c!1072682) b!6002329))

(assert (= (and b!6002331 (not c!1072682)) b!6002330))

(assert (= (and d!1882108 res!2505029) b!6002332))

(assert (= (and b!6002332 c!1072681) b!6002334))

(assert (= (and b!6002332 (not c!1072681)) b!6002328))

(assert (= (and b!6002328 c!1072679) b!6002325))

(assert (= (and b!6002328 (not c!1072679)) b!6002333))

(declare-fun m!6880322 () Bool)

(assert (=> b!6002333 m!6880322))

(declare-fun m!6880324 () Bool)

(assert (=> b!6002325 m!6880324))

(declare-fun m!6880326 () Bool)

(assert (=> b!6002329 m!6880326))

(declare-fun m!6880328 () Bool)

(assert (=> b!6002332 m!6880328))

(declare-fun m!6880330 () Bool)

(assert (=> b!6002334 m!6880330))

(declare-fun m!6880332 () Bool)

(assert (=> b!6002328 m!6880332))

(assert (=> b!6002328 m!6880332))

(declare-fun m!6880334 () Bool)

(assert (=> b!6002328 m!6880334))

(assert (=> b!6002326 m!6879592))

(declare-fun m!6880336 () Bool)

(assert (=> d!1882108 m!6880336))

(declare-fun m!6880338 () Bool)

(assert (=> d!1882108 m!6880338))

(assert (=> b!6001435 d!1882108))

(declare-fun b!6002335 () Bool)

(declare-fun e!3668646 () (InoxSet Context!10794))

(declare-fun e!3668647 () (InoxSet Context!10794))

(assert (=> b!6002335 (= e!3668646 e!3668647)))

(declare-fun c!1072685 () Bool)

(assert (=> b!6002335 (= c!1072685 ((_ is Concat!24858) (regTwo!32538 r!7292)))))

(declare-fun b!6002336 () Bool)

(declare-fun e!3668644 () (InoxSet Context!10794))

(assert (=> b!6002336 (= e!3668644 (store ((as const (Array Context!10794 Bool)) false) lt!2319218 true))))

(declare-fun call!485263 () (InoxSet Context!10794))

(declare-fun call!485259 () List!64338)

(declare-fun bm!485254 () Bool)

(declare-fun c!1072686 () Bool)

(assert (=> bm!485254 (= call!485263 (derivationStepZipperDown!1263 (ite c!1072686 (regTwo!32539 (regTwo!32538 r!7292)) (regOne!32538 (regTwo!32538 r!7292))) (ite c!1072686 lt!2319218 (Context!10795 call!485259)) (h!70663 s!2326)))))

(declare-fun bm!485255 () Bool)

(declare-fun call!485261 () (InoxSet Context!10794))

(declare-fun call!485260 () (InoxSet Context!10794))

(assert (=> bm!485255 (= call!485261 call!485260)))

(declare-fun bm!485256 () Bool)

(declare-fun call!485262 () (InoxSet Context!10794))

(assert (=> bm!485256 (= call!485262 call!485261)))

(declare-fun b!6002337 () Bool)

(declare-fun e!3668645 () (InoxSet Context!10794))

(assert (=> b!6002337 (= e!3668645 ((_ map or) call!485260 call!485263))))

(declare-fun b!6002338 () Bool)

(declare-fun e!3668643 () (InoxSet Context!10794))

(assert (=> b!6002338 (= e!3668643 call!485262)))

(declare-fun bm!485257 () Bool)

(declare-fun c!1072687 () Bool)

(assert (=> bm!485257 (= call!485259 ($colon$colon!1898 (exprs!5897 lt!2319218) (ite (or c!1072687 c!1072685) (regTwo!32538 (regTwo!32538 r!7292)) (regTwo!32538 r!7292))))))

(declare-fun b!6002339 () Bool)

(declare-fun e!3668642 () Bool)

(assert (=> b!6002339 (= c!1072687 e!3668642)))

(declare-fun res!2505030 () Bool)

(assert (=> b!6002339 (=> (not res!2505030) (not e!3668642))))

(assert (=> b!6002339 (= res!2505030 ((_ is Concat!24858) (regTwo!32538 r!7292)))))

(assert (=> b!6002339 (= e!3668645 e!3668646)))

(declare-fun b!6002340 () Bool)

(assert (=> b!6002340 (= e!3668647 call!485262)))

(declare-fun b!6002341 () Bool)

(assert (=> b!6002341 (= e!3668644 e!3668645)))

(assert (=> b!6002341 (= c!1072686 ((_ is Union!16013) (regTwo!32538 r!7292)))))

(declare-fun b!6002342 () Bool)

(assert (=> b!6002342 (= e!3668643 ((as const (Array Context!10794 Bool)) false))))

(declare-fun bm!485258 () Bool)

(declare-fun call!485264 () List!64338)

(assert (=> bm!485258 (= call!485264 call!485259)))

(declare-fun d!1882110 () Bool)

(declare-fun c!1072683 () Bool)

(assert (=> d!1882110 (= c!1072683 (and ((_ is ElementMatch!16013) (regTwo!32538 r!7292)) (= (c!1072394 (regTwo!32538 r!7292)) (h!70663 s!2326))))))

(assert (=> d!1882110 (= (derivationStepZipperDown!1263 (regTwo!32538 r!7292) lt!2319218 (h!70663 s!2326)) e!3668644)))

(declare-fun b!6002343 () Bool)

(assert (=> b!6002343 (= e!3668642 (nullable!6008 (regOne!32538 (regTwo!32538 r!7292))))))

(declare-fun bm!485259 () Bool)

(assert (=> bm!485259 (= call!485260 (derivationStepZipperDown!1263 (ite c!1072686 (regOne!32539 (regTwo!32538 r!7292)) (ite c!1072687 (regTwo!32538 (regTwo!32538 r!7292)) (ite c!1072685 (regOne!32538 (regTwo!32538 r!7292)) (reg!16342 (regTwo!32538 r!7292))))) (ite (or c!1072686 c!1072687) lt!2319218 (Context!10795 call!485264)) (h!70663 s!2326)))))

(declare-fun b!6002344 () Bool)

(declare-fun c!1072684 () Bool)

(assert (=> b!6002344 (= c!1072684 ((_ is Star!16013) (regTwo!32538 r!7292)))))

(assert (=> b!6002344 (= e!3668647 e!3668643)))

(declare-fun b!6002345 () Bool)

(assert (=> b!6002345 (= e!3668646 ((_ map or) call!485263 call!485261))))

(assert (= (and d!1882110 c!1072683) b!6002336))

(assert (= (and d!1882110 (not c!1072683)) b!6002341))

(assert (= (and b!6002341 c!1072686) b!6002337))

(assert (= (and b!6002341 (not c!1072686)) b!6002339))

(assert (= (and b!6002339 res!2505030) b!6002343))

(assert (= (and b!6002339 c!1072687) b!6002345))

(assert (= (and b!6002339 (not c!1072687)) b!6002335))

(assert (= (and b!6002335 c!1072685) b!6002340))

(assert (= (and b!6002335 (not c!1072685)) b!6002344))

(assert (= (and b!6002344 c!1072684) b!6002338))

(assert (= (and b!6002344 (not c!1072684)) b!6002342))

(assert (= (or b!6002340 b!6002338) bm!485258))

(assert (= (or b!6002340 b!6002338) bm!485256))

(assert (= (or b!6002345 bm!485258) bm!485257))

(assert (= (or b!6002345 bm!485256) bm!485255))

(assert (= (or b!6002337 b!6002345) bm!485254))

(assert (= (or b!6002337 bm!485255) bm!485259))

(declare-fun m!6880340 () Bool)

(assert (=> bm!485257 m!6880340))

(assert (=> b!6002336 m!6880116))

(declare-fun m!6880342 () Bool)

(assert (=> b!6002343 m!6880342))

(declare-fun m!6880344 () Bool)

(assert (=> bm!485259 m!6880344))

(declare-fun m!6880346 () Bool)

(assert (=> bm!485254 m!6880346))

(assert (=> b!6001415 d!1882110))

(declare-fun bm!485260 () Bool)

(declare-fun call!485265 () (InoxSet Context!10794))

(assert (=> bm!485260 (= call!485265 (derivationStepZipperDown!1263 (h!70662 (exprs!5897 lt!2319226)) (Context!10795 (t!377761 (exprs!5897 lt!2319226))) (h!70663 s!2326)))))

(declare-fun b!6002346 () Bool)

(declare-fun e!3668649 () (InoxSet Context!10794))

(assert (=> b!6002346 (= e!3668649 ((as const (Array Context!10794 Bool)) false))))

(declare-fun b!6002347 () Bool)

(assert (=> b!6002347 (= e!3668649 call!485265)))

(declare-fun e!3668650 () (InoxSet Context!10794))

(declare-fun b!6002348 () Bool)

(assert (=> b!6002348 (= e!3668650 ((_ map or) call!485265 (derivationStepZipperUp!1189 (Context!10795 (t!377761 (exprs!5897 lt!2319226))) (h!70663 s!2326))))))

(declare-fun b!6002349 () Bool)

(declare-fun e!3668648 () Bool)

(assert (=> b!6002349 (= e!3668648 (nullable!6008 (h!70662 (exprs!5897 lt!2319226))))))

(declare-fun d!1882112 () Bool)

(declare-fun c!1072688 () Bool)

(assert (=> d!1882112 (= c!1072688 e!3668648)))

(declare-fun res!2505031 () Bool)

(assert (=> d!1882112 (=> (not res!2505031) (not e!3668648))))

(assert (=> d!1882112 (= res!2505031 ((_ is Cons!64214) (exprs!5897 lt!2319226)))))

(assert (=> d!1882112 (= (derivationStepZipperUp!1189 lt!2319226 (h!70663 s!2326)) e!3668650)))

(declare-fun b!6002350 () Bool)

(assert (=> b!6002350 (= e!3668650 e!3668649)))

(declare-fun c!1072689 () Bool)

(assert (=> b!6002350 (= c!1072689 ((_ is Cons!64214) (exprs!5897 lt!2319226)))))

(assert (= (and d!1882112 res!2505031) b!6002349))

(assert (= (and d!1882112 c!1072688) b!6002348))

(assert (= (and d!1882112 (not c!1072688)) b!6002350))

(assert (= (and b!6002350 c!1072689) b!6002347))

(assert (= (and b!6002350 (not c!1072689)) b!6002346))

(assert (= (or b!6002348 b!6002347) bm!485260))

(declare-fun m!6880348 () Bool)

(assert (=> bm!485260 m!6880348))

(declare-fun m!6880350 () Bool)

(assert (=> b!6002348 m!6880350))

(declare-fun m!6880352 () Bool)

(assert (=> b!6002349 m!6880352))

(assert (=> b!6001415 d!1882112))

(declare-fun b!6002351 () Bool)

(declare-fun e!3668655 () (InoxSet Context!10794))

(declare-fun e!3668656 () (InoxSet Context!10794))

(assert (=> b!6002351 (= e!3668655 e!3668656)))

(declare-fun c!1072692 () Bool)

(assert (=> b!6002351 (= c!1072692 ((_ is Concat!24858) (regOne!32538 r!7292)))))

(declare-fun b!6002352 () Bool)

(declare-fun e!3668653 () (InoxSet Context!10794))

(assert (=> b!6002352 (= e!3668653 (store ((as const (Array Context!10794 Bool)) false) lt!2319241 true))))

(declare-fun c!1072693 () Bool)

(declare-fun call!485266 () List!64338)

(declare-fun call!485270 () (InoxSet Context!10794))

(declare-fun bm!485261 () Bool)

(assert (=> bm!485261 (= call!485270 (derivationStepZipperDown!1263 (ite c!1072693 (regTwo!32539 (regOne!32538 r!7292)) (regOne!32538 (regOne!32538 r!7292))) (ite c!1072693 lt!2319241 (Context!10795 call!485266)) (h!70663 s!2326)))))

(declare-fun bm!485262 () Bool)

(declare-fun call!485268 () (InoxSet Context!10794))

(declare-fun call!485267 () (InoxSet Context!10794))

(assert (=> bm!485262 (= call!485268 call!485267)))

(declare-fun bm!485263 () Bool)

(declare-fun call!485269 () (InoxSet Context!10794))

(assert (=> bm!485263 (= call!485269 call!485268)))

(declare-fun b!6002353 () Bool)

(declare-fun e!3668654 () (InoxSet Context!10794))

(assert (=> b!6002353 (= e!3668654 ((_ map or) call!485267 call!485270))))

(declare-fun b!6002354 () Bool)

(declare-fun e!3668652 () (InoxSet Context!10794))

(assert (=> b!6002354 (= e!3668652 call!485269)))

(declare-fun c!1072694 () Bool)

(declare-fun bm!485264 () Bool)

(assert (=> bm!485264 (= call!485266 ($colon$colon!1898 (exprs!5897 lt!2319241) (ite (or c!1072694 c!1072692) (regTwo!32538 (regOne!32538 r!7292)) (regOne!32538 r!7292))))))

(declare-fun b!6002355 () Bool)

(declare-fun e!3668651 () Bool)

(assert (=> b!6002355 (= c!1072694 e!3668651)))

(declare-fun res!2505032 () Bool)

(assert (=> b!6002355 (=> (not res!2505032) (not e!3668651))))

(assert (=> b!6002355 (= res!2505032 ((_ is Concat!24858) (regOne!32538 r!7292)))))

(assert (=> b!6002355 (= e!3668654 e!3668655)))

(declare-fun b!6002356 () Bool)

(assert (=> b!6002356 (= e!3668656 call!485269)))

(declare-fun b!6002357 () Bool)

(assert (=> b!6002357 (= e!3668653 e!3668654)))

(assert (=> b!6002357 (= c!1072693 ((_ is Union!16013) (regOne!32538 r!7292)))))

(declare-fun b!6002358 () Bool)

(assert (=> b!6002358 (= e!3668652 ((as const (Array Context!10794 Bool)) false))))

(declare-fun bm!485265 () Bool)

(declare-fun call!485271 () List!64338)

(assert (=> bm!485265 (= call!485271 call!485266)))

(declare-fun d!1882114 () Bool)

(declare-fun c!1072690 () Bool)

(assert (=> d!1882114 (= c!1072690 (and ((_ is ElementMatch!16013) (regOne!32538 r!7292)) (= (c!1072394 (regOne!32538 r!7292)) (h!70663 s!2326))))))

(assert (=> d!1882114 (= (derivationStepZipperDown!1263 (regOne!32538 r!7292) lt!2319241 (h!70663 s!2326)) e!3668653)))

(declare-fun b!6002359 () Bool)

(assert (=> b!6002359 (= e!3668651 (nullable!6008 (regOne!32538 (regOne!32538 r!7292))))))

(declare-fun bm!485266 () Bool)

(assert (=> bm!485266 (= call!485267 (derivationStepZipperDown!1263 (ite c!1072693 (regOne!32539 (regOne!32538 r!7292)) (ite c!1072694 (regTwo!32538 (regOne!32538 r!7292)) (ite c!1072692 (regOne!32538 (regOne!32538 r!7292)) (reg!16342 (regOne!32538 r!7292))))) (ite (or c!1072693 c!1072694) lt!2319241 (Context!10795 call!485271)) (h!70663 s!2326)))))

(declare-fun b!6002360 () Bool)

(declare-fun c!1072691 () Bool)

(assert (=> b!6002360 (= c!1072691 ((_ is Star!16013) (regOne!32538 r!7292)))))

(assert (=> b!6002360 (= e!3668656 e!3668652)))

(declare-fun b!6002361 () Bool)

(assert (=> b!6002361 (= e!3668655 ((_ map or) call!485270 call!485268))))

(assert (= (and d!1882114 c!1072690) b!6002352))

(assert (= (and d!1882114 (not c!1072690)) b!6002357))

(assert (= (and b!6002357 c!1072693) b!6002353))

(assert (= (and b!6002357 (not c!1072693)) b!6002355))

(assert (= (and b!6002355 res!2505032) b!6002359))

(assert (= (and b!6002355 c!1072694) b!6002361))

(assert (= (and b!6002355 (not c!1072694)) b!6002351))

(assert (= (and b!6002351 c!1072692) b!6002356))

(assert (= (and b!6002351 (not c!1072692)) b!6002360))

(assert (= (and b!6002360 c!1072691) b!6002354))

(assert (= (and b!6002360 (not c!1072691)) b!6002358))

(assert (= (or b!6002356 b!6002354) bm!485265))

(assert (= (or b!6002356 b!6002354) bm!485263))

(assert (= (or b!6002361 bm!485265) bm!485264))

(assert (= (or b!6002361 bm!485263) bm!485262))

(assert (= (or b!6002353 b!6002361) bm!485261))

(assert (= (or b!6002353 bm!485262) bm!485266))

(declare-fun m!6880354 () Bool)

(assert (=> bm!485264 m!6880354))

(assert (=> b!6002352 m!6879614))

(declare-fun m!6880356 () Bool)

(assert (=> b!6002359 m!6880356))

(declare-fun m!6880358 () Bool)

(assert (=> bm!485266 m!6880358))

(declare-fun m!6880360 () Bool)

(assert (=> bm!485261 m!6880360))

(assert (=> b!6001415 d!1882114))

(declare-fun d!1882116 () Bool)

(assert (=> d!1882116 (= (flatMap!1526 lt!2319225 lambda!327639) (dynLambda!25177 lambda!327639 lt!2319226))))

(declare-fun lt!2319400 () Unit!157297)

(assert (=> d!1882116 (= lt!2319400 (choose!45031 lt!2319225 lt!2319226 lambda!327639))))

(assert (=> d!1882116 (= lt!2319225 (store ((as const (Array Context!10794 Bool)) false) lt!2319226 true))))

(assert (=> d!1882116 (= (lemmaFlatMapOnSingletonSet!1052 lt!2319225 lt!2319226 lambda!327639) lt!2319400)))

(declare-fun b_lambda!226891 () Bool)

(assert (=> (not b_lambda!226891) (not d!1882116)))

(declare-fun bs!1455499 () Bool)

(assert (= bs!1455499 d!1882116))

(assert (=> bs!1455499 m!6879634))

(declare-fun m!6880362 () Bool)

(assert (=> bs!1455499 m!6880362))

(declare-fun m!6880364 () Bool)

(assert (=> bs!1455499 m!6880364))

(assert (=> bs!1455499 m!6879626))

(assert (=> b!6001415 d!1882116))

(declare-fun d!1882118 () Bool)

(assert (=> d!1882118 (= (flatMap!1526 lt!2319240 lambda!327639) (dynLambda!25177 lambda!327639 lt!2319241))))

(declare-fun lt!2319401 () Unit!157297)

(assert (=> d!1882118 (= lt!2319401 (choose!45031 lt!2319240 lt!2319241 lambda!327639))))

(assert (=> d!1882118 (= lt!2319240 (store ((as const (Array Context!10794 Bool)) false) lt!2319241 true))))

(assert (=> d!1882118 (= (lemmaFlatMapOnSingletonSet!1052 lt!2319240 lt!2319241 lambda!327639) lt!2319401)))

(declare-fun b_lambda!226893 () Bool)

(assert (=> (not b_lambda!226893) (not d!1882118)))

(declare-fun bs!1455500 () Bool)

(assert (= bs!1455500 d!1882118))

(assert (=> bs!1455500 m!6879630))

(declare-fun m!6880366 () Bool)

(assert (=> bs!1455500 m!6880366))

(declare-fun m!6880368 () Bool)

(assert (=> bs!1455500 m!6880368))

(assert (=> bs!1455500 m!6879614))

(assert (=> b!6001415 d!1882118))

(declare-fun d!1882120 () Bool)

(assert (=> d!1882120 (= (flatMap!1526 lt!2319240 lambda!327639) (choose!45030 lt!2319240 lambda!327639))))

(declare-fun bs!1455501 () Bool)

(assert (= bs!1455501 d!1882120))

(declare-fun m!6880370 () Bool)

(assert (=> bs!1455501 m!6880370))

(assert (=> b!6001415 d!1882120))

(declare-fun d!1882122 () Bool)

(assert (=> d!1882122 (= (flatMap!1526 lt!2319225 lambda!327639) (choose!45030 lt!2319225 lambda!327639))))

(declare-fun bs!1455502 () Bool)

(assert (= bs!1455502 d!1882122))

(declare-fun m!6880372 () Bool)

(assert (=> bs!1455502 m!6880372))

(assert (=> b!6001415 d!1882122))

(declare-fun d!1882124 () Bool)

(declare-fun nullableFct!1978 (Regex!16013) Bool)

(assert (=> d!1882124 (= (nullable!6008 (regOne!32538 r!7292)) (nullableFct!1978 (regOne!32538 r!7292)))))

(declare-fun bs!1455503 () Bool)

(assert (= bs!1455503 d!1882124))

(declare-fun m!6880374 () Bool)

(assert (=> bs!1455503 m!6880374))

(assert (=> b!6001415 d!1882124))

(declare-fun bm!485267 () Bool)

(declare-fun call!485272 () (InoxSet Context!10794))

(assert (=> bm!485267 (= call!485272 (derivationStepZipperDown!1263 (h!70662 (exprs!5897 lt!2319241)) (Context!10795 (t!377761 (exprs!5897 lt!2319241))) (h!70663 s!2326)))))

(declare-fun b!6002362 () Bool)

(declare-fun e!3668658 () (InoxSet Context!10794))

(assert (=> b!6002362 (= e!3668658 ((as const (Array Context!10794 Bool)) false))))

(declare-fun b!6002363 () Bool)

(assert (=> b!6002363 (= e!3668658 call!485272)))

(declare-fun e!3668659 () (InoxSet Context!10794))

(declare-fun b!6002364 () Bool)

(assert (=> b!6002364 (= e!3668659 ((_ map or) call!485272 (derivationStepZipperUp!1189 (Context!10795 (t!377761 (exprs!5897 lt!2319241))) (h!70663 s!2326))))))

(declare-fun b!6002365 () Bool)

(declare-fun e!3668657 () Bool)

(assert (=> b!6002365 (= e!3668657 (nullable!6008 (h!70662 (exprs!5897 lt!2319241))))))

(declare-fun d!1882126 () Bool)

(declare-fun c!1072695 () Bool)

(assert (=> d!1882126 (= c!1072695 e!3668657)))

(declare-fun res!2505033 () Bool)

(assert (=> d!1882126 (=> (not res!2505033) (not e!3668657))))

(assert (=> d!1882126 (= res!2505033 ((_ is Cons!64214) (exprs!5897 lt!2319241)))))

(assert (=> d!1882126 (= (derivationStepZipperUp!1189 lt!2319241 (h!70663 s!2326)) e!3668659)))

(declare-fun b!6002366 () Bool)

(assert (=> b!6002366 (= e!3668659 e!3668658)))

(declare-fun c!1072696 () Bool)

(assert (=> b!6002366 (= c!1072696 ((_ is Cons!64214) (exprs!5897 lt!2319241)))))

(assert (= (and d!1882126 res!2505033) b!6002365))

(assert (= (and d!1882126 c!1072695) b!6002364))

(assert (= (and d!1882126 (not c!1072695)) b!6002366))

(assert (= (and b!6002366 c!1072696) b!6002363))

(assert (= (and b!6002366 (not c!1072696)) b!6002362))

(assert (= (or b!6002364 b!6002363) bm!485267))

(declare-fun m!6880376 () Bool)

(assert (=> bm!485267 m!6880376))

(declare-fun m!6880378 () Bool)

(assert (=> b!6002364 m!6880378))

(declare-fun m!6880380 () Bool)

(assert (=> b!6002365 m!6880380))

(assert (=> b!6001415 d!1882126))

(declare-fun b!6002373 () Bool)

(assert (=> b!6002373 true))

(declare-fun bs!1455504 () Bool)

(declare-fun b!6002375 () Bool)

(assert (= bs!1455504 (and b!6002375 b!6002373)))

(declare-fun lt!2319411 () Int)

(declare-fun lambda!327748 () Int)

(declare-fun lt!2319410 () Int)

(declare-fun lambda!327749 () Int)

(assert (=> bs!1455504 (= (= lt!2319410 lt!2319411) (= lambda!327749 lambda!327748))))

(assert (=> b!6002375 true))

(declare-fun d!1882128 () Bool)

(declare-fun e!3668664 () Bool)

(assert (=> d!1882128 e!3668664))

(declare-fun res!2505036 () Bool)

(assert (=> d!1882128 (=> (not res!2505036) (not e!3668664))))

(assert (=> d!1882128 (= res!2505036 (>= lt!2319410 0))))

(declare-fun e!3668665 () Int)

(assert (=> d!1882128 (= lt!2319410 e!3668665)))

(declare-fun c!1072705 () Bool)

(assert (=> d!1882128 (= c!1072705 ((_ is Cons!64216) (Cons!64216 lt!2319213 Nil!64216)))))

(assert (=> d!1882128 (= (zipperDepth!262 (Cons!64216 lt!2319213 Nil!64216)) lt!2319410)))

(assert (=> b!6002373 (= e!3668665 lt!2319411)))

(assert (=> b!6002373 (= lt!2319411 (maxBigInt!0 (contextDepth!161 (h!70664 (Cons!64216 lt!2319213 Nil!64216))) (zipperDepth!262 (t!377763 (Cons!64216 lt!2319213 Nil!64216)))))))

(declare-fun lt!2319412 () Unit!157297)

(declare-fun lambda!327747 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!145 (List!64340 Int Int Int) Unit!157297)

(assert (=> b!6002373 (= lt!2319412 (lemmaForallContextDepthBiggerThanTransitive!145 (t!377763 (Cons!64216 lt!2319213 Nil!64216)) lt!2319411 (zipperDepth!262 (t!377763 (Cons!64216 lt!2319213 Nil!64216))) lambda!327747))))

(declare-fun forall!15114 (List!64340 Int) Bool)

(assert (=> b!6002373 (forall!15114 (t!377763 (Cons!64216 lt!2319213 Nil!64216)) lambda!327748)))

(declare-fun lt!2319413 () Unit!157297)

(assert (=> b!6002373 (= lt!2319413 lt!2319412)))

(declare-fun b!6002374 () Bool)

(assert (=> b!6002374 (= e!3668665 0)))

(assert (=> b!6002375 (= e!3668664 (forall!15114 (Cons!64216 lt!2319213 Nil!64216) lambda!327749))))

(assert (= (and d!1882128 c!1072705) b!6002373))

(assert (= (and d!1882128 (not c!1072705)) b!6002374))

(assert (= (and d!1882128 res!2505036) b!6002375))

(declare-fun m!6880382 () Bool)

(assert (=> b!6002373 m!6880382))

(declare-fun m!6880384 () Bool)

(assert (=> b!6002373 m!6880384))

(declare-fun m!6880386 () Bool)

(assert (=> b!6002373 m!6880386))

(assert (=> b!6002373 m!6880382))

(assert (=> b!6002373 m!6880386))

(assert (=> b!6002373 m!6880382))

(declare-fun m!6880388 () Bool)

(assert (=> b!6002373 m!6880388))

(declare-fun m!6880390 () Bool)

(assert (=> b!6002373 m!6880390))

(declare-fun m!6880392 () Bool)

(assert (=> b!6002375 m!6880392))

(assert (=> b!6001418 d!1882128))

(declare-fun bs!1455505 () Bool)

(declare-fun b!6002378 () Bool)

(assert (= bs!1455505 (and b!6002378 b!6002373)))

(declare-fun lambda!327750 () Int)

(assert (=> bs!1455505 (= lambda!327750 lambda!327747)))

(declare-fun lambda!327751 () Int)

(declare-fun lt!2319415 () Int)

(assert (=> bs!1455505 (= (= lt!2319415 lt!2319411) (= lambda!327751 lambda!327748))))

(declare-fun bs!1455506 () Bool)

(assert (= bs!1455506 (and b!6002378 b!6002375)))

(assert (=> bs!1455506 (= (= lt!2319415 lt!2319410) (= lambda!327751 lambda!327749))))

(assert (=> b!6002378 true))

(declare-fun bs!1455507 () Bool)

(declare-fun b!6002380 () Bool)

(assert (= bs!1455507 (and b!6002380 b!6002373)))

(declare-fun lambda!327752 () Int)

(declare-fun lt!2319414 () Int)

(assert (=> bs!1455507 (= (= lt!2319414 lt!2319411) (= lambda!327752 lambda!327748))))

(declare-fun bs!1455508 () Bool)

(assert (= bs!1455508 (and b!6002380 b!6002375)))

(assert (=> bs!1455508 (= (= lt!2319414 lt!2319410) (= lambda!327752 lambda!327749))))

(declare-fun bs!1455509 () Bool)

(assert (= bs!1455509 (and b!6002380 b!6002378)))

(assert (=> bs!1455509 (= (= lt!2319414 lt!2319415) (= lambda!327752 lambda!327751))))

(assert (=> b!6002380 true))

(declare-fun d!1882130 () Bool)

(declare-fun e!3668666 () Bool)

(assert (=> d!1882130 e!3668666))

(declare-fun res!2505037 () Bool)

(assert (=> d!1882130 (=> (not res!2505037) (not e!3668666))))

(assert (=> d!1882130 (= res!2505037 (>= lt!2319414 0))))

(declare-fun e!3668667 () Int)

(assert (=> d!1882130 (= lt!2319414 e!3668667)))

(declare-fun c!1072706 () Bool)

(assert (=> d!1882130 (= c!1072706 ((_ is Cons!64216) lt!2319212))))

(assert (=> d!1882130 (= (zipperDepth!262 lt!2319212) lt!2319414)))

(assert (=> b!6002378 (= e!3668667 lt!2319415)))

(assert (=> b!6002378 (= lt!2319415 (maxBigInt!0 (contextDepth!161 (h!70664 lt!2319212)) (zipperDepth!262 (t!377763 lt!2319212))))))

(declare-fun lt!2319416 () Unit!157297)

(assert (=> b!6002378 (= lt!2319416 (lemmaForallContextDepthBiggerThanTransitive!145 (t!377763 lt!2319212) lt!2319415 (zipperDepth!262 (t!377763 lt!2319212)) lambda!327750))))

(assert (=> b!6002378 (forall!15114 (t!377763 lt!2319212) lambda!327751)))

(declare-fun lt!2319417 () Unit!157297)

(assert (=> b!6002378 (= lt!2319417 lt!2319416)))

(declare-fun b!6002379 () Bool)

(assert (=> b!6002379 (= e!3668667 0)))

(assert (=> b!6002380 (= e!3668666 (forall!15114 lt!2319212 lambda!327752))))

(assert (= (and d!1882130 c!1072706) b!6002378))

(assert (= (and d!1882130 (not c!1072706)) b!6002379))

(assert (= (and d!1882130 res!2505037) b!6002380))

(declare-fun m!6880394 () Bool)

(assert (=> b!6002378 m!6880394))

(declare-fun m!6880396 () Bool)

(assert (=> b!6002378 m!6880396))

(declare-fun m!6880398 () Bool)

(assert (=> b!6002378 m!6880398))

(assert (=> b!6002378 m!6880394))

(assert (=> b!6002378 m!6880398))

(assert (=> b!6002378 m!6880394))

(declare-fun m!6880400 () Bool)

(assert (=> b!6002378 m!6880400))

(declare-fun m!6880402 () Bool)

(assert (=> b!6002378 m!6880402))

(declare-fun m!6880404 () Bool)

(assert (=> b!6002380 m!6880404))

(assert (=> b!6001418 d!1882130))

(declare-fun b!6002381 () Bool)

(declare-fun e!3668671 () Bool)

(declare-fun call!485274 () Bool)

(assert (=> b!6002381 (= e!3668671 call!485274)))

(declare-fun call!485273 () Bool)

(declare-fun c!1072707 () Bool)

(declare-fun bm!485269 () Bool)

(declare-fun c!1072708 () Bool)

(assert (=> bm!485269 (= call!485273 (validRegex!7749 (ite c!1072708 (reg!16342 (regTwo!32538 r!7292)) (ite c!1072707 (regOne!32539 (regTwo!32538 r!7292)) (regOne!32538 (regTwo!32538 r!7292))))))))

(declare-fun b!6002382 () Bool)

(declare-fun e!3668668 () Bool)

(declare-fun e!3668670 () Bool)

(assert (=> b!6002382 (= e!3668668 e!3668670)))

(assert (=> b!6002382 (= c!1072707 ((_ is Union!16013) (regTwo!32538 r!7292)))))

(declare-fun b!6002383 () Bool)

(declare-fun e!3668669 () Bool)

(assert (=> b!6002383 (= e!3668669 call!485274)))

(declare-fun bm!485270 () Bool)

(assert (=> bm!485270 (= call!485274 (validRegex!7749 (ite c!1072707 (regTwo!32539 (regTwo!32538 r!7292)) (regTwo!32538 (regTwo!32538 r!7292)))))))

(declare-fun b!6002384 () Bool)

(declare-fun res!2505040 () Bool)

(assert (=> b!6002384 (=> (not res!2505040) (not e!3668669))))

(declare-fun call!485275 () Bool)

(assert (=> b!6002384 (= res!2505040 call!485275)))

(assert (=> b!6002384 (= e!3668670 e!3668669)))

(declare-fun b!6002385 () Bool)

(declare-fun e!3668673 () Bool)

(assert (=> b!6002385 (= e!3668668 e!3668673)))

(declare-fun res!2505039 () Bool)

(assert (=> b!6002385 (= res!2505039 (not (nullable!6008 (reg!16342 (regTwo!32538 r!7292)))))))

(assert (=> b!6002385 (=> (not res!2505039) (not e!3668673))))

(declare-fun b!6002386 () Bool)

(declare-fun e!3668672 () Bool)

(assert (=> b!6002386 (= e!3668672 e!3668671)))

(declare-fun res!2505042 () Bool)

(assert (=> b!6002386 (=> (not res!2505042) (not e!3668671))))

(assert (=> b!6002386 (= res!2505042 call!485275)))

(declare-fun b!6002387 () Bool)

(declare-fun e!3668674 () Bool)

(assert (=> b!6002387 (= e!3668674 e!3668668)))

(assert (=> b!6002387 (= c!1072708 ((_ is Star!16013) (regTwo!32538 r!7292)))))

(declare-fun b!6002388 () Bool)

(assert (=> b!6002388 (= e!3668673 call!485273)))

(declare-fun b!6002389 () Bool)

(declare-fun res!2505038 () Bool)

(assert (=> b!6002389 (=> res!2505038 e!3668672)))

(assert (=> b!6002389 (= res!2505038 (not ((_ is Concat!24858) (regTwo!32538 r!7292))))))

(assert (=> b!6002389 (= e!3668670 e!3668672)))

(declare-fun d!1882132 () Bool)

(declare-fun res!2505041 () Bool)

(assert (=> d!1882132 (=> res!2505041 e!3668674)))

(assert (=> d!1882132 (= res!2505041 ((_ is ElementMatch!16013) (regTwo!32538 r!7292)))))

(assert (=> d!1882132 (= (validRegex!7749 (regTwo!32538 r!7292)) e!3668674)))

(declare-fun bm!485268 () Bool)

(assert (=> bm!485268 (= call!485275 call!485273)))

(assert (= (and d!1882132 (not res!2505041)) b!6002387))

(assert (= (and b!6002387 c!1072708) b!6002385))

(assert (= (and b!6002387 (not c!1072708)) b!6002382))

(assert (= (and b!6002385 res!2505039) b!6002388))

(assert (= (and b!6002382 c!1072707) b!6002384))

(assert (= (and b!6002382 (not c!1072707)) b!6002389))

(assert (= (and b!6002384 res!2505040) b!6002383))

(assert (= (and b!6002389 (not res!2505038)) b!6002386))

(assert (= (and b!6002386 res!2505042) b!6002381))

(assert (= (or b!6002383 b!6002381) bm!485270))

(assert (= (or b!6002384 b!6002386) bm!485268))

(assert (= (or b!6002388 bm!485268) bm!485269))

(declare-fun m!6880406 () Bool)

(assert (=> bm!485269 m!6880406))

(declare-fun m!6880408 () Bool)

(assert (=> bm!485270 m!6880408))

(declare-fun m!6880410 () Bool)

(assert (=> b!6002385 m!6880410))

(assert (=> b!6001419 d!1882132))

(declare-fun b!6002390 () Bool)

(declare-fun res!2505044 () Bool)

(declare-fun e!3668679 () Bool)

(assert (=> b!6002390 (=> (not res!2505044) (not e!3668679))))

(assert (=> b!6002390 (= res!2505044 (isEmpty!36112 (tail!11648 s!2326)))))

(declare-fun b!6002391 () Bool)

(declare-fun e!3668677 () Bool)

(declare-fun e!3668678 () Bool)

(assert (=> b!6002391 (= e!3668677 e!3668678)))

(declare-fun res!2505047 () Bool)

(assert (=> b!6002391 (=> (not res!2505047) (not e!3668678))))

(declare-fun lt!2319418 () Bool)

(assert (=> b!6002391 (= res!2505047 (not lt!2319418))))

(declare-fun b!6002392 () Bool)

(declare-fun res!2505043 () Bool)

(assert (=> b!6002392 (=> res!2505043 e!3668677)))

(assert (=> b!6002392 (= res!2505043 (not ((_ is ElementMatch!16013) lt!2319227)))))

(declare-fun e!3668681 () Bool)

(assert (=> b!6002392 (= e!3668681 e!3668677)))

(declare-fun b!6002393 () Bool)

(declare-fun e!3668675 () Bool)

(assert (=> b!6002393 (= e!3668675 (nullable!6008 lt!2319227))))

(declare-fun bm!485271 () Bool)

(declare-fun call!485276 () Bool)

(assert (=> bm!485271 (= call!485276 (isEmpty!36112 s!2326))))

(declare-fun b!6002394 () Bool)

(declare-fun res!2505048 () Bool)

(assert (=> b!6002394 (=> (not res!2505048) (not e!3668679))))

(assert (=> b!6002394 (= res!2505048 (not call!485276))))

(declare-fun d!1882134 () Bool)

(declare-fun e!3668676 () Bool)

(assert (=> d!1882134 e!3668676))

(declare-fun c!1072711 () Bool)

(assert (=> d!1882134 (= c!1072711 ((_ is EmptyExpr!16013) lt!2319227))))

(assert (=> d!1882134 (= lt!2319418 e!3668675)))

(declare-fun c!1072710 () Bool)

(assert (=> d!1882134 (= c!1072710 (isEmpty!36112 s!2326))))

(assert (=> d!1882134 (validRegex!7749 lt!2319227)))

(assert (=> d!1882134 (= (matchR!8196 lt!2319227 s!2326) lt!2319418)))

(declare-fun b!6002395 () Bool)

(assert (=> b!6002395 (= e!3668676 e!3668681)))

(declare-fun c!1072709 () Bool)

(assert (=> b!6002395 (= c!1072709 ((_ is EmptyLang!16013) lt!2319227))))

(declare-fun b!6002396 () Bool)

(declare-fun e!3668680 () Bool)

(assert (=> b!6002396 (= e!3668678 e!3668680)))

(declare-fun res!2505050 () Bool)

(assert (=> b!6002396 (=> res!2505050 e!3668680)))

(assert (=> b!6002396 (= res!2505050 call!485276)))

(declare-fun b!6002397 () Bool)

(assert (=> b!6002397 (= e!3668680 (not (= (head!12563 s!2326) (c!1072394 lt!2319227))))))

(declare-fun b!6002398 () Bool)

(assert (=> b!6002398 (= e!3668676 (= lt!2319418 call!485276))))

(declare-fun b!6002399 () Bool)

(declare-fun res!2505045 () Bool)

(assert (=> b!6002399 (=> res!2505045 e!3668677)))

(assert (=> b!6002399 (= res!2505045 e!3668679)))

(declare-fun res!2505046 () Bool)

(assert (=> b!6002399 (=> (not res!2505046) (not e!3668679))))

(assert (=> b!6002399 (= res!2505046 lt!2319418)))

(declare-fun b!6002400 () Bool)

(assert (=> b!6002400 (= e!3668675 (matchR!8196 (derivativeStep!4742 lt!2319227 (head!12563 s!2326)) (tail!11648 s!2326)))))

(declare-fun b!6002401 () Bool)

(assert (=> b!6002401 (= e!3668681 (not lt!2319418))))

(declare-fun b!6002402 () Bool)

(assert (=> b!6002402 (= e!3668679 (= (head!12563 s!2326) (c!1072394 lt!2319227)))))

(declare-fun b!6002403 () Bool)

(declare-fun res!2505049 () Bool)

(assert (=> b!6002403 (=> res!2505049 e!3668680)))

(assert (=> b!6002403 (= res!2505049 (not (isEmpty!36112 (tail!11648 s!2326))))))

(assert (= (and d!1882134 c!1072710) b!6002393))

(assert (= (and d!1882134 (not c!1072710)) b!6002400))

(assert (= (and d!1882134 c!1072711) b!6002398))

(assert (= (and d!1882134 (not c!1072711)) b!6002395))

(assert (= (and b!6002395 c!1072709) b!6002401))

(assert (= (and b!6002395 (not c!1072709)) b!6002392))

(assert (= (and b!6002392 (not res!2505043)) b!6002399))

(assert (= (and b!6002399 res!2505046) b!6002394))

(assert (= (and b!6002394 res!2505048) b!6002390))

(assert (= (and b!6002390 res!2505044) b!6002402))

(assert (= (and b!6002399 (not res!2505045)) b!6002391))

(assert (= (and b!6002391 res!2505047) b!6002396))

(assert (= (and b!6002396 (not res!2505050)) b!6002403))

(assert (= (and b!6002403 (not res!2505049)) b!6002397))

(assert (= (or b!6002398 b!6002394 b!6002396) bm!485271))

(assert (=> b!6002402 m!6880244))

(assert (=> d!1882134 m!6880240))

(declare-fun m!6880412 () Bool)

(assert (=> d!1882134 m!6880412))

(assert (=> b!6002403 m!6880248))

(assert (=> b!6002403 m!6880248))

(assert (=> b!6002403 m!6880310))

(assert (=> bm!485271 m!6880240))

(assert (=> b!6002390 m!6880248))

(assert (=> b!6002390 m!6880248))

(assert (=> b!6002390 m!6880310))

(assert (=> b!6002400 m!6880244))

(assert (=> b!6002400 m!6880244))

(declare-fun m!6880414 () Bool)

(assert (=> b!6002400 m!6880414))

(assert (=> b!6002400 m!6880248))

(assert (=> b!6002400 m!6880414))

(assert (=> b!6002400 m!6880248))

(declare-fun m!6880416 () Bool)

(assert (=> b!6002400 m!6880416))

(assert (=> b!6002397 m!6880244))

(declare-fun m!6880418 () Bool)

(assert (=> b!6002393 m!6880418))

(assert (=> b!6001419 d!1882134))

(declare-fun d!1882136 () Bool)

(assert (=> d!1882136 (= (matchR!8196 lt!2319227 s!2326) (matchZipper!2049 lt!2319225 s!2326))))

(declare-fun lt!2319421 () Unit!157297)

(declare-fun choose!45039 ((InoxSet Context!10794) List!64340 Regex!16013 List!64339) Unit!157297)

(assert (=> d!1882136 (= lt!2319421 (choose!45039 lt!2319225 lt!2319212 lt!2319227 s!2326))))

(assert (=> d!1882136 (validRegex!7749 lt!2319227)))

(assert (=> d!1882136 (= (theoremZipperRegexEquiv!705 lt!2319225 lt!2319212 lt!2319227 s!2326) lt!2319421)))

(declare-fun bs!1455510 () Bool)

(assert (= bs!1455510 d!1882136))

(assert (=> bs!1455510 m!6879690))

(assert (=> bs!1455510 m!6879678))

(declare-fun m!6880420 () Bool)

(assert (=> bs!1455510 m!6880420))

(assert (=> bs!1455510 m!6880412))

(assert (=> b!6001419 d!1882136))

(declare-fun bs!1455511 () Bool)

(declare-fun b!6002404 () Bool)

(assert (= bs!1455511 (and b!6002404 b!6002373)))

(declare-fun lambda!327753 () Int)

(assert (=> bs!1455511 (= lambda!327753 lambda!327747)))

(declare-fun bs!1455512 () Bool)

(assert (= bs!1455512 (and b!6002404 b!6002378)))

(assert (=> bs!1455512 (= lambda!327753 lambda!327750)))

(declare-fun lambda!327754 () Int)

(declare-fun lt!2319423 () Int)

(assert (=> bs!1455511 (= (= lt!2319423 lt!2319411) (= lambda!327754 lambda!327748))))

(declare-fun bs!1455513 () Bool)

(assert (= bs!1455513 (and b!6002404 b!6002375)))

(assert (=> bs!1455513 (= (= lt!2319423 lt!2319410) (= lambda!327754 lambda!327749))))

(assert (=> bs!1455512 (= (= lt!2319423 lt!2319415) (= lambda!327754 lambda!327751))))

(declare-fun bs!1455514 () Bool)

(assert (= bs!1455514 (and b!6002404 b!6002380)))

(assert (=> bs!1455514 (= (= lt!2319423 lt!2319414) (= lambda!327754 lambda!327752))))

(assert (=> b!6002404 true))

(declare-fun bs!1455515 () Bool)

(declare-fun b!6002406 () Bool)

(assert (= bs!1455515 (and b!6002406 b!6002380)))

(declare-fun lt!2319422 () Int)

(declare-fun lambda!327755 () Int)

(assert (=> bs!1455515 (= (= lt!2319422 lt!2319414) (= lambda!327755 lambda!327752))))

(declare-fun bs!1455516 () Bool)

(assert (= bs!1455516 (and b!6002406 b!6002378)))

(assert (=> bs!1455516 (= (= lt!2319422 lt!2319415) (= lambda!327755 lambda!327751))))

(declare-fun bs!1455517 () Bool)

(assert (= bs!1455517 (and b!6002406 b!6002404)))

(assert (=> bs!1455517 (= (= lt!2319422 lt!2319423) (= lambda!327755 lambda!327754))))

(declare-fun bs!1455518 () Bool)

(assert (= bs!1455518 (and b!6002406 b!6002375)))

(assert (=> bs!1455518 (= (= lt!2319422 lt!2319410) (= lambda!327755 lambda!327749))))

(declare-fun bs!1455519 () Bool)

(assert (= bs!1455519 (and b!6002406 b!6002373)))

(assert (=> bs!1455519 (= (= lt!2319422 lt!2319411) (= lambda!327755 lambda!327748))))

(assert (=> b!6002406 true))

(declare-fun d!1882138 () Bool)

(declare-fun e!3668682 () Bool)

(assert (=> d!1882138 e!3668682))

(declare-fun res!2505051 () Bool)

(assert (=> d!1882138 (=> (not res!2505051) (not e!3668682))))

(assert (=> d!1882138 (= res!2505051 (>= lt!2319422 0))))

(declare-fun e!3668683 () Int)

(assert (=> d!1882138 (= lt!2319422 e!3668683)))

(declare-fun c!1072712 () Bool)

(assert (=> d!1882138 (= c!1072712 ((_ is Cons!64216) (Cons!64216 lt!2319241 Nil!64216)))))

(assert (=> d!1882138 (= (zipperDepth!262 (Cons!64216 lt!2319241 Nil!64216)) lt!2319422)))

(assert (=> b!6002404 (= e!3668683 lt!2319423)))

(assert (=> b!6002404 (= lt!2319423 (maxBigInt!0 (contextDepth!161 (h!70664 (Cons!64216 lt!2319241 Nil!64216))) (zipperDepth!262 (t!377763 (Cons!64216 lt!2319241 Nil!64216)))))))

(declare-fun lt!2319424 () Unit!157297)

(assert (=> b!6002404 (= lt!2319424 (lemmaForallContextDepthBiggerThanTransitive!145 (t!377763 (Cons!64216 lt!2319241 Nil!64216)) lt!2319423 (zipperDepth!262 (t!377763 (Cons!64216 lt!2319241 Nil!64216))) lambda!327753))))

(assert (=> b!6002404 (forall!15114 (t!377763 (Cons!64216 lt!2319241 Nil!64216)) lambda!327754)))

(declare-fun lt!2319425 () Unit!157297)

(assert (=> b!6002404 (= lt!2319425 lt!2319424)))

(declare-fun b!6002405 () Bool)

(assert (=> b!6002405 (= e!3668683 0)))

(assert (=> b!6002406 (= e!3668682 (forall!15114 (Cons!64216 lt!2319241 Nil!64216) lambda!327755))))

(assert (= (and d!1882138 c!1072712) b!6002404))

(assert (= (and d!1882138 (not c!1072712)) b!6002405))

(assert (= (and d!1882138 res!2505051) b!6002406))

(declare-fun m!6880422 () Bool)

(assert (=> b!6002404 m!6880422))

(declare-fun m!6880424 () Bool)

(assert (=> b!6002404 m!6880424))

(declare-fun m!6880426 () Bool)

(assert (=> b!6002404 m!6880426))

(assert (=> b!6002404 m!6880422))

(assert (=> b!6002404 m!6880426))

(assert (=> b!6002404 m!6880422))

(declare-fun m!6880428 () Bool)

(assert (=> b!6002404 m!6880428))

(declare-fun m!6880430 () Bool)

(assert (=> b!6002404 m!6880430))

(declare-fun m!6880432 () Bool)

(assert (=> b!6002406 m!6880432))

(assert (=> b!6001417 d!1882138))

(declare-fun b!6002417 () Bool)

(declare-fun e!3668686 () Bool)

(assert (=> b!6002417 (= e!3668686 tp_is_empty!41279)))

(assert (=> b!6001422 (= tp!1669178 e!3668686)))

(declare-fun b!6002418 () Bool)

(declare-fun tp!1669254 () Bool)

(declare-fun tp!1669250 () Bool)

(assert (=> b!6002418 (= e!3668686 (and tp!1669254 tp!1669250))))

(declare-fun b!6002420 () Bool)

(declare-fun tp!1669252 () Bool)

(declare-fun tp!1669253 () Bool)

(assert (=> b!6002420 (= e!3668686 (and tp!1669252 tp!1669253))))

(declare-fun b!6002419 () Bool)

(declare-fun tp!1669251 () Bool)

(assert (=> b!6002419 (= e!3668686 tp!1669251)))

(assert (= (and b!6001422 ((_ is ElementMatch!16013) (regOne!32539 r!7292))) b!6002417))

(assert (= (and b!6001422 ((_ is Concat!24858) (regOne!32539 r!7292))) b!6002418))

(assert (= (and b!6001422 ((_ is Star!16013) (regOne!32539 r!7292))) b!6002419))

(assert (= (and b!6001422 ((_ is Union!16013) (regOne!32539 r!7292))) b!6002420))

(declare-fun b!6002421 () Bool)

(declare-fun e!3668687 () Bool)

(assert (=> b!6002421 (= e!3668687 tp_is_empty!41279)))

(assert (=> b!6001422 (= tp!1669174 e!3668687)))

(declare-fun b!6002422 () Bool)

(declare-fun tp!1669259 () Bool)

(declare-fun tp!1669255 () Bool)

(assert (=> b!6002422 (= e!3668687 (and tp!1669259 tp!1669255))))

(declare-fun b!6002424 () Bool)

(declare-fun tp!1669257 () Bool)

(declare-fun tp!1669258 () Bool)

(assert (=> b!6002424 (= e!3668687 (and tp!1669257 tp!1669258))))

(declare-fun b!6002423 () Bool)

(declare-fun tp!1669256 () Bool)

(assert (=> b!6002423 (= e!3668687 tp!1669256)))

(assert (= (and b!6001422 ((_ is ElementMatch!16013) (regTwo!32539 r!7292))) b!6002421))

(assert (= (and b!6001422 ((_ is Concat!24858) (regTwo!32539 r!7292))) b!6002422))

(assert (= (and b!6001422 ((_ is Star!16013) (regTwo!32539 r!7292))) b!6002423))

(assert (= (and b!6001422 ((_ is Union!16013) (regTwo!32539 r!7292))) b!6002424))

(declare-fun b!6002425 () Bool)

(declare-fun e!3668688 () Bool)

(assert (=> b!6002425 (= e!3668688 tp_is_empty!41279)))

(assert (=> b!6001412 (= tp!1669172 e!3668688)))

(declare-fun b!6002426 () Bool)

(declare-fun tp!1669264 () Bool)

(declare-fun tp!1669260 () Bool)

(assert (=> b!6002426 (= e!3668688 (and tp!1669264 tp!1669260))))

(declare-fun b!6002428 () Bool)

(declare-fun tp!1669262 () Bool)

(declare-fun tp!1669263 () Bool)

(assert (=> b!6002428 (= e!3668688 (and tp!1669262 tp!1669263))))

(declare-fun b!6002427 () Bool)

(declare-fun tp!1669261 () Bool)

(assert (=> b!6002427 (= e!3668688 tp!1669261)))

(assert (= (and b!6001412 ((_ is ElementMatch!16013) (regOne!32538 r!7292))) b!6002425))

(assert (= (and b!6001412 ((_ is Concat!24858) (regOne!32538 r!7292))) b!6002426))

(assert (= (and b!6001412 ((_ is Star!16013) (regOne!32538 r!7292))) b!6002427))

(assert (= (and b!6001412 ((_ is Union!16013) (regOne!32538 r!7292))) b!6002428))

(declare-fun b!6002429 () Bool)

(declare-fun e!3668689 () Bool)

(assert (=> b!6002429 (= e!3668689 tp_is_empty!41279)))

(assert (=> b!6001412 (= tp!1669181 e!3668689)))

(declare-fun b!6002430 () Bool)

(declare-fun tp!1669269 () Bool)

(declare-fun tp!1669265 () Bool)

(assert (=> b!6002430 (= e!3668689 (and tp!1669269 tp!1669265))))

(declare-fun b!6002432 () Bool)

(declare-fun tp!1669267 () Bool)

(declare-fun tp!1669268 () Bool)

(assert (=> b!6002432 (= e!3668689 (and tp!1669267 tp!1669268))))

(declare-fun b!6002431 () Bool)

(declare-fun tp!1669266 () Bool)

(assert (=> b!6002431 (= e!3668689 tp!1669266)))

(assert (= (and b!6001412 ((_ is ElementMatch!16013) (regTwo!32538 r!7292))) b!6002429))

(assert (= (and b!6001412 ((_ is Concat!24858) (regTwo!32538 r!7292))) b!6002430))

(assert (= (and b!6001412 ((_ is Star!16013) (regTwo!32538 r!7292))) b!6002431))

(assert (= (and b!6001412 ((_ is Union!16013) (regTwo!32538 r!7292))) b!6002432))

(declare-fun b!6002440 () Bool)

(declare-fun e!3668695 () Bool)

(declare-fun tp!1669274 () Bool)

(assert (=> b!6002440 (= e!3668695 tp!1669274)))

(declare-fun tp!1669275 () Bool)

(declare-fun b!6002439 () Bool)

(declare-fun e!3668694 () Bool)

(assert (=> b!6002439 (= e!3668694 (and (inv!83279 (h!70664 (t!377763 zl!343))) e!3668695 tp!1669275))))

(assert (=> b!6001436 (= tp!1669179 e!3668694)))

(assert (= b!6002439 b!6002440))

(assert (= (and b!6001436 ((_ is Cons!64216) (t!377763 zl!343))) b!6002439))

(declare-fun m!6880434 () Bool)

(assert (=> b!6002439 m!6880434))

(declare-fun b!6002445 () Bool)

(declare-fun e!3668698 () Bool)

(declare-fun tp!1669278 () Bool)

(assert (=> b!6002445 (= e!3668698 (and tp_is_empty!41279 tp!1669278))))

(assert (=> b!6001421 (= tp!1669173 e!3668698)))

(assert (= (and b!6001421 ((_ is Cons!64215) (t!377762 s!2326))) b!6002445))

(declare-fun condSetEmpty!40706 () Bool)

(assert (=> setNonEmpty!40700 (= condSetEmpty!40706 (= setRest!40700 ((as const (Array Context!10794 Bool)) false)))))

(declare-fun setRes!40706 () Bool)

(assert (=> setNonEmpty!40700 (= tp!1669180 setRes!40706)))

(declare-fun setIsEmpty!40706 () Bool)

(assert (=> setIsEmpty!40706 setRes!40706))

(declare-fun setElem!40706 () Context!10794)

(declare-fun tp!1669283 () Bool)

(declare-fun setNonEmpty!40706 () Bool)

(declare-fun e!3668701 () Bool)

(assert (=> setNonEmpty!40706 (= setRes!40706 (and tp!1669283 (inv!83279 setElem!40706) e!3668701))))

(declare-fun setRest!40706 () (InoxSet Context!10794))

(assert (=> setNonEmpty!40706 (= setRest!40700 ((_ map or) (store ((as const (Array Context!10794 Bool)) false) setElem!40706 true) setRest!40706))))

(declare-fun b!6002450 () Bool)

(declare-fun tp!1669284 () Bool)

(assert (=> b!6002450 (= e!3668701 tp!1669284)))

(assert (= (and setNonEmpty!40700 condSetEmpty!40706) setIsEmpty!40706))

(assert (= (and setNonEmpty!40700 (not condSetEmpty!40706)) setNonEmpty!40706))

(assert (= setNonEmpty!40706 b!6002450))

(declare-fun m!6880436 () Bool)

(assert (=> setNonEmpty!40706 m!6880436))

(declare-fun b!6002451 () Bool)

(declare-fun e!3668702 () Bool)

(assert (=> b!6002451 (= e!3668702 tp_is_empty!41279)))

(assert (=> b!6001416 (= tp!1669175 e!3668702)))

(declare-fun b!6002452 () Bool)

(declare-fun tp!1669289 () Bool)

(declare-fun tp!1669285 () Bool)

(assert (=> b!6002452 (= e!3668702 (and tp!1669289 tp!1669285))))

(declare-fun b!6002454 () Bool)

(declare-fun tp!1669287 () Bool)

(declare-fun tp!1669288 () Bool)

(assert (=> b!6002454 (= e!3668702 (and tp!1669287 tp!1669288))))

(declare-fun b!6002453 () Bool)

(declare-fun tp!1669286 () Bool)

(assert (=> b!6002453 (= e!3668702 tp!1669286)))

(assert (= (and b!6001416 ((_ is ElementMatch!16013) (reg!16342 r!7292))) b!6002451))

(assert (= (and b!6001416 ((_ is Concat!24858) (reg!16342 r!7292))) b!6002452))

(assert (= (and b!6001416 ((_ is Star!16013) (reg!16342 r!7292))) b!6002453))

(assert (= (and b!6001416 ((_ is Union!16013) (reg!16342 r!7292))) b!6002454))

(declare-fun b!6002459 () Bool)

(declare-fun e!3668705 () Bool)

(declare-fun tp!1669294 () Bool)

(declare-fun tp!1669295 () Bool)

(assert (=> b!6002459 (= e!3668705 (and tp!1669294 tp!1669295))))

(assert (=> b!6001414 (= tp!1669176 e!3668705)))

(assert (= (and b!6001414 ((_ is Cons!64214) (exprs!5897 (h!70664 zl!343)))) b!6002459))

(declare-fun b!6002460 () Bool)

(declare-fun e!3668706 () Bool)

(declare-fun tp!1669296 () Bool)

(declare-fun tp!1669297 () Bool)

(assert (=> b!6002460 (= e!3668706 (and tp!1669296 tp!1669297))))

(assert (=> b!6001420 (= tp!1669177 e!3668706)))

(assert (= (and b!6001420 ((_ is Cons!64214) (exprs!5897 setElem!40700))) b!6002460))

(declare-fun b_lambda!226895 () Bool)

(assert (= b_lambda!226893 (or b!6001405 b_lambda!226895)))

(declare-fun bs!1455520 () Bool)

(declare-fun d!1882140 () Bool)

(assert (= bs!1455520 (and d!1882140 b!6001405)))

(assert (=> bs!1455520 (= (dynLambda!25177 lambda!327639 lt!2319241) (derivationStepZipperUp!1189 lt!2319241 (h!70663 s!2326)))))

(assert (=> bs!1455520 m!6879620))

(assert (=> d!1882118 d!1882140))

(declare-fun b_lambda!226897 () Bool)

(assert (= b_lambda!226889 (or b!6001405 b_lambda!226897)))

(declare-fun bs!1455521 () Bool)

(declare-fun d!1882142 () Bool)

(assert (= bs!1455521 (and d!1882142 b!6001405)))

(assert (=> bs!1455521 (= (dynLambda!25177 lambda!327639 (h!70664 zl!343)) (derivationStepZipperUp!1189 (h!70664 zl!343) (h!70663 s!2326)))))

(assert (=> bs!1455521 m!6879660))

(assert (=> d!1882050 d!1882142))

(declare-fun b_lambda!226899 () Bool)

(assert (= b_lambda!226891 (or b!6001405 b_lambda!226899)))

(declare-fun bs!1455522 () Bool)

(declare-fun d!1882144 () Bool)

(assert (= bs!1455522 (and d!1882144 b!6001405)))

(assert (=> bs!1455522 (= (dynLambda!25177 lambda!327639 lt!2319226) (derivationStepZipperUp!1189 lt!2319226 (h!70663 s!2326)))))

(assert (=> bs!1455522 m!6879628))

(assert (=> d!1882116 d!1882144))

(check-sat (not b!6001874) (not b!6002418) (not b!6002067) (not b!6002397) (not b!6002378) (not b!6002083) (not b!6002406) (not d!1882118) (not bm!485236) (not b!6002201) (not bm!485269) (not b!6002328) (not b!6002453) (not bm!485231) (not b!6001801) (not b!6002291) (not d!1881982) (not bm!485234) (not b!6002329) (not d!1882046) (not b!6002422) (not b!6002375) (not b!6002200) (not b!6002079) (not d!1882056) (not bs!1455521) (not b!6002195) (not bm!485207) (not bm!485261) (not bs!1455522) (not b!6002334) tp_is_empty!41279 (not b!6002460) (not b!6002402) (not bm!485193) (not b!6002081) (not d!1882054) (not b!6002214) (not b!6002419) (not d!1882096) (not d!1882066) (not b!6001876) (not d!1882082) (not b!6002202) (not d!1882120) (not b!6002424) (not b!6002385) (not bm!485241) (not d!1882042) (not bm!485240) (not d!1882080) (not bs!1455520) (not b!6002349) (not d!1882074) (not bm!485242) (not b_lambda!226899) (not b!6002426) (not b!6002380) (not b!6002084) (not b!6002403) (not b!6002254) (not b!6002304) (not b!6002073) (not b!6002420) (not b!6002303) (not d!1882044) (not b!6002082) (not b!6001912) (not d!1882086) (not bm!485215) (not b!6001875) (not b!6002180) (not b!6002294) (not b!6002365) (not b!6002077) (not b_lambda!226895) (not d!1882100) (not b!6002076) (not b!6002199) (not b!6002332) (not setNonEmpty!40706) (not b!6002080) (not d!1882108) (not b!6002087) (not b!6002182) (not b!6002325) (not b!6002364) (not b!6002219) (not b!6002209) (not d!1882134) (not d!1882102) (not b!6002423) (not b!6002430) (not b!6002196) (not bm!485243) (not b!6002326) (not b!6002198) (not bm!485257) (not b!6002298) (not b!6002459) (not b!6002373) (not b!6002393) (not d!1882012) (not bm!485254) (not bm!485210) (not bm!485216) (not b!6002253) (not d!1882136) (not b!6002440) (not b!6002428) (not b!6002454) (not d!1882070) (not b!6002439) (not b!6001868) (not bm!485253) (not d!1881978) (not b_lambda!226897) (not b!6002450) (not d!1882052) (not bm!485266) (not b!6002179) (not b!6002432) (not d!1882122) (not b!6002211) (not b!6002175) (not bm!485264) (not b!6002427) (not bm!485235) (not bm!485267) (not b!6002343) (not bm!485194) (not b!6002176) (not b!6002216) (not bm!485249) (not d!1882124) (not d!1882050) (not b!6002348) (not bm!485233) (not b!6002390) (not b!6002066) (not b!6002333) (not d!1882078) (not b!6002359) (not d!1882064) (not d!1882106) (not b!6001962) (not bm!485270) (not b!6002217) (not b!6002404) (not b!6002445) (not b!6002431) (not b!6002400) (not b!6002051) (not bm!485271) (not d!1882084) (not b!6002301) (not b!6001802) (not d!1882016) (not bm!485238) (not b!6002452) (not d!1882072) (not b!6001872) (not bm!485212) (not b!6002181) (not bm!485260) (not bm!485259) (not bm!485250) (not d!1882058) (not b!6001873) (not b!6002197) (not d!1882116) (not b!6001877) (not d!1882068) (not d!1882088))
(check-sat)
