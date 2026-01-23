; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!630070 () Bool)

(assert start!630070)

(declare-fun b!6360763 () Bool)

(assert (=> b!6360763 true))

(assert (=> b!6360763 true))

(declare-fun lambda!350350 () Int)

(declare-fun lambda!350349 () Int)

(assert (=> b!6360763 (not (= lambda!350350 lambda!350349))))

(assert (=> b!6360763 true))

(assert (=> b!6360763 true))

(declare-fun b!6360754 () Bool)

(assert (=> b!6360754 true))

(declare-fun b!6360753 () Bool)

(declare-fun e!3862402 () Bool)

(declare-fun tp!1771378 () Bool)

(assert (=> b!6360753 (= e!3862402 tp!1771378)))

(declare-fun e!3862403 () Bool)

(declare-fun e!3862400 () Bool)

(assert (=> b!6360754 (= e!3862403 e!3862400)))

(declare-fun res!2617231 () Bool)

(assert (=> b!6360754 (=> res!2617231 e!3862400)))

(declare-datatypes ((C!32808 0))(
  ( (C!32809 (val!26106 Int)) )
))
(declare-datatypes ((Regex!16269 0))(
  ( (ElementMatch!16269 (c!1157838 C!32808)) (Concat!25114 (regOne!33050 Regex!16269) (regTwo!33050 Regex!16269)) (EmptyExpr!16269) (Star!16269 (reg!16598 Regex!16269)) (EmptyLang!16269) (Union!16269 (regOne!33051 Regex!16269) (regTwo!33051 Regex!16269)) )
))
(declare-fun r!7292 () Regex!16269)

(declare-datatypes ((List!65106 0))(
  ( (Nil!64982) (Cons!64982 (h!71430 C!32808) (t!378698 List!65106)) )
))
(declare-fun s!2326 () List!65106)

(get-info :version)

(assert (=> b!6360754 (= res!2617231 (or (and ((_ is ElementMatch!16269) (regOne!33050 r!7292)) (= (c!1157838 (regOne!33050 r!7292)) (h!71430 s!2326))) ((_ is Union!16269) (regOne!33050 r!7292))))))

(declare-datatypes ((Unit!158407 0))(
  ( (Unit!158408) )
))
(declare-fun lt!2366788 () Unit!158407)

(declare-fun e!3862397 () Unit!158407)

(assert (=> b!6360754 (= lt!2366788 e!3862397)))

(declare-fun c!1157837 () Bool)

(declare-datatypes ((List!65107 0))(
  ( (Nil!64983) (Cons!64983 (h!71431 Regex!16269) (t!378699 List!65107)) )
))
(declare-datatypes ((Context!11306 0))(
  ( (Context!11307 (exprs!6153 List!65107)) )
))
(declare-datatypes ((List!65108 0))(
  ( (Nil!64984) (Cons!64984 (h!71432 Context!11306) (t!378700 List!65108)) )
))
(declare-fun zl!343 () List!65108)

(declare-fun nullable!6262 (Regex!16269) Bool)

(assert (=> b!6360754 (= c!1157837 (nullable!6262 (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11306))

(declare-fun lambda!350351 () Int)

(declare-fun flatMap!1774 ((InoxSet Context!11306) Int) (InoxSet Context!11306))

(declare-fun derivationStepZipperUp!1443 (Context!11306 C!32808) (InoxSet Context!11306))

(assert (=> b!6360754 (= (flatMap!1774 z!1189 lambda!350351) (derivationStepZipperUp!1443 (h!71432 zl!343) (h!71430 s!2326)))))

(declare-fun lt!2366786 () Unit!158407)

(declare-fun lemmaFlatMapOnSingletonSet!1300 ((InoxSet Context!11306) Context!11306 Int) Unit!158407)

(assert (=> b!6360754 (= lt!2366786 (lemmaFlatMapOnSingletonSet!1300 z!1189 (h!71432 zl!343) lambda!350351))))

(declare-fun lt!2366784 () (InoxSet Context!11306))

(declare-fun lt!2366785 () Context!11306)

(assert (=> b!6360754 (= lt!2366784 (derivationStepZipperUp!1443 lt!2366785 (h!71430 s!2326)))))

(declare-fun lt!2366796 () (InoxSet Context!11306))

(declare-fun derivationStepZipperDown!1517 (Regex!16269 Context!11306 C!32808) (InoxSet Context!11306))

(assert (=> b!6360754 (= lt!2366796 (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (h!71432 zl!343))) lt!2366785 (h!71430 s!2326)))))

(assert (=> b!6360754 (= lt!2366785 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun lt!2366789 () (InoxSet Context!11306))

(assert (=> b!6360754 (= lt!2366789 (derivationStepZipperUp!1443 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))) (h!71430 s!2326)))))

(declare-fun b!6360755 () Bool)

(declare-fun Unit!158409 () Unit!158407)

(assert (=> b!6360755 (= e!3862397 Unit!158409)))

(declare-fun b!6360756 () Bool)

(declare-fun e!3862396 () Bool)

(assert (=> b!6360756 (= e!3862396 (nullable!6262 (regOne!33050 (regOne!33050 r!7292))))))

(declare-fun b!6360757 () Bool)

(declare-fun e!3862395 () Bool)

(declare-fun lt!2366792 () List!65107)

(declare-fun inv!83919 (Context!11306) Bool)

(assert (=> b!6360757 (= e!3862395 (inv!83919 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792))))))

(declare-fun b!6360758 () Bool)

(declare-fun res!2617236 () Bool)

(declare-fun e!3862401 () Bool)

(assert (=> b!6360758 (=> (not res!2617236) (not e!3862401))))

(declare-fun toList!10053 ((InoxSet Context!11306)) List!65108)

(assert (=> b!6360758 (= res!2617236 (= (toList!10053 z!1189) zl!343))))

(declare-fun b!6360759 () Bool)

(assert (=> b!6360759 (= e!3862400 e!3862395)))

(declare-fun res!2617228 () Bool)

(assert (=> b!6360759 (=> res!2617228 e!3862395)))

(assert (=> b!6360759 (= res!2617228 (not (= lt!2366796 (derivationStepZipperDown!1517 (reg!16598 (regOne!33050 r!7292)) (Context!11307 lt!2366792) (h!71430 s!2326)))))))

(assert (=> b!6360759 (= lt!2366792 (Cons!64983 (Star!16269 (reg!16598 (regOne!33050 r!7292))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6360760 () Bool)

(declare-fun res!2617239 () Bool)

(declare-fun e!3862399 () Bool)

(assert (=> b!6360760 (=> res!2617239 e!3862399)))

(declare-fun isEmpty!37085 (List!65108) Bool)

(assert (=> b!6360760 (= res!2617239 (not (isEmpty!37085 (t!378700 zl!343))))))

(declare-fun b!6360761 () Bool)

(declare-fun res!2617240 () Bool)

(assert (=> b!6360761 (=> res!2617240 e!3862400)))

(assert (=> b!6360761 (= res!2617240 e!3862396)))

(declare-fun res!2617234 () Bool)

(assert (=> b!6360761 (=> (not res!2617234) (not e!3862396))))

(assert (=> b!6360761 (= res!2617234 ((_ is Concat!25114) (regOne!33050 r!7292)))))

(declare-fun b!6360762 () Bool)

(declare-fun e!3862404 () Bool)

(declare-fun tp!1771374 () Bool)

(assert (=> b!6360762 (= e!3862404 tp!1771374)))

(assert (=> b!6360763 (= e!3862399 e!3862403)))

(declare-fun res!2617230 () Bool)

(assert (=> b!6360763 (=> res!2617230 e!3862403)))

(declare-fun lt!2366791 () Bool)

(declare-fun lt!2366794 () Bool)

(assert (=> b!6360763 (= res!2617230 (or (not (= lt!2366791 lt!2366794)) ((_ is Nil!64982) s!2326)))))

(declare-fun Exists!3339 (Int) Bool)

(assert (=> b!6360763 (= (Exists!3339 lambda!350349) (Exists!3339 lambda!350350))))

(declare-fun lt!2366787 () Unit!158407)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1876 (Regex!16269 Regex!16269 List!65106) Unit!158407)

(assert (=> b!6360763 (= lt!2366787 (lemmaExistCutMatchRandMatchRSpecEquivalent!1876 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326))))

(assert (=> b!6360763 (= lt!2366794 (Exists!3339 lambda!350349))))

(declare-datatypes ((tuple2!66496 0))(
  ( (tuple2!66497 (_1!36551 List!65106) (_2!36551 List!65106)) )
))
(declare-datatypes ((Option!16160 0))(
  ( (None!16159) (Some!16159 (v!52328 tuple2!66496)) )
))
(declare-fun isDefined!12863 (Option!16160) Bool)

(declare-fun findConcatSeparation!2574 (Regex!16269 Regex!16269 List!65106 List!65106 List!65106) Option!16160)

(assert (=> b!6360763 (= lt!2366794 (isDefined!12863 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326)))))

(declare-fun lt!2366795 () Unit!158407)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2338 (Regex!16269 Regex!16269 List!65106) Unit!158407)

(assert (=> b!6360763 (= lt!2366795 (lemmaFindConcatSeparationEquivalentToExists!2338 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326))))

(declare-fun b!6360764 () Bool)

(declare-fun tp!1771382 () Bool)

(declare-fun tp!1771373 () Bool)

(assert (=> b!6360764 (= e!3862402 (and tp!1771382 tp!1771373))))

(declare-fun b!6360765 () Bool)

(declare-fun res!2617233 () Bool)

(assert (=> b!6360765 (=> res!2617233 e!3862399)))

(declare-fun generalisedUnion!2113 (List!65107) Regex!16269)

(declare-fun unfocusZipperList!1690 (List!65108) List!65107)

(assert (=> b!6360765 (= res!2617233 (not (= r!7292 (generalisedUnion!2113 (unfocusZipperList!1690 zl!343)))))))

(declare-fun b!6360766 () Bool)

(declare-fun res!2617235 () Bool)

(assert (=> b!6360766 (=> res!2617235 e!3862400)))

(assert (=> b!6360766 (= res!2617235 (or ((_ is Concat!25114) (regOne!33050 r!7292)) (not ((_ is Star!16269) (regOne!33050 r!7292)))))))

(declare-fun b!6360767 () Bool)

(declare-fun res!2617244 () Bool)

(assert (=> b!6360767 (=> res!2617244 e!3862399)))

(assert (=> b!6360767 (= res!2617244 (or ((_ is EmptyExpr!16269) r!7292) ((_ is EmptyLang!16269) r!7292) ((_ is ElementMatch!16269) r!7292) ((_ is Union!16269) r!7292) (not ((_ is Concat!25114) r!7292))))))

(declare-fun b!6360768 () Bool)

(declare-fun e!3862394 () Bool)

(declare-fun matchZipper!2281 ((InoxSet Context!11306) List!65106) Bool)

(assert (=> b!6360768 (= e!3862394 (matchZipper!2281 lt!2366784 (t!378698 s!2326)))))

(declare-fun b!6360769 () Bool)

(declare-fun e!3862398 () Bool)

(declare-fun tp_is_empty!41791 () Bool)

(declare-fun tp!1771377 () Bool)

(assert (=> b!6360769 (= e!3862398 (and tp_is_empty!41791 tp!1771377))))

(declare-fun b!6360770 () Bool)

(assert (=> b!6360770 (= e!3862402 tp_is_empty!41791)))

(declare-fun res!2617232 () Bool)

(assert (=> start!630070 (=> (not res!2617232) (not e!3862401))))

(declare-fun validRegex!8005 (Regex!16269) Bool)

(assert (=> start!630070 (= res!2617232 (validRegex!8005 r!7292))))

(assert (=> start!630070 e!3862401))

(assert (=> start!630070 e!3862402))

(declare-fun condSetEmpty!43328 () Bool)

(assert (=> start!630070 (= condSetEmpty!43328 (= z!1189 ((as const (Array Context!11306 Bool)) false)))))

(declare-fun setRes!43328 () Bool)

(assert (=> start!630070 setRes!43328))

(declare-fun e!3862392 () Bool)

(assert (=> start!630070 e!3862392))

(assert (=> start!630070 e!3862398))

(declare-fun b!6360771 () Bool)

(assert (=> b!6360771 (= e!3862401 (not e!3862399))))

(declare-fun res!2617229 () Bool)

(assert (=> b!6360771 (=> res!2617229 e!3862399)))

(assert (=> b!6360771 (= res!2617229 (not ((_ is Cons!64984) zl!343)))))

(declare-fun matchRSpec!3370 (Regex!16269 List!65106) Bool)

(assert (=> b!6360771 (= lt!2366791 (matchRSpec!3370 r!7292 s!2326))))

(declare-fun matchR!8452 (Regex!16269 List!65106) Bool)

(assert (=> b!6360771 (= lt!2366791 (matchR!8452 r!7292 s!2326))))

(declare-fun lt!2366790 () Unit!158407)

(declare-fun mainMatchTheorem!3370 (Regex!16269 List!65106) Unit!158407)

(assert (=> b!6360771 (= lt!2366790 (mainMatchTheorem!3370 r!7292 s!2326))))

(declare-fun b!6360772 () Bool)

(declare-fun res!2617237 () Bool)

(assert (=> b!6360772 (=> res!2617237 e!3862403)))

(declare-fun isEmpty!37086 (List!65107) Bool)

(assert (=> b!6360772 (= res!2617237 (isEmpty!37086 (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6360773 () Bool)

(declare-fun tp!1771381 () Bool)

(declare-fun tp!1771379 () Bool)

(assert (=> b!6360773 (= e!3862402 (and tp!1771381 tp!1771379))))

(declare-fun b!6360774 () Bool)

(declare-fun tp!1771380 () Bool)

(assert (=> b!6360774 (= e!3862392 (and (inv!83919 (h!71432 zl!343)) e!3862404 tp!1771380))))

(declare-fun b!6360775 () Bool)

(declare-fun Unit!158410 () Unit!158407)

(assert (=> b!6360775 (= e!3862397 Unit!158410)))

(declare-fun lt!2366793 () Unit!158407)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1100 ((InoxSet Context!11306) (InoxSet Context!11306) List!65106) Unit!158407)

(assert (=> b!6360775 (= lt!2366793 (lemmaZipperConcatMatchesSameAsBothZippers!1100 lt!2366796 lt!2366784 (t!378698 s!2326)))))

(declare-fun res!2617243 () Bool)

(assert (=> b!6360775 (= res!2617243 (matchZipper!2281 lt!2366796 (t!378698 s!2326)))))

(assert (=> b!6360775 (=> res!2617243 e!3862394)))

(assert (=> b!6360775 (= (matchZipper!2281 ((_ map or) lt!2366796 lt!2366784) (t!378698 s!2326)) e!3862394)))

(declare-fun b!6360776 () Bool)

(declare-fun res!2617238 () Bool)

(assert (=> b!6360776 (=> res!2617238 e!3862399)))

(declare-fun generalisedConcat!1866 (List!65107) Regex!16269)

(assert (=> b!6360776 (= res!2617238 (not (= r!7292 (generalisedConcat!1866 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun tp!1771375 () Bool)

(declare-fun setElem!43328 () Context!11306)

(declare-fun e!3862393 () Bool)

(declare-fun setNonEmpty!43328 () Bool)

(assert (=> setNonEmpty!43328 (= setRes!43328 (and tp!1771375 (inv!83919 setElem!43328) e!3862393))))

(declare-fun setRest!43328 () (InoxSet Context!11306))

(assert (=> setNonEmpty!43328 (= z!1189 ((_ map or) (store ((as const (Array Context!11306 Bool)) false) setElem!43328 true) setRest!43328))))

(declare-fun b!6360777 () Bool)

(declare-fun tp!1771376 () Bool)

(assert (=> b!6360777 (= e!3862393 tp!1771376)))

(declare-fun setIsEmpty!43328 () Bool)

(assert (=> setIsEmpty!43328 setRes!43328))

(declare-fun b!6360778 () Bool)

(declare-fun res!2617241 () Bool)

(assert (=> b!6360778 (=> res!2617241 e!3862399)))

(assert (=> b!6360778 (= res!2617241 (not ((_ is Cons!64983) (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6360779 () Bool)

(declare-fun res!2617242 () Bool)

(assert (=> b!6360779 (=> (not res!2617242) (not e!3862401))))

(declare-fun unfocusZipper!2011 (List!65108) Regex!16269)

(assert (=> b!6360779 (= res!2617242 (= r!7292 (unfocusZipper!2011 zl!343)))))

(assert (= (and start!630070 res!2617232) b!6360758))

(assert (= (and b!6360758 res!2617236) b!6360779))

(assert (= (and b!6360779 res!2617242) b!6360771))

(assert (= (and b!6360771 (not res!2617229)) b!6360760))

(assert (= (and b!6360760 (not res!2617239)) b!6360776))

(assert (= (and b!6360776 (not res!2617238)) b!6360778))

(assert (= (and b!6360778 (not res!2617241)) b!6360765))

(assert (= (and b!6360765 (not res!2617233)) b!6360767))

(assert (= (and b!6360767 (not res!2617244)) b!6360763))

(assert (= (and b!6360763 (not res!2617230)) b!6360772))

(assert (= (and b!6360772 (not res!2617237)) b!6360754))

(assert (= (and b!6360754 c!1157837) b!6360775))

(assert (= (and b!6360754 (not c!1157837)) b!6360755))

(assert (= (and b!6360775 (not res!2617243)) b!6360768))

(assert (= (and b!6360754 (not res!2617231)) b!6360761))

(assert (= (and b!6360761 res!2617234) b!6360756))

(assert (= (and b!6360761 (not res!2617240)) b!6360766))

(assert (= (and b!6360766 (not res!2617235)) b!6360759))

(assert (= (and b!6360759 (not res!2617228)) b!6360757))

(assert (= (and start!630070 ((_ is ElementMatch!16269) r!7292)) b!6360770))

(assert (= (and start!630070 ((_ is Concat!25114) r!7292)) b!6360764))

(assert (= (and start!630070 ((_ is Star!16269) r!7292)) b!6360753))

(assert (= (and start!630070 ((_ is Union!16269) r!7292)) b!6360773))

(assert (= (and start!630070 condSetEmpty!43328) setIsEmpty!43328))

(assert (= (and start!630070 (not condSetEmpty!43328)) setNonEmpty!43328))

(assert (= setNonEmpty!43328 b!6360777))

(assert (= b!6360774 b!6360762))

(assert (= (and start!630070 ((_ is Cons!64984) zl!343)) b!6360774))

(assert (= (and start!630070 ((_ is Cons!64982) s!2326)) b!6360769))

(declare-fun m!7166222 () Bool)

(assert (=> b!6360774 m!7166222))

(declare-fun m!7166224 () Bool)

(assert (=> b!6360756 m!7166224))

(declare-fun m!7166226 () Bool)

(assert (=> b!6360768 m!7166226))

(declare-fun m!7166228 () Bool)

(assert (=> b!6360760 m!7166228))

(declare-fun m!7166230 () Bool)

(assert (=> b!6360758 m!7166230))

(declare-fun m!7166232 () Bool)

(assert (=> b!6360771 m!7166232))

(declare-fun m!7166234 () Bool)

(assert (=> b!6360771 m!7166234))

(declare-fun m!7166236 () Bool)

(assert (=> b!6360771 m!7166236))

(declare-fun m!7166238 () Bool)

(assert (=> b!6360776 m!7166238))

(declare-fun m!7166240 () Bool)

(assert (=> b!6360779 m!7166240))

(declare-fun m!7166242 () Bool)

(assert (=> b!6360754 m!7166242))

(declare-fun m!7166244 () Bool)

(assert (=> b!6360754 m!7166244))

(declare-fun m!7166246 () Bool)

(assert (=> b!6360754 m!7166246))

(declare-fun m!7166248 () Bool)

(assert (=> b!6360754 m!7166248))

(declare-fun m!7166250 () Bool)

(assert (=> b!6360754 m!7166250))

(declare-fun m!7166252 () Bool)

(assert (=> b!6360754 m!7166252))

(declare-fun m!7166254 () Bool)

(assert (=> b!6360754 m!7166254))

(declare-fun m!7166256 () Bool)

(assert (=> start!630070 m!7166256))

(declare-fun m!7166258 () Bool)

(assert (=> setNonEmpty!43328 m!7166258))

(declare-fun m!7166260 () Bool)

(assert (=> b!6360757 m!7166260))

(declare-fun m!7166262 () Bool)

(assert (=> b!6360772 m!7166262))

(declare-fun m!7166264 () Bool)

(assert (=> b!6360765 m!7166264))

(assert (=> b!6360765 m!7166264))

(declare-fun m!7166266 () Bool)

(assert (=> b!6360765 m!7166266))

(declare-fun m!7166268 () Bool)

(assert (=> b!6360763 m!7166268))

(declare-fun m!7166270 () Bool)

(assert (=> b!6360763 m!7166270))

(declare-fun m!7166272 () Bool)

(assert (=> b!6360763 m!7166272))

(assert (=> b!6360763 m!7166268))

(declare-fun m!7166274 () Bool)

(assert (=> b!6360763 m!7166274))

(declare-fun m!7166276 () Bool)

(assert (=> b!6360763 m!7166276))

(assert (=> b!6360763 m!7166270))

(declare-fun m!7166278 () Bool)

(assert (=> b!6360763 m!7166278))

(declare-fun m!7166280 () Bool)

(assert (=> b!6360759 m!7166280))

(declare-fun m!7166282 () Bool)

(assert (=> b!6360775 m!7166282))

(declare-fun m!7166284 () Bool)

(assert (=> b!6360775 m!7166284))

(declare-fun m!7166286 () Bool)

(assert (=> b!6360775 m!7166286))

(check-sat (not b!6360757) (not b!6360763) (not b!6360775) (not b!6360769) (not b!6360774) (not b!6360754) (not b!6360768) (not b!6360762) (not b!6360776) (not b!6360759) (not b!6360773) (not b!6360753) (not b!6360758) (not b!6360764) (not b!6360772) (not setNonEmpty!43328) (not b!6360777) (not b!6360771) (not start!630070) (not b!6360756) (not b!6360765) tp_is_empty!41791 (not b!6360760) (not b!6360779))
(check-sat)
(get-model)

(declare-fun d!1995436 () Bool)

(declare-fun lt!2366808 () Regex!16269)

(assert (=> d!1995436 (validRegex!8005 lt!2366808)))

(assert (=> d!1995436 (= lt!2366808 (generalisedUnion!2113 (unfocusZipperList!1690 zl!343)))))

(assert (=> d!1995436 (= (unfocusZipper!2011 zl!343) lt!2366808)))

(declare-fun bs!1593941 () Bool)

(assert (= bs!1593941 d!1995436))

(declare-fun m!7166302 () Bool)

(assert (=> bs!1593941 m!7166302))

(assert (=> bs!1593941 m!7166264))

(assert (=> bs!1593941 m!7166264))

(assert (=> bs!1593941 m!7166266))

(assert (=> b!6360779 d!1995436))

(declare-fun d!1995438 () Bool)

(assert (=> d!1995438 (= (isEmpty!37085 (t!378700 zl!343)) ((_ is Nil!64984) (t!378700 zl!343)))))

(assert (=> b!6360760 d!1995438))

(declare-fun bs!1593953 () Bool)

(declare-fun b!6360922 () Bool)

(assert (= bs!1593953 (and b!6360922 b!6360763)))

(declare-fun lambda!350374 () Int)

(assert (=> bs!1593953 (not (= lambda!350374 lambda!350349))))

(assert (=> bs!1593953 (not (= lambda!350374 lambda!350350))))

(assert (=> b!6360922 true))

(assert (=> b!6360922 true))

(declare-fun bs!1593954 () Bool)

(declare-fun b!6360930 () Bool)

(assert (= bs!1593954 (and b!6360930 b!6360763)))

(declare-fun lambda!350375 () Int)

(assert (=> bs!1593954 (not (= lambda!350375 lambda!350349))))

(assert (=> bs!1593954 (= lambda!350375 lambda!350350)))

(declare-fun bs!1593955 () Bool)

(assert (= bs!1593955 (and b!6360930 b!6360922)))

(assert (=> bs!1593955 (not (= lambda!350375 lambda!350374))))

(assert (=> b!6360930 true))

(assert (=> b!6360930 true))

(declare-fun bm!542641 () Bool)

(declare-fun call!542646 () Bool)

(declare-fun isEmpty!37089 (List!65106) Bool)

(assert (=> bm!542641 (= call!542646 (isEmpty!37089 s!2326))))

(declare-fun e!3862492 () Bool)

(declare-fun call!542647 () Bool)

(assert (=> b!6360922 (= e!3862492 call!542647)))

(declare-fun b!6360923 () Bool)

(declare-fun res!2617320 () Bool)

(assert (=> b!6360923 (=> res!2617320 e!3862492)))

(assert (=> b!6360923 (= res!2617320 call!542646)))

(declare-fun e!3862489 () Bool)

(assert (=> b!6360923 (= e!3862489 e!3862492)))

(declare-fun b!6360924 () Bool)

(declare-fun e!3862488 () Bool)

(assert (=> b!6360924 (= e!3862488 call!542646)))

(declare-fun b!6360926 () Bool)

(declare-fun e!3862486 () Bool)

(assert (=> b!6360926 (= e!3862488 e!3862486)))

(declare-fun res!2617319 () Bool)

(assert (=> b!6360926 (= res!2617319 (not ((_ is EmptyLang!16269) r!7292)))))

(assert (=> b!6360926 (=> (not res!2617319) (not e!3862486))))

(declare-fun b!6360927 () Bool)

(declare-fun e!3862487 () Bool)

(assert (=> b!6360927 (= e!3862487 (matchRSpec!3370 (regTwo!33051 r!7292) s!2326))))

(declare-fun c!1157873 () Bool)

(declare-fun bm!542642 () Bool)

(assert (=> bm!542642 (= call!542647 (Exists!3339 (ite c!1157873 lambda!350374 lambda!350375)))))

(declare-fun b!6360928 () Bool)

(declare-fun e!3862490 () Bool)

(assert (=> b!6360928 (= e!3862490 (= s!2326 (Cons!64982 (c!1157838 r!7292) Nil!64982)))))

(declare-fun b!6360929 () Bool)

(declare-fun e!3862491 () Bool)

(assert (=> b!6360929 (= e!3862491 e!3862489)))

(assert (=> b!6360929 (= c!1157873 ((_ is Star!16269) r!7292))))

(assert (=> b!6360930 (= e!3862489 call!542647)))

(declare-fun b!6360931 () Bool)

(declare-fun c!1157872 () Bool)

(assert (=> b!6360931 (= c!1157872 ((_ is ElementMatch!16269) r!7292))))

(assert (=> b!6360931 (= e!3862486 e!3862490)))

(declare-fun b!6360932 () Bool)

(assert (=> b!6360932 (= e!3862491 e!3862487)))

(declare-fun res!2617321 () Bool)

(assert (=> b!6360932 (= res!2617321 (matchRSpec!3370 (regOne!33051 r!7292) s!2326))))

(assert (=> b!6360932 (=> res!2617321 e!3862487)))

(declare-fun b!6360925 () Bool)

(declare-fun c!1157871 () Bool)

(assert (=> b!6360925 (= c!1157871 ((_ is Union!16269) r!7292))))

(assert (=> b!6360925 (= e!3862490 e!3862491)))

(declare-fun d!1995440 () Bool)

(declare-fun c!1157870 () Bool)

(assert (=> d!1995440 (= c!1157870 ((_ is EmptyExpr!16269) r!7292))))

(assert (=> d!1995440 (= (matchRSpec!3370 r!7292 s!2326) e!3862488)))

(assert (= (and d!1995440 c!1157870) b!6360924))

(assert (= (and d!1995440 (not c!1157870)) b!6360926))

(assert (= (and b!6360926 res!2617319) b!6360931))

(assert (= (and b!6360931 c!1157872) b!6360928))

(assert (= (and b!6360931 (not c!1157872)) b!6360925))

(assert (= (and b!6360925 c!1157871) b!6360932))

(assert (= (and b!6360925 (not c!1157871)) b!6360929))

(assert (= (and b!6360932 (not res!2617321)) b!6360927))

(assert (= (and b!6360929 c!1157873) b!6360923))

(assert (= (and b!6360929 (not c!1157873)) b!6360930))

(assert (= (and b!6360923 (not res!2617320)) b!6360922))

(assert (= (or b!6360922 b!6360930) bm!542642))

(assert (= (or b!6360924 b!6360923) bm!542641))

(declare-fun m!7166358 () Bool)

(assert (=> bm!542641 m!7166358))

(declare-fun m!7166360 () Bool)

(assert (=> b!6360927 m!7166360))

(declare-fun m!7166362 () Bool)

(assert (=> bm!542642 m!7166362))

(declare-fun m!7166364 () Bool)

(assert (=> b!6360932 m!7166364))

(assert (=> b!6360771 d!1995440))

(declare-fun b!6361024 () Bool)

(declare-fun e!3862545 () Bool)

(declare-fun e!3862544 () Bool)

(assert (=> b!6361024 (= e!3862545 e!3862544)))

(declare-fun c!1157895 () Bool)

(assert (=> b!6361024 (= c!1157895 ((_ is EmptyLang!16269) r!7292))))

(declare-fun b!6361025 () Bool)

(declare-fun e!3862549 () Bool)

(declare-fun derivativeStep!4974 (Regex!16269 C!32808) Regex!16269)

(declare-fun head!13030 (List!65106) C!32808)

(declare-fun tail!12115 (List!65106) List!65106)

(assert (=> b!6361025 (= e!3862549 (matchR!8452 (derivativeStep!4974 r!7292 (head!13030 s!2326)) (tail!12115 s!2326)))))

(declare-fun b!6361026 () Bool)

(declare-fun e!3862546 () Bool)

(declare-fun e!3862548 () Bool)

(assert (=> b!6361026 (= e!3862546 e!3862548)))

(declare-fun res!2617375 () Bool)

(assert (=> b!6361026 (=> res!2617375 e!3862548)))

(declare-fun call!542659 () Bool)

(assert (=> b!6361026 (= res!2617375 call!542659)))

(declare-fun b!6361027 () Bool)

(declare-fun lt!2366832 () Bool)

(assert (=> b!6361027 (= e!3862544 (not lt!2366832))))

(declare-fun b!6361028 () Bool)

(declare-fun e!3862547 () Bool)

(assert (=> b!6361028 (= e!3862547 (= (head!13030 s!2326) (c!1157838 r!7292)))))

(declare-fun bm!542654 () Bool)

(assert (=> bm!542654 (= call!542659 (isEmpty!37089 s!2326))))

(declare-fun b!6361030 () Bool)

(declare-fun res!2617371 () Bool)

(declare-fun e!3862543 () Bool)

(assert (=> b!6361030 (=> res!2617371 e!3862543)))

(assert (=> b!6361030 (= res!2617371 e!3862547)))

(declare-fun res!2617374 () Bool)

(assert (=> b!6361030 (=> (not res!2617374) (not e!3862547))))

(assert (=> b!6361030 (= res!2617374 lt!2366832)))

(declare-fun b!6361031 () Bool)

(declare-fun res!2617378 () Bool)

(assert (=> b!6361031 (=> res!2617378 e!3862548)))

(assert (=> b!6361031 (= res!2617378 (not (isEmpty!37089 (tail!12115 s!2326))))))

(declare-fun b!6361032 () Bool)

(declare-fun res!2617376 () Bool)

(assert (=> b!6361032 (=> (not res!2617376) (not e!3862547))))

(assert (=> b!6361032 (= res!2617376 (not call!542659))))

(declare-fun b!6361033 () Bool)

(declare-fun res!2617377 () Bool)

(assert (=> b!6361033 (=> res!2617377 e!3862543)))

(assert (=> b!6361033 (= res!2617377 (not ((_ is ElementMatch!16269) r!7292)))))

(assert (=> b!6361033 (= e!3862544 e!3862543)))

(declare-fun b!6361034 () Bool)

(assert (=> b!6361034 (= e!3862543 e!3862546)))

(declare-fun res!2617373 () Bool)

(assert (=> b!6361034 (=> (not res!2617373) (not e!3862546))))

(assert (=> b!6361034 (= res!2617373 (not lt!2366832))))

(declare-fun b!6361035 () Bool)

(assert (=> b!6361035 (= e!3862549 (nullable!6262 r!7292))))

(declare-fun b!6361036 () Bool)

(declare-fun res!2617372 () Bool)

(assert (=> b!6361036 (=> (not res!2617372) (not e!3862547))))

(assert (=> b!6361036 (= res!2617372 (isEmpty!37089 (tail!12115 s!2326)))))

(declare-fun b!6361037 () Bool)

(assert (=> b!6361037 (= e!3862545 (= lt!2366832 call!542659))))

(declare-fun d!1995458 () Bool)

(assert (=> d!1995458 e!3862545))

(declare-fun c!1157897 () Bool)

(assert (=> d!1995458 (= c!1157897 ((_ is EmptyExpr!16269) r!7292))))

(assert (=> d!1995458 (= lt!2366832 e!3862549)))

(declare-fun c!1157896 () Bool)

(assert (=> d!1995458 (= c!1157896 (isEmpty!37089 s!2326))))

(assert (=> d!1995458 (validRegex!8005 r!7292)))

(assert (=> d!1995458 (= (matchR!8452 r!7292 s!2326) lt!2366832)))

(declare-fun b!6361029 () Bool)

(assert (=> b!6361029 (= e!3862548 (not (= (head!13030 s!2326) (c!1157838 r!7292))))))

(assert (= (and d!1995458 c!1157896) b!6361035))

(assert (= (and d!1995458 (not c!1157896)) b!6361025))

(assert (= (and d!1995458 c!1157897) b!6361037))

(assert (= (and d!1995458 (not c!1157897)) b!6361024))

(assert (= (and b!6361024 c!1157895) b!6361027))

(assert (= (and b!6361024 (not c!1157895)) b!6361033))

(assert (= (and b!6361033 (not res!2617377)) b!6361030))

(assert (= (and b!6361030 res!2617374) b!6361032))

(assert (= (and b!6361032 res!2617376) b!6361036))

(assert (= (and b!6361036 res!2617372) b!6361028))

(assert (= (and b!6361030 (not res!2617371)) b!6361034))

(assert (= (and b!6361034 res!2617373) b!6361026))

(assert (= (and b!6361026 (not res!2617375)) b!6361031))

(assert (= (and b!6361031 (not res!2617378)) b!6361029))

(assert (= (or b!6361037 b!6361026 b!6361032) bm!542654))

(declare-fun m!7166408 () Bool)

(assert (=> b!6361028 m!7166408))

(declare-fun m!7166410 () Bool)

(assert (=> b!6361031 m!7166410))

(assert (=> b!6361031 m!7166410))

(declare-fun m!7166412 () Bool)

(assert (=> b!6361031 m!7166412))

(assert (=> d!1995458 m!7166358))

(assert (=> d!1995458 m!7166256))

(assert (=> b!6361029 m!7166408))

(declare-fun m!7166414 () Bool)

(assert (=> b!6361035 m!7166414))

(assert (=> bm!542654 m!7166358))

(assert (=> b!6361025 m!7166408))

(assert (=> b!6361025 m!7166408))

(declare-fun m!7166416 () Bool)

(assert (=> b!6361025 m!7166416))

(assert (=> b!6361025 m!7166410))

(assert (=> b!6361025 m!7166416))

(assert (=> b!6361025 m!7166410))

(declare-fun m!7166418 () Bool)

(assert (=> b!6361025 m!7166418))

(assert (=> b!6361036 m!7166410))

(assert (=> b!6361036 m!7166410))

(assert (=> b!6361036 m!7166412))

(assert (=> b!6360771 d!1995458))

(declare-fun d!1995474 () Bool)

(assert (=> d!1995474 (= (matchR!8452 r!7292 s!2326) (matchRSpec!3370 r!7292 s!2326))))

(declare-fun lt!2366838 () Unit!158407)

(declare-fun choose!47241 (Regex!16269 List!65106) Unit!158407)

(assert (=> d!1995474 (= lt!2366838 (choose!47241 r!7292 s!2326))))

(assert (=> d!1995474 (validRegex!8005 r!7292)))

(assert (=> d!1995474 (= (mainMatchTheorem!3370 r!7292 s!2326) lt!2366838)))

(declare-fun bs!1593967 () Bool)

(assert (= bs!1593967 d!1995474))

(assert (=> bs!1593967 m!7166234))

(assert (=> bs!1593967 m!7166232))

(declare-fun m!7166438 () Bool)

(assert (=> bs!1593967 m!7166438))

(assert (=> bs!1593967 m!7166256))

(assert (=> b!6360771 d!1995474))

(declare-fun d!1995480 () Bool)

(declare-fun e!3862582 () Bool)

(assert (=> d!1995480 e!3862582))

(declare-fun res!2617389 () Bool)

(assert (=> d!1995480 (=> (not res!2617389) (not e!3862582))))

(declare-fun lt!2366841 () List!65108)

(declare-fun noDuplicate!2099 (List!65108) Bool)

(assert (=> d!1995480 (= res!2617389 (noDuplicate!2099 lt!2366841))))

(declare-fun choose!47242 ((InoxSet Context!11306)) List!65108)

(assert (=> d!1995480 (= lt!2366841 (choose!47242 z!1189))))

(assert (=> d!1995480 (= (toList!10053 z!1189) lt!2366841)))

(declare-fun b!6361092 () Bool)

(declare-fun content!12272 (List!65108) (InoxSet Context!11306))

(assert (=> b!6361092 (= e!3862582 (= (content!12272 lt!2366841) z!1189))))

(assert (= (and d!1995480 res!2617389) b!6361092))

(declare-fun m!7166440 () Bool)

(assert (=> d!1995480 m!7166440))

(declare-fun m!7166442 () Bool)

(assert (=> d!1995480 m!7166442))

(declare-fun m!7166444 () Bool)

(assert (=> b!6361092 m!7166444))

(assert (=> b!6360758 d!1995480))

(declare-fun call!542702 () List!65107)

(declare-fun c!1157968 () Bool)

(declare-fun c!1157967 () Bool)

(declare-fun bm!542696 () Bool)

(declare-fun $colon$colon!2130 (List!65107 Regex!16269) List!65107)

(assert (=> bm!542696 (= call!542702 ($colon$colon!2130 (exprs!6153 (Context!11307 lt!2366792)) (ite (or c!1157968 c!1157967) (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (regOne!33050 r!7292)))))))

(declare-fun bm!542697 () Bool)

(declare-fun call!542706 () List!65107)

(assert (=> bm!542697 (= call!542706 call!542702)))

(declare-fun b!6361198 () Bool)

(declare-fun e!3862645 () (InoxSet Context!11306))

(assert (=> b!6361198 (= e!3862645 (store ((as const (Array Context!11306 Bool)) false) (Context!11307 lt!2366792) true))))

(declare-fun b!6361199 () Bool)

(declare-fun e!3862643 () (InoxSet Context!11306))

(declare-fun call!542704 () (InoxSet Context!11306))

(assert (=> b!6361199 (= e!3862643 call!542704)))

(declare-fun b!6361200 () Bool)

(declare-fun c!1157969 () Bool)

(assert (=> b!6361200 (= c!1157969 ((_ is Star!16269) (reg!16598 (regOne!33050 r!7292))))))

(declare-fun e!3862648 () (InoxSet Context!11306))

(assert (=> b!6361200 (= e!3862648 e!3862643)))

(declare-fun b!6361201 () Bool)

(declare-fun e!3862646 () (InoxSet Context!11306))

(assert (=> b!6361201 (= e!3862645 e!3862646)))

(declare-fun c!1157965 () Bool)

(assert (=> b!6361201 (= c!1157965 ((_ is Union!16269) (reg!16598 (regOne!33050 r!7292))))))

(declare-fun bm!542698 () Bool)

(declare-fun call!542705 () (InoxSet Context!11306))

(assert (=> bm!542698 (= call!542705 (derivationStepZipperDown!1517 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292)))) (ite c!1157965 (Context!11307 lt!2366792) (Context!11307 call!542702)) (h!71430 s!2326)))))

(declare-fun b!6361202 () Bool)

(declare-fun e!3862644 () Bool)

(assert (=> b!6361202 (= c!1157968 e!3862644)))

(declare-fun res!2617405 () Bool)

(assert (=> b!6361202 (=> (not res!2617405) (not e!3862644))))

(assert (=> b!6361202 (= res!2617405 ((_ is Concat!25114) (reg!16598 (regOne!33050 r!7292))))))

(declare-fun e!3862647 () (InoxSet Context!11306))

(assert (=> b!6361202 (= e!3862646 e!3862647)))

(declare-fun b!6361204 () Bool)

(declare-fun call!542703 () (InoxSet Context!11306))

(assert (=> b!6361204 (= e!3862647 ((_ map or) call!542705 call!542703))))

(declare-fun call!542701 () (InoxSet Context!11306))

(declare-fun bm!542699 () Bool)

(assert (=> bm!542699 (= call!542701 (derivationStepZipperDown!1517 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292)))))) (ite (or c!1157965 c!1157968) (Context!11307 lt!2366792) (Context!11307 call!542706)) (h!71430 s!2326)))))

(declare-fun bm!542700 () Bool)

(assert (=> bm!542700 (= call!542703 call!542701)))

(declare-fun b!6361205 () Bool)

(assert (=> b!6361205 (= e!3862647 e!3862648)))

(assert (=> b!6361205 (= c!1157967 ((_ is Concat!25114) (reg!16598 (regOne!33050 r!7292))))))

(declare-fun b!6361206 () Bool)

(assert (=> b!6361206 (= e!3862644 (nullable!6262 (regOne!33050 (reg!16598 (regOne!33050 r!7292)))))))

(declare-fun b!6361207 () Bool)

(assert (=> b!6361207 (= e!3862646 ((_ map or) call!542705 call!542701))))

(declare-fun bm!542701 () Bool)

(assert (=> bm!542701 (= call!542704 call!542703)))

(declare-fun b!6361208 () Bool)

(assert (=> b!6361208 (= e!3862643 ((as const (Array Context!11306 Bool)) false))))

(declare-fun d!1995482 () Bool)

(declare-fun c!1157966 () Bool)

(assert (=> d!1995482 (= c!1157966 (and ((_ is ElementMatch!16269) (reg!16598 (regOne!33050 r!7292))) (= (c!1157838 (reg!16598 (regOne!33050 r!7292))) (h!71430 s!2326))))))

(assert (=> d!1995482 (= (derivationStepZipperDown!1517 (reg!16598 (regOne!33050 r!7292)) (Context!11307 lt!2366792) (h!71430 s!2326)) e!3862645)))

(declare-fun b!6361203 () Bool)

(assert (=> b!6361203 (= e!3862648 call!542704)))

(assert (= (and d!1995482 c!1157966) b!6361198))

(assert (= (and d!1995482 (not c!1157966)) b!6361201))

(assert (= (and b!6361201 c!1157965) b!6361207))

(assert (= (and b!6361201 (not c!1157965)) b!6361202))

(assert (= (and b!6361202 res!2617405) b!6361206))

(assert (= (and b!6361202 c!1157968) b!6361204))

(assert (= (and b!6361202 (not c!1157968)) b!6361205))

(assert (= (and b!6361205 c!1157967) b!6361203))

(assert (= (and b!6361205 (not c!1157967)) b!6361200))

(assert (= (and b!6361200 c!1157969) b!6361199))

(assert (= (and b!6361200 (not c!1157969)) b!6361208))

(assert (= (or b!6361203 b!6361199) bm!542697))

(assert (= (or b!6361203 b!6361199) bm!542701))

(assert (= (or b!6361204 bm!542697) bm!542696))

(assert (= (or b!6361204 bm!542701) bm!542700))

(assert (= (or b!6361207 bm!542700) bm!542699))

(assert (= (or b!6361207 b!6361204) bm!542698))

(declare-fun m!7166510 () Bool)

(assert (=> bm!542696 m!7166510))

(declare-fun m!7166512 () Bool)

(assert (=> b!6361198 m!7166512))

(declare-fun m!7166514 () Bool)

(assert (=> bm!542698 m!7166514))

(declare-fun m!7166516 () Bool)

(assert (=> b!6361206 m!7166516))

(declare-fun m!7166518 () Bool)

(assert (=> bm!542699 m!7166518))

(assert (=> b!6360759 d!1995482))

(declare-fun b!6361281 () Bool)

(declare-fun e!3862687 () Bool)

(declare-fun e!3862686 () Bool)

(assert (=> b!6361281 (= e!3862687 e!3862686)))

(declare-fun res!2617417 () Bool)

(assert (=> b!6361281 (=> (not res!2617417) (not e!3862686))))

(declare-fun call!542713 () Bool)

(assert (=> b!6361281 (= res!2617417 call!542713)))

(declare-fun b!6361282 () Bool)

(declare-fun e!3862692 () Bool)

(declare-fun e!3862691 () Bool)

(assert (=> b!6361282 (= e!3862692 e!3862691)))

(declare-fun c!1157975 () Bool)

(assert (=> b!6361282 (= c!1157975 ((_ is Star!16269) r!7292))))

(declare-fun b!6361283 () Bool)

(declare-fun e!3862689 () Bool)

(declare-fun call!542714 () Bool)

(assert (=> b!6361283 (= e!3862689 call!542714)))

(declare-fun b!6361284 () Bool)

(declare-fun call!542715 () Bool)

(assert (=> b!6361284 (= e!3862686 call!542715)))

(declare-fun bm!542708 () Bool)

(declare-fun c!1157974 () Bool)

(assert (=> bm!542708 (= call!542715 (validRegex!8005 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))))))

(declare-fun bm!542709 () Bool)

(assert (=> bm!542709 (= call!542714 (validRegex!8005 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))))))

(declare-fun bm!542710 () Bool)

(assert (=> bm!542710 (= call!542713 call!542714)))

(declare-fun b!6361285 () Bool)

(declare-fun e!3862690 () Bool)

(assert (=> b!6361285 (= e!3862690 call!542715)))

(declare-fun b!6361286 () Bool)

(declare-fun res!2617419 () Bool)

(assert (=> b!6361286 (=> (not res!2617419) (not e!3862690))))

(assert (=> b!6361286 (= res!2617419 call!542713)))

(declare-fun e!3862688 () Bool)

(assert (=> b!6361286 (= e!3862688 e!3862690)))

(declare-fun b!6361287 () Bool)

(assert (=> b!6361287 (= e!3862691 e!3862688)))

(assert (=> b!6361287 (= c!1157974 ((_ is Union!16269) r!7292))))

(declare-fun b!6361288 () Bool)

(assert (=> b!6361288 (= e!3862691 e!3862689)))

(declare-fun res!2617418 () Bool)

(assert (=> b!6361288 (= res!2617418 (not (nullable!6262 (reg!16598 r!7292))))))

(assert (=> b!6361288 (=> (not res!2617418) (not e!3862689))))

(declare-fun d!1995504 () Bool)

(declare-fun res!2617416 () Bool)

(assert (=> d!1995504 (=> res!2617416 e!3862692)))

(assert (=> d!1995504 (= res!2617416 ((_ is ElementMatch!16269) r!7292))))

(assert (=> d!1995504 (= (validRegex!8005 r!7292) e!3862692)))

(declare-fun b!6361289 () Bool)

(declare-fun res!2617420 () Bool)

(assert (=> b!6361289 (=> res!2617420 e!3862687)))

(assert (=> b!6361289 (= res!2617420 (not ((_ is Concat!25114) r!7292)))))

(assert (=> b!6361289 (= e!3862688 e!3862687)))

(assert (= (and d!1995504 (not res!2617416)) b!6361282))

(assert (= (and b!6361282 c!1157975) b!6361288))

(assert (= (and b!6361282 (not c!1157975)) b!6361287))

(assert (= (and b!6361288 res!2617418) b!6361283))

(assert (= (and b!6361287 c!1157974) b!6361286))

(assert (= (and b!6361287 (not c!1157974)) b!6361289))

(assert (= (and b!6361286 res!2617419) b!6361285))

(assert (= (and b!6361289 (not res!2617420)) b!6361281))

(assert (= (and b!6361281 res!2617417) b!6361284))

(assert (= (or b!6361285 b!6361284) bm!542708))

(assert (= (or b!6361286 b!6361281) bm!542710))

(assert (= (or b!6361283 bm!542710) bm!542709))

(declare-fun m!7166530 () Bool)

(assert (=> bm!542708 m!7166530))

(declare-fun m!7166532 () Bool)

(assert (=> bm!542709 m!7166532))

(declare-fun m!7166534 () Bool)

(assert (=> b!6361288 m!7166534))

(assert (=> start!630070 d!1995504))

(declare-fun b!6361308 () Bool)

(declare-fun res!2617431 () Bool)

(declare-fun e!3862704 () Bool)

(assert (=> b!6361308 (=> (not res!2617431) (not e!3862704))))

(declare-fun lt!2366859 () Option!16160)

(declare-fun get!22488 (Option!16160) tuple2!66496)

(assert (=> b!6361308 (= res!2617431 (matchR!8452 (regOne!33050 r!7292) (_1!36551 (get!22488 lt!2366859))))))

(declare-fun b!6361309 () Bool)

(declare-fun res!2617434 () Bool)

(assert (=> b!6361309 (=> (not res!2617434) (not e!3862704))))

(assert (=> b!6361309 (= res!2617434 (matchR!8452 (regTwo!33050 r!7292) (_2!36551 (get!22488 lt!2366859))))))

(declare-fun b!6361310 () Bool)

(declare-fun lt!2366858 () Unit!158407)

(declare-fun lt!2366857 () Unit!158407)

(assert (=> b!6361310 (= lt!2366858 lt!2366857)))

(declare-fun ++!14338 (List!65106 List!65106) List!65106)

(assert (=> b!6361310 (= (++!14338 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (t!378698 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2433 (List!65106 C!32808 List!65106 List!65106) Unit!158407)

(assert (=> b!6361310 (= lt!2366857 (lemmaMoveElementToOtherListKeepsConcatEq!2433 Nil!64982 (h!71430 s!2326) (t!378698 s!2326) s!2326))))

(declare-fun e!3862707 () Option!16160)

(assert (=> b!6361310 (= e!3862707 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (t!378698 s!2326) s!2326))))

(declare-fun b!6361311 () Bool)

(declare-fun e!3862706 () Bool)

(assert (=> b!6361311 (= e!3862706 (matchR!8452 (regTwo!33050 r!7292) s!2326))))

(declare-fun d!1995508 () Bool)

(declare-fun e!3862705 () Bool)

(assert (=> d!1995508 e!3862705))

(declare-fun res!2617433 () Bool)

(assert (=> d!1995508 (=> res!2617433 e!3862705)))

(assert (=> d!1995508 (= res!2617433 e!3862704)))

(declare-fun res!2617435 () Bool)

(assert (=> d!1995508 (=> (not res!2617435) (not e!3862704))))

(assert (=> d!1995508 (= res!2617435 (isDefined!12863 lt!2366859))))

(declare-fun e!3862703 () Option!16160)

(assert (=> d!1995508 (= lt!2366859 e!3862703)))

(declare-fun c!1157980 () Bool)

(assert (=> d!1995508 (= c!1157980 e!3862706)))

(declare-fun res!2617432 () Bool)

(assert (=> d!1995508 (=> (not res!2617432) (not e!3862706))))

(assert (=> d!1995508 (= res!2617432 (matchR!8452 (regOne!33050 r!7292) Nil!64982))))

(assert (=> d!1995508 (validRegex!8005 (regOne!33050 r!7292))))

(assert (=> d!1995508 (= (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326) lt!2366859)))

(declare-fun b!6361312 () Bool)

(assert (=> b!6361312 (= e!3862703 (Some!16159 (tuple2!66497 Nil!64982 s!2326)))))

(declare-fun b!6361313 () Bool)

(assert (=> b!6361313 (= e!3862704 (= (++!14338 (_1!36551 (get!22488 lt!2366859)) (_2!36551 (get!22488 lt!2366859))) s!2326))))

(declare-fun b!6361314 () Bool)

(assert (=> b!6361314 (= e!3862707 None!16159)))

(declare-fun b!6361315 () Bool)

(assert (=> b!6361315 (= e!3862705 (not (isDefined!12863 lt!2366859)))))

(declare-fun b!6361316 () Bool)

(assert (=> b!6361316 (= e!3862703 e!3862707)))

(declare-fun c!1157981 () Bool)

(assert (=> b!6361316 (= c!1157981 ((_ is Nil!64982) s!2326))))

(assert (= (and d!1995508 res!2617432) b!6361311))

(assert (= (and d!1995508 c!1157980) b!6361312))

(assert (= (and d!1995508 (not c!1157980)) b!6361316))

(assert (= (and b!6361316 c!1157981) b!6361314))

(assert (= (and b!6361316 (not c!1157981)) b!6361310))

(assert (= (and d!1995508 res!2617435) b!6361308))

(assert (= (and b!6361308 res!2617431) b!6361309))

(assert (= (and b!6361309 res!2617434) b!6361313))

(assert (= (and d!1995508 (not res!2617433)) b!6361315))

(declare-fun m!7166536 () Bool)

(assert (=> b!6361315 m!7166536))

(declare-fun m!7166538 () Bool)

(assert (=> b!6361310 m!7166538))

(assert (=> b!6361310 m!7166538))

(declare-fun m!7166540 () Bool)

(assert (=> b!6361310 m!7166540))

(declare-fun m!7166542 () Bool)

(assert (=> b!6361310 m!7166542))

(assert (=> b!6361310 m!7166538))

(declare-fun m!7166544 () Bool)

(assert (=> b!6361310 m!7166544))

(declare-fun m!7166546 () Bool)

(assert (=> b!6361311 m!7166546))

(declare-fun m!7166548 () Bool)

(assert (=> b!6361313 m!7166548))

(declare-fun m!7166550 () Bool)

(assert (=> b!6361313 m!7166550))

(assert (=> b!6361309 m!7166548))

(declare-fun m!7166552 () Bool)

(assert (=> b!6361309 m!7166552))

(assert (=> d!1995508 m!7166536))

(declare-fun m!7166554 () Bool)

(assert (=> d!1995508 m!7166554))

(declare-fun m!7166556 () Bool)

(assert (=> d!1995508 m!7166556))

(assert (=> b!6361308 m!7166548))

(declare-fun m!7166558 () Bool)

(assert (=> b!6361308 m!7166558))

(assert (=> b!6360763 d!1995508))

(declare-fun d!1995510 () Bool)

(declare-fun choose!47245 (Int) Bool)

(assert (=> d!1995510 (= (Exists!3339 lambda!350350) (choose!47245 lambda!350350))))

(declare-fun bs!1593981 () Bool)

(assert (= bs!1593981 d!1995510))

(declare-fun m!7166560 () Bool)

(assert (=> bs!1593981 m!7166560))

(assert (=> b!6360763 d!1995510))

(declare-fun d!1995512 () Bool)

(assert (=> d!1995512 (= (Exists!3339 lambda!350349) (choose!47245 lambda!350349))))

(declare-fun bs!1593982 () Bool)

(assert (= bs!1593982 d!1995512))

(declare-fun m!7166562 () Bool)

(assert (=> bs!1593982 m!7166562))

(assert (=> b!6360763 d!1995512))

(declare-fun bs!1593983 () Bool)

(declare-fun d!1995514 () Bool)

(assert (= bs!1593983 (and d!1995514 b!6360763)))

(declare-fun lambda!350389 () Int)

(assert (=> bs!1593983 (= lambda!350389 lambda!350349)))

(assert (=> bs!1593983 (not (= lambda!350389 lambda!350350))))

(declare-fun bs!1593984 () Bool)

(assert (= bs!1593984 (and d!1995514 b!6360922)))

(assert (=> bs!1593984 (not (= lambda!350389 lambda!350374))))

(declare-fun bs!1593985 () Bool)

(assert (= bs!1593985 (and d!1995514 b!6360930)))

(assert (=> bs!1593985 (not (= lambda!350389 lambda!350375))))

(assert (=> d!1995514 true))

(assert (=> d!1995514 true))

(assert (=> d!1995514 true))

(assert (=> d!1995514 (= (isDefined!12863 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326)) (Exists!3339 lambda!350389))))

(declare-fun lt!2366862 () Unit!158407)

(declare-fun choose!47246 (Regex!16269 Regex!16269 List!65106) Unit!158407)

(assert (=> d!1995514 (= lt!2366862 (choose!47246 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326))))

(assert (=> d!1995514 (validRegex!8005 (regOne!33050 r!7292))))

(assert (=> d!1995514 (= (lemmaFindConcatSeparationEquivalentToExists!2338 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326) lt!2366862)))

(declare-fun bs!1593986 () Bool)

(assert (= bs!1593986 d!1995514))

(assert (=> bs!1593986 m!7166270))

(assert (=> bs!1593986 m!7166556))

(assert (=> bs!1593986 m!7166270))

(assert (=> bs!1593986 m!7166272))

(declare-fun m!7166564 () Bool)

(assert (=> bs!1593986 m!7166564))

(declare-fun m!7166566 () Bool)

(assert (=> bs!1593986 m!7166566))

(assert (=> b!6360763 d!1995514))

(declare-fun bs!1593987 () Bool)

(declare-fun d!1995516 () Bool)

(assert (= bs!1593987 (and d!1995516 d!1995514)))

(declare-fun lambda!350394 () Int)

(assert (=> bs!1593987 (= lambda!350394 lambda!350389)))

(declare-fun bs!1593988 () Bool)

(assert (= bs!1593988 (and d!1995516 b!6360763)))

(assert (=> bs!1593988 (not (= lambda!350394 lambda!350350))))

(declare-fun bs!1593989 () Bool)

(assert (= bs!1593989 (and d!1995516 b!6360930)))

(assert (=> bs!1593989 (not (= lambda!350394 lambda!350375))))

(assert (=> bs!1593988 (= lambda!350394 lambda!350349)))

(declare-fun bs!1593990 () Bool)

(assert (= bs!1593990 (and d!1995516 b!6360922)))

(assert (=> bs!1593990 (not (= lambda!350394 lambda!350374))))

(assert (=> d!1995516 true))

(assert (=> d!1995516 true))

(assert (=> d!1995516 true))

(declare-fun lambda!350395 () Int)

(assert (=> bs!1593987 (not (= lambda!350395 lambda!350389))))

(assert (=> bs!1593988 (= lambda!350395 lambda!350350)))

(assert (=> bs!1593989 (= lambda!350395 lambda!350375)))

(declare-fun bs!1593991 () Bool)

(assert (= bs!1593991 d!1995516))

(assert (=> bs!1593991 (not (= lambda!350395 lambda!350394))))

(assert (=> bs!1593988 (not (= lambda!350395 lambda!350349))))

(assert (=> bs!1593990 (not (= lambda!350395 lambda!350374))))

(assert (=> d!1995516 true))

(assert (=> d!1995516 true))

(assert (=> d!1995516 true))

(assert (=> d!1995516 (= (Exists!3339 lambda!350394) (Exists!3339 lambda!350395))))

(declare-fun lt!2366865 () Unit!158407)

(declare-fun choose!47247 (Regex!16269 Regex!16269 List!65106) Unit!158407)

(assert (=> d!1995516 (= lt!2366865 (choose!47247 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326))))

(assert (=> d!1995516 (validRegex!8005 (regOne!33050 r!7292))))

(assert (=> d!1995516 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1876 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326) lt!2366865)))

(declare-fun m!7166568 () Bool)

(assert (=> bs!1593991 m!7166568))

(declare-fun m!7166570 () Bool)

(assert (=> bs!1593991 m!7166570))

(declare-fun m!7166572 () Bool)

(assert (=> bs!1593991 m!7166572))

(assert (=> bs!1593991 m!7166556))

(assert (=> b!6360763 d!1995516))

(declare-fun d!1995518 () Bool)

(declare-fun isEmpty!37090 (Option!16160) Bool)

(assert (=> d!1995518 (= (isDefined!12863 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326)) (not (isEmpty!37090 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326))))))

(declare-fun bs!1593992 () Bool)

(assert (= bs!1593992 d!1995518))

(assert (=> bs!1593992 m!7166270))

(declare-fun m!7166574 () Bool)

(assert (=> bs!1593992 m!7166574))

(assert (=> b!6360763 d!1995518))

(declare-fun d!1995520 () Bool)

(assert (=> d!1995520 (= (isEmpty!37086 (t!378699 (exprs!6153 (h!71432 zl!343)))) ((_ is Nil!64983) (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(assert (=> b!6360772 d!1995520))

(declare-fun d!1995522 () Bool)

(declare-fun choose!47248 ((InoxSet Context!11306) Int) (InoxSet Context!11306))

(assert (=> d!1995522 (= (flatMap!1774 z!1189 lambda!350351) (choose!47248 z!1189 lambda!350351))))

(declare-fun bs!1593993 () Bool)

(assert (= bs!1593993 d!1995522))

(declare-fun m!7166576 () Bool)

(assert (=> bs!1593993 m!7166576))

(assert (=> b!6360754 d!1995522))

(declare-fun d!1995524 () Bool)

(declare-fun nullableFct!2209 (Regex!16269) Bool)

(assert (=> d!1995524 (= (nullable!6262 (h!71431 (exprs!6153 (h!71432 zl!343)))) (nullableFct!2209 (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun bs!1593994 () Bool)

(assert (= bs!1593994 d!1995524))

(declare-fun m!7166578 () Bool)

(assert (=> bs!1593994 m!7166578))

(assert (=> b!6360754 d!1995524))

(declare-fun bm!542713 () Bool)

(declare-fun call!542718 () (InoxSet Context!11306))

(assert (=> bm!542713 (= call!542718 (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))) (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (h!71430 s!2326)))))

(declare-fun b!6361339 () Bool)

(declare-fun e!3862720 () Bool)

(assert (=> b!6361339 (= e!3862720 (nullable!6262 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun b!6361340 () Bool)

(declare-fun e!3862722 () (InoxSet Context!11306))

(assert (=> b!6361340 (= e!3862722 ((as const (Array Context!11306 Bool)) false))))

(declare-fun e!3862721 () (InoxSet Context!11306))

(declare-fun b!6361341 () Bool)

(assert (=> b!6361341 (= e!3862721 ((_ map or) call!542718 (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (h!71430 s!2326))))))

(declare-fun b!6361342 () Bool)

(assert (=> b!6361342 (= e!3862722 call!542718)))

(declare-fun d!1995526 () Bool)

(declare-fun c!1157987 () Bool)

(assert (=> d!1995526 (= c!1157987 e!3862720)))

(declare-fun res!2617450 () Bool)

(assert (=> d!1995526 (=> (not res!2617450) (not e!3862720))))

(assert (=> d!1995526 (= res!2617450 ((_ is Cons!64983) (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))

(assert (=> d!1995526 (= (derivationStepZipperUp!1443 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))) (h!71430 s!2326)) e!3862721)))

(declare-fun b!6361343 () Bool)

(assert (=> b!6361343 (= e!3862721 e!3862722)))

(declare-fun c!1157986 () Bool)

(assert (=> b!6361343 (= c!1157986 ((_ is Cons!64983) (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))

(assert (= (and d!1995526 res!2617450) b!6361339))

(assert (= (and d!1995526 c!1157987) b!6361341))

(assert (= (and d!1995526 (not c!1157987)) b!6361343))

(assert (= (and b!6361343 c!1157986) b!6361342))

(assert (= (and b!6361343 (not c!1157986)) b!6361340))

(assert (= (or b!6361341 b!6361342) bm!542713))

(declare-fun m!7166580 () Bool)

(assert (=> bm!542713 m!7166580))

(declare-fun m!7166582 () Bool)

(assert (=> b!6361339 m!7166582))

(declare-fun m!7166584 () Bool)

(assert (=> b!6361341 m!7166584))

(assert (=> b!6360754 d!1995526))

(declare-fun c!1157991 () Bool)

(declare-fun bm!542714 () Bool)

(declare-fun call!542720 () List!65107)

(declare-fun c!1157990 () Bool)

(assert (=> bm!542714 (= call!542720 ($colon$colon!2130 (exprs!6153 lt!2366785) (ite (or c!1157991 c!1157990) (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (h!71431 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun bm!542715 () Bool)

(declare-fun call!542724 () List!65107)

(assert (=> bm!542715 (= call!542724 call!542720)))

(declare-fun b!6361344 () Bool)

(declare-fun e!3862725 () (InoxSet Context!11306))

(assert (=> b!6361344 (= e!3862725 (store ((as const (Array Context!11306 Bool)) false) lt!2366785 true))))

(declare-fun b!6361345 () Bool)

(declare-fun e!3862723 () (InoxSet Context!11306))

(declare-fun call!542722 () (InoxSet Context!11306))

(assert (=> b!6361345 (= e!3862723 call!542722)))

(declare-fun b!6361346 () Bool)

(declare-fun c!1157992 () Bool)

(assert (=> b!6361346 (= c!1157992 ((_ is Star!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun e!3862728 () (InoxSet Context!11306))

(assert (=> b!6361346 (= e!3862728 e!3862723)))

(declare-fun b!6361347 () Bool)

(declare-fun e!3862726 () (InoxSet Context!11306))

(assert (=> b!6361347 (= e!3862725 e!3862726)))

(declare-fun c!1157988 () Bool)

(assert (=> b!6361347 (= c!1157988 ((_ is Union!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun bm!542716 () Bool)

(declare-fun call!542723 () (InoxSet Context!11306))

(assert (=> bm!542716 (= call!542723 (derivationStepZipperDown!1517 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))) (ite c!1157988 lt!2366785 (Context!11307 call!542720)) (h!71430 s!2326)))))

(declare-fun b!6361348 () Bool)

(declare-fun e!3862724 () Bool)

(assert (=> b!6361348 (= c!1157991 e!3862724)))

(declare-fun res!2617451 () Bool)

(assert (=> b!6361348 (=> (not res!2617451) (not e!3862724))))

(assert (=> b!6361348 (= res!2617451 ((_ is Concat!25114) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun e!3862727 () (InoxSet Context!11306))

(assert (=> b!6361348 (= e!3862726 e!3862727)))

(declare-fun b!6361350 () Bool)

(declare-fun call!542721 () (InoxSet Context!11306))

(assert (=> b!6361350 (= e!3862727 ((_ map or) call!542723 call!542721))))

(declare-fun bm!542717 () Bool)

(declare-fun call!542719 () (InoxSet Context!11306))

(assert (=> bm!542717 (= call!542719 (derivationStepZipperDown!1517 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343))))))) (ite (or c!1157988 c!1157991) lt!2366785 (Context!11307 call!542724)) (h!71430 s!2326)))))

(declare-fun bm!542718 () Bool)

(assert (=> bm!542718 (= call!542721 call!542719)))

(declare-fun b!6361351 () Bool)

(assert (=> b!6361351 (= e!3862727 e!3862728)))

(assert (=> b!6361351 (= c!1157990 ((_ is Concat!25114) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361352 () Bool)

(assert (=> b!6361352 (= e!3862724 (nullable!6262 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun b!6361353 () Bool)

(assert (=> b!6361353 (= e!3862726 ((_ map or) call!542723 call!542719))))

(declare-fun bm!542719 () Bool)

(assert (=> bm!542719 (= call!542722 call!542721)))

(declare-fun b!6361354 () Bool)

(assert (=> b!6361354 (= e!3862723 ((as const (Array Context!11306 Bool)) false))))

(declare-fun d!1995528 () Bool)

(declare-fun c!1157989 () Bool)

(assert (=> d!1995528 (= c!1157989 (and ((_ is ElementMatch!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))) (= (c!1157838 (h!71431 (exprs!6153 (h!71432 zl!343)))) (h!71430 s!2326))))))

(assert (=> d!1995528 (= (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (h!71432 zl!343))) lt!2366785 (h!71430 s!2326)) e!3862725)))

(declare-fun b!6361349 () Bool)

(assert (=> b!6361349 (= e!3862728 call!542722)))

(assert (= (and d!1995528 c!1157989) b!6361344))

(assert (= (and d!1995528 (not c!1157989)) b!6361347))

(assert (= (and b!6361347 c!1157988) b!6361353))

(assert (= (and b!6361347 (not c!1157988)) b!6361348))

(assert (= (and b!6361348 res!2617451) b!6361352))

(assert (= (and b!6361348 c!1157991) b!6361350))

(assert (= (and b!6361348 (not c!1157991)) b!6361351))

(assert (= (and b!6361351 c!1157990) b!6361349))

(assert (= (and b!6361351 (not c!1157990)) b!6361346))

(assert (= (and b!6361346 c!1157992) b!6361345))

(assert (= (and b!6361346 (not c!1157992)) b!6361354))

(assert (= (or b!6361349 b!6361345) bm!542715))

(assert (= (or b!6361349 b!6361345) bm!542719))

(assert (= (or b!6361350 bm!542715) bm!542714))

(assert (= (or b!6361350 bm!542719) bm!542718))

(assert (= (or b!6361353 bm!542718) bm!542717))

(assert (= (or b!6361353 b!6361350) bm!542716))

(declare-fun m!7166586 () Bool)

(assert (=> bm!542714 m!7166586))

(declare-fun m!7166588 () Bool)

(assert (=> b!6361344 m!7166588))

(declare-fun m!7166590 () Bool)

(assert (=> bm!542716 m!7166590))

(declare-fun m!7166592 () Bool)

(assert (=> b!6361352 m!7166592))

(declare-fun m!7166594 () Bool)

(assert (=> bm!542717 m!7166594))

(assert (=> b!6360754 d!1995528))

(declare-fun d!1995530 () Bool)

(declare-fun dynLambda!25775 (Int Context!11306) (InoxSet Context!11306))

(assert (=> d!1995530 (= (flatMap!1774 z!1189 lambda!350351) (dynLambda!25775 lambda!350351 (h!71432 zl!343)))))

(declare-fun lt!2366868 () Unit!158407)

(declare-fun choose!47249 ((InoxSet Context!11306) Context!11306 Int) Unit!158407)

(assert (=> d!1995530 (= lt!2366868 (choose!47249 z!1189 (h!71432 zl!343) lambda!350351))))

(assert (=> d!1995530 (= z!1189 (store ((as const (Array Context!11306 Bool)) false) (h!71432 zl!343) true))))

(assert (=> d!1995530 (= (lemmaFlatMapOnSingletonSet!1300 z!1189 (h!71432 zl!343) lambda!350351) lt!2366868)))

(declare-fun b_lambda!241809 () Bool)

(assert (=> (not b_lambda!241809) (not d!1995530)))

(declare-fun bs!1593995 () Bool)

(assert (= bs!1593995 d!1995530))

(assert (=> bs!1593995 m!7166244))

(declare-fun m!7166596 () Bool)

(assert (=> bs!1593995 m!7166596))

(declare-fun m!7166598 () Bool)

(assert (=> bs!1593995 m!7166598))

(declare-fun m!7166600 () Bool)

(assert (=> bs!1593995 m!7166600))

(assert (=> b!6360754 d!1995530))

(declare-fun bm!542720 () Bool)

(declare-fun call!542725 () (InoxSet Context!11306))

(assert (=> bm!542720 (= call!542725 (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (h!71432 zl!343))) (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))) (h!71430 s!2326)))))

(declare-fun b!6361355 () Bool)

(declare-fun e!3862729 () Bool)

(assert (=> b!6361355 (= e!3862729 (nullable!6262 (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361356 () Bool)

(declare-fun e!3862731 () (InoxSet Context!11306))

(assert (=> b!6361356 (= e!3862731 ((as const (Array Context!11306 Bool)) false))))

(declare-fun b!6361357 () Bool)

(declare-fun e!3862730 () (InoxSet Context!11306))

(assert (=> b!6361357 (= e!3862730 ((_ map or) call!542725 (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))) (h!71430 s!2326))))))

(declare-fun b!6361358 () Bool)

(assert (=> b!6361358 (= e!3862731 call!542725)))

(declare-fun d!1995532 () Bool)

(declare-fun c!1157994 () Bool)

(assert (=> d!1995532 (= c!1157994 e!3862729)))

(declare-fun res!2617452 () Bool)

(assert (=> d!1995532 (=> (not res!2617452) (not e!3862729))))

(assert (=> d!1995532 (= res!2617452 ((_ is Cons!64983) (exprs!6153 (h!71432 zl!343))))))

(assert (=> d!1995532 (= (derivationStepZipperUp!1443 (h!71432 zl!343) (h!71430 s!2326)) e!3862730)))

(declare-fun b!6361359 () Bool)

(assert (=> b!6361359 (= e!3862730 e!3862731)))

(declare-fun c!1157993 () Bool)

(assert (=> b!6361359 (= c!1157993 ((_ is Cons!64983) (exprs!6153 (h!71432 zl!343))))))

(assert (= (and d!1995532 res!2617452) b!6361355))

(assert (= (and d!1995532 c!1157994) b!6361357))

(assert (= (and d!1995532 (not c!1157994)) b!6361359))

(assert (= (and b!6361359 c!1157993) b!6361358))

(assert (= (and b!6361359 (not c!1157993)) b!6361356))

(assert (= (or b!6361357 b!6361358) bm!542720))

(declare-fun m!7166602 () Bool)

(assert (=> bm!542720 m!7166602))

(assert (=> b!6361355 m!7166248))

(declare-fun m!7166604 () Bool)

(assert (=> b!6361357 m!7166604))

(assert (=> b!6360754 d!1995532))

(declare-fun bm!542721 () Bool)

(declare-fun call!542726 () (InoxSet Context!11306))

(assert (=> bm!542721 (= call!542726 (derivationStepZipperDown!1517 (h!71431 (exprs!6153 lt!2366785)) (Context!11307 (t!378699 (exprs!6153 lt!2366785))) (h!71430 s!2326)))))

(declare-fun b!6361360 () Bool)

(declare-fun e!3862732 () Bool)

(assert (=> b!6361360 (= e!3862732 (nullable!6262 (h!71431 (exprs!6153 lt!2366785))))))

(declare-fun b!6361361 () Bool)

(declare-fun e!3862734 () (InoxSet Context!11306))

(assert (=> b!6361361 (= e!3862734 ((as const (Array Context!11306 Bool)) false))))

(declare-fun b!6361362 () Bool)

(declare-fun e!3862733 () (InoxSet Context!11306))

(assert (=> b!6361362 (= e!3862733 ((_ map or) call!542726 (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 lt!2366785))) (h!71430 s!2326))))))

(declare-fun b!6361363 () Bool)

(assert (=> b!6361363 (= e!3862734 call!542726)))

(declare-fun d!1995534 () Bool)

(declare-fun c!1157996 () Bool)

(assert (=> d!1995534 (= c!1157996 e!3862732)))

(declare-fun res!2617453 () Bool)

(assert (=> d!1995534 (=> (not res!2617453) (not e!3862732))))

(assert (=> d!1995534 (= res!2617453 ((_ is Cons!64983) (exprs!6153 lt!2366785)))))

(assert (=> d!1995534 (= (derivationStepZipperUp!1443 lt!2366785 (h!71430 s!2326)) e!3862733)))

(declare-fun b!6361364 () Bool)

(assert (=> b!6361364 (= e!3862733 e!3862734)))

(declare-fun c!1157995 () Bool)

(assert (=> b!6361364 (= c!1157995 ((_ is Cons!64983) (exprs!6153 lt!2366785)))))

(assert (= (and d!1995534 res!2617453) b!6361360))

(assert (= (and d!1995534 c!1157996) b!6361362))

(assert (= (and d!1995534 (not c!1157996)) b!6361364))

(assert (= (and b!6361364 c!1157995) b!6361363))

(assert (= (and b!6361364 (not c!1157995)) b!6361361))

(assert (= (or b!6361362 b!6361363) bm!542721))

(declare-fun m!7166606 () Bool)

(assert (=> bm!542721 m!7166606))

(declare-fun m!7166608 () Bool)

(assert (=> b!6361360 m!7166608))

(declare-fun m!7166610 () Bool)

(assert (=> b!6361362 m!7166610))

(assert (=> b!6360754 d!1995534))

(declare-fun b!6361385 () Bool)

(declare-fun e!3862751 () Bool)

(declare-fun lt!2366871 () Regex!16269)

(declare-fun isUnion!1108 (Regex!16269) Bool)

(assert (=> b!6361385 (= e!3862751 (isUnion!1108 lt!2366871))))

(declare-fun b!6361386 () Bool)

(declare-fun e!3862752 () Bool)

(assert (=> b!6361386 (= e!3862752 e!3862751)))

(declare-fun c!1158008 () Bool)

(declare-fun tail!12116 (List!65107) List!65107)

(assert (=> b!6361386 (= c!1158008 (isEmpty!37086 (tail!12116 (unfocusZipperList!1690 zl!343))))))

(declare-fun b!6361387 () Bool)

(declare-fun e!3862747 () Regex!16269)

(declare-fun e!3862749 () Regex!16269)

(assert (=> b!6361387 (= e!3862747 e!3862749)))

(declare-fun c!1158006 () Bool)

(assert (=> b!6361387 (= c!1158006 ((_ is Cons!64983) (unfocusZipperList!1690 zl!343)))))

(declare-fun b!6361388 () Bool)

(declare-fun isEmptyLang!1678 (Regex!16269) Bool)

(assert (=> b!6361388 (= e!3862752 (isEmptyLang!1678 lt!2366871))))

(declare-fun b!6361389 () Bool)

(declare-fun head!13031 (List!65107) Regex!16269)

(assert (=> b!6361389 (= e!3862751 (= lt!2366871 (head!13031 (unfocusZipperList!1690 zl!343))))))

(declare-fun d!1995536 () Bool)

(declare-fun e!3862750 () Bool)

(assert (=> d!1995536 e!3862750))

(declare-fun res!2617458 () Bool)

(assert (=> d!1995536 (=> (not res!2617458) (not e!3862750))))

(assert (=> d!1995536 (= res!2617458 (validRegex!8005 lt!2366871))))

(assert (=> d!1995536 (= lt!2366871 e!3862747)))

(declare-fun c!1158007 () Bool)

(declare-fun e!3862748 () Bool)

(assert (=> d!1995536 (= c!1158007 e!3862748)))

(declare-fun res!2617459 () Bool)

(assert (=> d!1995536 (=> (not res!2617459) (not e!3862748))))

(assert (=> d!1995536 (= res!2617459 ((_ is Cons!64983) (unfocusZipperList!1690 zl!343)))))

(declare-fun lambda!350398 () Int)

(declare-fun forall!15447 (List!65107 Int) Bool)

(assert (=> d!1995536 (forall!15447 (unfocusZipperList!1690 zl!343) lambda!350398)))

(assert (=> d!1995536 (= (generalisedUnion!2113 (unfocusZipperList!1690 zl!343)) lt!2366871)))

(declare-fun b!6361390 () Bool)

(assert (=> b!6361390 (= e!3862747 (h!71431 (unfocusZipperList!1690 zl!343)))))

(declare-fun b!6361391 () Bool)

(assert (=> b!6361391 (= e!3862748 (isEmpty!37086 (t!378699 (unfocusZipperList!1690 zl!343))))))

(declare-fun b!6361392 () Bool)

(assert (=> b!6361392 (= e!3862749 EmptyLang!16269)))

(declare-fun b!6361393 () Bool)

(assert (=> b!6361393 (= e!3862750 e!3862752)))

(declare-fun c!1158005 () Bool)

(assert (=> b!6361393 (= c!1158005 (isEmpty!37086 (unfocusZipperList!1690 zl!343)))))

(declare-fun b!6361394 () Bool)

(assert (=> b!6361394 (= e!3862749 (Union!16269 (h!71431 (unfocusZipperList!1690 zl!343)) (generalisedUnion!2113 (t!378699 (unfocusZipperList!1690 zl!343)))))))

(assert (= (and d!1995536 res!2617459) b!6361391))

(assert (= (and d!1995536 c!1158007) b!6361390))

(assert (= (and d!1995536 (not c!1158007)) b!6361387))

(assert (= (and b!6361387 c!1158006) b!6361394))

(assert (= (and b!6361387 (not c!1158006)) b!6361392))

(assert (= (and d!1995536 res!2617458) b!6361393))

(assert (= (and b!6361393 c!1158005) b!6361388))

(assert (= (and b!6361393 (not c!1158005)) b!6361386))

(assert (= (and b!6361386 c!1158008) b!6361389))

(assert (= (and b!6361386 (not c!1158008)) b!6361385))

(assert (=> b!6361393 m!7166264))

(declare-fun m!7166612 () Bool)

(assert (=> b!6361393 m!7166612))

(declare-fun m!7166614 () Bool)

(assert (=> b!6361394 m!7166614))

(assert (=> b!6361386 m!7166264))

(declare-fun m!7166616 () Bool)

(assert (=> b!6361386 m!7166616))

(assert (=> b!6361386 m!7166616))

(declare-fun m!7166618 () Bool)

(assert (=> b!6361386 m!7166618))

(assert (=> b!6361389 m!7166264))

(declare-fun m!7166620 () Bool)

(assert (=> b!6361389 m!7166620))

(declare-fun m!7166622 () Bool)

(assert (=> b!6361388 m!7166622))

(declare-fun m!7166624 () Bool)

(assert (=> b!6361385 m!7166624))

(declare-fun m!7166626 () Bool)

(assert (=> d!1995536 m!7166626))

(assert (=> d!1995536 m!7166264))

(declare-fun m!7166628 () Bool)

(assert (=> d!1995536 m!7166628))

(declare-fun m!7166630 () Bool)

(assert (=> b!6361391 m!7166630))

(assert (=> b!6360765 d!1995536))

(declare-fun bs!1593996 () Bool)

(declare-fun d!1995538 () Bool)

(assert (= bs!1593996 (and d!1995538 d!1995536)))

(declare-fun lambda!350401 () Int)

(assert (=> bs!1593996 (= lambda!350401 lambda!350398)))

(declare-fun lt!2366874 () List!65107)

(assert (=> d!1995538 (forall!15447 lt!2366874 lambda!350401)))

(declare-fun e!3862755 () List!65107)

(assert (=> d!1995538 (= lt!2366874 e!3862755)))

(declare-fun c!1158011 () Bool)

(assert (=> d!1995538 (= c!1158011 ((_ is Cons!64984) zl!343))))

(assert (=> d!1995538 (= (unfocusZipperList!1690 zl!343) lt!2366874)))

(declare-fun b!6361399 () Bool)

(assert (=> b!6361399 (= e!3862755 (Cons!64983 (generalisedConcat!1866 (exprs!6153 (h!71432 zl!343))) (unfocusZipperList!1690 (t!378700 zl!343))))))

(declare-fun b!6361400 () Bool)

(assert (=> b!6361400 (= e!3862755 Nil!64983)))

(assert (= (and d!1995538 c!1158011) b!6361399))

(assert (= (and d!1995538 (not c!1158011)) b!6361400))

(declare-fun m!7166632 () Bool)

(assert (=> d!1995538 m!7166632))

(assert (=> b!6361399 m!7166238))

(declare-fun m!7166634 () Bool)

(assert (=> b!6361399 m!7166634))

(assert (=> b!6360765 d!1995538))

(declare-fun bs!1593997 () Bool)

(declare-fun d!1995540 () Bool)

(assert (= bs!1593997 (and d!1995540 d!1995536)))

(declare-fun lambda!350404 () Int)

(assert (=> bs!1593997 (= lambda!350404 lambda!350398)))

(declare-fun bs!1593998 () Bool)

(assert (= bs!1593998 (and d!1995540 d!1995538)))

(assert (=> bs!1593998 (= lambda!350404 lambda!350401)))

(declare-fun b!6361421 () Bool)

(declare-fun e!3862769 () Bool)

(declare-fun lt!2366877 () Regex!16269)

(assert (=> b!6361421 (= e!3862769 (= lt!2366877 (head!13031 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361422 () Bool)

(declare-fun e!3862773 () Regex!16269)

(assert (=> b!6361422 (= e!3862773 EmptyExpr!16269)))

(declare-fun b!6361423 () Bool)

(declare-fun e!3862768 () Regex!16269)

(assert (=> b!6361423 (= e!3862768 (h!71431 (exprs!6153 (h!71432 zl!343))))))

(declare-fun b!6361424 () Bool)

(declare-fun isConcat!1194 (Regex!16269) Bool)

(assert (=> b!6361424 (= e!3862769 (isConcat!1194 lt!2366877))))

(declare-fun e!3862771 () Bool)

(assert (=> d!1995540 e!3862771))

(declare-fun res!2617465 () Bool)

(assert (=> d!1995540 (=> (not res!2617465) (not e!3862771))))

(assert (=> d!1995540 (= res!2617465 (validRegex!8005 lt!2366877))))

(assert (=> d!1995540 (= lt!2366877 e!3862768)))

(declare-fun c!1158022 () Bool)

(declare-fun e!3862770 () Bool)

(assert (=> d!1995540 (= c!1158022 e!3862770)))

(declare-fun res!2617464 () Bool)

(assert (=> d!1995540 (=> (not res!2617464) (not e!3862770))))

(assert (=> d!1995540 (= res!2617464 ((_ is Cons!64983) (exprs!6153 (h!71432 zl!343))))))

(assert (=> d!1995540 (forall!15447 (exprs!6153 (h!71432 zl!343)) lambda!350404)))

(assert (=> d!1995540 (= (generalisedConcat!1866 (exprs!6153 (h!71432 zl!343))) lt!2366877)))

(declare-fun b!6361425 () Bool)

(declare-fun e!3862772 () Bool)

(declare-fun isEmptyExpr!1671 (Regex!16269) Bool)

(assert (=> b!6361425 (= e!3862772 (isEmptyExpr!1671 lt!2366877))))

(declare-fun b!6361426 () Bool)

(assert (=> b!6361426 (= e!3862773 (Concat!25114 (h!71431 (exprs!6153 (h!71432 zl!343))) (generalisedConcat!1866 (t!378699 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun b!6361427 () Bool)

(assert (=> b!6361427 (= e!3862772 e!3862769)))

(declare-fun c!1158020 () Bool)

(assert (=> b!6361427 (= c!1158020 (isEmpty!37086 (tail!12116 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361428 () Bool)

(assert (=> b!6361428 (= e!3862770 (isEmpty!37086 (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361429 () Bool)

(assert (=> b!6361429 (= e!3862771 e!3862772)))

(declare-fun c!1158023 () Bool)

(assert (=> b!6361429 (= c!1158023 (isEmpty!37086 (exprs!6153 (h!71432 zl!343))))))

(declare-fun b!6361430 () Bool)

(assert (=> b!6361430 (= e!3862768 e!3862773)))

(declare-fun c!1158021 () Bool)

(assert (=> b!6361430 (= c!1158021 ((_ is Cons!64983) (exprs!6153 (h!71432 zl!343))))))

(assert (= (and d!1995540 res!2617464) b!6361428))

(assert (= (and d!1995540 c!1158022) b!6361423))

(assert (= (and d!1995540 (not c!1158022)) b!6361430))

(assert (= (and b!6361430 c!1158021) b!6361426))

(assert (= (and b!6361430 (not c!1158021)) b!6361422))

(assert (= (and d!1995540 res!2617465) b!6361429))

(assert (= (and b!6361429 c!1158023) b!6361425))

(assert (= (and b!6361429 (not c!1158023)) b!6361427))

(assert (= (and b!6361427 c!1158020) b!6361421))

(assert (= (and b!6361427 (not c!1158020)) b!6361424))

(declare-fun m!7166636 () Bool)

(assert (=> b!6361425 m!7166636))

(declare-fun m!7166638 () Bool)

(assert (=> b!6361424 m!7166638))

(declare-fun m!7166640 () Bool)

(assert (=> b!6361426 m!7166640))

(declare-fun m!7166642 () Bool)

(assert (=> b!6361421 m!7166642))

(declare-fun m!7166644 () Bool)

(assert (=> b!6361429 m!7166644))

(assert (=> b!6361428 m!7166262))

(declare-fun m!7166646 () Bool)

(assert (=> d!1995540 m!7166646))

(declare-fun m!7166648 () Bool)

(assert (=> d!1995540 m!7166648))

(declare-fun m!7166650 () Bool)

(assert (=> b!6361427 m!7166650))

(assert (=> b!6361427 m!7166650))

(declare-fun m!7166652 () Bool)

(assert (=> b!6361427 m!7166652))

(assert (=> b!6360776 d!1995540))

(declare-fun bs!1593999 () Bool)

(declare-fun d!1995542 () Bool)

(assert (= bs!1593999 (and d!1995542 d!1995536)))

(declare-fun lambda!350407 () Int)

(assert (=> bs!1593999 (= lambda!350407 lambda!350398)))

(declare-fun bs!1594000 () Bool)

(assert (= bs!1594000 (and d!1995542 d!1995538)))

(assert (=> bs!1594000 (= lambda!350407 lambda!350401)))

(declare-fun bs!1594001 () Bool)

(assert (= bs!1594001 (and d!1995542 d!1995540)))

(assert (=> bs!1594001 (= lambda!350407 lambda!350404)))

(assert (=> d!1995542 (= (inv!83919 (h!71432 zl!343)) (forall!15447 (exprs!6153 (h!71432 zl!343)) lambda!350407))))

(declare-fun bs!1594002 () Bool)

(assert (= bs!1594002 d!1995542))

(declare-fun m!7166654 () Bool)

(assert (=> bs!1594002 m!7166654))

(assert (=> b!6360774 d!1995542))

(declare-fun e!3862776 () Bool)

(declare-fun d!1995544 () Bool)

(assert (=> d!1995544 (= (matchZipper!2281 ((_ map or) lt!2366796 lt!2366784) (t!378698 s!2326)) e!3862776)))

(declare-fun res!2617468 () Bool)

(assert (=> d!1995544 (=> res!2617468 e!3862776)))

(assert (=> d!1995544 (= res!2617468 (matchZipper!2281 lt!2366796 (t!378698 s!2326)))))

(declare-fun lt!2366880 () Unit!158407)

(declare-fun choose!47250 ((InoxSet Context!11306) (InoxSet Context!11306) List!65106) Unit!158407)

(assert (=> d!1995544 (= lt!2366880 (choose!47250 lt!2366796 lt!2366784 (t!378698 s!2326)))))

(assert (=> d!1995544 (= (lemmaZipperConcatMatchesSameAsBothZippers!1100 lt!2366796 lt!2366784 (t!378698 s!2326)) lt!2366880)))

(declare-fun b!6361433 () Bool)

(assert (=> b!6361433 (= e!3862776 (matchZipper!2281 lt!2366784 (t!378698 s!2326)))))

(assert (= (and d!1995544 (not res!2617468)) b!6361433))

(assert (=> d!1995544 m!7166286))

(assert (=> d!1995544 m!7166284))

(declare-fun m!7166656 () Bool)

(assert (=> d!1995544 m!7166656))

(assert (=> b!6361433 m!7166226))

(assert (=> b!6360775 d!1995544))

(declare-fun d!1995546 () Bool)

(declare-fun c!1158026 () Bool)

(assert (=> d!1995546 (= c!1158026 (isEmpty!37089 (t!378698 s!2326)))))

(declare-fun e!3862779 () Bool)

(assert (=> d!1995546 (= (matchZipper!2281 lt!2366796 (t!378698 s!2326)) e!3862779)))

(declare-fun b!6361438 () Bool)

(declare-fun nullableZipper!2035 ((InoxSet Context!11306)) Bool)

(assert (=> b!6361438 (= e!3862779 (nullableZipper!2035 lt!2366796))))

(declare-fun b!6361439 () Bool)

(declare-fun derivationStepZipper!2235 ((InoxSet Context!11306) C!32808) (InoxSet Context!11306))

(assert (=> b!6361439 (= e!3862779 (matchZipper!2281 (derivationStepZipper!2235 lt!2366796 (head!13030 (t!378698 s!2326))) (tail!12115 (t!378698 s!2326))))))

(assert (= (and d!1995546 c!1158026) b!6361438))

(assert (= (and d!1995546 (not c!1158026)) b!6361439))

(declare-fun m!7166658 () Bool)

(assert (=> d!1995546 m!7166658))

(declare-fun m!7166660 () Bool)

(assert (=> b!6361438 m!7166660))

(declare-fun m!7166662 () Bool)

(assert (=> b!6361439 m!7166662))

(assert (=> b!6361439 m!7166662))

(declare-fun m!7166664 () Bool)

(assert (=> b!6361439 m!7166664))

(declare-fun m!7166666 () Bool)

(assert (=> b!6361439 m!7166666))

(assert (=> b!6361439 m!7166664))

(assert (=> b!6361439 m!7166666))

(declare-fun m!7166668 () Bool)

(assert (=> b!6361439 m!7166668))

(assert (=> b!6360775 d!1995546))

(declare-fun d!1995548 () Bool)

(declare-fun c!1158027 () Bool)

(assert (=> d!1995548 (= c!1158027 (isEmpty!37089 (t!378698 s!2326)))))

(declare-fun e!3862780 () Bool)

(assert (=> d!1995548 (= (matchZipper!2281 ((_ map or) lt!2366796 lt!2366784) (t!378698 s!2326)) e!3862780)))

(declare-fun b!6361440 () Bool)

(assert (=> b!6361440 (= e!3862780 (nullableZipper!2035 ((_ map or) lt!2366796 lt!2366784)))))

(declare-fun b!6361441 () Bool)

(assert (=> b!6361441 (= e!3862780 (matchZipper!2281 (derivationStepZipper!2235 ((_ map or) lt!2366796 lt!2366784) (head!13030 (t!378698 s!2326))) (tail!12115 (t!378698 s!2326))))))

(assert (= (and d!1995548 c!1158027) b!6361440))

(assert (= (and d!1995548 (not c!1158027)) b!6361441))

(assert (=> d!1995548 m!7166658))

(declare-fun m!7166670 () Bool)

(assert (=> b!6361440 m!7166670))

(assert (=> b!6361441 m!7166662))

(assert (=> b!6361441 m!7166662))

(declare-fun m!7166672 () Bool)

(assert (=> b!6361441 m!7166672))

(assert (=> b!6361441 m!7166666))

(assert (=> b!6361441 m!7166672))

(assert (=> b!6361441 m!7166666))

(declare-fun m!7166674 () Bool)

(assert (=> b!6361441 m!7166674))

(assert (=> b!6360775 d!1995548))

(declare-fun bs!1594003 () Bool)

(declare-fun d!1995550 () Bool)

(assert (= bs!1594003 (and d!1995550 d!1995536)))

(declare-fun lambda!350408 () Int)

(assert (=> bs!1594003 (= lambda!350408 lambda!350398)))

(declare-fun bs!1594004 () Bool)

(assert (= bs!1594004 (and d!1995550 d!1995538)))

(assert (=> bs!1594004 (= lambda!350408 lambda!350401)))

(declare-fun bs!1594005 () Bool)

(assert (= bs!1594005 (and d!1995550 d!1995540)))

(assert (=> bs!1594005 (= lambda!350408 lambda!350404)))

(declare-fun bs!1594006 () Bool)

(assert (= bs!1594006 (and d!1995550 d!1995542)))

(assert (=> bs!1594006 (= lambda!350408 lambda!350407)))

(assert (=> d!1995550 (= (inv!83919 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792))) (forall!15447 (exprs!6153 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792))) lambda!350408))))

(declare-fun bs!1594007 () Bool)

(assert (= bs!1594007 d!1995550))

(declare-fun m!7166676 () Bool)

(assert (=> bs!1594007 m!7166676))

(assert (=> b!6360757 d!1995550))

(declare-fun d!1995552 () Bool)

(declare-fun c!1158028 () Bool)

(assert (=> d!1995552 (= c!1158028 (isEmpty!37089 (t!378698 s!2326)))))

(declare-fun e!3862781 () Bool)

(assert (=> d!1995552 (= (matchZipper!2281 lt!2366784 (t!378698 s!2326)) e!3862781)))

(declare-fun b!6361442 () Bool)

(assert (=> b!6361442 (= e!3862781 (nullableZipper!2035 lt!2366784))))

(declare-fun b!6361443 () Bool)

(assert (=> b!6361443 (= e!3862781 (matchZipper!2281 (derivationStepZipper!2235 lt!2366784 (head!13030 (t!378698 s!2326))) (tail!12115 (t!378698 s!2326))))))

(assert (= (and d!1995552 c!1158028) b!6361442))

(assert (= (and d!1995552 (not c!1158028)) b!6361443))

(assert (=> d!1995552 m!7166658))

(declare-fun m!7166678 () Bool)

(assert (=> b!6361442 m!7166678))

(assert (=> b!6361443 m!7166662))

(assert (=> b!6361443 m!7166662))

(declare-fun m!7166680 () Bool)

(assert (=> b!6361443 m!7166680))

(assert (=> b!6361443 m!7166666))

(assert (=> b!6361443 m!7166680))

(assert (=> b!6361443 m!7166666))

(declare-fun m!7166682 () Bool)

(assert (=> b!6361443 m!7166682))

(assert (=> b!6360768 d!1995552))

(declare-fun bs!1594008 () Bool)

(declare-fun d!1995554 () Bool)

(assert (= bs!1594008 (and d!1995554 d!1995540)))

(declare-fun lambda!350409 () Int)

(assert (=> bs!1594008 (= lambda!350409 lambda!350404)))

(declare-fun bs!1594009 () Bool)

(assert (= bs!1594009 (and d!1995554 d!1995538)))

(assert (=> bs!1594009 (= lambda!350409 lambda!350401)))

(declare-fun bs!1594010 () Bool)

(assert (= bs!1594010 (and d!1995554 d!1995542)))

(assert (=> bs!1594010 (= lambda!350409 lambda!350407)))

(declare-fun bs!1594011 () Bool)

(assert (= bs!1594011 (and d!1995554 d!1995550)))

(assert (=> bs!1594011 (= lambda!350409 lambda!350408)))

(declare-fun bs!1594012 () Bool)

(assert (= bs!1594012 (and d!1995554 d!1995536)))

(assert (=> bs!1594012 (= lambda!350409 lambda!350398)))

(assert (=> d!1995554 (= (inv!83919 setElem!43328) (forall!15447 (exprs!6153 setElem!43328) lambda!350409))))

(declare-fun bs!1594013 () Bool)

(assert (= bs!1594013 d!1995554))

(declare-fun m!7166684 () Bool)

(assert (=> bs!1594013 m!7166684))

(assert (=> setNonEmpty!43328 d!1995554))

(declare-fun d!1995556 () Bool)

(assert (=> d!1995556 (= (nullable!6262 (regOne!33050 (regOne!33050 r!7292))) (nullableFct!2209 (regOne!33050 (regOne!33050 r!7292))))))

(declare-fun bs!1594014 () Bool)

(assert (= bs!1594014 d!1995556))

(declare-fun m!7166686 () Bool)

(assert (=> bs!1594014 m!7166686))

(assert (=> b!6360756 d!1995556))

(declare-fun b!6361451 () Bool)

(declare-fun e!3862787 () Bool)

(declare-fun tp!1771445 () Bool)

(assert (=> b!6361451 (= e!3862787 tp!1771445)))

(declare-fun e!3862786 () Bool)

(declare-fun tp!1771446 () Bool)

(declare-fun b!6361450 () Bool)

(assert (=> b!6361450 (= e!3862786 (and (inv!83919 (h!71432 (t!378700 zl!343))) e!3862787 tp!1771446))))

(assert (=> b!6360774 (= tp!1771380 e!3862786)))

(assert (= b!6361450 b!6361451))

(assert (= (and b!6360774 ((_ is Cons!64984) (t!378700 zl!343))) b!6361450))

(declare-fun m!7166688 () Bool)

(assert (=> b!6361450 m!7166688))

(declare-fun b!6361456 () Bool)

(declare-fun e!3862790 () Bool)

(declare-fun tp!1771449 () Bool)

(assert (=> b!6361456 (= e!3862790 (and tp_is_empty!41791 tp!1771449))))

(assert (=> b!6360769 (= tp!1771377 e!3862790)))

(assert (= (and b!6360769 ((_ is Cons!64982) (t!378698 s!2326))) b!6361456))

(declare-fun e!3862793 () Bool)

(assert (=> b!6360753 (= tp!1771378 e!3862793)))

(declare-fun b!6361470 () Bool)

(declare-fun tp!1771462 () Bool)

(declare-fun tp!1771463 () Bool)

(assert (=> b!6361470 (= e!3862793 (and tp!1771462 tp!1771463))))

(declare-fun b!6361468 () Bool)

(declare-fun tp!1771460 () Bool)

(declare-fun tp!1771464 () Bool)

(assert (=> b!6361468 (= e!3862793 (and tp!1771460 tp!1771464))))

(declare-fun b!6361469 () Bool)

(declare-fun tp!1771461 () Bool)

(assert (=> b!6361469 (= e!3862793 tp!1771461)))

(declare-fun b!6361467 () Bool)

(assert (=> b!6361467 (= e!3862793 tp_is_empty!41791)))

(assert (= (and b!6360753 ((_ is ElementMatch!16269) (reg!16598 r!7292))) b!6361467))

(assert (= (and b!6360753 ((_ is Concat!25114) (reg!16598 r!7292))) b!6361468))

(assert (= (and b!6360753 ((_ is Star!16269) (reg!16598 r!7292))) b!6361469))

(assert (= (and b!6360753 ((_ is Union!16269) (reg!16598 r!7292))) b!6361470))

(declare-fun e!3862794 () Bool)

(assert (=> b!6360764 (= tp!1771382 e!3862794)))

(declare-fun b!6361474 () Bool)

(declare-fun tp!1771467 () Bool)

(declare-fun tp!1771468 () Bool)

(assert (=> b!6361474 (= e!3862794 (and tp!1771467 tp!1771468))))

(declare-fun b!6361472 () Bool)

(declare-fun tp!1771465 () Bool)

(declare-fun tp!1771469 () Bool)

(assert (=> b!6361472 (= e!3862794 (and tp!1771465 tp!1771469))))

(declare-fun b!6361473 () Bool)

(declare-fun tp!1771466 () Bool)

(assert (=> b!6361473 (= e!3862794 tp!1771466)))

(declare-fun b!6361471 () Bool)

(assert (=> b!6361471 (= e!3862794 tp_is_empty!41791)))

(assert (= (and b!6360764 ((_ is ElementMatch!16269) (regOne!33050 r!7292))) b!6361471))

(assert (= (and b!6360764 ((_ is Concat!25114) (regOne!33050 r!7292))) b!6361472))

(assert (= (and b!6360764 ((_ is Star!16269) (regOne!33050 r!7292))) b!6361473))

(assert (= (and b!6360764 ((_ is Union!16269) (regOne!33050 r!7292))) b!6361474))

(declare-fun e!3862795 () Bool)

(assert (=> b!6360764 (= tp!1771373 e!3862795)))

(declare-fun b!6361478 () Bool)

(declare-fun tp!1771472 () Bool)

(declare-fun tp!1771473 () Bool)

(assert (=> b!6361478 (= e!3862795 (and tp!1771472 tp!1771473))))

(declare-fun b!6361476 () Bool)

(declare-fun tp!1771470 () Bool)

(declare-fun tp!1771474 () Bool)

(assert (=> b!6361476 (= e!3862795 (and tp!1771470 tp!1771474))))

(declare-fun b!6361477 () Bool)

(declare-fun tp!1771471 () Bool)

(assert (=> b!6361477 (= e!3862795 tp!1771471)))

(declare-fun b!6361475 () Bool)

(assert (=> b!6361475 (= e!3862795 tp_is_empty!41791)))

(assert (= (and b!6360764 ((_ is ElementMatch!16269) (regTwo!33050 r!7292))) b!6361475))

(assert (= (and b!6360764 ((_ is Concat!25114) (regTwo!33050 r!7292))) b!6361476))

(assert (= (and b!6360764 ((_ is Star!16269) (regTwo!33050 r!7292))) b!6361477))

(assert (= (and b!6360764 ((_ is Union!16269) (regTwo!33050 r!7292))) b!6361478))

(declare-fun b!6361483 () Bool)

(declare-fun e!3862798 () Bool)

(declare-fun tp!1771479 () Bool)

(declare-fun tp!1771480 () Bool)

(assert (=> b!6361483 (= e!3862798 (and tp!1771479 tp!1771480))))

(assert (=> b!6360762 (= tp!1771374 e!3862798)))

(assert (= (and b!6360762 ((_ is Cons!64983) (exprs!6153 (h!71432 zl!343)))) b!6361483))

(declare-fun b!6361484 () Bool)

(declare-fun e!3862799 () Bool)

(declare-fun tp!1771481 () Bool)

(declare-fun tp!1771482 () Bool)

(assert (=> b!6361484 (= e!3862799 (and tp!1771481 tp!1771482))))

(assert (=> b!6360777 (= tp!1771376 e!3862799)))

(assert (= (and b!6360777 ((_ is Cons!64983) (exprs!6153 setElem!43328))) b!6361484))

(declare-fun e!3862800 () Bool)

(assert (=> b!6360773 (= tp!1771381 e!3862800)))

(declare-fun b!6361488 () Bool)

(declare-fun tp!1771485 () Bool)

(declare-fun tp!1771486 () Bool)

(assert (=> b!6361488 (= e!3862800 (and tp!1771485 tp!1771486))))

(declare-fun b!6361486 () Bool)

(declare-fun tp!1771483 () Bool)

(declare-fun tp!1771487 () Bool)

(assert (=> b!6361486 (= e!3862800 (and tp!1771483 tp!1771487))))

(declare-fun b!6361487 () Bool)

(declare-fun tp!1771484 () Bool)

(assert (=> b!6361487 (= e!3862800 tp!1771484)))

(declare-fun b!6361485 () Bool)

(assert (=> b!6361485 (= e!3862800 tp_is_empty!41791)))

(assert (= (and b!6360773 ((_ is ElementMatch!16269) (regOne!33051 r!7292))) b!6361485))

(assert (= (and b!6360773 ((_ is Concat!25114) (regOne!33051 r!7292))) b!6361486))

(assert (= (and b!6360773 ((_ is Star!16269) (regOne!33051 r!7292))) b!6361487))

(assert (= (and b!6360773 ((_ is Union!16269) (regOne!33051 r!7292))) b!6361488))

(declare-fun e!3862801 () Bool)

(assert (=> b!6360773 (= tp!1771379 e!3862801)))

(declare-fun b!6361492 () Bool)

(declare-fun tp!1771490 () Bool)

(declare-fun tp!1771491 () Bool)

(assert (=> b!6361492 (= e!3862801 (and tp!1771490 tp!1771491))))

(declare-fun b!6361490 () Bool)

(declare-fun tp!1771488 () Bool)

(declare-fun tp!1771492 () Bool)

(assert (=> b!6361490 (= e!3862801 (and tp!1771488 tp!1771492))))

(declare-fun b!6361491 () Bool)

(declare-fun tp!1771489 () Bool)

(assert (=> b!6361491 (= e!3862801 tp!1771489)))

(declare-fun b!6361489 () Bool)

(assert (=> b!6361489 (= e!3862801 tp_is_empty!41791)))

(assert (= (and b!6360773 ((_ is ElementMatch!16269) (regTwo!33051 r!7292))) b!6361489))

(assert (= (and b!6360773 ((_ is Concat!25114) (regTwo!33051 r!7292))) b!6361490))

(assert (= (and b!6360773 ((_ is Star!16269) (regTwo!33051 r!7292))) b!6361491))

(assert (= (and b!6360773 ((_ is Union!16269) (regTwo!33051 r!7292))) b!6361492))

(declare-fun condSetEmpty!43334 () Bool)

(assert (=> setNonEmpty!43328 (= condSetEmpty!43334 (= setRest!43328 ((as const (Array Context!11306 Bool)) false)))))

(declare-fun setRes!43334 () Bool)

(assert (=> setNonEmpty!43328 (= tp!1771375 setRes!43334)))

(declare-fun setIsEmpty!43334 () Bool)

(assert (=> setIsEmpty!43334 setRes!43334))

(declare-fun setElem!43334 () Context!11306)

(declare-fun setNonEmpty!43334 () Bool)

(declare-fun e!3862804 () Bool)

(declare-fun tp!1771497 () Bool)

(assert (=> setNonEmpty!43334 (= setRes!43334 (and tp!1771497 (inv!83919 setElem!43334) e!3862804))))

(declare-fun setRest!43334 () (InoxSet Context!11306))

(assert (=> setNonEmpty!43334 (= setRest!43328 ((_ map or) (store ((as const (Array Context!11306 Bool)) false) setElem!43334 true) setRest!43334))))

(declare-fun b!6361497 () Bool)

(declare-fun tp!1771498 () Bool)

(assert (=> b!6361497 (= e!3862804 tp!1771498)))

(assert (= (and setNonEmpty!43328 condSetEmpty!43334) setIsEmpty!43334))

(assert (= (and setNonEmpty!43328 (not condSetEmpty!43334)) setNonEmpty!43334))

(assert (= setNonEmpty!43334 b!6361497))

(declare-fun m!7166690 () Bool)

(assert (=> setNonEmpty!43334 m!7166690))

(declare-fun b_lambda!241811 () Bool)

(assert (= b_lambda!241809 (or b!6360754 b_lambda!241811)))

(declare-fun bs!1594015 () Bool)

(declare-fun d!1995558 () Bool)

(assert (= bs!1594015 (and d!1995558 b!6360754)))

(assert (=> bs!1594015 (= (dynLambda!25775 lambda!350351 (h!71432 zl!343)) (derivationStepZipperUp!1443 (h!71432 zl!343) (h!71430 s!2326)))))

(assert (=> bs!1594015 m!7166246))

(assert (=> d!1995530 d!1995558))

(check-sat (not bm!542716) (not b!6361355) (not d!1995514) (not d!1995512) (not bm!542641) (not b!6361399) (not b!6361391) (not bm!542708) (not b!6361487) (not b!6361473) (not bm!542654) (not b!6361385) (not b!6361426) (not b!6361206) (not b!6361429) (not b!6361362) (not d!1995518) (not b!6361490) (not d!1995510) (not b!6361478) (not b!6361477) (not b!6361425) (not b!6361310) (not b!6361440) (not b!6361483) (not b!6360932) (not b!6361035) (not b!6361451) (not b!6361313) (not b!6361470) (not b!6361025) (not b!6361386) (not d!1995522) (not b!6361394) (not d!1995436) (not setNonEmpty!43334) (not b!6361341) (not b!6361315) (not bm!542717) (not b!6361438) (not d!1995474) (not d!1995548) (not b!6361309) (not b!6361339) (not d!1995516) (not d!1995458) (not b!6361474) (not d!1995536) (not b!6361486) (not b!6361456) (not b!6361029) (not d!1995538) (not b!6361036) (not bm!542699) (not bm!542714) (not d!1995540) (not b!6361388) (not d!1995552) (not b!6361311) (not b!6361393) (not bs!1594015) (not bm!542696) (not b!6361443) (not d!1995554) (not b!6361389) (not d!1995530) (not b!6361450) (not b!6361492) (not b!6361421) (not bm!542721) (not b!6361028) (not d!1995544) (not b!6361484) tp_is_empty!41791 (not d!1995508) (not b!6361442) (not b!6361308) (not d!1995556) (not b!6361441) (not b!6360927) (not b!6361491) (not bm!542709) (not b!6361352) (not b_lambda!241811) (not bm!542713) (not b!6361031) (not b!6361427) (not b!6361424) (not b!6361468) (not b!6361357) (not b!6361288) (not d!1995524) (not bm!542642) (not b!6361092) (not b!6361469) (not b!6361360) (not b!6361472) (not b!6361428) (not bm!542698) (not b!6361439) (not b!6361488) (not d!1995542) (not b!6361476) (not b!6361497) (not d!1995480) (not bm!542720) (not b!6361433) (not d!1995546) (not d!1995550))
(check-sat)
(get-model)

(declare-fun bs!1594018 () Bool)

(declare-fun d!1995578 () Bool)

(assert (= bs!1594018 (and d!1995578 d!1995554)))

(declare-fun lambda!350413 () Int)

(assert (=> bs!1594018 (= lambda!350413 lambda!350409)))

(declare-fun bs!1594019 () Bool)

(assert (= bs!1594019 (and d!1995578 d!1995540)))

(assert (=> bs!1594019 (= lambda!350413 lambda!350404)))

(declare-fun bs!1594020 () Bool)

(assert (= bs!1594020 (and d!1995578 d!1995538)))

(assert (=> bs!1594020 (= lambda!350413 lambda!350401)))

(declare-fun bs!1594021 () Bool)

(assert (= bs!1594021 (and d!1995578 d!1995542)))

(assert (=> bs!1594021 (= lambda!350413 lambda!350407)))

(declare-fun bs!1594022 () Bool)

(assert (= bs!1594022 (and d!1995578 d!1995550)))

(assert (=> bs!1594022 (= lambda!350413 lambda!350408)))

(declare-fun bs!1594023 () Bool)

(assert (= bs!1594023 (and d!1995578 d!1995536)))

(assert (=> bs!1594023 (= lambda!350413 lambda!350398)))

(assert (=> d!1995578 (= (inv!83919 (h!71432 (t!378700 zl!343))) (forall!15447 (exprs!6153 (h!71432 (t!378700 zl!343))) lambda!350413))))

(declare-fun bs!1594024 () Bool)

(assert (= bs!1594024 d!1995578))

(declare-fun m!7166734 () Bool)

(assert (=> bs!1594024 m!7166734))

(assert (=> b!6361450 d!1995578))

(declare-fun d!1995582 () Bool)

(assert (=> d!1995582 (= (isEmpty!37089 s!2326) ((_ is Nil!64982) s!2326))))

(assert (=> bm!542641 d!1995582))

(declare-fun d!1995586 () Bool)

(assert (=> d!1995586 (= (isEmpty!37086 (unfocusZipperList!1690 zl!343)) ((_ is Nil!64983) (unfocusZipperList!1690 zl!343)))))

(assert (=> b!6361393 d!1995586))

(declare-fun d!1995588 () Bool)

(assert (=> d!1995588 true))

(declare-fun setRes!43339 () Bool)

(assert (=> d!1995588 setRes!43339))

(declare-fun condSetEmpty!43339 () Bool)

(declare-fun res!2617493 () (InoxSet Context!11306))

(assert (=> d!1995588 (= condSetEmpty!43339 (= res!2617493 ((as const (Array Context!11306 Bool)) false)))))

(assert (=> d!1995588 (= (choose!47248 z!1189 lambda!350351) res!2617493)))

(declare-fun setIsEmpty!43339 () Bool)

(assert (=> setIsEmpty!43339 setRes!43339))

(declare-fun e!3862842 () Bool)

(declare-fun setElem!43339 () Context!11306)

(declare-fun tp!1771508 () Bool)

(declare-fun setNonEmpty!43339 () Bool)

(assert (=> setNonEmpty!43339 (= setRes!43339 (and tp!1771508 (inv!83919 setElem!43339) e!3862842))))

(declare-fun setRest!43339 () (InoxSet Context!11306))

(assert (=> setNonEmpty!43339 (= res!2617493 ((_ map or) (store ((as const (Array Context!11306 Bool)) false) setElem!43339 true) setRest!43339))))

(declare-fun b!6361551 () Bool)

(declare-fun tp!1771507 () Bool)

(assert (=> b!6361551 (= e!3862842 tp!1771507)))

(assert (= (and d!1995588 condSetEmpty!43339) setIsEmpty!43339))

(assert (= (and d!1995588 (not condSetEmpty!43339)) setNonEmpty!43339))

(assert (= setNonEmpty!43339 b!6361551))

(declare-fun m!7166742 () Bool)

(assert (=> setNonEmpty!43339 m!7166742))

(assert (=> d!1995522 d!1995588))

(declare-fun d!1995592 () Bool)

(assert (=> d!1995592 (= (isEmptyExpr!1671 lt!2366877) ((_ is EmptyExpr!16269) lt!2366877))))

(assert (=> b!6361425 d!1995592))

(assert (=> bm!542654 d!1995582))

(declare-fun bs!1594025 () Bool)

(declare-fun d!1995594 () Bool)

(assert (= bs!1594025 (and d!1995594 d!1995554)))

(declare-fun lambda!350414 () Int)

(assert (=> bs!1594025 (= lambda!350414 lambda!350409)))

(declare-fun bs!1594026 () Bool)

(assert (= bs!1594026 (and d!1995594 d!1995540)))

(assert (=> bs!1594026 (= lambda!350414 lambda!350404)))

(declare-fun bs!1594027 () Bool)

(assert (= bs!1594027 (and d!1995594 d!1995538)))

(assert (=> bs!1594027 (= lambda!350414 lambda!350401)))

(declare-fun bs!1594028 () Bool)

(assert (= bs!1594028 (and d!1995594 d!1995542)))

(assert (=> bs!1594028 (= lambda!350414 lambda!350407)))

(declare-fun bs!1594029 () Bool)

(assert (= bs!1594029 (and d!1995594 d!1995550)))

(assert (=> bs!1594029 (= lambda!350414 lambda!350408)))

(declare-fun bs!1594030 () Bool)

(assert (= bs!1594030 (and d!1995594 d!1995536)))

(assert (=> bs!1594030 (= lambda!350414 lambda!350398)))

(declare-fun bs!1594031 () Bool)

(assert (= bs!1594031 (and d!1995594 d!1995578)))

(assert (=> bs!1594031 (= lambda!350414 lambda!350413)))

(assert (=> d!1995594 (= (inv!83919 setElem!43334) (forall!15447 (exprs!6153 setElem!43334) lambda!350414))))

(declare-fun bs!1594032 () Bool)

(assert (= bs!1594032 d!1995594))

(declare-fun m!7166744 () Bool)

(assert (=> bs!1594032 m!7166744))

(assert (=> setNonEmpty!43334 d!1995594))

(assert (=> b!6361433 d!1995552))

(declare-fun d!1995596 () Bool)

(assert (=> d!1995596 (= (isEmpty!37086 (tail!12116 (exprs!6153 (h!71432 zl!343)))) ((_ is Nil!64983) (tail!12116 (exprs!6153 (h!71432 zl!343)))))))

(assert (=> b!6361427 d!1995596))

(declare-fun d!1995598 () Bool)

(assert (=> d!1995598 (= (tail!12116 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))

(assert (=> b!6361427 d!1995598))

(declare-fun d!1995600 () Bool)

(assert (=> d!1995600 (= (nullable!6262 (regOne!33050 (reg!16598 (regOne!33050 r!7292)))) (nullableFct!2209 (regOne!33050 (reg!16598 (regOne!33050 r!7292)))))))

(declare-fun bs!1594033 () Bool)

(assert (= bs!1594033 d!1995600))

(declare-fun m!7166748 () Bool)

(assert (=> bs!1594033 m!7166748))

(assert (=> b!6361206 d!1995600))

(declare-fun d!1995604 () Bool)

(assert (=> d!1995604 (= ($colon$colon!2130 (exprs!6153 lt!2366785) (ite (or c!1157991 c!1157990) (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (h!71431 (exprs!6153 (h!71432 zl!343))))) (Cons!64983 (ite (or c!1157991 c!1157990) (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (h!71431 (exprs!6153 (h!71432 zl!343)))) (exprs!6153 lt!2366785)))))

(assert (=> bm!542714 d!1995604))

(declare-fun d!1995606 () Bool)

(assert (=> d!1995606 (= (isEmpty!37086 (exprs!6153 (h!71432 zl!343))) ((_ is Nil!64983) (exprs!6153 (h!71432 zl!343))))))

(assert (=> b!6361429 d!1995606))

(declare-fun bs!1594037 () Bool)

(declare-fun b!6361553 () Bool)

(assert (= bs!1594037 (and b!6361553 d!1995514)))

(declare-fun lambda!350416 () Int)

(assert (=> bs!1594037 (not (= lambda!350416 lambda!350389))))

(declare-fun bs!1594039 () Bool)

(assert (= bs!1594039 (and b!6361553 b!6360763)))

(assert (=> bs!1594039 (not (= lambda!350416 lambda!350350))))

(declare-fun bs!1594041 () Bool)

(assert (= bs!1594041 (and b!6361553 d!1995516)))

(assert (=> bs!1594041 (not (= lambda!350416 lambda!350395))))

(declare-fun bs!1594043 () Bool)

(assert (= bs!1594043 (and b!6361553 b!6360930)))

(assert (=> bs!1594043 (not (= lambda!350416 lambda!350375))))

(assert (=> bs!1594041 (not (= lambda!350416 lambda!350394))))

(assert (=> bs!1594039 (not (= lambda!350416 lambda!350349))))

(declare-fun bs!1594044 () Bool)

(assert (= bs!1594044 (and b!6361553 b!6360922)))

(assert (=> bs!1594044 (= (and (= (reg!16598 (regTwo!33051 r!7292)) (reg!16598 r!7292)) (= (regTwo!33051 r!7292) r!7292)) (= lambda!350416 lambda!350374))))

(assert (=> b!6361553 true))

(assert (=> b!6361553 true))

(declare-fun bs!1594046 () Bool)

(declare-fun b!6361561 () Bool)

(assert (= bs!1594046 (and b!6361561 d!1995514)))

(declare-fun lambda!350417 () Int)

(assert (=> bs!1594046 (not (= lambda!350417 lambda!350389))))

(declare-fun bs!1594047 () Bool)

(assert (= bs!1594047 (and b!6361561 b!6360763)))

(assert (=> bs!1594047 (= (and (= (regOne!33050 (regTwo!33051 r!7292)) (regOne!33050 r!7292)) (= (regTwo!33050 (regTwo!33051 r!7292)) (regTwo!33050 r!7292))) (= lambda!350417 lambda!350350))))

(declare-fun bs!1594048 () Bool)

(assert (= bs!1594048 (and b!6361561 d!1995516)))

(assert (=> bs!1594048 (= (and (= (regOne!33050 (regTwo!33051 r!7292)) (regOne!33050 r!7292)) (= (regTwo!33050 (regTwo!33051 r!7292)) (regTwo!33050 r!7292))) (= lambda!350417 lambda!350395))))

(declare-fun bs!1594049 () Bool)

(assert (= bs!1594049 (and b!6361561 b!6361553)))

(assert (=> bs!1594049 (not (= lambda!350417 lambda!350416))))

(declare-fun bs!1594050 () Bool)

(assert (= bs!1594050 (and b!6361561 b!6360930)))

(assert (=> bs!1594050 (= (and (= (regOne!33050 (regTwo!33051 r!7292)) (regOne!33050 r!7292)) (= (regTwo!33050 (regTwo!33051 r!7292)) (regTwo!33050 r!7292))) (= lambda!350417 lambda!350375))))

(assert (=> bs!1594048 (not (= lambda!350417 lambda!350394))))

(assert (=> bs!1594047 (not (= lambda!350417 lambda!350349))))

(declare-fun bs!1594051 () Bool)

(assert (= bs!1594051 (and b!6361561 b!6360922)))

(assert (=> bs!1594051 (not (= lambda!350417 lambda!350374))))

(assert (=> b!6361561 true))

(assert (=> b!6361561 true))

(declare-fun bm!542739 () Bool)

(declare-fun call!542744 () Bool)

(assert (=> bm!542739 (= call!542744 (isEmpty!37089 s!2326))))

(declare-fun e!3862850 () Bool)

(declare-fun call!542745 () Bool)

(assert (=> b!6361553 (= e!3862850 call!542745)))

(declare-fun b!6361554 () Bool)

(declare-fun res!2617496 () Bool)

(assert (=> b!6361554 (=> res!2617496 e!3862850)))

(assert (=> b!6361554 (= res!2617496 call!542744)))

(declare-fun e!3862847 () Bool)

(assert (=> b!6361554 (= e!3862847 e!3862850)))

(declare-fun b!6361555 () Bool)

(declare-fun e!3862846 () Bool)

(assert (=> b!6361555 (= e!3862846 call!542744)))

(declare-fun b!6361557 () Bool)

(declare-fun e!3862844 () Bool)

(assert (=> b!6361557 (= e!3862846 e!3862844)))

(declare-fun res!2617495 () Bool)

(assert (=> b!6361557 (= res!2617495 (not ((_ is EmptyLang!16269) (regTwo!33051 r!7292))))))

(assert (=> b!6361557 (=> (not res!2617495) (not e!3862844))))

(declare-fun b!6361558 () Bool)

(declare-fun e!3862845 () Bool)

(assert (=> b!6361558 (= e!3862845 (matchRSpec!3370 (regTwo!33051 (regTwo!33051 r!7292)) s!2326))))

(declare-fun bm!542740 () Bool)

(declare-fun c!1158050 () Bool)

(assert (=> bm!542740 (= call!542745 (Exists!3339 (ite c!1158050 lambda!350416 lambda!350417)))))

(declare-fun b!6361559 () Bool)

(declare-fun e!3862848 () Bool)

(assert (=> b!6361559 (= e!3862848 (= s!2326 (Cons!64982 (c!1157838 (regTwo!33051 r!7292)) Nil!64982)))))

(declare-fun b!6361560 () Bool)

(declare-fun e!3862849 () Bool)

(assert (=> b!6361560 (= e!3862849 e!3862847)))

(assert (=> b!6361560 (= c!1158050 ((_ is Star!16269) (regTwo!33051 r!7292)))))

(assert (=> b!6361561 (= e!3862847 call!542745)))

(declare-fun b!6361562 () Bool)

(declare-fun c!1158049 () Bool)

(assert (=> b!6361562 (= c!1158049 ((_ is ElementMatch!16269) (regTwo!33051 r!7292)))))

(assert (=> b!6361562 (= e!3862844 e!3862848)))

(declare-fun b!6361563 () Bool)

(assert (=> b!6361563 (= e!3862849 e!3862845)))

(declare-fun res!2617497 () Bool)

(assert (=> b!6361563 (= res!2617497 (matchRSpec!3370 (regOne!33051 (regTwo!33051 r!7292)) s!2326))))

(assert (=> b!6361563 (=> res!2617497 e!3862845)))

(declare-fun b!6361556 () Bool)

(declare-fun c!1158048 () Bool)

(assert (=> b!6361556 (= c!1158048 ((_ is Union!16269) (regTwo!33051 r!7292)))))

(assert (=> b!6361556 (= e!3862848 e!3862849)))

(declare-fun d!1995608 () Bool)

(declare-fun c!1158047 () Bool)

(assert (=> d!1995608 (= c!1158047 ((_ is EmptyExpr!16269) (regTwo!33051 r!7292)))))

(assert (=> d!1995608 (= (matchRSpec!3370 (regTwo!33051 r!7292) s!2326) e!3862846)))

(assert (= (and d!1995608 c!1158047) b!6361555))

(assert (= (and d!1995608 (not c!1158047)) b!6361557))

(assert (= (and b!6361557 res!2617495) b!6361562))

(assert (= (and b!6361562 c!1158049) b!6361559))

(assert (= (and b!6361562 (not c!1158049)) b!6361556))

(assert (= (and b!6361556 c!1158048) b!6361563))

(assert (= (and b!6361556 (not c!1158048)) b!6361560))

(assert (= (and b!6361563 (not res!2617497)) b!6361558))

(assert (= (and b!6361560 c!1158050) b!6361554))

(assert (= (and b!6361560 (not c!1158050)) b!6361561))

(assert (= (and b!6361554 (not res!2617496)) b!6361553))

(assert (= (or b!6361553 b!6361561) bm!542740))

(assert (= (or b!6361555 b!6361554) bm!542739))

(assert (=> bm!542739 m!7166358))

(declare-fun m!7166764 () Bool)

(assert (=> b!6361558 m!7166764))

(declare-fun m!7166766 () Bool)

(assert (=> bm!542740 m!7166766))

(declare-fun m!7166770 () Bool)

(assert (=> b!6361563 m!7166770))

(assert (=> b!6360927 d!1995608))

(declare-fun d!1995622 () Bool)

(declare-fun res!2617509 () Bool)

(declare-fun e!3862865 () Bool)

(assert (=> d!1995622 (=> res!2617509 e!3862865)))

(assert (=> d!1995622 (= res!2617509 ((_ is Nil!64983) (exprs!6153 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792)))))))

(assert (=> d!1995622 (= (forall!15447 (exprs!6153 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792))) lambda!350408) e!3862865)))

(declare-fun b!6361581 () Bool)

(declare-fun e!3862866 () Bool)

(assert (=> b!6361581 (= e!3862865 e!3862866)))

(declare-fun res!2617510 () Bool)

(assert (=> b!6361581 (=> (not res!2617510) (not e!3862866))))

(declare-fun dynLambda!25777 (Int Regex!16269) Bool)

(assert (=> b!6361581 (= res!2617510 (dynLambda!25777 lambda!350408 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792))))))))

(declare-fun b!6361582 () Bool)

(assert (=> b!6361582 (= e!3862866 (forall!15447 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792)))) lambda!350408))))

(assert (= (and d!1995622 (not res!2617509)) b!6361581))

(assert (= (and b!6361581 res!2617510) b!6361582))

(declare-fun b_lambda!241819 () Bool)

(assert (=> (not b_lambda!241819) (not b!6361581)))

(declare-fun m!7166774 () Bool)

(assert (=> b!6361581 m!7166774))

(declare-fun m!7166776 () Bool)

(assert (=> b!6361582 m!7166776))

(assert (=> d!1995550 d!1995622))

(assert (=> b!6361399 d!1995540))

(declare-fun bs!1594052 () Bool)

(declare-fun d!1995628 () Bool)

(assert (= bs!1594052 (and d!1995628 d!1995554)))

(declare-fun lambda!350418 () Int)

(assert (=> bs!1594052 (= lambda!350418 lambda!350409)))

(declare-fun bs!1594053 () Bool)

(assert (= bs!1594053 (and d!1995628 d!1995540)))

(assert (=> bs!1594053 (= lambda!350418 lambda!350404)))

(declare-fun bs!1594054 () Bool)

(assert (= bs!1594054 (and d!1995628 d!1995594)))

(assert (=> bs!1594054 (= lambda!350418 lambda!350414)))

(declare-fun bs!1594055 () Bool)

(assert (= bs!1594055 (and d!1995628 d!1995538)))

(assert (=> bs!1594055 (= lambda!350418 lambda!350401)))

(declare-fun bs!1594056 () Bool)

(assert (= bs!1594056 (and d!1995628 d!1995542)))

(assert (=> bs!1594056 (= lambda!350418 lambda!350407)))

(declare-fun bs!1594057 () Bool)

(assert (= bs!1594057 (and d!1995628 d!1995550)))

(assert (=> bs!1594057 (= lambda!350418 lambda!350408)))

(declare-fun bs!1594058 () Bool)

(assert (= bs!1594058 (and d!1995628 d!1995536)))

(assert (=> bs!1594058 (= lambda!350418 lambda!350398)))

(declare-fun bs!1594059 () Bool)

(assert (= bs!1594059 (and d!1995628 d!1995578)))

(assert (=> bs!1594059 (= lambda!350418 lambda!350413)))

(declare-fun lt!2366882 () List!65107)

(assert (=> d!1995628 (forall!15447 lt!2366882 lambda!350418)))

(declare-fun e!3862867 () List!65107)

(assert (=> d!1995628 (= lt!2366882 e!3862867)))

(declare-fun c!1158054 () Bool)

(assert (=> d!1995628 (= c!1158054 ((_ is Cons!64984) (t!378700 zl!343)))))

(assert (=> d!1995628 (= (unfocusZipperList!1690 (t!378700 zl!343)) lt!2366882)))

(declare-fun b!6361583 () Bool)

(assert (=> b!6361583 (= e!3862867 (Cons!64983 (generalisedConcat!1866 (exprs!6153 (h!71432 (t!378700 zl!343)))) (unfocusZipperList!1690 (t!378700 (t!378700 zl!343)))))))

(declare-fun b!6361584 () Bool)

(assert (=> b!6361584 (= e!3862867 Nil!64983)))

(assert (= (and d!1995628 c!1158054) b!6361583))

(assert (= (and d!1995628 (not c!1158054)) b!6361584))

(declare-fun m!7166778 () Bool)

(assert (=> d!1995628 m!7166778))

(declare-fun m!7166780 () Bool)

(assert (=> b!6361583 m!7166780))

(declare-fun m!7166782 () Bool)

(assert (=> b!6361583 m!7166782))

(assert (=> b!6361399 d!1995628))

(declare-fun d!1995630 () Bool)

(assert (=> d!1995630 (= (isEmpty!37089 (t!378698 s!2326)) ((_ is Nil!64982) (t!378698 s!2326)))))

(assert (=> d!1995546 d!1995630))

(declare-fun b!6361589 () Bool)

(declare-fun e!3862873 () Bool)

(declare-fun e!3862872 () Bool)

(assert (=> b!6361589 (= e!3862873 e!3862872)))

(declare-fun res!2617516 () Bool)

(assert (=> b!6361589 (=> (not res!2617516) (not e!3862872))))

(declare-fun call!542749 () Bool)

(assert (=> b!6361589 (= res!2617516 call!542749)))

(declare-fun b!6361590 () Bool)

(declare-fun e!3862878 () Bool)

(declare-fun e!3862877 () Bool)

(assert (=> b!6361590 (= e!3862878 e!3862877)))

(declare-fun c!1158056 () Bool)

(assert (=> b!6361590 (= c!1158056 ((_ is Star!16269) (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))))))

(declare-fun b!6361591 () Bool)

(declare-fun e!3862875 () Bool)

(declare-fun call!542750 () Bool)

(assert (=> b!6361591 (= e!3862875 call!542750)))

(declare-fun b!6361592 () Bool)

(declare-fun call!542751 () Bool)

(assert (=> b!6361592 (= e!3862872 call!542751)))

(declare-fun bm!542744 () Bool)

(declare-fun c!1158055 () Bool)

(assert (=> bm!542744 (= call!542751 (validRegex!8005 (ite c!1158055 (regTwo!33051 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))) (regTwo!33050 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))))))))

(declare-fun bm!542745 () Bool)

(assert (=> bm!542745 (= call!542750 (validRegex!8005 (ite c!1158056 (reg!16598 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))) (ite c!1158055 (regOne!33051 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))) (regOne!33050 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292))))))))))

(declare-fun bm!542746 () Bool)

(assert (=> bm!542746 (= call!542749 call!542750)))

(declare-fun b!6361593 () Bool)

(declare-fun e!3862876 () Bool)

(assert (=> b!6361593 (= e!3862876 call!542751)))

(declare-fun b!6361594 () Bool)

(declare-fun res!2617518 () Bool)

(assert (=> b!6361594 (=> (not res!2617518) (not e!3862876))))

(assert (=> b!6361594 (= res!2617518 call!542749)))

(declare-fun e!3862874 () Bool)

(assert (=> b!6361594 (= e!3862874 e!3862876)))

(declare-fun b!6361595 () Bool)

(assert (=> b!6361595 (= e!3862877 e!3862874)))

(assert (=> b!6361595 (= c!1158055 ((_ is Union!16269) (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))))))

(declare-fun b!6361596 () Bool)

(assert (=> b!6361596 (= e!3862877 e!3862875)))

(declare-fun res!2617517 () Bool)

(assert (=> b!6361596 (= res!2617517 (not (nullable!6262 (reg!16598 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))))))))

(assert (=> b!6361596 (=> (not res!2617517) (not e!3862875))))

(declare-fun d!1995632 () Bool)

(declare-fun res!2617515 () Bool)

(assert (=> d!1995632 (=> res!2617515 e!3862878)))

(assert (=> d!1995632 (= res!2617515 ((_ is ElementMatch!16269) (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))))))

(assert (=> d!1995632 (= (validRegex!8005 (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292)))) e!3862878)))

(declare-fun b!6361597 () Bool)

(declare-fun res!2617519 () Bool)

(assert (=> b!6361597 (=> res!2617519 e!3862873)))

(assert (=> b!6361597 (= res!2617519 (not ((_ is Concat!25114) (ite c!1157975 (reg!16598 r!7292) (ite c!1157974 (regOne!33051 r!7292) (regOne!33050 r!7292))))))))

(assert (=> b!6361597 (= e!3862874 e!3862873)))

(assert (= (and d!1995632 (not res!2617515)) b!6361590))

(assert (= (and b!6361590 c!1158056) b!6361596))

(assert (= (and b!6361590 (not c!1158056)) b!6361595))

(assert (= (and b!6361596 res!2617517) b!6361591))

(assert (= (and b!6361595 c!1158055) b!6361594))

(assert (= (and b!6361595 (not c!1158055)) b!6361597))

(assert (= (and b!6361594 res!2617518) b!6361593))

(assert (= (and b!6361597 (not res!2617519)) b!6361589))

(assert (= (and b!6361589 res!2617516) b!6361592))

(assert (= (or b!6361593 b!6361592) bm!542744))

(assert (= (or b!6361594 b!6361589) bm!542746))

(assert (= (or b!6361591 bm!542746) bm!542745))

(declare-fun m!7166784 () Bool)

(assert (=> bm!542744 m!7166784))

(declare-fun m!7166786 () Bool)

(assert (=> bm!542745 m!7166786))

(declare-fun m!7166788 () Bool)

(assert (=> b!6361596 m!7166788))

(assert (=> bm!542709 d!1995632))

(declare-fun d!1995634 () Bool)

(declare-fun res!2617522 () Bool)

(declare-fun e!3862881 () Bool)

(assert (=> d!1995634 (=> res!2617522 e!3862881)))

(assert (=> d!1995634 (= res!2617522 ((_ is Nil!64983) (exprs!6153 (h!71432 zl!343))))))

(assert (=> d!1995634 (= (forall!15447 (exprs!6153 (h!71432 zl!343)) lambda!350407) e!3862881)))

(declare-fun b!6361600 () Bool)

(declare-fun e!3862882 () Bool)

(assert (=> b!6361600 (= e!3862881 e!3862882)))

(declare-fun res!2617523 () Bool)

(assert (=> b!6361600 (=> (not res!2617523) (not e!3862882))))

(assert (=> b!6361600 (= res!2617523 (dynLambda!25777 lambda!350407 (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361601 () Bool)

(assert (=> b!6361601 (= e!3862882 (forall!15447 (t!378699 (exprs!6153 (h!71432 zl!343))) lambda!350407))))

(assert (= (and d!1995634 (not res!2617522)) b!6361600))

(assert (= (and b!6361600 res!2617523) b!6361601))

(declare-fun b_lambda!241821 () Bool)

(assert (=> (not b_lambda!241821) (not b!6361600)))

(declare-fun m!7166790 () Bool)

(assert (=> b!6361600 m!7166790))

(declare-fun m!7166792 () Bool)

(assert (=> b!6361601 m!7166792))

(assert (=> d!1995542 d!1995634))

(declare-fun d!1995636 () Bool)

(assert (=> d!1995636 (= ($colon$colon!2130 (exprs!6153 (Context!11307 lt!2366792)) (ite (or c!1157968 c!1157967) (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (regOne!33050 r!7292)))) (Cons!64983 (ite (or c!1157968 c!1157967) (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (regOne!33050 r!7292))) (exprs!6153 (Context!11307 lt!2366792))))))

(assert (=> bm!542696 d!1995636))

(declare-fun c!1158059 () Bool)

(declare-fun bm!542747 () Bool)

(declare-fun c!1158060 () Bool)

(declare-fun call!542753 () List!65107)

(assert (=> bm!542747 (= call!542753 ($colon$colon!2130 (exprs!6153 (ite c!1157988 lt!2366785 (Context!11307 call!542720))) (ite (or c!1158060 c!1158059) (regTwo!33050 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))) (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))))))))

(declare-fun bm!542748 () Bool)

(declare-fun call!542757 () List!65107)

(assert (=> bm!542748 (= call!542757 call!542753)))

(declare-fun e!3862885 () (InoxSet Context!11306))

(declare-fun b!6361602 () Bool)

(assert (=> b!6361602 (= e!3862885 (store ((as const (Array Context!11306 Bool)) false) (ite c!1157988 lt!2366785 (Context!11307 call!542720)) true))))

(declare-fun b!6361603 () Bool)

(declare-fun e!3862883 () (InoxSet Context!11306))

(declare-fun call!542755 () (InoxSet Context!11306))

(assert (=> b!6361603 (= e!3862883 call!542755)))

(declare-fun b!6361604 () Bool)

(declare-fun c!1158061 () Bool)

(assert (=> b!6361604 (= c!1158061 ((_ is Star!16269) (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun e!3862888 () (InoxSet Context!11306))

(assert (=> b!6361604 (= e!3862888 e!3862883)))

(declare-fun b!6361605 () Bool)

(declare-fun e!3862886 () (InoxSet Context!11306))

(assert (=> b!6361605 (= e!3862885 e!3862886)))

(declare-fun c!1158057 () Bool)

(assert (=> b!6361605 (= c!1158057 ((_ is Union!16269) (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun call!542756 () (InoxSet Context!11306))

(declare-fun bm!542749 () Bool)

(assert (=> bm!542749 (= call!542756 (derivationStepZipperDown!1517 (ite c!1158057 (regOne!33051 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))) (regOne!33050 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))))) (ite c!1158057 (ite c!1157988 lt!2366785 (Context!11307 call!542720)) (Context!11307 call!542753)) (h!71430 s!2326)))))

(declare-fun b!6361606 () Bool)

(declare-fun e!3862884 () Bool)

(assert (=> b!6361606 (= c!1158060 e!3862884)))

(declare-fun res!2617524 () Bool)

(assert (=> b!6361606 (=> (not res!2617524) (not e!3862884))))

(assert (=> b!6361606 (= res!2617524 ((_ is Concat!25114) (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun e!3862887 () (InoxSet Context!11306))

(assert (=> b!6361606 (= e!3862886 e!3862887)))

(declare-fun b!6361608 () Bool)

(declare-fun call!542754 () (InoxSet Context!11306))

(assert (=> b!6361608 (= e!3862887 ((_ map or) call!542756 call!542754))))

(declare-fun bm!542750 () Bool)

(declare-fun call!542752 () (InoxSet Context!11306))

(assert (=> bm!542750 (= call!542752 (derivationStepZipperDown!1517 (ite c!1158057 (regTwo!33051 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))) (ite c!1158060 (regTwo!33050 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))) (ite c!1158059 (regOne!33050 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))) (reg!16598 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))))))) (ite (or c!1158057 c!1158060) (ite c!1157988 lt!2366785 (Context!11307 call!542720)) (Context!11307 call!542757)) (h!71430 s!2326)))))

(declare-fun bm!542751 () Bool)

(assert (=> bm!542751 (= call!542754 call!542752)))

(declare-fun b!6361609 () Bool)

(assert (=> b!6361609 (= e!3862887 e!3862888)))

(assert (=> b!6361609 (= c!1158059 ((_ is Concat!25114) (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun b!6361610 () Bool)

(assert (=> b!6361610 (= e!3862884 (nullable!6262 (regOne!33050 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))))))))

(declare-fun b!6361611 () Bool)

(assert (=> b!6361611 (= e!3862886 ((_ map or) call!542756 call!542752))))

(declare-fun bm!542752 () Bool)

(assert (=> bm!542752 (= call!542755 call!542754)))

(declare-fun b!6361612 () Bool)

(assert (=> b!6361612 (= e!3862883 ((as const (Array Context!11306 Bool)) false))))

(declare-fun d!1995638 () Bool)

(declare-fun c!1158058 () Bool)

(assert (=> d!1995638 (= c!1158058 (and ((_ is ElementMatch!16269) (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))) (= (c!1157838 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))) (h!71430 s!2326))))))

(assert (=> d!1995638 (= (derivationStepZipperDown!1517 (ite c!1157988 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))) (ite c!1157988 lt!2366785 (Context!11307 call!542720)) (h!71430 s!2326)) e!3862885)))

(declare-fun b!6361607 () Bool)

(assert (=> b!6361607 (= e!3862888 call!542755)))

(assert (= (and d!1995638 c!1158058) b!6361602))

(assert (= (and d!1995638 (not c!1158058)) b!6361605))

(assert (= (and b!6361605 c!1158057) b!6361611))

(assert (= (and b!6361605 (not c!1158057)) b!6361606))

(assert (= (and b!6361606 res!2617524) b!6361610))

(assert (= (and b!6361606 c!1158060) b!6361608))

(assert (= (and b!6361606 (not c!1158060)) b!6361609))

(assert (= (and b!6361609 c!1158059) b!6361607))

(assert (= (and b!6361609 (not c!1158059)) b!6361604))

(assert (= (and b!6361604 c!1158061) b!6361603))

(assert (= (and b!6361604 (not c!1158061)) b!6361612))

(assert (= (or b!6361607 b!6361603) bm!542748))

(assert (= (or b!6361607 b!6361603) bm!542752))

(assert (= (or b!6361608 bm!542748) bm!542747))

(assert (= (or b!6361608 bm!542752) bm!542751))

(assert (= (or b!6361611 bm!542751) bm!542750))

(assert (= (or b!6361611 b!6361608) bm!542749))

(declare-fun m!7166798 () Bool)

(assert (=> bm!542747 m!7166798))

(declare-fun m!7166800 () Bool)

(assert (=> b!6361602 m!7166800))

(declare-fun m!7166802 () Bool)

(assert (=> bm!542749 m!7166802))

(declare-fun m!7166804 () Bool)

(assert (=> b!6361610 m!7166804))

(declare-fun m!7166806 () Bool)

(assert (=> bm!542750 m!7166806))

(assert (=> bm!542716 d!1995638))

(declare-fun b!6361619 () Bool)

(declare-fun e!3862897 () Bool)

(declare-fun e!3862896 () Bool)

(assert (=> b!6361619 (= e!3862897 e!3862896)))

(declare-fun c!1158062 () Bool)

(assert (=> b!6361619 (= c!1158062 ((_ is EmptyLang!16269) (regOne!33050 r!7292)))))

(declare-fun b!6361620 () Bool)

(declare-fun e!3862901 () Bool)

(assert (=> b!6361620 (= e!3862901 (matchR!8452 (derivativeStep!4974 (regOne!33050 r!7292) (head!13030 (_1!36551 (get!22488 lt!2366859)))) (tail!12115 (_1!36551 (get!22488 lt!2366859)))))))

(declare-fun b!6361621 () Bool)

(declare-fun e!3862898 () Bool)

(declare-fun e!3862900 () Bool)

(assert (=> b!6361621 (= e!3862898 e!3862900)))

(declare-fun res!2617533 () Bool)

(assert (=> b!6361621 (=> res!2617533 e!3862900)))

(declare-fun call!542758 () Bool)

(assert (=> b!6361621 (= res!2617533 call!542758)))

(declare-fun b!6361622 () Bool)

(declare-fun lt!2366883 () Bool)

(assert (=> b!6361622 (= e!3862896 (not lt!2366883))))

(declare-fun b!6361623 () Bool)

(declare-fun e!3862899 () Bool)

(assert (=> b!6361623 (= e!3862899 (= (head!13030 (_1!36551 (get!22488 lt!2366859))) (c!1157838 (regOne!33050 r!7292))))))

(declare-fun bm!542753 () Bool)

(assert (=> bm!542753 (= call!542758 (isEmpty!37089 (_1!36551 (get!22488 lt!2366859))))))

(declare-fun b!6361625 () Bool)

(declare-fun res!2617529 () Bool)

(declare-fun e!3862895 () Bool)

(assert (=> b!6361625 (=> res!2617529 e!3862895)))

(assert (=> b!6361625 (= res!2617529 e!3862899)))

(declare-fun res!2617532 () Bool)

(assert (=> b!6361625 (=> (not res!2617532) (not e!3862899))))

(assert (=> b!6361625 (= res!2617532 lt!2366883)))

(declare-fun b!6361626 () Bool)

(declare-fun res!2617536 () Bool)

(assert (=> b!6361626 (=> res!2617536 e!3862900)))

(assert (=> b!6361626 (= res!2617536 (not (isEmpty!37089 (tail!12115 (_1!36551 (get!22488 lt!2366859))))))))

(declare-fun b!6361627 () Bool)

(declare-fun res!2617534 () Bool)

(assert (=> b!6361627 (=> (not res!2617534) (not e!3862899))))

(assert (=> b!6361627 (= res!2617534 (not call!542758))))

(declare-fun b!6361628 () Bool)

(declare-fun res!2617535 () Bool)

(assert (=> b!6361628 (=> res!2617535 e!3862895)))

(assert (=> b!6361628 (= res!2617535 (not ((_ is ElementMatch!16269) (regOne!33050 r!7292))))))

(assert (=> b!6361628 (= e!3862896 e!3862895)))

(declare-fun b!6361629 () Bool)

(assert (=> b!6361629 (= e!3862895 e!3862898)))

(declare-fun res!2617531 () Bool)

(assert (=> b!6361629 (=> (not res!2617531) (not e!3862898))))

(assert (=> b!6361629 (= res!2617531 (not lt!2366883))))

(declare-fun b!6361630 () Bool)

(assert (=> b!6361630 (= e!3862901 (nullable!6262 (regOne!33050 r!7292)))))

(declare-fun b!6361631 () Bool)

(declare-fun res!2617530 () Bool)

(assert (=> b!6361631 (=> (not res!2617530) (not e!3862899))))

(assert (=> b!6361631 (= res!2617530 (isEmpty!37089 (tail!12115 (_1!36551 (get!22488 lt!2366859)))))))

(declare-fun b!6361632 () Bool)

(assert (=> b!6361632 (= e!3862897 (= lt!2366883 call!542758))))

(declare-fun d!1995642 () Bool)

(assert (=> d!1995642 e!3862897))

(declare-fun c!1158064 () Bool)

(assert (=> d!1995642 (= c!1158064 ((_ is EmptyExpr!16269) (regOne!33050 r!7292)))))

(assert (=> d!1995642 (= lt!2366883 e!3862901)))

(declare-fun c!1158063 () Bool)

(assert (=> d!1995642 (= c!1158063 (isEmpty!37089 (_1!36551 (get!22488 lt!2366859))))))

(assert (=> d!1995642 (validRegex!8005 (regOne!33050 r!7292))))

(assert (=> d!1995642 (= (matchR!8452 (regOne!33050 r!7292) (_1!36551 (get!22488 lt!2366859))) lt!2366883)))

(declare-fun b!6361624 () Bool)

(assert (=> b!6361624 (= e!3862900 (not (= (head!13030 (_1!36551 (get!22488 lt!2366859))) (c!1157838 (regOne!33050 r!7292)))))))

(assert (= (and d!1995642 c!1158063) b!6361630))

(assert (= (and d!1995642 (not c!1158063)) b!6361620))

(assert (= (and d!1995642 c!1158064) b!6361632))

(assert (= (and d!1995642 (not c!1158064)) b!6361619))

(assert (= (and b!6361619 c!1158062) b!6361622))

(assert (= (and b!6361619 (not c!1158062)) b!6361628))

(assert (= (and b!6361628 (not res!2617535)) b!6361625))

(assert (= (and b!6361625 res!2617532) b!6361627))

(assert (= (and b!6361627 res!2617534) b!6361631))

(assert (= (and b!6361631 res!2617530) b!6361623))

(assert (= (and b!6361625 (not res!2617529)) b!6361629))

(assert (= (and b!6361629 res!2617531) b!6361621))

(assert (= (and b!6361621 (not res!2617533)) b!6361626))

(assert (= (and b!6361626 (not res!2617536)) b!6361624))

(assert (= (or b!6361632 b!6361621 b!6361627) bm!542753))

(declare-fun m!7166808 () Bool)

(assert (=> b!6361623 m!7166808))

(declare-fun m!7166810 () Bool)

(assert (=> b!6361626 m!7166810))

(assert (=> b!6361626 m!7166810))

(declare-fun m!7166812 () Bool)

(assert (=> b!6361626 m!7166812))

(declare-fun m!7166814 () Bool)

(assert (=> d!1995642 m!7166814))

(assert (=> d!1995642 m!7166556))

(assert (=> b!6361624 m!7166808))

(declare-fun m!7166816 () Bool)

(assert (=> b!6361630 m!7166816))

(assert (=> bm!542753 m!7166814))

(assert (=> b!6361620 m!7166808))

(assert (=> b!6361620 m!7166808))

(declare-fun m!7166818 () Bool)

(assert (=> b!6361620 m!7166818))

(assert (=> b!6361620 m!7166810))

(assert (=> b!6361620 m!7166818))

(assert (=> b!6361620 m!7166810))

(declare-fun m!7166820 () Bool)

(assert (=> b!6361620 m!7166820))

(assert (=> b!6361631 m!7166810))

(assert (=> b!6361631 m!7166810))

(assert (=> b!6361631 m!7166812))

(assert (=> b!6361308 d!1995642))

(declare-fun d!1995644 () Bool)

(assert (=> d!1995644 (= (get!22488 lt!2366859) (v!52328 lt!2366859))))

(assert (=> b!6361308 d!1995644))

(declare-fun d!1995646 () Bool)

(assert (=> d!1995646 (= (isEmpty!37089 (tail!12115 s!2326)) ((_ is Nil!64982) (tail!12115 s!2326)))))

(assert (=> b!6361036 d!1995646))

(declare-fun d!1995648 () Bool)

(assert (=> d!1995648 (= (tail!12115 s!2326) (t!378698 s!2326))))

(assert (=> b!6361036 d!1995648))

(declare-fun d!1995652 () Bool)

(assert (=> d!1995652 (= (isEmpty!37090 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326)) (not ((_ is Some!16159) (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326))))))

(assert (=> d!1995518 d!1995652))

(assert (=> bs!1594015 d!1995532))

(declare-fun b!6361636 () Bool)

(declare-fun e!3862907 () Bool)

(declare-fun e!3862906 () Bool)

(assert (=> b!6361636 (= e!3862907 e!3862906)))

(declare-fun c!1158065 () Bool)

(assert (=> b!6361636 (= c!1158065 ((_ is EmptyLang!16269) (regTwo!33050 r!7292)))))

(declare-fun b!6361637 () Bool)

(declare-fun e!3862911 () Bool)

(assert (=> b!6361637 (= e!3862911 (matchR!8452 (derivativeStep!4974 (regTwo!33050 r!7292) (head!13030 (_2!36551 (get!22488 lt!2366859)))) (tail!12115 (_2!36551 (get!22488 lt!2366859)))))))

(declare-fun b!6361638 () Bool)

(declare-fun e!3862908 () Bool)

(declare-fun e!3862910 () Bool)

(assert (=> b!6361638 (= e!3862908 e!3862910)))

(declare-fun res!2617543 () Bool)

(assert (=> b!6361638 (=> res!2617543 e!3862910)))

(declare-fun call!542759 () Bool)

(assert (=> b!6361638 (= res!2617543 call!542759)))

(declare-fun b!6361639 () Bool)

(declare-fun lt!2366884 () Bool)

(assert (=> b!6361639 (= e!3862906 (not lt!2366884))))

(declare-fun b!6361640 () Bool)

(declare-fun e!3862909 () Bool)

(assert (=> b!6361640 (= e!3862909 (= (head!13030 (_2!36551 (get!22488 lt!2366859))) (c!1157838 (regTwo!33050 r!7292))))))

(declare-fun bm!542754 () Bool)

(assert (=> bm!542754 (= call!542759 (isEmpty!37089 (_2!36551 (get!22488 lt!2366859))))))

(declare-fun b!6361642 () Bool)

(declare-fun res!2617539 () Bool)

(declare-fun e!3862905 () Bool)

(assert (=> b!6361642 (=> res!2617539 e!3862905)))

(assert (=> b!6361642 (= res!2617539 e!3862909)))

(declare-fun res!2617542 () Bool)

(assert (=> b!6361642 (=> (not res!2617542) (not e!3862909))))

(assert (=> b!6361642 (= res!2617542 lt!2366884)))

(declare-fun b!6361643 () Bool)

(declare-fun res!2617546 () Bool)

(assert (=> b!6361643 (=> res!2617546 e!3862910)))

(assert (=> b!6361643 (= res!2617546 (not (isEmpty!37089 (tail!12115 (_2!36551 (get!22488 lt!2366859))))))))

(declare-fun b!6361644 () Bool)

(declare-fun res!2617544 () Bool)

(assert (=> b!6361644 (=> (not res!2617544) (not e!3862909))))

(assert (=> b!6361644 (= res!2617544 (not call!542759))))

(declare-fun b!6361645 () Bool)

(declare-fun res!2617545 () Bool)

(assert (=> b!6361645 (=> res!2617545 e!3862905)))

(assert (=> b!6361645 (= res!2617545 (not ((_ is ElementMatch!16269) (regTwo!33050 r!7292))))))

(assert (=> b!6361645 (= e!3862906 e!3862905)))

(declare-fun b!6361646 () Bool)

(assert (=> b!6361646 (= e!3862905 e!3862908)))

(declare-fun res!2617541 () Bool)

(assert (=> b!6361646 (=> (not res!2617541) (not e!3862908))))

(assert (=> b!6361646 (= res!2617541 (not lt!2366884))))

(declare-fun b!6361647 () Bool)

(assert (=> b!6361647 (= e!3862911 (nullable!6262 (regTwo!33050 r!7292)))))

(declare-fun b!6361648 () Bool)

(declare-fun res!2617540 () Bool)

(assert (=> b!6361648 (=> (not res!2617540) (not e!3862909))))

(assert (=> b!6361648 (= res!2617540 (isEmpty!37089 (tail!12115 (_2!36551 (get!22488 lt!2366859)))))))

(declare-fun b!6361649 () Bool)

(assert (=> b!6361649 (= e!3862907 (= lt!2366884 call!542759))))

(declare-fun d!1995656 () Bool)

(assert (=> d!1995656 e!3862907))

(declare-fun c!1158067 () Bool)

(assert (=> d!1995656 (= c!1158067 ((_ is EmptyExpr!16269) (regTwo!33050 r!7292)))))

(assert (=> d!1995656 (= lt!2366884 e!3862911)))

(declare-fun c!1158066 () Bool)

(assert (=> d!1995656 (= c!1158066 (isEmpty!37089 (_2!36551 (get!22488 lt!2366859))))))

(assert (=> d!1995656 (validRegex!8005 (regTwo!33050 r!7292))))

(assert (=> d!1995656 (= (matchR!8452 (regTwo!33050 r!7292) (_2!36551 (get!22488 lt!2366859))) lt!2366884)))

(declare-fun b!6361641 () Bool)

(assert (=> b!6361641 (= e!3862910 (not (= (head!13030 (_2!36551 (get!22488 lt!2366859))) (c!1157838 (regTwo!33050 r!7292)))))))

(assert (= (and d!1995656 c!1158066) b!6361647))

(assert (= (and d!1995656 (not c!1158066)) b!6361637))

(assert (= (and d!1995656 c!1158067) b!6361649))

(assert (= (and d!1995656 (not c!1158067)) b!6361636))

(assert (= (and b!6361636 c!1158065) b!6361639))

(assert (= (and b!6361636 (not c!1158065)) b!6361645))

(assert (= (and b!6361645 (not res!2617545)) b!6361642))

(assert (= (and b!6361642 res!2617542) b!6361644))

(assert (= (and b!6361644 res!2617544) b!6361648))

(assert (= (and b!6361648 res!2617540) b!6361640))

(assert (= (and b!6361642 (not res!2617539)) b!6361646))

(assert (= (and b!6361646 res!2617541) b!6361638))

(assert (= (and b!6361638 (not res!2617543)) b!6361643))

(assert (= (and b!6361643 (not res!2617546)) b!6361641))

(assert (= (or b!6361649 b!6361638 b!6361644) bm!542754))

(declare-fun m!7166830 () Bool)

(assert (=> b!6361640 m!7166830))

(declare-fun m!7166832 () Bool)

(assert (=> b!6361643 m!7166832))

(assert (=> b!6361643 m!7166832))

(declare-fun m!7166834 () Bool)

(assert (=> b!6361643 m!7166834))

(declare-fun m!7166836 () Bool)

(assert (=> d!1995656 m!7166836))

(declare-fun m!7166838 () Bool)

(assert (=> d!1995656 m!7166838))

(assert (=> b!6361641 m!7166830))

(declare-fun m!7166840 () Bool)

(assert (=> b!6361647 m!7166840))

(assert (=> bm!542754 m!7166836))

(assert (=> b!6361637 m!7166830))

(assert (=> b!6361637 m!7166830))

(declare-fun m!7166842 () Bool)

(assert (=> b!6361637 m!7166842))

(assert (=> b!6361637 m!7166832))

(assert (=> b!6361637 m!7166842))

(assert (=> b!6361637 m!7166832))

(declare-fun m!7166844 () Bool)

(assert (=> b!6361637 m!7166844))

(assert (=> b!6361648 m!7166832))

(assert (=> b!6361648 m!7166832))

(assert (=> b!6361648 m!7166834))

(assert (=> b!6361309 d!1995656))

(assert (=> b!6361309 d!1995644))

(declare-fun b!6361650 () Bool)

(declare-fun e!3862913 () Bool)

(declare-fun e!3862912 () Bool)

(assert (=> b!6361650 (= e!3862913 e!3862912)))

(declare-fun res!2617548 () Bool)

(assert (=> b!6361650 (=> (not res!2617548) (not e!3862912))))

(declare-fun call!542760 () Bool)

(assert (=> b!6361650 (= res!2617548 call!542760)))

(declare-fun b!6361651 () Bool)

(declare-fun e!3862918 () Bool)

(declare-fun e!3862917 () Bool)

(assert (=> b!6361651 (= e!3862918 e!3862917)))

(declare-fun c!1158069 () Bool)

(assert (=> b!6361651 (= c!1158069 ((_ is Star!16269) lt!2366808))))

(declare-fun b!6361652 () Bool)

(declare-fun e!3862915 () Bool)

(declare-fun call!542761 () Bool)

(assert (=> b!6361652 (= e!3862915 call!542761)))

(declare-fun b!6361653 () Bool)

(declare-fun call!542762 () Bool)

(assert (=> b!6361653 (= e!3862912 call!542762)))

(declare-fun bm!542755 () Bool)

(declare-fun c!1158068 () Bool)

(assert (=> bm!542755 (= call!542762 (validRegex!8005 (ite c!1158068 (regTwo!33051 lt!2366808) (regTwo!33050 lt!2366808))))))

(declare-fun bm!542756 () Bool)

(assert (=> bm!542756 (= call!542761 (validRegex!8005 (ite c!1158069 (reg!16598 lt!2366808) (ite c!1158068 (regOne!33051 lt!2366808) (regOne!33050 lt!2366808)))))))

(declare-fun bm!542757 () Bool)

(assert (=> bm!542757 (= call!542760 call!542761)))

(declare-fun b!6361654 () Bool)

(declare-fun e!3862916 () Bool)

(assert (=> b!6361654 (= e!3862916 call!542762)))

(declare-fun b!6361655 () Bool)

(declare-fun res!2617550 () Bool)

(assert (=> b!6361655 (=> (not res!2617550) (not e!3862916))))

(assert (=> b!6361655 (= res!2617550 call!542760)))

(declare-fun e!3862914 () Bool)

(assert (=> b!6361655 (= e!3862914 e!3862916)))

(declare-fun b!6361656 () Bool)

(assert (=> b!6361656 (= e!3862917 e!3862914)))

(assert (=> b!6361656 (= c!1158068 ((_ is Union!16269) lt!2366808))))

(declare-fun b!6361657 () Bool)

(assert (=> b!6361657 (= e!3862917 e!3862915)))

(declare-fun res!2617549 () Bool)

(assert (=> b!6361657 (= res!2617549 (not (nullable!6262 (reg!16598 lt!2366808))))))

(assert (=> b!6361657 (=> (not res!2617549) (not e!3862915))))

(declare-fun d!1995660 () Bool)

(declare-fun res!2617547 () Bool)

(assert (=> d!1995660 (=> res!2617547 e!3862918)))

(assert (=> d!1995660 (= res!2617547 ((_ is ElementMatch!16269) lt!2366808))))

(assert (=> d!1995660 (= (validRegex!8005 lt!2366808) e!3862918)))

(declare-fun b!6361658 () Bool)

(declare-fun res!2617551 () Bool)

(assert (=> b!6361658 (=> res!2617551 e!3862913)))

(assert (=> b!6361658 (= res!2617551 (not ((_ is Concat!25114) lt!2366808)))))

(assert (=> b!6361658 (= e!3862914 e!3862913)))

(assert (= (and d!1995660 (not res!2617547)) b!6361651))

(assert (= (and b!6361651 c!1158069) b!6361657))

(assert (= (and b!6361651 (not c!1158069)) b!6361656))

(assert (= (and b!6361657 res!2617549) b!6361652))

(assert (= (and b!6361656 c!1158068) b!6361655))

(assert (= (and b!6361656 (not c!1158068)) b!6361658))

(assert (= (and b!6361655 res!2617550) b!6361654))

(assert (= (and b!6361658 (not res!2617551)) b!6361650))

(assert (= (and b!6361650 res!2617548) b!6361653))

(assert (= (or b!6361654 b!6361653) bm!542755))

(assert (= (or b!6361655 b!6361650) bm!542757))

(assert (= (or b!6361652 bm!542757) bm!542756))

(declare-fun m!7166846 () Bool)

(assert (=> bm!542755 m!7166846))

(declare-fun m!7166848 () Bool)

(assert (=> bm!542756 m!7166848))

(declare-fun m!7166850 () Bool)

(assert (=> b!6361657 m!7166850))

(assert (=> d!1995436 d!1995660))

(assert (=> d!1995436 d!1995536))

(assert (=> d!1995436 d!1995538))

(declare-fun d!1995662 () Bool)

(assert (=> d!1995662 (= (nullable!6262 (reg!16598 r!7292)) (nullableFct!2209 (reg!16598 r!7292)))))

(declare-fun bs!1594061 () Bool)

(assert (= bs!1594061 d!1995662))

(declare-fun m!7166852 () Bool)

(assert (=> bs!1594061 m!7166852))

(assert (=> b!6361288 d!1995662))

(declare-fun b!6361659 () Bool)

(declare-fun e!3862921 () Bool)

(declare-fun e!3862920 () Bool)

(assert (=> b!6361659 (= e!3862921 e!3862920)))

(declare-fun c!1158070 () Bool)

(assert (=> b!6361659 (= c!1158070 ((_ is EmptyLang!16269) (regTwo!33050 r!7292)))))

(declare-fun b!6361660 () Bool)

(declare-fun e!3862925 () Bool)

(assert (=> b!6361660 (= e!3862925 (matchR!8452 (derivativeStep!4974 (regTwo!33050 r!7292) (head!13030 s!2326)) (tail!12115 s!2326)))))

(declare-fun b!6361661 () Bool)

(declare-fun e!3862922 () Bool)

(declare-fun e!3862924 () Bool)

(assert (=> b!6361661 (= e!3862922 e!3862924)))

(declare-fun res!2617556 () Bool)

(assert (=> b!6361661 (=> res!2617556 e!3862924)))

(declare-fun call!542763 () Bool)

(assert (=> b!6361661 (= res!2617556 call!542763)))

(declare-fun b!6361662 () Bool)

(declare-fun lt!2366885 () Bool)

(assert (=> b!6361662 (= e!3862920 (not lt!2366885))))

(declare-fun b!6361663 () Bool)

(declare-fun e!3862923 () Bool)

(assert (=> b!6361663 (= e!3862923 (= (head!13030 s!2326) (c!1157838 (regTwo!33050 r!7292))))))

(declare-fun bm!542758 () Bool)

(assert (=> bm!542758 (= call!542763 (isEmpty!37089 s!2326))))

(declare-fun b!6361665 () Bool)

(declare-fun res!2617552 () Bool)

(declare-fun e!3862919 () Bool)

(assert (=> b!6361665 (=> res!2617552 e!3862919)))

(assert (=> b!6361665 (= res!2617552 e!3862923)))

(declare-fun res!2617555 () Bool)

(assert (=> b!6361665 (=> (not res!2617555) (not e!3862923))))

(assert (=> b!6361665 (= res!2617555 lt!2366885)))

(declare-fun b!6361666 () Bool)

(declare-fun res!2617559 () Bool)

(assert (=> b!6361666 (=> res!2617559 e!3862924)))

(assert (=> b!6361666 (= res!2617559 (not (isEmpty!37089 (tail!12115 s!2326))))))

(declare-fun b!6361667 () Bool)

(declare-fun res!2617557 () Bool)

(assert (=> b!6361667 (=> (not res!2617557) (not e!3862923))))

(assert (=> b!6361667 (= res!2617557 (not call!542763))))

(declare-fun b!6361668 () Bool)

(declare-fun res!2617558 () Bool)

(assert (=> b!6361668 (=> res!2617558 e!3862919)))

(assert (=> b!6361668 (= res!2617558 (not ((_ is ElementMatch!16269) (regTwo!33050 r!7292))))))

(assert (=> b!6361668 (= e!3862920 e!3862919)))

(declare-fun b!6361669 () Bool)

(assert (=> b!6361669 (= e!3862919 e!3862922)))

(declare-fun res!2617554 () Bool)

(assert (=> b!6361669 (=> (not res!2617554) (not e!3862922))))

(assert (=> b!6361669 (= res!2617554 (not lt!2366885))))

(declare-fun b!6361670 () Bool)

(assert (=> b!6361670 (= e!3862925 (nullable!6262 (regTwo!33050 r!7292)))))

(declare-fun b!6361671 () Bool)

(declare-fun res!2617553 () Bool)

(assert (=> b!6361671 (=> (not res!2617553) (not e!3862923))))

(assert (=> b!6361671 (= res!2617553 (isEmpty!37089 (tail!12115 s!2326)))))

(declare-fun b!6361672 () Bool)

(assert (=> b!6361672 (= e!3862921 (= lt!2366885 call!542763))))

(declare-fun d!1995664 () Bool)

(assert (=> d!1995664 e!3862921))

(declare-fun c!1158072 () Bool)

(assert (=> d!1995664 (= c!1158072 ((_ is EmptyExpr!16269) (regTwo!33050 r!7292)))))

(assert (=> d!1995664 (= lt!2366885 e!3862925)))

(declare-fun c!1158071 () Bool)

(assert (=> d!1995664 (= c!1158071 (isEmpty!37089 s!2326))))

(assert (=> d!1995664 (validRegex!8005 (regTwo!33050 r!7292))))

(assert (=> d!1995664 (= (matchR!8452 (regTwo!33050 r!7292) s!2326) lt!2366885)))

(declare-fun b!6361664 () Bool)

(assert (=> b!6361664 (= e!3862924 (not (= (head!13030 s!2326) (c!1157838 (regTwo!33050 r!7292)))))))

(assert (= (and d!1995664 c!1158071) b!6361670))

(assert (= (and d!1995664 (not c!1158071)) b!6361660))

(assert (= (and d!1995664 c!1158072) b!6361672))

(assert (= (and d!1995664 (not c!1158072)) b!6361659))

(assert (= (and b!6361659 c!1158070) b!6361662))

(assert (= (and b!6361659 (not c!1158070)) b!6361668))

(assert (= (and b!6361668 (not res!2617558)) b!6361665))

(assert (= (and b!6361665 res!2617555) b!6361667))

(assert (= (and b!6361667 res!2617557) b!6361671))

(assert (= (and b!6361671 res!2617553) b!6361663))

(assert (= (and b!6361665 (not res!2617552)) b!6361669))

(assert (= (and b!6361669 res!2617554) b!6361661))

(assert (= (and b!6361661 (not res!2617556)) b!6361666))

(assert (= (and b!6361666 (not res!2617559)) b!6361664))

(assert (= (or b!6361672 b!6361661 b!6361667) bm!542758))

(assert (=> b!6361663 m!7166408))

(assert (=> b!6361666 m!7166410))

(assert (=> b!6361666 m!7166410))

(assert (=> b!6361666 m!7166412))

(assert (=> d!1995664 m!7166358))

(assert (=> d!1995664 m!7166838))

(assert (=> b!6361664 m!7166408))

(assert (=> b!6361670 m!7166840))

(assert (=> bm!542758 m!7166358))

(assert (=> b!6361660 m!7166408))

(assert (=> b!6361660 m!7166408))

(declare-fun m!7166854 () Bool)

(assert (=> b!6361660 m!7166854))

(assert (=> b!6361660 m!7166410))

(assert (=> b!6361660 m!7166854))

(assert (=> b!6361660 m!7166410))

(declare-fun m!7166856 () Bool)

(assert (=> b!6361660 m!7166856))

(assert (=> b!6361671 m!7166410))

(assert (=> b!6361671 m!7166410))

(assert (=> b!6361671 m!7166412))

(assert (=> b!6361311 d!1995664))

(declare-fun bm!542759 () Bool)

(declare-fun c!1158076 () Bool)

(declare-fun call!542765 () List!65107)

(declare-fun c!1158075 () Bool)

(assert (=> bm!542759 (= call!542765 ($colon$colon!2130 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 lt!2366785)))) (ite (or c!1158076 c!1158075) (regTwo!33050 (h!71431 (exprs!6153 lt!2366785))) (h!71431 (exprs!6153 lt!2366785)))))))

(declare-fun bm!542760 () Bool)

(declare-fun call!542769 () List!65107)

(assert (=> bm!542760 (= call!542769 call!542765)))

(declare-fun b!6361673 () Bool)

(declare-fun e!3862928 () (InoxSet Context!11306))

(assert (=> b!6361673 (= e!3862928 (store ((as const (Array Context!11306 Bool)) false) (Context!11307 (t!378699 (exprs!6153 lt!2366785))) true))))

(declare-fun b!6361674 () Bool)

(declare-fun e!3862926 () (InoxSet Context!11306))

(declare-fun call!542767 () (InoxSet Context!11306))

(assert (=> b!6361674 (= e!3862926 call!542767)))

(declare-fun b!6361675 () Bool)

(declare-fun c!1158077 () Bool)

(assert (=> b!6361675 (= c!1158077 ((_ is Star!16269) (h!71431 (exprs!6153 lt!2366785))))))

(declare-fun e!3862931 () (InoxSet Context!11306))

(assert (=> b!6361675 (= e!3862931 e!3862926)))

(declare-fun b!6361676 () Bool)

(declare-fun e!3862929 () (InoxSet Context!11306))

(assert (=> b!6361676 (= e!3862928 e!3862929)))

(declare-fun c!1158073 () Bool)

(assert (=> b!6361676 (= c!1158073 ((_ is Union!16269) (h!71431 (exprs!6153 lt!2366785))))))

(declare-fun bm!542761 () Bool)

(declare-fun call!542768 () (InoxSet Context!11306))

(assert (=> bm!542761 (= call!542768 (derivationStepZipperDown!1517 (ite c!1158073 (regOne!33051 (h!71431 (exprs!6153 lt!2366785))) (regOne!33050 (h!71431 (exprs!6153 lt!2366785)))) (ite c!1158073 (Context!11307 (t!378699 (exprs!6153 lt!2366785))) (Context!11307 call!542765)) (h!71430 s!2326)))))

(declare-fun b!6361677 () Bool)

(declare-fun e!3862927 () Bool)

(assert (=> b!6361677 (= c!1158076 e!3862927)))

(declare-fun res!2617560 () Bool)

(assert (=> b!6361677 (=> (not res!2617560) (not e!3862927))))

(assert (=> b!6361677 (= res!2617560 ((_ is Concat!25114) (h!71431 (exprs!6153 lt!2366785))))))

(declare-fun e!3862930 () (InoxSet Context!11306))

(assert (=> b!6361677 (= e!3862929 e!3862930)))

(declare-fun b!6361679 () Bool)

(declare-fun call!542766 () (InoxSet Context!11306))

(assert (=> b!6361679 (= e!3862930 ((_ map or) call!542768 call!542766))))

(declare-fun bm!542762 () Bool)

(declare-fun call!542764 () (InoxSet Context!11306))

(assert (=> bm!542762 (= call!542764 (derivationStepZipperDown!1517 (ite c!1158073 (regTwo!33051 (h!71431 (exprs!6153 lt!2366785))) (ite c!1158076 (regTwo!33050 (h!71431 (exprs!6153 lt!2366785))) (ite c!1158075 (regOne!33050 (h!71431 (exprs!6153 lt!2366785))) (reg!16598 (h!71431 (exprs!6153 lt!2366785)))))) (ite (or c!1158073 c!1158076) (Context!11307 (t!378699 (exprs!6153 lt!2366785))) (Context!11307 call!542769)) (h!71430 s!2326)))))

(declare-fun bm!542763 () Bool)

(assert (=> bm!542763 (= call!542766 call!542764)))

(declare-fun b!6361680 () Bool)

(assert (=> b!6361680 (= e!3862930 e!3862931)))

(assert (=> b!6361680 (= c!1158075 ((_ is Concat!25114) (h!71431 (exprs!6153 lt!2366785))))))

(declare-fun b!6361681 () Bool)

(assert (=> b!6361681 (= e!3862927 (nullable!6262 (regOne!33050 (h!71431 (exprs!6153 lt!2366785)))))))

(declare-fun b!6361682 () Bool)

(assert (=> b!6361682 (= e!3862929 ((_ map or) call!542768 call!542764))))

(declare-fun bm!542764 () Bool)

(assert (=> bm!542764 (= call!542767 call!542766)))

(declare-fun b!6361683 () Bool)

(assert (=> b!6361683 (= e!3862926 ((as const (Array Context!11306 Bool)) false))))

(declare-fun d!1995666 () Bool)

(declare-fun c!1158074 () Bool)

(assert (=> d!1995666 (= c!1158074 (and ((_ is ElementMatch!16269) (h!71431 (exprs!6153 lt!2366785))) (= (c!1157838 (h!71431 (exprs!6153 lt!2366785))) (h!71430 s!2326))))))

(assert (=> d!1995666 (= (derivationStepZipperDown!1517 (h!71431 (exprs!6153 lt!2366785)) (Context!11307 (t!378699 (exprs!6153 lt!2366785))) (h!71430 s!2326)) e!3862928)))

(declare-fun b!6361678 () Bool)

(assert (=> b!6361678 (= e!3862931 call!542767)))

(assert (= (and d!1995666 c!1158074) b!6361673))

(assert (= (and d!1995666 (not c!1158074)) b!6361676))

(assert (= (and b!6361676 c!1158073) b!6361682))

(assert (= (and b!6361676 (not c!1158073)) b!6361677))

(assert (= (and b!6361677 res!2617560) b!6361681))

(assert (= (and b!6361677 c!1158076) b!6361679))

(assert (= (and b!6361677 (not c!1158076)) b!6361680))

(assert (= (and b!6361680 c!1158075) b!6361678))

(assert (= (and b!6361680 (not c!1158075)) b!6361675))

(assert (= (and b!6361675 c!1158077) b!6361674))

(assert (= (and b!6361675 (not c!1158077)) b!6361683))

(assert (= (or b!6361678 b!6361674) bm!542760))

(assert (= (or b!6361678 b!6361674) bm!542764))

(assert (= (or b!6361679 bm!542760) bm!542759))

(assert (= (or b!6361679 bm!542764) bm!542763))

(assert (= (or b!6361682 bm!542763) bm!542762))

(assert (= (or b!6361682 b!6361679) bm!542761))

(declare-fun m!7166858 () Bool)

(assert (=> bm!542759 m!7166858))

(declare-fun m!7166860 () Bool)

(assert (=> b!6361673 m!7166860))

(declare-fun m!7166862 () Bool)

(assert (=> bm!542761 m!7166862))

(declare-fun m!7166864 () Bool)

(assert (=> b!6361681 m!7166864))

(declare-fun m!7166866 () Bool)

(assert (=> bm!542762 m!7166866))

(assert (=> bm!542721 d!1995666))

(assert (=> d!1995474 d!1995458))

(assert (=> d!1995474 d!1995440))

(declare-fun d!1995668 () Bool)

(assert (=> d!1995668 (= (matchR!8452 r!7292 s!2326) (matchRSpec!3370 r!7292 s!2326))))

(assert (=> d!1995668 true))

(declare-fun _$88!5041 () Unit!158407)

(assert (=> d!1995668 (= (choose!47241 r!7292 s!2326) _$88!5041)))

(declare-fun bs!1594063 () Bool)

(assert (= bs!1594063 d!1995668))

(assert (=> bs!1594063 m!7166234))

(assert (=> bs!1594063 m!7166232))

(assert (=> d!1995474 d!1995668))

(assert (=> d!1995474 d!1995504))

(declare-fun d!1995678 () Bool)

(assert (=> d!1995678 (= (isUnion!1108 lt!2366871) ((_ is Union!16269) lt!2366871))))

(assert (=> b!6361385 d!1995678))

(declare-fun b!6361707 () Bool)

(declare-fun e!3862948 () List!65106)

(assert (=> b!6361707 (= e!3862948 (Cons!64982 (h!71430 (_1!36551 (get!22488 lt!2366859))) (++!14338 (t!378698 (_1!36551 (get!22488 lt!2366859))) (_2!36551 (get!22488 lt!2366859)))))))

(declare-fun b!6361706 () Bool)

(assert (=> b!6361706 (= e!3862948 (_2!36551 (get!22488 lt!2366859)))))

(declare-fun b!6361708 () Bool)

(declare-fun res!2617575 () Bool)

(declare-fun e!3862949 () Bool)

(assert (=> b!6361708 (=> (not res!2617575) (not e!3862949))))

(declare-fun lt!2366888 () List!65106)

(declare-fun size!40347 (List!65106) Int)

(assert (=> b!6361708 (= res!2617575 (= (size!40347 lt!2366888) (+ (size!40347 (_1!36551 (get!22488 lt!2366859))) (size!40347 (_2!36551 (get!22488 lt!2366859))))))))

(declare-fun b!6361709 () Bool)

(assert (=> b!6361709 (= e!3862949 (or (not (= (_2!36551 (get!22488 lt!2366859)) Nil!64982)) (= lt!2366888 (_1!36551 (get!22488 lt!2366859)))))))

(declare-fun d!1995680 () Bool)

(assert (=> d!1995680 e!3862949))

(declare-fun res!2617576 () Bool)

(assert (=> d!1995680 (=> (not res!2617576) (not e!3862949))))

(declare-fun content!12273 (List!65106) (InoxSet C!32808))

(assert (=> d!1995680 (= res!2617576 (= (content!12273 lt!2366888) ((_ map or) (content!12273 (_1!36551 (get!22488 lt!2366859))) (content!12273 (_2!36551 (get!22488 lt!2366859))))))))

(assert (=> d!1995680 (= lt!2366888 e!3862948)))

(declare-fun c!1158082 () Bool)

(assert (=> d!1995680 (= c!1158082 ((_ is Nil!64982) (_1!36551 (get!22488 lt!2366859))))))

(assert (=> d!1995680 (= (++!14338 (_1!36551 (get!22488 lt!2366859)) (_2!36551 (get!22488 lt!2366859))) lt!2366888)))

(assert (= (and d!1995680 c!1158082) b!6361706))

(assert (= (and d!1995680 (not c!1158082)) b!6361707))

(assert (= (and d!1995680 res!2617576) b!6361708))

(assert (= (and b!6361708 res!2617575) b!6361709))

(declare-fun m!7166870 () Bool)

(assert (=> b!6361707 m!7166870))

(declare-fun m!7166872 () Bool)

(assert (=> b!6361708 m!7166872))

(declare-fun m!7166874 () Bool)

(assert (=> b!6361708 m!7166874))

(declare-fun m!7166876 () Bool)

(assert (=> b!6361708 m!7166876))

(declare-fun m!7166878 () Bool)

(assert (=> d!1995680 m!7166878))

(declare-fun m!7166880 () Bool)

(assert (=> d!1995680 m!7166880))

(declare-fun m!7166882 () Bool)

(assert (=> d!1995680 m!7166882))

(assert (=> b!6361313 d!1995680))

(assert (=> b!6361313 d!1995644))

(assert (=> d!1995548 d!1995630))

(declare-fun b!6361710 () Bool)

(declare-fun e!3862951 () Bool)

(declare-fun e!3862950 () Bool)

(assert (=> b!6361710 (= e!3862951 e!3862950)))

(declare-fun res!2617578 () Bool)

(assert (=> b!6361710 (=> (not res!2617578) (not e!3862950))))

(declare-fun call!542774 () Bool)

(assert (=> b!6361710 (= res!2617578 call!542774)))

(declare-fun b!6361711 () Bool)

(declare-fun e!3862956 () Bool)

(declare-fun e!3862955 () Bool)

(assert (=> b!6361711 (= e!3862956 e!3862955)))

(declare-fun c!1158084 () Bool)

(assert (=> b!6361711 (= c!1158084 ((_ is Star!16269) lt!2366877))))

(declare-fun b!6361712 () Bool)

(declare-fun e!3862953 () Bool)

(declare-fun call!542775 () Bool)

(assert (=> b!6361712 (= e!3862953 call!542775)))

(declare-fun b!6361713 () Bool)

(declare-fun call!542776 () Bool)

(assert (=> b!6361713 (= e!3862950 call!542776)))

(declare-fun bm!542769 () Bool)

(declare-fun c!1158083 () Bool)

(assert (=> bm!542769 (= call!542776 (validRegex!8005 (ite c!1158083 (regTwo!33051 lt!2366877) (regTwo!33050 lt!2366877))))))

(declare-fun bm!542770 () Bool)

(assert (=> bm!542770 (= call!542775 (validRegex!8005 (ite c!1158084 (reg!16598 lt!2366877) (ite c!1158083 (regOne!33051 lt!2366877) (regOne!33050 lt!2366877)))))))

(declare-fun bm!542771 () Bool)

(assert (=> bm!542771 (= call!542774 call!542775)))

(declare-fun b!6361714 () Bool)

(declare-fun e!3862954 () Bool)

(assert (=> b!6361714 (= e!3862954 call!542776)))

(declare-fun b!6361715 () Bool)

(declare-fun res!2617580 () Bool)

(assert (=> b!6361715 (=> (not res!2617580) (not e!3862954))))

(assert (=> b!6361715 (= res!2617580 call!542774)))

(declare-fun e!3862952 () Bool)

(assert (=> b!6361715 (= e!3862952 e!3862954)))

(declare-fun b!6361716 () Bool)

(assert (=> b!6361716 (= e!3862955 e!3862952)))

(assert (=> b!6361716 (= c!1158083 ((_ is Union!16269) lt!2366877))))

(declare-fun b!6361717 () Bool)

(assert (=> b!6361717 (= e!3862955 e!3862953)))

(declare-fun res!2617579 () Bool)

(assert (=> b!6361717 (= res!2617579 (not (nullable!6262 (reg!16598 lt!2366877))))))

(assert (=> b!6361717 (=> (not res!2617579) (not e!3862953))))

(declare-fun d!1995684 () Bool)

(declare-fun res!2617577 () Bool)

(assert (=> d!1995684 (=> res!2617577 e!3862956)))

(assert (=> d!1995684 (= res!2617577 ((_ is ElementMatch!16269) lt!2366877))))

(assert (=> d!1995684 (= (validRegex!8005 lt!2366877) e!3862956)))

(declare-fun b!6361718 () Bool)

(declare-fun res!2617581 () Bool)

(assert (=> b!6361718 (=> res!2617581 e!3862951)))

(assert (=> b!6361718 (= res!2617581 (not ((_ is Concat!25114) lt!2366877)))))

(assert (=> b!6361718 (= e!3862952 e!3862951)))

(assert (= (and d!1995684 (not res!2617577)) b!6361711))

(assert (= (and b!6361711 c!1158084) b!6361717))

(assert (= (and b!6361711 (not c!1158084)) b!6361716))

(assert (= (and b!6361717 res!2617579) b!6361712))

(assert (= (and b!6361716 c!1158083) b!6361715))

(assert (= (and b!6361716 (not c!1158083)) b!6361718))

(assert (= (and b!6361715 res!2617580) b!6361714))

(assert (= (and b!6361718 (not res!2617581)) b!6361710))

(assert (= (and b!6361710 res!2617578) b!6361713))

(assert (= (or b!6361714 b!6361713) bm!542769))

(assert (= (or b!6361715 b!6361710) bm!542771))

(assert (= (or b!6361712 bm!542771) bm!542770))

(declare-fun m!7166884 () Bool)

(assert (=> bm!542769 m!7166884))

(declare-fun m!7166886 () Bool)

(assert (=> bm!542770 m!7166886))

(declare-fun m!7166888 () Bool)

(assert (=> b!6361717 m!7166888))

(assert (=> d!1995540 d!1995684))

(declare-fun d!1995686 () Bool)

(declare-fun res!2617582 () Bool)

(declare-fun e!3862957 () Bool)

(assert (=> d!1995686 (=> res!2617582 e!3862957)))

(assert (=> d!1995686 (= res!2617582 ((_ is Nil!64983) (exprs!6153 (h!71432 zl!343))))))

(assert (=> d!1995686 (= (forall!15447 (exprs!6153 (h!71432 zl!343)) lambda!350404) e!3862957)))

(declare-fun b!6361719 () Bool)

(declare-fun e!3862958 () Bool)

(assert (=> b!6361719 (= e!3862957 e!3862958)))

(declare-fun res!2617583 () Bool)

(assert (=> b!6361719 (=> (not res!2617583) (not e!3862958))))

(assert (=> b!6361719 (= res!2617583 (dynLambda!25777 lambda!350404 (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361720 () Bool)

(assert (=> b!6361720 (= e!3862958 (forall!15447 (t!378699 (exprs!6153 (h!71432 zl!343))) lambda!350404))))

(assert (= (and d!1995686 (not res!2617582)) b!6361719))

(assert (= (and b!6361719 res!2617583) b!6361720))

(declare-fun b_lambda!241823 () Bool)

(assert (=> (not b_lambda!241823) (not b!6361719)))

(declare-fun m!7166890 () Bool)

(assert (=> b!6361719 m!7166890))

(declare-fun m!7166892 () Bool)

(assert (=> b!6361720 m!7166892))

(assert (=> d!1995540 d!1995686))

(declare-fun d!1995688 () Bool)

(assert (=> d!1995688 (= (nullable!6262 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (nullableFct!2209 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun bs!1594072 () Bool)

(assert (= bs!1594072 d!1995688))

(declare-fun m!7166894 () Bool)

(assert (=> bs!1594072 m!7166894))

(assert (=> b!6361339 d!1995688))

(declare-fun bm!542772 () Bool)

(declare-fun c!1158088 () Bool)

(declare-fun c!1158087 () Bool)

(declare-fun call!542778 () List!65107)

(assert (=> bm!542772 (= call!542778 ($colon$colon!2130 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343))))) (ite (or c!1158088 c!1158087) (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (h!71431 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun bm!542773 () Bool)

(declare-fun call!542782 () List!65107)

(assert (=> bm!542773 (= call!542782 call!542778)))

(declare-fun b!6361721 () Bool)

(declare-fun e!3862961 () (InoxSet Context!11306))

(assert (=> b!6361721 (= e!3862961 (store ((as const (Array Context!11306 Bool)) false) (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))) true))))

(declare-fun b!6361722 () Bool)

(declare-fun e!3862959 () (InoxSet Context!11306))

(declare-fun call!542780 () (InoxSet Context!11306))

(assert (=> b!6361722 (= e!3862959 call!542780)))

(declare-fun b!6361723 () Bool)

(declare-fun c!1158089 () Bool)

(assert (=> b!6361723 (= c!1158089 ((_ is Star!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun e!3862964 () (InoxSet Context!11306))

(assert (=> b!6361723 (= e!3862964 e!3862959)))

(declare-fun b!6361724 () Bool)

(declare-fun e!3862962 () (InoxSet Context!11306))

(assert (=> b!6361724 (= e!3862961 e!3862962)))

(declare-fun c!1158085 () Bool)

(assert (=> b!6361724 (= c!1158085 ((_ is Union!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun call!542781 () (InoxSet Context!11306))

(declare-fun bm!542774 () Bool)

(assert (=> bm!542774 (= call!542781 (derivationStepZipperDown!1517 (ite c!1158085 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))) (ite c!1158085 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))) (Context!11307 call!542778)) (h!71430 s!2326)))))

(declare-fun b!6361725 () Bool)

(declare-fun e!3862960 () Bool)

(assert (=> b!6361725 (= c!1158088 e!3862960)))

(declare-fun res!2617584 () Bool)

(assert (=> b!6361725 (=> (not res!2617584) (not e!3862960))))

(assert (=> b!6361725 (= res!2617584 ((_ is Concat!25114) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun e!3862963 () (InoxSet Context!11306))

(assert (=> b!6361725 (= e!3862962 e!3862963)))

(declare-fun b!6361727 () Bool)

(declare-fun call!542779 () (InoxSet Context!11306))

(assert (=> b!6361727 (= e!3862963 ((_ map or) call!542781 call!542779))))

(declare-fun bm!542775 () Bool)

(declare-fun call!542777 () (InoxSet Context!11306))

(assert (=> bm!542775 (= call!542777 (derivationStepZipperDown!1517 (ite c!1158085 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1158088 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1158087 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343))))))) (ite (or c!1158085 c!1158088) (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))) (Context!11307 call!542782)) (h!71430 s!2326)))))

(declare-fun bm!542776 () Bool)

(assert (=> bm!542776 (= call!542779 call!542777)))

(declare-fun b!6361728 () Bool)

(assert (=> b!6361728 (= e!3862963 e!3862964)))

(assert (=> b!6361728 (= c!1158087 ((_ is Concat!25114) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361729 () Bool)

(assert (=> b!6361729 (= e!3862960 (nullable!6262 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun b!6361730 () Bool)

(assert (=> b!6361730 (= e!3862962 ((_ map or) call!542781 call!542777))))

(declare-fun bm!542777 () Bool)

(assert (=> bm!542777 (= call!542780 call!542779)))

(declare-fun b!6361731 () Bool)

(assert (=> b!6361731 (= e!3862959 ((as const (Array Context!11306 Bool)) false))))

(declare-fun d!1995690 () Bool)

(declare-fun c!1158086 () Bool)

(assert (=> d!1995690 (= c!1158086 (and ((_ is ElementMatch!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))) (= (c!1157838 (h!71431 (exprs!6153 (h!71432 zl!343)))) (h!71430 s!2326))))))

(assert (=> d!1995690 (= (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (h!71432 zl!343))) (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))) (h!71430 s!2326)) e!3862961)))

(declare-fun b!6361726 () Bool)

(assert (=> b!6361726 (= e!3862964 call!542780)))

(assert (= (and d!1995690 c!1158086) b!6361721))

(assert (= (and d!1995690 (not c!1158086)) b!6361724))

(assert (= (and b!6361724 c!1158085) b!6361730))

(assert (= (and b!6361724 (not c!1158085)) b!6361725))

(assert (= (and b!6361725 res!2617584) b!6361729))

(assert (= (and b!6361725 c!1158088) b!6361727))

(assert (= (and b!6361725 (not c!1158088)) b!6361728))

(assert (= (and b!6361728 c!1158087) b!6361726))

(assert (= (and b!6361728 (not c!1158087)) b!6361723))

(assert (= (and b!6361723 c!1158089) b!6361722))

(assert (= (and b!6361723 (not c!1158089)) b!6361731))

(assert (= (or b!6361726 b!6361722) bm!542773))

(assert (= (or b!6361726 b!6361722) bm!542777))

(assert (= (or b!6361727 bm!542773) bm!542772))

(assert (= (or b!6361727 bm!542777) bm!542776))

(assert (= (or b!6361730 bm!542776) bm!542775))

(assert (= (or b!6361730 b!6361727) bm!542774))

(declare-fun m!7166896 () Bool)

(assert (=> bm!542772 m!7166896))

(declare-fun m!7166898 () Bool)

(assert (=> b!6361721 m!7166898))

(declare-fun m!7166900 () Bool)

(assert (=> bm!542774 m!7166900))

(assert (=> b!6361729 m!7166592))

(declare-fun m!7166902 () Bool)

(assert (=> bm!542775 m!7166902))

(assert (=> bm!542720 d!1995690))

(assert (=> d!1995514 d!1995508))

(declare-fun b!6361732 () Bool)

(declare-fun e!3862966 () Bool)

(declare-fun e!3862965 () Bool)

(assert (=> b!6361732 (= e!3862966 e!3862965)))

(declare-fun res!2617586 () Bool)

(assert (=> b!6361732 (=> (not res!2617586) (not e!3862965))))

(declare-fun call!542783 () Bool)

(assert (=> b!6361732 (= res!2617586 call!542783)))

(declare-fun b!6361733 () Bool)

(declare-fun e!3862971 () Bool)

(declare-fun e!3862970 () Bool)

(assert (=> b!6361733 (= e!3862971 e!3862970)))

(declare-fun c!1158091 () Bool)

(assert (=> b!6361733 (= c!1158091 ((_ is Star!16269) (regOne!33050 r!7292)))))

(declare-fun b!6361734 () Bool)

(declare-fun e!3862968 () Bool)

(declare-fun call!542784 () Bool)

(assert (=> b!6361734 (= e!3862968 call!542784)))

(declare-fun b!6361735 () Bool)

(declare-fun call!542785 () Bool)

(assert (=> b!6361735 (= e!3862965 call!542785)))

(declare-fun bm!542778 () Bool)

(declare-fun c!1158090 () Bool)

(assert (=> bm!542778 (= call!542785 (validRegex!8005 (ite c!1158090 (regTwo!33051 (regOne!33050 r!7292)) (regTwo!33050 (regOne!33050 r!7292)))))))

(declare-fun bm!542779 () Bool)

(assert (=> bm!542779 (= call!542784 (validRegex!8005 (ite c!1158091 (reg!16598 (regOne!33050 r!7292)) (ite c!1158090 (regOne!33051 (regOne!33050 r!7292)) (regOne!33050 (regOne!33050 r!7292))))))))

(declare-fun bm!542780 () Bool)

(assert (=> bm!542780 (= call!542783 call!542784)))

(declare-fun b!6361736 () Bool)

(declare-fun e!3862969 () Bool)

(assert (=> b!6361736 (= e!3862969 call!542785)))

(declare-fun b!6361737 () Bool)

(declare-fun res!2617588 () Bool)

(assert (=> b!6361737 (=> (not res!2617588) (not e!3862969))))

(assert (=> b!6361737 (= res!2617588 call!542783)))

(declare-fun e!3862967 () Bool)

(assert (=> b!6361737 (= e!3862967 e!3862969)))

(declare-fun b!6361738 () Bool)

(assert (=> b!6361738 (= e!3862970 e!3862967)))

(assert (=> b!6361738 (= c!1158090 ((_ is Union!16269) (regOne!33050 r!7292)))))

(declare-fun b!6361739 () Bool)

(assert (=> b!6361739 (= e!3862970 e!3862968)))

(declare-fun res!2617587 () Bool)

(assert (=> b!6361739 (= res!2617587 (not (nullable!6262 (reg!16598 (regOne!33050 r!7292)))))))

(assert (=> b!6361739 (=> (not res!2617587) (not e!3862968))))

(declare-fun d!1995692 () Bool)

(declare-fun res!2617585 () Bool)

(assert (=> d!1995692 (=> res!2617585 e!3862971)))

(assert (=> d!1995692 (= res!2617585 ((_ is ElementMatch!16269) (regOne!33050 r!7292)))))

(assert (=> d!1995692 (= (validRegex!8005 (regOne!33050 r!7292)) e!3862971)))

(declare-fun b!6361740 () Bool)

(declare-fun res!2617589 () Bool)

(assert (=> b!6361740 (=> res!2617589 e!3862966)))

(assert (=> b!6361740 (= res!2617589 (not ((_ is Concat!25114) (regOne!33050 r!7292))))))

(assert (=> b!6361740 (= e!3862967 e!3862966)))

(assert (= (and d!1995692 (not res!2617585)) b!6361733))

(assert (= (and b!6361733 c!1158091) b!6361739))

(assert (= (and b!6361733 (not c!1158091)) b!6361738))

(assert (= (and b!6361739 res!2617587) b!6361734))

(assert (= (and b!6361738 c!1158090) b!6361737))

(assert (= (and b!6361738 (not c!1158090)) b!6361740))

(assert (= (and b!6361737 res!2617588) b!6361736))

(assert (= (and b!6361740 (not res!2617589)) b!6361732))

(assert (= (and b!6361732 res!2617586) b!6361735))

(assert (= (or b!6361736 b!6361735) bm!542778))

(assert (= (or b!6361737 b!6361732) bm!542780))

(assert (= (or b!6361734 bm!542780) bm!542779))

(declare-fun m!7166904 () Bool)

(assert (=> bm!542778 m!7166904))

(declare-fun m!7166906 () Bool)

(assert (=> bm!542779 m!7166906))

(declare-fun m!7166908 () Bool)

(assert (=> b!6361739 m!7166908))

(assert (=> d!1995514 d!1995692))

(assert (=> d!1995514 d!1995518))

(declare-fun d!1995694 () Bool)

(assert (=> d!1995694 (= (Exists!3339 lambda!350389) (choose!47245 lambda!350389))))

(declare-fun bs!1594073 () Bool)

(assert (= bs!1594073 d!1995694))

(declare-fun m!7166910 () Bool)

(assert (=> bs!1594073 m!7166910))

(assert (=> d!1995514 d!1995694))

(declare-fun bs!1594074 () Bool)

(declare-fun d!1995696 () Bool)

(assert (= bs!1594074 (and d!1995696 d!1995514)))

(declare-fun lambda!350422 () Int)

(assert (=> bs!1594074 (= lambda!350422 lambda!350389)))

(declare-fun bs!1594075 () Bool)

(assert (= bs!1594075 (and d!1995696 b!6360763)))

(assert (=> bs!1594075 (not (= lambda!350422 lambda!350350))))

(declare-fun bs!1594076 () Bool)

(assert (= bs!1594076 (and d!1995696 d!1995516)))

(assert (=> bs!1594076 (not (= lambda!350422 lambda!350395))))

(declare-fun bs!1594077 () Bool)

(assert (= bs!1594077 (and d!1995696 b!6361553)))

(assert (=> bs!1594077 (not (= lambda!350422 lambda!350416))))

(declare-fun bs!1594078 () Bool)

(assert (= bs!1594078 (and d!1995696 b!6360930)))

(assert (=> bs!1594078 (not (= lambda!350422 lambda!350375))))

(assert (=> bs!1594076 (= lambda!350422 lambda!350394)))

(declare-fun bs!1594079 () Bool)

(assert (= bs!1594079 (and d!1995696 b!6361561)))

(assert (=> bs!1594079 (not (= lambda!350422 lambda!350417))))

(assert (=> bs!1594075 (= lambda!350422 lambda!350349)))

(declare-fun bs!1594080 () Bool)

(assert (= bs!1594080 (and d!1995696 b!6360922)))

(assert (=> bs!1594080 (not (= lambda!350422 lambda!350374))))

(assert (=> d!1995696 true))

(assert (=> d!1995696 true))

(assert (=> d!1995696 true))

(assert (=> d!1995696 (= (isDefined!12863 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) Nil!64982 s!2326 s!2326)) (Exists!3339 lambda!350422))))

(assert (=> d!1995696 true))

(declare-fun _$89!2584 () Unit!158407)

(assert (=> d!1995696 (= (choose!47246 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326) _$89!2584)))

(declare-fun bs!1594081 () Bool)

(assert (= bs!1594081 d!1995696))

(assert (=> bs!1594081 m!7166270))

(assert (=> bs!1594081 m!7166270))

(assert (=> bs!1594081 m!7166272))

(declare-fun m!7166916 () Bool)

(assert (=> bs!1594081 m!7166916))

(assert (=> d!1995514 d!1995696))

(declare-fun d!1995700 () Bool)

(assert (=> d!1995700 (= (nullable!6262 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))) (nullableFct!2209 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun bs!1594082 () Bool)

(assert (= bs!1594082 d!1995700))

(declare-fun m!7166918 () Bool)

(assert (=> bs!1594082 m!7166918))

(assert (=> b!6361352 d!1995700))

(declare-fun d!1995702 () Bool)

(assert (=> d!1995702 (= (isDefined!12863 lt!2366859) (not (isEmpty!37090 lt!2366859)))))

(declare-fun bs!1594083 () Bool)

(assert (= bs!1594083 d!1995702))

(declare-fun m!7166920 () Bool)

(assert (=> bs!1594083 m!7166920))

(assert (=> b!6361315 d!1995702))

(declare-fun bm!542783 () Bool)

(declare-fun call!542788 () (InoxSet Context!11306))

(assert (=> bm!542783 (= call!542788 (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))) (Context!11307 (t!378699 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))) (h!71430 s!2326)))))

(declare-fun b!6361760 () Bool)

(declare-fun e!3862984 () Bool)

(assert (=> b!6361760 (= e!3862984 (nullable!6262 (h!71431 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))))))

(declare-fun b!6361761 () Bool)

(declare-fun e!3862986 () (InoxSet Context!11306))

(assert (=> b!6361761 (= e!3862986 ((as const (Array Context!11306 Bool)) false))))

(declare-fun b!6361762 () Bool)

(declare-fun e!3862985 () (InoxSet Context!11306))

(assert (=> b!6361762 (= e!3862985 ((_ map or) call!542788 (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))) (h!71430 s!2326))))))

(declare-fun b!6361763 () Bool)

(assert (=> b!6361763 (= e!3862986 call!542788)))

(declare-fun d!1995704 () Bool)

(declare-fun c!1158096 () Bool)

(assert (=> d!1995704 (= c!1158096 e!3862984)))

(declare-fun res!2617603 () Bool)

(assert (=> d!1995704 (=> (not res!2617603) (not e!3862984))))

(assert (=> d!1995704 (= res!2617603 ((_ is Cons!64983) (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))))

(assert (=> d!1995704 (= (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (h!71430 s!2326)) e!3862985)))

(declare-fun b!6361764 () Bool)

(assert (=> b!6361764 (= e!3862985 e!3862986)))

(declare-fun c!1158095 () Bool)

(assert (=> b!6361764 (= c!1158095 ((_ is Cons!64983) (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))))

(assert (= (and d!1995704 res!2617603) b!6361760))

(assert (= (and d!1995704 c!1158096) b!6361762))

(assert (= (and d!1995704 (not c!1158096)) b!6361764))

(assert (= (and b!6361764 c!1158095) b!6361763))

(assert (= (and b!6361764 (not c!1158095)) b!6361761))

(assert (= (or b!6361762 b!6361763) bm!542783))

(declare-fun m!7166922 () Bool)

(assert (=> bm!542783 m!7166922))

(declare-fun m!7166924 () Bool)

(assert (=> b!6361760 m!7166924))

(declare-fun m!7166926 () Bool)

(assert (=> b!6361762 m!7166926))

(assert (=> b!6361341 d!1995704))

(declare-fun d!1995706 () Bool)

(assert (=> d!1995706 (= (head!13031 (unfocusZipperList!1690 zl!343)) (h!71431 (unfocusZipperList!1690 zl!343)))))

(assert (=> b!6361389 d!1995706))

(declare-fun d!1995708 () Bool)

(declare-fun lambda!350425 () Int)

(declare-fun exists!2573 ((InoxSet Context!11306) Int) Bool)

(assert (=> d!1995708 (= (nullableZipper!2035 lt!2366784) (exists!2573 lt!2366784 lambda!350425))))

(declare-fun bs!1594084 () Bool)

(assert (= bs!1594084 d!1995708))

(declare-fun m!7166942 () Bool)

(assert (=> bs!1594084 m!7166942))

(assert (=> b!6361442 d!1995708))

(declare-fun d!1995712 () Bool)

(assert (=> d!1995712 (= (head!13031 (exprs!6153 (h!71432 zl!343))) (h!71431 (exprs!6153 (h!71432 zl!343))))))

(assert (=> b!6361421 d!1995712))

(declare-fun b!6361769 () Bool)

(declare-fun e!3862991 () Bool)

(declare-fun e!3862990 () Bool)

(assert (=> b!6361769 (= e!3862991 e!3862990)))

(declare-fun c!1158100 () Bool)

(assert (=> b!6361769 (= c!1158100 ((_ is EmptyLang!16269) (derivativeStep!4974 r!7292 (head!13030 s!2326))))))

(declare-fun b!6361770 () Bool)

(declare-fun e!3862995 () Bool)

(assert (=> b!6361770 (= e!3862995 (matchR!8452 (derivativeStep!4974 (derivativeStep!4974 r!7292 (head!13030 s!2326)) (head!13030 (tail!12115 s!2326))) (tail!12115 (tail!12115 s!2326))))))

(declare-fun b!6361771 () Bool)

(declare-fun e!3862992 () Bool)

(declare-fun e!3862994 () Bool)

(assert (=> b!6361771 (= e!3862992 e!3862994)))

(declare-fun res!2617610 () Bool)

(assert (=> b!6361771 (=> res!2617610 e!3862994)))

(declare-fun call!542789 () Bool)

(assert (=> b!6361771 (= res!2617610 call!542789)))

(declare-fun b!6361772 () Bool)

(declare-fun lt!2366892 () Bool)

(assert (=> b!6361772 (= e!3862990 (not lt!2366892))))

(declare-fun b!6361773 () Bool)

(declare-fun e!3862993 () Bool)

(assert (=> b!6361773 (= e!3862993 (= (head!13030 (tail!12115 s!2326)) (c!1157838 (derivativeStep!4974 r!7292 (head!13030 s!2326)))))))

(declare-fun bm!542784 () Bool)

(assert (=> bm!542784 (= call!542789 (isEmpty!37089 (tail!12115 s!2326)))))

(declare-fun b!6361775 () Bool)

(declare-fun res!2617606 () Bool)

(declare-fun e!3862989 () Bool)

(assert (=> b!6361775 (=> res!2617606 e!3862989)))

(assert (=> b!6361775 (= res!2617606 e!3862993)))

(declare-fun res!2617609 () Bool)

(assert (=> b!6361775 (=> (not res!2617609) (not e!3862993))))

(assert (=> b!6361775 (= res!2617609 lt!2366892)))

(declare-fun b!6361776 () Bool)

(declare-fun res!2617613 () Bool)

(assert (=> b!6361776 (=> res!2617613 e!3862994)))

(assert (=> b!6361776 (= res!2617613 (not (isEmpty!37089 (tail!12115 (tail!12115 s!2326)))))))

(declare-fun b!6361777 () Bool)

(declare-fun res!2617611 () Bool)

(assert (=> b!6361777 (=> (not res!2617611) (not e!3862993))))

(assert (=> b!6361777 (= res!2617611 (not call!542789))))

(declare-fun b!6361778 () Bool)

(declare-fun res!2617612 () Bool)

(assert (=> b!6361778 (=> res!2617612 e!3862989)))

(assert (=> b!6361778 (= res!2617612 (not ((_ is ElementMatch!16269) (derivativeStep!4974 r!7292 (head!13030 s!2326)))))))

(assert (=> b!6361778 (= e!3862990 e!3862989)))

(declare-fun b!6361779 () Bool)

(assert (=> b!6361779 (= e!3862989 e!3862992)))

(declare-fun res!2617608 () Bool)

(assert (=> b!6361779 (=> (not res!2617608) (not e!3862992))))

(assert (=> b!6361779 (= res!2617608 (not lt!2366892))))

(declare-fun b!6361780 () Bool)

(assert (=> b!6361780 (= e!3862995 (nullable!6262 (derivativeStep!4974 r!7292 (head!13030 s!2326))))))

(declare-fun b!6361781 () Bool)

(declare-fun res!2617607 () Bool)

(assert (=> b!6361781 (=> (not res!2617607) (not e!3862993))))

(assert (=> b!6361781 (= res!2617607 (isEmpty!37089 (tail!12115 (tail!12115 s!2326))))))

(declare-fun b!6361782 () Bool)

(assert (=> b!6361782 (= e!3862991 (= lt!2366892 call!542789))))

(declare-fun d!1995714 () Bool)

(assert (=> d!1995714 e!3862991))

(declare-fun c!1158102 () Bool)

(assert (=> d!1995714 (= c!1158102 ((_ is EmptyExpr!16269) (derivativeStep!4974 r!7292 (head!13030 s!2326))))))

(assert (=> d!1995714 (= lt!2366892 e!3862995)))

(declare-fun c!1158101 () Bool)

(assert (=> d!1995714 (= c!1158101 (isEmpty!37089 (tail!12115 s!2326)))))

(assert (=> d!1995714 (validRegex!8005 (derivativeStep!4974 r!7292 (head!13030 s!2326)))))

(assert (=> d!1995714 (= (matchR!8452 (derivativeStep!4974 r!7292 (head!13030 s!2326)) (tail!12115 s!2326)) lt!2366892)))

(declare-fun b!6361774 () Bool)

(assert (=> b!6361774 (= e!3862994 (not (= (head!13030 (tail!12115 s!2326)) (c!1157838 (derivativeStep!4974 r!7292 (head!13030 s!2326))))))))

(assert (= (and d!1995714 c!1158101) b!6361780))

(assert (= (and d!1995714 (not c!1158101)) b!6361770))

(assert (= (and d!1995714 c!1158102) b!6361782))

(assert (= (and d!1995714 (not c!1158102)) b!6361769))

(assert (= (and b!6361769 c!1158100) b!6361772))

(assert (= (and b!6361769 (not c!1158100)) b!6361778))

(assert (= (and b!6361778 (not res!2617612)) b!6361775))

(assert (= (and b!6361775 res!2617609) b!6361777))

(assert (= (and b!6361777 res!2617611) b!6361781))

(assert (= (and b!6361781 res!2617607) b!6361773))

(assert (= (and b!6361775 (not res!2617606)) b!6361779))

(assert (= (and b!6361779 res!2617608) b!6361771))

(assert (= (and b!6361771 (not res!2617610)) b!6361776))

(assert (= (and b!6361776 (not res!2617613)) b!6361774))

(assert (= (or b!6361782 b!6361771 b!6361777) bm!542784))

(assert (=> b!6361773 m!7166410))

(declare-fun m!7166944 () Bool)

(assert (=> b!6361773 m!7166944))

(assert (=> b!6361776 m!7166410))

(declare-fun m!7166946 () Bool)

(assert (=> b!6361776 m!7166946))

(assert (=> b!6361776 m!7166946))

(declare-fun m!7166948 () Bool)

(assert (=> b!6361776 m!7166948))

(assert (=> d!1995714 m!7166410))

(assert (=> d!1995714 m!7166412))

(assert (=> d!1995714 m!7166416))

(declare-fun m!7166950 () Bool)

(assert (=> d!1995714 m!7166950))

(assert (=> b!6361774 m!7166410))

(assert (=> b!6361774 m!7166944))

(assert (=> b!6361780 m!7166416))

(declare-fun m!7166952 () Bool)

(assert (=> b!6361780 m!7166952))

(assert (=> bm!542784 m!7166410))

(assert (=> bm!542784 m!7166412))

(assert (=> b!6361770 m!7166410))

(assert (=> b!6361770 m!7166944))

(assert (=> b!6361770 m!7166416))

(assert (=> b!6361770 m!7166944))

(declare-fun m!7166954 () Bool)

(assert (=> b!6361770 m!7166954))

(assert (=> b!6361770 m!7166410))

(assert (=> b!6361770 m!7166946))

(assert (=> b!6361770 m!7166954))

(assert (=> b!6361770 m!7166946))

(declare-fun m!7166956 () Bool)

(assert (=> b!6361770 m!7166956))

(assert (=> b!6361781 m!7166410))

(assert (=> b!6361781 m!7166946))

(assert (=> b!6361781 m!7166946))

(assert (=> b!6361781 m!7166948))

(assert (=> b!6361025 d!1995714))

(declare-fun b!6361864 () Bool)

(declare-fun e!3863045 () Regex!16269)

(declare-fun call!542810 () Regex!16269)

(declare-fun call!542812 () Regex!16269)

(assert (=> b!6361864 (= e!3863045 (Union!16269 (Concat!25114 call!542810 (regTwo!33050 r!7292)) call!542812))))

(declare-fun bm!542804 () Bool)

(declare-fun call!542811 () Regex!16269)

(declare-fun call!542809 () Regex!16269)

(assert (=> bm!542804 (= call!542811 call!542809)))

(declare-fun b!6361865 () Bool)

(declare-fun e!3863042 () Regex!16269)

(assert (=> b!6361865 (= e!3863042 EmptyLang!16269)))

(declare-fun b!6361866 () Bool)

(declare-fun e!3863046 () Regex!16269)

(assert (=> b!6361866 (= e!3863046 (Union!16269 call!542810 call!542809))))

(declare-fun d!1995718 () Bool)

(declare-fun lt!2366898 () Regex!16269)

(assert (=> d!1995718 (validRegex!8005 lt!2366898)))

(assert (=> d!1995718 (= lt!2366898 e!3863042)))

(declare-fun c!1158134 () Bool)

(assert (=> d!1995718 (= c!1158134 (or ((_ is EmptyExpr!16269) r!7292) ((_ is EmptyLang!16269) r!7292)))))

(assert (=> d!1995718 (validRegex!8005 r!7292)))

(assert (=> d!1995718 (= (derivativeStep!4974 r!7292 (head!13030 s!2326)) lt!2366898)))

(declare-fun b!6361867 () Bool)

(declare-fun e!3863044 () Regex!16269)

(assert (=> b!6361867 (= e!3863042 e!3863044)))

(declare-fun c!1158131 () Bool)

(assert (=> b!6361867 (= c!1158131 ((_ is ElementMatch!16269) r!7292))))

(declare-fun b!6361868 () Bool)

(assert (=> b!6361868 (= e!3863045 (Union!16269 (Concat!25114 call!542812 (regTwo!33050 r!7292)) EmptyLang!16269))))

(declare-fun b!6361869 () Bool)

(declare-fun e!3863043 () Regex!16269)

(assert (=> b!6361869 (= e!3863043 (Concat!25114 call!542811 r!7292))))

(declare-fun c!1158132 () Bool)

(declare-fun c!1158130 () Bool)

(declare-fun c!1158133 () Bool)

(declare-fun bm!542805 () Bool)

(assert (=> bm!542805 (= call!542809 (derivativeStep!4974 (ite c!1158132 (regTwo!33051 r!7292) (ite c!1158133 (reg!16598 r!7292) (ite c!1158130 (regTwo!33050 r!7292) (regOne!33050 r!7292)))) (head!13030 s!2326)))))

(declare-fun bm!542806 () Bool)

(assert (=> bm!542806 (= call!542812 call!542811)))

(declare-fun b!6361870 () Bool)

(assert (=> b!6361870 (= e!3863044 (ite (= (head!13030 s!2326) (c!1157838 r!7292)) EmptyExpr!16269 EmptyLang!16269))))

(declare-fun bm!542807 () Bool)

(assert (=> bm!542807 (= call!542810 (derivativeStep!4974 (ite c!1158132 (regOne!33051 r!7292) (regOne!33050 r!7292)) (head!13030 s!2326)))))

(declare-fun b!6361871 () Bool)

(assert (=> b!6361871 (= c!1158132 ((_ is Union!16269) r!7292))))

(assert (=> b!6361871 (= e!3863044 e!3863046)))

(declare-fun b!6361872 () Bool)

(assert (=> b!6361872 (= e!3863046 e!3863043)))

(assert (=> b!6361872 (= c!1158133 ((_ is Star!16269) r!7292))))

(declare-fun b!6361873 () Bool)

(assert (=> b!6361873 (= c!1158130 (nullable!6262 (regOne!33050 r!7292)))))

(assert (=> b!6361873 (= e!3863043 e!3863045)))

(assert (= (and d!1995718 c!1158134) b!6361865))

(assert (= (and d!1995718 (not c!1158134)) b!6361867))

(assert (= (and b!6361867 c!1158131) b!6361870))

(assert (= (and b!6361867 (not c!1158131)) b!6361871))

(assert (= (and b!6361871 c!1158132) b!6361866))

(assert (= (and b!6361871 (not c!1158132)) b!6361872))

(assert (= (and b!6361872 c!1158133) b!6361869))

(assert (= (and b!6361872 (not c!1158133)) b!6361873))

(assert (= (and b!6361873 c!1158130) b!6361864))

(assert (= (and b!6361873 (not c!1158130)) b!6361868))

(assert (= (or b!6361864 b!6361868) bm!542806))

(assert (= (or b!6361869 bm!542806) bm!542804))

(assert (= (or b!6361866 bm!542804) bm!542805))

(assert (= (or b!6361866 b!6361864) bm!542807))

(declare-fun m!7167016 () Bool)

(assert (=> d!1995718 m!7167016))

(assert (=> d!1995718 m!7166256))

(assert (=> bm!542805 m!7166408))

(declare-fun m!7167018 () Bool)

(assert (=> bm!542805 m!7167018))

(assert (=> bm!542807 m!7166408))

(declare-fun m!7167020 () Bool)

(assert (=> bm!542807 m!7167020))

(assert (=> b!6361873 m!7166816))

(assert (=> b!6361025 d!1995718))

(declare-fun d!1995736 () Bool)

(assert (=> d!1995736 (= (head!13030 s!2326) (h!71430 s!2326))))

(assert (=> b!6361025 d!1995736))

(assert (=> b!6361025 d!1995648))

(declare-fun d!1995738 () Bool)

(declare-fun c!1158135 () Bool)

(assert (=> d!1995738 (= c!1158135 (isEmpty!37089 (tail!12115 (t!378698 s!2326))))))

(declare-fun e!3863047 () Bool)

(assert (=> d!1995738 (= (matchZipper!2281 (derivationStepZipper!2235 ((_ map or) lt!2366796 lt!2366784) (head!13030 (t!378698 s!2326))) (tail!12115 (t!378698 s!2326))) e!3863047)))

(declare-fun b!6361874 () Bool)

(assert (=> b!6361874 (= e!3863047 (nullableZipper!2035 (derivationStepZipper!2235 ((_ map or) lt!2366796 lt!2366784) (head!13030 (t!378698 s!2326)))))))

(declare-fun b!6361875 () Bool)

(assert (=> b!6361875 (= e!3863047 (matchZipper!2281 (derivationStepZipper!2235 (derivationStepZipper!2235 ((_ map or) lt!2366796 lt!2366784) (head!13030 (t!378698 s!2326))) (head!13030 (tail!12115 (t!378698 s!2326)))) (tail!12115 (tail!12115 (t!378698 s!2326)))))))

(assert (= (and d!1995738 c!1158135) b!6361874))

(assert (= (and d!1995738 (not c!1158135)) b!6361875))

(assert (=> d!1995738 m!7166666))

(declare-fun m!7167022 () Bool)

(assert (=> d!1995738 m!7167022))

(assert (=> b!6361874 m!7166672))

(declare-fun m!7167024 () Bool)

(assert (=> b!6361874 m!7167024))

(assert (=> b!6361875 m!7166666))

(declare-fun m!7167026 () Bool)

(assert (=> b!6361875 m!7167026))

(assert (=> b!6361875 m!7166672))

(assert (=> b!6361875 m!7167026))

(declare-fun m!7167028 () Bool)

(assert (=> b!6361875 m!7167028))

(assert (=> b!6361875 m!7166666))

(declare-fun m!7167030 () Bool)

(assert (=> b!6361875 m!7167030))

(assert (=> b!6361875 m!7167028))

(assert (=> b!6361875 m!7167030))

(declare-fun m!7167032 () Bool)

(assert (=> b!6361875 m!7167032))

(assert (=> b!6361441 d!1995738))

(declare-fun bs!1594094 () Bool)

(declare-fun d!1995740 () Bool)

(assert (= bs!1594094 (and d!1995740 b!6360754)))

(declare-fun lambda!350429 () Int)

(assert (=> bs!1594094 (= (= (head!13030 (t!378698 s!2326)) (h!71430 s!2326)) (= lambda!350429 lambda!350351))))

(assert (=> d!1995740 true))

(assert (=> d!1995740 (= (derivationStepZipper!2235 ((_ map or) lt!2366796 lt!2366784) (head!13030 (t!378698 s!2326))) (flatMap!1774 ((_ map or) lt!2366796 lt!2366784) lambda!350429))))

(declare-fun bs!1594095 () Bool)

(assert (= bs!1594095 d!1995740))

(declare-fun m!7167034 () Bool)

(assert (=> bs!1594095 m!7167034))

(assert (=> b!6361441 d!1995740))

(declare-fun d!1995742 () Bool)

(assert (=> d!1995742 (= (head!13030 (t!378698 s!2326)) (h!71430 (t!378698 s!2326)))))

(assert (=> b!6361441 d!1995742))

(declare-fun d!1995744 () Bool)

(assert (=> d!1995744 (= (tail!12115 (t!378698 s!2326)) (t!378698 (t!378698 s!2326)))))

(assert (=> b!6361441 d!1995744))

(declare-fun d!1995746 () Bool)

(assert (=> d!1995746 (= (isEmpty!37086 (t!378699 (unfocusZipperList!1690 zl!343))) ((_ is Nil!64983) (t!378699 (unfocusZipperList!1690 zl!343))))))

(assert (=> b!6361391 d!1995746))

(declare-fun bs!1594096 () Bool)

(declare-fun d!1995748 () Bool)

(assert (= bs!1594096 (and d!1995748 d!1995708)))

(declare-fun lambda!350432 () Int)

(assert (=> bs!1594096 (= lambda!350432 lambda!350425)))

(assert (=> d!1995748 (= (nullableZipper!2035 lt!2366796) (exists!2573 lt!2366796 lambda!350432))))

(declare-fun bs!1594097 () Bool)

(assert (= bs!1594097 d!1995748))

(declare-fun m!7167036 () Bool)

(assert (=> bs!1594097 m!7167036))

(assert (=> b!6361438 d!1995748))

(declare-fun c!1158141 () Bool)

(declare-fun c!1158140 () Bool)

(declare-fun bm!542808 () Bool)

(declare-fun call!542814 () List!65107)

(assert (=> bm!542808 (= call!542814 ($colon$colon!2130 (exprs!6153 (ite (or c!1157965 c!1157968) (Context!11307 lt!2366792) (Context!11307 call!542706))) (ite (or c!1158141 c!1158140) (regTwo!33050 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))) (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292)))))))))))

(declare-fun bm!542809 () Bool)

(declare-fun call!542818 () List!65107)

(assert (=> bm!542809 (= call!542818 call!542814)))

(declare-fun e!3863052 () (InoxSet Context!11306))

(declare-fun b!6361882 () Bool)

(assert (=> b!6361882 (= e!3863052 (store ((as const (Array Context!11306 Bool)) false) (ite (or c!1157965 c!1157968) (Context!11307 lt!2366792) (Context!11307 call!542706)) true))))

(declare-fun b!6361883 () Bool)

(declare-fun e!3863050 () (InoxSet Context!11306))

(declare-fun call!542816 () (InoxSet Context!11306))

(assert (=> b!6361883 (= e!3863050 call!542816)))

(declare-fun b!6361884 () Bool)

(declare-fun c!1158142 () Bool)

(assert (=> b!6361884 (= c!1158142 ((_ is Star!16269) (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))))))

(declare-fun e!3863055 () (InoxSet Context!11306))

(assert (=> b!6361884 (= e!3863055 e!3863050)))

(declare-fun b!6361885 () Bool)

(declare-fun e!3863053 () (InoxSet Context!11306))

(assert (=> b!6361885 (= e!3863052 e!3863053)))

(declare-fun c!1158138 () Bool)

(assert (=> b!6361885 (= c!1158138 ((_ is Union!16269) (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))))))

(declare-fun call!542817 () (InoxSet Context!11306))

(declare-fun bm!542810 () Bool)

(assert (=> bm!542810 (= call!542817 (derivationStepZipperDown!1517 (ite c!1158138 (regOne!33051 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))) (regOne!33050 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292)))))))) (ite c!1158138 (ite (or c!1157965 c!1157968) (Context!11307 lt!2366792) (Context!11307 call!542706)) (Context!11307 call!542814)) (h!71430 s!2326)))))

(declare-fun b!6361886 () Bool)

(declare-fun e!3863051 () Bool)

(assert (=> b!6361886 (= c!1158141 e!3863051)))

(declare-fun res!2617645 () Bool)

(assert (=> b!6361886 (=> (not res!2617645) (not e!3863051))))

(assert (=> b!6361886 (= res!2617645 ((_ is Concat!25114) (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))))))

(declare-fun e!3863054 () (InoxSet Context!11306))

(assert (=> b!6361886 (= e!3863053 e!3863054)))

(declare-fun b!6361888 () Bool)

(declare-fun call!542815 () (InoxSet Context!11306))

(assert (=> b!6361888 (= e!3863054 ((_ map or) call!542817 call!542815))))

(declare-fun bm!542811 () Bool)

(declare-fun call!542813 () (InoxSet Context!11306))

(assert (=> bm!542811 (= call!542813 (derivationStepZipperDown!1517 (ite c!1158138 (regTwo!33051 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))) (ite c!1158141 (regTwo!33050 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))) (ite c!1158140 (regOne!33050 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))) (reg!16598 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292)))))))))) (ite (or c!1158138 c!1158141) (ite (or c!1157965 c!1157968) (Context!11307 lt!2366792) (Context!11307 call!542706)) (Context!11307 call!542818)) (h!71430 s!2326)))))

(declare-fun bm!542812 () Bool)

(assert (=> bm!542812 (= call!542815 call!542813)))

(declare-fun b!6361889 () Bool)

(assert (=> b!6361889 (= e!3863054 e!3863055)))

(assert (=> b!6361889 (= c!1158140 ((_ is Concat!25114) (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))))))

(declare-fun b!6361890 () Bool)

(assert (=> b!6361890 (= e!3863051 (nullable!6262 (regOne!33050 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292)))))))))))

(declare-fun b!6361891 () Bool)

(assert (=> b!6361891 (= e!3863053 ((_ map or) call!542817 call!542813))))

(declare-fun bm!542813 () Bool)

(assert (=> bm!542813 (= call!542816 call!542815)))

(declare-fun b!6361892 () Bool)

(assert (=> b!6361892 (= e!3863050 ((as const (Array Context!11306 Bool)) false))))

(declare-fun d!1995750 () Bool)

(declare-fun c!1158139 () Bool)

(assert (=> d!1995750 (= c!1158139 (and ((_ is ElementMatch!16269) (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))) (= (c!1157838 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292))))))) (h!71430 s!2326))))))

(assert (=> d!1995750 (= (derivationStepZipperDown!1517 (ite c!1157965 (regTwo!33051 (reg!16598 (regOne!33050 r!7292))) (ite c!1157968 (regTwo!33050 (reg!16598 (regOne!33050 r!7292))) (ite c!1157967 (regOne!33050 (reg!16598 (regOne!33050 r!7292))) (reg!16598 (reg!16598 (regOne!33050 r!7292)))))) (ite (or c!1157965 c!1157968) (Context!11307 lt!2366792) (Context!11307 call!542706)) (h!71430 s!2326)) e!3863052)))

(declare-fun b!6361887 () Bool)

(assert (=> b!6361887 (= e!3863055 call!542816)))

(assert (= (and d!1995750 c!1158139) b!6361882))

(assert (= (and d!1995750 (not c!1158139)) b!6361885))

(assert (= (and b!6361885 c!1158138) b!6361891))

(assert (= (and b!6361885 (not c!1158138)) b!6361886))

(assert (= (and b!6361886 res!2617645) b!6361890))

(assert (= (and b!6361886 c!1158141) b!6361888))

(assert (= (and b!6361886 (not c!1158141)) b!6361889))

(assert (= (and b!6361889 c!1158140) b!6361887))

(assert (= (and b!6361889 (not c!1158140)) b!6361884))

(assert (= (and b!6361884 c!1158142) b!6361883))

(assert (= (and b!6361884 (not c!1158142)) b!6361892))

(assert (= (or b!6361887 b!6361883) bm!542809))

(assert (= (or b!6361887 b!6361883) bm!542813))

(assert (= (or b!6361888 bm!542809) bm!542808))

(assert (= (or b!6361888 bm!542813) bm!542812))

(assert (= (or b!6361891 bm!542812) bm!542811))

(assert (= (or b!6361891 b!6361888) bm!542810))

(declare-fun m!7167038 () Bool)

(assert (=> bm!542808 m!7167038))

(declare-fun m!7167040 () Bool)

(assert (=> b!6361882 m!7167040))

(declare-fun m!7167042 () Bool)

(assert (=> bm!542810 m!7167042))

(declare-fun m!7167044 () Bool)

(assert (=> b!6361890 m!7167044))

(declare-fun m!7167046 () Bool)

(assert (=> bm!542811 m!7167046))

(assert (=> bm!542699 d!1995750))

(declare-fun d!1995752 () Bool)

(assert (=> d!1995752 (= (isConcat!1194 lt!2366877) ((_ is Concat!25114) lt!2366877))))

(assert (=> b!6361424 d!1995752))

(declare-fun d!1995754 () Bool)

(declare-fun c!1158143 () Bool)

(assert (=> d!1995754 (= c!1158143 (isEmpty!37089 (tail!12115 (t!378698 s!2326))))))

(declare-fun e!3863056 () Bool)

(assert (=> d!1995754 (= (matchZipper!2281 (derivationStepZipper!2235 lt!2366796 (head!13030 (t!378698 s!2326))) (tail!12115 (t!378698 s!2326))) e!3863056)))

(declare-fun b!6361893 () Bool)

(assert (=> b!6361893 (= e!3863056 (nullableZipper!2035 (derivationStepZipper!2235 lt!2366796 (head!13030 (t!378698 s!2326)))))))

(declare-fun b!6361894 () Bool)

(assert (=> b!6361894 (= e!3863056 (matchZipper!2281 (derivationStepZipper!2235 (derivationStepZipper!2235 lt!2366796 (head!13030 (t!378698 s!2326))) (head!13030 (tail!12115 (t!378698 s!2326)))) (tail!12115 (tail!12115 (t!378698 s!2326)))))))

(assert (= (and d!1995754 c!1158143) b!6361893))

(assert (= (and d!1995754 (not c!1158143)) b!6361894))

(assert (=> d!1995754 m!7166666))

(assert (=> d!1995754 m!7167022))

(assert (=> b!6361893 m!7166664))

(declare-fun m!7167048 () Bool)

(assert (=> b!6361893 m!7167048))

(assert (=> b!6361894 m!7166666))

(assert (=> b!6361894 m!7167026))

(assert (=> b!6361894 m!7166664))

(assert (=> b!6361894 m!7167026))

(declare-fun m!7167050 () Bool)

(assert (=> b!6361894 m!7167050))

(assert (=> b!6361894 m!7166666))

(assert (=> b!6361894 m!7167030))

(assert (=> b!6361894 m!7167050))

(assert (=> b!6361894 m!7167030))

(declare-fun m!7167052 () Bool)

(assert (=> b!6361894 m!7167052))

(assert (=> b!6361439 d!1995754))

(declare-fun bs!1594104 () Bool)

(declare-fun d!1995756 () Bool)

(assert (= bs!1594104 (and d!1995756 b!6360754)))

(declare-fun lambda!350434 () Int)

(assert (=> bs!1594104 (= (= (head!13030 (t!378698 s!2326)) (h!71430 s!2326)) (= lambda!350434 lambda!350351))))

(declare-fun bs!1594105 () Bool)

(assert (= bs!1594105 (and d!1995756 d!1995740)))

(assert (=> bs!1594105 (= lambda!350434 lambda!350429)))

(assert (=> d!1995756 true))

(assert (=> d!1995756 (= (derivationStepZipper!2235 lt!2366796 (head!13030 (t!378698 s!2326))) (flatMap!1774 lt!2366796 lambda!350434))))

(declare-fun bs!1594106 () Bool)

(assert (= bs!1594106 d!1995756))

(declare-fun m!7167056 () Bool)

(assert (=> bs!1594106 m!7167056))

(assert (=> b!6361439 d!1995756))

(assert (=> b!6361439 d!1995742))

(assert (=> b!6361439 d!1995744))

(assert (=> b!6361028 d!1995736))

(declare-fun bs!1594107 () Bool)

(declare-fun d!1995760 () Bool)

(assert (= bs!1594107 (and d!1995760 d!1995554)))

(declare-fun lambda!350435 () Int)

(assert (=> bs!1594107 (= lambda!350435 lambda!350409)))

(declare-fun bs!1594108 () Bool)

(assert (= bs!1594108 (and d!1995760 d!1995540)))

(assert (=> bs!1594108 (= lambda!350435 lambda!350404)))

(declare-fun bs!1594109 () Bool)

(assert (= bs!1594109 (and d!1995760 d!1995594)))

(assert (=> bs!1594109 (= lambda!350435 lambda!350414)))

(declare-fun bs!1594110 () Bool)

(assert (= bs!1594110 (and d!1995760 d!1995538)))

(assert (=> bs!1594110 (= lambda!350435 lambda!350401)))

(declare-fun bs!1594111 () Bool)

(assert (= bs!1594111 (and d!1995760 d!1995550)))

(assert (=> bs!1594111 (= lambda!350435 lambda!350408)))

(declare-fun bs!1594112 () Bool)

(assert (= bs!1594112 (and d!1995760 d!1995536)))

(assert (=> bs!1594112 (= lambda!350435 lambda!350398)))

(declare-fun bs!1594113 () Bool)

(assert (= bs!1594113 (and d!1995760 d!1995578)))

(assert (=> bs!1594113 (= lambda!350435 lambda!350413)))

(declare-fun bs!1594114 () Bool)

(assert (= bs!1594114 (and d!1995760 d!1995628)))

(assert (=> bs!1594114 (= lambda!350435 lambda!350418)))

(declare-fun bs!1594115 () Bool)

(assert (= bs!1594115 (and d!1995760 d!1995542)))

(assert (=> bs!1594115 (= lambda!350435 lambda!350407)))

(declare-fun b!6361904 () Bool)

(declare-fun e!3863068 () Bool)

(declare-fun lt!2366899 () Regex!16269)

(assert (=> b!6361904 (= e!3863068 (isUnion!1108 lt!2366899))))

(declare-fun b!6361905 () Bool)

(declare-fun e!3863069 () Bool)

(assert (=> b!6361905 (= e!3863069 e!3863068)))

(declare-fun c!1158149 () Bool)

(assert (=> b!6361905 (= c!1158149 (isEmpty!37086 (tail!12116 (t!378699 (unfocusZipperList!1690 zl!343)))))))

(declare-fun b!6361906 () Bool)

(declare-fun e!3863064 () Regex!16269)

(declare-fun e!3863066 () Regex!16269)

(assert (=> b!6361906 (= e!3863064 e!3863066)))

(declare-fun c!1158147 () Bool)

(assert (=> b!6361906 (= c!1158147 ((_ is Cons!64983) (t!378699 (unfocusZipperList!1690 zl!343))))))

(declare-fun b!6361907 () Bool)

(assert (=> b!6361907 (= e!3863069 (isEmptyLang!1678 lt!2366899))))

(declare-fun b!6361908 () Bool)

(assert (=> b!6361908 (= e!3863068 (= lt!2366899 (head!13031 (t!378699 (unfocusZipperList!1690 zl!343)))))))

(declare-fun e!3863067 () Bool)

(assert (=> d!1995760 e!3863067))

(declare-fun res!2617651 () Bool)

(assert (=> d!1995760 (=> (not res!2617651) (not e!3863067))))

(assert (=> d!1995760 (= res!2617651 (validRegex!8005 lt!2366899))))

(assert (=> d!1995760 (= lt!2366899 e!3863064)))

(declare-fun c!1158148 () Bool)

(declare-fun e!3863065 () Bool)

(assert (=> d!1995760 (= c!1158148 e!3863065)))

(declare-fun res!2617652 () Bool)

(assert (=> d!1995760 (=> (not res!2617652) (not e!3863065))))

(assert (=> d!1995760 (= res!2617652 ((_ is Cons!64983) (t!378699 (unfocusZipperList!1690 zl!343))))))

(assert (=> d!1995760 (forall!15447 (t!378699 (unfocusZipperList!1690 zl!343)) lambda!350435)))

(assert (=> d!1995760 (= (generalisedUnion!2113 (t!378699 (unfocusZipperList!1690 zl!343))) lt!2366899)))

(declare-fun b!6361909 () Bool)

(assert (=> b!6361909 (= e!3863064 (h!71431 (t!378699 (unfocusZipperList!1690 zl!343))))))

(declare-fun b!6361910 () Bool)

(assert (=> b!6361910 (= e!3863065 (isEmpty!37086 (t!378699 (t!378699 (unfocusZipperList!1690 zl!343)))))))

(declare-fun b!6361911 () Bool)

(assert (=> b!6361911 (= e!3863066 EmptyLang!16269)))

(declare-fun b!6361912 () Bool)

(assert (=> b!6361912 (= e!3863067 e!3863069)))

(declare-fun c!1158146 () Bool)

(assert (=> b!6361912 (= c!1158146 (isEmpty!37086 (t!378699 (unfocusZipperList!1690 zl!343))))))

(declare-fun b!6361913 () Bool)

(assert (=> b!6361913 (= e!3863066 (Union!16269 (h!71431 (t!378699 (unfocusZipperList!1690 zl!343))) (generalisedUnion!2113 (t!378699 (t!378699 (unfocusZipperList!1690 zl!343))))))))

(assert (= (and d!1995760 res!2617652) b!6361910))

(assert (= (and d!1995760 c!1158148) b!6361909))

(assert (= (and d!1995760 (not c!1158148)) b!6361906))

(assert (= (and b!6361906 c!1158147) b!6361913))

(assert (= (and b!6361906 (not c!1158147)) b!6361911))

(assert (= (and d!1995760 res!2617651) b!6361912))

(assert (= (and b!6361912 c!1158146) b!6361907))

(assert (= (and b!6361912 (not c!1158146)) b!6361905))

(assert (= (and b!6361905 c!1158149) b!6361908))

(assert (= (and b!6361905 (not c!1158149)) b!6361904))

(assert (=> b!6361912 m!7166630))

(declare-fun m!7167066 () Bool)

(assert (=> b!6361913 m!7167066))

(declare-fun m!7167070 () Bool)

(assert (=> b!6361905 m!7167070))

(assert (=> b!6361905 m!7167070))

(declare-fun m!7167074 () Bool)

(assert (=> b!6361905 m!7167074))

(declare-fun m!7167078 () Bool)

(assert (=> b!6361908 m!7167078))

(declare-fun m!7167080 () Bool)

(assert (=> b!6361907 m!7167080))

(declare-fun m!7167082 () Bool)

(assert (=> b!6361904 m!7167082))

(declare-fun m!7167086 () Bool)

(assert (=> d!1995760 m!7167086))

(declare-fun m!7167088 () Bool)

(assert (=> d!1995760 m!7167088))

(declare-fun m!7167092 () Bool)

(assert (=> b!6361910 m!7167092))

(assert (=> b!6361394 d!1995760))

(declare-fun d!1995772 () Bool)

(assert (=> d!1995772 true))

(assert (=> d!1995772 true))

(declare-fun res!2617655 () Bool)

(assert (=> d!1995772 (= (choose!47245 lambda!350350) res!2617655)))

(assert (=> d!1995510 d!1995772))

(declare-fun bs!1594117 () Bool)

(declare-fun d!1995776 () Bool)

(assert (= bs!1594117 (and d!1995776 d!1995760)))

(declare-fun lambda!350438 () Int)

(assert (=> bs!1594117 (= lambda!350438 lambda!350435)))

(declare-fun bs!1594118 () Bool)

(assert (= bs!1594118 (and d!1995776 d!1995554)))

(assert (=> bs!1594118 (= lambda!350438 lambda!350409)))

(declare-fun bs!1594119 () Bool)

(assert (= bs!1594119 (and d!1995776 d!1995540)))

(assert (=> bs!1594119 (= lambda!350438 lambda!350404)))

(declare-fun bs!1594120 () Bool)

(assert (= bs!1594120 (and d!1995776 d!1995594)))

(assert (=> bs!1594120 (= lambda!350438 lambda!350414)))

(declare-fun bs!1594121 () Bool)

(assert (= bs!1594121 (and d!1995776 d!1995538)))

(assert (=> bs!1594121 (= lambda!350438 lambda!350401)))

(declare-fun bs!1594122 () Bool)

(assert (= bs!1594122 (and d!1995776 d!1995550)))

(assert (=> bs!1594122 (= lambda!350438 lambda!350408)))

(declare-fun bs!1594123 () Bool)

(assert (= bs!1594123 (and d!1995776 d!1995536)))

(assert (=> bs!1594123 (= lambda!350438 lambda!350398)))

(declare-fun bs!1594124 () Bool)

(assert (= bs!1594124 (and d!1995776 d!1995578)))

(assert (=> bs!1594124 (= lambda!350438 lambda!350413)))

(declare-fun bs!1594125 () Bool)

(assert (= bs!1594125 (and d!1995776 d!1995628)))

(assert (=> bs!1594125 (= lambda!350438 lambda!350418)))

(declare-fun bs!1594126 () Bool)

(assert (= bs!1594126 (and d!1995776 d!1995542)))

(assert (=> bs!1594126 (= lambda!350438 lambda!350407)))

(declare-fun b!6361916 () Bool)

(declare-fun e!3863072 () Bool)

(declare-fun lt!2366900 () Regex!16269)

(assert (=> b!6361916 (= e!3863072 (= lt!2366900 (head!13031 (t!378699 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun b!6361917 () Bool)

(declare-fun e!3863076 () Regex!16269)

(assert (=> b!6361917 (= e!3863076 EmptyExpr!16269)))

(declare-fun b!6361918 () Bool)

(declare-fun e!3863071 () Regex!16269)

(assert (=> b!6361918 (= e!3863071 (h!71431 (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361919 () Bool)

(assert (=> b!6361919 (= e!3863072 (isConcat!1194 lt!2366900))))

(declare-fun e!3863074 () Bool)

(assert (=> d!1995776 e!3863074))

(declare-fun res!2617657 () Bool)

(assert (=> d!1995776 (=> (not res!2617657) (not e!3863074))))

(assert (=> d!1995776 (= res!2617657 (validRegex!8005 lt!2366900))))

(assert (=> d!1995776 (= lt!2366900 e!3863071)))

(declare-fun c!1158155 () Bool)

(declare-fun e!3863073 () Bool)

(assert (=> d!1995776 (= c!1158155 e!3863073)))

(declare-fun res!2617656 () Bool)

(assert (=> d!1995776 (=> (not res!2617656) (not e!3863073))))

(assert (=> d!1995776 (= res!2617656 ((_ is Cons!64983) (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(assert (=> d!1995776 (forall!15447 (t!378699 (exprs!6153 (h!71432 zl!343))) lambda!350438)))

(assert (=> d!1995776 (= (generalisedConcat!1866 (t!378699 (exprs!6153 (h!71432 zl!343)))) lt!2366900)))

(declare-fun b!6361920 () Bool)

(declare-fun e!3863075 () Bool)

(assert (=> b!6361920 (= e!3863075 (isEmptyExpr!1671 lt!2366900))))

(declare-fun b!6361921 () Bool)

(assert (=> b!6361921 (= e!3863076 (Concat!25114 (h!71431 (t!378699 (exprs!6153 (h!71432 zl!343)))) (generalisedConcat!1866 (t!378699 (t!378699 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun b!6361922 () Bool)

(assert (=> b!6361922 (= e!3863075 e!3863072)))

(declare-fun c!1158153 () Bool)

(assert (=> b!6361922 (= c!1158153 (isEmpty!37086 (tail!12116 (t!378699 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun b!6361923 () Bool)

(assert (=> b!6361923 (= e!3863073 (isEmpty!37086 (t!378699 (t!378699 (exprs!6153 (h!71432 zl!343))))))))

(declare-fun b!6361924 () Bool)

(assert (=> b!6361924 (= e!3863074 e!3863075)))

(declare-fun c!1158156 () Bool)

(assert (=> b!6361924 (= c!1158156 (isEmpty!37086 (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6361925 () Bool)

(assert (=> b!6361925 (= e!3863071 e!3863076)))

(declare-fun c!1158154 () Bool)

(assert (=> b!6361925 (= c!1158154 ((_ is Cons!64983) (t!378699 (exprs!6153 (h!71432 zl!343)))))))

(assert (= (and d!1995776 res!2617656) b!6361923))

(assert (= (and d!1995776 c!1158155) b!6361918))

(assert (= (and d!1995776 (not c!1158155)) b!6361925))

(assert (= (and b!6361925 c!1158154) b!6361921))

(assert (= (and b!6361925 (not c!1158154)) b!6361917))

(assert (= (and d!1995776 res!2617657) b!6361924))

(assert (= (and b!6361924 c!1158156) b!6361920))

(assert (= (and b!6361924 (not c!1158156)) b!6361922))

(assert (= (and b!6361922 c!1158153) b!6361916))

(assert (= (and b!6361922 (not c!1158153)) b!6361919))

(declare-fun m!7167098 () Bool)

(assert (=> b!6361920 m!7167098))

(declare-fun m!7167100 () Bool)

(assert (=> b!6361919 m!7167100))

(declare-fun m!7167102 () Bool)

(assert (=> b!6361921 m!7167102))

(declare-fun m!7167104 () Bool)

(assert (=> b!6361916 m!7167104))

(assert (=> b!6361924 m!7166262))

(declare-fun m!7167106 () Bool)

(assert (=> b!6361923 m!7167106))

(declare-fun m!7167108 () Bool)

(assert (=> d!1995776 m!7167108))

(declare-fun m!7167110 () Bool)

(assert (=> d!1995776 m!7167110))

(declare-fun m!7167112 () Bool)

(assert (=> b!6361922 m!7167112))

(assert (=> b!6361922 m!7167112))

(declare-fun m!7167114 () Bool)

(assert (=> b!6361922 m!7167114))

(assert (=> b!6361426 d!1995776))

(assert (=> b!6361029 d!1995736))

(assert (=> d!1995544 d!1995548))

(assert (=> d!1995544 d!1995546))

(declare-fun e!3863086 () Bool)

(declare-fun d!1995784 () Bool)

(assert (=> d!1995784 (= (matchZipper!2281 ((_ map or) lt!2366796 lt!2366784) (t!378698 s!2326)) e!3863086)))

(declare-fun res!2617661 () Bool)

(assert (=> d!1995784 (=> res!2617661 e!3863086)))

(assert (=> d!1995784 (= res!2617661 (matchZipper!2281 lt!2366796 (t!378698 s!2326)))))

(assert (=> d!1995784 true))

(declare-fun _$48!2144 () Unit!158407)

(assert (=> d!1995784 (= (choose!47250 lt!2366796 lt!2366784 (t!378698 s!2326)) _$48!2144)))

(declare-fun b!6361943 () Bool)

(assert (=> b!6361943 (= e!3863086 (matchZipper!2281 lt!2366784 (t!378698 s!2326)))))

(assert (= (and d!1995784 (not res!2617661)) b!6361943))

(assert (=> d!1995784 m!7166286))

(assert (=> d!1995784 m!7166284))

(assert (=> b!6361943 m!7166226))

(assert (=> d!1995544 d!1995784))

(assert (=> b!6361428 d!1995520))

(assert (=> d!1995458 d!1995582))

(assert (=> d!1995458 d!1995504))

(declare-fun b!6361955 () Bool)

(declare-fun e!3863094 () Bool)

(declare-fun e!3863093 () Bool)

(assert (=> b!6361955 (= e!3863094 e!3863093)))

(declare-fun res!2617664 () Bool)

(assert (=> b!6361955 (=> (not res!2617664) (not e!3863093))))

(declare-fun call!542834 () Bool)

(assert (=> b!6361955 (= res!2617664 call!542834)))

(declare-fun b!6361956 () Bool)

(declare-fun e!3863099 () Bool)

(declare-fun e!3863098 () Bool)

(assert (=> b!6361956 (= e!3863099 e!3863098)))

(declare-fun c!1158169 () Bool)

(assert (=> b!6361956 (= c!1158169 ((_ is Star!16269) (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))))))

(declare-fun b!6361957 () Bool)

(declare-fun e!3863096 () Bool)

(declare-fun call!542835 () Bool)

(assert (=> b!6361957 (= e!3863096 call!542835)))

(declare-fun b!6361958 () Bool)

(declare-fun call!542836 () Bool)

(assert (=> b!6361958 (= e!3863093 call!542836)))

(declare-fun bm!542829 () Bool)

(declare-fun c!1158168 () Bool)

(assert (=> bm!542829 (= call!542836 (validRegex!8005 (ite c!1158168 (regTwo!33051 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))) (regTwo!33050 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))))))))

(declare-fun bm!542830 () Bool)

(assert (=> bm!542830 (= call!542835 (validRegex!8005 (ite c!1158169 (reg!16598 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))) (ite c!1158168 (regOne!33051 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))) (regOne!33050 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292)))))))))

(declare-fun bm!542831 () Bool)

(assert (=> bm!542831 (= call!542834 call!542835)))

(declare-fun b!6361959 () Bool)

(declare-fun e!3863097 () Bool)

(assert (=> b!6361959 (= e!3863097 call!542836)))

(declare-fun b!6361960 () Bool)

(declare-fun res!2617666 () Bool)

(assert (=> b!6361960 (=> (not res!2617666) (not e!3863097))))

(assert (=> b!6361960 (= res!2617666 call!542834)))

(declare-fun e!3863095 () Bool)

(assert (=> b!6361960 (= e!3863095 e!3863097)))

(declare-fun b!6361961 () Bool)

(assert (=> b!6361961 (= e!3863098 e!3863095)))

(assert (=> b!6361961 (= c!1158168 ((_ is Union!16269) (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))))))

(declare-fun b!6361962 () Bool)

(assert (=> b!6361962 (= e!3863098 e!3863096)))

(declare-fun res!2617665 () Bool)

(assert (=> b!6361962 (= res!2617665 (not (nullable!6262 (reg!16598 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))))))))

(assert (=> b!6361962 (=> (not res!2617665) (not e!3863096))))

(declare-fun d!1995800 () Bool)

(declare-fun res!2617663 () Bool)

(assert (=> d!1995800 (=> res!2617663 e!3863099)))

(assert (=> d!1995800 (= res!2617663 ((_ is ElementMatch!16269) (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))))))

(assert (=> d!1995800 (= (validRegex!8005 (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292))) e!3863099)))

(declare-fun b!6361963 () Bool)

(declare-fun res!2617667 () Bool)

(assert (=> b!6361963 (=> res!2617667 e!3863094)))

(assert (=> b!6361963 (= res!2617667 (not ((_ is Concat!25114) (ite c!1157974 (regTwo!33051 r!7292) (regTwo!33050 r!7292)))))))

(assert (=> b!6361963 (= e!3863095 e!3863094)))

(assert (= (and d!1995800 (not res!2617663)) b!6361956))

(assert (= (and b!6361956 c!1158169) b!6361962))

(assert (= (and b!6361956 (not c!1158169)) b!6361961))

(assert (= (and b!6361962 res!2617665) b!6361957))

(assert (= (and b!6361961 c!1158168) b!6361960))

(assert (= (and b!6361961 (not c!1158168)) b!6361963))

(assert (= (and b!6361960 res!2617666) b!6361959))

(assert (= (and b!6361963 (not res!2617667)) b!6361955))

(assert (= (and b!6361955 res!2617664) b!6361958))

(assert (= (or b!6361959 b!6361958) bm!542829))

(assert (= (or b!6361960 b!6361955) bm!542831))

(assert (= (or b!6361957 bm!542831) bm!542830))

(declare-fun m!7167140 () Bool)

(assert (=> bm!542829 m!7167140))

(declare-fun m!7167142 () Bool)

(assert (=> bm!542830 m!7167142))

(declare-fun m!7167146 () Bool)

(assert (=> b!6361962 m!7167146))

(assert (=> bm!542708 d!1995800))

(declare-fun d!1995802 () Bool)

(declare-fun res!2617668 () Bool)

(declare-fun e!3863100 () Bool)

(assert (=> d!1995802 (=> res!2617668 e!3863100)))

(assert (=> d!1995802 (= res!2617668 ((_ is Nil!64983) lt!2366874))))

(assert (=> d!1995802 (= (forall!15447 lt!2366874 lambda!350401) e!3863100)))

(declare-fun b!6361964 () Bool)

(declare-fun e!3863101 () Bool)

(assert (=> b!6361964 (= e!3863100 e!3863101)))

(declare-fun res!2617669 () Bool)

(assert (=> b!6361964 (=> (not res!2617669) (not e!3863101))))

(assert (=> b!6361964 (= res!2617669 (dynLambda!25777 lambda!350401 (h!71431 lt!2366874)))))

(declare-fun b!6361965 () Bool)

(assert (=> b!6361965 (= e!3863101 (forall!15447 (t!378699 lt!2366874) lambda!350401))))

(assert (= (and d!1995802 (not res!2617668)) b!6361964))

(assert (= (and b!6361964 res!2617669) b!6361965))

(declare-fun b_lambda!241825 () Bool)

(assert (=> (not b_lambda!241825) (not b!6361964)))

(declare-fun m!7167156 () Bool)

(assert (=> b!6361964 m!7167156))

(declare-fun m!7167158 () Bool)

(assert (=> b!6361965 m!7167158))

(assert (=> d!1995538 d!1995802))

(declare-fun b!6361973 () Bool)

(declare-fun e!3863109 () Bool)

(declare-fun e!3863108 () Bool)

(assert (=> b!6361973 (= e!3863109 e!3863108)))

(declare-fun res!2617676 () Bool)

(assert (=> b!6361973 (=> (not res!2617676) (not e!3863108))))

(declare-fun call!542839 () Bool)

(assert (=> b!6361973 (= res!2617676 call!542839)))

(declare-fun b!6361974 () Bool)

(declare-fun e!3863114 () Bool)

(declare-fun e!3863113 () Bool)

(assert (=> b!6361974 (= e!3863114 e!3863113)))

(declare-fun c!1158172 () Bool)

(assert (=> b!6361974 (= c!1158172 ((_ is Star!16269) lt!2366871))))

(declare-fun b!6361975 () Bool)

(declare-fun e!3863111 () Bool)

(declare-fun call!542840 () Bool)

(assert (=> b!6361975 (= e!3863111 call!542840)))

(declare-fun b!6361976 () Bool)

(declare-fun call!542841 () Bool)

(assert (=> b!6361976 (= e!3863108 call!542841)))

(declare-fun bm!542834 () Bool)

(declare-fun c!1158171 () Bool)

(assert (=> bm!542834 (= call!542841 (validRegex!8005 (ite c!1158171 (regTwo!33051 lt!2366871) (regTwo!33050 lt!2366871))))))

(declare-fun bm!542835 () Bool)

(assert (=> bm!542835 (= call!542840 (validRegex!8005 (ite c!1158172 (reg!16598 lt!2366871) (ite c!1158171 (regOne!33051 lt!2366871) (regOne!33050 lt!2366871)))))))

(declare-fun bm!542836 () Bool)

(assert (=> bm!542836 (= call!542839 call!542840)))

(declare-fun b!6361977 () Bool)

(declare-fun e!3863112 () Bool)

(assert (=> b!6361977 (= e!3863112 call!542841)))

(declare-fun b!6361978 () Bool)

(declare-fun res!2617678 () Bool)

(assert (=> b!6361978 (=> (not res!2617678) (not e!3863112))))

(assert (=> b!6361978 (= res!2617678 call!542839)))

(declare-fun e!3863110 () Bool)

(assert (=> b!6361978 (= e!3863110 e!3863112)))

(declare-fun b!6361979 () Bool)

(assert (=> b!6361979 (= e!3863113 e!3863110)))

(assert (=> b!6361979 (= c!1158171 ((_ is Union!16269) lt!2366871))))

(declare-fun b!6361980 () Bool)

(assert (=> b!6361980 (= e!3863113 e!3863111)))

(declare-fun res!2617677 () Bool)

(assert (=> b!6361980 (= res!2617677 (not (nullable!6262 (reg!16598 lt!2366871))))))

(assert (=> b!6361980 (=> (not res!2617677) (not e!3863111))))

(declare-fun d!1995806 () Bool)

(declare-fun res!2617675 () Bool)

(assert (=> d!1995806 (=> res!2617675 e!3863114)))

(assert (=> d!1995806 (= res!2617675 ((_ is ElementMatch!16269) lt!2366871))))

(assert (=> d!1995806 (= (validRegex!8005 lt!2366871) e!3863114)))

(declare-fun b!6361981 () Bool)

(declare-fun res!2617679 () Bool)

(assert (=> b!6361981 (=> res!2617679 e!3863109)))

(assert (=> b!6361981 (= res!2617679 (not ((_ is Concat!25114) lt!2366871)))))

(assert (=> b!6361981 (= e!3863110 e!3863109)))

(assert (= (and d!1995806 (not res!2617675)) b!6361974))

(assert (= (and b!6361974 c!1158172) b!6361980))

(assert (= (and b!6361974 (not c!1158172)) b!6361979))

(assert (= (and b!6361980 res!2617677) b!6361975))

(assert (= (and b!6361979 c!1158171) b!6361978))

(assert (= (and b!6361979 (not c!1158171)) b!6361981))

(assert (= (and b!6361978 res!2617678) b!6361977))

(assert (= (and b!6361981 (not res!2617679)) b!6361973))

(assert (= (and b!6361973 res!2617676) b!6361976))

(assert (= (or b!6361977 b!6361976) bm!542834))

(assert (= (or b!6361978 b!6361973) bm!542836))

(assert (= (or b!6361975 bm!542836) bm!542835))

(declare-fun m!7167164 () Bool)

(assert (=> bm!542834 m!7167164))

(declare-fun m!7167168 () Bool)

(assert (=> bm!542835 m!7167168))

(declare-fun m!7167170 () Bool)

(assert (=> b!6361980 m!7167170))

(assert (=> d!1995536 d!1995806))

(declare-fun d!1995812 () Bool)

(declare-fun res!2617680 () Bool)

(declare-fun e!3863115 () Bool)

(assert (=> d!1995812 (=> res!2617680 e!3863115)))

(assert (=> d!1995812 (= res!2617680 ((_ is Nil!64983) (unfocusZipperList!1690 zl!343)))))

(assert (=> d!1995812 (= (forall!15447 (unfocusZipperList!1690 zl!343) lambda!350398) e!3863115)))

(declare-fun b!6361982 () Bool)

(declare-fun e!3863116 () Bool)

(assert (=> b!6361982 (= e!3863115 e!3863116)))

(declare-fun res!2617681 () Bool)

(assert (=> b!6361982 (=> (not res!2617681) (not e!3863116))))

(assert (=> b!6361982 (= res!2617681 (dynLambda!25777 lambda!350398 (h!71431 (unfocusZipperList!1690 zl!343))))))

(declare-fun b!6361983 () Bool)

(assert (=> b!6361983 (= e!3863116 (forall!15447 (t!378699 (unfocusZipperList!1690 zl!343)) lambda!350398))))

(assert (= (and d!1995812 (not res!2617680)) b!6361982))

(assert (= (and b!6361982 res!2617681) b!6361983))

(declare-fun b_lambda!241827 () Bool)

(assert (=> (not b_lambda!241827) (not b!6361982)))

(declare-fun m!7167172 () Bool)

(assert (=> b!6361982 m!7167172))

(declare-fun m!7167174 () Bool)

(assert (=> b!6361983 m!7167174))

(assert (=> d!1995536 d!1995812))

(assert (=> b!6361031 d!1995646))

(assert (=> b!6361031 d!1995648))

(declare-fun d!1995814 () Bool)

(declare-fun res!2617690 () Bool)

(declare-fun e!3863124 () Bool)

(assert (=> d!1995814 (=> res!2617690 e!3863124)))

(assert (=> d!1995814 (= res!2617690 ((_ is Nil!64983) (exprs!6153 setElem!43328)))))

(assert (=> d!1995814 (= (forall!15447 (exprs!6153 setElem!43328) lambda!350409) e!3863124)))

(declare-fun b!6361998 () Bool)

(declare-fun e!3863125 () Bool)

(assert (=> b!6361998 (= e!3863124 e!3863125)))

(declare-fun res!2617691 () Bool)

(assert (=> b!6361998 (=> (not res!2617691) (not e!3863125))))

(assert (=> b!6361998 (= res!2617691 (dynLambda!25777 lambda!350409 (h!71431 (exprs!6153 setElem!43328))))))

(declare-fun b!6361999 () Bool)

(assert (=> b!6361999 (= e!3863125 (forall!15447 (t!378699 (exprs!6153 setElem!43328)) lambda!350409))))

(assert (= (and d!1995814 (not res!2617690)) b!6361998))

(assert (= (and b!6361998 res!2617691) b!6361999))

(declare-fun b_lambda!241829 () Bool)

(assert (=> (not b_lambda!241829) (not b!6361998)))

(declare-fun m!7167176 () Bool)

(assert (=> b!6361998 m!7167176))

(declare-fun m!7167178 () Bool)

(assert (=> b!6361999 m!7167178))

(assert (=> d!1995554 d!1995814))

(declare-fun d!1995816 () Bool)

(assert (=> d!1995816 (= (Exists!3339 (ite c!1157873 lambda!350374 lambda!350375)) (choose!47245 (ite c!1157873 lambda!350374 lambda!350375)))))

(declare-fun bs!1594145 () Bool)

(assert (= bs!1594145 d!1995816))

(declare-fun m!7167180 () Bool)

(assert (=> bs!1594145 m!7167180))

(assert (=> bm!542642 d!1995816))

(declare-fun d!1995818 () Bool)

(assert (=> d!1995818 (= (nullable!6262 r!7292) (nullableFct!2209 r!7292))))

(declare-fun bs!1594146 () Bool)

(assert (= bs!1594146 d!1995818))

(declare-fun m!7167182 () Bool)

(assert (=> bs!1594146 m!7167182))

(assert (=> b!6361035 d!1995818))

(assert (=> d!1995530 d!1995522))

(declare-fun d!1995820 () Bool)

(assert (=> d!1995820 (= (flatMap!1774 z!1189 lambda!350351) (dynLambda!25775 lambda!350351 (h!71432 zl!343)))))

(assert (=> d!1995820 true))

(declare-fun _$13!3519 () Unit!158407)

(assert (=> d!1995820 (= (choose!47249 z!1189 (h!71432 zl!343) lambda!350351) _$13!3519)))

(declare-fun b_lambda!241831 () Bool)

(assert (=> (not b_lambda!241831) (not d!1995820)))

(declare-fun bs!1594147 () Bool)

(assert (= bs!1594147 d!1995820))

(assert (=> bs!1594147 m!7166244))

(assert (=> bs!1594147 m!7166596))

(assert (=> d!1995530 d!1995820))

(declare-fun b!6362025 () Bool)

(declare-fun e!3863150 () Bool)

(declare-fun e!3863145 () Bool)

(assert (=> b!6362025 (= e!3863150 e!3863145)))

(declare-fun res!2617706 () Bool)

(declare-fun call!542849 () Bool)

(assert (=> b!6362025 (= res!2617706 call!542849)))

(assert (=> b!6362025 (=> res!2617706 e!3863145)))

(declare-fun b!6362027 () Bool)

(declare-fun e!3863149 () Bool)

(assert (=> b!6362027 (= e!3863149 e!3863150)))

(declare-fun c!1158182 () Bool)

(assert (=> b!6362027 (= c!1158182 ((_ is Union!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6362028 () Bool)

(declare-fun e!3863146 () Bool)

(assert (=> b!6362028 (= e!3863146 e!3863149)))

(declare-fun res!2617705 () Bool)

(assert (=> b!6362028 (=> res!2617705 e!3863149)))

(assert (=> b!6362028 (= res!2617705 ((_ is Star!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun b!6362029 () Bool)

(declare-fun call!542850 () Bool)

(assert (=> b!6362029 (= e!3863145 call!542850)))

(declare-fun bm!542844 () Bool)

(assert (=> bm!542844 (= call!542849 (nullable!6262 (ite c!1158182 (regOne!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun b!6362030 () Bool)

(declare-fun e!3863147 () Bool)

(assert (=> b!6362030 (= e!3863147 call!542850)))

(declare-fun b!6362031 () Bool)

(declare-fun e!3863148 () Bool)

(assert (=> b!6362031 (= e!3863148 e!3863146)))

(declare-fun res!2617708 () Bool)

(assert (=> b!6362031 (=> (not res!2617708) (not e!3863146))))

(assert (=> b!6362031 (= res!2617708 (and (not ((_ is EmptyLang!16269) (h!71431 (exprs!6153 (h!71432 zl!343))))) (not ((_ is ElementMatch!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun bm!542845 () Bool)

(assert (=> bm!542845 (= call!542850 (nullable!6262 (ite c!1158182 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))

(declare-fun b!6362026 () Bool)

(assert (=> b!6362026 (= e!3863150 e!3863147)))

(declare-fun res!2617709 () Bool)

(assert (=> b!6362026 (= res!2617709 call!542849)))

(assert (=> b!6362026 (=> (not res!2617709) (not e!3863147))))

(declare-fun d!1995824 () Bool)

(declare-fun res!2617707 () Bool)

(assert (=> d!1995824 (=> res!2617707 e!3863148)))

(assert (=> d!1995824 (= res!2617707 ((_ is EmptyExpr!16269) (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(assert (=> d!1995824 (= (nullableFct!2209 (h!71431 (exprs!6153 (h!71432 zl!343)))) e!3863148)))

(assert (= (and d!1995824 (not res!2617707)) b!6362031))

(assert (= (and b!6362031 res!2617708) b!6362028))

(assert (= (and b!6362028 (not res!2617705)) b!6362027))

(assert (= (and b!6362027 c!1158182) b!6362025))

(assert (= (and b!6362027 (not c!1158182)) b!6362026))

(assert (= (and b!6362025 (not res!2617706)) b!6362029))

(assert (= (and b!6362026 res!2617709) b!6362030))

(assert (= (or b!6362029 b!6362030) bm!542845))

(assert (= (or b!6362025 b!6362026) bm!542844))

(declare-fun m!7167202 () Bool)

(assert (=> bm!542844 m!7167202))

(declare-fun m!7167204 () Bool)

(assert (=> bm!542845 m!7167204))

(assert (=> d!1995524 d!1995824))

(declare-fun d!1995830 () Bool)

(declare-fun res!2617714 () Bool)

(declare-fun e!3863158 () Bool)

(assert (=> d!1995830 (=> res!2617714 e!3863158)))

(assert (=> d!1995830 (= res!2617714 ((_ is Nil!64984) lt!2366841))))

(assert (=> d!1995830 (= (noDuplicate!2099 lt!2366841) e!3863158)))

(declare-fun b!6362042 () Bool)

(declare-fun e!3863159 () Bool)

(assert (=> b!6362042 (= e!3863158 e!3863159)))

(declare-fun res!2617715 () Bool)

(assert (=> b!6362042 (=> (not res!2617715) (not e!3863159))))

(declare-fun contains!20157 (List!65108 Context!11306) Bool)

(assert (=> b!6362042 (= res!2617715 (not (contains!20157 (t!378700 lt!2366841) (h!71432 lt!2366841))))))

(declare-fun b!6362043 () Bool)

(assert (=> b!6362043 (= e!3863159 (noDuplicate!2099 (t!378700 lt!2366841)))))

(assert (= (and d!1995830 (not res!2617714)) b!6362042))

(assert (= (and b!6362042 res!2617715) b!6362043))

(declare-fun m!7167210 () Bool)

(assert (=> b!6362042 m!7167210))

(declare-fun m!7167212 () Bool)

(assert (=> b!6362043 m!7167212))

(assert (=> d!1995480 d!1995830))

(declare-fun d!1995836 () Bool)

(declare-fun e!3863166 () Bool)

(assert (=> d!1995836 e!3863166))

(declare-fun res!2617720 () Bool)

(assert (=> d!1995836 (=> (not res!2617720) (not e!3863166))))

(declare-fun res!2617721 () List!65108)

(assert (=> d!1995836 (= res!2617720 (noDuplicate!2099 res!2617721))))

(declare-fun e!3863167 () Bool)

(assert (=> d!1995836 e!3863167))

(assert (=> d!1995836 (= (choose!47242 z!1189) res!2617721)))

(declare-fun b!6362051 () Bool)

(declare-fun e!3863168 () Bool)

(declare-fun tp!1771521 () Bool)

(assert (=> b!6362051 (= e!3863168 tp!1771521)))

(declare-fun b!6362050 () Bool)

(declare-fun tp!1771522 () Bool)

(assert (=> b!6362050 (= e!3863167 (and (inv!83919 (h!71432 res!2617721)) e!3863168 tp!1771522))))

(declare-fun b!6362052 () Bool)

(assert (=> b!6362052 (= e!3863166 (= (content!12272 res!2617721) z!1189))))

(assert (= b!6362050 b!6362051))

(assert (= (and d!1995836 ((_ is Cons!64984) res!2617721)) b!6362050))

(assert (= (and d!1995836 res!2617720) b!6362052))

(declare-fun m!7167218 () Bool)

(assert (=> d!1995836 m!7167218))

(declare-fun m!7167220 () Bool)

(assert (=> b!6362050 m!7167220))

(declare-fun m!7167222 () Bool)

(assert (=> b!6362052 m!7167222))

(assert (=> d!1995480 d!1995836))

(declare-fun d!1995842 () Bool)

(assert (=> d!1995842 true))

(assert (=> d!1995842 true))

(declare-fun res!2617722 () Bool)

(assert (=> d!1995842 (= (choose!47245 lambda!350349) res!2617722)))

(assert (=> d!1995512 d!1995842))

(declare-fun b!6362054 () Bool)

(declare-fun e!3863169 () List!65106)

(assert (=> b!6362054 (= e!3863169 (Cons!64982 (h!71430 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982))) (++!14338 (t!378698 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982))) (t!378698 s!2326))))))

(declare-fun b!6362053 () Bool)

(assert (=> b!6362053 (= e!3863169 (t!378698 s!2326))))

(declare-fun b!6362055 () Bool)

(declare-fun res!2617723 () Bool)

(declare-fun e!3863170 () Bool)

(assert (=> b!6362055 (=> (not res!2617723) (not e!3863170))))

(declare-fun lt!2366902 () List!65106)

(assert (=> b!6362055 (= res!2617723 (= (size!40347 lt!2366902) (+ (size!40347 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982))) (size!40347 (t!378698 s!2326)))))))

(declare-fun b!6362056 () Bool)

(assert (=> b!6362056 (= e!3863170 (or (not (= (t!378698 s!2326) Nil!64982)) (= lt!2366902 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)))))))

(declare-fun d!1995844 () Bool)

(assert (=> d!1995844 e!3863170))

(declare-fun res!2617724 () Bool)

(assert (=> d!1995844 (=> (not res!2617724) (not e!3863170))))

(assert (=> d!1995844 (= res!2617724 (= (content!12273 lt!2366902) ((_ map or) (content!12273 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982))) (content!12273 (t!378698 s!2326)))))))

(assert (=> d!1995844 (= lt!2366902 e!3863169)))

(declare-fun c!1158186 () Bool)

(assert (=> d!1995844 (= c!1158186 ((_ is Nil!64982) (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982))))))

(assert (=> d!1995844 (= (++!14338 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (t!378698 s!2326)) lt!2366902)))

(assert (= (and d!1995844 c!1158186) b!6362053))

(assert (= (and d!1995844 (not c!1158186)) b!6362054))

(assert (= (and d!1995844 res!2617724) b!6362055))

(assert (= (and b!6362055 res!2617723) b!6362056))

(declare-fun m!7167224 () Bool)

(assert (=> b!6362054 m!7167224))

(declare-fun m!7167226 () Bool)

(assert (=> b!6362055 m!7167226))

(assert (=> b!6362055 m!7166538))

(declare-fun m!7167228 () Bool)

(assert (=> b!6362055 m!7167228))

(declare-fun m!7167230 () Bool)

(assert (=> b!6362055 m!7167230))

(declare-fun m!7167232 () Bool)

(assert (=> d!1995844 m!7167232))

(assert (=> d!1995844 m!7166538))

(declare-fun m!7167234 () Bool)

(assert (=> d!1995844 m!7167234))

(declare-fun m!7167236 () Bool)

(assert (=> d!1995844 m!7167236))

(assert (=> b!6361310 d!1995844))

(declare-fun b!6362058 () Bool)

(declare-fun e!3863171 () List!65106)

(assert (=> b!6362058 (= e!3863171 (Cons!64982 (h!71430 Nil!64982) (++!14338 (t!378698 Nil!64982) (Cons!64982 (h!71430 s!2326) Nil!64982))))))

(declare-fun b!6362057 () Bool)

(assert (=> b!6362057 (= e!3863171 (Cons!64982 (h!71430 s!2326) Nil!64982))))

(declare-fun b!6362059 () Bool)

(declare-fun res!2617725 () Bool)

(declare-fun e!3863172 () Bool)

(assert (=> b!6362059 (=> (not res!2617725) (not e!3863172))))

(declare-fun lt!2366903 () List!65106)

(assert (=> b!6362059 (= res!2617725 (= (size!40347 lt!2366903) (+ (size!40347 Nil!64982) (size!40347 (Cons!64982 (h!71430 s!2326) Nil!64982)))))))

(declare-fun b!6362060 () Bool)

(assert (=> b!6362060 (= e!3863172 (or (not (= (Cons!64982 (h!71430 s!2326) Nil!64982) Nil!64982)) (= lt!2366903 Nil!64982)))))

(declare-fun d!1995846 () Bool)

(assert (=> d!1995846 e!3863172))

(declare-fun res!2617726 () Bool)

(assert (=> d!1995846 (=> (not res!2617726) (not e!3863172))))

(assert (=> d!1995846 (= res!2617726 (= (content!12273 lt!2366903) ((_ map or) (content!12273 Nil!64982) (content!12273 (Cons!64982 (h!71430 s!2326) Nil!64982)))))))

(assert (=> d!1995846 (= lt!2366903 e!3863171)))

(declare-fun c!1158187 () Bool)

(assert (=> d!1995846 (= c!1158187 ((_ is Nil!64982) Nil!64982))))

(assert (=> d!1995846 (= (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) lt!2366903)))

(assert (= (and d!1995846 c!1158187) b!6362057))

(assert (= (and d!1995846 (not c!1158187)) b!6362058))

(assert (= (and d!1995846 res!2617726) b!6362059))

(assert (= (and b!6362059 res!2617725) b!6362060))

(declare-fun m!7167238 () Bool)

(assert (=> b!6362058 m!7167238))

(declare-fun m!7167240 () Bool)

(assert (=> b!6362059 m!7167240))

(declare-fun m!7167242 () Bool)

(assert (=> b!6362059 m!7167242))

(declare-fun m!7167244 () Bool)

(assert (=> b!6362059 m!7167244))

(declare-fun m!7167246 () Bool)

(assert (=> d!1995846 m!7167246))

(declare-fun m!7167248 () Bool)

(assert (=> d!1995846 m!7167248))

(declare-fun m!7167250 () Bool)

(assert (=> d!1995846 m!7167250))

(assert (=> b!6361310 d!1995846))

(declare-fun d!1995848 () Bool)

(assert (=> d!1995848 (= (++!14338 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (t!378698 s!2326)) s!2326)))

(declare-fun lt!2366906 () Unit!158407)

(declare-fun choose!47251 (List!65106 C!32808 List!65106 List!65106) Unit!158407)

(assert (=> d!1995848 (= lt!2366906 (choose!47251 Nil!64982 (h!71430 s!2326) (t!378698 s!2326) s!2326))))

(assert (=> d!1995848 (= (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) (t!378698 s!2326))) s!2326)))

(assert (=> d!1995848 (= (lemmaMoveElementToOtherListKeepsConcatEq!2433 Nil!64982 (h!71430 s!2326) (t!378698 s!2326) s!2326) lt!2366906)))

(declare-fun bs!1594164 () Bool)

(assert (= bs!1594164 d!1995848))

(assert (=> bs!1594164 m!7166538))

(assert (=> bs!1594164 m!7166538))

(assert (=> bs!1594164 m!7166540))

(declare-fun m!7167252 () Bool)

(assert (=> bs!1594164 m!7167252))

(declare-fun m!7167254 () Bool)

(assert (=> bs!1594164 m!7167254))

(assert (=> b!6361310 d!1995848))

(declare-fun b!6362069 () Bool)

(declare-fun res!2617735 () Bool)

(declare-fun e!3863178 () Bool)

(assert (=> b!6362069 (=> (not res!2617735) (not e!3863178))))

(declare-fun lt!2366909 () Option!16160)

(assert (=> b!6362069 (= res!2617735 (matchR!8452 (regOne!33050 r!7292) (_1!36551 (get!22488 lt!2366909))))))

(declare-fun b!6362070 () Bool)

(declare-fun res!2617738 () Bool)

(assert (=> b!6362070 (=> (not res!2617738) (not e!3863178))))

(assert (=> b!6362070 (= res!2617738 (matchR!8452 (regTwo!33050 r!7292) (_2!36551 (get!22488 lt!2366909))))))

(declare-fun b!6362071 () Bool)

(declare-fun lt!2366908 () Unit!158407)

(declare-fun lt!2366907 () Unit!158407)

(assert (=> b!6362071 (= lt!2366908 lt!2366907)))

(assert (=> b!6362071 (= (++!14338 (++!14338 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (Cons!64982 (h!71430 (t!378698 s!2326)) Nil!64982)) (t!378698 (t!378698 s!2326))) s!2326)))

(assert (=> b!6362071 (= lt!2366907 (lemmaMoveElementToOtherListKeepsConcatEq!2433 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (h!71430 (t!378698 s!2326)) (t!378698 (t!378698 s!2326)) s!2326))))

(declare-fun e!3863181 () Option!16160)

(assert (=> b!6362071 (= e!3863181 (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) (++!14338 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (Cons!64982 (h!71430 (t!378698 s!2326)) Nil!64982)) (t!378698 (t!378698 s!2326)) s!2326))))

(declare-fun b!6362072 () Bool)

(declare-fun e!3863180 () Bool)

(assert (=> b!6362072 (= e!3863180 (matchR!8452 (regTwo!33050 r!7292) (t!378698 s!2326)))))

(declare-fun d!1995850 () Bool)

(declare-fun e!3863179 () Bool)

(assert (=> d!1995850 e!3863179))

(declare-fun res!2617737 () Bool)

(assert (=> d!1995850 (=> res!2617737 e!3863179)))

(assert (=> d!1995850 (= res!2617737 e!3863178)))

(declare-fun res!2617739 () Bool)

(assert (=> d!1995850 (=> (not res!2617739) (not e!3863178))))

(assert (=> d!1995850 (= res!2617739 (isDefined!12863 lt!2366909))))

(declare-fun e!3863177 () Option!16160)

(assert (=> d!1995850 (= lt!2366909 e!3863177)))

(declare-fun c!1158188 () Bool)

(assert (=> d!1995850 (= c!1158188 e!3863180)))

(declare-fun res!2617736 () Bool)

(assert (=> d!1995850 (=> (not res!2617736) (not e!3863180))))

(assert (=> d!1995850 (= res!2617736 (matchR!8452 (regOne!33050 r!7292) (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982))))))

(assert (=> d!1995850 (validRegex!8005 (regOne!33050 r!7292))))

(assert (=> d!1995850 (= (findConcatSeparation!2574 (regOne!33050 r!7292) (regTwo!33050 r!7292) (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (t!378698 s!2326) s!2326) lt!2366909)))

(declare-fun b!6362073 () Bool)

(assert (=> b!6362073 (= e!3863177 (Some!16159 (tuple2!66497 (++!14338 Nil!64982 (Cons!64982 (h!71430 s!2326) Nil!64982)) (t!378698 s!2326))))))

(declare-fun b!6362074 () Bool)

(assert (=> b!6362074 (= e!3863178 (= (++!14338 (_1!36551 (get!22488 lt!2366909)) (_2!36551 (get!22488 lt!2366909))) s!2326))))

(declare-fun b!6362075 () Bool)

(assert (=> b!6362075 (= e!3863181 None!16159)))

(declare-fun b!6362076 () Bool)

(assert (=> b!6362076 (= e!3863179 (not (isDefined!12863 lt!2366909)))))

(declare-fun b!6362077 () Bool)

(assert (=> b!6362077 (= e!3863177 e!3863181)))

(declare-fun c!1158189 () Bool)

(assert (=> b!6362077 (= c!1158189 ((_ is Nil!64982) (t!378698 s!2326)))))

(assert (= (and d!1995850 res!2617736) b!6362072))

(assert (= (and d!1995850 c!1158188) b!6362073))

(assert (= (and d!1995850 (not c!1158188)) b!6362077))

(assert (= (and b!6362077 c!1158189) b!6362075))

(assert (= (and b!6362077 (not c!1158189)) b!6362071))

(assert (= (and d!1995850 res!2617739) b!6362069))

(assert (= (and b!6362069 res!2617735) b!6362070))

(assert (= (and b!6362070 res!2617738) b!6362074))

(assert (= (and d!1995850 (not res!2617737)) b!6362076))

(declare-fun m!7167256 () Bool)

(assert (=> b!6362076 m!7167256))

(assert (=> b!6362071 m!7166538))

(declare-fun m!7167258 () Bool)

(assert (=> b!6362071 m!7167258))

(assert (=> b!6362071 m!7167258))

(declare-fun m!7167260 () Bool)

(assert (=> b!6362071 m!7167260))

(assert (=> b!6362071 m!7166538))

(declare-fun m!7167262 () Bool)

(assert (=> b!6362071 m!7167262))

(assert (=> b!6362071 m!7167258))

(declare-fun m!7167264 () Bool)

(assert (=> b!6362071 m!7167264))

(declare-fun m!7167266 () Bool)

(assert (=> b!6362072 m!7167266))

(declare-fun m!7167268 () Bool)

(assert (=> b!6362074 m!7167268))

(declare-fun m!7167270 () Bool)

(assert (=> b!6362074 m!7167270))

(assert (=> b!6362070 m!7167268))

(declare-fun m!7167272 () Bool)

(assert (=> b!6362070 m!7167272))

(assert (=> d!1995850 m!7167256))

(assert (=> d!1995850 m!7166538))

(declare-fun m!7167274 () Bool)

(assert (=> d!1995850 m!7167274))

(assert (=> d!1995850 m!7166556))

(assert (=> b!6362069 m!7167268))

(declare-fun m!7167276 () Bool)

(assert (=> b!6362069 m!7167276))

(assert (=> b!6361310 d!1995850))

(declare-fun bs!1594173 () Bool)

(declare-fun b!6362078 () Bool)

(assert (= bs!1594173 (and b!6362078 d!1995514)))

(declare-fun lambda!350449 () Int)

(assert (=> bs!1594173 (not (= lambda!350449 lambda!350389))))

(declare-fun bs!1594174 () Bool)

(assert (= bs!1594174 (and b!6362078 b!6360763)))

(assert (=> bs!1594174 (not (= lambda!350449 lambda!350350))))

(declare-fun bs!1594175 () Bool)

(assert (= bs!1594175 (and b!6362078 d!1995516)))

(assert (=> bs!1594175 (not (= lambda!350449 lambda!350395))))

(declare-fun bs!1594176 () Bool)

(assert (= bs!1594176 (and b!6362078 b!6361553)))

(assert (=> bs!1594176 (= (and (= (reg!16598 (regOne!33051 r!7292)) (reg!16598 (regTwo!33051 r!7292))) (= (regOne!33051 r!7292) (regTwo!33051 r!7292))) (= lambda!350449 lambda!350416))))

(declare-fun bs!1594177 () Bool)

(assert (= bs!1594177 (and b!6362078 b!6360930)))

(assert (=> bs!1594177 (not (= lambda!350449 lambda!350375))))

(assert (=> bs!1594175 (not (= lambda!350449 lambda!350394))))

(declare-fun bs!1594178 () Bool)

(assert (= bs!1594178 (and b!6362078 b!6361561)))

(assert (=> bs!1594178 (not (= lambda!350449 lambda!350417))))

(assert (=> bs!1594174 (not (= lambda!350449 lambda!350349))))

(declare-fun bs!1594179 () Bool)

(assert (= bs!1594179 (and b!6362078 d!1995696)))

(assert (=> bs!1594179 (not (= lambda!350449 lambda!350422))))

(declare-fun bs!1594181 () Bool)

(assert (= bs!1594181 (and b!6362078 b!6360922)))

(assert (=> bs!1594181 (= (and (= (reg!16598 (regOne!33051 r!7292)) (reg!16598 r!7292)) (= (regOne!33051 r!7292) r!7292)) (= lambda!350449 lambda!350374))))

(assert (=> b!6362078 true))

(assert (=> b!6362078 true))

(declare-fun bs!1594182 () Bool)

(declare-fun b!6362086 () Bool)

(assert (= bs!1594182 (and b!6362086 d!1995514)))

(declare-fun lambda!350451 () Int)

(assert (=> bs!1594182 (not (= lambda!350451 lambda!350389))))

(declare-fun bs!1594183 () Bool)

(assert (= bs!1594183 (and b!6362086 b!6360763)))

(assert (=> bs!1594183 (= (and (= (regOne!33050 (regOne!33051 r!7292)) (regOne!33050 r!7292)) (= (regTwo!33050 (regOne!33051 r!7292)) (regTwo!33050 r!7292))) (= lambda!350451 lambda!350350))))

(declare-fun bs!1594184 () Bool)

(assert (= bs!1594184 (and b!6362086 d!1995516)))

(assert (=> bs!1594184 (= (and (= (regOne!33050 (regOne!33051 r!7292)) (regOne!33050 r!7292)) (= (regTwo!33050 (regOne!33051 r!7292)) (regTwo!33050 r!7292))) (= lambda!350451 lambda!350395))))

(declare-fun bs!1594185 () Bool)

(assert (= bs!1594185 (and b!6362086 b!6361553)))

(assert (=> bs!1594185 (not (= lambda!350451 lambda!350416))))

(declare-fun bs!1594187 () Bool)

(assert (= bs!1594187 (and b!6362086 b!6362078)))

(assert (=> bs!1594187 (not (= lambda!350451 lambda!350449))))

(declare-fun bs!1594188 () Bool)

(assert (= bs!1594188 (and b!6362086 b!6360930)))

(assert (=> bs!1594188 (= (and (= (regOne!33050 (regOne!33051 r!7292)) (regOne!33050 r!7292)) (= (regTwo!33050 (regOne!33051 r!7292)) (regTwo!33050 r!7292))) (= lambda!350451 lambda!350375))))

(assert (=> bs!1594184 (not (= lambda!350451 lambda!350394))))

(declare-fun bs!1594190 () Bool)

(assert (= bs!1594190 (and b!6362086 b!6361561)))

(assert (=> bs!1594190 (= (and (= (regOne!33050 (regOne!33051 r!7292)) (regOne!33050 (regTwo!33051 r!7292))) (= (regTwo!33050 (regOne!33051 r!7292)) (regTwo!33050 (regTwo!33051 r!7292)))) (= lambda!350451 lambda!350417))))

(assert (=> bs!1594183 (not (= lambda!350451 lambda!350349))))

(declare-fun bs!1594191 () Bool)

(assert (= bs!1594191 (and b!6362086 d!1995696)))

(assert (=> bs!1594191 (not (= lambda!350451 lambda!350422))))

(declare-fun bs!1594192 () Bool)

(assert (= bs!1594192 (and b!6362086 b!6360922)))

(assert (=> bs!1594192 (not (= lambda!350451 lambda!350374))))

(assert (=> b!6362086 true))

(assert (=> b!6362086 true))

(declare-fun bm!542846 () Bool)

(declare-fun call!542851 () Bool)

(assert (=> bm!542846 (= call!542851 (isEmpty!37089 s!2326))))

(declare-fun e!3863188 () Bool)

(declare-fun call!542852 () Bool)

(assert (=> b!6362078 (= e!3863188 call!542852)))

(declare-fun b!6362079 () Bool)

(declare-fun res!2617741 () Bool)

(assert (=> b!6362079 (=> res!2617741 e!3863188)))

(assert (=> b!6362079 (= res!2617741 call!542851)))

(declare-fun e!3863185 () Bool)

(assert (=> b!6362079 (= e!3863185 e!3863188)))

(declare-fun b!6362080 () Bool)

(declare-fun e!3863184 () Bool)

(assert (=> b!6362080 (= e!3863184 call!542851)))

(declare-fun b!6362082 () Bool)

(declare-fun e!3863182 () Bool)

(assert (=> b!6362082 (= e!3863184 e!3863182)))

(declare-fun res!2617740 () Bool)

(assert (=> b!6362082 (= res!2617740 (not ((_ is EmptyLang!16269) (regOne!33051 r!7292))))))

(assert (=> b!6362082 (=> (not res!2617740) (not e!3863182))))

(declare-fun b!6362083 () Bool)

(declare-fun e!3863183 () Bool)

(assert (=> b!6362083 (= e!3863183 (matchRSpec!3370 (regTwo!33051 (regOne!33051 r!7292)) s!2326))))

(declare-fun c!1158193 () Bool)

(declare-fun bm!542847 () Bool)

(assert (=> bm!542847 (= call!542852 (Exists!3339 (ite c!1158193 lambda!350449 lambda!350451)))))

(declare-fun b!6362084 () Bool)

(declare-fun e!3863186 () Bool)

(assert (=> b!6362084 (= e!3863186 (= s!2326 (Cons!64982 (c!1157838 (regOne!33051 r!7292)) Nil!64982)))))

(declare-fun b!6362085 () Bool)

(declare-fun e!3863187 () Bool)

(assert (=> b!6362085 (= e!3863187 e!3863185)))

(assert (=> b!6362085 (= c!1158193 ((_ is Star!16269) (regOne!33051 r!7292)))))

(assert (=> b!6362086 (= e!3863185 call!542852)))

(declare-fun b!6362087 () Bool)

(declare-fun c!1158192 () Bool)

(assert (=> b!6362087 (= c!1158192 ((_ is ElementMatch!16269) (regOne!33051 r!7292)))))

(assert (=> b!6362087 (= e!3863182 e!3863186)))

(declare-fun b!6362088 () Bool)

(assert (=> b!6362088 (= e!3863187 e!3863183)))

(declare-fun res!2617742 () Bool)

(assert (=> b!6362088 (= res!2617742 (matchRSpec!3370 (regOne!33051 (regOne!33051 r!7292)) s!2326))))

(assert (=> b!6362088 (=> res!2617742 e!3863183)))

(declare-fun b!6362081 () Bool)

(declare-fun c!1158191 () Bool)

(assert (=> b!6362081 (= c!1158191 ((_ is Union!16269) (regOne!33051 r!7292)))))

(assert (=> b!6362081 (= e!3863186 e!3863187)))

(declare-fun d!1995852 () Bool)

(declare-fun c!1158190 () Bool)

(assert (=> d!1995852 (= c!1158190 ((_ is EmptyExpr!16269) (regOne!33051 r!7292)))))

(assert (=> d!1995852 (= (matchRSpec!3370 (regOne!33051 r!7292) s!2326) e!3863184)))

(assert (= (and d!1995852 c!1158190) b!6362080))

(assert (= (and d!1995852 (not c!1158190)) b!6362082))

(assert (= (and b!6362082 res!2617740) b!6362087))

(assert (= (and b!6362087 c!1158192) b!6362084))

(assert (= (and b!6362087 (not c!1158192)) b!6362081))

(assert (= (and b!6362081 c!1158191) b!6362088))

(assert (= (and b!6362081 (not c!1158191)) b!6362085))

(assert (= (and b!6362088 (not res!2617742)) b!6362083))

(assert (= (and b!6362085 c!1158193) b!6362079))

(assert (= (and b!6362085 (not c!1158193)) b!6362086))

(assert (= (and b!6362079 (not res!2617741)) b!6362078))

(assert (= (or b!6362078 b!6362086) bm!542847))

(assert (= (or b!6362080 b!6362079) bm!542846))

(assert (=> bm!542846 m!7166358))

(declare-fun m!7167284 () Bool)

(assert (=> b!6362083 m!7167284))

(declare-fun m!7167286 () Bool)

(assert (=> bm!542847 m!7167286))

(declare-fun m!7167288 () Bool)

(assert (=> b!6362088 m!7167288))

(assert (=> b!6360932 d!1995852))

(declare-fun call!542860 () List!65107)

(declare-fun c!1158201 () Bool)

(declare-fun c!1158202 () Bool)

(declare-fun bm!542854 () Bool)

(assert (=> bm!542854 (= call!542860 ($colon$colon!2130 (exprs!6153 (ite (or c!1157988 c!1157991) lt!2366785 (Context!11307 call!542724))) (ite (or c!1158202 c!1158201) (regTwo!33050 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))) (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343))))))))))))

(declare-fun bm!542855 () Bool)

(declare-fun call!542864 () List!65107)

(assert (=> bm!542855 (= call!542864 call!542860)))

(declare-fun e!3863197 () (InoxSet Context!11306))

(declare-fun b!6362100 () Bool)

(assert (=> b!6362100 (= e!3863197 (store ((as const (Array Context!11306 Bool)) false) (ite (or c!1157988 c!1157991) lt!2366785 (Context!11307 call!542724)) true))))

(declare-fun b!6362101 () Bool)

(declare-fun e!3863195 () (InoxSet Context!11306))

(declare-fun call!542862 () (InoxSet Context!11306))

(assert (=> b!6362101 (= e!3863195 call!542862)))

(declare-fun b!6362102 () Bool)

(declare-fun c!1158203 () Bool)

(assert (=> b!6362102 (= c!1158203 ((_ is Star!16269) (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun e!3863200 () (InoxSet Context!11306))

(assert (=> b!6362102 (= e!3863200 e!3863195)))

(declare-fun b!6362103 () Bool)

(declare-fun e!3863198 () (InoxSet Context!11306))

(assert (=> b!6362103 (= e!3863197 e!3863198)))

(declare-fun c!1158199 () Bool)

(assert (=> b!6362103 (= c!1158199 ((_ is Union!16269) (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun bm!542856 () Bool)

(declare-fun call!542863 () (InoxSet Context!11306))

(assert (=> bm!542856 (= call!542863 (derivationStepZipperDown!1517 (ite c!1158199 (regOne!33051 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))) (regOne!33050 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343))))))))) (ite c!1158199 (ite (or c!1157988 c!1157991) lt!2366785 (Context!11307 call!542724)) (Context!11307 call!542860)) (h!71430 s!2326)))))

(declare-fun b!6362104 () Bool)

(declare-fun e!3863196 () Bool)

(assert (=> b!6362104 (= c!1158202 e!3863196)))

(declare-fun res!2617744 () Bool)

(assert (=> b!6362104 (=> (not res!2617744) (not e!3863196))))

(assert (=> b!6362104 (= res!2617744 ((_ is Concat!25114) (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun e!3863199 () (InoxSet Context!11306))

(assert (=> b!6362104 (= e!3863198 e!3863199)))

(declare-fun b!6362106 () Bool)

(declare-fun call!542861 () (InoxSet Context!11306))

(assert (=> b!6362106 (= e!3863199 ((_ map or) call!542863 call!542861))))

(declare-fun bm!542857 () Bool)

(declare-fun call!542859 () (InoxSet Context!11306))

(assert (=> bm!542857 (= call!542859 (derivationStepZipperDown!1517 (ite c!1158199 (regTwo!33051 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))) (ite c!1158202 (regTwo!33050 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))) (ite c!1158201 (regOne!33050 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))) (reg!16598 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343))))))))))) (ite (or c!1158199 c!1158202) (ite (or c!1157988 c!1157991) lt!2366785 (Context!11307 call!542724)) (Context!11307 call!542864)) (h!71430 s!2326)))))

(declare-fun bm!542858 () Bool)

(assert (=> bm!542858 (= call!542861 call!542859)))

(declare-fun b!6362107 () Bool)

(assert (=> b!6362107 (= e!3863199 e!3863200)))

(assert (=> b!6362107 (= c!1158201 ((_ is Concat!25114) (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun b!6362108 () Bool)

(assert (=> b!6362108 (= e!3863196 (nullable!6262 (regOne!33050 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343))))))))))))

(declare-fun b!6362109 () Bool)

(assert (=> b!6362109 (= e!3863198 ((_ map or) call!542863 call!542859))))

(declare-fun bm!542859 () Bool)

(assert (=> bm!542859 (= call!542862 call!542861)))

(declare-fun b!6362110 () Bool)

(assert (=> b!6362110 (= e!3863195 ((as const (Array Context!11306 Bool)) false))))

(declare-fun c!1158200 () Bool)

(declare-fun d!1995860 () Bool)

(assert (=> d!1995860 (= c!1158200 (and ((_ is ElementMatch!16269) (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))) (= (c!1157838 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343)))))))) (h!71430 s!2326))))))

(assert (=> d!1995860 (= (derivationStepZipperDown!1517 (ite c!1157988 (regTwo!33051 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157991 (regTwo!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (ite c!1157990 (regOne!33050 (h!71431 (exprs!6153 (h!71432 zl!343)))) (reg!16598 (h!71431 (exprs!6153 (h!71432 zl!343))))))) (ite (or c!1157988 c!1157991) lt!2366785 (Context!11307 call!542724)) (h!71430 s!2326)) e!3863197)))

(declare-fun b!6362105 () Bool)

(assert (=> b!6362105 (= e!3863200 call!542862)))

(assert (= (and d!1995860 c!1158200) b!6362100))

(assert (= (and d!1995860 (not c!1158200)) b!6362103))

(assert (= (and b!6362103 c!1158199) b!6362109))

(assert (= (and b!6362103 (not c!1158199)) b!6362104))

(assert (= (and b!6362104 res!2617744) b!6362108))

(assert (= (and b!6362104 c!1158202) b!6362106))

(assert (= (and b!6362104 (not c!1158202)) b!6362107))

(assert (= (and b!6362107 c!1158201) b!6362105))

(assert (= (and b!6362107 (not c!1158201)) b!6362102))

(assert (= (and b!6362102 c!1158203) b!6362101))

(assert (= (and b!6362102 (not c!1158203)) b!6362110))

(assert (= (or b!6362105 b!6362101) bm!542855))

(assert (= (or b!6362105 b!6362101) bm!542859))

(assert (= (or b!6362106 bm!542855) bm!542854))

(assert (= (or b!6362106 bm!542859) bm!542858))

(assert (= (or b!6362109 bm!542858) bm!542857))

(assert (= (or b!6362109 b!6362106) bm!542856))

(declare-fun m!7167308 () Bool)

(assert (=> bm!542854 m!7167308))

(declare-fun m!7167310 () Bool)

(assert (=> b!6362100 m!7167310))

(declare-fun m!7167314 () Bool)

(assert (=> bm!542856 m!7167314))

(declare-fun m!7167316 () Bool)

(assert (=> b!6362108 m!7167316))

(declare-fun m!7167318 () Bool)

(assert (=> bm!542857 m!7167318))

(assert (=> bm!542717 d!1995860))

(declare-fun bm!542860 () Bool)

(declare-fun call!542866 () List!65107)

(declare-fun c!1158208 () Bool)

(declare-fun c!1158207 () Bool)

(assert (=> bm!542860 (= call!542866 ($colon$colon!2130 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))) (ite (or c!1158208 c!1158207) (regTwo!33050 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))))

(declare-fun bm!542861 () Bool)

(declare-fun call!542870 () List!65107)

(assert (=> bm!542861 (= call!542870 call!542866)))

(declare-fun b!6362115 () Bool)

(declare-fun e!3863206 () (InoxSet Context!11306))

(assert (=> b!6362115 (= e!3863206 (store ((as const (Array Context!11306 Bool)) false) (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) true))))

(declare-fun b!6362116 () Bool)

(declare-fun e!3863204 () (InoxSet Context!11306))

(declare-fun call!542868 () (InoxSet Context!11306))

(assert (=> b!6362116 (= e!3863204 call!542868)))

(declare-fun b!6362117 () Bool)

(declare-fun c!1158209 () Bool)

(assert (=> b!6362117 (= c!1158209 ((_ is Star!16269) (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun e!3863209 () (InoxSet Context!11306))

(assert (=> b!6362117 (= e!3863209 e!3863204)))

(declare-fun b!6362118 () Bool)

(declare-fun e!3863207 () (InoxSet Context!11306))

(assert (=> b!6362118 (= e!3863206 e!3863207)))

(declare-fun c!1158205 () Bool)

(assert (=> b!6362118 (= c!1158205 ((_ is Union!16269) (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun call!542869 () (InoxSet Context!11306))

(declare-fun bm!542862 () Bool)

(assert (=> bm!542862 (= call!542869 (derivationStepZipperDown!1517 (ite c!1158205 (regOne!33051 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (regOne!33050 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))) (ite c!1158205 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (Context!11307 call!542866)) (h!71430 s!2326)))))

(declare-fun b!6362119 () Bool)

(declare-fun e!3863205 () Bool)

(assert (=> b!6362119 (= c!1158208 e!3863205)))

(declare-fun res!2617747 () Bool)

(assert (=> b!6362119 (=> (not res!2617747) (not e!3863205))))

(assert (=> b!6362119 (= res!2617747 ((_ is Concat!25114) (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun e!3863208 () (InoxSet Context!11306))

(assert (=> b!6362119 (= e!3863207 e!3863208)))

(declare-fun b!6362121 () Bool)

(declare-fun call!542867 () (InoxSet Context!11306))

(assert (=> b!6362121 (= e!3863208 ((_ map or) call!542869 call!542867))))

(declare-fun bm!542863 () Bool)

(declare-fun call!542865 () (InoxSet Context!11306))

(assert (=> bm!542863 (= call!542865 (derivationStepZipperDown!1517 (ite c!1158205 (regTwo!33051 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (ite c!1158208 (regTwo!33050 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (ite c!1158207 (regOne!33050 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (reg!16598 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))) (ite (or c!1158205 c!1158208) (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (Context!11307 call!542870)) (h!71430 s!2326)))))

(declare-fun bm!542864 () Bool)

(assert (=> bm!542864 (= call!542867 call!542865)))

(declare-fun b!6362122 () Bool)

(assert (=> b!6362122 (= e!3863208 e!3863209)))

(assert (=> b!6362122 (= c!1158207 ((_ is Concat!25114) (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))))))

(declare-fun b!6362123 () Bool)

(assert (=> b!6362123 (= e!3863205 (nullable!6262 (regOne!33050 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))))))))

(declare-fun b!6362124 () Bool)

(assert (=> b!6362124 (= e!3863207 ((_ map or) call!542869 call!542865))))

(declare-fun bm!542865 () Bool)

(assert (=> bm!542865 (= call!542868 call!542867)))

(declare-fun b!6362125 () Bool)

(assert (=> b!6362125 (= e!3863204 ((as const (Array Context!11306 Bool)) false))))

(declare-fun d!1995868 () Bool)

(declare-fun c!1158206 () Bool)

(assert (=> d!1995868 (= c!1158206 (and ((_ is ElementMatch!16269) (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (= (c!1157838 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (h!71430 s!2326))))))

(assert (=> d!1995868 (= (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343))))))) (Context!11307 (t!378699 (exprs!6153 (Context!11307 (Cons!64983 (h!71431 (exprs!6153 (h!71432 zl!343))) (t!378699 (exprs!6153 (h!71432 zl!343)))))))) (h!71430 s!2326)) e!3863206)))

(declare-fun b!6362120 () Bool)

(assert (=> b!6362120 (= e!3863209 call!542868)))

(assert (= (and d!1995868 c!1158206) b!6362115))

(assert (= (and d!1995868 (not c!1158206)) b!6362118))

(assert (= (and b!6362118 c!1158205) b!6362124))

(assert (= (and b!6362118 (not c!1158205)) b!6362119))

(assert (= (and b!6362119 res!2617747) b!6362123))

(assert (= (and b!6362119 c!1158208) b!6362121))

(assert (= (and b!6362119 (not c!1158208)) b!6362122))

(assert (= (and b!6362122 c!1158207) b!6362120))

(assert (= (and b!6362122 (not c!1158207)) b!6362117))

(assert (= (and b!6362117 c!1158209) b!6362116))

(assert (= (and b!6362117 (not c!1158209)) b!6362125))

(assert (= (or b!6362120 b!6362116) bm!542861))

(assert (= (or b!6362120 b!6362116) bm!542865))

(assert (= (or b!6362121 bm!542861) bm!542860))

(assert (= (or b!6362121 bm!542865) bm!542864))

(assert (= (or b!6362124 bm!542864) bm!542863))

(assert (= (or b!6362124 b!6362121) bm!542862))

(declare-fun m!7167324 () Bool)

(assert (=> bm!542860 m!7167324))

(declare-fun m!7167326 () Bool)

(assert (=> b!6362115 m!7167326))

(declare-fun m!7167332 () Bool)

(assert (=> bm!542862 m!7167332))

(declare-fun m!7167334 () Bool)

(assert (=> b!6362123 m!7167334))

(declare-fun m!7167336 () Bool)

(assert (=> bm!542863 m!7167336))

(assert (=> bm!542713 d!1995868))

(declare-fun d!1995880 () Bool)

(assert (=> d!1995880 (= (nullable!6262 (h!71431 (exprs!6153 lt!2366785))) (nullableFct!2209 (h!71431 (exprs!6153 lt!2366785))))))

(declare-fun bs!1594197 () Bool)

(assert (= bs!1594197 d!1995880))

(declare-fun m!7167338 () Bool)

(assert (=> bs!1594197 m!7167338))

(assert (=> b!6361360 d!1995880))

(declare-fun d!1995882 () Bool)

(assert (=> d!1995882 (= (isEmpty!37086 (tail!12116 (unfocusZipperList!1690 zl!343))) ((_ is Nil!64983) (tail!12116 (unfocusZipperList!1690 zl!343))))))

(assert (=> b!6361386 d!1995882))

(declare-fun d!1995884 () Bool)

(assert (=> d!1995884 (= (tail!12116 (unfocusZipperList!1690 zl!343)) (t!378699 (unfocusZipperList!1690 zl!343)))))

(assert (=> b!6361386 d!1995884))

(assert (=> d!1995552 d!1995630))

(declare-fun d!1995886 () Bool)

(assert (=> d!1995886 (= (Exists!3339 lambda!350394) (choose!47245 lambda!350394))))

(declare-fun bs!1594198 () Bool)

(assert (= bs!1594198 d!1995886))

(declare-fun m!7167340 () Bool)

(assert (=> bs!1594198 m!7167340))

(assert (=> d!1995516 d!1995886))

(declare-fun d!1995888 () Bool)

(assert (=> d!1995888 (= (Exists!3339 lambda!350395) (choose!47245 lambda!350395))))

(declare-fun bs!1594199 () Bool)

(assert (= bs!1594199 d!1995888))

(declare-fun m!7167342 () Bool)

(assert (=> bs!1594199 m!7167342))

(assert (=> d!1995516 d!1995888))

(declare-fun bs!1594200 () Bool)

(declare-fun d!1995890 () Bool)

(assert (= bs!1594200 (and d!1995890 d!1995514)))

(declare-fun lambda!350458 () Int)

(assert (=> bs!1594200 (= lambda!350458 lambda!350389)))

(declare-fun bs!1594201 () Bool)

(assert (= bs!1594201 (and d!1995890 b!6362086)))

(assert (=> bs!1594201 (not (= lambda!350458 lambda!350451))))

(declare-fun bs!1594202 () Bool)

(assert (= bs!1594202 (and d!1995890 b!6360763)))

(assert (=> bs!1594202 (not (= lambda!350458 lambda!350350))))

(declare-fun bs!1594203 () Bool)

(assert (= bs!1594203 (and d!1995890 d!1995516)))

(assert (=> bs!1594203 (not (= lambda!350458 lambda!350395))))

(declare-fun bs!1594204 () Bool)

(assert (= bs!1594204 (and d!1995890 b!6361553)))

(assert (=> bs!1594204 (not (= lambda!350458 lambda!350416))))

(declare-fun bs!1594205 () Bool)

(assert (= bs!1594205 (and d!1995890 b!6362078)))

(assert (=> bs!1594205 (not (= lambda!350458 lambda!350449))))

(declare-fun bs!1594206 () Bool)

(assert (= bs!1594206 (and d!1995890 b!6360930)))

(assert (=> bs!1594206 (not (= lambda!350458 lambda!350375))))

(assert (=> bs!1594203 (= lambda!350458 lambda!350394)))

(declare-fun bs!1594207 () Bool)

(assert (= bs!1594207 (and d!1995890 b!6361561)))

(assert (=> bs!1594207 (not (= lambda!350458 lambda!350417))))

(assert (=> bs!1594202 (= lambda!350458 lambda!350349)))

(declare-fun bs!1594208 () Bool)

(assert (= bs!1594208 (and d!1995890 d!1995696)))

(assert (=> bs!1594208 (= lambda!350458 lambda!350422)))

(declare-fun bs!1594209 () Bool)

(assert (= bs!1594209 (and d!1995890 b!6360922)))

(assert (=> bs!1594209 (not (= lambda!350458 lambda!350374))))

(assert (=> d!1995890 true))

(assert (=> d!1995890 true))

(assert (=> d!1995890 true))

(declare-fun lambda!350459 () Int)

(assert (=> bs!1594200 (not (= lambda!350459 lambda!350389))))

(assert (=> bs!1594201 (= (and (= (regOne!33050 r!7292) (regOne!33050 (regOne!33051 r!7292))) (= (regTwo!33050 r!7292) (regTwo!33050 (regOne!33051 r!7292)))) (= lambda!350459 lambda!350451))))

(assert (=> bs!1594202 (= lambda!350459 lambda!350350)))

(assert (=> bs!1594203 (= lambda!350459 lambda!350395)))

(assert (=> bs!1594204 (not (= lambda!350459 lambda!350416))))

(assert (=> bs!1594205 (not (= lambda!350459 lambda!350449))))

(assert (=> bs!1594206 (= lambda!350459 lambda!350375)))

(assert (=> bs!1594203 (not (= lambda!350459 lambda!350394))))

(assert (=> bs!1594207 (= (and (= (regOne!33050 r!7292) (regOne!33050 (regTwo!33051 r!7292))) (= (regTwo!33050 r!7292) (regTwo!33050 (regTwo!33051 r!7292)))) (= lambda!350459 lambda!350417))))

(assert (=> bs!1594202 (not (= lambda!350459 lambda!350349))))

(assert (=> bs!1594208 (not (= lambda!350459 lambda!350422))))

(assert (=> bs!1594209 (not (= lambda!350459 lambda!350374))))

(declare-fun bs!1594210 () Bool)

(assert (= bs!1594210 d!1995890))

(assert (=> bs!1594210 (not (= lambda!350459 lambda!350458))))

(assert (=> d!1995890 true))

(assert (=> d!1995890 true))

(assert (=> d!1995890 true))

(assert (=> d!1995890 (= (Exists!3339 lambda!350458) (Exists!3339 lambda!350459))))

(assert (=> d!1995890 true))

(declare-fun _$90!2211 () Unit!158407)

(assert (=> d!1995890 (= (choose!47247 (regOne!33050 r!7292) (regTwo!33050 r!7292) s!2326) _$90!2211)))

(declare-fun m!7167368 () Bool)

(assert (=> bs!1594210 m!7167368))

(declare-fun m!7167370 () Bool)

(assert (=> bs!1594210 m!7167370))

(assert (=> d!1995516 d!1995890))

(assert (=> d!1995516 d!1995692))

(assert (=> b!6361355 d!1995524))

(declare-fun b!6362188 () Bool)

(declare-fun e!3863249 () Bool)

(declare-fun e!3863244 () Bool)

(assert (=> b!6362188 (= e!3863249 e!3863244)))

(declare-fun res!2617772 () Bool)

(declare-fun call!542889 () Bool)

(assert (=> b!6362188 (= res!2617772 call!542889)))

(assert (=> b!6362188 (=> res!2617772 e!3863244)))

(declare-fun b!6362190 () Bool)

(declare-fun e!3863248 () Bool)

(assert (=> b!6362190 (= e!3863248 e!3863249)))

(declare-fun c!1158230 () Bool)

(assert (=> b!6362190 (= c!1158230 ((_ is Union!16269) (regOne!33050 (regOne!33050 r!7292))))))

(declare-fun b!6362191 () Bool)

(declare-fun e!3863245 () Bool)

(assert (=> b!6362191 (= e!3863245 e!3863248)))

(declare-fun res!2617771 () Bool)

(assert (=> b!6362191 (=> res!2617771 e!3863248)))

(assert (=> b!6362191 (= res!2617771 ((_ is Star!16269) (regOne!33050 (regOne!33050 r!7292))))))

(declare-fun b!6362192 () Bool)

(declare-fun call!542890 () Bool)

(assert (=> b!6362192 (= e!3863244 call!542890)))

(declare-fun bm!542884 () Bool)

(assert (=> bm!542884 (= call!542889 (nullable!6262 (ite c!1158230 (regOne!33051 (regOne!33050 (regOne!33050 r!7292))) (regOne!33050 (regOne!33050 (regOne!33050 r!7292))))))))

(declare-fun b!6362193 () Bool)

(declare-fun e!3863246 () Bool)

(assert (=> b!6362193 (= e!3863246 call!542890)))

(declare-fun b!6362194 () Bool)

(declare-fun e!3863247 () Bool)

(assert (=> b!6362194 (= e!3863247 e!3863245)))

(declare-fun res!2617774 () Bool)

(assert (=> b!6362194 (=> (not res!2617774) (not e!3863245))))

(assert (=> b!6362194 (= res!2617774 (and (not ((_ is EmptyLang!16269) (regOne!33050 (regOne!33050 r!7292)))) (not ((_ is ElementMatch!16269) (regOne!33050 (regOne!33050 r!7292))))))))

(declare-fun bm!542885 () Bool)

(assert (=> bm!542885 (= call!542890 (nullable!6262 (ite c!1158230 (regTwo!33051 (regOne!33050 (regOne!33050 r!7292))) (regTwo!33050 (regOne!33050 (regOne!33050 r!7292))))))))

(declare-fun b!6362189 () Bool)

(assert (=> b!6362189 (= e!3863249 e!3863246)))

(declare-fun res!2617775 () Bool)

(assert (=> b!6362189 (= res!2617775 call!542889)))

(assert (=> b!6362189 (=> (not res!2617775) (not e!3863246))))

(declare-fun d!1995898 () Bool)

(declare-fun res!2617773 () Bool)

(assert (=> d!1995898 (=> res!2617773 e!3863247)))

(assert (=> d!1995898 (= res!2617773 ((_ is EmptyExpr!16269) (regOne!33050 (regOne!33050 r!7292))))))

(assert (=> d!1995898 (= (nullableFct!2209 (regOne!33050 (regOne!33050 r!7292))) e!3863247)))

(assert (= (and d!1995898 (not res!2617773)) b!6362194))

(assert (= (and b!6362194 res!2617774) b!6362191))

(assert (= (and b!6362191 (not res!2617771)) b!6362190))

(assert (= (and b!6362190 c!1158230) b!6362188))

(assert (= (and b!6362190 (not c!1158230)) b!6362189))

(assert (= (and b!6362188 (not res!2617772)) b!6362192))

(assert (= (and b!6362189 res!2617775) b!6362193))

(assert (= (or b!6362192 b!6362193) bm!542885))

(assert (= (or b!6362188 b!6362189) bm!542884))

(declare-fun m!7167372 () Bool)

(assert (=> bm!542884 m!7167372))

(declare-fun m!7167374 () Bool)

(assert (=> bm!542885 m!7167374))

(assert (=> d!1995556 d!1995898))

(declare-fun bm!542886 () Bool)

(declare-fun call!542891 () (InoxSet Context!11306))

(assert (=> bm!542886 (= call!542891 (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 lt!2366785))))) (Context!11307 (t!378699 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 lt!2366785)))))) (h!71430 s!2326)))))

(declare-fun b!6362195 () Bool)

(declare-fun e!3863250 () Bool)

(assert (=> b!6362195 (= e!3863250 (nullable!6262 (h!71431 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 lt!2366785)))))))))

(declare-fun b!6362196 () Bool)

(declare-fun e!3863252 () (InoxSet Context!11306))

(assert (=> b!6362196 (= e!3863252 ((as const (Array Context!11306 Bool)) false))))

(declare-fun b!6362197 () Bool)

(declare-fun e!3863251 () (InoxSet Context!11306))

(assert (=> b!6362197 (= e!3863251 ((_ map or) call!542891 (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 lt!2366785)))))) (h!71430 s!2326))))))

(declare-fun b!6362198 () Bool)

(assert (=> b!6362198 (= e!3863252 call!542891)))

(declare-fun d!1995900 () Bool)

(declare-fun c!1158232 () Bool)

(assert (=> d!1995900 (= c!1158232 e!3863250)))

(declare-fun res!2617776 () Bool)

(assert (=> d!1995900 (=> (not res!2617776) (not e!3863250))))

(assert (=> d!1995900 (= res!2617776 ((_ is Cons!64983) (exprs!6153 (Context!11307 (t!378699 (exprs!6153 lt!2366785))))))))

(assert (=> d!1995900 (= (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 lt!2366785))) (h!71430 s!2326)) e!3863251)))

(declare-fun b!6362199 () Bool)

(assert (=> b!6362199 (= e!3863251 e!3863252)))

(declare-fun c!1158231 () Bool)

(assert (=> b!6362199 (= c!1158231 ((_ is Cons!64983) (exprs!6153 (Context!11307 (t!378699 (exprs!6153 lt!2366785))))))))

(assert (= (and d!1995900 res!2617776) b!6362195))

(assert (= (and d!1995900 c!1158232) b!6362197))

(assert (= (and d!1995900 (not c!1158232)) b!6362199))

(assert (= (and b!6362199 c!1158231) b!6362198))

(assert (= (and b!6362199 (not c!1158231)) b!6362196))

(assert (= (or b!6362197 b!6362198) bm!542886))

(declare-fun m!7167376 () Bool)

(assert (=> bm!542886 m!7167376))

(declare-fun m!7167378 () Bool)

(assert (=> b!6362195 m!7167378))

(declare-fun m!7167380 () Bool)

(assert (=> b!6362197 m!7167380))

(assert (=> b!6361362 d!1995900))

(declare-fun c!1158241 () Bool)

(declare-fun call!542897 () List!65107)

(declare-fun c!1158240 () Bool)

(declare-fun bm!542891 () Bool)

(assert (=> bm!542891 (= call!542897 ($colon$colon!2130 (exprs!6153 (ite c!1157965 (Context!11307 lt!2366792) (Context!11307 call!542702))) (ite (or c!1158241 c!1158240) (regTwo!33050 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))) (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292)))))))))

(declare-fun bm!542892 () Bool)

(declare-fun call!542901 () List!65107)

(assert (=> bm!542892 (= call!542901 call!542897)))

(declare-fun e!3863260 () (InoxSet Context!11306))

(declare-fun b!6362210 () Bool)

(assert (=> b!6362210 (= e!3863260 (store ((as const (Array Context!11306 Bool)) false) (ite c!1157965 (Context!11307 lt!2366792) (Context!11307 call!542702)) true))))

(declare-fun b!6362211 () Bool)

(declare-fun e!3863258 () (InoxSet Context!11306))

(declare-fun call!542899 () (InoxSet Context!11306))

(assert (=> b!6362211 (= e!3863258 call!542899)))

(declare-fun b!6362212 () Bool)

(declare-fun c!1158242 () Bool)

(assert (=> b!6362212 (= c!1158242 ((_ is Star!16269) (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))))))

(declare-fun e!3863263 () (InoxSet Context!11306))

(assert (=> b!6362212 (= e!3863263 e!3863258)))

(declare-fun b!6362213 () Bool)

(declare-fun e!3863261 () (InoxSet Context!11306))

(assert (=> b!6362213 (= e!3863260 e!3863261)))

(declare-fun c!1158238 () Bool)

(assert (=> b!6362213 (= c!1158238 ((_ is Union!16269) (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))))))

(declare-fun call!542900 () (InoxSet Context!11306))

(declare-fun bm!542893 () Bool)

(assert (=> bm!542893 (= call!542900 (derivationStepZipperDown!1517 (ite c!1158238 (regOne!33051 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))) (regOne!33050 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292)))))) (ite c!1158238 (ite c!1157965 (Context!11307 lt!2366792) (Context!11307 call!542702)) (Context!11307 call!542897)) (h!71430 s!2326)))))

(declare-fun b!6362214 () Bool)

(declare-fun e!3863259 () Bool)

(assert (=> b!6362214 (= c!1158241 e!3863259)))

(declare-fun res!2617777 () Bool)

(assert (=> b!6362214 (=> (not res!2617777) (not e!3863259))))

(assert (=> b!6362214 (= res!2617777 ((_ is Concat!25114) (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))))))

(declare-fun e!3863262 () (InoxSet Context!11306))

(assert (=> b!6362214 (= e!3863261 e!3863262)))

(declare-fun b!6362216 () Bool)

(declare-fun call!542898 () (InoxSet Context!11306))

(assert (=> b!6362216 (= e!3863262 ((_ map or) call!542900 call!542898))))

(declare-fun call!542896 () (InoxSet Context!11306))

(declare-fun bm!542894 () Bool)

(assert (=> bm!542894 (= call!542896 (derivationStepZipperDown!1517 (ite c!1158238 (regTwo!33051 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))) (ite c!1158241 (regTwo!33050 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))) (ite c!1158240 (regOne!33050 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))) (reg!16598 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292)))))))) (ite (or c!1158238 c!1158241) (ite c!1157965 (Context!11307 lt!2366792) (Context!11307 call!542702)) (Context!11307 call!542901)) (h!71430 s!2326)))))

(declare-fun bm!542895 () Bool)

(assert (=> bm!542895 (= call!542898 call!542896)))

(declare-fun b!6362217 () Bool)

(assert (=> b!6362217 (= e!3863262 e!3863263)))

(assert (=> b!6362217 (= c!1158240 ((_ is Concat!25114) (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))))))

(declare-fun b!6362218 () Bool)

(assert (=> b!6362218 (= e!3863259 (nullable!6262 (regOne!33050 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292)))))))))

(declare-fun b!6362219 () Bool)

(assert (=> b!6362219 (= e!3863261 ((_ map or) call!542900 call!542896))))

(declare-fun bm!542896 () Bool)

(assert (=> bm!542896 (= call!542899 call!542898)))

(declare-fun b!6362220 () Bool)

(assert (=> b!6362220 (= e!3863258 ((as const (Array Context!11306 Bool)) false))))

(declare-fun c!1158239 () Bool)

(declare-fun d!1995902 () Bool)

(assert (=> d!1995902 (= c!1158239 (and ((_ is ElementMatch!16269) (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))) (= (c!1157838 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292))))) (h!71430 s!2326))))))

(assert (=> d!1995902 (= (derivationStepZipperDown!1517 (ite c!1157965 (regOne!33051 (reg!16598 (regOne!33050 r!7292))) (regOne!33050 (reg!16598 (regOne!33050 r!7292)))) (ite c!1157965 (Context!11307 lt!2366792) (Context!11307 call!542702)) (h!71430 s!2326)) e!3863260)))

(declare-fun b!6362215 () Bool)

(assert (=> b!6362215 (= e!3863263 call!542899)))

(assert (= (and d!1995902 c!1158239) b!6362210))

(assert (= (and d!1995902 (not c!1158239)) b!6362213))

(assert (= (and b!6362213 c!1158238) b!6362219))

(assert (= (and b!6362213 (not c!1158238)) b!6362214))

(assert (= (and b!6362214 res!2617777) b!6362218))

(assert (= (and b!6362214 c!1158241) b!6362216))

(assert (= (and b!6362214 (not c!1158241)) b!6362217))

(assert (= (and b!6362217 c!1158240) b!6362215))

(assert (= (and b!6362217 (not c!1158240)) b!6362212))

(assert (= (and b!6362212 c!1158242) b!6362211))

(assert (= (and b!6362212 (not c!1158242)) b!6362220))

(assert (= (or b!6362215 b!6362211) bm!542892))

(assert (= (or b!6362215 b!6362211) bm!542896))

(assert (= (or b!6362216 bm!542892) bm!542891))

(assert (= (or b!6362216 bm!542896) bm!542895))

(assert (= (or b!6362219 bm!542895) bm!542894))

(assert (= (or b!6362219 b!6362216) bm!542893))

(declare-fun m!7167390 () Bool)

(assert (=> bm!542891 m!7167390))

(declare-fun m!7167392 () Bool)

(assert (=> b!6362210 m!7167392))

(declare-fun m!7167394 () Bool)

(assert (=> bm!542893 m!7167394))

(declare-fun m!7167396 () Bool)

(assert (=> b!6362218 m!7167396))

(declare-fun m!7167398 () Bool)

(assert (=> bm!542894 m!7167398))

(assert (=> bm!542698 d!1995902))

(declare-fun bs!1594212 () Bool)

(declare-fun d!1995908 () Bool)

(assert (= bs!1594212 (and d!1995908 d!1995708)))

(declare-fun lambda!350460 () Int)

(assert (=> bs!1594212 (= lambda!350460 lambda!350425)))

(declare-fun bs!1594213 () Bool)

(assert (= bs!1594213 (and d!1995908 d!1995748)))

(assert (=> bs!1594213 (= lambda!350460 lambda!350432)))

(assert (=> d!1995908 (= (nullableZipper!2035 ((_ map or) lt!2366796 lt!2366784)) (exists!2573 ((_ map or) lt!2366796 lt!2366784) lambda!350460))))

(declare-fun bs!1594214 () Bool)

(assert (= bs!1594214 d!1995908))

(declare-fun m!7167414 () Bool)

(assert (=> bs!1594214 m!7167414))

(assert (=> b!6361440 d!1995908))

(declare-fun d!1995912 () Bool)

(assert (=> d!1995912 (= (isEmptyLang!1678 lt!2366871) ((_ is EmptyLang!16269) lt!2366871))))

(assert (=> b!6361388 d!1995912))

(declare-fun bm!542897 () Bool)

(declare-fun call!542902 () (InoxSet Context!11306))

(assert (=> bm!542897 (= call!542902 (derivationStepZipperDown!1517 (h!71431 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))))) (Context!11307 (t!378699 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343))))))) (h!71430 s!2326)))))

(declare-fun b!6362229 () Bool)

(declare-fun e!3863268 () Bool)

(assert (=> b!6362229 (= e!3863268 (nullable!6262 (h!71431 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343))))))))))

(declare-fun b!6362230 () Bool)

(declare-fun e!3863270 () (InoxSet Context!11306))

(assert (=> b!6362230 (= e!3863270 ((as const (Array Context!11306 Bool)) false))))

(declare-fun e!3863269 () (InoxSet Context!11306))

(declare-fun b!6362231 () Bool)

(assert (=> b!6362231 (= e!3863269 ((_ map or) call!542902 (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343))))))) (h!71430 s!2326))))))

(declare-fun b!6362232 () Bool)

(assert (=> b!6362232 (= e!3863270 call!542902)))

(declare-fun d!1995916 () Bool)

(declare-fun c!1158246 () Bool)

(assert (=> d!1995916 (= c!1158246 e!3863268)))

(declare-fun res!2617782 () Bool)

(assert (=> d!1995916 (=> (not res!2617782) (not e!3863268))))

(assert (=> d!1995916 (= res!2617782 ((_ is Cons!64983) (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))))))))

(assert (=> d!1995916 (= (derivationStepZipperUp!1443 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))) (h!71430 s!2326)) e!3863269)))

(declare-fun b!6362233 () Bool)

(assert (=> b!6362233 (= e!3863269 e!3863270)))

(declare-fun c!1158245 () Bool)

(assert (=> b!6362233 (= c!1158245 ((_ is Cons!64983) (exprs!6153 (Context!11307 (t!378699 (exprs!6153 (h!71432 zl!343)))))))))

(assert (= (and d!1995916 res!2617782) b!6362229))

(assert (= (and d!1995916 c!1158246) b!6362231))

(assert (= (and d!1995916 (not c!1158246)) b!6362233))

(assert (= (and b!6362233 c!1158245) b!6362232))

(assert (= (and b!6362233 (not c!1158245)) b!6362230))

(assert (= (or b!6362231 b!6362232) bm!542897))

(declare-fun m!7167430 () Bool)

(assert (=> bm!542897 m!7167430))

(declare-fun m!7167432 () Bool)

(assert (=> b!6362229 m!7167432))

(declare-fun m!7167434 () Bool)

(assert (=> b!6362231 m!7167434))

(assert (=> b!6361357 d!1995916))

(declare-fun d!1995918 () Bool)

(declare-fun c!1158249 () Bool)

(assert (=> d!1995918 (= c!1158249 ((_ is Nil!64984) lt!2366841))))

(declare-fun e!3863273 () (InoxSet Context!11306))

(assert (=> d!1995918 (= (content!12272 lt!2366841) e!3863273)))

(declare-fun b!6362238 () Bool)

(assert (=> b!6362238 (= e!3863273 ((as const (Array Context!11306 Bool)) false))))

(declare-fun b!6362239 () Bool)

(assert (=> b!6362239 (= e!3863273 ((_ map or) (store ((as const (Array Context!11306 Bool)) false) (h!71432 lt!2366841) true) (content!12272 (t!378700 lt!2366841))))))

(assert (= (and d!1995918 c!1158249) b!6362238))

(assert (= (and d!1995918 (not c!1158249)) b!6362239))

(declare-fun m!7167436 () Bool)

(assert (=> b!6362239 m!7167436))

(declare-fun m!7167438 () Bool)

(assert (=> b!6362239 m!7167438))

(assert (=> b!6361092 d!1995918))

(declare-fun d!1995920 () Bool)

(declare-fun c!1158250 () Bool)

(assert (=> d!1995920 (= c!1158250 (isEmpty!37089 (tail!12115 (t!378698 s!2326))))))

(declare-fun e!3863274 () Bool)

(assert (=> d!1995920 (= (matchZipper!2281 (derivationStepZipper!2235 lt!2366784 (head!13030 (t!378698 s!2326))) (tail!12115 (t!378698 s!2326))) e!3863274)))

(declare-fun b!6362240 () Bool)

(assert (=> b!6362240 (= e!3863274 (nullableZipper!2035 (derivationStepZipper!2235 lt!2366784 (head!13030 (t!378698 s!2326)))))))

(declare-fun b!6362241 () Bool)

(assert (=> b!6362241 (= e!3863274 (matchZipper!2281 (derivationStepZipper!2235 (derivationStepZipper!2235 lt!2366784 (head!13030 (t!378698 s!2326))) (head!13030 (tail!12115 (t!378698 s!2326)))) (tail!12115 (tail!12115 (t!378698 s!2326)))))))

(assert (= (and d!1995920 c!1158250) b!6362240))

(assert (= (and d!1995920 (not c!1158250)) b!6362241))

(assert (=> d!1995920 m!7166666))

(assert (=> d!1995920 m!7167022))

(assert (=> b!6362240 m!7166680))

(declare-fun m!7167440 () Bool)

(assert (=> b!6362240 m!7167440))

(assert (=> b!6362241 m!7166666))

(assert (=> b!6362241 m!7167026))

(assert (=> b!6362241 m!7166680))

(assert (=> b!6362241 m!7167026))

(declare-fun m!7167442 () Bool)

(assert (=> b!6362241 m!7167442))

(assert (=> b!6362241 m!7166666))

(assert (=> b!6362241 m!7167030))

(assert (=> b!6362241 m!7167442))

(assert (=> b!6362241 m!7167030))

(declare-fun m!7167444 () Bool)

(assert (=> b!6362241 m!7167444))

(assert (=> b!6361443 d!1995920))

(declare-fun bs!1594216 () Bool)

(declare-fun d!1995922 () Bool)

(assert (= bs!1594216 (and d!1995922 b!6360754)))

(declare-fun lambda!350461 () Int)

(assert (=> bs!1594216 (= (= (head!13030 (t!378698 s!2326)) (h!71430 s!2326)) (= lambda!350461 lambda!350351))))

(declare-fun bs!1594217 () Bool)

(assert (= bs!1594217 (and d!1995922 d!1995740)))

(assert (=> bs!1594217 (= lambda!350461 lambda!350429)))

(declare-fun bs!1594218 () Bool)

(assert (= bs!1594218 (and d!1995922 d!1995756)))

(assert (=> bs!1594218 (= lambda!350461 lambda!350434)))

(assert (=> d!1995922 true))

(assert (=> d!1995922 (= (derivationStepZipper!2235 lt!2366784 (head!13030 (t!378698 s!2326))) (flatMap!1774 lt!2366784 lambda!350461))))

(declare-fun bs!1594219 () Bool)

(assert (= bs!1594219 d!1995922))

(declare-fun m!7167450 () Bool)

(assert (=> bs!1594219 m!7167450))

(assert (=> b!6361443 d!1995922))

(assert (=> b!6361443 d!1995742))

(assert (=> b!6361443 d!1995744))

(assert (=> d!1995508 d!1995702))

(declare-fun b!6362251 () Bool)

(declare-fun e!3863282 () Bool)

(declare-fun e!3863281 () Bool)

(assert (=> b!6362251 (= e!3863282 e!3863281)))

(declare-fun c!1158253 () Bool)

(assert (=> b!6362251 (= c!1158253 ((_ is EmptyLang!16269) (regOne!33050 r!7292)))))

(declare-fun b!6362252 () Bool)

(declare-fun e!3863286 () Bool)

(assert (=> b!6362252 (= e!3863286 (matchR!8452 (derivativeStep!4974 (regOne!33050 r!7292) (head!13030 Nil!64982)) (tail!12115 Nil!64982)))))

(declare-fun b!6362253 () Bool)

(declare-fun e!3863283 () Bool)

(declare-fun e!3863285 () Bool)

(assert (=> b!6362253 (= e!3863283 e!3863285)))

(declare-fun res!2617792 () Bool)

(assert (=> b!6362253 (=> res!2617792 e!3863285)))

(declare-fun call!542903 () Bool)

(assert (=> b!6362253 (= res!2617792 call!542903)))

(declare-fun b!6362254 () Bool)

(declare-fun lt!2366922 () Bool)

(assert (=> b!6362254 (= e!3863281 (not lt!2366922))))

(declare-fun b!6362255 () Bool)

(declare-fun e!3863284 () Bool)

(assert (=> b!6362255 (= e!3863284 (= (head!13030 Nil!64982) (c!1157838 (regOne!33050 r!7292))))))

(declare-fun bm!542898 () Bool)

(assert (=> bm!542898 (= call!542903 (isEmpty!37089 Nil!64982))))

(declare-fun b!6362257 () Bool)

(declare-fun res!2617788 () Bool)

(declare-fun e!3863280 () Bool)

(assert (=> b!6362257 (=> res!2617788 e!3863280)))

(assert (=> b!6362257 (= res!2617788 e!3863284)))

(declare-fun res!2617791 () Bool)

(assert (=> b!6362257 (=> (not res!2617791) (not e!3863284))))

(assert (=> b!6362257 (= res!2617791 lt!2366922)))

(declare-fun b!6362258 () Bool)

(declare-fun res!2617795 () Bool)

(assert (=> b!6362258 (=> res!2617795 e!3863285)))

(assert (=> b!6362258 (= res!2617795 (not (isEmpty!37089 (tail!12115 Nil!64982))))))

(declare-fun b!6362259 () Bool)

(declare-fun res!2617793 () Bool)

(assert (=> b!6362259 (=> (not res!2617793) (not e!3863284))))

(assert (=> b!6362259 (= res!2617793 (not call!542903))))

(declare-fun b!6362260 () Bool)

(declare-fun res!2617794 () Bool)

(assert (=> b!6362260 (=> res!2617794 e!3863280)))

(assert (=> b!6362260 (= res!2617794 (not ((_ is ElementMatch!16269) (regOne!33050 r!7292))))))

(assert (=> b!6362260 (= e!3863281 e!3863280)))

(declare-fun b!6362261 () Bool)

(assert (=> b!6362261 (= e!3863280 e!3863283)))

(declare-fun res!2617790 () Bool)

(assert (=> b!6362261 (=> (not res!2617790) (not e!3863283))))

(assert (=> b!6362261 (= res!2617790 (not lt!2366922))))

(declare-fun b!6362262 () Bool)

(assert (=> b!6362262 (= e!3863286 (nullable!6262 (regOne!33050 r!7292)))))

(declare-fun b!6362263 () Bool)

(declare-fun res!2617789 () Bool)

(assert (=> b!6362263 (=> (not res!2617789) (not e!3863284))))

(assert (=> b!6362263 (= res!2617789 (isEmpty!37089 (tail!12115 Nil!64982)))))

(declare-fun b!6362264 () Bool)

(assert (=> b!6362264 (= e!3863282 (= lt!2366922 call!542903))))

(declare-fun d!1995926 () Bool)

(assert (=> d!1995926 e!3863282))

(declare-fun c!1158255 () Bool)

(assert (=> d!1995926 (= c!1158255 ((_ is EmptyExpr!16269) (regOne!33050 r!7292)))))

(assert (=> d!1995926 (= lt!2366922 e!3863286)))

(declare-fun c!1158254 () Bool)

(assert (=> d!1995926 (= c!1158254 (isEmpty!37089 Nil!64982))))

(assert (=> d!1995926 (validRegex!8005 (regOne!33050 r!7292))))

(assert (=> d!1995926 (= (matchR!8452 (regOne!33050 r!7292) Nil!64982) lt!2366922)))

(declare-fun b!6362256 () Bool)

(assert (=> b!6362256 (= e!3863285 (not (= (head!13030 Nil!64982) (c!1157838 (regOne!33050 r!7292)))))))

(assert (= (and d!1995926 c!1158254) b!6362262))

(assert (= (and d!1995926 (not c!1158254)) b!6362252))

(assert (= (and d!1995926 c!1158255) b!6362264))

(assert (= (and d!1995926 (not c!1158255)) b!6362251))

(assert (= (and b!6362251 c!1158253) b!6362254))

(assert (= (and b!6362251 (not c!1158253)) b!6362260))

(assert (= (and b!6362260 (not res!2617794)) b!6362257))

(assert (= (and b!6362257 res!2617791) b!6362259))

(assert (= (and b!6362259 res!2617793) b!6362263))

(assert (= (and b!6362263 res!2617789) b!6362255))

(assert (= (and b!6362257 (not res!2617788)) b!6362261))

(assert (= (and b!6362261 res!2617790) b!6362253))

(assert (= (and b!6362253 (not res!2617792)) b!6362258))

(assert (= (and b!6362258 (not res!2617795)) b!6362256))

(assert (= (or b!6362264 b!6362253 b!6362259) bm!542898))

(declare-fun m!7167456 () Bool)

(assert (=> b!6362255 m!7167456))

(declare-fun m!7167458 () Bool)

(assert (=> b!6362258 m!7167458))

(assert (=> b!6362258 m!7167458))

(declare-fun m!7167462 () Bool)

(assert (=> b!6362258 m!7167462))

(declare-fun m!7167464 () Bool)

(assert (=> d!1995926 m!7167464))

(assert (=> d!1995926 m!7166556))

(assert (=> b!6362256 m!7167456))

(assert (=> b!6362262 m!7166816))

(assert (=> bm!542898 m!7167464))

(assert (=> b!6362252 m!7167456))

(assert (=> b!6362252 m!7167456))

(declare-fun m!7167468 () Bool)

(assert (=> b!6362252 m!7167468))

(assert (=> b!6362252 m!7167458))

(assert (=> b!6362252 m!7167468))

(assert (=> b!6362252 m!7167458))

(declare-fun m!7167474 () Bool)

(assert (=> b!6362252 m!7167474))

(assert (=> b!6362263 m!7167458))

(assert (=> b!6362263 m!7167458))

(assert (=> b!6362263 m!7167462))

(assert (=> d!1995508 d!1995926))

(assert (=> d!1995508 d!1995692))

(declare-fun e!3863287 () Bool)

(assert (=> b!6361474 (= tp!1771467 e!3863287)))

(declare-fun b!6362268 () Bool)

(declare-fun tp!1771525 () Bool)

(declare-fun tp!1771526 () Bool)

(assert (=> b!6362268 (= e!3863287 (and tp!1771525 tp!1771526))))

(declare-fun b!6362266 () Bool)

(declare-fun tp!1771523 () Bool)

(declare-fun tp!1771527 () Bool)

(assert (=> b!6362266 (= e!3863287 (and tp!1771523 tp!1771527))))

(declare-fun b!6362267 () Bool)

(declare-fun tp!1771524 () Bool)

(assert (=> b!6362267 (= e!3863287 tp!1771524)))

(declare-fun b!6362265 () Bool)

(assert (=> b!6362265 (= e!3863287 tp_is_empty!41791)))

(assert (= (and b!6361474 ((_ is ElementMatch!16269) (regOne!33051 (regOne!33050 r!7292)))) b!6362265))

(assert (= (and b!6361474 ((_ is Concat!25114) (regOne!33051 (regOne!33050 r!7292)))) b!6362266))

(assert (= (and b!6361474 ((_ is Star!16269) (regOne!33051 (regOne!33050 r!7292)))) b!6362267))

(assert (= (and b!6361474 ((_ is Union!16269) (regOne!33051 (regOne!33050 r!7292)))) b!6362268))

(declare-fun e!3863288 () Bool)

(assert (=> b!6361474 (= tp!1771468 e!3863288)))

(declare-fun b!6362272 () Bool)

(declare-fun tp!1771530 () Bool)

(declare-fun tp!1771531 () Bool)

(assert (=> b!6362272 (= e!3863288 (and tp!1771530 tp!1771531))))

(declare-fun b!6362270 () Bool)

(declare-fun tp!1771528 () Bool)

(declare-fun tp!1771532 () Bool)

(assert (=> b!6362270 (= e!3863288 (and tp!1771528 tp!1771532))))

(declare-fun b!6362271 () Bool)

(declare-fun tp!1771529 () Bool)

(assert (=> b!6362271 (= e!3863288 tp!1771529)))

(declare-fun b!6362269 () Bool)

(assert (=> b!6362269 (= e!3863288 tp_is_empty!41791)))

(assert (= (and b!6361474 ((_ is ElementMatch!16269) (regTwo!33051 (regOne!33050 r!7292)))) b!6362269))

(assert (= (and b!6361474 ((_ is Concat!25114) (regTwo!33051 (regOne!33050 r!7292)))) b!6362270))

(assert (= (and b!6361474 ((_ is Star!16269) (regTwo!33051 (regOne!33050 r!7292)))) b!6362271))

(assert (= (and b!6361474 ((_ is Union!16269) (regTwo!33051 (regOne!33050 r!7292)))) b!6362272))

(declare-fun b!6362274 () Bool)

(declare-fun e!3863290 () Bool)

(declare-fun tp!1771533 () Bool)

(assert (=> b!6362274 (= e!3863290 tp!1771533)))

(declare-fun e!3863289 () Bool)

(declare-fun tp!1771534 () Bool)

(declare-fun b!6362273 () Bool)

(assert (=> b!6362273 (= e!3863289 (and (inv!83919 (h!71432 (t!378700 (t!378700 zl!343)))) e!3863290 tp!1771534))))

(assert (=> b!6361450 (= tp!1771446 e!3863289)))

(assert (= b!6362273 b!6362274))

(assert (= (and b!6361450 ((_ is Cons!64984) (t!378700 (t!378700 zl!343)))) b!6362273))

(declare-fun m!7167486 () Bool)

(assert (=> b!6362273 m!7167486))

(declare-fun b!6362277 () Bool)

(declare-fun e!3863293 () Bool)

(declare-fun tp!1771535 () Bool)

(declare-fun tp!1771536 () Bool)

(assert (=> b!6362277 (= e!3863293 (and tp!1771535 tp!1771536))))

(assert (=> b!6361451 (= tp!1771445 e!3863293)))

(assert (= (and b!6361451 ((_ is Cons!64983) (exprs!6153 (h!71432 (t!378700 zl!343))))) b!6362277))

(declare-fun condSetEmpty!43341 () Bool)

(assert (=> setNonEmpty!43334 (= condSetEmpty!43341 (= setRest!43334 ((as const (Array Context!11306 Bool)) false)))))

(declare-fun setRes!43341 () Bool)

(assert (=> setNonEmpty!43334 (= tp!1771497 setRes!43341)))

(declare-fun setIsEmpty!43341 () Bool)

(assert (=> setIsEmpty!43341 setRes!43341))

(declare-fun tp!1771537 () Bool)

(declare-fun e!3863294 () Bool)

(declare-fun setElem!43341 () Context!11306)

(declare-fun setNonEmpty!43341 () Bool)

(assert (=> setNonEmpty!43341 (= setRes!43341 (and tp!1771537 (inv!83919 setElem!43341) e!3863294))))

(declare-fun setRest!43341 () (InoxSet Context!11306))

(assert (=> setNonEmpty!43341 (= setRest!43334 ((_ map or) (store ((as const (Array Context!11306 Bool)) false) setElem!43341 true) setRest!43341))))

(declare-fun b!6362278 () Bool)

(declare-fun tp!1771538 () Bool)

(assert (=> b!6362278 (= e!3863294 tp!1771538)))

(assert (= (and setNonEmpty!43334 condSetEmpty!43341) setIsEmpty!43341))

(assert (= (and setNonEmpty!43334 (not condSetEmpty!43341)) setNonEmpty!43341))

(assert (= setNonEmpty!43341 b!6362278))

(declare-fun m!7167492 () Bool)

(assert (=> setNonEmpty!43341 m!7167492))

(declare-fun b!6362279 () Bool)

(declare-fun e!3863296 () Bool)

(declare-fun tp!1771539 () Bool)

(declare-fun tp!1771540 () Bool)

(assert (=> b!6362279 (= e!3863296 (and tp!1771539 tp!1771540))))

(assert (=> b!6361497 (= tp!1771498 e!3863296)))

(assert (= (and b!6361497 ((_ is Cons!64983) (exprs!6153 setElem!43334))) b!6362279))

(declare-fun e!3863299 () Bool)

(assert (=> b!6361483 (= tp!1771479 e!3863299)))

(declare-fun b!6362288 () Bool)

(declare-fun tp!1771543 () Bool)

(declare-fun tp!1771544 () Bool)

(assert (=> b!6362288 (= e!3863299 (and tp!1771543 tp!1771544))))

(declare-fun b!6362286 () Bool)

(declare-fun tp!1771541 () Bool)

(declare-fun tp!1771545 () Bool)

(assert (=> b!6362286 (= e!3863299 (and tp!1771541 tp!1771545))))

(declare-fun b!6362287 () Bool)

(declare-fun tp!1771542 () Bool)

(assert (=> b!6362287 (= e!3863299 tp!1771542)))

(declare-fun b!6362285 () Bool)

(assert (=> b!6362285 (= e!3863299 tp_is_empty!41791)))

(assert (= (and b!6361483 ((_ is ElementMatch!16269) (h!71431 (exprs!6153 (h!71432 zl!343))))) b!6362285))

(assert (= (and b!6361483 ((_ is Concat!25114) (h!71431 (exprs!6153 (h!71432 zl!343))))) b!6362286))

(assert (= (and b!6361483 ((_ is Star!16269) (h!71431 (exprs!6153 (h!71432 zl!343))))) b!6362287))

(assert (= (and b!6361483 ((_ is Union!16269) (h!71431 (exprs!6153 (h!71432 zl!343))))) b!6362288))

(declare-fun b!6362289 () Bool)

(declare-fun e!3863300 () Bool)

(declare-fun tp!1771546 () Bool)

(declare-fun tp!1771547 () Bool)

(assert (=> b!6362289 (= e!3863300 (and tp!1771546 tp!1771547))))

(assert (=> b!6361483 (= tp!1771480 e!3863300)))

(assert (= (and b!6361483 ((_ is Cons!64983) (t!378699 (exprs!6153 (h!71432 zl!343))))) b!6362289))

(declare-fun e!3863301 () Bool)

(assert (=> b!6361490 (= tp!1771488 e!3863301)))

(declare-fun b!6362293 () Bool)

(declare-fun tp!1771550 () Bool)

(declare-fun tp!1771551 () Bool)

(assert (=> b!6362293 (= e!3863301 (and tp!1771550 tp!1771551))))

(declare-fun b!6362291 () Bool)

(declare-fun tp!1771548 () Bool)

(declare-fun tp!1771552 () Bool)

(assert (=> b!6362291 (= e!3863301 (and tp!1771548 tp!1771552))))

(declare-fun b!6362292 () Bool)

(declare-fun tp!1771549 () Bool)

(assert (=> b!6362292 (= e!3863301 tp!1771549)))

(declare-fun b!6362290 () Bool)

(assert (=> b!6362290 (= e!3863301 tp_is_empty!41791)))

(assert (= (and b!6361490 ((_ is ElementMatch!16269) (regOne!33050 (regTwo!33051 r!7292)))) b!6362290))

(assert (= (and b!6361490 ((_ is Concat!25114) (regOne!33050 (regTwo!33051 r!7292)))) b!6362291))

(assert (= (and b!6361490 ((_ is Star!16269) (regOne!33050 (regTwo!33051 r!7292)))) b!6362292))

(assert (= (and b!6361490 ((_ is Union!16269) (regOne!33050 (regTwo!33051 r!7292)))) b!6362293))

(declare-fun e!3863302 () Bool)

(assert (=> b!6361490 (= tp!1771492 e!3863302)))

(declare-fun b!6362297 () Bool)

(declare-fun tp!1771555 () Bool)

(declare-fun tp!1771556 () Bool)

(assert (=> b!6362297 (= e!3863302 (and tp!1771555 tp!1771556))))

(declare-fun b!6362295 () Bool)

(declare-fun tp!1771553 () Bool)

(declare-fun tp!1771557 () Bool)

(assert (=> b!6362295 (= e!3863302 (and tp!1771553 tp!1771557))))

(declare-fun b!6362296 () Bool)

(declare-fun tp!1771554 () Bool)

(assert (=> b!6362296 (= e!3863302 tp!1771554)))

(declare-fun b!6362294 () Bool)

(assert (=> b!6362294 (= e!3863302 tp_is_empty!41791)))

(assert (= (and b!6361490 ((_ is ElementMatch!16269) (regTwo!33050 (regTwo!33051 r!7292)))) b!6362294))

(assert (= (and b!6361490 ((_ is Concat!25114) (regTwo!33050 (regTwo!33051 r!7292)))) b!6362295))

(assert (= (and b!6361490 ((_ is Star!16269) (regTwo!33050 (regTwo!33051 r!7292)))) b!6362296))

(assert (= (and b!6361490 ((_ is Union!16269) (regTwo!33050 (regTwo!33051 r!7292)))) b!6362297))

(declare-fun e!3863303 () Bool)

(assert (=> b!6361476 (= tp!1771470 e!3863303)))

(declare-fun b!6362301 () Bool)

(declare-fun tp!1771560 () Bool)

(declare-fun tp!1771561 () Bool)

(assert (=> b!6362301 (= e!3863303 (and tp!1771560 tp!1771561))))

(declare-fun b!6362299 () Bool)

(declare-fun tp!1771558 () Bool)

(declare-fun tp!1771562 () Bool)

(assert (=> b!6362299 (= e!3863303 (and tp!1771558 tp!1771562))))

(declare-fun b!6362300 () Bool)

(declare-fun tp!1771559 () Bool)

(assert (=> b!6362300 (= e!3863303 tp!1771559)))

(declare-fun b!6362298 () Bool)

(assert (=> b!6362298 (= e!3863303 tp_is_empty!41791)))

(assert (= (and b!6361476 ((_ is ElementMatch!16269) (regOne!33050 (regTwo!33050 r!7292)))) b!6362298))

(assert (= (and b!6361476 ((_ is Concat!25114) (regOne!33050 (regTwo!33050 r!7292)))) b!6362299))

(assert (= (and b!6361476 ((_ is Star!16269) (regOne!33050 (regTwo!33050 r!7292)))) b!6362300))

(assert (= (and b!6361476 ((_ is Union!16269) (regOne!33050 (regTwo!33050 r!7292)))) b!6362301))

(declare-fun e!3863304 () Bool)

(assert (=> b!6361476 (= tp!1771474 e!3863304)))

(declare-fun b!6362305 () Bool)

(declare-fun tp!1771565 () Bool)

(declare-fun tp!1771566 () Bool)

(assert (=> b!6362305 (= e!3863304 (and tp!1771565 tp!1771566))))

(declare-fun b!6362303 () Bool)

(declare-fun tp!1771563 () Bool)

(declare-fun tp!1771567 () Bool)

(assert (=> b!6362303 (= e!3863304 (and tp!1771563 tp!1771567))))

(declare-fun b!6362304 () Bool)

(declare-fun tp!1771564 () Bool)

(assert (=> b!6362304 (= e!3863304 tp!1771564)))

(declare-fun b!6362302 () Bool)

(assert (=> b!6362302 (= e!3863304 tp_is_empty!41791)))

(assert (= (and b!6361476 ((_ is ElementMatch!16269) (regTwo!33050 (regTwo!33050 r!7292)))) b!6362302))

(assert (= (and b!6361476 ((_ is Concat!25114) (regTwo!33050 (regTwo!33050 r!7292)))) b!6362303))

(assert (= (and b!6361476 ((_ is Star!16269) (regTwo!33050 (regTwo!33050 r!7292)))) b!6362304))

(assert (= (and b!6361476 ((_ is Union!16269) (regTwo!33050 (regTwo!33050 r!7292)))) b!6362305))

(declare-fun e!3863305 () Bool)

(assert (=> b!6361491 (= tp!1771489 e!3863305)))

(declare-fun b!6362309 () Bool)

(declare-fun tp!1771570 () Bool)

(declare-fun tp!1771571 () Bool)

(assert (=> b!6362309 (= e!3863305 (and tp!1771570 tp!1771571))))

(declare-fun b!6362307 () Bool)

(declare-fun tp!1771568 () Bool)

(declare-fun tp!1771572 () Bool)

(assert (=> b!6362307 (= e!3863305 (and tp!1771568 tp!1771572))))

(declare-fun b!6362308 () Bool)

(declare-fun tp!1771569 () Bool)

(assert (=> b!6362308 (= e!3863305 tp!1771569)))

(declare-fun b!6362306 () Bool)

(assert (=> b!6362306 (= e!3863305 tp_is_empty!41791)))

(assert (= (and b!6361491 ((_ is ElementMatch!16269) (reg!16598 (regTwo!33051 r!7292)))) b!6362306))

(assert (= (and b!6361491 ((_ is Concat!25114) (reg!16598 (regTwo!33051 r!7292)))) b!6362307))

(assert (= (and b!6361491 ((_ is Star!16269) (reg!16598 (regTwo!33051 r!7292)))) b!6362308))

(assert (= (and b!6361491 ((_ is Union!16269) (reg!16598 (regTwo!33051 r!7292)))) b!6362309))

(declare-fun e!3863309 () Bool)

(assert (=> b!6361492 (= tp!1771490 e!3863309)))

(declare-fun b!6362313 () Bool)

(declare-fun tp!1771575 () Bool)

(declare-fun tp!1771576 () Bool)

(assert (=> b!6362313 (= e!3863309 (and tp!1771575 tp!1771576))))

(declare-fun b!6362311 () Bool)

(declare-fun tp!1771573 () Bool)

(declare-fun tp!1771577 () Bool)

(assert (=> b!6362311 (= e!3863309 (and tp!1771573 tp!1771577))))

(declare-fun b!6362312 () Bool)

(declare-fun tp!1771574 () Bool)

(assert (=> b!6362312 (= e!3863309 tp!1771574)))

(declare-fun b!6362310 () Bool)

(assert (=> b!6362310 (= e!3863309 tp_is_empty!41791)))

(assert (= (and b!6361492 ((_ is ElementMatch!16269) (regOne!33051 (regTwo!33051 r!7292)))) b!6362310))

(assert (= (and b!6361492 ((_ is Concat!25114) (regOne!33051 (regTwo!33051 r!7292)))) b!6362311))

(assert (= (and b!6361492 ((_ is Star!16269) (regOne!33051 (regTwo!33051 r!7292)))) b!6362312))

(assert (= (and b!6361492 ((_ is Union!16269) (regOne!33051 (regTwo!33051 r!7292)))) b!6362313))

(declare-fun e!3863314 () Bool)

(assert (=> b!6361492 (= tp!1771491 e!3863314)))

(declare-fun b!6362331 () Bool)

(declare-fun tp!1771580 () Bool)

(declare-fun tp!1771581 () Bool)

(assert (=> b!6362331 (= e!3863314 (and tp!1771580 tp!1771581))))

(declare-fun b!6362329 () Bool)

(declare-fun tp!1771578 () Bool)

(declare-fun tp!1771582 () Bool)

(assert (=> b!6362329 (= e!3863314 (and tp!1771578 tp!1771582))))

(declare-fun b!6362330 () Bool)

(declare-fun tp!1771579 () Bool)

(assert (=> b!6362330 (= e!3863314 tp!1771579)))

(declare-fun b!6362328 () Bool)

(assert (=> b!6362328 (= e!3863314 tp_is_empty!41791)))

(assert (= (and b!6361492 ((_ is ElementMatch!16269) (regTwo!33051 (regTwo!33051 r!7292)))) b!6362328))

(assert (= (and b!6361492 ((_ is Concat!25114) (regTwo!33051 (regTwo!33051 r!7292)))) b!6362329))

(assert (= (and b!6361492 ((_ is Star!16269) (regTwo!33051 (regTwo!33051 r!7292)))) b!6362330))

(assert (= (and b!6361492 ((_ is Union!16269) (regTwo!33051 (regTwo!33051 r!7292)))) b!6362331))

(declare-fun e!3863315 () Bool)

(assert (=> b!6361468 (= tp!1771460 e!3863315)))

(declare-fun b!6362335 () Bool)

(declare-fun tp!1771585 () Bool)

(declare-fun tp!1771586 () Bool)

(assert (=> b!6362335 (= e!3863315 (and tp!1771585 tp!1771586))))

(declare-fun b!6362333 () Bool)

(declare-fun tp!1771583 () Bool)

(declare-fun tp!1771587 () Bool)

(assert (=> b!6362333 (= e!3863315 (and tp!1771583 tp!1771587))))

(declare-fun b!6362334 () Bool)

(declare-fun tp!1771584 () Bool)

(assert (=> b!6362334 (= e!3863315 tp!1771584)))

(declare-fun b!6362332 () Bool)

(assert (=> b!6362332 (= e!3863315 tp_is_empty!41791)))

(assert (= (and b!6361468 ((_ is ElementMatch!16269) (regOne!33050 (reg!16598 r!7292)))) b!6362332))

(assert (= (and b!6361468 ((_ is Concat!25114) (regOne!33050 (reg!16598 r!7292)))) b!6362333))

(assert (= (and b!6361468 ((_ is Star!16269) (regOne!33050 (reg!16598 r!7292)))) b!6362334))

(assert (= (and b!6361468 ((_ is Union!16269) (regOne!33050 (reg!16598 r!7292)))) b!6362335))

(declare-fun e!3863316 () Bool)

(assert (=> b!6361468 (= tp!1771464 e!3863316)))

(declare-fun b!6362339 () Bool)

(declare-fun tp!1771590 () Bool)

(declare-fun tp!1771591 () Bool)

(assert (=> b!6362339 (= e!3863316 (and tp!1771590 tp!1771591))))

(declare-fun b!6362337 () Bool)

(declare-fun tp!1771588 () Bool)

(declare-fun tp!1771592 () Bool)

(assert (=> b!6362337 (= e!3863316 (and tp!1771588 tp!1771592))))

(declare-fun b!6362338 () Bool)

(declare-fun tp!1771589 () Bool)

(assert (=> b!6362338 (= e!3863316 tp!1771589)))

(declare-fun b!6362336 () Bool)

(assert (=> b!6362336 (= e!3863316 tp_is_empty!41791)))

(assert (= (and b!6361468 ((_ is ElementMatch!16269) (regTwo!33050 (reg!16598 r!7292)))) b!6362336))

(assert (= (and b!6361468 ((_ is Concat!25114) (regTwo!33050 (reg!16598 r!7292)))) b!6362337))

(assert (= (and b!6361468 ((_ is Star!16269) (regTwo!33050 (reg!16598 r!7292)))) b!6362338))

(assert (= (and b!6361468 ((_ is Union!16269) (regTwo!33050 (reg!16598 r!7292)))) b!6362339))

(declare-fun e!3863317 () Bool)

(assert (=> b!6361477 (= tp!1771471 e!3863317)))

(declare-fun b!6362343 () Bool)

(declare-fun tp!1771595 () Bool)

(declare-fun tp!1771596 () Bool)

(assert (=> b!6362343 (= e!3863317 (and tp!1771595 tp!1771596))))

(declare-fun b!6362341 () Bool)

(declare-fun tp!1771593 () Bool)

(declare-fun tp!1771597 () Bool)

(assert (=> b!6362341 (= e!3863317 (and tp!1771593 tp!1771597))))

(declare-fun b!6362342 () Bool)

(declare-fun tp!1771594 () Bool)

(assert (=> b!6362342 (= e!3863317 tp!1771594)))

(declare-fun b!6362340 () Bool)

(assert (=> b!6362340 (= e!3863317 tp_is_empty!41791)))

(assert (= (and b!6361477 ((_ is ElementMatch!16269) (reg!16598 (regTwo!33050 r!7292)))) b!6362340))

(assert (= (and b!6361477 ((_ is Concat!25114) (reg!16598 (regTwo!33050 r!7292)))) b!6362341))

(assert (= (and b!6361477 ((_ is Star!16269) (reg!16598 (regTwo!33050 r!7292)))) b!6362342))

(assert (= (and b!6361477 ((_ is Union!16269) (reg!16598 (regTwo!33050 r!7292)))) b!6362343))

(declare-fun e!3863318 () Bool)

(assert (=> b!6361478 (= tp!1771472 e!3863318)))

(declare-fun b!6362347 () Bool)

(declare-fun tp!1771600 () Bool)

(declare-fun tp!1771601 () Bool)

(assert (=> b!6362347 (= e!3863318 (and tp!1771600 tp!1771601))))

(declare-fun b!6362345 () Bool)

(declare-fun tp!1771598 () Bool)

(declare-fun tp!1771602 () Bool)

(assert (=> b!6362345 (= e!3863318 (and tp!1771598 tp!1771602))))

(declare-fun b!6362346 () Bool)

(declare-fun tp!1771599 () Bool)

(assert (=> b!6362346 (= e!3863318 tp!1771599)))

(declare-fun b!6362344 () Bool)

(assert (=> b!6362344 (= e!3863318 tp_is_empty!41791)))

(assert (= (and b!6361478 ((_ is ElementMatch!16269) (regOne!33051 (regTwo!33050 r!7292)))) b!6362344))

(assert (= (and b!6361478 ((_ is Concat!25114) (regOne!33051 (regTwo!33050 r!7292)))) b!6362345))

(assert (= (and b!6361478 ((_ is Star!16269) (regOne!33051 (regTwo!33050 r!7292)))) b!6362346))

(assert (= (and b!6361478 ((_ is Union!16269) (regOne!33051 (regTwo!33050 r!7292)))) b!6362347))

(declare-fun e!3863319 () Bool)

(assert (=> b!6361478 (= tp!1771473 e!3863319)))

(declare-fun b!6362351 () Bool)

(declare-fun tp!1771605 () Bool)

(declare-fun tp!1771606 () Bool)

(assert (=> b!6362351 (= e!3863319 (and tp!1771605 tp!1771606))))

(declare-fun b!6362349 () Bool)

(declare-fun tp!1771603 () Bool)

(declare-fun tp!1771607 () Bool)

(assert (=> b!6362349 (= e!3863319 (and tp!1771603 tp!1771607))))

(declare-fun b!6362350 () Bool)

(declare-fun tp!1771604 () Bool)

(assert (=> b!6362350 (= e!3863319 tp!1771604)))

(declare-fun b!6362348 () Bool)

(assert (=> b!6362348 (= e!3863319 tp_is_empty!41791)))

(assert (= (and b!6361478 ((_ is ElementMatch!16269) (regTwo!33051 (regTwo!33050 r!7292)))) b!6362348))

(assert (= (and b!6361478 ((_ is Concat!25114) (regTwo!33051 (regTwo!33050 r!7292)))) b!6362349))

(assert (= (and b!6361478 ((_ is Star!16269) (regTwo!33051 (regTwo!33050 r!7292)))) b!6362350))

(assert (= (and b!6361478 ((_ is Union!16269) (regTwo!33051 (regTwo!33050 r!7292)))) b!6362351))

(declare-fun e!3863320 () Bool)

(assert (=> b!6361484 (= tp!1771481 e!3863320)))

(declare-fun b!6362355 () Bool)

(declare-fun tp!1771610 () Bool)

(declare-fun tp!1771611 () Bool)

(assert (=> b!6362355 (= e!3863320 (and tp!1771610 tp!1771611))))

(declare-fun b!6362353 () Bool)

(declare-fun tp!1771608 () Bool)

(declare-fun tp!1771612 () Bool)

(assert (=> b!6362353 (= e!3863320 (and tp!1771608 tp!1771612))))

(declare-fun b!6362354 () Bool)

(declare-fun tp!1771609 () Bool)

(assert (=> b!6362354 (= e!3863320 tp!1771609)))

(declare-fun b!6362352 () Bool)

(assert (=> b!6362352 (= e!3863320 tp_is_empty!41791)))

(assert (= (and b!6361484 ((_ is ElementMatch!16269) (h!71431 (exprs!6153 setElem!43328)))) b!6362352))

(assert (= (and b!6361484 ((_ is Concat!25114) (h!71431 (exprs!6153 setElem!43328)))) b!6362353))

(assert (= (and b!6361484 ((_ is Star!16269) (h!71431 (exprs!6153 setElem!43328)))) b!6362354))

(assert (= (and b!6361484 ((_ is Union!16269) (h!71431 (exprs!6153 setElem!43328)))) b!6362355))

(declare-fun b!6362356 () Bool)

(declare-fun e!3863321 () Bool)

(declare-fun tp!1771613 () Bool)

(declare-fun tp!1771614 () Bool)

(assert (=> b!6362356 (= e!3863321 (and tp!1771613 tp!1771614))))

(assert (=> b!6361484 (= tp!1771482 e!3863321)))

(assert (= (and b!6361484 ((_ is Cons!64983) (t!378699 (exprs!6153 setElem!43328)))) b!6362356))

(declare-fun e!3863328 () Bool)

(assert (=> b!6361469 (= tp!1771461 e!3863328)))

(declare-fun b!6362370 () Bool)

(declare-fun tp!1771617 () Bool)

(declare-fun tp!1771618 () Bool)

(assert (=> b!6362370 (= e!3863328 (and tp!1771617 tp!1771618))))

(declare-fun b!6362368 () Bool)

(declare-fun tp!1771615 () Bool)

(declare-fun tp!1771619 () Bool)

(assert (=> b!6362368 (= e!3863328 (and tp!1771615 tp!1771619))))

(declare-fun b!6362369 () Bool)

(declare-fun tp!1771616 () Bool)

(assert (=> b!6362369 (= e!3863328 tp!1771616)))

(declare-fun b!6362367 () Bool)

(assert (=> b!6362367 (= e!3863328 tp_is_empty!41791)))

(assert (= (and b!6361469 ((_ is ElementMatch!16269) (reg!16598 (reg!16598 r!7292)))) b!6362367))

(assert (= (and b!6361469 ((_ is Concat!25114) (reg!16598 (reg!16598 r!7292)))) b!6362368))

(assert (= (and b!6361469 ((_ is Star!16269) (reg!16598 (reg!16598 r!7292)))) b!6362369))

(assert (= (and b!6361469 ((_ is Union!16269) (reg!16598 (reg!16598 r!7292)))) b!6362370))

(declare-fun e!3863329 () Bool)

(assert (=> b!6361470 (= tp!1771462 e!3863329)))

(declare-fun b!6362374 () Bool)

(declare-fun tp!1771622 () Bool)

(declare-fun tp!1771623 () Bool)

(assert (=> b!6362374 (= e!3863329 (and tp!1771622 tp!1771623))))

(declare-fun b!6362372 () Bool)

(declare-fun tp!1771620 () Bool)

(declare-fun tp!1771624 () Bool)

(assert (=> b!6362372 (= e!3863329 (and tp!1771620 tp!1771624))))

(declare-fun b!6362373 () Bool)

(declare-fun tp!1771621 () Bool)

(assert (=> b!6362373 (= e!3863329 tp!1771621)))

(declare-fun b!6362371 () Bool)

(assert (=> b!6362371 (= e!3863329 tp_is_empty!41791)))

(assert (= (and b!6361470 ((_ is ElementMatch!16269) (regOne!33051 (reg!16598 r!7292)))) b!6362371))

(assert (= (and b!6361470 ((_ is Concat!25114) (regOne!33051 (reg!16598 r!7292)))) b!6362372))

(assert (= (and b!6361470 ((_ is Star!16269) (regOne!33051 (reg!16598 r!7292)))) b!6362373))

(assert (= (and b!6361470 ((_ is Union!16269) (regOne!33051 (reg!16598 r!7292)))) b!6362374))

(declare-fun e!3863330 () Bool)

(assert (=> b!6361470 (= tp!1771463 e!3863330)))

(declare-fun b!6362378 () Bool)

(declare-fun tp!1771627 () Bool)

(declare-fun tp!1771628 () Bool)

(assert (=> b!6362378 (= e!3863330 (and tp!1771627 tp!1771628))))

(declare-fun b!6362376 () Bool)

(declare-fun tp!1771625 () Bool)

(declare-fun tp!1771629 () Bool)

(assert (=> b!6362376 (= e!3863330 (and tp!1771625 tp!1771629))))

(declare-fun b!6362377 () Bool)

(declare-fun tp!1771626 () Bool)

(assert (=> b!6362377 (= e!3863330 tp!1771626)))

(declare-fun b!6362375 () Bool)

(assert (=> b!6362375 (= e!3863330 tp_is_empty!41791)))

(assert (= (and b!6361470 ((_ is ElementMatch!16269) (regTwo!33051 (reg!16598 r!7292)))) b!6362375))

(assert (= (and b!6361470 ((_ is Concat!25114) (regTwo!33051 (reg!16598 r!7292)))) b!6362376))

(assert (= (and b!6361470 ((_ is Star!16269) (regTwo!33051 (reg!16598 r!7292)))) b!6362377))

(assert (= (and b!6361470 ((_ is Union!16269) (regTwo!33051 (reg!16598 r!7292)))) b!6362378))

(declare-fun b!6362379 () Bool)

(declare-fun e!3863331 () Bool)

(declare-fun tp!1771630 () Bool)

(assert (=> b!6362379 (= e!3863331 (and tp_is_empty!41791 tp!1771630))))

(assert (=> b!6361456 (= tp!1771449 e!3863331)))

(assert (= (and b!6361456 ((_ is Cons!64982) (t!378698 (t!378698 s!2326)))) b!6362379))

(declare-fun e!3863332 () Bool)

(assert (=> b!6361486 (= tp!1771483 e!3863332)))

(declare-fun b!6362383 () Bool)

(declare-fun tp!1771633 () Bool)

(declare-fun tp!1771634 () Bool)

(assert (=> b!6362383 (= e!3863332 (and tp!1771633 tp!1771634))))

(declare-fun b!6362381 () Bool)

(declare-fun tp!1771631 () Bool)

(declare-fun tp!1771635 () Bool)

(assert (=> b!6362381 (= e!3863332 (and tp!1771631 tp!1771635))))

(declare-fun b!6362382 () Bool)

(declare-fun tp!1771632 () Bool)

(assert (=> b!6362382 (= e!3863332 tp!1771632)))

(declare-fun b!6362380 () Bool)

(assert (=> b!6362380 (= e!3863332 tp_is_empty!41791)))

(assert (= (and b!6361486 ((_ is ElementMatch!16269) (regOne!33050 (regOne!33051 r!7292)))) b!6362380))

(assert (= (and b!6361486 ((_ is Concat!25114) (regOne!33050 (regOne!33051 r!7292)))) b!6362381))

(assert (= (and b!6361486 ((_ is Star!16269) (regOne!33050 (regOne!33051 r!7292)))) b!6362382))

(assert (= (and b!6361486 ((_ is Union!16269) (regOne!33050 (regOne!33051 r!7292)))) b!6362383))

(declare-fun e!3863333 () Bool)

(assert (=> b!6361486 (= tp!1771487 e!3863333)))

(declare-fun b!6362387 () Bool)

(declare-fun tp!1771638 () Bool)

(declare-fun tp!1771639 () Bool)

(assert (=> b!6362387 (= e!3863333 (and tp!1771638 tp!1771639))))

(declare-fun b!6362385 () Bool)

(declare-fun tp!1771636 () Bool)

(declare-fun tp!1771640 () Bool)

(assert (=> b!6362385 (= e!3863333 (and tp!1771636 tp!1771640))))

(declare-fun b!6362386 () Bool)

(declare-fun tp!1771637 () Bool)

(assert (=> b!6362386 (= e!3863333 tp!1771637)))

(declare-fun b!6362384 () Bool)

(assert (=> b!6362384 (= e!3863333 tp_is_empty!41791)))

(assert (= (and b!6361486 ((_ is ElementMatch!16269) (regTwo!33050 (regOne!33051 r!7292)))) b!6362384))

(assert (= (and b!6361486 ((_ is Concat!25114) (regTwo!33050 (regOne!33051 r!7292)))) b!6362385))

(assert (= (and b!6361486 ((_ is Star!16269) (regTwo!33050 (regOne!33051 r!7292)))) b!6362386))

(assert (= (and b!6361486 ((_ is Union!16269) (regTwo!33050 (regOne!33051 r!7292)))) b!6362387))

(declare-fun e!3863334 () Bool)

(assert (=> b!6361472 (= tp!1771465 e!3863334)))

(declare-fun b!6362391 () Bool)

(declare-fun tp!1771643 () Bool)

(declare-fun tp!1771644 () Bool)

(assert (=> b!6362391 (= e!3863334 (and tp!1771643 tp!1771644))))

(declare-fun b!6362389 () Bool)

(declare-fun tp!1771641 () Bool)

(declare-fun tp!1771645 () Bool)

(assert (=> b!6362389 (= e!3863334 (and tp!1771641 tp!1771645))))

(declare-fun b!6362390 () Bool)

(declare-fun tp!1771642 () Bool)

(assert (=> b!6362390 (= e!3863334 tp!1771642)))

(declare-fun b!6362388 () Bool)

(assert (=> b!6362388 (= e!3863334 tp_is_empty!41791)))

(assert (= (and b!6361472 ((_ is ElementMatch!16269) (regOne!33050 (regOne!33050 r!7292)))) b!6362388))

(assert (= (and b!6361472 ((_ is Concat!25114) (regOne!33050 (regOne!33050 r!7292)))) b!6362389))

(assert (= (and b!6361472 ((_ is Star!16269) (regOne!33050 (regOne!33050 r!7292)))) b!6362390))

(assert (= (and b!6361472 ((_ is Union!16269) (regOne!33050 (regOne!33050 r!7292)))) b!6362391))

(declare-fun e!3863335 () Bool)

(assert (=> b!6361472 (= tp!1771469 e!3863335)))

(declare-fun b!6362395 () Bool)

(declare-fun tp!1771648 () Bool)

(declare-fun tp!1771649 () Bool)

(assert (=> b!6362395 (= e!3863335 (and tp!1771648 tp!1771649))))

(declare-fun b!6362393 () Bool)

(declare-fun tp!1771646 () Bool)

(declare-fun tp!1771650 () Bool)

(assert (=> b!6362393 (= e!3863335 (and tp!1771646 tp!1771650))))

(declare-fun b!6362394 () Bool)

(declare-fun tp!1771647 () Bool)

(assert (=> b!6362394 (= e!3863335 tp!1771647)))

(declare-fun b!6362392 () Bool)

(assert (=> b!6362392 (= e!3863335 tp_is_empty!41791)))

(assert (= (and b!6361472 ((_ is ElementMatch!16269) (regTwo!33050 (regOne!33050 r!7292)))) b!6362392))

(assert (= (and b!6361472 ((_ is Concat!25114) (regTwo!33050 (regOne!33050 r!7292)))) b!6362393))

(assert (= (and b!6361472 ((_ is Star!16269) (regTwo!33050 (regOne!33050 r!7292)))) b!6362394))

(assert (= (and b!6361472 ((_ is Union!16269) (regTwo!33050 (regOne!33050 r!7292)))) b!6362395))

(declare-fun e!3863336 () Bool)

(assert (=> b!6361487 (= tp!1771484 e!3863336)))

(declare-fun b!6362399 () Bool)

(declare-fun tp!1771653 () Bool)

(declare-fun tp!1771654 () Bool)

(assert (=> b!6362399 (= e!3863336 (and tp!1771653 tp!1771654))))

(declare-fun b!6362397 () Bool)

(declare-fun tp!1771651 () Bool)

(declare-fun tp!1771655 () Bool)

(assert (=> b!6362397 (= e!3863336 (and tp!1771651 tp!1771655))))

(declare-fun b!6362398 () Bool)

(declare-fun tp!1771652 () Bool)

(assert (=> b!6362398 (= e!3863336 tp!1771652)))

(declare-fun b!6362396 () Bool)

(assert (=> b!6362396 (= e!3863336 tp_is_empty!41791)))

(assert (= (and b!6361487 ((_ is ElementMatch!16269) (reg!16598 (regOne!33051 r!7292)))) b!6362396))

(assert (= (and b!6361487 ((_ is Concat!25114) (reg!16598 (regOne!33051 r!7292)))) b!6362397))

(assert (= (and b!6361487 ((_ is Star!16269) (reg!16598 (regOne!33051 r!7292)))) b!6362398))

(assert (= (and b!6361487 ((_ is Union!16269) (reg!16598 (regOne!33051 r!7292)))) b!6362399))

(declare-fun e!3863337 () Bool)

(assert (=> b!6361488 (= tp!1771485 e!3863337)))

(declare-fun b!6362403 () Bool)

(declare-fun tp!1771658 () Bool)

(declare-fun tp!1771659 () Bool)

(assert (=> b!6362403 (= e!3863337 (and tp!1771658 tp!1771659))))

(declare-fun b!6362401 () Bool)

(declare-fun tp!1771656 () Bool)

(declare-fun tp!1771660 () Bool)

(assert (=> b!6362401 (= e!3863337 (and tp!1771656 tp!1771660))))

(declare-fun b!6362402 () Bool)

(declare-fun tp!1771657 () Bool)

(assert (=> b!6362402 (= e!3863337 tp!1771657)))

(declare-fun b!6362400 () Bool)

(assert (=> b!6362400 (= e!3863337 tp_is_empty!41791)))

(assert (= (and b!6361488 ((_ is ElementMatch!16269) (regOne!33051 (regOne!33051 r!7292)))) b!6362400))

(assert (= (and b!6361488 ((_ is Concat!25114) (regOne!33051 (regOne!33051 r!7292)))) b!6362401))

(assert (= (and b!6361488 ((_ is Star!16269) (regOne!33051 (regOne!33051 r!7292)))) b!6362402))

(assert (= (and b!6361488 ((_ is Union!16269) (regOne!33051 (regOne!33051 r!7292)))) b!6362403))

(declare-fun e!3863338 () Bool)

(assert (=> b!6361488 (= tp!1771486 e!3863338)))

(declare-fun b!6362407 () Bool)

(declare-fun tp!1771663 () Bool)

(declare-fun tp!1771664 () Bool)

(assert (=> b!6362407 (= e!3863338 (and tp!1771663 tp!1771664))))

(declare-fun b!6362405 () Bool)

(declare-fun tp!1771661 () Bool)

(declare-fun tp!1771665 () Bool)

(assert (=> b!6362405 (= e!3863338 (and tp!1771661 tp!1771665))))

(declare-fun b!6362406 () Bool)

(declare-fun tp!1771662 () Bool)

(assert (=> b!6362406 (= e!3863338 tp!1771662)))

(declare-fun b!6362404 () Bool)

(assert (=> b!6362404 (= e!3863338 tp_is_empty!41791)))

(assert (= (and b!6361488 ((_ is ElementMatch!16269) (regTwo!33051 (regOne!33051 r!7292)))) b!6362404))

(assert (= (and b!6361488 ((_ is Concat!25114) (regTwo!33051 (regOne!33051 r!7292)))) b!6362405))

(assert (= (and b!6361488 ((_ is Star!16269) (regTwo!33051 (regOne!33051 r!7292)))) b!6362406))

(assert (= (and b!6361488 ((_ is Union!16269) (regTwo!33051 (regOne!33051 r!7292)))) b!6362407))

(declare-fun e!3863341 () Bool)

(assert (=> b!6361473 (= tp!1771466 e!3863341)))

(declare-fun b!6362411 () Bool)

(declare-fun tp!1771668 () Bool)

(declare-fun tp!1771669 () Bool)

(assert (=> b!6362411 (= e!3863341 (and tp!1771668 tp!1771669))))

(declare-fun b!6362409 () Bool)

(declare-fun tp!1771666 () Bool)

(declare-fun tp!1771670 () Bool)

(assert (=> b!6362409 (= e!3863341 (and tp!1771666 tp!1771670))))

(declare-fun b!6362410 () Bool)

(declare-fun tp!1771667 () Bool)

(assert (=> b!6362410 (= e!3863341 tp!1771667)))

(declare-fun b!6362408 () Bool)

(assert (=> b!6362408 (= e!3863341 tp_is_empty!41791)))

(assert (= (and b!6361473 ((_ is ElementMatch!16269) (reg!16598 (regOne!33050 r!7292)))) b!6362408))

(assert (= (and b!6361473 ((_ is Concat!25114) (reg!16598 (regOne!33050 r!7292)))) b!6362409))

(assert (= (and b!6361473 ((_ is Star!16269) (reg!16598 (regOne!33050 r!7292)))) b!6362410))

(assert (= (and b!6361473 ((_ is Union!16269) (reg!16598 (regOne!33050 r!7292)))) b!6362411))

(declare-fun b_lambda!241839 () Bool)

(assert (= b_lambda!241825 (or d!1995538 b_lambda!241839)))

(declare-fun bs!1594233 () Bool)

(declare-fun d!1995944 () Bool)

(assert (= bs!1594233 (and d!1995944 d!1995538)))

(assert (=> bs!1594233 (= (dynLambda!25777 lambda!350401 (h!71431 lt!2366874)) (validRegex!8005 (h!71431 lt!2366874)))))

(declare-fun m!7167536 () Bool)

(assert (=> bs!1594233 m!7167536))

(assert (=> b!6361964 d!1995944))

(declare-fun b_lambda!241841 () Bool)

(assert (= b_lambda!241819 (or d!1995550 b_lambda!241841)))

(declare-fun bs!1594234 () Bool)

(declare-fun d!1995948 () Bool)

(assert (= bs!1594234 (and d!1995948 d!1995550)))

(assert (=> bs!1594234 (= (dynLambda!25777 lambda!350408 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792))))) (validRegex!8005 (h!71431 (exprs!6153 (Context!11307 (Cons!64983 (reg!16598 (regOne!33050 r!7292)) lt!2366792))))))))

(declare-fun m!7167540 () Bool)

(assert (=> bs!1594234 m!7167540))

(assert (=> b!6361581 d!1995948))

(declare-fun b_lambda!241843 () Bool)

(assert (= b_lambda!241823 (or d!1995540 b_lambda!241843)))

(declare-fun bs!1594235 () Bool)

(declare-fun d!1995950 () Bool)

(assert (= bs!1594235 (and d!1995950 d!1995540)))

(assert (=> bs!1594235 (= (dynLambda!25777 lambda!350404 (h!71431 (exprs!6153 (h!71432 zl!343)))) (validRegex!8005 (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(declare-fun m!7167542 () Bool)

(assert (=> bs!1594235 m!7167542))

(assert (=> b!6361719 d!1995950))

(declare-fun b_lambda!241845 () Bool)

(assert (= b_lambda!241821 (or d!1995542 b_lambda!241845)))

(declare-fun bs!1594236 () Bool)

(declare-fun d!1995952 () Bool)

(assert (= bs!1594236 (and d!1995952 d!1995542)))

(assert (=> bs!1594236 (= (dynLambda!25777 lambda!350407 (h!71431 (exprs!6153 (h!71432 zl!343)))) (validRegex!8005 (h!71431 (exprs!6153 (h!71432 zl!343)))))))

(assert (=> bs!1594236 m!7167542))

(assert (=> b!6361600 d!1995952))

(declare-fun b_lambda!241847 () Bool)

(assert (= b_lambda!241829 (or d!1995554 b_lambda!241847)))

(declare-fun bs!1594237 () Bool)

(declare-fun d!1995954 () Bool)

(assert (= bs!1594237 (and d!1995954 d!1995554)))

(assert (=> bs!1594237 (= (dynLambda!25777 lambda!350409 (h!71431 (exprs!6153 setElem!43328))) (validRegex!8005 (h!71431 (exprs!6153 setElem!43328))))))

(declare-fun m!7167546 () Bool)

(assert (=> bs!1594237 m!7167546))

(assert (=> b!6361998 d!1995954))

(declare-fun b_lambda!241849 () Bool)

(assert (= b_lambda!241827 (or d!1995536 b_lambda!241849)))

(declare-fun bs!1594238 () Bool)

(declare-fun d!1995956 () Bool)

(assert (= bs!1594238 (and d!1995956 d!1995536)))

(assert (=> bs!1594238 (= (dynLambda!25777 lambda!350398 (h!71431 (unfocusZipperList!1690 zl!343))) (validRegex!8005 (h!71431 (unfocusZipperList!1690 zl!343))))))

(declare-fun m!7167550 () Bool)

(assert (=> bs!1594238 m!7167550))

(assert (=> b!6361982 d!1995956))

(declare-fun b_lambda!241851 () Bool)

(assert (= b_lambda!241831 (or b!6360754 b_lambda!241851)))

(assert (=> d!1995820 d!1995558))

(check-sat (not d!1995700) (not b!6361922) (not b!6362277) (not bm!542854) (not b!6362258) (not b!6362379) (not b!6362403) (not b!6361643) (not b!6362385) (not d!1995818) (not b!6362240) (not b!6362406) (not d!1995664) (not b!6361582) (not bs!1594237) (not d!1995680) (not b!6362058) (not bm!542856) (not b!6362295) (not b!6362383) (not bm!542744) (not b!6361641) (not d!1995846) (not b!6361965) (not b!6362293) (not d!1995848) (not b!6362312) (not b!6362292) (not b!6361707) (not b!6361558) (not b!6362303) (not setNonEmpty!43339) (not b!6362351) (not b!6362296) (not b_lambda!241843) (not b!6362286) (not b!6362287) (not b!6362376) (not d!1995688) (not bs!1594238) (not b!6361626) (not b!6362333) (not b!6362304) (not b!6361875) (not b_lambda!241839) (not b!6361907) (not bm!542893) (not b!6361920) (not b!6361720) (not b!6362398) (not b!6361781) (not b!6361708) (not d!1995708) (not b!6362301) (not d!1995920) (not b!6361923) (not b!6362374) (not b!6361894) (not b!6361640) (not b!6361623) (not b!6362059) (not bm!542845) (not b!6361630) (not b!6362051) (not b!6362266) (not d!1995886) (not bm!542749) (not bs!1594234) (not b!6362347) (not b!6361962) (not b!6361770) (not b!6362311) (not b!6361919) (not b!6362255) (not b!6362338) (not bm!542862) (not b!6361610) (not b!6361660) (not b!6361776) (not b!6362274) (not b!6362297) (not bm!542784) (not b!6362070) (not bm!542898) (not d!1995888) (not bm!542885) (not bm!542779) (not d!1995718) (not b!6362334) (not b!6361908) (not bm!542894) (not bm!542758) (not b!6361893) (not bm!542844) (not b!6362369) (not b!6362349) (not b!6361663) (not d!1995922) (not b!6362307) (not b!6361904) (not b!6362308) (not b_lambda!241849) (not b!6362389) (not b!6362289) (not b!6362329) (not b!6361999) (not d!1995628) (not b!6361873) (not d!1995926) (not b!6362123) (not d!1995748) (not b!6362356) (not b!6362353) (not b!6361563) (not bm!542860) (not b!6361890) (not b!6362291) (not bm!542753) (not b!6362341) (not bm!542739) (not bm!542754) (not b!6362355) (not bm!542740) (not b!6362409) (not b!6361910) (not b!6362083) (not b!6362390) (not bm!542774) (not b!6362256) (not bm!542835) (not b!6361924) (not b!6361551) (not bm!542808) (not b!6361913) (not b!6362343) (not b!6362378) (not b!6362372) (not d!1995702) (not b!6362195) (not d!1995820) (not b!6362386) (not d!1995836) (not b!6361637) (not b!6362330) (not bm!542886) (not bm!542863) (not bm!542829) (not b_lambda!241851) (not bm!542750) (not bm!542747) (not d!1995844) (not b_lambda!241847) (not b!6362069) (not b!6362370) (not b!6362252) (not b!6362346) (not bm!542807) (not b!6361980) (not bm!542778) (not b!6361921) (not b!6362395) (not d!1995776) (not bm!542769) (not b!6362354) (not b!6361729) (not b!6362381) (not b!6362071) (not d!1995760) (not b!6362272) (not b!6361583) (not b!6362218) (not bm!542755) (not bs!1594236) tp_is_empty!41791 (not d!1995662) (not b!6362377) (not b!6361631) (not bm!542762) (not b!6361717) (not b!6362262) (not b!6362387) (not b!6361670) (not bm!542783) (not bm!542884) (not b!6362263) (not bm!542897) (not b!6362043) (not b!6362273) (not bm!542846) (not b!6361874) (not d!1995740) (not d!1995642) (not b!6362074) (not b!6361773) (not d!1995850) (not b!6362335) (not b_lambda!241811) (not b!6362337) (not b!6361760) (not b!6362278) (not b!6361624) (not bs!1594235) (not d!1995578) (not b!6362054) (not b!6362339) (not b!6362368) (not b!6362052) (not b!6361905) (not d!1995694) (not b!6362399) (not bm!542834) (not bm!542759) (not b_lambda!241841) (not b!6362305) (not b!6361666) (not b!6362279) (not b!6362407) (not b!6361774) (not b!6361671) (not b!6362088) (not b!6361983) (not b!6362270) (not b!6361601) (not b!6362300) (not b!6361596) (not bm!542775) (not setNonEmpty!43341) (not b!6362382) (not b!6361648) (not d!1995880) (not b!6362299) (not b!6362271) (not d!1995754) (not b!6361657) (not b!6362197) (not b!6362411) (not b!6362331) (not b!6361647) (not b!6362405) (not b!6361620) (not b!6362393) (not b!6362231) (not b!6362410) (not b!6362391) (not b!6362342) (not bm!542810) (not b!6362268) (not d!1995668) (not b!6362055) (not b!6361664) (not b!6362397) (not b!6362373) (not b!6362050) (not b!6362229) (not b!6362401) (not d!1995656) (not d!1995756) (not b!6361912) (not bm!542745) (not b!6362241) (not bm!542830) (not d!1995696) (not b!6361681) (not b!6362402) (not b!6362267) (not d!1995600) (not b!6362345) (not bm!542847) (not bm!542811) (not b!6362288) (not b!6361943) (not b!6362239) (not b!6361762) (not d!1995890) (not bm!542891) (not b!6362042) (not d!1995714) (not b!6362072) (not d!1995784) (not b_lambda!241845) (not bs!1594233) (not bm!542805) (not d!1995738) (not bm!542761) (not b!6362313) (not b!6362394) (not bm!542857) (not b!6361780) (not b!6361916) (not bm!542770) (not b!6362350) (not d!1995594) (not b!6361739) (not d!1995908) (not b!6362108) (not bm!542772) (not b!6362309) (not d!1995816) (not b!6362076) (not bm!542756))
(check-sat)
