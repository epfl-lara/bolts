; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!628490 () Bool)

(assert start!628490)

(declare-fun b!6343279 () Bool)

(assert (=> b!6343279 true))

(assert (=> b!6343279 true))

(declare-fun lambda!348546 () Int)

(declare-fun lambda!348545 () Int)

(assert (=> b!6343279 (not (= lambda!348546 lambda!348545))))

(assert (=> b!6343279 true))

(assert (=> b!6343279 true))

(declare-fun b!6343256 () Bool)

(assert (=> b!6343256 true))

(declare-fun b!6343253 () Bool)

(declare-fun res!2610296 () Bool)

(declare-fun e!3852787 () Bool)

(assert (=> b!6343253 (=> res!2610296 e!3852787)))

(declare-datatypes ((C!32764 0))(
  ( (C!32765 (val!26084 Int)) )
))
(declare-datatypes ((Regex!16247 0))(
  ( (ElementMatch!16247 (c!1153432 C!32764)) (Concat!25092 (regOne!33006 Regex!16247) (regTwo!33006 Regex!16247)) (EmptyExpr!16247) (Star!16247 (reg!16576 Regex!16247)) (EmptyLang!16247) (Union!16247 (regOne!33007 Regex!16247) (regTwo!33007 Regex!16247)) )
))
(declare-datatypes ((List!65040 0))(
  ( (Nil!64916) (Cons!64916 (h!71364 Regex!16247) (t!378628 List!65040)) )
))
(declare-datatypes ((Context!11262 0))(
  ( (Context!11263 (exprs!6131 List!65040)) )
))
(declare-fun lt!2362853 () Context!11262)

(declare-datatypes ((List!65041 0))(
  ( (Nil!64917) (Cons!64917 (h!71365 Context!11262) (t!378629 List!65041)) )
))
(declare-fun zl!343 () List!65041)

(declare-fun contextDepthTotal!356 (Context!11262) Int)

(assert (=> b!6343253 (= res!2610296 (>= (contextDepthTotal!356 lt!2362853) (contextDepthTotal!356 (h!71365 zl!343))))))

(declare-fun b!6343254 () Bool)

(declare-fun e!3852794 () Bool)

(declare-fun tp!1768794 () Bool)

(assert (=> b!6343254 (= e!3852794 tp!1768794)))

(declare-fun b!6343255 () Bool)

(declare-fun res!2610297 () Bool)

(declare-fun e!3852782 () Bool)

(assert (=> b!6343255 (=> res!2610297 e!3852782)))

(declare-fun r!7292 () Regex!16247)

(get-info :version)

(assert (=> b!6343255 (= res!2610297 (or ((_ is EmptyExpr!16247) r!7292) ((_ is EmptyLang!16247) r!7292) ((_ is ElementMatch!16247) r!7292) ((_ is Union!16247) r!7292) (not ((_ is Concat!25092) r!7292))))))

(declare-fun e!3852781 () Bool)

(declare-fun e!3852779 () Bool)

(assert (=> b!6343256 (= e!3852781 e!3852779)))

(declare-fun res!2610298 () Bool)

(assert (=> b!6343256 (=> res!2610298 e!3852779)))

(declare-datatypes ((List!65042 0))(
  ( (Nil!64918) (Cons!64918 (h!71366 C!32764) (t!378630 List!65042)) )
))
(declare-fun s!2326 () List!65042)

(assert (=> b!6343256 (= res!2610298 (or (and ((_ is ElementMatch!16247) (regOne!33006 r!7292)) (= (c!1153432 (regOne!33006 r!7292)) (h!71366 s!2326))) ((_ is Union!16247) (regOne!33006 r!7292))))))

(declare-datatypes ((Unit!158319 0))(
  ( (Unit!158320) )
))
(declare-fun lt!2362870 () Unit!158319)

(declare-fun e!3852780 () Unit!158319)

(assert (=> b!6343256 (= lt!2362870 e!3852780)))

(declare-fun c!1153431 () Bool)

(declare-fun nullable!6240 (Regex!16247) Bool)

(assert (=> b!6343256 (= c!1153431 (nullable!6240 (h!71364 (exprs!6131 (h!71365 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11262))

(declare-fun lambda!348547 () Int)

(declare-fun flatMap!1752 ((InoxSet Context!11262) Int) (InoxSet Context!11262))

(declare-fun derivationStepZipperUp!1421 (Context!11262 C!32764) (InoxSet Context!11262))

(assert (=> b!6343256 (= (flatMap!1752 z!1189 lambda!348547) (derivationStepZipperUp!1421 (h!71365 zl!343) (h!71366 s!2326)))))

(declare-fun lt!2362863 () Unit!158319)

(declare-fun lemmaFlatMapOnSingletonSet!1278 ((InoxSet Context!11262) Context!11262 Int) Unit!158319)

(assert (=> b!6343256 (= lt!2362863 (lemmaFlatMapOnSingletonSet!1278 z!1189 (h!71365 zl!343) lambda!348547))))

(declare-fun lt!2362847 () (InoxSet Context!11262))

(declare-fun lt!2362872 () Context!11262)

(assert (=> b!6343256 (= lt!2362847 (derivationStepZipperUp!1421 lt!2362872 (h!71366 s!2326)))))

(declare-fun lt!2362857 () (InoxSet Context!11262))

(declare-fun derivationStepZipperDown!1495 (Regex!16247 Context!11262 C!32764) (InoxSet Context!11262))

(assert (=> b!6343256 (= lt!2362857 (derivationStepZipperDown!1495 (h!71364 (exprs!6131 (h!71365 zl!343))) lt!2362872 (h!71366 s!2326)))))

(assert (=> b!6343256 (= lt!2362872 (Context!11263 (t!378628 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun lt!2362866 () (InoxSet Context!11262))

(assert (=> b!6343256 (= lt!2362866 (derivationStepZipperUp!1421 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343))))) (h!71366 s!2326)))))

(declare-fun b!6343257 () Bool)

(declare-fun Unit!158321 () Unit!158319)

(assert (=> b!6343257 (= e!3852780 Unit!158321)))

(declare-fun lt!2362859 () Unit!158319)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1078 ((InoxSet Context!11262) (InoxSet Context!11262) List!65042) Unit!158319)

(assert (=> b!6343257 (= lt!2362859 (lemmaZipperConcatMatchesSameAsBothZippers!1078 lt!2362857 lt!2362847 (t!378630 s!2326)))))

(declare-fun res!2610314 () Bool)

(declare-fun matchZipper!2259 ((InoxSet Context!11262) List!65042) Bool)

(assert (=> b!6343257 (= res!2610314 (matchZipper!2259 lt!2362857 (t!378630 s!2326)))))

(declare-fun e!3852793 () Bool)

(assert (=> b!6343257 (=> res!2610314 e!3852793)))

(assert (=> b!6343257 (= (matchZipper!2259 ((_ map or) lt!2362857 lt!2362847) (t!378630 s!2326)) e!3852793)))

(declare-fun b!6343258 () Bool)

(declare-fun e!3852784 () Bool)

(assert (=> b!6343258 (= e!3852787 e!3852784)))

(declare-fun res!2610306 () Bool)

(assert (=> b!6343258 (=> res!2610306 e!3852784)))

(declare-fun lt!2362849 () List!65041)

(declare-fun zipperDepthTotal!384 (List!65041) Int)

(assert (=> b!6343258 (= res!2610306 (>= (zipperDepthTotal!384 lt!2362849) (zipperDepthTotal!384 zl!343)))))

(assert (=> b!6343258 (= lt!2362849 (Cons!64917 lt!2362853 Nil!64917))))

(declare-fun b!6343259 () Bool)

(declare-fun res!2610310 () Bool)

(assert (=> b!6343259 (=> res!2610310 e!3852782)))

(declare-fun isEmpty!36997 (List!65041) Bool)

(assert (=> b!6343259 (= res!2610310 (not (isEmpty!36997 (t!378629 zl!343))))))

(declare-fun b!6343260 () Bool)

(declare-fun e!3852786 () Bool)

(declare-fun tp_is_empty!41747 () Bool)

(assert (=> b!6343260 (= e!3852786 tp_is_empty!41747)))

(declare-fun b!6343261 () Bool)

(declare-fun e!3852788 () Bool)

(declare-fun tp!1768792 () Bool)

(assert (=> b!6343261 (= e!3852788 (and tp_is_empty!41747 tp!1768792))))

(declare-fun b!6343262 () Bool)

(declare-fun e!3852792 () Bool)

(assert (=> b!6343262 (= e!3852792 (nullable!6240 (regOne!33006 (regOne!33006 r!7292))))))

(declare-fun b!6343263 () Bool)

(declare-fun e!3852785 () Bool)

(assert (=> b!6343263 (= e!3852785 (not e!3852782))))

(declare-fun res!2610295 () Bool)

(assert (=> b!6343263 (=> res!2610295 e!3852782)))

(assert (=> b!6343263 (= res!2610295 (not ((_ is Cons!64917) zl!343)))))

(declare-fun lt!2362854 () Bool)

(declare-fun matchRSpec!3348 (Regex!16247 List!65042) Bool)

(assert (=> b!6343263 (= lt!2362854 (matchRSpec!3348 r!7292 s!2326))))

(declare-fun matchR!8430 (Regex!16247 List!65042) Bool)

(assert (=> b!6343263 (= lt!2362854 (matchR!8430 r!7292 s!2326))))

(declare-fun lt!2362850 () Unit!158319)

(declare-fun mainMatchTheorem!3348 (Regex!16247 List!65042) Unit!158319)

(assert (=> b!6343263 (= lt!2362850 (mainMatchTheorem!3348 r!7292 s!2326))))

(declare-fun setRes!43176 () Bool)

(declare-fun e!3852790 () Bool)

(declare-fun setElem!43176 () Context!11262)

(declare-fun setNonEmpty!43176 () Bool)

(declare-fun tp!1768797 () Bool)

(declare-fun inv!83864 (Context!11262) Bool)

(assert (=> setNonEmpty!43176 (= setRes!43176 (and tp!1768797 (inv!83864 setElem!43176) e!3852790))))

(declare-fun setRest!43176 () (InoxSet Context!11262))

(assert (=> setNonEmpty!43176 (= z!1189 ((_ map or) (store ((as const (Array Context!11262 Bool)) false) setElem!43176 true) setRest!43176))))

(declare-fun b!6343264 () Bool)

(declare-fun tp!1768790 () Bool)

(assert (=> b!6343264 (= e!3852786 tp!1768790)))

(declare-fun b!6343265 () Bool)

(declare-fun res!2610312 () Bool)

(assert (=> b!6343265 (=> res!2610312 e!3852781)))

(declare-fun isEmpty!36998 (List!65040) Bool)

(assert (=> b!6343265 (= res!2610312 (isEmpty!36998 (t!378628 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6343266 () Bool)

(declare-fun e!3852778 () Bool)

(assert (=> b!6343266 (= e!3852778 e!3852787)))

(declare-fun res!2610292 () Bool)

(assert (=> b!6343266 (=> res!2610292 e!3852787)))

(declare-fun lt!2362856 () (InoxSet Context!11262))

(declare-fun lt!2362869 () (InoxSet Context!11262))

(assert (=> b!6343266 (= res!2610292 (not (= lt!2362856 lt!2362869)))))

(declare-fun lt!2362865 () (InoxSet Context!11262))

(assert (=> b!6343266 (= (flatMap!1752 lt!2362865 lambda!348547) (derivationStepZipperUp!1421 lt!2362853 (h!71366 s!2326)))))

(declare-fun lt!2362864 () Unit!158319)

(assert (=> b!6343266 (= lt!2362864 (lemmaFlatMapOnSingletonSet!1278 lt!2362865 lt!2362853 lambda!348547))))

(declare-fun lt!2362846 () (InoxSet Context!11262))

(assert (=> b!6343266 (= lt!2362846 (derivationStepZipperUp!1421 lt!2362853 (h!71366 s!2326)))))

(declare-fun derivationStepZipper!2213 ((InoxSet Context!11262) C!32764) (InoxSet Context!11262))

(assert (=> b!6343266 (= lt!2362856 (derivationStepZipper!2213 lt!2362865 (h!71366 s!2326)))))

(assert (=> b!6343266 (= lt!2362865 (store ((as const (Array Context!11262 Bool)) false) lt!2362853 true))))

(declare-fun lt!2362861 () List!65040)

(assert (=> b!6343266 (= lt!2362853 (Context!11263 lt!2362861))))

(declare-fun lt!2362862 () List!65040)

(assert (=> b!6343266 (= lt!2362861 (Cons!64916 (regOne!33006 (regOne!33006 r!7292)) lt!2362862))))

(declare-fun b!6343267 () Bool)

(declare-fun tp!1768798 () Bool)

(assert (=> b!6343267 (= e!3852790 tp!1768798)))

(declare-fun setIsEmpty!43176 () Bool)

(assert (=> setIsEmpty!43176 setRes!43176))

(declare-fun b!6343269 () Bool)

(declare-fun res!2610293 () Bool)

(assert (=> b!6343269 (=> res!2610293 e!3852779)))

(assert (=> b!6343269 (= res!2610293 (not ((_ is Concat!25092) (regOne!33006 r!7292))))))

(declare-fun b!6343270 () Bool)

(declare-fun res!2610316 () Bool)

(assert (=> b!6343270 (=> res!2610316 e!3852782)))

(declare-fun generalisedConcat!1844 (List!65040) Regex!16247)

(assert (=> b!6343270 (= res!2610316 (not (= r!7292 (generalisedConcat!1844 (exprs!6131 (h!71365 zl!343))))))))

(declare-fun b!6343271 () Bool)

(declare-fun res!2610299 () Bool)

(assert (=> b!6343271 (=> (not res!2610299) (not e!3852785))))

(declare-fun unfocusZipper!1989 (List!65041) Regex!16247)

(assert (=> b!6343271 (= res!2610299 (= r!7292 (unfocusZipper!1989 zl!343)))))

(declare-fun b!6343272 () Bool)

(declare-fun e!3852783 () Bool)

(declare-fun lt!2362858 () Regex!16247)

(declare-fun validRegex!7983 (Regex!16247) Bool)

(assert (=> b!6343272 (= e!3852783 (validRegex!7983 lt!2362858))))

(declare-fun b!6343273 () Bool)

(declare-fun e!3852791 () Bool)

(assert (=> b!6343273 (= e!3852779 e!3852791)))

(declare-fun res!2610308 () Bool)

(assert (=> b!6343273 (=> res!2610308 e!3852791)))

(assert (=> b!6343273 (= res!2610308 (not (= lt!2362857 lt!2362869)))))

(assert (=> b!6343273 (= lt!2362869 (derivationStepZipperDown!1495 (regOne!33006 (regOne!33006 r!7292)) (Context!11263 lt!2362862) (h!71366 s!2326)))))

(assert (=> b!6343273 (= lt!2362862 (Cons!64916 (regTwo!33006 (regOne!33006 r!7292)) (t!378628 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6343274 () Bool)

(declare-fun tp!1768791 () Bool)

(declare-fun tp!1768796 () Bool)

(assert (=> b!6343274 (= e!3852786 (and tp!1768791 tp!1768796))))

(declare-fun b!6343275 () Bool)

(declare-fun Unit!158322 () Unit!158319)

(assert (=> b!6343275 (= e!3852780 Unit!158322)))

(declare-fun b!6343276 () Bool)

(declare-fun res!2610305 () Bool)

(assert (=> b!6343276 (=> res!2610305 e!3852779)))

(assert (=> b!6343276 (= res!2610305 e!3852792)))

(declare-fun res!2610301 () Bool)

(assert (=> b!6343276 (=> (not res!2610301) (not e!3852792))))

(assert (=> b!6343276 (= res!2610301 ((_ is Concat!25092) (regOne!33006 r!7292)))))

(declare-fun b!6343277 () Bool)

(assert (=> b!6343277 (= e!3852791 e!3852778)))

(declare-fun res!2610304 () Bool)

(assert (=> b!6343277 (=> res!2610304 e!3852778)))

(declare-fun lt!2362851 () Bool)

(assert (=> b!6343277 (= res!2610304 (not (= lt!2362851 (matchZipper!2259 lt!2362869 (t!378630 s!2326)))))))

(assert (=> b!6343277 (= lt!2362851 (matchZipper!2259 lt!2362857 (t!378630 s!2326)))))

(declare-fun b!6343278 () Bool)

(declare-fun res!2610313 () Bool)

(assert (=> b!6343278 (=> res!2610313 e!3852782)))

(declare-fun generalisedUnion!2091 (List!65040) Regex!16247)

(declare-fun unfocusZipperList!1668 (List!65041) List!65040)

(assert (=> b!6343278 (= res!2610313 (not (= r!7292 (generalisedUnion!2091 (unfocusZipperList!1668 zl!343)))))))

(assert (=> b!6343279 (= e!3852782 e!3852781)))

(declare-fun res!2610311 () Bool)

(assert (=> b!6343279 (=> res!2610311 e!3852781)))

(declare-fun lt!2362860 () Bool)

(assert (=> b!6343279 (= res!2610311 (or (not (= lt!2362854 lt!2362860)) ((_ is Nil!64918) s!2326)))))

(declare-fun Exists!3317 (Int) Bool)

(assert (=> b!6343279 (= (Exists!3317 lambda!348545) (Exists!3317 lambda!348546))))

(declare-fun lt!2362852 () Unit!158319)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1854 (Regex!16247 Regex!16247 List!65042) Unit!158319)

(assert (=> b!6343279 (= lt!2362852 (lemmaExistCutMatchRandMatchRSpecEquivalent!1854 (regOne!33006 r!7292) (regTwo!33006 r!7292) s!2326))))

(assert (=> b!6343279 (= lt!2362860 (Exists!3317 lambda!348545))))

(declare-datatypes ((tuple2!66452 0))(
  ( (tuple2!66453 (_1!36529 List!65042) (_2!36529 List!65042)) )
))
(declare-datatypes ((Option!16138 0))(
  ( (None!16137) (Some!16137 (v!52306 tuple2!66452)) )
))
(declare-fun isDefined!12841 (Option!16138) Bool)

(declare-fun findConcatSeparation!2552 (Regex!16247 Regex!16247 List!65042 List!65042 List!65042) Option!16138)

(assert (=> b!6343279 (= lt!2362860 (isDefined!12841 (findConcatSeparation!2552 (regOne!33006 r!7292) (regTwo!33006 r!7292) Nil!64918 s!2326 s!2326)))))

(declare-fun lt!2362871 () Unit!158319)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2316 (Regex!16247 Regex!16247 List!65042) Unit!158319)

(assert (=> b!6343279 (= lt!2362871 (lemmaFindConcatSeparationEquivalentToExists!2316 (regOne!33006 r!7292) (regTwo!33006 r!7292) s!2326))))

(declare-fun b!6343280 () Bool)

(declare-fun res!2610303 () Bool)

(assert (=> b!6343280 (=> res!2610303 e!3852782)))

(assert (=> b!6343280 (= res!2610303 (not ((_ is Cons!64916) (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6343281 () Bool)

(declare-fun res!2610300 () Bool)

(assert (=> b!6343281 (=> (not res!2610300) (not e!3852785))))

(declare-fun toList!10031 ((InoxSet Context!11262)) List!65041)

(assert (=> b!6343281 (= res!2610300 (= (toList!10031 z!1189) zl!343))))

(declare-fun b!6343282 () Bool)

(assert (=> b!6343282 (= e!3852784 e!3852783)))

(declare-fun res!2610307 () Bool)

(assert (=> b!6343282 (=> res!2610307 e!3852783)))

(assert (=> b!6343282 (= res!2610307 (not (validRegex!7983 (regOne!33006 (regOne!33006 r!7292)))))))

(assert (=> b!6343282 (= lt!2362858 (generalisedConcat!1844 lt!2362862))))

(declare-fun lt!2362855 () Bool)

(declare-fun lt!2362848 () Regex!16247)

(assert (=> b!6343282 (= lt!2362855 (matchRSpec!3348 lt!2362848 s!2326))))

(declare-fun lt!2362867 () Unit!158319)

(assert (=> b!6343282 (= lt!2362867 (mainMatchTheorem!3348 lt!2362848 s!2326))))

(assert (=> b!6343282 (= lt!2362855 (matchZipper!2259 lt!2362865 s!2326))))

(assert (=> b!6343282 (= lt!2362855 (matchR!8430 lt!2362848 s!2326))))

(declare-fun lt!2362868 () Unit!158319)

(declare-fun theoremZipperRegexEquiv!789 ((InoxSet Context!11262) List!65041 Regex!16247 List!65042) Unit!158319)

(assert (=> b!6343282 (= lt!2362868 (theoremZipperRegexEquiv!789 lt!2362865 lt!2362849 lt!2362848 s!2326))))

(assert (=> b!6343282 (= lt!2362848 (generalisedConcat!1844 lt!2362861))))

(declare-fun tp!1768795 () Bool)

(declare-fun e!3852789 () Bool)

(declare-fun b!6343283 () Bool)

(assert (=> b!6343283 (= e!3852789 (and (inv!83864 (h!71365 zl!343)) e!3852794 tp!1768795))))

(declare-fun b!6343268 () Bool)

(assert (=> b!6343268 (= e!3852793 (matchZipper!2259 lt!2362847 (t!378630 s!2326)))))

(declare-fun res!2610302 () Bool)

(assert (=> start!628490 (=> (not res!2610302) (not e!3852785))))

(assert (=> start!628490 (= res!2610302 (validRegex!7983 r!7292))))

(assert (=> start!628490 e!3852785))

(assert (=> start!628490 e!3852786))

(declare-fun condSetEmpty!43176 () Bool)

(assert (=> start!628490 (= condSetEmpty!43176 (= z!1189 ((as const (Array Context!11262 Bool)) false)))))

(assert (=> start!628490 setRes!43176))

(assert (=> start!628490 e!3852789))

(assert (=> start!628490 e!3852788))

(declare-fun b!6343284 () Bool)

(declare-fun res!2610309 () Bool)

(assert (=> b!6343284 (=> res!2610309 e!3852787)))

(assert (=> b!6343284 (= res!2610309 (not (= (exprs!6131 (h!71365 zl!343)) (Cons!64916 (Concat!25092 (regOne!33006 (regOne!33006 r!7292)) (regTwo!33006 (regOne!33006 r!7292))) (t!378628 (exprs!6131 (h!71365 zl!343)))))))))

(declare-fun b!6343285 () Bool)

(declare-fun res!2610294 () Bool)

(assert (=> b!6343285 (=> res!2610294 e!3852784)))

(declare-fun zipperDepth!354 (List!65041) Int)

(assert (=> b!6343285 (= res!2610294 (> (zipperDepth!354 lt!2362849) (zipperDepth!354 zl!343)))))

(declare-fun b!6343286 () Bool)

(declare-fun res!2610315 () Bool)

(assert (=> b!6343286 (=> res!2610315 e!3852787)))

(assert (=> b!6343286 (= res!2610315 (not (= lt!2362851 (matchZipper!2259 lt!2362856 (t!378630 s!2326)))))))

(declare-fun b!6343287 () Bool)

(declare-fun tp!1768793 () Bool)

(declare-fun tp!1768789 () Bool)

(assert (=> b!6343287 (= e!3852786 (and tp!1768793 tp!1768789))))

(assert (= (and start!628490 res!2610302) b!6343281))

(assert (= (and b!6343281 res!2610300) b!6343271))

(assert (= (and b!6343271 res!2610299) b!6343263))

(assert (= (and b!6343263 (not res!2610295)) b!6343259))

(assert (= (and b!6343259 (not res!2610310)) b!6343270))

(assert (= (and b!6343270 (not res!2610316)) b!6343280))

(assert (= (and b!6343280 (not res!2610303)) b!6343278))

(assert (= (and b!6343278 (not res!2610313)) b!6343255))

(assert (= (and b!6343255 (not res!2610297)) b!6343279))

(assert (= (and b!6343279 (not res!2610311)) b!6343265))

(assert (= (and b!6343265 (not res!2610312)) b!6343256))

(assert (= (and b!6343256 c!1153431) b!6343257))

(assert (= (and b!6343256 (not c!1153431)) b!6343275))

(assert (= (and b!6343257 (not res!2610314)) b!6343268))

(assert (= (and b!6343256 (not res!2610298)) b!6343276))

(assert (= (and b!6343276 res!2610301) b!6343262))

(assert (= (and b!6343276 (not res!2610305)) b!6343269))

(assert (= (and b!6343269 (not res!2610293)) b!6343273))

(assert (= (and b!6343273 (not res!2610308)) b!6343277))

(assert (= (and b!6343277 (not res!2610304)) b!6343266))

(assert (= (and b!6343266 (not res!2610292)) b!6343286))

(assert (= (and b!6343286 (not res!2610315)) b!6343284))

(assert (= (and b!6343284 (not res!2610309)) b!6343253))

(assert (= (and b!6343253 (not res!2610296)) b!6343258))

(assert (= (and b!6343258 (not res!2610306)) b!6343285))

(assert (= (and b!6343285 (not res!2610294)) b!6343282))

(assert (= (and b!6343282 (not res!2610307)) b!6343272))

(assert (= (and start!628490 ((_ is ElementMatch!16247) r!7292)) b!6343260))

(assert (= (and start!628490 ((_ is Concat!25092) r!7292)) b!6343274))

(assert (= (and start!628490 ((_ is Star!16247) r!7292)) b!6343264))

(assert (= (and start!628490 ((_ is Union!16247) r!7292)) b!6343287))

(assert (= (and start!628490 condSetEmpty!43176) setIsEmpty!43176))

(assert (= (and start!628490 (not condSetEmpty!43176)) setNonEmpty!43176))

(assert (= setNonEmpty!43176 b!6343267))

(assert (= b!6343283 b!6343254))

(assert (= (and start!628490 ((_ is Cons!64917) zl!343)) b!6343283))

(assert (= (and start!628490 ((_ is Cons!64918) s!2326)) b!6343261))

(declare-fun m!7151464 () Bool)

(assert (=> b!6343259 m!7151464))

(declare-fun m!7151466 () Bool)

(assert (=> b!6343262 m!7151466))

(declare-fun m!7151468 () Bool)

(assert (=> b!6343271 m!7151468))

(declare-fun m!7151470 () Bool)

(assert (=> b!6343285 m!7151470))

(declare-fun m!7151472 () Bool)

(assert (=> b!6343285 m!7151472))

(declare-fun m!7151474 () Bool)

(assert (=> b!6343258 m!7151474))

(declare-fun m!7151476 () Bool)

(assert (=> b!6343258 m!7151476))

(declare-fun m!7151478 () Bool)

(assert (=> b!6343286 m!7151478))

(declare-fun m!7151480 () Bool)

(assert (=> b!6343279 m!7151480))

(declare-fun m!7151482 () Bool)

(assert (=> b!6343279 m!7151482))

(declare-fun m!7151484 () Bool)

(assert (=> b!6343279 m!7151484))

(declare-fun m!7151486 () Bool)

(assert (=> b!6343279 m!7151486))

(assert (=> b!6343279 m!7151486))

(declare-fun m!7151488 () Bool)

(assert (=> b!6343279 m!7151488))

(assert (=> b!6343279 m!7151482))

(declare-fun m!7151490 () Bool)

(assert (=> b!6343279 m!7151490))

(declare-fun m!7151492 () Bool)

(assert (=> b!6343263 m!7151492))

(declare-fun m!7151494 () Bool)

(assert (=> b!6343263 m!7151494))

(declare-fun m!7151496 () Bool)

(assert (=> b!6343263 m!7151496))

(declare-fun m!7151498 () Bool)

(assert (=> b!6343268 m!7151498))

(declare-fun m!7151500 () Bool)

(assert (=> b!6343273 m!7151500))

(declare-fun m!7151502 () Bool)

(assert (=> setNonEmpty!43176 m!7151502))

(declare-fun m!7151504 () Bool)

(assert (=> b!6343257 m!7151504))

(declare-fun m!7151506 () Bool)

(assert (=> b!6343257 m!7151506))

(declare-fun m!7151508 () Bool)

(assert (=> b!6343257 m!7151508))

(declare-fun m!7151510 () Bool)

(assert (=> b!6343282 m!7151510))

(declare-fun m!7151512 () Bool)

(assert (=> b!6343282 m!7151512))

(declare-fun m!7151514 () Bool)

(assert (=> b!6343282 m!7151514))

(declare-fun m!7151516 () Bool)

(assert (=> b!6343282 m!7151516))

(declare-fun m!7151518 () Bool)

(assert (=> b!6343282 m!7151518))

(declare-fun m!7151520 () Bool)

(assert (=> b!6343282 m!7151520))

(declare-fun m!7151522 () Bool)

(assert (=> b!6343282 m!7151522))

(declare-fun m!7151524 () Bool)

(assert (=> b!6343282 m!7151524))

(declare-fun m!7151526 () Bool)

(assert (=> b!6343272 m!7151526))

(declare-fun m!7151528 () Bool)

(assert (=> b!6343281 m!7151528))

(declare-fun m!7151530 () Bool)

(assert (=> b!6343270 m!7151530))

(declare-fun m!7151532 () Bool)

(assert (=> b!6343256 m!7151532))

(declare-fun m!7151534 () Bool)

(assert (=> b!6343256 m!7151534))

(declare-fun m!7151536 () Bool)

(assert (=> b!6343256 m!7151536))

(declare-fun m!7151538 () Bool)

(assert (=> b!6343256 m!7151538))

(declare-fun m!7151540 () Bool)

(assert (=> b!6343256 m!7151540))

(declare-fun m!7151542 () Bool)

(assert (=> b!6343256 m!7151542))

(declare-fun m!7151544 () Bool)

(assert (=> b!6343256 m!7151544))

(declare-fun m!7151546 () Bool)

(assert (=> b!6343253 m!7151546))

(declare-fun m!7151548 () Bool)

(assert (=> b!6343253 m!7151548))

(declare-fun m!7151550 () Bool)

(assert (=> b!6343278 m!7151550))

(assert (=> b!6343278 m!7151550))

(declare-fun m!7151552 () Bool)

(assert (=> b!6343278 m!7151552))

(declare-fun m!7151554 () Bool)

(assert (=> b!6343266 m!7151554))

(declare-fun m!7151556 () Bool)

(assert (=> b!6343266 m!7151556))

(declare-fun m!7151558 () Bool)

(assert (=> b!6343266 m!7151558))

(declare-fun m!7151560 () Bool)

(assert (=> b!6343266 m!7151560))

(declare-fun m!7151562 () Bool)

(assert (=> b!6343266 m!7151562))

(declare-fun m!7151564 () Bool)

(assert (=> start!628490 m!7151564))

(declare-fun m!7151566 () Bool)

(assert (=> b!6343265 m!7151566))

(declare-fun m!7151568 () Bool)

(assert (=> b!6343283 m!7151568))

(declare-fun m!7151570 () Bool)

(assert (=> b!6343277 m!7151570))

(assert (=> b!6343277 m!7151506))

(check-sat (not b!6343259) (not b!6343282) (not b!6343264) (not b!6343263) (not b!6343265) tp_is_empty!41747 (not b!6343279) (not b!6343285) (not b!6343270) (not b!6343261) (not b!6343262) (not b!6343278) (not b!6343253) (not b!6343256) (not b!6343271) (not b!6343283) (not b!6343258) (not b!6343267) (not b!6343277) (not b!6343273) (not start!628490) (not setNonEmpty!43176) (not b!6343266) (not b!6343274) (not b!6343268) (not b!6343272) (not b!6343254) (not b!6343287) (not b!6343257) (not b!6343281) (not b!6343286))
(check-sat)
(get-model)

(declare-fun d!1990893 () Bool)

(declare-fun nullableFct!2186 (Regex!16247) Bool)

(assert (=> d!1990893 (= (nullable!6240 (regOne!33006 (regOne!33006 r!7292))) (nullableFct!2186 (regOne!33006 (regOne!33006 r!7292))))))

(declare-fun bs!1588562 () Bool)

(assert (= bs!1588562 d!1990893))

(declare-fun m!7151572 () Bool)

(assert (=> bs!1588562 m!7151572))

(assert (=> b!6343262 d!1990893))

(declare-fun d!1990897 () Bool)

(declare-fun e!3852799 () Bool)

(assert (=> d!1990897 e!3852799))

(declare-fun res!2610319 () Bool)

(assert (=> d!1990897 (=> (not res!2610319) (not e!3852799))))

(declare-fun lt!2362875 () List!65041)

(declare-fun noDuplicate!2077 (List!65041) Bool)

(assert (=> d!1990897 (= res!2610319 (noDuplicate!2077 lt!2362875))))

(declare-fun choose!47033 ((InoxSet Context!11262)) List!65041)

(assert (=> d!1990897 (= lt!2362875 (choose!47033 z!1189))))

(assert (=> d!1990897 (= (toList!10031 z!1189) lt!2362875)))

(declare-fun b!6343300 () Bool)

(declare-fun content!12246 (List!65041) (InoxSet Context!11262))

(assert (=> b!6343300 (= e!3852799 (= (content!12246 lt!2362875) z!1189))))

(assert (= (and d!1990897 res!2610319) b!6343300))

(declare-fun m!7151576 () Bool)

(assert (=> d!1990897 m!7151576))

(declare-fun m!7151578 () Bool)

(assert (=> d!1990897 m!7151578))

(declare-fun m!7151580 () Bool)

(assert (=> b!6343300 m!7151580))

(assert (=> b!6343281 d!1990897))

(declare-fun d!1990901 () Bool)

(declare-fun choose!47034 (Int) Bool)

(assert (=> d!1990901 (= (Exists!3317 lambda!348546) (choose!47034 lambda!348546))))

(declare-fun bs!1588564 () Bool)

(assert (= bs!1588564 d!1990901))

(declare-fun m!7151600 () Bool)

(assert (=> bs!1588564 m!7151600))

(assert (=> b!6343279 d!1990901))

(declare-fun b!6343373 () Bool)

(declare-fun e!3852840 () Option!16138)

(assert (=> b!6343373 (= e!3852840 (Some!16137 (tuple2!66453 Nil!64918 s!2326)))))

(declare-fun b!6343374 () Bool)

(declare-fun e!3852841 () Option!16138)

(assert (=> b!6343374 (= e!3852841 None!16137)))

(declare-fun b!6343375 () Bool)

(assert (=> b!6343375 (= e!3852840 e!3852841)))

(declare-fun c!1153457 () Bool)

(assert (=> b!6343375 (= c!1153457 ((_ is Nil!64918) s!2326))))

(declare-fun b!6343376 () Bool)

(declare-fun e!3852842 () Bool)

(declare-fun lt!2362906 () Option!16138)

(declare-fun ++!14316 (List!65042 List!65042) List!65042)

(declare-fun get!22455 (Option!16138) tuple2!66452)

(assert (=> b!6343376 (= e!3852842 (= (++!14316 (_1!36529 (get!22455 lt!2362906)) (_2!36529 (get!22455 lt!2362906))) s!2326))))

(declare-fun d!1990907 () Bool)

(declare-fun e!3852843 () Bool)

(assert (=> d!1990907 e!3852843))

(declare-fun res!2610354 () Bool)

(assert (=> d!1990907 (=> res!2610354 e!3852843)))

(assert (=> d!1990907 (= res!2610354 e!3852842)))

(declare-fun res!2610356 () Bool)

(assert (=> d!1990907 (=> (not res!2610356) (not e!3852842))))

(assert (=> d!1990907 (= res!2610356 (isDefined!12841 lt!2362906))))

(assert (=> d!1990907 (= lt!2362906 e!3852840)))

(declare-fun c!1153456 () Bool)

(declare-fun e!3852844 () Bool)

(assert (=> d!1990907 (= c!1153456 e!3852844)))

(declare-fun res!2610355 () Bool)

(assert (=> d!1990907 (=> (not res!2610355) (not e!3852844))))

(assert (=> d!1990907 (= res!2610355 (matchR!8430 (regOne!33006 r!7292) Nil!64918))))

(assert (=> d!1990907 (validRegex!7983 (regOne!33006 r!7292))))

(assert (=> d!1990907 (= (findConcatSeparation!2552 (regOne!33006 r!7292) (regTwo!33006 r!7292) Nil!64918 s!2326 s!2326) lt!2362906)))

(declare-fun b!6343377 () Bool)

(declare-fun lt!2362905 () Unit!158319)

(declare-fun lt!2362907 () Unit!158319)

(assert (=> b!6343377 (= lt!2362905 lt!2362907)))

(assert (=> b!6343377 (= (++!14316 (++!14316 Nil!64918 (Cons!64918 (h!71366 s!2326) Nil!64918)) (t!378630 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2411 (List!65042 C!32764 List!65042 List!65042) Unit!158319)

(assert (=> b!6343377 (= lt!2362907 (lemmaMoveElementToOtherListKeepsConcatEq!2411 Nil!64918 (h!71366 s!2326) (t!378630 s!2326) s!2326))))

(assert (=> b!6343377 (= e!3852841 (findConcatSeparation!2552 (regOne!33006 r!7292) (regTwo!33006 r!7292) (++!14316 Nil!64918 (Cons!64918 (h!71366 s!2326) Nil!64918)) (t!378630 s!2326) s!2326))))

(declare-fun b!6343378 () Bool)

(assert (=> b!6343378 (= e!3852843 (not (isDefined!12841 lt!2362906)))))

(declare-fun b!6343379 () Bool)

(declare-fun res!2610353 () Bool)

(assert (=> b!6343379 (=> (not res!2610353) (not e!3852842))))

(assert (=> b!6343379 (= res!2610353 (matchR!8430 (regTwo!33006 r!7292) (_2!36529 (get!22455 lt!2362906))))))

(declare-fun b!6343380 () Bool)

(assert (=> b!6343380 (= e!3852844 (matchR!8430 (regTwo!33006 r!7292) s!2326))))

(declare-fun b!6343381 () Bool)

(declare-fun res!2610352 () Bool)

(assert (=> b!6343381 (=> (not res!2610352) (not e!3852842))))

(assert (=> b!6343381 (= res!2610352 (matchR!8430 (regOne!33006 r!7292) (_1!36529 (get!22455 lt!2362906))))))

(assert (= (and d!1990907 res!2610355) b!6343380))

(assert (= (and d!1990907 c!1153456) b!6343373))

(assert (= (and d!1990907 (not c!1153456)) b!6343375))

(assert (= (and b!6343375 c!1153457) b!6343374))

(assert (= (and b!6343375 (not c!1153457)) b!6343377))

(assert (= (and d!1990907 res!2610356) b!6343381))

(assert (= (and b!6343381 res!2610352) b!6343379))

(assert (= (and b!6343379 res!2610353) b!6343376))

(assert (= (and d!1990907 (not res!2610354)) b!6343378))

(declare-fun m!7151654 () Bool)

(assert (=> b!6343378 m!7151654))

(declare-fun m!7151656 () Bool)

(assert (=> b!6343380 m!7151656))

(declare-fun m!7151658 () Bool)

(assert (=> b!6343377 m!7151658))

(assert (=> b!6343377 m!7151658))

(declare-fun m!7151660 () Bool)

(assert (=> b!6343377 m!7151660))

(declare-fun m!7151662 () Bool)

(assert (=> b!6343377 m!7151662))

(assert (=> b!6343377 m!7151658))

(declare-fun m!7151664 () Bool)

(assert (=> b!6343377 m!7151664))

(declare-fun m!7151666 () Bool)

(assert (=> b!6343376 m!7151666))

(declare-fun m!7151668 () Bool)

(assert (=> b!6343376 m!7151668))

(assert (=> d!1990907 m!7151654))

(declare-fun m!7151670 () Bool)

(assert (=> d!1990907 m!7151670))

(declare-fun m!7151672 () Bool)

(assert (=> d!1990907 m!7151672))

(assert (=> b!6343381 m!7151666))

(declare-fun m!7151674 () Bool)

(assert (=> b!6343381 m!7151674))

(assert (=> b!6343379 m!7151666))

(declare-fun m!7151676 () Bool)

(assert (=> b!6343379 m!7151676))

(assert (=> b!6343279 d!1990907))

(declare-fun d!1990927 () Bool)

(assert (=> d!1990927 (= (Exists!3317 lambda!348545) (choose!47034 lambda!348545))))

(declare-fun bs!1588569 () Bool)

(assert (= bs!1588569 d!1990927))

(declare-fun m!7151678 () Bool)

(assert (=> bs!1588569 m!7151678))

(assert (=> b!6343279 d!1990927))

(declare-fun bs!1588575 () Bool)

(declare-fun d!1990929 () Bool)

(assert (= bs!1588575 (and d!1990929 b!6343279)))

(declare-fun lambda!348565 () Int)

(assert (=> bs!1588575 (= lambda!348565 lambda!348545)))

(assert (=> bs!1588575 (not (= lambda!348565 lambda!348546))))

(assert (=> d!1990929 true))

(assert (=> d!1990929 true))

(assert (=> d!1990929 true))

(assert (=> d!1990929 (= (isDefined!12841 (findConcatSeparation!2552 (regOne!33006 r!7292) (regTwo!33006 r!7292) Nil!64918 s!2326 s!2326)) (Exists!3317 lambda!348565))))

(declare-fun lt!2362916 () Unit!158319)

(declare-fun choose!47036 (Regex!16247 Regex!16247 List!65042) Unit!158319)

(assert (=> d!1990929 (= lt!2362916 (choose!47036 (regOne!33006 r!7292) (regTwo!33006 r!7292) s!2326))))

(assert (=> d!1990929 (validRegex!7983 (regOne!33006 r!7292))))

(assert (=> d!1990929 (= (lemmaFindConcatSeparationEquivalentToExists!2316 (regOne!33006 r!7292) (regTwo!33006 r!7292) s!2326) lt!2362916)))

(declare-fun bs!1588576 () Bool)

(assert (= bs!1588576 d!1990929))

(declare-fun m!7151714 () Bool)

(assert (=> bs!1588576 m!7151714))

(assert (=> bs!1588576 m!7151482))

(assert (=> bs!1588576 m!7151672))

(declare-fun m!7151716 () Bool)

(assert (=> bs!1588576 m!7151716))

(assert (=> bs!1588576 m!7151482))

(assert (=> bs!1588576 m!7151484))

(assert (=> b!6343279 d!1990929))

(declare-fun bs!1588584 () Bool)

(declare-fun d!1990939 () Bool)

(assert (= bs!1588584 (and d!1990939 b!6343279)))

(declare-fun lambda!348576 () Int)

(assert (=> bs!1588584 (= lambda!348576 lambda!348545)))

(assert (=> bs!1588584 (not (= lambda!348576 lambda!348546))))

(declare-fun bs!1588585 () Bool)

(assert (= bs!1588585 (and d!1990939 d!1990929)))

(assert (=> bs!1588585 (= lambda!348576 lambda!348565)))

(assert (=> d!1990939 true))

(assert (=> d!1990939 true))

(assert (=> d!1990939 true))

(declare-fun lambda!348577 () Int)

(assert (=> bs!1588584 (not (= lambda!348577 lambda!348545))))

(assert (=> bs!1588584 (= lambda!348577 lambda!348546)))

(assert (=> bs!1588585 (not (= lambda!348577 lambda!348565))))

(declare-fun bs!1588586 () Bool)

(assert (= bs!1588586 d!1990939))

(assert (=> bs!1588586 (not (= lambda!348577 lambda!348576))))

(assert (=> d!1990939 true))

(assert (=> d!1990939 true))

(assert (=> d!1990939 true))

(assert (=> d!1990939 (= (Exists!3317 lambda!348576) (Exists!3317 lambda!348577))))

(declare-fun lt!2362919 () Unit!158319)

(declare-fun choose!47037 (Regex!16247 Regex!16247 List!65042) Unit!158319)

(assert (=> d!1990939 (= lt!2362919 (choose!47037 (regOne!33006 r!7292) (regTwo!33006 r!7292) s!2326))))

(assert (=> d!1990939 (validRegex!7983 (regOne!33006 r!7292))))

(assert (=> d!1990939 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1854 (regOne!33006 r!7292) (regTwo!33006 r!7292) s!2326) lt!2362919)))

(declare-fun m!7151736 () Bool)

(assert (=> bs!1588586 m!7151736))

(declare-fun m!7151738 () Bool)

(assert (=> bs!1588586 m!7151738))

(declare-fun m!7151740 () Bool)

(assert (=> bs!1588586 m!7151740))

(assert (=> bs!1588586 m!7151672))

(assert (=> b!6343279 d!1990939))

(declare-fun d!1990947 () Bool)

(declare-fun isEmpty!37001 (Option!16138) Bool)

(assert (=> d!1990947 (= (isDefined!12841 (findConcatSeparation!2552 (regOne!33006 r!7292) (regTwo!33006 r!7292) Nil!64918 s!2326 s!2326)) (not (isEmpty!37001 (findConcatSeparation!2552 (regOne!33006 r!7292) (regTwo!33006 r!7292) Nil!64918 s!2326 s!2326))))))

(declare-fun bs!1588590 () Bool)

(assert (= bs!1588590 d!1990947))

(assert (=> bs!1588590 m!7151482))

(declare-fun m!7151762 () Bool)

(assert (=> bs!1588590 m!7151762))

(assert (=> b!6343279 d!1990947))

(declare-fun d!1990951 () Bool)

(declare-fun lambda!348581 () Int)

(declare-fun forall!15405 (List!65040 Int) Bool)

(assert (=> d!1990951 (= (inv!83864 setElem!43176) (forall!15405 (exprs!6131 setElem!43176) lambda!348581))))

(declare-fun bs!1588591 () Bool)

(assert (= bs!1588591 d!1990951))

(declare-fun m!7151764 () Bool)

(assert (=> bs!1588591 m!7151764))

(assert (=> setNonEmpty!43176 d!1990951))

(declare-fun bs!1588592 () Bool)

(declare-fun d!1990953 () Bool)

(assert (= bs!1588592 (and d!1990953 d!1990951)))

(declare-fun lambda!348582 () Int)

(assert (=> bs!1588592 (= lambda!348582 lambda!348581)))

(assert (=> d!1990953 (= (inv!83864 (h!71365 zl!343)) (forall!15405 (exprs!6131 (h!71365 zl!343)) lambda!348582))))

(declare-fun bs!1588593 () Bool)

(assert (= bs!1588593 d!1990953))

(declare-fun m!7151766 () Bool)

(assert (=> bs!1588593 m!7151766))

(assert (=> b!6343283 d!1990953))

(declare-fun d!1990955 () Bool)

(assert (=> d!1990955 (= (matchR!8430 lt!2362848 s!2326) (matchRSpec!3348 lt!2362848 s!2326))))

(declare-fun lt!2362928 () Unit!158319)

(declare-fun choose!47038 (Regex!16247 List!65042) Unit!158319)

(assert (=> d!1990955 (= lt!2362928 (choose!47038 lt!2362848 s!2326))))

(assert (=> d!1990955 (validRegex!7983 lt!2362848)))

(assert (=> d!1990955 (= (mainMatchTheorem!3348 lt!2362848 s!2326) lt!2362928)))

(declare-fun bs!1588594 () Bool)

(assert (= bs!1588594 d!1990955))

(assert (=> bs!1588594 m!7151518))

(assert (=> bs!1588594 m!7151522))

(declare-fun m!7151768 () Bool)

(assert (=> bs!1588594 m!7151768))

(declare-fun m!7151770 () Bool)

(assert (=> bs!1588594 m!7151770))

(assert (=> b!6343282 d!1990955))

(declare-fun d!1990957 () Bool)

(assert (=> d!1990957 (= (matchR!8430 lt!2362848 s!2326) (matchZipper!2259 lt!2362865 s!2326))))

(declare-fun lt!2362935 () Unit!158319)

(declare-fun choose!47039 ((InoxSet Context!11262) List!65041 Regex!16247 List!65042) Unit!158319)

(assert (=> d!1990957 (= lt!2362935 (choose!47039 lt!2362865 lt!2362849 lt!2362848 s!2326))))

(assert (=> d!1990957 (validRegex!7983 lt!2362848)))

(assert (=> d!1990957 (= (theoremZipperRegexEquiv!789 lt!2362865 lt!2362849 lt!2362848 s!2326) lt!2362935)))

(declare-fun bs!1588601 () Bool)

(assert (= bs!1588601 d!1990957))

(assert (=> bs!1588601 m!7151518))

(assert (=> bs!1588601 m!7151516))

(declare-fun m!7151802 () Bool)

(assert (=> bs!1588601 m!7151802))

(assert (=> bs!1588601 m!7151770))

(assert (=> b!6343282 d!1990957))

(declare-fun bs!1588613 () Bool)

(declare-fun d!1990973 () Bool)

(assert (= bs!1588613 (and d!1990973 d!1990951)))

(declare-fun lambda!348592 () Int)

(assert (=> bs!1588613 (= lambda!348592 lambda!348581)))

(declare-fun bs!1588614 () Bool)

(assert (= bs!1588614 (and d!1990973 d!1990953)))

(assert (=> bs!1588614 (= lambda!348592 lambda!348582)))

(declare-fun b!6343633 () Bool)

(declare-fun e!3852999 () Bool)

(assert (=> b!6343633 (= e!3852999 (isEmpty!36998 (t!378628 lt!2362862)))))

(declare-fun b!6343634 () Bool)

(declare-fun e!3852998 () Regex!16247)

(assert (=> b!6343634 (= e!3852998 (h!71364 lt!2362862))))

(declare-fun b!6343635 () Bool)

(declare-fun e!3852996 () Bool)

(declare-fun lt!2362944 () Regex!16247)

(declare-fun head!12986 (List!65040) Regex!16247)

(assert (=> b!6343635 (= e!3852996 (= lt!2362944 (head!12986 lt!2362862)))))

(declare-fun b!6343636 () Bool)

(declare-fun e!3852995 () Bool)

(declare-fun isEmptyExpr!1649 (Regex!16247) Bool)

(assert (=> b!6343636 (= e!3852995 (isEmptyExpr!1649 lt!2362944))))

(declare-fun b!6343638 () Bool)

(declare-fun isConcat!1172 (Regex!16247) Bool)

(assert (=> b!6343638 (= e!3852996 (isConcat!1172 lt!2362944))))

(declare-fun b!6343639 () Bool)

(declare-fun e!3852994 () Regex!16247)

(assert (=> b!6343639 (= e!3852994 (Concat!25092 (h!71364 lt!2362862) (generalisedConcat!1844 (t!378628 lt!2362862))))))

(declare-fun b!6343640 () Bool)

(assert (=> b!6343640 (= e!3852995 e!3852996)))

(declare-fun c!1153533 () Bool)

(declare-fun tail!12071 (List!65040) List!65040)

(assert (=> b!6343640 (= c!1153533 (isEmpty!36998 (tail!12071 lt!2362862)))))

(declare-fun b!6343641 () Bool)

(assert (=> b!6343641 (= e!3852994 EmptyExpr!16247)))

(declare-fun b!6343642 () Bool)

(assert (=> b!6343642 (= e!3852998 e!3852994)))

(declare-fun c!1153535 () Bool)

(assert (=> b!6343642 (= c!1153535 ((_ is Cons!64916) lt!2362862))))

(declare-fun b!6343637 () Bool)

(declare-fun e!3852997 () Bool)

(assert (=> b!6343637 (= e!3852997 e!3852995)))

(declare-fun c!1153532 () Bool)

(assert (=> b!6343637 (= c!1153532 (isEmpty!36998 lt!2362862))))

(assert (=> d!1990973 e!3852997))

(declare-fun res!2610461 () Bool)

(assert (=> d!1990973 (=> (not res!2610461) (not e!3852997))))

(assert (=> d!1990973 (= res!2610461 (validRegex!7983 lt!2362944))))

(assert (=> d!1990973 (= lt!2362944 e!3852998)))

(declare-fun c!1153534 () Bool)

(assert (=> d!1990973 (= c!1153534 e!3852999)))

(declare-fun res!2610460 () Bool)

(assert (=> d!1990973 (=> (not res!2610460) (not e!3852999))))

(assert (=> d!1990973 (= res!2610460 ((_ is Cons!64916) lt!2362862))))

(assert (=> d!1990973 (forall!15405 lt!2362862 lambda!348592)))

(assert (=> d!1990973 (= (generalisedConcat!1844 lt!2362862) lt!2362944)))

(assert (= (and d!1990973 res!2610460) b!6343633))

(assert (= (and d!1990973 c!1153534) b!6343634))

(assert (= (and d!1990973 (not c!1153534)) b!6343642))

(assert (= (and b!6343642 c!1153535) b!6343639))

(assert (= (and b!6343642 (not c!1153535)) b!6343641))

(assert (= (and d!1990973 res!2610461) b!6343637))

(assert (= (and b!6343637 c!1153532) b!6343636))

(assert (= (and b!6343637 (not c!1153532)) b!6343640))

(assert (= (and b!6343640 c!1153533) b!6343635))

(assert (= (and b!6343640 (not c!1153533)) b!6343638))

(declare-fun m!7151832 () Bool)

(assert (=> b!6343635 m!7151832))

(declare-fun m!7151834 () Bool)

(assert (=> b!6343637 m!7151834))

(declare-fun m!7151836 () Bool)

(assert (=> b!6343640 m!7151836))

(assert (=> b!6343640 m!7151836))

(declare-fun m!7151840 () Bool)

(assert (=> b!6343640 m!7151840))

(declare-fun m!7151844 () Bool)

(assert (=> b!6343636 m!7151844))

(declare-fun m!7151846 () Bool)

(assert (=> d!1990973 m!7151846))

(declare-fun m!7151850 () Bool)

(assert (=> d!1990973 m!7151850))

(declare-fun m!7151852 () Bool)

(assert (=> b!6343639 m!7151852))

(declare-fun m!7151854 () Bool)

(assert (=> b!6343633 m!7151854))

(declare-fun m!7151856 () Bool)

(assert (=> b!6343638 m!7151856))

(assert (=> b!6343282 d!1990973))

(declare-fun b!6343698 () Bool)

(declare-fun e!3853041 () Bool)

(declare-fun call!540739 () Bool)

(assert (=> b!6343698 (= e!3853041 call!540739)))

(declare-fun b!6343699 () Bool)

(declare-fun e!3853040 () Bool)

(declare-fun call!540737 () Bool)

(assert (=> b!6343699 (= e!3853040 call!540737)))

(declare-fun b!6343700 () Bool)

(declare-fun e!3853037 () Bool)

(assert (=> b!6343700 (= e!3853037 call!540737)))

(declare-fun b!6343701 () Bool)

(declare-fun res!2610480 () Bool)

(assert (=> b!6343701 (=> (not res!2610480) (not e!3853037))))

(declare-fun call!540738 () Bool)

(assert (=> b!6343701 (= res!2610480 call!540738)))

(declare-fun e!3853036 () Bool)

(assert (=> b!6343701 (= e!3853036 e!3853037)))

(declare-fun bm!540732 () Bool)

(declare-fun c!1153557 () Bool)

(assert (=> bm!540732 (= call!540738 (validRegex!7983 (ite c!1153557 (regOne!33007 (regOne!33006 (regOne!33006 r!7292))) (regOne!33006 (regOne!33006 (regOne!33006 r!7292))))))))

(declare-fun b!6343702 () Bool)

(declare-fun e!3853038 () Bool)

(assert (=> b!6343702 (= e!3853038 e!3853036)))

(assert (=> b!6343702 (= c!1153557 ((_ is Union!16247) (regOne!33006 (regOne!33006 r!7292))))))

(declare-fun d!1990985 () Bool)

(declare-fun res!2610479 () Bool)

(declare-fun e!3853039 () Bool)

(assert (=> d!1990985 (=> res!2610479 e!3853039)))

(assert (=> d!1990985 (= res!2610479 ((_ is ElementMatch!16247) (regOne!33006 (regOne!33006 r!7292))))))

(assert (=> d!1990985 (= (validRegex!7983 (regOne!33006 (regOne!33006 r!7292))) e!3853039)))

(declare-fun b!6343703 () Bool)

(declare-fun res!2610477 () Bool)

(declare-fun e!3853035 () Bool)

(assert (=> b!6343703 (=> res!2610477 e!3853035)))

(assert (=> b!6343703 (= res!2610477 (not ((_ is Concat!25092) (regOne!33006 (regOne!33006 r!7292)))))))

(assert (=> b!6343703 (= e!3853036 e!3853035)))

(declare-fun b!6343704 () Bool)

(assert (=> b!6343704 (= e!3853039 e!3853038)))

(declare-fun c!1153556 () Bool)

(assert (=> b!6343704 (= c!1153556 ((_ is Star!16247) (regOne!33006 (regOne!33006 r!7292))))))

(declare-fun b!6343705 () Bool)

(assert (=> b!6343705 (= e!3853038 e!3853041)))

(declare-fun res!2610478 () Bool)

(assert (=> b!6343705 (= res!2610478 (not (nullable!6240 (reg!16576 (regOne!33006 (regOne!33006 r!7292))))))))

(assert (=> b!6343705 (=> (not res!2610478) (not e!3853041))))

(declare-fun bm!540733 () Bool)

(assert (=> bm!540733 (= call!540737 call!540739)))

(declare-fun bm!540734 () Bool)

(assert (=> bm!540734 (= call!540739 (validRegex!7983 (ite c!1153556 (reg!16576 (regOne!33006 (regOne!33006 r!7292))) (ite c!1153557 (regTwo!33007 (regOne!33006 (regOne!33006 r!7292))) (regTwo!33006 (regOne!33006 (regOne!33006 r!7292)))))))))

(declare-fun b!6343706 () Bool)

(assert (=> b!6343706 (= e!3853035 e!3853040)))

(declare-fun res!2610481 () Bool)

(assert (=> b!6343706 (=> (not res!2610481) (not e!3853040))))

(assert (=> b!6343706 (= res!2610481 call!540738)))

(assert (= (and d!1990985 (not res!2610479)) b!6343704))

(assert (= (and b!6343704 c!1153556) b!6343705))

(assert (= (and b!6343704 (not c!1153556)) b!6343702))

(assert (= (and b!6343705 res!2610478) b!6343698))

(assert (= (and b!6343702 c!1153557) b!6343701))

(assert (= (and b!6343702 (not c!1153557)) b!6343703))

(assert (= (and b!6343701 res!2610480) b!6343700))

(assert (= (and b!6343703 (not res!2610477)) b!6343706))

(assert (= (and b!6343706 res!2610481) b!6343699))

(assert (= (or b!6343700 b!6343699) bm!540733))

(assert (= (or b!6343701 b!6343706) bm!540732))

(assert (= (or b!6343698 bm!540733) bm!540734))

(declare-fun m!7151874 () Bool)

(assert (=> bm!540732 m!7151874))

(declare-fun m!7151876 () Bool)

(assert (=> b!6343705 m!7151876))

(declare-fun m!7151878 () Bool)

(assert (=> bm!540734 m!7151878))

(assert (=> b!6343282 d!1990985))

(declare-fun bs!1588628 () Bool)

(declare-fun b!6343807 () Bool)

(assert (= bs!1588628 (and b!6343807 b!6343279)))

(declare-fun lambda!348599 () Int)

(assert (=> bs!1588628 (not (= lambda!348599 lambda!348546))))

(declare-fun bs!1588629 () Bool)

(assert (= bs!1588629 (and b!6343807 d!1990929)))

(assert (=> bs!1588629 (not (= lambda!348599 lambda!348565))))

(assert (=> bs!1588628 (not (= lambda!348599 lambda!348545))))

(declare-fun bs!1588630 () Bool)

(assert (= bs!1588630 (and b!6343807 d!1990939)))

(assert (=> bs!1588630 (not (= lambda!348599 lambda!348577))))

(assert (=> bs!1588630 (not (= lambda!348599 lambda!348576))))

(assert (=> b!6343807 true))

(assert (=> b!6343807 true))

(declare-fun bs!1588631 () Bool)

(declare-fun b!6343803 () Bool)

(assert (= bs!1588631 (and b!6343803 b!6343279)))

(declare-fun lambda!348602 () Int)

(assert (=> bs!1588631 (= (and (= (regOne!33006 lt!2362848) (regOne!33006 r!7292)) (= (regTwo!33006 lt!2362848) (regTwo!33006 r!7292))) (= lambda!348602 lambda!348546))))

(declare-fun bs!1588632 () Bool)

(assert (= bs!1588632 (and b!6343803 b!6343807)))

(assert (=> bs!1588632 (not (= lambda!348602 lambda!348599))))

(declare-fun bs!1588633 () Bool)

(assert (= bs!1588633 (and b!6343803 d!1990929)))

(assert (=> bs!1588633 (not (= lambda!348602 lambda!348565))))

(assert (=> bs!1588631 (not (= lambda!348602 lambda!348545))))

(declare-fun bs!1588634 () Bool)

(assert (= bs!1588634 (and b!6343803 d!1990939)))

(assert (=> bs!1588634 (= (and (= (regOne!33006 lt!2362848) (regOne!33006 r!7292)) (= (regTwo!33006 lt!2362848) (regTwo!33006 r!7292))) (= lambda!348602 lambda!348577))))

(assert (=> bs!1588634 (not (= lambda!348602 lambda!348576))))

(assert (=> b!6343803 true))

(assert (=> b!6343803 true))

(declare-fun b!6343802 () Bool)

(declare-fun c!1153590 () Bool)

(assert (=> b!6343802 (= c!1153590 ((_ is Union!16247) lt!2362848))))

(declare-fun e!3853103 () Bool)

(declare-fun e!3853099 () Bool)

(assert (=> b!6343802 (= e!3853103 e!3853099)))

(declare-fun e!3853101 () Bool)

(declare-fun call!540762 () Bool)

(assert (=> b!6343803 (= e!3853101 call!540762)))

(declare-fun bm!540757 () Bool)

(declare-fun c!1153587 () Bool)

(assert (=> bm!540757 (= call!540762 (Exists!3317 (ite c!1153587 lambda!348599 lambda!348602)))))

(declare-fun b!6343804 () Bool)

(declare-fun e!3853100 () Bool)

(declare-fun e!3853098 () Bool)

(assert (=> b!6343804 (= e!3853100 e!3853098)))

(declare-fun res!2610521 () Bool)

(assert (=> b!6343804 (= res!2610521 (not ((_ is EmptyLang!16247) lt!2362848)))))

(assert (=> b!6343804 (=> (not res!2610521) (not e!3853098))))

(declare-fun b!6343805 () Bool)

(declare-fun call!540763 () Bool)

(assert (=> b!6343805 (= e!3853100 call!540763)))

(declare-fun b!6343806 () Bool)

(declare-fun c!1153589 () Bool)

(assert (=> b!6343806 (= c!1153589 ((_ is ElementMatch!16247) lt!2362848))))

(assert (=> b!6343806 (= e!3853098 e!3853103)))

(declare-fun e!3853104 () Bool)

(assert (=> b!6343807 (= e!3853104 call!540762)))

(declare-fun b!6343808 () Bool)

(declare-fun e!3853102 () Bool)

(assert (=> b!6343808 (= e!3853102 (matchRSpec!3348 (regTwo!33007 lt!2362848) s!2326))))

(declare-fun b!6343809 () Bool)

(declare-fun res!2610519 () Bool)

(assert (=> b!6343809 (=> res!2610519 e!3853104)))

(assert (=> b!6343809 (= res!2610519 call!540763)))

(assert (=> b!6343809 (= e!3853101 e!3853104)))

(declare-fun bm!540758 () Bool)

(declare-fun isEmpty!37002 (List!65042) Bool)

(assert (=> bm!540758 (= call!540763 (isEmpty!37002 s!2326))))

(declare-fun d!1990993 () Bool)

(declare-fun c!1153588 () Bool)

(assert (=> d!1990993 (= c!1153588 ((_ is EmptyExpr!16247) lt!2362848))))

(assert (=> d!1990993 (= (matchRSpec!3348 lt!2362848 s!2326) e!3853100)))

(declare-fun b!6343810 () Bool)

(assert (=> b!6343810 (= e!3853099 e!3853102)))

(declare-fun res!2610520 () Bool)

(assert (=> b!6343810 (= res!2610520 (matchRSpec!3348 (regOne!33007 lt!2362848) s!2326))))

(assert (=> b!6343810 (=> res!2610520 e!3853102)))

(declare-fun b!6343811 () Bool)

(assert (=> b!6343811 (= e!3853103 (= s!2326 (Cons!64918 (c!1153432 lt!2362848) Nil!64918)))))

(declare-fun b!6343812 () Bool)

(assert (=> b!6343812 (= e!3853099 e!3853101)))

(assert (=> b!6343812 (= c!1153587 ((_ is Star!16247) lt!2362848))))

(assert (= (and d!1990993 c!1153588) b!6343805))

(assert (= (and d!1990993 (not c!1153588)) b!6343804))

(assert (= (and b!6343804 res!2610521) b!6343806))

(assert (= (and b!6343806 c!1153589) b!6343811))

(assert (= (and b!6343806 (not c!1153589)) b!6343802))

(assert (= (and b!6343802 c!1153590) b!6343810))

(assert (= (and b!6343802 (not c!1153590)) b!6343812))

(assert (= (and b!6343810 (not res!2610520)) b!6343808))

(assert (= (and b!6343812 c!1153587) b!6343809))

(assert (= (and b!6343812 (not c!1153587)) b!6343803))

(assert (= (and b!6343809 (not res!2610519)) b!6343807))

(assert (= (or b!6343807 b!6343803) bm!540757))

(assert (= (or b!6343805 b!6343809) bm!540758))

(declare-fun m!7151934 () Bool)

(assert (=> bm!540757 m!7151934))

(declare-fun m!7151936 () Bool)

(assert (=> b!6343808 m!7151936))

(declare-fun m!7151938 () Bool)

(assert (=> bm!540758 m!7151938))

(declare-fun m!7151940 () Bool)

(assert (=> b!6343810 m!7151940))

(assert (=> b!6343282 d!1990993))

(declare-fun bs!1588635 () Bool)

(declare-fun d!1991013 () Bool)

(assert (= bs!1588635 (and d!1991013 d!1990951)))

(declare-fun lambda!348607 () Int)

(assert (=> bs!1588635 (= lambda!348607 lambda!348581)))

(declare-fun bs!1588636 () Bool)

(assert (= bs!1588636 (and d!1991013 d!1990953)))

(assert (=> bs!1588636 (= lambda!348607 lambda!348582)))

(declare-fun bs!1588637 () Bool)

(assert (= bs!1588637 (and d!1991013 d!1990973)))

(assert (=> bs!1588637 (= lambda!348607 lambda!348592)))

(declare-fun b!6343819 () Bool)

(declare-fun e!3853114 () Bool)

(assert (=> b!6343819 (= e!3853114 (isEmpty!36998 (t!378628 lt!2362861)))))

(declare-fun b!6343820 () Bool)

(declare-fun e!3853113 () Regex!16247)

(assert (=> b!6343820 (= e!3853113 (h!71364 lt!2362861))))

(declare-fun b!6343821 () Bool)

(declare-fun e!3853111 () Bool)

(declare-fun lt!2362961 () Regex!16247)

(assert (=> b!6343821 (= e!3853111 (= lt!2362961 (head!12986 lt!2362861)))))

(declare-fun b!6343822 () Bool)

(declare-fun e!3853110 () Bool)

(assert (=> b!6343822 (= e!3853110 (isEmptyExpr!1649 lt!2362961))))

(declare-fun b!6343824 () Bool)

(assert (=> b!6343824 (= e!3853111 (isConcat!1172 lt!2362961))))

(declare-fun b!6343825 () Bool)

(declare-fun e!3853109 () Regex!16247)

(assert (=> b!6343825 (= e!3853109 (Concat!25092 (h!71364 lt!2362861) (generalisedConcat!1844 (t!378628 lt!2362861))))))

(declare-fun b!6343826 () Bool)

(assert (=> b!6343826 (= e!3853110 e!3853111)))

(declare-fun c!1153600 () Bool)

(assert (=> b!6343826 (= c!1153600 (isEmpty!36998 (tail!12071 lt!2362861)))))

(declare-fun b!6343827 () Bool)

(assert (=> b!6343827 (= e!3853109 EmptyExpr!16247)))

(declare-fun b!6343828 () Bool)

(assert (=> b!6343828 (= e!3853113 e!3853109)))

(declare-fun c!1153602 () Bool)

(assert (=> b!6343828 (= c!1153602 ((_ is Cons!64916) lt!2362861))))

(declare-fun b!6343823 () Bool)

(declare-fun e!3853112 () Bool)

(assert (=> b!6343823 (= e!3853112 e!3853110)))

(declare-fun c!1153599 () Bool)

(assert (=> b!6343823 (= c!1153599 (isEmpty!36998 lt!2362861))))

(assert (=> d!1991013 e!3853112))

(declare-fun res!2610525 () Bool)

(assert (=> d!1991013 (=> (not res!2610525) (not e!3853112))))

(assert (=> d!1991013 (= res!2610525 (validRegex!7983 lt!2362961))))

(assert (=> d!1991013 (= lt!2362961 e!3853113)))

(declare-fun c!1153601 () Bool)

(assert (=> d!1991013 (= c!1153601 e!3853114)))

(declare-fun res!2610524 () Bool)

(assert (=> d!1991013 (=> (not res!2610524) (not e!3853114))))

(assert (=> d!1991013 (= res!2610524 ((_ is Cons!64916) lt!2362861))))

(assert (=> d!1991013 (forall!15405 lt!2362861 lambda!348607)))

(assert (=> d!1991013 (= (generalisedConcat!1844 lt!2362861) lt!2362961)))

(assert (= (and d!1991013 res!2610524) b!6343819))

(assert (= (and d!1991013 c!1153601) b!6343820))

(assert (= (and d!1991013 (not c!1153601)) b!6343828))

(assert (= (and b!6343828 c!1153602) b!6343825))

(assert (= (and b!6343828 (not c!1153602)) b!6343827))

(assert (= (and d!1991013 res!2610525) b!6343823))

(assert (= (and b!6343823 c!1153599) b!6343822))

(assert (= (and b!6343823 (not c!1153599)) b!6343826))

(assert (= (and b!6343826 c!1153600) b!6343821))

(assert (= (and b!6343826 (not c!1153600)) b!6343824))

(declare-fun m!7151942 () Bool)

(assert (=> b!6343821 m!7151942))

(declare-fun m!7151944 () Bool)

(assert (=> b!6343823 m!7151944))

(declare-fun m!7151946 () Bool)

(assert (=> b!6343826 m!7151946))

(assert (=> b!6343826 m!7151946))

(declare-fun m!7151948 () Bool)

(assert (=> b!6343826 m!7151948))

(declare-fun m!7151950 () Bool)

(assert (=> b!6343822 m!7151950))

(declare-fun m!7151952 () Bool)

(assert (=> d!1991013 m!7151952))

(declare-fun m!7151954 () Bool)

(assert (=> d!1991013 m!7151954))

(declare-fun m!7151956 () Bool)

(assert (=> b!6343825 m!7151956))

(declare-fun m!7151958 () Bool)

(assert (=> b!6343819 m!7151958))

(declare-fun m!7151960 () Bool)

(assert (=> b!6343824 m!7151960))

(assert (=> b!6343282 d!1991013))

(declare-fun b!6343880 () Bool)

(declare-fun e!3853144 () Bool)

(declare-fun e!3853148 () Bool)

(assert (=> b!6343880 (= e!3853144 e!3853148)))

(declare-fun res!2610547 () Bool)

(assert (=> b!6343880 (=> res!2610547 e!3853148)))

(declare-fun call!540767 () Bool)

(assert (=> b!6343880 (= res!2610547 call!540767)))

(declare-fun d!1991015 () Bool)

(declare-fun e!3853143 () Bool)

(assert (=> d!1991015 e!3853143))

(declare-fun c!1153620 () Bool)

(assert (=> d!1991015 (= c!1153620 ((_ is EmptyExpr!16247) lt!2362848))))

(declare-fun lt!2362977 () Bool)

(declare-fun e!3853142 () Bool)

(assert (=> d!1991015 (= lt!2362977 e!3853142)))

(declare-fun c!1153619 () Bool)

(assert (=> d!1991015 (= c!1153619 (isEmpty!37002 s!2326))))

(assert (=> d!1991015 (validRegex!7983 lt!2362848)))

(assert (=> d!1991015 (= (matchR!8430 lt!2362848 s!2326) lt!2362977)))

(declare-fun b!6343881 () Bool)

(declare-fun res!2610552 () Bool)

(declare-fun e!3853145 () Bool)

(assert (=> b!6343881 (=> res!2610552 e!3853145)))

(assert (=> b!6343881 (= res!2610552 (not ((_ is ElementMatch!16247) lt!2362848)))))

(declare-fun e!3853147 () Bool)

(assert (=> b!6343881 (= e!3853147 e!3853145)))

(declare-fun b!6343882 () Bool)

(declare-fun e!3853146 () Bool)

(declare-fun head!12987 (List!65042) C!32764)

(assert (=> b!6343882 (= e!3853146 (= (head!12987 s!2326) (c!1153432 lt!2362848)))))

(declare-fun b!6343885 () Bool)

(assert (=> b!6343885 (= e!3853147 (not lt!2362977))))

(declare-fun b!6343886 () Bool)

(assert (=> b!6343886 (= e!3853148 (not (= (head!12987 s!2326) (c!1153432 lt!2362848))))))

(declare-fun bm!540762 () Bool)

(assert (=> bm!540762 (= call!540767 (isEmpty!37002 s!2326))))

(declare-fun b!6343887 () Bool)

(assert (=> b!6343887 (= e!3853145 e!3853144)))

(declare-fun res!2610551 () Bool)

(assert (=> b!6343887 (=> (not res!2610551) (not e!3853144))))

(assert (=> b!6343887 (= res!2610551 (not lt!2362977))))

(declare-fun b!6343888 () Bool)

(assert (=> b!6343888 (= e!3853143 e!3853147)))

(declare-fun c!1153621 () Bool)

(assert (=> b!6343888 (= c!1153621 ((_ is EmptyLang!16247) lt!2362848))))

(declare-fun b!6343889 () Bool)

(declare-fun res!2610550 () Bool)

(assert (=> b!6343889 (=> (not res!2610550) (not e!3853146))))

(declare-fun tail!12072 (List!65042) List!65042)

(assert (=> b!6343889 (= res!2610550 (isEmpty!37002 (tail!12072 s!2326)))))

(declare-fun b!6343890 () Bool)

(assert (=> b!6343890 (= e!3853142 (nullable!6240 lt!2362848))))

(declare-fun b!6343891 () Bool)

(declare-fun res!2610554 () Bool)

(assert (=> b!6343891 (=> res!2610554 e!3853148)))

(assert (=> b!6343891 (= res!2610554 (not (isEmpty!37002 (tail!12072 s!2326))))))

(declare-fun b!6343892 () Bool)

(declare-fun res!2610553 () Bool)

(assert (=> b!6343892 (=> res!2610553 e!3853145)))

(assert (=> b!6343892 (= res!2610553 e!3853146)))

(declare-fun res!2610549 () Bool)

(assert (=> b!6343892 (=> (not res!2610549) (not e!3853146))))

(assert (=> b!6343892 (= res!2610549 lt!2362977)))

(declare-fun b!6343893 () Bool)

(declare-fun derivativeStep!4952 (Regex!16247 C!32764) Regex!16247)

(assert (=> b!6343893 (= e!3853142 (matchR!8430 (derivativeStep!4952 lt!2362848 (head!12987 s!2326)) (tail!12072 s!2326)))))

(declare-fun b!6343894 () Bool)

(assert (=> b!6343894 (= e!3853143 (= lt!2362977 call!540767))))

(declare-fun b!6343895 () Bool)

(declare-fun res!2610548 () Bool)

(assert (=> b!6343895 (=> (not res!2610548) (not e!3853146))))

(assert (=> b!6343895 (= res!2610548 (not call!540767))))

(assert (= (and d!1991015 c!1153619) b!6343890))

(assert (= (and d!1991015 (not c!1153619)) b!6343893))

(assert (= (and d!1991015 c!1153620) b!6343894))

(assert (= (and d!1991015 (not c!1153620)) b!6343888))

(assert (= (and b!6343888 c!1153621) b!6343885))

(assert (= (and b!6343888 (not c!1153621)) b!6343881))

(assert (= (and b!6343881 (not res!2610552)) b!6343892))

(assert (= (and b!6343892 res!2610549) b!6343895))

(assert (= (and b!6343895 res!2610548) b!6343889))

(assert (= (and b!6343889 res!2610550) b!6343882))

(assert (= (and b!6343892 (not res!2610553)) b!6343887))

(assert (= (and b!6343887 res!2610551) b!6343880))

(assert (= (and b!6343880 (not res!2610547)) b!6343891))

(assert (= (and b!6343891 (not res!2610554)) b!6343886))

(assert (= (or b!6343894 b!6343880 b!6343895) bm!540762))

(assert (=> bm!540762 m!7151938))

(declare-fun m!7152020 () Bool)

(assert (=> b!6343891 m!7152020))

(assert (=> b!6343891 m!7152020))

(declare-fun m!7152022 () Bool)

(assert (=> b!6343891 m!7152022))

(assert (=> b!6343889 m!7152020))

(assert (=> b!6343889 m!7152020))

(assert (=> b!6343889 m!7152022))

(declare-fun m!7152024 () Bool)

(assert (=> b!6343890 m!7152024))

(declare-fun m!7152026 () Bool)

(assert (=> b!6343893 m!7152026))

(assert (=> b!6343893 m!7152026))

(declare-fun m!7152028 () Bool)

(assert (=> b!6343893 m!7152028))

(assert (=> b!6343893 m!7152020))

(assert (=> b!6343893 m!7152028))

(assert (=> b!6343893 m!7152020))

(declare-fun m!7152030 () Bool)

(assert (=> b!6343893 m!7152030))

(assert (=> b!6343886 m!7152026))

(assert (=> b!6343882 m!7152026))

(assert (=> d!1991015 m!7151938))

(assert (=> d!1991015 m!7151770))

(assert (=> b!6343282 d!1991015))

(declare-fun d!1991033 () Bool)

(declare-fun c!1153624 () Bool)

(assert (=> d!1991033 (= c!1153624 (isEmpty!37002 s!2326))))

(declare-fun e!3853169 () Bool)

(assert (=> d!1991033 (= (matchZipper!2259 lt!2362865 s!2326) e!3853169)))

(declare-fun b!6343940 () Bool)

(declare-fun nullableZipper!2013 ((InoxSet Context!11262)) Bool)

(assert (=> b!6343940 (= e!3853169 (nullableZipper!2013 lt!2362865))))

(declare-fun b!6343941 () Bool)

(assert (=> b!6343941 (= e!3853169 (matchZipper!2259 (derivationStepZipper!2213 lt!2362865 (head!12987 s!2326)) (tail!12072 s!2326)))))

(assert (= (and d!1991033 c!1153624) b!6343940))

(assert (= (and d!1991033 (not c!1153624)) b!6343941))

(assert (=> d!1991033 m!7151938))

(declare-fun m!7152036 () Bool)

(assert (=> b!6343940 m!7152036))

(assert (=> b!6343941 m!7152026))

(assert (=> b!6343941 m!7152026))

(declare-fun m!7152038 () Bool)

(assert (=> b!6343941 m!7152038))

(assert (=> b!6343941 m!7152020))

(assert (=> b!6343941 m!7152038))

(assert (=> b!6343941 m!7152020))

(declare-fun m!7152040 () Bool)

(assert (=> b!6343941 m!7152040))

(assert (=> b!6343282 d!1991033))

(declare-fun bs!1588657 () Bool)

(declare-fun b!6343956 () Bool)

(assert (= bs!1588657 (and b!6343956 b!6343279)))

(declare-fun lambda!348618 () Int)

(assert (=> bs!1588657 (not (= lambda!348618 lambda!348546))))

(declare-fun bs!1588658 () Bool)

(assert (= bs!1588658 (and b!6343956 b!6343803)))

(assert (=> bs!1588658 (not (= lambda!348618 lambda!348602))))

(declare-fun bs!1588659 () Bool)

(assert (= bs!1588659 (and b!6343956 b!6343807)))

(assert (=> bs!1588659 (= (and (= (reg!16576 r!7292) (reg!16576 lt!2362848)) (= r!7292 lt!2362848)) (= lambda!348618 lambda!348599))))

(declare-fun bs!1588660 () Bool)

(assert (= bs!1588660 (and b!6343956 d!1990929)))

(assert (=> bs!1588660 (not (= lambda!348618 lambda!348565))))

(assert (=> bs!1588657 (not (= lambda!348618 lambda!348545))))

(declare-fun bs!1588661 () Bool)

(assert (= bs!1588661 (and b!6343956 d!1990939)))

(assert (=> bs!1588661 (not (= lambda!348618 lambda!348577))))

(assert (=> bs!1588661 (not (= lambda!348618 lambda!348576))))

(assert (=> b!6343956 true))

(assert (=> b!6343956 true))

(declare-fun bs!1588662 () Bool)

(declare-fun b!6343952 () Bool)

(assert (= bs!1588662 (and b!6343952 b!6343956)))

(declare-fun lambda!348619 () Int)

(assert (=> bs!1588662 (not (= lambda!348619 lambda!348618))))

(declare-fun bs!1588663 () Bool)

(assert (= bs!1588663 (and b!6343952 b!6343279)))

(assert (=> bs!1588663 (= lambda!348619 lambda!348546)))

(declare-fun bs!1588664 () Bool)

(assert (= bs!1588664 (and b!6343952 b!6343803)))

(assert (=> bs!1588664 (= (and (= (regOne!33006 r!7292) (regOne!33006 lt!2362848)) (= (regTwo!33006 r!7292) (regTwo!33006 lt!2362848))) (= lambda!348619 lambda!348602))))

(declare-fun bs!1588665 () Bool)

(assert (= bs!1588665 (and b!6343952 b!6343807)))

(assert (=> bs!1588665 (not (= lambda!348619 lambda!348599))))

(declare-fun bs!1588666 () Bool)

(assert (= bs!1588666 (and b!6343952 d!1990929)))

(assert (=> bs!1588666 (not (= lambda!348619 lambda!348565))))

(assert (=> bs!1588663 (not (= lambda!348619 lambda!348545))))

(declare-fun bs!1588667 () Bool)

(assert (= bs!1588667 (and b!6343952 d!1990939)))

(assert (=> bs!1588667 (= lambda!348619 lambda!348577)))

(assert (=> bs!1588667 (not (= lambda!348619 lambda!348576))))

(assert (=> b!6343952 true))

(assert (=> b!6343952 true))

(declare-fun b!6343951 () Bool)

(declare-fun c!1153628 () Bool)

(assert (=> b!6343951 (= c!1153628 ((_ is Union!16247) r!7292))))

(declare-fun e!3853178 () Bool)

(declare-fun e!3853174 () Bool)

(assert (=> b!6343951 (= e!3853178 e!3853174)))

(declare-fun e!3853176 () Bool)

(declare-fun call!540768 () Bool)

(assert (=> b!6343952 (= e!3853176 call!540768)))

(declare-fun c!1153625 () Bool)

(declare-fun bm!540763 () Bool)

(assert (=> bm!540763 (= call!540768 (Exists!3317 (ite c!1153625 lambda!348618 lambda!348619)))))

(declare-fun b!6343953 () Bool)

(declare-fun e!3853175 () Bool)

(declare-fun e!3853173 () Bool)

(assert (=> b!6343953 (= e!3853175 e!3853173)))

(declare-fun res!2610557 () Bool)

(assert (=> b!6343953 (= res!2610557 (not ((_ is EmptyLang!16247) r!7292)))))

(assert (=> b!6343953 (=> (not res!2610557) (not e!3853173))))

(declare-fun b!6343954 () Bool)

(declare-fun call!540769 () Bool)

(assert (=> b!6343954 (= e!3853175 call!540769)))

(declare-fun b!6343955 () Bool)

(declare-fun c!1153627 () Bool)

(assert (=> b!6343955 (= c!1153627 ((_ is ElementMatch!16247) r!7292))))

(assert (=> b!6343955 (= e!3853173 e!3853178)))

(declare-fun e!3853179 () Bool)

(assert (=> b!6343956 (= e!3853179 call!540768)))

(declare-fun b!6343957 () Bool)

(declare-fun e!3853177 () Bool)

(assert (=> b!6343957 (= e!3853177 (matchRSpec!3348 (regTwo!33007 r!7292) s!2326))))

(declare-fun b!6343958 () Bool)

(declare-fun res!2610555 () Bool)

(assert (=> b!6343958 (=> res!2610555 e!3853179)))

(assert (=> b!6343958 (= res!2610555 call!540769)))

(assert (=> b!6343958 (= e!3853176 e!3853179)))

(declare-fun bm!540764 () Bool)

(assert (=> bm!540764 (= call!540769 (isEmpty!37002 s!2326))))

(declare-fun d!1991035 () Bool)

(declare-fun c!1153626 () Bool)

(assert (=> d!1991035 (= c!1153626 ((_ is EmptyExpr!16247) r!7292))))

(assert (=> d!1991035 (= (matchRSpec!3348 r!7292 s!2326) e!3853175)))

(declare-fun b!6343959 () Bool)

(assert (=> b!6343959 (= e!3853174 e!3853177)))

(declare-fun res!2610556 () Bool)

(assert (=> b!6343959 (= res!2610556 (matchRSpec!3348 (regOne!33007 r!7292) s!2326))))

(assert (=> b!6343959 (=> res!2610556 e!3853177)))

(declare-fun b!6343960 () Bool)

(assert (=> b!6343960 (= e!3853178 (= s!2326 (Cons!64918 (c!1153432 r!7292) Nil!64918)))))

(declare-fun b!6343961 () Bool)

(assert (=> b!6343961 (= e!3853174 e!3853176)))

(assert (=> b!6343961 (= c!1153625 ((_ is Star!16247) r!7292))))

(assert (= (and d!1991035 c!1153626) b!6343954))

(assert (= (and d!1991035 (not c!1153626)) b!6343953))

(assert (= (and b!6343953 res!2610557) b!6343955))

(assert (= (and b!6343955 c!1153627) b!6343960))

(assert (= (and b!6343955 (not c!1153627)) b!6343951))

(assert (= (and b!6343951 c!1153628) b!6343959))

(assert (= (and b!6343951 (not c!1153628)) b!6343961))

(assert (= (and b!6343959 (not res!2610556)) b!6343957))

(assert (= (and b!6343961 c!1153625) b!6343958))

(assert (= (and b!6343961 (not c!1153625)) b!6343952))

(assert (= (and b!6343958 (not res!2610555)) b!6343956))

(assert (= (or b!6343956 b!6343952) bm!540763))

(assert (= (or b!6343954 b!6343958) bm!540764))

(declare-fun m!7152042 () Bool)

(assert (=> bm!540763 m!7152042))

(declare-fun m!7152044 () Bool)

(assert (=> b!6343957 m!7152044))

(assert (=> bm!540764 m!7151938))

(declare-fun m!7152046 () Bool)

(assert (=> b!6343959 m!7152046))

(assert (=> b!6343263 d!1991035))

(declare-fun b!6343967 () Bool)

(declare-fun e!3853184 () Bool)

(declare-fun e!3853188 () Bool)

(assert (=> b!6343967 (= e!3853184 e!3853188)))

(declare-fun res!2610558 () Bool)

(assert (=> b!6343967 (=> res!2610558 e!3853188)))

(declare-fun call!540770 () Bool)

(assert (=> b!6343967 (= res!2610558 call!540770)))

(declare-fun d!1991041 () Bool)

(declare-fun e!3853183 () Bool)

(assert (=> d!1991041 e!3853183))

(declare-fun c!1153630 () Bool)

(assert (=> d!1991041 (= c!1153630 ((_ is EmptyExpr!16247) r!7292))))

(declare-fun lt!2362978 () Bool)

(declare-fun e!3853182 () Bool)

(assert (=> d!1991041 (= lt!2362978 e!3853182)))

(declare-fun c!1153629 () Bool)

(assert (=> d!1991041 (= c!1153629 (isEmpty!37002 s!2326))))

(assert (=> d!1991041 (validRegex!7983 r!7292)))

(assert (=> d!1991041 (= (matchR!8430 r!7292 s!2326) lt!2362978)))

(declare-fun b!6343968 () Bool)

(declare-fun res!2610563 () Bool)

(declare-fun e!3853185 () Bool)

(assert (=> b!6343968 (=> res!2610563 e!3853185)))

(assert (=> b!6343968 (= res!2610563 (not ((_ is ElementMatch!16247) r!7292)))))

(declare-fun e!3853187 () Bool)

(assert (=> b!6343968 (= e!3853187 e!3853185)))

(declare-fun b!6343969 () Bool)

(declare-fun e!3853186 () Bool)

(assert (=> b!6343969 (= e!3853186 (= (head!12987 s!2326) (c!1153432 r!7292)))))

(declare-fun b!6343970 () Bool)

(assert (=> b!6343970 (= e!3853187 (not lt!2362978))))

(declare-fun b!6343971 () Bool)

(assert (=> b!6343971 (= e!3853188 (not (= (head!12987 s!2326) (c!1153432 r!7292))))))

(declare-fun bm!540765 () Bool)

(assert (=> bm!540765 (= call!540770 (isEmpty!37002 s!2326))))

(declare-fun b!6343972 () Bool)

(assert (=> b!6343972 (= e!3853185 e!3853184)))

(declare-fun res!2610562 () Bool)

(assert (=> b!6343972 (=> (not res!2610562) (not e!3853184))))

(assert (=> b!6343972 (= res!2610562 (not lt!2362978))))

(declare-fun b!6343973 () Bool)

(assert (=> b!6343973 (= e!3853183 e!3853187)))

(declare-fun c!1153631 () Bool)

(assert (=> b!6343973 (= c!1153631 ((_ is EmptyLang!16247) r!7292))))

(declare-fun b!6343974 () Bool)

(declare-fun res!2610561 () Bool)

(assert (=> b!6343974 (=> (not res!2610561) (not e!3853186))))

(assert (=> b!6343974 (= res!2610561 (isEmpty!37002 (tail!12072 s!2326)))))

(declare-fun b!6343975 () Bool)

(assert (=> b!6343975 (= e!3853182 (nullable!6240 r!7292))))

(declare-fun b!6343976 () Bool)

(declare-fun res!2610565 () Bool)

(assert (=> b!6343976 (=> res!2610565 e!3853188)))

(assert (=> b!6343976 (= res!2610565 (not (isEmpty!37002 (tail!12072 s!2326))))))

(declare-fun b!6343977 () Bool)

(declare-fun res!2610564 () Bool)

(assert (=> b!6343977 (=> res!2610564 e!3853185)))

(assert (=> b!6343977 (= res!2610564 e!3853186)))

(declare-fun res!2610560 () Bool)

(assert (=> b!6343977 (=> (not res!2610560) (not e!3853186))))

(assert (=> b!6343977 (= res!2610560 lt!2362978)))

(declare-fun b!6343978 () Bool)

(assert (=> b!6343978 (= e!3853182 (matchR!8430 (derivativeStep!4952 r!7292 (head!12987 s!2326)) (tail!12072 s!2326)))))

(declare-fun b!6343979 () Bool)

(assert (=> b!6343979 (= e!3853183 (= lt!2362978 call!540770))))

(declare-fun b!6343980 () Bool)

(declare-fun res!2610559 () Bool)

(assert (=> b!6343980 (=> (not res!2610559) (not e!3853186))))

(assert (=> b!6343980 (= res!2610559 (not call!540770))))

(assert (= (and d!1991041 c!1153629) b!6343975))

(assert (= (and d!1991041 (not c!1153629)) b!6343978))

(assert (= (and d!1991041 c!1153630) b!6343979))

(assert (= (and d!1991041 (not c!1153630)) b!6343973))

(assert (= (and b!6343973 c!1153631) b!6343970))

(assert (= (and b!6343973 (not c!1153631)) b!6343968))

(assert (= (and b!6343968 (not res!2610563)) b!6343977))

(assert (= (and b!6343977 res!2610560) b!6343980))

(assert (= (and b!6343980 res!2610559) b!6343974))

(assert (= (and b!6343974 res!2610561) b!6343969))

(assert (= (and b!6343977 (not res!2610564)) b!6343972))

(assert (= (and b!6343972 res!2610562) b!6343967))

(assert (= (and b!6343967 (not res!2610558)) b!6343976))

(assert (= (and b!6343976 (not res!2610565)) b!6343971))

(assert (= (or b!6343979 b!6343967 b!6343980) bm!540765))

(assert (=> bm!540765 m!7151938))

(assert (=> b!6343976 m!7152020))

(assert (=> b!6343976 m!7152020))

(assert (=> b!6343976 m!7152022))

(assert (=> b!6343974 m!7152020))

(assert (=> b!6343974 m!7152020))

(assert (=> b!6343974 m!7152022))

(declare-fun m!7152048 () Bool)

(assert (=> b!6343975 m!7152048))

(assert (=> b!6343978 m!7152026))

(assert (=> b!6343978 m!7152026))

(declare-fun m!7152050 () Bool)

(assert (=> b!6343978 m!7152050))

(assert (=> b!6343978 m!7152020))

(assert (=> b!6343978 m!7152050))

(assert (=> b!6343978 m!7152020))

(declare-fun m!7152052 () Bool)

(assert (=> b!6343978 m!7152052))

(assert (=> b!6343971 m!7152026))

(assert (=> b!6343969 m!7152026))

(assert (=> d!1991041 m!7151938))

(assert (=> d!1991041 m!7151564))

(assert (=> b!6343263 d!1991041))

(declare-fun d!1991043 () Bool)

(assert (=> d!1991043 (= (matchR!8430 r!7292 s!2326) (matchRSpec!3348 r!7292 s!2326))))

(declare-fun lt!2362979 () Unit!158319)

(assert (=> d!1991043 (= lt!2362979 (choose!47038 r!7292 s!2326))))

(assert (=> d!1991043 (validRegex!7983 r!7292)))

(assert (=> d!1991043 (= (mainMatchTheorem!3348 r!7292 s!2326) lt!2362979)))

(declare-fun bs!1588668 () Bool)

(assert (= bs!1588668 d!1991043))

(assert (=> bs!1588668 m!7151494))

(assert (=> bs!1588668 m!7151492))

(declare-fun m!7152054 () Bool)

(assert (=> bs!1588668 m!7152054))

(assert (=> bs!1588668 m!7151564))

(assert (=> b!6343263 d!1991043))

(declare-fun b!6344003 () Bool)

(declare-fun e!3853204 () (InoxSet Context!11262))

(assert (=> b!6344003 (= e!3853204 (store ((as const (Array Context!11262 Bool)) false) lt!2362872 true))))

(declare-fun b!6344004 () Bool)

(declare-fun e!3853206 () (InoxSet Context!11262))

(declare-fun e!3853201 () (InoxSet Context!11262))

(assert (=> b!6344004 (= e!3853206 e!3853201)))

(declare-fun c!1153645 () Bool)

(assert (=> b!6344004 (= c!1153645 ((_ is Concat!25092) (h!71364 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6344005 () Bool)

(declare-fun e!3853202 () (InoxSet Context!11262))

(declare-fun call!540786 () (InoxSet Context!11262))

(declare-fun call!540788 () (InoxSet Context!11262))

(assert (=> b!6344005 (= e!3853202 ((_ map or) call!540786 call!540788))))

(declare-fun bm!540779 () Bool)

(declare-fun call!540784 () (InoxSet Context!11262))

(declare-fun call!540787 () (InoxSet Context!11262))

(assert (=> bm!540779 (= call!540784 call!540787)))

(declare-fun b!6344006 () Bool)

(assert (=> b!6344006 (= e!3853201 call!540784)))

(declare-fun b!6344007 () Bool)

(declare-fun e!3853203 () Bool)

(assert (=> b!6344007 (= e!3853203 (nullable!6240 (regOne!33006 (h!71364 (exprs!6131 (h!71365 zl!343))))))))

(declare-fun bm!540780 () Bool)

(declare-fun c!1153644 () Bool)

(declare-fun c!1153643 () Bool)

(declare-fun call!540783 () List!65040)

(assert (=> bm!540780 (= call!540786 (derivationStepZipperDown!1495 (ite c!1153643 (regOne!33007 (h!71364 (exprs!6131 (h!71365 zl!343)))) (ite c!1153644 (regTwo!33006 (h!71364 (exprs!6131 (h!71365 zl!343)))) (ite c!1153645 (regOne!33006 (h!71364 (exprs!6131 (h!71365 zl!343)))) (reg!16576 (h!71364 (exprs!6131 (h!71365 zl!343))))))) (ite (or c!1153643 c!1153644) lt!2362872 (Context!11263 call!540783)) (h!71366 s!2326)))))

(declare-fun bm!540781 () Bool)

(declare-fun call!540785 () List!65040)

(assert (=> bm!540781 (= call!540783 call!540785)))

(declare-fun b!6344008 () Bool)

(assert (=> b!6344008 (= e!3853204 e!3853202)))

(assert (=> b!6344008 (= c!1153643 ((_ is Union!16247) (h!71364 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun d!1991045 () Bool)

(declare-fun c!1153642 () Bool)

(assert (=> d!1991045 (= c!1153642 (and ((_ is ElementMatch!16247) (h!71364 (exprs!6131 (h!71365 zl!343)))) (= (c!1153432 (h!71364 (exprs!6131 (h!71365 zl!343)))) (h!71366 s!2326))))))

(assert (=> d!1991045 (= (derivationStepZipperDown!1495 (h!71364 (exprs!6131 (h!71365 zl!343))) lt!2362872 (h!71366 s!2326)) e!3853204)))

(declare-fun bm!540778 () Bool)

(declare-fun $colon$colon!2108 (List!65040 Regex!16247) List!65040)

(assert (=> bm!540778 (= call!540785 ($colon$colon!2108 (exprs!6131 lt!2362872) (ite (or c!1153644 c!1153645) (regTwo!33006 (h!71364 (exprs!6131 (h!71365 zl!343)))) (h!71364 (exprs!6131 (h!71365 zl!343))))))))

(declare-fun bm!540782 () Bool)

(assert (=> bm!540782 (= call!540788 (derivationStepZipperDown!1495 (ite c!1153643 (regTwo!33007 (h!71364 (exprs!6131 (h!71365 zl!343)))) (regOne!33006 (h!71364 (exprs!6131 (h!71365 zl!343))))) (ite c!1153643 lt!2362872 (Context!11263 call!540785)) (h!71366 s!2326)))))

(declare-fun b!6344009 () Bool)

(declare-fun e!3853205 () (InoxSet Context!11262))

(assert (=> b!6344009 (= e!3853205 ((as const (Array Context!11262 Bool)) false))))

(declare-fun b!6344010 () Bool)

(declare-fun c!1153646 () Bool)

(assert (=> b!6344010 (= c!1153646 ((_ is Star!16247) (h!71364 (exprs!6131 (h!71365 zl!343)))))))

(assert (=> b!6344010 (= e!3853201 e!3853205)))

(declare-fun b!6344011 () Bool)

(assert (=> b!6344011 (= e!3853205 call!540784)))

(declare-fun b!6344012 () Bool)

(assert (=> b!6344012 (= e!3853206 ((_ map or) call!540788 call!540787))))

(declare-fun bm!540783 () Bool)

(assert (=> bm!540783 (= call!540787 call!540786)))

(declare-fun b!6344013 () Bool)

(assert (=> b!6344013 (= c!1153644 e!3853203)))

(declare-fun res!2610568 () Bool)

(assert (=> b!6344013 (=> (not res!2610568) (not e!3853203))))

(assert (=> b!6344013 (= res!2610568 ((_ is Concat!25092) (h!71364 (exprs!6131 (h!71365 zl!343)))))))

(assert (=> b!6344013 (= e!3853202 e!3853206)))

(assert (= (and d!1991045 c!1153642) b!6344003))

(assert (= (and d!1991045 (not c!1153642)) b!6344008))

(assert (= (and b!6344008 c!1153643) b!6344005))

(assert (= (and b!6344008 (not c!1153643)) b!6344013))

(assert (= (and b!6344013 res!2610568) b!6344007))

(assert (= (and b!6344013 c!1153644) b!6344012))

(assert (= (and b!6344013 (not c!1153644)) b!6344004))

(assert (= (and b!6344004 c!1153645) b!6344006))

(assert (= (and b!6344004 (not c!1153645)) b!6344010))

(assert (= (and b!6344010 c!1153646) b!6344011))

(assert (= (and b!6344010 (not c!1153646)) b!6344009))

(assert (= (or b!6344006 b!6344011) bm!540781))

(assert (= (or b!6344006 b!6344011) bm!540779))

(assert (= (or b!6344012 bm!540781) bm!540778))

(assert (= (or b!6344012 bm!540779) bm!540783))

(assert (= (or b!6344005 b!6344012) bm!540782))

(assert (= (or b!6344005 bm!540783) bm!540780))

(declare-fun m!7152056 () Bool)

(assert (=> bm!540780 m!7152056))

(declare-fun m!7152058 () Bool)

(assert (=> bm!540782 m!7152058))

(declare-fun m!7152060 () Bool)

(assert (=> b!6344003 m!7152060))

(declare-fun m!7152062 () Bool)

(assert (=> bm!540778 m!7152062))

(declare-fun m!7152064 () Bool)

(assert (=> b!6344007 m!7152064))

(assert (=> b!6343256 d!1991045))

(declare-fun d!1991047 () Bool)

(assert (=> d!1991047 (= (nullable!6240 (h!71364 (exprs!6131 (h!71365 zl!343)))) (nullableFct!2186 (h!71364 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun bs!1588669 () Bool)

(assert (= bs!1588669 d!1991047))

(declare-fun m!7152066 () Bool)

(assert (=> bs!1588669 m!7152066))

(assert (=> b!6343256 d!1991047))

(declare-fun b!6344024 () Bool)

(declare-fun e!3853213 () Bool)

(assert (=> b!6344024 (= e!3853213 (nullable!6240 (h!71364 (exprs!6131 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343)))))))))))

(declare-fun b!6344025 () Bool)

(declare-fun e!3853215 () (InoxSet Context!11262))

(declare-fun call!540791 () (InoxSet Context!11262))

(assert (=> b!6344025 (= e!3853215 call!540791)))

(declare-fun d!1991049 () Bool)

(declare-fun c!1153652 () Bool)

(assert (=> d!1991049 (= c!1153652 e!3853213)))

(declare-fun res!2610571 () Bool)

(assert (=> d!1991049 (=> (not res!2610571) (not e!3853213))))

(assert (=> d!1991049 (= res!2610571 ((_ is Cons!64916) (exprs!6131 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343))))))))))

(declare-fun e!3853214 () (InoxSet Context!11262))

(assert (=> d!1991049 (= (derivationStepZipperUp!1421 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343))))) (h!71366 s!2326)) e!3853214)))

(declare-fun b!6344026 () Bool)

(assert (=> b!6344026 (= e!3853215 ((as const (Array Context!11262 Bool)) false))))

(declare-fun b!6344027 () Bool)

(assert (=> b!6344027 (= e!3853214 e!3853215)))

(declare-fun c!1153651 () Bool)

(assert (=> b!6344027 (= c!1153651 ((_ is Cons!64916) (exprs!6131 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343))))))))))

(declare-fun bm!540786 () Bool)

(assert (=> bm!540786 (= call!540791 (derivationStepZipperDown!1495 (h!71364 (exprs!6131 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343))))))) (Context!11263 (t!378628 (exprs!6131 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343)))))))) (h!71366 s!2326)))))

(declare-fun b!6344028 () Bool)

(assert (=> b!6344028 (= e!3853214 ((_ map or) call!540791 (derivationStepZipperUp!1421 (Context!11263 (t!378628 (exprs!6131 (Context!11263 (Cons!64916 (h!71364 (exprs!6131 (h!71365 zl!343))) (t!378628 (exprs!6131 (h!71365 zl!343)))))))) (h!71366 s!2326))))))

(assert (= (and d!1991049 res!2610571) b!6344024))

(assert (= (and d!1991049 c!1153652) b!6344028))

(assert (= (and d!1991049 (not c!1153652)) b!6344027))

(assert (= (and b!6344027 c!1153651) b!6344025))

(assert (= (and b!6344027 (not c!1153651)) b!6344026))

(assert (= (or b!6344028 b!6344025) bm!540786))

(declare-fun m!7152068 () Bool)

(assert (=> b!6344024 m!7152068))

(declare-fun m!7152070 () Bool)

(assert (=> bm!540786 m!7152070))

(declare-fun m!7152072 () Bool)

(assert (=> b!6344028 m!7152072))

(assert (=> b!6343256 d!1991049))

(declare-fun d!1991051 () Bool)

(declare-fun choose!47043 ((InoxSet Context!11262) Int) (InoxSet Context!11262))

(assert (=> d!1991051 (= (flatMap!1752 z!1189 lambda!348547) (choose!47043 z!1189 lambda!348547))))

(declare-fun bs!1588670 () Bool)

(assert (= bs!1588670 d!1991051))

(declare-fun m!7152074 () Bool)

(assert (=> bs!1588670 m!7152074))

(assert (=> b!6343256 d!1991051))

(declare-fun b!6344029 () Bool)

(declare-fun e!3853216 () Bool)

(assert (=> b!6344029 (= e!3853216 (nullable!6240 (h!71364 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6344030 () Bool)

(declare-fun e!3853218 () (InoxSet Context!11262))

(declare-fun call!540792 () (InoxSet Context!11262))

(assert (=> b!6344030 (= e!3853218 call!540792)))

(declare-fun d!1991053 () Bool)

(declare-fun c!1153654 () Bool)

(assert (=> d!1991053 (= c!1153654 e!3853216)))

(declare-fun res!2610572 () Bool)

(assert (=> d!1991053 (=> (not res!2610572) (not e!3853216))))

(assert (=> d!1991053 (= res!2610572 ((_ is Cons!64916) (exprs!6131 (h!71365 zl!343))))))

(declare-fun e!3853217 () (InoxSet Context!11262))

(assert (=> d!1991053 (= (derivationStepZipperUp!1421 (h!71365 zl!343) (h!71366 s!2326)) e!3853217)))

(declare-fun b!6344031 () Bool)

(assert (=> b!6344031 (= e!3853218 ((as const (Array Context!11262 Bool)) false))))

(declare-fun b!6344032 () Bool)

(assert (=> b!6344032 (= e!3853217 e!3853218)))

(declare-fun c!1153653 () Bool)

(assert (=> b!6344032 (= c!1153653 ((_ is Cons!64916) (exprs!6131 (h!71365 zl!343))))))

(declare-fun bm!540787 () Bool)

(assert (=> bm!540787 (= call!540792 (derivationStepZipperDown!1495 (h!71364 (exprs!6131 (h!71365 zl!343))) (Context!11263 (t!378628 (exprs!6131 (h!71365 zl!343)))) (h!71366 s!2326)))))

(declare-fun b!6344033 () Bool)

(assert (=> b!6344033 (= e!3853217 ((_ map or) call!540792 (derivationStepZipperUp!1421 (Context!11263 (t!378628 (exprs!6131 (h!71365 zl!343)))) (h!71366 s!2326))))))

(assert (= (and d!1991053 res!2610572) b!6344029))

(assert (= (and d!1991053 c!1153654) b!6344033))

(assert (= (and d!1991053 (not c!1153654)) b!6344032))

(assert (= (and b!6344032 c!1153653) b!6344030))

(assert (= (and b!6344032 (not c!1153653)) b!6344031))

(assert (= (or b!6344033 b!6344030) bm!540787))

(assert (=> b!6344029 m!7151540))

(declare-fun m!7152076 () Bool)

(assert (=> bm!540787 m!7152076))

(declare-fun m!7152078 () Bool)

(assert (=> b!6344033 m!7152078))

(assert (=> b!6343256 d!1991053))

(declare-fun b!6344034 () Bool)

(declare-fun e!3853219 () Bool)

(assert (=> b!6344034 (= e!3853219 (nullable!6240 (h!71364 (exprs!6131 lt!2362872))))))

(declare-fun b!6344035 () Bool)

(declare-fun e!3853221 () (InoxSet Context!11262))

(declare-fun call!540793 () (InoxSet Context!11262))

(assert (=> b!6344035 (= e!3853221 call!540793)))

(declare-fun d!1991055 () Bool)

(declare-fun c!1153656 () Bool)

(assert (=> d!1991055 (= c!1153656 e!3853219)))

(declare-fun res!2610573 () Bool)

(assert (=> d!1991055 (=> (not res!2610573) (not e!3853219))))

(assert (=> d!1991055 (= res!2610573 ((_ is Cons!64916) (exprs!6131 lt!2362872)))))

(declare-fun e!3853220 () (InoxSet Context!11262))

(assert (=> d!1991055 (= (derivationStepZipperUp!1421 lt!2362872 (h!71366 s!2326)) e!3853220)))

(declare-fun b!6344036 () Bool)

(assert (=> b!6344036 (= e!3853221 ((as const (Array Context!11262 Bool)) false))))

(declare-fun b!6344037 () Bool)

(assert (=> b!6344037 (= e!3853220 e!3853221)))

(declare-fun c!1153655 () Bool)

(assert (=> b!6344037 (= c!1153655 ((_ is Cons!64916) (exprs!6131 lt!2362872)))))

(declare-fun bm!540788 () Bool)

(assert (=> bm!540788 (= call!540793 (derivationStepZipperDown!1495 (h!71364 (exprs!6131 lt!2362872)) (Context!11263 (t!378628 (exprs!6131 lt!2362872))) (h!71366 s!2326)))))

(declare-fun b!6344038 () Bool)

(assert (=> b!6344038 (= e!3853220 ((_ map or) call!540793 (derivationStepZipperUp!1421 (Context!11263 (t!378628 (exprs!6131 lt!2362872))) (h!71366 s!2326))))))

(assert (= (and d!1991055 res!2610573) b!6344034))

(assert (= (and d!1991055 c!1153656) b!6344038))

(assert (= (and d!1991055 (not c!1153656)) b!6344037))

(assert (= (and b!6344037 c!1153655) b!6344035))

(assert (= (and b!6344037 (not c!1153655)) b!6344036))

(assert (= (or b!6344038 b!6344035) bm!540788))

(declare-fun m!7152080 () Bool)

(assert (=> b!6344034 m!7152080))

(declare-fun m!7152082 () Bool)

(assert (=> bm!540788 m!7152082))

(declare-fun m!7152084 () Bool)

(assert (=> b!6344038 m!7152084))

(assert (=> b!6343256 d!1991055))

(declare-fun d!1991057 () Bool)

(declare-fun dynLambda!25737 (Int Context!11262) (InoxSet Context!11262))

(assert (=> d!1991057 (= (flatMap!1752 z!1189 lambda!348547) (dynLambda!25737 lambda!348547 (h!71365 zl!343)))))

(declare-fun lt!2362982 () Unit!158319)

(declare-fun choose!47044 ((InoxSet Context!11262) Context!11262 Int) Unit!158319)

(assert (=> d!1991057 (= lt!2362982 (choose!47044 z!1189 (h!71365 zl!343) lambda!348547))))

(assert (=> d!1991057 (= z!1189 (store ((as const (Array Context!11262 Bool)) false) (h!71365 zl!343) true))))

(assert (=> d!1991057 (= (lemmaFlatMapOnSingletonSet!1278 z!1189 (h!71365 zl!343) lambda!348547) lt!2362982)))

(declare-fun b_lambda!241421 () Bool)

(assert (=> (not b_lambda!241421) (not d!1991057)))

(declare-fun bs!1588671 () Bool)

(assert (= bs!1588671 d!1991057))

(assert (=> bs!1588671 m!7151538))

(declare-fun m!7152086 () Bool)

(assert (=> bs!1588671 m!7152086))

(declare-fun m!7152088 () Bool)

(assert (=> bs!1588671 m!7152088))

(declare-fun m!7152090 () Bool)

(assert (=> bs!1588671 m!7152090))

(assert (=> b!6343256 d!1991057))

(declare-fun bs!1588672 () Bool)

(declare-fun d!1991059 () Bool)

(assert (= bs!1588672 (and d!1991059 d!1990951)))

(declare-fun lambda!348622 () Int)

(assert (=> bs!1588672 (= lambda!348622 lambda!348581)))

(declare-fun bs!1588673 () Bool)

(assert (= bs!1588673 (and d!1991059 d!1990953)))

(assert (=> bs!1588673 (= lambda!348622 lambda!348582)))

(declare-fun bs!1588674 () Bool)

(assert (= bs!1588674 (and d!1991059 d!1990973)))

(assert (=> bs!1588674 (= lambda!348622 lambda!348592)))

(declare-fun bs!1588675 () Bool)

(assert (= bs!1588675 (and d!1991059 d!1991013)))

(assert (=> bs!1588675 (= lambda!348622 lambda!348607)))

(declare-fun b!6344059 () Bool)

(declare-fun e!3853238 () Regex!16247)

(assert (=> b!6344059 (= e!3853238 (Union!16247 (h!71364 (unfocusZipperList!1668 zl!343)) (generalisedUnion!2091 (t!378628 (unfocusZipperList!1668 zl!343)))))))

(declare-fun b!6344060 () Bool)

(declare-fun e!3853234 () Regex!16247)

(assert (=> b!6344060 (= e!3853234 e!3853238)))

(declare-fun c!1153665 () Bool)

(assert (=> b!6344060 (= c!1153665 ((_ is Cons!64916) (unfocusZipperList!1668 zl!343)))))

(declare-fun b!6344061 () Bool)

(assert (=> b!6344061 (= e!3853234 (h!71364 (unfocusZipperList!1668 zl!343)))))

(declare-fun b!6344062 () Bool)

(declare-fun e!3853237 () Bool)

(declare-fun e!3853236 () Bool)

(assert (=> b!6344062 (= e!3853237 e!3853236)))

(declare-fun c!1153668 () Bool)

(assert (=> b!6344062 (= c!1153668 (isEmpty!36998 (unfocusZipperList!1668 zl!343)))))

(declare-fun b!6344063 () Bool)

(declare-fun e!3853239 () Bool)

(assert (=> b!6344063 (= e!3853239 (isEmpty!36998 (t!378628 (unfocusZipperList!1668 zl!343))))))

(assert (=> d!1991059 e!3853237))

(declare-fun res!2610579 () Bool)

(assert (=> d!1991059 (=> (not res!2610579) (not e!3853237))))

(declare-fun lt!2362985 () Regex!16247)

(assert (=> d!1991059 (= res!2610579 (validRegex!7983 lt!2362985))))

(assert (=> d!1991059 (= lt!2362985 e!3853234)))

(declare-fun c!1153667 () Bool)

(assert (=> d!1991059 (= c!1153667 e!3853239)))

(declare-fun res!2610578 () Bool)

(assert (=> d!1991059 (=> (not res!2610578) (not e!3853239))))

(assert (=> d!1991059 (= res!2610578 ((_ is Cons!64916) (unfocusZipperList!1668 zl!343)))))

(assert (=> d!1991059 (forall!15405 (unfocusZipperList!1668 zl!343) lambda!348622)))

(assert (=> d!1991059 (= (generalisedUnion!2091 (unfocusZipperList!1668 zl!343)) lt!2362985)))

(declare-fun b!6344064 () Bool)

(declare-fun e!3853235 () Bool)

(assert (=> b!6344064 (= e!3853236 e!3853235)))

(declare-fun c!1153666 () Bool)

(assert (=> b!6344064 (= c!1153666 (isEmpty!36998 (tail!12071 (unfocusZipperList!1668 zl!343))))))

(declare-fun b!6344065 () Bool)

(declare-fun isUnion!1086 (Regex!16247) Bool)

(assert (=> b!6344065 (= e!3853235 (isUnion!1086 lt!2362985))))

(declare-fun b!6344066 () Bool)

(assert (=> b!6344066 (= e!3853235 (= lt!2362985 (head!12986 (unfocusZipperList!1668 zl!343))))))

(declare-fun b!6344067 () Bool)

(assert (=> b!6344067 (= e!3853238 EmptyLang!16247)))

(declare-fun b!6344068 () Bool)

(declare-fun isEmptyLang!1656 (Regex!16247) Bool)

(assert (=> b!6344068 (= e!3853236 (isEmptyLang!1656 lt!2362985))))

(assert (= (and d!1991059 res!2610578) b!6344063))

(assert (= (and d!1991059 c!1153667) b!6344061))

(assert (= (and d!1991059 (not c!1153667)) b!6344060))

(assert (= (and b!6344060 c!1153665) b!6344059))

(assert (= (and b!6344060 (not c!1153665)) b!6344067))

(assert (= (and d!1991059 res!2610579) b!6344062))

(assert (= (and b!6344062 c!1153668) b!6344068))

(assert (= (and b!6344062 (not c!1153668)) b!6344064))

(assert (= (and b!6344064 c!1153666) b!6344066))

(assert (= (and b!6344064 (not c!1153666)) b!6344065))

(declare-fun m!7152092 () Bool)

(assert (=> b!6344063 m!7152092))

(assert (=> b!6344064 m!7151550))

(declare-fun m!7152094 () Bool)

(assert (=> b!6344064 m!7152094))

(assert (=> b!6344064 m!7152094))

(declare-fun m!7152096 () Bool)

(assert (=> b!6344064 m!7152096))

(declare-fun m!7152098 () Bool)

(assert (=> d!1991059 m!7152098))

(assert (=> d!1991059 m!7151550))

(declare-fun m!7152100 () Bool)

(assert (=> d!1991059 m!7152100))

(assert (=> b!6344066 m!7151550))

(declare-fun m!7152102 () Bool)

(assert (=> b!6344066 m!7152102))

(declare-fun m!7152104 () Bool)

(assert (=> b!6344068 m!7152104))

(declare-fun m!7152106 () Bool)

(assert (=> b!6344059 m!7152106))

(assert (=> b!6344062 m!7151550))

(declare-fun m!7152108 () Bool)

(assert (=> b!6344062 m!7152108))

(declare-fun m!7152110 () Bool)

(assert (=> b!6344065 m!7152110))

(assert (=> b!6343278 d!1991059))

(declare-fun bs!1588676 () Bool)

(declare-fun d!1991061 () Bool)

(assert (= bs!1588676 (and d!1991061 d!1990951)))

(declare-fun lambda!348625 () Int)

(assert (=> bs!1588676 (= lambda!348625 lambda!348581)))

(declare-fun bs!1588677 () Bool)

(assert (= bs!1588677 (and d!1991061 d!1990953)))

(assert (=> bs!1588677 (= lambda!348625 lambda!348582)))

(declare-fun bs!1588678 () Bool)

(assert (= bs!1588678 (and d!1991061 d!1990973)))

(assert (=> bs!1588678 (= lambda!348625 lambda!348592)))

(declare-fun bs!1588679 () Bool)

(assert (= bs!1588679 (and d!1991061 d!1991059)))

(assert (=> bs!1588679 (= lambda!348625 lambda!348622)))

(declare-fun bs!1588680 () Bool)

(assert (= bs!1588680 (and d!1991061 d!1991013)))

(assert (=> bs!1588680 (= lambda!348625 lambda!348607)))

(declare-fun lt!2362988 () List!65040)

(assert (=> d!1991061 (forall!15405 lt!2362988 lambda!348625)))

(declare-fun e!3853242 () List!65040)

(assert (=> d!1991061 (= lt!2362988 e!3853242)))

(declare-fun c!1153671 () Bool)

(assert (=> d!1991061 (= c!1153671 ((_ is Cons!64917) zl!343))))

(assert (=> d!1991061 (= (unfocusZipperList!1668 zl!343) lt!2362988)))

(declare-fun b!6344073 () Bool)

(assert (=> b!6344073 (= e!3853242 (Cons!64916 (generalisedConcat!1844 (exprs!6131 (h!71365 zl!343))) (unfocusZipperList!1668 (t!378629 zl!343))))))

(declare-fun b!6344074 () Bool)

(assert (=> b!6344074 (= e!3853242 Nil!64916)))

(assert (= (and d!1991061 c!1153671) b!6344073))

(assert (= (and d!1991061 (not c!1153671)) b!6344074))

(declare-fun m!7152112 () Bool)

(assert (=> d!1991061 m!7152112))

(assert (=> b!6344073 m!7151530))

(declare-fun m!7152114 () Bool)

(assert (=> b!6344073 m!7152114))

(assert (=> b!6343278 d!1991061))

(declare-fun b!6344075 () Bool)

(declare-fun e!3853249 () Bool)

(declare-fun call!540796 () Bool)

(assert (=> b!6344075 (= e!3853249 call!540796)))

(declare-fun b!6344076 () Bool)

(declare-fun e!3853248 () Bool)

(declare-fun call!540794 () Bool)

(assert (=> b!6344076 (= e!3853248 call!540794)))

(declare-fun b!6344077 () Bool)

(declare-fun e!3853245 () Bool)

(assert (=> b!6344077 (= e!3853245 call!540794)))

(declare-fun b!6344078 () Bool)

(declare-fun res!2610583 () Bool)

(assert (=> b!6344078 (=> (not res!2610583) (not e!3853245))))

(declare-fun call!540795 () Bool)

(assert (=> b!6344078 (= res!2610583 call!540795)))

(declare-fun e!3853244 () Bool)

(assert (=> b!6344078 (= e!3853244 e!3853245)))

(declare-fun bm!540789 () Bool)

(declare-fun c!1153673 () Bool)

(assert (=> bm!540789 (= call!540795 (validRegex!7983 (ite c!1153673 (regOne!33007 r!7292) (regOne!33006 r!7292))))))

(declare-fun b!6344079 () Bool)

(declare-fun e!3853246 () Bool)

(assert (=> b!6344079 (= e!3853246 e!3853244)))

(assert (=> b!6344079 (= c!1153673 ((_ is Union!16247) r!7292))))

(declare-fun d!1991063 () Bool)

(declare-fun res!2610582 () Bool)

(declare-fun e!3853247 () Bool)

(assert (=> d!1991063 (=> res!2610582 e!3853247)))

(assert (=> d!1991063 (= res!2610582 ((_ is ElementMatch!16247) r!7292))))

(assert (=> d!1991063 (= (validRegex!7983 r!7292) e!3853247)))

(declare-fun b!6344080 () Bool)

(declare-fun res!2610580 () Bool)

(declare-fun e!3853243 () Bool)

(assert (=> b!6344080 (=> res!2610580 e!3853243)))

(assert (=> b!6344080 (= res!2610580 (not ((_ is Concat!25092) r!7292)))))

(assert (=> b!6344080 (= e!3853244 e!3853243)))

(declare-fun b!6344081 () Bool)

(assert (=> b!6344081 (= e!3853247 e!3853246)))

(declare-fun c!1153672 () Bool)

(assert (=> b!6344081 (= c!1153672 ((_ is Star!16247) r!7292))))

(declare-fun b!6344082 () Bool)

(assert (=> b!6344082 (= e!3853246 e!3853249)))

(declare-fun res!2610581 () Bool)

(assert (=> b!6344082 (= res!2610581 (not (nullable!6240 (reg!16576 r!7292))))))

(assert (=> b!6344082 (=> (not res!2610581) (not e!3853249))))

(declare-fun bm!540790 () Bool)

(assert (=> bm!540790 (= call!540794 call!540796)))

(declare-fun bm!540791 () Bool)

(assert (=> bm!540791 (= call!540796 (validRegex!7983 (ite c!1153672 (reg!16576 r!7292) (ite c!1153673 (regTwo!33007 r!7292) (regTwo!33006 r!7292)))))))

(declare-fun b!6344083 () Bool)

(assert (=> b!6344083 (= e!3853243 e!3853248)))

(declare-fun res!2610584 () Bool)

(assert (=> b!6344083 (=> (not res!2610584) (not e!3853248))))

(assert (=> b!6344083 (= res!2610584 call!540795)))

(assert (= (and d!1991063 (not res!2610582)) b!6344081))

(assert (= (and b!6344081 c!1153672) b!6344082))

(assert (= (and b!6344081 (not c!1153672)) b!6344079))

(assert (= (and b!6344082 res!2610581) b!6344075))

(assert (= (and b!6344079 c!1153673) b!6344078))

(assert (= (and b!6344079 (not c!1153673)) b!6344080))

(assert (= (and b!6344078 res!2610583) b!6344077))

(assert (= (and b!6344080 (not res!2610580)) b!6344083))

(assert (= (and b!6344083 res!2610584) b!6344076))

(assert (= (or b!6344077 b!6344076) bm!540790))

(assert (= (or b!6344078 b!6344083) bm!540789))

(assert (= (or b!6344075 bm!540790) bm!540791))

(declare-fun m!7152116 () Bool)

(assert (=> bm!540789 m!7152116))

(declare-fun m!7152118 () Bool)

(assert (=> b!6344082 m!7152118))

(declare-fun m!7152120 () Bool)

(assert (=> bm!540791 m!7152120))

(assert (=> start!628490 d!1991063))

(declare-fun d!1991065 () Bool)

(assert (=> d!1991065 (= (isEmpty!36997 (t!378629 zl!343)) ((_ is Nil!64917) (t!378629 zl!343)))))

(assert (=> b!6343259 d!1991065))

(declare-fun e!3853252 () Bool)

(declare-fun d!1991067 () Bool)

(assert (=> d!1991067 (= (matchZipper!2259 ((_ map or) lt!2362857 lt!2362847) (t!378630 s!2326)) e!3853252)))

(declare-fun res!2610587 () Bool)

(assert (=> d!1991067 (=> res!2610587 e!3853252)))

(assert (=> d!1991067 (= res!2610587 (matchZipper!2259 lt!2362857 (t!378630 s!2326)))))

(declare-fun lt!2362991 () Unit!158319)

(declare-fun choose!47046 ((InoxSet Context!11262) (InoxSet Context!11262) List!65042) Unit!158319)

(assert (=> d!1991067 (= lt!2362991 (choose!47046 lt!2362857 lt!2362847 (t!378630 s!2326)))))

(assert (=> d!1991067 (= (lemmaZipperConcatMatchesSameAsBothZippers!1078 lt!2362857 lt!2362847 (t!378630 s!2326)) lt!2362991)))

(declare-fun b!6344086 () Bool)

(assert (=> b!6344086 (= e!3853252 (matchZipper!2259 lt!2362847 (t!378630 s!2326)))))

(assert (= (and d!1991067 (not res!2610587)) b!6344086))

(assert (=> d!1991067 m!7151508))

(assert (=> d!1991067 m!7151506))

(declare-fun m!7152122 () Bool)

(assert (=> d!1991067 m!7152122))

(assert (=> b!6344086 m!7151498))

(assert (=> b!6343257 d!1991067))

(declare-fun d!1991069 () Bool)

(declare-fun c!1153674 () Bool)

(assert (=> d!1991069 (= c!1153674 (isEmpty!37002 (t!378630 s!2326)))))

(declare-fun e!3853253 () Bool)

(assert (=> d!1991069 (= (matchZipper!2259 lt!2362857 (t!378630 s!2326)) e!3853253)))

(declare-fun b!6344087 () Bool)

(assert (=> b!6344087 (= e!3853253 (nullableZipper!2013 lt!2362857))))

(declare-fun b!6344088 () Bool)

(assert (=> b!6344088 (= e!3853253 (matchZipper!2259 (derivationStepZipper!2213 lt!2362857 (head!12987 (t!378630 s!2326))) (tail!12072 (t!378630 s!2326))))))

(assert (= (and d!1991069 c!1153674) b!6344087))

(assert (= (and d!1991069 (not c!1153674)) b!6344088))

(declare-fun m!7152124 () Bool)

(assert (=> d!1991069 m!7152124))

(declare-fun m!7152126 () Bool)

(assert (=> b!6344087 m!7152126))

(declare-fun m!7152128 () Bool)

(assert (=> b!6344088 m!7152128))

(assert (=> b!6344088 m!7152128))

(declare-fun m!7152130 () Bool)

(assert (=> b!6344088 m!7152130))

(declare-fun m!7152132 () Bool)

(assert (=> b!6344088 m!7152132))

(assert (=> b!6344088 m!7152130))

(assert (=> b!6344088 m!7152132))

(declare-fun m!7152134 () Bool)

(assert (=> b!6344088 m!7152134))

(assert (=> b!6343257 d!1991069))

(declare-fun d!1991071 () Bool)

(declare-fun c!1153675 () Bool)

(assert (=> d!1991071 (= c!1153675 (isEmpty!37002 (t!378630 s!2326)))))

(declare-fun e!3853254 () Bool)

(assert (=> d!1991071 (= (matchZipper!2259 ((_ map or) lt!2362857 lt!2362847) (t!378630 s!2326)) e!3853254)))

(declare-fun b!6344089 () Bool)

(assert (=> b!6344089 (= e!3853254 (nullableZipper!2013 ((_ map or) lt!2362857 lt!2362847)))))

(declare-fun b!6344090 () Bool)

(assert (=> b!6344090 (= e!3853254 (matchZipper!2259 (derivationStepZipper!2213 ((_ map or) lt!2362857 lt!2362847) (head!12987 (t!378630 s!2326))) (tail!12072 (t!378630 s!2326))))))

(assert (= (and d!1991071 c!1153675) b!6344089))

(assert (= (and d!1991071 (not c!1153675)) b!6344090))

(assert (=> d!1991071 m!7152124))

(declare-fun m!7152136 () Bool)

(assert (=> b!6344089 m!7152136))

(assert (=> b!6344090 m!7152128))

(assert (=> b!6344090 m!7152128))

(declare-fun m!7152138 () Bool)

(assert (=> b!6344090 m!7152138))

(assert (=> b!6344090 m!7152132))

(assert (=> b!6344090 m!7152138))

(assert (=> b!6344090 m!7152132))

(declare-fun m!7152140 () Bool)

(assert (=> b!6344090 m!7152140))

(assert (=> b!6343257 d!1991071))

(declare-fun d!1991073 () Bool)

(declare-fun lt!2362994 () Int)

(assert (=> d!1991073 (>= lt!2362994 0)))

(declare-fun e!3853257 () Int)

(assert (=> d!1991073 (= lt!2362994 e!3853257)))

(declare-fun c!1153678 () Bool)

(assert (=> d!1991073 (= c!1153678 ((_ is Cons!64917) lt!2362849))))

(assert (=> d!1991073 (= (zipperDepthTotal!384 lt!2362849) lt!2362994)))

(declare-fun b!6344095 () Bool)

(assert (=> b!6344095 (= e!3853257 (+ (contextDepthTotal!356 (h!71365 lt!2362849)) (zipperDepthTotal!384 (t!378629 lt!2362849))))))

(declare-fun b!6344096 () Bool)

(assert (=> b!6344096 (= e!3853257 0)))

(assert (= (and d!1991073 c!1153678) b!6344095))

(assert (= (and d!1991073 (not c!1153678)) b!6344096))

(declare-fun m!7152142 () Bool)

(assert (=> b!6344095 m!7152142))

(declare-fun m!7152144 () Bool)

(assert (=> b!6344095 m!7152144))

(assert (=> b!6343258 d!1991073))

(declare-fun d!1991075 () Bool)

(declare-fun lt!2362995 () Int)

(assert (=> d!1991075 (>= lt!2362995 0)))

(declare-fun e!3853258 () Int)

(assert (=> d!1991075 (= lt!2362995 e!3853258)))

(declare-fun c!1153679 () Bool)

(assert (=> d!1991075 (= c!1153679 ((_ is Cons!64917) zl!343))))

(assert (=> d!1991075 (= (zipperDepthTotal!384 zl!343) lt!2362995)))

(declare-fun b!6344097 () Bool)

(assert (=> b!6344097 (= e!3853258 (+ (contextDepthTotal!356 (h!71365 zl!343)) (zipperDepthTotal!384 (t!378629 zl!343))))))

(declare-fun b!6344098 () Bool)

(assert (=> b!6344098 (= e!3853258 0)))

(assert (= (and d!1991075 c!1153679) b!6344097))

(assert (= (and d!1991075 (not c!1153679)) b!6344098))

(assert (=> b!6344097 m!7151548))

(declare-fun m!7152146 () Bool)

(assert (=> b!6344097 m!7152146))

(assert (=> b!6343258 d!1991075))

(declare-fun d!1991077 () Bool)

(declare-fun c!1153680 () Bool)

(assert (=> d!1991077 (= c!1153680 (isEmpty!37002 (t!378630 s!2326)))))

(declare-fun e!3853259 () Bool)

(assert (=> d!1991077 (= (matchZipper!2259 lt!2362869 (t!378630 s!2326)) e!3853259)))

(declare-fun b!6344099 () Bool)

(assert (=> b!6344099 (= e!3853259 (nullableZipper!2013 lt!2362869))))

(declare-fun b!6344100 () Bool)

(assert (=> b!6344100 (= e!3853259 (matchZipper!2259 (derivationStepZipper!2213 lt!2362869 (head!12987 (t!378630 s!2326))) (tail!12072 (t!378630 s!2326))))))

(assert (= (and d!1991077 c!1153680) b!6344099))

(assert (= (and d!1991077 (not c!1153680)) b!6344100))

(assert (=> d!1991077 m!7152124))

(declare-fun m!7152148 () Bool)

(assert (=> b!6344099 m!7152148))

(assert (=> b!6344100 m!7152128))

(assert (=> b!6344100 m!7152128))

(declare-fun m!7152150 () Bool)

(assert (=> b!6344100 m!7152150))

(assert (=> b!6344100 m!7152132))

(assert (=> b!6344100 m!7152150))

(assert (=> b!6344100 m!7152132))

(declare-fun m!7152152 () Bool)

(assert (=> b!6344100 m!7152152))

(assert (=> b!6343277 d!1991077))

(assert (=> b!6343277 d!1991069))

(declare-fun bs!1588681 () Bool)

(declare-fun d!1991079 () Bool)

(assert (= bs!1588681 (and d!1991079 d!1990951)))

(declare-fun lambda!348626 () Int)

(assert (=> bs!1588681 (= lambda!348626 lambda!348581)))

(declare-fun bs!1588682 () Bool)

(assert (= bs!1588682 (and d!1991079 d!1990953)))

(assert (=> bs!1588682 (= lambda!348626 lambda!348582)))

(declare-fun bs!1588683 () Bool)

(assert (= bs!1588683 (and d!1991079 d!1990973)))

(assert (=> bs!1588683 (= lambda!348626 lambda!348592)))

(declare-fun bs!1588684 () Bool)

(assert (= bs!1588684 (and d!1991079 d!1991059)))

(assert (=> bs!1588684 (= lambda!348626 lambda!348622)))

(declare-fun bs!1588685 () Bool)

(assert (= bs!1588685 (and d!1991079 d!1991061)))

(assert (=> bs!1588685 (= lambda!348626 lambda!348625)))

(declare-fun bs!1588686 () Bool)

(assert (= bs!1588686 (and d!1991079 d!1991013)))

(assert (=> bs!1588686 (= lambda!348626 lambda!348607)))

(declare-fun b!6344101 () Bool)

(declare-fun e!3853265 () Bool)

(assert (=> b!6344101 (= e!3853265 (isEmpty!36998 (t!378628 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6344102 () Bool)

(declare-fun e!3853264 () Regex!16247)

(assert (=> b!6344102 (= e!3853264 (h!71364 (exprs!6131 (h!71365 zl!343))))))

(declare-fun b!6344103 () Bool)

(declare-fun e!3853262 () Bool)

(declare-fun lt!2362996 () Regex!16247)

(assert (=> b!6344103 (= e!3853262 (= lt!2362996 (head!12986 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6344104 () Bool)

(declare-fun e!3853261 () Bool)

(assert (=> b!6344104 (= e!3853261 (isEmptyExpr!1649 lt!2362996))))

(declare-fun b!6344106 () Bool)

(assert (=> b!6344106 (= e!3853262 (isConcat!1172 lt!2362996))))

(declare-fun b!6344107 () Bool)

(declare-fun e!3853260 () Regex!16247)

(assert (=> b!6344107 (= e!3853260 (Concat!25092 (h!71364 (exprs!6131 (h!71365 zl!343))) (generalisedConcat!1844 (t!378628 (exprs!6131 (h!71365 zl!343))))))))

(declare-fun b!6344108 () Bool)

(assert (=> b!6344108 (= e!3853261 e!3853262)))

(declare-fun c!1153682 () Bool)

(assert (=> b!6344108 (= c!1153682 (isEmpty!36998 (tail!12071 (exprs!6131 (h!71365 zl!343)))))))

(declare-fun b!6344109 () Bool)

(assert (=> b!6344109 (= e!3853260 EmptyExpr!16247)))

(declare-fun b!6344110 () Bool)

(assert (=> b!6344110 (= e!3853264 e!3853260)))

(declare-fun c!1153684 () Bool)

(assert (=> b!6344110 (= c!1153684 ((_ is Cons!64916) (exprs!6131 (h!71365 zl!343))))))

(declare-fun b!6344105 () Bool)

(declare-fun e!3853263 () Bool)

(assert (=> b!6344105 (= e!3853263 e!3853261)))

(declare-fun c!1153681 () Bool)

(assert (=> b!6344105 (= c!1153681 (isEmpty!36998 (exprs!6131 (h!71365 zl!343))))))

(assert (=> d!1991079 e!3853263))

(declare-fun res!2610589 () Bool)

(assert (=> d!1991079 (=> (not res!2610589) (not e!3853263))))

(assert (=> d!1991079 (= res!2610589 (validRegex!7983 lt!2362996))))

(assert (=> d!1991079 (= lt!2362996 e!3853264)))

(declare-fun c!1153683 () Bool)

(assert (=> d!1991079 (= c!1153683 e!3853265)))

(declare-fun res!2610588 () Bool)

(assert (=> d!1991079 (=> (not res!2610588) (not e!3853265))))

(assert (=> d!1991079 (= res!2610588 ((_ is Cons!64916) (exprs!6131 (h!71365 zl!343))))))

(assert (=> d!1991079 (forall!15405 (exprs!6131 (h!71365 zl!343)) lambda!348626)))

(assert (=> d!1991079 (= (generalisedConcat!1844 (exprs!6131 (h!71365 zl!343))) lt!2362996)))

(assert (= (and d!1991079 res!2610588) b!6344101))

(assert (= (and d!1991079 c!1153683) b!6344102))

(assert (= (and d!1991079 (not c!1153683)) b!6344110))

(assert (= (and b!6344110 c!1153684) b!6344107))

(assert (= (and b!6344110 (not c!1153684)) b!6344109))

(assert (= (and d!1991079 res!2610589) b!6344105))

(assert (= (and b!6344105 c!1153681) b!6344104))

(assert (= (and b!6344105 (not c!1153681)) b!6344108))

(assert (= (and b!6344108 c!1153682) b!6344103))

(assert (= (and b!6344108 (not c!1153682)) b!6344106))

(declare-fun m!7152154 () Bool)

(assert (=> b!6344103 m!7152154))

(declare-fun m!7152156 () Bool)

(assert (=> b!6344105 m!7152156))

(declare-fun m!7152158 () Bool)

(assert (=> b!6344108 m!7152158))

(assert (=> b!6344108 m!7152158))

(declare-fun m!7152160 () Bool)

(assert (=> b!6344108 m!7152160))

(declare-fun m!7152162 () Bool)

(assert (=> b!6344104 m!7152162))

(declare-fun m!7152164 () Bool)

(assert (=> d!1991079 m!7152164))

(declare-fun m!7152166 () Bool)

(assert (=> d!1991079 m!7152166))

(declare-fun m!7152168 () Bool)

(assert (=> b!6344107 m!7152168))

(assert (=> b!6344101 m!7151566))

(declare-fun m!7152170 () Bool)

(assert (=> b!6344106 m!7152170))

(assert (=> b!6343270 d!1991079))

(declare-fun d!1991081 () Bool)

(declare-fun lt!2362999 () Int)

(assert (=> d!1991081 (>= lt!2362999 0)))

(declare-fun e!3853268 () Int)

(assert (=> d!1991081 (= lt!2362999 e!3853268)))

(declare-fun c!1153688 () Bool)

(assert (=> d!1991081 (= c!1153688 ((_ is Cons!64916) (exprs!6131 lt!2362853)))))

(assert (=> d!1991081 (= (contextDepthTotal!356 lt!2362853) lt!2362999)))

(declare-fun b!6344115 () Bool)

(declare-fun regexDepthTotal!205 (Regex!16247) Int)

(assert (=> b!6344115 (= e!3853268 (+ (regexDepthTotal!205 (h!71364 (exprs!6131 lt!2362853))) (contextDepthTotal!356 (Context!11263 (t!378628 (exprs!6131 lt!2362853))))))))

(declare-fun b!6344116 () Bool)

(assert (=> b!6344116 (= e!3853268 1)))

(assert (= (and d!1991081 c!1153688) b!6344115))

(assert (= (and d!1991081 (not c!1153688)) b!6344116))

(declare-fun m!7152172 () Bool)

(assert (=> b!6344115 m!7152172))

(declare-fun m!7152174 () Bool)

(assert (=> b!6344115 m!7152174))

(assert (=> b!6343253 d!1991081))

(declare-fun d!1991083 () Bool)

(declare-fun lt!2363000 () Int)

(assert (=> d!1991083 (>= lt!2363000 0)))

(declare-fun e!3853269 () Int)

(assert (=> d!1991083 (= lt!2363000 e!3853269)))

(declare-fun c!1153689 () Bool)

(assert (=> d!1991083 (= c!1153689 ((_ is Cons!64916) (exprs!6131 (h!71365 zl!343))))))

(assert (=> d!1991083 (= (contextDepthTotal!356 (h!71365 zl!343)) lt!2363000)))

(declare-fun b!6344117 () Bool)

(assert (=> b!6344117 (= e!3853269 (+ (regexDepthTotal!205 (h!71364 (exprs!6131 (h!71365 zl!343)))) (contextDepthTotal!356 (Context!11263 (t!378628 (exprs!6131 (h!71365 zl!343)))))))))

(declare-fun b!6344118 () Bool)

(assert (=> b!6344118 (= e!3853269 1)))

(assert (= (and d!1991083 c!1153689) b!6344117))

(assert (= (and d!1991083 (not c!1153689)) b!6344118))

(declare-fun m!7152176 () Bool)

(assert (=> b!6344117 m!7152176))

(declare-fun m!7152178 () Bool)

(assert (=> b!6344117 m!7152178))

(assert (=> b!6343253 d!1991083))

(declare-fun b!6344119 () Bool)

(declare-fun e!3853273 () (InoxSet Context!11262))

(assert (=> b!6344119 (= e!3853273 (store ((as const (Array Context!11262 Bool)) false) (Context!11263 lt!2362862) true))))

(declare-fun b!6344120 () Bool)

(declare-fun e!3853275 () (InoxSet Context!11262))

(declare-fun e!3853270 () (InoxSet Context!11262))

(assert (=> b!6344120 (= e!3853275 e!3853270)))

(declare-fun c!1153693 () Bool)

(assert (=> b!6344120 (= c!1153693 ((_ is Concat!25092) (regOne!33006 (regOne!33006 r!7292))))))

(declare-fun b!6344121 () Bool)

(declare-fun e!3853271 () (InoxSet Context!11262))

(declare-fun call!540800 () (InoxSet Context!11262))

(declare-fun call!540802 () (InoxSet Context!11262))

(assert (=> b!6344121 (= e!3853271 ((_ map or) call!540800 call!540802))))

(declare-fun bm!540793 () Bool)

(declare-fun call!540798 () (InoxSet Context!11262))

(declare-fun call!540801 () (InoxSet Context!11262))

(assert (=> bm!540793 (= call!540798 call!540801)))

(declare-fun b!6344122 () Bool)

(assert (=> b!6344122 (= e!3853270 call!540798)))

(declare-fun b!6344123 () Bool)

(declare-fun e!3853272 () Bool)

(assert (=> b!6344123 (= e!3853272 (nullable!6240 (regOne!33006 (regOne!33006 (regOne!33006 r!7292)))))))

(declare-fun c!1153692 () Bool)

(declare-fun c!1153691 () Bool)

(declare-fun call!540797 () List!65040)

(declare-fun bm!540794 () Bool)

(assert (=> bm!540794 (= call!540800 (derivationStepZipperDown!1495 (ite c!1153691 (regOne!33007 (regOne!33006 (regOne!33006 r!7292))) (ite c!1153692 (regTwo!33006 (regOne!33006 (regOne!33006 r!7292))) (ite c!1153693 (regOne!33006 (regOne!33006 (regOne!33006 r!7292))) (reg!16576 (regOne!33006 (regOne!33006 r!7292)))))) (ite (or c!1153691 c!1153692) (Context!11263 lt!2362862) (Context!11263 call!540797)) (h!71366 s!2326)))))

(declare-fun bm!540795 () Bool)

(declare-fun call!540799 () List!65040)

(assert (=> bm!540795 (= call!540797 call!540799)))

(declare-fun b!6344124 () Bool)

(assert (=> b!6344124 (= e!3853273 e!3853271)))

(assert (=> b!6344124 (= c!1153691 ((_ is Union!16247) (regOne!33006 (regOne!33006 r!7292))))))

(declare-fun d!1991085 () Bool)

(declare-fun c!1153690 () Bool)

(assert (=> d!1991085 (= c!1153690 (and ((_ is ElementMatch!16247) (regOne!33006 (regOne!33006 r!7292))) (= (c!1153432 (regOne!33006 (regOne!33006 r!7292))) (h!71366 s!2326))))))

(assert (=> d!1991085 (= (derivationStepZipperDown!1495 (regOne!33006 (regOne!33006 r!7292)) (Context!11263 lt!2362862) (h!71366 s!2326)) e!3853273)))

(declare-fun bm!540792 () Bool)

(assert (=> bm!540792 (= call!540799 ($colon$colon!2108 (exprs!6131 (Context!11263 lt!2362862)) (ite (or c!1153692 c!1153693) (regTwo!33006 (regOne!33006 (regOne!33006 r!7292))) (regOne!33006 (regOne!33006 r!7292)))))))

(declare-fun bm!540796 () Bool)

(assert (=> bm!540796 (= call!540802 (derivationStepZipperDown!1495 (ite c!1153691 (regTwo!33007 (regOne!33006 (regOne!33006 r!7292))) (regOne!33006 (regOne!33006 (regOne!33006 r!7292)))) (ite c!1153691 (Context!11263 lt!2362862) (Context!11263 call!540799)) (h!71366 s!2326)))))

(declare-fun b!6344125 () Bool)

(declare-fun e!3853274 () (InoxSet Context!11262))

(assert (=> b!6344125 (= e!3853274 ((as const (Array Context!11262 Bool)) false))))

(declare-fun b!6344126 () Bool)

(declare-fun c!1153694 () Bool)

(assert (=> b!6344126 (= c!1153694 ((_ is Star!16247) (regOne!33006 (regOne!33006 r!7292))))))

(assert (=> b!6344126 (= e!3853270 e!3853274)))

(declare-fun b!6344127 () Bool)

(assert (=> b!6344127 (= e!3853274 call!540798)))

(declare-fun b!6344128 () Bool)

(assert (=> b!6344128 (= e!3853275 ((_ map or) call!540802 call!540801))))

(declare-fun bm!540797 () Bool)

(assert (=> bm!540797 (= call!540801 call!540800)))

(declare-fun b!6344129 () Bool)

(assert (=> b!6344129 (= c!1153692 e!3853272)))

(declare-fun res!2610590 () Bool)

(assert (=> b!6344129 (=> (not res!2610590) (not e!3853272))))

(assert (=> b!6344129 (= res!2610590 ((_ is Concat!25092) (regOne!33006 (regOne!33006 r!7292))))))

(assert (=> b!6344129 (= e!3853271 e!3853275)))

(assert (= (and d!1991085 c!1153690) b!6344119))

(assert (= (and d!1991085 (not c!1153690)) b!6344124))

(assert (= (and b!6344124 c!1153691) b!6344121))

(assert (= (and b!6344124 (not c!1153691)) b!6344129))

(assert (= (and b!6344129 res!2610590) b!6344123))

(assert (= (and b!6344129 c!1153692) b!6344128))

(assert (= (and b!6344129 (not c!1153692)) b!6344120))

(assert (= (and b!6344120 c!1153693) b!6344122))

(assert (= (and b!6344120 (not c!1153693)) b!6344126))

(assert (= (and b!6344126 c!1153694) b!6344127))

(assert (= (and b!6344126 (not c!1153694)) b!6344125))

(assert (= (or b!6344122 b!6344127) bm!540795))

(assert (= (or b!6344122 b!6344127) bm!540793))

(assert (= (or b!6344128 bm!540795) bm!540792))

(assert (= (or b!6344128 bm!540793) bm!540797))

(assert (= (or b!6344121 b!6344128) bm!540796))

(assert (= (or b!6344121 bm!540797) bm!540794))

(declare-fun m!7152180 () Bool)

(assert (=> bm!540794 m!7152180))

(declare-fun m!7152182 () Bool)

(assert (=> bm!540796 m!7152182))

(declare-fun m!7152184 () Bool)

(assert (=> b!6344119 m!7152184))

(declare-fun m!7152186 () Bool)

(assert (=> bm!540792 m!7152186))

(declare-fun m!7152188 () Bool)

(assert (=> b!6344123 m!7152188))

(assert (=> b!6343273 d!1991085))

(declare-fun d!1991087 () Bool)

(declare-fun lt!2363003 () Regex!16247)

(assert (=> d!1991087 (validRegex!7983 lt!2363003)))

(assert (=> d!1991087 (= lt!2363003 (generalisedUnion!2091 (unfocusZipperList!1668 zl!343)))))

(assert (=> d!1991087 (= (unfocusZipper!1989 zl!343) lt!2363003)))

(declare-fun bs!1588687 () Bool)

(assert (= bs!1588687 d!1991087))

(declare-fun m!7152190 () Bool)

(assert (=> bs!1588687 m!7152190))

(assert (=> bs!1588687 m!7151550))

(assert (=> bs!1588687 m!7151550))

(assert (=> bs!1588687 m!7151552))

(assert (=> b!6343271 d!1991087))

(declare-fun b!6344130 () Bool)

(declare-fun e!3853282 () Bool)

(declare-fun call!540805 () Bool)

(assert (=> b!6344130 (= e!3853282 call!540805)))

(declare-fun b!6344131 () Bool)

(declare-fun e!3853281 () Bool)

(declare-fun call!540803 () Bool)

(assert (=> b!6344131 (= e!3853281 call!540803)))

(declare-fun b!6344132 () Bool)

(declare-fun e!3853278 () Bool)

(assert (=> b!6344132 (= e!3853278 call!540803)))

(declare-fun b!6344133 () Bool)

(declare-fun res!2610594 () Bool)

(assert (=> b!6344133 (=> (not res!2610594) (not e!3853278))))

(declare-fun call!540804 () Bool)

(assert (=> b!6344133 (= res!2610594 call!540804)))

(declare-fun e!3853277 () Bool)

(assert (=> b!6344133 (= e!3853277 e!3853278)))

(declare-fun bm!540798 () Bool)

(declare-fun c!1153696 () Bool)

(assert (=> bm!540798 (= call!540804 (validRegex!7983 (ite c!1153696 (regOne!33007 lt!2362858) (regOne!33006 lt!2362858))))))

(declare-fun b!6344134 () Bool)

(declare-fun e!3853279 () Bool)

(assert (=> b!6344134 (= e!3853279 e!3853277)))

(assert (=> b!6344134 (= c!1153696 ((_ is Union!16247) lt!2362858))))

(declare-fun d!1991089 () Bool)

(declare-fun res!2610593 () Bool)

(declare-fun e!3853280 () Bool)

(assert (=> d!1991089 (=> res!2610593 e!3853280)))

(assert (=> d!1991089 (= res!2610593 ((_ is ElementMatch!16247) lt!2362858))))

(assert (=> d!1991089 (= (validRegex!7983 lt!2362858) e!3853280)))

(declare-fun b!6344135 () Bool)

(declare-fun res!2610591 () Bool)

(declare-fun e!3853276 () Bool)

(assert (=> b!6344135 (=> res!2610591 e!3853276)))

(assert (=> b!6344135 (= res!2610591 (not ((_ is Concat!25092) lt!2362858)))))

(assert (=> b!6344135 (= e!3853277 e!3853276)))

(declare-fun b!6344136 () Bool)

(assert (=> b!6344136 (= e!3853280 e!3853279)))

(declare-fun c!1153695 () Bool)

(assert (=> b!6344136 (= c!1153695 ((_ is Star!16247) lt!2362858))))

(declare-fun b!6344137 () Bool)

(assert (=> b!6344137 (= e!3853279 e!3853282)))

(declare-fun res!2610592 () Bool)

(assert (=> b!6344137 (= res!2610592 (not (nullable!6240 (reg!16576 lt!2362858))))))

(assert (=> b!6344137 (=> (not res!2610592) (not e!3853282))))

(declare-fun bm!540799 () Bool)

(assert (=> bm!540799 (= call!540803 call!540805)))

(declare-fun bm!540800 () Bool)

(assert (=> bm!540800 (= call!540805 (validRegex!7983 (ite c!1153695 (reg!16576 lt!2362858) (ite c!1153696 (regTwo!33007 lt!2362858) (regTwo!33006 lt!2362858)))))))

(declare-fun b!6344138 () Bool)

(assert (=> b!6344138 (= e!3853276 e!3853281)))

(declare-fun res!2610595 () Bool)

(assert (=> b!6344138 (=> (not res!2610595) (not e!3853281))))

(assert (=> b!6344138 (= res!2610595 call!540804)))

(assert (= (and d!1991089 (not res!2610593)) b!6344136))

(assert (= (and b!6344136 c!1153695) b!6344137))

(assert (= (and b!6344136 (not c!1153695)) b!6344134))

(assert (= (and b!6344137 res!2610592) b!6344130))

(assert (= (and b!6344134 c!1153696) b!6344133))

(assert (= (and b!6344134 (not c!1153696)) b!6344135))

(assert (= (and b!6344133 res!2610594) b!6344132))

(assert (= (and b!6344135 (not res!2610591)) b!6344138))

(assert (= (and b!6344138 res!2610595) b!6344131))

(assert (= (or b!6344132 b!6344131) bm!540799))

(assert (= (or b!6344133 b!6344138) bm!540798))

(assert (= (or b!6344130 bm!540799) bm!540800))

(declare-fun m!7152192 () Bool)

(assert (=> bm!540798 m!7152192))

(declare-fun m!7152194 () Bool)

(assert (=> b!6344137 m!7152194))

(declare-fun m!7152196 () Bool)

(assert (=> bm!540800 m!7152196))

(assert (=> b!6343272 d!1991089))

(declare-fun d!1991091 () Bool)

(declare-fun c!1153697 () Bool)

(assert (=> d!1991091 (= c!1153697 (isEmpty!37002 (t!378630 s!2326)))))

(declare-fun e!3853283 () Bool)

(assert (=> d!1991091 (= (matchZipper!2259 lt!2362856 (t!378630 s!2326)) e!3853283)))

(declare-fun b!6344139 () Bool)

(assert (=> b!6344139 (= e!3853283 (nullableZipper!2013 lt!2362856))))

(declare-fun b!6344140 () Bool)

(assert (=> b!6344140 (= e!3853283 (matchZipper!2259 (derivationStepZipper!2213 lt!2362856 (head!12987 (t!378630 s!2326))) (tail!12072 (t!378630 s!2326))))))

(assert (= (and d!1991091 c!1153697) b!6344139))

(assert (= (and d!1991091 (not c!1153697)) b!6344140))

(assert (=> d!1991091 m!7152124))

(declare-fun m!7152198 () Bool)

(assert (=> b!6344139 m!7152198))

(assert (=> b!6344140 m!7152128))

(assert (=> b!6344140 m!7152128))

(declare-fun m!7152200 () Bool)

(assert (=> b!6344140 m!7152200))

(assert (=> b!6344140 m!7152132))

(assert (=> b!6344140 m!7152200))

(assert (=> b!6344140 m!7152132))

(declare-fun m!7152202 () Bool)

(assert (=> b!6344140 m!7152202))

(assert (=> b!6343286 d!1991091))

(declare-fun d!1991093 () Bool)

(assert (=> d!1991093 (= (flatMap!1752 lt!2362865 lambda!348547) (choose!47043 lt!2362865 lambda!348547))))

(declare-fun bs!1588688 () Bool)

(assert (= bs!1588688 d!1991093))

(declare-fun m!7152204 () Bool)

(assert (=> bs!1588688 m!7152204))

(assert (=> b!6343266 d!1991093))

(declare-fun b!6344141 () Bool)

(declare-fun e!3853284 () Bool)

(assert (=> b!6344141 (= e!3853284 (nullable!6240 (h!71364 (exprs!6131 lt!2362853))))))

(declare-fun b!6344142 () Bool)

(declare-fun e!3853286 () (InoxSet Context!11262))

(declare-fun call!540806 () (InoxSet Context!11262))

(assert (=> b!6344142 (= e!3853286 call!540806)))

(declare-fun d!1991095 () Bool)

(declare-fun c!1153699 () Bool)

(assert (=> d!1991095 (= c!1153699 e!3853284)))

(declare-fun res!2610596 () Bool)

(assert (=> d!1991095 (=> (not res!2610596) (not e!3853284))))

(assert (=> d!1991095 (= res!2610596 ((_ is Cons!64916) (exprs!6131 lt!2362853)))))

(declare-fun e!3853285 () (InoxSet Context!11262))

(assert (=> d!1991095 (= (derivationStepZipperUp!1421 lt!2362853 (h!71366 s!2326)) e!3853285)))

(declare-fun b!6344143 () Bool)

(assert (=> b!6344143 (= e!3853286 ((as const (Array Context!11262 Bool)) false))))

(declare-fun b!6344144 () Bool)

(assert (=> b!6344144 (= e!3853285 e!3853286)))

(declare-fun c!1153698 () Bool)

(assert (=> b!6344144 (= c!1153698 ((_ is Cons!64916) (exprs!6131 lt!2362853)))))

(declare-fun bm!540801 () Bool)

(assert (=> bm!540801 (= call!540806 (derivationStepZipperDown!1495 (h!71364 (exprs!6131 lt!2362853)) (Context!11263 (t!378628 (exprs!6131 lt!2362853))) (h!71366 s!2326)))))

(declare-fun b!6344145 () Bool)

(assert (=> b!6344145 (= e!3853285 ((_ map or) call!540806 (derivationStepZipperUp!1421 (Context!11263 (t!378628 (exprs!6131 lt!2362853))) (h!71366 s!2326))))))

(assert (= (and d!1991095 res!2610596) b!6344141))

(assert (= (and d!1991095 c!1153699) b!6344145))

(assert (= (and d!1991095 (not c!1153699)) b!6344144))

(assert (= (and b!6344144 c!1153698) b!6344142))

(assert (= (and b!6344144 (not c!1153698)) b!6344143))

(assert (= (or b!6344145 b!6344142) bm!540801))

(declare-fun m!7152206 () Bool)

(assert (=> b!6344141 m!7152206))

(declare-fun m!7152208 () Bool)

(assert (=> bm!540801 m!7152208))

(declare-fun m!7152210 () Bool)

(assert (=> b!6344145 m!7152210))

(assert (=> b!6343266 d!1991095))

(declare-fun d!1991097 () Bool)

(assert (=> d!1991097 (= (flatMap!1752 lt!2362865 lambda!348547) (dynLambda!25737 lambda!348547 lt!2362853))))

(declare-fun lt!2363004 () Unit!158319)

(assert (=> d!1991097 (= lt!2363004 (choose!47044 lt!2362865 lt!2362853 lambda!348547))))

(assert (=> d!1991097 (= lt!2362865 (store ((as const (Array Context!11262 Bool)) false) lt!2362853 true))))

(assert (=> d!1991097 (= (lemmaFlatMapOnSingletonSet!1278 lt!2362865 lt!2362853 lambda!348547) lt!2363004)))

(declare-fun b_lambda!241423 () Bool)

(assert (=> (not b_lambda!241423) (not d!1991097)))

(declare-fun bs!1588689 () Bool)

(assert (= bs!1588689 d!1991097))

(assert (=> bs!1588689 m!7151560))

(declare-fun m!7152212 () Bool)

(assert (=> bs!1588689 m!7152212))

(declare-fun m!7152214 () Bool)

(assert (=> bs!1588689 m!7152214))

(assert (=> bs!1588689 m!7151562))

(assert (=> b!6343266 d!1991097))

(declare-fun bs!1588690 () Bool)

(declare-fun d!1991099 () Bool)

(assert (= bs!1588690 (and d!1991099 b!6343256)))

(declare-fun lambda!348629 () Int)

(assert (=> bs!1588690 (= lambda!348629 lambda!348547)))

(assert (=> d!1991099 true))

(assert (=> d!1991099 (= (derivationStepZipper!2213 lt!2362865 (h!71366 s!2326)) (flatMap!1752 lt!2362865 lambda!348629))))

(declare-fun bs!1588691 () Bool)

(assert (= bs!1588691 d!1991099))

(declare-fun m!7152216 () Bool)

(assert (=> bs!1588691 m!7152216))

(assert (=> b!6343266 d!1991099))

(declare-fun d!1991101 () Bool)

(assert (=> d!1991101 (= (isEmpty!36998 (t!378628 (exprs!6131 (h!71365 zl!343)))) ((_ is Nil!64916) (t!378628 (exprs!6131 (h!71365 zl!343)))))))

(assert (=> b!6343265 d!1991101))

(declare-fun b!6344154 () Bool)

(assert (=> b!6344154 true))

(declare-fun bs!1588692 () Bool)

(declare-fun b!6344156 () Bool)

(assert (= bs!1588692 (and b!6344156 b!6344154)))

(declare-fun lambda!348638 () Int)

(declare-fun lambda!348637 () Int)

(declare-fun lt!2363015 () Int)

(declare-fun lt!2363014 () Int)

(assert (=> bs!1588692 (= (= lt!2363014 lt!2363015) (= lambda!348638 lambda!348637))))

(assert (=> b!6344156 true))

(declare-fun d!1991103 () Bool)

(declare-fun e!3853291 () Bool)

(assert (=> d!1991103 e!3853291))

(declare-fun res!2610599 () Bool)

(assert (=> d!1991103 (=> (not res!2610599) (not e!3853291))))

(assert (=> d!1991103 (= res!2610599 (>= lt!2363014 0))))

(declare-fun e!3853292 () Int)

(assert (=> d!1991103 (= lt!2363014 e!3853292)))

(declare-fun c!1153710 () Bool)

(assert (=> d!1991103 (= c!1153710 ((_ is Cons!64917) lt!2362849))))

(assert (=> d!1991103 (= (zipperDepth!354 lt!2362849) lt!2363014)))

(assert (=> b!6344154 (= e!3853292 lt!2363015)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!243 (Context!11262) Int)

(assert (=> b!6344154 (= lt!2363015 (maxBigInt!0 (contextDepth!243 (h!71365 lt!2362849)) (zipperDepth!354 (t!378629 lt!2362849))))))

(declare-fun lt!2363016 () Unit!158319)

(declare-fun lambda!348636 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!227 (List!65041 Int Int Int) Unit!158319)

(assert (=> b!6344154 (= lt!2363016 (lemmaForallContextDepthBiggerThanTransitive!227 (t!378629 lt!2362849) lt!2363015 (zipperDepth!354 (t!378629 lt!2362849)) lambda!348636))))

(declare-fun forall!15407 (List!65041 Int) Bool)

(assert (=> b!6344154 (forall!15407 (t!378629 lt!2362849) lambda!348637)))

(declare-fun lt!2363013 () Unit!158319)

(assert (=> b!6344154 (= lt!2363013 lt!2363016)))

(declare-fun b!6344155 () Bool)

(assert (=> b!6344155 (= e!3853292 0)))

(assert (=> b!6344156 (= e!3853291 (forall!15407 lt!2362849 lambda!348638))))

(assert (= (and d!1991103 c!1153710) b!6344154))

(assert (= (and d!1991103 (not c!1153710)) b!6344155))

(assert (= (and d!1991103 res!2610599) b!6344156))

(declare-fun m!7152218 () Bool)

(assert (=> b!6344154 m!7152218))

(declare-fun m!7152220 () Bool)

(assert (=> b!6344154 m!7152220))

(assert (=> b!6344154 m!7152220))

(declare-fun m!7152222 () Bool)

(assert (=> b!6344154 m!7152222))

(declare-fun m!7152224 () Bool)

(assert (=> b!6344154 m!7152224))

(assert (=> b!6344154 m!7152222))

(assert (=> b!6344154 m!7152222))

(declare-fun m!7152226 () Bool)

(assert (=> b!6344154 m!7152226))

(declare-fun m!7152228 () Bool)

(assert (=> b!6344156 m!7152228))

(assert (=> b!6343285 d!1991103))

(declare-fun bs!1588693 () Bool)

(declare-fun b!6344159 () Bool)

(assert (= bs!1588693 (and b!6344159 b!6344154)))

(declare-fun lambda!348639 () Int)

(assert (=> bs!1588693 (= lambda!348639 lambda!348636)))

(declare-fun lambda!348640 () Int)

(declare-fun lt!2363019 () Int)

(assert (=> bs!1588693 (= (= lt!2363019 lt!2363015) (= lambda!348640 lambda!348637))))

(declare-fun bs!1588694 () Bool)

(assert (= bs!1588694 (and b!6344159 b!6344156)))

(assert (=> bs!1588694 (= (= lt!2363019 lt!2363014) (= lambda!348640 lambda!348638))))

(assert (=> b!6344159 true))

(declare-fun bs!1588695 () Bool)

(declare-fun b!6344161 () Bool)

(assert (= bs!1588695 (and b!6344161 b!6344154)))

(declare-fun lt!2363018 () Int)

(declare-fun lambda!348641 () Int)

(assert (=> bs!1588695 (= (= lt!2363018 lt!2363015) (= lambda!348641 lambda!348637))))

(declare-fun bs!1588696 () Bool)

(assert (= bs!1588696 (and b!6344161 b!6344156)))

(assert (=> bs!1588696 (= (= lt!2363018 lt!2363014) (= lambda!348641 lambda!348638))))

(declare-fun bs!1588697 () Bool)

(assert (= bs!1588697 (and b!6344161 b!6344159)))

(assert (=> bs!1588697 (= (= lt!2363018 lt!2363019) (= lambda!348641 lambda!348640))))

(assert (=> b!6344161 true))

(declare-fun d!1991105 () Bool)

(declare-fun e!3853293 () Bool)

(assert (=> d!1991105 e!3853293))

(declare-fun res!2610600 () Bool)

(assert (=> d!1991105 (=> (not res!2610600) (not e!3853293))))

(assert (=> d!1991105 (= res!2610600 (>= lt!2363018 0))))

(declare-fun e!3853294 () Int)

(assert (=> d!1991105 (= lt!2363018 e!3853294)))

(declare-fun c!1153711 () Bool)

(assert (=> d!1991105 (= c!1153711 ((_ is Cons!64917) zl!343))))

(assert (=> d!1991105 (= (zipperDepth!354 zl!343) lt!2363018)))

(assert (=> b!6344159 (= e!3853294 lt!2363019)))

(assert (=> b!6344159 (= lt!2363019 (maxBigInt!0 (contextDepth!243 (h!71365 zl!343)) (zipperDepth!354 (t!378629 zl!343))))))

(declare-fun lt!2363020 () Unit!158319)

(assert (=> b!6344159 (= lt!2363020 (lemmaForallContextDepthBiggerThanTransitive!227 (t!378629 zl!343) lt!2363019 (zipperDepth!354 (t!378629 zl!343)) lambda!348639))))

(assert (=> b!6344159 (forall!15407 (t!378629 zl!343) lambda!348640)))

(declare-fun lt!2363017 () Unit!158319)

(assert (=> b!6344159 (= lt!2363017 lt!2363020)))

(declare-fun b!6344160 () Bool)

(assert (=> b!6344160 (= e!3853294 0)))

(assert (=> b!6344161 (= e!3853293 (forall!15407 zl!343 lambda!348641))))

(assert (= (and d!1991105 c!1153711) b!6344159))

(assert (= (and d!1991105 (not c!1153711)) b!6344160))

(assert (= (and d!1991105 res!2610600) b!6344161))

(declare-fun m!7152230 () Bool)

(assert (=> b!6344159 m!7152230))

(declare-fun m!7152232 () Bool)

(assert (=> b!6344159 m!7152232))

(assert (=> b!6344159 m!7152232))

(declare-fun m!7152234 () Bool)

(assert (=> b!6344159 m!7152234))

(declare-fun m!7152236 () Bool)

(assert (=> b!6344159 m!7152236))

(assert (=> b!6344159 m!7152234))

(assert (=> b!6344159 m!7152234))

(declare-fun m!7152238 () Bool)

(assert (=> b!6344159 m!7152238))

(declare-fun m!7152240 () Bool)

(assert (=> b!6344161 m!7152240))

(assert (=> b!6343285 d!1991105))

(declare-fun d!1991107 () Bool)

(declare-fun c!1153712 () Bool)

(assert (=> d!1991107 (= c!1153712 (isEmpty!37002 (t!378630 s!2326)))))

(declare-fun e!3853295 () Bool)

(assert (=> d!1991107 (= (matchZipper!2259 lt!2362847 (t!378630 s!2326)) e!3853295)))

(declare-fun b!6344162 () Bool)

(assert (=> b!6344162 (= e!3853295 (nullableZipper!2013 lt!2362847))))

(declare-fun b!6344163 () Bool)

(assert (=> b!6344163 (= e!3853295 (matchZipper!2259 (derivationStepZipper!2213 lt!2362847 (head!12987 (t!378630 s!2326))) (tail!12072 (t!378630 s!2326))))))

(assert (= (and d!1991107 c!1153712) b!6344162))

(assert (= (and d!1991107 (not c!1153712)) b!6344163))

(assert (=> d!1991107 m!7152124))

(declare-fun m!7152242 () Bool)

(assert (=> b!6344162 m!7152242))

(assert (=> b!6344163 m!7152128))

(assert (=> b!6344163 m!7152128))

(declare-fun m!7152244 () Bool)

(assert (=> b!6344163 m!7152244))

(assert (=> b!6344163 m!7152132))

(assert (=> b!6344163 m!7152244))

(assert (=> b!6344163 m!7152132))

(declare-fun m!7152246 () Bool)

(assert (=> b!6344163 m!7152246))

(assert (=> b!6343268 d!1991107))

(declare-fun b!6344168 () Bool)

(declare-fun e!3853298 () Bool)

(declare-fun tp!1768859 () Bool)

(assert (=> b!6344168 (= e!3853298 (and tp_is_empty!41747 tp!1768859))))

(assert (=> b!6343261 (= tp!1768792 e!3853298)))

(assert (= (and b!6343261 ((_ is Cons!64918) (t!378630 s!2326))) b!6344168))

(declare-fun b!6344182 () Bool)

(declare-fun e!3853301 () Bool)

(declare-fun tp!1768870 () Bool)

(declare-fun tp!1768873 () Bool)

(assert (=> b!6344182 (= e!3853301 (and tp!1768870 tp!1768873))))

(declare-fun b!6344181 () Bool)

(declare-fun tp!1768872 () Bool)

(assert (=> b!6344181 (= e!3853301 tp!1768872)))

(assert (=> b!6343274 (= tp!1768791 e!3853301)))

(declare-fun b!6344179 () Bool)

(assert (=> b!6344179 (= e!3853301 tp_is_empty!41747)))

(declare-fun b!6344180 () Bool)

(declare-fun tp!1768871 () Bool)

(declare-fun tp!1768874 () Bool)

(assert (=> b!6344180 (= e!3853301 (and tp!1768871 tp!1768874))))

(assert (= (and b!6343274 ((_ is ElementMatch!16247) (regOne!33006 r!7292))) b!6344179))

(assert (= (and b!6343274 ((_ is Concat!25092) (regOne!33006 r!7292))) b!6344180))

(assert (= (and b!6343274 ((_ is Star!16247) (regOne!33006 r!7292))) b!6344181))

(assert (= (and b!6343274 ((_ is Union!16247) (regOne!33006 r!7292))) b!6344182))

(declare-fun b!6344186 () Bool)

(declare-fun e!3853302 () Bool)

(declare-fun tp!1768875 () Bool)

(declare-fun tp!1768878 () Bool)

(assert (=> b!6344186 (= e!3853302 (and tp!1768875 tp!1768878))))

(declare-fun b!6344185 () Bool)

(declare-fun tp!1768877 () Bool)

(assert (=> b!6344185 (= e!3853302 tp!1768877)))

(assert (=> b!6343274 (= tp!1768796 e!3853302)))

(declare-fun b!6344183 () Bool)

(assert (=> b!6344183 (= e!3853302 tp_is_empty!41747)))

(declare-fun b!6344184 () Bool)

(declare-fun tp!1768876 () Bool)

(declare-fun tp!1768879 () Bool)

(assert (=> b!6344184 (= e!3853302 (and tp!1768876 tp!1768879))))

(assert (= (and b!6343274 ((_ is ElementMatch!16247) (regTwo!33006 r!7292))) b!6344183))

(assert (= (and b!6343274 ((_ is Concat!25092) (regTwo!33006 r!7292))) b!6344184))

(assert (= (and b!6343274 ((_ is Star!16247) (regTwo!33006 r!7292))) b!6344185))

(assert (= (and b!6343274 ((_ is Union!16247) (regTwo!33006 r!7292))) b!6344186))

(declare-fun b!6344190 () Bool)

(declare-fun e!3853303 () Bool)

(declare-fun tp!1768880 () Bool)

(declare-fun tp!1768883 () Bool)

(assert (=> b!6344190 (= e!3853303 (and tp!1768880 tp!1768883))))

(declare-fun b!6344189 () Bool)

(declare-fun tp!1768882 () Bool)

(assert (=> b!6344189 (= e!3853303 tp!1768882)))

(assert (=> b!6343264 (= tp!1768790 e!3853303)))

(declare-fun b!6344187 () Bool)

(assert (=> b!6344187 (= e!3853303 tp_is_empty!41747)))

(declare-fun b!6344188 () Bool)

(declare-fun tp!1768881 () Bool)

(declare-fun tp!1768884 () Bool)

(assert (=> b!6344188 (= e!3853303 (and tp!1768881 tp!1768884))))

(assert (= (and b!6343264 ((_ is ElementMatch!16247) (reg!16576 r!7292))) b!6344187))

(assert (= (and b!6343264 ((_ is Concat!25092) (reg!16576 r!7292))) b!6344188))

(assert (= (and b!6343264 ((_ is Star!16247) (reg!16576 r!7292))) b!6344189))

(assert (= (and b!6343264 ((_ is Union!16247) (reg!16576 r!7292))) b!6344190))

(declare-fun condSetEmpty!43182 () Bool)

(assert (=> setNonEmpty!43176 (= condSetEmpty!43182 (= setRest!43176 ((as const (Array Context!11262 Bool)) false)))))

(declare-fun setRes!43182 () Bool)

(assert (=> setNonEmpty!43176 (= tp!1768797 setRes!43182)))

(declare-fun setIsEmpty!43182 () Bool)

(assert (=> setIsEmpty!43182 setRes!43182))

(declare-fun setNonEmpty!43182 () Bool)

(declare-fun e!3853306 () Bool)

(declare-fun tp!1768889 () Bool)

(declare-fun setElem!43182 () Context!11262)

(assert (=> setNonEmpty!43182 (= setRes!43182 (and tp!1768889 (inv!83864 setElem!43182) e!3853306))))

(declare-fun setRest!43182 () (InoxSet Context!11262))

(assert (=> setNonEmpty!43182 (= setRest!43176 ((_ map or) (store ((as const (Array Context!11262 Bool)) false) setElem!43182 true) setRest!43182))))

(declare-fun b!6344195 () Bool)

(declare-fun tp!1768890 () Bool)

(assert (=> b!6344195 (= e!3853306 tp!1768890)))

(assert (= (and setNonEmpty!43176 condSetEmpty!43182) setIsEmpty!43182))

(assert (= (and setNonEmpty!43176 (not condSetEmpty!43182)) setNonEmpty!43182))

(assert (= setNonEmpty!43182 b!6344195))

(declare-fun m!7152248 () Bool)

(assert (=> setNonEmpty!43182 m!7152248))

(declare-fun b!6344203 () Bool)

(declare-fun e!3853312 () Bool)

(declare-fun tp!1768895 () Bool)

(assert (=> b!6344203 (= e!3853312 tp!1768895)))

(declare-fun b!6344202 () Bool)

(declare-fun tp!1768896 () Bool)

(declare-fun e!3853311 () Bool)

(assert (=> b!6344202 (= e!3853311 (and (inv!83864 (h!71365 (t!378629 zl!343))) e!3853312 tp!1768896))))

(assert (=> b!6343283 (= tp!1768795 e!3853311)))

(assert (= b!6344202 b!6344203))

(assert (= (and b!6343283 ((_ is Cons!64917) (t!378629 zl!343))) b!6344202))

(declare-fun m!7152250 () Bool)

(assert (=> b!6344202 m!7152250))

(declare-fun b!6344208 () Bool)

(declare-fun e!3853315 () Bool)

(declare-fun tp!1768901 () Bool)

(declare-fun tp!1768902 () Bool)

(assert (=> b!6344208 (= e!3853315 (and tp!1768901 tp!1768902))))

(assert (=> b!6343254 (= tp!1768794 e!3853315)))

(assert (= (and b!6343254 ((_ is Cons!64916) (exprs!6131 (h!71365 zl!343)))) b!6344208))

(declare-fun b!6344209 () Bool)

(declare-fun e!3853316 () Bool)

(declare-fun tp!1768903 () Bool)

(declare-fun tp!1768904 () Bool)

(assert (=> b!6344209 (= e!3853316 (and tp!1768903 tp!1768904))))

(assert (=> b!6343267 (= tp!1768798 e!3853316)))

(assert (= (and b!6343267 ((_ is Cons!64916) (exprs!6131 setElem!43176))) b!6344209))

(declare-fun b!6344213 () Bool)

(declare-fun e!3853317 () Bool)

(declare-fun tp!1768905 () Bool)

(declare-fun tp!1768908 () Bool)

(assert (=> b!6344213 (= e!3853317 (and tp!1768905 tp!1768908))))

(declare-fun b!6344212 () Bool)

(declare-fun tp!1768907 () Bool)

(assert (=> b!6344212 (= e!3853317 tp!1768907)))

(assert (=> b!6343287 (= tp!1768793 e!3853317)))

(declare-fun b!6344210 () Bool)

(assert (=> b!6344210 (= e!3853317 tp_is_empty!41747)))

(declare-fun b!6344211 () Bool)

(declare-fun tp!1768906 () Bool)

(declare-fun tp!1768909 () Bool)

(assert (=> b!6344211 (= e!3853317 (and tp!1768906 tp!1768909))))

(assert (= (and b!6343287 ((_ is ElementMatch!16247) (regOne!33007 r!7292))) b!6344210))

(assert (= (and b!6343287 ((_ is Concat!25092) (regOne!33007 r!7292))) b!6344211))

(assert (= (and b!6343287 ((_ is Star!16247) (regOne!33007 r!7292))) b!6344212))

(assert (= (and b!6343287 ((_ is Union!16247) (regOne!33007 r!7292))) b!6344213))

(declare-fun b!6344217 () Bool)

(declare-fun e!3853318 () Bool)

(declare-fun tp!1768910 () Bool)

(declare-fun tp!1768913 () Bool)

(assert (=> b!6344217 (= e!3853318 (and tp!1768910 tp!1768913))))

(declare-fun b!6344216 () Bool)

(declare-fun tp!1768912 () Bool)

(assert (=> b!6344216 (= e!3853318 tp!1768912)))

(assert (=> b!6343287 (= tp!1768789 e!3853318)))

(declare-fun b!6344214 () Bool)

(assert (=> b!6344214 (= e!3853318 tp_is_empty!41747)))

(declare-fun b!6344215 () Bool)

(declare-fun tp!1768911 () Bool)

(declare-fun tp!1768914 () Bool)

(assert (=> b!6344215 (= e!3853318 (and tp!1768911 tp!1768914))))

(assert (= (and b!6343287 ((_ is ElementMatch!16247) (regTwo!33007 r!7292))) b!6344214))

(assert (= (and b!6343287 ((_ is Concat!25092) (regTwo!33007 r!7292))) b!6344215))

(assert (= (and b!6343287 ((_ is Star!16247) (regTwo!33007 r!7292))) b!6344216))

(assert (= (and b!6343287 ((_ is Union!16247) (regTwo!33007 r!7292))) b!6344217))

(declare-fun b_lambda!241425 () Bool)

(assert (= b_lambda!241423 (or b!6343256 b_lambda!241425)))

(declare-fun bs!1588698 () Bool)

(declare-fun d!1991109 () Bool)

(assert (= bs!1588698 (and d!1991109 b!6343256)))

(assert (=> bs!1588698 (= (dynLambda!25737 lambda!348547 lt!2362853) (derivationStepZipperUp!1421 lt!2362853 (h!71366 s!2326)))))

(assert (=> bs!1588698 m!7151556))

(assert (=> d!1991097 d!1991109))

(declare-fun b_lambda!241427 () Bool)

(assert (= b_lambda!241421 (or b!6343256 b_lambda!241427)))

(declare-fun bs!1588699 () Bool)

(declare-fun d!1991111 () Bool)

(assert (= bs!1588699 (and d!1991111 b!6343256)))

(assert (=> bs!1588699 (= (dynLambda!25737 lambda!348547 (h!71365 zl!343)) (derivationStepZipperUp!1421 (h!71365 zl!343) (h!71366 s!2326)))))

(assert (=> bs!1588699 m!7151544))

(assert (=> d!1991057 d!1991111))

(check-sat (not d!1990929) (not bm!540734) (not b!6344059) (not b!6344211) (not b!6343821) (not d!1991093) (not d!1991107) (not b!6344103) (not b!6344024) (not b!6343978) (not b!6344189) (not b_lambda!241425) (not b!6344115) (not bm!540791) (not b!6343637) (not d!1991051) (not d!1991069) (not d!1990897) (not b!6343377) (not bm!540786) (not b!6344208) (not b!6344104) (not b!6343889) (not b!6343890) (not b!6343810) (not d!1991015) (not b!6343825) (not b!6344212) (not b!6344105) (not d!1990893) (not b!6344137) (not b!6344062) (not b!6344063) (not bm!540762) (not b!6344139) (not b!6344107) (not b!6343376) (not b!6344089) (not d!1991061) (not d!1991043) (not bm!540765) (not b!6343940) (not d!1990973) (not b!6344106) (not b!6344203) (not b!6344087) (not d!1991077) (not b!6344190) (not b!6343633) (not bs!1588699) (not d!1990939) (not d!1990901) (not b!6343300) (not b!6343971) (not b!6344213) (not b!6344101) (not b!6344180) (not b!6344065) (not b!6343705) (not b!6344182) (not b!6344162) tp_is_empty!41747 (not b!6344215) (not b!6344156) (not d!1991041) (not b!6343380) (not b!6344028) (not b!6344140) (not bm!540780) (not bm!540800) (not b!6343635) (not d!1991071) (not b!6344064) (not b!6344068) (not d!1991047) (not bm!540801) (not d!1990907) (not d!1990957) (not b!6343639) (not b!6344097) (not b!6344216) (not b!6344202) (not b!6344145) (not b!6343959) (not b!6343378) (not d!1991033) (not b!6344033) (not b!6344209) (not b!6343957) (not bm!540763) (not b!6344123) (not bm!540796) (not b_lambda!241427) (not b!6343826) (not bm!540778) (not d!1990955) (not b!6343822) (not d!1991097) (not b!6344217) (not bm!540732) (not bm!540788) (not b!6344181) (not b!6344066) (not d!1991067) (not d!1991091) (not b!6343640) (not d!1991013) (not d!1991087) (not bm!540787) (not b!6344154) (not d!1991079) (not b!6343976) (not setNonEmpty!43182) (not bm!540782) (not b!6343969) (not b!6343638) (not bm!540757) (not b!6343941) (not b!6343808) (not b!6344186) (not bm!540798) (not bm!540789) (not b!6343379) (not d!1990951) (not b!6343974) (not b!6343886) (not b!6343824) (not d!1990927) (not b!6344188) (not bm!540794) (not b!6343636) (not d!1990947) (not b!6343882) (not b!6344088) (not bm!540758) (not b!6344161) (not b!6344168) (not bm!540792) (not bs!1588698) (not bm!540764) (not b!6344163) (not b!6344159) (not b!6343893) (not b!6344099) (not b!6344073) (not b!6344141) (not b!6344090) (not b!6344038) (not b!6344195) (not b!6344117) (not b!6344007) (not b!6344108) (not b!6344184) (not b!6343975) (not b!6344086) (not d!1991059) (not b!6344029) (not b!6343891) (not d!1991057) (not b!6344185) (not d!1991099) (not b!6343823) (not b!6344082) (not b!6344034) (not b!6344095) (not b!6343381) (not b!6344100) (not d!1990953) (not b!6343819))
(check-sat)
