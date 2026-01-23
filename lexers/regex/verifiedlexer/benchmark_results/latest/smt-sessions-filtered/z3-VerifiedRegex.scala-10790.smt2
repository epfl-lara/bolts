; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553454 () Bool)

(assert start!553454)

(declare-fun b!5234337 () Bool)

(assert (=> b!5234337 true))

(assert (=> b!5234337 true))

(declare-fun lambda!263032 () Int)

(declare-fun lambda!263031 () Int)

(assert (=> b!5234337 (not (= lambda!263032 lambda!263031))))

(assert (=> b!5234337 true))

(assert (=> b!5234337 true))

(declare-fun b!5234353 () Bool)

(assert (=> b!5234353 true))

(declare-fun b!5234314 () Bool)

(declare-fun e!3257227 () Bool)

(declare-fun tp_is_empty!38907 () Bool)

(assert (=> b!5234314 (= e!3257227 tp_is_empty!38907)))

(declare-fun b!5234315 () Bool)

(declare-datatypes ((Unit!152630 0))(
  ( (Unit!152631) )
))
(declare-fun e!3257241 () Unit!152630)

(declare-fun Unit!152632 () Unit!152630)

(assert (=> b!5234315 (= e!3257241 Unit!152632)))

(declare-fun b!5234316 () Bool)

(declare-fun e!3257236 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29924 0))(
  ( (C!29925 (val!24664 Int)) )
))
(declare-datatypes ((Regex!14827 0))(
  ( (ElementMatch!14827 (c!904247 C!29924)) (Concat!23672 (regOne!30166 Regex!14827) (regTwo!30166 Regex!14827)) (EmptyExpr!14827) (Star!14827 (reg!15156 Regex!14827)) (EmptyLang!14827) (Union!14827 (regOne!30167 Regex!14827) (regTwo!30167 Regex!14827)) )
))
(declare-datatypes ((List!60780 0))(
  ( (Nil!60656) (Cons!60656 (h!67104 Regex!14827) (t!373961 List!60780)) )
))
(declare-datatypes ((Context!8422 0))(
  ( (Context!8423 (exprs!4711 List!60780)) )
))
(declare-fun lt!2145985 () (InoxSet Context!8422))

(declare-datatypes ((List!60781 0))(
  ( (Nil!60657) (Cons!60657 (h!67105 C!29924) (t!373962 List!60781)) )
))
(declare-fun s!2326 () List!60781)

(declare-fun matchZipper!1071 ((InoxSet Context!8422) List!60781) Bool)

(assert (=> b!5234316 (= e!3257236 (not (matchZipper!1071 lt!2145985 (t!373962 s!2326))))))

(declare-fun b!5234317 () Bool)

(declare-fun res!2221704 () Bool)

(declare-fun e!3257245 () Bool)

(assert (=> b!5234317 (=> res!2221704 e!3257245)))

(declare-fun lt!2146016 () (InoxSet Context!8422))

(declare-datatypes ((List!60782 0))(
  ( (Nil!60658) (Cons!60658 (h!67106 Context!8422) (t!373963 List!60782)) )
))
(declare-fun lt!2145992 () List!60782)

(declare-fun toList!8611 ((InoxSet Context!8422)) List!60782)

(assert (=> b!5234317 (= res!2221704 (not (= (toList!8611 lt!2146016) lt!2145992)))))

(declare-fun b!5234318 () Bool)

(declare-fun e!3257225 () Bool)

(assert (=> b!5234318 (= e!3257225 e!3257245)))

(declare-fun res!2221708 () Bool)

(assert (=> b!5234318 (=> res!2221708 e!3257245)))

(declare-fun lt!2146014 () List!60780)

(declare-fun validRegex!6563 (Regex!14827) Bool)

(declare-fun generalisedConcat!496 (List!60780) Regex!14827)

(assert (=> b!5234318 (= res!2221708 (not (validRegex!6563 (generalisedConcat!496 lt!2146014))))))

(declare-fun lt!2146004 () Regex!14827)

(declare-fun lt!2145983 () Bool)

(declare-fun matchR!7012 (Regex!14827 List!60781) Bool)

(assert (=> b!5234318 (= (matchR!7012 lt!2146004 s!2326) lt!2145983)))

(declare-fun lt!2146002 () (InoxSet Context!8422))

(declare-fun lt!2145995 () Unit!152630)

(declare-fun lt!2146011 () List!60782)

(declare-fun theoremZipperRegexEquiv!261 ((InoxSet Context!8422) List!60782 Regex!14827 List!60781) Unit!152630)

(assert (=> b!5234318 (= lt!2145995 (theoremZipperRegexEquiv!261 lt!2146002 lt!2146011 lt!2146004 s!2326))))

(declare-fun lt!2146009 () List!60780)

(assert (=> b!5234318 (= lt!2146004 (generalisedConcat!496 lt!2146009))))

(declare-fun b!5234319 () Bool)

(declare-fun res!2221714 () Bool)

(declare-fun e!3257244 () Bool)

(assert (=> b!5234319 (=> res!2221714 e!3257244)))

(declare-fun r!7292 () Regex!14827)

(declare-fun zl!343 () List!60782)

(declare-fun generalisedUnion!756 (List!60780) Regex!14827)

(declare-fun unfocusZipperList!269 (List!60782) List!60780)

(assert (=> b!5234319 (= res!2221714 (not (= r!7292 (generalisedUnion!756 (unfocusZipperList!269 zl!343)))))))

(declare-fun b!5234320 () Bool)

(declare-fun e!3257240 () Bool)

(declare-fun e!3257242 () Bool)

(assert (=> b!5234320 (= e!3257240 e!3257242)))

(declare-fun res!2221716 () Bool)

(assert (=> b!5234320 (=> (not res!2221716) (not e!3257242))))

(declare-fun lt!2145980 () Regex!14827)

(assert (=> b!5234320 (= res!2221716 (= r!7292 lt!2145980))))

(declare-fun unfocusZipper!569 (List!60782) Regex!14827)

(assert (=> b!5234320 (= lt!2145980 (unfocusZipper!569 zl!343))))

(declare-fun b!5234321 () Bool)

(declare-fun tp!1466548 () Bool)

(declare-fun tp!1466543 () Bool)

(assert (=> b!5234321 (= e!3257227 (and tp!1466548 tp!1466543))))

(declare-fun b!5234322 () Bool)

(declare-fun e!3257228 () Unit!152630)

(declare-fun Unit!152633 () Unit!152630)

(assert (=> b!5234322 (= e!3257228 Unit!152633)))

(declare-fun lt!2145990 () Unit!152630)

(declare-fun lt!2146007 () (InoxSet Context!8422))

(declare-fun lt!2145997 () (InoxSet Context!8422))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!64 ((InoxSet Context!8422) (InoxSet Context!8422) List!60781) Unit!152630)

(assert (=> b!5234322 (= lt!2145990 (lemmaZipperConcatMatchesSameAsBothZippers!64 lt!2146007 lt!2145997 (t!373962 s!2326)))))

(declare-fun res!2221718 () Bool)

(declare-fun lt!2146000 () Bool)

(assert (=> b!5234322 (= res!2221718 lt!2146000)))

(declare-fun e!3257246 () Bool)

(assert (=> b!5234322 (=> res!2221718 e!3257246)))

(assert (=> b!5234322 (= (matchZipper!1071 ((_ map or) lt!2146007 lt!2145997) (t!373962 s!2326)) e!3257246)))

(declare-fun b!5234323 () Bool)

(declare-fun e!3257233 () Bool)

(declare-fun e!3257235 () Bool)

(assert (=> b!5234323 (= e!3257233 e!3257235)))

(declare-fun res!2221726 () Bool)

(assert (=> b!5234323 (=> res!2221726 e!3257235)))

(declare-fun e!3257222 () Bool)

(declare-fun z!1189 () (InoxSet Context!8422))

(assert (=> b!5234323 (= res!2221726 (not (= (matchZipper!1071 z!1189 s!2326) e!3257222)))))

(declare-fun res!2221722 () Bool)

(assert (=> b!5234323 (=> res!2221722 e!3257222)))

(assert (=> b!5234323 (= res!2221722 lt!2145983)))

(assert (=> b!5234323 (= lt!2145983 (matchZipper!1071 lt!2146002 s!2326))))

(declare-fun lt!2146013 () Unit!152630)

(declare-fun e!3257226 () Unit!152630)

(assert (=> b!5234323 (= lt!2146013 e!3257226)))

(declare-fun c!904246 () Bool)

(declare-fun nullable!4996 (Regex!14827) Bool)

(assert (=> b!5234323 (= c!904246 (nullable!4996 (regTwo!30167 (regOne!30166 r!7292))))))

(declare-fun lt!2145991 () Context!8422)

(declare-fun lambda!263033 () Int)

(declare-fun flatMap!554 ((InoxSet Context!8422) Int) (InoxSet Context!8422))

(declare-fun derivationStepZipperUp!199 (Context!8422 C!29924) (InoxSet Context!8422))

(assert (=> b!5234323 (= (flatMap!554 lt!2146016 lambda!263033) (derivationStepZipperUp!199 lt!2145991 (h!67105 s!2326)))))

(declare-fun lt!2145982 () Unit!152630)

(declare-fun lemmaFlatMapOnSingletonSet!86 ((InoxSet Context!8422) Context!8422 Int) Unit!152630)

(assert (=> b!5234323 (= lt!2145982 (lemmaFlatMapOnSingletonSet!86 lt!2146016 lt!2145991 lambda!263033))))

(declare-fun lt!2145999 () (InoxSet Context!8422))

(assert (=> b!5234323 (= lt!2145999 (derivationStepZipperUp!199 lt!2145991 (h!67105 s!2326)))))

(declare-fun lt!2146015 () Unit!152630)

(assert (=> b!5234323 (= lt!2146015 e!3257228)))

(declare-fun c!904244 () Bool)

(assert (=> b!5234323 (= c!904244 (nullable!4996 (regOne!30167 (regOne!30166 r!7292))))))

(declare-fun lt!2145998 () Context!8422)

(assert (=> b!5234323 (= (flatMap!554 lt!2146002 lambda!263033) (derivationStepZipperUp!199 lt!2145998 (h!67105 s!2326)))))

(declare-fun lt!2145996 () Unit!152630)

(assert (=> b!5234323 (= lt!2145996 (lemmaFlatMapOnSingletonSet!86 lt!2146002 lt!2145998 lambda!263033))))

(declare-fun lt!2146005 () (InoxSet Context!8422))

(assert (=> b!5234323 (= lt!2146005 (derivationStepZipperUp!199 lt!2145998 (h!67105 s!2326)))))

(assert (=> b!5234323 (= lt!2146016 (store ((as const (Array Context!8422 Bool)) false) lt!2145991 true))))

(assert (=> b!5234323 (= lt!2145991 (Context!8423 lt!2146014))))

(assert (=> b!5234323 (= lt!2146014 (Cons!60656 (regTwo!30167 (regOne!30166 r!7292)) (t!373961 (exprs!4711 (h!67106 zl!343)))))))

(assert (=> b!5234323 (= lt!2146002 (store ((as const (Array Context!8422 Bool)) false) lt!2145998 true))))

(assert (=> b!5234323 (= lt!2145998 (Context!8423 lt!2146009))))

(assert (=> b!5234323 (= lt!2146009 (Cons!60656 (regOne!30167 (regOne!30166 r!7292)) (t!373961 (exprs!4711 (h!67106 zl!343)))))))

(declare-fun tp!1466541 () Bool)

(declare-fun setElem!33353 () Context!8422)

(declare-fun e!3257231 () Bool)

(declare-fun setNonEmpty!33353 () Bool)

(declare-fun setRes!33353 () Bool)

(declare-fun inv!80314 (Context!8422) Bool)

(assert (=> setNonEmpty!33353 (= setRes!33353 (and tp!1466541 (inv!80314 setElem!33353) e!3257231))))

(declare-fun setRest!33353 () (InoxSet Context!8422))

(assert (=> setNonEmpty!33353 (= z!1189 ((_ map or) (store ((as const (Array Context!8422 Bool)) false) setElem!33353 true) setRest!33353))))

(declare-fun b!5234324 () Bool)

(declare-fun res!2221707 () Bool)

(assert (=> b!5234324 (=> res!2221707 e!3257235)))

(assert (=> b!5234324 (= res!2221707 (or (not (= lt!2145980 r!7292)) (not (= (exprs!4711 (h!67106 zl!343)) (Cons!60656 (regOne!30166 r!7292) (t!373961 (exprs!4711 (h!67106 zl!343))))))))))

(declare-fun b!5234325 () Bool)

(assert (=> b!5234325 (= e!3257245 true)))

(declare-fun lt!2145993 () Regex!14827)

(assert (=> b!5234325 (= lt!2145993 (unfocusZipper!569 lt!2145992))))

(declare-fun b!5234326 () Bool)

(declare-fun e!3257238 () Bool)

(declare-fun e!3257229 () Bool)

(assert (=> b!5234326 (= e!3257238 e!3257229)))

(declare-fun res!2221710 () Bool)

(assert (=> b!5234326 (=> res!2221710 e!3257229)))

(declare-fun lt!2146010 () (InoxSet Context!8422))

(declare-fun lt!2146003 () (InoxSet Context!8422))

(assert (=> b!5234326 (= res!2221710 (not (= lt!2146010 lt!2146003)))))

(assert (=> b!5234326 (= lt!2146003 ((_ map or) lt!2146007 lt!2145985))))

(declare-fun lt!2145984 () Context!8422)

(declare-fun derivationStepZipperDown!275 (Regex!14827 Context!8422 C!29924) (InoxSet Context!8422))

(assert (=> b!5234326 (= lt!2145985 (derivationStepZipperDown!275 (regTwo!30167 (regOne!30166 r!7292)) lt!2145984 (h!67105 s!2326)))))

(assert (=> b!5234326 (= lt!2146007 (derivationStepZipperDown!275 (regOne!30167 (regOne!30166 r!7292)) lt!2145984 (h!67105 s!2326)))))

(declare-fun b!5234327 () Bool)

(assert (=> b!5234327 (= e!3257229 e!3257233)))

(declare-fun res!2221719 () Bool)

(assert (=> b!5234327 (=> res!2221719 e!3257233)))

(assert (=> b!5234327 (= res!2221719 e!3257236)))

(declare-fun res!2221717 () Bool)

(assert (=> b!5234327 (=> (not res!2221717) (not e!3257236))))

(assert (=> b!5234327 (= res!2221717 (not (= (matchZipper!1071 lt!2146010 (t!373962 s!2326)) lt!2146000)))))

(declare-fun e!3257239 () Bool)

(assert (=> b!5234327 (= (matchZipper!1071 lt!2146003 (t!373962 s!2326)) e!3257239)))

(declare-fun res!2221727 () Bool)

(assert (=> b!5234327 (=> res!2221727 e!3257239)))

(assert (=> b!5234327 (= res!2221727 lt!2146000)))

(assert (=> b!5234327 (= lt!2146000 (matchZipper!1071 lt!2146007 (t!373962 s!2326)))))

(declare-fun lt!2145977 () Unit!152630)

(assert (=> b!5234327 (= lt!2145977 (lemmaZipperConcatMatchesSameAsBothZippers!64 lt!2146007 lt!2145985 (t!373962 s!2326)))))

(declare-fun b!5234328 () Bool)

(assert (=> b!5234328 (= e!3257246 (matchZipper!1071 lt!2145997 (t!373962 s!2326)))))

(declare-fun b!5234329 () Bool)

(declare-fun tp!1466540 () Bool)

(assert (=> b!5234329 (= e!3257227 tp!1466540)))

(declare-fun b!5234330 () Bool)

(assert (=> b!5234330 (= e!3257239 (matchZipper!1071 lt!2145985 (t!373962 s!2326)))))

(declare-fun b!5234331 () Bool)

(declare-fun res!2221703 () Bool)

(assert (=> b!5234331 (=> res!2221703 e!3257244)))

(get-info :version)

(assert (=> b!5234331 (= res!2221703 (or ((_ is EmptyExpr!14827) r!7292) ((_ is EmptyLang!14827) r!7292) ((_ is ElementMatch!14827) r!7292) ((_ is Union!14827) r!7292) (not ((_ is Concat!23672) r!7292))))))

(declare-fun b!5234332 () Bool)

(declare-fun e!3257237 () Bool)

(declare-fun tp!1466542 () Bool)

(assert (=> b!5234332 (= e!3257237 tp!1466542)))

(declare-fun b!5234333 () Bool)

(declare-fun tp!1466549 () Bool)

(assert (=> b!5234333 (= e!3257231 tp!1466549)))

(declare-fun b!5234334 () Bool)

(declare-fun e!3257232 () Bool)

(assert (=> b!5234334 (= e!3257232 e!3257225)))

(declare-fun res!2221705 () Bool)

(assert (=> b!5234334 (=> res!2221705 e!3257225)))

(declare-fun lt!2145988 () Int)

(declare-fun zipperDepthTotal!8 (List!60782) Int)

(assert (=> b!5234334 (= res!2221705 (>= (zipperDepthTotal!8 lt!2145992) lt!2145988))))

(assert (=> b!5234334 (= lt!2145992 (Cons!60658 lt!2145991 Nil!60658))))

(declare-fun b!5234335 () Bool)

(declare-fun Unit!152634 () Unit!152630)

(assert (=> b!5234335 (= e!3257228 Unit!152634)))

(declare-fun b!5234336 () Bool)

(assert (=> b!5234336 (= e!3257242 (not e!3257244))))

(declare-fun res!2221720 () Bool)

(assert (=> b!5234336 (=> res!2221720 e!3257244)))

(assert (=> b!5234336 (= res!2221720 (not ((_ is Cons!60658) zl!343)))))

(declare-fun lt!2146008 () Bool)

(declare-fun matchRSpec!1930 (Regex!14827 List!60781) Bool)

(assert (=> b!5234336 (= lt!2146008 (matchRSpec!1930 r!7292 s!2326))))

(assert (=> b!5234336 (= lt!2146008 (matchR!7012 r!7292 s!2326))))

(declare-fun lt!2145989 () Unit!152630)

(declare-fun mainMatchTheorem!1930 (Regex!14827 List!60781) Unit!152630)

(assert (=> b!5234336 (= lt!2145989 (mainMatchTheorem!1930 r!7292 s!2326))))

(declare-fun setIsEmpty!33353 () Bool)

(assert (=> setIsEmpty!33353 setRes!33353))

(declare-fun e!3257234 () Bool)

(assert (=> b!5234337 (= e!3257244 e!3257234)))

(declare-fun res!2221706 () Bool)

(assert (=> b!5234337 (=> res!2221706 e!3257234)))

(declare-fun lt!2145986 () Bool)

(assert (=> b!5234337 (= res!2221706 (or (not (= lt!2146008 lt!2145986)) ((_ is Nil!60657) s!2326)))))

(declare-fun Exists!2008 (Int) Bool)

(assert (=> b!5234337 (= (Exists!2008 lambda!263031) (Exists!2008 lambda!263032))))

(declare-fun lt!2145987 () Unit!152630)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!662 (Regex!14827 Regex!14827 List!60781) Unit!152630)

(assert (=> b!5234337 (= lt!2145987 (lemmaExistCutMatchRandMatchRSpecEquivalent!662 (regOne!30166 r!7292) (regTwo!30166 r!7292) s!2326))))

(assert (=> b!5234337 (= lt!2145986 (Exists!2008 lambda!263031))))

(declare-datatypes ((tuple2!64052 0))(
  ( (tuple2!64053 (_1!35329 List!60781) (_2!35329 List!60781)) )
))
(declare-datatypes ((Option!14938 0))(
  ( (None!14937) (Some!14937 (v!50966 tuple2!64052)) )
))
(declare-fun isDefined!11641 (Option!14938) Bool)

(declare-fun findConcatSeparation!1352 (Regex!14827 Regex!14827 List!60781 List!60781 List!60781) Option!14938)

(assert (=> b!5234337 (= lt!2145986 (isDefined!11641 (findConcatSeparation!1352 (regOne!30166 r!7292) (regTwo!30166 r!7292) Nil!60657 s!2326 s!2326)))))

(declare-fun lt!2146006 () Unit!152630)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1116 (Regex!14827 Regex!14827 List!60781) Unit!152630)

(assert (=> b!5234337 (= lt!2146006 (lemmaFindConcatSeparationEquivalentToExists!1116 (regOne!30166 r!7292) (regTwo!30166 r!7292) s!2326))))

(declare-fun b!5234338 () Bool)

(declare-fun res!2221712 () Bool)

(assert (=> b!5234338 (=> (not res!2221712) (not e!3257240))))

(assert (=> b!5234338 (= res!2221712 (= (toList!8611 z!1189) zl!343))))

(declare-fun res!2221709 () Bool)

(assert (=> start!553454 (=> (not res!2221709) (not e!3257240))))

(assert (=> start!553454 (= res!2221709 (validRegex!6563 r!7292))))

(assert (=> start!553454 e!3257240))

(assert (=> start!553454 e!3257227))

(declare-fun condSetEmpty!33353 () Bool)

(assert (=> start!553454 (= condSetEmpty!33353 (= z!1189 ((as const (Array Context!8422 Bool)) false)))))

(assert (=> start!553454 setRes!33353))

(declare-fun e!3257243 () Bool)

(assert (=> start!553454 e!3257243))

(declare-fun e!3257223 () Bool)

(assert (=> start!553454 e!3257223))

(declare-fun b!5234339 () Bool)

(declare-fun res!2221715 () Bool)

(assert (=> b!5234339 (=> res!2221715 e!3257244)))

(assert (=> b!5234339 (= res!2221715 (not (= r!7292 (generalisedConcat!496 (exprs!4711 (h!67106 zl!343))))))))

(declare-fun b!5234340 () Bool)

(declare-fun Unit!152635 () Unit!152630)

(assert (=> b!5234340 (= e!3257241 Unit!152635)))

(declare-fun lt!2145994 () Unit!152630)

(assert (=> b!5234340 (= lt!2145994 (lemmaZipperConcatMatchesSameAsBothZippers!64 lt!2146010 lt!2145997 (t!373962 s!2326)))))

(declare-fun res!2221702 () Bool)

(assert (=> b!5234340 (= res!2221702 (matchZipper!1071 lt!2146010 (t!373962 s!2326)))))

(declare-fun e!3257224 () Bool)

(assert (=> b!5234340 (=> res!2221702 e!3257224)))

(assert (=> b!5234340 (= (matchZipper!1071 ((_ map or) lt!2146010 lt!2145997) (t!373962 s!2326)) e!3257224)))

(declare-fun b!5234341 () Bool)

(declare-fun Unit!152636 () Unit!152630)

(assert (=> b!5234341 (= e!3257226 Unit!152636)))

(declare-fun b!5234342 () Bool)

(declare-fun res!2221713 () Bool)

(assert (=> b!5234342 (=> res!2221713 e!3257234)))

(declare-fun isEmpty!32583 (List!60780) Bool)

(assert (=> b!5234342 (= res!2221713 (isEmpty!32583 (t!373961 (exprs!4711 (h!67106 zl!343)))))))

(declare-fun b!5234343 () Bool)

(declare-fun res!2221711 () Bool)

(assert (=> b!5234343 (=> res!2221711 e!3257244)))

(assert (=> b!5234343 (= res!2221711 (not ((_ is Cons!60656) (exprs!4711 (h!67106 zl!343)))))))

(declare-fun b!5234344 () Bool)

(assert (=> b!5234344 (= e!3257222 (matchZipper!1071 lt!2146016 s!2326))))

(declare-fun b!5234345 () Bool)

(assert (=> b!5234345 (= e!3257224 (matchZipper!1071 lt!2145997 (t!373962 s!2326)))))

(declare-fun b!5234346 () Bool)

(declare-fun tp!1466545 () Bool)

(assert (=> b!5234346 (= e!3257223 (and tp_is_empty!38907 tp!1466545))))

(declare-fun b!5234347 () Bool)

(declare-fun res!2221723 () Bool)

(assert (=> b!5234347 (=> res!2221723 e!3257244)))

(declare-fun isEmpty!32584 (List!60782) Bool)

(assert (=> b!5234347 (= res!2221723 (not (isEmpty!32584 (t!373963 zl!343))))))

(declare-fun b!5234348 () Bool)

(declare-fun tp!1466544 () Bool)

(declare-fun tp!1466546 () Bool)

(assert (=> b!5234348 (= e!3257227 (and tp!1466544 tp!1466546))))

(declare-fun b!5234349 () Bool)

(declare-fun Unit!152637 () Unit!152630)

(assert (=> b!5234349 (= e!3257226 Unit!152637)))

(declare-fun lt!2145981 () Unit!152630)

(assert (=> b!5234349 (= lt!2145981 (lemmaZipperConcatMatchesSameAsBothZippers!64 lt!2145985 lt!2145997 (t!373962 s!2326)))))

(declare-fun res!2221724 () Bool)

(assert (=> b!5234349 (= res!2221724 (matchZipper!1071 lt!2145985 (t!373962 s!2326)))))

(declare-fun e!3257230 () Bool)

(assert (=> b!5234349 (=> res!2221724 e!3257230)))

(assert (=> b!5234349 (= (matchZipper!1071 ((_ map or) lt!2145985 lt!2145997) (t!373962 s!2326)) e!3257230)))

(declare-fun b!5234350 () Bool)

(assert (=> b!5234350 (= e!3257235 e!3257232)))

(declare-fun res!2221721 () Bool)

(assert (=> b!5234350 (=> res!2221721 e!3257232)))

(declare-fun lt!2146012 () Int)

(assert (=> b!5234350 (= res!2221721 (>= lt!2146012 lt!2145988))))

(assert (=> b!5234350 (= lt!2145988 (zipperDepthTotal!8 zl!343))))

(assert (=> b!5234350 (= lt!2146012 (zipperDepthTotal!8 lt!2146011))))

(assert (=> b!5234350 (= lt!2146011 (Cons!60658 lt!2145998 Nil!60658))))

(declare-fun tp!1466547 () Bool)

(declare-fun b!5234351 () Bool)

(assert (=> b!5234351 (= e!3257243 (and (inv!80314 (h!67106 zl!343)) e!3257237 tp!1466547))))

(declare-fun b!5234352 () Bool)

(assert (=> b!5234352 (= e!3257230 (matchZipper!1071 lt!2145997 (t!373962 s!2326)))))

(assert (=> b!5234353 (= e!3257234 e!3257238)))

(declare-fun res!2221725 () Bool)

(assert (=> b!5234353 (=> res!2221725 e!3257238)))

(assert (=> b!5234353 (= res!2221725 (or (and ((_ is ElementMatch!14827) (regOne!30166 r!7292)) (= (c!904247 (regOne!30166 r!7292)) (h!67105 s!2326))) (not ((_ is Union!14827) (regOne!30166 r!7292)))))))

(declare-fun lt!2146001 () Unit!152630)

(assert (=> b!5234353 (= lt!2146001 e!3257241)))

(declare-fun c!904245 () Bool)

(assert (=> b!5234353 (= c!904245 (nullable!4996 (h!67104 (exprs!4711 (h!67106 zl!343)))))))

(assert (=> b!5234353 (= (flatMap!554 z!1189 lambda!263033) (derivationStepZipperUp!199 (h!67106 zl!343) (h!67105 s!2326)))))

(declare-fun lt!2145978 () Unit!152630)

(assert (=> b!5234353 (= lt!2145978 (lemmaFlatMapOnSingletonSet!86 z!1189 (h!67106 zl!343) lambda!263033))))

(assert (=> b!5234353 (= lt!2145997 (derivationStepZipperUp!199 lt!2145984 (h!67105 s!2326)))))

(assert (=> b!5234353 (= lt!2146010 (derivationStepZipperDown!275 (h!67104 (exprs!4711 (h!67106 zl!343))) lt!2145984 (h!67105 s!2326)))))

(assert (=> b!5234353 (= lt!2145984 (Context!8423 (t!373961 (exprs!4711 (h!67106 zl!343)))))))

(declare-fun lt!2145979 () (InoxSet Context!8422))

(assert (=> b!5234353 (= lt!2145979 (derivationStepZipperUp!199 (Context!8423 (Cons!60656 (h!67104 (exprs!4711 (h!67106 zl!343))) (t!373961 (exprs!4711 (h!67106 zl!343))))) (h!67105 s!2326)))))

(assert (= (and start!553454 res!2221709) b!5234338))

(assert (= (and b!5234338 res!2221712) b!5234320))

(assert (= (and b!5234320 res!2221716) b!5234336))

(assert (= (and b!5234336 (not res!2221720)) b!5234347))

(assert (= (and b!5234347 (not res!2221723)) b!5234339))

(assert (= (and b!5234339 (not res!2221715)) b!5234343))

(assert (= (and b!5234343 (not res!2221711)) b!5234319))

(assert (= (and b!5234319 (not res!2221714)) b!5234331))

(assert (= (and b!5234331 (not res!2221703)) b!5234337))

(assert (= (and b!5234337 (not res!2221706)) b!5234342))

(assert (= (and b!5234342 (not res!2221713)) b!5234353))

(assert (= (and b!5234353 c!904245) b!5234340))

(assert (= (and b!5234353 (not c!904245)) b!5234315))

(assert (= (and b!5234340 (not res!2221702)) b!5234345))

(assert (= (and b!5234353 (not res!2221725)) b!5234326))

(assert (= (and b!5234326 (not res!2221710)) b!5234327))

(assert (= (and b!5234327 (not res!2221727)) b!5234330))

(assert (= (and b!5234327 res!2221717) b!5234316))

(assert (= (and b!5234327 (not res!2221719)) b!5234323))

(assert (= (and b!5234323 c!904244) b!5234322))

(assert (= (and b!5234323 (not c!904244)) b!5234335))

(assert (= (and b!5234322 (not res!2221718)) b!5234328))

(assert (= (and b!5234323 c!904246) b!5234349))

(assert (= (and b!5234323 (not c!904246)) b!5234341))

(assert (= (and b!5234349 (not res!2221724)) b!5234352))

(assert (= (and b!5234323 (not res!2221722)) b!5234344))

(assert (= (and b!5234323 (not res!2221726)) b!5234324))

(assert (= (and b!5234324 (not res!2221707)) b!5234350))

(assert (= (and b!5234350 (not res!2221721)) b!5234334))

(assert (= (and b!5234334 (not res!2221705)) b!5234318))

(assert (= (and b!5234318 (not res!2221708)) b!5234317))

(assert (= (and b!5234317 (not res!2221704)) b!5234325))

(assert (= (and start!553454 ((_ is ElementMatch!14827) r!7292)) b!5234314))

(assert (= (and start!553454 ((_ is Concat!23672) r!7292)) b!5234321))

(assert (= (and start!553454 ((_ is Star!14827) r!7292)) b!5234329))

(assert (= (and start!553454 ((_ is Union!14827) r!7292)) b!5234348))

(assert (= (and start!553454 condSetEmpty!33353) setIsEmpty!33353))

(assert (= (and start!553454 (not condSetEmpty!33353)) setNonEmpty!33353))

(assert (= setNonEmpty!33353 b!5234333))

(assert (= b!5234351 b!5234332))

(assert (= (and start!553454 ((_ is Cons!60658) zl!343)) b!5234351))

(assert (= (and start!553454 ((_ is Cons!60657) s!2326)) b!5234346))

(declare-fun m!6279794 () Bool)

(assert (=> b!5234318 m!6279794))

(declare-fun m!6279796 () Bool)

(assert (=> b!5234318 m!6279796))

(assert (=> b!5234318 m!6279794))

(declare-fun m!6279798 () Bool)

(assert (=> b!5234318 m!6279798))

(declare-fun m!6279800 () Bool)

(assert (=> b!5234318 m!6279800))

(declare-fun m!6279802 () Bool)

(assert (=> b!5234318 m!6279802))

(declare-fun m!6279804 () Bool)

(assert (=> b!5234340 m!6279804))

(declare-fun m!6279806 () Bool)

(assert (=> b!5234340 m!6279806))

(declare-fun m!6279808 () Bool)

(assert (=> b!5234340 m!6279808))

(declare-fun m!6279810 () Bool)

(assert (=> b!5234339 m!6279810))

(declare-fun m!6279812 () Bool)

(assert (=> b!5234350 m!6279812))

(declare-fun m!6279814 () Bool)

(assert (=> b!5234350 m!6279814))

(declare-fun m!6279816 () Bool)

(assert (=> b!5234336 m!6279816))

(declare-fun m!6279818 () Bool)

(assert (=> b!5234336 m!6279818))

(declare-fun m!6279820 () Bool)

(assert (=> b!5234336 m!6279820))

(declare-fun m!6279822 () Bool)

(assert (=> b!5234326 m!6279822))

(declare-fun m!6279824 () Bool)

(assert (=> b!5234326 m!6279824))

(declare-fun m!6279826 () Bool)

(assert (=> b!5234349 m!6279826))

(declare-fun m!6279828 () Bool)

(assert (=> b!5234349 m!6279828))

(declare-fun m!6279830 () Bool)

(assert (=> b!5234349 m!6279830))

(declare-fun m!6279832 () Bool)

(assert (=> start!553454 m!6279832))

(assert (=> b!5234327 m!6279806))

(declare-fun m!6279834 () Bool)

(assert (=> b!5234327 m!6279834))

(declare-fun m!6279836 () Bool)

(assert (=> b!5234327 m!6279836))

(declare-fun m!6279838 () Bool)

(assert (=> b!5234327 m!6279838))

(declare-fun m!6279840 () Bool)

(assert (=> b!5234338 m!6279840))

(declare-fun m!6279842 () Bool)

(assert (=> b!5234323 m!6279842))

(declare-fun m!6279844 () Bool)

(assert (=> b!5234323 m!6279844))

(declare-fun m!6279846 () Bool)

(assert (=> b!5234323 m!6279846))

(declare-fun m!6279848 () Bool)

(assert (=> b!5234323 m!6279848))

(declare-fun m!6279850 () Bool)

(assert (=> b!5234323 m!6279850))

(declare-fun m!6279852 () Bool)

(assert (=> b!5234323 m!6279852))

(declare-fun m!6279854 () Bool)

(assert (=> b!5234323 m!6279854))

(declare-fun m!6279856 () Bool)

(assert (=> b!5234323 m!6279856))

(declare-fun m!6279858 () Bool)

(assert (=> b!5234323 m!6279858))

(declare-fun m!6279860 () Bool)

(assert (=> b!5234323 m!6279860))

(declare-fun m!6279862 () Bool)

(assert (=> b!5234323 m!6279862))

(declare-fun m!6279864 () Bool)

(assert (=> b!5234323 m!6279864))

(declare-fun m!6279866 () Bool)

(assert (=> b!5234337 m!6279866))

(assert (=> b!5234337 m!6279866))

(declare-fun m!6279868 () Bool)

(assert (=> b!5234337 m!6279868))

(declare-fun m!6279870 () Bool)

(assert (=> b!5234337 m!6279870))

(declare-fun m!6279872 () Bool)

(assert (=> b!5234337 m!6279872))

(declare-fun m!6279874 () Bool)

(assert (=> b!5234337 m!6279874))

(assert (=> b!5234337 m!6279868))

(declare-fun m!6279876 () Bool)

(assert (=> b!5234337 m!6279876))

(declare-fun m!6279878 () Bool)

(assert (=> b!5234322 m!6279878))

(declare-fun m!6279880 () Bool)

(assert (=> b!5234322 m!6279880))

(declare-fun m!6279882 () Bool)

(assert (=> b!5234317 m!6279882))

(declare-fun m!6279884 () Bool)

(assert (=> b!5234328 m!6279884))

(declare-fun m!6279886 () Bool)

(assert (=> b!5234347 m!6279886))

(declare-fun m!6279888 () Bool)

(assert (=> b!5234351 m!6279888))

(declare-fun m!6279890 () Bool)

(assert (=> b!5234344 m!6279890))

(assert (=> b!5234330 m!6279828))

(assert (=> b!5234352 m!6279884))

(declare-fun m!6279892 () Bool)

(assert (=> b!5234320 m!6279892))

(declare-fun m!6279894 () Bool)

(assert (=> b!5234325 m!6279894))

(assert (=> b!5234316 m!6279828))

(assert (=> b!5234345 m!6279884))

(declare-fun m!6279896 () Bool)

(assert (=> b!5234319 m!6279896))

(assert (=> b!5234319 m!6279896))

(declare-fun m!6279898 () Bool)

(assert (=> b!5234319 m!6279898))

(declare-fun m!6279900 () Bool)

(assert (=> b!5234334 m!6279900))

(declare-fun m!6279902 () Bool)

(assert (=> setNonEmpty!33353 m!6279902))

(declare-fun m!6279904 () Bool)

(assert (=> b!5234353 m!6279904))

(declare-fun m!6279906 () Bool)

(assert (=> b!5234353 m!6279906))

(declare-fun m!6279908 () Bool)

(assert (=> b!5234353 m!6279908))

(declare-fun m!6279910 () Bool)

(assert (=> b!5234353 m!6279910))

(declare-fun m!6279912 () Bool)

(assert (=> b!5234353 m!6279912))

(declare-fun m!6279914 () Bool)

(assert (=> b!5234353 m!6279914))

(declare-fun m!6279916 () Bool)

(assert (=> b!5234353 m!6279916))

(declare-fun m!6279918 () Bool)

(assert (=> b!5234342 m!6279918))

(check-sat (not b!5234333) (not b!5234316) (not b!5234334) (not b!5234338) (not b!5234323) (not b!5234348) (not b!5234351) (not b!5234321) (not b!5234339) (not b!5234344) (not setNonEmpty!33353) (not b!5234325) (not b!5234345) (not b!5234320) (not b!5234352) (not b!5234337) (not b!5234327) (not b!5234317) (not b!5234322) (not b!5234326) (not b!5234347) (not b!5234340) (not start!553454) (not b!5234332) (not b!5234349) (not b!5234342) (not b!5234346) (not b!5234318) (not b!5234319) (not b!5234328) tp_is_empty!38907 (not b!5234336) (not b!5234350) (not b!5234330) (not b!5234353) (not b!5234329))
(check-sat)
