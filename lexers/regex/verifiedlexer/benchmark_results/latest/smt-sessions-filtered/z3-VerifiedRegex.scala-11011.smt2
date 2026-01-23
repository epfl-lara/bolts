; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570862 () Bool)

(assert start!570862)

(declare-fun b!5444240 () Bool)

(assert (=> b!5444240 true))

(assert (=> b!5444240 true))

(declare-fun lambda!286610 () Int)

(declare-fun lambda!286609 () Int)

(assert (=> b!5444240 (not (= lambda!286610 lambda!286609))))

(assert (=> b!5444240 true))

(assert (=> b!5444240 true))

(declare-fun b!5444243 () Bool)

(assert (=> b!5444243 true))

(declare-fun b!5444226 () Bool)

(declare-fun e!3372304 () Bool)

(declare-fun tp!1500756 () Bool)

(assert (=> b!5444226 (= e!3372304 tp!1500756)))

(declare-fun b!5444227 () Bool)

(declare-fun e!3372299 () Bool)

(assert (=> b!5444227 (= e!3372299 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30808 0))(
  ( (C!30809 (val!25106 Int)) )
))
(declare-datatypes ((Regex!15269 0))(
  ( (ElementMatch!15269 (c!950121 C!30808)) (Concat!24114 (regOne!31050 Regex!15269) (regTwo!31050 Regex!15269)) (EmptyExpr!15269) (Star!15269 (reg!15598 Regex!15269)) (EmptyLang!15269) (Union!15269 (regOne!31051 Regex!15269) (regTwo!31051 Regex!15269)) )
))
(declare-datatypes ((List!62106 0))(
  ( (Nil!61982) (Cons!61982 (h!68430 Regex!15269) (t!375333 List!62106)) )
))
(declare-datatypes ((Context!9306 0))(
  ( (Context!9307 (exprs!5153 List!62106)) )
))
(declare-fun lt!2219708 () (InoxSet Context!9306))

(declare-datatypes ((List!62107 0))(
  ( (Nil!61983) (Cons!61983 (h!68431 C!30808) (t!375334 List!62107)) )
))
(declare-fun s!2326 () List!62107)

(declare-fun matchZipper!1513 ((InoxSet Context!9306) List!62107) Bool)

(assert (=> b!5444227 (not (matchZipper!1513 lt!2219708 (t!375334 s!2326)))))

(declare-datatypes ((Unit!154618 0))(
  ( (Unit!154619) )
))
(declare-fun lt!2219711 () Unit!154618)

(declare-fun lemmaEmptyZipperMatchesNothing!24 ((InoxSet Context!9306) List!62107) Unit!154618)

(assert (=> b!5444227 (= lt!2219711 (lemmaEmptyZipperMatchesNothing!24 lt!2219708 (t!375334 s!2326)))))

(declare-fun b!5444228 () Bool)

(declare-fun e!3372300 () Bool)

(declare-fun tp_is_empty!39791 () Bool)

(assert (=> b!5444228 (= e!3372300 tp_is_empty!39791)))

(declare-fun b!5444229 () Bool)

(declare-fun e!3372303 () Bool)

(declare-fun tp!1500757 () Bool)

(assert (=> b!5444229 (= e!3372303 (and tp_is_empty!39791 tp!1500757))))

(declare-fun b!5444230 () Bool)

(declare-fun res!2317893 () Bool)

(declare-fun e!3372306 () Bool)

(assert (=> b!5444230 (=> (not res!2317893) (not e!3372306))))

(declare-fun z!1189 () (InoxSet Context!9306))

(declare-datatypes ((List!62108 0))(
  ( (Nil!61984) (Cons!61984 (h!68432 Context!9306) (t!375335 List!62108)) )
))
(declare-fun zl!343 () List!62108)

(declare-fun toList!9053 ((InoxSet Context!9306)) List!62108)

(assert (=> b!5444230 (= res!2317893 (= (toList!9053 z!1189) zl!343))))

(declare-fun b!5444231 () Bool)

(declare-fun res!2317892 () Bool)

(declare-fun e!3372308 () Bool)

(assert (=> b!5444231 (=> res!2317892 e!3372308)))

(declare-fun isEmpty!33966 (List!62108) Bool)

(assert (=> b!5444231 (= res!2317892 (not (isEmpty!33966 (t!375335 zl!343))))))

(declare-fun b!5444232 () Bool)

(declare-fun res!2317890 () Bool)

(assert (=> b!5444232 (=> res!2317890 e!3372308)))

(declare-fun r!7292 () Regex!15269)

(declare-fun generalisedConcat!938 (List!62106) Regex!15269)

(assert (=> b!5444232 (= res!2317890 (not (= r!7292 (generalisedConcat!938 (exprs!5153 (h!68432 zl!343))))))))

(declare-fun b!5444233 () Bool)

(declare-fun e!3372307 () Bool)

(declare-fun tp!1500758 () Bool)

(assert (=> b!5444233 (= e!3372307 tp!1500758)))

(declare-fun res!2317904 () Bool)

(assert (=> start!570862 (=> (not res!2317904) (not e!3372306))))

(declare-fun validRegex!7005 (Regex!15269) Bool)

(assert (=> start!570862 (= res!2317904 (validRegex!7005 r!7292))))

(assert (=> start!570862 e!3372306))

(assert (=> start!570862 e!3372300))

(declare-fun condSetEmpty!35617 () Bool)

(assert (=> start!570862 (= condSetEmpty!35617 (= z!1189 ((as const (Array Context!9306 Bool)) false)))))

(declare-fun setRes!35617 () Bool)

(assert (=> start!570862 setRes!35617))

(declare-fun e!3372301 () Bool)

(assert (=> start!570862 e!3372301))

(assert (=> start!570862 e!3372303))

(declare-fun b!5444234 () Bool)

(declare-fun res!2317894 () Bool)

(assert (=> b!5444234 (=> res!2317894 e!3372299)))

(declare-fun e!3372302 () Bool)

(assert (=> b!5444234 (= res!2317894 e!3372302)))

(declare-fun res!2317897 () Bool)

(assert (=> b!5444234 (=> (not res!2317897) (not e!3372302))))

(get-info :version)

(assert (=> b!5444234 (= res!2317897 ((_ is Concat!24114) (regOne!31050 r!7292)))))

(declare-fun b!5444235 () Bool)

(declare-fun nullable!5438 (Regex!15269) Bool)

(assert (=> b!5444235 (= e!3372302 (nullable!5438 (regOne!31050 (regOne!31050 r!7292))))))

(declare-fun setIsEmpty!35617 () Bool)

(assert (=> setIsEmpty!35617 setRes!35617))

(declare-fun b!5444236 () Bool)

(declare-fun res!2317895 () Bool)

(assert (=> b!5444236 (=> res!2317895 e!3372308)))

(declare-fun generalisedUnion!1198 (List!62106) Regex!15269)

(declare-fun unfocusZipperList!711 (List!62108) List!62106)

(assert (=> b!5444236 (= res!2317895 (not (= r!7292 (generalisedUnion!1198 (unfocusZipperList!711 zl!343)))))))

(declare-fun tp!1500753 () Bool)

(declare-fun setNonEmpty!35617 () Bool)

(declare-fun setElem!35617 () Context!9306)

(declare-fun inv!81419 (Context!9306) Bool)

(assert (=> setNonEmpty!35617 (= setRes!35617 (and tp!1500753 (inv!81419 setElem!35617) e!3372307))))

(declare-fun setRest!35617 () (InoxSet Context!9306))

(assert (=> setNonEmpty!35617 (= z!1189 ((_ map or) (store ((as const (Array Context!9306 Bool)) false) setElem!35617 true) setRest!35617))))

(declare-fun b!5444237 () Bool)

(declare-fun e!3372309 () Unit!154618)

(declare-fun Unit!154620 () Unit!154618)

(assert (=> b!5444237 (= e!3372309 Unit!154620)))

(declare-fun lt!2219705 () (InoxSet Context!9306))

(declare-fun lt!2219706 () Unit!154618)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!506 ((InoxSet Context!9306) (InoxSet Context!9306) List!62107) Unit!154618)

(assert (=> b!5444237 (= lt!2219706 (lemmaZipperConcatMatchesSameAsBothZippers!506 lt!2219708 lt!2219705 (t!375334 s!2326)))))

(declare-fun res!2317891 () Bool)

(assert (=> b!5444237 (= res!2317891 (matchZipper!1513 lt!2219708 (t!375334 s!2326)))))

(declare-fun e!3372310 () Bool)

(assert (=> b!5444237 (=> res!2317891 e!3372310)))

(assert (=> b!5444237 (= (matchZipper!1513 ((_ map or) lt!2219708 lt!2219705) (t!375334 s!2326)) e!3372310)))

(declare-fun tp!1500761 () Bool)

(declare-fun b!5444238 () Bool)

(assert (=> b!5444238 (= e!3372301 (and (inv!81419 (h!68432 zl!343)) e!3372304 tp!1500761))))

(declare-fun b!5444239 () Bool)

(assert (=> b!5444239 (= e!3372310 (matchZipper!1513 lt!2219705 (t!375334 s!2326)))))

(declare-fun e!3372305 () Bool)

(assert (=> b!5444240 (= e!3372308 e!3372305)))

(declare-fun res!2317899 () Bool)

(assert (=> b!5444240 (=> res!2317899 e!3372305)))

(declare-fun lt!2219704 () Bool)

(declare-fun lt!2219712 () Bool)

(assert (=> b!5444240 (= res!2317899 (or (not (= lt!2219712 lt!2219704)) ((_ is Nil!61983) s!2326)))))

(declare-fun Exists!2450 (Int) Bool)

(assert (=> b!5444240 (= (Exists!2450 lambda!286609) (Exists!2450 lambda!286610))))

(declare-fun lt!2219707 () Unit!154618)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1104 (Regex!15269 Regex!15269 List!62107) Unit!154618)

(assert (=> b!5444240 (= lt!2219707 (lemmaExistCutMatchRandMatchRSpecEquivalent!1104 (regOne!31050 r!7292) (regTwo!31050 r!7292) s!2326))))

(assert (=> b!5444240 (= lt!2219704 (Exists!2450 lambda!286609))))

(declare-datatypes ((tuple2!64936 0))(
  ( (tuple2!64937 (_1!35771 List!62107) (_2!35771 List!62107)) )
))
(declare-datatypes ((Option!15380 0))(
  ( (None!15379) (Some!15379 (v!51408 tuple2!64936)) )
))
(declare-fun isDefined!12083 (Option!15380) Bool)

(declare-fun findConcatSeparation!1794 (Regex!15269 Regex!15269 List!62107 List!62107 List!62107) Option!15380)

(assert (=> b!5444240 (= lt!2219704 (isDefined!12083 (findConcatSeparation!1794 (regOne!31050 r!7292) (regTwo!31050 r!7292) Nil!61983 s!2326 s!2326)))))

(declare-fun lt!2219710 () Unit!154618)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1558 (Regex!15269 Regex!15269 List!62107) Unit!154618)

(assert (=> b!5444240 (= lt!2219710 (lemmaFindConcatSeparationEquivalentToExists!1558 (regOne!31050 r!7292) (regTwo!31050 r!7292) s!2326))))

(declare-fun b!5444241 () Bool)

(declare-fun Unit!154621 () Unit!154618)

(assert (=> b!5444241 (= e!3372309 Unit!154621)))

(declare-fun b!5444242 () Bool)

(declare-fun res!2317903 () Bool)

(assert (=> b!5444242 (=> res!2317903 e!3372299)))

(assert (=> b!5444242 (= res!2317903 (or ((_ is Concat!24114) (regOne!31050 r!7292)) ((_ is Star!15269) (regOne!31050 r!7292)) ((_ is EmptyExpr!15269) (regOne!31050 r!7292))))))

(assert (=> b!5444243 (= e!3372305 e!3372299)))

(declare-fun res!2317901 () Bool)

(assert (=> b!5444243 (=> res!2317901 e!3372299)))

(assert (=> b!5444243 (= res!2317901 (or (and ((_ is ElementMatch!15269) (regOne!31050 r!7292)) (= (c!950121 (regOne!31050 r!7292)) (h!68431 s!2326))) ((_ is Union!15269) (regOne!31050 r!7292))))))

(declare-fun lt!2219703 () Unit!154618)

(assert (=> b!5444243 (= lt!2219703 e!3372309)))

(declare-fun c!950120 () Bool)

(assert (=> b!5444243 (= c!950120 (nullable!5438 (h!68430 (exprs!5153 (h!68432 zl!343)))))))

(declare-fun lambda!286611 () Int)

(declare-fun flatMap!996 ((InoxSet Context!9306) Int) (InoxSet Context!9306))

(declare-fun derivationStepZipperUp!641 (Context!9306 C!30808) (InoxSet Context!9306))

(assert (=> b!5444243 (= (flatMap!996 z!1189 lambda!286611) (derivationStepZipperUp!641 (h!68432 zl!343) (h!68431 s!2326)))))

(declare-fun lt!2219709 () Unit!154618)

(declare-fun lemmaFlatMapOnSingletonSet!528 ((InoxSet Context!9306) Context!9306 Int) Unit!154618)

(assert (=> b!5444243 (= lt!2219709 (lemmaFlatMapOnSingletonSet!528 z!1189 (h!68432 zl!343) lambda!286611))))

(declare-fun lt!2219702 () Context!9306)

(assert (=> b!5444243 (= lt!2219705 (derivationStepZipperUp!641 lt!2219702 (h!68431 s!2326)))))

(declare-fun derivationStepZipperDown!717 (Regex!15269 Context!9306 C!30808) (InoxSet Context!9306))

(assert (=> b!5444243 (= lt!2219708 (derivationStepZipperDown!717 (h!68430 (exprs!5153 (h!68432 zl!343))) lt!2219702 (h!68431 s!2326)))))

(assert (=> b!5444243 (= lt!2219702 (Context!9307 (t!375333 (exprs!5153 (h!68432 zl!343)))))))

(declare-fun lt!2219714 () (InoxSet Context!9306))

(assert (=> b!5444243 (= lt!2219714 (derivationStepZipperUp!641 (Context!9307 (Cons!61982 (h!68430 (exprs!5153 (h!68432 zl!343))) (t!375333 (exprs!5153 (h!68432 zl!343))))) (h!68431 s!2326)))))

(declare-fun b!5444244 () Bool)

(declare-fun res!2317902 () Bool)

(assert (=> b!5444244 (=> res!2317902 e!3372305)))

(declare-fun isEmpty!33967 (List!62106) Bool)

(assert (=> b!5444244 (= res!2317902 (isEmpty!33967 (t!375333 (exprs!5153 (h!68432 zl!343)))))))

(declare-fun b!5444245 () Bool)

(declare-fun tp!1500759 () Bool)

(declare-fun tp!1500760 () Bool)

(assert (=> b!5444245 (= e!3372300 (and tp!1500759 tp!1500760))))

(declare-fun b!5444246 () Bool)

(declare-fun res!2317896 () Bool)

(assert (=> b!5444246 (=> (not res!2317896) (not e!3372306))))

(declare-fun unfocusZipper!1011 (List!62108) Regex!15269)

(assert (=> b!5444246 (= res!2317896 (= r!7292 (unfocusZipper!1011 zl!343)))))

(declare-fun b!5444247 () Bool)

(declare-fun tp!1500755 () Bool)

(declare-fun tp!1500754 () Bool)

(assert (=> b!5444247 (= e!3372300 (and tp!1500755 tp!1500754))))

(declare-fun b!5444248 () Bool)

(declare-fun res!2317898 () Bool)

(assert (=> b!5444248 (=> res!2317898 e!3372308)))

(assert (=> b!5444248 (= res!2317898 (not ((_ is Cons!61982) (exprs!5153 (h!68432 zl!343)))))))

(declare-fun b!5444249 () Bool)

(declare-fun tp!1500752 () Bool)

(assert (=> b!5444249 (= e!3372300 tp!1500752)))

(declare-fun b!5444250 () Bool)

(assert (=> b!5444250 (= e!3372306 (not e!3372308))))

(declare-fun res!2317905 () Bool)

(assert (=> b!5444250 (=> res!2317905 e!3372308)))

(assert (=> b!5444250 (= res!2317905 (not ((_ is Cons!61984) zl!343)))))

(declare-fun matchRSpec!2372 (Regex!15269 List!62107) Bool)

(assert (=> b!5444250 (= lt!2219712 (matchRSpec!2372 r!7292 s!2326))))

(declare-fun matchR!7454 (Regex!15269 List!62107) Bool)

(assert (=> b!5444250 (= lt!2219712 (matchR!7454 r!7292 s!2326))))

(declare-fun lt!2219713 () Unit!154618)

(declare-fun mainMatchTheorem!2372 (Regex!15269 List!62107) Unit!154618)

(assert (=> b!5444250 (= lt!2219713 (mainMatchTheorem!2372 r!7292 s!2326))))

(declare-fun b!5444251 () Bool)

(declare-fun res!2317900 () Bool)

(assert (=> b!5444251 (=> res!2317900 e!3372308)))

(assert (=> b!5444251 (= res!2317900 (or ((_ is EmptyExpr!15269) r!7292) ((_ is EmptyLang!15269) r!7292) ((_ is ElementMatch!15269) r!7292) ((_ is Union!15269) r!7292) (not ((_ is Concat!24114) r!7292))))))

(assert (= (and start!570862 res!2317904) b!5444230))

(assert (= (and b!5444230 res!2317893) b!5444246))

(assert (= (and b!5444246 res!2317896) b!5444250))

(assert (= (and b!5444250 (not res!2317905)) b!5444231))

(assert (= (and b!5444231 (not res!2317892)) b!5444232))

(assert (= (and b!5444232 (not res!2317890)) b!5444248))

(assert (= (and b!5444248 (not res!2317898)) b!5444236))

(assert (= (and b!5444236 (not res!2317895)) b!5444251))

(assert (= (and b!5444251 (not res!2317900)) b!5444240))

(assert (= (and b!5444240 (not res!2317899)) b!5444244))

(assert (= (and b!5444244 (not res!2317902)) b!5444243))

(assert (= (and b!5444243 c!950120) b!5444237))

(assert (= (and b!5444243 (not c!950120)) b!5444241))

(assert (= (and b!5444237 (not res!2317891)) b!5444239))

(assert (= (and b!5444243 (not res!2317901)) b!5444234))

(assert (= (and b!5444234 res!2317897) b!5444235))

(assert (= (and b!5444234 (not res!2317894)) b!5444242))

(assert (= (and b!5444242 (not res!2317903)) b!5444227))

(assert (= (and start!570862 ((_ is ElementMatch!15269) r!7292)) b!5444228))

(assert (= (and start!570862 ((_ is Concat!24114) r!7292)) b!5444245))

(assert (= (and start!570862 ((_ is Star!15269) r!7292)) b!5444249))

(assert (= (and start!570862 ((_ is Union!15269) r!7292)) b!5444247))

(assert (= (and start!570862 condSetEmpty!35617) setIsEmpty!35617))

(assert (= (and start!570862 (not condSetEmpty!35617)) setNonEmpty!35617))

(assert (= setNonEmpty!35617 b!5444233))

(assert (= b!5444238 b!5444226))

(assert (= (and start!570862 ((_ is Cons!61984) zl!343)) b!5444238))

(assert (= (and start!570862 ((_ is Cons!61983) s!2326)) b!5444229))

(declare-fun m!6464204 () Bool)

(assert (=> b!5444230 m!6464204))

(declare-fun m!6464206 () Bool)

(assert (=> b!5444244 m!6464206))

(declare-fun m!6464208 () Bool)

(assert (=> b!5444240 m!6464208))

(assert (=> b!5444240 m!6464208))

(declare-fun m!6464210 () Bool)

(assert (=> b!5444240 m!6464210))

(declare-fun m!6464212 () Bool)

(assert (=> b!5444240 m!6464212))

(declare-fun m!6464214 () Bool)

(assert (=> b!5444240 m!6464214))

(declare-fun m!6464216 () Bool)

(assert (=> b!5444240 m!6464216))

(assert (=> b!5444240 m!6464210))

(declare-fun m!6464218 () Bool)

(assert (=> b!5444240 m!6464218))

(declare-fun m!6464220 () Bool)

(assert (=> b!5444239 m!6464220))

(declare-fun m!6464222 () Bool)

(assert (=> b!5444235 m!6464222))

(declare-fun m!6464224 () Bool)

(assert (=> b!5444237 m!6464224))

(declare-fun m!6464226 () Bool)

(assert (=> b!5444237 m!6464226))

(declare-fun m!6464228 () Bool)

(assert (=> b!5444237 m!6464228))

(declare-fun m!6464230 () Bool)

(assert (=> b!5444236 m!6464230))

(assert (=> b!5444236 m!6464230))

(declare-fun m!6464232 () Bool)

(assert (=> b!5444236 m!6464232))

(declare-fun m!6464234 () Bool)

(assert (=> b!5444246 m!6464234))

(declare-fun m!6464236 () Bool)

(assert (=> b!5444243 m!6464236))

(declare-fun m!6464238 () Bool)

(assert (=> b!5444243 m!6464238))

(declare-fun m!6464240 () Bool)

(assert (=> b!5444243 m!6464240))

(declare-fun m!6464242 () Bool)

(assert (=> b!5444243 m!6464242))

(declare-fun m!6464244 () Bool)

(assert (=> b!5444243 m!6464244))

(declare-fun m!6464246 () Bool)

(assert (=> b!5444243 m!6464246))

(declare-fun m!6464248 () Bool)

(assert (=> b!5444243 m!6464248))

(declare-fun m!6464250 () Bool)

(assert (=> b!5444231 m!6464250))

(assert (=> b!5444227 m!6464226))

(declare-fun m!6464252 () Bool)

(assert (=> b!5444227 m!6464252))

(declare-fun m!6464254 () Bool)

(assert (=> b!5444250 m!6464254))

(declare-fun m!6464256 () Bool)

(assert (=> b!5444250 m!6464256))

(declare-fun m!6464258 () Bool)

(assert (=> b!5444250 m!6464258))

(declare-fun m!6464260 () Bool)

(assert (=> b!5444238 m!6464260))

(declare-fun m!6464262 () Bool)

(assert (=> start!570862 m!6464262))

(declare-fun m!6464264 () Bool)

(assert (=> b!5444232 m!6464264))

(declare-fun m!6464266 () Bool)

(assert (=> setNonEmpty!35617 m!6464266))

(check-sat (not b!5444227) (not b!5444229) (not b!5444233) tp_is_empty!39791 (not start!570862) (not b!5444237) (not b!5444240) (not b!5444236) (not b!5444250) (not b!5444249) (not b!5444232) (not b!5444245) (not b!5444226) (not b!5444239) (not b!5444231) (not b!5444247) (not b!5444235) (not b!5444243) (not setNonEmpty!35617) (not b!5444230) (not b!5444244) (not b!5444238) (not b!5444246))
(check-sat)
